; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101746 () Bool)

(assert start!101746)

(declare-fun b!1161670 () Bool)

(declare-fun e!743827 () Bool)

(assert (=> b!1161670 (= e!743827 true)))

(declare-fun b!1161669 () Bool)

(declare-fun e!743826 () Bool)

(assert (=> b!1161669 (= e!743826 e!743827)))

(declare-fun b!1161656 () Bool)

(assert (=> b!1161656 e!743826))

(assert (= b!1161669 b!1161670))

(assert (= b!1161656 b!1161669))

(declare-fun b!1161642 () Bool)

(declare-fun e!743814 () Bool)

(declare-fun e!743815 () Bool)

(assert (=> b!1161642 (= e!743814 e!743815)))

(declare-fun res!523745 () Bool)

(assert (=> b!1161642 (=> (not res!523745) (not e!743815))))

(declare-fun to!267 () Int)

(declare-fun lt!395602 () Int)

(assert (=> b!1161642 (= res!523745 (<= to!267 lt!395602))))

(declare-datatypes ((List!11451 0))(
  ( (Nil!11427) (Cons!11427 (h!16828 (_ BitVec 16)) (t!109843 List!11451)) )
))
(declare-datatypes ((TokenValue!2053 0))(
  ( (FloatLiteralValue!4106 (text!14816 List!11451)) (TokenValueExt!2052 (__x!7817 Int)) (Broken!10265 (value!64600 List!11451)) (Object!2076) (End!2053) (Def!2053) (Underscore!2053) (Match!2053) (Else!2053) (Error!2053) (Case!2053) (If!2053) (Extends!2053) (Abstract!2053) (Class!2053) (Val!2053) (DelimiterValue!4106 (del!2113 List!11451)) (KeywordValue!2059 (value!64601 List!11451)) (CommentValue!4106 (value!64602 List!11451)) (WhitespaceValue!4106 (value!64603 List!11451)) (IndentationValue!2053 (value!64604 List!11451)) (String!13852) (Int32!2053) (Broken!10266 (value!64605 List!11451)) (Boolean!2054) (Unit!17444) (OperatorValue!2056 (op!2113 List!11451)) (IdentifierValue!4106 (value!64606 List!11451)) (IdentifierValue!4107 (value!64607 List!11451)) (WhitespaceValue!4107 (value!64608 List!11451)) (True!4106) (False!4106) (Broken!10267 (value!64609 List!11451)) (Broken!10268 (value!64610 List!11451)) (True!4107) (RightBrace!2053) (RightBracket!2053) (Colon!2053) (Null!2053) (Comma!2053) (LeftBracket!2053) (False!4107) (LeftBrace!2053) (ImaginaryLiteralValue!2053 (text!14817 List!11451)) (StringLiteralValue!6159 (value!64611 List!11451)) (EOFValue!2053 (value!64612 List!11451)) (IdentValue!2053 (value!64613 List!11451)) (DelimiterValue!4107 (value!64614 List!11451)) (DedentValue!2053 (value!64615 List!11451)) (NewLineValue!2053 (value!64616 List!11451)) (IntegerValue!6159 (value!64617 (_ BitVec 32)) (text!14818 List!11451)) (IntegerValue!6160 (value!64618 Int) (text!14819 List!11451)) (Times!2053) (Or!2053) (Equal!2053) (Minus!2053) (Broken!10269 (value!64619 List!11451)) (And!2053) (Div!2053) (LessEqual!2053) (Mod!2053) (Concat!5310) (Not!2053) (Plus!2053) (SpaceValue!2053 (value!64620 List!11451)) (IntegerValue!6161 (value!64621 Int) (text!14820 List!11451)) (StringLiteralValue!6160 (text!14821 List!11451)) (FloatLiteralValue!4107 (text!14822 List!11451)) (BytesLiteralValue!2053 (value!64622 List!11451)) (CommentValue!4107 (value!64623 List!11451)) (StringLiteralValue!6161 (value!64624 List!11451)) (ErrorTokenValue!2053 (msg!2114 List!11451)) )
))
(declare-datatypes ((C!6832 0))(
  ( (C!6833 (val!3672 Int)) )
))
(declare-datatypes ((Regex!3257 0))(
  ( (ElementMatch!3257 (c!194304 C!6832)) (Concat!5311 (regOne!7026 Regex!3257) (regTwo!7026 Regex!3257)) (EmptyExpr!3257) (Star!3257 (reg!3586 Regex!3257)) (EmptyLang!3257) (Union!3257 (regOne!7027 Regex!3257) (regTwo!7027 Regex!3257)) )
))
(declare-datatypes ((String!13853 0))(
  ( (String!13854 (value!64625 String)) )
))
(declare-datatypes ((List!11452 0))(
  ( (Nil!11428) (Cons!11428 (h!16829 C!6832) (t!109844 List!11452)) )
))
(declare-datatypes ((IArray!7477 0))(
  ( (IArray!7478 (innerList!3796 List!11452)) )
))
(declare-datatypes ((Conc!3736 0))(
  ( (Node!3736 (left!9987 Conc!3736) (right!10317 Conc!3736) (csize!7702 Int) (cheight!3947 Int)) (Leaf!5740 (xs!6441 IArray!7477) (csize!7703 Int)) (Empty!3736) )
))
(declare-datatypes ((BalanceConc!7494 0))(
  ( (BalanceConc!7495 (c!194305 Conc!3736)) )
))
(declare-datatypes ((TokenValueInjection!3806 0))(
  ( (TokenValueInjection!3807 (toValue!3088 Int) (toChars!2947 Int)) )
))
(declare-datatypes ((Rule!3774 0))(
  ( (Rule!3775 (regex!1987 Regex!3257) (tag!2249 String!13853) (isSeparator!1987 Bool) (transformation!1987 TokenValueInjection!3806)) )
))
(declare-datatypes ((Token!3636 0))(
  ( (Token!3637 (value!64626 TokenValue!2053) (rule!3408 Rule!3774) (size!8983 Int) (originalCharacters!2541 List!11452)) )
))
(declare-datatypes ((List!11453 0))(
  ( (Nil!11429) (Cons!11429 (h!16830 Token!3636) (t!109845 List!11453)) )
))
(declare-datatypes ((List!11454 0))(
  ( (Nil!11430) (Cons!11430 (h!16831 Rule!3774) (t!109846 List!11454)) )
))
(declare-datatypes ((IArray!7479 0))(
  ( (IArray!7480 (innerList!3797 List!11453)) )
))
(declare-datatypes ((Conc!3737 0))(
  ( (Node!3737 (left!9988 Conc!3737) (right!10318 Conc!3737) (csize!7704 Int) (cheight!3948 Int)) (Leaf!5741 (xs!6442 IArray!7479) (csize!7705 Int)) (Empty!3737) )
))
(declare-datatypes ((BalanceConc!7496 0))(
  ( (BalanceConc!7497 (c!194306 Conc!3737)) )
))
(declare-datatypes ((PrintableTokens!660 0))(
  ( (PrintableTokens!661 (rules!9498 List!11454) (tokens!1592 BalanceConc!7496)) )
))
(declare-fun thiss!10527 () PrintableTokens!660)

