; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239054 () Bool)

(assert start!239054)

(declare-fun b!2446091 () Bool)

(assert (=> b!2446091 true))

(assert (=> b!2446091 true))

(declare-fun lambda!92655 () Int)

(declare-fun lambda!92654 () Int)

(assert (=> b!2446091 (not (= lambda!92655 lambda!92654))))

(assert (=> b!2446091 true))

(assert (=> b!2446091 true))

(declare-fun b!2446087 () Bool)

(declare-fun e!1553395 () Bool)

(declare-fun tp!777091 () Bool)

(assert (=> b!2446087 (= e!1553395 tp!777091)))

(declare-fun b!2446088 () Bool)

(declare-fun e!1553398 () Bool)

(declare-fun call!150077 () Bool)

(assert (=> b!2446088 (= e!1553398 (not call!150077))))

(declare-fun b!2446089 () Bool)

(declare-fun e!1553388 () Bool)

(declare-fun call!150086 () Bool)

(assert (=> b!2446089 (= e!1553388 call!150086)))

(declare-fun b!2446090 () Bool)

(declare-fun e!1553394 () Bool)

(declare-fun tp!777095 () Bool)

(declare-fun tp!777090 () Bool)

(assert (=> b!2446090 (= e!1553394 (and tp!777095 tp!777090))))

(declare-fun bm!150071 () Bool)

(declare-datatypes ((C!14536 0))(
  ( (C!14537 (val!8510 Int)) )
))
(declare-datatypes ((List!28614 0))(
  ( (Nil!28516) (Cons!28516 (h!33917 C!14536) (t!208591 List!28614)) )
))
(declare-datatypes ((tuple2!28134 0))(
  ( (tuple2!28135 (_1!16608 List!28614) (_2!16608 List!28614)) )
))
(declare-datatypes ((Option!5678 0))(
  ( (None!5677) (Some!5677 (v!31085 tuple2!28134)) )
))
(declare-fun call!150079 () Option!5678)

(declare-fun call!150076 () Option!5678)

(assert (=> bm!150071 (= call!150079 call!150076)))

(declare-fun e!1553397 () Bool)

(declare-fun e!1553400 () Bool)

(assert (=> b!2446091 (= e!1553397 e!1553400)))

(declare-fun res!1038059 () Bool)

(assert (=> b!2446091 (=> res!1038059 e!1553400)))

(declare-fun lt!879169 () Bool)

(declare-fun lt!879170 () Bool)

(assert (=> b!2446091 (= res!1038059 (not (= lt!879169 lt!879170)))))

(declare-fun Exists!1225 (Int) Bool)

(assert (=> b!2446091 (= (Exists!1225 lambda!92654) (Exists!1225 lambda!92655))))

(declare-datatypes ((Unit!41798 0))(
  ( (Unit!41799) )
))
(declare-fun lt!879180 () Unit!41798)

(declare-datatypes ((Regex!7189 0))(
  ( (ElementMatch!7189 (c!390345 C!14536)) (Concat!11825 (regOne!14890 Regex!7189) (regTwo!14890 Regex!7189)) (EmptyExpr!7189) (Star!7189 (reg!7518 Regex!7189)) (EmptyLang!7189) (Union!7189 (regOne!14891 Regex!7189) (regTwo!14891 Regex!7189)) )
))
(declare-fun r!13927 () Regex!7189)

(declare-fun s!9460 () List!28614)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!470 (Regex!7189 Regex!7189 List!28614) Unit!41798)

(assert (=> b!2446091 (= lt!879180 (lemmaExistCutMatchRandMatchRSpecEquivalent!470 (regOne!14890 r!13927) (regTwo!14890 r!13927) s!9460))))

(assert (=> b!2446091 (= lt!879170 (Exists!1225 lambda!92654))))

(declare-fun isDefined!4504 (Option!5678) Bool)

(declare-fun findConcatSeparation!786 (Regex!7189 Regex!7189 List!28614 List!28614 List!28614) Option!5678)

(assert (=> b!2446091 (= lt!879170 (isDefined!4504 (findConcatSeparation!786 (regOne!14890 r!13927) (regTwo!14890 r!13927) Nil!28516 s!9460 s!9460)))))

(declare-fun lt!879181 () Unit!41798)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!724 (Regex!7189 Regex!7189 List!28614) Unit!41798)

(assert (=> b!2446091 (= lt!879181 (lemmaFindConcatSeparationEquivalentToExists!724 (regOne!14890 r!13927) (regTwo!14890 r!13927) s!9460))))

(declare-fun bm!150072 () Bool)

(declare-fun call!150078 () Option!5678)

(assert (=> bm!150072 (= call!150077 (isDefined!4504 call!150078))))

(declare-fun b!2446092 () Bool)

(declare-fun e!1553399 () Unit!41798)

(declare-fun Unit!41800 () Unit!41798)

(assert (=> b!2446092 (= e!1553399 Unit!41800)))

(assert (=> b!2446092 false))

(declare-fun b!2446093 () Bool)

(declare-fun e!1553390 () Bool)

(assert (=> b!2446093 e!1553390))

(declare-fun res!1038062 () Bool)

(assert (=> b!2446093 (=> (not res!1038062) (not e!1553390))))

(assert (=> b!2446093 (= res!1038062 call!150086)))

(declare-fun lt!879175 () Unit!41798)

(declare-fun lt!879186 () Regex!7189)

(declare-fun lt!879179 () tuple2!28134)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!92 (Regex!7189 Regex!7189 List!28614 List!28614 List!28614) Unit!41798)

(assert (=> b!2446093 (= lt!879175 (lemmaFindSeparationIsDefinedThenConcatMatches!92 lt!879186 EmptyExpr!7189 (_1!16608 lt!879179) (_2!16608 lt!879179) s!9460))))

(declare-fun lt!879183 () Option!5678)

(declare-fun get!8813 (Option!5678) tuple2!28134)

(assert (=> b!2446093 (= lt!879179 (get!8813 lt!879183))))

(declare-fun e!1553393 () Unit!41798)

(declare-fun Unit!41801 () Unit!41798)

(assert (=> b!2446093 (= e!1553393 Unit!41801)))

(declare-fun bm!150073 () Bool)

(declare-fun call!150085 () Regex!7189)

(declare-fun call!150083 () Regex!7189)

(assert (=> bm!150073 (= call!150085 call!150083)))

(declare-fun b!2446094 () Bool)

(declare-fun e!1553387 () Bool)

(declare-fun lt!879174 () Bool)

(declare-fun isEmpty!16556 (List!28614) Bool)

(assert (=> b!2446094 (= e!1553387 (= lt!879174 (isEmpty!16556 s!9460)))))

(declare-fun b!2446095 () Bool)

(declare-fun res!1038057 () Bool)

(declare-fun e!1553391 () Bool)

(assert (=> b!2446095 (=> (not res!1038057) (not e!1553391))))

(declare-datatypes ((List!28615 0))(
  ( (Nil!28517) (Cons!28517 (h!33918 Regex!7189) (t!208592 List!28615)) )
))
(declare-fun l!9164 () List!28615)

(declare-fun generalisedConcat!290 (List!28615) Regex!7189)

(assert (=> b!2446095 (= res!1038057 (= r!13927 (generalisedConcat!290 l!9164)))))

(declare-fun b!2446096 () Bool)

(declare-fun tp!777094 () Bool)

(declare-fun tp!777093 () Bool)

(assert (=> b!2446096 (= e!1553395 (and tp!777094 tp!777093))))

(declare-fun call!150082 () List!28614)

(declare-fun lt!879171 () Regex!7189)

(declare-fun c!390343 () Bool)

(declare-fun bm!150074 () Bool)

(declare-fun matchR!3304 (Regex!7189 List!28614) Bool)

(assert (=> bm!150074 (= call!150086 (matchR!3304 (ite c!390343 lt!879171 (Concat!11825 lt!879186 EmptyExpr!7189)) (ite c!390343 s!9460 call!150082)))))

(declare-fun bm!150075 () Bool)

(declare-fun ++!7092 (List!28614 List!28614) List!28614)

(assert (=> bm!150075 (= call!150082 (++!7092 (ite c!390343 s!9460 (_1!16608 lt!879179)) (ite c!390343 Nil!28516 (_2!16608 lt!879179))))))

(declare-fun b!2446097 () Bool)

(declare-fun e!1553396 () Bool)

(declare-fun tp_is_empty!11791 () Bool)

(declare-fun tp!777089 () Bool)

(assert (=> b!2446097 (= e!1553396 (and tp_is_empty!11791 tp!777089))))

(declare-fun res!1038058 () Bool)

(assert (=> start!239054 (=> (not res!1038058) (not e!1553391))))

(declare-fun lambda!92653 () Int)

(declare-fun forall!5823 (List!28615 Int) Bool)

(assert (=> start!239054 (= res!1038058 (forall!5823 l!9164 lambda!92653))))

(assert (=> start!239054 e!1553391))

(assert (=> start!239054 e!1553394))

(assert (=> start!239054 e!1553395))

(assert (=> start!239054 e!1553396))

(declare-fun b!2446098 () Bool)

(declare-fun e!1553386 () Unit!41798)

(declare-fun Unit!41802 () Unit!41798)

(assert (=> b!2446098 (= e!1553386 Unit!41802)))

(declare-fun lt!879173 () Unit!41798)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!120 (Regex!7189 Regex!7189 List!28614 List!28614) Unit!41798)

(assert (=> b!2446098 (= lt!879173 (lemmaTwoRegexMatchThenConcatMatchesConcatString!120 lt!879186 EmptyExpr!7189 s!9460 Nil!28516))))

(assert (=> b!2446098 (= lt!879171 (Concat!11825 lt!879186 EmptyExpr!7189))))

(declare-fun res!1038061 () Bool)

(assert (=> b!2446098 (= res!1038061 (matchR!3304 lt!879171 call!150082))))

(assert (=> b!2446098 (=> (not res!1038061) (not e!1553388))))

(assert (=> b!2446098 e!1553388))

(declare-fun lt!879182 () Unit!41798)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!88 (Regex!7189 Regex!7189 List!28614) Unit!41798)

(assert (=> b!2446098 (= lt!879182 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!88 lt!879186 EmptyExpr!7189 s!9460))))

(declare-fun res!1038055 () Bool)

(declare-fun call!150081 () Bool)

(assert (=> b!2446098 (= res!1038055 call!150081)))

(declare-fun e!1553389 () Bool)

(assert (=> b!2446098 (=> (not res!1038055) (not e!1553389))))

(assert (=> b!2446098 e!1553389))

(declare-fun b!2446099 () Bool)

(declare-fun call!150084 () Bool)

(assert (=> b!2446099 (= lt!879174 call!150084)))

(declare-fun e!1553392 () Unit!41798)

(declare-fun Unit!41803 () Unit!41798)

(assert (=> b!2446099 (= e!1553392 Unit!41803)))

(declare-fun b!2446100 () Bool)

(assert (=> b!2446100 (= e!1553395 tp_is_empty!11791)))

(declare-fun call!150080 () Regex!7189)

(declare-fun bm!150076 () Bool)

(declare-fun c!390342 () Bool)

(assert (=> bm!150076 (= call!150076 (findConcatSeparation!786 (ite c!390342 lt!879186 call!150080) (ite c!390342 EmptyExpr!7189 call!150083) Nil!28516 s!9460 s!9460))))

(declare-fun b!2446101 () Bool)

(assert (=> b!2446101 (= e!1553387 (= lt!879174 (isDefined!4504 (findConcatSeparation!786 (h!33918 l!9164) (generalisedConcat!290 (t!208592 l!9164)) Nil!28516 s!9460 s!9460))))))

(declare-fun b!2446102 () Bool)

(assert (=> b!2446102 (= e!1553390 false)))

(declare-fun b!2446103 () Bool)

(assert (=> b!2446103 (= e!1553399 e!1553392)))

(declare-fun lt!879172 () List!28615)

(declare-fun tail!3833 (List!28615) List!28615)

(assert (=> b!2446103 (= lt!879172 (tail!3833 l!9164))))

(declare-fun isEmpty!16557 (List!28615) Bool)

(assert (=> b!2446103 (= c!390342 (isEmpty!16557 lt!879172))))

(declare-fun bm!150077 () Bool)

(assert (=> bm!150077 (= call!150084 (isDefined!4504 (ite c!390342 (ite c!390343 call!150079 lt!879183) call!150076)))))

(declare-fun b!2446104 () Bool)

(declare-fun Unit!41804 () Unit!41798)

(assert (=> b!2446104 (= e!1553393 Unit!41804)))

(declare-fun b!2446105 () Bool)

(assert (=> b!2446105 (= e!1553391 (not e!1553397))))

(declare-fun res!1038060 () Bool)

(assert (=> b!2446105 (=> res!1038060 e!1553397)))

(get-info :version)

(assert (=> b!2446105 (= res!1038060 (not ((_ is Concat!11825) r!13927)))))

(assert (=> b!2446105 (= lt!879174 lt!879169)))

(declare-fun matchRSpec!1036 (Regex!7189 List!28614) Bool)

(assert (=> b!2446105 (= lt!879169 (matchRSpec!1036 r!13927 s!9460))))

(assert (=> b!2446105 (= lt!879174 (matchR!3304 r!13927 s!9460))))

(declare-fun lt!879176 () Unit!41798)

(declare-fun mainMatchTheorem!1036 (Regex!7189 List!28614) Unit!41798)

(assert (=> b!2446105 (= lt!879176 (mainMatchTheorem!1036 r!13927 s!9460))))

(declare-fun b!2446106 () Bool)

(assert (=> b!2446106 (= e!1553400 e!1553387)))

(declare-fun c!390340 () Bool)

(assert (=> b!2446106 (= c!390340 ((_ is Cons!28517) l!9164))))

(declare-fun lt!879184 () Unit!41798)

(assert (=> b!2446106 (= lt!879184 e!1553399)))

(declare-fun c!390344 () Bool)

(assert (=> b!2446106 (= c!390344 (isEmpty!16557 l!9164))))

(declare-fun bm!150078 () Bool)

(declare-fun head!5560 (List!28615) Regex!7189)

(assert (=> bm!150078 (= call!150080 (head!5560 l!9164))))

(declare-fun bm!150079 () Bool)

(assert (=> bm!150079 (= call!150078 (findConcatSeparation!786 lt!879186 call!150085 Nil!28516 s!9460 s!9460))))

(declare-fun b!2446107 () Bool)

(declare-fun tp!777092 () Bool)

(declare-fun tp!777088 () Bool)

(assert (=> b!2446107 (= e!1553395 (and tp!777092 tp!777088))))

(declare-fun b!2446108 () Bool)

(declare-fun Unit!41805 () Unit!41798)

(assert (=> b!2446108 (= e!1553386 Unit!41805)))

(assert (=> b!2446108 (= lt!879183 call!150079)))

(declare-fun lt!879178 () Bool)

(assert (=> b!2446108 (= lt!879178 call!150081)))

(declare-fun c!390341 () Bool)

(assert (=> b!2446108 (= c!390341 lt!879178)))

(declare-fun lt!879177 () Unit!41798)

(assert (=> b!2446108 (= lt!879177 e!1553393)))

(declare-fun res!1038056 () Bool)

(assert (=> b!2446108 (= res!1038056 (not lt!879178))))

(assert (=> b!2446108 (=> (not res!1038056) (not e!1553398))))

(assert (=> b!2446108 e!1553398))

(declare-fun b!2446109 () Bool)

(assert (=> b!2446109 (= e!1553389 call!150077)))

(declare-fun b!2446110 () Bool)

(assert (=> b!2446110 (= lt!879174 (isDefined!4504 (findConcatSeparation!786 lt!879186 call!150083 Nil!28516 s!9460 s!9460)))))

(declare-fun lt!879185 () Unit!41798)

(assert (=> b!2446110 (= lt!879185 e!1553386)))

(assert (=> b!2446110 (= c!390343 (matchR!3304 lt!879186 s!9460))))

(assert (=> b!2446110 (= lt!879186 call!150080)))

(declare-fun Unit!41806 () Unit!41798)

(assert (=> b!2446110 (= e!1553392 Unit!41806)))

(declare-fun bm!150080 () Bool)

(assert (=> bm!150080 (= call!150083 (generalisedConcat!290 lt!879172))))

(declare-fun bm!150081 () Bool)

(assert (=> bm!150081 (= call!150081 call!150084)))

(assert (= (and start!239054 res!1038058) b!2446095))

(assert (= (and b!2446095 res!1038057) b!2446105))

