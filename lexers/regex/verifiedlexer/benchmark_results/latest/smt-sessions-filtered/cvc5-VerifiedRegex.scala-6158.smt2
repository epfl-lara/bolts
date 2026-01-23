; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!297652 () Bool)

(assert start!297652)

(declare-fun b!3177921 () Bool)

(declare-fun b_free!83533 () Bool)

(declare-fun b_next!84237 () Bool)

(assert (=> b!3177921 (= b_free!83533 (not b_next!84237))))

(declare-fun tp!1005132 () Bool)

(declare-fun b_and!209827 () Bool)

(assert (=> b!3177921 (= tp!1005132 b_and!209827)))

(declare-fun b_free!83535 () Bool)

(declare-fun b_next!84239 () Bool)

(assert (=> b!3177921 (= b_free!83535 (not b_next!84239))))

(declare-fun tp!1005127 () Bool)

(declare-fun b_and!209829 () Bool)

(assert (=> b!3177921 (= tp!1005127 b_and!209829)))

(declare-fun b!3177915 () Bool)

(declare-fun b_free!83537 () Bool)

(declare-fun b_next!84241 () Bool)

(assert (=> b!3177915 (= b_free!83537 (not b_next!84241))))

(declare-fun tp!1005133 () Bool)

(declare-fun b_and!209831 () Bool)

(assert (=> b!3177915 (= tp!1005133 b_and!209831)))

(declare-fun b_free!83539 () Bool)

(declare-fun b_next!84243 () Bool)

(assert (=> b!3177915 (= b_free!83539 (not b_next!84243))))

(declare-fun tp!1005126 () Bool)

(declare-fun b_and!209833 () Bool)

(assert (=> b!3177915 (= tp!1005126 b_and!209833)))

(declare-fun b!3177923 () Bool)

(declare-fun b_free!83541 () Bool)

(declare-fun b_next!84245 () Bool)

(assert (=> b!3177923 (= b_free!83541 (not b_next!84245))))

(declare-fun tp!1005121 () Bool)

(declare-fun b_and!209835 () Bool)

(assert (=> b!3177923 (= tp!1005121 b_and!209835)))

(declare-fun b_free!83543 () Bool)

(declare-fun b_next!84247 () Bool)

(assert (=> b!3177923 (= b_free!83543 (not b_next!84247))))

(declare-fun tp!1005125 () Bool)

(declare-fun b_and!209837 () Bool)

(assert (=> b!3177923 (= tp!1005125 b_and!209837)))

