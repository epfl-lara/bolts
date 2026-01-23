; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274458 () Bool)

(assert start!274458)

(declare-fun b_free!81083 () Bool)

(declare-fun b_next!81787 () Bool)

(assert (=> start!274458 (= b_free!81083 (not b_next!81787))))

(declare-fun tp!902980 () Bool)

(declare-fun b_and!206665 () Bool)

(assert (=> start!274458 (= tp!902980 b_and!206665)))

(declare-fun res!1176715 () Bool)

(declare-fun e!1789366 () Bool)

(assert (=> start!274458 (=> (not res!1176715) (not e!1789366))))

(declare-datatypes ((B!2469 0))(
  ( (B!2470 (val!10454 Int)) )
))
(declare-datatypes ((List!33343 0))(
  ( (Nil!33219) (Cons!33219 (h!38639 B!2469) (t!231078 List!33343)) )
))
(declare-fun l2!930 () List!33343)

(declare-fun p!1912 () Int)

(declare-fun forall!6819 (List!33343 Int) Bool)

(assert (=> start!274458 (= res!1176715 (forall!6819 l2!930 p!1912))))

(assert (=> start!274458 e!1789366))

(declare-fun e!1789364 () Bool)

(assert (=> start!274458 e!1789364))

(assert (=> start!274458 tp!902980))

(declare-fun e!1789365 () Bool)

(assert (=> start!274458 e!1789365))

(declare-fun b!2827127 () Bool)

(declare-fun tp_is_empty!14519 () Bool)

(declare-fun tp!902981 () Bool)

(assert (=> b!2827127 (= e!1789365 (and tp_is_empty!14519 tp!902981))))

(declare-fun b!2827128 () Bool)

(declare-fun l1!953 () List!33343)

(assert (=> b!2827128 (= e!1789366 (not (forall!6819 l1!953 p!1912)))))

(declare-fun b!2827129 () Bool)

(declare-fun res!1176714 () Bool)

(assert (=> b!2827129 (=> (not res!1176714) (not e!1789366))))

(declare-fun subseq!473 (List!33343 List!33343) Bool)

(assert (=> b!2827129 (= res!1176714 (subseq!473 l1!953 l2!930))))

(declare-fun b!2827130 () Bool)

(declare-fun tp!902982 () Bool)

(assert (=> b!2827130 (= e!1789364 (and tp_is_empty!14519 tp!902982))))

(declare-fun b!2827131 () Bool)

(declare-fun res!1176713 () Bool)

(assert (=> b!2827131 (=> (not res!1176713) (not e!1789366))))

(get-info :version)

(assert (=> b!2827131 (= res!1176713 ((_ is Nil!33219) l1!953))))

(assert (= (and start!274458 res!1176715) b!2827129))

(assert (= (and b!2827129 res!1176714) b!2827131))

(assert (= (and b!2827131 res!1176713) b!2827128))

(assert (= (and start!274458 ((_ is Cons!33219) l2!930)) b!2827130))

(assert (= (and start!274458 ((_ is Cons!33219) l1!953)) b!2827127))

(declare-fun m!3256985 () Bool)

(assert (=> start!274458 m!3256985))

(declare-fun m!3256987 () Bool)

(assert (=> b!2827128 m!3256987))

(declare-fun m!3256989 () Bool)

(assert (=> b!2827129 m!3256989))

(check-sat (not start!274458) b_and!206665 (not b!2827130) (not b!2827129) tp_is_empty!14519 (not b_next!81787) (not b!2827127) (not b!2827128))
(check-sat b_and!206665 (not b_next!81787))
(get-model)

(declare-fun b!2827150 () Bool)

(declare-fun e!1789384 () Bool)

(assert (=> b!2827150 (= e!1789384 (subseq!473 (t!231078 l1!953) (t!231078 l2!930)))))

(declare-fun b!2827149 () Bool)

(declare-fun e!1789383 () Bool)

(declare-fun e!1789386 () Bool)

(assert (=> b!2827149 (= e!1789383 e!1789386)))

(declare-fun res!1176732 () Bool)

(assert (=> b!2827149 (=> res!1176732 e!1789386)))

(assert (=> b!2827149 (= res!1176732 e!1789384)))

(declare-fun res!1176734 () Bool)

(assert (=> b!2827149 (=> (not res!1176734) (not e!1789384))))

(assert (=> b!2827149 (= res!1176734 (= (h!38639 l1!953) (h!38639 l2!930)))))

(declare-fun d!820498 () Bool)

(declare-fun res!1176733 () Bool)

(declare-fun e!1789385 () Bool)

(assert (=> d!820498 (=> res!1176733 e!1789385)))

(assert (=> d!820498 (= res!1176733 ((_ is Nil!33219) l1!953))))

(assert (=> d!820498 (= (subseq!473 l1!953 l2!930) e!1789385)))

(declare-fun b!2827148 () Bool)

(assert (=> b!2827148 (= e!1789385 e!1789383)))

(declare-fun res!1176735 () Bool)

(assert (=> b!2827148 (=> (not res!1176735) (not e!1789383))))

(assert (=> b!2827148 (= res!1176735 ((_ is Cons!33219) l2!930))))

(declare-fun b!2827151 () Bool)

(assert (=> b!2827151 (= e!1789386 (subseq!473 l1!953 (t!231078 l2!930)))))

(assert (= (and d!820498 (not res!1176733)) b!2827148))

(assert (= (and b!2827148 res!1176735) b!2827149))

(assert (= (and b!2827149 res!1176734) b!2827150))

(assert (= (and b!2827149 (not res!1176732)) b!2827151))

