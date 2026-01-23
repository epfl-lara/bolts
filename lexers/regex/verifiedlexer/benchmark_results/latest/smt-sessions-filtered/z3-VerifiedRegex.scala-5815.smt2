; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286800 () Bool)

(assert start!286800)

(declare-fun b!2959280 () Bool)

(assert (=> b!2959280 true))

(assert (=> b!2959280 true))

(assert (=> b!2959280 true))

(declare-fun lambda!110322 () Int)

(declare-fun lambda!110321 () Int)

(assert (=> b!2959280 (not (= lambda!110322 lambda!110321))))

(assert (=> b!2959280 true))

(assert (=> b!2959280 true))

(assert (=> b!2959280 true))

(declare-fun b!2959276 () Bool)

(declare-fun e!1862968 () Bool)

(declare-fun e!1862970 () Bool)

(assert (=> b!2959276 (= e!1862968 (not e!1862970))))

(declare-fun res!1221055 () Bool)

(assert (=> b!2959276 (=> res!1221055 e!1862970)))

(declare-fun lt!1033778 () Bool)

(declare-datatypes ((C!18548 0))(
  ( (C!18549 (val!11310 Int)) )
))
(declare-datatypes ((Regex!9181 0))(
  ( (ElementMatch!9181 (c!484905 C!18548)) (Concat!14502 (regOne!18874 Regex!9181) (regTwo!18874 Regex!9181)) (EmptyExpr!9181) (Star!9181 (reg!9510 Regex!9181)) (EmptyLang!9181) (Union!9181 (regOne!18875 Regex!9181) (regTwo!18875 Regex!9181)) )
))
(declare-fun r!17423 () Regex!9181)

(get-info :version)

(assert (=> b!2959276 (= res!1221055 (or lt!1033778 (not ((_ is Concat!14502) r!17423))))))

(declare-datatypes ((List!35046 0))(
  ( (Nil!34922) (Cons!34922 (h!40342 C!18548) (t!234111 List!35046)) )
))
(declare-fun s!11993 () List!35046)

(declare-fun matchRSpec!1318 (Regex!9181 List!35046) Bool)

(assert (=> b!2959276 (= lt!1033778 (matchRSpec!1318 r!17423 s!11993))))

(declare-fun matchR!4063 (Regex!9181 List!35046) Bool)

(assert (=> b!2959276 (= lt!1033778 (matchR!4063 r!17423 s!11993))))

(declare-datatypes ((Unit!48741 0))(
  ( (Unit!48742) )
))
(declare-fun lt!1033779 () Unit!48741)

(declare-fun mainMatchTheorem!1318 (Regex!9181 List!35046) Unit!48741)

(assert (=> b!2959276 (= lt!1033779 (mainMatchTheorem!1318 r!17423 s!11993))))

(declare-fun b!2959277 () Bool)

(declare-fun e!1862967 () Bool)

(declare-fun tp!944532 () Bool)

(declare-fun tp!944531 () Bool)

(assert (=> b!2959277 (= e!1862967 (and tp!944532 tp!944531))))

(declare-fun res!1221053 () Bool)

(assert (=> start!286800 (=> (not res!1221053) (not e!1862968))))

(declare-fun validRegex!3914 (Regex!9181) Bool)

(assert (=> start!286800 (= res!1221053 (validRegex!3914 r!17423))))

(assert (=> start!286800 e!1862968))

(assert (=> start!286800 e!1862967))

(declare-fun e!1862969 () Bool)

(assert (=> start!286800 e!1862969))

(declare-fun b!2959278 () Bool)

(declare-fun e!1862971 () Bool)

(assert (=> b!2959278 (= e!1862971 true)))

(declare-datatypes ((tuple2!33880 0))(
  ( (tuple2!33881 (_1!20072 List!35046) (_2!20072 List!35046)) )
))
(declare-fun lt!1033777 () tuple2!33880)

(declare-fun lt!1033771 () Regex!9181)

(assert (=> b!2959278 (= (matchR!4063 (regTwo!18874 r!17423) (_2!20072 lt!1033777)) (matchR!4063 lt!1033771 (_2!20072 lt!1033777)))))

(declare-fun lt!1033773 () Unit!48741)

(declare-fun lemmaSimplifySound!120 (Regex!9181 List!35046) Unit!48741)

(assert (=> b!2959278 (= lt!1033773 (lemmaSimplifySound!120 (regTwo!18874 r!17423) (_2!20072 lt!1033777)))))

(declare-fun lt!1033769 () Regex!9181)

(assert (=> b!2959278 (= (matchR!4063 (regOne!18874 r!17423) (_1!20072 lt!1033777)) (matchR!4063 lt!1033769 (_1!20072 lt!1033777)))))

(declare-fun lt!1033772 () Unit!48741)

