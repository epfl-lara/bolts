; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696346 () Bool)

(assert start!696346)

(declare-fun b!7142704 () Bool)

(declare-fun e!4292509 () Bool)

(assert (=> b!7142704 (= e!4292509 true)))

(declare-datatypes ((C!36626 0))(
  ( (C!36627 (val!28261 Int)) )
))
(declare-datatypes ((Regex!18176 0))(
  ( (ElementMatch!18176 (c!1332017 C!36626)) (Concat!27021 (regOne!36864 Regex!18176) (regTwo!36864 Regex!18176)) (EmptyExpr!18176) (Star!18176 (reg!18505 Regex!18176)) (EmptyLang!18176) (Union!18176 (regOne!36865 Regex!18176) (regTwo!36865 Regex!18176)) )
))
(declare-datatypes ((List!69430 0))(
  ( (Nil!69306) (Cons!69306 (h!75754 Regex!18176) (t!383447 List!69430)) )
))
(declare-fun lt!2567815 () List!69430)

(declare-datatypes ((Context!14340 0))(
  ( (Context!14341 (exprs!7670 List!69430)) )
))
(declare-fun lt!2567821 () Context!14340)

(declare-fun contains!20610 (List!69430 Regex!18176) Bool)

(declare-fun generalisedConcat!2357 (List!69430) Regex!18176)

(assert (=> b!7142704 (contains!20610 lt!2567815 (generalisedConcat!2357 (exprs!7670 lt!2567821)))))

(declare-datatypes ((Unit!163221 0))(
  ( (Unit!163222) )
))
(declare-fun lt!2567819 () Unit!163221)

(declare-datatypes ((List!69431 0))(
  ( (Nil!69307) (Cons!69307 (h!75755 Context!14340) (t!383448 List!69431)) )
))
(declare-fun lt!2567816 () List!69431)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!13 (List!69431 Context!14340) Unit!163221)

(assert (=> b!7142704 (= lt!2567819 (lemmaZipperContainsContextThenUnfocusZipperListContains!13 lt!2567816 lt!2567821))))

(declare-fun setIsEmpty!52606 () Bool)

(declare-fun setRes!52606 () Bool)

(assert (=> setIsEmpty!52606 setRes!52606))

(declare-fun b!7142705 () Bool)

(declare-fun e!4292505 () Bool)

(declare-fun tp!1970068 () Bool)

(assert (=> b!7142705 (= e!4292505 tp!1970068)))

(declare-fun b!7142706 () Bool)

(declare-fun e!4292503 () Bool)

(declare-fun tp!1970070 () Bool)

(assert (=> b!7142706 (= e!4292503 tp!1970070)))

(declare-fun res!2914310 () Bool)

(declare-fun e!4292506 () Bool)

(assert (=> start!696346 (=> (not res!2914310) (not e!4292506))))

(declare-fun r!11483 () Regex!18176)

(declare-fun validRegex!9343 (Regex!18176) Bool)

(assert (=> start!696346 (= res!2914310 (validRegex!9343 r!11483))))

(assert (=> start!696346 e!4292506))

(assert (=> start!696346 e!4292505))

(declare-fun condSetEmpty!52606 () Bool)

(declare-fun z!3189 () (Set Context!14340))

(assert (=> start!696346 (= condSetEmpty!52606 (= z!3189 (as set.empty (Set Context!14340))))))

(assert (=> start!696346 setRes!52606))

(declare-fun b!7142707 () Bool)

(declare-fun e!4292507 () Bool)

(assert (=> b!7142707 (= e!4292506 e!4292507)))

(declare-fun res!2914314 () Bool)

(assert (=> b!7142707 (=> (not res!2914314) (not e!4292507))))

(declare-fun unfocusZipper!2524 (List!69431) Regex!18176)

(assert (=> b!7142707 (= res!2914314 (= r!11483 (unfocusZipper!2524 lt!2567816)))))

(declare-fun toList!11207 ((Set Context!14340)) List!69431)

(assert (=> b!7142707 (= lt!2567816 (toList!11207 z!3189))))

(declare-fun b!7142708 () Bool)

(declare-fun res!2914313 () Bool)

