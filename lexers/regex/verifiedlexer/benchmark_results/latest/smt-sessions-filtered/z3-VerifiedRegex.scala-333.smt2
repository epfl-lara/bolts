; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10930 () Bool)

(assert start!10930)

(declare-fun b_free!3257 () Bool)

(declare-fun b_next!3257 () Bool)

(assert (=> start!10930 (= b_free!3257 (not b_next!3257))))

(declare-fun tp!59164 () Bool)

(declare-fun b_and!4939 () Bool)

(assert (=> start!10930 (= tp!59164 b_and!4939)))

(declare-fun b_free!3259 () Bool)

(declare-fun b_next!3259 () Bool)

(assert (=> start!10930 (= b_free!3259 (not b_next!3259))))

(declare-fun tp!59166 () Bool)

(declare-fun b_and!4941 () Bool)

(assert (=> start!10930 (= tp!59166 b_and!4941)))

(assert (=> start!10930 true))

(declare-fun lambda!2366 () Int)

(declare-fun order!923 () Int)

(declare-fun order!921 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!595 (Int Int) Int)

(declare-fun dynLambda!596 (Int Int) Int)

(assert (=> start!10930 (< (dynLambda!595 order!921 f!927) (dynLambda!596 order!923 lambda!2366))))

(assert (=> start!10930 true))

(declare-fun g!9 () Int)

(assert (=> start!10930 (< (dynLambda!595 order!921 g!9) (dynLambda!596 order!923 lambda!2366))))

(declare-fun b!109080 () Bool)

(declare-fun e!60654 () Bool)

(declare-fun e!60652 () Bool)

(assert (=> b!109080 (= e!60654 (not e!60652))))

(declare-fun res!52312 () Bool)

(assert (=> b!109080 (=> res!52312 e!60652)))

(declare-datatypes ((A!231 0))(
  ( (A!232 (val!536 Int)) )
))
(declare-datatypes ((List!1739 0))(
  ( (Nil!1733) (Cons!1733 (h!7130 A!231) (t!21718 List!1739)) )
))
(declare-fun lt!30971 () List!1739)

(declare-fun forall!253 (List!1739 Int) Bool)

