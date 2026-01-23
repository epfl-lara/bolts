; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!395076 () Bool)

(assert start!395076)

(declare-fun b!4151050 () Bool)

(declare-fun b_free!118623 () Bool)

(declare-fun b_next!119327 () Bool)

(assert (=> b!4151050 (= b_free!118623 (not b_next!119327))))

(declare-fun tp!1265254 () Bool)

(declare-fun b_and!322877 () Bool)

(assert (=> b!4151050 (= tp!1265254 b_and!322877)))

(declare-fun b_free!118625 () Bool)

(declare-fun b_next!119329 () Bool)

(assert (=> b!4151050 (= b_free!118625 (not b_next!119329))))

(declare-fun tp!1265251 () Bool)

(declare-fun b_and!322879 () Bool)

(assert (=> b!4151050 (= tp!1265251 b_and!322879)))

(declare-fun b!4151042 () Bool)

(declare-fun b_free!118627 () Bool)

(declare-fun b_next!119331 () Bool)

(assert (=> b!4151042 (= b_free!118627 (not b_next!119331))))

(declare-fun tp!1265259 () Bool)

(declare-fun b_and!322881 () Bool)

(assert (=> b!4151042 (= tp!1265259 b_and!322881)))

(declare-fun b_free!118629 () Bool)

(declare-fun b_next!119333 () Bool)

(assert (=> b!4151042 (= b_free!118629 (not b_next!119333))))

(declare-fun tp!1265253 () Bool)

(declare-fun b_and!322883 () Bool)

(assert (=> b!4151042 (= tp!1265253 b_and!322883)))

(declare-fun b!4151041 () Bool)

(declare-fun b_free!118631 () Bool)

(declare-fun b_next!119335 () Bool)

(assert (=> b!4151041 (= b_free!118631 (not b_next!119335))))

(declare-fun tp!1265258 () Bool)

(declare-fun b_and!322885 () Bool)

(assert (=> b!4151041 (= tp!1265258 b_and!322885)))

(declare-fun b_free!118633 () Bool)

(declare-fun b_next!119337 () Bool)

(assert (=> b!4151041 (= b_free!118633 (not b_next!119337))))

(declare-fun tp!1265262 () Bool)

(declare-fun b_and!322887 () Bool)

(assert (=> b!4151041 (= tp!1265262 b_and!322887)))

(declare-datatypes ((List!45208 0))(
  ( (Nil!45084) (Cons!45084 (h!50504 (_ BitVec 16)) (t!343143 List!45208)) )
))
(declare-datatypes ((TokenValue!7655 0))(
  ( (FloatLiteralValue!15310 (text!54030 List!45208)) (TokenValueExt!7654 (__x!27527 Int)) (Broken!38275 (value!232142 List!45208)) (Object!7778) (End!7655) (Def!7655) (Underscore!7655) (Match!7655) (Else!7655) (Error!7655) (Case!7655) (If!7655) (Extends!7655) (Abstract!7655) (Class!7655) (Val!7655) (DelimiterValue!15310 (del!7715 List!45208)) (KeywordValue!7661 (value!232143 List!45208)) (CommentValue!15310 (value!232144 List!45208)) (WhitespaceValue!15310 (value!232145 List!45208)) (IndentationValue!7655 (value!232146 List!45208)) (String!52026) (Int32!7655) (Broken!38276 (value!232147 List!45208)) (Boolean!7656) (Unit!64357) (OperatorValue!7658 (op!7715 List!45208)) (IdentifierValue!15310 (value!232148 List!45208)) (IdentifierValue!15311 (value!232149 List!45208)) (WhitespaceValue!15311 (value!232150 List!45208)) (True!15310) (False!15310) (Broken!38277 (value!232151 List!45208)) (Broken!38278 (value!232152 List!45208)) (True!15311) (RightBrace!7655) (RightBracket!7655) (Colon!7655) (Null!7655) (Comma!7655) (LeftBracket!7655) (False!15311) (LeftBrace!7655) (ImaginaryLiteralValue!7655 (text!54031 List!45208)) (StringLiteralValue!22965 (value!232153 List!45208)) (EOFValue!7655 (value!232154 List!45208)) (IdentValue!7655 (value!232155 List!45208)) (DelimiterValue!15311 (value!232156 List!45208)) (DedentValue!7655 (value!232157 List!45208)) (NewLineValue!7655 (value!232158 List!45208)) (IntegerValue!22965 (value!232159 (_ BitVec 32)) (text!54032 List!45208)) (IntegerValue!22966 (value!232160 Int) (text!54033 List!45208)) (Times!7655) (Or!7655) (Equal!7655) (Minus!7655) (Broken!38279 (value!232161 List!45208)) (And!7655) (Div!7655) (LessEqual!7655) (Mod!7655) (Concat!19985) (Not!7655) (Plus!7655) (SpaceValue!7655 (value!232162 List!45208)) (IntegerValue!22967 (value!232163 Int) (text!54034 List!45208)) (StringLiteralValue!22966 (text!54035 List!45208)) (FloatLiteralValue!15311 (text!54036 List!45208)) (BytesLiteralValue!7655 (value!232164 List!45208)) (CommentValue!15311 (value!232165 List!45208)) (StringLiteralValue!22967 (value!232166 List!45208)) (ErrorTokenValue!7655 (msg!7716 List!45208)) )
))
(declare-datatypes ((C!24846 0))(
  ( (C!24847 (val!14533 Int)) )
))
(declare-datatypes ((List!45209 0))(
  ( (Nil!45085) (Cons!45085 (h!50505 C!24846) (t!343144 List!45209)) )
))
(declare-datatypes ((IArray!27277 0))(
  ( (IArray!27278 (innerList!13696 List!45209)) )
))
(declare-datatypes ((Conc!13636 0))(
  ( (Node!13636 (left!33759 Conc!13636) (right!34089 Conc!13636) (csize!27502 Int) (cheight!13847 Int)) (Leaf!21064 (xs!16942 IArray!27277) (csize!27503 Int)) (Empty!13636) )
))
(declare-datatypes ((BalanceConc!26866 0))(
  ( (BalanceConc!26867 (c!710935 Conc!13636)) )
))
(declare-datatypes ((Regex!12330 0))(
  ( (ElementMatch!12330 (c!710936 C!24846)) (Concat!19986 (regOne!25172 Regex!12330) (regTwo!25172 Regex!12330)) (EmptyExpr!12330) (Star!12330 (reg!12659 Regex!12330)) (EmptyLang!12330) (Union!12330 (regOne!25173 Regex!12330) (regTwo!25173 Regex!12330)) )
))
(declare-datatypes ((String!52027 0))(
  ( (String!52028 (value!232167 String)) )
))
(declare-datatypes ((TokenValueInjection!14738 0))(
  ( (TokenValueInjection!14739 (toValue!10089 Int) (toChars!9948 Int)) )
))
(declare-datatypes ((Rule!14650 0))(
  ( (Rule!14651 (regex!7425 Regex!12330) (tag!8285 String!52027) (isSeparator!7425 Bool) (transformation!7425 TokenValueInjection!14738)) )
))
(declare-fun rBis!149 () Rule!14650)

(declare-fun b!4151037 () Bool)

(declare-fun tp!1265257 () Bool)

(declare-fun e!2575482 () Bool)

(declare-fun e!2575487 () Bool)

(declare-fun inv!59696 (String!52027) Bool)

(declare-fun inv!59699 (TokenValueInjection!14738) Bool)

(assert (=> b!4151037 (= e!2575487 (and tp!1265257 (inv!59696 (tag!8285 rBis!149)) (inv!59699 (transformation!7425 rBis!149)) e!2575482))))

(declare-fun b!4151038 () Bool)

(declare-fun res!1699782 () Bool)

(declare-fun e!2575489 () Bool)

(assert (=> b!4151038 (=> (not res!1699782) (not e!2575489))))

(declare-fun p!2912 () List!45209)

(declare-fun isEmpty!26918 (List!45209) Bool)

(assert (=> b!4151038 (= res!1699782 (not (isEmpty!26918 p!2912)))))

(declare-fun b!4151039 () Bool)

(declare-fun res!1699783 () Bool)

(declare-fun e!2575484 () Bool)

(assert (=> b!4151039 (=> res!1699783 e!2575484)))

(declare-datatypes ((List!45210 0))(
  ( (Nil!45086) (Cons!45086 (h!50506 Rule!14650) (t!343145 List!45210)) )
))
(declare-fun rules!3756 () List!45210)

(declare-fun contains!9111 (List!45210 Rule!14650) Bool)

(assert (=> b!4151039 (= res!1699783 (not (contains!9111 (t!343145 rules!3756) rBis!149)))))

(declare-fun b!4151040 () Bool)

(declare-fun res!1699796 () Bool)

(assert (=> b!4151040 (=> (not res!1699796) (not e!2575489))))

(assert (=> b!4151040 (= res!1699796 (contains!9111 rules!3756 rBis!149))))

(declare-fun e!2575491 () Bool)

(assert (=> b!4151041 (= e!2575491 (and tp!1265258 tp!1265262))))

(declare-fun e!2575485 () Bool)

(assert (=> b!4151042 (= e!2575485 (and tp!1265259 tp!1265253))))

(declare-fun b!4151043 () Bool)

(declare-fun res!1699789 () Bool)

(declare-fun e!2575486 () Bool)

(assert (=> b!4151043 (=> (not res!1699789) (not e!2575486))))

(declare-fun r!4008 () Rule!14650)

(declare-fun getIndex!771 (List!45210 Rule!14650) Int)

(assert (=> b!4151043 (= res!1699789 (< (getIndex!771 rules!3756 rBis!149) (getIndex!771 rules!3756 r!4008)))))

(declare-fun b!4151044 () Bool)

(assert (=> b!4151044 (= e!2575489 e!2575486)))

(declare-fun res!1699787 () Bool)

(assert (=> b!4151044 (=> (not res!1699787) (not e!2575486))))

(declare-fun input!3238 () List!45209)

(declare-datatypes ((Token!13780 0))(
  ( (Token!13781 (value!232168 TokenValue!7655) (rule!10563 Rule!14650) (size!33423 Int) (originalCharacters!7921 List!45209)) )
))
(declare-datatypes ((tuple2!43448 0))(
  ( (tuple2!43449 (_1!24858 Token!13780) (_2!24858 List!45209)) )
))
(declare-datatypes ((Option!9731 0))(
  ( (None!9730) (Some!9730 (v!40396 tuple2!43448)) )
))
(declare-fun lt!1480445 () Option!9731)

(declare-datatypes ((LexerInterface!7014 0))(
  ( (LexerInterfaceExt!7011 (__x!27528 Int)) (Lexer!7012) )
))
(declare-fun thiss!25645 () LexerInterface!7014)

(declare-fun maxPrefix!4204 (LexerInterface!7014 List!45210 List!45209) Option!9731)

(assert (=> b!4151044 (= res!1699787 (= (maxPrefix!4204 thiss!25645 rules!3756 input!3238) lt!1480445))))

(declare-fun lt!1480453 () BalanceConc!26866)

(declare-fun apply!10498 (TokenValueInjection!14738 BalanceConc!26866) TokenValue!7655)

(declare-fun size!33424 (List!45209) Int)

(declare-fun getSuffix!2687 (List!45209 List!45209) List!45209)

(assert (=> b!4151044 (= lt!1480445 (Some!9730 (tuple2!43449 (Token!13781 (apply!10498 (transformation!7425 r!4008) lt!1480453) r!4008 (size!33424 p!2912) p!2912) (getSuffix!2687 input!3238 p!2912))))))

(declare-datatypes ((Unit!64358 0))(
  ( (Unit!64359) )
))
(declare-fun lt!1480447 () Unit!64358)

(declare-fun lemmaSemiInverse!2283 (TokenValueInjection!14738 BalanceConc!26866) Unit!64358)

(assert (=> b!4151044 (= lt!1480447 (lemmaSemiInverse!2283 (transformation!7425 r!4008) lt!1480453))))

(declare-fun seqFromList!5542 (List!45209) BalanceConc!26866)

(assert (=> b!4151044 (= lt!1480453 (seqFromList!5542 p!2912))))

(declare-fun res!1699788 () Bool)

(assert (=> start!395076 (=> (not res!1699788) (not e!2575489))))

(assert (=> start!395076 (= res!1699788 (is-Lexer!7012 thiss!25645))))

(assert (=> start!395076 e!2575489))

(declare-fun e!2575483 () Bool)

(assert (=> start!395076 e!2575483))

(declare-fun e!2575493 () Bool)

(assert (=> start!395076 e!2575493))

(assert (=> start!395076 true))

(declare-fun e!2575488 () Bool)

(assert (=> start!395076 e!2575488))

(declare-fun e!2575494 () Bool)

(assert (=> start!395076 e!2575494))

(assert (=> start!395076 e!2575487))

(declare-fun b!4151045 () Bool)

(declare-fun tp!1265255 () Bool)

(declare-fun e!2575495 () Bool)

(assert (=> b!4151045 (= e!2575495 (and tp!1265255 (inv!59696 (tag!8285 (h!50506 rules!3756))) (inv!59699 (transformation!7425 (h!50506 rules!3756))) e!2575491))))

(declare-fun b!4151046 () Bool)

(declare-fun res!1699786 () Bool)

(assert (=> b!4151046 (=> (not res!1699786) (not e!2575489))))

(declare-fun isPrefix!4360 (List!45209 List!45209) Bool)

(assert (=> b!4151046 (= res!1699786 (isPrefix!4360 p!2912 input!3238))))

(declare-fun b!4151047 () Bool)

(declare-fun tp!1265261 () Bool)

(assert (=> b!4151047 (= e!2575488 (and tp!1265261 (inv!59696 (tag!8285 r!4008)) (inv!59699 (transformation!7425 r!4008)) e!2575485))))

(declare-fun b!4151048 () Bool)

(declare-fun res!1699792 () Bool)

(assert (=> b!4151048 (=> (not res!1699792) (not e!2575489))))

(declare-fun isEmpty!26919 (List!45210) Bool)

(assert (=> b!4151048 (= res!1699792 (not (isEmpty!26919 rules!3756)))))

(declare-fun b!4151049 () Bool)

(declare-fun res!1699791 () Bool)

