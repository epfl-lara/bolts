; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183622 () Bool)

(assert start!183622)

(declare-fun b_free!51513 () Bool)

(declare-fun b_next!52217 () Bool)

(assert (=> start!183622 (= b_free!51513 (not b_next!52217))))

(declare-fun tp!521090 () Bool)

(declare-fun b_and!143663 () Bool)

(assert (=> start!183622 (= tp!521090 b_and!143663)))

(declare-fun tp!521091 () Bool)

(declare-fun tp!521089 () Bool)

(declare-fun b!1843294 () Bool)

(declare-fun e!1177865 () Bool)

(declare-datatypes ((T!31892 0))(
  ( (T!31893 (val!5756 Int)) )
))
(declare-datatypes ((List!20356 0))(
  ( (Nil!20286) (Cons!20286 (h!25687 T!31892) (t!171847 List!20356)) )
))
(declare-datatypes ((IArray!13427 0))(
  ( (IArray!13428 (innerList!6771 List!20356)) )
))
(declare-datatypes ((Conc!6711 0))(
  ( (Node!6711 (left!16228 Conc!6711) (right!16558 Conc!6711) (csize!13652 Int) (cheight!6922 Int)) (Leaf!9803 (xs!9587 IArray!13427) (csize!13653 Int)) (Empty!6711) )
))
(declare-fun t!3734 () Conc!6711)

(declare-fun inv!26525 (Conc!6711) Bool)

(assert (=> b!1843294 (= e!1177865 (and (inv!26525 (left!16228 t!3734)) tp!521089 (inv!26525 (right!16558 t!3734)) tp!521091))))

(declare-fun e!1177867 () Bool)

(declare-fun e!1177866 () Bool)

(declare-fun p!1470 () Int)

(declare-fun b!1843295 () Bool)

(declare-fun exists!668 (List!20356 Int) Bool)

(declare-fun list!8256 (Conc!6711) List!20356)

(assert (=> b!1843295 (= e!1177867 (not (= e!1177866 (exists!668 (list!8256 t!3734) p!1470))))))

(declare-fun res!828068 () Bool)

(assert (=> b!1843295 (=> res!828068 e!1177866)))

(declare-fun exists!669 (Conc!6711 Int) Bool)

(assert (=> b!1843295 (= res!828068 (exists!669 (left!16228 t!3734) p!1470))))

(declare-datatypes ((Unit!34999 0))(
  ( (Unit!35000) )
))
(declare-fun lt!714558 () Unit!34999)

(declare-fun lemmaExistsConcat!8 (List!20356 List!20356 Int) Unit!34999)

(assert (=> b!1843295 (= lt!714558 (lemmaExistsConcat!8 (list!8256 (left!16228 t!3734)) (list!8256 (right!16558 t!3734)) p!1470))))

(declare-fun b!1843296 () Bool)

(declare-fun e!1177868 () Bool)

(declare-fun inv!26526 (IArray!13427) Bool)

(assert (=> b!1843296 (= e!1177865 (and (inv!26526 (xs!9587 t!3734)) e!1177868))))

(declare-fun b!1843297 () Bool)

(declare-fun tp!521092 () Bool)

(assert (=> b!1843297 (= e!1177868 tp!521092)))

(declare-fun b!1843298 () Bool)

(assert (=> b!1843298 (= e!1177866 (exists!669 (right!16558 t!3734) p!1470))))

(declare-fun res!828067 () Bool)

(assert (=> start!183622 (=> (not res!828067) (not e!1177867))))

(get-info :version)

(assert (=> start!183622 (= res!828067 (and (not ((_ is Empty!6711) t!3734)) (not ((_ is Leaf!9803) t!3734))))))

(assert (=> start!183622 e!1177867))

(assert (=> start!183622 (and (inv!26525 t!3734) e!1177865)))

(assert (=> start!183622 tp!521090))

(assert (= (and start!183622 res!828067) b!1843295))

(assert (= (and b!1843295 (not res!828068)) b!1843298))

(assert (= (and start!183622 ((_ is Node!6711) t!3734)) b!1843294))

(assert (= b!1843296 b!1843297))

(assert (= (and start!183622 ((_ is Leaf!9803) t!3734)) b!1843296))

(declare-fun m!2271871 () Bool)

