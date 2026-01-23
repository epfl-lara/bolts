; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!549560 () Bool)

(assert start!549560)

(declare-fun b!5192752 () Bool)

(assert (=> b!5192752 true))

(assert (=> b!5192752 true))

(declare-fun b!5192748 () Bool)

(declare-fun e!3234390 () Bool)

(declare-fun tp!1456681 () Bool)

(assert (=> b!5192748 (= e!3234390 tp!1456681)))

(declare-fun res!2205618 () Bool)

(declare-fun e!3234393 () Bool)

(assert (=> start!549560 (=> (not res!2205618) (not e!3234393))))

(declare-datatypes ((C!29746 0))(
  ( (C!29747 (val!24575 Int)) )
))
(declare-datatypes ((Regex!14738 0))(
  ( (ElementMatch!14738 (c!895117 C!29746)) (Concat!23583 (regOne!29988 Regex!14738) (regTwo!29988 Regex!14738)) (EmptyExpr!14738) (Star!14738 (reg!15067 Regex!14738)) (EmptyLang!14738) (Union!14738 (regOne!29989 Regex!14738) (regTwo!29989 Regex!14738)) )
))
(declare-fun r!7292 () Regex!14738)

(declare-fun validRegex!6474 (Regex!14738) Bool)

(assert (=> start!549560 (= res!2205618 (validRegex!6474 r!7292))))

(assert (=> start!549560 e!3234393))

(declare-fun e!3234391 () Bool)

(assert (=> start!549560 e!3234391))

(declare-fun condSetEmpty!32809 () Bool)

(declare-datatypes ((List!60513 0))(
  ( (Nil!60389) (Cons!60389 (h!66837 Regex!14738) (t!373666 List!60513)) )
))
(declare-datatypes ((Context!8244 0))(
  ( (Context!8245 (exprs!4622 List!60513)) )
))
(declare-fun z!1189 () (Set Context!8244))

(assert (=> start!549560 (= condSetEmpty!32809 (= z!1189 (as set.empty (Set Context!8244))))))

(declare-fun setRes!32809 () Bool)

(assert (=> start!549560 setRes!32809))

(declare-fun e!3234392 () Bool)

(assert (=> start!549560 e!3234392))

(declare-fun e!3234394 () Bool)

(assert (=> start!549560 e!3234394))

(declare-fun b!5192749 () Bool)

(declare-fun res!2205621 () Bool)

(declare-fun e!3234388 () Bool)

(assert (=> b!5192749 (=> res!2205621 e!3234388)))

(declare-datatypes ((List!60514 0))(
  ( (Nil!60390) (Cons!60390 (h!66838 Context!8244) (t!373667 List!60514)) )
))
(declare-fun zl!343 () List!60514)

(declare-fun generalisedConcat!407 (List!60513) Regex!14738)

(assert (=> b!5192749 (= res!2205621 (not (= r!7292 (generalisedConcat!407 (exprs!4622 (h!66838 zl!343))))))))

(declare-fun setNonEmpty!32809 () Bool)

(declare-fun tp!1456680 () Bool)

(declare-fun setElem!32809 () Context!8244)

(declare-fun e!3234389 () Bool)

(declare-fun inv!80093 (Context!8244) Bool)

(assert (=> setNonEmpty!32809 (= setRes!32809 (and tp!1456680 (inv!80093 setElem!32809) e!3234389))))

(declare-fun setRest!32809 () (Set Context!8244))

(assert (=> setNonEmpty!32809 (= z!1189 (set.union (set.insert setElem!32809 (as set.empty (Set Context!8244))) setRest!32809))))

(declare-fun b!5192750 () Bool)

(assert (=> b!5192750 (= e!3234393 (not e!3234388))))

(declare-fun res!2205619 () Bool)

(assert (=> b!5192750 (=> res!2205619 e!3234388)))

(assert (=> b!5192750 (= res!2205619 (not (is-Cons!60390 zl!343)))))

(declare-datatypes ((List!60515 0))(
  ( (Nil!60391) (Cons!60391 (h!66839 C!29746) (t!373668 List!60515)) )
))
(declare-fun s!2326 () List!60515)

(declare-fun matchR!6923 (Regex!14738 List!60515) Bool)

(declare-fun matchRSpec!1841 (Regex!14738 List!60515) Bool)

(assert (=> b!5192750 (= (matchR!6923 r!7292 s!2326) (matchRSpec!1841 r!7292 s!2326))))

