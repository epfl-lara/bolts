; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!238366 () Bool)

(assert start!238366)

(declare-fun b!2434877 () Bool)

(assert (=> b!2434877 true))

(assert (=> b!2434877 true))

(declare-fun lambda!91919 () Int)

(declare-fun lambda!91918 () Int)

(assert (=> b!2434877 (not (= lambda!91919 lambda!91918))))

(assert (=> b!2434877 true))

(assert (=> b!2434877 true))

(declare-fun b!2434869 () Bool)

(declare-fun e!1547691 () Bool)

(declare-fun tp!773343 () Bool)

(assert (=> b!2434869 (= e!1547691 tp!773343)))

(declare-fun b!2434870 () Bool)

(declare-fun tp!773344 () Bool)

(declare-fun tp!773340 () Bool)

(assert (=> b!2434870 (= e!1547691 (and tp!773344 tp!773340))))

(declare-fun b!2434871 () Bool)

(declare-fun e!1547688 () Bool)

(declare-fun e!1547692 () Bool)

(assert (=> b!2434871 (= e!1547688 (not e!1547692))))

(declare-fun res!1033626 () Bool)

(assert (=> b!2434871 (=> res!1033626 e!1547692)))

(declare-datatypes ((C!14472 0))(
  ( (C!14473 (val!8478 Int)) )
))
(declare-datatypes ((Regex!7157 0))(
  ( (ElementMatch!7157 (c!388485 C!14472)) (Concat!11793 (regOne!14826 Regex!7157) (regTwo!14826 Regex!7157)) (EmptyExpr!7157) (Star!7157 (reg!7486 Regex!7157)) (EmptyLang!7157) (Union!7157 (regOne!14827 Regex!7157) (regTwo!14827 Regex!7157)) )
))
(declare-fun r!13927 () Regex!7157)

(get-info :version)

(assert (=> b!2434871 (= res!1033626 (not ((_ is Concat!11793) r!13927)))))

(declare-fun lt!877291 () Bool)

(declare-fun lt!877292 () Bool)

(assert (=> b!2434871 (= lt!877291 lt!877292)))

(declare-datatypes ((List!28550 0))(
  ( (Nil!28452) (Cons!28452 (h!33853 C!14472) (t!208527 List!28550)) )
))
(declare-fun s!9460 () List!28550)

(declare-fun matchRSpec!1004 (Regex!7157 List!28550) Bool)

(assert (=> b!2434871 (= lt!877292 (matchRSpec!1004 r!13927 s!9460))))

(declare-fun matchR!3272 (Regex!7157 List!28550) Bool)

(assert (=> b!2434871 (= lt!877291 (matchR!3272 r!13927 s!9460))))

(declare-datatypes ((Unit!41697 0))(
  ( (Unit!41698) )
))
(declare-fun lt!877290 () Unit!41697)

(declare-fun mainMatchTheorem!1004 (Regex!7157 List!28550) Unit!41697)

(assert (=> b!2434871 (= lt!877290 (mainMatchTheorem!1004 r!13927 s!9460))))

(declare-fun b!2434873 () Bool)

(declare-fun e!1547690 () Bool)

(declare-fun tp!773342 () Bool)

(declare-fun tp!773345 () Bool)

(assert (=> b!2434873 (= e!1547690 (and tp!773342 tp!773345))))

(declare-fun b!2434874 () Bool)

(declare-fun e!1547686 () Bool)

(declare-fun e!1547689 () Bool)

(assert (=> b!2434874 (= e!1547686 e!1547689)))

(declare-fun res!1033623 () Bool)

(assert (=> b!2434874 (=> res!1033623 e!1547689)))

(declare-datatypes ((List!28551 0))(
  ( (Nil!28453) (Cons!28453 (h!33854 Regex!7157) (t!208528 List!28551)) )
))
(declare-fun lt!877287 () List!28551)

(declare-fun isEmpty!16492 (List!28551) Bool)

(assert (=> b!2434874 (= res!1033623 (not (isEmpty!16492 lt!877287)))))

