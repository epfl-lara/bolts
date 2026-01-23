; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127506 () Bool)

(assert start!127506)

(declare-fun b!1399658 () Bool)

(declare-fun b_free!34083 () Bool)

(declare-fun b_next!34787 () Bool)

(assert (=> b!1399658 (= b_free!34083 (not b_next!34787))))

(declare-fun tp!398485 () Bool)

(declare-fun b_and!93715 () Bool)

(assert (=> b!1399658 (= tp!398485 b_and!93715)))

(declare-fun b_free!34085 () Bool)

(declare-fun b_next!34789 () Bool)

(assert (=> b!1399658 (= b_free!34085 (not b_next!34789))))

(declare-fun tp!398483 () Bool)

(declare-fun b_and!93717 () Bool)

(assert (=> b!1399658 (= tp!398483 b_and!93717)))

(declare-fun b!1399678 () Bool)

(declare-fun b_free!34087 () Bool)

(declare-fun b_next!34791 () Bool)

(assert (=> b!1399678 (= b_free!34087 (not b_next!34791))))

(declare-fun tp!398486 () Bool)

(declare-fun b_and!93719 () Bool)

(assert (=> b!1399678 (= tp!398486 b_and!93719)))

(declare-fun b_free!34089 () Bool)

(declare-fun b_next!34793 () Bool)

(assert (=> b!1399678 (= b_free!34089 (not b_next!34793))))

(declare-fun tp!398478 () Bool)

(declare-fun b_and!93721 () Bool)

(assert (=> b!1399678 (= tp!398478 b_and!93721)))

(declare-fun b!1399652 () Bool)

(declare-fun b_free!34091 () Bool)

(declare-fun b_next!34795 () Bool)

(assert (=> b!1399652 (= b_free!34091 (not b_next!34795))))

(declare-fun tp!398487 () Bool)

(declare-fun b_and!93723 () Bool)

(assert (=> b!1399652 (= tp!398487 b_and!93723)))

(declare-fun b_free!34093 () Bool)

(declare-fun b_next!34797 () Bool)

(assert (=> b!1399652 (= b_free!34093 (not b_next!34797))))

(declare-fun tp!398480 () Bool)

(declare-fun b_and!93725 () Bool)

(assert (=> b!1399652 (= tp!398480 b_and!93725)))

(declare-fun b!1399657 () Bool)

(assert (=> b!1399657 true))

(assert (=> b!1399657 true))

(declare-fun b!1399680 () Bool)

(assert (=> b!1399680 true))

(declare-fun b!1399646 () Bool)

(assert (=> b!1399646 true))

(declare-fun bs!338126 () Bool)

(declare-fun b!1399663 () Bool)

(assert (= bs!338126 (and b!1399663 b!1399646)))

(declare-fun lambda!61185 () Int)

(declare-fun lambda!61184 () Int)

(assert (=> bs!338126 (not (= lambda!61185 lambda!61184))))

(assert (=> b!1399663 true))

(declare-fun b!1399634 () Bool)

(declare-fun e!893686 () Bool)

(declare-fun e!893681 () Bool)

(assert (=> b!1399634 (= e!893686 e!893681)))

(declare-fun res!632763 () Bool)

(assert (=> b!1399634 (=> res!632763 e!893681)))

(declare-datatypes ((C!7844 0))(
  ( (C!7845 (val!4482 Int)) )
))
(declare-datatypes ((Regex!3777 0))(
  ( (ElementMatch!3777 (c!230304 C!7844)) (Concat!6330 (regOne!8066 Regex!3777) (regTwo!8066 Regex!3777)) (EmptyExpr!3777) (Star!3777 (reg!4106 Regex!3777)) (EmptyLang!3777) (Union!3777 (regOne!8067 Regex!3777) (regTwo!8067 Regex!3777)) )
))
(declare-fun lt!466502 () Regex!3777)

(declare-fun validRegex!1651 (Regex!3777) Bool)

(assert (=> b!1399634 (= res!632763 (not (validRegex!1651 lt!466502)))))

