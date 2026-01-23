; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723758 () Bool)

(assert start!723758)

(declare-fun b!7459118 () Bool)

(declare-fun res!2992043 () Bool)

(declare-fun e!4451740 () Bool)

(assert (=> b!7459118 (=> (not res!2992043) (not e!4451740))))

(declare-datatypes ((C!39316 0))(
  ( (C!39317 (val!30056 Int)) )
))
(declare-datatypes ((Regex!19521 0))(
  ( (ElementMatch!19521 (c!1379066 C!39316)) (Concat!28366 (regOne!39554 Regex!19521) (regTwo!39554 Regex!19521)) (EmptyExpr!19521) (Star!19521 (reg!19850 Regex!19521)) (EmptyLang!19521) (Union!19521 (regOne!39555 Regex!19521) (regTwo!39555 Regex!19521)) )
))
(declare-fun r2!5783 () Regex!19521)

(declare-fun validRegex!10035 (Regex!19521) Bool)

(assert (=> b!7459118 (= res!2992043 (validRegex!10035 r2!5783))))

(declare-fun b!7459119 () Bool)

(declare-fun e!4451742 () Bool)

(declare-fun tp_is_empty!49331 () Bool)

(assert (=> b!7459119 (= e!4451742 tp_is_empty!49331)))

(declare-fun res!2992044 () Bool)

(assert (=> start!723758 (=> (not res!2992044) (not e!4451740))))

(declare-fun r1!5845 () Regex!19521)

(assert (=> start!723758 (= res!2992044 (validRegex!10035 r1!5845))))

(assert (=> start!723758 e!4451740))

(declare-fun e!4451743 () Bool)

(assert (=> start!723758 e!4451743))

(assert (=> start!723758 e!4451742))

(declare-fun e!4451744 () Bool)

(assert (=> start!723758 e!4451744))

(declare-fun e!4451741 () Bool)

(assert (=> start!723758 e!4451741))

(declare-fun b!7459120 () Bool)

(declare-fun tp!2161549 () Bool)

(declare-fun tp!2161563 () Bool)

(assert (=> b!7459120 (= e!4451743 (and tp!2161549 tp!2161563))))

(declare-fun b!7459121 () Bool)

(declare-fun tp!2161562 () Bool)

(assert (=> b!7459121 (= e!4451741 (and tp_is_empty!49331 tp!2161562))))

(declare-fun b!7459122 () Bool)

(assert (=> b!7459122 (= e!4451743 tp_is_empty!49331)))

(declare-fun b!7459123 () Bool)

(declare-fun tp!2161552 () Bool)

(declare-fun tp!2161551 () Bool)

(assert (=> b!7459123 (= e!4451742 (and tp!2161552 tp!2161551))))

(declare-fun b!7459124 () Bool)

(declare-fun tp!2161553 () Bool)

(declare-fun tp!2161559 () Bool)

(assert (=> b!7459124 (= e!4451743 (and tp!2161553 tp!2161559))))

(declare-fun b!7459125 () Bool)

(declare-fun tp!2161560 () Bool)

(assert (=> b!7459125 (= e!4451744 tp!2161560)))

(declare-fun b!7459126 () Bool)

(assert (=> b!7459126 (= e!4451740 (not true))))

(declare-fun lt!2622219 () Regex!19521)

(declare-datatypes ((List!72237 0))(
  ( (Nil!72113) (Cons!72113 (h!78561 C!39316) (t!386806 List!72237)) )
))
(declare-fun s!13591 () List!72237)

(declare-fun matchR!9285 (Regex!19521 List!72237) Bool)

(declare-fun matchRSpec!4200 (Regex!19521 List!72237) Bool)

(assert (=> b!7459126 (= (matchR!9285 lt!2622219 s!13591) (matchRSpec!4200 lt!2622219 s!13591))))

(declare-datatypes ((Unit!165877 0))(
  ( (Unit!165878) )
))
(declare-fun lt!2622216 () Unit!165877)

(declare-fun mainMatchTheorem!4194 (Regex!19521 List!72237) Unit!165877)

(assert (=> b!7459126 (= lt!2622216 (mainMatchTheorem!4194 lt!2622219 s!13591))))

(declare-fun lt!2622218 () Regex!19521)

(assert (=> b!7459126 (= (matchR!9285 lt!2622218 s!13591) (matchRSpec!4200 lt!2622218 s!13591))))

(declare-fun lt!2622217 () Unit!165877)

(assert (=> b!7459126 (= lt!2622217 (mainMatchTheorem!4194 lt!2622218 s!13591))))