(declare-fun l!9164 () List!28551)

(declare-fun tail!3786 (List!28551) List!28551)

(assert (=> b!2434874 (= lt!877287 (tail!3786 l!9164))))

(declare-fun b!2434875 () Bool)

(declare-fun e!1547687 () Bool)

(declare-fun tp_is_empty!11727 () Bool)

(declare-fun tp!773341 () Bool)

(assert (=> b!2434875 (= e!1547687 (and tp_is_empty!11727 tp!773341))))

(declare-fun b!2434876 () Bool)

(declare-fun res!1033628 () Bool)

(assert (=> b!2434876 (=> res!1033628 e!1547689)))

(declare-fun generalisedConcat!258 (List!28551) Regex!7157)

(assert (=> b!2434876 (= res!1033628 (not (= (generalisedConcat!258 lt!877287) EmptyExpr!7157)))))

(assert (=> b!2434877 (= e!1547692 e!1547686)))

(declare-fun res!1033630 () Bool)

(assert (=> b!2434877 (=> res!1033630 e!1547686)))

(declare-fun lt!877288 () Bool)

(assert (=> b!2434877 (= res!1033630 (not (= lt!877292 lt!877288)))))

(declare-fun Exists!1193 (Int) Bool)

(assert (=> b!2434877 (= (Exists!1193 lambda!91918) (Exists!1193 lambda!91919))))

(declare-fun lt!877286 () Unit!41697)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!438 (Regex!7157 Regex!7157 List!28550) Unit!41697)

(assert (=> b!2434877 (= lt!877286 (lemmaExistCutMatchRandMatchRSpecEquivalent!438 (regOne!14826 r!13927) (regTwo!14826 r!13927) s!9460))))

(assert (=> b!2434877 (= lt!877288 (Exists!1193 lambda!91918))))

(declare-datatypes ((tuple2!28070 0))(
  ( (tuple2!28071 (_1!16576 List!28550) (_2!16576 List!28550)) )
))
(declare-datatypes ((Option!5646 0))(
  ( (None!5645) (Some!5645 (v!31053 tuple2!28070)) )
))
(declare-fun isDefined!4472 (Option!5646) Bool)

(declare-fun findConcatSeparation!754 (Regex!7157 Regex!7157 List!28550 List!28550 List!28550) Option!5646)

(assert (=> b!2434877 (= lt!877288 (isDefined!4472 (findConcatSeparation!754 (regOne!14826 r!13927) (regTwo!14826 r!13927) Nil!28452 s!9460 s!9460)))))

(declare-fun lt!877289 () Unit!41697)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!692 (Regex!7157 Regex!7157 List!28550) Unit!41697)

(assert (=> b!2434877 (= lt!877289 (lemmaFindConcatSeparationEquivalentToExists!692 (regOne!14826 r!13927) (regTwo!14826 r!13927) s!9460))))

(declare-fun b!2434878 () Bool)

(declare-fun res!1033627 () Bool)

(assert (=> b!2434878 (=> (not res!1033627) (not e!1547688))))

(assert (=> b!2434878 (= res!1033627 (= r!13927 (generalisedConcat!258 l!9164)))))

(declare-fun b!2434879 () Bool)

(declare-fun res!1033624 () Bool)

(assert (=> b!2434879 (=> res!1033624 e!1547689)))

(declare-fun head!5513 (List!28551) Regex!7157)

(assert (=> b!2434879 (= res!1033624 (not (matchR!3272 (head!5513 l!9164) s!9460)))))

(declare-fun b!2434880 () Bool)

(declare-fun res!1033629 () Bool)

(assert (=> b!2434880 (=> res!1033629 e!1547686)))

(assert (=> b!2434880 (= res!1033629 (isEmpty!16492 l!9164))))

(declare-fun b!2434881 () Bool)

(declare-fun tp!773339 () Bool)

(declare-fun tp!773338 () Bool)

