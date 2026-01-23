; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!87988 () Bool)

(assert start!87988)

(declare-fun b!1002579 () Bool)

(assert (=> b!1002579 true))

(assert (=> b!1002579 true))

(assert (=> b!1002579 true))

(declare-fun b!1002574 () Bool)

(declare-fun e!642540 () Bool)

(declare-fun tp!305317 () Bool)

(declare-fun tp!305315 () Bool)

(assert (=> b!1002574 (= e!642540 (and tp!305317 tp!305315))))

(declare-fun b!1002575 () Bool)

(declare-fun tp_is_empty!5207 () Bool)

(assert (=> b!1002575 (= e!642540 tp_is_empty!5207)))

(declare-fun b!1002576 () Bool)

(declare-fun tp!305314 () Bool)

(assert (=> b!1002576 (= e!642540 tp!305314)))

(declare-fun res!452589 () Bool)

(declare-fun e!642543 () Bool)

(assert (=> start!87988 (=> (not res!452589) (not e!642543))))

(declare-datatypes ((C!6134 0))(
  ( (C!6135 (val!3315 Int)) )
))
(declare-datatypes ((Regex!2782 0))(
  ( (ElementMatch!2782 (c!165145 C!6134)) (Concat!4615 (regOne!6076 Regex!2782) (regTwo!6076 Regex!2782)) (EmptyExpr!2782) (Star!2782 (reg!3111 Regex!2782)) (EmptyLang!2782) (Union!2782 (regOne!6077 Regex!2782) (regTwo!6077 Regex!2782)) )
))
(declare-fun r!15766 () Regex!2782)

(declare-fun validRegex!1251 (Regex!2782) Bool)

(assert (=> start!87988 (= res!452589 (validRegex!1251 r!15766))))

(assert (=> start!87988 e!642543))

(assert (=> start!87988 e!642540))

(declare-fun e!642541 () Bool)

(assert (=> start!87988 e!642541))

(declare-fun b!1002577 () Bool)

(declare-fun e!642542 () Bool)

(assert (=> b!1002577 (= e!642543 (not e!642542))))

(declare-fun res!452590 () Bool)

(assert (=> b!1002577 (=> res!452590 e!642542)))

(declare-fun lt!352224 () Bool)

(assert (=> b!1002577 (= res!452590 (or (not lt!352224) (and (is-Concat!4615 r!15766) (is-EmptyExpr!2782 (regOne!6076 r!15766))) (and (is-Concat!4615 r!15766) (is-EmptyExpr!2782 (regTwo!6076 r!15766))) (is-Concat!4615 r!15766) (is-Union!2782 r!15766) (not (is-Star!2782 r!15766))))))

(declare-datatypes ((List!10012 0))(
  ( (Nil!9996) (Cons!9996 (h!15397 C!6134) (t!101058 List!10012)) )
))
(declare-fun s!10566 () List!10012)

(declare-fun matchRSpec!581 (Regex!2782 List!10012) Bool)

(assert (=> b!1002577 (= lt!352224 (matchRSpec!581 r!15766 s!10566))))

(declare-fun matchR!1318 (Regex!2782 List!10012) Bool)

(assert (=> b!1002577 (= lt!352224 (matchR!1318 r!15766 s!10566))))

(declare-datatypes ((Unit!15223 0))(
  ( (Unit!15224) )
))
(declare-fun lt!352227 () Unit!15223)

(declare-fun mainMatchTheorem!581 (Regex!2782 List!10012) Unit!15223)

(assert (=> b!1002577 (= lt!352227 (mainMatchTheorem!581 r!15766 s!10566))))

(declare-fun b!1002578 () Bool)

(declare-fun tp!305316 () Bool)

(declare-fun tp!305318 () Bool)

(assert (=> b!1002578 (= e!642540 (and tp!305316 tp!305318))))

(assert (=> b!1002579 (= e!642542 (validRegex!1251 (reg!3111 r!15766)))))

(declare-fun lt!352225 () Regex!2782)

(declare-fun lambda!35565 () Int)

(declare-datatypes ((tuple2!11358 0))(
  ( (tuple2!11359 (_1!6505 List!10012) (_2!6505 List!10012)) )
))
(declare-datatypes ((Option!2321 0))(
  ( (None!2320) (Some!2320 (v!19737 tuple2!11358)) )
))
(declare-fun isDefined!1963 (Option!2321) Bool)

(declare-fun findConcatSeparation!427 (Regex!2782 Regex!2782 List!10012 List!10012 List!10012) Option!2321)

(declare-fun Exists!515 (Int) Bool)

(assert (=> b!1002579 (= (isDefined!1963 (findConcatSeparation!427 (reg!3111 r!15766) lt!352225 Nil!9996 s!10566 s!10566)) (Exists!515 lambda!35565))))

(declare-fun lt!352226 () Unit!15223)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!427 (Regex!2782 Regex!2782 List!10012) Unit!15223)

(assert (=> b!1002579 (= lt!352226 (lemmaFindConcatSeparationEquivalentToExists!427 (reg!3111 r!15766) lt!352225 s!10566))))

(assert (=> b!1002579 (= lt!352225 (Star!2782 (reg!3111 r!15766)))))

(declare-fun b!1002580 () Bool)

(declare-fun tp!305313 () Bool)

(assert (=> b!1002580 (= e!642541 (and tp_is_empty!5207 tp!305313))))

(assert (= (and start!87988 res!452589) b!1002577))

(assert (= (and b!1002577 (not res!452590)) b!1002579))

(assert (= (and start!87988 (is-ElementMatch!2782 r!15766)) b!1002575))

(assert (= (and start!87988 (is-Concat!4615 r!15766)) b!1002578))

(assert (= (and start!87988 (is-Star!2782 r!15766)) b!1002576))

(assert (= (and start!87988 (is-Union!2782 r!15766)) b!1002574))

