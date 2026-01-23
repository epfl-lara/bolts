; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245340 () Bool)

(assert start!245340)

(declare-fun b!2516076 () Bool)

(declare-fun e!1593984 () Bool)

(declare-datatypes ((C!15128 0))(
  ( (C!15129 (val!9216 Int)) )
))
(declare-datatypes ((List!29550 0))(
  ( (Nil!29450) (Cons!29450 (h!34870 C!15128) (t!211249 List!29550)) )
))
(declare-fun tl!4068 () List!29550)

(declare-datatypes ((Regex!7485 0))(
  ( (ElementMatch!7485 (c!401035 C!15128)) (Concat!12181 (regOne!15482 Regex!7485) (regTwo!15482 Regex!7485)) (EmptyExpr!7485) (Star!7485 (reg!7814 Regex!7485)) (EmptyLang!7485) (Union!7485 (regOne!15483 Regex!7485) (regTwo!15483 Regex!7485)) )
))
(declare-fun matchR!3484 (Regex!7485 List!29550) Bool)

(assert (=> b!2516076 (= e!1593984 (matchR!3484 EmptyLang!7485 tl!4068))))

(declare-fun b!2516077 () Bool)

(declare-fun res!1063635 () Bool)

(declare-fun e!1593982 () Bool)

(assert (=> b!2516077 (=> (not res!1063635) (not e!1593982))))

(declare-fun r!27340 () Regex!7485)

(declare-fun c!14016 () C!15128)

(declare-fun nullable!2402 (Regex!7485) Bool)

(declare-fun derivative!180 (Regex!7485 List!29550) Regex!7485)

(declare-fun derivativeStep!2054 (Regex!7485 C!15128) Regex!7485)

(assert (=> b!2516077 (= res!1063635 (nullable!2402 (derivative!180 (derivativeStep!2054 r!27340 c!14016) tl!4068)))))

(declare-fun b!2516078 () Bool)

(declare-fun res!1063640 () Bool)

(assert (=> b!2516078 (=> (not res!1063640) (not e!1593982))))

(get-info :version)

(assert (=> b!2516078 (= res!1063640 (and (not ((_ is EmptyExpr!7485) r!27340)) (not ((_ is EmptyLang!7485) r!27340)) (not ((_ is ElementMatch!7485) r!27340)) (not ((_ is Union!7485) r!27340)) (not ((_ is Star!7485) r!27340))))))

(declare-fun b!2516080 () Bool)

(declare-fun res!1063636 () Bool)

(declare-fun e!1593986 () Bool)

(assert (=> b!2516080 (=> res!1063636 e!1593986)))

(declare-datatypes ((tuple2!29500 0))(
  ( (tuple2!29501 (_1!17292 List!29550) (_2!17292 List!29550)) )
))
(declare-fun lt!898953 () tuple2!29500)

(assert (=> b!2516080 (= res!1063636 (not (matchR!3484 (regTwo!15482 r!27340) (_2!17292 lt!898953))))))

(declare-fun b!2516081 () Bool)

(declare-fun e!1593983 () Bool)

(declare-fun tp_is_empty!12825 () Bool)

(assert (=> b!2516081 (= e!1593983 tp_is_empty!12825)))

(declare-fun b!2516082 () Bool)

(declare-fun res!1063638 () Bool)

(assert (=> b!2516082 (=> res!1063638 e!1593986)))

(assert (=> b!2516082 (= res!1063638 (not (matchR!3484 (regOne!15482 r!27340) (Cons!29450 c!14016 (_1!17292 lt!898953)))))))

(declare-fun b!2516083 () Bool)

(declare-fun res!1063641 () Bool)

(assert (=> b!2516083 (=> res!1063641 e!1593986)))

(declare-fun lt!898958 () Regex!7485)

(assert (=> b!2516083 (= res!1063641 (not (matchR!3484 lt!898958 (_1!17292 lt!898953))))))

(declare-fun b!2516084 () Bool)

(declare-fun tp!804067 () Bool)

(assert (=> b!2516084 (= e!1593983 tp!804067)))

(declare-fun res!1063637 () Bool)

(assert (=> start!245340 (=> (not res!1063637) (not e!1593982))))

(declare-fun validRegex!3111 (Regex!7485) Bool)

(assert (=> start!245340 (= res!1063637 (validRegex!3111 r!27340))))

(assert (=> start!245340 e!1593982))

(assert (=> start!245340 e!1593983))

(assert (=> start!245340 tp_is_empty!12825))

(declare-fun e!1593985 () Bool)

(assert (=> start!245340 e!1593985))

(declare-fun b!2516079 () Bool)

(declare-fun tp!804065 () Bool)

