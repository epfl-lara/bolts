; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!232794 () Bool)

(assert start!232794)

(declare-fun b!2372120 () Bool)

(assert (=> b!2372120 true))

(assert (=> b!2372120 true))

(declare-fun lambda!87886 () Int)

(declare-fun lambda!87885 () Int)

(assert (=> b!2372120 (not (= lambda!87886 lambda!87885))))

(assert (=> b!2372120 true))

(assert (=> b!2372120 true))

(declare-fun b!2372115 () Bool)

(declare-fun e!1513875 () Bool)

(declare-datatypes ((C!14058 0))(
  ( (C!14059 (val!8271 Int)) )
))
(declare-datatypes ((Regex!6950 0))(
  ( (ElementMatch!6950 (c!377040 C!14058)) (Concat!11586 (regOne!14412 Regex!6950) (regTwo!14412 Regex!6950)) (EmptyExpr!6950) (Star!6950 (reg!7279 Regex!6950)) (EmptyLang!6950) (Union!6950 (regOne!14413 Regex!6950) (regTwo!14413 Regex!6950)) )
))
(declare-fun lt!866338 () Regex!6950)

(declare-datatypes ((List!28138 0))(
  ( (Nil!28040) (Cons!28040 (h!33441 C!14058) (t!208115 List!28138)) )
))
(declare-fun s!9460 () List!28138)

(declare-fun matchR!3067 (Regex!6950 List!28138) Bool)

(assert (=> b!2372115 (= e!1513875 (matchR!3067 lt!866338 s!9460))))

(declare-fun b!2372116 () Bool)

(declare-fun e!1513867 () Bool)

(declare-fun tp!758128 () Bool)

(declare-fun tp!758126 () Bool)

(assert (=> b!2372116 (= e!1513867 (and tp!758128 tp!758126))))

(declare-fun b!2372117 () Bool)

(declare-fun tp_is_empty!11313 () Bool)

(assert (=> b!2372117 (= e!1513867 tp_is_empty!11313)))

(declare-fun b!2372118 () Bool)

(declare-fun tp!758124 () Bool)

(declare-fun tp!758129 () Bool)

(assert (=> b!2372118 (= e!1513867 (and tp!758124 tp!758129))))

(declare-fun b!2372119 () Bool)

(declare-fun e!1513869 () Bool)

(declare-fun e!1513870 () Bool)

(assert (=> b!2372119 (= e!1513869 (not e!1513870))))

(declare-fun res!1006946 () Bool)

(assert (=> b!2372119 (=> res!1006946 e!1513870)))

(declare-fun r!13927 () Regex!6950)

(assert (=> b!2372119 (= res!1006946 (not (is-Concat!11586 r!13927)))))

(declare-fun lt!866336 () Bool)

(declare-fun lt!866345 () Bool)

(assert (=> b!2372119 (= lt!866336 lt!866345)))

(declare-fun matchRSpec!799 (Regex!6950 List!28138) Bool)

(assert (=> b!2372119 (= lt!866345 (matchRSpec!799 r!13927 s!9460))))

(assert (=> b!2372119 (= lt!866336 (matchR!3067 r!13927 s!9460))))

(declare-datatypes ((Unit!40935 0))(
  ( (Unit!40936) )
))
(declare-fun lt!866339 () Unit!40935)

(declare-fun mainMatchTheorem!799 (Regex!6950 List!28138) Unit!40935)

(assert (=> b!2372119 (= lt!866339 (mainMatchTheorem!799 r!13927 s!9460))))

(declare-fun e!1513871 () Bool)

(assert (=> b!2372120 (= e!1513870 e!1513871)))

(declare-fun res!1006949 () Bool)

(assert (=> b!2372120 (=> res!1006949 e!1513871)))

(declare-fun lt!866343 () Bool)

(assert (=> b!2372120 (= res!1006949 (not (= lt!866345 lt!866343)))))

(declare-fun Exists!1012 (Int) Bool)

(assert (=> b!2372120 (= (Exists!1012 lambda!87885) (Exists!1012 lambda!87886))))

(declare-fun lt!866335 () Unit!40935)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!351 (Regex!6950 Regex!6950 List!28138) Unit!40935)

(assert (=> b!2372120 (= lt!866335 (lemmaExistCutMatchRandMatchRSpecEquivalent!351 (regOne!14412 r!13927) (regTwo!14412 r!13927) s!9460))))

(assert (=> b!2372120 (= lt!866343 (Exists!1012 lambda!87885))))

(declare-datatypes ((tuple2!27764 0))(
  ( (tuple2!27765 (_1!16423 List!28138) (_2!16423 List!28138)) )
))
(declare-datatypes ((Option!5493 0))(
  ( (None!5492) (Some!5492 (v!30900 tuple2!27764)) )
))
(declare-fun isDefined!4321 (Option!5493) Bool)

(declare-fun findConcatSeparation!601 (Regex!6950 Regex!6950 List!28138 List!28138 List!28138) Option!5493)

(assert (=> b!2372120 (= lt!866343 (isDefined!4321 (findConcatSeparation!601 (regOne!14412 r!13927) (regTwo!14412 r!13927) Nil!28040 s!9460 s!9460)))))

(declare-fun lt!866337 () Unit!40935)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!601 (Regex!6950 Regex!6950 List!28138) Unit!40935)

(assert (=> b!2372120 (= lt!866337 (lemmaFindConcatSeparationEquivalentToExists!601 (regOne!14412 r!13927) (regTwo!14412 r!13927) s!9460))))

(declare-fun b!2372121 () Bool)

(declare-fun res!1006947 () Bool)

(declare-fun e!1513874 () Bool)

(assert (=> b!2372121 (=> res!1006947 e!1513874)))

(declare-datatypes ((List!28139 0))(
  ( (Nil!28041) (Cons!28041 (h!33442 Regex!6950) (t!208116 List!28139)) )
))
(declare-fun lt!866340 () List!28139)

(declare-fun generalisedConcat!51 (List!28139) Regex!6950)

(assert (=> b!2372121 (= res!1006947 (not (= (generalisedConcat!51 lt!866340) EmptyExpr!6950)))))

(declare-fun b!2372122 () Bool)

(declare-fun e!1513868 () Bool)

(declare-fun tp!758131 () Bool)

(declare-fun tp!758130 () Bool)

(assert (=> b!2372122 (= e!1513868 (and tp!758131 tp!758130))))

(declare-fun res!1006950 () Bool)

(assert (=> start!232794 (=> (not res!1006950) (not e!1513869))))

(declare-fun l!9164 () List!28139)

(declare-fun lambda!87884 () Int)

(declare-fun forall!5584 (List!28139 Int) Bool)

(assert (=> start!232794 (= res!1006950 (forall!5584 l!9164 lambda!87884))))

(assert (=> start!232794 e!1513869))

(assert (=> start!232794 e!1513868))

(assert (=> start!232794 e!1513867))

(declare-fun e!1513872 () Bool)

(assert (=> start!232794 e!1513872))

(declare-fun b!2372123 () Bool)

(declare-fun e!1513873 () Bool)

(declare-fun lt!866344 () Regex!6950)

(declare-fun validRegex!2677 (Regex!6950) Bool)

(assert (=> b!2372123 (= e!1513873 (validRegex!2677 lt!866344))))

(assert (=> b!2372123 (isDefined!4321 (findConcatSeparation!601 lt!866344 EmptyExpr!6950 Nil!28040 s!9460 s!9460))))

(declare-fun lt!866342 () Unit!40935)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!5 (Regex!6950 Regex!6950 List!28138) Unit!40935)

(assert (=> b!2372123 (= lt!866342 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!5 lt!866344 EmptyExpr!6950 s!9460))))

(assert (=> b!2372123 e!1513875))

(declare-fun res!1006953 () Bool)

(assert (=> b!2372123 (=> (not res!1006953) (not e!1513875))))

(declare-fun ++!6910 (List!28138 List!28138) List!28138)

(assert (=> b!2372123 (= res!1006953 (matchR!3067 lt!866338 (++!6910 s!9460 Nil!28040)))))

(assert (=> b!2372123 (= lt!866338 (Concat!11586 lt!866344 EmptyExpr!6950))))

(declare-fun lt!866341 () Unit!40935)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!23 (Regex!6950 Regex!6950 List!28138 List!28138) Unit!40935)

(assert (=> b!2372123 (= lt!866341 (lemmaTwoRegexMatchThenConcatMatchesConcatString!23 lt!866344 EmptyExpr!6950 s!9460 Nil!28040))))

(declare-fun b!2372124 () Bool)

(assert (=> b!2372124 (= e!1513874 e!1513873)))

(declare-fun res!1006948 () Bool)

(assert (=> b!2372124 (=> res!1006948 e!1513873)))

(assert (=> b!2372124 (= res!1006948 (not (matchR!3067 lt!866344 s!9460)))))

(declare-fun head!5139 (List!28139) Regex!6950)

(assert (=> b!2372124 (= lt!866344 (head!5139 l!9164))))

(declare-fun b!2372125 () Bool)

(declare-fun tp!758125 () Bool)

(assert (=> b!2372125 (= e!1513867 tp!758125)))

(declare-fun b!2372126 () Bool)

(assert (=> b!2372126 (= e!1513871 e!1513874)))

(declare-fun res!1006945 () Bool)

(assert (=> b!2372126 (=> res!1006945 e!1513874)))

(declare-fun isEmpty!15973 (List!28139) Bool)

(assert (=> b!2372126 (= res!1006945 (not (isEmpty!15973 lt!866340)))))

(declare-fun tail!3409 (List!28139) List!28139)

(assert (=> b!2372126 (= lt!866340 (tail!3409 l!9164))))

(declare-fun b!2372127 () Bool)

(declare-fun res!1006951 () Bool)

(assert (=> b!2372127 (=> (not res!1006951) (not e!1513869))))

(assert (=> b!2372127 (= res!1006951 (= r!13927 (generalisedConcat!51 l!9164)))))

(declare-fun b!2372128 () Bool)

(declare-fun res!1006952 () Bool)

(assert (=> b!2372128 (=> res!1006952 e!1513871)))

(assert (=> b!2372128 (= res!1006952 (isEmpty!15973 l!9164))))

(declare-fun b!2372129 () Bool)

(declare-fun tp!758127 () Bool)

(assert (=> b!2372129 (= e!1513872 (and tp_is_empty!11313 tp!758127))))

(assert (= (and start!232794 res!1006950) b!2372127))

(assert (= (and b!2372127 res!1006951) b!2372119))

(assert (= (and b!2372119 (not res!1006946)) b!2372120))

(assert (= (and b!2372120 (not res!1006949)) b!2372128))

(assert (= (and b!2372128 (not res!1006952)) b!2372126))

(assert (= (and b!2372126 (not res!1006945)) b!2372121))

(assert (= (and b!2372121 (not res!1006947)) b!2372124))

(assert (= (and b!2372124 (not res!1006948)) b!2372123))

(assert (= (and b!2372123 res!1006953) b!2372115))

(assert (= (and start!232794 (is-Cons!28041 l!9164)) b!2372122))

(assert (= (and start!232794 (is-ElementMatch!6950 r!13927)) b!2372117))

(assert (= (and start!232794 (is-Concat!11586 r!13927)) b!2372116))

(assert (= (and start!232794 (is-Star!6950 r!13927)) b!2372125))

(assert (= (and start!232794 (is-Union!6950 r!13927)) b!2372118))

(assert (= (and start!232794 (is-Cons!28040 s!9460)) b!2372129))

(declare-fun m!2779499 () Bool)

(assert (=> b!2372127 m!2779499))

(declare-fun m!2779501 () Bool)

(assert (=> b!2372115 m!2779501))

(declare-fun m!2779503 () Bool)

(assert (=> b!2372124 m!2779503))

(declare-fun m!2779505 () Bool)

(assert (=> b!2372124 m!2779505))

(declare-fun m!2779507 () Bool)

(assert (=> b!2372121 m!2779507))

(declare-fun m!2779509 () Bool)

(assert (=> b!2372128 m!2779509))

(declare-fun m!2779511 () Bool)

(assert (=> b!2372119 m!2779511))

(declare-fun m!2779513 () Bool)

(assert (=> b!2372119 m!2779513))

(declare-fun m!2779515 () Bool)

(assert (=> b!2372119 m!2779515))

(declare-fun m!2779517 () Bool)

(assert (=> start!232794 m!2779517))

(declare-fun m!2779519 () Bool)

(assert (=> b!2372126 m!2779519))

(declare-fun m!2779521 () Bool)

(assert (=> b!2372126 m!2779521))

(declare-fun m!2779523 () Bool)

(assert (=> b!2372123 m!2779523))

