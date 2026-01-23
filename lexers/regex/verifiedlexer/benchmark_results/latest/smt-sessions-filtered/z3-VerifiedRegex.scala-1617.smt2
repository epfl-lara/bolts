; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83042 () Bool)

(assert start!83042)

(declare-fun b!925703 () Bool)

(assert (=> b!925703 true))

(assert (=> b!925703 true))

(declare-fun lambda!30520 () Int)

(declare-fun lambda!30519 () Int)

(assert (=> b!925703 (not (= lambda!30520 lambda!30519))))

(assert (=> b!925703 true))

(assert (=> b!925703 true))

(declare-fun bs!237537 () Bool)

(declare-fun b!925701 () Bool)

(assert (= bs!237537 (and b!925701 b!925703)))

(declare-fun lambda!30521 () Int)

(declare-datatypes ((C!5556 0))(
  ( (C!5557 (val!3026 Int)) )
))
(declare-datatypes ((Regex!2493 0))(
  ( (ElementMatch!2493 (c!150312 C!5556)) (Concat!4326 (regOne!5498 Regex!2493) (regTwo!5498 Regex!2493)) (EmptyExpr!2493) (Star!2493 (reg!2822 Regex!2493)) (EmptyLang!2493) (Union!2493 (regOne!5499 Regex!2493) (regTwo!5499 Regex!2493)) )
))
(declare-fun r!15766 () Regex!2493)

(declare-fun lt!339396 () Regex!2493)

(declare-fun lt!339393 () Regex!2493)

(assert (=> bs!237537 (= (and (= lt!339393 (regOne!5498 r!15766)) (= lt!339396 (regTwo!5498 r!15766))) (= lambda!30521 lambda!30519))))

(assert (=> bs!237537 (not (= lambda!30521 lambda!30520))))

(assert (=> b!925701 true))

(assert (=> b!925701 true))

(assert (=> b!925701 true))

(declare-fun lambda!30522 () Int)

(assert (=> bs!237537 (not (= lambda!30522 lambda!30519))))

(assert (=> bs!237537 (= (and (= lt!339393 (regOne!5498 r!15766)) (= lt!339396 (regTwo!5498 r!15766))) (= lambda!30522 lambda!30520))))

(assert (=> b!925701 (not (= lambda!30522 lambda!30521))))

(assert (=> b!925701 true))

(assert (=> b!925701 true))

(assert (=> b!925701 true))

(declare-fun e!602227 () Bool)

(assert (=> b!925701 (= e!602227 true)))

(declare-fun Exists!264 (Int) Bool)

(assert (=> b!925701 (= (Exists!264 lambda!30521) (Exists!264 lambda!30522))))

(declare-datatypes ((Unit!14605 0))(
  ( (Unit!14606) )
))
(declare-fun lt!339400 () Unit!14605)

(declare-datatypes ((List!9723 0))(
  ( (Nil!9707) (Cons!9707 (h!15108 C!5556) (t!100769 List!9723)) )
))
(declare-fun s!10566 () List!9723)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!176 (Regex!2493 Regex!2493 List!9723) Unit!14605)

(assert (=> b!925701 (= lt!339400 (lemmaExistCutMatchRandMatchRSpecEquivalent!176 lt!339393 lt!339396 s!10566))))

(declare-datatypes ((tuple2!10972 0))(
  ( (tuple2!10973 (_1!6312 List!9723) (_2!6312 List!9723)) )
))
(declare-datatypes ((Option!2128 0))(
  ( (None!2127) (Some!2127 (v!19544 tuple2!10972)) )
))
(declare-fun isDefined!1770 (Option!2128) Bool)

(declare-fun findConcatSeparation!234 (Regex!2493 Regex!2493 List!9723 List!9723 List!9723) Option!2128)

(assert (=> b!925701 (= (isDefined!1770 (findConcatSeparation!234 lt!339393 lt!339396 Nil!9707 s!10566 s!10566)) (Exists!264 lambda!30521))))

(declare-fun lt!339395 () Unit!14605)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!234 (Regex!2493 Regex!2493 List!9723) Unit!14605)

