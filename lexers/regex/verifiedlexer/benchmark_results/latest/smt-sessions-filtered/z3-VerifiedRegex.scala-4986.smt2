; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252604 () Bool)

(assert start!252604)

(declare-fun b_free!72959 () Bool)

(declare-fun b_next!73663 () Bool)

(assert (=> start!252604 (= b_free!72959 (not b_next!73663))))

(declare-fun tp!823755 () Bool)

(declare-fun b_and!190225 () Bool)

(assert (=> start!252604 (= tp!823755 b_and!190225)))

(declare-fun res!1095086 () Bool)

(declare-fun e!1641117 () Bool)

(assert (=> start!252604 (=> (not res!1095086) (not e!1641117))))

(declare-datatypes ((B!2365 0))(
  ( (B!2366 (val!9650 Int)) )
))
(declare-datatypes ((List!30083 0))(
  ( (Nil!29983) (Cons!29983 (h!35403 B!2365) (t!213108 List!30083)) )
))
(declare-fun l!3788 () List!30083)

(declare-fun noDuplicate!531 (List!30083) Bool)

(assert (=> start!252604 (= res!1095086 (noDuplicate!531 l!3788))))

(assert (=> start!252604 e!1641117))

(declare-fun e!1641116 () Bool)

(assert (=> start!252604 e!1641116))

(assert (=> start!252604 tp!823755))

(declare-fun b!2599957 () Bool)

(declare-fun res!1095087 () Bool)

(assert (=> b!2599957 (=> (not res!1095087) (not e!1641117))))

(declare-fun p!2182 () Int)

(declare-fun forall!6164 (List!30083 Int) Bool)

(assert (=> b!2599957 (= res!1095087 (forall!6164 l!3788 p!2182))))

(declare-fun b!2599958 () Bool)

(declare-fun ListPrimitiveSize!191 (List!30083) Int)

(assert (=> b!2599958 (= e!1641117 (< (ListPrimitiveSize!191 l!3788) 0))))

(declare-fun b!2599959 () Bool)

(declare-fun tp_is_empty!13645 () Bool)

(declare-fun tp!823756 () Bool)

(assert (=> b!2599959 (= e!1641116 (and tp_is_empty!13645 tp!823756))))

(assert (= (and start!252604 res!1095086) b!2599957))

(assert (= (and b!2599957 res!1095087) b!2599958))

(get-info :version)

(assert (= (and start!252604 ((_ is Cons!29983) l!3788)) b!2599959))

(declare-fun m!2935523 () Bool)

(assert (=> start!252604 m!2935523))

(declare-fun m!2935525 () Bool)

(assert (=> b!2599957 m!2935525))

(declare-fun m!2935527 () Bool)

(assert (=> b!2599958 m!2935527))

(check-sat (not b!2599958) b_and!190225 (not start!252604) (not b!2599959) (not b!2599957) tp_is_empty!13645 (not b_next!73663))
(check-sat b_and!190225 (not b_next!73663))
(get-model)

(declare-fun d!736613 () Bool)

(declare-fun lt!915234 () Int)

(assert (=> d!736613 (>= lt!915234 0)))

(declare-fun e!1641126 () Int)

(assert (=> d!736613 (= lt!915234 e!1641126)))

(declare-fun c!418619 () Bool)

(assert (=> d!736613 (= c!418619 ((_ is Nil!29983) l!3788))))

(assert (=> d!736613 (= (ListPrimitiveSize!191 l!3788) lt!915234)))

(declare-fun b!2599970 () Bool)

(assert (=> b!2599970 (= e!1641126 0)))

(declare-fun b!2599971 () Bool)

(assert (=> b!2599971 (= e!1641126 (+ 1 (ListPrimitiveSize!191 (t!213108 l!3788))))))

(assert (= (and d!736613 c!418619) b!2599970))

(assert (= (and d!736613 (not c!418619)) b!2599971))

(declare-fun m!2935533 () Bool)

(assert (=> b!2599971 m!2935533))

(assert (=> b!2599958 d!736613))

(declare-fun d!736617 () Bool)

(declare-fun res!1095098 () Bool)

