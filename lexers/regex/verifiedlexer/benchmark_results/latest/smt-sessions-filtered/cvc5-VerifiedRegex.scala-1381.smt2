; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73432 () Bool)

(assert start!73432)

(assert (=> start!73432 true))

(declare-fun b!821475 () Bool)

(declare-fun e!542763 () Bool)

(declare-datatypes ((List!8846 0))(
  ( (Nil!8830) (Cons!8830 (h!14231 (_ BitVec 16)) (t!93049 List!8846)) )
))
(declare-datatypes ((IArray!5901 0))(
  ( (IArray!5902 (innerList!3008 List!8846)) )
))
(declare-datatypes ((Conc!2948 0))(
  ( (Node!2948 (left!6561 Conc!2948) (right!6891 Conc!2948) (csize!6126 Int) (cheight!3159 Int)) (Leaf!4330 (xs!5637 IArray!5901) (csize!6127 Int)) (Empty!2948) )
))
(declare-datatypes ((BalanceConc!5910 0))(
  ( (BalanceConc!5911 (c!133137 Conc!2948)) )
))
(declare-fun x!176965 () BalanceConc!5910)

(declare-fun tp!256739 () Bool)

(declare-fun inv!11237 (Conc!2948) Bool)

(assert (=> b!821475 (= e!542763 (and (inv!11237 (c!133137 x!176965)) tp!256739))))

(declare-fun inst!686 () Bool)

(declare-datatypes ((CommentValueInjection!8 0))(
  ( (CommentValueInjection!9) )
))
(declare-fun thiss!4444 () CommentValueInjection!8)

(declare-fun inv!11238 (BalanceConc!5910) Bool)

(declare-fun list!3510 (BalanceConc!5910) List!8846)

(declare-datatypes ((TokenValue!1721 0))(
  ( (FloatLiteralValue!3442 (text!12492 List!8846)) (TokenValueExt!1720 (__x!7183 Int)) (Broken!8605 (value!53760 List!8846)) (Object!1736) (End!1721) (Def!1721) (Underscore!1721) (Match!1721) (Else!1721) (Error!1721) (Case!1721) (If!1721) (Extends!1721) (Abstract!1721) (Class!1721) (Val!1721) (DelimiterValue!3442 (del!1781 List!8846)) (KeywordValue!1727 (value!53761 List!8846)) (CommentValue!3442 (value!53762 List!8846)) (WhitespaceValue!3442 (value!53763 List!8846)) (IndentationValue!1721 (value!53764 List!8846)) (String!10388) (Int32!1721) (Broken!8606 (value!53765 List!8846)) (Boolean!1722) (Unit!13351) (OperatorValue!1724 (op!1781 List!8846)) (IdentifierValue!3442 (value!53766 List!8846)) (IdentifierValue!3443 (value!53767 List!8846)) (WhitespaceValue!3443 (value!53768 List!8846)) (True!3442) (False!3442) (Broken!8607 (value!53769 List!8846)) (Broken!8608 (value!53770 List!8846)) (True!3443) (RightBrace!1721) (RightBracket!1721) (Colon!1721) (Null!1721) (Comma!1721) (LeftBracket!1721) (False!3443) (LeftBrace!1721) (ImaginaryLiteralValue!1721 (text!12493 List!8846)) (StringLiteralValue!5163 (value!53771 List!8846)) (EOFValue!1721 (value!53772 List!8846)) (IdentValue!1721 (value!53773 List!8846)) (DelimiterValue!3443 (value!53774 List!8846)) (DedentValue!1721 (value!53775 List!8846)) (NewLineValue!1721 (value!53776 List!8846)) (IntegerValue!5163 (value!53777 (_ BitVec 32)) (text!12494 List!8846)) (IntegerValue!5164 (value!53778 Int) (text!12495 List!8846)) (Times!1721) (Or!1721) (Equal!1721) (Minus!1721) (Broken!8609 (value!53779 List!8846)) (And!1721) (Div!1721) (LessEqual!1721) (Mod!1721) (Concat!3751) (Not!1721) (Plus!1721) (SpaceValue!1721 (value!53780 List!8846)) (IntegerValue!5165 (value!53781 Int) (text!12496 List!8846)) (StringLiteralValue!5164 (text!12497 List!8846)) (FloatLiteralValue!3443 (text!12498 List!8846)) (BytesLiteralValue!1721 (value!53782 List!8846)) (CommentValue!3443 (value!53783 List!8846)) (StringLiteralValue!5165 (value!53784 List!8846)) (ErrorTokenValue!1721 (msg!1782 List!8846)) )
))
(declare-fun toCharacters!18 (CommentValueInjection!8 TokenValue!1721) BalanceConc!5910)

