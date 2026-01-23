; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664478 () Bool)

(assert start!664478)

(declare-fun b!6895076 () Bool)

(assert (=> b!6895076 true))

(assert (=> b!6895076 true))

(assert (=> b!6895076 true))

(declare-fun lambda!390897 () Int)

(declare-fun lambda!390896 () Int)

(assert (=> b!6895076 (not (= lambda!390897 lambda!390896))))

(assert (=> b!6895076 true))

(assert (=> b!6895076 true))

(assert (=> b!6895076 true))

(declare-fun bs!1840709 () Bool)

(declare-fun b!6895083 () Bool)

(assert (= bs!1840709 (and b!6895083 b!6895076)))

(declare-datatypes ((C!33932 0))(
  ( (C!33933 (val!26668 Int)) )
))
(declare-datatypes ((Regex!16831 0))(
  ( (ElementMatch!16831 (c!1281661 C!33932)) (Concat!25676 (regOne!34174 Regex!16831) (regTwo!34174 Regex!16831)) (EmptyExpr!16831) (Star!16831 (reg!17160 Regex!16831)) (EmptyLang!16831) (Union!16831 (regOne!34175 Regex!16831) (regTwo!34175 Regex!16831)) )
))
(declare-fun r1!6342 () Regex!16831)

(declare-fun lt!2463715 () Regex!16831)

(declare-fun r3!135 () Regex!16831)

(declare-datatypes ((List!66588 0))(
  ( (Nil!66464) (Cons!66464 (h!72912 C!33932) (t!380331 List!66588)) )
))
(declare-fun s!14361 () List!66588)

(declare-datatypes ((tuple2!67396 0))(
  ( (tuple2!67397 (_1!37001 List!66588) (_2!37001 List!66588)) )
))
(declare-fun lt!2463709 () tuple2!67396)

(declare-fun lambda!390898 () Int)

(declare-fun r2!6280 () Regex!16831)

(assert (=> bs!1840709 (= (and (= (_2!37001 lt!2463709) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2463715)) (= lambda!390898 lambda!390896))))

(assert (=> bs!1840709 (not (= lambda!390898 lambda!390897))))

(assert (=> b!6895083 true))

(assert (=> b!6895083 true))

(assert (=> b!6895083 true))

(declare-fun b!6895074 () Bool)

(declare-fun e!4153207 () Bool)

(declare-fun tp_is_empty!42887 () Bool)

(declare-fun tp!1897876 () Bool)

(assert (=> b!6895074 (= e!4153207 (and tp_is_empty!42887 tp!1897876))))

(declare-fun b!6895075 () Bool)

(declare-fun e!4153209 () Bool)

(declare-fun tp!1897869 () Bool)

(assert (=> b!6895075 (= e!4153209 tp!1897869)))

(declare-fun e!4153208 () Bool)

(declare-fun e!4153206 () Bool)

(assert (=> b!6895076 (= e!4153208 e!4153206)))

(declare-fun res!2811142 () Bool)

(assert (=> b!6895076 (=> res!2811142 e!4153206)))

(declare-fun lt!2463714 () Bool)

(assert (=> b!6895076 (= res!2811142 (not lt!2463714))))

(declare-fun matchRSpec!3894 (Regex!16831 List!66588) Bool)

(assert (=> b!6895076 (= lt!2463714 (matchRSpec!3894 r1!6342 (_1!37001 lt!2463709)))))

(declare-fun matchR!8976 (Regex!16831 List!66588) Bool)

(assert (=> b!6895076 (= lt!2463714 (matchR!8976 r1!6342 (_1!37001 lt!2463709)))))

(declare-datatypes ((Unit!160382 0))(
  ( (Unit!160383) )
))
(declare-fun lt!2463703 () Unit!160382)

(declare-fun mainMatchTheorem!3894 (Regex!16831 List!66588) Unit!160382)

(assert (=> b!6895076 (= lt!2463703 (mainMatchTheorem!3894 r1!6342 (_1!37001 lt!2463709)))))

(declare-datatypes ((Option!16610 0))(
  ( (None!16609) (Some!16609 (v!52881 tuple2!67396)) )
))
(declare-fun lt!2463704 () Option!16610)