(declare-fun rTail!78 () Regex!19521)

(assert (=> b!7459126 (= lt!2622219 (Union!19521 (Concat!28366 r1!5845 rTail!78) (Concat!28366 r2!5783 rTail!78)))))

(assert (=> b!7459126 (= lt!2622218 (Concat!28366 (Union!19521 r1!5845 r2!5783) rTail!78))))

(declare-fun b!7459127 () Bool)

(declare-fun tp!2161561 () Bool)

(assert (=> b!7459127 (= e!4451742 tp!2161561)))

(declare-fun b!7459128 () Bool)

(declare-fun tp!2161548 () Bool)

(assert (=> b!7459128 (= e!4451743 tp!2161548)))

(declare-fun b!7459129 () Bool)

(declare-fun tp!2161550 () Bool)

(declare-fun tp!2161556 () Bool)

(assert (=> b!7459129 (= e!4451744 (and tp!2161550 tp!2161556))))

(declare-fun b!7459130 () Bool)

(declare-fun res!2992042 () Bool)

(assert (=> b!7459130 (=> (not res!2992042) (not e!4451740))))

(assert (=> b!7459130 (= res!2992042 (validRegex!10035 rTail!78))))

(declare-fun b!7459131 () Bool)

(declare-fun tp!2161557 () Bool)

(declare-fun tp!2161554 () Bool)

(assert (=> b!7459131 (= e!4451744 (and tp!2161557 tp!2161554))))

(declare-fun b!7459132 () Bool)

(assert (=> b!7459132 (= e!4451744 tp_is_empty!49331)))

(declare-fun b!7459133 () Bool)

(declare-fun tp!2161555 () Bool)

(declare-fun tp!2161558 () Bool)

(assert (=> b!7459133 (= e!4451742 (and tp!2161555 tp!2161558))))

(assert (= (and start!723758 res!2992044) b!7459118))

(assert (= (and b!7459118 res!2992043) b!7459130))

(assert (= (and b!7459130 res!2992042) b!7459126))

(get-info :version)

(assert (= (and start!723758 ((_ is ElementMatch!19521) r1!5845)) b!7459122))

(assert (= (and start!723758 ((_ is Concat!28366) r1!5845)) b!7459124))

(assert (= (and start!723758 ((_ is Star!19521) r1!5845)) b!7459128))

(assert (= (and start!723758 ((_ is Union!19521) r1!5845)) b!7459120))

(assert (= (and start!723758 ((_ is ElementMatch!19521) r2!5783)) b!7459119))

(assert (= (and start!723758 ((_ is Concat!28366) r2!5783)) b!7459133))

(assert (= (and start!723758 ((_ is Star!19521) r2!5783)) b!7459127))

(assert (= (and start!723758 ((_ is Union!19521) r2!5783)) b!7459123))

(assert (= (and start!723758 ((_ is ElementMatch!19521) rTail!78)) b!7459132))

(assert (= (and start!723758 ((_ is Concat!28366) rTail!78)) b!7459129))

(assert (= (and start!723758 ((_ is Star!19521) rTail!78)) b!7459125))

(assert (= (and start!723758 ((_ is Union!19521) rTail!78)) b!7459131))

(assert (= (and start!723758 ((_ is Cons!72113) s!13591)) b!7459121))

(declare-fun m!8061646 () Bool)

(assert (=> b!7459118 m!8061646))

(declare-fun m!8061648 () Bool)

(assert (=> start!723758 m!8061648))

(declare-fun m!8061650 () Bool)

(assert (=> b!7459126 m!8061650))

(declare-fun m!8061652 () Bool)

(assert (=> b!7459126 m!8061652))

(declare-fun m!8061654 () Bool)

(assert (=> b!7459126 m!8061654))

(declare-fun m!8061656 () Bool)

(assert (=> b!7459126 m!8061656))

(declare-fun m!8061658 () Bool)

(assert (=> b!7459126 m!8061658))

(declare-fun m!8061660 () Bool)

(assert (=> b!7459126 m!8061660))

(declare-fun m!8061662 () Bool)

(assert (=> b!7459130 m!8061662))

(check-sat (not start!723758) (not b!7459129) (not b!7459121) (not b!7459125) (not b!7459130) (not b!7459118) (not b!7459126) tp_is_empty!49331 (not b!7459123) (not b!7459120) (not b!7459124) (not b!7459127) (not b!7459133) (not b!7459131) (not b!7459128))
(check-sat)
