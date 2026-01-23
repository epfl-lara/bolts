; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!743912 () Bool)

(assert start!743912)

(declare-fun res!3126773 () Bool)

(declare-fun e!4648706 () Bool)

(assert (=> start!743912 (=> (not res!3126773) (not e!4648706))))

(declare-datatypes ((C!42618 0))(
  ( (C!42619 (val!31771 Int)) )
))
(declare-datatypes ((Regex!21146 0))(
  ( (ElementMatch!21146 (c!1445570 C!42618)) (Concat!29991 (regOne!42804 Regex!21146) (regTwo!42804 Regex!21146)) (EmptyExpr!21146) (Star!21146 (reg!21475 Regex!21146)) (EmptyLang!21146) (Union!21146 (regOne!42805 Regex!21146) (regTwo!42805 Regex!21146)) )
))
(declare-fun r!24826 () Regex!21146)

(declare-fun validRegex!11556 (Regex!21146) Bool)

(assert (=> start!743912 (= res!3126773 (validRegex!11556 r!24826))))

(assert (=> start!743912 e!4648706))

(declare-fun e!4648708 () Bool)

(assert (=> start!743912 e!4648708))

(declare-fun e!4648707 () Bool)

(assert (=> start!743912 e!4648707))

(declare-fun b!7868579 () Bool)

(declare-datatypes ((List!74005 0))(
  ( (Nil!73881) (Cons!73881 (h!80329 C!42618) (t!388740 List!74005)) )
))
(declare-fun s!14217 () List!74005)

(declare-fun derivativeStep!6377 (Regex!21146 C!42618) Regex!21146)

(declare-fun head!16092 (List!74005) C!42618)

(assert (=> b!7868579 (= e!4648706 (not (validRegex!11556 (derivativeStep!6377 r!24826 (head!16092 s!14217)))))))

(declare-fun b!7868580 () Bool)

(declare-fun tp_is_empty!52691 () Bool)

(declare-fun tp!2334439 () Bool)

(assert (=> b!7868580 (= e!4648707 (and tp_is_empty!52691 tp!2334439))))

(declare-fun b!7868581 () Bool)

(declare-fun tp!2334440 () Bool)

(declare-fun tp!2334442 () Bool)

(assert (=> b!7868581 (= e!4648708 (and tp!2334440 tp!2334442))))

(declare-fun b!7868582 () Bool)

(declare-fun tp!2334441 () Bool)

(assert (=> b!7868582 (= e!4648708 tp!2334441)))

(declare-fun b!7868583 () Bool)

(declare-fun res!3126771 () Bool)

(assert (=> b!7868583 (=> (not res!3126771) (not e!4648706))))

(declare-fun matchR!10582 (Regex!21146 List!74005) Bool)

(assert (=> b!7868583 (= res!3126771 (matchR!10582 r!24826 s!14217))))

(declare-fun b!7868584 () Bool)

(assert (=> b!7868584 (= e!4648708 tp_is_empty!52691)))

(declare-fun b!7868585 () Bool)

(declare-fun tp!2334444 () Bool)

(declare-fun tp!2334443 () Bool)

(assert (=> b!7868585 (= e!4648708 (and tp!2334444 tp!2334443))))

(declare-fun b!7868586 () Bool)

(declare-fun res!3126772 () Bool)

(assert (=> b!7868586 (=> (not res!3126772) (not e!4648706))))

(declare-fun isEmpty!42381 (List!74005) Bool)

(assert (=> b!7868586 (= res!3126772 (not (isEmpty!42381 s!14217)))))

(assert (= (and start!743912 res!3126773) b!7868583))

(assert (= (and b!7868583 res!3126771) b!7868586))

(assert (= (and b!7868586 res!3126772) b!7868579))

(assert (= (and start!743912 (is-ElementMatch!21146 r!24826)) b!7868584))

(assert (= (and start!743912 (is-Concat!29991 r!24826)) b!7868585))

(assert (= (and start!743912 (is-Star!21146 r!24826)) b!7868582))

(assert (= (and start!743912 (is-Union!21146 r!24826)) b!7868581))

(assert (= (and start!743912 (is-Cons!73881 s!14217)) b!7868580))

(declare-fun m!8264440 () Bool)

(assert (=> start!743912 m!8264440))

(declare-fun m!8264442 () Bool)

(assert (=> b!7868579 m!8264442))

(assert (=> b!7868579 m!8264442))

(declare-fun m!8264444 () Bool)

(assert (=> b!7868579 m!8264444))