(assert (= (and start!87988 (is-Cons!9996 s!10566)) b!1002580))

(declare-fun m!1190593 () Bool)

(assert (=> start!87988 m!1190593))

(declare-fun m!1190595 () Bool)

(assert (=> b!1002577 m!1190595))

(declare-fun m!1190597 () Bool)

(assert (=> b!1002577 m!1190597))

(declare-fun m!1190599 () Bool)

(assert (=> b!1002577 m!1190599))

(declare-fun m!1190601 () Bool)

(assert (=> b!1002579 m!1190601))

(declare-fun m!1190603 () Bool)

(assert (=> b!1002579 m!1190603))

(declare-fun m!1190605 () Bool)

(assert (=> b!1002579 m!1190605))

(declare-fun m!1190607 () Bool)

(assert (=> b!1002579 m!1190607))

(assert (=> b!1002579 m!1190605))

(declare-fun m!1190609 () Bool)

(assert (=> b!1002579 m!1190609))

(push 1)

(assert (not b!1002574))

(assert (not b!1002577))

(assert (not b!1002576))

(assert (not start!87988))

(assert (not b!1002580))

(assert tp_is_empty!5207)

(assert (not b!1002579))

(assert (not b!1002578))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!245122 () Bool)

(declare-fun b!1002648 () Bool)

(assert (= bs!245122 (and b!1002648 b!1002579)))

(declare-fun lambda!35573 () Int)

(assert (=> bs!245122 (not (= lambda!35573 lambda!35565))))

(assert (=> b!1002648 true))

(assert (=> b!1002648 true))

(declare-fun bs!245123 () Bool)

(declare-fun b!1002651 () Bool)

(assert (= bs!245123 (and b!1002651 b!1002579)))

(declare-fun lambda!35574 () Int)

(assert (=> bs!245123 (not (= lambda!35574 lambda!35565))))

(declare-fun bs!245124 () Bool)

(assert (= bs!245124 (and b!1002651 b!1002648)))

(assert (=> bs!245124 (not (= lambda!35574 lambda!35573))))

(assert (=> b!1002651 true))

(assert (=> b!1002651 true))

(declare-fun b!1002646 () Bool)

(declare-fun e!642582 () Bool)

(assert (=> b!1002646 (= e!642582 (= s!10566 (Cons!9996 (c!165145 r!15766) Nil!9996)))))

(declare-fun b!1002647 () Bool)

(declare-fun c!165156 () Bool)

(assert (=> b!1002647 (= c!165156 (is-ElementMatch!2782 r!15766))))

(declare-fun e!642581 () Bool)

(assert (=> b!1002647 (= e!642581 e!642582)))

(declare-fun e!642577 () Bool)

(declare-fun call!66783 () Bool)

(assert (=> b!1002648 (= e!642577 call!66783)))

(declare-fun bm!66777 () Bool)

(declare-fun c!165155 () Bool)

(assert (=> bm!66777 (= call!66783 (Exists!515 (ite c!165155 lambda!35573 lambda!35574)))))

(declare-fun b!1002650 () Bool)

(declare-fun res!452617 () Bool)

(assert (=> b!1002650 (=> res!452617 e!642577)))

(declare-fun call!66782 () Bool)

(assert (=> b!1002650 (= res!452617 call!66782)))

(declare-fun e!642579 () Bool)

(assert (=> b!1002650 (= e!642579 e!642577)))

(assert (=> b!1002651 (= e!642579 call!66783)))

(declare-fun b!1002652 () Bool)

(declare-fun e!642576 () Bool)

(assert (=> b!1002652 (= e!642576 (matchRSpec!581 (regTwo!6077 r!15766) s!10566))))

(declare-fun b!1002653 () Bool)

(declare-fun e!642578 () Bool)

(assert (=> b!1002653 (= e!642578 e!642579)))

(assert (=> b!1002653 (= c!165155 (is-Star!2782 r!15766))))

(declare-fun bm!66778 () Bool)

(declare-fun isEmpty!6332 (List!10012) Bool)

(assert (=> bm!66778 (= call!66782 (isEmpty!6332 s!10566))))

(declare-fun b!1002654 () Bool)

(assert (=> b!1002654 (= e!642578 e!642576)))

(declare-fun res!452618 () Bool)

(assert (=> b!1002654 (= res!452618 (matchRSpec!581 (regOne!6077 r!15766) s!10566))))

(assert (=> b!1002654 (=> res!452618 e!642576)))

(declare-fun b!1002655 () Bool)

(declare-fun e!642580 () Bool)

(assert (=> b!1002655 (= e!642580 call!66782)))

(declare-fun b!1002656 () Bool)

(assert (=> b!1002656 (= e!642580 e!642581)))

(declare-fun res!452619 () Bool)

(assert (=> b!1002656 (= res!452619 (not (is-EmptyLang!2782 r!15766)))))

(assert (=> b!1002656 (=> (not res!452619) (not e!642581))))

(declare-fun d!291447 () Bool)

(declare-fun c!165157 () Bool)

(assert (=> d!291447 (= c!165157 (is-EmptyExpr!2782 r!15766))))

(assert (=> d!291447 (= (matchRSpec!581 r!15766 s!10566) e!642580)))

(declare-fun b!1002649 () Bool)

(declare-fun c!165158 () Bool)

(assert (=> b!1002649 (= c!165158 (is-Union!2782 r!15766))))

(assert (=> b!1002649 (= e!642582 e!642578)))

(assert (= (and d!291447 c!165157) b!1002655))

(assert (= (and d!291447 (not c!165157)) b!1002656))

(assert (= (and b!1002656 res!452619) b!1002647))

(assert (= (and b!1002647 c!165156) b!1002646))

(assert (= (and b!1002647 (not c!165156)) b!1002649))

(assert (= (and b!1002649 c!165158) b!1002654))

(assert (= (and b!1002649 (not c!165158)) b!1002653))