(declare-fun size!8984 (BalanceConc!7496) Int)

(assert (=> b!1161642 (= lt!395602 (size!8984 (tokens!1592 thiss!10527)))))

(declare-fun b!1161643 () Bool)

(declare-fun e!743806 () Bool)

(declare-fun e!743817 () Bool)

(assert (=> b!1161643 (= e!743806 e!743817)))

(declare-fun res!523748 () Bool)

(assert (=> b!1161643 (=> res!523748 e!743817)))

(declare-fun lt!395617 () List!11453)

(declare-fun lambda!47399 () Int)

(declare-fun forall!2980 (List!11453 Int) Bool)

(assert (=> b!1161643 (= res!523748 (not (forall!2980 lt!395617 lambda!47399)))))

(declare-fun e!743818 () Bool)

(assert (=> b!1161643 e!743818))

(declare-fun res!523740 () Bool)

(assert (=> b!1161643 (=> (not res!523740) (not e!743818))))

(assert (=> b!1161643 (= res!523740 (forall!2980 lt!395617 lambda!47399))))

(declare-fun lt!395614 () List!11453)

(declare-datatypes ((Unit!17445 0))(
  ( (Unit!17446) )
))
(declare-fun lt!395611 () Unit!17445)

(declare-fun lemmaForallSubseq!135 (List!11453 List!11453 Int) Unit!17445)

