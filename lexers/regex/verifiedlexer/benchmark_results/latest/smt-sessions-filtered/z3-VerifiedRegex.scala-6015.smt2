; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294520 () Bool)

(assert start!294520)

(declare-fun b!3106632 () Bool)

(declare-fun e!1940963 () Bool)

(declare-datatypes ((C!19348 0))(
  ( (C!19349 (val!11710 Int)) )
))
(declare-datatypes ((Regex!9581 0))(
  ( (ElementMatch!9581 (c!519587 C!19348)) (Concat!14902 (regOne!19674 Regex!9581) (regTwo!19674 Regex!9581)) (EmptyExpr!9581) (Star!9581 (reg!9910 Regex!9581)) (EmptyLang!9581) (Union!9581 (regOne!19675 Regex!9581) (regTwo!19675 Regex!9581)) )
))
(declare-fun r!17423 () Regex!9581)

(declare-datatypes ((List!35446 0))(
  ( (Nil!35322) (Cons!35322 (h!40742 C!19348) (t!234511 List!35446)) )
))
(declare-fun s!11993 () List!35446)

(declare-fun matchR!4463 (Regex!9581 List!35446) Bool)

(declare-fun simplify!536 (Regex!9581) Regex!9581)

(assert (=> b!3106632 (= e!1940963 (not (matchR!4463 (simplify!536 r!17423) s!11993)))))

(declare-fun b!3106633 () Bool)

(declare-fun e!1940962 () Bool)

(declare-fun tp_is_empty!16725 () Bool)

(assert (=> b!3106633 (= e!1940962 tp_is_empty!16725)))

(declare-fun b!3106634 () Bool)

(declare-fun res!1272115 () Bool)

(declare-fun e!1940964 () Bool)

(assert (=> b!3106634 (=> res!1272115 e!1940964)))

(declare-fun lt!1056752 () Regex!9581)

(declare-fun isEmptyLang!632 (Regex!9581) Bool)

(assert (=> b!3106634 (= res!1272115 (not (isEmptyLang!632 lt!1056752)))))

(declare-fun b!3106635 () Bool)

(declare-fun tp!975697 () Bool)

(declare-fun tp!975700 () Bool)

(assert (=> b!3106635 (= e!1940962 (and tp!975697 tp!975700))))

(declare-fun b!3106637 () Bool)

(declare-fun tp!975699 () Bool)

(assert (=> b!3106637 (= e!1940962 tp!975699)))

(declare-fun b!3106638 () Bool)

(declare-fun e!1940966 () Bool)

(assert (=> b!3106638 (= e!1940966 e!1940964)))

(declare-fun res!1272114 () Bool)

(assert (=> b!3106638 (=> res!1272114 e!1940964)))

(declare-fun lt!1056751 () Regex!9581)

(assert (=> b!3106638 (= res!1272114 (isEmptyLang!632 lt!1056751))))

(assert (=> b!3106638 (= lt!1056752 (simplify!536 (regTwo!19675 r!17423)))))

(assert (=> b!3106638 (= lt!1056751 (simplify!536 (regOne!19675 r!17423)))))

(declare-fun b!3106639 () Bool)

(declare-fun e!1940965 () Bool)

(assert (=> b!3106639 (= e!1940965 (not e!1940966))))

(declare-fun res!1272117 () Bool)

(assert (=> b!3106639 (=> res!1272117 e!1940966)))

(declare-fun lt!1056748 () Bool)

(get-info :version)

(assert (=> b!3106639 (= res!1272117 (or lt!1056748 ((_ is Concat!14902) r!17423) (not ((_ is Union!9581) r!17423))))))

(declare-fun matchRSpec!1718 (Regex!9581 List!35446) Bool)

(assert (=> b!3106639 (= lt!1056748 (matchRSpec!1718 r!17423 s!11993))))

(assert (=> b!3106639 (= lt!1056748 (matchR!4463 r!17423 s!11993))))

(declare-datatypes ((Unit!49601 0))(
  ( (Unit!49602) )
))
(declare-fun lt!1056750 () Unit!49601)

(declare-fun mainMatchTheorem!1718 (Regex!9581 List!35446) Unit!49601)

(assert (=> b!3106639 (= lt!1056750 (mainMatchTheorem!1718 r!17423 s!11993))))

(declare-fun b!3106636 () Bool)

(assert (=> b!3106636 (= e!1940964 e!1940963)))

(declare-fun res!1272118 () Bool)

(assert (=> b!3106636 (=> res!1272118 e!1940963)))

(declare-fun lt!1056749 () Bool)

(assert (=> b!3106636 (= res!1272118 lt!1056749)))

(assert (=> b!3106636 (= lt!1056749 (matchR!4463 lt!1056751 s!11993))))

(assert (=> b!3106636 (= lt!1056749 (matchR!4463 (regOne!19675 r!17423) s!11993))))

(declare-fun lt!1056747 () Unit!49601)

(declare-fun lemmaSimplifySound!340 (Regex!9581 List!35446) Unit!49601)

(assert (=> b!3106636 (= lt!1056747 (lemmaSimplifySound!340 (regOne!19675 r!17423) s!11993))))

(declare-fun res!1272116 () Bool)

(assert (=> start!294520 (=> (not res!1272116) (not e!1940965))))

(declare-fun validRegex!4314 (Regex!9581) Bool)

(assert (=> start!294520 (= res!1272116 (validRegex!4314 r!17423))))

(assert (=> start!294520 e!1940965))

(assert (=> start!294520 e!1940962))

(declare-fun e!1940967 () Bool)

(assert (=> start!294520 e!1940967))

(declare-fun b!3106640 () Bool)

(declare-fun tp!975696 () Bool)

(declare-fun tp!975701 () Bool)

(assert (=> b!3106640 (= e!1940962 (and tp!975696 tp!975701))))

(declare-fun b!3106641 () Bool)

(declare-fun tp!975698 () Bool)

(assert (=> b!3106641 (= e!1940967 (and tp_is_empty!16725 tp!975698))))

(assert (= (and start!294520 res!1272116) b!3106639))

(assert (= (and b!3106639 (not res!1272117)) b!3106638))

(assert (= (and b!3106638 (not res!1272114)) b!3106634))

(assert (= (and b!3106634 (not res!1272115)) b!3106636))

(assert (= (and b!3106636 (not res!1272118)) b!3106632))

(assert (= (and start!294520 ((_ is ElementMatch!9581) r!17423)) b!3106633))

(assert (= (and start!294520 ((_ is Concat!14902) r!17423)) b!3106640))

(assert (= (and start!294520 ((_ is Star!9581) r!17423)) b!3106637))

(assert (= (and start!294520 ((_ is Union!9581) r!17423)) b!3106635))

(assert (= (and start!294520 ((_ is Cons!35322) s!11993)) b!3106641))

(declare-fun m!3403095 () Bool)

(assert (=> b!3106634 m!3403095))

(declare-fun m!3403097 () Bool)

(assert (=> b!3106636 m!3403097))

(declare-fun m!3403099 () Bool)

(assert (=> b!3106636 m!3403099))

(declare-fun m!3403101 () Bool)

(assert (=> b!3106636 m!3403101))

(declare-fun m!3403103 () Bool)

(assert (=> start!294520 m!3403103))

(declare-fun m!3403105 () Bool)

(assert (=> b!3106638 m!3403105))

(declare-fun m!3403107 () Bool)

(assert (=> b!3106638 m!3403107))

(declare-fun m!3403109 () Bool)

(assert (=> b!3106638 m!3403109))

(declare-fun m!3403111 () Bool)

(assert (=> b!3106632 m!3403111))

(assert (=> b!3106632 m!3403111))

(declare-fun m!3403113 () Bool)

(assert (=> b!3106632 m!3403113))

(declare-fun m!3403115 () Bool)

(assert (=> b!3106639 m!3403115))

(declare-fun m!3403117 () Bool)

(assert (=> b!3106639 m!3403117))

(declare-fun m!3403119 () Bool)

(assert (=> b!3106639 m!3403119))

(check-sat (not b!3106641) (not b!3106639) (not b!3106635) tp_is_empty!16725 (not b!3106638) (not b!3106637) (not start!294520) (not b!3106636) (not b!3106634) (not b!3106640) (not b!3106632))
(check-sat)
(get-model)

(declare-fun b!3106692 () Bool)

(declare-fun e!1940996 () Bool)

(declare-fun e!1940997 () Bool)

(assert (=> b!3106692 (= e!1940996 e!1940997)))

(declare-fun res!1272148 () Bool)

(assert (=> b!3106692 (=> (not res!1272148) (not e!1940997))))

(declare-fun lt!1056755 () Bool)

(assert (=> b!3106692 (= res!1272148 (not lt!1056755))))

(declare-fun d!861428 () Bool)

(declare-fun e!1941002 () Bool)

(assert (=> d!861428 e!1941002))

(declare-fun c!519602 () Bool)

(assert (=> d!861428 (= c!519602 ((_ is EmptyExpr!9581) (simplify!536 r!17423)))))

(declare-fun e!1941000 () Bool)

(assert (=> d!861428 (= lt!1056755 e!1941000)))

(declare-fun c!519603 () Bool)

(declare-fun isEmpty!19669 (List!35446) Bool)

(assert (=> d!861428 (= c!519603 (isEmpty!19669 s!11993))))

(assert (=> d!861428 (validRegex!4314 (simplify!536 r!17423))))

(assert (=> d!861428 (= (matchR!4463 (simplify!536 r!17423) s!11993) lt!1056755)))

(declare-fun b!3106693 () Bool)

(declare-fun res!1272147 () Bool)

(declare-fun e!1940998 () Bool)

(assert (=> b!3106693 (=> (not res!1272147) (not e!1940998))))

(declare-fun call!219543 () Bool)

(assert (=> b!3106693 (= res!1272147 (not call!219543))))

(declare-fun b!3106694 () Bool)

(declare-fun nullable!3223 (Regex!9581) Bool)

(assert (=> b!3106694 (= e!1941000 (nullable!3223 (simplify!536 r!17423)))))

(declare-fun b!3106695 () Bool)

(declare-fun e!1940999 () Bool)

(declare-fun head!6877 (List!35446) C!19348)

(assert (=> b!3106695 (= e!1940999 (not (= (head!6877 s!11993) (c!519587 (simplify!536 r!17423)))))))

(declare-fun b!3106696 () Bool)

(declare-fun e!1941001 () Bool)

(assert (=> b!3106696 (= e!1941002 e!1941001)))

(declare-fun c!519604 () Bool)

(assert (=> b!3106696 (= c!519604 ((_ is EmptyLang!9581) (simplify!536 r!17423)))))

(declare-fun b!3106697 () Bool)

(assert (=> b!3106697 (= e!1941002 (= lt!1056755 call!219543))))

(declare-fun b!3106698 () Bool)

(declare-fun res!1272142 () Bool)

(assert (=> b!3106698 (=> res!1272142 e!1940996)))

(assert (=> b!3106698 (= res!1272142 (not ((_ is ElementMatch!9581) (simplify!536 r!17423))))))

(assert (=> b!3106698 (= e!1941001 e!1940996)))

(declare-fun b!3106699 () Bool)

(declare-fun res!1272144 () Bool)

(assert (=> b!3106699 (=> (not res!1272144) (not e!1940998))))

(declare-fun tail!5103 (List!35446) List!35446)

