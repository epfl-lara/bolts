; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!347992 () Bool)

(assert start!347992)

(declare-fun b!3695734 () Bool)

(declare-fun b_free!98289 () Bool)

(declare-fun b_next!98993 () Bool)

(assert (=> b!3695734 (= b_free!98289 (not b_next!98993))))

(declare-fun tp!1123291 () Bool)

(declare-fun b_and!276211 () Bool)

(assert (=> b!3695734 (= tp!1123291 b_and!276211)))

(declare-fun b_free!98291 () Bool)

(declare-fun b_next!98995 () Bool)

(assert (=> b!3695734 (= b_free!98291 (not b_next!98995))))

(declare-fun tp!1123290 () Bool)

(declare-fun b_and!276213 () Bool)

(assert (=> b!3695734 (= tp!1123290 b_and!276213)))

(declare-fun b!3695722 () Bool)

(declare-fun b_free!98293 () Bool)

(declare-fun b_next!98997 () Bool)

(assert (=> b!3695722 (= b_free!98293 (not b_next!98997))))

(declare-fun tp!1123294 () Bool)

(declare-fun b_and!276215 () Bool)

(assert (=> b!3695722 (= tp!1123294 b_and!276215)))

(declare-fun b_free!98295 () Bool)

(declare-fun b_next!98999 () Bool)

(assert (=> b!3695722 (= b_free!98295 (not b_next!98999))))

(declare-fun tp!1123292 () Bool)

(declare-fun b_and!276217 () Bool)

(assert (=> b!3695722 (= tp!1123292 b_and!276217)))

(declare-datatypes ((List!39339 0))(
  ( (Nil!39215) (Cons!39215 (h!44635 (_ BitVec 16)) (t!301674 List!39339)) )
))
(declare-datatypes ((TokenValue!6175 0))(
  ( (FloatLiteralValue!12350 (text!43670 List!39339)) (TokenValueExt!6174 (__x!24567 Int)) (Broken!30875 (value!189862 List!39339)) (Object!6298) (End!6175) (Def!6175) (Underscore!6175) (Match!6175) (Else!6175) (Error!6175) (Case!6175) (If!6175) (Extends!6175) (Abstract!6175) (Class!6175) (Val!6175) (DelimiterValue!12350 (del!6235 List!39339)) (KeywordValue!6181 (value!189863 List!39339)) (CommentValue!12350 (value!189864 List!39339)) (WhitespaceValue!12350 (value!189865 List!39339)) (IndentationValue!6175 (value!189866 List!39339)) (String!44210) (Int32!6175) (Broken!30876 (value!189867 List!39339)) (Boolean!6176) (Unit!57206) (OperatorValue!6178 (op!6235 List!39339)) (IdentifierValue!12350 (value!189868 List!39339)) (IdentifierValue!12351 (value!189869 List!39339)) (WhitespaceValue!12351 (value!189870 List!39339)) (True!12350) (False!12350) (Broken!30877 (value!189871 List!39339)) (Broken!30878 (value!189872 List!39339)) (True!12351) (RightBrace!6175) (RightBracket!6175) (Colon!6175) (Null!6175) (Comma!6175) (LeftBracket!6175) (False!12351) (LeftBrace!6175) (ImaginaryLiteralValue!6175 (text!43671 List!39339)) (StringLiteralValue!18525 (value!189873 List!39339)) (EOFValue!6175 (value!189874 List!39339)) (IdentValue!6175 (value!189875 List!39339)) (DelimiterValue!12351 (value!189876 List!39339)) (DedentValue!6175 (value!189877 List!39339)) (NewLineValue!6175 (value!189878 List!39339)) (IntegerValue!18525 (value!189879 (_ BitVec 32)) (text!43672 List!39339)) (IntegerValue!18526 (value!189880 Int) (text!43673 List!39339)) (Times!6175) (Or!6175) (Equal!6175) (Minus!6175) (Broken!30879 (value!189881 List!39339)) (And!6175) (Div!6175) (LessEqual!6175) (Mod!6175) (Concat!16879) (Not!6175) (Plus!6175) (SpaceValue!6175 (value!189882 List!39339)) (IntegerValue!18527 (value!189883 Int) (text!43674 List!39339)) (StringLiteralValue!18526 (text!43675 List!39339)) (FloatLiteralValue!12351 (text!43676 List!39339)) (BytesLiteralValue!6175 (value!189884 List!39339)) (CommentValue!12351 (value!189885 List!39339)) (StringLiteralValue!18527 (value!189886 List!39339)) (ErrorTokenValue!6175 (msg!6236 List!39339)) )
))
(declare-datatypes ((C!21594 0))(
  ( (C!21595 (val!12845 Int)) )
))
(declare-datatypes ((List!39340 0))(
  ( (Nil!39216) (Cons!39216 (h!44636 C!21594) (t!301675 List!39340)) )
))
(declare-datatypes ((IArray!24089 0))(
  ( (IArray!24090 (innerList!12102 List!39340)) )
))
(declare-datatypes ((Conc!12042 0))(
  ( (Node!12042 (left!30561 Conc!12042) (right!30891 Conc!12042) (csize!24314 Int) (cheight!12253 Int)) (Leaf!18626 (xs!15244 IArray!24089) (csize!24315 Int)) (Empty!12042) )
))
(declare-datatypes ((BalanceConc!23698 0))(
  ( (BalanceConc!23699 (c!638843 Conc!12042)) )
))
(declare-datatypes ((TokenValueInjection!11778 0))(
  ( (TokenValueInjection!11779 (toValue!8277 Int) (toChars!8136 Int)) )
))
(declare-datatypes ((Regex!10704 0))(
  ( (ElementMatch!10704 (c!638844 C!21594)) (Concat!16880 (regOne!21920 Regex!10704) (regTwo!21920 Regex!10704)) (EmptyExpr!10704) (Star!10704 (reg!11033 Regex!10704)) (EmptyLang!10704) (Union!10704 (regOne!21921 Regex!10704) (regTwo!21921 Regex!10704)) )
))
(declare-datatypes ((String!44211 0))(
  ( (String!44212 (value!189887 String)) )
))
(declare-datatypes ((Rule!11690 0))(
  ( (Rule!11691 (regex!5945 Regex!10704) (tag!6769 String!44211) (isSeparator!5945 Bool) (transformation!5945 TokenValueInjection!11778)) )
))
(declare-datatypes ((Token!11244 0))(
  ( (Token!11245 (value!189888 TokenValue!6175) (rule!8799 Rule!11690) (size!29923 Int) (originalCharacters!6653 List!39340)) )
))
(declare-fun token!544 () Token!11244)

(declare-fun e!2288653 () Bool)

(declare-fun b!3695719 () Bool)

(declare-fun e!2288664 () Bool)

(declare-fun tp!1123289 () Bool)

(declare-fun inv!21 (TokenValue!6175) Bool)

(assert (=> b!3695719 (= e!2288664 (and (inv!21 (value!189888 token!544)) e!2288653 tp!1123289))))

(declare-fun b!3695720 () Bool)

(declare-fun res!1502792 () Bool)

(declare-fun e!2288657 () Bool)

(assert (=> b!3695720 (=> res!1502792 e!2288657)))

(declare-fun lt!1293640 () Bool)

(assert (=> b!3695720 (= res!1502792 lt!1293640)))

(declare-fun b!3695721 () Bool)

(declare-fun res!1502793 () Bool)

(declare-fun e!2288660 () Bool)

(assert (=> b!3695721 (=> (not res!1502793) (not e!2288660))))

(declare-datatypes ((List!39341 0))(
  ( (Nil!39217) (Cons!39217 (h!44637 Rule!11690) (t!301676 List!39341)) )
))
(declare-fun rules!3598 () List!39341)

(declare-fun isEmpty!23365 (List!39341) Bool)

(assert (=> b!3695721 (= res!1502793 (not (isEmpty!23365 (t!301676 rules!3598))))))

(declare-fun e!2288652 () Bool)

(assert (=> b!3695722 (= e!2288652 (and tp!1123294 tp!1123292))))

(declare-fun b!3695723 () Bool)

(declare-fun res!1502805 () Bool)

(declare-fun e!2288655 () Bool)

(assert (=> b!3695723 (=> (not res!1502805) (not e!2288655))))

(declare-datatypes ((LexerInterface!5534 0))(
  ( (LexerInterfaceExt!5531 (__x!24568 Int)) (Lexer!5532) )
))
(declare-fun thiss!25322 () LexerInterface!5534)

(declare-fun rulesInvariant!4931 (LexerInterface!5534 List!39341) Bool)

(assert (=> b!3695723 (= res!1502805 (rulesInvariant!4931 thiss!25322 rules!3598))))

(declare-fun b!3695724 () Bool)

(declare-fun e!2288663 () Bool)

(assert (=> b!3695724 (= e!2288655 e!2288663)))

(declare-fun res!1502803 () Bool)

(assert (=> b!3695724 (=> (not res!1502803) (not e!2288663))))

(declare-datatypes ((tuple2!39098 0))(
  ( (tuple2!39099 (_1!22683 Token!11244) (_2!22683 List!39340)) )
))
(declare-datatypes ((Option!8469 0))(
  ( (None!8468) (Some!8468 (v!38426 tuple2!39098)) )
))
(declare-fun lt!1293644 () Option!8469)

(declare-fun isDefined!6660 (Option!8469) Bool)

(assert (=> b!3695724 (= res!1502803 (isDefined!6660 lt!1293644))))

(declare-fun input!3172 () List!39340)

(declare-fun maxPrefix!3056 (LexerInterface!5534 List!39341 List!39340) Option!8469)

