; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!235236 () Bool)

(assert start!235236)

(declare-fun b!2397473 () Bool)

(assert (=> b!2397473 true))

(assert (=> b!2397473 true))

(declare-fun lambda!90031 () Int)

(declare-fun lambda!90030 () Int)

(assert (=> b!2397473 (not (= lambda!90031 lambda!90030))))

(assert (=> b!2397473 true))

(assert (=> b!2397473 true))

(declare-fun b!2397465 () Bool)

(declare-fun e!1527713 () Bool)

(declare-fun call!146369 () Bool)

(assert (=> b!2397465 (= e!1527713 call!146369)))

(declare-fun b!2397466 () Bool)

(declare-datatypes ((Unit!41300 0))(
  ( (Unit!41301) )
))
(declare-fun e!1527715 () Unit!41300)

(declare-fun Unit!41302 () Unit!41300)

(assert (=> b!2397466 (= e!1527715 Unit!41302)))

(assert (=> b!2397466 false))

(declare-fun b!2397467 () Bool)

(declare-fun e!1527719 () Bool)

(declare-fun call!146373 () Bool)

(assert (=> b!2397467 (= e!1527719 call!146373)))

(declare-fun b!2397468 () Bool)

(declare-fun e!1527716 () Bool)

(declare-fun tp!763260 () Bool)

(declare-fun tp!763263 () Bool)

(assert (=> b!2397468 (= e!1527716 (and tp!763260 tp!763263))))

(declare-datatypes ((C!14208 0))(
  ( (C!14209 (val!8346 Int)) )
))
(declare-datatypes ((Regex!7025 0))(
  ( (ElementMatch!7025 (c!381609 C!14208)) (Concat!11661 (regOne!14562 Regex!7025) (regTwo!14562 Regex!7025)) (EmptyExpr!7025) (Star!7025 (reg!7354 Regex!7025)) (EmptyLang!7025) (Union!7025 (regOne!14563 Regex!7025) (regTwo!14563 Regex!7025)) )
))
(declare-datatypes ((List!28288 0))(
  ( (Nil!28190) (Cons!28190 (h!33591 Regex!7025) (t!208265 List!28288)) )
))
(declare-fun l!9164 () List!28288)

(declare-fun e!1527723 () Bool)

(declare-fun b!2397469 () Bool)

(declare-datatypes ((List!28289 0))(
  ( (Nil!28191) (Cons!28191 (h!33592 C!14208) (t!208266 List!28289)) )
))
(declare-fun s!9460 () List!28289)

(declare-fun lt!872090 () Bool)

(declare-datatypes ((tuple2!27914 0))(
  ( (tuple2!27915 (_1!16498 List!28289) (_2!16498 List!28289)) )
))
(declare-datatypes ((Option!5568 0))(
  ( (None!5567) (Some!5567 (v!30975 tuple2!27914)) )
))
(declare-fun isDefined!4396 (Option!5568) Bool)

(declare-fun findConcatSeparation!676 (Regex!7025 Regex!7025 List!28289 List!28289 List!28289) Option!5568)

(declare-fun generalisedConcat!126 (List!28288) Regex!7025)

(assert (=> b!2397469 (= e!1527723 (not (= lt!872090 (isDefined!4396 (findConcatSeparation!676 (h!33591 l!9164) (generalisedConcat!126 (t!208265 l!9164)) Nil!28191 s!9460 s!9460)))))))

(declare-fun lt!872092 () Regex!7025)

(declare-fun call!146376 () Regex!7025)

(declare-fun b!2397470 () Bool)

(assert (=> b!2397470 (= lt!872090 (isDefined!4396 (findConcatSeparation!676 lt!872092 call!146376 Nil!28191 s!9460 s!9460)))))

(declare-fun lt!872097 () Unit!41300)

(declare-fun e!1527720 () Unit!41300)

(assert (=> b!2397470 (= lt!872097 e!1527720)))

(declare-fun c!381608 () Bool)

(declare-fun matchR!3142 (Regex!7025 List!28289) Bool)

(assert (=> b!2397470 (= c!381608 (matchR!3142 lt!872092 s!9460))))

(declare-fun call!146371 () Regex!7025)

(assert (=> b!2397470 (= lt!872092 call!146371)))

(declare-fun e!1527718 () Unit!41300)

(declare-fun Unit!41303 () Unit!41300)

(assert (=> b!2397470 (= e!1527718 Unit!41303)))

(declare-fun b!2397471 () Bool)

(declare-fun e!1527724 () Bool)

(declare-fun e!1527711 () Bool)

(assert (=> b!2397471 (= e!1527724 e!1527711)))

(declare-fun res!1018685 () Bool)

(assert (=> b!2397471 (=> res!1018685 e!1527711)))

(declare-fun validRegex!2750 (Regex!7025) Bool)

(assert (=> b!2397471 (= res!1018685 (not (validRegex!2750 (h!33591 l!9164))))))

(declare-fun lt!872098 () Regex!7025)

(assert (=> b!2397471 (= lt!872098 (generalisedConcat!126 (t!208265 l!9164)))))

(declare-fun call!146375 () Option!5568)

(declare-fun call!146370 () Option!5568)

(declare-fun c!381607 () Bool)

(declare-fun call!146378 () Bool)

(declare-fun bm!146363 () Bool)

(assert (=> bm!146363 (= call!146378 (isDefined!4396 (ite c!381607 call!146375 call!146370)))))

(declare-fun bm!146364 () Bool)

(assert (=> bm!146364 (= call!146370 (findConcatSeparation!676 (ite c!381607 lt!872092 call!146371) (ite c!381607 EmptyExpr!7025 call!146376) Nil!28191 s!9460 s!9460))))

(declare-fun b!2397472 () Bool)

(declare-fun res!1018682 () Bool)

(assert (=> b!2397472 (=> res!1018682 e!1527711)))

(assert (=> b!2397472 (= res!1018682 (not (validRegex!2750 lt!872098)))))

(declare-fun bm!146365 () Bool)

(declare-fun call!146377 () Bool)

(declare-fun lt!872099 () Option!5568)

(declare-fun call!146372 () Option!5568)

(assert (=> bm!146365 (= call!146377 (isDefined!4396 (ite c!381608 call!146372 lt!872099)))))

(declare-fun e!1527721 () Bool)

(declare-fun e!1527726 () Bool)

(assert (=> b!2397473 (= e!1527721 e!1527726)))

(declare-fun res!1018677 () Bool)

(assert (=> b!2397473 (=> res!1018677 e!1527726)))

(declare-fun lt!872100 () Bool)

(declare-fun lt!872091 () Bool)

(assert (=> b!2397473 (= res!1018677 (not (= lt!872100 lt!872091)))))

(declare-fun Exists!1087 (Int) Bool)

(assert (=> b!2397473 (= (Exists!1087 lambda!90030) (Exists!1087 lambda!90031))))

(declare-fun lt!872094 () Unit!41300)

(declare-fun r!13927 () Regex!7025)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!426 (Regex!7025 Regex!7025 List!28289) Unit!41300)

(assert (=> b!2397473 (= lt!872094 (lemmaExistCutMatchRandMatchRSpecEquivalent!426 (regOne!14562 r!13927) (regTwo!14562 r!13927) s!9460))))

(assert (=> b!2397473 (= lt!872091 (Exists!1087 lambda!90030))))

(assert (=> b!2397473 (= lt!872091 (isDefined!4396 (findConcatSeparation!676 (regOne!14562 r!13927) (regTwo!14562 r!13927) Nil!28191 s!9460 s!9460)))))

(declare-fun lt!872096 () Unit!41300)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!676 (Regex!7025 Regex!7025 List!28289) Unit!41300)

(assert (=> b!2397473 (= lt!872096 (lemmaFindConcatSeparationEquivalentToExists!676 (regOne!14562 r!13927) (regTwo!14562 r!13927) s!9460))))

(declare-fun b!2397474 () Bool)

(declare-fun e!1527714 () Bool)

(assert (=> b!2397474 (= e!1527714 (not e!1527721))))

(declare-fun res!1018683 () Bool)

(assert (=> b!2397474 (=> res!1018683 e!1527721)))

(get-info :version)

(assert (=> b!2397474 (= res!1018683 (not ((_ is Concat!11661) r!13927)))))

(assert (=> b!2397474 (= lt!872090 lt!872100)))

(declare-fun matchRSpec!874 (Regex!7025 List!28289) Bool)

(assert (=> b!2397474 (= lt!872100 (matchRSpec!874 r!13927 s!9460))))

(assert (=> b!2397474 (= lt!872090 (matchR!3142 r!13927 s!9460))))

(declare-fun lt!872088 () Unit!41300)

(declare-fun mainMatchTheorem!874 (Regex!7025 List!28289) Unit!41300)

(assert (=> b!2397474 (= lt!872088 (mainMatchTheorem!874 r!13927 s!9460))))

(declare-fun b!2397475 () Bool)

(declare-fun res!1018679 () Bool)

(assert (=> b!2397475 (=> res!1018679 e!1527724)))

(assert (=> b!2397475 (= res!1018679 (not ((_ is Cons!28190) l!9164)))))

(declare-fun call!146368 () Regex!7025)

(declare-fun bm!146366 () Bool)

(assert (=> bm!146366 (= call!146375 (findConcatSeparation!676 lt!872092 call!146368 Nil!28191 s!9460 s!9460))))

(declare-fun b!2397476 () Bool)

(declare-fun isEmpty!16183 (List!28289) Bool)

(assert (=> b!2397476 (= e!1527723 (not (= lt!872090 (isEmpty!16183 s!9460))))))

(declare-fun b!2397477 () Bool)

(declare-fun e!1527712 () Unit!41300)

(declare-fun Unit!41304 () Unit!41300)

(assert (=> b!2397477 (= e!1527712 Unit!41304)))

(declare-fun b!2397478 () Bool)

(declare-fun e!1527722 () Bool)

(assert (=> b!2397478 e!1527722))

(declare-fun res!1018681 () Bool)

(assert (=> b!2397478 (=> (not res!1018681) (not e!1527722))))

(assert (=> b!2397478 (= res!1018681 call!146373)))

(declare-fun lt!872103 () tuple2!27914)

(declare-fun lt!872089 () Unit!41300)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!44 (Regex!7025 Regex!7025 List!28289 List!28289 List!28289) Unit!41300)

(assert (=> b!2397478 (= lt!872089 (lemmaFindSeparationIsDefinedThenConcatMatches!44 lt!872092 EmptyExpr!7025 (_1!16498 lt!872103) (_2!16498 lt!872103) s!9460))))

(declare-fun get!8635 (Option!5568) tuple2!27914)

(assert (=> b!2397478 (= lt!872103 (get!8635 lt!872099))))

(declare-fun Unit!41305 () Unit!41300)

(assert (=> b!2397478 (= e!1527712 Unit!41305)))

(declare-fun b!2397479 () Bool)

(declare-fun res!1018686 () Bool)

(assert (=> b!2397479 (=> (not res!1018686) (not e!1527714))))

(assert (=> b!2397479 (= res!1018686 (= r!13927 (generalisedConcat!126 l!9164)))))

(declare-fun b!2397480 () Bool)

(assert (=> b!2397480 (= e!1527715 e!1527718)))

(declare-fun lt!872104 () List!28288)

(declare-fun tail!3551 (List!28288) List!28288)

(assert (=> b!2397480 (= lt!872104 (tail!3551 l!9164))))

(declare-fun isEmpty!16184 (List!28288) Bool)

(assert (=> b!2397480 (= c!381607 (isEmpty!16184 lt!872104))))

(declare-fun b!2397481 () Bool)

(assert (=> b!2397481 (= lt!872090 call!146378)))

(declare-fun Unit!41306 () Unit!41300)

(assert (=> b!2397481 (= e!1527718 Unit!41306)))

(declare-fun b!2397482 () Bool)

(declare-fun e!1527717 () Bool)

(declare-fun tp!763258 () Bool)

(declare-fun tp!763261 () Bool)

(assert (=> b!2397482 (= e!1527717 (and tp!763258 tp!763261))))

(declare-fun b!2397483 () Bool)

(declare-fun Unit!41307 () Unit!41300)

(assert (=> b!2397483 (= e!1527720 Unit!41307)))

(assert (=> b!2397483 (= lt!872099 call!146372)))

(declare-fun lt!872095 () Bool)

(assert (=> b!2397483 (= lt!872095 call!146377)))

(declare-fun c!381606 () Bool)

(assert (=> b!2397483 (= c!381606 lt!872095)))

(declare-fun lt!872101 () Unit!41300)

(assert (=> b!2397483 (= lt!872101 e!1527712)))

(declare-fun res!1018676 () Bool)

(assert (=> b!2397483 (= res!1018676 (not lt!872095))))

(declare-fun e!1527725 () Bool)

(assert (=> b!2397483 (=> (not res!1018676) (not e!1527725))))

(assert (=> b!2397483 e!1527725))

(declare-fun bm!146367 () Bool)

(assert (=> bm!146367 (= call!146368 call!146376)))

(declare-fun b!2397484 () Bool)

(declare-fun tp!763262 () Bool)

(declare-fun tp!763259 () Bool)

(assert (=> b!2397484 (= e!1527717 (and tp!763262 tp!763259))))

(declare-fun b!2397485 () Bool)

(declare-fun Unit!41308 () Unit!41300)

(assert (=> b!2397485 (= e!1527720 Unit!41308)))

(declare-fun lt!872105 () Unit!41300)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!62 (Regex!7025 Regex!7025 List!28289 List!28289) Unit!41300)

(assert (=> b!2397485 (= lt!872105 (lemmaTwoRegexMatchThenConcatMatchesConcatString!62 lt!872092 EmptyExpr!7025 s!9460 Nil!28191))))

(declare-fun lt!872102 () Regex!7025)

(assert (=> b!2397485 (= lt!872102 (Concat!11661 lt!872092 EmptyExpr!7025))))

(declare-fun res!1018678 () Bool)

(declare-fun call!146374 () List!28289)

(assert (=> b!2397485 (= res!1018678 (matchR!3142 lt!872102 call!146374))))

(assert (=> b!2397485 (=> (not res!1018678) (not e!1527719))))

(assert (=> b!2397485 e!1527719))

(declare-fun lt!872093 () Unit!41300)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!44 (Regex!7025 Regex!7025 List!28289) Unit!41300)

(assert (=> b!2397485 (= lt!872093 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!44 lt!872092 EmptyExpr!7025 s!9460))))

(declare-fun res!1018680 () Bool)

(assert (=> b!2397485 (= res!1018680 call!146377)))

(assert (=> b!2397485 (=> (not res!1018680) (not e!1527713))))

(assert (=> b!2397485 e!1527713))

(declare-fun b!2397486 () Bool)

(assert (=> b!2397486 (= e!1527725 (not call!146369))))

(declare-fun res!1018675 () Bool)

(assert (=> start!235236 (=> (not res!1018675) (not e!1527714))))

(declare-fun lambda!90029 () Int)

(declare-fun forall!5659 (List!28288 Int) Bool)

(assert (=> start!235236 (= res!1018675 (forall!5659 l!9164 lambda!90029))))

(assert (=> start!235236 e!1527714))

(assert (=> start!235236 e!1527716))

(assert (=> start!235236 e!1527717))

(declare-fun e!1527710 () Bool)

(assert (=> start!235236 e!1527710))

(declare-fun bm!146368 () Bool)

(declare-fun ++!6979 (List!28289 List!28289) List!28289)

(assert (=> bm!146368 (= call!146374 (++!6979 (ite c!381608 s!9460 (_1!16498 lt!872103)) (ite c!381608 Nil!28191 (_2!16498 lt!872103))))))

(declare-fun bm!146369 () Bool)

(assert (=> bm!146369 (= call!146376 (generalisedConcat!126 lt!872104))))

(declare-fun bm!146370 () Bool)

(assert (=> bm!146370 (= call!146372 call!146370)))

(declare-fun b!2397487 () Bool)

(assert (=> b!2397487 (= e!1527711 (= (++!6979 Nil!28191 s!9460) s!9460))))

(declare-fun b!2397488 () Bool)

(declare-fun tp!763257 () Bool)

(assert (=> b!2397488 (= e!1527717 tp!763257)))

(declare-fun b!2397489 () Bool)

(assert (=> b!2397489 (= e!1527722 false)))

(declare-fun bm!146371 () Bool)

(assert (=> bm!146371 (= call!146369 call!146378)))

(declare-fun b!2397490 () Bool)

(declare-fun tp_is_empty!11463 () Bool)

(assert (=> b!2397490 (= e!1527717 tp_is_empty!11463)))

(declare-fun bm!146372 () Bool)

(declare-fun head!5281 (List!28288) Regex!7025)

(assert (=> bm!146372 (= call!146371 (head!5281 l!9164))))

(declare-fun b!2397491 () Bool)

(assert (=> b!2397491 (= e!1527726 e!1527724)))

(declare-fun res!1018684 () Bool)

(assert (=> b!2397491 (=> res!1018684 e!1527724)))

(assert (=> b!2397491 (= res!1018684 e!1527723)))

(declare-fun c!381605 () Bool)

(assert (=> b!2397491 (= c!381605 ((_ is Cons!28190) l!9164))))

(declare-fun lt!872106 () Unit!41300)

(assert (=> b!2397491 (= lt!872106 e!1527715)))

(declare-fun c!381604 () Bool)

(assert (=> b!2397491 (= c!381604 (isEmpty!16184 l!9164))))

(declare-fun b!2397492 () Bool)

(declare-fun tp!763256 () Bool)

(assert (=> b!2397492 (= e!1527710 (and tp_is_empty!11463 tp!763256))))

(declare-fun bm!146373 () Bool)

(assert (=> bm!146373 (= call!146373 (matchR!3142 (ite c!381608 lt!872102 (Concat!11661 lt!872092 EmptyExpr!7025)) (ite c!381608 s!9460 call!146374)))))

(assert (= (and start!235236 res!1018675) b!2397479))

(assert (= (and b!2397479 res!1018686) b!2397474))

(assert (= (and b!2397474 (not res!1018683)) b!2397473))

(assert (= (and b!2397473 (not res!1018677)) b!2397491))

(assert (= (and b!2397491 c!381604) b!2397466))

(assert (= (and b!2397491 (not c!381604)) b!2397480))

