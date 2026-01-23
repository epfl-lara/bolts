; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549094 () Bool)

(assert start!549094)

(declare-fun b!5185392 () Bool)

(declare-fun res!2202673 () Bool)

(declare-fun e!3230390 () Bool)

(assert (=> b!5185392 (=> (not res!2202673) (not e!3230390))))

(declare-datatypes ((C!29676 0))(
  ( (C!29677 (val!24540 Int)) )
))
(declare-datatypes ((Regex!14703 0))(
  ( (ElementMatch!14703 (c!893628 C!29676)) (Concat!23548 (regOne!29918 Regex!14703) (regTwo!29918 Regex!14703)) (EmptyExpr!14703) (Star!14703 (reg!15032 Regex!14703)) (EmptyLang!14703) (Union!14703 (regOne!29919 Regex!14703) (regTwo!29919 Regex!14703)) )
))
(declare-fun r!7292 () Regex!14703)

(declare-datatypes ((List!60408 0))(
  ( (Nil!60284) (Cons!60284 (h!66732 Regex!14703) (t!373561 List!60408)) )
))
(declare-datatypes ((Context!8174 0))(
  ( (Context!8175 (exprs!4587 List!60408)) )
))
(declare-datatypes ((List!60409 0))(
  ( (Nil!60285) (Cons!60285 (h!66733 Context!8174) (t!373562 List!60409)) )
))
(declare-fun zl!343 () List!60409)

(declare-fun unfocusZipper!445 (List!60409) Regex!14703)

(assert (=> b!5185392 (= res!2202673 (= r!7292 (unfocusZipper!445 zl!343)))))

(declare-fun b!5185393 () Bool)

(declare-fun e!3230391 () Bool)

(declare-fun e!3230389 () Bool)

(assert (=> b!5185393 (= e!3230391 e!3230389)))

(declare-fun res!2202672 () Bool)

(assert (=> b!5185393 (=> res!2202672 e!3230389)))

(declare-fun lt!2136405 () Bool)

(assert (=> b!5185393 (= res!2202672 lt!2136405)))

(declare-datatypes ((List!60410 0))(
  ( (Nil!60286) (Cons!60286 (h!66734 C!29676) (t!373563 List!60410)) )
))
(declare-fun s!2326 () List!60410)

(declare-fun matchR!6888 (Regex!14703 List!60410) Bool)

(declare-fun matchRSpec!1806 (Regex!14703 List!60410) Bool)

(assert (=> b!5185393 (= (matchR!6888 (regTwo!29919 r!7292) s!2326) (matchRSpec!1806 (regTwo!29919 r!7292) s!2326))))

(declare-datatypes ((Unit!152240 0))(
  ( (Unit!152241) )
))
(declare-fun lt!2136402 () Unit!152240)

(declare-fun mainMatchTheorem!1806 (Regex!14703 List!60410) Unit!152240)

(assert (=> b!5185393 (= lt!2136402 (mainMatchTheorem!1806 (regTwo!29919 r!7292) s!2326))))

(assert (=> b!5185393 (= lt!2136405 (matchRSpec!1806 (regOne!29919 r!7292) s!2326))))

(assert (=> b!5185393 (= lt!2136405 (matchR!6888 (regOne!29919 r!7292) s!2326))))

(declare-fun lt!2136404 () Unit!152240)

(assert (=> b!5185393 (= lt!2136404 (mainMatchTheorem!1806 (regOne!29919 r!7292) s!2326))))

(declare-fun b!5185394 () Bool)

(declare-fun res!2202671 () Bool)

(assert (=> b!5185394 (=> res!2202671 e!3230391)))

(declare-fun generalisedConcat!372 (List!60408) Regex!14703)

(assert (=> b!5185394 (= res!2202671 (not (= r!7292 (generalisedConcat!372 (exprs!4587 (h!66733 zl!343))))))))

(declare-fun b!5185395 () Bool)

(declare-fun res!2202665 () Bool)

(assert (=> b!5185395 (=> res!2202665 e!3230391)))

(get-info :version)

(assert (=> b!5185395 (= res!2202665 (not ((_ is Cons!60284) (exprs!4587 (h!66733 zl!343)))))))

(declare-fun b!5185396 () Bool)

(declare-fun res!2202667 () Bool)

(assert (=> b!5185396 (=> res!2202667 e!3230391)))

(declare-fun isEmpty!32264 (List!60409) Bool)

(assert (=> b!5185396 (= res!2202667 (not (isEmpty!32264 (t!373562 zl!343))))))

(declare-fun b!5185397 () Bool)

(declare-fun e!3230392 () Bool)

(declare-fun tp!1454814 () Bool)

(assert (=> b!5185397 (= e!3230392 tp!1454814)))

(declare-fun b!5185399 () Bool)

(assert (=> b!5185399 (= e!3230390 (not e!3230391))))

(declare-fun res!2202670 () Bool)

(assert (=> b!5185399 (=> res!2202670 e!3230391)))

(assert (=> b!5185399 (= res!2202670 (not ((_ is Cons!60285) zl!343)))))

(assert (=> b!5185399 (= (matchR!6888 r!7292 s!2326) (matchRSpec!1806 r!7292 s!2326))))

(declare-fun lt!2136403 () Unit!152240)

(assert (=> b!5185399 (= lt!2136403 (mainMatchTheorem!1806 r!7292 s!2326))))

(declare-fun b!5185400 () Bool)

(declare-fun res!2202674 () Bool)

(assert (=> b!5185400 (=> res!2202674 e!3230391)))

(declare-fun generalisedUnion!632 (List!60408) Regex!14703)

(declare-fun unfocusZipperList!145 (List!60409) List!60408)

(assert (=> b!5185400 (= res!2202674 (not (= r!7292 (generalisedUnion!632 (unfocusZipperList!145 zl!343)))))))

(declare-fun b!5185401 () Bool)

(declare-fun res!2202669 () Bool)

(assert (=> b!5185401 (=> (not res!2202669) (not e!3230390))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8174))

(declare-fun toList!8487 ((InoxSet Context!8174)) List!60409)

(assert (=> b!5185401 (= res!2202669 (= (toList!8487 z!1189) zl!343))))

(declare-fun e!3230388 () Bool)

(declare-fun e!3230393 () Bool)

(declare-fun tp!1454821 () Bool)

(declare-fun b!5185402 () Bool)

(declare-fun inv!80004 (Context!8174) Bool)

(assert (=> b!5185402 (= e!3230388 (and (inv!80004 (h!66733 zl!343)) e!3230393 tp!1454821))))

(declare-fun b!5185403 () Bool)

(declare-fun tp!1454815 () Bool)

(assert (=> b!5185403 (= e!3230393 tp!1454815)))

(declare-fun b!5185404 () Bool)

(declare-fun e!3230395 () Bool)

(declare-fun tp!1454819 () Bool)

(assert (=> b!5185404 (= e!3230395 tp!1454819)))

(declare-fun setIsEmpty!32662 () Bool)

(declare-fun setRes!32662 () Bool)

(assert (=> setIsEmpty!32662 setRes!32662))

(declare-fun tp!1454817 () Bool)

(declare-fun setNonEmpty!32662 () Bool)

(declare-fun setElem!32662 () Context!8174)

(assert (=> setNonEmpty!32662 (= setRes!32662 (and tp!1454817 (inv!80004 setElem!32662) e!3230392))))

(declare-fun setRest!32662 () (InoxSet Context!8174))

(assert (=> setNonEmpty!32662 (= z!1189 ((_ map or) (store ((as const (Array Context!8174 Bool)) false) setElem!32662 true) setRest!32662))))

(declare-fun b!5185405 () Bool)

(declare-fun tp_is_empty!38659 () Bool)

(assert (=> b!5185405 (= e!3230395 tp_is_empty!38659)))

(declare-fun b!5185406 () Bool)

(declare-fun validRegex!6439 (Regex!14703) Bool)

(assert (=> b!5185406 (= e!3230389 (validRegex!6439 (regTwo!29919 r!7292)))))

(declare-fun b!5185407 () Bool)

(declare-fun tp!1454812 () Bool)

(declare-fun tp!1454813 () Bool)

(assert (=> b!5185407 (= e!3230395 (and tp!1454812 tp!1454813))))

(declare-fun b!5185408 () Bool)

(declare-fun e!3230394 () Bool)

(declare-fun tp!1454820 () Bool)

(assert (=> b!5185408 (= e!3230394 (and tp_is_empty!38659 tp!1454820))))

(declare-fun b!5185409 () Bool)

(declare-fun res!2202666 () Bool)

(assert (=> b!5185409 (=> res!2202666 e!3230391)))

(assert (=> b!5185409 (= res!2202666 (or ((_ is EmptyExpr!14703) r!7292) ((_ is EmptyLang!14703) r!7292) ((_ is ElementMatch!14703) r!7292) (not ((_ is Union!14703) r!7292))))))

(declare-fun b!5185398 () Bool)

(declare-fun tp!1454816 () Bool)

(declare-fun tp!1454818 () Bool)

(assert (=> b!5185398 (= e!3230395 (and tp!1454816 tp!1454818))))

(declare-fun res!2202668 () Bool)

(assert (=> start!549094 (=> (not res!2202668) (not e!3230390))))

(assert (=> start!549094 (= res!2202668 (validRegex!6439 r!7292))))

(assert (=> start!549094 e!3230390))

(assert (=> start!549094 e!3230395))

(declare-fun condSetEmpty!32662 () Bool)

(assert (=> start!549094 (= condSetEmpty!32662 (= z!1189 ((as const (Array Context!8174 Bool)) false)))))

(assert (=> start!549094 setRes!32662))

(assert (=> start!549094 e!3230388))

(assert (=> start!549094 e!3230394))

(assert (= (and start!549094 res!2202668) b!5185401))

(assert (= (and b!5185401 res!2202669) b!5185392))

(assert (= (and b!5185392 res!2202673) b!5185399))

(assert (= (and b!5185399 (not res!2202670)) b!5185396))

(assert (= (and b!5185396 (not res!2202667)) b!5185394))

(assert (= (and b!5185394 (not res!2202671)) b!5185395))

(assert (= (and b!5185395 (not res!2202665)) b!5185400))

(assert (= (and b!5185400 (not res!2202674)) b!5185409))

(assert (= (and b!5185409 (not res!2202666)) b!5185393))

(assert (= (and b!5185393 (not res!2202672)) b!5185406))

(assert (= (and start!549094 ((_ is ElementMatch!14703) r!7292)) b!5185405))

(assert (= (and start!549094 ((_ is Concat!23548) r!7292)) b!5185398))

(assert (= (and start!549094 ((_ is Star!14703) r!7292)) b!5185404))

(assert (= (and start!549094 ((_ is Union!14703) r!7292)) b!5185407))

(assert (= (and start!549094 condSetEmpty!32662) setIsEmpty!32662))

(assert (= (and start!549094 (not condSetEmpty!32662)) setNonEmpty!32662))

(assert (= setNonEmpty!32662 b!5185397))

(assert (= b!5185402 b!5185403))

(assert (= (and start!549094 ((_ is Cons!60285) zl!343)) b!5185402))

(assert (= (and start!549094 ((_ is Cons!60286) s!2326)) b!5185408))

(declare-fun m!6244120 () Bool)

(assert (=> b!5185406 m!6244120))

(declare-fun m!6244122 () Bool)

(assert (=> b!5185392 m!6244122))

(declare-fun m!6244124 () Bool)

(assert (=> b!5185393 m!6244124))

(declare-fun m!6244126 () Bool)

(assert (=> b!5185393 m!6244126))

(declare-fun m!6244128 () Bool)

(assert (=> b!5185393 m!6244128))

(declare-fun m!6244130 () Bool)

(assert (=> b!5185393 m!6244130))

(declare-fun m!6244132 () Bool)

(assert (=> b!5185393 m!6244132))

(declare-fun m!6244134 () Bool)

(assert (=> b!5185393 m!6244134))

