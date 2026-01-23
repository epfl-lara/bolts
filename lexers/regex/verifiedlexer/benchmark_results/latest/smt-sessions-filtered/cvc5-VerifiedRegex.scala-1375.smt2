; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73266 () Bool)

(assert start!73266)

(assert (=> start!73266 true))

(declare-fun b!820653 () Bool)

(declare-fun e!542201 () Bool)

(declare-datatypes ((List!8834 0))(
  ( (Nil!8818) (Cons!8818 (h!14219 (_ BitVec 16)) (t!92948 List!8834)) )
))
(declare-datatypes ((IArray!5877 0))(
  ( (IArray!5878 (innerList!2996 List!8834)) )
))
(declare-datatypes ((Conc!2936 0))(
  ( (Node!2936 (left!6523 Conc!2936) (right!6853 Conc!2936) (csize!6102 Int) (cheight!3147 Int)) (Leaf!4312 (xs!5625 IArray!5877) (csize!6103 Int)) (Empty!2936) )
))
(declare-datatypes ((BalanceConc!5886 0))(
  ( (BalanceConc!5887 (c!132959 Conc!2936)) )
))
(declare-fun x!176195 () BalanceConc!5886)

(declare-fun tp!256603 () Bool)

(declare-fun inv!11178 (Conc!2936) Bool)

(assert (=> b!820653 (= e!542201 (and (inv!11178 (c!132959 x!176195)) tp!256603))))

(declare-datatypes ((BytesLiteralValueInjection!4 0))(
  ( (BytesLiteralValueInjection!5) )
))
(declare-fun thiss!4819 () BytesLiteralValueInjection!4)

(declare-fun inst!638 () Bool)

(declare-fun inv!11179 (BalanceConc!5886) Bool)

(declare-fun list!3489 (BalanceConc!5886) List!8834)

(declare-datatypes ((TokenValue!1709 0))(
  ( (FloatLiteralValue!3418 (text!12408 List!8834)) (TokenValueExt!1708 (__x!7171 Int)) (Broken!8545 (value!53442 List!8834)) (Object!1724) (End!1709) (Def!1709) (Underscore!1709) (Match!1709) (Else!1709) (Error!1709) (Case!1709) (If!1709) (Extends!1709) (Abstract!1709) (Class!1709) (Val!1709) (DelimiterValue!3418 (del!1769 List!8834)) (KeywordValue!1715 (value!53443 List!8834)) (CommentValue!3418 (value!53444 List!8834)) (WhitespaceValue!3418 (value!53445 List!8834)) (IndentationValue!1709 (value!53446 List!8834)) (String!10352) (Int32!1709) (Broken!8546 (value!53447 List!8834)) (Boolean!1710) (Unit!13333) (OperatorValue!1712 (op!1769 List!8834)) (IdentifierValue!3418 (value!53448 List!8834)) (IdentifierValue!3419 (value!53449 List!8834)) (WhitespaceValue!3419 (value!53450 List!8834)) (True!3418) (False!3418) (Broken!8547 (value!53451 List!8834)) (Broken!8548 (value!53452 List!8834)) (True!3419) (RightBrace!1709) (RightBracket!1709) (Colon!1709) (Null!1709) (Comma!1709) (LeftBracket!1709) (False!3419) (LeftBrace!1709) (ImaginaryLiteralValue!1709 (text!12409 List!8834)) (StringLiteralValue!5127 (value!53453 List!8834)) (EOFValue!1709 (value!53454 List!8834)) (IdentValue!1709 (value!53455 List!8834)) (DelimiterValue!3419 (value!53456 List!8834)) (DedentValue!1709 (value!53457 List!8834)) (NewLineValue!1709 (value!53458 List!8834)) (IntegerValue!5127 (value!53459 (_ BitVec 32)) (text!12410 List!8834)) (IntegerValue!5128 (value!53460 Int) (text!12411 List!8834)) (Times!1709) (Or!1709) (Equal!1709) (Minus!1709) (Broken!8549 (value!53461 List!8834)) (And!1709) (Div!1709) (LessEqual!1709) (Mod!1709) (Concat!3739) (Not!1709) (Plus!1709) (SpaceValue!1709 (value!53462 List!8834)) (IntegerValue!5129 (value!53463 Int) (text!12412 List!8834)) (StringLiteralValue!5128 (text!12413 List!8834)) (FloatLiteralValue!3419 (text!12414 List!8834)) (BytesLiteralValue!1709 (value!53464 List!8834)) (CommentValue!3419 (value!53465 List!8834)) (StringLiteralValue!5129 (value!53466 List!8834)) (ErrorTokenValue!1709 (msg!1770 List!8834)) )
))
(declare-fun toCharacters!23 (BytesLiteralValueInjection!4 TokenValue!1709) BalanceConc!5886)