(declare-fun e!4292508 () Bool)

(assert (=> b!7142708 (=> res!2914313 e!4292508)))

(declare-fun lambda!435057 () Int)

(declare-fun exists!3979 (List!69430 Int) Bool)

(assert (=> b!7142708 (= res!2914313 (exists!3979 lt!2567815 lambda!435057))))

(declare-fun b!7142709 () Bool)

(assert (=> b!7142709 (= e!4292508 e!4292509)))

(declare-fun res!2914311 () Bool)

(assert (=> b!7142709 (=> res!2914311 e!4292509)))

(assert (=> b!7142709 (= res!2914311 (not (set.member lt!2567821 z!3189)))))

(declare-fun lambda!435058 () Int)

(declare-fun getWitness!1955 ((Set Context!14340) Int) Context!14340)

(assert (=> b!7142709 (= lt!2567821 (getWitness!1955 z!3189 lambda!435058))))

(declare-fun b!7142710 () Bool)

(declare-fun tp!1970066 () Bool)

(declare-fun tp!1970069 () Bool)

(assert (=> b!7142710 (= e!4292505 (and tp!1970066 tp!1970069))))

(declare-fun b!7142711 () Bool)

(declare-fun tp_is_empty!45989 () Bool)

(assert (=> b!7142711 (= e!4292505 tp_is_empty!45989)))

(declare-fun b!7142712 () Bool)

(declare-fun e!4292504 () Bool)

(assert (=> b!7142712 (= e!4292504 (not e!4292508))))

(declare-fun res!2914307 () Bool)

(assert (=> b!7142712 (=> res!2914307 e!4292508)))

(declare-fun lt!2567818 () Bool)

(assert (=> b!7142712 (= res!2914307 (not (= lt!2567818 (exists!3979 lt!2567815 lambda!435057))))))

(assert (=> b!7142712 (= lt!2567818 (exists!3979 lt!2567815 lambda!435057))))

(declare-fun lt!2567817 () Regex!18176)

(declare-fun nullable!7695 (Regex!18176) Bool)

(assert (=> b!7142712 (= lt!2567818 (nullable!7695 lt!2567817))))

(declare-fun lt!2567820 () Unit!163221)

(declare-fun nullableGenUnionSpec!63 (Regex!18176 List!69430) Unit!163221)

(assert (=> b!7142712 (= lt!2567820 (nullableGenUnionSpec!63 lt!2567817 lt!2567815))))

(declare-fun tp!1970065 () Bool)

(declare-fun setElem!52606 () Context!14340)

(declare-fun setNonEmpty!52606 () Bool)

(declare-fun inv!88505 (Context!14340) Bool)

(assert (=> setNonEmpty!52606 (= setRes!52606 (and tp!1970065 (inv!88505 setElem!52606) e!4292503))))

(declare-fun setRest!52606 () (Set Context!14340))

(assert (=> setNonEmpty!52606 (= z!3189 (set.union (set.insert setElem!52606 (as set.empty (Set Context!14340))) setRest!52606))))

(declare-fun b!7142713 () Bool)

(assert (=> b!7142713 (= e!4292507 e!4292504)))

(declare-fun res!2914309 () Bool)

(assert (=> b!7142713 (=> (not res!2914309) (not e!4292504))))

(assert (=> b!7142713 (= res!2914309 (= r!11483 lt!2567817))))

(declare-fun generalisedUnion!2681 (List!69430) Regex!18176)

(assert (=> b!7142713 (= lt!2567817 (generalisedUnion!2681 lt!2567815))))

(declare-fun unfocusZipperList!2217 (List!69431) List!69430)

(assert (=> b!7142713 (= lt!2567815 (unfocusZipperList!2217 lt!2567816))))

(declare-fun b!7142714 () Bool)

(declare-fun res!2914306 () Bool)

(assert (=> b!7142714 (=> res!2914306 e!4292508)))

(assert (=> b!7142714 (= res!2914306 lt!2567818)))

(declare-fun b!7142715 () Bool)

(declare-fun res!2914312 () Bool)

(assert (=> b!7142715 (=> res!2914312 e!4292508)))