(assert (= (and b!2446105 (not res!1038060)) b!2446091))

(assert (= (and b!2446091 (not res!1038059)) b!2446106))

(assert (= (and b!2446106 c!390344) b!2446092))

(assert (= (and b!2446106 (not c!390344)) b!2446103))

(assert (= (and b!2446103 c!390342) b!2446110))

(assert (= (and b!2446103 (not c!390342)) b!2446099))

(assert (= (and b!2446110 c!390343) b!2446098))

(assert (= (and b!2446110 (not c!390343)) b!2446108))

(assert (= (and b!2446098 res!1038061) b!2446089))

(assert (= (and b!2446098 res!1038055) b!2446109))

(assert (= (and b!2446108 c!390341) b!2446093))

(assert (= (and b!2446108 (not c!390341)) b!2446104))

(assert (= (and b!2446093 res!1038062) b!2446102))

(assert (= (and b!2446108 res!1038056) b!2446088))

(assert (= (or b!2446098 b!2446108) bm!150071))

(assert (= (or b!2446098 b!2446093) bm!150075))

(assert (= (or b!2446109 b!2446088) bm!150073))

(assert (= (or b!2446098 b!2446108) bm!150081))

(assert (= (or b!2446089 b!2446093) bm!150074))

(assert (= (or b!2446109 b!2446088) bm!150079))

(assert (= (or b!2446109 b!2446088) bm!150072))

(assert (= (or b!2446110 b!2446099) bm!150078))

(assert (= (or bm!150073 b!2446110 b!2446099) bm!150080))

(assert (= (or bm!150071 b!2446099) bm!150076))

(assert (= (or bm!150081 b!2446099) bm!150077))

(assert (= (and b!2446106 c!390340) b!2446101))

(assert (= (and b!2446106 (not c!390340)) b!2446094))

(assert (= (and start!239054 ((_ is Cons!28517) l!9164)) b!2446090))

(assert (= (and start!239054 ((_ is ElementMatch!7189) r!13927)) b!2446100))

(assert (= (and start!239054 ((_ is Concat!11825) r!13927)) b!2446107))

(assert (= (and start!239054 ((_ is Star!7189) r!13927)) b!2446087))

(assert (= (and start!239054 ((_ is Union!7189) r!13927)) b!2446096))

(assert (= (and start!239054 ((_ is Cons!28516) s!9460)) b!2446097))

(declare-fun m!2822077 () Bool)

(assert (=> b!2446098 m!2822077))

(declare-fun m!2822079 () Bool)

(assert (=> b!2446098 m!2822079))

(declare-fun m!2822081 () Bool)

(assert (=> b!2446098 m!2822081))

(declare-fun m!2822083 () Bool)

(assert (=> bm!150074 m!2822083))

(declare-fun m!2822085 () Bool)

(assert (=> b!2446101 m!2822085))

(assert (=> b!2446101 m!2822085))

(declare-fun m!2822087 () Bool)

(assert (=> b!2446101 m!2822087))

(assert (=> b!2446101 m!2822087))

(declare-fun m!2822089 () Bool)

(assert (=> b!2446101 m!2822089))

(declare-fun m!2822091 () Bool)

(assert (=> b!2446091 m!2822091))

(declare-fun m!2822093 () Bool)

(assert (=> b!2446091 m!2822093))

(declare-fun m!2822095 () Bool)

(assert (=> b!2446091 m!2822095))

(assert (=> b!2446091 m!2822091))

(declare-fun m!2822097 () Bool)

(assert (=> b!2446091 m!2822097))

(declare-fun m!2822099 () Bool)

(assert (=> b!2446091 m!2822099))

(declare-fun m!2822101 () Bool)

(assert (=> b!2446091 m!2822101))

(assert (=> b!2446091 m!2822101))

(declare-fun m!2822103 () Bool)

(assert (=> b!2446106 m!2822103))

(declare-fun m!2822105 () Bool)

(assert (=> b!2446095 m!2822105))

(declare-fun m!2822107 () Bool)

(assert (=> bm!150075 m!2822107))

(declare-fun m!2822109 () Bool)

(assert (=> bm!150072 m!2822109))

(declare-fun m!2822111 () Bool)

(assert (=> b!2446105 m!2822111))

(declare-fun m!2822113 () Bool)

(assert (=> b!2446105 m!2822113))

(declare-fun m!2822115 () Bool)

(assert (=> b!2446105 m!2822115))

(declare-fun m!2822117 () Bool)

(assert (=> b!2446094 m!2822117))

(declare-fun m!2822119 () Bool)

(assert (=> bm!150079 m!2822119))

(declare-fun m!2822121 () Bool)

(assert (=> b!2446110 m!2822121))

(assert (=> b!2446110 m!2822121))

(declare-fun m!2822123 () Bool)

(assert (=> b!2446110 m!2822123))

(declare-fun m!2822125 () Bool)

(assert (=> b!2446110 m!2822125))

(declare-fun m!2822127 () Bool)

(assert (=> bm!150080 m!2822127))

(declare-fun m!2822129 () Bool)

(assert (=> bm!150076 m!2822129))

(declare-fun m!2822131 () Bool)

(assert (=> b!2446093 m!2822131))

(declare-fun m!2822133 () Bool)

(assert (=> b!2446093 m!2822133))

(declare-fun m!2822135 () Bool)

(assert (=> bm!150078 m!2822135))

(declare-fun m!2822137 () Bool)

(assert (=> bm!150077 m!2822137))

(declare-fun m!2822139 () Bool)

(assert (=> b!2446103 m!2822139))

(declare-fun m!2822141 () Bool)

(assert (=> b!2446103 m!2822141))

(declare-fun m!2822143 () Bool)

(assert (=> start!239054 m!2822143))

(check-sat (not b!2446097) (not b!2446094) (not bm!150074) (not b!2446105) (not b!2446087) (not b!2446106) (not start!239054) (not bm!150079) (not b!2446107) (not bm!150075) (not b!2446110) (not b!2446093) tp_is_empty!11791 (not bm!150076) (not b!2446103) (not bm!150078) (not bm!150072) (not b!2446096) (not b!2446095) (not b!2446101) (not b!2446098) (not bm!150080) (not b!2446091) (not b!2446090) (not bm!150077))
(check-sat)
(get-model)

(declare-fun d!705855 () Bool)

(assert (=> d!705855 (= (tail!3833 l!9164) (t!208592 l!9164))))

(assert (=> b!2446103 d!705855))

(declare-fun d!705859 () Bool)

(assert (=> d!705859 (= (isEmpty!16557 lt!879172) ((_ is Nil!28517) lt!879172))))

(assert (=> b!2446103 d!705859))

(declare-fun bs!465372 () Bool)

(declare-fun d!705861 () Bool)

(assert (= bs!465372 (and d!705861 start!239054)))

(declare-fun lambda!92658 () Int)

(assert (=> bs!465372 (= lambda!92658 lambda!92653)))

(declare-fun b!2446153 () Bool)

(declare-fun e!1553425 () Regex!7189)

(assert (=> b!2446153 (= e!1553425 EmptyExpr!7189)))

(declare-fun b!2446154 () Bool)

(declare-fun e!1553426 () Bool)

(declare-fun lt!879198 () Regex!7189)

(assert (=> b!2446154 (= e!1553426 (= lt!879198 (head!5560 l!9164)))))

(declare-fun b!2446156 () Bool)

(declare-fun isConcat!221 (Regex!7189) Bool)

(assert (=> b!2446156 (= e!1553426 (isConcat!221 lt!879198))))

(declare-fun b!2446157 () Bool)

(declare-fun e!1553424 () Bool)

(declare-fun e!1553427 () Bool)

(assert (=> b!2446157 (= e!1553424 e!1553427)))

(declare-fun c!390361 () Bool)

(assert (=> b!2446157 (= c!390361 (isEmpty!16557 l!9164))))

(declare-fun b!2446158 () Bool)

(declare-fun e!1553423 () Bool)

(assert (=> b!2446158 (= e!1553423 (isEmpty!16557 (t!208592 l!9164)))))

(declare-fun b!2446159 () Bool)

(assert (=> b!2446159 (= e!1553425 (Concat!11825 (h!33918 l!9164) (generalisedConcat!290 (t!208592 l!9164))))))

(declare-fun b!2446160 () Bool)

(assert (=> b!2446160 (= e!1553427 e!1553426)))

(declare-fun c!390358 () Bool)

(assert (=> b!2446160 (= c!390358 (isEmpty!16557 (tail!3833 l!9164)))))

(declare-fun b!2446161 () Bool)

(declare-fun e!1553428 () Regex!7189)

(assert (=> b!2446161 (= e!1553428 e!1553425)))

(declare-fun c!390359 () Bool)

(assert (=> b!2446161 (= c!390359 ((_ is Cons!28517) l!9164))))

(declare-fun b!2446162 () Bool)

(assert (=> b!2446162 (= e!1553428 (h!33918 l!9164))))

(assert (=> d!705861 e!1553424))

(declare-fun res!1038077 () Bool)

(assert (=> d!705861 (=> (not res!1038077) (not e!1553424))))

(declare-fun validRegex!2895 (Regex!7189) Bool)

(assert (=> d!705861 (= res!1038077 (validRegex!2895 lt!879198))))

(assert (=> d!705861 (= lt!879198 e!1553428)))

(declare-fun c!390360 () Bool)

(assert (=> d!705861 (= c!390360 e!1553423)))

(declare-fun res!1038078 () Bool)

(assert (=> d!705861 (=> (not res!1038078) (not e!1553423))))

(assert (=> d!705861 (= res!1038078 ((_ is Cons!28517) l!9164))))

(assert (=> d!705861 (forall!5823 l!9164 lambda!92658)))

(assert (=> d!705861 (= (generalisedConcat!290 l!9164) lt!879198)))

(declare-fun b!2446155 () Bool)

(declare-fun isEmptyExpr!221 (Regex!7189) Bool)

(assert (=> b!2446155 (= e!1553427 (isEmptyExpr!221 lt!879198))))

(assert (= (and d!705861 res!1038078) b!2446158))

(assert (= (and d!705861 c!390360) b!2446162))

(assert (= (and d!705861 (not c!390360)) b!2446161))

(assert (= (and b!2446161 c!390359) b!2446159))

(assert (= (and b!2446161 (not c!390359)) b!2446153))

(assert (= (and d!705861 res!1038077) b!2446157))

(assert (= (and b!2446157 c!390361) b!2446155))

(assert (= (and b!2446157 (not c!390361)) b!2446160))

(assert (= (and b!2446160 c!390358) b!2446154))

(assert (= (and b!2446160 (not c!390358)) b!2446156))

(assert (=> b!2446157 m!2822103))

(declare-fun m!2822153 () Bool)

(assert (=> d!705861 m!2822153))

(declare-fun m!2822155 () Bool)

(assert (=> d!705861 m!2822155))

(declare-fun m!2822157 () Bool)

(assert (=> b!2446156 m!2822157))

(declare-fun m!2822159 () Bool)

(assert (=> b!2446158 m!2822159))

(assert (=> b!2446159 m!2822085))

(assert (=> b!2446160 m!2822139))

(assert (=> b!2446160 m!2822139))

(declare-fun m!2822161 () Bool)

(assert (=> b!2446160 m!2822161))

(declare-fun m!2822163 () Bool)

(assert (=> b!2446155 m!2822163))

(assert (=> b!2446154 m!2822135))

(assert (=> b!2446095 d!705861))

(declare-fun bs!465373 () Bool)

(declare-fun d!705867 () Bool)

(assert (= bs!465373 (and d!705867 start!239054)))

(declare-fun lambda!92659 () Int)

(assert (=> bs!465373 (= lambda!92659 lambda!92653)))

(declare-fun bs!465374 () Bool)

(assert (= bs!465374 (and d!705867 d!705861)))

(assert (=> bs!465374 (= lambda!92659 lambda!92658)))

(declare-fun b!2446172 () Bool)

(declare-fun e!1553436 () Regex!7189)

(assert (=> b!2446172 (= e!1553436 EmptyExpr!7189)))

(declare-fun b!2446173 () Bool)

(declare-fun e!1553437 () Bool)

(declare-fun lt!879202 () Regex!7189)

(assert (=> b!2446173 (= e!1553437 (= lt!879202 (head!5560 lt!879172)))))

(declare-fun b!2446175 () Bool)

(assert (=> b!2446175 (= e!1553437 (isConcat!221 lt!879202))))

(declare-fun b!2446176 () Bool)

(declare-fun e!1553435 () Bool)

(declare-fun e!1553438 () Bool)

(assert (=> b!2446176 (= e!1553435 e!1553438)))

(declare-fun c!390367 () Bool)

(assert (=> b!2446176 (= c!390367 (isEmpty!16557 lt!879172))))

(declare-fun b!2446177 () Bool)

(declare-fun e!1553434 () Bool)

(assert (=> b!2446177 (= e!1553434 (isEmpty!16557 (t!208592 lt!879172)))))

(declare-fun b!2446178 () Bool)

(assert (=> b!2446178 (= e!1553436 (Concat!11825 (h!33918 lt!879172) (generalisedConcat!290 (t!208592 lt!879172))))))

(declare-fun b!2446179 () Bool)

(assert (=> b!2446179 (= e!1553438 e!1553437)))

(declare-fun c!390364 () Bool)

(assert (=> b!2446179 (= c!390364 (isEmpty!16557 (tail!3833 lt!879172)))))

(declare-fun b!2446180 () Bool)

(declare-fun e!1553439 () Regex!7189)

(assert (=> b!2446180 (= e!1553439 e!1553436)))

(declare-fun c!390365 () Bool)

(assert (=> b!2446180 (= c!390365 ((_ is Cons!28517) lt!879172))))

(declare-fun b!2446181 () Bool)

(assert (=> b!2446181 (= e!1553439 (h!33918 lt!879172))))

(assert (=> d!705867 e!1553435))

(declare-fun res!1038084 () Bool)

(assert (=> d!705867 (=> (not res!1038084) (not e!1553435))))

(assert (=> d!705867 (= res!1038084 (validRegex!2895 lt!879202))))

(assert (=> d!705867 (= lt!879202 e!1553439)))

(declare-fun c!390366 () Bool)

(assert (=> d!705867 (= c!390366 e!1553434)))

(declare-fun res!1038085 () Bool)

(assert (=> d!705867 (=> (not res!1038085) (not e!1553434))))

(assert (=> d!705867 (= res!1038085 ((_ is Cons!28517) lt!879172))))

(assert (=> d!705867 (forall!5823 lt!879172 lambda!92659)))

(assert (=> d!705867 (= (generalisedConcat!290 lt!879172) lt!879202)))

(declare-fun b!2446174 () Bool)

(assert (=> b!2446174 (= e!1553438 (isEmptyExpr!221 lt!879202))))

(assert (= (and d!705867 res!1038085) b!2446177))

(assert (= (and d!705867 c!390366) b!2446181))

(assert (= (and d!705867 (not c!390366)) b!2446180))

(assert (= (and b!2446180 c!390365) b!2446178))

(assert (= (and b!2446180 (not c!390365)) b!2446172))

(assert (= (and d!705867 res!1038084) b!2446176))

(assert (= (and b!2446176 c!390367) b!2446174))

(assert (= (and b!2446176 (not c!390367)) b!2446179))

(assert (= (and b!2446179 c!390364) b!2446173))

(assert (= (and b!2446179 (not c!390364)) b!2446175))

(assert (=> b!2446176 m!2822141))

(declare-fun m!2822187 () Bool)

(assert (=> d!705867 m!2822187))

(declare-fun m!2822189 () Bool)

(assert (=> d!705867 m!2822189))

(declare-fun m!2822191 () Bool)

(assert (=> b!2446175 m!2822191))

(declare-fun m!2822193 () Bool)

(assert (=> b!2446177 m!2822193))

(declare-fun m!2822197 () Bool)

(assert (=> b!2446178 m!2822197))

(declare-fun m!2822203 () Bool)

(assert (=> b!2446179 m!2822203))

(assert (=> b!2446179 m!2822203))

(declare-fun m!2822209 () Bool)

(assert (=> b!2446179 m!2822209))

(declare-fun m!2822213 () Bool)

(assert (=> b!2446174 m!2822213))

(declare-fun m!2822215 () Bool)

(assert (=> b!2446173 m!2822215))

(assert (=> bm!150080 d!705867))

(declare-fun d!705871 () Bool)

(declare-fun isEmpty!16559 (Option!5678) Bool)