(assert (=> start!183622 m!2271871))

(declare-fun m!2271873 () Bool)

(assert (=> b!1843296 m!2271873))

(declare-fun m!2271875 () Bool)

(assert (=> b!1843298 m!2271875))

(declare-fun m!2271877 () Bool)

(assert (=> b!1843295 m!2271877))

(declare-fun m!2271879 () Bool)

(assert (=> b!1843295 m!2271879))

(declare-fun m!2271881 () Bool)

(assert (=> b!1843295 m!2271881))

(declare-fun m!2271883 () Bool)

(assert (=> b!1843295 m!2271883))

(assert (=> b!1843295 m!2271877))

(assert (=> b!1843295 m!2271883))

(declare-fun m!2271885 () Bool)

(assert (=> b!1843295 m!2271885))

(assert (=> b!1843295 m!2271881))

(declare-fun m!2271887 () Bool)

(assert (=> b!1843295 m!2271887))

(declare-fun m!2271889 () Bool)

(assert (=> b!1843294 m!2271889))

(declare-fun m!2271891 () Bool)

(assert (=> b!1843294 m!2271891))

(check-sat (not b!1843298) (not b!1843294) b_and!143663 (not b!1843296) (not b_next!52217) (not start!183622) (not b!1843297) (not b!1843295))
(check-sat b_and!143663 (not b_next!52217))
(get-model)

(declare-fun b!1843317 () Bool)

(declare-fun e!1177881 () Bool)

(declare-fun exists!670 (IArray!13427 Int) Bool)

(assert (=> b!1843317 (= e!1177881 (exists!670 (xs!9587 (right!16558 t!3734)) p!1470))))

(declare-fun b!1843316 () Bool)

(declare-fun e!1177882 () Bool)

(assert (=> b!1843316 (= e!1177882 e!1177881)))

(declare-fun c!300973 () Bool)

(assert (=> b!1843316 (= c!300973 ((_ is Leaf!9803) (right!16558 t!3734)))))

(declare-fun d!564236 () Bool)

(declare-fun lt!714563 () Bool)

(assert (=> d!564236 (= lt!714563 (exists!668 (list!8256 (right!16558 t!3734)) p!1470))))

(assert (=> d!564236 (= lt!714563 e!1177882)))

(declare-fun res!828077 () Bool)

(assert (=> d!564236 (=> (not res!828077) (not e!1177882))))

(assert (=> d!564236 (= res!828077 (not ((_ is Empty!6711) (right!16558 t!3734))))))

(assert (=> d!564236 (= (exists!669 (right!16558 t!3734) p!1470) lt!714563)))

(declare-fun b!1843319 () Bool)

(declare-fun e!1177883 () Bool)

(assert (=> b!1843319 (= e!1177883 (exists!669 (right!16558 (right!16558 t!3734)) p!1470))))

(declare-fun b!1843318 () Bool)

(assert (=> b!1843318 (= e!1177881 e!1177883)))

(declare-fun lt!714564 () Unit!34999)

(assert (=> b!1843318 (= lt!714564 (lemmaExistsConcat!8 (list!8256 (left!16228 (right!16558 t!3734))) (list!8256 (right!16558 (right!16558 t!3734))) p!1470))))

(declare-fun res!828076 () Bool)

(assert (=> b!1843318 (= res!828076 (exists!669 (left!16228 (right!16558 t!3734)) p!1470))))

(assert (=> b!1843318 (=> res!828076 e!1177883)))

(assert (= (and d!564236 res!828077) b!1843316))

(assert (= (and b!1843316 c!300973) b!1843317))

(assert (= (and b!1843316 (not c!300973)) b!1843318))

(assert (= (and b!1843318 (not res!828076)) b!1843319))

(declare-fun m!2271897 () Bool)

(assert (=> b!1843317 m!2271897))

(assert (=> d!564236 m!2271883))

(assert (=> d!564236 m!2271883))

(declare-fun m!2271899 () Bool)

(assert (=> d!564236 m!2271899))

(declare-fun m!2271901 () Bool)

(assert (=> b!1843319 m!2271901))

(declare-fun m!2271903 () Bool)

(assert (=> b!1843318 m!2271903))

(declare-fun m!2271905 () Bool)