(declare-fun m!6244136 () Bool)

(assert (=> b!5185399 m!6244136))

(declare-fun m!6244138 () Bool)

(assert (=> b!5185399 m!6244138))

(declare-fun m!6244140 () Bool)

(assert (=> b!5185399 m!6244140))

(declare-fun m!6244142 () Bool)

(assert (=> b!5185394 m!6244142))

(declare-fun m!6244144 () Bool)

(assert (=> setNonEmpty!32662 m!6244144))

(declare-fun m!6244146 () Bool)

(assert (=> b!5185401 m!6244146))

(declare-fun m!6244148 () Bool)

(assert (=> b!5185402 m!6244148))

(declare-fun m!6244150 () Bool)

(assert (=> b!5185400 m!6244150))

(assert (=> b!5185400 m!6244150))

(declare-fun m!6244152 () Bool)

(assert (=> b!5185400 m!6244152))

(declare-fun m!6244154 () Bool)

(assert (=> b!5185396 m!6244154))

(declare-fun m!6244156 () Bool)

(assert (=> start!549094 m!6244156))

(check-sat (not b!5185402) tp_is_empty!38659 (not b!5185393) (not b!5185400) (not b!5185394) (not b!5185399) (not b!5185396) (not b!5185403) (not b!5185406) (not start!549094) (not b!5185404) (not b!5185407) (not b!5185397) (not b!5185392) (not b!5185401) (not setNonEmpty!32662) (not b!5185408) (not b!5185398))
(check-sat)
(get-model)

(declare-fun d!1676153 () Bool)

(declare-fun lambda!259257 () Int)

(declare-fun forall!14198 (List!60408 Int) Bool)

(assert (=> d!1676153 (= (inv!80004 (h!66733 zl!343)) (forall!14198 (exprs!4587 (h!66733 zl!343)) lambda!259257))))

(declare-fun bs!1208231 () Bool)

(assert (= bs!1208231 d!1676153))

(declare-fun m!6244206 () Bool)

(assert (=> bs!1208231 m!6244206))

(assert (=> b!5185402 d!1676153))

(declare-fun b!5185633 () Bool)

(assert (=> b!5185633 true))

(assert (=> b!5185633 true))

(declare-fun bs!1208236 () Bool)

(declare-fun b!5185632 () Bool)

(assert (= bs!1208236 (and b!5185632 b!5185633)))

(declare-fun lambda!259267 () Int)

(declare-fun lambda!259266 () Int)

(assert (=> bs!1208236 (not (= lambda!259267 lambda!259266))))

(assert (=> b!5185632 true))

(assert (=> b!5185632 true))

(declare-fun d!1676175 () Bool)

(declare-fun c!893691 () Bool)

(assert (=> d!1676175 (= c!893691 ((_ is EmptyExpr!14703) (regTwo!29919 r!7292)))))

(declare-fun e!3230527 () Bool)

(assert (=> d!1676175 (= (matchRSpec!1806 (regTwo!29919 r!7292) s!2326) e!3230527)))

(declare-fun e!3230526 () Bool)

(declare-fun call!364387 () Bool)

(assert (=> b!5185632 (= e!3230526 call!364387)))

(declare-fun e!3230528 () Bool)

(assert (=> b!5185633 (= e!3230528 call!364387)))

(declare-fun c!893690 () Bool)

(declare-fun bm!364382 () Bool)

(declare-fun Exists!1906 (Int) Bool)

(assert (=> bm!364382 (= call!364387 (Exists!1906 (ite c!893690 lambda!259266 lambda!259267)))))

(declare-fun b!5185634 () Bool)

(declare-fun e!3230529 () Bool)

(assert (=> b!5185634 (= e!3230527 e!3230529)))

(declare-fun res!2202777 () Bool)

(assert (=> b!5185634 (= res!2202777 (not ((_ is EmptyLang!14703) (regTwo!29919 r!7292))))))

(assert (=> b!5185634 (=> (not res!2202777) (not e!3230529))))

(declare-fun b!5185635 () Bool)

(declare-fun c!893688 () Bool)

(assert (=> b!5185635 (= c!893688 ((_ is Union!14703) (regTwo!29919 r!7292)))))

(declare-fun e!3230523 () Bool)

(declare-fun e!3230524 () Bool)

(assert (=> b!5185635 (= e!3230523 e!3230524)))

(declare-fun b!5185636 () Bool)

(declare-fun e!3230525 () Bool)

(assert (=> b!5185636 (= e!3230524 e!3230525)))

(declare-fun res!2202775 () Bool)

(assert (=> b!5185636 (= res!2202775 (matchRSpec!1806 (regOne!29919 (regTwo!29919 r!7292)) s!2326))))

(assert (=> b!5185636 (=> res!2202775 e!3230525)))

(declare-fun bm!364383 () Bool)

(declare-fun call!364388 () Bool)

(declare-fun isEmpty!32266 (List!60410) Bool)

(assert (=> bm!364383 (= call!364388 (isEmpty!32266 s!2326))))

(declare-fun b!5185637 () Bool)

(declare-fun c!893689 () Bool)

(assert (=> b!5185637 (= c!893689 ((_ is ElementMatch!14703) (regTwo!29919 r!7292)))))

(assert (=> b!5185637 (= e!3230529 e!3230523)))

(declare-fun b!5185638 () Bool)

(assert (=> b!5185638 (= e!3230525 (matchRSpec!1806 (regTwo!29919 (regTwo!29919 r!7292)) s!2326))))

(declare-fun b!5185639 () Bool)

(assert (=> b!5185639 (= e!3230527 call!364388)))

(declare-fun b!5185640 () Bool)

(assert (=> b!5185640 (= e!3230523 (= s!2326 (Cons!60286 (c!893628 (regTwo!29919 r!7292)) Nil!60286)))))

(declare-fun b!5185641 () Bool)

(assert (=> b!5185641 (= e!3230524 e!3230526)))

(assert (=> b!5185641 (= c!893690 ((_ is Star!14703) (regTwo!29919 r!7292)))))

(declare-fun b!5185642 () Bool)

(declare-fun res!2202776 () Bool)

(assert (=> b!5185642 (=> res!2202776 e!3230528)))

(assert (=> b!5185642 (= res!2202776 call!364388)))

(assert (=> b!5185642 (= e!3230526 e!3230528)))

(assert (= (and d!1676175 c!893691) b!5185639))

(assert (= (and d!1676175 (not c!893691)) b!5185634))

(assert (= (and b!5185634 res!2202777) b!5185637))

(assert (= (and b!5185637 c!893689) b!5185640))

(assert (= (and b!5185637 (not c!893689)) b!5185635))

(assert (= (and b!5185635 c!893688) b!5185636))

(assert (= (and b!5185635 (not c!893688)) b!5185641))

(assert (= (and b!5185636 (not res!2202775)) b!5185638))

(assert (= (and b!5185641 c!893690) b!5185642))

(assert (= (and b!5185641 (not c!893690)) b!5185632))

(assert (= (and b!5185642 (not res!2202776)) b!5185633))

(assert (= (or b!5185633 b!5185632) bm!364382))

(assert (= (or b!5185639 b!5185642) bm!364383))

(declare-fun m!6244244 () Bool)

(assert (=> bm!364382 m!6244244))

(declare-fun m!6244246 () Bool)

(assert (=> b!5185636 m!6244246))

(declare-fun m!6244248 () Bool)

(assert (=> bm!364383 m!6244248))

(declare-fun m!6244250 () Bool)

(assert (=> b!5185638 m!6244250))

(assert (=> b!5185393 d!1676175))

(declare-fun d!1676185 () Bool)

(assert (=> d!1676185 (= (matchR!6888 (regOne!29919 r!7292) s!2326) (matchRSpec!1806 (regOne!29919 r!7292) s!2326))))

(declare-fun lt!2136424 () Unit!152240)

(declare-fun choose!38534 (Regex!14703 List!60410) Unit!152240)

(assert (=> d!1676185 (= lt!2136424 (choose!38534 (regOne!29919 r!7292) s!2326))))

(assert (=> d!1676185 (validRegex!6439 (regOne!29919 r!7292))))

(assert (=> d!1676185 (= (mainMatchTheorem!1806 (regOne!29919 r!7292) s!2326) lt!2136424)))

(declare-fun bs!1208237 () Bool)

(assert (= bs!1208237 d!1676185))

(assert (=> bs!1208237 m!6244134))

(assert (=> bs!1208237 m!6244130))

(declare-fun m!6244252 () Bool)

(assert (=> bs!1208237 m!6244252))

(declare-fun m!6244254 () Bool)

(assert (=> bs!1208237 m!6244254))

(assert (=> b!5185393 d!1676185))

(declare-fun b!5185720 () Bool)

(declare-fun res!2202805 () Bool)

(declare-fun e!3230572 () Bool)

(assert (=> b!5185720 (=> (not res!2202805) (not e!3230572))))

(declare-fun tail!10195 (List!60410) List!60410)

(assert (=> b!5185720 (= res!2202805 (isEmpty!32266 (tail!10195 s!2326)))))

(declare-fun b!5185721 () Bool)

(declare-fun res!2202811 () Bool)

(declare-fun e!3230574 () Bool)

(assert (=> b!5185721 (=> res!2202811 e!3230574)))

(assert (=> b!5185721 (= res!2202811 (not (isEmpty!32266 (tail!10195 s!2326))))))

(declare-fun b!5185722 () Bool)

(declare-fun e!3230578 () Bool)

(declare-fun lt!2136433 () Bool)

(assert (=> b!5185722 (= e!3230578 (not lt!2136433))))

(declare-fun b!5185723 () Bool)

(declare-fun e!3230577 () Bool)

(assert (=> b!5185723 (= e!3230577 e!3230578)))

(declare-fun c!893717 () Bool)

(assert (=> b!5185723 (= c!893717 ((_ is EmptyLang!14703) (regTwo!29919 r!7292)))))

(declare-fun b!5185724 () Bool)

(declare-fun e!3230575 () Bool)

(declare-fun e!3230576 () Bool)

(assert (=> b!5185724 (= e!3230575 e!3230576)))

(declare-fun res!2202810 () Bool)

(assert (=> b!5185724 (=> (not res!2202810) (not e!3230576))))

(assert (=> b!5185724 (= res!2202810 (not lt!2136433))))

(declare-fun b!5185725 () Bool)

(declare-fun res!2202806 () Bool)

(assert (=> b!5185725 (=> res!2202806 e!3230575)))

(assert (=> b!5185725 (= res!2202806 (not ((_ is ElementMatch!14703) (regTwo!29919 r!7292))))))

(assert (=> b!5185725 (= e!3230578 e!3230575)))

(declare-fun b!5185727 () Bool)

(declare-fun res!2202812 () Bool)

(assert (=> b!5185727 (=> (not res!2202812) (not e!3230572))))

(declare-fun call!364394 () Bool)

(assert (=> b!5185727 (= res!2202812 (not call!364394))))

(declare-fun b!5185728 () Bool)

(declare-fun e!3230573 () Bool)

(declare-fun nullable!4906 (Regex!14703) Bool)

(assert (=> b!5185728 (= e!3230573 (nullable!4906 (regTwo!29919 r!7292)))))

(declare-fun b!5185729 () Bool)

(declare-fun res!2202808 () Bool)

(assert (=> b!5185729 (=> res!2202808 e!3230575)))

(assert (=> b!5185729 (= res!2202808 e!3230572)))

(declare-fun res!2202807 () Bool)

(assert (=> b!5185729 (=> (not res!2202807) (not e!3230572))))

(assert (=> b!5185729 (= res!2202807 lt!2136433)))

(declare-fun b!5185730 () Bool)

(assert (=> b!5185730 (= e!3230577 (= lt!2136433 call!364394))))

(declare-fun b!5185731 () Bool)

(declare-fun head!11098 (List!60410) C!29676)

