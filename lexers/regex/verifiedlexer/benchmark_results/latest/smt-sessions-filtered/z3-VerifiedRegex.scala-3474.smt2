; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!200804 () Bool)

(assert start!200804)

(declare-fun b_free!56823 () Bool)

(declare-fun b_next!57527 () Bool)

(assert (=> start!200804 (= b_free!56823 (not b_next!57527))))

(declare-fun tp!605068 () Bool)

(declare-fun b_and!162655 () Bool)

(assert (=> start!200804 (= tp!605068 b_and!162655)))

(declare-fun b!2037808 () Bool)

(declare-fun e!1286781 () Bool)

(declare-fun tp!605067 () Bool)

(assert (=> b!2037808 (= e!1286781 tp!605067)))

(declare-fun e!1286777 () Bool)

(declare-datatypes ((T!35990 0))(
  ( (T!35991 (val!6474 Int)) )
))
(declare-datatypes ((List!22357 0))(
  ( (Nil!22275) (Cons!22275 (h!27676 T!35990) (t!191324 List!22357)) )
))
(declare-datatypes ((IArray!14939 0))(
  ( (IArray!14940 (innerList!7527 List!22357)) )
))
(declare-datatypes ((Conc!7467 0))(
  ( (Node!7467 (left!17737 Conc!7467) (right!18067 Conc!7467) (csize!15164 Int) (cheight!7678 Int)) (Leaf!10942 (xs!10369 IArray!14939) (csize!15165 Int)) (Empty!7467) )
))
(declare-fun t!4319 () Conc!7467)

(declare-fun lt!764986 () Conc!7467)

(declare-fun b!2037809 () Bool)

(declare-fun p!1489 () Int)

(declare-fun list!9131 (Conc!7467) List!22357)

(declare-fun filter!471 (List!22357 Int) List!22357)

(assert (=> b!2037809 (= e!1286777 (not (= (list!9131 lt!764986) (filter!471 (list!9131 t!4319) p!1489))))))

(declare-fun b!2037810 () Bool)

(declare-fun e!1286779 () Bool)

(declare-fun e!1286780 () Bool)

(assert (=> b!2037810 (= e!1286779 e!1286780)))

(declare-fun res!893489 () Bool)

(assert (=> b!2037810 (=> (not res!893489) (not e!1286780))))

(declare-fun lt!764984 () Int)

(assert (=> b!2037810 (= res!893489 (not (= lt!764984 0)))))

(declare-fun lt!764985 () IArray!14939)

(declare-fun size!17423 (IArray!14939) Int)

(assert (=> b!2037810 (= lt!764984 (size!17423 lt!764985))))

(declare-fun filter!472 (IArray!14939 Int) IArray!14939)

(assert (=> b!2037810 (= lt!764985 (filter!472 (xs!10369 t!4319) p!1489))))

(declare-fun b!2037811 () Bool)

(assert (=> b!2037811 (= e!1286780 e!1286777)))

(declare-fun res!893486 () Bool)

(assert (=> b!2037811 (=> res!893486 e!1286777)))

(declare-fun isBalanced!2345 (Conc!7467) Bool)

(assert (=> b!2037811 (= res!893486 (not (isBalanced!2345 lt!764986)))))

(assert (=> b!2037811 (= lt!764986 (Leaf!10942 lt!764985 lt!764984))))

(declare-fun b!2037812 () Bool)

(declare-fun e!1286778 () Bool)

(declare-fun inv!29571 (IArray!14939) Bool)

(assert (=> b!2037812 (= e!1286778 (and (inv!29571 (xs!10369 t!4319)) e!1286781))))

(declare-fun b!2037814 () Bool)

(declare-fun tp!605066 () Bool)

(declare-fun tp!605065 () Bool)

(declare-fun inv!29572 (Conc!7467) Bool)

(assert (=> b!2037814 (= e!1286778 (and (inv!29572 (left!17737 t!4319)) tp!605065 (inv!29572 (right!18067 t!4319)) tp!605066))))

(declare-fun b!2037813 () Bool)

(declare-fun res!893488 () Bool)

(assert (=> b!2037813 (=> (not res!893488) (not e!1286779))))

(get-info :version)

(assert (=> b!2037813 (= res!893488 (and (not ((_ is Empty!7467) t!4319)) ((_ is Leaf!10942) t!4319)))))

(declare-fun res!893487 () Bool)

(assert (=> start!200804 (=> (not res!893487) (not e!1286779))))

(assert (=> start!200804 (= res!893487 (isBalanced!2345 t!4319))))

(assert (=> start!200804 e!1286779))

(assert (=> start!200804 (and (inv!29572 t!4319) e!1286778)))

(assert (=> start!200804 tp!605068))

(assert (= (and start!200804 res!893487) b!2037813))

(assert (= (and b!2037813 res!893488) b!2037810))

(assert (= (and b!2037810 res!893489) b!2037811))

(assert (= (and b!2037811 (not res!893486)) b!2037809))

(assert (= (and start!200804 ((_ is Node!7467) t!4319)) b!2037814))

(assert (= b!2037812 b!2037808))

(assert (= (and start!200804 ((_ is Leaf!10942) t!4319)) b!2037812))

(declare-fun m!2480947 () Bool)

(assert (=> b!2037814 m!2480947))

(declare-fun m!2480949 () Bool)

(assert (=> b!2037814 m!2480949))

(declare-fun m!2480951 () Bool)

(assert (=> b!2037812 m!2480951))

(declare-fun m!2480953 () Bool)

(assert (=> b!2037809 m!2480953))

(declare-fun m!2480955 () Bool)

(assert (=> b!2037809 m!2480955))

(assert (=> b!2037809 m!2480955))

(declare-fun m!2480957 () Bool)

(assert (=> b!2037809 m!2480957))

(declare-fun m!2480959 () Bool)

(assert (=> start!200804 m!2480959))

(declare-fun m!2480961 () Bool)

(assert (=> start!200804 m!2480961))

(declare-fun m!2480963 () Bool)

(assert (=> b!2037810 m!2480963))

(declare-fun m!2480965 () Bool)

(assert (=> b!2037810 m!2480965))

(declare-fun m!2480967 () Bool)

(assert (=> b!2037811 m!2480967))

(check-sat (not b!2037809) (not b!2037811) (not b!2037810) b_and!162655 (not b!2037812) (not b!2037814) (not b!2037808) (not b_next!57527) (not start!200804))
(check-sat b_and!162655 (not b_next!57527))
(get-model)

(declare-fun d!623963 () Bool)

(declare-fun size!17425 (List!22357) Int)

(assert (=> d!623963 (= (inv!29571 (xs!10369 t!4319)) (<= (size!17425 (innerList!7527 (xs!10369 t!4319))) 2147483647))))

(declare-fun bs!421420 () Bool)

(assert (= bs!421420 d!623963))

(declare-fun m!2480975 () Bool)

(assert (=> bs!421420 m!2480975))

(assert (=> b!2037812 d!623963))

(declare-fun b!2037839 () Bool)

(declare-fun e!1286790 () Bool)

(declare-fun isEmpty!13928 (Conc!7467) Bool)

(assert (=> b!2037839 (= e!1286790 (not (isEmpty!13928 (right!18067 lt!764986))))))

(declare-fun b!2037840 () Bool)

(declare-fun res!893519 () Bool)

(assert (=> b!2037840 (=> (not res!893519) (not e!1286790))))

(assert (=> b!2037840 (= res!893519 (isBalanced!2345 (left!17737 lt!764986)))))

(declare-fun b!2037841 () Bool)

(declare-fun e!1286791 () Bool)

(assert (=> b!2037841 (= e!1286791 e!1286790)))

(declare-fun res!893517 () Bool)

(assert (=> b!2037841 (=> (not res!893517) (not e!1286790))))

(declare-fun height!1167 (Conc!7467) Int)

(assert (=> b!2037841 (= res!893517 (<= (- 1) (- (height!1167 (left!17737 lt!764986)) (height!1167 (right!18067 lt!764986)))))))

(declare-fun b!2037842 () Bool)

(declare-fun res!893514 () Bool)

(assert (=> b!2037842 (=> (not res!893514) (not e!1286790))))

(assert (=> b!2037842 (= res!893514 (not (isEmpty!13928 (left!17737 lt!764986))))))

(declare-fun b!2037843 () Bool)

(declare-fun res!893515 () Bool)

(assert (=> b!2037843 (=> (not res!893515) (not e!1286790))))

(assert (=> b!2037843 (= res!893515 (<= (- (height!1167 (left!17737 lt!764986)) (height!1167 (right!18067 lt!764986))) 1))))

(declare-fun b!2037844 () Bool)

(declare-fun res!893516 () Bool)

(assert (=> b!2037844 (=> (not res!893516) (not e!1286790))))

(assert (=> b!2037844 (= res!893516 (isBalanced!2345 (right!18067 lt!764986)))))

(declare-fun d!623965 () Bool)

(declare-fun res!893518 () Bool)

(assert (=> d!623965 (=> res!893518 e!1286791)))

(assert (=> d!623965 (= res!893518 (not ((_ is Node!7467) lt!764986)))))

(assert (=> d!623965 (= (isBalanced!2345 lt!764986) e!1286791)))

(assert (= (and d!623965 (not res!893518)) b!2037841))

(assert (= (and b!2037841 res!893517) b!2037843))

(assert (= (and b!2037843 res!893515) b!2037840))

(assert (= (and b!2037840 res!893519) b!2037844))

(assert (= (and b!2037844 res!893516) b!2037842))

(assert (= (and b!2037842 res!893514) b!2037839))

(declare-fun m!2480983 () Bool)

(assert (=> b!2037839 m!2480983))

(declare-fun m!2480985 () Bool)

(assert (=> b!2037843 m!2480985))

(declare-fun m!2480987 () Bool)

(assert (=> b!2037843 m!2480987))

(declare-fun m!2480989 () Bool)

(assert (=> b!2037842 m!2480989))

(declare-fun m!2480991 () Bool)

(assert (=> b!2037840 m!2480991))

(declare-fun m!2480994 () Bool)

(assert (=> b!2037844 m!2480994))

(assert (=> b!2037841 m!2480985))

(assert (=> b!2037841 m!2480987))

(assert (=> b!2037811 d!623965))

(declare-fun d!623969 () Bool)

(declare-fun lt!764995 () Int)

(declare-fun list!9133 (IArray!14939) List!22357)

(assert (=> d!623969 (= lt!764995 (size!17425 (list!9133 lt!764985)))))

(declare-fun choose!12439 (IArray!14939) Int)

(assert (=> d!623969 (= lt!764995 (choose!12439 lt!764985))))

(assert (=> d!623969 (= (size!17423 lt!764985) lt!764995)))

(declare-fun bs!421422 () Bool)

(assert (= bs!421422 d!623969))

(declare-fun m!2481007 () Bool)

(assert (=> bs!421422 m!2481007))

(assert (=> bs!421422 m!2481007))

(declare-fun m!2481009 () Bool)

(assert (=> bs!421422 m!2481009))

(declare-fun m!2481011 () Bool)

(assert (=> bs!421422 m!2481011))

(assert (=> b!2037810 d!623969))

(declare-fun d!623973 () Bool)

(declare-fun lt!764998 () IArray!14939)

(assert (=> d!623973 (= lt!764998 (IArray!14940 (filter!471 (list!9133 (xs!10369 t!4319)) p!1489)))))

(declare-fun choose!12440 (IArray!14939 Int) IArray!14939)

(assert (=> d!623973 (= lt!764998 (choose!12440 (xs!10369 t!4319) p!1489))))

(assert (=> d!623973 (= (filter!472 (xs!10369 t!4319) p!1489) lt!764998)))

(declare-fun bs!421423 () Bool)

(assert (= bs!421423 d!623973))

(declare-fun m!2481013 () Bool)

(assert (=> bs!421423 m!2481013))

(assert (=> bs!421423 m!2481013))

(declare-fun m!2481015 () Bool)

(assert (=> bs!421423 m!2481015))

(declare-fun m!2481019 () Bool)

(assert (=> bs!421423 m!2481019))

(assert (=> b!2037810 d!623973))

(declare-fun d!623975 () Bool)

(declare-fun c!330039 () Bool)

(assert (=> d!623975 (= c!330039 ((_ is Node!7467) (left!17737 t!4319)))))

(declare-fun e!1286814 () Bool)

(assert (=> d!623975 (= (inv!29572 (left!17737 t!4319)) e!1286814)))

(declare-fun b!2037886 () Bool)

(declare-fun inv!29575 (Conc!7467) Bool)

(assert (=> b!2037886 (= e!1286814 (inv!29575 (left!17737 t!4319)))))

(declare-fun b!2037887 () Bool)

(declare-fun e!1286815 () Bool)

(assert (=> b!2037887 (= e!1286814 e!1286815)))

(declare-fun res!893539 () Bool)

(assert (=> b!2037887 (= res!893539 (not ((_ is Leaf!10942) (left!17737 t!4319))))))

(assert (=> b!2037887 (=> res!893539 e!1286815)))

(declare-fun b!2037888 () Bool)

(declare-fun inv!29576 (Conc!7467) Bool)

(assert (=> b!2037888 (= e!1286815 (inv!29576 (left!17737 t!4319)))))

(assert (= (and d!623975 c!330039) b!2037886))

(assert (= (and d!623975 (not c!330039)) b!2037887))

(assert (= (and b!2037887 (not res!893539)) b!2037888))

(declare-fun m!2481043 () Bool)

(assert (=> b!2037886 m!2481043))

(declare-fun m!2481045 () Bool)

(assert (=> b!2037888 m!2481045))

(assert (=> b!2037814 d!623975))

(declare-fun d!623985 () Bool)

(declare-fun c!330040 () Bool)

(assert (=> d!623985 (= c!330040 ((_ is Node!7467) (right!18067 t!4319)))))

