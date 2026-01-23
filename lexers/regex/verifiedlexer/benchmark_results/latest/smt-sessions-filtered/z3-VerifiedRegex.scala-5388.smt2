; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274470 () Bool)

(assert start!274470)

(declare-fun b_free!81087 () Bool)

(declare-fun b_next!81791 () Bool)

(assert (=> start!274470 (= b_free!81087 (not b_next!81791))))

(declare-fun tp!903006 () Bool)

(declare-fun b_and!206677 () Bool)

(assert (=> start!274470 (= tp!903006 b_and!206677)))

(declare-fun b!2827214 () Bool)

(declare-fun res!1176776 () Bool)

(declare-fun e!1789430 () Bool)

(assert (=> b!2827214 (=> (not res!1176776) (not e!1789430))))

(declare-datatypes ((B!2473 0))(
  ( (B!2474 (val!10456 Int)) )
))
(declare-datatypes ((List!33345 0))(
  ( (Nil!33221) (Cons!33221 (h!38641 B!2473) (t!231088 List!33345)) )
))
(declare-fun l1!953 () List!33345)

(declare-fun l2!930 () List!33345)

(get-info :version)

(assert (=> b!2827214 (= res!1176776 (and (not ((_ is Nil!33221) l1!953)) ((_ is Cons!33221) l2!930) (= (h!38641 l1!953) (h!38641 l2!930))))))

(declare-fun b!2827215 () Bool)

(declare-fun e!1789431 () Bool)

(declare-fun tp_is_empty!14523 () Bool)

(declare-fun tp!903008 () Bool)

(assert (=> b!2827215 (= e!1789431 (and tp_is_empty!14523 tp!903008))))

(declare-fun b!2827216 () Bool)

(declare-fun p!1912 () Int)

(declare-fun forall!6821 (List!33345 Int) Bool)

(assert (=> b!2827216 (= e!1789430 (not (forall!6821 (t!231088 l2!930) p!1912)))))

(declare-fun b!2827217 () Bool)

(declare-fun res!1176779 () Bool)

(assert (=> b!2827217 (=> (not res!1176779) (not e!1789430))))

(declare-fun subseq!475 (List!33345 List!33345) Bool)

(assert (=> b!2827217 (= res!1176779 (subseq!475 (t!231088 l1!953) (t!231088 l2!930)))))

(declare-fun res!1176777 () Bool)

(assert (=> start!274470 (=> (not res!1176777) (not e!1789430))))

(assert (=> start!274470 (= res!1176777 (forall!6821 l2!930 p!1912))))

(assert (=> start!274470 e!1789430))

(assert (=> start!274470 e!1789431))

(assert (=> start!274470 tp!903006))

(declare-fun e!1789432 () Bool)

(assert (=> start!274470 e!1789432))

(declare-fun b!2827218 () Bool)

(declare-fun res!1176778 () Bool)

(assert (=> b!2827218 (=> (not res!1176778) (not e!1789430))))

(assert (=> b!2827218 (= res!1176778 (subseq!475 l1!953 l2!930))))

(declare-fun b!2827219 () Bool)

(declare-fun tp!903007 () Bool)

(assert (=> b!2827219 (= e!1789432 (and tp_is_empty!14523 tp!903007))))

(assert (= (and start!274470 res!1176777) b!2827218))

(assert (= (and b!2827218 res!1176778) b!2827214))

(assert (= (and b!2827214 res!1176776) b!2827217))

(assert (= (and b!2827217 res!1176779) b!2827216))

(assert (= (and start!274470 ((_ is Cons!33221) l2!930)) b!2827215))

(assert (= (and start!274470 ((_ is Cons!33221) l1!953)) b!2827219))

(declare-fun m!3257023 () Bool)

(assert (=> b!2827216 m!3257023))

(declare-fun m!3257025 () Bool)

(assert (=> b!2827217 m!3257025))

(declare-fun m!3257027 () Bool)

(assert (=> start!274470 m!3257027))

(declare-fun m!3257029 () Bool)

(assert (=> b!2827218 m!3257029))

(check-sat tp_is_empty!14523 (not b!2827217) (not b!2827218) b_and!206677 (not b_next!81791) (not b!2827219) (not start!274470) (not b!2827216) (not b!2827215))
(check-sat b_and!206677 (not b_next!81791))
(get-model)

(declare-fun b!2827245 () Bool)

(declare-fun e!1789458 () Bool)

(assert (=> b!2827245 (= e!1789458 (subseq!475 l1!953 (t!231088 l2!930)))))

(declare-fun d!820511 () Bool)

(declare-fun res!1176804 () Bool)

(declare-fun e!1789455 () Bool)

(assert (=> d!820511 (=> res!1176804 e!1789455)))

(assert (=> d!820511 (= res!1176804 ((_ is Nil!33221) l1!953))))