(assert (=> b!5185731 (= e!3230572 (= (head!11098 s!2326) (c!893628 (regTwo!29919 r!7292))))))

(declare-fun b!5185732 () Bool)

(assert (=> b!5185732 (= e!3230574 (not (= (head!11098 s!2326) (c!893628 (regTwo!29919 r!7292)))))))

(declare-fun bm!364389 () Bool)

(assert (=> bm!364389 (= call!364394 (isEmpty!32266 s!2326))))

(declare-fun b!5185733 () Bool)

(assert (=> b!5185733 (= e!3230576 e!3230574)))

(declare-fun res!2202809 () Bool)

(assert (=> b!5185733 (=> res!2202809 e!3230574)))

(assert (=> b!5185733 (= res!2202809 call!364394)))

(declare-fun b!5185726 () Bool)

(declare-fun derivativeStep!4012 (Regex!14703 C!29676) Regex!14703)

(assert (=> b!5185726 (= e!3230573 (matchR!6888 (derivativeStep!4012 (regTwo!29919 r!7292) (head!11098 s!2326)) (tail!10195 s!2326)))))

(declare-fun d!1676187 () Bool)

(assert (=> d!1676187 e!3230577))

(declare-fun c!893715 () Bool)

(assert (=> d!1676187 (= c!893715 ((_ is EmptyExpr!14703) (regTwo!29919 r!7292)))))

(assert (=> d!1676187 (= lt!2136433 e!3230573)))

(declare-fun c!893716 () Bool)

(assert (=> d!1676187 (= c!893716 (isEmpty!32266 s!2326))))

(assert (=> d!1676187 (validRegex!6439 (regTwo!29919 r!7292))))

(assert (=> d!1676187 (= (matchR!6888 (regTwo!29919 r!7292) s!2326) lt!2136433)))

(assert (= (and d!1676187 c!893716) b!5185728))

(assert (= (and d!1676187 (not c!893716)) b!5185726))

(assert (= (and d!1676187 c!893715) b!5185730))

(assert (= (and d!1676187 (not c!893715)) b!5185723))

(assert (= (and b!5185723 c!893717) b!5185722))

(assert (= (and b!5185723 (not c!893717)) b!5185725))

(assert (= (and b!5185725 (not res!2202806)) b!5185729))

(assert (= (and b!5185729 res!2202807) b!5185727))

(assert (= (and b!5185727 res!2202812) b!5185720))

(assert (= (and b!5185720 res!2202805) b!5185731))

(assert (= (and b!5185729 (not res!2202808)) b!5185724))

(assert (= (and b!5185724 res!2202810) b!5185733))

(assert (= (and b!5185733 (not res!2202809)) b!5185721))

(assert (= (and b!5185721 (not res!2202811)) b!5185732))

(assert (= (or b!5185730 b!5185733 b!5185727) bm!364389))

(declare-fun m!6244282 () Bool)

(assert (=> b!5185732 m!6244282))

(assert (=> d!1676187 m!6244248))

(assert (=> d!1676187 m!6244120))

(declare-fun m!6244284 () Bool)

(assert (=> b!5185720 m!6244284))

(assert (=> b!5185720 m!6244284))

(declare-fun m!6244286 () Bool)

(assert (=> b!5185720 m!6244286))

(declare-fun m!6244288 () Bool)

(assert (=> b!5185728 m!6244288))

(assert (=> bm!364389 m!6244248))

(assert (=> b!5185726 m!6244282))

(assert (=> b!5185726 m!6244282))

(declare-fun m!6244290 () Bool)

(assert (=> b!5185726 m!6244290))

(assert (=> b!5185726 m!6244284))

(assert (=> b!5185726 m!6244290))

(assert (=> b!5185726 m!6244284))

(declare-fun m!6244292 () Bool)

(assert (=> b!5185726 m!6244292))

(assert (=> b!5185721 m!6244284))

(assert (=> b!5185721 m!6244284))

(assert (=> b!5185721 m!6244286))

(assert (=> b!5185731 m!6244282))

(assert (=> b!5185393 d!1676187))

(declare-fun d!1676197 () Bool)

(assert (=> d!1676197 (= (matchR!6888 (regTwo!29919 r!7292) s!2326) (matchRSpec!1806 (regTwo!29919 r!7292) s!2326))))

(declare-fun lt!2136437 () Unit!152240)

(assert (=> d!1676197 (= lt!2136437 (choose!38534 (regTwo!29919 r!7292) s!2326))))

(assert (=> d!1676197 (validRegex!6439 (regTwo!29919 r!7292))))

(assert (=> d!1676197 (= (mainMatchTheorem!1806 (regTwo!29919 r!7292) s!2326) lt!2136437)))

(declare-fun bs!1208246 () Bool)

(assert (= bs!1208246 d!1676197))

(assert (=> bs!1208246 m!6244128))

(assert (=> bs!1208246 m!6244124))

(declare-fun m!6244294 () Bool)

(assert (=> bs!1208246 m!6244294))

(assert (=> bs!1208246 m!6244120))

(assert (=> b!5185393 d!1676197))

(declare-fun bs!1208247 () Bool)

(declare-fun b!5185744 () Bool)

(assert (= bs!1208247 (and b!5185744 b!5185633)))

(declare-fun lambda!259274 () Int)

(assert (=> bs!1208247 (= (and (= (reg!15032 (regOne!29919 r!7292)) (reg!15032 (regTwo!29919 r!7292))) (= (regOne!29919 r!7292) (regTwo!29919 r!7292))) (= lambda!259274 lambda!259266))))

(declare-fun bs!1208248 () Bool)

(assert (= bs!1208248 (and b!5185744 b!5185632)))

(assert (=> bs!1208248 (not (= lambda!259274 lambda!259267))))

(assert (=> b!5185744 true))

(assert (=> b!5185744 true))

(declare-fun bs!1208249 () Bool)

(declare-fun b!5185743 () Bool)

(assert (= bs!1208249 (and b!5185743 b!5185633)))

(declare-fun lambda!259275 () Int)

(assert (=> bs!1208249 (not (= lambda!259275 lambda!259266))))

(declare-fun bs!1208250 () Bool)

(assert (= bs!1208250 (and b!5185743 b!5185632)))

(assert (=> bs!1208250 (= (and (= (regOne!29918 (regOne!29919 r!7292)) (regOne!29918 (regTwo!29919 r!7292))) (= (regTwo!29918 (regOne!29919 r!7292)) (regTwo!29918 (regTwo!29919 r!7292)))) (= lambda!259275 lambda!259267))))

(declare-fun bs!1208251 () Bool)

(assert (= bs!1208251 (and b!5185743 b!5185744)))

(assert (=> bs!1208251 (not (= lambda!259275 lambda!259274))))

(assert (=> b!5185743 true))

(assert (=> b!5185743 true))

(declare-fun d!1676199 () Bool)

(declare-fun c!893723 () Bool)

(assert (=> d!1676199 (= c!893723 ((_ is EmptyExpr!14703) (regOne!29919 r!7292)))))

(declare-fun e!3230590 () Bool)

(assert (=> d!1676199 (= (matchRSpec!1806 (regOne!29919 r!7292) s!2326) e!3230590)))

(declare-fun e!3230589 () Bool)

(declare-fun call!364398 () Bool)

(assert (=> b!5185743 (= e!3230589 call!364398)))

(declare-fun e!3230591 () Bool)

(assert (=> b!5185744 (= e!3230591 call!364398)))

(declare-fun bm!364393 () Bool)

(declare-fun c!893722 () Bool)

(assert (=> bm!364393 (= call!364398 (Exists!1906 (ite c!893722 lambda!259274 lambda!259275)))))

(declare-fun b!5185745 () Bool)

(declare-fun e!3230592 () Bool)

(assert (=> b!5185745 (= e!3230590 e!3230592)))

(declare-fun res!2202820 () Bool)

(assert (=> b!5185745 (= res!2202820 (not ((_ is EmptyLang!14703) (regOne!29919 r!7292))))))

(assert (=> b!5185745 (=> (not res!2202820) (not e!3230592))))

(declare-fun b!5185746 () Bool)

(declare-fun c!893720 () Bool)

(assert (=> b!5185746 (= c!893720 ((_ is Union!14703) (regOne!29919 r!7292)))))

(declare-fun e!3230586 () Bool)

(declare-fun e!3230587 () Bool)

(assert (=> b!5185746 (= e!3230586 e!3230587)))

(declare-fun b!5185747 () Bool)

(declare-fun e!3230588 () Bool)

(assert (=> b!5185747 (= e!3230587 e!3230588)))

(declare-fun res!2202818 () Bool)

(assert (=> b!5185747 (= res!2202818 (matchRSpec!1806 (regOne!29919 (regOne!29919 r!7292)) s!2326))))

(assert (=> b!5185747 (=> res!2202818 e!3230588)))

(declare-fun bm!364394 () Bool)

(declare-fun call!364399 () Bool)

(assert (=> bm!364394 (= call!364399 (isEmpty!32266 s!2326))))

(declare-fun b!5185748 () Bool)

(declare-fun c!893721 () Bool)

(assert (=> b!5185748 (= c!893721 ((_ is ElementMatch!14703) (regOne!29919 r!7292)))))

(assert (=> b!5185748 (= e!3230592 e!3230586)))

(declare-fun b!5185749 () Bool)

(assert (=> b!5185749 (= e!3230588 (matchRSpec!1806 (regTwo!29919 (regOne!29919 r!7292)) s!2326))))

(declare-fun b!5185750 () Bool)

(assert (=> b!5185750 (= e!3230590 call!364399)))

(declare-fun b!5185751 () Bool)

(assert (=> b!5185751 (= e!3230586 (= s!2326 (Cons!60286 (c!893628 (regOne!29919 r!7292)) Nil!60286)))))

(declare-fun b!5185752 () Bool)

(assert (=> b!5185752 (= e!3230587 e!3230589)))

(assert (=> b!5185752 (= c!893722 ((_ is Star!14703) (regOne!29919 r!7292)))))

(declare-fun b!5185753 () Bool)

(declare-fun res!2202819 () Bool)

(assert (=> b!5185753 (=> res!2202819 e!3230591)))

(assert (=> b!5185753 (= res!2202819 call!364399)))

(assert (=> b!5185753 (= e!3230589 e!3230591)))

(assert (= (and d!1676199 c!893723) b!5185750))

(assert (= (and d!1676199 (not c!893723)) b!5185745))

(assert (= (and b!5185745 res!2202820) b!5185748))

(assert (= (and b!5185748 c!893721) b!5185751))

(assert (= (and b!5185748 (not c!893721)) b!5185746))

(assert (= (and b!5185746 c!893720) b!5185747))

(assert (= (and b!5185746 (not c!893720)) b!5185752))

(assert (= (and b!5185747 (not res!2202818)) b!5185749))

(assert (= (and b!5185752 c!893722) b!5185753))

(assert (= (and b!5185752 (not c!893722)) b!5185743))

(assert (= (and b!5185753 (not res!2202819)) b!5185744))

(assert (= (or b!5185744 b!5185743) bm!364393))

(assert (= (or b!5185750 b!5185753) bm!364394))

(declare-fun m!6244304 () Bool)

(assert (=> bm!364393 m!6244304))

(declare-fun m!6244306 () Bool)

(assert (=> b!5185747 m!6244306))

(assert (=> bm!364394 m!6244248))

(declare-fun m!6244308 () Bool)

(assert (=> b!5185749 m!6244308))

(assert (=> b!5185393 d!1676199))

(declare-fun b!5185774 () Bool)

(declare-fun res!2202821 () Bool)

(declare-fun e!3230601 () Bool)

(assert (=> b!5185774 (=> (not res!2202821) (not e!3230601))))

(assert (=> b!5185774 (= res!2202821 (isEmpty!32266 (tail!10195 s!2326)))))

(declare-fun b!5185775 () Bool)

(declare-fun res!2202827 () Bool)

(declare-fun e!3230603 () Bool)

(assert (=> b!5185775 (=> res!2202827 e!3230603)))