(assert (= (and b!2397480 c!381607) b!2397470))

(assert (= (and b!2397480 (not c!381607)) b!2397481))

(assert (= (and b!2397470 c!381608) b!2397485))

(assert (= (and b!2397470 (not c!381608)) b!2397483))

(assert (= (and b!2397485 res!1018678) b!2397467))

(assert (= (and b!2397485 res!1018680) b!2397465))

(assert (= (and b!2397483 c!381606) b!2397478))

(assert (= (and b!2397483 (not c!381606)) b!2397477))

(assert (= (and b!2397478 res!1018681) b!2397489))

(assert (= (and b!2397483 res!1018676) b!2397486))

(assert (= (or b!2397485 b!2397478) bm!146368))

(assert (= (or b!2397485 b!2397483) bm!146370))

(assert (= (or b!2397465 b!2397486) bm!146367))

(assert (= (or b!2397467 b!2397478) bm!146373))

(assert (= (or b!2397485 b!2397483) bm!146365))

(assert (= (or b!2397465 b!2397486) bm!146366))

(assert (= (or b!2397465 b!2397486) bm!146371))

(assert (= (or b!2397470 b!2397481) bm!146372))

(assert (= (or b!2397470 bm!146367 b!2397481) bm!146369))

(assert (= (or bm!146370 b!2397481) bm!146364))

(assert (= (or bm!146371 b!2397481) bm!146363))

(assert (= (and b!2397491 c!381605) b!2397469))

(assert (= (and b!2397491 (not c!381605)) b!2397476))

(assert (= (and b!2397491 (not res!1018684)) b!2397475))

(assert (= (and b!2397475 (not res!1018679)) b!2397471))

(assert (= (and b!2397471 (not res!1018685)) b!2397472))

(assert (= (and b!2397472 (not res!1018682)) b!2397487))

(assert (= (and start!235236 ((_ is Cons!28190) l!9164)) b!2397468))

(assert (= (and start!235236 ((_ is ElementMatch!7025) r!13927)) b!2397490))

(assert (= (and start!235236 ((_ is Concat!11661) r!13927)) b!2397482))

(assert (= (and start!235236 ((_ is Star!7025) r!13927)) b!2397488))

(assert (= (and start!235236 ((_ is Union!7025) r!13927)) b!2397484))

(assert (= (and start!235236 ((_ is Cons!28191) s!9460)) b!2397492))

(declare-fun m!2795959 () Bool)

(assert (=> b!2397491 m!2795959))

(declare-fun m!2795961 () Bool)

(assert (=> b!2397478 m!2795961))

(declare-fun m!2795963 () Bool)

(assert (=> b!2397478 m!2795963))

(declare-fun m!2795965 () Bool)

(assert (=> b!2397474 m!2795965))

(declare-fun m!2795967 () Bool)

(assert (=> b!2397474 m!2795967))

(declare-fun m!2795969 () Bool)

(assert (=> b!2397474 m!2795969))

(declare-fun m!2795971 () Bool)

(assert (=> bm!146369 m!2795971))

(declare-fun m!2795973 () Bool)

(assert (=> bm!146372 m!2795973))

(declare-fun m!2795975 () Bool)

(assert (=> bm!146366 m!2795975))

(declare-fun m!2795977 () Bool)

(assert (=> b!2397485 m!2795977))

(declare-fun m!2795979 () Bool)

(assert (=> b!2397485 m!2795979))

(declare-fun m!2795981 () Bool)

(assert (=> b!2397485 m!2795981))

(declare-fun m!2795983 () Bool)

(assert (=> bm!146368 m!2795983))

(declare-fun m!2795985 () Bool)

(assert (=> b!2397480 m!2795985))

(declare-fun m!2795987 () Bool)

(assert (=> b!2397480 m!2795987))

(declare-fun m!2795989 () Bool)

(assert (=> b!2397473 m!2795989))

(declare-fun m!2795991 () Bool)

(assert (=> b!2397473 m!2795991))

(declare-fun m!2795993 () Bool)

(assert (=> b!2397473 m!2795993))

(declare-fun m!2795995 () Bool)

(assert (=> b!2397473 m!2795995))

(assert (=> b!2397473 m!2795989))

(declare-fun m!2795997 () Bool)

(assert (=> b!2397473 m!2795997))

(declare-fun m!2795999 () Bool)

(assert (=> b!2397473 m!2795999))

(assert (=> b!2397473 m!2795997))

(declare-fun m!2796001 () Bool)

(assert (=> bm!146365 m!2796001))

(declare-fun m!2796003 () Bool)

(assert (=> b!2397487 m!2796003))

(declare-fun m!2796005 () Bool)

(assert (=> b!2397479 m!2796005))

(declare-fun m!2796007 () Bool)

(assert (=> bm!146364 m!2796007))

(declare-fun m!2796009 () Bool)

(assert (=> b!2397472 m!2796009))

(declare-fun m!2796011 () Bool)

(assert (=> bm!146373 m!2796011))

(declare-fun m!2796013 () Bool)

(assert (=> start!235236 m!2796013))

(declare-fun m!2796015 () Bool)

(assert (=> b!2397470 m!2796015))

(assert (=> b!2397470 m!2796015))

(declare-fun m!2796017 () Bool)

(assert (=> b!2397470 m!2796017))

(declare-fun m!2796019 () Bool)

(assert (=> b!2397470 m!2796019))

(declare-fun m!2796021 () Bool)

(assert (=> bm!146363 m!2796021))

(declare-fun m!2796023 () Bool)

(assert (=> b!2397469 m!2796023))

(assert (=> b!2397469 m!2796023))

(declare-fun m!2796025 () Bool)

(assert (=> b!2397469 m!2796025))

(assert (=> b!2397469 m!2796025))

(declare-fun m!2796027 () Bool)

(assert (=> b!2397469 m!2796027))

(declare-fun m!2796029 () Bool)

(assert (=> b!2397476 m!2796029))

(declare-fun m!2796031 () Bool)

(assert (=> b!2397471 m!2796031))

(assert (=> b!2397471 m!2796023))

(check-sat (not bm!146366) (not bm!146369) (not start!235236) (not b!2397482) (not bm!146365) (not b!2397470) (not bm!146372) (not b!2397487) (not bm!146373) tp_is_empty!11463 (not b!2397480) (not b!2397478) (not b!2397472) (not b!2397492) (not b!2397468) (not b!2397474) (not b!2397491) (not bm!146364) (not bm!146363) (not b!2397479) (not b!2397484) (not b!2397471) (not bm!146368) (not b!2397488) (not b!2397476) (not b!2397473) (not b!2397469) (not b!2397485))
(check-sat)
(get-model)

(declare-fun d!699229 () Bool)

(assert (=> d!699229 (matchR!3142 (Concat!11661 lt!872092 EmptyExpr!7025) (++!6979 (_1!16498 lt!872103) (_2!16498 lt!872103)))))

(declare-fun lt!872121 () Unit!41300)

(declare-fun choose!14185 (Regex!7025 Regex!7025 List!28289 List!28289 List!28289) Unit!41300)

(assert (=> d!699229 (= lt!872121 (choose!14185 lt!872092 EmptyExpr!7025 (_1!16498 lt!872103) (_2!16498 lt!872103) s!9460))))

(assert (=> d!699229 (validRegex!2750 lt!872092)))

(assert (=> d!699229 (= (lemmaFindSeparationIsDefinedThenConcatMatches!44 lt!872092 EmptyExpr!7025 (_1!16498 lt!872103) (_2!16498 lt!872103) s!9460) lt!872121)))

(declare-fun bs!462984 () Bool)

(assert (= bs!462984 d!699229))

(declare-fun m!2796077 () Bool)

(assert (=> bs!462984 m!2796077))

(assert (=> bs!462984 m!2796077))

(declare-fun m!2796079 () Bool)

(assert (=> bs!462984 m!2796079))

(declare-fun m!2796081 () Bool)

(assert (=> bs!462984 m!2796081))

(declare-fun m!2796083 () Bool)

(assert (=> bs!462984 m!2796083))

(assert (=> b!2397478 d!699229))

(declare-fun d!699235 () Bool)

(assert (=> d!699235 (= (get!8635 lt!872099) (v!30975 lt!872099))))

(assert (=> b!2397478 d!699235))

(declare-fun bm!146398 () Bool)

(declare-fun call!146403 () Bool)

(declare-fun call!146405 () Bool)

(assert (=> bm!146398 (= call!146403 call!146405)))

(declare-fun b!2397694 () Bool)

(declare-fun e!1527850 () Bool)

(declare-fun e!1527847 () Bool)

(assert (=> b!2397694 (= e!1527850 e!1527847)))

(declare-fun res!1018781 () Bool)

(declare-fun nullable!2074 (Regex!7025) Bool)

(assert (=> b!2397694 (= res!1018781 (not (nullable!2074 (reg!7354 (h!33591 l!9164)))))))

(assert (=> b!2397694 (=> (not res!1018781) (not e!1527847))))

(declare-fun b!2397695 () Bool)

(declare-fun e!1527848 () Bool)

(declare-fun e!1527849 () Bool)

(assert (=> b!2397695 (= e!1527848 e!1527849)))

(declare-fun res!1018784 () Bool)

(assert (=> b!2397695 (=> (not res!1018784) (not e!1527849))))

(assert (=> b!2397695 (= res!1018784 call!146403)))

(declare-fun b!2397696 () Bool)

(assert (=> b!2397696 (= e!1527847 call!146405)))

(declare-fun bm!146399 () Bool)

(declare-fun call!146404 () Bool)

(declare-fun c!381662 () Bool)

(assert (=> bm!146399 (= call!146404 (validRegex!2750 (ite c!381662 (regOne!14563 (h!33591 l!9164)) (regTwo!14562 (h!33591 l!9164)))))))

(declare-fun b!2397697 () Bool)

(declare-fun res!1018785 () Bool)

(declare-fun e!1527846 () Bool)

(assert (=> b!2397697 (=> (not res!1018785) (not e!1527846))))

(assert (=> b!2397697 (= res!1018785 call!146404)))

(declare-fun e!1527852 () Bool)

(assert (=> b!2397697 (= e!1527852 e!1527846)))

(declare-fun c!381661 () Bool)

(declare-fun bm!146400 () Bool)

(assert (=> bm!146400 (= call!146405 (validRegex!2750 (ite c!381661 (reg!7354 (h!33591 l!9164)) (ite c!381662 (regTwo!14563 (h!33591 l!9164)) (regOne!14562 (h!33591 l!9164))))))))

(declare-fun b!2397698 () Bool)

(declare-fun e!1527851 () Bool)

(assert (=> b!2397698 (= e!1527851 e!1527850)))

(assert (=> b!2397698 (= c!381661 ((_ is Star!7025) (h!33591 l!9164)))))

(declare-fun b!2397699 () Bool)

(assert (=> b!2397699 (= e!1527846 call!146403)))

(declare-fun d!699239 () Bool)

(declare-fun res!1018783 () Bool)

(assert (=> d!699239 (=> res!1018783 e!1527851)))

(assert (=> d!699239 (= res!1018783 ((_ is ElementMatch!7025) (h!33591 l!9164)))))

(assert (=> d!699239 (= (validRegex!2750 (h!33591 l!9164)) e!1527851)))

(declare-fun b!2397693 () Bool)

(assert (=> b!2397693 (= e!1527850 e!1527852)))

(assert (=> b!2397693 (= c!381662 ((_ is Union!7025) (h!33591 l!9164)))))

(declare-fun b!2397700 () Bool)

(assert (=> b!2397700 (= e!1527849 call!146404)))

(declare-fun b!2397701 () Bool)

(declare-fun res!1018782 () Bool)

(assert (=> b!2397701 (=> res!1018782 e!1527848)))

(assert (=> b!2397701 (= res!1018782 (not ((_ is Concat!11661) (h!33591 l!9164))))))

(assert (=> b!2397701 (= e!1527852 e!1527848)))

(assert (= (and d!699239 (not res!1018783)) b!2397698))

(assert (= (and b!2397698 c!381661) b!2397694))

(assert (= (and b!2397698 (not c!381661)) b!2397693))

(assert (= (and b!2397694 res!1018781) b!2397696))

(assert (= (and b!2397693 c!381662) b!2397697))

(assert (= (and b!2397693 (not c!381662)) b!2397701))

(assert (= (and b!2397697 res!1018785) b!2397699))

(assert (= (and b!2397701 (not res!1018782)) b!2397695))

(assert (= (and b!2397695 res!1018784) b!2397700))

(assert (= (or b!2397697 b!2397700) bm!146399))

(assert (= (or b!2397699 b!2397695) bm!146398))

(assert (= (or b!2397696 bm!146398) bm!146400))

(declare-fun m!2796131 () Bool)

(assert (=> b!2397694 m!2796131))

(declare-fun m!2796133 () Bool)

(assert (=> bm!146399 m!2796133))

(declare-fun m!2796135 () Bool)

(assert (=> bm!146400 m!2796135))

(assert (=> b!2397471 d!699239))

(declare-fun bs!462992 () Bool)

(declare-fun d!699247 () Bool)

(assert (= bs!462992 (and d!699247 start!235236)))

(declare-fun lambda!90044 () Int)

(assert (=> bs!462992 (= lambda!90044 lambda!90029)))

(declare-fun b!2397761 () Bool)

(declare-fun e!1527890 () Bool)

(declare-fun lt!872148 () Regex!7025)

(assert (=> b!2397761 (= e!1527890 (= lt!872148 (head!5281 (t!208265 l!9164))))))

(declare-fun e!1527889 () Bool)

(assert (=> d!699247 e!1527889))

(declare-fun res!1018809 () Bool)

(assert (=> d!699247 (=> (not res!1018809) (not e!1527889))))

(assert (=> d!699247 (= res!1018809 (validRegex!2750 lt!872148))))

(declare-fun e!1527887 () Regex!7025)

(assert (=> d!699247 (= lt!872148 e!1527887)))

(declare-fun c!381682 () Bool)

(declare-fun e!1527895 () Bool)

(assert (=> d!699247 (= c!381682 e!1527895)))

(declare-fun res!1018811 () Bool)

(assert (=> d!699247 (=> (not res!1018811) (not e!1527895))))

(assert (=> d!699247 (= res!1018811 ((_ is Cons!28190) (t!208265 l!9164)))))

(assert (=> d!699247 (forall!5659 (t!208265 l!9164) lambda!90044)))

(assert (=> d!699247 (= (generalisedConcat!126 (t!208265 l!9164)) lt!872148)))

(declare-fun b!2397762 () Bool)

(declare-fun e!1527888 () Bool)

(declare-fun isEmptyExpr!95 (Regex!7025) Bool)

(assert (=> b!2397762 (= e!1527888 (isEmptyExpr!95 lt!872148))))

(declare-fun b!2397763 () Bool)

(assert (=> b!2397763 (= e!1527887 (h!33591 (t!208265 l!9164)))))

(declare-fun b!2397764 () Bool)

(declare-fun e!1527892 () Regex!7025)

(assert (=> b!2397764 (= e!1527892 (Concat!11661 (h!33591 (t!208265 l!9164)) (generalisedConcat!126 (t!208265 (t!208265 l!9164)))))))

(declare-fun b!2397765 () Bool)

(assert (=> b!2397765 (= e!1527889 e!1527888)))

(declare-fun c!381681 () Bool)

(assert (=> b!2397765 (= c!381681 (isEmpty!16184 (t!208265 l!9164)))))

(declare-fun b!2397766 () Bool)

(assert (=> b!2397766 (= e!1527887 e!1527892)))

(declare-fun c!381684 () Bool)

(assert (=> b!2397766 (= c!381684 ((_ is Cons!28190) (t!208265 l!9164)))))

(declare-fun b!2397767 () Bool)

(declare-fun isConcat!95 (Regex!7025) Bool)

(assert (=> b!2397767 (= e!1527890 (isConcat!95 lt!872148))))

(declare-fun b!2397769 () Bool)

(assert (=> b!2397769 (= e!1527895 (isEmpty!16184 (t!208265 (t!208265 l!9164))))))

(declare-fun b!2397771 () Bool)

(assert (=> b!2397771 (= e!1527888 e!1527890)))

(declare-fun c!381683 () Bool)

(assert (=> b!2397771 (= c!381683 (isEmpty!16184 (tail!3551 (t!208265 l!9164))))))

(declare-fun b!2397773 () Bool)

(assert (=> b!2397773 (= e!1527892 EmptyExpr!7025)))

(assert (= (and d!699247 res!1018811) b!2397769))

(assert (= (and d!699247 c!381682) b!2397763))

(assert (= (and d!699247 (not c!381682)) b!2397766))

(assert (= (and b!2397766 c!381684) b!2397764))

(assert (= (and b!2397766 (not c!381684)) b!2397773))

(assert (= (and d!699247 res!1018809) b!2397765))

(assert (= (and b!2397765 c!381681) b!2397762))

(assert (= (and b!2397765 (not c!381681)) b!2397771))

(assert (= (and b!2397771 c!381683) b!2397761))

(assert (= (and b!2397771 (not c!381683)) b!2397767))

(declare-fun m!2796211 () Bool)

(assert (=> b!2397769 m!2796211))

(declare-fun m!2796213 () Bool)

(assert (=> d!699247 m!2796213))

(declare-fun m!2796215 () Bool)

(assert (=> d!699247 m!2796215))

(declare-fun m!2796217 () Bool)

(assert (=> b!2397771 m!2796217))

(assert (=> b!2397771 m!2796217))

(declare-fun m!2796219 () Bool)

(assert (=> b!2397771 m!2796219))

(declare-fun m!2796221 () Bool)

(assert (=> b!2397762 m!2796221))

(declare-fun m!2796223 () Bool)

(assert (=> b!2397764 m!2796223))

(declare-fun m!2796225 () Bool)

(assert (=> b!2397765 m!2796225))

(declare-fun m!2796229 () Bool)

(assert (=> b!2397761 m!2796229))

(declare-fun m!2796231 () Bool)

(assert (=> b!2397767 m!2796231))

(assert (=> b!2397471 d!699247))

(declare-fun b!2397852 () Bool)

(declare-fun e!1527935 () Bool)

(declare-fun e!1527937 () Bool)