(assert (=> b!2434881 (= e!1547691 (and tp!773339 tp!773338))))

(declare-fun b!2434882 () Bool)

(assert (=> b!2434882 (= e!1547689 true)))

(declare-fun b!2434872 () Bool)

(assert (=> b!2434872 (= e!1547691 tp_is_empty!11727)))

(declare-fun res!1033625 () Bool)

(assert (=> start!238366 (=> (not res!1033625) (not e!1547688))))

(declare-fun lambda!91917 () Int)

(declare-fun forall!5791 (List!28551 Int) Bool)

(assert (=> start!238366 (= res!1033625 (forall!5791 l!9164 lambda!91917))))

(assert (=> start!238366 e!1547688))

(assert (=> start!238366 e!1547690))

(assert (=> start!238366 e!1547691))

(assert (=> start!238366 e!1547687))

(assert (= (and start!238366 res!1033625) b!2434878))

(assert (= (and b!2434878 res!1033627) b!2434871))

(assert (= (and b!2434871 (not res!1033626)) b!2434877))

(assert (= (and b!2434877 (not res!1033630)) b!2434880))

(assert (= (and b!2434880 (not res!1033629)) b!2434874))

(assert (= (and b!2434874 (not res!1033623)) b!2434876))

(assert (= (and b!2434876 (not res!1033628)) b!2434879))

(assert (= (and b!2434879 (not res!1033624)) b!2434882))

(assert (= (and start!238366 ((_ is Cons!28453) l!9164)) b!2434873))

(assert (= (and start!238366 ((_ is ElementMatch!7157) r!13927)) b!2434872))

(assert (= (and start!238366 ((_ is Concat!11793) r!13927)) b!2434881))

(assert (= (and start!238366 ((_ is Star!7157) r!13927)) b!2434869))

(assert (= (and start!238366 ((_ is Union!7157) r!13927)) b!2434870))

(assert (= (and start!238366 ((_ is Cons!28452) s!9460)) b!2434875))

(declare-fun m!2815239 () Bool)

(assert (=> b!2434877 m!2815239))

(declare-fun m!2815241 () Bool)

(assert (=> b!2434877 m!2815241))

(declare-fun m!2815243 () Bool)

(assert (=> b!2434877 m!2815243))

(assert (=> b!2434877 m!2815239))

(declare-fun m!2815245 () Bool)

(assert (=> b!2434877 m!2815245))

(assert (=> b!2434877 m!2815245))

(declare-fun m!2815247 () Bool)

(assert (=> b!2434877 m!2815247))

(declare-fun m!2815249 () Bool)

(assert (=> b!2434877 m!2815249))

(declare-fun m!2815251 () Bool)

(assert (=> b!2434876 m!2815251))

(declare-fun m!2815253 () Bool)

(assert (=> b!2434874 m!2815253))

(declare-fun m!2815255 () Bool)

(assert (=> b!2434874 m!2815255))

(declare-fun m!2815257 () Bool)

(assert (=> b!2434879 m!2815257))

(assert (=> b!2434879 m!2815257))

(declare-fun m!2815259 () Bool)

(assert (=> b!2434879 m!2815259))

(declare-fun m!2815261 () Bool)

(assert (=> start!238366 m!2815261))

(declare-fun m!2815263 () Bool)

(assert (=> b!2434880 m!2815263))

(declare-fun m!2815265 () Bool)

(assert (=> b!2434871 m!2815265))

(declare-fun m!2815267 () Bool)

(assert (=> b!2434871 m!2815267))

(declare-fun m!2815269 () Bool)

(assert (=> b!2434871 m!2815269))

(declare-fun m!2815271 () Bool)

(assert (=> b!2434878 m!2815271))

(check-sat (not b!2434881) (not b!2434876) (not b!2434878) (not b!2434880) (not b!2434875) tp_is_empty!11727 (not b!2434877) (not b!2434879) (not b!2434870) (not b!2434869) (not b!2434871) (not b!2434874) (not b!2434873) (not start!238366))
(check-sat)