(assert (=> b!1843318 m!2271905))

(assert (=> b!1843318 m!2271903))

(assert (=> b!1843318 m!2271905))

(declare-fun m!2271907 () Bool)

(assert (=> b!1843318 m!2271907))

(declare-fun m!2271909 () Bool)

(assert (=> b!1843318 m!2271909))

(assert (=> b!1843298 d!564236))

(declare-fun d!564240 () Bool)

(declare-fun c!300979 () Bool)

(assert (=> d!564240 (= c!300979 ((_ is Node!6711) t!3734))))

(declare-fun e!1177897 () Bool)

(assert (=> d!564240 (= (inv!26525 t!3734) e!1177897)))

(declare-fun b!1843338 () Bool)

(declare-fun inv!26529 (Conc!6711) Bool)

(assert (=> b!1843338 (= e!1177897 (inv!26529 t!3734))))

(declare-fun b!1843339 () Bool)

(declare-fun e!1177898 () Bool)

(assert (=> b!1843339 (= e!1177897 e!1177898)))

(declare-fun res!828086 () Bool)

(assert (=> b!1843339 (= res!828086 (not ((_ is Leaf!9803) t!3734)))))

(assert (=> b!1843339 (=> res!828086 e!1177898)))

(declare-fun b!1843340 () Bool)

(declare-fun inv!26530 (Conc!6711) Bool)

(assert (=> b!1843340 (= e!1177898 (inv!26530 t!3734))))

(assert (= (and d!564240 c!300979) b!1843338))

(assert (= (and d!564240 (not c!300979)) b!1843339))

(assert (= (and b!1843339 (not res!828086)) b!1843340))

(declare-fun m!2271911 () Bool)

(assert (=> b!1843338 m!2271911))

(declare-fun m!2271913 () Bool)

(assert (=> b!1843340 m!2271913))

(assert (=> start!183622 d!564240))

(declare-fun d!564242 () Bool)

(declare-fun c!300980 () Bool)

(assert (=> d!564242 (= c!300980 ((_ is Node!6711) (left!16228 t!3734)))))

(declare-fun e!1177899 () Bool)

(assert (=> d!564242 (= (inv!26525 (left!16228 t!3734)) e!1177899)))

(declare-fun b!1843341 () Bool)

(assert (=> b!1843341 (= e!1177899 (inv!26529 (left!16228 t!3734)))))

(declare-fun b!1843342 () Bool)

(declare-fun e!1177900 () Bool)

(assert (=> b!1843342 (= e!1177899 e!1177900)))

(declare-fun res!828087 () Bool)

(assert (=> b!1843342 (= res!828087 (not ((_ is Leaf!9803) (left!16228 t!3734))))))

(assert (=> b!1843342 (=> res!828087 e!1177900)))

(declare-fun b!1843343 () Bool)

(assert (=> b!1843343 (= e!1177900 (inv!26530 (left!16228 t!3734)))))

(assert (= (and d!564242 c!300980) b!1843341))

(assert (= (and d!564242 (not c!300980)) b!1843342))

(assert (= (and b!1843342 (not res!828087)) b!1843343))

(declare-fun m!2271919 () Bool)

(assert (=> b!1843341 m!2271919))

(declare-fun m!2271923 () Bool)

(assert (=> b!1843343 m!2271923))

(assert (=> b!1843294 d!564242))

(declare-fun d!564244 () Bool)

(declare-fun c!300981 () Bool)

(assert (=> d!564244 (= c!300981 ((_ is Node!6711) (right!16558 t!3734)))))

(declare-fun e!1177901 () Bool)

(assert (=> d!564244 (= (inv!26525 (right!16558 t!3734)) e!1177901)))

(declare-fun b!1843344 () Bool)

(assert (=> b!1843344 (= e!1177901 (inv!26529 (right!16558 t!3734)))))

(declare-fun b!1843345 () Bool)

(declare-fun e!1177902 () Bool)

(assert (=> b!1843345 (= e!1177901 e!1177902)))

(declare-fun res!828088 () Bool)

(assert (=> b!1843345 (= res!828088 (not ((_ is Leaf!9803) (right!16558 t!3734))))))

(assert (=> b!1843345 (=> res!828088 e!1177902)))