(declare-datatypes ((Unit!152310 0))(
  ( (Unit!152311) )
))
(declare-fun lt!2138322 () Unit!152310)

(declare-fun mainMatchTheorem!1841 (Regex!14738 List!60515) Unit!152310)

(assert (=> b!5192750 (= lt!2138322 (mainMatchTheorem!1841 r!7292 s!2326))))

(declare-fun b!5192751 () Bool)

(declare-fun tp_is_empty!38729 () Bool)

(assert (=> b!5192751 (= e!3234391 tp_is_empty!38729)))

(assert (=> b!5192752 (= e!3234388 true)))

(declare-fun lambda!259664 () Int)

(declare-datatypes ((tuple2!63874 0))(
  ( (tuple2!63875 (_1!35240 List!60515) (_2!35240 List!60515)) )
))
(declare-datatypes ((Option!14849 0))(
  ( (None!14848) (Some!14848 (v!50877 tuple2!63874)) )
))
(declare-fun isDefined!11552 (Option!14849) Bool)

(declare-fun findConcatSeparation!1263 (Regex!14738 Regex!14738 List!60515 List!60515 List!60515) Option!14849)

(declare-fun Exists!1919 (Int) Bool)

(assert (=> b!5192752 (= (isDefined!11552 (findConcatSeparation!1263 (regOne!29988 r!7292) (regTwo!29988 r!7292) Nil!60391 s!2326 s!2326)) (Exists!1919 lambda!259664))))

(declare-fun lt!2138323 () Unit!152310)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1027 (Regex!14738 Regex!14738 List!60515) Unit!152310)

(assert (=> b!5192752 (= lt!2138323 (lemmaFindConcatSeparationEquivalentToExists!1027 (regOne!29988 r!7292) (regTwo!29988 r!7292) s!2326))))

(declare-fun b!5192753 () Bool)

(declare-fun res!2205616 () Bool)

(assert (=> b!5192753 (=> (not res!2205616) (not e!3234393))))

(declare-fun toList!8522 ((Set Context!8244)) List!60514)

(assert (=> b!5192753 (= res!2205616 (= (toList!8522 z!1189) zl!343))))

(declare-fun b!5192754 () Bool)

(declare-fun tp!1456674 () Bool)

(assert (=> b!5192754 (= e!3234391 tp!1456674)))

(declare-fun b!5192755 () Bool)

(declare-fun tp!1456682 () Bool)

(declare-fun tp!1456678 () Bool)

(assert (=> b!5192755 (= e!3234391 (and tp!1456682 tp!1456678))))

(declare-fun b!5192756 () Bool)

(declare-fun tp!1456675 () Bool)

(assert (=> b!5192756 (= e!3234392 (and (inv!80093 (h!66838 zl!343)) e!3234390 tp!1456675))))

(declare-fun b!5192757 () Bool)

(declare-fun tp!1456683 () Bool)

(assert (=> b!5192757 (= e!3234394 (and tp_is_empty!38729 tp!1456683))))

(declare-fun b!5192758 () Bool)

(declare-fun res!2205617 () Bool)

(assert (=> b!5192758 (=> (not res!2205617) (not e!3234393))))

(declare-fun unfocusZipper!480 (List!60514) Regex!14738)

(assert (=> b!5192758 (= res!2205617 (= r!7292 (unfocusZipper!480 zl!343)))))

(declare-fun setIsEmpty!32809 () Bool)

(assert (=> setIsEmpty!32809 setRes!32809))

(declare-fun b!5192759 () Bool)

(declare-fun res!2205620 () Bool)

(assert (=> b!5192759 (=> res!2205620 e!3234388)))

(declare-fun isEmpty!32327 (List!60514) Bool)

(assert (=> b!5192759 (= res!2205620 (not (isEmpty!32327 (t!373667 zl!343))))))

(declare-fun b!5192760 () Bool)

(declare-fun res!2205613 () Bool)

(assert (=> b!5192760 (=> res!2205613 e!3234388)))

(assert (=> b!5192760 (= res!2205613 (not (is-Cons!60389 (exprs!4622 (h!66838 zl!343)))))))

(declare-fun b!5192761 () Bool)

(declare-fun res!2205614 () Bool)

(assert (=> b!5192761 (=> res!2205614 e!3234388)))

(assert (=> b!5192761 (= res!2205614 (or (is-EmptyExpr!14738 r!7292) (is-EmptyLang!14738 r!7292) (is-ElementMatch!14738 r!7292) (is-Union!14738 r!7292) (not (is-Concat!23583 r!7292))))))