(assert (=> b!5185775 (= res!2202827 (not (isEmpty!32266 (tail!10195 s!2326))))))

(declare-fun b!5185776 () Bool)

(declare-fun e!3230607 () Bool)

(declare-fun lt!2136438 () Bool)

(assert (=> b!5185776 (= e!3230607 (not lt!2136438))))

(declare-fun b!5185777 () Bool)

(declare-fun e!3230606 () Bool)

(assert (=> b!5185777 (= e!3230606 e!3230607)))

(declare-fun c!893726 () Bool)

(assert (=> b!5185777 (= c!893726 ((_ is EmptyLang!14703) (regOne!29919 r!7292)))))

(declare-fun b!5185778 () Bool)

(declare-fun e!3230604 () Bool)

(declare-fun e!3230605 () Bool)

(assert (=> b!5185778 (= e!3230604 e!3230605)))

(declare-fun res!2202826 () Bool)

(assert (=> b!5185778 (=> (not res!2202826) (not e!3230605))))

(assert (=> b!5185778 (= res!2202826 (not lt!2136438))))

(declare-fun b!5185779 () Bool)

(declare-fun res!2202822 () Bool)

(assert (=> b!5185779 (=> res!2202822 e!3230604)))

(assert (=> b!5185779 (= res!2202822 (not ((_ is ElementMatch!14703) (regOne!29919 r!7292))))))

(assert (=> b!5185779 (= e!3230607 e!3230604)))

(declare-fun b!5185781 () Bool)

(declare-fun res!2202828 () Bool)

(assert (=> b!5185781 (=> (not res!2202828) (not e!3230601))))

(declare-fun call!364400 () Bool)

(assert (=> b!5185781 (= res!2202828 (not call!364400))))

(declare-fun b!5185782 () Bool)

(declare-fun e!3230602 () Bool)

(assert (=> b!5185782 (= e!3230602 (nullable!4906 (regOne!29919 r!7292)))))

(declare-fun b!5185783 () Bool)

(declare-fun res!2202824 () Bool)

(assert (=> b!5185783 (=> res!2202824 e!3230604)))

(assert (=> b!5185783 (= res!2202824 e!3230601)))

(declare-fun res!2202823 () Bool)

(assert (=> b!5185783 (=> (not res!2202823) (not e!3230601))))

(assert (=> b!5185783 (= res!2202823 lt!2136438)))

(declare-fun b!5185784 () Bool)

(assert (=> b!5185784 (= e!3230606 (= lt!2136438 call!364400))))

(declare-fun b!5185785 () Bool)

(assert (=> b!5185785 (= e!3230601 (= (head!11098 s!2326) (c!893628 (regOne!29919 r!7292))))))

(declare-fun b!5185786 () Bool)

(assert (=> b!5185786 (= e!3230603 (not (= (head!11098 s!2326) (c!893628 (regOne!29919 r!7292)))))))

(declare-fun bm!364395 () Bool)

(assert (=> bm!364395 (= call!364400 (isEmpty!32266 s!2326))))

(declare-fun b!5185787 () Bool)

(assert (=> b!5185787 (= e!3230605 e!3230603)))

(declare-fun res!2202825 () Bool)

(assert (=> b!5185787 (=> res!2202825 e!3230603)))

(assert (=> b!5185787 (= res!2202825 call!364400)))

(declare-fun b!5185780 () Bool)

(assert (=> b!5185780 (= e!3230602 (matchR!6888 (derivativeStep!4012 (regOne!29919 r!7292) (head!11098 s!2326)) (tail!10195 s!2326)))))

(declare-fun d!1676201 () Bool)

(assert (=> d!1676201 e!3230606))

(declare-fun c!893724 () Bool)

(assert (=> d!1676201 (= c!893724 ((_ is EmptyExpr!14703) (regOne!29919 r!7292)))))

(assert (=> d!1676201 (= lt!2136438 e!3230602)))

(declare-fun c!893725 () Bool)

(assert (=> d!1676201 (= c!893725 (isEmpty!32266 s!2326))))

(assert (=> d!1676201 (validRegex!6439 (regOne!29919 r!7292))))

(assert (=> d!1676201 (= (matchR!6888 (regOne!29919 r!7292) s!2326) lt!2136438)))

(assert (= (and d!1676201 c!893725) b!5185782))

(assert (= (and d!1676201 (not c!893725)) b!5185780))

(assert (= (and d!1676201 c!893724) b!5185784))

(assert (= (and d!1676201 (not c!893724)) b!5185777))

(assert (= (and b!5185777 c!893726) b!5185776))

(assert (= (and b!5185777 (not c!893726)) b!5185779))

(assert (= (and b!5185779 (not res!2202822)) b!5185783))

(assert (= (and b!5185783 res!2202823) b!5185781))

(assert (= (and b!5185781 res!2202828) b!5185774))

(assert (= (and b!5185774 res!2202821) b!5185785))

(assert (= (and b!5185783 (not res!2202824)) b!5185778))

(assert (= (and b!5185778 res!2202826) b!5185787))

(assert (= (and b!5185787 (not res!2202825)) b!5185775))

(assert (= (and b!5185775 (not res!2202827)) b!5185786))

(assert (= (or b!5185784 b!5185787 b!5185781) bm!364395))

(assert (=> b!5185786 m!6244282))

(assert (=> d!1676201 m!6244248))

(assert (=> d!1676201 m!6244254))

(assert (=> b!5185774 m!6244284))

(assert (=> b!5185774 m!6244284))

(assert (=> b!5185774 m!6244286))

(declare-fun m!6244310 () Bool)

(assert (=> b!5185782 m!6244310))

(assert (=> bm!364395 m!6244248))

(assert (=> b!5185780 m!6244282))

(assert (=> b!5185780 m!6244282))

(declare-fun m!6244312 () Bool)

(assert (=> b!5185780 m!6244312))

(assert (=> b!5185780 m!6244284))

(assert (=> b!5185780 m!6244312))

(assert (=> b!5185780 m!6244284))

(declare-fun m!6244314 () Bool)

(assert (=> b!5185780 m!6244314))

(assert (=> b!5185775 m!6244284))

(assert (=> b!5185775 m!6244284))

(assert (=> b!5185775 m!6244286))

(assert (=> b!5185785 m!6244282))

(assert (=> b!5185393 d!1676201))

(declare-fun d!1676203 () Bool)

(declare-fun lt!2136441 () Regex!14703)

(assert (=> d!1676203 (validRegex!6439 lt!2136441)))

(assert (=> d!1676203 (= lt!2136441 (generalisedUnion!632 (unfocusZipperList!145 zl!343)))))

(assert (=> d!1676203 (= (unfocusZipper!445 zl!343) lt!2136441)))

(declare-fun bs!1208252 () Bool)

(assert (= bs!1208252 d!1676203))

(declare-fun m!6244318 () Bool)

(assert (=> bs!1208252 m!6244318))

(assert (=> bs!1208252 m!6244150))

(assert (=> bs!1208252 m!6244150))

(assert (=> bs!1208252 m!6244152))

(assert (=> b!5185392 d!1676203))

(declare-fun bs!1208253 () Bool)

(declare-fun d!1676205 () Bool)

(assert (= bs!1208253 (and d!1676205 d!1676153)))

(declare-fun lambda!259278 () Int)

(assert (=> bs!1208253 (= lambda!259278 lambda!259257)))

(declare-fun b!5185842 () Bool)

(declare-fun e!3230638 () Bool)

(declare-fun isEmpty!32268 (List!60408) Bool)

(assert (=> b!5185842 (= e!3230638 (isEmpty!32268 (t!373561 (exprs!4587 (h!66733 zl!343)))))))

(declare-fun b!5185844 () Bool)

(declare-fun e!3230637 () Bool)

(declare-fun lt!2136444 () Regex!14703)

(declare-fun isConcat!249 (Regex!14703) Bool)

(assert (=> b!5185844 (= e!3230637 (isConcat!249 lt!2136444))))

(declare-fun b!5185845 () Bool)

(declare-fun e!3230640 () Bool)

(assert (=> b!5185845 (= e!3230640 e!3230637)))

(declare-fun c!893735 () Bool)

(declare-fun tail!10197 (List!60408) List!60408)

(assert (=> b!5185845 (= c!893735 (isEmpty!32268 (tail!10197 (exprs!4587 (h!66733 zl!343)))))))

(declare-fun b!5185846 () Bool)

(declare-fun e!3230639 () Regex!14703)

(assert (=> b!5185846 (= e!3230639 (h!66732 (exprs!4587 (h!66733 zl!343))))))

(declare-fun b!5185847 () Bool)

(declare-fun e!3230635 () Bool)

(assert (=> b!5185847 (= e!3230635 e!3230640)))

(declare-fun c!893738 () Bool)

(assert (=> b!5185847 (= c!893738 (isEmpty!32268 (exprs!4587 (h!66733 zl!343))))))

(declare-fun b!5185848 () Bool)

(declare-fun e!3230636 () Regex!14703)

(assert (=> b!5185848 (= e!3230636 EmptyExpr!14703)))

(declare-fun b!5185849 () Bool)

(declare-fun isEmptyExpr!726 (Regex!14703) Bool)

(assert (=> b!5185849 (= e!3230640 (isEmptyExpr!726 lt!2136444))))

(declare-fun b!5185850 () Bool)

(declare-fun head!11100 (List!60408) Regex!14703)

(assert (=> b!5185850 (= e!3230637 (= lt!2136444 (head!11100 (exprs!4587 (h!66733 zl!343)))))))

(declare-fun b!5185851 () Bool)

(assert (=> b!5185851 (= e!3230636 (Concat!23548 (h!66732 (exprs!4587 (h!66733 zl!343))) (generalisedConcat!372 (t!373561 (exprs!4587 (h!66733 zl!343))))))))

(assert (=> d!1676205 e!3230635))

(declare-fun res!2202833 () Bool)

(assert (=> d!1676205 (=> (not res!2202833) (not e!3230635))))

(assert (=> d!1676205 (= res!2202833 (validRegex!6439 lt!2136444))))

(assert (=> d!1676205 (= lt!2136444 e!3230639)))

(declare-fun c!893736 () Bool)

(assert (=> d!1676205 (= c!893736 e!3230638)))

(declare-fun res!2202834 () Bool)

(assert (=> d!1676205 (=> (not res!2202834) (not e!3230638))))

(assert (=> d!1676205 (= res!2202834 ((_ is Cons!60284) (exprs!4587 (h!66733 zl!343))))))

(assert (=> d!1676205 (forall!14198 (exprs!4587 (h!66733 zl!343)) lambda!259278)))

(assert (=> d!1676205 (= (generalisedConcat!372 (exprs!4587 (h!66733 zl!343))) lt!2136444)))

(declare-fun b!5185843 () Bool)

(assert (=> b!5185843 (= e!3230639 e!3230636)))

(declare-fun c!893737 () Bool)

(assert (=> b!5185843 (= c!893737 ((_ is Cons!60284) (exprs!4587 (h!66733 zl!343))))))

(assert (= (and d!1676205 res!2202834) b!5185842))

(assert (= (and d!1676205 c!893736) b!5185846))

(assert (= (and d!1676205 (not c!893736)) b!5185843))

(assert (= (and b!5185843 c!893737) b!5185851))

(assert (= (and b!5185843 (not c!893737)) b!5185848))

(assert (= (and d!1676205 res!2202833) b!5185847))

(assert (= (and b!5185847 c!893738) b!5185849))

(assert (= (and b!5185847 (not c!893738)) b!5185845))

(assert (= (and b!5185845 c!893735) b!5185850))

(assert (= (and b!5185845 (not c!893735)) b!5185844))

(declare-fun m!6244320 () Bool)

(assert (=> b!5185850 m!6244320))

(declare-fun m!6244322 () Bool)

(assert (=> b!5185844 m!6244322))

(declare-fun m!6244324 () Bool)

