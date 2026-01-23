; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!273908 () Bool)

(assert start!273908)

(declare-fun b!2822553 () Bool)

(declare-fun b_free!80765 () Bool)

(declare-fun b_next!81469 () Bool)

(assert (=> b!2822553 (= b_free!80765 (not b_next!81469))))

(declare-fun tp!901392 () Bool)

(declare-fun b_and!206231 () Bool)

(assert (=> b!2822553 (= tp!901392 b_and!206231)))

(declare-fun b_free!80767 () Bool)

(declare-fun b_next!81471 () Bool)

(assert (=> b!2822553 (= b_free!80767 (not b_next!81471))))

(declare-fun tp!901388 () Bool)

(declare-fun b_and!206233 () Bool)

(assert (=> b!2822553 (= tp!901388 b_and!206233)))

(declare-fun b!2822542 () Bool)

(declare-fun b_free!80769 () Bool)

(declare-fun b_next!81473 () Bool)

(assert (=> b!2822542 (= b_free!80769 (not b_next!81473))))

(declare-fun tp!901389 () Bool)

(declare-fun b_and!206235 () Bool)

(assert (=> b!2822542 (= tp!901389 b_and!206235)))

(declare-fun b_free!80771 () Bool)

(declare-fun b_next!81475 () Bool)

(assert (=> b!2822542 (= b_free!80771 (not b_next!81475))))

(declare-fun tp!901387 () Bool)

(declare-fun b_and!206237 () Bool)

(assert (=> b!2822542 (= tp!901387 b_and!206237)))

(declare-fun b!2822567 () Bool)

(declare-fun e!1785764 () Bool)

(assert (=> b!2822567 (= e!1785764 true)))

(declare-fun b!2822566 () Bool)

(declare-fun e!1785763 () Bool)

(assert (=> b!2822566 (= e!1785763 e!1785764)))

(declare-fun b!2822565 () Bool)

(declare-fun e!1785762 () Bool)

(assert (=> b!2822565 (= e!1785762 e!1785763)))

(declare-fun b!2822552 () Bool)

(assert (=> b!2822552 e!1785762))

(assert (= b!2822566 b!2822567))

(assert (= b!2822565 b!2822566))

(declare-datatypes ((C!16882 0))(
  ( (C!16883 (val!10421 Int)) )
))
(declare-datatypes ((List!33238 0))(
  ( (Nil!33114) (Cons!33114 (h!38534 (_ BitVec 16)) (t!230677 List!33238)) )
))
(declare-datatypes ((TokenValue!5190 0))(
  ( (FloatLiteralValue!10380 (text!36775 List!33238)) (TokenValueExt!5189 (__x!22053 Int)) (Broken!25950 (value!159655 List!33238)) (Object!5313) (End!5190) (Def!5190) (Underscore!5190) (Match!5190) (Else!5190) (Error!5190) (Case!5190) (If!5190) (Extends!5190) (Abstract!5190) (Class!5190) (Val!5190) (DelimiterValue!10380 (del!5250 List!33238)) (KeywordValue!5196 (value!159656 List!33238)) (CommentValue!10380 (value!159657 List!33238)) (WhitespaceValue!10380 (value!159658 List!33238)) (IndentationValue!5190 (value!159659 List!33238)) (String!36407) (Int32!5190) (Broken!25951 (value!159660 List!33238)) (Boolean!5191) (Unit!47111) (OperatorValue!5193 (op!5250 List!33238)) (IdentifierValue!10380 (value!159661 List!33238)) (IdentifierValue!10381 (value!159662 List!33238)) (WhitespaceValue!10381 (value!159663 List!33238)) (True!10380) (False!10380) (Broken!25952 (value!159664 List!33238)) (Broken!25953 (value!159665 List!33238)) (True!10381) (RightBrace!5190) (RightBracket!5190) (Colon!5190) (Null!5190) (Comma!5190) (LeftBracket!5190) (False!10381) (LeftBrace!5190) (ImaginaryLiteralValue!5190 (text!36776 List!33238)) (StringLiteralValue!15570 (value!159666 List!33238)) (EOFValue!5190 (value!159667 List!33238)) (IdentValue!5190 (value!159668 List!33238)) (DelimiterValue!10381 (value!159669 List!33238)) (DedentValue!5190 (value!159670 List!33238)) (NewLineValue!5190 (value!159671 List!33238)) (IntegerValue!15570 (value!159672 (_ BitVec 32)) (text!36777 List!33238)) (IntegerValue!15571 (value!159673 Int) (text!36778 List!33238)) (Times!5190) (Or!5190) (Equal!5190) (Minus!5190) (Broken!25954 (value!159674 List!33238)) (And!5190) (Div!5190) (LessEqual!5190) (Mod!5190) (Concat!13540) (Not!5190) (Plus!5190) (SpaceValue!5190 (value!159675 List!33238)) (IntegerValue!15572 (value!159676 Int) (text!36779 List!33238)) (StringLiteralValue!15571 (text!36780 List!33238)) (FloatLiteralValue!10381 (text!36781 List!33238)) (BytesLiteralValue!5190 (value!159677 List!33238)) (CommentValue!10381 (value!159678 List!33238)) (StringLiteralValue!15572 (value!159679 List!33238)) (ErrorTokenValue!5190 (msg!5251 List!33238)) )
))
(declare-datatypes ((List!33239 0))(
  ( (Nil!33115) (Cons!33115 (h!38535 C!16882) (t!230678 List!33239)) )
))
(declare-datatypes ((IArray!20555 0))(
  ( (IArray!20556 (innerList!10335 List!33239)) )
))
(declare-datatypes ((Conc!10275 0))(
  ( (Node!10275 (left!25012 Conc!10275) (right!25342 Conc!10275) (csize!20780 Int) (cheight!10486 Int)) (Leaf!15647 (xs!13387 IArray!20555) (csize!20781 Int)) (Empty!10275) )
))
(declare-datatypes ((BalanceConc!20188 0))(
  ( (BalanceConc!20189 (c!457176 Conc!10275)) )
))
(declare-datatypes ((TokenValueInjection!9808 0))(
  ( (TokenValueInjection!9809 (toValue!6982 Int) (toChars!6841 Int)) )
))
(declare-datatypes ((String!36408 0))(
  ( (String!36409 (value!159680 String)) )
))
(declare-datatypes ((Regex!8350 0))(
  ( (ElementMatch!8350 (c!457177 C!16882)) (Concat!13541 (regOne!17212 Regex!8350) (regTwo!17212 Regex!8350)) (EmptyExpr!8350) (Star!8350 (reg!8679 Regex!8350)) (EmptyLang!8350) (Union!8350 (regOne!17213 Regex!8350) (regTwo!17213 Regex!8350)) )
))
(declare-datatypes ((Rule!9720 0))(
  ( (Rule!9721 (regex!4960 Regex!8350) (tag!5464 String!36408) (isSeparator!4960 Bool) (transformation!4960 TokenValueInjection!9808)) )
))
(declare-datatypes ((List!33240 0))(
  ( (Nil!33116) (Cons!33116 (h!38536 Rule!9720) (t!230679 List!33240)) )
))
(declare-fun rules!4424 () List!33240)

(assert (= (and b!2822552 (is-Cons!33116 rules!4424)) b!2822565))

(declare-fun order!17613 () Int)

(declare-fun order!17615 () Int)

(declare-fun lambda!103668 () Int)

(declare-fun dynLambda!13865 (Int Int) Int)

(declare-fun dynLambda!13866 (Int Int) Int)

(assert (=> b!2822567 (< (dynLambda!13865 order!17613 (toValue!6982 (transformation!4960 (h!38536 rules!4424)))) (dynLambda!13866 order!17615 lambda!103668))))

(declare-fun order!17617 () Int)

(declare-fun dynLambda!13867 (Int Int) Int)

(assert (=> b!2822567 (< (dynLambda!13867 order!17617 (toChars!6841 (transformation!4960 (h!38536 rules!4424)))) (dynLambda!13866 order!17615 lambda!103668))))

(declare-fun e!1785752 () Bool)

(assert (=> b!2822542 (= e!1785752 (and tp!901389 tp!901387))))

(declare-fun tp!901385 () Bool)

(declare-datatypes ((Token!9322 0))(
  ( (Token!9323 (value!159681 TokenValue!5190) (rule!7388 Rule!9720) (size!25778 Int) (originalCharacters!5692 List!33239)) )
))
(declare-datatypes ((List!33241 0))(
  ( (Nil!33117) (Cons!33117 (h!38537 Token!9322) (t!230680 List!33241)) )
))
(declare-fun l!6581 () List!33241)