(declare-fun e!1286816 () Bool)

(assert (=> d!623985 (= (inv!29572 (right!18067 t!4319)) e!1286816)))

(declare-fun b!2037889 () Bool)

(assert (=> b!2037889 (= e!1286816 (inv!29575 (right!18067 t!4319)))))

(declare-fun b!2037890 () Bool)

(declare-fun e!1286817 () Bool)

(assert (=> b!2037890 (= e!1286816 e!1286817)))

(declare-fun res!893540 () Bool)

(assert (=> b!2037890 (= res!893540 (not ((_ is Leaf!10942) (right!18067 t!4319))))))

(assert (=> b!2037890 (=> res!893540 e!1286817)))

(declare-fun b!2037891 () Bool)

(assert (=> b!2037891 (= e!1286817 (inv!29576 (right!18067 t!4319)))))

(assert (= (and d!623985 c!330040) b!2037889))

(assert (= (and d!623985 (not c!330040)) b!2037890))

(assert (= (and b!2037890 (not res!893540)) b!2037891))

(declare-fun m!2481047 () Bool)

(assert (=> b!2037889 m!2481047))

(declare-fun m!2481049 () Bool)

(assert (=> b!2037891 m!2481049))

(assert (=> b!2037814 d!623985))

(declare-fun b!2037892 () Bool)

(declare-fun e!1286818 () Bool)

(assert (=> b!2037892 (= e!1286818 (not (isEmpty!13928 (right!18067 t!4319))))))

(declare-fun b!2037893 () Bool)

(declare-fun res!893546 () Bool)

(assert (=> b!2037893 (=> (not res!893546) (not e!1286818))))

(assert (=> b!2037893 (= res!893546 (isBalanced!2345 (left!17737 t!4319)))))

(declare-fun b!2037894 () Bool)

(declare-fun e!1286819 () Bool)

(assert (=> b!2037894 (= e!1286819 e!1286818)))

(declare-fun res!893544 () Bool)

(assert (=> b!2037894 (=> (not res!893544) (not e!1286818))))

(assert (=> b!2037894 (= res!893544 (<= (- 1) (- (height!1167 (left!17737 t!4319)) (height!1167 (right!18067 t!4319)))))))

(declare-fun b!2037895 () Bool)

(declare-fun res!893541 () Bool)

(assert (=> b!2037895 (=> (not res!893541) (not e!1286818))))

(assert (=> b!2037895 (= res!893541 (not (isEmpty!13928 (left!17737 t!4319))))))

(declare-fun b!2037896 () Bool)

(declare-fun res!893542 () Bool)

(assert (=> b!2037896 (=> (not res!893542) (not e!1286818))))

(assert (=> b!2037896 (= res!893542 (<= (- (height!1167 (left!17737 t!4319)) (height!1167 (right!18067 t!4319))) 1))))

(declare-fun b!2037897 () Bool)

(declare-fun res!893543 () Bool)

(assert (=> b!2037897 (=> (not res!893543) (not e!1286818))))

(assert (=> b!2037897 (= res!893543 (isBalanced!2345 (right!18067 t!4319)))))

(declare-fun d!623987 () Bool)

(declare-fun res!893545 () Bool)

(assert (=> d!623987 (=> res!893545 e!1286819)))

(assert (=> d!623987 (= res!893545 (not ((_ is Node!7467) t!4319)))))

(assert (=> d!623987 (= (isBalanced!2345 t!4319) e!1286819)))

(assert (= (and d!623987 (not res!893545)) b!2037894))

(assert (= (and b!2037894 res!893544) b!2037896))

(assert (= (and b!2037896 res!893542) b!2037893))

(assert (= (and b!2037893 res!893546) b!2037897))

(assert (= (and b!2037897 res!893543) b!2037895))

(assert (= (and b!2037895 res!893541) b!2037892))

(declare-fun m!2481051 () Bool)

(assert (=> b!2037892 m!2481051))

(declare-fun m!2481053 () Bool)

(assert (=> b!2037896 m!2481053))

(declare-fun m!2481055 () Bool)

(assert (=> b!2037896 m!2481055))

(declare-fun m!2481057 () Bool)

(assert (=> b!2037895 m!2481057))

(declare-fun m!2481059 () Bool)

(assert (=> b!2037893 m!2481059))

(declare-fun m!2481061 () Bool)

(assert (=> b!2037897 m!2481061))

(assert (=> b!2037894 m!2481053))

(assert (=> b!2037894 m!2481055))

(assert (=> start!200804 d!623987))

(declare-fun d!623989 () Bool)

(declare-fun c!330041 () Bool)

(assert (=> d!623989 (= c!330041 ((_ is Node!7467) t!4319))))

(declare-fun e!1286820 () Bool)

(assert (=> d!623989 (= (inv!29572 t!4319) e!1286820)))

(declare-fun b!2037898 () Bool)

(assert (=> b!2037898 (= e!1286820 (inv!29575 t!4319))))

(declare-fun b!2037899 () Bool)

(declare-fun e!1286821 () Bool)

(assert (=> b!2037899 (= e!1286820 e!1286821)))

(declare-fun res!893547 () Bool)

(assert (=> b!2037899 (= res!893547 (not ((_ is Leaf!10942) t!4319)))))

(assert (=> b!2037899 (=> res!893547 e!1286821)))

(declare-fun b!2037900 () Bool)

(assert (=> b!2037900 (= e!1286821 (inv!29576 t!4319))))

(assert (= (and d!623989 c!330041) b!2037898))

(assert (= (and d!623989 (not c!330041)) b!2037899))

(assert (= (and b!2037899 (not res!893547)) b!2037900))

(declare-fun m!2481063 () Bool)

(assert (=> b!2037898 m!2481063))

(declare-fun m!2481065 () Bool)

(assert (=> b!2037900 m!2481065))

(assert (=> start!200804 d!623989))

(declare-fun b!2037924 () Bool)

(declare-fun e!1286834 () List!22357)

(declare-fun e!1286835 () List!22357)

(assert (=> b!2037924 (= e!1286834 e!1286835)))

(declare-fun c!330053 () Bool)

(assert (=> b!2037924 (= c!330053 ((_ is Leaf!10942) lt!764986))))

(declare-fun b!2037923 () Bool)

(assert (=> b!2037923 (= e!1286834 Nil!22275)))

(declare-fun b!2037926 () Bool)

(declare-fun ++!6047 (List!22357 List!22357) List!22357)

(assert (=> b!2037926 (= e!1286835 (++!6047 (list!9131 (left!17737 lt!764986)) (list!9131 (right!18067 lt!764986))))))

(declare-fun b!2037925 () Bool)

(assert (=> b!2037925 (= e!1286835 (list!9133 (xs!10369 lt!764986)))))

(declare-fun d!623991 () Bool)

(declare-fun c!330052 () Bool)

(assert (=> d!623991 (= c!330052 ((_ is Empty!7467) lt!764986))))

(assert (=> d!623991 (= (list!9131 lt!764986) e!1286834)))

(assert (= (and d!623991 c!330052) b!2037923))

(assert (= (and d!623991 (not c!330052)) b!2037924))

(assert (= (and b!2037924 c!330053) b!2037925))

(assert (= (and b!2037924 (not c!330053)) b!2037926))

(declare-fun m!2481075 () Bool)

(assert (=> b!2037926 m!2481075))

(declare-fun m!2481077 () Bool)

(assert (=> b!2037926 m!2481077))

(assert (=> b!2037926 m!2481075))

(assert (=> b!2037926 m!2481077))

(declare-fun m!2481079 () Bool)

(assert (=> b!2037926 m!2481079))

(declare-fun m!2481081 () Bool)

(assert (=> b!2037925 m!2481081))

(assert (=> b!2037809 d!623991))

(declare-fun b!2037964 () Bool)

(declare-fun e!1286857 () List!22357)

(declare-fun call!124958 () List!22357)

(assert (=> b!2037964 (= e!1286857 call!124958)))

(declare-fun bm!124953 () Bool)

(assert (=> bm!124953 (= call!124958 (filter!471 (t!191324 (list!9131 t!4319)) p!1489))))

(declare-fun b!2037967 () Bool)

(declare-fun e!1286855 () List!22357)

(assert (=> b!2037967 (= e!1286855 e!1286857)))

(declare-fun c!330063 () Bool)

(declare-fun dynLambda!11104 (Int T!35990) Bool)

(assert (=> b!2037967 (= c!330063 (dynLambda!11104 p!1489 (h!27676 (list!9131 t!4319))))))

(declare-fun b!2037969 () Bool)

(declare-fun e!1286854 () Bool)

(declare-fun lt!765004 () List!22357)

(declare-fun forall!4754 (List!22357 Int) Bool)

(assert (=> b!2037969 (= e!1286854 (forall!4754 lt!765004 p!1489))))

(declare-fun b!2037970 () Bool)

(assert (=> b!2037970 (= e!1286855 Nil!22275)))

(declare-fun b!2037972 () Bool)

(assert (=> b!2037972 (= e!1286857 (Cons!22275 (h!27676 (list!9131 t!4319)) call!124958))))

(declare-fun b!2037971 () Bool)

(declare-fun res!893558 () Bool)