(assert (=> b!5185847 m!6244324))

(declare-fun m!6244326 () Bool)

(assert (=> b!5185851 m!6244326))

(declare-fun m!6244328 () Bool)

(assert (=> b!5185842 m!6244328))

(declare-fun m!6244330 () Bool)

(assert (=> b!5185845 m!6244330))

(assert (=> b!5185845 m!6244330))

(declare-fun m!6244332 () Bool)

(assert (=> b!5185845 m!6244332))

(declare-fun m!6244334 () Bool)

(assert (=> b!5185849 m!6244334))

(declare-fun m!6244336 () Bool)

(assert (=> d!1676205 m!6244336))

(declare-fun m!6244338 () Bool)

(assert (=> d!1676205 m!6244338))

(assert (=> b!5185394 d!1676205))

(declare-fun bs!1208254 () Bool)

(declare-fun d!1676207 () Bool)

(assert (= bs!1208254 (and d!1676207 d!1676153)))

(declare-fun lambda!259279 () Int)

(assert (=> bs!1208254 (= lambda!259279 lambda!259257)))

(declare-fun bs!1208255 () Bool)

(assert (= bs!1208255 (and d!1676207 d!1676205)))

(assert (=> bs!1208255 (= lambda!259279 lambda!259278)))

(assert (=> d!1676207 (= (inv!80004 setElem!32662) (forall!14198 (exprs!4587 setElem!32662) lambda!259279))))

(declare-fun bs!1208256 () Bool)

(assert (= bs!1208256 d!1676207))

(declare-fun m!6244340 () Bool)

(assert (=> bs!1208256 m!6244340))

(assert (=> setNonEmpty!32662 d!1676207))

(declare-fun d!1676209 () Bool)

(assert (=> d!1676209 (= (isEmpty!32264 (t!373562 zl!343)) ((_ is Nil!60285) (t!373562 zl!343)))))

(assert (=> b!5185396 d!1676209))

(declare-fun d!1676211 () Bool)

(declare-fun res!2202848 () Bool)

(declare-fun e!3230658 () Bool)

(assert (=> d!1676211 (=> res!2202848 e!3230658)))

(assert (=> d!1676211 (= res!2202848 ((_ is ElementMatch!14703) (regTwo!29919 r!7292)))))

(assert (=> d!1676211 (= (validRegex!6439 (regTwo!29919 r!7292)) e!3230658)))

(declare-fun b!5185870 () Bool)

(declare-fun res!2202849 () Bool)

(declare-fun e!3230660 () Bool)

(assert (=> b!5185870 (=> (not res!2202849) (not e!3230660))))

(declare-fun call!364408 () Bool)

(assert (=> b!5185870 (= res!2202849 call!364408)))

(declare-fun e!3230657 () Bool)

(assert (=> b!5185870 (= e!3230657 e!3230660)))

(declare-fun b!5185871 () Bool)

(declare-fun e!3230659 () Bool)

(declare-fun call!364409 () Bool)

(assert (=> b!5185871 (= e!3230659 call!364409)))

(declare-fun b!5185872 () Bool)

(declare-fun e!3230661 () Bool)

(assert (=> b!5185872 (= e!3230658 e!3230661)))

(declare-fun c!893744 () Bool)

(assert (=> b!5185872 (= c!893744 ((_ is Star!14703) (regTwo!29919 r!7292)))))

(declare-fun b!5185873 () Bool)

(declare-fun e!3230655 () Bool)

(declare-fun e!3230656 () Bool)

(assert (=> b!5185873 (= e!3230655 e!3230656)))

(declare-fun res!2202845 () Bool)

(assert (=> b!5185873 (=> (not res!2202845) (not e!3230656))))

(assert (=> b!5185873 (= res!2202845 call!364408)))

(declare-fun bm!364402 () Bool)

(declare-fun call!364407 () Bool)

(assert (=> bm!364402 (= call!364407 call!364409)))

(declare-fun b!5185874 () Bool)

(assert (=> b!5185874 (= e!3230656 call!364407)))

(declare-fun b!5185875 () Bool)

(assert (=> b!5185875 (= e!3230661 e!3230657)))

(declare-fun c!893743 () Bool)

(assert (=> b!5185875 (= c!893743 ((_ is Union!14703) (regTwo!29919 r!7292)))))

(declare-fun b!5185876 () Bool)

(declare-fun res!2202846 () Bool)

(assert (=> b!5185876 (=> res!2202846 e!3230655)))

(assert (=> b!5185876 (= res!2202846 (not ((_ is Concat!23548) (regTwo!29919 r!7292))))))

(assert (=> b!5185876 (= e!3230657 e!3230655)))

(declare-fun bm!364403 () Bool)

(assert (=> bm!364403 (= call!364408 (validRegex!6439 (ite c!893743 (regOne!29919 (regTwo!29919 r!7292)) (regOne!29918 (regTwo!29919 r!7292)))))))

(declare-fun b!5185877 () Bool)

(assert (=> b!5185877 (= e!3230661 e!3230659)))

(declare-fun res!2202847 () Bool)

(assert (=> b!5185877 (= res!2202847 (not (nullable!4906 (reg!15032 (regTwo!29919 r!7292)))))))

(assert (=> b!5185877 (=> (not res!2202847) (not e!3230659))))

(declare-fun b!5185878 () Bool)

(assert (=> b!5185878 (= e!3230660 call!364407)))

(declare-fun bm!364404 () Bool)

(assert (=> bm!364404 (= call!364409 (validRegex!6439 (ite c!893744 (reg!15032 (regTwo!29919 r!7292)) (ite c!893743 (regTwo!29919 (regTwo!29919 r!7292)) (regTwo!29918 (regTwo!29919 r!7292))))))))

(assert (= (and d!1676211 (not res!2202848)) b!5185872))

(assert (= (and b!5185872 c!893744) b!5185877))

(assert (= (and b!5185872 (not c!893744)) b!5185875))

(assert (= (and b!5185877 res!2202847) b!5185871))

(assert (= (and b!5185875 c!893743) b!5185870))

(assert (= (and b!5185875 (not c!893743)) b!5185876))

(assert (= (and b!5185870 res!2202849) b!5185878))

(assert (= (and b!5185876 (not res!2202846)) b!5185873))

(assert (= (and b!5185873 res!2202845) b!5185874))

(assert (= (or b!5185878 b!5185874) bm!364402))

(assert (= (or b!5185870 b!5185873) bm!364403))

(assert (= (or b!5185871 bm!364402) bm!364404))

(declare-fun m!6244342 () Bool)

(assert (=> bm!364403 m!6244342))

(declare-fun m!6244344 () Bool)

(assert (=> b!5185877 m!6244344))

(declare-fun m!6244346 () Bool)

(assert (=> bm!364404 m!6244346))

(assert (=> b!5185406 d!1676211))

(declare-fun b!5185879 () Bool)

(declare-fun res!2202850 () Bool)

(declare-fun e!3230662 () Bool)

(assert (=> b!5185879 (=> (not res!2202850) (not e!3230662))))

(assert (=> b!5185879 (= res!2202850 (isEmpty!32266 (tail!10195 s!2326)))))

(declare-fun b!5185880 () Bool)

(declare-fun res!2202856 () Bool)

(declare-fun e!3230664 () Bool)

(assert (=> b!5185880 (=> res!2202856 e!3230664)))

(assert (=> b!5185880 (= res!2202856 (not (isEmpty!32266 (tail!10195 s!2326))))))

(declare-fun b!5185881 () Bool)

(declare-fun e!3230668 () Bool)

(declare-fun lt!2136445 () Bool)

(assert (=> b!5185881 (= e!3230668 (not lt!2136445))))

(declare-fun b!5185882 () Bool)

(declare-fun e!3230667 () Bool)

(assert (=> b!5185882 (= e!3230667 e!3230668)))

(declare-fun c!893747 () Bool)

(assert (=> b!5185882 (= c!893747 ((_ is EmptyLang!14703) r!7292))))

(declare-fun b!5185883 () Bool)

(declare-fun e!3230665 () Bool)

(declare-fun e!3230666 () Bool)

(assert (=> b!5185883 (= e!3230665 e!3230666)))

(declare-fun res!2202855 () Bool)

(assert (=> b!5185883 (=> (not res!2202855) (not e!3230666))))

(assert (=> b!5185883 (= res!2202855 (not lt!2136445))))

(declare-fun b!5185884 () Bool)

(declare-fun res!2202851 () Bool)

(assert (=> b!5185884 (=> res!2202851 e!3230665)))

(assert (=> b!5185884 (= res!2202851 (not ((_ is ElementMatch!14703) r!7292)))))

(assert (=> b!5185884 (= e!3230668 e!3230665)))

(declare-fun b!5185886 () Bool)

(declare-fun res!2202857 () Bool)

(assert (=> b!5185886 (=> (not res!2202857) (not e!3230662))))

(declare-fun call!364410 () Bool)

(assert (=> b!5185886 (= res!2202857 (not call!364410))))

(declare-fun b!5185887 () Bool)

(declare-fun e!3230663 () Bool)

(assert (=> b!5185887 (= e!3230663 (nullable!4906 r!7292))))

(declare-fun b!5185888 () Bool)

(declare-fun res!2202853 () Bool)

(assert (=> b!5185888 (=> res!2202853 e!3230665)))

(assert (=> b!5185888 (= res!2202853 e!3230662)))

(declare-fun res!2202852 () Bool)

(assert (=> b!5185888 (=> (not res!2202852) (not e!3230662))))

(assert (=> b!5185888 (= res!2202852 lt!2136445)))

(declare-fun b!5185889 () Bool)

(assert (=> b!5185889 (= e!3230667 (= lt!2136445 call!364410))))

(declare-fun b!5185890 () Bool)

(assert (=> b!5185890 (= e!3230662 (= (head!11098 s!2326) (c!893628 r!7292)))))

(declare-fun b!5185891 () Bool)

(assert (=> b!5185891 (= e!3230664 (not (= (head!11098 s!2326) (c!893628 r!7292))))))

(declare-fun bm!364405 () Bool)

(assert (=> bm!364405 (= call!364410 (isEmpty!32266 s!2326))))

(declare-fun b!5185892 () Bool)

(assert (=> b!5185892 (= e!3230666 e!3230664)))

(declare-fun res!2202854 () Bool)

(assert (=> b!5185892 (=> res!2202854 e!3230664)))

(assert (=> b!5185892 (= res!2202854 call!364410)))

(declare-fun b!5185885 () Bool)

(assert (=> b!5185885 (= e!3230663 (matchR!6888 (derivativeStep!4012 r!7292 (head!11098 s!2326)) (tail!10195 s!2326)))))

(declare-fun d!1676213 () Bool)

(assert (=> d!1676213 e!3230667))

(declare-fun c!893745 () Bool)

(assert (=> d!1676213 (= c!893745 ((_ is EmptyExpr!14703) r!7292))))

(assert (=> d!1676213 (= lt!2136445 e!3230663)))

(declare-fun c!893746 () Bool)

(assert (=> d!1676213 (= c!893746 (isEmpty!32266 s!2326))))

(assert (=> d!1676213 (validRegex!6439 r!7292)))

(assert (=> d!1676213 (= (matchR!6888 r!7292 s!2326) lt!2136445)))

(assert (= (and d!1676213 c!893746) b!5185887))

(assert (= (and d!1676213 (not c!893746)) b!5185885))

(assert (= (and d!1676213 c!893745) b!5185889))

(assert (= (and d!1676213 (not c!893745)) b!5185882))

(assert (= (and b!5185882 c!893747) b!5185881))

(assert (= (and b!5185882 (not c!893747)) b!5185884))

(assert (= (and b!5185884 (not res!2202851)) b!5185888))

(assert (= (and b!5185888 res!2202852) b!5185886))

(assert (= (and b!5185886 res!2202857) b!5185879))

(assert (= (and b!5185879 res!2202850) b!5185890))

