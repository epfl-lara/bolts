; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277788 () Bool)

(assert start!277788)

(declare-fun b!2852367 () Bool)

(assert (=> b!2852367 true))

(declare-fun condSetEmpty!25196 () Bool)

(declare-datatypes ((C!17290 0))(
  ( (C!17291 (val!10679 Int)) )
))
(declare-datatypes ((Regex!8554 0))(
  ( (ElementMatch!8554 (c!459817 C!17290)) (Concat!13875 (regOne!17620 Regex!8554) (regTwo!17620 Regex!8554)) (EmptyExpr!8554) (Star!8554 (reg!8883 Regex!8554)) (EmptyLang!8554) (Union!8554 (regOne!17621 Regex!8554) (regTwo!17621 Regex!8554)) )
))
(declare-datatypes ((List!34127 0))(
  ( (Nil!34003) (Cons!34003 (h!39423 Regex!8554) (t!233158 List!34127)) )
))
(declare-datatypes ((Context!5128 0))(
  ( (Context!5129 (exprs!3064 List!34127)) )
))
(declare-fun z!809 () (Set Context!5128))

(assert (=> b!2852367 (= condSetEmpty!25196 (= z!809 (as set.empty (Set Context!5128))))))

(declare-fun setRes!25196 () Bool)

(assert (=> b!2852367 setRes!25196))

(declare-fun setIsEmpty!25196 () Bool)

(assert (=> setIsEmpty!25196 setRes!25196))

(declare-fun setNonEmpty!25196 () Bool)

(assert (=> setNonEmpty!25196 (= setRes!25196 true)))

(declare-fun setElem!25196 () Context!5128)

(declare-fun setRest!25196 () (Set Context!5128))

(assert (=> setNonEmpty!25196 (= z!809 (set.union (set.insert setElem!25196 (as set.empty (Set Context!5128))) setRest!25196))))

(assert (= (and b!2852367 condSetEmpty!25196) setIsEmpty!25196))

(assert (= (and b!2852367 (not condSetEmpty!25196)) setNonEmpty!25196))

(declare-fun b!2852355 () Bool)

(declare-fun e!1807204 () Bool)

(declare-fun tp!916698 () Bool)

(declare-fun tp!916702 () Bool)

(assert (=> b!2852355 (= e!1807204 (and tp!916698 tp!916702))))

(declare-fun setElem!25193 () Context!5128)

(declare-fun setRes!25193 () Bool)

(declare-fun e!1807199 () Bool)

(declare-fun setNonEmpty!25193 () Bool)

(declare-fun tp!916700 () Bool)

(declare-fun inv!46023 (Context!5128) Bool)

(assert (=> setNonEmpty!25193 (= setRes!25193 (and tp!916700 (inv!46023 setElem!25193) e!1807199))))

(declare-fun setRest!25193 () (Set Context!5128))

(assert (=> setNonEmpty!25193 (= z!809 (set.union (set.insert setElem!25193 (as set.empty (Set Context!5128))) setRest!25193))))

(declare-fun b!2852356 () Bool)

(declare-fun e!1807201 () Bool)

(declare-fun tp_is_empty!14845 () Bool)

(declare-fun tp!916704 () Bool)

(assert (=> b!2852356 (= e!1807201 (and tp_is_empty!14845 tp!916704))))

(declare-fun b!2852357 () Bool)

(declare-fun tp!916697 () Bool)

(assert (=> b!2852357 (= e!1807204 tp!916697)))

(declare-fun b!2852358 () Bool)

(declare-fun e!1807198 () Bool)

(declare-fun tp!916701 () Bool)

(assert (=> b!2852358 (= e!1807198 tp!916701)))

(declare-fun b!2852359 () Bool)

(declare-fun e!1807202 () Bool)

(declare-fun e!1807200 () Bool)

(assert (=> b!2852359 (= e!1807202 e!1807200)))

(declare-fun res!1185666 () Bool)

(assert (=> b!2852359 (=> res!1185666 e!1807200)))

(declare-datatypes ((List!34128 0))(
  ( (Nil!34004) (Cons!34004 (h!39424 C!17290) (t!233159 List!34128)) )
))
(declare-fun lt!1013614 () List!34128)

(declare-fun matchZipper!414 ((Set Context!5128) List!34128) Bool)

(assert (=> b!2852359 (= res!1185666 (not (matchZipper!414 z!809 lt!1013614)))))

(declare-fun lambda!104938 () Int)

(declare-fun pickWitness!295 (Int) List!34128)

(assert (=> b!2852359 (= lt!1013614 (pickWitness!295 lambda!104938))))

(declare-fun b!2852360 () Bool)

(declare-fun tp!916699 () Bool)

(declare-fun tp!916705 () Bool)

(assert (=> b!2852360 (= e!1807204 (and tp!916699 tp!916705))))

(declare-fun b!2852361 () Bool)

(declare-fun tp!916703 () Bool)

(assert (=> b!2852361 (= e!1807199 tp!916703)))

(declare-fun b!2852362 () Bool)

(assert (=> b!2852362 (= e!1807204 tp_is_empty!14845)))

(declare-fun b!2852363 () Bool)

(declare-fun res!1185665 () Bool)

(declare-fun e!1807197 () Bool)

(assert (=> b!2852363 (=> (not res!1185665) (not e!1807197))))

(declare-datatypes ((List!34129 0))(
  ( (Nil!34005) (Cons!34005 (h!39425 Context!5128) (t!233160 List!34129)) )
))
(declare-fun zl!222 () List!34129)

(declare-fun toList!1967 ((Set Context!5128)) List!34129)

(assert (=> b!2852363 (= res!1185665 (= (toList!1967 z!809) zl!222))))

(declare-fun b!2852364 () Bool)

(declare-fun prefix!862 () List!34128)

(declare-fun isPrefix!2656 (List!34128 List!34128) Bool)

(assert (=> b!2852364 (= e!1807200 (isPrefix!2656 prefix!862 lt!1013614))))

(declare-fun r!5723 () Regex!8554)

(declare-fun matchR!3677 (Regex!8554 List!34128) Bool)

(assert (=> b!2852364 (matchR!3677 r!5723 lt!1013614)))

(declare-datatypes ((Unit!47675 0))(
  ( (Unit!47676) )
))
(declare-fun lt!1013612 () Unit!47675)

(declare-fun theoremZipperRegexEquiv!100 ((Set Context!5128) List!34129 Regex!8554 List!34128) Unit!47675)

(assert (=> b!2852364 (= lt!1013612 (theoremZipperRegexEquiv!100 z!809 zl!222 r!5723 lt!1013614))))

(declare-fun b!2852365 () Bool)

(declare-fun res!1185669 () Bool)

(assert (=> b!2852365 (=> (not res!1185669) (not e!1807197))))