(declare-fun e!1641134 () Bool)

(assert (=> d!736617 (=> res!1095098 e!1641134)))

(assert (=> d!736617 (= res!1095098 ((_ is Nil!29983) l!3788))))

(assert (=> d!736617 (= (forall!6164 l!3788 p!2182) e!1641134)))

(declare-fun b!2599982 () Bool)

(declare-fun e!1641135 () Bool)

(assert (=> b!2599982 (= e!1641134 e!1641135)))

(declare-fun res!1095099 () Bool)

(assert (=> b!2599982 (=> (not res!1095099) (not e!1641135))))

(declare-fun dynLambda!12672 (Int B!2365) Bool)

(assert (=> b!2599982 (= res!1095099 (dynLambda!12672 p!2182 (h!35403 l!3788)))))

(declare-fun b!2599983 () Bool)

(assert (=> b!2599983 (= e!1641135 (forall!6164 (t!213108 l!3788) p!2182))))

(assert (= (and d!736617 (not res!1095098)) b!2599982))

(assert (= (and b!2599982 res!1095099) b!2599983))

(declare-fun b_lambda!77755 () Bool)

(assert (=> (not b_lambda!77755) (not b!2599982)))

(declare-fun t!213110 () Bool)

(declare-fun tb!141493 () Bool)

(assert (=> (and start!252604 (= p!2182 p!2182) t!213110) tb!141493))

(declare-fun result!176008 () Bool)

(assert (=> tb!141493 (= result!176008 true)))

(assert (=> b!2599982 t!213110))

(declare-fun b_and!190227 () Bool)

(assert (= b_and!190225 (and (=> t!213110 result!176008) b_and!190227)))

(declare-fun m!2935537 () Bool)

(assert (=> b!2599982 m!2935537))

(declare-fun m!2935539 () Bool)

(assert (=> b!2599983 m!2935539))

(assert (=> b!2599957 d!736617))

(declare-fun d!736621 () Bool)

(declare-fun res!1095110 () Bool)

(declare-fun e!1641148 () Bool)

(assert (=> d!736621 (=> res!1095110 e!1641148)))

(assert (=> d!736621 (= res!1095110 ((_ is Nil!29983) l!3788))))

(assert (=> d!736621 (= (noDuplicate!531 l!3788) e!1641148)))

(declare-fun b!2599998 () Bool)

(declare-fun e!1641149 () Bool)

(assert (=> b!2599998 (= e!1641148 e!1641149)))

(declare-fun res!1095111 () Bool)

(assert (=> b!2599998 (=> (not res!1095111) (not e!1641149))))

(declare-fun contains!5530 (List!30083 B!2365) Bool)

(assert (=> b!2599998 (= res!1095111 (not (contains!5530 (t!213108 l!3788) (h!35403 l!3788))))))

(declare-fun b!2599999 () Bool)

(assert (=> b!2599999 (= e!1641149 (noDuplicate!531 (t!213108 l!3788)))))

(assert (= (and d!736621 (not res!1095110)) b!2599998))

(assert (= (and b!2599998 res!1095111) b!2599999))

(declare-fun m!2935545 () Bool)

(assert (=> b!2599998 m!2935545))

(declare-fun m!2935547 () Bool)

(assert (=> b!2599999 m!2935547))

(assert (=> start!252604 d!736621))

(declare-fun b!2600005 () Bool)

(declare-fun e!1641153 () Bool)

(declare-fun tp!823762 () Bool)

(assert (=> b!2600005 (= e!1641153 (and tp_is_empty!13645 tp!823762))))

(assert (=> b!2599959 (= tp!823756 e!1641153)))

(assert (= (and b!2599959 ((_ is Cons!29983) (t!213108 l!3788))) b!2600005))

(declare-fun b_lambda!77761 () Bool)

(assert (= b_lambda!77755 (or (and start!252604 b_free!72959) b_lambda!77761)))

(check-sat (not b!2600005) (not b!2599983) b_and!190227 (not b!2599971) (not b_lambda!77761) tp_is_empty!13645 (not b_next!73663) (not b!2599999) (not b!2599998))
(check-sat b_and!190227 (not b_next!73663))