(declare-fun m!2779525 () Bool)

(assert (=> b!2372123 m!2779525))

(declare-fun m!2779527 () Bool)

(assert (=> b!2372123 m!2779527))

(declare-fun m!2779529 () Bool)

(assert (=> b!2372123 m!2779529))

(declare-fun m!2779531 () Bool)

(assert (=> b!2372123 m!2779531))

(assert (=> b!2372123 m!2779523))

(declare-fun m!2779533 () Bool)

(assert (=> b!2372123 m!2779533))

(assert (=> b!2372123 m!2779531))

(declare-fun m!2779535 () Bool)

(assert (=> b!2372123 m!2779535))

(declare-fun m!2779537 () Bool)

(assert (=> b!2372120 m!2779537))

(declare-fun m!2779539 () Bool)

(assert (=> b!2372120 m!2779539))

(declare-fun m!2779541 () Bool)

(assert (=> b!2372120 m!2779541))

(declare-fun m!2779543 () Bool)

(assert (=> b!2372120 m!2779543))

(assert (=> b!2372120 m!2779537))

(declare-fun m!2779545 () Bool)

(assert (=> b!2372120 m!2779545))

(declare-fun m!2779547 () Bool)

(assert (=> b!2372120 m!2779547))

(assert (=> b!2372120 m!2779545))

(push 1)

(assert (not b!2372123))

(assert tp_is_empty!11313)

(assert (not b!2372127))

(assert (not b!2372122))

(assert (not b!2372115))

(assert (not b!2372121))

(assert (not b!2372126))

(assert (not b!2372128))

(assert (not b!2372120))

(assert (not b!2372125))

(assert (not b!2372116))

(assert (not b!2372118))

(assert (not b!2372119))

(assert (not start!232794))

(assert (not b!2372124))

(assert (not b!2372129))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!461317 () Bool)

(declare-fun d!695512 () Bool)

(assert (= bs!461317 (and d!695512 start!232794)))

(declare-fun lambda!87900 () Int)

(assert (=> bs!461317 (= lambda!87900 lambda!87884)))

(declare-fun b!2372215 () Bool)

(declare-fun e!1513925 () Bool)

(declare-fun lt!866381 () Regex!6950)

(declare-fun isConcat!28 (Regex!6950) Bool)

(assert (=> b!2372215 (= e!1513925 (isConcat!28 lt!866381))))

(declare-fun e!1513923 () Bool)

(assert (=> d!695512 e!1513923))

(declare-fun res!1006998 () Bool)

(assert (=> d!695512 (=> (not res!1006998) (not e!1513923))))

(assert (=> d!695512 (= res!1006998 (validRegex!2677 lt!866381))))

(declare-fun e!1513921 () Regex!6950)

(assert (=> d!695512 (= lt!866381 e!1513921)))

(declare-fun c!377051 () Bool)

(declare-fun e!1513924 () Bool)

(assert (=> d!695512 (= c!377051 e!1513924)))

(declare-fun res!1006997 () Bool)

(assert (=> d!695512 (=> (not res!1006997) (not e!1513924))))

(assert (=> d!695512 (= res!1006997 (is-Cons!28041 l!9164))))

(assert (=> d!695512 (forall!5584 l!9164 lambda!87900)))

(assert (=> d!695512 (= (generalisedConcat!51 l!9164) lt!866381)))

(declare-fun b!2372216 () Bool)

(declare-fun e!1513922 () Bool)

(declare-fun isEmptyExpr!28 (Regex!6950) Bool)

(assert (=> b!2372216 (= e!1513922 (isEmptyExpr!28 lt!866381))))

(declare-fun b!2372217 () Bool)

(declare-fun e!1513926 () Regex!6950)

(assert (=> b!2372217 (= e!1513926 (Concat!11586 (h!33442 l!9164) (generalisedConcat!51 (t!208116 l!9164))))))

(declare-fun b!2372218 () Bool)

(assert (=> b!2372218 (= e!1513921 e!1513926)))

(declare-fun c!377050 () Bool)

(assert (=> b!2372218 (= c!377050 (is-Cons!28041 l!9164))))

(declare-fun b!2372219 () Bool)

(assert (=> b!2372219 (= e!1513925 (= lt!866381 (head!5139 l!9164)))))

(declare-fun b!2372220 () Bool)

(assert (=> b!2372220 (= e!1513921 (h!33442 l!9164))))

(declare-fun b!2372221 () Bool)

(assert (=> b!2372221 (= e!1513926 EmptyExpr!6950)))

(declare-fun b!2372222 () Bool)

(assert (=> b!2372222 (= e!1513923 e!1513922)))

(declare-fun c!377052 () Bool)

(assert (=> b!2372222 (= c!377052 (isEmpty!15973 l!9164))))

(declare-fun b!2372223 () Bool)

(assert (=> b!2372223 (= e!1513922 e!1513925)))

(declare-fun c!377053 () Bool)

(assert (=> b!2372223 (= c!377053 (isEmpty!15973 (tail!3409 l!9164)))))

(declare-fun b!2372224 () Bool)

(assert (=> b!2372224 (= e!1513924 (isEmpty!15973 (t!208116 l!9164)))))

(assert (= (and d!695512 res!1006997) b!2372224))

(assert (= (and d!695512 c!377051) b!2372220))

(assert (= (and d!695512 (not c!377051)) b!2372218))

(assert (= (and b!2372218 c!377050) b!2372217))

(assert (= (and b!2372218 (not c!377050)) b!2372221))

(assert (= (and d!695512 res!1006998) b!2372222))

(assert (= (and b!2372222 c!377052) b!2372216))

(assert (= (and b!2372222 (not c!377052)) b!2372223))

(assert (= (and b!2372223 c!377053) b!2372219))

(assert (= (and b!2372223 (not c!377053)) b!2372215))

(declare-fun m!2779599 () Bool)

(assert (=> b!2372224 m!2779599))

(declare-fun m!2779601 () Bool)

(assert (=> d!695512 m!2779601))

(declare-fun m!2779603 () Bool)

(assert (=> d!695512 m!2779603))

(assert (=> b!2372223 m!2779521))

(assert (=> b!2372223 m!2779521))

(declare-fun m!2779605 () Bool)

(assert (=> b!2372223 m!2779605))

(assert (=> b!2372219 m!2779505))

(declare-fun m!2779607 () Bool)

(assert (=> b!2372216 m!2779607))

(declare-fun m!2779609 () Bool)

(assert (=> b!2372215 m!2779609))

(declare-fun m!2779611 () Bool)

(assert (=> b!2372217 m!2779611))

(assert (=> b!2372222 m!2779509))

(assert (=> b!2372127 d!695512))

(declare-fun d!695514 () Bool)

(assert (=> d!695514 (= (isEmpty!15973 l!9164) (is-Nil!28041 l!9164))))

(assert (=> b!2372128 d!695514))

(declare-fun d!695516 () Bool)

(declare-fun isEmpty!15975 (Option!5493) Bool)

(assert (=> d!695516 (= (isDefined!4321 (findConcatSeparation!601 lt!866344 EmptyExpr!6950 Nil!28040 s!9460 s!9460)) (not (isEmpty!15975 (findConcatSeparation!601 lt!866344 EmptyExpr!6950 Nil!28040 s!9460 s!9460))))))

(declare-fun bs!461318 () Bool)

(assert (= bs!461318 d!695516))

(assert (=> bs!461318 m!2779531))

(declare-fun m!2779613 () Bool)

(assert (=> bs!461318 m!2779613))

(assert (=> b!2372123 d!695516))

(declare-fun b!2372235 () Bool)

(declare-fun res!1007003 () Bool)

(declare-fun e!1513932 () Bool)

(assert (=> b!2372235 (=> (not res!1007003) (not e!1513932))))

(declare-fun lt!866384 () List!28138)

(declare-fun size!22150 (List!28138) Int)

(assert (=> b!2372235 (= res!1007003 (= (size!22150 lt!866384) (+ (size!22150 s!9460) (size!22150 Nil!28040))))))

(declare-fun b!2372233 () Bool)

(declare-fun e!1513931 () List!28138)

(assert (=> b!2372233 (= e!1513931 Nil!28040)))

(declare-fun d!695518 () Bool)

(assert (=> d!695518 e!1513932))

(declare-fun res!1007004 () Bool)

(assert (=> d!695518 (=> (not res!1007004) (not e!1513932))))

(declare-fun content!3812 (List!28138) (Set C!14058))

(assert (=> d!695518 (= res!1007004 (= (content!3812 lt!866384) (set.union (content!3812 s!9460) (content!3812 Nil!28040))))))

(assert (=> d!695518 (= lt!866384 e!1513931)))

(declare-fun c!377056 () Bool)

(assert (=> d!695518 (= c!377056 (is-Nil!28040 s!9460))))

(assert (=> d!695518 (= (++!6910 s!9460 Nil!28040) lt!866384)))

(declare-fun b!2372234 () Bool)

(assert (=> b!2372234 (= e!1513931 (Cons!28040 (h!33441 s!9460) (++!6910 (t!208115 s!9460) Nil!28040)))))

(declare-fun b!2372236 () Bool)

(assert (=> b!2372236 (= e!1513932 (or (not (= Nil!28040 Nil!28040)) (= lt!866384 s!9460)))))

(assert (= (and d!695518 c!377056) b!2372233))

(assert (= (and d!695518 (not c!377056)) b!2372234))

(assert (= (and d!695518 res!1007004) b!2372235))

(assert (= (and b!2372235 res!1007003) b!2372236))

(declare-fun m!2779615 () Bool)

(assert (=> b!2372235 m!2779615))

(declare-fun m!2779617 () Bool)

(assert (=> b!2372235 m!2779617))

(declare-fun m!2779619 () Bool)

(assert (=> b!2372235 m!2779619))

(declare-fun m!2779621 () Bool)

(assert (=> d!695518 m!2779621))

(declare-fun m!2779623 () Bool)

(assert (=> d!695518 m!2779623))

(declare-fun m!2779625 () Bool)

(assert (=> d!695518 m!2779625))

(declare-fun m!2779627 () Bool)

(assert (=> b!2372234 m!2779627))

(assert (=> b!2372123 d!695518))

(declare-fun b!2372255 () Bool)

(declare-fun res!1007017 () Bool)

(declare-fun e!1513949 () Bool)

(assert (=> b!2372255 (=> res!1007017 e!1513949)))

(assert (=> b!2372255 (= res!1007017 (not (is-Concat!11586 lt!866344)))))

(declare-fun e!1513948 () Bool)

(assert (=> b!2372255 (= e!1513948 e!1513949)))

(declare-fun bm!144186 () Bool)

(declare-fun call!144191 () Bool)

(declare-fun c!377061 () Bool)

(assert (=> bm!144186 (= call!144191 (validRegex!2677 (ite c!377061 (regTwo!14413 lt!866344) (regOne!14412 lt!866344))))))

(declare-fun b!2372256 () Bool)

(declare-fun e!1513947 () Bool)

(declare-fun e!1513953 () Bool)

(assert (=> b!2372256 (= e!1513947 e!1513953)))

(declare-fun res!1007019 () Bool)

(declare-fun nullable!2006 (Regex!6950) Bool)

(assert (=> b!2372256 (= res!1007019 (not (nullable!2006 (reg!7279 lt!866344))))))

(assert (=> b!2372256 (=> (not res!1007019) (not e!1513953))))

(declare-fun bm!144187 () Bool)

(declare-fun call!144193 () Bool)

(declare-fun call!144192 () Bool)

(assert (=> bm!144187 (= call!144193 call!144192)))

(declare-fun b!2372257 () Bool)

(assert (=> b!2372257 (= e!1513953 call!144192)))

(declare-fun b!2372258 () Bool)

(declare-fun e!1513951 () Bool)

(assert (=> b!2372258 (= e!1513951 call!144193)))

(declare-fun b!2372259 () Bool)

(assert (=> b!2372259 (= e!1513947 e!1513948)))

(assert (=> b!2372259 (= c!377061 (is-Union!6950 lt!866344))))

(declare-fun b!2372260 () Bool)

(declare-fun res!1007018 () Bool)

(declare-fun e!1513952 () Bool)

(assert (=> b!2372260 (=> (not res!1007018) (not e!1513952))))

(assert (=> b!2372260 (= res!1007018 call!144193)))

(assert (=> b!2372260 (= e!1513948 e!1513952)))

(declare-fun b!2372261 () Bool)

(declare-fun e!1513950 () Bool)

(assert (=> b!2372261 (= e!1513950 e!1513947)))

(declare-fun c!377062 () Bool)

(assert (=> b!2372261 (= c!377062 (is-Star!6950 lt!866344))))

(declare-fun b!2372262 () Bool)

