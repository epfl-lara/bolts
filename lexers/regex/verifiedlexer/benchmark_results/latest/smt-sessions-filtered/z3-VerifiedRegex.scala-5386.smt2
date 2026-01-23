; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274442 () Bool)

(assert start!274442)

(declare-fun b_free!81079 () Bool)

(declare-fun b_next!81783 () Bool)

(assert (=> start!274442 (= b_free!81079 (not b_next!81783))))

(declare-fun tp!902955 () Bool)

(declare-fun b_and!206657 () Bool)

(assert (=> start!274442 (= tp!902955 b_and!206657)))

(declare-fun res!1176660 () Bool)

(declare-fun e!1789296 () Bool)

(assert (=> start!274442 (=> (not res!1176660) (not e!1789296))))

(declare-datatypes ((B!2465 0))(
  ( (B!2466 (val!10452 Int)) )
))
(declare-datatypes ((List!33341 0))(
  ( (Nil!33217) (Cons!33217 (h!38637 B!2465) (t!231072 List!33341)) )
))
(declare-fun l2!930 () List!33341)

(declare-fun p!1912 () Int)

(declare-fun forall!6817 (List!33341 Int) Bool)

(assert (=> start!274442 (= res!1176660 (forall!6817 l2!930 p!1912))))

(assert (=> start!274442 e!1789296))

(declare-fun e!1789297 () Bool)

(assert (=> start!274442 e!1789297))

(assert (=> start!274442 tp!902955))

(declare-fun e!1789298 () Bool)

(assert (=> start!274442 e!1789298))

(declare-fun b!2827040 () Bool)

(declare-fun tp_is_empty!14515 () Bool)

(declare-fun tp!902954 () Bool)

(assert (=> b!2827040 (= e!1789297 (and tp_is_empty!14515 tp!902954))))

(declare-fun b!2827038 () Bool)

(declare-fun res!1176661 () Bool)

(assert (=> b!2827038 (=> (not res!1176661) (not e!1789296))))

(declare-fun l1!953 () List!33341)

(declare-fun subseq!471 (List!33341 List!33341) Bool)

(assert (=> b!2827038 (= res!1176661 (subseq!471 l1!953 l2!930))))

(declare-fun b!2827039 () Bool)

(declare-fun ListPrimitiveSize!215 (List!33341) Int)

(assert (=> b!2827039 (= e!1789296 (< (ListPrimitiveSize!215 l2!930) 0))))

(declare-fun b!2827041 () Bool)

(declare-fun tp!902956 () Bool)

(assert (=> b!2827041 (= e!1789298 (and tp_is_empty!14515 tp!902956))))

(assert (= (and start!274442 res!1176660) b!2827038))

(assert (= (and b!2827038 res!1176661) b!2827039))

(get-info :version)

(assert (= (and start!274442 ((_ is Cons!33217) l2!930)) b!2827040))

(assert (= (and start!274442 ((_ is Cons!33217) l1!953)) b!2827041))

(declare-fun m!3256953 () Bool)

(assert (=> start!274442 m!3256953))

(declare-fun m!3256955 () Bool)

(assert (=> b!2827038 m!3256955))

(declare-fun m!3256957 () Bool)

(assert (=> b!2827039 m!3256957))

(check-sat (not b!2827040) (not b!2827039) b_and!206657 (not start!274442) tp_is_empty!14515 (not b!2827038) (not b_next!81783) (not b!2827041))
(check-sat b_and!206657 (not b_next!81783))
(get-model)

(declare-fun b!2827062 () Bool)

(declare-fun e!1789320 () Bool)

(assert (=> b!2827062 (= e!1789320 (subseq!471 (t!231072 l1!953) (t!231072 l2!930)))))

(declare-fun d!820485 () Bool)

(declare-fun res!1176682 () Bool)

(declare-fun e!1789318 () Bool)

(assert (=> d!820485 (=> res!1176682 e!1789318)))

(assert (=> d!820485 (= res!1176682 ((_ is Nil!33217) l1!953))))

(assert (=> d!820485 (= (subseq!471 l1!953 l2!930) e!1789318)))

(declare-fun b!2827060 () Bool)

(declare-fun e!1789319 () Bool)

(assert (=> b!2827060 (= e!1789318 e!1789319)))

(declare-fun res!1176683 () Bool)

(assert (=> b!2827060 (=> (not res!1176683) (not e!1789319))))

(assert (=> b!2827060 (= res!1176683 ((_ is Cons!33217) l2!930))))

(declare-fun b!2827063 () Bool)

(declare-fun e!1789317 () Bool)

(assert (=> b!2827063 (= e!1789317 (subseq!471 l1!953 (t!231072 l2!930)))))

(declare-fun b!2827061 () Bool)

(assert (=> b!2827061 (= e!1789319 e!1789317)))

(declare-fun res!1176680 () Bool)

(assert (=> b!2827061 (=> res!1176680 e!1789317)))

(assert (=> b!2827061 (= res!1176680 e!1789320)))

(declare-fun res!1176681 () Bool)