(declare-fun prefixMatchZipper!286 ((Set Context!5128) List!34128) Bool)

(assert (=> b!2852365 (= res!1185669 (prefixMatchZipper!286 z!809 prefix!862))))

(declare-fun b!2852366 () Bool)

(declare-fun e!1807203 () Bool)

(declare-fun tp!916706 () Bool)

(assert (=> b!2852366 (= e!1807203 (and (inv!46023 (h!39425 zl!222)) e!1807198 tp!916706))))

(assert (=> b!2852367 (= e!1807197 (not e!1807202))))

(declare-fun res!1185667 () Bool)

(assert (=> b!2852367 (=> res!1185667 e!1807202)))

(declare-fun Exists!1278 (Int) Bool)

(assert (=> b!2852367 (= res!1185667 (not (Exists!1278 lambda!104938)))))

(assert (=> b!2852367 (Exists!1278 lambda!104938)))

(declare-fun lt!1013613 () Unit!47675)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!326 ((Set Context!5128) List!34128) Unit!47675)

(assert (=> b!2852367 (= lt!1013613 (lemmaPrefixMatchThenExistsStringThatMatches!326 z!809 prefix!862))))

(declare-fun setIsEmpty!25193 () Bool)

(assert (=> setIsEmpty!25193 setRes!25193))

(declare-fun res!1185663 () Bool)

(assert (=> start!277788 (=> (not res!1185663) (not e!1807197))))

(declare-fun validRegex!3424 (Regex!8554) Bool)

(assert (=> start!277788 (= res!1185663 (validRegex!3424 r!5723))))

(assert (=> start!277788 e!1807197))

(assert (=> start!277788 e!1807204))

(declare-fun condSetEmpty!25193 () Bool)

(assert (=> start!277788 (= condSetEmpty!25193 (= z!809 (as set.empty (Set Context!5128))))))

(assert (=> start!277788 setRes!25193))

(assert (=> start!277788 e!1807203))

(assert (=> start!277788 e!1807201))

(declare-fun b!2852368 () Bool)

(declare-fun res!1185668 () Bool)

(assert (=> b!2852368 (=> (not res!1185668) (not e!1807197))))

(declare-fun unfocusZipper!226 (List!34129) Regex!8554)

(assert (=> b!2852368 (= res!1185668 (= r!5723 (unfocusZipper!226 zl!222)))))

(declare-fun b!2852369 () Bool)

(declare-fun res!1185664 () Bool)

(assert (=> b!2852369 (=> (not res!1185664) (not e!1807197))))

(declare-fun prefixMatch!862 (Regex!8554 List!34128) Bool)

(assert (=> b!2852369 (= res!1185664 (not (prefixMatch!862 r!5723 prefix!862)))))

(assert (= (and start!277788 res!1185663) b!2852363))

(assert (= (and b!2852363 res!1185665) b!2852368))

(assert (= (and b!2852368 res!1185668) b!2852369))

(assert (= (and b!2852369 res!1185664) b!2852365))

(assert (= (and b!2852365 res!1185669) b!2852367))

(assert (= (and b!2852367 (not res!1185667)) b!2852359))

(assert (= (and b!2852359 (not res!1185666)) b!2852364))

(assert (= (and start!277788 (is-ElementMatch!8554 r!5723)) b!2852362))

(assert (= (and start!277788 (is-Concat!13875 r!5723)) b!2852355))

(assert (= (and start!277788 (is-Star!8554 r!5723)) b!2852357))

(assert (= (and start!277788 (is-Union!8554 r!5723)) b!2852360))

(assert (= (and start!277788 condSetEmpty!25193) setIsEmpty!25193))

(assert (= (and start!277788 (not condSetEmpty!25193)) setNonEmpty!25193))

(assert (= setNonEmpty!25193 b!2852361))

(assert (= b!2852366 b!2852358))

(assert (= (and start!277788 (is-Cons!34005 zl!222)) b!2852366))

(assert (= (and start!277788 (is-Cons!34004 prefix!862)) b!2852356))

(declare-fun m!3277485 () Bool)

(assert (=> b!2852364 m!3277485))

(declare-fun m!3277487 () Bool)

(assert (=> b!2852364 m!3277487))

(declare-fun m!3277489 () Bool)

(assert (=> b!2852364 m!3277489))

(declare-fun m!3277491 () Bool)

(assert (=> b!2852366 m!3277491))

(declare-fun m!3277493 () Bool)

(assert (=> b!2852365 m!3277493))

(declare-fun m!3277495 () Bool)

(assert (=> b!2852363 m!3277495))

(declare-fun m!3277497 () Bool)

(assert (=> setNonEmpty!25193 m!3277497))

(declare-fun m!3277499 () Bool)

(assert (=> b!2852368 m!3277499))

(declare-fun m!3277501 () Bool)

(assert (=> b!2852369 m!3277501))

(declare-fun m!3277503 () Bool)

(assert (=> b!2852359 m!3277503))

(declare-fun m!3277505 () Bool)

(assert (=> b!2852359 m!3277505))

(declare-fun m!3277507 () Bool)

(assert (=> start!277788 m!3277507))

(declare-fun m!3277509 () Bool)

(assert (=> b!2852367 m!3277509))

(assert (=> b!2852367 m!3277509))

(declare-fun m!3277511 () Bool)

(assert (=> b!2852367 m!3277511))

(push 1)

(assert (not setNonEmpty!25193))

(assert (not setNonEmpty!25196))

(assert (not b!2852366))

(assert (not b!2852365))

(assert (not start!277788))

(assert (not b!2852368))

(assert (not b!2852367))

(assert (not b!2852363))

(assert (not b!2852369))

(assert (not b!2852359))

(assert (not b!2852356))

(assert tp_is_empty!14845)

(assert (not b!2852355))

(assert (not b!2852357))

(assert (not b!2852364))

(assert (not b!2852358))

(assert (not b!2852361))

