# todo_app.py

tasks = []

def show_menu():
    print("\n📝 To-Do List App")
    print("1. Add Task")
    print("2. Remove Task")
    print("3. View Tasks")
    print("4. Exit")

def add_task():
    task = input("Enter the task: ")
    tasks.append(task)
    print(f"✅ Task '{task}' added!")

def remove_task():
    if not tasks:
        print("❌ No tasks to remove.")
        return

    for i, task in enumerate(tasks, 1):
        print(f"{i}. {task}")
    
    try:
        idx = int(input("Enter task number to remove: ")) - 1
        if 0 <= idx < len(tasks):
            removed = tasks.pop(idx)
            print(f"❌ Task '{removed}' removed.")
        else:
            print("⚠️ Invalid task number.")
    except ValueError:
        print("⚠️ Please enter a valid number.")

def view_tasks():
    if tasks:
        print("\n📋 Your To-Do List:")
        for i, task in enumerate(tasks, 1):
            print(f"{i}. {task}")
    else:
        print("🟡 No tasks found.")

def main():
    while True:
        show_menu()
        choice = input("Choose an option: ")

        if choice == "1":
            add_task()
        elif choice == "2":
            remove_task()
        elif choice == "3":
            view_tasks()
        elif choice == "4":
            print("👋 Exiting... Goodbye!")
            break
        else:
            print("⚠️ Invalid option. Try again.")

if __name__ == "__main__":
    main()
