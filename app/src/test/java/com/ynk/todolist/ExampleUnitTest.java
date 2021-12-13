package com.ynk.todolist;

import static org.junit.Assert.assertEquals;
import com.ynk.todolist.Database.DAO;
import com.ynk.todolist.Model.TodoList;
import org.junit.Test;
import java.util.Date;

public class ExampleUnitTest {
    @Test
    public void list_isCorrect() {
       //... Test routine
        DAO dao = null;

        for(int i = 1; i<8; i++){
            TodoList todoList1 = new TodoList();
            todoList1.setUserId("1");
            todoList1.setListName("test " + i);
            todoList1.setListAddDate(new Date());
            todoList1.setListPriority(1);
            dao.insertTodoList(todoList1);
        }
        assertEquals(dao.getTodolist("1").size(), 7);
    }
}