(assert (=> b!3106699 (= res!1272144 (isEmpty!19669 (tail!5103 s!11993)))))

(declare-fun bm!219538 () Bool)

(assert (=> bm!219538 (= call!219543 (isEmpty!19669 s!11993))))

(declare-fun b!3106700 () Bool)

(assert (=> b!3106700 (= e!1940997 e!1940999)))

(declare-fun res!1272141 () Bool)

(assert (=> b!3106700 (=> res!1272141 e!1940999)))

(assert (=> b!3106700 (= res!1272141 call!219543)))

(declare-fun b!3106701 () Bool)

(declare-fun res!1272146 () Bool)

(assert (=> b!3106701 (=> res!1272146 e!1940996)))

(assert (=> b!3106701 (= res!1272146 e!1940998)))

(declare-fun res!1272143 () Bool)

(assert (=> b!3106701 (=> (not res!1272143) (not e!1940998))))

(assert (=> b!3106701 (= res!1272143 lt!1056755)))

(declare-fun b!3106702 () Bool)

(declare-fun derivativeStep!2818 (Regex!9581 C!19348) Regex!9581)

(assert (=> b!3106702 (= e!1941000 (matchR!4463 (derivativeStep!2818 (simplify!536 r!17423) (head!6877 s!11993)) (tail!5103 s!11993)))))

(declare-fun b!3106703 () Bool)

(declare-fun res!1272145 () Bool)

(assert (=> b!3106703 (=> res!1272145 e!1940999)))

(assert (=> b!3106703 (= res!1272145 (not (isEmpty!19669 (tail!5103 s!11993))))))

(declare-fun b!3106704 () Bool)

(assert (=> b!3106704 (= e!1940998 (= (head!6877 s!11993) (c!519587 (simplify!536 r!17423))))))

(declare-fun b!3106705 () Bool)

(assert (=> b!3106705 (= e!1941001 (not lt!1056755))))

(assert (= (and d!861428 c!519603) b!3106694))

(assert (= (and d!861428 (not c!519603)) b!3106702))

(assert (= (and d!861428 c!519602) b!3106697))

(assert (= (and d!861428 (not c!519602)) b!3106696))

(assert (= (and b!3106696 c!519604) b!3106705))

(assert (= (and b!3106696 (not c!519604)) b!3106698))

(assert (= (and b!3106698 (not res!1272142)) b!3106701))

(assert (= (and b!3106701 res!1272143) b!3106693))

(assert (= (and b!3106693 res!1272147) b!3106699))

(assert (= (and b!3106699 res!1272144) b!3106704))

(assert (= (and b!3106701 (not res!1272146)) b!3106692))

(assert (= (and b!3106692 res!1272148) b!3106700))

(assert (= (and b!3106700 (not res!1272141)) b!3106703))

(assert (= (and b!3106703 (not res!1272145)) b!3106695))

(assert (= (or b!3106697 b!3106693 b!3106700) bm!219538))

(declare-fun m!3403121 () Bool)

(assert (=> b!3106704 m!3403121))

(assert (=> b!3106694 m!3403111))

(declare-fun m!3403123 () Bool)

(assert (=> b!3106694 m!3403123))

(declare-fun m!3403125 () Bool)

(assert (=> bm!219538 m!3403125))

(declare-fun m!3403127 () Bool)

(assert (=> b!3106699 m!3403127))

(assert (=> b!3106699 m!3403127))

(declare-fun m!3403129 () Bool)

(assert (=> b!3106699 m!3403129))

(assert (=> b!3106702 m!3403121))

(assert (=> b!3106702 m!3403111))

(assert (=> b!3106702 m!3403121))

(declare-fun m!3403131 () Bool)

(assert (=> b!3106702 m!3403131))

(assert (=> b!3106702 m!3403127))

(assert (=> b!3106702 m!3403131))

(assert (=> b!3106702 m!3403127))

(declare-fun m!3403133 () Bool)

(assert (=> b!3106702 m!3403133))

(assert (=> b!3106695 m!3403121))

(assert (=> b!3106703 m!3403127))

(assert (=> b!3106703 m!3403127))

(assert (=> b!3106703 m!3403129))

(assert (=> d!861428 m!3403125))

(assert (=> d!861428 m!3403111))

(declare-fun m!3403135 () Bool)

(assert (=> d!861428 m!3403135))

(assert (=> b!3106632 d!861428))

(declare-fun b!3106756 () Bool)

(declare-fun e!1941043 () Regex!9581)

(assert (=> b!3106756 (= e!1941043 EmptyLang!9581)))

(declare-fun call!219563 () Bool)

(declare-fun c!519631 () Bool)

(declare-fun lt!1056768 () Regex!9581)

(declare-fun lt!1056771 () Regex!9581)

(declare-fun bm!219553 () Bool)

(declare-fun c!519632 () Bool)

(declare-fun lt!1056769 () Regex!9581)

(assert (=> bm!219553 (= call!219563 (isEmptyLang!632 (ite c!519631 lt!1056768 (ite c!519632 lt!1056771 lt!1056769))))))

(declare-fun b!3106757 () Bool)

(declare-fun e!1941036 () Regex!9581)

(assert (=> b!3106757 (= e!1941043 e!1941036)))

(declare-fun c!519633 () Bool)

(assert (=> b!3106757 (= c!519633 ((_ is ElementMatch!9581) r!17423))))

(declare-fun bm!219554 () Bool)

(declare-fun call!219560 () Regex!9581)

(declare-fun call!219558 () Regex!9581)

(assert (=> bm!219554 (= call!219560 call!219558)))

(declare-fun b!3106758 () Bool)

(declare-fun e!1941035 () Regex!9581)

(declare-fun lt!1056772 () Regex!9581)

(assert (=> b!3106758 (= e!1941035 lt!1056772)))

(declare-fun bm!219555 () Bool)

(declare-fun call!219561 () Bool)

(declare-fun isEmptyExpr!634 (Regex!9581) Bool)

(assert (=> bm!219555 (= call!219561 (isEmptyExpr!634 (ite c!519631 lt!1056768 lt!1056769)))))

(declare-fun b!3106759 () Bool)

(declare-fun e!1941033 () Regex!9581)

(declare-fun lt!1056773 () Regex!9581)

(assert (=> b!3106759 (= e!1941033 lt!1056773)))

(declare-fun b!3106760 () Bool)

(declare-fun e!1941041 () Regex!9581)

(declare-fun e!1941034 () Regex!9581)

(assert (=> b!3106760 (= e!1941041 e!1941034)))

(assert (=> b!3106760 (= lt!1056769 call!219560)))

(declare-fun call!219564 () Regex!9581)

(assert (=> b!3106760 (= lt!1056773 call!219564)))

(declare-fun res!1272157 () Bool)

(declare-fun call!219559 () Bool)

(assert (=> b!3106760 (= res!1272157 call!219559)))

(declare-fun e!1941032 () Bool)

(assert (=> b!3106760 (=> res!1272157 e!1941032)))

(declare-fun c!519634 () Bool)

(assert (=> b!3106760 (= c!519634 e!1941032)))

(declare-fun bm!219556 () Bool)

(declare-fun call!219562 () Bool)

(assert (=> bm!219556 (= call!219562 (isEmptyLang!632 (ite c!519632 lt!1056772 lt!1056773)))))

(declare-fun b!3106761 () Bool)

(declare-fun e!1941039 () Regex!9581)

(assert (=> b!3106761 (= e!1941039 lt!1056771)))

(declare-fun b!3106762 () Bool)

(declare-fun c!519629 () Bool)

(assert (=> b!3106762 (= c!519629 call!219559)))

(assert (=> b!3106762 (= e!1941039 e!1941035)))

(declare-fun b!3106763 () Bool)

(assert (=> b!3106763 (= e!1941032 call!219562)))

(declare-fun b!3106764 () Bool)

(declare-fun c!519637 () Bool)

(assert (=> b!3106764 (= c!519637 ((_ is EmptyExpr!9581) r!17423))))

(declare-fun e!1941042 () Regex!9581)

(assert (=> b!3106764 (= e!1941036 e!1941042)))

(declare-fun b!3106765 () Bool)

(declare-fun e!1941037 () Regex!9581)

(assert (=> b!3106765 (= e!1941037 EmptyExpr!9581)))

(declare-fun b!3106766 () Bool)

(assert (=> b!3106766 (= e!1941042 EmptyExpr!9581)))

(declare-fun b!3106767 () Bool)

(declare-fun e!1941044 () Regex!9581)

(assert (=> b!3106767 (= e!1941033 e!1941044)))

(declare-fun c!519627 () Bool)

(assert (=> b!3106767 (= c!519627 (isEmptyExpr!634 lt!1056773))))

(declare-fun b!3106768 () Bool)

(assert (=> b!3106768 (= e!1941035 (Union!9581 lt!1056772 lt!1056771))))

(declare-fun d!861430 () Bool)

(declare-fun e!1941040 () Bool)

(assert (=> d!861430 e!1941040))

(declare-fun res!1272155 () Bool)

(assert (=> d!861430 (=> (not res!1272155) (not e!1941040))))

(declare-fun lt!1056770 () Regex!9581)

(assert (=> d!861430 (= res!1272155 (validRegex!4314 lt!1056770))))

(assert (=> d!861430 (= lt!1056770 e!1941043)))

(declare-fun c!519630 () Bool)

(assert (=> d!861430 (= c!519630 ((_ is EmptyLang!9581) r!17423))))

(assert (=> d!861430 (validRegex!4314 r!17423)))

(assert (=> d!861430 (= (simplify!536 r!17423) lt!1056770)))

(declare-fun b!3106769 () Bool)

(assert (=> b!3106769 (= e!1941044 lt!1056769)))

(declare-fun b!3106770 () Bool)

(assert (=> b!3106770 (= e!1941040 (= (nullable!3223 lt!1056770) (nullable!3223 r!17423)))))

(declare-fun b!3106771 () Bool)

(declare-fun c!519628 () Bool)

(assert (=> b!3106771 (= c!519628 call!219561)))

(assert (=> b!3106771 (= e!1941034 e!1941033)))

(declare-fun b!3106772 () Bool)

(declare-fun e!1941038 () Bool)

(assert (=> b!3106772 (= e!1941038 call!219561)))

(declare-fun bm!219557 () Bool)

(assert (=> bm!219557 (= call!219558 (simplify!536 (ite c!519631 (reg!9910 r!17423) (ite c!519632 (regTwo!19675 r!17423) (regOne!19674 r!17423)))))))

(declare-fun b!3106773 () Bool)

(assert (=> b!3106773 (= e!1941036 r!17423)))

(declare-fun b!3106774 () Bool)

(assert (=> b!3106774 (= e!1941034 EmptyLang!9581)))

(declare-fun b!3106775 () Bool)

(assert (=> b!3106775 (= e!1941044 (Concat!14902 lt!1056769 lt!1056773))))

(declare-fun bm!219558 () Bool)

(assert (=> bm!219558 (= call!219564 (simplify!536 (ite c!519632 (regOne!19675 r!17423) (regTwo!19674 r!17423))))))

(declare-fun b!3106776 () Bool)

(assert (=> b!3106776 (= e!1941041 e!1941039)))

(assert (=> b!3106776 (= lt!1056772 call!219564)))

(assert (=> b!3106776 (= lt!1056771 call!219560)))

(declare-fun c!519635 () Bool)