(assert (=> b!2397852 (= e!1527935 e!1527937)))

(declare-fun c!381700 () Bool)

(assert (=> b!2397852 (= c!381700 ((_ is EmptyLang!7025) (ite c!381608 lt!872102 (Concat!11661 lt!872092 EmptyExpr!7025))))))

(declare-fun call!146410 () Bool)

(declare-fun bm!146405 () Bool)

(assert (=> bm!146405 (= call!146410 (isEmpty!16183 (ite c!381608 s!9460 call!146374)))))

(declare-fun b!2397853 () Bool)

(declare-fun res!1018864 () Bool)

(declare-fun e!1527938 () Bool)

(assert (=> b!2397853 (=> (not res!1018864) (not e!1527938))))

(declare-fun tail!3553 (List!28289) List!28289)

(assert (=> b!2397853 (= res!1018864 (isEmpty!16183 (tail!3553 (ite c!381608 s!9460 call!146374))))))

(declare-fun b!2397854 () Bool)

(declare-fun e!1527936 () Bool)

(declare-fun e!1527940 () Bool)

(assert (=> b!2397854 (= e!1527936 e!1527940)))

(declare-fun res!1018866 () Bool)

(assert (=> b!2397854 (=> (not res!1018866) (not e!1527940))))

(declare-fun lt!872166 () Bool)

(assert (=> b!2397854 (= res!1018866 (not lt!872166))))

(declare-fun b!2397855 () Bool)

(declare-fun res!1018863 () Bool)

(assert (=> b!2397855 (=> (not res!1018863) (not e!1527938))))

(assert (=> b!2397855 (= res!1018863 (not call!146410))))

(declare-fun d!699267 () Bool)

(assert (=> d!699267 e!1527935))

(declare-fun c!381702 () Bool)

(assert (=> d!699267 (= c!381702 ((_ is EmptyExpr!7025) (ite c!381608 lt!872102 (Concat!11661 lt!872092 EmptyExpr!7025))))))

(declare-fun e!1527941 () Bool)

(assert (=> d!699267 (= lt!872166 e!1527941)))

(declare-fun c!381701 () Bool)

(assert (=> d!699267 (= c!381701 (isEmpty!16183 (ite c!381608 s!9460 call!146374)))))

(assert (=> d!699267 (validRegex!2750 (ite c!381608 lt!872102 (Concat!11661 lt!872092 EmptyExpr!7025)))))

(assert (=> d!699267 (= (matchR!3142 (ite c!381608 lt!872102 (Concat!11661 lt!872092 EmptyExpr!7025)) (ite c!381608 s!9460 call!146374)) lt!872166)))

(declare-fun e!1527939 () Bool)

(declare-fun b!2397856 () Bool)

(declare-fun head!5283 (List!28289) C!14208)

(assert (=> b!2397856 (= e!1527939 (not (= (head!5283 (ite c!381608 s!9460 call!146374)) (c!381609 (ite c!381608 lt!872102 (Concat!11661 lt!872092 EmptyExpr!7025))))))))

(declare-fun b!2397857 () Bool)

(declare-fun res!1018865 () Bool)

(assert (=> b!2397857 (=> res!1018865 e!1527936)))

(assert (=> b!2397857 (= res!1018865 e!1527938)))

(declare-fun res!1018867 () Bool)

(assert (=> b!2397857 (=> (not res!1018867) (not e!1527938))))

(assert (=> b!2397857 (= res!1018867 lt!872166)))

(declare-fun b!2397858 () Bool)

(assert (=> b!2397858 (= e!1527941 (nullable!2074 (ite c!381608 lt!872102 (Concat!11661 lt!872092 EmptyExpr!7025))))))

(declare-fun b!2397859 () Bool)

(declare-fun res!1018862 () Bool)

(assert (=> b!2397859 (=> res!1018862 e!1527939)))

(assert (=> b!2397859 (= res!1018862 (not (isEmpty!16183 (tail!3553 (ite c!381608 s!9460 call!146374)))))))

(declare-fun b!2397860 () Bool)

(assert (=> b!2397860 (= e!1527937 (not lt!872166))))

(declare-fun b!2397861 () Bool)

(assert (=> b!2397861 (= e!1527938 (= (head!5283 (ite c!381608 s!9460 call!146374)) (c!381609 (ite c!381608 lt!872102 (Concat!11661 lt!872092 EmptyExpr!7025)))))))

(declare-fun b!2397862 () Bool)

(assert (=> b!2397862 (= e!1527935 (= lt!872166 call!146410))))

(declare-fun b!2397863 () Bool)

(declare-fun derivativeStep!1732 (Regex!7025 C!14208) Regex!7025)

(assert (=> b!2397863 (= e!1527941 (matchR!3142 (derivativeStep!1732 (ite c!381608 lt!872102 (Concat!11661 lt!872092 EmptyExpr!7025)) (head!5283 (ite c!381608 s!9460 call!146374))) (tail!3553 (ite c!381608 s!9460 call!146374))))))

(declare-fun b!2397864 () Bool)

(assert (=> b!2397864 (= e!1527940 e!1527939)))

(declare-fun res!1018868 () Bool)

(assert (=> b!2397864 (=> res!1018868 e!1527939)))

(assert (=> b!2397864 (= res!1018868 call!146410)))

(declare-fun b!2397865 () Bool)

(declare-fun res!1018869 () Bool)

(assert (=> b!2397865 (=> res!1018869 e!1527936)))

(assert (=> b!2397865 (= res!1018869 (not ((_ is ElementMatch!7025) (ite c!381608 lt!872102 (Concat!11661 lt!872092 EmptyExpr!7025)))))))

(assert (=> b!2397865 (= e!1527937 e!1527936)))

(assert (= (and d!699267 c!381701) b!2397858))

(assert (= (and d!699267 (not c!381701)) b!2397863))

(assert (= (and d!699267 c!381702) b!2397862))

(assert (= (and d!699267 (not c!381702)) b!2397852))

(assert (= (and b!2397852 c!381700) b!2397860))

(assert (= (and b!2397852 (not c!381700)) b!2397865))

(assert (= (and b!2397865 (not res!1018869)) b!2397857))

(assert (= (and b!2397857 res!1018867) b!2397855))

(assert (= (and b!2397855 res!1018863) b!2397853))

(assert (= (and b!2397853 res!1018864) b!2397861))

(assert (= (and b!2397857 (not res!1018865)) b!2397854))

(assert (= (and b!2397854 res!1018866) b!2397864))

(assert (= (and b!2397864 (not res!1018868)) b!2397859))

(assert (= (and b!2397859 (not res!1018862)) b!2397856))

(assert (= (or b!2397862 b!2397855 b!2397864) bm!146405))

(declare-fun m!2796289 () Bool)

(assert (=> b!2397856 m!2796289))

(assert (=> b!2397861 m!2796289))

(declare-fun m!2796291 () Bool)

(assert (=> b!2397853 m!2796291))

(assert (=> b!2397853 m!2796291))

(declare-fun m!2796293 () Bool)

(assert (=> b!2397853 m!2796293))

(declare-fun m!2796295 () Bool)

(assert (=> d!699267 m!2796295))

(declare-fun m!2796297 () Bool)

(assert (=> d!699267 m!2796297))

(assert (=> b!2397863 m!2796289))

(assert (=> b!2397863 m!2796289))

(declare-fun m!2796299 () Bool)

(assert (=> b!2397863 m!2796299))

(assert (=> b!2397863 m!2796291))

(assert (=> b!2397863 m!2796299))

(assert (=> b!2397863 m!2796291))

(declare-fun m!2796305 () Bool)

(assert (=> b!2397863 m!2796305))

(declare-fun m!2796307 () Bool)

(assert (=> b!2397858 m!2796307))

(assert (=> b!2397859 m!2796291))

(assert (=> b!2397859 m!2796291))

(assert (=> b!2397859 m!2796293))

(assert (=> bm!146405 m!2796295))

(assert (=> bm!146373 d!699267))

(declare-fun d!699291 () Bool)

(declare-fun isEmpty!16186 (Option!5568) Bool)

(assert (=> d!699291 (= (isDefined!4396 (ite c!381607 call!146375 call!146370)) (not (isEmpty!16186 (ite c!381607 call!146375 call!146370))))))

(declare-fun bs!463007 () Bool)

(assert (= bs!463007 d!699291))

(declare-fun m!2796313 () Bool)

(assert (=> bs!463007 m!2796313))

(assert (=> bm!146363 d!699291))

(declare-fun bs!463009 () Bool)

(declare-fun d!699299 () Bool)

(assert (= bs!463009 (and d!699299 start!235236)))

(declare-fun lambda!90054 () Int)

(assert (=> bs!463009 (= lambda!90054 lambda!90029)))

(declare-fun bs!463012 () Bool)

(assert (= bs!463012 (and d!699299 d!699247)))

(assert (=> bs!463012 (= lambda!90054 lambda!90044)))

(declare-fun b!2397881 () Bool)

(declare-fun e!1527958 () Bool)

(declare-fun lt!872167 () Regex!7025)

(assert (=> b!2397881 (= e!1527958 (= lt!872167 (head!5281 lt!872104)))))

(declare-fun e!1527957 () Bool)

(assert (=> d!699299 e!1527957))

(declare-fun res!1018881 () Bool)

(assert (=> d!699299 (=> (not res!1018881) (not e!1527957))))

(assert (=> d!699299 (= res!1018881 (validRegex!2750 lt!872167))))

(declare-fun e!1527955 () Regex!7025)

(assert (=> d!699299 (= lt!872167 e!1527955)))

(declare-fun c!381706 () Bool)

(declare-fun e!1527960 () Bool)

(assert (=> d!699299 (= c!381706 e!1527960)))

(declare-fun res!1018882 () Bool)

(assert (=> d!699299 (=> (not res!1018882) (not e!1527960))))

(assert (=> d!699299 (= res!1018882 ((_ is Cons!28190) lt!872104))))

(assert (=> d!699299 (forall!5659 lt!872104 lambda!90054)))

(assert (=> d!699299 (= (generalisedConcat!126 lt!872104) lt!872167)))

(declare-fun b!2397882 () Bool)

(declare-fun e!1527956 () Bool)

(assert (=> b!2397882 (= e!1527956 (isEmptyExpr!95 lt!872167))))

(declare-fun b!2397883 () Bool)

(assert (=> b!2397883 (= e!1527955 (h!33591 lt!872104))))

(declare-fun b!2397884 () Bool)

(declare-fun e!1527959 () Regex!7025)

(assert (=> b!2397884 (= e!1527959 (Concat!11661 (h!33591 lt!872104) (generalisedConcat!126 (t!208265 lt!872104))))))

(declare-fun b!2397885 () Bool)

(assert (=> b!2397885 (= e!1527957 e!1527956)))

(declare-fun c!381705 () Bool)

(assert (=> b!2397885 (= c!381705 (isEmpty!16184 lt!872104))))

(declare-fun b!2397886 () Bool)

(assert (=> b!2397886 (= e!1527955 e!1527959)))

(declare-fun c!381708 () Bool)

(assert (=> b!2397886 (= c!381708 ((_ is Cons!28190) lt!872104))))

(declare-fun b!2397887 () Bool)

(assert (=> b!2397887 (= e!1527958 (isConcat!95 lt!872167))))

(declare-fun b!2397888 () Bool)

(assert (=> b!2397888 (= e!1527960 (isEmpty!16184 (t!208265 lt!872104)))))

(declare-fun b!2397889 () Bool)

(assert (=> b!2397889 (= e!1527956 e!1527958)))

(declare-fun c!381707 () Bool)

(assert (=> b!2397889 (= c!381707 (isEmpty!16184 (tail!3551 lt!872104)))))

(declare-fun b!2397890 () Bool)

(assert (=> b!2397890 (= e!1527959 EmptyExpr!7025)))

(assert (= (and d!699299 res!1018882) b!2397888))

(assert (= (and d!699299 c!381706) b!2397883))

(assert (= (and d!699299 (not c!381706)) b!2397886))

(assert (= (and b!2397886 c!381708) b!2397884))

(assert (= (and b!2397886 (not c!381708)) b!2397890))

(assert (= (and d!699299 res!1018881) b!2397885))

(assert (= (and b!2397885 c!381705) b!2397882))

(assert (= (and b!2397885 (not c!381705)) b!2397889))

(assert (= (and b!2397889 c!381707) b!2397881))

(assert (= (and b!2397889 (not c!381707)) b!2397887))

(declare-fun m!2796337 () Bool)

(assert (=> b!2397888 m!2796337))

(declare-fun m!2796339 () Bool)

(assert (=> d!699299 m!2796339))

(declare-fun m!2796341 () Bool)

(assert (=> d!699299 m!2796341))

(declare-fun m!2796343 () Bool)

(assert (=> b!2397889 m!2796343))

(assert (=> b!2397889 m!2796343))

(declare-fun m!2796345 () Bool)

(assert (=> b!2397889 m!2796345))

(declare-fun m!2796347 () Bool)

(assert (=> b!2397882 m!2796347))

(declare-fun m!2796349 () Bool)

(assert (=> b!2397884 m!2796349))

(assert (=> b!2397885 m!2795987))

(declare-fun m!2796353 () Bool)

(assert (=> b!2397881 m!2796353))

(declare-fun m!2796359 () Bool)

(assert (=> b!2397887 m!2796359))

(assert (=> bm!146369 d!699299))

(declare-fun d!699309 () Bool)

(assert (=> d!699309 (= (isDefined!4396 (findConcatSeparation!676 lt!872092 call!146376 Nil!28191 s!9460 s!9460)) (not (isEmpty!16186 (findConcatSeparation!676 lt!872092 call!146376 Nil!28191 s!9460 s!9460))))))

(declare-fun bs!463014 () Bool)

(assert (= bs!463014 d!699309))

(assert (=> bs!463014 m!2796015))

(declare-fun m!2796371 () Bool)

(assert (=> bs!463014 m!2796371))

(assert (=> b!2397470 d!699309))

(declare-fun b!2397981 () Bool)

(declare-fun e!1528004 () Bool)

(declare-fun lt!872179 () Option!5568)

(assert (=> b!2397981 (= e!1528004 (= (++!6979 (_1!16498 (get!8635 lt!872179)) (_2!16498 (get!8635 lt!872179))) s!9460))))

(declare-fun b!2397982 () Bool)

(declare-fun e!1528002 () Bool)

(assert (=> b!2397982 (= e!1528002 (not (isDefined!4396 lt!872179)))))

(declare-fun b!2397983 () Bool)

(declare-fun e!1528000 () Option!5568)

(assert (=> b!2397983 (= e!1528000 None!5567)))

(declare-fun d!699313 () Bool)

(assert (=> d!699313 e!1528002))

(declare-fun res!1018909 () Bool)

(assert (=> d!699313 (=> res!1018909 e!1528002)))

(assert (=> d!699313 (= res!1018909 e!1528004)))

(declare-fun res!1018908 () Bool)

(assert (=> d!699313 (=> (not res!1018908) (not e!1528004))))

(assert (=> d!699313 (= res!1018908 (isDefined!4396 lt!872179))))

(declare-fun e!1528001 () Option!5568)

(assert (=> d!699313 (= lt!872179 e!1528001)))

(declare-fun c!381722 () Bool)

(declare-fun e!1528003 () Bool)

(assert (=> d!699313 (= c!381722 e!1528003)))

(declare-fun res!1018906 () Bool)

(assert (=> d!699313 (=> (not res!1018906) (not e!1528003))))

(assert (=> d!699313 (= res!1018906 (matchR!3142 lt!872092 Nil!28191))))

(assert (=> d!699313 (validRegex!2750 lt!872092)))

(assert (=> d!699313 (= (findConcatSeparation!676 lt!872092 call!146376 Nil!28191 s!9460 s!9460) lt!872179)))

(declare-fun b!2397984 () Bool)

(assert (=> b!2397984 (= e!1528003 (matchR!3142 call!146376 s!9460))))

(declare-fun b!2397985 () Bool)

(declare-fun res!1018907 () Bool)

(assert (=> b!2397985 (=> (not res!1018907) (not e!1528004))))

(assert (=> b!2397985 (= res!1018907 (matchR!3142 call!146376 (_2!16498 (get!8635 lt!872179))))))

(declare-fun b!2397986 () Bool)

(assert (=> b!2397986 (= e!1528001 (Some!5567 (tuple2!27915 Nil!28191 s!9460)))))

(declare-fun b!2397987 () Bool)

(declare-fun lt!872177 () Unit!41300)

(declare-fun lt!872178 () Unit!41300)

(assert (=> b!2397987 (= lt!872177 lt!872178)))