(declare-fun b!1843346 () Bool)

(assert (=> b!1843346 (= e!1177902 (inv!26530 (right!16558 t!3734)))))

(assert (= (and d!564244 c!300981) b!1843344))

(assert (= (and d!564244 (not c!300981)) b!1843345))

(assert (= (and b!1843345 (not res!828088)) b!1843346))

(declare-fun m!2271933 () Bool)

(assert (=> b!1843344 m!2271933))

(declare-fun m!2271935 () Bool)

(assert (=> b!1843346 m!2271935))

(assert (=> b!1843294 d!564244))

(declare-fun b!1843366 () Bool)

(declare-fun e!1177912 () List!20356)

(declare-fun ++!5519 (List!20356 List!20356) List!20356)

(assert (=> b!1843366 (= e!1177912 (++!5519 (list!8256 (left!16228 t!3734)) (list!8256 (right!16558 t!3734))))))

(declare-fun d!564248 () Bool)

(declare-fun c!300990 () Bool)

(assert (=> d!564248 (= c!300990 ((_ is Empty!6711) t!3734))))

(declare-fun e!1177911 () List!20356)

(assert (=> d!564248 (= (list!8256 t!3734) e!1177911)))

(declare-fun b!1843365 () Bool)

(declare-fun list!8258 (IArray!13427) List!20356)

(assert (=> b!1843365 (= e!1177912 (list!8258 (xs!9587 t!3734)))))

(declare-fun b!1843364 () Bool)

(assert (=> b!1843364 (= e!1177911 e!1177912)))

(declare-fun c!300991 () Bool)

(assert (=> b!1843364 (= c!300991 ((_ is Leaf!9803) t!3734))))

(declare-fun b!1843363 () Bool)

(assert (=> b!1843363 (= e!1177911 Nil!20286)))

(assert (= (and d!564248 c!300990) b!1843363))

(assert (= (and d!564248 (not c!300990)) b!1843364))

(assert (= (and b!1843364 c!300991) b!1843365))

(assert (= (and b!1843364 (not c!300991)) b!1843366))

(assert (=> b!1843366 m!2271877))

(assert (=> b!1843366 m!2271883))

(assert (=> b!1843366 m!2271877))

(assert (=> b!1843366 m!2271883))

(declare-fun m!2271939 () Bool)

(assert (=> b!1843366 m!2271939))

(declare-fun m!2271941 () Bool)

(assert (=> b!1843365 m!2271941))

(assert (=> b!1843295 d!564248))

(declare-fun d!564252 () Bool)

(declare-fun e!1177917 () Bool)

(assert (=> d!564252 (= (exists!668 (++!5519 (list!8256 (left!16228 t!3734)) (list!8256 (right!16558 t!3734))) p!1470) e!1177917)))

(declare-fun res!828091 () Bool)

(assert (=> d!564252 (=> res!828091 e!1177917)))

(assert (=> d!564252 (= res!828091 (exists!668 (list!8256 (left!16228 t!3734)) p!1470))))

(declare-fun lt!714573 () Unit!34999)

(declare-fun choose!11597 (List!20356 List!20356 Int) Unit!34999)

(assert (=> d!564252 (= lt!714573 (choose!11597 (list!8256 (left!16228 t!3734)) (list!8256 (right!16558 t!3734)) p!1470))))

(assert (=> d!564252 (= (lemmaExistsConcat!8 (list!8256 (left!16228 t!3734)) (list!8256 (right!16558 t!3734)) p!1470) lt!714573)))

(declare-fun b!1843373 () Bool)

(assert (=> b!1843373 (= e!1177917 (exists!668 (list!8256 (right!16558 t!3734)) p!1470))))

(assert (= (and d!564252 (not res!828091)) b!1843373))

(assert (=> d!564252 m!2271877))

(assert (=> d!564252 m!2271883))

(assert (=> d!564252 m!2271939))

(assert (=> d!564252 m!2271939))

(declare-fun m!2271947 () Bool)

(assert (=> d!564252 m!2271947))

(assert (=> d!564252 m!2271877))

(declare-fun m!2271949 () Bool)

(assert (=> d!564252 m!2271949))

(assert (=> d!564252 m!2271877))

(assert (=> d!564252 m!2271883))

(declare-fun m!2271951 () Bool)