(assert (=> b!109080 (= res!52312 (not (forall!253 (t!21718 lt!30971) lambda!2366)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!30973 () (InoxSet A!231))

(declare-fun lt!30976 () (InoxSet A!231))

(declare-datatypes ((B!527 0))(
  ( (B!528 (val!537 Int)) )
))
(declare-fun lt!30966 () (InoxSet B!527))

(declare-fun flatMap!25 ((InoxSet A!231) Int) (InoxSet B!527))

(assert (=> b!109080 (= ((_ map or) (flatMap!25 lt!30973 g!9) lt!30966) (flatMap!25 lt!30976 g!9))))

(declare-fun lt!30968 () (InoxSet A!231))

(assert (=> b!109080 (= lt!30966 (flatMap!25 lt!30968 g!9))))

(declare-datatypes ((Unit!1180 0))(
  ( (Unit!1181) )
))
(declare-fun lt!30964 () Unit!1180)

(declare-fun lemmaFlatMapAssociative!14 ((InoxSet A!231) (InoxSet A!231) Int) Unit!1180)

(assert (=> b!109080 (= lt!30964 (lemmaFlatMapAssociative!14 lt!30973 lt!30968 g!9))))

(declare-fun lt!30969 () (InoxSet B!527))

(assert (=> b!109080 (= ((_ map or) (flatMap!25 lt!30973 f!927) lt!30969) (flatMap!25 lt!30976 f!927))))

(assert (=> b!109080 (= lt!30969 (flatMap!25 lt!30968 f!927))))

(declare-fun lt!30974 () Unit!1180)

(assert (=> b!109080 (= lt!30974 (lemmaFlatMapAssociative!14 lt!30973 lt!30968 f!927))))

(declare-fun b!109081 () Bool)

(declare-fun e!60656 () Bool)

(assert (=> b!109081 (= e!60656 e!60654)))

(declare-fun res!52309 () Bool)

(assert (=> b!109081 (=> (not res!52309) (not e!60654))))

(declare-fun s!1451 () (InoxSet A!231))

(assert (=> b!109081 (= res!52309 (= s!1451 lt!30976))))

(assert (=> b!109081 (= lt!30976 ((_ map or) lt!30973 lt!30968))))

(declare-fun content!165 (List!1739) (InoxSet A!231))

(assert (=> b!109081 (= lt!30968 (content!165 (t!21718 lt!30971)))))

(assert (=> b!109081 (= lt!30973 (store ((as const (Array A!231 Bool)) false) (h!7130 lt!30971) true))))

(declare-fun b!109082 () Bool)

(declare-fun e!60657 () Bool)

(assert (=> b!109082 (= e!60652 e!60657)))

(declare-fun res!52314 () Bool)

(assert (=> b!109082 (=> res!52314 e!60657)))

(declare-fun dynLambda!597 (Int A!231) (InoxSet B!527))

(assert (=> b!109082 (= res!52314 (not (= (dynLambda!597 f!927 (h!7130 lt!30971)) (dynLambda!597 g!9 (h!7130 lt!30971)))))))

(declare-fun forall!254 ((InoxSet A!231) Int) Bool)

(assert (=> b!109082 (forall!254 lt!30968 lambda!2366)))

(declare-fun lt!30965 () Unit!1180)

(declare-fun lemmaForallThenOnContent!12 (List!1739 Int) Unit!1180)

(assert (=> b!109082 (= lt!30965 (lemmaForallThenOnContent!12 (t!21718 lt!30971) lambda!2366))))

(declare-fun b!109083 () Bool)

(declare-fun e!60655 () Bool)

(assert (=> b!109083 (= e!60657 e!60655)))

(declare-fun res!52313 () Bool)

(assert (=> b!109083 (=> res!52313 e!60655)))

(declare-fun lt!30972 () Int)

(declare-fun lt!30967 () Int)

(assert (=> b!109083 (= res!52313 (not (= lt!30972 lt!30967)))))

(declare-fun size!1531 (List!1739) Int)

(assert (=> b!109083 (= lt!30967 (size!1531 (t!21718 lt!30971)))))

(declare-fun lt!30975 () Int)

(assert (=> b!109083 (> lt!30975 lt!30972)))

(declare-fun tail!184 (List!1739) List!1739)

(assert (=> b!109083 (= lt!30972 (size!1531 (tail!184 lt!30971)))))

(assert (=> b!109083 (= lt!30975 (size!1531 lt!30971))))

(declare-fun lt!30977 () Unit!1180)

(declare-fun lemmaToListSizeBiggerThanTailContentSize!8 ((InoxSet A!231)) Unit!1180)

(assert (=> b!109083 (= lt!30977 (lemmaToListSizeBiggerThanTailContentSize!8 s!1451))))

(declare-fun lt!30963 () Unit!1180)

(declare-fun forallContained!12 (List!1739 Int A!231) Unit!1180)

(assert (=> b!109083 (= lt!30963 (forallContained!12 lt!30971 lambda!2366 (h!7130 lt!30971)))))

(declare-fun b!109084 () Bool)

(declare-fun res!52307 () Bool)

(assert (=> b!109084 (=> res!52307 e!60657)))

(assert (=> b!109084 (= res!52307 (not (forall!254 lt!30968 lambda!2366)))))

(declare-fun b!109085 () Bool)

(declare-fun e!60653 () Bool)

(assert (=> b!109085 (= e!60655 e!60653)))

(declare-fun res!52310 () Bool)

(assert (=> b!109085 (=> res!52310 e!60653)))

(declare-fun lt!30978 () Int)

(assert (=> b!109085 (= res!52310 (or (not (= lt!30967 lt!30978)) (>= lt!30978 lt!30975)))))

(assert (=> b!109085 (= lt!30978 lt!30967)))

(declare-fun toList!218 ((InoxSet A!231)) List!1739)

(assert (=> b!109085 (= lt!30978 (size!1531 (toList!218 lt!30968)))))

(declare-fun lt!30970 () Unit!1180)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!4 (List!1739) Unit!1180)

(assert (=> b!109085 (= lt!30970 (lemmaNoDuplicateThenContentToListSameSize!4 (t!21718 lt!30971)))))

(declare-fun b!109086 () Bool)

(declare-fun e!60651 () Bool)

(assert (=> b!109086 (= e!60651 e!60656)))

(declare-fun res!52311 () Bool)

(assert (=> b!109086 (=> (not res!52311) (not e!60656))))

(get-info :version)

(assert (=> b!109086 (= res!52311 ((_ is Cons!1733) lt!30971))))

(assert (=> b!109086 (= lt!30971 (toList!218 s!1451))))

(declare-fun res!52308 () Bool)

(assert (=> start!10930 (=> (not res!52308) (not e!60651))))

(assert (=> start!10930 (= res!52308 (forall!254 s!1451 lambda!2366))))

(assert (=> start!10930 e!60651))

(declare-fun condSetEmpty!1381 () Bool)

(assert (=> start!10930 (= condSetEmpty!1381 (= s!1451 ((as const (Array A!231 Bool)) false)))))

(declare-fun setRes!1381 () Bool)

(assert (=> start!10930 setRes!1381))

(assert (=> start!10930 tp!59164))

(assert (=> start!10930 tp!59166))

(declare-fun setIsEmpty!1381 () Bool)

(assert (=> setIsEmpty!1381 setRes!1381))

(declare-fun setNonEmpty!1381 () Bool)

(declare-fun tp!59165 () Bool)

(declare-fun tp_is_empty!821 () Bool)

(assert (=> setNonEmpty!1381 (= setRes!1381 (and tp!59165 tp_is_empty!821))))

(declare-fun setElem!1381 () A!231)

(declare-fun setRest!1381 () (InoxSet A!231))

(assert (=> setNonEmpty!1381 (= s!1451 ((_ map or) (store ((as const (Array A!231 Bool)) false) setElem!1381 true) setRest!1381))))

(declare-fun b!109087 () Bool)

(assert (=> b!109087 (= e!60653 true)))

(assert (=> b!109087 (= lt!30969 lt!30966)))

(declare-fun lt!30962 () Unit!1180)

(declare-fun lemmaFlatMapWithExtEqualFunctionsOnSetThenSame!2 ((InoxSet A!231) Int Int) Unit!1180)

(assert (=> b!109087 (= lt!30962 (lemmaFlatMapWithExtEqualFunctionsOnSetThenSame!2 lt!30968 f!927 g!9))))

(assert (= (and start!10930 res!52308) b!109086))

(assert (= (and b!109086 res!52311) b!109081))

(assert (= (and b!109081 res!52309) b!109080))

(assert (= (and b!109080 (not res!52312)) b!109082))

(assert (= (and b!109082 (not res!52314)) b!109084))

(assert (= (and b!109084 (not res!52307)) b!109083))

(assert (= (and b!109083 (not res!52313)) b!109085))

(assert (= (and b!109085 (not res!52310)) b!109087))

(assert (= (and start!10930 condSetEmpty!1381) setIsEmpty!1381))

(assert (= (and start!10930 (not condSetEmpty!1381)) setNonEmpty!1381))

(declare-fun b_lambda!1273 () Bool)

(assert (=> (not b_lambda!1273) (not b!109082)))

(declare-fun t!21711 () Bool)

(declare-fun tb!3239 () Bool)

(assert (=> (and start!10930 (= f!927 f!927) t!21711) tb!3239))

(assert (=> b!109082 t!21711))

(declare-fun result!4756 () Bool)

(declare-fun b_and!4943 () Bool)

(assert (= b_and!4939 (and (=> t!21711 result!4756) b_and!4943)))

(declare-fun tb!3241 () Bool)

(declare-fun t!21713 () Bool)

(assert (=> (and start!10930 (= g!9 f!927) t!21713) tb!3241))

(assert (=> b!109082 t!21713))

(declare-fun result!4758 () Bool)

(declare-fun b_and!4945 () Bool)

(assert (= b_and!4941 (and (=> t!21713 result!4758) b_and!4945)))

(declare-fun b_lambda!1275 () Bool)

(assert (=> (not b_lambda!1275) (not b!109082)))

(declare-fun tb!3243 () Bool)

(declare-fun t!21715 () Bool)

(assert (=> (and start!10930 (= f!927 g!9) t!21715) tb!3243))

(assert (=> b!109082 t!21715))

(declare-fun result!4760 () Bool)

(declare-fun b_and!4947 () Bool)

(assert (= b_and!4943 (and (=> t!21715 result!4760) b_and!4947)))

(declare-fun t!21717 () Bool)

(declare-fun tb!3245 () Bool)

(assert (=> (and start!10930 (= g!9 g!9) t!21717) tb!3245))

(assert (=> b!109082 t!21717))

(declare-fun result!4762 () Bool)

(declare-fun b_and!4949 () Bool)

(assert (= b_and!4945 (and (=> t!21717 result!4762) b_and!4949)))

(declare-fun m!98116 () Bool)

(assert (=> b!109081 m!98116))

(declare-fun m!98118 () Bool)

(assert (=> b!109081 m!98118))

(declare-fun m!98120 () Bool)

(assert (=> start!10930 m!98120))

(declare-fun m!98122 () Bool)

(assert (=> b!109084 m!98122))

(declare-fun m!98124 () Bool)

(assert (=> b!109080 m!98124))

(declare-fun m!98126 () Bool)

(assert (=> b!109080 m!98126))

(declare-fun m!98128 () Bool)

(assert (=> b!109080 m!98128))

(declare-fun m!98130 () Bool)

(assert (=> b!109080 m!98130))

(declare-fun m!98132 () Bool)

(assert (=> b!109080 m!98132))

(declare-fun m!98134 () Bool)

(assert (=> b!109080 m!98134))

(declare-fun m!98136 () Bool)

(assert (=> b!109080 m!98136))

(declare-fun m!98138 () Bool)

(assert (=> b!109080 m!98138))

(declare-fun m!98140 () Bool)

(assert (=> b!109080 m!98140))

(declare-fun m!98142 () Bool)

(assert (=> b!109083 m!98142))

(declare-fun m!98144 () Bool)

(assert (=> b!109083 m!98144))

(declare-fun m!98146 () Bool)

(assert (=> b!109083 m!98146))

(declare-fun m!98148 () Bool)

(assert (=> b!109083 m!98148))

(declare-fun m!98150 () Bool)

(assert (=> b!109083 m!98150))

(assert (=> b!109083 m!98144))

(declare-fun m!98152 () Bool)

(assert (=> b!109083 m!98152))

(declare-fun m!98154 () Bool)

(assert (=> b!109086 m!98154))

(declare-fun m!98156 () Bool)

(assert (=> b!109087 m!98156))

(declare-fun m!98158 () Bool)

(assert (=> b!109082 m!98158))

(declare-fun m!98160 () Bool)

(assert (=> b!109082 m!98160))

(assert (=> b!109082 m!98122))

(declare-fun m!98162 () Bool)

(assert (=> b!109082 m!98162))

(declare-fun m!98164 () Bool)

(assert (=> b!109085 m!98164))

(assert (=> b!109085 m!98164))

(declare-fun m!98166 () Bool)

(assert (=> b!109085 m!98166))

(declare-fun m!98168 () Bool)

(assert (=> b!109085 m!98168))

(check-sat (not b!109086) (not b_lambda!1273) (not tb!3239) (not tb!3243) (not start!10930) (not setNonEmpty!1381) (not b!109083) b_and!4947 (not tb!3245) (not b!109084) (not b_lambda!1275) (not b!109080) b_and!4949 (not b!109082) (not b!109085) (not b!109081) (not b!109087) tp_is_empty!821 (not tb!3241) (not b_next!3259) (not b_next!3257))
(check-sat b_and!4947 b_and!4949 (not b_next!3259) (not b_next!3257))