(declare-datatypes ((C!19894 0))(
  ( (C!19895 (val!11995 Int)) )
))
(declare-datatypes ((Regex!9854 0))(
  ( (ElementMatch!9854 (c!534004 C!19894)) (Concat!15179 (regOne!20220 Regex!9854) (regTwo!20220 Regex!9854)) (EmptyExpr!9854) (Star!9854 (reg!10183 Regex!9854)) (EmptyLang!9854) (Union!9854 (regOne!20221 Regex!9854) (regTwo!20221 Regex!9854)) )
))
(declare-datatypes ((List!35756 0))(
  ( (Nil!35632) (Cons!35632 (h!41052 (_ BitVec 16)) (t!234859 List!35756)) )
))
(declare-datatypes ((TokenValue!5325 0))(
  ( (FloatLiteralValue!10650 (text!37720 List!35756)) (TokenValueExt!5324 (__x!22867 Int)) (Broken!26625 (value!165643 List!35756)) (Object!5448) (End!5325) (Def!5325) (Underscore!5325) (Match!5325) (Else!5325) (Error!5325) (Case!5325) (If!5325) (Extends!5325) (Abstract!5325) (Class!5325) (Val!5325) (DelimiterValue!10650 (del!5385 List!35756)) (KeywordValue!5331 (value!165644 List!35756)) (CommentValue!10650 (value!165645 List!35756)) (WhitespaceValue!10650 (value!165646 List!35756)) (IndentationValue!5325 (value!165647 List!35756)) (String!39960) (Int32!5325) (Broken!26626 (value!165648 List!35756)) (Boolean!5326) (Unit!50082) (OperatorValue!5328 (op!5385 List!35756)) (IdentifierValue!10650 (value!165649 List!35756)) (IdentifierValue!10651 (value!165650 List!35756)) (WhitespaceValue!10651 (value!165651 List!35756)) (True!10650) (False!10650) (Broken!26627 (value!165652 List!35756)) (Broken!26628 (value!165653 List!35756)) (True!10651) (RightBrace!5325) (RightBracket!5325) (Colon!5325) (Null!5325) (Comma!5325) (LeftBracket!5325) (False!10651) (LeftBrace!5325) (ImaginaryLiteralValue!5325 (text!37721 List!35756)) (StringLiteralValue!15975 (value!165654 List!35756)) (EOFValue!5325 (value!165655 List!35756)) (IdentValue!5325 (value!165656 List!35756)) (DelimiterValue!10651 (value!165657 List!35756)) (DedentValue!5325 (value!165658 List!35756)) (NewLineValue!5325 (value!165659 List!35756)) (IntegerValue!15975 (value!165660 (_ BitVec 32)) (text!37722 List!35756)) (IntegerValue!15976 (value!165661 Int) (text!37723 List!35756)) (Times!5325) (Or!5325) (Equal!5325) (Minus!5325) (Broken!26629 (value!165662 List!35756)) (And!5325) (Div!5325) (LessEqual!5325) (Mod!5325) (Concat!15180) (Not!5325) (Plus!5325) (SpaceValue!5325 (value!165663 List!35756)) (IntegerValue!15977 (value!165664 Int) (text!37724 List!35756)) (StringLiteralValue!15976 (text!37725 List!35756)) (FloatLiteralValue!10651 (text!37726 List!35756)) (BytesLiteralValue!5325 (value!165665 List!35756)) (CommentValue!10651 (value!165666 List!35756)) (StringLiteralValue!15977 (value!165667 List!35756)) (ErrorTokenValue!5325 (msg!5386 List!35756)) )
))
(declare-datatypes ((List!35757 0))(
  ( (Nil!35633) (Cons!35633 (h!41053 C!19894) (t!234860 List!35757)) )
))
(declare-datatypes ((IArray!21135 0))(
  ( (IArray!21136 (innerList!10625 List!35757)) )
))
(declare-datatypes ((Conc!10565 0))(
  ( (Node!10565 (left!27723 Conc!10565) (right!28053 Conc!10565) (csize!21360 Int) (cheight!10776 Int)) (Leaf!16724 (xs!13683 IArray!21135) (csize!21361 Int)) (Empty!10565) )
))
(declare-datatypes ((BalanceConc!20744 0))(
  ( (BalanceConc!20745 (c!534005 Conc!10565)) )
))
(declare-datatypes ((String!39961 0))(
  ( (String!39962 (value!165668 String)) )
))
(declare-datatypes ((TokenValueInjection!10078 0))(
  ( (TokenValueInjection!10079 (toValue!7155 Int) (toChars!7014 Int)) )
))
(declare-datatypes ((Rule!9990 0))(
  ( (Rule!9991 (regex!5095 Regex!9854) (tag!5599 String!39961) (isSeparator!5095 Bool) (transformation!5095 TokenValueInjection!10078)) )
))
(declare-datatypes ((Token!9556 0))(
  ( (Token!9557 (value!165669 TokenValue!5325) (rule!7505 Rule!9990) (size!26924 Int) (originalCharacters!5809 List!35757)) )
))
(declare-fun separatorToken!241 () Token!9556)

(declare-fun b!3177913 () Bool)

(declare-fun tp!1005123 () Bool)

(declare-fun e!1979446 () Bool)

(declare-fun e!1979452 () Bool)

(declare-fun inv!21 (TokenValue!5325) Bool)

(assert (=> b!3177913 (= e!1979446 (and (inv!21 (value!165669 separatorToken!241)) e!1979452 tp!1005123))))

(declare-fun b!3177914 () Bool)

(declare-fun res!1291129 () Bool)

(declare-fun e!1979444 () Bool)

(assert (=> b!3177914 (=> (not res!1291129) (not e!1979444))))