(assert (=> b!1161643 (= lt!395611 (lemmaForallSubseq!135 lt!395617 lt!395614 lambda!47399))))

(declare-fun lt!395607 () BalanceConc!7496)

(declare-fun list!4206 (BalanceConc!7496) List!11453)

(assert (=> b!1161643 (= lt!395617 (list!4206 lt!395607))))

(declare-fun from!787 () Int)

(declare-fun slice!273 (BalanceConc!7496 Int Int) BalanceConc!7496)

(assert (=> b!1161643 (= lt!395607 (slice!273 (tokens!1592 thiss!10527) from!787 to!267))))

(declare-fun subseq!243 (List!11453 List!11453) Bool)

(declare-fun slice!274 (List!11453 Int Int) List!11453)

(assert (=> b!1161643 (subseq!243 (slice!274 lt!395614 from!787 to!267) lt!395614)))

(declare-fun lt!395610 () Unit!17445)

(declare-fun lemmaSliceSubseq!84 (List!11453 Int Int) Unit!17445)

(assert (=> b!1161643 (= lt!395610 (lemmaSliceSubseq!84 lt!395614 from!787 to!267))))

(declare-fun b!1161644 () Bool)

(declare-fun res!523737 () Bool)

(assert (=> b!1161644 (=> res!523737 e!743817)))

(declare-fun forall!2981 (BalanceConc!7496 Int) Bool)

(assert (=> b!1161644 (= res!523737 (not (forall!2981 lt!395607 lambda!47399)))))

(declare-fun b!1161645 () Bool)

(declare-fun e!743811 () Bool)

(declare-fun lt!395613 () Token!3636)

(declare-fun size!8985 (BalanceConc!7494) Int)

(declare-fun charsOf!1056 (Token!3636) BalanceConc!7494)

(assert (=> b!1161645 (= e!743811 (> (size!8985 (charsOf!1056 lt!395613)) 0))))

(declare-fun b!1161646 () Bool)

(declare-fun e!743807 () Bool)

(declare-fun lt!395605 () List!11453)