(declare-fun toValue!25 (CommentValueInjection!8 BalanceConc!5910) TokenValue!1721)

(assert (=> start!73432 (= inst!686 (=> (and (inv!11238 x!176965) e!542763) (= (list!3510 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!176965))) (list!3510 x!176965))))))

(assert (= start!73432 b!821475))

(declare-fun m!1062561 () Bool)

(assert (=> b!821475 m!1062561))

(declare-fun m!1062563 () Bool)

(assert (=> start!73432 m!1062563))

(declare-fun m!1062565 () Bool)

(assert (=> start!73432 m!1062565))

(declare-fun m!1062567 () Bool)

(assert (=> start!73432 m!1062567))

(declare-fun m!1062569 () Bool)

(assert (=> start!73432 m!1062569))

(declare-fun m!1062571 () Bool)

(assert (=> start!73432 m!1062571))

(assert (=> start!73432 m!1062571))

(assert (=> start!73432 m!1062565))

(declare-fun bs!229160 () Bool)

(declare-fun neg-inst!686 () Bool)

(declare-fun s!151425 () Bool)

(assert (= bs!229160 (and neg-inst!686 s!151425)))

(assert (=> bs!229160 (=> true (= (list!3510 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!176965))) (list!3510 x!176965)))))

(assert (=> m!1062571 m!1062565))

(assert (=> m!1062571 m!1062567))

(assert (=> m!1062571 m!1062569))

(assert (=> m!1062571 s!151425))

(assert (=> m!1062569 s!151425))

(declare-fun bs!229161 () Bool)

(assert (= bs!229161 (and neg-inst!686 start!73432)))

(assert (=> bs!229161 (= true inst!686)))

(declare-fun lambda!24629 () Int)

(declare-fun Forall!390 (Int) Bool)

(assert (=> start!73432 (= (Forall!390 lambda!24629) inst!686)))

(assert (=> start!73432 (not (Forall!390 lambda!24629))))

(assert (=> start!73432 true))

(assert (= neg-inst!686 inst!686))

(declare-fun m!1062573 () Bool)

(assert (=> start!73432 m!1062573))

(assert (=> start!73432 m!1062573))

(push 1)

(assert (not b!821475))

(assert (not bs!229160))

(assert (not start!73432))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!258710 () Bool)

(declare-fun list!3512 (Conc!2948) List!8846)

(assert (=> d!258710 (= (list!3510 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!176965))) (list!3512 (c!133137 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!176965)))))))

(declare-fun bs!229164 () Bool)

(assert (= bs!229164 d!258710))

(declare-fun m!1062589 () Bool)

(assert (=> bs!229164 m!1062589))

(assert (=> bs!229160 d!258710))

(declare-fun d!258712 () Bool)

(declare-fun c!133142 () Bool)

(assert (=> d!258712 (= c!133142 (is-CommentValue!3443 (toValue!25 thiss!4444 x!176965)))))

(declare-fun e!542769 () BalanceConc!5910)

(assert (=> d!258712 (= (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!176965)) e!542769)))

(declare-fun b!821485 () Bool)

(declare-fun seqFromList!1513 (List!8846) BalanceConc!5910)

(assert (=> b!821485 (= e!542769 (seqFromList!1513 (value!53783 (toValue!25 thiss!4444 x!176965))))))

(declare-fun b!821486 () Bool)

(assert (=> b!821486 (= e!542769 (BalanceConc!5911 Empty!2948))))

(assert (= (and d!258712 c!133142) b!821485))

(assert (= (and d!258712 (not c!133142)) b!821486))

(declare-fun m!1062591 () Bool)

(assert (=> b!821485 m!1062591))

(assert (=> bs!229160 d!258712))

(declare-fun d!258716 () Bool)

(declare-fun efficientList!137 (BalanceConc!5910) List!8846)

(assert (=> d!258716 (= (toValue!25 thiss!4444 x!176965) (CommentValue!3443 (efficientList!137 x!176965)))))