(assert (=> b!3695724 (= lt!1293644 (maxPrefix!3056 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3695725 () Bool)

(assert (=> b!3695725 (= e!2288660 (not e!2288657))))

(declare-fun res!1502799 () Bool)

(assert (=> b!3695725 (=> res!1502799 e!2288657)))

(declare-fun lt!1293643 () List!39341)

(assert (=> b!3695725 (= res!1502799 (not (rulesInvariant!4931 thiss!25322 lt!1293643)))))

(assert (=> b!3695725 (= lt!1293643 (Cons!39217 (h!44637 rules!3598) (t!301676 rules!3598)))))

(declare-fun e!2288661 () Bool)

(assert (=> b!3695725 e!2288661))

(declare-fun res!1502797 () Bool)

(assert (=> b!3695725 (=> (not res!1502797) (not e!2288661))))

(assert (=> b!3695725 (= res!1502797 (not lt!1293640))))

(declare-datatypes ((Option!8470 0))(
  ( (None!8469) (Some!8469 (v!38427 Rule!11690)) )
))
(declare-fun lt!1293642 () Option!8470)

(declare-fun isDefined!6661 (Option!8470) Bool)

(assert (=> b!3695725 (= lt!1293640 (not (isDefined!6661 lt!1293642)))))

(declare-fun getRuleFromTag!1501 (LexerInterface!5534 List!39341 String!44211) Option!8470)

(assert (=> b!3695725 (= lt!1293642 (getRuleFromTag!1501 thiss!25322 (t!301676 rules!3598) (tag!6769 (rule!8799 token!544))))))

(declare-datatypes ((Unit!57207 0))(
  ( (Unit!57208) )
))
(declare-fun lt!1293646 () Unit!57207)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1495 (LexerInterface!5534 List!39341 List!39340 Token!11244) Unit!57207)

(assert (=> b!3695725 (= lt!1293646 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1495 thiss!25322 (t!301676 rules!3598) input!3172 token!544))))

(assert (=> b!3695725 (rulesInvariant!4931 thiss!25322 (t!301676 rules!3598))))

(declare-fun lt!1293639 () Unit!57207)

(declare-fun lemmaInvariantOnRulesThenOnTail!653 (LexerInterface!5534 Rule!11690 List!39341) Unit!57207)

(assert (=> b!3695725 (= lt!1293639 (lemmaInvariantOnRulesThenOnTail!653 thiss!25322 (h!44637 rules!3598) (t!301676 rules!3598)))))

(declare-fun b!3695726 () Bool)

(declare-fun res!1502796 () Bool)

(assert (=> b!3695726 (=> (not res!1502796) (not e!2288663))))

(assert (=> b!3695726 (= res!1502796 (is-Cons!39217 rules!3598))))

(declare-fun b!3695727 () Bool)

(declare-fun tp!1123293 () Bool)

(declare-fun inv!52702 (String!44211) Bool)

(declare-fun inv!52705 (TokenValueInjection!11778) Bool)

(assert (=> b!3695727 (= e!2288653 (and tp!1123293 (inv!52702 (tag!6769 (rule!8799 token!544))) (inv!52705 (transformation!5945 (rule!8799 token!544))) e!2288652))))

(declare-fun b!3695728 () Bool)

(declare-fun e!2288662 () Bool)

(declare-fun e!2288647 () Bool)

(declare-fun tp!1123288 () Bool)

(assert (=> b!3695728 (= e!2288662 (and e!2288647 tp!1123288))))

(declare-fun b!3695729 () Bool)

(declare-fun e!2288649 () Bool)

(assert (=> b!3695729 (= e!2288657 e!2288649)))

(declare-fun res!1502800 () Bool)

(assert (=> b!3695729 (=> res!1502800 e!2288649)))

(declare-fun lt!1293637 () Option!8470)

(assert (=> b!3695729 (= res!1502800 (not (isDefined!6661 lt!1293637)))))

(assert (=> b!3695729 (= lt!1293637 (getRuleFromTag!1501 thiss!25322 rules!3598 (tag!6769 (rule!8799 token!544))))))

(declare-fun get!13031 (Option!8470) Rule!11690)

(assert (=> b!3695729 (= (get!13031 lt!1293642) (get!13031 (getRuleFromTag!1501 thiss!25322 lt!1293643 (tag!6769 (rule!8799 token!544)))))))

(declare-fun lt!1293647 () Unit!57207)

(declare-fun lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag!5 (LexerInterface!5534 List!39341 Rule!11690 String!44211) Unit!57207)

(assert (=> b!3695729 (= lt!1293647 (lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag!5 thiss!25322 (t!301676 rules!3598) (h!44637 rules!3598) (tag!6769 (rule!8799 token!544))))))

(declare-fun b!3695730 () Bool)

(declare-fun tp!1123295 () Bool)

(declare-fun e!2288656 () Bool)

(assert (=> b!3695730 (= e!2288647 (and tp!1123295 (inv!52702 (tag!6769 (h!44637 rules!3598))) (inv!52705 (transformation!5945 (h!44637 rules!3598))) e!2288656))))

(declare-fun b!3695731 () Bool)

(declare-fun res!1502795 () Bool)

(assert (=> b!3695731 (=> (not res!1502795) (not e!2288663))))

(declare-fun get!13032 (Option!8469) tuple2!39098)

(assert (=> b!3695731 (= res!1502795 (= (_1!22683 (get!13032 lt!1293644)) token!544))))

(declare-fun b!3695732 () Bool)

(declare-fun validRegex!4895 (Regex!10704) Bool)

(assert (=> b!3695732 (= e!2288649 (validRegex!4895 (regex!5945 (get!13031 lt!1293637))))))

(declare-fun lt!1293645 () List!39340)

(declare-fun list!14653 (BalanceConc!23698) List!39340)

(declare-fun charsOf!3940 (Token!11244) BalanceConc!23698)

(assert (=> b!3695732 (= lt!1293645 (list!14653 (charsOf!3940 token!544)))))

(declare-fun b!3695733 () Bool)

(assert (=> b!3695733 (= e!2288663 e!2288660)))

(declare-fun res!1502804 () Bool)

(assert (=> b!3695733 (=> (not res!1502804) (not e!2288660))))

(declare-fun e!2288654 () Bool)

(assert (=> b!3695733 (= res!1502804 e!2288654)))

(declare-fun res!1502802 () Bool)

(assert (=> b!3695733 (=> res!1502802 e!2288654)))

(declare-fun lt!1293638 () Option!8469)

(assert (=> b!3695733 (= res!1502802 (not (isDefined!6660 lt!1293638)))))

(declare-fun maxPrefixOneRule!2170 (LexerInterface!5534 Rule!11690 List!39340) Option!8469)

(assert (=> b!3695733 (= lt!1293638 (maxPrefixOneRule!2170 thiss!25322 (h!44637 rules!3598) input!3172))))

(assert (=> b!3695734 (= e!2288656 (and tp!1123291 tp!1123290))))

(declare-fun b!3695735 () Bool)

(assert (=> b!3695735 (= e!2288654 (not (= (_1!22683 (get!13032 lt!1293638)) token!544)))))

(declare-fun b!3695736 () Bool)

(declare-fun e!2288658 () Bool)

(assert (=> b!3695736 (= e!2288661 e!2288658)))

(declare-fun res!1502801 () Bool)

(assert (=> b!3695736 (=> (not res!1502801) (not e!2288658))))

(declare-fun lt!1293641 () Rule!11690)

(declare-fun matchR!5243 (Regex!10704 List!39340) Bool)

(assert (=> b!3695736 (= res!1502801 (matchR!5243 (regex!5945 lt!1293641) (list!14653 (charsOf!3940 token!544))))))

(assert (=> b!3695736 (= lt!1293641 (get!13031 lt!1293642))))

(declare-fun b!3695737 () Bool)

(assert (=> b!3695737 (= e!2288658 (= (rule!8799 token!544) lt!1293641))))

(declare-fun b!3695739 () Bool)

(declare-fun e!2288651 () Bool)

(declare-fun tp_is_empty!18483 () Bool)

(declare-fun tp!1123287 () Bool)

(assert (=> b!3695739 (= e!2288651 (and tp_is_empty!18483 tp!1123287))))

(declare-fun res!1502798 () Bool)

(assert (=> start!347992 (=> (not res!1502798) (not e!2288655))))

(assert (=> start!347992 (= res!1502798 (is-Lexer!5532 thiss!25322))))

(assert (=> start!347992 e!2288655))

(assert (=> start!347992 true))

(assert (=> start!347992 e!2288662))

(declare-fun inv!52706 (Token!11244) Bool)

(assert (=> start!347992 (and (inv!52706 token!544) e!2288664)))

(assert (=> start!347992 e!2288651))

(declare-fun b!3695738 () Bool)

(declare-fun res!1502794 () Bool)

(assert (=> b!3695738 (=> (not res!1502794) (not e!2288655))))

(assert (=> b!3695738 (= res!1502794 (not (isEmpty!23365 rules!3598)))))

(assert (= (and start!347992 res!1502798) b!3695723))

(assert (= (and b!3695723 res!1502805) b!3695738))

(assert (= (and b!3695738 res!1502794) b!3695724))

(assert (= (and b!3695724 res!1502803) b!3695731))

(assert (= (and b!3695731 res!1502795) b!3695726))

(assert (= (and b!3695726 res!1502796) b!3695733))

(assert (= (and b!3695733 (not res!1502802)) b!3695735))

(assert (= (and b!3695733 res!1502804) b!3695721))

(assert (= (and b!3695721 res!1502793) b!3695725))

(assert (= (and b!3695725 res!1502797) b!3695736))

(assert (= (and b!3695736 res!1502801) b!3695737))

(assert (= (and b!3695725 (not res!1502799)) b!3695720))

(assert (= (and b!3695720 (not res!1502792)) b!3695729))

(assert (= (and b!3695729 (not res!1502800)) b!3695732))

(assert (= b!3695730 b!3695734))

(assert (= b!3695728 b!3695730))

(assert (= (and start!347992 (is-Cons!39217 rules!3598)) b!3695728))

(assert (= b!3695727 b!3695722))

(assert (= b!3695719 b!3695727))

(assert (= start!347992 b!3695719))

(assert (= (and start!347992 (is-Cons!39216 input!3172)) b!3695739))

(declare-fun m!4207469 () Bool)

(assert (=> b!3695719 m!4207469))

(declare-fun m!4207471 () Bool)

(assert (=> b!3695725 m!4207471))

(declare-fun m!4207473 () Bool)

(assert (=> b!3695725 m!4207473))

(declare-fun m!4207475 () Bool)

(assert (=> b!3695725 m!4207475))

(declare-fun m!4207477 () Bool)

(assert (=> b!3695725 m!4207477))

(declare-fun m!4207479 () Bool)

(assert (=> b!3695725 m!4207479))

(declare-fun m!4207481 () Bool)

(assert (=> b!3695725 m!4207481))

(declare-fun m!4207483 () Bool)

(assert (=> b!3695730 m!4207483))

(declare-fun m!4207485 () Bool)

(assert (=> b!3695730 m!4207485))

(declare-fun m!4207487 () Bool)

(assert (=> b!3695736 m!4207487))

(assert (=> b!3695736 m!4207487))

(declare-fun m!4207489 () Bool)

(assert (=> b!3695736 m!4207489))

(assert (=> b!3695736 m!4207489))

(declare-fun m!4207491 () Bool)

(assert (=> b!3695736 m!4207491))

(declare-fun m!4207493 () Bool)

(assert (=> b!3695736 m!4207493))

(declare-fun m!4207495 () Bool)

(assert (=> b!3695733 m!4207495))

(declare-fun m!4207497 () Bool)

(assert (=> b!3695733 m!4207497))

(declare-fun m!4207499 () Bool)

(assert (=> start!347992 m!4207499))

(declare-fun m!4207501 () Bool)

(assert (=> b!3695721 m!4207501))

(declare-fun m!4207503 () Bool)

(assert (=> b!3695727 m!4207503))

(declare-fun m!4207505 () Bool)

(assert (=> b!3695727 m!4207505))

(declare-fun m!4207507 () Bool)

(assert (=> b!3695724 m!4207507))

(declare-fun m!4207509 () Bool)

(assert (=> b!3695724 m!4207509))

(declare-fun m!4207511 () Bool)

(assert (=> b!3695732 m!4207511))

(declare-fun m!4207513 () Bool)

(assert (=> b!3695732 m!4207513))

(assert (=> b!3695732 m!4207487))

(assert (=> b!3695732 m!4207487))

(assert (=> b!3695732 m!4207489))

(declare-fun m!4207515 () Bool)

(assert (=> b!3695738 m!4207515))

(declare-fun m!4207517 () Bool)

(assert (=> b!3695735 m!4207517))

(assert (=> b!3695729 m!4207493))

(declare-fun m!4207519 () Bool)

(assert (=> b!3695729 m!4207519))

(declare-fun m!4207521 () Bool)

(assert (=> b!3695729 m!4207521))

(declare-fun m!4207523 () Bool)

(assert (=> b!3695729 m!4207523))

(declare-fun m!4207525 () Bool)

(assert (=> b!3695729 m!4207525))

(declare-fun m!4207527 () Bool)

(assert (=> b!3695729 m!4207527))

(assert (=> b!3695729 m!4207525))

(declare-fun m!4207529 () Bool)

(assert (=> b!3695723 m!4207529))

(declare-fun m!4207531 () Bool)

(assert (=> b!3695731 m!4207531))

(push 1)

(assert (not b!3695719))

(assert (not b!3695729))

(assert (not start!347992))

(assert (not b!3695731))

(assert tp_is_empty!18483)

(assert (not b!3695733))

(assert (not b!3695739))

(assert b_and!276213)

(assert (not b!3695721))

(assert (not b_next!98997))

(assert (not b!3695728))

(assert (not b!3695727))

(assert (not b!3695723))

(assert (not b!3695724))

(assert (not b!3695738))

(assert (not b!3695735))

(assert (not b_next!98993))

(assert (not b!3695730))

(assert (not b!3695725))

(assert (not b!3695732))

(assert b_and!276215)

(assert (not b!3695736))

(assert (not b_next!98995))

(assert b_and!276217)

(assert (not b_next!98999))

(assert b_and!276211)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!98993))

(assert b_and!276213)

(assert b_and!276215)

(assert (not b_next!98997))

(assert (not b_next!98995))

(assert b_and!276217)

(assert (not b_next!98999))

(assert b_and!276211)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1084120 () Bool)

(declare-fun isEmpty!23367 (Option!8469) Bool)

(assert (=> d!1084120 (= (isDefined!6660 lt!1293644) (not (isEmpty!23367 lt!1293644)))))

(declare-fun bs!574276 () Bool)

(assert (= bs!574276 d!1084120))

(declare-fun m!4207597 () Bool)

(assert (=> bs!574276 m!4207597))

(assert (=> b!3695724 d!1084120))

(declare-fun b!3695849 () Bool)

(declare-fun e!2288745 () Option!8469)

(declare-fun call!267137 () Option!8469)

(assert (=> b!3695849 (= e!2288745 call!267137)))

(declare-fun bm!267132 () Bool)

(assert (=> bm!267132 (= call!267137 (maxPrefixOneRule!2170 thiss!25322 (h!44637 rules!3598) input!3172))))

(declare-fun b!3695851 () Bool)

(declare-fun res!1502891 () Bool)

(declare-fun e!2288744 () Bool)

(assert (=> b!3695851 (=> (not res!1502891) (not e!2288744))))

(declare-fun lt!1293709 () Option!8469)

(assert (=> b!3695851 (= res!1502891 (= (list!14653 (charsOf!3940 (_1!22683 (get!13032 lt!1293709)))) (originalCharacters!6653 (_1!22683 (get!13032 lt!1293709)))))))

(declare-fun b!3695852 () Bool)