(declare-fun toValue!30 (BytesLiteralValueInjection!4 BalanceConc!5886) TokenValue!1709)

(assert (=> start!73266 (= inst!638 (=> (and (inv!11179 x!176195) e!542201) (= (list!3489 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176195))) (list!3489 x!176195))))))

(assert (= start!73266 b!820653))

(declare-fun m!1061635 () Bool)

(assert (=> b!820653 m!1061635))

(declare-fun m!1061637 () Bool)

(assert (=> start!73266 m!1061637))

(declare-fun m!1061639 () Bool)

(assert (=> start!73266 m!1061639))

(declare-fun m!1061641 () Bool)

(assert (=> start!73266 m!1061641))

(assert (=> start!73266 m!1061637))

(declare-fun m!1061643 () Bool)

(assert (=> start!73266 m!1061643))

(assert (=> start!73266 m!1061641))

(declare-fun m!1061645 () Bool)

(assert (=> start!73266 m!1061645))

(declare-fun bs!228783 () Bool)

(declare-fun neg-inst!638 () Bool)

(declare-fun s!151201 () Bool)

(assert (= bs!228783 (and neg-inst!638 s!151201)))

(assert (=> bs!228783 (=> true (= (list!3489 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176195))) (list!3489 x!176195)))))

(assert (=> m!1061643 m!1061641))

(assert (=> m!1061643 m!1061637))

(assert (=> m!1061643 m!1061639))

(assert (=> m!1061643 s!151201))

(assert (=> m!1061641 s!151201))

(declare-fun bs!228784 () Bool)

(assert (= bs!228784 (and neg-inst!638 start!73266)))

(assert (=> bs!228784 (= true inst!638)))

(declare-fun lambda!24390 () Int)

(declare-fun Forall!380 (Int) Bool)

(assert (=> start!73266 (= (Forall!380 lambda!24390) inst!638)))

(assert (=> start!73266 (not (Forall!380 lambda!24390))))

(assert (=> start!73266 true))

(assert (= neg-inst!638 inst!638))

(declare-fun m!1061647 () Bool)

(assert (=> start!73266 m!1061647))

(assert (=> start!73266 m!1061647))

(push 1)

(assert (not start!73266))

(assert (not b!820653))

(assert (not bs!228783))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!258430 () Bool)

(declare-fun list!3491 (Conc!2936) List!8834)

(assert (=> d!258430 (= (list!3489 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176195))) (list!3491 (c!132959 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176195)))))))

(declare-fun bs!228787 () Bool)

(assert (= bs!228787 d!258430))

(declare-fun m!1061663 () Bool)

(assert (=> bs!228787 m!1061663))

(assert (=> bs!228783 d!258430))

(declare-fun d!258432 () Bool)

(declare-fun c!132964 () Bool)

(assert (=> d!258432 (= c!132964 (is-BytesLiteralValue!1709 (toValue!30 thiss!4819 x!176195)))))

(declare-fun e!542207 () BalanceConc!5886)

(assert (=> d!258432 (= (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176195)) e!542207)))

(declare-fun b!820663 () Bool)

(declare-fun seqFromList!1508 (List!8834) BalanceConc!5886)

(assert (=> b!820663 (= e!542207 (seqFromList!1508 (value!53464 (toValue!30 thiss!4819 x!176195))))))

(declare-fun b!820664 () Bool)

(assert (=> b!820664 (= e!542207 (BalanceConc!5887 Empty!2936))))

(assert (= (and d!258432 c!132964) b!820663))

(assert (= (and d!258432 (not c!132964)) b!820664))

(declare-fun m!1061665 () Bool)

(assert (=> b!820663 m!1061665))

(assert (=> bs!228783 d!258432))

(declare-fun d!258434 () Bool)

(declare-fun efficientList!121 (BalanceConc!5886) List!8834)