(declare-fun bs!229166 () Bool)

(assert (= bs!229166 d!258716))

(declare-fun m!1062595 () Bool)

(assert (=> bs!229166 m!1062595))

(assert (=> bs!229160 d!258716))

(declare-fun d!258720 () Bool)

(assert (=> d!258720 (= (list!3510 x!176965) (list!3512 (c!133137 x!176965)))))

(declare-fun bs!229167 () Bool)

(assert (= bs!229167 d!258720))

(declare-fun m!1062597 () Bool)

(assert (=> bs!229167 m!1062597))

(assert (=> bs!229160 d!258720))

(push 1)

(assert (not d!258716))

(assert (not b!821485))

(assert (not d!258720))

(assert (not b!821475))

(assert (not start!73432))

(assert (not d!258710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!258726 () Bool)

(declare-fun c!133151 () Bool)

(assert (=> d!258726 (= c!133151 (is-Empty!2948 (c!133137 x!176965)))))

(declare-fun e!542777 () List!8846)

(assert (=> d!258726 (= (list!3512 (c!133137 x!176965)) e!542777)))

(declare-fun b!821501 () Bool)

(assert (=> b!821501 (= e!542777 Nil!8830)))

(declare-fun b!821502 () Bool)

(declare-fun e!542778 () List!8846)

(assert (=> b!821502 (= e!542777 e!542778)))

(declare-fun c!133152 () Bool)

(assert (=> b!821502 (= c!133152 (is-Leaf!4330 (c!133137 x!176965)))))

(declare-fun b!821503 () Bool)

(declare-fun list!3514 (IArray!5901) List!8846)

(assert (=> b!821503 (= e!542778 (list!3514 (xs!5637 (c!133137 x!176965))))))

(declare-fun b!821504 () Bool)

(declare-fun ++!2264 (List!8846 List!8846) List!8846)

(assert (=> b!821504 (= e!542778 (++!2264 (list!3512 (left!6561 (c!133137 x!176965))) (list!3512 (right!6891 (c!133137 x!176965)))))))

(assert (= (and d!258726 c!133151) b!821501))

(assert (= (and d!258726 (not c!133151)) b!821502))

(assert (= (and b!821502 c!133152) b!821503))

(assert (= (and b!821502 (not c!133152)) b!821504))

(declare-fun m!1062605 () Bool)

(assert (=> b!821503 m!1062605))

(declare-fun m!1062607 () Bool)

(assert (=> b!821504 m!1062607))

(declare-fun m!1062609 () Bool)

(assert (=> b!821504 m!1062609))

(assert (=> b!821504 m!1062607))

(assert (=> b!821504 m!1062609))

(declare-fun m!1062611 () Bool)

(assert (=> b!821504 m!1062611))

(assert (=> d!258720 d!258726))

(declare-fun d!258728 () Bool)

(declare-fun c!133153 () Bool)

(assert (=> d!258728 (= c!133153 (is-Empty!2948 (c!133137 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!176965)))))))

(declare-fun e!542779 () List!8846)

(assert (=> d!258728 (= (list!3512 (c!133137 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!176965)))) e!542779)))

(declare-fun b!821505 () Bool)

(assert (=> b!821505 (= e!542779 Nil!8830)))

(declare-fun b!821506 () Bool)

(declare-fun e!542780 () List!8846)

(assert (=> b!821506 (= e!542779 e!542780)))

(declare-fun c!133154 () Bool)

(assert (=> b!821506 (= c!133154 (is-Leaf!4330 (c!133137 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!176965)))))))

(declare-fun b!821507 () Bool)

(assert (=> b!821507 (= e!542780 (list!3514 (xs!5637 (c!133137 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!176965))))))))

(declare-fun b!821508 () Bool)

(assert (=> b!821508 (= e!542780 (++!2264 (list!3512 (left!6561 (c!133137 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!176965))))) (list!3512 (right!6891 (c!133137 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!176965)))))))))

(assert (= (and d!258728 c!133153) b!821505))

(assert (= (and d!258728 (not c!133153)) b!821506))

(assert (= (and b!821506 c!133154) b!821507))

(assert (= (and b!821506 (not c!133154)) b!821508))

(declare-fun m!1062613 () Bool)

(assert (=> b!821507 m!1062613))

(declare-fun m!1062615 () Bool)