(assert (=> b!2397987 (= (++!6979 (++!6979 Nil!28191 (Cons!28191 (h!33592 s!9460) Nil!28191)) (t!208266 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!621 (List!28289 C!14208 List!28289 List!28289) Unit!41300)

(assert (=> b!2397987 (= lt!872178 (lemmaMoveElementToOtherListKeepsConcatEq!621 Nil!28191 (h!33592 s!9460) (t!208266 s!9460) s!9460))))

(assert (=> b!2397987 (= e!1528000 (findConcatSeparation!676 lt!872092 call!146376 (++!6979 Nil!28191 (Cons!28191 (h!33592 s!9460) Nil!28191)) (t!208266 s!9460) s!9460))))

(declare-fun b!2397988 () Bool)

(declare-fun res!1018905 () Bool)

(assert (=> b!2397988 (=> (not res!1018905) (not e!1528004))))

(assert (=> b!2397988 (= res!1018905 (matchR!3142 lt!872092 (_1!16498 (get!8635 lt!872179))))))

(declare-fun b!2397989 () Bool)

(assert (=> b!2397989 (= e!1528001 e!1528000)))

(declare-fun c!381721 () Bool)

(assert (=> b!2397989 (= c!381721 ((_ is Nil!28191) s!9460))))

(assert (= (and d!699313 res!1018906) b!2397984))

(assert (= (and d!699313 c!381722) b!2397986))

(assert (= (and d!699313 (not c!381722)) b!2397989))

(assert (= (and b!2397989 c!381721) b!2397983))

(assert (= (and b!2397989 (not c!381721)) b!2397987))

(assert (= (and d!699313 res!1018908) b!2397988))

(assert (= (and b!2397988 res!1018905) b!2397985))

(assert (= (and b!2397985 res!1018907) b!2397981))

(assert (= (and d!699313 (not res!1018909)) b!2397982))

(declare-fun m!2796389 () Bool)

(assert (=> b!2397984 m!2796389))

(declare-fun m!2796391 () Bool)

(assert (=> b!2397985 m!2796391))

(declare-fun m!2796393 () Bool)

(assert (=> b!2397985 m!2796393))

(declare-fun m!2796395 () Bool)

(assert (=> d!699313 m!2796395))

(declare-fun m!2796397 () Bool)

(assert (=> d!699313 m!2796397))

(assert (=> d!699313 m!2796083))

(assert (=> b!2397981 m!2796391))

(declare-fun m!2796399 () Bool)

(assert (=> b!2397981 m!2796399))

(declare-fun m!2796401 () Bool)

(assert (=> b!2397987 m!2796401))

(assert (=> b!2397987 m!2796401))

(declare-fun m!2796403 () Bool)

(assert (=> b!2397987 m!2796403))

(declare-fun m!2796405 () Bool)

(assert (=> b!2397987 m!2796405))

(assert (=> b!2397987 m!2796401))

(declare-fun m!2796407 () Bool)

(assert (=> b!2397987 m!2796407))

(assert (=> b!2397988 m!2796391))

(declare-fun m!2796409 () Bool)

(assert (=> b!2397988 m!2796409))

(assert (=> b!2397982 m!2796395))

(assert (=> b!2397470 d!699313))

(declare-fun b!2397990 () Bool)

(declare-fun e!1528005 () Bool)

(declare-fun e!1528007 () Bool)

(assert (=> b!2397990 (= e!1528005 e!1528007)))

(declare-fun c!381723 () Bool)

(assert (=> b!2397990 (= c!381723 ((_ is EmptyLang!7025) lt!872092))))

(declare-fun bm!146410 () Bool)

(declare-fun call!146415 () Bool)

(assert (=> bm!146410 (= call!146415 (isEmpty!16183 s!9460))))

(declare-fun b!2397991 () Bool)

(declare-fun res!1018912 () Bool)

(declare-fun e!1528008 () Bool)

(assert (=> b!2397991 (=> (not res!1018912) (not e!1528008))))

(assert (=> b!2397991 (= res!1018912 (isEmpty!16183 (tail!3553 s!9460)))))

(declare-fun b!2397992 () Bool)

(declare-fun e!1528006 () Bool)

(declare-fun e!1528010 () Bool)

(assert (=> b!2397992 (= e!1528006 e!1528010)))

(declare-fun res!1018914 () Bool)

(assert (=> b!2397992 (=> (not res!1018914) (not e!1528010))))

(declare-fun lt!872180 () Bool)

(assert (=> b!2397992 (= res!1018914 (not lt!872180))))

(declare-fun b!2397993 () Bool)

(declare-fun res!1018911 () Bool)

(assert (=> b!2397993 (=> (not res!1018911) (not e!1528008))))

(assert (=> b!2397993 (= res!1018911 (not call!146415))))

(declare-fun d!699319 () Bool)

(assert (=> d!699319 e!1528005))

(declare-fun c!381725 () Bool)

(assert (=> d!699319 (= c!381725 ((_ is EmptyExpr!7025) lt!872092))))

(declare-fun e!1528011 () Bool)

(assert (=> d!699319 (= lt!872180 e!1528011)))

(declare-fun c!381724 () Bool)

(assert (=> d!699319 (= c!381724 (isEmpty!16183 s!9460))))

(assert (=> d!699319 (validRegex!2750 lt!872092)))

(assert (=> d!699319 (= (matchR!3142 lt!872092 s!9460) lt!872180)))

(declare-fun b!2397994 () Bool)

(declare-fun e!1528009 () Bool)

(assert (=> b!2397994 (= e!1528009 (not (= (head!5283 s!9460) (c!381609 lt!872092))))))

(declare-fun b!2397995 () Bool)

(declare-fun res!1018913 () Bool)

(assert (=> b!2397995 (=> res!1018913 e!1528006)))

(assert (=> b!2397995 (= res!1018913 e!1528008)))

(declare-fun res!1018915 () Bool)

(assert (=> b!2397995 (=> (not res!1018915) (not e!1528008))))

(assert (=> b!2397995 (= res!1018915 lt!872180)))

(declare-fun b!2397996 () Bool)

(assert (=> b!2397996 (= e!1528011 (nullable!2074 lt!872092))))

(declare-fun b!2397997 () Bool)

(declare-fun res!1018910 () Bool)

(assert (=> b!2397997 (=> res!1018910 e!1528009)))

(assert (=> b!2397997 (= res!1018910 (not (isEmpty!16183 (tail!3553 s!9460))))))

(declare-fun b!2397998 () Bool)

(assert (=> b!2397998 (= e!1528007 (not lt!872180))))

(declare-fun b!2397999 () Bool)

(assert (=> b!2397999 (= e!1528008 (= (head!5283 s!9460) (c!381609 lt!872092)))))

(declare-fun b!2398000 () Bool)

(assert (=> b!2398000 (= e!1528005 (= lt!872180 call!146415))))

(declare-fun b!2398001 () Bool)

(assert (=> b!2398001 (= e!1528011 (matchR!3142 (derivativeStep!1732 lt!872092 (head!5283 s!9460)) (tail!3553 s!9460)))))

(declare-fun b!2398002 () Bool)

(assert (=> b!2398002 (= e!1528010 e!1528009)))

(declare-fun res!1018916 () Bool)

(assert (=> b!2398002 (=> res!1018916 e!1528009)))

(assert (=> b!2398002 (= res!1018916 call!146415)))

(declare-fun b!2398003 () Bool)

(declare-fun res!1018917 () Bool)

(assert (=> b!2398003 (=> res!1018917 e!1528006)))

(assert (=> b!2398003 (= res!1018917 (not ((_ is ElementMatch!7025) lt!872092)))))

(assert (=> b!2398003 (= e!1528007 e!1528006)))

(assert (= (and d!699319 c!381724) b!2397996))

(assert (= (and d!699319 (not c!381724)) b!2398001))

(assert (= (and d!699319 c!381725) b!2398000))

(assert (= (and d!699319 (not c!381725)) b!2397990))

(assert (= (and b!2397990 c!381723) b!2397998))

(assert (= (and b!2397990 (not c!381723)) b!2398003))

(assert (= (and b!2398003 (not res!1018917)) b!2397995))

(assert (= (and b!2397995 res!1018915) b!2397993))

(assert (= (and b!2397993 res!1018911) b!2397991))

(assert (= (and b!2397991 res!1018912) b!2397999))

(assert (= (and b!2397995 (not res!1018913)) b!2397992))

(assert (= (and b!2397992 res!1018914) b!2398002))

(assert (= (and b!2398002 (not res!1018916)) b!2397997))

(assert (= (and b!2397997 (not res!1018910)) b!2397994))

(assert (= (or b!2398000 b!2397993 b!2398002) bm!146410))

(declare-fun m!2796411 () Bool)

(assert (=> b!2397994 m!2796411))

(assert (=> b!2397999 m!2796411))

(declare-fun m!2796413 () Bool)

(assert (=> b!2397991 m!2796413))

(assert (=> b!2397991 m!2796413))

(declare-fun m!2796415 () Bool)

(assert (=> b!2397991 m!2796415))

(assert (=> d!699319 m!2796029))

(assert (=> d!699319 m!2796083))

(assert (=> b!2398001 m!2796411))

(assert (=> b!2398001 m!2796411))

(declare-fun m!2796417 () Bool)

(assert (=> b!2398001 m!2796417))

(assert (=> b!2398001 m!2796413))

(assert (=> b!2398001 m!2796417))

(assert (=> b!2398001 m!2796413))

(declare-fun m!2796419 () Bool)

(assert (=> b!2398001 m!2796419))

(declare-fun m!2796421 () Bool)

(assert (=> b!2397996 m!2796421))

(assert (=> b!2397997 m!2796413))

(assert (=> b!2397997 m!2796413))

(assert (=> b!2397997 m!2796415))

(assert (=> bm!146410 m!2796029))

(assert (=> b!2397470 d!699319))

(declare-fun e!1528016 () List!28289)

(declare-fun b!2398013 () Bool)

(assert (=> b!2398013 (= e!1528016 (Cons!28191 (h!33592 (ite c!381608 s!9460 (_1!16498 lt!872103))) (++!6979 (t!208266 (ite c!381608 s!9460 (_1!16498 lt!872103))) (ite c!381608 Nil!28191 (_2!16498 lt!872103)))))))

(declare-fun b!2398012 () Bool)

(assert (=> b!2398012 (= e!1528016 (ite c!381608 Nil!28191 (_2!16498 lt!872103)))))

(declare-fun b!2398015 () Bool)

(declare-fun lt!872183 () List!28289)

(declare-fun e!1528017 () Bool)

(assert (=> b!2398015 (= e!1528017 (or (not (= (ite c!381608 Nil!28191 (_2!16498 lt!872103)) Nil!28191)) (= lt!872183 (ite c!381608 s!9460 (_1!16498 lt!872103)))))))

(declare-fun b!2398014 () Bool)

(declare-fun res!1018922 () Bool)

(assert (=> b!2398014 (=> (not res!1018922) (not e!1528017))))

(declare-fun size!22200 (List!28289) Int)

(assert (=> b!2398014 (= res!1018922 (= (size!22200 lt!872183) (+ (size!22200 (ite c!381608 s!9460 (_1!16498 lt!872103))) (size!22200 (ite c!381608 Nil!28191 (_2!16498 lt!872103))))))))

(declare-fun d!699321 () Bool)

(assert (=> d!699321 e!1528017))

(declare-fun res!1018923 () Bool)

(assert (=> d!699321 (=> (not res!1018923) (not e!1528017))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3862 (List!28289) (InoxSet C!14208))

(assert (=> d!699321 (= res!1018923 (= (content!3862 lt!872183) ((_ map or) (content!3862 (ite c!381608 s!9460 (_1!16498 lt!872103))) (content!3862 (ite c!381608 Nil!28191 (_2!16498 lt!872103))))))))

(assert (=> d!699321 (= lt!872183 e!1528016)))

(declare-fun c!381728 () Bool)

(assert (=> d!699321 (= c!381728 ((_ is Nil!28191) (ite c!381608 s!9460 (_1!16498 lt!872103))))))

(assert (=> d!699321 (= (++!6979 (ite c!381608 s!9460 (_1!16498 lt!872103)) (ite c!381608 Nil!28191 (_2!16498 lt!872103))) lt!872183)))

(assert (= (and d!699321 c!381728) b!2398012))

(assert (= (and d!699321 (not c!381728)) b!2398013))

(assert (= (and d!699321 res!1018923) b!2398014))

(assert (= (and b!2398014 res!1018922) b!2398015))

(declare-fun m!2796423 () Bool)

(assert (=> b!2398013 m!2796423))

(declare-fun m!2796425 () Bool)

(assert (=> b!2398014 m!2796425))

(declare-fun m!2796427 () Bool)

(assert (=> b!2398014 m!2796427))

(declare-fun m!2796429 () Bool)

(assert (=> b!2398014 m!2796429))

(declare-fun m!2796431 () Bool)

(assert (=> d!699321 m!2796431))

(declare-fun m!2796433 () Bool)

(assert (=> d!699321 m!2796433))

(declare-fun m!2796435 () Bool)

(assert (=> d!699321 m!2796435))

(assert (=> bm!146368 d!699321))

(declare-fun d!699323 () Bool)

(assert (=> d!699323 (matchR!3142 (Concat!11661 lt!872092 EmptyExpr!7025) (++!6979 s!9460 Nil!28191))))

(declare-fun lt!872186 () Unit!41300)

(declare-fun choose!14189 (Regex!7025 Regex!7025 List!28289 List!28289) Unit!41300)

(assert (=> d!699323 (= lt!872186 (choose!14189 lt!872092 EmptyExpr!7025 s!9460 Nil!28191))))

(declare-fun e!1528020 () Bool)

(assert (=> d!699323 e!1528020))

(declare-fun res!1018926 () Bool)

(assert (=> d!699323 (=> (not res!1018926) (not e!1528020))))

(assert (=> d!699323 (= res!1018926 (validRegex!2750 lt!872092))))

(assert (=> d!699323 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!62 lt!872092 EmptyExpr!7025 s!9460 Nil!28191) lt!872186)))

(declare-fun b!2398018 () Bool)

(assert (=> b!2398018 (= e!1528020 (validRegex!2750 EmptyExpr!7025))))

(assert (= (and d!699323 res!1018926) b!2398018))

(declare-fun m!2796437 () Bool)

(assert (=> d!699323 m!2796437))

(assert (=> d!699323 m!2796437))

(declare-fun m!2796439 () Bool)

(assert (=> d!699323 m!2796439))

(declare-fun m!2796441 () Bool)

(assert (=> d!699323 m!2796441))

(assert (=> d!699323 m!2796083))

(declare-fun m!2796443 () Bool)

(assert (=> b!2398018 m!2796443))

(assert (=> b!2397485 d!699323))

(declare-fun b!2398019 () Bool)

(declare-fun e!1528021 () Bool)

(declare-fun e!1528023 () Bool)

(assert (=> b!2398019 (= e!1528021 e!1528023)))

(declare-fun c!381729 () Bool)

(assert (=> b!2398019 (= c!381729 ((_ is EmptyLang!7025) lt!872102))))

(declare-fun bm!146411 () Bool)

(declare-fun call!146416 () Bool)

(assert (=> bm!146411 (= call!146416 (isEmpty!16183 call!146374))))

(declare-fun b!2398020 () Bool)

(declare-fun res!1018929 () Bool)

(declare-fun e!1528024 () Bool)

(assert (=> b!2398020 (=> (not res!1018929) (not e!1528024))))

(assert (=> b!2398020 (= res!1018929 (isEmpty!16183 (tail!3553 call!146374)))))

(declare-fun b!2398021 () Bool)

(declare-fun e!1528022 () Bool)

(declare-fun e!1528026 () Bool)

(assert (=> b!2398021 (= e!1528022 e!1528026)))

(declare-fun res!1018931 () Bool)

(assert (=> b!2398021 (=> (not res!1018931) (not e!1528026))))

(declare-fun lt!872187 () Bool)

(assert (=> b!2398021 (= res!1018931 (not lt!872187))))

(declare-fun b!2398022 () Bool)

(declare-fun res!1018928 () Bool)

(assert (=> b!2398022 (=> (not res!1018928) (not e!1528024))))

(assert (=> b!2398022 (= res!1018928 (not call!146416))))

(declare-fun d!699325 () Bool)

(assert (=> d!699325 e!1528021))

(declare-fun c!381731 () Bool)

(assert (=> d!699325 (= c!381731 ((_ is EmptyExpr!7025) lt!872102))))

(declare-fun e!1528027 () Bool)

(assert (=> d!699325 (= lt!872187 e!1528027)))

(declare-fun c!381730 () Bool)

(assert (=> d!699325 (= c!381730 (isEmpty!16183 call!146374))))

(assert (=> d!699325 (validRegex!2750 lt!872102)))

(assert (=> d!699325 (= (matchR!3142 lt!872102 call!146374) lt!872187)))

(declare-fun b!2398023 () Bool)

(declare-fun e!1528025 () Bool)

(assert (=> b!2398023 (= e!1528025 (not (= (head!5283 call!146374) (c!381609 lt!872102))))))

(declare-fun b!2398024 () Bool)

(declare-fun res!1018930 () Bool)

(assert (=> b!2398024 (=> res!1018930 e!1528022)))

(assert (=> b!2398024 (= res!1018930 e!1528024)))

(declare-fun res!1018932 () Bool)

(assert (=> b!2398024 (=> (not res!1018932) (not e!1528024))))

(assert (=> b!2398024 (= res!1018932 lt!872187)))

(declare-fun b!2398025 () Bool)

(assert (=> b!2398025 (= e!1528027 (nullable!2074 lt!872102))))

(declare-fun b!2398026 () Bool)

(declare-fun res!1018927 () Bool)

(assert (=> b!2398026 (=> res!1018927 e!1528025)))

(assert (=> b!2398026 (= res!1018927 (not (isEmpty!16183 (tail!3553 call!146374))))))

(declare-fun b!2398027 () Bool)

(assert (=> b!2398027 (= e!1528023 (not lt!872187))))

(declare-fun b!2398028 () Bool)

(assert (=> b!2398028 (= e!1528024 (= (head!5283 call!146374) (c!381609 lt!872102)))))

(declare-fun b!2398029 () Bool)

(assert (=> b!2398029 (= e!1528021 (= lt!872187 call!146416))))

(declare-fun b!2398030 () Bool)

(assert (=> b!2398030 (= e!1528027 (matchR!3142 (derivativeStep!1732 lt!872102 (head!5283 call!146374)) (tail!3553 call!146374)))))

(declare-fun b!2398031 () Bool)

(assert (=> b!2398031 (= e!1528026 e!1528025)))

(declare-fun res!1018933 () Bool)

(assert (=> b!2398031 (=> res!1018933 e!1528025)))

(assert (=> b!2398031 (= res!1018933 call!146416)))

(declare-fun b!2398032 () Bool)

(declare-fun res!1018934 () Bool)

(assert (=> b!2398032 (=> res!1018934 e!1528022)))

(assert (=> b!2398032 (= res!1018934 (not ((_ is ElementMatch!7025) lt!872102)))))

(assert (=> b!2398032 (= e!1528023 e!1528022)))

(assert (= (and d!699325 c!381730) b!2398025))

(assert (= (and d!699325 (not c!381730)) b!2398030))

(assert (= (and d!699325 c!381731) b!2398029))

(assert (= (and d!699325 (not c!381731)) b!2398019))

(assert (= (and b!2398019 c!381729) b!2398027))

(assert (= (and b!2398019 (not c!381729)) b!2398032))

(assert (= (and b!2398032 (not res!1018934)) b!2398024))

(assert (= (and b!2398024 res!1018932) b!2398022))

(assert (= (and b!2398022 res!1018928) b!2398020))

(assert (= (and b!2398020 res!1018929) b!2398028))

(assert (= (and b!2398024 (not res!1018930)) b!2398021))

(assert (= (and b!2398021 res!1018931) b!2398031))

(assert (= (and b!2398031 (not res!1018933)) b!2398026))

(assert (= (and b!2398026 (not res!1018927)) b!2398023))

(assert (= (or b!2398029 b!2398022 b!2398031) bm!146411))

(declare-fun m!2796445 () Bool)

(assert (=> b!2398023 m!2796445))

(assert (=> b!2398028 m!2796445))

(declare-fun m!2796447 () Bool)

(assert (=> b!2398020 m!2796447))

(assert (=> b!2398020 m!2796447))

(declare-fun m!2796449 () Bool)

(assert (=> b!2398020 m!2796449))

(declare-fun m!2796451 () Bool)

(assert (=> d!699325 m!2796451))

(declare-fun m!2796453 () Bool)

(assert (=> d!699325 m!2796453))

(assert (=> b!2398030 m!2796445))

(assert (=> b!2398030 m!2796445))

(declare-fun m!2796455 () Bool)

(assert (=> b!2398030 m!2796455))

(assert (=> b!2398030 m!2796447))

(assert (=> b!2398030 m!2796455))

(assert (=> b!2398030 m!2796447))

(declare-fun m!2796457 () Bool)

(assert (=> b!2398030 m!2796457))

(declare-fun m!2796459 () Bool)

(assert (=> b!2398025 m!2796459))

(assert (=> b!2398026 m!2796447))

(assert (=> b!2398026 m!2796447))

(assert (=> b!2398026 m!2796449))

(assert (=> bm!146411 m!2796451))

(assert (=> b!2397485 d!699325))

(declare-fun d!699327 () Bool)

(assert (=> d!699327 (isDefined!4396 (findConcatSeparation!676 lt!872092 EmptyExpr!7025 Nil!28191 s!9460 s!9460))))

(declare-fun lt!872190 () Unit!41300)

(declare-fun choose!14190 (Regex!7025 Regex!7025 List!28289) Unit!41300)

(assert (=> d!699327 (= lt!872190 (choose!14190 lt!872092 EmptyExpr!7025 s!9460))))

(assert (=> d!699327 (validRegex!2750 lt!872092)))

(assert (=> d!699327 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!44 lt!872092 EmptyExpr!7025 s!9460) lt!872190)))

(declare-fun bs!463016 () Bool)

(assert (= bs!463016 d!699327))

(declare-fun m!2796461 () Bool)

(assert (=> bs!463016 m!2796461))

(assert (=> bs!463016 m!2796461))

(declare-fun m!2796463 () Bool)

(assert (=> bs!463016 m!2796463))

(declare-fun m!2796465 () Bool)

(assert (=> bs!463016 m!2796465))

(assert (=> bs!463016 m!2796083))

(assert (=> b!2397485 d!699327))

(declare-fun b!2398033 () Bool)

(declare-fun e!1528032 () Bool)

(declare-fun lt!872193 () Option!5568)

(assert (=> b!2398033 (= e!1528032 (= (++!6979 (_1!16498 (get!8635 lt!872193)) (_2!16498 (get!8635 lt!872193))) s!9460))))

(declare-fun b!2398034 () Bool)

(declare-fun e!1528030 () Bool)

(assert (=> b!2398034 (= e!1528030 (not (isDefined!4396 lt!872193)))))

(declare-fun b!2398035 () Bool)

(declare-fun e!1528028 () Option!5568)

(assert (=> b!2398035 (= e!1528028 None!5567)))

(declare-fun d!699329 () Bool)

(assert (=> d!699329 e!1528030))

(declare-fun res!1018939 () Bool)

(assert (=> d!699329 (=> res!1018939 e!1528030)))

(assert (=> d!699329 (= res!1018939 e!1528032)))

(declare-fun res!1018938 () Bool)

(assert (=> d!699329 (=> (not res!1018938) (not e!1528032))))

(assert (=> d!699329 (= res!1018938 (isDefined!4396 lt!872193))))

(declare-fun e!1528029 () Option!5568)

(assert (=> d!699329 (= lt!872193 e!1528029)))

(declare-fun c!381733 () Bool)

(declare-fun e!1528031 () Bool)

(assert (=> d!699329 (= c!381733 e!1528031)))

(declare-fun res!1018936 () Bool)

(assert (=> d!699329 (=> (not res!1018936) (not e!1528031))))

(assert (=> d!699329 (= res!1018936 (matchR!3142 lt!872092 Nil!28191))))

(assert (=> d!699329 (validRegex!2750 lt!872092)))

(assert (=> d!699329 (= (findConcatSeparation!676 lt!872092 call!146368 Nil!28191 s!9460 s!9460) lt!872193)))

(declare-fun b!2398036 () Bool)

(assert (=> b!2398036 (= e!1528031 (matchR!3142 call!146368 s!9460))))

(declare-fun b!2398037 () Bool)

(declare-fun res!1018937 () Bool)

(assert (=> b!2398037 (=> (not res!1018937) (not e!1528032))))

(assert (=> b!2398037 (= res!1018937 (matchR!3142 call!146368 (_2!16498 (get!8635 lt!872193))))))

(declare-fun b!2398038 () Bool)

(assert (=> b!2398038 (= e!1528029 (Some!5567 (tuple2!27915 Nil!28191 s!9460)))))

(declare-fun b!2398039 () Bool)

(declare-fun lt!872191 () Unit!41300)

(declare-fun lt!872192 () Unit!41300)

(assert (=> b!2398039 (= lt!872191 lt!872192)))

(assert (=> b!2398039 (= (++!6979 (++!6979 Nil!28191 (Cons!28191 (h!33592 s!9460) Nil!28191)) (t!208266 s!9460)) s!9460)))

(assert (=> b!2398039 (= lt!872192 (lemmaMoveElementToOtherListKeepsConcatEq!621 Nil!28191 (h!33592 s!9460) (t!208266 s!9460) s!9460))))

(assert (=> b!2398039 (= e!1528028 (findConcatSeparation!676 lt!872092 call!146368 (++!6979 Nil!28191 (Cons!28191 (h!33592 s!9460) Nil!28191)) (t!208266 s!9460) s!9460))))

(declare-fun b!2398040 () Bool)

(declare-fun res!1018935 () Bool)

(assert (=> b!2398040 (=> (not res!1018935) (not e!1528032))))

(assert (=> b!2398040 (= res!1018935 (matchR!3142 lt!872092 (_1!16498 (get!8635 lt!872193))))))

(declare-fun b!2398041 () Bool)

(assert (=> b!2398041 (= e!1528029 e!1528028)))

(declare-fun c!381732 () Bool)

(assert (=> b!2398041 (= c!381732 ((_ is Nil!28191) s!9460))))

(assert (= (and d!699329 res!1018936) b!2398036))

(assert (= (and d!699329 c!381733) b!2398038))

(assert (= (and d!699329 (not c!381733)) b!2398041))

(assert (= (and b!2398041 c!381732) b!2398035))

(assert (= (and b!2398041 (not c!381732)) b!2398039))

(assert (= (and d!699329 res!1018938) b!2398040))

(assert (= (and b!2398040 res!1018935) b!2398037))

(assert (= (and b!2398037 res!1018937) b!2398033))

(assert (= (and d!699329 (not res!1018939)) b!2398034))

(declare-fun m!2796467 () Bool)

(assert (=> b!2398036 m!2796467))

(declare-fun m!2796469 () Bool)

(assert (=> b!2398037 m!2796469))

(declare-fun m!2796471 () Bool)

(assert (=> b!2398037 m!2796471))

(declare-fun m!2796473 () Bool)

(assert (=> d!699329 m!2796473))

(assert (=> d!699329 m!2796397))

(assert (=> d!699329 m!2796083))

(assert (=> b!2398033 m!2796469))

(declare-fun m!2796475 () Bool)

(assert (=> b!2398033 m!2796475))

(assert (=> b!2398039 m!2796401))

(assert (=> b!2398039 m!2796401))

(assert (=> b!2398039 m!2796403))

(assert (=> b!2398039 m!2796405))

(assert (=> b!2398039 m!2796401))

(declare-fun m!2796477 () Bool)

(assert (=> b!2398039 m!2796477))

(assert (=> b!2398040 m!2796469))

(declare-fun m!2796479 () Bool)

(assert (=> b!2398040 m!2796479))

(assert (=> b!2398034 m!2796473))

(assert (=> bm!146366 d!699329))

(declare-fun d!699331 () Bool)

(assert (=> d!699331 (= (isEmpty!16183 s!9460) ((_ is Nil!28191) s!9460))))

(assert (=> b!2397476 d!699331))

(declare-fun d!699333 () Bool)

(assert (=> d!699333 (= (isDefined!4396 (findConcatSeparation!676 (h!33591 l!9164) (generalisedConcat!126 (t!208265 l!9164)) Nil!28191 s!9460 s!9460)) (not (isEmpty!16186 (findConcatSeparation!676 (h!33591 l!9164) (generalisedConcat!126 (t!208265 l!9164)) Nil!28191 s!9460 s!9460))))))

(declare-fun bs!463017 () Bool)

(assert (= bs!463017 d!699333))

(assert (=> bs!463017 m!2796025))

(declare-fun m!2796481 () Bool)

(assert (=> bs!463017 m!2796481))

(assert (=> b!2397469 d!699333))

(declare-fun b!2398042 () Bool)

(declare-fun e!1528037 () Bool)

(declare-fun lt!872196 () Option!5568)

(assert (=> b!2398042 (= e!1528037 (= (++!6979 (_1!16498 (get!8635 lt!872196)) (_2!16498 (get!8635 lt!872196))) s!9460))))

(declare-fun b!2398043 () Bool)

(declare-fun e!1528035 () Bool)

(assert (=> b!2398043 (= e!1528035 (not (isDefined!4396 lt!872196)))))

(declare-fun b!2398044 () Bool)

(declare-fun e!1528033 () Option!5568)

(assert (=> b!2398044 (= e!1528033 None!5567)))

(declare-fun d!699335 () Bool)

(assert (=> d!699335 e!1528035))

(declare-fun res!1018944 () Bool)

(assert (=> d!699335 (=> res!1018944 e!1528035)))

(assert (=> d!699335 (= res!1018944 e!1528037)))

(declare-fun res!1018943 () Bool)

(assert (=> d!699335 (=> (not res!1018943) (not e!1528037))))

(assert (=> d!699335 (= res!1018943 (isDefined!4396 lt!872196))))

(declare-fun e!1528034 () Option!5568)

(assert (=> d!699335 (= lt!872196 e!1528034)))

(declare-fun c!381735 () Bool)

(declare-fun e!1528036 () Bool)

(assert (=> d!699335 (= c!381735 e!1528036)))

(declare-fun res!1018941 () Bool)

(assert (=> d!699335 (=> (not res!1018941) (not e!1528036))))

(assert (=> d!699335 (= res!1018941 (matchR!3142 (h!33591 l!9164) Nil!28191))))

(assert (=> d!699335 (validRegex!2750 (h!33591 l!9164))))

(assert (=> d!699335 (= (findConcatSeparation!676 (h!33591 l!9164) (generalisedConcat!126 (t!208265 l!9164)) Nil!28191 s!9460 s!9460) lt!872196)))

(declare-fun b!2398045 () Bool)

(assert (=> b!2398045 (= e!1528036 (matchR!3142 (generalisedConcat!126 (t!208265 l!9164)) s!9460))))

(declare-fun b!2398046 () Bool)

(declare-fun res!1018942 () Bool)

(assert (=> b!2398046 (=> (not res!1018942) (not e!1528037))))

(assert (=> b!2398046 (= res!1018942 (matchR!3142 (generalisedConcat!126 (t!208265 l!9164)) (_2!16498 (get!8635 lt!872196))))))

(declare-fun b!2398047 () Bool)

(assert (=> b!2398047 (= e!1528034 (Some!5567 (tuple2!27915 Nil!28191 s!9460)))))

(declare-fun b!2398048 () Bool)

(declare-fun lt!872194 () Unit!41300)

(declare-fun lt!872195 () Unit!41300)

(assert (=> b!2398048 (= lt!872194 lt!872195)))

(assert (=> b!2398048 (= (++!6979 (++!6979 Nil!28191 (Cons!28191 (h!33592 s!9460) Nil!28191)) (t!208266 s!9460)) s!9460)))

(assert (=> b!2398048 (= lt!872195 (lemmaMoveElementToOtherListKeepsConcatEq!621 Nil!28191 (h!33592 s!9460) (t!208266 s!9460) s!9460))))

(assert (=> b!2398048 (= e!1528033 (findConcatSeparation!676 (h!33591 l!9164) (generalisedConcat!126 (t!208265 l!9164)) (++!6979 Nil!28191 (Cons!28191 (h!33592 s!9460) Nil!28191)) (t!208266 s!9460) s!9460))))

(declare-fun b!2398049 () Bool)

(declare-fun res!1018940 () Bool)

(assert (=> b!2398049 (=> (not res!1018940) (not e!1528037))))

(assert (=> b!2398049 (= res!1018940 (matchR!3142 (h!33591 l!9164) (_1!16498 (get!8635 lt!872196))))))

(declare-fun b!2398050 () Bool)

(assert (=> b!2398050 (= e!1528034 e!1528033)))

(declare-fun c!381734 () Bool)

(assert (=> b!2398050 (= c!381734 ((_ is Nil!28191) s!9460))))

(assert (= (and d!699335 res!1018941) b!2398045))

(assert (= (and d!699335 c!381735) b!2398047))

(assert (= (and d!699335 (not c!381735)) b!2398050))

(assert (= (and b!2398050 c!381734) b!2398044))

(assert (= (and b!2398050 (not c!381734)) b!2398048))

(assert (= (and d!699335 res!1018943) b!2398049))

(assert (= (and b!2398049 res!1018940) b!2398046))

(assert (= (and b!2398046 res!1018942) b!2398042))

(assert (= (and d!699335 (not res!1018944)) b!2398043))

(assert (=> b!2398045 m!2796023))

(declare-fun m!2796483 () Bool)

(assert (=> b!2398045 m!2796483))

(declare-fun m!2796485 () Bool)

(assert (=> b!2398046 m!2796485))

(assert (=> b!2398046 m!2796023))

(declare-fun m!2796487 () Bool)

(assert (=> b!2398046 m!2796487))

(declare-fun m!2796489 () Bool)

(assert (=> d!699335 m!2796489))

(declare-fun m!2796491 () Bool)

(assert (=> d!699335 m!2796491))

(assert (=> d!699335 m!2796031))

(assert (=> b!2398042 m!2796485))

(declare-fun m!2796493 () Bool)

(assert (=> b!2398042 m!2796493))

(assert (=> b!2398048 m!2796401))

(assert (=> b!2398048 m!2796401))

(assert (=> b!2398048 m!2796403))

(assert (=> b!2398048 m!2796405))

(assert (=> b!2398048 m!2796023))

(assert (=> b!2398048 m!2796401))

(declare-fun m!2796495 () Bool)

(assert (=> b!2398048 m!2796495))

(assert (=> b!2398049 m!2796485))

(declare-fun m!2796497 () Bool)

(assert (=> b!2398049 m!2796497))

(assert (=> b!2398043 m!2796489))

(assert (=> b!2397469 d!699335))

(assert (=> b!2397469 d!699247))

(declare-fun d!699337 () Bool)

(assert (=> d!699337 (= (isEmpty!16184 l!9164) ((_ is Nil!28190) l!9164))))

(assert (=> b!2397491 d!699337))

(declare-fun d!699339 () Bool)

(declare-fun res!1018949 () Bool)

(declare-fun e!1528042 () Bool)

(assert (=> d!699339 (=> res!1018949 e!1528042)))

(assert (=> d!699339 (= res!1018949 ((_ is Nil!28190) l!9164))))

(assert (=> d!699339 (= (forall!5659 l!9164 lambda!90029) e!1528042)))

(declare-fun b!2398055 () Bool)

(declare-fun e!1528043 () Bool)

(assert (=> b!2398055 (= e!1528042 e!1528043)))

(declare-fun res!1018950 () Bool)

(assert (=> b!2398055 (=> (not res!1018950) (not e!1528043))))

(declare-fun dynLambda!12140 (Int Regex!7025) Bool)

(assert (=> b!2398055 (= res!1018950 (dynLambda!12140 lambda!90029 (h!33591 l!9164)))))

(declare-fun b!2398056 () Bool)

(assert (=> b!2398056 (= e!1528043 (forall!5659 (t!208265 l!9164) lambda!90029))))

(assert (= (and d!699339 (not res!1018949)) b!2398055))

(assert (= (and b!2398055 res!1018950) b!2398056))

(declare-fun b_lambda!74271 () Bool)

(assert (=> (not b_lambda!74271) (not b!2398055)))

(declare-fun m!2796499 () Bool)

(assert (=> b!2398055 m!2796499))

(declare-fun m!2796501 () Bool)

(assert (=> b!2398056 m!2796501))

(assert (=> start!235236 d!699339))

(declare-fun d!699341 () Bool)

(assert (=> d!699341 (= (head!5281 l!9164) (h!33591 l!9164))))

(assert (=> bm!146372 d!699341))

(declare-fun bs!463018 () Bool)

(declare-fun b!2398091 () Bool)

(assert (= bs!463018 (and b!2398091 b!2397473)))

(declare-fun lambda!90060 () Int)

(assert (=> bs!463018 (not (= lambda!90060 lambda!90030))))

(assert (=> bs!463018 (not (= lambda!90060 lambda!90031))))

(assert (=> b!2398091 true))

(assert (=> b!2398091 true))

(declare-fun bs!463019 () Bool)

(declare-fun b!2398089 () Bool)

(assert (= bs!463019 (and b!2398089 b!2397473)))

(declare-fun lambda!90061 () Int)

(assert (=> bs!463019 (not (= lambda!90061 lambda!90030))))

(assert (=> bs!463019 (= lambda!90061 lambda!90031)))

(declare-fun bs!463020 () Bool)

(assert (= bs!463020 (and b!2398089 b!2398091)))

(assert (=> bs!463020 (not (= lambda!90061 lambda!90060))))

(assert (=> b!2398089 true))

(assert (=> b!2398089 true))

(declare-fun e!1528067 () Bool)

(declare-fun call!146421 () Bool)

(assert (=> b!2398089 (= e!1528067 call!146421)))

(declare-fun b!2398090 () Bool)

(declare-fun c!381746 () Bool)

(assert (=> b!2398090 (= c!381746 ((_ is Union!7025) r!13927))))

(declare-fun e!1528064 () Bool)

(declare-fun e!1528062 () Bool)

(assert (=> b!2398090 (= e!1528064 e!1528062)))

(declare-fun e!1528068 () Bool)

(assert (=> b!2398091 (= e!1528068 call!146421)))

(declare-fun b!2398092 () Bool)

(declare-fun e!1528063 () Bool)

(assert (=> b!2398092 (= e!1528062 e!1528063)))

(declare-fun res!1018968 () Bool)

(assert (=> b!2398092 (= res!1018968 (matchRSpec!874 (regOne!14563 r!13927) s!9460))))

(assert (=> b!2398092 (=> res!1018968 e!1528063)))

(declare-fun b!2398093 () Bool)

(declare-fun e!1528066 () Bool)

(declare-fun call!146422 () Bool)

(assert (=> b!2398093 (= e!1528066 call!146422)))

(declare-fun d!699343 () Bool)

(declare-fun c!381747 () Bool)

(assert (=> d!699343 (= c!381747 ((_ is EmptyExpr!7025) r!13927))))

(assert (=> d!699343 (= (matchRSpec!874 r!13927 s!9460) e!1528066)))

(declare-fun b!2398094 () Bool)

(declare-fun c!381745 () Bool)

(assert (=> b!2398094 (= c!381745 ((_ is ElementMatch!7025) r!13927))))

(declare-fun e!1528065 () Bool)

(assert (=> b!2398094 (= e!1528065 e!1528064)))

(declare-fun c!381744 () Bool)

(declare-fun bm!146416 () Bool)

(assert (=> bm!146416 (= call!146421 (Exists!1087 (ite c!381744 lambda!90060 lambda!90061)))))

(declare-fun b!2398095 () Bool)

(declare-fun res!1018967 () Bool)

(assert (=> b!2398095 (=> res!1018967 e!1528068)))

(assert (=> b!2398095 (= res!1018967 call!146422)))

(assert (=> b!2398095 (= e!1528067 e!1528068)))

(declare-fun b!2398096 () Bool)

(assert (=> b!2398096 (= e!1528062 e!1528067)))

(assert (=> b!2398096 (= c!381744 ((_ is Star!7025) r!13927))))

(declare-fun bm!146417 () Bool)

(assert (=> bm!146417 (= call!146422 (isEmpty!16183 s!9460))))

(declare-fun b!2398097 () Bool)

(assert (=> b!2398097 (= e!1528063 (matchRSpec!874 (regTwo!14563 r!13927) s!9460))))

(declare-fun b!2398098 () Bool)

(assert (=> b!2398098 (= e!1528066 e!1528065)))

(declare-fun res!1018969 () Bool)

(assert (=> b!2398098 (= res!1018969 (not ((_ is EmptyLang!7025) r!13927)))))

(assert (=> b!2398098 (=> (not res!1018969) (not e!1528065))))

(declare-fun b!2398099 () Bool)

(assert (=> b!2398099 (= e!1528064 (= s!9460 (Cons!28191 (c!381609 r!13927) Nil!28191)))))

(assert (= (and d!699343 c!381747) b!2398093))

(assert (= (and d!699343 (not c!381747)) b!2398098))

(assert (= (and b!2398098 res!1018969) b!2398094))

(assert (= (and b!2398094 c!381745) b!2398099))

(assert (= (and b!2398094 (not c!381745)) b!2398090))

(assert (= (and b!2398090 c!381746) b!2398092))

(assert (= (and b!2398090 (not c!381746)) b!2398096))

(assert (= (and b!2398092 (not res!1018968)) b!2398097))

(assert (= (and b!2398096 c!381744) b!2398095))

(assert (= (and b!2398096 (not c!381744)) b!2398089))

(assert (= (and b!2398095 (not res!1018967)) b!2398091))

(assert (= (or b!2398091 b!2398089) bm!146416))

(assert (= (or b!2398093 b!2398095) bm!146417))

(declare-fun m!2796503 () Bool)

(assert (=> b!2398092 m!2796503))

(declare-fun m!2796505 () Bool)

(assert (=> bm!146416 m!2796505))

(assert (=> bm!146417 m!2796029))

(declare-fun m!2796507 () Bool)

(assert (=> b!2398097 m!2796507))

(assert (=> b!2397474 d!699343))

(declare-fun b!2398100 () Bool)

(declare-fun e!1528069 () Bool)

(declare-fun e!1528071 () Bool)

(assert (=> b!2398100 (= e!1528069 e!1528071)))

(declare-fun c!381748 () Bool)

(assert (=> b!2398100 (= c!381748 ((_ is EmptyLang!7025) r!13927))))

(declare-fun bm!146418 () Bool)

(declare-fun call!146423 () Bool)

(assert (=> bm!146418 (= call!146423 (isEmpty!16183 s!9460))))

(declare-fun b!2398101 () Bool)

(declare-fun res!1018972 () Bool)

(declare-fun e!1528072 () Bool)

(assert (=> b!2398101 (=> (not res!1018972) (not e!1528072))))

(assert (=> b!2398101 (= res!1018972 (isEmpty!16183 (tail!3553 s!9460)))))

(declare-fun b!2398102 () Bool)

(declare-fun e!1528070 () Bool)

(declare-fun e!1528074 () Bool)

(assert (=> b!2398102 (= e!1528070 e!1528074)))

(declare-fun res!1018974 () Bool)

(assert (=> b!2398102 (=> (not res!1018974) (not e!1528074))))

(declare-fun lt!872197 () Bool)

(assert (=> b!2398102 (= res!1018974 (not lt!872197))))

(declare-fun b!2398103 () Bool)

(declare-fun res!1018971 () Bool)

(assert (=> b!2398103 (=> (not res!1018971) (not e!1528072))))

(assert (=> b!2398103 (= res!1018971 (not call!146423))))

(declare-fun d!699345 () Bool)

(assert (=> d!699345 e!1528069))

(declare-fun c!381750 () Bool)

(assert (=> d!699345 (= c!381750 ((_ is EmptyExpr!7025) r!13927))))

(declare-fun e!1528075 () Bool)

(assert (=> d!699345 (= lt!872197 e!1528075)))

(declare-fun c!381749 () Bool)

(assert (=> d!699345 (= c!381749 (isEmpty!16183 s!9460))))

(assert (=> d!699345 (validRegex!2750 r!13927)))

(assert (=> d!699345 (= (matchR!3142 r!13927 s!9460) lt!872197)))

(declare-fun b!2398104 () Bool)

(declare-fun e!1528073 () Bool)

(assert (=> b!2398104 (= e!1528073 (not (= (head!5283 s!9460) (c!381609 r!13927))))))

(declare-fun b!2398105 () Bool)

(declare-fun res!1018973 () Bool)

(assert (=> b!2398105 (=> res!1018973 e!1528070)))

(assert (=> b!2398105 (= res!1018973 e!1528072)))

(declare-fun res!1018975 () Bool)

(assert (=> b!2398105 (=> (not res!1018975) (not e!1528072))))

(assert (=> b!2398105 (= res!1018975 lt!872197)))

(declare-fun b!2398106 () Bool)

(assert (=> b!2398106 (= e!1528075 (nullable!2074 r!13927))))

(declare-fun b!2398107 () Bool)

(declare-fun res!1018970 () Bool)

(assert (=> b!2398107 (=> res!1018970 e!1528073)))

(assert (=> b!2398107 (= res!1018970 (not (isEmpty!16183 (tail!3553 s!9460))))))

(declare-fun b!2398108 () Bool)

(assert (=> b!2398108 (= e!1528071 (not lt!872197))))

(declare-fun b!2398109 () Bool)

(assert (=> b!2398109 (= e!1528072 (= (head!5283 s!9460) (c!381609 r!13927)))))

(declare-fun b!2398110 () Bool)

(assert (=> b!2398110 (= e!1528069 (= lt!872197 call!146423))))

(declare-fun b!2398111 () Bool)

(assert (=> b!2398111 (= e!1528075 (matchR!3142 (derivativeStep!1732 r!13927 (head!5283 s!9460)) (tail!3553 s!9460)))))

(declare-fun b!2398112 () Bool)

(assert (=> b!2398112 (= e!1528074 e!1528073)))

(declare-fun res!1018976 () Bool)

(assert (=> b!2398112 (=> res!1018976 e!1528073)))

(assert (=> b!2398112 (= res!1018976 call!146423)))

(declare-fun b!2398113 () Bool)

(declare-fun res!1018977 () Bool)

(assert (=> b!2398113 (=> res!1018977 e!1528070)))

(assert (=> b!2398113 (= res!1018977 (not ((_ is ElementMatch!7025) r!13927)))))

(assert (=> b!2398113 (= e!1528071 e!1528070)))

(assert (= (and d!699345 c!381749) b!2398106))

(assert (= (and d!699345 (not c!381749)) b!2398111))

(assert (= (and d!699345 c!381750) b!2398110))

(assert (= (and d!699345 (not c!381750)) b!2398100))

(assert (= (and b!2398100 c!381748) b!2398108))

(assert (= (and b!2398100 (not c!381748)) b!2398113))

(assert (= (and b!2398113 (not res!1018977)) b!2398105))

(assert (= (and b!2398105 res!1018975) b!2398103))

(assert (= (and b!2398103 res!1018971) b!2398101))

(assert (= (and b!2398101 res!1018972) b!2398109))

(assert (= (and b!2398105 (not res!1018973)) b!2398102))

(assert (= (and b!2398102 res!1018974) b!2398112))

(assert (= (and b!2398112 (not res!1018976)) b!2398107))

(assert (= (and b!2398107 (not res!1018970)) b!2398104))

(assert (= (or b!2398110 b!2398103 b!2398112) bm!146418))

(assert (=> b!2398104 m!2796411))

(assert (=> b!2398109 m!2796411))

(assert (=> b!2398101 m!2796413))

(assert (=> b!2398101 m!2796413))

(assert (=> b!2398101 m!2796415))

(assert (=> d!699345 m!2796029))

(declare-fun m!2796509 () Bool)

(assert (=> d!699345 m!2796509))

(assert (=> b!2398111 m!2796411))

(assert (=> b!2398111 m!2796411))

(declare-fun m!2796511 () Bool)

(assert (=> b!2398111 m!2796511))

(assert (=> b!2398111 m!2796413))

(assert (=> b!2398111 m!2796511))

(assert (=> b!2398111 m!2796413))

(declare-fun m!2796513 () Bool)

(assert (=> b!2398111 m!2796513))

(declare-fun m!2796515 () Bool)

(assert (=> b!2398106 m!2796515))

(assert (=> b!2398107 m!2796413))

(assert (=> b!2398107 m!2796413))

(assert (=> b!2398107 m!2796415))

(assert (=> bm!146418 m!2796029))

(assert (=> b!2397474 d!699345))

(declare-fun d!699347 () Bool)

(assert (=> d!699347 (= (matchR!3142 r!13927 s!9460) (matchRSpec!874 r!13927 s!9460))))

(declare-fun lt!872200 () Unit!41300)

(declare-fun choose!14191 (Regex!7025 List!28289) Unit!41300)

(assert (=> d!699347 (= lt!872200 (choose!14191 r!13927 s!9460))))

(assert (=> d!699347 (validRegex!2750 r!13927)))

(assert (=> d!699347 (= (mainMatchTheorem!874 r!13927 s!9460) lt!872200)))

(declare-fun bs!463021 () Bool)

(assert (= bs!463021 d!699347))

(assert (=> bs!463021 m!2795967))

(assert (=> bs!463021 m!2795965))

(declare-fun m!2796517 () Bool)

(assert (=> bs!463021 m!2796517))

(assert (=> bs!463021 m!2796509))

(assert (=> b!2397474 d!699347))

(declare-fun d!699349 () Bool)

(assert (=> d!699349 (= (isDefined!4396 (ite c!381608 call!146372 lt!872099)) (not (isEmpty!16186 (ite c!381608 call!146372 lt!872099))))))

(declare-fun bs!463022 () Bool)

(assert (= bs!463022 d!699349))

(declare-fun m!2796519 () Bool)

(assert (=> bs!463022 m!2796519))

(assert (=> bm!146365 d!699349))

(declare-fun d!699351 () Bool)

(assert (=> d!699351 (= (isDefined!4396 (findConcatSeparation!676 (regOne!14562 r!13927) (regTwo!14562 r!13927) Nil!28191 s!9460 s!9460)) (not (isEmpty!16186 (findConcatSeparation!676 (regOne!14562 r!13927) (regTwo!14562 r!13927) Nil!28191 s!9460 s!9460))))))

(declare-fun bs!463023 () Bool)

(assert (= bs!463023 d!699351))

(assert (=> bs!463023 m!2795989))

(declare-fun m!2796521 () Bool)

(assert (=> bs!463023 m!2796521))

(assert (=> b!2397473 d!699351))

(declare-fun d!699353 () Bool)

(declare-fun choose!14192 (Int) Bool)

(assert (=> d!699353 (= (Exists!1087 lambda!90031) (choose!14192 lambda!90031))))

(declare-fun bs!463024 () Bool)

(assert (= bs!463024 d!699353))

(declare-fun m!2796523 () Bool)

(assert (=> bs!463024 m!2796523))

(assert (=> b!2397473 d!699353))

(declare-fun bs!463025 () Bool)

(declare-fun d!699355 () Bool)

(assert (= bs!463025 (and d!699355 b!2397473)))

(declare-fun lambda!90064 () Int)

(assert (=> bs!463025 (= lambda!90064 lambda!90030)))

(assert (=> bs!463025 (not (= lambda!90064 lambda!90031))))

(declare-fun bs!463026 () Bool)

(assert (= bs!463026 (and d!699355 b!2398091)))

(assert (=> bs!463026 (not (= lambda!90064 lambda!90060))))

(declare-fun bs!463027 () Bool)

(assert (= bs!463027 (and d!699355 b!2398089)))

(assert (=> bs!463027 (not (= lambda!90064 lambda!90061))))

(assert (=> d!699355 true))

(assert (=> d!699355 true))

(assert (=> d!699355 true))

(assert (=> d!699355 (= (isDefined!4396 (findConcatSeparation!676 (regOne!14562 r!13927) (regTwo!14562 r!13927) Nil!28191 s!9460 s!9460)) (Exists!1087 lambda!90064))))

(declare-fun lt!872203 () Unit!41300)

(declare-fun choose!14193 (Regex!7025 Regex!7025 List!28289) Unit!41300)

(assert (=> d!699355 (= lt!872203 (choose!14193 (regOne!14562 r!13927) (regTwo!14562 r!13927) s!9460))))

(assert (=> d!699355 (validRegex!2750 (regOne!14562 r!13927))))

(assert (=> d!699355 (= (lemmaFindConcatSeparationEquivalentToExists!676 (regOne!14562 r!13927) (regTwo!14562 r!13927) s!9460) lt!872203)))

(declare-fun bs!463028 () Bool)

(assert (= bs!463028 d!699355))

(declare-fun m!2796525 () Bool)

(assert (=> bs!463028 m!2796525))

(assert (=> bs!463028 m!2795989))

(assert (=> bs!463028 m!2795989))

(assert (=> bs!463028 m!2795991))

(declare-fun m!2796527 () Bool)

(assert (=> bs!463028 m!2796527))

(declare-fun m!2796529 () Bool)

(assert (=> bs!463028 m!2796529))

(assert (=> b!2397473 d!699355))

(declare-fun bs!463029 () Bool)

(declare-fun d!699357 () Bool)

(assert (= bs!463029 (and d!699357 b!2397473)))

(declare-fun lambda!90069 () Int)

(assert (=> bs!463029 (not (= lambda!90069 lambda!90031))))

(declare-fun bs!463030 () Bool)

(assert (= bs!463030 (and d!699357 b!2398091)))

(assert (=> bs!463030 (not (= lambda!90069 lambda!90060))))

(declare-fun bs!463031 () Bool)

(assert (= bs!463031 (and d!699357 d!699355)))

(assert (=> bs!463031 (= lambda!90069 lambda!90064)))

(declare-fun bs!463032 () Bool)

(assert (= bs!463032 (and d!699357 b!2398089)))

(assert (=> bs!463032 (not (= lambda!90069 lambda!90061))))

(assert (=> bs!463029 (= lambda!90069 lambda!90030)))

(assert (=> d!699357 true))

(assert (=> d!699357 true))

(assert (=> d!699357 true))

(declare-fun bs!463033 () Bool)

(assert (= bs!463033 d!699357))

(declare-fun lambda!90070 () Int)

(assert (=> bs!463033 (not (= lambda!90070 lambda!90069))))

(assert (=> bs!463029 (= lambda!90070 lambda!90031)))

(assert (=> bs!463030 (not (= lambda!90070 lambda!90060))))

(assert (=> bs!463031 (not (= lambda!90070 lambda!90064))))

(assert (=> bs!463032 (= lambda!90070 lambda!90061)))

(assert (=> bs!463029 (not (= lambda!90070 lambda!90030))))

(assert (=> d!699357 true))

(assert (=> d!699357 true))

(assert (=> d!699357 true))

(assert (=> d!699357 (= (Exists!1087 lambda!90069) (Exists!1087 lambda!90070))))

(declare-fun lt!872206 () Unit!41300)

(declare-fun choose!14194 (Regex!7025 Regex!7025 List!28289) Unit!41300)

(assert (=> d!699357 (= lt!872206 (choose!14194 (regOne!14562 r!13927) (regTwo!14562 r!13927) s!9460))))

(assert (=> d!699357 (validRegex!2750 (regOne!14562 r!13927))))

(assert (=> d!699357 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!426 (regOne!14562 r!13927) (regTwo!14562 r!13927) s!9460) lt!872206)))