(assert (=> b!2372262 (= e!1513952 call!144191)))

(declare-fun d!695520 () Bool)

(declare-fun res!1007015 () Bool)

(assert (=> d!695520 (=> res!1007015 e!1513950)))

(assert (=> d!695520 (= res!1007015 (is-ElementMatch!6950 lt!866344))))

(assert (=> d!695520 (= (validRegex!2677 lt!866344) e!1513950)))

(declare-fun b!2372263 () Bool)

(assert (=> b!2372263 (= e!1513949 e!1513951)))

(declare-fun res!1007016 () Bool)

(assert (=> b!2372263 (=> (not res!1007016) (not e!1513951))))

(assert (=> b!2372263 (= res!1007016 call!144191)))

(declare-fun bm!144188 () Bool)

(assert (=> bm!144188 (= call!144192 (validRegex!2677 (ite c!377062 (reg!7279 lt!866344) (ite c!377061 (regOne!14413 lt!866344) (regTwo!14412 lt!866344)))))))

(assert (= (and d!695520 (not res!1007015)) b!2372261))

(assert (= (and b!2372261 c!377062) b!2372256))

(assert (= (and b!2372261 (not c!377062)) b!2372259))

(assert (= (and b!2372256 res!1007019) b!2372257))

(assert (= (and b!2372259 c!377061) b!2372260))

(assert (= (and b!2372259 (not c!377061)) b!2372255))

(assert (= (and b!2372260 res!1007018) b!2372262))

(assert (= (and b!2372255 (not res!1007017)) b!2372263))

(assert (= (and b!2372263 res!1007016) b!2372258))

(assert (= (or b!2372260 b!2372258) bm!144187))

(assert (= (or b!2372262 b!2372263) bm!144186))

(assert (= (or b!2372257 bm!144187) bm!144188))

(declare-fun m!2779629 () Bool)

(assert (=> bm!144186 m!2779629))

(declare-fun m!2779631 () Bool)

(assert (=> b!2372256 m!2779631))

(declare-fun m!2779633 () Bool)

(assert (=> bm!144188 m!2779633))

(assert (=> b!2372123 d!695520))

(declare-fun d!695522 () Bool)

(assert (=> d!695522 (matchR!3067 (Concat!11586 lt!866344 EmptyExpr!6950) (++!6910 s!9460 Nil!28040))))

(declare-fun lt!866387 () Unit!40935)

(declare-fun choose!13812 (Regex!6950 Regex!6950 List!28138 List!28138) Unit!40935)

(assert (=> d!695522 (= lt!866387 (choose!13812 lt!866344 EmptyExpr!6950 s!9460 Nil!28040))))

(declare-fun e!1513956 () Bool)

(assert (=> d!695522 e!1513956))

(declare-fun res!1007022 () Bool)

(assert (=> d!695522 (=> (not res!1007022) (not e!1513956))))

(assert (=> d!695522 (= res!1007022 (validRegex!2677 lt!866344))))

(assert (=> d!695522 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!23 lt!866344 EmptyExpr!6950 s!9460 Nil!28040) lt!866387)))

(declare-fun b!2372266 () Bool)

(assert (=> b!2372266 (= e!1513956 (validRegex!2677 EmptyExpr!6950))))

(assert (= (and d!695522 res!1007022) b!2372266))

(assert (=> d!695522 m!2779523))

(assert (=> d!695522 m!2779523))

(declare-fun m!2779635 () Bool)

(assert (=> d!695522 m!2779635))

(declare-fun m!2779637 () Bool)

(assert (=> d!695522 m!2779637))

(assert (=> d!695522 m!2779533))

(declare-fun m!2779639 () Bool)

(assert (=> b!2372266 m!2779639))

(assert (=> b!2372123 d!695522))

(declare-fun b!2372295 () Bool)

(declare-fun res!1007039 () Bool)

(declare-fun e!1513976 () Bool)

(assert (=> b!2372295 (=> res!1007039 e!1513976)))

(assert (=> b!2372295 (= res!1007039 (not (is-ElementMatch!6950 lt!866338)))))

(declare-fun e!1513971 () Bool)

(assert (=> b!2372295 (= e!1513971 e!1513976)))

(declare-fun b!2372296 () Bool)

(declare-fun res!1007041 () Bool)

(assert (=> b!2372296 (=> res!1007041 e!1513976)))

(declare-fun e!1513974 () Bool)

(assert (=> b!2372296 (= res!1007041 e!1513974)))

(declare-fun res!1007044 () Bool)

(assert (=> b!2372296 (=> (not res!1007044) (not e!1513974))))

(declare-fun lt!866390 () Bool)

(assert (=> b!2372296 (= res!1007044 lt!866390)))

(declare-fun b!2372297 () Bool)

(declare-fun e!1513977 () Bool)

(declare-fun call!144196 () Bool)

(assert (=> b!2372297 (= e!1513977 (= lt!866390 call!144196))))

(declare-fun b!2372298 () Bool)

(declare-fun e!1513975 () Bool)

(declare-fun e!1513973 () Bool)

(assert (=> b!2372298 (= e!1513975 e!1513973)))

(declare-fun res!1007043 () Bool)

(assert (=> b!2372298 (=> res!1007043 e!1513973)))

(assert (=> b!2372298 (= res!1007043 call!144196)))

(declare-fun bm!144191 () Bool)

(declare-fun isEmpty!15976 (List!28138) Bool)

(assert (=> bm!144191 (= call!144196 (isEmpty!15976 (++!6910 s!9460 Nil!28040)))))

(declare-fun b!2372299 () Bool)

(assert (=> b!2372299 (= e!1513976 e!1513975)))

(declare-fun res!1007046 () Bool)

(assert (=> b!2372299 (=> (not res!1007046) (not e!1513975))))

(assert (=> b!2372299 (= res!1007046 (not lt!866390))))

(declare-fun b!2372300 () Bool)

(declare-fun head!5141 (List!28138) C!14058)

(assert (=> b!2372300 (= e!1513974 (= (head!5141 (++!6910 s!9460 Nil!28040)) (c!377040 lt!866338)))))

(declare-fun b!2372301 () Bool)

(declare-fun res!1007040 () Bool)

(assert (=> b!2372301 (=> (not res!1007040) (not e!1513974))))

(assert (=> b!2372301 (= res!1007040 (not call!144196))))

(declare-fun d!695524 () Bool)

(assert (=> d!695524 e!1513977))

(declare-fun c!377071 () Bool)

(assert (=> d!695524 (= c!377071 (is-EmptyExpr!6950 lt!866338))))

(declare-fun e!1513972 () Bool)

(assert (=> d!695524 (= lt!866390 e!1513972)))

(declare-fun c!377070 () Bool)

(assert (=> d!695524 (= c!377070 (isEmpty!15976 (++!6910 s!9460 Nil!28040)))))

(assert (=> d!695524 (validRegex!2677 lt!866338)))

(assert (=> d!695524 (= (matchR!3067 lt!866338 (++!6910 s!9460 Nil!28040)) lt!866390)))

(declare-fun b!2372302 () Bool)

(declare-fun res!1007045 () Bool)

(assert (=> b!2372302 (=> res!1007045 e!1513973)))

(declare-fun tail!3411 (List!28138) List!28138)

(assert (=> b!2372302 (= res!1007045 (not (isEmpty!15976 (tail!3411 (++!6910 s!9460 Nil!28040)))))))

(declare-fun b!2372303 () Bool)

(assert (=> b!2372303 (= e!1513972 (nullable!2006 lt!866338))))

(declare-fun b!2372304 () Bool)

(declare-fun derivativeStep!1664 (Regex!6950 C!14058) Regex!6950)

(assert (=> b!2372304 (= e!1513972 (matchR!3067 (derivativeStep!1664 lt!866338 (head!5141 (++!6910 s!9460 Nil!28040))) (tail!3411 (++!6910 s!9460 Nil!28040))))))

(declare-fun b!2372305 () Bool)

(assert (=> b!2372305 (= e!1513971 (not lt!866390))))

(declare-fun b!2372306 () Bool)

(assert (=> b!2372306 (= e!1513973 (not (= (head!5141 (++!6910 s!9460 Nil!28040)) (c!377040 lt!866338))))))

(declare-fun b!2372307 () Bool)

(declare-fun res!1007042 () Bool)

(assert (=> b!2372307 (=> (not res!1007042) (not e!1513974))))

(assert (=> b!2372307 (= res!1007042 (isEmpty!15976 (tail!3411 (++!6910 s!9460 Nil!28040))))))

(declare-fun b!2372308 () Bool)

(assert (=> b!2372308 (= e!1513977 e!1513971)))

(declare-fun c!377069 () Bool)

(assert (=> b!2372308 (= c!377069 (is-EmptyLang!6950 lt!866338))))

(assert (= (and d!695524 c!377070) b!2372303))

(assert (= (and d!695524 (not c!377070)) b!2372304))

(assert (= (and d!695524 c!377071) b!2372297))

(assert (= (and d!695524 (not c!377071)) b!2372308))

(assert (= (and b!2372308 c!377069) b!2372305))

(assert (= (and b!2372308 (not c!377069)) b!2372295))

(assert (= (and b!2372295 (not res!1007039)) b!2372296))

(assert (= (and b!2372296 res!1007044) b!2372301))

(assert (= (and b!2372301 res!1007040) b!2372307))

(assert (= (and b!2372307 res!1007042) b!2372300))

(assert (= (and b!2372296 (not res!1007041)) b!2372299))

(assert (= (and b!2372299 res!1007046) b!2372298))

(assert (= (and b!2372298 (not res!1007043)) b!2372302))

(assert (= (and b!2372302 (not res!1007045)) b!2372306))

(assert (= (or b!2372297 b!2372298 b!2372301) bm!144191))

(assert (=> b!2372304 m!2779523))

(declare-fun m!2779641 () Bool)

(assert (=> b!2372304 m!2779641))

(assert (=> b!2372304 m!2779641))

(declare-fun m!2779643 () Bool)

(assert (=> b!2372304 m!2779643))

(assert (=> b!2372304 m!2779523))

(declare-fun m!2779645 () Bool)

(assert (=> b!2372304 m!2779645))

(assert (=> b!2372304 m!2779643))

(assert (=> b!2372304 m!2779645))

(declare-fun m!2779647 () Bool)

(assert (=> b!2372304 m!2779647))

(assert (=> b!2372302 m!2779523))

(assert (=> b!2372302 m!2779645))

(assert (=> b!2372302 m!2779645))

(declare-fun m!2779649 () Bool)

(assert (=> b!2372302 m!2779649))

(assert (=> b!2372300 m!2779523))

(assert (=> b!2372300 m!2779641))

(declare-fun m!2779651 () Bool)

(assert (=> b!2372303 m!2779651))

(assert (=> bm!144191 m!2779523))

(declare-fun m!2779653 () Bool)

(assert (=> bm!144191 m!2779653))

(assert (=> d!695524 m!2779523))

(assert (=> d!695524 m!2779653))

(declare-fun m!2779655 () Bool)

(assert (=> d!695524 m!2779655))

(assert (=> b!2372307 m!2779523))

(assert (=> b!2372307 m!2779645))

(assert (=> b!2372307 m!2779645))

(assert (=> b!2372307 m!2779649))

(assert (=> b!2372306 m!2779523))

(assert (=> b!2372306 m!2779641))

(assert (=> b!2372123 d!695524))

(declare-fun b!2372327 () Bool)

(declare-fun lt!866402 () Unit!40935)

(declare-fun lt!866400 () Unit!40935)

(assert (=> b!2372327 (= lt!866402 lt!866400)))

