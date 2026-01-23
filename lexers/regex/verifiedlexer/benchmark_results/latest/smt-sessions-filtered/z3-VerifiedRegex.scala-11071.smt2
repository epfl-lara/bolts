; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573574 () Bool)

(assert start!573574)

(declare-fun b!5485079 () Bool)

(declare-fun e!3394306 () Bool)

(declare-fun tp_is_empty!40031 () Bool)

(declare-fun tp!1507162 () Bool)

(assert (=> b!5485079 (= e!3394306 (and tp_is_empty!40031 tp!1507162))))

(declare-fun setIsEmpty!36123 () Bool)

(declare-fun setRes!36123 () Bool)

(assert (=> setIsEmpty!36123 setRes!36123))

(declare-fun res!2338990 () Bool)

(declare-fun e!3394314 () Bool)

(assert (=> start!573574 (=> (not res!2338990) (not e!3394314))))

(declare-datatypes ((C!31048 0))(
  ( (C!31049 (val!25226 Int)) )
))
(declare-datatypes ((Regex!15389 0))(
  ( (ElementMatch!15389 (c!958329 C!31048)) (Concat!24234 (regOne!31290 Regex!15389) (regTwo!31290 Regex!15389)) (EmptyExpr!15389) (Star!15389 (reg!15718 Regex!15389)) (EmptyLang!15389) (Union!15389 (regOne!31291 Regex!15389) (regTwo!31291 Regex!15389)) )
))
(declare-fun r!7292 () Regex!15389)

(declare-fun validRegex!7125 (Regex!15389) Bool)

(assert (=> start!573574 (= res!2338990 (validRegex!7125 r!7292))))

(assert (=> start!573574 e!3394314))

(declare-fun e!3394313 () Bool)

(assert (=> start!573574 e!3394313))

(assert (=> start!573574 e!3394306))

(declare-fun condSetEmpty!36123 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62466 0))(
  ( (Nil!62342) (Cons!62342 (h!68790 Regex!15389) (t!375697 List!62466)) )
))
(declare-datatypes ((Context!9546 0))(
  ( (Context!9547 (exprs!5273 List!62466)) )
))
(declare-fun z!1189 () (InoxSet Context!9546))

(assert (=> start!573574 (= condSetEmpty!36123 (= z!1189 ((as const (Array Context!9546 Bool)) false)))))

(assert (=> start!573574 setRes!36123))

(declare-fun e!3394311 () Bool)

(assert (=> start!573574 e!3394311))

(declare-fun b!5485080 () Bool)

(declare-fun e!3394309 () Bool)

(declare-fun tp!1507164 () Bool)

(assert (=> b!5485080 (= e!3394309 tp!1507164)))

(declare-fun b!5485081 () Bool)

(assert (=> b!5485081 (= e!3394313 tp_is_empty!40031)))

(declare-fun tp!1507159 () Bool)

(declare-fun setNonEmpty!36123 () Bool)

(declare-fun e!3394312 () Bool)

(declare-fun setElem!36123 () Context!9546)

(declare-fun inv!81719 (Context!9546) Bool)

(assert (=> setNonEmpty!36123 (= setRes!36123 (and tp!1507159 (inv!81719 setElem!36123) e!3394312))))

(declare-fun setRest!36123 () (InoxSet Context!9546))

(assert (=> setNonEmpty!36123 (= z!1189 ((_ map or) (store ((as const (Array Context!9546 Bool)) false) setElem!36123 true) setRest!36123))))

(declare-fun b!5485082 () Bool)

(declare-fun tp!1507167 () Bool)

(assert (=> b!5485082 (= e!3394312 tp!1507167)))

(declare-fun b!5485083 () Bool)

(declare-fun e!3394310 () Bool)

(assert (=> b!5485083 (= e!3394310 true)))

(declare-fun lt!2240728 () Regex!15389)

(declare-datatypes ((List!62467 0))(
  ( (Nil!62343) (Cons!62343 (h!68791 Context!9546) (t!375698 List!62467)) )
))
(declare-fun lt!2240727 () List!62467)

(declare-fun unfocusZipper!1131 (List!62467) Regex!15389)

(assert (=> b!5485083 (= lt!2240728 (unfocusZipper!1131 lt!2240727))))

(declare-fun b!5485084 () Bool)

(declare-fun e!3394308 () Bool)

(assert (=> b!5485084 (= e!3394314 e!3394308)))

(declare-fun res!2338989 () Bool)

(assert (=> b!5485084 (=> (not res!2338989) (not e!3394308))))

(declare-fun zl!343 () List!62467)

(assert (=> b!5485084 (= res!2338989 (= lt!2240727 zl!343))))

(declare-fun toList!9173 ((InoxSet Context!9546)) List!62467)

(assert (=> b!5485084 (= lt!2240727 (toList!9173 z!1189))))

(declare-fun b!5485085 () Bool)

(declare-fun e!3394307 () Bool)

(declare-fun isEmpty!34275 (List!62467) Bool)

(assert (=> b!5485085 (= e!3394307 (isEmpty!34275 (t!375698 zl!343)))))

(declare-fun b!5485086 () Bool)

(declare-fun tp!1507166 () Bool)

(declare-fun tp!1507158 () Bool)