(assert (=> b!3106776 (= c!519635 call!219562)))

(declare-fun b!3106777 () Bool)

(assert (=> b!3106777 (= c!519632 ((_ is Union!9581) r!17423))))

(declare-fun e!1941031 () Regex!9581)

(assert (=> b!3106777 (= e!1941031 e!1941041)))

(declare-fun b!3106778 () Bool)

(declare-fun c!519636 () Bool)

(assert (=> b!3106778 (= c!519636 e!1941038)))

(declare-fun res!1272156 () Bool)

(assert (=> b!3106778 (=> res!1272156 e!1941038)))

(assert (=> b!3106778 (= res!1272156 call!219563)))

(assert (=> b!3106778 (= lt!1056768 call!219558)))

(assert (=> b!3106778 (= e!1941031 e!1941037)))

(declare-fun bm!219559 () Bool)

(assert (=> bm!219559 (= call!219559 call!219563)))

(declare-fun b!3106779 () Bool)

(assert (=> b!3106779 (= e!1941042 e!1941031)))

(assert (=> b!3106779 (= c!519631 ((_ is Star!9581) r!17423))))

(declare-fun b!3106780 () Bool)

(assert (=> b!3106780 (= e!1941037 (Star!9581 lt!1056768))))

(assert (= (and d!861430 c!519630) b!3106756))

(assert (= (and d!861430 (not c!519630)) b!3106757))

(assert (= (and b!3106757 c!519633) b!3106773))

(assert (= (and b!3106757 (not c!519633)) b!3106764))

(assert (= (and b!3106764 c!519637) b!3106766))

(assert (= (and b!3106764 (not c!519637)) b!3106779))

(assert (= (and b!3106779 c!519631) b!3106778))

(assert (= (and b!3106779 (not c!519631)) b!3106777))

(assert (= (and b!3106778 (not res!1272156)) b!3106772))

(assert (= (and b!3106778 c!519636) b!3106765))

(assert (= (and b!3106778 (not c!519636)) b!3106780))

(assert (= (and b!3106777 c!519632) b!3106776))

(assert (= (and b!3106777 (not c!519632)) b!3106760))

(assert (= (and b!3106776 c!519635) b!3106761))

(assert (= (and b!3106776 (not c!519635)) b!3106762))

(assert (= (and b!3106762 c!519629) b!3106758))

(assert (= (and b!3106762 (not c!519629)) b!3106768))

(assert (= (and b!3106760 (not res!1272157)) b!3106763))

(assert (= (and b!3106760 c!519634) b!3106774))

(assert (= (and b!3106760 (not c!519634)) b!3106771))

(assert (= (and b!3106771 c!519628) b!3106759))

(assert (= (and b!3106771 (not c!519628)) b!3106767))

(assert (= (and b!3106767 c!519627) b!3106769))

(assert (= (and b!3106767 (not c!519627)) b!3106775))

(assert (= (or b!3106776 b!3106760) bm!219558))

(assert (= (or b!3106776 b!3106760) bm!219554))

(assert (= (or b!3106776 b!3106763) bm!219556))

(assert (= (or b!3106762 b!3106760) bm!219559))

(assert (= (or b!3106772 b!3106771) bm!219555))

(assert (= (or b!3106778 bm!219554) bm!219557))

(assert (= (or b!3106778 bm!219559) bm!219553))

(assert (= (and d!861430 res!1272155) b!3106770))

(declare-fun m!3403137 () Bool)

(assert (=> bm!219553 m!3403137))

(declare-fun m!3403139 () Bool)

(assert (=> bm!219558 m!3403139))

(declare-fun m!3403141 () Bool)

(assert (=> bm!219555 m!3403141))

(declare-fun m!3403143 () Bool)

(assert (=> d!861430 m!3403143))

(assert (=> d!861430 m!3403103))

(declare-fun m!3403145 () Bool)

(assert (=> bm!219557 m!3403145))

(declare-fun m!3403147 () Bool)

(assert (=> bm!219556 m!3403147))

(declare-fun m!3403149 () Bool)

(assert (=> b!3106767 m!3403149))

(declare-fun m!3403151 () Bool)

(assert (=> b!3106770 m!3403151))

(declare-fun m!3403153 () Bool)

(assert (=> b!3106770 m!3403153))

(assert (=> b!3106632 d!861430))

(declare-fun d!861432 () Bool)

(assert (=> d!861432 (= (isEmptyLang!632 lt!1056751) ((_ is EmptyLang!9581) lt!1056751))))

(assert (=> b!3106638 d!861432))

(declare-fun b!3106781 () Bool)

(declare-fun e!1941057 () Regex!9581)

(assert (=> b!3106781 (= e!1941057 EmptyLang!9581)))

(declare-fun lt!1056777 () Regex!9581)

(declare-fun bm!219560 () Bool)

(declare-fun c!519643 () Bool)

(declare-fun call!219570 () Bool)

(declare-fun lt!1056775 () Regex!9581)

(declare-fun c!519642 () Bool)

(declare-fun lt!1056774 () Regex!9581)

(assert (=> bm!219560 (= call!219570 (isEmptyLang!632 (ite c!519642 lt!1056774 (ite c!519643 lt!1056777 lt!1056775))))))

(declare-fun b!3106782 () Bool)

(declare-fun e!1941050 () Regex!9581)

(assert (=> b!3106782 (= e!1941057 e!1941050)))

(declare-fun c!519644 () Bool)

(assert (=> b!3106782 (= c!519644 ((_ is ElementMatch!9581) (regTwo!19675 r!17423)))))

(declare-fun bm!219561 () Bool)

(declare-fun call!219567 () Regex!9581)

(declare-fun call!219565 () Regex!9581)

(assert (=> bm!219561 (= call!219567 call!219565)))

(declare-fun b!3106783 () Bool)

(declare-fun e!1941049 () Regex!9581)

(declare-fun lt!1056778 () Regex!9581)

(assert (=> b!3106783 (= e!1941049 lt!1056778)))

(declare-fun call!219568 () Bool)

(declare-fun bm!219562 () Bool)

(assert (=> bm!219562 (= call!219568 (isEmptyExpr!634 (ite c!519642 lt!1056774 lt!1056775)))))

(declare-fun b!3106784 () Bool)

(declare-fun e!1941047 () Regex!9581)

(declare-fun lt!1056779 () Regex!9581)

(assert (=> b!3106784 (= e!1941047 lt!1056779)))

(declare-fun b!3106785 () Bool)

(declare-fun e!1941055 () Regex!9581)

(declare-fun e!1941048 () Regex!9581)

(assert (=> b!3106785 (= e!1941055 e!1941048)))

(assert (=> b!3106785 (= lt!1056775 call!219567)))

(declare-fun call!219571 () Regex!9581)

(assert (=> b!3106785 (= lt!1056779 call!219571)))

(declare-fun res!1272160 () Bool)

(declare-fun call!219566 () Bool)

(assert (=> b!3106785 (= res!1272160 call!219566)))

(declare-fun e!1941046 () Bool)

(assert (=> b!3106785 (=> res!1272160 e!1941046)))

(declare-fun c!519645 () Bool)

(assert (=> b!3106785 (= c!519645 e!1941046)))

(declare-fun bm!219563 () Bool)

(declare-fun call!219569 () Bool)

(assert (=> bm!219563 (= call!219569 (isEmptyLang!632 (ite c!519643 lt!1056778 lt!1056779)))))

(declare-fun b!3106786 () Bool)

(declare-fun e!1941053 () Regex!9581)

(assert (=> b!3106786 (= e!1941053 lt!1056777)))

(declare-fun b!3106787 () Bool)

(declare-fun c!519640 () Bool)

(assert (=> b!3106787 (= c!519640 call!219566)))

(assert (=> b!3106787 (= e!1941053 e!1941049)))

(declare-fun b!3106788 () Bool)

(assert (=> b!3106788 (= e!1941046 call!219569)))

(declare-fun b!3106789 () Bool)

(declare-fun c!519648 () Bool)

(assert (=> b!3106789 (= c!519648 ((_ is EmptyExpr!9581) (regTwo!19675 r!17423)))))

(declare-fun e!1941056 () Regex!9581)

(assert (=> b!3106789 (= e!1941050 e!1941056)))

(declare-fun b!3106790 () Bool)

(declare-fun e!1941051 () Regex!9581)

(assert (=> b!3106790 (= e!1941051 EmptyExpr!9581)))

(declare-fun b!3106791 () Bool)

(assert (=> b!3106791 (= e!1941056 EmptyExpr!9581)))

(declare-fun b!3106792 () Bool)

(declare-fun e!1941058 () Regex!9581)

(assert (=> b!3106792 (= e!1941047 e!1941058)))

(declare-fun c!519638 () Bool)

(assert (=> b!3106792 (= c!519638 (isEmptyExpr!634 lt!1056779))))

(declare-fun b!3106793 () Bool)

(assert (=> b!3106793 (= e!1941049 (Union!9581 lt!1056778 lt!1056777))))

(declare-fun d!861434 () Bool)

(declare-fun e!1941054 () Bool)

(assert (=> d!861434 e!1941054))

(declare-fun res!1272158 () Bool)

(assert (=> d!861434 (=> (not res!1272158) (not e!1941054))))

(declare-fun lt!1056776 () Regex!9581)

(assert (=> d!861434 (= res!1272158 (validRegex!4314 lt!1056776))))

(assert (=> d!861434 (= lt!1056776 e!1941057)))

(declare-fun c!519641 () Bool)

(assert (=> d!861434 (= c!519641 ((_ is EmptyLang!9581) (regTwo!19675 r!17423)))))

(assert (=> d!861434 (validRegex!4314 (regTwo!19675 r!17423))))

(assert (=> d!861434 (= (simplify!536 (regTwo!19675 r!17423)) lt!1056776)))

(declare-fun b!3106794 () Bool)

(assert (=> b!3106794 (= e!1941058 lt!1056775)))

(declare-fun b!3106795 () Bool)

(assert (=> b!3106795 (= e!1941054 (= (nullable!3223 lt!1056776) (nullable!3223 (regTwo!19675 r!17423))))))

(declare-fun b!3106796 () Bool)

(declare-fun c!519639 () Bool)

(assert (=> b!3106796 (= c!519639 call!219568)))

(assert (=> b!3106796 (= e!1941048 e!1941047)))

(declare-fun b!3106797 () Bool)

(declare-fun e!1941052 () Bool)

(assert (=> b!3106797 (= e!1941052 call!219568)))

(declare-fun bm!219564 () Bool)

(assert (=> bm!219564 (= call!219565 (simplify!536 (ite c!519642 (reg!9910 (regTwo!19675 r!17423)) (ite c!519643 (regTwo!19675 (regTwo!19675 r!17423)) (regOne!19674 (regTwo!19675 r!17423))))))))

(declare-fun b!3106798 () Bool)

(assert (=> b!3106798 (= e!1941050 (regTwo!19675 r!17423))))

(declare-fun b!3106799 () Bool)

(assert (=> b!3106799 (= e!1941048 EmptyLang!9581)))

(declare-fun b!3106800 () Bool)

(assert (=> b!3106800 (= e!1941058 (Concat!14902 lt!1056775 lt!1056779))))

(declare-fun bm!219565 () Bool)