(assert (=> d!820511 (= (subseq!475 l1!953 l2!930) e!1789455)))

(declare-fun b!2827243 () Bool)

(declare-fun e!1789456 () Bool)

(assert (=> b!2827243 (= e!1789456 e!1789458)))

(declare-fun res!1176802 () Bool)

(assert (=> b!2827243 (=> res!1176802 e!1789458)))

(declare-fun e!1789457 () Bool)

(assert (=> b!2827243 (= res!1176802 e!1789457)))

(declare-fun res!1176805 () Bool)

(assert (=> b!2827243 (=> (not res!1176805) (not e!1789457))))

(assert (=> b!2827243 (= res!1176805 (= (h!38641 l1!953) (h!38641 l2!930)))))

(declare-fun b!2827244 () Bool)

(assert (=> b!2827244 (= e!1789457 (subseq!475 (t!231088 l1!953) (t!231088 l2!930)))))

(declare-fun b!2827242 () Bool)

(assert (=> b!2827242 (= e!1789455 e!1789456)))

(declare-fun res!1176803 () Bool)

(assert (=> b!2827242 (=> (not res!1176803) (not e!1789456))))

(assert (=> b!2827242 (= res!1176803 ((_ is Cons!33221) l2!930))))

(assert (= (and d!820511 (not res!1176804)) b!2827242))

(assert (= (and b!2827242 res!1176803) b!2827243))

(assert (= (and b!2827243 res!1176805) b!2827244))

(assert (= (and b!2827243 (not res!1176802)) b!2827245))

(declare-fun m!3257035 () Bool)

(assert (=> b!2827245 m!3257035))

(assert (=> b!2827244 m!3257025))

(assert (=> b!2827218 d!820511))

(declare-fun b!2827249 () Bool)

(declare-fun e!1789462 () Bool)

(assert (=> b!2827249 (= e!1789462 (subseq!475 (t!231088 l1!953) (t!231088 (t!231088 l2!930))))))

(declare-fun d!820515 () Bool)

(declare-fun res!1176808 () Bool)

(declare-fun e!1789459 () Bool)

(assert (=> d!820515 (=> res!1176808 e!1789459)))

(assert (=> d!820515 (= res!1176808 ((_ is Nil!33221) (t!231088 l1!953)))))

(assert (=> d!820515 (= (subseq!475 (t!231088 l1!953) (t!231088 l2!930)) e!1789459)))

(declare-fun b!2827247 () Bool)

(declare-fun e!1789460 () Bool)

(assert (=> b!2827247 (= e!1789460 e!1789462)))

(declare-fun res!1176806 () Bool)

(assert (=> b!2827247 (=> res!1176806 e!1789462)))

(declare-fun e!1789461 () Bool)

(assert (=> b!2827247 (= res!1176806 e!1789461)))

(declare-fun res!1176809 () Bool)

(assert (=> b!2827247 (=> (not res!1176809) (not e!1789461))))

(assert (=> b!2827247 (= res!1176809 (= (h!38641 (t!231088 l1!953)) (h!38641 (t!231088 l2!930))))))

(declare-fun b!2827248 () Bool)

(assert (=> b!2827248 (= e!1789461 (subseq!475 (t!231088 (t!231088 l1!953)) (t!231088 (t!231088 l2!930))))))

(declare-fun b!2827246 () Bool)

(assert (=> b!2827246 (= e!1789459 e!1789460)))

(declare-fun res!1176807 () Bool)

(assert (=> b!2827246 (=> (not res!1176807) (not e!1789460))))

(assert (=> b!2827246 (= res!1176807 ((_ is Cons!33221) (t!231088 l2!930)))))

(assert (= (and d!820515 (not res!1176808)) b!2827246))

(assert (= (and b!2827246 res!1176807) b!2827247))

(assert (= (and b!2827247 res!1176809) b!2827248))

(assert (= (and b!2827247 (not res!1176806)) b!2827249))

(declare-fun m!3257037 () Bool)

(assert (=> b!2827249 m!3257037))

(declare-fun m!3257039 () Bool)

(assert (=> b!2827248 m!3257039))

(assert (=> b!2827217 d!820515))

(declare-fun d!820517 () Bool)

(declare-fun res!1176824 () Bool)

(declare-fun e!1789480 () Bool)

(assert (=> d!820517 (=> res!1176824 e!1789480)))

(assert (=> d!820517 (= res!1176824 ((_ is Nil!33221) l2!930))))

(assert (=> d!820517 (= (forall!6821 l2!930 p!1912) e!1789480)))

(declare-fun b!2827269 () Bool)

(declare-fun e!1789481 () Bool)

(assert (=> b!2827269 (= e!1789480 e!1789481)))

(declare-fun res!1176825 () Bool)