(assert (=> b!2372327 (= (++!6910 (++!6910 Nil!28040 (Cons!28040 (h!33441 s!9460) Nil!28040)) (t!208115 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!554 (List!28138 C!14058 List!28138 List!28138) Unit!40935)

(assert (=> b!2372327 (= lt!866400 (lemmaMoveElementToOtherListKeepsConcatEq!554 Nil!28040 (h!33441 s!9460) (t!208115 s!9460) s!9460))))

(declare-fun e!1513990 () Option!5493)

(assert (=> b!2372327 (= e!1513990 (findConcatSeparation!601 lt!866344 EmptyExpr!6950 (++!6910 Nil!28040 (Cons!28040 (h!33441 s!9460) Nil!28040)) (t!208115 s!9460) s!9460))))

(declare-fun b!2372328 () Bool)

(declare-fun res!1007057 () Bool)

(declare-fun e!1513991 () Bool)

(assert (=> b!2372328 (=> (not res!1007057) (not e!1513991))))

(declare-fun lt!866401 () Option!5493)

(declare-fun get!8529 (Option!5493) tuple2!27764)

(assert (=> b!2372328 (= res!1007057 (matchR!3067 EmptyExpr!6950 (_2!16423 (get!8529 lt!866401))))))

(declare-fun b!2372329 () Bool)

(declare-fun e!1513992 () Option!5493)

(assert (=> b!2372329 (= e!1513992 e!1513990)))

(declare-fun c!377077 () Bool)

(assert (=> b!2372329 (= c!377077 (is-Nil!28040 s!9460))))

(declare-fun b!2372330 () Bool)

(declare-fun res!1007060 () Bool)

(assert (=> b!2372330 (=> (not res!1007060) (not e!1513991))))

(assert (=> b!2372330 (= res!1007060 (matchR!3067 lt!866344 (_1!16423 (get!8529 lt!866401))))))

(declare-fun b!2372331 () Bool)

(assert (=> b!2372331 (= e!1513991 (= (++!6910 (_1!16423 (get!8529 lt!866401)) (_2!16423 (get!8529 lt!866401))) s!9460))))

(declare-fun b!2372332 () Bool)

(assert (=> b!2372332 (= e!1513992 (Some!5492 (tuple2!27765 Nil!28040 s!9460)))))

(declare-fun b!2372333 () Bool)

(assert (=> b!2372333 (= e!1513990 None!5492)))

(declare-fun b!2372334 () Bool)

(declare-fun e!1513989 () Bool)

(assert (=> b!2372334 (= e!1513989 (not (isDefined!4321 lt!866401)))))

(declare-fun d!695528 () Bool)

(assert (=> d!695528 e!1513989))

(declare-fun res!1007058 () Bool)

(assert (=> d!695528 (=> res!1007058 e!1513989)))

(assert (=> d!695528 (= res!1007058 e!1513991)))

(declare-fun res!1007061 () Bool)

(assert (=> d!695528 (=> (not res!1007061) (not e!1513991))))

(assert (=> d!695528 (= res!1007061 (isDefined!4321 lt!866401))))

(assert (=> d!695528 (= lt!866401 e!1513992)))

(declare-fun c!377076 () Bool)

(declare-fun e!1513988 () Bool)

(assert (=> d!695528 (= c!377076 e!1513988)))

(declare-fun res!1007059 () Bool)

(assert (=> d!695528 (=> (not res!1007059) (not e!1513988))))

(assert (=> d!695528 (= res!1007059 (matchR!3067 lt!866344 Nil!28040))))

(assert (=> d!695528 (validRegex!2677 lt!866344)))

(assert (=> d!695528 (= (findConcatSeparation!601 lt!866344 EmptyExpr!6950 Nil!28040 s!9460 s!9460) lt!866401)))

(declare-fun b!2372335 () Bool)

(assert (=> b!2372335 (= e!1513988 (matchR!3067 EmptyExpr!6950 s!9460))))

(assert (= (and d!695528 res!1007059) b!2372335))

(assert (= (and d!695528 c!377076) b!2372332))

(assert (= (and d!695528 (not c!377076)) b!2372329))

(assert (= (and b!2372329 c!377077) b!2372333))

(assert (= (and b!2372329 (not c!377077)) b!2372327))

(assert (= (and d!695528 res!1007061) b!2372330))

(assert (= (and b!2372330 res!1007060) b!2372328))

(assert (= (and b!2372328 res!1007057) b!2372331))

(assert (= (and d!695528 (not res!1007058)) b!2372334))

(declare-fun m!2779659 () Bool)

(assert (=> d!695528 m!2779659))

(declare-fun m!2779661 () Bool)

(assert (=> d!695528 m!2779661))

(assert (=> d!695528 m!2779533))

(declare-fun m!2779663 () Bool)

(assert (=> b!2372331 m!2779663))

(declare-fun m!2779665 () Bool)

(assert (=> b!2372331 m!2779665))

(declare-fun m!2779667 () Bool)

(assert (=> b!2372335 m!2779667))

(declare-fun m!2779669 () Bool)

(assert (=> b!2372327 m!2779669))

(assert (=> b!2372327 m!2779669))

(declare-fun m!2779671 () Bool)

(assert (=> b!2372327 m!2779671))

(declare-fun m!2779673 () Bool)

(assert (=> b!2372327 m!2779673))

(assert (=> b!2372327 m!2779669))

(declare-fun m!2779675 () Bool)

(assert (=> b!2372327 m!2779675))

(assert (=> b!2372330 m!2779663))

(declare-fun m!2779677 () Bool)

(assert (=> b!2372330 m!2779677))

(assert (=> b!2372334 m!2779659))

(assert (=> b!2372328 m!2779663))

(declare-fun m!2779679 () Bool)

(assert (=> b!2372328 m!2779679))

(assert (=> b!2372123 d!695528))

(declare-fun d!695532 () Bool)

(assert (=> d!695532 (isDefined!4321 (findConcatSeparation!601 lt!866344 EmptyExpr!6950 Nil!28040 s!9460 s!9460))))

(declare-fun lt!866405 () Unit!40935)

(declare-fun choose!13813 (Regex!6950 Regex!6950 List!28138) Unit!40935)

(assert (=> d!695532 (= lt!866405 (choose!13813 lt!866344 EmptyExpr!6950 s!9460))))

(assert (=> d!695532 (validRegex!2677 lt!866344)))

(assert (=> d!695532 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!5 lt!866344 EmptyExpr!6950 s!9460) lt!866405)))

(declare-fun bs!461320 () Bool)

(assert (= bs!461320 d!695532))

(assert (=> bs!461320 m!2779531))

(assert (=> bs!461320 m!2779531))

(assert (=> bs!461320 m!2779535))

(declare-fun m!2779681 () Bool)

(assert (=> bs!461320 m!2779681))

(assert (=> bs!461320 m!2779533))

(assert (=> b!2372123 d!695532))

(declare-fun b!2372336 () Bool)

(declare-fun res!1007062 () Bool)

(declare-fun e!1513998 () Bool)

(assert (=> b!2372336 (=> res!1007062 e!1513998)))

(assert (=> b!2372336 (= res!1007062 (not (is-ElementMatch!6950 lt!866344)))))

(declare-fun e!1513993 () Bool)

(assert (=> b!2372336 (= e!1513993 e!1513998)))

(declare-fun b!2372337 () Bool)

(declare-fun res!1007064 () Bool)

(assert (=> b!2372337 (=> res!1007064 e!1513998)))

(declare-fun e!1513996 () Bool)

(assert (=> b!2372337 (= res!1007064 e!1513996)))

(declare-fun res!1007067 () Bool)

(assert (=> b!2372337 (=> (not res!1007067) (not e!1513996))))

(declare-fun lt!866406 () Bool)

(assert (=> b!2372337 (= res!1007067 lt!866406)))

(declare-fun b!2372338 () Bool)

(declare-fun e!1513999 () Bool)

(declare-fun call!144197 () Bool)

(assert (=> b!2372338 (= e!1513999 (= lt!866406 call!144197))))

(declare-fun b!2372339 () Bool)

(declare-fun e!1513997 () Bool)

(declare-fun e!1513995 () Bool)

(assert (=> b!2372339 (= e!1513997 e!1513995)))

(declare-fun res!1007066 () Bool)

(assert (=> b!2372339 (=> res!1007066 e!1513995)))

(assert (=> b!2372339 (= res!1007066 call!144197)))

(declare-fun bm!144192 () Bool)

(assert (=> bm!144192 (= call!144197 (isEmpty!15976 s!9460))))

(declare-fun b!2372340 () Bool)

(assert (=> b!2372340 (= e!1513998 e!1513997)))

(declare-fun res!1007069 () Bool)

(assert (=> b!2372340 (=> (not res!1007069) (not e!1513997))))

(assert (=> b!2372340 (= res!1007069 (not lt!866406))))

(declare-fun b!2372341 () Bool)

(assert (=> b!2372341 (= e!1513996 (= (head!5141 s!9460) (c!377040 lt!866344)))))

(declare-fun b!2372342 () Bool)

(declare-fun res!1007063 () Bool)

(assert (=> b!2372342 (=> (not res!1007063) (not e!1513996))))

(assert (=> b!2372342 (= res!1007063 (not call!144197))))

(declare-fun d!695534 () Bool)

(assert (=> d!695534 e!1513999))

(declare-fun c!377080 () Bool)

(assert (=> d!695534 (= c!377080 (is-EmptyExpr!6950 lt!866344))))

(declare-fun e!1513994 () Bool)

(assert (=> d!695534 (= lt!866406 e!1513994)))

(declare-fun c!377079 () Bool)

(assert (=> d!695534 (= c!377079 (isEmpty!15976 s!9460))))

(assert (=> d!695534 (validRegex!2677 lt!866344)))

(assert (=> d!695534 (= (matchR!3067 lt!866344 s!9460) lt!866406)))

(declare-fun b!2372343 () Bool)

(declare-fun res!1007068 () Bool)

(assert (=> b!2372343 (=> res!1007068 e!1513995)))

(assert (=> b!2372343 (= res!1007068 (not (isEmpty!15976 (tail!3411 s!9460))))))

(declare-fun b!2372344 () Bool)

(assert (=> b!2372344 (= e!1513994 (nullable!2006 lt!866344))))

(declare-fun b!2372345 () Bool)

(assert (=> b!2372345 (= e!1513994 (matchR!3067 (derivativeStep!1664 lt!866344 (head!5141 s!9460)) (tail!3411 s!9460)))))

(declare-fun b!2372346 () Bool)

(assert (=> b!2372346 (= e!1513993 (not lt!866406))))

(declare-fun b!2372347 () Bool)

(assert (=> b!2372347 (= e!1513995 (not (= (head!5141 s!9460) (c!377040 lt!866344))))))

(declare-fun b!2372348 () Bool)

(declare-fun res!1007065 () Bool)

(assert (=> b!2372348 (=> (not res!1007065) (not e!1513996))))

(assert (=> b!2372348 (= res!1007065 (isEmpty!15976 (tail!3411 s!9460)))))

(declare-fun b!2372349 () Bool)

(assert (=> b!2372349 (= e!1513999 e!1513993)))

(declare-fun c!377078 () Bool)

(assert (=> b!2372349 (= c!377078 (is-EmptyLang!6950 lt!866344))))

(assert (= (and d!695534 c!377079) b!2372344))

(assert (= (and d!695534 (not c!377079)) b!2372345))

(assert (= (and d!695534 c!377080) b!2372338))

(assert (= (and d!695534 (not c!377080)) b!2372349))

(assert (= (and b!2372349 c!377078) b!2372346))

(assert (= (and b!2372349 (not c!377078)) b!2372336))

(assert (= (and b!2372336 (not res!1007062)) b!2372337))

(assert (= (and b!2372337 res!1007067) b!2372342))

(assert (= (and b!2372342 res!1007063) b!2372348))

(assert (= (and b!2372348 res!1007065) b!2372341))

(assert (= (and b!2372337 (not res!1007064)) b!2372340))

(assert (= (and b!2372340 res!1007069) b!2372339))

(assert (= (and b!2372339 (not res!1007066)) b!2372343))

(assert (= (and b!2372343 (not res!1007068)) b!2372347))

(assert (= (or b!2372338 b!2372339 b!2372342) bm!144192))

(declare-fun m!2779683 () Bool)

(assert (=> b!2372345 m!2779683))

(assert (=> b!2372345 m!2779683))

(declare-fun m!2779685 () Bool)

(assert (=> b!2372345 m!2779685))

(declare-fun m!2779687 () Bool)

(assert (=> b!2372345 m!2779687))

(assert (=> b!2372345 m!2779685))

(assert (=> b!2372345 m!2779687))

(declare-fun m!2779689 () Bool)

(assert (=> b!2372345 m!2779689))

(assert (=> b!2372343 m!2779687))

(assert (=> b!2372343 m!2779687))

(declare-fun m!2779691 () Bool)

(assert (=> b!2372343 m!2779691))

(assert (=> b!2372341 m!2779683))

(declare-fun m!2779693 () Bool)

(assert (=> b!2372344 m!2779693))

(declare-fun m!2779695 () Bool)

(assert (=> bm!144192 m!2779695))

(assert (=> d!695534 m!2779695))

(assert (=> d!695534 m!2779533))

(assert (=> b!2372348 m!2779687))

(assert (=> b!2372348 m!2779687))

(assert (=> b!2372348 m!2779691))

(assert (=> b!2372347 m!2779683))

(assert (=> b!2372124 d!695534))

(declare-fun d!695536 () Bool)

(assert (=> d!695536 (= (head!5139 l!9164) (h!33442 l!9164))))

(assert (=> b!2372124 d!695536))

(declare-fun bs!461321 () Bool)

(declare-fun b!2372401 () Bool)

(assert (= bs!461321 (and b!2372401 b!2372120)))

(declare-fun lambda!87905 () Int)

(assert (=> bs!461321 (not (= lambda!87905 lambda!87885))))

(assert (=> bs!461321 (not (= lambda!87905 lambda!87886))))

(assert (=> b!2372401 true))

(assert (=> b!2372401 true))

(declare-fun bs!461322 () Bool)

(declare-fun b!2372405 () Bool)

(assert (= bs!461322 (and b!2372405 b!2372120)))

(declare-fun lambda!87906 () Int)

(assert (=> bs!461322 (not (= lambda!87906 lambda!87885))))

(assert (=> bs!461322 (= lambda!87906 lambda!87886)))

(declare-fun bs!461323 () Bool)

(assert (= bs!461323 (and b!2372405 b!2372401)))

(assert (=> bs!461323 (not (= lambda!87906 lambda!87905))))

(assert (=> b!2372405 true))

(assert (=> b!2372405 true))

(declare-fun b!2372400 () Bool)

(declare-fun e!1514032 () Bool)

(assert (=> b!2372400 (= e!1514032 (matchRSpec!799 (regTwo!14413 r!13927) s!9460))))

(declare-fun e!1514030 () Bool)

(declare-fun call!144202 () Bool)

(assert (=> b!2372401 (= e!1514030 call!144202)))

(declare-fun bm!144197 () Bool)

(declare-fun call!144203 () Bool)

(assert (=> bm!144197 (= call!144203 (isEmpty!15976 s!9460))))

(declare-fun b!2372402 () Bool)

(declare-fun e!1514034 () Bool)

(assert (=> b!2372402 (= e!1514034 (= s!9460 (Cons!28040 (c!377040 r!13927) Nil!28040)))))

(declare-fun b!2372403 () Bool)

(declare-fun c!377094 () Bool)

(assert (=> b!2372403 (= c!377094 (is-ElementMatch!6950 r!13927))))

(declare-fun e!1514029 () Bool)

(assert (=> b!2372403 (= e!1514029 e!1514034)))

(declare-fun c!377095 () Bool)

(declare-fun bm!144198 () Bool)

(assert (=> bm!144198 (= call!144202 (Exists!1012 (ite c!377095 lambda!87905 lambda!87906)))))

(declare-fun d!695538 () Bool)

(declare-fun c!377093 () Bool)

(assert (=> d!695538 (= c!377093 (is-EmptyExpr!6950 r!13927))))

(declare-fun e!1514033 () Bool)

(assert (=> d!695538 (= (matchRSpec!799 r!13927 s!9460) e!1514033)))

(declare-fun b!2372404 () Bool)

(declare-fun c!377096 () Bool)

(assert (=> b!2372404 (= c!377096 (is-Union!6950 r!13927))))

(declare-fun e!1514028 () Bool)

(assert (=> b!2372404 (= e!1514034 e!1514028)))

(declare-fun e!1514031 () Bool)

(assert (=> b!2372405 (= e!1514031 call!144202)))

(declare-fun b!2372406 () Bool)

(declare-fun res!1007098 () Bool)

(assert (=> b!2372406 (=> res!1007098 e!1514030)))

(assert (=> b!2372406 (= res!1007098 call!144203)))

(assert (=> b!2372406 (= e!1514031 e!1514030)))

(declare-fun b!2372407 () Bool)

(assert (=> b!2372407 (= e!1514028 e!1514032)))

(declare-fun res!1007097 () Bool)

(assert (=> b!2372407 (= res!1007097 (matchRSpec!799 (regOne!14413 r!13927) s!9460))))

(assert (=> b!2372407 (=> res!1007097 e!1514032)))

(declare-fun b!2372408 () Bool)

(assert (=> b!2372408 (= e!1514033 e!1514029)))

(declare-fun res!1007096 () Bool)

(assert (=> b!2372408 (= res!1007096 (not (is-EmptyLang!6950 r!13927)))))

(assert (=> b!2372408 (=> (not res!1007096) (not e!1514029))))

(declare-fun b!2372409 () Bool)

(assert (=> b!2372409 (= e!1514028 e!1514031)))

(assert (=> b!2372409 (= c!377095 (is-Star!6950 r!13927))))

(declare-fun b!2372410 () Bool)

(assert (=> b!2372410 (= e!1514033 call!144203)))

(assert (= (and d!695538 c!377093) b!2372410))

(assert (= (and d!695538 (not c!377093)) b!2372408))

(assert (= (and b!2372408 res!1007096) b!2372403))

(assert (= (and b!2372403 c!377094) b!2372402))

(assert (= (and b!2372403 (not c!377094)) b!2372404))

(assert (= (and b!2372404 c!377096) b!2372407))

(assert (= (and b!2372404 (not c!377096)) b!2372409))

(assert (= (and b!2372407 (not res!1007097)) b!2372400))

(assert (= (and b!2372409 c!377095) b!2372406))

(assert (= (and b!2372409 (not c!377095)) b!2372405))

(assert (= (and b!2372406 (not res!1007098)) b!2372401))

(assert (= (or b!2372401 b!2372405) bm!144198))

(assert (= (or b!2372410 b!2372406) bm!144197))

(declare-fun m!2779697 () Bool)

(assert (=> b!2372400 m!2779697))

(assert (=> bm!144197 m!2779695))

(declare-fun m!2779699 () Bool)

(assert (=> bm!144198 m!2779699))

(declare-fun m!2779701 () Bool)

(assert (=> b!2372407 m!2779701))

(assert (=> b!2372119 d!695538))

(declare-fun b!2372411 () Bool)

(declare-fun res!1007099 () Bool)

(declare-fun e!1514040 () Bool)

(assert (=> b!2372411 (=> res!1007099 e!1514040)))

(assert (=> b!2372411 (= res!1007099 (not (is-ElementMatch!6950 r!13927)))))

(declare-fun e!1514035 () Bool)

(assert (=> b!2372411 (= e!1514035 e!1514040)))

(declare-fun b!2372412 () Bool)

(declare-fun res!1007101 () Bool)

(assert (=> b!2372412 (=> res!1007101 e!1514040)))

(declare-fun e!1514038 () Bool)

(assert (=> b!2372412 (= res!1007101 e!1514038)))

(declare-fun res!1007104 () Bool)

(assert (=> b!2372412 (=> (not res!1007104) (not e!1514038))))

(declare-fun lt!866413 () Bool)

(assert (=> b!2372412 (= res!1007104 lt!866413)))

(declare-fun b!2372413 () Bool)

(declare-fun e!1514041 () Bool)

(declare-fun call!144204 () Bool)

(assert (=> b!2372413 (= e!1514041 (= lt!866413 call!144204))))

(declare-fun b!2372414 () Bool)

(declare-fun e!1514039 () Bool)

(declare-fun e!1514037 () Bool)

(assert (=> b!2372414 (= e!1514039 e!1514037)))

(declare-fun res!1007103 () Bool)

(assert (=> b!2372414 (=> res!1007103 e!1514037)))

(assert (=> b!2372414 (= res!1007103 call!144204)))

(declare-fun bm!144199 () Bool)

(assert (=> bm!144199 (= call!144204 (isEmpty!15976 s!9460))))

(declare-fun b!2372415 () Bool)

(assert (=> b!2372415 (= e!1514040 e!1514039)))

(declare-fun res!1007106 () Bool)

(assert (=> b!2372415 (=> (not res!1007106) (not e!1514039))))

(assert (=> b!2372415 (= res!1007106 (not lt!866413))))

(declare-fun b!2372416 () Bool)

(assert (=> b!2372416 (= e!1514038 (= (head!5141 s!9460) (c!377040 r!13927)))))

(declare-fun b!2372417 () Bool)

(declare-fun res!1007100 () Bool)

(assert (=> b!2372417 (=> (not res!1007100) (not e!1514038))))

(assert (=> b!2372417 (= res!1007100 (not call!144204))))

(declare-fun d!695540 () Bool)

(assert (=> d!695540 e!1514041))

(declare-fun c!377099 () Bool)

(assert (=> d!695540 (= c!377099 (is-EmptyExpr!6950 r!13927))))

(declare-fun e!1514036 () Bool)

(assert (=> d!695540 (= lt!866413 e!1514036)))

(declare-fun c!377098 () Bool)

(assert (=> d!695540 (= c!377098 (isEmpty!15976 s!9460))))

(assert (=> d!695540 (validRegex!2677 r!13927)))

(assert (=> d!695540 (= (matchR!3067 r!13927 s!9460) lt!866413)))

(declare-fun b!2372418 () Bool)

(declare-fun res!1007105 () Bool)

(assert (=> b!2372418 (=> res!1007105 e!1514037)))

(assert (=> b!2372418 (= res!1007105 (not (isEmpty!15976 (tail!3411 s!9460))))))

(declare-fun b!2372419 () Bool)

(assert (=> b!2372419 (= e!1514036 (nullable!2006 r!13927))))

(declare-fun b!2372420 () Bool)

(assert (=> b!2372420 (= e!1514036 (matchR!3067 (derivativeStep!1664 r!13927 (head!5141 s!9460)) (tail!3411 s!9460)))))

(declare-fun b!2372421 () Bool)

(assert (=> b!2372421 (= e!1514035 (not lt!866413))))

(declare-fun b!2372422 () Bool)

(assert (=> b!2372422 (= e!1514037 (not (= (head!5141 s!9460) (c!377040 r!13927))))))

(declare-fun b!2372423 () Bool)

(declare-fun res!1007102 () Bool)

(assert (=> b!2372423 (=> (not res!1007102) (not e!1514038))))

(assert (=> b!2372423 (= res!1007102 (isEmpty!15976 (tail!3411 s!9460)))))

(declare-fun b!2372424 () Bool)

(assert (=> b!2372424 (= e!1514041 e!1514035)))

(declare-fun c!377097 () Bool)

(assert (=> b!2372424 (= c!377097 (is-EmptyLang!6950 r!13927))))

(assert (= (and d!695540 c!377098) b!2372419))

(assert (= (and d!695540 (not c!377098)) b!2372420))

(assert (= (and d!695540 c!377099) b!2372413))

(assert (= (and d!695540 (not c!377099)) b!2372424))

(assert (= (and b!2372424 c!377097) b!2372421))

(assert (= (and b!2372424 (not c!377097)) b!2372411))

(assert (= (and b!2372411 (not res!1007099)) b!2372412))

(assert (= (and b!2372412 res!1007104) b!2372417))

(assert (= (and b!2372417 res!1007100) b!2372423))

(assert (= (and b!2372423 res!1007102) b!2372416))

(assert (= (and b!2372412 (not res!1007101)) b!2372415))

(assert (= (and b!2372415 res!1007106) b!2372414))

(assert (= (and b!2372414 (not res!1007103)) b!2372418))

(assert (= (and b!2372418 (not res!1007105)) b!2372422))

(assert (= (or b!2372413 b!2372414 b!2372417) bm!144199))

(assert (=> b!2372420 m!2779683))

(assert (=> b!2372420 m!2779683))

(declare-fun m!2779703 () Bool)

(assert (=> b!2372420 m!2779703))

(assert (=> b!2372420 m!2779687))

(assert (=> b!2372420 m!2779703))

(assert (=> b!2372420 m!2779687))

(declare-fun m!2779705 () Bool)

(assert (=> b!2372420 m!2779705))

(assert (=> b!2372418 m!2779687))

(assert (=> b!2372418 m!2779687))

(assert (=> b!2372418 m!2779691))

(assert (=> b!2372416 m!2779683))

(declare-fun m!2779707 () Bool)

(assert (=> b!2372419 m!2779707))

(assert (=> bm!144199 m!2779695))

(assert (=> d!695540 m!2779695))

(declare-fun m!2779709 () Bool)

(assert (=> d!695540 m!2779709))

(assert (=> b!2372423 m!2779687))

(assert (=> b!2372423 m!2779687))

(assert (=> b!2372423 m!2779691))

(assert (=> b!2372422 m!2779683))

(assert (=> b!2372119 d!695540))

(declare-fun d!695542 () Bool)

(assert (=> d!695542 (= (matchR!3067 r!13927 s!9460) (matchRSpec!799 r!13927 s!9460))))

(declare-fun lt!866419 () Unit!40935)

(declare-fun choose!13814 (Regex!6950 List!28138) Unit!40935)

(assert (=> d!695542 (= lt!866419 (choose!13814 r!13927 s!9460))))

(assert (=> d!695542 (validRegex!2677 r!13927)))

(assert (=> d!695542 (= (mainMatchTheorem!799 r!13927 s!9460) lt!866419)))

(declare-fun bs!461324 () Bool)

(assert (= bs!461324 d!695542))

(assert (=> bs!461324 m!2779513))

(assert (=> bs!461324 m!2779511))

(declare-fun m!2779729 () Bool)

(assert (=> bs!461324 m!2779729))

(assert (=> bs!461324 m!2779709))

(assert (=> b!2372119 d!695542))

(declare-fun d!695544 () Bool)

(declare-fun choose!13815 (Int) Bool)

(assert (=> d!695544 (= (Exists!1012 lambda!87885) (choose!13815 lambda!87885))))

(declare-fun bs!461325 () Bool)

(assert (= bs!461325 d!695544))

(declare-fun m!2779735 () Bool)

(assert (=> bs!461325 m!2779735))

(assert (=> b!2372120 d!695544))

(declare-fun d!695548 () Bool)

(assert (=> d!695548 (= (isDefined!4321 (findConcatSeparation!601 (regOne!14412 r!13927) (regTwo!14412 r!13927) Nil!28040 s!9460 s!9460)) (not (isEmpty!15975 (findConcatSeparation!601 (regOne!14412 r!13927) (regTwo!14412 r!13927) Nil!28040 s!9460 s!9460))))))

(declare-fun bs!461326 () Bool)

(assert (= bs!461326 d!695548))

(assert (=> bs!461326 m!2779537))

(declare-fun m!2779737 () Bool)

(assert (=> bs!461326 m!2779737))

(assert (=> b!2372120 d!695548))

(declare-fun bs!461327 () Bool)

(declare-fun d!695550 () Bool)

(assert (= bs!461327 (and d!695550 b!2372120)))

(declare-fun lambda!87909 () Int)

(assert (=> bs!461327 (= lambda!87909 lambda!87885)))

(assert (=> bs!461327 (not (= lambda!87909 lambda!87886))))

(declare-fun bs!461328 () Bool)

(assert (= bs!461328 (and d!695550 b!2372401)))

(assert (=> bs!461328 (not (= lambda!87909 lambda!87905))))

(declare-fun bs!461329 () Bool)

(assert (= bs!461329 (and d!695550 b!2372405)))

(assert (=> bs!461329 (not (= lambda!87909 lambda!87906))))

(assert (=> d!695550 true))

(assert (=> d!695550 true))

(assert (=> d!695550 true))

(assert (=> d!695550 (= (isDefined!4321 (findConcatSeparation!601 (regOne!14412 r!13927) (regTwo!14412 r!13927) Nil!28040 s!9460 s!9460)) (Exists!1012 lambda!87909))))

(declare-fun lt!866424 () Unit!40935)

(declare-fun choose!13816 (Regex!6950 Regex!6950 List!28138) Unit!40935)

(assert (=> d!695550 (= lt!866424 (choose!13816 (regOne!14412 r!13927) (regTwo!14412 r!13927) s!9460))))

(assert (=> d!695550 (validRegex!2677 (regOne!14412 r!13927))))

(assert (=> d!695550 (= (lemmaFindConcatSeparationEquivalentToExists!601 (regOne!14412 r!13927) (regTwo!14412 r!13927) s!9460) lt!866424)))

(declare-fun bs!461330 () Bool)

(assert (= bs!461330 d!695550))

(declare-fun m!2779739 () Bool)

(assert (=> bs!461330 m!2779739))

(declare-fun m!2779741 () Bool)

(assert (=> bs!461330 m!2779741))

(assert (=> bs!461330 m!2779537))

(declare-fun m!2779743 () Bool)

(assert (=> bs!461330 m!2779743))

(assert (=> bs!461330 m!2779537))

(assert (=> bs!461330 m!2779539))

(assert (=> b!2372120 d!695550))

(declare-fun bs!461331 () Bool)

(declare-fun d!695552 () Bool)

(assert (= bs!461331 (and d!695552 d!695550)))

(declare-fun lambda!87914 () Int)

(assert (=> bs!461331 (= lambda!87914 lambda!87909)))

(declare-fun bs!461332 () Bool)

(assert (= bs!461332 (and d!695552 b!2372120)))

(assert (=> bs!461332 (not (= lambda!87914 lambda!87886))))

(declare-fun bs!461333 () Bool)

(assert (= bs!461333 (and d!695552 b!2372401)))

(assert (=> bs!461333 (not (= lambda!87914 lambda!87905))))

(declare-fun bs!461334 () Bool)

(assert (= bs!461334 (and d!695552 b!2372405)))

(assert (=> bs!461334 (not (= lambda!87914 lambda!87906))))

(assert (=> bs!461332 (= lambda!87914 lambda!87885)))

(assert (=> d!695552 true))

(assert (=> d!695552 true))

(assert (=> d!695552 true))

(declare-fun lambda!87915 () Int)

(assert (=> bs!461331 (not (= lambda!87915 lambda!87909))))

(assert (=> bs!461332 (= lambda!87915 lambda!87886)))

(assert (=> bs!461333 (not (= lambda!87915 lambda!87905))))

(declare-fun bs!461335 () Bool)

(assert (= bs!461335 d!695552))

(assert (=> bs!461335 (not (= lambda!87915 lambda!87914))))

(assert (=> bs!461334 (= lambda!87915 lambda!87906)))

(assert (=> bs!461332 (not (= lambda!87915 lambda!87885))))

(assert (=> d!695552 true))

(assert (=> d!695552 true))

(assert (=> d!695552 true))

(assert (=> d!695552 (= (Exists!1012 lambda!87914) (Exists!1012 lambda!87915))))

(declare-fun lt!866428 () Unit!40935)

(declare-fun choose!13817 (Regex!6950 Regex!6950 List!28138) Unit!40935)

(assert (=> d!695552 (= lt!866428 (choose!13817 (regOne!14412 r!13927) (regTwo!14412 r!13927) s!9460))))

(assert (=> d!695552 (validRegex!2677 (regOne!14412 r!13927))))

(assert (=> d!695552 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!351 (regOne!14412 r!13927) (regTwo!14412 r!13927) s!9460) lt!866428)))

