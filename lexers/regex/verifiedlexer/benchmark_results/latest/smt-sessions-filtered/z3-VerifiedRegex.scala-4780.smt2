; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246408 () Bool)

(assert start!246408)

(declare-fun b!2531069 () Bool)

(declare-fun e!1601688 () Bool)

(declare-fun tp!808227 () Bool)

(declare-fun tp!808226 () Bool)

(assert (=> b!2531069 (= e!1601688 (and tp!808227 tp!808226))))

(declare-fun b!2531070 () Bool)

(declare-fun e!1601686 () Bool)

(declare-fun e!1601687 () Bool)

(assert (=> b!2531070 (= e!1601686 e!1601687)))

(declare-fun res!1068591 () Bool)

(assert (=> b!2531070 (=> (not res!1068591) (not e!1601687))))

(declare-datatypes ((C!15228 0))(
  ( (C!15229 (val!9266 Int)) )
))
(declare-datatypes ((Regex!7535 0))(
  ( (ElementMatch!7535 (c!404317 C!15228)) (Concat!12231 (regOne!15582 Regex!7535) (regTwo!15582 Regex!7535)) (EmptyExpr!7535) (Star!7535 (reg!7864 Regex!7535)) (EmptyLang!7535) (Union!7535 (regOne!15583 Regex!7535) (regTwo!15583 Regex!7535)) )
))
(declare-fun lt!901188 () Regex!7535)

(declare-fun nullable!2452 (Regex!7535) Bool)

(assert (=> b!2531070 (= res!1068591 (nullable!2452 lt!901188))))

(declare-fun lt!901186 () Regex!7535)

(declare-datatypes ((List!29600 0))(
  ( (Nil!29500) (Cons!29500 (h!34920 C!15228) (t!211299 List!29600)) )
))
(declare-fun tl!4068 () List!29600)

(declare-fun derivative!230 (Regex!7535 List!29600) Regex!7535)

(assert (=> b!2531070 (= lt!901188 (derivative!230 lt!901186 tl!4068))))

(declare-fun r!27340 () Regex!7535)

(declare-fun c!14016 () C!15228)

(declare-fun derivativeStep!2104 (Regex!7535 C!15228) Regex!7535)

(assert (=> b!2531070 (= lt!901186 (derivativeStep!2104 r!27340 c!14016))))

(declare-fun b!2531071 () Bool)

(declare-fun tp!808225 () Bool)

(assert (=> b!2531071 (= e!1601688 tp!808225)))

(declare-fun b!2531072 () Bool)

(assert (=> b!2531072 (= e!1601687 (not true))))

(assert (=> b!2531072 (= lt!901188 lt!901186)))

(declare-datatypes ((Unit!43291 0))(
  ( (Unit!43292) )
))
(declare-fun lt!901187 () Unit!43291)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!50 (Regex!7535 List!29600) Unit!43291)

(assert (=> b!2531072 (= lt!901187 (lemmaEmptyLangDerivativeIsAFixPoint!50 lt!901186 tl!4068))))

(declare-fun b!2531073 () Bool)

(declare-fun e!1601685 () Bool)

(declare-fun tp_is_empty!12925 () Bool)

(declare-fun tp!808228 () Bool)

(assert (=> b!2531073 (= e!1601685 (and tp_is_empty!12925 tp!808228))))

(declare-fun b!2531074 () Bool)

(declare-fun tp!808229 () Bool)

(declare-fun tp!808230 () Bool)

(assert (=> b!2531074 (= e!1601688 (and tp!808229 tp!808230))))

(declare-fun b!2531075 () Bool)

(assert (=> b!2531075 (= e!1601688 tp_is_empty!12925)))

(declare-fun b!2531076 () Bool)

(declare-fun res!1068590 () Bool)

(assert (=> b!2531076 (=> (not res!1068590) (not e!1601687))))

(get-info :version)

(assert (=> b!2531076 (= res!1068590 (and (not ((_ is EmptyExpr!7535) r!27340)) ((_ is EmptyLang!7535) r!27340) (= lt!901186 EmptyLang!7535)))))

(declare-fun res!1068592 () Bool)

(assert (=> start!246408 (=> (not res!1068592) (not e!1601686))))

(declare-fun validRegex!3161 (Regex!7535) Bool)

(assert (=> start!246408 (= res!1068592 (validRegex!3161 r!27340))))

(assert (=> start!246408 e!1601686))

(assert (=> start!246408 e!1601688))

(assert (=> start!246408 tp_is_empty!12925))

(assert (=> start!246408 e!1601685))

(assert (= (and start!246408 res!1068592) b!2531070))

(assert (= (and b!2531070 res!1068591) b!2531076))

(assert (= (and b!2531076 res!1068590) b!2531072))

(assert (= (and start!246408 ((_ is ElementMatch!7535) r!27340)) b!2531075))

(assert (= (and start!246408 ((_ is Concat!12231) r!27340)) b!2531074))

(assert (= (and start!246408 ((_ is Star!7535) r!27340)) b!2531071))

(assert (= (and start!246408 ((_ is Union!7535) r!27340)) b!2531069))

(assert (= (and start!246408 ((_ is Cons!29500) tl!4068)) b!2531073))

(declare-fun m!2882187 () Bool)

(assert (=> b!2531070 m!2882187))

(declare-fun m!2882189 () Bool)

(assert (=> b!2531070 m!2882189))

(declare-fun m!2882191 () Bool)

(assert (=> b!2531070 m!2882191))

(declare-fun m!2882193 () Bool)

(assert (=> b!2531072 m!2882193))

(declare-fun m!2882195 () Bool)

(assert (=> start!246408 m!2882195))

(check-sat (not start!246408) (not b!2531071) (not b!2531070) (not b!2531074) (not b!2531073) (not b!2531069) tp_is_empty!12925 (not b!2531072))
(check-sat)
