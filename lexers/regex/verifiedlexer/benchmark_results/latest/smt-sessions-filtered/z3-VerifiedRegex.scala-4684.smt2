; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243500 () Bool)

(assert start!243500)

(declare-fun b!2492478 () Bool)

(declare-fun e!1581986 () Bool)

(declare-fun tp!798242 () Bool)

(declare-fun tp!798241 () Bool)

(assert (=> b!2492478 (= e!1581986 (and tp!798242 tp!798241))))

(declare-fun b!2492479 () Bool)

(declare-fun tp!798245 () Bool)

(declare-fun tp!798246 () Bool)

(assert (=> b!2492479 (= e!1581986 (and tp!798245 tp!798246))))

(declare-fun res!1054404 () Bool)

(declare-fun e!1581984 () Bool)

(assert (=> start!243500 (=> (not res!1054404) (not e!1581984))))

(declare-datatypes ((C!14844 0))(
  ( (C!14845 (val!9074 Int)) )
))
(declare-datatypes ((Regex!7343 0))(
  ( (ElementMatch!7343 (c!396279 C!14844)) (Concat!12039 (regOne!15198 Regex!7343) (regTwo!15198 Regex!7343)) (EmptyExpr!7343) (Star!7343 (reg!7672 Regex!7343)) (EmptyLang!7343) (Union!7343 (regOne!15199 Regex!7343) (regTwo!15199 Regex!7343)) )
))
(declare-fun r!27340 () Regex!7343)

(declare-fun validRegex!2969 (Regex!7343) Bool)

(assert (=> start!243500 (= res!1054404 (validRegex!2969 r!27340))))

(assert (=> start!243500 e!1581984))

(assert (=> start!243500 e!1581986))

(declare-fun tp_is_empty!12541 () Bool)

(assert (=> start!243500 tp_is_empty!12541))

(declare-fun e!1581985 () Bool)

(assert (=> start!243500 e!1581985))

(declare-fun b!2492480 () Bool)

(assert (=> b!2492480 (= e!1581986 tp_is_empty!12541)))

(declare-fun b!2492481 () Bool)

(declare-fun res!1054406 () Bool)

(assert (=> b!2492481 (=> (not res!1054406) (not e!1581984))))

(declare-datatypes ((List!29408 0))(
  ( (Nil!29308) (Cons!29308 (h!34728 C!14844) (t!211107 List!29408)) )
))
(declare-fun tl!4068 () List!29408)

(declare-fun c!14016 () C!14844)

(declare-fun nullable!2260 (Regex!7343) Bool)

(declare-fun derivative!38 (Regex!7343 List!29408) Regex!7343)

(declare-fun derivativeStep!1912 (Regex!7343 C!14844) Regex!7343)

(assert (=> b!2492481 (= res!1054406 (not (nullable!2260 (derivative!38 (derivativeStep!1912 (regOne!15199 r!27340) c!14016) tl!4068))))))

(declare-fun b!2492482 () Bool)

(assert (=> b!2492482 (= e!1581984 false)))

(declare-fun lt!894020 () Bool)

(assert (=> b!2492482 (= lt!894020 (nullable!2260 (derivative!38 (derivativeStep!1912 (regTwo!15199 r!27340) c!14016) tl!4068)))))

(declare-fun b!2492483 () Bool)

(declare-fun tp!798244 () Bool)

(assert (=> b!2492483 (= e!1581985 (and tp_is_empty!12541 tp!798244))))

(declare-fun b!2492484 () Bool)

(declare-fun res!1054403 () Bool)

(assert (=> b!2492484 (=> (not res!1054403) (not e!1581984))))

(assert (=> b!2492484 (= res!1054403 (nullable!2260 (derivative!38 (derivativeStep!1912 r!27340 c!14016) tl!4068)))))

(declare-fun b!2492485 () Bool)

(declare-fun tp!798243 () Bool)

(assert (=> b!2492485 (= e!1581986 tp!798243)))

(declare-fun b!2492486 () Bool)

(declare-fun res!1054405 () Bool)

(assert (=> b!2492486 (=> (not res!1054405) (not e!1581984))))

(get-info :version)

(assert (=> b!2492486 (= res!1054405 (and (not ((_ is EmptyExpr!7343) r!27340)) (not ((_ is EmptyLang!7343) r!27340)) (not ((_ is ElementMatch!7343) r!27340)) ((_ is Union!7343) r!27340)))))

(assert (= (and start!243500 res!1054404) b!2492484))

(assert (= (and b!2492484 res!1054403) b!2492486))

(assert (= (and b!2492486 res!1054405) b!2492481))

(assert (= (and b!2492481 res!1054406) b!2492482))

(assert (= (and start!243500 ((_ is ElementMatch!7343) r!27340)) b!2492480))

(assert (= (and start!243500 ((_ is Concat!12039) r!27340)) b!2492479))

(assert (= (and start!243500 ((_ is Star!7343) r!27340)) b!2492485))

(assert (= (and start!243500 ((_ is Union!7343) r!27340)) b!2492478))

(assert (= (and start!243500 ((_ is Cons!29308) tl!4068)) b!2492483))

(declare-fun m!2858597 () Bool)

(assert (=> start!243500 m!2858597))

(declare-fun m!2858599 () Bool)

(assert (=> b!2492481 m!2858599))

(assert (=> b!2492481 m!2858599))

(declare-fun m!2858601 () Bool)

(assert (=> b!2492481 m!2858601))

(assert (=> b!2492481 m!2858601))

(declare-fun m!2858603 () Bool)

(assert (=> b!2492481 m!2858603))

(declare-fun m!2858605 () Bool)

(assert (=> b!2492482 m!2858605))

(assert (=> b!2492482 m!2858605))

(declare-fun m!2858607 () Bool)

(assert (=> b!2492482 m!2858607))

(assert (=> b!2492482 m!2858607))

(declare-fun m!2858609 () Bool)

(assert (=> b!2492482 m!2858609))

(declare-fun m!2858611 () Bool)

(assert (=> b!2492484 m!2858611))

(assert (=> b!2492484 m!2858611))

(declare-fun m!2858613 () Bool)

(assert (=> b!2492484 m!2858613))

(assert (=> b!2492484 m!2858613))

(declare-fun m!2858615 () Bool)

(assert (=> b!2492484 m!2858615))

(check-sat (not b!2492482) (not start!243500) (not b!2492478) (not b!2492481) (not b!2492479) tp_is_empty!12541 (not b!2492484) (not b!2492485) (not b!2492483))
(check-sat)