(assert (=> b!7868579 m!8264444))

(declare-fun m!8264446 () Bool)

(assert (=> b!7868579 m!8264446))

(declare-fun m!8264448 () Bool)

(assert (=> b!7868583 m!8264448))

(declare-fun m!8264450 () Bool)

(assert (=> b!7868586 m!8264450))

(push 1)

(assert (not b!7868580))

(assert (not b!7868581))

(assert (not start!743912))

(assert (not b!7868583))

(assert (not b!7868585))

(assert (not b!7868579))

(assert tp_is_empty!52691)

(assert (not b!7868586))

(assert (not b!7868582))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2355068 () Bool)

(assert (=> d!2355068 (= (isEmpty!42381 s!14217) (is-Nil!73881 s!14217))))

(assert (=> b!7868586 d!2355068))

(declare-fun b!7868629 () Bool)

(declare-fun e!4648735 () Bool)

(declare-fun e!4648732 () Bool)

(assert (=> b!7868629 (= e!4648735 e!4648732)))

(declare-fun res!3126795 () Bool)

(declare-fun nullable!9414 (Regex!21146) Bool)

(assert (=> b!7868629 (= res!3126795 (not (nullable!9414 (reg!21475 (derivativeStep!6377 r!24826 (head!16092 s!14217))))))))

(assert (=> b!7868629 (=> (not res!3126795) (not e!4648732))))

(declare-fun b!7868630 () Bool)

(declare-fun res!3126796 () Bool)

(declare-fun e!4648736 () Bool)

(assert (=> b!7868630 (=> res!3126796 e!4648736)))

(assert (=> b!7868630 (= res!3126796 (not (is-Concat!29991 (derivativeStep!6377 r!24826 (head!16092 s!14217)))))))

(declare-fun e!4648737 () Bool)

(assert (=> b!7868630 (= e!4648737 e!4648736)))

(declare-fun b!7868631 () Bool)

(declare-fun e!4648734 () Bool)

(assert (=> b!7868631 (= e!4648736 e!4648734)))

(declare-fun res!3126793 () Bool)

(assert (=> b!7868631 (=> (not res!3126793) (not e!4648734))))

(declare-fun call!729618 () Bool)

(assert (=> b!7868631 (= res!3126793 call!729618)))

(declare-fun b!7868632 () Bool)

(declare-fun res!3126797 () Bool)

(declare-fun e!4648738 () Bool)

(assert (=> b!7868632 (=> (not res!3126797) (not e!4648738))))

(declare-fun call!729619 () Bool)

(assert (=> b!7868632 (= res!3126797 call!729619)))

(assert (=> b!7868632 (= e!4648737 e!4648738)))

(declare-fun bm!729612 () Bool)

(declare-fun call!729617 () Bool)

(assert (=> bm!729612 (= call!729618 call!729617)))

(declare-fun b!7868633 () Bool)

(declare-fun e!4648733 () Bool)

(assert (=> b!7868633 (= e!4648733 e!4648735)))

(declare-fun c!1445576 () Bool)

(assert (=> b!7868633 (= c!1445576 (is-Star!21146 (derivativeStep!6377 r!24826 (head!16092 s!14217))))))

(declare-fun d!2355070 () Bool)

(declare-fun res!3126794 () Bool)

(assert (=> d!2355070 (=> res!3126794 e!4648733)))

(assert (=> d!2355070 (= res!3126794 (is-ElementMatch!21146 (derivativeStep!6377 r!24826 (head!16092 s!14217))))))

(assert (=> d!2355070 (= (validRegex!11556 (derivativeStep!6377 r!24826 (head!16092 s!14217))) e!4648733)))

(declare-fun b!7868634 () Bool)

(assert (=> b!7868634 (= e!4648734 call!729619)))

(declare-fun b!7868635 () Bool)

(assert (=> b!7868635 (= e!4648735 e!4648737)))

(declare-fun c!1445577 () Bool)

(assert (=> b!7868635 (= c!1445577 (is-Union!21146 (derivativeStep!6377 r!24826 (head!16092 s!14217))))))

(declare-fun bm!729613 () Bool)

(assert (=> bm!729613 (= call!729619 (validRegex!11556 (ite c!1445577 (regOne!42805 (derivativeStep!6377 r!24826 (head!16092 s!14217))) (regTwo!42804 (derivativeStep!6377 r!24826 (head!16092 s!14217))))))))

(declare-fun b!7868636 () Bool)

(assert (=> b!7868636 (= e!4648738 call!729618)))

