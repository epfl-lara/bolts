; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714348 () Bool)

(assert start!714348)

(declare-fun b_free!134275 () Bool)

(declare-fun b_next!135065 () Bool)

(assert (=> start!714348 (= b_free!134275 (not b_next!135065))))

(declare-fun tp!2079610 () Bool)

(declare-fun b_and!351783 () Bool)

(assert (=> start!714348 (= tp!2079610 b_and!351783)))

(declare-fun res!2959361 () Bool)

(declare-fun e!4383626 () Bool)

(assert (=> start!714348 (=> (not res!2959361) (not e!4383626))))

(declare-datatypes ((A!1121 0))(
  ( (A!1122 (val!29435 Int)) )
))
(declare-fun e!9205 () A!1121)

(declare-fun s!1482 () (Set A!1121))

(assert (=> start!714348 (= res!2959361 (set.member e!9205 s!1482))))

(assert (=> start!714348 e!4383626))

(declare-fun tp_is_empty!48121 () Bool)

(assert (=> start!714348 tp_is_empty!48121))

(declare-fun condSetEmpty!55820 () Bool)

(assert (=> start!714348 (= condSetEmpty!55820 (= s!1482 (as set.empty (Set A!1121))))))

(declare-fun setRes!55820 () Bool)

(assert (=> start!714348 setRes!55820))

(assert (=> start!714348 tp!2079610))

(declare-fun b!7321497 () Bool)

(assert (=> b!7321497 (= e!4383626 (not true))))

(declare-fun lt!2604731 () Bool)

(declare-fun p!1702 () Int)

(declare-fun exists!4710 ((Set A!1121) Int) Bool)

(assert (=> b!7321497 (= lt!2604731 (exists!4710 s!1482 p!1702))))

(declare-datatypes ((List!71434 0))(
  ( (Nil!71310) (Cons!71310 (h!77758 A!1121) (t!385775 List!71434)) )
))
(declare-fun lt!2604730 () List!71434)

(declare-fun exists!4711 (List!71434 Int) Bool)

(assert (=> b!7321497 (exists!4711 lt!2604730 p!1702)))

(declare-datatypes ((Unit!164881 0))(
  ( (Unit!164882) )
))
(declare-fun lt!2604729 () Unit!164881)

(declare-fun lemmaContainsThenExists!294 (List!71434 A!1121 Int) Unit!164881)

(assert (=> b!7321497 (= lt!2604729 (lemmaContainsThenExists!294 lt!2604730 e!9205 p!1702))))

(declare-fun toList!11721 ((Set A!1121)) List!71434)

(assert (=> b!7321497 (= lt!2604730 (toList!11721 s!1482))))

(declare-fun setIsEmpty!55820 () Bool)

(assert (=> setIsEmpty!55820 setRes!55820))

(declare-fun b!7321496 () Bool)

(declare-fun res!2959362 () Bool)

(assert (=> b!7321496 (=> (not res!2959362) (not e!4383626))))

(declare-fun dynLambda!29365 (Int A!1121) Bool)

(assert (=> b!7321496 (= res!2959362 (dynLambda!29365 p!1702 e!9205))))

(declare-fun setNonEmpty!55820 () Bool)

(declare-fun tp!2079611 () Bool)

(assert (=> setNonEmpty!55820 (= setRes!55820 (and tp!2079611 tp_is_empty!48121))))

(declare-fun setElem!55820 () A!1121)

(declare-fun setRest!55820 () (Set A!1121))

(assert (=> setNonEmpty!55820 (= s!1482 (set.union (set.insert setElem!55820 (as set.empty (Set A!1121))) setRest!55820))))

(assert (= (and start!714348 res!2959361) b!7321496))

(assert (= (and b!7321496 res!2959362) b!7321497))

(assert (= (and start!714348 condSetEmpty!55820) setIsEmpty!55820))

(assert (= (and start!714348 (not condSetEmpty!55820)) setNonEmpty!55820))

(declare-fun b_lambda!283023 () Bool)

(assert (=> (not b_lambda!283023) (not b!7321496)))

(declare-fun t!385774 () Bool)

(declare-fun tb!262351 () Bool)

(assert (=> (and start!714348 (= p!1702 p!1702) t!385774) tb!262351))

(declare-fun result!353546 () Bool)

(assert (=> tb!262351 (= result!353546 true)))

(assert (=> b!7321496 t!385774))

(declare-fun b_and!351785 () Bool)

(assert (= b_and!351783 (and (=> t!385774 result!353546) b_and!351785)))

(declare-fun m!7987278 () Bool)

(assert (=> start!714348 m!7987278))

(declare-fun m!7987280 () Bool)

(assert (=> b!7321497 m!7987280))

(declare-fun m!7987282 () Bool)

(assert (=> b!7321497 m!7987282))

(declare-fun m!7987284 () Bool)

(assert (=> b!7321497 m!7987284))

(declare-fun m!7987286 () Bool)

(assert (=> b!7321497 m!7987286))

(declare-fun m!7987288 () Bool)

(assert (=> b!7321496 m!7987288))

(push 1)

(assert tp_is_empty!48121)

(assert (not b_next!135065))

(assert b_and!351785)

(assert (not setNonEmpty!55820))

(assert (not b!7321497))

(assert (not b_lambda!283023))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351785)

(assert (not b_next!135065))

(check-sat)

(pop 1)