(assert (=> b!925701 (= lt!339395 (lemmaFindConcatSeparationEquivalentToExists!234 lt!339393 lt!339396 s!10566))))

(declare-fun lt!339394 () Regex!2493)

(declare-fun matchRSpec!294 (Regex!2493 List!9723) Bool)

(assert (=> b!925701 (matchRSpec!294 lt!339394 s!10566)))

(declare-fun lt!339398 () Unit!14605)

(declare-fun mainMatchTheorem!294 (Regex!2493 List!9723) Unit!14605)

(assert (=> b!925701 (= lt!339398 (mainMatchTheorem!294 lt!339394 s!10566))))

(declare-fun b!925702 () Bool)

(declare-fun e!602228 () Bool)

(declare-fun tp!287717 () Bool)

(declare-fun tp!287719 () Bool)

(assert (=> b!925702 (= e!602228 (and tp!287717 tp!287719))))

(declare-fun e!602226 () Bool)

(declare-fun e!602229 () Bool)

(assert (=> b!925703 (= e!602226 e!602229)))

(declare-fun res!420867 () Bool)

(assert (=> b!925703 (=> res!420867 e!602229)))

(declare-fun isEmpty!5964 (List!9723) Bool)

(assert (=> b!925703 (= res!420867 (isEmpty!5964 s!10566))))

(assert (=> b!925703 (= (Exists!264 lambda!30519) (Exists!264 lambda!30520))))

(declare-fun lt!339401 () Unit!14605)

(assert (=> b!925703 (= lt!339401 (lemmaExistCutMatchRandMatchRSpecEquivalent!176 (regOne!5498 r!15766) (regTwo!5498 r!15766) s!10566))))

(assert (=> b!925703 (= (isDefined!1770 (findConcatSeparation!234 (regOne!5498 r!15766) (regTwo!5498 r!15766) Nil!9707 s!10566 s!10566)) (Exists!264 lambda!30519))))

(declare-fun lt!339392 () Unit!14605)

(assert (=> b!925703 (= lt!339392 (lemmaFindConcatSeparationEquivalentToExists!234 (regOne!5498 r!15766) (regTwo!5498 r!15766) s!10566))))

(declare-fun res!420868 () Bool)

(declare-fun e!602230 () Bool)

(assert (=> start!83042 (=> (not res!420868) (not e!602230))))

(declare-fun validRegex!962 (Regex!2493) Bool)

(assert (=> start!83042 (= res!420868 (validRegex!962 r!15766))))

(assert (=> start!83042 e!602230))

(assert (=> start!83042 e!602228))

(declare-fun e!602231 () Bool)

(assert (=> start!83042 e!602231))

(declare-fun b!925704 () Bool)

(assert (=> b!925704 (= e!602230 (not e!602226))))

(declare-fun res!420865 () Bool)

(assert (=> b!925704 (=> res!420865 e!602226)))

(declare-fun lt!339399 () Bool)

(get-info :version)

(assert (=> b!925704 (= res!420865 (or lt!339399 (and ((_ is Concat!4326) r!15766) ((_ is EmptyExpr!2493) (regOne!5498 r!15766))) (and ((_ is Concat!4326) r!15766) ((_ is EmptyExpr!2493) (regTwo!5498 r!15766))) (not ((_ is Concat!4326) r!15766))))))

(assert (=> b!925704 (= lt!339399 (matchRSpec!294 r!15766 s!10566))))

(declare-fun matchR!1031 (Regex!2493 List!9723) Bool)

(assert (=> b!925704 (= lt!339399 (matchR!1031 r!15766 s!10566))))

(declare-fun lt!339397 () Unit!14605)

(assert (=> b!925704 (= lt!339397 (mainMatchTheorem!294 r!15766 s!10566))))

(declare-fun b!925705 () Bool)

(assert (=> b!925705 (= e!602229 e!602227)))

(declare-fun res!420866 () Bool)

(assert (=> b!925705 (=> res!420866 e!602227)))

(assert (=> b!925705 (= res!420866 (not (matchR!1031 lt!339394 s!10566)))))

(assert (=> b!925705 (= lt!339394 (Concat!4326 lt!339393 lt!339396))))