(assert (=> d!705871 (= (isDefined!4504 (ite c!390342 (ite c!390343 call!150079 lt!879183) call!150076)) (not (isEmpty!16559 (ite c!390342 (ite c!390343 call!150079 lt!879183) call!150076))))))

(declare-fun bs!465375 () Bool)

(assert (= bs!465375 d!705871))

(declare-fun m!2822223 () Bool)

(assert (=> bs!465375 m!2822223))

(assert (=> bm!150077 d!705871))

(declare-fun b!2446262 () Bool)

(declare-fun e!1553487 () Bool)

(declare-fun derivativeStep!1857 (Regex!7189 C!14536) Regex!7189)

(declare-fun head!5562 (List!28614) C!14536)

(declare-fun tail!3835 (List!28614) List!28614)

(assert (=> b!2446262 (= e!1553487 (matchR!3304 (derivativeStep!1857 (ite c!390343 lt!879171 (Concat!11825 lt!879186 EmptyExpr!7189)) (head!5562 (ite c!390343 s!9460 call!150082))) (tail!3835 (ite c!390343 s!9460 call!150082))))))

(declare-fun d!705875 () Bool)

(declare-fun e!1553485 () Bool)

(assert (=> d!705875 e!1553485))

(declare-fun c!390388 () Bool)

(assert (=> d!705875 (= c!390388 ((_ is EmptyExpr!7189) (ite c!390343 lt!879171 (Concat!11825 lt!879186 EmptyExpr!7189))))))

(declare-fun lt!879208 () Bool)

(assert (=> d!705875 (= lt!879208 e!1553487)))

(declare-fun c!390389 () Bool)

(assert (=> d!705875 (= c!390389 (isEmpty!16556 (ite c!390343 s!9460 call!150082)))))

(assert (=> d!705875 (validRegex!2895 (ite c!390343 lt!879171 (Concat!11825 lt!879186 EmptyExpr!7189)))))

(assert (=> d!705875 (= (matchR!3304 (ite c!390343 lt!879171 (Concat!11825 lt!879186 EmptyExpr!7189)) (ite c!390343 s!9460 call!150082)) lt!879208)))

(declare-fun b!2446263 () Bool)

(declare-fun e!1553489 () Bool)

(declare-fun e!1553490 () Bool)

(assert (=> b!2446263 (= e!1553489 e!1553490)))

(declare-fun res!1038127 () Bool)

(assert (=> b!2446263 (=> res!1038127 e!1553490)))

(declare-fun call!150095 () Bool)

(assert (=> b!2446263 (= res!1038127 call!150095)))

(declare-fun b!2446264 () Bool)

(declare-fun res!1038129 () Bool)

(assert (=> b!2446264 (=> res!1038129 e!1553490)))

(assert (=> b!2446264 (= res!1038129 (not (isEmpty!16556 (tail!3835 (ite c!390343 s!9460 call!150082)))))))

(declare-fun e!1553486 () Bool)

(declare-fun b!2446265 () Bool)

(assert (=> b!2446265 (= e!1553486 (= (head!5562 (ite c!390343 s!9460 call!150082)) (c!390345 (ite c!390343 lt!879171 (Concat!11825 lt!879186 EmptyExpr!7189)))))))

(declare-fun b!2446266 () Bool)

(declare-fun res!1038126 () Bool)

(assert (=> b!2446266 (=> (not res!1038126) (not e!1553486))))

(assert (=> b!2446266 (= res!1038126 (isEmpty!16556 (tail!3835 (ite c!390343 s!9460 call!150082))))))

(declare-fun b!2446267 () Bool)

(declare-fun res!1038131 () Bool)

(assert (=> b!2446267 (=> (not res!1038131) (not e!1553486))))

(assert (=> b!2446267 (= res!1038131 (not call!150095))))

(declare-fun b!2446268 () Bool)

(declare-fun res!1038128 () Bool)

(declare-fun e!1553488 () Bool)

(assert (=> b!2446268 (=> res!1038128 e!1553488)))

(assert (=> b!2446268 (= res!1038128 e!1553486)))

(declare-fun res!1038133 () Bool)

(assert (=> b!2446268 (=> (not res!1038133) (not e!1553486))))

(assert (=> b!2446268 (= res!1038133 lt!879208)))

(declare-fun b!2446269 () Bool)

(assert (=> b!2446269 (= e!1553485 (= lt!879208 call!150095))))

(declare-fun bm!150090 () Bool)

(assert (=> bm!150090 (= call!150095 (isEmpty!16556 (ite c!390343 s!9460 call!150082)))))

(declare-fun b!2446270 () Bool)

(declare-fun e!1553484 () Bool)

(assert (=> b!2446270 (= e!1553484 (not lt!879208))))

(declare-fun b!2446271 () Bool)

(declare-fun res!1038130 () Bool)

(assert (=> b!2446271 (=> res!1038130 e!1553488)))

(assert (=> b!2446271 (= res!1038130 (not ((_ is ElementMatch!7189) (ite c!390343 lt!879171 (Concat!11825 lt!879186 EmptyExpr!7189)))))))

(assert (=> b!2446271 (= e!1553484 e!1553488)))

(declare-fun b!2446272 () Bool)

(declare-fun nullable!2203 (Regex!7189) Bool)

(assert (=> b!2446272 (= e!1553487 (nullable!2203 (ite c!390343 lt!879171 (Concat!11825 lt!879186 EmptyExpr!7189))))))

(declare-fun b!2446273 () Bool)

(assert (=> b!2446273 (= e!1553490 (not (= (head!5562 (ite c!390343 s!9460 call!150082)) (c!390345 (ite c!390343 lt!879171 (Concat!11825 lt!879186 EmptyExpr!7189))))))))

(declare-fun b!2446274 () Bool)

(assert (=> b!2446274 (= e!1553485 e!1553484)))

(declare-fun c!390390 () Bool)

(assert (=> b!2446274 (= c!390390 ((_ is EmptyLang!7189) (ite c!390343 lt!879171 (Concat!11825 lt!879186 EmptyExpr!7189))))))

(declare-fun b!2446275 () Bool)

(assert (=> b!2446275 (= e!1553488 e!1553489)))

(declare-fun res!1038132 () Bool)

(assert (=> b!2446275 (=> (not res!1038132) (not e!1553489))))

(assert (=> b!2446275 (= res!1038132 (not lt!879208))))

(assert (= (and d!705875 c!390389) b!2446272))

(assert (= (and d!705875 (not c!390389)) b!2446262))

(assert (= (and d!705875 c!390388) b!2446269))

(assert (= (and d!705875 (not c!390388)) b!2446274))

(assert (= (and b!2446274 c!390390) b!2446270))

(assert (= (and b!2446274 (not c!390390)) b!2446271))

(assert (= (and b!2446271 (not res!1038130)) b!2446268))

(assert (= (and b!2446268 res!1038133) b!2446267))

(assert (= (and b!2446267 res!1038131) b!2446266))

(assert (= (and b!2446266 res!1038126) b!2446265))

(assert (= (and b!2446268 (not res!1038128)) b!2446275))

(assert (= (and b!2446275 res!1038132) b!2446263))

(assert (= (and b!2446263 (not res!1038127)) b!2446264))

(assert (= (and b!2446264 (not res!1038129)) b!2446273))

(assert (= (or b!2446269 b!2446263 b!2446267) bm!150090))

(declare-fun m!2822231 () Bool)

(assert (=> bm!150090 m!2822231))

(declare-fun m!2822233 () Bool)

(assert (=> b!2446264 m!2822233))

(assert (=> b!2446264 m!2822233))

(declare-fun m!2822235 () Bool)

(assert (=> b!2446264 m!2822235))

(declare-fun m!2822237 () Bool)

(assert (=> b!2446272 m!2822237))

(declare-fun m!2822239 () Bool)

(assert (=> b!2446273 m!2822239))

(assert (=> d!705875 m!2822231))

(declare-fun m!2822241 () Bool)

(assert (=> d!705875 m!2822241))

(assert (=> b!2446262 m!2822239))

(assert (=> b!2446262 m!2822239))

(declare-fun m!2822243 () Bool)

(assert (=> b!2446262 m!2822243))

(assert (=> b!2446262 m!2822233))

(assert (=> b!2446262 m!2822243))

(assert (=> b!2446262 m!2822233))

(declare-fun m!2822245 () Bool)

(assert (=> b!2446262 m!2822245))

(assert (=> b!2446266 m!2822233))

(assert (=> b!2446266 m!2822233))

(assert (=> b!2446266 m!2822235))

(assert (=> b!2446265 m!2822239))

(assert (=> bm!150074 d!705875))

(declare-fun b!2446340 () Bool)

(declare-fun e!1553523 () List!28614)

(assert (=> b!2446340 (= e!1553523 (ite c!390343 Nil!28516 (_2!16608 lt!879179)))))

(declare-fun b!2446341 () Bool)

(assert (=> b!2446341 (= e!1553523 (Cons!28516 (h!33917 (ite c!390343 s!9460 (_1!16608 lt!879179))) (++!7092 (t!208591 (ite c!390343 s!9460 (_1!16608 lt!879179))) (ite c!390343 Nil!28516 (_2!16608 lt!879179)))))))

(declare-fun d!705879 () Bool)

(declare-fun e!1553524 () Bool)

(assert (=> d!705879 e!1553524))

(declare-fun res!1038170 () Bool)

(assert (=> d!705879 (=> (not res!1038170) (not e!1553524))))

(declare-fun lt!879218 () List!28614)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3927 (List!28614) (InoxSet C!14536))

(assert (=> d!705879 (= res!1038170 (= (content!3927 lt!879218) ((_ map or) (content!3927 (ite c!390343 s!9460 (_1!16608 lt!879179))) (content!3927 (ite c!390343 Nil!28516 (_2!16608 lt!879179))))))))

(assert (=> d!705879 (= lt!879218 e!1553523)))

(declare-fun c!390405 () Bool)

(assert (=> d!705879 (= c!390405 ((_ is Nil!28516) (ite c!390343 s!9460 (_1!16608 lt!879179))))))

(assert (=> d!705879 (= (++!7092 (ite c!390343 s!9460 (_1!16608 lt!879179)) (ite c!390343 Nil!28516 (_2!16608 lt!879179))) lt!879218)))

(declare-fun b!2446342 () Bool)

(declare-fun res!1038171 () Bool)

(assert (=> b!2446342 (=> (not res!1038171) (not e!1553524))))

(declare-fun size!22265 (List!28614) Int)

(assert (=> b!2446342 (= res!1038171 (= (size!22265 lt!879218) (+ (size!22265 (ite c!390343 s!9460 (_1!16608 lt!879179))) (size!22265 (ite c!390343 Nil!28516 (_2!16608 lt!879179))))))))

(declare-fun b!2446343 () Bool)

(assert (=> b!2446343 (= e!1553524 (or (not (= (ite c!390343 Nil!28516 (_2!16608 lt!879179)) Nil!28516)) (= lt!879218 (ite c!390343 s!9460 (_1!16608 lt!879179)))))))

(assert (= (and d!705879 c!390405) b!2446340))

(assert (= (and d!705879 (not c!390405)) b!2446341))

(assert (= (and d!705879 res!1038170) b!2446342))

(assert (= (and b!2446342 res!1038171) b!2446343))

(declare-fun m!2822279 () Bool)

(assert (=> b!2446341 m!2822279))

(declare-fun m!2822281 () Bool)

(assert (=> d!705879 m!2822281))

(declare-fun m!2822283 () Bool)

(assert (=> d!705879 m!2822283))

(declare-fun m!2822285 () Bool)

(assert (=> d!705879 m!2822285))

(declare-fun m!2822287 () Bool)

(assert (=> b!2446342 m!2822287))

(declare-fun m!2822289 () Bool)

(assert (=> b!2446342 m!2822289))

(declare-fun m!2822291 () Bool)

(assert (=> b!2446342 m!2822291))

(assert (=> bm!150075 d!705879))

(declare-fun bs!465389 () Bool)

(declare-fun b!2446448 () Bool)

(assert (= bs!465389 (and b!2446448 b!2446091)))

(declare-fun lambda!92676 () Int)

(assert (=> bs!465389 (not (= lambda!92676 lambda!92654))))

(assert (=> bs!465389 (not (= lambda!92676 lambda!92655))))

(assert (=> b!2446448 true))

(assert (=> b!2446448 true))

(declare-fun bs!465390 () Bool)

(declare-fun b!2446453 () Bool)

(assert (= bs!465390 (and b!2446453 b!2446091)))

(declare-fun lambda!92677 () Int)

(assert (=> bs!465390 (not (= lambda!92677 lambda!92654))))

(assert (=> bs!465390 (= lambda!92677 lambda!92655)))

(declare-fun bs!465391 () Bool)

(assert (= bs!465391 (and b!2446453 b!2446448)))

(assert (=> bs!465391 (not (= lambda!92677 lambda!92676))))

(assert (=> b!2446453 true))

(assert (=> b!2446453 true))

(declare-fun d!705887 () Bool)

(declare-fun c!390434 () Bool)

(assert (=> d!705887 (= c!390434 ((_ is EmptyExpr!7189) r!13927))))

(declare-fun e!1553592 () Bool)

(assert (=> d!705887 (= (matchRSpec!1036 r!13927 s!9460) e!1553592)))

(declare-fun e!1553591 () Bool)

(declare-fun call!150105 () Bool)

(assert (=> b!2446448 (= e!1553591 call!150105)))

(declare-fun b!2446449 () Bool)

(declare-fun e!1553588 () Bool)

(assert (=> b!2446449 (= e!1553588 (= s!9460 (Cons!28516 (c!390345 r!13927) Nil!28516)))))

(declare-fun b!2446450 () Bool)

(declare-fun call!150106 () Bool)

(assert (=> b!2446450 (= e!1553592 call!150106)))

(declare-fun bm!150100 () Bool)

(assert (=> bm!150100 (= call!150106 (isEmpty!16556 s!9460))))

(declare-fun b!2446451 () Bool)

(declare-fun e!1553590 () Bool)

(assert (=> b!2446451 (= e!1553590 (matchRSpec!1036 (regTwo!14891 r!13927) s!9460))))

(declare-fun b!2446452 () Bool)

(declare-fun c!390436 () Bool)

(assert (=> b!2446452 (= c!390436 ((_ is Union!7189) r!13927))))

(declare-fun e!1553587 () Bool)

(assert (=> b!2446452 (= e!1553588 e!1553587)))

(declare-fun e!1553586 () Bool)

(assert (=> b!2446453 (= e!1553586 call!150105)))

(declare-fun b!2446454 () Bool)

(declare-fun e!1553589 () Bool)

(assert (=> b!2446454 (= e!1553592 e!1553589)))

(declare-fun res!1038224 () Bool)

(assert (=> b!2446454 (= res!1038224 (not ((_ is EmptyLang!7189) r!13927)))))

(assert (=> b!2446454 (=> (not res!1038224) (not e!1553589))))

(declare-fun b!2446455 () Bool)

(assert (=> b!2446455 (= e!1553587 e!1553590)))

(declare-fun res!1038222 () Bool)

(assert (=> b!2446455 (= res!1038222 (matchRSpec!1036 (regOne!14891 r!13927) s!9460))))

(assert (=> b!2446455 (=> res!1038222 e!1553590)))

(declare-fun c!390435 () Bool)

(declare-fun bm!150101 () Bool)

(assert (=> bm!150101 (= call!150105 (Exists!1225 (ite c!390435 lambda!92676 lambda!92677)))))

(declare-fun b!2446456 () Bool)

(declare-fun c!390433 () Bool)

(assert (=> b!2446456 (= c!390433 ((_ is ElementMatch!7189) r!13927))))

(assert (=> b!2446456 (= e!1553589 e!1553588)))

(declare-fun b!2446457 () Bool)

(declare-fun res!1038223 () Bool)

(assert (=> b!2446457 (=> res!1038223 e!1553591)))

(assert (=> b!2446457 (= res!1038223 call!150106)))

(assert (=> b!2446457 (= e!1553586 e!1553591)))

(declare-fun b!2446458 () Bool)

(assert (=> b!2446458 (= e!1553587 e!1553586)))

(assert (=> b!2446458 (= c!390435 ((_ is Star!7189) r!13927))))

(assert (= (and d!705887 c!390434) b!2446450))

(assert (= (and d!705887 (not c!390434)) b!2446454))

(assert (= (and b!2446454 res!1038224) b!2446456))

(assert (= (and b!2446456 c!390433) b!2446449))

(assert (= (and b!2446456 (not c!390433)) b!2446452))