(declare-fun b!7868637 () Bool)

(assert (=> b!7868637 (= e!4648732 call!729617)))

(declare-fun bm!729614 () Bool)

(assert (=> bm!729614 (= call!729617 (validRegex!11556 (ite c!1445576 (reg!21475 (derivativeStep!6377 r!24826 (head!16092 s!14217))) (ite c!1445577 (regTwo!42805 (derivativeStep!6377 r!24826 (head!16092 s!14217))) (regOne!42804 (derivativeStep!6377 r!24826 (head!16092 s!14217)))))))))

(assert (= (and d!2355070 (not res!3126794)) b!7868633))

(assert (= (and b!7868633 c!1445576) b!7868629))

(assert (= (and b!7868633 (not c!1445576)) b!7868635))

(assert (= (and b!7868629 res!3126795) b!7868637))

(assert (= (and b!7868635 c!1445577) b!7868632))

(assert (= (and b!7868635 (not c!1445577)) b!7868630))

(assert (= (and b!7868632 res!3126797) b!7868636))

(assert (= (and b!7868630 (not res!3126796)) b!7868631))

(assert (= (and b!7868631 res!3126793) b!7868634))

(assert (= (or b!7868632 b!7868634) bm!729613))

(assert (= (or b!7868636 b!7868631) bm!729612))

(assert (= (or b!7868637 bm!729612) bm!729614))

(declare-fun m!8264464 () Bool)

(assert (=> b!7868629 m!8264464))

(declare-fun m!8264466 () Bool)

(assert (=> bm!729613 m!8264466))

(declare-fun m!8264468 () Bool)

(assert (=> bm!729614 m!8264468))

(assert (=> b!7868579 d!2355070))

(declare-fun bm!729629 () Bool)

(declare-fun call!729637 () Regex!21146)

(declare-fun call!729636 () Regex!21146)

(assert (=> bm!729629 (= call!729637 call!729636)))

(declare-fun b!7868676 () Bool)

(declare-fun e!4648764 () Regex!21146)

(declare-fun e!4648766 () Regex!21146)

(assert (=> b!7868676 (= e!4648764 e!4648766)))

(declare-fun c!1445596 () Bool)

(assert (=> b!7868676 (= c!1445596 (is-Star!21146 r!24826))))

(declare-fun b!7868677 () Bool)

(declare-fun call!729634 () Regex!21146)

(declare-fun call!729635 () Regex!21146)

(assert (=> b!7868677 (= e!4648764 (Union!21146 call!729634 call!729635))))

(declare-fun b!7868678 () Bool)

(declare-fun c!1445593 () Bool)

(assert (=> b!7868678 (= c!1445593 (is-Union!21146 r!24826))))

(declare-fun e!4648763 () Regex!21146)

(assert (=> b!7868678 (= e!4648763 e!4648764)))

(declare-fun bm!729630 () Bool)

(assert (=> bm!729630 (= call!729634 (derivativeStep!6377 (ite c!1445593 (regOne!42805 r!24826) (regTwo!42804 r!24826)) (head!16092 s!14217)))))

(declare-fun b!7868679 () Bool)

(declare-fun e!4648767 () Regex!21146)

(assert (=> b!7868679 (= e!4648767 EmptyLang!21146)))

(declare-fun b!7868680 () Bool)

(assert (=> b!7868680 (= e!4648763 (ite (= (head!16092 s!14217) (c!1445570 r!24826)) EmptyExpr!21146 EmptyLang!21146))))

(declare-fun b!7868681 () Bool)

(declare-fun c!1445594 () Bool)

(assert (=> b!7868681 (= c!1445594 (nullable!9414 (regOne!42804 r!24826)))))

(declare-fun e!4648765 () Regex!21146)

(assert (=> b!7868681 (= e!4648766 e!4648765)))

(declare-fun bm!729631 () Bool)

(assert (=> bm!729631 (= call!729635 (derivativeStep!6377 (ite c!1445593 (regTwo!42805 r!24826) (ite c!1445596 (reg!21475 r!24826) (regOne!42804 r!24826))) (head!16092 s!14217)))))

(declare-fun b!7868682 () Bool)

(assert (=> b!7868682 (= e!4648765 (Union!21146 (Concat!29991 call!729637 (regTwo!42804 r!24826)) EmptyLang!21146))))

(declare-fun d!2355074 () Bool)

(declare-fun lt!2680734 () Regex!21146)

(assert (=> d!2355074 (validRegex!11556 lt!2680734)))

(assert (=> d!2355074 (= lt!2680734 e!4648767)))

