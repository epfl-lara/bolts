; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236854 () Bool)

(assert start!236854)

(declare-fun b!2417679 () Bool)

(declare-fun e!1538435 () Bool)

(declare-fun e!1538436 () Bool)

(assert (=> b!2417679 (= e!1538435 e!1538436)))

(declare-fun res!1026757 () Bool)

(assert (=> b!2417679 (=> res!1026757 e!1538436)))

(declare-datatypes ((C!14370 0))(
  ( (C!14371 (val!8427 Int)) )
))
(declare-datatypes ((Regex!7106 0))(
  ( (ElementMatch!7106 (c!385299 C!14370)) (Concat!11742 (regOne!14724 Regex!7106) (regTwo!14724 Regex!7106)) (EmptyExpr!7106) (Star!7106 (reg!7435 Regex!7106)) (EmptyLang!7106) (Union!7106 (regOne!14725 Regex!7106) (regTwo!14725 Regex!7106)) )
))
(declare-fun lt!874545 () Regex!7106)

(declare-datatypes ((List!28450 0))(
  ( (Nil!28352) (Cons!28352 (h!33753 C!14370) (t!208427 List!28450)) )
))
(declare-fun s!9460 () List!28450)

(declare-fun matchR!3223 (Regex!7106 List!28450) Bool)

(assert (=> b!2417679 (= res!1026757 (matchR!3223 lt!874545 s!9460))))

(declare-datatypes ((List!28451 0))(
  ( (Nil!28353) (Cons!28353 (h!33754 Regex!7106) (t!208428 List!28451)) )
))
(declare-fun l!9164 () List!28451)

(declare-fun head!5424 (List!28451) Regex!7106)

(assert (=> b!2417679 (= lt!874545 (head!5424 l!9164))))

(declare-fun b!2417680 () Bool)

(declare-fun e!1538433 () Bool)

(assert (=> b!2417680 (= e!1538436 e!1538433)))

(declare-fun res!1026759 () Bool)

(assert (=> b!2417680 (=> res!1026759 e!1538433)))

(declare-fun validRegex!2826 (Regex!7106) Bool)

(assert (=> b!2417680 (= res!1026759 (not (validRegex!2826 lt!874545)))))

(declare-fun lt!874544 () Bool)

(assert (=> b!2417680 (not lt!874544)))

(declare-datatypes ((Unit!41499 0))(
  ( (Unit!41500) )
))
(declare-fun lt!874547 () Unit!41499)

(declare-fun e!1538437 () Unit!41499)

(assert (=> b!2417680 (= lt!874547 e!1538437)))

(declare-fun c!385298 () Bool)

(assert (=> b!2417680 (= c!385298 lt!874544)))

(declare-datatypes ((tuple2!27992 0))(
  ( (tuple2!27993 (_1!16537 List!28450) (_2!16537 List!28450)) )
))
(declare-datatypes ((Option!5607 0))(
  ( (None!5606) (Some!5606 (v!31014 tuple2!27992)) )
))
(declare-fun lt!874546 () Option!5607)

(declare-fun isDefined!4433 (Option!5607) Bool)

(assert (=> b!2417680 (= lt!874544 (isDefined!4433 lt!874546))))

(declare-fun findConcatSeparation!715 (Regex!7106 Regex!7106 List!28450 List!28450 List!28450) Option!5607)

(assert (=> b!2417680 (= lt!874546 (findConcatSeparation!715 lt!874545 EmptyExpr!7106 Nil!28352 s!9460 s!9460))))

(declare-fun b!2417681 () Bool)

(declare-fun e!1538439 () Bool)

(declare-fun e!1538440 () Bool)

(assert (=> b!2417681 (= e!1538439 (not e!1538440))))

(declare-fun res!1026753 () Bool)

(assert (=> b!2417681 (=> res!1026753 e!1538440)))

(declare-fun r!13927 () Regex!7106)

(assert (=> b!2417681 (= res!1026753 (or (is-Concat!11742 r!13927) (is-EmptyExpr!7106 r!13927)))))

(declare-fun matchRSpec!955 (Regex!7106 List!28450) Bool)

(assert (=> b!2417681 (= (matchR!3223 r!13927 s!9460) (matchRSpec!955 r!13927 s!9460))))

(declare-fun lt!874548 () Unit!41499)

(declare-fun mainMatchTheorem!955 (Regex!7106 List!28450) Unit!41499)

(assert (=> b!2417681 (= lt!874548 (mainMatchTheorem!955 r!13927 s!9460))))

(declare-fun b!2417682 () Bool)

(declare-fun res!1026755 () Bool)

(assert (=> b!2417682 (=> res!1026755 e!1538440)))

(declare-fun isEmpty!16364 (List!28451) Bool)

(assert (=> b!2417682 (= res!1026755 (isEmpty!16364 l!9164))))

(declare-fun res!1026760 () Bool)

(assert (=> start!236854 (=> (not res!1026760) (not e!1538439))))

(declare-fun lambda!91058 () Int)

(declare-fun forall!5740 (List!28451 Int) Bool)

(assert (=> start!236854 (= res!1026760 (forall!5740 l!9164 lambda!91058))))

(assert (=> start!236854 e!1538439))

(declare-fun e!1538438 () Bool)

(assert (=> start!236854 e!1538438))

(declare-fun e!1538431 () Bool)

(assert (=> start!236854 e!1538431))

(declare-fun e!1538441 () Bool)

(assert (=> start!236854 e!1538441))

(declare-fun b!2417683 () Bool)

(declare-fun e!1538434 () Bool)

(assert (=> b!2417683 (= e!1538434 false)))

(declare-fun b!2417684 () Bool)

(declare-fun tp_is_empty!11625 () Bool)

(assert (=> b!2417684 (= e!1538431 tp_is_empty!11625)))

(declare-fun b!2417685 () Bool)

(declare-fun tp!768729 () Bool)

(declare-fun tp!768735 () Bool)

(assert (=> b!2417685 (= e!1538431 (and tp!768729 tp!768735))))

(declare-fun b!2417686 () Bool)

(declare-fun Unit!41501 () Unit!41499)

(assert (=> b!2417686 (= e!1538437 Unit!41501)))

(declare-fun b!2417687 () Bool)

(declare-fun tp!768733 () Bool)

(assert (=> b!2417687 (= e!1538431 tp!768733)))

(declare-fun b!2417688 () Bool)

(declare-fun res!1026758 () Bool)

(assert (=> b!2417688 (=> res!1026758 e!1538433)))

(declare-fun lt!874550 () Regex!7106)

(assert (=> b!2417688 (= res!1026758 (not (validRegex!2826 lt!874550)))))

(declare-fun b!2417689 () Bool)

(declare-fun res!1026761 () Bool)

(assert (=> b!2417689 (=> (not res!1026761) (not e!1538439))))

(declare-fun generalisedConcat!207 (List!28451) Regex!7106)

(assert (=> b!2417689 (= res!1026761 (= r!13927 (generalisedConcat!207 l!9164)))))

(declare-fun b!2417690 () Bool)

(declare-fun tp!768734 () Bool)

(declare-fun tp!768731 () Bool)

(assert (=> b!2417690 (= e!1538431 (and tp!768734 tp!768731))))

(declare-fun b!2417691 () Bool)

(declare-fun tp!768728 () Bool)

(declare-fun tp!768732 () Bool)

(assert (=> b!2417691 (= e!1538438 (and tp!768728 tp!768732))))

(declare-fun b!2417692 () Bool)

(declare-fun Unit!41502 () Unit!41499)

(assert (=> b!2417692 (= e!1538437 Unit!41502)))

(declare-fun lt!874549 () tuple2!27992)

(declare-fun get!8712 (Option!5607) tuple2!27992)

(assert (=> b!2417692 (= lt!874549 (get!8712 lt!874546))))

(declare-fun lt!874543 () Unit!41499)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!55 (Regex!7106 Regex!7106 List!28450 List!28450 List!28450) Unit!41499)

(assert (=> b!2417692 (= lt!874543 (lemmaFindSeparationIsDefinedThenConcatMatches!55 lt!874545 EmptyExpr!7106 (_1!16537 lt!874549) (_2!16537 lt!874549) s!9460))))

(declare-fun res!1026762 () Bool)

(declare-fun ++!7027 (List!28450 List!28450) List!28450)

(assert (=> b!2417692 (= res!1026762 (matchR!3223 (Concat!11742 lt!874545 EmptyExpr!7106) (++!7027 (_1!16537 lt!874549) (_2!16537 lt!874549))))))

(assert (=> b!2417692 (=> (not res!1026762) (not e!1538434))))

(assert (=> b!2417692 e!1538434))

(declare-fun b!2417693 () Bool)

(declare-fun tp!768730 () Bool)

(assert (=> b!2417693 (= e!1538441 (and tp_is_empty!11625 tp!768730))))

(declare-fun b!2417694 () Bool)

(declare-fun e!1538432 () Bool)

(assert (=> b!2417694 (= e!1538440 e!1538432)))

(declare-fun res!1026754 () Bool)

(assert (=> b!2417694 (=> res!1026754 e!1538432)))

(declare-fun lt!874551 () List!28451)

(assert (=> b!2417694 (= res!1026754 (not (isEmpty!16364 lt!874551)))))

(declare-fun tail!3696 (List!28451) List!28451)

(assert (=> b!2417694 (= lt!874551 (tail!3696 l!9164))))

(declare-fun b!2417695 () Bool)

(assert (=> b!2417695 (= e!1538432 e!1538435)))

(declare-fun res!1026756 () Bool)

(assert (=> b!2417695 (=> res!1026756 e!1538435)))

(assert (=> b!2417695 (= res!1026756 (not (= lt!874550 EmptyExpr!7106)))))

(assert (=> b!2417695 (= lt!874550 (generalisedConcat!207 lt!874551))))

(declare-fun b!2417696 () Bool)

(assert (=> b!2417696 (= e!1538433 (= (++!7027 Nil!28352 s!9460) s!9460))))

(assert (= (and start!236854 res!1026760) b!2417689))

(assert (= (and b!2417689 res!1026761) b!2417681))

(assert (= (and b!2417681 (not res!1026753)) b!2417682))

(assert (= (and b!2417682 (not res!1026755)) b!2417694))

(assert (= (and b!2417694 (not res!1026754)) b!2417695))

(assert (= (and b!2417695 (not res!1026756)) b!2417679))

(assert (= (and b!2417679 (not res!1026757)) b!2417680))

(assert (= (and b!2417680 c!385298) b!2417692))

(assert (= (and b!2417680 (not c!385298)) b!2417686))

(assert (= (and b!2417692 res!1026762) b!2417683))

(assert (= (and b!2417680 (not res!1026759)) b!2417688))

(assert (= (and b!2417688 (not res!1026758)) b!2417696))

(assert (= (and start!236854 (is-Cons!28353 l!9164)) b!2417691))

(assert (= (and start!236854 (is-ElementMatch!7106 r!13927)) b!2417684))