(assert (= (and b!5185888 (not res!2202853)) b!5185883))

(assert (= (and b!5185883 res!2202855) b!5185892))

(assert (= (and b!5185892 (not res!2202854)) b!5185880))

(assert (= (and b!5185880 (not res!2202856)) b!5185891))

(assert (= (or b!5185889 b!5185892 b!5185886) bm!364405))

(assert (=> b!5185891 m!6244282))

(assert (=> d!1676213 m!6244248))

(assert (=> d!1676213 m!6244156))

(assert (=> b!5185879 m!6244284))

(assert (=> b!5185879 m!6244284))

(assert (=> b!5185879 m!6244286))

(declare-fun m!6244348 () Bool)

(assert (=> b!5185887 m!6244348))

(assert (=> bm!364405 m!6244248))

(assert (=> b!5185885 m!6244282))

(assert (=> b!5185885 m!6244282))

(declare-fun m!6244350 () Bool)

(assert (=> b!5185885 m!6244350))

(assert (=> b!5185885 m!6244284))

(assert (=> b!5185885 m!6244350))

(assert (=> b!5185885 m!6244284))

(declare-fun m!6244352 () Bool)

(assert (=> b!5185885 m!6244352))

(assert (=> b!5185880 m!6244284))

(assert (=> b!5185880 m!6244284))

(assert (=> b!5185880 m!6244286))

(assert (=> b!5185890 m!6244282))

(assert (=> b!5185399 d!1676213))

(declare-fun bs!1208257 () Bool)

(declare-fun b!5185894 () Bool)

(assert (= bs!1208257 (and b!5185894 b!5185633)))

(declare-fun lambda!259280 () Int)

(assert (=> bs!1208257 (= (and (= (reg!15032 r!7292) (reg!15032 (regTwo!29919 r!7292))) (= r!7292 (regTwo!29919 r!7292))) (= lambda!259280 lambda!259266))))

(declare-fun bs!1208258 () Bool)

(assert (= bs!1208258 (and b!5185894 b!5185632)))

(assert (=> bs!1208258 (not (= lambda!259280 lambda!259267))))

(declare-fun bs!1208259 () Bool)

(assert (= bs!1208259 (and b!5185894 b!5185744)))

(assert (=> bs!1208259 (= (and (= (reg!15032 r!7292) (reg!15032 (regOne!29919 r!7292))) (= r!7292 (regOne!29919 r!7292))) (= lambda!259280 lambda!259274))))

(declare-fun bs!1208260 () Bool)

(assert (= bs!1208260 (and b!5185894 b!5185743)))

(assert (=> bs!1208260 (not (= lambda!259280 lambda!259275))))

(assert (=> b!5185894 true))

(assert (=> b!5185894 true))

(declare-fun bs!1208261 () Bool)

(declare-fun b!5185893 () Bool)

(assert (= bs!1208261 (and b!5185893 b!5185743)))

(declare-fun lambda!259281 () Int)

(assert (=> bs!1208261 (= (and (= (regOne!29918 r!7292) (regOne!29918 (regOne!29919 r!7292))) (= (regTwo!29918 r!7292) (regTwo!29918 (regOne!29919 r!7292)))) (= lambda!259281 lambda!259275))))

(declare-fun bs!1208262 () Bool)

(assert (= bs!1208262 (and b!5185893 b!5185894)))

(assert (=> bs!1208262 (not (= lambda!259281 lambda!259280))))

(declare-fun bs!1208263 () Bool)

(assert (= bs!1208263 (and b!5185893 b!5185633)))

(assert (=> bs!1208263 (not (= lambda!259281 lambda!259266))))

(declare-fun bs!1208264 () Bool)

(assert (= bs!1208264 (and b!5185893 b!5185632)))

(assert (=> bs!1208264 (= (and (= (regOne!29918 r!7292) (regOne!29918 (regTwo!29919 r!7292))) (= (regTwo!29918 r!7292) (regTwo!29918 (regTwo!29919 r!7292)))) (= lambda!259281 lambda!259267))))

(declare-fun bs!1208265 () Bool)

(assert (= bs!1208265 (and b!5185893 b!5185744)))

(assert (=> bs!1208265 (not (= lambda!259281 lambda!259274))))

(assert (=> b!5185893 true))

(assert (=> b!5185893 true))

(declare-fun d!1676215 () Bool)

(declare-fun c!893751 () Bool)

(assert (=> d!1676215 (= c!893751 ((_ is EmptyExpr!14703) r!7292))))

(declare-fun e!3230673 () Bool)

(assert (=> d!1676215 (= (matchRSpec!1806 r!7292 s!2326) e!3230673)))

(declare-fun e!3230672 () Bool)

(declare-fun call!364411 () Bool)

(assert (=> b!5185893 (= e!3230672 call!364411)))

(declare-fun e!3230674 () Bool)

(assert (=> b!5185894 (= e!3230674 call!364411)))

(declare-fun bm!364406 () Bool)

(declare-fun c!893750 () Bool)

(assert (=> bm!364406 (= call!364411 (Exists!1906 (ite c!893750 lambda!259280 lambda!259281)))))

(declare-fun b!5185895 () Bool)

(declare-fun e!3230675 () Bool)

(assert (=> b!5185895 (= e!3230673 e!3230675)))

(declare-fun res!2202860 () Bool)

(assert (=> b!5185895 (= res!2202860 (not ((_ is EmptyLang!14703) r!7292)))))

(assert (=> b!5185895 (=> (not res!2202860) (not e!3230675))))

(declare-fun b!5185896 () Bool)

(declare-fun c!893748 () Bool)

(assert (=> b!5185896 (= c!893748 ((_ is Union!14703) r!7292))))

(declare-fun e!3230669 () Bool)

(declare-fun e!3230670 () Bool)

(assert (=> b!5185896 (= e!3230669 e!3230670)))

(declare-fun b!5185897 () Bool)

(declare-fun e!3230671 () Bool)

(assert (=> b!5185897 (= e!3230670 e!3230671)))

(declare-fun res!2202858 () Bool)

(assert (=> b!5185897 (= res!2202858 (matchRSpec!1806 (regOne!29919 r!7292) s!2326))))

(assert (=> b!5185897 (=> res!2202858 e!3230671)))

(declare-fun bm!364407 () Bool)

(declare-fun call!364412 () Bool)

(assert (=> bm!364407 (= call!364412 (isEmpty!32266 s!2326))))

(declare-fun b!5185898 () Bool)

(declare-fun c!893749 () Bool)

(assert (=> b!5185898 (= c!893749 ((_ is ElementMatch!14703) r!7292))))

(assert (=> b!5185898 (= e!3230675 e!3230669)))

(declare-fun b!5185899 () Bool)

(assert (=> b!5185899 (= e!3230671 (matchRSpec!1806 (regTwo!29919 r!7292) s!2326))))

(declare-fun b!5185900 () Bool)

(assert (=> b!5185900 (= e!3230673 call!364412)))

(declare-fun b!5185901 () Bool)

(assert (=> b!5185901 (= e!3230669 (= s!2326 (Cons!60286 (c!893628 r!7292) Nil!60286)))))

(declare-fun b!5185902 () Bool)

(assert (=> b!5185902 (= e!3230670 e!3230672)))

(assert (=> b!5185902 (= c!893750 ((_ is Star!14703) r!7292))))

(declare-fun b!5185903 () Bool)

(declare-fun res!2202859 () Bool)

(assert (=> b!5185903 (=> res!2202859 e!3230674)))

(assert (=> b!5185903 (= res!2202859 call!364412)))

(assert (=> b!5185903 (= e!3230672 e!3230674)))

(assert (= (and d!1676215 c!893751) b!5185900))

(assert (= (and d!1676215 (not c!893751)) b!5185895))

(assert (= (and b!5185895 res!2202860) b!5185898))

(assert (= (and b!5185898 c!893749) b!5185901))

(assert (= (and b!5185898 (not c!893749)) b!5185896))

(assert (= (and b!5185896 c!893748) b!5185897))

(assert (= (and b!5185896 (not c!893748)) b!5185902))

(assert (= (and b!5185897 (not res!2202858)) b!5185899))

(assert (= (and b!5185902 c!893750) b!5185903))

(assert (= (and b!5185902 (not c!893750)) b!5185893))

(assert (= (and b!5185903 (not res!2202859)) b!5185894))

(assert (= (or b!5185894 b!5185893) bm!364406))

(assert (= (or b!5185900 b!5185903) bm!364407))

(declare-fun m!6244354 () Bool)

(assert (=> bm!364406 m!6244354))

(assert (=> b!5185897 m!6244130))

(assert (=> bm!364407 m!6244248))

(assert (=> b!5185899 m!6244124))

(assert (=> b!5185399 d!1676215))

(declare-fun d!1676217 () Bool)

(assert (=> d!1676217 (= (matchR!6888 r!7292 s!2326) (matchRSpec!1806 r!7292 s!2326))))

(declare-fun lt!2136446 () Unit!152240)

(assert (=> d!1676217 (= lt!2136446 (choose!38534 r!7292 s!2326))))

(assert (=> d!1676217 (validRegex!6439 r!7292)))

(assert (=> d!1676217 (= (mainMatchTheorem!1806 r!7292 s!2326) lt!2136446)))

(declare-fun bs!1208266 () Bool)

(assert (= bs!1208266 d!1676217))

(assert (=> bs!1208266 m!6244136))

(assert (=> bs!1208266 m!6244138))

(declare-fun m!6244356 () Bool)

(assert (=> bs!1208266 m!6244356))

(assert (=> bs!1208266 m!6244156))

(assert (=> b!5185399 d!1676217))

(declare-fun d!1676219 () Bool)

(declare-fun res!2202864 () Bool)

(declare-fun e!3230679 () Bool)

(assert (=> d!1676219 (=> res!2202864 e!3230679)))

(assert (=> d!1676219 (= res!2202864 ((_ is ElementMatch!14703) r!7292))))

(assert (=> d!1676219 (= (validRegex!6439 r!7292) e!3230679)))

(declare-fun b!5185904 () Bool)

(declare-fun res!2202865 () Bool)

(declare-fun e!3230681 () Bool)

(assert (=> b!5185904 (=> (not res!2202865) (not e!3230681))))

(declare-fun call!364414 () Bool)

(assert (=> b!5185904 (= res!2202865 call!364414)))

(declare-fun e!3230678 () Bool)

(assert (=> b!5185904 (= e!3230678 e!3230681)))

(declare-fun b!5185905 () Bool)

(declare-fun e!3230680 () Bool)

(declare-fun call!364415 () Bool)

(assert (=> b!5185905 (= e!3230680 call!364415)))

(declare-fun b!5185906 () Bool)

(declare-fun e!3230682 () Bool)

(assert (=> b!5185906 (= e!3230679 e!3230682)))

(declare-fun c!893753 () Bool)

(assert (=> b!5185906 (= c!893753 ((_ is Star!14703) r!7292))))

(declare-fun b!5185907 () Bool)

(declare-fun e!3230676 () Bool)

(declare-fun e!3230677 () Bool)

(assert (=> b!5185907 (= e!3230676 e!3230677)))

(declare-fun res!2202861 () Bool)

(assert (=> b!5185907 (=> (not res!2202861) (not e!3230677))))

(assert (=> b!5185907 (= res!2202861 call!364414)))

(declare-fun bm!364408 () Bool)

(declare-fun call!364413 () Bool)

(assert (=> bm!364408 (= call!364413 call!364415)))

(declare-fun b!5185908 () Bool)

(assert (=> b!5185908 (= e!3230677 call!364413)))

(declare-fun b!5185909 () Bool)

(assert (=> b!5185909 (= e!3230682 e!3230678)))

(declare-fun c!893752 () Bool)

(assert (=> b!5185909 (= c!893752 ((_ is Union!14703) r!7292))))

(declare-fun b!5185910 () Bool)

(declare-fun res!2202862 () Bool)

(assert (=> b!5185910 (=> res!2202862 e!3230676)))