(assert (=> b!3177914 (= res!1291129 (isSeparator!5095 (rule!7505 separatorToken!241)))))

(declare-fun e!1979442 () Bool)

(assert (=> b!3177915 (= e!1979442 (and tp!1005133 tp!1005126))))

(declare-fun b!3177916 () Bool)

(declare-fun res!1291132 () Bool)

(assert (=> b!3177916 (=> (not res!1291132) (not e!1979444))))

(declare-datatypes ((List!35758 0))(
  ( (Nil!35634) (Cons!35634 (h!41054 Token!9556) (t!234861 List!35758)) )
))
(declare-fun tokens!494 () List!35758)

(assert (=> b!3177916 (= res!1291132 (and (not (is-Nil!35634 tokens!494)) (is-Nil!35634 (t!234861 tokens!494))))))

(declare-fun b!3177917 () Bool)

(declare-fun tp!1005131 () Bool)

(declare-datatypes ((List!35759 0))(
  ( (Nil!35635) (Cons!35635 (h!41055 Rule!9990) (t!234862 List!35759)) )
))
(declare-fun rules!2135 () List!35759)

(declare-fun e!1979456 () Bool)

(declare-fun inv!48490 (String!39961) Bool)

(declare-fun inv!48493 (TokenValueInjection!10078) Bool)

(assert (=> b!3177917 (= e!1979456 (and tp!1005131 (inv!48490 (tag!5599 (h!41055 rules!2135))) (inv!48493 (transformation!5095 (h!41055 rules!2135))) e!1979442))))

(declare-fun b!3177918 () Bool)

(declare-fun res!1291131 () Bool)

(assert (=> b!3177918 (=> (not res!1291131) (not e!1979444))))

(declare-datatypes ((LexerInterface!4684 0))(
  ( (LexerInterfaceExt!4681 (__x!22868 Int)) (Lexer!4682) )
))
(declare-fun thiss!18206 () LexerInterface!4684)

(declare-datatypes ((IArray!21137 0))(
  ( (IArray!21138 (innerList!10626 List!35758)) )
))
(declare-datatypes ((Conc!10566 0))(
  ( (Node!10566 (left!27724 Conc!10566) (right!28054 Conc!10566) (csize!21362 Int) (cheight!10777 Int)) (Leaf!16725 (xs!13684 IArray!21137) (csize!21363 Int)) (Empty!10566) )
))
(declare-datatypes ((BalanceConc!20746 0))(
  ( (BalanceConc!20747 (c!534006 Conc!10566)) )
))
(declare-fun rulesProduceEachTokenIndividually!1135 (LexerInterface!4684 List!35759 BalanceConc!20746) Bool)

(declare-fun seqFromList!3275 (List!35758) BalanceConc!20746)

(assert (=> b!3177918 (= res!1291131 (rulesProduceEachTokenIndividually!1135 thiss!18206 rules!2135 (seqFromList!3275 tokens!494)))))

(declare-fun b!3177919 () Bool)

(assert (=> b!3177919 (= e!1979444 (not true))))

(declare-fun lt!1068155 () BalanceConc!20746)

(declare-fun print!1751 (LexerInterface!4684 BalanceConc!20746) BalanceConc!20744)

(declare-fun printTailRec!1183 (LexerInterface!4684 BalanceConc!20746 Int BalanceConc!20744) BalanceConc!20744)

(assert (=> b!3177919 (= (print!1751 thiss!18206 lt!1068155) (printTailRec!1183 thiss!18206 lt!1068155 0 (BalanceConc!20745 Empty!10565)))))

(declare-fun singletonSeq!2191 (Token!9556) BalanceConc!20746)

(assert (=> b!3177919 (= lt!1068155 (singletonSeq!2191 (h!41054 tokens!494)))))

(declare-fun b!3177920 () Bool)

(declare-fun res!1291130 () Bool)

(assert (=> b!3177920 (=> (not res!1291130) (not e!1979444))))

(declare-fun sepAndNonSepRulesDisjointChars!1289 (List!35759 List!35759) Bool)

(assert (=> b!3177920 (= res!1291130 (sepAndNonSepRulesDisjointChars!1289 rules!2135 rules!2135))))