(assert (=> bm!219565 (= call!219571 (simplify!536 (ite c!519643 (regOne!19675 (regTwo!19675 r!17423)) (regTwo!19674 (regTwo!19675 r!17423)))))))

(declare-fun b!3106801 () Bool)

(assert (=> b!3106801 (= e!1941055 e!1941053)))

(assert (=> b!3106801 (= lt!1056778 call!219571)))

(assert (=> b!3106801 (= lt!1056777 call!219567)))

(declare-fun c!519646 () Bool)

(assert (=> b!3106801 (= c!519646 call!219569)))

(declare-fun b!3106802 () Bool)

(assert (=> b!3106802 (= c!519643 ((_ is Union!9581) (regTwo!19675 r!17423)))))

(declare-fun e!1941045 () Regex!9581)

(assert (=> b!3106802 (= e!1941045 e!1941055)))

(declare-fun b!3106803 () Bool)

(declare-fun c!519647 () Bool)

(assert (=> b!3106803 (= c!519647 e!1941052)))

(declare-fun res!1272159 () Bool)

(assert (=> b!3106803 (=> res!1272159 e!1941052)))

(assert (=> b!3106803 (= res!1272159 call!219570)))

(assert (=> b!3106803 (= lt!1056774 call!219565)))

(assert (=> b!3106803 (= e!1941045 e!1941051)))

(declare-fun bm!219566 () Bool)

(assert (=> bm!219566 (= call!219566 call!219570)))

(declare-fun b!3106804 () Bool)

(assert (=> b!3106804 (= e!1941056 e!1941045)))

(assert (=> b!3106804 (= c!519642 ((_ is Star!9581) (regTwo!19675 r!17423)))))

(declare-fun b!3106805 () Bool)

(assert (=> b!3106805 (= e!1941051 (Star!9581 lt!1056774))))

(assert (= (and d!861434 c!519641) b!3106781))

(assert (= (and d!861434 (not c!519641)) b!3106782))

(assert (= (and b!3106782 c!519644) b!3106798))

(assert (= (and b!3106782 (not c!519644)) b!3106789))

(assert (= (and b!3106789 c!519648) b!3106791))

(assert (= (and b!3106789 (not c!519648)) b!3106804))

(assert (= (and b!3106804 c!519642) b!3106803))

(assert (= (and b!3106804 (not c!519642)) b!3106802))

(assert (= (and b!3106803 (not res!1272159)) b!3106797))

(assert (= (and b!3106803 c!519647) b!3106790))

(assert (= (and b!3106803 (not c!519647)) b!3106805))

(assert (= (and b!3106802 c!519643) b!3106801))

(assert (= (and b!3106802 (not c!519643)) b!3106785))

(assert (= (and b!3106801 c!519646) b!3106786))

(assert (= (and b!3106801 (not c!519646)) b!3106787))

(assert (= (and b!3106787 c!519640) b!3106783))

(assert (= (and b!3106787 (not c!519640)) b!3106793))

(assert (= (and b!3106785 (not res!1272160)) b!3106788))

(assert (= (and b!3106785 c!519645) b!3106799))

(assert (= (and b!3106785 (not c!519645)) b!3106796))

(assert (= (and b!3106796 c!519639) b!3106784))

(assert (= (and b!3106796 (not c!519639)) b!3106792))

(assert (= (and b!3106792 c!519638) b!3106794))

(assert (= (and b!3106792 (not c!519638)) b!3106800))

(assert (= (or b!3106801 b!3106785) bm!219565))

(assert (= (or b!3106801 b!3106785) bm!219561))

(assert (= (or b!3106801 b!3106788) bm!219563))

(assert (= (or b!3106787 b!3106785) bm!219566))

(assert (= (or b!3106797 b!3106796) bm!219562))

(assert (= (or b!3106803 bm!219561) bm!219564))

(assert (= (or b!3106803 bm!219566) bm!219560))

(assert (= (and d!861434 res!1272158) b!3106795))

(declare-fun m!3403155 () Bool)

(assert (=> bm!219560 m!3403155))

(declare-fun m!3403157 () Bool)

(assert (=> bm!219565 m!3403157))

(declare-fun m!3403159 () Bool)

(assert (=> bm!219562 m!3403159))

(declare-fun m!3403161 () Bool)

(assert (=> d!861434 m!3403161))

(declare-fun m!3403163 () Bool)

(assert (=> d!861434 m!3403163))

(declare-fun m!3403165 () Bool)

(assert (=> bm!219564 m!3403165))

(declare-fun m!3403167 () Bool)

(assert (=> bm!219563 m!3403167))

(declare-fun m!3403169 () Bool)

(assert (=> b!3106792 m!3403169))

(declare-fun m!3403171 () Bool)

(assert (=> b!3106795 m!3403171))

(declare-fun m!3403173 () Bool)

(assert (=> b!3106795 m!3403173))

(assert (=> b!3106638 d!861434))

(declare-fun b!3106806 () Bool)

(declare-fun e!1941071 () Regex!9581)

(assert (=> b!3106806 (= e!1941071 EmptyLang!9581)))

(declare-fun lt!1056781 () Regex!9581)

(declare-fun lt!1056783 () Regex!9581)

(declare-fun call!219577 () Bool)

(declare-fun bm!219567 () Bool)

(declare-fun c!519653 () Bool)

(declare-fun c!519654 () Bool)

(declare-fun lt!1056780 () Regex!9581)

(assert (=> bm!219567 (= call!219577 (isEmptyLang!632 (ite c!519653 lt!1056780 (ite c!519654 lt!1056783 lt!1056781))))))

(declare-fun b!3106807 () Bool)

(declare-fun e!1941064 () Regex!9581)

(assert (=> b!3106807 (= e!1941071 e!1941064)))

(declare-fun c!519655 () Bool)

(assert (=> b!3106807 (= c!519655 ((_ is ElementMatch!9581) (regOne!19675 r!17423)))))

(declare-fun bm!219568 () Bool)

(declare-fun call!219574 () Regex!9581)

(declare-fun call!219572 () Regex!9581)

(assert (=> bm!219568 (= call!219574 call!219572)))

(declare-fun b!3106808 () Bool)

(declare-fun e!1941063 () Regex!9581)

(declare-fun lt!1056784 () Regex!9581)

(assert (=> b!3106808 (= e!1941063 lt!1056784)))

(declare-fun call!219575 () Bool)

(declare-fun bm!219569 () Bool)

(assert (=> bm!219569 (= call!219575 (isEmptyExpr!634 (ite c!519653 lt!1056780 lt!1056781)))))

(declare-fun b!3106809 () Bool)

(declare-fun e!1941061 () Regex!9581)

(declare-fun lt!1056785 () Regex!9581)

(assert (=> b!3106809 (= e!1941061 lt!1056785)))

(declare-fun b!3106810 () Bool)

(declare-fun e!1941069 () Regex!9581)

(declare-fun e!1941062 () Regex!9581)

(assert (=> b!3106810 (= e!1941069 e!1941062)))

(assert (=> b!3106810 (= lt!1056781 call!219574)))

(declare-fun call!219578 () Regex!9581)

(assert (=> b!3106810 (= lt!1056785 call!219578)))

(declare-fun res!1272163 () Bool)

(declare-fun call!219573 () Bool)

(assert (=> b!3106810 (= res!1272163 call!219573)))

(declare-fun e!1941060 () Bool)

(assert (=> b!3106810 (=> res!1272163 e!1941060)))

(declare-fun c!519656 () Bool)

(assert (=> b!3106810 (= c!519656 e!1941060)))

(declare-fun call!219576 () Bool)

(declare-fun bm!219570 () Bool)

(assert (=> bm!219570 (= call!219576 (isEmptyLang!632 (ite c!519654 lt!1056784 lt!1056785)))))

(declare-fun b!3106811 () Bool)

(declare-fun e!1941067 () Regex!9581)

(assert (=> b!3106811 (= e!1941067 lt!1056783)))

(declare-fun b!3106812 () Bool)

(declare-fun c!519651 () Bool)

(assert (=> b!3106812 (= c!519651 call!219573)))

(assert (=> b!3106812 (= e!1941067 e!1941063)))

(declare-fun b!3106813 () Bool)

(assert (=> b!3106813 (= e!1941060 call!219576)))

(declare-fun b!3106814 () Bool)

(declare-fun c!519659 () Bool)

(assert (=> b!3106814 (= c!519659 ((_ is EmptyExpr!9581) (regOne!19675 r!17423)))))

(declare-fun e!1941070 () Regex!9581)

(assert (=> b!3106814 (= e!1941064 e!1941070)))

(declare-fun b!3106815 () Bool)

(declare-fun e!1941065 () Regex!9581)

(assert (=> b!3106815 (= e!1941065 EmptyExpr!9581)))

(declare-fun b!3106816 () Bool)

(assert (=> b!3106816 (= e!1941070 EmptyExpr!9581)))

(declare-fun b!3106817 () Bool)

(declare-fun e!1941072 () Regex!9581)

(assert (=> b!3106817 (= e!1941061 e!1941072)))

(declare-fun c!519649 () Bool)

(assert (=> b!3106817 (= c!519649 (isEmptyExpr!634 lt!1056785))))

(declare-fun b!3106818 () Bool)

(assert (=> b!3106818 (= e!1941063 (Union!9581 lt!1056784 lt!1056783))))

(declare-fun d!861436 () Bool)

(declare-fun e!1941068 () Bool)

(assert (=> d!861436 e!1941068))

(declare-fun res!1272161 () Bool)

(assert (=> d!861436 (=> (not res!1272161) (not e!1941068))))

(declare-fun lt!1056782 () Regex!9581)

(assert (=> d!861436 (= res!1272161 (validRegex!4314 lt!1056782))))

(assert (=> d!861436 (= lt!1056782 e!1941071)))

(declare-fun c!519652 () Bool)

(assert (=> d!861436 (= c!519652 ((_ is EmptyLang!9581) (regOne!19675 r!17423)))))

(assert (=> d!861436 (validRegex!4314 (regOne!19675 r!17423))))

(assert (=> d!861436 (= (simplify!536 (regOne!19675 r!17423)) lt!1056782)))

(declare-fun b!3106819 () Bool)

(assert (=> b!3106819 (= e!1941072 lt!1056781)))

(declare-fun b!3106820 () Bool)

(assert (=> b!3106820 (= e!1941068 (= (nullable!3223 lt!1056782) (nullable!3223 (regOne!19675 r!17423))))))

(declare-fun b!3106821 () Bool)

(declare-fun c!519650 () Bool)

(assert (=> b!3106821 (= c!519650 call!219575)))

(assert (=> b!3106821 (= e!1941062 e!1941061)))

(declare-fun b!3106822 () Bool)

(declare-fun e!1941066 () Bool)

(assert (=> b!3106822 (= e!1941066 call!219575)))

(declare-fun bm!219571 () Bool)

(assert (=> bm!219571 (= call!219572 (simplify!536 (ite c!519653 (reg!9910 (regOne!19675 r!17423)) (ite c!519654 (regTwo!19675 (regOne!19675 r!17423)) (regOne!19674 (regOne!19675 r!17423))))))))

(declare-fun b!3106823 () Bool)

(assert (=> b!3106823 (= e!1941064 (regOne!19675 r!17423))))

(declare-fun b!3106824 () Bool)

(assert (=> b!3106824 (= e!1941062 EmptyLang!9581)))

(declare-fun b!3106825 () Bool)