(assert (=> b!5185910 (= res!2202862 (not ((_ is Concat!23548) r!7292)))))

(assert (=> b!5185910 (= e!3230678 e!3230676)))

(declare-fun bm!364409 () Bool)

(assert (=> bm!364409 (= call!364414 (validRegex!6439 (ite c!893752 (regOne!29919 r!7292) (regOne!29918 r!7292))))))

(declare-fun b!5185911 () Bool)

(assert (=> b!5185911 (= e!3230682 e!3230680)))

(declare-fun res!2202863 () Bool)

(assert (=> b!5185911 (= res!2202863 (not (nullable!4906 (reg!15032 r!7292))))))

(assert (=> b!5185911 (=> (not res!2202863) (not e!3230680))))

(declare-fun b!5185912 () Bool)

(assert (=> b!5185912 (= e!3230681 call!364413)))

(declare-fun bm!364410 () Bool)

(assert (=> bm!364410 (= call!364415 (validRegex!6439 (ite c!893753 (reg!15032 r!7292) (ite c!893752 (regTwo!29919 r!7292) (regTwo!29918 r!7292)))))))

(assert (= (and d!1676219 (not res!2202864)) b!5185906))

(assert (= (and b!5185906 c!893753) b!5185911))

(assert (= (and b!5185906 (not c!893753)) b!5185909))

(assert (= (and b!5185911 res!2202863) b!5185905))

(assert (= (and b!5185909 c!893752) b!5185904))

(assert (= (and b!5185909 (not c!893752)) b!5185910))

(assert (= (and b!5185904 res!2202865) b!5185912))

(assert (= (and b!5185910 (not res!2202862)) b!5185907))

(assert (= (and b!5185907 res!2202861) b!5185908))

(assert (= (or b!5185912 b!5185908) bm!364408))

(assert (= (or b!5185904 b!5185907) bm!364409))

(assert (= (or b!5185905 bm!364408) bm!364410))

(declare-fun m!6244358 () Bool)

(assert (=> bm!364409 m!6244358))

(declare-fun m!6244360 () Bool)

(assert (=> b!5185911 m!6244360))

(declare-fun m!6244362 () Bool)

(assert (=> bm!364410 m!6244362))

(assert (=> start!549094 d!1676219))

(declare-fun d!1676221 () Bool)

(declare-fun e!3230685 () Bool)

(assert (=> d!1676221 e!3230685))

(declare-fun res!2202868 () Bool)

(assert (=> d!1676221 (=> (not res!2202868) (not e!3230685))))

(declare-fun lt!2136449 () List!60409)

(declare-fun noDuplicate!1147 (List!60409) Bool)

(assert (=> d!1676221 (= res!2202868 (noDuplicate!1147 lt!2136449))))

(declare-fun choose!38535 ((InoxSet Context!8174)) List!60409)

(assert (=> d!1676221 (= lt!2136449 (choose!38535 z!1189))))

(assert (=> d!1676221 (= (toList!8487 z!1189) lt!2136449)))

(declare-fun b!5185915 () Bool)

(declare-fun content!10683 (List!60409) (InoxSet Context!8174))

(assert (=> b!5185915 (= e!3230685 (= (content!10683 lt!2136449) z!1189))))

(assert (= (and d!1676221 res!2202868) b!5185915))

(declare-fun m!6244364 () Bool)

(assert (=> d!1676221 m!6244364))

(declare-fun m!6244366 () Bool)

(assert (=> d!1676221 m!6244366))

(declare-fun m!6244368 () Bool)

(assert (=> b!5185915 m!6244368))

(assert (=> b!5185401 d!1676221))

(declare-fun bs!1208267 () Bool)

(declare-fun d!1676223 () Bool)

(assert (= bs!1208267 (and d!1676223 d!1676153)))

(declare-fun lambda!259284 () Int)

(assert (=> bs!1208267 (= lambda!259284 lambda!259257)))

(declare-fun bs!1208268 () Bool)

(assert (= bs!1208268 (and d!1676223 d!1676205)))

(assert (=> bs!1208268 (= lambda!259284 lambda!259278)))

(declare-fun bs!1208269 () Bool)

(assert (= bs!1208269 (and d!1676223 d!1676207)))

(assert (=> bs!1208269 (= lambda!259284 lambda!259279)))

(declare-fun b!5185937 () Bool)

(declare-fun e!3230702 () Bool)

(assert (=> b!5185937 (= e!3230702 (isEmpty!32268 (t!373561 (unfocusZipperList!145 zl!343))))))

(declare-fun b!5185938 () Bool)

(declare-fun e!3230699 () Regex!14703)

(assert (=> b!5185938 (= e!3230699 EmptyLang!14703)))

(declare-fun b!5185939 () Bool)

(declare-fun e!3230701 () Bool)

(declare-fun e!3230703 () Bool)

(assert (=> b!5185939 (= e!3230701 e!3230703)))

(declare-fun c!893764 () Bool)

(assert (=> b!5185939 (= c!893764 (isEmpty!32268 (tail!10197 (unfocusZipperList!145 zl!343))))))

(declare-fun e!3230698 () Bool)

(assert (=> d!1676223 e!3230698))

(declare-fun res!2202873 () Bool)

(assert (=> d!1676223 (=> (not res!2202873) (not e!3230698))))

(declare-fun lt!2136452 () Regex!14703)

(assert (=> d!1676223 (= res!2202873 (validRegex!6439 lt!2136452))))

(declare-fun e!3230700 () Regex!14703)

(assert (=> d!1676223 (= lt!2136452 e!3230700)))

(declare-fun c!893765 () Bool)

(assert (=> d!1676223 (= c!893765 e!3230702)))

(declare-fun res!2202874 () Bool)

(assert (=> d!1676223 (=> (not res!2202874) (not e!3230702))))

(assert (=> d!1676223 (= res!2202874 ((_ is Cons!60284) (unfocusZipperList!145 zl!343)))))

(assert (=> d!1676223 (forall!14198 (unfocusZipperList!145 zl!343) lambda!259284)))

(assert (=> d!1676223 (= (generalisedUnion!632 (unfocusZipperList!145 zl!343)) lt!2136452)))

(declare-fun b!5185936 () Bool)

(assert (=> b!5185936 (= e!3230699 (Union!14703 (h!66732 (unfocusZipperList!145 zl!343)) (generalisedUnion!632 (t!373561 (unfocusZipperList!145 zl!343)))))))

(declare-fun b!5185940 () Bool)

(declare-fun isEmptyLang!736 (Regex!14703) Bool)

(assert (=> b!5185940 (= e!3230701 (isEmptyLang!736 lt!2136452))))

(declare-fun b!5185941 () Bool)

(assert (=> b!5185941 (= e!3230700 (h!66732 (unfocusZipperList!145 zl!343)))))

(declare-fun b!5185942 () Bool)

(declare-fun isUnion!168 (Regex!14703) Bool)

(assert (=> b!5185942 (= e!3230703 (isUnion!168 lt!2136452))))

(declare-fun b!5185943 () Bool)

(assert (=> b!5185943 (= e!3230703 (= lt!2136452 (head!11100 (unfocusZipperList!145 zl!343))))))

(declare-fun b!5185944 () Bool)

(assert (=> b!5185944 (= e!3230698 e!3230701)))

(declare-fun c!893763 () Bool)

(assert (=> b!5185944 (= c!893763 (isEmpty!32268 (unfocusZipperList!145 zl!343)))))

(declare-fun b!5185945 () Bool)

(assert (=> b!5185945 (= e!3230700 e!3230699)))

(declare-fun c!893762 () Bool)

(assert (=> b!5185945 (= c!893762 ((_ is Cons!60284) (unfocusZipperList!145 zl!343)))))

(assert (= (and d!1676223 res!2202874) b!5185937))

(assert (= (and d!1676223 c!893765) b!5185941))

(assert (= (and d!1676223 (not c!893765)) b!5185945))

(assert (= (and b!5185945 c!893762) b!5185936))

(assert (= (and b!5185945 (not c!893762)) b!5185938))

(assert (= (and d!1676223 res!2202873) b!5185944))

(assert (= (and b!5185944 c!893763) b!5185940))

(assert (= (and b!5185944 (not c!893763)) b!5185939))

(assert (= (and b!5185939 c!893764) b!5185943))

(assert (= (and b!5185939 (not c!893764)) b!5185942))

(assert (=> b!5185943 m!6244150))

(declare-fun m!6244370 () Bool)

(assert (=> b!5185943 m!6244370))

(declare-fun m!6244372 () Bool)

(assert (=> b!5185940 m!6244372))

(declare-fun m!6244374 () Bool)

(assert (=> b!5185936 m!6244374))

(declare-fun m!6244376 () Bool)

(assert (=> b!5185942 m!6244376))

(declare-fun m!6244378 () Bool)

(assert (=> d!1676223 m!6244378))

(assert (=> d!1676223 m!6244150))

(declare-fun m!6244380 () Bool)

(assert (=> d!1676223 m!6244380))

(assert (=> b!5185944 m!6244150))

(declare-fun m!6244382 () Bool)

(assert (=> b!5185944 m!6244382))

(declare-fun m!6244384 () Bool)

(assert (=> b!5185937 m!6244384))

(assert (=> b!5185939 m!6244150))

(declare-fun m!6244386 () Bool)

(assert (=> b!5185939 m!6244386))

(assert (=> b!5185939 m!6244386))

(declare-fun m!6244388 () Bool)

(assert (=> b!5185939 m!6244388))

(assert (=> b!5185400 d!1676223))

(declare-fun bs!1208270 () Bool)

(declare-fun d!1676225 () Bool)

(assert (= bs!1208270 (and d!1676225 d!1676153)))

(declare-fun lambda!259287 () Int)

(assert (=> bs!1208270 (= lambda!259287 lambda!259257)))

(declare-fun bs!1208271 () Bool)

(assert (= bs!1208271 (and d!1676225 d!1676205)))

(assert (=> bs!1208271 (= lambda!259287 lambda!259278)))

(declare-fun bs!1208272 () Bool)

(assert (= bs!1208272 (and d!1676225 d!1676207)))

(assert (=> bs!1208272 (= lambda!259287 lambda!259279)))

(declare-fun bs!1208273 () Bool)

(assert (= bs!1208273 (and d!1676225 d!1676223)))

(assert (=> bs!1208273 (= lambda!259287 lambda!259284)))

(declare-fun lt!2136455 () List!60408)

(assert (=> d!1676225 (forall!14198 lt!2136455 lambda!259287)))

(declare-fun e!3230706 () List!60408)

(assert (=> d!1676225 (= lt!2136455 e!3230706)))

(declare-fun c!893768 () Bool)

(assert (=> d!1676225 (= c!893768 ((_ is Cons!60285) zl!343))))

(assert (=> d!1676225 (= (unfocusZipperList!145 zl!343) lt!2136455)))

(declare-fun b!5185950 () Bool)

(assert (=> b!5185950 (= e!3230706 (Cons!60284 (generalisedConcat!372 (exprs!4587 (h!66733 zl!343))) (unfocusZipperList!145 (t!373562 zl!343))))))

(declare-fun b!5185951 () Bool)

(assert (=> b!5185951 (= e!3230706 Nil!60284)))

(assert (= (and d!1676225 c!893768) b!5185950))

(assert (= (and d!1676225 (not c!893768)) b!5185951))

(declare-fun m!6244390 () Bool)

(assert (=> d!1676225 m!6244390))

(assert (=> b!5185950 m!6244142))

(declare-fun m!6244392 () Bool)

(assert (=> b!5185950 m!6244392))

(assert (=> b!5185400 d!1676225))

(declare-fun b!5185956 () Bool)

(declare-fun e!3230709 () Bool)

(declare-fun tp!1454884 () Bool)

(declare-fun tp!1454885 () Bool)

(assert (=> b!5185956 (= e!3230709 (and tp!1454884 tp!1454885))))