(declare-fun e!1979443 () Bool)

(assert (=> b!3177921 (= e!1979443 (and tp!1005132 tp!1005127))))

(declare-fun res!1291135 () Bool)

(assert (=> start!297652 (=> (not res!1291135) (not e!1979444))))

(assert (=> start!297652 (= res!1291135 (is-Lexer!4682 thiss!18206))))

(assert (=> start!297652 e!1979444))

(assert (=> start!297652 true))

(declare-fun e!1979441 () Bool)

(assert (=> start!297652 e!1979441))

(declare-fun e!1979447 () Bool)

(assert (=> start!297652 e!1979447))

(declare-fun inv!48494 (Token!9556) Bool)

(assert (=> start!297652 (and (inv!48494 separatorToken!241) e!1979446)))

(declare-fun tp!1005130 () Bool)

(declare-fun e!1979455 () Bool)

(declare-fun b!3177922 () Bool)

(declare-fun e!1979449 () Bool)

(assert (=> b!3177922 (= e!1979449 (and (inv!21 (value!165669 (h!41054 tokens!494))) e!1979455 tp!1005130))))

(declare-fun e!1979454 () Bool)

(assert (=> b!3177923 (= e!1979454 (and tp!1005121 tp!1005125))))

(declare-fun b!3177924 () Bool)

(declare-fun res!1291134 () Bool)

(assert (=> b!3177924 (=> (not res!1291134) (not e!1979444))))

(declare-fun rulesProduceIndividualToken!2176 (LexerInterface!4684 List!35759 Token!9556) Bool)