(assert (=> b!3106825 (= e!1941072 (Concat!14902 lt!1056781 lt!1056785))))

(declare-fun bm!219572 () Bool)

(assert (=> bm!219572 (= call!219578 (simplify!536 (ite c!519654 (regOne!19675 (regOne!19675 r!17423)) (regTwo!19674 (regOne!19675 r!17423)))))))

(declare-fun b!3106826 () Bool)

(assert (=> b!3106826 (= e!1941069 e!1941067)))

(assert (=> b!3106826 (= lt!1056784 call!219578)))

(assert (=> b!3106826 (= lt!1056783 call!219574)))

(declare-fun c!519657 () Bool)

(assert (=> b!3106826 (= c!519657 call!219576)))

(declare-fun b!3106827 () Bool)

(assert (=> b!3106827 (= c!519654 ((_ is Union!9581) (regOne!19675 r!17423)))))

(declare-fun e!1941059 () Regex!9581)

(assert (=> b!3106827 (= e!1941059 e!1941069)))

(declare-fun b!3106828 () Bool)

(declare-fun c!519658 () Bool)

(assert (=> b!3106828 (= c!519658 e!1941066)))

(declare-fun res!1272162 () Bool)

(assert (=> b!3106828 (=> res!1272162 e!1941066)))

(assert (=> b!3106828 (= res!1272162 call!219577)))

(assert (=> b!3106828 (= lt!1056780 call!219572)))

(assert (=> b!3106828 (= e!1941059 e!1941065)))

(declare-fun bm!219573 () Bool)

(assert (=> bm!219573 (= call!219573 call!219577)))

(declare-fun b!3106829 () Bool)

(assert (=> b!3106829 (= e!1941070 e!1941059)))

(assert (=> b!3106829 (= c!519653 ((_ is Star!9581) (regOne!19675 r!17423)))))

(declare-fun b!3106830 () Bool)

(assert (=> b!3106830 (= e!1941065 (Star!9581 lt!1056780))))

(assert (= (and d!861436 c!519652) b!3106806))

(assert (= (and d!861436 (not c!519652)) b!3106807))

(assert (= (and b!3106807 c!519655) b!3106823))

(assert (= (and b!3106807 (not c!519655)) b!3106814))

(assert (= (and b!3106814 c!519659) b!3106816))

(assert (= (and b!3106814 (not c!519659)) b!3106829))

(assert (= (and b!3106829 c!519653) b!3106828))

(assert (= (and b!3106829 (not c!519653)) b!3106827))

(assert (= (and b!3106828 (not res!1272162)) b!3106822))

(assert (= (and b!3106828 c!519658) b!3106815))

(assert (= (and b!3106828 (not c!519658)) b!3106830))

(assert (= (and b!3106827 c!519654) b!3106826))

(assert (= (and b!3106827 (not c!519654)) b!3106810))

(assert (= (and b!3106826 c!519657) b!3106811))

(assert (= (and b!3106826 (not c!519657)) b!3106812))

(assert (= (and b!3106812 c!519651) b!3106808))

(assert (= (and b!3106812 (not c!519651)) b!3106818))

(assert (= (and b!3106810 (not res!1272163)) b!3106813))

(assert (= (and b!3106810 c!519656) b!3106824))

(assert (= (and b!3106810 (not c!519656)) b!3106821))

(assert (= (and b!3106821 c!519650) b!3106809))

(assert (= (and b!3106821 (not c!519650)) b!3106817))

(assert (= (and b!3106817 c!519649) b!3106819))

(assert (= (and b!3106817 (not c!519649)) b!3106825))

(assert (= (or b!3106826 b!3106810) bm!219572))

(assert (= (or b!3106826 b!3106810) bm!219568))

(assert (= (or b!3106826 b!3106813) bm!219570))

(assert (= (or b!3106812 b!3106810) bm!219573))

(assert (= (or b!3106822 b!3106821) bm!219569))

(assert (= (or b!3106828 bm!219568) bm!219571))

(assert (= (or b!3106828 bm!219573) bm!219567))

(assert (= (and d!861436 res!1272161) b!3106820))

(declare-fun m!3403175 () Bool)

(assert (=> bm!219567 m!3403175))

(declare-fun m!3403177 () Bool)

(assert (=> bm!219572 m!3403177))

(declare-fun m!3403179 () Bool)

(assert (=> bm!219569 m!3403179))

(declare-fun m!3403181 () Bool)

(assert (=> d!861436 m!3403181))

(declare-fun m!3403183 () Bool)

(assert (=> d!861436 m!3403183))

(declare-fun m!3403185 () Bool)

(assert (=> bm!219571 m!3403185))

(declare-fun m!3403187 () Bool)

(assert (=> bm!219570 m!3403187))

(declare-fun m!3403189 () Bool)

(assert (=> b!3106817 m!3403189))

(declare-fun m!3403191 () Bool)

(assert (=> b!3106820 m!3403191))

(declare-fun m!3403193 () Bool)

(assert (=> b!3106820 m!3403193))

(assert (=> b!3106638 d!861436))

(declare-fun b!3107165 () Bool)

(assert (=> b!3107165 true))

(assert (=> b!3107165 true))

(declare-fun bs!535753 () Bool)

(declare-fun b!3107161 () Bool)

(assert (= bs!535753 (and b!3107161 b!3107165)))

(declare-fun lambda!114988 () Int)

(declare-fun lambda!114987 () Int)

(assert (=> bs!535753 (not (= lambda!114988 lambda!114987))))

(assert (=> b!3107161 true))

(assert (=> b!3107161 true))

(declare-fun b!3107159 () Bool)

(declare-fun e!1941250 () Bool)

(assert (=> b!3107159 (= e!1941250 (= s!11993 (Cons!35322 (c!519587 r!17423) Nil!35322)))))

(declare-fun b!3107160 () Bool)

(declare-fun e!1941245 () Bool)

(declare-fun call!219640 () Bool)

(assert (=> b!3107160 (= e!1941245 call!219640)))

(declare-fun d!861438 () Bool)

(declare-fun c!519753 () Bool)

(assert (=> d!861438 (= c!519753 ((_ is EmptyExpr!9581) r!17423))))

(assert (=> d!861438 (= (matchRSpec!1718 r!17423 s!11993) e!1941245)))

(declare-fun e!1941246 () Bool)

(declare-fun call!219639 () Bool)

(assert (=> b!3107161 (= e!1941246 call!219639)))

(declare-fun b!3107162 () Bool)

(declare-fun c!519751 () Bool)

(assert (=> b!3107162 (= c!519751 ((_ is Union!9581) r!17423))))

(declare-fun e!1941251 () Bool)

(assert (=> b!3107162 (= e!1941250 e!1941251)))

(declare-fun b!3107163 () Bool)

(declare-fun res!1272273 () Bool)

(declare-fun e!1941248 () Bool)

(assert (=> b!3107163 (=> res!1272273 e!1941248)))

(assert (=> b!3107163 (= res!1272273 call!219640)))

(assert (=> b!3107163 (= e!1941246 e!1941248)))

(declare-fun bm!219634 () Bool)

(assert (=> bm!219634 (= call!219640 (isEmpty!19669 s!11993))))

(declare-fun b!3107164 () Bool)

(declare-fun e!1941249 () Bool)

(assert (=> b!3107164 (= e!1941251 e!1941249)))

(declare-fun res!1272272 () Bool)

(assert (=> b!3107164 (= res!1272272 (matchRSpec!1718 (regOne!19675 r!17423) s!11993))))

(assert (=> b!3107164 (=> res!1272272 e!1941249)))

(assert (=> b!3107165 (= e!1941248 call!219639)))

(declare-fun b!3107166 () Bool)

(assert (=> b!3107166 (= e!1941251 e!1941246)))

(declare-fun c!519754 () Bool)

(assert (=> b!3107166 (= c!519754 ((_ is Star!9581) r!17423))))

(declare-fun b!3107167 () Bool)

(declare-fun e!1941247 () Bool)

(assert (=> b!3107167 (= e!1941245 e!1941247)))

(declare-fun res!1272271 () Bool)

(assert (=> b!3107167 (= res!1272271 (not ((_ is EmptyLang!9581) r!17423)))))

(assert (=> b!3107167 (=> (not res!1272271) (not e!1941247))))

(declare-fun b!3107168 () Bool)

(assert (=> b!3107168 (= e!1941249 (matchRSpec!1718 (regTwo!19675 r!17423) s!11993))))

(declare-fun bm!219635 () Bool)

(declare-fun Exists!1840 (Int) Bool)

(assert (=> bm!219635 (= call!219639 (Exists!1840 (ite c!519754 lambda!114987 lambda!114988)))))

(declare-fun b!3107169 () Bool)

(declare-fun c!519752 () Bool)

(assert (=> b!3107169 (= c!519752 ((_ is ElementMatch!9581) r!17423))))

(assert (=> b!3107169 (= e!1941247 e!1941250)))

(assert (= (and d!861438 c!519753) b!3107160))

(assert (= (and d!861438 (not c!519753)) b!3107167))

(assert (= (and b!3107167 res!1272271) b!3107169))

(assert (= (and b!3107169 c!519752) b!3107159))

(assert (= (and b!3107169 (not c!519752)) b!3107162))

(assert (= (and b!3107162 c!519751) b!3107164))

(assert (= (and b!3107162 (not c!519751)) b!3107166))

(assert (= (and b!3107164 (not res!1272272)) b!3107168))

(assert (= (and b!3107166 c!519754) b!3107163))

(assert (= (and b!3107166 (not c!519754)) b!3107161))

(assert (= (and b!3107163 (not res!1272273)) b!3107165))

(assert (= (or b!3107165 b!3107161) bm!219635))

(assert (= (or b!3107160 b!3107163) bm!219634))

(assert (=> bm!219634 m!3403125))

(declare-fun m!3403303 () Bool)

(assert (=> b!3107164 m!3403303))

(declare-fun m!3403305 () Bool)

(assert (=> b!3107168 m!3403305))

(declare-fun m!3403307 () Bool)

(assert (=> bm!219635 m!3403307))

(assert (=> b!3106639 d!861438))

(declare-fun b!3107174 () Bool)

(declare-fun e!1941252 () Bool)

(declare-fun e!1941253 () Bool)

(assert (=> b!3107174 (= e!1941252 e!1941253)))

(declare-fun res!1272281 () Bool)

(assert (=> b!3107174 (=> (not res!1272281) (not e!1941253))))

(declare-fun lt!1056828 () Bool)

(assert (=> b!3107174 (= res!1272281 (not lt!1056828))))

(declare-fun d!861464 () Bool)

(declare-fun e!1941258 () Bool)

(assert (=> d!861464 e!1941258))

(declare-fun c!519755 () Bool)

(assert (=> d!861464 (= c!519755 ((_ is EmptyExpr!9581) r!17423))))

(declare-fun e!1941256 () Bool)

(assert (=> d!861464 (= lt!1056828 e!1941256)))

(declare-fun c!519756 () Bool)

(assert (=> d!861464 (= c!519756 (isEmpty!19669 s!11993))))

(assert (=> d!861464 (validRegex!4314 r!17423)))

(assert (=> d!861464 (= (matchR!4463 r!17423 s!11993) lt!1056828)))

(declare-fun b!3107175 () Bool)

(declare-fun res!1272280 () Bool)

(declare-fun e!1941254 () Bool)