(declare-fun m!2779751 () Bool)

(assert (=> bs!461335 m!2779751))

(declare-fun m!2779753 () Bool)

(assert (=> bs!461335 m!2779753))

(declare-fun m!2779755 () Bool)

(assert (=> bs!461335 m!2779755))

(assert (=> bs!461335 m!2779739))

(assert (=> b!2372120 d!695552))

(declare-fun b!2372467 () Bool)

(declare-fun lt!866431 () Unit!40935)

(declare-fun lt!866429 () Unit!40935)

(assert (=> b!2372467 (= lt!866431 lt!866429)))

(assert (=> b!2372467 (= (++!6910 (++!6910 Nil!28040 (Cons!28040 (h!33441 s!9460) Nil!28040)) (t!208115 s!9460)) s!9460)))

(assert (=> b!2372467 (= lt!866429 (lemmaMoveElementToOtherListKeepsConcatEq!554 Nil!28040 (h!33441 s!9460) (t!208115 s!9460) s!9460))))

(declare-fun e!1514072 () Option!5493)

(assert (=> b!2372467 (= e!1514072 (findConcatSeparation!601 (regOne!14412 r!13927) (regTwo!14412 r!13927) (++!6910 Nil!28040 (Cons!28040 (h!33441 s!9460) Nil!28040)) (t!208115 s!9460) s!9460))))