(assert (= (and start!236854 (is-Concat!11742 r!13927)) b!2417685))

(assert (= (and start!236854 (is-Star!7106 r!13927)) b!2417687))

(assert (= (and start!236854 (is-Union!7106 r!13927)) b!2417690))

(assert (= (and start!236854 (is-Cons!28352 s!9460)) b!2417693))

(declare-fun m!2805651 () Bool)

(assert (=> b!2417682 m!2805651))

(declare-fun m!2805653 () Bool)

(assert (=> start!236854 m!2805653))

(declare-fun m!2805655 () Bool)

(assert (=> b!2417692 m!2805655))

(declare-fun m!2805657 () Bool)

(assert (=> b!2417692 m!2805657))

(declare-fun m!2805659 () Bool)

(assert (=> b!2417692 m!2805659))

(assert (=> b!2417692 m!2805659))

(declare-fun m!2805661 () Bool)

(assert (=> b!2417692 m!2805661))

(declare-fun m!2805663 () Bool)

(assert (=> b!2417696 m!2805663))

(declare-fun m!2805665 () Bool)

(assert (=> b!2417680 m!2805665))

(declare-fun m!2805667 () Bool)

(assert (=> b!2417680 m!2805667))

(declare-fun m!2805669 () Bool)

(assert (=> b!2417680 m!2805669))

(declare-fun m!2805671 () Bool)

(assert (=> b!2417695 m!2805671))

(declare-fun m!2805673 () Bool)

(assert (=> b!2417689 m!2805673))

(declare-fun m!2805675 () Bool)

(assert (=> b!2417688 m!2805675))

(declare-fun m!2805677 () Bool)

(assert (=> b!2417694 m!2805677))

(declare-fun m!2805679 () Bool)

(assert (=> b!2417694 m!2805679))

(declare-fun m!2805681 () Bool)

(assert (=> b!2417679 m!2805681))

(declare-fun m!2805683 () Bool)

(assert (=> b!2417679 m!2805683))

(declare-fun m!2805685 () Bool)

(assert (=> b!2417681 m!2805685))

(declare-fun m!2805687 () Bool)

(assert (=> b!2417681 m!2805687))

(declare-fun m!2805689 () Bool)

(assert (=> b!2417681 m!2805689))

(push 1)

(assert (not b!2417680))

(assert (not b!2417693))

(assert (not b!2417695))

(assert (not start!236854))

(assert (not b!2417682))

(assert (not b!2417681))

(assert tp_is_empty!11625)

(assert (not b!2417689))

(assert (not b!2417690))

(assert (not b!2417685))

(assert (not b!2417694))

(assert (not b!2417696))

(assert (not b!2417679))

(assert (not b!2417687))

(assert (not b!2417692))

(assert (not b!2417691))

(assert (not b!2417688))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2417769 () Bool)

(declare-fun e!1538489 () Bool)

(declare-fun e!1538492 () Bool)

(assert (=> b!2417769 (= e!1538489 e!1538492)))

(declare-fun c!385309 () Bool)

(assert (=> b!2417769 (= c!385309 (is-Union!7106 lt!874545))))

(declare-fun b!2417770 () Bool)

(declare-fun e!1538491 () Bool)

(declare-fun call!147608 () Bool)

(assert (=> b!2417770 (= e!1538491 call!147608)))

(declare-fun b!2417771 () Bool)

(declare-fun res!1026807 () Bool)

(declare-fun e!1538493 () Bool)

(assert (=> b!2417771 (=> res!1026807 e!1538493)))

(assert (=> b!2417771 (= res!1026807 (not (is-Concat!11742 lt!874545)))))

(assert (=> b!2417771 (= e!1538492 e!1538493)))

(declare-fun b!2417772 () Bool)

(declare-fun res!1026806 () Bool)

(declare-fun e!1538495 () Bool)

(assert (=> b!2417772 (=> (not res!1026806) (not e!1538495))))

(assert (=> b!2417772 (= res!1026806 call!147608)))

(assert (=> b!2417772 (= e!1538492 e!1538495)))

(declare-fun b!2417773 () Bool)

(declare-fun e!1538490 () Bool)

(assert (=> b!2417773 (= e!1538489 e!1538490)))

(declare-fun res!1026804 () Bool)

(declare-fun nullable!2141 (Regex!7106) Bool)

(assert (=> b!2417773 (= res!1026804 (not (nullable!2141 (reg!7435 lt!874545))))))

(assert (=> b!2417773 (=> (not res!1026804) (not e!1538490))))

(declare-fun b!2417774 () Bool)

(declare-fun call!147609 () Bool)

(assert (=> b!2417774 (= e!1538495 call!147609)))

(declare-fun b!2417775 () Bool)

(assert (=> b!2417775 (= e!1538493 e!1538491)))

(declare-fun res!1026805 () Bool)

(assert (=> b!2417775 (=> (not res!1026805) (not e!1538491))))

(assert (=> b!2417775 (= res!1026805 call!147609)))

(declare-fun d!701398 () Bool)

(declare-fun res!1026803 () Bool)

(declare-fun e!1538494 () Bool)

(assert (=> d!701398 (=> res!1026803 e!1538494)))

(assert (=> d!701398 (= res!1026803 (is-ElementMatch!7106 lt!874545))))

(assert (=> d!701398 (= (validRegex!2826 lt!874545) e!1538494)))

(declare-fun b!2417776 () Bool)

(declare-fun call!147607 () Bool)

(assert (=> b!2417776 (= e!1538490 call!147607)))

(declare-fun b!2417777 () Bool)

(assert (=> b!2417777 (= e!1538494 e!1538489)))

(declare-fun c!385308 () Bool)

(assert (=> b!2417777 (= c!385308 (is-Star!7106 lt!874545))))

(declare-fun bm!147602 () Bool)

(assert (=> bm!147602 (= call!147609 (validRegex!2826 (ite c!385309 (regTwo!14725 lt!874545) (regOne!14724 lt!874545))))))

(declare-fun bm!147603 () Bool)

(assert (=> bm!147603 (= call!147608 call!147607)))

(declare-fun bm!147604 () Bool)

(assert (=> bm!147604 (= call!147607 (validRegex!2826 (ite c!385308 (reg!7435 lt!874545) (ite c!385309 (regOne!14725 lt!874545) (regTwo!14724 lt!874545)))))))

(assert (= (and d!701398 (not res!1026803)) b!2417777))

(assert (= (and b!2417777 c!385308) b!2417773))

(assert (= (and b!2417777 (not c!385308)) b!2417769))

(assert (= (and b!2417773 res!1026804) b!2417776))

(assert (= (and b!2417769 c!385309) b!2417772))

(assert (= (and b!2417769 (not c!385309)) b!2417771))

(assert (= (and b!2417772 res!1026806) b!2417774))

(assert (= (and b!2417771 (not res!1026807)) b!2417775))

(assert (= (and b!2417775 res!1026805) b!2417770))

(assert (= (or b!2417772 b!2417770) bm!147603))

(assert (= (or b!2417774 b!2417775) bm!147602))

(assert (= (or b!2417776 bm!147603) bm!147604))

(declare-fun m!2805731 () Bool)

(assert (=> b!2417773 m!2805731))

(declare-fun m!2805733 () Bool)

(assert (=> bm!147602 m!2805733))

(declare-fun m!2805735 () Bool)

(assert (=> bm!147604 m!2805735))

(assert (=> b!2417680 d!701398))

(declare-fun d!701402 () Bool)

(declare-fun isEmpty!16366 (Option!5607) Bool)

(assert (=> d!701402 (= (isDefined!4433 lt!874546) (not (isEmpty!16366 lt!874546)))))

(declare-fun bs!463621 () Bool)

(assert (= bs!463621 d!701402))

(declare-fun m!2805737 () Bool)

(assert (=> bs!463621 m!2805737))

(assert (=> b!2417680 d!701402))

(declare-fun b!2417802 () Bool)

(declare-fun lt!874587 () Unit!41499)

(declare-fun lt!874585 () Unit!41499)

(assert (=> b!2417802 (= lt!874587 lt!874585)))