(assert (=> b!3107175 (=> (not res!1272280) (not e!1941254))))

(declare-fun call!219641 () Bool)

(assert (=> b!3107175 (= res!1272280 (not call!219641))))

(declare-fun b!3107176 () Bool)

(assert (=> b!3107176 (= e!1941256 (nullable!3223 r!17423))))

(declare-fun b!3107177 () Bool)

(declare-fun e!1941255 () Bool)

(assert (=> b!3107177 (= e!1941255 (not (= (head!6877 s!11993) (c!519587 r!17423))))))

(declare-fun b!3107178 () Bool)

(declare-fun e!1941257 () Bool)

(assert (=> b!3107178 (= e!1941258 e!1941257)))

(declare-fun c!519757 () Bool)

(assert (=> b!3107178 (= c!519757 ((_ is EmptyLang!9581) r!17423))))

(declare-fun b!3107179 () Bool)

(assert (=> b!3107179 (= e!1941258 (= lt!1056828 call!219641))))

(declare-fun b!3107180 () Bool)

(declare-fun res!1272275 () Bool)

(assert (=> b!3107180 (=> res!1272275 e!1941252)))

(assert (=> b!3107180 (= res!1272275 (not ((_ is ElementMatch!9581) r!17423)))))

(assert (=> b!3107180 (= e!1941257 e!1941252)))

(declare-fun b!3107181 () Bool)

(declare-fun res!1272277 () Bool)

(assert (=> b!3107181 (=> (not res!1272277) (not e!1941254))))

(assert (=> b!3107181 (= res!1272277 (isEmpty!19669 (tail!5103 s!11993)))))

(declare-fun bm!219636 () Bool)

(assert (=> bm!219636 (= call!219641 (isEmpty!19669 s!11993))))

(declare-fun b!3107182 () Bool)

(assert (=> b!3107182 (= e!1941253 e!1941255)))

(declare-fun res!1272274 () Bool)

(assert (=> b!3107182 (=> res!1272274 e!1941255)))

(assert (=> b!3107182 (= res!1272274 call!219641)))

(declare-fun b!3107183 () Bool)

(declare-fun res!1272279 () Bool)

(assert (=> b!3107183 (=> res!1272279 e!1941252)))

(assert (=> b!3107183 (= res!1272279 e!1941254)))

(declare-fun res!1272276 () Bool)

(assert (=> b!3107183 (=> (not res!1272276) (not e!1941254))))

(assert (=> b!3107183 (= res!1272276 lt!1056828)))

(declare-fun b!3107184 () Bool)

(assert (=> b!3107184 (= e!1941256 (matchR!4463 (derivativeStep!2818 r!17423 (head!6877 s!11993)) (tail!5103 s!11993)))))

(declare-fun b!3107185 () Bool)

(declare-fun res!1272278 () Bool)

(assert (=> b!3107185 (=> res!1272278 e!1941255)))

(assert (=> b!3107185 (= res!1272278 (not (isEmpty!19669 (tail!5103 s!11993))))))

(declare-fun b!3107186 () Bool)

(assert (=> b!3107186 (= e!1941254 (= (head!6877 s!11993) (c!519587 r!17423)))))

(declare-fun b!3107187 () Bool)

(assert (=> b!3107187 (= e!1941257 (not lt!1056828))))

(assert (= (and d!861464 c!519756) b!3107176))

(assert (= (and d!861464 (not c!519756)) b!3107184))

(assert (= (and d!861464 c!519755) b!3107179))

(assert (= (and d!861464 (not c!519755)) b!3107178))

(assert (= (and b!3107178 c!519757) b!3107187))

(assert (= (and b!3107178 (not c!519757)) b!3107180))

(assert (= (and b!3107180 (not res!1272275)) b!3107183))

(assert (= (and b!3107183 res!1272276) b!3107175))

(assert (= (and b!3107175 res!1272280) b!3107181))

(assert (= (and b!3107181 res!1272277) b!3107186))

(assert (= (and b!3107183 (not res!1272279)) b!3107174))

(assert (= (and b!3107174 res!1272281) b!3107182))

(assert (= (and b!3107182 (not res!1272274)) b!3107185))

(assert (= (and b!3107185 (not res!1272278)) b!3107177))

(assert (= (or b!3107179 b!3107175 b!3107182) bm!219636))

(assert (=> b!3107186 m!3403121))

(assert (=> b!3107176 m!3403153))

(assert (=> bm!219636 m!3403125))

(assert (=> b!3107181 m!3403127))

(assert (=> b!3107181 m!3403127))

(assert (=> b!3107181 m!3403129))

(assert (=> b!3107184 m!3403121))

(assert (=> b!3107184 m!3403121))

(declare-fun m!3403309 () Bool)

(assert (=> b!3107184 m!3403309))

(assert (=> b!3107184 m!3403127))

(assert (=> b!3107184 m!3403309))

(assert (=> b!3107184 m!3403127))

(declare-fun m!3403311 () Bool)

(assert (=> b!3107184 m!3403311))

(assert (=> b!3107177 m!3403121))

(assert (=> b!3107185 m!3403127))

(assert (=> b!3107185 m!3403127))

(assert (=> b!3107185 m!3403129))

(assert (=> d!861464 m!3403125))

(assert (=> d!861464 m!3403103))

(assert (=> b!3106639 d!861464))

(declare-fun d!861466 () Bool)

(assert (=> d!861466 (= (matchR!4463 r!17423 s!11993) (matchRSpec!1718 r!17423 s!11993))))

(declare-fun lt!1056831 () Unit!49601)

(declare-fun choose!18378 (Regex!9581 List!35446) Unit!49601)

(assert (=> d!861466 (= lt!1056831 (choose!18378 r!17423 s!11993))))

(assert (=> d!861466 (validRegex!4314 r!17423)))

(assert (=> d!861466 (= (mainMatchTheorem!1718 r!17423 s!11993) lt!1056831)))

(declare-fun bs!535754 () Bool)

(assert (= bs!535754 d!861466))

(assert (=> bs!535754 m!3403117))

(assert (=> bs!535754 m!3403115))

(declare-fun m!3403313 () Bool)

(assert (=> bs!535754 m!3403313))

(assert (=> bs!535754 m!3403103))

(assert (=> b!3106639 d!861466))

(declare-fun d!861468 () Bool)

(assert (=> d!861468 (= (isEmptyLang!632 lt!1056752) ((_ is EmptyLang!9581) lt!1056752))))

(assert (=> b!3106634 d!861468))

(declare-fun b!3107188 () Bool)

(declare-fun e!1941259 () Bool)

(declare-fun e!1941260 () Bool)

(assert (=> b!3107188 (= e!1941259 e!1941260)))

(declare-fun res!1272289 () Bool)

(assert (=> b!3107188 (=> (not res!1272289) (not e!1941260))))

(declare-fun lt!1056832 () Bool)

(assert (=> b!3107188 (= res!1272289 (not lt!1056832))))

(declare-fun d!861470 () Bool)

(declare-fun e!1941265 () Bool)

(assert (=> d!861470 e!1941265))

(declare-fun c!519758 () Bool)

(assert (=> d!861470 (= c!519758 ((_ is EmptyExpr!9581) lt!1056751))))

(declare-fun e!1941263 () Bool)

(assert (=> d!861470 (= lt!1056832 e!1941263)))

(declare-fun c!519759 () Bool)

(assert (=> d!861470 (= c!519759 (isEmpty!19669 s!11993))))

(assert (=> d!861470 (validRegex!4314 lt!1056751)))

(assert (=> d!861470 (= (matchR!4463 lt!1056751 s!11993) lt!1056832)))

(declare-fun b!3107189 () Bool)

(declare-fun res!1272288 () Bool)

(declare-fun e!1941261 () Bool)

(assert (=> b!3107189 (=> (not res!1272288) (not e!1941261))))

(declare-fun call!219642 () Bool)

(assert (=> b!3107189 (= res!1272288 (not call!219642))))

(declare-fun b!3107190 () Bool)

(assert (=> b!3107190 (= e!1941263 (nullable!3223 lt!1056751))))

(declare-fun b!3107191 () Bool)

(declare-fun e!1941262 () Bool)

(assert (=> b!3107191 (= e!1941262 (not (= (head!6877 s!11993) (c!519587 lt!1056751))))))

(declare-fun b!3107192 () Bool)

(declare-fun e!1941264 () Bool)

(assert (=> b!3107192 (= e!1941265 e!1941264)))

(declare-fun c!519760 () Bool)

(assert (=> b!3107192 (= c!519760 ((_ is EmptyLang!9581) lt!1056751))))

(declare-fun b!3107193 () Bool)

(assert (=> b!3107193 (= e!1941265 (= lt!1056832 call!219642))))

(declare-fun b!3107194 () Bool)

(declare-fun res!1272283 () Bool)

(assert (=> b!3107194 (=> res!1272283 e!1941259)))

(assert (=> b!3107194 (= res!1272283 (not ((_ is ElementMatch!9581) lt!1056751)))))

(assert (=> b!3107194 (= e!1941264 e!1941259)))

(declare-fun b!3107195 () Bool)

(declare-fun res!1272285 () Bool)

(assert (=> b!3107195 (=> (not res!1272285) (not e!1941261))))

(assert (=> b!3107195 (= res!1272285 (isEmpty!19669 (tail!5103 s!11993)))))

(declare-fun bm!219637 () Bool)

(assert (=> bm!219637 (= call!219642 (isEmpty!19669 s!11993))))

(declare-fun b!3107196 () Bool)

(assert (=> b!3107196 (= e!1941260 e!1941262)))

(declare-fun res!1272282 () Bool)

(assert (=> b!3107196 (=> res!1272282 e!1941262)))

(assert (=> b!3107196 (= res!1272282 call!219642)))

(declare-fun b!3107197 () Bool)

(declare-fun res!1272287 () Bool)

(assert (=> b!3107197 (=> res!1272287 e!1941259)))

(assert (=> b!3107197 (= res!1272287 e!1941261)))

(declare-fun res!1272284 () Bool)

(assert (=> b!3107197 (=> (not res!1272284) (not e!1941261))))

(assert (=> b!3107197 (= res!1272284 lt!1056832)))

(declare-fun b!3107198 () Bool)

(assert (=> b!3107198 (= e!1941263 (matchR!4463 (derivativeStep!2818 lt!1056751 (head!6877 s!11993)) (tail!5103 s!11993)))))

(declare-fun b!3107199 () Bool)

(declare-fun res!1272286 () Bool)

(assert (=> b!3107199 (=> res!1272286 e!1941262)))

(assert (=> b!3107199 (= res!1272286 (not (isEmpty!19669 (tail!5103 s!11993))))))

(declare-fun b!3107200 () Bool)

(assert (=> b!3107200 (= e!1941261 (= (head!6877 s!11993) (c!519587 lt!1056751)))))

(declare-fun b!3107201 () Bool)

(assert (=> b!3107201 (= e!1941264 (not lt!1056832))))

(assert (= (and d!861470 c!519759) b!3107190))

(assert (= (and d!861470 (not c!519759)) b!3107198))

(assert (= (and d!861470 c!519758) b!3107193))

(assert (= (and d!861470 (not c!519758)) b!3107192))

(assert (= (and b!3107192 c!519760) b!3107201))

(assert (= (and b!3107192 (not c!519760)) b!3107194))