(declare-fun b!2372468 () Bool)

(declare-fun res!1007137 () Bool)

(declare-fun e!1514073 () Bool)

(assert (=> b!2372468 (=> (not res!1007137) (not e!1514073))))

(declare-fun lt!866430 () Option!5493)

(assert (=> b!2372468 (= res!1007137 (matchR!3067 (regTwo!14412 r!13927) (_2!16423 (get!8529 lt!866430))))))

(declare-fun b!2372469 () Bool)

(declare-fun e!1514074 () Option!5493)

(assert (=> b!2372469 (= e!1514074 e!1514072)))

(declare-fun c!377107 () Bool)

(assert (=> b!2372469 (= c!377107 (is-Nil!28040 s!9460))))

(declare-fun b!2372470 () Bool)

(declare-fun res!1007140 () Bool)

(assert (=> b!2372470 (=> (not res!1007140) (not e!1514073))))

(assert (=> b!2372470 (= res!1007140 (matchR!3067 (regOne!14412 r!13927) (_1!16423 (get!8529 lt!866430))))))

(declare-fun b!2372471 () Bool)

(assert (=> b!2372471 (= e!1514073 (= (++!6910 (_1!16423 (get!8529 lt!866430)) (_2!16423 (get!8529 lt!866430))) s!9460))))

(declare-fun b!2372472 () Bool)

(assert (=> b!2372472 (= e!1514074 (Some!5492 (tuple2!27765 Nil!28040 s!9460)))))

(declare-fun b!2372473 () Bool)

(assert (=> b!2372473 (= e!1514072 None!5492)))

(declare-fun b!2372474 () Bool)

(declare-fun e!1514071 () Bool)

(assert (=> b!2372474 (= e!1514071 (not (isDefined!4321 lt!866430)))))

(declare-fun d!695556 () Bool)

(assert (=> d!695556 e!1514071))

(declare-fun res!1007138 () Bool)

(assert (=> d!695556 (=> res!1007138 e!1514071)))

(assert (=> d!695556 (= res!1007138 e!1514073)))

(declare-fun res!1007141 () Bool)

(assert (=> d!695556 (=> (not res!1007141) (not e!1514073))))

(assert (=> d!695556 (= res!1007141 (isDefined!4321 lt!866430))))

(assert (=> d!695556 (= lt!866430 e!1514074)))

(declare-fun c!377106 () Bool)

(declare-fun e!1514070 () Bool)

(assert (=> d!695556 (= c!377106 e!1514070)))

(declare-fun res!1007139 () Bool)

(assert (=> d!695556 (=> (not res!1007139) (not e!1514070))))

(assert (=> d!695556 (= res!1007139 (matchR!3067 (regOne!14412 r!13927) Nil!28040))))

(assert (=> d!695556 (validRegex!2677 (regOne!14412 r!13927))))

(assert (=> d!695556 (= (findConcatSeparation!601 (regOne!14412 r!13927) (regTwo!14412 r!13927) Nil!28040 s!9460 s!9460) lt!866430)))

(declare-fun b!2372475 () Bool)

(assert (=> b!2372475 (= e!1514070 (matchR!3067 (regTwo!14412 r!13927) s!9460))))

(assert (= (and d!695556 res!1007139) b!2372475))

(assert (= (and d!695556 c!377106) b!2372472))

(assert (= (and d!695556 (not c!377106)) b!2372469))

(assert (= (and b!2372469 c!377107) b!2372473))

(assert (= (and b!2372469 (not c!377107)) b!2372467))

(assert (= (and d!695556 res!1007141) b!2372470))

(assert (= (and b!2372470 res!1007140) b!2372468))

(assert (= (and b!2372468 res!1007137) b!2372471))

(assert (= (and d!695556 (not res!1007138)) b!2372474))

(declare-fun m!2779757 () Bool)

(assert (=> d!695556 m!2779757))

(declare-fun m!2779759 () Bool)

(assert (=> d!695556 m!2779759))

(assert (=> d!695556 m!2779739))

(declare-fun m!2779761 () Bool)

(assert (=> b!2372471 m!2779761))

(declare-fun m!2779763 () Bool)

(assert (=> b!2372471 m!2779763))

(declare-fun m!2779765 () Bool)

(assert (=> b!2372475 m!2779765))

(assert (=> b!2372467 m!2779669))

(assert (=> b!2372467 m!2779669))

(assert (=> b!2372467 m!2779671))

(assert (=> b!2372467 m!2779673))

(assert (=> b!2372467 m!2779669))

(declare-fun m!2779767 () Bool)

(assert (=> b!2372467 m!2779767))

(assert (=> b!2372470 m!2779761))

(declare-fun m!2779769 () Bool)

(assert (=> b!2372470 m!2779769))

(assert (=> b!2372474 m!2779757))

(assert (=> b!2372468 m!2779761))

(declare-fun m!2779771 () Bool)

(assert (=> b!2372468 m!2779771))

(assert (=> b!2372120 d!695556))

(declare-fun d!695558 () Bool)

(assert (=> d!695558 (= (Exists!1012 lambda!87886) (choose!13815 lambda!87886))))

(declare-fun bs!461336 () Bool)

(assert (= bs!461336 d!695558))

(declare-fun m!2779773 () Bool)

(assert (=> bs!461336 m!2779773))

(assert (=> b!2372120 d!695558))

(declare-fun d!695560 () Bool)

(assert (=> d!695560 (= (isEmpty!15973 lt!866340) (is-Nil!28041 lt!866340))))

(assert (=> b!2372126 d!695560))