(assert (=> b!2516079 (= e!1593985 (and tp_is_empty!12825 tp!804065))))

(declare-fun b!2516085 () Bool)

(declare-fun res!1063633 () Bool)

(assert (=> b!2516085 (=> (not res!1063633) (not e!1593982))))

(assert (=> b!2516085 (= res!1063633 (not (nullable!2402 (regOne!15482 r!27340))))))

(declare-fun b!2516086 () Bool)

(declare-fun e!1593981 () Bool)

(assert (=> b!2516086 (= e!1593982 (not e!1593981))))

(declare-fun res!1063642 () Bool)

(assert (=> b!2516086 (=> res!1063642 e!1593981)))

(declare-fun lt!898950 () Bool)

(assert (=> b!2516086 (= res!1063642 (not lt!898950))))

(assert (=> b!2516086 (= (derivative!180 EmptyLang!7485 tl!4068) EmptyLang!7485)))

(declare-datatypes ((Unit!43219 0))(
  ( (Unit!43220) )
))
(declare-fun lt!898955 () Unit!43219)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!32 (Regex!7485 List!29550) Unit!43219)

(assert (=> b!2516086 (= lt!898955 (lemmaEmptyLangDerivativeIsAFixPoint!32 EmptyLang!7485 tl!4068))))

(assert (=> b!2516086 e!1593984))

(declare-fun res!1063639 () Bool)

(assert (=> b!2516086 (=> res!1063639 e!1593984)))

(assert (=> b!2516086 (= res!1063639 lt!898950)))

(declare-fun lt!898959 () Regex!7485)

(assert (=> b!2516086 (= lt!898950 (matchR!3484 lt!898959 tl!4068))))

(declare-fun lt!898952 () Unit!43219)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!172 (Regex!7485 Regex!7485 List!29550) Unit!43219)

(assert (=> b!2516086 (= lt!898952 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!172 lt!898959 EmptyLang!7485 tl!4068))))

(declare-fun lt!898951 () Regex!7485)

(assert (=> b!2516086 (= (matchR!3484 lt!898951 tl!4068) (matchR!3484 (derivative!180 lt!898951 tl!4068) Nil!29450))))

(declare-fun lt!898956 () Unit!43219)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!130 (Regex!7485 List!29550) Unit!43219)

(assert (=> b!2516086 (= lt!898956 (lemmaMatchRIsSameAsWholeDerivativeAndNil!130 lt!898951 tl!4068))))

(assert (=> b!2516086 (= lt!898951 (Union!7485 lt!898959 EmptyLang!7485))))

(assert (=> b!2516086 (= lt!898959 (Concat!12181 lt!898958 (regTwo!15482 r!27340)))))

(assert (=> b!2516086 (= lt!898958 (derivativeStep!2054 (regOne!15482 r!27340) c!14016))))

(declare-fun b!2516087 () Bool)

(assert (=> b!2516087 (= e!1593986 true)))

(assert (=> b!2516087 (matchR!3484 (derivative!180 lt!898958 (_1!17292 lt!898953)) Nil!29450)))

(declare-fun lt!898957 () Unit!43219)

(assert (=> b!2516087 (= lt!898957 (lemmaMatchRIsSameAsWholeDerivativeAndNil!130 lt!898958 (_1!17292 lt!898953)))))

(declare-fun b!2516088 () Bool)

(declare-fun tp!804069 () Bool)

(declare-fun tp!804068 () Bool)

(assert (=> b!2516088 (= e!1593983 (and tp!804069 tp!804068))))

(declare-fun b!2516089 () Bool)

(assert (=> b!2516089 (= e!1593981 e!1593986)))

(declare-fun res!1063634 () Bool)

(assert (=> b!2516089 (=> res!1063634 e!1593986)))

(declare-fun ++!7219 (List!29550 List!29550) List!29550)

(assert (=> b!2516089 (= res!1063634 (not (= (++!7219 (_1!17292 lt!898953) (_2!17292 lt!898953)) tl!4068)))))

(declare-datatypes ((Option!5870 0))(
  ( (None!5869) (Some!5869 (v!31800 tuple2!29500)) )
))
(declare-fun lt!898954 () Option!5870)

(declare-fun get!9191 (Option!5870) tuple2!29500)

(assert (=> b!2516089 (= lt!898953 (get!9191 lt!898954))))

(declare-fun isDefined!4692 (Option!5870) Bool)

(assert (=> b!2516089 (isDefined!4692 lt!898954)))

(declare-fun findConcatSeparation!892 (Regex!7485 Regex!7485 List!29550 List!29550 List!29550) Option!5870)

(assert (=> b!2516089 (= lt!898954 (findConcatSeparation!892 lt!898958 (regTwo!15482 r!27340) Nil!29450 tl!4068 tl!4068))))