(assert (not b!2852360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!826125 () Bool)

(declare-fun choose!16778 (Int) Bool)

(assert (=> d!826125 (= (Exists!1278 lambda!104938) (choose!16778 lambda!104938))))

(declare-fun bs!520179 () Bool)

(assert (= bs!520179 d!826125))

(declare-fun m!3277541 () Bool)

(assert (=> bs!520179 m!3277541))

(assert (=> b!2852367 d!826125))

(declare-fun bs!520180 () Bool)

(declare-fun d!826127 () Bool)

(assert (= bs!520180 (and d!826127 b!2852367)))

(declare-fun lambda!104948 () Int)

(assert (=> bs!520180 (= lambda!104948 lambda!104938)))

(assert (=> d!826127 true))

(declare-fun condSetEmpty!25203 () Bool)

(assert (=> d!826127 (= condSetEmpty!25203 (= z!809 (as set.empty (Set Context!5128))))))

(declare-fun setRes!25203 () Bool)

(assert (=> d!826127 setRes!25203))

(declare-fun setIsEmpty!25203 () Bool)

(assert (=> setIsEmpty!25203 setRes!25203))

(declare-fun setNonEmpty!25203 () Bool)

(assert (=> setNonEmpty!25203 (= setRes!25203 true)))

(declare-fun setElem!25203 () Context!5128)

(declare-fun setRest!25203 () (Set Context!5128))

(assert (=> setNonEmpty!25203 (= z!809 (set.union (set.insert setElem!25203 (as set.empty (Set Context!5128))) setRest!25203))))

(assert (= (and d!826127 condSetEmpty!25203) setIsEmpty!25203))

(assert (= (and d!826127 (not condSetEmpty!25203)) setNonEmpty!25203))

(assert (=> d!826127 (Exists!1278 lambda!104948)))

(declare-fun lt!1013629 () Unit!47675)

(declare-fun choose!16779 ((Set Context!5128) List!34128) Unit!47675)

(assert (=> d!826127 (= lt!1013629 (choose!16779 z!809 prefix!862))))

(assert (=> d!826127 (prefixMatchZipper!286 z!809 prefix!862)))

(assert (=> d!826127 (= (lemmaPrefixMatchThenExistsStringThatMatches!326 z!809 prefix!862) lt!1013629)))

(declare-fun m!3277549 () Bool)

(assert (=> d!826127 m!3277549))

(declare-fun m!3277551 () Bool)

(assert (=> d!826127 m!3277551))

(assert (=> d!826127 m!3277493))

(assert (=> b!2852367 d!826127))

(declare-fun b!2852456 () Bool)

(declare-fun e!1807260 () Bool)

(declare-fun call!183729 () Bool)

(assert (=> b!2852456 (= e!1807260 call!183729)))

(declare-fun c!459826 () Bool)

(declare-fun bm!183722 () Bool)

(declare-fun c!459825 () Bool)

(assert (=> bm!183722 (= call!183729 (validRegex!3424 (ite c!459826 (reg!8883 r!5723) (ite c!459825 (regTwo!17621 r!5723) (regTwo!17620 r!5723)))))))

(declare-fun b!2852457 () Bool)

(declare-fun e!1807256 () Bool)

(declare-fun e!1807259 () Bool)

(assert (=> b!2852457 (= e!1807256 e!1807259)))

(assert (=> b!2852457 (= c!459825 (is-Union!8554 r!5723))))

(declare-fun b!2852458 () Bool)

(declare-fun e!1807257 () Bool)

(assert (=> b!2852458 (= e!1807257 e!1807256)))

(assert (=> b!2852458 (= c!459826 (is-Star!8554 r!5723))))

(declare-fun b!2852459 () Bool)

(declare-fun e!1807262 () Bool)

(declare-fun call!183728 () Bool)

(assert (=> b!2852459 (= e!1807262 call!183728)))

(declare-fun b!2852460 () Bool)

(declare-fun res!1185714 () Bool)

(declare-fun e!1807261 () Bool)

(assert (=> b!2852460 (=> res!1185714 e!1807261)))

(assert (=> b!2852460 (= res!1185714 (not (is-Concat!13875 r!5723)))))

(assert (=> b!2852460 (= e!1807259 e!1807261)))

(declare-fun bm!183724 () Bool)

(declare-fun call!183727 () Bool)

(assert (=> bm!183724 (= call!183727 (validRegex!3424 (ite c!459825 (regOne!17621 r!5723) (regOne!17620 r!5723))))))

(declare-fun b!2852461 () Bool)

(declare-fun e!1807258 () Bool)

(assert (=> b!2852461 (= e!1807258 call!183728)))

(declare-fun b!2852462 () Bool)

(declare-fun res!1185716 () Bool)

(assert (=> b!2852462 (=> (not res!1185716) (not e!1807262))))

(assert (=> b!2852462 (= res!1185716 call!183727)))

(assert (=> b!2852462 (= e!1807259 e!1807262)))

(declare-fun b!2852463 () Bool)

(assert (=> b!2852463 (= e!1807261 e!1807258)))

(declare-fun res!1185713 () Bool)

(assert (=> b!2852463 (=> (not res!1185713) (not e!1807258))))

(assert (=> b!2852463 (= res!1185713 call!183727)))

(declare-fun b!2852464 () Bool)

(assert (=> b!2852464 (= e!1807256 e!1807260)))

(declare-fun res!1185712 () Bool)

(declare-fun nullable!2638 (Regex!8554) Bool)

(assert (=> b!2852464 (= res!1185712 (not (nullable!2638 (reg!8883 r!5723))))))

(assert (=> b!2852464 (=> (not res!1185712) (not e!1807260))))

(declare-fun bm!183723 () Bool)

(assert (=> bm!183723 (= call!183728 call!183729)))

(declare-fun d!826133 () Bool)

(declare-fun res!1185715 () Bool)

(assert (=> d!826133 (=> res!1185715 e!1807257)))

(assert (=> d!826133 (= res!1185715 (is-ElementMatch!8554 r!5723))))

(assert (=> d!826133 (= (validRegex!3424 r!5723) e!1807257)))

(assert (= (and d!826133 (not res!1185715)) b!2852458))

(assert (= (and b!2852458 c!459826) b!2852464))

(assert (= (and b!2852458 (not c!459826)) b!2852457))

(assert (= (and b!2852464 res!1185712) b!2852456))

(assert (= (and b!2852457 c!459825) b!2852462))

(assert (= (and b!2852457 (not c!459825)) b!2852460))

(assert (= (and b!2852462 res!1185716) b!2852459))

(assert (= (and b!2852460 (not res!1185714)) b!2852463))

(assert (= (and b!2852463 res!1185713) b!2852461))

(assert (= (or b!2852462 b!2852463) bm!183724))

(assert (= (or b!2852459 b!2852461) bm!183723))

(assert (= (or b!2852456 bm!183723) bm!183722))

(declare-fun m!3277553 () Bool)

(assert (=> bm!183722 m!3277553))

(declare-fun m!3277555 () Bool)

(assert (=> bm!183724 m!3277555))

(declare-fun m!3277557 () Bool)

(assert (=> b!2852464 m!3277557))

(assert (=> start!277788 d!826133))

(declare-fun d!826135 () Bool)

(declare-fun e!1807266 () Bool)

(assert (=> d!826135 e!1807266))

(declare-fun res!1185719 () Bool)

(assert (=> d!826135 (=> (not res!1185719) (not e!1807266))))

(declare-fun lt!1013632 () List!34129)

(declare-fun noDuplicate!562 (List!34129) Bool)

(assert (=> d!826135 (= res!1185719 (noDuplicate!562 lt!1013632))))

(declare-fun choose!16780 ((Set Context!5128)) List!34129)

(assert (=> d!826135 (= lt!1013632 (choose!16780 z!809))))

(assert (=> d!826135 (= (toList!1967 z!809) lt!1013632)))

(declare-fun b!2852469 () Bool)

(declare-fun content!4662 (List!34129) (Set Context!5128))

(assert (=> b!2852469 (= e!1807266 (= (content!4662 lt!1013632) z!809))))

(assert (= (and d!826135 res!1185719) b!2852469))

(declare-fun m!3277571 () Bool)

(assert (=> d!826135 m!3277571))

(declare-fun m!3277573 () Bool)

(assert (=> d!826135 m!3277573))

(declare-fun m!3277575 () Bool)

(assert (=> b!2852469 m!3277575))

(assert (=> b!2852363 d!826135))

(declare-fun d!826139 () Bool)

(declare-fun lt!1013635 () Regex!8554)

(assert (=> d!826139 (validRegex!3424 lt!1013635)))

(declare-fun generalisedUnion!551 (List!34127) Regex!8554)

(declare-fun unfocusZipperList!64 (List!34129) List!34127)

(assert (=> d!826139 (= lt!1013635 (generalisedUnion!551 (unfocusZipperList!64 zl!222)))))

(assert (=> d!826139 (= (unfocusZipper!226 zl!222) lt!1013635)))

(declare-fun bs!520181 () Bool)

(assert (= bs!520181 d!826139))

(declare-fun m!3277577 () Bool)

(assert (=> bs!520181 m!3277577))

(declare-fun m!3277579 () Bool)

(assert (=> bs!520181 m!3277579))

(assert (=> bs!520181 m!3277579))

(declare-fun m!3277581 () Bool)

(assert (=> bs!520181 m!3277581))

(assert (=> b!2852368 d!826139))

(declare-fun d!826141 () Bool)

(declare-fun c!459830 () Bool)

(declare-fun isEmpty!18588 (List!34128) Bool)

(assert (=> d!826141 (= c!459830 (isEmpty!18588 prefix!862))))

(declare-fun e!1807269 () Bool)

(assert (=> d!826141 (= (prefixMatch!862 r!5723 prefix!862) e!1807269)))

(declare-fun b!2852474 () Bool)

(declare-fun lostCause!736 (Regex!8554) Bool)

(assert (=> b!2852474 (= e!1807269 (not (lostCause!736 r!5723)))))

(declare-fun b!2852475 () Bool)

(declare-fun derivativeStep!2261 (Regex!8554 C!17290) Regex!8554)

(declare-fun head!6265 (List!34128) C!17290)

(declare-fun tail!4490 (List!34128) List!34128)

(assert (=> b!2852475 (= e!1807269 (prefixMatch!862 (derivativeStep!2261 r!5723 (head!6265 prefix!862)) (tail!4490 prefix!862)))))

(assert (= (and d!826141 c!459830) b!2852474))

(assert (= (and d!826141 (not c!459830)) b!2852475))

(declare-fun m!3277585 () Bool)

(assert (=> d!826141 m!3277585))

(declare-fun m!3277587 () Bool)

(assert (=> b!2852474 m!3277587))

(declare-fun m!3277589 () Bool)

(assert (=> b!2852475 m!3277589))

(assert (=> b!2852475 m!3277589))

(declare-fun m!3277591 () Bool)

(assert (=> b!2852475 m!3277591))

(declare-fun m!3277593 () Bool)

(assert (=> b!2852475 m!3277593))

(assert (=> b!2852475 m!3277591))

(assert (=> b!2852475 m!3277593))

(declare-fun m!3277595 () Bool)

(assert (=> b!2852475 m!3277595))

(assert (=> b!2852369 d!826141))

(declare-fun d!826145 () Bool)

(declare-fun c!459833 () Bool)

(assert (=> d!826145 (= c!459833 (isEmpty!18588 lt!1013614))))

(declare-fun e!1807272 () Bool)

(assert (=> d!826145 (= (matchZipper!414 z!809 lt!1013614) e!1807272)))

(declare-fun b!2852480 () Bool)

(declare-fun nullableZipper!681 ((Set Context!5128)) Bool)

(assert (=> b!2852480 (= e!1807272 (nullableZipper!681 z!809))))

(declare-fun b!2852481 () Bool)

(declare-fun derivationStepZipper!418 ((Set Context!5128) C!17290) (Set Context!5128))

(assert (=> b!2852481 (= e!1807272 (matchZipper!414 (derivationStepZipper!418 z!809 (head!6265 lt!1013614)) (tail!4490 lt!1013614)))))

(assert (= (and d!826145 c!459833) b!2852480))

(assert (= (and d!826145 (not c!459833)) b!2852481))

(declare-fun m!3277597 () Bool)

(assert (=> d!826145 m!3277597))

(declare-fun m!3277599 () Bool)

(assert (=> b!2852480 m!3277599))

(declare-fun m!3277601 () Bool)

(assert (=> b!2852481 m!3277601))

(assert (=> b!2852481 m!3277601))

(declare-fun m!3277603 () Bool)

(assert (=> b!2852481 m!3277603))

(declare-fun m!3277605 () Bool)

(assert (=> b!2852481 m!3277605))

(assert (=> b!2852481 m!3277603))

(assert (=> b!2852481 m!3277605))

(declare-fun m!3277607 () Bool)

(assert (=> b!2852481 m!3277607))

(assert (=> b!2852359 d!826145))

(declare-fun d!826147 () Bool)

(declare-fun lt!1013638 () List!34128)

(declare-fun dynLambda!14227 (Int List!34128) Bool)

(assert (=> d!826147 (dynLambda!14227 lambda!104938 lt!1013638)))

(declare-fun choose!16781 (Int) List!34128)

(assert (=> d!826147 (= lt!1013638 (choose!16781 lambda!104938))))

(assert (=> d!826147 (Exists!1278 lambda!104938)))

(assert (=> d!826147 (= (pickWitness!295 lambda!104938) lt!1013638)))

(declare-fun b_lambda!85667 () Bool)

(assert (=> (not b_lambda!85667) (not d!826147)))

(declare-fun bs!520183 () Bool)

(assert (= bs!520183 d!826147))

(declare-fun m!3277609 () Bool)

(assert (=> bs!520183 m!3277609))

(declare-fun m!3277611 () Bool)

(assert (=> bs!520183 m!3277611))

(assert (=> bs!520183 m!3277509))

(assert (=> b!2852359 d!826147))

(declare-fun b!2852495 () Bool)

(declare-fun res!1185729 () Bool)

(declare-fun e!1807281 () Bool)

(assert (=> b!2852495 (=> (not res!1185729) (not e!1807281))))

(assert (=> b!2852495 (= res!1185729 (= (head!6265 prefix!862) (head!6265 lt!1013614)))))

(declare-fun d!826149 () Bool)

(declare-fun e!1807282 () Bool)

(assert (=> d!826149 e!1807282))

(declare-fun res!1185731 () Bool)

(assert (=> d!826149 (=> res!1185731 e!1807282)))

(declare-fun lt!1013641 () Bool)

(assert (=> d!826149 (= res!1185731 (not lt!1013641))))

(declare-fun e!1807283 () Bool)

(assert (=> d!826149 (= lt!1013641 e!1807283)))

(declare-fun res!1185730 () Bool)

(assert (=> d!826149 (=> res!1185730 e!1807283)))

(assert (=> d!826149 (= res!1185730 (is-Nil!34004 prefix!862))))

(assert (=> d!826149 (= (isPrefix!2656 prefix!862 lt!1013614) lt!1013641)))

(declare-fun b!2852497 () Bool)

(declare-fun size!26268 (List!34128) Int)

(assert (=> b!2852497 (= e!1807282 (>= (size!26268 lt!1013614) (size!26268 prefix!862)))))

(declare-fun b!2852494 () Bool)

(assert (=> b!2852494 (= e!1807283 e!1807281)))

(declare-fun res!1185728 () Bool)

(assert (=> b!2852494 (=> (not res!1185728) (not e!1807281))))

(assert (=> b!2852494 (= res!1185728 (not (is-Nil!34004 lt!1013614)))))

(declare-fun b!2852496 () Bool)

(assert (=> b!2852496 (= e!1807281 (isPrefix!2656 (tail!4490 prefix!862) (tail!4490 lt!1013614)))))

(assert (= (and d!826149 (not res!1185730)) b!2852494))

(assert (= (and b!2852494 res!1185728) b!2852495))

(assert (= (and b!2852495 res!1185729) b!2852496))

(assert (= (and d!826149 (not res!1185731)) b!2852497))

(assert (=> b!2852495 m!3277589))

(assert (=> b!2852495 m!3277601))

(declare-fun m!3277613 () Bool)

(assert (=> b!2852497 m!3277613))

(declare-fun m!3277615 () Bool)

(assert (=> b!2852497 m!3277615))

(assert (=> b!2852496 m!3277593))

(assert (=> b!2852496 m!3277605))

(assert (=> b!2852496 m!3277593))

(assert (=> b!2852496 m!3277605))

(declare-fun m!3277617 () Bool)

(assert (=> b!2852496 m!3277617))

(assert (=> b!2852364 d!826149))

(declare-fun b!2852532 () Bool)

(declare-fun e!1807303 () Bool)

(declare-fun e!1807307 () Bool)

(assert (=> b!2852532 (= e!1807303 e!1807307)))

(declare-fun res!1185755 () Bool)

(assert (=> b!2852532 (=> (not res!1185755) (not e!1807307))))

(declare-fun lt!1013644 () Bool)

(assert (=> b!2852532 (= res!1185755 (not lt!1013644))))

(declare-fun b!2852533 () Bool)

(declare-fun e!1807306 () Bool)

(declare-fun call!183732 () Bool)

(assert (=> b!2852533 (= e!1807306 (= lt!1013644 call!183732))))

(declare-fun b!2852534 () Bool)

(declare-fun res!1185750 () Bool)

(declare-fun e!1807302 () Bool)

(assert (=> b!2852534 (=> res!1185750 e!1807302)))

(assert (=> b!2852534 (= res!1185750 (not (isEmpty!18588 (tail!4490 lt!1013614))))))

(declare-fun b!2852535 () Bool)

(declare-fun res!1185753 () Bool)

(declare-fun e!1807304 () Bool)

(assert (=> b!2852535 (=> (not res!1185753) (not e!1807304))))

(assert (=> b!2852535 (= res!1185753 (isEmpty!18588 (tail!4490 lt!1013614)))))

(declare-fun b!2852536 () Bool)

(declare-fun e!1807301 () Bool)

(assert (=> b!2852536 (= e!1807301 (not lt!1013644))))

(declare-fun d!826151 () Bool)

(assert (=> d!826151 e!1807306))

(declare-fun c!459845 () Bool)

(assert (=> d!826151 (= c!459845 (is-EmptyExpr!8554 r!5723))))

(declare-fun e!1807305 () Bool)

(assert (=> d!826151 (= lt!1013644 e!1807305)))

(declare-fun c!459847 () Bool)

(assert (=> d!826151 (= c!459847 (isEmpty!18588 lt!1013614))))

(assert (=> d!826151 (validRegex!3424 r!5723)))

(assert (=> d!826151 (= (matchR!3677 r!5723 lt!1013614) lt!1013644)))

(declare-fun b!2852537 () Bool)

(declare-fun res!1185749 () Bool)

(assert (=> b!2852537 (=> res!1185749 e!1807303)))

(assert (=> b!2852537 (= res!1185749 (not (is-ElementMatch!8554 r!5723)))))

(assert (=> b!2852537 (= e!1807301 e!1807303)))

(declare-fun b!2852538 () Bool)

(assert (=> b!2852538 (= e!1807305 (matchR!3677 (derivativeStep!2261 r!5723 (head!6265 lt!1013614)) (tail!4490 lt!1013614)))))

(declare-fun b!2852539 () Bool)

(assert (=> b!2852539 (= e!1807306 e!1807301)))

(declare-fun c!459846 () Bool)

(assert (=> b!2852539 (= c!459846 (is-EmptyLang!8554 r!5723))))

(declare-fun b!2852540 () Bool)

(assert (=> b!2852540 (= e!1807305 (nullable!2638 r!5723))))

(declare-fun b!2852541 () Bool)

(declare-fun res!1185754 () Bool)

(assert (=> b!2852541 (=> (not res!1185754) (not e!1807304))))

(assert (=> b!2852541 (= res!1185754 (not call!183732))))

(declare-fun b!2852542 () Bool)

(assert (=> b!2852542 (= e!1807302 (not (= (head!6265 lt!1013614) (c!459817 r!5723))))))

(declare-fun b!2852543 () Bool)

(assert (=> b!2852543 (= e!1807307 e!1807302)))

(declare-fun res!1185748 () Bool)

(assert (=> b!2852543 (=> res!1185748 e!1807302)))

(assert (=> b!2852543 (= res!1185748 call!183732)))

(declare-fun b!2852544 () Bool)

(declare-fun res!1185752 () Bool)

(assert (=> b!2852544 (=> res!1185752 e!1807303)))

(assert (=> b!2852544 (= res!1185752 e!1807304)))

(declare-fun res!1185751 () Bool)

(assert (=> b!2852544 (=> (not res!1185751) (not e!1807304))))

(assert (=> b!2852544 (= res!1185751 lt!1013644)))

(declare-fun b!2852545 () Bool)

(assert (=> b!2852545 (= e!1807304 (= (head!6265 lt!1013614) (c!459817 r!5723)))))

(declare-fun bm!183727 () Bool)

(assert (=> bm!183727 (= call!183732 (isEmpty!18588 lt!1013614))))

(assert (= (and d!826151 c!459847) b!2852540))

(assert (= (and d!826151 (not c!459847)) b!2852538))

(assert (= (and d!826151 c!459845) b!2852533))

(assert (= (and d!826151 (not c!459845)) b!2852539))

(assert (= (and b!2852539 c!459846) b!2852536))

(assert (= (and b!2852539 (not c!459846)) b!2852537))

(assert (= (and b!2852537 (not res!1185749)) b!2852544))

(assert (= (and b!2852544 res!1185751) b!2852541))

(assert (= (and b!2852541 res!1185754) b!2852535))

(assert (= (and b!2852535 res!1185753) b!2852545))

(assert (= (and b!2852544 (not res!1185752)) b!2852532))

(assert (= (and b!2852532 res!1185755) b!2852543))

(assert (= (and b!2852543 (not res!1185748)) b!2852534))

(assert (= (and b!2852534 (not res!1185750)) b!2852542))

(assert (= (or b!2852533 b!2852541 b!2852543) bm!183727))

(assert (=> b!2852542 m!3277601))

(declare-fun m!3277627 () Bool)

(assert (=> b!2852540 m!3277627))

(assert (=> b!2852535 m!3277605))

(assert (=> b!2852535 m!3277605))

(declare-fun m!3277629 () Bool)

(assert (=> b!2852535 m!3277629))

(assert (=> bm!183727 m!3277597))

(assert (=> b!2852534 m!3277605))

(assert (=> b!2852534 m!3277605))

(assert (=> b!2852534 m!3277629))

(assert (=> b!2852545 m!3277601))

(assert (=> d!826151 m!3277597))

(assert (=> d!826151 m!3277507))

(assert (=> b!2852538 m!3277601))

(assert (=> b!2852538 m!3277601))

(declare-fun m!3277631 () Bool)

(assert (=> b!2852538 m!3277631))

(assert (=> b!2852538 m!3277605))

(assert (=> b!2852538 m!3277631))

(assert (=> b!2852538 m!3277605))

(declare-fun m!3277633 () Bool)

(assert (=> b!2852538 m!3277633))

(assert (=> b!2852364 d!826151))

(declare-fun d!826157 () Bool)

(assert (=> d!826157 (= (matchR!3677 r!5723 lt!1013614) (matchZipper!414 z!809 lt!1013614))))

(declare-fun lt!1013649 () Unit!47675)

(declare-fun choose!16782 ((Set Context!5128) List!34129 Regex!8554 List!34128) Unit!47675)

(assert (=> d!826157 (= lt!1013649 (choose!16782 z!809 zl!222 r!5723 lt!1013614))))

(assert (=> d!826157 (validRegex!3424 r!5723)))

(assert (=> d!826157 (= (theoremZipperRegexEquiv!100 z!809 zl!222 r!5723 lt!1013614) lt!1013649)))

(declare-fun bs!520186 () Bool)

(assert (= bs!520186 d!826157))

(assert (=> bs!520186 m!3277487))

(assert (=> bs!520186 m!3277503))

(declare-fun m!3277647 () Bool)

(assert (=> bs!520186 m!3277647))

(assert (=> bs!520186 m!3277507))

(assert (=> b!2852364 d!826157))

(declare-fun d!826161 () Bool)

(declare-fun c!459851 () Bool)

(assert (=> d!826161 (= c!459851 (isEmpty!18588 prefix!862))))

(declare-fun e!1807311 () Bool)

(assert (=> d!826161 (= (prefixMatchZipper!286 z!809 prefix!862) e!1807311)))

(declare-fun b!2852552 () Bool)

(declare-fun lostCauseZipper!534 ((Set Context!5128)) Bool)

(assert (=> b!2852552 (= e!1807311 (not (lostCauseZipper!534 z!809)))))

(declare-fun b!2852553 () Bool)

(assert (=> b!2852553 (= e!1807311 (prefixMatchZipper!286 (derivationStepZipper!418 z!809 (head!6265 prefix!862)) (tail!4490 prefix!862)))))

(assert (= (and d!826161 c!459851) b!2852552))

(assert (= (and d!826161 (not c!459851)) b!2852553))

(assert (=> d!826161 m!3277585))

(declare-fun m!3277653 () Bool)

(assert (=> b!2852552 m!3277653))

(assert (=> b!2852553 m!3277589))

(assert (=> b!2852553 m!3277589))

(declare-fun m!3277655 () Bool)

(assert (=> b!2852553 m!3277655))

(assert (=> b!2852553 m!3277593))

(assert (=> b!2852553 m!3277655))

(assert (=> b!2852553 m!3277593))

(declare-fun m!3277657 () Bool)

(assert (=> b!2852553 m!3277657))

(assert (=> b!2852365 d!826161))

(declare-fun d!826165 () Bool)

(declare-fun lambda!104955 () Int)

(declare-fun forall!6959 (List!34127 Int) Bool)

(assert (=> d!826165 (= (inv!46023 setElem!25193) (forall!6959 (exprs!3064 setElem!25193) lambda!104955))))

(declare-fun bs!520188 () Bool)

(assert (= bs!520188 d!826165))

(declare-fun m!3277659 () Bool)

(assert (=> bs!520188 m!3277659))

(assert (=> setNonEmpty!25193 d!826165))

(declare-fun bs!520189 () Bool)

(declare-fun d!826167 () Bool)

(assert (= bs!520189 (and d!826167 d!826165)))

(declare-fun lambda!104956 () Int)

(assert (=> bs!520189 (= lambda!104956 lambda!104955)))

(assert (=> d!826167 (= (inv!46023 (h!39425 zl!222)) (forall!6959 (exprs!3064 (h!39425 zl!222)) lambda!104956))))

(declare-fun bs!520190 () Bool)

(assert (= bs!520190 d!826167))

(declare-fun m!3277661 () Bool)

(assert (=> bs!520190 m!3277661))

(assert (=> b!2852366 d!826167))

(declare-fun condSetEmpty!25204 () Bool)

(assert (=> setNonEmpty!25196 (= condSetEmpty!25204 (= setRest!25196 (as set.empty (Set Context!5128))))))

(declare-fun setRes!25204 () Bool)

(assert (=> setNonEmpty!25196 setRes!25204))

(declare-fun setIsEmpty!25204 () Bool)

(assert (=> setIsEmpty!25204 setRes!25204))

(declare-fun setNonEmpty!25204 () Bool)

(assert (=> setNonEmpty!25204 (= setRes!25204 true)))

(declare-fun setElem!25204 () Context!5128)

(declare-fun setRest!25204 () (Set Context!5128))

(assert (=> setNonEmpty!25204 (= setRest!25196 (set.union (set.insert setElem!25204 (as set.empty (Set Context!5128))) setRest!25204))))

(assert (= (and setNonEmpty!25196 condSetEmpty!25204) setIsEmpty!25204))

(assert (= (and setNonEmpty!25196 (not condSetEmpty!25204)) setNonEmpty!25204))

(declare-fun b!2852566 () Bool)

(declare-fun e!1807320 () Bool)

(declare-fun tp!916739 () Bool)

(assert (=> b!2852566 (= e!1807320 (and tp_is_empty!14845 tp!916739))))

(assert (=> b!2852356 (= tp!916704 e!1807320)))

(assert (= (and b!2852356 (is-Cons!34004 (t!233159 prefix!862))) b!2852566))

(declare-fun b!2852579 () Bool)

(declare-fun e!1807323 () Bool)

(declare-fun tp!916754 () Bool)

(assert (=> b!2852579 (= e!1807323 tp!916754)))

(declare-fun b!2852580 () Bool)

(declare-fun tp!916750 () Bool)

(declare-fun tp!916752 () Bool)

(assert (=> b!2852580 (= e!1807323 (and tp!916750 tp!916752))))

(assert (=> b!2852357 (= tp!916697 e!1807323)))

(declare-fun b!2852577 () Bool)

(assert (=> b!2852577 (= e!1807323 tp_is_empty!14845)))

(declare-fun b!2852578 () Bool)

(declare-fun tp!916751 () Bool)

(declare-fun tp!916753 () Bool)

(assert (=> b!2852578 (= e!1807323 (and tp!916751 tp!916753))))

(assert (= (and b!2852357 (is-ElementMatch!8554 (reg!8883 r!5723))) b!2852577))

(assert (= (and b!2852357 (is-Concat!13875 (reg!8883 r!5723))) b!2852578))

(assert (= (and b!2852357 (is-Star!8554 (reg!8883 r!5723))) b!2852579))

(assert (= (and b!2852357 (is-Union!8554 (reg!8883 r!5723))) b!2852580))

(declare-fun b!2852583 () Bool)

(declare-fun e!1807324 () Bool)

(declare-fun tp!916759 () Bool)

(assert (=> b!2852583 (= e!1807324 tp!916759)))

(declare-fun b!2852584 () Bool)

(declare-fun tp!916755 () Bool)

(declare-fun tp!916757 () Bool)

(assert (=> b!2852584 (= e!1807324 (and tp!916755 tp!916757))))

(assert (=> b!2852355 (= tp!916698 e!1807324)))

(declare-fun b!2852581 () Bool)

(assert (=> b!2852581 (= e!1807324 tp_is_empty!14845)))

(declare-fun b!2852582 () Bool)

(declare-fun tp!916756 () Bool)

(declare-fun tp!916758 () Bool)

(assert (=> b!2852582 (= e!1807324 (and tp!916756 tp!916758))))

(assert (= (and b!2852355 (is-ElementMatch!8554 (regOne!17620 r!5723))) b!2852581))

(assert (= (and b!2852355 (is-Concat!13875 (regOne!17620 r!5723))) b!2852582))

(assert (= (and b!2852355 (is-Star!8554 (regOne!17620 r!5723))) b!2852583))

(assert (= (and b!2852355 (is-Union!8554 (regOne!17620 r!5723))) b!2852584))

(declare-fun b!2852587 () Bool)

(declare-fun e!1807325 () Bool)

(declare-fun tp!916764 () Bool)

(assert (=> b!2852587 (= e!1807325 tp!916764)))

(declare-fun b!2852588 () Bool)

(declare-fun tp!916760 () Bool)

(declare-fun tp!916762 () Bool)

(assert (=> b!2852588 (= e!1807325 (and tp!916760 tp!916762))))

(assert (=> b!2852355 (= tp!916702 e!1807325)))

(declare-fun b!2852585 () Bool)

(assert (=> b!2852585 (= e!1807325 tp_is_empty!14845)))

(declare-fun b!2852586 () Bool)

(declare-fun tp!916761 () Bool)

(declare-fun tp!916763 () Bool)

(assert (=> b!2852586 (= e!1807325 (and tp!916761 tp!916763))))

(assert (= (and b!2852355 (is-ElementMatch!8554 (regTwo!17620 r!5723))) b!2852585))

(assert (= (and b!2852355 (is-Concat!13875 (regTwo!17620 r!5723))) b!2852586))

(assert (= (and b!2852355 (is-Star!8554 (regTwo!17620 r!5723))) b!2852587))

(assert (= (and b!2852355 (is-Union!8554 (regTwo!17620 r!5723))) b!2852588))

(declare-fun b!2852593 () Bool)

(declare-fun e!1807328 () Bool)

(declare-fun tp!916769 () Bool)

(declare-fun tp!916770 () Bool)

(assert (=> b!2852593 (= e!1807328 (and tp!916769 tp!916770))))

(assert (=> b!2852358 (= tp!916701 e!1807328)))

(assert (= (and b!2852358 (is-Cons!34003 (exprs!3064 (h!39425 zl!222)))) b!2852593))

(declare-fun condSetEmpty!25207 () Bool)

(assert (=> setNonEmpty!25193 (= condSetEmpty!25207 (= setRest!25193 (as set.empty (Set Context!5128))))))

(declare-fun setRes!25207 () Bool)

(assert (=> setNonEmpty!25193 (= tp!916700 setRes!25207)))

(declare-fun setIsEmpty!25207 () Bool)

(assert (=> setIsEmpty!25207 setRes!25207))

(declare-fun setNonEmpty!25207 () Bool)

(declare-fun tp!916775 () Bool)

(declare-fun e!1807331 () Bool)

(declare-fun setElem!25207 () Context!5128)

(assert (=> setNonEmpty!25207 (= setRes!25207 (and tp!916775 (inv!46023 setElem!25207) e!1807331))))

(declare-fun setRest!25207 () (Set Context!5128))

(assert (=> setNonEmpty!25207 (= setRest!25193 (set.union (set.insert setElem!25207 (as set.empty (Set Context!5128))) setRest!25207))))

(declare-fun b!2852598 () Bool)

(declare-fun tp!916776 () Bool)

(assert (=> b!2852598 (= e!1807331 tp!916776)))

(assert (= (and setNonEmpty!25193 condSetEmpty!25207) setIsEmpty!25207))

(assert (= (and setNonEmpty!25193 (not condSetEmpty!25207)) setNonEmpty!25207))

(assert (= setNonEmpty!25207 b!2852598))

(declare-fun m!3277663 () Bool)

(assert (=> setNonEmpty!25207 m!3277663))

(declare-fun b!2852601 () Bool)

(declare-fun e!1807332 () Bool)

(declare-fun tp!916781 () Bool)

(assert (=> b!2852601 (= e!1807332 tp!916781)))

(declare-fun b!2852602 () Bool)

(declare-fun tp!916777 () Bool)

(declare-fun tp!916779 () Bool)

(assert (=> b!2852602 (= e!1807332 (and tp!916777 tp!916779))))

(assert (=> b!2852360 (= tp!916699 e!1807332)))

(declare-fun b!2852599 () Bool)

(assert (=> b!2852599 (= e!1807332 tp_is_empty!14845)))

(declare-fun b!2852600 () Bool)

(declare-fun tp!916778 () Bool)

(declare-fun tp!916780 () Bool)

(assert (=> b!2852600 (= e!1807332 (and tp!916778 tp!916780))))

(assert (= (and b!2852360 (is-ElementMatch!8554 (regOne!17621 r!5723))) b!2852599))

(assert (= (and b!2852360 (is-Concat!13875 (regOne!17621 r!5723))) b!2852600))

(assert (= (and b!2852360 (is-Star!8554 (regOne!17621 r!5723))) b!2852601))

(assert (= (and b!2852360 (is-Union!8554 (regOne!17621 r!5723))) b!2852602))

(declare-fun b!2852605 () Bool)

(declare-fun e!1807333 () Bool)

(declare-fun tp!916786 () Bool)

(assert (=> b!2852605 (= e!1807333 tp!916786)))

(declare-fun b!2852606 () Bool)

(declare-fun tp!916782 () Bool)

(declare-fun tp!916784 () Bool)

(assert (=> b!2852606 (= e!1807333 (and tp!916782 tp!916784))))

(assert (=> b!2852360 (= tp!916705 e!1807333)))

(declare-fun b!2852603 () Bool)

(assert (=> b!2852603 (= e!1807333 tp_is_empty!14845)))

(declare-fun b!2852604 () Bool)

(declare-fun tp!916783 () Bool)

(declare-fun tp!916785 () Bool)

(assert (=> b!2852604 (= e!1807333 (and tp!916783 tp!916785))))

(assert (= (and b!2852360 (is-ElementMatch!8554 (regTwo!17621 r!5723))) b!2852603))

(assert (= (and b!2852360 (is-Concat!13875 (regTwo!17621 r!5723))) b!2852604))

(assert (= (and b!2852360 (is-Star!8554 (regTwo!17621 r!5723))) b!2852605))

(assert (= (and b!2852360 (is-Union!8554 (regTwo!17621 r!5723))) b!2852606))

(declare-fun b!2852610 () Bool)

(declare-fun e!1807337 () Bool)

(declare-fun tp!916787 () Bool)

(declare-fun tp!916788 () Bool)

(assert (=> b!2852610 (= e!1807337 (and tp!916787 tp!916788))))

(assert (=> b!2852361 (= tp!916703 e!1807337)))

(assert (= (and b!2852361 (is-Cons!34003 (exprs!3064 setElem!25193))) b!2852610))

(declare-fun b!2852619 () Bool)

(declare-fun e!1807343 () Bool)

(declare-fun tp!916793 () Bool)

(assert (=> b!2852619 (= e!1807343 tp!916793)))

(declare-fun b!2852618 () Bool)

(declare-fun e!1807342 () Bool)

(declare-fun tp!916794 () Bool)

(assert (=> b!2852618 (= e!1807342 (and (inv!46023 (h!39425 (t!233160 zl!222))) e!1807343 tp!916794))))

(assert (=> b!2852366 (= tp!916706 e!1807342)))

(assert (= b!2852618 b!2852619))

(assert (= (and b!2852366 (is-Cons!34005 (t!233160 zl!222))) b!2852618))

(declare-fun m!3277665 () Bool)

(assert (=> b!2852618 m!3277665))

(declare-fun b_lambda!85671 () Bool)

(assert (= b_lambda!85667 (or b!2852367 b_lambda!85671)))

(declare-fun bs!520191 () Bool)

(declare-fun d!826169 () Bool)

(assert (= bs!520191 (and d!826169 b!2852367)))

(declare-fun res!1185768 () Bool)

(declare-fun e!1807344 () Bool)

(assert (=> bs!520191 (=> (not res!1185768) (not e!1807344))))

(assert (=> bs!520191 (= res!1185768 (matchZipper!414 z!809 lt!1013638))))

(assert (=> bs!520191 (= (dynLambda!14227 lambda!104938 lt!1013638) e!1807344)))

(declare-fun b!2852620 () Bool)

(assert (=> b!2852620 (= e!1807344 (isPrefix!2656 prefix!862 lt!1013638))))

(assert (= (and bs!520191 res!1185768) b!2852620))

(declare-fun m!3277671 () Bool)

(assert (=> bs!520191 m!3277671))

(declare-fun m!3277673 () Bool)

(assert (=> b!2852620 m!3277673))

(assert (=> d!826147 d!826169))

(push 1)

(assert (not b!2852620))

(assert (not b!2852618))

(assert (not b!2852587))

(assert (not b!2852534))

(assert (not b!2852552))

(assert (not b!2852588))

(assert (not b!2852475))

(assert (not b!2852542))

(assert (not b!2852619))

(assert (not bm!183724))

(assert (not b!2852582))

(assert tp_is_empty!14845)

(assert (not b!2852606))

(assert (not b!2852605))

(assert (not b!2852481))

(assert (not b!2852580))

(assert (not b!2852469))

(assert (not bm!183722))

(assert (not setNonEmpty!25203))

(assert (not b!2852538))

(assert (not b!2852598))

(assert (not b_lambda!85671))

(assert (not b!2852495))

(assert (not b!2852601))

(assert (not setNonEmpty!25207))

(assert (not b!2852578))

(assert (not b!2852545))

(assert (not d!826147))

(assert (not b!2852496))

(assert (not b!2852583))

(assert (not bm!183727))

(assert (not b!2852586))

(assert (not d!826127))

(assert (not b!2852497))

(assert (not b!2852553))

(assert (not d!826141))

(assert (not b!2852584))

(assert (not d!826125))

(assert (not b!2852593))

(assert (not d!826139))

(assert (not d!826167))

(assert (not b!2852474))

(assert (not setNonEmpty!25204))

(assert (not b!2852566))

(assert (not b!2852464))

(assert (not b!2852604))

(assert (not b!2852540))

(assert (not b!2852535))

(assert (not d!826165))

(assert (not d!826161))

(assert (not b!2852600))

(assert (not d!826135))

(assert (not b!2852579))

(assert (not d!826151))

(assert (not bs!520191))

(assert (not b!2852610))

(assert (not b!2852602))

(assert (not d!826145))

(assert (not b!2852480))

(assert (not d!826157))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