(declare-fun c!1445595 () Bool)

(assert (=> d!2355074 (= c!1445595 (or (is-EmptyExpr!21146 r!24826) (is-EmptyLang!21146 r!24826)))))

(assert (=> d!2355074 (validRegex!11556 r!24826)))

(assert (=> d!2355074 (= (derivativeStep!6377 r!24826 (head!16092 s!14217)) lt!2680734)))

(declare-fun b!7868683 () Bool)

(assert (=> b!7868683 (= e!4648767 e!4648763)))

(declare-fun c!1445592 () Bool)

(assert (=> b!7868683 (= c!1445592 (is-ElementMatch!21146 r!24826))))

(declare-fun b!7868684 () Bool)

(assert (=> b!7868684 (= e!4648765 (Union!21146 (Concat!29991 call!729637 (regTwo!42804 r!24826)) call!729634))))

(declare-fun bm!729632 () Bool)

(assert (=> bm!729632 (= call!729636 call!729635)))

(declare-fun b!7868685 () Bool)

(assert (=> b!7868685 (= e!4648766 (Concat!29991 call!729636 r!24826))))

(assert (= (and d!2355074 c!1445595) b!7868679))

(assert (= (and d!2355074 (not c!1445595)) b!7868683))

(assert (= (and b!7868683 c!1445592) b!7868680))

(assert (= (and b!7868683 (not c!1445592)) b!7868678))

(assert (= (and b!7868678 c!1445593) b!7868677))

(assert (= (and b!7868678 (not c!1445593)) b!7868676))

(assert (= (and b!7868676 c!1445596) b!7868685))

(assert (= (and b!7868676 (not c!1445596)) b!7868681))

(assert (= (and b!7868681 c!1445594) b!7868684))

(assert (= (and b!7868681 (not c!1445594)) b!7868682))

(assert (= (or b!7868684 b!7868682) bm!729629))

(assert (= (or b!7868685 bm!729629) bm!729632))

(assert (= (or b!7868677 bm!729632) bm!729631))

(assert (= (or b!7868677 b!7868684) bm!729630))

(assert (=> bm!729630 m!8264442))

(declare-fun m!8264470 () Bool)

(assert (=> bm!729630 m!8264470))

(declare-fun m!8264472 () Bool)

(assert (=> b!7868681 m!8264472))

(assert (=> bm!729631 m!8264442))

(declare-fun m!8264474 () Bool)

(assert (=> bm!729631 m!8264474))

(declare-fun m!8264476 () Bool)

(assert (=> d!2355074 m!8264476))

(assert (=> d!2355074 m!8264440))

(assert (=> b!7868579 d!2355074))

(declare-fun d!2355076 () Bool)

(assert (=> d!2355076 (= (head!16092 s!14217) (h!80329 s!14217))))

(assert (=> b!7868579 d!2355076))

(declare-fun b!7868723 () Bool)

(declare-fun e!4648795 () Bool)

(declare-fun e!4648794 () Bool)

(assert (=> b!7868723 (= e!4648795 e!4648794)))

(declare-fun res!3126831 () Bool)

(assert (=> b!7868723 (=> (not res!3126831) (not e!4648794))))

(declare-fun lt!2680737 () Bool)

(assert (=> b!7868723 (= res!3126831 (not lt!2680737))))

(declare-fun b!7868724 () Bool)

(declare-fun res!3126829 () Bool)

(declare-fun e!4648790 () Bool)

(assert (=> b!7868724 (=> (not res!3126829) (not e!4648790))))

(declare-fun tail!15635 (List!74005) List!74005)

(assert (=> b!7868724 (= res!3126829 (isEmpty!42381 (tail!15635 s!14217)))))

(declare-fun b!7868725 () Bool)

(declare-fun e!4648791 () Bool)

(declare-fun e!4648793 () Bool)

(assert (=> b!7868725 (= e!4648791 e!4648793)))

(declare-fun c!1445607 () Bool)

(assert (=> b!7868725 (= c!1445607 (is-EmptyLang!21146 r!24826))))

(declare-fun d!2355078 () Bool)

(assert (=> d!2355078 e!4648791))

(declare-fun c!1445606 () Bool)

(assert (=> d!2355078 (= c!1445606 (is-EmptyExpr!21146 r!24826))))

(declare-fun e!4648792 () Bool)

(assert (=> d!2355078 (= lt!2680737 e!4648792)))

(declare-fun c!1445605 () Bool)

(assert (=> d!2355078 (= c!1445605 (isEmpty!42381 s!14217))))