(declare-datatypes ((LexerInterface!1682 0))(
  ( (LexerInterfaceExt!1679 (__x!7818 Int)) (Lexer!1680) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!550 (LexerInterface!1682 List!11454 List!11453) Bool)

(assert (=> b!1161646 (= e!743807 (rulesProduceEachTokenIndividuallyList!550 Lexer!1680 (rules!9498 thiss!10527) (t!109845 lt!395605)))))

(declare-fun b!1161647 () Bool)

(declare-fun e!743812 () Bool)

(declare-fun e!743803 () Bool)

(assert (=> b!1161647 (= e!743812 e!743803)))

(declare-fun res!523749 () Bool)

(assert (=> b!1161647 (=> (not res!523749) (not e!743803))))

(declare-fun rulesProduceIndividualToken!719 (LexerInterface!1682 List!11454 Token!3636) Bool)

(assert (=> b!1161647 (= res!523749 (rulesProduceIndividualToken!719 Lexer!1680 (rules!9498 thiss!10527) (h!16830 lt!395614)))))

(declare-fun res!523742 () Bool)

(assert (=> start!101746 (=> (not res!523742) (not e!743814))))

(assert (=> start!101746 (= res!523742 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101746 e!743814))

(assert (=> start!101746 true))

(declare-fun e!743804 () Bool)

(declare-fun inv!15025 (PrintableTokens!660) Bool)

(assert (=> start!101746 (and (inv!15025 thiss!10527) e!743804)))

(declare-fun b!1161648 () Bool)

(declare-fun e!743810 () Bool)

(assert (=> b!1161648 (= e!743810 e!743807)))

(declare-fun res!523743 () Bool)

(assert (=> b!1161648 (=> (not res!523743) (not e!743807))))

(assert (=> b!1161648 (= res!523743 (rulesProduceIndividualToken!719 Lexer!1680 (rules!9498 thiss!10527) (h!16830 lt!395605)))))

(declare-fun e!743808 () Bool)

(declare-fun b!1161649 () Bool)

(assert (=> b!1161649 (= e!743818 (= (rulesProduceEachTokenIndividuallyList!550 Lexer!1680 (rules!9498 thiss!10527) lt!395617) e!743808))))

(declare-fun res!523735 () Bool)

(assert (=> b!1161649 (=> res!523735 e!743808)))

(get-info :version)

(assert (=> b!1161649 (= res!523735 (not ((_ is Cons!11429) lt!395617)))))

(declare-fun b!1161650 () Bool)

(declare-fun e!743821 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!94 (LexerInterface!1682 List!11453 List!11454) Bool)

(assert (=> b!1161650 (= e!743821 (tokensListTwoByTwoPredicateSeparableList!94 Lexer!1680 lt!395605 (rules!9498 thiss!10527)))))

(declare-fun b!1161651 () Bool)

(assert (=> b!1161651 (= e!743817 true)))

(assert (=> b!1161651 (forall!2980 lt!395605 lambda!47399)))

(declare-fun lt!395606 () Unit!17445)

(assert (=> b!1161651 (= lt!395606 (lemmaForallSubseq!135 lt!395605 lt!395614 lambda!47399))))

(assert (=> b!1161651 e!743821))

(declare-fun res!523744 () Bool)

(assert (=> b!1161651 (=> (not res!523744) (not e!743821))))

(assert (=> b!1161651 (= res!523744 (forall!2980 lt!395605 lambda!47399))))

(declare-fun lt!395598 () Unit!17445)

(assert (=> b!1161651 (= lt!395598 (lemmaForallSubseq!135 lt!395605 lt!395614 lambda!47399))))

(assert (=> b!1161651 (subseq!243 lt!395605 lt!395614)))

(declare-fun lt!395603 () Unit!17445)

(declare-fun lemmaDropSubseq!34 (List!11453 Int) Unit!17445)

(assert (=> b!1161651 (= lt!395603 (lemmaDropSubseq!34 lt!395614 from!787))))

(assert (=> b!1161651 (= (rulesProduceEachTokenIndividuallyList!550 Lexer!1680 (rules!9498 thiss!10527) lt!395605) e!743810)))

(declare-fun res!523736 () Bool)

(assert (=> b!1161651 (=> res!523736 e!743810)))

(assert (=> b!1161651 (= res!523736 (not ((_ is Cons!11429) lt!395605)))))

(declare-fun drop!469 (List!11453 Int) List!11453)

(assert (=> b!1161651 (= lt!395605 (drop!469 lt!395614 from!787))))

(declare-fun lt!395609 () Unit!17445)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!34 (LexerInterface!1682 List!11453 Int List!11454) Unit!17445)

(assert (=> b!1161651 (= lt!395609 (tokensListTwoByTwoPredicateSeparableTokensDropList!34 Lexer!1680 lt!395614 from!787 (rules!9498 thiss!10527)))))

(declare-fun e!743809 () Bool)

(assert (=> b!1161651 e!743809))

(declare-fun res!523741 () Bool)

(assert (=> b!1161651 (=> (not res!523741) (not e!743809))))

(declare-fun separableTokens!124 (LexerInterface!1682 BalanceConc!7496 List!11454) Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!57 (LexerInterface!1682 BalanceConc!7496 Int List!11454) Bool)

(assert (=> b!1161651 (= res!523741 (= (separableTokens!124 Lexer!1680 lt!395607 (rules!9498 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!57 Lexer!1680 lt!395607 0 (rules!9498 thiss!10527))))))

(declare-fun b!1161652 () Bool)

(declare-fun res!523746 () Bool)

(assert (=> b!1161652 (=> (not res!523746) (not e!743818))))

(declare-fun rulesProduceEachTokenIndividually!721 (LexerInterface!1682 List!11454 BalanceConc!7496) Bool)

(assert (=> b!1161652 (= res!523746 (= (rulesProduceEachTokenIndividually!721 Lexer!1680 (rules!9498 thiss!10527) lt!395607) (forall!2981 lt!395607 lambda!47399)))))

(declare-fun b!1161653 () Bool)

(declare-fun e!743813 () Bool)

(assert (=> b!1161653 (= e!743813 (rulesProduceEachTokenIndividuallyList!550 Lexer!1680 (rules!9498 thiss!10527) (t!109845 lt!395617)))))

(declare-fun b!1161654 () Bool)

(declare-fun e!743820 () Bool)

(declare-fun e!743816 () Bool)

(assert (=> b!1161654 (= e!743820 e!743816)))

(declare-fun res!523747 () Bool)

(assert (=> b!1161654 (=> (not res!523747) (not e!743816))))

(declare-fun lt!395599 () Token!3636)

(declare-fun separableTokensPredicate!118 (LexerInterface!1682 Token!3636 Token!3636 List!11454) Bool)

(assert (=> b!1161654 (= res!523747 (separableTokensPredicate!118 Lexer!1680 lt!395599 lt!395613 (rules!9498 thiss!10527)))))

(assert (=> b!1161654 e!743811))

(declare-fun res!523752 () Bool)

(assert (=> b!1161654 (=> (not res!523752) (not e!743811))))

(assert (=> b!1161654 (= res!523752 (rulesProduceIndividualToken!719 Lexer!1680 (rules!9498 thiss!10527) lt!395613))))

(declare-fun lt!395615 () Unit!17445)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!277 (LexerInterface!1682 List!11454 List!11453 Token!3636) Unit!17445)

(assert (=> b!1161654 (= lt!395615 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!277 Lexer!1680 (rules!9498 thiss!10527) lt!395614 lt!395613))))

(declare-fun apply!2441 (BalanceConc!7496 Int) Token!3636)

(assert (=> b!1161654 (= lt!395613 (apply!2441 (tokens!1592 thiss!10527) 1))))

(assert (=> b!1161654 (rulesProduceIndividualToken!719 Lexer!1680 (rules!9498 thiss!10527) lt!395599)))

(declare-fun lt!395597 () Unit!17445)

(assert (=> b!1161654 (= lt!395597 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!277 Lexer!1680 (rules!9498 thiss!10527) lt!395614 lt!395599))))

