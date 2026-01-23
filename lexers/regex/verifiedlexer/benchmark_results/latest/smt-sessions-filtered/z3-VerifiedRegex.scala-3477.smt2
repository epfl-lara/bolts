; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201056 () Bool)

(assert start!201056)

(declare-fun b_free!56835 () Bool)

(declare-fun b_next!57539 () Bool)

(assert (=> start!201056 (= b_free!56835 (not b_next!57539))))

(declare-fun tp!605325 () Bool)

(declare-fun b_and!162759 () Bool)

(assert (=> start!201056 (= tp!605325 b_and!162759)))

(declare-fun b!2039896 () Bool)

(declare-fun e!1287880 () Bool)

(declare-fun e!1287878 () Bool)

(assert (=> b!2039896 (= e!1287880 e!1287878)))

(declare-fun res!894238 () Bool)

(assert (=> b!2039896 (=> res!894238 e!1287878)))

(declare-datatypes ((T!36032 0))(
  ( (T!36033 (val!6480 Int)) )
))
(declare-datatypes ((List!22363 0))(
  ( (Nil!22281) (Cons!22281 (h!27682 T!36032) (t!191448 List!22363)) )
))
(declare-datatypes ((IArray!14951 0))(
  ( (IArray!14952 (innerList!7533 List!22363)) )
))
(declare-datatypes ((Conc!7473 0))(
  ( (Node!7473 (left!17746 Conc!7473) (right!18076 Conc!7473) (csize!15176 Int) (cheight!7684 Int)) (Leaf!10951 (xs!10377 IArray!14951) (csize!15177 Int)) (Empty!7473) )
))
(declare-fun lt!765362 () Conc!7473)

(declare-fun isBalanced!2351 (Conc!7473) Bool)

(assert (=> b!2039896 (= res!894238 (not (isBalanced!2351 lt!765362)))))

(declare-fun t!4319 () Conc!7473)

(declare-fun p!1489 () Int)

(declare-fun ++!6056 (Conc!7473 Conc!7473) Conc!7473)

(declare-fun filter!483 (Conc!7473 Int) Conc!7473)

(assert (=> b!2039896 (= lt!765362 (++!6056 (filter!483 (left!17746 t!4319) p!1489) (filter!483 (right!18076 t!4319) p!1489)))))

(declare-fun e!1287879 () Bool)

(declare-fun tp!605323 () Bool)

(declare-fun b!2039897 () Bool)

(declare-fun tp!605324 () Bool)

(declare-fun inv!29604 (Conc!7473) Bool)

(assert (=> b!2039897 (= e!1287879 (and (inv!29604 (left!17746 t!4319)) tp!605324 (inv!29604 (right!18076 t!4319)) tp!605323))))

(declare-fun b!2039899 () Bool)

(declare-fun e!1287877 () Bool)

(declare-fun tp!605326 () Bool)

(assert (=> b!2039899 (= e!1287877 tp!605326)))

(declare-fun b!2039900 () Bool)

(declare-fun inv!29605 (IArray!14951) Bool)

(assert (=> b!2039900 (= e!1287879 (and (inv!29605 (xs!10377 t!4319)) e!1287877))))

(declare-fun b!2039901 () Bool)

(declare-fun list!9143 (Conc!7473) List!22363)

(declare-fun filter!484 (List!22363 Int) List!22363)

(assert (=> b!2039901 (= e!1287878 (not (= (list!9143 lt!765362) (filter!484 (list!9143 t!4319) p!1489))))))

(declare-fun b!2039902 () Bool)

(declare-fun e!1287881 () Bool)

(assert (=> b!2039902 (= e!1287881 e!1287880)))

(declare-fun res!894240 () Bool)

(assert (=> b!2039902 (=> (not res!894240) (not e!1287880))))

(declare-fun lt!765364 () List!22363)

(declare-fun lt!765361 () List!22363)

(declare-fun ++!6057 (List!22363 List!22363) List!22363)

(assert (=> b!2039902 (= res!894240 (= (filter!484 (++!6057 lt!765361 lt!765364) p!1489) (++!6057 (filter!484 lt!765361 p!1489) (filter!484 lt!765364 p!1489))))))

(declare-datatypes ((Unit!36980 0))(
  ( (Unit!36981) )
))
(declare-fun lt!765363 () Unit!36980)

(declare-fun lemmaFilterConcat!32 (List!22363 List!22363 Int) Unit!36980)

(assert (=> b!2039902 (= lt!765363 (lemmaFilterConcat!32 lt!765361 lt!765364 p!1489))))

(assert (=> b!2039902 (= lt!765364 (list!9143 (right!18076 t!4319)))))

(assert (=> b!2039902 (= lt!765361 (list!9143 (left!17746 t!4319)))))

(declare-fun res!894239 () Bool)

(assert (=> start!201056 (=> (not res!894239) (not e!1287881))))

(assert (=> start!201056 (= res!894239 (isBalanced!2351 t!4319))))

(assert (=> start!201056 e!1287881))

(assert (=> start!201056 (and (inv!29604 t!4319) e!1287879)))

(assert (=> start!201056 tp!605325))

(declare-fun b!2039898 () Bool)

(declare-fun res!894241 () Bool)

(assert (=> b!2039898 (=> (not res!894241) (not e!1287881))))

(get-info :version)

(assert (=> b!2039898 (= res!894241 (and (not ((_ is Empty!7473) t!4319)) (not ((_ is Leaf!10951) t!4319))))))

(assert (= (and start!201056 res!894239) b!2039898))

(assert (= (and b!2039898 res!894241) b!2039902))

(assert (= (and b!2039902 res!894240) b!2039896))

(assert (= (and b!2039896 (not res!894238)) b!2039901))

(assert (= (and start!201056 ((_ is Node!7473) t!4319)) b!2039897))

(assert (= b!2039900 b!2039899))

(assert (= (and start!201056 ((_ is Leaf!10951) t!4319)) b!2039900))

(declare-fun m!2483837 () Bool)

(assert (=> b!2039896 m!2483837))

(declare-fun m!2483839 () Bool)

(assert (=> b!2039896 m!2483839))

(declare-fun m!2483841 () Bool)

(assert (=> b!2039896 m!2483841))

(assert (=> b!2039896 m!2483839))

(assert (=> b!2039896 m!2483841))

(declare-fun m!2483843 () Bool)

(assert (=> b!2039896 m!2483843))

(declare-fun m!2483845 () Bool)

(assert (=> b!2039902 m!2483845))

(declare-fun m!2483847 () Bool)

(assert (=> b!2039902 m!2483847))

(declare-fun m!2483849 () Bool)

(assert (=> b!2039902 m!2483849))

(declare-fun m!2483851 () Bool)

(assert (=> b!2039902 m!2483851))

(declare-fun m!2483853 () Bool)

(assert (=> b!2039902 m!2483853))

(declare-fun m!2483855 () Bool)

(assert (=> b!2039902 m!2483855))

(declare-fun m!2483857 () Bool)

(assert (=> b!2039902 m!2483857))

(assert (=> b!2039902 m!2483853))

(declare-fun m!2483859 () Bool)

(assert (=> b!2039902 m!2483859))

(assert (=> b!2039902 m!2483849))

(assert (=> b!2039902 m!2483855))

(declare-fun m!2483861 () Bool)

(assert (=> b!2039900 m!2483861))

(declare-fun m!2483863 () Bool)

(assert (=> b!2039901 m!2483863))

(declare-fun m!2483865 () Bool)

(assert (=> b!2039901 m!2483865))

(assert (=> b!2039901 m!2483865))

(declare-fun m!2483867 () Bool)

(assert (=> b!2039901 m!2483867))

(declare-fun m!2483869 () Bool)

(assert (=> b!2039897 m!2483869))

(declare-fun m!2483871 () Bool)

(assert (=> b!2039897 m!2483871))

(declare-fun m!2483873 () Bool)

(assert (=> start!201056 m!2483873))

(declare-fun m!2483875 () Bool)

(assert (=> start!201056 m!2483875))

(check-sat (not b!2039901) (not b_next!57539) b_and!162759 (not b!2039899) (not start!201056) (not b!2039897) (not b!2039896) (not b!2039902) (not b!2039900))
(check-sat b_and!162759 (not b_next!57539))
(get-model)

(declare-fun d!624862 () Bool)

(declare-fun c!330566 () Bool)

(assert (=> d!624862 (= c!330566 ((_ is Node!7473) (left!17746 t!4319)))))

(declare-fun e!1287886 () Bool)

(assert (=> d!624862 (= (inv!29604 (left!17746 t!4319)) e!1287886)))

(declare-fun b!2039909 () Bool)

(declare-fun inv!29606 (Conc!7473) Bool)

(assert (=> b!2039909 (= e!1287886 (inv!29606 (left!17746 t!4319)))))

(declare-fun b!2039910 () Bool)

(declare-fun e!1287887 () Bool)

(assert (=> b!2039910 (= e!1287886 e!1287887)))

(declare-fun res!894244 () Bool)

(assert (=> b!2039910 (= res!894244 (not ((_ is Leaf!10951) (left!17746 t!4319))))))

(assert (=> b!2039910 (=> res!894244 e!1287887)))

(declare-fun b!2039911 () Bool)

(declare-fun inv!29607 (Conc!7473) Bool)

(assert (=> b!2039911 (= e!1287887 (inv!29607 (left!17746 t!4319)))))

(assert (= (and d!624862 c!330566) b!2039909))

(assert (= (and d!624862 (not c!330566)) b!2039910))

(assert (= (and b!2039910 (not res!894244)) b!2039911))

(declare-fun m!2483879 () Bool)

(assert (=> b!2039909 m!2483879))

(declare-fun m!2483881 () Bool)

(assert (=> b!2039911 m!2483881))

(assert (=> b!2039897 d!624862))

(declare-fun d!624868 () Bool)

(declare-fun c!330567 () Bool)

(assert (=> d!624868 (= c!330567 ((_ is Node!7473) (right!18076 t!4319)))))

(declare-fun e!1287888 () Bool)

(assert (=> d!624868 (= (inv!29604 (right!18076 t!4319)) e!1287888)))

(declare-fun b!2039912 () Bool)

(assert (=> b!2039912 (= e!1287888 (inv!29606 (right!18076 t!4319)))))