(assert (= (and b!2446452 c!390436) b!2446455))

(assert (= (and b!2446452 (not c!390436)) b!2446458))

(assert (= (and b!2446455 (not res!1038222)) b!2446451))

(assert (= (and b!2446458 c!390435) b!2446457))

(assert (= (and b!2446458 (not c!390435)) b!2446453))

(assert (= (and b!2446457 (not res!1038223)) b!2446448))

(assert (= (or b!2446448 b!2446453) bm!150101))

(assert (= (or b!2446450 b!2446457) bm!150100))

(assert (=> bm!150100 m!2822117))

(declare-fun m!2822369 () Bool)

(assert (=> b!2446451 m!2822369))

(declare-fun m!2822371 () Bool)

(assert (=> b!2446455 m!2822371))

(declare-fun m!2822373 () Bool)

(assert (=> bm!150101 m!2822373))

(assert (=> b!2446105 d!705887))

(declare-fun b!2446463 () Bool)

(declare-fun e!1553598 () Bool)

(assert (=> b!2446463 (= e!1553598 (matchR!3304 (derivativeStep!1857 r!13927 (head!5562 s!9460)) (tail!3835 s!9460)))))

(declare-fun d!705913 () Bool)

(declare-fun e!1553596 () Bool)

(assert (=> d!705913 e!1553596))

(declare-fun c!390437 () Bool)

(assert (=> d!705913 (= c!390437 ((_ is EmptyExpr!7189) r!13927))))

(declare-fun lt!879234 () Bool)

(assert (=> d!705913 (= lt!879234 e!1553598)))

(declare-fun c!390438 () Bool)

(assert (=> d!705913 (= c!390438 (isEmpty!16556 s!9460))))

(assert (=> d!705913 (validRegex!2895 r!13927)))

(assert (=> d!705913 (= (matchR!3304 r!13927 s!9460) lt!879234)))

(declare-fun b!2446464 () Bool)

(declare-fun e!1553600 () Bool)

(declare-fun e!1553601 () Bool)

(assert (=> b!2446464 (= e!1553600 e!1553601)))

(declare-fun res!1038230 () Bool)

(assert (=> b!2446464 (=> res!1038230 e!1553601)))

(declare-fun call!150107 () Bool)

(assert (=> b!2446464 (= res!1038230 call!150107)))

(declare-fun b!2446465 () Bool)

(declare-fun res!1038232 () Bool)

(assert (=> b!2446465 (=> res!1038232 e!1553601)))

(assert (=> b!2446465 (= res!1038232 (not (isEmpty!16556 (tail!3835 s!9460))))))

(declare-fun b!2446466 () Bool)

(declare-fun e!1553597 () Bool)

(assert (=> b!2446466 (= e!1553597 (= (head!5562 s!9460) (c!390345 r!13927)))))

(declare-fun b!2446467 () Bool)

(declare-fun res!1038229 () Bool)

(assert (=> b!2446467 (=> (not res!1038229) (not e!1553597))))

(assert (=> b!2446467 (= res!1038229 (isEmpty!16556 (tail!3835 s!9460)))))

(declare-fun b!2446468 () Bool)

(declare-fun res!1038234 () Bool)

(assert (=> b!2446468 (=> (not res!1038234) (not e!1553597))))

(assert (=> b!2446468 (= res!1038234 (not call!150107))))

(declare-fun b!2446469 () Bool)

(declare-fun res!1038231 () Bool)

(declare-fun e!1553599 () Bool)

(assert (=> b!2446469 (=> res!1038231 e!1553599)))

(assert (=> b!2446469 (= res!1038231 e!1553597)))

(declare-fun res!1038236 () Bool)

(assert (=> b!2446469 (=> (not res!1038236) (not e!1553597))))

(assert (=> b!2446469 (= res!1038236 lt!879234)))

(declare-fun b!2446470 () Bool)

(assert (=> b!2446470 (= e!1553596 (= lt!879234 call!150107))))

(declare-fun bm!150102 () Bool)

(assert (=> bm!150102 (= call!150107 (isEmpty!16556 s!9460))))

(declare-fun b!2446471 () Bool)

(declare-fun e!1553595 () Bool)

(assert (=> b!2446471 (= e!1553595 (not lt!879234))))

(declare-fun b!2446472 () Bool)

(declare-fun res!1038233 () Bool)

(assert (=> b!2446472 (=> res!1038233 e!1553599)))

(assert (=> b!2446472 (= res!1038233 (not ((_ is ElementMatch!7189) r!13927)))))

(assert (=> b!2446472 (= e!1553595 e!1553599)))

(declare-fun b!2446473 () Bool)

(assert (=> b!2446473 (= e!1553598 (nullable!2203 r!13927))))

(declare-fun b!2446474 () Bool)

(assert (=> b!2446474 (= e!1553601 (not (= (head!5562 s!9460) (c!390345 r!13927))))))

(declare-fun b!2446475 () Bool)

(assert (=> b!2446475 (= e!1553596 e!1553595)))

(declare-fun c!390439 () Bool)

(assert (=> b!2446475 (= c!390439 ((_ is EmptyLang!7189) r!13927))))

(declare-fun b!2446476 () Bool)

(assert (=> b!2446476 (= e!1553599 e!1553600)))

(declare-fun res!1038235 () Bool)

(assert (=> b!2446476 (=> (not res!1038235) (not e!1553600))))

(assert (=> b!2446476 (= res!1038235 (not lt!879234))))

(assert (= (and d!705913 c!390438) b!2446473))

(assert (= (and d!705913 (not c!390438)) b!2446463))

(assert (= (and d!705913 c!390437) b!2446470))

(assert (= (and d!705913 (not c!390437)) b!2446475))

(assert (= (and b!2446475 c!390439) b!2446471))

(assert (= (and b!2446475 (not c!390439)) b!2446472))

(assert (= (and b!2446472 (not res!1038233)) b!2446469))

(assert (= (and b!2446469 res!1038236) b!2446468))

(assert (= (and b!2446468 res!1038234) b!2446467))

(assert (= (and b!2446467 res!1038229) b!2446466))

(assert (= (and b!2446469 (not res!1038231)) b!2446476))

(assert (= (and b!2446476 res!1038235) b!2446464))

(assert (= (and b!2446464 (not res!1038230)) b!2446465))

(assert (= (and b!2446465 (not res!1038232)) b!2446474))

(assert (= (or b!2446470 b!2446464 b!2446468) bm!150102))

(assert (=> bm!150102 m!2822117))

(declare-fun m!2822375 () Bool)

(assert (=> b!2446465 m!2822375))

(assert (=> b!2446465 m!2822375))

(declare-fun m!2822377 () Bool)

(assert (=> b!2446465 m!2822377))

(declare-fun m!2822379 () Bool)

(assert (=> b!2446473 m!2822379))

(declare-fun m!2822381 () Bool)

(assert (=> b!2446474 m!2822381))

(assert (=> d!705913 m!2822117))

(declare-fun m!2822383 () Bool)

(assert (=> d!705913 m!2822383))

(assert (=> b!2446463 m!2822381))

(assert (=> b!2446463 m!2822381))

(declare-fun m!2822385 () Bool)

(assert (=> b!2446463 m!2822385))

(assert (=> b!2446463 m!2822375))

(assert (=> b!2446463 m!2822385))

(assert (=> b!2446463 m!2822375))

(declare-fun m!2822387 () Bool)

(assert (=> b!2446463 m!2822387))

(assert (=> b!2446467 m!2822375))

(assert (=> b!2446467 m!2822375))

(assert (=> b!2446467 m!2822377))

(assert (=> b!2446466 m!2822381))

(assert (=> b!2446105 d!705913))

(declare-fun d!705915 () Bool)

(assert (=> d!705915 (= (matchR!3304 r!13927 s!9460) (matchRSpec!1036 r!13927 s!9460))))

(declare-fun lt!879241 () Unit!41798)

(declare-fun choose!14512 (Regex!7189 List!28614) Unit!41798)

(assert (=> d!705915 (= lt!879241 (choose!14512 r!13927 s!9460))))

(assert (=> d!705915 (validRegex!2895 r!13927)))

(assert (=> d!705915 (= (mainMatchTheorem!1036 r!13927 s!9460) lt!879241)))

(declare-fun bs!465400 () Bool)

(assert (= bs!465400 d!705915))

(assert (=> bs!465400 m!2822113))

(assert (=> bs!465400 m!2822111))

(declare-fun m!2822417 () Bool)

(assert (=> bs!465400 m!2822417))

(assert (=> bs!465400 m!2822383))

(assert (=> b!2446105 d!705915))

(declare-fun d!705927 () Bool)

(assert (=> d!705927 (= (isEmpty!16557 l!9164) ((_ is Nil!28517) l!9164))))

(assert (=> b!2446106 d!705927))

(declare-fun d!705929 () Bool)

(assert (=> d!705929 (matchR!3304 (Concat!11825 lt!879186 EmptyExpr!7189) (++!7092 s!9460 Nil!28516))))

(declare-fun lt!879248 () Unit!41798)

(declare-fun choose!14513 (Regex!7189 Regex!7189 List!28614 List!28614) Unit!41798)

(assert (=> d!705929 (= lt!879248 (choose!14513 lt!879186 EmptyExpr!7189 s!9460 Nil!28516))))

(declare-fun e!1553621 () Bool)

(assert (=> d!705929 e!1553621))

(declare-fun res!1038259 () Bool)

(assert (=> d!705929 (=> (not res!1038259) (not e!1553621))))

(assert (=> d!705929 (= res!1038259 (validRegex!2895 lt!879186))))

(assert (=> d!705929 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!120 lt!879186 EmptyExpr!7189 s!9460 Nil!28516) lt!879248)))

(declare-fun b!2446509 () Bool)

(assert (=> b!2446509 (= e!1553621 (validRegex!2895 EmptyExpr!7189))))

(assert (= (and d!705929 res!1038259) b!2446509))

(declare-fun m!2822443 () Bool)

(assert (=> d!705929 m!2822443))

(assert (=> d!705929 m!2822443))

(declare-fun m!2822445 () Bool)

(assert (=> d!705929 m!2822445))

(declare-fun m!2822447 () Bool)

(assert (=> d!705929 m!2822447))

(declare-fun m!2822449 () Bool)

(assert (=> d!705929 m!2822449))

(declare-fun m!2822451 () Bool)

(assert (=> b!2446509 m!2822451))

(assert (=> b!2446098 d!705929))

(declare-fun b!2446510 () Bool)

(declare-fun e!1553625 () Bool)

(assert (=> b!2446510 (= e!1553625 (matchR!3304 (derivativeStep!1857 lt!879171 (head!5562 call!150082)) (tail!3835 call!150082)))))

(declare-fun d!705935 () Bool)

(declare-fun e!1553623 () Bool)

(assert (=> d!705935 e!1553623))

(declare-fun c!390445 () Bool)

(assert (=> d!705935 (= c!390445 ((_ is EmptyExpr!7189) lt!879171))))

(declare-fun lt!879251 () Bool)

(assert (=> d!705935 (= lt!879251 e!1553625)))

(declare-fun c!390446 () Bool)

(assert (=> d!705935 (= c!390446 (isEmpty!16556 call!150082))))

(assert (=> d!705935 (validRegex!2895 lt!879171)))

(assert (=> d!705935 (= (matchR!3304 lt!879171 call!150082) lt!879251)))

(declare-fun b!2446511 () Bool)

(declare-fun e!1553627 () Bool)

(declare-fun e!1553628 () Bool)

(assert (=> b!2446511 (= e!1553627 e!1553628)))

(declare-fun res!1038261 () Bool)

(assert (=> b!2446511 (=> res!1038261 e!1553628)))

(declare-fun call!150109 () Bool)

(assert (=> b!2446511 (= res!1038261 call!150109)))

(declare-fun b!2446512 () Bool)

(declare-fun res!1038263 () Bool)

(assert (=> b!2446512 (=> res!1038263 e!1553628)))

(assert (=> b!2446512 (= res!1038263 (not (isEmpty!16556 (tail!3835 call!150082))))))

(declare-fun b!2446513 () Bool)

(declare-fun e!1553624 () Bool)

(assert (=> b!2446513 (= e!1553624 (= (head!5562 call!150082) (c!390345 lt!879171)))))

(declare-fun b!2446514 () Bool)

(declare-fun res!1038260 () Bool)

(assert (=> b!2446514 (=> (not res!1038260) (not e!1553624))))

(assert (=> b!2446514 (= res!1038260 (isEmpty!16556 (tail!3835 call!150082)))))

(declare-fun b!2446515 () Bool)

(declare-fun res!1038265 () Bool)

(assert (=> b!2446515 (=> (not res!1038265) (not e!1553624))))

(assert (=> b!2446515 (= res!1038265 (not call!150109))))

(declare-fun b!2446516 () Bool)

(declare-fun res!1038262 () Bool)

(declare-fun e!1553626 () Bool)

(assert (=> b!2446516 (=> res!1038262 e!1553626)))

(assert (=> b!2446516 (= res!1038262 e!1553624)))

(declare-fun res!1038267 () Bool)

(assert (=> b!2446516 (=> (not res!1038267) (not e!1553624))))

(assert (=> b!2446516 (= res!1038267 lt!879251)))

(declare-fun b!2446517 () Bool)

(assert (=> b!2446517 (= e!1553623 (= lt!879251 call!150109))))

(declare-fun bm!150104 () Bool)

(assert (=> bm!150104 (= call!150109 (isEmpty!16556 call!150082))))

(declare-fun b!2446518 () Bool)

(declare-fun e!1553622 () Bool)

(assert (=> b!2446518 (= e!1553622 (not lt!879251))))

(declare-fun b!2446519 () Bool)

(declare-fun res!1038264 () Bool)

(assert (=> b!2446519 (=> res!1038264 e!1553626)))

(assert (=> b!2446519 (= res!1038264 (not ((_ is ElementMatch!7189) lt!879171)))))

(assert (=> b!2446519 (= e!1553622 e!1553626)))

(declare-fun b!2446520 () Bool)

(assert (=> b!2446520 (= e!1553625 (nullable!2203 lt!879171))))

(declare-fun b!2446521 () Bool)

(assert (=> b!2446521 (= e!1553628 (not (= (head!5562 call!150082) (c!390345 lt!879171))))))

(declare-fun b!2446522 () Bool)

(assert (=> b!2446522 (= e!1553623 e!1553622)))

(declare-fun c!390447 () Bool)

(assert (=> b!2446522 (= c!390447 ((_ is EmptyLang!7189) lt!879171))))

(declare-fun b!2446523 () Bool)

(assert (=> b!2446523 (= e!1553626 e!1553627)))

(declare-fun res!1038266 () Bool)

(assert (=> b!2446523 (=> (not res!1038266) (not e!1553627))))

(assert (=> b!2446523 (= res!1038266 (not lt!879251))))

(assert (= (and d!705935 c!390446) b!2446520))

(assert (= (and d!705935 (not c!390446)) b!2446510))

(assert (= (and d!705935 c!390445) b!2446517))

(assert (= (and d!705935 (not c!390445)) b!2446522))

(assert (= (and b!2446522 c!390447) b!2446518))

(assert (= (and b!2446522 (not c!390447)) b!2446519))

(assert (= (and b!2446519 (not res!1038264)) b!2446516))

(assert (= (and b!2446516 res!1038267) b!2446515))

(assert (= (and b!2446515 res!1038265) b!2446514))

(assert (= (and b!2446514 res!1038260) b!2446513))

(assert (= (and b!2446516 (not res!1038262)) b!2446523))

(assert (= (and b!2446523 res!1038266) b!2446511))

(assert (= (and b!2446511 (not res!1038261)) b!2446512))

(assert (= (and b!2446512 (not res!1038263)) b!2446521))

(assert (= (or b!2446517 b!2446511 b!2446515) bm!150104))

(declare-fun m!2822459 () Bool)

(assert (=> bm!150104 m!2822459))

(declare-fun m!2822461 () Bool)

(assert (=> b!2446512 m!2822461))

(assert (=> b!2446512 m!2822461))

(declare-fun m!2822463 () Bool)

(assert (=> b!2446512 m!2822463))

(declare-fun m!2822465 () Bool)

(assert (=> b!2446520 m!2822465))

(declare-fun m!2822467 () Bool)

(assert (=> b!2446521 m!2822467))

(assert (=> d!705935 m!2822459))

(declare-fun m!2822469 () Bool)

(assert (=> d!705935 m!2822469))

(assert (=> b!2446510 m!2822467))