(declare-fun e!1785746 () Bool)

(declare-fun b!2822543 () Bool)

(declare-fun e!1785744 () Bool)

(declare-fun inv!21 (TokenValue!5190) Bool)

(assert (=> b!2822543 (= e!1785744 (and (inv!21 (value!159681 (h!38537 l!6581))) e!1785746 tp!901385))))

(declare-fun b!2822544 () Bool)

(declare-fun res!1174659 () Bool)

(declare-fun e!1785748 () Bool)

(assert (=> b!2822544 (=> (not res!1174659) (not e!1785748))))

(declare-datatypes ((LexerInterface!4551 0))(
  ( (LexerInterfaceExt!4548 (__x!22054 Int)) (Lexer!4549) )
))
(declare-fun thiss!27755 () LexerInterface!4551)

(declare-fun rulesInvariant!3969 (LexerInterface!4551 List!33240) Bool)

(assert (=> b!2822544 (= res!1174659 (rulesInvariant!3969 thiss!27755 rules!4424))))

(declare-fun b!2822545 () Bool)

(declare-fun tp!901386 () Bool)

(declare-fun inv!45042 (String!36408) Bool)

(declare-fun inv!45045 (TokenValueInjection!9808) Bool)

(assert (=> b!2822545 (= e!1785746 (and tp!901386 (inv!45042 (tag!5464 (rule!7388 (h!38537 l!6581)))) (inv!45045 (transformation!4960 (rule!7388 (h!38537 l!6581)))) e!1785752))))

(declare-fun b!2822546 () Bool)

(declare-fun res!1174654 () Bool)