(assert (= (and b!1002654 (not res!452618)) b!1002652))

(assert (= (and b!1002653 c!165155) b!1002650))

(assert (= (and b!1002653 (not c!165155)) b!1002651))

(assert (= (and b!1002650 (not res!452617)) b!1002648))

(assert (= (or b!1002648 b!1002651) bm!66777))

(assert (= (or b!1002655 b!1002650) bm!66778))

(declare-fun m!1190629 () Bool)

(assert (=> bm!66777 m!1190629))

(declare-fun m!1190631 () Bool)

(assert (=> b!1002652 m!1190631))

(declare-fun m!1190633 () Bool)

(assert (=> bm!66778 m!1190633))

(declare-fun m!1190635 () Bool)

(assert (=> b!1002654 m!1190635))

(assert (=> b!1002577 d!291447))

(declare-fun b!1002685 () Bool)

(declare-fun e!642599 () Bool)

(declare-fun head!1853 (List!10012) C!6134)

(assert (=> b!1002685 (= e!642599 (not (= (head!1853 s!10566) (c!165145 r!15766))))))

(declare-fun b!1002686 () Bool)

(declare-fun res!452642 () Bool)

(declare-fun e!642601 () Bool)

(assert (=> b!1002686 (=> res!452642 e!642601)))

(declare-fun e!642598 () Bool)

(assert (=> b!1002686 (= res!452642 e!642598)))

(declare-fun res!452637 () Bool)

(assert (=> b!1002686 (=> (not res!452637) (not e!642598))))

(declare-fun lt!352242 () Bool)

(assert (=> b!1002686 (= res!452637 lt!352242)))

(declare-fun b!1002687 () Bool)

(declare-fun res!452640 () Bool)

(assert (=> b!1002687 (=> (not res!452640) (not e!642598))))

(declare-fun call!66786 () Bool)

(assert (=> b!1002687 (= res!452640 (not call!66786))))

(declare-fun b!1002688 () Bool)

(declare-fun e!642597 () Bool)

(assert (=> b!1002688 (= e!642597 e!642599)))

(declare-fun res!452638 () Bool)

(assert (=> b!1002688 (=> res!452638 e!642599)))

(assert (=> b!1002688 (= res!452638 call!66786)))

(declare-fun b!1002689 () Bool)

(assert (=> b!1002689 (= e!642601 e!642597)))

(declare-fun res!452643 () Bool)

(assert (=> b!1002689 (=> (not res!452643) (not e!642597))))

(assert (=> b!1002689 (= res!452643 (not lt!352242))))

(declare-fun d!291451 () Bool)

(declare-fun e!642602 () Bool)

(assert (=> d!291451 e!642602))

(declare-fun c!165166 () Bool)

(assert (=> d!291451 (= c!165166 (is-EmptyExpr!2782 r!15766))))

(declare-fun e!642600 () Bool)

(assert (=> d!291451 (= lt!352242 e!642600)))

(declare-fun c!165165 () Bool)

(assert (=> d!291451 (= c!165165 (isEmpty!6332 s!10566))))

(assert (=> d!291451 (validRegex!1251 r!15766)))

(assert (=> d!291451 (= (matchR!1318 r!15766 s!10566) lt!352242)))

(declare-fun b!1002690 () Bool)

(declare-fun res!452636 () Bool)

(assert (=> b!1002690 (=> res!452636 e!642601)))

(assert (=> b!1002690 (= res!452636 (not (is-ElementMatch!2782 r!15766)))))

(declare-fun e!642603 () Bool)

(assert (=> b!1002690 (= e!642603 e!642601)))

(declare-fun b!1002691 () Bool)

(assert (=> b!1002691 (= e!642602 (= lt!352242 call!66786))))

(declare-fun bm!66781 () Bool)

(assert (=> bm!66781 (= call!66786 (isEmpty!6332 s!10566))))

(declare-fun b!1002692 () Bool)

(assert (=> b!1002692 (= e!642598 (= (head!1853 s!10566) (c!165145 r!15766)))))

(declare-fun b!1002693 () Bool)

(declare-fun derivativeStep!700 (Regex!2782 C!6134) Regex!2782)

(declare-fun tail!1415 (List!10012) List!10012)

(assert (=> b!1002693 (= e!642600 (matchR!1318 (derivativeStep!700 r!15766 (head!1853 s!10566)) (tail!1415 s!10566)))))

(declare-fun b!1002694 () Bool)

(declare-fun res!452639 () Bool)

(assert (=> b!1002694 (=> res!452639 e!642599)))

(assert (=> b!1002694 (= res!452639 (not (isEmpty!6332 (tail!1415 s!10566))))))

(declare-fun b!1002695 () Bool)

(assert (=> b!1002695 (= e!642602 e!642603)))

(declare-fun c!165167 () Bool)

(assert (=> b!1002695 (= c!165167 (is-EmptyLang!2782 r!15766))))

(declare-fun b!1002696 () Bool)

(declare-fun res!452641 () Bool)

(assert (=> b!1002696 (=> (not res!452641) (not e!642598))))

(assert (=> b!1002696 (= res!452641 (isEmpty!6332 (tail!1415 s!10566)))))

(declare-fun b!1002697 () Bool)

(assert (=> b!1002697 (= e!642603 (not lt!352242))))

(declare-fun b!1002698 () Bool)

(declare-fun nullable!894 (Regex!2782) Bool)

(assert (=> b!1002698 (= e!642600 (nullable!894 r!15766))))

(assert (= (and d!291451 c!165165) b!1002698))

(assert (= (and d!291451 (not c!165165)) b!1002693))

(assert (= (and d!291451 c!165166) b!1002691))

(assert (= (and d!291451 (not c!165166)) b!1002695))

(assert (= (and b!1002695 c!165167) b!1002697))

(assert (= (and b!1002695 (not c!165167)) b!1002690))