(declare-fun d!695562 () Bool)

(assert (=> d!695562 (= (tail!3409 l!9164) (t!208116 l!9164))))

(assert (=> b!2372126 d!695562))

(declare-fun b!2372476 () Bool)

(declare-fun res!1007142 () Bool)

(declare-fun e!1514080 () Bool)

(assert (=> b!2372476 (=> res!1007142 e!1514080)))

(assert (=> b!2372476 (= res!1007142 (not (is-ElementMatch!6950 lt!866338)))))

(declare-fun e!1514075 () Bool)

(assert (=> b!2372476 (= e!1514075 e!1514080)))

(declare-fun b!2372477 () Bool)

(declare-fun res!1007144 () Bool)

(assert (=> b!2372477 (=> res!1007144 e!1514080)))

(declare-fun e!1514078 () Bool)

(assert (=> b!2372477 (= res!1007144 e!1514078)))

(declare-fun res!1007147 () Bool)

(assert (=> b!2372477 (=> (not res!1007147) (not e!1514078))))

(declare-fun lt!866432 () Bool)

(assert (=> b!2372477 (= res!1007147 lt!866432)))

(declare-fun b!2372478 () Bool)

(declare-fun e!1514081 () Bool)

(declare-fun call!144211 () Bool)

(assert (=> b!2372478 (= e!1514081 (= lt!866432 call!144211))))

(declare-fun b!2372479 () Bool)

(declare-fun e!1514079 () Bool)

(declare-fun e!1514077 () Bool)

(assert (=> b!2372479 (= e!1514079 e!1514077)))

(declare-fun res!1007146 () Bool)

(assert (=> b!2372479 (=> res!1007146 e!1514077)))

(assert (=> b!2372479 (= res!1007146 call!144211)))

(declare-fun bm!144206 () Bool)

(assert (=> bm!144206 (= call!144211 (isEmpty!15976 s!9460))))

(declare-fun b!2372480 () Bool)

(assert (=> b!2372480 (= e!1514080 e!1514079)))

(declare-fun res!1007149 () Bool)

(assert (=> b!2372480 (=> (not res!1007149) (not e!1514079))))

(assert (=> b!2372480 (= res!1007149 (not lt!866432))))

(declare-fun b!2372481 () Bool)

(assert (=> b!2372481 (= e!1514078 (= (head!5141 s!9460) (c!377040 lt!866338)))))

(declare-fun b!2372482 () Bool)

(declare-fun res!1007143 () Bool)

(assert (=> b!2372482 (=> (not res!1007143) (not e!1514078))))

(assert (=> b!2372482 (= res!1007143 (not call!144211))))

(declare-fun d!695564 () Bool)

(assert (=> d!695564 e!1514081))

(declare-fun c!377110 () Bool)

(assert (=> d!695564 (= c!377110 (is-EmptyExpr!6950 lt!866338))))

(declare-fun e!1514076 () Bool)

(assert (=> d!695564 (= lt!866432 e!1514076)))

(declare-fun c!377109 () Bool)

(assert (=> d!695564 (= c!377109 (isEmpty!15976 s!9460))))

(assert (=> d!695564 (validRegex!2677 lt!866338)))

(assert (=> d!695564 (= (matchR!3067 lt!866338 s!9460) lt!866432)))

(declare-fun b!2372483 () Bool)

(declare-fun res!1007148 () Bool)

(assert (=> b!2372483 (=> res!1007148 e!1514077)))

(assert (=> b!2372483 (= res!1007148 (not (isEmpty!15976 (tail!3411 s!9460))))))

(declare-fun b!2372484 () Bool)

(assert (=> b!2372484 (= e!1514076 (nullable!2006 lt!866338))))

(declare-fun b!2372485 () Bool)

(assert (=> b!2372485 (= e!1514076 (matchR!3067 (derivativeStep!1664 lt!866338 (head!5141 s!9460)) (tail!3411 s!9460)))))

(declare-fun b!2372486 () Bool)

(assert (=> b!2372486 (= e!1514075 (not lt!866432))))

(declare-fun b!2372487 () Bool)

(assert (=> b!2372487 (= e!1514077 (not (= (head!5141 s!9460) (c!377040 lt!866338))))))

(declare-fun b!2372488 () Bool)

(declare-fun res!1007145 () Bool)

(assert (=> b!2372488 (=> (not res!1007145) (not e!1514078))))

(assert (=> b!2372488 (= res!1007145 (isEmpty!15976 (tail!3411 s!9460)))))

(declare-fun b!2372489 () Bool)

(assert (=> b!2372489 (= e!1514081 e!1514075)))

(declare-fun c!377108 () Bool)

(assert (=> b!2372489 (= c!377108 (is-EmptyLang!6950 lt!866338))))

(assert (= (and d!695564 c!377109) b!2372484))

(assert (= (and d!695564 (not c!377109)) b!2372485))

(assert (= (and d!695564 c!377110) b!2372478))

(assert (= (and d!695564 (not c!377110)) b!2372489))

(assert (= (and b!2372489 c!377108) b!2372486))

(assert (= (and b!2372489 (not c!377108)) b!2372476))

(assert (= (and b!2372476 (not res!1007142)) b!2372477))

(assert (= (and b!2372477 res!1007147) b!2372482))

(assert (= (and b!2372482 res!1007143) b!2372488))

(assert (= (and b!2372488 res!1007145) b!2372481))

(assert (= (and b!2372477 (not res!1007144)) b!2372480))

(assert (= (and b!2372480 res!1007149) b!2372479))

(assert (= (and b!2372479 (not res!1007146)) b!2372483))

(assert (= (and b!2372483 (not res!1007148)) b!2372487))

(assert (= (or b!2372478 b!2372479 b!2372482) bm!144206))

(assert (=> b!2372485 m!2779683))

(assert (=> b!2372485 m!2779683))

(declare-fun m!2779775 () Bool)

(assert (=> b!2372485 m!2779775))

(assert (=> b!2372485 m!2779687))

(assert (=> b!2372485 m!2779775))

(assert (=> b!2372485 m!2779687))

(declare-fun m!2779777 () Bool)

(assert (=> b!2372485 m!2779777))

(assert (=> b!2372483 m!2779687))

(assert (=> b!2372483 m!2779687))

(assert (=> b!2372483 m!2779691))

(assert (=> b!2372481 m!2779683))

(assert (=> b!2372484 m!2779651))

(assert (=> bm!144206 m!2779695))

(assert (=> d!695564 m!2779695))

(assert (=> d!695564 m!2779655))

(assert (=> b!2372488 m!2779687))

(assert (=> b!2372488 m!2779687))

(assert (=> b!2372488 m!2779691))

(assert (=> b!2372487 m!2779683))

(assert (=> b!2372115 d!695564))

(declare-fun d!695566 () Bool)

(declare-fun res!1007159 () Bool)

(declare-fun e!1514093 () Bool)

(assert (=> d!695566 (=> res!1007159 e!1514093)))

(assert (=> d!695566 (= res!1007159 (is-Nil!28041 l!9164))))

(assert (=> d!695566 (= (forall!5584 l!9164 lambda!87884) e!1514093)))

(declare-fun b!2372503 () Bool)

(declare-fun e!1514094 () Bool)

(assert (=> b!2372503 (= e!1514093 e!1514094)))

(declare-fun res!1007160 () Bool)

(assert (=> b!2372503 (=> (not res!1007160) (not e!1514094))))

(declare-fun dynLambda!12074 (Int Regex!6950) Bool)

(assert (=> b!2372503 (= res!1007160 (dynLambda!12074 lambda!87884 (h!33442 l!9164)))))

(declare-fun b!2372504 () Bool)

(assert (=> b!2372504 (= e!1514094 (forall!5584 (t!208116 l!9164) lambda!87884))))

(assert (= (and d!695566 (not res!1007159)) b!2372503))

(assert (= (and b!2372503 res!1007160) b!2372504))

(declare-fun b_lambda!73955 () Bool)

(assert (=> (not b_lambda!73955) (not b!2372503)))

(declare-fun m!2779783 () Bool)

(assert (=> b!2372503 m!2779783))

(declare-fun m!2779787 () Bool)

(assert (=> b!2372504 m!2779787))

(assert (=> start!232794 d!695566))

(declare-fun bs!461337 () Bool)

(declare-fun d!695568 () Bool)

(assert (= bs!461337 (and d!695568 start!232794)))

(declare-fun lambda!87916 () Int)

(assert (=> bs!461337 (= lambda!87916 lambda!87884)))

(declare-fun bs!461338 () Bool)

(assert (= bs!461338 (and d!695568 d!695512)))

(assert (=> bs!461338 (= lambda!87916 lambda!87900)))

(declare-fun b!2372505 () Bool)

(declare-fun e!1514099 () Bool)

(declare-fun lt!866433 () Regex!6950)

(assert (=> b!2372505 (= e!1514099 (isConcat!28 lt!866433))))

(declare-fun e!1514097 () Bool)

(assert (=> d!695568 e!1514097))

(declare-fun res!1007162 () Bool)

(assert (=> d!695568 (=> (not res!1007162) (not e!1514097))))

(assert (=> d!695568 (= res!1007162 (validRegex!2677 lt!866433))))

(declare-fun e!1514095 () Regex!6950)

(assert (=> d!695568 (= lt!866433 e!1514095)))

(declare-fun c!377114 () Bool)

(declare-fun e!1514098 () Bool)

(assert (=> d!695568 (= c!377114 e!1514098)))

(declare-fun res!1007161 () Bool)

(assert (=> d!695568 (=> (not res!1007161) (not e!1514098))))

(assert (=> d!695568 (= res!1007161 (is-Cons!28041 lt!866340))))

(assert (=> d!695568 (forall!5584 lt!866340 lambda!87916)))

(assert (=> d!695568 (= (generalisedConcat!51 lt!866340) lt!866433)))

(declare-fun b!2372506 () Bool)

(declare-fun e!1514096 () Bool)

(assert (=> b!2372506 (= e!1514096 (isEmptyExpr!28 lt!866433))))

(declare-fun b!2372507 () Bool)

(declare-fun e!1514100 () Regex!6950)

(assert (=> b!2372507 (= e!1514100 (Concat!11586 (h!33442 lt!866340) (generalisedConcat!51 (t!208116 lt!866340))))))

(declare-fun b!2372508 () Bool)

(assert (=> b!2372508 (= e!1514095 e!1514100)))

(declare-fun c!377113 () Bool)

(assert (=> b!2372508 (= c!377113 (is-Cons!28041 lt!866340))))

(declare-fun b!2372509 () Bool)

(assert (=> b!2372509 (= e!1514099 (= lt!866433 (head!5139 lt!866340)))))

(declare-fun b!2372510 () Bool)

(assert (=> b!2372510 (= e!1514095 (h!33442 lt!866340))))

(declare-fun b!2372511 () Bool)

(assert (=> b!2372511 (= e!1514100 EmptyExpr!6950)))

(declare-fun b!2372512 () Bool)

(assert (=> b!2372512 (= e!1514097 e!1514096)))

(declare-fun c!377115 () Bool)

(assert (=> b!2372512 (= c!377115 (isEmpty!15973 lt!866340))))

(declare-fun b!2372513 () Bool)

(assert (=> b!2372513 (= e!1514096 e!1514099)))

(declare-fun c!377116 () Bool)

(assert (=> b!2372513 (= c!377116 (isEmpty!15973 (tail!3409 lt!866340)))))

(declare-fun b!2372514 () Bool)

(assert (=> b!2372514 (= e!1514098 (isEmpty!15973 (t!208116 lt!866340)))))

(assert (= (and d!695568 res!1007161) b!2372514))

(assert (= (and d!695568 c!377114) b!2372510))

(assert (= (and d!695568 (not c!377114)) b!2372508))

(assert (= (and b!2372508 c!377113) b!2372507))

(assert (= (and b!2372508 (not c!377113)) b!2372511))

(assert (= (and d!695568 res!1007162) b!2372512))

(assert (= (and b!2372512 c!377115) b!2372506))

(assert (= (and b!2372512 (not c!377115)) b!2372513))

(assert (= (and b!2372513 c!377116) b!2372509))

(assert (= (and b!2372513 (not c!377116)) b!2372505))

(declare-fun m!2779789 () Bool)

(assert (=> b!2372514 m!2779789))

(declare-fun m!2779791 () Bool)

(assert (=> d!695568 m!2779791))

(declare-fun m!2779793 () Bool)

(assert (=> d!695568 m!2779793))

(declare-fun m!2779795 () Bool)

(assert (=> b!2372513 m!2779795))

(assert (=> b!2372513 m!2779795))

(declare-fun m!2779797 () Bool)