(declare-fun lt!1293708 () Option!8469)

(declare-fun lt!1293707 () Option!8469)

(assert (=> b!3695852 (= e!2288745 (ite (and (is-None!8468 lt!1293708) (is-None!8468 lt!1293707)) None!8468 (ite (is-None!8468 lt!1293707) lt!1293708 (ite (is-None!8468 lt!1293708) lt!1293707 (ite (>= (size!29923 (_1!22683 (v!38426 lt!1293708))) (size!29923 (_1!22683 (v!38426 lt!1293707)))) lt!1293708 lt!1293707)))))))

(assert (=> b!3695852 (= lt!1293708 call!267137)))

(assert (=> b!3695852 (= lt!1293707 (maxPrefix!3056 thiss!25322 (t!301676 rules!3598) input!3172))))

(declare-fun b!3695853 () Bool)

(declare-fun contains!7821 (List!39341 Rule!11690) Bool)

(assert (=> b!3695853 (= e!2288744 (contains!7821 rules!3598 (rule!8799 (_1!22683 (get!13032 lt!1293709)))))))

(declare-fun b!3695854 () Bool)

(declare-fun res!1502887 () Bool)

(assert (=> b!3695854 (=> (not res!1502887) (not e!2288744))))

(declare-fun size!29925 (List!39340) Int)

(assert (=> b!3695854 (= res!1502887 (< (size!29925 (_2!22683 (get!13032 lt!1293709))) (size!29925 input!3172)))))

(declare-fun b!3695855 () Bool)

(declare-fun e!2288746 () Bool)

(assert (=> b!3695855 (= e!2288746 e!2288744)))

(declare-fun res!1502890 () Bool)

(assert (=> b!3695855 (=> (not res!1502890) (not e!2288744))))

(assert (=> b!3695855 (= res!1502890 (isDefined!6660 lt!1293709))))

(declare-fun b!3695856 () Bool)

(declare-fun res!1502892 () Bool)

(assert (=> b!3695856 (=> (not res!1502892) (not e!2288744))))

(declare-fun ++!9747 (List!39340 List!39340) List!39340)

(assert (=> b!3695856 (= res!1502892 (= (++!9747 (list!14653 (charsOf!3940 (_1!22683 (get!13032 lt!1293709)))) (_2!22683 (get!13032 lt!1293709))) input!3172))))

(declare-fun b!3695857 () Bool)

(declare-fun res!1502886 () Bool)

(assert (=> b!3695857 (=> (not res!1502886) (not e!2288744))))

(declare-fun apply!9387 (TokenValueInjection!11778 BalanceConc!23698) TokenValue!6175)

(declare-fun seqFromList!4466 (List!39340) BalanceConc!23698)

(assert (=> b!3695857 (= res!1502886 (= (value!189888 (_1!22683 (get!13032 lt!1293709))) (apply!9387 (transformation!5945 (rule!8799 (_1!22683 (get!13032 lt!1293709)))) (seqFromList!4466 (originalCharacters!6653 (_1!22683 (get!13032 lt!1293709)))))))))

(declare-fun d!1084122 () Bool)

(assert (=> d!1084122 e!2288746))

(declare-fun res!1502889 () Bool)

(assert (=> d!1084122 (=> res!1502889 e!2288746)))

(assert (=> d!1084122 (= res!1502889 (isEmpty!23367 lt!1293709))))

(assert (=> d!1084122 (= lt!1293709 e!2288745)))

(declare-fun c!638856 () Bool)

(assert (=> d!1084122 (= c!638856 (and (is-Cons!39217 rules!3598) (is-Nil!39217 (t!301676 rules!3598))))))

(declare-fun lt!1293710 () Unit!57207)

(declare-fun lt!1293706 () Unit!57207)

(assert (=> d!1084122 (= lt!1293710 lt!1293706)))

(declare-fun isPrefix!3269 (List!39340 List!39340) Bool)