(assert (=> b!3177924 (= res!1291134 (rulesProduceIndividualToken!2176 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3177925 () Bool)

(declare-fun res!1291133 () Bool)

(assert (=> b!3177925 (=> (not res!1291133) (not e!1979444))))

(declare-fun lambda!116272 () Int)

(declare-fun forall!7203 (List!35758 Int) Bool)

(assert (=> b!3177925 (= res!1291133 (forall!7203 tokens!494 lambda!116272))))

(declare-fun b!3177926 () Bool)

(declare-fun res!1291136 () Bool)

(assert (=> b!3177926 (=> (not res!1291136) (not e!1979444))))

(declare-fun isEmpty!19776 (List!35759) Bool)

(assert (=> b!3177926 (= res!1291136 (not (isEmpty!19776 rules!2135)))))

(declare-fun b!3177927 () Bool)

(declare-fun tp!1005129 () Bool)

(assert (=> b!3177927 (= e!1979447 (and (inv!48494 (h!41054 tokens!494)) e!1979449 tp!1005129))))

(declare-fun b!3177928 () Bool)

(declare-fun res!1291128 () Bool)

(assert (=> b!3177928 (=> (not res!1291128) (not e!1979444))))

(declare-fun rulesInvariant!4081 (LexerInterface!4684 List!35759) Bool)

(assert (=> b!3177928 (= res!1291128 (rulesInvariant!4081 thiss!18206 rules!2135))))

(declare-fun tp!1005124 () Bool)

(declare-fun b!3177929 () Bool)

(assert (=> b!3177929 (= e!1979455 (and tp!1005124 (inv!48490 (tag!5599 (rule!7505 (h!41054 tokens!494)))) (inv!48493 (transformation!5095 (rule!7505 (h!41054 tokens!494)))) e!1979443))))

(declare-fun b!3177930 () Bool)

(declare-fun tp!1005128 () Bool)

(assert (=> b!3177930 (= e!1979452 (and tp!1005128 (inv!48490 (tag!5599 (rule!7505 separatorToken!241))) (inv!48493 (transformation!5095 (rule!7505 separatorToken!241))) e!1979454))))

(declare-fun b!3177931 () Bool)

(declare-fun tp!1005122 () Bool)

(assert (=> b!3177931 (= e!1979441 (and e!1979456 tp!1005122))))

(assert (= (and start!297652 res!1291135) b!3177926))

(assert (= (and b!3177926 res!1291136) b!3177928))

(assert (= (and b!3177928 res!1291128) b!3177918))

(assert (= (and b!3177918 res!1291131) b!3177924))

(assert (= (and b!3177924 res!1291134) b!3177914))

(assert (= (and b!3177914 res!1291129) b!3177925))

(assert (= (and b!3177925 res!1291133) b!3177920))

(assert (= (and b!3177920 res!1291130) b!3177916))

(assert (= (and b!3177916 res!1291132) b!3177919))

(assert (= b!3177917 b!3177915))

(assert (= b!3177931 b!3177917))

(assert (= (and start!297652 (is-Cons!35635 rules!2135)) b!3177931))

(assert (= b!3177929 b!3177921))

(assert (= b!3177922 b!3177929))

(assert (= b!3177927 b!3177922))

(assert (= (and start!297652 (is-Cons!35634 tokens!494)) b!3177927))

(assert (= b!3177930 b!3177923))

(assert (= b!3177913 b!3177930))

(assert (= start!297652 b!3177913))

(declare-fun m!3434479 () Bool)

(assert (=> b!3177918 m!3434479))

(assert (=> b!3177918 m!3434479))

(declare-fun m!3434481 () Bool)

(assert (=> b!3177918 m!3434481))

(declare-fun m!3434483 () Bool)

(assert (=> b!3177919 m!3434483))

(declare-fun m!3434485 () Bool)

(assert (=> b!3177919 m!3434485))

(declare-fun m!3434487 () Bool)

(assert (=> b!3177919 m!3434487))

(declare-fun m!3434489 () Bool)

(assert (=> start!297652 m!3434489))

(declare-fun m!3434491 () Bool)

(assert (=> b!3177924 m!3434491))

(declare-fun m!3434493 () Bool)

(assert (=> b!3177927 m!3434493))

(declare-fun m!3434495 () Bool)

(assert (=> b!3177926 m!3434495))

(declare-fun m!3434497 () Bool)

(assert (=> b!3177928 m!3434497))

(declare-fun m!3434499 () Bool)

(assert (=> b!3177925 m!3434499))

(declare-fun m!3434501 () Bool)

(assert (=> b!3177922 m!3434501))

(declare-fun m!3434503 () Bool)

(assert (=> b!3177920 m!3434503))

(declare-fun m!3434505 () Bool)

(assert (=> b!3177913 m!3434505))

(declare-fun m!3434507 () Bool)

(assert (=> b!3177930 m!3434507))

(declare-fun m!3434509 () Bool)

(assert (=> b!3177930 m!3434509))

(declare-fun m!3434511 () Bool)

(assert (=> b!3177929 m!3434511))

(declare-fun m!3434513 () Bool)

(assert (=> b!3177929 m!3434513))

(declare-fun m!3434515 () Bool)

(assert (=> b!3177917 m!3434515))

(declare-fun m!3434517 () Bool)

(assert (=> b!3177917 m!3434517))

(push 1)

(assert (not b!3177930))

(assert (not b!3177926))

(assert (not b!3177925))

(assert b_and!209827)

(assert (not b_next!84241))

(assert (not b!3177922))

(assert (not b_next!84237))

(assert (not b!3177913))

(assert (not b!3177928))

(assert (not b!3177924))

(assert b_and!209837)

(assert (not b_next!84243))

(assert (not b!3177929))

(assert (not b_next!84239))

(assert (not b!3177917))

(assert (not b!3177927))

(assert (not b!3177919))

(assert (not start!297652))

(assert b_and!209831)

(assert (not b!3177918))

(assert b_and!209833)

(assert (not b!3177920))

(assert (not b_next!84247))

(assert (not b_next!84245))

(assert b_and!209829)

(assert (not b!3177931))

(assert b_and!209835)

(check-sat)

(pop 1)

(push 1)

(assert b_and!209837)

(assert (not b_next!84243))

(assert (not b_next!84239))

(assert b_and!209831)

(assert b_and!209827)

(assert b_and!209833)

(assert (not b_next!84241))

(assert b_and!209835)

(assert (not b_next!84237))

(assert (not b_next!84247))

(assert (not b_next!84245))

(assert b_and!209829)

(check-sat)

(pop 1)