(assert (=> d!258434 (= (toValue!30 thiss!4819 x!176195) (BytesLiteralValue!1709 (efficientList!121 x!176195)))))

(declare-fun bs!228789 () Bool)

(assert (= bs!228789 d!258434))

(declare-fun m!1061669 () Bool)

(assert (=> bs!228789 m!1061669))

(assert (=> bs!228783 d!258434))

(declare-fun d!258440 () Bool)

(assert (=> d!258440 (= (list!3489 x!176195) (list!3491 (c!132959 x!176195)))))

(declare-fun bs!228790 () Bool)

(assert (= bs!228790 d!258440))

(declare-fun m!1061671 () Bool)

(assert (=> bs!228790 m!1061671))

(assert (=> bs!228783 d!258440))

(push 1)

(assert (not d!258430))

(assert (not d!258434))

(assert (not start!73266))

(assert (not b!820653))

(assert (not d!258440))

(assert (not b!820663))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!820681 () Bool)

(declare-fun e!542216 () List!8834)

(declare-fun list!3493 (IArray!5877) List!8834)

(assert (=> b!820681 (= e!542216 (list!3493 (xs!5625 (c!132959 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176195))))))))

(declare-fun b!820680 () Bool)

(declare-fun e!542215 () List!8834)

(assert (=> b!820680 (= e!542215 e!542216)))

(declare-fun c!132974 () Bool)

(assert (=> b!820680 (= c!132974 (is-Leaf!4312 (c!132959 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176195)))))))

(declare-fun d!258444 () Bool)

(declare-fun c!132973 () Bool)

(assert (=> d!258444 (= c!132973 (is-Empty!2936 (c!132959 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176195)))))))

(assert (=> d!258444 (= (list!3491 (c!132959 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176195)))) e!542215)))

(declare-fun b!820682 () Bool)

(declare-fun ++!2260 (List!8834 List!8834) List!8834)

(assert (=> b!820682 (= e!542216 (++!2260 (list!3491 (left!6523 (c!132959 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176195))))) (list!3491 (right!6853 (c!132959 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176195)))))))))

(declare-fun b!820679 () Bool)

(assert (=> b!820679 (= e!542215 Nil!8818)))

(assert (= (and d!258444 c!132973) b!820679))

(assert (= (and d!258444 (not c!132973)) b!820680))

(assert (= (and b!820680 c!132974) b!820681))

(assert (= (and b!820680 (not c!132974)) b!820682))

(declare-fun m!1061675 () Bool)

(assert (=> b!820681 m!1061675))

(declare-fun m!1061677 () Bool)

(assert (=> b!820682 m!1061677))

(declare-fun m!1061679 () Bool)

(assert (=> b!820682 m!1061679))

(assert (=> b!820682 m!1061677))

(assert (=> b!820682 m!1061679))

(declare-fun m!1061681 () Bool)

(assert (=> b!820682 m!1061681))

(assert (=> d!258430 d!258444))

(declare-fun b!820685 () Bool)

(declare-fun e!542218 () List!8834)

(assert (=> b!820685 (= e!542218 (list!3493 (xs!5625 (c!132959 x!176195))))))

(declare-fun b!820684 () Bool)

(declare-fun e!542217 () List!8834)

(assert (=> b!820684 (= e!542217 e!542218)))

(declare-fun c!132976 () Bool)

(assert (=> b!820684 (= c!132976 (is-Leaf!4312 (c!132959 x!176195)))))

(declare-fun d!258446 () Bool)

(declare-fun c!132975 () Bool)

(assert (=> d!258446 (= c!132975 (is-Empty!2936 (c!132959 x!176195)))))

(assert (=> d!258446 (= (list!3491 (c!132959 x!176195)) e!542217)))

(declare-fun b!820686 () Bool)

(assert (=> b!820686 (= e!542218 (++!2260 (list!3491 (left!6523 (c!132959 x!176195))) (list!3491 (right!6853 (c!132959 x!176195)))))))

(declare-fun b!820683 () Bool)

(assert (=> b!820683 (= e!542217 Nil!8818)))

(assert (= (and d!258446 c!132975) b!820683))

(assert (= (and d!258446 (not c!132975)) b!820684))

(assert (= (and b!820684 c!132976) b!820685))

(assert (= (and b!820684 (not c!132976)) b!820686))

(declare-fun m!1061683 () Bool)