(assert (=> d!564252 m!2271951))

(assert (=> b!1843373 m!2271883))

(assert (=> b!1843373 m!2271899))

(assert (=> b!1843295 d!564252))

(declare-fun b!1843375 () Bool)

(declare-fun e!1177918 () Bool)

(assert (=> b!1843375 (= e!1177918 (exists!670 (xs!9587 (left!16228 t!3734)) p!1470))))

(declare-fun b!1843374 () Bool)

(declare-fun e!1177919 () Bool)

(assert (=> b!1843374 (= e!1177919 e!1177918)))

(declare-fun c!300994 () Bool)

(assert (=> b!1843374 (= c!300994 ((_ is Leaf!9803) (left!16228 t!3734)))))

(declare-fun d!564256 () Bool)

(declare-fun lt!714574 () Bool)

(assert (=> d!564256 (= lt!714574 (exists!668 (list!8256 (left!16228 t!3734)) p!1470))))

(assert (=> d!564256 (= lt!714574 e!1177919)))

(declare-fun res!828093 () Bool)

(assert (=> d!564256 (=> (not res!828093) (not e!1177919))))

(assert (=> d!564256 (= res!828093 (not ((_ is Empty!6711) (left!16228 t!3734))))))

(assert (=> d!564256 (= (exists!669 (left!16228 t!3734) p!1470) lt!714574)))

(declare-fun b!1843377 () Bool)

(declare-fun e!1177920 () Bool)

(assert (=> b!1843377 (= e!1177920 (exists!669 (right!16558 (left!16228 t!3734)) p!1470))))

(declare-fun b!1843376 () Bool)

(assert (=> b!1843376 (= e!1177918 e!1177920)))

(declare-fun lt!714575 () Unit!34999)

(assert (=> b!1843376 (= lt!714575 (lemmaExistsConcat!8 (list!8256 (left!16228 (left!16228 t!3734))) (list!8256 (right!16558 (left!16228 t!3734))) p!1470))))

(declare-fun res!828092 () Bool)

(assert (=> b!1843376 (= res!828092 (exists!669 (left!16228 (left!16228 t!3734)) p!1470))))

(assert (=> b!1843376 (=> res!828092 e!1177920)))

(assert (= (and d!564256 res!828093) b!1843374))

(assert (= (and b!1843374 c!300994) b!1843375))

(assert (= (and b!1843374 (not c!300994)) b!1843376))

(assert (= (and b!1843376 (not res!828092)) b!1843377))

(declare-fun m!2271953 () Bool)

(assert (=> b!1843375 m!2271953))

(assert (=> d!564256 m!2271877))

(assert (=> d!564256 m!2271877))

(assert (=> d!564256 m!2271949))

(declare-fun m!2271955 () Bool)

(assert (=> b!1843377 m!2271955))

(declare-fun m!2271957 () Bool)

(assert (=> b!1843376 m!2271957))

(declare-fun m!2271959 () Bool)

(assert (=> b!1843376 m!2271959))

(assert (=> b!1843376 m!2271957))

(assert (=> b!1843376 m!2271959))

(declare-fun m!2271961 () Bool)

(assert (=> b!1843376 m!2271961))

(declare-fun m!2271963 () Bool)

(assert (=> b!1843376 m!2271963))

(assert (=> b!1843295 d!564256))

(declare-fun d!564258 () Bool)

(assert (=> d!564258 true))

(declare-fun order!13089 () Int)

(declare-fun lambda!72347 () Int)

(declare-fun dynLambda!10091 (Int Int) Int)

(assert (=> d!564258 (< (dynLambda!10091 order!13089 p!1470) (dynLambda!10091 order!13089 lambda!72347))))

(declare-fun forall!4365 (List!20356 Int) Bool)

(assert (=> d!564258 (= (exists!668 (list!8256 t!3734) p!1470) (not (forall!4365 (list!8256 t!3734) lambda!72347)))))

(declare-fun bs!408781 () Bool)

(assert (= bs!408781 d!564258))

(assert (=> bs!408781 m!2271881))

(declare-fun m!2271971 () Bool)

(assert (=> bs!408781 m!2271971))

(assert (=> b!1843295 d!564258))

(declare-fun b!1843390 () Bool)