(assert (=> b!4151049 (=> (not res!1699791) (not e!2575489))))

(declare-fun rulesInvariant!6311 (LexerInterface!7014 List!45210) Bool)

(assert (=> b!4151049 (= res!1699791 (rulesInvariant!6311 thiss!25645 rules!3756))))

(assert (=> b!4151050 (= e!2575482 (and tp!1265254 tp!1265251))))

(declare-fun b!4151051 () Bool)

(declare-fun res!1699794 () Bool)

(assert (=> b!4151051 (=> (not res!1699794) (not e!2575489))))

(assert (=> b!4151051 (= res!1699794 (contains!9111 rules!3756 r!4008))))

(declare-fun b!4151052 () Bool)

(assert (=> b!4151052 (= e!2575486 (not e!2575484))))

(declare-fun res!1699790 () Bool)

(assert (=> b!4151052 (=> res!1699790 e!2575484)))

(assert (=> b!4151052 (= res!1699790 (or (and (is-Cons!45086 rules!3756) (= (h!50506 rules!3756) rBis!149)) (not (is-Cons!45086 rules!3756)) (= (h!50506 rules!3756) rBis!149)))))

(declare-fun lt!1480452 () Unit!64358)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2271 (LexerInterface!7014 Rule!14650 List!45210) Unit!64358)

(assert (=> b!4151052 (= lt!1480452 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2271 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3231 (LexerInterface!7014 Rule!14650) Bool)

(assert (=> b!4151052 (ruleValid!3231 thiss!25645 rBis!149)))

(declare-fun lt!1480449 () Unit!64358)

(assert (=> b!4151052 (= lt!1480449 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2271 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4151053 () Bool)

(declare-fun res!1699785 () Bool)

(declare-fun e!2575492 () Bool)

(assert (=> b!4151053 (=> res!1699785 e!2575492)))

(declare-fun lt!1480448 () Option!9731)

(assert (=> b!4151053 (= res!1699785 (not (= lt!1480448 lt!1480445)))))

(declare-fun b!4151054 () Bool)

(assert (=> b!4151054 (= e!2575484 e!2575492)))

(declare-fun res!1699784 () Bool)

(assert (=> b!4151054 (=> res!1699784 e!2575492)))

(assert (=> b!4151054 (= res!1699784 (isEmpty!26919 (t!343145 rules!3756)))))

(assert (=> b!4151054 (not (= (tag!8285 (h!50506 rules!3756)) (tag!8285 r!4008)))))

(declare-fun lt!1480446 () Unit!64358)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!73 (LexerInterface!7014 List!45210 Rule!14650 Rule!14650) Unit!64358)

(assert (=> b!4151054 (= lt!1480446 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!73 thiss!25645 rules!3756 (h!50506 rules!3756) r!4008))))

(assert (=> b!4151054 (rulesInvariant!6311 thiss!25645 (t!343145 rules!3756))))

(declare-fun lt!1480451 () Unit!64358)

(declare-fun lemmaInvariantOnRulesThenOnTail!837 (LexerInterface!7014 Rule!14650 List!45210) Unit!64358)

(assert (=> b!4151054 (= lt!1480451 (lemmaInvariantOnRulesThenOnTail!837 thiss!25645 (h!50506 rules!3756) (t!343145 rules!3756)))))

(assert (=> b!4151054 (= lt!1480448 (maxPrefix!4204 thiss!25645 (t!343145 rules!3756) input!3238))))

(declare-fun lt!1480450 () Option!9731)

(declare-fun maxPrefixOneRule!3143 (LexerInterface!7014 Rule!14650 List!45209) Option!9731)

(assert (=> b!4151054 (= lt!1480450 (maxPrefixOneRule!3143 thiss!25645 (h!50506 rules!3756) input!3238))))

(declare-fun b!4151055 () Bool)

(declare-fun tp_is_empty!21583 () Bool)

(declare-fun tp!1265256 () Bool)

(assert (=> b!4151055 (= e!2575493 (and tp_is_empty!21583 tp!1265256))))

(declare-fun b!4151056 () Bool)

(declare-fun res!1699781 () Bool)

(assert (=> b!4151056 (=> (not res!1699781) (not e!2575486))))

(declare-fun matchR!6159 (Regex!12330 List!45209) Bool)

(assert (=> b!4151056 (= res!1699781 (matchR!6159 (regex!7425 r!4008) p!2912))))

(declare-fun b!4151057 () Bool)

(declare-fun res!1699795 () Bool)

(assert (=> b!4151057 (=> (not res!1699795) (not e!2575486))))

(assert (=> b!4151057 (= res!1699795 (ruleValid!3231 thiss!25645 r!4008))))

(declare-fun b!4151058 () Bool)

(assert (=> b!4151058 (= e!2575492 (< (getIndex!771 (t!343145 rules!3756) rBis!149) (getIndex!771 (t!343145 rules!3756) r!4008)))))

(declare-fun b!4151059 () Bool)

(declare-fun res!1699793 () Bool)

(assert (=> b!4151059 (=> res!1699793 e!2575484)))

(assert (=> b!4151059 (= res!1699793 (not (contains!9111 (t!343145 rules!3756) r!4008)))))

(declare-fun b!4151060 () Bool)

(declare-fun tp!1265252 () Bool)

(assert (=> b!4151060 (= e!2575483 (and e!2575495 tp!1265252))))

(declare-fun b!4151061 () Bool)

(declare-fun tp!1265260 () Bool)

(assert (=> b!4151061 (= e!2575494 (and tp_is_empty!21583 tp!1265260))))

(assert (= (and start!395076 res!1699788) b!4151046))

(assert (= (and b!4151046 res!1699786) b!4151048))

(assert (= (and b!4151048 res!1699792) b!4151049))

(assert (= (and b!4151049 res!1699791) b!4151051))

(assert (= (and b!4151051 res!1699794) b!4151040))

(assert (= (and b!4151040 res!1699796) b!4151038))

(assert (= (and b!4151038 res!1699782) b!4151044))

(assert (= (and b!4151044 res!1699787) b!4151056))

(assert (= (and b!4151056 res!1699781) b!4151043))

(assert (= (and b!4151043 res!1699789) b!4151057))

(assert (= (and b!4151057 res!1699795) b!4151052))

(assert (= (and b!4151052 (not res!1699790)) b!4151059))

(assert (= (and b!4151059 (not res!1699793)) b!4151039))

(assert (= (and b!4151039 (not res!1699783)) b!4151054))

(assert (= (and b!4151054 (not res!1699784)) b!4151053))

(assert (= (and b!4151053 (not res!1699785)) b!4151058))

(assert (= b!4151045 b!4151041))

(assert (= b!4151060 b!4151045))

(assert (= (and start!395076 (is-Cons!45086 rules!3756)) b!4151060))

(assert (= (and start!395076 (is-Cons!45085 p!2912)) b!4151055))

(assert (= b!4151047 b!4151042))

(assert (= start!395076 b!4151047))

(assert (= (and start!395076 (is-Cons!45085 input!3238)) b!4151061))

(assert (= b!4151037 b!4151050))

(assert (= start!395076 b!4151037))

(declare-fun m!4746605 () Bool)

(assert (=> b!4151057 m!4746605))

(declare-fun m!4746607 () Bool)

(assert (=> b!4151044 m!4746607))

(declare-fun m!4746609 () Bool)

(assert (=> b!4151044 m!4746609))

(declare-fun m!4746611 () Bool)

(assert (=> b!4151044 m!4746611))

(declare-fun m!4746613 () Bool)

(assert (=> b!4151044 m!4746613))

(declare-fun m!4746615 () Bool)

(assert (=> b!4151044 m!4746615))

(declare-fun m!4746617 () Bool)

(assert (=> b!4151044 m!4746617))

(declare-fun m!4746619 () Bool)

(assert (=> b!4151054 m!4746619))

(declare-fun m!4746621 () Bool)

(assert (=> b!4151054 m!4746621))

(declare-fun m!4746623 () Bool)

(assert (=> b!4151054 m!4746623))

(declare-fun m!4746625 () Bool)

(assert (=> b!4151054 m!4746625))

(declare-fun m!4746627 () Bool)

(assert (=> b!4151054 m!4746627))

(declare-fun m!4746629 () Bool)

(assert (=> b!4151054 m!4746629))

(declare-fun m!4746631 () Bool)

(assert (=> b!4151046 m!4746631))

(declare-fun m!4746633 () Bool)

(assert (=> b!4151045 m!4746633))

(declare-fun m!4746635 () Bool)

(assert (=> b!4151045 m!4746635))

(declare-fun m!4746637 () Bool)

(assert (=> b!4151059 m!4746637))

(declare-fun m!4746639 () Bool)

(assert (=> b!4151038 m!4746639))

(declare-fun m!4746641 () Bool)

(assert (=> b!4151040 m!4746641))

(declare-fun m!4746643 () Bool)

(assert (=> b!4151047 m!4746643))

(declare-fun m!4746645 () Bool)

(assert (=> b!4151047 m!4746645))

(declare-fun m!4746647 () Bool)

(assert (=> b!4151043 m!4746647))

(declare-fun m!4746649 () Bool)

(assert (=> b!4151043 m!4746649))

(declare-fun m!4746651 () Bool)

(assert (=> b!4151056 m!4746651))

(declare-fun m!4746653 () Bool)

(assert (=> b!4151052 m!4746653))

(declare-fun m!4746655 () Bool)

(assert (=> b!4151052 m!4746655))

(declare-fun m!4746657 () Bool)

(assert (=> b!4151052 m!4746657))

(declare-fun m!4746659 () Bool)

(assert (=> b!4151051 m!4746659))

(declare-fun m!4746661 () Bool)

(assert (=> b!4151048 m!4746661))

(declare-fun m!4746663 () Bool)

(assert (=> b!4151049 m!4746663))

(declare-fun m!4746665 () Bool)

(assert (=> b!4151037 m!4746665))

(declare-fun m!4746667 () Bool)

(assert (=> b!4151037 m!4746667))

(declare-fun m!4746669 () Bool)

(assert (=> b!4151039 m!4746669))

(declare-fun m!4746671 () Bool)

(assert (=> b!4151058 m!4746671))

(declare-fun m!4746673 () Bool)

(assert (=> b!4151058 m!4746673))

(push 1)

(assert b_and!322877)

(assert (not b!4151040))

(assert (not b!4151043))

(assert (not b!4151046))

(assert (not b!4151038))

(assert (not b_next!119335))

(assert (not b!4151037))

(assert tp_is_empty!21583)

(assert (not b!4151045))

(assert (not b!4151061))

(assert b_and!322879)

(assert (not b!4151060))

(assert (not b!4151059))

(assert (not b_next!119337))

(assert (not b!4151044))

(assert (not b!4151048))

(assert (not b!4151056))

(assert (not b!4151039))

(assert (not b_next!119333))

(assert (not b!4151054))

(assert b_and!322881)

(assert (not b!4151052))

(assert (not b!4151058))

(assert (not b!4151049))

(assert (not b_next!119331))

(assert (not b_next!119327))

(assert (not b!4151055))

(assert b_and!322883)

(assert b_and!322887)

(assert (not b!4151047))

(assert b_and!322885)

(assert (not b_next!119329))

(assert (not b!4151051))

(assert (not b!4151057))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!119337))

(assert (not b_next!119333))

(assert b_and!322877)

(assert (not b_next!119335))

(assert b_and!322881)

(assert b_and!322879)

(assert b_and!322883)

(assert (not b_next!119329))

(assert (not b_next!119331))

(assert (not b_next!119327))

(assert b_and!322887)

(assert b_and!322885)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4151148 () Bool)

(declare-fun e!2575553 () Bool)

(assert (=> b!4151148 (= e!2575553 (>= (size!33424 input!3238) (size!33424 p!2912)))))

(declare-fun d!1227960 () Bool)

(assert (=> d!1227960 e!2575553))

(declare-fun res!1699863 () Bool)

(assert (=> d!1227960 (=> res!1699863 e!2575553)))

(declare-fun lt!1480483 () Bool)

(assert (=> d!1227960 (= res!1699863 (not lt!1480483))))

(declare-fun e!2575552 () Bool)

(assert (=> d!1227960 (= lt!1480483 e!2575552)))

(declare-fun res!1699866 () Bool)

(assert (=> d!1227960 (=> res!1699866 e!2575552)))

(assert (=> d!1227960 (= res!1699866 (is-Nil!45085 p!2912))))

(assert (=> d!1227960 (= (isPrefix!4360 p!2912 input!3238) lt!1480483)))

(declare-fun b!4151147 () Bool)

(declare-fun e!2575551 () Bool)

(declare-fun tail!6604 (List!45209) List!45209)

(assert (=> b!4151147 (= e!2575551 (isPrefix!4360 (tail!6604 p!2912) (tail!6604 input!3238)))))

(declare-fun b!4151146 () Bool)

(declare-fun res!1699864 () Bool)

(assert (=> b!4151146 (=> (not res!1699864) (not e!2575551))))

(declare-fun head!8763 (List!45209) C!24846)

(assert (=> b!4151146 (= res!1699864 (= (head!8763 p!2912) (head!8763 input!3238)))))

(declare-fun b!4151145 () Bool)

(assert (=> b!4151145 (= e!2575552 e!2575551)))

(declare-fun res!1699865 () Bool)

(assert (=> b!4151145 (=> (not res!1699865) (not e!2575551))))

(assert (=> b!4151145 (= res!1699865 (not (is-Nil!45085 input!3238)))))

(assert (= (and d!1227960 (not res!1699866)) b!4151145))

(assert (= (and b!4151145 res!1699865) b!4151146))

(assert (= (and b!4151146 res!1699864) b!4151147))

(assert (= (and d!1227960 (not res!1699863)) b!4151148))

(declare-fun m!4746745 () Bool)

(assert (=> b!4151148 m!4746745))

(assert (=> b!4151148 m!4746607))

(declare-fun m!4746747 () Bool)

(assert (=> b!4151147 m!4746747))

(declare-fun m!4746749 () Bool)

(assert (=> b!4151147 m!4746749))

(assert (=> b!4151147 m!4746747))

(assert (=> b!4151147 m!4746749))

(declare-fun m!4746751 () Bool)

(assert (=> b!4151147 m!4746751))