(assert (=> b!2446510 m!2822467))

(declare-fun m!2822471 () Bool)

(assert (=> b!2446510 m!2822471))

(assert (=> b!2446510 m!2822461))

(assert (=> b!2446510 m!2822471))

(assert (=> b!2446510 m!2822461))

(declare-fun m!2822473 () Bool)

(assert (=> b!2446510 m!2822473))

(assert (=> b!2446514 m!2822461))

(assert (=> b!2446514 m!2822461))

(assert (=> b!2446514 m!2822463))

(assert (=> b!2446513 m!2822467))

(assert (=> b!2446098 d!705935))

(declare-fun d!705941 () Bool)

(assert (=> d!705941 (isDefined!4504 (findConcatSeparation!786 lt!879186 EmptyExpr!7189 Nil!28516 s!9460 s!9460))))

(declare-fun lt!879260 () Unit!41798)

(declare-fun choose!14515 (Regex!7189 Regex!7189 List!28614) Unit!41798)

(assert (=> d!705941 (= lt!879260 (choose!14515 lt!879186 EmptyExpr!7189 s!9460))))

(assert (=> d!705941 (validRegex!2895 lt!879186)))

(assert (=> d!705941 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!88 lt!879186 EmptyExpr!7189 s!9460) lt!879260)))

(declare-fun bs!465407 () Bool)

(assert (= bs!465407 d!705941))

(declare-fun m!2822517 () Bool)

(assert (=> bs!465407 m!2822517))

(assert (=> bs!465407 m!2822517))

(declare-fun m!2822519 () Bool)

(assert (=> bs!465407 m!2822519))

(declare-fun m!2822521 () Bool)

(assert (=> bs!465407 m!2822521))

(assert (=> bs!465407 m!2822449))

(assert (=> b!2446098 d!705941))

(declare-fun d!705951 () Bool)

(declare-fun choose!14516 (Int) Bool)

(assert (=> d!705951 (= (Exists!1225 lambda!92655) (choose!14516 lambda!92655))))

(declare-fun bs!465408 () Bool)

(assert (= bs!465408 d!705951))

(declare-fun m!2822523 () Bool)

(assert (=> bs!465408 m!2822523))

(assert (=> b!2446091 d!705951))

(declare-fun d!705953 () Bool)

(assert (=> d!705953 (= (isDefined!4504 (findConcatSeparation!786 (regOne!14890 r!13927) (regTwo!14890 r!13927) Nil!28516 s!9460 s!9460)) (not (isEmpty!16559 (findConcatSeparation!786 (regOne!14890 r!13927) (regTwo!14890 r!13927) Nil!28516 s!9460 s!9460))))))

(declare-fun bs!465409 () Bool)

(assert (= bs!465409 d!705953))

(assert (=> bs!465409 m!2822091))

(declare-fun m!2822525 () Bool)

(assert (=> bs!465409 m!2822525))

(assert (=> b!2446091 d!705953))

(declare-fun bs!465411 () Bool)

(declare-fun d!705955 () Bool)

(assert (= bs!465411 (and d!705955 b!2446091)))

(declare-fun lambda!92688 () Int)

(assert (=> bs!465411 (= lambda!92688 lambda!92654)))

(assert (=> bs!465411 (not (= lambda!92688 lambda!92655))))

(declare-fun bs!465412 () Bool)

(assert (= bs!465412 (and d!705955 b!2446448)))

(assert (=> bs!465412 (not (= lambda!92688 lambda!92676))))

(declare-fun bs!465413 () Bool)

(assert (= bs!465413 (and d!705955 b!2446453)))

(assert (=> bs!465413 (not (= lambda!92688 lambda!92677))))

(assert (=> d!705955 true))

(assert (=> d!705955 true))

(assert (=> d!705955 true))

(assert (=> d!705955 (= (isDefined!4504 (findConcatSeparation!786 (regOne!14890 r!13927) (regTwo!14890 r!13927) Nil!28516 s!9460 s!9460)) (Exists!1225 lambda!92688))))

(declare-fun lt!879263 () Unit!41798)

(declare-fun choose!14517 (Regex!7189 Regex!7189 List!28614) Unit!41798)

(assert (=> d!705955 (= lt!879263 (choose!14517 (regOne!14890 r!13927) (regTwo!14890 r!13927) s!9460))))

(assert (=> d!705955 (validRegex!2895 (regOne!14890 r!13927))))

(assert (=> d!705955 (= (lemmaFindConcatSeparationEquivalentToExists!724 (regOne!14890 r!13927) (regTwo!14890 r!13927) s!9460) lt!879263)))

(declare-fun bs!465414 () Bool)

(assert (= bs!465414 d!705955))

(assert (=> bs!465414 m!2822091))

(declare-fun m!2822527 () Bool)

(assert (=> bs!465414 m!2822527))

(declare-fun m!2822529 () Bool)

(assert (=> bs!465414 m!2822529))

(declare-fun m!2822531 () Bool)

(assert (=> bs!465414 m!2822531))

(assert (=> bs!465414 m!2822091))

(assert (=> bs!465414 m!2822093))

(assert (=> b!2446091 d!705955))

(declare-fun bs!465415 () Bool)

(declare-fun d!705959 () Bool)

(assert (= bs!465415 (and d!705959 b!2446091)))

(declare-fun lambda!92693 () Int)

(assert (=> bs!465415 (= lambda!92693 lambda!92654)))

(declare-fun bs!465416 () Bool)

(assert (= bs!465416 (and d!705959 d!705955)))

(assert (=> bs!465416 (= lambda!92693 lambda!92688)))

(assert (=> bs!465415 (not (= lambda!92693 lambda!92655))))

(declare-fun bs!465417 () Bool)

(assert (= bs!465417 (and d!705959 b!2446453)))

(assert (=> bs!465417 (not (= lambda!92693 lambda!92677))))

(declare-fun bs!465418 () Bool)

(assert (= bs!465418 (and d!705959 b!2446448)))

(assert (=> bs!465418 (not (= lambda!92693 lambda!92676))))

(assert (=> d!705959 true))

(assert (=> d!705959 true))

(assert (=> d!705959 true))

(declare-fun lambda!92694 () Int)

(assert (=> bs!465415 (not (= lambda!92694 lambda!92654))))

(declare-fun bs!465419 () Bool)

(assert (= bs!465419 d!705959))

(assert (=> bs!465419 (not (= lambda!92694 lambda!92693))))

(assert (=> bs!465416 (not (= lambda!92694 lambda!92688))))

(assert (=> bs!465415 (= lambda!92694 lambda!92655)))

(assert (=> bs!465417 (= lambda!92694 lambda!92677)))

(assert (=> bs!465418 (not (= lambda!92694 lambda!92676))))

(assert (=> d!705959 true))

(assert (=> d!705959 true))

(assert (=> d!705959 true))

(assert (=> d!705959 (= (Exists!1225 lambda!92693) (Exists!1225 lambda!92694))))

(declare-fun lt!879266 () Unit!41798)

(declare-fun choose!14518 (Regex!7189 Regex!7189 List!28614) Unit!41798)

(assert (=> d!705959 (= lt!879266 (choose!14518 (regOne!14890 r!13927) (regTwo!14890 r!13927) s!9460))))

(assert (=> d!705959 (validRegex!2895 (regOne!14890 r!13927))))

(assert (=> d!705959 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!470 (regOne!14890 r!13927) (regTwo!14890 r!13927) s!9460) lt!879266)))

(declare-fun m!2822533 () Bool)

(assert (=> bs!465419 m!2822533))

(declare-fun m!2822535 () Bool)

(assert (=> bs!465419 m!2822535))

(declare-fun m!2822537 () Bool)

(assert (=> bs!465419 m!2822537))

(assert (=> bs!465419 m!2822529))

(assert (=> b!2446091 d!705959))

(declare-fun b!2446630 () Bool)

(declare-fun e!1553679 () Bool)

(assert (=> b!2446630 (= e!1553679 (matchR!3304 (regTwo!14890 r!13927) s!9460))))

(declare-fun d!705961 () Bool)

(declare-fun e!1553681 () Bool)

(assert (=> d!705961 e!1553681))

(declare-fun res!1038302 () Bool)

(assert (=> d!705961 (=> res!1038302 e!1553681)))

(declare-fun e!1553677 () Bool)

(assert (=> d!705961 (= res!1038302 e!1553677)))

(declare-fun res!1038304 () Bool)

(assert (=> d!705961 (=> (not res!1038304) (not e!1553677))))

(declare-fun lt!879275 () Option!5678)

(assert (=> d!705961 (= res!1038304 (isDefined!4504 lt!879275))))

(declare-fun e!1553680 () Option!5678)

(assert (=> d!705961 (= lt!879275 e!1553680)))

(declare-fun c!390463 () Bool)

(assert (=> d!705961 (= c!390463 e!1553679)))

(declare-fun res!1038303 () Bool)

(assert (=> d!705961 (=> (not res!1038303) (not e!1553679))))

(assert (=> d!705961 (= res!1038303 (matchR!3304 (regOne!14890 r!13927) Nil!28516))))

(assert (=> d!705961 (validRegex!2895 (regOne!14890 r!13927))))

(assert (=> d!705961 (= (findConcatSeparation!786 (regOne!14890 r!13927) (regTwo!14890 r!13927) Nil!28516 s!9460 s!9460) lt!879275)))

(declare-fun b!2446631 () Bool)

(declare-fun e!1553678 () Option!5678)

(assert (=> b!2446631 (= e!1553680 e!1553678)))

(declare-fun c!390464 () Bool)

(assert (=> b!2446631 (= c!390464 ((_ is Nil!28516) s!9460))))

(declare-fun b!2446632 () Bool)

(declare-fun res!1038301 () Bool)

(assert (=> b!2446632 (=> (not res!1038301) (not e!1553677))))

(assert (=> b!2446632 (= res!1038301 (matchR!3304 (regOne!14890 r!13927) (_1!16608 (get!8813 lt!879275))))))

(declare-fun b!2446633 () Bool)

(declare-fun res!1038300 () Bool)

(assert (=> b!2446633 (=> (not res!1038300) (not e!1553677))))

(assert (=> b!2446633 (= res!1038300 (matchR!3304 (regTwo!14890 r!13927) (_2!16608 (get!8813 lt!879275))))))

(declare-fun b!2446634 () Bool)

(assert (=> b!2446634 (= e!1553678 None!5677)))

(declare-fun b!2446635 () Bool)

(declare-fun lt!879273 () Unit!41798)

(declare-fun lt!879274 () Unit!41798)

(assert (=> b!2446635 (= lt!879273 lt!879274)))