(declare-fun get!23197 (Option!16610) tuple2!67396)

(assert (=> b!6895076 (= lt!2463709 (get!23197 lt!2463704))))

(declare-fun Exists!3839 (Int) Bool)

(assert (=> b!6895076 (= (Exists!3839 lambda!390896) (Exists!3839 lambda!390897))))

(declare-fun lt!2463705 () Unit!160382)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2312 (Regex!16831 Regex!16831 List!66588) Unit!160382)

(assert (=> b!6895076 (= lt!2463705 (lemmaExistCutMatchRandMatchRSpecEquivalent!2312 r1!6342 lt!2463715 s!14361))))

(assert (=> b!6895076 (Exists!3839 lambda!390896)))

(declare-fun lt!2463711 () Unit!160382)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2786 (Regex!16831 Regex!16831 List!66588) Unit!160382)

(assert (=> b!6895076 (= lt!2463711 (lemmaFindConcatSeparationEquivalentToExists!2786 r1!6342 lt!2463715 s!14361))))

(declare-fun b!6895077 () Bool)

(declare-fun res!2811144 () Bool)

(declare-fun e!4153205 () Bool)

(assert (=> b!6895077 (=> (not res!2811144) (not e!4153205))))

(declare-fun validRegex!8539 (Regex!16831) Bool)

(assert (=> b!6895077 (= res!2811144 (validRegex!8539 r3!135))))

(declare-fun b!6895078 () Bool)

(declare-fun e!4153203 () Bool)

(declare-fun tp!1897879 () Bool)

(declare-fun tp!1897870 () Bool)

(assert (=> b!6895078 (= e!4153203 (and tp!1897879 tp!1897870))))

(declare-fun b!6895079 () Bool)

(declare-fun e!4153204 () Bool)

(assert (=> b!6895079 (= e!4153204 tp_is_empty!42887)))

(declare-fun b!6895080 () Bool)

(assert (=> b!6895080 (= e!4153209 tp_is_empty!42887)))

(declare-fun b!6895081 () Bool)

(declare-fun tp!1897878 () Bool)

(declare-fun tp!1897865 () Bool)

(assert (=> b!6895081 (= e!4153203 (and tp!1897878 tp!1897865))))

(declare-fun b!6895082 () Bool)

(declare-fun res!2811143 () Bool)

(assert (=> b!6895082 (=> res!2811143 e!4153206)))

(assert (=> b!6895082 (= res!2811143 (not (matchR!8976 lt!2463715 (_2!37001 lt!2463709))))))

(assert (=> b!6895083 (= e!4153206 true)))

(declare-fun isDefined!13313 (Option!16610) Bool)

(declare-fun findConcatSeparation!3024 (Regex!16831 Regex!16831 List!66588 List!66588 List!66588) Option!16610)

(assert (=> b!6895083 (= (isDefined!13313 (findConcatSeparation!3024 r2!6280 r3!135 Nil!66464 (_2!37001 lt!2463709) (_2!37001 lt!2463709))) (Exists!3839 lambda!390898))))

(declare-fun lt!2463712 () Unit!160382)

(assert (=> b!6895083 (= lt!2463712 (lemmaFindConcatSeparationEquivalentToExists!2786 r2!6280 r3!135 (_2!37001 lt!2463709)))))

(assert (=> b!6895083 (matchRSpec!3894 lt!2463715 (_2!37001 lt!2463709))))

(declare-fun lt!2463702 () Unit!160382)

(assert (=> b!6895083 (= lt!2463702 (mainMatchTheorem!3894 lt!2463715 (_2!37001 lt!2463709)))))

(declare-fun b!6895084 () Bool)

(declare-fun tp!1897873 () Bool)

(assert (=> b!6895084 (= e!4153203 tp!1897873)))

(declare-fun b!6895085 () Bool)

(assert (=> b!6895085 (= e!4153203 tp_is_empty!42887)))

(declare-fun b!6895086 () Bool)

(declare-fun tp!1897864 () Bool)

(declare-fun tp!1897866 () Bool)

(assert (=> b!6895086 (= e!4153209 (and tp!1897864 tp!1897866))))

(declare-fun res!2811145 () Bool)