(assert (=> b!821508 m!1062615))

(declare-fun m!1062617 () Bool)

(assert (=> b!821508 m!1062617))

(assert (=> b!821508 m!1062615))

(assert (=> b!821508 m!1062617))

(declare-fun m!1062619 () Bool)

(assert (=> b!821508 m!1062619))

(assert (=> d!258710 d!258728))

(declare-fun d!258730 () Bool)

(declare-fun lt!317234 () List!8846)

(assert (=> d!258730 (= lt!317234 (list!3510 x!176965))))

(declare-fun efficientList!139 (Conc!2948 List!8846) List!8846)

(declare-fun efficientList$default$2!47 (Conc!2948) List!8846)

(assert (=> d!258730 (= lt!317234 (efficientList!139 (c!133137 x!176965) (efficientList$default$2!47 (c!133137 x!176965))))))

(assert (=> d!258730 (= (efficientList!137 x!176965) lt!317234)))

(declare-fun bs!229170 () Bool)

(assert (= bs!229170 d!258730))

(assert (=> bs!229170 m!1062569))

(declare-fun m!1062621 () Bool)

(assert (=> bs!229170 m!1062621))

(assert (=> bs!229170 m!1062621))

(declare-fun m!1062623 () Bool)

(assert (=> bs!229170 m!1062623))

(assert (=> d!258716 d!258730))

(push 1)

(assert (not b!821503))

(assert (not b!821475))

(assert (not b!821508))

(assert (not start!73432))

(assert (not b!821504))

(assert (not b!821507))

(assert (not d!258730))