(assert (=> d!2355078 (validRegex!11556 r!24826)))

(assert (=> d!2355078 (= (matchR!10582 r!24826 s!14217) lt!2680737)))

(declare-fun b!7868726 () Bool)

(assert (=> b!7868726 (= e!4648790 (= (head!16092 s!14217) (c!1445570 r!24826)))))

(declare-fun b!7868727 () Bool)

(declare-fun e!4648789 () Bool)

(assert (=> b!7868727 (= e!4648794 e!4648789)))

(declare-fun res!3126833 () Bool)

(assert (=> b!7868727 (=> res!3126833 e!4648789)))

(declare-fun call!729643 () Bool)

(assert (=> b!7868727 (= res!3126833 call!729643)))

(declare-fun b!7868728 () Bool)

(declare-fun res!3126830 () Bool)

(assert (=> b!7868728 (=> (not res!3126830) (not e!4648790))))

(assert (=> b!7868728 (= res!3126830 (not call!729643))))

(declare-fun b!7868729 () Bool)

(assert (=> b!7868729 (= e!4648792 (matchR!10582 (derivativeStep!6377 r!24826 (head!16092 s!14217)) (tail!15635 s!14217)))))

(declare-fun bm!729638 () Bool)

(assert (=> bm!729638 (= call!729643 (isEmpty!42381 s!14217))))

(declare-fun b!7868730 () Bool)

(assert (=> b!7868730 (= e!4648793 (not lt!2680737))))

(declare-fun b!7868731 () Bool)

(assert (=> b!7868731 (= e!4648789 (not (= (head!16092 s!14217) (c!1445570 r!24826))))))

(declare-fun b!7868732 () Bool)

(declare-fun res!3126835 () Bool)

(assert (=> b!7868732 (=> res!3126835 e!4648795)))

(assert (=> b!7868732 (= res!3126835 e!4648790)))

(declare-fun res!3126832 () Bool)

(assert (=> b!7868732 (=> (not res!3126832) (not e!4648790))))

(assert (=> b!7868732 (= res!3126832 lt!2680737)))

(declare-fun b!7868733 () Bool)

(assert (=> b!7868733 (= e!4648792 (nullable!9414 r!24826))))

(declare-fun b!7868734 () Bool)

(assert (=> b!7868734 (= e!4648791 (= lt!2680737 call!729643))))

(declare-fun b!7868735 () Bool)

(declare-fun res!3126836 () Bool)

(assert (=> b!7868735 (=> res!3126836 e!4648795)))

(assert (=> b!7868735 (= res!3126836 (not (is-ElementMatch!21146 r!24826)))))

(assert (=> b!7868735 (= e!4648793 e!4648795)))

(declare-fun b!7868736 () Bool)

(declare-fun res!3126834 () Bool)

(assert (=> b!7868736 (=> res!3126834 e!4648789)))

(assert (=> b!7868736 (= res!3126834 (not (isEmpty!42381 (tail!15635 s!14217))))))

(assert (= (and d!2355078 c!1445605) b!7868733))

(assert (= (and d!2355078 (not c!1445605)) b!7868729))

(assert (= (and d!2355078 c!1445606) b!7868734))

(assert (= (and d!2355078 (not c!1445606)) b!7868725))

(assert (= (and b!7868725 c!1445607) b!7868730))

(assert (= (and b!7868725 (not c!1445607)) b!7868735))

(assert (= (and b!7868735 (not res!3126836)) b!7868732))

(assert (= (and b!7868732 res!3126832) b!7868728))

(assert (= (and b!7868728 res!3126830) b!7868724))

(assert (= (and b!7868724 res!3126829) b!7868726))

(assert (= (and b!7868732 (not res!3126835)) b!7868723))

(assert (= (and b!7868723 res!3126831) b!7868727))

(assert (= (and b!7868727 (not res!3126833)) b!7868736))

(assert (= (and b!7868736 (not res!3126834)) b!7868731))

(assert (= (or b!7868734 b!7868727 b!7868728) bm!729638))

(declare-fun m!8264484 () Bool)

(assert (=> b!7868724 m!8264484))

(assert (=> b!7868724 m!8264484))

(declare-fun m!8264486 () Bool)

(assert (=> b!7868724 m!8264486))

(assert (=> bm!729638 m!8264450))

(assert (=> b!7868736 m!8264484))

(assert (=> b!7868736 m!8264484))

(assert (=> b!7868736 m!8264486))

(assert (=> b!7868731 m!8264442))