(declare-fun lt!898960 () Unit!43219)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!174 (Regex!7485 Regex!7485 List!29550) Unit!43219)

(assert (=> b!2516089 (= lt!898960 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!174 lt!898958 (regTwo!15482 r!27340) tl!4068))))

(declare-fun b!2516090 () Bool)

(declare-fun tp!804066 () Bool)

(declare-fun tp!804070 () Bool)

(assert (=> b!2516090 (= e!1593983 (and tp!804066 tp!804070))))

(assert (= (and start!245340 res!1063637) b!2516077))

(assert (= (and b!2516077 res!1063635) b!2516078))

(assert (= (and b!2516078 res!1063640) b!2516085))

(assert (= (and b!2516085 res!1063633) b!2516086))

(assert (= (and b!2516086 (not res!1063639)) b!2516076))

(assert (= (and b!2516086 (not res!1063642)) b!2516089))

(assert (= (and b!2516089 (not res!1063634)) b!2516083))

(assert (= (and b!2516083 (not res!1063641)) b!2516080))

(assert (= (and b!2516080 (not res!1063636)) b!2516082))

(assert (= (and b!2516082 (not res!1063638)) b!2516087))

(assert (= (and start!245340 ((_ is ElementMatch!7485) r!27340)) b!2516081))

(assert (= (and start!245340 ((_ is Concat!12181) r!27340)) b!2516088))

(assert (= (and start!245340 ((_ is Star!7485) r!27340)) b!2516084))

(assert (= (and start!245340 ((_ is Union!7485) r!27340)) b!2516090))

(assert (= (and start!245340 ((_ is Cons!29450) tl!4068)) b!2516079))

(declare-fun m!2873149 () Bool)

(assert (=> b!2516089 m!2873149))

(declare-fun m!2873151 () Bool)

(assert (=> b!2516089 m!2873151))

(declare-fun m!2873153 () Bool)

(assert (=> b!2516089 m!2873153))

(declare-fun m!2873155 () Bool)

(assert (=> b!2516089 m!2873155))

(declare-fun m!2873157 () Bool)

(assert (=> b!2516089 m!2873157))

(declare-fun m!2873159 () Bool)

(assert (=> b!2516085 m!2873159))

(declare-fun m!2873161 () Bool)

(assert (=> b!2516076 m!2873161))

(declare-fun m!2873163 () Bool)

(assert (=> start!245340 m!2873163))

(declare-fun m!2873165 () Bool)

(assert (=> b!2516086 m!2873165))

(declare-fun m!2873167 () Bool)

(assert (=> b!2516086 m!2873167))

(declare-fun m!2873169 () Bool)

(assert (=> b!2516086 m!2873169))

(declare-fun m!2873171 () Bool)

(assert (=> b!2516086 m!2873171))

(declare-fun m!2873173 () Bool)

(assert (=> b!2516086 m!2873173))

(declare-fun m!2873175 () Bool)

(assert (=> b!2516086 m!2873175))

(declare-fun m!2873177 () Bool)

(assert (=> b!2516086 m!2873177))

(declare-fun m!2873179 () Bool)

(assert (=> b!2516086 m!2873179))

(declare-fun m!2873181 () Bool)

(assert (=> b!2516086 m!2873181))

(assert (=> b!2516086 m!2873173))

(declare-fun m!2873183 () Bool)

(assert (=> b!2516077 m!2873183))

(assert (=> b!2516077 m!2873183))

(declare-fun m!2873185 () Bool)

(assert (=> b!2516077 m!2873185))

(assert (=> b!2516077 m!2873185))

(declare-fun m!2873187 () Bool)

(assert (=> b!2516077 m!2873187))

(declare-fun m!2873189 () Bool)

(assert (=> b!2516082 m!2873189))

(declare-fun m!2873191 () Bool)

(assert (=> b!2516080 m!2873191))

(declare-fun m!2873193 () Bool)

(assert (=> b!2516083 m!2873193))

(declare-fun m!2873195 () Bool)

(assert (=> b!2516087 m!2873195))

(assert (=> b!2516087 m!2873195))

(declare-fun m!2873197 () Bool)

(assert (=> b!2516087 m!2873197))

(declare-fun m!2873199 () Bool)

(assert (=> b!2516087 m!2873199))

(check-sat (not b!2516082) (not start!245340) tp_is_empty!12825 (not b!2516079) (not b!2516087) (not b!2516077) (not b!2516089) (not b!2516083) (not b!2516085) (not b!2516090) (not b!2516084) (not b!2516076) (not b!2516080) (not b!2516088) (not b!2516086))
(check-sat)