(declare-fun m!2796531 () Bool)

(assert (=> bs!463033 m!2796531))

(declare-fun m!2796533 () Bool)

(assert (=> bs!463033 m!2796533))

(declare-fun m!2796535 () Bool)

(assert (=> bs!463033 m!2796535))

(assert (=> bs!463033 m!2796529))

(assert (=> b!2397473 d!699357))

(declare-fun d!699359 () Bool)

(assert (=> d!699359 (= (Exists!1087 lambda!90030) (choose!14192 lambda!90030))))

(declare-fun bs!463034 () Bool)

(assert (= bs!463034 d!699359))

(declare-fun m!2796537 () Bool)

(assert (=> bs!463034 m!2796537))

(assert (=> b!2397473 d!699359))

(declare-fun b!2398126 () Bool)

(declare-fun e!1528086 () Bool)

(declare-fun lt!872209 () Option!5568)

(assert (=> b!2398126 (= e!1528086 (= (++!6979 (_1!16498 (get!8635 lt!872209)) (_2!16498 (get!8635 lt!872209))) s!9460))))

(declare-fun b!2398127 () Bool)

(declare-fun e!1528084 () Bool)

(assert (=> b!2398127 (= e!1528084 (not (isDefined!4396 lt!872209)))))

(declare-fun b!2398128 () Bool)