(assert (=> b!2417802 (= (++!7027 (++!7027 Nil!28352 (Cons!28352 (h!33753 s!9460) Nil!28352)) (t!208427 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!653 (List!28450 C!14370 List!28450 List!28450) Unit!41499)

(assert (=> b!2417802 (= lt!874585 (lemmaMoveElementToOtherListKeepsConcatEq!653 Nil!28352 (h!33753 s!9460) (t!208427 s!9460) s!9460))))

(declare-fun e!1538514 () Option!5607)

(assert (=> b!2417802 (= e!1538514 (findConcatSeparation!715 lt!874545 EmptyExpr!7106 (++!7027 Nil!28352 (Cons!28352 (h!33753 s!9460) Nil!28352)) (t!208427 s!9460) s!9460))))

(declare-fun b!2417803 () Bool)

(declare-fun e!1538515 () Option!5607)

(assert (=> b!2417803 (= e!1538515 e!1538514)))

(declare-fun c!385314 () Bool)

(assert (=> b!2417803 (= c!385314 (is-Nil!28352 s!9460))))

(declare-fun b!2417804 () Bool)

(declare-fun e!1538512 () Bool)

(declare-fun lt!874586 () Option!5607)

(assert (=> b!2417804 (= e!1538512 (not (isDefined!4433 lt!874586)))))

(declare-fun b!2417805 () Bool)

(declare-fun e!1538516 () Bool)

(assert (=> b!2417805 (= e!1538516 (= (++!7027 (_1!16537 (get!8712 lt!874586)) (_2!16537 (get!8712 lt!874586))) s!9460))))

(declare-fun b!2417806 () Bool)

(assert (=> b!2417806 (= e!1538515 (Some!5606 (tuple2!27993 Nil!28352 s!9460)))))

(declare-fun b!2417807 () Bool)

(declare-fun res!1026828 () Bool)

(assert (=> b!2417807 (=> (not res!1026828) (not e!1538516))))

(assert (=> b!2417807 (= res!1026828 (matchR!3223 lt!874545 (_1!16537 (get!8712 lt!874586))))))

(declare-fun b!2417808 () Bool)

(declare-fun e!1538513 () Bool)

(assert (=> b!2417808 (= e!1538513 (matchR!3223 EmptyExpr!7106 s!9460))))

(declare-fun d!701404 () Bool)

(assert (=> d!701404 e!1538512))

(declare-fun res!1026827 () Bool)

(assert (=> d!701404 (=> res!1026827 e!1538512)))

(assert (=> d!701404 (= res!1026827 e!1538516)))

(declare-fun res!1026824 () Bool)

(assert (=> d!701404 (=> (not res!1026824) (not e!1538516))))

(assert (=> d!701404 (= res!1026824 (isDefined!4433 lt!874586))))

(assert (=> d!701404 (= lt!874586 e!1538515)))

(declare-fun c!385315 () Bool)

(assert (=> d!701404 (= c!385315 e!1538513)))

(declare-fun res!1026825 () Bool)

(assert (=> d!701404 (=> (not res!1026825) (not e!1538513))))

(assert (=> d!701404 (= res!1026825 (matchR!3223 lt!874545 Nil!28352))))

(assert (=> d!701404 (validRegex!2826 lt!874545)))

(assert (=> d!701404 (= (findConcatSeparation!715 lt!874545 EmptyExpr!7106 Nil!28352 s!9460 s!9460) lt!874586)))

(declare-fun b!2417809 () Bool)

(declare-fun res!1026826 () Bool)

(assert (=> b!2417809 (=> (not res!1026826) (not e!1538516))))

(assert (=> b!2417809 (= res!1026826 (matchR!3223 EmptyExpr!7106 (_2!16537 (get!8712 lt!874586))))))

(declare-fun b!2417810 () Bool)

(assert (=> b!2417810 (= e!1538514 None!5606)))

(assert (= (and d!701404 res!1026825) b!2417808))

(assert (= (and d!701404 c!385315) b!2417806))

(assert (= (and d!701404 (not c!385315)) b!2417803))

(assert (= (and b!2417803 c!385314) b!2417810))

(assert (= (and b!2417803 (not c!385314)) b!2417802))

(assert (= (and d!701404 res!1026824) b!2417807))

(assert (= (and b!2417807 res!1026828) b!2417809))

(assert (= (and b!2417809 res!1026826) b!2417805))

(assert (= (and d!701404 (not res!1026827)) b!2417804))

(declare-fun m!2805743 () Bool)

(assert (=> b!2417809 m!2805743))

(declare-fun m!2805745 () Bool)

(assert (=> b!2417809 m!2805745))

(assert (=> b!2417805 m!2805743))

(declare-fun m!2805747 () Bool)

(assert (=> b!2417805 m!2805747))

(declare-fun m!2805749 () Bool)

(assert (=> d!701404 m!2805749))

(declare-fun m!2805751 () Bool)

(assert (=> d!701404 m!2805751))

(assert (=> d!701404 m!2805665))

(assert (=> b!2417804 m!2805749))

(declare-fun m!2805753 () Bool)

(assert (=> b!2417808 m!2805753))

(declare-fun m!2805755 () Bool)

(assert (=> b!2417802 m!2805755))

(assert (=> b!2417802 m!2805755))

(declare-fun m!2805757 () Bool)

(assert (=> b!2417802 m!2805757))

(declare-fun m!2805759 () Bool)

(assert (=> b!2417802 m!2805759))

(assert (=> b!2417802 m!2805755))

(declare-fun m!2805761 () Bool)

(assert (=> b!2417802 m!2805761))

(assert (=> b!2417807 m!2805743))

(declare-fun m!2805763 () Bool)

(assert (=> b!2417807 m!2805763))

(assert (=> b!2417680 d!701404))

(declare-fun b!2417819 () Bool)

(declare-fun e!1538521 () List!28450)

(assert (=> b!2417819 (= e!1538521 s!9460)))

(declare-fun b!2417821 () Bool)

(declare-fun res!1026833 () Bool)

(declare-fun e!1538522 () Bool)

(assert (=> b!2417821 (=> (not res!1026833) (not e!1538522))))

(declare-fun lt!874590 () List!28450)

(declare-fun size!22230 (List!28450) Int)

(assert (=> b!2417821 (= res!1026833 (= (size!22230 lt!874590) (+ (size!22230 Nil!28352) (size!22230 s!9460))))))

(declare-fun d!701412 () Bool)

(assert (=> d!701412 e!1538522))

(declare-fun res!1026834 () Bool)

(assert (=> d!701412 (=> (not res!1026834) (not e!1538522))))

(declare-fun content!3892 (List!28450) (Set C!14370))

(assert (=> d!701412 (= res!1026834 (= (content!3892 lt!874590) (set.union (content!3892 Nil!28352) (content!3892 s!9460))))))

(assert (=> d!701412 (= lt!874590 e!1538521)))

(declare-fun c!385318 () Bool)

(assert (=> d!701412 (= c!385318 (is-Nil!28352 Nil!28352))))

(assert (=> d!701412 (= (++!7027 Nil!28352 s!9460) lt!874590)))

(declare-fun b!2417822 () Bool)

(assert (=> b!2417822 (= e!1538522 (or (not (= s!9460 Nil!28352)) (= lt!874590 Nil!28352)))))

(declare-fun b!2417820 () Bool)

(assert (=> b!2417820 (= e!1538521 (Cons!28352 (h!33753 Nil!28352) (++!7027 (t!208427 Nil!28352) s!9460)))))

(assert (= (and d!701412 c!385318) b!2417819))

(assert (= (and d!701412 (not c!385318)) b!2417820))

(assert (= (and d!701412 res!1026834) b!2417821))

(assert (= (and b!2417821 res!1026833) b!2417822))

(declare-fun m!2805765 () Bool)

(assert (=> b!2417821 m!2805765))

(declare-fun m!2805767 () Bool)

(assert (=> b!2417821 m!2805767))

(declare-fun m!2805769 () Bool)

(assert (=> b!2417821 m!2805769))

(declare-fun m!2805771 () Bool)

(assert (=> d!701412 m!2805771))

(declare-fun m!2805773 () Bool)

(assert (=> d!701412 m!2805773))

(declare-fun m!2805775 () Bool)

(assert (=> d!701412 m!2805775))

(declare-fun m!2805777 () Bool)

(assert (=> b!2417820 m!2805777))

(assert (=> b!2417696 d!701412))

(declare-fun b!2417881 () Bool)

(declare-fun e!1538561 () Bool)

(declare-fun lt!874596 () Bool)

(declare-fun call!147612 () Bool)

(assert (=> b!2417881 (= e!1538561 (= lt!874596 call!147612))))

(declare-fun b!2417882 () Bool)

(declare-fun e!1538555 () Bool)

(assert (=> b!2417882 (= e!1538555 (not lt!874596))))

(declare-fun b!2417883 () Bool)

(declare-fun e!1538560 () Bool)

(declare-fun e!1538559 () Bool)

(assert (=> b!2417883 (= e!1538560 e!1538559)))

(declare-fun res!1026861 () Bool)

(assert (=> b!2417883 (=> res!1026861 e!1538559)))

(assert (=> b!2417883 (= res!1026861 call!147612)))

(declare-fun b!2417884 () Bool)

(declare-fun res!1026859 () Bool)

(declare-fun e!1538556 () Bool)

(assert (=> b!2417884 (=> (not res!1026859) (not e!1538556))))

(declare-fun isEmpty!16367 (List!28450) Bool)

(declare-fun tail!3698 (List!28450) List!28450)

(assert (=> b!2417884 (= res!1026859 (isEmpty!16367 (tail!3698 s!9460)))))

(declare-fun b!2417885 () Bool)

(declare-fun e!1538558 () Bool)

(assert (=> b!2417885 (= e!1538558 e!1538560)))

(declare-fun res!1026860 () Bool)

(assert (=> b!2417885 (=> (not res!1026860) (not e!1538560))))

(assert (=> b!2417885 (= res!1026860 (not lt!874596))))

(declare-fun b!2417886 () Bool)

(declare-fun res!1026864 () Bool)

(assert (=> b!2417886 (=> res!1026864 e!1538559)))

(assert (=> b!2417886 (= res!1026864 (not (isEmpty!16367 (tail!3698 s!9460))))))

(declare-fun d!701414 () Bool)

(assert (=> d!701414 e!1538561))

(declare-fun c!385339 () Bool)

(assert (=> d!701414 (= c!385339 (is-EmptyExpr!7106 lt!874545))))

(declare-fun e!1538557 () Bool)

(assert (=> d!701414 (= lt!874596 e!1538557)))

(declare-fun c!385337 () Bool)

(assert (=> d!701414 (= c!385337 (isEmpty!16367 s!9460))))

(assert (=> d!701414 (validRegex!2826 lt!874545)))

(assert (=> d!701414 (= (matchR!3223 lt!874545 s!9460) lt!874596)))

(declare-fun b!2417887 () Bool)

(assert (=> b!2417887 (= e!1538557 (nullable!2141 lt!874545))))

(declare-fun b!2417888 () Bool)

(assert (=> b!2417888 (= e!1538561 e!1538555)))

(declare-fun c!385338 () Bool)

(assert (=> b!2417888 (= c!385338 (is-EmptyLang!7106 lt!874545))))

(declare-fun b!2417889 () Bool)

(declare-fun head!5426 (List!28450) C!14370)

(assert (=> b!2417889 (= e!1538556 (= (head!5426 s!9460) (c!385299 lt!874545)))))

(declare-fun b!2417890 () Bool)

(declare-fun res!1026857 () Bool)

(assert (=> b!2417890 (=> res!1026857 e!1538558)))

(assert (=> b!2417890 (= res!1026857 e!1538556)))

(declare-fun res!1026863 () Bool)

(assert (=> b!2417890 (=> (not res!1026863) (not e!1538556))))

(assert (=> b!2417890 (= res!1026863 lt!874596)))

(declare-fun b!2417891 () Bool)

(assert (=> b!2417891 (= e!1538559 (not (= (head!5426 s!9460) (c!385299 lt!874545))))))

(declare-fun b!2417892 () Bool)

(declare-fun res!1026862 () Bool)

(assert (=> b!2417892 (=> (not res!1026862) (not e!1538556))))

(assert (=> b!2417892 (= res!1026862 (not call!147612))))

(declare-fun b!2417893 () Bool)

(declare-fun res!1026858 () Bool)

(assert (=> b!2417893 (=> res!1026858 e!1538558)))

(assert (=> b!2417893 (= res!1026858 (not (is-ElementMatch!7106 lt!874545)))))

(assert (=> b!2417893 (= e!1538555 e!1538558)))

(declare-fun bm!147607 () Bool)

(assert (=> bm!147607 (= call!147612 (isEmpty!16367 s!9460))))

(declare-fun b!2417894 () Bool)

(declare-fun derivativeStep!1798 (Regex!7106 C!14370) Regex!7106)

(assert (=> b!2417894 (= e!1538557 (matchR!3223 (derivativeStep!1798 lt!874545 (head!5426 s!9460)) (tail!3698 s!9460)))))

(assert (= (and d!701414 c!385337) b!2417887))

(assert (= (and d!701414 (not c!385337)) b!2417894))

(assert (= (and d!701414 c!385339) b!2417881))

(assert (= (and d!701414 (not c!385339)) b!2417888))

(assert (= (and b!2417888 c!385338) b!2417882))

(assert (= (and b!2417888 (not c!385338)) b!2417893))

(assert (= (and b!2417893 (not res!1026858)) b!2417890))

(assert (= (and b!2417890 res!1026863) b!2417892))

(assert (= (and b!2417892 res!1026862) b!2417884))

(assert (= (and b!2417884 res!1026859) b!2417889))

(assert (= (and b!2417890 (not res!1026857)) b!2417885))

(assert (= (and b!2417885 res!1026860) b!2417883))

(assert (= (and b!2417883 (not res!1026861)) b!2417886))

(assert (= (and b!2417886 (not res!1026864)) b!2417891))

(assert (= (or b!2417881 b!2417883 b!2417892) bm!147607))

(declare-fun m!2805779 () Bool)

(assert (=> bm!147607 m!2805779))

(declare-fun m!2805781 () Bool)

(assert (=> b!2417891 m!2805781))

(assert (=> d!701414 m!2805779))

(assert (=> d!701414 m!2805665))

(assert (=> b!2417889 m!2805781))

(declare-fun m!2805783 () Bool)

(assert (=> b!2417884 m!2805783))

(assert (=> b!2417884 m!2805783))

(declare-fun m!2805785 () Bool)

(assert (=> b!2417884 m!2805785))

(declare-fun m!2805787 () Bool)

(assert (=> b!2417887 m!2805787))

(assert (=> b!2417894 m!2805781))

(assert (=> b!2417894 m!2805781))

(declare-fun m!2805789 () Bool)

(assert (=> b!2417894 m!2805789))

(assert (=> b!2417894 m!2805783))

(assert (=> b!2417894 m!2805789))

(assert (=> b!2417894 m!2805783))

(declare-fun m!2805791 () Bool)

(assert (=> b!2417894 m!2805791))

(assert (=> b!2417886 m!2805783))

(assert (=> b!2417886 m!2805783))

(assert (=> b!2417886 m!2805785))

(assert (=> b!2417679 d!701414))

(declare-fun d!701416 () Bool)

(assert (=> d!701416 (= (head!5424 l!9164) (h!33754 l!9164))))

(assert (=> b!2417679 d!701416))

(declare-fun bs!463625 () Bool)

(declare-fun d!701418 () Bool)

(assert (= bs!463625 (and d!701418 start!236854)))

(declare-fun lambda!91068 () Int)

(assert (=> bs!463625 (= lambda!91068 lambda!91058)))

(declare-fun b!2417925 () Bool)

(declare-fun e!1538585 () Bool)

(declare-fun lt!874600 () Regex!7106)

(declare-fun isEmptyExpr!161 (Regex!7106) Bool)

(assert (=> b!2417925 (= e!1538585 (isEmptyExpr!161 lt!874600))))

(declare-fun b!2417926 () Bool)

(declare-fun e!1538584 () Regex!7106)

(assert (=> b!2417926 (= e!1538584 (h!33754 lt!874551))))

(declare-fun e!1538583 () Bool)

(assert (=> d!701418 e!1538583))

(declare-fun res!1026872 () Bool)

(assert (=> d!701418 (=> (not res!1026872) (not e!1538583))))

(assert (=> d!701418 (= res!1026872 (validRegex!2826 lt!874600))))

(assert (=> d!701418 (= lt!874600 e!1538584)))

(declare-fun c!385354 () Bool)

(declare-fun e!1538581 () Bool)

(assert (=> d!701418 (= c!385354 e!1538581)))

(declare-fun res!1026871 () Bool)

(assert (=> d!701418 (=> (not res!1026871) (not e!1538581))))

(assert (=> d!701418 (= res!1026871 (is-Cons!28353 lt!874551))))

(assert (=> d!701418 (forall!5740 lt!874551 lambda!91068)))

(assert (=> d!701418 (= (generalisedConcat!207 lt!874551) lt!874600)))

(declare-fun b!2417927 () Bool)

(assert (=> b!2417927 (= e!1538581 (isEmpty!16364 (t!208428 lt!874551)))))

(declare-fun b!2417928 () Bool)

(declare-fun e!1538582 () Bool)

(declare-fun isConcat!161 (Regex!7106) Bool)

(assert (=> b!2417928 (= e!1538582 (isConcat!161 lt!874600))))

(declare-fun b!2417929 () Bool)

(assert (=> b!2417929 (= e!1538583 e!1538585)))

(declare-fun c!385353 () Bool)

(assert (=> b!2417929 (= c!385353 (isEmpty!16364 lt!874551))))

(declare-fun b!2417930 () Bool)

(declare-fun e!1538580 () Regex!7106)

(assert (=> b!2417930 (= e!1538580 (Concat!11742 (h!33754 lt!874551) (generalisedConcat!207 (t!208428 lt!874551))))))

(declare-fun b!2417931 () Bool)

(assert (=> b!2417931 (= e!1538582 (= lt!874600 (head!5424 lt!874551)))))

(declare-fun b!2417932 () Bool)

(assert (=> b!2417932 (= e!1538584 e!1538580)))

(declare-fun c!385355 () Bool)

(assert (=> b!2417932 (= c!385355 (is-Cons!28353 lt!874551))))

(declare-fun b!2417933 () Bool)

(assert (=> b!2417933 (= e!1538585 e!1538582)))

(declare-fun c!385352 () Bool)

(assert (=> b!2417933 (= c!385352 (isEmpty!16364 (tail!3696 lt!874551)))))

(declare-fun b!2417934 () Bool)

(assert (=> b!2417934 (= e!1538580 EmptyExpr!7106)))

(assert (= (and d!701418 res!1026871) b!2417927))

(assert (= (and d!701418 c!385354) b!2417926))

(assert (= (and d!701418 (not c!385354)) b!2417932))

(assert (= (and b!2417932 c!385355) b!2417930))

(assert (= (and b!2417932 (not c!385355)) b!2417934))

(assert (= (and d!701418 res!1026872) b!2417929))

(assert (= (and b!2417929 c!385353) b!2417925))

(assert (= (and b!2417929 (not c!385353)) b!2417933))

(assert (= (and b!2417933 c!385352) b!2417931))

(assert (= (and b!2417933 (not c!385352)) b!2417928))

(declare-fun m!2805825 () Bool)

(assert (=> b!2417933 m!2805825))

(assert (=> b!2417933 m!2805825))

(declare-fun m!2805827 () Bool)

(assert (=> b!2417933 m!2805827))

(declare-fun m!2805829 () Bool)

(assert (=> b!2417930 m!2805829))

(declare-fun m!2805831 () Bool)

(assert (=> d!701418 m!2805831))

(declare-fun m!2805833 () Bool)

(assert (=> d!701418 m!2805833))

(declare-fun m!2805835 () Bool)

(assert (=> b!2417927 m!2805835))

(declare-fun m!2805837 () Bool)

(assert (=> b!2417931 m!2805837))

(assert (=> b!2417929 m!2805677))

(declare-fun m!2805839 () Bool)

(assert (=> b!2417925 m!2805839))

(declare-fun m!2805841 () Bool)

(assert (=> b!2417928 m!2805841))

(assert (=> b!2417695 d!701418))

(declare-fun b!2417935 () Bool)

(declare-fun e!1538592 () Bool)

(declare-fun lt!874601 () Bool)

(declare-fun call!147613 () Bool)

(assert (=> b!2417935 (= e!1538592 (= lt!874601 call!147613))))

(declare-fun b!2417936 () Bool)

(declare-fun e!1538586 () Bool)

(assert (=> b!2417936 (= e!1538586 (not lt!874601))))

(declare-fun b!2417937 () Bool)

(declare-fun e!1538591 () Bool)

(declare-fun e!1538590 () Bool)

(assert (=> b!2417937 (= e!1538591 e!1538590)))

(declare-fun res!1026877 () Bool)

(assert (=> b!2417937 (=> res!1026877 e!1538590)))

(assert (=> b!2417937 (= res!1026877 call!147613)))

(declare-fun b!2417938 () Bool)

(declare-fun res!1026875 () Bool)

(declare-fun e!1538587 () Bool)

(assert (=> b!2417938 (=> (not res!1026875) (not e!1538587))))

(assert (=> b!2417938 (= res!1026875 (isEmpty!16367 (tail!3698 s!9460)))))

(declare-fun b!2417939 () Bool)

(declare-fun e!1538589 () Bool)

(assert (=> b!2417939 (= e!1538589 e!1538591)))

(declare-fun res!1026876 () Bool)

(assert (=> b!2417939 (=> (not res!1026876) (not e!1538591))))

(assert (=> b!2417939 (= res!1026876 (not lt!874601))))

(declare-fun b!2417940 () Bool)

(declare-fun res!1026880 () Bool)

(assert (=> b!2417940 (=> res!1026880 e!1538590)))

(assert (=> b!2417940 (= res!1026880 (not (isEmpty!16367 (tail!3698 s!9460))))))

(declare-fun d!701426 () Bool)

(assert (=> d!701426 e!1538592))

(declare-fun c!385358 () Bool)

(assert (=> d!701426 (= c!385358 (is-EmptyExpr!7106 r!13927))))

(declare-fun e!1538588 () Bool)

(assert (=> d!701426 (= lt!874601 e!1538588)))

(declare-fun c!385356 () Bool)

(assert (=> d!701426 (= c!385356 (isEmpty!16367 s!9460))))

(assert (=> d!701426 (validRegex!2826 r!13927)))

(assert (=> d!701426 (= (matchR!3223 r!13927 s!9460) lt!874601)))

(declare-fun b!2417941 () Bool)

(assert (=> b!2417941 (= e!1538588 (nullable!2141 r!13927))))

(declare-fun b!2417942 () Bool)

(assert (=> b!2417942 (= e!1538592 e!1538586)))

(declare-fun c!385357 () Bool)

(assert (=> b!2417942 (= c!385357 (is-EmptyLang!7106 r!13927))))

(declare-fun b!2417943 () Bool)

(assert (=> b!2417943 (= e!1538587 (= (head!5426 s!9460) (c!385299 r!13927)))))

(declare-fun b!2417944 () Bool)

(declare-fun res!1026873 () Bool)

(assert (=> b!2417944 (=> res!1026873 e!1538589)))

(assert (=> b!2417944 (= res!1026873 e!1538587)))

(declare-fun res!1026879 () Bool)

(assert (=> b!2417944 (=> (not res!1026879) (not e!1538587))))

(assert (=> b!2417944 (= res!1026879 lt!874601)))

(declare-fun b!2417945 () Bool)

(assert (=> b!2417945 (= e!1538590 (not (= (head!5426 s!9460) (c!385299 r!13927))))))

(declare-fun b!2417946 () Bool)

(declare-fun res!1026878 () Bool)

(assert (=> b!2417946 (=> (not res!1026878) (not e!1538587))))

(assert (=> b!2417946 (= res!1026878 (not call!147613))))

(declare-fun b!2417947 () Bool)

(declare-fun res!1026874 () Bool)

(assert (=> b!2417947 (=> res!1026874 e!1538589)))

(assert (=> b!2417947 (= res!1026874 (not (is-ElementMatch!7106 r!13927)))))

(assert (=> b!2417947 (= e!1538586 e!1538589)))

(declare-fun bm!147608 () Bool)

(assert (=> bm!147608 (= call!147613 (isEmpty!16367 s!9460))))

(declare-fun b!2417948 () Bool)

(assert (=> b!2417948 (= e!1538588 (matchR!3223 (derivativeStep!1798 r!13927 (head!5426 s!9460)) (tail!3698 s!9460)))))

(assert (= (and d!701426 c!385356) b!2417941))

(assert (= (and d!701426 (not c!385356)) b!2417948))

(assert (= (and d!701426 c!385358) b!2417935))

(assert (= (and d!701426 (not c!385358)) b!2417942))

(assert (= (and b!2417942 c!385357) b!2417936))

(assert (= (and b!2417942 (not c!385357)) b!2417947))

(assert (= (and b!2417947 (not res!1026874)) b!2417944))

(assert (= (and b!2417944 res!1026879) b!2417946))

(assert (= (and b!2417946 res!1026878) b!2417938))

(assert (= (and b!2417938 res!1026875) b!2417943))

(assert (= (and b!2417944 (not res!1026873)) b!2417939))

(assert (= (and b!2417939 res!1026876) b!2417937))

(assert (= (and b!2417937 (not res!1026877)) b!2417940))

(assert (= (and b!2417940 (not res!1026880)) b!2417945))

(assert (= (or b!2417935 b!2417937 b!2417946) bm!147608))

(assert (=> bm!147608 m!2805779))

(assert (=> b!2417945 m!2805781))

(assert (=> d!701426 m!2805779))

(declare-fun m!2805843 () Bool)

(assert (=> d!701426 m!2805843))

(assert (=> b!2417943 m!2805781))

(assert (=> b!2417938 m!2805783))

(assert (=> b!2417938 m!2805783))

(assert (=> b!2417938 m!2805785))

(declare-fun m!2805845 () Bool)

(assert (=> b!2417941 m!2805845))

(assert (=> b!2417948 m!2805781))

(assert (=> b!2417948 m!2805781))

(declare-fun m!2805847 () Bool)

(assert (=> b!2417948 m!2805847))

(assert (=> b!2417948 m!2805783))

(assert (=> b!2417948 m!2805847))

(assert (=> b!2417948 m!2805783))

(declare-fun m!2805849 () Bool)

(assert (=> b!2417948 m!2805849))

(assert (=> b!2417940 m!2805783))

(assert (=> b!2417940 m!2805783))

(assert (=> b!2417940 m!2805785))

(assert (=> b!2417681 d!701426))

(declare-fun b!2417990 () Bool)

(assert (=> b!2417990 true))

(assert (=> b!2417990 true))

(declare-fun bs!463627 () Bool)

(declare-fun b!2417984 () Bool)

(assert (= bs!463627 (and b!2417984 b!2417990)))

(declare-fun lambda!91074 () Int)

(declare-fun lambda!91073 () Int)

(assert (=> bs!463627 (not (= lambda!91074 lambda!91073))))

(assert (=> b!2417984 true))

(assert (=> b!2417984 true))

(declare-fun b!2417981 () Bool)

(declare-fun e!1538616 () Bool)

(declare-fun call!147619 () Bool)

(assert (=> b!2417981 (= e!1538616 call!147619)))

(declare-fun b!2417982 () Bool)

(declare-fun e!1538612 () Bool)

(assert (=> b!2417982 (= e!1538612 (= s!9460 (Cons!28352 (c!385299 r!13927) Nil!28352)))))

(declare-fun b!2417983 () Bool)

(declare-fun res!1026898 () Bool)

(declare-fun e!1538611 () Bool)

(assert (=> b!2417983 (=> res!1026898 e!1538611)))

(assert (=> b!2417983 (= res!1026898 call!147619)))

(declare-fun e!1538614 () Bool)

(assert (=> b!2417983 (= e!1538614 e!1538611)))

(declare-fun call!147618 () Bool)

(assert (=> b!2417984 (= e!1538614 call!147618)))

(declare-fun bm!147613 () Bool)

(assert (=> bm!147613 (= call!147619 (isEmpty!16367 s!9460))))

(declare-fun b!2417985 () Bool)

(declare-fun e!1538617 () Bool)

(assert (=> b!2417985 (= e!1538616 e!1538617)))

(declare-fun res!1026899 () Bool)

(assert (=> b!2417985 (= res!1026899 (not (is-EmptyLang!7106 r!13927)))))

(assert (=> b!2417985 (=> (not res!1026899) (not e!1538617))))

(declare-fun b!2417986 () Bool)

(declare-fun c!385370 () Bool)

(assert (=> b!2417986 (= c!385370 (is-Union!7106 r!13927))))

(declare-fun e!1538615 () Bool)

(assert (=> b!2417986 (= e!1538612 e!1538615)))

(declare-fun b!2417987 () Bool)

(declare-fun c!385369 () Bool)

(assert (=> b!2417987 (= c!385369 (is-ElementMatch!7106 r!13927))))

(assert (=> b!2417987 (= e!1538617 e!1538612)))

(declare-fun d!701428 () Bool)

(declare-fun c!385367 () Bool)

(assert (=> d!701428 (= c!385367 (is-EmptyExpr!7106 r!13927))))

(assert (=> d!701428 (= (matchRSpec!955 r!13927 s!9460) e!1538616)))

(declare-fun b!2417988 () Bool)

(declare-fun e!1538613 () Bool)

(assert (=> b!2417988 (= e!1538613 (matchRSpec!955 (regTwo!14725 r!13927) s!9460))))

(declare-fun bm!147614 () Bool)

(declare-fun c!385368 () Bool)

(declare-fun Exists!1147 (Int) Bool)

(assert (=> bm!147614 (= call!147618 (Exists!1147 (ite c!385368 lambda!91073 lambda!91074)))))

(declare-fun b!2417989 () Bool)

(assert (=> b!2417989 (= e!1538615 e!1538614)))

(assert (=> b!2417989 (= c!385368 (is-Star!7106 r!13927))))

(assert (=> b!2417990 (= e!1538611 call!147618)))

(declare-fun b!2417991 () Bool)

(assert (=> b!2417991 (= e!1538615 e!1538613)))

(declare-fun res!1026897 () Bool)

(assert (=> b!2417991 (= res!1026897 (matchRSpec!955 (regOne!14725 r!13927) s!9460))))

(assert (=> b!2417991 (=> res!1026897 e!1538613)))

(assert (= (and d!701428 c!385367) b!2417981))

(assert (= (and d!701428 (not c!385367)) b!2417985))

(assert (= (and b!2417985 res!1026899) b!2417987))

(assert (= (and b!2417987 c!385369) b!2417982))

(assert (= (and b!2417987 (not c!385369)) b!2417986))

(assert (= (and b!2417986 c!385370) b!2417991))

(assert (= (and b!2417986 (not c!385370)) b!2417989))

(assert (= (and b!2417991 (not res!1026897)) b!2417988))

(assert (= (and b!2417989 c!385368) b!2417983))

(assert (= (and b!2417989 (not c!385368)) b!2417984))

(assert (= (and b!2417983 (not res!1026898)) b!2417990))

(assert (= (or b!2417990 b!2417984) bm!147614))

(assert (= (or b!2417981 b!2417983) bm!147613))

(assert (=> bm!147613 m!2805779))

(declare-fun m!2805853 () Bool)

(assert (=> b!2417988 m!2805853))

(declare-fun m!2805855 () Bool)

(assert (=> bm!147614 m!2805855))

(declare-fun m!2805857 () Bool)

(assert (=> b!2417991 m!2805857))

(assert (=> b!2417681 d!701428))

(declare-fun d!701432 () Bool)

(assert (=> d!701432 (= (matchR!3223 r!13927 s!9460) (matchRSpec!955 r!13927 s!9460))))

(declare-fun lt!874609 () Unit!41499)

(declare-fun choose!14296 (Regex!7106 List!28450) Unit!41499)

(assert (=> d!701432 (= lt!874609 (choose!14296 r!13927 s!9460))))

(assert (=> d!701432 (validRegex!2826 r!13927)))

(assert (=> d!701432 (= (mainMatchTheorem!955 r!13927 s!9460) lt!874609)))

(declare-fun bs!463628 () Bool)

(assert (= bs!463628 d!701432))

(assert (=> bs!463628 m!2805685))

(assert (=> bs!463628 m!2805687))

(declare-fun m!2805859 () Bool)

(assert (=> bs!463628 m!2805859))

(assert (=> bs!463628 m!2805843))

(assert (=> b!2417681 d!701432))

(declare-fun d!701434 () Bool)

(assert (=> d!701434 (= (get!8712 lt!874546) (v!31014 lt!874546))))

(assert (=> b!2417692 d!701434))

(declare-fun d!701436 () Bool)

(assert (=> d!701436 (matchR!3223 (Concat!11742 lt!874545 EmptyExpr!7106) (++!7027 (_1!16537 lt!874549) (_2!16537 lt!874549)))))

(declare-fun lt!874612 () Unit!41499)

(declare-fun choose!14297 (Regex!7106 Regex!7106 List!28450 List!28450 List!28450) Unit!41499)

(assert (=> d!701436 (= lt!874612 (choose!14297 lt!874545 EmptyExpr!7106 (_1!16537 lt!874549) (_2!16537 lt!874549) s!9460))))

(assert (=> d!701436 (validRegex!2826 lt!874545)))

(assert (=> d!701436 (= (lemmaFindSeparationIsDefinedThenConcatMatches!55 lt!874545 EmptyExpr!7106 (_1!16537 lt!874549) (_2!16537 lt!874549) s!9460) lt!874612)))

(declare-fun bs!463629 () Bool)

(assert (= bs!463629 d!701436))

(assert (=> bs!463629 m!2805659))

(assert (=> bs!463629 m!2805659))

(assert (=> bs!463629 m!2805661))

(declare-fun m!2805861 () Bool)

(assert (=> bs!463629 m!2805861))

(assert (=> bs!463629 m!2805665))

(assert (=> b!2417692 d!701436))

(declare-fun b!2418024 () Bool)

(declare-fun e!1538638 () Bool)

(declare-fun lt!874613 () Bool)

(declare-fun call!147622 () Bool)

(assert (=> b!2418024 (= e!1538638 (= lt!874613 call!147622))))

(declare-fun b!2418025 () Bool)

(declare-fun e!1538632 () Bool)

(assert (=> b!2418025 (= e!1538632 (not lt!874613))))

(declare-fun b!2418026 () Bool)

(declare-fun e!1538637 () Bool)

(declare-fun e!1538636 () Bool)

(assert (=> b!2418026 (= e!1538637 e!1538636)))

(declare-fun res!1026920 () Bool)

(assert (=> b!2418026 (=> res!1026920 e!1538636)))

(assert (=> b!2418026 (= res!1026920 call!147622)))

(declare-fun b!2418027 () Bool)

(declare-fun res!1026918 () Bool)

(declare-fun e!1538633 () Bool)

(assert (=> b!2418027 (=> (not res!1026918) (not e!1538633))))

(assert (=> b!2418027 (= res!1026918 (isEmpty!16367 (tail!3698 (++!7027 (_1!16537 lt!874549) (_2!16537 lt!874549)))))))

(declare-fun b!2418028 () Bool)

(declare-fun e!1538635 () Bool)

(assert (=> b!2418028 (= e!1538635 e!1538637)))

(declare-fun res!1026919 () Bool)

(assert (=> b!2418028 (=> (not res!1026919) (not e!1538637))))

(assert (=> b!2418028 (= res!1026919 (not lt!874613))))

(declare-fun b!2418029 () Bool)

(declare-fun res!1026923 () Bool)

(assert (=> b!2418029 (=> res!1026923 e!1538636)))

(assert (=> b!2418029 (= res!1026923 (not (isEmpty!16367 (tail!3698 (++!7027 (_1!16537 lt!874549) (_2!16537 lt!874549))))))))

(declare-fun d!701438 () Bool)

(assert (=> d!701438 e!1538638))

(declare-fun c!385379 () Bool)

(assert (=> d!701438 (= c!385379 (is-EmptyExpr!7106 (Concat!11742 lt!874545 EmptyExpr!7106)))))

(declare-fun e!1538634 () Bool)

(assert (=> d!701438 (= lt!874613 e!1538634)))

(declare-fun c!385377 () Bool)

(assert (=> d!701438 (= c!385377 (isEmpty!16367 (++!7027 (_1!16537 lt!874549) (_2!16537 lt!874549))))))

(assert (=> d!701438 (validRegex!2826 (Concat!11742 lt!874545 EmptyExpr!7106))))

(assert (=> d!701438 (= (matchR!3223 (Concat!11742 lt!874545 EmptyExpr!7106) (++!7027 (_1!16537 lt!874549) (_2!16537 lt!874549))) lt!874613)))

(declare-fun b!2418030 () Bool)

(assert (=> b!2418030 (= e!1538634 (nullable!2141 (Concat!11742 lt!874545 EmptyExpr!7106)))))

(declare-fun b!2418031 () Bool)

(assert (=> b!2418031 (= e!1538638 e!1538632)))

(declare-fun c!385378 () Bool)

(assert (=> b!2418031 (= c!385378 (is-EmptyLang!7106 (Concat!11742 lt!874545 EmptyExpr!7106)))))

(declare-fun b!2418032 () Bool)

(assert (=> b!2418032 (= e!1538633 (= (head!5426 (++!7027 (_1!16537 lt!874549) (_2!16537 lt!874549))) (c!385299 (Concat!11742 lt!874545 EmptyExpr!7106))))))

(declare-fun b!2418033 () Bool)

(declare-fun res!1026916 () Bool)

(assert (=> b!2418033 (=> res!1026916 e!1538635)))

(assert (=> b!2418033 (= res!1026916 e!1538633)))

(declare-fun res!1026922 () Bool)

(assert (=> b!2418033 (=> (not res!1026922) (not e!1538633))))

(assert (=> b!2418033 (= res!1026922 lt!874613)))

(declare-fun b!2418034 () Bool)

(assert (=> b!2418034 (= e!1538636 (not (= (head!5426 (++!7027 (_1!16537 lt!874549) (_2!16537 lt!874549))) (c!385299 (Concat!11742 lt!874545 EmptyExpr!7106)))))))

(declare-fun b!2418035 () Bool)

(declare-fun res!1026921 () Bool)

(assert (=> b!2418035 (=> (not res!1026921) (not e!1538633))))

(assert (=> b!2418035 (= res!1026921 (not call!147622))))

(declare-fun b!2418036 () Bool)

(declare-fun res!1026917 () Bool)

(assert (=> b!2418036 (=> res!1026917 e!1538635)))

(assert (=> b!2418036 (= res!1026917 (not (is-ElementMatch!7106 (Concat!11742 lt!874545 EmptyExpr!7106))))))

(assert (=> b!2418036 (= e!1538632 e!1538635)))

(declare-fun bm!147617 () Bool)

(assert (=> bm!147617 (= call!147622 (isEmpty!16367 (++!7027 (_1!16537 lt!874549) (_2!16537 lt!874549))))))

(declare-fun b!2418037 () Bool)

(assert (=> b!2418037 (= e!1538634 (matchR!3223 (derivativeStep!1798 (Concat!11742 lt!874545 EmptyExpr!7106) (head!5426 (++!7027 (_1!16537 lt!874549) (_2!16537 lt!874549)))) (tail!3698 (++!7027 (_1!16537 lt!874549) (_2!16537 lt!874549)))))))

(assert (= (and d!701438 c!385377) b!2418030))

(assert (= (and d!701438 (not c!385377)) b!2418037))

(assert (= (and d!701438 c!385379) b!2418024))

(assert (= (and d!701438 (not c!385379)) b!2418031))

(assert (= (and b!2418031 c!385378) b!2418025))

(assert (= (and b!2418031 (not c!385378)) b!2418036))

(assert (= (and b!2418036 (not res!1026917)) b!2418033))

(assert (= (and b!2418033 res!1026922) b!2418035))

(assert (= (and b!2418035 res!1026921) b!2418027))

(assert (= (and b!2418027 res!1026918) b!2418032))

(assert (= (and b!2418033 (not res!1026916)) b!2418028))

(assert (= (and b!2418028 res!1026919) b!2418026))

(assert (= (and b!2418026 (not res!1026920)) b!2418029))

(assert (= (and b!2418029 (not res!1026923)) b!2418034))

(assert (= (or b!2418024 b!2418026 b!2418035) bm!147617))

(assert (=> bm!147617 m!2805659))

(declare-fun m!2805863 () Bool)

(assert (=> bm!147617 m!2805863))

(assert (=> b!2418034 m!2805659))

(declare-fun m!2805865 () Bool)

(assert (=> b!2418034 m!2805865))

(assert (=> d!701438 m!2805659))

(assert (=> d!701438 m!2805863))

(declare-fun m!2805867 () Bool)

(assert (=> d!701438 m!2805867))

(assert (=> b!2418032 m!2805659))

(assert (=> b!2418032 m!2805865))

(assert (=> b!2418027 m!2805659))

(declare-fun m!2805869 () Bool)

(assert (=> b!2418027 m!2805869))

(assert (=> b!2418027 m!2805869))

(declare-fun m!2805871 () Bool)

(assert (=> b!2418027 m!2805871))

(declare-fun m!2805873 () Bool)

(assert (=> b!2418030 m!2805873))

(assert (=> b!2418037 m!2805659))

(assert (=> b!2418037 m!2805865))

(assert (=> b!2418037 m!2805865))

(declare-fun m!2805875 () Bool)

(assert (=> b!2418037 m!2805875))

(assert (=> b!2418037 m!2805659))

(assert (=> b!2418037 m!2805869))

(assert (=> b!2418037 m!2805875))

(assert (=> b!2418037 m!2805869))

(declare-fun m!2805877 () Bool)

(assert (=> b!2418037 m!2805877))

(assert (=> b!2418029 m!2805659))

(assert (=> b!2418029 m!2805869))

(assert (=> b!2418029 m!2805869))

(assert (=> b!2418029 m!2805871))

(assert (=> b!2417692 d!701438))

(declare-fun b!2418038 () Bool)

(declare-fun e!1538639 () List!28450)

(assert (=> b!2418038 (= e!1538639 (_2!16537 lt!874549))))

(declare-fun b!2418040 () Bool)

(declare-fun res!1026924 () Bool)

(declare-fun e!1538640 () Bool)

(assert (=> b!2418040 (=> (not res!1026924) (not e!1538640))))

(declare-fun lt!874614 () List!28450)

(assert (=> b!2418040 (= res!1026924 (= (size!22230 lt!874614) (+ (size!22230 (_1!16537 lt!874549)) (size!22230 (_2!16537 lt!874549)))))))

(declare-fun d!701440 () Bool)

(assert (=> d!701440 e!1538640))

(declare-fun res!1026925 () Bool)

(assert (=> d!701440 (=> (not res!1026925) (not e!1538640))))

(assert (=> d!701440 (= res!1026925 (= (content!3892 lt!874614) (set.union (content!3892 (_1!16537 lt!874549)) (content!3892 (_2!16537 lt!874549)))))))

(assert (=> d!701440 (= lt!874614 e!1538639)))

(declare-fun c!385380 () Bool)

(assert (=> d!701440 (= c!385380 (is-Nil!28352 (_1!16537 lt!874549)))))

(assert (=> d!701440 (= (++!7027 (_1!16537 lt!874549) (_2!16537 lt!874549)) lt!874614)))

(declare-fun b!2418041 () Bool)

(assert (=> b!2418041 (= e!1538640 (or (not (= (_2!16537 lt!874549) Nil!28352)) (= lt!874614 (_1!16537 lt!874549))))))

(declare-fun b!2418039 () Bool)

(assert (=> b!2418039 (= e!1538639 (Cons!28352 (h!33753 (_1!16537 lt!874549)) (++!7027 (t!208427 (_1!16537 lt!874549)) (_2!16537 lt!874549))))))

(assert (= (and d!701440 c!385380) b!2418038))

(assert (= (and d!701440 (not c!385380)) b!2418039))

(assert (= (and d!701440 res!1026925) b!2418040))

(assert (= (and b!2418040 res!1026924) b!2418041))

(declare-fun m!2805879 () Bool)

(assert (=> b!2418040 m!2805879))

(declare-fun m!2805881 () Bool)

(assert (=> b!2418040 m!2805881))

(declare-fun m!2805883 () Bool)

(assert (=> b!2418040 m!2805883))

(declare-fun m!2805885 () Bool)

(assert (=> d!701440 m!2805885))

(declare-fun m!2805887 () Bool)

(assert (=> d!701440 m!2805887))

(declare-fun m!2805889 () Bool)

(assert (=> d!701440 m!2805889))

(declare-fun m!2805891 () Bool)

(assert (=> b!2418039 m!2805891))

(assert (=> b!2417692 d!701440))

(declare-fun d!701442 () Bool)

(declare-fun res!1026930 () Bool)

(declare-fun e!1538645 () Bool)

(assert (=> d!701442 (=> res!1026930 e!1538645)))

(assert (=> d!701442 (= res!1026930 (is-Nil!28353 l!9164))))

(assert (=> d!701442 (= (forall!5740 l!9164 lambda!91058) e!1538645)))

(declare-fun b!2418046 () Bool)

(declare-fun e!1538646 () Bool)

(assert (=> b!2418046 (= e!1538645 e!1538646)))

(declare-fun res!1026931 () Bool)

(assert (=> b!2418046 (=> (not res!1026931) (not e!1538646))))

(declare-fun dynLambda!12203 (Int Regex!7106) Bool)

(assert (=> b!2418046 (= res!1026931 (dynLambda!12203 lambda!91058 (h!33754 l!9164)))))

(declare-fun b!2418047 () Bool)

(assert (=> b!2418047 (= e!1538646 (forall!5740 (t!208428 l!9164) lambda!91058))))

(assert (= (and d!701442 (not res!1026930)) b!2418046))

(assert (= (and b!2418046 res!1026931) b!2418047))

(declare-fun b_lambda!74597 () Bool)

(assert (=> (not b_lambda!74597) (not b!2418046)))

(declare-fun m!2805893 () Bool)

(assert (=> b!2418046 m!2805893))

(declare-fun m!2805895 () Bool)

(assert (=> b!2418047 m!2805895))

(assert (=> start!236854 d!701442))

(declare-fun b!2418048 () Bool)

(declare-fun e!1538647 () Bool)

(declare-fun e!1538650 () Bool)

(assert (=> b!2418048 (= e!1538647 e!1538650)))

(declare-fun c!385382 () Bool)

(assert (=> b!2418048 (= c!385382 (is-Union!7106 lt!874550))))

(declare-fun b!2418049 () Bool)

(declare-fun e!1538649 () Bool)

(declare-fun call!147624 () Bool)

(assert (=> b!2418049 (= e!1538649 call!147624)))

(declare-fun b!2418050 () Bool)

(declare-fun res!1026936 () Bool)

(declare-fun e!1538651 () Bool)

(assert (=> b!2418050 (=> res!1026936 e!1538651)))

(assert (=> b!2418050 (= res!1026936 (not (is-Concat!11742 lt!874550)))))

(assert (=> b!2418050 (= e!1538650 e!1538651)))

(declare-fun b!2418051 () Bool)

(declare-fun res!1026935 () Bool)

(declare-fun e!1538653 () Bool)

(assert (=> b!2418051 (=> (not res!1026935) (not e!1538653))))

(assert (=> b!2418051 (= res!1026935 call!147624)))

(assert (=> b!2418051 (= e!1538650 e!1538653)))

(declare-fun b!2418052 () Bool)

(declare-fun e!1538648 () Bool)

(assert (=> b!2418052 (= e!1538647 e!1538648)))

(declare-fun res!1026933 () Bool)

(assert (=> b!2418052 (= res!1026933 (not (nullable!2141 (reg!7435 lt!874550))))))

(assert (=> b!2418052 (=> (not res!1026933) (not e!1538648))))

(declare-fun b!2418053 () Bool)

(declare-fun call!147625 () Bool)

(assert (=> b!2418053 (= e!1538653 call!147625)))

(declare-fun b!2418054 () Bool)

(assert (=> b!2418054 (= e!1538651 e!1538649)))

(declare-fun res!1026934 () Bool)

(assert (=> b!2418054 (=> (not res!1026934) (not e!1538649))))

(assert (=> b!2418054 (= res!1026934 call!147625)))

(declare-fun d!701444 () Bool)

(declare-fun res!1026932 () Bool)

(declare-fun e!1538652 () Bool)

(assert (=> d!701444 (=> res!1026932 e!1538652)))

(assert (=> d!701444 (= res!1026932 (is-ElementMatch!7106 lt!874550))))

(assert (=> d!701444 (= (validRegex!2826 lt!874550) e!1538652)))

(declare-fun b!2418055 () Bool)

(declare-fun call!147623 () Bool)

(assert (=> b!2418055 (= e!1538648 call!147623)))

(declare-fun b!2418056 () Bool)

(assert (=> b!2418056 (= e!1538652 e!1538647)))

(declare-fun c!385381 () Bool)

(assert (=> b!2418056 (= c!385381 (is-Star!7106 lt!874550))))

(declare-fun bm!147618 () Bool)

(assert (=> bm!147618 (= call!147625 (validRegex!2826 (ite c!385382 (regTwo!14725 lt!874550) (regOne!14724 lt!874550))))))

(declare-fun bm!147619 () Bool)

(assert (=> bm!147619 (= call!147624 call!147623)))

(declare-fun bm!147620 () Bool)

(assert (=> bm!147620 (= call!147623 (validRegex!2826 (ite c!385381 (reg!7435 lt!874550) (ite c!385382 (regOne!14725 lt!874550) (regTwo!14724 lt!874550)))))))

(assert (= (and d!701444 (not res!1026932)) b!2418056))

(assert (= (and b!2418056 c!385381) b!2418052))

(assert (= (and b!2418056 (not c!385381)) b!2418048))

(assert (= (and b!2418052 res!1026933) b!2418055))

(assert (= (and b!2418048 c!385382) b!2418051))

(assert (= (and b!2418048 (not c!385382)) b!2418050))

(assert (= (and b!2418051 res!1026935) b!2418053))

(assert (= (and b!2418050 (not res!1026936)) b!2418054))

(assert (= (and b!2418054 res!1026934) b!2418049))

(assert (= (or b!2418051 b!2418049) bm!147619))

(assert (= (or b!2418053 b!2418054) bm!147618))

(assert (= (or b!2418055 bm!147619) bm!147620))

(declare-fun m!2805897 () Bool)

(assert (=> b!2418052 m!2805897))

(declare-fun m!2805899 () Bool)

(assert (=> bm!147618 m!2805899))

(declare-fun m!2805901 () Bool)

(assert (=> bm!147620 m!2805901))

(assert (=> b!2417688 d!701444))

(declare-fun d!701446 () Bool)

(assert (=> d!701446 (= (isEmpty!16364 l!9164) (is-Nil!28353 l!9164))))

(assert (=> b!2417682 d!701446))

(declare-fun bs!463630 () Bool)

(declare-fun d!701448 () Bool)

(assert (= bs!463630 (and d!701448 start!236854)))

(declare-fun lambda!91075 () Int)

(assert (=> bs!463630 (= lambda!91075 lambda!91058)))

(declare-fun bs!463631 () Bool)

(assert (= bs!463631 (and d!701448 d!701418)))

(assert (=> bs!463631 (= lambda!91075 lambda!91068)))

(declare-fun b!2418057 () Bool)

(declare-fun e!1538659 () Bool)

(declare-fun lt!874615 () Regex!7106)

(assert (=> b!2418057 (= e!1538659 (isEmptyExpr!161 lt!874615))))

(declare-fun b!2418058 () Bool)

(declare-fun e!1538658 () Regex!7106)

(assert (=> b!2418058 (= e!1538658 (h!33754 l!9164))))

(declare-fun e!1538657 () Bool)

(assert (=> d!701448 e!1538657))

(declare-fun res!1026938 () Bool)

(assert (=> d!701448 (=> (not res!1026938) (not e!1538657))))

(assert (=> d!701448 (= res!1026938 (validRegex!2826 lt!874615))))

(assert (=> d!701448 (= lt!874615 e!1538658)))

(declare-fun c!385385 () Bool)

(declare-fun e!1538655 () Bool)

(assert (=> d!701448 (= c!385385 e!1538655)))

(declare-fun res!1026937 () Bool)

(assert (=> d!701448 (=> (not res!1026937) (not e!1538655))))

(assert (=> d!701448 (= res!1026937 (is-Cons!28353 l!9164))))

(assert (=> d!701448 (forall!5740 l!9164 lambda!91075)))

(assert (=> d!701448 (= (generalisedConcat!207 l!9164) lt!874615)))

(declare-fun b!2418059 () Bool)

(assert (=> b!2418059 (= e!1538655 (isEmpty!16364 (t!208428 l!9164)))))

(declare-fun b!2418060 () Bool)

(declare-fun e!1538656 () Bool)

(assert (=> b!2418060 (= e!1538656 (isConcat!161 lt!874615))))

(declare-fun b!2418061 () Bool)

(assert (=> b!2418061 (= e!1538657 e!1538659)))

(declare-fun c!385384 () Bool)

(assert (=> b!2418061 (= c!385384 (isEmpty!16364 l!9164))))

(declare-fun b!2418062 () Bool)

(declare-fun e!1538654 () Regex!7106)

(assert (=> b!2418062 (= e!1538654 (Concat!11742 (h!33754 l!9164) (generalisedConcat!207 (t!208428 l!9164))))))

(declare-fun b!2418063 () Bool)

(assert (=> b!2418063 (= e!1538656 (= lt!874615 (head!5424 l!9164)))))

(declare-fun b!2418064 () Bool)

(assert (=> b!2418064 (= e!1538658 e!1538654)))

(declare-fun c!385386 () Bool)

(assert (=> b!2418064 (= c!385386 (is-Cons!28353 l!9164))))

(declare-fun b!2418065 () Bool)

(assert (=> b!2418065 (= e!1538659 e!1538656)))

(declare-fun c!385383 () Bool)

(assert (=> b!2418065 (= c!385383 (isEmpty!16364 (tail!3696 l!9164)))))

(declare-fun b!2418066 () Bool)

(assert (=> b!2418066 (= e!1538654 EmptyExpr!7106)))

(assert (= (and d!701448 res!1026937) b!2418059))

(assert (= (and d!701448 c!385385) b!2418058))

(assert (= (and d!701448 (not c!385385)) b!2418064))

(assert (= (and b!2418064 c!385386) b!2418062))

(assert (= (and b!2418064 (not c!385386)) b!2418066))

(assert (= (and d!701448 res!1026938) b!2418061))

(assert (= (and b!2418061 c!385384) b!2418057))

(assert (= (and b!2418061 (not c!385384)) b!2418065))

(assert (= (and b!2418065 c!385383) b!2418063))

(assert (= (and b!2418065 (not c!385383)) b!2418060))

(assert (=> b!2418065 m!2805679))

(assert (=> b!2418065 m!2805679))

(declare-fun m!2805903 () Bool)

(assert (=> b!2418065 m!2805903))

(declare-fun m!2805905 () Bool)

(assert (=> b!2418062 m!2805905))

(declare-fun m!2805907 () Bool)

(assert (=> d!701448 m!2805907))

(declare-fun m!2805909 () Bool)

(assert (=> d!701448 m!2805909))

(declare-fun m!2805911 () Bool)

(assert (=> b!2418059 m!2805911))

(assert (=> b!2418063 m!2805683))

(assert (=> b!2418061 m!2805651))

(declare-fun m!2805913 () Bool)

(assert (=> b!2418057 m!2805913))

(declare-fun m!2805915 () Bool)

(assert (=> b!2418060 m!2805915))

(assert (=> b!2417689 d!701448))

(declare-fun d!701450 () Bool)

(assert (=> d!701450 (= (isEmpty!16364 lt!874551) (is-Nil!28353 lt!874551))))

(assert (=> b!2417694 d!701450))

(declare-fun d!701452 () Bool)

(assert (=> d!701452 (= (tail!3696 l!9164) (t!208428 l!9164))))

(assert (=> b!2417694 d!701452))

(declare-fun b!2418092 () Bool)

(declare-fun e!1538669 () Bool)

(declare-fun tp!768770 () Bool)

(declare-fun tp!768774 () Bool)

(assert (=> b!2418092 (= e!1538669 (and tp!768770 tp!768774))))

(declare-fun b!2418094 () Bool)

(declare-fun tp!768771 () Bool)

(declare-fun tp!768772 () Bool)

(assert (=> b!2418094 (= e!1538669 (and tp!768771 tp!768772))))

(declare-fun b!2418093 () Bool)

(declare-fun tp!768773 () Bool)

(assert (=> b!2418093 (= e!1538669 tp!768773)))

(declare-fun b!2418091 () Bool)

(assert (=> b!2418091 (= e!1538669 tp_is_empty!11625)))

(assert (=> b!2417685 (= tp!768729 e!1538669)))

(assert (= (and b!2417685 (is-ElementMatch!7106 (regOne!14724 r!13927))) b!2418091))

(assert (= (and b!2417685 (is-Concat!11742 (regOne!14724 r!13927))) b!2418092))

(assert (= (and b!2417685 (is-Star!7106 (regOne!14724 r!13927))) b!2418093))

(assert (= (and b!2417685 (is-Union!7106 (regOne!14724 r!13927))) b!2418094))

(declare-fun b!2418096 () Bool)

(declare-fun e!1538670 () Bool)

(declare-fun tp!768775 () Bool)

(declare-fun tp!768779 () Bool)

(assert (=> b!2418096 (= e!1538670 (and tp!768775 tp!768779))))

(declare-fun b!2418098 () Bool)

(declare-fun tp!768776 () Bool)

(declare-fun tp!768777 () Bool)

(assert (=> b!2418098 (= e!1538670 (and tp!768776 tp!768777))))

(declare-fun b!2418097 () Bool)

(declare-fun tp!768778 () Bool)

(assert (=> b!2418097 (= e!1538670 tp!768778)))

(declare-fun b!2418095 () Bool)

(assert (=> b!2418095 (= e!1538670 tp_is_empty!11625)))

(assert (=> b!2417685 (= tp!768735 e!1538670)))

(assert (= (and b!2417685 (is-ElementMatch!7106 (regTwo!14724 r!13927))) b!2418095))

(assert (= (and b!2417685 (is-Concat!11742 (regTwo!14724 r!13927))) b!2418096))

(assert (= (and b!2417685 (is-Star!7106 (regTwo!14724 r!13927))) b!2418097))

(assert (= (and b!2417685 (is-Union!7106 (regTwo!14724 r!13927))) b!2418098))

(declare-fun b!2418100 () Bool)

(declare-fun e!1538671 () Bool)

(declare-fun tp!768780 () Bool)

(declare-fun tp!768784 () Bool)

(assert (=> b!2418100 (= e!1538671 (and tp!768780 tp!768784))))

(declare-fun b!2418102 () Bool)

(declare-fun tp!768781 () Bool)

(declare-fun tp!768782 () Bool)

(assert (=> b!2418102 (= e!1538671 (and tp!768781 tp!768782))))

(declare-fun b!2418101 () Bool)

(declare-fun tp!768783 () Bool)

(assert (=> b!2418101 (= e!1538671 tp!768783)))

(declare-fun b!2418099 () Bool)

(assert (=> b!2418099 (= e!1538671 tp_is_empty!11625)))

(assert (=> b!2417690 (= tp!768734 e!1538671)))

(assert (= (and b!2417690 (is-ElementMatch!7106 (regOne!14725 r!13927))) b!2418099))

(assert (= (and b!2417690 (is-Concat!11742 (regOne!14725 r!13927))) b!2418100))

(assert (= (and b!2417690 (is-Star!7106 (regOne!14725 r!13927))) b!2418101))

(assert (= (and b!2417690 (is-Union!7106 (regOne!14725 r!13927))) b!2418102))

(declare-fun b!2418104 () Bool)

(declare-fun e!1538672 () Bool)

(declare-fun tp!768785 () Bool)

(declare-fun tp!768789 () Bool)

(assert (=> b!2418104 (= e!1538672 (and tp!768785 tp!768789))))

(declare-fun b!2418106 () Bool)

(declare-fun tp!768786 () Bool)

(declare-fun tp!768787 () Bool)

(assert (=> b!2418106 (= e!1538672 (and tp!768786 tp!768787))))

(declare-fun b!2418105 () Bool)

(declare-fun tp!768788 () Bool)

(assert (=> b!2418105 (= e!1538672 tp!768788)))

(declare-fun b!2418103 () Bool)

(assert (=> b!2418103 (= e!1538672 tp_is_empty!11625)))

(assert (=> b!2417690 (= tp!768731 e!1538672)))

(assert (= (and b!2417690 (is-ElementMatch!7106 (regTwo!14725 r!13927))) b!2418103))

(assert (= (and b!2417690 (is-Concat!11742 (regTwo!14725 r!13927))) b!2418104))

(assert (= (and b!2417690 (is-Star!7106 (regTwo!14725 r!13927))) b!2418105))

(assert (= (and b!2417690 (is-Union!7106 (regTwo!14725 r!13927))) b!2418106))

(declare-fun b!2418108 () Bool)

(declare-fun e!1538673 () Bool)

(declare-fun tp!768790 () Bool)

(declare-fun tp!768794 () Bool)

(assert (=> b!2418108 (= e!1538673 (and tp!768790 tp!768794))))

(declare-fun b!2418110 () Bool)

(declare-fun tp!768791 () Bool)

(declare-fun tp!768792 () Bool)

(assert (=> b!2418110 (= e!1538673 (and tp!768791 tp!768792))))

(declare-fun b!2418109 () Bool)

(declare-fun tp!768793 () Bool)

(assert (=> b!2418109 (= e!1538673 tp!768793)))

(declare-fun b!2418107 () Bool)

(assert (=> b!2418107 (= e!1538673 tp_is_empty!11625)))

(assert (=> b!2417691 (= tp!768728 e!1538673)))

(assert (= (and b!2417691 (is-ElementMatch!7106 (h!33754 l!9164))) b!2418107))

(assert (= (and b!2417691 (is-Concat!11742 (h!33754 l!9164))) b!2418108))

(assert (= (and b!2417691 (is-Star!7106 (h!33754 l!9164))) b!2418109))

(assert (= (and b!2417691 (is-Union!7106 (h!33754 l!9164))) b!2418110))

(declare-fun b!2418115 () Bool)

(declare-fun e!1538676 () Bool)

(declare-fun tp!768799 () Bool)

(declare-fun tp!768800 () Bool)

(assert (=> b!2418115 (= e!1538676 (and tp!768799 tp!768800))))

(assert (=> b!2417691 (= tp!768732 e!1538676)))

(assert (= (and b!2417691 (is-Cons!28353 (t!208428 l!9164))) b!2418115))

(declare-fun b!2418120 () Bool)

(declare-fun e!1538679 () Bool)

(declare-fun tp!768803 () Bool)

(assert (=> b!2418120 (= e!1538679 (and tp_is_empty!11625 tp!768803))))

(assert (=> b!2417693 (= tp!768730 e!1538679)))

(assert (= (and b!2417693 (is-Cons!28352 (t!208427 s!9460))) b!2418120))

(declare-fun b!2418122 () Bool)

(declare-fun e!1538680 () Bool)

(declare-fun tp!768804 () Bool)

(declare-fun tp!768808 () Bool)

(assert (=> b!2418122 (= e!1538680 (and tp!768804 tp!768808))))

(declare-fun b!2418124 () Bool)

(declare-fun tp!768805 () Bool)

(declare-fun tp!768806 () Bool)

(assert (=> b!2418124 (= e!1538680 (and tp!768805 tp!768806))))

(declare-fun b!2418123 () Bool)

(declare-fun tp!768807 () Bool)

(assert (=> b!2418123 (= e!1538680 tp!768807)))

(declare-fun b!2418121 () Bool)

(assert (=> b!2418121 (= e!1538680 tp_is_empty!11625)))

(assert (=> b!2417687 (= tp!768733 e!1538680)))

(assert (= (and b!2417687 (is-ElementMatch!7106 (reg!7435 r!13927))) b!2418121))

(assert (= (and b!2417687 (is-Concat!11742 (reg!7435 r!13927))) b!2418122))

(assert (= (and b!2417687 (is-Star!7106 (reg!7435 r!13927))) b!2418123))

(assert (= (and b!2417687 (is-Union!7106 (reg!7435 r!13927))) b!2418124))

(declare-fun b_lambda!74599 () Bool)

(assert (= b_lambda!74597 (or start!236854 b_lambda!74599)))

(declare-fun bs!463632 () Bool)

(declare-fun d!701454 () Bool)

(assert (= bs!463632 (and d!701454 start!236854)))

(assert (=> bs!463632 (= (dynLambda!12203 lambda!91058 (h!33754 l!9164)) (validRegex!2826 (h!33754 l!9164)))))

(declare-fun m!2805929 () Bool)

(assert (=> bs!463632 m!2805929))

(assert (=> b!2418046 d!701454))

(push 1)

(assert (not b!2418037))

(assert (not b!2418110))

(assert (not b!2418098))

(assert (not b!2418063))

(assert (not b!2418034))

(assert (not b!2417929))

(assert (not b!2417925))

(assert (not d!701440))

(assert (not b!2417884))

(assert (not b!2418102))

(assert (not b!2417940))

(assert (not bm!147618))

(assert (not b!2418094))

(assert (not b!2417891))

(assert (not b!2418122))

(assert (not b!2418065))

(assert (not b!2417887))

(assert (not b!2417943))

(assert (not d!701436))

(assert (not b!2418100))

(assert (not b!2417927))

(assert (not b!2417941))

(assert (not b!2418027))

(assert (not d!701402))

(assert (not b!2417988))

(assert (not b!2417933))

(assert (not d!701426))

(assert (not b!2417889))

(assert (not b!2417773))

(assert (not b!2417991))

(assert (not b!2417807))

(assert (not bm!147602))

(assert (not b!2418030))

(assert (not d!701404))

(assert (not b!2418047))

(assert (not b!2417808))

(assert (not bm!147620))

(assert (not b!2417821))

(assert (not b!2417938))

(assert (not bm!147613))

(assert (not b!2417802))

(assert (not b!2417945))

(assert (not bm!147614))

(assert (not d!701412))

(assert (not b!2417894))

(assert (not b!2417931))

(assert (not bm!147608))

(assert (not b!2417886))

(assert (not b!2418109))

(assert (not b!2417928))

(assert (not b!2418059))

(assert (not b!2418093))

(assert (not bm!147617))

(assert (not b!2418052))

(assert (not d!701418))

(assert (not bs!463632))

(assert (not d!701448))

(assert (not b!2418115))

(assert (not b_lambda!74599))

(assert (not b!2418108))

(assert (not b!2418097))

(assert (not b!2417804))

(assert (not d!701414))

(assert (not b!2418101))

(assert tp_is_empty!11625)

(assert (not b!2418124))

(assert (not b!2418105))

(assert (not b!2418060))

(assert (not b!2418040))

(assert (not b!2418039))

(assert (not bm!147604))

(assert (not b!2418104))

(assert (not b!2418057))

(assert (not b!2418096))

(assert (not b!2418032))

(assert (not b!2417930))

(assert (not b!2418062))

(assert (not bm!147607))

(assert (not b!2418106))

(assert (not b!2417809))

(assert (not b!2418092))

(assert (not b!2417948))

(assert (not b!2417805))

(assert (not b!2417820))

(assert (not d!701438))

(assert (not b!2418029))

(assert (not b!2418123))

(assert (not b!2418061))

(assert (not b!2418120))

(assert (not d!701432))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