(assert (=> b!1161654 (= lt!395599 (apply!2441 (tokens!1592 thiss!10527) 0))))

(declare-fun lt!395604 () List!11453)

(declare-fun tail!1674 (List!11453) List!11453)

(assert (=> b!1161654 (= (tail!1674 lt!395604) (drop!469 lt!395614 2))))

(declare-fun lt!395608 () Unit!17445)

(declare-fun lemmaDropTail!347 (List!11453 Int) Unit!17445)

(assert (=> b!1161654 (= lt!395608 (lemmaDropTail!347 lt!395614 1))))

(declare-fun lt!395612 () List!11453)

(assert (=> b!1161654 (= (tail!1674 lt!395612) lt!395604)))

(declare-fun lt!395616 () Unit!17445)

(assert (=> b!1161654 (= lt!395616 (lemmaDropTail!347 lt!395614 0))))

(declare-fun head!2090 (List!11453) Token!3636)

(declare-fun apply!2442 (List!11453 Int) Token!3636)

(assert (=> b!1161654 (= (head!2090 lt!395604) (apply!2442 lt!395614 1))))

(assert (=> b!1161654 (= lt!395604 (drop!469 lt!395614 1))))

(declare-fun lt!395618 () Unit!17445)

(declare-fun lemmaDropApply!359 (List!11453 Int) Unit!17445)