(assert (not b!821485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!258738 () Bool)

(declare-fun c!133165 () Bool)

(assert (=> d!258738 (= c!133165 (is-Node!2948 (c!133137 x!176965)))))

(declare-fun e!542793 () Bool)

(assert (=> d!258738 (= (inv!11237 (c!133137 x!176965)) e!542793)))

(declare-fun b!821531 () Bool)

(declare-fun inv!11241 (Conc!2948) Bool)

(assert (=> b!821531 (= e!542793 (inv!11241 (c!133137 x!176965)))))

(declare-fun b!821532 () Bool)

(declare-fun e!542794 () Bool)

(assert (=> b!821532 (= e!542793 e!542794)))

(declare-fun res!379109 () Bool)

(assert (=> b!821532 (= res!379109 (not (is-Leaf!4330 (c!133137 x!176965))))))

(assert (=> b!821532 (=> res!379109 e!542794)))

(declare-fun b!821533 () Bool)

(declare-fun inv!11242 (Conc!2948) Bool)

(assert (=> b!821533 (= e!542794 (inv!11242 (c!133137 x!176965)))))

(assert (= (and d!258738 c!133165) b!821531))

(assert (= (and d!258738 (not c!133165)) b!821532))

(assert (= (and b!821532 (not res!379109)) b!821533))

(declare-fun m!1062645 () Bool)

(assert (=> b!821531 m!1062645))

(declare-fun m!1062647 () Bool)

(assert (=> b!821533 m!1062647))

(assert (=> b!821475 d!258738))

(declare-fun d!258740 () Bool)

(declare-fun fromListB!662 (List!8846) BalanceConc!5910)

(assert (=> d!258740 (= (seqFromList!1513 (value!53783 (toValue!25 thiss!4444 x!176965))) (fromListB!662 (value!53783 (toValue!25 thiss!4444 x!176965))))))

(declare-fun bs!229172 () Bool)

(assert (= bs!229172 d!258740))

(declare-fun m!1062649 () Bool)

(assert (=> bs!229172 m!1062649))

(assert (=> b!821485 d!258740))

(assert (=> d!258730 d!258720))

(declare-fun b!821546 () Bool)

(declare-fun e!542801 () List!8846)

(assert (=> b!821546 (= e!542801 (efficientList$default$2!47 (c!133137 x!176965)))))

(declare-fun b!821547 () Bool)

(declare-fun e!542803 () List!8846)

(declare-fun lt!317250 () List!8846)

(assert (=> b!821547 (= e!542803 lt!317250)))

(declare-fun d!258742 () Bool)

(declare-fun lt!317248 () List!8846)

(assert (=> d!258742 (= lt!317248 (++!2264 (list!3512 (c!133137 x!176965)) (efficientList$default$2!47 (c!133137 x!176965))))))

(assert (=> d!258742 (= lt!317248 e!542801)))

(declare-fun c!133172 () Bool)

(assert (=> d!258742 (= c!133172 (is-Empty!2948 (c!133137 x!176965)))))

(assert (=> d!258742 (= (efficientList!139 (c!133137 x!176965) (efficientList$default$2!47 (c!133137 x!176965))) lt!317248)))

(declare-fun b!821548 () Bool)

(declare-datatypes ((Unit!13353 0))(
  ( (Unit!13354) )
))
(declare-fun lt!317249 () Unit!13353)

(declare-fun lt!317252 () Unit!13353)

(assert (=> b!821548 (= lt!317249 lt!317252)))

(declare-fun call!47076 () List!8846)

(declare-fun lt!317251 () List!8846)

(assert (=> b!821548 (= (++!2264 call!47076 (efficientList$default$2!47 (c!133137 x!176965))) (++!2264 lt!317250 (++!2264 lt!317251 (efficientList$default$2!47 (c!133137 x!176965)))))))

(declare-fun lemmaConcatAssociativity!718 (List!8846 List!8846 List!8846) Unit!13353)

(assert (=> b!821548 (= lt!317252 (lemmaConcatAssociativity!718 lt!317250 lt!317251 (efficientList$default$2!47 (c!133137 x!176965))))))

(assert (=> b!821548 (= lt!317251 (list!3512 (right!6891 (c!133137 x!176965))))))

(assert (=> b!821548 (= lt!317250 (list!3512 (left!6561 (c!133137 x!176965))))))

(declare-fun e!542802 () List!8846)

(assert (=> b!821548 (= e!542802 (efficientList!139 (left!6561 (c!133137 x!176965)) (efficientList!139 (right!6891 (c!133137 x!176965)) (efficientList$default$2!47 (c!133137 x!176965)))))))

(declare-fun b!821549 () Bool)

(assert (=> b!821549 (= e!542801 e!542802)))

(declare-fun c!133174 () Bool)

(assert (=> b!821549 (= c!133174 (is-Leaf!4330 (c!133137 x!176965)))))

(declare-fun b!821550 () Bool)

(declare-fun efficientList!141 (IArray!5901) List!8846)

(assert (=> b!821550 (= e!542803 (efficientList!141 (xs!5637 (c!133137 x!176965))))))

(declare-fun bm!47071 () Bool)

(declare-fun c!133173 () Bool)

(assert (=> bm!47071 (= c!133173 c!133174)))

(assert (=> bm!47071 (= call!47076 (++!2264 e!542803 (ite c!133174 (efficientList$default$2!47 (c!133137 x!176965)) lt!317251)))))

(declare-fun b!821551 () Bool)

(assert (=> b!821551 (= e!542802 call!47076)))

(assert (= (and d!258742 c!133172) b!821546))

(assert (= (and d!258742 (not c!133172)) b!821549))

(assert (= (and b!821549 c!133174) b!821551))

(assert (= (and b!821549 (not c!133174)) b!821548))

(assert (= (or b!821551 b!821548) bm!47071))

(assert (= (and bm!47071 c!133173) b!821550))

(assert (= (and bm!47071 (not c!133173)) b!821547))

(assert (=> d!258742 m!1062597))

(assert (=> d!258742 m!1062597))

(assert (=> d!258742 m!1062621))

(declare-fun m!1062651 () Bool)

(assert (=> d!258742 m!1062651))

(assert (=> b!821548 m!1062621))

(declare-fun m!1062653 () Bool)

(assert (=> b!821548 m!1062653))

(assert (=> b!821548 m!1062607))

(declare-fun m!1062655 () Bool)

(assert (=> b!821548 m!1062655))

(declare-fun m!1062657 () Bool)

(assert (=> b!821548 m!1062657))

(assert (=> b!821548 m!1062653))

(declare-fun m!1062659 () Bool)

(assert (=> b!821548 m!1062659))

(assert (=> b!821548 m!1062621))

(assert (=> b!821548 m!1062655))

(assert (=> b!821548 m!1062609))

(assert (=> b!821548 m!1062621))

(declare-fun m!1062661 () Bool)

(assert (=> b!821548 m!1062661))

(assert (=> b!821548 m!1062621))

(declare-fun m!1062663 () Bool)

(assert (=> b!821548 m!1062663))

(declare-fun m!1062665 () Bool)

(assert (=> b!821550 m!1062665))

(declare-fun m!1062667 () Bool)

(assert (=> bm!47071 m!1062667))

(assert (=> d!258730 d!258742))

(declare-fun d!258744 () Bool)

(assert (=> d!258744 (= (efficientList$default$2!47 (c!133137 x!176965)) Nil!8830)))

(assert (=> d!258730 d!258744))

(declare-fun d!258746 () Bool)

(declare-fun isBalanced!805 (Conc!2948) Bool)

(assert (=> d!258746 (= (inv!11238 x!176965) (isBalanced!805 (c!133137 x!176965)))))

(declare-fun bs!229173 () Bool)

(assert (= bs!229173 d!258746))

(declare-fun m!1062669 () Bool)

(assert (=> bs!229173 m!1062669))

(assert (=> start!73432 d!258746))

(declare-fun d!258748 () Bool)

(declare-fun choose!4921 (Int) Bool)

(assert (=> d!258748 (= (Forall!390 lambda!24629) (choose!4921 lambda!24629))))

(declare-fun bs!229174 () Bool)

(assert (= bs!229174 d!258748))

(declare-fun m!1062671 () Bool)

(assert (=> bs!229174 m!1062671))

(assert (=> start!73432 d!258748))

(assert (=> start!73432 d!258712))

(assert (=> start!73432 d!258716))

(assert (=> start!73432 d!258720))

(assert (=> start!73432 d!258710))

(declare-fun b!821558 () Bool)

(declare-fun tp!256748 () Bool)

(declare-fun tp!256747 () Bool)

(declare-fun e!542808 () Bool)

(assert (=> b!821558 (= e!542808 (and (inv!11237 (left!6561 (c!133137 x!176965))) tp!256747 (inv!11237 (right!6891 (c!133137 x!176965))) tp!256748))))

(declare-fun b!821559 () Bool)

(declare-fun inv!11243 (IArray!5901) Bool)

(assert (=> b!821559 (= e!542808 (inv!11243 (xs!5637 (c!133137 x!176965))))))

(assert (=> b!821475 (= tp!256739 (and (inv!11237 (c!133137 x!176965)) e!542808))))

(assert (= (and b!821475 (is-Node!2948 (c!133137 x!176965))) b!821558))

(assert (= (and b!821475 (is-Leaf!4330 (c!133137 x!176965))) b!821559))

(declare-fun m!1062673 () Bool)

(assert (=> b!821558 m!1062673))

(declare-fun m!1062675 () Bool)

(assert (=> b!821558 m!1062675))

(declare-fun m!1062677 () Bool)

(assert (=> b!821559 m!1062677))

(assert (=> b!821475 m!1062561))

(push 1)

(assert (not b!821503))

(assert (not d!258746))

(assert (not b!821550))

(assert (not d!258742))

(assert (not b!821558))

(assert (not bm!47071))

(assert (not d!258748))

(assert (not b!821475))

(assert (not b!821508))

(assert (not b!821548))

(assert (not b!821504))

(assert (not b!821507))

(assert (not b!821559))

(assert (not b!821533))

(assert (not d!258740))

(assert (not b!821531))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!821603 () Bool)