(declare-fun b!5192762 () Bool)

(declare-fun tp!1456677 () Bool)

(assert (=> b!5192762 (= e!3234389 tp!1456677)))

(declare-fun b!5192763 () Bool)

(declare-fun tp!1456679 () Bool)

(declare-fun tp!1456676 () Bool)

(assert (=> b!5192763 (= e!3234391 (and tp!1456679 tp!1456676))))

(declare-fun b!5192764 () Bool)

(declare-fun res!2205615 () Bool)

(assert (=> b!5192764 (=> res!2205615 e!3234388)))

(declare-fun generalisedUnion!667 (List!60513) Regex!14738)

(declare-fun unfocusZipperList!180 (List!60514) List!60513)

(assert (=> b!5192764 (= res!2205615 (not (= r!7292 (generalisedUnion!667 (unfocusZipperList!180 zl!343)))))))

(assert (= (and start!549560 res!2205618) b!5192753))

(assert (= (and b!5192753 res!2205616) b!5192758))

(assert (= (and b!5192758 res!2205617) b!5192750))

(assert (= (and b!5192750 (not res!2205619)) b!5192759))

(assert (= (and b!5192759 (not res!2205620)) b!5192749))

(assert (= (and b!5192749 (not res!2205621)) b!5192760))

(assert (= (and b!5192760 (not res!2205613)) b!5192764))

(assert (= (and b!5192764 (not res!2205615)) b!5192761))

(assert (= (and b!5192761 (not res!2205614)) b!5192752))

(assert (= (and start!549560 (is-ElementMatch!14738 r!7292)) b!5192751))

(assert (= (and start!549560 (is-Concat!23583 r!7292)) b!5192763))

(assert (= (and start!549560 (is-Star!14738 r!7292)) b!5192754))

(assert (= (and start!549560 (is-Union!14738 r!7292)) b!5192755))

(assert (= (and start!549560 condSetEmpty!32809) setIsEmpty!32809))

(assert (= (and start!549560 (not condSetEmpty!32809)) setNonEmpty!32809))

(assert (= setNonEmpty!32809 b!5192762))

(assert (= b!5192756 b!5192748))

(assert (= (and start!549560 (is-Cons!60390 zl!343)) b!5192756))

(assert (= (and start!549560 (is-Cons!60391 s!2326)) b!5192757))

(declare-fun m!6248402 () Bool)

(assert (=> b!5192758 m!6248402))

(declare-fun m!6248404 () Bool)

(assert (=> b!5192753 m!6248404))

(declare-fun m!6248406 () Bool)

(assert (=> b!5192750 m!6248406))

(declare-fun m!6248408 () Bool)

(assert (=> b!5192750 m!6248408))

(declare-fun m!6248410 () Bool)

(assert (=> b!5192750 m!6248410))

(declare-fun m!6248412 () Bool)

(assert (=> b!5192752 m!6248412))

(assert (=> b!5192752 m!6248412))

(declare-fun m!6248414 () Bool)

(assert (=> b!5192752 m!6248414))

(declare-fun m!6248416 () Bool)

(assert (=> b!5192752 m!6248416))

(declare-fun m!6248418 () Bool)

(assert (=> b!5192752 m!6248418))

(declare-fun m!6248420 () Bool)

(assert (=> b!5192764 m!6248420))

(assert (=> b!5192764 m!6248420))

(declare-fun m!6248422 () Bool)

(assert (=> b!5192764 m!6248422))

(declare-fun m!6248424 () Bool)

(assert (=> b!5192749 m!6248424))

(declare-fun m!6248426 () Bool)

(assert (=> b!5192759 m!6248426))

(declare-fun m!6248428 () Bool)

(assert (=> b!5192756 m!6248428))

(declare-fun m!6248430 () Bool)

(assert (=> setNonEmpty!32809 m!6248430))

(declare-fun m!6248432 () Bool)

(assert (=> start!549560 m!6248432))

(push 1)

(assert (not b!5192754))

(assert (not b!5192753))

(assert (not b!5192756))

(assert (not b!5192750))

(assert (not setNonEmpty!32809))

(assert (not b!5192763))

(assert (not b!5192748))

(assert (not b!5192764))

(assert (not b!5192749))

(assert tp_is_empty!38729)

(assert (not b!5192758))

(assert (not b!5192759))

(assert (not b!5192757))

(assert (not b!5192755))

(assert (not b!5192762))

(assert (not b!5192752))

(assert (not start!549560))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