(declare-fun removeUselessConcat!170 (Regex!2493) Regex!2493)

(assert (=> b!925705 (= lt!339396 (removeUselessConcat!170 (regTwo!5498 r!15766)))))

(assert (=> b!925705 (= lt!339393 (removeUselessConcat!170 (regOne!5498 r!15766)))))

(declare-fun b!925706 () Bool)

(declare-fun tp!287720 () Bool)

(declare-fun tp!287716 () Bool)

(assert (=> b!925706 (= e!602228 (and tp!287720 tp!287716))))

(declare-fun b!925707 () Bool)

(declare-fun tp_is_empty!4629 () Bool)

(assert (=> b!925707 (= e!602228 tp_is_empty!4629)))

(declare-fun b!925708 () Bool)

(declare-fun tp!287715 () Bool)

(assert (=> b!925708 (= e!602231 (and tp_is_empty!4629 tp!287715))))

(declare-fun b!925709 () Bool)

(declare-fun tp!287718 () Bool)

(assert (=> b!925709 (= e!602228 tp!287718)))

(assert (= (and start!83042 res!420868) b!925704))

(assert (= (and b!925704 (not res!420865)) b!925703))

(assert (= (and b!925703 (not res!420867)) b!925705))

(assert (= (and b!925705 (not res!420866)) b!925701))

(assert (= (and start!83042 ((_ is ElementMatch!2493) r!15766)) b!925707))

(assert (= (and start!83042 ((_ is Concat!4326) r!15766)) b!925706))

(assert (= (and start!83042 ((_ is Star!2493) r!15766)) b!925709))

(assert (= (and start!83042 ((_ is Union!2493) r!15766)) b!925702))

(assert (= (and start!83042 ((_ is Cons!9707) s!10566)) b!925708))

(declare-fun m!1150973 () Bool)

(assert (=> b!925705 m!1150973))

(declare-fun m!1150975 () Bool)

(assert (=> b!925705 m!1150975))

(declare-fun m!1150977 () Bool)

(assert (=> b!925705 m!1150977))

(declare-fun m!1150979 () Bool)

(assert (=> b!925704 m!1150979))

(declare-fun m!1150981 () Bool)

(assert (=> b!925704 m!1150981))

(declare-fun m!1150983 () Bool)

(assert (=> b!925704 m!1150983))

(declare-fun m!1150985 () Bool)

(assert (=> b!925701 m!1150985))

(declare-fun m!1150987 () Bool)

(assert (=> b!925701 m!1150987))

(assert (=> b!925701 m!1150985))

(declare-fun m!1150989 () Bool)

(assert (=> b!925701 m!1150989))

(declare-fun m!1150991 () Bool)

(assert (=> b!925701 m!1150991))

(declare-fun m!1150993 () Bool)

(assert (=> b!925701 m!1150993))

(declare-fun m!1150995 () Bool)

(assert (=> b!925701 m!1150995))

(declare-fun m!1150997 () Bool)

(assert (=> b!925701 m!1150997))

(assert (=> b!925701 m!1150993))

(declare-fun m!1150999 () Bool)

(assert (=> b!925701 m!1150999))

(declare-fun m!1151001 () Bool)

(assert (=> b!925703 m!1151001))

(declare-fun m!1151003 () Bool)

(assert (=> b!925703 m!1151003))

(declare-fun m!1151005 () Bool)

(assert (=> b!925703 m!1151005))

(declare-fun m!1151007 () Bool)

(assert (=> b!925703 m!1151007))

(declare-fun m!1151009 () Bool)

(assert (=> b!925703 m!1151009))

(declare-fun m!1151011 () Bool)

(assert (=> b!925703 m!1151011))

(assert (=> b!925703 m!1151007))

(declare-fun m!1151013 () Bool)

(assert (=> b!925703 m!1151013))

(assert (=> b!925703 m!1151003))

(declare-fun m!1151015 () Bool)

(assert (=> start!83042 m!1151015))

(check-sat (not b!925702) (not start!83042) (not b!925704) (not b!925708) (not b!925703) (not b!925701) (not b!925706) (not b!925709) tp_is_empty!4629 (not b!925705))
(check-sat)