(declare-fun e!542835 () List!8846)

(assert (=> b!821603 (= e!542835 (efficientList$default$2!47 (c!133137 x!176965)))))

(declare-fun d!258762 () Bool)

(declare-fun e!542836 () Bool)

(assert (=> d!258762 e!542836))

(declare-fun res!379117 () Bool)

(assert (=> d!258762 (=> (not res!379117) (not e!542836))))

(declare-fun lt!317270 () List!8846)

(declare-fun content!1280 (List!8846) (Set (_ BitVec 16)))

(assert (=> d!258762 (= res!379117 (= (content!1280 lt!317270) (set.union (content!1280 (list!3512 (c!133137 x!176965))) (content!1280 (efficientList$default$2!47 (c!133137 x!176965))))))))

(assert (=> d!258762 (= lt!317270 e!542835)))

(declare-fun c!133189 () Bool)

(assert (=> d!258762 (= c!133189 (is-Nil!8830 (list!3512 (c!133137 x!176965))))))

(assert (=> d!258762 (= (++!2264 (list!3512 (c!133137 x!176965)) (efficientList$default$2!47 (c!133137 x!176965))) lt!317270)))

(declare-fun b!821605 () Bool)

(declare-fun res!379118 () Bool)

(assert (=> b!821605 (=> (not res!379118) (not e!542836))))