(assert (= (and b!1002690 (not res!452636)) b!1002686))

(assert (= (and b!1002686 res!452637) b!1002687))

(assert (= (and b!1002687 res!452640) b!1002696))

(assert (= (and b!1002696 res!452641) b!1002692))

(assert (= (and b!1002686 (not res!452642)) b!1002689))

(assert (= (and b!1002689 res!452643) b!1002688))

(assert (= (and b!1002688 (not res!452638)) b!1002694))

(assert (= (and b!1002694 (not res!452639)) b!1002685))

(assert (= (or b!1002691 b!1002687 b!1002688) bm!66781))

(assert (=> bm!66781 m!1190633))

(declare-fun m!1190637 () Bool)

(assert (=> b!1002696 m!1190637))

(assert (=> b!1002696 m!1190637))

(declare-fun m!1190639 () Bool)

(assert (=> b!1002696 m!1190639))

(assert (=> b!1002694 m!1190637))

(assert (=> b!1002694 m!1190637))

(assert (=> b!1002694 m!1190639))

(declare-fun m!1190641 () Bool)

(assert (=> b!1002685 m!1190641))

(assert (=> b!1002692 m!1190641))

(assert (=> d!291451 m!1190633))

(assert (=> d!291451 m!1190593))

(declare-fun m!1190643 () Bool)

(assert (=> b!1002698 m!1190643))

(assert (=> b!1002693 m!1190641))

(assert (=> b!1002693 m!1190641))

(declare-fun m!1190645 () Bool)

(assert (=> b!1002693 m!1190645))

(assert (=> b!1002693 m!1190637))

(assert (=> b!1002693 m!1190645))

(assert (=> b!1002693 m!1190637))

(declare-fun m!1190647 () Bool)

(assert (=> b!1002693 m!1190647))

(assert (=> b!1002577 d!291451))

(declare-fun d!291453 () Bool)

(assert (=> d!291453 (= (matchR!1318 r!15766 s!10566) (matchRSpec!581 r!15766 s!10566))))

(declare-fun lt!352245 () Unit!15223)

(declare-fun choose!6357 (Regex!2782 List!10012) Unit!15223)

(assert (=> d!291453 (= lt!352245 (choose!6357 r!15766 s!10566))))

(assert (=> d!291453 (validRegex!1251 r!15766)))

(assert (=> d!291453 (= (mainMatchTheorem!581 r!15766 s!10566) lt!352245)))

(declare-fun bs!245125 () Bool)

(assert (= bs!245125 d!291453))

(assert (=> bs!245125 m!1190597))

(assert (=> bs!245125 m!1190595))

(declare-fun m!1190649 () Bool)

(assert (=> bs!245125 m!1190649))

(assert (=> bs!245125 m!1190593))

(assert (=> b!1002577 d!291453))

(declare-fun b!1002745 () Bool)

(declare-fun e!642637 () Bool)

(declare-fun call!66793 () Bool)

(assert (=> b!1002745 (= e!642637 call!66793)))

(declare-fun bm!66788 () Bool)

(declare-fun c!165181 () Bool)

(assert (=> bm!66788 (= call!66793 (validRegex!1251 (ite c!165181 (regTwo!6077 r!15766) (regTwo!6076 r!15766))))))

(declare-fun b!1002746 () Bool)

(declare-fun res!452667 () Bool)

(declare-fun e!642636 () Bool)

(assert (=> b!1002746 (=> res!452667 e!642636)))

(assert (=> b!1002746 (= res!452667 (not (is-Concat!4615 r!15766)))))

(declare-fun e!642638 () Bool)

(assert (=> b!1002746 (= e!642638 e!642636)))

(declare-fun b!1002747 () Bool)

(declare-fun e!642639 () Bool)

(declare-fun e!642640 () Bool)

(assert (=> b!1002747 (= e!642639 e!642640)))

(declare-fun c!165180 () Bool)

(assert (=> b!1002747 (= c!165180 (is-Star!2782 r!15766))))

(declare-fun d!291455 () Bool)

(declare-fun res!452669 () Bool)

(assert (=> d!291455 (=> res!452669 e!642639)))

(assert (=> d!291455 (= res!452669 (is-ElementMatch!2782 r!15766))))

(assert (=> d!291455 (= (validRegex!1251 r!15766) e!642639)))

(declare-fun b!1002748 () Bool)

(declare-fun res!452666 () Bool)

(assert (=> b!1002748 (=> (not res!452666) (not e!642637))))

(declare-fun call!66795 () Bool)

(assert (=> b!1002748 (= res!452666 call!66795)))

(assert (=> b!1002748 (= e!642638 e!642637)))

(declare-fun b!1002749 () Bool)

(declare-fun e!642635 () Bool)

(assert (=> b!1002749 (= e!642635 call!66793)))

(declare-fun b!1002750 () Bool)

(assert (=> b!1002750 (= e!642640 e!642638)))

(assert (=> b!1002750 (= c!165181 (is-Union!2782 r!15766))))

(declare-fun call!66794 () Bool)

(declare-fun bm!66789 () Bool)

(assert (=> bm!66789 (= call!66794 (validRegex!1251 (ite c!165180 (reg!3111 r!15766) (ite c!165181 (regOne!6077 r!15766) (regOne!6076 r!15766)))))))

(declare-fun b!1002751 () Bool)

(assert (=> b!1002751 (= e!642636 e!642635)))

(declare-fun res!452668 () Bool)

(assert (=> b!1002751 (=> (not res!452668) (not e!642635))))

(assert (=> b!1002751 (= res!452668 call!66795)))

(declare-fun bm!66790 () Bool)

(assert (=> bm!66790 (= call!66795 call!66794)))

(declare-fun b!1002752 () Bool)

(declare-fun e!642634 () Bool)

(assert (=> b!1002752 (= e!642640 e!642634)))

(declare-fun res!452670 () Bool)