(assert (=> d!1084122 (isPrefix!3269 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2054 (List!39340 List!39340) Unit!57207)

(assert (=> d!1084122 (= lt!1293706 (lemmaIsPrefixRefl!2054 input!3172 input!3172))))

(declare-fun rulesValidInductive!2135 (LexerInterface!5534 List!39341) Bool)

(assert (=> d!1084122 (rulesValidInductive!2135 thiss!25322 rules!3598)))

(assert (=> d!1084122 (= (maxPrefix!3056 thiss!25322 rules!3598 input!3172) lt!1293709)))

(declare-fun b!3695850 () Bool)

(declare-fun res!1502888 () Bool)

(assert (=> b!3695850 (=> (not res!1502888) (not e!2288744))))

(assert (=> b!3695850 (= res!1502888 (matchR!5243 (regex!5945 (rule!8799 (_1!22683 (get!13032 lt!1293709)))) (list!14653 (charsOf!3940 (_1!22683 (get!13032 lt!1293709))))))))

(assert (= (and d!1084122 c!638856) b!3695849))

(assert (= (and d!1084122 (not c!638856)) b!3695852))

(assert (= (or b!3695849 b!3695852) bm!267132))

(assert (= (and d!1084122 (not res!1502889)) b!3695855))

(assert (= (and b!3695855 res!1502890) b!3695851))

(assert (= (and b!3695851 res!1502891) b!3695854))

(assert (= (and b!3695854 res!1502887) b!3695856))

(assert (= (and b!3695856 res!1502892) b!3695857))

(assert (= (and b!3695857 res!1502886) b!3695850))

(assert (= (and b!3695850 res!1502888) b!3695853))

(declare-fun m!4207633 () Bool)

(assert (=> d!1084122 m!4207633))

(declare-fun m!4207635 () Bool)

(assert (=> d!1084122 m!4207635))

(declare-fun m!4207637 () Bool)

(assert (=> d!1084122 m!4207637))

(declare-fun m!4207639 () Bool)

(assert (=> d!1084122 m!4207639))

(assert (=> bm!267132 m!4207497))

(declare-fun m!4207641 () Bool)

(assert (=> b!3695857 m!4207641))

(declare-fun m!4207643 () Bool)

(assert (=> b!3695857 m!4207643))

(assert (=> b!3695857 m!4207643))

(declare-fun m!4207645 () Bool)

(assert (=> b!3695857 m!4207645))

(assert (=> b!3695853 m!4207641))

(declare-fun m!4207647 () Bool)

(assert (=> b!3695853 m!4207647))

(assert (=> b!3695854 m!4207641))

(declare-fun m!4207649 () Bool)

(assert (=> b!3695854 m!4207649))

(declare-fun m!4207651 () Bool)

(assert (=> b!3695854 m!4207651))

(assert (=> b!3695856 m!4207641))

(declare-fun m!4207653 () Bool)

(assert (=> b!3695856 m!4207653))

(assert (=> b!3695856 m!4207653))

(declare-fun m!4207655 () Bool)

(assert (=> b!3695856 m!4207655))

(assert (=> b!3695856 m!4207655))

(declare-fun m!4207657 () Bool)

(assert (=> b!3695856 m!4207657))

(assert (=> b!3695851 m!4207641))

(assert (=> b!3695851 m!4207653))

(assert (=> b!3695851 m!4207653))

(assert (=> b!3695851 m!4207655))

(declare-fun m!4207659 () Bool)

(assert (=> b!3695855 m!4207659))

(assert (=> b!3695850 m!4207641))

(assert (=> b!3695850 m!4207653))

(assert (=> b!3695850 m!4207653))

(assert (=> b!3695850 m!4207655))

(assert (=> b!3695850 m!4207655))

(declare-fun m!4207661 () Bool)

(assert (=> b!3695850 m!4207661))

(declare-fun m!4207663 () Bool)

(assert (=> b!3695852 m!4207663))

(assert (=> b!3695724 d!1084122))

(declare-fun d!1084138 () Bool)

(assert (=> d!1084138 (= (get!13032 lt!1293638) (v!38426 lt!1293638))))

(assert (=> b!3695735 d!1084138))

(declare-fun d!1084140 () Bool)

(declare-fun res!1502898 () Bool)

(declare-fun e!2288752 () Bool)

(assert (=> d!1084140 (=> (not res!1502898) (not e!2288752))))

(declare-fun rulesValid!2292 (LexerInterface!5534 List!39341) Bool)

(assert (=> d!1084140 (= res!1502898 (rulesValid!2292 thiss!25322 rules!3598))))

(assert (=> d!1084140 (= (rulesInvariant!4931 thiss!25322 rules!3598) e!2288752)))

(declare-fun b!3695863 () Bool)

(declare-datatypes ((List!39345 0))(
  ( (Nil!39221) (Cons!39221 (h!44641 String!44211) (t!301690 List!39345)) )
))
(declare-fun noDuplicateTag!2288 (LexerInterface!5534 List!39341 List!39345) Bool)

(assert (=> b!3695863 (= e!2288752 (noDuplicateTag!2288 thiss!25322 rules!3598 Nil!39221))))

(assert (= (and d!1084140 res!1502898) b!3695863))

(declare-fun m!4207669 () Bool)

(assert (=> d!1084140 m!4207669))

(declare-fun m!4207671 () Bool)

(assert (=> b!3695863 m!4207671))

(assert (=> b!3695723 d!1084140))

(declare-fun d!1084146 () Bool)

(assert (=> d!1084146 (= (isDefined!6660 lt!1293638) (not (isEmpty!23367 lt!1293638)))))

(declare-fun bs!574279 () Bool)

(assert (= bs!574279 d!1084146))

(declare-fun m!4207673 () Bool)

(assert (=> bs!574279 m!4207673))

(assert (=> b!3695733 d!1084146))

(declare-fun b!3695972 () Bool)

(declare-fun e!2288815 () Bool)

(declare-datatypes ((tuple2!39102 0))(
  ( (tuple2!39103 (_1!22685 List!39340) (_2!22685 List!39340)) )
))
(declare-fun findLongestMatchInner!1111 (Regex!10704 List!39340 Int List!39340 List!39340 Int) tuple2!39102)

(assert (=> b!3695972 (= e!2288815 (matchR!5243 (regex!5945 (h!44637 rules!3598)) (_1!22685 (findLongestMatchInner!1111 (regex!5945 (h!44637 rules!3598)) Nil!39216 (size!29925 Nil!39216) input!3172 input!3172 (size!29925 input!3172)))))))

(declare-fun b!3695973 () Bool)

(declare-fun res!1502965 () Bool)

(declare-fun e!2288818 () Bool)

(assert (=> b!3695973 (=> (not res!1502965) (not e!2288818))))

(declare-fun lt!1293729 () Option!8469)

(assert (=> b!3695973 (= res!1502965 (= (rule!8799 (_1!22683 (get!13032 lt!1293729))) (h!44637 rules!3598)))))

(declare-fun b!3695974 () Bool)

(declare-fun res!1502960 () Bool)

(assert (=> b!3695974 (=> (not res!1502960) (not e!2288818))))

(assert (=> b!3695974 (= res!1502960 (= (++!9747 (list!14653 (charsOf!3940 (_1!22683 (get!13032 lt!1293729)))) (_2!22683 (get!13032 lt!1293729))) input!3172))))

(declare-fun b!3695975 () Bool)

(declare-fun res!1502966 () Bool)

(assert (=> b!3695975 (=> (not res!1502966) (not e!2288818))))

(assert (=> b!3695975 (= res!1502966 (= (value!189888 (_1!22683 (get!13032 lt!1293729))) (apply!9387 (transformation!5945 (rule!8799 (_1!22683 (get!13032 lt!1293729)))) (seqFromList!4466 (originalCharacters!6653 (_1!22683 (get!13032 lt!1293729)))))))))

(declare-fun b!3695977 () Bool)

(declare-fun e!2288816 () Option!8469)

(declare-fun lt!1293728 () tuple2!39102)

(declare-fun size!29926 (BalanceConc!23698) Int)

(assert (=> b!3695977 (= e!2288816 (Some!8468 (tuple2!39099 (Token!11245 (apply!9387 (transformation!5945 (h!44637 rules!3598)) (seqFromList!4466 (_1!22685 lt!1293728))) (h!44637 rules!3598) (size!29926 (seqFromList!4466 (_1!22685 lt!1293728))) (_1!22685 lt!1293728)) (_2!22685 lt!1293728))))))

(declare-fun lt!1293731 () Unit!57207)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1084 (Regex!10704 List!39340) Unit!57207)

(assert (=> b!3695977 (= lt!1293731 (longestMatchIsAcceptedByMatchOrIsEmpty!1084 (regex!5945 (h!44637 rules!3598)) input!3172))))

(declare-fun res!1502961 () Bool)

(declare-fun isEmpty!23368 (List!39340) Bool)

(assert (=> b!3695977 (= res!1502961 (isEmpty!23368 (_1!22685 (findLongestMatchInner!1111 (regex!5945 (h!44637 rules!3598)) Nil!39216 (size!29925 Nil!39216) input!3172 input!3172 (size!29925 input!3172)))))))

(assert (=> b!3695977 (=> res!1502961 e!2288815)))

(assert (=> b!3695977 e!2288815))

(declare-fun lt!1293727 () Unit!57207)

(assert (=> b!3695977 (= lt!1293727 lt!1293731)))

(declare-fun lt!1293730 () Unit!57207)

(declare-fun lemmaSemiInverse!1617 (TokenValueInjection!11778 BalanceConc!23698) Unit!57207)

(assert (=> b!3695977 (= lt!1293730 (lemmaSemiInverse!1617 (transformation!5945 (h!44637 rules!3598)) (seqFromList!4466 (_1!22685 lt!1293728))))))

(declare-fun b!3695978 () Bool)

(assert (=> b!3695978 (= e!2288816 None!8468)))

(declare-fun b!3695979 () Bool)

(assert (=> b!3695979 (= e!2288818 (= (size!29923 (_1!22683 (get!13032 lt!1293729))) (size!29925 (originalCharacters!6653 (_1!22683 (get!13032 lt!1293729))))))))

(declare-fun b!3695980 () Bool)

(declare-fun res!1502964 () Bool)

(assert (=> b!3695980 (=> (not res!1502964) (not e!2288818))))

(assert (=> b!3695980 (= res!1502964 (< (size!29925 (_2!22683 (get!13032 lt!1293729))) (size!29925 input!3172)))))

(declare-fun b!3695976 () Bool)

(declare-fun e!2288817 () Bool)

(assert (=> b!3695976 (= e!2288817 e!2288818)))

(declare-fun res!1502963 () Bool)

(assert (=> b!3695976 (=> (not res!1502963) (not e!2288818))))

(assert (=> b!3695976 (= res!1502963 (matchR!5243 (regex!5945 (h!44637 rules!3598)) (list!14653 (charsOf!3940 (_1!22683 (get!13032 lt!1293729))))))))

(declare-fun d!1084148 () Bool)

(assert (=> d!1084148 e!2288817))

(declare-fun res!1502962 () Bool)

(assert (=> d!1084148 (=> res!1502962 e!2288817)))

(assert (=> d!1084148 (= res!1502962 (isEmpty!23367 lt!1293729))))

(assert (=> d!1084148 (= lt!1293729 e!2288816)))

(declare-fun c!638878 () Bool)

(assert (=> d!1084148 (= c!638878 (isEmpty!23368 (_1!22685 lt!1293728)))))

(declare-fun findLongestMatch!1026 (Regex!10704 List!39340) tuple2!39102)

(assert (=> d!1084148 (= lt!1293728 (findLongestMatch!1026 (regex!5945 (h!44637 rules!3598)) input!3172))))

(declare-fun ruleValid!2149 (LexerInterface!5534 Rule!11690) Bool)

(assert (=> d!1084148 (ruleValid!2149 thiss!25322 (h!44637 rules!3598))))

(assert (=> d!1084148 (= (maxPrefixOneRule!2170 thiss!25322 (h!44637 rules!3598) input!3172) lt!1293729)))

(assert (= (and d!1084148 c!638878) b!3695978))

(assert (= (and d!1084148 (not c!638878)) b!3695977))

(assert (= (and b!3695977 (not res!1502961)) b!3695972))

(assert (= (and d!1084148 (not res!1502962)) b!3695976))

(assert (= (and b!3695976 res!1502963) b!3695974))

(assert (= (and b!3695974 res!1502960) b!3695980))

(assert (= (and b!3695980 res!1502964) b!3695973))

(assert (= (and b!3695973 res!1502965) b!3695975))

(assert (= (and b!3695975 res!1502966) b!3695979))

(declare-fun m!4207723 () Bool)

(assert (=> b!3695972 m!4207723))

(assert (=> b!3695972 m!4207651))

(assert (=> b!3695972 m!4207723))

(assert (=> b!3695972 m!4207651))

(declare-fun m!4207725 () Bool)

(assert (=> b!3695972 m!4207725))

(declare-fun m!4207727 () Bool)

(assert (=> b!3695972 m!4207727))

(declare-fun m!4207729 () Bool)

(assert (=> b!3695980 m!4207729))

(declare-fun m!4207731 () Bool)

(assert (=> b!3695980 m!4207731))

(assert (=> b!3695980 m!4207651))

(assert (=> b!3695974 m!4207729))

(declare-fun m!4207733 () Bool)

(assert (=> b!3695974 m!4207733))

(assert (=> b!3695974 m!4207733))

(declare-fun m!4207735 () Bool)

(assert (=> b!3695974 m!4207735))

(assert (=> b!3695974 m!4207735))

(declare-fun m!4207737 () Bool)

(assert (=> b!3695974 m!4207737))

(assert (=> b!3695976 m!4207729))

(assert (=> b!3695976 m!4207733))

(assert (=> b!3695976 m!4207733))

(assert (=> b!3695976 m!4207735))

(assert (=> b!3695976 m!4207735))

(declare-fun m!4207739 () Bool)

(assert (=> b!3695976 m!4207739))

(declare-fun m!4207741 () Bool)

(assert (=> b!3695977 m!4207741))

(assert (=> b!3695977 m!4207723))

(assert (=> b!3695977 m!4207651))

(assert (=> b!3695977 m!4207725))

(declare-fun m!4207743 () Bool)

(assert (=> b!3695977 m!4207743))

(declare-fun m!4207745 () Bool)

(assert (=> b!3695977 m!4207745))

(assert (=> b!3695977 m!4207743))

(assert (=> b!3695977 m!4207743))

(declare-fun m!4207747 () Bool)

(assert (=> b!3695977 m!4207747))

(assert (=> b!3695977 m!4207651))

(declare-fun m!4207749 () Bool)

(assert (=> b!3695977 m!4207749))

(assert (=> b!3695977 m!4207743))

(declare-fun m!4207753 () Bool)

(assert (=> b!3695977 m!4207753))

(assert (=> b!3695977 m!4207723))

(declare-fun m!4207755 () Bool)

(assert (=> d!1084148 m!4207755))

(declare-fun m!4207757 () Bool)

(assert (=> d!1084148 m!4207757))

(declare-fun m!4207759 () Bool)

(assert (=> d!1084148 m!4207759))

(declare-fun m!4207761 () Bool)

(assert (=> d!1084148 m!4207761))

(assert (=> b!3695979 m!4207729))

(declare-fun m!4207763 () Bool)

(assert (=> b!3695979 m!4207763))

(assert (=> b!3695975 m!4207729))

(declare-fun m!4207765 () Bool)

(assert (=> b!3695975 m!4207765))

(assert (=> b!3695975 m!4207765))

(declare-fun m!4207767 () Bool)

(assert (=> b!3695975 m!4207767))

(assert (=> b!3695973 m!4207729))

(assert (=> b!3695733 d!1084148))

(declare-fun b!3696005 () Bool)

(declare-fun e!2288839 () Bool)

(declare-fun call!267158 () Bool)

(assert (=> b!3696005 (= e!2288839 call!267158)))

(declare-fun d!1084174 () Bool)

(declare-fun res!1502983 () Bool)

(declare-fun e!2288837 () Bool)

(assert (=> d!1084174 (=> res!1502983 e!2288837)))

(assert (=> d!1084174 (= res!1502983 (is-ElementMatch!10704 (regex!5945 (get!13031 lt!1293637))))))

(assert (=> d!1084174 (= (validRegex!4895 (regex!5945 (get!13031 lt!1293637))) e!2288837)))

(declare-fun bm!267151 () Bool)

(declare-fun c!638885 () Bool)

(declare-fun c!638886 () Bool)

(assert (=> bm!267151 (= call!267158 (validRegex!4895 (ite c!638885 (reg!11033 (regex!5945 (get!13031 lt!1293637))) (ite c!638886 (regTwo!21921 (regex!5945 (get!13031 lt!1293637))) (regTwo!21920 (regex!5945 (get!13031 lt!1293637)))))))))

(declare-fun b!3696006 () Bool)

(declare-fun e!2288842 () Bool)

(declare-fun call!267157 () Bool)

(assert (=> b!3696006 (= e!2288842 call!267157)))

(declare-fun b!3696007 () Bool)

(declare-fun e!2288843 () Bool)

(declare-fun e!2288838 () Bool)

(assert (=> b!3696007 (= e!2288843 e!2288838)))

(assert (=> b!3696007 (= c!638886 (is-Union!10704 (regex!5945 (get!13031 lt!1293637))))))

(declare-fun b!3696008 () Bool)

(declare-fun e!2288840 () Bool)

(declare-fun e!2288841 () Bool)

(assert (=> b!3696008 (= e!2288840 e!2288841)))

(declare-fun res!1502980 () Bool)

(assert (=> b!3696008 (=> (not res!1502980) (not e!2288841))))

(declare-fun call!267156 () Bool)

(assert (=> b!3696008 (= res!1502980 call!267156)))

(declare-fun b!3696009 () Bool)

(assert (=> b!3696009 (= e!2288843 e!2288839)))

(declare-fun res!1502981 () Bool)

(declare-fun nullable!3732 (Regex!10704) Bool)

(assert (=> b!3696009 (= res!1502981 (not (nullable!3732 (reg!11033 (regex!5945 (get!13031 lt!1293637))))))))

(assert (=> b!3696009 (=> (not res!1502981) (not e!2288839))))

(declare-fun b!3696010 () Bool)

(declare-fun res!1502979 () Bool)

(assert (=> b!3696010 (=> (not res!1502979) (not e!2288842))))

(assert (=> b!3696010 (= res!1502979 call!267156)))

(assert (=> b!3696010 (= e!2288838 e!2288842)))

(declare-fun bm!267152 () Bool)

(assert (=> bm!267152 (= call!267157 call!267158)))

(declare-fun b!3696011 () Bool)

(assert (=> b!3696011 (= e!2288841 call!267157)))

(declare-fun b!3696012 () Bool)

(declare-fun res!1502982 () Bool)

(assert (=> b!3696012 (=> res!1502982 e!2288840)))

(assert (=> b!3696012 (= res!1502982 (not (is-Concat!16880 (regex!5945 (get!13031 lt!1293637)))))))

(assert (=> b!3696012 (= e!2288838 e!2288840)))

(declare-fun bm!267153 () Bool)

(assert (=> bm!267153 (= call!267156 (validRegex!4895 (ite c!638886 (regOne!21921 (regex!5945 (get!13031 lt!1293637))) (regOne!21920 (regex!5945 (get!13031 lt!1293637))))))))

(declare-fun b!3696013 () Bool)

(assert (=> b!3696013 (= e!2288837 e!2288843)))

(assert (=> b!3696013 (= c!638885 (is-Star!10704 (regex!5945 (get!13031 lt!1293637))))))

(assert (= (and d!1084174 (not res!1502983)) b!3696013))

(assert (= (and b!3696013 c!638885) b!3696009))

(assert (= (and b!3696013 (not c!638885)) b!3696007))

(assert (= (and b!3696009 res!1502981) b!3696005))

(assert (= (and b!3696007 c!638886) b!3696010))

(assert (= (and b!3696007 (not c!638886)) b!3696012))

(assert (= (and b!3696010 res!1502979) b!3696006))

(assert (= (and b!3696012 (not res!1502982)) b!3696008))

(assert (= (and b!3696008 res!1502980) b!3696011))

(assert (= (or b!3696006 b!3696011) bm!267152))

(assert (= (or b!3696010 b!3696008) bm!267153))

(assert (= (or b!3696005 bm!267152) bm!267151))

(declare-fun m!4207769 () Bool)

(assert (=> bm!267151 m!4207769))

(declare-fun m!4207771 () Bool)

(assert (=> b!3696009 m!4207771))

(declare-fun m!4207773 () Bool)

(assert (=> bm!267153 m!4207773))

(assert (=> b!3695732 d!1084174))

(declare-fun d!1084176 () Bool)

(assert (=> d!1084176 (= (get!13031 lt!1293637) (v!38427 lt!1293637))))

(assert (=> b!3695732 d!1084176))

(declare-fun d!1084178 () Bool)

(declare-fun list!14655 (Conc!12042) List!39340)

(assert (=> d!1084178 (= (list!14653 (charsOf!3940 token!544)) (list!14655 (c!638843 (charsOf!3940 token!544))))))

(declare-fun bs!574282 () Bool)

(assert (= bs!574282 d!1084178))

(declare-fun m!4207775 () Bool)

(assert (=> bs!574282 m!4207775))

(assert (=> b!3695732 d!1084178))

(declare-fun d!1084180 () Bool)

(declare-fun lt!1293734 () BalanceConc!23698)

(assert (=> d!1084180 (= (list!14653 lt!1293734) (originalCharacters!6653 token!544))))

(declare-fun dynLambda!17155 (Int TokenValue!6175) BalanceConc!23698)

(assert (=> d!1084180 (= lt!1293734 (dynLambda!17155 (toChars!8136 (transformation!5945 (rule!8799 token!544))) (value!189888 token!544)))))

(assert (=> d!1084180 (= (charsOf!3940 token!544) lt!1293734)))

(declare-fun b_lambda!109623 () Bool)

(assert (=> (not b_lambda!109623) (not d!1084180)))

(declare-fun t!301685 () Bool)

(declare-fun tb!214057 () Bool)

(assert (=> (and b!3695734 (= (toChars!8136 (transformation!5945 (h!44637 rules!3598))) (toChars!8136 (transformation!5945 (rule!8799 token!544)))) t!301685) tb!214057))

(declare-fun b!3696018 () Bool)

(declare-fun e!2288846 () Bool)

(declare-fun tp!1123328 () Bool)

(declare-fun inv!52709 (Conc!12042) Bool)

(assert (=> b!3696018 (= e!2288846 (and (inv!52709 (c!638843 (dynLambda!17155 (toChars!8136 (transformation!5945 (rule!8799 token!544))) (value!189888 token!544)))) tp!1123328))))

(declare-fun result!260700 () Bool)

(declare-fun inv!52710 (BalanceConc!23698) Bool)

(assert (=> tb!214057 (= result!260700 (and (inv!52710 (dynLambda!17155 (toChars!8136 (transformation!5945 (rule!8799 token!544))) (value!189888 token!544))) e!2288846))))

(assert (= tb!214057 b!3696018))

(declare-fun m!4207777 () Bool)

(assert (=> b!3696018 m!4207777))

(declare-fun m!4207779 () Bool)

(assert (=> tb!214057 m!4207779))

(assert (=> d!1084180 t!301685))

(declare-fun b_and!276235 () Bool)

(assert (= b_and!276213 (and (=> t!301685 result!260700) b_and!276235)))

(declare-fun t!301687 () Bool)

(declare-fun tb!214059 () Bool)

(assert (=> (and b!3695722 (= (toChars!8136 (transformation!5945 (rule!8799 token!544))) (toChars!8136 (transformation!5945 (rule!8799 token!544)))) t!301687) tb!214059))

(declare-fun result!260704 () Bool)

(assert (= result!260704 result!260700))

(assert (=> d!1084180 t!301687))

(declare-fun b_and!276237 () Bool)

(assert (= b_and!276217 (and (=> t!301687 result!260704) b_and!276237)))

(declare-fun m!4207781 () Bool)

(assert (=> d!1084180 m!4207781))

(declare-fun m!4207783 () Bool)

(assert (=> d!1084180 m!4207783))

(assert (=> b!3695732 d!1084180))

(declare-fun d!1084182 () Bool)

(assert (=> d!1084182 (= (isEmpty!23365 (t!301676 rules!3598)) (is-Nil!39217 (t!301676 rules!3598)))))

(assert (=> b!3695721 d!1084182))

(declare-fun d!1084184 () Bool)

(assert (=> d!1084184 (= (get!13032 lt!1293644) (v!38426 lt!1293644))))

(assert (=> b!3695731 d!1084184))

(declare-fun d!1084186 () Bool)

(declare-fun res!1502988 () Bool)

(declare-fun e!2288849 () Bool)

(assert (=> d!1084186 (=> (not res!1502988) (not e!2288849))))

(assert (=> d!1084186 (= res!1502988 (not (isEmpty!23368 (originalCharacters!6653 token!544))))))

(assert (=> d!1084186 (= (inv!52706 token!544) e!2288849)))

(declare-fun b!3696023 () Bool)

(declare-fun res!1502989 () Bool)

(assert (=> b!3696023 (=> (not res!1502989) (not e!2288849))))

(assert (=> b!3696023 (= res!1502989 (= (originalCharacters!6653 token!544) (list!14653 (dynLambda!17155 (toChars!8136 (transformation!5945 (rule!8799 token!544))) (value!189888 token!544)))))))

(declare-fun b!3696024 () Bool)

(assert (=> b!3696024 (= e!2288849 (= (size!29923 token!544) (size!29925 (originalCharacters!6653 token!544))))))

(assert (= (and d!1084186 res!1502988) b!3696023))

(assert (= (and b!3696023 res!1502989) b!3696024))

(declare-fun b_lambda!109625 () Bool)

(assert (=> (not b_lambda!109625) (not b!3696023)))

(assert (=> b!3696023 t!301685))

(declare-fun b_and!276239 () Bool)

(assert (= b_and!276235 (and (=> t!301685 result!260700) b_and!276239)))

(assert (=> b!3696023 t!301687))

(declare-fun b_and!276241 () Bool)

(assert (= b_and!276237 (and (=> t!301687 result!260704) b_and!276241)))

(declare-fun m!4207785 () Bool)

(assert (=> d!1084186 m!4207785))

(assert (=> b!3696023 m!4207783))

(assert (=> b!3696023 m!4207783))

(declare-fun m!4207787 () Bool)

(assert (=> b!3696023 m!4207787))

(declare-fun m!4207789 () Bool)

(assert (=> b!3696024 m!4207789))

(assert (=> start!347992 d!1084186))

(declare-fun d!1084188 () Bool)

(assert (=> d!1084188 (= (inv!52702 (tag!6769 (h!44637 rules!3598))) (= (mod (str.len (value!189887 (tag!6769 (h!44637 rules!3598)))) 2) 0))))

(assert (=> b!3695730 d!1084188))

(declare-fun d!1084190 () Bool)

(declare-fun res!1502992 () Bool)

(declare-fun e!2288852 () Bool)

(assert (=> d!1084190 (=> (not res!1502992) (not e!2288852))))

(declare-fun semiInverseModEq!2535 (Int Int) Bool)

(assert (=> d!1084190 (= res!1502992 (semiInverseModEq!2535 (toChars!8136 (transformation!5945 (h!44637 rules!3598))) (toValue!8277 (transformation!5945 (h!44637 rules!3598)))))))

(assert (=> d!1084190 (= (inv!52705 (transformation!5945 (h!44637 rules!3598))) e!2288852)))

(declare-fun b!3696027 () Bool)

(declare-fun equivClasses!2434 (Int Int) Bool)

(assert (=> b!3696027 (= e!2288852 (equivClasses!2434 (toChars!8136 (transformation!5945 (h!44637 rules!3598))) (toValue!8277 (transformation!5945 (h!44637 rules!3598)))))))

(assert (= (and d!1084190 res!1502992) b!3696027))

(declare-fun m!4207791 () Bool)

(assert (=> d!1084190 m!4207791))

(declare-fun m!4207793 () Bool)

(assert (=> b!3696027 m!4207793))

(assert (=> b!3695730 d!1084190))

(declare-fun b!3696039 () Bool)

(declare-fun res!1502995 () Bool)

(declare-fun e!2288860 () Bool)

(assert (=> b!3696039 (=> res!1502995 e!2288860)))

(assert (=> b!3696039 (= res!1502995 (not (is-IntegerValue!18527 (value!189888 token!544))))))

(declare-fun e!2288861 () Bool)

(assert (=> b!3696039 (= e!2288861 e!2288860)))

(declare-fun b!3696040 () Bool)

(declare-fun inv!17 (TokenValue!6175) Bool)

(assert (=> b!3696040 (= e!2288861 (inv!17 (value!189888 token!544)))))

(declare-fun b!3696041 () Bool)

(declare-fun e!2288859 () Bool)

(assert (=> b!3696041 (= e!2288859 e!2288861)))

(declare-fun c!638892 () Bool)

(assert (=> b!3696041 (= c!638892 (is-IntegerValue!18526 (value!189888 token!544)))))

(declare-fun b!3696042 () Bool)

(declare-fun inv!15 (TokenValue!6175) Bool)

(assert (=> b!3696042 (= e!2288860 (inv!15 (value!189888 token!544)))))

(declare-fun d!1084192 () Bool)

(declare-fun c!638891 () Bool)

(assert (=> d!1084192 (= c!638891 (is-IntegerValue!18525 (value!189888 token!544)))))

(assert (=> d!1084192 (= (inv!21 (value!189888 token!544)) e!2288859)))

(declare-fun b!3696038 () Bool)

(declare-fun inv!16 (TokenValue!6175) Bool)

(assert (=> b!3696038 (= e!2288859 (inv!16 (value!189888 token!544)))))

(assert (= (and d!1084192 c!638891) b!3696038))

(assert (= (and d!1084192 (not c!638891)) b!3696041))

(assert (= (and b!3696041 c!638892) b!3696040))

(assert (= (and b!3696041 (not c!638892)) b!3696039))

(assert (= (and b!3696039 (not res!1502995)) b!3696042))

(declare-fun m!4207795 () Bool)

(assert (=> b!3696040 m!4207795))

(declare-fun m!4207797 () Bool)

(assert (=> b!3696042 m!4207797))

(declare-fun m!4207799 () Bool)

(assert (=> b!3696038 m!4207799))

(assert (=> b!3695719 d!1084192))

(declare-fun d!1084194 () Bool)

(assert (=> d!1084194 (= (get!13031 (getRuleFromTag!1501 thiss!25322 (t!301676 rules!3598) (tag!6769 (rule!8799 token!544)))) (get!13031 (getRuleFromTag!1501 thiss!25322 (Cons!39217 (h!44637 rules!3598) (t!301676 rules!3598)) (tag!6769 (rule!8799 token!544)))))))

(declare-fun lt!1293737 () Unit!57207)

(declare-fun choose!22117 (LexerInterface!5534 List!39341 Rule!11690 String!44211) Unit!57207)

(assert (=> d!1084194 (= lt!1293737 (choose!22117 thiss!25322 (t!301676 rules!3598) (h!44637 rules!3598) (tag!6769 (rule!8799 token!544))))))

(assert (=> d!1084194 (rulesInvariant!4931 thiss!25322 (Cons!39217 (h!44637 rules!3598) (t!301676 rules!3598)))))

(assert (=> d!1084194 (= (lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag!5 thiss!25322 (t!301676 rules!3598) (h!44637 rules!3598) (tag!6769 (rule!8799 token!544))) lt!1293737)))

(declare-fun bs!574283 () Bool)

(assert (= bs!574283 d!1084194))

(assert (=> bs!574283 m!4207481))

(declare-fun m!4207801 () Bool)

(assert (=> bs!574283 m!4207801))

(declare-fun m!4207803 () Bool)

(assert (=> bs!574283 m!4207803))

(declare-fun m!4207805 () Bool)

(assert (=> bs!574283 m!4207805))

(assert (=> bs!574283 m!4207801))

(assert (=> bs!574283 m!4207481))

(declare-fun m!4207807 () Bool)

(assert (=> bs!574283 m!4207807))

(declare-fun m!4207809 () Bool)

(assert (=> bs!574283 m!4207809))

(assert (=> b!3695729 d!1084194))

(declare-fun d!1084196 () Bool)

(assert (=> d!1084196 (= (get!13031 lt!1293642) (v!38427 lt!1293642))))

(assert (=> b!3695729 d!1084196))

(declare-fun d!1084198 () Bool)

(assert (=> d!1084198 (= (get!13031 (getRuleFromTag!1501 thiss!25322 lt!1293643 (tag!6769 (rule!8799 token!544)))) (v!38427 (getRuleFromTag!1501 thiss!25322 lt!1293643 (tag!6769 (rule!8799 token!544)))))))

(assert (=> b!3695729 d!1084198))

(declare-fun d!1084200 () Bool)

(declare-fun isEmpty!23370 (Option!8470) Bool)

(assert (=> d!1084200 (= (isDefined!6661 lt!1293637) (not (isEmpty!23370 lt!1293637)))))

(declare-fun bs!574284 () Bool)

(assert (= bs!574284 d!1084200))

(declare-fun m!4207811 () Bool)

(assert (=> bs!574284 m!4207811))

(assert (=> b!3695729 d!1084200))

(declare-fun b!3696055 () Bool)

(declare-fun e!2288873 () Bool)

(declare-fun lt!1293744 () Option!8470)

(assert (=> b!3696055 (= e!2288873 (= (tag!6769 (get!13031 lt!1293744)) (tag!6769 (rule!8799 token!544))))))

(declare-fun b!3696056 () Bool)

(declare-fun e!2288871 () Bool)

(assert (=> b!3696056 (= e!2288871 e!2288873)))

(declare-fun res!1503000 () Bool)

(assert (=> b!3696056 (=> (not res!1503000) (not e!2288873))))

(assert (=> b!3696056 (= res!1503000 (contains!7821 lt!1293643 (get!13031 lt!1293744)))))

(declare-fun b!3696057 () Bool)

(declare-fun e!2288870 () Option!8470)

(declare-fun e!2288872 () Option!8470)

(assert (=> b!3696057 (= e!2288870 e!2288872)))

(declare-fun c!638897 () Bool)

(assert (=> b!3696057 (= c!638897 (and (is-Cons!39217 lt!1293643) (not (= (tag!6769 (h!44637 lt!1293643)) (tag!6769 (rule!8799 token!544))))))))

(declare-fun b!3696058 () Bool)

(declare-fun lt!1293746 () Unit!57207)

(declare-fun lt!1293745 () Unit!57207)

(assert (=> b!3696058 (= lt!1293746 lt!1293745)))

(assert (=> b!3696058 (rulesInvariant!4931 thiss!25322 (t!301676 lt!1293643))))

(assert (=> b!3696058 (= lt!1293745 (lemmaInvariantOnRulesThenOnTail!653 thiss!25322 (h!44637 lt!1293643) (t!301676 lt!1293643)))))

(assert (=> b!3696058 (= e!2288872 (getRuleFromTag!1501 thiss!25322 (t!301676 lt!1293643) (tag!6769 (rule!8799 token!544))))))

(declare-fun d!1084202 () Bool)

(assert (=> d!1084202 e!2288871))

(declare-fun res!1503001 () Bool)

(assert (=> d!1084202 (=> res!1503001 e!2288871)))

(assert (=> d!1084202 (= res!1503001 (isEmpty!23370 lt!1293744))))

(assert (=> d!1084202 (= lt!1293744 e!2288870)))

(declare-fun c!638898 () Bool)

(assert (=> d!1084202 (= c!638898 (and (is-Cons!39217 lt!1293643) (= (tag!6769 (h!44637 lt!1293643)) (tag!6769 (rule!8799 token!544)))))))

(assert (=> d!1084202 (rulesInvariant!4931 thiss!25322 lt!1293643)))

(assert (=> d!1084202 (= (getRuleFromTag!1501 thiss!25322 lt!1293643 (tag!6769 (rule!8799 token!544))) lt!1293744)))

(declare-fun b!3696059 () Bool)

(assert (=> b!3696059 (= e!2288872 None!8469)))

(declare-fun b!3696060 () Bool)

(assert (=> b!3696060 (= e!2288870 (Some!8469 (h!44637 lt!1293643)))))

(assert (= (and d!1084202 c!638898) b!3696060))

(assert (= (and d!1084202 (not c!638898)) b!3696057))

(assert (= (and b!3696057 c!638897) b!3696058))

(assert (= (and b!3696057 (not c!638897)) b!3696059))

(assert (= (and d!1084202 (not res!1503001)) b!3696056))

(assert (= (and b!3696056 res!1503000) b!3696055))

(declare-fun m!4207813 () Bool)

(assert (=> b!3696055 m!4207813))

(assert (=> b!3696056 m!4207813))

(assert (=> b!3696056 m!4207813))

(declare-fun m!4207815 () Bool)

(assert (=> b!3696056 m!4207815))

(declare-fun m!4207817 () Bool)

(assert (=> b!3696058 m!4207817))

(declare-fun m!4207819 () Bool)

(assert (=> b!3696058 m!4207819))

(declare-fun m!4207821 () Bool)

(assert (=> b!3696058 m!4207821))

(declare-fun m!4207823 () Bool)

(assert (=> d!1084202 m!4207823))

(assert (=> d!1084202 m!4207473))

(assert (=> b!3695729 d!1084202))

(declare-fun b!3696061 () Bool)

(declare-fun e!2288877 () Bool)

(declare-fun lt!1293747 () Option!8470)

(assert (=> b!3696061 (= e!2288877 (= (tag!6769 (get!13031 lt!1293747)) (tag!6769 (rule!8799 token!544))))))

(declare-fun b!3696062 () Bool)

(declare-fun e!2288875 () Bool)

(assert (=> b!3696062 (= e!2288875 e!2288877)))

(declare-fun res!1503002 () Bool)

(assert (=> b!3696062 (=> (not res!1503002) (not e!2288877))))

(assert (=> b!3696062 (= res!1503002 (contains!7821 rules!3598 (get!13031 lt!1293747)))))

(declare-fun b!3696063 () Bool)

(declare-fun e!2288874 () Option!8470)

(declare-fun e!2288876 () Option!8470)

(assert (=> b!3696063 (= e!2288874 e!2288876)))

(declare-fun c!638899 () Bool)

(assert (=> b!3696063 (= c!638899 (and (is-Cons!39217 rules!3598) (not (= (tag!6769 (h!44637 rules!3598)) (tag!6769 (rule!8799 token!544))))))))

(declare-fun b!3696064 () Bool)

(declare-fun lt!1293749 () Unit!57207)

(declare-fun lt!1293748 () Unit!57207)

(assert (=> b!3696064 (= lt!1293749 lt!1293748)))

(assert (=> b!3696064 (rulesInvariant!4931 thiss!25322 (t!301676 rules!3598))))

(assert (=> b!3696064 (= lt!1293748 (lemmaInvariantOnRulesThenOnTail!653 thiss!25322 (h!44637 rules!3598) (t!301676 rules!3598)))))

(assert (=> b!3696064 (= e!2288876 (getRuleFromTag!1501 thiss!25322 (t!301676 rules!3598) (tag!6769 (rule!8799 token!544))))))

(declare-fun d!1084204 () Bool)

(assert (=> d!1084204 e!2288875))

(declare-fun res!1503003 () Bool)

(assert (=> d!1084204 (=> res!1503003 e!2288875)))

(assert (=> d!1084204 (= res!1503003 (isEmpty!23370 lt!1293747))))

(assert (=> d!1084204 (= lt!1293747 e!2288874)))

(declare-fun c!638900 () Bool)

(assert (=> d!1084204 (= c!638900 (and (is-Cons!39217 rules!3598) (= (tag!6769 (h!44637 rules!3598)) (tag!6769 (rule!8799 token!544)))))))

(assert (=> d!1084204 (rulesInvariant!4931 thiss!25322 rules!3598)))

(assert (=> d!1084204 (= (getRuleFromTag!1501 thiss!25322 rules!3598 (tag!6769 (rule!8799 token!544))) lt!1293747)))

(declare-fun b!3696065 () Bool)

(assert (=> b!3696065 (= e!2288876 None!8469)))

(declare-fun b!3696066 () Bool)

(assert (=> b!3696066 (= e!2288874 (Some!8469 (h!44637 rules!3598)))))

(assert (= (and d!1084204 c!638900) b!3696066))

(assert (= (and d!1084204 (not c!638900)) b!3696063))

(assert (= (and b!3696063 c!638899) b!3696064))

(assert (= (and b!3696063 (not c!638899)) b!3696065))

(assert (= (and d!1084204 (not res!1503003)) b!3696062))

(assert (= (and b!3696062 res!1503002) b!3696061))

(declare-fun m!4207825 () Bool)

(assert (=> b!3696061 m!4207825))

(assert (=> b!3696062 m!4207825))

(assert (=> b!3696062 m!4207825))

(declare-fun m!4207827 () Bool)

(assert (=> b!3696062 m!4207827))

(assert (=> b!3696064 m!4207477))

(assert (=> b!3696064 m!4207471))

(assert (=> b!3696064 m!4207481))

(declare-fun m!4207829 () Bool)

(assert (=> d!1084204 m!4207829))

(assert (=> d!1084204 m!4207529))

(assert (=> b!3695729 d!1084204))

(declare-fun d!1084206 () Bool)

(assert (=> d!1084206 (= (isEmpty!23365 rules!3598) (is-Nil!39217 rules!3598))))

(assert (=> b!3695738 d!1084206))

(declare-fun d!1084208 () Bool)

(assert (=> d!1084208 (= (inv!52702 (tag!6769 (rule!8799 token!544))) (= (mod (str.len (value!189887 (tag!6769 (rule!8799 token!544)))) 2) 0))))

(assert (=> b!3695727 d!1084208))

(declare-fun d!1084210 () Bool)

(declare-fun res!1503004 () Bool)

(declare-fun e!2288878 () Bool)

(assert (=> d!1084210 (=> (not res!1503004) (not e!2288878))))

(assert (=> d!1084210 (= res!1503004 (semiInverseModEq!2535 (toChars!8136 (transformation!5945 (rule!8799 token!544))) (toValue!8277 (transformation!5945 (rule!8799 token!544)))))))

(assert (=> d!1084210 (= (inv!52705 (transformation!5945 (rule!8799 token!544))) e!2288878)))

(declare-fun b!3696067 () Bool)

(assert (=> b!3696067 (= e!2288878 (equivClasses!2434 (toChars!8136 (transformation!5945 (rule!8799 token!544))) (toValue!8277 (transformation!5945 (rule!8799 token!544)))))))

(assert (= (and d!1084210 res!1503004) b!3696067))

(declare-fun m!4207831 () Bool)

(assert (=> d!1084210 m!4207831))

(declare-fun m!4207833 () Bool)

(assert (=> b!3696067 m!4207833))

(assert (=> b!3695727 d!1084210))

(declare-fun b!3696096 () Bool)

(declare-fun e!2288893 () Bool)

(declare-fun head!7988 (List!39340) C!21594)

(assert (=> b!3696096 (= e!2288893 (not (= (head!7988 (list!14653 (charsOf!3940 token!544))) (c!638844 (regex!5945 lt!1293641)))))))

(declare-fun b!3696097 () Bool)

(declare-fun e!2288895 () Bool)

(declare-fun lt!1293752 () Bool)

(assert (=> b!3696097 (= e!2288895 (not lt!1293752))))

(declare-fun bm!267156 () Bool)

(declare-fun call!267161 () Bool)

(assert (=> bm!267156 (= call!267161 (isEmpty!23368 (list!14653 (charsOf!3940 token!544))))))

(declare-fun b!3696098 () Bool)

(declare-fun e!2288894 () Bool)

(assert (=> b!3696098 (= e!2288894 (= (head!7988 (list!14653 (charsOf!3940 token!544))) (c!638844 (regex!5945 lt!1293641))))))

(declare-fun b!3696099 () Bool)

(declare-fun e!2288899 () Bool)

(assert (=> b!3696099 (= e!2288899 e!2288895)))

(declare-fun c!638908 () Bool)

(assert (=> b!3696099 (= c!638908 (is-EmptyLang!10704 (regex!5945 lt!1293641)))))

(declare-fun b!3696100 () Bool)

(declare-fun res!1503028 () Bool)

(declare-fun e!2288898 () Bool)

(assert (=> b!3696100 (=> res!1503028 e!2288898)))

(assert (=> b!3696100 (= res!1503028 e!2288894)))

(declare-fun res!1503022 () Bool)

(assert (=> b!3696100 (=> (not res!1503022) (not e!2288894))))

(assert (=> b!3696100 (= res!1503022 lt!1293752)))

(declare-fun b!3696101 () Bool)

(declare-fun res!1503021 () Bool)

(assert (=> b!3696101 (=> (not res!1503021) (not e!2288894))))

(assert (=> b!3696101 (= res!1503021 (not call!267161))))

(declare-fun d!1084212 () Bool)

(assert (=> d!1084212 e!2288899))

(declare-fun c!638909 () Bool)

(assert (=> d!1084212 (= c!638909 (is-EmptyExpr!10704 (regex!5945 lt!1293641)))))

(declare-fun e!2288897 () Bool)

(assert (=> d!1084212 (= lt!1293752 e!2288897)))

(declare-fun c!638907 () Bool)

(assert (=> d!1084212 (= c!638907 (isEmpty!23368 (list!14653 (charsOf!3940 token!544))))))

(assert (=> d!1084212 (validRegex!4895 (regex!5945 lt!1293641))))

(assert (=> d!1084212 (= (matchR!5243 (regex!5945 lt!1293641) (list!14653 (charsOf!3940 token!544))) lt!1293752)))

(declare-fun b!3696102 () Bool)

(declare-fun res!1503026 () Bool)

(assert (=> b!3696102 (=> res!1503026 e!2288898)))

(assert (=> b!3696102 (= res!1503026 (not (is-ElementMatch!10704 (regex!5945 lt!1293641))))))

(assert (=> b!3696102 (= e!2288895 e!2288898)))

(declare-fun b!3696103 () Bool)

(assert (=> b!3696103 (= e!2288897 (nullable!3732 (regex!5945 lt!1293641)))))

(declare-fun b!3696104 () Bool)

(assert (=> b!3696104 (= e!2288899 (= lt!1293752 call!267161))))

(declare-fun b!3696105 () Bool)

(declare-fun e!2288896 () Bool)

(assert (=> b!3696105 (= e!2288898 e!2288896)))

(declare-fun res!1503025 () Bool)

(assert (=> b!3696105 (=> (not res!1503025) (not e!2288896))))

(assert (=> b!3696105 (= res!1503025 (not lt!1293752))))

(declare-fun b!3696106 () Bool)

(declare-fun res!1503024 () Bool)

(assert (=> b!3696106 (=> (not res!1503024) (not e!2288894))))

(declare-fun tail!5726 (List!39340) List!39340)

(assert (=> b!3696106 (= res!1503024 (isEmpty!23368 (tail!5726 (list!14653 (charsOf!3940 token!544)))))))

(declare-fun b!3696107 () Bool)

(declare-fun derivativeStep!3275 (Regex!10704 C!21594) Regex!10704)

(assert (=> b!3696107 (= e!2288897 (matchR!5243 (derivativeStep!3275 (regex!5945 lt!1293641) (head!7988 (list!14653 (charsOf!3940 token!544)))) (tail!5726 (list!14653 (charsOf!3940 token!544)))))))

(declare-fun b!3696108 () Bool)

(declare-fun res!1503027 () Bool)

(assert (=> b!3696108 (=> res!1503027 e!2288893)))

(assert (=> b!3696108 (= res!1503027 (not (isEmpty!23368 (tail!5726 (list!14653 (charsOf!3940 token!544))))))))

(declare-fun b!3696109 () Bool)

(assert (=> b!3696109 (= e!2288896 e!2288893)))

(declare-fun res!1503023 () Bool)

(assert (=> b!3696109 (=> res!1503023 e!2288893)))

(assert (=> b!3696109 (= res!1503023 call!267161)))

(assert (= (and d!1084212 c!638907) b!3696103))

(assert (= (and d!1084212 (not c!638907)) b!3696107))

(assert (= (and d!1084212 c!638909) b!3696104))

(assert (= (and d!1084212 (not c!638909)) b!3696099))

(assert (= (and b!3696099 c!638908) b!3696097))

(assert (= (and b!3696099 (not c!638908)) b!3696102))

(assert (= (and b!3696102 (not res!1503026)) b!3696100))

(assert (= (and b!3696100 res!1503022) b!3696101))

(assert (= (and b!3696101 res!1503021) b!3696106))

(assert (= (and b!3696106 res!1503024) b!3696098))

(assert (= (and b!3696100 (not res!1503028)) b!3696105))

(assert (= (and b!3696105 res!1503025) b!3696109))

(assert (= (and b!3696109 (not res!1503023)) b!3696108))

(assert (= (and b!3696108 (not res!1503027)) b!3696096))

(assert (= (or b!3696104 b!3696101 b!3696109) bm!267156))

(assert (=> d!1084212 m!4207489))

(declare-fun m!4207835 () Bool)

(assert (=> d!1084212 m!4207835))

(declare-fun m!4207837 () Bool)

(assert (=> d!1084212 m!4207837))

(assert (=> b!3696106 m!4207489))

(declare-fun m!4207839 () Bool)

(assert (=> b!3696106 m!4207839))

(assert (=> b!3696106 m!4207839))

(declare-fun m!4207841 () Bool)

(assert (=> b!3696106 m!4207841))

(assert (=> b!3696096 m!4207489))

(declare-fun m!4207843 () Bool)

(assert (=> b!3696096 m!4207843))

(assert (=> b!3696098 m!4207489))

(assert (=> b!3696098 m!4207843))

(assert (=> b!3696107 m!4207489))

(assert (=> b!3696107 m!4207843))

(assert (=> b!3696107 m!4207843))

(declare-fun m!4207845 () Bool)

(assert (=> b!3696107 m!4207845))

(assert (=> b!3696107 m!4207489))

(assert (=> b!3696107 m!4207839))

(assert (=> b!3696107 m!4207845))

(assert (=> b!3696107 m!4207839))

(declare-fun m!4207847 () Bool)

(assert (=> b!3696107 m!4207847))

(assert (=> b!3696108 m!4207489))

(assert (=> b!3696108 m!4207839))

(assert (=> b!3696108 m!4207839))

(assert (=> b!3696108 m!4207841))

(assert (=> bm!267156 m!4207489))

(assert (=> bm!267156 m!4207835))

(declare-fun m!4207849 () Bool)

(assert (=> b!3696103 m!4207849))

(assert (=> b!3695736 d!1084212))

(assert (=> b!3695736 d!1084178))

(assert (=> b!3695736 d!1084180))

(assert (=> b!3695736 d!1084196))

(declare-fun b!3696110 () Bool)

(declare-fun e!2288903 () Bool)

(declare-fun lt!1293753 () Option!8470)

(assert (=> b!3696110 (= e!2288903 (= (tag!6769 (get!13031 lt!1293753)) (tag!6769 (rule!8799 token!544))))))

(declare-fun b!3696111 () Bool)

(declare-fun e!2288901 () Bool)

(assert (=> b!3696111 (= e!2288901 e!2288903)))

(declare-fun res!1503029 () Bool)

(assert (=> b!3696111 (=> (not res!1503029) (not e!2288903))))

(assert (=> b!3696111 (= res!1503029 (contains!7821 (t!301676 rules!3598) (get!13031 lt!1293753)))))

(declare-fun b!3696112 () Bool)

(declare-fun e!2288900 () Option!8470)

(declare-fun e!2288902 () Option!8470)

(assert (=> b!3696112 (= e!2288900 e!2288902)))

(declare-fun c!638910 () Bool)

(assert (=> b!3696112 (= c!638910 (and (is-Cons!39217 (t!301676 rules!3598)) (not (= (tag!6769 (h!44637 (t!301676 rules!3598))) (tag!6769 (rule!8799 token!544))))))))

(declare-fun b!3696113 () Bool)

(declare-fun lt!1293755 () Unit!57207)

(declare-fun lt!1293754 () Unit!57207)

(assert (=> b!3696113 (= lt!1293755 lt!1293754)))

(assert (=> b!3696113 (rulesInvariant!4931 thiss!25322 (t!301676 (t!301676 rules!3598)))))

(assert (=> b!3696113 (= lt!1293754 (lemmaInvariantOnRulesThenOnTail!653 thiss!25322 (h!44637 (t!301676 rules!3598)) (t!301676 (t!301676 rules!3598))))))

(assert (=> b!3696113 (= e!2288902 (getRuleFromTag!1501 thiss!25322 (t!301676 (t!301676 rules!3598)) (tag!6769 (rule!8799 token!544))))))

(declare-fun d!1084214 () Bool)

(assert (=> d!1084214 e!2288901))

(declare-fun res!1503030 () Bool)

(assert (=> d!1084214 (=> res!1503030 e!2288901)))

(assert (=> d!1084214 (= res!1503030 (isEmpty!23370 lt!1293753))))

(assert (=> d!1084214 (= lt!1293753 e!2288900)))

(declare-fun c!638911 () Bool)

(assert (=> d!1084214 (= c!638911 (and (is-Cons!39217 (t!301676 rules!3598)) (= (tag!6769 (h!44637 (t!301676 rules!3598))) (tag!6769 (rule!8799 token!544)))))))

(assert (=> d!1084214 (rulesInvariant!4931 thiss!25322 (t!301676 rules!3598))))

(assert (=> d!1084214 (= (getRuleFromTag!1501 thiss!25322 (t!301676 rules!3598) (tag!6769 (rule!8799 token!544))) lt!1293753)))

(declare-fun b!3696114 () Bool)

(assert (=> b!3696114 (= e!2288902 None!8469)))

(declare-fun b!3696115 () Bool)

(assert (=> b!3696115 (= e!2288900 (Some!8469 (h!44637 (t!301676 rules!3598))))))

(assert (= (and d!1084214 c!638911) b!3696115))

(assert (= (and d!1084214 (not c!638911)) b!3696112))

(assert (= (and b!3696112 c!638910) b!3696113))

(assert (= (and b!3696112 (not c!638910)) b!3696114))

(assert (= (and d!1084214 (not res!1503030)) b!3696111))

(assert (= (and b!3696111 res!1503029) b!3696110))

(declare-fun m!4207851 () Bool)

(assert (=> b!3696110 m!4207851))

(assert (=> b!3696111 m!4207851))

(assert (=> b!3696111 m!4207851))

(declare-fun m!4207853 () Bool)

(assert (=> b!3696111 m!4207853))

(declare-fun m!4207855 () Bool)

(assert (=> b!3696113 m!4207855))

(declare-fun m!4207857 () Bool)

(assert (=> b!3696113 m!4207857))

(declare-fun m!4207859 () Bool)

(assert (=> b!3696113 m!4207859))

(declare-fun m!4207861 () Bool)

(assert (=> d!1084214 m!4207861))

(assert (=> d!1084214 m!4207477))

(assert (=> b!3695725 d!1084214))

(declare-fun d!1084216 () Bool)

(assert (=> d!1084216 (= (isDefined!6661 lt!1293642) (not (isEmpty!23370 lt!1293642)))))

(declare-fun bs!574285 () Bool)

(assert (= bs!574285 d!1084216))

(declare-fun m!4207863 () Bool)

(assert (=> bs!574285 m!4207863))

(assert (=> b!3695725 d!1084216))

(declare-fun d!1084218 () Bool)

(declare-fun e!2288914 () Bool)

(assert (=> d!1084218 e!2288914))

(declare-fun res!1503049 () Bool)

(assert (=> d!1084218 (=> (not res!1503049) (not e!2288914))))

(assert (=> d!1084218 (= res!1503049 (isDefined!6661 (getRuleFromTag!1501 thiss!25322 (t!301676 rules!3598) (tag!6769 (rule!8799 token!544)))))))

(declare-fun lt!1293768 () Unit!57207)

(declare-fun choose!22118 (LexerInterface!5534 List!39341 List!39340 Token!11244) Unit!57207)

(assert (=> d!1084218 (= lt!1293768 (choose!22118 thiss!25322 (t!301676 rules!3598) input!3172 token!544))))

(assert (=> d!1084218 (rulesInvariant!4931 thiss!25322 (t!301676 rules!3598))))

(assert (=> d!1084218 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1495 thiss!25322 (t!301676 rules!3598) input!3172 token!544) lt!1293768)))