(assert (=> b!2446635 (= (++!7092 (++!7092 Nil!28516 (Cons!28516 (h!33917 s!9460) Nil!28516)) (t!208591 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!705 (List!28614 C!14536 List!28614 List!28614) Unit!41798)

(assert (=> b!2446635 (= lt!879274 (lemmaMoveElementToOtherListKeepsConcatEq!705 Nil!28516 (h!33917 s!9460) (t!208591 s!9460) s!9460))))

(assert (=> b!2446635 (= e!1553678 (findConcatSeparation!786 (regOne!14890 r!13927) (regTwo!14890 r!13927) (++!7092 Nil!28516 (Cons!28516 (h!33917 s!9460) Nil!28516)) (t!208591 s!9460) s!9460))))

(declare-fun b!2446636 () Bool)

(assert (=> b!2446636 (= e!1553681 (not (isDefined!4504 lt!879275)))))

(declare-fun b!2446637 () Bool)

(assert (=> b!2446637 (= e!1553677 (= (++!7092 (_1!16608 (get!8813 lt!879275)) (_2!16608 (get!8813 lt!879275))) s!9460))))

(declare-fun b!2446638 () Bool)

(assert (=> b!2446638 (= e!1553680 (Some!5677 (tuple2!28135 Nil!28516 s!9460)))))

(assert (= (and d!705961 res!1038303) b!2446630))

(assert (= (and d!705961 c!390463) b!2446638))

(assert (= (and d!705961 (not c!390463)) b!2446631))

(assert (= (and b!2446631 c!390464) b!2446634))

(assert (= (and b!2446631 (not c!390464)) b!2446635))

(assert (= (and d!705961 res!1038304) b!2446632))

(assert (= (and b!2446632 res!1038301) b!2446633))

(assert (= (and b!2446633 res!1038300) b!2446637))

(assert (= (and d!705961 (not res!1038302)) b!2446636))

(declare-fun m!2822539 () Bool)

(assert (=> b!2446632 m!2822539))

(declare-fun m!2822541 () Bool)

(assert (=> b!2446632 m!2822541))

(declare-fun m!2822543 () Bool)

(assert (=> b!2446636 m!2822543))

(assert (=> d!705961 m!2822543))

(declare-fun m!2822545 () Bool)

(assert (=> d!705961 m!2822545))

(assert (=> d!705961 m!2822529))

(declare-fun m!2822547 () Bool)

(assert (=> b!2446630 m!2822547))

(assert (=> b!2446633 m!2822539))

(declare-fun m!2822549 () Bool)

(assert (=> b!2446633 m!2822549))

(assert (=> b!2446637 m!2822539))

(declare-fun m!2822551 () Bool)

(assert (=> b!2446637 m!2822551))

(declare-fun m!2822553 () Bool)

(assert (=> b!2446635 m!2822553))

(assert (=> b!2446635 m!2822553))

(declare-fun m!2822555 () Bool)

(assert (=> b!2446635 m!2822555))

(declare-fun m!2822557 () Bool)

(assert (=> b!2446635 m!2822557))

(assert (=> b!2446635 m!2822553))

(declare-fun m!2822559 () Bool)

(assert (=> b!2446635 m!2822559))

(assert (=> b!2446091 d!705961))

(declare-fun d!705963 () Bool)

(assert (=> d!705963 (= (Exists!1225 lambda!92654) (choose!14516 lambda!92654))))

(declare-fun bs!465420 () Bool)

(assert (= bs!465420 d!705963))

(declare-fun m!2822561 () Bool)

(assert (=> bs!465420 m!2822561))

(assert (=> b!2446091 d!705963))

(declare-fun d!705965 () Bool)

(assert (=> d!705965 (= (isDefined!4504 call!150078) (not (isEmpty!16559 call!150078)))))

(declare-fun bs!465421 () Bool)

(assert (= bs!465421 d!705965))

(declare-fun m!2822563 () Bool)

(assert (=> bs!465421 m!2822563))

(assert (=> bm!150072 d!705965))

(declare-fun d!705967 () Bool)

(assert (=> d!705967 (= (head!5560 l!9164) (h!33918 l!9164))))

(assert (=> bm!150078 d!705967))

(declare-fun b!2446639 () Bool)

(declare-fun e!1553684 () Bool)

(assert (=> b!2446639 (= e!1553684 (matchR!3304 call!150085 s!9460))))

(declare-fun d!705969 () Bool)

(declare-fun e!1553686 () Bool)

(assert (=> d!705969 e!1553686))

(declare-fun res!1038307 () Bool)

(assert (=> d!705969 (=> res!1038307 e!1553686)))

(declare-fun e!1553682 () Bool)

(assert (=> d!705969 (= res!1038307 e!1553682)))

(declare-fun res!1038309 () Bool)

(assert (=> d!705969 (=> (not res!1038309) (not e!1553682))))

(declare-fun lt!879278 () Option!5678)

(assert (=> d!705969 (= res!1038309 (isDefined!4504 lt!879278))))

(declare-fun e!1553685 () Option!5678)

(assert (=> d!705969 (= lt!879278 e!1553685)))

(declare-fun c!390465 () Bool)

(assert (=> d!705969 (= c!390465 e!1553684)))

(declare-fun res!1038308 () Bool)

(assert (=> d!705969 (=> (not res!1038308) (not e!1553684))))

(assert (=> d!705969 (= res!1038308 (matchR!3304 lt!879186 Nil!28516))))

(assert (=> d!705969 (validRegex!2895 lt!879186)))

(assert (=> d!705969 (= (findConcatSeparation!786 lt!879186 call!150085 Nil!28516 s!9460 s!9460) lt!879278)))

(declare-fun b!2446640 () Bool)

(declare-fun e!1553683 () Option!5678)

(assert (=> b!2446640 (= e!1553685 e!1553683)))

(declare-fun c!390466 () Bool)

(assert (=> b!2446640 (= c!390466 ((_ is Nil!28516) s!9460))))

(declare-fun b!2446641 () Bool)

(declare-fun res!1038306 () Bool)

(assert (=> b!2446641 (=> (not res!1038306) (not e!1553682))))

(assert (=> b!2446641 (= res!1038306 (matchR!3304 lt!879186 (_1!16608 (get!8813 lt!879278))))))

(declare-fun b!2446642 () Bool)

(declare-fun res!1038305 () Bool)

(assert (=> b!2446642 (=> (not res!1038305) (not e!1553682))))

(assert (=> b!2446642 (= res!1038305 (matchR!3304 call!150085 (_2!16608 (get!8813 lt!879278))))))

(declare-fun b!2446643 () Bool)

(assert (=> b!2446643 (= e!1553683 None!5677)))

(declare-fun b!2446644 () Bool)

(declare-fun lt!879276 () Unit!41798)

(declare-fun lt!879277 () Unit!41798)

(assert (=> b!2446644 (= lt!879276 lt!879277)))

(assert (=> b!2446644 (= (++!7092 (++!7092 Nil!28516 (Cons!28516 (h!33917 s!9460) Nil!28516)) (t!208591 s!9460)) s!9460)))

(assert (=> b!2446644 (= lt!879277 (lemmaMoveElementToOtherListKeepsConcatEq!705 Nil!28516 (h!33917 s!9460) (t!208591 s!9460) s!9460))))

(assert (=> b!2446644 (= e!1553683 (findConcatSeparation!786 lt!879186 call!150085 (++!7092 Nil!28516 (Cons!28516 (h!33917 s!9460) Nil!28516)) (t!208591 s!9460) s!9460))))

(declare-fun b!2446645 () Bool)

(assert (=> b!2446645 (= e!1553686 (not (isDefined!4504 lt!879278)))))

(declare-fun b!2446646 () Bool)

(assert (=> b!2446646 (= e!1553682 (= (++!7092 (_1!16608 (get!8813 lt!879278)) (_2!16608 (get!8813 lt!879278))) s!9460))))

(declare-fun b!2446647 () Bool)

(assert (=> b!2446647 (= e!1553685 (Some!5677 (tuple2!28135 Nil!28516 s!9460)))))

(assert (= (and d!705969 res!1038308) b!2446639))

(assert (= (and d!705969 c!390465) b!2446647))

(assert (= (and d!705969 (not c!390465)) b!2446640))

(assert (= (and b!2446640 c!390466) b!2446643))

(assert (= (and b!2446640 (not c!390466)) b!2446644))

(assert (= (and d!705969 res!1038309) b!2446641))

(assert (= (and b!2446641 res!1038306) b!2446642))

(assert (= (and b!2446642 res!1038305) b!2446646))

(assert (= (and d!705969 (not res!1038307)) b!2446645))

(declare-fun m!2822565 () Bool)

(assert (=> b!2446641 m!2822565))

(declare-fun m!2822567 () Bool)

(assert (=> b!2446641 m!2822567))

(declare-fun m!2822569 () Bool)

(assert (=> b!2446645 m!2822569))

(assert (=> d!705969 m!2822569))

(declare-fun m!2822571 () Bool)

(assert (=> d!705969 m!2822571))

(assert (=> d!705969 m!2822449))

(declare-fun m!2822573 () Bool)

(assert (=> b!2446639 m!2822573))

(assert (=> b!2446642 m!2822565))

(declare-fun m!2822575 () Bool)

(assert (=> b!2446642 m!2822575))

(assert (=> b!2446646 m!2822565))

(declare-fun m!2822577 () Bool)

(assert (=> b!2446646 m!2822577))

(assert (=> b!2446644 m!2822553))

(assert (=> b!2446644 m!2822553))

(assert (=> b!2446644 m!2822555))

(assert (=> b!2446644 m!2822557))

(assert (=> b!2446644 m!2822553))

(declare-fun m!2822579 () Bool)

(assert (=> b!2446644 m!2822579))

(assert (=> bm!150079 d!705969))

(declare-fun d!705971 () Bool)

(assert (=> d!705971 (matchR!3304 (Concat!11825 lt!879186 EmptyExpr!7189) (++!7092 (_1!16608 lt!879179) (_2!16608 lt!879179)))))

(declare-fun lt!879281 () Unit!41798)

(declare-fun choose!14519 (Regex!7189 Regex!7189 List!28614 List!28614 List!28614) Unit!41798)

(assert (=> d!705971 (= lt!879281 (choose!14519 lt!879186 EmptyExpr!7189 (_1!16608 lt!879179) (_2!16608 lt!879179) s!9460))))

(assert (=> d!705971 (validRegex!2895 lt!879186)))

(assert (=> d!705971 (= (lemmaFindSeparationIsDefinedThenConcatMatches!92 lt!879186 EmptyExpr!7189 (_1!16608 lt!879179) (_2!16608 lt!879179) s!9460) lt!879281)))

(declare-fun bs!465422 () Bool)

(assert (= bs!465422 d!705971))

(declare-fun m!2822581 () Bool)

(assert (=> bs!465422 m!2822581))

(assert (=> bs!465422 m!2822581))

(declare-fun m!2822583 () Bool)

(assert (=> bs!465422 m!2822583))

(declare-fun m!2822585 () Bool)

(assert (=> bs!465422 m!2822585))

(assert (=> bs!465422 m!2822449))

(assert (=> b!2446093 d!705971))

(declare-fun d!705973 () Bool)

(assert (=> d!705973 (= (get!8813 lt!879183) (v!31085 lt!879183))))

(assert (=> b!2446093 d!705973))

(declare-fun e!1553689 () Bool)

(declare-fun b!2446648 () Bool)

(assert (=> b!2446648 (= e!1553689 (matchR!3304 (ite c!390342 EmptyExpr!7189 call!150083) s!9460))))

(declare-fun d!705975 () Bool)

(declare-fun e!1553691 () Bool)

(assert (=> d!705975 e!1553691))

(declare-fun res!1038312 () Bool)

(assert (=> d!705975 (=> res!1038312 e!1553691)))

(declare-fun e!1553687 () Bool)

(assert (=> d!705975 (= res!1038312 e!1553687)))

(declare-fun res!1038314 () Bool)

(assert (=> d!705975 (=> (not res!1038314) (not e!1553687))))

(declare-fun lt!879284 () Option!5678)

(assert (=> d!705975 (= res!1038314 (isDefined!4504 lt!879284))))

(declare-fun e!1553690 () Option!5678)

(assert (=> d!705975 (= lt!879284 e!1553690)))

(declare-fun c!390467 () Bool)

(assert (=> d!705975 (= c!390467 e!1553689)))

(declare-fun res!1038313 () Bool)

(assert (=> d!705975 (=> (not res!1038313) (not e!1553689))))

(assert (=> d!705975 (= res!1038313 (matchR!3304 (ite c!390342 lt!879186 call!150080) Nil!28516))))

(assert (=> d!705975 (validRegex!2895 (ite c!390342 lt!879186 call!150080))))

(assert (=> d!705975 (= (findConcatSeparation!786 (ite c!390342 lt!879186 call!150080) (ite c!390342 EmptyExpr!7189 call!150083) Nil!28516 s!9460 s!9460) lt!879284)))

(declare-fun b!2446649 () Bool)

(declare-fun e!1553688 () Option!5678)

(assert (=> b!2446649 (= e!1553690 e!1553688)))

(declare-fun c!390468 () Bool)

(assert (=> b!2446649 (= c!390468 ((_ is Nil!28516) s!9460))))

(declare-fun b!2446650 () Bool)

(declare-fun res!1038311 () Bool)

(assert (=> b!2446650 (=> (not res!1038311) (not e!1553687))))

(assert (=> b!2446650 (= res!1038311 (matchR!3304 (ite c!390342 lt!879186 call!150080) (_1!16608 (get!8813 lt!879284))))))

(declare-fun b!2446651 () Bool)

(declare-fun res!1038310 () Bool)

(assert (=> b!2446651 (=> (not res!1038310) (not e!1553687))))

(assert (=> b!2446651 (= res!1038310 (matchR!3304 (ite c!390342 EmptyExpr!7189 call!150083) (_2!16608 (get!8813 lt!879284))))))

(declare-fun b!2446652 () Bool)

(assert (=> b!2446652 (= e!1553688 None!5677)))

(declare-fun b!2446653 () Bool)

(declare-fun lt!879282 () Unit!41798)

(declare-fun lt!879283 () Unit!41798)

(assert (=> b!2446653 (= lt!879282 lt!879283)))

(assert (=> b!2446653 (= (++!7092 (++!7092 Nil!28516 (Cons!28516 (h!33917 s!9460) Nil!28516)) (t!208591 s!9460)) s!9460)))

(assert (=> b!2446653 (= lt!879283 (lemmaMoveElementToOtherListKeepsConcatEq!705 Nil!28516 (h!33917 s!9460) (t!208591 s!9460) s!9460))))

(assert (=> b!2446653 (= e!1553688 (findConcatSeparation!786 (ite c!390342 lt!879186 call!150080) (ite c!390342 EmptyExpr!7189 call!150083) (++!7092 Nil!28516 (Cons!28516 (h!33917 s!9460) Nil!28516)) (t!208591 s!9460) s!9460))))

(declare-fun b!2446654 () Bool)

(assert (=> b!2446654 (= e!1553691 (not (isDefined!4504 lt!879284)))))

(declare-fun b!2446655 () Bool)

(assert (=> b!2446655 (= e!1553687 (= (++!7092 (_1!16608 (get!8813 lt!879284)) (_2!16608 (get!8813 lt!879284))) s!9460))))

(declare-fun b!2446656 () Bool)

(assert (=> b!2446656 (= e!1553690 (Some!5677 (tuple2!28135 Nil!28516 s!9460)))))

(assert (= (and d!705975 res!1038313) b!2446648))

(assert (= (and d!705975 c!390467) b!2446656))

(assert (= (and d!705975 (not c!390467)) b!2446649))

(assert (= (and b!2446649 c!390468) b!2446652))

(assert (= (and b!2446649 (not c!390468)) b!2446653))

(assert (= (and d!705975 res!1038314) b!2446650))

(assert (= (and b!2446650 res!1038311) b!2446651))

(assert (= (and b!2446651 res!1038310) b!2446655))

(assert (= (and d!705975 (not res!1038312)) b!2446654))

(declare-fun m!2822587 () Bool)

(assert (=> b!2446650 m!2822587))

(declare-fun m!2822589 () Bool)

(assert (=> b!2446650 m!2822589))

(declare-fun m!2822591 () Bool)

(assert (=> b!2446654 m!2822591))

(assert (=> d!705975 m!2822591))

(declare-fun m!2822593 () Bool)

(assert (=> d!705975 m!2822593))

(declare-fun m!2822595 () Bool)

(assert (=> d!705975 m!2822595))

(declare-fun m!2822597 () Bool)

(assert (=> b!2446648 m!2822597))

(assert (=> b!2446651 m!2822587))

(declare-fun m!2822599 () Bool)

(assert (=> b!2446651 m!2822599))

(assert (=> b!2446655 m!2822587))

(declare-fun m!2822601 () Bool)

(assert (=> b!2446655 m!2822601))

(assert (=> b!2446653 m!2822553))

(assert (=> b!2446653 m!2822553))

(assert (=> b!2446653 m!2822555))

(assert (=> b!2446653 m!2822557))

(assert (=> b!2446653 m!2822553))

(declare-fun m!2822603 () Bool)

(assert (=> b!2446653 m!2822603))

(assert (=> bm!150076 d!705975))

(declare-fun d!705977 () Bool)

(assert (=> d!705977 (= (isDefined!4504 (findConcatSeparation!786 (h!33918 l!9164) (generalisedConcat!290 (t!208592 l!9164)) Nil!28516 s!9460 s!9460)) (not (isEmpty!16559 (findConcatSeparation!786 (h!33918 l!9164) (generalisedConcat!290 (t!208592 l!9164)) Nil!28516 s!9460 s!9460))))))

(declare-fun bs!465423 () Bool)

(assert (= bs!465423 d!705977))

(assert (=> bs!465423 m!2822087))

(declare-fun m!2822605 () Bool)

(assert (=> bs!465423 m!2822605))

(assert (=> b!2446101 d!705977))

(declare-fun b!2446657 () Bool)

(declare-fun e!1553694 () Bool)

(assert (=> b!2446657 (= e!1553694 (matchR!3304 (generalisedConcat!290 (t!208592 l!9164)) s!9460))))

(declare-fun d!705979 () Bool)

(declare-fun e!1553696 () Bool)

(assert (=> d!705979 e!1553696))

(declare-fun res!1038317 () Bool)

(assert (=> d!705979 (=> res!1038317 e!1553696)))

(declare-fun e!1553692 () Bool)

(assert (=> d!705979 (= res!1038317 e!1553692)))

(declare-fun res!1038319 () Bool)

(assert (=> d!705979 (=> (not res!1038319) (not e!1553692))))

(declare-fun lt!879287 () Option!5678)

(assert (=> d!705979 (= res!1038319 (isDefined!4504 lt!879287))))

(declare-fun e!1553695 () Option!5678)

(assert (=> d!705979 (= lt!879287 e!1553695)))

(declare-fun c!390469 () Bool)

(assert (=> d!705979 (= c!390469 e!1553694)))

(declare-fun res!1038318 () Bool)

(assert (=> d!705979 (=> (not res!1038318) (not e!1553694))))

(assert (=> d!705979 (= res!1038318 (matchR!3304 (h!33918 l!9164) Nil!28516))))

(assert (=> d!705979 (validRegex!2895 (h!33918 l!9164))))

(assert (=> d!705979 (= (findConcatSeparation!786 (h!33918 l!9164) (generalisedConcat!290 (t!208592 l!9164)) Nil!28516 s!9460 s!9460) lt!879287)))

(declare-fun b!2446658 () Bool)

(declare-fun e!1553693 () Option!5678)

(assert (=> b!2446658 (= e!1553695 e!1553693)))

(declare-fun c!390470 () Bool)

(assert (=> b!2446658 (= c!390470 ((_ is Nil!28516) s!9460))))

(declare-fun b!2446659 () Bool)

(declare-fun res!1038316 () Bool)

(assert (=> b!2446659 (=> (not res!1038316) (not e!1553692))))

(assert (=> b!2446659 (= res!1038316 (matchR!3304 (h!33918 l!9164) (_1!16608 (get!8813 lt!879287))))))

(declare-fun b!2446660 () Bool)

(declare-fun res!1038315 () Bool)

(assert (=> b!2446660 (=> (not res!1038315) (not e!1553692))))

(assert (=> b!2446660 (= res!1038315 (matchR!3304 (generalisedConcat!290 (t!208592 l!9164)) (_2!16608 (get!8813 lt!879287))))))

(declare-fun b!2446661 () Bool)

(assert (=> b!2446661 (= e!1553693 None!5677)))

(declare-fun b!2446662 () Bool)

(declare-fun lt!879285 () Unit!41798)

(declare-fun lt!879286 () Unit!41798)

(assert (=> b!2446662 (= lt!879285 lt!879286)))

(assert (=> b!2446662 (= (++!7092 (++!7092 Nil!28516 (Cons!28516 (h!33917 s!9460) Nil!28516)) (t!208591 s!9460)) s!9460)))

(assert (=> b!2446662 (= lt!879286 (lemmaMoveElementToOtherListKeepsConcatEq!705 Nil!28516 (h!33917 s!9460) (t!208591 s!9460) s!9460))))

(assert (=> b!2446662 (= e!1553693 (findConcatSeparation!786 (h!33918 l!9164) (generalisedConcat!290 (t!208592 l!9164)) (++!7092 Nil!28516 (Cons!28516 (h!33917 s!9460) Nil!28516)) (t!208591 s!9460) s!9460))))

(declare-fun b!2446663 () Bool)

(assert (=> b!2446663 (= e!1553696 (not (isDefined!4504 lt!879287)))))

(declare-fun b!2446664 () Bool)

(assert (=> b!2446664 (= e!1553692 (= (++!7092 (_1!16608 (get!8813 lt!879287)) (_2!16608 (get!8813 lt!879287))) s!9460))))

(declare-fun b!2446665 () Bool)

(assert (=> b!2446665 (= e!1553695 (Some!5677 (tuple2!28135 Nil!28516 s!9460)))))

(assert (= (and d!705979 res!1038318) b!2446657))

(assert (= (and d!705979 c!390469) b!2446665))

(assert (= (and d!705979 (not c!390469)) b!2446658))

(assert (= (and b!2446658 c!390470) b!2446661))

(assert (= (and b!2446658 (not c!390470)) b!2446662))

(assert (= (and d!705979 res!1038319) b!2446659))

(assert (= (and b!2446659 res!1038316) b!2446660))

(assert (= (and b!2446660 res!1038315) b!2446664))

(assert (= (and d!705979 (not res!1038317)) b!2446663))

(declare-fun m!2822607 () Bool)

(assert (=> b!2446659 m!2822607))

(declare-fun m!2822609 () Bool)

(assert (=> b!2446659 m!2822609))

(declare-fun m!2822611 () Bool)

(assert (=> b!2446663 m!2822611))

(assert (=> d!705979 m!2822611))

(declare-fun m!2822613 () Bool)

(assert (=> d!705979 m!2822613))

(declare-fun m!2822615 () Bool)

(assert (=> d!705979 m!2822615))

(assert (=> b!2446657 m!2822085))

(declare-fun m!2822617 () Bool)

(assert (=> b!2446657 m!2822617))

(assert (=> b!2446660 m!2822607))

(assert (=> b!2446660 m!2822085))

(declare-fun m!2822619 () Bool)

(assert (=> b!2446660 m!2822619))

(assert (=> b!2446664 m!2822607))

(declare-fun m!2822621 () Bool)

(assert (=> b!2446664 m!2822621))

(assert (=> b!2446662 m!2822553))

(assert (=> b!2446662 m!2822553))

(assert (=> b!2446662 m!2822555))

(assert (=> b!2446662 m!2822557))

(assert (=> b!2446662 m!2822085))

(assert (=> b!2446662 m!2822553))

(declare-fun m!2822623 () Bool)

(assert (=> b!2446662 m!2822623))

(assert (=> b!2446101 d!705979))

(declare-fun bs!465424 () Bool)

(declare-fun d!705981 () Bool)

(assert (= bs!465424 (and d!705981 start!239054)))

(declare-fun lambda!92695 () Int)

(assert (=> bs!465424 (= lambda!92695 lambda!92653)))

(declare-fun bs!465425 () Bool)

(assert (= bs!465425 (and d!705981 d!705861)))

(assert (=> bs!465425 (= lambda!92695 lambda!92658)))

(declare-fun bs!465426 () Bool)

(assert (= bs!465426 (and d!705981 d!705867)))

(assert (=> bs!465426 (= lambda!92695 lambda!92659)))

(declare-fun b!2446666 () Bool)

(declare-fun e!1553699 () Regex!7189)

(assert (=> b!2446666 (= e!1553699 EmptyExpr!7189)))

(declare-fun b!2446667 () Bool)

(declare-fun e!1553700 () Bool)

(declare-fun lt!879288 () Regex!7189)

(assert (=> b!2446667 (= e!1553700 (= lt!879288 (head!5560 (t!208592 l!9164))))))

(declare-fun b!2446669 () Bool)

(assert (=> b!2446669 (= e!1553700 (isConcat!221 lt!879288))))

(declare-fun b!2446670 () Bool)

(declare-fun e!1553698 () Bool)

(declare-fun e!1553701 () Bool)

(assert (=> b!2446670 (= e!1553698 e!1553701)))

(declare-fun c!390474 () Bool)

(assert (=> b!2446670 (= c!390474 (isEmpty!16557 (t!208592 l!9164)))))

(declare-fun b!2446671 () Bool)

(declare-fun e!1553697 () Bool)

(assert (=> b!2446671 (= e!1553697 (isEmpty!16557 (t!208592 (t!208592 l!9164))))))

(declare-fun b!2446672 () Bool)

(assert (=> b!2446672 (= e!1553699 (Concat!11825 (h!33918 (t!208592 l!9164)) (generalisedConcat!290 (t!208592 (t!208592 l!9164)))))))

(declare-fun b!2446673 () Bool)

(assert (=> b!2446673 (= e!1553701 e!1553700)))

(declare-fun c!390471 () Bool)

(assert (=> b!2446673 (= c!390471 (isEmpty!16557 (tail!3833 (t!208592 l!9164))))))

(declare-fun b!2446674 () Bool)

(declare-fun e!1553702 () Regex!7189)

(assert (=> b!2446674 (= e!1553702 e!1553699)))

(declare-fun c!390472 () Bool)

(assert (=> b!2446674 (= c!390472 ((_ is Cons!28517) (t!208592 l!9164)))))

(declare-fun b!2446675 () Bool)

(assert (=> b!2446675 (= e!1553702 (h!33918 (t!208592 l!9164)))))

(assert (=> d!705981 e!1553698))

(declare-fun res!1038320 () Bool)

(assert (=> d!705981 (=> (not res!1038320) (not e!1553698))))

(assert (=> d!705981 (= res!1038320 (validRegex!2895 lt!879288))))

(assert (=> d!705981 (= lt!879288 e!1553702)))

(declare-fun c!390473 () Bool)

(assert (=> d!705981 (= c!390473 e!1553697)))

(declare-fun res!1038321 () Bool)

(assert (=> d!705981 (=> (not res!1038321) (not e!1553697))))

(assert (=> d!705981 (= res!1038321 ((_ is Cons!28517) (t!208592 l!9164)))))

(assert (=> d!705981 (forall!5823 (t!208592 l!9164) lambda!92695)))

(assert (=> d!705981 (= (generalisedConcat!290 (t!208592 l!9164)) lt!879288)))

(declare-fun b!2446668 () Bool)

(assert (=> b!2446668 (= e!1553701 (isEmptyExpr!221 lt!879288))))

(assert (= (and d!705981 res!1038321) b!2446671))

(assert (= (and d!705981 c!390473) b!2446675))

(assert (= (and d!705981 (not c!390473)) b!2446674))

(assert (= (and b!2446674 c!390472) b!2446672))

(assert (= (and b!2446674 (not c!390472)) b!2446666))

(assert (= (and d!705981 res!1038320) b!2446670))

(assert (= (and b!2446670 c!390474) b!2446668))

(assert (= (and b!2446670 (not c!390474)) b!2446673))

(assert (= (and b!2446673 c!390471) b!2446667))

(assert (= (and b!2446673 (not c!390471)) b!2446669))

(assert (=> b!2446670 m!2822159))

(declare-fun m!2822625 () Bool)

(assert (=> d!705981 m!2822625))

(declare-fun m!2822627 () Bool)

(assert (=> d!705981 m!2822627))

(declare-fun m!2822629 () Bool)

(assert (=> b!2446669 m!2822629))

(declare-fun m!2822631 () Bool)

(assert (=> b!2446671 m!2822631))

(declare-fun m!2822633 () Bool)

(assert (=> b!2446672 m!2822633))

(declare-fun m!2822635 () Bool)

(assert (=> b!2446673 m!2822635))

(assert (=> b!2446673 m!2822635))

(declare-fun m!2822637 () Bool)

(assert (=> b!2446673 m!2822637))

(declare-fun m!2822639 () Bool)

(assert (=> b!2446668 m!2822639))

(declare-fun m!2822641 () Bool)

(assert (=> b!2446667 m!2822641))

(assert (=> b!2446101 d!705981))

(declare-fun d!705983 () Bool)

(declare-fun res!1038326 () Bool)

(declare-fun e!1553707 () Bool)

(assert (=> d!705983 (=> res!1038326 e!1553707)))

(assert (=> d!705983 (= res!1038326 ((_ is Nil!28517) l!9164))))

(assert (=> d!705983 (= (forall!5823 l!9164 lambda!92653) e!1553707)))

(declare-fun b!2446680 () Bool)

(declare-fun e!1553708 () Bool)

(assert (=> b!2446680 (= e!1553707 e!1553708)))

(declare-fun res!1038327 () Bool)

(assert (=> b!2446680 (=> (not res!1038327) (not e!1553708))))

(declare-fun dynLambda!12261 (Int Regex!7189) Bool)

(assert (=> b!2446680 (= res!1038327 (dynLambda!12261 lambda!92653 (h!33918 l!9164)))))

(declare-fun b!2446681 () Bool)

(assert (=> b!2446681 (= e!1553708 (forall!5823 (t!208592 l!9164) lambda!92653))))

(assert (= (and d!705983 (not res!1038326)) b!2446680))

(assert (= (and b!2446680 res!1038327) b!2446681))

(declare-fun b_lambda!75011 () Bool)

(assert (=> (not b_lambda!75011) (not b!2446680)))

(declare-fun m!2822643 () Bool)

(assert (=> b!2446680 m!2822643))

(declare-fun m!2822645 () Bool)

(assert (=> b!2446681 m!2822645))

(assert (=> start!239054 d!705983))

(declare-fun d!705985 () Bool)

(assert (=> d!705985 (= (isEmpty!16556 s!9460) ((_ is Nil!28516) s!9460))))

(assert (=> b!2446094 d!705985))

(declare-fun d!705987 () Bool)

(assert (=> d!705987 (= (isDefined!4504 (findConcatSeparation!786 lt!879186 call!150083 Nil!28516 s!9460 s!9460)) (not (isEmpty!16559 (findConcatSeparation!786 lt!879186 call!150083 Nil!28516 s!9460 s!9460))))))

(declare-fun bs!465427 () Bool)

(assert (= bs!465427 d!705987))

(assert (=> bs!465427 m!2822121))

(declare-fun m!2822647 () Bool)

(assert (=> bs!465427 m!2822647))

(assert (=> b!2446110 d!705987))

(declare-fun b!2446682 () Bool)

(declare-fun e!1553711 () Bool)

(assert (=> b!2446682 (= e!1553711 (matchR!3304 call!150083 s!9460))))

(declare-fun d!705989 () Bool)

(declare-fun e!1553713 () Bool)

(assert (=> d!705989 e!1553713))

(declare-fun res!1038330 () Bool)

(assert (=> d!705989 (=> res!1038330 e!1553713)))

(declare-fun e!1553709 () Bool)

(assert (=> d!705989 (= res!1038330 e!1553709)))

(declare-fun res!1038332 () Bool)

(assert (=> d!705989 (=> (not res!1038332) (not e!1553709))))

(declare-fun lt!879291 () Option!5678)

(assert (=> d!705989 (= res!1038332 (isDefined!4504 lt!879291))))

(declare-fun e!1553712 () Option!5678)

(assert (=> d!705989 (= lt!879291 e!1553712)))

(declare-fun c!390475 () Bool)

(assert (=> d!705989 (= c!390475 e!1553711)))

(declare-fun res!1038331 () Bool)

(assert (=> d!705989 (=> (not res!1038331) (not e!1553711))))

(assert (=> d!705989 (= res!1038331 (matchR!3304 lt!879186 Nil!28516))))

(assert (=> d!705989 (validRegex!2895 lt!879186)))

(assert (=> d!705989 (= (findConcatSeparation!786 lt!879186 call!150083 Nil!28516 s!9460 s!9460) lt!879291)))

(declare-fun b!2446683 () Bool)

(declare-fun e!1553710 () Option!5678)

(assert (=> b!2446683 (= e!1553712 e!1553710)))

(declare-fun c!390476 () Bool)

(assert (=> b!2446683 (= c!390476 ((_ is Nil!28516) s!9460))))

(declare-fun b!2446684 () Bool)

(declare-fun res!1038329 () Bool)

(assert (=> b!2446684 (=> (not res!1038329) (not e!1553709))))

(assert (=> b!2446684 (= res!1038329 (matchR!3304 lt!879186 (_1!16608 (get!8813 lt!879291))))))

(declare-fun b!2446685 () Bool)

(declare-fun res!1038328 () Bool)

(assert (=> b!2446685 (=> (not res!1038328) (not e!1553709))))

(assert (=> b!2446685 (= res!1038328 (matchR!3304 call!150083 (_2!16608 (get!8813 lt!879291))))))

(declare-fun b!2446686 () Bool)

(assert (=> b!2446686 (= e!1553710 None!5677)))

(declare-fun b!2446687 () Bool)

(declare-fun lt!879289 () Unit!41798)

(declare-fun lt!879290 () Unit!41798)

(assert (=> b!2446687 (= lt!879289 lt!879290)))

(assert (=> b!2446687 (= (++!7092 (++!7092 Nil!28516 (Cons!28516 (h!33917 s!9460) Nil!28516)) (t!208591 s!9460)) s!9460)))

(assert (=> b!2446687 (= lt!879290 (lemmaMoveElementToOtherListKeepsConcatEq!705 Nil!28516 (h!33917 s!9460) (t!208591 s!9460) s!9460))))

(assert (=> b!2446687 (= e!1553710 (findConcatSeparation!786 lt!879186 call!150083 (++!7092 Nil!28516 (Cons!28516 (h!33917 s!9460) Nil!28516)) (t!208591 s!9460) s!9460))))

(declare-fun b!2446688 () Bool)

(assert (=> b!2446688 (= e!1553713 (not (isDefined!4504 lt!879291)))))

(declare-fun b!2446689 () Bool)

(assert (=> b!2446689 (= e!1553709 (= (++!7092 (_1!16608 (get!8813 lt!879291)) (_2!16608 (get!8813 lt!879291))) s!9460))))

(declare-fun b!2446690 () Bool)

(assert (=> b!2446690 (= e!1553712 (Some!5677 (tuple2!28135 Nil!28516 s!9460)))))

(assert (= (and d!705989 res!1038331) b!2446682))

(assert (= (and d!705989 c!390475) b!2446690))

(assert (= (and d!705989 (not c!390475)) b!2446683))

(assert (= (and b!2446683 c!390476) b!2446686))

(assert (= (and b!2446683 (not c!390476)) b!2446687))

(assert (= (and d!705989 res!1038332) b!2446684))

(assert (= (and b!2446684 res!1038329) b!2446685))

(assert (= (and b!2446685 res!1038328) b!2446689))

(assert (= (and d!705989 (not res!1038330)) b!2446688))

(declare-fun m!2822649 () Bool)

(assert (=> b!2446684 m!2822649))

(declare-fun m!2822651 () Bool)

(assert (=> b!2446684 m!2822651))

(declare-fun m!2822653 () Bool)

(assert (=> b!2446688 m!2822653))

(assert (=> d!705989 m!2822653))

(assert (=> d!705989 m!2822571))

(assert (=> d!705989 m!2822449))

(declare-fun m!2822655 () Bool)

(assert (=> b!2446682 m!2822655))

(assert (=> b!2446685 m!2822649))

(declare-fun m!2822657 () Bool)

(assert (=> b!2446685 m!2822657))

(assert (=> b!2446689 m!2822649))

(declare-fun m!2822659 () Bool)

(assert (=> b!2446689 m!2822659))

(assert (=> b!2446687 m!2822553))

(assert (=> b!2446687 m!2822553))

(assert (=> b!2446687 m!2822555))

(assert (=> b!2446687 m!2822557))

(assert (=> b!2446687 m!2822553))

(declare-fun m!2822661 () Bool)

(assert (=> b!2446687 m!2822661))

(assert (=> b!2446110 d!705989))

(declare-fun b!2446691 () Bool)

(declare-fun e!1553717 () Bool)

(assert (=> b!2446691 (= e!1553717 (matchR!3304 (derivativeStep!1857 lt!879186 (head!5562 s!9460)) (tail!3835 s!9460)))))

(declare-fun d!705991 () Bool)

(declare-fun e!1553715 () Bool)

(assert (=> d!705991 e!1553715))

(declare-fun c!390477 () Bool)

(assert (=> d!705991 (= c!390477 ((_ is EmptyExpr!7189) lt!879186))))

(declare-fun lt!879292 () Bool)

(assert (=> d!705991 (= lt!879292 e!1553717)))

(declare-fun c!390478 () Bool)

(assert (=> d!705991 (= c!390478 (isEmpty!16556 s!9460))))

(assert (=> d!705991 (validRegex!2895 lt!879186)))

(assert (=> d!705991 (= (matchR!3304 lt!879186 s!9460) lt!879292)))

(declare-fun b!2446692 () Bool)

(declare-fun e!1553719 () Bool)

(declare-fun e!1553720 () Bool)

(assert (=> b!2446692 (= e!1553719 e!1553720)))

(declare-fun res!1038334 () Bool)

(assert (=> b!2446692 (=> res!1038334 e!1553720)))

(declare-fun call!150110 () Bool)

(assert (=> b!2446692 (= res!1038334 call!150110)))

(declare-fun b!2446693 () Bool)

(declare-fun res!1038336 () Bool)

(assert (=> b!2446693 (=> res!1038336 e!1553720)))

(assert (=> b!2446693 (= res!1038336 (not (isEmpty!16556 (tail!3835 s!9460))))))

(declare-fun b!2446694 () Bool)

(declare-fun e!1553716 () Bool)

(assert (=> b!2446694 (= e!1553716 (= (head!5562 s!9460) (c!390345 lt!879186)))))

(declare-fun b!2446695 () Bool)

(declare-fun res!1038333 () Bool)

(assert (=> b!2446695 (=> (not res!1038333) (not e!1553716))))

(assert (=> b!2446695 (= res!1038333 (isEmpty!16556 (tail!3835 s!9460)))))

(declare-fun b!2446696 () Bool)

(declare-fun res!1038338 () Bool)

(assert (=> b!2446696 (=> (not res!1038338) (not e!1553716))))

(assert (=> b!2446696 (= res!1038338 (not call!150110))))

(declare-fun b!2446697 () Bool)

(declare-fun res!1038335 () Bool)

(declare-fun e!1553718 () Bool)

(assert (=> b!2446697 (=> res!1038335 e!1553718)))

(assert (=> b!2446697 (= res!1038335 e!1553716)))

(declare-fun res!1038340 () Bool)

(assert (=> b!2446697 (=> (not res!1038340) (not e!1553716))))

(assert (=> b!2446697 (= res!1038340 lt!879292)))

(declare-fun b!2446698 () Bool)

(assert (=> b!2446698 (= e!1553715 (= lt!879292 call!150110))))

(declare-fun bm!150105 () Bool)

(assert (=> bm!150105 (= call!150110 (isEmpty!16556 s!9460))))

(declare-fun b!2446699 () Bool)

(declare-fun e!1553714 () Bool)

(assert (=> b!2446699 (= e!1553714 (not lt!879292))))

(declare-fun b!2446700 () Bool)

(declare-fun res!1038337 () Bool)

(assert (=> b!2446700 (=> res!1038337 e!1553718)))

(assert (=> b!2446700 (= res!1038337 (not ((_ is ElementMatch!7189) lt!879186)))))

(assert (=> b!2446700 (= e!1553714 e!1553718)))

(declare-fun b!2446701 () Bool)

(assert (=> b!2446701 (= e!1553717 (nullable!2203 lt!879186))))

(declare-fun b!2446702 () Bool)

(assert (=> b!2446702 (= e!1553720 (not (= (head!5562 s!9460) (c!390345 lt!879186))))))

(declare-fun b!2446703 () Bool)

(assert (=> b!2446703 (= e!1553715 e!1553714)))

(declare-fun c!390479 () Bool)

(assert (=> b!2446703 (= c!390479 ((_ is EmptyLang!7189) lt!879186))))

(declare-fun b!2446704 () Bool)

(assert (=> b!2446704 (= e!1553718 e!1553719)))

(declare-fun res!1038339 () Bool)

(assert (=> b!2446704 (=> (not res!1038339) (not e!1553719))))

(assert (=> b!2446704 (= res!1038339 (not lt!879292))))

(assert (= (and d!705991 c!390478) b!2446701))

(assert (= (and d!705991 (not c!390478)) b!2446691))

(assert (= (and d!705991 c!390477) b!2446698))

(assert (= (and d!705991 (not c!390477)) b!2446703))

(assert (= (and b!2446703 c!390479) b!2446699))

(assert (= (and b!2446703 (not c!390479)) b!2446700))

(assert (= (and b!2446700 (not res!1038337)) b!2446697))

(assert (= (and b!2446697 res!1038340) b!2446696))

(assert (= (and b!2446696 res!1038338) b!2446695))

(assert (= (and b!2446695 res!1038333) b!2446694))

(assert (= (and b!2446697 (not res!1038335)) b!2446704))

(assert (= (and b!2446704 res!1038339) b!2446692))

(assert (= (and b!2446692 (not res!1038334)) b!2446693))

(assert (= (and b!2446693 (not res!1038336)) b!2446702))

(assert (= (or b!2446698 b!2446692 b!2446696) bm!150105))

(assert (=> bm!150105 m!2822117))

(assert (=> b!2446693 m!2822375))

(assert (=> b!2446693 m!2822375))

(assert (=> b!2446693 m!2822377))

(declare-fun m!2822663 () Bool)

(assert (=> b!2446701 m!2822663))

(assert (=> b!2446702 m!2822381))

(assert (=> d!705991 m!2822117))

(assert (=> d!705991 m!2822449))

(assert (=> b!2446691 m!2822381))

(assert (=> b!2446691 m!2822381))

(declare-fun m!2822665 () Bool)

(assert (=> b!2446691 m!2822665))

(assert (=> b!2446691 m!2822375))

(assert (=> b!2446691 m!2822665))

(assert (=> b!2446691 m!2822375))

(declare-fun m!2822667 () Bool)

(assert (=> b!2446691 m!2822667))

(assert (=> b!2446695 m!2822375))

(assert (=> b!2446695 m!2822375))

(assert (=> b!2446695 m!2822377))

(assert (=> b!2446694 m!2822381))

(assert (=> b!2446110 d!705991))

(declare-fun b!2446715 () Bool)

(declare-fun e!1553723 () Bool)

(assert (=> b!2446715 (= e!1553723 tp_is_empty!11791)))

(declare-fun b!2446718 () Bool)

(declare-fun tp!777155 () Bool)

(declare-fun tp!777159 () Bool)

(assert (=> b!2446718 (= e!1553723 (and tp!777155 tp!777159))))

(assert (=> b!2446096 (= tp!777094 e!1553723)))

(declare-fun b!2446716 () Bool)

(declare-fun tp!777157 () Bool)

(declare-fun tp!777158 () Bool)

(assert (=> b!2446716 (= e!1553723 (and tp!777157 tp!777158))))

(declare-fun b!2446717 () Bool)

(declare-fun tp!777156 () Bool)

(assert (=> b!2446717 (= e!1553723 tp!777156)))

(assert (= (and b!2446096 ((_ is ElementMatch!7189) (regOne!14891 r!13927))) b!2446715))

(assert (= (and b!2446096 ((_ is Concat!11825) (regOne!14891 r!13927))) b!2446716))

(assert (= (and b!2446096 ((_ is Star!7189) (regOne!14891 r!13927))) b!2446717))

(assert (= (and b!2446096 ((_ is Union!7189) (regOne!14891 r!13927))) b!2446718))

(declare-fun b!2446719 () Bool)

(declare-fun e!1553724 () Bool)

(assert (=> b!2446719 (= e!1553724 tp_is_empty!11791)))

(declare-fun b!2446722 () Bool)

(declare-fun tp!777160 () Bool)

(declare-fun tp!777164 () Bool)

(assert (=> b!2446722 (= e!1553724 (and tp!777160 tp!777164))))

(assert (=> b!2446096 (= tp!777093 e!1553724)))

(declare-fun b!2446720 () Bool)

(declare-fun tp!777162 () Bool)

(declare-fun tp!777163 () Bool)

(assert (=> b!2446720 (= e!1553724 (and tp!777162 tp!777163))))

(declare-fun b!2446721 () Bool)

(declare-fun tp!777161 () Bool)

(assert (=> b!2446721 (= e!1553724 tp!777161)))

(assert (= (and b!2446096 ((_ is ElementMatch!7189) (regTwo!14891 r!13927))) b!2446719))

(assert (= (and b!2446096 ((_ is Concat!11825) (regTwo!14891 r!13927))) b!2446720))

(assert (= (and b!2446096 ((_ is Star!7189) (regTwo!14891 r!13927))) b!2446721))

(assert (= (and b!2446096 ((_ is Union!7189) (regTwo!14891 r!13927))) b!2446722))

(declare-fun b!2446723 () Bool)

(declare-fun e!1553725 () Bool)

(assert (=> b!2446723 (= e!1553725 tp_is_empty!11791)))

(declare-fun b!2446726 () Bool)

(declare-fun tp!777165 () Bool)

(declare-fun tp!777169 () Bool)

(assert (=> b!2446726 (= e!1553725 (and tp!777165 tp!777169))))

(assert (=> b!2446107 (= tp!777092 e!1553725)))

(declare-fun b!2446724 () Bool)

(declare-fun tp!777167 () Bool)

(declare-fun tp!777168 () Bool)

(assert (=> b!2446724 (= e!1553725 (and tp!777167 tp!777168))))

(declare-fun b!2446725 () Bool)

(declare-fun tp!777166 () Bool)

(assert (=> b!2446725 (= e!1553725 tp!777166)))

(assert (= (and b!2446107 ((_ is ElementMatch!7189) (regOne!14890 r!13927))) b!2446723))

(assert (= (and b!2446107 ((_ is Concat!11825) (regOne!14890 r!13927))) b!2446724))

(assert (= (and b!2446107 ((_ is Star!7189) (regOne!14890 r!13927))) b!2446725))

(assert (= (and b!2446107 ((_ is Union!7189) (regOne!14890 r!13927))) b!2446726))

(declare-fun b!2446727 () Bool)

(declare-fun e!1553726 () Bool)

(assert (=> b!2446727 (= e!1553726 tp_is_empty!11791)))

(declare-fun b!2446730 () Bool)

(declare-fun tp!777170 () Bool)

(declare-fun tp!777174 () Bool)

(assert (=> b!2446730 (= e!1553726 (and tp!777170 tp!777174))))

(assert (=> b!2446107 (= tp!777088 e!1553726)))

(declare-fun b!2446728 () Bool)

(declare-fun tp!777172 () Bool)

(declare-fun tp!777173 () Bool)

(assert (=> b!2446728 (= e!1553726 (and tp!777172 tp!777173))))

(declare-fun b!2446729 () Bool)

(declare-fun tp!777171 () Bool)

(assert (=> b!2446729 (= e!1553726 tp!777171)))

(assert (= (and b!2446107 ((_ is ElementMatch!7189) (regTwo!14890 r!13927))) b!2446727))

(assert (= (and b!2446107 ((_ is Concat!11825) (regTwo!14890 r!13927))) b!2446728))

(assert (= (and b!2446107 ((_ is Star!7189) (regTwo!14890 r!13927))) b!2446729))

(assert (= (and b!2446107 ((_ is Union!7189) (regTwo!14890 r!13927))) b!2446730))

(declare-fun b!2446731 () Bool)

(declare-fun e!1553727 () Bool)

(assert (=> b!2446731 (= e!1553727 tp_is_empty!11791)))

(declare-fun b!2446734 () Bool)

(declare-fun tp!777175 () Bool)

(declare-fun tp!777179 () Bool)

(assert (=> b!2446734 (= e!1553727 (and tp!777175 tp!777179))))

(assert (=> b!2446090 (= tp!777095 e!1553727)))

(declare-fun b!2446732 () Bool)

(declare-fun tp!777177 () Bool)

(declare-fun tp!777178 () Bool)

(assert (=> b!2446732 (= e!1553727 (and tp!777177 tp!777178))))

(declare-fun b!2446733 () Bool)

(declare-fun tp!777176 () Bool)

(assert (=> b!2446733 (= e!1553727 tp!777176)))

(assert (= (and b!2446090 ((_ is ElementMatch!7189) (h!33918 l!9164))) b!2446731))

(assert (= (and b!2446090 ((_ is Concat!11825) (h!33918 l!9164))) b!2446732))

(assert (= (and b!2446090 ((_ is Star!7189) (h!33918 l!9164))) b!2446733))

(assert (= (and b!2446090 ((_ is Union!7189) (h!33918 l!9164))) b!2446734))

(declare-fun b!2446739 () Bool)

(declare-fun e!1553730 () Bool)

(declare-fun tp!777184 () Bool)

(declare-fun tp!777185 () Bool)

(assert (=> b!2446739 (= e!1553730 (and tp!777184 tp!777185))))

(assert (=> b!2446090 (= tp!777090 e!1553730)))

(assert (= (and b!2446090 ((_ is Cons!28517) (t!208592 l!9164))) b!2446739))

(declare-fun b!2446744 () Bool)

(declare-fun e!1553733 () Bool)

(declare-fun tp!777188 () Bool)

(assert (=> b!2446744 (= e!1553733 (and tp_is_empty!11791 tp!777188))))

(assert (=> b!2446097 (= tp!777089 e!1553733)))

(assert (= (and b!2446097 ((_ is Cons!28516) (t!208591 s!9460))) b!2446744))

(declare-fun b!2446745 () Bool)

(declare-fun e!1553734 () Bool)

(assert (=> b!2446745 (= e!1553734 tp_is_empty!11791)))

(declare-fun b!2446748 () Bool)

(declare-fun tp!777189 () Bool)

(declare-fun tp!777193 () Bool)

(assert (=> b!2446748 (= e!1553734 (and tp!777189 tp!777193))))

(assert (=> b!2446087 (= tp!777091 e!1553734)))

(declare-fun b!2446746 () Bool)

(declare-fun tp!777191 () Bool)

(declare-fun tp!777192 () Bool)

(assert (=> b!2446746 (= e!1553734 (and tp!777191 tp!777192))))

(declare-fun b!2446747 () Bool)

(declare-fun tp!777190 () Bool)

(assert (=> b!2446747 (= e!1553734 tp!777190)))

(assert (= (and b!2446087 ((_ is ElementMatch!7189) (reg!7518 r!13927))) b!2446745))

(assert (= (and b!2446087 ((_ is Concat!11825) (reg!7518 r!13927))) b!2446746))

(assert (= (and b!2446087 ((_ is Star!7189) (reg!7518 r!13927))) b!2446747))

(assert (= (and b!2446087 ((_ is Union!7189) (reg!7518 r!13927))) b!2446748))

(declare-fun b_lambda!75013 () Bool)

(assert (= b_lambda!75011 (or start!239054 b_lambda!75013)))

(declare-fun bs!465428 () Bool)

(declare-fun d!705993 () Bool)

(assert (= bs!465428 (and d!705993 start!239054)))

(assert (=> bs!465428 (= (dynLambda!12261 lambda!92653 (h!33918 l!9164)) (validRegex!2895 (h!33918 l!9164)))))

(assert (=> bs!465428 m!2822615))

(assert (=> b!2446680 d!705993))

(check-sat (not d!705935) (not b!2446722) (not b!2446747) (not d!705871) (not d!705867) (not d!705941) (not b!2446732) (not b!2446695) (not b!2446733) (not b!2446662) (not b!2446725) (not b!2446466) (not b!2446514) (not bm!150105) (not d!705963) (not b!2446521) (not b!2446632) (not b!2446681) (not b!2446653) (not b!2446648) (not b!2446155) (not b!2446693) (not b!2446633) (not b!2446691) (not b!2446642) (not b!2446160) tp_is_empty!11791 (not b!2446630) (not b!2446637) (not b!2446724) (not b!2446651) (not bm!150090) (not d!705987) (not b!2446262) (not b!2446694) (not b!2446157) (not b!2446721) (not b!2446689) (not d!705965) (not b!2446720) (not b!2446178) (not d!705979) (not d!705991) (not bm!150104) (not b!2446465) (not b!2446687) (not b!2446716) (not b!2446513) (not b!2446702) (not b!2446717) (not b!2446746) (not b!2446174) (not b!2446685) (not b!2446264) (not b!2446154) (not b!2446176) (not b!2446670) (not b!2446265) (not d!705861) (not b!2446173) (not b!2446463) (not b!2446728) (not b!2446667) (not b!2446669) (not bs!465428) (not b!2446645) (not b!2446663) (not b!2446682) (not b!2446158) (not d!705981) (not b!2446726) (not b!2446510) (not d!705915) (not b!2446636) (not b!2446273) (not b!2446673) (not b!2446455) (not d!705953) (not d!705879) (not d!705955) (not b!2446509) (not b!2446729) (not d!705969) (not b!2446639) (not bm!150101) (not b!2446650) (not b!2446272) (not b!2446179) (not b!2446266) (not d!705989) (not b!2446668) (not b!2446342) (not d!705913) (not d!705961) (not b!2446177) (not b!2446730) (not d!705977) (not b!2446671) (not d!705875) (not b!2446635) (not b!2446159) (not bm!150102) (not b!2446654) (not b!2446659) (not b!2446474) (not b!2446655) (not b!2446520) (not b!2446718) (not b!2446156) (not d!705971) (not b!2446672) (not b_lambda!75013) (not b!2446664) (not d!705975) (not b!2446467) (not b!2446688) (not b!2446734) (not b!2446451) (not b!2446341) (not b!2446701) (not b!2446512) (not b!2446657) (not b!2446473) (not bm!150100) (not d!705929) (not b!2446660) (not b!2446646) (not b!2446739) (not d!705959) (not b!2446748) (not b!2446744) (not b!2446175) (not b!2446641) (not b!2446684) (not b!2446644) (not d!705951))
(check-sat)