(assert (=> start!664478 (=> (not res!2811145) (not e!4153205))))

(assert (=> start!664478 (= res!2811145 (validRegex!8539 r1!6342))))

(assert (=> start!664478 e!4153205))

(assert (=> start!664478 e!4153203))

(assert (=> start!664478 e!4153209))

(assert (=> start!664478 e!4153204))

(assert (=> start!664478 e!4153207))

(declare-fun b!6895087 () Bool)

(declare-fun tp!1897877 () Bool)

(declare-fun tp!1897868 () Bool)

(assert (=> b!6895087 (= e!4153204 (and tp!1897877 tp!1897868))))

(declare-fun b!6895088 () Bool)

(declare-fun e!4153210 () Bool)

(assert (=> b!6895088 (= e!4153210 e!4153208)))

(declare-fun res!2811146 () Bool)

(assert (=> b!6895088 (=> res!2811146 e!4153208)))

(assert (=> b!6895088 (= res!2811146 (not (isDefined!13313 lt!2463704)))))

(assert (=> b!6895088 (= lt!2463704 (findConcatSeparation!3024 r1!6342 lt!2463715 Nil!66464 s!14361 s!14361))))

(declare-fun b!6895089 () Bool)

(assert (=> b!6895089 (= e!4153205 (not e!4153210))))

(declare-fun res!2811141 () Bool)

(assert (=> b!6895089 (=> res!2811141 e!4153210)))

(declare-fun lt!2463710 () Bool)

(assert (=> b!6895089 (= res!2811141 lt!2463710)))

(declare-fun lt!2463707 () Regex!16831)

(assert (=> b!6895089 (= (matchR!8976 lt!2463707 s!14361) (matchRSpec!3894 lt!2463707 s!14361))))

(declare-fun lt!2463706 () Unit!160382)

(assert (=> b!6895089 (= lt!2463706 (mainMatchTheorem!3894 lt!2463707 s!14361))))

(declare-fun lt!2463713 () Regex!16831)

(assert (=> b!6895089 (= lt!2463710 (matchRSpec!3894 lt!2463713 s!14361))))

(assert (=> b!6895089 (= lt!2463710 (matchR!8976 lt!2463713 s!14361))))

(declare-fun lt!2463708 () Unit!160382)

(assert (=> b!6895089 (= lt!2463708 (mainMatchTheorem!3894 lt!2463713 s!14361))))

(assert (=> b!6895089 (= lt!2463707 (Concat!25676 r1!6342 lt!2463715))))

(assert (=> b!6895089 (= lt!2463715 (Concat!25676 r2!6280 r3!135))))

(assert (=> b!6895089 (= lt!2463713 (Concat!25676 (Concat!25676 r1!6342 r2!6280) r3!135))))

(declare-fun b!6895090 () Bool)

(declare-fun tp!1897867 () Bool)

(declare-fun tp!1897874 () Bool)

(assert (=> b!6895090 (= e!4153209 (and tp!1897867 tp!1897874))))

(declare-fun b!6895091 () Bool)

(declare-fun res!2811140 () Bool)

(assert (=> b!6895091 (=> (not res!2811140) (not e!4153205))))

(assert (=> b!6895091 (= res!2811140 (validRegex!8539 r2!6280))))

(declare-fun b!6895092 () Bool)

(declare-fun tp!1897875 () Bool)

(declare-fun tp!1897872 () Bool)

(assert (=> b!6895092 (= e!4153204 (and tp!1897875 tp!1897872))))

(declare-fun b!6895093 () Bool)

(declare-fun tp!1897871 () Bool)

(assert (=> b!6895093 (= e!4153204 tp!1897871)))

(assert (= (and start!664478 res!2811145) b!6895091))

(assert (= (and b!6895091 res!2811140) b!6895077))

(assert (= (and b!6895077 res!2811144) b!6895089))

(assert (= (and b!6895089 (not res!2811141)) b!6895088))

(assert (= (and b!6895088 (not res!2811146)) b!6895076))

(assert (= (and b!6895076 (not res!2811142)) b!6895082))

(assert (= (and b!6895082 (not res!2811143)) b!6895083))

(get-info :version)