(assert (=> b!7868729 m!8264442))

(assert (=> b!7868729 m!8264442))

(assert (=> b!7868729 m!8264444))

(assert (=> b!7868729 m!8264484))

(assert (=> b!7868729 m!8264444))

(assert (=> b!7868729 m!8264484))

(declare-fun m!8264488 () Bool)

(assert (=> b!7868729 m!8264488))

(assert (=> d!2355078 m!8264450))

(assert (=> d!2355078 m!8264440))

(assert (=> b!7868726 m!8264442))

(declare-fun m!8264490 () Bool)

(assert (=> b!7868733 m!8264490))

(assert (=> b!7868583 d!2355078))

(declare-fun b!7868737 () Bool)

(declare-fun e!4648799 () Bool)

(declare-fun e!4648796 () Bool)

(assert (=> b!7868737 (= e!4648799 e!4648796)))

(declare-fun res!3126839 () Bool)

(assert (=> b!7868737 (= res!3126839 (not (nullable!9414 (reg!21475 r!24826))))))

(assert (=> b!7868737 (=> (not res!3126839) (not e!4648796))))

(declare-fun b!7868738 () Bool)

(declare-fun res!3126840 () Bool)

(declare-fun e!4648800 () Bool)

(assert (=> b!7868738 (=> res!3126840 e!4648800)))

(assert (=> b!7868738 (= res!3126840 (not (is-Concat!29991 r!24826)))))

(declare-fun e!4648801 () Bool)

(assert (=> b!7868738 (= e!4648801 e!4648800)))

(declare-fun b!7868739 () Bool)

(declare-fun e!4648798 () Bool)

(assert (=> b!7868739 (= e!4648800 e!4648798)))

(declare-fun res!3126837 () Bool)

(assert (=> b!7868739 (=> (not res!3126837) (not e!4648798))))

(declare-fun call!729645 () Bool)

(assert (=> b!7868739 (= res!3126837 call!729645)))

(declare-fun b!7868740 () Bool)

(declare-fun res!3126841 () Bool)

(declare-fun e!4648802 () Bool)

(assert (=> b!7868740 (=> (not res!3126841) (not e!4648802))))

(declare-fun call!729646 () Bool)

(assert (=> b!7868740 (= res!3126841 call!729646)))

(assert (=> b!7868740 (= e!4648801 e!4648802)))

(declare-fun bm!729639 () Bool)

(declare-fun call!729644 () Bool)

(assert (=> bm!729639 (= call!729645 call!729644)))

(declare-fun b!7868741 () Bool)

(declare-fun e!4648797 () Bool)

(assert (=> b!7868741 (= e!4648797 e!4648799)))

(declare-fun c!1445608 () Bool)

(assert (=> b!7868741 (= c!1445608 (is-Star!21146 r!24826))))

(declare-fun d!2355082 () Bool)

(declare-fun res!3126838 () Bool)

(assert (=> d!2355082 (=> res!3126838 e!4648797)))

(assert (=> d!2355082 (= res!3126838 (is-ElementMatch!21146 r!24826))))

(assert (=> d!2355082 (= (validRegex!11556 r!24826) e!4648797)))

(declare-fun b!7868742 () Bool)

(assert (=> b!7868742 (= e!4648798 call!729646)))

(declare-fun b!7868743 () Bool)

(assert (=> b!7868743 (= e!4648799 e!4648801)))

(declare-fun c!1445609 () Bool)

(assert (=> b!7868743 (= c!1445609 (is-Union!21146 r!24826))))

(declare-fun bm!729640 () Bool)

(assert (=> bm!729640 (= call!729646 (validRegex!11556 (ite c!1445609 (regOne!42805 r!24826) (regTwo!42804 r!24826))))))

(declare-fun b!7868744 () Bool)

(assert (=> b!7868744 (= e!4648802 call!729645)))

(declare-fun b!7868745 () Bool)

(assert (=> b!7868745 (= e!4648796 call!729644)))

(declare-fun bm!729641 () Bool)

(assert (=> bm!729641 (= call!729644 (validRegex!11556 (ite c!1445608 (reg!21475 r!24826) (ite c!1445609 (regTwo!42805 r!24826) (regOne!42804 r!24826)))))))

(assert (= (and d!2355082 (not res!3126838)) b!7868741))

(assert (= (and b!7868741 c!1445608) b!7868737))

(assert (= (and b!7868741 (not c!1445608)) b!7868743))

(assert (= (and b!7868737 res!3126839) b!7868745))