(assert (=> b!820685 m!1061683))

(declare-fun m!1061685 () Bool)

(assert (=> b!820686 m!1061685))

(declare-fun m!1061687 () Bool)

(assert (=> b!820686 m!1061687))

(assert (=> b!820686 m!1061685))

(assert (=> b!820686 m!1061687))

(declare-fun m!1061689 () Bool)

(assert (=> b!820686 m!1061689))

(assert (=> d!258440 d!258446))

(declare-fun d!258448 () Bool)

(declare-fun lt!317114 () List!8834)

(assert (=> d!258448 (= lt!317114 (list!3489 x!176195))))

(declare-fun efficientList!123 (Conc!2936 List!8834) List!8834)

(declare-fun efficientList$default$2!41 (Conc!2936) List!8834)

(assert (=> d!258448 (= lt!317114 (efficientList!123 (c!132959 x!176195) (efficientList$default$2!41 (c!132959 x!176195))))))

(assert (=> d!258448 (= (efficientList!121 x!176195) lt!317114)))

(declare-fun bs!228793 () Bool)

(assert (= bs!228793 d!258448))

(assert (=> bs!228793 m!1061643))

(declare-fun m!1061695 () Bool)

(assert (=> bs!228793 m!1061695))

(assert (=> bs!228793 m!1061695))

(declare-fun m!1061697 () Bool)

(assert (=> bs!228793 m!1061697))

(assert (=> d!258434 d!258448))

(push 1)

(assert (not b!820682))

(assert (not start!73266))

(assert (not b!820653))

(assert (not b!820681))

(assert (not b!820686))

(assert (not b!820663))

(assert (not b!820685))

(assert (not d!258448))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> start!73266 d!258440))

(declare-fun d!258452 () Bool)

(declare-fun choose!4914 (Int) Bool)

(assert (=> d!258452 (= (Forall!380 lambda!24390) (choose!4914 lambda!24390))))

(declare-fun bs!228794 () Bool)

(assert (= bs!228794 d!258452))

(declare-fun m!1061699 () Bool)

(assert (=> bs!228794 m!1061699))

(assert (=> start!73266 d!258452))

(assert (=> start!73266 d!258434))

(assert (=> start!73266 d!258432))

(assert (=> start!73266 d!258430))

(declare-fun d!258454 () Bool)

(declare-fun isBalanced!799 (Conc!2936) Bool)

(assert (=> d!258454 (= (inv!11179 x!176195) (isBalanced!799 (c!132959 x!176195)))))

(declare-fun bs!228795 () Bool)

(assert (= bs!228795 d!258454))

(declare-fun m!1061701 () Bool)

(assert (=> bs!228795 m!1061701))

(assert (=> start!73266 d!258454))

(declare-fun d!258456 () Bool)

(declare-fun c!132979 () Bool)

(assert (=> d!258456 (= c!132979 (is-Node!2936 (c!132959 x!176195)))))

(declare-fun e!542223 () Bool)

(assert (=> d!258456 (= (inv!11178 (c!132959 x!176195)) e!542223)))

(declare-fun b!820693 () Bool)

(declare-fun inv!11182 (Conc!2936) Bool)

(assert (=> b!820693 (= e!542223 (inv!11182 (c!132959 x!176195)))))

(declare-fun b!820694 () Bool)

(declare-fun e!542224 () Bool)

(assert (=> b!820694 (= e!542223 e!542224)))

(declare-fun res!378819 () Bool)

(assert (=> b!820694 (= res!378819 (not (is-Leaf!4312 (c!132959 x!176195))))))

(assert (=> b!820694 (=> res!378819 e!542224)))

(declare-fun b!820695 () Bool)

(declare-fun inv!11183 (Conc!2936) Bool)

(assert (=> b!820695 (= e!542224 (inv!11183 (c!132959 x!176195)))))

(assert (= (and d!258456 c!132979) b!820693))

(assert (= (and d!258456 (not c!132979)) b!820694))

(assert (= (and b!820694 (not res!378819)) b!820695))

(declare-fun m!1061703 () Bool)

(assert (=> b!820693 m!1061703))

(declare-fun m!1061705 () Bool)

(assert (=> b!820695 m!1061705))

(assert (=> b!820653 d!258456))

(assert (=> d!258448 d!258440))

(declare-fun b!820724 () Bool)