(assert (=> b!2959278 (= lt!1033772 (lemmaSimplifySound!120 (regOne!18874 r!17423) (_1!20072 lt!1033777)))))

(declare-datatypes ((Option!6672 0))(
  ( (None!6671) (Some!6671 (v!34805 tuple2!33880)) )
))
(declare-fun lt!1033775 () Option!6672)

(declare-fun get!10735 (Option!6672) tuple2!33880)

(assert (=> b!2959278 (= lt!1033777 (get!10735 lt!1033775))))

(declare-fun b!2959279 () Bool)

(declare-fun tp_is_empty!15925 () Bool)

(declare-fun tp!944529 () Bool)

(assert (=> b!2959279 (= e!1862969 (and tp_is_empty!15925 tp!944529))))

(declare-fun e!1862973 () Bool)

(assert (=> b!2959280 (= e!1862973 e!1862971)))

(declare-fun res!1221050 () Bool)

(assert (=> b!2959280 (=> res!1221050 e!1862971)))

(declare-fun lt!1033770 () Bool)

(assert (=> b!2959280 (= res!1221050 (not lt!1033770))))

(declare-fun Exists!1513 (Int) Bool)

(assert (=> b!2959280 (= (Exists!1513 lambda!110321) (Exists!1513 lambda!110322))))

(declare-fun lt!1033776 () Unit!48741)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!534 (Regex!9181 Regex!9181 List!35046) Unit!48741)

(assert (=> b!2959280 (= lt!1033776 (lemmaExistCutMatchRandMatchRSpecEquivalent!534 lt!1033769 lt!1033771 s!11993))))

(assert (=> b!2959280 (= lt!1033770 (Exists!1513 lambda!110321))))

(declare-fun isDefined!5223 (Option!6672) Bool)

(assert (=> b!2959280 (= lt!1033770 (isDefined!5223 lt!1033775))))

(declare-fun findConcatSeparation!1066 (Regex!9181 Regex!9181 List!35046 List!35046 List!35046) Option!6672)

(assert (=> b!2959280 (= lt!1033775 (findConcatSeparation!1066 lt!1033769 lt!1033771 Nil!34922 s!11993 s!11993))))

(declare-fun lt!1033774 () Unit!48741)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!844 (Regex!9181 Regex!9181 List!35046) Unit!48741)

(assert (=> b!2959280 (= lt!1033774 (lemmaFindConcatSeparationEquivalentToExists!844 lt!1033769 lt!1033771 s!11993))))

(declare-fun lt!1033780 () Regex!9181)

(assert (=> b!2959280 (matchRSpec!1318 lt!1033780 s!11993)))

(declare-fun lt!1033781 () Unit!48741)

(assert (=> b!2959280 (= lt!1033781 (mainMatchTheorem!1318 lt!1033780 s!11993))))

(declare-fun b!2959281 () Bool)

(declare-fun e!1862972 () Bool)

(assert (=> b!2959281 (= e!1862970 e!1862972)))

(declare-fun res!1221048 () Bool)

(assert (=> b!2959281 (=> res!1221048 e!1862972)))

(declare-fun isEmptyLang!303 (Regex!9181) Bool)

(assert (=> b!2959281 (= res!1221048 (isEmptyLang!303 lt!1033769))))

(declare-fun simplify!186 (Regex!9181) Regex!9181)

(assert (=> b!2959281 (= lt!1033771 (simplify!186 (regTwo!18874 r!17423)))))

(assert (=> b!2959281 (= lt!1033769 (simplify!186 (regOne!18874 r!17423)))))

(declare-fun b!2959282 () Bool)

(assert (=> b!2959282 (= e!1862972 e!1862973)))

(declare-fun res!1221056 () Bool)

(assert (=> b!2959282 (=> res!1221056 e!1862973)))

(assert (=> b!2959282 (= res!1221056 (not (matchR!4063 lt!1033780 s!11993)))))

(assert (=> b!2959282 (= lt!1033780 (Concat!14502 lt!1033769 lt!1033771))))

(declare-fun b!2959283 () Bool)

(assert (=> b!2959283 (= e!1862967 tp_is_empty!15925)))

(declare-fun b!2959284 () Bool)

(declare-fun tp!944528 () Bool)

(declare-fun tp!944533 () Bool)

(assert (=> b!2959284 (= e!1862967 (and tp!944528 tp!944533))))

(declare-fun b!2959285 () Bool)

(declare-fun res!1221051 () Bool)

(assert (=> b!2959285 (=> res!1221051 e!1862972)))

(declare-fun isEmptyExpr!384 (Regex!9181) Bool)

(assert (=> b!2959285 (= res!1221051 (isEmptyExpr!384 lt!1033769))))

(declare-fun b!2959286 () Bool)

(declare-fun res!1221052 () Bool)

(assert (=> b!2959286 (=> res!1221052 e!1862970)))