(assert (= (and b!3107194 (not res!1272283)) b!3107197))

(assert (= (and b!3107197 res!1272284) b!3107189))

(assert (= (and b!3107189 res!1272288) b!3107195))

(assert (= (and b!3107195 res!1272285) b!3107200))

(assert (= (and b!3107197 (not res!1272287)) b!3107188))

(assert (= (and b!3107188 res!1272289) b!3107196))

(assert (= (and b!3107196 (not res!1272282)) b!3107199))

(assert (= (and b!3107199 (not res!1272286)) b!3107191))

(assert (= (or b!3107193 b!3107189 b!3107196) bm!219637))

(assert (=> b!3107200 m!3403121))

(declare-fun m!3403315 () Bool)

(assert (=> b!3107190 m!3403315))

(assert (=> bm!219637 m!3403125))

(assert (=> b!3107195 m!3403127))

(assert (=> b!3107195 m!3403127))

(assert (=> b!3107195 m!3403129))

(assert (=> b!3107198 m!3403121))

(assert (=> b!3107198 m!3403121))

(declare-fun m!3403317 () Bool)

(assert (=> b!3107198 m!3403317))

(assert (=> b!3107198 m!3403127))

(assert (=> b!3107198 m!3403317))

(assert (=> b!3107198 m!3403127))

(declare-fun m!3403319 () Bool)

(assert (=> b!3107198 m!3403319))

(assert (=> b!3107191 m!3403121))

(assert (=> b!3107199 m!3403127))

(assert (=> b!3107199 m!3403127))

(assert (=> b!3107199 m!3403129))

(assert (=> d!861470 m!3403125))

(declare-fun m!3403321 () Bool)

(assert (=> d!861470 m!3403321))

(assert (=> b!3106636 d!861470))

(declare-fun b!3107202 () Bool)

(declare-fun e!1941266 () Bool)

(declare-fun e!1941267 () Bool)

(assert (=> b!3107202 (= e!1941266 e!1941267)))

(declare-fun res!1272297 () Bool)

(assert (=> b!3107202 (=> (not res!1272297) (not e!1941267))))

(declare-fun lt!1056833 () Bool)

(assert (=> b!3107202 (= res!1272297 (not lt!1056833))))

(declare-fun d!861472 () Bool)

(declare-fun e!1941272 () Bool)

(assert (=> d!861472 e!1941272))

(declare-fun c!519761 () Bool)

(assert (=> d!861472 (= c!519761 ((_ is EmptyExpr!9581) (regOne!19675 r!17423)))))

(declare-fun e!1941270 () Bool)

(assert (=> d!861472 (= lt!1056833 e!1941270)))

(declare-fun c!519762 () Bool)

(assert (=> d!861472 (= c!519762 (isEmpty!19669 s!11993))))

(assert (=> d!861472 (validRegex!4314 (regOne!19675 r!17423))))

(assert (=> d!861472 (= (matchR!4463 (regOne!19675 r!17423) s!11993) lt!1056833)))

(declare-fun b!3107203 () Bool)

(declare-fun res!1272296 () Bool)

(declare-fun e!1941268 () Bool)

(assert (=> b!3107203 (=> (not res!1272296) (not e!1941268))))

(declare-fun call!219643 () Bool)

(assert (=> b!3107203 (= res!1272296 (not call!219643))))

(declare-fun b!3107204 () Bool)

(assert (=> b!3107204 (= e!1941270 (nullable!3223 (regOne!19675 r!17423)))))

(declare-fun b!3107205 () Bool)

(declare-fun e!1941269 () Bool)

(assert (=> b!3107205 (= e!1941269 (not (= (head!6877 s!11993) (c!519587 (regOne!19675 r!17423)))))))

(declare-fun b!3107206 () Bool)

(declare-fun e!1941271 () Bool)

(assert (=> b!3107206 (= e!1941272 e!1941271)))

(declare-fun c!519763 () Bool)

(assert (=> b!3107206 (= c!519763 ((_ is EmptyLang!9581) (regOne!19675 r!17423)))))

(declare-fun b!3107207 () Bool)

(assert (=> b!3107207 (= e!1941272 (= lt!1056833 call!219643))))

(declare-fun b!3107208 () Bool)

(declare-fun res!1272291 () Bool)

(assert (=> b!3107208 (=> res!1272291 e!1941266)))

(assert (=> b!3107208 (= res!1272291 (not ((_ is ElementMatch!9581) (regOne!19675 r!17423))))))

(assert (=> b!3107208 (= e!1941271 e!1941266)))

(declare-fun b!3107209 () Bool)

(declare-fun res!1272293 () Bool)

(assert (=> b!3107209 (=> (not res!1272293) (not e!1941268))))

(assert (=> b!3107209 (= res!1272293 (isEmpty!19669 (tail!5103 s!11993)))))

(declare-fun bm!219638 () Bool)

(assert (=> bm!219638 (= call!219643 (isEmpty!19669 s!11993))))

(declare-fun b!3107210 () Bool)

(assert (=> b!3107210 (= e!1941267 e!1941269)))

(declare-fun res!1272290 () Bool)

(assert (=> b!3107210 (=> res!1272290 e!1941269)))

(assert (=> b!3107210 (= res!1272290 call!219643)))

(declare-fun b!3107211 () Bool)

(declare-fun res!1272295 () Bool)

(assert (=> b!3107211 (=> res!1272295 e!1941266)))

(assert (=> b!3107211 (= res!1272295 e!1941268)))

(declare-fun res!1272292 () Bool)

(assert (=> b!3107211 (=> (not res!1272292) (not e!1941268))))

(assert (=> b!3107211 (= res!1272292 lt!1056833)))

(declare-fun b!3107212 () Bool)

(assert (=> b!3107212 (= e!1941270 (matchR!4463 (derivativeStep!2818 (regOne!19675 r!17423) (head!6877 s!11993)) (tail!5103 s!11993)))))

(declare-fun b!3107213 () Bool)

(declare-fun res!1272294 () Bool)

(assert (=> b!3107213 (=> res!1272294 e!1941269)))

(assert (=> b!3107213 (= res!1272294 (not (isEmpty!19669 (tail!5103 s!11993))))))

(declare-fun b!3107214 () Bool)

(assert (=> b!3107214 (= e!1941268 (= (head!6877 s!11993) (c!519587 (regOne!19675 r!17423))))))

(declare-fun b!3107215 () Bool)

(assert (=> b!3107215 (= e!1941271 (not lt!1056833))))

(assert (= (and d!861472 c!519762) b!3107204))

(assert (= (and d!861472 (not c!519762)) b!3107212))

(assert (= (and d!861472 c!519761) b!3107207))

(assert (= (and d!861472 (not c!519761)) b!3107206))

(assert (= (and b!3107206 c!519763) b!3107215))

(assert (= (and b!3107206 (not c!519763)) b!3107208))

(assert (= (and b!3107208 (not res!1272291)) b!3107211))

(assert (= (and b!3107211 res!1272292) b!3107203))

(assert (= (and b!3107203 res!1272296) b!3107209))

(assert (= (and b!3107209 res!1272293) b!3107214))

(assert (= (and b!3107211 (not res!1272295)) b!3107202))

(assert (= (and b!3107202 res!1272297) b!3107210))

(assert (= (and b!3107210 (not res!1272290)) b!3107213))

(assert (= (and b!3107213 (not res!1272294)) b!3107205))

(assert (= (or b!3107207 b!3107203 b!3107210) bm!219638))

(assert (=> b!3107214 m!3403121))

(assert (=> b!3107204 m!3403193))

(assert (=> bm!219638 m!3403125))

(assert (=> b!3107209 m!3403127))

(assert (=> b!3107209 m!3403127))

(assert (=> b!3107209 m!3403129))

(assert (=> b!3107212 m!3403121))

(assert (=> b!3107212 m!3403121))

(declare-fun m!3403323 () Bool)

(assert (=> b!3107212 m!3403323))

(assert (=> b!3107212 m!3403127))

(assert (=> b!3107212 m!3403323))

(assert (=> b!3107212 m!3403127))

(declare-fun m!3403325 () Bool)

(assert (=> b!3107212 m!3403325))

(assert (=> b!3107205 m!3403121))

(assert (=> b!3107213 m!3403127))

(assert (=> b!3107213 m!3403127))

(assert (=> b!3107213 m!3403129))

(assert (=> d!861472 m!3403125))

(assert (=> d!861472 m!3403183))

(assert (=> b!3106636 d!861472))

(declare-fun d!861474 () Bool)

(assert (=> d!861474 (= (matchR!4463 (regOne!19675 r!17423) s!11993) (matchR!4463 (simplify!536 (regOne!19675 r!17423)) s!11993))))

(declare-fun lt!1056836 () Unit!49601)

(declare-fun choose!18379 (Regex!9581 List!35446) Unit!49601)

(assert (=> d!861474 (= lt!1056836 (choose!18379 (regOne!19675 r!17423) s!11993))))

(assert (=> d!861474 (validRegex!4314 (regOne!19675 r!17423))))

(assert (=> d!861474 (= (lemmaSimplifySound!340 (regOne!19675 r!17423) s!11993) lt!1056836)))

(declare-fun bs!535755 () Bool)

(assert (= bs!535755 d!861474))

(assert (=> bs!535755 m!3403183))

(declare-fun m!3403327 () Bool)

(assert (=> bs!535755 m!3403327))

(assert (=> bs!535755 m!3403109))

(declare-fun m!3403329 () Bool)

(assert (=> bs!535755 m!3403329))

(assert (=> bs!535755 m!3403109))

(assert (=> bs!535755 m!3403099))

(assert (=> b!3106636 d!861474))

(declare-fun b!3107234 () Bool)

(declare-fun res!1272310 () Bool)

(declare-fun e!1941291 () Bool)

(assert (=> b!3107234 (=> (not res!1272310) (not e!1941291))))

(declare-fun call!219652 () Bool)

(assert (=> b!3107234 (= res!1272310 call!219652)))

(declare-fun e!1941289 () Bool)

(assert (=> b!3107234 (= e!1941289 e!1941291)))

(declare-fun b!3107235 () Bool)

(declare-fun res!1272309 () Bool)

(declare-fun e!1941293 () Bool)

(assert (=> b!3107235 (=> res!1272309 e!1941293)))

(assert (=> b!3107235 (= res!1272309 (not ((_ is Concat!14902) r!17423)))))

(assert (=> b!3107235 (= e!1941289 e!1941293)))

(declare-fun d!861476 () Bool)

(declare-fun res!1272312 () Bool)

(declare-fun e!1941287 () Bool)

(assert (=> d!861476 (=> res!1272312 e!1941287)))

(assert (=> d!861476 (= res!1272312 ((_ is ElementMatch!9581) r!17423))))

(assert (=> d!861476 (= (validRegex!4314 r!17423) e!1941287)))

(declare-fun b!3107236 () Bool)

(declare-fun e!1941288 () Bool)

(assert (=> b!3107236 (= e!1941288 call!219652)))

(declare-fun bm!219645 () Bool)

(declare-fun call!219651 () Bool)

(declare-fun call!219650 () Bool)

(assert (=> bm!219645 (= call!219651 call!219650)))

(declare-fun b!3107237 () Bool)

(declare-fun e!1941292 () Bool)

(assert (=> b!3107237 (= e!1941292 e!1941289)))

(declare-fun c!519769 () Bool)