(declare-fun m!4746753 () Bool)

(assert (=> b!4151146 m!4746753))

(declare-fun m!4746755 () Bool)

(assert (=> b!4151146 m!4746755))

(assert (=> b!4151046 d!1227960))

(declare-fun d!1227962 () Bool)

(assert (=> d!1227962 (= (inv!59696 (tag!8285 (h!50506 rules!3756))) (= (mod (str.len (value!232167 (tag!8285 (h!50506 rules!3756)))) 2) 0))))

(assert (=> b!4151045 d!1227962))

(declare-fun d!1227964 () Bool)

(declare-fun res!1699869 () Bool)

(declare-fun e!2575556 () Bool)

(assert (=> d!1227964 (=> (not res!1699869) (not e!2575556))))

(declare-fun semiInverseModEq!3214 (Int Int) Bool)

(assert (=> d!1227964 (= res!1699869 (semiInverseModEq!3214 (toChars!9948 (transformation!7425 (h!50506 rules!3756))) (toValue!10089 (transformation!7425 (h!50506 rules!3756)))))))

(assert (=> d!1227964 (= (inv!59699 (transformation!7425 (h!50506 rules!3756))) e!2575556)))

(declare-fun b!4151151 () Bool)

(declare-fun equivClasses!3113 (Int Int) Bool)

(assert (=> b!4151151 (= e!2575556 (equivClasses!3113 (toChars!9948 (transformation!7425 (h!50506 rules!3756))) (toValue!10089 (transformation!7425 (h!50506 rules!3756)))))))

(assert (= (and d!1227964 res!1699869) b!4151151))

(declare-fun m!4746757 () Bool)

(assert (=> d!1227964 m!4746757))

(declare-fun m!4746759 () Bool)

(assert (=> b!4151151 m!4746759))

(assert (=> b!4151045 d!1227964))

(declare-fun b!4151188 () Bool)

(declare-fun e!2575580 () Bool)

(declare-fun derivativeStep!3744 (Regex!12330 C!24846) Regex!12330)

(assert (=> b!4151188 (= e!2575580 (matchR!6159 (derivativeStep!3744 (regex!7425 r!4008) (head!8763 p!2912)) (tail!6604 p!2912)))))

(declare-fun b!4151189 () Bool)

(declare-fun res!1699899 () Bool)

(declare-fun e!2575581 () Bool)

(assert (=> b!4151189 (=> (not res!1699899) (not e!2575581))))

(declare-fun call!290741 () Bool)

(assert (=> b!4151189 (= res!1699899 (not call!290741))))

(declare-fun b!4151190 () Bool)

(declare-fun e!2575578 () Bool)

(declare-fun lt!1480488 () Bool)

(assert (=> b!4151190 (= e!2575578 (= lt!1480488 call!290741))))

(declare-fun b!4151191 () Bool)

(declare-fun res!1699896 () Bool)

(declare-fun e!2575579 () Bool)

(assert (=> b!4151191 (=> res!1699896 e!2575579)))

(assert (=> b!4151191 (= res!1699896 (not (is-ElementMatch!12330 (regex!7425 r!4008))))))

(declare-fun e!2575583 () Bool)

(assert (=> b!4151191 (= e!2575583 e!2575579)))

(declare-fun b!4151192 () Bool)

(declare-fun res!1699901 () Bool)

(assert (=> b!4151192 (=> res!1699901 e!2575579)))

(assert (=> b!4151192 (= res!1699901 e!2575581)))

(declare-fun res!1699895 () Bool)

(assert (=> b!4151192 (=> (not res!1699895) (not e!2575581))))

(assert (=> b!4151192 (= res!1699895 lt!1480488)))

(declare-fun b!4151193 () Bool)

(declare-fun res!1699900 () Bool)

(declare-fun e!2575582 () Bool)

(assert (=> b!4151193 (=> res!1699900 e!2575582)))

(assert (=> b!4151193 (= res!1699900 (not (isEmpty!26918 (tail!6604 p!2912))))))

(declare-fun b!4151194 () Bool)

(assert (=> b!4151194 (= e!2575582 (not (= (head!8763 p!2912) (c!710936 (regex!7425 r!4008)))))))

(declare-fun b!4151195 () Bool)

(declare-fun nullable!4350 (Regex!12330) Bool)

(assert (=> b!4151195 (= e!2575580 (nullable!4350 (regex!7425 r!4008)))))

(declare-fun b!4151196 () Bool)

(assert (=> b!4151196 (= e!2575583 (not lt!1480488))))

(declare-fun b!4151197 () Bool)

(declare-fun res!1699898 () Bool)

(assert (=> b!4151197 (=> (not res!1699898) (not e!2575581))))

(assert (=> b!4151197 (= res!1699898 (isEmpty!26918 (tail!6604 p!2912)))))

(declare-fun b!4151198 () Bool)

(declare-fun e!2575577 () Bool)

(assert (=> b!4151198 (= e!2575579 e!2575577)))

(declare-fun res!1699897 () Bool)

(assert (=> b!4151198 (=> (not res!1699897) (not e!2575577))))

(assert (=> b!4151198 (= res!1699897 (not lt!1480488))))

(declare-fun d!1227966 () Bool)

(assert (=> d!1227966 e!2575578))

(declare-fun c!710947 () Bool)

(assert (=> d!1227966 (= c!710947 (is-EmptyExpr!12330 (regex!7425 r!4008)))))

(assert (=> d!1227966 (= lt!1480488 e!2575580)))

(declare-fun c!710946 () Bool)

(assert (=> d!1227966 (= c!710946 (isEmpty!26918 p!2912))))

(declare-fun validRegex!5560 (Regex!12330) Bool)

(assert (=> d!1227966 (validRegex!5560 (regex!7425 r!4008))))

(assert (=> d!1227966 (= (matchR!6159 (regex!7425 r!4008) p!2912) lt!1480488)))

(declare-fun b!4151199 () Bool)

(assert (=> b!4151199 (= e!2575581 (= (head!8763 p!2912) (c!710936 (regex!7425 r!4008))))))

(declare-fun b!4151200 () Bool)

(assert (=> b!4151200 (= e!2575578 e!2575583)))

(declare-fun c!710948 () Bool)

(assert (=> b!4151200 (= c!710948 (is-EmptyLang!12330 (regex!7425 r!4008)))))

(declare-fun bm!290736 () Bool)

(assert (=> bm!290736 (= call!290741 (isEmpty!26918 p!2912))))

(declare-fun b!4151201 () Bool)

(assert (=> b!4151201 (= e!2575577 e!2575582)))

(declare-fun res!1699894 () Bool)

(assert (=> b!4151201 (=> res!1699894 e!2575582)))

(assert (=> b!4151201 (= res!1699894 call!290741)))

(assert (= (and d!1227966 c!710946) b!4151195))

(assert (= (and d!1227966 (not c!710946)) b!4151188))

(assert (= (and d!1227966 c!710947) b!4151190))

(assert (= (and d!1227966 (not c!710947)) b!4151200))

(assert (= (and b!4151200 c!710948) b!4151196))

(assert (= (and b!4151200 (not c!710948)) b!4151191))

(assert (= (and b!4151191 (not res!1699896)) b!4151192))

(assert (= (and b!4151192 res!1699895) b!4151189))

(assert (= (and b!4151189 res!1699899) b!4151197))

(assert (= (and b!4151197 res!1699898) b!4151199))

(assert (= (and b!4151192 (not res!1699901)) b!4151198))

(assert (= (and b!4151198 res!1699897) b!4151201))

(assert (= (and b!4151201 (not res!1699894)) b!4151193))

(assert (= (and b!4151193 (not res!1699900)) b!4151194))

(assert (= (or b!4151190 b!4151189 b!4151201) bm!290736))

(declare-fun m!4746761 () Bool)

(assert (=> b!4151195 m!4746761))

(assert (=> b!4151188 m!4746753))

(assert (=> b!4151188 m!4746753))

(declare-fun m!4746763 () Bool)

(assert (=> b!4151188 m!4746763))

(assert (=> b!4151188 m!4746747))

(assert (=> b!4151188 m!4746763))

(assert (=> b!4151188 m!4746747))

(declare-fun m!4746765 () Bool)

(assert (=> b!4151188 m!4746765))

(assert (=> b!4151199 m!4746753))

(assert (=> b!4151194 m!4746753))

(assert (=> b!4151193 m!4746747))

(assert (=> b!4151193 m!4746747))

(declare-fun m!4746767 () Bool)

(assert (=> b!4151193 m!4746767))

(assert (=> bm!290736 m!4746639))

(assert (=> d!1227966 m!4746639))

(declare-fun m!4746769 () Bool)

(assert (=> d!1227966 m!4746769))

(assert (=> b!4151197 m!4746747))

(assert (=> b!4151197 m!4746747))

(assert (=> b!4151197 m!4746767))

(assert (=> b!4151056 d!1227966))

(declare-fun d!1227970 () Bool)

(assert (=> d!1227970 (= (inv!59696 (tag!8285 r!4008)) (= (mod (str.len (value!232167 (tag!8285 r!4008))) 2) 0))))

(assert (=> b!4151047 d!1227970))

(declare-fun d!1227972 () Bool)

(declare-fun res!1699902 () Bool)

(declare-fun e!2575584 () Bool)

(assert (=> d!1227972 (=> (not res!1699902) (not e!2575584))))

(assert (=> d!1227972 (= res!1699902 (semiInverseModEq!3214 (toChars!9948 (transformation!7425 r!4008)) (toValue!10089 (transformation!7425 r!4008))))))

(assert (=> d!1227972 (= (inv!59699 (transformation!7425 r!4008)) e!2575584)))

(declare-fun b!4151202 () Bool)

(assert (=> b!4151202 (= e!2575584 (equivClasses!3113 (toChars!9948 (transformation!7425 r!4008)) (toValue!10089 (transformation!7425 r!4008))))))

(assert (= (and d!1227972 res!1699902) b!4151202))

(declare-fun m!4746771 () Bool)

(assert (=> d!1227972 m!4746771))

(declare-fun m!4746773 () Bool)

(assert (=> b!4151202 m!4746773))

(assert (=> b!4151047 d!1227972))

(declare-fun b!4151217 () Bool)

(declare-fun e!2575593 () Int)

(assert (=> b!4151217 (= e!2575593 (+ 1 (getIndex!771 (t!343145 (t!343145 rules!3756)) rBis!149)))))

(declare-fun b!4151215 () Bool)

(declare-fun e!2575594 () Int)

(assert (=> b!4151215 (= e!2575594 0)))

(declare-fun d!1227974 () Bool)

(declare-fun lt!1480492 () Int)

(assert (=> d!1227974 (>= lt!1480492 0)))

(assert (=> d!1227974 (= lt!1480492 e!2575594)))

(declare-fun c!710953 () Bool)

(assert (=> d!1227974 (= c!710953 (and (is-Cons!45086 (t!343145 rules!3756)) (= (h!50506 (t!343145 rules!3756)) rBis!149)))))

(assert (=> d!1227974 (contains!9111 (t!343145 rules!3756) rBis!149)))

(assert (=> d!1227974 (= (getIndex!771 (t!343145 rules!3756) rBis!149) lt!1480492)))

(declare-fun b!4151218 () Bool)

(assert (=> b!4151218 (= e!2575593 (- 1))))

(declare-fun b!4151216 () Bool)

(assert (=> b!4151216 (= e!2575594 e!2575593)))

(declare-fun c!710954 () Bool)

(assert (=> b!4151216 (= c!710954 (and (is-Cons!45086 (t!343145 rules!3756)) (not (= (h!50506 (t!343145 rules!3756)) rBis!149))))))

(assert (= (and d!1227974 c!710953) b!4151215))

(assert (= (and d!1227974 (not c!710953)) b!4151216))

(assert (= (and b!4151216 c!710954) b!4151217))

(assert (= (and b!4151216 (not c!710954)) b!4151218))

(declare-fun m!4746787 () Bool)

(assert (=> b!4151217 m!4746787))

(assert (=> d!1227974 m!4746669))

(assert (=> b!4151058 d!1227974))

(declare-fun b!4151223 () Bool)

(declare-fun e!2575597 () Int)

(assert (=> b!4151223 (= e!2575597 (+ 1 (getIndex!771 (t!343145 (t!343145 rules!3756)) r!4008)))))

(declare-fun b!4151221 () Bool)

(declare-fun e!2575598 () Int)

(assert (=> b!4151221 (= e!2575598 0)))

(declare-fun d!1227980 () Bool)

(declare-fun lt!1480493 () Int)

(assert (=> d!1227980 (>= lt!1480493 0)))

(assert (=> d!1227980 (= lt!1480493 e!2575598)))

(declare-fun c!710955 () Bool)

(assert (=> d!1227980 (= c!710955 (and (is-Cons!45086 (t!343145 rules!3756)) (= (h!50506 (t!343145 rules!3756)) r!4008)))))

(assert (=> d!1227980 (contains!9111 (t!343145 rules!3756) r!4008)))

(assert (=> d!1227980 (= (getIndex!771 (t!343145 rules!3756) r!4008) lt!1480493)))

(declare-fun b!4151224 () Bool)

(assert (=> b!4151224 (= e!2575597 (- 1))))

(declare-fun b!4151222 () Bool)

(assert (=> b!4151222 (= e!2575598 e!2575597)))

(declare-fun c!710956 () Bool)

(assert (=> b!4151222 (= c!710956 (and (is-Cons!45086 (t!343145 rules!3756)) (not (= (h!50506 (t!343145 rules!3756)) r!4008))))))

(assert (= (and d!1227980 c!710955) b!4151221))

(assert (= (and d!1227980 (not c!710955)) b!4151222))

(assert (= (and b!4151222 c!710956) b!4151223))

(assert (= (and b!4151222 (not c!710956)) b!4151224))

(declare-fun m!4746789 () Bool)

(assert (=> b!4151223 m!4746789))

(assert (=> d!1227980 m!4746637))

(assert (=> b!4151058 d!1227980))

(declare-fun d!1227982 () Bool)

(declare-fun res!1699914 () Bool)

(declare-fun e!2575602 () Bool)

(assert (=> d!1227982 (=> (not res!1699914) (not e!2575602))))

(assert (=> d!1227982 (= res!1699914 (validRegex!5560 (regex!7425 r!4008)))))

