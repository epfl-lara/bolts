; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246520 () Bool)

(assert start!246520)

(declare-fun b!2532873 () Bool)

(declare-fun res!1068978 () Bool)

(declare-fun e!1602578 () Bool)

(assert (=> b!2532873 (=> (not res!1068978) (not e!1602578))))

(declare-datatypes ((C!15248 0))(
  ( (C!15249 (val!9276 Int)) )
))
(declare-datatypes ((Regex!7545 0))(
  ( (ElementMatch!7545 (c!404653 C!15248)) (Concat!12241 (regOne!15602 Regex!7545) (regTwo!15602 Regex!7545)) (EmptyExpr!7545) (Star!7545 (reg!7874 Regex!7545)) (EmptyLang!7545) (Union!7545 (regOne!15603 Regex!7545) (regTwo!15603 Regex!7545)) )
))
(declare-fun lt!901354 () Regex!7545)

(declare-fun r!27340 () Regex!7545)

(declare-fun c!14016 () C!15248)

(get-info :version)

(assert (=> b!2532873 (= res!1068978 (and (not ((_ is EmptyExpr!7545) r!27340)) (not ((_ is EmptyLang!7545) r!27340)) ((_ is ElementMatch!7545) r!27340) (not (= c!14016 (c!404653 r!27340))) (= lt!901354 EmptyLang!7545)))))

(declare-fun b!2532874 () Bool)

(declare-fun e!1602577 () Bool)

(declare-fun tp!809139 () Bool)

(declare-fun tp!809140 () Bool)

(assert (=> b!2532874 (= e!1602577 (and tp!809139 tp!809140))))

(declare-fun b!2532875 () Bool)

(assert (=> b!2532875 (= e!1602578 (not true))))

(declare-fun lt!901356 () Regex!7545)

(assert (=> b!2532875 (= lt!901356 lt!901354)))

(declare-datatypes ((Unit!43307 0))(
  ( (Unit!43308) )
))
(declare-fun lt!901355 () Unit!43307)

(declare-datatypes ((List!29610 0))(
  ( (Nil!29510) (Cons!29510 (h!34930 C!15248) (t!211309 List!29610)) )
))
(declare-fun tl!4068 () List!29610)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!58 (Regex!7545 List!29610) Unit!43307)

(assert (=> b!2532875 (= lt!901355 (lemmaEmptyLangDerivativeIsAFixPoint!58 lt!901354 tl!4068))))

(declare-fun b!2532876 () Bool)

(declare-fun e!1602575 () Bool)

(assert (=> b!2532876 (= e!1602575 e!1602578)))

(declare-fun res!1068980 () Bool)

(assert (=> b!2532876 (=> (not res!1068980) (not e!1602578))))

(declare-fun nullable!2462 (Regex!7545) Bool)

(assert (=> b!2532876 (= res!1068980 (nullable!2462 lt!901356))))

(declare-fun derivative!240 (Regex!7545 List!29610) Regex!7545)

(assert (=> b!2532876 (= lt!901356 (derivative!240 lt!901354 tl!4068))))

(declare-fun derivativeStep!2114 (Regex!7545 C!15248) Regex!7545)

(assert (=> b!2532876 (= lt!901354 (derivativeStep!2114 r!27340 c!14016))))

(declare-fun b!2532877 () Bool)

(declare-fun tp!809142 () Bool)

(assert (=> b!2532877 (= e!1602577 tp!809142)))

(declare-fun b!2532878 () Bool)

(declare-fun tp!809141 () Bool)

(declare-fun tp!809138 () Bool)

(assert (=> b!2532878 (= e!1602577 (and tp!809141 tp!809138))))

(declare-fun b!2532879 () Bool)

(declare-fun e!1602576 () Bool)

(declare-fun tp_is_empty!12945 () Bool)

(declare-fun tp!809137 () Bool)

(assert (=> b!2532879 (= e!1602576 (and tp_is_empty!12945 tp!809137))))

(declare-fun b!2532880 () Bool)

(assert (=> b!2532880 (= e!1602577 tp_is_empty!12945)))

(declare-fun res!1068979 () Bool)

(assert (=> start!246520 (=> (not res!1068979) (not e!1602575))))

(declare-fun validRegex!3171 (Regex!7545) Bool)

(assert (=> start!246520 (= res!1068979 (validRegex!3171 r!27340))))

(assert (=> start!246520 e!1602575))

(assert (=> start!246520 e!1602577))

(assert (=> start!246520 tp_is_empty!12945))

(assert (=> start!246520 e!1602576))

(assert (= (and start!246520 res!1068979) b!2532876))

(assert (= (and b!2532876 res!1068980) b!2532873))

(assert (= (and b!2532873 res!1068978) b!2532875))

(assert (= (and start!246520 ((_ is ElementMatch!7545) r!27340)) b!2532880))

(assert (= (and start!246520 ((_ is Concat!12241) r!27340)) b!2532878))

(assert (= (and start!246520 ((_ is Star!7545) r!27340)) b!2532877))

(assert (= (and start!246520 ((_ is Union!7545) r!27340)) b!2532874))

(assert (= (and start!246520 ((_ is Cons!29510) tl!4068)) b!2532879))

(declare-fun m!2882939 () Bool)

(assert (=> b!2532875 m!2882939))

(declare-fun m!2882941 () Bool)

(assert (=> b!2532876 m!2882941))

(declare-fun m!2882943 () Bool)

(assert (=> b!2532876 m!2882943))

(declare-fun m!2882945 () Bool)

(assert (=> b!2532876 m!2882945))

(declare-fun m!2882947 () Bool)

(assert (=> start!246520 m!2882947))

(check-sat (not b!2532876) (not b!2532877) (not b!2532875) (not start!246520) (not b!2532878) tp_is_empty!12945 (not b!2532879) (not b!2532874))
(check-sat)