(assert (=> b!2827061 (=> (not res!1176681) (not e!1789320))))

(assert (=> b!2827061 (= res!1176681 (= (h!38637 l1!953) (h!38637 l2!930)))))

(assert (= (and d!820485 (not res!1176682)) b!2827060))

(assert (= (and b!2827060 res!1176683) b!2827061))

(assert (= (and b!2827061 res!1176681) b!2827062))

(assert (= (and b!2827061 (not res!1176680)) b!2827063))

(declare-fun m!3256963 () Bool)

(assert (=> b!2827062 m!3256963))

(declare-fun m!3256965 () Bool)

(assert (=> b!2827063 m!3256965))

(assert (=> b!2827038 d!820485))

(declare-fun d!820489 () Bool)

(declare-fun lt!1008536 () Int)

(assert (=> d!820489 (>= lt!1008536 0)))

(declare-fun e!1789331 () Int)

(assert (=> d!820489 (= lt!1008536 e!1789331)))

(declare-fun c!457520 () Bool)

(assert (=> d!820489 (= c!457520 ((_ is Nil!33217) l2!930))))

(assert (=> d!820489 (= (ListPrimitiveSize!215 l2!930) lt!1008536)))

(declare-fun b!2827076 () Bool)

(assert (=> b!2827076 (= e!1789331 0)))

(declare-fun b!2827077 () Bool)

(assert (=> b!2827077 (= e!1789331 (+ 1 (ListPrimitiveSize!215 (t!231072 l2!930))))))

(assert (= (and d!820489 c!457520) b!2827076))

(assert (= (and d!820489 (not c!457520)) b!2827077))

(declare-fun m!3256971 () Bool)

(assert (=> b!2827077 m!3256971))

(assert (=> b!2827039 d!820489))

(declare-fun d!820493 () Bool)

(declare-fun res!1176696 () Bool)

(declare-fun e!1789341 () Bool)

(assert (=> d!820493 (=> res!1176696 e!1789341)))

(assert (=> d!820493 (= res!1176696 ((_ is Nil!33217) l2!930))))

(assert (=> d!820493 (= (forall!6817 l2!930 p!1912) e!1789341)))

(declare-fun b!2827092 () Bool)

(declare-fun e!1789342 () Bool)

(assert (=> b!2827092 (= e!1789341 e!1789342)))

(declare-fun res!1176697 () Bool)

(assert (=> b!2827092 (=> (not res!1176697) (not e!1789342))))

(declare-fun dynLambda!13964 (Int B!2465) Bool)

(assert (=> b!2827092 (= res!1176697 (dynLambda!13964 p!1912 (h!38637 l2!930)))))

(declare-fun b!2827093 () Bool)

(assert (=> b!2827093 (= e!1789342 (forall!6817 (t!231072 l2!930) p!1912))))

(assert (= (and d!820493 (not res!1176696)) b!2827092))

(assert (= (and b!2827092 res!1176697) b!2827093))

(declare-fun b_lambda!84829 () Bool)

(assert (=> (not b_lambda!84829) (not b!2827092)))

(declare-fun t!231076 () Bool)

(declare-fun tb!154091 () Bool)

(assert (=> (and start!274442 (= p!1912 p!1912) t!231076) tb!154091))

(declare-fun result!192002 () Bool)

(assert (=> tb!154091 (= result!192002 true)))

(assert (=> b!2827092 t!231076))

(declare-fun b_and!206661 () Bool)

(assert (= b_and!206657 (and (=> t!231076 result!192002) b_and!206661)))

(declare-fun m!3256975 () Bool)

(assert (=> b!2827092 m!3256975))

(declare-fun m!3256977 () Bool)

(assert (=> b!2827093 m!3256977))

(assert (=> start!274442 d!820493))

(declare-fun b!2827100 () Bool)

(declare-fun e!1789347 () Bool)

(declare-fun tp!902963 () Bool)

(assert (=> b!2827100 (= e!1789347 (and tp_is_empty!14515 tp!902963))))

(assert (=> b!2827041 (= tp!902956 e!1789347)))

(assert (= (and b!2827041 ((_ is Cons!33217) (t!231072 l1!953))) b!2827100))

(declare-fun b!2827101 () Bool)

(declare-fun e!1789348 () Bool)

(declare-fun tp!902964 () Bool)

(assert (=> b!2827101 (= e!1789348 (and tp_is_empty!14515 tp!902964))))

(assert (=> b!2827040 (= tp!902954 e!1789348)))

(assert (= (and b!2827040 ((_ is Cons!33217) (t!231072 l2!930))) b!2827101))

(declare-fun b_lambda!84833 () Bool)

(assert (= b_lambda!84829 (or (and start!274442 b_free!81079) b_lambda!84833)))

(check-sat (not b!2827100) (not b!2827063) (not b!2827093) (not b!2827101) (not b_lambda!84833) (not b!2827062) tp_is_empty!14515 (not b!2827077) b_and!206661 (not b_next!81783))
(check-sat b_and!206661 (not b_next!81783))