(assert (=> b!1002752 (= res!452670 (not (nullable!894 (reg!3111 r!15766))))))

(assert (=> b!1002752 (=> (not res!452670) (not e!642634))))

(declare-fun b!1002753 () Bool)

(assert (=> b!1002753 (= e!642634 call!66794)))

(assert (= (and d!291455 (not res!452669)) b!1002747))

(assert (= (and b!1002747 c!165180) b!1002752))

(assert (= (and b!1002747 (not c!165180)) b!1002750))

(assert (= (and b!1002752 res!452670) b!1002753))

(assert (= (and b!1002750 c!165181) b!1002748))

(assert (= (and b!1002750 (not c!165181)) b!1002746))

(assert (= (and b!1002748 res!452666) b!1002745))

(assert (= (and b!1002746 (not res!452667)) b!1002751))

(assert (= (and b!1002751 res!452668) b!1002749))

(assert (= (or b!1002745 b!1002749) bm!66788))

(assert (= (or b!1002748 b!1002751) bm!66790))

(assert (= (or b!1002753 bm!66790) bm!66789))

(declare-fun m!1190651 () Bool)

(assert (=> bm!66788 m!1190651))

(declare-fun m!1190653 () Bool)

(assert (=> bm!66789 m!1190653))

(declare-fun m!1190655 () Bool)

(assert (=> b!1002752 m!1190655))

(assert (=> start!87988 d!291455))

(declare-fun d!291457 () Bool)

(declare-fun choose!6358 (Int) Bool)

(assert (=> d!291457 (= (Exists!515 lambda!35565) (choose!6358 lambda!35565))))

(declare-fun bs!245126 () Bool)

(assert (= bs!245126 d!291457))

(declare-fun m!1190657 () Bool)

(assert (=> bs!245126 m!1190657))

(assert (=> b!1002579 d!291457))

(declare-fun d!291459 () Bool)

(declare-fun isEmpty!6333 (Option!2321) Bool)

(assert (=> d!291459 (= (isDefined!1963 (findConcatSeparation!427 (reg!3111 r!15766) lt!352225 Nil!9996 s!10566 s!10566)) (not (isEmpty!6333 (findConcatSeparation!427 (reg!3111 r!15766) lt!352225 Nil!9996 s!10566 s!10566))))))

(declare-fun bs!245127 () Bool)

(assert (= bs!245127 d!291459))

(assert (=> bs!245127 m!1190605))

(declare-fun m!1190659 () Bool)

(assert (=> bs!245127 m!1190659))

(assert (=> b!1002579 d!291459))

(declare-fun bs!245128 () Bool)

(declare-fun d!291461 () Bool)

(assert (= bs!245128 (and d!291461 b!1002579)))

(declare-fun lambda!35581 () Int)

(assert (=> bs!245128 (= lambda!35581 lambda!35565)))

(declare-fun bs!245129 () Bool)

(assert (= bs!245129 (and d!291461 b!1002648)))

(assert (=> bs!245129 (not (= lambda!35581 lambda!35573))))

(declare-fun bs!245130 () Bool)

(assert (= bs!245130 (and d!291461 b!1002651)))

(assert (=> bs!245130 (not (= lambda!35581 lambda!35574))))

(assert (=> d!291461 true))

(assert (=> d!291461 true))

(assert (=> d!291461 true))

(assert (=> d!291461 (= (isDefined!1963 (findConcatSeparation!427 (reg!3111 r!15766) lt!352225 Nil!9996 s!10566 s!10566)) (Exists!515 lambda!35581))))

(declare-fun lt!352248 () Unit!15223)

(declare-fun choose!6359 (Regex!2782 Regex!2782 List!10012) Unit!15223)

(assert (=> d!291461 (= lt!352248 (choose!6359 (reg!3111 r!15766) lt!352225 s!10566))))

(assert (=> d!291461 (validRegex!1251 (reg!3111 r!15766))))

(assert (=> d!291461 (= (lemmaFindConcatSeparationEquivalentToExists!427 (reg!3111 r!15766) lt!352225 s!10566) lt!352248)))

(declare-fun bs!245131 () Bool)

(assert (= bs!245131 d!291461))

(declare-fun m!1190661 () Bool)

(assert (=> bs!245131 m!1190661))

(declare-fun m!1190663 () Bool)

(assert (=> bs!245131 m!1190663))

(assert (=> bs!245131 m!1190605))

(assert (=> bs!245131 m!1190609))

(assert (=> bs!245131 m!1190605))

(assert (=> bs!245131 m!1190607))

(assert (=> b!1002579 d!291461))

(declare-fun b!1002791 () Bool)

(declare-fun res!452694 () Bool)

(declare-fun e!642664 () Bool)

(assert (=> b!1002791 (=> (not res!452694) (not e!642664))))

(declare-fun lt!352255 () Option!2321)

(declare-fun get!3490 (Option!2321) tuple2!11358)

(assert (=> b!1002791 (= res!452694 (matchR!1318 lt!352225 (_2!6505 (get!3490 lt!352255))))))

(declare-fun b!1002792 () Bool)

(declare-fun e!642666 () Option!2321)

(declare-fun e!642665 () Option!2321)

(assert (=> b!1002792 (= e!642666 e!642665)))

(declare-fun c!165190 () Bool)

(assert (=> b!1002792 (= c!165190 (is-Nil!9996 s!10566))))

(declare-fun b!1002793 () Bool)

(declare-fun ++!2717 (List!10012 List!10012) List!10012)

(assert (=> b!1002793 (= e!642664 (= (++!2717 (_1!6505 (get!3490 lt!352255)) (_2!6505 (get!3490 lt!352255))) s!10566))))

(declare-fun b!1002794 () Bool)

(assert (=> b!1002794 (= e!642666 (Some!2320 (tuple2!11359 Nil!9996 s!10566)))))

(declare-fun b!1002795 () Bool)

(declare-fun e!642663 () Bool)