(declare-fun b!2039913 () Bool)

(declare-fun e!1287889 () Bool)

(assert (=> b!2039913 (= e!1287888 e!1287889)))

(declare-fun res!894245 () Bool)

(assert (=> b!2039913 (= res!894245 (not ((_ is Leaf!10951) (right!18076 t!4319))))))

(assert (=> b!2039913 (=> res!894245 e!1287889)))

(declare-fun b!2039914 () Bool)

(assert (=> b!2039914 (= e!1287889 (inv!29607 (right!18076 t!4319)))))

(assert (= (and d!624868 c!330567) b!2039912))

(assert (= (and d!624868 (not c!330567)) b!2039913))

(assert (= (and b!2039913 (not res!894245)) b!2039914))

(declare-fun m!2483883 () Bool)

(assert (=> b!2039912 m!2483883))

(declare-fun m!2483885 () Bool)

(assert (=> b!2039914 m!2483885))

(assert (=> b!2039897 d!624868))

(declare-fun b!2039935 () Bool)

(declare-fun e!1287898 () List!22363)

(assert (=> b!2039935 (= e!1287898 Nil!22281)))

(declare-fun b!2039937 () Bool)

(declare-fun e!1287899 () List!22363)

(declare-fun list!9144 (IArray!14951) List!22363)

(assert (=> b!2039937 (= e!1287899 (list!9144 (xs!10377 lt!765362)))))

(declare-fun b!2039936 () Bool)

(assert (=> b!2039936 (= e!1287898 e!1287899)))

(declare-fun c!330573 () Bool)

(assert (=> b!2039936 (= c!330573 ((_ is Leaf!10951) lt!765362))))

(declare-fun b!2039938 () Bool)

(assert (=> b!2039938 (= e!1287899 (++!6057 (list!9143 (left!17746 lt!765362)) (list!9143 (right!18076 lt!765362))))))

(declare-fun d!624870 () Bool)

(declare-fun c!330572 () Bool)

(assert (=> d!624870 (= c!330572 ((_ is Empty!7473) lt!765362))))

(assert (=> d!624870 (= (list!9143 lt!765362) e!1287898)))

(assert (= (and d!624870 c!330572) b!2039935))

(assert (= (and d!624870 (not c!330572)) b!2039936))

(assert (= (and b!2039936 c!330573) b!2039937))

(assert (= (and b!2039936 (not c!330573)) b!2039938))

(declare-fun m!2483887 () Bool)

(assert (=> b!2039937 m!2483887))

(declare-fun m!2483889 () Bool)

(assert (=> b!2039938 m!2483889))

(declare-fun m!2483891 () Bool)

(assert (=> b!2039938 m!2483891))

(assert (=> b!2039938 m!2483889))

(assert (=> b!2039938 m!2483891))

(declare-fun m!2483893 () Bool)

(assert (=> b!2039938 m!2483893))

(assert (=> b!2039901 d!624870))

(declare-fun b!2039957 () Bool)

(declare-fun e!1287908 () List!22363)

(declare-fun e!1287909 () List!22363)

(assert (=> b!2039957 (= e!1287908 e!1287909)))

(declare-fun c!330578 () Bool)

(declare-fun dynLambda!11109 (Int T!36032) Bool)

(assert (=> b!2039957 (= c!330578 (dynLambda!11109 p!1489 (h!27682 (list!9143 t!4319))))))

(declare-fun b!2039958 () Bool)

(declare-fun call!125123 () List!22363)

(assert (=> b!2039958 (= e!1287909 call!125123)))

(declare-fun bm!125118 () Bool)

(assert (=> bm!125118 (= call!125123 (filter!484 (t!191448 (list!9143 t!4319)) p!1489))))

(declare-fun d!624872 () Bool)

(declare-fun e!1287910 () Bool)

(assert (=> d!624872 e!1287910))

(declare-fun res!894268 () Bool)

(assert (=> d!624872 (=> (not res!894268) (not e!1287910))))

(declare-fun lt!765367 () List!22363)

(declare-fun size!17439 (List!22363) Int)

(assert (=> d!624872 (= res!894268 (<= (size!17439 lt!765367) (size!17439 (list!9143 t!4319))))))

(assert (=> d!624872 (= lt!765367 e!1287908)))

(declare-fun c!330579 () Bool)

(assert (=> d!624872 (= c!330579 ((_ is Nil!22281) (list!9143 t!4319)))))

(assert (=> d!624872 (= (filter!484 (list!9143 t!4319) p!1489) lt!765367)))

(declare-fun b!2039959 () Bool)

(assert (=> b!2039959 (= e!1287909 (Cons!22281 (h!27682 (list!9143 t!4319)) call!125123))))

(declare-fun b!2039960 () Bool)

(declare-fun forall!4759 (List!22363 Int) Bool)

(assert (=> b!2039960 (= e!1287910 (forall!4759 lt!765367 p!1489))))

(declare-fun b!2039961 () Bool)

(assert (=> b!2039961 (= e!1287908 Nil!22281)))

(declare-fun b!2039962 () Bool)

(declare-fun res!894269 () Bool)