(declare-fun e!542239 () List!8834)

(declare-fun efficientList!124 (IArray!5877) List!8834)

(assert (=> b!820724 (= e!542239 (efficientList!124 (xs!5625 (c!132959 x!176195))))))

(declare-fun b!820725 () Bool)

(declare-fun lt!317128 () List!8834)

(assert (=> b!820725 (= e!542239 lt!317128)))

(declare-fun b!820726 () Bool)

(declare-fun e!542240 () List!8834)

(assert (=> b!820726 (= e!542240 (efficientList$default$2!41 (c!132959 x!176195)))))

(declare-fun b!820727 () Bool)

(declare-datatypes ((Unit!13335 0))(
  ( (Unit!13336) )
))
(declare-fun lt!317129 () Unit!13335)

(declare-fun lt!317126 () Unit!13335)

(assert (=> b!820727 (= lt!317129 lt!317126)))

(declare-fun lt!317127 () List!8834)

(declare-fun call!47058 () List!8834)

(assert (=> b!820727 (= (++!2260 (++!2260 lt!317127 lt!317128) (efficientList$default$2!41 (c!132959 x!176195))) (++!2260 lt!317127 call!47058))))

(declare-fun lemmaConcatAssociativity!715 (List!8834 List!8834 List!8834) Unit!13335)

(assert (=> b!820727 (= lt!317126 (lemmaConcatAssociativity!715 lt!317127 lt!317128 (efficientList$default$2!41 (c!132959 x!176195))))))

(assert (=> b!820727 (= lt!317128 (list!3491 (right!6853 (c!132959 x!176195))))))

(assert (=> b!820727 (= lt!317127 (list!3491 (left!6523 (c!132959 x!176195))))))

(declare-fun e!542241 () List!8834)

(assert (=> b!820727 (= e!542241 (efficientList!123 (left!6523 (c!132959 x!176195)) (efficientList!123 (right!6853 (c!132959 x!176195)) (efficientList$default$2!41 (c!132959 x!176195)))))))

(declare-fun b!820728 () Bool)

(assert (=> b!820728 (= e!542241 call!47058)))

(declare-fun d!258460 () Bool)

(declare-fun lt!317125 () List!8834)

(assert (=> d!258460 (= lt!317125 (++!2260 (list!3491 (c!132959 x!176195)) (efficientList$default$2!41 (c!132959 x!176195))))))

(assert (=> d!258460 (= lt!317125 e!542240)))

(declare-fun c!132994 () Bool)

(assert (=> d!258460 (= c!132994 (is-Empty!2936 (c!132959 x!176195)))))

(assert (=> d!258460 (= (efficientList!123 (c!132959 x!176195) (efficientList$default$2!41 (c!132959 x!176195))) lt!317125)))

(declare-fun bm!47053 () Bool)

(declare-fun c!132995 () Bool)

(declare-fun c!132996 () Bool)

(assert (=> bm!47053 (= c!132995 c!132996)))

(assert (=> bm!47053 (= call!47058 (++!2260 e!542239 (efficientList$default$2!41 (c!132959 x!176195))))))

(declare-fun b!820729 () Bool)

(assert (=> b!820729 (= e!542240 e!542241)))

(assert (=> b!820729 (= c!132996 (is-Leaf!4312 (c!132959 x!176195)))))

(assert (= (and d!258460 c!132994) b!820726))

(assert (= (and d!258460 (not c!132994)) b!820729))

(assert (= (and b!820729 c!132996) b!820728))

(assert (= (and b!820729 (not c!132996)) b!820727))

(assert (= (or b!820728 b!820727) bm!47053))

(assert (= (and bm!47053 c!132995) b!820724))

(assert (= (and bm!47053 (not c!132995)) b!820725))

(declare-fun m!1061723 () Bool)

(assert (=> b!820724 m!1061723))

(declare-fun m!1061725 () Bool)

(assert (=> b!820727 m!1061725))

(assert (=> b!820727 m!1061695))

(declare-fun m!1061727 () Bool)

(assert (=> b!820727 m!1061727))

(declare-fun m!1061729 () Bool)

(assert (=> b!820727 m!1061729))

(assert (=> b!820727 m!1061687))

(assert (=> b!820727 m!1061729))

(assert (=> b!820727 m!1061695))

(declare-fun m!1061731 () Bool)