(assert (=> b!1002795 (= e!642663 (not (isDefined!1963 lt!352255)))))

(declare-fun b!1002796 () Bool)

(declare-fun lt!352256 () Unit!15223)

(declare-fun lt!352257 () Unit!15223)

(assert (=> b!1002796 (= lt!352256 lt!352257)))

(assert (=> b!1002796 (= (++!2717 (++!2717 Nil!9996 (Cons!9996 (h!15397 s!10566) Nil!9996)) (t!101058 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!317 (List!10012 C!6134 List!10012 List!10012) Unit!15223)

(assert (=> b!1002796 (= lt!352257 (lemmaMoveElementToOtherListKeepsConcatEq!317 Nil!9996 (h!15397 s!10566) (t!101058 s!10566) s!10566))))

(assert (=> b!1002796 (= e!642665 (findConcatSeparation!427 (reg!3111 r!15766) lt!352225 (++!2717 Nil!9996 (Cons!9996 (h!15397 s!10566) Nil!9996)) (t!101058 s!10566) s!10566))))

(declare-fun b!1002797 () Bool)

(assert (=> b!1002797 (= e!642665 None!2320)))

(declare-fun d!291463 () Bool)

(assert (=> d!291463 e!642663))

(declare-fun res!452693 () Bool)

(assert (=> d!291463 (=> res!452693 e!642663)))

(assert (=> d!291463 (= res!452693 e!642664)))

(declare-fun res!452692 () Bool)

(assert (=> d!291463 (=> (not res!452692) (not e!642664))))

(assert (=> d!291463 (= res!452692 (isDefined!1963 lt!352255))))

(assert (=> d!291463 (= lt!352255 e!642666)))

(declare-fun c!165191 () Bool)

(declare-fun e!642662 () Bool)

(assert (=> d!291463 (= c!165191 e!642662)))

(declare-fun res!452696 () Bool)

(assert (=> d!291463 (=> (not res!452696) (not e!642662))))

(assert (=> d!291463 (= res!452696 (matchR!1318 (reg!3111 r!15766) Nil!9996))))

(assert (=> d!291463 (validRegex!1251 (reg!3111 r!15766))))

(assert (=> d!291463 (= (findConcatSeparation!427 (reg!3111 r!15766) lt!352225 Nil!9996 s!10566 s!10566) lt!352255)))

(declare-fun b!1002798 () Bool)

(declare-fun res!452695 () Bool)

(assert (=> b!1002798 (=> (not res!452695) (not e!642664))))

(assert (=> b!1002798 (= res!452695 (matchR!1318 (reg!3111 r!15766) (_1!6505 (get!3490 lt!352255))))))

(declare-fun b!1002799 () Bool)

(assert (=> b!1002799 (= e!642662 (matchR!1318 lt!352225 s!10566))))

(assert (= (and d!291463 res!452696) b!1002799))

(assert (= (and d!291463 c!165191) b!1002794))

(assert (= (and d!291463 (not c!165191)) b!1002792))

(assert (= (and b!1002792 c!165190) b!1002797))

(assert (= (and b!1002792 (not c!165190)) b!1002796))

(assert (= (and d!291463 res!452692) b!1002798))

(assert (= (and b!1002798 res!452695) b!1002791))

(assert (= (and b!1002791 res!452694) b!1002793))

(assert (= (and d!291463 (not res!452693)) b!1002795))

(declare-fun m!1190673 () Bool)

(assert (=> b!1002798 m!1190673))

(declare-fun m!1190675 () Bool)

(assert (=> b!1002798 m!1190675))

(assert (=> b!1002791 m!1190673))

(declare-fun m!1190677 () Bool)

(assert (=> b!1002791 m!1190677))

(declare-fun m!1190679 () Bool)

(assert (=> b!1002795 m!1190679))

(declare-fun m!1190681 () Bool)

(assert (=> b!1002799 m!1190681))

(declare-fun m!1190683 () Bool)

(assert (=> b!1002796 m!1190683))

(assert (=> b!1002796 m!1190683))

(declare-fun m!1190685 () Bool)

(assert (=> b!1002796 m!1190685))

(declare-fun m!1190687 () Bool)

(assert (=> b!1002796 m!1190687))

(assert (=> b!1002796 m!1190683))

(declare-fun m!1190689 () Bool)

(assert (=> b!1002796 m!1190689))

(assert (=> b!1002793 m!1190673))

(declare-fun m!1190691 () Bool)

(assert (=> b!1002793 m!1190691))

(assert (=> d!291463 m!1190679))

(declare-fun m!1190693 () Bool)

(assert (=> d!291463 m!1190693))

(assert (=> d!291463 m!1190607))

(assert (=> b!1002579 d!291463))

(declare-fun b!1002800 () Bool)

(declare-fun e!642670 () Bool)

(declare-fun call!66802 () Bool)

(assert (=> b!1002800 (= e!642670 call!66802)))

(declare-fun bm!66797 () Bool)

(declare-fun c!165193 () Bool)

(assert (=> bm!66797 (= call!66802 (validRegex!1251 (ite c!165193 (regTwo!6077 (reg!3111 r!15766)) (regTwo!6076 (reg!3111 r!15766)))))))

(declare-fun b!1002801 () Bool)

(declare-fun res!452698 () Bool)

(declare-fun e!642669 () Bool)

(assert (=> b!1002801 (=> res!452698 e!642669)))

(assert (=> b!1002801 (= res!452698 (not (is-Concat!4615 (reg!3111 r!15766))))))

(declare-fun e!642671 () Bool)

(assert (=> b!1002801 (= e!642671 e!642669)))

(declare-fun b!1002802 () Bool)

(declare-fun e!642672 () Bool)

(declare-fun e!642673 () Bool)

(assert (=> b!1002802 (= e!642672 e!642673)))

(declare-fun c!165192 () Bool)

(assert (=> b!1002802 (= c!165192 (is-Star!2782 (reg!3111 r!15766)))))

(declare-fun d!291467 () Bool)

(declare-fun res!452700 () Bool)

(assert (=> d!291467 (=> res!452700 e!642672)))

(assert (=> d!291467 (= res!452700 (is-ElementMatch!2782 (reg!3111 r!15766)))))

(assert (=> d!291467 (= (validRegex!1251 (reg!3111 r!15766)) e!642672)))

(declare-fun b!1002803 () Bool)

(declare-fun res!452697 () Bool)

(assert (=> b!1002803 (=> (not res!452697) (not e!642670))))

(declare-fun call!66804 () Bool)

(assert (=> b!1002803 (= res!452697 call!66804)))

(assert (=> b!1002803 (= e!642671 e!642670)))

(declare-fun b!1002804 () Bool)

(declare-fun e!642668 () Bool)

(assert (=> b!1002804 (= e!642668 call!66802)))

(declare-fun b!1002805 () Bool)

(assert (=> b!1002805 (= e!642673 e!642671)))

(assert (=> b!1002805 (= c!165193 (is-Union!2782 (reg!3111 r!15766)))))

(declare-fun bm!66798 () Bool)

(declare-fun call!66803 () Bool)

(assert (=> bm!66798 (= call!66803 (validRegex!1251 (ite c!165192 (reg!3111 (reg!3111 r!15766)) (ite c!165193 (regOne!6077 (reg!3111 r!15766)) (regOne!6076 (reg!3111 r!15766))))))))

(declare-fun b!1002806 () Bool)

(assert (=> b!1002806 (= e!642669 e!642668)))

(declare-fun res!452699 () Bool)

(assert (=> b!1002806 (=> (not res!452699) (not e!642668))))

(assert (=> b!1002806 (= res!452699 call!66804)))

(declare-fun bm!66799 () Bool)

(assert (=> bm!66799 (= call!66804 call!66803)))

(declare-fun b!1002807 () Bool)

(declare-fun e!642667 () Bool)

(assert (=> b!1002807 (= e!642673 e!642667)))

(declare-fun res!452701 () Bool)

(assert (=> b!1002807 (= res!452701 (not (nullable!894 (reg!3111 (reg!3111 r!15766)))))))

(assert (=> b!1002807 (=> (not res!452701) (not e!642667))))

(declare-fun b!1002808 () Bool)

(assert (=> b!1002808 (= e!642667 call!66803)))

(assert (= (and d!291467 (not res!452700)) b!1002802))

(assert (= (and b!1002802 c!165192) b!1002807))

(assert (= (and b!1002802 (not c!165192)) b!1002805))

(assert (= (and b!1002807 res!452701) b!1002808))

(assert (= (and b!1002805 c!165193) b!1002803))

(assert (= (and b!1002805 (not c!165193)) b!1002801))

(assert (= (and b!1002803 res!452697) b!1002800))

(assert (= (and b!1002801 (not res!452698)) b!1002806))

(assert (= (and b!1002806 res!452699) b!1002804))

(assert (= (or b!1002800 b!1002804) bm!66797))

(assert (= (or b!1002803 b!1002806) bm!66799))

(assert (= (or b!1002808 bm!66799) bm!66798))

(declare-fun m!1190695 () Bool)

(assert (=> bm!66797 m!1190695))

(declare-fun m!1190697 () Bool)

(assert (=> bm!66798 m!1190697))

(declare-fun m!1190699 () Bool)

(assert (=> b!1002807 m!1190699))

(assert (=> b!1002579 d!291467))

(declare-fun b!1002819 () Bool)

(declare-fun e!642676 () Bool)

(assert (=> b!1002819 (= e!642676 tp_is_empty!5207)))

(assert (=> b!1002574 (= tp!305317 e!642676)))

(declare-fun b!1002821 () Bool)

(declare-fun tp!305350 () Bool)

(assert (=> b!1002821 (= e!642676 tp!305350)))

(declare-fun b!1002822 () Bool)

(declare-fun tp!305351 () Bool)

(declare-fun tp!305347 () Bool)

(assert (=> b!1002822 (= e!642676 (and tp!305351 tp!305347))))

(declare-fun b!1002820 () Bool)

(declare-fun tp!305348 () Bool)

(declare-fun tp!305349 () Bool)

(assert (=> b!1002820 (= e!642676 (and tp!305348 tp!305349))))

(assert (= (and b!1002574 (is-ElementMatch!2782 (regOne!6077 r!15766))) b!1002819))

(assert (= (and b!1002574 (is-Concat!4615 (regOne!6077 r!15766))) b!1002820))

(assert (= (and b!1002574 (is-Star!2782 (regOne!6077 r!15766))) b!1002821))

(assert (= (and b!1002574 (is-Union!2782 (regOne!6077 r!15766))) b!1002822))

(declare-fun b!1002823 () Bool)

(declare-fun e!642677 () Bool)

(assert (=> b!1002823 (= e!642677 tp_is_empty!5207)))

(assert (=> b!1002574 (= tp!305315 e!642677)))

(declare-fun b!1002825 () Bool)

(declare-fun tp!305355 () Bool)

(assert (=> b!1002825 (= e!642677 tp!305355)))

(declare-fun b!1002826 () Bool)

(declare-fun tp!305356 () Bool)

(declare-fun tp!305352 () Bool)

(assert (=> b!1002826 (= e!642677 (and tp!305356 tp!305352))))

(declare-fun b!1002824 () Bool)

(declare-fun tp!305353 () Bool)

(declare-fun tp!305354 () Bool)

(assert (=> b!1002824 (= e!642677 (and tp!305353 tp!305354))))

(assert (= (and b!1002574 (is-ElementMatch!2782 (regTwo!6077 r!15766))) b!1002823))

(assert (= (and b!1002574 (is-Concat!4615 (regTwo!6077 r!15766))) b!1002824))

(assert (= (and b!1002574 (is-Star!2782 (regTwo!6077 r!15766))) b!1002825))

(assert (= (and b!1002574 (is-Union!2782 (regTwo!6077 r!15766))) b!1002826))

(declare-fun b!1002831 () Bool)

(declare-fun e!642680 () Bool)

(declare-fun tp!305359 () Bool)

(assert (=> b!1002831 (= e!642680 (and tp_is_empty!5207 tp!305359))))

(assert (=> b!1002580 (= tp!305313 e!642680)))

(assert (= (and b!1002580 (is-Cons!9996 (t!101058 s!10566))) b!1002831))

(declare-fun b!1002832 () Bool)

(declare-fun e!642681 () Bool)

(assert (=> b!1002832 (= e!642681 tp_is_empty!5207)))

(assert (=> b!1002576 (= tp!305314 e!642681)))

(declare-fun b!1002834 () Bool)

(declare-fun tp!305363 () Bool)

(assert (=> b!1002834 (= e!642681 tp!305363)))

(declare-fun b!1002835 () Bool)

(declare-fun tp!305364 () Bool)

(declare-fun tp!305360 () Bool)

(assert (=> b!1002835 (= e!642681 (and tp!305364 tp!305360))))

(declare-fun b!1002833 () Bool)

(declare-fun tp!305361 () Bool)

(declare-fun tp!305362 () Bool)

(assert (=> b!1002833 (= e!642681 (and tp!305361 tp!305362))))

(assert (= (and b!1002576 (is-ElementMatch!2782 (reg!3111 r!15766))) b!1002832))

(assert (= (and b!1002576 (is-Concat!4615 (reg!3111 r!15766))) b!1002833))

(assert (= (and b!1002576 (is-Star!2782 (reg!3111 r!15766))) b!1002834))

(assert (= (and b!1002576 (is-Union!2782 (reg!3111 r!15766))) b!1002835))

(declare-fun b!1002836 () Bool)

(declare-fun e!642682 () Bool)

(assert (=> b!1002836 (= e!642682 tp_is_empty!5207)))

(assert (=> b!1002578 (= tp!305316 e!642682)))

(declare-fun b!1002838 () Bool)

(declare-fun tp!305368 () Bool)

(assert (=> b!1002838 (= e!642682 tp!305368)))

(declare-fun b!1002839 () Bool)

(declare-fun tp!305369 () Bool)

(declare-fun tp!305365 () Bool)

(assert (=> b!1002839 (= e!642682 (and tp!305369 tp!305365))))

(declare-fun b!1002837 () Bool)

(declare-fun tp!305366 () Bool)

(declare-fun tp!305367 () Bool)

(assert (=> b!1002837 (= e!642682 (and tp!305366 tp!305367))))

(assert (= (and b!1002578 (is-ElementMatch!2782 (regOne!6076 r!15766))) b!1002836))

(assert (= (and b!1002578 (is-Concat!4615 (regOne!6076 r!15766))) b!1002837))

(assert (= (and b!1002578 (is-Star!2782 (regOne!6076 r!15766))) b!1002838))

(assert (= (and b!1002578 (is-Union!2782 (regOne!6076 r!15766))) b!1002839))

(declare-fun b!1002840 () Bool)

(declare-fun e!642683 () Bool)

(assert (=> b!1002840 (= e!642683 tp_is_empty!5207)))

(assert (=> b!1002578 (= tp!305318 e!642683)))

(declare-fun b!1002842 () Bool)

(declare-fun tp!305373 () Bool)

(assert (=> b!1002842 (= e!642683 tp!305373)))

(declare-fun b!1002843 () Bool)

(declare-fun tp!305374 () Bool)

(declare-fun tp!305370 () Bool)

(assert (=> b!1002843 (= e!642683 (and tp!305374 tp!305370))))

(declare-fun b!1002841 () Bool)

(declare-fun tp!305371 () Bool)

(declare-fun tp!305372 () Bool)

(assert (=> b!1002841 (= e!642683 (and tp!305371 tp!305372))))

(assert (= (and b!1002578 (is-ElementMatch!2782 (regTwo!6076 r!15766))) b!1002840))

(assert (= (and b!1002578 (is-Concat!4615 (regTwo!6076 r!15766))) b!1002841))

(assert (= (and b!1002578 (is-Star!2782 (regTwo!6076 r!15766))) b!1002842))

(assert (= (and b!1002578 (is-Union!2782 (regTwo!6076 r!15766))) b!1002843))

(push 1)

(assert (not bm!66788))

(assert (not b!1002834))

(assert (not b!1002831))

(assert (not b!1002843))

(assert (not b!1002692))

(assert (not b!1002791))

(assert (not b!1002842))

(assert (not b!1002693))

(assert (not b!1002825))

(assert (not b!1002654))

(assert (not b!1002837))

(assert (not b!1002796))

(assert (not b!1002838))

(assert (not b!1002798))

(assert (not bm!66797))

(assert (not b!1002752))

(assert (not b!1002841))

(assert (not b!1002833))

(assert (not d!291459))

(assert (not bm!66789))

(assert (not d!291451))

(assert (not d!291453))

(assert tp_is_empty!5207)

(assert (not b!1002820))

(assert (not bm!66778))

(assert (not b!1002822))

(assert (not b!1002694))

(assert (not b!1002826))

(assert (not b!1002821))

(assert (not bm!66777))

(assert (not b!1002807))

(assert (not d!291457))

(assert (not b!1002824))

(assert (not b!1002835))

(assert (not b!1002839))

(assert (not d!291463))

(assert (not b!1002793))

(assert (not b!1002698))

(assert (not b!1002685))

(assert (not b!1002799))

(assert (not b!1002652))

(assert (not bm!66781))

(assert (not b!1002696))

(assert (not bm!66798))

(assert (not b!1002795))

(assert (not d!291461))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