(declare-fun e!1177928 () List!20356)

(assert (=> b!1843390 (= e!1177928 (++!5519 (list!8256 (left!16228 (right!16558 t!3734))) (list!8256 (right!16558 (right!16558 t!3734)))))))

(declare-fun d!564262 () Bool)

(declare-fun c!300996 () Bool)

(assert (=> d!564262 (= c!300996 ((_ is Empty!6711) (right!16558 t!3734)))))

(declare-fun e!1177927 () List!20356)

(assert (=> d!564262 (= (list!8256 (right!16558 t!3734)) e!1177927)))

(declare-fun b!1843389 () Bool)

(assert (=> b!1843389 (= e!1177928 (list!8258 (xs!9587 (right!16558 t!3734))))))

(declare-fun b!1843388 () Bool)

(assert (=> b!1843388 (= e!1177927 e!1177928)))

(declare-fun c!300997 () Bool)

(assert (=> b!1843388 (= c!300997 ((_ is Leaf!9803) (right!16558 t!3734)))))

(declare-fun b!1843387 () Bool)

(assert (=> b!1843387 (= e!1177927 Nil!20286)))

(assert (= (and d!564262 c!300996) b!1843387))

(assert (= (and d!564262 (not c!300996)) b!1843388))

(assert (= (and b!1843388 c!300997) b!1843389))

(assert (= (and b!1843388 (not c!300997)) b!1843390))

(assert (=> b!1843390 m!2271903))

(assert (=> b!1843390 m!2271905))

(assert (=> b!1843390 m!2271903))

(assert (=> b!1843390 m!2271905))

(declare-fun m!2271985 () Bool)

(assert (=> b!1843390 m!2271985))

(declare-fun m!2271987 () Bool)

(assert (=> b!1843389 m!2271987))

(assert (=> b!1843295 d!564262))

(declare-fun b!1843394 () Bool)

(declare-fun e!1177930 () List!20356)

(assert (=> b!1843394 (= e!1177930 (++!5519 (list!8256 (left!16228 (left!16228 t!3734))) (list!8256 (right!16558 (left!16228 t!3734)))))))

(declare-fun d!564266 () Bool)

(declare-fun c!300998 () Bool)

(assert (=> d!564266 (= c!300998 ((_ is Empty!6711) (left!16228 t!3734)))))

(declare-fun e!1177929 () List!20356)

(assert (=> d!564266 (= (list!8256 (left!16228 t!3734)) e!1177929)))

(declare-fun b!1843393 () Bool)

(assert (=> b!1843393 (= e!1177930 (list!8258 (xs!9587 (left!16228 t!3734))))))

(declare-fun b!1843392 () Bool)

(assert (=> b!1843392 (= e!1177929 e!1177930)))

(declare-fun c!300999 () Bool)

(assert (=> b!1843392 (= c!300999 ((_ is Leaf!9803) (left!16228 t!3734)))))

(declare-fun b!1843391 () Bool)

(assert (=> b!1843391 (= e!1177929 Nil!20286)))

(assert (= (and d!564266 c!300998) b!1843391))

(assert (= (and d!564266 (not c!300998)) b!1843392))

(assert (= (and b!1843392 c!300999) b!1843393))

(assert (= (and b!1843392 (not c!300999)) b!1843394))

(assert (=> b!1843394 m!2271957))

(assert (=> b!1843394 m!2271959))

(assert (=> b!1843394 m!2271957))

(assert (=> b!1843394 m!2271959))

(declare-fun m!2271989 () Bool)

(assert (=> b!1843394 m!2271989))

(declare-fun m!2271991 () Bool)

(assert (=> b!1843393 m!2271991))

(assert (=> b!1843295 d!564266))

(declare-fun d!564268 () Bool)

(declare-fun size!16088 (List!20356) Int)

(assert (=> d!564268 (= (inv!26526 (xs!9587 t!3734)) (<= (size!16088 (innerList!6771 (xs!9587 t!3734))) 2147483647))))

(declare-fun bs!408782 () Bool)

(assert (= bs!408782 d!564268))

(declare-fun m!2271993 () Bool)

(assert (=> bs!408782 m!2271993))

(assert (=> b!1843296 d!564268))

(declare-fun tp!521101 () Bool)

