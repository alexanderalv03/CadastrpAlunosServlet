package com.jp.senac.controle;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.jp.senac.dao.AlunoJDBCdao;
import com.jp.senac.model.Aluno;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListarServlet
 */
public class ListarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AlunoJDBCdao dao = new AlunoJDBCdao();

		try {
			List<Aluno> listaAlunos = dao.listarAlunos();
			request.setAttribute("listaAlunos", listaAlunos);
		} catch (SQLException e) {

			e.printStackTrace();
		}

		request.getRequestDispatcher("listarAlunos.jsp").forward(request, response);
	}

}
