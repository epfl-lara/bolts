; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352448 () Bool)

(assert start!352448)

(declare-fun b_free!100427 () Bool)

(declare-fun b_next!101131 () Bool)

(assert (=> start!352448 (= b_free!100427 (not b_next!101131))))

(declare-fun tp!1145954 () Bool)

(declare-fun b_and!278885 () Bool)

(assert (=> start!352448 (= tp!1145954 b_and!278885)))

(declare-fun b!3753196 () Bool)

(declare-fun e!2321591 () Bool)

(declare-fun tp_is_empty!19061 () Bool)

(declare-fun tp!1145953 () Bool)

(assert (=> b!3753196 (= e!2321591 (and tp_is_empty!19061 tp!1145953))))

(declare-fun res!1520924 () Bool)

(declare-fun e!2321592 () Bool)

(assert (=> start!352448 (=> (not res!1520924) (not e!2321592))))

(declare-datatypes ((B!2549 0))(
  ( (B!2550 (val!13178 Int)) )
))
(declare-datatypes ((List!40137 0))(
  ( (Nil!40013) (Cons!40013 (h!45433 B!2549) (t!303216 List!40137)) )
))
(declare-fun l1!1479 () List!40137)

(get-info :version)

(assert (=> start!352448 (= res!1520924 ((_ is Cons!40013) l1!1479))))

(assert (=> start!352448 e!2321592))

(declare-fun e!2321590 () Bool)

(assert (=> start!352448 e!2321590))

(assert (=> start!352448 e!2321591))

(assert (=> start!352448 tp!1145954))

(declare-fun b!3753195 () Bool)

(declare-fun tp!1145952 () Bool)

(assert (=> b!3753195 (= e!2321590 (and tp_is_empty!19061 tp!1145952))))

(declare-fun b!3753194 () Bool)

(declare-fun e!2321589 () Bool)

(declare-fun l2!1448 () List!40137)

(declare-fun p!2059 () Int)

(declare-fun forall!8241 (List!40137 Int) Bool)

(assert (=> b!3753194 (= e!2321589 (forall!8241 l2!1448 p!2059))))

(declare-fun b!3753193 () Bool)

(declare-fun ++!9907 (List!40137 List!40137) List!40137)

(assert (=> b!3753193 (= e!2321592 (not (= (forall!8241 (++!9907 l1!1479 l2!1448) p!2059) e!2321589)))))

(declare-fun res!1520925 () Bool)

(assert (=> b!3753193 (=> (not res!1520925) (not e!2321589))))

(assert (=> b!3753193 (= res!1520925 (forall!8241 l1!1479 p!2059))))

(declare-datatypes ((Unit!57746 0))(
  ( (Unit!57747) )
))
(declare-fun lt!1300133 () Unit!57746)

(declare-fun lemmaForallConcat!215 (List!40137 List!40137 Int) Unit!57746)

(assert (=> b!3753193 (= lt!1300133 (lemmaForallConcat!215 (t!303216 l1!1479) l2!1448 p!2059))))

(assert (= (and start!352448 res!1520924) b!3753193))

(assert (= (and b!3753193 res!1520925) b!3753194))

(assert (= (and start!352448 ((_ is Cons!40013) l1!1479)) b!3753195))

(assert (= (and start!352448 ((_ is Cons!40013) l2!1448)) b!3753196))

(declare-fun m!4244991 () Bool)

(assert (=> b!3753194 m!4244991))

(declare-fun m!4244993 () Bool)

(assert (=> b!3753193 m!4244993))

(assert (=> b!3753193 m!4244993))

(declare-fun m!4244995 () Bool)

(assert (=> b!3753193 m!4244995))

(declare-fun m!4244997 () Bool)

(assert (=> b!3753193 m!4244997))

(declare-fun m!4244999 () Bool)

(assert (=> b!3753193 m!4244999))

(check-sat b_and!278885 (not b!3753196) tp_is_empty!19061 (not b!3753194) (not b_next!101131) (not b!3753195) (not b!3753193))
(check-sat b_and!278885 (not b_next!101131))
(get-model)