(assert (=> b!5185397 (= tp!1454814 e!3230709)))

(assert (= (and b!5185397 ((_ is Cons!60284) (exprs!4587 setElem!32662))) b!5185956))

(declare-fun b!5185964 () Bool)

(declare-fun e!3230715 () Bool)

(declare-fun tp!1454890 () Bool)

(assert (=> b!5185964 (= e!3230715 tp!1454890)))

(declare-fun e!3230714 () Bool)

(declare-fun tp!1454891 () Bool)

(declare-fun b!5185963 () Bool)

(assert (=> b!5185963 (= e!3230714 (and (inv!80004 (h!66733 (t!373562 zl!343))) e!3230715 tp!1454891))))

(assert (=> b!5185402 (= tp!1454821 e!3230714)))

(assert (= b!5185963 b!5185964))

(assert (= (and b!5185402 ((_ is Cons!60285) (t!373562 zl!343))) b!5185963))

(declare-fun m!6244394 () Bool)

(assert (=> b!5185963 m!6244394))

(declare-fun b!5185978 () Bool)

(declare-fun e!3230718 () Bool)

(declare-fun tp!1454903 () Bool)

(declare-fun tp!1454906 () Bool)

(assert (=> b!5185978 (= e!3230718 (and tp!1454903 tp!1454906))))

(declare-fun b!5185975 () Bool)

(assert (=> b!5185975 (= e!3230718 tp_is_empty!38659)))

(declare-fun b!5185977 () Bool)

(declare-fun tp!1454902 () Bool)

(assert (=> b!5185977 (= e!3230718 tp!1454902)))

(declare-fun b!5185976 () Bool)

(declare-fun tp!1454905 () Bool)

(declare-fun tp!1454904 () Bool)

(assert (=> b!5185976 (= e!3230718 (and tp!1454905 tp!1454904))))

(assert (=> b!5185407 (= tp!1454812 e!3230718)))

(assert (= (and b!5185407 ((_ is ElementMatch!14703) (regOne!29919 r!7292))) b!5185975))

(assert (= (and b!5185407 ((_ is Concat!23548) (regOne!29919 r!7292))) b!5185976))

(assert (= (and b!5185407 ((_ is Star!14703) (regOne!29919 r!7292))) b!5185977))

(assert (= (and b!5185407 ((_ is Union!14703) (regOne!29919 r!7292))) b!5185978))

(declare-fun b!5185982 () Bool)

(declare-fun e!3230719 () Bool)

(declare-fun tp!1454908 () Bool)

(declare-fun tp!1454911 () Bool)

(assert (=> b!5185982 (= e!3230719 (and tp!1454908 tp!1454911))))

(declare-fun b!5185979 () Bool)

(assert (=> b!5185979 (= e!3230719 tp_is_empty!38659)))

(declare-fun b!5185981 () Bool)

(declare-fun tp!1454907 () Bool)

(assert (=> b!5185981 (= e!3230719 tp!1454907)))

(declare-fun b!5185980 () Bool)

(declare-fun tp!1454910 () Bool)

(declare-fun tp!1454909 () Bool)

(assert (=> b!5185980 (= e!3230719 (and tp!1454910 tp!1454909))))

(assert (=> b!5185407 (= tp!1454813 e!3230719)))

(assert (= (and b!5185407 ((_ is ElementMatch!14703) (regTwo!29919 r!7292))) b!5185979))

(assert (= (and b!5185407 ((_ is Concat!23548) (regTwo!29919 r!7292))) b!5185980))

(assert (= (and b!5185407 ((_ is Star!14703) (regTwo!29919 r!7292))) b!5185981))

(assert (= (and b!5185407 ((_ is Union!14703) (regTwo!29919 r!7292))) b!5185982))

(declare-fun b!5185986 () Bool)

(declare-fun e!3230720 () Bool)

(declare-fun tp!1454913 () Bool)

(declare-fun tp!1454916 () Bool)

(assert (=> b!5185986 (= e!3230720 (and tp!1454913 tp!1454916))))

(declare-fun b!5185983 () Bool)

(assert (=> b!5185983 (= e!3230720 tp_is_empty!38659)))

(declare-fun b!5185985 () Bool)

(declare-fun tp!1454912 () Bool)

(assert (=> b!5185985 (= e!3230720 tp!1454912)))

(declare-fun b!5185984 () Bool)

(declare-fun tp!1454915 () Bool)

(declare-fun tp!1454914 () Bool)

(assert (=> b!5185984 (= e!3230720 (and tp!1454915 tp!1454914))))

(assert (=> b!5185398 (= tp!1454816 e!3230720)))

(assert (= (and b!5185398 ((_ is ElementMatch!14703) (regOne!29918 r!7292))) b!5185983))

(assert (= (and b!5185398 ((_ is Concat!23548) (regOne!29918 r!7292))) b!5185984))

(assert (= (and b!5185398 ((_ is Star!14703) (regOne!29918 r!7292))) b!5185985))

(assert (= (and b!5185398 ((_ is Union!14703) (regOne!29918 r!7292))) b!5185986))

(declare-fun b!5185990 () Bool)

(declare-fun e!3230721 () Bool)

(declare-fun tp!1454918 () Bool)

(declare-fun tp!1454921 () Bool)

(assert (=> b!5185990 (= e!3230721 (and tp!1454918 tp!1454921))))

(declare-fun b!5185987 () Bool)

(assert (=> b!5185987 (= e!3230721 tp_is_empty!38659)))

(declare-fun b!5185989 () Bool)

(declare-fun tp!1454917 () Bool)

(assert (=> b!5185989 (= e!3230721 tp!1454917)))

(declare-fun b!5185988 () Bool)

(declare-fun tp!1454920 () Bool)

(declare-fun tp!1454919 () Bool)

(assert (=> b!5185988 (= e!3230721 (and tp!1454920 tp!1454919))))

(assert (=> b!5185398 (= tp!1454818 e!3230721)))

(assert (= (and b!5185398 ((_ is ElementMatch!14703) (regTwo!29918 r!7292))) b!5185987))

(assert (= (and b!5185398 ((_ is Concat!23548) (regTwo!29918 r!7292))) b!5185988))

(assert (= (and b!5185398 ((_ is Star!14703) (regTwo!29918 r!7292))) b!5185989))

(assert (= (and b!5185398 ((_ is Union!14703) (regTwo!29918 r!7292))) b!5185990))

(declare-fun b!5185991 () Bool)

(declare-fun e!3230722 () Bool)

(declare-fun tp!1454922 () Bool)

(declare-fun tp!1454923 () Bool)

(assert (=> b!5185991 (= e!3230722 (and tp!1454922 tp!1454923))))

(assert (=> b!5185403 (= tp!1454815 e!3230722)))

(assert (= (and b!5185403 ((_ is Cons!60284) (exprs!4587 (h!66733 zl!343)))) b!5185991))

(declare-fun b!5185996 () Bool)

(declare-fun e!3230725 () Bool)

(declare-fun tp!1454926 () Bool)

(assert (=> b!5185996 (= e!3230725 (and tp_is_empty!38659 tp!1454926))))

(assert (=> b!5185408 (= tp!1454820 e!3230725)))

(assert (= (and b!5185408 ((_ is Cons!60286) (t!373563 s!2326))) b!5185996))

(declare-fun b!5186000 () Bool)

(declare-fun e!3230726 () Bool)

(declare-fun tp!1454928 () Bool)

(declare-fun tp!1454931 () Bool)

(assert (=> b!5186000 (= e!3230726 (and tp!1454928 tp!1454931))))

(declare-fun b!5185997 () Bool)

(assert (=> b!5185997 (= e!3230726 tp_is_empty!38659)))

(declare-fun b!5185999 () Bool)

(declare-fun tp!1454927 () Bool)

(assert (=> b!5185999 (= e!3230726 tp!1454927)))

(declare-fun b!5185998 () Bool)

(declare-fun tp!1454930 () Bool)

(declare-fun tp!1454929 () Bool)

(assert (=> b!5185998 (= e!3230726 (and tp!1454930 tp!1454929))))

(assert (=> b!5185404 (= tp!1454819 e!3230726)))

(assert (= (and b!5185404 ((_ is ElementMatch!14703) (reg!15032 r!7292))) b!5185997))

(assert (= (and b!5185404 ((_ is Concat!23548) (reg!15032 r!7292))) b!5185998))

(assert (= (and b!5185404 ((_ is Star!14703) (reg!15032 r!7292))) b!5185999))

(assert (= (and b!5185404 ((_ is Union!14703) (reg!15032 r!7292))) b!5186000))

(declare-fun condSetEmpty!32668 () Bool)

(assert (=> setNonEmpty!32662 (= condSetEmpty!32668 (= setRest!32662 ((as const (Array Context!8174 Bool)) false)))))

(declare-fun setRes!32668 () Bool)

(assert (=> setNonEmpty!32662 (= tp!1454817 setRes!32668)))

(declare-fun setIsEmpty!32668 () Bool)

(assert (=> setIsEmpty!32668 setRes!32668))

(declare-fun setNonEmpty!32668 () Bool)

(declare-fun e!3230729 () Bool)

(declare-fun tp!1454937 () Bool)

(declare-fun setElem!32668 () Context!8174)

(assert (=> setNonEmpty!32668 (= setRes!32668 (and tp!1454937 (inv!80004 setElem!32668) e!3230729))))

(declare-fun setRest!32668 () (InoxSet Context!8174))

(assert (=> setNonEmpty!32668 (= setRest!32662 ((_ map or) (store ((as const (Array Context!8174 Bool)) false) setElem!32668 true) setRest!32668))))

(declare-fun b!5186005 () Bool)

(declare-fun tp!1454936 () Bool)

(assert (=> b!5186005 (= e!3230729 tp!1454936)))

(assert (= (and setNonEmpty!32662 condSetEmpty!32668) setIsEmpty!32668))

(assert (= (and setNonEmpty!32662 (not condSetEmpty!32668)) setNonEmpty!32668))

(assert (= setNonEmpty!32668 b!5186005))

(declare-fun m!6244396 () Bool)

(assert (=> setNonEmpty!32668 m!6244396))

(check-sat (not d!1676217) (not b!5185845) (not b!5186000) (not bm!364383) (not b!5185982) (not b!5185984) (not d!1676201) (not b!5185939) (not bm!364395) (not b!5185996) (not b!5185879) (not b!5185911) (not d!1676153) tp_is_empty!38659 (not b!5185726) (not bm!364410) (not b!5185749) (not b!5185950) (not bm!364403) (not b!5185942) (not b!5185956) (not b!5185944) (not b!5185880) (not b!5185721) (not bm!364407) (not b!5185978) (not b!5185937) (not b!5185844) (not b!5185976) (not bm!364404) (not b!5185897) (not b!5185964) (not b!5185850) (not d!1676197) (not b!5185899) (not setNonEmpty!32668) (not bm!364405) (not b!5185989) (not b!5185720) (not b!5186005) (not d!1676223) (not b!5185890) (not b!5185728) (not b!5185943) (not b!5185936) (not b!5185780) (not b!5185847) (not bm!364382) (not b!5185998) (not b!5185977) (not b!5185842) (not d!1676203) (not bm!364393) (not b!5185990) (not d!1676207) (not b!5185887) (not b!5185785) (not bm!364394) (not d!1676221) (not b!5185999) (not b!5185885) (not b!5185636) (not d!1676225) (not b!5185986) (not d!1676205) (not b!5185774) (not bm!364406) (not b!5185849) (not d!1676187) (not d!1676213) (not b!5185963) (not b!5185731) (not b!5185988) (not b!5185775) (not b!5185915) (not b!5185851) (not b!5185891) (not b!5185940) (not bm!364409) (not b!5185782) (not b!5185747) (not b!5185786) (not b!5185638) (not b!5185877) (not b!5185732) (not b!5185991) (not b!5185985) (not d!1676185) (not b!5185980) (not bm!364389) (not b!5185981))
(check-sat)