(declare-fun b!3696138 () Bool)

(declare-fun res!1503050 () Bool)

(assert (=> b!3696138 (=> (not res!1503050) (not e!2288914))))

(assert (=> b!3696138 (= res!1503050 (matchR!5243 (regex!5945 (get!13031 (getRuleFromTag!1501 thiss!25322 (t!301676 rules!3598) (tag!6769 (rule!8799 token!544))))) (list!14653 (charsOf!3940 token!544))))))

(declare-fun b!3696139 () Bool)

(assert (=> b!3696139 (= e!2288914 (= (rule!8799 token!544) (get!13031 (getRuleFromTag!1501 thiss!25322 (t!301676 rules!3598) (tag!6769 (rule!8799 token!544))))))))

(assert (= (and d!1084218 res!1503049) b!3696138))

(assert (= (and b!3696138 res!1503050) b!3696139))

(assert (=> d!1084218 m!4207481))

(assert (=> d!1084218 m!4207481))

(declare-fun m!4207865 () Bool)

(assert (=> d!1084218 m!4207865))

(declare-fun m!4207867 () Bool)

(assert (=> d!1084218 m!4207867))

(assert (=> d!1084218 m!4207477))

(assert (=> b!3696138 m!4207489))

(declare-fun m!4207869 () Bool)