(declare-fun d!1095276 () Bool)

(declare-fun res!1520938 () Bool)

(declare-fun e!2321605 () Bool)

(assert (=> d!1095276 (=> res!1520938 e!2321605)))

(assert (=> d!1095276 (= res!1520938 ((_ is Nil!40013) l2!1448))))

(assert (=> d!1095276 (= (forall!8241 l2!1448 p!2059) e!2321605)))

(declare-fun b!3753209 () Bool)

(declare-fun e!2321606 () Bool)

(assert (=> b!3753209 (= e!2321605 e!2321606)))

(declare-fun res!1520939 () Bool)

(assert (=> b!3753209 (=> (not res!1520939) (not e!2321606))))

(declare-fun dynLambda!17306 (Int B!2549) Bool)

(assert (=> b!3753209 (= res!1520939 (dynLambda!17306 p!2059 (h!45433 l2!1448)))))

(declare-fun b!3753210 () Bool)

(assert (=> b!3753210 (= e!2321606 (forall!8241 (t!303216 l2!1448) p!2059))))

(assert (= (and d!1095276 (not res!1520938)) b!3753209))

(assert (= (and b!3753209 res!1520939) b!3753210))

(declare-fun b_lambda!110131 () Bool)

(assert (=> (not b_lambda!110131) (not b!3753209)))

(declare-fun t!303222 () Bool)

(declare-fun tb!214721 () Bool)

(assert (=> (and start!352448 (= p!2059 p!2059) t!303222) tb!214721))

(declare-fun result!262218 () Bool)

(assert (=> tb!214721 (= result!262218 true)))

(assert (=> b!3753209 t!303222))

(declare-fun b_and!278891 () Bool)

(assert (= b_and!278885 (and (=> t!303222 result!262218) b_and!278891)))

(declare-fun m!4245009 () Bool)

(assert (=> b!3753209 m!4245009))

(declare-fun m!4245011 () Bool)

(assert (=> b!3753210 m!4245011))

(assert (=> b!3753194 d!1095276))

(declare-fun d!1095280 () Bool)

(declare-fun res!1520940 () Bool)

(declare-fun e!2321607 () Bool)

(assert (=> d!1095280 (=> res!1520940 e!2321607)))

(assert (=> d!1095280 (= res!1520940 ((_ is Nil!40013) (++!9907 l1!1479 l2!1448)))))

(assert (=> d!1095280 (= (forall!8241 (++!9907 l1!1479 l2!1448) p!2059) e!2321607)))

(declare-fun b!3753211 () Bool)

(declare-fun e!2321608 () Bool)

(assert (=> b!3753211 (= e!2321607 e!2321608)))

(declare-fun res!1520941 () Bool)

(assert (=> b!3753211 (=> (not res!1520941) (not e!2321608))))

(assert (=> b!3753211 (= res!1520941 (dynLambda!17306 p!2059 (h!45433 (++!9907 l1!1479 l2!1448))))))

(declare-fun b!3753212 () Bool)

(assert (=> b!3753212 (= e!2321608 (forall!8241 (t!303216 (++!9907 l1!1479 l2!1448)) p!2059))))

(assert (= (and d!1095280 (not res!1520940)) b!3753211))

(assert (= (and b!3753211 res!1520941) b!3753212))

(declare-fun b_lambda!110133 () Bool)

(assert (=> (not b_lambda!110133) (not b!3753211)))

(declare-fun t!303224 () Bool)

(declare-fun tb!214723 () Bool)

(assert (=> (and start!352448 (= p!2059 p!2059) t!303224) tb!214723))

(declare-fun result!262220 () Bool)

(assert (=> tb!214723 (= result!262220 true)))

(assert (=> b!3753211 t!303224))

(declare-fun b_and!278893 () Bool)

(assert (= b_and!278891 (and (=> t!303224 result!262220) b_and!278893)))

(declare-fun m!4245013 () Bool)

(assert (=> b!3753211 m!4245013))

(declare-fun m!4245015 () Bool)