(assert (=> b!5485086 (= e!3394313 (and tp!1507166 tp!1507158))))

(declare-fun b!5485087 () Bool)

(assert (=> b!5485087 (= e!3394308 (not e!3394310))))

(declare-fun res!2338988 () Bool)

(assert (=> b!5485087 (=> res!2338988 e!3394310)))

(assert (=> b!5485087 (= res!2338988 e!3394307)))

(declare-fun res!2338985 () Bool)

(assert (=> b!5485087 (=> (not res!2338985) (not e!3394307))))

(get-info :version)

(assert (=> b!5485087 (= res!2338985 ((_ is Cons!62343) zl!343))))

(declare-datatypes ((List!62468 0))(
  ( (Nil!62344) (Cons!62344 (h!68792 C!31048) (t!375699 List!62468)) )
))
(declare-fun s!2326 () List!62468)

(declare-fun matchR!7574 (Regex!15389 List!62468) Bool)

(declare-fun matchRSpec!2492 (Regex!15389 List!62468) Bool)

(assert (=> b!5485087 (= (matchR!7574 r!7292 s!2326) (matchRSpec!2492 r!7292 s!2326))))

(declare-datatypes ((Unit!155232 0))(
  ( (Unit!155233) )
))
(declare-fun lt!2240729 () Unit!155232)

(declare-fun mainMatchTheorem!2492 (Regex!15389 List!62468) Unit!155232)

(assert (=> b!5485087 (= lt!2240729 (mainMatchTheorem!2492 r!7292 s!2326))))

(declare-fun b!5485088 () Bool)

(declare-fun res!2338987 () Bool)

(assert (=> b!5485088 (=> res!2338987 e!3394310)))

(assert (=> b!5485088 (= res!2338987 (or (not ((_ is Cons!62343) zl!343)) (not ((_ is Nil!62344) s!2326))))))

(declare-fun tp!1507163 () Bool)

(declare-fun b!5485089 () Bool)

(assert (=> b!5485089 (= e!3394311 (and (inv!81719 (h!68791 zl!343)) e!3394309 tp!1507163))))

(declare-fun b!5485090 () Bool)

(declare-fun res!2338986 () Bool)

(assert (=> b!5485090 (=> (not res!2338986) (not e!3394308))))

(assert (=> b!5485090 (= res!2338986 (= r!7292 (unfocusZipper!1131 zl!343)))))

(declare-fun b!5485091 () Bool)

(declare-fun tp!1507160 () Bool)

(assert (=> b!5485091 (= e!3394313 tp!1507160)))

(declare-fun b!5485092 () Bool)

(declare-fun tp!1507165 () Bool)

(declare-fun tp!1507161 () Bool)

(assert (=> b!5485092 (= e!3394313 (and tp!1507165 tp!1507161))))

(assert (= (and start!573574 res!2338990) b!5485084))

(assert (= (and b!5485084 res!2338989) b!5485090))

(assert (= (and b!5485090 res!2338986) b!5485087))

(assert (= (and b!5485087 res!2338985) b!5485085))

(assert (= (and b!5485087 (not res!2338988)) b!5485088))

(assert (= (and b!5485088 (not res!2338987)) b!5485083))

(assert (= (and start!573574 ((_ is ElementMatch!15389) r!7292)) b!5485081))

(assert (= (and start!573574 ((_ is Concat!24234) r!7292)) b!5485092))

(assert (= (and start!573574 ((_ is Star!15389) r!7292)) b!5485091))

(assert (= (and start!573574 ((_ is Union!15389) r!7292)) b!5485086))

(assert (= (and start!573574 ((_ is Cons!62344) s!2326)) b!5485079))

(assert (= (and start!573574 condSetEmpty!36123) setIsEmpty!36123))

(assert (= (and start!573574 (not condSetEmpty!36123)) setNonEmpty!36123))

(assert (= setNonEmpty!36123 b!5485082))

(assert (= b!5485089 b!5485080))

(assert (= (and start!573574 ((_ is Cons!62343) zl!343)) b!5485089))

(declare-fun m!6500560 () Bool)

(assert (=> start!573574 m!6500560))

(declare-fun m!6500562 () Bool)

(assert (=> b!5485083 m!6500562))

(declare-fun m!6500564 () Bool)

(assert (=> b!5485089 m!6500564))

(declare-fun m!6500566 () Bool)

(assert (=> b!5485090 m!6500566))

(declare-fun m!6500568 () Bool)

(assert (=> setNonEmpty!36123 m!6500568))

(declare-fun m!6500570 () Bool)

(assert (=> b!5485087 m!6500570))

(declare-fun m!6500572 () Bool)

(assert (=> b!5485087 m!6500572))

(declare-fun m!6500574 () Bool)

(assert (=> b!5485087 m!6500574))

(declare-fun m!6500576 () Bool)

(assert (=> b!5485085 m!6500576))

(declare-fun m!6500578 () Bool)

(assert (=> b!5485084 m!6500578))

(check-sat (not b!5485085) (not b!5485083) (not start!573574) (not b!5485084) (not b!5485082) (not b!5485079) (not b!5485087) (not b!5485092) (not setNonEmpty!36123) tp_is_empty!40031 (not b!5485089) (not b!5485086) (not b!5485091) (not b!5485090) (not b!5485080))
(check-sat)