(assert (=> b!2372513 m!2779797))

(declare-fun m!2779799 () Bool)

(assert (=> b!2372509 m!2779799))

(declare-fun m!2779801 () Bool)

(assert (=> b!2372506 m!2779801))

(declare-fun m!2779803 () Bool)

(assert (=> b!2372505 m!2779803))

(declare-fun m!2779805 () Bool)

(assert (=> b!2372507 m!2779805))

(assert (=> b!2372512 m!2779519))

(assert (=> b!2372121 d!695568))

(declare-fun b!2372525 () Bool)

(declare-fun e!1514103 () Bool)

(assert (=> b!2372525 (= e!1514103 tp_is_empty!11313)))

(declare-fun b!2372527 () Bool)

(declare-fun tp!758167 () Bool)

(assert (=> b!2372527 (= e!1514103 tp!758167)))

(declare-fun b!2372526 () Bool)

(declare-fun tp!758166 () Bool)

(declare-fun tp!758169 () Bool)

(assert (=> b!2372526 (= e!1514103 (and tp!758166 tp!758169))))

(assert (=> b!2372122 (= tp!758131 e!1514103)))

(declare-fun b!2372528 () Bool)

(declare-fun tp!758170 () Bool)

(declare-fun tp!758168 () Bool)

(assert (=> b!2372528 (= e!1514103 (and tp!758170 tp!758168))))

(assert (= (and b!2372122 (is-ElementMatch!6950 (h!33442 l!9164))) b!2372525))

(assert (= (and b!2372122 (is-Concat!11586 (h!33442 l!9164))) b!2372526))

(assert (= (and b!2372122 (is-Star!6950 (h!33442 l!9164))) b!2372527))

(assert (= (and b!2372122 (is-Union!6950 (h!33442 l!9164))) b!2372528))

(declare-fun b!2372533 () Bool)

(declare-fun e!1514106 () Bool)

(declare-fun tp!758175 () Bool)

(declare-fun tp!758176 () Bool)

(assert (=> b!2372533 (= e!1514106 (and tp!758175 tp!758176))))

(assert (=> b!2372122 (= tp!758130 e!1514106)))

(assert (= (and b!2372122 (is-Cons!28041 (t!208116 l!9164))) b!2372533))

(declare-fun b!2372534 () Bool)

(declare-fun e!1514107 () Bool)

(assert (=> b!2372534 (= e!1514107 tp_is_empty!11313)))

(declare-fun b!2372536 () Bool)

(declare-fun tp!758178 () Bool)

(assert (=> b!2372536 (= e!1514107 tp!758178)))

(declare-fun b!2372535 () Bool)

(declare-fun tp!758177 () Bool)

(declare-fun tp!758180 () Bool)

(assert (=> b!2372535 (= e!1514107 (and tp!758177 tp!758180))))

(assert (=> b!2372118 (= tp!758124 e!1514107)))

(declare-fun b!2372537 () Bool)

(declare-fun tp!758181 () Bool)

(declare-fun tp!758179 () Bool)

(assert (=> b!2372537 (= e!1514107 (and tp!758181 tp!758179))))

(assert (= (and b!2372118 (is-ElementMatch!6950 (regOne!14413 r!13927))) b!2372534))

(assert (= (and b!2372118 (is-Concat!11586 (regOne!14413 r!13927))) b!2372535))

(assert (= (and b!2372118 (is-Star!6950 (regOne!14413 r!13927))) b!2372536))

(assert (= (and b!2372118 (is-Union!6950 (regOne!14413 r!13927))) b!2372537))

(declare-fun b!2372538 () Bool)

(declare-fun e!1514108 () Bool)

(assert (=> b!2372538 (= e!1514108 tp_is_empty!11313)))

(declare-fun b!2372540 () Bool)

(declare-fun tp!758183 () Bool)

(assert (=> b!2372540 (= e!1514108 tp!758183)))

(declare-fun b!2372539 () Bool)

(declare-fun tp!758182 () Bool)

(declare-fun tp!758185 () Bool)

(assert (=> b!2372539 (= e!1514108 (and tp!758182 tp!758185))))

(assert (=> b!2372118 (= tp!758129 e!1514108)))

(declare-fun b!2372541 () Bool)

(declare-fun tp!758186 () Bool)

(declare-fun tp!758184 () Bool)

(assert (=> b!2372541 (= e!1514108 (and tp!758186 tp!758184))))

(assert (= (and b!2372118 (is-ElementMatch!6950 (regTwo!14413 r!13927))) b!2372538))

(assert (= (and b!2372118 (is-Concat!11586 (regTwo!14413 r!13927))) b!2372539))

(assert (= (and b!2372118 (is-Star!6950 (regTwo!14413 r!13927))) b!2372540))

(assert (= (and b!2372118 (is-Union!6950 (regTwo!14413 r!13927))) b!2372541))

(declare-fun b!2372546 () Bool)

(declare-fun e!1514111 () Bool)

(declare-fun tp!758189 () Bool)

(assert (=> b!2372546 (= e!1514111 (and tp_is_empty!11313 tp!758189))))

(assert (=> b!2372129 (= tp!758127 e!1514111)))

(assert (= (and b!2372129 (is-Cons!28040 (t!208115 s!9460))) b!2372546))

(declare-fun b!2372547 () Bool)

(declare-fun e!1514112 () Bool)

(assert (=> b!2372547 (= e!1514112 tp_is_empty!11313)))

(declare-fun b!2372549 () Bool)

(declare-fun tp!758191 () Bool)

(assert (=> b!2372549 (= e!1514112 tp!758191)))

(declare-fun b!2372548 () Bool)

(declare-fun tp!758190 () Bool)

(declare-fun tp!758193 () Bool)

(assert (=> b!2372548 (= e!1514112 (and tp!758190 tp!758193))))

(assert (=> b!2372125 (= tp!758125 e!1514112)))

(declare-fun b!2372550 () Bool)

(declare-fun tp!758194 () Bool)

(declare-fun tp!758192 () Bool)

(assert (=> b!2372550 (= e!1514112 (and tp!758194 tp!758192))))

(assert (= (and b!2372125 (is-ElementMatch!6950 (reg!7279 r!13927))) b!2372547))

(assert (= (and b!2372125 (is-Concat!11586 (reg!7279 r!13927))) b!2372548))

(assert (= (and b!2372125 (is-Star!6950 (reg!7279 r!13927))) b!2372549))

(assert (= (and b!2372125 (is-Union!6950 (reg!7279 r!13927))) b!2372550))

(declare-fun b!2372551 () Bool)

(declare-fun e!1514113 () Bool)

(assert (=> b!2372551 (= e!1514113 tp_is_empty!11313)))

(declare-fun b!2372553 () Bool)

(declare-fun tp!758196 () Bool)

(assert (=> b!2372553 (= e!1514113 tp!758196)))

(declare-fun b!2372552 () Bool)

(declare-fun tp!758195 () Bool)

(declare-fun tp!758198 () Bool)

(assert (=> b!2372552 (= e!1514113 (and tp!758195 tp!758198))))

(assert (=> b!2372116 (= tp!758128 e!1514113)))

(declare-fun b!2372554 () Bool)

(declare-fun tp!758199 () Bool)

(declare-fun tp!758197 () Bool)

(assert (=> b!2372554 (= e!1514113 (and tp!758199 tp!758197))))

(assert (= (and b!2372116 (is-ElementMatch!6950 (regOne!14412 r!13927))) b!2372551))

(assert (= (and b!2372116 (is-Concat!11586 (regOne!14412 r!13927))) b!2372552))

(assert (= (and b!2372116 (is-Star!6950 (regOne!14412 r!13927))) b!2372553))

(assert (= (and b!2372116 (is-Union!6950 (regOne!14412 r!13927))) b!2372554))

(declare-fun b!2372555 () Bool)

(declare-fun e!1514114 () Bool)

(assert (=> b!2372555 (= e!1514114 tp_is_empty!11313)))

(declare-fun b!2372557 () Bool)

(declare-fun tp!758201 () Bool)

(assert (=> b!2372557 (= e!1514114 tp!758201)))

(declare-fun b!2372556 () Bool)

(declare-fun tp!758200 () Bool)

(declare-fun tp!758203 () Bool)

(assert (=> b!2372556 (= e!1514114 (and tp!758200 tp!758203))))

(assert (=> b!2372116 (= tp!758126 e!1514114)))

(declare-fun b!2372558 () Bool)

(declare-fun tp!758204 () Bool)

(declare-fun tp!758202 () Bool)

(assert (=> b!2372558 (= e!1514114 (and tp!758204 tp!758202))))

(assert (= (and b!2372116 (is-ElementMatch!6950 (regTwo!14412 r!13927))) b!2372555))

(assert (= (and b!2372116 (is-Concat!11586 (regTwo!14412 r!13927))) b!2372556))

(assert (= (and b!2372116 (is-Star!6950 (regTwo!14412 r!13927))) b!2372557))

(assert (= (and b!2372116 (is-Union!6950 (regTwo!14412 r!13927))) b!2372558))

(declare-fun b_lambda!73957 () Bool)

(assert (= b_lambda!73955 (or start!232794 b_lambda!73957)))

(declare-fun bs!461339 () Bool)

(declare-fun d!695572 () Bool)

(assert (= bs!461339 (and d!695572 start!232794)))

(assert (=> bs!461339 (= (dynLambda!12074 lambda!87884 (h!33442 l!9164)) (validRegex!2677 (h!33442 l!9164)))))

(declare-fun m!2779807 () Bool)

(assert (=> bs!461339 m!2779807))

(assert (=> b!2372503 d!695572))

(push 1)

(assert (not b!2372558))

(assert (not d!695522))

(assert (not b!2372343))

(assert (not b!2372557))

(assert (not bm!144188))

(assert (not d!695532))

(assert (not b!2372307))

(assert (not b!2372506))

(assert (not b!2372302))

(assert (not b!2372328))

(assert tp_is_empty!11313)

(assert (not b!2372335))

(assert (not d!695518))

(assert (not b!2372528))

(assert (not b!2372488))

(assert (not b!2372331))

(assert (not b!2372549))

(assert (not d!695556))

(assert (not bm!144191))

(assert (not b!2372416))

(assert (not b!2372539))

(assert (not b!2372552))

(assert (not bm!144198))

(assert (not b!2372400))

(assert (not b!2372216))

(assert (not b!2372344))

(assert (not b!2372348))

(assert (not b!2372548))

(assert (not b!2372540))

(assert (not b!2372422))

(assert (not b!2372423))

(assert (not b!2372512))

(assert (not b!2372513))

(assert (not b!2372467))

(assert (not b!2372327))

(assert (not b!2372334))

(assert (not b!2372306))

(assert (not d!695544))

(assert (not d!695524))

(assert (not b!2372330))

(assert (not b!2372219))

(assert (not b!2372536))

(assert (not b!2372420))

(assert (not b!2372345))

(assert (not d!695564))

(assert (not b!2372526))

(assert (not b!2372234))

(assert (not d!695534))

(assert (not b!2372514))

(assert (not d!695548))

(assert (not b!2372235))

(assert (not b!2372475))

(assert (not b!2372505))

(assert (not b!2372347))

(assert (not b!2372550))

(assert (not b!2372527))

(assert (not b!2372485))

(assert (not b!2372553))

(assert (not b!2372533))

(assert (not bm!144197))

(assert (not b!2372266))

(assert (not b!2372541))

(assert (not b!2372303))

(assert (not b!2372509))

(assert (not b!2372504))

(assert (not b!2372474))

(assert (not bm!144192))

(assert (not b!2372407))

(assert (not b!2372471))

(assert (not b!2372556))

(assert (not d!695528))

(assert (not bm!144206))

(assert (not b!2372222))

(assert (not b!2372224))

(assert (not b!2372481))

(assert (not d!695512))

(assert (not d!695550))

(assert (not b!2372468))

(assert (not b!2372215))

(assert (not b!2372341))

(assert (not b!2372418))

(assert (not bm!144199))

(assert (not b!2372484))

(assert (not b!2372300))

(assert (not b!2372470))

(assert (not d!695516))

(assert (not b!2372546))

(assert (not d!695552))

(assert (not b!2372304))

(assert (not b!2372483))

(assert (not b!2372554))

(assert (not b!2372256))

(assert (not b!2372507))

(assert (not b_lambda!73957))

(assert (not b!2372217))

(assert (not bm!144186))

(assert (not b!2372419))

(assert (not b!2372487))

(assert (not b!2372223))

(assert (not d!695558))

(assert (not b!2372535))

(assert (not b!2372537))

(assert (not d!695540))

(assert (not d!695568))

(assert (not d!695542))

(assert (not bs!461339))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