(assert (= (and start!664478 ((_ is ElementMatch!16831) r1!6342)) b!6895085))

(assert (= (and start!664478 ((_ is Concat!25676) r1!6342)) b!6895078))

(assert (= (and start!664478 ((_ is Star!16831) r1!6342)) b!6895084))

(assert (= (and start!664478 ((_ is Union!16831) r1!6342)) b!6895081))

(assert (= (and start!664478 ((_ is ElementMatch!16831) r2!6280)) b!6895080))

(assert (= (and start!664478 ((_ is Concat!25676) r2!6280)) b!6895086))

(assert (= (and start!664478 ((_ is Star!16831) r2!6280)) b!6895075))

(assert (= (and start!664478 ((_ is Union!16831) r2!6280)) b!6895090))

(assert (= (and start!664478 ((_ is ElementMatch!16831) r3!135)) b!6895079))

(assert (= (and start!664478 ((_ is Concat!25676) r3!135)) b!6895092))

(assert (= (and start!664478 ((_ is Star!16831) r3!135)) b!6895093))

(assert (= (and start!664478 ((_ is Union!16831) r3!135)) b!6895087))

(assert (= (and start!664478 ((_ is Cons!66464) s!14361)) b!6895074))

(declare-fun m!7614604 () Bool)

(assert (=> b!6895077 m!7614604))

(declare-fun m!7614606 () Bool)

(assert (=> b!6895082 m!7614606))

(declare-fun m!7614608 () Bool)

(assert (=> b!6895076 m!7614608))

(declare-fun m!7614610 () Bool)

(assert (=> b!6895076 m!7614610))

(declare-fun m!7614612 () Bool)

(assert (=> b!6895076 m!7614612))

(declare-fun m!7614614 () Bool)

(assert (=> b!6895076 m!7614614))

(declare-fun m!7614616 () Bool)

(assert (=> b!6895076 m!7614616))

(declare-fun m!7614618 () Bool)

(assert (=> b!6895076 m!7614618))

(declare-fun m!7614620 () Bool)

(assert (=> b!6895076 m!7614620))

(assert (=> b!6895076 m!7614612))

(declare-fun m!7614622 () Bool)

(assert (=> b!6895076 m!7614622))

(declare-fun m!7614624 () Bool)

(assert (=> b!6895083 m!7614624))

(declare-fun m!7614626 () Bool)

(assert (=> b!6895083 m!7614626))

(declare-fun m!7614628 () Bool)

(assert (=> b!6895083 m!7614628))

(declare-fun m!7614630 () Bool)

(assert (=> b!6895083 m!7614630))

(declare-fun m!7614632 () Bool)

(assert (=> b!6895083 m!7614632))

(assert (=> b!6895083 m!7614628))

(declare-fun m!7614634 () Bool)

(assert (=> b!6895083 m!7614634))

(declare-fun m!7614636 () Bool)

(assert (=> start!664478 m!7614636))

(declare-fun m!7614638 () Bool)

(assert (=> b!6895091 m!7614638))

(declare-fun m!7614640 () Bool)

(assert (=> b!6895089 m!7614640))

(declare-fun m!7614642 () Bool)

(assert (=> b!6895089 m!7614642))

(declare-fun m!7614644 () Bool)

(assert (=> b!6895089 m!7614644))

(declare-fun m!7614646 () Bool)

(assert (=> b!6895089 m!7614646))

(declare-fun m!7614648 () Bool)

(assert (=> b!6895089 m!7614648))

(declare-fun m!7614650 () Bool)

(assert (=> b!6895089 m!7614650))

(declare-fun m!7614652 () Bool)

(assert (=> b!6895088 m!7614652))

(declare-fun m!7614654 () Bool)

(assert (=> b!6895088 m!7614654))

(check-sat (not b!6895084) (not b!6895087) (not b!6895074) (not b!6895089) (not b!6895075) (not start!664478) (not b!6895083) (not b!6895081) (not b!6895092) tp_is_empty!42887 (not b!6895077) (not b!6895093) (not b!6895082) (not b!6895091) (not b!6895076) (not b!6895086) (not b!6895078) (not b!6895090) (not b!6895088))
(check-sat)