(declare-datatypes ((List!14284 0))(
  ( (Nil!14218) (Cons!14218 (h!19619 (_ BitVec 16)) (t!122809 List!14284)) )
))
(declare-datatypes ((TokenValue!2553 0))(
  ( (FloatLiteralValue!5106 (text!18316 List!14284)) (TokenValueExt!2552 (__x!8935 Int)) (Broken!12765 (value!79802 List!14284)) (Object!2618) (End!2553) (Def!2553) (Underscore!2553) (Match!2553) (Else!2553) (Error!2553) (Case!2553) (If!2553) (Extends!2553) (Abstract!2553) (Class!2553) (Val!2553) (DelimiterValue!5106 (del!2613 List!14284)) (KeywordValue!2559 (value!79803 List!14284)) (CommentValue!5106 (value!79804 List!14284)) (WhitespaceValue!5106 (value!79805 List!14284)) (IndentationValue!2553 (value!79806 List!14284)) (String!17000) (Int32!2553) (Broken!12766 (value!79807 List!14284)) (Boolean!2554) (Unit!20536) (OperatorValue!2556 (op!2613 List!14284)) (IdentifierValue!5106 (value!79808 List!14284)) (IdentifierValue!5107 (value!79809 List!14284)) (WhitespaceValue!5107 (value!79810 List!14284)) (True!5106) (False!5106) (Broken!12767 (value!79811 List!14284)) (Broken!12768 (value!79812 List!14284)) (True!5107) (RightBrace!2553) (RightBracket!2553) (Colon!2553) (Null!2553) (Comma!2553) (LeftBracket!2553) (False!5107) (LeftBrace!2553) (ImaginaryLiteralValue!2553 (text!18317 List!14284)) (StringLiteralValue!7659 (value!79813 List!14284)) (EOFValue!2553 (value!79814 List!14284)) (IdentValue!2553 (value!79815 List!14284)) (DelimiterValue!5107 (value!79816 List!14284)) (DedentValue!2553 (value!79817 List!14284)) (NewLineValue!2553 (value!79818 List!14284)) (IntegerValue!7659 (value!79819 (_ BitVec 32)) (text!18318 List!14284)) (IntegerValue!7660 (value!79820 Int) (text!18319 List!14284)) (Times!2553) (Or!2553) (Equal!2553) (Minus!2553) (Broken!12769 (value!79821 List!14284)) (And!2553) (Div!2553) (LessEqual!2553) (Mod!2553) (Concat!6331) (Not!2553) (Plus!2553) (SpaceValue!2553 (value!79822 List!14284)) (IntegerValue!7661 (value!79823 Int) (text!18320 List!14284)) (StringLiteralValue!7660 (text!18321 List!14284)) (FloatLiteralValue!5107 (text!18322 List!14284)) (BytesLiteralValue!2553 (value!79824 List!14284)) (CommentValue!5107 (value!79825 List!14284)) (StringLiteralValue!7661 (value!79826 List!14284)) (ErrorTokenValue!2553 (msg!2614 List!14284)) )
))
(declare-datatypes ((List!14285 0))(
  ( (Nil!14219) (Cons!14219 (h!19620 C!7844) (t!122810 List!14285)) )
))
(declare-datatypes ((IArray!9377 0))(
  ( (IArray!9378 (innerList!4746 List!14285)) )
))
(declare-datatypes ((Conc!4686 0))(
  ( (Node!4686 (left!12143 Conc!4686) (right!12473 Conc!4686) (csize!9602 Int) (cheight!4897 Int)) (Leaf!7114 (xs!7413 IArray!9377) (csize!9603 Int)) (Empty!4686) )
))
(declare-datatypes ((BalanceConc!9312 0))(
  ( (BalanceConc!9313 (c!230305 Conc!4686)) )
))
(declare-datatypes ((String!17001 0))(
  ( (String!17002 (value!79827 String)) )
))
(declare-datatypes ((TokenValueInjection!4766 0))(
  ( (TokenValueInjection!4767 (toValue!3754 Int) (toChars!3613 Int)) )
))
(declare-datatypes ((Rule!4726 0))(
  ( (Rule!4727 (regex!2463 Regex!3777) (tag!2725 String!17001) (isSeparator!2463 Bool) (transformation!2463 TokenValueInjection!4766)) )
))
(declare-fun lt!466511 () Rule!4726)

(declare-fun lt!466524 () C!7844)

(declare-fun contains!2771 (List!14285 C!7844) Bool)

(declare-fun usedCharacters!274 (Regex!3777) List!14285)

(assert (=> b!1399634 (not (contains!2771 (usedCharacters!274 (regex!2463 lt!466511)) lt!466524))))

(declare-datatypes ((Token!4588 0))(
  ( (Token!4589 (value!79828 TokenValue!2553) (rule!4226 Rule!4726) (size!11697 Int) (originalCharacters!3325 List!14285)) )
))
(declare-fun t1!34 () Token!4588)

(declare-datatypes ((Unit!20537 0))(
  ( (Unit!20538) )
))
(declare-fun lt!466515 () Unit!20537)

(declare-datatypes ((List!14286 0))(
  ( (Nil!14220) (Cons!14220 (h!19621 Rule!4726) (t!122811 List!14286)) )
))
(declare-fun rules!2550 () List!14286)

(declare-datatypes ((LexerInterface!2158 0))(
  ( (LexerInterfaceExt!2155 (__x!8936 Int)) (Lexer!2156) )
))
(declare-fun thiss!19762 () LexerInterface!2158)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!136 (LexerInterface!2158 List!14286 List!14286 Rule!4726 Rule!4726 C!7844) Unit!20537)

(assert (=> b!1399634 (= lt!466515 (lemmaSepRuleNotContainsCharContainedInANonSepRule!136 thiss!19762 rules!2550 rules!2550 (rule!4226 t1!34) lt!466511 lt!466524))))

(declare-fun b!1399635 () Bool)

(declare-fun e!893682 () Bool)

(declare-fun e!893692 () Bool)

(assert (=> b!1399635 (= e!893682 e!893692)))

(declare-fun res!632773 () Bool)

(assert (=> b!1399635 (=> res!632773 e!893692)))

(declare-datatypes ((List!14287 0))(
  ( (Nil!14221) (Cons!14221 (h!19622 Token!4588) (t!122812 List!14287)) )
))
(declare-datatypes ((IArray!9379 0))(
  ( (IArray!9380 (innerList!4747 List!14287)) )
))
(declare-datatypes ((Conc!4687 0))(
  ( (Node!4687 (left!12144 Conc!4687) (right!12474 Conc!4687) (csize!9604 Int) (cheight!4898 Int)) (Leaf!7115 (xs!7414 IArray!9379) (csize!9605 Int)) (Empty!4687) )
))
(declare-datatypes ((BalanceConc!9314 0))(
  ( (BalanceConc!9315 (c!230306 Conc!4687)) )
))
(declare-datatypes ((tuple2!13838 0))(
  ( (tuple2!13839 (_1!7805 BalanceConc!9314) (_2!7805 BalanceConc!9312)) )
))
(declare-fun lt!466518 () tuple2!13838)

(declare-fun lt!466526 () List!14287)

(declare-fun list!5541 (BalanceConc!9314) List!14287)

(assert (=> b!1399635 (= res!632773 (not (= (list!5541 (_1!7805 lt!466518)) lt!466526)))))

(declare-fun t2!34 () Token!4588)

(assert (=> b!1399635 (= lt!466526 (Cons!14221 t2!34 Nil!14221))))

(declare-fun lt!466512 () BalanceConc!9312)

(declare-fun lex!983 (LexerInterface!2158 List!14286 BalanceConc!9312) tuple2!13838)

(assert (=> b!1399635 (= lt!466518 (lex!983 thiss!19762 rules!2550 lt!466512))))

(declare-fun print!922 (LexerInterface!2158 BalanceConc!9314) BalanceConc!9312)

(declare-fun singletonSeq!1122 (Token!4588) BalanceConc!9314)

(assert (=> b!1399635 (= lt!466512 (print!922 thiss!19762 (singletonSeq!1122 t2!34)))))