(assert (=> b!1161654 (= lt!395618 (lemmaDropApply!359 lt!395614 1))))

(assert (=> b!1161654 (= (head!2090 lt!395612) (apply!2442 lt!395614 0))))

(assert (=> b!1161654 (= lt!395612 (drop!469 lt!395614 0))))

(declare-fun lt!395600 () Unit!17445)

(assert (=> b!1161654 (= lt!395600 (lemmaDropApply!359 lt!395614 0))))

(declare-fun b!1161655 () Bool)

(assert (=> b!1161655 (= e!743809 (= (tokensListTwoByTwoPredicateSeparable!57 Lexer!1680 (tokens!1592 thiss!10527) 0 (rules!9498 thiss!10527)) e!743820))))

(declare-fun res!523750 () Bool)

(assert (=> b!1161655 (=> res!523750 e!743820)))

(assert (=> b!1161655 (= res!523750 (>= 0 (- lt!395602 1)))))

(declare-fun e!743819 () Bool)

(assert (=> b!1161656 (= e!743819 (not e!743806))))

(declare-fun res!523738 () Bool)

(assert (=> b!1161656 (=> res!523738 e!743806)))

(assert (=> b!1161656 (= res!523738 (not (forall!2981 (tokens!1592 thiss!10527) lambda!47399)))))

(assert (=> b!1161656 (= (rulesProduceEachTokenIndividuallyList!550 Lexer!1680 (rules!9498 thiss!10527) lt!395614) e!743812)))

(declare-fun res!523739 () Bool)

(assert (=> b!1161656 (=> res!523739 e!743812)))

(assert (=> b!1161656 (= res!523739 (not ((_ is Cons!11429) lt!395614)))))

(assert (=> b!1161656 (= lt!395614 (list!4206 (tokens!1592 thiss!10527)))))

(assert (=> b!1161656 (= (rulesProduceEachTokenIndividually!721 Lexer!1680 (rules!9498 thiss!10527) (tokens!1592 thiss!10527)) (forall!2981 (tokens!1592 thiss!10527) lambda!47399))))

(declare-fun e!743805 () Bool)

(declare-fun tp!333833 () Bool)

(declare-fun b!1161657 () Bool)

(declare-fun inv!15026 (BalanceConc!7496) Bool)

(assert (=> b!1161657 (= e!743804 (and tp!333833 (inv!15026 (tokens!1592 thiss!10527)) e!743805))))

(declare-fun b!1161658 () Bool)

(assert (=> b!1161658 (= e!743815 e!743819)))

(declare-fun res!523751 () Bool)

(assert (=> b!1161658 (=> (not res!523751) (not e!743819))))

(declare-fun rulesInvariant!1556 (LexerInterface!1682 List!11454) Bool)

(assert (=> b!1161658 (= res!523751 (rulesInvariant!1556 Lexer!1680 (rules!9498 thiss!10527)))))

(declare-fun lt!395601 () Unit!17445)

(declare-fun lemmaInvariant!174 (PrintableTokens!660) Unit!17445)

(assert (=> b!1161658 (= lt!395601 (lemmaInvariant!174 thiss!10527))))

(declare-fun b!1161659 () Bool)

(assert (=> b!1161659 (= e!743808 e!743813)))

(declare-fun res!523753 () Bool)

(assert (=> b!1161659 (=> (not res!523753) (not e!743813))))

(assert (=> b!1161659 (= res!523753 (rulesProduceIndividualToken!719 Lexer!1680 (rules!9498 thiss!10527) (h!16830 lt!395617)))))

(declare-fun b!1161660 () Bool)

(declare-fun tp!333834 () Bool)

(declare-fun inv!15027 (Conc!3737) Bool)

(assert (=> b!1161660 (= e!743805 (and (inv!15027 (c!194306 (tokens!1592 thiss!10527))) tp!333834))))

(declare-fun b!1161661 () Bool)

(assert (=> b!1161661 (= e!743803 (rulesProduceEachTokenIndividuallyList!550 Lexer!1680 (rules!9498 thiss!10527) (t!109845 lt!395614)))))