(assert (=> b!820727 m!1061731))

(assert (=> b!820727 m!1061695))

(declare-fun m!1061733 () Bool)

(assert (=> b!820727 m!1061733))

(assert (=> b!820727 m!1061727))

(declare-fun m!1061735 () Bool)

(assert (=> b!820727 m!1061735))

(assert (=> b!820727 m!1061685))

(assert (=> d!258460 m!1061671))

(assert (=> d!258460 m!1061671))

(assert (=> d!258460 m!1061695))

(declare-fun m!1061737 () Bool)

(assert (=> d!258460 m!1061737))

(assert (=> bm!47053 m!1061695))

(declare-fun m!1061739 () Bool)

(assert (=> bm!47053 m!1061739))

(assert (=> d!258448 d!258460))

(declare-fun d!258466 () Bool)

(assert (=> d!258466 (= (efficientList$default$2!41 (c!132959 x!176195)) Nil!8818)))

(assert (=> d!258448 d!258466))

(declare-fun d!258468 () Bool)

(declare-fun fromListB!661 (List!8834) BalanceConc!5886)

(assert (=> d!258468 (= (seqFromList!1508 (value!53464 (toValue!30 thiss!4819 x!176195))) (fromListB!661 (value!53464 (toValue!30 thiss!4819 x!176195))))))

(declare-fun bs!228796 () Bool)

(assert (= bs!228796 d!258468))

(declare-fun m!1061741 () Bool)

(assert (=> bs!228796 m!1061741))

(assert (=> b!820663 d!258468))

(declare-fun tp!256611 () Bool)

(declare-fun e!542246 () Bool)

(declare-fun b!820736 () Bool)

(declare-fun tp!256612 () Bool)

(assert (=> b!820736 (= e!542246 (and (inv!11178 (left!6523 (c!132959 x!176195))) tp!256611 (inv!11178 (right!6853 (c!132959 x!176195))) tp!256612))))

(declare-fun b!820737 () Bool)

(declare-fun inv!11184 (IArray!5877) Bool)

(assert (=> b!820737 (= e!542246 (inv!11184 (xs!5625 (c!132959 x!176195))))))

(assert (=> b!820653 (= tp!256603 (and (inv!11178 (c!132959 x!176195)) e!542246))))

(assert (= (and b!820653 (is-Node!2936 (c!132959 x!176195))) b!820736))

(assert (= (and b!820653 (is-Leaf!4312 (c!132959 x!176195))) b!820737))

(declare-fun m!1061743 () Bool)

(assert (=> b!820736 m!1061743))

(declare-fun m!1061745 () Bool)

(assert (=> b!820736 m!1061745))

(declare-fun m!1061747 () Bool)

(assert (=> b!820737 m!1061747))

(assert (=> b!820653 m!1061635))

(push 1)

(assert (not d!258468))

(assert (not b!820682))

(assert (not b!820653))

(assert (not b!820681))

(assert (not b!820686))

(assert (not d!258454))

(assert (not b!820724))

(assert (not d!258460))

(assert (not bm!47053))

(assert (not b!820693))

(assert (not b!820737))

(assert (not b!820727))

(assert (not b!820685))

(assert (not b!820736))

(assert (not d!258452))

(assert (not b!820695))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!258472 () Bool)

(declare-fun e!542252 () Bool)

(assert (=> d!258472 e!542252))

(declare-fun res!378825 () Bool)

(assert (=> d!258472 (=> (not res!378825) (not e!542252))))

(declare-fun lt!317135 () List!8834)

(declare-fun content!1279 (List!8834) (Set (_ BitVec 16)))

(assert (=> d!258472 (= res!378825 (= (content!1279 lt!317135) (set.union (content!1279 (list!3491 (c!132959 x!176195))) (content!1279 (efficientList$default$2!41 (c!132959 x!176195))))))))

(declare-fun e!542253 () List!8834)

(assert (=> d!258472 (= lt!317135 e!542253)))

(declare-fun c!132999 () Bool)

(assert (=> d!258472 (= c!132999 (is-Nil!8818 (list!3491 (c!132959 x!176195))))))

(assert (=> d!258472 (= (++!2260 (list!3491 (c!132959 x!176195)) (efficientList$default$2!41 (c!132959 x!176195))) lt!317135)))

(declare-fun b!820748 () Bool)