(declare-fun b!1843408 () Bool)

(declare-fun e!1177938 () Bool)

(declare-fun tp!521100 () Bool)

(assert (=> b!1843408 (= e!1177938 (and (inv!26525 (left!16228 (left!16228 t!3734))) tp!521100 (inv!26525 (right!16558 (left!16228 t!3734))) tp!521101))))

(declare-fun b!1843411 () Bool)

(declare-fun e!1177937 () Bool)

(declare-fun tp!521099 () Bool)

(assert (=> b!1843411 (= e!1177937 tp!521099)))

(declare-fun b!1843410 () Bool)

(assert (=> b!1843410 (= e!1177938 (and (inv!26526 (xs!9587 (left!16228 t!3734))) e!1177937))))

(assert (=> b!1843294 (= tp!521089 (and (inv!26525 (left!16228 t!3734)) e!1177938))))

(assert (= (and b!1843294 ((_ is Node!6711) (left!16228 t!3734))) b!1843408))

(assert (= b!1843410 b!1843411))

(assert (= (and b!1843294 ((_ is Leaf!9803) (left!16228 t!3734))) b!1843410))

(declare-fun m!2271997 () Bool)

(assert (=> b!1843408 m!2271997))

(declare-fun m!2271999 () Bool)

(assert (=> b!1843408 m!2271999))

(declare-fun m!2272001 () Bool)

(assert (=> b!1843410 m!2272001))

(assert (=> b!1843294 m!2271889))

(declare-fun b!1843412 () Bool)

(declare-fun e!1177940 () Bool)

(declare-fun tp!521104 () Bool)

(declare-fun tp!521103 () Bool)

(assert (=> b!1843412 (= e!1177940 (and (inv!26525 (left!16228 (right!16558 t!3734))) tp!521103 (inv!26525 (right!16558 (right!16558 t!3734))) tp!521104))))

(declare-fun b!1843414 () Bool)

(declare-fun e!1177939 () Bool)

(declare-fun tp!521102 () Bool)

(assert (=> b!1843414 (= e!1177939 tp!521102)))

(declare-fun b!1843413 () Bool)

(assert (=> b!1843413 (= e!1177940 (and (inv!26526 (xs!9587 (right!16558 t!3734))) e!1177939))))

(assert (=> b!1843294 (= tp!521091 (and (inv!26525 (right!16558 t!3734)) e!1177940))))

(assert (= (and b!1843294 ((_ is Node!6711) (right!16558 t!3734))) b!1843412))

(assert (= b!1843413 b!1843414))

(assert (= (and b!1843294 ((_ is Leaf!9803) (right!16558 t!3734))) b!1843413))

(declare-fun m!2272007 () Bool)

(assert (=> b!1843412 m!2272007))

(declare-fun m!2272009 () Bool)

(assert (=> b!1843412 m!2272009))

(declare-fun m!2272011 () Bool)

(assert (=> b!1843413 m!2272011))

(assert (=> b!1843294 m!2271891))

(declare-fun b!1843423 () Bool)

(declare-fun e!1177946 () Bool)

(declare-fun tp_is_empty!8359 () Bool)

(declare-fun tp!521107 () Bool)

(assert (=> b!1843423 (= e!1177946 (and tp_is_empty!8359 tp!521107))))

(assert (=> b!1843297 (= tp!521092 e!1177946)))

(assert (= (and b!1843297 ((_ is Cons!20286) (innerList!6771 (xs!9587 t!3734)))) b!1843423))

(check-sat (not b!1843413) (not b!1843410) (not b!1843317) (not b!1843294) (not b!1843365) (not b!1843375) (not b_next!52217) (not d!564236) (not b!1843394) (not b!1843318) (not b!1843414) (not b!1843377) (not b!1843411) (not d!564258) (not b!1843393) b_and!143663 (not b!1843408) (not b!1843344) (not d!564256) (not b!1843341) (not b!1843423) (not d!564268) (not b!1843338) (not d!564252) (not b!1843343) (not b!1843412) (not b!1843319) (not b!1843390) (not b!1843389) tp_is_empty!8359 (not b!1843340) (not b!1843346) (not b!1843373) (not b!1843376) (not b!1843366))
(check-sat b_and!143663 (not b_next!52217))