(assert (=> b!3107237 (= c!519769 ((_ is Union!9581) r!17423))))

(declare-fun c!519768 () Bool)

(declare-fun bm!219646 () Bool)

(assert (=> bm!219646 (= call!219650 (validRegex!4314 (ite c!519768 (reg!9910 r!17423) (ite c!519769 (regTwo!19675 r!17423) (regOne!19674 r!17423)))))))

(declare-fun b!3107238 () Bool)

(assert (=> b!3107238 (= e!1941287 e!1941292)))

(assert (=> b!3107238 (= c!519768 ((_ is Star!9581) r!17423))))

(declare-fun bm!219647 () Bool)

(assert (=> bm!219647 (= call!219652 (validRegex!4314 (ite c!519769 (regOne!19675 r!17423) (regTwo!19674 r!17423))))))

(declare-fun b!3107239 () Bool)

(assert (=> b!3107239 (= e!1941293 e!1941288)))

(declare-fun res!1272311 () Bool)

(assert (=> b!3107239 (=> (not res!1272311) (not e!1941288))))

(assert (=> b!3107239 (= res!1272311 call!219651)))

(declare-fun b!3107240 () Bool)

(assert (=> b!3107240 (= e!1941291 call!219651)))

(declare-fun b!3107241 () Bool)

(declare-fun e!1941290 () Bool)

(assert (=> b!3107241 (= e!1941290 call!219650)))

(declare-fun b!3107242 () Bool)

(assert (=> b!3107242 (= e!1941292 e!1941290)))

(declare-fun res!1272308 () Bool)

(assert (=> b!3107242 (= res!1272308 (not (nullable!3223 (reg!9910 r!17423))))))

(assert (=> b!3107242 (=> (not res!1272308) (not e!1941290))))

(assert (= (and d!861476 (not res!1272312)) b!3107238))

(assert (= (and b!3107238 c!519768) b!3107242))

(assert (= (and b!3107238 (not c!519768)) b!3107237))

(assert (= (and b!3107242 res!1272308) b!3107241))

(assert (= (and b!3107237 c!519769) b!3107234))

(assert (= (and b!3107237 (not c!519769)) b!3107235))

(assert (= (and b!3107234 res!1272310) b!3107240))

(assert (= (and b!3107235 (not res!1272309)) b!3107239))

(assert (= (and b!3107239 res!1272311) b!3107236))

(assert (= (or b!3107234 b!3107236) bm!219647))

(assert (= (or b!3107240 b!3107239) bm!219645))

(assert (= (or b!3107241 bm!219645) bm!219646))

(declare-fun m!3403331 () Bool)

(assert (=> bm!219646 m!3403331))

(declare-fun m!3403333 () Bool)

(assert (=> bm!219647 m!3403333))

(declare-fun m!3403335 () Bool)

(assert (=> b!3107242 m!3403335))

(assert (=> start!294520 d!861476))

(declare-fun b!3107253 () Bool)

(declare-fun e!1941296 () Bool)

(assert (=> b!3107253 (= e!1941296 tp_is_empty!16725)))

(declare-fun b!3107255 () Bool)

(declare-fun tp!975750 () Bool)

(assert (=> b!3107255 (= e!1941296 tp!975750)))

(assert (=> b!3106635 (= tp!975697 e!1941296)))

(declare-fun b!3107254 () Bool)

(declare-fun tp!975752 () Bool)

(declare-fun tp!975751 () Bool)

(assert (=> b!3107254 (= e!1941296 (and tp!975752 tp!975751))))

(declare-fun b!3107256 () Bool)

(declare-fun tp!975754 () Bool)

(declare-fun tp!975753 () Bool)

(assert (=> b!3107256 (= e!1941296 (and tp!975754 tp!975753))))

(assert (= (and b!3106635 ((_ is ElementMatch!9581) (regOne!19675 r!17423))) b!3107253))

(assert (= (and b!3106635 ((_ is Concat!14902) (regOne!19675 r!17423))) b!3107254))

(assert (= (and b!3106635 ((_ is Star!9581) (regOne!19675 r!17423))) b!3107255))

(assert (= (and b!3106635 ((_ is Union!9581) (regOne!19675 r!17423))) b!3107256))

(declare-fun b!3107257 () Bool)

(declare-fun e!1941297 () Bool)

(assert (=> b!3107257 (= e!1941297 tp_is_empty!16725)))

(declare-fun b!3107259 () Bool)

(declare-fun tp!975755 () Bool)

(assert (=> b!3107259 (= e!1941297 tp!975755)))

(assert (=> b!3106635 (= tp!975700 e!1941297)))

(declare-fun b!3107258 () Bool)

(declare-fun tp!975757 () Bool)

(declare-fun tp!975756 () Bool)

(assert (=> b!3107258 (= e!1941297 (and tp!975757 tp!975756))))

(declare-fun b!3107260 () Bool)

(declare-fun tp!975759 () Bool)

(declare-fun tp!975758 () Bool)

(assert (=> b!3107260 (= e!1941297 (and tp!975759 tp!975758))))

(assert (= (and b!3106635 ((_ is ElementMatch!9581) (regTwo!19675 r!17423))) b!3107257))

(assert (= (and b!3106635 ((_ is Concat!14902) (regTwo!19675 r!17423))) b!3107258))

(assert (= (and b!3106635 ((_ is Star!9581) (regTwo!19675 r!17423))) b!3107259))

(assert (= (and b!3106635 ((_ is Union!9581) (regTwo!19675 r!17423))) b!3107260))

(declare-fun b!3107261 () Bool)

(declare-fun e!1941298 () Bool)

(assert (=> b!3107261 (= e!1941298 tp_is_empty!16725)))

(declare-fun b!3107263 () Bool)

(declare-fun tp!975760 () Bool)

(assert (=> b!3107263 (= e!1941298 tp!975760)))

(assert (=> b!3106640 (= tp!975696 e!1941298)))

(declare-fun b!3107262 () Bool)

(declare-fun tp!975762 () Bool)

(declare-fun tp!975761 () Bool)

(assert (=> b!3107262 (= e!1941298 (and tp!975762 tp!975761))))

(declare-fun b!3107264 () Bool)

(declare-fun tp!975764 () Bool)

(declare-fun tp!975763 () Bool)

(assert (=> b!3107264 (= e!1941298 (and tp!975764 tp!975763))))

(assert (= (and b!3106640 ((_ is ElementMatch!9581) (regOne!19674 r!17423))) b!3107261))

(assert (= (and b!3106640 ((_ is Concat!14902) (regOne!19674 r!17423))) b!3107262))

(assert (= (and b!3106640 ((_ is Star!9581) (regOne!19674 r!17423))) b!3107263))

(assert (= (and b!3106640 ((_ is Union!9581) (regOne!19674 r!17423))) b!3107264))

(declare-fun b!3107265 () Bool)

(declare-fun e!1941299 () Bool)

(assert (=> b!3107265 (= e!1941299 tp_is_empty!16725)))

(declare-fun b!3107267 () Bool)

(declare-fun tp!975765 () Bool)

(assert (=> b!3107267 (= e!1941299 tp!975765)))

(assert (=> b!3106640 (= tp!975701 e!1941299)))

(declare-fun b!3107266 () Bool)

(declare-fun tp!975767 () Bool)

(declare-fun tp!975766 () Bool)

(assert (=> b!3107266 (= e!1941299 (and tp!975767 tp!975766))))

(declare-fun b!3107268 () Bool)

(declare-fun tp!975769 () Bool)

(declare-fun tp!975768 () Bool)

(assert (=> b!3107268 (= e!1941299 (and tp!975769 tp!975768))))

(assert (= (and b!3106640 ((_ is ElementMatch!9581) (regTwo!19674 r!17423))) b!3107265))

(assert (= (and b!3106640 ((_ is Concat!14902) (regTwo!19674 r!17423))) b!3107266))

(assert (= (and b!3106640 ((_ is Star!9581) (regTwo!19674 r!17423))) b!3107267))

(assert (= (and b!3106640 ((_ is Union!9581) (regTwo!19674 r!17423))) b!3107268))

(declare-fun b!3107273 () Bool)

(declare-fun e!1941302 () Bool)

(declare-fun tp!975772 () Bool)

(assert (=> b!3107273 (= e!1941302 (and tp_is_empty!16725 tp!975772))))

(assert (=> b!3106641 (= tp!975698 e!1941302)))

(assert (= (and b!3106641 ((_ is Cons!35322) (t!234511 s!11993))) b!3107273))

(declare-fun b!3107274 () Bool)

(declare-fun e!1941303 () Bool)

(assert (=> b!3107274 (= e!1941303 tp_is_empty!16725)))

(declare-fun b!3107276 () Bool)

(declare-fun tp!975773 () Bool)

(assert (=> b!3107276 (= e!1941303 tp!975773)))

(assert (=> b!3106637 (= tp!975699 e!1941303)))

(declare-fun b!3107275 () Bool)

(declare-fun tp!975775 () Bool)

(declare-fun tp!975774 () Bool)

(assert (=> b!3107275 (= e!1941303 (and tp!975775 tp!975774))))

(declare-fun b!3107277 () Bool)

(declare-fun tp!975777 () Bool)

(declare-fun tp!975776 () Bool)

(assert (=> b!3107277 (= e!1941303 (and tp!975777 tp!975776))))

(assert (= (and b!3106637 ((_ is ElementMatch!9581) (reg!9910 r!17423))) b!3107274))

(assert (= (and b!3106637 ((_ is Concat!14902) (reg!9910 r!17423))) b!3107275))

(assert (= (and b!3106637 ((_ is Star!9581) (reg!9910 r!17423))) b!3107276))

(assert (= (and b!3106637 ((_ is Union!9581) (reg!9910 r!17423))) b!3107277))

(check-sat (not bm!219567) (not b!3107273) (not bm!219538) (not b!3106767) (not d!861434) (not b!3107255) (not b!3107259) (not bm!219557) (not bm!219571) (not bm!219555) (not b!3107213) (not bm!219636) (not b!3106703) (not bm!219638) (not b!3106702) (not b!3107266) (not d!861470) (not b!3107177) (not b!3107184) (not b!3107268) (not b!3107212) (not b!3107276) (not b!3107264) (not bm!219634) tp_is_empty!16725 (not b!3107190) (not bm!219637) (not bm!219560) (not bm!219556) (not b!3107242) (not b!3106704) (not bm!219635) (not d!861436) (not b!3107191) (not b!3107277) (not b!3107181) (not bm!219646) (not b!3107186) (not b!3107260) (not bm!219570) (not b!3106770) (not bm!219572) (not b!3107198) (not b!3107209) (not d!861464) (not bm!219564) (not b!3107164) (not b!3107185) (not b!3107204) (not b!3106795) (not b!3107262) (not b!3107205) (not bm!219562) (not bm!219553) (not b!3106792) (not b!3107275) (not bm!219569) (not b!3107200) (not b!3106820) (not bm!219563) (not b!3107214) (not bm!219565) (not bm!219647) (not b!3107263) (not d!861472) (not b!3106695) (not b!3106694) (not b!3106817) (not b!3107256) (not d!861466) (not b!3106699) (not b!3107254) (not d!861428) (not b!3107168) (not bm!219558) (not b!3107195) (not b!3107176) (not b!3107199) (not d!861474) (not b!3107267) (not d!861430) (not b!3107258))
(check-sat)