(assert (=> b!3696138 m!4207869))

(assert (=> b!3696138 m!4207487))

(assert (=> b!3696138 m!4207489))

(assert (=> b!3696138 m!4207487))

(assert (=> b!3696138 m!4207481))

(assert (=> b!3696138 m!4207481))

(assert (=> b!3696138 m!4207807))

(assert (=> b!3696139 m!4207481))

(assert (=> b!3696139 m!4207481))

(assert (=> b!3696139 m!4207807))

(assert (=> b!3695725 d!1084218))

(declare-fun d!1084220 () Bool)

(declare-fun res!1503051 () Bool)

(declare-fun e!2288915 () Bool)

(assert (=> d!1084220 (=> (not res!1503051) (not e!2288915))))

(assert (=> d!1084220 (= res!1503051 (rulesValid!2292 thiss!25322 lt!1293643))))

(assert (=> d!1084220 (= (rulesInvariant!4931 thiss!25322 lt!1293643) e!2288915)))

(declare-fun b!3696140 () Bool)

(assert (=> b!3696140 (= e!2288915 (noDuplicateTag!2288 thiss!25322 lt!1293643 Nil!39221))))

(assert (= (and d!1084220 res!1503051) b!3696140))

(declare-fun m!4207871 () Bool)

(assert (=> d!1084220 m!4207871))