(assert (=> b!3753212 m!4245015))

(assert (=> b!3753193 d!1095280))

(declare-fun b!3753237 () Bool)

(declare-fun e!2321623 () List!40137)

(assert (=> b!3753237 (= e!2321623 l2!1448)))

(declare-fun b!3753239 () Bool)

(declare-fun res!1520956 () Bool)

(declare-fun e!2321624 () Bool)

(assert (=> b!3753239 (=> (not res!1520956) (not e!2321624))))

(declare-fun lt!1300141 () List!40137)

(declare-fun size!30110 (List!40137) Int)

(assert (=> b!3753239 (= res!1520956 (= (size!30110 lt!1300141) (+ (size!30110 l1!1479) (size!30110 l2!1448))))))

(declare-fun b!3753240 () Bool)

(assert (=> b!3753240 (= e!2321624 (or (not (= l2!1448 Nil!40013)) (= lt!1300141 l1!1479)))))

(declare-fun d!1095282 () Bool)

(assert (=> d!1095282 e!2321624))

(declare-fun res!1520957 () Bool)

(assert (=> d!1095282 (=> (not res!1520957) (not e!2321624))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5870 (List!40137) (InoxSet B!2549))

(assert (=> d!1095282 (= res!1520957 (= (content!5870 lt!1300141) ((_ map or) (content!5870 l1!1479) (content!5870 l2!1448))))))

(assert (=> d!1095282 (= lt!1300141 e!2321623)))

(declare-fun c!649701 () Bool)

(assert (=> d!1095282 (= c!649701 ((_ is Nil!40013) l1!1479))))

(assert (=> d!1095282 (= (++!9907 l1!1479 l2!1448) lt!1300141)))

(declare-fun b!3753238 () Bool)

(assert (=> b!3753238 (= e!2321623 (Cons!40013 (h!45433 l1!1479) (++!9907 (t!303216 l1!1479) l2!1448)))))

(assert (= (and d!1095282 c!649701) b!3753237))

(assert (= (and d!1095282 (not c!649701)) b!3753238))

(assert (= (and d!1095282 res!1520957) b!3753239))

(assert (= (and b!3753239 res!1520956) b!3753240))

(declare-fun m!4245035 () Bool)

(assert (=> b!3753239 m!4245035))

(declare-fun m!4245037 () Bool)

(assert (=> b!3753239 m!4245037))

(declare-fun m!4245039 () Bool)

(assert (=> b!3753239 m!4245039))

(declare-fun m!4245041 () Bool)

(assert (=> d!1095282 m!4245041))

(declare-fun m!4245043 () Bool)

(assert (=> d!1095282 m!4245043))

(declare-fun m!4245045 () Bool)

(assert (=> d!1095282 m!4245045))

(declare-fun m!4245047 () Bool)

(assert (=> b!3753238 m!4245047))

(assert (=> b!3753193 d!1095282))

(declare-fun d!1095288 () Bool)

(declare-fun res!1520959 () Bool)

(declare-fun e!2321626 () Bool)

(assert (=> d!1095288 (=> res!1520959 e!2321626)))

(assert (=> d!1095288 (= res!1520959 ((_ is Nil!40013) l1!1479))))

(assert (=> d!1095288 (= (forall!8241 l1!1479 p!2059) e!2321626)))

(declare-fun b!3753242 () Bool)

(declare-fun e!2321627 () Bool)

(assert (=> b!3753242 (= e!2321626 e!2321627)))

(declare-fun res!1520960 () Bool)

(assert (=> b!3753242 (=> (not res!1520960) (not e!2321627))))

(assert (=> b!3753242 (= res!1520960 (dynLambda!17306 p!2059 (h!45433 l1!1479)))))

(declare-fun b!3753243 () Bool)

(assert (=> b!3753243 (= e!2321627 (forall!8241 (t!303216 l1!1479) p!2059))))

(assert (= (and d!1095288 (not res!1520959)) b!3753242))

(assert (= (and b!3753242 res!1520960) b!3753243))

(declare-fun b_lambda!110137 () Bool)

(assert (=> (not b_lambda!110137) (not b!3753242)))

(declare-fun t!303228 () Bool)

(declare-fun tb!214727 () Bool)

(assert (=> (and start!352448 (= p!2059 p!2059) t!303228) tb!214727))

(declare-fun result!262224 () Bool)

(assert (=> tb!214727 (= result!262224 true)))

(assert (=> b!3753242 t!303228))

(declare-fun b_and!278897 () Bool)

(assert (= b_and!278893 (and (=> t!303228 result!262224) b_and!278897)))

(declare-fun m!4245053 () Bool)

(assert (=> b!3753242 m!4245053))

(declare-fun m!4245055 () Bool)

(assert (=> b!3753243 m!4245055))

(assert (=> b!3753193 d!1095288))

(declare-fun d!1095290 () Bool)

(declare-fun e!2321634 () Bool)

(assert (=> d!1095290 (= (forall!8241 (++!9907 (t!303216 l1!1479) l2!1448) p!2059) e!2321634)))

(declare-fun res!1520963 () Bool)

(assert (=> d!1095290 (=> (not res!1520963) (not e!2321634))))

(assert (=> d!1095290 (= res!1520963 (forall!8241 (t!303216 l1!1479) p!2059))))

(declare-fun lt!1300145 () Unit!57746)

(declare-fun choose!22262 (List!40137 List!40137 Int) Unit!57746)

(assert (=> d!1095290 (= lt!1300145 (choose!22262 (t!303216 l1!1479) l2!1448 p!2059))))

(assert (=> d!1095290 (= (lemmaForallConcat!215 (t!303216 l1!1479) l2!1448 p!2059) lt!1300145)))

(declare-fun b!3753252 () Bool)

(assert (=> b!3753252 (= e!2321634 (forall!8241 l2!1448 p!2059))))

(assert (= (and d!1095290 res!1520963) b!3753252))

(assert (=> d!1095290 m!4245047))

(assert (=> d!1095290 m!4245047))

(declare-fun m!4245057 () Bool)

(assert (=> d!1095290 m!4245057))

(assert (=> d!1095290 m!4245055))

(declare-fun m!4245059 () Bool)

(assert (=> d!1095290 m!4245059))

(assert (=> b!3753252 m!4244991))

(assert (=> b!3753193 d!1095290))

(declare-fun b!3753257 () Bool)

(declare-fun e!2321637 () Bool)

(declare-fun tp!1145961 () Bool)

(assert (=> b!3753257 (= e!2321637 (and tp_is_empty!19061 tp!1145961))))

(assert (=> b!3753196 (= tp!1145953 e!2321637)))

(assert (= (and b!3753196 ((_ is Cons!40013) (t!303216 l2!1448))) b!3753257))

(declare-fun b!3753258 () Bool)

(declare-fun e!2321638 () Bool)

(declare-fun tp!1145962 () Bool)

(assert (=> b!3753258 (= e!2321638 (and tp_is_empty!19061 tp!1145962))))

(assert (=> b!3753195 (= tp!1145952 e!2321638)))

(assert (= (and b!3753195 ((_ is Cons!40013) (t!303216 l1!1479))) b!3753258))

(declare-fun b_lambda!110145 () Bool)

(assert (= b_lambda!110131 (or (and start!352448 b_free!100427) b_lambda!110145)))

(declare-fun b_lambda!110147 () Bool)

(assert (= b_lambda!110133 (or (and start!352448 b_free!100427) b_lambda!110147)))

(declare-fun b_lambda!110149 () Bool)

(assert (= b_lambda!110137 (or (and start!352448 b_free!100427) b_lambda!110149)))

(check-sat (not d!1095282) (not b_lambda!110145) (not b!3753238) (not b_lambda!110147) (not b!3753258) (not b_next!101131) (not b!3753239) (not b!3753210) b_and!278897 (not d!1095290) (not b!3753212) (not b!3753243) (not b_lambda!110149) tp_is_empty!19061 (not b!3753252) (not b!3753257))
(check-sat b_and!278897 (not b_next!101131))