(declare-fun b!1399636 () Bool)

(declare-fun e!893677 () Bool)

(assert (=> b!1399636 (= e!893677 e!893686)))

(declare-fun res!632776 () Bool)

(assert (=> b!1399636 (=> res!632776 e!893686)))

(assert (=> b!1399636 (= res!632776 (or (not (isSeparator!2463 lt!466511)) (isSeparator!2463 (rule!4226 t1!34))))))

(assert (=> b!1399636 (= (regex!2463 lt!466511) lt!466502)))

(declare-fun b!1399637 () Bool)

(assert (=> b!1399637 (= e!893681 (not (contains!2771 (usedCharacters!274 lt!466502) lt!466524)))))

(declare-fun b!1399639 () Bool)

(declare-fun e!893678 () Bool)

(declare-fun e!893699 () Bool)

(assert (=> b!1399639 (= e!893678 e!893699)))

(declare-fun res!632765 () Bool)

(assert (=> b!1399639 (=> res!632765 e!893699)))

(declare-fun lt!466503 () List!14285)

(declare-fun lt!466522 () List!14285)

(declare-fun ++!3698 (List!14285 List!14285) List!14285)

(declare-fun getSuffix!623 (List!14285 List!14285) List!14285)

(assert (=> b!1399639 (= res!632765 (not (= lt!466503 (++!3698 lt!466522 (getSuffix!623 lt!466503 lt!466522)))))))

(declare-fun lambda!61181 () Int)

(declare-fun pickWitness!230 (Int) List!14285)

(assert (=> b!1399639 (= lt!466503 (pickWitness!230 lambda!61181))))

(declare-fun b!1399640 () Bool)

(declare-fun res!632779 () Bool)

(assert (=> b!1399640 (=> res!632779 e!893692)))

(declare-datatypes ((tuple2!13840 0))(
  ( (tuple2!13841 (_1!7806 List!14287) (_2!7806 List!14285)) )
))
(declare-fun lexList!672 (LexerInterface!2158 List!14286 List!14285) tuple2!13840)

(declare-fun list!5542 (BalanceConc!9312) List!14285)

(assert (=> b!1399640 (= res!632779 (not (= (lexList!672 thiss!19762 rules!2550 (list!5542 lt!466512)) (tuple2!13841 lt!466526 Nil!14219))))))

(declare-fun b!1399641 () Bool)

(declare-fun e!893689 () Bool)

(assert (=> b!1399641 (= e!893689 e!893677)))

(declare-fun res!632797 () Bool)

(assert (=> b!1399641 (=> res!632797 e!893677)))

(declare-fun lt!466507 () Bool)

(assert (=> b!1399641 (= res!632797 lt!466507)))

(declare-fun lt!466510 () Unit!20537)

(declare-fun e!893701 () Unit!20537)

(assert (=> b!1399641 (= lt!466510 e!893701)))

(declare-fun c!230303 () Bool)

(assert (=> b!1399641 (= c!230303 lt!466507)))

(declare-fun lt!466532 () C!7844)

(assert (=> b!1399641 (= lt!466507 (not (contains!2771 (usedCharacters!274 (regex!2463 (rule!4226 t2!34))) lt!466532)))))

(declare-fun e!893690 () Bool)

(declare-fun b!1399642 () Bool)

(declare-fun e!893672 () Bool)

(declare-fun tp!398477 () Bool)

(declare-fun inv!21 (TokenValue!2553) Bool)

(assert (=> b!1399642 (= e!893690 (and (inv!21 (value!79828 t1!34)) e!893672 tp!398477))))

(declare-fun b!1399643 () Bool)

(declare-fun res!632792 () Bool)

(declare-fun e!893700 () Bool)

(assert (=> b!1399643 (=> res!632792 e!893700)))

(declare-fun lt!466509 () Regex!3777)

(declare-fun matchR!1768 (Regex!3777 List!14285) Bool)

(assert (=> b!1399643 (= res!632792 (not (matchR!1768 lt!466509 lt!466503)))))

(declare-fun b!1399644 () Bool)

(assert (=> b!1399644 (= e!893699 e!893700)))

(declare-fun res!632790 () Bool)

(assert (=> b!1399644 (=> res!632790 e!893700)))

(assert (=> b!1399644 (= res!632790 (not (contains!2771 lt!466522 lt!466524)))))

(declare-fun lt!466520 () BalanceConc!9312)

(declare-fun apply!3615 (BalanceConc!9312 Int) C!7844)

(assert (=> b!1399644 (= lt!466524 (apply!3615 lt!466520 0))))

(declare-fun b!1399645 () Bool)

(declare-fun res!632769 () Bool)

(declare-fun e!893693 () Bool)

(assert (=> b!1399645 (=> res!632769 e!893693)))

(declare-fun contains!2772 (List!14286 Rule!4726) Bool)

(assert (=> b!1399645 (= res!632769 (not (contains!2772 rules!2550 lt!466511)))))

(declare-fun e!893703 () Bool)

(declare-fun e!893673 () Bool)

(assert (=> b!1399646 (= e!893703 e!893673)))

(declare-fun res!632770 () Bool)

(assert (=> b!1399646 (=> res!632770 e!893673)))

(declare-fun exists!570 (List!14286 Int) Bool)

(assert (=> b!1399646 (= res!632770 (not (exists!570 rules!2550 lambda!61184)))))

(assert (=> b!1399646 (exists!570 rules!2550 lambda!61184)))

(declare-fun lambda!61182 () Int)

(declare-fun lt!466530 () Unit!20537)

(declare-fun lemmaMapContains!174 (List!14286 Int Regex!3777) Unit!20537)

(assert (=> b!1399646 (= lt!466530 (lemmaMapContains!174 rules!2550 lambda!61182 lt!466502))))

(declare-fun res!632782 () Bool)

(declare-fun e!893698 () Bool)

(assert (=> start!127506 (=> (not res!632782) (not e!893698))))

(get-info :version)

(assert (=> start!127506 (= res!632782 ((_ is Lexer!2156) thiss!19762))))

(assert (=> start!127506 e!893698))