(assert (=> b!2037971 (=> (not res!893558) (not e!1286854))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3307 (List!22357) (InoxSet T!35990))

(assert (=> b!2037971 (= res!893558 (= ((_ map implies) (content!3307 lt!765004) (content!3307 (list!9131 t!4319))) ((as const (InoxSet T!35990)) true)))))

(declare-fun d!623995 () Bool)

(assert (=> d!623995 e!1286854))

(declare-fun res!893559 () Bool)

(assert (=> d!623995 (=> (not res!893559) (not e!1286854))))

(assert (=> d!623995 (= res!893559 (<= (size!17425 lt!765004) (size!17425 (list!9131 t!4319))))))

(assert (=> d!623995 (= lt!765004 e!1286855)))

(declare-fun c!330062 () Bool)

(assert (=> d!623995 (= c!330062 ((_ is Nil!22275) (list!9131 t!4319)))))

(assert (=> d!623995 (= (filter!471 (list!9131 t!4319) p!1489) lt!765004)))

(assert (= (and d!623995 c!330062) b!2037970))

(assert (= (and d!623995 (not c!330062)) b!2037967))

(assert (= (and b!2037967 c!330063) b!2037972))

(assert (= (and b!2037967 (not c!330063)) b!2037964))

(assert (= (or b!2037972 b!2037964) bm!124953))

(assert (= (and d!623995 res!893559) b!2037971))

(assert (= (and b!2037971 res!893558) b!2037969))

(declare-fun b_lambda!68839 () Bool)

(assert (=> (not b_lambda!68839) (not b!2037967)))

(declare-fun t!191332 () Bool)

(declare-fun tb!128875 () Bool)

(assert (=> (and start!200804 (= p!1489 p!1489) t!191332) tb!128875))

(declare-fun result!154174 () Bool)

(assert (=> tb!128875 (= result!154174 true)))

(assert (=> b!2037967 t!191332))

(declare-fun b_and!162659 () Bool)

(assert (= b_and!162655 (and (=> t!191332 result!154174) b_and!162659)))

(declare-fun m!2481117 () Bool)

(assert (=> bm!124953 m!2481117))

(declare-fun m!2481119 () Bool)

(assert (=> d!623995 m!2481119))

(assert (=> d!623995 m!2480955))

(declare-fun m!2481121 () Bool)

(assert (=> d!623995 m!2481121))

(declare-fun m!2481123 () Bool)

(assert (=> b!2037971 m!2481123))

(assert (=> b!2037971 m!2480955))

(declare-fun m!2481125 () Bool)

(assert (=> b!2037971 m!2481125))

(declare-fun m!2481127 () Bool)

(assert (=> b!2037969 m!2481127))

(declare-fun m!2481129 () Bool)

(assert (=> b!2037967 m!2481129))

(assert (=> b!2037809 d!623995))

(declare-fun b!2037977 () Bool)

(declare-fun e!1286861 () List!22357)

(declare-fun e!1286862 () List!22357)

(assert (=> b!2037977 (= e!1286861 e!1286862)))

(declare-fun c!330065 () Bool)

(assert (=> b!2037977 (= c!330065 ((_ is Leaf!10942) t!4319))))

(declare-fun b!2037976 () Bool)

(assert (=> b!2037976 (= e!1286861 Nil!22275)))

(declare-fun b!2037979 () Bool)

(assert (=> b!2037979 (= e!1286862 (++!6047 (list!9131 (left!17737 t!4319)) (list!9131 (right!18067 t!4319))))))

(declare-fun b!2037978 () Bool)

(assert (=> b!2037978 (= e!1286862 (list!9133 (xs!10369 t!4319)))))

(declare-fun d!624001 () Bool)

(declare-fun c!330064 () Bool)

(assert (=> d!624001 (= c!330064 ((_ is Empty!7467) t!4319))))

(assert (=> d!624001 (= (list!9131 t!4319) e!1286861)))

(assert (= (and d!624001 c!330064) b!2037976))

(assert (= (and d!624001 (not c!330064)) b!2037977))

(assert (= (and b!2037977 c!330065) b!2037978))

(assert (= (and b!2037977 (not c!330065)) b!2037979))

(declare-fun m!2481131 () Bool)

(assert (=> b!2037979 m!2481131))

(declare-fun m!2481133 () Bool)

(assert (=> b!2037979 m!2481133))

(assert (=> b!2037979 m!2481131))

(assert (=> b!2037979 m!2481133))

(declare-fun m!2481135 () Bool)

(assert (=> b!2037979 m!2481135))

(assert (=> b!2037978 m!2481013))

(assert (=> b!2037809 d!624001))

(declare-fun b!2037984 () Bool)

(declare-fun e!1286865 () Bool)

(declare-fun tp_is_empty!9273 () Bool)

(declare-fun tp!605086 () Bool)

(assert (=> b!2037984 (= e!1286865 (and tp_is_empty!9273 tp!605086))))

(assert (=> b!2037808 (= tp!605067 e!1286865)))

(assert (= (and b!2037808 ((_ is Cons!22275) (innerList!7527 (xs!10369 t!4319)))) b!2037984))

(declare-fun tp!605094 () Bool)

(declare-fun b!2037993 () Bool)

(declare-fun tp!605093 () Bool)

(declare-fun e!1286871 () Bool)

(assert (=> b!2037993 (= e!1286871 (and (inv!29572 (left!17737 (left!17737 t!4319))) tp!605094 (inv!29572 (right!18067 (left!17737 t!4319))) tp!605093))))

(declare-fun b!2037995 () Bool)

(declare-fun e!1286870 () Bool)

(declare-fun tp!605095 () Bool)

(assert (=> b!2037995 (= e!1286870 tp!605095)))

(declare-fun b!2037994 () Bool)

(assert (=> b!2037994 (= e!1286871 (and (inv!29571 (xs!10369 (left!17737 t!4319))) e!1286870))))

(assert (=> b!2037814 (= tp!605065 (and (inv!29572 (left!17737 t!4319)) e!1286871))))

(assert (= (and b!2037814 ((_ is Node!7467) (left!17737 t!4319))) b!2037993))

(assert (= b!2037994 b!2037995))

(assert (= (and b!2037814 ((_ is Leaf!10942) (left!17737 t!4319))) b!2037994))

(declare-fun m!2481137 () Bool)

(assert (=> b!2037993 m!2481137))

(declare-fun m!2481139 () Bool)

(assert (=> b!2037993 m!2481139))

(declare-fun m!2481141 () Bool)

(assert (=> b!2037994 m!2481141))

(assert (=> b!2037814 m!2480947))

(declare-fun tp!605097 () Bool)

(declare-fun e!1286873 () Bool)

(declare-fun b!2037996 () Bool)

(declare-fun tp!605096 () Bool)

(assert (=> b!2037996 (= e!1286873 (and (inv!29572 (left!17737 (right!18067 t!4319))) tp!605097 (inv!29572 (right!18067 (right!18067 t!4319))) tp!605096))))

(declare-fun b!2037998 () Bool)

(declare-fun e!1286872 () Bool)

(declare-fun tp!605098 () Bool)

(assert (=> b!2037998 (= e!1286872 tp!605098)))

(declare-fun b!2037997 () Bool)

(assert (=> b!2037997 (= e!1286873 (and (inv!29571 (xs!10369 (right!18067 t!4319))) e!1286872))))

(assert (=> b!2037814 (= tp!605066 (and (inv!29572 (right!18067 t!4319)) e!1286873))))

(assert (= (and b!2037814 ((_ is Node!7467) (right!18067 t!4319))) b!2037996))

(assert (= b!2037997 b!2037998))

(assert (= (and b!2037814 ((_ is Leaf!10942) (right!18067 t!4319))) b!2037997))

(declare-fun m!2481143 () Bool)

(assert (=> b!2037996 m!2481143))

(declare-fun m!2481145 () Bool)

(assert (=> b!2037996 m!2481145))

(declare-fun m!2481147 () Bool)

(assert (=> b!2037997 m!2481147))

(assert (=> b!2037814 m!2480949))

(declare-fun b_lambda!68843 () Bool)

(assert (= b_lambda!68839 (or (and start!200804 b_free!56823) b_lambda!68843)))

(check-sat (not b!2037886) (not d!623969) (not b!2037969) (not b!2037840) (not d!623995) (not bm!124953) (not b!2037971) (not b_next!57527) (not b!2037893) (not b!2037814) (not b!2037984) b_and!162659 (not b!2037998) (not b!2037897) (not b!2037898) (not b!2037900) (not b!2037888) (not b!2037891) (not b!2037844) (not b!2037892) (not b!2037889) (not b!2037925) (not b!2037839) (not b!2037995) (not b!2037997) (not b!2037894) tp_is_empty!9273 (not d!623963) (not b!2037994) (not b_lambda!68843) (not b!2037896) (not b!2037926) (not b!2037978) (not b!2037993) (not d!623973) (not b!2037841) (not b!2037979) (not b!2037842) (not b!2037996) (not b!2037843) (not b!2037895))
(check-sat b_and!162659 (not b_next!57527))
(get-model)

(declare-fun d!624003 () Bool)

(assert (=> d!624003 (= (height!1167 (left!17737 lt!764986)) (ite ((_ is Empty!7467) (left!17737 lt!764986)) 0 (ite ((_ is Leaf!10942) (left!17737 lt!764986)) 1 (cheight!7678 (left!17737 lt!764986)))))))

(assert (=> b!2037843 d!624003))

(declare-fun d!624005 () Bool)

(assert (=> d!624005 (= (height!1167 (right!18067 lt!764986)) (ite ((_ is Empty!7467) (right!18067 lt!764986)) 0 (ite ((_ is Leaf!10942) (right!18067 lt!764986)) 1 (cheight!7678 (right!18067 lt!764986)))))))

(assert (=> b!2037843 d!624005))

(declare-fun b!2037999 () Bool)

(declare-fun e!1286874 () Bool)

(assert (=> b!2037999 (= e!1286874 (not (isEmpty!13928 (right!18067 (right!18067 t!4319)))))))

(declare-fun b!2038000 () Bool)

(declare-fun res!893565 () Bool)

(assert (=> b!2038000 (=> (not res!893565) (not e!1286874))))

(assert (=> b!2038000 (= res!893565 (isBalanced!2345 (left!17737 (right!18067 t!4319))))))

(declare-fun b!2038001 () Bool)

(declare-fun e!1286875 () Bool)

(assert (=> b!2038001 (= e!1286875 e!1286874)))

(declare-fun res!893563 () Bool)

(assert (=> b!2038001 (=> (not res!893563) (not e!1286874))))

(assert (=> b!2038001 (= res!893563 (<= (- 1) (- (height!1167 (left!17737 (right!18067 t!4319))) (height!1167 (right!18067 (right!18067 t!4319))))))))

(declare-fun b!2038002 () Bool)

(declare-fun res!893560 () Bool)

(assert (=> b!2038002 (=> (not res!893560) (not e!1286874))))

(assert (=> b!2038002 (= res!893560 (not (isEmpty!13928 (left!17737 (right!18067 t!4319)))))))

(declare-fun b!2038003 () Bool)

(declare-fun res!893561 () Bool)

(assert (=> b!2038003 (=> (not res!893561) (not e!1286874))))

(assert (=> b!2038003 (= res!893561 (<= (- (height!1167 (left!17737 (right!18067 t!4319))) (height!1167 (right!18067 (right!18067 t!4319)))) 1))))

(declare-fun b!2038004 () Bool)

(declare-fun res!893562 () Bool)

(assert (=> b!2038004 (=> (not res!893562) (not e!1286874))))

(assert (=> b!2038004 (= res!893562 (isBalanced!2345 (right!18067 (right!18067 t!4319))))))

(declare-fun d!624007 () Bool)

(declare-fun res!893564 () Bool)

(assert (=> d!624007 (=> res!893564 e!1286875)))

(assert (=> d!624007 (= res!893564 (not ((_ is Node!7467) (right!18067 t!4319))))))

(assert (=> d!624007 (= (isBalanced!2345 (right!18067 t!4319)) e!1286875)))

(assert (= (and d!624007 (not res!893564)) b!2038001))

(assert (= (and b!2038001 res!893563) b!2038003))

(assert (= (and b!2038003 res!893561) b!2038000))

(assert (= (and b!2038000 res!893565) b!2038004))

(assert (= (and b!2038004 res!893562) b!2038002))

(assert (= (and b!2038002 res!893560) b!2037999))

(declare-fun m!2481149 () Bool)

(assert (=> b!2037999 m!2481149))

(declare-fun m!2481151 () Bool)

(assert (=> b!2038003 m!2481151))

(declare-fun m!2481153 () Bool)

(assert (=> b!2038003 m!2481153))

(declare-fun m!2481155 () Bool)

(assert (=> b!2038002 m!2481155))

(declare-fun m!2481157 () Bool)

(assert (=> b!2038000 m!2481157))

(declare-fun m!2481159 () Bool)

(assert (=> b!2038004 m!2481159))

(assert (=> b!2038001 m!2481151))

(assert (=> b!2038001 m!2481153))

(assert (=> b!2037897 d!624007))

(declare-fun d!624009 () Bool)

(declare-fun res!893570 () Bool)

(declare-fun e!1286880 () Bool)

(assert (=> d!624009 (=> res!893570 e!1286880)))

(assert (=> d!624009 (= res!893570 ((_ is Nil!22275) lt!765004))))

(assert (=> d!624009 (= (forall!4754 lt!765004 p!1489) e!1286880)))

(declare-fun b!2038009 () Bool)

(declare-fun e!1286881 () Bool)

(assert (=> b!2038009 (= e!1286880 e!1286881)))

(declare-fun res!893571 () Bool)

(assert (=> b!2038009 (=> (not res!893571) (not e!1286881))))

(assert (=> b!2038009 (= res!893571 (dynLambda!11104 p!1489 (h!27676 lt!765004)))))

(declare-fun b!2038010 () Bool)

(assert (=> b!2038010 (= e!1286881 (forall!4754 (t!191324 lt!765004) p!1489))))

(assert (= (and d!624009 (not res!893570)) b!2038009))

(assert (= (and b!2038009 res!893571) b!2038010))

(declare-fun b_lambda!68845 () Bool)

(assert (=> (not b_lambda!68845) (not b!2038009)))

(declare-fun t!191335 () Bool)

(declare-fun tb!128877 () Bool)

(assert (=> (and start!200804 (= p!1489 p!1489) t!191335) tb!128877))

(declare-fun result!154180 () Bool)

(assert (=> tb!128877 (= result!154180 true)))

(assert (=> b!2038009 t!191335))

(declare-fun b_and!162661 () Bool)

(assert (= b_and!162659 (and (=> t!191335 result!154180) b_and!162661)))

(declare-fun m!2481161 () Bool)

(assert (=> b!2038009 m!2481161))

(declare-fun m!2481163 () Bool)

(assert (=> b!2038010 m!2481163))

(assert (=> b!2037969 d!624009))

(declare-fun d!624011 () Bool)

(declare-fun c!330066 () Bool)

(assert (=> d!624011 (= c!330066 ((_ is Node!7467) (left!17737 (right!18067 t!4319))))))

(declare-fun e!1286882 () Bool)

(assert (=> d!624011 (= (inv!29572 (left!17737 (right!18067 t!4319))) e!1286882)))

(declare-fun b!2038011 () Bool)

(assert (=> b!2038011 (= e!1286882 (inv!29575 (left!17737 (right!18067 t!4319))))))

(declare-fun b!2038012 () Bool)

(declare-fun e!1286883 () Bool)

(assert (=> b!2038012 (= e!1286882 e!1286883)))

(declare-fun res!893572 () Bool)

(assert (=> b!2038012 (= res!893572 (not ((_ is Leaf!10942) (left!17737 (right!18067 t!4319)))))))

(assert (=> b!2038012 (=> res!893572 e!1286883)))

(declare-fun b!2038013 () Bool)

(assert (=> b!2038013 (= e!1286883 (inv!29576 (left!17737 (right!18067 t!4319))))))

(assert (= (and d!624011 c!330066) b!2038011))

(assert (= (and d!624011 (not c!330066)) b!2038012))

(assert (= (and b!2038012 (not res!893572)) b!2038013))

(declare-fun m!2481165 () Bool)

(assert (=> b!2038011 m!2481165))

(declare-fun m!2481167 () Bool)

(assert (=> b!2038013 m!2481167))

(assert (=> b!2037996 d!624011))

(declare-fun d!624013 () Bool)

(declare-fun c!330067 () Bool)

(assert (=> d!624013 (= c!330067 ((_ is Node!7467) (right!18067 (right!18067 t!4319))))))

(declare-fun e!1286884 () Bool)

(assert (=> d!624013 (= (inv!29572 (right!18067 (right!18067 t!4319))) e!1286884)))

(declare-fun b!2038014 () Bool)

(assert (=> b!2038014 (= e!1286884 (inv!29575 (right!18067 (right!18067 t!4319))))))

(declare-fun b!2038015 () Bool)

(declare-fun e!1286885 () Bool)

(assert (=> b!2038015 (= e!1286884 e!1286885)))

(declare-fun res!893573 () Bool)

(assert (=> b!2038015 (= res!893573 (not ((_ is Leaf!10942) (right!18067 (right!18067 t!4319)))))))

(assert (=> b!2038015 (=> res!893573 e!1286885)))

(declare-fun b!2038016 () Bool)

(assert (=> b!2038016 (= e!1286885 (inv!29576 (right!18067 (right!18067 t!4319))))))

(assert (= (and d!624013 c!330067) b!2038014))

(assert (= (and d!624013 (not c!330067)) b!2038015))

(assert (= (and b!2038015 (not res!893573)) b!2038016))

(declare-fun m!2481169 () Bool)

(assert (=> b!2038014 m!2481169))

(declare-fun m!2481171 () Bool)

(assert (=> b!2038016 m!2481171))

(assert (=> b!2037996 d!624013))

(declare-fun d!624015 () Bool)

(assert (=> d!624015 (= (height!1167 (left!17737 t!4319)) (ite ((_ is Empty!7467) (left!17737 t!4319)) 0 (ite ((_ is Leaf!10942) (left!17737 t!4319)) 1 (cheight!7678 (left!17737 t!4319)))))))

(assert (=> b!2037896 d!624015))

(declare-fun d!624017 () Bool)

(assert (=> d!624017 (= (height!1167 (right!18067 t!4319)) (ite ((_ is Empty!7467) (right!18067 t!4319)) 0 (ite ((_ is Leaf!10942) (right!18067 t!4319)) 1 (cheight!7678 (right!18067 t!4319)))))))

(assert (=> b!2037896 d!624017))

(declare-fun d!624019 () Bool)

(declare-fun lt!765007 () Bool)

(declare-fun isEmpty!13930 (List!22357) Bool)

(assert (=> d!624019 (= lt!765007 (isEmpty!13930 (list!9131 (left!17737 lt!764986))))))

(declare-fun size!17426 (Conc!7467) Int)

(assert (=> d!624019 (= lt!765007 (= (size!17426 (left!17737 lt!764986)) 0))))

(assert (=> d!624019 (= (isEmpty!13928 (left!17737 lt!764986)) lt!765007)))

(declare-fun bs!421425 () Bool)

(assert (= bs!421425 d!624019))

(assert (=> bs!421425 m!2481075))

(assert (=> bs!421425 m!2481075))

(declare-fun m!2481173 () Bool)

(assert (=> bs!421425 m!2481173))

(declare-fun m!2481175 () Bool)

(assert (=> bs!421425 m!2481175))

(assert (=> b!2037842 d!624019))

(assert (=> b!2037841 d!624003))

(assert (=> b!2037841 d!624005))

(declare-fun d!624021 () Bool)

(declare-fun res!893580 () Bool)

(declare-fun e!1286893 () Bool)

(assert (=> d!624021 (=> (not res!893580) (not e!1286893))))

(assert (=> d!624021 (= res!893580 (<= (size!17425 (list!9133 (xs!10369 t!4319))) 512))))

(assert (=> d!624021 (= (inv!29576 t!4319) e!1286893)))

(declare-fun b!2038031 () Bool)

(declare-fun res!893581 () Bool)

(assert (=> b!2038031 (=> (not res!893581) (not e!1286893))))

(assert (=> b!2038031 (= res!893581 (= (csize!15165 t!4319) (size!17425 (list!9133 (xs!10369 t!4319)))))))

(declare-fun b!2038032 () Bool)

(assert (=> b!2038032 (= e!1286893 (and (> (csize!15165 t!4319) 0) (<= (csize!15165 t!4319) 512)))))

(assert (= (and d!624021 res!893580) b!2038031))

(assert (= (and b!2038031 res!893581) b!2038032))

(assert (=> d!624021 m!2481013))

(assert (=> d!624021 m!2481013))

(declare-fun m!2481191 () Bool)

(assert (=> d!624021 m!2481191))

(assert (=> b!2038031 m!2481013))

(assert (=> b!2038031 m!2481013))

(assert (=> b!2038031 m!2481191))

(assert (=> b!2037900 d!624021))

(declare-fun d!624027 () Bool)

(declare-fun res!893594 () Bool)

(declare-fun e!1286901 () Bool)

(assert (=> d!624027 (=> (not res!893594) (not e!1286901))))

(assert (=> d!624027 (= res!893594 (= (csize!15164 (right!18067 t!4319)) (+ (size!17426 (left!17737 (right!18067 t!4319))) (size!17426 (right!18067 (right!18067 t!4319))))))))

(assert (=> d!624027 (= (inv!29575 (right!18067 t!4319)) e!1286901)))

(declare-fun b!2038049 () Bool)

(declare-fun res!893595 () Bool)

(assert (=> b!2038049 (=> (not res!893595) (not e!1286901))))

(assert (=> b!2038049 (= res!893595 (and (not (= (left!17737 (right!18067 t!4319)) Empty!7467)) (not (= (right!18067 (right!18067 t!4319)) Empty!7467))))))

(declare-fun b!2038050 () Bool)

(declare-fun res!893596 () Bool)

(assert (=> b!2038050 (=> (not res!893596) (not e!1286901))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2038050 (= res!893596 (= (cheight!7678 (right!18067 t!4319)) (+ (max!0 (height!1167 (left!17737 (right!18067 t!4319))) (height!1167 (right!18067 (right!18067 t!4319)))) 1)))))

(declare-fun b!2038051 () Bool)

(assert (=> b!2038051 (= e!1286901 (<= 0 (cheight!7678 (right!18067 t!4319))))))

(assert (= (and d!624027 res!893594) b!2038049))

(assert (= (and b!2038049 res!893595) b!2038050))

(assert (= (and b!2038050 res!893596) b!2038051))

(declare-fun m!2481205 () Bool)

(assert (=> d!624027 m!2481205))

(declare-fun m!2481207 () Bool)

(assert (=> d!624027 m!2481207))

(assert (=> b!2038050 m!2481151))

(assert (=> b!2038050 m!2481153))

(assert (=> b!2038050 m!2481151))

(assert (=> b!2038050 m!2481153))

(declare-fun m!2481209 () Bool)

(assert (=> b!2038050 m!2481209))

(assert (=> b!2037889 d!624027))

(declare-fun b!2038069 () Bool)

(declare-fun e!1286910 () List!22357)

(assert (=> b!2038069 (= e!1286910 (list!9131 (right!18067 lt!764986)))))

(declare-fun b!2038071 () Bool)

(declare-fun res!893610 () Bool)

(declare-fun e!1286909 () Bool)

(assert (=> b!2038071 (=> (not res!893610) (not e!1286909))))

(declare-fun lt!765014 () List!22357)

(assert (=> b!2038071 (= res!893610 (= (size!17425 lt!765014) (+ (size!17425 (list!9131 (left!17737 lt!764986))) (size!17425 (list!9131 (right!18067 lt!764986))))))))

(declare-fun d!624037 () Bool)

(assert (=> d!624037 e!1286909))

(declare-fun res!893611 () Bool)

(assert (=> d!624037 (=> (not res!893611) (not e!1286909))))

(assert (=> d!624037 (= res!893611 (= (content!3307 lt!765014) ((_ map or) (content!3307 (list!9131 (left!17737 lt!764986))) (content!3307 (list!9131 (right!18067 lt!764986))))))))

(assert (=> d!624037 (= lt!765014 e!1286910)))

(declare-fun c!330076 () Bool)

(assert (=> d!624037 (= c!330076 ((_ is Nil!22275) (list!9131 (left!17737 lt!764986))))))

(assert (=> d!624037 (= (++!6047 (list!9131 (left!17737 lt!764986)) (list!9131 (right!18067 lt!764986))) lt!765014)))

(declare-fun b!2038072 () Bool)

(assert (=> b!2038072 (= e!1286909 (or (not (= (list!9131 (right!18067 lt!764986)) Nil!22275)) (= lt!765014 (list!9131 (left!17737 lt!764986)))))))

(declare-fun b!2038070 () Bool)

(assert (=> b!2038070 (= e!1286910 (Cons!22275 (h!27676 (list!9131 (left!17737 lt!764986))) (++!6047 (t!191324 (list!9131 (left!17737 lt!764986))) (list!9131 (right!18067 lt!764986)))))))

(assert (= (and d!624037 c!330076) b!2038069))

(assert (= (and d!624037 (not c!330076)) b!2038070))

(assert (= (and d!624037 res!893611) b!2038071))

(assert (= (and b!2038071 res!893610) b!2038072))

(declare-fun m!2481225 () Bool)

(assert (=> b!2038071 m!2481225))

(assert (=> b!2038071 m!2481075))

(declare-fun m!2481227 () Bool)

(assert (=> b!2038071 m!2481227))

(assert (=> b!2038071 m!2481077))

(declare-fun m!2481229 () Bool)

(assert (=> b!2038071 m!2481229))

(declare-fun m!2481231 () Bool)

(assert (=> d!624037 m!2481231))

(assert (=> d!624037 m!2481075))

(declare-fun m!2481233 () Bool)

(assert (=> d!624037 m!2481233))

(assert (=> d!624037 m!2481077))

(declare-fun m!2481235 () Bool)

(assert (=> d!624037 m!2481235))

(assert (=> b!2038070 m!2481077))

(declare-fun m!2481237 () Bool)

(assert (=> b!2038070 m!2481237))

(assert (=> b!2037926 d!624037))

(declare-fun b!2038077 () Bool)

(declare-fun e!1286913 () List!22357)

(declare-fun e!1286914 () List!22357)

(assert (=> b!2038077 (= e!1286913 e!1286914)))

(declare-fun c!330079 () Bool)

(assert (=> b!2038077 (= c!330079 ((_ is Leaf!10942) (left!17737 lt!764986)))))

(declare-fun b!2038076 () Bool)

(assert (=> b!2038076 (= e!1286913 Nil!22275)))

(declare-fun b!2038079 () Bool)

(assert (=> b!2038079 (= e!1286914 (++!6047 (list!9131 (left!17737 (left!17737 lt!764986))) (list!9131 (right!18067 (left!17737 lt!764986)))))))

(declare-fun b!2038078 () Bool)

(assert (=> b!2038078 (= e!1286914 (list!9133 (xs!10369 (left!17737 lt!764986))))))

(declare-fun d!624043 () Bool)

(declare-fun c!330078 () Bool)

(assert (=> d!624043 (= c!330078 ((_ is Empty!7467) (left!17737 lt!764986)))))

(assert (=> d!624043 (= (list!9131 (left!17737 lt!764986)) e!1286913)))

(assert (= (and d!624043 c!330078) b!2038076))

(assert (= (and d!624043 (not c!330078)) b!2038077))

(assert (= (and b!2038077 c!330079) b!2038078))

(assert (= (and b!2038077 (not c!330079)) b!2038079))

(declare-fun m!2481247 () Bool)

(assert (=> b!2038079 m!2481247))

(declare-fun m!2481249 () Bool)

(assert (=> b!2038079 m!2481249))

(assert (=> b!2038079 m!2481247))

(assert (=> b!2038079 m!2481249))

(declare-fun m!2481251 () Bool)

(assert (=> b!2038079 m!2481251))

(declare-fun m!2481255 () Bool)

(assert (=> b!2038078 m!2481255))

(assert (=> b!2037926 d!624043))

(declare-fun b!2038084 () Bool)

(declare-fun e!1286917 () List!22357)

(declare-fun e!1286918 () List!22357)

(assert (=> b!2038084 (= e!1286917 e!1286918)))

(declare-fun c!330082 () Bool)

(assert (=> b!2038084 (= c!330082 ((_ is Leaf!10942) (right!18067 lt!764986)))))

(declare-fun b!2038083 () Bool)

(assert (=> b!2038083 (= e!1286917 Nil!22275)))

(declare-fun b!2038086 () Bool)

(assert (=> b!2038086 (= e!1286918 (++!6047 (list!9131 (left!17737 (right!18067 lt!764986))) (list!9131 (right!18067 (right!18067 lt!764986)))))))

(declare-fun b!2038085 () Bool)

(assert (=> b!2038085 (= e!1286918 (list!9133 (xs!10369 (right!18067 lt!764986))))))

(declare-fun d!624049 () Bool)

(declare-fun c!330081 () Bool)

(assert (=> d!624049 (= c!330081 ((_ is Empty!7467) (right!18067 lt!764986)))))

(assert (=> d!624049 (= (list!9131 (right!18067 lt!764986)) e!1286917)))

(assert (= (and d!624049 c!330081) b!2038083))

(assert (= (and d!624049 (not c!330081)) b!2038084))

(assert (= (and b!2038084 c!330082) b!2038085))

(assert (= (and b!2038084 (not c!330082)) b!2038086))

(declare-fun m!2481261 () Bool)

(assert (=> b!2038086 m!2481261))

(declare-fun m!2481263 () Bool)

(assert (=> b!2038086 m!2481263))

(assert (=> b!2038086 m!2481261))

(assert (=> b!2038086 m!2481263))

(declare-fun m!2481265 () Bool)

(assert (=> b!2038086 m!2481265))

(declare-fun m!2481267 () Bool)

(assert (=> b!2038085 m!2481267))

(assert (=> b!2037926 d!624049))

(declare-fun d!624055 () Bool)

(declare-fun res!893614 () Bool)

(declare-fun e!1286919 () Bool)

(assert (=> d!624055 (=> (not res!893614) (not e!1286919))))

(assert (=> d!624055 (= res!893614 (= (csize!15164 t!4319) (+ (size!17426 (left!17737 t!4319)) (size!17426 (right!18067 t!4319)))))))

(assert (=> d!624055 (= (inv!29575 t!4319) e!1286919)))

(declare-fun b!2038087 () Bool)

(declare-fun res!893615 () Bool)

(assert (=> b!2038087 (=> (not res!893615) (not e!1286919))))

(assert (=> b!2038087 (= res!893615 (and (not (= (left!17737 t!4319) Empty!7467)) (not (= (right!18067 t!4319) Empty!7467))))))

(declare-fun b!2038088 () Bool)

(declare-fun res!893616 () Bool)

(assert (=> b!2038088 (=> (not res!893616) (not e!1286919))))

(assert (=> b!2038088 (= res!893616 (= (cheight!7678 t!4319) (+ (max!0 (height!1167 (left!17737 t!4319)) (height!1167 (right!18067 t!4319))) 1)))))

(declare-fun b!2038089 () Bool)

(assert (=> b!2038089 (= e!1286919 (<= 0 (cheight!7678 t!4319)))))

(assert (= (and d!624055 res!893614) b!2038087))

(assert (= (and b!2038087 res!893615) b!2038088))

(assert (= (and b!2038088 res!893616) b!2038089))

(declare-fun m!2481269 () Bool)

(assert (=> d!624055 m!2481269))

(declare-fun m!2481271 () Bool)

(assert (=> d!624055 m!2481271))

(assert (=> b!2038088 m!2481053))

(assert (=> b!2038088 m!2481055))

(assert (=> b!2038088 m!2481053))

(assert (=> b!2038088 m!2481055))

(declare-fun m!2481273 () Bool)

(assert (=> b!2038088 m!2481273))

(assert (=> b!2037898 d!624055))

(declare-fun d!624057 () Bool)

(assert (=> d!624057 (= (list!9133 (xs!10369 lt!764986)) (innerList!7527 (xs!10369 lt!764986)))))

(assert (=> b!2037925 d!624057))

(declare-fun b!2038090 () Bool)

(declare-fun e!1286920 () Bool)

(assert (=> b!2038090 (= e!1286920 (not (isEmpty!13928 (right!18067 (left!17737 lt!764986)))))))

(declare-fun b!2038091 () Bool)

(declare-fun res!893622 () Bool)

(assert (=> b!2038091 (=> (not res!893622) (not e!1286920))))

(assert (=> b!2038091 (= res!893622 (isBalanced!2345 (left!17737 (left!17737 lt!764986))))))

(declare-fun b!2038092 () Bool)

(declare-fun e!1286921 () Bool)

(assert (=> b!2038092 (= e!1286921 e!1286920)))

(declare-fun res!893620 () Bool)

(assert (=> b!2038092 (=> (not res!893620) (not e!1286920))))

(assert (=> b!2038092 (= res!893620 (<= (- 1) (- (height!1167 (left!17737 (left!17737 lt!764986))) (height!1167 (right!18067 (left!17737 lt!764986))))))))

(declare-fun b!2038093 () Bool)

(declare-fun res!893617 () Bool)

(assert (=> b!2038093 (=> (not res!893617) (not e!1286920))))

(assert (=> b!2038093 (= res!893617 (not (isEmpty!13928 (left!17737 (left!17737 lt!764986)))))))

(declare-fun b!2038094 () Bool)

(declare-fun res!893618 () Bool)

(assert (=> b!2038094 (=> (not res!893618) (not e!1286920))))

(assert (=> b!2038094 (= res!893618 (<= (- (height!1167 (left!17737 (left!17737 lt!764986))) (height!1167 (right!18067 (left!17737 lt!764986)))) 1))))

(declare-fun b!2038095 () Bool)

(declare-fun res!893619 () Bool)

(assert (=> b!2038095 (=> (not res!893619) (not e!1286920))))

(assert (=> b!2038095 (= res!893619 (isBalanced!2345 (right!18067 (left!17737 lt!764986))))))

(declare-fun d!624059 () Bool)

(declare-fun res!893621 () Bool)

(assert (=> d!624059 (=> res!893621 e!1286921)))

(assert (=> d!624059 (= res!893621 (not ((_ is Node!7467) (left!17737 lt!764986))))))

(assert (=> d!624059 (= (isBalanced!2345 (left!17737 lt!764986)) e!1286921)))

(assert (= (and d!624059 (not res!893621)) b!2038092))

(assert (= (and b!2038092 res!893620) b!2038094))

(assert (= (and b!2038094 res!893618) b!2038091))

(assert (= (and b!2038091 res!893622) b!2038095))

(assert (= (and b!2038095 res!893619) b!2038093))

(assert (= (and b!2038093 res!893617) b!2038090))

(declare-fun m!2481279 () Bool)

(assert (=> b!2038090 m!2481279))

(declare-fun m!2481281 () Bool)

(assert (=> b!2038094 m!2481281))

(declare-fun m!2481283 () Bool)

(assert (=> b!2038094 m!2481283))

(declare-fun m!2481285 () Bool)

(assert (=> b!2038093 m!2481285))

(declare-fun m!2481287 () Bool)

(assert (=> b!2038091 m!2481287))

(declare-fun m!2481289 () Bool)

(assert (=> b!2038095 m!2481289))

(assert (=> b!2038092 m!2481281))

(assert (=> b!2038092 m!2481283))

(assert (=> b!2037840 d!624059))

(declare-fun d!624071 () Bool)

(declare-fun lt!765017 () Bool)

(assert (=> d!624071 (= lt!765017 (isEmpty!13930 (list!9131 (left!17737 t!4319))))))

(assert (=> d!624071 (= lt!765017 (= (size!17426 (left!17737 t!4319)) 0))))

(assert (=> d!624071 (= (isEmpty!13928 (left!17737 t!4319)) lt!765017)))

(declare-fun bs!421431 () Bool)

(assert (= bs!421431 d!624071))

(assert (=> bs!421431 m!2481131))

(assert (=> bs!421431 m!2481131))

(declare-fun m!2481295 () Bool)

(assert (=> bs!421431 m!2481295))

(assert (=> bs!421431 m!2481269))

(assert (=> b!2037895 d!624071))

(declare-fun d!624075 () Bool)

(declare-fun lt!765018 () Bool)

(assert (=> d!624075 (= lt!765018 (isEmpty!13930 (list!9131 (right!18067 lt!764986))))))

(assert (=> d!624075 (= lt!765018 (= (size!17426 (right!18067 lt!764986)) 0))))

(assert (=> d!624075 (= (isEmpty!13928 (right!18067 lt!764986)) lt!765018)))

(declare-fun bs!421432 () Bool)

(assert (= bs!421432 d!624075))

(assert (=> bs!421432 m!2481077))

(assert (=> bs!421432 m!2481077))

(declare-fun m!2481297 () Bool)

(assert (=> bs!421432 m!2481297))

(declare-fun m!2481299 () Bool)

(assert (=> bs!421432 m!2481299))

(assert (=> b!2037839 d!624075))

(declare-fun b!2038102 () Bool)

(declare-fun e!1286926 () Bool)

(assert (=> b!2038102 (= e!1286926 (not (isEmpty!13928 (right!18067 (left!17737 t!4319)))))))

(declare-fun b!2038103 () Bool)

(declare-fun res!893630 () Bool)

(assert (=> b!2038103 (=> (not res!893630) (not e!1286926))))

(assert (=> b!2038103 (= res!893630 (isBalanced!2345 (left!17737 (left!17737 t!4319))))))

(declare-fun b!2038104 () Bool)

(declare-fun e!1286927 () Bool)

(assert (=> b!2038104 (= e!1286927 e!1286926)))

(declare-fun res!893628 () Bool)

(assert (=> b!2038104 (=> (not res!893628) (not e!1286926))))

(assert (=> b!2038104 (= res!893628 (<= (- 1) (- (height!1167 (left!17737 (left!17737 t!4319))) (height!1167 (right!18067 (left!17737 t!4319))))))))

(declare-fun b!2038105 () Bool)

(declare-fun res!893625 () Bool)

(assert (=> b!2038105 (=> (not res!893625) (not e!1286926))))

(assert (=> b!2038105 (= res!893625 (not (isEmpty!13928 (left!17737 (left!17737 t!4319)))))))

(declare-fun b!2038106 () Bool)

(declare-fun res!893626 () Bool)

(assert (=> b!2038106 (=> (not res!893626) (not e!1286926))))

(assert (=> b!2038106 (= res!893626 (<= (- (height!1167 (left!17737 (left!17737 t!4319))) (height!1167 (right!18067 (left!17737 t!4319)))) 1))))

(declare-fun b!2038107 () Bool)

(declare-fun res!893627 () Bool)

(assert (=> b!2038107 (=> (not res!893627) (not e!1286926))))

(assert (=> b!2038107 (= res!893627 (isBalanced!2345 (right!18067 (left!17737 t!4319))))))

(declare-fun d!624077 () Bool)

(declare-fun res!893629 () Bool)

(assert (=> d!624077 (=> res!893629 e!1286927)))

(assert (=> d!624077 (= res!893629 (not ((_ is Node!7467) (left!17737 t!4319))))))

(assert (=> d!624077 (= (isBalanced!2345 (left!17737 t!4319)) e!1286927)))

(assert (= (and d!624077 (not res!893629)) b!2038104))

(assert (= (and b!2038104 res!893628) b!2038106))

(assert (= (and b!2038106 res!893626) b!2038103))

(assert (= (and b!2038103 res!893630) b!2038107))

(assert (= (and b!2038107 res!893627) b!2038105))

(assert (= (and b!2038105 res!893625) b!2038102))

(declare-fun m!2481309 () Bool)

(assert (=> b!2038102 m!2481309))

(declare-fun m!2481311 () Bool)

(assert (=> b!2038106 m!2481311))

(declare-fun m!2481313 () Bool)

(assert (=> b!2038106 m!2481313))

(declare-fun m!2481315 () Bool)

(assert (=> b!2038105 m!2481315))

(declare-fun m!2481317 () Bool)

(assert (=> b!2038103 m!2481317))

(declare-fun m!2481319 () Bool)

(assert (=> b!2038107 m!2481319))

(assert (=> b!2038104 m!2481311))

(assert (=> b!2038104 m!2481313))

(assert (=> b!2037893 d!624077))

(assert (=> b!2037894 d!624015))

(assert (=> b!2037894 d!624017))

(declare-fun b!2038114 () Bool)

(declare-fun e!1286932 () List!22357)

(declare-fun call!124960 () List!22357)

(assert (=> b!2038114 (= e!1286932 call!124960)))

(declare-fun bm!124955 () Bool)

(assert (=> bm!124955 (= call!124960 (filter!471 (t!191324 (t!191324 (list!9131 t!4319))) p!1489))))

(declare-fun b!2038115 () Bool)

(declare-fun e!1286931 () List!22357)

(assert (=> b!2038115 (= e!1286931 e!1286932)))

(declare-fun c!330086 () Bool)

(assert (=> b!2038115 (= c!330086 (dynLambda!11104 p!1489 (h!27676 (t!191324 (list!9131 t!4319)))))))

(declare-fun b!2038116 () Bool)

(declare-fun e!1286930 () Bool)

(declare-fun lt!765020 () List!22357)

(assert (=> b!2038116 (= e!1286930 (forall!4754 lt!765020 p!1489))))

(declare-fun b!2038117 () Bool)

(assert (=> b!2038117 (= e!1286931 Nil!22275)))

(declare-fun b!2038119 () Bool)

(assert (=> b!2038119 (= e!1286932 (Cons!22275 (h!27676 (t!191324 (list!9131 t!4319))) call!124960))))

(declare-fun b!2038118 () Bool)

(declare-fun res!893637 () Bool)

(assert (=> b!2038118 (=> (not res!893637) (not e!1286930))))

(assert (=> b!2038118 (= res!893637 (= ((_ map implies) (content!3307 lt!765020) (content!3307 (t!191324 (list!9131 t!4319)))) ((as const (InoxSet T!35990)) true)))))

(declare-fun d!624083 () Bool)

(assert (=> d!624083 e!1286930))

(declare-fun res!893638 () Bool)

(assert (=> d!624083 (=> (not res!893638) (not e!1286930))))

(assert (=> d!624083 (= res!893638 (<= (size!17425 lt!765020) (size!17425 (t!191324 (list!9131 t!4319)))))))

(assert (=> d!624083 (= lt!765020 e!1286931)))

(declare-fun c!330085 () Bool)

(assert (=> d!624083 (= c!330085 ((_ is Nil!22275) (t!191324 (list!9131 t!4319))))))

(assert (=> d!624083 (= (filter!471 (t!191324 (list!9131 t!4319)) p!1489) lt!765020)))

(assert (= (and d!624083 c!330085) b!2038117))

(assert (= (and d!624083 (not c!330085)) b!2038115))

(assert (= (and b!2038115 c!330086) b!2038119))

(assert (= (and b!2038115 (not c!330086)) b!2038114))

(assert (= (or b!2038119 b!2038114) bm!124955))

(assert (= (and d!624083 res!893638) b!2038118))

(assert (= (and b!2038118 res!893637) b!2038116))

(declare-fun b_lambda!68849 () Bool)

(assert (=> (not b_lambda!68849) (not b!2038115)))

(declare-fun t!191342 () Bool)

(declare-fun tb!128881 () Bool)

(assert (=> (and start!200804 (= p!1489 p!1489) t!191342) tb!128881))

(declare-fun result!154184 () Bool)

(assert (=> tb!128881 (= result!154184 true)))

(assert (=> b!2038115 t!191342))

(declare-fun b_and!162665 () Bool)

(assert (= b_and!162661 (and (=> t!191342 result!154184) b_and!162665)))

(declare-fun m!2481333 () Bool)

(assert (=> bm!124955 m!2481333))

(declare-fun m!2481335 () Bool)

(assert (=> d!624083 m!2481335))

(declare-fun m!2481337 () Bool)

(assert (=> d!624083 m!2481337))

(declare-fun m!2481339 () Bool)

(assert (=> b!2038118 m!2481339))

(declare-fun m!2481341 () Bool)

(assert (=> b!2038118 m!2481341))

(declare-fun m!2481343 () Bool)

(assert (=> b!2038116 m!2481343))

(declare-fun m!2481345 () Bool)

(assert (=> b!2038115 m!2481345))

(assert (=> bm!124953 d!624083))

(declare-fun d!624087 () Bool)

(declare-fun lt!765021 () Bool)

(assert (=> d!624087 (= lt!765021 (isEmpty!13930 (list!9131 (right!18067 t!4319))))))

(assert (=> d!624087 (= lt!765021 (= (size!17426 (right!18067 t!4319)) 0))))

(assert (=> d!624087 (= (isEmpty!13928 (right!18067 t!4319)) lt!765021)))

(declare-fun bs!421434 () Bool)

(assert (= bs!421434 d!624087))

(assert (=> bs!421434 m!2481133))

(assert (=> bs!421434 m!2481133))

(declare-fun m!2481349 () Bool)

(assert (=> bs!421434 m!2481349))

(assert (=> bs!421434 m!2481271))

(assert (=> b!2037892 d!624087))

(declare-fun d!624089 () Bool)

(assert (=> d!624089 (= (list!9133 (xs!10369 t!4319)) (innerList!7527 (xs!10369 t!4319)))))

(assert (=> b!2037978 d!624089))

(declare-fun b!2038126 () Bool)

(declare-fun e!1286937 () List!22357)

(declare-fun call!124961 () List!22357)

(assert (=> b!2038126 (= e!1286937 call!124961)))

(declare-fun bm!124956 () Bool)

(assert (=> bm!124956 (= call!124961 (filter!471 (t!191324 (list!9133 (xs!10369 t!4319))) p!1489))))

(declare-fun b!2038127 () Bool)

(declare-fun e!1286936 () List!22357)

(assert (=> b!2038127 (= e!1286936 e!1286937)))

(declare-fun c!330088 () Bool)

(assert (=> b!2038127 (= c!330088 (dynLambda!11104 p!1489 (h!27676 (list!9133 (xs!10369 t!4319)))))))

(declare-fun b!2038128 () Bool)

(declare-fun e!1286935 () Bool)

(declare-fun lt!765022 () List!22357)

(assert (=> b!2038128 (= e!1286935 (forall!4754 lt!765022 p!1489))))

(declare-fun b!2038129 () Bool)

(assert (=> b!2038129 (= e!1286936 Nil!22275)))

(declare-fun b!2038131 () Bool)

(assert (=> b!2038131 (= e!1286937 (Cons!22275 (h!27676 (list!9133 (xs!10369 t!4319))) call!124961))))

(declare-fun b!2038130 () Bool)

(declare-fun res!893645 () Bool)

(assert (=> b!2038130 (=> (not res!893645) (not e!1286935))))

(assert (=> b!2038130 (= res!893645 (= ((_ map implies) (content!3307 lt!765022) (content!3307 (list!9133 (xs!10369 t!4319)))) ((as const (InoxSet T!35990)) true)))))

(declare-fun d!624091 () Bool)

(assert (=> d!624091 e!1286935))

(declare-fun res!893646 () Bool)

(assert (=> d!624091 (=> (not res!893646) (not e!1286935))))

(assert (=> d!624091 (= res!893646 (<= (size!17425 lt!765022) (size!17425 (list!9133 (xs!10369 t!4319)))))))

(assert (=> d!624091 (= lt!765022 e!1286936)))

(declare-fun c!330087 () Bool)

(assert (=> d!624091 (= c!330087 ((_ is Nil!22275) (list!9133 (xs!10369 t!4319))))))

(assert (=> d!624091 (= (filter!471 (list!9133 (xs!10369 t!4319)) p!1489) lt!765022)))

(assert (= (and d!624091 c!330087) b!2038129))

(assert (= (and d!624091 (not c!330087)) b!2038127))

(assert (= (and b!2038127 c!330088) b!2038131))

(assert (= (and b!2038127 (not c!330088)) b!2038126))

(assert (= (or b!2038131 b!2038126) bm!124956))

(assert (= (and d!624091 res!893646) b!2038130))

(assert (= (and b!2038130 res!893645) b!2038128))

(declare-fun b_lambda!68851 () Bool)

(assert (=> (not b_lambda!68851) (not b!2038127)))

(declare-fun t!191344 () Bool)

(declare-fun tb!128883 () Bool)

(assert (=> (and start!200804 (= p!1489 p!1489) t!191344) tb!128883))

(declare-fun result!154186 () Bool)

(assert (=> tb!128883 (= result!154186 true)))

(assert (=> b!2038127 t!191344))

(declare-fun b_and!162667 () Bool)

(assert (= b_and!162665 (and (=> t!191344 result!154186) b_and!162667)))

(declare-fun m!2481369 () Bool)

(assert (=> bm!124956 m!2481369))

(declare-fun m!2481373 () Bool)

(assert (=> d!624091 m!2481373))

(assert (=> d!624091 m!2481013))

(assert (=> d!624091 m!2481191))

(declare-fun m!2481377 () Bool)

(assert (=> b!2038130 m!2481377))

(assert (=> b!2038130 m!2481013))

(declare-fun m!2481379 () Bool)

(assert (=> b!2038130 m!2481379))

(declare-fun m!2481381 () Bool)

(assert (=> b!2038128 m!2481381))

(declare-fun m!2481383 () Bool)

(assert (=> b!2038127 m!2481383))

(assert (=> d!623973 d!624091))

(assert (=> d!623973 d!624089))

(declare-fun d!624097 () Bool)

(declare-fun _$11!1074 () IArray!14939)

(assert (=> d!624097 (= _$11!1074 (IArray!14940 (filter!471 (list!9133 (xs!10369 t!4319)) p!1489)))))

(declare-fun e!1286946 () Bool)

(assert (=> d!624097 (and (inv!29571 _$11!1074) e!1286946)))

(assert (=> d!624097 (= (choose!12440 (xs!10369 t!4319) p!1489) _$11!1074)))

(declare-fun b!2038150 () Bool)

(declare-fun tp!605101 () Bool)

(assert (=> b!2038150 (= e!1286946 tp!605101)))

(assert (= d!624097 b!2038150))

(assert (=> d!624097 m!2481013))

(assert (=> d!624097 m!2481013))

(assert (=> d!624097 m!2481015))

(declare-fun m!2481393 () Bool)

(assert (=> d!624097 m!2481393))

(assert (=> d!623973 d!624097))

(declare-fun b!2038151 () Bool)

(declare-fun e!1286948 () List!22357)

(assert (=> b!2038151 (= e!1286948 (list!9131 (right!18067 t!4319)))))

(declare-fun b!2038153 () Bool)

(declare-fun res!893659 () Bool)

(declare-fun e!1286947 () Bool)

(assert (=> b!2038153 (=> (not res!893659) (not e!1286947))))

(declare-fun lt!765025 () List!22357)

(assert (=> b!2038153 (= res!893659 (= (size!17425 lt!765025) (+ (size!17425 (list!9131 (left!17737 t!4319))) (size!17425 (list!9131 (right!18067 t!4319))))))))

(declare-fun d!624101 () Bool)

(assert (=> d!624101 e!1286947))

(declare-fun res!893660 () Bool)

(assert (=> d!624101 (=> (not res!893660) (not e!1286947))))

(assert (=> d!624101 (= res!893660 (= (content!3307 lt!765025) ((_ map or) (content!3307 (list!9131 (left!17737 t!4319))) (content!3307 (list!9131 (right!18067 t!4319))))))))

(assert (=> d!624101 (= lt!765025 e!1286948)))

(declare-fun c!330091 () Bool)

(assert (=> d!624101 (= c!330091 ((_ is Nil!22275) (list!9131 (left!17737 t!4319))))))

(assert (=> d!624101 (= (++!6047 (list!9131 (left!17737 t!4319)) (list!9131 (right!18067 t!4319))) lt!765025)))

(declare-fun b!2038154 () Bool)

(assert (=> b!2038154 (= e!1286947 (or (not (= (list!9131 (right!18067 t!4319)) Nil!22275)) (= lt!765025 (list!9131 (left!17737 t!4319)))))))

(declare-fun b!2038152 () Bool)

(assert (=> b!2038152 (= e!1286948 (Cons!22275 (h!27676 (list!9131 (left!17737 t!4319))) (++!6047 (t!191324 (list!9131 (left!17737 t!4319))) (list!9131 (right!18067 t!4319)))))))

(assert (= (and d!624101 c!330091) b!2038151))

(assert (= (and d!624101 (not c!330091)) b!2038152))

(assert (= (and d!624101 res!893660) b!2038153))

(assert (= (and b!2038153 res!893659) b!2038154))

(declare-fun m!2481395 () Bool)

(assert (=> b!2038153 m!2481395))

(assert (=> b!2038153 m!2481131))

(declare-fun m!2481397 () Bool)

(assert (=> b!2038153 m!2481397))

(assert (=> b!2038153 m!2481133))

(declare-fun m!2481399 () Bool)

(assert (=> b!2038153 m!2481399))

(declare-fun m!2481401 () Bool)

(assert (=> d!624101 m!2481401))

(assert (=> d!624101 m!2481131))

(declare-fun m!2481403 () Bool)

(assert (=> d!624101 m!2481403))

(assert (=> d!624101 m!2481133))

(declare-fun m!2481405 () Bool)

(assert (=> d!624101 m!2481405))

(assert (=> b!2038152 m!2481133))

(declare-fun m!2481407 () Bool)

(assert (=> b!2038152 m!2481407))

(assert (=> b!2037979 d!624101))

(declare-fun b!2038158 () Bool)

(declare-fun e!1286950 () List!22357)

(declare-fun e!1286951 () List!22357)

(assert (=> b!2038158 (= e!1286950 e!1286951)))

(declare-fun c!330094 () Bool)

(assert (=> b!2038158 (= c!330094 ((_ is Leaf!10942) (left!17737 t!4319)))))

(declare-fun b!2038157 () Bool)

(assert (=> b!2038157 (= e!1286950 Nil!22275)))

(declare-fun b!2038160 () Bool)

(assert (=> b!2038160 (= e!1286951 (++!6047 (list!9131 (left!17737 (left!17737 t!4319))) (list!9131 (right!18067 (left!17737 t!4319)))))))

(declare-fun b!2038159 () Bool)

(assert (=> b!2038159 (= e!1286951 (list!9133 (xs!10369 (left!17737 t!4319))))))

(declare-fun d!624103 () Bool)

(declare-fun c!330093 () Bool)

(assert (=> d!624103 (= c!330093 ((_ is Empty!7467) (left!17737 t!4319)))))

(assert (=> d!624103 (= (list!9131 (left!17737 t!4319)) e!1286950)))

(assert (= (and d!624103 c!330093) b!2038157))

(assert (= (and d!624103 (not c!330093)) b!2038158))

(assert (= (and b!2038158 c!330094) b!2038159))

(assert (= (and b!2038158 (not c!330094)) b!2038160))

(declare-fun m!2481411 () Bool)

(assert (=> b!2038160 m!2481411))

(declare-fun m!2481413 () Bool)

(assert (=> b!2038160 m!2481413))

(assert (=> b!2038160 m!2481411))

(assert (=> b!2038160 m!2481413))

(declare-fun m!2481415 () Bool)

(assert (=> b!2038160 m!2481415))

(declare-fun m!2481419 () Bool)

(assert (=> b!2038159 m!2481419))

(assert (=> b!2037979 d!624103))

(declare-fun b!2038164 () Bool)

(declare-fun e!1286953 () List!22357)

(declare-fun e!1286954 () List!22357)

(assert (=> b!2038164 (= e!1286953 e!1286954)))

(declare-fun c!330097 () Bool)

(assert (=> b!2038164 (= c!330097 ((_ is Leaf!10942) (right!18067 t!4319)))))

(declare-fun b!2038163 () Bool)

(assert (=> b!2038163 (= e!1286953 Nil!22275)))

(declare-fun b!2038166 () Bool)

(assert (=> b!2038166 (= e!1286954 (++!6047 (list!9131 (left!17737 (right!18067 t!4319))) (list!9131 (right!18067 (right!18067 t!4319)))))))

(declare-fun b!2038165 () Bool)

(assert (=> b!2038165 (= e!1286954 (list!9133 (xs!10369 (right!18067 t!4319))))))

(declare-fun d!624109 () Bool)

(declare-fun c!330096 () Bool)

(assert (=> d!624109 (= c!330096 ((_ is Empty!7467) (right!18067 t!4319)))))

(assert (=> d!624109 (= (list!9131 (right!18067 t!4319)) e!1286953)))

(assert (= (and d!624109 c!330096) b!2038163))

(assert (= (and d!624109 (not c!330096)) b!2038164))

(assert (= (and b!2038164 c!330097) b!2038165))

(assert (= (and b!2038164 (not c!330097)) b!2038166))

(declare-fun m!2481421 () Bool)

(assert (=> b!2038166 m!2481421))

(declare-fun m!2481423 () Bool)

(assert (=> b!2038166 m!2481423))

(assert (=> b!2038166 m!2481421))

(assert (=> b!2038166 m!2481423))

(declare-fun m!2481425 () Bool)

(assert (=> b!2038166 m!2481425))

(declare-fun m!2481427 () Bool)

(assert (=> b!2038165 m!2481427))

(assert (=> b!2037979 d!624109))

(declare-fun d!624113 () Bool)

(declare-fun lt!765030 () Int)

(assert (=> d!624113 (>= lt!765030 0)))

(declare-fun e!1286957 () Int)

(assert (=> d!624113 (= lt!765030 e!1286957)))

(declare-fun c!330100 () Bool)

(assert (=> d!624113 (= c!330100 ((_ is Nil!22275) (list!9133 lt!764985)))))

(assert (=> d!624113 (= (size!17425 (list!9133 lt!764985)) lt!765030)))

(declare-fun b!2038171 () Bool)

(assert (=> b!2038171 (= e!1286957 0)))

(declare-fun b!2038172 () Bool)

(assert (=> b!2038172 (= e!1286957 (+ 1 (size!17425 (t!191324 (list!9133 lt!764985)))))))

(assert (= (and d!624113 c!330100) b!2038171))

(assert (= (and d!624113 (not c!330100)) b!2038172))

(declare-fun m!2481429 () Bool)

(assert (=> b!2038172 m!2481429))

(assert (=> d!623969 d!624113))

(declare-fun d!624119 () Bool)

(assert (=> d!624119 (= (list!9133 lt!764985) (innerList!7527 lt!764985))))

(assert (=> d!623969 d!624119))

(declare-fun d!624121 () Bool)

(declare-fun _$1!10174 () Int)

(assert (=> d!624121 (= _$1!10174 (size!17425 (list!9133 lt!764985)))))

(assert (=> d!624121 true))

(assert (=> d!624121 (= (choose!12439 lt!764985) _$1!10174)))

(declare-fun bs!421436 () Bool)

(assert (= bs!421436 d!624121))

(assert (=> bs!421436 m!2481007))

(assert (=> bs!421436 m!2481007))

(assert (=> bs!421436 m!2481009))

(assert (=> d!623969 d!624121))

(declare-fun d!624123 () Bool)

(declare-fun lt!765031 () Int)

(assert (=> d!624123 (>= lt!765031 0)))

(declare-fun e!1286958 () Int)

(assert (=> d!624123 (= lt!765031 e!1286958)))

(declare-fun c!330101 () Bool)

(assert (=> d!624123 (= c!330101 ((_ is Nil!22275) lt!765004))))

(assert (=> d!624123 (= (size!17425 lt!765004) lt!765031)))

(declare-fun b!2038173 () Bool)

(assert (=> b!2038173 (= e!1286958 0)))

(declare-fun b!2038174 () Bool)

(assert (=> b!2038174 (= e!1286958 (+ 1 (size!17425 (t!191324 lt!765004))))))

(assert (= (and d!624123 c!330101) b!2038173))

(assert (= (and d!624123 (not c!330101)) b!2038174))

(declare-fun m!2481431 () Bool)

(assert (=> b!2038174 m!2481431))

(assert (=> d!623995 d!624123))

(declare-fun d!624125 () Bool)

(declare-fun lt!765032 () Int)

(assert (=> d!624125 (>= lt!765032 0)))

(declare-fun e!1286959 () Int)

(assert (=> d!624125 (= lt!765032 e!1286959)))

(declare-fun c!330102 () Bool)

(assert (=> d!624125 (= c!330102 ((_ is Nil!22275) (list!9131 t!4319)))))

(assert (=> d!624125 (= (size!17425 (list!9131 t!4319)) lt!765032)))

(declare-fun b!2038175 () Bool)

(assert (=> b!2038175 (= e!1286959 0)))

(declare-fun b!2038176 () Bool)

(assert (=> b!2038176 (= e!1286959 (+ 1 (size!17425 (t!191324 (list!9131 t!4319)))))))

(assert (= (and d!624125 c!330102) b!2038175))

(assert (= (and d!624125 (not c!330102)) b!2038176))

(assert (=> b!2038176 m!2481337))

(assert (=> d!623995 d!624125))

(declare-fun d!624127 () Bool)

(declare-fun res!893661 () Bool)

(declare-fun e!1286962 () Bool)

(assert (=> d!624127 (=> (not res!893661) (not e!1286962))))

(assert (=> d!624127 (= res!893661 (<= (size!17425 (list!9133 (xs!10369 (left!17737 t!4319)))) 512))))

(assert (=> d!624127 (= (inv!29576 (left!17737 t!4319)) e!1286962)))

(declare-fun b!2038181 () Bool)

(declare-fun res!893662 () Bool)

(assert (=> b!2038181 (=> (not res!893662) (not e!1286962))))

(assert (=> b!2038181 (= res!893662 (= (csize!15165 (left!17737 t!4319)) (size!17425 (list!9133 (xs!10369 (left!17737 t!4319))))))))

(declare-fun b!2038182 () Bool)

(assert (=> b!2038182 (= e!1286962 (and (> (csize!15165 (left!17737 t!4319)) 0) (<= (csize!15165 (left!17737 t!4319)) 512)))))

(assert (= (and d!624127 res!893661) b!2038181))

(assert (= (and b!2038181 res!893662) b!2038182))

(assert (=> d!624127 m!2481419))

(assert (=> d!624127 m!2481419))

(declare-fun m!2481433 () Bool)

(assert (=> d!624127 m!2481433))

(assert (=> b!2038181 m!2481419))

(assert (=> b!2038181 m!2481419))

(assert (=> b!2038181 m!2481433))

(assert (=> b!2037888 d!624127))

(declare-fun d!624129 () Bool)

(declare-fun c!330105 () Bool)

(assert (=> d!624129 (= c!330105 ((_ is Node!7467) (left!17737 (left!17737 t!4319))))))

(declare-fun e!1286965 () Bool)

(assert (=> d!624129 (= (inv!29572 (left!17737 (left!17737 t!4319))) e!1286965)))

(declare-fun b!2038187 () Bool)

(assert (=> b!2038187 (= e!1286965 (inv!29575 (left!17737 (left!17737 t!4319))))))

(declare-fun b!2038188 () Bool)

(declare-fun e!1286966 () Bool)

(assert (=> b!2038188 (= e!1286965 e!1286966)))

(declare-fun res!893667 () Bool)

(assert (=> b!2038188 (= res!893667 (not ((_ is Leaf!10942) (left!17737 (left!17737 t!4319)))))))

(assert (=> b!2038188 (=> res!893667 e!1286966)))

(declare-fun b!2038189 () Bool)

(assert (=> b!2038189 (= e!1286966 (inv!29576 (left!17737 (left!17737 t!4319))))))

(assert (= (and d!624129 c!330105) b!2038187))

(assert (= (and d!624129 (not c!330105)) b!2038188))

(assert (= (and b!2038188 (not res!893667)) b!2038189))

(declare-fun m!2481435 () Bool)

(assert (=> b!2038187 m!2481435))

(declare-fun m!2481437 () Bool)

(assert (=> b!2038189 m!2481437))

(assert (=> b!2037993 d!624129))

(declare-fun d!624131 () Bool)

(declare-fun c!330106 () Bool)

(assert (=> d!624131 (= c!330106 ((_ is Node!7467) (right!18067 (left!17737 t!4319))))))

(declare-fun e!1286967 () Bool)

(assert (=> d!624131 (= (inv!29572 (right!18067 (left!17737 t!4319))) e!1286967)))

(declare-fun b!2038190 () Bool)

(assert (=> b!2038190 (= e!1286967 (inv!29575 (right!18067 (left!17737 t!4319))))))

(declare-fun b!2038191 () Bool)

(declare-fun e!1286968 () Bool)

(assert (=> b!2038191 (= e!1286967 e!1286968)))

(declare-fun res!893668 () Bool)

(assert (=> b!2038191 (= res!893668 (not ((_ is Leaf!10942) (right!18067 (left!17737 t!4319)))))))

(assert (=> b!2038191 (=> res!893668 e!1286968)))

(declare-fun b!2038192 () Bool)

(assert (=> b!2038192 (= e!1286968 (inv!29576 (right!18067 (left!17737 t!4319))))))

(assert (= (and d!624131 c!330106) b!2038190))

(assert (= (and d!624131 (not c!330106)) b!2038191))

(assert (= (and b!2038191 (not res!893668)) b!2038192))

(declare-fun m!2481439 () Bool)

(assert (=> b!2038190 m!2481439))

(declare-fun m!2481441 () Bool)

(assert (=> b!2038192 m!2481441))

(assert (=> b!2037993 d!624131))

(declare-fun d!624133 () Bool)

(assert (=> d!624133 (= (inv!29571 (xs!10369 (left!17737 t!4319))) (<= (size!17425 (innerList!7527 (xs!10369 (left!17737 t!4319)))) 2147483647))))

(declare-fun bs!421437 () Bool)

(assert (= bs!421437 d!624133))

(declare-fun m!2481443 () Bool)

(assert (=> bs!421437 m!2481443))

(assert (=> b!2037994 d!624133))

(declare-fun d!624135 () Bool)

(declare-fun lt!765035 () Int)

(assert (=> d!624135 (>= lt!765035 0)))

(declare-fun e!1286969 () Int)

(assert (=> d!624135 (= lt!765035 e!1286969)))

(declare-fun c!330107 () Bool)

(assert (=> d!624135 (= c!330107 ((_ is Nil!22275) (innerList!7527 (xs!10369 t!4319))))))

(assert (=> d!624135 (= (size!17425 (innerList!7527 (xs!10369 t!4319))) lt!765035)))

(declare-fun b!2038193 () Bool)

(assert (=> b!2038193 (= e!1286969 0)))

(declare-fun b!2038194 () Bool)

(assert (=> b!2038194 (= e!1286969 (+ 1 (size!17425 (t!191324 (innerList!7527 (xs!10369 t!4319))))))))

(assert (= (and d!624135 c!330107) b!2038193))

(assert (= (and d!624135 (not c!330107)) b!2038194))

(declare-fun m!2481445 () Bool)

(assert (=> b!2038194 m!2481445))

(assert (=> d!623963 d!624135))

(assert (=> b!2037814 d!623975))

(assert (=> b!2037814 d!623985))

(declare-fun d!624137 () Bool)

(declare-fun res!893669 () Bool)

(declare-fun e!1286970 () Bool)

(assert (=> d!624137 (=> (not res!893669) (not e!1286970))))

(assert (=> d!624137 (= res!893669 (= (csize!15164 (left!17737 t!4319)) (+ (size!17426 (left!17737 (left!17737 t!4319))) (size!17426 (right!18067 (left!17737 t!4319))))))))

(assert (=> d!624137 (= (inv!29575 (left!17737 t!4319)) e!1286970)))

(declare-fun b!2038195 () Bool)

(declare-fun res!893670 () Bool)

(assert (=> b!2038195 (=> (not res!893670) (not e!1286970))))

(assert (=> b!2038195 (= res!893670 (and (not (= (left!17737 (left!17737 t!4319)) Empty!7467)) (not (= (right!18067 (left!17737 t!4319)) Empty!7467))))))

(declare-fun b!2038196 () Bool)

(declare-fun res!893671 () Bool)

(assert (=> b!2038196 (=> (not res!893671) (not e!1286970))))

(assert (=> b!2038196 (= res!893671 (= (cheight!7678 (left!17737 t!4319)) (+ (max!0 (height!1167 (left!17737 (left!17737 t!4319))) (height!1167 (right!18067 (left!17737 t!4319)))) 1)))))

(declare-fun b!2038197 () Bool)

(assert (=> b!2038197 (= e!1286970 (<= 0 (cheight!7678 (left!17737 t!4319))))))

(assert (= (and d!624137 res!893669) b!2038195))

(assert (= (and b!2038195 res!893670) b!2038196))

(assert (= (and b!2038196 res!893671) b!2038197))

(declare-fun m!2481447 () Bool)

(assert (=> d!624137 m!2481447))

(declare-fun m!2481449 () Bool)

(assert (=> d!624137 m!2481449))

(assert (=> b!2038196 m!2481311))

(assert (=> b!2038196 m!2481313))

(assert (=> b!2038196 m!2481311))

(assert (=> b!2038196 m!2481313))

(declare-fun m!2481451 () Bool)

(assert (=> b!2038196 m!2481451))

(assert (=> b!2037886 d!624137))

(declare-fun d!624139 () Bool)

(declare-fun c!330114 () Bool)

(assert (=> d!624139 (= c!330114 ((_ is Nil!22275) lt!765004))))

(declare-fun e!1286978 () (InoxSet T!35990))

(assert (=> d!624139 (= (content!3307 lt!765004) e!1286978)))

(declare-fun b!2038210 () Bool)

(assert (=> b!2038210 (= e!1286978 ((as const (Array T!35990 Bool)) false))))

(declare-fun b!2038212 () Bool)

(assert (=> b!2038212 (= e!1286978 ((_ map or) (store ((as const (Array T!35990 Bool)) false) (h!27676 lt!765004) true) (content!3307 (t!191324 lt!765004))))))

(assert (= (and d!624139 c!330114) b!2038210))

(assert (= (and d!624139 (not c!330114)) b!2038212))

(declare-fun m!2481475 () Bool)

(assert (=> b!2038212 m!2481475))

(declare-fun m!2481477 () Bool)

(assert (=> b!2038212 m!2481477))

(assert (=> b!2037971 d!624139))

(declare-fun d!624145 () Bool)

(declare-fun c!330116 () Bool)

(assert (=> d!624145 (= c!330116 ((_ is Nil!22275) (list!9131 t!4319)))))

(declare-fun e!1286980 () (InoxSet T!35990))

(assert (=> d!624145 (= (content!3307 (list!9131 t!4319)) e!1286980)))

(declare-fun b!2038216 () Bool)

(assert (=> b!2038216 (= e!1286980 ((as const (Array T!35990 Bool)) false))))

(declare-fun b!2038217 () Bool)

(assert (=> b!2038217 (= e!1286980 ((_ map or) (store ((as const (Array T!35990 Bool)) false) (h!27676 (list!9131 t!4319)) true) (content!3307 (t!191324 (list!9131 t!4319)))))))

(assert (= (and d!624145 c!330116) b!2038216))

(assert (= (and d!624145 (not c!330116)) b!2038217))

(declare-fun m!2481487 () Bool)

(assert (=> b!2038217 m!2481487))

(assert (=> b!2038217 m!2481341))

(assert (=> b!2037971 d!624145))

(declare-fun d!624149 () Bool)

(assert (=> d!624149 (= (inv!29571 (xs!10369 (right!18067 t!4319))) (<= (size!17425 (innerList!7527 (xs!10369 (right!18067 t!4319)))) 2147483647))))

(declare-fun bs!421438 () Bool)

(assert (= bs!421438 d!624149))

(declare-fun m!2481489 () Bool)

(assert (=> bs!421438 m!2481489))

(assert (=> b!2037997 d!624149))

(declare-fun d!624151 () Bool)

(declare-fun res!893676 () Bool)

(declare-fun e!1286984 () Bool)

(assert (=> d!624151 (=> (not res!893676) (not e!1286984))))

(assert (=> d!624151 (= res!893676 (<= (size!17425 (list!9133 (xs!10369 (right!18067 t!4319)))) 512))))

(assert (=> d!624151 (= (inv!29576 (right!18067 t!4319)) e!1286984)))

(declare-fun b!2038224 () Bool)

(declare-fun res!893677 () Bool)

(assert (=> b!2038224 (=> (not res!893677) (not e!1286984))))

(assert (=> b!2038224 (= res!893677 (= (csize!15165 (right!18067 t!4319)) (size!17425 (list!9133 (xs!10369 (right!18067 t!4319))))))))

(declare-fun b!2038225 () Bool)

(assert (=> b!2038225 (= e!1286984 (and (> (csize!15165 (right!18067 t!4319)) 0) (<= (csize!15165 (right!18067 t!4319)) 512)))))

(assert (= (and d!624151 res!893676) b!2038224))

(assert (= (and b!2038224 res!893677) b!2038225))

(assert (=> d!624151 m!2481427))

(assert (=> d!624151 m!2481427))

(declare-fun m!2481491 () Bool)

(assert (=> d!624151 m!2481491))

(assert (=> b!2038224 m!2481427))

(assert (=> b!2038224 m!2481427))

(assert (=> b!2038224 m!2481491))

(assert (=> b!2037891 d!624151))

(declare-fun b!2038226 () Bool)

(declare-fun e!1286985 () Bool)

(assert (=> b!2038226 (= e!1286985 (not (isEmpty!13928 (right!18067 (right!18067 lt!764986)))))))

(declare-fun b!2038227 () Bool)

(declare-fun res!893683 () Bool)

(assert (=> b!2038227 (=> (not res!893683) (not e!1286985))))

(assert (=> b!2038227 (= res!893683 (isBalanced!2345 (left!17737 (right!18067 lt!764986))))))

(declare-fun b!2038228 () Bool)

(declare-fun e!1286986 () Bool)

(assert (=> b!2038228 (= e!1286986 e!1286985)))

(declare-fun res!893681 () Bool)

(assert (=> b!2038228 (=> (not res!893681) (not e!1286985))))

(assert (=> b!2038228 (= res!893681 (<= (- 1) (- (height!1167 (left!17737 (right!18067 lt!764986))) (height!1167 (right!18067 (right!18067 lt!764986))))))))

(declare-fun b!2038229 () Bool)

(declare-fun res!893678 () Bool)

(assert (=> b!2038229 (=> (not res!893678) (not e!1286985))))

(assert (=> b!2038229 (= res!893678 (not (isEmpty!13928 (left!17737 (right!18067 lt!764986)))))))

(declare-fun b!2038230 () Bool)

(declare-fun res!893679 () Bool)

(assert (=> b!2038230 (=> (not res!893679) (not e!1286985))))

(assert (=> b!2038230 (= res!893679 (<= (- (height!1167 (left!17737 (right!18067 lt!764986))) (height!1167 (right!18067 (right!18067 lt!764986)))) 1))))

(declare-fun b!2038231 () Bool)

(declare-fun res!893680 () Bool)

(assert (=> b!2038231 (=> (not res!893680) (not e!1286985))))

(assert (=> b!2038231 (= res!893680 (isBalanced!2345 (right!18067 (right!18067 lt!764986))))))

(declare-fun d!624153 () Bool)

(declare-fun res!893682 () Bool)

(assert (=> d!624153 (=> res!893682 e!1286986)))

(assert (=> d!624153 (= res!893682 (not ((_ is Node!7467) (right!18067 lt!764986))))))

(assert (=> d!624153 (= (isBalanced!2345 (right!18067 lt!764986)) e!1286986)))

(assert (= (and d!624153 (not res!893682)) b!2038228))

(assert (= (and b!2038228 res!893681) b!2038230))

(assert (= (and b!2038230 res!893679) b!2038227))

(assert (= (and b!2038227 res!893683) b!2038231))

(assert (= (and b!2038231 res!893680) b!2038229))

(assert (= (and b!2038229 res!893678) b!2038226))

(declare-fun m!2481507 () Bool)

(assert (=> b!2038226 m!2481507))

(declare-fun m!2481509 () Bool)

(assert (=> b!2038230 m!2481509))

(declare-fun m!2481511 () Bool)

(assert (=> b!2038230 m!2481511))

(declare-fun m!2481513 () Bool)

(assert (=> b!2038229 m!2481513))

(declare-fun m!2481515 () Bool)

(assert (=> b!2038227 m!2481515))

(declare-fun m!2481517 () Bool)

(assert (=> b!2038231 m!2481517))

(assert (=> b!2038228 m!2481509))

(assert (=> b!2038228 m!2481511))

(assert (=> b!2037844 d!624153))

(declare-fun b!2038232 () Bool)

(declare-fun e!1286987 () Bool)

(declare-fun tp!605102 () Bool)

(assert (=> b!2038232 (= e!1286987 (and tp_is_empty!9273 tp!605102))))

(assert (=> b!2037984 (= tp!605086 e!1286987)))

(assert (= (and b!2037984 ((_ is Cons!22275) (t!191324 (innerList!7527 (xs!10369 t!4319))))) b!2038232))

(declare-fun tp!605103 () Bool)

(declare-fun tp!605104 () Bool)

(declare-fun e!1286989 () Bool)

(declare-fun b!2038233 () Bool)

(assert (=> b!2038233 (= e!1286989 (and (inv!29572 (left!17737 (left!17737 (right!18067 t!4319)))) tp!605104 (inv!29572 (right!18067 (left!17737 (right!18067 t!4319)))) tp!605103))))

(declare-fun b!2038235 () Bool)

(declare-fun e!1286988 () Bool)

(declare-fun tp!605105 () Bool)

(assert (=> b!2038235 (= e!1286988 tp!605105)))

(declare-fun b!2038234 () Bool)

(assert (=> b!2038234 (= e!1286989 (and (inv!29571 (xs!10369 (left!17737 (right!18067 t!4319)))) e!1286988))))

(assert (=> b!2037996 (= tp!605097 (and (inv!29572 (left!17737 (right!18067 t!4319))) e!1286989))))

(assert (= (and b!2037996 ((_ is Node!7467) (left!17737 (right!18067 t!4319)))) b!2038233))

(assert (= b!2038234 b!2038235))

(assert (= (and b!2037996 ((_ is Leaf!10942) (left!17737 (right!18067 t!4319)))) b!2038234))

(declare-fun m!2481519 () Bool)

(assert (=> b!2038233 m!2481519))

(declare-fun m!2481521 () Bool)

(assert (=> b!2038233 m!2481521))

(declare-fun m!2481523 () Bool)

(assert (=> b!2038234 m!2481523))

(assert (=> b!2037996 m!2481143))

(declare-fun b!2038236 () Bool)

(declare-fun e!1286991 () Bool)

(declare-fun tp!605106 () Bool)

(declare-fun tp!605107 () Bool)

(assert (=> b!2038236 (= e!1286991 (and (inv!29572 (left!17737 (right!18067 (right!18067 t!4319)))) tp!605107 (inv!29572 (right!18067 (right!18067 (right!18067 t!4319)))) tp!605106))))

(declare-fun b!2038238 () Bool)

(declare-fun e!1286990 () Bool)

(declare-fun tp!605108 () Bool)

(assert (=> b!2038238 (= e!1286990 tp!605108)))

(declare-fun b!2038237 () Bool)

(assert (=> b!2038237 (= e!1286991 (and (inv!29571 (xs!10369 (right!18067 (right!18067 t!4319)))) e!1286990))))

(assert (=> b!2037996 (= tp!605096 (and (inv!29572 (right!18067 (right!18067 t!4319))) e!1286991))))

(assert (= (and b!2037996 ((_ is Node!7467) (right!18067 (right!18067 t!4319)))) b!2038236))

(assert (= b!2038237 b!2038238))

(assert (= (and b!2037996 ((_ is Leaf!10942) (right!18067 (right!18067 t!4319)))) b!2038237))

(declare-fun m!2481525 () Bool)

(assert (=> b!2038236 m!2481525))

(declare-fun m!2481527 () Bool)

(assert (=> b!2038236 m!2481527))

(declare-fun m!2481529 () Bool)

(assert (=> b!2038237 m!2481529))

(assert (=> b!2037996 m!2481145))

(declare-fun b!2038241 () Bool)

(declare-fun e!1286994 () Bool)

(declare-fun tp!605111 () Bool)

(assert (=> b!2038241 (= e!1286994 (and tp_is_empty!9273 tp!605111))))

(assert (=> b!2037995 (= tp!605095 e!1286994)))

(assert (= (and b!2037995 ((_ is Cons!22275) (innerList!7527 (xs!10369 (left!17737 t!4319))))) b!2038241))

(declare-fun b!2038242 () Bool)

(declare-fun e!1286995 () Bool)

(declare-fun tp!605112 () Bool)

(assert (=> b!2038242 (= e!1286995 (and tp_is_empty!9273 tp!605112))))

(assert (=> b!2037998 (= tp!605098 e!1286995)))

(assert (= (and b!2037998 ((_ is Cons!22275) (innerList!7527 (xs!10369 (right!18067 t!4319))))) b!2038242))

(declare-fun tp!605114 () Bool)

(declare-fun e!1286997 () Bool)

(declare-fun b!2038243 () Bool)

(declare-fun tp!605113 () Bool)

(assert (=> b!2038243 (= e!1286997 (and (inv!29572 (left!17737 (left!17737 (left!17737 t!4319)))) tp!605114 (inv!29572 (right!18067 (left!17737 (left!17737 t!4319)))) tp!605113))))

(declare-fun b!2038245 () Bool)

(declare-fun e!1286996 () Bool)

(declare-fun tp!605115 () Bool)

(assert (=> b!2038245 (= e!1286996 tp!605115)))

(declare-fun b!2038244 () Bool)

(assert (=> b!2038244 (= e!1286997 (and (inv!29571 (xs!10369 (left!17737 (left!17737 t!4319)))) e!1286996))))

(assert (=> b!2037993 (= tp!605094 (and (inv!29572 (left!17737 (left!17737 t!4319))) e!1286997))))

(assert (= (and b!2037993 ((_ is Node!7467) (left!17737 (left!17737 t!4319)))) b!2038243))

(assert (= b!2038244 b!2038245))

(assert (= (and b!2037993 ((_ is Leaf!10942) (left!17737 (left!17737 t!4319)))) b!2038244))

(declare-fun m!2481531 () Bool)

(assert (=> b!2038243 m!2481531))

(declare-fun m!2481533 () Bool)

(assert (=> b!2038243 m!2481533))

(declare-fun m!2481535 () Bool)

(assert (=> b!2038244 m!2481535))

(assert (=> b!2037993 m!2481137))

(declare-fun b!2038246 () Bool)

(declare-fun e!1286999 () Bool)

(declare-fun tp!605116 () Bool)

(declare-fun tp!605117 () Bool)

(assert (=> b!2038246 (= e!1286999 (and (inv!29572 (left!17737 (right!18067 (left!17737 t!4319)))) tp!605117 (inv!29572 (right!18067 (right!18067 (left!17737 t!4319)))) tp!605116))))

(declare-fun b!2038248 () Bool)

(declare-fun e!1286998 () Bool)

(declare-fun tp!605118 () Bool)

(assert (=> b!2038248 (= e!1286998 tp!605118)))

(declare-fun b!2038247 () Bool)

(assert (=> b!2038247 (= e!1286999 (and (inv!29571 (xs!10369 (right!18067 (left!17737 t!4319)))) e!1286998))))

(assert (=> b!2037993 (= tp!605093 (and (inv!29572 (right!18067 (left!17737 t!4319))) e!1286999))))

(assert (= (and b!2037993 ((_ is Node!7467) (right!18067 (left!17737 t!4319)))) b!2038246))

(assert (= b!2038247 b!2038248))

(assert (= (and b!2037993 ((_ is Leaf!10942) (right!18067 (left!17737 t!4319)))) b!2038247))

(declare-fun m!2481537 () Bool)

(assert (=> b!2038246 m!2481537))

(declare-fun m!2481539 () Bool)

(assert (=> b!2038246 m!2481539))

(declare-fun m!2481541 () Bool)

(assert (=> b!2038247 m!2481541))

(assert (=> b!2037993 m!2481139))

(declare-fun b_lambda!68855 () Bool)

(assert (= b_lambda!68849 (or (and start!200804 b_free!56823) b_lambda!68855)))

(declare-fun b_lambda!68857 () Bool)

(assert (= b_lambda!68845 (or (and start!200804 b_free!56823) b_lambda!68857)))

(declare-fun b_lambda!68859 () Bool)

(assert (= b_lambda!68851 (or (and start!200804 b_free!56823) b_lambda!68859)))

(check-sat (not b!2038246) (not b!2038010) (not d!624083) (not b!2038248) (not b!2038004) (not b!2038150) (not d!624055) (not b!2038160) (not b_lambda!68859) (not b!2038232) (not b!2038245) (not d!624021) (not d!624151) (not b!2038152) (not b!2038181) (not b!2038243) b_and!162667 (not b!2038224) (not d!624019) (not b!2038031) (not b!2038238) (not b!2038190) (not b!2038236) (not b!2038244) (not b!2038104) (not b!2038187) (not b_lambda!68857) (not b!2038196) (not b!2038241) (not d!624127) (not b!2038226) (not b!2038189) (not b!2038092) (not b!2038194) (not b!2038079) (not b!2038014) (not b!2038230) (not b!2038090) (not b!2038103) (not b!2038118) (not d!624027) (not b_lambda!68855) (not b!2038217) (not b!2038130) (not b!2037999) (not b!2038102) (not b!2038192) (not b!2038013) (not b!2038003) (not bm!124956) (not b!2038002) (not b!2038011) (not b!2038237) (not b!2038128) (not b!2038233) (not b!2038001) (not b!2038071) (not b!2038176) (not b!2038088) (not b!2038095) (not d!624087) (not d!624037) (not b!2038234) (not d!624149) (not b!2038116) tp_is_empty!9273 (not d!624121) (not d!624071) (not b!2038050) (not b!2038228) (not d!624075) (not b_lambda!68843) (not d!624101) (not b!2038094) (not b_next!57527) (not b!2038229) (not b!2038227) (not b!2038091) (not b!2037993) (not b!2038086) (not b!2038172) (not b!2038070) (not b!2038166) (not b!2038000) (not b!2038078) (not d!624137) (not bm!124955) (not b!2038235) (not b!2038212) (not b!2038159) (not b!2038153) (not b!2038247) (not d!624091) (not b!2038174) (not d!624097) (not b!2038231) (not b!2037996) (not b!2038085) (not d!624133) (not b!2038107) (not b!2038093) (not b!2038016) (not b!2038106) (not b!2038242) (not b!2038105) (not b!2038165))
(check-sat b_and!162667 (not b_next!57527))