(assert (=> b!2822546 (=> (not res!1174654) (not e!1785748))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!688 (LexerInterface!4551 List!33241 List!33240) Bool)

(assert (=> b!2822546 (= res!1174654 (tokensListTwoByTwoPredicateSeparableList!688 thiss!27755 l!6581 rules!4424))))

(declare-fun res!1174661 () Bool)

(assert (=> start!273908 (=> (not res!1174661) (not e!1785748))))

(assert (=> start!273908 (= res!1174661 (is-Lexer!4549 thiss!27755))))

(assert (=> start!273908 e!1785748))

(assert (=> start!273908 true))

(declare-fun e!1785755 () Bool)

(assert (=> start!273908 e!1785755))

(declare-fun e!1785750 () Bool)

(assert (=> start!273908 e!1785750))

(declare-fun b!2822547 () Bool)

(declare-fun res!1174658 () Bool)

(assert (=> b!2822547 (=> (not res!1174658) (not e!1785748))))

(declare-fun isEmpty!18313 (List!33240) Bool)

(assert (=> b!2822547 (= res!1174658 (not (isEmpty!18313 rules!4424)))))

(declare-fun e!1785749 () Bool)

(declare-fun lt!1007466 () List!33241)

(declare-fun b!2822548 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1603 (LexerInterface!4551 List!33240 List!33241) Bool)

(assert (=> b!2822548 (= e!1785749 (rulesProduceEachTokenIndividuallyList!1603 thiss!27755 rules!4424 (t!230680 lt!1007466)))))

(declare-fun b!2822549 () Bool)

(declare-fun tp!901390 () Bool)

(declare-fun inv!45046 (Token!9322) Bool)

(assert (=> b!2822549 (= e!1785750 (and (inv!45046 (h!38537 l!6581)) e!1785744 tp!901390))))

(declare-fun b!2822550 () Bool)

(declare-fun res!1174657 () Bool)

(assert (=> b!2822550 (=> (not res!1174657) (not e!1785748))))

(assert (=> b!2822550 (= res!1174657 (is-Nil!33117 l!6581))))

(declare-fun b!2822551 () Bool)

(declare-fun e!1785754 () Bool)

(declare-fun tp!901391 () Bool)

(assert (=> b!2822551 (= e!1785755 (and e!1785754 tp!901391))))

(declare-fun forall!6790 (List!33241 Int) Bool)

(assert (=> b!2822552 (= e!1785748 (not (forall!6790 l!6581 lambda!103668)))))

(declare-fun e!1785743 () Bool)

(assert (=> b!2822552 (= (rulesProduceEachTokenIndividuallyList!1603 thiss!27755 rules!4424 lt!1007466) e!1785743)))

(declare-fun res!1174656 () Bool)

(assert (=> b!2822552 (=> res!1174656 e!1785743)))

(assert (=> b!2822552 (= res!1174656 (not (is-Cons!33117 lt!1007466)))))

(declare-fun i!1730 () Int)

(declare-fun take!554 (List!33241 Int) List!33241)

(assert (=> b!2822552 (= lt!1007466 (take!554 l!6581 i!1730))))

(declare-fun e!1785747 () Bool)

(assert (=> b!2822553 (= e!1785747 (and tp!901392 tp!901388))))

(declare-fun b!2822554 () Bool)

(declare-fun res!1174660 () Bool)

(assert (=> b!2822554 (=> (not res!1174660) (not e!1785748))))

(assert (=> b!2822554 (= res!1174660 (rulesProduceEachTokenIndividuallyList!1603 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2822555 () Bool)

(assert (=> b!2822555 (= e!1785743 e!1785749)))

(declare-fun res!1174655 () Bool)

(assert (=> b!2822555 (=> (not res!1174655) (not e!1785749))))

(declare-fun rulesProduceIndividualToken!2089 (LexerInterface!4551 List!33240 Token!9322) Bool)

(assert (=> b!2822555 (= res!1174655 (rulesProduceIndividualToken!2089 thiss!27755 rules!4424 (h!38537 lt!1007466)))))

(declare-fun b!2822556 () Bool)

(declare-fun tp!901393 () Bool)

(assert (=> b!2822556 (= e!1785754 (and tp!901393 (inv!45042 (tag!5464 (h!38536 rules!4424))) (inv!45045 (transformation!4960 (h!38536 rules!4424))) e!1785747))))

(assert (= (and start!273908 res!1174661) b!2822547))

(assert (= (and b!2822547 res!1174658) b!2822544))

(assert (= (and b!2822544 res!1174659) b!2822554))

(assert (= (and b!2822554 res!1174660) b!2822546))

(assert (= (and b!2822546 res!1174654) b!2822550))

(assert (= (and b!2822550 res!1174657) b!2822552))

(assert (= (and b!2822552 (not res!1174656)) b!2822555))

(assert (= (and b!2822555 res!1174655) b!2822548))

(assert (= b!2822556 b!2822553))

(assert (= b!2822551 b!2822556))

(assert (= (and start!273908 (is-Cons!33116 rules!4424)) b!2822551))

(assert (= b!2822545 b!2822542))

(assert (= b!2822543 b!2822545))

(assert (= b!2822549 b!2822543))

(assert (= (and start!273908 (is-Cons!33117 l!6581)) b!2822549))

(declare-fun m!3253539 () Bool)

(assert (=> b!2822556 m!3253539))

(declare-fun m!3253541 () Bool)

(assert (=> b!2822556 m!3253541))

(declare-fun m!3253543 () Bool)

(assert (=> b!2822547 m!3253543))

(declare-fun m!3253545 () Bool)

(assert (=> b!2822544 m!3253545))

(declare-fun m!3253547 () Bool)

(assert (=> b!2822554 m!3253547))

(declare-fun m!3253549 () Bool)

(assert (=> b!2822555 m!3253549))

(declare-fun m!3253551 () Bool)

(assert (=> b!2822546 m!3253551))

(declare-fun m!3253553 () Bool)

(assert (=> b!2822552 m!3253553))

(declare-fun m!3253555 () Bool)

(assert (=> b!2822552 m!3253555))

(declare-fun m!3253557 () Bool)

(assert (=> b!2822552 m!3253557))

(declare-fun m!3253559 () Bool)

(assert (=> b!2822543 m!3253559))

(declare-fun m!3253561 () Bool)

(assert (=> b!2822549 m!3253561))

(declare-fun m!3253563 () Bool)

(assert (=> b!2822545 m!3253563))

(declare-fun m!3253565 () Bool)

(assert (=> b!2822545 m!3253565))

(declare-fun m!3253567 () Bool)

(assert (=> b!2822548 m!3253567))

(push 1)

(assert b_and!206235)

(assert b_and!206237)

(assert (not b!2822547))

(assert (not b!2822548))

(assert b_and!206233)

(assert (not b!2822545))

(assert (not b!2822556))

(assert (not b_next!81469))

(assert (not b!2822546))

(assert (not b!2822551))

(assert (not b!2822549))

(assert (not b_next!81473))

(assert (not b!2822565))

(assert (not b!2822552))

(assert (not b!2822554))

(assert (not b!2822555))

(assert (not b!2822543))

(assert (not b_next!81471))

(assert (not b_next!81475))

(assert (not b!2822544))

(assert b_and!206231)

(check-sat)

(pop 1)

(push 1)

(assert b_and!206235)

(assert b_and!206237)

(assert (not b_next!81473))

(assert b_and!206233)

(assert (not b_next!81469))

(assert b_and!206231)

(assert (not b_next!81471))

(assert (not b_next!81475))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!819662 () Bool)

(assert (=> d!819662 (= (inv!45042 (tag!5464 (h!38536 rules!4424))) (= (mod (str.len (value!159680 (tag!5464 (h!38536 rules!4424)))) 2) 0))))

(assert (=> b!2822556 d!819662))

(declare-fun d!819664 () Bool)

(declare-fun res!1174690 () Bool)

(declare-fun e!1785815 () Bool)

(assert (=> d!819664 (=> (not res!1174690) (not e!1785815))))

(declare-fun semiInverseModEq!2053 (Int Int) Bool)

(assert (=> d!819664 (= res!1174690 (semiInverseModEq!2053 (toChars!6841 (transformation!4960 (h!38536 rules!4424))) (toValue!6982 (transformation!4960 (h!38536 rules!4424)))))))

(assert (=> d!819664 (= (inv!45045 (transformation!4960 (h!38536 rules!4424))) e!1785815)))

(declare-fun b!2822626 () Bool)

(declare-fun equivClasses!1952 (Int Int) Bool)

(assert (=> b!2822626 (= e!1785815 (equivClasses!1952 (toChars!6841 (transformation!4960 (h!38536 rules!4424))) (toValue!6982 (transformation!4960 (h!38536 rules!4424)))))))

(assert (= (and d!819664 res!1174690) b!2822626))

(declare-fun m!3253599 () Bool)

(assert (=> d!819664 m!3253599))

(declare-fun m!3253601 () Bool)

(assert (=> b!2822626 m!3253601))

(assert (=> b!2822556 d!819664))

(declare-fun d!819666 () Bool)

(declare-fun res!1174695 () Bool)

(declare-fun e!1785820 () Bool)

(assert (=> d!819666 (=> res!1174695 e!1785820)))

(assert (=> d!819666 (= res!1174695 (or (not (is-Cons!33117 l!6581)) (not (is-Cons!33117 (t!230680 l!6581)))))))

(assert (=> d!819666 (= (tokensListTwoByTwoPredicateSeparableList!688 thiss!27755 l!6581 rules!4424) e!1785820)))

(declare-fun b!2822631 () Bool)

(declare-fun e!1785821 () Bool)

(assert (=> b!2822631 (= e!1785820 e!1785821)))

(declare-fun res!1174696 () Bool)

(assert (=> b!2822631 (=> (not res!1174696) (not e!1785821))))

(declare-fun separableTokensPredicate!894 (LexerInterface!4551 Token!9322 Token!9322 List!33240) Bool)

(assert (=> b!2822631 (= res!1174696 (separableTokensPredicate!894 thiss!27755 (h!38537 l!6581) (h!38537 (t!230680 l!6581)) rules!4424))))

(declare-datatypes ((Unit!47113 0))(
  ( (Unit!47114) )
))
(declare-fun lt!1007489 () Unit!47113)

(declare-fun Unit!47115 () Unit!47113)

(assert (=> b!2822631 (= lt!1007489 Unit!47115)))

(declare-fun size!25780 (BalanceConc!20188) Int)

(declare-fun charsOf!3069 (Token!9322) BalanceConc!20188)

(assert (=> b!2822631 (> (size!25780 (charsOf!3069 (h!38537 (t!230680 l!6581)))) 0)))

(declare-fun lt!1007488 () Unit!47113)

(declare-fun Unit!47116 () Unit!47113)

(assert (=> b!2822631 (= lt!1007488 Unit!47116)))

(assert (=> b!2822631 (rulesProduceIndividualToken!2089 thiss!27755 rules!4424 (h!38537 (t!230680 l!6581)))))

(declare-fun lt!1007486 () Unit!47113)

(declare-fun Unit!47117 () Unit!47113)

(assert (=> b!2822631 (= lt!1007486 Unit!47117)))

(assert (=> b!2822631 (rulesProduceIndividualToken!2089 thiss!27755 rules!4424 (h!38537 l!6581))))

(declare-fun lt!1007487 () Unit!47113)

(declare-fun lt!1007484 () Unit!47113)

(assert (=> b!2822631 (= lt!1007487 lt!1007484)))

(assert (=> b!2822631 (rulesProduceIndividualToken!2089 thiss!27755 rules!4424 (h!38537 (t!230680 l!6581)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!708 (LexerInterface!4551 List!33240 List!33241 Token!9322) Unit!47113)

(assert (=> b!2822631 (= lt!1007484 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!708 thiss!27755 rules!4424 l!6581 (h!38537 (t!230680 l!6581))))))

(declare-fun lt!1007490 () Unit!47113)

(declare-fun lt!1007485 () Unit!47113)

(assert (=> b!2822631 (= lt!1007490 lt!1007485)))

(assert (=> b!2822631 (rulesProduceIndividualToken!2089 thiss!27755 rules!4424 (h!38537 l!6581))))

(assert (=> b!2822631 (= lt!1007485 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!708 thiss!27755 rules!4424 l!6581 (h!38537 l!6581)))))

(declare-fun b!2822632 () Bool)

(assert (=> b!2822632 (= e!1785821 (tokensListTwoByTwoPredicateSeparableList!688 thiss!27755 (Cons!33117 (h!38537 (t!230680 l!6581)) (t!230680 (t!230680 l!6581))) rules!4424))))

(assert (= (and d!819666 (not res!1174695)) b!2822631))

(assert (= (and b!2822631 res!1174696) b!2822632))

(declare-fun m!3253603 () Bool)

(assert (=> b!2822631 m!3253603))

(declare-fun m!3253605 () Bool)

(assert (=> b!2822631 m!3253605))

(declare-fun m!3253607 () Bool)

(assert (=> b!2822631 m!3253607))

(declare-fun m!3253609 () Bool)

(assert (=> b!2822631 m!3253609))

(declare-fun m!3253611 () Bool)

(assert (=> b!2822631 m!3253611))

(assert (=> b!2822631 m!3253607))

(declare-fun m!3253613 () Bool)

(assert (=> b!2822631 m!3253613))

(declare-fun m!3253615 () Bool)

(assert (=> b!2822631 m!3253615))

(declare-fun m!3253617 () Bool)

(assert (=> b!2822632 m!3253617))

(assert (=> b!2822546 d!819666))

(declare-fun d!819668 () Bool)

(declare-fun lt!1007501 () Bool)

(declare-fun e!1785835 () Bool)

(assert (=> d!819668 (= lt!1007501 e!1785835)))

(declare-fun res!1174717 () Bool)

(assert (=> d!819668 (=> (not res!1174717) (not e!1785835))))

(declare-datatypes ((IArray!20559 0))(
  ( (IArray!20560 (innerList!10337 List!33241)) )
))
(declare-datatypes ((Conc!10277 0))(
  ( (Node!10277 (left!25016 Conc!10277) (right!25346 Conc!10277) (csize!20784 Int) (cheight!10488 Int)) (Leaf!15649 (xs!13389 IArray!20559) (csize!20785 Int)) (Empty!10277) )
))
(declare-datatypes ((BalanceConc!20192 0))(
  ( (BalanceConc!20193 (c!457201 Conc!10277)) )
))
(declare-fun list!12409 (BalanceConc!20192) List!33241)

(declare-datatypes ((tuple2!33390 0))(
  ( (tuple2!33391 (_1!19788 BalanceConc!20192) (_2!19788 BalanceConc!20188)) )
))
(declare-fun lex!1991 (LexerInterface!4551 List!33240 BalanceConc!20188) tuple2!33390)

(declare-fun print!1710 (LexerInterface!4551 BalanceConc!20192) BalanceConc!20188)

(declare-fun singletonSeq!2136 (Token!9322) BalanceConc!20192)

(assert (=> d!819668 (= res!1174717 (= (list!12409 (_1!19788 (lex!1991 thiss!27755 rules!4424 (print!1710 thiss!27755 (singletonSeq!2136 (h!38537 lt!1007466)))))) (list!12409 (singletonSeq!2136 (h!38537 lt!1007466)))))))

(declare-fun e!1785836 () Bool)

(assert (=> d!819668 (= lt!1007501 e!1785836)))

(declare-fun res!1174716 () Bool)

(assert (=> d!819668 (=> (not res!1174716) (not e!1785836))))

(declare-fun lt!1007502 () tuple2!33390)

(declare-fun size!25781 (BalanceConc!20192) Int)

(assert (=> d!819668 (= res!1174716 (= (size!25781 (_1!19788 lt!1007502)) 1))))

(assert (=> d!819668 (= lt!1007502 (lex!1991 thiss!27755 rules!4424 (print!1710 thiss!27755 (singletonSeq!2136 (h!38537 lt!1007466)))))))

(assert (=> d!819668 (not (isEmpty!18313 rules!4424))))

(assert (=> d!819668 (= (rulesProduceIndividualToken!2089 thiss!27755 rules!4424 (h!38537 lt!1007466)) lt!1007501)))

(declare-fun b!2822651 () Bool)

(declare-fun res!1174715 () Bool)

(assert (=> b!2822651 (=> (not res!1174715) (not e!1785836))))

(declare-fun apply!7735 (BalanceConc!20192 Int) Token!9322)

(assert (=> b!2822651 (= res!1174715 (= (apply!7735 (_1!19788 lt!1007502) 0) (h!38537 lt!1007466)))))

(declare-fun b!2822652 () Bool)

(declare-fun isEmpty!18315 (BalanceConc!20188) Bool)

(assert (=> b!2822652 (= e!1785836 (isEmpty!18315 (_2!19788 lt!1007502)))))

(declare-fun b!2822653 () Bool)

(assert (=> b!2822653 (= e!1785835 (isEmpty!18315 (_2!19788 (lex!1991 thiss!27755 rules!4424 (print!1710 thiss!27755 (singletonSeq!2136 (h!38537 lt!1007466)))))))))

(assert (= (and d!819668 res!1174716) b!2822651))

(assert (= (and b!2822651 res!1174715) b!2822652))

(assert (= (and d!819668 res!1174717) b!2822653))

(declare-fun m!3253641 () Bool)

(assert (=> d!819668 m!3253641))

(declare-fun m!3253643 () Bool)

(assert (=> d!819668 m!3253643))

(assert (=> d!819668 m!3253543))

(declare-fun m!3253645 () Bool)

(assert (=> d!819668 m!3253645))

(declare-fun m!3253647 () Bool)

(assert (=> d!819668 m!3253647))

(declare-fun m!3253649 () Bool)

(assert (=> d!819668 m!3253649))

(assert (=> d!819668 m!3253645))

(declare-fun m!3253651 () Bool)

(assert (=> d!819668 m!3253651))

(assert (=> d!819668 m!3253645))

(assert (=> d!819668 m!3253641))

(declare-fun m!3253653 () Bool)

(assert (=> b!2822651 m!3253653))

(declare-fun m!3253655 () Bool)

(assert (=> b!2822652 m!3253655))

(assert (=> b!2822653 m!3253645))

(assert (=> b!2822653 m!3253645))

(assert (=> b!2822653 m!3253641))

(assert (=> b!2822653 m!3253641))

(assert (=> b!2822653 m!3253643))

(declare-fun m!3253657 () Bool)

(assert (=> b!2822653 m!3253657))

(assert (=> b!2822555 d!819668))

(declare-fun d!819678 () Bool)

(declare-fun res!1174720 () Bool)

(declare-fun e!1785839 () Bool)

(assert (=> d!819678 (=> (not res!1174720) (not e!1785839))))

(declare-fun rulesValid!1823 (LexerInterface!4551 List!33240) Bool)

(assert (=> d!819678 (= res!1174720 (rulesValid!1823 thiss!27755 rules!4424))))

(assert (=> d!819678 (= (rulesInvariant!3969 thiss!27755 rules!4424) e!1785839)))

(declare-fun b!2822656 () Bool)

(declare-datatypes ((List!33246 0))(
  ( (Nil!33122) (Cons!33122 (h!38542 String!36408) (t!230699 List!33246)) )
))
(declare-fun noDuplicateTag!1819 (LexerInterface!4551 List!33240 List!33246) Bool)

(assert (=> b!2822656 (= e!1785839 (noDuplicateTag!1819 thiss!27755 rules!4424 Nil!33122))))

(assert (= (and d!819678 res!1174720) b!2822656))

(declare-fun m!3253659 () Bool)

(assert (=> d!819678 m!3253659))

(declare-fun m!3253661 () Bool)

(assert (=> b!2822656 m!3253661))

(assert (=> b!2822544 d!819678))

(declare-fun d!819680 () Bool)

(assert (=> d!819680 (= (inv!45042 (tag!5464 (rule!7388 (h!38537 l!6581)))) (= (mod (str.len (value!159680 (tag!5464 (rule!7388 (h!38537 l!6581))))) 2) 0))))

(assert (=> b!2822545 d!819680))

(declare-fun d!819682 () Bool)

(declare-fun res!1174721 () Bool)

(declare-fun e!1785840 () Bool)

(assert (=> d!819682 (=> (not res!1174721) (not e!1785840))))

(assert (=> d!819682 (= res!1174721 (semiInverseModEq!2053 (toChars!6841 (transformation!4960 (rule!7388 (h!38537 l!6581)))) (toValue!6982 (transformation!4960 (rule!7388 (h!38537 l!6581))))))))

(assert (=> d!819682 (= (inv!45045 (transformation!4960 (rule!7388 (h!38537 l!6581)))) e!1785840)))

(declare-fun b!2822657 () Bool)

(assert (=> b!2822657 (= e!1785840 (equivClasses!1952 (toChars!6841 (transformation!4960 (rule!7388 (h!38537 l!6581)))) (toValue!6982 (transformation!4960 (rule!7388 (h!38537 l!6581))))))))

(assert (= (and d!819682 res!1174721) b!2822657))

(declare-fun m!3253663 () Bool)

(assert (=> d!819682 m!3253663))

(declare-fun m!3253665 () Bool)

(assert (=> b!2822657 m!3253665))

(assert (=> b!2822545 d!819682))

(declare-fun b!2822668 () Bool)

(declare-fun e!1785848 () Bool)

(declare-fun inv!15 (TokenValue!5190) Bool)

(assert (=> b!2822668 (= e!1785848 (inv!15 (value!159681 (h!38537 l!6581))))))

(declare-fun b!2822669 () Bool)

(declare-fun e!1785847 () Bool)

(declare-fun e!1785849 () Bool)

(assert (=> b!2822669 (= e!1785847 e!1785849)))

(declare-fun c!457184 () Bool)

(assert (=> b!2822669 (= c!457184 (is-IntegerValue!15571 (value!159681 (h!38537 l!6581))))))

(declare-fun b!2822670 () Bool)

(declare-fun res!1174724 () Bool)

(assert (=> b!2822670 (=> res!1174724 e!1785848)))

(assert (=> b!2822670 (= res!1174724 (not (is-IntegerValue!15572 (value!159681 (h!38537 l!6581)))))))

(assert (=> b!2822670 (= e!1785849 e!1785848)))

(declare-fun d!819684 () Bool)

(declare-fun c!457185 () Bool)

(assert (=> d!819684 (= c!457185 (is-IntegerValue!15570 (value!159681 (h!38537 l!6581))))))

(assert (=> d!819684 (= (inv!21 (value!159681 (h!38537 l!6581))) e!1785847)))

(declare-fun b!2822671 () Bool)

(declare-fun inv!17 (TokenValue!5190) Bool)

(assert (=> b!2822671 (= e!1785849 (inv!17 (value!159681 (h!38537 l!6581))))))

(declare-fun b!2822672 () Bool)

(declare-fun inv!16 (TokenValue!5190) Bool)

(assert (=> b!2822672 (= e!1785847 (inv!16 (value!159681 (h!38537 l!6581))))))

(assert (= (and d!819684 c!457185) b!2822672))

(assert (= (and d!819684 (not c!457185)) b!2822669))

(assert (= (and b!2822669 c!457184) b!2822671))

(assert (= (and b!2822669 (not c!457184)) b!2822670))

(assert (= (and b!2822670 (not res!1174724)) b!2822668))

(declare-fun m!3253667 () Bool)

(assert (=> b!2822668 m!3253667))

(declare-fun m!3253669 () Bool)

(assert (=> b!2822671 m!3253669))

(declare-fun m!3253671 () Bool)

(assert (=> b!2822672 m!3253671))

(assert (=> b!2822543 d!819684))

(declare-fun bs!517786 () Bool)

(declare-fun d!819686 () Bool)

(assert (= bs!517786 (and d!819686 b!2822552)))

(declare-fun lambda!103674 () Int)

(assert (=> bs!517786 (= (= thiss!27755 Lexer!4549) (= lambda!103674 lambda!103668))))

(declare-fun b!2822681 () Bool)

(declare-fun e!1785858 () Bool)

(assert (=> b!2822681 (= e!1785858 true)))

(declare-fun b!2822680 () Bool)

(declare-fun e!1785857 () Bool)

(assert (=> b!2822680 (= e!1785857 e!1785858)))

(declare-fun b!2822679 () Bool)

(declare-fun e!1785856 () Bool)

(assert (=> b!2822679 (= e!1785856 e!1785857)))

(assert (=> d!819686 e!1785856))

(assert (= b!2822680 b!2822681))

(assert (= b!2822679 b!2822680))

(assert (= (and d!819686 (is-Cons!33116 rules!4424)) b!2822679))

(assert (=> b!2822681 (< (dynLambda!13865 order!17613 (toValue!6982 (transformation!4960 (h!38536 rules!4424)))) (dynLambda!13866 order!17615 lambda!103674))))

(assert (=> b!2822681 (< (dynLambda!13867 order!17617 (toChars!6841 (transformation!4960 (h!38536 rules!4424)))) (dynLambda!13866 order!17615 lambda!103674))))

(assert (=> d!819686 true))

(declare-fun lt!1007505 () Bool)

(assert (=> d!819686 (= lt!1007505 (forall!6790 (t!230680 lt!1007466) lambda!103674))))

(declare-fun e!1785854 () Bool)

(assert (=> d!819686 (= lt!1007505 e!1785854)))

(declare-fun res!1174730 () Bool)

(assert (=> d!819686 (=> res!1174730 e!1785854)))

(assert (=> d!819686 (= res!1174730 (not (is-Cons!33117 (t!230680 lt!1007466))))))

(assert (=> d!819686 (not (isEmpty!18313 rules!4424))))

(assert (=> d!819686 (= (rulesProduceEachTokenIndividuallyList!1603 thiss!27755 rules!4424 (t!230680 lt!1007466)) lt!1007505)))

(declare-fun b!2822677 () Bool)

(declare-fun e!1785855 () Bool)

(assert (=> b!2822677 (= e!1785854 e!1785855)))

(declare-fun res!1174729 () Bool)

(assert (=> b!2822677 (=> (not res!1174729) (not e!1785855))))

(assert (=> b!2822677 (= res!1174729 (rulesProduceIndividualToken!2089 thiss!27755 rules!4424 (h!38537 (t!230680 lt!1007466))))))

(declare-fun b!2822678 () Bool)

(assert (=> b!2822678 (= e!1785855 (rulesProduceEachTokenIndividuallyList!1603 thiss!27755 rules!4424 (t!230680 (t!230680 lt!1007466))))))

(assert (= (and d!819686 (not res!1174730)) b!2822677))

(assert (= (and b!2822677 res!1174729) b!2822678))

(declare-fun m!3253673 () Bool)

(assert (=> d!819686 m!3253673))

(assert (=> d!819686 m!3253543))

(declare-fun m!3253675 () Bool)

(assert (=> b!2822677 m!3253675))

(declare-fun m!3253677 () Bool)

(assert (=> b!2822678 m!3253677))

(assert (=> b!2822548 d!819686))

(declare-fun d!819688 () Bool)

(declare-fun res!1174735 () Bool)

(declare-fun e!1785861 () Bool)

(assert (=> d!819688 (=> (not res!1174735) (not e!1785861))))

(declare-fun isEmpty!18316 (List!33239) Bool)

(assert (=> d!819688 (= res!1174735 (not (isEmpty!18316 (originalCharacters!5692 (h!38537 l!6581)))))))

(assert (=> d!819688 (= (inv!45046 (h!38537 l!6581)) e!1785861)))

(declare-fun b!2822688 () Bool)

(declare-fun res!1174736 () Bool)

(assert (=> b!2822688 (=> (not res!1174736) (not e!1785861))))

(declare-fun list!12410 (BalanceConc!20188) List!33239)

(declare-fun dynLambda!13871 (Int TokenValue!5190) BalanceConc!20188)

(assert (=> b!2822688 (= res!1174736 (= (originalCharacters!5692 (h!38537 l!6581)) (list!12410 (dynLambda!13871 (toChars!6841 (transformation!4960 (rule!7388 (h!38537 l!6581)))) (value!159681 (h!38537 l!6581))))))))

(declare-fun b!2822689 () Bool)

(declare-fun size!25782 (List!33239) Int)

(assert (=> b!2822689 (= e!1785861 (= (size!25778 (h!38537 l!6581)) (size!25782 (originalCharacters!5692 (h!38537 l!6581)))))))

(assert (= (and d!819688 res!1174735) b!2822688))

(assert (= (and b!2822688 res!1174736) b!2822689))

(declare-fun b_lambda!84587 () Bool)

(assert (=> (not b_lambda!84587) (not b!2822688)))

(declare-fun t!230692 () Bool)

(declare-fun tb!153909 () Bool)

(assert (=> (and b!2822553 (= (toChars!6841 (transformation!4960 (h!38536 rules!4424))) (toChars!6841 (transformation!4960 (rule!7388 (h!38537 l!6581))))) t!230692) tb!153909))

(declare-fun b!2822694 () Bool)

(declare-fun e!1785864 () Bool)

(declare-fun tp!901423 () Bool)

(declare-fun inv!45049 (Conc!10275) Bool)

(assert (=> b!2822694 (= e!1785864 (and (inv!45049 (c!457176 (dynLambda!13871 (toChars!6841 (transformation!4960 (rule!7388 (h!38537 l!6581)))) (value!159681 (h!38537 l!6581))))) tp!901423))))

(declare-fun result!191626 () Bool)

(declare-fun inv!45050 (BalanceConc!20188) Bool)

(assert (=> tb!153909 (= result!191626 (and (inv!45050 (dynLambda!13871 (toChars!6841 (transformation!4960 (rule!7388 (h!38537 l!6581)))) (value!159681 (h!38537 l!6581)))) e!1785864))))

(assert (= tb!153909 b!2822694))

(declare-fun m!3253679 () Bool)

(assert (=> b!2822694 m!3253679))

(declare-fun m!3253681 () Bool)

(assert (=> tb!153909 m!3253681))

(assert (=> b!2822688 t!230692))

(declare-fun b_and!206247 () Bool)

(assert (= b_and!206233 (and (=> t!230692 result!191626) b_and!206247)))

(declare-fun t!230694 () Bool)

(declare-fun tb!153911 () Bool)

(assert (=> (and b!2822542 (= (toChars!6841 (transformation!4960 (rule!7388 (h!38537 l!6581)))) (toChars!6841 (transformation!4960 (rule!7388 (h!38537 l!6581))))) t!230694) tb!153911))

(declare-fun result!191630 () Bool)

(assert (= result!191630 result!191626))

(assert (=> b!2822688 t!230694))

(declare-fun b_and!206249 () Bool)

(assert (= b_and!206237 (and (=> t!230694 result!191630) b_and!206249)))

(declare-fun m!3253683 () Bool)

(assert (=> d!819688 m!3253683))

(declare-fun m!3253685 () Bool)

(assert (=> b!2822688 m!3253685))

(assert (=> b!2822688 m!3253685))

(declare-fun m!3253687 () Bool)

(assert (=> b!2822688 m!3253687))

(declare-fun m!3253689 () Bool)

(assert (=> b!2822689 m!3253689))

(assert (=> b!2822549 d!819688))

(declare-fun bs!517787 () Bool)

(declare-fun d!819690 () Bool)

(assert (= bs!517787 (and d!819690 b!2822552)))

(declare-fun lambda!103675 () Int)

(assert (=> bs!517787 (= (= thiss!27755 Lexer!4549) (= lambda!103675 lambda!103668))))

(declare-fun bs!517788 () Bool)

(assert (= bs!517788 (and d!819690 d!819686)))

(assert (=> bs!517788 (= lambda!103675 lambda!103674)))

(declare-fun b!2822699 () Bool)

(declare-fun e!1785869 () Bool)

(assert (=> b!2822699 (= e!1785869 true)))

(declare-fun b!2822698 () Bool)

(declare-fun e!1785868 () Bool)

(assert (=> b!2822698 (= e!1785868 e!1785869)))

(declare-fun b!2822697 () Bool)

(declare-fun e!1785867 () Bool)

(assert (=> b!2822697 (= e!1785867 e!1785868)))

(assert (=> d!819690 e!1785867))

(assert (= b!2822698 b!2822699))

(assert (= b!2822697 b!2822698))

(assert (= (and d!819690 (is-Cons!33116 rules!4424)) b!2822697))

(assert (=> b!2822699 (< (dynLambda!13865 order!17613 (toValue!6982 (transformation!4960 (h!38536 rules!4424)))) (dynLambda!13866 order!17615 lambda!103675))))

(assert (=> b!2822699 (< (dynLambda!13867 order!17617 (toChars!6841 (transformation!4960 (h!38536 rules!4424)))) (dynLambda!13866 order!17615 lambda!103675))))

(assert (=> d!819690 true))

(declare-fun lt!1007506 () Bool)

(assert (=> d!819690 (= lt!1007506 (forall!6790 l!6581 lambda!103675))))

(declare-fun e!1785865 () Bool)

(assert (=> d!819690 (= lt!1007506 e!1785865)))

(declare-fun res!1174738 () Bool)

(assert (=> d!819690 (=> res!1174738 e!1785865)))

(assert (=> d!819690 (= res!1174738 (not (is-Cons!33117 l!6581)))))

(assert (=> d!819690 (not (isEmpty!18313 rules!4424))))

(assert (=> d!819690 (= (rulesProduceEachTokenIndividuallyList!1603 thiss!27755 rules!4424 l!6581) lt!1007506)))

(declare-fun b!2822695 () Bool)

(declare-fun e!1785866 () Bool)

(assert (=> b!2822695 (= e!1785865 e!1785866)))

(declare-fun res!1174737 () Bool)

(assert (=> b!2822695 (=> (not res!1174737) (not e!1785866))))

(assert (=> b!2822695 (= res!1174737 (rulesProduceIndividualToken!2089 thiss!27755 rules!4424 (h!38537 l!6581)))))

(declare-fun b!2822696 () Bool)

(assert (=> b!2822696 (= e!1785866 (rulesProduceEachTokenIndividuallyList!1603 thiss!27755 rules!4424 (t!230680 l!6581)))))

(assert (= (and d!819690 (not res!1174738)) b!2822695))

(assert (= (and b!2822695 res!1174737) b!2822696))

(declare-fun m!3253691 () Bool)

(assert (=> d!819690 m!3253691))

(assert (=> d!819690 m!3253543))

(assert (=> b!2822695 m!3253603))

(declare-fun m!3253693 () Bool)

(assert (=> b!2822696 m!3253693))

(assert (=> b!2822554 d!819690))

(declare-fun d!819692 () Bool)

(assert (=> d!819692 (= (isEmpty!18313 rules!4424) (is-Nil!33116 rules!4424))))

(assert (=> b!2822547 d!819692))

(declare-fun d!819694 () Bool)

(declare-fun res!1174747 () Bool)

(declare-fun e!1785878 () Bool)

(assert (=> d!819694 (=> res!1174747 e!1785878)))

(assert (=> d!819694 (= res!1174747 (is-Nil!33117 l!6581))))

(assert (=> d!819694 (= (forall!6790 l!6581 lambda!103668) e!1785878)))

(declare-fun b!2822708 () Bool)

(declare-fun e!1785879 () Bool)

(assert (=> b!2822708 (= e!1785878 e!1785879)))

(declare-fun res!1174748 () Bool)

(assert (=> b!2822708 (=> (not res!1174748) (not e!1785879))))

(declare-fun dynLambda!13872 (Int Token!9322) Bool)

(assert (=> b!2822708 (= res!1174748 (dynLambda!13872 lambda!103668 (h!38537 l!6581)))))

(declare-fun b!2822709 () Bool)

(assert (=> b!2822709 (= e!1785879 (forall!6790 (t!230680 l!6581) lambda!103668))))

(assert (= (and d!819694 (not res!1174747)) b!2822708))

(assert (= (and b!2822708 res!1174748) b!2822709))

(declare-fun b_lambda!84589 () Bool)

(assert (=> (not b_lambda!84589) (not b!2822708)))

(declare-fun m!3253695 () Bool)

(assert (=> b!2822708 m!3253695))

(declare-fun m!3253697 () Bool)

(assert (=> b!2822709 m!3253697))

(assert (=> b!2822552 d!819694))

(declare-fun bs!517789 () Bool)

(declare-fun d!819696 () Bool)

(assert (= bs!517789 (and d!819696 b!2822552)))

(declare-fun lambda!103676 () Int)

(assert (=> bs!517789 (= (= thiss!27755 Lexer!4549) (= lambda!103676 lambda!103668))))

(declare-fun bs!517790 () Bool)

(assert (= bs!517790 (and d!819696 d!819686)))

(assert (=> bs!517790 (= lambda!103676 lambda!103674)))

(declare-fun bs!517791 () Bool)

(assert (= bs!517791 (and d!819696 d!819690)))

(assert (=> bs!517791 (= lambda!103676 lambda!103675)))

(declare-fun b!2822716 () Bool)

(declare-fun e!1785886 () Bool)

(assert (=> b!2822716 (= e!1785886 true)))

(declare-fun b!2822715 () Bool)

(declare-fun e!1785885 () Bool)

(assert (=> b!2822715 (= e!1785885 e!1785886)))

(declare-fun b!2822714 () Bool)

(declare-fun e!1785884 () Bool)

(assert (=> b!2822714 (= e!1785884 e!1785885)))

(assert (=> d!819696 e!1785884))

(assert (= b!2822715 b!2822716))

(assert (= b!2822714 b!2822715))

(assert (= (and d!819696 (is-Cons!33116 rules!4424)) b!2822714))

(assert (=> b!2822716 (< (dynLambda!13865 order!17613 (toValue!6982 (transformation!4960 (h!38536 rules!4424)))) (dynLambda!13866 order!17615 lambda!103676))))

(assert (=> b!2822716 (< (dynLambda!13867 order!17617 (toChars!6841 (transformation!4960 (h!38536 rules!4424)))) (dynLambda!13866 order!17615 lambda!103676))))

(assert (=> d!819696 true))

(declare-fun lt!1007528 () Bool)

(assert (=> d!819696 (= lt!1007528 (forall!6790 lt!1007466 lambda!103676))))

(declare-fun e!1785882 () Bool)

(assert (=> d!819696 (= lt!1007528 e!1785882)))

(declare-fun res!1174752 () Bool)

(assert (=> d!819696 (=> res!1174752 e!1785882)))

(assert (=> d!819696 (= res!1174752 (not (is-Cons!33117 lt!1007466)))))

(assert (=> d!819696 (not (isEmpty!18313 rules!4424))))

(assert (=> d!819696 (= (rulesProduceEachTokenIndividuallyList!1603 thiss!27755 rules!4424 lt!1007466) lt!1007528)))

(declare-fun b!2822712 () Bool)

(declare-fun e!1785883 () Bool)

(assert (=> b!2822712 (= e!1785882 e!1785883)))

(declare-fun res!1174751 () Bool)

(assert (=> b!2822712 (=> (not res!1174751) (not e!1785883))))

(assert (=> b!2822712 (= res!1174751 (rulesProduceIndividualToken!2089 thiss!27755 rules!4424 (h!38537 lt!1007466)))))

(declare-fun b!2822713 () Bool)

(assert (=> b!2822713 (= e!1785883 (rulesProduceEachTokenIndividuallyList!1603 thiss!27755 rules!4424 (t!230680 lt!1007466)))))

(assert (= (and d!819696 (not res!1174752)) b!2822712))

(assert (= (and b!2822712 res!1174751) b!2822713))

(declare-fun m!3253715 () Bool)

(assert (=> d!819696 m!3253715))

(assert (=> d!819696 m!3253543))

(assert (=> b!2822712 m!3253549))

(assert (=> b!2822713 m!3253567))

(assert (=> b!2822552 d!819696))

(declare-fun d!819700 () Bool)

(declare-fun e!1785906 () Bool)

(assert (=> d!819700 e!1785906))

(declare-fun res!1174758 () Bool)

(assert (=> d!819700 (=> (not res!1174758) (not e!1785906))))

(declare-fun lt!1007531 () List!33241)

(declare-fun content!4613 (List!33241) (Set Token!9322))

(assert (=> d!819700 (= res!1174758 (set.subset (content!4613 lt!1007531) (content!4613 l!6581)))))

(declare-fun e!1785907 () List!33241)

(assert (=> d!819700 (= lt!1007531 e!1785907)))

(declare-fun c!457199 () Bool)

(assert (=> d!819700 (= c!457199 (or (is-Nil!33117 l!6581) (<= i!1730 0)))))

(assert (=> d!819700 (= (take!554 l!6581 i!1730) lt!1007531)))

(declare-fun b!2822746 () Bool)

(assert (=> b!2822746 (= e!1785907 (Cons!33117 (h!38537 l!6581) (take!554 (t!230680 l!6581) (- i!1730 1))))))

(declare-fun b!2822747 () Bool)

(declare-fun e!1785905 () Int)

(declare-fun size!25783 (List!33241) Int)

(assert (=> b!2822747 (= e!1785905 (size!25783 l!6581))))

(declare-fun b!2822748 () Bool)

(assert (=> b!2822748 (= e!1785905 i!1730)))

(declare-fun b!2822749 () Bool)

(declare-fun e!1785904 () Int)

(assert (=> b!2822749 (= e!1785904 0)))

(declare-fun b!2822750 () Bool)

(assert (=> b!2822750 (= e!1785907 Nil!33117)))

(declare-fun b!2822751 () Bool)

(assert (=> b!2822751 (= e!1785906 (= (size!25783 lt!1007531) e!1785904))))

(declare-fun c!457198 () Bool)

(assert (=> b!2822751 (= c!457198 (<= i!1730 0))))

(declare-fun b!2822752 () Bool)

(assert (=> b!2822752 (= e!1785904 e!1785905)))

(declare-fun c!457200 () Bool)

(assert (=> b!2822752 (= c!457200 (>= i!1730 (size!25783 l!6581)))))

(assert (= (and d!819700 c!457199) b!2822750))

(assert (= (and d!819700 (not c!457199)) b!2822746))

(assert (= (and d!819700 res!1174758) b!2822751))

(assert (= (and b!2822751 c!457198) b!2822749))

(assert (= (and b!2822751 (not c!457198)) b!2822752))

(assert (= (and b!2822752 c!457200) b!2822747))

(assert (= (and b!2822752 (not c!457200)) b!2822748))

(declare-fun m!3253723 () Bool)

(assert (=> b!2822746 m!3253723))

(declare-fun m!3253725 () Bool)

(assert (=> b!2822751 m!3253725))

(declare-fun m!3253727 () Bool)

(assert (=> b!2822752 m!3253727))

(assert (=> b!2822747 m!3253727))

(declare-fun m!3253729 () Bool)

(assert (=> d!819700 m!3253729))

(declare-fun m!3253731 () Bool)

(assert (=> d!819700 m!3253731))

(assert (=> b!2822552 d!819700))

(declare-fun b!2822763 () Bool)

(declare-fun b_free!80781 () Bool)

(declare-fun b_next!81485 () Bool)

(assert (=> b!2822763 (= b_free!80781 (not b_next!81485))))

(declare-fun tp!901434 () Bool)

(declare-fun b_and!206251 () Bool)

(assert (=> b!2822763 (= tp!901434 b_and!206251)))

(declare-fun b_free!80783 () Bool)

(declare-fun b_next!81487 () Bool)

(assert (=> b!2822763 (= b_free!80783 (not b_next!81487))))

(declare-fun t!230696 () Bool)

(declare-fun tb!153913 () Bool)

(assert (=> (and b!2822763 (= (toChars!6841 (transformation!4960 (h!38536 (t!230679 rules!4424)))) (toChars!6841 (transformation!4960 (rule!7388 (h!38537 l!6581))))) t!230696) tb!153913))

(declare-fun result!191634 () Bool)

(assert (= result!191634 result!191626))

(assert (=> b!2822688 t!230696))

(declare-fun tp!901432 () Bool)

(declare-fun b_and!206253 () Bool)

(assert (=> b!2822763 (= tp!901432 (and (=> t!230696 result!191634) b_and!206253))))

(declare-fun e!1785919 () Bool)

(assert (=> b!2822763 (= e!1785919 (and tp!901434 tp!901432))))

(declare-fun tp!901433 () Bool)

(declare-fun e!1785917 () Bool)

(declare-fun b!2822762 () Bool)

(assert (=> b!2822762 (= e!1785917 (and tp!901433 (inv!45042 (tag!5464 (h!38536 (t!230679 rules!4424)))) (inv!45045 (transformation!4960 (h!38536 (t!230679 rules!4424)))) e!1785919))))

(declare-fun b!2822761 () Bool)

(declare-fun e!1785918 () Bool)

(declare-fun tp!901435 () Bool)

(assert (=> b!2822761 (= e!1785918 (and e!1785917 tp!901435))))

(assert (=> b!2822551 (= tp!901391 e!1785918)))

(assert (= b!2822762 b!2822763))

(assert (= b!2822761 b!2822762))

(assert (= (and b!2822551 (is-Cons!33116 (t!230679 rules!4424))) b!2822761))

(declare-fun m!3253733 () Bool)

(assert (=> b!2822762 m!3253733))

(declare-fun m!3253735 () Bool)

(assert (=> b!2822762 m!3253735))

(declare-fun b!2822774 () Bool)

(declare-fun e!1785922 () Bool)

(declare-fun tp_is_empty!14453 () Bool)

(assert (=> b!2822774 (= e!1785922 tp_is_empty!14453)))

(assert (=> b!2822556 (= tp!901393 e!1785922)))

(declare-fun b!2822775 () Bool)

(declare-fun tp!901448 () Bool)

(declare-fun tp!901446 () Bool)

(assert (=> b!2822775 (= e!1785922 (and tp!901448 tp!901446))))

(declare-fun b!2822776 () Bool)

(declare-fun tp!901450 () Bool)

(assert (=> b!2822776 (= e!1785922 tp!901450)))

(declare-fun b!2822777 () Bool)

(declare-fun tp!901449 () Bool)

(declare-fun tp!901447 () Bool)

(assert (=> b!2822777 (= e!1785922 (and tp!901449 tp!901447))))

(assert (= (and b!2822556 (is-ElementMatch!8350 (regex!4960 (h!38536 rules!4424)))) b!2822774))

(assert (= (and b!2822556 (is-Concat!13541 (regex!4960 (h!38536 rules!4424)))) b!2822775))

(assert (= (and b!2822556 (is-Star!8350 (regex!4960 (h!38536 rules!4424)))) b!2822776))

(assert (= (and b!2822556 (is-Union!8350 (regex!4960 (h!38536 rules!4424)))) b!2822777))

(declare-fun b!2822780 () Bool)

(declare-fun e!1785925 () Bool)

(assert (=> b!2822780 (= e!1785925 true)))

(declare-fun b!2822779 () Bool)

(declare-fun e!1785924 () Bool)

(assert (=> b!2822779 (= e!1785924 e!1785925)))

(declare-fun b!2822778 () Bool)

(declare-fun e!1785923 () Bool)

(assert (=> b!2822778 (= e!1785923 e!1785924)))

(assert (=> b!2822565 e!1785923))

(assert (= b!2822779 b!2822780))

(assert (= b!2822778 b!2822779))

(assert (= (and b!2822565 (is-Cons!33116 (t!230679 rules!4424))) b!2822778))

(assert (=> b!2822780 (< (dynLambda!13865 order!17613 (toValue!6982 (transformation!4960 (h!38536 (t!230679 rules!4424))))) (dynLambda!13866 order!17615 lambda!103668))))

(assert (=> b!2822780 (< (dynLambda!13867 order!17617 (toChars!6841 (transformation!4960 (h!38536 (t!230679 rules!4424))))) (dynLambda!13866 order!17615 lambda!103668))))

(declare-fun b!2822781 () Bool)

(declare-fun e!1785926 () Bool)

(assert (=> b!2822781 (= e!1785926 tp_is_empty!14453)))

(assert (=> b!2822545 (= tp!901386 e!1785926)))

(declare-fun b!2822782 () Bool)

(declare-fun tp!901453 () Bool)

(declare-fun tp!901451 () Bool)

(assert (=> b!2822782 (= e!1785926 (and tp!901453 tp!901451))))

(declare-fun b!2822783 () Bool)

(declare-fun tp!901455 () Bool)

(assert (=> b!2822783 (= e!1785926 tp!901455)))

(declare-fun b!2822784 () Bool)

(declare-fun tp!901454 () Bool)

(declare-fun tp!901452 () Bool)

(assert (=> b!2822784 (= e!1785926 (and tp!901454 tp!901452))))

(assert (= (and b!2822545 (is-ElementMatch!8350 (regex!4960 (rule!7388 (h!38537 l!6581))))) b!2822781))

(assert (= (and b!2822545 (is-Concat!13541 (regex!4960 (rule!7388 (h!38537 l!6581))))) b!2822782))

(assert (= (and b!2822545 (is-Star!8350 (regex!4960 (rule!7388 (h!38537 l!6581))))) b!2822783))

(assert (= (and b!2822545 (is-Union!8350 (regex!4960 (rule!7388 (h!38537 l!6581))))) b!2822784))

(declare-fun b!2822789 () Bool)

(declare-fun e!1785929 () Bool)

(declare-fun tp!901458 () Bool)

(assert (=> b!2822789 (= e!1785929 (and tp_is_empty!14453 tp!901458))))

(assert (=> b!2822543 (= tp!901385 e!1785929)))

(assert (= (and b!2822543 (is-Cons!33115 (originalCharacters!5692 (h!38537 l!6581)))) b!2822789))

(declare-fun b!2822803 () Bool)

(declare-fun b_free!80785 () Bool)

(declare-fun b_next!81489 () Bool)

(assert (=> b!2822803 (= b_free!80785 (not b_next!81489))))

(declare-fun tp!901473 () Bool)

(declare-fun b_and!206255 () Bool)

(assert (=> b!2822803 (= tp!901473 b_and!206255)))

(declare-fun b_free!80787 () Bool)

(declare-fun b_next!81491 () Bool)

(assert (=> b!2822803 (= b_free!80787 (not b_next!81491))))

(declare-fun t!230698 () Bool)

(declare-fun tb!153915 () Bool)

(assert (=> (and b!2822803 (= (toChars!6841 (transformation!4960 (rule!7388 (h!38537 (t!230680 l!6581))))) (toChars!6841 (transformation!4960 (rule!7388 (h!38537 l!6581))))) t!230698) tb!153915))

(declare-fun result!191642 () Bool)

(assert (= result!191642 result!191626))

(assert (=> b!2822688 t!230698))

(declare-fun tp!901470 () Bool)

(declare-fun b_and!206257 () Bool)

(assert (=> b!2822803 (= tp!901470 (and (=> t!230698 result!191642) b_and!206257))))

(declare-fun tp!901469 () Bool)

(declare-fun b!2822802 () Bool)

(declare-fun e!1785942 () Bool)

(declare-fun e!1785947 () Bool)

(assert (=> b!2822802 (= e!1785947 (and tp!901469 (inv!45042 (tag!5464 (rule!7388 (h!38537 (t!230680 l!6581))))) (inv!45045 (transformation!4960 (rule!7388 (h!38537 (t!230680 l!6581))))) e!1785942))))

(declare-fun b!2822801 () Bool)

(declare-fun e!1785946 () Bool)

(declare-fun tp!901472 () Bool)

(assert (=> b!2822801 (= e!1785946 (and (inv!21 (value!159681 (h!38537 (t!230680 l!6581)))) e!1785947 tp!901472))))

(declare-fun e!1785943 () Bool)

(declare-fun b!2822800 () Bool)

(declare-fun tp!901471 () Bool)

(assert (=> b!2822800 (= e!1785943 (and (inv!45046 (h!38537 (t!230680 l!6581))) e!1785946 tp!901471))))

(assert (=> b!2822803 (= e!1785942 (and tp!901473 tp!901470))))

(assert (=> b!2822549 (= tp!901390 e!1785943)))

(assert (= b!2822802 b!2822803))

(assert (= b!2822801 b!2822802))

(assert (= b!2822800 b!2822801))

(assert (= (and b!2822549 (is-Cons!33117 (t!230680 l!6581))) b!2822800))

(declare-fun m!3253737 () Bool)

(assert (=> b!2822802 m!3253737))

(declare-fun m!3253739 () Bool)

(assert (=> b!2822802 m!3253739))

(declare-fun m!3253741 () Bool)

(assert (=> b!2822801 m!3253741))

(declare-fun m!3253743 () Bool)

(assert (=> b!2822800 m!3253743))

(declare-fun b_lambda!84591 () Bool)

(assert (= b_lambda!84587 (or (and b!2822553 b_free!80767 (= (toChars!6841 (transformation!4960 (h!38536 rules!4424))) (toChars!6841 (transformation!4960 (rule!7388 (h!38537 l!6581)))))) (and b!2822542 b_free!80771) (and b!2822763 b_free!80783 (= (toChars!6841 (transformation!4960 (h!38536 (t!230679 rules!4424)))) (toChars!6841 (transformation!4960 (rule!7388 (h!38537 l!6581)))))) (and b!2822803 b_free!80787 (= (toChars!6841 (transformation!4960 (rule!7388 (h!38537 (t!230680 l!6581))))) (toChars!6841 (transformation!4960 (rule!7388 (h!38537 l!6581)))))) b_lambda!84591)))

(declare-fun b_lambda!84593 () Bool)

(assert (= b_lambda!84589 (or b!2822552 b_lambda!84593)))

(declare-fun bs!517792 () Bool)

(declare-fun d!819704 () Bool)

(assert (= bs!517792 (and d!819704 b!2822552)))

(assert (=> bs!517792 (= (dynLambda!13872 lambda!103668 (h!38537 l!6581)) (rulesProduceIndividualToken!2089 Lexer!4549 rules!4424 (h!38537 l!6581)))))

(declare-fun m!3253745 () Bool)

(assert (=> bs!517792 m!3253745))

(assert (=> b!2822708 d!819704))

(push 1)

(assert (not b!2822688))

(assert (not b_next!81491))

(assert (not b!2822677))

(assert (not b_next!81487))

(assert (not b!2822668))

(assert (not b!2822800))

(assert (not b!2822782))

(assert (not b!2822672))

(assert (not b!2822783))

(assert (not d!819686))

(assert (not b!2822801))

(assert b_and!206253)

(assert (not b!2822651))

(assert (not d!819682))

(assert (not b!2822695))

(assert (not d!819664))

(assert b_and!206235)

(assert (not b_next!81489))

(assert (not b!2822657))

(assert (not b!2822653))

(assert (not b!2822713))

(assert (not b!2822656))

(assert (not b_next!81473))

(assert (not b!2822762))

(assert (not b!2822776))

(assert (not b!2822784))

(assert (not b!2822694))

(assert (not b!2822652))

(assert (not b!2822777))

(assert b_and!206257)

(assert b_and!206247)

(assert (not b!2822747))

(assert (not b!2822671))

(assert (not tb!153909))

(assert tp_is_empty!14453)

(assert b_and!206249)

(assert (not d!819678))

(assert (not b!2822752))

(assert (not b!2822751))

(assert (not b!2822679))

(assert b_and!206251)

(assert (not b_next!81469))

(assert (not d!819700))

(assert (not b!2822626))

(assert (not b_next!81485))

(assert (not b!2822778))

(assert (not b!2822789))

(assert (not b!2822761))

(assert (not b_lambda!84591))

(assert (not b!2822709))

(assert (not b!2822775))

(assert (not b!2822697))

(assert b_and!206255)

(assert (not b_next!81475))

(assert (not d!819696))

(assert (not d!819668))

(assert (not b_next!81471))

(assert (not d!819688))

(assert (not b!2822746))

(assert (not b!2822696))

(assert (not d!819690))

(assert (not b!2822712))

(assert (not b!2822802))

(assert (not bs!517792))

(assert (not b!2822714))

(assert (not b!2822678))

(assert b_and!206231)

(assert (not b!2822632))

(assert (not b_lambda!84593))

(assert (not b!2822689))

(assert (not b!2822631))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81491))

(assert (not b_next!81473))

(assert (not b_next!81487))

(assert b_and!206257)

(assert b_and!206247)

(assert b_and!206249)

(assert b_and!206251)

(assert (not b_next!81469))

(assert (not b_next!81485))

(assert b_and!206255)

(assert b_and!206231)

(assert b_and!206253)

(assert b_and!206235)

(assert (not b_next!81489))

(assert (not b_next!81471))

(assert (not b_next!81475))

(check-sat)

(pop 1)