(assert (=> d!1227982 (= (ruleValid!3231 thiss!25645 r!4008) e!2575602)))

(declare-fun b!4151230 () Bool)

(declare-fun res!1699915 () Bool)

(assert (=> b!4151230 (=> (not res!1699915) (not e!2575602))))

(assert (=> b!4151230 (= res!1699915 (not (nullable!4350 (regex!7425 r!4008))))))

(declare-fun b!4151231 () Bool)

(assert (=> b!4151231 (= e!2575602 (not (= (tag!8285 r!4008) (String!52028 ""))))))

(assert (= (and d!1227982 res!1699914) b!4151230))

(assert (= (and b!4151230 res!1699915) b!4151231))

(assert (=> d!1227982 m!4746769))

(assert (=> b!4151230 m!4746761))

(assert (=> b!4151057 d!1227982))

(declare-fun d!1227988 () Bool)

(declare-fun lt!1480499 () Bool)

(declare-fun content!6976 (List!45210) (Set Rule!14650))

(assert (=> d!1227988 (= lt!1480499 (set.member r!4008 (content!6976 (t!343145 rules!3756))))))

(declare-fun e!2575613 () Bool)

(assert (=> d!1227988 (= lt!1480499 e!2575613)))

(declare-fun res!1699927 () Bool)

(assert (=> d!1227988 (=> (not res!1699927) (not e!2575613))))

(assert (=> d!1227988 (= res!1699927 (is-Cons!45086 (t!343145 rules!3756)))))

(assert (=> d!1227988 (= (contains!9111 (t!343145 rules!3756) r!4008) lt!1480499)))

(declare-fun b!4151242 () Bool)

(declare-fun e!2575614 () Bool)

(assert (=> b!4151242 (= e!2575613 e!2575614)))

(declare-fun res!1699926 () Bool)

(assert (=> b!4151242 (=> res!1699926 e!2575614)))

(assert (=> b!4151242 (= res!1699926 (= (h!50506 (t!343145 rules!3756)) r!4008))))

(declare-fun b!4151243 () Bool)

(assert (=> b!4151243 (= e!2575614 (contains!9111 (t!343145 (t!343145 rules!3756)) r!4008))))

(assert (= (and d!1227988 res!1699927) b!4151242))

(assert (= (and b!4151242 (not res!1699926)) b!4151243))

(declare-fun m!4746801 () Bool)

(assert (=> d!1227988 m!4746801))

(declare-fun m!4746803 () Bool)

(assert (=> d!1227988 m!4746803))

(declare-fun m!4746805 () Bool)

(assert (=> b!4151243 m!4746805))

(assert (=> b!4151059 d!1227988))

(declare-fun d!1227992 () Bool)

(assert (=> d!1227992 (= (isEmpty!26918 p!2912) (is-Nil!45085 p!2912))))

(assert (=> b!4151038 d!1227992))

(declare-fun d!1227994 () Bool)

(assert (=> d!1227994 (= (inv!59696 (tag!8285 rBis!149)) (= (mod (str.len (value!232167 (tag!8285 rBis!149))) 2) 0))))

(assert (=> b!4151037 d!1227994))

(declare-fun d!1227996 () Bool)

(declare-fun res!1699928 () Bool)

(declare-fun e!2575615 () Bool)

(assert (=> d!1227996 (=> (not res!1699928) (not e!2575615))))

(assert (=> d!1227996 (= res!1699928 (semiInverseModEq!3214 (toChars!9948 (transformation!7425 rBis!149)) (toValue!10089 (transformation!7425 rBis!149))))))

(assert (=> d!1227996 (= (inv!59699 (transformation!7425 rBis!149)) e!2575615)))

(declare-fun b!4151244 () Bool)

(assert (=> b!4151244 (= e!2575615 (equivClasses!3113 (toChars!9948 (transformation!7425 rBis!149)) (toValue!10089 (transformation!7425 rBis!149))))))

(assert (= (and d!1227996 res!1699928) b!4151244))

(declare-fun m!4746807 () Bool)

(assert (=> d!1227996 m!4746807))

(declare-fun m!4746809 () Bool)

(assert (=> b!4151244 m!4746809))

(assert (=> b!4151037 d!1227996))

(declare-fun d!1227998 () Bool)

(assert (=> d!1227998 (= (isEmpty!26919 rules!3756) (is-Nil!45086 rules!3756))))

(assert (=> b!4151048 d!1227998))

(declare-fun d!1228000 () Bool)

(declare-fun lt!1480500 () Bool)

(assert (=> d!1228000 (= lt!1480500 (set.member rBis!149 (content!6976 (t!343145 rules!3756))))))

(declare-fun e!2575616 () Bool)

(assert (=> d!1228000 (= lt!1480500 e!2575616)))

(declare-fun res!1699930 () Bool)

(assert (=> d!1228000 (=> (not res!1699930) (not e!2575616))))

(assert (=> d!1228000 (= res!1699930 (is-Cons!45086 (t!343145 rules!3756)))))

(assert (=> d!1228000 (= (contains!9111 (t!343145 rules!3756) rBis!149) lt!1480500)))

(declare-fun b!4151245 () Bool)

(declare-fun e!2575617 () Bool)

(assert (=> b!4151245 (= e!2575616 e!2575617)))

(declare-fun res!1699929 () Bool)

(assert (=> b!4151245 (=> res!1699929 e!2575617)))

(assert (=> b!4151245 (= res!1699929 (= (h!50506 (t!343145 rules!3756)) rBis!149))))

(declare-fun b!4151246 () Bool)

(assert (=> b!4151246 (= e!2575617 (contains!9111 (t!343145 (t!343145 rules!3756)) rBis!149))))

(assert (= (and d!1228000 res!1699930) b!4151245))

(assert (= (and b!4151245 (not res!1699929)) b!4151246))

(assert (=> d!1228000 m!4746801))

(declare-fun m!4746811 () Bool)

(assert (=> d!1228000 m!4746811))

(declare-fun m!4746813 () Bool)

(assert (=> b!4151246 m!4746813))

(assert (=> b!4151039 d!1228000))

(declare-fun d!1228002 () Bool)

(declare-fun res!1699937 () Bool)

(declare-fun e!2575622 () Bool)

(assert (=> d!1228002 (=> (not res!1699937) (not e!2575622))))

(declare-fun rulesValid!2927 (LexerInterface!7014 List!45210) Bool)

(assert (=> d!1228002 (= res!1699937 (rulesValid!2927 thiss!25645 rules!3756))))

(assert (=> d!1228002 (= (rulesInvariant!6311 thiss!25645 rules!3756) e!2575622)))

(declare-fun b!4151253 () Bool)

(declare-datatypes ((List!45214 0))(
  ( (Nil!45090) (Cons!45090 (h!50510 String!52027) (t!343177 List!45214)) )
))
(declare-fun noDuplicateTag!3010 (LexerInterface!7014 List!45210 List!45214) Bool)

(assert (=> b!4151253 (= e!2575622 (noDuplicateTag!3010 thiss!25645 rules!3756 Nil!45090))))

(assert (= (and d!1228002 res!1699937) b!4151253))

(declare-fun m!4746815 () Bool)

(assert (=> d!1228002 m!4746815))

(declare-fun m!4746817 () Bool)

(assert (=> b!4151253 m!4746817))

(assert (=> b!4151049 d!1228002))

(declare-fun d!1228004 () Bool)

(declare-fun lt!1480501 () Bool)

(assert (=> d!1228004 (= lt!1480501 (set.member r!4008 (content!6976 rules!3756)))))

(declare-fun e!2575623 () Bool)

(assert (=> d!1228004 (= lt!1480501 e!2575623)))

(declare-fun res!1699939 () Bool)

(assert (=> d!1228004 (=> (not res!1699939) (not e!2575623))))

(assert (=> d!1228004 (= res!1699939 (is-Cons!45086 rules!3756))))

(assert (=> d!1228004 (= (contains!9111 rules!3756 r!4008) lt!1480501)))

(declare-fun b!4151254 () Bool)

(declare-fun e!2575624 () Bool)

(assert (=> b!4151254 (= e!2575623 e!2575624)))

(declare-fun res!1699938 () Bool)

(assert (=> b!4151254 (=> res!1699938 e!2575624)))

(assert (=> b!4151254 (= res!1699938 (= (h!50506 rules!3756) r!4008))))

(declare-fun b!4151255 () Bool)

(assert (=> b!4151255 (= e!2575624 (contains!9111 (t!343145 rules!3756) r!4008))))

(assert (= (and d!1228004 res!1699939) b!4151254))

(assert (= (and b!4151254 (not res!1699938)) b!4151255))

(declare-fun m!4746819 () Bool)

(assert (=> d!1228004 m!4746819))

(declare-fun m!4746821 () Bool)

(assert (=> d!1228004 m!4746821))

(assert (=> b!4151255 m!4746637))

(assert (=> b!4151051 d!1228004))

(declare-fun d!1228006 () Bool)

(declare-fun lt!1480502 () Bool)

(assert (=> d!1228006 (= lt!1480502 (set.member rBis!149 (content!6976 rules!3756)))))

(declare-fun e!2575626 () Bool)

(assert (=> d!1228006 (= lt!1480502 e!2575626)))

(declare-fun res!1699943 () Bool)

(assert (=> d!1228006 (=> (not res!1699943) (not e!2575626))))

(assert (=> d!1228006 (= res!1699943 (is-Cons!45086 rules!3756))))

(assert (=> d!1228006 (= (contains!9111 rules!3756 rBis!149) lt!1480502)))

(declare-fun b!4151258 () Bool)

(declare-fun e!2575627 () Bool)

(assert (=> b!4151258 (= e!2575626 e!2575627)))

(declare-fun res!1699942 () Bool)

(assert (=> b!4151258 (=> res!1699942 e!2575627)))

(assert (=> b!4151258 (= res!1699942 (= (h!50506 rules!3756) rBis!149))))

(declare-fun b!4151259 () Bool)

(assert (=> b!4151259 (= e!2575627 (contains!9111 (t!343145 rules!3756) rBis!149))))

(assert (= (and d!1228006 res!1699943) b!4151258))

(assert (= (and b!4151258 (not res!1699942)) b!4151259))

(assert (=> d!1228006 m!4746819))

(declare-fun m!4746823 () Bool)

(assert (=> d!1228006 m!4746823))

(assert (=> b!4151259 m!4746669))

(assert (=> b!4151040 d!1228006))

(declare-fun d!1228008 () Bool)

(assert (=> d!1228008 (ruleValid!3231 thiss!25645 r!4008)))

(declare-fun lt!1480505 () Unit!64358)

(declare-fun choose!25421 (LexerInterface!7014 Rule!14650 List!45210) Unit!64358)

(assert (=> d!1228008 (= lt!1480505 (choose!25421 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1228008 (contains!9111 rules!3756 r!4008)))

(assert (=> d!1228008 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2271 thiss!25645 r!4008 rules!3756) lt!1480505)))

(declare-fun bs!595444 () Bool)

(assert (= bs!595444 d!1228008))

(assert (=> bs!595444 m!4746605))

(declare-fun m!4746829 () Bool)

(assert (=> bs!595444 m!4746829))

(assert (=> bs!595444 m!4746659))

(assert (=> b!4151052 d!1228008))

(declare-fun d!1228012 () Bool)

(declare-fun res!1699944 () Bool)

(declare-fun e!2575628 () Bool)

(assert (=> d!1228012 (=> (not res!1699944) (not e!2575628))))

(assert (=> d!1228012 (= res!1699944 (validRegex!5560 (regex!7425 rBis!149)))))

(assert (=> d!1228012 (= (ruleValid!3231 thiss!25645 rBis!149) e!2575628)))

(declare-fun b!4151260 () Bool)

(declare-fun res!1699945 () Bool)

(assert (=> b!4151260 (=> (not res!1699945) (not e!2575628))))

(assert (=> b!4151260 (= res!1699945 (not (nullable!4350 (regex!7425 rBis!149))))))

(declare-fun b!4151261 () Bool)

(assert (=> b!4151261 (= e!2575628 (not (= (tag!8285 rBis!149) (String!52028 ""))))))

(assert (= (and d!1228012 res!1699944) b!4151260))

(assert (= (and b!4151260 res!1699945) b!4151261))

(declare-fun m!4746831 () Bool)

(assert (=> d!1228012 m!4746831))

(declare-fun m!4746833 () Bool)

(assert (=> b!4151260 m!4746833))

(assert (=> b!4151052 d!1228012))

(declare-fun d!1228014 () Bool)

(assert (=> d!1228014 (ruleValid!3231 thiss!25645 rBis!149)))

(declare-fun lt!1480506 () Unit!64358)

(assert (=> d!1228014 (= lt!1480506 (choose!25421 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1228014 (contains!9111 rules!3756 rBis!149)))

(assert (=> d!1228014 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2271 thiss!25645 rBis!149 rules!3756) lt!1480506)))

(declare-fun bs!595445 () Bool)

(assert (= bs!595445 d!1228014))

(assert (=> bs!595445 m!4746655))

(declare-fun m!4746835 () Bool)

(assert (=> bs!595445 m!4746835))

(assert (=> bs!595445 m!4746641))

(assert (=> b!4151052 d!1228014))

(declare-fun b!4151264 () Bool)

(declare-fun e!2575629 () Int)

(assert (=> b!4151264 (= e!2575629 (+ 1 (getIndex!771 (t!343145 rules!3756) rBis!149)))))

(declare-fun b!4151262 () Bool)

(declare-fun e!2575630 () Int)

(assert (=> b!4151262 (= e!2575630 0)))

(declare-fun d!1228016 () Bool)

(declare-fun lt!1480507 () Int)

(assert (=> d!1228016 (>= lt!1480507 0)))

(assert (=> d!1228016 (= lt!1480507 e!2575630)))

(declare-fun c!710957 () Bool)

(assert (=> d!1228016 (= c!710957 (and (is-Cons!45086 rules!3756) (= (h!50506 rules!3756) rBis!149)))))

(assert (=> d!1228016 (contains!9111 rules!3756 rBis!149)))

(assert (=> d!1228016 (= (getIndex!771 rules!3756 rBis!149) lt!1480507)))

(declare-fun b!4151265 () Bool)

