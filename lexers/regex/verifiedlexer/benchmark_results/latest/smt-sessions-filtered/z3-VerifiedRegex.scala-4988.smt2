; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252636 () Bool)

(assert start!252636)

(declare-fun b_free!72967 () Bool)

(declare-fun b_next!73671 () Bool)

(assert (=> start!252636 (= b_free!72967 (not b_next!73671))))

(declare-fun tp!823792 () Bool)

(declare-fun b_and!190245 () Bool)

(assert (=> start!252636 (= tp!823792 b_and!190245)))

(declare-fun b!2600121 () Bool)

(declare-fun e!1641231 () Bool)

(declare-fun tp_is_empty!13653 () Bool)

(declare-fun tp!823791 () Bool)

(assert (=> b!2600121 (= e!1641231 (and tp_is_empty!13653 tp!823791))))

(declare-fun b!2600118 () Bool)

(declare-fun res!1095179 () Bool)

(declare-fun e!1641230 () Bool)

(assert (=> b!2600118 (=> (not res!1095179) (not e!1641230))))

(declare-datatypes ((B!2373 0))(
  ( (B!2374 (val!9654 Int)) )
))
(declare-datatypes ((List!30087 0))(
  ( (Nil!29987) (Cons!29987 (h!35407 B!2373) (t!213124 List!30087)) )
))
(declare-fun l!3788 () List!30087)

(declare-fun p!2182 () Int)

(declare-fun forall!6168 (List!30087 Int) Bool)

(assert (=> b!2600118 (= res!1095179 (forall!6168 l!3788 p!2182))))

(declare-fun b!2600120 () Bool)

(declare-fun ListPrimitiveSize!193 (List!30087) Int)

(assert (=> b!2600120 (= e!1641230 (>= (ListPrimitiveSize!193 (t!213124 l!3788)) (ListPrimitiveSize!193 l!3788)))))

(declare-fun res!1095180 () Bool)

(assert (=> start!252636 (=> (not res!1095180) (not e!1641230))))

(declare-fun noDuplicate!535 (List!30087) Bool)

(assert (=> start!252636 (= res!1095180 (noDuplicate!535 l!3788))))

(assert (=> start!252636 e!1641230))

(assert (=> start!252636 e!1641231))

(assert (=> start!252636 tp!823792))

(declare-fun b!2600119 () Bool)

(declare-fun res!1095181 () Bool)

(assert (=> b!2600119 (=> (not res!1095181) (not e!1641230))))

(get-info :version)

(assert (=> b!2600119 (= res!1095181 (not ((_ is Nil!29987) l!3788)))))

(assert (= (and start!252636 res!1095180) b!2600118))

(assert (= (and b!2600118 res!1095179) b!2600119))

(assert (= (and b!2600119 res!1095181) b!2600120))

(assert (= (and start!252636 ((_ is Cons!29987) l!3788)) b!2600121))

(declare-fun m!2935621 () Bool)

(assert (=> b!2600118 m!2935621))

(declare-fun m!2935623 () Bool)

(assert (=> b!2600120 m!2935623))

(declare-fun m!2935625 () Bool)

(assert (=> b!2600120 m!2935625))

(declare-fun m!2935627 () Bool)

(assert (=> start!252636 m!2935627))

(check-sat (not b_next!73671) (not start!252636) (not b!2600120) (not b!2600121) (not b!2600118) b_and!190245 tp_is_empty!13653)
(check-sat b_and!190245 (not b_next!73671))
(get-model)

(declare-fun d!736643 () Bool)

(declare-fun lt!915250 () Int)

(assert (=> d!736643 (>= lt!915250 0)))

(declare-fun e!1641242 () Int)

(assert (=> d!736643 (= lt!915250 e!1641242)))

(declare-fun c!418641 () Bool)

(assert (=> d!736643 (= c!418641 ((_ is Nil!29987) (t!213124 l!3788)))))

(assert (=> d!736643 (= (ListPrimitiveSize!193 (t!213124 l!3788)) lt!915250)))

(declare-fun b!2600138 () Bool)

(assert (=> b!2600138 (= e!1641242 0)))

(declare-fun b!2600139 () Bool)

(assert (=> b!2600139 (= e!1641242 (+ 1 (ListPrimitiveSize!193 (t!213124 (t!213124 l!3788)))))))

(assert (= (and d!736643 c!418641) b!2600138))

(assert (= (and d!736643 (not c!418641)) b!2600139))

(declare-fun m!2935631 () Bool)

(assert (=> b!2600139 m!2935631))

(assert (=> b!2600120 d!736643))

(declare-fun d!736649 () Bool)

(declare-fun lt!915251 () Int)

(assert (=> d!736649 (>= lt!915251 0)))

(declare-fun e!1641243 () Int)

(assert (=> d!736649 (= lt!915251 e!1641243)))

(declare-fun c!418642 () Bool)