(declare-fun e!1528082 () Option!5568)

(assert (=> b!2398128 (= e!1528082 None!5567)))

(declare-fun d!699361 () Bool)

(assert (=> d!699361 e!1528084))

(declare-fun res!1018994 () Bool)

(assert (=> d!699361 (=> res!1018994 e!1528084)))

(assert (=> d!699361 (= res!1018994 e!1528086)))

(declare-fun res!1018993 () Bool)

(assert (=> d!699361 (=> (not res!1018993) (not e!1528086))))

(assert (=> d!699361 (= res!1018993 (isDefined!4396 lt!872209))))

(declare-fun e!1528083 () Option!5568)

(assert (=> d!699361 (= lt!872209 e!1528083)))

(declare-fun c!381752 () Bool)

(declare-fun e!1528085 () Bool)

(assert (=> d!699361 (= c!381752 e!1528085)))

(declare-fun res!1018991 () Bool)

(assert (=> d!699361 (=> (not res!1018991) (not e!1528085))))

(assert (=> d!699361 (= res!1018991 (matchR!3142 (regOne!14562 r!13927) Nil!28191))))

(assert (=> d!699361 (validRegex!2750 (regOne!14562 r!13927))))

(assert (=> d!699361 (= (findConcatSeparation!676 (regOne!14562 r!13927) (regTwo!14562 r!13927) Nil!28191 s!9460 s!9460) lt!872209)))