(assert (=> b!4151265 (= e!2575629 (- 1))))

(declare-fun b!4151263 () Bool)

(assert (=> b!4151263 (= e!2575630 e!2575629)))

(declare-fun c!710958 () Bool)

(assert (=> b!4151263 (= c!710958 (and (is-Cons!45086 rules!3756) (not (= (h!50506 rules!3756) rBis!149))))))

(assert (= (and d!1228016 c!710957) b!4151262))

(assert (= (and d!1228016 (not c!710957)) b!4151263))

(assert (= (and b!4151263 c!710958) b!4151264))

(assert (= (and b!4151263 (not c!710958)) b!4151265))

(assert (=> b!4151264 m!4746671))

(assert (=> d!1228016 m!4746641))

(assert (=> b!4151043 d!1228016))

(declare-fun b!4151268 () Bool)

(declare-fun e!2575631 () Int)

(assert (=> b!4151268 (= e!2575631 (+ 1 (getIndex!771 (t!343145 rules!3756) r!4008)))))

(declare-fun b!4151266 () Bool)

(declare-fun e!2575632 () Int)

(assert (=> b!4151266 (= e!2575632 0)))

(declare-fun d!1228018 () Bool)

(declare-fun lt!1480508 () Int)

(assert (=> d!1228018 (>= lt!1480508 0)))

(assert (=> d!1228018 (= lt!1480508 e!2575632)))

(declare-fun c!710959 () Bool)

(assert (=> d!1228018 (= c!710959 (and (is-Cons!45086 rules!3756) (= (h!50506 rules!3756) r!4008)))))

(assert (=> d!1228018 (contains!9111 rules!3756 r!4008)))

(assert (=> d!1228018 (= (getIndex!771 rules!3756 r!4008) lt!1480508)))

(declare-fun b!4151269 () Bool)

(assert (=> b!4151269 (= e!2575631 (- 1))))

(declare-fun b!4151267 () Bool)

(assert (=> b!4151267 (= e!2575632 e!2575631)))

(declare-fun c!710960 () Bool)

(assert (=> b!4151267 (= c!710960 (and (is-Cons!45086 rules!3756) (not (= (h!50506 rules!3756) r!4008))))))

(assert (= (and d!1228018 c!710959) b!4151266))

(assert (= (and d!1228018 (not c!710959)) b!4151267))

(assert (= (and b!4151267 c!710960) b!4151268))

(assert (= (and b!4151267 (not c!710960)) b!4151269))

(assert (=> b!4151268 m!4746673))

(assert (=> d!1228018 m!4746659))

(assert (=> b!4151043 d!1228018))

(declare-fun d!1228020 () Bool)

(declare-fun res!1699946 () Bool)

(declare-fun e!2575633 () Bool)

(assert (=> d!1228020 (=> (not res!1699946) (not e!2575633))))

(assert (=> d!1228020 (= res!1699946 (rulesValid!2927 thiss!25645 (t!343145 rules!3756)))))

(assert (=> d!1228020 (= (rulesInvariant!6311 thiss!25645 (t!343145 rules!3756)) e!2575633)))

(declare-fun b!4151270 () Bool)

(assert (=> b!4151270 (= e!2575633 (noDuplicateTag!3010 thiss!25645 (t!343145 rules!3756) Nil!45090))))

(assert (= (and d!1228020 res!1699946) b!4151270))

(declare-fun m!4746837 () Bool)

(assert (=> d!1228020 m!4746837))

(declare-fun m!4746839 () Bool)

(assert (=> b!4151270 m!4746839))

(assert (=> b!4151054 d!1228020))

(declare-fun d!1228022 () Bool)

(assert (=> d!1228022 (not (= (tag!8285 (h!50506 rules!3756)) (tag!8285 r!4008)))))

(declare-fun lt!1480511 () Unit!64358)

(declare-fun choose!25422 (LexerInterface!7014 List!45210 Rule!14650 Rule!14650) Unit!64358)

(assert (=> d!1228022 (= lt!1480511 (choose!25422 thiss!25645 rules!3756 (h!50506 rules!3756) r!4008))))

(assert (=> d!1228022 (contains!9111 rules!3756 (h!50506 rules!3756))))

(assert (=> d!1228022 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!73 thiss!25645 rules!3756 (h!50506 rules!3756) r!4008) lt!1480511)))

(declare-fun bs!595446 () Bool)

(assert (= bs!595446 d!1228022))

(declare-fun m!4746841 () Bool)

(assert (=> bs!595446 m!4746841))

(declare-fun m!4746843 () Bool)

(assert (=> bs!595446 m!4746843))

(assert (=> b!4151054 d!1228022))

(declare-fun b!4151338 () Bool)

(declare-fun e!2575672 () Option!9731)

(declare-datatypes ((tuple2!43452 0))(
  ( (tuple2!43453 (_1!24860 List!45209) (_2!24860 List!45209)) )
))
(declare-fun lt!1480535 () tuple2!43452)

(declare-fun size!33427 (BalanceConc!26866) Int)

(assert (=> b!4151338 (= e!2575672 (Some!9730 (tuple2!43449 (Token!13781 (apply!10498 (transformation!7425 (h!50506 rules!3756)) (seqFromList!5542 (_1!24860 lt!1480535))) (h!50506 rules!3756) (size!33427 (seqFromList!5542 (_1!24860 lt!1480535))) (_1!24860 lt!1480535)) (_2!24860 lt!1480535))))))

(declare-fun lt!1480534 () Unit!64358)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1527 (Regex!12330 List!45209) Unit!64358)

(assert (=> b!4151338 (= lt!1480534 (longestMatchIsAcceptedByMatchOrIsEmpty!1527 (regex!7425 (h!50506 rules!3756)) input!3238))))

(declare-fun res!1699994 () Bool)

(declare-fun findLongestMatchInner!1554 (Regex!12330 List!45209 Int List!45209 List!45209 Int) tuple2!43452)

(assert (=> b!4151338 (= res!1699994 (isEmpty!26918 (_1!24860 (findLongestMatchInner!1554 (regex!7425 (h!50506 rules!3756)) Nil!45085 (size!33424 Nil!45085) input!3238 input!3238 (size!33424 input!3238)))))))

(declare-fun e!2575671 () Bool)

(assert (=> b!4151338 (=> res!1699994 e!2575671)))

(assert (=> b!4151338 e!2575671))

(declare-fun lt!1480536 () Unit!64358)

(assert (=> b!4151338 (= lt!1480536 lt!1480534)))

(declare-fun lt!1480537 () Unit!64358)

(assert (=> b!4151338 (= lt!1480537 (lemmaSemiInverse!2283 (transformation!7425 (h!50506 rules!3756)) (seqFromList!5542 (_1!24860 lt!1480535))))))

(declare-fun b!4151340 () Bool)

(assert (=> b!4151340 (= e!2575672 None!9730)))

(declare-fun b!4151341 () Bool)

(declare-fun res!1699997 () Bool)

(declare-fun e!2575669 () Bool)

(assert (=> b!4151341 (=> (not res!1699997) (not e!2575669))))

(declare-fun lt!1480533 () Option!9731)

(declare-fun ++!11651 (List!45209 List!45209) List!45209)

(declare-fun list!16494 (BalanceConc!26866) List!45209)

(declare-fun charsOf!5014 (Token!13780) BalanceConc!26866)

(declare-fun get!14723 (Option!9731) tuple2!43448)

(assert (=> b!4151341 (= res!1699997 (= (++!11651 (list!16494 (charsOf!5014 (_1!24858 (get!14723 lt!1480533)))) (_2!24858 (get!14723 lt!1480533))) input!3238))))

(declare-fun b!4151342 () Bool)

(assert (=> b!4151342 (= e!2575669 (= (size!33423 (_1!24858 (get!14723 lt!1480533))) (size!33424 (originalCharacters!7921 (_1!24858 (get!14723 lt!1480533))))))))

(declare-fun b!4151343 () Bool)

(declare-fun res!1699998 () Bool)

(assert (=> b!4151343 (=> (not res!1699998) (not e!2575669))))

(assert (=> b!4151343 (= res!1699998 (< (size!33424 (_2!24858 (get!14723 lt!1480533))) (size!33424 input!3238)))))

(declare-fun b!4151344 () Bool)

(declare-fun res!1699993 () Bool)

(assert (=> b!4151344 (=> (not res!1699993) (not e!2575669))))

(assert (=> b!4151344 (= res!1699993 (= (rule!10563 (_1!24858 (get!14723 lt!1480533))) (h!50506 rules!3756)))))

(declare-fun b!4151339 () Bool)

(assert (=> b!4151339 (= e!2575671 (matchR!6159 (regex!7425 (h!50506 rules!3756)) (_1!24860 (findLongestMatchInner!1554 (regex!7425 (h!50506 rules!3756)) Nil!45085 (size!33424 Nil!45085) input!3238 input!3238 (size!33424 input!3238)))))))

(declare-fun d!1228024 () Bool)

(declare-fun e!2575670 () Bool)

(assert (=> d!1228024 e!2575670))

(declare-fun res!1699995 () Bool)

(assert (=> d!1228024 (=> res!1699995 e!2575670)))

(declare-fun isEmpty!26922 (Option!9731) Bool)

(assert (=> d!1228024 (= res!1699995 (isEmpty!26922 lt!1480533))))

(assert (=> d!1228024 (= lt!1480533 e!2575672)))

(declare-fun c!710973 () Bool)

(assert (=> d!1228024 (= c!710973 (isEmpty!26918 (_1!24860 lt!1480535)))))

(declare-fun findLongestMatch!1467 (Regex!12330 List!45209) tuple2!43452)

(assert (=> d!1228024 (= lt!1480535 (findLongestMatch!1467 (regex!7425 (h!50506 rules!3756)) input!3238))))

(assert (=> d!1228024 (ruleValid!3231 thiss!25645 (h!50506 rules!3756))))

(assert (=> d!1228024 (= (maxPrefixOneRule!3143 thiss!25645 (h!50506 rules!3756) input!3238) lt!1480533)))

(declare-fun b!4151345 () Bool)

(declare-fun res!1699992 () Bool)

(assert (=> b!4151345 (=> (not res!1699992) (not e!2575669))))

(assert (=> b!4151345 (= res!1699992 (= (value!232168 (_1!24858 (get!14723 lt!1480533))) (apply!10498 (transformation!7425 (rule!10563 (_1!24858 (get!14723 lt!1480533)))) (seqFromList!5542 (originalCharacters!7921 (_1!24858 (get!14723 lt!1480533)))))))))

(declare-fun b!4151346 () Bool)

(assert (=> b!4151346 (= e!2575670 e!2575669)))

(declare-fun res!1699996 () Bool)

(assert (=> b!4151346 (=> (not res!1699996) (not e!2575669))))

(assert (=> b!4151346 (= res!1699996 (matchR!6159 (regex!7425 (h!50506 rules!3756)) (list!16494 (charsOf!5014 (_1!24858 (get!14723 lt!1480533))))))))

(assert (= (and d!1228024 c!710973) b!4151340))

(assert (= (and d!1228024 (not c!710973)) b!4151338))

(assert (= (and b!4151338 (not res!1699994)) b!4151339))

(assert (= (and d!1228024 (not res!1699995)) b!4151346))

(assert (= (and b!4151346 res!1699996) b!4151341))

(assert (= (and b!4151341 res!1699997) b!4151343))

(assert (= (and b!4151343 res!1699998) b!4151344))

(assert (= (and b!4151344 res!1699993) b!4151345))

(assert (= (and b!4151345 res!1699992) b!4151342))

(declare-fun m!4746871 () Bool)

(assert (=> b!4151342 m!4746871))

(declare-fun m!4746873 () Bool)

(assert (=> b!4151342 m!4746873))

(assert (=> b!4151343 m!4746871))

(declare-fun m!4746875 () Bool)

(assert (=> b!4151343 m!4746875))

(assert (=> b!4151343 m!4746745))

(declare-fun m!4746877 () Bool)

(assert (=> b!4151339 m!4746877))

(assert (=> b!4151339 m!4746745))

(assert (=> b!4151339 m!4746877))

(assert (=> b!4151339 m!4746745))

(declare-fun m!4746879 () Bool)

(assert (=> b!4151339 m!4746879))

(declare-fun m!4746881 () Bool)

(assert (=> b!4151339 m!4746881))

(assert (=> b!4151346 m!4746871))

(declare-fun m!4746883 () Bool)

(assert (=> b!4151346 m!4746883))

(assert (=> b!4151346 m!4746883))

(declare-fun m!4746885 () Bool)

(assert (=> b!4151346 m!4746885))

(assert (=> b!4151346 m!4746885))

(declare-fun m!4746887 () Bool)

(assert (=> b!4151346 m!4746887))

(assert (=> b!4151344 m!4746871))

(assert (=> b!4151341 m!4746871))

(assert (=> b!4151341 m!4746883))

(assert (=> b!4151341 m!4746883))

(assert (=> b!4151341 m!4746885))

(assert (=> b!4151341 m!4746885))

(declare-fun m!4746889 () Bool)

(assert (=> b!4151341 m!4746889))

(assert (=> b!4151338 m!4746877))

(declare-fun m!4746891 () Bool)

(assert (=> b!4151338 m!4746891))

(assert (=> b!4151338 m!4746891))

(declare-fun m!4746893 () Bool)

(assert (=> b!4151338 m!4746893))

(declare-fun m!4746895 () Bool)

(assert (=> b!4151338 m!4746895))

(assert (=> b!4151338 m!4746745))

(assert (=> b!4151338 m!4746891))

(declare-fun m!4746897 () Bool)

(assert (=> b!4151338 m!4746897))

(assert (=> b!4151338 m!4746891))

(declare-fun m!4746899 () Bool)

(assert (=> b!4151338 m!4746899))

(assert (=> b!4151338 m!4746877))

(assert (=> b!4151338 m!4746745))

(assert (=> b!4151338 m!4746879))

(declare-fun m!4746901 () Bool)

(assert (=> b!4151338 m!4746901))

(assert (=> b!4151345 m!4746871))

(declare-fun m!4746903 () Bool)

(assert (=> b!4151345 m!4746903))

(assert (=> b!4151345 m!4746903))

(declare-fun m!4746905 () Bool)