(declare-fun m!3256999 () Bool)

(assert (=> b!2827150 m!3256999))

(declare-fun m!3257001 () Bool)

(assert (=> b!2827151 m!3257001))

(assert (=> b!2827129 d!820498))

(declare-fun d!820504 () Bool)

(declare-fun res!1176752 () Bool)

(declare-fun e!1789403 () Bool)

(assert (=> d!820504 (=> res!1176752 e!1789403)))

(assert (=> d!820504 (= res!1176752 ((_ is Nil!33219) l1!953))))

(assert (=> d!820504 (= (forall!6819 l1!953 p!1912) e!1789403)))

(declare-fun b!2827168 () Bool)

(declare-fun e!1789404 () Bool)

(assert (=> b!2827168 (= e!1789403 e!1789404)))

(declare-fun res!1176753 () Bool)

(assert (=> b!2827168 (=> (not res!1176753) (not e!1789404))))

(declare-fun dynLambda!13966 (Int B!2469) Bool)

(assert (=> b!2827168 (= res!1176753 (dynLambda!13966 p!1912 (h!38639 l1!953)))))

(declare-fun b!2827169 () Bool)

(assert (=> b!2827169 (= e!1789404 (forall!6819 (t!231078 l1!953) p!1912))))

(assert (= (and d!820504 (not res!1176752)) b!2827168))

(assert (= (and b!2827168 res!1176753) b!2827169))

(declare-fun b_lambda!84839 () Bool)

(assert (=> (not b_lambda!84839) (not b!2827168)))

(declare-fun t!231084 () Bool)

(declare-fun tb!154097 () Bool)

(assert (=> (and start!274458 (= p!1912 p!1912) t!231084) tb!154097))

(declare-fun result!192010 () Bool)

(assert (=> tb!154097 (= result!192010 true)))

(assert (=> b!2827168 t!231084))

(declare-fun b_and!206671 () Bool)

(assert (= b_and!206665 (and (=> t!231084 result!192010) b_and!206671)))

(declare-fun m!3257007 () Bool)

(assert (=> b!2827168 m!3257007))

(declare-fun m!3257009 () Bool)

(assert (=> b!2827169 m!3257009))

(assert (=> b!2827128 d!820504))

(declare-fun d!820506 () Bool)

(declare-fun res!1176754 () Bool)

(declare-fun e!1789407 () Bool)

(assert (=> d!820506 (=> res!1176754 e!1789407)))

(assert (=> d!820506 (= res!1176754 ((_ is Nil!33219) l2!930))))

(assert (=> d!820506 (= (forall!6819 l2!930 p!1912) e!1789407)))

(declare-fun b!2827174 () Bool)

(declare-fun e!1789408 () Bool)

(assert (=> b!2827174 (= e!1789407 e!1789408)))

(declare-fun res!1176755 () Bool)

(assert (=> b!2827174 (=> (not res!1176755) (not e!1789408))))

(assert (=> b!2827174 (= res!1176755 (dynLambda!13966 p!1912 (h!38639 l2!930)))))

(declare-fun b!2827175 () Bool)

(assert (=> b!2827175 (= e!1789408 (forall!6819 (t!231078 l2!930) p!1912))))

(assert (= (and d!820506 (not res!1176754)) b!2827174))

(assert (= (and b!2827174 res!1176755) b!2827175))

(declare-fun b_lambda!84841 () Bool)

(assert (=> (not b_lambda!84841) (not b!2827174)))

(declare-fun t!231086 () Bool)

(declare-fun tb!154099 () Bool)

(assert (=> (and start!274458 (= p!1912 p!1912) t!231086) tb!154099))

(declare-fun result!192014 () Bool)

(assert (=> tb!154099 (= result!192014 true)))

(assert (=> b!2827174 t!231086))

(declare-fun b_and!206673 () Bool)

(assert (= b_and!206671 (and (=> t!231086 result!192014) b_and!206673)))

(declare-fun m!3257011 () Bool)

(assert (=> b!2827174 m!3257011))

(declare-fun m!3257013 () Bool)

(assert (=> b!2827175 m!3257013))

(assert (=> start!274458 d!820506))

(declare-fun b!2827182 () Bool)

(declare-fun e!1789413 () Bool)

(declare-fun tp!902989 () Bool)

(assert (=> b!2827182 (= e!1789413 (and tp_is_empty!14519 tp!902989))))

(assert (=> b!2827127 (= tp!902981 e!1789413)))

(assert (= (and b!2827127 ((_ is Cons!33219) (t!231078 l1!953))) b!2827182))

(declare-fun b!2827183 () Bool)

(declare-fun e!1789414 () Bool)

(declare-fun tp!902990 () Bool)

(assert (=> b!2827183 (= e!1789414 (and tp_is_empty!14519 tp!902990))))

(assert (=> b!2827130 (= tp!902982 e!1789414)))

(assert (= (and b!2827130 ((_ is Cons!33219) (t!231078 l2!930))) b!2827183))

(declare-fun b_lambda!84847 () Bool)

(assert (= b_lambda!84841 (or (and start!274458 b_free!81083) b_lambda!84847)))

(declare-fun b_lambda!84849 () Bool)

(assert (= b_lambda!84839 (or (and start!274458 b_free!81083) b_lambda!84849)))

(check-sat (not b_lambda!84849) b_and!206673 (not b!2827150) (not b!2827175) (not b!2827151) (not b!2827183) (not b_lambda!84847) tp_is_empty!14519 (not b_next!81787) (not b!2827169) (not b!2827182))
(check-sat b_and!206673 (not b_next!81787))