(assert (=> b!2827269 (=> (not res!1176825) (not e!1789481))))

(declare-fun dynLambda!13968 (Int B!2473) Bool)

(assert (=> b!2827269 (= res!1176825 (dynLambda!13968 p!1912 (h!38641 l2!930)))))

(declare-fun b!2827270 () Bool)

(assert (=> b!2827270 (= e!1789481 (forall!6821 (t!231088 l2!930) p!1912))))

(assert (= (and d!820517 (not res!1176824)) b!2827269))

(assert (= (and b!2827269 res!1176825) b!2827270))

(declare-fun b_lambda!84859 () Bool)

(assert (=> (not b_lambda!84859) (not b!2827269)))

(declare-fun t!231094 () Bool)

(declare-fun tb!154105 () Bool)

(assert (=> (and start!274470 (= p!1912 p!1912) t!231094) tb!154105))

(declare-fun result!192024 () Bool)

(assert (=> tb!154105 (= result!192024 true)))

(assert (=> b!2827269 t!231094))

(declare-fun b_and!206683 () Bool)

(assert (= b_and!206677 (and (=> t!231094 result!192024) b_and!206683)))

(declare-fun m!3257049 () Bool)

(assert (=> b!2827269 m!3257049))

(assert (=> b!2827270 m!3257023))

(assert (=> start!274470 d!820517))

(declare-fun d!820523 () Bool)

(declare-fun res!1176826 () Bool)

(declare-fun e!1789483 () Bool)

(assert (=> d!820523 (=> res!1176826 e!1789483)))

(assert (=> d!820523 (= res!1176826 ((_ is Nil!33221) (t!231088 l2!930)))))

(assert (=> d!820523 (= (forall!6821 (t!231088 l2!930) p!1912) e!1789483)))

(declare-fun b!2827272 () Bool)

(declare-fun e!1789484 () Bool)

(assert (=> b!2827272 (= e!1789483 e!1789484)))

(declare-fun res!1176827 () Bool)

(assert (=> b!2827272 (=> (not res!1176827) (not e!1789484))))

(assert (=> b!2827272 (= res!1176827 (dynLambda!13968 p!1912 (h!38641 (t!231088 l2!930))))))

(declare-fun b!2827273 () Bool)

(assert (=> b!2827273 (= e!1789484 (forall!6821 (t!231088 (t!231088 l2!930)) p!1912))))

(assert (= (and d!820523 (not res!1176826)) b!2827272))

(assert (= (and b!2827272 res!1176827) b!2827273))

(declare-fun b_lambda!84861 () Bool)

(assert (=> (not b_lambda!84861) (not b!2827272)))

(declare-fun t!231096 () Bool)

(declare-fun tb!154107 () Bool)

(assert (=> (and start!274470 (= p!1912 p!1912) t!231096) tb!154107))

(declare-fun result!192026 () Bool)

(assert (=> tb!154107 (= result!192026 true)))

(assert (=> b!2827272 t!231096))

(declare-fun b_and!206685 () Bool)

(assert (= b_and!206683 (and (=> t!231096 result!192026) b_and!206685)))

(declare-fun m!3257051 () Bool)

(assert (=> b!2827272 m!3257051))

(declare-fun m!3257053 () Bool)

(assert (=> b!2827273 m!3257053))

(assert (=> b!2827216 d!820523))

(declare-fun b!2827278 () Bool)

(declare-fun e!1789487 () Bool)

(declare-fun tp!903015 () Bool)

(assert (=> b!2827278 (= e!1789487 (and tp_is_empty!14523 tp!903015))))

(assert (=> b!2827219 (= tp!903007 e!1789487)))

(assert (= (and b!2827219 ((_ is Cons!33221) (t!231088 l1!953))) b!2827278))

(declare-fun b!2827279 () Bool)

(declare-fun e!1789488 () Bool)

(declare-fun tp!903016 () Bool)

(assert (=> b!2827279 (= e!1789488 (and tp_is_empty!14523 tp!903016))))

(assert (=> b!2827215 (= tp!903008 e!1789488)))

(assert (= (and b!2827215 ((_ is Cons!33221) (t!231088 l2!930))) b!2827279))

(declare-fun b_lambda!84863 () Bool)

(assert (= b_lambda!84859 (or (and start!274470 b_free!81087) b_lambda!84863)))

(declare-fun b_lambda!84865 () Bool)

(assert (= b_lambda!84861 (or (and start!274470 b_free!81087) b_lambda!84865)))

(check-sat tp_is_empty!14523 (not b!2827248) (not b!2827244) (not b_lambda!84865) (not b!2827270) (not b!2827279) (not b!2827273) (not b!2827278) (not b_next!81791) (not b!2827249) (not b!2827245) (not b_lambda!84863) b_and!206685)
(check-sat b_and!206685 (not b_next!81791))