(assert (=> b!4151345 m!4746905))

(declare-fun m!4746907 () Bool)

(assert (=> d!1228024 m!4746907))

(declare-fun m!4746909 () Bool)

(assert (=> d!1228024 m!4746909))

(declare-fun m!4746911 () Bool)

(assert (=> d!1228024 m!4746911))

(declare-fun m!4746913 () Bool)

(assert (=> d!1228024 m!4746913))

(assert (=> b!4151054 d!1228024))

(declare-fun d!1228044 () Bool)

(assert (=> d!1228044 (rulesInvariant!6311 thiss!25645 (t!343145 rules!3756))))

(declare-fun lt!1480540 () Unit!64358)

(declare-fun choose!25423 (LexerInterface!7014 Rule!14650 List!45210) Unit!64358)

(assert (=> d!1228044 (= lt!1480540 (choose!25423 thiss!25645 (h!50506 rules!3756) (t!343145 rules!3756)))))

(assert (=> d!1228044 (rulesInvariant!6311 thiss!25645 (Cons!45086 (h!50506 rules!3756) (t!343145 rules!3756)))))

(assert (=> d!1228044 (= (lemmaInvariantOnRulesThenOnTail!837 thiss!25645 (h!50506 rules!3756) (t!343145 rules!3756)) lt!1480540)))

(declare-fun bs!595449 () Bool)

(assert (= bs!595449 d!1228044))

(assert (=> bs!595449 m!4746629))

(declare-fun m!4746915 () Bool)

(assert (=> bs!595449 m!4746915))

(declare-fun m!4746917 () Bool)

(assert (=> bs!595449 m!4746917))

(assert (=> b!4151054 d!1228044))

(declare-fun b!4151365 () Bool)

(declare-fun e!2575681 () Bool)

(declare-fun lt!1480555 () Option!9731)

(assert (=> b!4151365 (= e!2575681 (contains!9111 (t!343145 rules!3756) (rule!10563 (_1!24858 (get!14723 lt!1480555)))))))

(declare-fun b!4151366 () Bool)

(declare-fun res!1700015 () Bool)

(assert (=> b!4151366 (=> (not res!1700015) (not e!2575681))))

(assert (=> b!4151366 (= res!1700015 (= (value!232168 (_1!24858 (get!14723 lt!1480555))) (apply!10498 (transformation!7425 (rule!10563 (_1!24858 (get!14723 lt!1480555)))) (seqFromList!5542 (originalCharacters!7921 (_1!24858 (get!14723 lt!1480555)))))))))

(declare-fun b!4151367 () Bool)

(declare-fun res!1700019 () Bool)

(assert (=> b!4151367 (=> (not res!1700019) (not e!2575681))))

(assert (=> b!4151367 (= res!1700019 (matchR!6159 (regex!7425 (rule!10563 (_1!24858 (get!14723 lt!1480555)))) (list!16494 (charsOf!5014 (_1!24858 (get!14723 lt!1480555))))))))

(declare-fun bm!290742 () Bool)

(declare-fun call!290747 () Option!9731)

(assert (=> bm!290742 (= call!290747 (maxPrefixOneRule!3143 thiss!25645 (h!50506 (t!343145 rules!3756)) input!3238))))

(declare-fun b!4151368 () Bool)

(declare-fun res!1700018 () Bool)

(assert (=> b!4151368 (=> (not res!1700018) (not e!2575681))))

(assert (=> b!4151368 (= res!1700018 (< (size!33424 (_2!24858 (get!14723 lt!1480555))) (size!33424 input!3238)))))

(declare-fun b!4151369 () Bool)

(declare-fun res!1700017 () Bool)

(assert (=> b!4151369 (=> (not res!1700017) (not e!2575681))))

(assert (=> b!4151369 (= res!1700017 (= (list!16494 (charsOf!5014 (_1!24858 (get!14723 lt!1480555)))) (originalCharacters!7921 (_1!24858 (get!14723 lt!1480555)))))))

(declare-fun b!4151370 () Bool)

(declare-fun e!2575679 () Bool)

(assert (=> b!4151370 (= e!2575679 e!2575681)))

(declare-fun res!1700013 () Bool)

(assert (=> b!4151370 (=> (not res!1700013) (not e!2575681))))

(declare-fun isDefined!7305 (Option!9731) Bool)

(assert (=> b!4151370 (= res!1700013 (isDefined!7305 lt!1480555))))

(declare-fun b!4151371 () Bool)

(declare-fun e!2575680 () Option!9731)

(declare-fun lt!1480552 () Option!9731)

(declare-fun lt!1480551 () Option!9731)

(assert (=> b!4151371 (= e!2575680 (ite (and (is-None!9730 lt!1480552) (is-None!9730 lt!1480551)) None!9730 (ite (is-None!9730 lt!1480551) lt!1480552 (ite (is-None!9730 lt!1480552) lt!1480551 (ite (>= (size!33423 (_1!24858 (v!40396 lt!1480552))) (size!33423 (_1!24858 (v!40396 lt!1480551)))) lt!1480552 lt!1480551)))))))

(assert (=> b!4151371 (= lt!1480552 call!290747)))

(assert (=> b!4151371 (= lt!1480551 (maxPrefix!4204 thiss!25645 (t!343145 (t!343145 rules!3756)) input!3238))))

(declare-fun b!4151372 () Bool)

(declare-fun res!1700014 () Bool)

(assert (=> b!4151372 (=> (not res!1700014) (not e!2575681))))

(assert (=> b!4151372 (= res!1700014 (= (++!11651 (list!16494 (charsOf!5014 (_1!24858 (get!14723 lt!1480555)))) (_2!24858 (get!14723 lt!1480555))) input!3238))))

(declare-fun d!1228046 () Bool)

(assert (=> d!1228046 e!2575679))

(declare-fun res!1700016 () Bool)

(assert (=> d!1228046 (=> res!1700016 e!2575679)))

(assert (=> d!1228046 (= res!1700016 (isEmpty!26922 lt!1480555))))

(assert (=> d!1228046 (= lt!1480555 e!2575680)))

(declare-fun c!710976 () Bool)

(assert (=> d!1228046 (= c!710976 (and (is-Cons!45086 (t!343145 rules!3756)) (is-Nil!45086 (t!343145 (t!343145 rules!3756)))))))

(declare-fun lt!1480554 () Unit!64358)

(declare-fun lt!1480553 () Unit!64358)

(assert (=> d!1228046 (= lt!1480554 lt!1480553)))

