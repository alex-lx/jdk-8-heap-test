class Test {
    public static void main(String[] args) throws Exception {
        long totalMemory = Runtime.getRuntime().totalMemory();
        long maxMemory = Runtime.getRuntime().maxMemory();
        System.out.println("totalMemory=" + totalMemory + "|maxMemory=" + maxMemory);
    }
}