(declare-fun res!378824 () Bool)

(assert (=> b!820748 (=> (not res!378824) (not e!542252))))

(declare-fun size!7468 (List!8834) Int)

(assert (=> b!820748 (= res!378824 (= (size!7468 lt!317135) (+ (size!7468 (list!3491 (c!132959 x!176195))) (size!7468 (efficientList$default$2!41 (c!132959 x!176195))))))))

(declare-fun b!820746 () Bool)

(assert (=> b!820746 (= e!542253 (efficientList$default$2!41 (c!132959 x!176195)))))

(declare-fun b!820749 () Bool)

(assert (=> b!820749 (= e!542252 (or (not (= (efficientList$default$2!41 (c!132959 x!176195)) Nil!8818)) (= lt!317135 (list!3491 (c!132959 x!176195)))))))

(declare-fun b!820747 () Bool)

(assert (=> b!820747 (= e!542253 (Cons!8818 (h!14219 (list!3491 (c!132959 x!176195))) (++!2260 (t!92948 (list!3491 (c!132959 x!176195))) (efficientList$default$2!41 (c!132959 x!176195)))))))

(assert (= (and d!258472 c!132999) b!820746))

(assert (= (and d!258472 (not c!132999)) b!820747))

(assert (= (and d!258472 res!378825) b!820748))

(assert (= (and b!820748 res!378824) b!820749))

(declare-fun m!1061757 () Bool)

(assert (=> d!258472 m!1061757))

(assert (=> d!258472 m!1061671))

(declare-fun m!1061759 () Bool)

(assert (=> d!258472 m!1061759))

(assert (=> d!258472 m!1061695))

(declare-fun m!1061761 () Bool)

(assert (=> d!258472 m!1061761))

(declare-fun m!1061763 () Bool)

(assert (=> b!820748 m!1061763))

(assert (=> b!820748 m!1061671))

(declare-fun m!1061765 () Bool)

(assert (=> b!820748 m!1061765))

(assert (=> b!820748 m!1061695))

(declare-fun m!1061767 () Bool)

(assert (=> b!820748 m!1061767))

(assert (=> b!820747 m!1061695))

(declare-fun m!1061769 () Bool)

(assert (=> b!820747 m!1061769))

(assert (=> d!258460 d!258472))

(assert (=> d!258460 d!258446))

(declare-fun d!258478 () Bool)

(declare-fun e!542260 () Bool)

(assert (=> d!258478 e!542260))

(declare-fun res!378830 () Bool)

(assert (=> d!258478 (=> (not res!378830) (not e!542260))))

(declare-fun lt!317138 () BalanceConc!5886)

(assert (=> d!258478 (= res!378830 (= (list!3489 lt!317138) (value!53464 (toValue!30 thiss!4819 x!176195))))))

(declare-fun fromList!303 (List!8834) Conc!2936)

(assert (=> d!258478 (= lt!317138 (BalanceConc!5887 (fromList!303 (value!53464 (toValue!30 thiss!4819 x!176195)))))))

(assert (=> d!258478 (= (fromListB!661 (value!53464 (toValue!30 thiss!4819 x!176195))) lt!317138)))

(declare-fun b!820758 () Bool)

(assert (=> b!820758 (= e!542260 (isBalanced!799 (fromList!303 (value!53464 (toValue!30 thiss!4819 x!176195)))))))

(assert (= (and d!258478 res!378830) b!820758))

(declare-fun m!1061771 () Bool)

(assert (=> d!258478 m!1061771))

(declare-fun m!1061773 () Bool)

(assert (=> d!258478 m!1061773))

(assert (=> b!820758 m!1061773))

(assert (=> b!820758 m!1061773))

(declare-fun m!1061775 () Bool)

(assert (=> b!820758 m!1061775))

(assert (=> d!258468 d!258478))

(push 1)

(assert (not b!820682))

(assert (not b!820653))

(assert (not b!820681))

(assert (not b!820686))

(assert (not d!258454))

(assert (not b!820748))

(assert (not d!258472))

(assert (not b!820747))

(assert (not bm!47053))

(assert (not b!820693))

(assert (not b!820737))

(assert (not b!820727))

(assert (not b!820758))

(assert (not b!820724))

(assert (not b!820685))

(assert (not b!820736))

(assert (not d!258478))

(assert (not d!258452))

(assert (not b!820695))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