(declare-fun b!1161662 () Bool)

(assert (=> b!1161662 (= e!743816 (tokensListTwoByTwoPredicateSeparable!57 Lexer!1680 (tokens!1592 thiss!10527) 1 (rules!9498 thiss!10527)))))

(assert (= (and start!101746 res!523742) b!1161642))

(assert (= (and b!1161642 res!523745) b!1161658))

(assert (= (and b!1161658 res!523751) b!1161656))

(assert (= (and b!1161656 (not res!523739)) b!1161647))

(assert (= (and b!1161647 res!523749) b!1161661))

(assert (= (and b!1161656 (not res!523738)) b!1161643))

(assert (= (and b!1161643 res!523740) b!1161652))

(assert (= (and b!1161652 res!523746) b!1161649))

(assert (= (and b!1161649 (not res!523735)) b!1161659))

(assert (= (and b!1161659 res!523753) b!1161653))

(assert (= (and b!1161643 (not res!523748)) b!1161644))

(assert (= (and b!1161644 (not res!523737)) b!1161651))

(assert (= (and b!1161651 res!523741) b!1161655))

(assert (= (and b!1161655 (not res!523750)) b!1161654))

(assert (= (and b!1161654 res!523752) b!1161645))

(assert (= (and b!1161654 res!523747) b!1161662))

(assert (= (and b!1161651 (not res!523736)) b!1161648))

(assert (= (and b!1161648 res!523743) b!1161646))

(assert (= (and b!1161651 res!523744) b!1161650))

(assert (= b!1161657 b!1161660))

(assert (= start!101746 b!1161657))

(declare-fun m!1329143 () Bool)

(assert (=> start!101746 m!1329143))

(declare-fun m!1329145 () Bool)

(assert (=> b!1161660 m!1329145))

(declare-fun m!1329147 () Bool)

(assert (=> b!1161644 m!1329147))

(declare-fun m!1329149 () Bool)

(assert (=> b!1161661 m!1329149))

(declare-fun m!1329151 () Bool)

(assert (=> b!1161646 m!1329151))

(declare-fun m!1329153 () Bool)

(assert (=> b!1161655 m!1329153))

(declare-fun m!1329155 () Bool)

(assert (=> b!1161649 m!1329155))

(declare-fun m!1329157 () Bool)

(assert (=> b!1161653 m!1329157))

(declare-fun m!1329159 () Bool)

(assert (=> b!1161654 m!1329159))

(declare-fun m!1329161 () Bool)

(assert (=> b!1161654 m!1329161))

(declare-fun m!1329163 () Bool)

(assert (=> b!1161654 m!1329163))

(declare-fun m!1329165 () Bool)

(assert (=> b!1161654 m!1329165))

(declare-fun m!1329167 () Bool)

(assert (=> b!1161654 m!1329167))

(declare-fun m!1329169 () Bool)

(assert (=> b!1161654 m!1329169))

(declare-fun m!1329171 () Bool)

(assert (=> b!1161654 m!1329171))

(declare-fun m!1329173 () Bool)

(assert (=> b!1161654 m!1329173))

(declare-fun m!1329175 () Bool)

(assert (=> b!1161654 m!1329175))

(declare-fun m!1329177 () Bool)

(assert (=> b!1161654 m!1329177))

(declare-fun m!1329179 () Bool)

(assert (=> b!1161654 m!1329179))

(declare-fun m!1329181 () Bool)

(assert (=> b!1161654 m!1329181))

(declare-fun m!1329183 () Bool)

(assert (=> b!1161654 m!1329183))

(declare-fun m!1329185 () Bool)

(assert (=> b!1161654 m!1329185))

(declare-fun m!1329187 () Bool)

(assert (=> b!1161654 m!1329187))

(declare-fun m!1329189 () Bool)

(assert (=> b!1161654 m!1329189))

(declare-fun m!1329191 () Bool)

(assert (=> b!1161654 m!1329191))

(declare-fun m!1329193 () Bool)

(assert (=> b!1161654 m!1329193))