(assert (= (and b!7868743 c!1445609) b!7868740))

(assert (= (and b!7868743 (not c!1445609)) b!7868738))

(assert (= (and b!7868740 res!3126841) b!7868744))

(assert (= (and b!7868738 (not res!3126840)) b!7868739))

(assert (= (and b!7868739 res!3126837) b!7868742))

(assert (= (or b!7868740 b!7868742) bm!729640))

(assert (= (or b!7868744 b!7868739) bm!729639))

(assert (= (or b!7868745 bm!729639) bm!729641))

(declare-fun m!8264492 () Bool)

(assert (=> b!7868737 m!8264492))

(declare-fun m!8264494 () Bool)

(assert (=> bm!729640 m!8264494))

(declare-fun m!8264496 () Bool)

(assert (=> bm!729641 m!8264496))

(assert (=> start!743912 d!2355082))

(declare-fun b!7868750 () Bool)

(declare-fun e!4648805 () Bool)

(declare-fun tp!2334465 () Bool)

(assert (=> b!7868750 (= e!4648805 (and tp_is_empty!52691 tp!2334465))))

(assert (=> b!7868580 (= tp!2334439 e!4648805)))

(assert (= (and b!7868580 (is-Cons!73881 (t!388740 s!14217))) b!7868750))

(declare-fun b!7868764 () Bool)

(declare-fun e!4648808 () Bool)

(declare-fun tp!2334476 () Bool)

(declare-fun tp!2334479 () Bool)

(assert (=> b!7868764 (= e!4648808 (and tp!2334476 tp!2334479))))

(declare-fun b!7868761 () Bool)

(assert (=> b!7868761 (= e!4648808 tp_is_empty!52691)))

(declare-fun b!7868763 () Bool)

(declare-fun tp!2334480 () Bool)

(assert (=> b!7868763 (= e!4648808 tp!2334480)))

(declare-fun b!7868762 () Bool)

(declare-fun tp!2334478 () Bool)

(declare-fun tp!2334477 () Bool)

(assert (=> b!7868762 (= e!4648808 (and tp!2334478 tp!2334477))))

(assert (=> b!7868581 (= tp!2334440 e!4648808)))

(assert (= (and b!7868581 (is-ElementMatch!21146 (regOne!42805 r!24826))) b!7868761))

(assert (= (and b!7868581 (is-Concat!29991 (regOne!42805 r!24826))) b!7868762))

(assert (= (and b!7868581 (is-Star!21146 (regOne!42805 r!24826))) b!7868763))

(assert (= (and b!7868581 (is-Union!21146 (regOne!42805 r!24826))) b!7868764))

(declare-fun b!7868768 () Bool)

(declare-fun e!4648809 () Bool)

(declare-fun tp!2334481 () Bool)

(declare-fun tp!2334484 () Bool)

(assert (=> b!7868768 (= e!4648809 (and tp!2334481 tp!2334484))))

(declare-fun b!7868765 () Bool)

(assert (=> b!7868765 (= e!4648809 tp_is_empty!52691)))

(declare-fun b!7868767 () Bool)

(declare-fun tp!2334485 () Bool)

(assert (=> b!7868767 (= e!4648809 tp!2334485)))

(declare-fun b!7868766 () Bool)

(declare-fun tp!2334483 () Bool)

(declare-fun tp!2334482 () Bool)

(assert (=> b!7868766 (= e!4648809 (and tp!2334483 tp!2334482))))

(assert (=> b!7868581 (= tp!2334442 e!4648809)))

(assert (= (and b!7868581 (is-ElementMatch!21146 (regTwo!42805 r!24826))) b!7868765))

(assert (= (and b!7868581 (is-Concat!29991 (regTwo!42805 r!24826))) b!7868766))

(assert (= (and b!7868581 (is-Star!21146 (regTwo!42805 r!24826))) b!7868767))

(assert (= (and b!7868581 (is-Union!21146 (regTwo!42805 r!24826))) b!7868768))

(declare-fun b!7868772 () Bool)

(declare-fun e!4648810 () Bool)

(declare-fun tp!2334486 () Bool)

(declare-fun tp!2334489 () Bool)

(assert (=> b!7868772 (= e!4648810 (and tp!2334486 tp!2334489))))

(declare-fun b!7868769 () Bool)

(assert (=> b!7868769 (= e!4648810 tp_is_empty!52691)))

(declare-fun b!7868771 () Bool)

(declare-fun tp!2334490 () Bool)

(assert (=> b!7868771 (= e!4648810 tp!2334490)))