(assert (=> d!736649 (= c!418642 ((_ is Nil!29987) l!3788))))

(assert (=> d!736649 (= (ListPrimitiveSize!193 l!3788) lt!915251)))

(declare-fun b!2600140 () Bool)

(assert (=> b!2600140 (= e!1641243 0)))

(declare-fun b!2600141 () Bool)

(assert (=> b!2600141 (= e!1641243 (+ 1 (ListPrimitiveSize!193 (t!213124 l!3788))))))

(assert (= (and d!736649 c!418642) b!2600140))

(assert (= (and d!736649 (not c!418642)) b!2600141))

(assert (=> b!2600141 m!2935623))

(assert (=> b!2600120 d!736649))

(declare-fun d!736651 () Bool)

(declare-fun res!1095196 () Bool)

(declare-fun e!1641254 () Bool)

(assert (=> d!736651 (=> res!1095196 e!1641254)))

(assert (=> d!736651 (= res!1095196 ((_ is Nil!29987) l!3788))))

(assert (=> d!736651 (= (noDuplicate!535 l!3788) e!1641254)))

(declare-fun b!2600152 () Bool)

(declare-fun e!1641255 () Bool)

(assert (=> b!2600152 (= e!1641254 e!1641255)))

(declare-fun res!1095197 () Bool)

(assert (=> b!2600152 (=> (not res!1095197) (not e!1641255))))

(declare-fun contains!5534 (List!30087 B!2373) Bool)

(assert (=> b!2600152 (= res!1095197 (not (contains!5534 (t!213124 l!3788) (h!35407 l!3788))))))

(declare-fun b!2600153 () Bool)

(assert (=> b!2600153 (= e!1641255 (noDuplicate!535 (t!213124 l!3788)))))

(assert (= (and d!736651 (not res!1095196)) b!2600152))

(assert (= (and b!2600152 res!1095197) b!2600153))

(declare-fun m!2935637 () Bool)

(assert (=> b!2600152 m!2935637))

(declare-fun m!2935639 () Bool)

(assert (=> b!2600153 m!2935639))

(assert (=> start!252636 d!736651))

(declare-fun d!736655 () Bool)

(declare-fun res!1095204 () Bool)

(declare-fun e!1641265 () Bool)

(assert (=> d!736655 (=> res!1095204 e!1641265)))

(assert (=> d!736655 (= res!1095204 ((_ is Nil!29987) l!3788))))

(assert (=> d!736655 (= (forall!6168 l!3788 p!2182) e!1641265)))

(declare-fun b!2600165 () Bool)

(declare-fun e!1641266 () Bool)

(assert (=> b!2600165 (= e!1641265 e!1641266)))

(declare-fun res!1095205 () Bool)

(assert (=> b!2600165 (=> (not res!1095205) (not e!1641266))))

(declare-fun dynLambda!12677 (Int B!2373) Bool)

(assert (=> b!2600165 (= res!1095205 (dynLambda!12677 p!2182 (h!35407 l!3788)))))

(declare-fun b!2600166 () Bool)

(assert (=> b!2600166 (= e!1641266 (forall!6168 (t!213124 l!3788) p!2182))))

(assert (= (and d!736655 (not res!1095204)) b!2600165))

(assert (= (and b!2600165 res!1095205) b!2600166))

(declare-fun b_lambda!77783 () Bool)

(assert (=> (not b_lambda!77783) (not b!2600165)))

(declare-fun t!213128 () Bool)

(declare-fun tb!141507 () Bool)

(assert (=> (and start!252636 (= p!2182 p!2182) t!213128) tb!141507))

(declare-fun result!176032 () Bool)

(assert (=> tb!141507 (= result!176032 true)))

(assert (=> b!2600165 t!213128))

(declare-fun b_and!190249 () Bool)

(assert (= b_and!190245 (and (=> t!213128 result!176032) b_and!190249)))

(declare-fun m!2935645 () Bool)

(assert (=> b!2600165 m!2935645))

(declare-fun m!2935647 () Bool)

(assert (=> b!2600166 m!2935647))

(assert (=> b!2600118 d!736655))

(declare-fun b!2600171 () Bool)

(declare-fun e!1641269 () Bool)

(declare-fun tp!823798 () Bool)

(assert (=> b!2600171 (= e!1641269 (and tp_is_empty!13653 tp!823798))))

(assert (=> b!2600121 (= tp!823791 e!1641269)))

(assert (= (and b!2600121 ((_ is Cons!29987) (t!213124 l!3788))) b!2600171))

(declare-fun b_lambda!77785 () Bool)

(assert (= b_lambda!77783 (or (and start!252636 b_free!72967) b_lambda!77785)))

(check-sat (not b!2600139) (not b_lambda!77785) (not b!2600141) (not b!2600153) (not b!2600171) (not b!2600152) tp_is_empty!13653 (not b!2600166) (not b_next!73671) b_and!190249)
(check-sat b_and!190249 (not b_next!73671))