(declare-fun m!1329195 () Bool)

(assert (=> b!1161654 m!1329195))

(declare-fun m!1329197 () Bool)

(assert (=> b!1161654 m!1329197))

(declare-fun m!1329199 () Bool)

(assert (=> b!1161657 m!1329199))

(declare-fun m!1329201 () Bool)

(assert (=> b!1161647 m!1329201))

(declare-fun m!1329203 () Bool)

(assert (=> b!1161645 m!1329203))

(assert (=> b!1161645 m!1329203))

(declare-fun m!1329205 () Bool)

(assert (=> b!1161645 m!1329205))

(declare-fun m!1329207 () Bool)

(assert (=> b!1161642 m!1329207))

(declare-fun m!1329209 () Bool)

(assert (=> b!1161648 m!1329209))

(declare-fun m!1329211 () Bool)

(assert (=> b!1161656 m!1329211))

(assert (=> b!1161656 m!1329211))

(declare-fun m!1329213 () Bool)

(assert (=> b!1161656 m!1329213))

(declare-fun m!1329215 () Bool)

(assert (=> b!1161656 m!1329215))

(declare-fun m!1329217 () Bool)

(assert (=> b!1161656 m!1329217))

(declare-fun m!1329219 () Bool)

(assert (=> b!1161651 m!1329219))

(declare-fun m!1329221 () Bool)

(assert (=> b!1161651 m!1329221))

(declare-fun m!1329223 () Bool)

(assert (=> b!1161651 m!1329223))

(assert (=> b!1161651 m!1329223))

(declare-fun m!1329225 () Bool)

(assert (=> b!1161651 m!1329225))

(declare-fun m!1329227 () Bool)

(assert (=> b!1161651 m!1329227))

(declare-fun m!1329229 () Bool)

(assert (=> b!1161651 m!1329229))

(declare-fun m!1329231 () Bool)

(assert (=> b!1161651 m!1329231))

(declare-fun m!1329233 () Bool)

(assert (=> b!1161651 m!1329233))

(declare-fun m!1329235 () Bool)

(assert (=> b!1161651 m!1329235))

(assert (=> b!1161651 m!1329231))

(declare-fun m!1329237 () Bool)

(assert (=> b!1161643 m!1329237))

(declare-fun m!1329239 () Bool)

(assert (=> b!1161643 m!1329239))

(declare-fun m!1329241 () Bool)

(assert (=> b!1161643 m!1329241))

(assert (=> b!1161643 m!1329241))

(declare-fun m!1329243 () Bool)

(assert (=> b!1161643 m!1329243))

(declare-fun m!1329245 () Bool)

(assert (=> b!1161643 m!1329245))

(declare-fun m!1329247 () Bool)

(assert (=> b!1161643 m!1329247))

(assert (=> b!1161643 m!1329243))

(declare-fun m!1329249 () Bool)

(assert (=> b!1161643 m!1329249))

(declare-fun m!1329251 () Bool)

(assert (=> b!1161650 m!1329251))

(declare-fun m!1329253 () Bool)

(assert (=> b!1161662 m!1329253))

(declare-fun m!1329255 () Bool)

(assert (=> b!1161659 m!1329255))

(declare-fun m!1329257 () Bool)

(assert (=> b!1161652 m!1329257))

(assert (=> b!1161652 m!1329147))

(declare-fun m!1329259 () Bool)

(assert (=> b!1161658 m!1329259))

(declare-fun m!1329261 () Bool)

(assert (=> b!1161658 m!1329261))

(check-sat (not b!1161654) (not b!1161653) (not b!1161657) (not b!1161648) (not b!1161662) (not b!1161649) (not b!1161659) (not b!1161658) (not b!1161642) (not b!1161646) (not start!101746) (not b!1161656) (not b!1161644) (not b!1161643) (not b!1161669) (not b!1161651) (not b!1161660) (not b!1161650) (not b!1161655) (not b!1161670) (not b!1161647) (not b!1161645) (not b!1161652) (not b!1161661))
(check-sat)