(assert (=> b!2039962 (=> (not res!894269) (not e!1287910))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3312 (List!22363) (InoxSet T!36032))

(assert (=> b!2039962 (= res!894269 (= ((_ map implies) (content!3312 lt!765367) (content!3312 (list!9143 t!4319))) ((as const (InoxSet T!36032)) true)))))

(assert (= (and d!624872 c!330579) b!2039961))

(assert (= (and d!624872 (not c!330579)) b!2039957))

(assert (= (and b!2039957 c!330578) b!2039959))

(assert (= (and b!2039957 (not c!330578)) b!2039958))

(assert (= (or b!2039959 b!2039958) bm!125118))

(assert (= (and d!624872 res!894268) b!2039962))

(assert (= (and b!2039962 res!894269) b!2039960))

(declare-fun b_lambda!69021 () Bool)

(assert (=> (not b_lambda!69021) (not b!2039957)))

(declare-fun t!191452 () Bool)

(declare-fun tb!128965 () Bool)

(assert (=> (and start!201056 (= p!1489 p!1489) t!191452) tb!128965))

(declare-fun result!154284 () Bool)

(assert (=> tb!128965 (= result!154284 true)))

(assert (=> b!2039957 t!191452))

(declare-fun b_and!162761 () Bool)

(assert (= b_and!162759 (and (=> t!191452 result!154284) b_and!162761)))

(declare-fun m!2483907 () Bool)

(assert (=> bm!125118 m!2483907))

(declare-fun m!2483909 () Bool)

(assert (=> b!2039960 m!2483909))

(declare-fun m!2483911 () Bool)

(assert (=> d!624872 m!2483911))

(assert (=> d!624872 m!2483865))

(declare-fun m!2483913 () Bool)

(assert (=> d!624872 m!2483913))

(declare-fun m!2483915 () Bool)

(assert (=> b!2039957 m!2483915))

(declare-fun m!2483917 () Bool)

(assert (=> b!2039962 m!2483917))

(assert (=> b!2039962 m!2483865))

(declare-fun m!2483919 () Bool)

(assert (=> b!2039962 m!2483919))

(assert (=> b!2039901 d!624872))

(declare-fun b!2039963 () Bool)

(declare-fun e!1287911 () List!22363)

(assert (=> b!2039963 (= e!1287911 Nil!22281)))

(declare-fun b!2039965 () Bool)

(declare-fun e!1287912 () List!22363)

(assert (=> b!2039965 (= e!1287912 (list!9144 (xs!10377 t!4319)))))

(declare-fun b!2039964 () Bool)

(assert (=> b!2039964 (= e!1287911 e!1287912)))

(declare-fun c!330581 () Bool)

(assert (=> b!2039964 (= c!330581 ((_ is Leaf!10951) t!4319))))

(declare-fun b!2039966 () Bool)

(assert (=> b!2039966 (= e!1287912 (++!6057 (list!9143 (left!17746 t!4319)) (list!9143 (right!18076 t!4319))))))

(declare-fun d!624876 () Bool)

(declare-fun c!330580 () Bool)

(assert (=> d!624876 (= c!330580 ((_ is Empty!7473) t!4319))))

(assert (=> d!624876 (= (list!9143 t!4319) e!1287911)))

(assert (= (and d!624876 c!330580) b!2039963))

(assert (= (and d!624876 (not c!330580)) b!2039964))

(assert (= (and b!2039964 c!330581) b!2039965))

(assert (= (and b!2039964 (not c!330581)) b!2039966))

(declare-fun m!2483921 () Bool)

(assert (=> b!2039965 m!2483921))

(assert (=> b!2039966 m!2483847))

(assert (=> b!2039966 m!2483859))

(assert (=> b!2039966 m!2483847))

(assert (=> b!2039966 m!2483859))

(declare-fun m!2483923 () Bool)

(assert (=> b!2039966 m!2483923))

(assert (=> b!2039901 d!624876))

(declare-fun b!2039979 () Bool)

(declare-fun res!894283 () Bool)

(declare-fun e!1287917 () Bool)

(assert (=> b!2039979 (=> (not res!894283) (not e!1287917))))

(assert (=> b!2039979 (= res!894283 (isBalanced!2351 (left!17746 lt!765362)))))

(declare-fun b!2039980 () Bool)

(declare-fun isEmpty!13941 (Conc!7473) Bool)

(assert (=> b!2039980 (= e!1287917 (not (isEmpty!13941 (right!18076 lt!765362))))))

(declare-fun b!2039982 () Bool)

(declare-fun res!894282 () Bool)

(assert (=> b!2039982 (=> (not res!894282) (not e!1287917))))

(assert (=> b!2039982 (= res!894282 (isBalanced!2351 (right!18076 lt!765362)))))

(declare-fun b!2039983 () Bool)

(declare-fun res!894284 () Bool)

(assert (=> b!2039983 (=> (not res!894284) (not e!1287917))))

(declare-fun height!1173 (Conc!7473) Int)

(assert (=> b!2039983 (= res!894284 (<= (- (height!1173 (left!17746 lt!765362)) (height!1173 (right!18076 lt!765362))) 1))))

(declare-fun b!2039984 () Bool)

(declare-fun e!1287918 () Bool)

(assert (=> b!2039984 (= e!1287918 e!1287917)))

(declare-fun res!894287 () Bool)

(assert (=> b!2039984 (=> (not res!894287) (not e!1287917))))

(assert (=> b!2039984 (= res!894287 (<= (- 1) (- (height!1173 (left!17746 lt!765362)) (height!1173 (right!18076 lt!765362)))))))

(declare-fun b!2039981 () Bool)

(declare-fun res!894285 () Bool)

(assert (=> b!2039981 (=> (not res!894285) (not e!1287917))))

(assert (=> b!2039981 (= res!894285 (not (isEmpty!13941 (left!17746 lt!765362))))))

(declare-fun d!624878 () Bool)

(declare-fun res!894286 () Bool)

(assert (=> d!624878 (=> res!894286 e!1287918)))

(assert (=> d!624878 (= res!894286 (not ((_ is Node!7473) lt!765362)))))

(assert (=> d!624878 (= (isBalanced!2351 lt!765362) e!1287918)))

(assert (= (and d!624878 (not res!894286)) b!2039984))

(assert (= (and b!2039984 res!894287) b!2039983))

(assert (= (and b!2039983 res!894284) b!2039979))

(assert (= (and b!2039979 res!894283) b!2039982))

(assert (= (and b!2039982 res!894282) b!2039981))

(assert (= (and b!2039981 res!894285) b!2039980))

(declare-fun m!2483925 () Bool)

(assert (=> b!2039981 m!2483925))

(declare-fun m!2483927 () Bool)

(assert (=> b!2039984 m!2483927))

(declare-fun m!2483929 () Bool)

(assert (=> b!2039984 m!2483929))

(declare-fun m!2483931 () Bool)

(assert (=> b!2039982 m!2483931))

(declare-fun m!2483933 () Bool)

(assert (=> b!2039979 m!2483933))

(declare-fun m!2483935 () Bool)

(assert (=> b!2039980 m!2483935))

(assert (=> b!2039983 m!2483927))

(assert (=> b!2039983 m!2483929))

(assert (=> b!2039896 d!624878))

(declare-fun b!2040124 () Bool)

(declare-fun e!1287988 () Conc!7473)

(declare-fun call!125205 () Conc!7473)

(assert (=> b!2040124 (= e!1287988 call!125205)))

(declare-fun bm!125199 () Bool)

(declare-fun c!330637 () Bool)

(declare-fun c!330634 () Bool)

(declare-fun call!125216 () Conc!7473)

(declare-fun c!330641 () Bool)

(assert (=> bm!125199 (= call!125216 (++!6056 (ite c!330641 (ite c!330637 (right!18076 (filter!483 (left!17746 t!4319) p!1489)) (right!18076 (right!18076 (filter!483 (left!17746 t!4319) p!1489)))) (filter!483 (left!17746 t!4319) p!1489)) (ite c!330641 (filter!483 (right!18076 t!4319) p!1489) (ite c!330634 (left!17746 (filter!483 (right!18076 t!4319) p!1489)) (left!17746 (left!17746 (filter!483 (right!18076 t!4319) p!1489)))))))))

(declare-fun b!2040125 () Bool)

(assert (=> b!2040125 (= e!1287988 call!125205)))

(declare-fun d!624880 () Bool)

(declare-fun e!1287992 () Bool)

(assert (=> d!624880 e!1287992))

(declare-fun res!894325 () Bool)

(assert (=> d!624880 (=> (not res!894325) (not e!1287992))))

(declare-fun appendAssocInst!546 (Conc!7473 Conc!7473) Bool)

(assert (=> d!624880 (= res!894325 (appendAssocInst!546 (filter!483 (left!17746 t!4319) p!1489) (filter!483 (right!18076 t!4319) p!1489)))))

(declare-fun lt!765403 () Conc!7473)

(declare-fun e!1287994 () Conc!7473)

(assert (=> d!624880 (= lt!765403 e!1287994)))

(declare-fun c!330635 () Bool)

(assert (=> d!624880 (= c!330635 (= (filter!483 (left!17746 t!4319) p!1489) Empty!7473))))

(declare-fun e!1287989 () Bool)

(assert (=> d!624880 e!1287989))

(declare-fun res!894324 () Bool)

(assert (=> d!624880 (=> (not res!894324) (not e!1287989))))

(assert (=> d!624880 (= res!894324 (isBalanced!2351 (filter!483 (left!17746 t!4319) p!1489)))))

(assert (=> d!624880 (= (++!6056 (filter!483 (left!17746 t!4319) p!1489) (filter!483 (right!18076 t!4319) p!1489)) lt!765403)))

(declare-fun bm!125200 () Bool)

(declare-fun call!125204 () Conc!7473)

(declare-fun call!125208 () Conc!7473)

(assert (=> bm!125200 (= call!125204 call!125208)))

(declare-fun b!2040126 () Bool)

(declare-fun e!1287996 () Conc!7473)

(declare-fun call!125215 () Conc!7473)

(assert (=> b!2040126 (= e!1287996 call!125215)))

(declare-fun b!2040127 () Bool)

(declare-fun call!125217 () Int)

(declare-fun call!125210 () Int)

(assert (=> b!2040127 (= c!330637 (>= call!125217 call!125210))))

(declare-fun e!1287987 () Conc!7473)

(declare-fun e!1287993 () Conc!7473)

(assert (=> b!2040127 (= e!1287987 e!1287993)))

(declare-fun b!2040128 () Bool)

(declare-fun res!894327 () Bool)

(assert (=> b!2040128 (=> (not res!894327) (not e!1287992))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2040128 (= res!894327 (<= (height!1173 lt!765403) (+ (max!0 (height!1173 (filter!483 (left!17746 t!4319) p!1489)) (height!1173 (filter!483 (right!18076 t!4319) p!1489))) 1)))))

(declare-fun b!2040129 () Bool)

(declare-fun res!894323 () Bool)

(assert (=> b!2040129 (=> (not res!894323) (not e!1287992))))

(assert (=> b!2040129 (= res!894323 (>= (height!1173 lt!765403) (max!0 (height!1173 (filter!483 (left!17746 t!4319) p!1489)) (height!1173 (filter!483 (right!18076 t!4319) p!1489)))))))

(declare-fun bm!125201 () Bool)

(declare-fun call!125209 () Conc!7473)

(assert (=> bm!125201 (= call!125209 call!125216)))

(declare-fun b!2040130 () Bool)

(assert (=> b!2040130 (= e!1287994 (filter!483 (right!18076 t!4319) p!1489))))

(declare-fun call!125212 () Int)

(declare-fun bm!125202 () Bool)

(declare-fun lt!765402 () Conc!7473)

(declare-fun lt!765400 () Conc!7473)

(assert (=> bm!125202 (= call!125212 (height!1173 (ite c!330641 lt!765400 lt!765402)))))

(declare-fun b!2040131 () Bool)

(assert (=> b!2040131 (= e!1287996 call!125215)))

(declare-fun b!2040132 () Bool)

(declare-fun c!330639 () Bool)

(declare-fun lt!765401 () Int)

(assert (=> b!2040132 (= c!330639 (and (<= (- 1) lt!765401) (<= lt!765401 1)))))

(assert (=> b!2040132 (= lt!765401 (- (height!1173 (filter!483 (right!18076 t!4319) p!1489)) (height!1173 (filter!483 (left!17746 t!4319) p!1489))))))

(declare-fun e!1287990 () Conc!7473)

(declare-fun e!1287991 () Conc!7473)

(assert (=> b!2040132 (= e!1287990 e!1287991)))

(declare-fun b!2040133 () Bool)

(declare-fun call!125214 () Conc!7473)

(assert (=> b!2040133 (= e!1287991 call!125214)))

(declare-fun b!2040134 () Bool)

(declare-fun res!894326 () Bool)

(assert (=> b!2040134 (=> (not res!894326) (not e!1287992))))

(assert (=> b!2040134 (= res!894326 (isBalanced!2351 lt!765403))))

(declare-fun b!2040135 () Bool)

(assert (=> b!2040135 (= e!1287989 (isBalanced!2351 (filter!483 (right!18076 t!4319) p!1489)))))

(declare-fun bm!125203 () Bool)

(declare-fun call!125218 () Conc!7473)

(assert (=> bm!125203 (= call!125205 call!125218)))

(declare-fun bm!125204 () Bool)

(assert (=> bm!125204 (= call!125208 call!125214)))

(declare-fun b!2040136 () Bool)

(declare-fun e!1287995 () Conc!7473)

(assert (=> b!2040136 (= e!1287995 e!1287988)))

(assert (=> b!2040136 (= lt!765402 call!125209)))

(declare-fun c!330638 () Bool)

(assert (=> b!2040136 (= c!330638 (= call!125212 (- call!125210 3)))))

(declare-fun b!2040137 () Bool)

(assert (=> b!2040137 (= e!1287993 e!1287996)))

(declare-fun call!125219 () Conc!7473)

(assert (=> b!2040137 (= lt!765400 call!125219)))

(declare-fun c!330640 () Bool)

(declare-fun call!125207 () Int)

(assert (=> b!2040137 (= c!330640 (= call!125212 (- call!125207 3)))))

(declare-fun bm!125205 () Bool)

(declare-fun call!125213 () Conc!7473)

(declare-fun <>!178 (Conc!7473 Conc!7473) Conc!7473)

(assert (=> bm!125205 (= call!125218 (<>!178 (ite c!330641 (ite c!330637 (left!17746 (filter!483 (left!17746 t!4319) p!1489)) (ite c!330640 (left!17746 (right!18076 (filter!483 (left!17746 t!4319) p!1489))) (left!17746 (filter!483 (left!17746 t!4319) p!1489)))) (ite c!330638 call!125213 lt!765402)) (ite c!330641 (ite c!330637 call!125219 (ite c!330640 lt!765400 (left!17746 (right!18076 (filter!483 (left!17746 t!4319) p!1489))))) (ite c!330638 (right!18076 (filter!483 (right!18076 t!4319) p!1489)) call!125213))))))

(declare-fun bm!125206 () Bool)

(assert (=> bm!125206 (= call!125210 (height!1173 (ite c!330641 (right!18076 (filter!483 (left!17746 t!4319) p!1489)) (filter!483 (right!18076 t!4319) p!1489))))))

(declare-fun b!2040138 () Bool)

(assert (=> b!2040138 (= c!330634 (>= call!125207 call!125217))))

(assert (=> b!2040138 (= e!1287987 e!1287995)))

(declare-fun b!2040139 () Bool)

(assert (=> b!2040139 (= e!1287995 call!125204)))

(declare-fun bm!125207 () Bool)

(declare-fun call!125206 () Conc!7473)

(declare-fun call!125211 () Conc!7473)

(assert (=> bm!125207 (= call!125206 call!125211)))

(declare-fun bm!125208 () Bool)

(assert (=> bm!125208 (= call!125207 (height!1173 (ite c!330641 (filter!483 (left!17746 t!4319) p!1489) (right!18076 (filter!483 (right!18076 t!4319) p!1489)))))))

(declare-fun bm!125209 () Bool)

(assert (=> bm!125209 (= call!125219 call!125216)))

(declare-fun bm!125210 () Bool)

(assert (=> bm!125210 (= call!125211 call!125218)))

(declare-fun bm!125211 () Bool)

(assert (=> bm!125211 (= call!125214 (<>!178 (ite c!330639 (filter!483 (left!17746 t!4319) p!1489) (ite c!330641 (ite c!330640 (left!17746 (filter!483 (left!17746 t!4319) p!1489)) call!125206) (ite c!330634 call!125209 (ite c!330638 lt!765402 (right!18076 (left!17746 (filter!483 (right!18076 t!4319) p!1489))))))) (ite c!330639 (filter!483 (right!18076 t!4319) p!1489) (ite c!330641 (ite c!330640 call!125206 lt!765400) (ite c!330634 (right!18076 (filter!483 (right!18076 t!4319) p!1489)) (ite c!330638 (right!18076 (left!17746 (filter!483 (right!18076 t!4319) p!1489))) (right!18076 (filter!483 (right!18076 t!4319) p!1489))))))))))

(declare-fun b!2040140 () Bool)

(assert (=> b!2040140 (= e!1287990 (filter!483 (left!17746 t!4319) p!1489))))

(declare-fun bm!125212 () Bool)

(assert (=> bm!125212 (= call!125217 (height!1173 (ite c!330641 (left!17746 (filter!483 (left!17746 t!4319) p!1489)) (left!17746 (filter!483 (right!18076 t!4319) p!1489)))))))

(declare-fun b!2040141 () Bool)

(assert (=> b!2040141 (= e!1287994 e!1287990)))

(declare-fun c!330636 () Bool)

(assert (=> b!2040141 (= c!330636 (= (filter!483 (right!18076 t!4319) p!1489) Empty!7473))))

(declare-fun b!2040142 () Bool)

(assert (=> b!2040142 (= e!1287992 (= (list!9143 lt!765403) (++!6057 (list!9143 (filter!483 (left!17746 t!4319) p!1489)) (list!9143 (filter!483 (right!18076 t!4319) p!1489)))))))

(declare-fun bm!125213 () Bool)

(assert (=> bm!125213 (= call!125213 call!125204)))

(declare-fun bm!125214 () Bool)

(assert (=> bm!125214 (= call!125215 call!125208)))

(declare-fun b!2040143 () Bool)

(assert (=> b!2040143 (= e!1287993 call!125211)))

(declare-fun b!2040144 () Bool)

(assert (=> b!2040144 (= e!1287991 e!1287987)))

(assert (=> b!2040144 (= c!330641 (< lt!765401 (- 1)))))

(assert (= (and d!624880 res!894324) b!2040135))

(assert (= (and d!624880 c!330635) b!2040130))

(assert (= (and d!624880 (not c!330635)) b!2040141))

(assert (= (and b!2040141 c!330636) b!2040140))

(assert (= (and b!2040141 (not c!330636)) b!2040132))

(assert (= (and b!2040132 c!330639) b!2040133))

(assert (= (and b!2040132 (not c!330639)) b!2040144))

(assert (= (and b!2040144 c!330641) b!2040127))

(assert (= (and b!2040144 (not c!330641)) b!2040138))

(assert (= (and b!2040127 c!330637) b!2040143))

(assert (= (and b!2040127 (not c!330637)) b!2040137))

(assert (= (and b!2040137 c!330640) b!2040131))

(assert (= (and b!2040137 (not c!330640)) b!2040126))

(assert (= (or b!2040131 b!2040126) bm!125207))

(assert (= (or b!2040131 b!2040126) bm!125214))

(assert (= (or b!2040143 b!2040137) bm!125209))

(assert (= (or b!2040143 bm!125207) bm!125210))

(assert (= (and b!2040138 c!330634) b!2040139))

(assert (= (and b!2040138 (not c!330634)) b!2040136))

(assert (= (and b!2040136 c!330638) b!2040125))

(assert (= (and b!2040136 (not c!330638)) b!2040124))

(assert (= (or b!2040125 b!2040124) bm!125213))

(assert (= (or b!2040125 b!2040124) bm!125203))

(assert (= (or b!2040139 b!2040136) bm!125201))

(assert (= (or b!2040139 bm!125213) bm!125200))

(assert (= (or b!2040137 b!2040136) bm!125202))

(assert (= (or bm!125210 bm!125203) bm!125205))

(assert (= (or b!2040127 b!2040136) bm!125206))

(assert (= (or b!2040127 b!2040138) bm!125212))

(assert (= (or bm!125209 bm!125201) bm!125199))

(assert (= (or b!2040137 b!2040138) bm!125208))

(assert (= (or bm!125214 bm!125200) bm!125204))

(assert (= (or b!2040133 bm!125204) bm!125211))

(assert (= (and d!624880 res!894325) b!2040134))

(assert (= (and b!2040134 res!894326) b!2040128))

(assert (= (and b!2040128 res!894327) b!2040129))

(assert (= (and b!2040129 res!894323) b!2040142))

(assert (=> b!2040132 m!2483841))

(declare-fun m!2484031 () Bool)

(assert (=> b!2040132 m!2484031))

(assert (=> b!2040132 m!2483839))

(declare-fun m!2484033 () Bool)

(assert (=> b!2040132 m!2484033))

(declare-fun m!2484035 () Bool)

(assert (=> bm!125208 m!2484035))

(declare-fun m!2484037 () Bool)

(assert (=> b!2040142 m!2484037))

(assert (=> b!2040142 m!2483839))

(declare-fun m!2484039 () Bool)

(assert (=> b!2040142 m!2484039))

(assert (=> b!2040142 m!2483841))

(declare-fun m!2484041 () Bool)

(assert (=> b!2040142 m!2484041))

(assert (=> b!2040142 m!2484039))

(assert (=> b!2040142 m!2484041))

(declare-fun m!2484043 () Bool)

(assert (=> b!2040142 m!2484043))

(declare-fun m!2484045 () Bool)

(assert (=> bm!125212 m!2484045))

(declare-fun m!2484049 () Bool)

(assert (=> bm!125205 m!2484049))

(declare-fun m!2484053 () Bool)

(assert (=> bm!125211 m!2484053))

(assert (=> d!624880 m!2483839))

(assert (=> d!624880 m!2483841))

(declare-fun m!2484059 () Bool)

(assert (=> d!624880 m!2484059))

(assert (=> d!624880 m!2483839))

(declare-fun m!2484061 () Bool)

(assert (=> d!624880 m!2484061))

(declare-fun m!2484063 () Bool)

(assert (=> b!2040128 m!2484063))

(assert (=> b!2040128 m!2483839))

(assert (=> b!2040128 m!2484033))

(assert (=> b!2040128 m!2483841))

(assert (=> b!2040128 m!2484031))

(assert (=> b!2040128 m!2484033))

(assert (=> b!2040128 m!2484031))

(declare-fun m!2484065 () Bool)

(assert (=> b!2040128 m!2484065))

(declare-fun m!2484071 () Bool)

(assert (=> bm!125199 m!2484071))

(declare-fun m!2484073 () Bool)

(assert (=> b!2040134 m!2484073))

(declare-fun m!2484075 () Bool)

(assert (=> bm!125206 m!2484075))

(declare-fun m!2484077 () Bool)

(assert (=> bm!125202 m!2484077))

(assert (=> b!2040129 m!2484063))

(assert (=> b!2040129 m!2483839))

(assert (=> b!2040129 m!2484033))

(assert (=> b!2040129 m!2483841))

(assert (=> b!2040129 m!2484031))

(assert (=> b!2040129 m!2484033))

(assert (=> b!2040129 m!2484031))

(assert (=> b!2040129 m!2484065))

(assert (=> b!2040135 m!2483841))

(declare-fun m!2484079 () Bool)

(assert (=> b!2040135 m!2484079))

(assert (=> b!2039896 d!624880))

(declare-fun b!2040250 () Bool)

(declare-fun e!1288054 () Conc!7473)

(assert (=> b!2040250 (= e!1288054 (left!17746 t!4319))))

(declare-fun b!2040251 () Bool)

(declare-fun e!1288053 () Conc!7473)

(assert (=> b!2040251 (= e!1288053 Empty!7473)))

(declare-fun b!2040252 () Bool)

(declare-fun lt!765423 () Unit!36980)

(assert (=> b!2040252 (= lt!765423 (lemmaFilterConcat!32 (list!9143 (left!17746 (left!17746 t!4319))) (list!9143 (right!18076 (left!17746 t!4319))) p!1489))))

(declare-fun e!1288056 () Conc!7473)

(assert (=> b!2040252 (= e!1288056 (++!6056 (filter!483 (left!17746 (left!17746 t!4319)) p!1489) (filter!483 (right!18076 (left!17746 t!4319)) p!1489)))))

(declare-fun b!2040253 () Bool)

(assert (=> b!2040253 (= e!1288054 e!1288056)))

(declare-fun c!330681 () Bool)

(assert (=> b!2040253 (= c!330681 ((_ is Leaf!10951) (left!17746 t!4319)))))

(declare-fun b!2040254 () Bool)

(declare-fun c!330682 () Bool)

(declare-fun lt!765424 () IArray!14951)

(declare-fun size!17441 (IArray!14951) Int)

(assert (=> b!2040254 (= c!330682 (= (size!17441 lt!765424) 0))))

(declare-fun filter!486 (IArray!14951 Int) IArray!14951)

(assert (=> b!2040254 (= lt!765424 (filter!486 (xs!10377 (left!17746 t!4319)) p!1489))))

(assert (=> b!2040254 (= e!1288056 e!1288053)))

(declare-fun d!624896 () Bool)

(declare-fun e!1288055 () Bool)

(assert (=> d!624896 e!1288055))

(declare-fun res!894355 () Bool)

(assert (=> d!624896 (=> (not res!894355) (not e!1288055))))

(declare-fun lt!765425 () Conc!7473)

(assert (=> d!624896 (= res!894355 (isBalanced!2351 lt!765425))))

(assert (=> d!624896 (= lt!765425 e!1288054)))

(declare-fun c!330683 () Bool)

(assert (=> d!624896 (= c!330683 ((_ is Empty!7473) (left!17746 t!4319)))))

(assert (=> d!624896 (isBalanced!2351 (left!17746 t!4319))))

(assert (=> d!624896 (= (filter!483 (left!17746 t!4319) p!1489) lt!765425)))

(declare-fun b!2040255 () Bool)

(assert (=> b!2040255 (= e!1288055 (= (list!9143 lt!765425) (filter!484 (list!9143 (left!17746 t!4319)) p!1489)))))

(declare-fun b!2040256 () Bool)

(assert (=> b!2040256 (= e!1288053 (Leaf!10951 lt!765424 (size!17441 lt!765424)))))

(assert (= (and d!624896 c!330683) b!2040250))

(assert (= (and d!624896 (not c!330683)) b!2040253))

(assert (= (and b!2040253 c!330681) b!2040254))

(assert (= (and b!2040253 (not c!330681)) b!2040252))

(assert (= (and b!2040254 c!330682) b!2040251))

(assert (= (and b!2040254 (not c!330682)) b!2040256))

(assert (= (and d!624896 res!894355) b!2040255))

(declare-fun m!2484179 () Bool)

(assert (=> d!624896 m!2484179))

(declare-fun m!2484181 () Bool)

(assert (=> d!624896 m!2484181))

(declare-fun m!2484183 () Bool)

(assert (=> b!2040254 m!2484183))

(declare-fun m!2484185 () Bool)

(assert (=> b!2040254 m!2484185))

(assert (=> b!2040256 m!2484183))

(declare-fun m!2484187 () Bool)

(assert (=> b!2040255 m!2484187))

(assert (=> b!2040255 m!2483847))

(assert (=> b!2040255 m!2483847))

(declare-fun m!2484189 () Bool)

(assert (=> b!2040255 m!2484189))

(declare-fun m!2484191 () Bool)

(assert (=> b!2040252 m!2484191))

(declare-fun m!2484193 () Bool)

(assert (=> b!2040252 m!2484193))

(declare-fun m!2484195 () Bool)

(assert (=> b!2040252 m!2484195))

(assert (=> b!2040252 m!2484191))

(declare-fun m!2484197 () Bool)

(assert (=> b!2040252 m!2484197))

(declare-fun m!2484199 () Bool)

(assert (=> b!2040252 m!2484199))

(assert (=> b!2040252 m!2484195))

(assert (=> b!2040252 m!2484193))

(assert (=> b!2040252 m!2484199))

(declare-fun m!2484201 () Bool)

(assert (=> b!2040252 m!2484201))

(assert (=> b!2039896 d!624896))

(declare-fun b!2040271 () Bool)

(declare-fun e!1288066 () Conc!7473)

(assert (=> b!2040271 (= e!1288066 (right!18076 t!4319))))

(declare-fun b!2040272 () Bool)

(declare-fun e!1288065 () Conc!7473)

(assert (=> b!2040272 (= e!1288065 Empty!7473)))

(declare-fun b!2040273 () Bool)

(declare-fun lt!765426 () Unit!36980)

(assert (=> b!2040273 (= lt!765426 (lemmaFilterConcat!32 (list!9143 (left!17746 (right!18076 t!4319))) (list!9143 (right!18076 (right!18076 t!4319))) p!1489))))

(declare-fun e!1288068 () Conc!7473)

(assert (=> b!2040273 (= e!1288068 (++!6056 (filter!483 (left!17746 (right!18076 t!4319)) p!1489) (filter!483 (right!18076 (right!18076 t!4319)) p!1489)))))

(declare-fun b!2040274 () Bool)

(assert (=> b!2040274 (= e!1288066 e!1288068)))

(declare-fun c!330684 () Bool)

(assert (=> b!2040274 (= c!330684 ((_ is Leaf!10951) (right!18076 t!4319)))))

(declare-fun b!2040275 () Bool)

(declare-fun c!330685 () Bool)

(declare-fun lt!765427 () IArray!14951)

(assert (=> b!2040275 (= c!330685 (= (size!17441 lt!765427) 0))))

(assert (=> b!2040275 (= lt!765427 (filter!486 (xs!10377 (right!18076 t!4319)) p!1489))))

(assert (=> b!2040275 (= e!1288068 e!1288065)))

(declare-fun d!624918 () Bool)

(declare-fun e!1288067 () Bool)

(assert (=> d!624918 e!1288067))

(declare-fun res!894356 () Bool)

(assert (=> d!624918 (=> (not res!894356) (not e!1288067))))

(declare-fun lt!765428 () Conc!7473)

(assert (=> d!624918 (= res!894356 (isBalanced!2351 lt!765428))))

(assert (=> d!624918 (= lt!765428 e!1288066)))

(declare-fun c!330686 () Bool)

(assert (=> d!624918 (= c!330686 ((_ is Empty!7473) (right!18076 t!4319)))))

(assert (=> d!624918 (isBalanced!2351 (right!18076 t!4319))))

(assert (=> d!624918 (= (filter!483 (right!18076 t!4319) p!1489) lt!765428)))

(declare-fun b!2040276 () Bool)

(assert (=> b!2040276 (= e!1288067 (= (list!9143 lt!765428) (filter!484 (list!9143 (right!18076 t!4319)) p!1489)))))

(declare-fun b!2040277 () Bool)

(assert (=> b!2040277 (= e!1288065 (Leaf!10951 lt!765427 (size!17441 lt!765427)))))

(assert (= (and d!624918 c!330686) b!2040271))

(assert (= (and d!624918 (not c!330686)) b!2040274))

(assert (= (and b!2040274 c!330684) b!2040275))

(assert (= (and b!2040274 (not c!330684)) b!2040273))

(assert (= (and b!2040275 c!330685) b!2040272))

(assert (= (and b!2040275 (not c!330685)) b!2040277))

(assert (= (and d!624918 res!894356) b!2040276))

(declare-fun m!2484215 () Bool)

(assert (=> d!624918 m!2484215))

(declare-fun m!2484217 () Bool)

(assert (=> d!624918 m!2484217))

(declare-fun m!2484219 () Bool)

(assert (=> b!2040275 m!2484219))

(declare-fun m!2484221 () Bool)

(assert (=> b!2040275 m!2484221))

(assert (=> b!2040277 m!2484219))

(declare-fun m!2484223 () Bool)

(assert (=> b!2040276 m!2484223))

(assert (=> b!2040276 m!2483859))

(assert (=> b!2040276 m!2483859))

(declare-fun m!2484225 () Bool)

(assert (=> b!2040276 m!2484225))

(declare-fun m!2484227 () Bool)

(assert (=> b!2040273 m!2484227))

(declare-fun m!2484229 () Bool)

(assert (=> b!2040273 m!2484229))

(declare-fun m!2484231 () Bool)

(assert (=> b!2040273 m!2484231))

(assert (=> b!2040273 m!2484227))

(declare-fun m!2484233 () Bool)

(assert (=> b!2040273 m!2484233))

(declare-fun m!2484235 () Bool)

(assert (=> b!2040273 m!2484235))

(assert (=> b!2040273 m!2484231))

(assert (=> b!2040273 m!2484229))

(assert (=> b!2040273 m!2484235))

(declare-fun m!2484237 () Bool)

(assert (=> b!2040273 m!2484237))

(assert (=> b!2039896 d!624918))

(declare-fun d!624920 () Bool)

(assert (=> d!624920 (= (filter!484 (++!6057 lt!765361 lt!765364) p!1489) (++!6057 (filter!484 lt!765361 p!1489) (filter!484 lt!765364 p!1489)))))

(declare-fun lt!765431 () Unit!36980)

(declare-fun choose!12450 (List!22363 List!22363 Int) Unit!36980)

(assert (=> d!624920 (= lt!765431 (choose!12450 lt!765361 lt!765364 p!1489))))

(assert (=> d!624920 (= (lemmaFilterConcat!32 lt!765361 lt!765364 p!1489) lt!765431)))

(declare-fun bs!421489 () Bool)

(assert (= bs!421489 d!624920))

(declare-fun m!2484239 () Bool)

(assert (=> bs!421489 m!2484239))

(assert (=> bs!421489 m!2483849))

(assert (=> bs!421489 m!2483853))

(assert (=> bs!421489 m!2483849))

(assert (=> bs!421489 m!2483851))

(assert (=> bs!421489 m!2483853))

(assert (=> bs!421489 m!2483855))

(assert (=> bs!421489 m!2483857))

(assert (=> bs!421489 m!2483855))

(assert (=> b!2039902 d!624920))

(declare-fun b!2040283 () Bool)

(declare-fun e!1288072 () List!22363)

(assert (=> b!2040283 (= e!1288072 Nil!22281)))

(declare-fun b!2040285 () Bool)

(declare-fun e!1288073 () List!22363)

(assert (=> b!2040285 (= e!1288073 (list!9144 (xs!10377 (left!17746 t!4319))))))

(declare-fun b!2040284 () Bool)

(assert (=> b!2040284 (= e!1288072 e!1288073)))

(declare-fun c!330688 () Bool)

(assert (=> b!2040284 (= c!330688 ((_ is Leaf!10951) (left!17746 t!4319)))))

(declare-fun b!2040286 () Bool)

(assert (=> b!2040286 (= e!1288073 (++!6057 (list!9143 (left!17746 (left!17746 t!4319))) (list!9143 (right!18076 (left!17746 t!4319)))))))

(declare-fun d!624922 () Bool)

(declare-fun c!330687 () Bool)

(assert (=> d!624922 (= c!330687 ((_ is Empty!7473) (left!17746 t!4319)))))

(assert (=> d!624922 (= (list!9143 (left!17746 t!4319)) e!1288072)))

(assert (= (and d!624922 c!330687) b!2040283))

(assert (= (and d!624922 (not c!330687)) b!2040284))

(assert (= (and b!2040284 c!330688) b!2040285))

(assert (= (and b!2040284 (not c!330688)) b!2040286))

(declare-fun m!2484241 () Bool)

(assert (=> b!2040285 m!2484241))

(assert (=> b!2040286 m!2484195))

(assert (=> b!2040286 m!2484191))

(assert (=> b!2040286 m!2484195))

(assert (=> b!2040286 m!2484191))

(declare-fun m!2484243 () Bool)

(assert (=> b!2040286 m!2484243))

(assert (=> b!2039902 d!624922))

(declare-fun d!624924 () Bool)

(declare-fun e!1288078 () Bool)

(assert (=> d!624924 e!1288078))

(declare-fun res!894361 () Bool)

(assert (=> d!624924 (=> (not res!894361) (not e!1288078))))

(declare-fun lt!765434 () List!22363)

(assert (=> d!624924 (= res!894361 (= (content!3312 lt!765434) ((_ map or) (content!3312 lt!765361) (content!3312 lt!765364))))))

(declare-fun e!1288079 () List!22363)

(assert (=> d!624924 (= lt!765434 e!1288079)))

(declare-fun c!330691 () Bool)

(assert (=> d!624924 (= c!330691 ((_ is Nil!22281) lt!765361))))

(assert (=> d!624924 (= (++!6057 lt!765361 lt!765364) lt!765434)))

(declare-fun b!2040297 () Bool)

(declare-fun res!894362 () Bool)

(assert (=> b!2040297 (=> (not res!894362) (not e!1288078))))

(assert (=> b!2040297 (= res!894362 (= (size!17439 lt!765434) (+ (size!17439 lt!765361) (size!17439 lt!765364))))))

(declare-fun b!2040296 () Bool)

(assert (=> b!2040296 (= e!1288079 (Cons!22281 (h!27682 lt!765361) (++!6057 (t!191448 lt!765361) lt!765364)))))

(declare-fun b!2040298 () Bool)

(assert (=> b!2040298 (= e!1288078 (or (not (= lt!765364 Nil!22281)) (= lt!765434 lt!765361)))))

(declare-fun b!2040295 () Bool)

(assert (=> b!2040295 (= e!1288079 lt!765364)))

(assert (= (and d!624924 c!330691) b!2040295))

(assert (= (and d!624924 (not c!330691)) b!2040296))

(assert (= (and d!624924 res!894361) b!2040297))

(assert (= (and b!2040297 res!894362) b!2040298))

(declare-fun m!2484245 () Bool)

(assert (=> d!624924 m!2484245))

(declare-fun m!2484247 () Bool)

(assert (=> d!624924 m!2484247))

(declare-fun m!2484249 () Bool)

(assert (=> d!624924 m!2484249))

(declare-fun m!2484251 () Bool)

(assert (=> b!2040297 m!2484251))

(declare-fun m!2484253 () Bool)

(assert (=> b!2040297 m!2484253))

(declare-fun m!2484255 () Bool)

(assert (=> b!2040297 m!2484255))

(declare-fun m!2484257 () Bool)

(assert (=> b!2040296 m!2484257))

(assert (=> b!2039902 d!624924))

(declare-fun b!2040299 () Bool)

(declare-fun e!1288080 () List!22363)

(declare-fun e!1288081 () List!22363)

(assert (=> b!2040299 (= e!1288080 e!1288081)))

(declare-fun c!330692 () Bool)

(assert (=> b!2040299 (= c!330692 (dynLambda!11109 p!1489 (h!27682 (++!6057 lt!765361 lt!765364))))))

(declare-fun b!2040300 () Bool)

(declare-fun call!125226 () List!22363)

(assert (=> b!2040300 (= e!1288081 call!125226)))

(declare-fun bm!125221 () Bool)

(assert (=> bm!125221 (= call!125226 (filter!484 (t!191448 (++!6057 lt!765361 lt!765364)) p!1489))))

(declare-fun d!624926 () Bool)

(declare-fun e!1288082 () Bool)

(assert (=> d!624926 e!1288082))

(declare-fun res!894363 () Bool)

(assert (=> d!624926 (=> (not res!894363) (not e!1288082))))

(declare-fun lt!765435 () List!22363)

(assert (=> d!624926 (= res!894363 (<= (size!17439 lt!765435) (size!17439 (++!6057 lt!765361 lt!765364))))))

(assert (=> d!624926 (= lt!765435 e!1288080)))

(declare-fun c!330693 () Bool)

(assert (=> d!624926 (= c!330693 ((_ is Nil!22281) (++!6057 lt!765361 lt!765364)))))

(assert (=> d!624926 (= (filter!484 (++!6057 lt!765361 lt!765364) p!1489) lt!765435)))

(declare-fun b!2040301 () Bool)

(assert (=> b!2040301 (= e!1288081 (Cons!22281 (h!27682 (++!6057 lt!765361 lt!765364)) call!125226))))

(declare-fun b!2040302 () Bool)

(assert (=> b!2040302 (= e!1288082 (forall!4759 lt!765435 p!1489))))

(declare-fun b!2040303 () Bool)

(assert (=> b!2040303 (= e!1288080 Nil!22281)))

(declare-fun b!2040304 () Bool)

(declare-fun res!894364 () Bool)

(assert (=> b!2040304 (=> (not res!894364) (not e!1288082))))

(assert (=> b!2040304 (= res!894364 (= ((_ map implies) (content!3312 lt!765435) (content!3312 (++!6057 lt!765361 lt!765364))) ((as const (InoxSet T!36032)) true)))))

(assert (= (and d!624926 c!330693) b!2040303))

(assert (= (and d!624926 (not c!330693)) b!2040299))

(assert (= (and b!2040299 c!330692) b!2040301))

(assert (= (and b!2040299 (not c!330692)) b!2040300))

(assert (= (or b!2040301 b!2040300) bm!125221))

(assert (= (and d!624926 res!894363) b!2040304))

(assert (= (and b!2040304 res!894364) b!2040302))

(declare-fun b_lambda!69039 () Bool)

(assert (=> (not b_lambda!69039) (not b!2040299)))

(declare-fun t!191466 () Bool)

(declare-fun tb!128975 () Bool)

(assert (=> (and start!201056 (= p!1489 p!1489) t!191466) tb!128975))

(declare-fun result!154298 () Bool)

(assert (=> tb!128975 (= result!154298 true)))

(assert (=> b!2040299 t!191466))

(declare-fun b_and!162771 () Bool)

(assert (= b_and!162761 (and (=> t!191466 result!154298) b_and!162771)))

(declare-fun m!2484259 () Bool)

(assert (=> bm!125221 m!2484259))

(declare-fun m!2484261 () Bool)

(assert (=> b!2040302 m!2484261))

(declare-fun m!2484263 () Bool)

(assert (=> d!624926 m!2484263))

(assert (=> d!624926 m!2483849))

(declare-fun m!2484265 () Bool)

(assert (=> d!624926 m!2484265))

(declare-fun m!2484267 () Bool)

(assert (=> b!2040299 m!2484267))

(declare-fun m!2484269 () Bool)

(assert (=> b!2040304 m!2484269))

(assert (=> b!2040304 m!2483849))

(declare-fun m!2484271 () Bool)

(assert (=> b!2040304 m!2484271))

(assert (=> b!2039902 d!624926))

(declare-fun b!2040305 () Bool)

(declare-fun e!1288083 () List!22363)

(declare-fun e!1288084 () List!22363)

(assert (=> b!2040305 (= e!1288083 e!1288084)))

(declare-fun c!330694 () Bool)

(assert (=> b!2040305 (= c!330694 (dynLambda!11109 p!1489 (h!27682 lt!765364)))))

(declare-fun b!2040306 () Bool)

(declare-fun call!125227 () List!22363)

(assert (=> b!2040306 (= e!1288084 call!125227)))

(declare-fun bm!125222 () Bool)

(assert (=> bm!125222 (= call!125227 (filter!484 (t!191448 lt!765364) p!1489))))

(declare-fun d!624928 () Bool)

(declare-fun e!1288085 () Bool)

(assert (=> d!624928 e!1288085))

(declare-fun res!894365 () Bool)

(assert (=> d!624928 (=> (not res!894365) (not e!1288085))))

(declare-fun lt!765436 () List!22363)

(assert (=> d!624928 (= res!894365 (<= (size!17439 lt!765436) (size!17439 lt!765364)))))

(assert (=> d!624928 (= lt!765436 e!1288083)))

(declare-fun c!330695 () Bool)

(assert (=> d!624928 (= c!330695 ((_ is Nil!22281) lt!765364))))

(assert (=> d!624928 (= (filter!484 lt!765364 p!1489) lt!765436)))

(declare-fun b!2040307 () Bool)

(assert (=> b!2040307 (= e!1288084 (Cons!22281 (h!27682 lt!765364) call!125227))))

(declare-fun b!2040308 () Bool)

(assert (=> b!2040308 (= e!1288085 (forall!4759 lt!765436 p!1489))))

(declare-fun b!2040309 () Bool)

(assert (=> b!2040309 (= e!1288083 Nil!22281)))

(declare-fun b!2040310 () Bool)

(declare-fun res!894366 () Bool)

(assert (=> b!2040310 (=> (not res!894366) (not e!1288085))))

(assert (=> b!2040310 (= res!894366 (= ((_ map implies) (content!3312 lt!765436) (content!3312 lt!765364)) ((as const (InoxSet T!36032)) true)))))

(assert (= (and d!624928 c!330695) b!2040309))

(assert (= (and d!624928 (not c!330695)) b!2040305))

(assert (= (and b!2040305 c!330694) b!2040307))

(assert (= (and b!2040305 (not c!330694)) b!2040306))

(assert (= (or b!2040307 b!2040306) bm!125222))

(assert (= (and d!624928 res!894365) b!2040310))

(assert (= (and b!2040310 res!894366) b!2040308))

(declare-fun b_lambda!69041 () Bool)

(assert (=> (not b_lambda!69041) (not b!2040305)))

(declare-fun t!191468 () Bool)

(declare-fun tb!128977 () Bool)

(assert (=> (and start!201056 (= p!1489 p!1489) t!191468) tb!128977))

(declare-fun result!154300 () Bool)

(assert (=> tb!128977 (= result!154300 true)))

(assert (=> b!2040305 t!191468))

(declare-fun b_and!162773 () Bool)

(assert (= b_and!162771 (and (=> t!191468 result!154300) b_and!162773)))

(declare-fun m!2484273 () Bool)

(assert (=> bm!125222 m!2484273))

(declare-fun m!2484275 () Bool)

(assert (=> b!2040308 m!2484275))

(declare-fun m!2484277 () Bool)

(assert (=> d!624928 m!2484277))

(assert (=> d!624928 m!2484255))

(declare-fun m!2484279 () Bool)

(assert (=> b!2040305 m!2484279))

(declare-fun m!2484281 () Bool)

(assert (=> b!2040310 m!2484281))

(assert (=> b!2040310 m!2484249))

(assert (=> b!2039902 d!624928))

(declare-fun b!2040311 () Bool)

(declare-fun e!1288086 () List!22363)

(assert (=> b!2040311 (= e!1288086 Nil!22281)))

(declare-fun b!2040313 () Bool)

(declare-fun e!1288087 () List!22363)

(assert (=> b!2040313 (= e!1288087 (list!9144 (xs!10377 (right!18076 t!4319))))))

(declare-fun b!2040312 () Bool)

(assert (=> b!2040312 (= e!1288086 e!1288087)))

(declare-fun c!330697 () Bool)

(assert (=> b!2040312 (= c!330697 ((_ is Leaf!10951) (right!18076 t!4319)))))

(declare-fun b!2040314 () Bool)

(assert (=> b!2040314 (= e!1288087 (++!6057 (list!9143 (left!17746 (right!18076 t!4319))) (list!9143 (right!18076 (right!18076 t!4319)))))))

(declare-fun d!624930 () Bool)

(declare-fun c!330696 () Bool)

(assert (=> d!624930 (= c!330696 ((_ is Empty!7473) (right!18076 t!4319)))))

(assert (=> d!624930 (= (list!9143 (right!18076 t!4319)) e!1288086)))

(assert (= (and d!624930 c!330696) b!2040311))

(assert (= (and d!624930 (not c!330696)) b!2040312))

(assert (= (and b!2040312 c!330697) b!2040313))

(assert (= (and b!2040312 (not c!330697)) b!2040314))

(declare-fun m!2484283 () Bool)

(assert (=> b!2040313 m!2484283))

(assert (=> b!2040314 m!2484231))

(assert (=> b!2040314 m!2484227))

(assert (=> b!2040314 m!2484231))

(assert (=> b!2040314 m!2484227))

(declare-fun m!2484285 () Bool)

(assert (=> b!2040314 m!2484285))

(assert (=> b!2039902 d!624930))

(declare-fun b!2040315 () Bool)

(declare-fun e!1288088 () List!22363)

(declare-fun e!1288089 () List!22363)

(assert (=> b!2040315 (= e!1288088 e!1288089)))

(declare-fun c!330698 () Bool)

(assert (=> b!2040315 (= c!330698 (dynLambda!11109 p!1489 (h!27682 lt!765361)))))

(declare-fun b!2040316 () Bool)

(declare-fun call!125228 () List!22363)

(assert (=> b!2040316 (= e!1288089 call!125228)))

(declare-fun bm!125223 () Bool)

(assert (=> bm!125223 (= call!125228 (filter!484 (t!191448 lt!765361) p!1489))))

(declare-fun d!624932 () Bool)

(declare-fun e!1288090 () Bool)

(assert (=> d!624932 e!1288090))

(declare-fun res!894367 () Bool)

(assert (=> d!624932 (=> (not res!894367) (not e!1288090))))

(declare-fun lt!765437 () List!22363)

(assert (=> d!624932 (= res!894367 (<= (size!17439 lt!765437) (size!17439 lt!765361)))))

(assert (=> d!624932 (= lt!765437 e!1288088)))

(declare-fun c!330699 () Bool)

(assert (=> d!624932 (= c!330699 ((_ is Nil!22281) lt!765361))))

(assert (=> d!624932 (= (filter!484 lt!765361 p!1489) lt!765437)))

(declare-fun b!2040317 () Bool)

(assert (=> b!2040317 (= e!1288089 (Cons!22281 (h!27682 lt!765361) call!125228))))

(declare-fun b!2040318 () Bool)

(assert (=> b!2040318 (= e!1288090 (forall!4759 lt!765437 p!1489))))

(declare-fun b!2040319 () Bool)

(assert (=> b!2040319 (= e!1288088 Nil!22281)))

(declare-fun b!2040320 () Bool)

(declare-fun res!894368 () Bool)

(assert (=> b!2040320 (=> (not res!894368) (not e!1288090))))

(assert (=> b!2040320 (= res!894368 (= ((_ map implies) (content!3312 lt!765437) (content!3312 lt!765361)) ((as const (InoxSet T!36032)) true)))))

(assert (= (and d!624932 c!330699) b!2040319))

(assert (= (and d!624932 (not c!330699)) b!2040315))

(assert (= (and b!2040315 c!330698) b!2040317))

(assert (= (and b!2040315 (not c!330698)) b!2040316))

(assert (= (or b!2040317 b!2040316) bm!125223))

(assert (= (and d!624932 res!894367) b!2040320))

(assert (= (and b!2040320 res!894368) b!2040318))

(declare-fun b_lambda!69043 () Bool)

(assert (=> (not b_lambda!69043) (not b!2040315)))

(declare-fun t!191470 () Bool)

(declare-fun tb!128979 () Bool)

(assert (=> (and start!201056 (= p!1489 p!1489) t!191470) tb!128979))

(declare-fun result!154302 () Bool)

(assert (=> tb!128979 (= result!154302 true)))

(assert (=> b!2040315 t!191470))

(declare-fun b_and!162775 () Bool)

(assert (= b_and!162773 (and (=> t!191470 result!154302) b_and!162775)))

(declare-fun m!2484287 () Bool)

(assert (=> bm!125223 m!2484287))

(declare-fun m!2484289 () Bool)

(assert (=> b!2040318 m!2484289))

(declare-fun m!2484291 () Bool)

(assert (=> d!624932 m!2484291))

(assert (=> d!624932 m!2484253))

(declare-fun m!2484293 () Bool)

(assert (=> b!2040315 m!2484293))

(declare-fun m!2484295 () Bool)

(assert (=> b!2040320 m!2484295))

(assert (=> b!2040320 m!2484247))

(assert (=> b!2039902 d!624932))

(declare-fun d!624934 () Bool)

(declare-fun e!1288091 () Bool)

(assert (=> d!624934 e!1288091))

(declare-fun res!894369 () Bool)

(assert (=> d!624934 (=> (not res!894369) (not e!1288091))))

(declare-fun lt!765438 () List!22363)

(assert (=> d!624934 (= res!894369 (= (content!3312 lt!765438) ((_ map or) (content!3312 (filter!484 lt!765361 p!1489)) (content!3312 (filter!484 lt!765364 p!1489)))))))

(declare-fun e!1288092 () List!22363)

(assert (=> d!624934 (= lt!765438 e!1288092)))

(declare-fun c!330700 () Bool)

(assert (=> d!624934 (= c!330700 ((_ is Nil!22281) (filter!484 lt!765361 p!1489)))))

(assert (=> d!624934 (= (++!6057 (filter!484 lt!765361 p!1489) (filter!484 lt!765364 p!1489)) lt!765438)))

(declare-fun b!2040323 () Bool)

(declare-fun res!894370 () Bool)

(assert (=> b!2040323 (=> (not res!894370) (not e!1288091))))

(assert (=> b!2040323 (= res!894370 (= (size!17439 lt!765438) (+ (size!17439 (filter!484 lt!765361 p!1489)) (size!17439 (filter!484 lt!765364 p!1489)))))))

(declare-fun b!2040322 () Bool)

(assert (=> b!2040322 (= e!1288092 (Cons!22281 (h!27682 (filter!484 lt!765361 p!1489)) (++!6057 (t!191448 (filter!484 lt!765361 p!1489)) (filter!484 lt!765364 p!1489))))))

(declare-fun b!2040324 () Bool)

(assert (=> b!2040324 (= e!1288091 (or (not (= (filter!484 lt!765364 p!1489) Nil!22281)) (= lt!765438 (filter!484 lt!765361 p!1489))))))

(declare-fun b!2040321 () Bool)

(assert (=> b!2040321 (= e!1288092 (filter!484 lt!765364 p!1489))))

(assert (= (and d!624934 c!330700) b!2040321))

(assert (= (and d!624934 (not c!330700)) b!2040322))

(assert (= (and d!624934 res!894369) b!2040323))

(assert (= (and b!2040323 res!894370) b!2040324))

(declare-fun m!2484297 () Bool)

(assert (=> d!624934 m!2484297))

(assert (=> d!624934 m!2483853))

(declare-fun m!2484299 () Bool)

(assert (=> d!624934 m!2484299))

(assert (=> d!624934 m!2483855))

(declare-fun m!2484301 () Bool)

(assert (=> d!624934 m!2484301))

(declare-fun m!2484303 () Bool)

(assert (=> b!2040323 m!2484303))

(assert (=> b!2040323 m!2483853))

(declare-fun m!2484305 () Bool)

(assert (=> b!2040323 m!2484305))

(assert (=> b!2040323 m!2483855))

(declare-fun m!2484307 () Bool)

(assert (=> b!2040323 m!2484307))

(assert (=> b!2040322 m!2483855))

(declare-fun m!2484309 () Bool)

(assert (=> b!2040322 m!2484309))

(assert (=> b!2039902 d!624934))

(declare-fun d!624936 () Bool)

(assert (=> d!624936 (= (inv!29605 (xs!10377 t!4319)) (<= (size!17439 (innerList!7533 (xs!10377 t!4319))) 2147483647))))

(declare-fun bs!421490 () Bool)

(assert (= bs!421490 d!624936))

(declare-fun m!2484311 () Bool)

(assert (=> bs!421490 m!2484311))

(assert (=> b!2039900 d!624936))

(declare-fun b!2040325 () Bool)

(declare-fun res!894372 () Bool)

(declare-fun e!1288093 () Bool)

(assert (=> b!2040325 (=> (not res!894372) (not e!1288093))))

(assert (=> b!2040325 (= res!894372 (isBalanced!2351 (left!17746 t!4319)))))

(declare-fun b!2040326 () Bool)

(assert (=> b!2040326 (= e!1288093 (not (isEmpty!13941 (right!18076 t!4319))))))

(declare-fun b!2040328 () Bool)

(declare-fun res!894371 () Bool)

(assert (=> b!2040328 (=> (not res!894371) (not e!1288093))))

(assert (=> b!2040328 (= res!894371 (isBalanced!2351 (right!18076 t!4319)))))

(declare-fun b!2040329 () Bool)

(declare-fun res!894373 () Bool)

(assert (=> b!2040329 (=> (not res!894373) (not e!1288093))))

(assert (=> b!2040329 (= res!894373 (<= (- (height!1173 (left!17746 t!4319)) (height!1173 (right!18076 t!4319))) 1))))

(declare-fun b!2040330 () Bool)

(declare-fun e!1288094 () Bool)

(assert (=> b!2040330 (= e!1288094 e!1288093)))

(declare-fun res!894376 () Bool)

(assert (=> b!2040330 (=> (not res!894376) (not e!1288093))))

(assert (=> b!2040330 (= res!894376 (<= (- 1) (- (height!1173 (left!17746 t!4319)) (height!1173 (right!18076 t!4319)))))))

(declare-fun b!2040327 () Bool)

(declare-fun res!894374 () Bool)

(assert (=> b!2040327 (=> (not res!894374) (not e!1288093))))

(assert (=> b!2040327 (= res!894374 (not (isEmpty!13941 (left!17746 t!4319))))))

(declare-fun d!624938 () Bool)

(declare-fun res!894375 () Bool)

(assert (=> d!624938 (=> res!894375 e!1288094)))

(assert (=> d!624938 (= res!894375 (not ((_ is Node!7473) t!4319)))))

(assert (=> d!624938 (= (isBalanced!2351 t!4319) e!1288094)))

(assert (= (and d!624938 (not res!894375)) b!2040330))

(assert (= (and b!2040330 res!894376) b!2040329))

(assert (= (and b!2040329 res!894373) b!2040325))

(assert (= (and b!2040325 res!894372) b!2040328))

(assert (= (and b!2040328 res!894371) b!2040327))

(assert (= (and b!2040327 res!894374) b!2040326))

(declare-fun m!2484313 () Bool)

(assert (=> b!2040327 m!2484313))

(declare-fun m!2484315 () Bool)

(assert (=> b!2040330 m!2484315))

(declare-fun m!2484317 () Bool)

(assert (=> b!2040330 m!2484317))

(assert (=> b!2040328 m!2484217))

(assert (=> b!2040325 m!2484181))

(declare-fun m!2484319 () Bool)

(assert (=> b!2040326 m!2484319))

(assert (=> b!2040329 m!2484315))

(assert (=> b!2040329 m!2484317))

(assert (=> start!201056 d!624938))

(declare-fun d!624940 () Bool)

(declare-fun c!330701 () Bool)

(assert (=> d!624940 (= c!330701 ((_ is Node!7473) t!4319))))

(declare-fun e!1288095 () Bool)

(assert (=> d!624940 (= (inv!29604 t!4319) e!1288095)))

(declare-fun b!2040331 () Bool)

(assert (=> b!2040331 (= e!1288095 (inv!29606 t!4319))))

(declare-fun b!2040332 () Bool)

(declare-fun e!1288096 () Bool)

(assert (=> b!2040332 (= e!1288095 e!1288096)))

(declare-fun res!894377 () Bool)

(assert (=> b!2040332 (= res!894377 (not ((_ is Leaf!10951) t!4319)))))

(assert (=> b!2040332 (=> res!894377 e!1288096)))

(declare-fun b!2040333 () Bool)

(assert (=> b!2040333 (= e!1288096 (inv!29607 t!4319))))

(assert (= (and d!624940 c!330701) b!2040331))

(assert (= (and d!624940 (not c!330701)) b!2040332))

(assert (= (and b!2040332 (not res!894377)) b!2040333))

(declare-fun m!2484321 () Bool)

(assert (=> b!2040331 m!2484321))

(declare-fun m!2484323 () Bool)

(assert (=> b!2040333 m!2484323))

(assert (=> start!201056 d!624940))

(declare-fun b!2040342 () Bool)

(declare-fun tp!605350 () Bool)

(declare-fun e!1288102 () Bool)

(declare-fun tp!605348 () Bool)

(assert (=> b!2040342 (= e!1288102 (and (inv!29604 (left!17746 (left!17746 t!4319))) tp!605350 (inv!29604 (right!18076 (left!17746 t!4319))) tp!605348))))

(declare-fun b!2040344 () Bool)

(declare-fun e!1288101 () Bool)

(declare-fun tp!605349 () Bool)

(assert (=> b!2040344 (= e!1288101 tp!605349)))

(declare-fun b!2040343 () Bool)

(assert (=> b!2040343 (= e!1288102 (and (inv!29605 (xs!10377 (left!17746 t!4319))) e!1288101))))

(assert (=> b!2039897 (= tp!605324 (and (inv!29604 (left!17746 t!4319)) e!1288102))))

(assert (= (and b!2039897 ((_ is Node!7473) (left!17746 t!4319))) b!2040342))

(assert (= b!2040343 b!2040344))

(assert (= (and b!2039897 ((_ is Leaf!10951) (left!17746 t!4319))) b!2040343))

(declare-fun m!2484325 () Bool)

(assert (=> b!2040342 m!2484325))

(declare-fun m!2484327 () Bool)

(assert (=> b!2040342 m!2484327))

(declare-fun m!2484329 () Bool)

(assert (=> b!2040343 m!2484329))

(assert (=> b!2039897 m!2483869))

(declare-fun tp!605351 () Bool)

(declare-fun tp!605353 () Bool)

(declare-fun e!1288104 () Bool)

(declare-fun b!2040345 () Bool)

(assert (=> b!2040345 (= e!1288104 (and (inv!29604 (left!17746 (right!18076 t!4319))) tp!605353 (inv!29604 (right!18076 (right!18076 t!4319))) tp!605351))))

(declare-fun b!2040347 () Bool)

(declare-fun e!1288103 () Bool)

(declare-fun tp!605352 () Bool)

(assert (=> b!2040347 (= e!1288103 tp!605352)))

(declare-fun b!2040346 () Bool)

(assert (=> b!2040346 (= e!1288104 (and (inv!29605 (xs!10377 (right!18076 t!4319))) e!1288103))))

(assert (=> b!2039897 (= tp!605323 (and (inv!29604 (right!18076 t!4319)) e!1288104))))

(assert (= (and b!2039897 ((_ is Node!7473) (right!18076 t!4319))) b!2040345))

(assert (= b!2040346 b!2040347))

(assert (= (and b!2039897 ((_ is Leaf!10951) (right!18076 t!4319))) b!2040346))

(declare-fun m!2484331 () Bool)

(assert (=> b!2040345 m!2484331))

(declare-fun m!2484333 () Bool)

(assert (=> b!2040345 m!2484333))

(declare-fun m!2484335 () Bool)

(assert (=> b!2040346 m!2484335))

(assert (=> b!2039897 m!2483871))

(declare-fun b!2040352 () Bool)

(declare-fun e!1288107 () Bool)

(declare-fun tp_is_empty!9285 () Bool)

(declare-fun tp!605356 () Bool)

(assert (=> b!2040352 (= e!1288107 (and tp_is_empty!9285 tp!605356))))

(assert (=> b!2039899 (= tp!605326 e!1288107)))

(assert (= (and b!2039899 ((_ is Cons!22281) (innerList!7533 (xs!10377 t!4319)))) b!2040352))

(declare-fun b_lambda!69045 () Bool)

(assert (= b_lambda!69021 (or (and start!201056 b_free!56835) b_lambda!69045)))

(declare-fun b_lambda!69047 () Bool)

(assert (= b_lambda!69039 (or (and start!201056 b_free!56835) b_lambda!69047)))

(declare-fun b_lambda!69049 () Bool)

(assert (= b_lambda!69041 (or (and start!201056 b_free!56835) b_lambda!69049)))

(declare-fun b_lambda!69051 () Bool)

(assert (= b_lambda!69043 (or (and start!201056 b_free!56835) b_lambda!69051)))

(check-sat (not b!2040142) (not b!2040342) (not b!2040255) (not d!624932) b_and!162775 (not b!2039966) (not b!2040134) (not b!2040285) (not b!2040325) (not b!2039938) (not b!2039914) (not b!2039965) (not b!2039962) (not b!2040256) (not b!2040277) (not b!2040275) (not b!2040322) (not b!2040135) (not bm!125212) (not bm!125208) (not b!2040329) (not b!2039979) (not bm!125223) (not b!2039960) (not d!624936) (not b_lambda!69045) (not bm!125118) (not bm!125199) (not bm!125206) (not b!2040333) (not b!2040286) (not b_next!57539) (not b!2039980) (not b!2040304) (not b!2040296) (not b!2040252) (not b!2040344) (not b!2040326) (not b_lambda!69051) (not b!2040327) (not d!624928) (not b!2040254) (not b!2039983) (not b!2040310) (not d!624926) (not b!2040330) (not d!624880) (not b!2039937) (not d!624896) (not b_lambda!69047) (not b!2040346) (not b!2040313) (not b!2040318) (not b!2040352) (not b!2039984) (not d!624924) (not b!2039982) (not d!624872) (not b!2040128) (not d!624934) (not bm!125202) (not b!2039981) (not bm!125221) (not b!2040297) (not b!2040331) (not d!624918) (not b!2040347) (not b!2040323) (not bm!125222) (not b!2040328) (not b!2040132) (not b!2039897) (not bm!125205) (not b!2040302) (not b!2039911) (not b!2040314) (not b!2040345) (not b!2040273) (not b!2040320) (not b!2040343) (not d!624920) (not b_lambda!69049) (not b!2039909) (not bm!125211) tp_is_empty!9285 (not b!2040308) (not b!2039912) (not b!2040129) (not b!2040276))
(check-sat b_and!162775 (not b_next!57539))