(declare-fun b!2398129 () Bool)

(assert (=> b!2398129 (= e!1528085 (matchR!3142 (regTwo!14562 r!13927) s!9460))))

(declare-fun b!2398130 () Bool)

(declare-fun res!1018992 () Bool)

(assert (=> b!2398130 (=> (not res!1018992) (not e!1528086))))

(assert (=> b!2398130 (= res!1018992 (matchR!3142 (regTwo!14562 r!13927) (_2!16498 (get!8635 lt!872209))))))

(declare-fun b!2398131 () Bool)

(assert (=> b!2398131 (= e!1528083 (Some!5567 (tuple2!27915 Nil!28191 s!9460)))))

(declare-fun b!2398132 () Bool)

(declare-fun lt!872207 () Unit!41300)

(declare-fun lt!872208 () Unit!41300)

(assert (=> b!2398132 (= lt!872207 lt!872208)))

(assert (=> b!2398132 (= (++!6979 (++!6979 Nil!28191 (Cons!28191 (h!33592 s!9460) Nil!28191)) (t!208266 s!9460)) s!9460)))

(assert (=> b!2398132 (= lt!872208 (lemmaMoveElementToOtherListKeepsConcatEq!621 Nil!28191 (h!33592 s!9460) (t!208266 s!9460) s!9460))))

(assert (=> b!2398132 (= e!1528082 (findConcatSeparation!676 (regOne!14562 r!13927) (regTwo!14562 r!13927) (++!6979 Nil!28191 (Cons!28191 (h!33592 s!9460) Nil!28191)) (t!208266 s!9460) s!9460))))

(declare-fun b!2398133 () Bool)

(declare-fun res!1018990 () Bool)

(assert (=> b!2398133 (=> (not res!1018990) (not e!1528086))))

(assert (=> b!2398133 (= res!1018990 (matchR!3142 (regOne!14562 r!13927) (_1!16498 (get!8635 lt!872209))))))

(declare-fun b!2398134 () Bool)

(assert (=> b!2398134 (= e!1528083 e!1528082)))

(declare-fun c!381751 () Bool)

(assert (=> b!2398134 (= c!381751 ((_ is Nil!28191) s!9460))))

(assert (= (and d!699361 res!1018991) b!2398129))

(assert (= (and d!699361 c!381752) b!2398131))

(assert (= (and d!699361 (not c!381752)) b!2398134))

(assert (= (and b!2398134 c!381751) b!2398128))

(assert (= (and b!2398134 (not c!381751)) b!2398132))

(assert (= (and d!699361 res!1018993) b!2398133))

(assert (= (and b!2398133 res!1018990) b!2398130))

(assert (= (and b!2398130 res!1018992) b!2398126))

(assert (= (and d!699361 (not res!1018994)) b!2398127))

(declare-fun m!2796539 () Bool)

(assert (=> b!2398129 m!2796539))

(declare-fun m!2796541 () Bool)

(assert (=> b!2398130 m!2796541))

(declare-fun m!2796543 () Bool)

(assert (=> b!2398130 m!2796543))

(declare-fun m!2796545 () Bool)

(assert (=> d!699361 m!2796545))

(declare-fun m!2796547 () Bool)

(assert (=> d!699361 m!2796547))

(assert (=> d!699361 m!2796529))

(assert (=> b!2398126 m!2796541))

(declare-fun m!2796549 () Bool)

(assert (=> b!2398126 m!2796549))

(assert (=> b!2398132 m!2796401))

(assert (=> b!2398132 m!2796401))

(assert (=> b!2398132 m!2796403))

(assert (=> b!2398132 m!2796405))

(assert (=> b!2398132 m!2796401))

(declare-fun m!2796551 () Bool)

(assert (=> b!2398132 m!2796551))

(assert (=> b!2398133 m!2796541))

(declare-fun m!2796553 () Bool)

(assert (=> b!2398133 m!2796553))

(assert (=> b!2398127 m!2796545))

(assert (=> b!2397473 d!699361))

(declare-fun bm!146419 () Bool)

(declare-fun call!146424 () Bool)

(declare-fun call!146426 () Bool)

(assert (=> bm!146419 (= call!146424 call!146426)))

(declare-fun b!2398136 () Bool)

(declare-fun e!1528091 () Bool)

(declare-fun e!1528088 () Bool)

(assert (=> b!2398136 (= e!1528091 e!1528088)))

(declare-fun res!1018995 () Bool)

(assert (=> b!2398136 (= res!1018995 (not (nullable!2074 (reg!7354 lt!872098))))))

(assert (=> b!2398136 (=> (not res!1018995) (not e!1528088))))

(declare-fun b!2398137 () Bool)

(declare-fun e!1528089 () Bool)

(declare-fun e!1528090 () Bool)

(assert (=> b!2398137 (= e!1528089 e!1528090)))

(declare-fun res!1018998 () Bool)

(assert (=> b!2398137 (=> (not res!1018998) (not e!1528090))))

(assert (=> b!2398137 (= res!1018998 call!146424)))

(declare-fun b!2398138 () Bool)

(assert (=> b!2398138 (= e!1528088 call!146426)))

(declare-fun bm!146420 () Bool)

(declare-fun call!146425 () Bool)

(declare-fun c!381754 () Bool)

(assert (=> bm!146420 (= call!146425 (validRegex!2750 (ite c!381754 (regOne!14563 lt!872098) (regTwo!14562 lt!872098))))))

(declare-fun b!2398139 () Bool)

(declare-fun res!1018999 () Bool)

(declare-fun e!1528087 () Bool)

(assert (=> b!2398139 (=> (not res!1018999) (not e!1528087))))

(assert (=> b!2398139 (= res!1018999 call!146425)))

(declare-fun e!1528093 () Bool)

(assert (=> b!2398139 (= e!1528093 e!1528087)))

(declare-fun bm!146421 () Bool)

(declare-fun c!381753 () Bool)

(assert (=> bm!146421 (= call!146426 (validRegex!2750 (ite c!381753 (reg!7354 lt!872098) (ite c!381754 (regTwo!14563 lt!872098) (regOne!14562 lt!872098)))))))

(declare-fun b!2398140 () Bool)

(declare-fun e!1528092 () Bool)

(assert (=> b!2398140 (= e!1528092 e!1528091)))

(assert (=> b!2398140 (= c!381753 ((_ is Star!7025) lt!872098))))

(declare-fun b!2398141 () Bool)

(assert (=> b!2398141 (= e!1528087 call!146424)))

(declare-fun d!699363 () Bool)

(declare-fun res!1018997 () Bool)

(assert (=> d!699363 (=> res!1018997 e!1528092)))

(assert (=> d!699363 (= res!1018997 ((_ is ElementMatch!7025) lt!872098))))

(assert (=> d!699363 (= (validRegex!2750 lt!872098) e!1528092)))

(declare-fun b!2398135 () Bool)

(assert (=> b!2398135 (= e!1528091 e!1528093)))

(assert (=> b!2398135 (= c!381754 ((_ is Union!7025) lt!872098))))

(declare-fun b!2398142 () Bool)

(assert (=> b!2398142 (= e!1528090 call!146425)))

(declare-fun b!2398143 () Bool)

(declare-fun res!1018996 () Bool)

(assert (=> b!2398143 (=> res!1018996 e!1528089)))

(assert (=> b!2398143 (= res!1018996 (not ((_ is Concat!11661) lt!872098)))))

(assert (=> b!2398143 (= e!1528093 e!1528089)))

(assert (= (and d!699363 (not res!1018997)) b!2398140))

(assert (= (and b!2398140 c!381753) b!2398136))

(assert (= (and b!2398140 (not c!381753)) b!2398135))

(assert (= (and b!2398136 res!1018995) b!2398138))

(assert (= (and b!2398135 c!381754) b!2398139))

(assert (= (and b!2398135 (not c!381754)) b!2398143))

(assert (= (and b!2398139 res!1018999) b!2398141))

(assert (= (and b!2398143 (not res!1018996)) b!2398137))

(assert (= (and b!2398137 res!1018998) b!2398142))

(assert (= (or b!2398139 b!2398142) bm!146420))

(assert (= (or b!2398141 b!2398137) bm!146419))

(assert (= (or b!2398138 bm!146419) bm!146421))

(declare-fun m!2796555 () Bool)

(assert (=> b!2398136 m!2796555))

(declare-fun m!2796557 () Bool)

(assert (=> bm!146420 m!2796557))

(declare-fun m!2796559 () Bool)

(assert (=> bm!146421 m!2796559))

(assert (=> b!2397472 d!699363))

(declare-fun b!2398145 () Bool)

(declare-fun e!1528094 () List!28289)

(assert (=> b!2398145 (= e!1528094 (Cons!28191 (h!33592 Nil!28191) (++!6979 (t!208266 Nil!28191) s!9460)))))

(declare-fun b!2398144 () Bool)

(assert (=> b!2398144 (= e!1528094 s!9460)))

(declare-fun b!2398147 () Bool)

(declare-fun e!1528095 () Bool)

(declare-fun lt!872210 () List!28289)

(assert (=> b!2398147 (= e!1528095 (or (not (= s!9460 Nil!28191)) (= lt!872210 Nil!28191)))))

(declare-fun b!2398146 () Bool)

(declare-fun res!1019000 () Bool)

(assert (=> b!2398146 (=> (not res!1019000) (not e!1528095))))

(assert (=> b!2398146 (= res!1019000 (= (size!22200 lt!872210) (+ (size!22200 Nil!28191) (size!22200 s!9460))))))

(declare-fun d!699365 () Bool)

(assert (=> d!699365 e!1528095))

(declare-fun res!1019001 () Bool)

(assert (=> d!699365 (=> (not res!1019001) (not e!1528095))))

(assert (=> d!699365 (= res!1019001 (= (content!3862 lt!872210) ((_ map or) (content!3862 Nil!28191) (content!3862 s!9460))))))

(assert (=> d!699365 (= lt!872210 e!1528094)))

(declare-fun c!381755 () Bool)

(assert (=> d!699365 (= c!381755 ((_ is Nil!28191) Nil!28191))))

(assert (=> d!699365 (= (++!6979 Nil!28191 s!9460) lt!872210)))

(assert (= (and d!699365 c!381755) b!2398144))

(assert (= (and d!699365 (not c!381755)) b!2398145))

(assert (= (and d!699365 res!1019001) b!2398146))

(assert (= (and b!2398146 res!1019000) b!2398147))

(declare-fun m!2796561 () Bool)

(assert (=> b!2398145 m!2796561))

(declare-fun m!2796563 () Bool)

(assert (=> b!2398146 m!2796563))

(declare-fun m!2796565 () Bool)

(assert (=> b!2398146 m!2796565))

(declare-fun m!2796567 () Bool)

(assert (=> b!2398146 m!2796567))

(declare-fun m!2796569 () Bool)

(assert (=> d!699365 m!2796569))

(declare-fun m!2796571 () Bool)

(assert (=> d!699365 m!2796571))

(declare-fun m!2796573 () Bool)

(assert (=> d!699365 m!2796573))

(assert (=> b!2397487 d!699365))

(declare-fun bs!463035 () Bool)

(declare-fun d!699367 () Bool)

(assert (= bs!463035 (and d!699367 start!235236)))

(declare-fun lambda!90071 () Int)

(assert (=> bs!463035 (= lambda!90071 lambda!90029)))

(declare-fun bs!463036 () Bool)

(assert (= bs!463036 (and d!699367 d!699247)))

(assert (=> bs!463036 (= lambda!90071 lambda!90044)))

(declare-fun bs!463037 () Bool)

(assert (= bs!463037 (and d!699367 d!699299)))

(assert (=> bs!463037 (= lambda!90071 lambda!90054)))

(declare-fun b!2398148 () Bool)

(declare-fun e!1528099 () Bool)

(declare-fun lt!872211 () Regex!7025)

(assert (=> b!2398148 (= e!1528099 (= lt!872211 (head!5281 l!9164)))))

(declare-fun e!1528098 () Bool)

(assert (=> d!699367 e!1528098))

(declare-fun res!1019002 () Bool)

(assert (=> d!699367 (=> (not res!1019002) (not e!1528098))))

(assert (=> d!699367 (= res!1019002 (validRegex!2750 lt!872211))))

(declare-fun e!1528096 () Regex!7025)

(assert (=> d!699367 (= lt!872211 e!1528096)))

(declare-fun c!381757 () Bool)

(declare-fun e!1528101 () Bool)

(assert (=> d!699367 (= c!381757 e!1528101)))

(declare-fun res!1019003 () Bool)

(assert (=> d!699367 (=> (not res!1019003) (not e!1528101))))

(assert (=> d!699367 (= res!1019003 ((_ is Cons!28190) l!9164))))

(assert (=> d!699367 (forall!5659 l!9164 lambda!90071)))

(assert (=> d!699367 (= (generalisedConcat!126 l!9164) lt!872211)))

(declare-fun b!2398149 () Bool)

(declare-fun e!1528097 () Bool)

(assert (=> b!2398149 (= e!1528097 (isEmptyExpr!95 lt!872211))))

(declare-fun b!2398150 () Bool)

(assert (=> b!2398150 (= e!1528096 (h!33591 l!9164))))

(declare-fun b!2398151 () Bool)

(declare-fun e!1528100 () Regex!7025)

(assert (=> b!2398151 (= e!1528100 (Concat!11661 (h!33591 l!9164) (generalisedConcat!126 (t!208265 l!9164))))))

(declare-fun b!2398152 () Bool)

(assert (=> b!2398152 (= e!1528098 e!1528097)))

(declare-fun c!381756 () Bool)

(assert (=> b!2398152 (= c!381756 (isEmpty!16184 l!9164))))

(declare-fun b!2398153 () Bool)

(assert (=> b!2398153 (= e!1528096 e!1528100)))

(declare-fun c!381759 () Bool)

(assert (=> b!2398153 (= c!381759 ((_ is Cons!28190) l!9164))))

(declare-fun b!2398154 () Bool)

(assert (=> b!2398154 (= e!1528099 (isConcat!95 lt!872211))))

(declare-fun b!2398155 () Bool)

(assert (=> b!2398155 (= e!1528101 (isEmpty!16184 (t!208265 l!9164)))))

(declare-fun b!2398156 () Bool)

(assert (=> b!2398156 (= e!1528097 e!1528099)))

(declare-fun c!381758 () Bool)

(assert (=> b!2398156 (= c!381758 (isEmpty!16184 (tail!3551 l!9164)))))

(declare-fun b!2398157 () Bool)

(assert (=> b!2398157 (= e!1528100 EmptyExpr!7025)))

(assert (= (and d!699367 res!1019003) b!2398155))

(assert (= (and d!699367 c!381757) b!2398150))

(assert (= (and d!699367 (not c!381757)) b!2398153))

(assert (= (and b!2398153 c!381759) b!2398151))

(assert (= (and b!2398153 (not c!381759)) b!2398157))

(assert (= (and d!699367 res!1019002) b!2398152))

(assert (= (and b!2398152 c!381756) b!2398149))

(assert (= (and b!2398152 (not c!381756)) b!2398156))

(assert (= (and b!2398156 c!381758) b!2398148))

(assert (= (and b!2398156 (not c!381758)) b!2398154))

(assert (=> b!2398155 m!2796225))

(declare-fun m!2796575 () Bool)

(assert (=> d!699367 m!2796575))

(declare-fun m!2796577 () Bool)

(assert (=> d!699367 m!2796577))

(assert (=> b!2398156 m!2795985))

(assert (=> b!2398156 m!2795985))

(declare-fun m!2796579 () Bool)

(assert (=> b!2398156 m!2796579))

(declare-fun m!2796581 () Bool)

(assert (=> b!2398149 m!2796581))

(assert (=> b!2398151 m!2796023))

(assert (=> b!2398152 m!2795959))

(assert (=> b!2398148 m!2795973))

(declare-fun m!2796583 () Bool)

(assert (=> b!2398154 m!2796583))

(assert (=> b!2397479 d!699367))

(declare-fun d!699369 () Bool)