(declare-fun b!7868770 () Bool)

(declare-fun tp!2334488 () Bool)

(declare-fun tp!2334487 () Bool)

(assert (=> b!7868770 (= e!4648810 (and tp!2334488 tp!2334487))))

(assert (=> b!7868585 (= tp!2334444 e!4648810)))

(assert (= (and b!7868585 (is-ElementMatch!21146 (regOne!42804 r!24826))) b!7868769))

(assert (= (and b!7868585 (is-Concat!29991 (regOne!42804 r!24826))) b!7868770))

(assert (= (and b!7868585 (is-Star!21146 (regOne!42804 r!24826))) b!7868771))

(assert (= (and b!7868585 (is-Union!21146 (regOne!42804 r!24826))) b!7868772))

(declare-fun b!7868776 () Bool)

(declare-fun e!4648811 () Bool)

(declare-fun tp!2334491 () Bool)

(declare-fun tp!2334494 () Bool)

(assert (=> b!7868776 (= e!4648811 (and tp!2334491 tp!2334494))))

(declare-fun b!7868773 () Bool)

(assert (=> b!7868773 (= e!4648811 tp_is_empty!52691)))

(declare-fun b!7868775 () Bool)

(declare-fun tp!2334495 () Bool)

(assert (=> b!7868775 (= e!4648811 tp!2334495)))

(declare-fun b!7868774 () Bool)

(declare-fun tp!2334493 () Bool)

(declare-fun tp!2334492 () Bool)

(assert (=> b!7868774 (= e!4648811 (and tp!2334493 tp!2334492))))

(assert (=> b!7868585 (= tp!2334443 e!4648811)))

(assert (= (and b!7868585 (is-ElementMatch!21146 (regTwo!42804 r!24826))) b!7868773))

(assert (= (and b!7868585 (is-Concat!29991 (regTwo!42804 r!24826))) b!7868774))

(assert (= (and b!7868585 (is-Star!21146 (regTwo!42804 r!24826))) b!7868775))

(assert (= (and b!7868585 (is-Union!21146 (regTwo!42804 r!24826))) b!7868776))

(declare-fun b!7868780 () Bool)

(declare-fun e!4648812 () Bool)

(declare-fun tp!2334496 () Bool)

(declare-fun tp!2334499 () Bool)

(assert (=> b!7868780 (= e!4648812 (and tp!2334496 tp!2334499))))

(declare-fun b!7868777 () Bool)

(assert (=> b!7868777 (= e!4648812 tp_is_empty!52691)))

(declare-fun b!7868779 () Bool)

(declare-fun tp!2334500 () Bool)

(assert (=> b!7868779 (= e!4648812 tp!2334500)))

(declare-fun b!7868778 () Bool)

(declare-fun tp!2334498 () Bool)

(declare-fun tp!2334497 () Bool)

(assert (=> b!7868778 (= e!4648812 (and tp!2334498 tp!2334497))))

(assert (=> b!7868582 (= tp!2334441 e!4648812)))

(assert (= (and b!7868582 (is-ElementMatch!21146 (reg!21475 r!24826))) b!7868777))

(assert (= (and b!7868582 (is-Concat!29991 (reg!21475 r!24826))) b!7868778))

(assert (= (and b!7868582 (is-Star!21146 (reg!21475 r!24826))) b!7868779))

(assert (= (and b!7868582 (is-Union!21146 (reg!21475 r!24826))) b!7868780))

(push 1)

(assert tp_is_empty!52691)

(assert (not b!7868724))

(assert (not b!7868750))

(assert (not bm!729614))

(assert (not b!7868780))

(assert (not bm!729613))

(assert (not b!7868731))

(assert (not b!7868629))

(assert (not b!7868775))

(assert (not b!7868770))

(assert (not b!7868768))

(assert (not b!7868764))

(assert (not b!7868763))

(assert (not bm!729638))

(assert (not b!7868772))

(assert (not b!7868733))

(assert (not b!7868771))

(assert (not b!7868774))

(assert (not d!2355074))

(assert (not bm!729641))

(assert (not d!2355078))

(assert (not b!7868729))

(assert (not b!7868762))

(assert (not b!7868681))

(assert (not bm!729631))

(assert (not bm!729630))

(assert (not b!7868776))

(assert (not b!7868736))

(assert (not b!7868767))

(assert (not b!7868779))

(assert (not bm!729640))

(assert (not b!7868737))

(assert (not b!7868778))

(assert (not b!7868726))

(assert (not b!7868766))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