(declare-fun isEmpty!19206 (List!35046) Bool)

(assert (=> b!2959286 (= res!1221052 (isEmpty!19206 s!11993))))

(declare-fun b!2959287 () Bool)

(declare-fun res!1221054 () Bool)

(assert (=> b!2959287 (=> res!1221054 e!1862972)))

(assert (=> b!2959287 (= res!1221054 (isEmptyExpr!384 lt!1033771))))

(declare-fun b!2959288 () Bool)

(declare-fun tp!944530 () Bool)

(assert (=> b!2959288 (= e!1862967 tp!944530)))

(declare-fun b!2959289 () Bool)

(declare-fun res!1221049 () Bool)

(assert (=> b!2959289 (=> res!1221049 e!1862972)))

(assert (=> b!2959289 (= res!1221049 (isEmptyLang!303 lt!1033771))))

(assert (= (and start!286800 res!1221053) b!2959276))

(assert (= (and b!2959276 (not res!1221055)) b!2959286))

(assert (= (and b!2959286 (not res!1221052)) b!2959281))

(assert (= (and b!2959281 (not res!1221048)) b!2959289))

(assert (= (and b!2959289 (not res!1221049)) b!2959285))

(assert (= (and b!2959285 (not res!1221051)) b!2959287))

(assert (= (and b!2959287 (not res!1221054)) b!2959282))

(assert (= (and b!2959282 (not res!1221056)) b!2959280))

(assert (= (and b!2959280 (not res!1221050)) b!2959278))

(assert (= (and start!286800 ((_ is ElementMatch!9181) r!17423)) b!2959283))

(assert (= (and start!286800 ((_ is Concat!14502) r!17423)) b!2959277))

(assert (= (and start!286800 ((_ is Star!9181) r!17423)) b!2959288))

(assert (= (and start!286800 ((_ is Union!9181) r!17423)) b!2959284))

(assert (= (and start!286800 ((_ is Cons!34922) s!11993)) b!2959279))

(declare-fun m!3333583 () Bool)

(assert (=> b!2959287 m!3333583))

(declare-fun m!3333585 () Bool)

(assert (=> b!2959278 m!3333585))

(declare-fun m!3333587 () Bool)

(assert (=> b!2959278 m!3333587))

(declare-fun m!3333589 () Bool)

(assert (=> b!2959278 m!3333589))

(declare-fun m!3333591 () Bool)

(assert (=> b!2959278 m!3333591))

(declare-fun m!3333593 () Bool)

(assert (=> b!2959278 m!3333593))

(declare-fun m!3333595 () Bool)

(assert (=> b!2959278 m!3333595))

(declare-fun m!3333597 () Bool)

(assert (=> b!2959278 m!3333597))

(declare-fun m!3333599 () Bool)

(assert (=> b!2959276 m!3333599))

(declare-fun m!3333601 () Bool)

(assert (=> b!2959276 m!3333601))

(declare-fun m!3333603 () Bool)

(assert (=> b!2959276 m!3333603))

(declare-fun m!3333605 () Bool)

(assert (=> b!2959280 m!3333605))

(declare-fun m!3333607 () Bool)

(assert (=> b!2959280 m!3333607))

(declare-fun m!3333609 () Bool)

(assert (=> b!2959280 m!3333609))

(declare-fun m!3333611 () Bool)

(assert (=> b!2959280 m!3333611))

(declare-fun m!3333613 () Bool)

(assert (=> b!2959280 m!3333613))

(declare-fun m!3333615 () Bool)

(assert (=> b!2959280 m!3333615))

(assert (=> b!2959280 m!3333615))

(declare-fun m!3333617 () Bool)

(assert (=> b!2959280 m!3333617))

(declare-fun m!3333619 () Bool)

(assert (=> b!2959280 m!3333619))

(declare-fun m!3333621 () Bool)

(assert (=> start!286800 m!3333621))

(declare-fun m!3333623 () Bool)

(assert (=> b!2959281 m!3333623))

(declare-fun m!3333625 () Bool)

(assert (=> b!2959281 m!3333625))

(declare-fun m!3333627 () Bool)

(assert (=> b!2959281 m!3333627))

(declare-fun m!3333629 () Bool)

(assert (=> b!2959282 m!3333629))

(declare-fun m!3333631 () Bool)

(assert (=> b!2959286 m!3333631))

(declare-fun m!3333633 () Bool)

(assert (=> b!2959285 m!3333633))

(declare-fun m!3333635 () Bool)

(assert (=> b!2959289 m!3333635))

(check-sat (not b!2959282) (not b!2959276) (not b!2959288) (not b!2959287) (not b!2959279) (not b!2959278) (not b!2959281) (not b!2959285) (not start!286800) (not b!2959280) (not b!2959286) (not b!2959289) (not b!2959277) (not b!2959284) tp_is_empty!15925)
(check-sat)