(assert (=> d!699369 (= (tail!3551 l!9164) (t!208265 l!9164))))

(assert (=> b!2397480 d!699369))

(declare-fun d!699371 () Bool)

(assert (=> d!699371 (= (isEmpty!16184 lt!872104) ((_ is Nil!28190) lt!872104))))

(assert (=> b!2397480 d!699371))

(declare-fun b!2398158 () Bool)

(declare-fun e!1528106 () Bool)

(declare-fun lt!872214 () Option!5568)

(assert (=> b!2398158 (= e!1528106 (= (++!6979 (_1!16498 (get!8635 lt!872214)) (_2!16498 (get!8635 lt!872214))) s!9460))))

(declare-fun b!2398159 () Bool)

(declare-fun e!1528104 () Bool)

(assert (=> b!2398159 (= e!1528104 (not (isDefined!4396 lt!872214)))))

(declare-fun b!2398160 () Bool)

(declare-fun e!1528102 () Option!5568)

(assert (=> b!2398160 (= e!1528102 None!5567)))

(declare-fun d!699373 () Bool)

(assert (=> d!699373 e!1528104))

(declare-fun res!1019008 () Bool)

(assert (=> d!699373 (=> res!1019008 e!1528104)))

(assert (=> d!699373 (= res!1019008 e!1528106)))

(declare-fun res!1019007 () Bool)

(assert (=> d!699373 (=> (not res!1019007) (not e!1528106))))

(assert (=> d!699373 (= res!1019007 (isDefined!4396 lt!872214))))

(declare-fun e!1528103 () Option!5568)

(assert (=> d!699373 (= lt!872214 e!1528103)))

(declare-fun c!381761 () Bool)

(declare-fun e!1528105 () Bool)

(assert (=> d!699373 (= c!381761 e!1528105)))

(declare-fun res!1019005 () Bool)

(assert (=> d!699373 (=> (not res!1019005) (not e!1528105))))

(assert (=> d!699373 (= res!1019005 (matchR!3142 (ite c!381607 lt!872092 call!146371) Nil!28191))))

(assert (=> d!699373 (validRegex!2750 (ite c!381607 lt!872092 call!146371))))

(assert (=> d!699373 (= (findConcatSeparation!676 (ite c!381607 lt!872092 call!146371) (ite c!381607 EmptyExpr!7025 call!146376) Nil!28191 s!9460 s!9460) lt!872214)))

(declare-fun b!2398161 () Bool)

(assert (=> b!2398161 (= e!1528105 (matchR!3142 (ite c!381607 EmptyExpr!7025 call!146376) s!9460))))

(declare-fun b!2398162 () Bool)

(declare-fun res!1019006 () Bool)

(assert (=> b!2398162 (=> (not res!1019006) (not e!1528106))))

(assert (=> b!2398162 (= res!1019006 (matchR!3142 (ite c!381607 EmptyExpr!7025 call!146376) (_2!16498 (get!8635 lt!872214))))))

(declare-fun b!2398163 () Bool)

(assert (=> b!2398163 (= e!1528103 (Some!5567 (tuple2!27915 Nil!28191 s!9460)))))

(declare-fun b!2398164 () Bool)

(declare-fun lt!872212 () Unit!41300)

(declare-fun lt!872213 () Unit!41300)

(assert (=> b!2398164 (= lt!872212 lt!872213)))

(assert (=> b!2398164 (= (++!6979 (++!6979 Nil!28191 (Cons!28191 (h!33592 s!9460) Nil!28191)) (t!208266 s!9460)) s!9460)))

(assert (=> b!2398164 (= lt!872213 (lemmaMoveElementToOtherListKeepsConcatEq!621 Nil!28191 (h!33592 s!9460) (t!208266 s!9460) s!9460))))

(assert (=> b!2398164 (= e!1528102 (findConcatSeparation!676 (ite c!381607 lt!872092 call!146371) (ite c!381607 EmptyExpr!7025 call!146376) (++!6979 Nil!28191 (Cons!28191 (h!33592 s!9460) Nil!28191)) (t!208266 s!9460) s!9460))))

(declare-fun b!2398165 () Bool)

(declare-fun res!1019004 () Bool)

(assert (=> b!2398165 (=> (not res!1019004) (not e!1528106))))

(assert (=> b!2398165 (= res!1019004 (matchR!3142 (ite c!381607 lt!872092 call!146371) (_1!16498 (get!8635 lt!872214))))))

(declare-fun b!2398166 () Bool)

(assert (=> b!2398166 (= e!1528103 e!1528102)))

(declare-fun c!381760 () Bool)

(assert (=> b!2398166 (= c!381760 ((_ is Nil!28191) s!9460))))

(assert (= (and d!699373 res!1019005) b!2398161))

(assert (= (and d!699373 c!381761) b!2398163))

(assert (= (and d!699373 (not c!381761)) b!2398166))

(assert (= (and b!2398166 c!381760) b!2398160))

(assert (= (and b!2398166 (not c!381760)) b!2398164))

(assert (= (and d!699373 res!1019007) b!2398165))

(assert (= (and b!2398165 res!1019004) b!2398162))

(assert (= (and b!2398162 res!1019006) b!2398158))

(assert (= (and d!699373 (not res!1019008)) b!2398159))

(declare-fun m!2796585 () Bool)

(assert (=> b!2398161 m!2796585))

(declare-fun m!2796587 () Bool)

(assert (=> b!2398162 m!2796587))

(declare-fun m!2796589 () Bool)

(assert (=> b!2398162 m!2796589))

(declare-fun m!2796591 () Bool)

(assert (=> d!699373 m!2796591))

(declare-fun m!2796593 () Bool)

(assert (=> d!699373 m!2796593))

(declare-fun m!2796595 () Bool)

(assert (=> d!699373 m!2796595))

(assert (=> b!2398158 m!2796587))

(declare-fun m!2796597 () Bool)

(assert (=> b!2398158 m!2796597))

(assert (=> b!2398164 m!2796401))

(assert (=> b!2398164 m!2796401))

(assert (=> b!2398164 m!2796403))

(assert (=> b!2398164 m!2796405))

(assert (=> b!2398164 m!2796401))

(declare-fun m!2796599 () Bool)

(assert (=> b!2398164 m!2796599))

(assert (=> b!2398165 m!2796587))

(declare-fun m!2796601 () Bool)

(assert (=> b!2398165 m!2796601))

(assert (=> b!2398159 m!2796591))

(assert (=> bm!146364 d!699373))

(declare-fun e!1528109 () Bool)

(assert (=> b!2397482 (= tp!763258 e!1528109)))

(declare-fun b!2398178 () Bool)

(declare-fun tp!763325 () Bool)

(declare-fun tp!763323 () Bool)

(assert (=> b!2398178 (= e!1528109 (and tp!763325 tp!763323))))

(declare-fun b!2398177 () Bool)

(assert (=> b!2398177 (= e!1528109 tp_is_empty!11463)))

(declare-fun b!2398179 () Bool)

(declare-fun tp!763327 () Bool)

(assert (=> b!2398179 (= e!1528109 tp!763327)))

(declare-fun b!2398180 () Bool)

(declare-fun tp!763324 () Bool)

(declare-fun tp!763326 () Bool)

(assert (=> b!2398180 (= e!1528109 (and tp!763324 tp!763326))))

(assert (= (and b!2397482 ((_ is ElementMatch!7025) (regOne!14562 r!13927))) b!2398177))

(assert (= (and b!2397482 ((_ is Concat!11661) (regOne!14562 r!13927))) b!2398178))

(assert (= (and b!2397482 ((_ is Star!7025) (regOne!14562 r!13927))) b!2398179))

(assert (= (and b!2397482 ((_ is Union!7025) (regOne!14562 r!13927))) b!2398180))

(declare-fun e!1528110 () Bool)

(assert (=> b!2397482 (= tp!763261 e!1528110)))

(declare-fun b!2398182 () Bool)

(declare-fun tp!763330 () Bool)

(declare-fun tp!763328 () Bool)

(assert (=> b!2398182 (= e!1528110 (and tp!763330 tp!763328))))

(declare-fun b!2398181 () Bool)

(assert (=> b!2398181 (= e!1528110 tp_is_empty!11463)))

(declare-fun b!2398183 () Bool)

(declare-fun tp!763332 () Bool)

(assert (=> b!2398183 (= e!1528110 tp!763332)))

(declare-fun b!2398184 () Bool)

(declare-fun tp!763329 () Bool)

(declare-fun tp!763331 () Bool)

(assert (=> b!2398184 (= e!1528110 (and tp!763329 tp!763331))))

(assert (= (and b!2397482 ((_ is ElementMatch!7025) (regTwo!14562 r!13927))) b!2398181))

(assert (= (and b!2397482 ((_ is Concat!11661) (regTwo!14562 r!13927))) b!2398182))

(assert (= (and b!2397482 ((_ is Star!7025) (regTwo!14562 r!13927))) b!2398183))

(assert (= (and b!2397482 ((_ is Union!7025) (regTwo!14562 r!13927))) b!2398184))

(declare-fun b!2398189 () Bool)

(declare-fun e!1528113 () Bool)

(declare-fun tp!763335 () Bool)

(assert (=> b!2398189 (= e!1528113 (and tp_is_empty!11463 tp!763335))))

(assert (=> b!2397492 (= tp!763256 e!1528113)))

(assert (= (and b!2397492 ((_ is Cons!28191) (t!208266 s!9460))) b!2398189))

(declare-fun e!1528114 () Bool)

(assert (=> b!2397488 (= tp!763257 e!1528114)))

(declare-fun b!2398191 () Bool)

(declare-fun tp!763338 () Bool)

(declare-fun tp!763336 () Bool)

(assert (=> b!2398191 (= e!1528114 (and tp!763338 tp!763336))))

(declare-fun b!2398190 () Bool)

(assert (=> b!2398190 (= e!1528114 tp_is_empty!11463)))

(declare-fun b!2398192 () Bool)

(declare-fun tp!763340 () Bool)

(assert (=> b!2398192 (= e!1528114 tp!763340)))

(declare-fun b!2398193 () Bool)

(declare-fun tp!763337 () Bool)

(declare-fun tp!763339 () Bool)

(assert (=> b!2398193 (= e!1528114 (and tp!763337 tp!763339))))

(assert (= (and b!2397488 ((_ is ElementMatch!7025) (reg!7354 r!13927))) b!2398190))

(assert (= (and b!2397488 ((_ is Concat!11661) (reg!7354 r!13927))) b!2398191))

(assert (= (and b!2397488 ((_ is Star!7025) (reg!7354 r!13927))) b!2398192))

(assert (= (and b!2397488 ((_ is Union!7025) (reg!7354 r!13927))) b!2398193))

(declare-fun e!1528115 () Bool)

(assert (=> b!2397468 (= tp!763260 e!1528115)))

(declare-fun b!2398195 () Bool)

(declare-fun tp!763343 () Bool)

(declare-fun tp!763341 () Bool)

(assert (=> b!2398195 (= e!1528115 (and tp!763343 tp!763341))))

(declare-fun b!2398194 () Bool)

(assert (=> b!2398194 (= e!1528115 tp_is_empty!11463)))

(declare-fun b!2398196 () Bool)

(declare-fun tp!763345 () Bool)

(assert (=> b!2398196 (= e!1528115 tp!763345)))

(declare-fun b!2398197 () Bool)

(declare-fun tp!763342 () Bool)

(declare-fun tp!763344 () Bool)

(assert (=> b!2398197 (= e!1528115 (and tp!763342 tp!763344))))

(assert (= (and b!2397468 ((_ is ElementMatch!7025) (h!33591 l!9164))) b!2398194))

(assert (= (and b!2397468 ((_ is Concat!11661) (h!33591 l!9164))) b!2398195))

(assert (= (and b!2397468 ((_ is Star!7025) (h!33591 l!9164))) b!2398196))

(assert (= (and b!2397468 ((_ is Union!7025) (h!33591 l!9164))) b!2398197))

(declare-fun b!2398202 () Bool)

(declare-fun e!1528118 () Bool)

(declare-fun tp!763350 () Bool)

(declare-fun tp!763351 () Bool)

(assert (=> b!2398202 (= e!1528118 (and tp!763350 tp!763351))))

(assert (=> b!2397468 (= tp!763263 e!1528118)))

(assert (= (and b!2397468 ((_ is Cons!28190) (t!208265 l!9164))) b!2398202))

(declare-fun e!1528119 () Bool)

(assert (=> b!2397484 (= tp!763262 e!1528119)))

(declare-fun b!2398204 () Bool)

(declare-fun tp!763354 () Bool)

(declare-fun tp!763352 () Bool)

(assert (=> b!2398204 (= e!1528119 (and tp!763354 tp!763352))))

(declare-fun b!2398203 () Bool)

(assert (=> b!2398203 (= e!1528119 tp_is_empty!11463)))

(declare-fun b!2398205 () Bool)

(declare-fun tp!763356 () Bool)

(assert (=> b!2398205 (= e!1528119 tp!763356)))

(declare-fun b!2398206 () Bool)

(declare-fun tp!763353 () Bool)

(declare-fun tp!763355 () Bool)

(assert (=> b!2398206 (= e!1528119 (and tp!763353 tp!763355))))

(assert (= (and b!2397484 ((_ is ElementMatch!7025) (regOne!14563 r!13927))) b!2398203))

(assert (= (and b!2397484 ((_ is Concat!11661) (regOne!14563 r!13927))) b!2398204))

(assert (= (and b!2397484 ((_ is Star!7025) (regOne!14563 r!13927))) b!2398205))

(assert (= (and b!2397484 ((_ is Union!7025) (regOne!14563 r!13927))) b!2398206))

(declare-fun e!1528120 () Bool)

(assert (=> b!2397484 (= tp!763259 e!1528120)))

(declare-fun b!2398208 () Bool)

(declare-fun tp!763359 () Bool)

(declare-fun tp!763357 () Bool)

(assert (=> b!2398208 (= e!1528120 (and tp!763359 tp!763357))))

(declare-fun b!2398207 () Bool)

(assert (=> b!2398207 (= e!1528120 tp_is_empty!11463)))

(declare-fun b!2398209 () Bool)

(declare-fun tp!763361 () Bool)

(assert (=> b!2398209 (= e!1528120 tp!763361)))

(declare-fun b!2398210 () Bool)

(declare-fun tp!763358 () Bool)

(declare-fun tp!763360 () Bool)

(assert (=> b!2398210 (= e!1528120 (and tp!763358 tp!763360))))

(assert (= (and b!2397484 ((_ is ElementMatch!7025) (regTwo!14563 r!13927))) b!2398207))

(assert (= (and b!2397484 ((_ is Concat!11661) (regTwo!14563 r!13927))) b!2398208))

(assert (= (and b!2397484 ((_ is Star!7025) (regTwo!14563 r!13927))) b!2398209))

(assert (= (and b!2397484 ((_ is Union!7025) (regTwo!14563 r!13927))) b!2398210))

(declare-fun b_lambda!74273 () Bool)

(assert (= b_lambda!74271 (or start!235236 b_lambda!74273)))

(declare-fun bs!463038 () Bool)

(declare-fun d!699375 () Bool)

(assert (= bs!463038 (and d!699375 start!235236)))

(assert (=> bs!463038 (= (dynLambda!12140 lambda!90029 (h!33591 l!9164)) (validRegex!2750 (h!33591 l!9164)))))

(assert (=> bs!463038 m!2796031))

(assert (=> b!2398055 d!699375))

(check-sat (not d!699365) (not b!2397761) (not b!2397858) (not b!2398162) (not b!2397888) (not b!2397863) (not b!2398106) (not b!2398043) (not b!2397694) (not b!2398049) (not bm!146416) (not bm!146420) (not b!2398126) (not b_lambda!74273) (not b!2398132) (not bm!146418) (not b!2398030) (not b!2398046) (not b!2398155) (not b!2398206) (not b!2397994) (not b!2397991) (not b!2397887) (not b!2398056) (not d!699229) (not b!2398127) (not d!699309) (not b!2398028) (not b!2398109) (not d!699333) (not bm!146417) (not d!699351) (not b!2398161) (not b!2398048) (not b!2398107) (not b!2398026) (not b!2397985) (not bm!146410) (not b!2398164) (not b!2398202) (not d!699321) (not b!2398034) (not b!2398159) (not b!2398149) (not b!2397884) (not d!699359) (not b!2397885) (not b!2398040) (not b!2398037) (not d!699373) (not b!2398014) (not d!699247) (not b!2398192) (not b!2398148) (not b!2398184) (not b!2398111) (not b!2398036) (not b!2398205) (not b!2398158) (not b!2398146) (not bm!146400) (not d!699313) (not b!2398189) (not b!2397996) (not b!2398152) tp_is_empty!11463 (not b!2398129) (not d!699291) (not b!2398023) (not b!2397765) (not b!2398151) (not b!2398156) (not bm!146411) (not b!2397771) (not b!2397856) (not b!2398025) (not b!2398197) (not b!2397764) (not b!2397861) (not b!2397981) (not d!699361) (not b!2397881) (not d!699357) (not b!2397984) (not b!2398196) (not b!2398210) (not d!699353) (not b!2398092) (not b!2397859) (not b!2397762) (not b!2397853) (not d!699319) (not b!2398018) (not b!2398101) (not bm!146399) (not b!2398136) (not d!699325) (not b!2397987) (not b!2398013) (not d!699323) (not b!2397882) (not b!2398001) (not b!2398097) (not d!699349) (not b!2397988) (not d!699345) (not b!2398209) (not d!699367) (not b!2397769) (not bm!146421) (not b!2398165) (not d!699267) (not b!2398182) (not b!2398033) (not d!699327) (not b!2398045) (not b!2397982) (not b!2398191) (not b!2398154) (not b!2398145) (not b!2398183) (not b!2398020) (not b!2397999) (not b!2398104) (not b!2398042) (not b!2398204) (not d!699335) (not bm!146405) (not b!2398039) (not b!2398130) (not b!2398133) (not b!2398193) (not d!699329) (not b!2398208) (not d!699347) (not b!2397997) (not b!2398195) (not b!2398180) (not b!2398179) (not b!2397889) (not d!699355) (not b!2397767) (not d!699299) (not bs!463038) (not b!2398178))
(check-sat)