(declare-fun size!7469 (List!8846) Int)

(assert (=> b!821605 (= res!379118 (= (size!7469 lt!317270) (+ (size!7469 (list!3512 (c!133137 x!176965))) (size!7469 (efficientList$default$2!47 (c!133137 x!176965))))))))

(declare-fun b!821606 () Bool)

(assert (=> b!821606 (= e!542836 (or (not (= (efficientList$default$2!47 (c!133137 x!176965)) Nil!8830)) (= lt!317270 (list!3512 (c!133137 x!176965)))))))

(declare-fun b!821604 () Bool)

(assert (=> b!821604 (= e!542835 (Cons!8830 (h!14231 (list!3512 (c!133137 x!176965))) (++!2264 (t!93049 (list!3512 (c!133137 x!176965))) (efficientList$default$2!47 (c!133137 x!176965)))))))

(assert (= (and d!258762 c!133189) b!821603))

(assert (= (and d!258762 (not c!133189)) b!821604))

(assert (= (and d!258762 res!379117) b!821605))

(assert (= (and b!821605 res!379118) b!821606))

(declare-fun m!1062713 () Bool)

(assert (=> d!258762 m!1062713))

(assert (=> d!258762 m!1062597))

(declare-fun m!1062715 () Bool)

(assert (=> d!258762 m!1062715))

(assert (=> d!258762 m!1062621))

(declare-fun m!1062717 () Bool)

(assert (=> d!258762 m!1062717))

(declare-fun m!1062719 () Bool)

(assert (=> b!821605 m!1062719))

(assert (=> b!821605 m!1062597))

(declare-fun m!1062721 () Bool)

(assert (=> b!821605 m!1062721))

(assert (=> b!821605 m!1062621))

(declare-fun m!1062723 () Bool)

(assert (=> b!821605 m!1062723))

(assert (=> b!821604 m!1062621))

(declare-fun m!1062725 () Bool)

(assert (=> b!821604 m!1062725))

(assert (=> d!258742 d!258762))

(assert (=> d!258742 d!258726))

(declare-fun d!258764 () Bool)

(declare-fun e!542839 () Bool)

(assert (=> d!258764 e!542839))

(declare-fun res!379121 () Bool)

(assert (=> d!258764 (=> (not res!379121) (not e!542839))))

(declare-fun lt!317273 () BalanceConc!5910)

(assert (=> d!258764 (= res!379121 (= (list!3510 lt!317273) (value!53783 (toValue!25 thiss!4444 x!176965))))))

(declare-fun fromList!304 (List!8846) Conc!2948)

(assert (=> d!258764 (= lt!317273 (BalanceConc!5911 (fromList!304 (value!53783 (toValue!25 thiss!4444 x!176965)))))))

(assert (=> d!258764 (= (fromListB!662 (value!53783 (toValue!25 thiss!4444 x!176965))) lt!317273)))

(declare-fun b!821609 () Bool)

(assert (=> b!821609 (= e!542839 (isBalanced!805 (fromList!304 (value!53783 (toValue!25 thiss!4444 x!176965)))))))

(assert (= (and d!258764 res!379121) b!821609))

(declare-fun m!1062727 () Bool)

(assert (=> d!258764 m!1062727))

(declare-fun m!1062729 () Bool)

(assert (=> d!258764 m!1062729))

(assert (=> b!821609 m!1062729))

(assert (=> b!821609 m!1062729))

(declare-fun m!1062731 () Bool)

(assert (=> b!821609 m!1062731))

(assert (=> d!258740 d!258764))

(push 1)

(assert (not b!821503))

(assert (not d!258746))

(assert (not b!821550))

(assert (not d!258764))

(assert (not b!821558))

(assert (not b!821604))

(assert (not bm!47071))

(assert (not d!258748))

(assert (not b!821475))

(assert (not b!821609))

(assert (not b!821531))

(assert (not d!258762))

(assert (not b!821548))

(assert (not b!821504))

(assert (not b!821507))

(assert (not b!821559))

(assert (not b!821533))

(assert (not b!821605))

(assert (not b!821508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