(assert (=> start!127506 true))

(declare-fun e!893683 () Bool)

(assert (=> start!127506 e!893683))

(declare-fun inv!18539 (Token!4588) Bool)

(assert (=> start!127506 (and (inv!18539 t1!34) e!893690)))

(declare-fun e!893695 () Bool)

(assert (=> start!127506 (and (inv!18539 t2!34) e!893695)))

(declare-fun b!1399638 () Bool)

(declare-fun res!632787 () Bool)

(assert (=> b!1399638 (=> (not res!632787) (not e!893698))))

(declare-fun rulesProduceIndividualToken!1127 (LexerInterface!2158 List!14286 Token!4588) Bool)

(assert (=> b!1399638 (= res!632787 (rulesProduceIndividualToken!1127 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1399647 () Bool)

(declare-fun Unit!20539 () Unit!20537)

(assert (=> b!1399647 (= e!893701 Unit!20539)))

(declare-fun b!1399648 () Bool)

(declare-fun res!632771 () Bool)

(assert (=> b!1399648 (=> res!632771 e!893682)))

(declare-fun lt!466514 () tuple2!13838)

(declare-fun isEmpty!8640 (BalanceConc!9312) Bool)

(assert (=> b!1399648 (= res!632771 (not (isEmpty!8640 (_2!7805 lt!466514))))))

(declare-fun b!1399649 () Bool)

(declare-fun res!632798 () Bool)

(assert (=> b!1399649 (=> (not res!632798) (not e!893698))))

(assert (=> b!1399649 (= res!632798 (not (= (isSeparator!2463 (rule!4226 t1!34)) (isSeparator!2463 (rule!4226 t2!34)))))))

(declare-fun b!1399650 () Bool)

(declare-fun res!632764 () Bool)

(assert (=> b!1399650 (=> res!632764 e!893700)))

(assert (=> b!1399650 (= res!632764 (not (contains!2771 lt!466522 lt!466532)))))

(declare-fun b!1399651 () Bool)

(declare-fun e!893684 () Bool)

(declare-fun tp!398481 () Bool)

(assert (=> b!1399651 (= e!893683 (and e!893684 tp!398481))))

(declare-fun e!893685 () Bool)

(assert (=> b!1399652 (= e!893685 (and tp!398487 tp!398480))))

(declare-fun b!1399653 () Bool)

(declare-fun res!632795 () Bool)

(assert (=> b!1399653 (=> (not res!632795) (not e!893698))))

(assert (=> b!1399653 (= res!632795 (rulesProduceIndividualToken!1127 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1399654 () Bool)

(declare-fun res!632778 () Bool)

(assert (=> b!1399654 (=> res!632778 e!893693)))

(assert (=> b!1399654 (= res!632778 (not (contains!2772 rules!2550 (rule!4226 t2!34))))))

(declare-fun b!1399655 () Bool)

(declare-fun res!632786 () Bool)

(assert (=> b!1399655 (=> res!632786 e!893682)))

(declare-fun lt!466531 () List!14285)

(declare-datatypes ((tuple2!13842 0))(
  ( (tuple2!13843 (_1!7807 Token!4588) (_2!7807 List!14285)) )
))
(declare-datatypes ((Option!2726 0))(
  ( (None!2725) (Some!2725 (v!21653 tuple2!13842)) )
))
(declare-fun maxPrefix!1132 (LexerInterface!2158 List!14286 List!14285) Option!2726)

(assert (=> b!1399655 (= res!632786 (not (= (maxPrefix!1132 thiss!19762 rules!2550 lt!466531) (Some!2725 (tuple2!13843 t1!34 Nil!14219)))))))

(declare-fun b!1399656 () Bool)

(declare-fun e!893688 () Unit!20537)

(declare-fun Unit!20540 () Unit!20537)

(assert (=> b!1399656 (= e!893688 Unit!20540)))

(declare-fun e!893691 () Bool)

(assert (=> b!1399657 (= e!893691 (not e!893678))))

(declare-fun res!632791 () Bool)

(assert (=> b!1399657 (=> res!632791 e!893678)))

(declare-fun Exists!927 (Int) Bool)

(assert (=> b!1399657 (= res!632791 (not (Exists!927 lambda!61181)))))

(assert (=> b!1399657 (Exists!927 lambda!61181)))

(declare-fun lt!466521 () Unit!20537)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!245 (Regex!3777 List!14285) Unit!20537)

(assert (=> b!1399657 (= lt!466521 (lemmaPrefixMatchThenExistsStringThatMatches!245 lt!466509 lt!466522))))

(declare-fun e!893696 () Bool)

(assert (=> b!1399658 (= e!893696 (and tp!398485 tp!398483))))

(declare-fun b!1399659 () Bool)

(declare-fun res!632774 () Bool)

(assert (=> b!1399659 (=> res!632774 e!893700)))

(assert (=> b!1399659 (= res!632774 (not (contains!2771 lt!466503 lt!466524)))))

(declare-fun b!1399660 () Bool)

(assert (=> b!1399660 (= e!893692 e!893693)))

(declare-fun res!632796 () Bool)

(assert (=> b!1399660 (=> res!632796 e!893693)))

(declare-fun lt!466513 () List!14285)

(assert (=> b!1399660 (= res!632796 (not (= (maxPrefix!1132 thiss!19762 rules!2550 lt!466513) (Some!2725 (tuple2!13843 t2!34 Nil!14219)))))))

(declare-fun lt!466505 () BalanceConc!9312)

(assert (=> b!1399660 (= lt!466513 (list!5542 lt!466505))))

(declare-fun b!1399661 () Bool)

(declare-fun res!632767 () Bool)

(assert (=> b!1399661 (=> res!632767 e!893700)))

(assert (=> b!1399661 (= res!632767 (not (contains!2771 lt!466503 lt!466532)))))

(declare-fun b!1399662 () Bool)

(declare-fun res!632794 () Bool)

(assert (=> b!1399662 (=> (not res!632794) (not e!893698))))

(declare-fun rulesInvariant!2028 (LexerInterface!2158 List!14286) Bool)

(assert (=> b!1399662 (= res!632794 (rulesInvariant!2028 thiss!19762 rules!2550))))

(declare-fun e!893679 () Bool)

(assert (=> b!1399663 (= e!893693 e!893679)))

(declare-fun res!632789 () Bool)

(assert (=> b!1399663 (=> res!632789 e!893679)))

(assert (=> b!1399663 (= res!632789 (not (matchR!1768 (regex!2463 (rule!4226 t1!34)) lt!466531)))))

(declare-fun lt!466508 () Unit!20537)

(declare-fun forallContained!658 (List!14286 Int Rule!4726) Unit!20537)

(assert (=> b!1399663 (= lt!466508 (forallContained!658 rules!2550 lambda!61185 (rule!4226 t2!34)))))

(declare-fun lt!466527 () Unit!20537)

(assert (=> b!1399663 (= lt!466527 (forallContained!658 rules!2550 lambda!61185 (rule!4226 t1!34)))))

(declare-fun lt!466523 () Unit!20537)

(assert (=> b!1399663 (= lt!466523 (forallContained!658 rules!2550 lambda!61185 lt!466511))))

(declare-fun b!1399664 () Bool)

(declare-fun e!893675 () Bool)

(assert (=> b!1399664 (= e!893675 e!893691)))

(declare-fun res!632783 () Bool)

(assert (=> b!1399664 (=> (not res!632783) (not e!893691))))

(declare-fun prefixMatch!286 (Regex!3777 List!14285) Bool)

(assert (=> b!1399664 (= res!632783 (prefixMatch!286 lt!466509 lt!466522))))

(declare-fun rulesRegex!346 (LexerInterface!2158 List!14286) Regex!3777)

(assert (=> b!1399664 (= lt!466509 (rulesRegex!346 thiss!19762 rules!2550))))

(assert (=> b!1399664 (= lt!466522 (++!3698 lt!466531 (Cons!14219 lt!466532 Nil!14219)))))

(assert (=> b!1399664 (= lt!466532 (apply!3615 lt!466505 0))))

(assert (=> b!1399664 (= lt!466531 (list!5542 lt!466520))))

(declare-fun charsOf!1435 (Token!4588) BalanceConc!9312)

(assert (=> b!1399664 (= lt!466520 (charsOf!1435 t1!34))))

(declare-fun b!1399665 () Bool)

(assert (=> b!1399665 (= e!893698 e!893675)))

(declare-fun res!632785 () Bool)

(assert (=> b!1399665 (=> (not res!632785) (not e!893675))))

(declare-fun size!11698 (BalanceConc!9312) Int)

(assert (=> b!1399665 (= res!632785 (> (size!11698 lt!466505) 0))))

(assert (=> b!1399665 (= lt!466505 (charsOf!1435 t2!34))))

(declare-fun b!1399666 () Bool)

(declare-fun e!893687 () Bool)

(assert (=> b!1399666 (= e!893687 e!893703)))

(declare-fun res!632772 () Bool)

(assert (=> b!1399666 (=> res!632772 e!893703)))

(declare-datatypes ((List!14288 0))(
  ( (Nil!14222) (Cons!14222 (h!19623 Regex!3777) (t!122813 List!14288)) )
))
(declare-fun contains!2773 (List!14288 Regex!3777) Bool)

(declare-fun map!3155 (List!14286 Int) List!14288)

(assert (=> b!1399666 (= res!632772 (not (contains!2773 (map!3155 rules!2550 lambda!61182) lt!466502)))))

(declare-fun lambda!61183 () Int)

(declare-fun getWitness!458 (List!14288 Int) Regex!3777)

(assert (=> b!1399666 (= lt!466502 (getWitness!458 (map!3155 rules!2550 lambda!61182) lambda!61183))))

(declare-fun b!1399667 () Bool)

(declare-fun Unit!20541 () Unit!20537)

(assert (=> b!1399667 (= e!893701 Unit!20541)))

(declare-fun lt!466516 () Unit!20537)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!208 (Regex!3777 List!14285 C!7844) Unit!20537)

(declare-fun head!2585 (List!14285) C!7844)

(assert (=> b!1399667 (= lt!466516 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!208 (regex!2463 (rule!4226 t2!34)) lt!466513 (head!2585 lt!466513)))))

(assert (=> b!1399667 false))

(declare-fun e!893676 () Bool)

(declare-fun b!1399668 () Bool)

(declare-fun tp!398488 () Bool)

(declare-fun inv!18536 (String!17001) Bool)

(declare-fun inv!18540 (TokenValueInjection!4766) Bool)

(assert (=> b!1399668 (= e!893684 (and tp!398488 (inv!18536 (tag!2725 (h!19621 rules!2550))) (inv!18540 (transformation!2463 (h!19621 rules!2550))) e!893676))))

(declare-fun b!1399669 () Bool)

(declare-fun tp!398479 () Bool)

(declare-fun e!893697 () Bool)

(assert (=> b!1399669 (= e!893695 (and (inv!21 (value!79828 t2!34)) e!893697 tp!398479))))

(declare-fun tp!398482 () Bool)

(declare-fun b!1399670 () Bool)

(assert (=> b!1399670 (= e!893672 (and tp!398482 (inv!18536 (tag!2725 (rule!4226 t1!34))) (inv!18540 (transformation!2463 (rule!4226 t1!34))) e!893685))))

(declare-fun b!1399671 () Bool)

(declare-fun res!632781 () Bool)

(assert (=> b!1399671 (=> (not res!632781) (not e!893675))))

(declare-fun separableTokensPredicate!441 (LexerInterface!2158 Token!4588 Token!4588 List!14286) Bool)

(assert (=> b!1399671 (= res!632781 (not (separableTokensPredicate!441 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1399672 () Bool)

(assert (=> b!1399672 (= e!893673 e!893682)))

(declare-fun res!632793 () Bool)

(assert (=> b!1399672 (=> res!632793 e!893682)))

(declare-fun lt!466529 () List!14287)

(assert (=> b!1399672 (= res!632793 (not (= (list!5541 (_1!7805 lt!466514)) lt!466529)))))

(assert (=> b!1399672 (= lt!466529 (Cons!14221 t1!34 Nil!14221))))

(declare-fun lt!466517 () BalanceConc!9312)

(assert (=> b!1399672 (= lt!466514 (lex!983 thiss!19762 rules!2550 lt!466517))))

(assert (=> b!1399672 (= lt!466517 (print!922 thiss!19762 (singletonSeq!1122 t1!34)))))

(declare-fun getWitness!459 (List!14286 Int) Rule!4726)

(assert (=> b!1399672 (= lt!466511 (getWitness!459 rules!2550 lambda!61184))))

(declare-fun b!1399673 () Bool)

(declare-fun Unit!20542 () Unit!20537)

(assert (=> b!1399673 (= e!893688 Unit!20542)))

(declare-fun lt!466525 () Unit!20537)

(assert (=> b!1399673 (= lt!466525 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!208 (regex!2463 (rule!4226 t1!34)) lt!466531 (head!2585 lt!466531)))))

(assert (=> b!1399673 false))

(declare-fun tp!398484 () Bool)

(declare-fun b!1399674 () Bool)

(assert (=> b!1399674 (= e!893697 (and tp!398484 (inv!18536 (tag!2725 (rule!4226 t2!34))) (inv!18540 (transformation!2463 (rule!4226 t2!34))) e!893696))))

(declare-fun b!1399675 () Bool)

(declare-fun res!632766 () Bool)

(assert (=> b!1399675 (=> (not res!632766) (not e!893675))))

(declare-fun sepAndNonSepRulesDisjointChars!836 (List!14286 List!14286) Bool)

(assert (=> b!1399675 (= res!632766 (sepAndNonSepRulesDisjointChars!836 rules!2550 rules!2550))))

(declare-fun b!1399676 () Bool)

(declare-fun res!632788 () Bool)

(assert (=> b!1399676 (=> res!632788 e!893682)))

(assert (=> b!1399676 (= res!632788 (not (contains!2772 rules!2550 (rule!4226 t1!34))))))

(declare-fun b!1399677 () Bool)

(assert (=> b!1399677 (= e!893679 e!893689)))

(declare-fun res!632780 () Bool)

(assert (=> b!1399677 (=> res!632780 e!893689)))

(declare-fun lt!466528 () Bool)

(assert (=> b!1399677 (= res!632780 lt!466528)))

(declare-fun lt!466504 () Unit!20537)

(assert (=> b!1399677 (= lt!466504 e!893688)))

(declare-fun c!230302 () Bool)

(assert (=> b!1399677 (= c!230302 lt!466528)))

(assert (=> b!1399677 (= lt!466528 (not (contains!2771 (usedCharacters!274 (regex!2463 (rule!4226 t1!34))) lt!466524)))))

(assert (=> b!1399678 (= e!893676 (and tp!398486 tp!398478))))

(declare-fun b!1399679 () Bool)

(declare-fun res!632768 () Bool)

(assert (=> b!1399679 (=> (not res!632768) (not e!893698))))

(declare-fun isEmpty!8641 (List!14286) Bool)

(assert (=> b!1399679 (= res!632768 (not (isEmpty!8641 rules!2550)))))

(assert (=> b!1399680 (= e!893700 e!893687)))

(declare-fun res!632775 () Bool)

(assert (=> b!1399680 (=> res!632775 e!893687)))

(declare-fun exists!571 (List!14288 Int) Bool)

(assert (=> b!1399680 (= res!632775 (not (exists!571 (map!3155 rules!2550 lambda!61182) lambda!61183)))))

(declare-fun lt!466506 () List!14288)

(assert (=> b!1399680 (exists!571 lt!466506 lambda!61183)))

(declare-fun lt!466519 () Unit!20537)

(declare-fun matchRGenUnionSpec!188 (Regex!3777 List!14288 List!14285) Unit!20537)

(assert (=> b!1399680 (= lt!466519 (matchRGenUnionSpec!188 lt!466509 lt!466506 lt!466503))))

(assert (=> b!1399680 (= lt!466506 (map!3155 rules!2550 lambda!61182))))

(declare-fun b!1399681 () Bool)

(declare-fun res!632762 () Bool)

(assert (=> b!1399681 (=> res!632762 e!893682)))

(assert (=> b!1399681 (= res!632762 (not (= (lexList!672 thiss!19762 rules!2550 (list!5542 lt!466517)) (tuple2!13841 lt!466529 Nil!14219))))))

(declare-fun b!1399682 () Bool)

(declare-fun res!632777 () Bool)

(assert (=> b!1399682 (=> res!632777 e!893692)))

(assert (=> b!1399682 (= res!632777 (not (isEmpty!8640 (_2!7805 lt!466518))))))

(declare-fun b!1399683 () Bool)

(declare-fun res!632784 () Bool)

(assert (=> b!1399683 (=> res!632784 e!893679)))

(assert (=> b!1399683 (= res!632784 (not (matchR!1768 (regex!2463 (rule!4226 t2!34)) lt!466513)))))

(assert (= (and start!127506 res!632782) b!1399679))

(assert (= (and b!1399679 res!632768) b!1399662))

(assert (= (and b!1399662 res!632794) b!1399653))

(assert (= (and b!1399653 res!632795) b!1399638))

(assert (= (and b!1399638 res!632787) b!1399649))

(assert (= (and b!1399649 res!632798) b!1399665))

(assert (= (and b!1399665 res!632785) b!1399675))

(assert (= (and b!1399675 res!632766) b!1399671))

(assert (= (and b!1399671 res!632781) b!1399664))

(assert (= (and b!1399664 res!632783) b!1399657))

(assert (= (and b!1399657 (not res!632791)) b!1399639))

(assert (= (and b!1399639 (not res!632765)) b!1399644))

(assert (= (and b!1399644 (not res!632790)) b!1399659))

(assert (= (and b!1399659 (not res!632774)) b!1399650))

(assert (= (and b!1399650 (not res!632764)) b!1399661))

(assert (= (and b!1399661 (not res!632767)) b!1399643))

(assert (= (and b!1399643 (not res!632792)) b!1399680))

(assert (= (and b!1399680 (not res!632775)) b!1399666))

(assert (= (and b!1399666 (not res!632772)) b!1399646))

(assert (= (and b!1399646 (not res!632770)) b!1399672))

(assert (= (and b!1399672 (not res!632793)) b!1399648))

(assert (= (and b!1399648 (not res!632771)) b!1399681))

(assert (= (and b!1399681 (not res!632762)) b!1399655))

(assert (= (and b!1399655 (not res!632786)) b!1399676))

(assert (= (and b!1399676 (not res!632788)) b!1399635))

(assert (= (and b!1399635 (not res!632773)) b!1399682))

(assert (= (and b!1399682 (not res!632777)) b!1399640))

(assert (= (and b!1399640 (not res!632779)) b!1399660))

(assert (= (and b!1399660 (not res!632796)) b!1399654))

(assert (= (and b!1399654 (not res!632778)) b!1399645))

(assert (= (and b!1399645 (not res!632769)) b!1399663))

(assert (= (and b!1399663 (not res!632789)) b!1399683))

(assert (= (and b!1399683 (not res!632784)) b!1399677))

(assert (= (and b!1399677 c!230302) b!1399673))

(assert (= (and b!1399677 (not c!230302)) b!1399656))

(assert (= (and b!1399677 (not res!632780)) b!1399641))

(assert (= (and b!1399641 c!230303) b!1399667))

(assert (= (and b!1399641 (not c!230303)) b!1399647))

(assert (= (and b!1399641 (not res!632797)) b!1399636))

(assert (= (and b!1399636 (not res!632776)) b!1399634))

(assert (= (and b!1399634 (not res!632763)) b!1399637))

(assert (= b!1399668 b!1399678))

(assert (= b!1399651 b!1399668))

(assert (= (and start!127506 ((_ is Cons!14220) rules!2550)) b!1399651))

(assert (= b!1399670 b!1399652))

(assert (= b!1399642 b!1399670))

(assert (= start!127506 b!1399642))

(assert (= b!1399674 b!1399658))

(assert (= b!1399669 b!1399674))

(assert (= start!127506 b!1399669))

(declare-fun m!1576437 () Bool)

(assert (=> b!1399679 m!1576437))

(declare-fun m!1576439 () Bool)

(assert (=> b!1399654 m!1576439))

(declare-fun m!1576441 () Bool)

(assert (=> b!1399659 m!1576441))

(declare-fun m!1576443 () Bool)

(assert (=> b!1399674 m!1576443))

(declare-fun m!1576445 () Bool)

(assert (=> b!1399674 m!1576445))

(declare-fun m!1576447 () Bool)

(assert (=> b!1399660 m!1576447))

(declare-fun m!1576449 () Bool)

(assert (=> b!1399660 m!1576449))

(declare-fun m!1576451 () Bool)

(assert (=> b!1399644 m!1576451))

(declare-fun m!1576453 () Bool)

(assert (=> b!1399644 m!1576453))

(declare-fun m!1576455 () Bool)

(assert (=> b!1399682 m!1576455))

(declare-fun m!1576457 () Bool)

(assert (=> b!1399642 m!1576457))

(declare-fun m!1576459 () Bool)

(assert (=> start!127506 m!1576459))

(declare-fun m!1576461 () Bool)

(assert (=> start!127506 m!1576461))

(declare-fun m!1576463 () Bool)

(assert (=> b!1399670 m!1576463))

(declare-fun m!1576465 () Bool)

(assert (=> b!1399670 m!1576465))

(declare-fun m!1576467 () Bool)

(assert (=> b!1399662 m!1576467))

(declare-fun m!1576469 () Bool)

(assert (=> b!1399657 m!1576469))

(assert (=> b!1399657 m!1576469))

(declare-fun m!1576471 () Bool)

(assert (=> b!1399657 m!1576471))

(declare-fun m!1576473 () Bool)

(assert (=> b!1399653 m!1576473))

(declare-fun m!1576475 () Bool)

(assert (=> b!1399669 m!1576475))

(declare-fun m!1576477 () Bool)

(assert (=> b!1399666 m!1576477))

(assert (=> b!1399666 m!1576477))

(declare-fun m!1576479 () Bool)

(assert (=> b!1399666 m!1576479))

(assert (=> b!1399666 m!1576477))

(assert (=> b!1399666 m!1576477))

(declare-fun m!1576481 () Bool)

(assert (=> b!1399666 m!1576481))

(declare-fun m!1576483 () Bool)

(assert (=> b!1399664 m!1576483))

(declare-fun m!1576485 () Bool)

(assert (=> b!1399664 m!1576485))

(declare-fun m!1576487 () Bool)

(assert (=> b!1399664 m!1576487))

(declare-fun m!1576489 () Bool)

(assert (=> b!1399664 m!1576489))

(declare-fun m!1576491 () Bool)

(assert (=> b!1399664 m!1576491))

(declare-fun m!1576493 () Bool)

(assert (=> b!1399664 m!1576493))

(declare-fun m!1576495 () Bool)

(assert (=> b!1399663 m!1576495))

(declare-fun m!1576497 () Bool)

(assert (=> b!1399663 m!1576497))

(declare-fun m!1576499 () Bool)

(assert (=> b!1399663 m!1576499))

(declare-fun m!1576501 () Bool)

(assert (=> b!1399663 m!1576501))

(declare-fun m!1576503 () Bool)

(assert (=> b!1399646 m!1576503))

(assert (=> b!1399646 m!1576503))

(declare-fun m!1576505 () Bool)

(assert (=> b!1399646 m!1576505))

(declare-fun m!1576507 () Bool)

(assert (=> b!1399641 m!1576507))

(assert (=> b!1399641 m!1576507))

(declare-fun m!1576509 () Bool)

(assert (=> b!1399641 m!1576509))

(declare-fun m!1576511 () Bool)

(assert (=> b!1399667 m!1576511))

(assert (=> b!1399667 m!1576511))

(declare-fun m!1576513 () Bool)

(assert (=> b!1399667 m!1576513))

(declare-fun m!1576515 () Bool)

(assert (=> b!1399640 m!1576515))

(assert (=> b!1399640 m!1576515))

(declare-fun m!1576517 () Bool)

(assert (=> b!1399640 m!1576517))

(declare-fun m!1576519 () Bool)

(assert (=> b!1399648 m!1576519))

(declare-fun m!1576521 () Bool)

(assert (=> b!1399668 m!1576521))

(declare-fun m!1576523 () Bool)

(assert (=> b!1399668 m!1576523))

(declare-fun m!1576525 () Bool)

(assert (=> b!1399645 m!1576525))

(declare-fun m!1576527 () Bool)

(assert (=> b!1399643 m!1576527))

(declare-fun m!1576529 () Bool)

(assert (=> b!1399634 m!1576529))

(declare-fun m!1576531 () Bool)

(assert (=> b!1399634 m!1576531))

(assert (=> b!1399634 m!1576531))

(declare-fun m!1576533 () Bool)

(assert (=> b!1399634 m!1576533))

(declare-fun m!1576535 () Bool)

(assert (=> b!1399634 m!1576535))

(assert (=> b!1399680 m!1576477))

(assert (=> b!1399680 m!1576477))

(declare-fun m!1576537 () Bool)

(assert (=> b!1399680 m!1576537))

(declare-fun m!1576539 () Bool)

(assert (=> b!1399680 m!1576539))

(assert (=> b!1399680 m!1576477))

(declare-fun m!1576541 () Bool)

(assert (=> b!1399680 m!1576541))

(declare-fun m!1576543 () Bool)

(assert (=> b!1399650 m!1576543))

(declare-fun m!1576545 () Bool)

(assert (=> b!1399661 m!1576545))

(declare-fun m!1576547 () Bool)

(assert (=> b!1399638 m!1576547))

(declare-fun m!1576549 () Bool)

(assert (=> b!1399673 m!1576549))

(assert (=> b!1399673 m!1576549))

(declare-fun m!1576551 () Bool)

(assert (=> b!1399673 m!1576551))

(declare-fun m!1576553 () Bool)

(assert (=> b!1399677 m!1576553))

(assert (=> b!1399677 m!1576553))

(declare-fun m!1576555 () Bool)

(assert (=> b!1399677 m!1576555))

(declare-fun m!1576557 () Bool)

(assert (=> b!1399655 m!1576557))

(declare-fun m!1576559 () Bool)

(assert (=> b!1399675 m!1576559))

(declare-fun m!1576561 () Bool)

(assert (=> b!1399683 m!1576561))

(declare-fun m!1576563 () Bool)

(assert (=> b!1399665 m!1576563))

(declare-fun m!1576565 () Bool)

(assert (=> b!1399665 m!1576565))

(declare-fun m!1576567 () Bool)

(assert (=> b!1399635 m!1576567))

(declare-fun m!1576569 () Bool)

(assert (=> b!1399635 m!1576569))

(declare-fun m!1576571 () Bool)

(assert (=> b!1399635 m!1576571))

(assert (=> b!1399635 m!1576571))

(declare-fun m!1576573 () Bool)

(assert (=> b!1399635 m!1576573))

(declare-fun m!1576575 () Bool)

(assert (=> b!1399671 m!1576575))

(declare-fun m!1576577 () Bool)

(assert (=> b!1399676 m!1576577))

(declare-fun m!1576579 () Bool)

(assert (=> b!1399639 m!1576579))

(assert (=> b!1399639 m!1576579))

(declare-fun m!1576581 () Bool)

(assert (=> b!1399639 m!1576581))

(declare-fun m!1576583 () Bool)

(assert (=> b!1399639 m!1576583))

(declare-fun m!1576585 () Bool)

(assert (=> b!1399637 m!1576585))

(assert (=> b!1399637 m!1576585))

(declare-fun m!1576587 () Bool)

(assert (=> b!1399637 m!1576587))

(declare-fun m!1576589 () Bool)

(assert (=> b!1399672 m!1576589))

(declare-fun m!1576591 () Bool)

(assert (=> b!1399672 m!1576591))

(declare-fun m!1576593 () Bool)

(assert (=> b!1399672 m!1576593))

(assert (=> b!1399672 m!1576591))

(declare-fun m!1576595 () Bool)

(assert (=> b!1399672 m!1576595))

(declare-fun m!1576597 () Bool)

(assert (=> b!1399672 m!1576597))

(declare-fun m!1576599 () Bool)

(assert (=> b!1399681 m!1576599))

(assert (=> b!1399681 m!1576599))

(declare-fun m!1576601 () Bool)

(assert (=> b!1399681 m!1576601))

(check-sat (not b_next!34791) (not b!1399683) b_and!93723 (not b!1399668) (not b!1399662) (not b!1399639) (not b!1399671) (not b!1399653) (not b!1399675) (not b!1399670) (not b!1399646) (not b!1399680) (not b!1399643) (not b_next!34793) (not b!1399640) (not b!1399657) b_and!93717 (not b!1399681) b_and!93715 (not b!1399679) (not b_next!34789) (not b_next!34795) (not b!1399674) b_and!93719 (not b!1399634) (not b!1399661) (not start!127506) (not b!1399665) (not b!1399676) (not b!1399660) (not b!1399638) (not b!1399642) (not b!1399673) (not b!1399664) b_and!93725 (not b!1399677) (not b!1399659) (not b_next!34787) (not b!1399663) (not b!1399635) (not b!1399667) (not b_next!34797) (not b!1399641) (not b!1399651) (not b!1399637) (not b!1399682) (not b!1399648) (not b!1399655) b_and!93721 (not b!1399669) (not b!1399645) (not b!1399650) (not b!1399666) (not b!1399672) (not b!1399644) (not b!1399654))
(check-sat (not b_next!34793) (not b_next!34791) b_and!93717 (not b_next!34795) b_and!93719 b_and!93725 (not b_next!34787) (not b_next!34797) b_and!93721 b_and!93723 b_and!93715 (not b_next!34789))