(declare-fun m!4207873 () Bool)

(assert (=> b!3696140 m!4207873))

(assert (=> b!3695725 d!1084220))

(declare-fun d!1084222 () Bool)

(assert (=> d!1084222 (rulesInvariant!4931 thiss!25322 (t!301676 rules!3598))))

(declare-fun lt!1293776 () Unit!57207)

(declare-fun choose!22119 (LexerInterface!5534 Rule!11690 List!39341) Unit!57207)

(assert (=> d!1084222 (= lt!1293776 (choose!22119 thiss!25322 (h!44637 rules!3598) (t!301676 rules!3598)))))

(assert (=> d!1084222 (rulesInvariant!4931 thiss!25322 (Cons!39217 (h!44637 rules!3598) (t!301676 rules!3598)))))

(assert (=> d!1084222 (= (lemmaInvariantOnRulesThenOnTail!653 thiss!25322 (h!44637 rules!3598) (t!301676 rules!3598)) lt!1293776)))

(declare-fun bs!574286 () Bool)

(assert (= bs!574286 d!1084222))

(assert (=> bs!574286 m!4207477))

(declare-fun m!4207875 () Bool)

(assert (=> bs!574286 m!4207875))

(assert (=> bs!574286 m!4207809))

(assert (=> b!3695725 d!1084222))

