; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!332784 () Bool)

(assert start!332784)

(declare-fun b!3586810 () Bool)

(declare-fun b_free!92377 () Bool)

(declare-fun b_next!93081 () Bool)

(assert (=> b!3586810 (= b_free!92377 (not b_next!93081))))

(declare-fun tp!1098086 () Bool)

(declare-fun b_and!259063 () Bool)

(assert (=> b!3586810 (= tp!1098086 b_and!259063)))

(declare-fun b_free!92379 () Bool)

(declare-fun b_next!93083 () Bool)

(assert (=> b!3586810 (= b_free!92379 (not b_next!93083))))

(declare-fun tp!1098090 () Bool)

(declare-fun b_and!259065 () Bool)

(assert (=> b!3586810 (= tp!1098090 b_and!259065)))

(declare-fun b!3586802 () Bool)

(declare-fun b_free!92381 () Bool)

(declare-fun b_next!93085 () Bool)

(assert (=> b!3586802 (= b_free!92381 (not b_next!93085))))

(declare-fun tp!1098088 () Bool)

(declare-fun b_and!259067 () Bool)

(assert (=> b!3586802 (= tp!1098088 b_and!259067)))

(declare-fun b_free!92383 () Bool)

(declare-fun b_next!93087 () Bool)

(assert (=> b!3586802 (= b_free!92383 (not b_next!93087))))

(declare-fun tp!1098095 () Bool)

(declare-fun b_and!259069 () Bool)

(assert (=> b!3586802 (= tp!1098095 b_and!259069)))

(declare-fun b!3586803 () Bool)

(declare-fun b_free!92385 () Bool)

(declare-fun b_next!93089 () Bool)

(assert (=> b!3586803 (= b_free!92385 (not b_next!93089))))

(declare-fun tp!1098085 () Bool)

(declare-fun b_and!259071 () Bool)

(assert (=> b!3586803 (= tp!1098085 b_and!259071)))

(declare-fun b_free!92387 () Bool)

(declare-fun b_next!93091 () Bool)

(assert (=> b!3586803 (= b_free!92387 (not b_next!93091))))

(declare-fun tp!1098084 () Bool)

(declare-fun b_and!259073 () Bool)

(assert (=> b!3586803 (= tp!1098084 b_and!259073)))

(declare-fun b!3586811 () Bool)

(declare-fun b_free!92389 () Bool)

(declare-fun b_next!93093 () Bool)

(assert (=> b!3586811 (= b_free!92389 (not b_next!93093))))

(declare-fun tp!1098087 () Bool)

(declare-fun b_and!259075 () Bool)

(assert (=> b!3586811 (= tp!1098087 b_and!259075)))

(declare-fun b_free!92391 () Bool)

(declare-fun b_next!93095 () Bool)

(assert (=> b!3586811 (= b_free!92391 (not b_next!93095))))

(declare-fun tp!1098094 () Bool)

(declare-fun b_and!259077 () Bool)

(assert (=> b!3586811 (= tp!1098094 b_and!259077)))

(declare-fun b!3586785 () Bool)

(declare-fun e!2219318 () Bool)

(declare-fun e!2219326 () Bool)

(assert (=> b!3586785 (= e!2219318 e!2219326)))

(declare-fun res!1447624 () Bool)

(assert (=> b!3586785 (=> (not res!1447624) (not e!2219326))))

(declare-datatypes ((List!37824 0))(
  ( (Nil!37700) (Cons!37700 (h!43120 (_ BitVec 16)) (t!290637 List!37824)) )
))
(declare-datatypes ((TokenValue!5793 0))(
  ( (FloatLiteralValue!11586 (text!40996 List!37824)) (TokenValueExt!5792 (__x!23803 Int)) (Broken!28965 (value!178981 List!37824)) (Object!5916) (End!5793) (Def!5793) (Underscore!5793) (Match!5793) (Else!5793) (Error!5793) (Case!5793) (If!5793) (Extends!5793) (Abstract!5793) (Class!5793) (Val!5793) (DelimiterValue!11586 (del!5853 List!37824)) (KeywordValue!5799 (value!178982 List!37824)) (CommentValue!11586 (value!178983 List!37824)) (WhitespaceValue!11586 (value!178984 List!37824)) (IndentationValue!5793 (value!178985 List!37824)) (String!42300) (Int32!5793) (Broken!28966 (value!178986 List!37824)) (Boolean!5794) (Unit!53697) (OperatorValue!5796 (op!5853 List!37824)) (IdentifierValue!11586 (value!178987 List!37824)) (IdentifierValue!11587 (value!178988 List!37824)) (WhitespaceValue!11587 (value!178989 List!37824)) (True!11586) (False!11586) (Broken!28967 (value!178990 List!37824)) (Broken!28968 (value!178991 List!37824)) (True!11587) (RightBrace!5793) (RightBracket!5793) (Colon!5793) (Null!5793) (Comma!5793) (LeftBracket!5793) (False!11587) (LeftBrace!5793) (ImaginaryLiteralValue!5793 (text!40997 List!37824)) (StringLiteralValue!17379 (value!178992 List!37824)) (EOFValue!5793 (value!178993 List!37824)) (IdentValue!5793 (value!178994 List!37824)) (DelimiterValue!11587 (value!178995 List!37824)) (DedentValue!5793 (value!178996 List!37824)) (NewLineValue!5793 (value!178997 List!37824)) (IntegerValue!17379 (value!178998 (_ BitVec 32)) (text!40998 List!37824)) (IntegerValue!17380 (value!178999 Int) (text!40999 List!37824)) (Times!5793) (Or!5793) (Equal!5793) (Minus!5793) (Broken!28969 (value!179000 List!37824)) (And!5793) (Div!5793) (LessEqual!5793) (Mod!5793) (Concat!16115) (Not!5793) (Plus!5793) (SpaceValue!5793 (value!179001 List!37824)) (IntegerValue!17381 (value!179002 Int) (text!41000 List!37824)) (StringLiteralValue!17380 (text!41001 List!37824)) (FloatLiteralValue!11587 (text!41002 List!37824)) (BytesLiteralValue!5793 (value!179003 List!37824)) (CommentValue!11587 (value!179004 List!37824)) (StringLiteralValue!17381 (value!179005 List!37824)) (ErrorTokenValue!5793 (msg!5854 List!37824)) )
))
(declare-datatypes ((C!20830 0))(
  ( (C!20831 (val!12463 Int)) )
))
(declare-datatypes ((Regex!10322 0))(
  ( (ElementMatch!10322 (c!621269 C!20830)) (Concat!16116 (regOne!21156 Regex!10322) (regTwo!21156 Regex!10322)) (EmptyExpr!10322) (Star!10322 (reg!10651 Regex!10322)) (EmptyLang!10322) (Union!10322 (regOne!21157 Regex!10322) (regTwo!21157 Regex!10322)) )
))
(declare-datatypes ((String!42301 0))(
  ( (String!42302 (value!179006 String)) )
))
(declare-datatypes ((List!37825 0))(
  ( (Nil!37701) (Cons!37701 (h!43121 C!20830) (t!290638 List!37825)) )
))
(declare-datatypes ((IArray!22937 0))(
  ( (IArray!22938 (innerList!11526 List!37825)) )
))
(declare-datatypes ((Conc!11466 0))(
  ( (Node!11466 (left!29462 Conc!11466) (right!29792 Conc!11466) (csize!23162 Int) (cheight!11677 Int)) (Leaf!17859 (xs!14668 IArray!22937) (csize!23163 Int)) (Empty!11466) )
))
(declare-datatypes ((BalanceConc!22546 0))(
  ( (BalanceConc!22547 (c!621270 Conc!11466)) )
))
(declare-datatypes ((TokenValueInjection!11014 0))(
  ( (TokenValueInjection!11015 (toValue!7843 Int) (toChars!7702 Int)) )
))
(declare-datatypes ((Rule!10926 0))(
  ( (Rule!10927 (regex!5563 Regex!10322) (tag!6231 String!42301) (isSeparator!5563 Bool) (transformation!5563 TokenValueInjection!11014)) )
))
(declare-datatypes ((Token!10492 0))(
  ( (Token!10493 (value!179007 TokenValue!5793) (rule!8277 Rule!10926) (size!28721 Int) (originalCharacters!6277 List!37825)) )
))
(declare-datatypes ((tuple2!37590 0))(
  ( (tuple2!37591 (_1!21929 Token!10492) (_2!21929 List!37825)) )
))
(declare-fun lt!1230272 () tuple2!37590)

(declare-fun token!511 () Token!10492)

(assert (=> b!3586785 (= res!1447624 (= (_1!21929 lt!1230272) token!511))))

(declare-datatypes ((Option!7756 0))(
  ( (None!7755) (Some!7755 (v!37421 tuple2!37590)) )
))
(declare-fun lt!1230279 () Option!7756)

(declare-fun get!12148 (Option!7756) tuple2!37590)

(assert (=> b!3586785 (= lt!1230272 (get!12148 lt!1230279))))

(declare-fun b!3586786 () Bool)

(declare-fun e!2219325 () Bool)

(declare-fun tp_is_empty!17727 () Bool)

(declare-fun tp!1098097 () Bool)

(assert (=> b!3586786 (= e!2219325 (and tp_is_empty!17727 tp!1098097))))

(declare-fun b!3586787 () Bool)

(declare-fun res!1447618 () Bool)

(declare-fun e!2219320 () Bool)

(assert (=> b!3586787 (=> (not res!1447618) (not e!2219320))))

(declare-fun anOtherTypeRule!33 () Rule!10926)

(declare-fun rule!403 () Rule!10926)

(assert (=> b!3586787 (= res!1447618 (not (= (isSeparator!5563 anOtherTypeRule!33) (isSeparator!5563 rule!403))))))

(declare-fun b!3586788 () Bool)

(declare-fun res!1447615 () Bool)

(declare-fun e!2219321 () Bool)

(assert (=> b!3586788 (=> res!1447615 e!2219321)))

(declare-fun suffix!1395 () List!37825)

(declare-fun isEmpty!22210 (List!37825) Bool)

(assert (=> b!3586788 (= res!1447615 (isEmpty!22210 suffix!1395))))

(declare-fun b!3586789 () Bool)

(declare-fun res!1447630 () Bool)

(assert (=> b!3586789 (=> (not res!1447630) (not e!2219320))))

(declare-datatypes ((LexerInterface!5152 0))(
  ( (LexerInterfaceExt!5149 (__x!23804 Int)) (Lexer!5150) )
))
(declare-fun thiss!23823 () LexerInterface!5152)

(declare-datatypes ((List!37826 0))(
  ( (Nil!37702) (Cons!37702 (h!43122 Rule!10926) (t!290639 List!37826)) )
))
(declare-fun rules!3307 () List!37826)

(declare-fun rulesInvariant!4549 (LexerInterface!5152 List!37826) Bool)

(assert (=> b!3586789 (= res!1447630 (rulesInvariant!4549 thiss!23823 rules!3307))))

(declare-fun b!3586790 () Bool)

(declare-fun e!2219310 () Bool)

(declare-fun lt!1230275 () tuple2!37590)

(declare-fun lt!1230268 () Rule!10926)

(assert (=> b!3586790 (= e!2219310 (= (rule!8277 (_1!21929 lt!1230275)) lt!1230268))))

(declare-fun b!3586791 () Bool)

(declare-fun e!2219315 () Bool)

(declare-fun e!2219323 () Bool)

(declare-fun tp!1098091 () Bool)

(declare-fun inv!51028 (String!42301) Bool)

(declare-fun inv!51031 (TokenValueInjection!11014) Bool)

(assert (=> b!3586791 (= e!2219323 (and tp!1098091 (inv!51028 (tag!6231 (rule!8277 token!511))) (inv!51031 (transformation!5563 (rule!8277 token!511))) e!2219315))))

(declare-fun b!3586793 () Bool)

(declare-fun e!2219313 () Bool)

(declare-fun tp!1098096 () Bool)

(declare-fun e!2219314 () Bool)

(assert (=> b!3586793 (= e!2219314 (and tp!1098096 (inv!51028 (tag!6231 anOtherTypeRule!33)) (inv!51031 (transformation!5563 anOtherTypeRule!33)) e!2219313))))

(declare-fun b!3586794 () Bool)

(declare-fun res!1447623 () Bool)

(declare-fun e!2219309 () Bool)

(assert (=> b!3586794 (=> res!1447623 e!2219309)))

(declare-fun sepAndNonSepRulesDisjointChars!1733 (List!37826 List!37826) Bool)

(assert (=> b!3586794 (= res!1447623 (not (sepAndNonSepRulesDisjointChars!1733 rules!3307 rules!3307)))))

(declare-fun tp!1098083 () Bool)

(declare-fun e!2219322 () Bool)

(declare-fun b!3586795 () Bool)

(declare-fun e!2219319 () Bool)

(assert (=> b!3586795 (= e!2219322 (and tp!1098083 (inv!51028 (tag!6231 (h!43122 rules!3307))) (inv!51031 (transformation!5563 (h!43122 rules!3307))) e!2219319))))

(declare-fun e!2219328 () Bool)

(declare-fun tp!1098092 () Bool)

(declare-fun e!2219330 () Bool)

(declare-fun b!3586796 () Bool)

(assert (=> b!3586796 (= e!2219330 (and tp!1098092 (inv!51028 (tag!6231 rule!403)) (inv!51031 (transformation!5563 rule!403)) e!2219328))))

(declare-fun b!3586797 () Bool)

(assert (=> b!3586797 (= e!2219321 e!2219309)))

(declare-fun res!1447620 () Bool)

(assert (=> b!3586797 (=> res!1447620 e!2219309)))

(declare-fun lt!1230271 () C!20830)

(declare-fun contains!7187 (List!37825 C!20830) Bool)

(declare-fun usedCharacters!777 (Regex!10322) List!37825)

(assert (=> b!3586797 (= res!1447620 (contains!7187 (usedCharacters!777 (regex!5563 rule!403)) lt!1230271))))

(declare-fun head!7483 (List!37825) C!20830)

(assert (=> b!3586797 (= lt!1230271 (head!7483 suffix!1395))))

(declare-fun b!3586798 () Bool)

(assert (=> b!3586798 (= e!2219320 e!2219318)))

(declare-fun res!1447621 () Bool)

(assert (=> b!3586798 (=> (not res!1447621) (not e!2219318))))

(declare-fun isDefined!5988 (Option!7756) Bool)

(assert (=> b!3586798 (= res!1447621 (isDefined!5988 lt!1230279))))

(declare-fun lt!1230282 () List!37825)

(declare-fun maxPrefix!2686 (LexerInterface!5152 List!37826 List!37825) Option!7756)

(assert (=> b!3586798 (= lt!1230279 (maxPrefix!2686 thiss!23823 rules!3307 lt!1230282))))

(declare-fun list!13859 (BalanceConc!22546) List!37825)

(declare-fun charsOf!3577 (Token!10492) BalanceConc!22546)

(assert (=> b!3586798 (= lt!1230282 (list!13859 (charsOf!3577 token!511)))))

(declare-fun b!3586799 () Bool)

(declare-fun res!1447633 () Bool)

(assert (=> b!3586799 (=> (not res!1447633) (not e!2219320))))

(declare-fun isEmpty!22211 (List!37826) Bool)

(assert (=> b!3586799 (= res!1447633 (not (isEmpty!22211 rules!3307)))))

(declare-fun b!3586800 () Bool)

(declare-fun res!1447625 () Bool)

(assert (=> b!3586800 (=> (not res!1447625) (not e!2219320))))

(declare-fun contains!7188 (List!37826 Rule!10926) Bool)

(assert (=> b!3586800 (= res!1447625 (contains!7188 rules!3307 anOtherTypeRule!33))))

(declare-fun res!1447616 () Bool)

(assert (=> start!332784 (=> (not res!1447616) (not e!2219320))))

(assert (=> start!332784 (= res!1447616 (is-Lexer!5150 thiss!23823))))

(assert (=> start!332784 e!2219320))

(declare-fun e!2219329 () Bool)

(assert (=> start!332784 e!2219329))

(assert (=> start!332784 e!2219325))

(assert (=> start!332784 true))

(declare-fun e!2219332 () Bool)

(declare-fun inv!51032 (Token!10492) Bool)

(assert (=> start!332784 (and (inv!51032 token!511) e!2219332)))

(assert (=> start!332784 e!2219330))

(assert (=> start!332784 e!2219314))

(declare-fun b!3586792 () Bool)

(declare-fun e!2219317 () Bool)

(declare-fun lt!1230283 () List!37825)

(declare-fun seqFromList!4116 (List!37825) BalanceConc!22546)

(assert (=> b!3586792 (= e!2219317 (= lt!1230283 (list!13859 (seqFromList!4116 (originalCharacters!6277 (_1!21929 lt!1230275))))))))

(declare-datatypes ((Unit!53698 0))(
  ( (Unit!53699) )
))
(declare-fun lt!1230267 () Unit!53698)

(declare-fun lt!1230280 () BalanceConc!22546)

(declare-fun lemmaSemiInverse!1320 (TokenValueInjection!11014 BalanceConc!22546) Unit!53698)

(assert (=> b!3586792 (= lt!1230267 (lemmaSemiInverse!1320 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))) lt!1230280))))

(declare-fun b!3586801 () Bool)

(declare-fun res!1447626 () Bool)

(assert (=> b!3586801 (=> res!1447626 e!2219317)))

(declare-fun matchR!4891 (Regex!10322 List!37825) Bool)

(assert (=> b!3586801 (= res!1447626 (not (matchR!4891 (regex!5563 (rule!8277 (_1!21929 lt!1230275))) lt!1230283)))))

(assert (=> b!3586802 (= e!2219328 (and tp!1098088 tp!1098095))))

(assert (=> b!3586803 (= e!2219319 (and tp!1098085 tp!1098084))))

(declare-fun b!3586804 () Bool)

(assert (=> b!3586804 (= e!2219326 (not e!2219321))))

(declare-fun res!1447627 () Bool)

(assert (=> b!3586804 (=> res!1447627 e!2219321)))

(assert (=> b!3586804 (= res!1447627 (not (matchR!4891 (regex!5563 rule!403) lt!1230282)))))

(declare-fun ruleValid!1828 (LexerInterface!5152 Rule!10926) Bool)

(assert (=> b!3586804 (ruleValid!1828 thiss!23823 rule!403)))

(declare-fun lt!1230276 () Unit!53698)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!983 (LexerInterface!5152 Rule!10926 List!37826) Unit!53698)

(assert (=> b!3586804 (= lt!1230276 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!983 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3586805 () Bool)

(declare-fun tp!1098089 () Bool)

(assert (=> b!3586805 (= e!2219329 (and e!2219322 tp!1098089))))

(declare-fun b!3586806 () Bool)

(declare-fun res!1447622 () Bool)

(assert (=> b!3586806 (=> (not res!1447622) (not e!2219326))))

(assert (=> b!3586806 (= res!1447622 (= (rule!8277 token!511) rule!403))))

(declare-fun b!3586807 () Bool)

(assert (=> b!3586807 (= e!2219309 e!2219317)))

(declare-fun res!1447629 () Bool)

(assert (=> b!3586807 (=> res!1447629 e!2219317)))

(declare-fun lt!1230281 () List!37825)

(declare-fun isPrefix!2926 (List!37825 List!37825) Bool)

(assert (=> b!3586807 (= res!1447629 (not (isPrefix!2926 lt!1230283 lt!1230281)))))

(declare-fun ++!9379 (List!37825 List!37825) List!37825)

(assert (=> b!3586807 (isPrefix!2926 lt!1230283 (++!9379 lt!1230283 (_2!21929 lt!1230275)))))

(declare-fun lt!1230270 () Unit!53698)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1847 (List!37825 List!37825) Unit!53698)

(assert (=> b!3586807 (= lt!1230270 (lemmaConcatTwoListThenFirstIsPrefix!1847 lt!1230283 (_2!21929 lt!1230275)))))

(assert (=> b!3586807 (= lt!1230283 (list!13859 lt!1230280))))

(assert (=> b!3586807 (= lt!1230280 (charsOf!3577 (_1!21929 lt!1230275)))))

(declare-fun e!2219316 () Bool)

(assert (=> b!3586807 e!2219316))

(declare-fun res!1447628 () Bool)

(assert (=> b!3586807 (=> (not res!1447628) (not e!2219316))))

(declare-datatypes ((Option!7757 0))(
  ( (None!7756) (Some!7756 (v!37422 Rule!10926)) )
))
(declare-fun lt!1230278 () Option!7757)

(declare-fun isDefined!5989 (Option!7757) Bool)

(assert (=> b!3586807 (= res!1447628 (isDefined!5989 lt!1230278))))

(declare-fun getRuleFromTag!1169 (LexerInterface!5152 List!37826 String!42301) Option!7757)

(assert (=> b!3586807 (= lt!1230278 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))))

(declare-fun lt!1230274 () Unit!53698)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1169 (LexerInterface!5152 List!37826 List!37825 Token!10492) Unit!53698)

(assert (=> b!3586807 (= lt!1230274 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1169 thiss!23823 rules!3307 lt!1230281 (_1!21929 lt!1230275)))))

(declare-fun lt!1230273 () Option!7756)

(assert (=> b!3586807 (= lt!1230275 (get!12148 lt!1230273))))

(declare-fun lt!1230277 () Unit!53698)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!832 (LexerInterface!5152 List!37826 List!37825 List!37825) Unit!53698)

(assert (=> b!3586807 (= lt!1230277 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!832 thiss!23823 rules!3307 lt!1230282 suffix!1395))))

(assert (=> b!3586807 (= lt!1230273 (maxPrefix!2686 thiss!23823 rules!3307 lt!1230281))))

(assert (=> b!3586807 (isPrefix!2926 lt!1230282 lt!1230281)))

(declare-fun lt!1230269 () Unit!53698)

(assert (=> b!3586807 (= lt!1230269 (lemmaConcatTwoListThenFirstIsPrefix!1847 lt!1230282 suffix!1395))))

(assert (=> b!3586807 (= lt!1230281 (++!9379 lt!1230282 suffix!1395))))

(declare-fun b!3586808 () Bool)

(assert (=> b!3586808 (= e!2219316 e!2219310)))

(declare-fun res!1447617 () Bool)

(assert (=> b!3586808 (=> (not res!1447617) (not e!2219310))))

(assert (=> b!3586808 (= res!1447617 (matchR!4891 (regex!5563 lt!1230268) (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))

(declare-fun get!12149 (Option!7757) Rule!10926)

(assert (=> b!3586808 (= lt!1230268 (get!12149 lt!1230278))))

(declare-fun b!3586809 () Bool)

(declare-fun res!1447631 () Bool)

(assert (=> b!3586809 (=> (not res!1447631) (not e!2219320))))

(assert (=> b!3586809 (= res!1447631 (contains!7188 rules!3307 rule!403))))

(assert (=> b!3586810 (= e!2219315 (and tp!1098086 tp!1098090))))

(assert (=> b!3586811 (= e!2219313 (and tp!1098087 tp!1098094))))

(declare-fun b!3586812 () Bool)

(declare-fun res!1447619 () Bool)

(assert (=> b!3586812 (=> res!1447619 e!2219309)))

(assert (=> b!3586812 (= res!1447619 (not (contains!7187 (usedCharacters!777 (regex!5563 anOtherTypeRule!33)) lt!1230271)))))

(declare-fun tp!1098093 () Bool)

(declare-fun b!3586813 () Bool)

(declare-fun inv!21 (TokenValue!5793) Bool)

(assert (=> b!3586813 (= e!2219332 (and (inv!21 (value!179007 token!511)) e!2219323 tp!1098093))))

(declare-fun b!3586814 () Bool)

(declare-fun res!1447632 () Bool)

(assert (=> b!3586814 (=> (not res!1447632) (not e!2219326))))

(assert (=> b!3586814 (= res!1447632 (isEmpty!22210 (_2!21929 lt!1230272)))))

(assert (= (and start!332784 res!1447616) b!3586799))

(assert (= (and b!3586799 res!1447633) b!3586789))

(assert (= (and b!3586789 res!1447630) b!3586809))

(assert (= (and b!3586809 res!1447631) b!3586800))

(assert (= (and b!3586800 res!1447625) b!3586787))

(assert (= (and b!3586787 res!1447618) b!3586798))

(assert (= (and b!3586798 res!1447621) b!3586785))

(assert (= (and b!3586785 res!1447624) b!3586814))

(assert (= (and b!3586814 res!1447632) b!3586806))

(assert (= (and b!3586806 res!1447622) b!3586804))

(assert (= (and b!3586804 (not res!1447627)) b!3586788))

(assert (= (and b!3586788 (not res!1447615)) b!3586797))

(assert (= (and b!3586797 (not res!1447620)) b!3586812))

(assert (= (and b!3586812 (not res!1447619)) b!3586794))

(assert (= (and b!3586794 (not res!1447623)) b!3586807))

(assert (= (and b!3586807 res!1447628) b!3586808))

(assert (= (and b!3586808 res!1447617) b!3586790))

(assert (= (and b!3586807 (not res!1447629)) b!3586801))

(assert (= (and b!3586801 (not res!1447626)) b!3586792))

(assert (= b!3586795 b!3586803))

(assert (= b!3586805 b!3586795))

(assert (= (and start!332784 (is-Cons!37702 rules!3307)) b!3586805))

(assert (= (and start!332784 (is-Cons!37701 suffix!1395)) b!3586786))

(assert (= b!3586791 b!3586810))

(assert (= b!3586813 b!3586791))

(assert (= start!332784 b!3586813))

(assert (= b!3586796 b!3586802))

(assert (= start!332784 b!3586796))

(assert (= b!3586793 b!3586811))

(assert (= start!332784 b!3586793))

(declare-fun m!4080029 () Bool)

(assert (=> b!3586800 m!4080029))

(declare-fun m!4080031 () Bool)

(assert (=> b!3586788 m!4080031))

(declare-fun m!4080033 () Bool)

(assert (=> b!3586799 m!4080033))

(declare-fun m!4080035 () Bool)

(assert (=> b!3586814 m!4080035))

(declare-fun m!4080037 () Bool)

(assert (=> b!3586797 m!4080037))

(assert (=> b!3586797 m!4080037))

(declare-fun m!4080039 () Bool)

(assert (=> b!3586797 m!4080039))

(declare-fun m!4080041 () Bool)

(assert (=> b!3586797 m!4080041))

(declare-fun m!4080043 () Bool)

(assert (=> b!3586796 m!4080043))

(declare-fun m!4080045 () Bool)

(assert (=> b!3586796 m!4080045))

(declare-fun m!4080047 () Bool)

(assert (=> b!3586808 m!4080047))

(assert (=> b!3586808 m!4080047))

(declare-fun m!4080049 () Bool)

(assert (=> b!3586808 m!4080049))

(assert (=> b!3586808 m!4080049))

(declare-fun m!4080051 () Bool)

(assert (=> b!3586808 m!4080051))

(declare-fun m!4080053 () Bool)

(assert (=> b!3586808 m!4080053))

(declare-fun m!4080055 () Bool)

(assert (=> b!3586801 m!4080055))

(declare-fun m!4080057 () Bool)

(assert (=> b!3586789 m!4080057))

(declare-fun m!4080059 () Bool)

(assert (=> b!3586791 m!4080059))

(declare-fun m!4080061 () Bool)

(assert (=> b!3586791 m!4080061))

(declare-fun m!4080063 () Bool)

(assert (=> b!3586794 m!4080063))

(declare-fun m!4080065 () Bool)

(assert (=> b!3586798 m!4080065))

(declare-fun m!4080067 () Bool)

(assert (=> b!3586798 m!4080067))

(declare-fun m!4080069 () Bool)

(assert (=> b!3586798 m!4080069))

(assert (=> b!3586798 m!4080069))

(declare-fun m!4080071 () Bool)

(assert (=> b!3586798 m!4080071))

(declare-fun m!4080073 () Bool)

(assert (=> b!3586809 m!4080073))

(declare-fun m!4080075 () Bool)

(assert (=> b!3586804 m!4080075))

(declare-fun m!4080077 () Bool)

(assert (=> b!3586804 m!4080077))

(declare-fun m!4080079 () Bool)

(assert (=> b!3586804 m!4080079))

(declare-fun m!4080081 () Bool)

(assert (=> b!3586807 m!4080081))

(declare-fun m!4080083 () Bool)

(assert (=> b!3586807 m!4080083))

(assert (=> b!3586807 m!4080047))

(declare-fun m!4080085 () Bool)

(assert (=> b!3586807 m!4080085))

(declare-fun m!4080087 () Bool)

(assert (=> b!3586807 m!4080087))

(declare-fun m!4080089 () Bool)

(assert (=> b!3586807 m!4080089))

(declare-fun m!4080091 () Bool)

(assert (=> b!3586807 m!4080091))

(declare-fun m!4080093 () Bool)

(assert (=> b!3586807 m!4080093))

(declare-fun m!4080095 () Bool)

(assert (=> b!3586807 m!4080095))

(assert (=> b!3586807 m!4080083))

(declare-fun m!4080097 () Bool)

(assert (=> b!3586807 m!4080097))

(declare-fun m!4080099 () Bool)

(assert (=> b!3586807 m!4080099))

(declare-fun m!4080101 () Bool)

(assert (=> b!3586807 m!4080101))

(declare-fun m!4080103 () Bool)

(assert (=> b!3586807 m!4080103))

(declare-fun m!4080105 () Bool)

(assert (=> b!3586807 m!4080105))

(declare-fun m!4080107 () Bool)

(assert (=> b!3586807 m!4080107))

(declare-fun m!4080109 () Bool)

(assert (=> b!3586785 m!4080109))

(declare-fun m!4080111 () Bool)

(assert (=> b!3586795 m!4080111))

(declare-fun m!4080113 () Bool)

(assert (=> b!3586795 m!4080113))

(declare-fun m!4080115 () Bool)

(assert (=> b!3586812 m!4080115))

(assert (=> b!3586812 m!4080115))

(declare-fun m!4080117 () Bool)

(assert (=> b!3586812 m!4080117))

(declare-fun m!4080119 () Bool)

(assert (=> b!3586813 m!4080119))

(declare-fun m!4080121 () Bool)

(assert (=> start!332784 m!4080121))

(declare-fun m!4080123 () Bool)

(assert (=> b!3586793 m!4080123))

(declare-fun m!4080125 () Bool)

(assert (=> b!3586793 m!4080125))

(declare-fun m!4080127 () Bool)

(assert (=> b!3586792 m!4080127))

(assert (=> b!3586792 m!4080127))

(declare-fun m!4080129 () Bool)

(assert (=> b!3586792 m!4080129))

(declare-fun m!4080131 () Bool)

(assert (=> b!3586792 m!4080131))

(push 1)

(assert (not b_next!93093))

(assert (not b!3586788))

(assert tp_is_empty!17727)

(assert (not b_next!93095))

(assert (not b!3586809))

(assert (not b!3586801))

(assert b_and!259065)

(assert (not b!3586786))

(assert (not b!3586813))

(assert b_and!259075)

(assert (not b!3586799))

(assert b_and!259063)

(assert b_and!259071)

(assert (not b!3586808))

(assert (not b_next!93083))

(assert b_and!259073)

(assert (not b!3586792))

(assert b_and!259067)

(assert (not b!3586791))

(assert (not b!3586812))

(assert (not b!3586814))

(assert (not b!3586804))

(assert (not b!3586797))

(assert (not b!3586800))

(assert (not b_next!93087))

(assert (not b_next!93091))

(assert b_and!259069)

(assert (not b_next!93089))

(assert (not b!3586793))

(assert b_and!259077)

(assert (not b!3586794))

(assert (not start!332784))

(assert (not b!3586807))

(assert (not b!3586785))

(assert (not b!3586795))

(assert (not b_next!93085))

(assert (not b!3586805))

(assert (not b!3586796))

(assert (not b_next!93081))

(assert (not b!3586789))

(assert (not b!3586798))

(check-sat)

(pop 1)

(push 1)

(assert b_and!259071)

(assert (not b_next!93093))

(assert b_and!259067)

(assert (not b_next!93095))

(assert b_and!259065)

(assert b_and!259075)

(assert b_and!259077)

(assert (not b_next!93085))

(assert b_and!259063)

(assert (not b_next!93081))

(assert (not b_next!93083))

(assert b_and!259073)

(assert (not b_next!93087))

(assert (not b_next!93091))

(assert b_and!259069)

(assert (not b_next!93089))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1057411 () Bool)

(declare-fun res!1447702 () Bool)

(declare-fun e!2219407 () Bool)

(assert (=> d!1057411 (=> (not res!1447702) (not e!2219407))))

(assert (=> d!1057411 (= res!1447702 (not (isEmpty!22210 (originalCharacters!6277 token!511))))))

(assert (=> d!1057411 (= (inv!51032 token!511) e!2219407)))

(declare-fun b!3586909 () Bool)

(declare-fun res!1447703 () Bool)

(assert (=> b!3586909 (=> (not res!1447703) (not e!2219407))))

(declare-fun dynLambda!16205 (Int TokenValue!5793) BalanceConc!22546)

(assert (=> b!3586909 (= res!1447703 (= (originalCharacters!6277 token!511) (list!13859 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511)))))))

(declare-fun b!3586910 () Bool)

(declare-fun size!28723 (List!37825) Int)

(assert (=> b!3586910 (= e!2219407 (= (size!28721 token!511) (size!28723 (originalCharacters!6277 token!511))))))

(assert (= (and d!1057411 res!1447702) b!3586909))

(assert (= (and b!3586909 res!1447703) b!3586910))

(declare-fun b_lambda!105959 () Bool)

(assert (=> (not b_lambda!105959) (not b!3586909)))

(declare-fun t!290644 () Bool)

(declare-fun tb!204581 () Bool)

(assert (=> (and b!3586810 (= (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toChars!7702 (transformation!5563 (rule!8277 token!511)))) t!290644) tb!204581))

(declare-fun b!3586915 () Bool)

(declare-fun e!2219410 () Bool)

(declare-fun tp!1098145 () Bool)

(declare-fun inv!51035 (Conc!11466) Bool)

(assert (=> b!3586915 (= e!2219410 (and (inv!51035 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511)))) tp!1098145))))

(declare-fun result!249458 () Bool)

(declare-fun inv!51036 (BalanceConc!22546) Bool)

(assert (=> tb!204581 (= result!249458 (and (inv!51036 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511))) e!2219410))))

(assert (= tb!204581 b!3586915))

(declare-fun m!4080237 () Bool)

(assert (=> b!3586915 m!4080237))

(declare-fun m!4080239 () Bool)

(assert (=> tb!204581 m!4080239))

(assert (=> b!3586909 t!290644))

(declare-fun b_and!259095 () Bool)

(assert (= b_and!259065 (and (=> t!290644 result!249458) b_and!259095)))

(declare-fun tb!204583 () Bool)

(declare-fun t!290646 () Bool)

(assert (=> (and b!3586802 (= (toChars!7702 (transformation!5563 rule!403)) (toChars!7702 (transformation!5563 (rule!8277 token!511)))) t!290646) tb!204583))

(declare-fun result!249462 () Bool)

(assert (= result!249462 result!249458))

(assert (=> b!3586909 t!290646))

(declare-fun b_and!259097 () Bool)

(assert (= b_and!259069 (and (=> t!290646 result!249462) b_and!259097)))

(declare-fun tb!204585 () Bool)

(declare-fun t!290648 () Bool)

(assert (=> (and b!3586803 (= (toChars!7702 (transformation!5563 (h!43122 rules!3307))) (toChars!7702 (transformation!5563 (rule!8277 token!511)))) t!290648) tb!204585))

(declare-fun result!249464 () Bool)

(assert (= result!249464 result!249458))

(assert (=> b!3586909 t!290648))

(declare-fun b_and!259099 () Bool)

(assert (= b_and!259073 (and (=> t!290648 result!249464) b_and!259099)))

(declare-fun tb!204587 () Bool)

(declare-fun t!290650 () Bool)

(assert (=> (and b!3586811 (= (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toChars!7702 (transformation!5563 (rule!8277 token!511)))) t!290650) tb!204587))

(declare-fun result!249466 () Bool)

(assert (= result!249466 result!249458))

(assert (=> b!3586909 t!290650))

(declare-fun b_and!259101 () Bool)

(assert (= b_and!259077 (and (=> t!290650 result!249466) b_and!259101)))

(declare-fun m!4080241 () Bool)

(assert (=> d!1057411 m!4080241))

(declare-fun m!4080243 () Bool)

(assert (=> b!3586909 m!4080243))

(assert (=> b!3586909 m!4080243))

(declare-fun m!4080245 () Bool)

(assert (=> b!3586909 m!4080245))

(declare-fun m!4080247 () Bool)

(assert (=> b!3586910 m!4080247))

(assert (=> start!332784 d!1057411))

(declare-fun d!1057413 () Bool)

(assert (=> d!1057413 (= (inv!51028 (tag!6231 (h!43122 rules!3307))) (= (mod (str.len (value!179006 (tag!6231 (h!43122 rules!3307)))) 2) 0))))

(assert (=> b!3586795 d!1057413))

(declare-fun d!1057415 () Bool)

(declare-fun res!1447709 () Bool)

(declare-fun e!2219413 () Bool)

(assert (=> d!1057415 (=> (not res!1447709) (not e!2219413))))

(declare-fun semiInverseModEq!2358 (Int Int) Bool)

(assert (=> d!1057415 (= res!1447709 (semiInverseModEq!2358 (toChars!7702 (transformation!5563 (h!43122 rules!3307))) (toValue!7843 (transformation!5563 (h!43122 rules!3307)))))))

(assert (=> d!1057415 (= (inv!51031 (transformation!5563 (h!43122 rules!3307))) e!2219413)))

(declare-fun b!3586918 () Bool)

(declare-fun equivClasses!2257 (Int Int) Bool)

(assert (=> b!3586918 (= e!2219413 (equivClasses!2257 (toChars!7702 (transformation!5563 (h!43122 rules!3307))) (toValue!7843 (transformation!5563 (h!43122 rules!3307)))))))

(assert (= (and d!1057415 res!1447709) b!3586918))

(declare-fun m!4080249 () Bool)

(assert (=> d!1057415 m!4080249))

(declare-fun m!4080251 () Bool)

(assert (=> b!3586918 m!4080251))

(assert (=> b!3586795 d!1057415))

(declare-fun d!1057417 () Bool)

(assert (=> d!1057417 (= (get!12148 lt!1230279) (v!37421 lt!1230279))))

(assert (=> b!3586785 d!1057417))

(declare-fun d!1057419 () Bool)

(assert (=> d!1057419 (= (inv!51028 (tag!6231 rule!403)) (= (mod (str.len (value!179006 (tag!6231 rule!403))) 2) 0))))

(assert (=> b!3586796 d!1057419))

(declare-fun d!1057421 () Bool)

(declare-fun res!1447710 () Bool)

(declare-fun e!2219414 () Bool)

(assert (=> d!1057421 (=> (not res!1447710) (not e!2219414))))

(assert (=> d!1057421 (= res!1447710 (semiInverseModEq!2358 (toChars!7702 (transformation!5563 rule!403)) (toValue!7843 (transformation!5563 rule!403))))))

(assert (=> d!1057421 (= (inv!51031 (transformation!5563 rule!403)) e!2219414)))

(declare-fun b!3586919 () Bool)

(assert (=> b!3586919 (= e!2219414 (equivClasses!2257 (toChars!7702 (transformation!5563 rule!403)) (toValue!7843 (transformation!5563 rule!403))))))

(assert (= (and d!1057421 res!1447710) b!3586919))

(declare-fun m!4080253 () Bool)

(assert (=> d!1057421 m!4080253))

(declare-fun m!4080255 () Bool)

(assert (=> b!3586919 m!4080255))

(assert (=> b!3586796 d!1057421))

(declare-fun d!1057423 () Bool)

(declare-fun list!13861 (Conc!11466) List!37825)

(assert (=> d!1057423 (= (list!13859 lt!1230280) (list!13861 (c!621270 lt!1230280)))))

(declare-fun bs!570060 () Bool)

(assert (= bs!570060 d!1057423))

(declare-fun m!4080257 () Bool)

(assert (=> bs!570060 m!4080257))

(assert (=> b!3586807 d!1057423))

(declare-fun b!3586932 () Bool)

(declare-fun e!2219426 () Bool)

(declare-fun e!2219423 () Bool)

(assert (=> b!3586932 (= e!2219426 e!2219423)))

(declare-fun res!1447719 () Bool)

(assert (=> b!3586932 (=> (not res!1447719) (not e!2219423))))

(declare-fun lt!1230342 () Option!7757)

(assert (=> b!3586932 (= res!1447719 (contains!7188 rules!3307 (get!12149 lt!1230342)))))

(declare-fun b!3586933 () Bool)

(declare-fun e!2219424 () Option!7757)

(assert (=> b!3586933 (= e!2219424 (Some!7756 (h!43122 rules!3307)))))

(declare-fun b!3586934 () Bool)

(declare-fun lt!1230341 () Unit!53698)

(declare-fun lt!1230343 () Unit!53698)

(assert (=> b!3586934 (= lt!1230341 lt!1230343)))

(assert (=> b!3586934 (rulesInvariant!4549 thiss!23823 (t!290639 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!491 (LexerInterface!5152 Rule!10926 List!37826) Unit!53698)

(assert (=> b!3586934 (= lt!1230343 (lemmaInvariantOnRulesThenOnTail!491 thiss!23823 (h!43122 rules!3307) (t!290639 rules!3307)))))

(declare-fun e!2219425 () Option!7757)

(assert (=> b!3586934 (= e!2219425 (getRuleFromTag!1169 thiss!23823 (t!290639 rules!3307) (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))))

(declare-fun b!3586935 () Bool)

(assert (=> b!3586935 (= e!2219423 (= (tag!6231 (get!12149 lt!1230342)) (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))))

(declare-fun d!1057425 () Bool)

(assert (=> d!1057425 e!2219426))

(declare-fun res!1447718 () Bool)

(assert (=> d!1057425 (=> res!1447718 e!2219426)))

(declare-fun isEmpty!22214 (Option!7757) Bool)

(assert (=> d!1057425 (= res!1447718 (isEmpty!22214 lt!1230342))))

(assert (=> d!1057425 (= lt!1230342 e!2219424)))

(declare-fun c!621278 () Bool)

(assert (=> d!1057425 (= c!621278 (and (is-Cons!37702 rules!3307) (= (tag!6231 (h!43122 rules!3307)) (tag!6231 (rule!8277 (_1!21929 lt!1230275))))))))

(assert (=> d!1057425 (rulesInvariant!4549 thiss!23823 rules!3307)))

(assert (=> d!1057425 (= (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275)))) lt!1230342)))

(declare-fun b!3586936 () Bool)

(assert (=> b!3586936 (= e!2219424 e!2219425)))

(declare-fun c!621279 () Bool)

(assert (=> b!3586936 (= c!621279 (and (is-Cons!37702 rules!3307) (not (= (tag!6231 (h!43122 rules!3307)) (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))))))

(declare-fun b!3586937 () Bool)

(assert (=> b!3586937 (= e!2219425 None!7756)))

(assert (= (and d!1057425 c!621278) b!3586933))

(assert (= (and d!1057425 (not c!621278)) b!3586936))

(assert (= (and b!3586936 c!621279) b!3586934))

(assert (= (and b!3586936 (not c!621279)) b!3586937))

(assert (= (and d!1057425 (not res!1447718)) b!3586932))

(assert (= (and b!3586932 res!1447719) b!3586935))

(declare-fun m!4080259 () Bool)

(assert (=> b!3586932 m!4080259))

(assert (=> b!3586932 m!4080259))

(declare-fun m!4080261 () Bool)

(assert (=> b!3586932 m!4080261))

(declare-fun m!4080263 () Bool)

(assert (=> b!3586934 m!4080263))

(declare-fun m!4080265 () Bool)

(assert (=> b!3586934 m!4080265))

(declare-fun m!4080267 () Bool)

(assert (=> b!3586934 m!4080267))

(assert (=> b!3586935 m!4080259))

(declare-fun m!4080269 () Bool)

(assert (=> d!1057425 m!4080269))

(assert (=> d!1057425 m!4080057))

(assert (=> b!3586807 d!1057425))

(declare-fun d!1057427 () Bool)

(assert (=> d!1057427 (isPrefix!2926 lt!1230283 (++!9379 lt!1230283 (_2!21929 lt!1230275)))))

(declare-fun lt!1230346 () Unit!53698)

(declare-fun choose!20865 (List!37825 List!37825) Unit!53698)

(assert (=> d!1057427 (= lt!1230346 (choose!20865 lt!1230283 (_2!21929 lt!1230275)))))

(assert (=> d!1057427 (= (lemmaConcatTwoListThenFirstIsPrefix!1847 lt!1230283 (_2!21929 lt!1230275)) lt!1230346)))

(declare-fun bs!570061 () Bool)

(assert (= bs!570061 d!1057427))

(assert (=> bs!570061 m!4080083))

(assert (=> bs!570061 m!4080083))

(assert (=> bs!570061 m!4080097))

(declare-fun m!4080271 () Bool)

(assert (=> bs!570061 m!4080271))

(assert (=> b!3586807 d!1057427))

(declare-fun d!1057429 () Bool)

(assert (=> d!1057429 (= (isDefined!5989 lt!1230278) (not (isEmpty!22214 lt!1230278)))))

(declare-fun bs!570062 () Bool)

(assert (= bs!570062 d!1057429))

(declare-fun m!4080273 () Bool)

(assert (=> bs!570062 m!4080273))

(assert (=> b!3586807 d!1057429))

(declare-fun d!1057431 () Bool)

(declare-fun e!2219429 () Bool)

(assert (=> d!1057431 e!2219429))

(declare-fun res!1447724 () Bool)

(assert (=> d!1057431 (=> (not res!1447724) (not e!2219429))))

(assert (=> d!1057431 (= res!1447724 (isDefined!5989 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275))))))))

(declare-fun lt!1230349 () Unit!53698)

(declare-fun choose!20866 (LexerInterface!5152 List!37826 List!37825 Token!10492) Unit!53698)

(assert (=> d!1057431 (= lt!1230349 (choose!20866 thiss!23823 rules!3307 lt!1230281 (_1!21929 lt!1230275)))))

(assert (=> d!1057431 (rulesInvariant!4549 thiss!23823 rules!3307)))

(assert (=> d!1057431 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1169 thiss!23823 rules!3307 lt!1230281 (_1!21929 lt!1230275)) lt!1230349)))

(declare-fun b!3586942 () Bool)

(declare-fun res!1447725 () Bool)

(assert (=> b!3586942 (=> (not res!1447725) (not e!2219429))))

(assert (=> b!3586942 (= res!1447725 (matchR!4891 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))) (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))

(declare-fun b!3586943 () Bool)

(assert (=> b!3586943 (= e!2219429 (= (rule!8277 (_1!21929 lt!1230275)) (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))))))

(assert (= (and d!1057431 res!1447724) b!3586942))

(assert (= (and b!3586942 res!1447725) b!3586943))

(assert (=> d!1057431 m!4080085))

(assert (=> d!1057431 m!4080085))

(declare-fun m!4080275 () Bool)

(assert (=> d!1057431 m!4080275))

(declare-fun m!4080277 () Bool)

(assert (=> d!1057431 m!4080277))

(assert (=> d!1057431 m!4080057))

(assert (=> b!3586942 m!4080047))

(assert (=> b!3586942 m!4080047))

(assert (=> b!3586942 m!4080049))

(assert (=> b!3586942 m!4080085))

(assert (=> b!3586942 m!4080085))

(declare-fun m!4080279 () Bool)

(assert (=> b!3586942 m!4080279))

(assert (=> b!3586942 m!4080049))

(declare-fun m!4080281 () Bool)

(assert (=> b!3586942 m!4080281))

(assert (=> b!3586943 m!4080085))

(assert (=> b!3586943 m!4080085))

(assert (=> b!3586943 m!4080279))

(assert (=> b!3586807 d!1057431))

(declare-fun b!3586954 () Bool)

(declare-fun e!2219438 () Bool)

(declare-fun tail!5558 (List!37825) List!37825)

(assert (=> b!3586954 (= e!2219438 (isPrefix!2926 (tail!5558 lt!1230282) (tail!5558 lt!1230281)))))

(declare-fun b!3586955 () Bool)

(declare-fun e!2219437 () Bool)

(assert (=> b!3586955 (= e!2219437 (>= (size!28723 lt!1230281) (size!28723 lt!1230282)))))

(declare-fun b!3586953 () Bool)

(declare-fun res!1447736 () Bool)

(assert (=> b!3586953 (=> (not res!1447736) (not e!2219438))))

(assert (=> b!3586953 (= res!1447736 (= (head!7483 lt!1230282) (head!7483 lt!1230281)))))

(declare-fun d!1057433 () Bool)

(assert (=> d!1057433 e!2219437))

(declare-fun res!1447737 () Bool)

(assert (=> d!1057433 (=> res!1447737 e!2219437)))

(declare-fun lt!1230352 () Bool)

(assert (=> d!1057433 (= res!1447737 (not lt!1230352))))

(declare-fun e!2219436 () Bool)

(assert (=> d!1057433 (= lt!1230352 e!2219436)))

(declare-fun res!1447735 () Bool)

(assert (=> d!1057433 (=> res!1447735 e!2219436)))

(assert (=> d!1057433 (= res!1447735 (is-Nil!37701 lt!1230282))))

(assert (=> d!1057433 (= (isPrefix!2926 lt!1230282 lt!1230281) lt!1230352)))

(declare-fun b!3586952 () Bool)

(assert (=> b!3586952 (= e!2219436 e!2219438)))

(declare-fun res!1447734 () Bool)

(assert (=> b!3586952 (=> (not res!1447734) (not e!2219438))))

(assert (=> b!3586952 (= res!1447734 (not (is-Nil!37701 lt!1230281)))))

(assert (= (and d!1057433 (not res!1447735)) b!3586952))

(assert (= (and b!3586952 res!1447734) b!3586953))

(assert (= (and b!3586953 res!1447736) b!3586954))

(assert (= (and d!1057433 (not res!1447737)) b!3586955))

(declare-fun m!4080283 () Bool)

(assert (=> b!3586954 m!4080283))

(declare-fun m!4080285 () Bool)

(assert (=> b!3586954 m!4080285))

(assert (=> b!3586954 m!4080283))

(assert (=> b!3586954 m!4080285))

(declare-fun m!4080287 () Bool)

(assert (=> b!3586954 m!4080287))

(declare-fun m!4080289 () Bool)

(assert (=> b!3586955 m!4080289))

(declare-fun m!4080291 () Bool)

(assert (=> b!3586955 m!4080291))

(declare-fun m!4080293 () Bool)

(assert (=> b!3586953 m!4080293))

(declare-fun m!4080295 () Bool)

(assert (=> b!3586953 m!4080295))

(assert (=> b!3586807 d!1057433))

(declare-fun b!3586966 () Bool)

(declare-fun res!1447742 () Bool)

(declare-fun e!2219443 () Bool)

(assert (=> b!3586966 (=> (not res!1447742) (not e!2219443))))

(declare-fun lt!1230355 () List!37825)

(assert (=> b!3586966 (= res!1447742 (= (size!28723 lt!1230355) (+ (size!28723 lt!1230283) (size!28723 (_2!21929 lt!1230275)))))))

(declare-fun b!3586965 () Bool)

(declare-fun e!2219444 () List!37825)

(assert (=> b!3586965 (= e!2219444 (Cons!37701 (h!43121 lt!1230283) (++!9379 (t!290638 lt!1230283) (_2!21929 lt!1230275))))))

(declare-fun b!3586964 () Bool)

(assert (=> b!3586964 (= e!2219444 (_2!21929 lt!1230275))))

(declare-fun d!1057435 () Bool)

(assert (=> d!1057435 e!2219443))

(declare-fun res!1447743 () Bool)

(assert (=> d!1057435 (=> (not res!1447743) (not e!2219443))))

(declare-fun content!5358 (List!37825) (Set C!20830))

(assert (=> d!1057435 (= res!1447743 (= (content!5358 lt!1230355) (set.union (content!5358 lt!1230283) (content!5358 (_2!21929 lt!1230275)))))))

(assert (=> d!1057435 (= lt!1230355 e!2219444)))

(declare-fun c!621282 () Bool)

(assert (=> d!1057435 (= c!621282 (is-Nil!37701 lt!1230283))))

(assert (=> d!1057435 (= (++!9379 lt!1230283 (_2!21929 lt!1230275)) lt!1230355)))

(declare-fun b!3586967 () Bool)

(assert (=> b!3586967 (= e!2219443 (or (not (= (_2!21929 lt!1230275) Nil!37701)) (= lt!1230355 lt!1230283)))))

(assert (= (and d!1057435 c!621282) b!3586964))

(assert (= (and d!1057435 (not c!621282)) b!3586965))

(assert (= (and d!1057435 res!1447743) b!3586966))

(assert (= (and b!3586966 res!1447742) b!3586967))

(declare-fun m!4080297 () Bool)

(assert (=> b!3586966 m!4080297))

(declare-fun m!4080299 () Bool)

(assert (=> b!3586966 m!4080299))

(declare-fun m!4080301 () Bool)

(assert (=> b!3586966 m!4080301))

(declare-fun m!4080303 () Bool)

(assert (=> b!3586965 m!4080303))

(declare-fun m!4080305 () Bool)

(assert (=> d!1057435 m!4080305))

(declare-fun m!4080307 () Bool)

(assert (=> d!1057435 m!4080307))

(declare-fun m!4080309 () Bool)

(assert (=> d!1057435 m!4080309))

(assert (=> b!3586807 d!1057435))

(declare-fun e!2219525 () Bool)

(declare-fun b!3587094 () Bool)

(declare-fun lt!1230419 () Token!10492)

(assert (=> b!3587094 (= e!2219525 (= (rule!8277 lt!1230419) (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419))))))))

(declare-fun b!3587095 () Bool)

(declare-fun e!2219524 () Unit!53698)

(declare-fun Unit!53703 () Unit!53698)

(assert (=> b!3587095 (= e!2219524 Unit!53703)))

(declare-fun lt!1230418 () List!37825)

(assert (=> b!3587095 (= lt!1230418 (++!9379 lt!1230282 suffix!1395))))

(declare-fun lt!1230411 () Unit!53698)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!447 (LexerInterface!5152 Rule!10926 List!37826 List!37825) Unit!53698)

(assert (=> b!3587095 (= lt!1230411 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!447 thiss!23823 (rule!8277 lt!1230419) rules!3307 lt!1230418))))

(declare-fun isEmpty!22215 (Option!7756) Bool)

(declare-fun maxPrefixOneRule!1836 (LexerInterface!5152 Rule!10926 List!37825) Option!7756)

(assert (=> b!3587095 (isEmpty!22215 (maxPrefixOneRule!1836 thiss!23823 (rule!8277 lt!1230419) lt!1230418))))

(declare-fun lt!1230404 () Unit!53698)

(assert (=> b!3587095 (= lt!1230404 lt!1230411)))

(declare-fun lt!1230406 () List!37825)

(assert (=> b!3587095 (= lt!1230406 (list!13859 (charsOf!3577 lt!1230419)))))

(declare-fun lt!1230413 () Unit!53698)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!435 (LexerInterface!5152 Rule!10926 List!37825 List!37825) Unit!53698)

(assert (=> b!3587095 (= lt!1230413 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!435 thiss!23823 (rule!8277 lt!1230419) lt!1230406 (++!9379 lt!1230282 suffix!1395)))))

(assert (=> b!3587095 (not (matchR!4891 (regex!5563 (rule!8277 lt!1230419)) lt!1230406))))

(declare-fun lt!1230415 () Unit!53698)

(assert (=> b!3587095 (= lt!1230415 lt!1230413)))

(assert (=> b!3587095 false))

(declare-fun b!3587096 () Bool)

(declare-fun Unit!53704 () Unit!53698)

(assert (=> b!3587096 (= e!2219524 Unit!53704)))

(declare-fun d!1057437 () Bool)

(assert (=> d!1057437 (isDefined!5988 (maxPrefix!2686 thiss!23823 rules!3307 (++!9379 lt!1230282 suffix!1395)))))

(declare-fun lt!1230417 () Unit!53698)

(assert (=> d!1057437 (= lt!1230417 e!2219524)))

(declare-fun c!621312 () Bool)

(assert (=> d!1057437 (= c!621312 (isEmpty!22215 (maxPrefix!2686 thiss!23823 rules!3307 (++!9379 lt!1230282 suffix!1395))))))

(declare-fun lt!1230410 () Unit!53698)

(declare-fun lt!1230407 () Unit!53698)

(assert (=> d!1057437 (= lt!1230410 lt!1230407)))

(assert (=> d!1057437 e!2219525))

(declare-fun res!1447811 () Bool)

(assert (=> d!1057437 (=> (not res!1447811) (not e!2219525))))

(assert (=> d!1057437 (= res!1447811 (isDefined!5989 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419)))))))

(assert (=> d!1057437 (= lt!1230407 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1169 thiss!23823 rules!3307 lt!1230282 lt!1230419))))

(declare-fun lt!1230416 () Unit!53698)

(declare-fun lt!1230412 () Unit!53698)

(assert (=> d!1057437 (= lt!1230416 lt!1230412)))

(declare-fun lt!1230403 () List!37825)

(assert (=> d!1057437 (isPrefix!2926 lt!1230403 (++!9379 lt!1230282 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!411 (List!37825 List!37825 List!37825) Unit!53698)

(assert (=> d!1057437 (= lt!1230412 (lemmaPrefixStaysPrefixWhenAddingToSuffix!411 lt!1230403 lt!1230282 suffix!1395))))

(assert (=> d!1057437 (= lt!1230403 (list!13859 (charsOf!3577 lt!1230419)))))

(declare-fun lt!1230414 () Unit!53698)

(declare-fun lt!1230405 () Unit!53698)

(assert (=> d!1057437 (= lt!1230414 lt!1230405)))

(declare-fun lt!1230409 () List!37825)

(declare-fun lt!1230408 () List!37825)

(assert (=> d!1057437 (isPrefix!2926 lt!1230409 (++!9379 lt!1230409 lt!1230408))))

(assert (=> d!1057437 (= lt!1230405 (lemmaConcatTwoListThenFirstIsPrefix!1847 lt!1230409 lt!1230408))))

(assert (=> d!1057437 (= lt!1230408 (_2!21929 (get!12148 (maxPrefix!2686 thiss!23823 rules!3307 lt!1230282))))))

(assert (=> d!1057437 (= lt!1230409 (list!13859 (charsOf!3577 lt!1230419)))))

(declare-datatypes ((List!37830 0))(
  ( (Nil!37706) (Cons!37706 (h!43126 Token!10492) (t!290691 List!37830)) )
))
(declare-fun head!7485 (List!37830) Token!10492)

(declare-datatypes ((IArray!22941 0))(
  ( (IArray!22942 (innerList!11528 List!37830)) )
))
(declare-datatypes ((Conc!11468 0))(
  ( (Node!11468 (left!29466 Conc!11468) (right!29796 Conc!11468) (csize!23166 Int) (cheight!11679 Int)) (Leaf!17861 (xs!14670 IArray!22941) (csize!23167 Int)) (Empty!11468) )
))
(declare-datatypes ((BalanceConc!22550 0))(
  ( (BalanceConc!22551 (c!621376 Conc!11468)) )
))
(declare-fun list!13862 (BalanceConc!22550) List!37830)

(declare-datatypes ((tuple2!37594 0))(
  ( (tuple2!37595 (_1!21931 BalanceConc!22550) (_2!21931 BalanceConc!22546)) )
))
(declare-fun lex!2443 (LexerInterface!5152 List!37826 BalanceConc!22546) tuple2!37594)

(assert (=> d!1057437 (= lt!1230419 (head!7485 (list!13862 (_1!21931 (lex!2443 thiss!23823 rules!3307 (seqFromList!4116 lt!1230282))))))))

(assert (=> d!1057437 (not (isEmpty!22211 rules!3307))))

(assert (=> d!1057437 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!832 thiss!23823 rules!3307 lt!1230282 suffix!1395) lt!1230417)))

(declare-fun b!3587093 () Bool)

(declare-fun res!1447812 () Bool)

(assert (=> b!3587093 (=> (not res!1447812) (not e!2219525))))

(assert (=> b!3587093 (= res!1447812 (matchR!4891 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419))))) (list!13859 (charsOf!3577 lt!1230419))))))

(assert (= (and d!1057437 res!1447811) b!3587093))

(assert (= (and b!3587093 res!1447812) b!3587094))

(assert (= (and d!1057437 c!621312) b!3587095))

(assert (= (and d!1057437 (not c!621312)) b!3587096))

(declare-fun m!4080383 () Bool)

(assert (=> b!3587094 m!4080383))

(assert (=> b!3587094 m!4080383))

(declare-fun m!4080385 () Bool)

(assert (=> b!3587094 m!4080385))

(declare-fun m!4080387 () Bool)

(assert (=> b!3587095 m!4080387))

(declare-fun m!4080389 () Bool)

(assert (=> b!3587095 m!4080389))

(assert (=> b!3587095 m!4080387))

(declare-fun m!4080391 () Bool)

(assert (=> b!3587095 m!4080391))

(declare-fun m!4080393 () Bool)

(assert (=> b!3587095 m!4080393))

(assert (=> b!3587095 m!4080087))

(declare-fun m!4080395 () Bool)

(assert (=> b!3587095 m!4080395))

(assert (=> b!3587095 m!4080389))

(declare-fun m!4080397 () Bool)

(assert (=> b!3587095 m!4080397))

(assert (=> b!3587095 m!4080087))

(declare-fun m!4080399 () Bool)

(assert (=> b!3587095 m!4080399))

(assert (=> d!1057437 m!4080087))

(assert (=> d!1057437 m!4080383))

(assert (=> d!1057437 m!4080387))

(declare-fun m!4080401 () Bool)

(assert (=> d!1057437 m!4080401))

(declare-fun m!4080403 () Bool)

(assert (=> d!1057437 m!4080403))

(declare-fun m!4080405 () Bool)

(assert (=> d!1057437 m!4080405))

(assert (=> d!1057437 m!4080033))

(declare-fun m!4080407 () Bool)

(assert (=> d!1057437 m!4080407))

(declare-fun m!4080409 () Bool)

(assert (=> d!1057437 m!4080409))

(assert (=> d!1057437 m!4080409))

(declare-fun m!4080411 () Bool)

(assert (=> d!1057437 m!4080411))

(declare-fun m!4080413 () Bool)

(assert (=> d!1057437 m!4080413))

(declare-fun m!4080415 () Bool)

(assert (=> d!1057437 m!4080415))

(assert (=> d!1057437 m!4080383))

(declare-fun m!4080417 () Bool)

(assert (=> d!1057437 m!4080417))

(assert (=> d!1057437 m!4080087))

(assert (=> d!1057437 m!4080401))

(assert (=> d!1057437 m!4080067))

(declare-fun m!4080419 () Bool)

(assert (=> d!1057437 m!4080419))

(declare-fun m!4080421 () Bool)

(assert (=> d!1057437 m!4080421))

(assert (=> d!1057437 m!4080387))

(assert (=> d!1057437 m!4080391))

(assert (=> d!1057437 m!4080067))

(assert (=> d!1057437 m!4080087))

(declare-fun m!4080423 () Bool)

(assert (=> d!1057437 m!4080423))

(declare-fun m!4080425 () Bool)

(assert (=> d!1057437 m!4080425))

(assert (=> d!1057437 m!4080413))

(assert (=> d!1057437 m!4080425))

(declare-fun m!4080427 () Bool)

(assert (=> d!1057437 m!4080427))

(assert (=> d!1057437 m!4080401))

(declare-fun m!4080429 () Bool)

(assert (=> d!1057437 m!4080429))

(assert (=> b!3587093 m!4080383))

(assert (=> b!3587093 m!4080383))

(assert (=> b!3587093 m!4080385))

(assert (=> b!3587093 m!4080387))

(assert (=> b!3587093 m!4080391))

(assert (=> b!3587093 m!4080391))

(declare-fun m!4080431 () Bool)

(assert (=> b!3587093 m!4080431))

(assert (=> b!3587093 m!4080387))

(assert (=> b!3586807 d!1057437))

(declare-fun b!3587099 () Bool)

(declare-fun e!2219528 () Bool)

(assert (=> b!3587099 (= e!2219528 (isPrefix!2926 (tail!5558 lt!1230283) (tail!5558 (++!9379 lt!1230283 (_2!21929 lt!1230275)))))))

(declare-fun b!3587100 () Bool)

(declare-fun e!2219527 () Bool)

(assert (=> b!3587100 (= e!2219527 (>= (size!28723 (++!9379 lt!1230283 (_2!21929 lt!1230275))) (size!28723 lt!1230283)))))

(declare-fun b!3587098 () Bool)

(declare-fun res!1447815 () Bool)

(assert (=> b!3587098 (=> (not res!1447815) (not e!2219528))))

(assert (=> b!3587098 (= res!1447815 (= (head!7483 lt!1230283) (head!7483 (++!9379 lt!1230283 (_2!21929 lt!1230275)))))))

(declare-fun d!1057469 () Bool)

(assert (=> d!1057469 e!2219527))

(declare-fun res!1447816 () Bool)

(assert (=> d!1057469 (=> res!1447816 e!2219527)))

(declare-fun lt!1230420 () Bool)

(assert (=> d!1057469 (= res!1447816 (not lt!1230420))))

(declare-fun e!2219526 () Bool)

(assert (=> d!1057469 (= lt!1230420 e!2219526)))

(declare-fun res!1447814 () Bool)

(assert (=> d!1057469 (=> res!1447814 e!2219526)))

(assert (=> d!1057469 (= res!1447814 (is-Nil!37701 lt!1230283))))

(assert (=> d!1057469 (= (isPrefix!2926 lt!1230283 (++!9379 lt!1230283 (_2!21929 lt!1230275))) lt!1230420)))

(declare-fun b!3587097 () Bool)

(assert (=> b!3587097 (= e!2219526 e!2219528)))

(declare-fun res!1447813 () Bool)

(assert (=> b!3587097 (=> (not res!1447813) (not e!2219528))))

(assert (=> b!3587097 (= res!1447813 (not (is-Nil!37701 (++!9379 lt!1230283 (_2!21929 lt!1230275)))))))

(assert (= (and d!1057469 (not res!1447814)) b!3587097))

(assert (= (and b!3587097 res!1447813) b!3587098))

(assert (= (and b!3587098 res!1447815) b!3587099))

(assert (= (and d!1057469 (not res!1447816)) b!3587100))

(declare-fun m!4080433 () Bool)

(assert (=> b!3587099 m!4080433))

(assert (=> b!3587099 m!4080083))

(declare-fun m!4080435 () Bool)

(assert (=> b!3587099 m!4080435))

(assert (=> b!3587099 m!4080433))

(assert (=> b!3587099 m!4080435))

(declare-fun m!4080437 () Bool)

(assert (=> b!3587099 m!4080437))

(assert (=> b!3587100 m!4080083))

(declare-fun m!4080439 () Bool)

(assert (=> b!3587100 m!4080439))

(assert (=> b!3587100 m!4080299))

(declare-fun m!4080441 () Bool)

(assert (=> b!3587098 m!4080441))

(assert (=> b!3587098 m!4080083))

(declare-fun m!4080443 () Bool)

(assert (=> b!3587098 m!4080443))

(assert (=> b!3586807 d!1057469))

(declare-fun d!1057471 () Bool)

(declare-fun lt!1230425 () BalanceConc!22546)

(assert (=> d!1057471 (= (list!13859 lt!1230425) (originalCharacters!6277 (_1!21929 lt!1230275)))))

(assert (=> d!1057471 (= lt!1230425 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275))))))

(assert (=> d!1057471 (= (charsOf!3577 (_1!21929 lt!1230275)) lt!1230425)))

(declare-fun b_lambda!105961 () Bool)

(assert (=> (not b_lambda!105961) (not d!1057471)))

(declare-fun tb!204589 () Bool)

(declare-fun t!290652 () Bool)

(assert (=> (and b!3586810 (= (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290652) tb!204589))

(declare-fun b!3587107 () Bool)

(declare-fun e!2219533 () Bool)

(declare-fun tp!1098146 () Bool)

(assert (=> b!3587107 (= e!2219533 (and (inv!51035 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275))))) tp!1098146))))

(declare-fun result!249468 () Bool)

(assert (=> tb!204589 (= result!249468 (and (inv!51036 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275)))) e!2219533))))

(assert (= tb!204589 b!3587107))

(declare-fun m!4080445 () Bool)

(assert (=> b!3587107 m!4080445))

(declare-fun m!4080447 () Bool)

(assert (=> tb!204589 m!4080447))

(assert (=> d!1057471 t!290652))

(declare-fun b_and!259103 () Bool)

(assert (= b_and!259095 (and (=> t!290652 result!249468) b_and!259103)))

(declare-fun tb!204591 () Bool)

(declare-fun t!290654 () Bool)

(assert (=> (and b!3586802 (= (toChars!7702 (transformation!5563 rule!403)) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290654) tb!204591))

(declare-fun result!249470 () Bool)

(assert (= result!249470 result!249468))

(assert (=> d!1057471 t!290654))

(declare-fun b_and!259105 () Bool)

(assert (= b_and!259097 (and (=> t!290654 result!249470) b_and!259105)))

(declare-fun t!290656 () Bool)

(declare-fun tb!204593 () Bool)

(assert (=> (and b!3586803 (= (toChars!7702 (transformation!5563 (h!43122 rules!3307))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290656) tb!204593))

(declare-fun result!249472 () Bool)

(assert (= result!249472 result!249468))

(assert (=> d!1057471 t!290656))

(declare-fun b_and!259107 () Bool)

(assert (= b_and!259099 (and (=> t!290656 result!249472) b_and!259107)))

(declare-fun t!290658 () Bool)

(declare-fun tb!204595 () Bool)

(assert (=> (and b!3586811 (= (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290658) tb!204595))

(declare-fun result!249474 () Bool)

(assert (= result!249474 result!249468))

(assert (=> d!1057471 t!290658))

(declare-fun b_and!259109 () Bool)

(assert (= b_and!259101 (and (=> t!290658 result!249474) b_and!259109)))

(declare-fun m!4080449 () Bool)

(assert (=> d!1057471 m!4080449))

(declare-fun m!4080451 () Bool)

(assert (=> d!1057471 m!4080451))

(assert (=> b!3586807 d!1057471))

(declare-fun b!3587154 () Bool)

(declare-fun res!1447853 () Bool)

(declare-fun e!2219558 () Bool)

(assert (=> b!3587154 (=> (not res!1447853) (not e!2219558))))

(declare-fun lt!1230451 () Option!7756)

(assert (=> b!3587154 (= res!1447853 (= (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451)))) (originalCharacters!6277 (_1!21929 (get!12148 lt!1230451)))))))

(declare-fun b!3587155 () Bool)

(declare-fun e!2219557 () Option!7756)

(declare-fun lt!1230449 () Option!7756)

(declare-fun lt!1230448 () Option!7756)

(assert (=> b!3587155 (= e!2219557 (ite (and (is-None!7755 lt!1230449) (is-None!7755 lt!1230448)) None!7755 (ite (is-None!7755 lt!1230448) lt!1230449 (ite (is-None!7755 lt!1230449) lt!1230448 (ite (>= (size!28721 (_1!21929 (v!37421 lt!1230449))) (size!28721 (_1!21929 (v!37421 lt!1230448)))) lt!1230449 lt!1230448)))))))

(declare-fun call!259704 () Option!7756)

(assert (=> b!3587155 (= lt!1230449 call!259704)))

(assert (=> b!3587155 (= lt!1230448 (maxPrefix!2686 thiss!23823 (t!290639 rules!3307) lt!1230281))))

(declare-fun bm!259699 () Bool)

(assert (=> bm!259699 (= call!259704 (maxPrefixOneRule!1836 thiss!23823 (h!43122 rules!3307) lt!1230281))))

(declare-fun b!3587157 () Bool)

(assert (=> b!3587157 (= e!2219558 (contains!7188 rules!3307 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))))

(declare-fun b!3587158 () Bool)

(declare-fun res!1447852 () Bool)

(assert (=> b!3587158 (=> (not res!1447852) (not e!2219558))))

(assert (=> b!3587158 (= res!1447852 (= (++!9379 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451)))) (_2!21929 (get!12148 lt!1230451))) lt!1230281))))

(declare-fun b!3587159 () Bool)

(declare-fun res!1447848 () Bool)

(assert (=> b!3587159 (=> (not res!1447848) (not e!2219558))))

(declare-fun apply!9073 (TokenValueInjection!11014 BalanceConc!22546) TokenValue!5793)

(assert (=> b!3587159 (= res!1447848 (= (value!179007 (_1!21929 (get!12148 lt!1230451))) (apply!9073 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))) (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230451)))))))))

(declare-fun b!3587160 () Bool)

(declare-fun res!1447850 () Bool)

(assert (=> b!3587160 (=> (not res!1447850) (not e!2219558))))

(assert (=> b!3587160 (= res!1447850 (matchR!4891 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))) (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451))))))))

(declare-fun b!3587161 () Bool)

(assert (=> b!3587161 (= e!2219557 call!259704)))

(declare-fun b!3587162 () Bool)

(declare-fun res!1447849 () Bool)

(assert (=> b!3587162 (=> (not res!1447849) (not e!2219558))))

(assert (=> b!3587162 (= res!1447849 (< (size!28723 (_2!21929 (get!12148 lt!1230451))) (size!28723 lt!1230281)))))

(declare-fun d!1057473 () Bool)

(declare-fun e!2219559 () Bool)

(assert (=> d!1057473 e!2219559))

(declare-fun res!1447851 () Bool)

(assert (=> d!1057473 (=> res!1447851 e!2219559)))

(assert (=> d!1057473 (= res!1447851 (isEmpty!22215 lt!1230451))))

(assert (=> d!1057473 (= lt!1230451 e!2219557)))

(declare-fun c!621324 () Bool)

(assert (=> d!1057473 (= c!621324 (and (is-Cons!37702 rules!3307) (is-Nil!37702 (t!290639 rules!3307))))))

(declare-fun lt!1230450 () Unit!53698)

(declare-fun lt!1230447 () Unit!53698)

(assert (=> d!1057473 (= lt!1230450 lt!1230447)))

(assert (=> d!1057473 (isPrefix!2926 lt!1230281 lt!1230281)))

(declare-fun lemmaIsPrefixRefl!1877 (List!37825 List!37825) Unit!53698)

(assert (=> d!1057473 (= lt!1230447 (lemmaIsPrefixRefl!1877 lt!1230281 lt!1230281))))

(declare-fun rulesValidInductive!1940 (LexerInterface!5152 List!37826) Bool)

(assert (=> d!1057473 (rulesValidInductive!1940 thiss!23823 rules!3307)))

(assert (=> d!1057473 (= (maxPrefix!2686 thiss!23823 rules!3307 lt!1230281) lt!1230451)))

(declare-fun b!3587156 () Bool)

(assert (=> b!3587156 (= e!2219559 e!2219558)))

(declare-fun res!1447847 () Bool)

(assert (=> b!3587156 (=> (not res!1447847) (not e!2219558))))

(assert (=> b!3587156 (= res!1447847 (isDefined!5988 lt!1230451))))

(assert (= (and d!1057473 c!621324) b!3587161))

(assert (= (and d!1057473 (not c!621324)) b!3587155))

(assert (= (or b!3587161 b!3587155) bm!259699))

(assert (= (and d!1057473 (not res!1447851)) b!3587156))

(assert (= (and b!3587156 res!1447847) b!3587154))

(assert (= (and b!3587154 res!1447853) b!3587162))

(assert (= (and b!3587162 res!1447849) b!3587158))

(assert (= (and b!3587158 res!1447852) b!3587159))

(assert (= (and b!3587159 res!1447848) b!3587160))

(assert (= (and b!3587160 res!1447850) b!3587157))

(declare-fun m!4080481 () Bool)

(assert (=> b!3587155 m!4080481))

(declare-fun m!4080483 () Bool)

(assert (=> b!3587154 m!4080483))

(declare-fun m!4080485 () Bool)

(assert (=> b!3587154 m!4080485))

(assert (=> b!3587154 m!4080485))

(declare-fun m!4080487 () Bool)

(assert (=> b!3587154 m!4080487))

(declare-fun m!4080489 () Bool)

(assert (=> b!3587156 m!4080489))

(assert (=> b!3587159 m!4080483))

(declare-fun m!4080491 () Bool)

(assert (=> b!3587159 m!4080491))

(assert (=> b!3587159 m!4080491))

(declare-fun m!4080493 () Bool)

(assert (=> b!3587159 m!4080493))

(declare-fun m!4080495 () Bool)

(assert (=> d!1057473 m!4080495))

(declare-fun m!4080497 () Bool)

(assert (=> d!1057473 m!4080497))

(declare-fun m!4080499 () Bool)

(assert (=> d!1057473 m!4080499))

(declare-fun m!4080501 () Bool)

(assert (=> d!1057473 m!4080501))

(assert (=> b!3587160 m!4080483))

(assert (=> b!3587160 m!4080485))

(assert (=> b!3587160 m!4080485))

(assert (=> b!3587160 m!4080487))

(assert (=> b!3587160 m!4080487))

(declare-fun m!4080503 () Bool)

(assert (=> b!3587160 m!4080503))

(assert (=> b!3587158 m!4080483))

(assert (=> b!3587158 m!4080485))

(assert (=> b!3587158 m!4080485))

(assert (=> b!3587158 m!4080487))

(assert (=> b!3587158 m!4080487))

(declare-fun m!4080505 () Bool)

(assert (=> b!3587158 m!4080505))

(assert (=> b!3587162 m!4080483))

(declare-fun m!4080507 () Bool)

(assert (=> b!3587162 m!4080507))

(assert (=> b!3587162 m!4080289))

(declare-fun m!4080509 () Bool)

(assert (=> bm!259699 m!4080509))

(assert (=> b!3587157 m!4080483))

(declare-fun m!4080511 () Bool)

(assert (=> b!3587157 m!4080511))

(assert (=> b!3586807 d!1057473))

(declare-fun b!3587165 () Bool)

(declare-fun res!1447854 () Bool)

(declare-fun e!2219560 () Bool)

(assert (=> b!3587165 (=> (not res!1447854) (not e!2219560))))

(declare-fun lt!1230452 () List!37825)

(assert (=> b!3587165 (= res!1447854 (= (size!28723 lt!1230452) (+ (size!28723 lt!1230282) (size!28723 suffix!1395))))))

(declare-fun b!3587164 () Bool)

(declare-fun e!2219561 () List!37825)

(assert (=> b!3587164 (= e!2219561 (Cons!37701 (h!43121 lt!1230282) (++!9379 (t!290638 lt!1230282) suffix!1395)))))

(declare-fun b!3587163 () Bool)

(assert (=> b!3587163 (= e!2219561 suffix!1395)))

(declare-fun d!1057481 () Bool)

(assert (=> d!1057481 e!2219560))

(declare-fun res!1447855 () Bool)

(assert (=> d!1057481 (=> (not res!1447855) (not e!2219560))))

(assert (=> d!1057481 (= res!1447855 (= (content!5358 lt!1230452) (set.union (content!5358 lt!1230282) (content!5358 suffix!1395))))))

(assert (=> d!1057481 (= lt!1230452 e!2219561)))

(declare-fun c!621325 () Bool)

(assert (=> d!1057481 (= c!621325 (is-Nil!37701 lt!1230282))))

(assert (=> d!1057481 (= (++!9379 lt!1230282 suffix!1395) lt!1230452)))

(declare-fun b!3587166 () Bool)

(assert (=> b!3587166 (= e!2219560 (or (not (= suffix!1395 Nil!37701)) (= lt!1230452 lt!1230282)))))

(assert (= (and d!1057481 c!621325) b!3587163))

(assert (= (and d!1057481 (not c!621325)) b!3587164))

(assert (= (and d!1057481 res!1447855) b!3587165))

(assert (= (and b!3587165 res!1447854) b!3587166))

(declare-fun m!4080513 () Bool)

(assert (=> b!3587165 m!4080513))

(assert (=> b!3587165 m!4080291))

(declare-fun m!4080515 () Bool)

(assert (=> b!3587165 m!4080515))

(declare-fun m!4080517 () Bool)

(assert (=> b!3587164 m!4080517))

(declare-fun m!4080519 () Bool)

(assert (=> d!1057481 m!4080519))

(declare-fun m!4080521 () Bool)

(assert (=> d!1057481 m!4080521))

(declare-fun m!4080523 () Bool)

(assert (=> d!1057481 m!4080523))

(assert (=> b!3586807 d!1057481))

(declare-fun d!1057483 () Bool)

(assert (=> d!1057483 (= (get!12148 lt!1230273) (v!37421 lt!1230273))))

(assert (=> b!3586807 d!1057483))

(declare-fun b!3587169 () Bool)

(declare-fun e!2219564 () Bool)

(assert (=> b!3587169 (= e!2219564 (isPrefix!2926 (tail!5558 lt!1230283) (tail!5558 lt!1230281)))))

(declare-fun b!3587170 () Bool)

(declare-fun e!2219563 () Bool)

(assert (=> b!3587170 (= e!2219563 (>= (size!28723 lt!1230281) (size!28723 lt!1230283)))))

(declare-fun b!3587168 () Bool)

(declare-fun res!1447858 () Bool)

(assert (=> b!3587168 (=> (not res!1447858) (not e!2219564))))

(assert (=> b!3587168 (= res!1447858 (= (head!7483 lt!1230283) (head!7483 lt!1230281)))))

(declare-fun d!1057485 () Bool)

(assert (=> d!1057485 e!2219563))

(declare-fun res!1447859 () Bool)

(assert (=> d!1057485 (=> res!1447859 e!2219563)))

(declare-fun lt!1230453 () Bool)

(assert (=> d!1057485 (= res!1447859 (not lt!1230453))))

(declare-fun e!2219562 () Bool)

(assert (=> d!1057485 (= lt!1230453 e!2219562)))

(declare-fun res!1447857 () Bool)

(assert (=> d!1057485 (=> res!1447857 e!2219562)))

(assert (=> d!1057485 (= res!1447857 (is-Nil!37701 lt!1230283))))

(assert (=> d!1057485 (= (isPrefix!2926 lt!1230283 lt!1230281) lt!1230453)))

(declare-fun b!3587167 () Bool)

(assert (=> b!3587167 (= e!2219562 e!2219564)))

(declare-fun res!1447856 () Bool)

(assert (=> b!3587167 (=> (not res!1447856) (not e!2219564))))

(assert (=> b!3587167 (= res!1447856 (not (is-Nil!37701 lt!1230281)))))

(assert (= (and d!1057485 (not res!1447857)) b!3587167))

(assert (= (and b!3587167 res!1447856) b!3587168))

(assert (= (and b!3587168 res!1447858) b!3587169))

(assert (= (and d!1057485 (not res!1447859)) b!3587170))

(assert (=> b!3587169 m!4080433))

(assert (=> b!3587169 m!4080285))

(assert (=> b!3587169 m!4080433))

(assert (=> b!3587169 m!4080285))

(declare-fun m!4080525 () Bool)

(assert (=> b!3587169 m!4080525))

(assert (=> b!3587170 m!4080289))

(assert (=> b!3587170 m!4080299))

(assert (=> b!3587168 m!4080441))

(assert (=> b!3587168 m!4080295))

(assert (=> b!3586807 d!1057485))

(declare-fun d!1057487 () Bool)

(assert (=> d!1057487 (isPrefix!2926 lt!1230282 (++!9379 lt!1230282 suffix!1395))))

(declare-fun lt!1230454 () Unit!53698)

(assert (=> d!1057487 (= lt!1230454 (choose!20865 lt!1230282 suffix!1395))))

(assert (=> d!1057487 (= (lemmaConcatTwoListThenFirstIsPrefix!1847 lt!1230282 suffix!1395) lt!1230454)))

(declare-fun bs!570064 () Bool)

(assert (= bs!570064 d!1057487))

(assert (=> bs!570064 m!4080087))

(assert (=> bs!570064 m!4080087))

(declare-fun m!4080527 () Bool)

(assert (=> bs!570064 m!4080527))

(declare-fun m!4080529 () Bool)

(assert (=> bs!570064 m!4080529))

(assert (=> b!3586807 d!1057487))

(declare-fun d!1057489 () Bool)

(declare-fun lt!1230459 () Bool)

(assert (=> d!1057489 (= lt!1230459 (set.member lt!1230271 (content!5358 (usedCharacters!777 (regex!5563 rule!403)))))))

(declare-fun e!2219572 () Bool)

(assert (=> d!1057489 (= lt!1230459 e!2219572)))

(declare-fun res!1447869 () Bool)

(assert (=> d!1057489 (=> (not res!1447869) (not e!2219572))))

(assert (=> d!1057489 (= res!1447869 (is-Cons!37701 (usedCharacters!777 (regex!5563 rule!403))))))

(assert (=> d!1057489 (= (contains!7187 (usedCharacters!777 (regex!5563 rule!403)) lt!1230271) lt!1230459)))

(declare-fun b!3587179 () Bool)

(declare-fun e!2219571 () Bool)

(assert (=> b!3587179 (= e!2219572 e!2219571)))

(declare-fun res!1447868 () Bool)

(assert (=> b!3587179 (=> res!1447868 e!2219571)))

(assert (=> b!3587179 (= res!1447868 (= (h!43121 (usedCharacters!777 (regex!5563 rule!403))) lt!1230271))))

(declare-fun b!3587180 () Bool)

(assert (=> b!3587180 (= e!2219571 (contains!7187 (t!290638 (usedCharacters!777 (regex!5563 rule!403))) lt!1230271))))

(assert (= (and d!1057489 res!1447869) b!3587179))

(assert (= (and b!3587179 (not res!1447868)) b!3587180))

(assert (=> d!1057489 m!4080037))

(declare-fun m!4080531 () Bool)

(assert (=> d!1057489 m!4080531))

(declare-fun m!4080533 () Bool)

(assert (=> d!1057489 m!4080533))

(declare-fun m!4080535 () Bool)

(assert (=> b!3587180 m!4080535))

(assert (=> b!3586797 d!1057489))

(declare-fun b!3587203 () Bool)

(declare-fun c!621336 () Bool)

(assert (=> b!3587203 (= c!621336 (is-Star!10322 (regex!5563 rule!403)))))

(declare-fun e!2219588 () List!37825)

(declare-fun e!2219585 () List!37825)

(assert (=> b!3587203 (= e!2219588 e!2219585)))

(declare-fun bm!259708 () Bool)

(declare-fun call!259716 () List!37825)

(declare-fun call!259715 () List!37825)

(assert (=> bm!259708 (= call!259716 call!259715)))

(declare-fun c!621337 () Bool)

(declare-fun call!259713 () List!37825)

(declare-fun call!259714 () List!37825)

(declare-fun bm!259709 () Bool)

(assert (=> bm!259709 (= call!259713 (++!9379 (ite c!621337 call!259716 call!259714) (ite c!621337 call!259714 call!259716)))))

(declare-fun b!3587205 () Bool)

(assert (=> b!3587205 (= e!2219588 (Cons!37701 (c!621269 (regex!5563 rule!403)) Nil!37701))))

(declare-fun b!3587206 () Bool)

(declare-fun e!2219586 () List!37825)

(assert (=> b!3587206 (= e!2219586 call!259713)))

(declare-fun b!3587207 () Bool)

(assert (=> b!3587207 (= e!2219585 e!2219586)))

(assert (=> b!3587207 (= c!621337 (is-Union!10322 (regex!5563 rule!403)))))

(declare-fun bm!259710 () Bool)

(assert (=> bm!259710 (= call!259715 (usedCharacters!777 (ite c!621336 (reg!10651 (regex!5563 rule!403)) (ite c!621337 (regOne!21157 (regex!5563 rule!403)) (regTwo!21156 (regex!5563 rule!403))))))))

(declare-fun b!3587208 () Bool)

(declare-fun e!2219587 () List!37825)

(assert (=> b!3587208 (= e!2219587 e!2219588)))

(declare-fun c!621334 () Bool)

(assert (=> b!3587208 (= c!621334 (is-ElementMatch!10322 (regex!5563 rule!403)))))

(declare-fun b!3587209 () Bool)

(assert (=> b!3587209 (= e!2219587 Nil!37701)))

(declare-fun b!3587204 () Bool)

(assert (=> b!3587204 (= e!2219586 call!259713)))

(declare-fun d!1057491 () Bool)

(declare-fun c!621335 () Bool)

(assert (=> d!1057491 (= c!621335 (or (is-EmptyExpr!10322 (regex!5563 rule!403)) (is-EmptyLang!10322 (regex!5563 rule!403))))))

(assert (=> d!1057491 (= (usedCharacters!777 (regex!5563 rule!403)) e!2219587)))

(declare-fun b!3587210 () Bool)

(assert (=> b!3587210 (= e!2219585 call!259715)))

(declare-fun bm!259711 () Bool)

(assert (=> bm!259711 (= call!259714 (usedCharacters!777 (ite c!621337 (regTwo!21157 (regex!5563 rule!403)) (regOne!21156 (regex!5563 rule!403)))))))

(assert (= (and d!1057491 c!621335) b!3587209))

(assert (= (and d!1057491 (not c!621335)) b!3587208))

(assert (= (and b!3587208 c!621334) b!3587205))

(assert (= (and b!3587208 (not c!621334)) b!3587203))

(assert (= (and b!3587203 c!621336) b!3587210))

(assert (= (and b!3587203 (not c!621336)) b!3587207))

(assert (= (and b!3587207 c!621337) b!3587206))

(assert (= (and b!3587207 (not c!621337)) b!3587204))

(assert (= (or b!3587206 b!3587204) bm!259708))

(assert (= (or b!3587206 b!3587204) bm!259711))

(assert (= (or b!3587206 b!3587204) bm!259709))

(assert (= (or b!3587210 bm!259708) bm!259710))

(declare-fun m!4080561 () Bool)

(assert (=> bm!259709 m!4080561))

(declare-fun m!4080563 () Bool)

(assert (=> bm!259710 m!4080563))

(declare-fun m!4080565 () Bool)

(assert (=> bm!259711 m!4080565))

(assert (=> b!3586797 d!1057491))

(declare-fun d!1057505 () Bool)

(assert (=> d!1057505 (= (head!7483 suffix!1395) (h!43121 suffix!1395))))

(assert (=> b!3586797 d!1057505))

(declare-fun b!3587239 () Bool)

(declare-fun e!2219604 () Bool)

(declare-fun e!2219605 () Bool)

(assert (=> b!3587239 (= e!2219604 e!2219605)))

(declare-fun res!1447899 () Bool)

(assert (=> b!3587239 (=> res!1447899 e!2219605)))

(declare-fun call!259719 () Bool)

(assert (=> b!3587239 (= res!1447899 call!259719)))

(declare-fun d!1057507 () Bool)

(declare-fun e!2219603 () Bool)

(assert (=> d!1057507 e!2219603))

(declare-fun c!621345 () Bool)

(assert (=> d!1057507 (= c!621345 (is-EmptyExpr!10322 (regex!5563 lt!1230268)))))

(declare-fun lt!1230468 () Bool)

(declare-fun e!2219607 () Bool)

(assert (=> d!1057507 (= lt!1230468 e!2219607)))

(declare-fun c!621346 () Bool)

(assert (=> d!1057507 (= c!621346 (isEmpty!22210 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))

(declare-fun validRegex!4716 (Regex!10322) Bool)

(assert (=> d!1057507 (validRegex!4716 (regex!5563 lt!1230268))))

(assert (=> d!1057507 (= (matchR!4891 (regex!5563 lt!1230268) (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))) lt!1230468)))

(declare-fun b!3587240 () Bool)

(declare-fun e!2219606 () Bool)

(assert (=> b!3587240 (= e!2219606 (= (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))) (c!621269 (regex!5563 lt!1230268))))))

(declare-fun b!3587241 () Bool)

(declare-fun res!1447893 () Bool)

(assert (=> b!3587241 (=> res!1447893 e!2219605)))

(assert (=> b!3587241 (= res!1447893 (not (isEmpty!22210 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))))

(declare-fun b!3587242 () Bool)

(declare-fun res!1447895 () Bool)

(assert (=> b!3587242 (=> (not res!1447895) (not e!2219606))))

(assert (=> b!3587242 (= res!1447895 (not call!259719))))

(declare-fun bm!259714 () Bool)

(assert (=> bm!259714 (= call!259719 (isEmpty!22210 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))

(declare-fun b!3587243 () Bool)

(declare-fun e!2219609 () Bool)

(assert (=> b!3587243 (= e!2219603 e!2219609)))

(declare-fun c!621344 () Bool)

(assert (=> b!3587243 (= c!621344 (is-EmptyLang!10322 (regex!5563 lt!1230268)))))

(declare-fun b!3587244 () Bool)

(assert (=> b!3587244 (= e!2219609 (not lt!1230468))))

(declare-fun b!3587245 () Bool)

(assert (=> b!3587245 (= e!2219605 (not (= (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))) (c!621269 (regex!5563 lt!1230268)))))))

(declare-fun b!3587246 () Bool)

(declare-fun res!1447892 () Bool)

(declare-fun e!2219608 () Bool)

(assert (=> b!3587246 (=> res!1447892 e!2219608)))

(assert (=> b!3587246 (= res!1447892 e!2219606)))

(declare-fun res!1447897 () Bool)

(assert (=> b!3587246 (=> (not res!1447897) (not e!2219606))))

(assert (=> b!3587246 (= res!1447897 lt!1230468)))

(declare-fun b!3587247 () Bool)

(declare-fun res!1447898 () Bool)

(assert (=> b!3587247 (=> (not res!1447898) (not e!2219606))))

(assert (=> b!3587247 (= res!1447898 (isEmpty!22210 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))))))

(declare-fun b!3587248 () Bool)

(declare-fun res!1447894 () Bool)

(assert (=> b!3587248 (=> res!1447894 e!2219608)))

(assert (=> b!3587248 (= res!1447894 (not (is-ElementMatch!10322 (regex!5563 lt!1230268))))))

(assert (=> b!3587248 (= e!2219609 e!2219608)))

(declare-fun b!3587249 () Bool)

(declare-fun derivativeStep!3109 (Regex!10322 C!20830) Regex!10322)

(assert (=> b!3587249 (= e!2219607 (matchR!4891 (derivativeStep!3109 (regex!5563 lt!1230268) (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))) (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))))))

(declare-fun b!3587250 () Bool)

(assert (=> b!3587250 (= e!2219608 e!2219604)))

(declare-fun res!1447896 () Bool)

(assert (=> b!3587250 (=> (not res!1447896) (not e!2219604))))

(assert (=> b!3587250 (= res!1447896 (not lt!1230468))))

(declare-fun b!3587251 () Bool)

(declare-fun nullable!3560 (Regex!10322) Bool)

(assert (=> b!3587251 (= e!2219607 (nullable!3560 (regex!5563 lt!1230268)))))

(declare-fun b!3587252 () Bool)

(assert (=> b!3587252 (= e!2219603 (= lt!1230468 call!259719))))

(assert (= (and d!1057507 c!621346) b!3587251))

(assert (= (and d!1057507 (not c!621346)) b!3587249))

(assert (= (and d!1057507 c!621345) b!3587252))

(assert (= (and d!1057507 (not c!621345)) b!3587243))

(assert (= (and b!3587243 c!621344) b!3587244))

(assert (= (and b!3587243 (not c!621344)) b!3587248))

(assert (= (and b!3587248 (not res!1447894)) b!3587246))

(assert (= (and b!3587246 res!1447897) b!3587242))

(assert (= (and b!3587242 res!1447895) b!3587247))

(assert (= (and b!3587247 res!1447898) b!3587240))

(assert (= (and b!3587246 (not res!1447892)) b!3587250))

(assert (= (and b!3587250 res!1447896) b!3587239))

(assert (= (and b!3587239 (not res!1447899)) b!3587241))

(assert (= (and b!3587241 (not res!1447893)) b!3587245))

(assert (= (or b!3587252 b!3587239 b!3587242) bm!259714))

(assert (=> b!3587240 m!4080049))

(declare-fun m!4080567 () Bool)

(assert (=> b!3587240 m!4080567))

(assert (=> b!3587247 m!4080049))

(declare-fun m!4080569 () Bool)

(assert (=> b!3587247 m!4080569))

(assert (=> b!3587247 m!4080569))

(declare-fun m!4080571 () Bool)

(assert (=> b!3587247 m!4080571))

(assert (=> bm!259714 m!4080049))

(declare-fun m!4080573 () Bool)

(assert (=> bm!259714 m!4080573))

(assert (=> b!3587245 m!4080049))

(assert (=> b!3587245 m!4080567))

(assert (=> b!3587241 m!4080049))

(assert (=> b!3587241 m!4080569))

(assert (=> b!3587241 m!4080569))

(assert (=> b!3587241 m!4080571))

(assert (=> b!3587249 m!4080049))

(assert (=> b!3587249 m!4080567))

(assert (=> b!3587249 m!4080567))

(declare-fun m!4080575 () Bool)

(assert (=> b!3587249 m!4080575))

(assert (=> b!3587249 m!4080049))

(assert (=> b!3587249 m!4080569))

(assert (=> b!3587249 m!4080575))

(assert (=> b!3587249 m!4080569))

(declare-fun m!4080577 () Bool)

(assert (=> b!3587249 m!4080577))

(assert (=> d!1057507 m!4080049))

(assert (=> d!1057507 m!4080573))

(declare-fun m!4080579 () Bool)

(assert (=> d!1057507 m!4080579))

(declare-fun m!4080581 () Bool)

(assert (=> b!3587251 m!4080581))

(assert (=> b!3586808 d!1057507))

(declare-fun d!1057509 () Bool)

(assert (=> d!1057509 (= (list!13859 (charsOf!3577 (_1!21929 lt!1230275))) (list!13861 (c!621270 (charsOf!3577 (_1!21929 lt!1230275)))))))

(declare-fun bs!570068 () Bool)

(assert (= bs!570068 d!1057509))

(declare-fun m!4080583 () Bool)

(assert (=> bs!570068 m!4080583))

(assert (=> b!3586808 d!1057509))

(assert (=> b!3586808 d!1057471))

(declare-fun d!1057511 () Bool)

(assert (=> d!1057511 (= (get!12149 lt!1230278) (v!37422 lt!1230278))))

(assert (=> b!3586808 d!1057511))

(declare-fun d!1057513 () Bool)

(assert (=> d!1057513 (= (isDefined!5988 lt!1230279) (not (isEmpty!22215 lt!1230279)))))

(declare-fun bs!570069 () Bool)

(assert (= bs!570069 d!1057513))

(declare-fun m!4080585 () Bool)

(assert (=> bs!570069 m!4080585))

(assert (=> b!3586798 d!1057513))

(declare-fun b!3587253 () Bool)

(declare-fun res!1447906 () Bool)

(declare-fun e!2219611 () Bool)

(assert (=> b!3587253 (=> (not res!1447906) (not e!2219611))))

(declare-fun lt!1230473 () Option!7756)

(assert (=> b!3587253 (= res!1447906 (= (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473)))) (originalCharacters!6277 (_1!21929 (get!12148 lt!1230473)))))))

(declare-fun b!3587254 () Bool)

(declare-fun e!2219610 () Option!7756)

(declare-fun lt!1230471 () Option!7756)

(declare-fun lt!1230470 () Option!7756)

(assert (=> b!3587254 (= e!2219610 (ite (and (is-None!7755 lt!1230471) (is-None!7755 lt!1230470)) None!7755 (ite (is-None!7755 lt!1230470) lt!1230471 (ite (is-None!7755 lt!1230471) lt!1230470 (ite (>= (size!28721 (_1!21929 (v!37421 lt!1230471))) (size!28721 (_1!21929 (v!37421 lt!1230470)))) lt!1230471 lt!1230470)))))))

(declare-fun call!259720 () Option!7756)

(assert (=> b!3587254 (= lt!1230471 call!259720)))

(assert (=> b!3587254 (= lt!1230470 (maxPrefix!2686 thiss!23823 (t!290639 rules!3307) lt!1230282))))

(declare-fun bm!259715 () Bool)

(assert (=> bm!259715 (= call!259720 (maxPrefixOneRule!1836 thiss!23823 (h!43122 rules!3307) lt!1230282))))

(declare-fun b!3587256 () Bool)

(assert (=> b!3587256 (= e!2219611 (contains!7188 rules!3307 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))))

(declare-fun b!3587257 () Bool)

(declare-fun res!1447905 () Bool)

(assert (=> b!3587257 (=> (not res!1447905) (not e!2219611))))

(assert (=> b!3587257 (= res!1447905 (= (++!9379 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473)))) (_2!21929 (get!12148 lt!1230473))) lt!1230282))))

(declare-fun b!3587258 () Bool)

(declare-fun res!1447901 () Bool)

(assert (=> b!3587258 (=> (not res!1447901) (not e!2219611))))

(assert (=> b!3587258 (= res!1447901 (= (value!179007 (_1!21929 (get!12148 lt!1230473))) (apply!9073 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))) (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230473)))))))))

(declare-fun b!3587259 () Bool)

(declare-fun res!1447903 () Bool)

(assert (=> b!3587259 (=> (not res!1447903) (not e!2219611))))

(assert (=> b!3587259 (= res!1447903 (matchR!4891 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))) (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473))))))))

(declare-fun b!3587260 () Bool)

(assert (=> b!3587260 (= e!2219610 call!259720)))

(declare-fun b!3587261 () Bool)

(declare-fun res!1447902 () Bool)

(assert (=> b!3587261 (=> (not res!1447902) (not e!2219611))))

(assert (=> b!3587261 (= res!1447902 (< (size!28723 (_2!21929 (get!12148 lt!1230473))) (size!28723 lt!1230282)))))

(declare-fun d!1057515 () Bool)

(declare-fun e!2219612 () Bool)

(assert (=> d!1057515 e!2219612))

(declare-fun res!1447904 () Bool)

(assert (=> d!1057515 (=> res!1447904 e!2219612)))

(assert (=> d!1057515 (= res!1447904 (isEmpty!22215 lt!1230473))))

(assert (=> d!1057515 (= lt!1230473 e!2219610)))

(declare-fun c!621347 () Bool)

(assert (=> d!1057515 (= c!621347 (and (is-Cons!37702 rules!3307) (is-Nil!37702 (t!290639 rules!3307))))))

(declare-fun lt!1230472 () Unit!53698)

(declare-fun lt!1230469 () Unit!53698)

(assert (=> d!1057515 (= lt!1230472 lt!1230469)))

(assert (=> d!1057515 (isPrefix!2926 lt!1230282 lt!1230282)))

(assert (=> d!1057515 (= lt!1230469 (lemmaIsPrefixRefl!1877 lt!1230282 lt!1230282))))

(assert (=> d!1057515 (rulesValidInductive!1940 thiss!23823 rules!3307)))

(assert (=> d!1057515 (= (maxPrefix!2686 thiss!23823 rules!3307 lt!1230282) lt!1230473)))

(declare-fun b!3587255 () Bool)

(assert (=> b!3587255 (= e!2219612 e!2219611)))

(declare-fun res!1447900 () Bool)

(assert (=> b!3587255 (=> (not res!1447900) (not e!2219611))))

(assert (=> b!3587255 (= res!1447900 (isDefined!5988 lt!1230473))))

(assert (= (and d!1057515 c!621347) b!3587260))

(assert (= (and d!1057515 (not c!621347)) b!3587254))

(assert (= (or b!3587260 b!3587254) bm!259715))

(assert (= (and d!1057515 (not res!1447904)) b!3587255))

(assert (= (and b!3587255 res!1447900) b!3587253))

(assert (= (and b!3587253 res!1447906) b!3587261))

(assert (= (and b!3587261 res!1447902) b!3587257))

(assert (= (and b!3587257 res!1447905) b!3587258))

(assert (= (and b!3587258 res!1447901) b!3587259))

(assert (= (and b!3587259 res!1447903) b!3587256))

(declare-fun m!4080587 () Bool)

(assert (=> b!3587254 m!4080587))

(declare-fun m!4080589 () Bool)

(assert (=> b!3587253 m!4080589))

(declare-fun m!4080591 () Bool)

(assert (=> b!3587253 m!4080591))

(assert (=> b!3587253 m!4080591))

(declare-fun m!4080593 () Bool)

(assert (=> b!3587253 m!4080593))

(declare-fun m!4080595 () Bool)

(assert (=> b!3587255 m!4080595))

(assert (=> b!3587258 m!4080589))

(declare-fun m!4080597 () Bool)

(assert (=> b!3587258 m!4080597))

(assert (=> b!3587258 m!4080597))

(declare-fun m!4080599 () Bool)

(assert (=> b!3587258 m!4080599))

(declare-fun m!4080601 () Bool)

(assert (=> d!1057515 m!4080601))

(declare-fun m!4080603 () Bool)

(assert (=> d!1057515 m!4080603))

(declare-fun m!4080605 () Bool)

(assert (=> d!1057515 m!4080605))

(assert (=> d!1057515 m!4080501))

(assert (=> b!3587259 m!4080589))

(assert (=> b!3587259 m!4080591))

(assert (=> b!3587259 m!4080591))

(assert (=> b!3587259 m!4080593))

(assert (=> b!3587259 m!4080593))

(declare-fun m!4080607 () Bool)

(assert (=> b!3587259 m!4080607))

(assert (=> b!3587257 m!4080589))

(assert (=> b!3587257 m!4080591))

(assert (=> b!3587257 m!4080591))

(assert (=> b!3587257 m!4080593))

(assert (=> b!3587257 m!4080593))

(declare-fun m!4080609 () Bool)

(assert (=> b!3587257 m!4080609))

(assert (=> b!3587261 m!4080589))

(declare-fun m!4080611 () Bool)

(assert (=> b!3587261 m!4080611))

(assert (=> b!3587261 m!4080291))

(declare-fun m!4080613 () Bool)

(assert (=> bm!259715 m!4080613))

(assert (=> b!3587256 m!4080589))

(declare-fun m!4080615 () Bool)

(assert (=> b!3587256 m!4080615))

(assert (=> b!3586798 d!1057515))

(declare-fun d!1057517 () Bool)

(assert (=> d!1057517 (= (list!13859 (charsOf!3577 token!511)) (list!13861 (c!621270 (charsOf!3577 token!511))))))

(declare-fun bs!570070 () Bool)

(assert (= bs!570070 d!1057517))

(declare-fun m!4080617 () Bool)

(assert (=> bs!570070 m!4080617))

(assert (=> b!3586798 d!1057517))

(declare-fun d!1057519 () Bool)

(declare-fun lt!1230474 () BalanceConc!22546)

(assert (=> d!1057519 (= (list!13859 lt!1230474) (originalCharacters!6277 token!511))))

(assert (=> d!1057519 (= lt!1230474 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511)))))

(assert (=> d!1057519 (= (charsOf!3577 token!511) lt!1230474)))

(declare-fun b_lambda!105963 () Bool)

(assert (=> (not b_lambda!105963) (not d!1057519)))

(assert (=> d!1057519 t!290644))

(declare-fun b_and!259111 () Bool)

(assert (= b_and!259103 (and (=> t!290644 result!249458) b_and!259111)))

(assert (=> d!1057519 t!290646))

(declare-fun b_and!259113 () Bool)

(assert (= b_and!259105 (and (=> t!290646 result!249462) b_and!259113)))

(assert (=> d!1057519 t!290648))

(declare-fun b_and!259115 () Bool)

(assert (= b_and!259107 (and (=> t!290648 result!249464) b_and!259115)))

(assert (=> d!1057519 t!290650))

(declare-fun b_and!259117 () Bool)

(assert (= b_and!259109 (and (=> t!290650 result!249466) b_and!259117)))

(declare-fun m!4080619 () Bool)

(assert (=> d!1057519 m!4080619))

(assert (=> d!1057519 m!4080243))

(assert (=> b!3586798 d!1057519))

(declare-fun d!1057521 () Bool)

(declare-fun lt!1230477 () Bool)

(declare-fun content!5361 (List!37826) (Set Rule!10926))

(assert (=> d!1057521 (= lt!1230477 (set.member rule!403 (content!5361 rules!3307)))))

(declare-fun e!2219617 () Bool)

(assert (=> d!1057521 (= lt!1230477 e!2219617)))

(declare-fun res!1447912 () Bool)

(assert (=> d!1057521 (=> (not res!1447912) (not e!2219617))))

(assert (=> d!1057521 (= res!1447912 (is-Cons!37702 rules!3307))))

(assert (=> d!1057521 (= (contains!7188 rules!3307 rule!403) lt!1230477)))

(declare-fun b!3587266 () Bool)

(declare-fun e!2219618 () Bool)

(assert (=> b!3587266 (= e!2219617 e!2219618)))

(declare-fun res!1447911 () Bool)

(assert (=> b!3587266 (=> res!1447911 e!2219618)))

(assert (=> b!3587266 (= res!1447911 (= (h!43122 rules!3307) rule!403))))

(declare-fun b!3587267 () Bool)

(assert (=> b!3587267 (= e!2219618 (contains!7188 (t!290639 rules!3307) rule!403))))

(assert (= (and d!1057521 res!1447912) b!3587266))

(assert (= (and b!3587266 (not res!1447911)) b!3587267))

(declare-fun m!4080621 () Bool)

(assert (=> d!1057521 m!4080621))

(declare-fun m!4080623 () Bool)

(assert (=> d!1057521 m!4080623))

(declare-fun m!4080625 () Bool)

(assert (=> b!3587267 m!4080625))

(assert (=> b!3586809 d!1057521))

(declare-fun d!1057523 () Bool)

(assert (=> d!1057523 (= (isEmpty!22210 suffix!1395) (is-Nil!37701 suffix!1395))))

(assert (=> b!3586788 d!1057523))

(declare-fun d!1057525 () Bool)

(assert (=> d!1057525 (= (isEmpty!22211 rules!3307) (is-Nil!37702 rules!3307))))

(assert (=> b!3586799 d!1057525))

(declare-fun d!1057527 () Bool)

(declare-fun res!1447919 () Bool)

(declare-fun e!2219627 () Bool)

(assert (=> d!1057527 (=> (not res!1447919) (not e!2219627))))

(declare-fun rulesValid!2117 (LexerInterface!5152 List!37826) Bool)

(assert (=> d!1057527 (= res!1447919 (rulesValid!2117 thiss!23823 rules!3307))))

(assert (=> d!1057527 (= (rulesInvariant!4549 thiss!23823 rules!3307) e!2219627)))

(declare-fun b!3587276 () Bool)

(declare-datatypes ((List!37831 0))(
  ( (Nil!37707) (Cons!37707 (h!43127 String!42301) (t!290724 List!37831)) )
))
(declare-fun noDuplicateTag!2113 (LexerInterface!5152 List!37826 List!37831) Bool)

(assert (=> b!3587276 (= e!2219627 (noDuplicateTag!2113 thiss!23823 rules!3307 Nil!37707))))

(assert (= (and d!1057527 res!1447919) b!3587276))

(declare-fun m!4080627 () Bool)

(assert (=> d!1057527 m!4080627))

(declare-fun m!4080629 () Bool)

(assert (=> b!3587276 m!4080629))

(assert (=> b!3586789 d!1057527))

(declare-fun d!1057529 () Bool)

(declare-fun lt!1230488 () Bool)

(assert (=> d!1057529 (= lt!1230488 (set.member anOtherTypeRule!33 (content!5361 rules!3307)))))

(declare-fun e!2219628 () Bool)

(assert (=> d!1057529 (= lt!1230488 e!2219628)))

(declare-fun res!1447929 () Bool)

(assert (=> d!1057529 (=> (not res!1447929) (not e!2219628))))

(assert (=> d!1057529 (= res!1447929 (is-Cons!37702 rules!3307))))

(assert (=> d!1057529 (= (contains!7188 rules!3307 anOtherTypeRule!33) lt!1230488)))

(declare-fun b!3587287 () Bool)

(declare-fun e!2219629 () Bool)

(assert (=> b!3587287 (= e!2219628 e!2219629)))

(declare-fun res!1447928 () Bool)

(assert (=> b!3587287 (=> res!1447928 e!2219629)))

(assert (=> b!3587287 (= res!1447928 (= (h!43122 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3587288 () Bool)

(assert (=> b!3587288 (= e!2219629 (contains!7188 (t!290639 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1057529 res!1447929) b!3587287))

(assert (= (and b!3587287 (not res!1447928)) b!3587288))

(assert (=> d!1057529 m!4080621))

(declare-fun m!4080631 () Bool)

(assert (=> d!1057529 m!4080631))

(declare-fun m!4080633 () Bool)

(assert (=> b!3587288 m!4080633))

(assert (=> b!3586800 d!1057529))

(declare-fun b!3587291 () Bool)

(declare-fun e!2219631 () Bool)

(declare-fun e!2219632 () Bool)

(assert (=> b!3587291 (= e!2219631 e!2219632)))

(declare-fun res!1447939 () Bool)

(assert (=> b!3587291 (=> res!1447939 e!2219632)))

(declare-fun call!259723 () Bool)

(assert (=> b!3587291 (= res!1447939 call!259723)))

(declare-fun d!1057531 () Bool)

(declare-fun e!2219630 () Bool)

(assert (=> d!1057531 e!2219630))

(declare-fun c!621351 () Bool)

(assert (=> d!1057531 (= c!621351 (is-EmptyExpr!10322 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))))))

(declare-fun lt!1230489 () Bool)

(declare-fun e!2219634 () Bool)

(assert (=> d!1057531 (= lt!1230489 e!2219634)))

(declare-fun c!621352 () Bool)

(assert (=> d!1057531 (= c!621352 (isEmpty!22210 lt!1230283))))

(assert (=> d!1057531 (validRegex!4716 (regex!5563 (rule!8277 (_1!21929 lt!1230275))))))

(assert (=> d!1057531 (= (matchR!4891 (regex!5563 (rule!8277 (_1!21929 lt!1230275))) lt!1230283) lt!1230489)))

(declare-fun b!3587292 () Bool)

(declare-fun e!2219633 () Bool)

(assert (=> b!3587292 (= e!2219633 (= (head!7483 lt!1230283) (c!621269 (regex!5563 (rule!8277 (_1!21929 lt!1230275))))))))

(declare-fun b!3587293 () Bool)

(declare-fun res!1447933 () Bool)

(assert (=> b!3587293 (=> res!1447933 e!2219632)))

(assert (=> b!3587293 (= res!1447933 (not (isEmpty!22210 (tail!5558 lt!1230283))))))

(declare-fun b!3587294 () Bool)

(declare-fun res!1447935 () Bool)

(assert (=> b!3587294 (=> (not res!1447935) (not e!2219633))))

(assert (=> b!3587294 (= res!1447935 (not call!259723))))

(declare-fun bm!259718 () Bool)

(assert (=> bm!259718 (= call!259723 (isEmpty!22210 lt!1230283))))

(declare-fun b!3587295 () Bool)

(declare-fun e!2219636 () Bool)

(assert (=> b!3587295 (= e!2219630 e!2219636)))

(declare-fun c!621350 () Bool)

(assert (=> b!3587295 (= c!621350 (is-EmptyLang!10322 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))))))

(declare-fun b!3587296 () Bool)

(assert (=> b!3587296 (= e!2219636 (not lt!1230489))))

(declare-fun b!3587297 () Bool)

(assert (=> b!3587297 (= e!2219632 (not (= (head!7483 lt!1230283) (c!621269 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))))))))

(declare-fun b!3587298 () Bool)

(declare-fun res!1447932 () Bool)

(declare-fun e!2219635 () Bool)

(assert (=> b!3587298 (=> res!1447932 e!2219635)))

(assert (=> b!3587298 (= res!1447932 e!2219633)))

(declare-fun res!1447937 () Bool)

(assert (=> b!3587298 (=> (not res!1447937) (not e!2219633))))

(assert (=> b!3587298 (= res!1447937 lt!1230489)))

(declare-fun b!3587299 () Bool)

(declare-fun res!1447938 () Bool)

(assert (=> b!3587299 (=> (not res!1447938) (not e!2219633))))

(assert (=> b!3587299 (= res!1447938 (isEmpty!22210 (tail!5558 lt!1230283)))))

(declare-fun b!3587300 () Bool)

(declare-fun res!1447934 () Bool)

(assert (=> b!3587300 (=> res!1447934 e!2219635)))

(assert (=> b!3587300 (= res!1447934 (not (is-ElementMatch!10322 (regex!5563 (rule!8277 (_1!21929 lt!1230275))))))))

(assert (=> b!3587300 (= e!2219636 e!2219635)))

(declare-fun b!3587301 () Bool)

(assert (=> b!3587301 (= e!2219634 (matchR!4891 (derivativeStep!3109 (regex!5563 (rule!8277 (_1!21929 lt!1230275))) (head!7483 lt!1230283)) (tail!5558 lt!1230283)))))

(declare-fun b!3587302 () Bool)

(assert (=> b!3587302 (= e!2219635 e!2219631)))

(declare-fun res!1447936 () Bool)

(assert (=> b!3587302 (=> (not res!1447936) (not e!2219631))))

(assert (=> b!3587302 (= res!1447936 (not lt!1230489))))

(declare-fun b!3587303 () Bool)

(assert (=> b!3587303 (= e!2219634 (nullable!3560 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))))))

(declare-fun b!3587304 () Bool)

(assert (=> b!3587304 (= e!2219630 (= lt!1230489 call!259723))))

(assert (= (and d!1057531 c!621352) b!3587303))

(assert (= (and d!1057531 (not c!621352)) b!3587301))

(assert (= (and d!1057531 c!621351) b!3587304))

(assert (= (and d!1057531 (not c!621351)) b!3587295))

(assert (= (and b!3587295 c!621350) b!3587296))

(assert (= (and b!3587295 (not c!621350)) b!3587300))

(assert (= (and b!3587300 (not res!1447934)) b!3587298))

(assert (= (and b!3587298 res!1447937) b!3587294))

(assert (= (and b!3587294 res!1447935) b!3587299))

(assert (= (and b!3587299 res!1447938) b!3587292))

(assert (= (and b!3587298 (not res!1447932)) b!3587302))

(assert (= (and b!3587302 res!1447936) b!3587291))

(assert (= (and b!3587291 (not res!1447939)) b!3587293))

(assert (= (and b!3587293 (not res!1447933)) b!3587297))

(assert (= (or b!3587304 b!3587291 b!3587294) bm!259718))

(assert (=> b!3587292 m!4080441))

(assert (=> b!3587299 m!4080433))

(assert (=> b!3587299 m!4080433))

(declare-fun m!4080635 () Bool)

(assert (=> b!3587299 m!4080635))

(declare-fun m!4080637 () Bool)

(assert (=> bm!259718 m!4080637))

(assert (=> b!3587297 m!4080441))

(assert (=> b!3587293 m!4080433))

(assert (=> b!3587293 m!4080433))

(assert (=> b!3587293 m!4080635))

(assert (=> b!3587301 m!4080441))

(assert (=> b!3587301 m!4080441))

(declare-fun m!4080639 () Bool)

(assert (=> b!3587301 m!4080639))

(assert (=> b!3587301 m!4080433))

(assert (=> b!3587301 m!4080639))

(assert (=> b!3587301 m!4080433))

(declare-fun m!4080641 () Bool)

(assert (=> b!3587301 m!4080641))

(assert (=> d!1057531 m!4080637))

(declare-fun m!4080643 () Bool)

(assert (=> d!1057531 m!4080643))

(declare-fun m!4080645 () Bool)

(assert (=> b!3587303 m!4080645))

(assert (=> b!3586801 d!1057531))

(declare-fun d!1057533 () Bool)

(declare-fun lt!1230490 () Bool)

(assert (=> d!1057533 (= lt!1230490 (set.member lt!1230271 (content!5358 (usedCharacters!777 (regex!5563 anOtherTypeRule!33)))))))

(declare-fun e!2219638 () Bool)

(assert (=> d!1057533 (= lt!1230490 e!2219638)))

(declare-fun res!1447941 () Bool)

(assert (=> d!1057533 (=> (not res!1447941) (not e!2219638))))

(assert (=> d!1057533 (= res!1447941 (is-Cons!37701 (usedCharacters!777 (regex!5563 anOtherTypeRule!33))))))

(assert (=> d!1057533 (= (contains!7187 (usedCharacters!777 (regex!5563 anOtherTypeRule!33)) lt!1230271) lt!1230490)))

(declare-fun b!3587305 () Bool)

(declare-fun e!2219637 () Bool)

(assert (=> b!3587305 (= e!2219638 e!2219637)))

(declare-fun res!1447940 () Bool)

(assert (=> b!3587305 (=> res!1447940 e!2219637)))

(assert (=> b!3587305 (= res!1447940 (= (h!43121 (usedCharacters!777 (regex!5563 anOtherTypeRule!33))) lt!1230271))))

(declare-fun b!3587306 () Bool)

(assert (=> b!3587306 (= e!2219637 (contains!7187 (t!290638 (usedCharacters!777 (regex!5563 anOtherTypeRule!33))) lt!1230271))))

(assert (= (and d!1057533 res!1447941) b!3587305))

(assert (= (and b!3587305 (not res!1447940)) b!3587306))

(assert (=> d!1057533 m!4080115))

(declare-fun m!4080647 () Bool)

(assert (=> d!1057533 m!4080647))

(declare-fun m!4080649 () Bool)

(assert (=> d!1057533 m!4080649))

(declare-fun m!4080651 () Bool)

(assert (=> b!3587306 m!4080651))

(assert (=> b!3586812 d!1057533))

(declare-fun b!3587307 () Bool)

(declare-fun c!621355 () Bool)

(assert (=> b!3587307 (= c!621355 (is-Star!10322 (regex!5563 anOtherTypeRule!33)))))

(declare-fun e!2219642 () List!37825)

(declare-fun e!2219639 () List!37825)

(assert (=> b!3587307 (= e!2219642 e!2219639)))

(declare-fun bm!259719 () Bool)

(declare-fun call!259727 () List!37825)

(declare-fun call!259726 () List!37825)

(assert (=> bm!259719 (= call!259727 call!259726)))

(declare-fun call!259725 () List!37825)

(declare-fun bm!259720 () Bool)

(declare-fun c!621356 () Bool)

(declare-fun call!259724 () List!37825)

(assert (=> bm!259720 (= call!259724 (++!9379 (ite c!621356 call!259727 call!259725) (ite c!621356 call!259725 call!259727)))))

(declare-fun b!3587309 () Bool)

(assert (=> b!3587309 (= e!2219642 (Cons!37701 (c!621269 (regex!5563 anOtherTypeRule!33)) Nil!37701))))

(declare-fun b!3587310 () Bool)

(declare-fun e!2219640 () List!37825)

(assert (=> b!3587310 (= e!2219640 call!259724)))

(declare-fun b!3587311 () Bool)

(assert (=> b!3587311 (= e!2219639 e!2219640)))

(assert (=> b!3587311 (= c!621356 (is-Union!10322 (regex!5563 anOtherTypeRule!33)))))

(declare-fun bm!259721 () Bool)

(assert (=> bm!259721 (= call!259726 (usedCharacters!777 (ite c!621355 (reg!10651 (regex!5563 anOtherTypeRule!33)) (ite c!621356 (regOne!21157 (regex!5563 anOtherTypeRule!33)) (regTwo!21156 (regex!5563 anOtherTypeRule!33))))))))

(declare-fun b!3587312 () Bool)

(declare-fun e!2219641 () List!37825)

(assert (=> b!3587312 (= e!2219641 e!2219642)))

(declare-fun c!621353 () Bool)

(assert (=> b!3587312 (= c!621353 (is-ElementMatch!10322 (regex!5563 anOtherTypeRule!33)))))

(declare-fun b!3587313 () Bool)

(assert (=> b!3587313 (= e!2219641 Nil!37701)))

(declare-fun b!3587308 () Bool)

(assert (=> b!3587308 (= e!2219640 call!259724)))

(declare-fun d!1057535 () Bool)

(declare-fun c!621354 () Bool)

(assert (=> d!1057535 (= c!621354 (or (is-EmptyExpr!10322 (regex!5563 anOtherTypeRule!33)) (is-EmptyLang!10322 (regex!5563 anOtherTypeRule!33))))))

(assert (=> d!1057535 (= (usedCharacters!777 (regex!5563 anOtherTypeRule!33)) e!2219641)))

(declare-fun b!3587314 () Bool)

(assert (=> b!3587314 (= e!2219639 call!259726)))

(declare-fun bm!259722 () Bool)

(assert (=> bm!259722 (= call!259725 (usedCharacters!777 (ite c!621356 (regTwo!21157 (regex!5563 anOtherTypeRule!33)) (regOne!21156 (regex!5563 anOtherTypeRule!33)))))))

(assert (= (and d!1057535 c!621354) b!3587313))

(assert (= (and d!1057535 (not c!621354)) b!3587312))

(assert (= (and b!3587312 c!621353) b!3587309))

(assert (= (and b!3587312 (not c!621353)) b!3587307))

(assert (= (and b!3587307 c!621355) b!3587314))

(assert (= (and b!3587307 (not c!621355)) b!3587311))

(assert (= (and b!3587311 c!621356) b!3587310))

(assert (= (and b!3587311 (not c!621356)) b!3587308))

(assert (= (or b!3587310 b!3587308) bm!259719))

(assert (= (or b!3587310 b!3587308) bm!259722))

(assert (= (or b!3587310 b!3587308) bm!259720))

(assert (= (or b!3587314 bm!259719) bm!259721))

(declare-fun m!4080653 () Bool)

(assert (=> bm!259720 m!4080653))

(declare-fun m!4080655 () Bool)

(assert (=> bm!259721 m!4080655))

(declare-fun m!4080657 () Bool)

(assert (=> bm!259722 m!4080657))

(assert (=> b!3586812 d!1057535))

(declare-fun d!1057537 () Bool)

(assert (=> d!1057537 (= (inv!51028 (tag!6231 (rule!8277 token!511))) (= (mod (str.len (value!179006 (tag!6231 (rule!8277 token!511)))) 2) 0))))

(assert (=> b!3586791 d!1057537))

(declare-fun d!1057539 () Bool)

(declare-fun res!1447942 () Bool)

(declare-fun e!2219643 () Bool)

(assert (=> d!1057539 (=> (not res!1447942) (not e!2219643))))

(assert (=> d!1057539 (= res!1447942 (semiInverseModEq!2358 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toValue!7843 (transformation!5563 (rule!8277 token!511)))))))

(assert (=> d!1057539 (= (inv!51031 (transformation!5563 (rule!8277 token!511))) e!2219643)))

(declare-fun b!3587315 () Bool)

(assert (=> b!3587315 (= e!2219643 (equivClasses!2257 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toValue!7843 (transformation!5563 (rule!8277 token!511)))))))

(assert (= (and d!1057539 res!1447942) b!3587315))

(declare-fun m!4080659 () Bool)

(assert (=> d!1057539 m!4080659))

(declare-fun m!4080661 () Bool)

(assert (=> b!3587315 m!4080661))

(assert (=> b!3586791 d!1057539))

(declare-fun b!3587335 () Bool)

(declare-fun e!2219655 () Bool)

(declare-fun inv!15 (TokenValue!5793) Bool)

(assert (=> b!3587335 (= e!2219655 (inv!15 (value!179007 token!511)))))

(declare-fun b!3587336 () Bool)

(declare-fun e!2219653 () Bool)

(declare-fun inv!16 (TokenValue!5793) Bool)

(assert (=> b!3587336 (= e!2219653 (inv!16 (value!179007 token!511)))))

(declare-fun b!3587337 () Bool)

(declare-fun res!1447952 () Bool)

(assert (=> b!3587337 (=> res!1447952 e!2219655)))

(assert (=> b!3587337 (= res!1447952 (not (is-IntegerValue!17381 (value!179007 token!511))))))

(declare-fun e!2219654 () Bool)

(assert (=> b!3587337 (= e!2219654 e!2219655)))

(declare-fun b!3587338 () Bool)

(assert (=> b!3587338 (= e!2219653 e!2219654)))

(declare-fun c!621362 () Bool)

(assert (=> b!3587338 (= c!621362 (is-IntegerValue!17380 (value!179007 token!511)))))

(declare-fun b!3587339 () Bool)

(declare-fun inv!17 (TokenValue!5793) Bool)

(assert (=> b!3587339 (= e!2219654 (inv!17 (value!179007 token!511)))))

(declare-fun d!1057541 () Bool)

(declare-fun c!621363 () Bool)

(assert (=> d!1057541 (= c!621363 (is-IntegerValue!17379 (value!179007 token!511)))))

(assert (=> d!1057541 (= (inv!21 (value!179007 token!511)) e!2219653)))

(assert (= (and d!1057541 c!621363) b!3587336))

(assert (= (and d!1057541 (not c!621363)) b!3587338))

(assert (= (and b!3587338 c!621362) b!3587339))

(assert (= (and b!3587338 (not c!621362)) b!3587337))

(assert (= (and b!3587337 (not res!1447952)) b!3587335))

(declare-fun m!4080663 () Bool)

(assert (=> b!3587335 m!4080663))

(declare-fun m!4080665 () Bool)

(assert (=> b!3587336 m!4080665))

(declare-fun m!4080667 () Bool)

(assert (=> b!3587339 m!4080667))

(assert (=> b!3586813 d!1057541))

(declare-fun d!1057543 () Bool)

(assert (=> d!1057543 (= (list!13859 (seqFromList!4116 (originalCharacters!6277 (_1!21929 lt!1230275)))) (list!13861 (c!621270 (seqFromList!4116 (originalCharacters!6277 (_1!21929 lt!1230275))))))))

(declare-fun bs!570071 () Bool)

(assert (= bs!570071 d!1057543))

(declare-fun m!4080669 () Bool)

(assert (=> bs!570071 m!4080669))

(assert (=> b!3586792 d!1057543))

(declare-fun d!1057545 () Bool)

(declare-fun fromListB!1898 (List!37825) BalanceConc!22546)

(assert (=> d!1057545 (= (seqFromList!4116 (originalCharacters!6277 (_1!21929 lt!1230275))) (fromListB!1898 (originalCharacters!6277 (_1!21929 lt!1230275))))))

(declare-fun bs!570072 () Bool)

(assert (= bs!570072 d!1057545))

(declare-fun m!4080703 () Bool)

(assert (=> bs!570072 m!4080703))

(assert (=> b!3586792 d!1057545))

(declare-fun b!3587388 () Bool)

(declare-fun e!2219682 () Bool)

(assert (=> b!3587388 (= e!2219682 true)))

(declare-fun d!1057549 () Bool)

(assert (=> d!1057549 e!2219682))

(assert (= d!1057549 b!3587388))

(declare-fun lambda!123792 () Int)

(declare-fun order!20453 () Int)

(declare-fun order!20451 () Int)

(declare-fun dynLambda!16206 (Int Int) Int)

(declare-fun dynLambda!16207 (Int Int) Int)

(assert (=> b!3587388 (< (dynLambda!16206 order!20451 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) (dynLambda!16207 order!20453 lambda!123792))))

(declare-fun order!20455 () Int)

(declare-fun dynLambda!16208 (Int Int) Int)

(assert (=> b!3587388 (< (dynLambda!16208 order!20455 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) (dynLambda!16207 order!20453 lambda!123792))))

(declare-fun dynLambda!16209 (Int BalanceConc!22546) TokenValue!5793)

(assert (=> d!1057549 (= (list!13859 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280))) (list!13859 lt!1230280))))

(declare-fun lt!1230559 () Unit!53698)

(declare-fun ForallOf!619 (Int BalanceConc!22546) Unit!53698)

(assert (=> d!1057549 (= lt!1230559 (ForallOf!619 lambda!123792 lt!1230280))))

(assert (=> d!1057549 (= (lemmaSemiInverse!1320 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))) lt!1230280) lt!1230559)))

(declare-fun b_lambda!105967 () Bool)

(assert (=> (not b_lambda!105967) (not d!1057549)))

(declare-fun t!290668 () Bool)

(declare-fun tb!204605 () Bool)

(assert (=> (and b!3586810 (= (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290668) tb!204605))

(declare-fun tp!1098150 () Bool)

(declare-fun e!2219683 () Bool)

(declare-fun b!3587389 () Bool)

(assert (=> b!3587389 (= e!2219683 (and (inv!51035 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280)))) tp!1098150))))

(declare-fun result!249486 () Bool)

(assert (=> tb!204605 (= result!249486 (and (inv!51036 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280))) e!2219683))))

(assert (= tb!204605 b!3587389))

(declare-fun m!4080797 () Bool)

(assert (=> b!3587389 m!4080797))

(declare-fun m!4080799 () Bool)

(assert (=> tb!204605 m!4080799))

(assert (=> d!1057549 t!290668))

(declare-fun b_and!259127 () Bool)

(assert (= b_and!259111 (and (=> t!290668 result!249486) b_and!259127)))

(declare-fun tb!204607 () Bool)

(declare-fun t!290670 () Bool)

(assert (=> (and b!3586802 (= (toChars!7702 (transformation!5563 rule!403)) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290670) tb!204607))

(declare-fun result!249488 () Bool)

(assert (= result!249488 result!249486))

(assert (=> d!1057549 t!290670))

(declare-fun b_and!259129 () Bool)

(assert (= b_and!259113 (and (=> t!290670 result!249488) b_and!259129)))

(declare-fun tb!204609 () Bool)

(declare-fun t!290672 () Bool)

(assert (=> (and b!3586803 (= (toChars!7702 (transformation!5563 (h!43122 rules!3307))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290672) tb!204609))

(declare-fun result!249490 () Bool)

(assert (= result!249490 result!249486))

(assert (=> d!1057549 t!290672))

(declare-fun b_and!259131 () Bool)

(assert (= b_and!259115 (and (=> t!290672 result!249490) b_and!259131)))

(declare-fun tb!204611 () Bool)

(declare-fun t!290674 () Bool)

(assert (=> (and b!3586811 (= (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290674) tb!204611))

(declare-fun result!249492 () Bool)

(assert (= result!249492 result!249486))

(assert (=> d!1057549 t!290674))

(declare-fun b_and!259133 () Bool)

(assert (= b_and!259117 (and (=> t!290674 result!249492) b_and!259133)))

(declare-fun b_lambda!105969 () Bool)

(assert (=> (not b_lambda!105969) (not d!1057549)))

(declare-fun tb!204613 () Bool)

(declare-fun t!290676 () Bool)

(assert (=> (and b!3586810 (= (toValue!7843 (transformation!5563 (rule!8277 token!511))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290676) tb!204613))

(declare-fun result!249494 () Bool)

(assert (=> tb!204613 (= result!249494 (inv!21 (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280)))))

(declare-fun m!4080801 () Bool)

(assert (=> tb!204613 m!4080801))

(assert (=> d!1057549 t!290676))

(declare-fun b_and!259135 () Bool)

(assert (= b_and!259063 (and (=> t!290676 result!249494) b_and!259135)))

(declare-fun t!290678 () Bool)

(declare-fun tb!204615 () Bool)

(assert (=> (and b!3586802 (= (toValue!7843 (transformation!5563 rule!403)) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290678) tb!204615))

(declare-fun result!249498 () Bool)

(assert (= result!249498 result!249494))

(assert (=> d!1057549 t!290678))

(declare-fun b_and!259137 () Bool)

(assert (= b_and!259067 (and (=> t!290678 result!249498) b_and!259137)))

(declare-fun t!290680 () Bool)

(declare-fun tb!204617 () Bool)

(assert (=> (and b!3586803 (= (toValue!7843 (transformation!5563 (h!43122 rules!3307))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290680) tb!204617))

(declare-fun result!249500 () Bool)

(assert (= result!249500 result!249494))

(assert (=> d!1057549 t!290680))

(declare-fun b_and!259139 () Bool)

(assert (= b_and!259071 (and (=> t!290680 result!249500) b_and!259139)))

(declare-fun t!290682 () Bool)

(declare-fun tb!204619 () Bool)

(assert (=> (and b!3586811 (= (toValue!7843 (transformation!5563 anOtherTypeRule!33)) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290682) tb!204619))

(declare-fun result!249502 () Bool)

(assert (= result!249502 result!249494))

(assert (=> d!1057549 t!290682))

(declare-fun b_and!259141 () Bool)

(assert (= b_and!259075 (and (=> t!290682 result!249502) b_and!259141)))

(assert (=> d!1057549 m!4080093))

(declare-fun m!4080803 () Bool)

(assert (=> d!1057549 m!4080803))

(declare-fun m!4080805 () Bool)

(assert (=> d!1057549 m!4080805))

(declare-fun m!4080807 () Bool)

(assert (=> d!1057549 m!4080807))

(declare-fun m!4080809 () Bool)

(assert (=> d!1057549 m!4080809))

(assert (=> d!1057549 m!4080805))

(assert (=> d!1057549 m!4080807))

(assert (=> b!3586792 d!1057549))

(declare-fun d!1057569 () Bool)

(assert (=> d!1057569 (= (isEmpty!22210 (_2!21929 lt!1230272)) (is-Nil!37701 (_2!21929 lt!1230272)))))

(assert (=> b!3586814 d!1057569))

(declare-fun d!1057571 () Bool)

(assert (=> d!1057571 (= (inv!51028 (tag!6231 anOtherTypeRule!33)) (= (mod (str.len (value!179006 (tag!6231 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3586793 d!1057571))

(declare-fun d!1057573 () Bool)

(declare-fun res!1447978 () Bool)

(declare-fun e!2219687 () Bool)

(assert (=> d!1057573 (=> (not res!1447978) (not e!2219687))))

(assert (=> d!1057573 (= res!1447978 (semiInverseModEq!2358 (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toValue!7843 (transformation!5563 anOtherTypeRule!33))))))

(assert (=> d!1057573 (= (inv!51031 (transformation!5563 anOtherTypeRule!33)) e!2219687)))

(declare-fun b!3587392 () Bool)

(assert (=> b!3587392 (= e!2219687 (equivClasses!2257 (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toValue!7843 (transformation!5563 anOtherTypeRule!33))))))

(assert (= (and d!1057573 res!1447978) b!3587392))

(declare-fun m!4080811 () Bool)

(assert (=> d!1057573 m!4080811))

(declare-fun m!4080813 () Bool)

(assert (=> b!3587392 m!4080813))

(assert (=> b!3586793 d!1057573))

(declare-fun b!3587393 () Bool)

(declare-fun e!2219689 () Bool)

(declare-fun e!2219690 () Bool)

(assert (=> b!3587393 (= e!2219689 e!2219690)))

(declare-fun res!1447986 () Bool)

(assert (=> b!3587393 (=> res!1447986 e!2219690)))

(declare-fun call!259730 () Bool)

(assert (=> b!3587393 (= res!1447986 call!259730)))

(declare-fun d!1057575 () Bool)

(declare-fun e!2219688 () Bool)

(assert (=> d!1057575 e!2219688))

(declare-fun c!621374 () Bool)

(assert (=> d!1057575 (= c!621374 (is-EmptyExpr!10322 (regex!5563 rule!403)))))

(declare-fun lt!1230560 () Bool)

(declare-fun e!2219692 () Bool)

(assert (=> d!1057575 (= lt!1230560 e!2219692)))

(declare-fun c!621375 () Bool)

(assert (=> d!1057575 (= c!621375 (isEmpty!22210 lt!1230282))))

(assert (=> d!1057575 (validRegex!4716 (regex!5563 rule!403))))

(assert (=> d!1057575 (= (matchR!4891 (regex!5563 rule!403) lt!1230282) lt!1230560)))

(declare-fun b!3587394 () Bool)

(declare-fun e!2219691 () Bool)

(assert (=> b!3587394 (= e!2219691 (= (head!7483 lt!1230282) (c!621269 (regex!5563 rule!403))))))

(declare-fun b!3587395 () Bool)

(declare-fun res!1447980 () Bool)

(assert (=> b!3587395 (=> res!1447980 e!2219690)))

(assert (=> b!3587395 (= res!1447980 (not (isEmpty!22210 (tail!5558 lt!1230282))))))

(declare-fun b!3587396 () Bool)

(declare-fun res!1447982 () Bool)

(assert (=> b!3587396 (=> (not res!1447982) (not e!2219691))))

(assert (=> b!3587396 (= res!1447982 (not call!259730))))

(declare-fun bm!259725 () Bool)

(assert (=> bm!259725 (= call!259730 (isEmpty!22210 lt!1230282))))

(declare-fun b!3587397 () Bool)

(declare-fun e!2219694 () Bool)

(assert (=> b!3587397 (= e!2219688 e!2219694)))

(declare-fun c!621373 () Bool)

(assert (=> b!3587397 (= c!621373 (is-EmptyLang!10322 (regex!5563 rule!403)))))

(declare-fun b!3587398 () Bool)

(assert (=> b!3587398 (= e!2219694 (not lt!1230560))))

(declare-fun b!3587399 () Bool)

(assert (=> b!3587399 (= e!2219690 (not (= (head!7483 lt!1230282) (c!621269 (regex!5563 rule!403)))))))

(declare-fun b!3587400 () Bool)

(declare-fun res!1447979 () Bool)

(declare-fun e!2219693 () Bool)

(assert (=> b!3587400 (=> res!1447979 e!2219693)))

(assert (=> b!3587400 (= res!1447979 e!2219691)))

(declare-fun res!1447984 () Bool)

(assert (=> b!3587400 (=> (not res!1447984) (not e!2219691))))

(assert (=> b!3587400 (= res!1447984 lt!1230560)))

(declare-fun b!3587401 () Bool)

(declare-fun res!1447985 () Bool)

(assert (=> b!3587401 (=> (not res!1447985) (not e!2219691))))

(assert (=> b!3587401 (= res!1447985 (isEmpty!22210 (tail!5558 lt!1230282)))))

(declare-fun b!3587402 () Bool)

(declare-fun res!1447981 () Bool)

(assert (=> b!3587402 (=> res!1447981 e!2219693)))

(assert (=> b!3587402 (= res!1447981 (not (is-ElementMatch!10322 (regex!5563 rule!403))))))

(assert (=> b!3587402 (= e!2219694 e!2219693)))

(declare-fun b!3587403 () Bool)

(assert (=> b!3587403 (= e!2219692 (matchR!4891 (derivativeStep!3109 (regex!5563 rule!403) (head!7483 lt!1230282)) (tail!5558 lt!1230282)))))

(declare-fun b!3587404 () Bool)

(assert (=> b!3587404 (= e!2219693 e!2219689)))

(declare-fun res!1447983 () Bool)

(assert (=> b!3587404 (=> (not res!1447983) (not e!2219689))))

(assert (=> b!3587404 (= res!1447983 (not lt!1230560))))

(declare-fun b!3587405 () Bool)

(assert (=> b!3587405 (= e!2219692 (nullable!3560 (regex!5563 rule!403)))))

(declare-fun b!3587406 () Bool)

(assert (=> b!3587406 (= e!2219688 (= lt!1230560 call!259730))))

(assert (= (and d!1057575 c!621375) b!3587405))

(assert (= (and d!1057575 (not c!621375)) b!3587403))

(assert (= (and d!1057575 c!621374) b!3587406))

(assert (= (and d!1057575 (not c!621374)) b!3587397))

(assert (= (and b!3587397 c!621373) b!3587398))

(assert (= (and b!3587397 (not c!621373)) b!3587402))

(assert (= (and b!3587402 (not res!1447981)) b!3587400))

(assert (= (and b!3587400 res!1447984) b!3587396))

(assert (= (and b!3587396 res!1447982) b!3587401))

(assert (= (and b!3587401 res!1447985) b!3587394))

(assert (= (and b!3587400 (not res!1447979)) b!3587404))

(assert (= (and b!3587404 res!1447983) b!3587393))

(assert (= (and b!3587393 (not res!1447986)) b!3587395))

(assert (= (and b!3587395 (not res!1447980)) b!3587399))

(assert (= (or b!3587406 b!3587393 b!3587396) bm!259725))

(assert (=> b!3587394 m!4080293))

(assert (=> b!3587401 m!4080283))

(assert (=> b!3587401 m!4080283))

(declare-fun m!4080815 () Bool)

(assert (=> b!3587401 m!4080815))

(declare-fun m!4080817 () Bool)

(assert (=> bm!259725 m!4080817))

(assert (=> b!3587399 m!4080293))

(assert (=> b!3587395 m!4080283))

(assert (=> b!3587395 m!4080283))

(assert (=> b!3587395 m!4080815))

(assert (=> b!3587403 m!4080293))

(assert (=> b!3587403 m!4080293))

(declare-fun m!4080819 () Bool)

(assert (=> b!3587403 m!4080819))

(assert (=> b!3587403 m!4080283))

(assert (=> b!3587403 m!4080819))

(assert (=> b!3587403 m!4080283))

(declare-fun m!4080821 () Bool)

(assert (=> b!3587403 m!4080821))

(assert (=> d!1057575 m!4080817))

(declare-fun m!4080823 () Bool)

(assert (=> d!1057575 m!4080823))

(declare-fun m!4080825 () Bool)

(assert (=> b!3587405 m!4080825))

(assert (=> b!3586804 d!1057575))

(declare-fun d!1057577 () Bool)

(declare-fun res!1447991 () Bool)

(declare-fun e!2219697 () Bool)

(assert (=> d!1057577 (=> (not res!1447991) (not e!2219697))))

(assert (=> d!1057577 (= res!1447991 (validRegex!4716 (regex!5563 rule!403)))))

(assert (=> d!1057577 (= (ruleValid!1828 thiss!23823 rule!403) e!2219697)))

(declare-fun b!3587411 () Bool)

(declare-fun res!1447992 () Bool)

(assert (=> b!3587411 (=> (not res!1447992) (not e!2219697))))

(assert (=> b!3587411 (= res!1447992 (not (nullable!3560 (regex!5563 rule!403))))))

(declare-fun b!3587412 () Bool)

(assert (=> b!3587412 (= e!2219697 (not (= (tag!6231 rule!403) (String!42302 ""))))))

(assert (= (and d!1057577 res!1447991) b!3587411))

(assert (= (and b!3587411 res!1447992) b!3587412))

(assert (=> d!1057577 m!4080823))

(assert (=> b!3587411 m!4080825))

(assert (=> b!3586804 d!1057577))

(declare-fun d!1057579 () Bool)

(assert (=> d!1057579 (ruleValid!1828 thiss!23823 rule!403)))

(declare-fun lt!1230563 () Unit!53698)

(declare-fun choose!20869 (LexerInterface!5152 Rule!10926 List!37826) Unit!53698)

(assert (=> d!1057579 (= lt!1230563 (choose!20869 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1057579 (contains!7188 rules!3307 rule!403)))

(assert (=> d!1057579 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!983 thiss!23823 rule!403 rules!3307) lt!1230563)))

(declare-fun bs!570076 () Bool)

(assert (= bs!570076 d!1057579))

(assert (=> bs!570076 m!4080077))

(declare-fun m!4080827 () Bool)

(assert (=> bs!570076 m!4080827))

(assert (=> bs!570076 m!4080073))

(assert (=> b!3586804 d!1057579))

(declare-fun d!1057581 () Bool)

(declare-fun res!1447997 () Bool)

(declare-fun e!2219702 () Bool)

(assert (=> d!1057581 (=> res!1447997 e!2219702)))

(assert (=> d!1057581 (= res!1447997 (not (is-Cons!37702 rules!3307)))))

(assert (=> d!1057581 (= (sepAndNonSepRulesDisjointChars!1733 rules!3307 rules!3307) e!2219702)))

(declare-fun b!3587417 () Bool)

(declare-fun e!2219703 () Bool)

(assert (=> b!3587417 (= e!2219702 e!2219703)))

(declare-fun res!1447998 () Bool)

(assert (=> b!3587417 (=> (not res!1447998) (not e!2219703))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!785 (Rule!10926 List!37826) Bool)

(assert (=> b!3587417 (= res!1447998 (ruleDisjointCharsFromAllFromOtherType!785 (h!43122 rules!3307) rules!3307))))

(declare-fun b!3587418 () Bool)

(assert (=> b!3587418 (= e!2219703 (sepAndNonSepRulesDisjointChars!1733 rules!3307 (t!290639 rules!3307)))))

(assert (= (and d!1057581 (not res!1447997)) b!3587417))

(assert (= (and b!3587417 res!1447998) b!3587418))

(declare-fun m!4080829 () Bool)

(assert (=> b!3587417 m!4080829))

(declare-fun m!4080831 () Bool)

(assert (=> b!3587418 m!4080831))

(assert (=> b!3586794 d!1057581))

(declare-fun e!2219706 () Bool)

(assert (=> b!3586795 (= tp!1098083 e!2219706)))

(declare-fun b!3587429 () Bool)

(assert (=> b!3587429 (= e!2219706 tp_is_empty!17727)))

(declare-fun b!3587431 () Bool)

(declare-fun tp!1098163 () Bool)

(assert (=> b!3587431 (= e!2219706 tp!1098163)))

(declare-fun b!3587432 () Bool)

(declare-fun tp!1098164 () Bool)

(declare-fun tp!1098161 () Bool)

(assert (=> b!3587432 (= e!2219706 (and tp!1098164 tp!1098161))))

(declare-fun b!3587430 () Bool)

(declare-fun tp!1098162 () Bool)

(declare-fun tp!1098165 () Bool)

(assert (=> b!3587430 (= e!2219706 (and tp!1098162 tp!1098165))))

(assert (= (and b!3586795 (is-ElementMatch!10322 (regex!5563 (h!43122 rules!3307)))) b!3587429))

(assert (= (and b!3586795 (is-Concat!16116 (regex!5563 (h!43122 rules!3307)))) b!3587430))

(assert (= (and b!3586795 (is-Star!10322 (regex!5563 (h!43122 rules!3307)))) b!3587431))

(assert (= (and b!3586795 (is-Union!10322 (regex!5563 (h!43122 rules!3307)))) b!3587432))

(declare-fun e!2219707 () Bool)

(assert (=> b!3586796 (= tp!1098092 e!2219707)))

(declare-fun b!3587433 () Bool)

(assert (=> b!3587433 (= e!2219707 tp_is_empty!17727)))

(declare-fun b!3587435 () Bool)

(declare-fun tp!1098168 () Bool)

(assert (=> b!3587435 (= e!2219707 tp!1098168)))

(declare-fun b!3587436 () Bool)

(declare-fun tp!1098169 () Bool)

(declare-fun tp!1098166 () Bool)

(assert (=> b!3587436 (= e!2219707 (and tp!1098169 tp!1098166))))

(declare-fun b!3587434 () Bool)

(declare-fun tp!1098167 () Bool)

(declare-fun tp!1098170 () Bool)

(assert (=> b!3587434 (= e!2219707 (and tp!1098167 tp!1098170))))

(assert (= (and b!3586796 (is-ElementMatch!10322 (regex!5563 rule!403))) b!3587433))

(assert (= (and b!3586796 (is-Concat!16116 (regex!5563 rule!403))) b!3587434))

(assert (= (and b!3586796 (is-Star!10322 (regex!5563 rule!403))) b!3587435))

(assert (= (and b!3586796 (is-Union!10322 (regex!5563 rule!403))) b!3587436))

(declare-fun e!2219708 () Bool)

(assert (=> b!3586791 (= tp!1098091 e!2219708)))

(declare-fun b!3587437 () Bool)

(assert (=> b!3587437 (= e!2219708 tp_is_empty!17727)))

(declare-fun b!3587439 () Bool)

(declare-fun tp!1098173 () Bool)

(assert (=> b!3587439 (= e!2219708 tp!1098173)))

(declare-fun b!3587440 () Bool)

(declare-fun tp!1098174 () Bool)

(declare-fun tp!1098171 () Bool)

(assert (=> b!3587440 (= e!2219708 (and tp!1098174 tp!1098171))))

(declare-fun b!3587438 () Bool)

(declare-fun tp!1098172 () Bool)

(declare-fun tp!1098175 () Bool)

(assert (=> b!3587438 (= e!2219708 (and tp!1098172 tp!1098175))))

(assert (= (and b!3586791 (is-ElementMatch!10322 (regex!5563 (rule!8277 token!511)))) b!3587437))

(assert (= (and b!3586791 (is-Concat!16116 (regex!5563 (rule!8277 token!511)))) b!3587438))

(assert (= (and b!3586791 (is-Star!10322 (regex!5563 (rule!8277 token!511)))) b!3587439))

(assert (= (and b!3586791 (is-Union!10322 (regex!5563 (rule!8277 token!511)))) b!3587440))

(declare-fun b!3587445 () Bool)

(declare-fun e!2219711 () Bool)

(declare-fun tp!1098178 () Bool)

(assert (=> b!3587445 (= e!2219711 (and tp_is_empty!17727 tp!1098178))))

(assert (=> b!3586786 (= tp!1098097 e!2219711)))

(assert (= (and b!3586786 (is-Cons!37701 (t!290638 suffix!1395))) b!3587445))

(declare-fun b!3587446 () Bool)

(declare-fun e!2219712 () Bool)

(declare-fun tp!1098179 () Bool)

(assert (=> b!3587446 (= e!2219712 (and tp_is_empty!17727 tp!1098179))))

(assert (=> b!3586813 (= tp!1098093 e!2219712)))

(assert (= (and b!3586813 (is-Cons!37701 (originalCharacters!6277 token!511))) b!3587446))

(declare-fun e!2219713 () Bool)

(assert (=> b!3586793 (= tp!1098096 e!2219713)))

(declare-fun b!3587447 () Bool)

(assert (=> b!3587447 (= e!2219713 tp_is_empty!17727)))

(declare-fun b!3587449 () Bool)

(declare-fun tp!1098182 () Bool)

(assert (=> b!3587449 (= e!2219713 tp!1098182)))

(declare-fun b!3587450 () Bool)

(declare-fun tp!1098183 () Bool)

(declare-fun tp!1098180 () Bool)

(assert (=> b!3587450 (= e!2219713 (and tp!1098183 tp!1098180))))

(declare-fun b!3587448 () Bool)

(declare-fun tp!1098181 () Bool)

(declare-fun tp!1098184 () Bool)

(assert (=> b!3587448 (= e!2219713 (and tp!1098181 tp!1098184))))

(assert (= (and b!3586793 (is-ElementMatch!10322 (regex!5563 anOtherTypeRule!33))) b!3587447))

(assert (= (and b!3586793 (is-Concat!16116 (regex!5563 anOtherTypeRule!33))) b!3587448))

(assert (= (and b!3586793 (is-Star!10322 (regex!5563 anOtherTypeRule!33))) b!3587449))

(assert (= (and b!3586793 (is-Union!10322 (regex!5563 anOtherTypeRule!33))) b!3587450))

(declare-fun b!3587461 () Bool)

(declare-fun b_free!92409 () Bool)

(declare-fun b_next!93113 () Bool)

(assert (=> b!3587461 (= b_free!92409 (not b_next!93113))))

(declare-fun tb!204621 () Bool)

(declare-fun t!290684 () Bool)

(assert (=> (and b!3587461 (= (toValue!7843 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290684) tb!204621))

(declare-fun result!249510 () Bool)

(assert (= result!249510 result!249494))

(assert (=> d!1057549 t!290684))

(declare-fun tp!1098195 () Bool)

(declare-fun b_and!259143 () Bool)

(assert (=> b!3587461 (= tp!1098195 (and (=> t!290684 result!249510) b_and!259143))))

(declare-fun b_free!92411 () Bool)

(declare-fun b_next!93115 () Bool)

(assert (=> b!3587461 (= b_free!92411 (not b_next!93115))))

(declare-fun t!290686 () Bool)

(declare-fun tb!204623 () Bool)

(assert (=> (and b!3587461 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toChars!7702 (transformation!5563 (rule!8277 token!511)))) t!290686) tb!204623))

(declare-fun result!249512 () Bool)

(assert (= result!249512 result!249458))

(assert (=> b!3586909 t!290686))

(declare-fun t!290688 () Bool)

(declare-fun tb!204625 () Bool)

(assert (=> (and b!3587461 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290688) tb!204625))

(declare-fun result!249514 () Bool)

(assert (= result!249514 result!249468))

(assert (=> d!1057471 t!290688))

(assert (=> d!1057519 t!290686))

(declare-fun t!290690 () Bool)

(declare-fun tb!204627 () Bool)

(assert (=> (and b!3587461 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290690) tb!204627))

(declare-fun result!249516 () Bool)

(assert (= result!249516 result!249486))

(assert (=> d!1057549 t!290690))

(declare-fun b_and!259145 () Bool)

(declare-fun tp!1098193 () Bool)

(assert (=> b!3587461 (= tp!1098193 (and (=> t!290686 result!249512) (=> t!290688 result!249514) (=> t!290690 result!249516) b_and!259145))))

(declare-fun e!2219723 () Bool)

(assert (=> b!3587461 (= e!2219723 (and tp!1098195 tp!1098193))))

(declare-fun b!3587460 () Bool)

(declare-fun tp!1098194 () Bool)

(declare-fun e!2219725 () Bool)

(assert (=> b!3587460 (= e!2219725 (and tp!1098194 (inv!51028 (tag!6231 (h!43122 (t!290639 rules!3307)))) (inv!51031 (transformation!5563 (h!43122 (t!290639 rules!3307)))) e!2219723))))

(declare-fun b!3587459 () Bool)

(declare-fun e!2219724 () Bool)

(declare-fun tp!1098196 () Bool)

(assert (=> b!3587459 (= e!2219724 (and e!2219725 tp!1098196))))

(assert (=> b!3586805 (= tp!1098089 e!2219724)))

(assert (= b!3587460 b!3587461))

(assert (= b!3587459 b!3587460))

(assert (= (and b!3586805 (is-Cons!37702 (t!290639 rules!3307))) b!3587459))

(declare-fun m!4080833 () Bool)

(assert (=> b!3587460 m!4080833))

(declare-fun m!4080835 () Bool)

(assert (=> b!3587460 m!4080835))

(declare-fun b_lambda!105971 () Bool)

(assert (= b_lambda!105959 (or (and b!3587461 b_free!92411 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toChars!7702 (transformation!5563 (rule!8277 token!511))))) (and b!3586802 b_free!92383 (= (toChars!7702 (transformation!5563 rule!403)) (toChars!7702 (transformation!5563 (rule!8277 token!511))))) (and b!3586803 b_free!92387 (= (toChars!7702 (transformation!5563 (h!43122 rules!3307))) (toChars!7702 (transformation!5563 (rule!8277 token!511))))) (and b!3586810 b_free!92379) (and b!3586811 b_free!92391 (= (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toChars!7702 (transformation!5563 (rule!8277 token!511))))) b_lambda!105971)))

(declare-fun b_lambda!105973 () Bool)

(assert (= b_lambda!105963 (or (and b!3587461 b_free!92411 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toChars!7702 (transformation!5563 (rule!8277 token!511))))) (and b!3586802 b_free!92383 (= (toChars!7702 (transformation!5563 rule!403)) (toChars!7702 (transformation!5563 (rule!8277 token!511))))) (and b!3586803 b_free!92387 (= (toChars!7702 (transformation!5563 (h!43122 rules!3307))) (toChars!7702 (transformation!5563 (rule!8277 token!511))))) (and b!3586810 b_free!92379) (and b!3586811 b_free!92391 (= (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toChars!7702 (transformation!5563 (rule!8277 token!511))))) b_lambda!105973)))

(push 1)

(assert (not b!3587392))

(assert (not bm!259699))

(assert (not b!3587303))

(assert (not b!3587259))

(assert (not b!3587169))

(assert (not b!3587440))

(assert (not b!3587430))

(assert b_and!259137)

(assert (not d!1057431))

(assert (not b!3587405))

(assert b_and!259131)

(assert (not d!1057577))

(assert (not b_next!93093))

(assert (not b!3587431))

(assert (not b!3587257))

(assert (not b!3587156))

(assert (not b!3587276))

(assert (not d!1057487))

(assert (not b_lambda!105973))

(assert (not b!3587335))

(assert (not b!3587394))

(assert (not b_next!93083))

(assert (not b!3586909))

(assert (not d!1057411))

(assert (not b!3587450))

(assert (not b!3587160))

(assert (not b!3586942))

(assert (not b!3587436))

(assert (not b!3587158))

(assert (not b_lambda!105967))

(assert tp_is_empty!17727)

(assert b_and!259139)

(assert (not b!3587389))

(assert (not b!3587459))

(assert (not b!3587249))

(assert (not b!3587247))

(assert (not bm!259709))

(assert (not b!3587315))

(assert (not d!1057471))

(assert (not d!1057421))

(assert (not bm!259721))

(assert (not b!3587258))

(assert (not b!3586966))

(assert (not d!1057415))

(assert (not d!1057423))

(assert (not b!3587100))

(assert (not d!1057517))

(assert (not b_next!93095))

(assert (not b!3587154))

(assert (not bm!259725))

(assert (not b!3587434))

(assert (not b!3587095))

(assert (not tb!204589))

(assert (not b!3587261))

(assert (not b!3587267))

(assert (not b!3587253))

(assert (not d!1057437))

(assert (not b!3587395))

(assert (not b!3587098))

(assert b_and!259133)

(assert (not d!1057481))

(assert (not tb!204613))

(assert (not b!3586918))

(assert (not b!3587170))

(assert (not b!3587432))

(assert (not b!3587411))

(assert (not b!3587251))

(assert (not tb!204605))

(assert (not bm!259715))

(assert (not b_lambda!105971))

(assert (not b!3587093))

(assert (not d!1057529))

(assert (not b!3587164))

(assert (not d!1057527))

(assert (not b!3586910))

(assert (not b!3586955))

(assert (not b!3586919))

(assert (not b!3587099))

(assert (not b!3586915))

(assert b_and!259127)

(assert (not b!3587255))

(assert (not b!3587293))

(assert (not b_lambda!105961))

(assert (not b!3586965))

(assert (not b!3587403))

(assert (not b!3587460))

(assert (not bm!259710))

(assert (not d!1057507))

(assert (not d!1057519))

(assert (not bm!259718))

(assert (not d!1057545))

(assert (not d!1057549))

(assert (not d!1057521))

(assert (not b_next!93087))

(assert (not bm!259711))

(assert (not d!1057513))

(assert (not b_next!93091))

(assert (not b!3587435))

(assert (not b!3587445))

(assert (not b!3587245))

(assert (not d!1057543))

(assert (not b!3587439))

(assert (not d!1057531))

(assert (not bm!259714))

(assert (not d!1057489))

(assert (not b_next!93089))

(assert (not b!3587339))

(assert (not b!3587301))

(assert (not b!3587448))

(assert (not bm!259722))

(assert (not b!3587449))

(assert (not b!3586943))

(assert (not b_lambda!105969))

(assert (not b!3587446))

(assert (not b!3587306))

(assert (not b!3587240))

(assert (not d!1057509))

(assert (not d!1057515))

(assert (not b!3586935))

(assert (not d!1057573))

(assert (not b!3587299))

(assert (not b!3587254))

(assert (not b!3587256))

(assert (not d!1057539))

(assert b_and!259141)

(assert (not b!3587336))

(assert (not b_next!93085))

(assert (not b!3587168))

(assert b_and!259145)

(assert (not b!3587399))

(assert (not b!3587438))

(assert (not b!3587159))

(assert (not b!3587107))

(assert (not d!1057435))

(assert (not b_next!93113))

(assert (not b!3586932))

(assert (not b!3587162))

(assert b_and!259135)

(assert (not d!1057579))

(assert (not b!3587292))

(assert (not b_next!93115))

(assert (not d!1057425))

(assert (not b!3587165))

(assert (not d!1057533))

(assert b_and!259143)

(assert (not b!3587418))

(assert (not d!1057427))

(assert (not b!3587180))

(assert (not bm!259720))

(assert (not b!3587417))

(assert (not b!3587155))

(assert (not b!3587401))

(assert (not b!3586934))

(assert (not d!1057575))

(assert (not b!3587288))

(assert (not d!1057429))

(assert (not b!3587094))

(assert (not b_next!93081))

(assert (not b!3587297))

(assert (not b!3586954))

(assert (not tb!204581))

(assert (not d!1057473))

(assert (not b!3587241))

(assert (not b!3587157))

(assert (not b!3586953))

(assert b_and!259129)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!93083))

(assert b_and!259139)

(assert (not b_next!93095))

(assert b_and!259133)

(assert b_and!259127)

(assert (not b_next!93089))

(assert (not b_next!93081))

(assert b_and!259129)

(assert b_and!259137)

(assert b_and!259131)

(assert (not b_next!93093))

(assert (not b_next!93087))

(assert (not b_next!93091))

(assert b_and!259141)

(assert (not b_next!93085))

(assert b_and!259145)

(assert (not b_next!93113))

(assert b_and!259135)

(assert (not b_next!93115))

(assert b_and!259143)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3587566 () Bool)

(declare-fun e!2219782 () List!37825)

(assert (=> b!3587566 (= e!2219782 (++!9379 (list!13861 (left!29462 (c!621270 lt!1230280))) (list!13861 (right!29792 (c!621270 lt!1230280)))))))

(declare-fun d!1057619 () Bool)

(declare-fun c!621390 () Bool)

(assert (=> d!1057619 (= c!621390 (is-Empty!11466 (c!621270 lt!1230280)))))

(declare-fun e!2219781 () List!37825)

(assert (=> d!1057619 (= (list!13861 (c!621270 lt!1230280)) e!2219781)))

(declare-fun b!3587563 () Bool)

(assert (=> b!3587563 (= e!2219781 Nil!37701)))

(declare-fun b!3587565 () Bool)

(declare-fun list!13865 (IArray!22937) List!37825)

(assert (=> b!3587565 (= e!2219782 (list!13865 (xs!14668 (c!621270 lt!1230280))))))

(declare-fun b!3587564 () Bool)

(assert (=> b!3587564 (= e!2219781 e!2219782)))

(declare-fun c!621391 () Bool)

(assert (=> b!3587564 (= c!621391 (is-Leaf!17859 (c!621270 lt!1230280)))))

(assert (= (and d!1057619 c!621390) b!3587563))

(assert (= (and d!1057619 (not c!621390)) b!3587564))

(assert (= (and b!3587564 c!621391) b!3587565))

(assert (= (and b!3587564 (not c!621391)) b!3587566))

(declare-fun m!4080941 () Bool)

(assert (=> b!3587566 m!4080941))

(declare-fun m!4080943 () Bool)

(assert (=> b!3587566 m!4080943))

(assert (=> b!3587566 m!4080941))

(assert (=> b!3587566 m!4080943))

(declare-fun m!4080945 () Bool)

(assert (=> b!3587566 m!4080945))

(declare-fun m!4080947 () Bool)

(assert (=> b!3587565 m!4080947))

(assert (=> d!1057423 d!1057619))

(declare-fun d!1057621 () Bool)

(assert (=> d!1057621 (= (isEmpty!22210 (originalCharacters!6277 token!511)) (is-Nil!37701 (originalCharacters!6277 token!511)))))

(assert (=> d!1057411 d!1057621))

(declare-fun d!1057623 () Bool)

(assert (=> d!1057623 (isEmpty!22215 (maxPrefixOneRule!1836 thiss!23823 (rule!8277 lt!1230419) lt!1230418))))

(declare-fun lt!1230575 () Unit!53698)

(declare-fun choose!20871 (LexerInterface!5152 Rule!10926 List!37826 List!37825) Unit!53698)

(assert (=> d!1057623 (= lt!1230575 (choose!20871 thiss!23823 (rule!8277 lt!1230419) rules!3307 lt!1230418))))

(assert (=> d!1057623 (not (isEmpty!22211 rules!3307))))

(assert (=> d!1057623 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!447 thiss!23823 (rule!8277 lt!1230419) rules!3307 lt!1230418) lt!1230575)))

(declare-fun bs!570080 () Bool)

(assert (= bs!570080 d!1057623))

(assert (=> bs!570080 m!4080389))

(assert (=> bs!570080 m!4080389))

(assert (=> bs!570080 m!4080397))

(declare-fun m!4080949 () Bool)

(assert (=> bs!570080 m!4080949))

(assert (=> bs!570080 m!4080033))

(assert (=> b!3587095 d!1057623))

(declare-fun d!1057625 () Bool)

(assert (=> d!1057625 (= (list!13859 (charsOf!3577 lt!1230419)) (list!13861 (c!621270 (charsOf!3577 lt!1230419))))))

(declare-fun bs!570081 () Bool)

(assert (= bs!570081 d!1057625))

(declare-fun m!4080951 () Bool)

(assert (=> bs!570081 m!4080951))

(assert (=> b!3587095 d!1057625))

(assert (=> b!3587095 d!1057481))

(declare-fun d!1057627 () Bool)

(declare-fun lt!1230576 () BalanceConc!22546)

(assert (=> d!1057627 (= (list!13859 lt!1230576) (originalCharacters!6277 lt!1230419))))

(assert (=> d!1057627 (= lt!1230576 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 lt!1230419))) (value!179007 lt!1230419)))))

(assert (=> d!1057627 (= (charsOf!3577 lt!1230419) lt!1230576)))

(declare-fun b_lambda!105987 () Bool)

(assert (=> (not b_lambda!105987) (not d!1057627)))

(declare-fun t!290729 () Bool)

(declare-fun tb!204661 () Bool)

(assert (=> (and b!3587461 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toChars!7702 (transformation!5563 (rule!8277 lt!1230419)))) t!290729) tb!204661))

(declare-fun b!3587567 () Bool)

(declare-fun e!2219783 () Bool)

(declare-fun tp!1098245 () Bool)

(assert (=> b!3587567 (= e!2219783 (and (inv!51035 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 lt!1230419))) (value!179007 lt!1230419)))) tp!1098245))))

(declare-fun result!249558 () Bool)

(assert (=> tb!204661 (= result!249558 (and (inv!51036 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 lt!1230419))) (value!179007 lt!1230419))) e!2219783))))

(assert (= tb!204661 b!3587567))

(declare-fun m!4080953 () Bool)

(assert (=> b!3587567 m!4080953))

(declare-fun m!4080955 () Bool)

(assert (=> tb!204661 m!4080955))

(assert (=> d!1057627 t!290729))

(declare-fun b_and!259183 () Bool)

(assert (= b_and!259145 (and (=> t!290729 result!249558) b_and!259183)))

(declare-fun t!290731 () Bool)

(declare-fun tb!204663 () Bool)

(assert (=> (and b!3586810 (= (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toChars!7702 (transformation!5563 (rule!8277 lt!1230419)))) t!290731) tb!204663))

(declare-fun result!249560 () Bool)

(assert (= result!249560 result!249558))

(assert (=> d!1057627 t!290731))

(declare-fun b_and!259185 () Bool)

(assert (= b_and!259127 (and (=> t!290731 result!249560) b_and!259185)))

(declare-fun t!290733 () Bool)

(declare-fun tb!204665 () Bool)

(assert (=> (and b!3586811 (= (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toChars!7702 (transformation!5563 (rule!8277 lt!1230419)))) t!290733) tb!204665))

(declare-fun result!249562 () Bool)

(assert (= result!249562 result!249558))

(assert (=> d!1057627 t!290733))

(declare-fun b_and!259187 () Bool)

(assert (= b_and!259133 (and (=> t!290733 result!249562) b_and!259187)))

(declare-fun t!290735 () Bool)

(declare-fun tb!204667 () Bool)

(assert (=> (and b!3586802 (= (toChars!7702 (transformation!5563 rule!403)) (toChars!7702 (transformation!5563 (rule!8277 lt!1230419)))) t!290735) tb!204667))

(declare-fun result!249564 () Bool)

(assert (= result!249564 result!249558))

(assert (=> d!1057627 t!290735))

(declare-fun b_and!259189 () Bool)

(assert (= b_and!259129 (and (=> t!290735 result!249564) b_and!259189)))

(declare-fun tb!204669 () Bool)

(declare-fun t!290737 () Bool)

(assert (=> (and b!3586803 (= (toChars!7702 (transformation!5563 (h!43122 rules!3307))) (toChars!7702 (transformation!5563 (rule!8277 lt!1230419)))) t!290737) tb!204669))

(declare-fun result!249566 () Bool)

(assert (= result!249566 result!249558))

(assert (=> d!1057627 t!290737))

(declare-fun b_and!259191 () Bool)

(assert (= b_and!259131 (and (=> t!290737 result!249566) b_and!259191)))

(declare-fun m!4080957 () Bool)

(assert (=> d!1057627 m!4080957))

(declare-fun m!4080959 () Bool)

(assert (=> d!1057627 m!4080959))

(assert (=> b!3587095 d!1057627))

(declare-fun b!3587568 () Bool)

(declare-fun e!2219785 () Bool)

(declare-fun e!2219786 () Bool)

(assert (=> b!3587568 (= e!2219785 e!2219786)))

(declare-fun res!1448031 () Bool)

(assert (=> b!3587568 (=> res!1448031 e!2219786)))

(declare-fun call!259737 () Bool)

(assert (=> b!3587568 (= res!1448031 call!259737)))

(declare-fun d!1057629 () Bool)

(declare-fun e!2219784 () Bool)

(assert (=> d!1057629 e!2219784))

(declare-fun c!621393 () Bool)

(assert (=> d!1057629 (= c!621393 (is-EmptyExpr!10322 (regex!5563 (rule!8277 lt!1230419))))))

(declare-fun lt!1230577 () Bool)

(declare-fun e!2219788 () Bool)

(assert (=> d!1057629 (= lt!1230577 e!2219788)))

(declare-fun c!621394 () Bool)

(assert (=> d!1057629 (= c!621394 (isEmpty!22210 lt!1230406))))

(assert (=> d!1057629 (validRegex!4716 (regex!5563 (rule!8277 lt!1230419)))))

(assert (=> d!1057629 (= (matchR!4891 (regex!5563 (rule!8277 lt!1230419)) lt!1230406) lt!1230577)))

(declare-fun b!3587569 () Bool)

(declare-fun e!2219787 () Bool)

(assert (=> b!3587569 (= e!2219787 (= (head!7483 lt!1230406) (c!621269 (regex!5563 (rule!8277 lt!1230419)))))))

(declare-fun b!3587570 () Bool)

(declare-fun res!1448025 () Bool)

(assert (=> b!3587570 (=> res!1448025 e!2219786)))

(assert (=> b!3587570 (= res!1448025 (not (isEmpty!22210 (tail!5558 lt!1230406))))))

(declare-fun b!3587571 () Bool)

(declare-fun res!1448027 () Bool)

(assert (=> b!3587571 (=> (not res!1448027) (not e!2219787))))

(assert (=> b!3587571 (= res!1448027 (not call!259737))))

(declare-fun bm!259732 () Bool)

(assert (=> bm!259732 (= call!259737 (isEmpty!22210 lt!1230406))))

(declare-fun b!3587572 () Bool)

(declare-fun e!2219790 () Bool)

(assert (=> b!3587572 (= e!2219784 e!2219790)))

(declare-fun c!621392 () Bool)

(assert (=> b!3587572 (= c!621392 (is-EmptyLang!10322 (regex!5563 (rule!8277 lt!1230419))))))

(declare-fun b!3587573 () Bool)

(assert (=> b!3587573 (= e!2219790 (not lt!1230577))))

(declare-fun b!3587574 () Bool)

(assert (=> b!3587574 (= e!2219786 (not (= (head!7483 lt!1230406) (c!621269 (regex!5563 (rule!8277 lt!1230419))))))))

(declare-fun b!3587575 () Bool)

(declare-fun res!1448024 () Bool)

(declare-fun e!2219789 () Bool)

(assert (=> b!3587575 (=> res!1448024 e!2219789)))

(assert (=> b!3587575 (= res!1448024 e!2219787)))

(declare-fun res!1448029 () Bool)

(assert (=> b!3587575 (=> (not res!1448029) (not e!2219787))))

(assert (=> b!3587575 (= res!1448029 lt!1230577)))

(declare-fun b!3587576 () Bool)

(declare-fun res!1448030 () Bool)

(assert (=> b!3587576 (=> (not res!1448030) (not e!2219787))))

(assert (=> b!3587576 (= res!1448030 (isEmpty!22210 (tail!5558 lt!1230406)))))

(declare-fun b!3587577 () Bool)

(declare-fun res!1448026 () Bool)

(assert (=> b!3587577 (=> res!1448026 e!2219789)))

(assert (=> b!3587577 (= res!1448026 (not (is-ElementMatch!10322 (regex!5563 (rule!8277 lt!1230419)))))))

(assert (=> b!3587577 (= e!2219790 e!2219789)))

(declare-fun b!3587578 () Bool)

(assert (=> b!3587578 (= e!2219788 (matchR!4891 (derivativeStep!3109 (regex!5563 (rule!8277 lt!1230419)) (head!7483 lt!1230406)) (tail!5558 lt!1230406)))))

(declare-fun b!3587579 () Bool)

(assert (=> b!3587579 (= e!2219789 e!2219785)))

(declare-fun res!1448028 () Bool)

(assert (=> b!3587579 (=> (not res!1448028) (not e!2219785))))

(assert (=> b!3587579 (= res!1448028 (not lt!1230577))))

(declare-fun b!3587580 () Bool)

(assert (=> b!3587580 (= e!2219788 (nullable!3560 (regex!5563 (rule!8277 lt!1230419))))))

(declare-fun b!3587581 () Bool)

(assert (=> b!3587581 (= e!2219784 (= lt!1230577 call!259737))))

(assert (= (and d!1057629 c!621394) b!3587580))

(assert (= (and d!1057629 (not c!621394)) b!3587578))

(assert (= (and d!1057629 c!621393) b!3587581))

(assert (= (and d!1057629 (not c!621393)) b!3587572))

(assert (= (and b!3587572 c!621392) b!3587573))

(assert (= (and b!3587572 (not c!621392)) b!3587577))

(assert (= (and b!3587577 (not res!1448026)) b!3587575))

(assert (= (and b!3587575 res!1448029) b!3587571))

(assert (= (and b!3587571 res!1448027) b!3587576))

(assert (= (and b!3587576 res!1448030) b!3587569))

(assert (= (and b!3587575 (not res!1448024)) b!3587579))

(assert (= (and b!3587579 res!1448028) b!3587568))

(assert (= (and b!3587568 (not res!1448031)) b!3587570))

(assert (= (and b!3587570 (not res!1448025)) b!3587574))

(assert (= (or b!3587581 b!3587568 b!3587571) bm!259732))

(declare-fun m!4080961 () Bool)

(assert (=> b!3587569 m!4080961))

(declare-fun m!4080963 () Bool)

(assert (=> b!3587576 m!4080963))

(assert (=> b!3587576 m!4080963))

(declare-fun m!4080965 () Bool)

(assert (=> b!3587576 m!4080965))

(declare-fun m!4080967 () Bool)

(assert (=> bm!259732 m!4080967))

(assert (=> b!3587574 m!4080961))

(assert (=> b!3587570 m!4080963))

(assert (=> b!3587570 m!4080963))

(assert (=> b!3587570 m!4080965))

(assert (=> b!3587578 m!4080961))

(assert (=> b!3587578 m!4080961))

(declare-fun m!4080969 () Bool)

(assert (=> b!3587578 m!4080969))

(assert (=> b!3587578 m!4080963))

(assert (=> b!3587578 m!4080969))

(assert (=> b!3587578 m!4080963))

(declare-fun m!4080971 () Bool)

(assert (=> b!3587578 m!4080971))

(assert (=> d!1057629 m!4080967))

(declare-fun m!4080973 () Bool)

(assert (=> d!1057629 m!4080973))

(declare-fun m!4080975 () Bool)

(assert (=> b!3587580 m!4080975))

(assert (=> b!3587095 d!1057629))

(declare-fun d!1057631 () Bool)

(assert (=> d!1057631 (= (isEmpty!22215 (maxPrefixOneRule!1836 thiss!23823 (rule!8277 lt!1230419) lt!1230418)) (not (is-Some!7755 (maxPrefixOneRule!1836 thiss!23823 (rule!8277 lt!1230419) lt!1230418))))))

(assert (=> b!3587095 d!1057631))

(declare-fun d!1057633 () Bool)

(assert (=> d!1057633 (not (matchR!4891 (regex!5563 (rule!8277 lt!1230419)) lt!1230406))))

(declare-fun lt!1230580 () Unit!53698)

(declare-fun choose!20872 (LexerInterface!5152 Rule!10926 List!37825 List!37825) Unit!53698)

(assert (=> d!1057633 (= lt!1230580 (choose!20872 thiss!23823 (rule!8277 lt!1230419) lt!1230406 (++!9379 lt!1230282 suffix!1395)))))

(assert (=> d!1057633 (isPrefix!2926 lt!1230406 (++!9379 lt!1230282 suffix!1395))))

(assert (=> d!1057633 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!435 thiss!23823 (rule!8277 lt!1230419) lt!1230406 (++!9379 lt!1230282 suffix!1395)) lt!1230580)))

(declare-fun bs!570082 () Bool)

(assert (= bs!570082 d!1057633))

(assert (=> bs!570082 m!4080399))

(assert (=> bs!570082 m!4080087))

(declare-fun m!4080977 () Bool)

(assert (=> bs!570082 m!4080977))

(assert (=> bs!570082 m!4080087))

(declare-fun m!4080979 () Bool)

(assert (=> bs!570082 m!4080979))

(assert (=> b!3587095 d!1057633))

(declare-fun b!3587600 () Bool)

(declare-fun e!2219800 () Option!7756)

(declare-datatypes ((tuple2!37598 0))(
  ( (tuple2!37599 (_1!21933 List!37825) (_2!21933 List!37825)) )
))
(declare-fun lt!1230592 () tuple2!37598)

(declare-fun size!28725 (BalanceConc!22546) Int)

(assert (=> b!3587600 (= e!2219800 (Some!7755 (tuple2!37591 (Token!10493 (apply!9073 (transformation!5563 (rule!8277 lt!1230419)) (seqFromList!4116 (_1!21933 lt!1230592))) (rule!8277 lt!1230419) (size!28725 (seqFromList!4116 (_1!21933 lt!1230592))) (_1!21933 lt!1230592)) (_2!21933 lt!1230592))))))

(declare-fun lt!1230595 () Unit!53698)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!941 (Regex!10322 List!37825) Unit!53698)

(assert (=> b!3587600 (= lt!1230595 (longestMatchIsAcceptedByMatchOrIsEmpty!941 (regex!5563 (rule!8277 lt!1230419)) lt!1230418))))

(declare-fun res!1448049 () Bool)

(declare-fun findLongestMatchInner!968 (Regex!10322 List!37825 Int List!37825 List!37825 Int) tuple2!37598)

(assert (=> b!3587600 (= res!1448049 (isEmpty!22210 (_1!21933 (findLongestMatchInner!968 (regex!5563 (rule!8277 lt!1230419)) Nil!37701 (size!28723 Nil!37701) lt!1230418 lt!1230418 (size!28723 lt!1230418)))))))

(declare-fun e!2219801 () Bool)

(assert (=> b!3587600 (=> res!1448049 e!2219801)))

(assert (=> b!3587600 e!2219801))

(declare-fun lt!1230591 () Unit!53698)

(assert (=> b!3587600 (= lt!1230591 lt!1230595)))

(declare-fun lt!1230594 () Unit!53698)

(assert (=> b!3587600 (= lt!1230594 (lemmaSemiInverse!1320 (transformation!5563 (rule!8277 lt!1230419)) (seqFromList!4116 (_1!21933 lt!1230592))))))

(declare-fun b!3587601 () Bool)

(declare-fun res!1448048 () Bool)

(declare-fun e!2219802 () Bool)

(assert (=> b!3587601 (=> (not res!1448048) (not e!2219802))))

(declare-fun lt!1230593 () Option!7756)

(assert (=> b!3587601 (= res!1448048 (< (size!28723 (_2!21929 (get!12148 lt!1230593))) (size!28723 lt!1230418)))))

(declare-fun b!3587602 () Bool)

(declare-fun e!2219799 () Bool)

(assert (=> b!3587602 (= e!2219799 e!2219802)))

(declare-fun res!1448052 () Bool)

(assert (=> b!3587602 (=> (not res!1448052) (not e!2219802))))

(assert (=> b!3587602 (= res!1448052 (matchR!4891 (regex!5563 (rule!8277 lt!1230419)) (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230593))))))))

(declare-fun b!3587603 () Bool)

(declare-fun res!1448051 () Bool)

(assert (=> b!3587603 (=> (not res!1448051) (not e!2219802))))

(assert (=> b!3587603 (= res!1448051 (= (value!179007 (_1!21929 (get!12148 lt!1230593))) (apply!9073 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230593)))) (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230593)))))))))

(declare-fun d!1057635 () Bool)

(assert (=> d!1057635 e!2219799))

(declare-fun res!1448046 () Bool)

(assert (=> d!1057635 (=> res!1448046 e!2219799)))

(assert (=> d!1057635 (= res!1448046 (isEmpty!22215 lt!1230593))))

(assert (=> d!1057635 (= lt!1230593 e!2219800)))

(declare-fun c!621397 () Bool)

(assert (=> d!1057635 (= c!621397 (isEmpty!22210 (_1!21933 lt!1230592)))))

(declare-fun findLongestMatch!883 (Regex!10322 List!37825) tuple2!37598)

(assert (=> d!1057635 (= lt!1230592 (findLongestMatch!883 (regex!5563 (rule!8277 lt!1230419)) lt!1230418))))

(assert (=> d!1057635 (ruleValid!1828 thiss!23823 (rule!8277 lt!1230419))))

(assert (=> d!1057635 (= (maxPrefixOneRule!1836 thiss!23823 (rule!8277 lt!1230419) lt!1230418) lt!1230593)))

(declare-fun b!3587604 () Bool)

(assert (=> b!3587604 (= e!2219802 (= (size!28721 (_1!21929 (get!12148 lt!1230593))) (size!28723 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230593))))))))

(declare-fun b!3587605 () Bool)

(assert (=> b!3587605 (= e!2219801 (matchR!4891 (regex!5563 (rule!8277 lt!1230419)) (_1!21933 (findLongestMatchInner!968 (regex!5563 (rule!8277 lt!1230419)) Nil!37701 (size!28723 Nil!37701) lt!1230418 lt!1230418 (size!28723 lt!1230418)))))))

(declare-fun b!3587606 () Bool)

(declare-fun res!1448050 () Bool)

(assert (=> b!3587606 (=> (not res!1448050) (not e!2219802))))

(assert (=> b!3587606 (= res!1448050 (= (++!9379 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230593)))) (_2!21929 (get!12148 lt!1230593))) lt!1230418))))

(declare-fun b!3587607 () Bool)

(declare-fun res!1448047 () Bool)

(assert (=> b!3587607 (=> (not res!1448047) (not e!2219802))))

(assert (=> b!3587607 (= res!1448047 (= (rule!8277 (_1!21929 (get!12148 lt!1230593))) (rule!8277 lt!1230419)))))

(declare-fun b!3587608 () Bool)

(assert (=> b!3587608 (= e!2219800 None!7755)))

(assert (= (and d!1057635 c!621397) b!3587608))

(assert (= (and d!1057635 (not c!621397)) b!3587600))

(assert (= (and b!3587600 (not res!1448049)) b!3587605))

(assert (= (and d!1057635 (not res!1448046)) b!3587602))

(assert (= (and b!3587602 res!1448052) b!3587606))

(assert (= (and b!3587606 res!1448050) b!3587601))

(assert (= (and b!3587601 res!1448048) b!3587607))

(assert (= (and b!3587607 res!1448047) b!3587603))

(assert (= (and b!3587603 res!1448051) b!3587604))

(declare-fun m!4080981 () Bool)

(assert (=> b!3587602 m!4080981))

(declare-fun m!4080983 () Bool)

(assert (=> b!3587602 m!4080983))

(assert (=> b!3587602 m!4080983))

(declare-fun m!4080985 () Bool)

(assert (=> b!3587602 m!4080985))

(assert (=> b!3587602 m!4080985))

(declare-fun m!4080987 () Bool)

(assert (=> b!3587602 m!4080987))

(declare-fun m!4080989 () Bool)

(assert (=> d!1057635 m!4080989))

(declare-fun m!4080991 () Bool)

(assert (=> d!1057635 m!4080991))

(declare-fun m!4080993 () Bool)

(assert (=> d!1057635 m!4080993))

(declare-fun m!4080995 () Bool)

(assert (=> d!1057635 m!4080995))

(declare-fun m!4080997 () Bool)

(assert (=> b!3587605 m!4080997))

(declare-fun m!4080999 () Bool)

(assert (=> b!3587605 m!4080999))

(assert (=> b!3587605 m!4080997))

(assert (=> b!3587605 m!4080999))

(declare-fun m!4081001 () Bool)

(assert (=> b!3587605 m!4081001))

(declare-fun m!4081003 () Bool)

(assert (=> b!3587605 m!4081003))

(assert (=> b!3587606 m!4080981))

(assert (=> b!3587606 m!4080983))

(assert (=> b!3587606 m!4080983))

(assert (=> b!3587606 m!4080985))

(assert (=> b!3587606 m!4080985))

(declare-fun m!4081005 () Bool)

(assert (=> b!3587606 m!4081005))

(assert (=> b!3587601 m!4080981))

(declare-fun m!4081007 () Bool)

(assert (=> b!3587601 m!4081007))

(assert (=> b!3587601 m!4080999))

(declare-fun m!4081009 () Bool)

(assert (=> b!3587600 m!4081009))

(declare-fun m!4081011 () Bool)

(assert (=> b!3587600 m!4081011))

(assert (=> b!3587600 m!4081011))

(declare-fun m!4081013 () Bool)

(assert (=> b!3587600 m!4081013))

(assert (=> b!3587600 m!4080999))

(assert (=> b!3587600 m!4081011))

(declare-fun m!4081015 () Bool)

(assert (=> b!3587600 m!4081015))

(assert (=> b!3587600 m!4080997))

(assert (=> b!3587600 m!4080999))

(assert (=> b!3587600 m!4081001))

(assert (=> b!3587600 m!4080997))

(assert (=> b!3587600 m!4081011))

(declare-fun m!4081017 () Bool)

(assert (=> b!3587600 m!4081017))

(declare-fun m!4081019 () Bool)

(assert (=> b!3587600 m!4081019))

(assert (=> b!3587604 m!4080981))

(declare-fun m!4081021 () Bool)

(assert (=> b!3587604 m!4081021))

(assert (=> b!3587607 m!4080981))

(assert (=> b!3587603 m!4080981))

(declare-fun m!4081023 () Bool)

(assert (=> b!3587603 m!4081023))

(assert (=> b!3587603 m!4081023))

(declare-fun m!4081025 () Bool)

(assert (=> b!3587603 m!4081025))

(assert (=> b!3587095 d!1057635))

(declare-fun b!3587612 () Bool)

(declare-fun e!2219804 () List!37825)

(assert (=> b!3587612 (= e!2219804 (++!9379 (list!13861 (left!29462 (c!621270 (seqFromList!4116 (originalCharacters!6277 (_1!21929 lt!1230275)))))) (list!13861 (right!29792 (c!621270 (seqFromList!4116 (originalCharacters!6277 (_1!21929 lt!1230275))))))))))

(declare-fun d!1057637 () Bool)

(declare-fun c!621398 () Bool)

(assert (=> d!1057637 (= c!621398 (is-Empty!11466 (c!621270 (seqFromList!4116 (originalCharacters!6277 (_1!21929 lt!1230275))))))))

(declare-fun e!2219803 () List!37825)

(assert (=> d!1057637 (= (list!13861 (c!621270 (seqFromList!4116 (originalCharacters!6277 (_1!21929 lt!1230275))))) e!2219803)))

(declare-fun b!3587609 () Bool)

(assert (=> b!3587609 (= e!2219803 Nil!37701)))

(declare-fun b!3587611 () Bool)

(assert (=> b!3587611 (= e!2219804 (list!13865 (xs!14668 (c!621270 (seqFromList!4116 (originalCharacters!6277 (_1!21929 lt!1230275)))))))))

(declare-fun b!3587610 () Bool)

(assert (=> b!3587610 (= e!2219803 e!2219804)))

(declare-fun c!621399 () Bool)

(assert (=> b!3587610 (= c!621399 (is-Leaf!17859 (c!621270 (seqFromList!4116 (originalCharacters!6277 (_1!21929 lt!1230275))))))))

(assert (= (and d!1057637 c!621398) b!3587609))

(assert (= (and d!1057637 (not c!621398)) b!3587610))

(assert (= (and b!3587610 c!621399) b!3587611))

(assert (= (and b!3587610 (not c!621399)) b!3587612))

(declare-fun m!4081027 () Bool)

(assert (=> b!3587612 m!4081027))

(declare-fun m!4081029 () Bool)

(assert (=> b!3587612 m!4081029))

(assert (=> b!3587612 m!4081027))

(assert (=> b!3587612 m!4081029))

(declare-fun m!4081031 () Bool)

(assert (=> b!3587612 m!4081031))

(declare-fun m!4081033 () Bool)

(assert (=> b!3587611 m!4081033))

(assert (=> d!1057543 d!1057637))

(declare-fun d!1057639 () Bool)

(declare-fun c!621402 () Bool)

(assert (=> d!1057639 (= c!621402 (is-Node!11466 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275))))))))

(declare-fun e!2219809 () Bool)

(assert (=> d!1057639 (= (inv!51035 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275))))) e!2219809)))

(declare-fun b!3587619 () Bool)

(declare-fun inv!51039 (Conc!11466) Bool)

(assert (=> b!3587619 (= e!2219809 (inv!51039 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275))))))))

(declare-fun b!3587620 () Bool)

(declare-fun e!2219810 () Bool)

(assert (=> b!3587620 (= e!2219809 e!2219810)))

(declare-fun res!1448055 () Bool)

(assert (=> b!3587620 (= res!1448055 (not (is-Leaf!17859 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275)))))))))

(assert (=> b!3587620 (=> res!1448055 e!2219810)))

(declare-fun b!3587621 () Bool)

(declare-fun inv!51040 (Conc!11466) Bool)

(assert (=> b!3587621 (= e!2219810 (inv!51040 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275))))))))

(assert (= (and d!1057639 c!621402) b!3587619))

(assert (= (and d!1057639 (not c!621402)) b!3587620))

(assert (= (and b!3587620 (not res!1448055)) b!3587621))

(declare-fun m!4081035 () Bool)

(assert (=> b!3587619 m!4081035))

(declare-fun m!4081037 () Bool)

(assert (=> b!3587621 m!4081037))

(assert (=> b!3587107 d!1057639))

(declare-fun d!1057641 () Bool)

(declare-fun nullableFct!1035 (Regex!10322) Bool)

(assert (=> d!1057641 (= (nullable!3560 (regex!5563 lt!1230268)) (nullableFct!1035 (regex!5563 lt!1230268)))))

(declare-fun bs!570083 () Bool)

(assert (= bs!570083 d!1057641))

(declare-fun m!4081039 () Bool)

(assert (=> bs!570083 m!4081039))

(assert (=> b!3587251 d!1057641))

(declare-fun d!1057643 () Bool)

(assert (=> d!1057643 (= (nullable!3560 (regex!5563 rule!403)) (nullableFct!1035 (regex!5563 rule!403)))))

(declare-fun bs!570084 () Bool)

(assert (= bs!570084 d!1057643))

(declare-fun m!4081041 () Bool)

(assert (=> bs!570084 m!4081041))

(assert (=> b!3587411 d!1057643))

(declare-fun d!1057645 () Bool)

(assert (=> d!1057645 (= (isEmpty!22210 lt!1230282) (is-Nil!37701 lt!1230282))))

(assert (=> bm!259725 d!1057645))

(declare-fun d!1057647 () Bool)

(declare-fun c!621403 () Bool)

(assert (=> d!1057647 (= c!621403 (is-Node!11466 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511)))))))

(declare-fun e!2219811 () Bool)

(assert (=> d!1057647 (= (inv!51035 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511)))) e!2219811)))

(declare-fun b!3587622 () Bool)

(assert (=> b!3587622 (= e!2219811 (inv!51039 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511)))))))

(declare-fun b!3587623 () Bool)

(declare-fun e!2219812 () Bool)

(assert (=> b!3587623 (= e!2219811 e!2219812)))

(declare-fun res!1448056 () Bool)

(assert (=> b!3587623 (= res!1448056 (not (is-Leaf!17859 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511))))))))

(assert (=> b!3587623 (=> res!1448056 e!2219812)))

(declare-fun b!3587624 () Bool)

(assert (=> b!3587624 (= e!2219812 (inv!51040 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511)))))))

(assert (= (and d!1057647 c!621403) b!3587622))

(assert (= (and d!1057647 (not c!621403)) b!3587623))

(assert (= (and b!3587623 (not res!1448056)) b!3587624))

(declare-fun m!4081043 () Bool)

(assert (=> b!3587622 m!4081043))

(declare-fun m!4081045 () Bool)

(assert (=> b!3587624 m!4081045))

(assert (=> b!3586915 d!1057647))

(declare-fun d!1057649 () Bool)

(declare-fun lt!1230596 () Bool)

(assert (=> d!1057649 (= lt!1230596 (set.member (rule!8277 (_1!21929 (get!12148 lt!1230451))) (content!5361 rules!3307)))))

(declare-fun e!2219813 () Bool)

(assert (=> d!1057649 (= lt!1230596 e!2219813)))

(declare-fun res!1448058 () Bool)

(assert (=> d!1057649 (=> (not res!1448058) (not e!2219813))))

(assert (=> d!1057649 (= res!1448058 (is-Cons!37702 rules!3307))))

(assert (=> d!1057649 (= (contains!7188 rules!3307 (rule!8277 (_1!21929 (get!12148 lt!1230451)))) lt!1230596)))

(declare-fun b!3587625 () Bool)

(declare-fun e!2219814 () Bool)

(assert (=> b!3587625 (= e!2219813 e!2219814)))

(declare-fun res!1448057 () Bool)

(assert (=> b!3587625 (=> res!1448057 e!2219814)))

(assert (=> b!3587625 (= res!1448057 (= (h!43122 rules!3307) (rule!8277 (_1!21929 (get!12148 lt!1230451)))))))

(declare-fun b!3587626 () Bool)

(assert (=> b!3587626 (= e!2219814 (contains!7188 (t!290639 rules!3307) (rule!8277 (_1!21929 (get!12148 lt!1230451)))))))

(assert (= (and d!1057649 res!1448058) b!3587625))

(assert (= (and b!3587625 (not res!1448057)) b!3587626))

(assert (=> d!1057649 m!4080621))

(declare-fun m!4081047 () Bool)

(assert (=> d!1057649 m!4081047))

(declare-fun m!4081049 () Bool)

(assert (=> b!3587626 m!4081049))

(assert (=> b!3587157 d!1057649))

(declare-fun d!1057651 () Bool)

(assert (=> d!1057651 (= (get!12148 lt!1230451) (v!37421 lt!1230451))))

(assert (=> b!3587157 d!1057651))

(declare-fun b!3587629 () Bool)

(declare-fun e!2219817 () Bool)

(assert (=> b!3587629 (= e!2219817 (isPrefix!2926 (tail!5558 (tail!5558 lt!1230282)) (tail!5558 (tail!5558 lt!1230281))))))

(declare-fun b!3587630 () Bool)

(declare-fun e!2219816 () Bool)

(assert (=> b!3587630 (= e!2219816 (>= (size!28723 (tail!5558 lt!1230281)) (size!28723 (tail!5558 lt!1230282))))))

(declare-fun b!3587628 () Bool)

(declare-fun res!1448061 () Bool)

(assert (=> b!3587628 (=> (not res!1448061) (not e!2219817))))

(assert (=> b!3587628 (= res!1448061 (= (head!7483 (tail!5558 lt!1230282)) (head!7483 (tail!5558 lt!1230281))))))

(declare-fun d!1057653 () Bool)

(assert (=> d!1057653 e!2219816))

(declare-fun res!1448062 () Bool)

(assert (=> d!1057653 (=> res!1448062 e!2219816)))

(declare-fun lt!1230597 () Bool)

(assert (=> d!1057653 (= res!1448062 (not lt!1230597))))

(declare-fun e!2219815 () Bool)

(assert (=> d!1057653 (= lt!1230597 e!2219815)))

(declare-fun res!1448060 () Bool)

(assert (=> d!1057653 (=> res!1448060 e!2219815)))

(assert (=> d!1057653 (= res!1448060 (is-Nil!37701 (tail!5558 lt!1230282)))))

(assert (=> d!1057653 (= (isPrefix!2926 (tail!5558 lt!1230282) (tail!5558 lt!1230281)) lt!1230597)))

(declare-fun b!3587627 () Bool)

(assert (=> b!3587627 (= e!2219815 e!2219817)))

(declare-fun res!1448059 () Bool)

(assert (=> b!3587627 (=> (not res!1448059) (not e!2219817))))

(assert (=> b!3587627 (= res!1448059 (not (is-Nil!37701 (tail!5558 lt!1230281))))))

(assert (= (and d!1057653 (not res!1448060)) b!3587627))

(assert (= (and b!3587627 res!1448059) b!3587628))

(assert (= (and b!3587628 res!1448061) b!3587629))

(assert (= (and d!1057653 (not res!1448062)) b!3587630))

(assert (=> b!3587629 m!4080283))

(declare-fun m!4081051 () Bool)

(assert (=> b!3587629 m!4081051))

(assert (=> b!3587629 m!4080285))

(declare-fun m!4081053 () Bool)

(assert (=> b!3587629 m!4081053))

(assert (=> b!3587629 m!4081051))

(assert (=> b!3587629 m!4081053))

(declare-fun m!4081055 () Bool)

(assert (=> b!3587629 m!4081055))

(assert (=> b!3587630 m!4080285))

(declare-fun m!4081057 () Bool)

(assert (=> b!3587630 m!4081057))

(assert (=> b!3587630 m!4080283))

(declare-fun m!4081059 () Bool)

(assert (=> b!3587630 m!4081059))

(assert (=> b!3587628 m!4080283))

(declare-fun m!4081061 () Bool)

(assert (=> b!3587628 m!4081061))

(assert (=> b!3587628 m!4080285))

(declare-fun m!4081063 () Bool)

(assert (=> b!3587628 m!4081063))

(assert (=> b!3586954 d!1057653))

(declare-fun d!1057655 () Bool)

(assert (=> d!1057655 (= (tail!5558 lt!1230282) (t!290638 lt!1230282))))

(assert (=> b!3586954 d!1057655))

(declare-fun d!1057657 () Bool)

(assert (=> d!1057657 (= (tail!5558 lt!1230281) (t!290638 lt!1230281))))

(assert (=> b!3586954 d!1057657))

(declare-fun d!1057659 () Bool)

(assert (=> d!1057659 (= (isEmpty!22214 lt!1230342) (not (is-Some!7756 lt!1230342)))))

(assert (=> d!1057425 d!1057659))

(assert (=> d!1057425 d!1057527))

(declare-fun d!1057661 () Bool)

(assert (=> d!1057661 (= (isEmpty!22215 lt!1230451) (not (is-Some!7755 lt!1230451)))))

(assert (=> d!1057473 d!1057661))

(declare-fun b!3587633 () Bool)

(declare-fun e!2219820 () Bool)

(assert (=> b!3587633 (= e!2219820 (isPrefix!2926 (tail!5558 lt!1230281) (tail!5558 lt!1230281)))))

(declare-fun b!3587634 () Bool)

(declare-fun e!2219819 () Bool)

(assert (=> b!3587634 (= e!2219819 (>= (size!28723 lt!1230281) (size!28723 lt!1230281)))))

(declare-fun b!3587632 () Bool)

(declare-fun res!1448065 () Bool)

(assert (=> b!3587632 (=> (not res!1448065) (not e!2219820))))

(assert (=> b!3587632 (= res!1448065 (= (head!7483 lt!1230281) (head!7483 lt!1230281)))))

(declare-fun d!1057663 () Bool)

(assert (=> d!1057663 e!2219819))

(declare-fun res!1448066 () Bool)

(assert (=> d!1057663 (=> res!1448066 e!2219819)))

(declare-fun lt!1230598 () Bool)

(assert (=> d!1057663 (= res!1448066 (not lt!1230598))))

(declare-fun e!2219818 () Bool)

(assert (=> d!1057663 (= lt!1230598 e!2219818)))

(declare-fun res!1448064 () Bool)

(assert (=> d!1057663 (=> res!1448064 e!2219818)))

(assert (=> d!1057663 (= res!1448064 (is-Nil!37701 lt!1230281))))

(assert (=> d!1057663 (= (isPrefix!2926 lt!1230281 lt!1230281) lt!1230598)))

(declare-fun b!3587631 () Bool)

(assert (=> b!3587631 (= e!2219818 e!2219820)))

(declare-fun res!1448063 () Bool)

(assert (=> b!3587631 (=> (not res!1448063) (not e!2219820))))

(assert (=> b!3587631 (= res!1448063 (not (is-Nil!37701 lt!1230281)))))

(assert (= (and d!1057663 (not res!1448064)) b!3587631))

(assert (= (and b!3587631 res!1448063) b!3587632))

(assert (= (and b!3587632 res!1448065) b!3587633))

(assert (= (and d!1057663 (not res!1448066)) b!3587634))

(assert (=> b!3587633 m!4080285))

(assert (=> b!3587633 m!4080285))

(assert (=> b!3587633 m!4080285))

(assert (=> b!3587633 m!4080285))

(declare-fun m!4081065 () Bool)

(assert (=> b!3587633 m!4081065))

(assert (=> b!3587634 m!4080289))

(assert (=> b!3587634 m!4080289))

(assert (=> b!3587632 m!4080295))

(assert (=> b!3587632 m!4080295))

(assert (=> d!1057473 d!1057663))

(declare-fun d!1057665 () Bool)

(assert (=> d!1057665 (isPrefix!2926 lt!1230281 lt!1230281)))

(declare-fun lt!1230601 () Unit!53698)

(declare-fun choose!20873 (List!37825 List!37825) Unit!53698)

(assert (=> d!1057665 (= lt!1230601 (choose!20873 lt!1230281 lt!1230281))))

(assert (=> d!1057665 (= (lemmaIsPrefixRefl!1877 lt!1230281 lt!1230281) lt!1230601)))

(declare-fun bs!570085 () Bool)

(assert (= bs!570085 d!1057665))

(assert (=> bs!570085 m!4080497))

(declare-fun m!4081067 () Bool)

(assert (=> bs!570085 m!4081067))

(assert (=> d!1057473 d!1057665))

(declare-fun d!1057667 () Bool)

(assert (=> d!1057667 true))

(declare-fun lt!1230604 () Bool)

(declare-fun lambda!123798 () Int)

(declare-fun forall!8144 (List!37826 Int) Bool)

(assert (=> d!1057667 (= lt!1230604 (forall!8144 rules!3307 lambda!123798))))

(declare-fun e!2219826 () Bool)

(assert (=> d!1057667 (= lt!1230604 e!2219826)))

(declare-fun res!1448071 () Bool)

(assert (=> d!1057667 (=> res!1448071 e!2219826)))

(assert (=> d!1057667 (= res!1448071 (not (is-Cons!37702 rules!3307)))))

(assert (=> d!1057667 (= (rulesValidInductive!1940 thiss!23823 rules!3307) lt!1230604)))

(declare-fun b!3587639 () Bool)

(declare-fun e!2219825 () Bool)

(assert (=> b!3587639 (= e!2219826 e!2219825)))

(declare-fun res!1448072 () Bool)

(assert (=> b!3587639 (=> (not res!1448072) (not e!2219825))))

(assert (=> b!3587639 (= res!1448072 (ruleValid!1828 thiss!23823 (h!43122 rules!3307)))))

(declare-fun b!3587640 () Bool)

(assert (=> b!3587640 (= e!2219825 (rulesValidInductive!1940 thiss!23823 (t!290639 rules!3307)))))

(assert (= (and d!1057667 (not res!1448071)) b!3587639))

(assert (= (and b!3587639 res!1448072) b!3587640))

(declare-fun m!4081069 () Bool)

(assert (=> d!1057667 m!4081069))

(declare-fun m!4081071 () Bool)

(assert (=> b!3587639 m!4081071))

(declare-fun m!4081073 () Bool)

(assert (=> b!3587640 m!4081073))

(assert (=> d!1057473 d!1057667))

(declare-fun d!1057669 () Bool)

(assert (=> d!1057669 (= (isEmpty!22210 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))) (is-Nil!37701 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))))))

(assert (=> b!3587247 d!1057669))

(declare-fun d!1057671 () Bool)

(assert (=> d!1057671 (= (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))) (t!290638 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))

(assert (=> b!3587247 d!1057671))

(declare-fun d!1057673 () Bool)

(assert (=> d!1057673 (= (isEmpty!22210 (tail!5558 lt!1230283)) (is-Nil!37701 (tail!5558 lt!1230283)))))

(assert (=> b!3587293 d!1057673))

(declare-fun d!1057675 () Bool)

(assert (=> d!1057675 (= (tail!5558 lt!1230283) (t!290638 lt!1230283))))

(assert (=> b!3587293 d!1057675))

(declare-fun d!1057677 () Bool)

(declare-fun lt!1230605 () Bool)

(assert (=> d!1057677 (= lt!1230605 (set.member (get!12149 lt!1230342) (content!5361 rules!3307)))))

(declare-fun e!2219827 () Bool)

(assert (=> d!1057677 (= lt!1230605 e!2219827)))

(declare-fun res!1448074 () Bool)

(assert (=> d!1057677 (=> (not res!1448074) (not e!2219827))))

(assert (=> d!1057677 (= res!1448074 (is-Cons!37702 rules!3307))))

(assert (=> d!1057677 (= (contains!7188 rules!3307 (get!12149 lt!1230342)) lt!1230605)))

(declare-fun b!3587643 () Bool)

(declare-fun e!2219828 () Bool)

(assert (=> b!3587643 (= e!2219827 e!2219828)))

(declare-fun res!1448073 () Bool)

(assert (=> b!3587643 (=> res!1448073 e!2219828)))

(assert (=> b!3587643 (= res!1448073 (= (h!43122 rules!3307) (get!12149 lt!1230342)))))

(declare-fun b!3587644 () Bool)

(assert (=> b!3587644 (= e!2219828 (contains!7188 (t!290639 rules!3307) (get!12149 lt!1230342)))))

(assert (= (and d!1057677 res!1448074) b!3587643))

(assert (= (and b!3587643 (not res!1448073)) b!3587644))

(assert (=> d!1057677 m!4080621))

(assert (=> d!1057677 m!4080259))

(declare-fun m!4081075 () Bool)

(assert (=> d!1057677 m!4081075))

(assert (=> b!3587644 m!4080259))

(declare-fun m!4081077 () Bool)

(assert (=> b!3587644 m!4081077))

(assert (=> b!3586932 d!1057677))

(declare-fun d!1057679 () Bool)

(assert (=> d!1057679 (= (get!12149 lt!1230342) (v!37422 lt!1230342))))

(assert (=> b!3586932 d!1057679))

(declare-fun d!1057681 () Bool)

(declare-fun c!621406 () Bool)

(assert (=> d!1057681 (= c!621406 (is-Nil!37702 rules!3307))))

(declare-fun e!2219831 () (Set Rule!10926))

(assert (=> d!1057681 (= (content!5361 rules!3307) e!2219831)))

(declare-fun b!3587649 () Bool)

(assert (=> b!3587649 (= e!2219831 (as set.empty (Set Rule!10926)))))

(declare-fun b!3587650 () Bool)

(assert (=> b!3587650 (= e!2219831 (set.union (set.insert (h!43122 rules!3307) (as set.empty (Set Rule!10926))) (content!5361 (t!290639 rules!3307))))))

(assert (= (and d!1057681 c!621406) b!3587649))

(assert (= (and d!1057681 (not c!621406)) b!3587650))

(declare-fun m!4081079 () Bool)

(assert (=> b!3587650 m!4081079))

(declare-fun m!4081081 () Bool)

(assert (=> b!3587650 m!4081081))

(assert (=> d!1057529 d!1057681))

(assert (=> d!1057575 d!1057645))

(declare-fun b!3587669 () Bool)

(declare-fun e!2219850 () Bool)

(declare-fun e!2219847 () Bool)

(assert (=> b!3587669 (= e!2219850 e!2219847)))

(declare-fun res!1448086 () Bool)

(assert (=> b!3587669 (= res!1448086 (not (nullable!3560 (reg!10651 (regex!5563 rule!403)))))))

(assert (=> b!3587669 (=> (not res!1448086) (not e!2219847))))

(declare-fun b!3587670 () Bool)

(declare-fun res!1448085 () Bool)

(declare-fun e!2219852 () Bool)

(assert (=> b!3587670 (=> (not res!1448085) (not e!2219852))))

(declare-fun call!259746 () Bool)

(assert (=> b!3587670 (= res!1448085 call!259746)))

(declare-fun e!2219846 () Bool)

(assert (=> b!3587670 (= e!2219846 e!2219852)))

(declare-fun d!1057683 () Bool)

(declare-fun res!1448088 () Bool)

(declare-fun e!2219849 () Bool)

(assert (=> d!1057683 (=> res!1448088 e!2219849)))

(assert (=> d!1057683 (= res!1448088 (is-ElementMatch!10322 (regex!5563 rule!403)))))

(assert (=> d!1057683 (= (validRegex!4716 (regex!5563 rule!403)) e!2219849)))

(declare-fun b!3587671 () Bool)

(declare-fun call!259744 () Bool)

(assert (=> b!3587671 (= e!2219852 call!259744)))

(declare-fun b!3587672 () Bool)

(declare-fun e!2219848 () Bool)

(declare-fun e!2219851 () Bool)

(assert (=> b!3587672 (= e!2219848 e!2219851)))

(declare-fun res!1448089 () Bool)

(assert (=> b!3587672 (=> (not res!1448089) (not e!2219851))))

(assert (=> b!3587672 (= res!1448089 call!259744)))

(declare-fun b!3587673 () Bool)

(assert (=> b!3587673 (= e!2219850 e!2219846)))

(declare-fun c!621411 () Bool)

(assert (=> b!3587673 (= c!621411 (is-Union!10322 (regex!5563 rule!403)))))

(declare-fun bm!259739 () Bool)

(declare-fun call!259745 () Bool)

(declare-fun c!621412 () Bool)

(assert (=> bm!259739 (= call!259745 (validRegex!4716 (ite c!621412 (reg!10651 (regex!5563 rule!403)) (ite c!621411 (regTwo!21157 (regex!5563 rule!403)) (regOne!21156 (regex!5563 rule!403))))))))

(declare-fun b!3587674 () Bool)

(declare-fun res!1448087 () Bool)

(assert (=> b!3587674 (=> res!1448087 e!2219848)))

(assert (=> b!3587674 (= res!1448087 (not (is-Concat!16116 (regex!5563 rule!403))))))

(assert (=> b!3587674 (= e!2219846 e!2219848)))

(declare-fun b!3587675 () Bool)

(assert (=> b!3587675 (= e!2219851 call!259746)))

(declare-fun b!3587676 () Bool)

(assert (=> b!3587676 (= e!2219847 call!259745)))

(declare-fun bm!259740 () Bool)

(assert (=> bm!259740 (= call!259746 (validRegex!4716 (ite c!621411 (regOne!21157 (regex!5563 rule!403)) (regTwo!21156 (regex!5563 rule!403)))))))

(declare-fun b!3587677 () Bool)

(assert (=> b!3587677 (= e!2219849 e!2219850)))

(assert (=> b!3587677 (= c!621412 (is-Star!10322 (regex!5563 rule!403)))))

(declare-fun bm!259741 () Bool)

(assert (=> bm!259741 (= call!259744 call!259745)))

(assert (= (and d!1057683 (not res!1448088)) b!3587677))

(assert (= (and b!3587677 c!621412) b!3587669))

(assert (= (and b!3587677 (not c!621412)) b!3587673))

(assert (= (and b!3587669 res!1448086) b!3587676))

(assert (= (and b!3587673 c!621411) b!3587670))

(assert (= (and b!3587673 (not c!621411)) b!3587674))

(assert (= (and b!3587670 res!1448085) b!3587671))

(assert (= (and b!3587674 (not res!1448087)) b!3587672))

(assert (= (and b!3587672 res!1448089) b!3587675))

(assert (= (or b!3587670 b!3587675) bm!259740))

(assert (= (or b!3587671 b!3587672) bm!259741))

(assert (= (or b!3587676 bm!259741) bm!259739))

(declare-fun m!4081083 () Bool)

(assert (=> b!3587669 m!4081083))

(declare-fun m!4081085 () Bool)

(assert (=> bm!259739 m!4081085))

(declare-fun m!4081087 () Bool)

(assert (=> bm!259740 m!4081087))

(assert (=> d!1057575 d!1057683))

(declare-fun d!1057685 () Bool)

(assert (=> d!1057685 (= (list!13859 lt!1230474) (list!13861 (c!621270 lt!1230474)))))

(declare-fun bs!570086 () Bool)

(assert (= bs!570086 d!1057685))

(declare-fun m!4081089 () Bool)

(assert (=> bs!570086 m!4081089))

(assert (=> d!1057519 d!1057685))

(declare-fun d!1057687 () Bool)

(assert (=> d!1057687 (= (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451)))) (list!13861 (c!621270 (charsOf!3577 (_1!21929 (get!12148 lt!1230451))))))))

(declare-fun bs!570087 () Bool)

(assert (= bs!570087 d!1057687))

(declare-fun m!4081091 () Bool)

(assert (=> bs!570087 m!4081091))

(assert (=> b!3587154 d!1057687))

(declare-fun d!1057689 () Bool)

(declare-fun lt!1230606 () BalanceConc!22546)

(assert (=> d!1057689 (= (list!13859 lt!1230606) (originalCharacters!6277 (_1!21929 (get!12148 lt!1230451))))))

(assert (=> d!1057689 (= lt!1230606 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451))))) (value!179007 (_1!21929 (get!12148 lt!1230451)))))))

(assert (=> d!1057689 (= (charsOf!3577 (_1!21929 (get!12148 lt!1230451))) lt!1230606)))

(declare-fun b_lambda!105989 () Bool)

(assert (=> (not b_lambda!105989) (not d!1057689)))

(declare-fun t!290739 () Bool)

(declare-fun tb!204671 () Bool)

(assert (=> (and b!3586810 (= (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))) t!290739) tb!204671))

(declare-fun b!3587678 () Bool)

(declare-fun e!2219853 () Bool)

(declare-fun tp!1098246 () Bool)

(assert (=> b!3587678 (= e!2219853 (and (inv!51035 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451))))) (value!179007 (_1!21929 (get!12148 lt!1230451)))))) tp!1098246))))

(declare-fun result!249568 () Bool)

(assert (=> tb!204671 (= result!249568 (and (inv!51036 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451))))) (value!179007 (_1!21929 (get!12148 lt!1230451))))) e!2219853))))

(assert (= tb!204671 b!3587678))

(declare-fun m!4081093 () Bool)

(assert (=> b!3587678 m!4081093))

(declare-fun m!4081095 () Bool)

(assert (=> tb!204671 m!4081095))

(assert (=> d!1057689 t!290739))

(declare-fun b_and!259193 () Bool)

(assert (= b_and!259185 (and (=> t!290739 result!249568) b_and!259193)))

(declare-fun tb!204673 () Bool)

(declare-fun t!290741 () Bool)

(assert (=> (and b!3586811 (= (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))) t!290741) tb!204673))

(declare-fun result!249570 () Bool)

(assert (= result!249570 result!249568))

(assert (=> d!1057689 t!290741))

(declare-fun b_and!259195 () Bool)

(assert (= b_and!259187 (and (=> t!290741 result!249570) b_and!259195)))

(declare-fun tb!204675 () Bool)

(declare-fun t!290743 () Bool)

(assert (=> (and b!3586802 (= (toChars!7702 (transformation!5563 rule!403)) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))) t!290743) tb!204675))

(declare-fun result!249572 () Bool)

(assert (= result!249572 result!249568))

(assert (=> d!1057689 t!290743))

(declare-fun b_and!259197 () Bool)

(assert (= b_and!259189 (and (=> t!290743 result!249572) b_and!259197)))

(declare-fun tb!204677 () Bool)

(declare-fun t!290745 () Bool)

(assert (=> (and b!3586803 (= (toChars!7702 (transformation!5563 (h!43122 rules!3307))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))) t!290745) tb!204677))

(declare-fun result!249574 () Bool)

(assert (= result!249574 result!249568))

(assert (=> d!1057689 t!290745))

(declare-fun b_and!259199 () Bool)

(assert (= b_and!259191 (and (=> t!290745 result!249574) b_and!259199)))

(declare-fun tb!204679 () Bool)

(declare-fun t!290747 () Bool)

(assert (=> (and b!3587461 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))) t!290747) tb!204679))

(declare-fun result!249576 () Bool)

(assert (= result!249576 result!249568))

(assert (=> d!1057689 t!290747))

(declare-fun b_and!259201 () Bool)

(assert (= b_and!259183 (and (=> t!290747 result!249576) b_and!259201)))

(declare-fun m!4081097 () Bool)

(assert (=> d!1057689 m!4081097))

(declare-fun m!4081099 () Bool)

(assert (=> d!1057689 m!4081099))

(assert (=> b!3587154 d!1057689))

(assert (=> b!3587154 d!1057651))

(declare-fun d!1057691 () Bool)

(declare-fun res!1448090 () Bool)

(declare-fun e!2219854 () Bool)

(assert (=> d!1057691 (=> res!1448090 e!2219854)))

(assert (=> d!1057691 (= res!1448090 (not (is-Cons!37702 (t!290639 rules!3307))))))

(assert (=> d!1057691 (= (sepAndNonSepRulesDisjointChars!1733 rules!3307 (t!290639 rules!3307)) e!2219854)))

(declare-fun b!3587679 () Bool)

(declare-fun e!2219855 () Bool)

(assert (=> b!3587679 (= e!2219854 e!2219855)))

(declare-fun res!1448091 () Bool)

(assert (=> b!3587679 (=> (not res!1448091) (not e!2219855))))

(assert (=> b!3587679 (= res!1448091 (ruleDisjointCharsFromAllFromOtherType!785 (h!43122 (t!290639 rules!3307)) rules!3307))))

(declare-fun b!3587680 () Bool)

(assert (=> b!3587680 (= e!2219855 (sepAndNonSepRulesDisjointChars!1733 rules!3307 (t!290639 (t!290639 rules!3307))))))

(assert (= (and d!1057691 (not res!1448090)) b!3587679))

(assert (= (and b!3587679 res!1448091) b!3587680))

(declare-fun m!4081101 () Bool)

(assert (=> b!3587679 m!4081101))

(declare-fun m!4081103 () Bool)

(assert (=> b!3587680 m!4081103))

(assert (=> b!3587418 d!1057691))

(declare-fun d!1057693 () Bool)

(declare-fun lt!1230607 () Bool)

(assert (=> d!1057693 (= lt!1230607 (set.member (rule!8277 (_1!21929 (get!12148 lt!1230473))) (content!5361 rules!3307)))))

(declare-fun e!2219856 () Bool)

(assert (=> d!1057693 (= lt!1230607 e!2219856)))

(declare-fun res!1448093 () Bool)

(assert (=> d!1057693 (=> (not res!1448093) (not e!2219856))))

(assert (=> d!1057693 (= res!1448093 (is-Cons!37702 rules!3307))))

(assert (=> d!1057693 (= (contains!7188 rules!3307 (rule!8277 (_1!21929 (get!12148 lt!1230473)))) lt!1230607)))

(declare-fun b!3587681 () Bool)

(declare-fun e!2219857 () Bool)

(assert (=> b!3587681 (= e!2219856 e!2219857)))

(declare-fun res!1448092 () Bool)

(assert (=> b!3587681 (=> res!1448092 e!2219857)))

(assert (=> b!3587681 (= res!1448092 (= (h!43122 rules!3307) (rule!8277 (_1!21929 (get!12148 lt!1230473)))))))

(declare-fun b!3587682 () Bool)

(assert (=> b!3587682 (= e!2219857 (contains!7188 (t!290639 rules!3307) (rule!8277 (_1!21929 (get!12148 lt!1230473)))))))

(assert (= (and d!1057693 res!1448093) b!3587681))

(assert (= (and b!3587681 (not res!1448092)) b!3587682))

(assert (=> d!1057693 m!4080621))

(declare-fun m!4081105 () Bool)

(assert (=> d!1057693 m!4081105))

(declare-fun m!4081107 () Bool)

(assert (=> b!3587682 m!4081107))

(assert (=> b!3587256 d!1057693))

(declare-fun d!1057695 () Bool)

(assert (=> d!1057695 (= (get!12148 lt!1230473) (v!37421 lt!1230473))))

(assert (=> b!3587256 d!1057695))

(declare-fun d!1057697 () Bool)

(declare-fun charsToBigInt!1 (List!37824) Int)

(assert (=> d!1057697 (= (inv!17 (value!179007 token!511)) (= (charsToBigInt!1 (text!40999 (value!179007 token!511))) (value!178999 (value!179007 token!511))))))

(declare-fun bs!570088 () Bool)

(assert (= bs!570088 d!1057697))

(declare-fun m!4081109 () Bool)

(assert (=> bs!570088 m!4081109))

(assert (=> b!3587339 d!1057697))

(declare-fun d!1057699 () Bool)

(assert (=> d!1057699 (= (inv!51028 (tag!6231 (h!43122 (t!290639 rules!3307)))) (= (mod (str.len (value!179006 (tag!6231 (h!43122 (t!290639 rules!3307))))) 2) 0))))

(assert (=> b!3587460 d!1057699))

(declare-fun d!1057701 () Bool)

(declare-fun res!1448094 () Bool)

(declare-fun e!2219858 () Bool)

(assert (=> d!1057701 (=> (not res!1448094) (not e!2219858))))

(assert (=> d!1057701 (= res!1448094 (semiInverseModEq!2358 (toChars!7702 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toValue!7843 (transformation!5563 (h!43122 (t!290639 rules!3307))))))))

(assert (=> d!1057701 (= (inv!51031 (transformation!5563 (h!43122 (t!290639 rules!3307)))) e!2219858)))

(declare-fun b!3587683 () Bool)

(assert (=> b!3587683 (= e!2219858 (equivClasses!2257 (toChars!7702 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toValue!7843 (transformation!5563 (h!43122 (t!290639 rules!3307))))))))

(assert (= (and d!1057701 res!1448094) b!3587683))

(declare-fun m!4081111 () Bool)

(assert (=> d!1057701 m!4081111))

(declare-fun m!4081113 () Bool)

(assert (=> b!3587683 m!4081113))

(assert (=> b!3587460 d!1057701))

(declare-fun d!1057703 () Bool)

(declare-fun lt!1230610 () Int)

(assert (=> d!1057703 (>= lt!1230610 0)))

(declare-fun e!2219861 () Int)

(assert (=> d!1057703 (= lt!1230610 e!2219861)))

(declare-fun c!621415 () Bool)

(assert (=> d!1057703 (= c!621415 (is-Nil!37701 (originalCharacters!6277 token!511)))))

(assert (=> d!1057703 (= (size!28723 (originalCharacters!6277 token!511)) lt!1230610)))

(declare-fun b!3587688 () Bool)

(assert (=> b!3587688 (= e!2219861 0)))

(declare-fun b!3587689 () Bool)

(assert (=> b!3587689 (= e!2219861 (+ 1 (size!28723 (t!290638 (originalCharacters!6277 token!511)))))))

(assert (= (and d!1057703 c!621415) b!3587688))

(assert (= (and d!1057703 (not c!621415)) b!3587689))

(declare-fun m!4081115 () Bool)

(assert (=> b!3587689 m!4081115))

(assert (=> b!3586910 d!1057703))

(declare-fun b!3587692 () Bool)

(declare-fun e!2219864 () Bool)

(assert (=> b!3587692 (= e!2219864 (isPrefix!2926 (tail!5558 (tail!5558 lt!1230283)) (tail!5558 (tail!5558 (++!9379 lt!1230283 (_2!21929 lt!1230275))))))))

(declare-fun b!3587693 () Bool)

(declare-fun e!2219863 () Bool)

(assert (=> b!3587693 (= e!2219863 (>= (size!28723 (tail!5558 (++!9379 lt!1230283 (_2!21929 lt!1230275)))) (size!28723 (tail!5558 lt!1230283))))))

(declare-fun b!3587691 () Bool)

(declare-fun res!1448097 () Bool)

(assert (=> b!3587691 (=> (not res!1448097) (not e!2219864))))

(assert (=> b!3587691 (= res!1448097 (= (head!7483 (tail!5558 lt!1230283)) (head!7483 (tail!5558 (++!9379 lt!1230283 (_2!21929 lt!1230275))))))))

(declare-fun d!1057705 () Bool)

(assert (=> d!1057705 e!2219863))

(declare-fun res!1448098 () Bool)

(assert (=> d!1057705 (=> res!1448098 e!2219863)))

(declare-fun lt!1230611 () Bool)

(assert (=> d!1057705 (= res!1448098 (not lt!1230611))))

(declare-fun e!2219862 () Bool)

(assert (=> d!1057705 (= lt!1230611 e!2219862)))

(declare-fun res!1448096 () Bool)

(assert (=> d!1057705 (=> res!1448096 e!2219862)))

(assert (=> d!1057705 (= res!1448096 (is-Nil!37701 (tail!5558 lt!1230283)))))

(assert (=> d!1057705 (= (isPrefix!2926 (tail!5558 lt!1230283) (tail!5558 (++!9379 lt!1230283 (_2!21929 lt!1230275)))) lt!1230611)))

(declare-fun b!3587690 () Bool)

(assert (=> b!3587690 (= e!2219862 e!2219864)))

(declare-fun res!1448095 () Bool)

(assert (=> b!3587690 (=> (not res!1448095) (not e!2219864))))

(assert (=> b!3587690 (= res!1448095 (not (is-Nil!37701 (tail!5558 (++!9379 lt!1230283 (_2!21929 lt!1230275))))))))

(assert (= (and d!1057705 (not res!1448096)) b!3587690))

(assert (= (and b!3587690 res!1448095) b!3587691))

(assert (= (and b!3587691 res!1448097) b!3587692))

(assert (= (and d!1057705 (not res!1448098)) b!3587693))

(assert (=> b!3587692 m!4080433))

(declare-fun m!4081117 () Bool)

(assert (=> b!3587692 m!4081117))

(assert (=> b!3587692 m!4080435))

(declare-fun m!4081119 () Bool)

(assert (=> b!3587692 m!4081119))

(assert (=> b!3587692 m!4081117))

(assert (=> b!3587692 m!4081119))

(declare-fun m!4081121 () Bool)

(assert (=> b!3587692 m!4081121))

(assert (=> b!3587693 m!4080435))

(declare-fun m!4081123 () Bool)

(assert (=> b!3587693 m!4081123))

(assert (=> b!3587693 m!4080433))

(declare-fun m!4081125 () Bool)

(assert (=> b!3587693 m!4081125))

(assert (=> b!3587691 m!4080433))

(declare-fun m!4081127 () Bool)

(assert (=> b!3587691 m!4081127))

(assert (=> b!3587691 m!4080435))

(declare-fun m!4081129 () Bool)

(assert (=> b!3587691 m!4081129))

(assert (=> b!3587099 d!1057705))

(assert (=> b!3587099 d!1057675))

(declare-fun d!1057707 () Bool)

(assert (=> d!1057707 (= (tail!5558 (++!9379 lt!1230283 (_2!21929 lt!1230275))) (t!290638 (++!9379 lt!1230283 (_2!21929 lt!1230275))))))

(assert (=> b!3587099 d!1057707))

(declare-fun d!1057709 () Bool)

(assert (=> d!1057709 (= (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473)))) (list!13861 (c!621270 (charsOf!3577 (_1!21929 (get!12148 lt!1230473))))))))

(declare-fun bs!570089 () Bool)

(assert (= bs!570089 d!1057709))

(declare-fun m!4081131 () Bool)

(assert (=> bs!570089 m!4081131))

(assert (=> b!3587253 d!1057709))

(declare-fun d!1057711 () Bool)

(declare-fun lt!1230612 () BalanceConc!22546)

(assert (=> d!1057711 (= (list!13859 lt!1230612) (originalCharacters!6277 (_1!21929 (get!12148 lt!1230473))))))

(assert (=> d!1057711 (= lt!1230612 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473))))) (value!179007 (_1!21929 (get!12148 lt!1230473)))))))

(assert (=> d!1057711 (= (charsOf!3577 (_1!21929 (get!12148 lt!1230473))) lt!1230612)))

(declare-fun b_lambda!105991 () Bool)

(assert (=> (not b_lambda!105991) (not d!1057711)))

(declare-fun t!290749 () Bool)

(declare-fun tb!204681 () Bool)

(assert (=> (and b!3586803 (= (toChars!7702 (transformation!5563 (h!43122 rules!3307))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))) t!290749) tb!204681))

(declare-fun b!3587694 () Bool)

(declare-fun e!2219865 () Bool)

(declare-fun tp!1098247 () Bool)

(assert (=> b!3587694 (= e!2219865 (and (inv!51035 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473))))) (value!179007 (_1!21929 (get!12148 lt!1230473)))))) tp!1098247))))

(declare-fun result!249578 () Bool)

(assert (=> tb!204681 (= result!249578 (and (inv!51036 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473))))) (value!179007 (_1!21929 (get!12148 lt!1230473))))) e!2219865))))

(assert (= tb!204681 b!3587694))

(declare-fun m!4081133 () Bool)

(assert (=> b!3587694 m!4081133))

(declare-fun m!4081135 () Bool)

(assert (=> tb!204681 m!4081135))

(assert (=> d!1057711 t!290749))

(declare-fun b_and!259203 () Bool)

(assert (= b_and!259199 (and (=> t!290749 result!249578) b_and!259203)))

(declare-fun t!290751 () Bool)

(declare-fun tb!204683 () Bool)

(assert (=> (and b!3587461 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))) t!290751) tb!204683))

(declare-fun result!249580 () Bool)

(assert (= result!249580 result!249578))

(assert (=> d!1057711 t!290751))

(declare-fun b_and!259205 () Bool)

(assert (= b_and!259201 (and (=> t!290751 result!249580) b_and!259205)))

(declare-fun tb!204685 () Bool)

(declare-fun t!290753 () Bool)

(assert (=> (and b!3586810 (= (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))) t!290753) tb!204685))

(declare-fun result!249582 () Bool)

(assert (= result!249582 result!249578))

(assert (=> d!1057711 t!290753))

(declare-fun b_and!259207 () Bool)

(assert (= b_and!259193 (and (=> t!290753 result!249582) b_and!259207)))

(declare-fun tb!204687 () Bool)

(declare-fun t!290755 () Bool)

(assert (=> (and b!3586802 (= (toChars!7702 (transformation!5563 rule!403)) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))) t!290755) tb!204687))

(declare-fun result!249584 () Bool)

(assert (= result!249584 result!249578))

(assert (=> d!1057711 t!290755))

(declare-fun b_and!259209 () Bool)

(assert (= b_and!259197 (and (=> t!290755 result!249584) b_and!259209)))

(declare-fun tb!204689 () Bool)

(declare-fun t!290757 () Bool)

(assert (=> (and b!3586811 (= (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))) t!290757) tb!204689))

(declare-fun result!249586 () Bool)

(assert (= result!249586 result!249578))

(assert (=> d!1057711 t!290757))

(declare-fun b_and!259211 () Bool)

(assert (= b_and!259195 (and (=> t!290757 result!249586) b_and!259211)))

(declare-fun m!4081137 () Bool)

(assert (=> d!1057711 m!4081137))

(declare-fun m!4081139 () Bool)

(assert (=> d!1057711 m!4081139))

(assert (=> b!3587253 d!1057711))

(assert (=> b!3587253 d!1057695))

(declare-fun d!1057713 () Bool)

(declare-fun charsToBigInt!0 (List!37824 Int) Int)

(assert (=> d!1057713 (= (inv!15 (value!179007 token!511)) (= (charsToBigInt!0 (text!41000 (value!179007 token!511)) 0) (value!179002 (value!179007 token!511))))))

(declare-fun bs!570090 () Bool)

(assert (= bs!570090 d!1057713))

(declare-fun m!4081141 () Bool)

(assert (=> bs!570090 m!4081141))

(assert (=> b!3587335 d!1057713))

(declare-fun b!3587697 () Bool)

(declare-fun e!2219868 () Bool)

(assert (=> b!3587697 (= e!2219868 (isPrefix!2926 (tail!5558 (tail!5558 lt!1230283)) (tail!5558 (tail!5558 lt!1230281))))))

(declare-fun b!3587698 () Bool)

(declare-fun e!2219867 () Bool)

(assert (=> b!3587698 (= e!2219867 (>= (size!28723 (tail!5558 lt!1230281)) (size!28723 (tail!5558 lt!1230283))))))

(declare-fun b!3587696 () Bool)

(declare-fun res!1448101 () Bool)

(assert (=> b!3587696 (=> (not res!1448101) (not e!2219868))))

(assert (=> b!3587696 (= res!1448101 (= (head!7483 (tail!5558 lt!1230283)) (head!7483 (tail!5558 lt!1230281))))))

(declare-fun d!1057715 () Bool)

(assert (=> d!1057715 e!2219867))

(declare-fun res!1448102 () Bool)

(assert (=> d!1057715 (=> res!1448102 e!2219867)))

(declare-fun lt!1230613 () Bool)

(assert (=> d!1057715 (= res!1448102 (not lt!1230613))))

(declare-fun e!2219866 () Bool)

(assert (=> d!1057715 (= lt!1230613 e!2219866)))

(declare-fun res!1448100 () Bool)

(assert (=> d!1057715 (=> res!1448100 e!2219866)))

(assert (=> d!1057715 (= res!1448100 (is-Nil!37701 (tail!5558 lt!1230283)))))

(assert (=> d!1057715 (= (isPrefix!2926 (tail!5558 lt!1230283) (tail!5558 lt!1230281)) lt!1230613)))

(declare-fun b!3587695 () Bool)

(assert (=> b!3587695 (= e!2219866 e!2219868)))

(declare-fun res!1448099 () Bool)

(assert (=> b!3587695 (=> (not res!1448099) (not e!2219868))))

(assert (=> b!3587695 (= res!1448099 (not (is-Nil!37701 (tail!5558 lt!1230281))))))

(assert (= (and d!1057715 (not res!1448100)) b!3587695))

(assert (= (and b!3587695 res!1448099) b!3587696))

(assert (= (and b!3587696 res!1448101) b!3587697))

(assert (= (and d!1057715 (not res!1448102)) b!3587698))

(assert (=> b!3587697 m!4080433))

(assert (=> b!3587697 m!4081117))

(assert (=> b!3587697 m!4080285))

(assert (=> b!3587697 m!4081053))

(assert (=> b!3587697 m!4081117))

(assert (=> b!3587697 m!4081053))

(declare-fun m!4081143 () Bool)

(assert (=> b!3587697 m!4081143))

(assert (=> b!3587698 m!4080285))

(assert (=> b!3587698 m!4081057))

(assert (=> b!3587698 m!4080433))

(assert (=> b!3587698 m!4081125))

(assert (=> b!3587696 m!4080433))

(assert (=> b!3587696 m!4081127))

(assert (=> b!3587696 m!4080285))

(assert (=> b!3587696 m!4081063))

(assert (=> b!3587169 d!1057715))

(assert (=> b!3587169 d!1057675))

(assert (=> b!3587169 d!1057657))

(declare-fun b!3587701 () Bool)

(declare-fun res!1448103 () Bool)

(declare-fun e!2219869 () Bool)

(assert (=> b!3587701 (=> (not res!1448103) (not e!2219869))))

(declare-fun lt!1230614 () List!37825)

(assert (=> b!3587701 (= res!1448103 (= (size!28723 lt!1230614) (+ (size!28723 (t!290638 lt!1230283)) (size!28723 (_2!21929 lt!1230275)))))))

(declare-fun b!3587700 () Bool)

(declare-fun e!2219870 () List!37825)

(assert (=> b!3587700 (= e!2219870 (Cons!37701 (h!43121 (t!290638 lt!1230283)) (++!9379 (t!290638 (t!290638 lt!1230283)) (_2!21929 lt!1230275))))))

(declare-fun b!3587699 () Bool)

(assert (=> b!3587699 (= e!2219870 (_2!21929 lt!1230275))))

(declare-fun d!1057717 () Bool)

(assert (=> d!1057717 e!2219869))

(declare-fun res!1448104 () Bool)

(assert (=> d!1057717 (=> (not res!1448104) (not e!2219869))))

(assert (=> d!1057717 (= res!1448104 (= (content!5358 lt!1230614) (set.union (content!5358 (t!290638 lt!1230283)) (content!5358 (_2!21929 lt!1230275)))))))

(assert (=> d!1057717 (= lt!1230614 e!2219870)))

(declare-fun c!621416 () Bool)

(assert (=> d!1057717 (= c!621416 (is-Nil!37701 (t!290638 lt!1230283)))))

(assert (=> d!1057717 (= (++!9379 (t!290638 lt!1230283) (_2!21929 lt!1230275)) lt!1230614)))

(declare-fun b!3587702 () Bool)

(assert (=> b!3587702 (= e!2219869 (or (not (= (_2!21929 lt!1230275) Nil!37701)) (= lt!1230614 (t!290638 lt!1230283))))))

(assert (= (and d!1057717 c!621416) b!3587699))

(assert (= (and d!1057717 (not c!621416)) b!3587700))

(assert (= (and d!1057717 res!1448104) b!3587701))

(assert (= (and b!3587701 res!1448103) b!3587702))

(declare-fun m!4081145 () Bool)

(assert (=> b!3587701 m!4081145))

(declare-fun m!4081147 () Bool)

(assert (=> b!3587701 m!4081147))

(assert (=> b!3587701 m!4080301))

(declare-fun m!4081149 () Bool)

(assert (=> b!3587700 m!4081149))

(declare-fun m!4081151 () Bool)

(assert (=> d!1057717 m!4081151))

(declare-fun m!4081153 () Bool)

(assert (=> d!1057717 m!4081153))

(assert (=> d!1057717 m!4080309))

(assert (=> b!3586965 d!1057717))

(declare-fun d!1057719 () Bool)

(assert (=> d!1057719 (= (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))) (h!43121 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))

(assert (=> b!3587240 d!1057719))

(assert (=> b!3587405 d!1057643))

(declare-fun bs!570091 () Bool)

(declare-fun d!1057721 () Bool)

(assert (= bs!570091 (and d!1057721 d!1057549)))

(declare-fun lambda!123801 () Int)

(assert (=> bs!570091 (= (and (= (toChars!7702 (transformation!5563 (h!43122 rules!3307))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) (= (toValue!7843 (transformation!5563 (h!43122 rules!3307))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (= lambda!123801 lambda!123792))))

(assert (=> d!1057721 true))

(assert (=> d!1057721 (< (dynLambda!16208 order!20455 (toChars!7702 (transformation!5563 (h!43122 rules!3307)))) (dynLambda!16207 order!20453 lambda!123801))))

(assert (=> d!1057721 true))

(assert (=> d!1057721 (< (dynLambda!16206 order!20451 (toValue!7843 (transformation!5563 (h!43122 rules!3307)))) (dynLambda!16207 order!20453 lambda!123801))))

(declare-fun Forall!1364 (Int) Bool)

(assert (=> d!1057721 (= (semiInverseModEq!2358 (toChars!7702 (transformation!5563 (h!43122 rules!3307))) (toValue!7843 (transformation!5563 (h!43122 rules!3307)))) (Forall!1364 lambda!123801))))

(declare-fun bs!570092 () Bool)

(assert (= bs!570092 d!1057721))

(declare-fun m!4081155 () Bool)

(assert (=> bs!570092 m!4081155))

(assert (=> d!1057415 d!1057721))

(declare-fun d!1057723 () Bool)

(declare-fun e!2219873 () Bool)

(assert (=> d!1057723 e!2219873))

(declare-fun res!1448107 () Bool)

(assert (=> d!1057723 (=> (not res!1448107) (not e!2219873))))

(declare-fun lt!1230617 () BalanceConc!22546)

(assert (=> d!1057723 (= res!1448107 (= (list!13859 lt!1230617) (originalCharacters!6277 (_1!21929 lt!1230275))))))

(declare-fun fromList!792 (List!37825) Conc!11466)

(assert (=> d!1057723 (= lt!1230617 (BalanceConc!22547 (fromList!792 (originalCharacters!6277 (_1!21929 lt!1230275)))))))

(assert (=> d!1057723 (= (fromListB!1898 (originalCharacters!6277 (_1!21929 lt!1230275))) lt!1230617)))

(declare-fun b!3587709 () Bool)

(declare-fun isBalanced!3498 (Conc!11466) Bool)

(assert (=> b!3587709 (= e!2219873 (isBalanced!3498 (fromList!792 (originalCharacters!6277 (_1!21929 lt!1230275)))))))

(assert (= (and d!1057723 res!1448107) b!3587709))

(declare-fun m!4081157 () Bool)

(assert (=> d!1057723 m!4081157))

(declare-fun m!4081159 () Bool)

(assert (=> d!1057723 m!4081159))

(assert (=> b!3587709 m!4081159))

(assert (=> b!3587709 m!4081159))

(declare-fun m!4081161 () Bool)

(assert (=> b!3587709 m!4081161))

(assert (=> d!1057545 d!1057723))

(declare-fun b!3587710 () Bool)

(declare-fun c!621420 () Bool)

(assert (=> b!3587710 (= c!621420 (is-Star!10322 (ite c!621337 (regTwo!21157 (regex!5563 rule!403)) (regOne!21156 (regex!5563 rule!403)))))))

(declare-fun e!2219877 () List!37825)

(declare-fun e!2219874 () List!37825)

(assert (=> b!3587710 (= e!2219877 e!2219874)))

(declare-fun bm!259742 () Bool)

(declare-fun call!259750 () List!37825)

(declare-fun call!259749 () List!37825)

(assert (=> bm!259742 (= call!259750 call!259749)))

(declare-fun call!259747 () List!37825)

(declare-fun c!621421 () Bool)

(declare-fun call!259748 () List!37825)

(declare-fun bm!259743 () Bool)

(assert (=> bm!259743 (= call!259747 (++!9379 (ite c!621421 call!259750 call!259748) (ite c!621421 call!259748 call!259750)))))

(declare-fun b!3587712 () Bool)

(assert (=> b!3587712 (= e!2219877 (Cons!37701 (c!621269 (ite c!621337 (regTwo!21157 (regex!5563 rule!403)) (regOne!21156 (regex!5563 rule!403)))) Nil!37701))))

(declare-fun b!3587713 () Bool)

(declare-fun e!2219875 () List!37825)

(assert (=> b!3587713 (= e!2219875 call!259747)))

(declare-fun b!3587714 () Bool)

(assert (=> b!3587714 (= e!2219874 e!2219875)))

(assert (=> b!3587714 (= c!621421 (is-Union!10322 (ite c!621337 (regTwo!21157 (regex!5563 rule!403)) (regOne!21156 (regex!5563 rule!403)))))))

(declare-fun bm!259744 () Bool)

(assert (=> bm!259744 (= call!259749 (usedCharacters!777 (ite c!621420 (reg!10651 (ite c!621337 (regTwo!21157 (regex!5563 rule!403)) (regOne!21156 (regex!5563 rule!403)))) (ite c!621421 (regOne!21157 (ite c!621337 (regTwo!21157 (regex!5563 rule!403)) (regOne!21156 (regex!5563 rule!403)))) (regTwo!21156 (ite c!621337 (regTwo!21157 (regex!5563 rule!403)) (regOne!21156 (regex!5563 rule!403))))))))))

(declare-fun b!3587715 () Bool)

(declare-fun e!2219876 () List!37825)

(assert (=> b!3587715 (= e!2219876 e!2219877)))

(declare-fun c!621418 () Bool)

(assert (=> b!3587715 (= c!621418 (is-ElementMatch!10322 (ite c!621337 (regTwo!21157 (regex!5563 rule!403)) (regOne!21156 (regex!5563 rule!403)))))))

(declare-fun b!3587716 () Bool)

(assert (=> b!3587716 (= e!2219876 Nil!37701)))

(declare-fun b!3587711 () Bool)

(assert (=> b!3587711 (= e!2219875 call!259747)))

(declare-fun d!1057725 () Bool)

(declare-fun c!621419 () Bool)

(assert (=> d!1057725 (= c!621419 (or (is-EmptyExpr!10322 (ite c!621337 (regTwo!21157 (regex!5563 rule!403)) (regOne!21156 (regex!5563 rule!403)))) (is-EmptyLang!10322 (ite c!621337 (regTwo!21157 (regex!5563 rule!403)) (regOne!21156 (regex!5563 rule!403))))))))

(assert (=> d!1057725 (= (usedCharacters!777 (ite c!621337 (regTwo!21157 (regex!5563 rule!403)) (regOne!21156 (regex!5563 rule!403)))) e!2219876)))

(declare-fun b!3587717 () Bool)

(assert (=> b!3587717 (= e!2219874 call!259749)))

(declare-fun bm!259745 () Bool)

(assert (=> bm!259745 (= call!259748 (usedCharacters!777 (ite c!621421 (regTwo!21157 (ite c!621337 (regTwo!21157 (regex!5563 rule!403)) (regOne!21156 (regex!5563 rule!403)))) (regOne!21156 (ite c!621337 (regTwo!21157 (regex!5563 rule!403)) (regOne!21156 (regex!5563 rule!403)))))))))

(assert (= (and d!1057725 c!621419) b!3587716))

(assert (= (and d!1057725 (not c!621419)) b!3587715))

(assert (= (and b!3587715 c!621418) b!3587712))

(assert (= (and b!3587715 (not c!621418)) b!3587710))

(assert (= (and b!3587710 c!621420) b!3587717))

(assert (= (and b!3587710 (not c!621420)) b!3587714))

(assert (= (and b!3587714 c!621421) b!3587713))

(assert (= (and b!3587714 (not c!621421)) b!3587711))

(assert (= (or b!3587713 b!3587711) bm!259742))

(assert (= (or b!3587713 b!3587711) bm!259745))

(assert (= (or b!3587713 b!3587711) bm!259743))

(assert (= (or b!3587717 bm!259742) bm!259744))

(declare-fun m!4081163 () Bool)

(assert (=> bm!259743 m!4081163))

(declare-fun m!4081165 () Bool)

(assert (=> bm!259744 m!4081165))

(declare-fun m!4081167 () Bool)

(assert (=> bm!259745 m!4081167))

(assert (=> bm!259711 d!1057725))

(declare-fun d!1057727 () Bool)

(assert (=> d!1057727 (= (isEmpty!22210 (tail!5558 lt!1230282)) (is-Nil!37701 (tail!5558 lt!1230282)))))

(assert (=> b!3587401 d!1057727))

(assert (=> b!3587401 d!1057655))

(assert (=> b!3586942 d!1057425))

(assert (=> b!3586942 d!1057509))

(assert (=> b!3586942 d!1057471))

(declare-fun d!1057729 () Bool)

(assert (=> d!1057729 (= (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275))))) (v!37422 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275))))))))

(assert (=> b!3586942 d!1057729))

(declare-fun b!3587718 () Bool)

(declare-fun e!2219879 () Bool)

(declare-fun e!2219880 () Bool)

(assert (=> b!3587718 (= e!2219879 e!2219880)))

(declare-fun res!1448115 () Bool)

(assert (=> b!3587718 (=> res!1448115 e!2219880)))

(declare-fun call!259751 () Bool)

(assert (=> b!3587718 (= res!1448115 call!259751)))

(declare-fun d!1057731 () Bool)

(declare-fun e!2219878 () Bool)

(assert (=> d!1057731 e!2219878))

(declare-fun c!621423 () Bool)

(assert (=> d!1057731 (= c!621423 (is-EmptyExpr!10322 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275))))))))))

(declare-fun lt!1230618 () Bool)

(declare-fun e!2219882 () Bool)

(assert (=> d!1057731 (= lt!1230618 e!2219882)))

(declare-fun c!621424 () Bool)

(assert (=> d!1057731 (= c!621424 (isEmpty!22210 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))

(assert (=> d!1057731 (validRegex!4716 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))))))

(assert (=> d!1057731 (= (matchR!4891 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))) (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))) lt!1230618)))

(declare-fun e!2219881 () Bool)

(declare-fun b!3587719 () Bool)

(assert (=> b!3587719 (= e!2219881 (= (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))) (c!621269 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))))))))

(declare-fun b!3587720 () Bool)

(declare-fun res!1448109 () Bool)

(assert (=> b!3587720 (=> res!1448109 e!2219880)))

(assert (=> b!3587720 (= res!1448109 (not (isEmpty!22210 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))))

(declare-fun b!3587721 () Bool)

(declare-fun res!1448111 () Bool)

(assert (=> b!3587721 (=> (not res!1448111) (not e!2219881))))

(assert (=> b!3587721 (= res!1448111 (not call!259751))))

(declare-fun bm!259746 () Bool)

(assert (=> bm!259746 (= call!259751 (isEmpty!22210 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))

(declare-fun b!3587722 () Bool)

(declare-fun e!2219884 () Bool)

(assert (=> b!3587722 (= e!2219878 e!2219884)))

(declare-fun c!621422 () Bool)

(assert (=> b!3587722 (= c!621422 (is-EmptyLang!10322 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275))))))))))

(declare-fun b!3587723 () Bool)

(assert (=> b!3587723 (= e!2219884 (not lt!1230618))))

(declare-fun b!3587724 () Bool)

(assert (=> b!3587724 (= e!2219880 (not (= (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))) (c!621269 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275))))))))))))

(declare-fun b!3587725 () Bool)

(declare-fun res!1448108 () Bool)

(declare-fun e!2219883 () Bool)

(assert (=> b!3587725 (=> res!1448108 e!2219883)))

(assert (=> b!3587725 (= res!1448108 e!2219881)))

(declare-fun res!1448113 () Bool)

(assert (=> b!3587725 (=> (not res!1448113) (not e!2219881))))

(assert (=> b!3587725 (= res!1448113 lt!1230618)))

(declare-fun b!3587726 () Bool)

(declare-fun res!1448114 () Bool)

(assert (=> b!3587726 (=> (not res!1448114) (not e!2219881))))

(assert (=> b!3587726 (= res!1448114 (isEmpty!22210 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))))))

(declare-fun b!3587727 () Bool)

(declare-fun res!1448110 () Bool)

(assert (=> b!3587727 (=> res!1448110 e!2219883)))

(assert (=> b!3587727 (= res!1448110 (not (is-ElementMatch!10322 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))))))))

(assert (=> b!3587727 (= e!2219884 e!2219883)))

(declare-fun b!3587728 () Bool)

(assert (=> b!3587728 (= e!2219882 (matchR!4891 (derivativeStep!3109 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))) (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))) (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))))))

(declare-fun b!3587729 () Bool)

(assert (=> b!3587729 (= e!2219883 e!2219879)))

(declare-fun res!1448112 () Bool)

(assert (=> b!3587729 (=> (not res!1448112) (not e!2219879))))

(assert (=> b!3587729 (= res!1448112 (not lt!1230618))))

(declare-fun b!3587730 () Bool)

(assert (=> b!3587730 (= e!2219882 (nullable!3560 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275))))))))))

(declare-fun b!3587731 () Bool)

(assert (=> b!3587731 (= e!2219878 (= lt!1230618 call!259751))))

(assert (= (and d!1057731 c!621424) b!3587730))

(assert (= (and d!1057731 (not c!621424)) b!3587728))

(assert (= (and d!1057731 c!621423) b!3587731))

(assert (= (and d!1057731 (not c!621423)) b!3587722))

(assert (= (and b!3587722 c!621422) b!3587723))

(assert (= (and b!3587722 (not c!621422)) b!3587727))

(assert (= (and b!3587727 (not res!1448110)) b!3587725))

(assert (= (and b!3587725 res!1448113) b!3587721))

(assert (= (and b!3587721 res!1448111) b!3587726))

(assert (= (and b!3587726 res!1448114) b!3587719))

(assert (= (and b!3587725 (not res!1448108)) b!3587729))

(assert (= (and b!3587729 res!1448112) b!3587718))

(assert (= (and b!3587718 (not res!1448115)) b!3587720))

(assert (= (and b!3587720 (not res!1448109)) b!3587724))

(assert (= (or b!3587731 b!3587718 b!3587721) bm!259746))

(assert (=> b!3587719 m!4080049))

(assert (=> b!3587719 m!4080567))

(assert (=> b!3587726 m!4080049))

(assert (=> b!3587726 m!4080569))

(assert (=> b!3587726 m!4080569))

(assert (=> b!3587726 m!4080571))

(assert (=> bm!259746 m!4080049))

(assert (=> bm!259746 m!4080573))

(assert (=> b!3587724 m!4080049))

(assert (=> b!3587724 m!4080567))

(assert (=> b!3587720 m!4080049))

(assert (=> b!3587720 m!4080569))

(assert (=> b!3587720 m!4080569))

(assert (=> b!3587720 m!4080571))

(assert (=> b!3587728 m!4080049))

(assert (=> b!3587728 m!4080567))

(assert (=> b!3587728 m!4080567))

(declare-fun m!4081169 () Bool)

(assert (=> b!3587728 m!4081169))

(assert (=> b!3587728 m!4080049))

(assert (=> b!3587728 m!4080569))

(assert (=> b!3587728 m!4081169))

(assert (=> b!3587728 m!4080569))

(declare-fun m!4081171 () Bool)

(assert (=> b!3587728 m!4081171))

(assert (=> d!1057731 m!4080049))

(assert (=> d!1057731 m!4080573))

(declare-fun m!4081173 () Bool)

(assert (=> d!1057731 m!4081173))

(declare-fun m!4081175 () Bool)

(assert (=> b!3587730 m!4081175))

(assert (=> b!3586942 d!1057731))

(declare-fun b!3587732 () Bool)

(declare-fun e!2219886 () Bool)

(declare-fun e!2219887 () Bool)

(assert (=> b!3587732 (= e!2219886 e!2219887)))

(declare-fun res!1448123 () Bool)

(assert (=> b!3587732 (=> res!1448123 e!2219887)))

(declare-fun call!259752 () Bool)

(assert (=> b!3587732 (= res!1448123 call!259752)))

(declare-fun d!1057733 () Bool)

(declare-fun e!2219885 () Bool)

(assert (=> d!1057733 e!2219885))

(declare-fun c!621426 () Bool)

(assert (=> d!1057733 (= c!621426 (is-EmptyExpr!10322 (derivativeStep!3109 (regex!5563 (rule!8277 (_1!21929 lt!1230275))) (head!7483 lt!1230283))))))

(declare-fun lt!1230619 () Bool)

(declare-fun e!2219889 () Bool)

(assert (=> d!1057733 (= lt!1230619 e!2219889)))

(declare-fun c!621427 () Bool)

(assert (=> d!1057733 (= c!621427 (isEmpty!22210 (tail!5558 lt!1230283)))))

(assert (=> d!1057733 (validRegex!4716 (derivativeStep!3109 (regex!5563 (rule!8277 (_1!21929 lt!1230275))) (head!7483 lt!1230283)))))

(assert (=> d!1057733 (= (matchR!4891 (derivativeStep!3109 (regex!5563 (rule!8277 (_1!21929 lt!1230275))) (head!7483 lt!1230283)) (tail!5558 lt!1230283)) lt!1230619)))

(declare-fun b!3587733 () Bool)

(declare-fun e!2219888 () Bool)

(assert (=> b!3587733 (= e!2219888 (= (head!7483 (tail!5558 lt!1230283)) (c!621269 (derivativeStep!3109 (regex!5563 (rule!8277 (_1!21929 lt!1230275))) (head!7483 lt!1230283)))))))

(declare-fun b!3587734 () Bool)

(declare-fun res!1448117 () Bool)

(assert (=> b!3587734 (=> res!1448117 e!2219887)))

(assert (=> b!3587734 (= res!1448117 (not (isEmpty!22210 (tail!5558 (tail!5558 lt!1230283)))))))

(declare-fun b!3587735 () Bool)

(declare-fun res!1448119 () Bool)

(assert (=> b!3587735 (=> (not res!1448119) (not e!2219888))))

(assert (=> b!3587735 (= res!1448119 (not call!259752))))

(declare-fun bm!259747 () Bool)

(assert (=> bm!259747 (= call!259752 (isEmpty!22210 (tail!5558 lt!1230283)))))

(declare-fun b!3587736 () Bool)

(declare-fun e!2219891 () Bool)

(assert (=> b!3587736 (= e!2219885 e!2219891)))

(declare-fun c!621425 () Bool)

(assert (=> b!3587736 (= c!621425 (is-EmptyLang!10322 (derivativeStep!3109 (regex!5563 (rule!8277 (_1!21929 lt!1230275))) (head!7483 lt!1230283))))))

(declare-fun b!3587737 () Bool)

(assert (=> b!3587737 (= e!2219891 (not lt!1230619))))

(declare-fun b!3587738 () Bool)

(assert (=> b!3587738 (= e!2219887 (not (= (head!7483 (tail!5558 lt!1230283)) (c!621269 (derivativeStep!3109 (regex!5563 (rule!8277 (_1!21929 lt!1230275))) (head!7483 lt!1230283))))))))

(declare-fun b!3587739 () Bool)

(declare-fun res!1448116 () Bool)

(declare-fun e!2219890 () Bool)

(assert (=> b!3587739 (=> res!1448116 e!2219890)))

(assert (=> b!3587739 (= res!1448116 e!2219888)))

(declare-fun res!1448121 () Bool)

(assert (=> b!3587739 (=> (not res!1448121) (not e!2219888))))

(assert (=> b!3587739 (= res!1448121 lt!1230619)))

(declare-fun b!3587740 () Bool)

(declare-fun res!1448122 () Bool)

(assert (=> b!3587740 (=> (not res!1448122) (not e!2219888))))

(assert (=> b!3587740 (= res!1448122 (isEmpty!22210 (tail!5558 (tail!5558 lt!1230283))))))

(declare-fun b!3587741 () Bool)

(declare-fun res!1448118 () Bool)

(assert (=> b!3587741 (=> res!1448118 e!2219890)))

(assert (=> b!3587741 (= res!1448118 (not (is-ElementMatch!10322 (derivativeStep!3109 (regex!5563 (rule!8277 (_1!21929 lt!1230275))) (head!7483 lt!1230283)))))))

(assert (=> b!3587741 (= e!2219891 e!2219890)))

(declare-fun b!3587742 () Bool)

(assert (=> b!3587742 (= e!2219889 (matchR!4891 (derivativeStep!3109 (derivativeStep!3109 (regex!5563 (rule!8277 (_1!21929 lt!1230275))) (head!7483 lt!1230283)) (head!7483 (tail!5558 lt!1230283))) (tail!5558 (tail!5558 lt!1230283))))))

(declare-fun b!3587743 () Bool)

(assert (=> b!3587743 (= e!2219890 e!2219886)))

(declare-fun res!1448120 () Bool)

(assert (=> b!3587743 (=> (not res!1448120) (not e!2219886))))

(assert (=> b!3587743 (= res!1448120 (not lt!1230619))))

(declare-fun b!3587744 () Bool)

(assert (=> b!3587744 (= e!2219889 (nullable!3560 (derivativeStep!3109 (regex!5563 (rule!8277 (_1!21929 lt!1230275))) (head!7483 lt!1230283))))))

(declare-fun b!3587745 () Bool)

(assert (=> b!3587745 (= e!2219885 (= lt!1230619 call!259752))))

(assert (= (and d!1057733 c!621427) b!3587744))

(assert (= (and d!1057733 (not c!621427)) b!3587742))

(assert (= (and d!1057733 c!621426) b!3587745))

(assert (= (and d!1057733 (not c!621426)) b!3587736))

(assert (= (and b!3587736 c!621425) b!3587737))

(assert (= (and b!3587736 (not c!621425)) b!3587741))

(assert (= (and b!3587741 (not res!1448118)) b!3587739))

(assert (= (and b!3587739 res!1448121) b!3587735))

(assert (= (and b!3587735 res!1448119) b!3587740))

(assert (= (and b!3587740 res!1448122) b!3587733))

(assert (= (and b!3587739 (not res!1448116)) b!3587743))

(assert (= (and b!3587743 res!1448120) b!3587732))

(assert (= (and b!3587732 (not res!1448123)) b!3587734))

(assert (= (and b!3587734 (not res!1448117)) b!3587738))

(assert (= (or b!3587745 b!3587732 b!3587735) bm!259747))

(assert (=> b!3587733 m!4080433))

(assert (=> b!3587733 m!4081127))

(assert (=> b!3587740 m!4080433))

(assert (=> b!3587740 m!4081117))

(assert (=> b!3587740 m!4081117))

(declare-fun m!4081177 () Bool)

(assert (=> b!3587740 m!4081177))

(assert (=> bm!259747 m!4080433))

(assert (=> bm!259747 m!4080635))

(assert (=> b!3587738 m!4080433))

(assert (=> b!3587738 m!4081127))

(assert (=> b!3587734 m!4080433))

(assert (=> b!3587734 m!4081117))

(assert (=> b!3587734 m!4081117))

(assert (=> b!3587734 m!4081177))

(assert (=> b!3587742 m!4080433))

(assert (=> b!3587742 m!4081127))

(assert (=> b!3587742 m!4080639))

(assert (=> b!3587742 m!4081127))

(declare-fun m!4081179 () Bool)

(assert (=> b!3587742 m!4081179))

(assert (=> b!3587742 m!4080433))

(assert (=> b!3587742 m!4081117))

(assert (=> b!3587742 m!4081179))

(assert (=> b!3587742 m!4081117))

(declare-fun m!4081181 () Bool)

(assert (=> b!3587742 m!4081181))

(assert (=> d!1057733 m!4080433))

(assert (=> d!1057733 m!4080635))

(assert (=> d!1057733 m!4080639))

(declare-fun m!4081183 () Bool)

(assert (=> d!1057733 m!4081183))

(assert (=> b!3587744 m!4080639))

(declare-fun m!4081185 () Bool)

(assert (=> b!3587744 m!4081185))

(assert (=> b!3587301 d!1057733))

(declare-fun b!3587766 () Bool)

(declare-fun c!621439 () Bool)

(assert (=> b!3587766 (= c!621439 (nullable!3560 (regOne!21156 (regex!5563 (rule!8277 (_1!21929 lt!1230275))))))))

(declare-fun e!2219903 () Regex!10322)

(declare-fun e!2219906 () Regex!10322)

(assert (=> b!3587766 (= e!2219903 e!2219906)))

(declare-fun call!259762 () Regex!10322)

(declare-fun b!3587767 () Bool)

(declare-fun call!259761 () Regex!10322)

(assert (=> b!3587767 (= e!2219906 (Union!10322 (Concat!16116 call!259762 (regTwo!21156 (regex!5563 (rule!8277 (_1!21929 lt!1230275))))) call!259761))))

(declare-fun b!3587768 () Bool)

(assert (=> b!3587768 (= e!2219906 (Union!10322 (Concat!16116 call!259762 (regTwo!21156 (regex!5563 (rule!8277 (_1!21929 lt!1230275))))) EmptyLang!10322))))

(declare-fun b!3587769 () Bool)

(declare-fun e!2219902 () Regex!10322)

(declare-fun e!2219904 () Regex!10322)

(assert (=> b!3587769 (= e!2219902 e!2219904)))

(declare-fun c!621441 () Bool)

(assert (=> b!3587769 (= c!621441 (is-ElementMatch!10322 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))))))

(declare-fun b!3587770 () Bool)

(declare-fun c!621438 () Bool)

(assert (=> b!3587770 (= c!621438 (is-Union!10322 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))))))

(declare-fun e!2219905 () Regex!10322)

(assert (=> b!3587770 (= e!2219904 e!2219905)))

(declare-fun d!1057735 () Bool)

(declare-fun lt!1230622 () Regex!10322)

(assert (=> d!1057735 (validRegex!4716 lt!1230622)))

(assert (=> d!1057735 (= lt!1230622 e!2219902)))

(declare-fun c!621440 () Bool)

(assert (=> d!1057735 (= c!621440 (or (is-EmptyExpr!10322 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))) (is-EmptyLang!10322 (regex!5563 (rule!8277 (_1!21929 lt!1230275))))))))

(assert (=> d!1057735 (validRegex!4716 (regex!5563 (rule!8277 (_1!21929 lt!1230275))))))

(assert (=> d!1057735 (= (derivativeStep!3109 (regex!5563 (rule!8277 (_1!21929 lt!1230275))) (head!7483 lt!1230283)) lt!1230622)))

(declare-fun bm!259756 () Bool)

(assert (=> bm!259756 (= call!259761 (derivativeStep!3109 (ite c!621438 (regTwo!21157 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))) (regTwo!21156 (regex!5563 (rule!8277 (_1!21929 lt!1230275))))) (head!7483 lt!1230283)))))

(declare-fun b!3587771 () Bool)

(assert (=> b!3587771 (= e!2219904 (ite (= (head!7483 lt!1230283) (c!621269 (regex!5563 (rule!8277 (_1!21929 lt!1230275))))) EmptyExpr!10322 EmptyLang!10322))))

(declare-fun b!3587772 () Bool)

(declare-fun call!259763 () Regex!10322)

(assert (=> b!3587772 (= e!2219903 (Concat!16116 call!259763 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))))))

(declare-fun b!3587773 () Bool)

(assert (=> b!3587773 (= e!2219902 EmptyLang!10322)))

(declare-fun call!259764 () Regex!10322)

(declare-fun bm!259757 () Bool)

(declare-fun c!621442 () Bool)

(assert (=> bm!259757 (= call!259764 (derivativeStep!3109 (ite c!621438 (regOne!21157 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))) (ite c!621442 (reg!10651 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))) (regOne!21156 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))))) (head!7483 lt!1230283)))))

(declare-fun bm!259758 () Bool)

(assert (=> bm!259758 (= call!259763 call!259764)))

(declare-fun b!3587774 () Bool)

(assert (=> b!3587774 (= e!2219905 e!2219903)))

(assert (=> b!3587774 (= c!621442 (is-Star!10322 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))))))

(declare-fun bm!259759 () Bool)

(assert (=> bm!259759 (= call!259762 call!259763)))

(declare-fun b!3587775 () Bool)

(assert (=> b!3587775 (= e!2219905 (Union!10322 call!259764 call!259761))))

(assert (= (and d!1057735 c!621440) b!3587773))

(assert (= (and d!1057735 (not c!621440)) b!3587769))

(assert (= (and b!3587769 c!621441) b!3587771))

(assert (= (and b!3587769 (not c!621441)) b!3587770))

(assert (= (and b!3587770 c!621438) b!3587775))

(assert (= (and b!3587770 (not c!621438)) b!3587774))

(assert (= (and b!3587774 c!621442) b!3587772))

(assert (= (and b!3587774 (not c!621442)) b!3587766))

(assert (= (and b!3587766 c!621439) b!3587767))

(assert (= (and b!3587766 (not c!621439)) b!3587768))

(assert (= (or b!3587767 b!3587768) bm!259759))

(assert (= (or b!3587772 bm!259759) bm!259758))

(assert (= (or b!3587775 b!3587767) bm!259756))

(assert (= (or b!3587775 bm!259758) bm!259757))

(declare-fun m!4081187 () Bool)

(assert (=> b!3587766 m!4081187))

(declare-fun m!4081189 () Bool)

(assert (=> d!1057735 m!4081189))

(assert (=> d!1057735 m!4080643))

(assert (=> bm!259756 m!4080441))

(declare-fun m!4081191 () Bool)

(assert (=> bm!259756 m!4081191))

(assert (=> bm!259757 m!4080441))

(declare-fun m!4081193 () Bool)

(assert (=> bm!259757 m!4081193))

(assert (=> b!3587301 d!1057735))

(declare-fun d!1057737 () Bool)

(assert (=> d!1057737 (= (head!7483 lt!1230283) (h!43121 lt!1230283))))

(assert (=> b!3587301 d!1057737))

(assert (=> b!3587301 d!1057675))

(declare-fun d!1057739 () Bool)

(declare-fun lt!1230623 () Int)

(assert (=> d!1057739 (>= lt!1230623 0)))

(declare-fun e!2219907 () Int)

(assert (=> d!1057739 (= lt!1230623 e!2219907)))

(declare-fun c!621443 () Bool)

(assert (=> d!1057739 (= c!621443 (is-Nil!37701 (_2!21929 (get!12148 lt!1230451))))))

(assert (=> d!1057739 (= (size!28723 (_2!21929 (get!12148 lt!1230451))) lt!1230623)))

(declare-fun b!3587776 () Bool)

(assert (=> b!3587776 (= e!2219907 0)))

(declare-fun b!3587777 () Bool)

(assert (=> b!3587777 (= e!2219907 (+ 1 (size!28723 (t!290638 (_2!21929 (get!12148 lt!1230451))))))))

(assert (= (and d!1057739 c!621443) b!3587776))

(assert (= (and d!1057739 (not c!621443)) b!3587777))

(declare-fun m!4081195 () Bool)

(assert (=> b!3587777 m!4081195))

(assert (=> b!3587162 d!1057739))

(assert (=> b!3587162 d!1057651))

(declare-fun d!1057741 () Bool)

(declare-fun lt!1230624 () Int)

(assert (=> d!1057741 (>= lt!1230624 0)))

(declare-fun e!2219908 () Int)

(assert (=> d!1057741 (= lt!1230624 e!2219908)))

(declare-fun c!621444 () Bool)

(assert (=> d!1057741 (= c!621444 (is-Nil!37701 lt!1230281))))

(assert (=> d!1057741 (= (size!28723 lt!1230281) lt!1230624)))

(declare-fun b!3587778 () Bool)

(assert (=> b!3587778 (= e!2219908 0)))

(declare-fun b!3587779 () Bool)

(assert (=> b!3587779 (= e!2219908 (+ 1 (size!28723 (t!290638 lt!1230281))))))

(assert (= (and d!1057741 c!621444) b!3587778))

(assert (= (and d!1057741 (not c!621444)) b!3587779))

(declare-fun m!4081197 () Bool)

(assert (=> b!3587779 m!4081197))

(assert (=> b!3587162 d!1057741))

(declare-fun b!3587782 () Bool)

(declare-fun res!1448124 () Bool)

(declare-fun e!2219909 () Bool)

(assert (=> b!3587782 (=> (not res!1448124) (not e!2219909))))

(declare-fun lt!1230625 () List!37825)

(assert (=> b!3587782 (= res!1448124 (= (size!28723 lt!1230625) (+ (size!28723 (t!290638 lt!1230282)) (size!28723 suffix!1395))))))

(declare-fun b!3587781 () Bool)

(declare-fun e!2219910 () List!37825)

(assert (=> b!3587781 (= e!2219910 (Cons!37701 (h!43121 (t!290638 lt!1230282)) (++!9379 (t!290638 (t!290638 lt!1230282)) suffix!1395)))))

(declare-fun b!3587780 () Bool)

(assert (=> b!3587780 (= e!2219910 suffix!1395)))

(declare-fun d!1057743 () Bool)

(assert (=> d!1057743 e!2219909))

(declare-fun res!1448125 () Bool)

(assert (=> d!1057743 (=> (not res!1448125) (not e!2219909))))

(assert (=> d!1057743 (= res!1448125 (= (content!5358 lt!1230625) (set.union (content!5358 (t!290638 lt!1230282)) (content!5358 suffix!1395))))))

(assert (=> d!1057743 (= lt!1230625 e!2219910)))

(declare-fun c!621445 () Bool)

(assert (=> d!1057743 (= c!621445 (is-Nil!37701 (t!290638 lt!1230282)))))

(assert (=> d!1057743 (= (++!9379 (t!290638 lt!1230282) suffix!1395) lt!1230625)))

(declare-fun b!3587783 () Bool)

(assert (=> b!3587783 (= e!2219909 (or (not (= suffix!1395 Nil!37701)) (= lt!1230625 (t!290638 lt!1230282))))))

(assert (= (and d!1057743 c!621445) b!3587780))

(assert (= (and d!1057743 (not c!621445)) b!3587781))

(assert (= (and d!1057743 res!1448125) b!3587782))

(assert (= (and b!3587782 res!1448124) b!3587783))

(declare-fun m!4081199 () Bool)

(assert (=> b!3587782 m!4081199))

(declare-fun m!4081201 () Bool)

(assert (=> b!3587782 m!4081201))

(assert (=> b!3587782 m!4080515))

(declare-fun m!4081203 () Bool)

(assert (=> b!3587781 m!4081203))

(declare-fun m!4081205 () Bool)

(assert (=> d!1057743 m!4081205))

(declare-fun m!4081207 () Bool)

(assert (=> d!1057743 m!4081207))

(assert (=> d!1057743 m!4080523))

(assert (=> b!3587164 d!1057743))

(declare-fun b!3587784 () Bool)

(declare-fun c!621448 () Bool)

(assert (=> b!3587784 (= c!621448 (is-Star!10322 (ite c!621336 (reg!10651 (regex!5563 rule!403)) (ite c!621337 (regOne!21157 (regex!5563 rule!403)) (regTwo!21156 (regex!5563 rule!403))))))))

(declare-fun e!2219914 () List!37825)

(declare-fun e!2219911 () List!37825)

(assert (=> b!3587784 (= e!2219914 e!2219911)))

(declare-fun bm!259760 () Bool)

(declare-fun call!259768 () List!37825)

(declare-fun call!259767 () List!37825)

(assert (=> bm!259760 (= call!259768 call!259767)))

(declare-fun c!621449 () Bool)

(declare-fun call!259765 () List!37825)

(declare-fun call!259766 () List!37825)

(declare-fun bm!259761 () Bool)

(assert (=> bm!259761 (= call!259765 (++!9379 (ite c!621449 call!259768 call!259766) (ite c!621449 call!259766 call!259768)))))

(declare-fun b!3587786 () Bool)

(assert (=> b!3587786 (= e!2219914 (Cons!37701 (c!621269 (ite c!621336 (reg!10651 (regex!5563 rule!403)) (ite c!621337 (regOne!21157 (regex!5563 rule!403)) (regTwo!21156 (regex!5563 rule!403))))) Nil!37701))))

(declare-fun b!3587787 () Bool)

(declare-fun e!2219912 () List!37825)

(assert (=> b!3587787 (= e!2219912 call!259765)))

(declare-fun b!3587788 () Bool)

(assert (=> b!3587788 (= e!2219911 e!2219912)))

(assert (=> b!3587788 (= c!621449 (is-Union!10322 (ite c!621336 (reg!10651 (regex!5563 rule!403)) (ite c!621337 (regOne!21157 (regex!5563 rule!403)) (regTwo!21156 (regex!5563 rule!403))))))))

(declare-fun bm!259762 () Bool)

(assert (=> bm!259762 (= call!259767 (usedCharacters!777 (ite c!621448 (reg!10651 (ite c!621336 (reg!10651 (regex!5563 rule!403)) (ite c!621337 (regOne!21157 (regex!5563 rule!403)) (regTwo!21156 (regex!5563 rule!403))))) (ite c!621449 (regOne!21157 (ite c!621336 (reg!10651 (regex!5563 rule!403)) (ite c!621337 (regOne!21157 (regex!5563 rule!403)) (regTwo!21156 (regex!5563 rule!403))))) (regTwo!21156 (ite c!621336 (reg!10651 (regex!5563 rule!403)) (ite c!621337 (regOne!21157 (regex!5563 rule!403)) (regTwo!21156 (regex!5563 rule!403)))))))))))

(declare-fun b!3587789 () Bool)

(declare-fun e!2219913 () List!37825)

(assert (=> b!3587789 (= e!2219913 e!2219914)))

(declare-fun c!621446 () Bool)

(assert (=> b!3587789 (= c!621446 (is-ElementMatch!10322 (ite c!621336 (reg!10651 (regex!5563 rule!403)) (ite c!621337 (regOne!21157 (regex!5563 rule!403)) (regTwo!21156 (regex!5563 rule!403))))))))

(declare-fun b!3587790 () Bool)

(assert (=> b!3587790 (= e!2219913 Nil!37701)))

(declare-fun b!3587785 () Bool)

(assert (=> b!3587785 (= e!2219912 call!259765)))

(declare-fun d!1057745 () Bool)

(declare-fun c!621447 () Bool)

(assert (=> d!1057745 (= c!621447 (or (is-EmptyExpr!10322 (ite c!621336 (reg!10651 (regex!5563 rule!403)) (ite c!621337 (regOne!21157 (regex!5563 rule!403)) (regTwo!21156 (regex!5563 rule!403))))) (is-EmptyLang!10322 (ite c!621336 (reg!10651 (regex!5563 rule!403)) (ite c!621337 (regOne!21157 (regex!5563 rule!403)) (regTwo!21156 (regex!5563 rule!403)))))))))

(assert (=> d!1057745 (= (usedCharacters!777 (ite c!621336 (reg!10651 (regex!5563 rule!403)) (ite c!621337 (regOne!21157 (regex!5563 rule!403)) (regTwo!21156 (regex!5563 rule!403))))) e!2219913)))

(declare-fun b!3587791 () Bool)

(assert (=> b!3587791 (= e!2219911 call!259767)))

(declare-fun bm!259763 () Bool)

(assert (=> bm!259763 (= call!259766 (usedCharacters!777 (ite c!621449 (regTwo!21157 (ite c!621336 (reg!10651 (regex!5563 rule!403)) (ite c!621337 (regOne!21157 (regex!5563 rule!403)) (regTwo!21156 (regex!5563 rule!403))))) (regOne!21156 (ite c!621336 (reg!10651 (regex!5563 rule!403)) (ite c!621337 (regOne!21157 (regex!5563 rule!403)) (regTwo!21156 (regex!5563 rule!403))))))))))

(assert (= (and d!1057745 c!621447) b!3587790))

(assert (= (and d!1057745 (not c!621447)) b!3587789))

(assert (= (and b!3587789 c!621446) b!3587786))

(assert (= (and b!3587789 (not c!621446)) b!3587784))

(assert (= (and b!3587784 c!621448) b!3587791))

(assert (= (and b!3587784 (not c!621448)) b!3587788))

(assert (= (and b!3587788 c!621449) b!3587787))

(assert (= (and b!3587788 (not c!621449)) b!3587785))

(assert (= (or b!3587787 b!3587785) bm!259760))

(assert (= (or b!3587787 b!3587785) bm!259763))

(assert (= (or b!3587787 b!3587785) bm!259761))

(assert (= (or b!3587791 bm!259760) bm!259762))

(declare-fun m!4081209 () Bool)

(assert (=> bm!259761 m!4081209))

(declare-fun m!4081211 () Bool)

(assert (=> bm!259762 m!4081211))

(declare-fun m!4081213 () Bool)

(assert (=> bm!259763 m!4081213))

(assert (=> bm!259710 d!1057745))

(declare-fun d!1057747 () Bool)

(declare-fun c!621452 () Bool)

(assert (=> d!1057747 (= c!621452 (is-Nil!37701 (usedCharacters!777 (regex!5563 rule!403))))))

(declare-fun e!2219917 () (Set C!20830))

(assert (=> d!1057747 (= (content!5358 (usedCharacters!777 (regex!5563 rule!403))) e!2219917)))

(declare-fun b!3587796 () Bool)

(assert (=> b!3587796 (= e!2219917 (as set.empty (Set C!20830)))))

(declare-fun b!3587797 () Bool)

(assert (=> b!3587797 (= e!2219917 (set.union (set.insert (h!43121 (usedCharacters!777 (regex!5563 rule!403))) (as set.empty (Set C!20830))) (content!5358 (t!290638 (usedCharacters!777 (regex!5563 rule!403))))))))

(assert (= (and d!1057747 c!621452) b!3587796))

(assert (= (and d!1057747 (not c!621452)) b!3587797))

(declare-fun m!4081215 () Bool)

(assert (=> b!3587797 m!4081215))

(declare-fun m!4081217 () Bool)

(assert (=> b!3587797 m!4081217))

(assert (=> d!1057489 d!1057747))

(declare-fun d!1057749 () Bool)

(declare-fun lt!1230626 () Int)

(assert (=> d!1057749 (>= lt!1230626 0)))

(declare-fun e!2219918 () Int)

(assert (=> d!1057749 (= lt!1230626 e!2219918)))

(declare-fun c!621453 () Bool)

(assert (=> d!1057749 (= c!621453 (is-Nil!37701 (_2!21929 (get!12148 lt!1230473))))))

(assert (=> d!1057749 (= (size!28723 (_2!21929 (get!12148 lt!1230473))) lt!1230626)))

(declare-fun b!3587798 () Bool)

(assert (=> b!3587798 (= e!2219918 0)))

(declare-fun b!3587799 () Bool)

(assert (=> b!3587799 (= e!2219918 (+ 1 (size!28723 (t!290638 (_2!21929 (get!12148 lt!1230473))))))))

(assert (= (and d!1057749 c!621453) b!3587798))

(assert (= (and d!1057749 (not c!621453)) b!3587799))

(declare-fun m!4081219 () Bool)

(assert (=> b!3587799 m!4081219))

(assert (=> b!3587261 d!1057749))

(assert (=> b!3587261 d!1057695))

(declare-fun d!1057751 () Bool)

(declare-fun lt!1230627 () Int)

(assert (=> d!1057751 (>= lt!1230627 0)))

(declare-fun e!2219919 () Int)

(assert (=> d!1057751 (= lt!1230627 e!2219919)))

(declare-fun c!621454 () Bool)

(assert (=> d!1057751 (= c!621454 (is-Nil!37701 lt!1230282))))

(assert (=> d!1057751 (= (size!28723 lt!1230282) lt!1230627)))

(declare-fun b!3587800 () Bool)

(assert (=> b!3587800 (= e!2219919 0)))

(declare-fun b!3587801 () Bool)

(assert (=> b!3587801 (= e!2219919 (+ 1 (size!28723 (t!290638 lt!1230282))))))

(assert (= (and d!1057751 c!621454) b!3587800))

(assert (= (and d!1057751 (not c!621454)) b!3587801))

(assert (=> b!3587801 m!4081201))

(assert (=> b!3587261 d!1057751))

(assert (=> b!3587297 d!1057737))

(declare-fun d!1057753 () Bool)

(declare-fun c!621455 () Bool)

(assert (=> d!1057753 (= c!621455 (is-Nil!37701 (usedCharacters!777 (regex!5563 anOtherTypeRule!33))))))

(declare-fun e!2219920 () (Set C!20830))

(assert (=> d!1057753 (= (content!5358 (usedCharacters!777 (regex!5563 anOtherTypeRule!33))) e!2219920)))

(declare-fun b!3587802 () Bool)

(assert (=> b!3587802 (= e!2219920 (as set.empty (Set C!20830)))))

(declare-fun b!3587803 () Bool)

(assert (=> b!3587803 (= e!2219920 (set.union (set.insert (h!43121 (usedCharacters!777 (regex!5563 anOtherTypeRule!33))) (as set.empty (Set C!20830))) (content!5358 (t!290638 (usedCharacters!777 (regex!5563 anOtherTypeRule!33))))))))

(assert (= (and d!1057753 c!621455) b!3587802))

(assert (= (and d!1057753 (not c!621455)) b!3587803))

(declare-fun m!4081221 () Bool)

(assert (=> b!3587803 m!4081221))

(declare-fun m!4081223 () Bool)

(assert (=> b!3587803 m!4081223))

(assert (=> d!1057533 d!1057753))

(declare-fun d!1057755 () Bool)

(assert (=> d!1057755 (= (isEmpty!22210 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))) (is-Nil!37701 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))

(assert (=> d!1057507 d!1057755))

(declare-fun b!3587804 () Bool)

(declare-fun e!2219925 () Bool)

(declare-fun e!2219922 () Bool)

(assert (=> b!3587804 (= e!2219925 e!2219922)))

(declare-fun res!1448127 () Bool)

(assert (=> b!3587804 (= res!1448127 (not (nullable!3560 (reg!10651 (regex!5563 lt!1230268)))))))

(assert (=> b!3587804 (=> (not res!1448127) (not e!2219922))))

(declare-fun b!3587805 () Bool)

(declare-fun res!1448126 () Bool)

(declare-fun e!2219927 () Bool)

(assert (=> b!3587805 (=> (not res!1448126) (not e!2219927))))

(declare-fun call!259771 () Bool)

(assert (=> b!3587805 (= res!1448126 call!259771)))

(declare-fun e!2219921 () Bool)

(assert (=> b!3587805 (= e!2219921 e!2219927)))

(declare-fun d!1057757 () Bool)

(declare-fun res!1448129 () Bool)

(declare-fun e!2219924 () Bool)

(assert (=> d!1057757 (=> res!1448129 e!2219924)))

(assert (=> d!1057757 (= res!1448129 (is-ElementMatch!10322 (regex!5563 lt!1230268)))))

(assert (=> d!1057757 (= (validRegex!4716 (regex!5563 lt!1230268)) e!2219924)))

(declare-fun b!3587806 () Bool)

(declare-fun call!259769 () Bool)

(assert (=> b!3587806 (= e!2219927 call!259769)))

(declare-fun b!3587807 () Bool)

(declare-fun e!2219923 () Bool)

(declare-fun e!2219926 () Bool)

(assert (=> b!3587807 (= e!2219923 e!2219926)))

(declare-fun res!1448130 () Bool)

(assert (=> b!3587807 (=> (not res!1448130) (not e!2219926))))

(assert (=> b!3587807 (= res!1448130 call!259769)))

(declare-fun b!3587808 () Bool)

(assert (=> b!3587808 (= e!2219925 e!2219921)))

(declare-fun c!621456 () Bool)

(assert (=> b!3587808 (= c!621456 (is-Union!10322 (regex!5563 lt!1230268)))))

(declare-fun call!259770 () Bool)

(declare-fun bm!259764 () Bool)

(declare-fun c!621457 () Bool)

(assert (=> bm!259764 (= call!259770 (validRegex!4716 (ite c!621457 (reg!10651 (regex!5563 lt!1230268)) (ite c!621456 (regTwo!21157 (regex!5563 lt!1230268)) (regOne!21156 (regex!5563 lt!1230268))))))))

(declare-fun b!3587809 () Bool)

(declare-fun res!1448128 () Bool)

(assert (=> b!3587809 (=> res!1448128 e!2219923)))

(assert (=> b!3587809 (= res!1448128 (not (is-Concat!16116 (regex!5563 lt!1230268))))))

(assert (=> b!3587809 (= e!2219921 e!2219923)))

(declare-fun b!3587810 () Bool)

(assert (=> b!3587810 (= e!2219926 call!259771)))

(declare-fun b!3587811 () Bool)

(assert (=> b!3587811 (= e!2219922 call!259770)))

(declare-fun bm!259765 () Bool)

(assert (=> bm!259765 (= call!259771 (validRegex!4716 (ite c!621456 (regOne!21157 (regex!5563 lt!1230268)) (regTwo!21156 (regex!5563 lt!1230268)))))))

(declare-fun b!3587812 () Bool)

(assert (=> b!3587812 (= e!2219924 e!2219925)))

(assert (=> b!3587812 (= c!621457 (is-Star!10322 (regex!5563 lt!1230268)))))

(declare-fun bm!259766 () Bool)

(assert (=> bm!259766 (= call!259769 call!259770)))

(assert (= (and d!1057757 (not res!1448129)) b!3587812))

(assert (= (and b!3587812 c!621457) b!3587804))

(assert (= (and b!3587812 (not c!621457)) b!3587808))

(assert (= (and b!3587804 res!1448127) b!3587811))

(assert (= (and b!3587808 c!621456) b!3587805))

(assert (= (and b!3587808 (not c!621456)) b!3587809))

(assert (= (and b!3587805 res!1448126) b!3587806))

(assert (= (and b!3587809 (not res!1448128)) b!3587807))

(assert (= (and b!3587807 res!1448130) b!3587810))

(assert (= (or b!3587805 b!3587810) bm!259765))

(assert (= (or b!3587806 b!3587807) bm!259766))

(assert (= (or b!3587811 bm!259766) bm!259764))

(declare-fun m!4081225 () Bool)

(assert (=> b!3587804 m!4081225))

(declare-fun m!4081227 () Bool)

(assert (=> bm!259764 m!4081227))

(declare-fun m!4081229 () Bool)

(assert (=> bm!259765 m!4081229))

(assert (=> d!1057507 d!1057757))

(declare-fun b!3587813 () Bool)

(declare-fun e!2219930 () Bool)

(assert (=> b!3587813 (= e!2219930 (inv!15 (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280)))))

(declare-fun b!3587814 () Bool)

(declare-fun e!2219928 () Bool)

(assert (=> b!3587814 (= e!2219928 (inv!16 (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280)))))

(declare-fun b!3587815 () Bool)

(declare-fun res!1448131 () Bool)

(assert (=> b!3587815 (=> res!1448131 e!2219930)))

(assert (=> b!3587815 (= res!1448131 (not (is-IntegerValue!17381 (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280))))))

(declare-fun e!2219929 () Bool)

(assert (=> b!3587815 (= e!2219929 e!2219930)))

(declare-fun b!3587816 () Bool)

(assert (=> b!3587816 (= e!2219928 e!2219929)))

(declare-fun c!621458 () Bool)

(assert (=> b!3587816 (= c!621458 (is-IntegerValue!17380 (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280)))))

(declare-fun b!3587817 () Bool)

(assert (=> b!3587817 (= e!2219929 (inv!17 (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280)))))

(declare-fun d!1057759 () Bool)

(declare-fun c!621459 () Bool)

(assert (=> d!1057759 (= c!621459 (is-IntegerValue!17379 (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280)))))

(assert (=> d!1057759 (= (inv!21 (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280)) e!2219928)))

(assert (= (and d!1057759 c!621459) b!3587814))

(assert (= (and d!1057759 (not c!621459)) b!3587816))

(assert (= (and b!3587816 c!621458) b!3587817))

(assert (= (and b!3587816 (not c!621458)) b!3587815))

(assert (= (and b!3587815 (not res!1448131)) b!3587813))

(declare-fun m!4081231 () Bool)

(assert (=> b!3587813 m!4081231))

(declare-fun m!4081233 () Bool)

(assert (=> b!3587814 m!4081233))

(declare-fun m!4081235 () Bool)

(assert (=> b!3587817 m!4081235))

(assert (=> tb!204613 d!1057759))

(assert (=> b!3586955 d!1057741))

(assert (=> b!3586955 d!1057751))

(declare-fun b!3587820 () Bool)

(declare-fun res!1448132 () Bool)

(declare-fun e!2219931 () Bool)

(assert (=> b!3587820 (=> (not res!1448132) (not e!2219931))))

(declare-fun lt!1230628 () List!37825)

(assert (=> b!3587820 (= res!1448132 (= (size!28723 lt!1230628) (+ (size!28723 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451))))) (size!28723 (_2!21929 (get!12148 lt!1230451))))))))

(declare-fun b!3587819 () Bool)

(declare-fun e!2219932 () List!37825)

(assert (=> b!3587819 (= e!2219932 (Cons!37701 (h!43121 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451))))) (++!9379 (t!290638 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451))))) (_2!21929 (get!12148 lt!1230451)))))))

(declare-fun b!3587818 () Bool)

(assert (=> b!3587818 (= e!2219932 (_2!21929 (get!12148 lt!1230451)))))

(declare-fun d!1057761 () Bool)

(assert (=> d!1057761 e!2219931))

(declare-fun res!1448133 () Bool)

(assert (=> d!1057761 (=> (not res!1448133) (not e!2219931))))

(assert (=> d!1057761 (= res!1448133 (= (content!5358 lt!1230628) (set.union (content!5358 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451))))) (content!5358 (_2!21929 (get!12148 lt!1230451))))))))

(assert (=> d!1057761 (= lt!1230628 e!2219932)))

(declare-fun c!621460 () Bool)

(assert (=> d!1057761 (= c!621460 (is-Nil!37701 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451))))))))

(assert (=> d!1057761 (= (++!9379 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451)))) (_2!21929 (get!12148 lt!1230451))) lt!1230628)))

(declare-fun b!3587821 () Bool)

(assert (=> b!3587821 (= e!2219931 (or (not (= (_2!21929 (get!12148 lt!1230451)) Nil!37701)) (= lt!1230628 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451)))))))))

(assert (= (and d!1057761 c!621460) b!3587818))

(assert (= (and d!1057761 (not c!621460)) b!3587819))

(assert (= (and d!1057761 res!1448133) b!3587820))

(assert (= (and b!3587820 res!1448132) b!3587821))

(declare-fun m!4081237 () Bool)

(assert (=> b!3587820 m!4081237))

(assert (=> b!3587820 m!4080487))

(declare-fun m!4081239 () Bool)

(assert (=> b!3587820 m!4081239))

(assert (=> b!3587820 m!4080507))

(declare-fun m!4081241 () Bool)

(assert (=> b!3587819 m!4081241))

(declare-fun m!4081243 () Bool)

(assert (=> d!1057761 m!4081243))

(assert (=> d!1057761 m!4080487))

(declare-fun m!4081245 () Bool)

(assert (=> d!1057761 m!4081245))

(declare-fun m!4081247 () Bool)

(assert (=> d!1057761 m!4081247))

(assert (=> b!3587158 d!1057761))

(assert (=> b!3587158 d!1057687))

(assert (=> b!3587158 d!1057689))

(assert (=> b!3587158 d!1057651))

(declare-fun d!1057763 () Bool)

(assert (=> d!1057763 true))

(declare-fun lambda!123804 () Int)

(declare-fun order!20463 () Int)

(declare-fun dynLambda!16215 (Int Int) Int)

(assert (=> d!1057763 (< (dynLambda!16206 order!20451 (toValue!7843 (transformation!5563 rule!403))) (dynLambda!16215 order!20463 lambda!123804))))

(declare-fun Forall2!961 (Int) Bool)

(assert (=> d!1057763 (= (equivClasses!2257 (toChars!7702 (transformation!5563 rule!403)) (toValue!7843 (transformation!5563 rule!403))) (Forall2!961 lambda!123804))))

(declare-fun bs!570093 () Bool)

(assert (= bs!570093 d!1057763))

(declare-fun m!4081249 () Bool)

(assert (=> bs!570093 m!4081249))

(assert (=> b!3586919 d!1057763))

(declare-fun b!3587828 () Bool)

(declare-fun res!1448136 () Bool)

(declare-fun e!2219935 () Bool)

(assert (=> b!3587828 (=> (not res!1448136) (not e!2219935))))

(declare-fun lt!1230629 () List!37825)

(assert (=> b!3587828 (= res!1448136 (= (size!28723 lt!1230629) (+ (size!28723 (ite c!621337 call!259716 call!259714)) (size!28723 (ite c!621337 call!259714 call!259716)))))))

(declare-fun e!2219936 () List!37825)

(declare-fun b!3587827 () Bool)

(assert (=> b!3587827 (= e!2219936 (Cons!37701 (h!43121 (ite c!621337 call!259716 call!259714)) (++!9379 (t!290638 (ite c!621337 call!259716 call!259714)) (ite c!621337 call!259714 call!259716))))))

(declare-fun b!3587826 () Bool)

(assert (=> b!3587826 (= e!2219936 (ite c!621337 call!259714 call!259716))))

(declare-fun d!1057765 () Bool)

(assert (=> d!1057765 e!2219935))

(declare-fun res!1448137 () Bool)

(assert (=> d!1057765 (=> (not res!1448137) (not e!2219935))))

(assert (=> d!1057765 (= res!1448137 (= (content!5358 lt!1230629) (set.union (content!5358 (ite c!621337 call!259716 call!259714)) (content!5358 (ite c!621337 call!259714 call!259716)))))))

(assert (=> d!1057765 (= lt!1230629 e!2219936)))

(declare-fun c!621461 () Bool)

(assert (=> d!1057765 (= c!621461 (is-Nil!37701 (ite c!621337 call!259716 call!259714)))))

(assert (=> d!1057765 (= (++!9379 (ite c!621337 call!259716 call!259714) (ite c!621337 call!259714 call!259716)) lt!1230629)))

(declare-fun b!3587829 () Bool)

(assert (=> b!3587829 (= e!2219935 (or (not (= (ite c!621337 call!259714 call!259716) Nil!37701)) (= lt!1230629 (ite c!621337 call!259716 call!259714))))))

(assert (= (and d!1057765 c!621461) b!3587826))

(assert (= (and d!1057765 (not c!621461)) b!3587827))

(assert (= (and d!1057765 res!1448137) b!3587828))

(assert (= (and b!3587828 res!1448136) b!3587829))

(declare-fun m!4081251 () Bool)

(assert (=> b!3587828 m!4081251))

(declare-fun m!4081253 () Bool)

(assert (=> b!3587828 m!4081253))

(declare-fun m!4081255 () Bool)

(assert (=> b!3587828 m!4081255))

(declare-fun m!4081257 () Bool)

(assert (=> b!3587827 m!4081257))

(declare-fun m!4081259 () Bool)

(assert (=> d!1057765 m!4081259))

(declare-fun m!4081261 () Bool)

(assert (=> d!1057765 m!4081261))

(declare-fun m!4081263 () Bool)

(assert (=> d!1057765 m!4081263))

(assert (=> bm!259709 d!1057765))

(declare-fun d!1057767 () Bool)

(assert (=> d!1057767 (= (head!7483 lt!1230282) (h!43121 lt!1230282))))

(assert (=> b!3587394 d!1057767))

(declare-fun b!3587832 () Bool)

(declare-fun res!1448138 () Bool)

(declare-fun e!2219937 () Bool)

(assert (=> b!3587832 (=> (not res!1448138) (not e!2219937))))

(declare-fun lt!1230630 () List!37825)

(assert (=> b!3587832 (= res!1448138 (= (size!28723 lt!1230630) (+ (size!28723 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473))))) (size!28723 (_2!21929 (get!12148 lt!1230473))))))))

(declare-fun b!3587831 () Bool)

(declare-fun e!2219938 () List!37825)

(assert (=> b!3587831 (= e!2219938 (Cons!37701 (h!43121 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473))))) (++!9379 (t!290638 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473))))) (_2!21929 (get!12148 lt!1230473)))))))

(declare-fun b!3587830 () Bool)

(assert (=> b!3587830 (= e!2219938 (_2!21929 (get!12148 lt!1230473)))))

(declare-fun d!1057769 () Bool)

(assert (=> d!1057769 e!2219937))

(declare-fun res!1448139 () Bool)

(assert (=> d!1057769 (=> (not res!1448139) (not e!2219937))))

(assert (=> d!1057769 (= res!1448139 (= (content!5358 lt!1230630) (set.union (content!5358 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473))))) (content!5358 (_2!21929 (get!12148 lt!1230473))))))))

(assert (=> d!1057769 (= lt!1230630 e!2219938)))

(declare-fun c!621462 () Bool)

(assert (=> d!1057769 (= c!621462 (is-Nil!37701 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473))))))))

(assert (=> d!1057769 (= (++!9379 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473)))) (_2!21929 (get!12148 lt!1230473))) lt!1230630)))

(declare-fun b!3587833 () Bool)

(assert (=> b!3587833 (= e!2219937 (or (not (= (_2!21929 (get!12148 lt!1230473)) Nil!37701)) (= lt!1230630 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473)))))))))

(assert (= (and d!1057769 c!621462) b!3587830))

(assert (= (and d!1057769 (not c!621462)) b!3587831))

(assert (= (and d!1057769 res!1448139) b!3587832))

(assert (= (and b!3587832 res!1448138) b!3587833))

(declare-fun m!4081265 () Bool)

(assert (=> b!3587832 m!4081265))

(assert (=> b!3587832 m!4080593))

(declare-fun m!4081267 () Bool)

(assert (=> b!3587832 m!4081267))

(assert (=> b!3587832 m!4080611))

(declare-fun m!4081269 () Bool)

(assert (=> b!3587831 m!4081269))

(declare-fun m!4081271 () Bool)

(assert (=> d!1057769 m!4081271))

(assert (=> d!1057769 m!4080593))

(declare-fun m!4081273 () Bool)

(assert (=> d!1057769 m!4081273))

(declare-fun m!4081275 () Bool)

(assert (=> d!1057769 m!4081275))

(assert (=> b!3587257 d!1057769))

(assert (=> b!3587257 d!1057709))

(assert (=> b!3587257 d!1057711))

(assert (=> b!3587257 d!1057695))

(declare-fun b!3587834 () Bool)

(declare-fun res!1448146 () Bool)

(declare-fun e!2219940 () Bool)

(assert (=> b!3587834 (=> (not res!1448146) (not e!2219940))))

(declare-fun lt!1230635 () Option!7756)

(assert (=> b!3587834 (= res!1448146 (= (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230635)))) (originalCharacters!6277 (_1!21929 (get!12148 lt!1230635)))))))

(declare-fun b!3587835 () Bool)

(declare-fun e!2219939 () Option!7756)

(declare-fun lt!1230633 () Option!7756)

(declare-fun lt!1230632 () Option!7756)

(assert (=> b!3587835 (= e!2219939 (ite (and (is-None!7755 lt!1230633) (is-None!7755 lt!1230632)) None!7755 (ite (is-None!7755 lt!1230632) lt!1230633 (ite (is-None!7755 lt!1230633) lt!1230632 (ite (>= (size!28721 (_1!21929 (v!37421 lt!1230633))) (size!28721 (_1!21929 (v!37421 lt!1230632)))) lt!1230633 lt!1230632)))))))

(declare-fun call!259772 () Option!7756)

(assert (=> b!3587835 (= lt!1230633 call!259772)))

(assert (=> b!3587835 (= lt!1230632 (maxPrefix!2686 thiss!23823 (t!290639 (t!290639 rules!3307)) lt!1230281))))

(declare-fun bm!259767 () Bool)

(assert (=> bm!259767 (= call!259772 (maxPrefixOneRule!1836 thiss!23823 (h!43122 (t!290639 rules!3307)) lt!1230281))))

(declare-fun b!3587837 () Bool)

(assert (=> b!3587837 (= e!2219940 (contains!7188 (t!290639 rules!3307) (rule!8277 (_1!21929 (get!12148 lt!1230635)))))))

(declare-fun b!3587838 () Bool)

(declare-fun res!1448145 () Bool)

(assert (=> b!3587838 (=> (not res!1448145) (not e!2219940))))

(assert (=> b!3587838 (= res!1448145 (= (++!9379 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230635)))) (_2!21929 (get!12148 lt!1230635))) lt!1230281))))

(declare-fun b!3587839 () Bool)

(declare-fun res!1448141 () Bool)

(assert (=> b!3587839 (=> (not res!1448141) (not e!2219940))))

(assert (=> b!3587839 (= res!1448141 (= (value!179007 (_1!21929 (get!12148 lt!1230635))) (apply!9073 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230635)))) (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230635)))))))))

(declare-fun b!3587840 () Bool)

(declare-fun res!1448143 () Bool)

(assert (=> b!3587840 (=> (not res!1448143) (not e!2219940))))

(assert (=> b!3587840 (= res!1448143 (matchR!4891 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230635)))) (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230635))))))))

(declare-fun b!3587841 () Bool)

(assert (=> b!3587841 (= e!2219939 call!259772)))

(declare-fun b!3587842 () Bool)

(declare-fun res!1448142 () Bool)

(assert (=> b!3587842 (=> (not res!1448142) (not e!2219940))))

(assert (=> b!3587842 (= res!1448142 (< (size!28723 (_2!21929 (get!12148 lt!1230635))) (size!28723 lt!1230281)))))

(declare-fun d!1057771 () Bool)

(declare-fun e!2219941 () Bool)

(assert (=> d!1057771 e!2219941))

(declare-fun res!1448144 () Bool)

(assert (=> d!1057771 (=> res!1448144 e!2219941)))

(assert (=> d!1057771 (= res!1448144 (isEmpty!22215 lt!1230635))))

(assert (=> d!1057771 (= lt!1230635 e!2219939)))

(declare-fun c!621463 () Bool)

(assert (=> d!1057771 (= c!621463 (and (is-Cons!37702 (t!290639 rules!3307)) (is-Nil!37702 (t!290639 (t!290639 rules!3307)))))))

(declare-fun lt!1230634 () Unit!53698)

(declare-fun lt!1230631 () Unit!53698)

(assert (=> d!1057771 (= lt!1230634 lt!1230631)))

(assert (=> d!1057771 (isPrefix!2926 lt!1230281 lt!1230281)))

(assert (=> d!1057771 (= lt!1230631 (lemmaIsPrefixRefl!1877 lt!1230281 lt!1230281))))

(assert (=> d!1057771 (rulesValidInductive!1940 thiss!23823 (t!290639 rules!3307))))

(assert (=> d!1057771 (= (maxPrefix!2686 thiss!23823 (t!290639 rules!3307) lt!1230281) lt!1230635)))

(declare-fun b!3587836 () Bool)

(assert (=> b!3587836 (= e!2219941 e!2219940)))

(declare-fun res!1448140 () Bool)

(assert (=> b!3587836 (=> (not res!1448140) (not e!2219940))))

(assert (=> b!3587836 (= res!1448140 (isDefined!5988 lt!1230635))))

(assert (= (and d!1057771 c!621463) b!3587841))

(assert (= (and d!1057771 (not c!621463)) b!3587835))

(assert (= (or b!3587841 b!3587835) bm!259767))

(assert (= (and d!1057771 (not res!1448144)) b!3587836))

(assert (= (and b!3587836 res!1448140) b!3587834))

(assert (= (and b!3587834 res!1448146) b!3587842))

(assert (= (and b!3587842 res!1448142) b!3587838))

(assert (= (and b!3587838 res!1448145) b!3587839))

(assert (= (and b!3587839 res!1448141) b!3587840))

(assert (= (and b!3587840 res!1448143) b!3587837))

(declare-fun m!4081277 () Bool)

(assert (=> b!3587835 m!4081277))

(declare-fun m!4081279 () Bool)

(assert (=> b!3587834 m!4081279))

(declare-fun m!4081281 () Bool)

(assert (=> b!3587834 m!4081281))

(assert (=> b!3587834 m!4081281))

(declare-fun m!4081283 () Bool)

(assert (=> b!3587834 m!4081283))

(declare-fun m!4081285 () Bool)

(assert (=> b!3587836 m!4081285))

(assert (=> b!3587839 m!4081279))

(declare-fun m!4081287 () Bool)

(assert (=> b!3587839 m!4081287))

(assert (=> b!3587839 m!4081287))

(declare-fun m!4081289 () Bool)

(assert (=> b!3587839 m!4081289))

(declare-fun m!4081291 () Bool)

(assert (=> d!1057771 m!4081291))

(assert (=> d!1057771 m!4080497))

(assert (=> d!1057771 m!4080499))

(assert (=> d!1057771 m!4081073))

(assert (=> b!3587840 m!4081279))

(assert (=> b!3587840 m!4081281))

(assert (=> b!3587840 m!4081281))

(assert (=> b!3587840 m!4081283))

(assert (=> b!3587840 m!4081283))

(declare-fun m!4081293 () Bool)

(assert (=> b!3587840 m!4081293))

(assert (=> b!3587838 m!4081279))

(assert (=> b!3587838 m!4081281))

(assert (=> b!3587838 m!4081281))

(assert (=> b!3587838 m!4081283))

(assert (=> b!3587838 m!4081283))

(declare-fun m!4081295 () Bool)

(assert (=> b!3587838 m!4081295))

(assert (=> b!3587842 m!4081279))

(declare-fun m!4081297 () Bool)

(assert (=> b!3587842 m!4081297))

(assert (=> b!3587842 m!4080289))

(declare-fun m!4081299 () Bool)

(assert (=> bm!259767 m!4081299))

(assert (=> b!3587837 m!4081279))

(declare-fun m!4081301 () Bool)

(assert (=> b!3587837 m!4081301))

(assert (=> b!3587155 d!1057771))

(declare-fun d!1057773 () Bool)

(declare-fun c!621464 () Bool)

(assert (=> d!1057773 (= c!621464 (is-Nil!37701 lt!1230452))))

(declare-fun e!2219942 () (Set C!20830))

(assert (=> d!1057773 (= (content!5358 lt!1230452) e!2219942)))

(declare-fun b!3587843 () Bool)

(assert (=> b!3587843 (= e!2219942 (as set.empty (Set C!20830)))))

(declare-fun b!3587844 () Bool)

(assert (=> b!3587844 (= e!2219942 (set.union (set.insert (h!43121 lt!1230452) (as set.empty (Set C!20830))) (content!5358 (t!290638 lt!1230452))))))

(assert (= (and d!1057773 c!621464) b!3587843))

(assert (= (and d!1057773 (not c!621464)) b!3587844))

(declare-fun m!4081303 () Bool)

(assert (=> b!3587844 m!4081303))

(declare-fun m!4081305 () Bool)

(assert (=> b!3587844 m!4081305))

(assert (=> d!1057481 d!1057773))

(declare-fun d!1057775 () Bool)

(declare-fun c!621465 () Bool)

(assert (=> d!1057775 (= c!621465 (is-Nil!37701 lt!1230282))))

(declare-fun e!2219943 () (Set C!20830))

(assert (=> d!1057775 (= (content!5358 lt!1230282) e!2219943)))

(declare-fun b!3587845 () Bool)

(assert (=> b!3587845 (= e!2219943 (as set.empty (Set C!20830)))))

(declare-fun b!3587846 () Bool)

(assert (=> b!3587846 (= e!2219943 (set.union (set.insert (h!43121 lt!1230282) (as set.empty (Set C!20830))) (content!5358 (t!290638 lt!1230282))))))

(assert (= (and d!1057775 c!621465) b!3587845))

(assert (= (and d!1057775 (not c!621465)) b!3587846))

(declare-fun m!4081307 () Bool)

(assert (=> b!3587846 m!4081307))

(assert (=> b!3587846 m!4081207))

(assert (=> d!1057481 d!1057775))

(declare-fun d!1057777 () Bool)

(declare-fun c!621466 () Bool)

(assert (=> d!1057777 (= c!621466 (is-Nil!37701 suffix!1395))))

(declare-fun e!2219944 () (Set C!20830))

(assert (=> d!1057777 (= (content!5358 suffix!1395) e!2219944)))

(declare-fun b!3587847 () Bool)

(assert (=> b!3587847 (= e!2219944 (as set.empty (Set C!20830)))))

(declare-fun b!3587848 () Bool)

(assert (=> b!3587848 (= e!2219944 (set.union (set.insert (h!43121 suffix!1395) (as set.empty (Set C!20830))) (content!5358 (t!290638 suffix!1395))))))

(assert (= (and d!1057777 c!621466) b!3587847))

(assert (= (and d!1057777 (not c!621466)) b!3587848))

(declare-fun m!4081309 () Bool)

(assert (=> b!3587848 m!4081309))

(declare-fun m!4081311 () Bool)

(assert (=> b!3587848 m!4081311))

(assert (=> d!1057481 d!1057777))

(declare-fun b!3587851 () Bool)

(declare-fun e!2219947 () Bool)

(assert (=> b!3587851 (= e!2219947 (isPrefix!2926 (tail!5558 lt!1230282) (tail!5558 (++!9379 lt!1230282 suffix!1395))))))

(declare-fun b!3587852 () Bool)

(declare-fun e!2219946 () Bool)

(assert (=> b!3587852 (= e!2219946 (>= (size!28723 (++!9379 lt!1230282 suffix!1395)) (size!28723 lt!1230282)))))

(declare-fun b!3587850 () Bool)

(declare-fun res!1448149 () Bool)

(assert (=> b!3587850 (=> (not res!1448149) (not e!2219947))))

(assert (=> b!3587850 (= res!1448149 (= (head!7483 lt!1230282) (head!7483 (++!9379 lt!1230282 suffix!1395))))))

(declare-fun d!1057779 () Bool)

(assert (=> d!1057779 e!2219946))

(declare-fun res!1448150 () Bool)

(assert (=> d!1057779 (=> res!1448150 e!2219946)))

(declare-fun lt!1230636 () Bool)

(assert (=> d!1057779 (= res!1448150 (not lt!1230636))))

(declare-fun e!2219945 () Bool)

(assert (=> d!1057779 (= lt!1230636 e!2219945)))

(declare-fun res!1448148 () Bool)

(assert (=> d!1057779 (=> res!1448148 e!2219945)))

(assert (=> d!1057779 (= res!1448148 (is-Nil!37701 lt!1230282))))

(assert (=> d!1057779 (= (isPrefix!2926 lt!1230282 (++!9379 lt!1230282 suffix!1395)) lt!1230636)))

(declare-fun b!3587849 () Bool)

(assert (=> b!3587849 (= e!2219945 e!2219947)))

(declare-fun res!1448147 () Bool)

(assert (=> b!3587849 (=> (not res!1448147) (not e!2219947))))

(assert (=> b!3587849 (= res!1448147 (not (is-Nil!37701 (++!9379 lt!1230282 suffix!1395))))))

(assert (= (and d!1057779 (not res!1448148)) b!3587849))

(assert (= (and b!3587849 res!1448147) b!3587850))

(assert (= (and b!3587850 res!1448149) b!3587851))

(assert (= (and d!1057779 (not res!1448150)) b!3587852))

(assert (=> b!3587851 m!4080283))

(assert (=> b!3587851 m!4080087))

(declare-fun m!4081313 () Bool)

(assert (=> b!3587851 m!4081313))

(assert (=> b!3587851 m!4080283))

(assert (=> b!3587851 m!4081313))

(declare-fun m!4081315 () Bool)

(assert (=> b!3587851 m!4081315))

(assert (=> b!3587852 m!4080087))

(declare-fun m!4081317 () Bool)

(assert (=> b!3587852 m!4081317))

(assert (=> b!3587852 m!4080291))

(assert (=> b!3587850 m!4080293))

(assert (=> b!3587850 m!4080087))

(declare-fun m!4081319 () Bool)

(assert (=> b!3587850 m!4081319))

(assert (=> d!1057487 d!1057779))

(assert (=> d!1057487 d!1057481))

(declare-fun d!1057781 () Bool)

(assert (=> d!1057781 (isPrefix!2926 lt!1230282 (++!9379 lt!1230282 suffix!1395))))

(assert (=> d!1057781 true))

(declare-fun _$46!1446 () Unit!53698)

(assert (=> d!1057781 (= (choose!20865 lt!1230282 suffix!1395) _$46!1446)))

(declare-fun bs!570094 () Bool)

(assert (= bs!570094 d!1057781))

(assert (=> bs!570094 m!4080087))

(assert (=> bs!570094 m!4080087))

(assert (=> bs!570094 m!4080527))

(assert (=> d!1057487 d!1057781))

(declare-fun b!3587853 () Bool)

(declare-fun res!1448157 () Bool)

(declare-fun e!2219949 () Bool)

(assert (=> b!3587853 (=> (not res!1448157) (not e!2219949))))

(declare-fun lt!1230641 () Option!7756)

(assert (=> b!3587853 (= res!1448157 (= (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230641)))) (originalCharacters!6277 (_1!21929 (get!12148 lt!1230641)))))))

(declare-fun b!3587854 () Bool)

(declare-fun e!2219948 () Option!7756)

(declare-fun lt!1230639 () Option!7756)

(declare-fun lt!1230638 () Option!7756)

(assert (=> b!3587854 (= e!2219948 (ite (and (is-None!7755 lt!1230639) (is-None!7755 lt!1230638)) None!7755 (ite (is-None!7755 lt!1230638) lt!1230639 (ite (is-None!7755 lt!1230639) lt!1230638 (ite (>= (size!28721 (_1!21929 (v!37421 lt!1230639))) (size!28721 (_1!21929 (v!37421 lt!1230638)))) lt!1230639 lt!1230638)))))))

(declare-fun call!259773 () Option!7756)

(assert (=> b!3587854 (= lt!1230639 call!259773)))

(assert (=> b!3587854 (= lt!1230638 (maxPrefix!2686 thiss!23823 (t!290639 (t!290639 rules!3307)) lt!1230282))))

(declare-fun bm!259768 () Bool)

(assert (=> bm!259768 (= call!259773 (maxPrefixOneRule!1836 thiss!23823 (h!43122 (t!290639 rules!3307)) lt!1230282))))

(declare-fun b!3587856 () Bool)

(assert (=> b!3587856 (= e!2219949 (contains!7188 (t!290639 rules!3307) (rule!8277 (_1!21929 (get!12148 lt!1230641)))))))

(declare-fun b!3587857 () Bool)

(declare-fun res!1448156 () Bool)

(assert (=> b!3587857 (=> (not res!1448156) (not e!2219949))))

(assert (=> b!3587857 (= res!1448156 (= (++!9379 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230641)))) (_2!21929 (get!12148 lt!1230641))) lt!1230282))))

(declare-fun b!3587858 () Bool)

(declare-fun res!1448152 () Bool)

(assert (=> b!3587858 (=> (not res!1448152) (not e!2219949))))

(assert (=> b!3587858 (= res!1448152 (= (value!179007 (_1!21929 (get!12148 lt!1230641))) (apply!9073 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230641)))) (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230641)))))))))

(declare-fun b!3587859 () Bool)

(declare-fun res!1448154 () Bool)

(assert (=> b!3587859 (=> (not res!1448154) (not e!2219949))))

(assert (=> b!3587859 (= res!1448154 (matchR!4891 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230641)))) (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230641))))))))

(declare-fun b!3587860 () Bool)

(assert (=> b!3587860 (= e!2219948 call!259773)))

(declare-fun b!3587861 () Bool)

(declare-fun res!1448153 () Bool)

(assert (=> b!3587861 (=> (not res!1448153) (not e!2219949))))

(assert (=> b!3587861 (= res!1448153 (< (size!28723 (_2!21929 (get!12148 lt!1230641))) (size!28723 lt!1230282)))))

(declare-fun d!1057783 () Bool)

(declare-fun e!2219950 () Bool)

(assert (=> d!1057783 e!2219950))

(declare-fun res!1448155 () Bool)

(assert (=> d!1057783 (=> res!1448155 e!2219950)))

(assert (=> d!1057783 (= res!1448155 (isEmpty!22215 lt!1230641))))

(assert (=> d!1057783 (= lt!1230641 e!2219948)))

(declare-fun c!621467 () Bool)

(assert (=> d!1057783 (= c!621467 (and (is-Cons!37702 (t!290639 rules!3307)) (is-Nil!37702 (t!290639 (t!290639 rules!3307)))))))

(declare-fun lt!1230640 () Unit!53698)

(declare-fun lt!1230637 () Unit!53698)

(assert (=> d!1057783 (= lt!1230640 lt!1230637)))

(assert (=> d!1057783 (isPrefix!2926 lt!1230282 lt!1230282)))

(assert (=> d!1057783 (= lt!1230637 (lemmaIsPrefixRefl!1877 lt!1230282 lt!1230282))))

(assert (=> d!1057783 (rulesValidInductive!1940 thiss!23823 (t!290639 rules!3307))))

(assert (=> d!1057783 (= (maxPrefix!2686 thiss!23823 (t!290639 rules!3307) lt!1230282) lt!1230641)))

(declare-fun b!3587855 () Bool)

(assert (=> b!3587855 (= e!2219950 e!2219949)))

(declare-fun res!1448151 () Bool)

(assert (=> b!3587855 (=> (not res!1448151) (not e!2219949))))

(assert (=> b!3587855 (= res!1448151 (isDefined!5988 lt!1230641))))

(assert (= (and d!1057783 c!621467) b!3587860))

(assert (= (and d!1057783 (not c!621467)) b!3587854))

(assert (= (or b!3587860 b!3587854) bm!259768))

(assert (= (and d!1057783 (not res!1448155)) b!3587855))

(assert (= (and b!3587855 res!1448151) b!3587853))

(assert (= (and b!3587853 res!1448157) b!3587861))

(assert (= (and b!3587861 res!1448153) b!3587857))

(assert (= (and b!3587857 res!1448156) b!3587858))

(assert (= (and b!3587858 res!1448152) b!3587859))

(assert (= (and b!3587859 res!1448154) b!3587856))

(declare-fun m!4081321 () Bool)

(assert (=> b!3587854 m!4081321))

(declare-fun m!4081323 () Bool)

(assert (=> b!3587853 m!4081323))

(declare-fun m!4081325 () Bool)

(assert (=> b!3587853 m!4081325))

(assert (=> b!3587853 m!4081325))

(declare-fun m!4081327 () Bool)

(assert (=> b!3587853 m!4081327))

(declare-fun m!4081329 () Bool)

(assert (=> b!3587855 m!4081329))

(assert (=> b!3587858 m!4081323))

(declare-fun m!4081331 () Bool)

(assert (=> b!3587858 m!4081331))

(assert (=> b!3587858 m!4081331))

(declare-fun m!4081333 () Bool)

(assert (=> b!3587858 m!4081333))

(declare-fun m!4081335 () Bool)

(assert (=> d!1057783 m!4081335))

(assert (=> d!1057783 m!4080603))

(assert (=> d!1057783 m!4080605))

(assert (=> d!1057783 m!4081073))

(assert (=> b!3587859 m!4081323))

(assert (=> b!3587859 m!4081325))

(assert (=> b!3587859 m!4081325))

(assert (=> b!3587859 m!4081327))

(assert (=> b!3587859 m!4081327))

(declare-fun m!4081337 () Bool)

(assert (=> b!3587859 m!4081337))

(assert (=> b!3587857 m!4081323))

(assert (=> b!3587857 m!4081325))

(assert (=> b!3587857 m!4081325))

(assert (=> b!3587857 m!4081327))

(assert (=> b!3587857 m!4081327))

(declare-fun m!4081339 () Bool)

(assert (=> b!3587857 m!4081339))

(assert (=> b!3587861 m!4081323))

(declare-fun m!4081341 () Bool)

(assert (=> b!3587861 m!4081341))

(assert (=> b!3587861 m!4080291))

(declare-fun m!4081343 () Bool)

(assert (=> bm!259768 m!4081343))

(assert (=> b!3587856 m!4081323))

(declare-fun m!4081345 () Bool)

(assert (=> b!3587856 m!4081345))

(assert (=> b!3587254 d!1057783))

(declare-fun d!1057785 () Bool)

(declare-fun lt!1230642 () Int)

(assert (=> d!1057785 (>= lt!1230642 0)))

(declare-fun e!2219951 () Int)

(assert (=> d!1057785 (= lt!1230642 e!2219951)))

(declare-fun c!621468 () Bool)

(assert (=> d!1057785 (= c!621468 (is-Nil!37701 (++!9379 lt!1230283 (_2!21929 lt!1230275))))))

(assert (=> d!1057785 (= (size!28723 (++!9379 lt!1230283 (_2!21929 lt!1230275))) lt!1230642)))

(declare-fun b!3587862 () Bool)

(assert (=> b!3587862 (= e!2219951 0)))

(declare-fun b!3587863 () Bool)

(assert (=> b!3587863 (= e!2219951 (+ 1 (size!28723 (t!290638 (++!9379 lt!1230283 (_2!21929 lt!1230275))))))))

(assert (= (and d!1057785 c!621468) b!3587862))

(assert (= (and d!1057785 (not c!621468)) b!3587863))

(declare-fun m!4081347 () Bool)

(assert (=> b!3587863 m!4081347))

(assert (=> b!3587100 d!1057785))

(declare-fun d!1057787 () Bool)

(declare-fun lt!1230643 () Int)

(assert (=> d!1057787 (>= lt!1230643 0)))

(declare-fun e!2219952 () Int)

(assert (=> d!1057787 (= lt!1230643 e!2219952)))

(declare-fun c!621469 () Bool)

(assert (=> d!1057787 (= c!621469 (is-Nil!37701 lt!1230283))))

(assert (=> d!1057787 (= (size!28723 lt!1230283) lt!1230643)))

(declare-fun b!3587864 () Bool)

(assert (=> b!3587864 (= e!2219952 0)))

(declare-fun b!3587865 () Bool)

(assert (=> b!3587865 (= e!2219952 (+ 1 (size!28723 (t!290638 lt!1230283))))))

(assert (= (and d!1057787 c!621469) b!3587864))

(assert (= (and d!1057787 (not c!621469)) b!3587865))

(assert (=> b!3587865 m!4081147))

(assert (=> b!3587100 d!1057787))

(declare-fun d!1057789 () Bool)

(declare-fun charsToInt!0 (List!37824) (_ BitVec 32))

(assert (=> d!1057789 (= (inv!16 (value!179007 token!511)) (= (charsToInt!0 (text!40998 (value!179007 token!511))) (value!178998 (value!179007 token!511))))))

(declare-fun bs!570095 () Bool)

(assert (= bs!570095 d!1057789))

(declare-fun m!4081349 () Bool)

(assert (=> bs!570095 m!4081349))

(assert (=> b!3587336 d!1057789))

(declare-fun d!1057791 () Bool)

(declare-fun lt!1230644 () Int)

(assert (=> d!1057791 (>= lt!1230644 0)))

(declare-fun e!2219953 () Int)

(assert (=> d!1057791 (= lt!1230644 e!2219953)))

(declare-fun c!621470 () Bool)

(assert (=> d!1057791 (= c!621470 (is-Nil!37701 lt!1230355))))

(assert (=> d!1057791 (= (size!28723 lt!1230355) lt!1230644)))

(declare-fun b!3587866 () Bool)

(assert (=> b!3587866 (= e!2219953 0)))

(declare-fun b!3587867 () Bool)

(assert (=> b!3587867 (= e!2219953 (+ 1 (size!28723 (t!290638 lt!1230355))))))

(assert (= (and d!1057791 c!621470) b!3587866))

(assert (= (and d!1057791 (not c!621470)) b!3587867))

(declare-fun m!4081351 () Bool)

(assert (=> b!3587867 m!4081351))

(assert (=> b!3586966 d!1057791))

(assert (=> b!3586966 d!1057787))

(declare-fun d!1057793 () Bool)

(declare-fun lt!1230645 () Int)

(assert (=> d!1057793 (>= lt!1230645 0)))

(declare-fun e!2219954 () Int)

(assert (=> d!1057793 (= lt!1230645 e!2219954)))

(declare-fun c!621471 () Bool)

(assert (=> d!1057793 (= c!621471 (is-Nil!37701 (_2!21929 lt!1230275)))))

(assert (=> d!1057793 (= (size!28723 (_2!21929 lt!1230275)) lt!1230645)))

(declare-fun b!3587868 () Bool)

(assert (=> b!3587868 (= e!2219954 0)))

(declare-fun b!3587869 () Bool)

(assert (=> b!3587869 (= e!2219954 (+ 1 (size!28723 (t!290638 (_2!21929 lt!1230275)))))))

(assert (= (and d!1057793 c!621471) b!3587868))

(assert (= (and d!1057793 (not c!621471)) b!3587869))

(declare-fun m!4081353 () Bool)

(assert (=> b!3587869 m!4081353))

(assert (=> b!3586966 d!1057793))

(assert (=> b!3587170 d!1057741))

(assert (=> b!3587170 d!1057787))

(assert (=> b!3587241 d!1057669))

(assert (=> b!3587241 d!1057671))

(assert (=> b!3586943 d!1057729))

(assert (=> b!3586943 d!1057425))

(declare-fun d!1057795 () Bool)

(declare-fun lt!1230646 () Int)

(assert (=> d!1057795 (>= lt!1230646 0)))

(declare-fun e!2219955 () Int)

(assert (=> d!1057795 (= lt!1230646 e!2219955)))

(declare-fun c!621472 () Bool)

(assert (=> d!1057795 (= c!621472 (is-Nil!37701 lt!1230452))))

(assert (=> d!1057795 (= (size!28723 lt!1230452) lt!1230646)))

(declare-fun b!3587870 () Bool)

(assert (=> b!3587870 (= e!2219955 0)))

(declare-fun b!3587871 () Bool)

(assert (=> b!3587871 (= e!2219955 (+ 1 (size!28723 (t!290638 lt!1230452))))))

(assert (= (and d!1057795 c!621472) b!3587870))

(assert (= (and d!1057795 (not c!621472)) b!3587871))

(declare-fun m!4081355 () Bool)

(assert (=> b!3587871 m!4081355))

(assert (=> b!3587165 d!1057795))

(assert (=> b!3587165 d!1057751))

(declare-fun d!1057797 () Bool)

(declare-fun lt!1230647 () Int)

(assert (=> d!1057797 (>= lt!1230647 0)))

(declare-fun e!2219956 () Int)

(assert (=> d!1057797 (= lt!1230647 e!2219956)))

(declare-fun c!621473 () Bool)

(assert (=> d!1057797 (= c!621473 (is-Nil!37701 suffix!1395))))

(assert (=> d!1057797 (= (size!28723 suffix!1395) lt!1230647)))

(declare-fun b!3587872 () Bool)

(assert (=> b!3587872 (= e!2219956 0)))

(declare-fun b!3587873 () Bool)

(assert (=> b!3587873 (= e!2219956 (+ 1 (size!28723 (t!290638 suffix!1395))))))

(assert (= (and d!1057797 c!621473) b!3587872))

(assert (= (and d!1057797 (not c!621473)) b!3587873))

(declare-fun m!4081357 () Bool)

(assert (=> b!3587873 m!4081357))

(assert (=> b!3587165 d!1057797))

(declare-fun bs!570096 () Bool)

(declare-fun d!1057799 () Bool)

(assert (= bs!570096 (and d!1057799 d!1057763)))

(declare-fun lambda!123805 () Int)

(assert (=> bs!570096 (= (= (toValue!7843 (transformation!5563 (h!43122 rules!3307))) (toValue!7843 (transformation!5563 rule!403))) (= lambda!123805 lambda!123804))))

(assert (=> d!1057799 true))

(assert (=> d!1057799 (< (dynLambda!16206 order!20451 (toValue!7843 (transformation!5563 (h!43122 rules!3307)))) (dynLambda!16215 order!20463 lambda!123805))))

(assert (=> d!1057799 (= (equivClasses!2257 (toChars!7702 (transformation!5563 (h!43122 rules!3307))) (toValue!7843 (transformation!5563 (h!43122 rules!3307)))) (Forall2!961 lambda!123805))))

(declare-fun bs!570097 () Bool)

(assert (= bs!570097 d!1057799))

(declare-fun m!4081359 () Bool)

(assert (=> bs!570097 m!4081359))

(assert (=> b!3586918 d!1057799))

(declare-fun d!1057801 () Bool)

(declare-fun lt!1230648 () Bool)

(assert (=> d!1057801 (= lt!1230648 (set.member lt!1230271 (content!5358 (t!290638 (usedCharacters!777 (regex!5563 rule!403))))))))

(declare-fun e!2219958 () Bool)

(assert (=> d!1057801 (= lt!1230648 e!2219958)))

(declare-fun res!1448159 () Bool)

(assert (=> d!1057801 (=> (not res!1448159) (not e!2219958))))

(assert (=> d!1057801 (= res!1448159 (is-Cons!37701 (t!290638 (usedCharacters!777 (regex!5563 rule!403)))))))

(assert (=> d!1057801 (= (contains!7187 (t!290638 (usedCharacters!777 (regex!5563 rule!403))) lt!1230271) lt!1230648)))

(declare-fun b!3587874 () Bool)

(declare-fun e!2219957 () Bool)

(assert (=> b!3587874 (= e!2219958 e!2219957)))

(declare-fun res!1448158 () Bool)

(assert (=> b!3587874 (=> res!1448158 e!2219957)))

(assert (=> b!3587874 (= res!1448158 (= (h!43121 (t!290638 (usedCharacters!777 (regex!5563 rule!403)))) lt!1230271))))

(declare-fun b!3587875 () Bool)

(assert (=> b!3587875 (= e!2219957 (contains!7187 (t!290638 (t!290638 (usedCharacters!777 (regex!5563 rule!403)))) lt!1230271))))

(assert (= (and d!1057801 res!1448159) b!3587874))

(assert (= (and b!3587874 (not res!1448158)) b!3587875))

(assert (=> d!1057801 m!4081217))

(declare-fun m!4081361 () Bool)

(assert (=> d!1057801 m!4081361))

(declare-fun m!4081363 () Bool)

(assert (=> b!3587875 m!4081363))

(assert (=> b!3587180 d!1057801))

(assert (=> b!3587093 d!1057625))

(declare-fun b!3587876 () Bool)

(declare-fun e!2219962 () Bool)

(declare-fun e!2219959 () Bool)

(assert (=> b!3587876 (= e!2219962 e!2219959)))

(declare-fun res!1448161 () Bool)

(assert (=> b!3587876 (=> (not res!1448161) (not e!2219959))))

(declare-fun lt!1230650 () Option!7757)

(assert (=> b!3587876 (= res!1448161 (contains!7188 rules!3307 (get!12149 lt!1230650)))))

(declare-fun b!3587877 () Bool)

(declare-fun e!2219960 () Option!7757)

(assert (=> b!3587877 (= e!2219960 (Some!7756 (h!43122 rules!3307)))))

(declare-fun b!3587878 () Bool)

(declare-fun lt!1230649 () Unit!53698)

(declare-fun lt!1230651 () Unit!53698)

(assert (=> b!3587878 (= lt!1230649 lt!1230651)))

(assert (=> b!3587878 (rulesInvariant!4549 thiss!23823 (t!290639 rules!3307))))

(assert (=> b!3587878 (= lt!1230651 (lemmaInvariantOnRulesThenOnTail!491 thiss!23823 (h!43122 rules!3307) (t!290639 rules!3307)))))

(declare-fun e!2219961 () Option!7757)

(assert (=> b!3587878 (= e!2219961 (getRuleFromTag!1169 thiss!23823 (t!290639 rules!3307) (tag!6231 (rule!8277 lt!1230419))))))

(declare-fun b!3587879 () Bool)

(assert (=> b!3587879 (= e!2219959 (= (tag!6231 (get!12149 lt!1230650)) (tag!6231 (rule!8277 lt!1230419))))))

(declare-fun d!1057803 () Bool)

(assert (=> d!1057803 e!2219962))

(declare-fun res!1448160 () Bool)

(assert (=> d!1057803 (=> res!1448160 e!2219962)))

(assert (=> d!1057803 (= res!1448160 (isEmpty!22214 lt!1230650))))

(assert (=> d!1057803 (= lt!1230650 e!2219960)))

(declare-fun c!621474 () Bool)

(assert (=> d!1057803 (= c!621474 (and (is-Cons!37702 rules!3307) (= (tag!6231 (h!43122 rules!3307)) (tag!6231 (rule!8277 lt!1230419)))))))

(assert (=> d!1057803 (rulesInvariant!4549 thiss!23823 rules!3307)))

(assert (=> d!1057803 (= (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419))) lt!1230650)))

(declare-fun b!3587880 () Bool)

(assert (=> b!3587880 (= e!2219960 e!2219961)))

(declare-fun c!621475 () Bool)

(assert (=> b!3587880 (= c!621475 (and (is-Cons!37702 rules!3307) (not (= (tag!6231 (h!43122 rules!3307)) (tag!6231 (rule!8277 lt!1230419))))))))

(declare-fun b!3587881 () Bool)

(assert (=> b!3587881 (= e!2219961 None!7756)))

(assert (= (and d!1057803 c!621474) b!3587877))

(assert (= (and d!1057803 (not c!621474)) b!3587880))

(assert (= (and b!3587880 c!621475) b!3587878))

(assert (= (and b!3587880 (not c!621475)) b!3587881))

(assert (= (and d!1057803 (not res!1448160)) b!3587876))

(assert (= (and b!3587876 res!1448161) b!3587879))

(declare-fun m!4081365 () Bool)

(assert (=> b!3587876 m!4081365))

(assert (=> b!3587876 m!4081365))

(declare-fun m!4081367 () Bool)

(assert (=> b!3587876 m!4081367))

(assert (=> b!3587878 m!4080263))

(assert (=> b!3587878 m!4080265))

(declare-fun m!4081369 () Bool)

(assert (=> b!3587878 m!4081369))

(assert (=> b!3587879 m!4081365))

(declare-fun m!4081371 () Bool)

(assert (=> d!1057803 m!4081371))

(assert (=> d!1057803 m!4080057))

(assert (=> b!3587093 d!1057803))

(assert (=> b!3587093 d!1057627))

(declare-fun b!3587882 () Bool)

(declare-fun e!2219964 () Bool)

(declare-fun e!2219965 () Bool)

(assert (=> b!3587882 (= e!2219964 e!2219965)))

(declare-fun res!1448169 () Bool)

(assert (=> b!3587882 (=> res!1448169 e!2219965)))

(declare-fun call!259774 () Bool)

(assert (=> b!3587882 (= res!1448169 call!259774)))

(declare-fun d!1057805 () Bool)

(declare-fun e!2219963 () Bool)

(assert (=> d!1057805 e!2219963))

(declare-fun c!621477 () Bool)

(assert (=> d!1057805 (= c!621477 (is-EmptyExpr!10322 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419)))))))))

(declare-fun lt!1230652 () Bool)

(declare-fun e!2219967 () Bool)

(assert (=> d!1057805 (= lt!1230652 e!2219967)))

(declare-fun c!621478 () Bool)

(assert (=> d!1057805 (= c!621478 (isEmpty!22210 (list!13859 (charsOf!3577 lt!1230419))))))

(assert (=> d!1057805 (validRegex!4716 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419))))))))

(assert (=> d!1057805 (= (matchR!4891 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419))))) (list!13859 (charsOf!3577 lt!1230419))) lt!1230652)))

(declare-fun b!3587883 () Bool)

(declare-fun e!2219966 () Bool)

(assert (=> b!3587883 (= e!2219966 (= (head!7483 (list!13859 (charsOf!3577 lt!1230419))) (c!621269 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419))))))))))

(declare-fun b!3587884 () Bool)

(declare-fun res!1448163 () Bool)

(assert (=> b!3587884 (=> res!1448163 e!2219965)))

(assert (=> b!3587884 (= res!1448163 (not (isEmpty!22210 (tail!5558 (list!13859 (charsOf!3577 lt!1230419))))))))

(declare-fun b!3587885 () Bool)

(declare-fun res!1448165 () Bool)

(assert (=> b!3587885 (=> (not res!1448165) (not e!2219966))))

(assert (=> b!3587885 (= res!1448165 (not call!259774))))

(declare-fun bm!259769 () Bool)

(assert (=> bm!259769 (= call!259774 (isEmpty!22210 (list!13859 (charsOf!3577 lt!1230419))))))

(declare-fun b!3587886 () Bool)

(declare-fun e!2219969 () Bool)

(assert (=> b!3587886 (= e!2219963 e!2219969)))

(declare-fun c!621476 () Bool)

(assert (=> b!3587886 (= c!621476 (is-EmptyLang!10322 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419)))))))))

(declare-fun b!3587887 () Bool)

(assert (=> b!3587887 (= e!2219969 (not lt!1230652))))

(declare-fun b!3587888 () Bool)

(assert (=> b!3587888 (= e!2219965 (not (= (head!7483 (list!13859 (charsOf!3577 lt!1230419))) (c!621269 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419)))))))))))

(declare-fun b!3587889 () Bool)

(declare-fun res!1448162 () Bool)

(declare-fun e!2219968 () Bool)

(assert (=> b!3587889 (=> res!1448162 e!2219968)))

(assert (=> b!3587889 (= res!1448162 e!2219966)))

(declare-fun res!1448167 () Bool)

(assert (=> b!3587889 (=> (not res!1448167) (not e!2219966))))

(assert (=> b!3587889 (= res!1448167 lt!1230652)))

(declare-fun b!3587890 () Bool)

(declare-fun res!1448168 () Bool)

(assert (=> b!3587890 (=> (not res!1448168) (not e!2219966))))

(assert (=> b!3587890 (= res!1448168 (isEmpty!22210 (tail!5558 (list!13859 (charsOf!3577 lt!1230419)))))))

(declare-fun b!3587891 () Bool)

(declare-fun res!1448164 () Bool)

(assert (=> b!3587891 (=> res!1448164 e!2219968)))

(assert (=> b!3587891 (= res!1448164 (not (is-ElementMatch!10322 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419))))))))))

(assert (=> b!3587891 (= e!2219969 e!2219968)))

(declare-fun b!3587892 () Bool)

(assert (=> b!3587892 (= e!2219967 (matchR!4891 (derivativeStep!3109 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419))))) (head!7483 (list!13859 (charsOf!3577 lt!1230419)))) (tail!5558 (list!13859 (charsOf!3577 lt!1230419)))))))

(declare-fun b!3587893 () Bool)

(assert (=> b!3587893 (= e!2219968 e!2219964)))

(declare-fun res!1448166 () Bool)

(assert (=> b!3587893 (=> (not res!1448166) (not e!2219964))))

(assert (=> b!3587893 (= res!1448166 (not lt!1230652))))

(declare-fun b!3587894 () Bool)

(assert (=> b!3587894 (= e!2219967 (nullable!3560 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419)))))))))

(declare-fun b!3587895 () Bool)

(assert (=> b!3587895 (= e!2219963 (= lt!1230652 call!259774))))

(assert (= (and d!1057805 c!621478) b!3587894))

(assert (= (and d!1057805 (not c!621478)) b!3587892))

(assert (= (and d!1057805 c!621477) b!3587895))

(assert (= (and d!1057805 (not c!621477)) b!3587886))

(assert (= (and b!3587886 c!621476) b!3587887))

(assert (= (and b!3587886 (not c!621476)) b!3587891))

(assert (= (and b!3587891 (not res!1448164)) b!3587889))

(assert (= (and b!3587889 res!1448167) b!3587885))

(assert (= (and b!3587885 res!1448165) b!3587890))

(assert (= (and b!3587890 res!1448168) b!3587883))

(assert (= (and b!3587889 (not res!1448162)) b!3587893))

(assert (= (and b!3587893 res!1448166) b!3587882))

(assert (= (and b!3587882 (not res!1448169)) b!3587884))

(assert (= (and b!3587884 (not res!1448163)) b!3587888))

(assert (= (or b!3587895 b!3587882 b!3587885) bm!259769))

(assert (=> b!3587883 m!4080391))

(declare-fun m!4081373 () Bool)

(assert (=> b!3587883 m!4081373))

(assert (=> b!3587890 m!4080391))

(declare-fun m!4081375 () Bool)

(assert (=> b!3587890 m!4081375))

(assert (=> b!3587890 m!4081375))

(declare-fun m!4081377 () Bool)

(assert (=> b!3587890 m!4081377))

(assert (=> bm!259769 m!4080391))

(declare-fun m!4081379 () Bool)

(assert (=> bm!259769 m!4081379))

(assert (=> b!3587888 m!4080391))

(assert (=> b!3587888 m!4081373))

(assert (=> b!3587884 m!4080391))

(assert (=> b!3587884 m!4081375))

(assert (=> b!3587884 m!4081375))

(assert (=> b!3587884 m!4081377))

(assert (=> b!3587892 m!4080391))

(assert (=> b!3587892 m!4081373))

(assert (=> b!3587892 m!4081373))

(declare-fun m!4081381 () Bool)

(assert (=> b!3587892 m!4081381))

(assert (=> b!3587892 m!4080391))

(assert (=> b!3587892 m!4081375))

(assert (=> b!3587892 m!4081381))

(assert (=> b!3587892 m!4081375))

(declare-fun m!4081383 () Bool)

(assert (=> b!3587892 m!4081383))

(assert (=> d!1057805 m!4080391))

(assert (=> d!1057805 m!4081379))

(declare-fun m!4081385 () Bool)

(assert (=> d!1057805 m!4081385))

(declare-fun m!4081387 () Bool)

(assert (=> b!3587894 m!4081387))

(assert (=> b!3587093 d!1057805))

(declare-fun d!1057807 () Bool)

(assert (=> d!1057807 (= (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419)))) (v!37422 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419)))))))

(assert (=> b!3587093 d!1057807))

(assert (=> b!3587159 d!1057651))

(declare-fun d!1057809 () Bool)

(assert (=> d!1057809 (= (apply!9073 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))) (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230451))))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451))))) (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230451))))))))

(declare-fun b_lambda!105993 () Bool)

(assert (=> (not b_lambda!105993) (not d!1057809)))

(declare-fun tb!204691 () Bool)

(declare-fun t!290759 () Bool)

(assert (=> (and b!3587461 (= (toValue!7843 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))) t!290759) tb!204691))

(declare-fun result!249588 () Bool)

(assert (=> tb!204691 (= result!249588 (inv!21 (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451))))) (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230451)))))))))

(declare-fun m!4081389 () Bool)

(assert (=> tb!204691 m!4081389))

(assert (=> d!1057809 t!290759))

(declare-fun b_and!259213 () Bool)

(assert (= b_and!259143 (and (=> t!290759 result!249588) b_and!259213)))

(declare-fun tb!204693 () Bool)

(declare-fun t!290761 () Bool)

(assert (=> (and b!3586811 (= (toValue!7843 (transformation!5563 anOtherTypeRule!33)) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))) t!290761) tb!204693))

(declare-fun result!249590 () Bool)

(assert (= result!249590 result!249588))

(assert (=> d!1057809 t!290761))

(declare-fun b_and!259215 () Bool)

(assert (= b_and!259141 (and (=> t!290761 result!249590) b_and!259215)))

(declare-fun t!290763 () Bool)

(declare-fun tb!204695 () Bool)

(assert (=> (and b!3586802 (= (toValue!7843 (transformation!5563 rule!403)) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))) t!290763) tb!204695))

(declare-fun result!249592 () Bool)

(assert (= result!249592 result!249588))

(assert (=> d!1057809 t!290763))

(declare-fun b_and!259217 () Bool)

(assert (= b_and!259137 (and (=> t!290763 result!249592) b_and!259217)))

(declare-fun tb!204697 () Bool)

(declare-fun t!290765 () Bool)

(assert (=> (and b!3586803 (= (toValue!7843 (transformation!5563 (h!43122 rules!3307))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))) t!290765) tb!204697))

(declare-fun result!249594 () Bool)

(assert (= result!249594 result!249588))

(assert (=> d!1057809 t!290765))

(declare-fun b_and!259219 () Bool)

(assert (= b_and!259139 (and (=> t!290765 result!249594) b_and!259219)))

(declare-fun tb!204699 () Bool)

(declare-fun t!290767 () Bool)

(assert (=> (and b!3586810 (= (toValue!7843 (transformation!5563 (rule!8277 token!511))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))) t!290767) tb!204699))

(declare-fun result!249596 () Bool)

(assert (= result!249596 result!249588))

(assert (=> d!1057809 t!290767))

(declare-fun b_and!259221 () Bool)

(assert (= b_and!259135 (and (=> t!290767 result!249596) b_and!259221)))

(assert (=> d!1057809 m!4080491))

(declare-fun m!4081391 () Bool)

(assert (=> d!1057809 m!4081391))

(assert (=> b!3587159 d!1057809))

(declare-fun d!1057811 () Bool)

(assert (=> d!1057811 (= (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230451)))) (fromListB!1898 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230451)))))))

(declare-fun bs!570098 () Bool)

(assert (= bs!570098 d!1057811))

(declare-fun m!4081393 () Bool)

(assert (=> bs!570098 m!4081393))

(assert (=> b!3587159 d!1057811))

(declare-fun d!1057813 () Bool)

(assert (=> d!1057813 (= (inv!51036 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280))) (isBalanced!3498 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280)))))))

(declare-fun bs!570099 () Bool)

(assert (= bs!570099 d!1057813))

(declare-fun m!4081395 () Bool)

(assert (=> bs!570099 m!4081395))

(assert (=> tb!204605 d!1057813))

(assert (=> b!3587395 d!1057727))

(assert (=> b!3587395 d!1057655))

(declare-fun d!1057815 () Bool)

(declare-fun res!1448170 () Bool)

(declare-fun e!2219971 () Bool)

(assert (=> d!1057815 (=> (not res!1448170) (not e!2219971))))

(assert (=> d!1057815 (= res!1448170 (rulesValid!2117 thiss!23823 (t!290639 rules!3307)))))

(assert (=> d!1057815 (= (rulesInvariant!4549 thiss!23823 (t!290639 rules!3307)) e!2219971)))

(declare-fun b!3587896 () Bool)

(assert (=> b!3587896 (= e!2219971 (noDuplicateTag!2113 thiss!23823 (t!290639 rules!3307) Nil!37707))))

(assert (= (and d!1057815 res!1448170) b!3587896))

(declare-fun m!4081397 () Bool)

(assert (=> d!1057815 m!4081397))

(declare-fun m!4081399 () Bool)

(assert (=> b!3587896 m!4081399))

(assert (=> b!3586934 d!1057815))

(declare-fun d!1057817 () Bool)

(assert (=> d!1057817 (rulesInvariant!4549 thiss!23823 (t!290639 rules!3307))))

(declare-fun lt!1230655 () Unit!53698)

(declare-fun choose!20874 (LexerInterface!5152 Rule!10926 List!37826) Unit!53698)

(assert (=> d!1057817 (= lt!1230655 (choose!20874 thiss!23823 (h!43122 rules!3307) (t!290639 rules!3307)))))

(assert (=> d!1057817 (rulesInvariant!4549 thiss!23823 (Cons!37702 (h!43122 rules!3307) (t!290639 rules!3307)))))

(assert (=> d!1057817 (= (lemmaInvariantOnRulesThenOnTail!491 thiss!23823 (h!43122 rules!3307) (t!290639 rules!3307)) lt!1230655)))

(declare-fun bs!570100 () Bool)

(assert (= bs!570100 d!1057817))

(assert (=> bs!570100 m!4080263))

(declare-fun m!4081401 () Bool)

(assert (=> bs!570100 m!4081401))

(declare-fun m!4081403 () Bool)

(assert (=> bs!570100 m!4081403))

(assert (=> b!3586934 d!1057817))

(declare-fun b!3587897 () Bool)

(declare-fun e!2219975 () Bool)

(declare-fun e!2219972 () Bool)

(assert (=> b!3587897 (= e!2219975 e!2219972)))

(declare-fun res!1448172 () Bool)

(assert (=> b!3587897 (=> (not res!1448172) (not e!2219972))))

(declare-fun lt!1230657 () Option!7757)

(assert (=> b!3587897 (= res!1448172 (contains!7188 (t!290639 rules!3307) (get!12149 lt!1230657)))))

(declare-fun b!3587898 () Bool)

(declare-fun e!2219973 () Option!7757)

(assert (=> b!3587898 (= e!2219973 (Some!7756 (h!43122 (t!290639 rules!3307))))))

(declare-fun b!3587899 () Bool)

(declare-fun lt!1230656 () Unit!53698)

(declare-fun lt!1230658 () Unit!53698)

(assert (=> b!3587899 (= lt!1230656 lt!1230658)))

(assert (=> b!3587899 (rulesInvariant!4549 thiss!23823 (t!290639 (t!290639 rules!3307)))))

(assert (=> b!3587899 (= lt!1230658 (lemmaInvariantOnRulesThenOnTail!491 thiss!23823 (h!43122 (t!290639 rules!3307)) (t!290639 (t!290639 rules!3307))))))

(declare-fun e!2219974 () Option!7757)

(assert (=> b!3587899 (= e!2219974 (getRuleFromTag!1169 thiss!23823 (t!290639 (t!290639 rules!3307)) (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))))

(declare-fun b!3587900 () Bool)

(assert (=> b!3587900 (= e!2219972 (= (tag!6231 (get!12149 lt!1230657)) (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))))

(declare-fun d!1057819 () Bool)

(assert (=> d!1057819 e!2219975))

(declare-fun res!1448171 () Bool)

(assert (=> d!1057819 (=> res!1448171 e!2219975)))

(assert (=> d!1057819 (= res!1448171 (isEmpty!22214 lt!1230657))))

(assert (=> d!1057819 (= lt!1230657 e!2219973)))

(declare-fun c!621479 () Bool)

(assert (=> d!1057819 (= c!621479 (and (is-Cons!37702 (t!290639 rules!3307)) (= (tag!6231 (h!43122 (t!290639 rules!3307))) (tag!6231 (rule!8277 (_1!21929 lt!1230275))))))))

(assert (=> d!1057819 (rulesInvariant!4549 thiss!23823 (t!290639 rules!3307))))

(assert (=> d!1057819 (= (getRuleFromTag!1169 thiss!23823 (t!290639 rules!3307) (tag!6231 (rule!8277 (_1!21929 lt!1230275)))) lt!1230657)))

(declare-fun b!3587901 () Bool)

(assert (=> b!3587901 (= e!2219973 e!2219974)))

(declare-fun c!621480 () Bool)

(assert (=> b!3587901 (= c!621480 (and (is-Cons!37702 (t!290639 rules!3307)) (not (= (tag!6231 (h!43122 (t!290639 rules!3307))) (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))))))

(declare-fun b!3587902 () Bool)

(assert (=> b!3587902 (= e!2219974 None!7756)))

(assert (= (and d!1057819 c!621479) b!3587898))

(assert (= (and d!1057819 (not c!621479)) b!3587901))

(assert (= (and b!3587901 c!621480) b!3587899))

(assert (= (and b!3587901 (not c!621480)) b!3587902))

(assert (= (and d!1057819 (not res!1448171)) b!3587897))

(assert (= (and b!3587897 res!1448172) b!3587900))

(declare-fun m!4081405 () Bool)

(assert (=> b!3587897 m!4081405))

(assert (=> b!3587897 m!4081405))

(declare-fun m!4081407 () Bool)

(assert (=> b!3587897 m!4081407))

(declare-fun m!4081409 () Bool)

(assert (=> b!3587899 m!4081409))

(declare-fun m!4081411 () Bool)

(assert (=> b!3587899 m!4081411))

(declare-fun m!4081413 () Bool)

(assert (=> b!3587899 m!4081413))

(assert (=> b!3587900 m!4081405))

(declare-fun m!4081415 () Bool)

(assert (=> d!1057819 m!4081415))

(assert (=> d!1057819 m!4080263))

(assert (=> b!3586934 d!1057819))

(assert (=> b!3587258 d!1057695))

(declare-fun d!1057821 () Bool)

(assert (=> d!1057821 (= (apply!9073 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))) (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230473))))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473))))) (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230473))))))))

(declare-fun b_lambda!105995 () Bool)

(assert (=> (not b_lambda!105995) (not d!1057821)))

(declare-fun t!290769 () Bool)

(declare-fun tb!204701 () Bool)

(assert (=> (and b!3586803 (= (toValue!7843 (transformation!5563 (h!43122 rules!3307))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))) t!290769) tb!204701))

(declare-fun result!249598 () Bool)

(assert (=> tb!204701 (= result!249598 (inv!21 (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473))))) (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230473)))))))))

(declare-fun m!4081417 () Bool)

(assert (=> tb!204701 m!4081417))

(assert (=> d!1057821 t!290769))

(declare-fun b_and!259223 () Bool)

(assert (= b_and!259219 (and (=> t!290769 result!249598) b_and!259223)))

(declare-fun tb!204703 () Bool)

(declare-fun t!290771 () Bool)

(assert (=> (and b!3586811 (= (toValue!7843 (transformation!5563 anOtherTypeRule!33)) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))) t!290771) tb!204703))

(declare-fun result!249600 () Bool)

(assert (= result!249600 result!249598))

(assert (=> d!1057821 t!290771))

(declare-fun b_and!259225 () Bool)

(assert (= b_and!259215 (and (=> t!290771 result!249600) b_and!259225)))

(declare-fun tb!204705 () Bool)

(declare-fun t!290773 () Bool)

(assert (=> (and b!3586810 (= (toValue!7843 (transformation!5563 (rule!8277 token!511))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))) t!290773) tb!204705))

(declare-fun result!249602 () Bool)

(assert (= result!249602 result!249598))

(assert (=> d!1057821 t!290773))

(declare-fun b_and!259227 () Bool)

(assert (= b_and!259221 (and (=> t!290773 result!249602) b_and!259227)))

(declare-fun t!290775 () Bool)

(declare-fun tb!204707 () Bool)

(assert (=> (and b!3587461 (= (toValue!7843 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))) t!290775) tb!204707))

(declare-fun result!249604 () Bool)

(assert (= result!249604 result!249598))

(assert (=> d!1057821 t!290775))

(declare-fun b_and!259229 () Bool)

(assert (= b_and!259213 (and (=> t!290775 result!249604) b_and!259229)))

(declare-fun tb!204709 () Bool)

(declare-fun t!290777 () Bool)

(assert (=> (and b!3586802 (= (toValue!7843 (transformation!5563 rule!403)) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))) t!290777) tb!204709))

(declare-fun result!249606 () Bool)

(assert (= result!249606 result!249598))

(assert (=> d!1057821 t!290777))

(declare-fun b_and!259231 () Bool)

(assert (= b_and!259217 (and (=> t!290777 result!249606) b_and!259231)))

(assert (=> d!1057821 m!4080597))

(declare-fun m!4081419 () Bool)

(assert (=> d!1057821 m!4081419))

(assert (=> b!3587258 d!1057821))

(declare-fun d!1057823 () Bool)

(assert (=> d!1057823 (= (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230473)))) (fromListB!1898 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230473)))))))

(declare-fun bs!570101 () Bool)

(assert (= bs!570101 d!1057823))

(declare-fun m!4081421 () Bool)

(assert (=> bs!570101 m!4081421))

(assert (=> b!3587258 d!1057823))

(declare-fun b!3587903 () Bool)

(declare-fun e!2219978 () Bool)

(declare-fun e!2219979 () Bool)

(assert (=> b!3587903 (= e!2219978 e!2219979)))

(declare-fun res!1448180 () Bool)

(assert (=> b!3587903 (=> res!1448180 e!2219979)))

(declare-fun call!259775 () Bool)

(assert (=> b!3587903 (= res!1448180 call!259775)))

(declare-fun d!1057825 () Bool)

(declare-fun e!2219977 () Bool)

(assert (=> d!1057825 e!2219977))

(declare-fun c!621482 () Bool)

(assert (=> d!1057825 (= c!621482 (is-EmptyExpr!10322 (derivativeStep!3109 (regex!5563 lt!1230268) (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))))

(declare-fun lt!1230659 () Bool)

(declare-fun e!2219981 () Bool)

(assert (=> d!1057825 (= lt!1230659 e!2219981)))

(declare-fun c!621483 () Bool)

(assert (=> d!1057825 (= c!621483 (isEmpty!22210 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))))))

(assert (=> d!1057825 (validRegex!4716 (derivativeStep!3109 (regex!5563 lt!1230268) (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))))))

(assert (=> d!1057825 (= (matchR!4891 (derivativeStep!3109 (regex!5563 lt!1230268) (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))) (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))) lt!1230659)))

(declare-fun b!3587904 () Bool)

(declare-fun e!2219980 () Bool)

(assert (=> b!3587904 (= e!2219980 (= (head!7483 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))) (c!621269 (derivativeStep!3109 (regex!5563 lt!1230268) (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))))))))

(declare-fun b!3587905 () Bool)

(declare-fun res!1448174 () Bool)

(assert (=> b!3587905 (=> res!1448174 e!2219979)))

(assert (=> b!3587905 (= res!1448174 (not (isEmpty!22210 (tail!5558 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))))))))

(declare-fun b!3587906 () Bool)

(declare-fun res!1448176 () Bool)

(assert (=> b!3587906 (=> (not res!1448176) (not e!2219980))))

(assert (=> b!3587906 (= res!1448176 (not call!259775))))

(declare-fun bm!259770 () Bool)

(assert (=> bm!259770 (= call!259775 (isEmpty!22210 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))))))

(declare-fun b!3587907 () Bool)

(declare-fun e!2219983 () Bool)

(assert (=> b!3587907 (= e!2219977 e!2219983)))

(declare-fun c!621481 () Bool)

(assert (=> b!3587907 (= c!621481 (is-EmptyLang!10322 (derivativeStep!3109 (regex!5563 lt!1230268) (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))))

(declare-fun b!3587908 () Bool)

(assert (=> b!3587908 (= e!2219983 (not lt!1230659))))

(declare-fun b!3587909 () Bool)

(assert (=> b!3587909 (= e!2219979 (not (= (head!7483 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))) (c!621269 (derivativeStep!3109 (regex!5563 lt!1230268) (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))))))

(declare-fun b!3587910 () Bool)

(declare-fun res!1448173 () Bool)

(declare-fun e!2219982 () Bool)

(assert (=> b!3587910 (=> res!1448173 e!2219982)))

(assert (=> b!3587910 (= res!1448173 e!2219980)))

(declare-fun res!1448178 () Bool)

(assert (=> b!3587910 (=> (not res!1448178) (not e!2219980))))

(assert (=> b!3587910 (= res!1448178 lt!1230659)))

(declare-fun b!3587911 () Bool)

(declare-fun res!1448179 () Bool)

(assert (=> b!3587911 (=> (not res!1448179) (not e!2219980))))

(assert (=> b!3587911 (= res!1448179 (isEmpty!22210 (tail!5558 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))))

(declare-fun b!3587912 () Bool)

(declare-fun res!1448175 () Bool)

(assert (=> b!3587912 (=> res!1448175 e!2219982)))

(assert (=> b!3587912 (= res!1448175 (not (is-ElementMatch!10322 (derivativeStep!3109 (regex!5563 lt!1230268) (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))))))))

(assert (=> b!3587912 (= e!2219983 e!2219982)))

(declare-fun b!3587913 () Bool)

(assert (=> b!3587913 (= e!2219981 (matchR!4891 (derivativeStep!3109 (derivativeStep!3109 (regex!5563 lt!1230268) (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))) (head!7483 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))) (tail!5558 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))))

(declare-fun b!3587914 () Bool)

(assert (=> b!3587914 (= e!2219982 e!2219978)))

(declare-fun res!1448177 () Bool)

(assert (=> b!3587914 (=> (not res!1448177) (not e!2219978))))

(assert (=> b!3587914 (= res!1448177 (not lt!1230659))))

(declare-fun b!3587915 () Bool)

(assert (=> b!3587915 (= e!2219981 (nullable!3560 (derivativeStep!3109 (regex!5563 lt!1230268) (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))))

(declare-fun b!3587916 () Bool)

(assert (=> b!3587916 (= e!2219977 (= lt!1230659 call!259775))))

(assert (= (and d!1057825 c!621483) b!3587915))

(assert (= (and d!1057825 (not c!621483)) b!3587913))

(assert (= (and d!1057825 c!621482) b!3587916))

(assert (= (and d!1057825 (not c!621482)) b!3587907))

(assert (= (and b!3587907 c!621481) b!3587908))

(assert (= (and b!3587907 (not c!621481)) b!3587912))

(assert (= (and b!3587912 (not res!1448175)) b!3587910))

(assert (= (and b!3587910 res!1448178) b!3587906))

(assert (= (and b!3587906 res!1448176) b!3587911))

(assert (= (and b!3587911 res!1448179) b!3587904))

(assert (= (and b!3587910 (not res!1448173)) b!3587914))

(assert (= (and b!3587914 res!1448177) b!3587903))

(assert (= (and b!3587903 (not res!1448180)) b!3587905))

(assert (= (and b!3587905 (not res!1448174)) b!3587909))

(assert (= (or b!3587916 b!3587903 b!3587906) bm!259770))

(assert (=> b!3587904 m!4080569))

(declare-fun m!4081423 () Bool)

(assert (=> b!3587904 m!4081423))

(assert (=> b!3587911 m!4080569))

(declare-fun m!4081425 () Bool)

(assert (=> b!3587911 m!4081425))

(assert (=> b!3587911 m!4081425))

(declare-fun m!4081427 () Bool)

(assert (=> b!3587911 m!4081427))

(assert (=> bm!259770 m!4080569))

(assert (=> bm!259770 m!4080571))

(assert (=> b!3587909 m!4080569))

(assert (=> b!3587909 m!4081423))

(assert (=> b!3587905 m!4080569))

(assert (=> b!3587905 m!4081425))

(assert (=> b!3587905 m!4081425))

(assert (=> b!3587905 m!4081427))

(assert (=> b!3587913 m!4080569))

(assert (=> b!3587913 m!4081423))

(assert (=> b!3587913 m!4080575))

(assert (=> b!3587913 m!4081423))

(declare-fun m!4081429 () Bool)

(assert (=> b!3587913 m!4081429))

(assert (=> b!3587913 m!4080569))

(assert (=> b!3587913 m!4081425))

(assert (=> b!3587913 m!4081429))

(assert (=> b!3587913 m!4081425))

(declare-fun m!4081431 () Bool)

(assert (=> b!3587913 m!4081431))

(assert (=> d!1057825 m!4080569))

(assert (=> d!1057825 m!4080571))

(assert (=> d!1057825 m!4080575))

(declare-fun m!4081433 () Bool)

(assert (=> d!1057825 m!4081433))

(assert (=> b!3587915 m!4080575))

(declare-fun m!4081435 () Bool)

(assert (=> b!3587915 m!4081435))

(assert (=> b!3587249 d!1057825))

(declare-fun b!3587917 () Bool)

(declare-fun c!621485 () Bool)

(assert (=> b!3587917 (= c!621485 (nullable!3560 (regOne!21156 (regex!5563 lt!1230268))))))

(declare-fun e!2219985 () Regex!10322)

(declare-fun e!2219988 () Regex!10322)

(assert (=> b!3587917 (= e!2219985 e!2219988)))

(declare-fun call!259777 () Regex!10322)

(declare-fun call!259776 () Regex!10322)

(declare-fun b!3587918 () Bool)

(assert (=> b!3587918 (= e!2219988 (Union!10322 (Concat!16116 call!259777 (regTwo!21156 (regex!5563 lt!1230268))) call!259776))))

(declare-fun b!3587919 () Bool)

(assert (=> b!3587919 (= e!2219988 (Union!10322 (Concat!16116 call!259777 (regTwo!21156 (regex!5563 lt!1230268))) EmptyLang!10322))))

(declare-fun b!3587920 () Bool)

(declare-fun e!2219984 () Regex!10322)

(declare-fun e!2219986 () Regex!10322)

(assert (=> b!3587920 (= e!2219984 e!2219986)))

(declare-fun c!621487 () Bool)

(assert (=> b!3587920 (= c!621487 (is-ElementMatch!10322 (regex!5563 lt!1230268)))))

(declare-fun b!3587921 () Bool)

(declare-fun c!621484 () Bool)

(assert (=> b!3587921 (= c!621484 (is-Union!10322 (regex!5563 lt!1230268)))))

(declare-fun e!2219987 () Regex!10322)

(assert (=> b!3587921 (= e!2219986 e!2219987)))

(declare-fun d!1057827 () Bool)

(declare-fun lt!1230660 () Regex!10322)

(assert (=> d!1057827 (validRegex!4716 lt!1230660)))

(assert (=> d!1057827 (= lt!1230660 e!2219984)))

(declare-fun c!621486 () Bool)

(assert (=> d!1057827 (= c!621486 (or (is-EmptyExpr!10322 (regex!5563 lt!1230268)) (is-EmptyLang!10322 (regex!5563 lt!1230268))))))

(assert (=> d!1057827 (validRegex!4716 (regex!5563 lt!1230268))))

(assert (=> d!1057827 (= (derivativeStep!3109 (regex!5563 lt!1230268) (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))) lt!1230660)))

(declare-fun bm!259771 () Bool)

(assert (=> bm!259771 (= call!259776 (derivativeStep!3109 (ite c!621484 (regTwo!21157 (regex!5563 lt!1230268)) (regTwo!21156 (regex!5563 lt!1230268))) (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))))))

(declare-fun b!3587922 () Bool)

(assert (=> b!3587922 (= e!2219986 (ite (= (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))) (c!621269 (regex!5563 lt!1230268))) EmptyExpr!10322 EmptyLang!10322))))

(declare-fun b!3587923 () Bool)

(declare-fun call!259778 () Regex!10322)

(assert (=> b!3587923 (= e!2219985 (Concat!16116 call!259778 (regex!5563 lt!1230268)))))

(declare-fun b!3587924 () Bool)

(assert (=> b!3587924 (= e!2219984 EmptyLang!10322)))

(declare-fun bm!259772 () Bool)

(declare-fun c!621488 () Bool)

(declare-fun call!259779 () Regex!10322)

(assert (=> bm!259772 (= call!259779 (derivativeStep!3109 (ite c!621484 (regOne!21157 (regex!5563 lt!1230268)) (ite c!621488 (reg!10651 (regex!5563 lt!1230268)) (regOne!21156 (regex!5563 lt!1230268)))) (head!7483 (list!13859 (charsOf!3577 (_1!21929 lt!1230275))))))))

(declare-fun bm!259773 () Bool)

(assert (=> bm!259773 (= call!259778 call!259779)))

(declare-fun b!3587925 () Bool)

(assert (=> b!3587925 (= e!2219987 e!2219985)))

(assert (=> b!3587925 (= c!621488 (is-Star!10322 (regex!5563 lt!1230268)))))

(declare-fun bm!259774 () Bool)

(assert (=> bm!259774 (= call!259777 call!259778)))

(declare-fun b!3587926 () Bool)

(assert (=> b!3587926 (= e!2219987 (Union!10322 call!259779 call!259776))))

(assert (= (and d!1057827 c!621486) b!3587924))

(assert (= (and d!1057827 (not c!621486)) b!3587920))

(assert (= (and b!3587920 c!621487) b!3587922))

(assert (= (and b!3587920 (not c!621487)) b!3587921))

(assert (= (and b!3587921 c!621484) b!3587926))

(assert (= (and b!3587921 (not c!621484)) b!3587925))

(assert (= (and b!3587925 c!621488) b!3587923))

(assert (= (and b!3587925 (not c!621488)) b!3587917))

(assert (= (and b!3587917 c!621485) b!3587918))

(assert (= (and b!3587917 (not c!621485)) b!3587919))

(assert (= (or b!3587918 b!3587919) bm!259774))

(assert (= (or b!3587923 bm!259774) bm!259773))

(assert (= (or b!3587926 b!3587918) bm!259771))

(assert (= (or b!3587926 bm!259773) bm!259772))

(declare-fun m!4081437 () Bool)

(assert (=> b!3587917 m!4081437))

(declare-fun m!4081439 () Bool)

(assert (=> d!1057827 m!4081439))

(assert (=> d!1057827 m!4080579))

(assert (=> bm!259771 m!4080567))

(declare-fun m!4081441 () Bool)

(assert (=> bm!259771 m!4081441))

(assert (=> bm!259772 m!4080567))

(declare-fun m!4081443 () Bool)

(assert (=> bm!259772 m!4081443))

(assert (=> b!3587249 d!1057827))

(assert (=> b!3587249 d!1057719))

(assert (=> b!3587249 d!1057671))

(declare-fun d!1057829 () Bool)

(assert (=> d!1057829 (= (inv!51036 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511))) (isBalanced!3498 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511)))))))

(declare-fun bs!570102 () Bool)

(assert (= bs!570102 d!1057829))

(declare-fun m!4081445 () Bool)

(assert (=> bs!570102 m!4081445))

(assert (=> tb!204581 d!1057829))

(declare-fun b!3587930 () Bool)

(declare-fun e!2219990 () List!37825)

(assert (=> b!3587930 (= e!2219990 (++!9379 (list!13861 (left!29462 (c!621270 (charsOf!3577 (_1!21929 lt!1230275))))) (list!13861 (right!29792 (c!621270 (charsOf!3577 (_1!21929 lt!1230275)))))))))

(declare-fun d!1057831 () Bool)

(declare-fun c!621489 () Bool)

(assert (=> d!1057831 (= c!621489 (is-Empty!11466 (c!621270 (charsOf!3577 (_1!21929 lt!1230275)))))))

(declare-fun e!2219989 () List!37825)

(assert (=> d!1057831 (= (list!13861 (c!621270 (charsOf!3577 (_1!21929 lt!1230275)))) e!2219989)))

(declare-fun b!3587927 () Bool)

(assert (=> b!3587927 (= e!2219989 Nil!37701)))

(declare-fun b!3587929 () Bool)

(assert (=> b!3587929 (= e!2219990 (list!13865 (xs!14668 (c!621270 (charsOf!3577 (_1!21929 lt!1230275))))))))

(declare-fun b!3587928 () Bool)

(assert (=> b!3587928 (= e!2219989 e!2219990)))

(declare-fun c!621490 () Bool)

(assert (=> b!3587928 (= c!621490 (is-Leaf!17859 (c!621270 (charsOf!3577 (_1!21929 lt!1230275)))))))

(assert (= (and d!1057831 c!621489) b!3587927))

(assert (= (and d!1057831 (not c!621489)) b!3587928))

(assert (= (and b!3587928 c!621490) b!3587929))

(assert (= (and b!3587928 (not c!621490)) b!3587930))

(declare-fun m!4081447 () Bool)

(assert (=> b!3587930 m!4081447))

(declare-fun m!4081449 () Bool)

(assert (=> b!3587930 m!4081449))

(assert (=> b!3587930 m!4081447))

(assert (=> b!3587930 m!4081449))

(declare-fun m!4081451 () Bool)

(assert (=> b!3587930 m!4081451))

(declare-fun m!4081453 () Bool)

(assert (=> b!3587929 m!4081453))

(assert (=> d!1057509 d!1057831))

(declare-fun d!1057833 () Bool)

(assert (=> d!1057833 (= (isEmpty!22210 lt!1230283) (is-Nil!37701 lt!1230283))))

(assert (=> bm!259718 d!1057833))

(declare-fun d!1057835 () Bool)

(assert (=> d!1057835 (= (isDefined!5988 lt!1230451) (not (isEmpty!22215 lt!1230451)))))

(declare-fun bs!570103 () Bool)

(assert (= bs!570103 d!1057835))

(assert (=> bs!570103 m!4080495))

(assert (=> b!3587156 d!1057835))

(declare-fun b!3587931 () Bool)

(declare-fun c!621493 () Bool)

(assert (=> b!3587931 (= c!621493 (is-Star!10322 (ite c!621356 (regTwo!21157 (regex!5563 anOtherTypeRule!33)) (regOne!21156 (regex!5563 anOtherTypeRule!33)))))))

(declare-fun e!2219994 () List!37825)

(declare-fun e!2219991 () List!37825)

(assert (=> b!3587931 (= e!2219994 e!2219991)))

(declare-fun bm!259775 () Bool)

(declare-fun call!259783 () List!37825)

(declare-fun call!259782 () List!37825)

(assert (=> bm!259775 (= call!259783 call!259782)))

(declare-fun call!259780 () List!37825)

(declare-fun c!621494 () Bool)

(declare-fun call!259781 () List!37825)

(declare-fun bm!259776 () Bool)

(assert (=> bm!259776 (= call!259780 (++!9379 (ite c!621494 call!259783 call!259781) (ite c!621494 call!259781 call!259783)))))

(declare-fun b!3587933 () Bool)

(assert (=> b!3587933 (= e!2219994 (Cons!37701 (c!621269 (ite c!621356 (regTwo!21157 (regex!5563 anOtherTypeRule!33)) (regOne!21156 (regex!5563 anOtherTypeRule!33)))) Nil!37701))))

(declare-fun b!3587934 () Bool)

(declare-fun e!2219992 () List!37825)

(assert (=> b!3587934 (= e!2219992 call!259780)))

(declare-fun b!3587935 () Bool)

(assert (=> b!3587935 (= e!2219991 e!2219992)))

(assert (=> b!3587935 (= c!621494 (is-Union!10322 (ite c!621356 (regTwo!21157 (regex!5563 anOtherTypeRule!33)) (regOne!21156 (regex!5563 anOtherTypeRule!33)))))))

(declare-fun bm!259777 () Bool)

(assert (=> bm!259777 (= call!259782 (usedCharacters!777 (ite c!621493 (reg!10651 (ite c!621356 (regTwo!21157 (regex!5563 anOtherTypeRule!33)) (regOne!21156 (regex!5563 anOtherTypeRule!33)))) (ite c!621494 (regOne!21157 (ite c!621356 (regTwo!21157 (regex!5563 anOtherTypeRule!33)) (regOne!21156 (regex!5563 anOtherTypeRule!33)))) (regTwo!21156 (ite c!621356 (regTwo!21157 (regex!5563 anOtherTypeRule!33)) (regOne!21156 (regex!5563 anOtherTypeRule!33))))))))))

(declare-fun b!3587936 () Bool)

(declare-fun e!2219993 () List!37825)

(assert (=> b!3587936 (= e!2219993 e!2219994)))

(declare-fun c!621491 () Bool)

(assert (=> b!3587936 (= c!621491 (is-ElementMatch!10322 (ite c!621356 (regTwo!21157 (regex!5563 anOtherTypeRule!33)) (regOne!21156 (regex!5563 anOtherTypeRule!33)))))))

(declare-fun b!3587937 () Bool)

(assert (=> b!3587937 (= e!2219993 Nil!37701)))

(declare-fun b!3587932 () Bool)

(assert (=> b!3587932 (= e!2219992 call!259780)))

(declare-fun d!1057837 () Bool)

(declare-fun c!621492 () Bool)

(assert (=> d!1057837 (= c!621492 (or (is-EmptyExpr!10322 (ite c!621356 (regTwo!21157 (regex!5563 anOtherTypeRule!33)) (regOne!21156 (regex!5563 anOtherTypeRule!33)))) (is-EmptyLang!10322 (ite c!621356 (regTwo!21157 (regex!5563 anOtherTypeRule!33)) (regOne!21156 (regex!5563 anOtherTypeRule!33))))))))

(assert (=> d!1057837 (= (usedCharacters!777 (ite c!621356 (regTwo!21157 (regex!5563 anOtherTypeRule!33)) (regOne!21156 (regex!5563 anOtherTypeRule!33)))) e!2219993)))

(declare-fun b!3587938 () Bool)

(assert (=> b!3587938 (= e!2219991 call!259782)))

(declare-fun bm!259778 () Bool)

(assert (=> bm!259778 (= call!259781 (usedCharacters!777 (ite c!621494 (regTwo!21157 (ite c!621356 (regTwo!21157 (regex!5563 anOtherTypeRule!33)) (regOne!21156 (regex!5563 anOtherTypeRule!33)))) (regOne!21156 (ite c!621356 (regTwo!21157 (regex!5563 anOtherTypeRule!33)) (regOne!21156 (regex!5563 anOtherTypeRule!33)))))))))

(assert (= (and d!1057837 c!621492) b!3587937))

(assert (= (and d!1057837 (not c!621492)) b!3587936))

(assert (= (and b!3587936 c!621491) b!3587933))

(assert (= (and b!3587936 (not c!621491)) b!3587931))

(assert (= (and b!3587931 c!621493) b!3587938))

(assert (= (and b!3587931 (not c!621493)) b!3587935))

(assert (= (and b!3587935 c!621494) b!3587934))

(assert (= (and b!3587935 (not c!621494)) b!3587932))

(assert (= (or b!3587934 b!3587932) bm!259775))

(assert (= (or b!3587934 b!3587932) bm!259778))

(assert (= (or b!3587934 b!3587932) bm!259776))

(assert (= (or b!3587938 bm!259775) bm!259777))

(declare-fun m!4081455 () Bool)

(assert (=> bm!259776 m!4081455))

(declare-fun m!4081457 () Bool)

(assert (=> bm!259777 m!4081457))

(declare-fun m!4081459 () Bool)

(assert (=> bm!259778 m!4081459))

(assert (=> bm!259722 d!1057837))

(declare-fun d!1057839 () Bool)

(declare-fun c!621495 () Bool)

(assert (=> d!1057839 (= c!621495 (is-Nil!37701 lt!1230355))))

(declare-fun e!2219995 () (Set C!20830))

(assert (=> d!1057839 (= (content!5358 lt!1230355) e!2219995)))

(declare-fun b!3587939 () Bool)

(assert (=> b!3587939 (= e!2219995 (as set.empty (Set C!20830)))))

(declare-fun b!3587940 () Bool)

(assert (=> b!3587940 (= e!2219995 (set.union (set.insert (h!43121 lt!1230355) (as set.empty (Set C!20830))) (content!5358 (t!290638 lt!1230355))))))

(assert (= (and d!1057839 c!621495) b!3587939))

(assert (= (and d!1057839 (not c!621495)) b!3587940))

(declare-fun m!4081461 () Bool)

(assert (=> b!3587940 m!4081461))

(declare-fun m!4081463 () Bool)

(assert (=> b!3587940 m!4081463))

(assert (=> d!1057435 d!1057839))

(declare-fun d!1057841 () Bool)

(declare-fun c!621496 () Bool)

(assert (=> d!1057841 (= c!621496 (is-Nil!37701 lt!1230283))))

(declare-fun e!2219996 () (Set C!20830))

(assert (=> d!1057841 (= (content!5358 lt!1230283) e!2219996)))

(declare-fun b!3587941 () Bool)

(assert (=> b!3587941 (= e!2219996 (as set.empty (Set C!20830)))))

(declare-fun b!3587942 () Bool)

(assert (=> b!3587942 (= e!2219996 (set.union (set.insert (h!43121 lt!1230283) (as set.empty (Set C!20830))) (content!5358 (t!290638 lt!1230283))))))

(assert (= (and d!1057841 c!621496) b!3587941))

(assert (= (and d!1057841 (not c!621496)) b!3587942))

(declare-fun m!4081465 () Bool)

(assert (=> b!3587942 m!4081465))

(assert (=> b!3587942 m!4081153))

(assert (=> d!1057435 d!1057841))

(declare-fun d!1057843 () Bool)

(declare-fun c!621497 () Bool)

(assert (=> d!1057843 (= c!621497 (is-Nil!37701 (_2!21929 lt!1230275)))))

(declare-fun e!2219997 () (Set C!20830))

(assert (=> d!1057843 (= (content!5358 (_2!21929 lt!1230275)) e!2219997)))

(declare-fun b!3587943 () Bool)

(assert (=> b!3587943 (= e!2219997 (as set.empty (Set C!20830)))))

(declare-fun b!3587944 () Bool)

(assert (=> b!3587944 (= e!2219997 (set.union (set.insert (h!43121 (_2!21929 lt!1230275)) (as set.empty (Set C!20830))) (content!5358 (t!290638 (_2!21929 lt!1230275)))))))

(assert (= (and d!1057843 c!621497) b!3587943))

(assert (= (and d!1057843 (not c!621497)) b!3587944))

(declare-fun m!4081467 () Bool)

(assert (=> b!3587944 m!4081467))

(declare-fun m!4081469 () Bool)

(assert (=> b!3587944 m!4081469))

(assert (=> d!1057435 d!1057843))

(declare-fun bs!570104 () Bool)

(declare-fun d!1057845 () Bool)

(assert (= bs!570104 (and d!1057845 d!1057549)))

(declare-fun lambda!123806 () Int)

(assert (=> bs!570104 (= (and (= (toChars!7702 (transformation!5563 rule!403)) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) (= (toValue!7843 (transformation!5563 rule!403)) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (= lambda!123806 lambda!123792))))

(declare-fun bs!570105 () Bool)

(assert (= bs!570105 (and d!1057845 d!1057721)))

(assert (=> bs!570105 (= (and (= (toChars!7702 (transformation!5563 rule!403)) (toChars!7702 (transformation!5563 (h!43122 rules!3307)))) (= (toValue!7843 (transformation!5563 rule!403)) (toValue!7843 (transformation!5563 (h!43122 rules!3307))))) (= lambda!123806 lambda!123801))))

(assert (=> d!1057845 true))

(assert (=> d!1057845 (< (dynLambda!16208 order!20455 (toChars!7702 (transformation!5563 rule!403))) (dynLambda!16207 order!20453 lambda!123806))))

(assert (=> d!1057845 true))

(assert (=> d!1057845 (< (dynLambda!16206 order!20451 (toValue!7843 (transformation!5563 rule!403))) (dynLambda!16207 order!20453 lambda!123806))))

(assert (=> d!1057845 (= (semiInverseModEq!2358 (toChars!7702 (transformation!5563 rule!403)) (toValue!7843 (transformation!5563 rule!403))) (Forall!1364 lambda!123806))))

(declare-fun bs!570106 () Bool)

(assert (= bs!570106 d!1057845))

(declare-fun m!4081471 () Bool)

(assert (=> bs!570106 m!4081471))

(assert (=> d!1057421 d!1057845))

(declare-fun d!1057847 () Bool)

(assert (=> d!1057847 (= (list!13859 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280))) (list!13861 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280)))))))

(declare-fun bs!570107 () Bool)

(assert (= bs!570107 d!1057847))

(declare-fun m!4081473 () Bool)

(assert (=> bs!570107 m!4081473))

(assert (=> d!1057549 d!1057847))

(assert (=> d!1057549 d!1057423))

(declare-fun d!1057849 () Bool)

(declare-fun dynLambda!16217 (Int BalanceConc!22546) Bool)

(assert (=> d!1057849 (dynLambda!16217 lambda!123792 lt!1230280)))

(declare-fun lt!1230663 () Unit!53698)

(declare-fun choose!20876 (Int BalanceConc!22546) Unit!53698)

(assert (=> d!1057849 (= lt!1230663 (choose!20876 lambda!123792 lt!1230280))))

(assert (=> d!1057849 (Forall!1364 lambda!123792)))

(assert (=> d!1057849 (= (ForallOf!619 lambda!123792 lt!1230280) lt!1230663)))

(declare-fun b_lambda!105997 () Bool)

(assert (=> (not b_lambda!105997) (not d!1057849)))

(declare-fun bs!570108 () Bool)

(assert (= bs!570108 d!1057849))

(declare-fun m!4081475 () Bool)

(assert (=> bs!570108 m!4081475))

(declare-fun m!4081477 () Bool)

(assert (=> bs!570108 m!4081477))

(declare-fun m!4081479 () Bool)

(assert (=> bs!570108 m!4081479))

(assert (=> d!1057549 d!1057849))

(assert (=> d!1057427 d!1057469))

(assert (=> d!1057427 d!1057435))

(declare-fun d!1057851 () Bool)

(assert (=> d!1057851 (isPrefix!2926 lt!1230283 (++!9379 lt!1230283 (_2!21929 lt!1230275)))))

(assert (=> d!1057851 true))

(declare-fun _$46!1447 () Unit!53698)

(assert (=> d!1057851 (= (choose!20865 lt!1230283 (_2!21929 lt!1230275)) _$46!1447)))

(declare-fun bs!570109 () Bool)

(assert (= bs!570109 d!1057851))

(assert (=> bs!570109 m!4080083))

(assert (=> bs!570109 m!4080083))

(assert (=> bs!570109 m!4080097))

(assert (=> d!1057427 d!1057851))

(declare-fun d!1057853 () Bool)

(assert (=> d!1057853 (= (isDefined!5988 lt!1230473) (not (isEmpty!22215 lt!1230473)))))

(declare-fun bs!570110 () Bool)

(assert (= bs!570110 d!1057853))

(assert (=> bs!570110 m!4080601))

(assert (=> b!3587255 d!1057853))

(assert (=> b!3587245 d!1057719))

(assert (=> d!1057531 d!1057833))

(declare-fun b!3587945 () Bool)

(declare-fun e!2220002 () Bool)

(declare-fun e!2219999 () Bool)

(assert (=> b!3587945 (= e!2220002 e!2219999)))

(declare-fun res!1448182 () Bool)

(assert (=> b!3587945 (= res!1448182 (not (nullable!3560 (reg!10651 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))))))))

(assert (=> b!3587945 (=> (not res!1448182) (not e!2219999))))

(declare-fun b!3587946 () Bool)

(declare-fun res!1448181 () Bool)

(declare-fun e!2220004 () Bool)

(assert (=> b!3587946 (=> (not res!1448181) (not e!2220004))))

(declare-fun call!259786 () Bool)

(assert (=> b!3587946 (= res!1448181 call!259786)))

(declare-fun e!2219998 () Bool)

(assert (=> b!3587946 (= e!2219998 e!2220004)))

(declare-fun d!1057855 () Bool)

(declare-fun res!1448184 () Bool)

(declare-fun e!2220001 () Bool)

(assert (=> d!1057855 (=> res!1448184 e!2220001)))

(assert (=> d!1057855 (= res!1448184 (is-ElementMatch!10322 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))))))

(assert (=> d!1057855 (= (validRegex!4716 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))) e!2220001)))

(declare-fun b!3587947 () Bool)

(declare-fun call!259784 () Bool)

(assert (=> b!3587947 (= e!2220004 call!259784)))

(declare-fun b!3587948 () Bool)

(declare-fun e!2220000 () Bool)

(declare-fun e!2220003 () Bool)

(assert (=> b!3587948 (= e!2220000 e!2220003)))

(declare-fun res!1448185 () Bool)

(assert (=> b!3587948 (=> (not res!1448185) (not e!2220003))))

(assert (=> b!3587948 (= res!1448185 call!259784)))

(declare-fun b!3587949 () Bool)

(assert (=> b!3587949 (= e!2220002 e!2219998)))

(declare-fun c!621498 () Bool)

(assert (=> b!3587949 (= c!621498 (is-Union!10322 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))))))

(declare-fun bm!259779 () Bool)

(declare-fun c!621499 () Bool)

(declare-fun call!259785 () Bool)

(assert (=> bm!259779 (= call!259785 (validRegex!4716 (ite c!621499 (reg!10651 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))) (ite c!621498 (regTwo!21157 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))) (regOne!21156 (regex!5563 (rule!8277 (_1!21929 lt!1230275))))))))))

(declare-fun b!3587950 () Bool)

(declare-fun res!1448183 () Bool)

(assert (=> b!3587950 (=> res!1448183 e!2220000)))

(assert (=> b!3587950 (= res!1448183 (not (is-Concat!16116 (regex!5563 (rule!8277 (_1!21929 lt!1230275))))))))

(assert (=> b!3587950 (= e!2219998 e!2220000)))

(declare-fun b!3587951 () Bool)

(assert (=> b!3587951 (= e!2220003 call!259786)))

(declare-fun b!3587952 () Bool)

(assert (=> b!3587952 (= e!2219999 call!259785)))

(declare-fun bm!259780 () Bool)

(assert (=> bm!259780 (= call!259786 (validRegex!4716 (ite c!621498 (regOne!21157 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))) (regTwo!21156 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))))))))

(declare-fun b!3587953 () Bool)

(assert (=> b!3587953 (= e!2220001 e!2220002)))

(assert (=> b!3587953 (= c!621499 (is-Star!10322 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))))))

(declare-fun bm!259781 () Bool)

(assert (=> bm!259781 (= call!259784 call!259785)))

(assert (= (and d!1057855 (not res!1448184)) b!3587953))

(assert (= (and b!3587953 c!621499) b!3587945))

(assert (= (and b!3587953 (not c!621499)) b!3587949))

(assert (= (and b!3587945 res!1448182) b!3587952))

(assert (= (and b!3587949 c!621498) b!3587946))

(assert (= (and b!3587949 (not c!621498)) b!3587950))

(assert (= (and b!3587946 res!1448181) b!3587947))

(assert (= (and b!3587950 (not res!1448183)) b!3587948))

(assert (= (and b!3587948 res!1448185) b!3587951))

(assert (= (or b!3587946 b!3587951) bm!259780))

(assert (= (or b!3587947 b!3587948) bm!259781))

(assert (= (or b!3587952 bm!259781) bm!259779))

(declare-fun m!4081481 () Bool)

(assert (=> b!3587945 m!4081481))

(declare-fun m!4081483 () Bool)

(assert (=> bm!259779 m!4081483))

(declare-fun m!4081485 () Bool)

(assert (=> bm!259780 m!4081485))

(assert (=> d!1057531 d!1057855))

(declare-fun d!1057857 () Bool)

(declare-fun lt!1230664 () Bool)

(assert (=> d!1057857 (= lt!1230664 (set.member rule!403 (content!5361 (t!290639 rules!3307))))))

(declare-fun e!2220005 () Bool)

(assert (=> d!1057857 (= lt!1230664 e!2220005)))

(declare-fun res!1448187 () Bool)

(assert (=> d!1057857 (=> (not res!1448187) (not e!2220005))))

(assert (=> d!1057857 (= res!1448187 (is-Cons!37702 (t!290639 rules!3307)))))

(assert (=> d!1057857 (= (contains!7188 (t!290639 rules!3307) rule!403) lt!1230664)))

(declare-fun b!3587954 () Bool)

(declare-fun e!2220006 () Bool)

(assert (=> b!3587954 (= e!2220005 e!2220006)))

(declare-fun res!1448186 () Bool)

(assert (=> b!3587954 (=> res!1448186 e!2220006)))

(assert (=> b!3587954 (= res!1448186 (= (h!43122 (t!290639 rules!3307)) rule!403))))

(declare-fun b!3587955 () Bool)

(assert (=> b!3587955 (= e!2220006 (contains!7188 (t!290639 (t!290639 rules!3307)) rule!403))))

(assert (= (and d!1057857 res!1448187) b!3587954))

(assert (= (and b!3587954 (not res!1448186)) b!3587955))

(assert (=> d!1057857 m!4081081))

(declare-fun m!4081487 () Bool)

(assert (=> d!1057857 m!4081487))

(declare-fun m!4081489 () Bool)

(assert (=> b!3587955 m!4081489))

(assert (=> b!3587267 d!1057857))

(declare-fun b!3587956 () Bool)

(declare-fun c!621502 () Bool)

(assert (=> b!3587956 (= c!621502 (is-Star!10322 (ite c!621355 (reg!10651 (regex!5563 anOtherTypeRule!33)) (ite c!621356 (regOne!21157 (regex!5563 anOtherTypeRule!33)) (regTwo!21156 (regex!5563 anOtherTypeRule!33))))))))

(declare-fun e!2220010 () List!37825)

(declare-fun e!2220007 () List!37825)

(assert (=> b!3587956 (= e!2220010 e!2220007)))

(declare-fun bm!259782 () Bool)

(declare-fun call!259790 () List!37825)

(declare-fun call!259789 () List!37825)

(assert (=> bm!259782 (= call!259790 call!259789)))

(declare-fun call!259788 () List!37825)

(declare-fun bm!259783 () Bool)

(declare-fun call!259787 () List!37825)

(declare-fun c!621503 () Bool)

(assert (=> bm!259783 (= call!259787 (++!9379 (ite c!621503 call!259790 call!259788) (ite c!621503 call!259788 call!259790)))))

(declare-fun b!3587958 () Bool)

(assert (=> b!3587958 (= e!2220010 (Cons!37701 (c!621269 (ite c!621355 (reg!10651 (regex!5563 anOtherTypeRule!33)) (ite c!621356 (regOne!21157 (regex!5563 anOtherTypeRule!33)) (regTwo!21156 (regex!5563 anOtherTypeRule!33))))) Nil!37701))))

(declare-fun b!3587959 () Bool)

(declare-fun e!2220008 () List!37825)

(assert (=> b!3587959 (= e!2220008 call!259787)))

(declare-fun b!3587960 () Bool)

(assert (=> b!3587960 (= e!2220007 e!2220008)))

(assert (=> b!3587960 (= c!621503 (is-Union!10322 (ite c!621355 (reg!10651 (regex!5563 anOtherTypeRule!33)) (ite c!621356 (regOne!21157 (regex!5563 anOtherTypeRule!33)) (regTwo!21156 (regex!5563 anOtherTypeRule!33))))))))

(declare-fun bm!259784 () Bool)

(assert (=> bm!259784 (= call!259789 (usedCharacters!777 (ite c!621502 (reg!10651 (ite c!621355 (reg!10651 (regex!5563 anOtherTypeRule!33)) (ite c!621356 (regOne!21157 (regex!5563 anOtherTypeRule!33)) (regTwo!21156 (regex!5563 anOtherTypeRule!33))))) (ite c!621503 (regOne!21157 (ite c!621355 (reg!10651 (regex!5563 anOtherTypeRule!33)) (ite c!621356 (regOne!21157 (regex!5563 anOtherTypeRule!33)) (regTwo!21156 (regex!5563 anOtherTypeRule!33))))) (regTwo!21156 (ite c!621355 (reg!10651 (regex!5563 anOtherTypeRule!33)) (ite c!621356 (regOne!21157 (regex!5563 anOtherTypeRule!33)) (regTwo!21156 (regex!5563 anOtherTypeRule!33)))))))))))

(declare-fun b!3587961 () Bool)

(declare-fun e!2220009 () List!37825)

(assert (=> b!3587961 (= e!2220009 e!2220010)))

(declare-fun c!621500 () Bool)

(assert (=> b!3587961 (= c!621500 (is-ElementMatch!10322 (ite c!621355 (reg!10651 (regex!5563 anOtherTypeRule!33)) (ite c!621356 (regOne!21157 (regex!5563 anOtherTypeRule!33)) (regTwo!21156 (regex!5563 anOtherTypeRule!33))))))))

(declare-fun b!3587962 () Bool)

(assert (=> b!3587962 (= e!2220009 Nil!37701)))

(declare-fun b!3587957 () Bool)

(assert (=> b!3587957 (= e!2220008 call!259787)))

(declare-fun d!1057859 () Bool)

(declare-fun c!621501 () Bool)

(assert (=> d!1057859 (= c!621501 (or (is-EmptyExpr!10322 (ite c!621355 (reg!10651 (regex!5563 anOtherTypeRule!33)) (ite c!621356 (regOne!21157 (regex!5563 anOtherTypeRule!33)) (regTwo!21156 (regex!5563 anOtherTypeRule!33))))) (is-EmptyLang!10322 (ite c!621355 (reg!10651 (regex!5563 anOtherTypeRule!33)) (ite c!621356 (regOne!21157 (regex!5563 anOtherTypeRule!33)) (regTwo!21156 (regex!5563 anOtherTypeRule!33)))))))))

(assert (=> d!1057859 (= (usedCharacters!777 (ite c!621355 (reg!10651 (regex!5563 anOtherTypeRule!33)) (ite c!621356 (regOne!21157 (regex!5563 anOtherTypeRule!33)) (regTwo!21156 (regex!5563 anOtherTypeRule!33))))) e!2220009)))

(declare-fun b!3587963 () Bool)

(assert (=> b!3587963 (= e!2220007 call!259789)))

(declare-fun bm!259785 () Bool)

(assert (=> bm!259785 (= call!259788 (usedCharacters!777 (ite c!621503 (regTwo!21157 (ite c!621355 (reg!10651 (regex!5563 anOtherTypeRule!33)) (ite c!621356 (regOne!21157 (regex!5563 anOtherTypeRule!33)) (regTwo!21156 (regex!5563 anOtherTypeRule!33))))) (regOne!21156 (ite c!621355 (reg!10651 (regex!5563 anOtherTypeRule!33)) (ite c!621356 (regOne!21157 (regex!5563 anOtherTypeRule!33)) (regTwo!21156 (regex!5563 anOtherTypeRule!33))))))))))

(assert (= (and d!1057859 c!621501) b!3587962))

(assert (= (and d!1057859 (not c!621501)) b!3587961))

(assert (= (and b!3587961 c!621500) b!3587958))

(assert (= (and b!3587961 (not c!621500)) b!3587956))

(assert (= (and b!3587956 c!621502) b!3587963))

(assert (= (and b!3587956 (not c!621502)) b!3587960))

(assert (= (and b!3587960 c!621503) b!3587959))

(assert (= (and b!3587960 (not c!621503)) b!3587957))

(assert (= (or b!3587959 b!3587957) bm!259782))

(assert (= (or b!3587959 b!3587957) bm!259785))

(assert (= (or b!3587959 b!3587957) bm!259783))

(assert (= (or b!3587963 bm!259782) bm!259784))

(declare-fun m!4081491 () Bool)

(assert (=> bm!259783 m!4081491))

(declare-fun m!4081493 () Bool)

(assert (=> bm!259784 m!4081493))

(declare-fun m!4081495 () Bool)

(assert (=> bm!259785 m!4081495))

(assert (=> bm!259721 d!1057859))

(declare-fun bs!570111 () Bool)

(declare-fun d!1057861 () Bool)

(assert (= bs!570111 (and d!1057861 d!1057763)))

(declare-fun lambda!123807 () Int)

(assert (=> bs!570111 (= (= (toValue!7843 (transformation!5563 anOtherTypeRule!33)) (toValue!7843 (transformation!5563 rule!403))) (= lambda!123807 lambda!123804))))

(declare-fun bs!570112 () Bool)

(assert (= bs!570112 (and d!1057861 d!1057799)))

(assert (=> bs!570112 (= (= (toValue!7843 (transformation!5563 anOtherTypeRule!33)) (toValue!7843 (transformation!5563 (h!43122 rules!3307)))) (= lambda!123807 lambda!123805))))

(assert (=> d!1057861 true))

(assert (=> d!1057861 (< (dynLambda!16206 order!20451 (toValue!7843 (transformation!5563 anOtherTypeRule!33))) (dynLambda!16215 order!20463 lambda!123807))))

(assert (=> d!1057861 (= (equivClasses!2257 (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toValue!7843 (transformation!5563 anOtherTypeRule!33))) (Forall2!961 lambda!123807))))

(declare-fun bs!570113 () Bool)

(assert (= bs!570113 d!1057861))

(declare-fun m!4081497 () Bool)

(assert (=> bs!570113 m!4081497))

(assert (=> b!3587392 d!1057861))

(assert (=> d!1057521 d!1057681))

(declare-fun b!3587966 () Bool)

(declare-fun res!1448188 () Bool)

(declare-fun e!2220011 () Bool)

(assert (=> b!3587966 (=> (not res!1448188) (not e!2220011))))

(declare-fun lt!1230665 () List!37825)

(assert (=> b!3587966 (= res!1448188 (= (size!28723 lt!1230665) (+ (size!28723 (ite c!621356 call!259727 call!259725)) (size!28723 (ite c!621356 call!259725 call!259727)))))))

(declare-fun b!3587965 () Bool)

(declare-fun e!2220012 () List!37825)

(assert (=> b!3587965 (= e!2220012 (Cons!37701 (h!43121 (ite c!621356 call!259727 call!259725)) (++!9379 (t!290638 (ite c!621356 call!259727 call!259725)) (ite c!621356 call!259725 call!259727))))))

(declare-fun b!3587964 () Bool)

(assert (=> b!3587964 (= e!2220012 (ite c!621356 call!259725 call!259727))))

(declare-fun d!1057863 () Bool)

(assert (=> d!1057863 e!2220011))

(declare-fun res!1448189 () Bool)

(assert (=> d!1057863 (=> (not res!1448189) (not e!2220011))))

(assert (=> d!1057863 (= res!1448189 (= (content!5358 lt!1230665) (set.union (content!5358 (ite c!621356 call!259727 call!259725)) (content!5358 (ite c!621356 call!259725 call!259727)))))))

(assert (=> d!1057863 (= lt!1230665 e!2220012)))

(declare-fun c!621504 () Bool)

(assert (=> d!1057863 (= c!621504 (is-Nil!37701 (ite c!621356 call!259727 call!259725)))))

(assert (=> d!1057863 (= (++!9379 (ite c!621356 call!259727 call!259725) (ite c!621356 call!259725 call!259727)) lt!1230665)))

(declare-fun b!3587967 () Bool)

(assert (=> b!3587967 (= e!2220011 (or (not (= (ite c!621356 call!259725 call!259727) Nil!37701)) (= lt!1230665 (ite c!621356 call!259727 call!259725))))))

(assert (= (and d!1057863 c!621504) b!3587964))

(assert (= (and d!1057863 (not c!621504)) b!3587965))

(assert (= (and d!1057863 res!1448189) b!3587966))

(assert (= (and b!3587966 res!1448188) b!3587967))

(declare-fun m!4081499 () Bool)

(assert (=> b!3587966 m!4081499))

(declare-fun m!4081501 () Bool)

(assert (=> b!3587966 m!4081501))

(declare-fun m!4081503 () Bool)

(assert (=> b!3587966 m!4081503))

(declare-fun m!4081505 () Bool)

(assert (=> b!3587965 m!4081505))

(declare-fun m!4081507 () Bool)

(assert (=> d!1057863 m!4081507))

(declare-fun m!4081509 () Bool)

(assert (=> d!1057863 m!4081509))

(declare-fun m!4081511 () Bool)

(assert (=> d!1057863 m!4081511))

(assert (=> bm!259720 d!1057863))

(declare-fun bs!570114 () Bool)

(declare-fun d!1057865 () Bool)

(assert (= bs!570114 (and d!1057865 d!1057763)))

(declare-fun lambda!123808 () Int)

(assert (=> bs!570114 (= (= (toValue!7843 (transformation!5563 (rule!8277 token!511))) (toValue!7843 (transformation!5563 rule!403))) (= lambda!123808 lambda!123804))))

(declare-fun bs!570115 () Bool)

(assert (= bs!570115 (and d!1057865 d!1057799)))

(assert (=> bs!570115 (= (= (toValue!7843 (transformation!5563 (rule!8277 token!511))) (toValue!7843 (transformation!5563 (h!43122 rules!3307)))) (= lambda!123808 lambda!123805))))

(declare-fun bs!570116 () Bool)

(assert (= bs!570116 (and d!1057865 d!1057861)))

(assert (=> bs!570116 (= (= (toValue!7843 (transformation!5563 (rule!8277 token!511))) (toValue!7843 (transformation!5563 anOtherTypeRule!33))) (= lambda!123808 lambda!123807))))

(assert (=> d!1057865 true))

(assert (=> d!1057865 (< (dynLambda!16206 order!20451 (toValue!7843 (transformation!5563 (rule!8277 token!511)))) (dynLambda!16215 order!20463 lambda!123808))))

(assert (=> d!1057865 (= (equivClasses!2257 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toValue!7843 (transformation!5563 (rule!8277 token!511)))) (Forall2!961 lambda!123808))))

(declare-fun bs!570117 () Bool)

(assert (= bs!570117 d!1057865))

(declare-fun m!4081513 () Bool)

(assert (=> bs!570117 m!4081513))

(assert (=> b!3587315 d!1057865))

(declare-fun d!1057867 () Bool)

(assert (=> d!1057867 (= (nullable!3560 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))) (nullableFct!1035 (regex!5563 (rule!8277 (_1!21929 lt!1230275)))))))

(declare-fun bs!570118 () Bool)

(assert (= bs!570118 d!1057867))

(declare-fun m!4081515 () Bool)

(assert (=> bs!570118 m!4081515))

(assert (=> b!3587303 d!1057867))

(declare-fun d!1057869 () Bool)

(declare-fun lt!1230666 () Bool)

(assert (=> d!1057869 (= lt!1230666 (set.member anOtherTypeRule!33 (content!5361 (t!290639 rules!3307))))))

(declare-fun e!2220013 () Bool)

(assert (=> d!1057869 (= lt!1230666 e!2220013)))

(declare-fun res!1448191 () Bool)

(assert (=> d!1057869 (=> (not res!1448191) (not e!2220013))))

(assert (=> d!1057869 (= res!1448191 (is-Cons!37702 (t!290639 rules!3307)))))

(assert (=> d!1057869 (= (contains!7188 (t!290639 rules!3307) anOtherTypeRule!33) lt!1230666)))

(declare-fun b!3587968 () Bool)

(declare-fun e!2220014 () Bool)

(assert (=> b!3587968 (= e!2220013 e!2220014)))

(declare-fun res!1448190 () Bool)

(assert (=> b!3587968 (=> res!1448190 e!2220014)))

(assert (=> b!3587968 (= res!1448190 (= (h!43122 (t!290639 rules!3307)) anOtherTypeRule!33))))

(declare-fun b!3587969 () Bool)

(assert (=> b!3587969 (= e!2220014 (contains!7188 (t!290639 (t!290639 rules!3307)) anOtherTypeRule!33))))

(assert (= (and d!1057869 res!1448191) b!3587968))

(assert (= (and b!3587968 (not res!1448190)) b!3587969))

(assert (=> d!1057869 m!4081081))

(declare-fun m!4081517 () Bool)

(assert (=> d!1057869 m!4081517))

(declare-fun m!4081519 () Bool)

(assert (=> b!3587969 m!4081519))

(assert (=> b!3587288 d!1057869))

(declare-fun b!3587970 () Bool)

(declare-fun e!2220016 () Bool)

(declare-fun e!2220017 () Bool)

(assert (=> b!3587970 (= e!2220016 e!2220017)))

(declare-fun res!1448199 () Bool)

(assert (=> b!3587970 (=> res!1448199 e!2220017)))

(declare-fun call!259791 () Bool)

(assert (=> b!3587970 (= res!1448199 call!259791)))

(declare-fun d!1057871 () Bool)

(declare-fun e!2220015 () Bool)

(assert (=> d!1057871 e!2220015))

(declare-fun c!621506 () Bool)

(assert (=> d!1057871 (= c!621506 (is-EmptyExpr!10322 (derivativeStep!3109 (regex!5563 rule!403) (head!7483 lt!1230282))))))

(declare-fun lt!1230667 () Bool)

(declare-fun e!2220019 () Bool)

(assert (=> d!1057871 (= lt!1230667 e!2220019)))

(declare-fun c!621507 () Bool)

(assert (=> d!1057871 (= c!621507 (isEmpty!22210 (tail!5558 lt!1230282)))))

(assert (=> d!1057871 (validRegex!4716 (derivativeStep!3109 (regex!5563 rule!403) (head!7483 lt!1230282)))))

(assert (=> d!1057871 (= (matchR!4891 (derivativeStep!3109 (regex!5563 rule!403) (head!7483 lt!1230282)) (tail!5558 lt!1230282)) lt!1230667)))

(declare-fun b!3587971 () Bool)

(declare-fun e!2220018 () Bool)

(assert (=> b!3587971 (= e!2220018 (= (head!7483 (tail!5558 lt!1230282)) (c!621269 (derivativeStep!3109 (regex!5563 rule!403) (head!7483 lt!1230282)))))))

(declare-fun b!3587972 () Bool)

(declare-fun res!1448193 () Bool)

(assert (=> b!3587972 (=> res!1448193 e!2220017)))

(assert (=> b!3587972 (= res!1448193 (not (isEmpty!22210 (tail!5558 (tail!5558 lt!1230282)))))))

(declare-fun b!3587973 () Bool)

(declare-fun res!1448195 () Bool)

(assert (=> b!3587973 (=> (not res!1448195) (not e!2220018))))

(assert (=> b!3587973 (= res!1448195 (not call!259791))))

(declare-fun bm!259786 () Bool)

(assert (=> bm!259786 (= call!259791 (isEmpty!22210 (tail!5558 lt!1230282)))))

(declare-fun b!3587974 () Bool)

(declare-fun e!2220021 () Bool)

(assert (=> b!3587974 (= e!2220015 e!2220021)))

(declare-fun c!621505 () Bool)

(assert (=> b!3587974 (= c!621505 (is-EmptyLang!10322 (derivativeStep!3109 (regex!5563 rule!403) (head!7483 lt!1230282))))))

(declare-fun b!3587975 () Bool)

(assert (=> b!3587975 (= e!2220021 (not lt!1230667))))

(declare-fun b!3587976 () Bool)

(assert (=> b!3587976 (= e!2220017 (not (= (head!7483 (tail!5558 lt!1230282)) (c!621269 (derivativeStep!3109 (regex!5563 rule!403) (head!7483 lt!1230282))))))))

(declare-fun b!3587977 () Bool)

(declare-fun res!1448192 () Bool)

(declare-fun e!2220020 () Bool)

(assert (=> b!3587977 (=> res!1448192 e!2220020)))

(assert (=> b!3587977 (= res!1448192 e!2220018)))

(declare-fun res!1448197 () Bool)

(assert (=> b!3587977 (=> (not res!1448197) (not e!2220018))))

(assert (=> b!3587977 (= res!1448197 lt!1230667)))

(declare-fun b!3587978 () Bool)

(declare-fun res!1448198 () Bool)

(assert (=> b!3587978 (=> (not res!1448198) (not e!2220018))))

(assert (=> b!3587978 (= res!1448198 (isEmpty!22210 (tail!5558 (tail!5558 lt!1230282))))))

(declare-fun b!3587979 () Bool)

(declare-fun res!1448194 () Bool)

(assert (=> b!3587979 (=> res!1448194 e!2220020)))

(assert (=> b!3587979 (= res!1448194 (not (is-ElementMatch!10322 (derivativeStep!3109 (regex!5563 rule!403) (head!7483 lt!1230282)))))))

(assert (=> b!3587979 (= e!2220021 e!2220020)))

(declare-fun b!3587980 () Bool)

(assert (=> b!3587980 (= e!2220019 (matchR!4891 (derivativeStep!3109 (derivativeStep!3109 (regex!5563 rule!403) (head!7483 lt!1230282)) (head!7483 (tail!5558 lt!1230282))) (tail!5558 (tail!5558 lt!1230282))))))

(declare-fun b!3587981 () Bool)

(assert (=> b!3587981 (= e!2220020 e!2220016)))

(declare-fun res!1448196 () Bool)

(assert (=> b!3587981 (=> (not res!1448196) (not e!2220016))))

(assert (=> b!3587981 (= res!1448196 (not lt!1230667))))

(declare-fun b!3587982 () Bool)

(assert (=> b!3587982 (= e!2220019 (nullable!3560 (derivativeStep!3109 (regex!5563 rule!403) (head!7483 lt!1230282))))))

(declare-fun b!3587983 () Bool)

(assert (=> b!3587983 (= e!2220015 (= lt!1230667 call!259791))))

(assert (= (and d!1057871 c!621507) b!3587982))

(assert (= (and d!1057871 (not c!621507)) b!3587980))

(assert (= (and d!1057871 c!621506) b!3587983))

(assert (= (and d!1057871 (not c!621506)) b!3587974))

(assert (= (and b!3587974 c!621505) b!3587975))

(assert (= (and b!3587974 (not c!621505)) b!3587979))

(assert (= (and b!3587979 (not res!1448194)) b!3587977))

(assert (= (and b!3587977 res!1448197) b!3587973))

(assert (= (and b!3587973 res!1448195) b!3587978))

(assert (= (and b!3587978 res!1448198) b!3587971))

(assert (= (and b!3587977 (not res!1448192)) b!3587981))

(assert (= (and b!3587981 res!1448196) b!3587970))

(assert (= (and b!3587970 (not res!1448199)) b!3587972))

(assert (= (and b!3587972 (not res!1448193)) b!3587976))

(assert (= (or b!3587983 b!3587970 b!3587973) bm!259786))

(assert (=> b!3587971 m!4080283))

(assert (=> b!3587971 m!4081061))

(assert (=> b!3587978 m!4080283))

(assert (=> b!3587978 m!4081051))

(assert (=> b!3587978 m!4081051))

(declare-fun m!4081521 () Bool)

(assert (=> b!3587978 m!4081521))

(assert (=> bm!259786 m!4080283))

(assert (=> bm!259786 m!4080815))

(assert (=> b!3587976 m!4080283))

(assert (=> b!3587976 m!4081061))

(assert (=> b!3587972 m!4080283))

(assert (=> b!3587972 m!4081051))

(assert (=> b!3587972 m!4081051))

(assert (=> b!3587972 m!4081521))

(assert (=> b!3587980 m!4080283))

(assert (=> b!3587980 m!4081061))

(assert (=> b!3587980 m!4080819))

(assert (=> b!3587980 m!4081061))

(declare-fun m!4081523 () Bool)

(assert (=> b!3587980 m!4081523))

(assert (=> b!3587980 m!4080283))

(assert (=> b!3587980 m!4081051))

(assert (=> b!3587980 m!4081523))

(assert (=> b!3587980 m!4081051))

(declare-fun m!4081525 () Bool)

(assert (=> b!3587980 m!4081525))

(assert (=> d!1057871 m!4080283))

(assert (=> d!1057871 m!4080815))

(assert (=> d!1057871 m!4080819))

(declare-fun m!4081527 () Bool)

(assert (=> d!1057871 m!4081527))

(assert (=> b!3587982 m!4080819))

(declare-fun m!4081529 () Bool)

(assert (=> b!3587982 m!4081529))

(assert (=> b!3587403 d!1057871))

(declare-fun b!3587984 () Bool)

(declare-fun c!621509 () Bool)

(assert (=> b!3587984 (= c!621509 (nullable!3560 (regOne!21156 (regex!5563 rule!403))))))

(declare-fun e!2220023 () Regex!10322)

(declare-fun e!2220026 () Regex!10322)

(assert (=> b!3587984 (= e!2220023 e!2220026)))

(declare-fun call!259793 () Regex!10322)

(declare-fun call!259792 () Regex!10322)

(declare-fun b!3587985 () Bool)

(assert (=> b!3587985 (= e!2220026 (Union!10322 (Concat!16116 call!259793 (regTwo!21156 (regex!5563 rule!403))) call!259792))))

(declare-fun b!3587986 () Bool)

(assert (=> b!3587986 (= e!2220026 (Union!10322 (Concat!16116 call!259793 (regTwo!21156 (regex!5563 rule!403))) EmptyLang!10322))))

(declare-fun b!3587987 () Bool)

(declare-fun e!2220022 () Regex!10322)

(declare-fun e!2220024 () Regex!10322)

(assert (=> b!3587987 (= e!2220022 e!2220024)))

(declare-fun c!621511 () Bool)

(assert (=> b!3587987 (= c!621511 (is-ElementMatch!10322 (regex!5563 rule!403)))))

(declare-fun b!3587988 () Bool)

(declare-fun c!621508 () Bool)

(assert (=> b!3587988 (= c!621508 (is-Union!10322 (regex!5563 rule!403)))))

(declare-fun e!2220025 () Regex!10322)

(assert (=> b!3587988 (= e!2220024 e!2220025)))

(declare-fun d!1057873 () Bool)

(declare-fun lt!1230668 () Regex!10322)

(assert (=> d!1057873 (validRegex!4716 lt!1230668)))

(assert (=> d!1057873 (= lt!1230668 e!2220022)))

(declare-fun c!621510 () Bool)

(assert (=> d!1057873 (= c!621510 (or (is-EmptyExpr!10322 (regex!5563 rule!403)) (is-EmptyLang!10322 (regex!5563 rule!403))))))

(assert (=> d!1057873 (validRegex!4716 (regex!5563 rule!403))))

(assert (=> d!1057873 (= (derivativeStep!3109 (regex!5563 rule!403) (head!7483 lt!1230282)) lt!1230668)))

(declare-fun bm!259787 () Bool)

(assert (=> bm!259787 (= call!259792 (derivativeStep!3109 (ite c!621508 (regTwo!21157 (regex!5563 rule!403)) (regTwo!21156 (regex!5563 rule!403))) (head!7483 lt!1230282)))))

(declare-fun b!3587989 () Bool)

(assert (=> b!3587989 (= e!2220024 (ite (= (head!7483 lt!1230282) (c!621269 (regex!5563 rule!403))) EmptyExpr!10322 EmptyLang!10322))))

(declare-fun b!3587990 () Bool)

(declare-fun call!259794 () Regex!10322)

(assert (=> b!3587990 (= e!2220023 (Concat!16116 call!259794 (regex!5563 rule!403)))))

(declare-fun b!3587991 () Bool)

(assert (=> b!3587991 (= e!2220022 EmptyLang!10322)))

(declare-fun c!621512 () Bool)

(declare-fun call!259795 () Regex!10322)

(declare-fun bm!259788 () Bool)

(assert (=> bm!259788 (= call!259795 (derivativeStep!3109 (ite c!621508 (regOne!21157 (regex!5563 rule!403)) (ite c!621512 (reg!10651 (regex!5563 rule!403)) (regOne!21156 (regex!5563 rule!403)))) (head!7483 lt!1230282)))))

(declare-fun bm!259789 () Bool)

(assert (=> bm!259789 (= call!259794 call!259795)))

(declare-fun b!3587992 () Bool)

(assert (=> b!3587992 (= e!2220025 e!2220023)))

(assert (=> b!3587992 (= c!621512 (is-Star!10322 (regex!5563 rule!403)))))

(declare-fun bm!259790 () Bool)

(assert (=> bm!259790 (= call!259793 call!259794)))

(declare-fun b!3587993 () Bool)

(assert (=> b!3587993 (= e!2220025 (Union!10322 call!259795 call!259792))))

(assert (= (and d!1057873 c!621510) b!3587991))

(assert (= (and d!1057873 (not c!621510)) b!3587987))

(assert (= (and b!3587987 c!621511) b!3587989))

(assert (= (and b!3587987 (not c!621511)) b!3587988))

(assert (= (and b!3587988 c!621508) b!3587993))

(assert (= (and b!3587988 (not c!621508)) b!3587992))

(assert (= (and b!3587992 c!621512) b!3587990))

(assert (= (and b!3587992 (not c!621512)) b!3587984))

(assert (= (and b!3587984 c!621509) b!3587985))

(assert (= (and b!3587984 (not c!621509)) b!3587986))

(assert (= (or b!3587985 b!3587986) bm!259790))

(assert (= (or b!3587990 bm!259790) bm!259789))

(assert (= (or b!3587993 b!3587985) bm!259787))

(assert (= (or b!3587993 bm!259789) bm!259788))

(declare-fun m!4081531 () Bool)

(assert (=> b!3587984 m!4081531))

(declare-fun m!4081533 () Bool)

(assert (=> d!1057873 m!4081533))

(assert (=> d!1057873 m!4080823))

(assert (=> bm!259787 m!4080293))

(declare-fun m!4081535 () Bool)

(assert (=> bm!259787 m!4081535))

(assert (=> bm!259788 m!4080293))

(declare-fun m!4081537 () Bool)

(assert (=> bm!259788 m!4081537))

(assert (=> b!3587403 d!1057873))

(assert (=> b!3587403 d!1057767))

(assert (=> b!3587403 d!1057655))

(declare-fun d!1057875 () Bool)

(assert (=> d!1057875 (= (list!13859 lt!1230425) (list!13861 (c!621270 lt!1230425)))))

(declare-fun bs!570119 () Bool)

(assert (= bs!570119 d!1057875))

(declare-fun m!4081539 () Bool)

(assert (=> bs!570119 m!4081539))

(assert (=> d!1057471 d!1057875))

(declare-fun d!1057877 () Bool)

(declare-fun c!621513 () Bool)

(assert (=> d!1057877 (= c!621513 (is-Node!11466 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280)))))))

(declare-fun e!2220027 () Bool)

(assert (=> d!1057877 (= (inv!51035 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280)))) e!2220027)))

(declare-fun b!3587994 () Bool)

(assert (=> b!3587994 (= e!2220027 (inv!51039 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280)))))))

(declare-fun b!3587995 () Bool)

(declare-fun e!2220028 () Bool)

(assert (=> b!3587995 (= e!2220027 e!2220028)))

(declare-fun res!1448200 () Bool)

(assert (=> b!3587995 (= res!1448200 (not (is-Leaf!17859 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280))))))))

(assert (=> b!3587995 (=> res!1448200 e!2220028)))

(declare-fun b!3587996 () Bool)

(assert (=> b!3587996 (= e!2220028 (inv!51040 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280)))))))

(assert (= (and d!1057877 c!621513) b!3587994))

(assert (= (and d!1057877 (not c!621513)) b!3587995))

(assert (= (and b!3587995 (not res!1448200)) b!3587996))

(declare-fun m!4081541 () Bool)

(assert (=> b!3587994 m!4081541))

(declare-fun m!4081543 () Bool)

(assert (=> b!3587996 m!4081543))

(assert (=> b!3587389 d!1057877))

(assert (=> b!3587094 d!1057807))

(assert (=> b!3587094 d!1057803))

(assert (=> b!3587299 d!1057673))

(assert (=> b!3587299 d!1057675))

(assert (=> d!1057579 d!1057577))

(declare-fun d!1057879 () Bool)

(assert (=> d!1057879 (ruleValid!1828 thiss!23823 rule!403)))

(assert (=> d!1057879 true))

(declare-fun _$65!1281 () Unit!53698)

(assert (=> d!1057879 (= (choose!20869 thiss!23823 rule!403 rules!3307) _$65!1281)))

(declare-fun bs!570120 () Bool)

(assert (= bs!570120 d!1057879))

(assert (=> bs!570120 m!4080077))

(assert (=> d!1057579 d!1057879))

(assert (=> d!1057579 d!1057521))

(assert (=> d!1057577 d!1057683))

(assert (=> b!3587399 d!1057767))

(declare-fun b!3587997 () Bool)

(declare-fun e!2220030 () Bool)

(declare-fun e!2220031 () Bool)

(assert (=> b!3587997 (= e!2220030 e!2220031)))

(declare-fun res!1448208 () Bool)

(assert (=> b!3587997 (=> res!1448208 e!2220031)))

(declare-fun call!259796 () Bool)

(assert (=> b!3587997 (= res!1448208 call!259796)))

(declare-fun d!1057881 () Bool)

(declare-fun e!2220029 () Bool)

(assert (=> d!1057881 e!2220029))

(declare-fun c!621515 () Bool)

(assert (=> d!1057881 (= c!621515 (is-EmptyExpr!10322 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451))))))))

(declare-fun lt!1230669 () Bool)

(declare-fun e!2220033 () Bool)

(assert (=> d!1057881 (= lt!1230669 e!2220033)))

(declare-fun c!621516 () Bool)

(assert (=> d!1057881 (= c!621516 (isEmpty!22210 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451))))))))

(assert (=> d!1057881 (validRegex!4716 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))))

(assert (=> d!1057881 (= (matchR!4891 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))) (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451))))) lt!1230669)))

(declare-fun b!3587998 () Bool)

(declare-fun e!2220032 () Bool)

(assert (=> b!3587998 (= e!2220032 (= (head!7483 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451))))) (c!621269 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))))))

(declare-fun b!3587999 () Bool)

(declare-fun res!1448202 () Bool)

(assert (=> b!3587999 (=> res!1448202 e!2220031)))

(assert (=> b!3587999 (= res!1448202 (not (isEmpty!22210 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451))))))))))

(declare-fun b!3588000 () Bool)

(declare-fun res!1448204 () Bool)

(assert (=> b!3588000 (=> (not res!1448204) (not e!2220032))))

(assert (=> b!3588000 (= res!1448204 (not call!259796))))

(declare-fun bm!259791 () Bool)

(assert (=> bm!259791 (= call!259796 (isEmpty!22210 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451))))))))

(declare-fun b!3588001 () Bool)

(declare-fun e!2220035 () Bool)

(assert (=> b!3588001 (= e!2220029 e!2220035)))

(declare-fun c!621514 () Bool)

(assert (=> b!3588001 (= c!621514 (is-EmptyLang!10322 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451))))))))

(declare-fun b!3588002 () Bool)

(assert (=> b!3588002 (= e!2220035 (not lt!1230669))))

(declare-fun b!3588003 () Bool)

(assert (=> b!3588003 (= e!2220031 (not (= (head!7483 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451))))) (c!621269 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451))))))))))

(declare-fun b!3588004 () Bool)

(declare-fun res!1448201 () Bool)

(declare-fun e!2220034 () Bool)

(assert (=> b!3588004 (=> res!1448201 e!2220034)))

(assert (=> b!3588004 (= res!1448201 e!2220032)))

(declare-fun res!1448206 () Bool)

(assert (=> b!3588004 (=> (not res!1448206) (not e!2220032))))

(assert (=> b!3588004 (= res!1448206 lt!1230669)))

(declare-fun b!3588005 () Bool)

(declare-fun res!1448207 () Bool)

(assert (=> b!3588005 (=> (not res!1448207) (not e!2220032))))

(assert (=> b!3588005 (= res!1448207 (isEmpty!22210 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451)))))))))

(declare-fun b!3588006 () Bool)

(declare-fun res!1448203 () Bool)

(assert (=> b!3588006 (=> res!1448203 e!2220034)))

(assert (=> b!3588006 (= res!1448203 (not (is-ElementMatch!10322 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))))))

(assert (=> b!3588006 (= e!2220035 e!2220034)))

(declare-fun b!3588007 () Bool)

(assert (=> b!3588007 (= e!2220033 (matchR!4891 (derivativeStep!3109 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))) (head!7483 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451)))))) (tail!5558 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230451)))))))))

(declare-fun b!3588008 () Bool)

(assert (=> b!3588008 (= e!2220034 e!2220030)))

(declare-fun res!1448205 () Bool)

(assert (=> b!3588008 (=> (not res!1448205) (not e!2220030))))

(assert (=> b!3588008 (= res!1448205 (not lt!1230669))))

(declare-fun b!3588009 () Bool)

(assert (=> b!3588009 (= e!2220033 (nullable!3560 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451))))))))

(declare-fun b!3588010 () Bool)

(assert (=> b!3588010 (= e!2220029 (= lt!1230669 call!259796))))

(assert (= (and d!1057881 c!621516) b!3588009))

(assert (= (and d!1057881 (not c!621516)) b!3588007))

(assert (= (and d!1057881 c!621515) b!3588010))

(assert (= (and d!1057881 (not c!621515)) b!3588001))

(assert (= (and b!3588001 c!621514) b!3588002))

(assert (= (and b!3588001 (not c!621514)) b!3588006))

(assert (= (and b!3588006 (not res!1448203)) b!3588004))

(assert (= (and b!3588004 res!1448206) b!3588000))

(assert (= (and b!3588000 res!1448204) b!3588005))

(assert (= (and b!3588005 res!1448207) b!3587998))

(assert (= (and b!3588004 (not res!1448201)) b!3588008))

(assert (= (and b!3588008 res!1448205) b!3587997))

(assert (= (and b!3587997 (not res!1448208)) b!3587999))

(assert (= (and b!3587999 (not res!1448202)) b!3588003))

(assert (= (or b!3588010 b!3587997 b!3588000) bm!259791))

(assert (=> b!3587998 m!4080487))

(declare-fun m!4081545 () Bool)

(assert (=> b!3587998 m!4081545))

(assert (=> b!3588005 m!4080487))

(declare-fun m!4081547 () Bool)

(assert (=> b!3588005 m!4081547))

(assert (=> b!3588005 m!4081547))

(declare-fun m!4081549 () Bool)

(assert (=> b!3588005 m!4081549))

(assert (=> bm!259791 m!4080487))

(declare-fun m!4081551 () Bool)

(assert (=> bm!259791 m!4081551))

(assert (=> b!3588003 m!4080487))

(assert (=> b!3588003 m!4081545))

(assert (=> b!3587999 m!4080487))

(assert (=> b!3587999 m!4081547))

(assert (=> b!3587999 m!4081547))

(assert (=> b!3587999 m!4081549))

(assert (=> b!3588007 m!4080487))

(assert (=> b!3588007 m!4081545))

(assert (=> b!3588007 m!4081545))

(declare-fun m!4081553 () Bool)

(assert (=> b!3588007 m!4081553))

(assert (=> b!3588007 m!4080487))

(assert (=> b!3588007 m!4081547))

(assert (=> b!3588007 m!4081553))

(assert (=> b!3588007 m!4081547))

(declare-fun m!4081555 () Bool)

(assert (=> b!3588007 m!4081555))

(assert (=> d!1057881 m!4080487))

(assert (=> d!1057881 m!4081551))

(declare-fun m!4081557 () Bool)

(assert (=> d!1057881 m!4081557))

(declare-fun m!4081559 () Bool)

(assert (=> b!3588009 m!4081559))

(assert (=> b!3587160 d!1057881))

(assert (=> b!3587160 d!1057651))

(assert (=> b!3587160 d!1057687))

(assert (=> b!3587160 d!1057689))

(assert (=> b!3586935 d!1057679))

(declare-fun b!3588011 () Bool)

(declare-fun e!2220037 () Bool)

(declare-fun e!2220038 () Bool)

(assert (=> b!3588011 (= e!2220037 e!2220038)))

(declare-fun res!1448216 () Bool)

(assert (=> b!3588011 (=> res!1448216 e!2220038)))

(declare-fun call!259797 () Bool)

(assert (=> b!3588011 (= res!1448216 call!259797)))

(declare-fun d!1057883 () Bool)

(declare-fun e!2220036 () Bool)

(assert (=> d!1057883 e!2220036))

(declare-fun c!621518 () Bool)

(assert (=> d!1057883 (= c!621518 (is-EmptyExpr!10322 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473))))))))

(declare-fun lt!1230670 () Bool)

(declare-fun e!2220040 () Bool)

(assert (=> d!1057883 (= lt!1230670 e!2220040)))

(declare-fun c!621519 () Bool)

(assert (=> d!1057883 (= c!621519 (isEmpty!22210 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473))))))))

(assert (=> d!1057883 (validRegex!4716 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))))

(assert (=> d!1057883 (= (matchR!4891 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))) (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473))))) lt!1230670)))

(declare-fun b!3588012 () Bool)

(declare-fun e!2220039 () Bool)

(assert (=> b!3588012 (= e!2220039 (= (head!7483 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473))))) (c!621269 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))))))

(declare-fun b!3588013 () Bool)

(declare-fun res!1448210 () Bool)

(assert (=> b!3588013 (=> res!1448210 e!2220038)))

(assert (=> b!3588013 (= res!1448210 (not (isEmpty!22210 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473))))))))))

(declare-fun b!3588014 () Bool)

(declare-fun res!1448212 () Bool)

(assert (=> b!3588014 (=> (not res!1448212) (not e!2220039))))

(assert (=> b!3588014 (= res!1448212 (not call!259797))))

(declare-fun bm!259792 () Bool)

(assert (=> bm!259792 (= call!259797 (isEmpty!22210 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473))))))))

(declare-fun b!3588015 () Bool)

(declare-fun e!2220042 () Bool)

(assert (=> b!3588015 (= e!2220036 e!2220042)))

(declare-fun c!621517 () Bool)

(assert (=> b!3588015 (= c!621517 (is-EmptyLang!10322 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473))))))))

(declare-fun b!3588016 () Bool)

(assert (=> b!3588016 (= e!2220042 (not lt!1230670))))

(declare-fun b!3588017 () Bool)

(assert (=> b!3588017 (= e!2220038 (not (= (head!7483 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473))))) (c!621269 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473))))))))))

(declare-fun b!3588018 () Bool)

(declare-fun res!1448209 () Bool)

(declare-fun e!2220041 () Bool)

(assert (=> b!3588018 (=> res!1448209 e!2220041)))

(assert (=> b!3588018 (= res!1448209 e!2220039)))

(declare-fun res!1448214 () Bool)

(assert (=> b!3588018 (=> (not res!1448214) (not e!2220039))))

(assert (=> b!3588018 (= res!1448214 lt!1230670)))

(declare-fun b!3588019 () Bool)

(declare-fun res!1448215 () Bool)

(assert (=> b!3588019 (=> (not res!1448215) (not e!2220039))))

(assert (=> b!3588019 (= res!1448215 (isEmpty!22210 (tail!5558 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473)))))))))

(declare-fun b!3588020 () Bool)

(declare-fun res!1448211 () Bool)

(assert (=> b!3588020 (=> res!1448211 e!2220041)))

(assert (=> b!3588020 (= res!1448211 (not (is-ElementMatch!10322 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))))))

(assert (=> b!3588020 (= e!2220042 e!2220041)))

(declare-fun b!3588021 () Bool)

(assert (=> b!3588021 (= e!2220040 (matchR!4891 (derivativeStep!3109 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))) (head!7483 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473)))))) (tail!5558 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230473)))))))))

(declare-fun b!3588022 () Bool)

(assert (=> b!3588022 (= e!2220041 e!2220037)))

(declare-fun res!1448213 () Bool)

(assert (=> b!3588022 (=> (not res!1448213) (not e!2220037))))

(assert (=> b!3588022 (= res!1448213 (not lt!1230670))))

(declare-fun b!3588023 () Bool)

(assert (=> b!3588023 (= e!2220040 (nullable!3560 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473))))))))

(declare-fun b!3588024 () Bool)

(assert (=> b!3588024 (= e!2220036 (= lt!1230670 call!259797))))

(assert (= (and d!1057883 c!621519) b!3588023))

(assert (= (and d!1057883 (not c!621519)) b!3588021))

(assert (= (and d!1057883 c!621518) b!3588024))

(assert (= (and d!1057883 (not c!621518)) b!3588015))

(assert (= (and b!3588015 c!621517) b!3588016))

(assert (= (and b!3588015 (not c!621517)) b!3588020))

(assert (= (and b!3588020 (not res!1448211)) b!3588018))

(assert (= (and b!3588018 res!1448214) b!3588014))

(assert (= (and b!3588014 res!1448212) b!3588019))

(assert (= (and b!3588019 res!1448215) b!3588012))

(assert (= (and b!3588018 (not res!1448209)) b!3588022))

(assert (= (and b!3588022 res!1448213) b!3588011))

(assert (= (and b!3588011 (not res!1448216)) b!3588013))

(assert (= (and b!3588013 (not res!1448210)) b!3588017))

(assert (= (or b!3588024 b!3588011 b!3588014) bm!259792))

(assert (=> b!3588012 m!4080593))

(declare-fun m!4081561 () Bool)

(assert (=> b!3588012 m!4081561))

(assert (=> b!3588019 m!4080593))

(declare-fun m!4081563 () Bool)

(assert (=> b!3588019 m!4081563))

(assert (=> b!3588019 m!4081563))

(declare-fun m!4081565 () Bool)

(assert (=> b!3588019 m!4081565))

(assert (=> bm!259792 m!4080593))

(declare-fun m!4081567 () Bool)

(assert (=> bm!259792 m!4081567))

(assert (=> b!3588017 m!4080593))

(assert (=> b!3588017 m!4081561))

(assert (=> b!3588013 m!4080593))

(assert (=> b!3588013 m!4081563))

(assert (=> b!3588013 m!4081563))

(assert (=> b!3588013 m!4081565))

(assert (=> b!3588021 m!4080593))

(assert (=> b!3588021 m!4081561))

(assert (=> b!3588021 m!4081561))

(declare-fun m!4081569 () Bool)

(assert (=> b!3588021 m!4081569))

(assert (=> b!3588021 m!4080593))

(assert (=> b!3588021 m!4081563))

(assert (=> b!3588021 m!4081569))

(assert (=> b!3588021 m!4081563))

(declare-fun m!4081571 () Bool)

(assert (=> b!3588021 m!4081571))

(assert (=> d!1057883 m!4080593))

(assert (=> d!1057883 m!4081567))

(declare-fun m!4081573 () Bool)

(assert (=> d!1057883 m!4081573))

(declare-fun m!4081575 () Bool)

(assert (=> b!3588023 m!4081575))

(assert (=> b!3587259 d!1057883))

(assert (=> b!3587259 d!1057695))

(assert (=> b!3587259 d!1057709))

(assert (=> b!3587259 d!1057711))

(assert (=> b!3586953 d!1057767))

(declare-fun d!1057885 () Bool)

(assert (=> d!1057885 (= (head!7483 lt!1230281) (h!43121 lt!1230281))))

(assert (=> b!3586953 d!1057885))

(declare-fun b!3588025 () Bool)

(declare-fun e!2220044 () Option!7756)

(declare-fun lt!1230672 () tuple2!37598)

(assert (=> b!3588025 (= e!2220044 (Some!7755 (tuple2!37591 (Token!10493 (apply!9073 (transformation!5563 (h!43122 rules!3307)) (seqFromList!4116 (_1!21933 lt!1230672))) (h!43122 rules!3307) (size!28725 (seqFromList!4116 (_1!21933 lt!1230672))) (_1!21933 lt!1230672)) (_2!21933 lt!1230672))))))

(declare-fun lt!1230675 () Unit!53698)

(assert (=> b!3588025 (= lt!1230675 (longestMatchIsAcceptedByMatchOrIsEmpty!941 (regex!5563 (h!43122 rules!3307)) lt!1230281))))

(declare-fun res!1448220 () Bool)

(assert (=> b!3588025 (= res!1448220 (isEmpty!22210 (_1!21933 (findLongestMatchInner!968 (regex!5563 (h!43122 rules!3307)) Nil!37701 (size!28723 Nil!37701) lt!1230281 lt!1230281 (size!28723 lt!1230281)))))))

(declare-fun e!2220045 () Bool)

(assert (=> b!3588025 (=> res!1448220 e!2220045)))

(assert (=> b!3588025 e!2220045))

(declare-fun lt!1230671 () Unit!53698)

(assert (=> b!3588025 (= lt!1230671 lt!1230675)))

(declare-fun lt!1230674 () Unit!53698)

(assert (=> b!3588025 (= lt!1230674 (lemmaSemiInverse!1320 (transformation!5563 (h!43122 rules!3307)) (seqFromList!4116 (_1!21933 lt!1230672))))))

(declare-fun b!3588026 () Bool)

(declare-fun res!1448219 () Bool)

(declare-fun e!2220046 () Bool)

(assert (=> b!3588026 (=> (not res!1448219) (not e!2220046))))

(declare-fun lt!1230673 () Option!7756)

(assert (=> b!3588026 (= res!1448219 (< (size!28723 (_2!21929 (get!12148 lt!1230673))) (size!28723 lt!1230281)))))

(declare-fun b!3588027 () Bool)

(declare-fun e!2220043 () Bool)

(assert (=> b!3588027 (= e!2220043 e!2220046)))

(declare-fun res!1448223 () Bool)

(assert (=> b!3588027 (=> (not res!1448223) (not e!2220046))))

(assert (=> b!3588027 (= res!1448223 (matchR!4891 (regex!5563 (h!43122 rules!3307)) (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230673))))))))

(declare-fun b!3588028 () Bool)

(declare-fun res!1448222 () Bool)

(assert (=> b!3588028 (=> (not res!1448222) (not e!2220046))))

(assert (=> b!3588028 (= res!1448222 (= (value!179007 (_1!21929 (get!12148 lt!1230673))) (apply!9073 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230673)))) (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230673)))))))))

(declare-fun d!1057887 () Bool)

(assert (=> d!1057887 e!2220043))

(declare-fun res!1448217 () Bool)

(assert (=> d!1057887 (=> res!1448217 e!2220043)))

(assert (=> d!1057887 (= res!1448217 (isEmpty!22215 lt!1230673))))

(assert (=> d!1057887 (= lt!1230673 e!2220044)))

(declare-fun c!621520 () Bool)

(assert (=> d!1057887 (= c!621520 (isEmpty!22210 (_1!21933 lt!1230672)))))

(assert (=> d!1057887 (= lt!1230672 (findLongestMatch!883 (regex!5563 (h!43122 rules!3307)) lt!1230281))))

(assert (=> d!1057887 (ruleValid!1828 thiss!23823 (h!43122 rules!3307))))

(assert (=> d!1057887 (= (maxPrefixOneRule!1836 thiss!23823 (h!43122 rules!3307) lt!1230281) lt!1230673)))

(declare-fun b!3588029 () Bool)

(assert (=> b!3588029 (= e!2220046 (= (size!28721 (_1!21929 (get!12148 lt!1230673))) (size!28723 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230673))))))))

(declare-fun b!3588030 () Bool)

(assert (=> b!3588030 (= e!2220045 (matchR!4891 (regex!5563 (h!43122 rules!3307)) (_1!21933 (findLongestMatchInner!968 (regex!5563 (h!43122 rules!3307)) Nil!37701 (size!28723 Nil!37701) lt!1230281 lt!1230281 (size!28723 lt!1230281)))))))

(declare-fun b!3588031 () Bool)

(declare-fun res!1448221 () Bool)

(assert (=> b!3588031 (=> (not res!1448221) (not e!2220046))))

(assert (=> b!3588031 (= res!1448221 (= (++!9379 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230673)))) (_2!21929 (get!12148 lt!1230673))) lt!1230281))))

(declare-fun b!3588032 () Bool)

(declare-fun res!1448218 () Bool)

(assert (=> b!3588032 (=> (not res!1448218) (not e!2220046))))

(assert (=> b!3588032 (= res!1448218 (= (rule!8277 (_1!21929 (get!12148 lt!1230673))) (h!43122 rules!3307)))))

(declare-fun b!3588033 () Bool)

(assert (=> b!3588033 (= e!2220044 None!7755)))

(assert (= (and d!1057887 c!621520) b!3588033))

(assert (= (and d!1057887 (not c!621520)) b!3588025))

(assert (= (and b!3588025 (not res!1448220)) b!3588030))

(assert (= (and d!1057887 (not res!1448217)) b!3588027))

(assert (= (and b!3588027 res!1448223) b!3588031))

(assert (= (and b!3588031 res!1448221) b!3588026))

(assert (= (and b!3588026 res!1448219) b!3588032))

(assert (= (and b!3588032 res!1448218) b!3588028))

(assert (= (and b!3588028 res!1448222) b!3588029))

(declare-fun m!4081577 () Bool)

(assert (=> b!3588027 m!4081577))

(declare-fun m!4081579 () Bool)

(assert (=> b!3588027 m!4081579))

(assert (=> b!3588027 m!4081579))

(declare-fun m!4081581 () Bool)

(assert (=> b!3588027 m!4081581))

(assert (=> b!3588027 m!4081581))

(declare-fun m!4081583 () Bool)

(assert (=> b!3588027 m!4081583))

(declare-fun m!4081585 () Bool)

(assert (=> d!1057887 m!4081585))

(declare-fun m!4081587 () Bool)

(assert (=> d!1057887 m!4081587))

(declare-fun m!4081589 () Bool)

(assert (=> d!1057887 m!4081589))

(assert (=> d!1057887 m!4081071))

(assert (=> b!3588030 m!4080997))

(assert (=> b!3588030 m!4080289))

(assert (=> b!3588030 m!4080997))

(assert (=> b!3588030 m!4080289))

(declare-fun m!4081591 () Bool)

(assert (=> b!3588030 m!4081591))

(declare-fun m!4081593 () Bool)

(assert (=> b!3588030 m!4081593))

(assert (=> b!3588031 m!4081577))

(assert (=> b!3588031 m!4081579))

(assert (=> b!3588031 m!4081579))

(assert (=> b!3588031 m!4081581))

(assert (=> b!3588031 m!4081581))

(declare-fun m!4081595 () Bool)

(assert (=> b!3588031 m!4081595))

(assert (=> b!3588026 m!4081577))

(declare-fun m!4081597 () Bool)

(assert (=> b!3588026 m!4081597))

(assert (=> b!3588026 m!4080289))

(declare-fun m!4081599 () Bool)

(assert (=> b!3588025 m!4081599))

(declare-fun m!4081601 () Bool)

(assert (=> b!3588025 m!4081601))

(assert (=> b!3588025 m!4081601))

(declare-fun m!4081603 () Bool)

(assert (=> b!3588025 m!4081603))

(assert (=> b!3588025 m!4080289))

(assert (=> b!3588025 m!4081601))

(declare-fun m!4081605 () Bool)

(assert (=> b!3588025 m!4081605))

(assert (=> b!3588025 m!4080997))

(assert (=> b!3588025 m!4080289))

(assert (=> b!3588025 m!4081591))

(assert (=> b!3588025 m!4080997))

(assert (=> b!3588025 m!4081601))

(declare-fun m!4081607 () Bool)

(assert (=> b!3588025 m!4081607))

(declare-fun m!4081609 () Bool)

(assert (=> b!3588025 m!4081609))

(assert (=> b!3588029 m!4081577))

(declare-fun m!4081611 () Bool)

(assert (=> b!3588029 m!4081611))

(assert (=> b!3588032 m!4081577))

(assert (=> b!3588028 m!4081577))

(declare-fun m!4081613 () Bool)

(assert (=> b!3588028 m!4081613))

(assert (=> b!3588028 m!4081613))

(declare-fun m!4081615 () Bool)

(assert (=> b!3588028 m!4081615))

(assert (=> bm!259699 d!1057887))

(declare-fun d!1057889 () Bool)

(declare-fun res!1448228 () Bool)

(declare-fun e!2220051 () Bool)

(assert (=> d!1057889 (=> res!1448228 e!2220051)))

(assert (=> d!1057889 (= res!1448228 (is-Nil!37702 rules!3307))))

(assert (=> d!1057889 (= (noDuplicateTag!2113 thiss!23823 rules!3307 Nil!37707) e!2220051)))

(declare-fun b!3588038 () Bool)

(declare-fun e!2220052 () Bool)

(assert (=> b!3588038 (= e!2220051 e!2220052)))

(declare-fun res!1448229 () Bool)

(assert (=> b!3588038 (=> (not res!1448229) (not e!2220052))))

(declare-fun contains!7191 (List!37831 String!42301) Bool)

(assert (=> b!3588038 (= res!1448229 (not (contains!7191 Nil!37707 (tag!6231 (h!43122 rules!3307)))))))

(declare-fun b!3588039 () Bool)

(assert (=> b!3588039 (= e!2220052 (noDuplicateTag!2113 thiss!23823 (t!290639 rules!3307) (Cons!37707 (tag!6231 (h!43122 rules!3307)) Nil!37707)))))

(assert (= (and d!1057889 (not res!1448228)) b!3588038))

(assert (= (and b!3588038 res!1448229) b!3588039))

(declare-fun m!4081617 () Bool)

(assert (=> b!3588038 m!4081617))

(declare-fun m!4081619 () Bool)

(assert (=> b!3588039 m!4081619))

(assert (=> b!3587276 d!1057889))

(assert (=> b!3587292 d!1057737))

(declare-fun d!1057891 () Bool)

(assert (=> d!1057891 (= (isEmpty!22215 lt!1230473) (not (is-Some!7755 lt!1230473)))))

(assert (=> d!1057515 d!1057891))

(declare-fun b!3588042 () Bool)

(declare-fun e!2220055 () Bool)

(assert (=> b!3588042 (= e!2220055 (isPrefix!2926 (tail!5558 lt!1230282) (tail!5558 lt!1230282)))))

(declare-fun b!3588043 () Bool)

(declare-fun e!2220054 () Bool)

(assert (=> b!3588043 (= e!2220054 (>= (size!28723 lt!1230282) (size!28723 lt!1230282)))))

(declare-fun b!3588041 () Bool)

(declare-fun res!1448232 () Bool)

(assert (=> b!3588041 (=> (not res!1448232) (not e!2220055))))

(assert (=> b!3588041 (= res!1448232 (= (head!7483 lt!1230282) (head!7483 lt!1230282)))))

(declare-fun d!1057893 () Bool)

(assert (=> d!1057893 e!2220054))

(declare-fun res!1448233 () Bool)

(assert (=> d!1057893 (=> res!1448233 e!2220054)))

(declare-fun lt!1230676 () Bool)

(assert (=> d!1057893 (= res!1448233 (not lt!1230676))))

(declare-fun e!2220053 () Bool)

(assert (=> d!1057893 (= lt!1230676 e!2220053)))

(declare-fun res!1448231 () Bool)

(assert (=> d!1057893 (=> res!1448231 e!2220053)))

(assert (=> d!1057893 (= res!1448231 (is-Nil!37701 lt!1230282))))

(assert (=> d!1057893 (= (isPrefix!2926 lt!1230282 lt!1230282) lt!1230676)))

(declare-fun b!3588040 () Bool)

(assert (=> b!3588040 (= e!2220053 e!2220055)))

(declare-fun res!1448230 () Bool)

(assert (=> b!3588040 (=> (not res!1448230) (not e!2220055))))

(assert (=> b!3588040 (= res!1448230 (not (is-Nil!37701 lt!1230282)))))

(assert (= (and d!1057893 (not res!1448231)) b!3588040))

(assert (= (and b!3588040 res!1448230) b!3588041))

(assert (= (and b!3588041 res!1448232) b!3588042))

(assert (= (and d!1057893 (not res!1448233)) b!3588043))

(assert (=> b!3588042 m!4080283))

(assert (=> b!3588042 m!4080283))

(assert (=> b!3588042 m!4080283))

(assert (=> b!3588042 m!4080283))

(declare-fun m!4081621 () Bool)

(assert (=> b!3588042 m!4081621))

(assert (=> b!3588043 m!4080291))

(assert (=> b!3588043 m!4080291))

(assert (=> b!3588041 m!4080293))

(assert (=> b!3588041 m!4080293))

(assert (=> d!1057515 d!1057893))

(declare-fun d!1057895 () Bool)

(assert (=> d!1057895 (isPrefix!2926 lt!1230282 lt!1230282)))

(declare-fun lt!1230677 () Unit!53698)

(assert (=> d!1057895 (= lt!1230677 (choose!20873 lt!1230282 lt!1230282))))

(assert (=> d!1057895 (= (lemmaIsPrefixRefl!1877 lt!1230282 lt!1230282) lt!1230677)))

(declare-fun bs!570121 () Bool)

(assert (= bs!570121 d!1057895))

(assert (=> bs!570121 m!4080603))

(declare-fun m!4081623 () Bool)

(assert (=> bs!570121 m!4081623))

(assert (=> d!1057515 d!1057895))

(assert (=> d!1057515 d!1057667))

(declare-fun d!1057897 () Bool)

(assert (=> d!1057897 (= (isDefined!5989 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275))))) (not (isEmpty!22214 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))))))

(declare-fun bs!570122 () Bool)

(assert (= bs!570122 d!1057897))

(assert (=> bs!570122 m!4080085))

(declare-fun m!4081625 () Bool)

(assert (=> bs!570122 m!4081625))

(assert (=> d!1057431 d!1057897))

(assert (=> d!1057431 d!1057425))

(declare-fun d!1057899 () Bool)

(declare-fun e!2220058 () Bool)

(assert (=> d!1057899 e!2220058))

(declare-fun res!1448238 () Bool)

(assert (=> d!1057899 (=> (not res!1448238) (not e!2220058))))

(assert (=> d!1057899 (= res!1448238 (isDefined!5989 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275))))))))

(assert (=> d!1057899 true))

(declare-fun _$52!2061 () Unit!53698)

(assert (=> d!1057899 (= (choose!20866 thiss!23823 rules!3307 lt!1230281 (_1!21929 lt!1230275)) _$52!2061)))

(declare-fun b!3588048 () Bool)

(declare-fun res!1448239 () Bool)

(assert (=> b!3588048 (=> (not res!1448239) (not e!2220058))))

(assert (=> b!3588048 (= res!1448239 (matchR!4891 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))) (list!13859 (charsOf!3577 (_1!21929 lt!1230275)))))))

(declare-fun b!3588049 () Bool)

(assert (=> b!3588049 (= e!2220058 (= (rule!8277 (_1!21929 lt!1230275)) (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 (_1!21929 lt!1230275)))))))))

(assert (= (and d!1057899 res!1448238) b!3588048))

(assert (= (and b!3588048 res!1448239) b!3588049))

(assert (=> d!1057899 m!4080085))

(assert (=> d!1057899 m!4080085))

(assert (=> d!1057899 m!4080275))

(assert (=> b!3588048 m!4080049))

(assert (=> b!3588048 m!4080281))

(assert (=> b!3588048 m!4080085))

(assert (=> b!3588048 m!4080279))

(assert (=> b!3588048 m!4080047))

(assert (=> b!3588048 m!4080049))

(assert (=> b!3588048 m!4080047))

(assert (=> b!3588048 m!4080085))

(assert (=> b!3588049 m!4080085))

(assert (=> b!3588049 m!4080085))

(assert (=> b!3588049 m!4080279))

(assert (=> d!1057431 d!1057899))

(assert (=> d!1057431 d!1057527))

(declare-fun d!1057901 () Bool)

(assert (=> d!1057901 (= (inv!51036 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275)))) (isBalanced!3498 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275))))))))

(declare-fun bs!570123 () Bool)

(assert (= bs!570123 d!1057901))

(declare-fun m!4081627 () Bool)

(assert (=> bs!570123 m!4081627))

(assert (=> tb!204589 d!1057901))

(declare-fun b!3588050 () Bool)

(declare-fun e!2220060 () Option!7756)

(declare-fun lt!1230679 () tuple2!37598)

(assert (=> b!3588050 (= e!2220060 (Some!7755 (tuple2!37591 (Token!10493 (apply!9073 (transformation!5563 (h!43122 rules!3307)) (seqFromList!4116 (_1!21933 lt!1230679))) (h!43122 rules!3307) (size!28725 (seqFromList!4116 (_1!21933 lt!1230679))) (_1!21933 lt!1230679)) (_2!21933 lt!1230679))))))

(declare-fun lt!1230682 () Unit!53698)

(assert (=> b!3588050 (= lt!1230682 (longestMatchIsAcceptedByMatchOrIsEmpty!941 (regex!5563 (h!43122 rules!3307)) lt!1230282))))

(declare-fun res!1448243 () Bool)

(assert (=> b!3588050 (= res!1448243 (isEmpty!22210 (_1!21933 (findLongestMatchInner!968 (regex!5563 (h!43122 rules!3307)) Nil!37701 (size!28723 Nil!37701) lt!1230282 lt!1230282 (size!28723 lt!1230282)))))))

(declare-fun e!2220061 () Bool)

(assert (=> b!3588050 (=> res!1448243 e!2220061)))

(assert (=> b!3588050 e!2220061))

(declare-fun lt!1230678 () Unit!53698)

(assert (=> b!3588050 (= lt!1230678 lt!1230682)))

(declare-fun lt!1230681 () Unit!53698)

(assert (=> b!3588050 (= lt!1230681 (lemmaSemiInverse!1320 (transformation!5563 (h!43122 rules!3307)) (seqFromList!4116 (_1!21933 lt!1230679))))))

(declare-fun b!3588051 () Bool)

(declare-fun res!1448242 () Bool)

(declare-fun e!2220062 () Bool)

(assert (=> b!3588051 (=> (not res!1448242) (not e!2220062))))

(declare-fun lt!1230680 () Option!7756)

(assert (=> b!3588051 (= res!1448242 (< (size!28723 (_2!21929 (get!12148 lt!1230680))) (size!28723 lt!1230282)))))

(declare-fun b!3588052 () Bool)

(declare-fun e!2220059 () Bool)

(assert (=> b!3588052 (= e!2220059 e!2220062)))

(declare-fun res!1448246 () Bool)

(assert (=> b!3588052 (=> (not res!1448246) (not e!2220062))))

(assert (=> b!3588052 (= res!1448246 (matchR!4891 (regex!5563 (h!43122 rules!3307)) (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230680))))))))

(declare-fun b!3588053 () Bool)

(declare-fun res!1448245 () Bool)

(assert (=> b!3588053 (=> (not res!1448245) (not e!2220062))))

(assert (=> b!3588053 (= res!1448245 (= (value!179007 (_1!21929 (get!12148 lt!1230680))) (apply!9073 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230680)))) (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230680)))))))))

(declare-fun d!1057903 () Bool)

(assert (=> d!1057903 e!2220059))

(declare-fun res!1448240 () Bool)

(assert (=> d!1057903 (=> res!1448240 e!2220059)))

(assert (=> d!1057903 (= res!1448240 (isEmpty!22215 lt!1230680))))

(assert (=> d!1057903 (= lt!1230680 e!2220060)))

(declare-fun c!621521 () Bool)

(assert (=> d!1057903 (= c!621521 (isEmpty!22210 (_1!21933 lt!1230679)))))

(assert (=> d!1057903 (= lt!1230679 (findLongestMatch!883 (regex!5563 (h!43122 rules!3307)) lt!1230282))))

(assert (=> d!1057903 (ruleValid!1828 thiss!23823 (h!43122 rules!3307))))

(assert (=> d!1057903 (= (maxPrefixOneRule!1836 thiss!23823 (h!43122 rules!3307) lt!1230282) lt!1230680)))

(declare-fun b!3588054 () Bool)

(assert (=> b!3588054 (= e!2220062 (= (size!28721 (_1!21929 (get!12148 lt!1230680))) (size!28723 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230680))))))))

(declare-fun b!3588055 () Bool)

(assert (=> b!3588055 (= e!2220061 (matchR!4891 (regex!5563 (h!43122 rules!3307)) (_1!21933 (findLongestMatchInner!968 (regex!5563 (h!43122 rules!3307)) Nil!37701 (size!28723 Nil!37701) lt!1230282 lt!1230282 (size!28723 lt!1230282)))))))

(declare-fun b!3588056 () Bool)

(declare-fun res!1448244 () Bool)

(assert (=> b!3588056 (=> (not res!1448244) (not e!2220062))))

(assert (=> b!3588056 (= res!1448244 (= (++!9379 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230680)))) (_2!21929 (get!12148 lt!1230680))) lt!1230282))))

(declare-fun b!3588057 () Bool)

(declare-fun res!1448241 () Bool)

(assert (=> b!3588057 (=> (not res!1448241) (not e!2220062))))

(assert (=> b!3588057 (= res!1448241 (= (rule!8277 (_1!21929 (get!12148 lt!1230680))) (h!43122 rules!3307)))))

(declare-fun b!3588058 () Bool)

(assert (=> b!3588058 (= e!2220060 None!7755)))

(assert (= (and d!1057903 c!621521) b!3588058))

(assert (= (and d!1057903 (not c!621521)) b!3588050))

(assert (= (and b!3588050 (not res!1448243)) b!3588055))

(assert (= (and d!1057903 (not res!1448240)) b!3588052))

(assert (= (and b!3588052 res!1448246) b!3588056))

(assert (= (and b!3588056 res!1448244) b!3588051))

(assert (= (and b!3588051 res!1448242) b!3588057))

(assert (= (and b!3588057 res!1448241) b!3588053))

(assert (= (and b!3588053 res!1448245) b!3588054))

(declare-fun m!4081629 () Bool)

(assert (=> b!3588052 m!4081629))

(declare-fun m!4081631 () Bool)

(assert (=> b!3588052 m!4081631))

(assert (=> b!3588052 m!4081631))

(declare-fun m!4081633 () Bool)

(assert (=> b!3588052 m!4081633))

(assert (=> b!3588052 m!4081633))

(declare-fun m!4081635 () Bool)

(assert (=> b!3588052 m!4081635))

(declare-fun m!4081637 () Bool)

(assert (=> d!1057903 m!4081637))

(declare-fun m!4081639 () Bool)

(assert (=> d!1057903 m!4081639))

(declare-fun m!4081641 () Bool)

(assert (=> d!1057903 m!4081641))

(assert (=> d!1057903 m!4081071))

(assert (=> b!3588055 m!4080997))

(assert (=> b!3588055 m!4080291))

(assert (=> b!3588055 m!4080997))

(assert (=> b!3588055 m!4080291))

(declare-fun m!4081643 () Bool)

(assert (=> b!3588055 m!4081643))

(declare-fun m!4081645 () Bool)

(assert (=> b!3588055 m!4081645))

(assert (=> b!3588056 m!4081629))

(assert (=> b!3588056 m!4081631))

(assert (=> b!3588056 m!4081631))

(assert (=> b!3588056 m!4081633))

(assert (=> b!3588056 m!4081633))

(declare-fun m!4081647 () Bool)

(assert (=> b!3588056 m!4081647))

(assert (=> b!3588051 m!4081629))

(declare-fun m!4081649 () Bool)

(assert (=> b!3588051 m!4081649))

(assert (=> b!3588051 m!4080291))

(declare-fun m!4081651 () Bool)

(assert (=> b!3588050 m!4081651))

(declare-fun m!4081653 () Bool)

(assert (=> b!3588050 m!4081653))

(assert (=> b!3588050 m!4081653))

(declare-fun m!4081655 () Bool)

(assert (=> b!3588050 m!4081655))

(assert (=> b!3588050 m!4080291))

(assert (=> b!3588050 m!4081653))

(declare-fun m!4081657 () Bool)

(assert (=> b!3588050 m!4081657))

(assert (=> b!3588050 m!4080997))

(assert (=> b!3588050 m!4080291))

(assert (=> b!3588050 m!4081643))

(assert (=> b!3588050 m!4080997))

(assert (=> b!3588050 m!4081653))

(declare-fun m!4081659 () Bool)

(assert (=> b!3588050 m!4081659))

(declare-fun m!4081661 () Bool)

(assert (=> b!3588050 m!4081661))

(assert (=> b!3588054 m!4081629))

(declare-fun m!4081663 () Bool)

(assert (=> b!3588054 m!4081663))

(assert (=> b!3588057 m!4081629))

(assert (=> b!3588053 m!4081629))

(declare-fun m!4081665 () Bool)

(assert (=> b!3588053 m!4081665))

(assert (=> b!3588053 m!4081665))

(declare-fun m!4081667 () Bool)

(assert (=> b!3588053 m!4081667))

(assert (=> bm!259715 d!1057903))

(declare-fun b!3588067 () Bool)

(declare-fun e!2220070 () Bool)

(declare-fun call!259800 () Bool)

(assert (=> b!3588067 (= e!2220070 call!259800)))

(declare-fun bm!259795 () Bool)

(assert (=> bm!259795 (= call!259800 (ruleDisjointCharsFromAllFromOtherType!785 (h!43122 rules!3307) (t!290639 rules!3307)))))

(declare-fun b!3588068 () Bool)

(declare-fun e!2220071 () Bool)

(assert (=> b!3588068 (= e!2220071 call!259800)))

(declare-fun d!1057905 () Bool)

(declare-fun c!621524 () Bool)

(assert (=> d!1057905 (= c!621524 (and (is-Cons!37702 rules!3307) (not (= (isSeparator!5563 (h!43122 rules!3307)) (isSeparator!5563 (h!43122 rules!3307))))))))

(declare-fun e!2220069 () Bool)

(assert (=> d!1057905 (= (ruleDisjointCharsFromAllFromOtherType!785 (h!43122 rules!3307) rules!3307) e!2220069)))

(declare-fun b!3588069 () Bool)

(assert (=> b!3588069 (= e!2220069 e!2220070)))

(declare-fun res!1448252 () Bool)

(declare-fun rulesUseDisjointChars!367 (Rule!10926 Rule!10926) Bool)

(assert (=> b!3588069 (= res!1448252 (rulesUseDisjointChars!367 (h!43122 rules!3307) (h!43122 rules!3307)))))

(assert (=> b!3588069 (=> (not res!1448252) (not e!2220070))))

(declare-fun b!3588070 () Bool)

(assert (=> b!3588070 (= e!2220069 e!2220071)))

(declare-fun res!1448251 () Bool)

(assert (=> b!3588070 (= res!1448251 (not (is-Cons!37702 rules!3307)))))

(assert (=> b!3588070 (=> res!1448251 e!2220071)))

(assert (= (and d!1057905 c!621524) b!3588069))

(assert (= (and d!1057905 (not c!621524)) b!3588070))

(assert (= (and b!3588069 res!1448252) b!3588067))

(assert (= (and b!3588070 (not res!1448251)) b!3588068))

(assert (= (or b!3588067 b!3588068) bm!259795))

(declare-fun m!4081669 () Bool)

(assert (=> bm!259795 m!4081669))

(declare-fun m!4081671 () Bool)

(assert (=> b!3588069 m!4081671))

(assert (=> b!3587417 d!1057905))

(assert (=> bm!259714 d!1057755))

(declare-fun d!1057907 () Bool)

(assert (=> d!1057907 (= (list!13859 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511))) (list!13861 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511)))))))

(declare-fun bs!570124 () Bool)

(assert (= bs!570124 d!1057907))

(declare-fun m!4081673 () Bool)

(assert (=> bs!570124 m!4081673))

(assert (=> b!3586909 d!1057907))

(assert (=> b!3587098 d!1057737))

(declare-fun d!1057909 () Bool)

(assert (=> d!1057909 (= (head!7483 (++!9379 lt!1230283 (_2!21929 lt!1230275))) (h!43121 (++!9379 lt!1230283 (_2!21929 lt!1230275))))))

(assert (=> b!3587098 d!1057909))

(declare-fun b!3588074 () Bool)

(declare-fun e!2220073 () List!37825)

(assert (=> b!3588074 (= e!2220073 (++!9379 (list!13861 (left!29462 (c!621270 (charsOf!3577 token!511)))) (list!13861 (right!29792 (c!621270 (charsOf!3577 token!511))))))))

(declare-fun d!1057911 () Bool)

(declare-fun c!621525 () Bool)

(assert (=> d!1057911 (= c!621525 (is-Empty!11466 (c!621270 (charsOf!3577 token!511))))))

(declare-fun e!2220072 () List!37825)

(assert (=> d!1057911 (= (list!13861 (c!621270 (charsOf!3577 token!511))) e!2220072)))

(declare-fun b!3588071 () Bool)

(assert (=> b!3588071 (= e!2220072 Nil!37701)))

(declare-fun b!3588073 () Bool)

(assert (=> b!3588073 (= e!2220073 (list!13865 (xs!14668 (c!621270 (charsOf!3577 token!511)))))))

(declare-fun b!3588072 () Bool)

(assert (=> b!3588072 (= e!2220072 e!2220073)))

(declare-fun c!621526 () Bool)

(assert (=> b!3588072 (= c!621526 (is-Leaf!17859 (c!621270 (charsOf!3577 token!511))))))

(assert (= (and d!1057911 c!621525) b!3588071))

(assert (= (and d!1057911 (not c!621525)) b!3588072))

(assert (= (and b!3588072 c!621526) b!3588073))

(assert (= (and b!3588072 (not c!621526)) b!3588074))

(declare-fun m!4081675 () Bool)

(assert (=> b!3588074 m!4081675))

(declare-fun m!4081677 () Bool)

(assert (=> b!3588074 m!4081677))

(assert (=> b!3588074 m!4081675))

(assert (=> b!3588074 m!4081677))

(declare-fun m!4081679 () Bool)

(assert (=> b!3588074 m!4081679))

(declare-fun m!4081681 () Bool)

(assert (=> b!3588073 m!4081681))

(assert (=> d!1057517 d!1057911))

(declare-fun bs!570125 () Bool)

(declare-fun d!1057913 () Bool)

(assert (= bs!570125 (and d!1057913 d!1057549)))

(declare-fun lambda!123809 () Int)

(assert (=> bs!570125 (= (and (= (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) (= (toValue!7843 (transformation!5563 anOtherTypeRule!33)) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (= lambda!123809 lambda!123792))))

(declare-fun bs!570126 () Bool)

(assert (= bs!570126 (and d!1057913 d!1057721)))

(assert (=> bs!570126 (= (and (= (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toChars!7702 (transformation!5563 (h!43122 rules!3307)))) (= (toValue!7843 (transformation!5563 anOtherTypeRule!33)) (toValue!7843 (transformation!5563 (h!43122 rules!3307))))) (= lambda!123809 lambda!123801))))

(declare-fun bs!570127 () Bool)

(assert (= bs!570127 (and d!1057913 d!1057845)))

(assert (=> bs!570127 (= (and (= (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toChars!7702 (transformation!5563 rule!403))) (= (toValue!7843 (transformation!5563 anOtherTypeRule!33)) (toValue!7843 (transformation!5563 rule!403)))) (= lambda!123809 lambda!123806))))

(assert (=> d!1057913 true))

(assert (=> d!1057913 (< (dynLambda!16208 order!20455 (toChars!7702 (transformation!5563 anOtherTypeRule!33))) (dynLambda!16207 order!20453 lambda!123809))))

(assert (=> d!1057913 true))

(assert (=> d!1057913 (< (dynLambda!16206 order!20451 (toValue!7843 (transformation!5563 anOtherTypeRule!33))) (dynLambda!16207 order!20453 lambda!123809))))

(assert (=> d!1057913 (= (semiInverseModEq!2358 (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toValue!7843 (transformation!5563 anOtherTypeRule!33))) (Forall!1364 lambda!123809))))

(declare-fun bs!570128 () Bool)

(assert (= bs!570128 d!1057913))

(declare-fun m!4081683 () Bool)

(assert (=> bs!570128 m!4081683))

(assert (=> d!1057573 d!1057913))

(declare-fun d!1057915 () Bool)

(assert (=> d!1057915 (= (isDefined!5989 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419)))) (not (isEmpty!22214 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419))))))))

(declare-fun bs!570129 () Bool)

(assert (= bs!570129 d!1057915))

(assert (=> bs!570129 m!4080383))

(declare-fun m!4081685 () Bool)

(assert (=> bs!570129 m!4081685))

(assert (=> d!1057437 d!1057915))

(assert (=> d!1057437 d!1057625))

(declare-fun d!1057917 () Bool)

(assert (=> d!1057917 (= (isEmpty!22215 (maxPrefix!2686 thiss!23823 rules!3307 (++!9379 lt!1230282 suffix!1395))) (not (is-Some!7755 (maxPrefix!2686 thiss!23823 rules!3307 (++!9379 lt!1230282 suffix!1395)))))))

(assert (=> d!1057437 d!1057917))

(assert (=> d!1057437 d!1057481))

(declare-fun b!3588077 () Bool)

(declare-fun e!2220076 () Bool)

(assert (=> b!3588077 (= e!2220076 (isPrefix!2926 (tail!5558 lt!1230409) (tail!5558 (++!9379 lt!1230409 lt!1230408))))))

(declare-fun b!3588078 () Bool)

(declare-fun e!2220075 () Bool)

(assert (=> b!3588078 (= e!2220075 (>= (size!28723 (++!9379 lt!1230409 lt!1230408)) (size!28723 lt!1230409)))))

(declare-fun b!3588076 () Bool)

(declare-fun res!1448255 () Bool)

(assert (=> b!3588076 (=> (not res!1448255) (not e!2220076))))

(assert (=> b!3588076 (= res!1448255 (= (head!7483 lt!1230409) (head!7483 (++!9379 lt!1230409 lt!1230408))))))

(declare-fun d!1057919 () Bool)

(assert (=> d!1057919 e!2220075))

(declare-fun res!1448256 () Bool)

(assert (=> d!1057919 (=> res!1448256 e!2220075)))

(declare-fun lt!1230683 () Bool)

(assert (=> d!1057919 (= res!1448256 (not lt!1230683))))

(declare-fun e!2220074 () Bool)

(assert (=> d!1057919 (= lt!1230683 e!2220074)))

(declare-fun res!1448254 () Bool)

(assert (=> d!1057919 (=> res!1448254 e!2220074)))

(assert (=> d!1057919 (= res!1448254 (is-Nil!37701 lt!1230409))))

(assert (=> d!1057919 (= (isPrefix!2926 lt!1230409 (++!9379 lt!1230409 lt!1230408)) lt!1230683)))

(declare-fun b!3588075 () Bool)

(assert (=> b!3588075 (= e!2220074 e!2220076)))

(declare-fun res!1448253 () Bool)

(assert (=> b!3588075 (=> (not res!1448253) (not e!2220076))))

(assert (=> b!3588075 (= res!1448253 (not (is-Nil!37701 (++!9379 lt!1230409 lt!1230408))))))

(assert (= (and d!1057919 (not res!1448254)) b!3588075))

(assert (= (and b!3588075 res!1448253) b!3588076))

(assert (= (and b!3588076 res!1448255) b!3588077))

(assert (= (and d!1057919 (not res!1448256)) b!3588078))

(declare-fun m!4081687 () Bool)

(assert (=> b!3588077 m!4081687))

(assert (=> b!3588077 m!4080409))

(declare-fun m!4081689 () Bool)

(assert (=> b!3588077 m!4081689))

(assert (=> b!3588077 m!4081687))

(assert (=> b!3588077 m!4081689))

(declare-fun m!4081691 () Bool)

(assert (=> b!3588077 m!4081691))

(assert (=> b!3588078 m!4080409))

(declare-fun m!4081693 () Bool)

(assert (=> b!3588078 m!4081693))

(declare-fun m!4081695 () Bool)

(assert (=> b!3588078 m!4081695))

(declare-fun m!4081697 () Bool)

(assert (=> b!3588076 m!4081697))

(assert (=> b!3588076 m!4080409))

(declare-fun m!4081699 () Bool)

(assert (=> b!3588076 m!4081699))

(assert (=> d!1057437 d!1057919))

(assert (=> d!1057437 d!1057627))

(declare-fun b!3588081 () Bool)

(declare-fun e!2220079 () Bool)

(assert (=> b!3588081 (= e!2220079 (isPrefix!2926 (tail!5558 lt!1230403) (tail!5558 (++!9379 lt!1230282 suffix!1395))))))

(declare-fun e!2220078 () Bool)

(declare-fun b!3588082 () Bool)

(assert (=> b!3588082 (= e!2220078 (>= (size!28723 (++!9379 lt!1230282 suffix!1395)) (size!28723 lt!1230403)))))

(declare-fun b!3588080 () Bool)

(declare-fun res!1448259 () Bool)

(assert (=> b!3588080 (=> (not res!1448259) (not e!2220079))))

(assert (=> b!3588080 (= res!1448259 (= (head!7483 lt!1230403) (head!7483 (++!9379 lt!1230282 suffix!1395))))))

(declare-fun d!1057921 () Bool)

(assert (=> d!1057921 e!2220078))

(declare-fun res!1448260 () Bool)

(assert (=> d!1057921 (=> res!1448260 e!2220078)))

(declare-fun lt!1230684 () Bool)

(assert (=> d!1057921 (= res!1448260 (not lt!1230684))))

(declare-fun e!2220077 () Bool)

(assert (=> d!1057921 (= lt!1230684 e!2220077)))

(declare-fun res!1448258 () Bool)

(assert (=> d!1057921 (=> res!1448258 e!2220077)))

(assert (=> d!1057921 (= res!1448258 (is-Nil!37701 lt!1230403))))

(assert (=> d!1057921 (= (isPrefix!2926 lt!1230403 (++!9379 lt!1230282 suffix!1395)) lt!1230684)))

(declare-fun b!3588079 () Bool)

(assert (=> b!3588079 (= e!2220077 e!2220079)))

(declare-fun res!1448257 () Bool)

(assert (=> b!3588079 (=> (not res!1448257) (not e!2220079))))

(assert (=> b!3588079 (= res!1448257 (not (is-Nil!37701 (++!9379 lt!1230282 suffix!1395))))))

(assert (= (and d!1057921 (not res!1448258)) b!3588079))

(assert (= (and b!3588079 res!1448257) b!3588080))

(assert (= (and b!3588080 res!1448259) b!3588081))

(assert (= (and d!1057921 (not res!1448260)) b!3588082))

(declare-fun m!4081701 () Bool)

(assert (=> b!3588081 m!4081701))

(assert (=> b!3588081 m!4080087))

(assert (=> b!3588081 m!4081313))

(assert (=> b!3588081 m!4081701))

(assert (=> b!3588081 m!4081313))

(declare-fun m!4081703 () Bool)

(assert (=> b!3588081 m!4081703))

(assert (=> b!3588082 m!4080087))

(assert (=> b!3588082 m!4081317))

(declare-fun m!4081705 () Bool)

(assert (=> b!3588082 m!4081705))

(declare-fun m!4081707 () Bool)

(assert (=> b!3588080 m!4081707))

(assert (=> b!3588080 m!4080087))

(assert (=> b!3588080 m!4081319))

(assert (=> d!1057437 d!1057921))

(declare-fun b!3588083 () Bool)

(declare-fun res!1448267 () Bool)

(declare-fun e!2220081 () Bool)

(assert (=> b!3588083 (=> (not res!1448267) (not e!2220081))))

(declare-fun lt!1230689 () Option!7756)

(assert (=> b!3588083 (= res!1448267 (= (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230689)))) (originalCharacters!6277 (_1!21929 (get!12148 lt!1230689)))))))

(declare-fun b!3588084 () Bool)

(declare-fun e!2220080 () Option!7756)

(declare-fun lt!1230687 () Option!7756)

(declare-fun lt!1230686 () Option!7756)

(assert (=> b!3588084 (= e!2220080 (ite (and (is-None!7755 lt!1230687) (is-None!7755 lt!1230686)) None!7755 (ite (is-None!7755 lt!1230686) lt!1230687 (ite (is-None!7755 lt!1230687) lt!1230686 (ite (>= (size!28721 (_1!21929 (v!37421 lt!1230687))) (size!28721 (_1!21929 (v!37421 lt!1230686)))) lt!1230687 lt!1230686)))))))

(declare-fun call!259801 () Option!7756)

(assert (=> b!3588084 (= lt!1230687 call!259801)))

(assert (=> b!3588084 (= lt!1230686 (maxPrefix!2686 thiss!23823 (t!290639 rules!3307) (++!9379 lt!1230282 suffix!1395)))))

(declare-fun bm!259796 () Bool)

(assert (=> bm!259796 (= call!259801 (maxPrefixOneRule!1836 thiss!23823 (h!43122 rules!3307) (++!9379 lt!1230282 suffix!1395)))))

(declare-fun b!3588086 () Bool)

(assert (=> b!3588086 (= e!2220081 (contains!7188 rules!3307 (rule!8277 (_1!21929 (get!12148 lt!1230689)))))))

(declare-fun b!3588087 () Bool)

(declare-fun res!1448266 () Bool)

(assert (=> b!3588087 (=> (not res!1448266) (not e!2220081))))

(assert (=> b!3588087 (= res!1448266 (= (++!9379 (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230689)))) (_2!21929 (get!12148 lt!1230689))) (++!9379 lt!1230282 suffix!1395)))))

(declare-fun b!3588088 () Bool)

(declare-fun res!1448262 () Bool)

(assert (=> b!3588088 (=> (not res!1448262) (not e!2220081))))

(assert (=> b!3588088 (= res!1448262 (= (value!179007 (_1!21929 (get!12148 lt!1230689))) (apply!9073 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230689)))) (seqFromList!4116 (originalCharacters!6277 (_1!21929 (get!12148 lt!1230689)))))))))

(declare-fun b!3588089 () Bool)

(declare-fun res!1448264 () Bool)

(assert (=> b!3588089 (=> (not res!1448264) (not e!2220081))))

(assert (=> b!3588089 (= res!1448264 (matchR!4891 (regex!5563 (rule!8277 (_1!21929 (get!12148 lt!1230689)))) (list!13859 (charsOf!3577 (_1!21929 (get!12148 lt!1230689))))))))

(declare-fun b!3588090 () Bool)

(assert (=> b!3588090 (= e!2220080 call!259801)))

(declare-fun b!3588091 () Bool)

(declare-fun res!1448263 () Bool)

(assert (=> b!3588091 (=> (not res!1448263) (not e!2220081))))

(assert (=> b!3588091 (= res!1448263 (< (size!28723 (_2!21929 (get!12148 lt!1230689))) (size!28723 (++!9379 lt!1230282 suffix!1395))))))

(declare-fun d!1057925 () Bool)

(declare-fun e!2220082 () Bool)

(assert (=> d!1057925 e!2220082))

(declare-fun res!1448265 () Bool)

(assert (=> d!1057925 (=> res!1448265 e!2220082)))

(assert (=> d!1057925 (= res!1448265 (isEmpty!22215 lt!1230689))))

(assert (=> d!1057925 (= lt!1230689 e!2220080)))

(declare-fun c!621527 () Bool)

(assert (=> d!1057925 (= c!621527 (and (is-Cons!37702 rules!3307) (is-Nil!37702 (t!290639 rules!3307))))))

(declare-fun lt!1230688 () Unit!53698)

(declare-fun lt!1230685 () Unit!53698)

(assert (=> d!1057925 (= lt!1230688 lt!1230685)))

(assert (=> d!1057925 (isPrefix!2926 (++!9379 lt!1230282 suffix!1395) (++!9379 lt!1230282 suffix!1395))))

(assert (=> d!1057925 (= lt!1230685 (lemmaIsPrefixRefl!1877 (++!9379 lt!1230282 suffix!1395) (++!9379 lt!1230282 suffix!1395)))))

(assert (=> d!1057925 (rulesValidInductive!1940 thiss!23823 rules!3307)))

(assert (=> d!1057925 (= (maxPrefix!2686 thiss!23823 rules!3307 (++!9379 lt!1230282 suffix!1395)) lt!1230689)))

(declare-fun b!3588085 () Bool)

(assert (=> b!3588085 (= e!2220082 e!2220081)))

(declare-fun res!1448261 () Bool)

(assert (=> b!3588085 (=> (not res!1448261) (not e!2220081))))

(assert (=> b!3588085 (= res!1448261 (isDefined!5988 lt!1230689))))

(assert (= (and d!1057925 c!621527) b!3588090))

(assert (= (and d!1057925 (not c!621527)) b!3588084))

(assert (= (or b!3588090 b!3588084) bm!259796))

(assert (= (and d!1057925 (not res!1448265)) b!3588085))

(assert (= (and b!3588085 res!1448261) b!3588083))

(assert (= (and b!3588083 res!1448267) b!3588091))

(assert (= (and b!3588091 res!1448263) b!3588087))

(assert (= (and b!3588087 res!1448266) b!3588088))

(assert (= (and b!3588088 res!1448262) b!3588089))

(assert (= (and b!3588089 res!1448264) b!3588086))

(assert (=> b!3588084 m!4080087))

(declare-fun m!4081709 () Bool)

(assert (=> b!3588084 m!4081709))

(declare-fun m!4081711 () Bool)

(assert (=> b!3588083 m!4081711))

(declare-fun m!4081713 () Bool)

(assert (=> b!3588083 m!4081713))

(assert (=> b!3588083 m!4081713))

(declare-fun m!4081715 () Bool)

(assert (=> b!3588083 m!4081715))

(declare-fun m!4081717 () Bool)

(assert (=> b!3588085 m!4081717))

(assert (=> b!3588088 m!4081711))

(declare-fun m!4081719 () Bool)

(assert (=> b!3588088 m!4081719))

(assert (=> b!3588088 m!4081719))

(declare-fun m!4081721 () Bool)

(assert (=> b!3588088 m!4081721))

(declare-fun m!4081723 () Bool)

(assert (=> d!1057925 m!4081723))

(assert (=> d!1057925 m!4080087))

(assert (=> d!1057925 m!4080087))

(declare-fun m!4081725 () Bool)

(assert (=> d!1057925 m!4081725))

(assert (=> d!1057925 m!4080087))

(assert (=> d!1057925 m!4080087))

(declare-fun m!4081727 () Bool)

(assert (=> d!1057925 m!4081727))

(assert (=> d!1057925 m!4080501))

(assert (=> b!3588089 m!4081711))

(assert (=> b!3588089 m!4081713))

(assert (=> b!3588089 m!4081713))

(assert (=> b!3588089 m!4081715))

(assert (=> b!3588089 m!4081715))

(declare-fun m!4081729 () Bool)

(assert (=> b!3588089 m!4081729))

(assert (=> b!3588087 m!4081711))

(assert (=> b!3588087 m!4081713))

(assert (=> b!3588087 m!4081713))

(assert (=> b!3588087 m!4081715))

(assert (=> b!3588087 m!4081715))

(declare-fun m!4081731 () Bool)

(assert (=> b!3588087 m!4081731))

(assert (=> b!3588091 m!4081711))

(declare-fun m!4081733 () Bool)

(assert (=> b!3588091 m!4081733))

(assert (=> b!3588091 m!4080087))

(assert (=> b!3588091 m!4081317))

(assert (=> bm!259796 m!4080087))

(declare-fun m!4081735 () Bool)

(assert (=> bm!259796 m!4081735))

(assert (=> b!3588086 m!4081711))

(declare-fun m!4081737 () Bool)

(assert (=> b!3588086 m!4081737))

(assert (=> d!1057437 d!1057925))

(declare-fun d!1057927 () Bool)

(declare-fun e!2220083 () Bool)

(assert (=> d!1057927 e!2220083))

(declare-fun res!1448268 () Bool)

(assert (=> d!1057927 (=> (not res!1448268) (not e!2220083))))

(assert (=> d!1057927 (= res!1448268 (isDefined!5989 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419)))))))

(declare-fun lt!1230690 () Unit!53698)

(assert (=> d!1057927 (= lt!1230690 (choose!20866 thiss!23823 rules!3307 lt!1230282 lt!1230419))))

(assert (=> d!1057927 (rulesInvariant!4549 thiss!23823 rules!3307)))

(assert (=> d!1057927 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1169 thiss!23823 rules!3307 lt!1230282 lt!1230419) lt!1230690)))

(declare-fun b!3588092 () Bool)

(declare-fun res!1448269 () Bool)

(assert (=> b!3588092 (=> (not res!1448269) (not e!2220083))))

(assert (=> b!3588092 (= res!1448269 (matchR!4891 (regex!5563 (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419))))) (list!13859 (charsOf!3577 lt!1230419))))))

(declare-fun b!3588093 () Bool)

(assert (=> b!3588093 (= e!2220083 (= (rule!8277 lt!1230419) (get!12149 (getRuleFromTag!1169 thiss!23823 rules!3307 (tag!6231 (rule!8277 lt!1230419))))))))

(assert (= (and d!1057927 res!1448268) b!3588092))

(assert (= (and b!3588092 res!1448269) b!3588093))

(assert (=> d!1057927 m!4080383))

(assert (=> d!1057927 m!4080383))

(assert (=> d!1057927 m!4080417))

(declare-fun m!4081739 () Bool)

(assert (=> d!1057927 m!4081739))

(assert (=> d!1057927 m!4080057))

(assert (=> b!3588092 m!4080387))

(assert (=> b!3588092 m!4080387))

(assert (=> b!3588092 m!4080391))

(assert (=> b!3588092 m!4080383))

(assert (=> b!3588092 m!4080383))

(assert (=> b!3588092 m!4080385))

(assert (=> b!3588092 m!4080391))

(assert (=> b!3588092 m!4080431))

(assert (=> b!3588093 m!4080383))

(assert (=> b!3588093 m!4080383))

(assert (=> b!3588093 m!4080385))

(assert (=> d!1057437 d!1057927))

(declare-fun d!1057929 () Bool)

(assert (=> d!1057929 (= (get!12148 (maxPrefix!2686 thiss!23823 rules!3307 lt!1230282)) (v!37421 (maxPrefix!2686 thiss!23823 rules!3307 lt!1230282)))))

(assert (=> d!1057437 d!1057929))

(declare-fun d!1057931 () Bool)

(assert (=> d!1057931 (= (seqFromList!4116 lt!1230282) (fromListB!1898 lt!1230282))))

(declare-fun bs!570130 () Bool)

(assert (= bs!570130 d!1057931))

(declare-fun m!4081741 () Bool)

(assert (=> bs!570130 m!4081741))

(assert (=> d!1057437 d!1057931))

(declare-fun b!3588342 () Bool)

(declare-fun e!2220224 () Bool)

(declare-fun e!2220223 () Bool)

(assert (=> b!3588342 (= e!2220224 e!2220223)))

(declare-fun res!1448351 () Bool)

(declare-fun lt!1230727 () tuple2!37594)

(assert (=> b!3588342 (= res!1448351 (< (size!28725 (_2!21931 lt!1230727)) (size!28725 (seqFromList!4116 lt!1230282))))))

(assert (=> b!3588342 (=> (not res!1448351) (not e!2220223))))

(declare-fun b!3588344 () Bool)

(declare-fun e!2220225 () Bool)

(declare-datatypes ((tuple2!37600 0))(
  ( (tuple2!37601 (_1!21934 List!37830) (_2!21934 List!37825)) )
))
(declare-fun lexList!1509 (LexerInterface!5152 List!37826 List!37825) tuple2!37600)

(assert (=> b!3588344 (= e!2220225 (= (list!13859 (_2!21931 lt!1230727)) (_2!21934 (lexList!1509 thiss!23823 rules!3307 (list!13859 (seqFromList!4116 lt!1230282))))))))

(declare-fun b!3588343 () Bool)

(assert (=> b!3588343 (= e!2220224 (= (_2!21931 lt!1230727) (seqFromList!4116 lt!1230282)))))

(declare-fun d!1057933 () Bool)

(assert (=> d!1057933 e!2220225))

(declare-fun res!1448350 () Bool)

(assert (=> d!1057933 (=> (not res!1448350) (not e!2220225))))

(assert (=> d!1057933 (= res!1448350 e!2220224)))

(declare-fun c!621609 () Bool)

(declare-fun size!28726 (BalanceConc!22550) Int)

(assert (=> d!1057933 (= c!621609 (> (size!28726 (_1!21931 lt!1230727)) 0))))

(declare-fun lexTailRecV2!1115 (LexerInterface!5152 List!37826 BalanceConc!22546 BalanceConc!22546 BalanceConc!22546 BalanceConc!22550) tuple2!37594)

(assert (=> d!1057933 (= lt!1230727 (lexTailRecV2!1115 thiss!23823 rules!3307 (seqFromList!4116 lt!1230282) (BalanceConc!22547 Empty!11466) (seqFromList!4116 lt!1230282) (BalanceConc!22551 Empty!11468)))))

(assert (=> d!1057933 (= (lex!2443 thiss!23823 rules!3307 (seqFromList!4116 lt!1230282)) lt!1230727)))

(declare-fun b!3588345 () Bool)

(declare-fun res!1448349 () Bool)

(assert (=> b!3588345 (=> (not res!1448349) (not e!2220225))))

(assert (=> b!3588345 (= res!1448349 (= (list!13862 (_1!21931 lt!1230727)) (_1!21934 (lexList!1509 thiss!23823 rules!3307 (list!13859 (seqFromList!4116 lt!1230282))))))))

(declare-fun b!3588346 () Bool)

(declare-fun isEmpty!22218 (BalanceConc!22550) Bool)

(assert (=> b!3588346 (= e!2220223 (not (isEmpty!22218 (_1!21931 lt!1230727))))))

(assert (= (and d!1057933 c!621609) b!3588342))

(assert (= (and d!1057933 (not c!621609)) b!3588343))

(assert (= (and b!3588342 res!1448351) b!3588346))

(assert (= (and d!1057933 res!1448350) b!3588345))

(assert (= (and b!3588345 res!1448349) b!3588344))

(declare-fun m!4082017 () Bool)

(assert (=> d!1057933 m!4082017))

(assert (=> d!1057933 m!4080413))

(assert (=> d!1057933 m!4080413))

(declare-fun m!4082019 () Bool)

(assert (=> d!1057933 m!4082019))

(declare-fun m!4082021 () Bool)

(assert (=> b!3588344 m!4082021))

(assert (=> b!3588344 m!4080413))

(declare-fun m!4082023 () Bool)

(assert (=> b!3588344 m!4082023))

(assert (=> b!3588344 m!4082023))

(declare-fun m!4082025 () Bool)

(assert (=> b!3588344 m!4082025))

(declare-fun m!4082027 () Bool)

(assert (=> b!3588345 m!4082027))

(assert (=> b!3588345 m!4080413))

(assert (=> b!3588345 m!4082023))

(assert (=> b!3588345 m!4082023))

(assert (=> b!3588345 m!4082025))

(declare-fun m!4082029 () Bool)

(assert (=> b!3588342 m!4082029))

(assert (=> b!3588342 m!4080413))

(declare-fun m!4082031 () Bool)

(assert (=> b!3588342 m!4082031))

(declare-fun m!4082033 () Bool)

(assert (=> b!3588346 m!4082033))

(assert (=> d!1057437 d!1057933))

(declare-fun b!3588351 () Bool)

(declare-fun res!1448354 () Bool)

(declare-fun e!2220228 () Bool)

(assert (=> b!3588351 (=> (not res!1448354) (not e!2220228))))

(declare-fun lt!1230730 () List!37825)

(assert (=> b!3588351 (= res!1448354 (= (size!28723 lt!1230730) (+ (size!28723 lt!1230409) (size!28723 lt!1230408))))))

(declare-fun b!3588350 () Bool)

(declare-fun e!2220229 () List!37825)

(assert (=> b!3588350 (= e!2220229 (Cons!37701 (h!43121 lt!1230409) (++!9379 (t!290638 lt!1230409) lt!1230408)))))

(declare-fun b!3588349 () Bool)

(assert (=> b!3588349 (= e!2220229 lt!1230408)))

(declare-fun d!1058057 () Bool)

(assert (=> d!1058057 e!2220228))

(declare-fun res!1448355 () Bool)

(assert (=> d!1058057 (=> (not res!1448355) (not e!2220228))))

(assert (=> d!1058057 (= res!1448355 (= (content!5358 lt!1230730) (set.union (content!5358 lt!1230409) (content!5358 lt!1230408))))))

(assert (=> d!1058057 (= lt!1230730 e!2220229)))

(declare-fun c!621611 () Bool)

(assert (=> d!1058057 (= c!621611 (is-Nil!37701 lt!1230409))))

(assert (=> d!1058057 (= (++!9379 lt!1230409 lt!1230408) lt!1230730)))

(declare-fun b!3588352 () Bool)

(assert (=> b!3588352 (= e!2220228 (or (not (= lt!1230408 Nil!37701)) (= lt!1230730 lt!1230409)))))

(assert (= (and d!1058057 c!621611) b!3588349))

(assert (= (and d!1058057 (not c!621611)) b!3588350))

(assert (= (and d!1058057 res!1448355) b!3588351))

(assert (= (and b!3588351 res!1448354) b!3588352))

(declare-fun m!4082041 () Bool)

(assert (=> b!3588351 m!4082041))

(assert (=> b!3588351 m!4081695))

(declare-fun m!4082043 () Bool)

(assert (=> b!3588351 m!4082043))

(declare-fun m!4082045 () Bool)

(assert (=> b!3588350 m!4082045))

(declare-fun m!4082047 () Bool)

(assert (=> d!1058057 m!4082047))

(declare-fun m!4082049 () Bool)

(assert (=> d!1058057 m!4082049))

(declare-fun m!4082051 () Bool)

(assert (=> d!1058057 m!4082051))

(assert (=> d!1057437 d!1058057))

(assert (=> d!1057437 d!1057803))

(declare-fun d!1058061 () Bool)

(declare-fun list!13867 (Conc!11468) List!37830)

(assert (=> d!1058061 (= (list!13862 (_1!21931 (lex!2443 thiss!23823 rules!3307 (seqFromList!4116 lt!1230282)))) (list!13867 (c!621376 (_1!21931 (lex!2443 thiss!23823 rules!3307 (seqFromList!4116 lt!1230282))))))))

(declare-fun bs!570146 () Bool)

(assert (= bs!570146 d!1058061))

(declare-fun m!4082059 () Bool)

(assert (=> bs!570146 m!4082059))

(assert (=> d!1057437 d!1058061))

(declare-fun d!1058063 () Bool)

(assert (=> d!1058063 (isPrefix!2926 lt!1230409 (++!9379 lt!1230409 lt!1230408))))

(declare-fun lt!1230733 () Unit!53698)

(assert (=> d!1058063 (= lt!1230733 (choose!20865 lt!1230409 lt!1230408))))

(assert (=> d!1058063 (= (lemmaConcatTwoListThenFirstIsPrefix!1847 lt!1230409 lt!1230408) lt!1230733)))

(declare-fun bs!570147 () Bool)

(assert (= bs!570147 d!1058063))

(assert (=> bs!570147 m!4080409))

(assert (=> bs!570147 m!4080409))

(assert (=> bs!570147 m!4080411))

(declare-fun m!4082067 () Bool)

(assert (=> bs!570147 m!4082067))

(assert (=> d!1057437 d!1058063))

(assert (=> d!1057437 d!1057525))

(declare-fun d!1058065 () Bool)

(assert (=> d!1058065 (= (head!7485 (list!13862 (_1!21931 (lex!2443 thiss!23823 rules!3307 (seqFromList!4116 lt!1230282))))) (h!43126 (list!13862 (_1!21931 (lex!2443 thiss!23823 rules!3307 (seqFromList!4116 lt!1230282))))))))

(assert (=> d!1057437 d!1058065))

(declare-fun d!1058071 () Bool)

(assert (=> d!1058071 (isPrefix!2926 lt!1230403 (++!9379 lt!1230282 suffix!1395))))

(declare-fun lt!1230738 () Unit!53698)

(declare-fun choose!20877 (List!37825 List!37825 List!37825) Unit!53698)

(assert (=> d!1058071 (= lt!1230738 (choose!20877 lt!1230403 lt!1230282 suffix!1395))))

(assert (=> d!1058071 (isPrefix!2926 lt!1230403 lt!1230282)))

(assert (=> d!1058071 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!411 lt!1230403 lt!1230282 suffix!1395) lt!1230738)))

(declare-fun bs!570149 () Bool)

(assert (= bs!570149 d!1058071))

(assert (=> bs!570149 m!4080087))

(assert (=> bs!570149 m!4080087))

(assert (=> bs!570149 m!4080423))

(declare-fun m!4082091 () Bool)

(assert (=> bs!570149 m!4082091))

(declare-fun m!4082093 () Bool)

(assert (=> bs!570149 m!4082093))

(assert (=> d!1057437 d!1058071))

(assert (=> d!1057437 d!1057515))

(declare-fun d!1058077 () Bool)

(assert (=> d!1058077 (= (isDefined!5988 (maxPrefix!2686 thiss!23823 rules!3307 (++!9379 lt!1230282 suffix!1395))) (not (isEmpty!22215 (maxPrefix!2686 thiss!23823 rules!3307 (++!9379 lt!1230282 suffix!1395)))))))

(declare-fun bs!570150 () Bool)

(assert (= bs!570150 d!1058077))

(assert (=> bs!570150 m!4080401))

(assert (=> bs!570150 m!4080403))

(assert (=> d!1057437 d!1058077))

(assert (=> b!3587168 d!1057737))

(assert (=> b!3587168 d!1057885))

(declare-fun bs!570151 () Bool)

(declare-fun d!1058079 () Bool)

(assert (= bs!570151 (and d!1058079 d!1057667)))

(declare-fun lambda!123816 () Int)

(assert (=> bs!570151 (= lambda!123816 lambda!123798)))

(assert (=> d!1058079 true))

(declare-fun lt!1230743 () Bool)

(assert (=> d!1058079 (= lt!1230743 (rulesValidInductive!1940 thiss!23823 rules!3307))))

(assert (=> d!1058079 (= lt!1230743 (forall!8144 rules!3307 lambda!123816))))

(assert (=> d!1058079 (= (rulesValid!2117 thiss!23823 rules!3307) lt!1230743)))

(declare-fun bs!570152 () Bool)

(assert (= bs!570152 d!1058079))

(assert (=> bs!570152 m!4080501))

(declare-fun m!4082129 () Bool)

(assert (=> bs!570152 m!4082129))

(assert (=> d!1057527 d!1058079))

(declare-fun d!1058099 () Bool)

(assert (=> d!1058099 (= (isEmpty!22215 lt!1230279) (not (is-Some!7755 lt!1230279)))))

(assert (=> d!1057513 d!1058099))

(declare-fun d!1058101 () Bool)

(assert (=> d!1058101 (= (isEmpty!22214 lt!1230278) (not (is-Some!7756 lt!1230278)))))

(assert (=> d!1057429 d!1058101))

(declare-fun bs!570153 () Bool)

(declare-fun d!1058105 () Bool)

(assert (= bs!570153 (and d!1058105 d!1057549)))

(declare-fun lambda!123817 () Int)

(assert (=> bs!570153 (= (and (= (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) (= (toValue!7843 (transformation!5563 (rule!8277 token!511))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (= lambda!123817 lambda!123792))))

(declare-fun bs!570154 () Bool)

(assert (= bs!570154 (and d!1058105 d!1057721)))

(assert (=> bs!570154 (= (and (= (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toChars!7702 (transformation!5563 (h!43122 rules!3307)))) (= (toValue!7843 (transformation!5563 (rule!8277 token!511))) (toValue!7843 (transformation!5563 (h!43122 rules!3307))))) (= lambda!123817 lambda!123801))))

(declare-fun bs!570155 () Bool)

(assert (= bs!570155 (and d!1058105 d!1057845)))

(assert (=> bs!570155 (= (and (= (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toChars!7702 (transformation!5563 rule!403))) (= (toValue!7843 (transformation!5563 (rule!8277 token!511))) (toValue!7843 (transformation!5563 rule!403)))) (= lambda!123817 lambda!123806))))

(declare-fun bs!570156 () Bool)

(assert (= bs!570156 (and d!1058105 d!1057913)))

(assert (=> bs!570156 (= (and (= (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toChars!7702 (transformation!5563 anOtherTypeRule!33))) (= (toValue!7843 (transformation!5563 (rule!8277 token!511))) (toValue!7843 (transformation!5563 anOtherTypeRule!33)))) (= lambda!123817 lambda!123809))))

(assert (=> d!1058105 true))

(assert (=> d!1058105 (< (dynLambda!16208 order!20455 (toChars!7702 (transformation!5563 (rule!8277 token!511)))) (dynLambda!16207 order!20453 lambda!123817))))

(assert (=> d!1058105 true))

(assert (=> d!1058105 (< (dynLambda!16206 order!20451 (toValue!7843 (transformation!5563 (rule!8277 token!511)))) (dynLambda!16207 order!20453 lambda!123817))))

(assert (=> d!1058105 (= (semiInverseModEq!2358 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toValue!7843 (transformation!5563 (rule!8277 token!511)))) (Forall!1364 lambda!123817))))

(declare-fun bs!570157 () Bool)

(assert (= bs!570157 d!1058105))

(declare-fun m!4082135 () Bool)

(assert (=> bs!570157 m!4082135))

(assert (=> d!1057539 d!1058105))

(declare-fun d!1058107 () Bool)

(declare-fun lt!1230749 () Bool)

(assert (=> d!1058107 (= lt!1230749 (set.member lt!1230271 (content!5358 (t!290638 (usedCharacters!777 (regex!5563 anOtherTypeRule!33))))))))

(declare-fun e!2220275 () Bool)

(assert (=> d!1058107 (= lt!1230749 e!2220275)))

(declare-fun res!1448391 () Bool)

(assert (=> d!1058107 (=> (not res!1448391) (not e!2220275))))

(assert (=> d!1058107 (= res!1448391 (is-Cons!37701 (t!290638 (usedCharacters!777 (regex!5563 anOtherTypeRule!33)))))))

(assert (=> d!1058107 (= (contains!7187 (t!290638 (usedCharacters!777 (regex!5563 anOtherTypeRule!33))) lt!1230271) lt!1230749)))

(declare-fun b!3588433 () Bool)

(declare-fun e!2220274 () Bool)

(assert (=> b!3588433 (= e!2220275 e!2220274)))

(declare-fun res!1448390 () Bool)

(assert (=> b!3588433 (=> res!1448390 e!2220274)))

(assert (=> b!3588433 (= res!1448390 (= (h!43121 (t!290638 (usedCharacters!777 (regex!5563 anOtherTypeRule!33)))) lt!1230271))))

(declare-fun b!3588434 () Bool)

(assert (=> b!3588434 (= e!2220274 (contains!7187 (t!290638 (t!290638 (usedCharacters!777 (regex!5563 anOtherTypeRule!33)))) lt!1230271))))

(assert (= (and d!1058107 res!1448391) b!3588433))

(assert (= (and b!3588433 (not res!1448390)) b!3588434))

(assert (=> d!1058107 m!4081223))

(declare-fun m!4082137 () Bool)

(assert (=> d!1058107 m!4082137))

(declare-fun m!4082139 () Bool)

(assert (=> b!3588434 m!4082139))

(assert (=> b!3587306 d!1058107))

(declare-fun tp!1098258 () Bool)

(declare-fun e!2220283 () Bool)

(declare-fun b!3588447 () Bool)

(declare-fun tp!1098259 () Bool)

(assert (=> b!3588447 (= e!2220283 (and (inv!51035 (left!29462 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280))))) tp!1098258 (inv!51035 (right!29792 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280))))) tp!1098259))))

(declare-fun b!3588449 () Bool)

(declare-fun e!2220282 () Bool)

(declare-fun tp!1098257 () Bool)

(assert (=> b!3588449 (= e!2220282 tp!1098257)))

(declare-fun b!3588448 () Bool)

(declare-fun inv!51043 (IArray!22937) Bool)

(assert (=> b!3588448 (= e!2220283 (and (inv!51043 (xs!14668 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280))))) e!2220282))))

(assert (=> b!3587389 (= tp!1098150 (and (inv!51035 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280)))) e!2220283))))

(assert (= (and b!3587389 (is-Node!11466 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280))))) b!3588447))

(assert (= b!3588448 b!3588449))

(assert (= (and b!3587389 (is-Leaf!17859 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280))))) b!3588448))

(declare-fun m!4082167 () Bool)

(assert (=> b!3588447 m!4082167))

(declare-fun m!4082169 () Bool)

(assert (=> b!3588447 m!4082169))

(declare-fun m!4082171 () Bool)

(assert (=> b!3588448 m!4082171))

(assert (=> b!3587389 m!4080797))

(declare-fun b!3588450 () Bool)

(declare-fun e!2220284 () Bool)

(declare-fun tp!1098260 () Bool)

(assert (=> b!3588450 (= e!2220284 (and tp_is_empty!17727 tp!1098260))))

(assert (=> b!3587445 (= tp!1098178 e!2220284)))

(assert (= (and b!3587445 (is-Cons!37701 (t!290638 (t!290638 suffix!1395)))) b!3588450))

(declare-fun e!2220285 () Bool)

(assert (=> b!3587460 (= tp!1098194 e!2220285)))

(declare-fun b!3588451 () Bool)

(assert (=> b!3588451 (= e!2220285 tp_is_empty!17727)))

(declare-fun b!3588453 () Bool)

(declare-fun tp!1098263 () Bool)

(assert (=> b!3588453 (= e!2220285 tp!1098263)))

(declare-fun b!3588454 () Bool)

(declare-fun tp!1098264 () Bool)

(declare-fun tp!1098261 () Bool)

(assert (=> b!3588454 (= e!2220285 (and tp!1098264 tp!1098261))))

(declare-fun b!3588452 () Bool)

(declare-fun tp!1098262 () Bool)

(declare-fun tp!1098265 () Bool)

(assert (=> b!3588452 (= e!2220285 (and tp!1098262 tp!1098265))))

(assert (= (and b!3587460 (is-ElementMatch!10322 (regex!5563 (h!43122 (t!290639 rules!3307))))) b!3588451))

(assert (= (and b!3587460 (is-Concat!16116 (regex!5563 (h!43122 (t!290639 rules!3307))))) b!3588452))

(assert (= (and b!3587460 (is-Star!10322 (regex!5563 (h!43122 (t!290639 rules!3307))))) b!3588453))

(assert (= (and b!3587460 (is-Union!10322 (regex!5563 (h!43122 (t!290639 rules!3307))))) b!3588454))

(declare-fun e!2220287 () Bool)

(assert (=> b!3587436 (= tp!1098169 e!2220287)))

(declare-fun b!3588457 () Bool)

(assert (=> b!3588457 (= e!2220287 tp_is_empty!17727)))

(declare-fun b!3588459 () Bool)

(declare-fun tp!1098268 () Bool)

(assert (=> b!3588459 (= e!2220287 tp!1098268)))

(declare-fun b!3588460 () Bool)

(declare-fun tp!1098269 () Bool)

(declare-fun tp!1098266 () Bool)

(assert (=> b!3588460 (= e!2220287 (and tp!1098269 tp!1098266))))

(declare-fun b!3588458 () Bool)

(declare-fun tp!1098267 () Bool)

(declare-fun tp!1098270 () Bool)

(assert (=> b!3588458 (= e!2220287 (and tp!1098267 tp!1098270))))

(assert (= (and b!3587436 (is-ElementMatch!10322 (regOne!21157 (regex!5563 rule!403)))) b!3588457))

(assert (= (and b!3587436 (is-Concat!16116 (regOne!21157 (regex!5563 rule!403)))) b!3588458))

(assert (= (and b!3587436 (is-Star!10322 (regOne!21157 (regex!5563 rule!403)))) b!3588459))

(assert (= (and b!3587436 (is-Union!10322 (regOne!21157 (regex!5563 rule!403)))) b!3588460))

(declare-fun e!2220288 () Bool)

(assert (=> b!3587436 (= tp!1098166 e!2220288)))

(declare-fun b!3588461 () Bool)

(assert (=> b!3588461 (= e!2220288 tp_is_empty!17727)))

(declare-fun b!3588463 () Bool)

(declare-fun tp!1098273 () Bool)

(assert (=> b!3588463 (= e!2220288 tp!1098273)))

(declare-fun b!3588464 () Bool)

(declare-fun tp!1098274 () Bool)

(declare-fun tp!1098271 () Bool)

(assert (=> b!3588464 (= e!2220288 (and tp!1098274 tp!1098271))))

(declare-fun b!3588462 () Bool)

(declare-fun tp!1098272 () Bool)

(declare-fun tp!1098275 () Bool)

(assert (=> b!3588462 (= e!2220288 (and tp!1098272 tp!1098275))))

(assert (= (and b!3587436 (is-ElementMatch!10322 (regTwo!21157 (regex!5563 rule!403)))) b!3588461))

(assert (= (and b!3587436 (is-Concat!16116 (regTwo!21157 (regex!5563 rule!403)))) b!3588462))

(assert (= (and b!3587436 (is-Star!10322 (regTwo!21157 (regex!5563 rule!403)))) b!3588463))

(assert (= (and b!3587436 (is-Union!10322 (regTwo!21157 (regex!5563 rule!403)))) b!3588464))

(declare-fun b!3588467 () Bool)

(declare-fun b_free!92417 () Bool)

(declare-fun b_next!93121 () Bool)

(assert (=> b!3588467 (= b_free!92417 (not b_next!93121))))

(declare-fun tb!204741 () Bool)

(declare-fun t!290810 () Bool)

(assert (=> (and b!3588467 (= (toValue!7843 (transformation!5563 (h!43122 (t!290639 (t!290639 rules!3307))))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290810) tb!204741))

(declare-fun result!249640 () Bool)

(assert (= result!249640 result!249494))

(assert (=> d!1057549 t!290810))

(declare-fun tb!204743 () Bool)

(declare-fun t!290812 () Bool)

(assert (=> (and b!3588467 (= (toValue!7843 (transformation!5563 (h!43122 (t!290639 (t!290639 rules!3307))))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))) t!290812) tb!204743))

(declare-fun result!249642 () Bool)

(assert (= result!249642 result!249588))

(assert (=> d!1057809 t!290812))

(declare-fun tb!204745 () Bool)

(declare-fun t!290814 () Bool)

(assert (=> (and b!3588467 (= (toValue!7843 (transformation!5563 (h!43122 (t!290639 (t!290639 rules!3307))))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))) t!290814) tb!204745))

(declare-fun result!249644 () Bool)

(assert (= result!249644 result!249598))

(assert (=> d!1057821 t!290814))

(declare-fun b_and!259263 () Bool)

(declare-fun tp!1098278 () Bool)

(assert (=> b!3588467 (= tp!1098278 (and (=> t!290810 result!249640) (=> t!290812 result!249642) (=> t!290814 result!249644) b_and!259263))))

(declare-fun b_free!92419 () Bool)

(declare-fun b_next!93123 () Bool)

(assert (=> b!3588467 (= b_free!92419 (not b_next!93123))))

(declare-fun t!290816 () Bool)

(declare-fun tb!204747 () Bool)

(assert (=> (and b!3588467 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 (t!290639 rules!3307))))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290816) tb!204747))

(declare-fun result!249646 () Bool)

(assert (= result!249646 result!249486))

(assert (=> d!1057549 t!290816))

(declare-fun tb!204749 () Bool)

(declare-fun t!290818 () Bool)

(assert (=> (and b!3588467 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 (t!290639 rules!3307))))) (toChars!7702 (transformation!5563 (rule!8277 lt!1230419)))) t!290818) tb!204749))

(declare-fun result!249648 () Bool)

(assert (= result!249648 result!249558))

(assert (=> d!1057627 t!290818))

(declare-fun tb!204751 () Bool)

(declare-fun t!290820 () Bool)

(assert (=> (and b!3588467 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 (t!290639 rules!3307))))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275))))) t!290820) tb!204751))

(declare-fun result!249650 () Bool)

(assert (= result!249650 result!249468))

(assert (=> d!1057471 t!290820))

(declare-fun tb!204753 () Bool)

(declare-fun t!290822 () Bool)

(assert (=> (and b!3588467 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 (t!290639 rules!3307))))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230451)))))) t!290822) tb!204753))

(declare-fun result!249652 () Bool)

(assert (= result!249652 result!249568))

(assert (=> d!1057689 t!290822))

(declare-fun tb!204755 () Bool)

(declare-fun t!290824 () Bool)

(assert (=> (and b!3588467 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 (t!290639 rules!3307))))) (toChars!7702 (transformation!5563 (rule!8277 token!511)))) t!290824) tb!204755))

(declare-fun result!249654 () Bool)

(assert (= result!249654 result!249458))

(assert (=> d!1057519 t!290824))

(declare-fun tb!204757 () Bool)

(declare-fun t!290826 () Bool)

(assert (=> (and b!3588467 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 (t!290639 rules!3307))))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 (get!12148 lt!1230473)))))) t!290826) tb!204757))

(declare-fun result!249656 () Bool)

(assert (= result!249656 result!249578))

(assert (=> d!1057711 t!290826))

(assert (=> b!3586909 t!290824))

(declare-fun tp!1098276 () Bool)

(declare-fun b_and!259265 () Bool)

(assert (=> b!3588467 (= tp!1098276 (and (=> t!290818 result!249648) (=> t!290822 result!249652) (=> t!290820 result!249650) (=> t!290824 result!249654) (=> t!290826 result!249656) (=> t!290816 result!249646) b_and!259265))))

(declare-fun e!2220290 () Bool)

(assert (=> b!3588467 (= e!2220290 (and tp!1098278 tp!1098276))))

(declare-fun tp!1098277 () Bool)

(declare-fun e!2220292 () Bool)

(declare-fun b!3588466 () Bool)

(assert (=> b!3588466 (= e!2220292 (and tp!1098277 (inv!51028 (tag!6231 (h!43122 (t!290639 (t!290639 rules!3307))))) (inv!51031 (transformation!5563 (h!43122 (t!290639 (t!290639 rules!3307))))) e!2220290))))

(declare-fun b!3588465 () Bool)

(declare-fun e!2220291 () Bool)

(declare-fun tp!1098279 () Bool)

(assert (=> b!3588465 (= e!2220291 (and e!2220292 tp!1098279))))

(assert (=> b!3587459 (= tp!1098196 e!2220291)))

(assert (= b!3588466 b!3588467))

(assert (= b!3588465 b!3588466))

(assert (= (and b!3587459 (is-Cons!37702 (t!290639 (t!290639 rules!3307)))) b!3588465))

(declare-fun m!4082179 () Bool)

(assert (=> b!3588466 m!4082179))

(declare-fun m!4082181 () Bool)

(assert (=> b!3588466 m!4082181))

(declare-fun e!2220296 () Bool)

(assert (=> b!3587432 (= tp!1098164 e!2220296)))

(declare-fun b!3588472 () Bool)

(assert (=> b!3588472 (= e!2220296 tp_is_empty!17727)))

(declare-fun b!3588474 () Bool)

(declare-fun tp!1098282 () Bool)

(assert (=> b!3588474 (= e!2220296 tp!1098282)))

(declare-fun b!3588475 () Bool)

(declare-fun tp!1098283 () Bool)

(declare-fun tp!1098280 () Bool)

(assert (=> b!3588475 (= e!2220296 (and tp!1098283 tp!1098280))))

(declare-fun b!3588473 () Bool)

(declare-fun tp!1098281 () Bool)

(declare-fun tp!1098284 () Bool)

(assert (=> b!3588473 (= e!2220296 (and tp!1098281 tp!1098284))))

(assert (= (and b!3587432 (is-ElementMatch!10322 (regOne!21157 (regex!5563 (h!43122 rules!3307))))) b!3588472))

(assert (= (and b!3587432 (is-Concat!16116 (regOne!21157 (regex!5563 (h!43122 rules!3307))))) b!3588473))

(assert (= (and b!3587432 (is-Star!10322 (regOne!21157 (regex!5563 (h!43122 rules!3307))))) b!3588474))

(assert (= (and b!3587432 (is-Union!10322 (regOne!21157 (regex!5563 (h!43122 rules!3307))))) b!3588475))

(declare-fun e!2220297 () Bool)

(assert (=> b!3587432 (= tp!1098161 e!2220297)))

(declare-fun b!3588476 () Bool)

(assert (=> b!3588476 (= e!2220297 tp_is_empty!17727)))

(declare-fun b!3588478 () Bool)

(declare-fun tp!1098287 () Bool)

(assert (=> b!3588478 (= e!2220297 tp!1098287)))

(declare-fun b!3588479 () Bool)

(declare-fun tp!1098288 () Bool)

(declare-fun tp!1098285 () Bool)

(assert (=> b!3588479 (= e!2220297 (and tp!1098288 tp!1098285))))

(declare-fun b!3588477 () Bool)

(declare-fun tp!1098286 () Bool)

(declare-fun tp!1098289 () Bool)

(assert (=> b!3588477 (= e!2220297 (and tp!1098286 tp!1098289))))

(assert (= (and b!3587432 (is-ElementMatch!10322 (regTwo!21157 (regex!5563 (h!43122 rules!3307))))) b!3588476))

(assert (= (and b!3587432 (is-Concat!16116 (regTwo!21157 (regex!5563 (h!43122 rules!3307))))) b!3588477))

(assert (= (and b!3587432 (is-Star!10322 (regTwo!21157 (regex!5563 (h!43122 rules!3307))))) b!3588478))

(assert (= (and b!3587432 (is-Union!10322 (regTwo!21157 (regex!5563 (h!43122 rules!3307))))) b!3588479))

(declare-fun e!2220298 () Bool)

(assert (=> b!3587430 (= tp!1098162 e!2220298)))

(declare-fun b!3588480 () Bool)

(assert (=> b!3588480 (= e!2220298 tp_is_empty!17727)))

(declare-fun b!3588482 () Bool)

(declare-fun tp!1098292 () Bool)

(assert (=> b!3588482 (= e!2220298 tp!1098292)))

(declare-fun b!3588483 () Bool)

(declare-fun tp!1098293 () Bool)

(declare-fun tp!1098290 () Bool)

(assert (=> b!3588483 (= e!2220298 (and tp!1098293 tp!1098290))))

(declare-fun b!3588481 () Bool)

(declare-fun tp!1098291 () Bool)

(declare-fun tp!1098294 () Bool)

(assert (=> b!3588481 (= e!2220298 (and tp!1098291 tp!1098294))))

(assert (= (and b!3587430 (is-ElementMatch!10322 (regOne!21156 (regex!5563 (h!43122 rules!3307))))) b!3588480))

(assert (= (and b!3587430 (is-Concat!16116 (regOne!21156 (regex!5563 (h!43122 rules!3307))))) b!3588481))

(assert (= (and b!3587430 (is-Star!10322 (regOne!21156 (regex!5563 (h!43122 rules!3307))))) b!3588482))

(assert (= (and b!3587430 (is-Union!10322 (regOne!21156 (regex!5563 (h!43122 rules!3307))))) b!3588483))

(declare-fun e!2220299 () Bool)

(assert (=> b!3587430 (= tp!1098165 e!2220299)))

(declare-fun b!3588484 () Bool)

(assert (=> b!3588484 (= e!2220299 tp_is_empty!17727)))

(declare-fun b!3588486 () Bool)

(declare-fun tp!1098297 () Bool)

(assert (=> b!3588486 (= e!2220299 tp!1098297)))

(declare-fun b!3588487 () Bool)

(declare-fun tp!1098298 () Bool)

(declare-fun tp!1098295 () Bool)

(assert (=> b!3588487 (= e!2220299 (and tp!1098298 tp!1098295))))

(declare-fun b!3588485 () Bool)

(declare-fun tp!1098296 () Bool)

(declare-fun tp!1098299 () Bool)

(assert (=> b!3588485 (= e!2220299 (and tp!1098296 tp!1098299))))

(assert (= (and b!3587430 (is-ElementMatch!10322 (regTwo!21156 (regex!5563 (h!43122 rules!3307))))) b!3588484))

(assert (= (and b!3587430 (is-Concat!16116 (regTwo!21156 (regex!5563 (h!43122 rules!3307))))) b!3588485))

(assert (= (and b!3587430 (is-Star!10322 (regTwo!21156 (regex!5563 (h!43122 rules!3307))))) b!3588486))

(assert (= (and b!3587430 (is-Union!10322 (regTwo!21156 (regex!5563 (h!43122 rules!3307))))) b!3588487))

(declare-fun tp!1098302 () Bool)

(declare-fun b!3588488 () Bool)

(declare-fun tp!1098301 () Bool)

(declare-fun e!2220301 () Bool)

(assert (=> b!3588488 (= e!2220301 (and (inv!51035 (left!29462 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275)))))) tp!1098301 (inv!51035 (right!29792 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275)))))) tp!1098302))))

(declare-fun b!3588490 () Bool)

(declare-fun e!2220300 () Bool)

(declare-fun tp!1098300 () Bool)

(assert (=> b!3588490 (= e!2220300 tp!1098300)))

(declare-fun b!3588489 () Bool)

(assert (=> b!3588489 (= e!2220301 (and (inv!51043 (xs!14668 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275)))))) e!2220300))))

(assert (=> b!3587107 (= tp!1098146 (and (inv!51035 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275))))) e!2220301))))

(assert (= (and b!3587107 (is-Node!11466 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275)))))) b!3588488))

(assert (= b!3588489 b!3588490))

(assert (= (and b!3587107 (is-Leaf!17859 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (value!179007 (_1!21929 lt!1230275)))))) b!3588489))

(declare-fun m!4082183 () Bool)

(assert (=> b!3588488 m!4082183))

(declare-fun m!4082185 () Bool)

(assert (=> b!3588488 m!4082185))

(declare-fun m!4082187 () Bool)

(assert (=> b!3588489 m!4082187))

(assert (=> b!3587107 m!4080445))

(declare-fun e!2220302 () Bool)

(assert (=> b!3587435 (= tp!1098168 e!2220302)))

(declare-fun b!3588491 () Bool)

(assert (=> b!3588491 (= e!2220302 tp_is_empty!17727)))

(declare-fun b!3588493 () Bool)

(declare-fun tp!1098305 () Bool)

(assert (=> b!3588493 (= e!2220302 tp!1098305)))

(declare-fun b!3588494 () Bool)

(declare-fun tp!1098306 () Bool)

(declare-fun tp!1098303 () Bool)

(assert (=> b!3588494 (= e!2220302 (and tp!1098306 tp!1098303))))

(declare-fun b!3588492 () Bool)

(declare-fun tp!1098304 () Bool)

(declare-fun tp!1098307 () Bool)

(assert (=> b!3588492 (= e!2220302 (and tp!1098304 tp!1098307))))

(assert (= (and b!3587435 (is-ElementMatch!10322 (reg!10651 (regex!5563 rule!403)))) b!3588491))

(assert (= (and b!3587435 (is-Concat!16116 (reg!10651 (regex!5563 rule!403)))) b!3588492))

(assert (= (and b!3587435 (is-Star!10322 (reg!10651 (regex!5563 rule!403)))) b!3588493))

(assert (= (and b!3587435 (is-Union!10322 (reg!10651 (regex!5563 rule!403)))) b!3588494))

(declare-fun e!2220304 () Bool)

(assert (=> b!3587440 (= tp!1098174 e!2220304)))

(declare-fun b!3588495 () Bool)

(assert (=> b!3588495 (= e!2220304 tp_is_empty!17727)))

(declare-fun b!3588497 () Bool)

(declare-fun tp!1098310 () Bool)

(assert (=> b!3588497 (= e!2220304 tp!1098310)))

(declare-fun b!3588498 () Bool)

(declare-fun tp!1098311 () Bool)

(declare-fun tp!1098308 () Bool)

(assert (=> b!3588498 (= e!2220304 (and tp!1098311 tp!1098308))))

(declare-fun b!3588496 () Bool)

(declare-fun tp!1098309 () Bool)

(declare-fun tp!1098312 () Bool)

(assert (=> b!3588496 (= e!2220304 (and tp!1098309 tp!1098312))))

(assert (= (and b!3587440 (is-ElementMatch!10322 (regOne!21157 (regex!5563 (rule!8277 token!511))))) b!3588495))

(assert (= (and b!3587440 (is-Concat!16116 (regOne!21157 (regex!5563 (rule!8277 token!511))))) b!3588496))

(assert (= (and b!3587440 (is-Star!10322 (regOne!21157 (regex!5563 (rule!8277 token!511))))) b!3588497))

(assert (= (and b!3587440 (is-Union!10322 (regOne!21157 (regex!5563 (rule!8277 token!511))))) b!3588498))

(declare-fun e!2220305 () Bool)

(assert (=> b!3587440 (= tp!1098171 e!2220305)))

(declare-fun b!3588499 () Bool)

(assert (=> b!3588499 (= e!2220305 tp_is_empty!17727)))

(declare-fun b!3588501 () Bool)

(declare-fun tp!1098315 () Bool)

(assert (=> b!3588501 (= e!2220305 tp!1098315)))

(declare-fun b!3588502 () Bool)

(declare-fun tp!1098316 () Bool)

(declare-fun tp!1098313 () Bool)

(assert (=> b!3588502 (= e!2220305 (and tp!1098316 tp!1098313))))

(declare-fun b!3588500 () Bool)

(declare-fun tp!1098314 () Bool)

(declare-fun tp!1098317 () Bool)

(assert (=> b!3588500 (= e!2220305 (and tp!1098314 tp!1098317))))

(assert (= (and b!3587440 (is-ElementMatch!10322 (regTwo!21157 (regex!5563 (rule!8277 token!511))))) b!3588499))

(assert (= (and b!3587440 (is-Concat!16116 (regTwo!21157 (regex!5563 (rule!8277 token!511))))) b!3588500))

(assert (= (and b!3587440 (is-Star!10322 (regTwo!21157 (regex!5563 (rule!8277 token!511))))) b!3588501))

(assert (= (and b!3587440 (is-Union!10322 (regTwo!21157 (regex!5563 (rule!8277 token!511))))) b!3588502))

(declare-fun e!2220306 () Bool)

(assert (=> b!3587431 (= tp!1098163 e!2220306)))

(declare-fun b!3588503 () Bool)

(assert (=> b!3588503 (= e!2220306 tp_is_empty!17727)))

(declare-fun b!3588505 () Bool)

(declare-fun tp!1098320 () Bool)

(assert (=> b!3588505 (= e!2220306 tp!1098320)))

(declare-fun b!3588506 () Bool)

(declare-fun tp!1098321 () Bool)

(declare-fun tp!1098318 () Bool)

(assert (=> b!3588506 (= e!2220306 (and tp!1098321 tp!1098318))))

(declare-fun b!3588504 () Bool)

(declare-fun tp!1098319 () Bool)

(declare-fun tp!1098322 () Bool)

(assert (=> b!3588504 (= e!2220306 (and tp!1098319 tp!1098322))))

(assert (= (and b!3587431 (is-ElementMatch!10322 (reg!10651 (regex!5563 (h!43122 rules!3307))))) b!3588503))

(assert (= (and b!3587431 (is-Concat!16116 (reg!10651 (regex!5563 (h!43122 rules!3307))))) b!3588504))

(assert (= (and b!3587431 (is-Star!10322 (reg!10651 (regex!5563 (h!43122 rules!3307))))) b!3588505))

(assert (= (and b!3587431 (is-Union!10322 (reg!10651 (regex!5563 (h!43122 rules!3307))))) b!3588506))

(declare-fun e!2220307 () Bool)

(assert (=> b!3587438 (= tp!1098172 e!2220307)))

(declare-fun b!3588507 () Bool)

(assert (=> b!3588507 (= e!2220307 tp_is_empty!17727)))

(declare-fun b!3588509 () Bool)

(declare-fun tp!1098325 () Bool)

(assert (=> b!3588509 (= e!2220307 tp!1098325)))

(declare-fun b!3588510 () Bool)

(declare-fun tp!1098326 () Bool)

(declare-fun tp!1098323 () Bool)

(assert (=> b!3588510 (= e!2220307 (and tp!1098326 tp!1098323))))

(declare-fun b!3588508 () Bool)

(declare-fun tp!1098324 () Bool)

(declare-fun tp!1098327 () Bool)

(assert (=> b!3588508 (= e!2220307 (and tp!1098324 tp!1098327))))

(assert (= (and b!3587438 (is-ElementMatch!10322 (regOne!21156 (regex!5563 (rule!8277 token!511))))) b!3588507))

(assert (= (and b!3587438 (is-Concat!16116 (regOne!21156 (regex!5563 (rule!8277 token!511))))) b!3588508))

(assert (= (and b!3587438 (is-Star!10322 (regOne!21156 (regex!5563 (rule!8277 token!511))))) b!3588509))

(assert (= (and b!3587438 (is-Union!10322 (regOne!21156 (regex!5563 (rule!8277 token!511))))) b!3588510))

(declare-fun e!2220308 () Bool)

(assert (=> b!3587438 (= tp!1098175 e!2220308)))

(declare-fun b!3588511 () Bool)

(assert (=> b!3588511 (= e!2220308 tp_is_empty!17727)))

(declare-fun b!3588513 () Bool)

(declare-fun tp!1098330 () Bool)

(assert (=> b!3588513 (= e!2220308 tp!1098330)))

(declare-fun b!3588514 () Bool)

(declare-fun tp!1098331 () Bool)

(declare-fun tp!1098328 () Bool)

(assert (=> b!3588514 (= e!2220308 (and tp!1098331 tp!1098328))))

(declare-fun b!3588512 () Bool)

(declare-fun tp!1098329 () Bool)

(declare-fun tp!1098332 () Bool)

(assert (=> b!3588512 (= e!2220308 (and tp!1098329 tp!1098332))))

(assert (= (and b!3587438 (is-ElementMatch!10322 (regTwo!21156 (regex!5563 (rule!8277 token!511))))) b!3588511))

(assert (= (and b!3587438 (is-Concat!16116 (regTwo!21156 (regex!5563 (rule!8277 token!511))))) b!3588512))

(assert (= (and b!3587438 (is-Star!10322 (regTwo!21156 (regex!5563 (rule!8277 token!511))))) b!3588513))

(assert (= (and b!3587438 (is-Union!10322 (regTwo!21156 (regex!5563 (rule!8277 token!511))))) b!3588514))

(declare-fun e!2220309 () Bool)

(assert (=> b!3587434 (= tp!1098167 e!2220309)))

(declare-fun b!3588515 () Bool)

(assert (=> b!3588515 (= e!2220309 tp_is_empty!17727)))

(declare-fun b!3588517 () Bool)

(declare-fun tp!1098335 () Bool)

(assert (=> b!3588517 (= e!2220309 tp!1098335)))

(declare-fun b!3588518 () Bool)

(declare-fun tp!1098336 () Bool)

(declare-fun tp!1098333 () Bool)

(assert (=> b!3588518 (= e!2220309 (and tp!1098336 tp!1098333))))

(declare-fun b!3588516 () Bool)

(declare-fun tp!1098334 () Bool)

(declare-fun tp!1098337 () Bool)

(assert (=> b!3588516 (= e!2220309 (and tp!1098334 tp!1098337))))

(assert (= (and b!3587434 (is-ElementMatch!10322 (regOne!21156 (regex!5563 rule!403)))) b!3588515))

(assert (= (and b!3587434 (is-Concat!16116 (regOne!21156 (regex!5563 rule!403)))) b!3588516))

(assert (= (and b!3587434 (is-Star!10322 (regOne!21156 (regex!5563 rule!403)))) b!3588517))

(assert (= (and b!3587434 (is-Union!10322 (regOne!21156 (regex!5563 rule!403)))) b!3588518))

(declare-fun e!2220310 () Bool)

(assert (=> b!3587434 (= tp!1098170 e!2220310)))

(declare-fun b!3588519 () Bool)

(assert (=> b!3588519 (= e!2220310 tp_is_empty!17727)))

(declare-fun b!3588521 () Bool)

(declare-fun tp!1098340 () Bool)

(assert (=> b!3588521 (= e!2220310 tp!1098340)))

(declare-fun b!3588522 () Bool)

(declare-fun tp!1098341 () Bool)

(declare-fun tp!1098338 () Bool)

(assert (=> b!3588522 (= e!2220310 (and tp!1098341 tp!1098338))))

(declare-fun b!3588520 () Bool)

(declare-fun tp!1098339 () Bool)

(declare-fun tp!1098342 () Bool)

(assert (=> b!3588520 (= e!2220310 (and tp!1098339 tp!1098342))))

(assert (= (and b!3587434 (is-ElementMatch!10322 (regTwo!21156 (regex!5563 rule!403)))) b!3588519))

(assert (= (and b!3587434 (is-Concat!16116 (regTwo!21156 (regex!5563 rule!403)))) b!3588520))

(assert (= (and b!3587434 (is-Star!10322 (regTwo!21156 (regex!5563 rule!403)))) b!3588521))

(assert (= (and b!3587434 (is-Union!10322 (regTwo!21156 (regex!5563 rule!403)))) b!3588522))

(declare-fun e!2220311 () Bool)

(assert (=> b!3587439 (= tp!1098173 e!2220311)))

(declare-fun b!3588523 () Bool)

(assert (=> b!3588523 (= e!2220311 tp_is_empty!17727)))

(declare-fun b!3588525 () Bool)

(declare-fun tp!1098345 () Bool)

(assert (=> b!3588525 (= e!2220311 tp!1098345)))

(declare-fun b!3588526 () Bool)

(declare-fun tp!1098346 () Bool)

(declare-fun tp!1098343 () Bool)

(assert (=> b!3588526 (= e!2220311 (and tp!1098346 tp!1098343))))

(declare-fun b!3588524 () Bool)

(declare-fun tp!1098344 () Bool)

(declare-fun tp!1098347 () Bool)

(assert (=> b!3588524 (= e!2220311 (and tp!1098344 tp!1098347))))

(assert (= (and b!3587439 (is-ElementMatch!10322 (reg!10651 (regex!5563 (rule!8277 token!511))))) b!3588523))

(assert (= (and b!3587439 (is-Concat!16116 (reg!10651 (regex!5563 (rule!8277 token!511))))) b!3588524))

(assert (= (and b!3587439 (is-Star!10322 (reg!10651 (regex!5563 (rule!8277 token!511))))) b!3588525))

(assert (= (and b!3587439 (is-Union!10322 (reg!10651 (regex!5563 (rule!8277 token!511))))) b!3588526))

(declare-fun b!3588527 () Bool)

(declare-fun e!2220312 () Bool)

(declare-fun tp!1098348 () Bool)

(assert (=> b!3588527 (= e!2220312 (and tp_is_empty!17727 tp!1098348))))

(assert (=> b!3587446 (= tp!1098179 e!2220312)))

(assert (= (and b!3587446 (is-Cons!37701 (t!290638 (originalCharacters!6277 token!511)))) b!3588527))

(declare-fun b!3588528 () Bool)

(declare-fun e!2220314 () Bool)

(declare-fun tp!1098350 () Bool)

(declare-fun tp!1098351 () Bool)

(assert (=> b!3588528 (= e!2220314 (and (inv!51035 (left!29462 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511))))) tp!1098350 (inv!51035 (right!29792 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511))))) tp!1098351))))

(declare-fun b!3588530 () Bool)

(declare-fun e!2220313 () Bool)

(declare-fun tp!1098349 () Bool)

(assert (=> b!3588530 (= e!2220313 tp!1098349)))

(declare-fun b!3588529 () Bool)

(assert (=> b!3588529 (= e!2220314 (and (inv!51043 (xs!14668 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511))))) e!2220313))))

(assert (=> b!3586915 (= tp!1098145 (and (inv!51035 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511)))) e!2220314))))

(assert (= (and b!3586915 (is-Node!11466 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511))))) b!3588528))

(assert (= b!3588529 b!3588530))

(assert (= (and b!3586915 (is-Leaf!17859 (c!621270 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 token!511))) (value!179007 token!511))))) b!3588529))

(declare-fun m!4082195 () Bool)

(assert (=> b!3588528 m!4082195))

(declare-fun m!4082197 () Bool)

(assert (=> b!3588528 m!4082197))

(declare-fun m!4082199 () Bool)

(assert (=> b!3588529 m!4082199))

(assert (=> b!3586915 m!4080237))

(declare-fun e!2220315 () Bool)

(assert (=> b!3587450 (= tp!1098183 e!2220315)))

(declare-fun b!3588531 () Bool)

(assert (=> b!3588531 (= e!2220315 tp_is_empty!17727)))

(declare-fun b!3588533 () Bool)

(declare-fun tp!1098354 () Bool)

(assert (=> b!3588533 (= e!2220315 tp!1098354)))

(declare-fun b!3588534 () Bool)

(declare-fun tp!1098355 () Bool)

(declare-fun tp!1098352 () Bool)

(assert (=> b!3588534 (= e!2220315 (and tp!1098355 tp!1098352))))

(declare-fun b!3588532 () Bool)

(declare-fun tp!1098353 () Bool)

(declare-fun tp!1098356 () Bool)

(assert (=> b!3588532 (= e!2220315 (and tp!1098353 tp!1098356))))

(assert (= (and b!3587450 (is-ElementMatch!10322 (regOne!21157 (regex!5563 anOtherTypeRule!33)))) b!3588531))

(assert (= (and b!3587450 (is-Concat!16116 (regOne!21157 (regex!5563 anOtherTypeRule!33)))) b!3588532))

(assert (= (and b!3587450 (is-Star!10322 (regOne!21157 (regex!5563 anOtherTypeRule!33)))) b!3588533))

(assert (= (and b!3587450 (is-Union!10322 (regOne!21157 (regex!5563 anOtherTypeRule!33)))) b!3588534))

(declare-fun e!2220316 () Bool)

(assert (=> b!3587450 (= tp!1098180 e!2220316)))

(declare-fun b!3588535 () Bool)

(assert (=> b!3588535 (= e!2220316 tp_is_empty!17727)))

(declare-fun b!3588537 () Bool)

(declare-fun tp!1098359 () Bool)

(assert (=> b!3588537 (= e!2220316 tp!1098359)))

(declare-fun b!3588538 () Bool)

(declare-fun tp!1098360 () Bool)

(declare-fun tp!1098357 () Bool)

(assert (=> b!3588538 (= e!2220316 (and tp!1098360 tp!1098357))))

(declare-fun b!3588536 () Bool)

(declare-fun tp!1098358 () Bool)

(declare-fun tp!1098361 () Bool)

(assert (=> b!3588536 (= e!2220316 (and tp!1098358 tp!1098361))))

(assert (= (and b!3587450 (is-ElementMatch!10322 (regTwo!21157 (regex!5563 anOtherTypeRule!33)))) b!3588535))

(assert (= (and b!3587450 (is-Concat!16116 (regTwo!21157 (regex!5563 anOtherTypeRule!33)))) b!3588536))

(assert (= (and b!3587450 (is-Star!10322 (regTwo!21157 (regex!5563 anOtherTypeRule!33)))) b!3588537))

(assert (= (and b!3587450 (is-Union!10322 (regTwo!21157 (regex!5563 anOtherTypeRule!33)))) b!3588538))

(declare-fun e!2220317 () Bool)

(assert (=> b!3587448 (= tp!1098181 e!2220317)))

(declare-fun b!3588539 () Bool)

(assert (=> b!3588539 (= e!2220317 tp_is_empty!17727)))

(declare-fun b!3588541 () Bool)

(declare-fun tp!1098364 () Bool)

(assert (=> b!3588541 (= e!2220317 tp!1098364)))

(declare-fun b!3588542 () Bool)

(declare-fun tp!1098365 () Bool)

(declare-fun tp!1098362 () Bool)

(assert (=> b!3588542 (= e!2220317 (and tp!1098365 tp!1098362))))

(declare-fun b!3588540 () Bool)

(declare-fun tp!1098363 () Bool)

(declare-fun tp!1098366 () Bool)

(assert (=> b!3588540 (= e!2220317 (and tp!1098363 tp!1098366))))

(assert (= (and b!3587448 (is-ElementMatch!10322 (regOne!21156 (regex!5563 anOtherTypeRule!33)))) b!3588539))

(assert (= (and b!3587448 (is-Concat!16116 (regOne!21156 (regex!5563 anOtherTypeRule!33)))) b!3588540))

(assert (= (and b!3587448 (is-Star!10322 (regOne!21156 (regex!5563 anOtherTypeRule!33)))) b!3588541))

(assert (= (and b!3587448 (is-Union!10322 (regOne!21156 (regex!5563 anOtherTypeRule!33)))) b!3588542))

(declare-fun e!2220318 () Bool)

(assert (=> b!3587448 (= tp!1098184 e!2220318)))

(declare-fun b!3588543 () Bool)

(assert (=> b!3588543 (= e!2220318 tp_is_empty!17727)))

(declare-fun b!3588545 () Bool)

(declare-fun tp!1098369 () Bool)

(assert (=> b!3588545 (= e!2220318 tp!1098369)))

(declare-fun b!3588546 () Bool)

(declare-fun tp!1098370 () Bool)

(declare-fun tp!1098367 () Bool)

(assert (=> b!3588546 (= e!2220318 (and tp!1098370 tp!1098367))))

(declare-fun b!3588544 () Bool)

(declare-fun tp!1098368 () Bool)

(declare-fun tp!1098371 () Bool)

(assert (=> b!3588544 (= e!2220318 (and tp!1098368 tp!1098371))))

(assert (= (and b!3587448 (is-ElementMatch!10322 (regTwo!21156 (regex!5563 anOtherTypeRule!33)))) b!3588543))

(assert (= (and b!3587448 (is-Concat!16116 (regTwo!21156 (regex!5563 anOtherTypeRule!33)))) b!3588544))

(assert (= (and b!3587448 (is-Star!10322 (regTwo!21156 (regex!5563 anOtherTypeRule!33)))) b!3588545))

(assert (= (and b!3587448 (is-Union!10322 (regTwo!21156 (regex!5563 anOtherTypeRule!33)))) b!3588546))

(declare-fun e!2220319 () Bool)

(assert (=> b!3587449 (= tp!1098182 e!2220319)))

(declare-fun b!3588547 () Bool)

(assert (=> b!3588547 (= e!2220319 tp_is_empty!17727)))

(declare-fun b!3588549 () Bool)

(declare-fun tp!1098374 () Bool)

(assert (=> b!3588549 (= e!2220319 tp!1098374)))

(declare-fun b!3588550 () Bool)

(declare-fun tp!1098375 () Bool)

(declare-fun tp!1098372 () Bool)

(assert (=> b!3588550 (= e!2220319 (and tp!1098375 tp!1098372))))

(declare-fun b!3588548 () Bool)

(declare-fun tp!1098373 () Bool)

(declare-fun tp!1098376 () Bool)

(assert (=> b!3588548 (= e!2220319 (and tp!1098373 tp!1098376))))

(assert (= (and b!3587449 (is-ElementMatch!10322 (reg!10651 (regex!5563 anOtherTypeRule!33)))) b!3588547))

(assert (= (and b!3587449 (is-Concat!16116 (reg!10651 (regex!5563 anOtherTypeRule!33)))) b!3588548))

(assert (= (and b!3587449 (is-Star!10322 (reg!10651 (regex!5563 anOtherTypeRule!33)))) b!3588549))

(assert (= (and b!3587449 (is-Union!10322 (reg!10651 (regex!5563 anOtherTypeRule!33)))) b!3588550))

(declare-fun b_lambda!106009 () Bool)

(assert (= b_lambda!105969 (or (and b!3586803 b_free!92385 (= (toValue!7843 (transformation!5563 (h!43122 rules!3307))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (and b!3586802 b_free!92381 (= (toValue!7843 (transformation!5563 rule!403)) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (and b!3588467 b_free!92417 (= (toValue!7843 (transformation!5563 (h!43122 (t!290639 (t!290639 rules!3307))))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (and b!3587461 b_free!92409 (= (toValue!7843 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (and b!3586810 b_free!92377 (= (toValue!7843 (transformation!5563 (rule!8277 token!511))) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (and b!3586811 b_free!92389 (= (toValue!7843 (transformation!5563 anOtherTypeRule!33)) (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) b_lambda!106009)))

(declare-fun b_lambda!106011 () Bool)

(assert (= b_lambda!105967 (or (and b!3588467 b_free!92419 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 (t!290639 rules!3307))))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (and b!3586802 b_free!92383 (= (toChars!7702 (transformation!5563 rule!403)) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (and b!3587461 b_free!92411 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (and b!3586811 b_free!92391 (= (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (and b!3586810 b_free!92379 (= (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (and b!3586803 b_free!92387 (= (toChars!7702 (transformation!5563 (h!43122 rules!3307))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) b_lambda!106011)))

(declare-fun b_lambda!106013 () Bool)

(assert (= b_lambda!105997 (or d!1057549 b_lambda!106013)))

(declare-fun bs!570160 () Bool)

(declare-fun d!1058121 () Bool)

(assert (= bs!570160 (and d!1058121 d!1057549)))

(assert (=> bs!570160 (= (dynLambda!16217 lambda!123792 lt!1230280) (= (list!13859 (dynLambda!16205 (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) (dynLambda!16209 (toValue!7843 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))) lt!1230280))) (list!13859 lt!1230280)))))

(declare-fun b_lambda!106017 () Bool)

(assert (=> (not b_lambda!106017) (not bs!570160)))

(assert (=> bs!570160 t!290690))

(declare-fun b_and!259277 () Bool)

(assert (= b_and!259205 (and (=> t!290690 result!249516) b_and!259277)))

(assert (=> bs!570160 t!290668))

(declare-fun b_and!259279 () Bool)

(assert (= b_and!259207 (and (=> t!290668 result!249486) b_and!259279)))

(assert (=> bs!570160 t!290672))

(declare-fun b_and!259281 () Bool)

(assert (= b_and!259203 (and (=> t!290672 result!249490) b_and!259281)))

(assert (=> bs!570160 t!290670))

(declare-fun b_and!259283 () Bool)

(assert (= b_and!259209 (and (=> t!290670 result!249488) b_and!259283)))

(assert (=> bs!570160 t!290816))

(declare-fun b_and!259285 () Bool)

(assert (= b_and!259265 (and (=> t!290816 result!249646) b_and!259285)))

(assert (=> bs!570160 t!290674))

(declare-fun b_and!259287 () Bool)

(assert (= b_and!259211 (and (=> t!290674 result!249492) b_and!259287)))

(declare-fun b_lambda!106019 () Bool)

(assert (=> (not b_lambda!106019) (not bs!570160)))

(assert (=> bs!570160 t!290680))

(declare-fun b_and!259289 () Bool)

(assert (= b_and!259223 (and (=> t!290680 result!249500) b_and!259289)))

(assert (=> bs!570160 t!290678))

(declare-fun b_and!259291 () Bool)

(assert (= b_and!259231 (and (=> t!290678 result!249498) b_and!259291)))

(assert (=> bs!570160 t!290676))

(declare-fun b_and!259293 () Bool)

(assert (= b_and!259227 (and (=> t!290676 result!249494) b_and!259293)))

(assert (=> bs!570160 t!290682))

(declare-fun b_and!259295 () Bool)

(assert (= b_and!259225 (and (=> t!290682 result!249502) b_and!259295)))

(assert (=> bs!570160 t!290684))

(declare-fun b_and!259297 () Bool)

(assert (= b_and!259229 (and (=> t!290684 result!249510) b_and!259297)))

(assert (=> bs!570160 t!290810))

(declare-fun b_and!259299 () Bool)

(assert (= b_and!259263 (and (=> t!290810 result!249640) b_and!259299)))

(assert (=> bs!570160 m!4080093))

(assert (=> bs!570160 m!4080805))

(assert (=> bs!570160 m!4080807))

(assert (=> bs!570160 m!4080805))

(assert (=> bs!570160 m!4080807))

(assert (=> bs!570160 m!4080809))

(assert (=> d!1057849 d!1058121))

(declare-fun b_lambda!106015 () Bool)

(assert (= b_lambda!105961 (or (and b!3588467 b_free!92419 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 (t!290639 rules!3307))))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (and b!3586802 b_free!92383 (= (toChars!7702 (transformation!5563 rule!403)) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (and b!3587461 b_free!92411 (= (toChars!7702 (transformation!5563 (h!43122 (t!290639 rules!3307)))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (and b!3586811 b_free!92391 (= (toChars!7702 (transformation!5563 anOtherTypeRule!33)) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (and b!3586810 b_free!92379 (= (toChars!7702 (transformation!5563 (rule!8277 token!511))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) (and b!3586803 b_free!92387 (= (toChars!7702 (transformation!5563 (h!43122 rules!3307))) (toChars!7702 (transformation!5563 (rule!8277 (_1!21929 lt!1230275)))))) b_lambda!106015)))

(push 1)

(assert (not b!3588541))

(assert (not d!1057765))

(assert (not b!3588532))

(assert (not d!1058071))

(assert (not b!3587890))

(assert (not b!3588023))

(assert (not b!3588490))

(assert (not b!3588038))

(assert (not b!3588459))

(assert (not bm!259792))

(assert (not d!1057763))

(assert (not b!3587691))

(assert (not b!3588505))

(assert (not b!3588078))

(assert (not b!3587701))

(assert (not b!3588452))

(assert (not d!1057897))

(assert (not b!3588050))

(assert (not d!1057853))

(assert (not b!3588345))

(assert (not b!3587856))

(assert b_and!259279)

(assert (not b_next!93093))

(assert (not d!1057903))

(assert (not d!1057717))

(assert (not b!3587724))

(assert (not b!3587629))

(assert (not b!3588346))

(assert (not b!3587982))

(assert (not b_lambda!105973))

(assert (not b!3588477))

(assert (not b!3587601))

(assert (not bm!259745))

(assert (not b!3587888))

(assert (not b_next!93083))

(assert (not d!1057731))

(assert (not b!3588057))

(assert (not d!1057835))

(assert (not b!3587804))

(assert (not b!3588056))

(assert (not b!3588479))

(assert (not b!3587940))

(assert (not d!1057895))

(assert (not bm!259763))

(assert (not b!3587565))

(assert (not d!1057723))

(assert (not b!3587853))

(assert (not d!1057685))

(assert (not d!1057627))

(assert (not b!3587389))

(assert (not b!3588031))

(assert (not b!3587942))

(assert (not b!3587827))

(assert (not b!3587899))

(assert (not d!1057815))

(assert tp_is_empty!17727)

(assert (not b!3587766))

(assert (not d!1057813))

(assert (not b!3587720))

(assert (not b!3588447))

(assert (not b!3588537))

(assert (not b!3588048))

(assert (not b!3587639))

(assert (not b!3588017))

(assert (not b!3588522))

(assert (not b!3587600))

(assert (not b!3587576))

(assert (not b!3588041))

(assert (not b!3587669))

(assert b_and!259285)

(assert (not d!1057667))

(assert (not d!1058077))

(assert (not b!3587861))

(assert (not b!3587693))

(assert (not b!3587869))

(assert (not d!1057623))

(assert (not d!1057827))

(assert (not b!3587678))

(assert (not bm!259788))

(assert (not b!3588485))

(assert (not b!3588458))

(assert (not b!3588450))

(assert (not d!1058057))

(assert (not b!3587865))

(assert (not b!3587894))

(assert (not b!3587605))

(assert (not b!3587680))

(assert (not b!3587692))

(assert (not b!3588019))

(assert (not b_lambda!106013))

(assert (not b!3588533))

(assert (not b!3588449))

(assert (not d!1057721))

(assert (not bm!259756))

(assert (not b!3588051))

(assert (not b!3587873))

(assert (not bm!259762))

(assert (not b!3588549))

(assert (not b_next!93095))

(assert (not b!3587883))

(assert (not b!3587632))

(assert (not b!3587832))

(assert (not d!1057783))

(assert (not d!1057825))

(assert (not d!1057771))

(assert (not bm!259770))

(assert (not b!3588028))

(assert b_and!259297)

(assert (not d!1058079))

(assert (not b_lambda!106015))

(assert (not b!3587728))

(assert (not d!1057879))

(assert (not b!3587842))

(assert (not b!3588084))

(assert (not b!3587971))

(assert (not b!3588513))

(assert (not b_lambda!105989))

(assert (not bm!259765))

(assert (not d!1057927))

(assert (not b!3587976))

(assert (not d!1057867))

(assert (not b_lambda!106019))

(assert (not d!1057811))

(assert (not b!3587836))

(assert (not d!1057803))

(assert (not b!3587730))

(assert (not d!1057677))

(assert (not b!3587871))

(assert (not b!3588546))

(assert (not bm!259743))

(assert (not b!3587622))

(assert b_and!259281)

(assert (not b!3588521))

(assert (not b!3587578))

(assert b_and!259295)

(assert (not d!1058105))

(assert (not b!3587738))

(assert (not b!3588483))

(assert (not b!3588536))

(assert (not b!3588032))

(assert (not d!1057913))

(assert (not d!1057915))

(assert (not b!3587848))

(assert (not d!1057819))

(assert (not b!3588527))

(assert (not b!3588473))

(assert (not b!3587650))

(assert (not bm!259769))

(assert (not bm!259785))

(assert (not d!1057687))

(assert (not d!1057861))

(assert (not b!3588520))

(assert (not b!3587904))

(assert (not bm!259767))

(assert (not b!3588083))

(assert (not b!3587929))

(assert (not b!3588087))

(assert (not b!3588494))

(assert (not b!3587734))

(assert (not d!1057635))

(assert (not b!3588026))

(assert (not d!1057697))

(assert (not bm!259757))

(assert (not b!3587697))

(assert (not d!1057875))

(assert (not b!3587858))

(assert (not b!3587640))

(assert (not b!3587696))

(assert b_and!259283)

(assert (not b!3587984))

(assert (not d!1057711))

(assert (not b_lambda!105971))

(assert (not b!3587835))

(assert (not b_lambda!106017))

(assert (not b!3587567))

(assert (not b!3587744))

(assert (not b!3587998))

(assert (not b_lambda!106011))

(assert (not b_lambda!106009))

(assert (not d!1057851))

(assert (not b!3588506))

(assert (not d!1057735))

(assert (not d!1057907))

(assert (not b!3588538))

(assert (not bs!570160))

(assert (not tb!204661))

(assert (not b!3587913))

(assert (not b!3588012))

(assert (not b!3588534))

(assert (not d!1057863))

(assert (not b!3588481))

(assert (not d!1057713))

(assert (not b!3588003))

(assert (not bm!259732))

(assert (not d!1057869))

(assert (not b!3587628))

(assert (not d!1057849))

(assert (not b!3587850))

(assert (not b!3586915))

(assert (not b!3587878))

(assert (not b!3587799))

(assert (not b!3588493))

(assert (not d!1057665))

(assert (not b!3588466))

(assert (not d!1057925))

(assert (not b!3588089))

(assert (not b!3588086))

(assert (not d!1057845))

(assert (not b!3587621))

(assert (not b!3587607))

(assert (not b!3588453))

(assert (not b!3588029))

(assert (not b!3588081))

(assert (not b!3587915))

(assert (not b!3588344))

(assert (not b!3587900))

(assert (not b_lambda!105993))

(assert (not b!3587611))

(assert (not b!3587814))

(assert (not d!1057873))

(assert (not b!3587782))

(assert (not b!3588464))

(assert (not b!3588550))

(assert (not d!1057701))

(assert (not b!3587740))

(assert (not b!3588508))

(assert (not d!1057689))

(assert (not b!3587944))

(assert (not b!3587965))

(assert (not b!3588545))

(assert (not bm!259795))

(assert (not b!3588052))

(assert (not b!3588497))

(assert (not b!3588043))

(assert (not b!3587574))

(assert (not d!1057931))

(assert (not d!1057625))

(assert (not b!3587966))

(assert (not b!3588512))

(assert (not b!3588504))

(assert (not bm!259746))

(assert (not b!3588049))

(assert (not b!3587857))

(assert (not b!3587840))

(assert (not b!3587679))

(assert (not b!3588486))

(assert (not b!3588085))

(assert (not bm!259784))

(assert (not b!3588518))

(assert (not bm!259791))

(assert (not b!3587612))

(assert (not b!3588492))

(assert (not b!3587819))

(assert (not b!3587817))

(assert (not b!3588501))

(assert (not tb!204681))

(assert (not b!3587855))

(assert (not b_next!93087))

(assert (not b!3588351))

(assert (not d!1057847))

(assert (not b!3587905))

(assert (not b!3587875))

(assert (not b_next!93091))

(assert (not bm!259771))

(assert (not b!3587897))

(assert (not b!3588009))

(assert (not b!3588475))

(assert (not b!3587844))

(assert (not b!3587742))

(assert (not b!3588517))

(assert (not b!3587911))

(assert (not b!3588021))

(assert (not b!3587972))

(assert (not b!3588500))

(assert (not d!1057865))

(assert b_and!259277)

(assert (not b_lambda!105995))

(assert (not b!3587879))

(assert (not b!3588525))

(assert (not b!3587994))

(assert (not b_next!93121))

(assert (not b_next!93089))

(assert (not d!1057933))

(assert (not b!3588529))

(assert (not b!3587859))

(assert (not b!3588007))

(assert (not b!3587604))

(assert (not b!3587909))

(assert (not b!3588524))

(assert (not b!3587834))

(assert (not d!1057901))

(assert (not b!3588030))

(assert (not bm!259739))

(assert (not b!3587634))

(assert (not d!1057649))

(assert (not b!3588027))

(assert (not tb!204701))

(assert (not bm!259780))

(assert (not b!3587955))

(assert (not bm!259786))

(assert (not d!1058063))

(assert (not d!1057633))

(assert (not bm!259777))

(assert (not b!3588502))

(assert (not b!3588542))

(assert (not b!3587569))

(assert (not d!1057881))

(assert (not tb!204691))

(assert (not b!3588489))

(assert (not b!3588510))

(assert (not b!3587930))

(assert (not b!3587896))

(assert (not b!3588434))

(assert (not b!3587603))

(assert (not b!3588496))

(assert (not b!3587978))

(assert (not b!3587644))

(assert (not b!3587626))

(assert (not b!3587566))

(assert (not b!3587999))

(assert (not b!3587694))

(assert (not b!3587619))

(assert (not b!3588042))

(assert (not b!3587801))

(assert (not b!3587892))

(assert (not d!1057693))

(assert (not b!3587980))

(assert (not b!3588465))

(assert (not b!3588069))

(assert (not b!3587852))

(assert (not b!3588488))

(assert (not d!1057817))

(assert (not b!3587945))

(assert (not b!3587797))

(assert (not b!3587863))

(assert (not d!1057829))

(assert (not b!3587813))

(assert (not d!1057643))

(assert (not d!1058061))

(assert (not b!3587779))

(assert (not bm!259768))

(assert (not b!3587602))

(assert (not b!3587570))

(assert (not b!3587831))

(assert (not bm!259778))

(assert (not b!3588454))

(assert (not b_lambda!105991))

(assert (not bm!259783))

(assert (not b!3587876))

(assert (not d!1057801))

(assert (not b!3588463))

(assert (not b!3588540))

(assert (not b_next!93085))

(assert (not b!3588548))

(assert (not b!3588516))

(assert (not b!3588074))

(assert (not b!3588091))

(assert (not bm!259747))

(assert (not d!1057871))

(assert (not b!3588082))

(assert (not b!3587839))

(assert (not b!3587107))

(assert b_and!259291)

(assert (not b!3587624))

(assert (not b_lambda!105987))

(assert (not b!3587838))

(assert (not d!1057709))

(assert (not bm!259796))

(assert (not b!3587689))

(assert (not b_next!93113))

(assert (not b!3587698))

(assert (not b!3587867))

(assert (not b!3587719))

(assert (not b!3588544))

(assert (not b!3588526))

(assert (not bm!259772))

(assert (not b!3587846))

(assert (not b!3587726))

(assert (not d!1057789))

(assert (not b!3587996))

(assert (not b!3587884))

(assert (not bm!259740))

(assert (not b!3588054))

(assert (not b!3588342))

(assert (not b!3588092))

(assert (not bm!259787))

(assert (not b!3587606))

(assert (not d!1058107))

(assert (not b_next!93115))

(assert (not bm!259744))

(assert (not b!3588053))

(assert (not bm!259776))

(assert (not d!1057805))

(assert (not b!3587781))

(assert (not b!3588025))

(assert (not b!3588080))

(assert (not d!1057769))

(assert (not b!3587820))

(assert (not b!3587917))

(assert b_and!259289)

(assert (not b!3587683))

(assert (not b!3588088))

(assert (not b!3587633))

(assert (not bm!259779))

(assert (not b!3588039))

(assert (not b!3588474))

(assert (not d!1057883))

(assert (not bm!259764))

(assert (not b!3588093))

(assert (not tb!204671))

(assert (not b!3588514))

(assert (not b!3587803))

(assert (not b!3588530))

(assert (not b!3587630))

(assert (not b!3588013))

(assert (not b!3588077))

(assert (not b!3588005))

(assert (not bm!259761))

(assert (not b!3588076))

(assert (not d!1057899))

(assert (not b!3588478))

(assert (not b!3587854))

(assert (not b!3588509))

(assert (not b_next!93081))

(assert (not b!3587828))

(assert (not b!3587837))

(assert (not b!3587851))

(assert (not b!3588073))

(assert b_and!259299)

(assert (not b!3588498))

(assert (not d!1057733))

(assert (not b!3587969))

(assert (not d!1057641))

(assert (not d!1057823))

(assert (not b!3588528))

(assert (not b!3588460))

(assert b_and!259287)

(assert (not b!3587733))

(assert (not b!3588482))

(assert b_and!259293)

(assert (not b!3588055))

(assert (not b_next!93123))

(assert (not b!3587682))

(assert (not b!3587580))

(assert (not d!1057887))

(assert (not b!3587700))

(assert (not d!1057743))

(assert (not b!3588462))

(assert (not d!1057857))

(assert (not d!1057761))

(assert (not d!1057781))

(assert (not b!3587709))

(assert (not b!3588487))

(assert (not d!1057799))

(assert (not b!3588350))

(assert (not d!1057629))

(assert (not b!3587777))

(assert (not b!3588448))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!93083))

(assert b_and!259285)

(assert (not b_next!93095))

(assert b_and!259297)

(assert b_and!259283)

(assert b_and!259277)

(assert (not b_next!93085))

(assert b_and!259291)

(assert (not b_next!93113))

(assert (not b_next!93115))

(assert b_and!259289)

(assert b_and!259279)

(assert (not b_next!93093))

(assert b_and!259281)

(assert b_and!259295)

(assert (not b_next!93087))

(assert (not b_next!93091))

(assert (not b_next!93121))

(assert (not b_next!93089))

(assert b_and!259299)

(assert (not b_next!93081))

(assert b_and!259293)

(assert (not b_next!93123))

(assert b_and!259287)

(check-sat)

(pop 1)

