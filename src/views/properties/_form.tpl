<form method="POST" action="{{model.getId == '' ? '/properties/create' : '/properties/update/'~model.getId }}">
    <input type="hidden" name="id" value="{{model.getId}}">
    <input type="text" name="name" value="{{model.getName}}" required placeholder="name"><br>
    <select name="type">
        {% for item in types %}
        <option value="{{item}}" {{item == model.getType ? ' selected ' : ''}}>{{item}}</option>
        {% endfor %}
    </select><br>
    <button type="submit">Save</button>
</form>