(declare-fun d!1084224 () Bool)

(declare-fun res!1503059 () Bool)

(declare-fun e!2288920 () Bool)

(assert (=> d!1084224 (=> (not res!1503059) (not e!2288920))))

(assert (=> d!1084224 (= res!1503059 (rulesValid!2292 thiss!25322 (t!301676 rules!3598)))))

(assert (=> d!1084224 (= (rulesInvariant!4931 thiss!25322 (t!301676 rules!3598)) e!2288920)))

(declare-fun b!3696150 () Bool)

(assert (=> b!3696150 (= e!2288920 (noDuplicateTag!2288 thiss!25322 (t!301676 rules!3598) Nil!39221))))

(assert (= (and d!1084224 res!1503059) b!3696150))

(declare-fun m!4207877 () Bool)

(assert (=> d!1084224 m!4207877))

(declare-fun m!4207879 () Bool)

(assert (=> b!3696150 m!4207879))

(assert (=> b!3695725 d!1084224))

(declare-fun b!3696155 () Bool)

(declare-fun e!2288923 () Bool)

(declare-fun tp!1123331 () Bool)

(assert (=> b!3696155 (= e!2288923 (and tp_is_empty!18483 tp!1123331))))

(assert (=> b!3695719 (= tp!1123289 e!2288923)))

(assert (= (and b!3695719 (is-Cons!39216 (originalCharacters!6653 token!544))) b!3696155))

(declare-fun b!3696166 () Bool)

(declare-fun b_free!98305 () Bool)

(declare-fun b_next!99009 () Bool)

(assert (=> b!3696166 (= b_free!98305 (not b_next!99009))))

(declare-fun tp!1123341 () Bool)

(declare-fun b_and!276243 () Bool)

(assert (=> b!3696166 (= tp!1123341 b_and!276243)))

(declare-fun b_free!98307 () Bool)

(declare-fun b_next!99011 () Bool)

(assert (=> b!3696166 (= b_free!98307 (not b_next!99011))))

(declare-fun t!301689 () Bool)

(declare-fun tb!214061 () Bool)

(assert (=> (and b!3696166 (= (toChars!8136 (transformation!5945 (h!44637 (t!301676 rules!3598)))) (toChars!8136 (transformation!5945 (rule!8799 token!544)))) t!301689) tb!214061))

(declare-fun result!260710 () Bool)

(assert (= result!260710 result!260700))

(assert (=> d!1084180 t!301689))

(assert (=> b!3696023 t!301689))

(declare-fun tp!1123343 () Bool)

(declare-fun b_and!276245 () Bool)

(assert (=> b!3696166 (= tp!1123343 (and (=> t!301689 result!260710) b_and!276245))))

(declare-fun e!2288935 () Bool)

(assert (=> b!3696166 (= e!2288935 (and tp!1123341 tp!1123343))))

(declare-fun e!2288933 () Bool)

(declare-fun b!3696165 () Bool)

(declare-fun tp!1123342 () Bool)

(assert (=> b!3696165 (= e!2288933 (and tp!1123342 (inv!52702 (tag!6769 (h!44637 (t!301676 rules!3598)))) (inv!52705 (transformation!5945 (h!44637 (t!301676 rules!3598)))) e!2288935))))

(declare-fun b!3696164 () Bool)

(declare-fun e!2288932 () Bool)

(declare-fun tp!1123340 () Bool)

(assert (=> b!3696164 (= e!2288932 (and e!2288933 tp!1123340))))

(assert (=> b!3695728 (= tp!1123288 e!2288932)))

(assert (= b!3696165 b!3696166))

(assert (= b!3696164 b!3696165))

(assert (= (and b!3695728 (is-Cons!39217 (t!301676 rules!3598))) b!3696164))

(declare-fun m!4207929 () Bool)

(assert (=> b!3696165 m!4207929))

(declare-fun m!4207931 () Bool)

(assert (=> b!3696165 m!4207931))

(declare-fun b!3696167 () Bool)

(declare-fun e!2288936 () Bool)

(declare-fun tp!1123344 () Bool)

(assert (=> b!3696167 (= e!2288936 (and tp_is_empty!18483 tp!1123344))))

(assert (=> b!3695739 (= tp!1123287 e!2288936)))

(assert (= (and b!3695739 (is-Cons!39216 (t!301675 input!3172))) b!3696167))

(declare-fun b!3696181 () Bool)

(declare-fun e!2288939 () Bool)

(declare-fun tp!1123355 () Bool)

(declare-fun tp!1123359 () Bool)

(assert (=> b!3696181 (= e!2288939 (and tp!1123355 tp!1123359))))

(assert (=> b!3695727 (= tp!1123293 e!2288939)))

(declare-fun b!3696178 () Bool)

(assert (=> b!3696178 (= e!2288939 tp_is_empty!18483)))

(declare-fun b!3696180 () Bool)

(declare-fun tp!1123356 () Bool)

(assert (=> b!3696180 (= e!2288939 tp!1123356)))

(declare-fun b!3696179 () Bool)

(declare-fun tp!1123357 () Bool)

(declare-fun tp!1123358 () Bool)

(assert (=> b!3696179 (= e!2288939 (and tp!1123357 tp!1123358))))

(assert (= (and b!3695727 (is-ElementMatch!10704 (regex!5945 (rule!8799 token!544)))) b!3696178))

(assert (= (and b!3695727 (is-Concat!16880 (regex!5945 (rule!8799 token!544)))) b!3696179))

(assert (= (and b!3695727 (is-Star!10704 (regex!5945 (rule!8799 token!544)))) b!3696180))

(assert (= (and b!3695727 (is-Union!10704 (regex!5945 (rule!8799 token!544)))) b!3696181))

(declare-fun b!3696185 () Bool)

(declare-fun e!2288940 () Bool)

(declare-fun tp!1123360 () Bool)

(declare-fun tp!1123364 () Bool)

(assert (=> b!3696185 (= e!2288940 (and tp!1123360 tp!1123364))))

(assert (=> b!3695730 (= tp!1123295 e!2288940)))

(declare-fun b!3696182 () Bool)

(assert (=> b!3696182 (= e!2288940 tp_is_empty!18483)))

(declare-fun b!3696184 () Bool)

(declare-fun tp!1123361 () Bool)

(assert (=> b!3696184 (= e!2288940 tp!1123361)))

(declare-fun b!3696183 () Bool)

(declare-fun tp!1123362 () Bool)

(declare-fun tp!1123363 () Bool)

(assert (=> b!3696183 (= e!2288940 (and tp!1123362 tp!1123363))))

(assert (= (and b!3695730 (is-ElementMatch!10704 (regex!5945 (h!44637 rules!3598)))) b!3696182))

(assert (= (and b!3695730 (is-Concat!16880 (regex!5945 (h!44637 rules!3598)))) b!3696183))

(assert (= (and b!3695730 (is-Star!10704 (regex!5945 (h!44637 rules!3598)))) b!3696184))

(assert (= (and b!3695730 (is-Union!10704 (regex!5945 (h!44637 rules!3598)))) b!3696185))

(declare-fun b_lambda!109627 () Bool)

(assert (= b_lambda!109623 (or (and b!3695734 b_free!98291 (= (toChars!8136 (transformation!5945 (h!44637 rules!3598))) (toChars!8136 (transformation!5945 (rule!8799 token!544))))) (and b!3695722 b_free!98295) (and b!3696166 b_free!98307 (= (toChars!8136 (transformation!5945 (h!44637 (t!301676 rules!3598)))) (toChars!8136 (transformation!5945 (rule!8799 token!544))))) b_lambda!109627)))

(declare-fun b_lambda!109629 () Bool)

(assert (= b_lambda!109625 (or (and b!3695734 b_free!98291 (= (toChars!8136 (transformation!5945 (h!44637 rules!3598))) (toChars!8136 (transformation!5945 (rule!8799 token!544))))) (and b!3695722 b_free!98295) (and b!3696166 b_free!98307 (= (toChars!8136 (transformation!5945 (h!44637 (t!301676 rules!3598)))) (toChars!8136 (transformation!5945 (rule!8799 token!544))))) b_lambda!109629)))

(push 1)

(assert (not tb!214057))

(assert (not b!3696155))

(assert b_and!276245)

(assert (not b!3695850))

(assert (not b!3696107))

(assert (not b!3696040))

(assert (not d!1084122))

(assert (not b!3695851))

(assert (not d!1084200))

(assert (not bm!267153))

(assert (not bm!267151))

(assert (not b!3696111))

(assert (not b!3696061))

(assert (not b!3695857))

(assert (not b!3695977))

(assert (not b!3695976))

(assert (not b!3696096))

(assert (not d!1084212))

(assert b_and!276239)

(assert (not d!1084214))

(assert (not b!3696106))

(assert (not b_next!98993))

(assert (not b!3695972))

(assert (not d!1084210))

(assert b_and!276241)

(assert (not bm!267132))

(assert (not b!3696138))

(assert (not d!1084202))

(assert (not b!3696164))

(assert (not b!3695856))

(assert (not b!3696110))

(assert (not b!3695974))

(assert (not b!3695853))

(assert (not b!3696056))

(assert (not b_lambda!109629))

(assert (not b!3696018))

(assert (not b!3696009))

(assert (not d!1084148))

(assert (not d!1084224))

(assert (not d!1084178))

(assert tp_is_empty!18483)

(assert (not b!3696108))

(assert (not d!1084140))

(assert (not d!1084120))

(assert (not b!3696042))

(assert (not b!3696165))

(assert (not b!3696140))

(assert (not b!3696098))

(assert (not b!3696064))

(assert (not d!1084194))

(assert (not b!3695854))

(assert (not b_next!99011))

(assert (not b_lambda!109627))

(assert (not b!3696058))

(assert (not bm!267156))

(assert (not b!3696113))

(assert (not b!3696181))

(assert (not b!3696139))

(assert (not d!1084220))

(assert (not b!3695979))

(assert (not b!3696055))

(assert b_and!276243)

(assert (not b!3695980))

(assert (not d!1084190))

(assert (not b!3695975))

(assert (not b!3696179))

(assert b_and!276215)

(assert (not b!3696024))

(assert (not d!1084222))

(assert (not b!3695852))

(assert (not b!3696150))

(assert (not d!1084218))

(assert (not b_next!98995))

(assert (not b!3696027))

(assert (not b_next!98997))

(assert (not b!3696038))

(assert (not b!3695973))

(assert (not b!3696103))

(assert (not b!3696180))

(assert (not b!3696062))

(assert (not b_next!99009))

(assert (not d!1084216))

(assert (not b_next!98999))

(assert b_and!276211)

(assert (not b!3696183))

(assert (not b!3696184))

(assert (not b!3695855))

(assert (not b!3696067))

(assert (not d!1084146))

(assert (not b!3696167))

(assert (not d!1084204))

(assert (not d!1084180))

(assert (not b!3695863))

(assert (not b!3696023))

(assert (not d!1084186))

(assert (not b!3696185))

(check-sat)

(pop 1)

(push 1)

(assert b_and!276239)

(assert b_and!276245)

(assert (not b_next!99011))

(assert b_and!276243)

(assert b_and!276215)

(assert (not b_next!98995))

(assert (not b_next!98997))

(assert (not b_next!99009))

(assert (not b_next!98993))

(assert b_and!276241)

(assert (not b_next!98999))

(assert b_and!276211)

(check-sat)

(pop 1)