(assert (=> d!1228046 (isPrefix!4360 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2813 (List!45209 List!45209) Unit!64358)

(assert (=> d!1228046 (= lt!1480553 (lemmaIsPrefixRefl!2813 input!3238 input!3238))))

(declare-fun rulesValidInductive!2765 (LexerInterface!7014 List!45210) Bool)

(assert (=> d!1228046 (rulesValidInductive!2765 thiss!25645 (t!343145 rules!3756))))

(assert (=> d!1228046 (= (maxPrefix!4204 thiss!25645 (t!343145 rules!3756) input!3238) lt!1480555)))

(declare-fun b!4151373 () Bool)

(assert (=> b!4151373 (= e!2575680 call!290747)))

(assert (= (and d!1228046 c!710976) b!4151373))

(assert (= (and d!1228046 (not c!710976)) b!4151371))

(assert (= (or b!4151373 b!4151371) bm!290742))

(assert (= (and d!1228046 (not res!1700016)) b!4151370))

(assert (= (and b!4151370 res!1700013) b!4151369))

(assert (= (and b!4151369 res!1700017) b!4151368))

(assert (= (and b!4151368 res!1700018) b!4151372))

(assert (= (and b!4151372 res!1700014) b!4151366))

(assert (= (and b!4151366 res!1700015) b!4151367))

(assert (= (and b!4151367 res!1700019) b!4151365))

(declare-fun m!4746919 () Bool)

(assert (=> b!4151366 m!4746919))

(declare-fun m!4746921 () Bool)

(assert (=> b!4151366 m!4746921))

(assert (=> b!4151366 m!4746921))

(declare-fun m!4746923 () Bool)

(assert (=> b!4151366 m!4746923))

(assert (=> b!4151365 m!4746919))

(declare-fun m!4746925 () Bool)

(assert (=> b!4151365 m!4746925))

(declare-fun m!4746927 () Bool)

(assert (=> d!1228046 m!4746927))

(declare-fun m!4746929 () Bool)

(assert (=> d!1228046 m!4746929))

(declare-fun m!4746931 () Bool)

(assert (=> d!1228046 m!4746931))

(declare-fun m!4746933 () Bool)

(assert (=> d!1228046 m!4746933))

(assert (=> b!4151367 m!4746919))

(declare-fun m!4746935 () Bool)

(assert (=> b!4151367 m!4746935))

(assert (=> b!4151367 m!4746935))

(declare-fun m!4746937 () Bool)

(assert (=> b!4151367 m!4746937))

(assert (=> b!4151367 m!4746937))

(declare-fun m!4746939 () Bool)

(assert (=> b!4151367 m!4746939))

(declare-fun m!4746941 () Bool)

(assert (=> bm!290742 m!4746941))

(assert (=> b!4151368 m!4746919))

(declare-fun m!4746943 () Bool)

(assert (=> b!4151368 m!4746943))

(assert (=> b!4151368 m!4746745))

(assert (=> b!4151372 m!4746919))

(assert (=> b!4151372 m!4746935))

(assert (=> b!4151372 m!4746935))

(assert (=> b!4151372 m!4746937))

(assert (=> b!4151372 m!4746937))

(declare-fun m!4746945 () Bool)

(assert (=> b!4151372 m!4746945))

(declare-fun m!4746947 () Bool)

(assert (=> b!4151371 m!4746947))

(assert (=> b!4151369 m!4746919))

(assert (=> b!4151369 m!4746935))

(assert (=> b!4151369 m!4746935))

(assert (=> b!4151369 m!4746937))

(declare-fun m!4746949 () Bool)

(assert (=> b!4151370 m!4746949))

(assert (=> b!4151054 d!1228046))

(declare-fun d!1228048 () Bool)

(assert (=> d!1228048 (= (isEmpty!26919 (t!343145 rules!3756)) (is-Nil!45086 (t!343145 rules!3756)))))

(assert (=> b!4151054 d!1228048))

(declare-fun d!1228050 () Bool)

(declare-fun dynLambda!19448 (Int BalanceConc!26866) TokenValue!7655)

(assert (=> d!1228050 (= (apply!10498 (transformation!7425 r!4008) lt!1480453) (dynLambda!19448 (toValue!10089 (transformation!7425 r!4008)) lt!1480453))))

(declare-fun b_lambda!122087 () Bool)

(assert (=> (not b_lambda!122087) (not d!1228050)))

(declare-fun t!343150 () Bool)

(declare-fun tb!249155 () Bool)

(assert (=> (and b!4151050 (= (toValue!10089 (transformation!7425 rBis!149)) (toValue!10089 (transformation!7425 r!4008))) t!343150) tb!249155))

(declare-fun result!303112 () Bool)

(declare-fun inv!21 (TokenValue!7655) Bool)

(assert (=> tb!249155 (= result!303112 (inv!21 (dynLambda!19448 (toValue!10089 (transformation!7425 r!4008)) lt!1480453)))))

(declare-fun m!4746951 () Bool)

(assert (=> tb!249155 m!4746951))

(assert (=> d!1228050 t!343150))

(declare-fun b_and!322901 () Bool)

(assert (= b_and!322877 (and (=> t!343150 result!303112) b_and!322901)))

(declare-fun t!343152 () Bool)

(declare-fun tb!249157 () Bool)

(assert (=> (and b!4151042 (= (toValue!10089 (transformation!7425 r!4008)) (toValue!10089 (transformation!7425 r!4008))) t!343152) tb!249157))

(declare-fun result!303116 () Bool)

(assert (= result!303116 result!303112))

(assert (=> d!1228050 t!343152))

(declare-fun b_and!322903 () Bool)

(assert (= b_and!322881 (and (=> t!343152 result!303116) b_and!322903)))

(declare-fun tb!249159 () Bool)

(declare-fun t!343154 () Bool)

(assert (=> (and b!4151041 (= (toValue!10089 (transformation!7425 (h!50506 rules!3756))) (toValue!10089 (transformation!7425 r!4008))) t!343154) tb!249159))

(declare-fun result!303118 () Bool)

(assert (= result!303118 result!303112))

(assert (=> d!1228050 t!343154))

(declare-fun b_and!322905 () Bool)

(assert (= b_and!322885 (and (=> t!343154 result!303118) b_and!322905)))

(declare-fun m!4746953 () Bool)

(assert (=> d!1228050 m!4746953))

(assert (=> b!4151044 d!1228050))

(declare-fun d!1228052 () Bool)

(declare-fun lt!1480558 () List!45209)

(assert (=> d!1228052 (= (++!11651 p!2912 lt!1480558) input!3238)))

(declare-fun e!2575687 () List!45209)

(assert (=> d!1228052 (= lt!1480558 e!2575687)))

(declare-fun c!710979 () Bool)

(assert (=> d!1228052 (= c!710979 (is-Cons!45085 p!2912))))

(assert (=> d!1228052 (>= (size!33424 input!3238) (size!33424 p!2912))))

(assert (=> d!1228052 (= (getSuffix!2687 input!3238 p!2912) lt!1480558)))

(declare-fun b!4151380 () Bool)

(assert (=> b!4151380 (= e!2575687 (getSuffix!2687 (tail!6604 input!3238) (t!343144 p!2912)))))

(declare-fun b!4151381 () Bool)

(assert (=> b!4151381 (= e!2575687 input!3238)))

(assert (= (and d!1228052 c!710979) b!4151380))

(assert (= (and d!1228052 (not c!710979)) b!4151381))

(declare-fun m!4746955 () Bool)

(assert (=> d!1228052 m!4746955))

(assert (=> d!1228052 m!4746745))

(assert (=> d!1228052 m!4746607))

(assert (=> b!4151380 m!4746749))

(assert (=> b!4151380 m!4746749))

(declare-fun m!4746957 () Bool)

(assert (=> b!4151380 m!4746957))

(assert (=> b!4151044 d!1228052))

(declare-fun b!4151404 () Bool)

(declare-fun e!2575702 () Bool)

(assert (=> b!4151404 (= e!2575702 true)))

(declare-fun d!1228054 () Bool)

(assert (=> d!1228054 e!2575702))

(assert (= d!1228054 b!4151404))

(declare-fun order!23935 () Int)

(declare-fun order!23933 () Int)

(declare-fun lambda!129033 () Int)

(declare-fun dynLambda!19449 (Int Int) Int)

(declare-fun dynLambda!19450 (Int Int) Int)

(assert (=> b!4151404 (< (dynLambda!19449 order!23933 (toValue!10089 (transformation!7425 r!4008))) (dynLambda!19450 order!23935 lambda!129033))))

(declare-fun order!23937 () Int)

(declare-fun dynLambda!19451 (Int Int) Int)

(assert (=> b!4151404 (< (dynLambda!19451 order!23937 (toChars!9948 (transformation!7425 r!4008))) (dynLambda!19450 order!23935 lambda!129033))))

(declare-fun dynLambda!19452 (Int TokenValue!7655) BalanceConc!26866)

(assert (=> d!1228054 (= (list!16494 (dynLambda!19452 (toChars!9948 (transformation!7425 r!4008)) (dynLambda!19448 (toValue!10089 (transformation!7425 r!4008)) lt!1480453))) (list!16494 lt!1480453))))

(declare-fun lt!1480565 () Unit!64358)

(declare-fun ForallOf!997 (Int BalanceConc!26866) Unit!64358)

(assert (=> d!1228054 (= lt!1480565 (ForallOf!997 lambda!129033 lt!1480453))))

(assert (=> d!1228054 (= (lemmaSemiInverse!2283 (transformation!7425 r!4008) lt!1480453) lt!1480565)))

(declare-fun b_lambda!122093 () Bool)

(assert (=> (not b_lambda!122093) (not d!1228054)))

(declare-fun t!343168 () Bool)

(declare-fun tb!249173 () Bool)

(assert (=> (and b!4151050 (= (toChars!9948 (transformation!7425 rBis!149)) (toChars!9948 (transformation!7425 r!4008))) t!343168) tb!249173))

(declare-fun tp!1265304 () Bool)

(declare-fun e!2575705 () Bool)

(declare-fun b!4151409 () Bool)

(declare-fun inv!59701 (Conc!13636) Bool)

(assert (=> b!4151409 (= e!2575705 (and (inv!59701 (c!710935 (dynLambda!19452 (toChars!9948 (transformation!7425 r!4008)) (dynLambda!19448 (toValue!10089 (transformation!7425 r!4008)) lt!1480453)))) tp!1265304))))

(declare-fun result!303136 () Bool)

(declare-fun inv!59702 (BalanceConc!26866) Bool)

(assert (=> tb!249173 (= result!303136 (and (inv!59702 (dynLambda!19452 (toChars!9948 (transformation!7425 r!4008)) (dynLambda!19448 (toValue!10089 (transformation!7425 r!4008)) lt!1480453))) e!2575705))))

(assert (= tb!249173 b!4151409))

(declare-fun m!4746979 () Bool)

(assert (=> b!4151409 m!4746979))

(declare-fun m!4746981 () Bool)

(assert (=> tb!249173 m!4746981))

(assert (=> d!1228054 t!343168))

(declare-fun b_and!322919 () Bool)

(assert (= b_and!322879 (and (=> t!343168 result!303136) b_and!322919)))

(declare-fun t!343170 () Bool)

(declare-fun tb!249175 () Bool)

(assert (=> (and b!4151042 (= (toChars!9948 (transformation!7425 r!4008)) (toChars!9948 (transformation!7425 r!4008))) t!343170) tb!249175))

(declare-fun result!303140 () Bool)

(assert (= result!303140 result!303136))

(assert (=> d!1228054 t!343170))

(declare-fun b_and!322921 () Bool)

(assert (= b_and!322883 (and (=> t!343170 result!303140) b_and!322921)))

(declare-fun t!343172 () Bool)

(declare-fun tb!249177 () Bool)

(assert (=> (and b!4151041 (= (toChars!9948 (transformation!7425 (h!50506 rules!3756))) (toChars!9948 (transformation!7425 r!4008))) t!343172) tb!249177))

(declare-fun result!303142 () Bool)

(assert (= result!303142 result!303136))

(assert (=> d!1228054 t!343172))

(declare-fun b_and!322923 () Bool)

(assert (= b_and!322887 (and (=> t!343172 result!303142) b_and!322923)))

(declare-fun b_lambda!122095 () Bool)

(assert (=> (not b_lambda!122095) (not d!1228054)))

(assert (=> d!1228054 t!343150))

(declare-fun b_and!322925 () Bool)

(assert (= b_and!322901 (and (=> t!343150 result!303112) b_and!322925)))

(assert (=> d!1228054 t!343152))

(declare-fun b_and!322927 () Bool)

(assert (= b_and!322903 (and (=> t!343152 result!303116) b_and!322927)))

(assert (=> d!1228054 t!343154))

(declare-fun b_and!322929 () Bool)

(assert (= b_and!322905 (and (=> t!343154 result!303118) b_and!322929)))

(assert (=> d!1228054 m!4746953))

(assert (=> d!1228054 m!4746953))

(declare-fun m!4746983 () Bool)

(assert (=> d!1228054 m!4746983))

(declare-fun m!4746985 () Bool)

(assert (=> d!1228054 m!4746985))

(assert (=> d!1228054 m!4746983))

(declare-fun m!4746987 () Bool)

(assert (=> d!1228054 m!4746987))

(declare-fun m!4746989 () Bool)

(assert (=> d!1228054 m!4746989))

(assert (=> b!4151044 d!1228054))

(declare-fun b!4151410 () Bool)

(declare-fun e!2575708 () Bool)

(declare-fun lt!1480570 () Option!9731)

(assert (=> b!4151410 (= e!2575708 (contains!9111 rules!3756 (rule!10563 (_1!24858 (get!14723 lt!1480570)))))))

(declare-fun b!4151411 () Bool)

(declare-fun res!1700022 () Bool)

(assert (=> b!4151411 (=> (not res!1700022) (not e!2575708))))

(assert (=> b!4151411 (= res!1700022 (= (value!232168 (_1!24858 (get!14723 lt!1480570))) (apply!10498 (transformation!7425 (rule!10563 (_1!24858 (get!14723 lt!1480570)))) (seqFromList!5542 (originalCharacters!7921 (_1!24858 (get!14723 lt!1480570)))))))))

(declare-fun b!4151412 () Bool)

(declare-fun res!1700026 () Bool)

(assert (=> b!4151412 (=> (not res!1700026) (not e!2575708))))

(assert (=> b!4151412 (= res!1700026 (matchR!6159 (regex!7425 (rule!10563 (_1!24858 (get!14723 lt!1480570)))) (list!16494 (charsOf!5014 (_1!24858 (get!14723 lt!1480570))))))))

(declare-fun call!290748 () Option!9731)

(declare-fun bm!290743 () Bool)

(assert (=> bm!290743 (= call!290748 (maxPrefixOneRule!3143 thiss!25645 (h!50506 rules!3756) input!3238))))

(declare-fun b!4151413 () Bool)

(declare-fun res!1700025 () Bool)

(assert (=> b!4151413 (=> (not res!1700025) (not e!2575708))))

(assert (=> b!4151413 (= res!1700025 (< (size!33424 (_2!24858 (get!14723 lt!1480570))) (size!33424 input!3238)))))

(declare-fun b!4151414 () Bool)

(declare-fun res!1700024 () Bool)

(assert (=> b!4151414 (=> (not res!1700024) (not e!2575708))))

(assert (=> b!4151414 (= res!1700024 (= (list!16494 (charsOf!5014 (_1!24858 (get!14723 lt!1480570)))) (originalCharacters!7921 (_1!24858 (get!14723 lt!1480570)))))))

(declare-fun b!4151415 () Bool)

(declare-fun e!2575706 () Bool)

(assert (=> b!4151415 (= e!2575706 e!2575708)))

(declare-fun res!1700020 () Bool)

(assert (=> b!4151415 (=> (not res!1700020) (not e!2575708))))

(assert (=> b!4151415 (= res!1700020 (isDefined!7305 lt!1480570))))

(declare-fun b!4151416 () Bool)

(declare-fun e!2575707 () Option!9731)

(declare-fun lt!1480567 () Option!9731)

(declare-fun lt!1480566 () Option!9731)

(assert (=> b!4151416 (= e!2575707 (ite (and (is-None!9730 lt!1480567) (is-None!9730 lt!1480566)) None!9730 (ite (is-None!9730 lt!1480566) lt!1480567 (ite (is-None!9730 lt!1480567) lt!1480566 (ite (>= (size!33423 (_1!24858 (v!40396 lt!1480567))) (size!33423 (_1!24858 (v!40396 lt!1480566)))) lt!1480567 lt!1480566)))))))

(assert (=> b!4151416 (= lt!1480567 call!290748)))

(assert (=> b!4151416 (= lt!1480566 (maxPrefix!4204 thiss!25645 (t!343145 rules!3756) input!3238))))

(declare-fun b!4151417 () Bool)

(declare-fun res!1700021 () Bool)

(assert (=> b!4151417 (=> (not res!1700021) (not e!2575708))))

(assert (=> b!4151417 (= res!1700021 (= (++!11651 (list!16494 (charsOf!5014 (_1!24858 (get!14723 lt!1480570)))) (_2!24858 (get!14723 lt!1480570))) input!3238))))

(declare-fun d!1228060 () Bool)

(assert (=> d!1228060 e!2575706))

(declare-fun res!1700023 () Bool)

(assert (=> d!1228060 (=> res!1700023 e!2575706)))

(assert (=> d!1228060 (= res!1700023 (isEmpty!26922 lt!1480570))))

(assert (=> d!1228060 (= lt!1480570 e!2575707)))

(declare-fun c!710984 () Bool)

(assert (=> d!1228060 (= c!710984 (and (is-Cons!45086 rules!3756) (is-Nil!45086 (t!343145 rules!3756))))))

(declare-fun lt!1480569 () Unit!64358)

(declare-fun lt!1480568 () Unit!64358)

(assert (=> d!1228060 (= lt!1480569 lt!1480568)))

(assert (=> d!1228060 (isPrefix!4360 input!3238 input!3238)))

(assert (=> d!1228060 (= lt!1480568 (lemmaIsPrefixRefl!2813 input!3238 input!3238))))

(assert (=> d!1228060 (rulesValidInductive!2765 thiss!25645 rules!3756)))

(assert (=> d!1228060 (= (maxPrefix!4204 thiss!25645 rules!3756 input!3238) lt!1480570)))

(declare-fun b!4151418 () Bool)

(assert (=> b!4151418 (= e!2575707 call!290748)))

(assert (= (and d!1228060 c!710984) b!4151418))

(assert (= (and d!1228060 (not c!710984)) b!4151416))

(assert (= (or b!4151418 b!4151416) bm!290743))

(assert (= (and d!1228060 (not res!1700023)) b!4151415))

(assert (= (and b!4151415 res!1700020) b!4151414))

(assert (= (and b!4151414 res!1700024) b!4151413))

(assert (= (and b!4151413 res!1700025) b!4151417))

(assert (= (and b!4151417 res!1700021) b!4151411))

(assert (= (and b!4151411 res!1700022) b!4151412))

(assert (= (and b!4151412 res!1700026) b!4151410))

(declare-fun m!4746991 () Bool)

(assert (=> b!4151411 m!4746991))

(declare-fun m!4746993 () Bool)

(assert (=> b!4151411 m!4746993))

(assert (=> b!4151411 m!4746993))

(declare-fun m!4746995 () Bool)

(assert (=> b!4151411 m!4746995))

(assert (=> b!4151410 m!4746991))

(declare-fun m!4746997 () Bool)

(assert (=> b!4151410 m!4746997))

(declare-fun m!4746999 () Bool)

(assert (=> d!1228060 m!4746999))

(assert (=> d!1228060 m!4746929))

(assert (=> d!1228060 m!4746931))

(declare-fun m!4747001 () Bool)

(assert (=> d!1228060 m!4747001))

(assert (=> b!4151412 m!4746991))

(declare-fun m!4747003 () Bool)

(assert (=> b!4151412 m!4747003))

(assert (=> b!4151412 m!4747003))

(declare-fun m!4747005 () Bool)

(assert (=> b!4151412 m!4747005))

(assert (=> b!4151412 m!4747005))

(declare-fun m!4747007 () Bool)

(assert (=> b!4151412 m!4747007))

(assert (=> bm!290743 m!4746621))

(assert (=> b!4151413 m!4746991))

(declare-fun m!4747009 () Bool)

(assert (=> b!4151413 m!4747009))

(assert (=> b!4151413 m!4746745))

(assert (=> b!4151417 m!4746991))

(assert (=> b!4151417 m!4747003))

(assert (=> b!4151417 m!4747003))

(assert (=> b!4151417 m!4747005))

(assert (=> b!4151417 m!4747005))

(declare-fun m!4747011 () Bool)

(assert (=> b!4151417 m!4747011))

(assert (=> b!4151416 m!4746625))

(assert (=> b!4151414 m!4746991))

(assert (=> b!4151414 m!4747003))

(assert (=> b!4151414 m!4747003))

(assert (=> b!4151414 m!4747005))

(declare-fun m!4747013 () Bool)

(assert (=> b!4151415 m!4747013))

(assert (=> b!4151044 d!1228060))

(declare-fun d!1228062 () Bool)

(declare-fun fromListB!2546 (List!45209) BalanceConc!26866)

(assert (=> d!1228062 (= (seqFromList!5542 p!2912) (fromListB!2546 p!2912))))

(declare-fun bs!595450 () Bool)

(assert (= bs!595450 d!1228062))

(declare-fun m!4747015 () Bool)

(assert (=> bs!595450 m!4747015))

(assert (=> b!4151044 d!1228062))

(declare-fun d!1228064 () Bool)

(declare-fun lt!1480573 () Int)

(assert (=> d!1228064 (>= lt!1480573 0)))

(declare-fun e!2575711 () Int)

(assert (=> d!1228064 (= lt!1480573 e!2575711)))

(declare-fun c!710987 () Bool)

(assert (=> d!1228064 (= c!710987 (is-Nil!45085 p!2912))))

(assert (=> d!1228064 (= (size!33424 p!2912) lt!1480573)))

(declare-fun b!4151423 () Bool)

(assert (=> b!4151423 (= e!2575711 0)))

(declare-fun b!4151424 () Bool)

(assert (=> b!4151424 (= e!2575711 (+ 1 (size!33424 (t!343144 p!2912))))))

(assert (= (and d!1228064 c!710987) b!4151423))

(assert (= (and d!1228064 (not c!710987)) b!4151424))

(declare-fun m!4747017 () Bool)

(assert (=> b!4151424 m!4747017))

(assert (=> b!4151044 d!1228064))

(declare-fun b!4151435 () Bool)

(declare-fun e!2575714 () Bool)

(assert (=> b!4151435 (= e!2575714 tp_is_empty!21583)))

(declare-fun b!4151437 () Bool)

(declare-fun tp!1265318 () Bool)

(assert (=> b!4151437 (= e!2575714 tp!1265318)))

(assert (=> b!4151045 (= tp!1265255 e!2575714)))

(declare-fun b!4151438 () Bool)

(declare-fun tp!1265319 () Bool)

(declare-fun tp!1265315 () Bool)

(assert (=> b!4151438 (= e!2575714 (and tp!1265319 tp!1265315))))

(declare-fun b!4151436 () Bool)

(declare-fun tp!1265316 () Bool)

(declare-fun tp!1265317 () Bool)

(assert (=> b!4151436 (= e!2575714 (and tp!1265316 tp!1265317))))

(assert (= (and b!4151045 (is-ElementMatch!12330 (regex!7425 (h!50506 rules!3756)))) b!4151435))

(assert (= (and b!4151045 (is-Concat!19986 (regex!7425 (h!50506 rules!3756)))) b!4151436))

(assert (= (and b!4151045 (is-Star!12330 (regex!7425 (h!50506 rules!3756)))) b!4151437))

(assert (= (and b!4151045 (is-Union!12330 (regex!7425 (h!50506 rules!3756)))) b!4151438))

(declare-fun b!4151447 () Bool)

(declare-fun e!2575719 () Bool)

(declare-fun tp!1265322 () Bool)

(assert (=> b!4151447 (= e!2575719 (and tp_is_empty!21583 tp!1265322))))

(assert (=> b!4151061 (= tp!1265260 e!2575719)))

(assert (= (and b!4151061 (is-Cons!45085 (t!343144 input!3238))) b!4151447))

(declare-fun b!4151448 () Bool)

(declare-fun e!2575720 () Bool)

(assert (=> b!4151448 (= e!2575720 tp_is_empty!21583)))

(declare-fun b!4151450 () Bool)

(declare-fun tp!1265326 () Bool)

(assert (=> b!4151450 (= e!2575720 tp!1265326)))

(assert (=> b!4151047 (= tp!1265261 e!2575720)))

(declare-fun b!4151451 () Bool)

(declare-fun tp!1265327 () Bool)

(declare-fun tp!1265323 () Bool)

(assert (=> b!4151451 (= e!2575720 (and tp!1265327 tp!1265323))))

(declare-fun b!4151449 () Bool)

(declare-fun tp!1265324 () Bool)

(declare-fun tp!1265325 () Bool)

(assert (=> b!4151449 (= e!2575720 (and tp!1265324 tp!1265325))))

(assert (= (and b!4151047 (is-ElementMatch!12330 (regex!7425 r!4008))) b!4151448))

(assert (= (and b!4151047 (is-Concat!19986 (regex!7425 r!4008))) b!4151449))

(assert (= (and b!4151047 (is-Star!12330 (regex!7425 r!4008))) b!4151450))

(assert (= (and b!4151047 (is-Union!12330 (regex!7425 r!4008))) b!4151451))

(declare-fun b!4151452 () Bool)

(declare-fun e!2575721 () Bool)

(assert (=> b!4151452 (= e!2575721 tp_is_empty!21583)))

(declare-fun b!4151454 () Bool)

(declare-fun tp!1265331 () Bool)

(assert (=> b!4151454 (= e!2575721 tp!1265331)))

(assert (=> b!4151037 (= tp!1265257 e!2575721)))

(declare-fun b!4151455 () Bool)

(declare-fun tp!1265332 () Bool)

(declare-fun tp!1265328 () Bool)

(assert (=> b!4151455 (= e!2575721 (and tp!1265332 tp!1265328))))

(declare-fun b!4151453 () Bool)

(declare-fun tp!1265329 () Bool)

(declare-fun tp!1265330 () Bool)

(assert (=> b!4151453 (= e!2575721 (and tp!1265329 tp!1265330))))

(assert (= (and b!4151037 (is-ElementMatch!12330 (regex!7425 rBis!149))) b!4151452))

(assert (= (and b!4151037 (is-Concat!19986 (regex!7425 rBis!149))) b!4151453))

(assert (= (and b!4151037 (is-Star!12330 (regex!7425 rBis!149))) b!4151454))

(assert (= (and b!4151037 (is-Union!12330 (regex!7425 rBis!149))) b!4151455))

(declare-fun b!4151456 () Bool)

(declare-fun e!2575722 () Bool)

(declare-fun tp!1265333 () Bool)

(assert (=> b!4151456 (= e!2575722 (and tp_is_empty!21583 tp!1265333))))

(assert (=> b!4151055 (= tp!1265256 e!2575722)))

(assert (= (and b!4151055 (is-Cons!45085 (t!343144 p!2912))) b!4151456))

(declare-fun b!4151481 () Bool)

(declare-fun b_free!118647 () Bool)

(declare-fun b_next!119351 () Bool)

(assert (=> b!4151481 (= b_free!118647 (not b_next!119351))))

(declare-fun tb!249179 () Bool)

(declare-fun t!343174 () Bool)

(assert (=> (and b!4151481 (= (toValue!10089 (transformation!7425 (h!50506 (t!343145 rules!3756)))) (toValue!10089 (transformation!7425 r!4008))) t!343174) tb!249179))

(declare-fun result!303150 () Bool)

(assert (= result!303150 result!303112))

(assert (=> d!1228050 t!343174))

(assert (=> d!1228054 t!343174))

(declare-fun tp!1265345 () Bool)

(declare-fun b_and!322931 () Bool)

(assert (=> b!4151481 (= tp!1265345 (and (=> t!343174 result!303150) b_and!322931))))

(declare-fun b_free!118649 () Bool)

(declare-fun b_next!119353 () Bool)

(assert (=> b!4151481 (= b_free!118649 (not b_next!119353))))

(declare-fun tb!249181 () Bool)

(declare-fun t!343176 () Bool)

(assert (=> (and b!4151481 (= (toChars!9948 (transformation!7425 (h!50506 (t!343145 rules!3756)))) (toChars!9948 (transformation!7425 r!4008))) t!343176) tb!249181))

(declare-fun result!303152 () Bool)

(assert (= result!303152 result!303136))

(assert (=> d!1228054 t!343176))

(declare-fun b_and!322933 () Bool)

(declare-fun tp!1265342 () Bool)

(assert (=> b!4151481 (= tp!1265342 (and (=> t!343176 result!303152) b_and!322933))))

(declare-fun e!2575736 () Bool)

(assert (=> b!4151481 (= e!2575736 (and tp!1265345 tp!1265342))))

(declare-fun e!2575737 () Bool)

(declare-fun tp!1265344 () Bool)

(declare-fun b!4151480 () Bool)

(assert (=> b!4151480 (= e!2575737 (and tp!1265344 (inv!59696 (tag!8285 (h!50506 (t!343145 rules!3756)))) (inv!59699 (transformation!7425 (h!50506 (t!343145 rules!3756)))) e!2575736))))

(declare-fun b!4151479 () Bool)

(declare-fun e!2575735 () Bool)

(declare-fun tp!1265343 () Bool)

(assert (=> b!4151479 (= e!2575735 (and e!2575737 tp!1265343))))

(assert (=> b!4151060 (= tp!1265252 e!2575735)))

(assert (= b!4151480 b!4151481))

(assert (= b!4151479 b!4151480))

(assert (= (and b!4151060 (is-Cons!45086 (t!343145 rules!3756))) b!4151479))

(declare-fun m!4747019 () Bool)

(assert (=> b!4151480 m!4747019))

(declare-fun m!4747021 () Bool)

(assert (=> b!4151480 m!4747021))

(declare-fun b_lambda!122097 () Bool)

(assert (= b_lambda!122095 (or (and b!4151050 b_free!118623 (= (toValue!10089 (transformation!7425 rBis!149)) (toValue!10089 (transformation!7425 r!4008)))) (and b!4151042 b_free!118627) (and b!4151041 b_free!118631 (= (toValue!10089 (transformation!7425 (h!50506 rules!3756))) (toValue!10089 (transformation!7425 r!4008)))) (and b!4151481 b_free!118647 (= (toValue!10089 (transformation!7425 (h!50506 (t!343145 rules!3756)))) (toValue!10089 (transformation!7425 r!4008)))) b_lambda!122097)))

(declare-fun b_lambda!122099 () Bool)

(assert (= b_lambda!122087 (or (and b!4151050 b_free!118623 (= (toValue!10089 (transformation!7425 rBis!149)) (toValue!10089 (transformation!7425 r!4008)))) (and b!4151042 b_free!118627) (and b!4151041 b_free!118631 (= (toValue!10089 (transformation!7425 (h!50506 rules!3756))) (toValue!10089 (transformation!7425 r!4008)))) (and b!4151481 b_free!118647 (= (toValue!10089 (transformation!7425 (h!50506 (t!343145 rules!3756)))) (toValue!10089 (transformation!7425 r!4008)))) b_lambda!122099)))

(declare-fun b_lambda!122101 () Bool)

(assert (= b_lambda!122093 (or (and b!4151050 b_free!118625 (= (toChars!9948 (transformation!7425 rBis!149)) (toChars!9948 (transformation!7425 r!4008)))) (and b!4151042 b_free!118629) (and b!4151041 b_free!118633 (= (toChars!9948 (transformation!7425 (h!50506 rules!3756))) (toChars!9948 (transformation!7425 r!4008)))) (and b!4151481 b_free!118649 (= (toChars!9948 (transformation!7425 (h!50506 (t!343145 rules!3756)))) (toChars!9948 (transformation!7425 r!4008)))) b_lambda!122101)))

(push 1)

(assert (not b!4151366))

(assert (not d!1227980))

(assert (not b!4151338))

(assert (not b!4151195))

(assert (not b!4151409))

(assert (not b_next!119337))

(assert (not b!4151230))

(assert (not d!1228000))

(assert (not b!4151197))

(assert (not d!1228062))

(assert (not b_lambda!122097))

(assert (not d!1228012))

(assert (not b!4151246))

(assert (not b_lambda!122101))

(assert (not b!4151438))

(assert (not b!4151339))

(assert (not d!1228024))

(assert (not b_next!119333))

(assert (not d!1228044))

(assert (not b!4151369))

(assert (not d!1228020))

(assert (not b!4151268))

(assert b_and!322921)

(assert (not b!4151264))

(assert (not b!4151413))

(assert b_and!322933)

(assert (not b!4151415))

(assert (not d!1228052))

(assert (not b!4151260))

(assert (not b!4151199))

(assert (not d!1227966))

(assert (not b!4151342))

(assert (not b!4151148))

(assert (not d!1228014))

(assert (not b!4151343))

(assert (not b!4151346))

(assert (not b!4151146))

(assert (not b!4151450))

(assert (not b!4151416))

(assert (not b!4151480))

(assert (not d!1228046))

(assert (not d!1228018))

(assert (not b!4151151))

(assert (not tb!249155))

(assert (not d!1228006))

(assert b_and!322923)

(assert (not b_next!119335))

(assert (not b!4151380))

(assert b_and!322929)

(assert (not b!4151193))

(assert (not b!4151453))

(assert (not b!4151455))

(assert (not bm!290736))

(assert b_and!322919)

(assert (not d!1227974))

(assert (not d!1227996))

(assert (not b!4151411))

(assert (not b!4151147))

(assert (not b!4151367))

(assert tp_is_empty!21583)

(assert (not b!4151194))

(assert (not b!4151437))

(assert (not d!1227988))

(assert (not b!4151255))

(assert (not b!4151436))

(assert (not tb!249173))

(assert (not b!4151414))

(assert (not b_next!119351))

(assert (not b!4151371))

(assert (not b!4151451))

(assert (not d!1228022))

(assert (not b!4151370))

(assert (not bm!290742))

(assert (not b!4151202))

(assert (not d!1228008))

(assert (not d!1228002))

(assert (not d!1227982))

(assert (not b!4151410))

(assert (not d!1228004))

(assert (not b!4151479))

(assert (not b!4151372))

(assert (not b!4151259))

(assert (not b!4151424))

(assert (not b_next!119331))

(assert (not b!4151188))

(assert (not b_lambda!122099))

(assert (not b_next!119327))

(assert (not b!4151447))

(assert (not d!1228060))

(assert (not b!4151244))

(assert (not bm!290743))

(assert (not b!4151217))

(assert (not b!4151417))

(assert (not b_next!119353))

(assert (not b!4151270))

(assert (not b!4151223))

(assert (not d!1228054))

(assert (not b!4151368))

(assert (not d!1227964))

(assert (not d!1228016))

(assert (not d!1227972))

(assert (not b!4151345))

(assert (not b!4151412))

(assert b_and!322927)

(assert (not b_next!119329))

(assert (not b!4151243))

(assert (not b!4151341))

(assert (not b!4151344))

(assert b_and!322925)

(assert (not b!4151365))

(assert b_and!322931)

(assert (not b!4151449))

(assert (not b!4151253))

(assert (not b!4151454))

(assert (not b!4151456))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!119337))

(assert (not b_next!119333))

(assert b_and!322921)

(assert b_and!322933)

(assert b_and!322919)

(assert (not b_next!119351))

(assert (not b_next!119353))

(assert b_and!322923)

(assert (not b_next!119335))

(assert b_and!322929)

(assert (not b_next!119331))

(assert (not b_next!119327))

(assert b_and!322927)

(assert (not b_next!119329))

(assert b_and!322925)

(assert b_and!322931)

(check-sat)

(pop 1)