(declare-fun exists!3980 ((Set Context!14340) Int) Bool)

(assert (=> b!7142715 (= res!2914312 (not (exists!3980 z!3189 lambda!435058)))))

(declare-fun b!7142716 () Bool)

(declare-fun res!2914308 () Bool)

(assert (=> b!7142716 (=> res!2914308 e!4292509)))

(declare-fun nullableContext!154 (Context!14340) Bool)

(assert (=> b!7142716 (= res!2914308 (not (nullableContext!154 lt!2567821)))))

(declare-fun b!7142717 () Bool)

(declare-fun tp!1970067 () Bool)

(declare-fun tp!1970064 () Bool)

(assert (=> b!7142717 (= e!4292505 (and tp!1970067 tp!1970064))))

(assert (= (and start!696346 res!2914310) b!7142707))

(assert (= (and b!7142707 res!2914314) b!7142713))

(assert (= (and b!7142713 res!2914309) b!7142712))

(assert (= (and b!7142712 (not res!2914307)) b!7142714))

(assert (= (and b!7142714 (not res!2914306)) b!7142708))

(assert (= (and b!7142708 (not res!2914313)) b!7142715))

(assert (= (and b!7142715 (not res!2914312)) b!7142709))

(assert (= (and b!7142709 (not res!2914311)) b!7142716))

(assert (= (and b!7142716 (not res!2914308)) b!7142704))

(assert (= (and start!696346 (is-ElementMatch!18176 r!11483)) b!7142711))

(assert (= (and start!696346 (is-Concat!27021 r!11483)) b!7142710))

(assert (= (and start!696346 (is-Star!18176 r!11483)) b!7142705))

(assert (= (and start!696346 (is-Union!18176 r!11483)) b!7142717))

(assert (= (and start!696346 condSetEmpty!52606) setIsEmpty!52606))

(assert (= (and start!696346 (not condSetEmpty!52606)) setNonEmpty!52606))

(assert (= setNonEmpty!52606 b!7142706))

(declare-fun m!7856950 () Bool)

(assert (=> start!696346 m!7856950))

(declare-fun m!7856952 () Bool)

(assert (=> b!7142713 m!7856952))

(declare-fun m!7856954 () Bool)

(assert (=> b!7142713 m!7856954))

(declare-fun m!7856956 () Bool)

(assert (=> b!7142704 m!7856956))

(assert (=> b!7142704 m!7856956))

(declare-fun m!7856958 () Bool)

(assert (=> b!7142704 m!7856958))

(declare-fun m!7856960 () Bool)

(assert (=> b!7142704 m!7856960))

(declare-fun m!7856962 () Bool)

(assert (=> setNonEmpty!52606 m!7856962))

(declare-fun m!7856964 () Bool)

(assert (=> b!7142715 m!7856964))

(declare-fun m!7856966 () Bool)

(assert (=> b!7142709 m!7856966))

(declare-fun m!7856968 () Bool)

(assert (=> b!7142709 m!7856968))

(declare-fun m!7856970 () Bool)

(assert (=> b!7142712 m!7856970))

(assert (=> b!7142712 m!7856970))

(declare-fun m!7856972 () Bool)

(assert (=> b!7142712 m!7856972))

(declare-fun m!7856974 () Bool)

(assert (=> b!7142712 m!7856974))

(assert (=> b!7142708 m!7856970))

(declare-fun m!7856976 () Bool)

(assert (=> b!7142707 m!7856976))

(declare-fun m!7856978 () Bool)

(assert (=> b!7142707 m!7856978))

(declare-fun m!7856980 () Bool)

(assert (=> b!7142716 m!7856980))

(push 1)

(assert (not b!7142716))

(assert (not b!7142717))

(assert (not b!7142710))

(assert (not b!7142712))

(assert (not b!7142704))

(assert (not b!7142705))

(assert (not b!7142707))

(assert (not setNonEmpty!52606))

(assert (not b!7142713))

(assert (not start!696346))

(assert (not b!7142715))

(assert (not b!7142706))

(assert tp_is_empty!45989)

(assert (not b!7142708))

(assert (not b!7142709))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

