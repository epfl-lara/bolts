; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220188 () Bool)

(assert start!220188)

(declare-fun b!2256644 () Bool)

(declare-fun b_free!66445 () Bool)

(declare-fun b_next!67149 () Bool)

(assert (=> b!2256644 (= b_free!66445 (not b_next!67149))))

(declare-fun tp!713367 () Bool)

(declare-fun b_and!177137 () Bool)

(assert (=> b!2256644 (= tp!713367 b_and!177137)))

(declare-fun b_free!66447 () Bool)

(declare-fun b_next!67151 () Bool)

(assert (=> b!2256644 (= b_free!66447 (not b_next!67151))))

(declare-fun tp!713373 () Bool)

(declare-fun b_and!177139 () Bool)

(assert (=> b!2256644 (= tp!713373 b_and!177139)))

(declare-fun b!2256663 () Bool)

(declare-fun b_free!66449 () Bool)

(declare-fun b_next!67153 () Bool)

(assert (=> b!2256663 (= b_free!66449 (not b_next!67153))))

(declare-fun tp!713369 () Bool)

(declare-fun b_and!177141 () Bool)

(assert (=> b!2256663 (= tp!713369 b_and!177141)))

(declare-fun b_free!66451 () Bool)

(declare-fun b_next!67155 () Bool)

(assert (=> b!2256663 (= b_free!66451 (not b_next!67155))))

(declare-fun tp!713364 () Bool)

(declare-fun b_and!177143 () Bool)

(assert (=> b!2256663 (= tp!713364 b_and!177143)))

(declare-fun b!2256657 () Bool)

(declare-fun b_free!66453 () Bool)

(declare-fun b_next!67157 () Bool)

(assert (=> b!2256657 (= b_free!66453 (not b_next!67157))))

(declare-fun tp!713359 () Bool)

(declare-fun b_and!177145 () Bool)

(assert (=> b!2256657 (= tp!713359 b_and!177145)))

(declare-fun b_free!66455 () Bool)

(declare-fun b_next!67159 () Bool)

(assert (=> b!2256657 (= b_free!66455 (not b_next!67159))))

(declare-fun tp!713361 () Bool)

(declare-fun b_and!177147 () Bool)

(assert (=> b!2256657 (= tp!713361 b_and!177147)))

(declare-fun b!2256674 () Bool)

(declare-fun b_free!66457 () Bool)

(declare-fun b_next!67161 () Bool)

(assert (=> b!2256674 (= b_free!66457 (not b_next!67161))))

(declare-fun tp!713370 () Bool)

(declare-fun b_and!177149 () Bool)

(assert (=> b!2256674 (= tp!713370 b_and!177149)))

(declare-fun b_free!66459 () Bool)

(declare-fun b_next!67163 () Bool)

(assert (=> b!2256674 (= b_free!66459 (not b_next!67163))))

(declare-fun tp!713363 () Bool)

(declare-fun b_and!177151 () Bool)

(assert (=> b!2256674 (= tp!713363 b_and!177151)))

(declare-fun b!2256645 () Bool)

(declare-fun e!1444652 () Bool)

(declare-datatypes ((List!26875 0))(
  ( (Nil!26781) (Cons!26781 (h!32182 (_ BitVec 16)) (t!201295 List!26875)) )
))
(declare-datatypes ((TokenValue!4417 0))(
  ( (FloatLiteralValue!8834 (text!31364 List!26875)) (TokenValueExt!4416 (__x!17894 Int)) (Broken!22085 (value!135061 List!26875)) (Object!4510) (End!4417) (Def!4417) (Underscore!4417) (Match!4417) (Else!4417) (Error!4417) (Case!4417) (If!4417) (Extends!4417) (Abstract!4417) (Class!4417) (Val!4417) (DelimiterValue!8834 (del!4477 List!26875)) (KeywordValue!4423 (value!135062 List!26875)) (CommentValue!8834 (value!135063 List!26875)) (WhitespaceValue!8834 (value!135064 List!26875)) (IndentationValue!4417 (value!135065 List!26875)) (String!29188) (Int32!4417) (Broken!22086 (value!135066 List!26875)) (Boolean!4418) (Unit!39701) (OperatorValue!4420 (op!4477 List!26875)) (IdentifierValue!8834 (value!135067 List!26875)) (IdentifierValue!8835 (value!135068 List!26875)) (WhitespaceValue!8835 (value!135069 List!26875)) (True!8834) (False!8834) (Broken!22087 (value!135070 List!26875)) (Broken!22088 (value!135071 List!26875)) (True!8835) (RightBrace!4417) (RightBracket!4417) (Colon!4417) (Null!4417) (Comma!4417) (LeftBracket!4417) (False!8835) (LeftBrace!4417) (ImaginaryLiteralValue!4417 (text!31365 List!26875)) (StringLiteralValue!13251 (value!135072 List!26875)) (EOFValue!4417 (value!135073 List!26875)) (IdentValue!4417 (value!135074 List!26875)) (DelimiterValue!8835 (value!135075 List!26875)) (DedentValue!4417 (value!135076 List!26875)) (NewLineValue!4417 (value!135077 List!26875)) (IntegerValue!13251 (value!135078 (_ BitVec 32)) (text!31366 List!26875)) (IntegerValue!13252 (value!135079 Int) (text!31367 List!26875)) (Times!4417) (Or!4417) (Equal!4417) (Minus!4417) (Broken!22089 (value!135080 List!26875)) (And!4417) (Div!4417) (LessEqual!4417) (Mod!4417) (Concat!11020) (Not!4417) (Plus!4417) (SpaceValue!4417 (value!135081 List!26875)) (IntegerValue!13253 (value!135082 Int) (text!31368 List!26875)) (StringLiteralValue!13252 (text!31369 List!26875)) (FloatLiteralValue!8835 (text!31370 List!26875)) (BytesLiteralValue!4417 (value!135083 List!26875)) (CommentValue!8835 (value!135084 List!26875)) (StringLiteralValue!13253 (value!135085 List!26875)) (ErrorTokenValue!4417 (msg!4478 List!26875)) )
))
(declare-datatypes ((C!13352 0))(
  ( (C!13353 (val!7724 Int)) )
))
(declare-datatypes ((List!26876 0))(
  ( (Nil!26782) (Cons!26782 (h!32183 C!13352) (t!201296 List!26876)) )
))
(declare-datatypes ((IArray!17321 0))(
  ( (IArray!17322 (innerList!8718 List!26876)) )
))
(declare-datatypes ((Conc!8658 0))(
  ( (Node!8658 (left!20338 Conc!8658) (right!20668 Conc!8658) (csize!17546 Int) (cheight!8869 Int)) (Leaf!12771 (xs!11600 IArray!17321) (csize!17547 Int)) (Empty!8658) )
))
(declare-datatypes ((BalanceConc!17044 0))(
  ( (BalanceConc!17045 (c!358612 Conc!8658)) )
))
(declare-datatypes ((String!29189 0))(
  ( (String!29190 (value!135086 String)) )
))
(declare-datatypes ((Regex!6603 0))(
  ( (ElementMatch!6603 (c!358613 C!13352)) (Concat!11021 (regOne!13718 Regex!6603) (regTwo!13718 Regex!6603)) (EmptyExpr!6603) (Star!6603 (reg!6932 Regex!6603)) (EmptyLang!6603) (Union!6603 (regOne!13719 Regex!6603) (regTwo!13719 Regex!6603)) )
))
(declare-datatypes ((TokenValueInjection!8374 0))(
  ( (TokenValueInjection!8375 (toValue!5997 Int) (toChars!5856 Int)) )
))
(declare-datatypes ((Rule!8310 0))(
  ( (Rule!8311 (regex!4255 Regex!6603) (tag!4745 String!29189) (isSeparator!4255 Bool) (transformation!4255 TokenValueInjection!8374)) )
))
(declare-datatypes ((Token!7988 0))(
  ( (Token!7989 (value!135087 TokenValue!4417) (rule!6561 Rule!8310) (size!20970 Int) (originalCharacters!5025 List!26876)) )
))
(declare-datatypes ((List!26877 0))(
  ( (Nil!26783) (Cons!26783 (h!32184 Token!7988) (t!201297 List!26877)) )
))
(declare-fun tokens!456 () List!26877)

(declare-fun r!2363 () Rule!8310)

(declare-fun head!4828 (List!26877) Token!7988)

(assert (=> b!2256645 (= e!1444652 (= (rule!6561 (head!4828 tokens!456)) r!2363))))

(declare-fun e!1444636 () Bool)

(declare-fun tp!713360 () Bool)

(declare-fun b!2256646 () Bool)

(declare-fun e!1444631 () Bool)

(declare-fun inv!36310 (String!29189) Bool)

(declare-fun inv!36313 (TokenValueInjection!8374) Bool)

(assert (=> b!2256646 (= e!1444631 (and tp!713360 (inv!36310 (tag!4745 (rule!6561 (h!32184 tokens!456)))) (inv!36313 (transformation!4255 (rule!6561 (h!32184 tokens!456)))) e!1444636))))

(declare-fun e!1444647 () Bool)

(declare-fun tp!713362 () Bool)

(declare-fun b!2256647 () Bool)

(declare-fun inv!21 (TokenValue!4417) Bool)

(assert (=> b!2256647 (= e!1444647 (and (inv!21 (value!135087 (h!32184 tokens!456))) e!1444631 tp!713362))))

(declare-fun tp!713371 () Bool)

(declare-fun e!1444651 () Bool)

(declare-fun b!2256648 () Bool)

(declare-fun inv!36314 (Token!7988) Bool)

(assert (=> b!2256648 (= e!1444651 (and (inv!36314 (h!32184 tokens!456)) e!1444647 tp!713371))))

(declare-fun b!2256649 () Bool)

(declare-fun e!1444635 () Bool)

(declare-fun e!1444633 () Bool)

(assert (=> b!2256649 (= e!1444635 (not e!1444633))))

(declare-fun res!964668 () Bool)

(assert (=> b!2256649 (=> res!964668 e!1444633)))

(declare-fun e!1444634 () Bool)

(assert (=> b!2256649 (= res!964668 e!1444634)))

(declare-fun res!964665 () Bool)

(assert (=> b!2256649 (=> (not res!964665) (not e!1444634))))

(declare-fun lt!838836 () Bool)

(assert (=> b!2256649 (= res!964665 (not lt!838836))))

(declare-datatypes ((LexerInterface!3852 0))(
  ( (LexerInterfaceExt!3849 (__x!17895 Int)) (Lexer!3850) )
))
(declare-fun thiss!16613 () LexerInterface!3852)

(declare-fun ruleValid!1347 (LexerInterface!3852 Rule!8310) Bool)

(assert (=> b!2256649 (ruleValid!1347 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39702 0))(
  ( (Unit!39703) )
))
(declare-fun lt!838844 () Unit!39702)

(declare-datatypes ((List!26878 0))(
  ( (Nil!26784) (Cons!26784 (h!32185 Rule!8310) (t!201298 List!26878)) )
))
(declare-fun rules!1750 () List!26878)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!754 (LexerInterface!3852 Rule!8310 List!26878) Unit!39702)

(assert (=> b!2256649 (= lt!838844 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!754 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2256650 () Bool)

(declare-fun e!1444637 () Bool)

(declare-fun e!1444626 () Bool)

(declare-fun tp!713365 () Bool)

(assert (=> b!2256650 (= e!1444637 (and e!1444626 tp!713365))))

(declare-fun b!2256651 () Bool)

(declare-fun res!964667 () Bool)

(assert (=> b!2256651 (=> (not res!964667) (not e!1444635))))

(declare-fun otherP!12 () List!26876)

(declare-fun input!1722 () List!26876)

(declare-fun isPrefix!2245 (List!26876 List!26876) Bool)

(assert (=> b!2256651 (= res!964667 (isPrefix!2245 otherP!12 input!1722))))

(declare-fun b!2256652 () Bool)

(declare-fun e!1444641 () Bool)

(declare-fun tp_is_empty!10427 () Bool)

(declare-fun tp!713372 () Bool)

(assert (=> b!2256652 (= e!1444641 (and tp_is_empty!10427 tp!713372))))

(declare-fun e!1444649 () Bool)

(declare-fun b!2256653 () Bool)

(declare-fun otherR!12 () Rule!8310)

(declare-fun e!1444642 () Bool)

(declare-fun tp!713358 () Bool)

(assert (=> b!2256653 (= e!1444642 (and tp!713358 (inv!36310 (tag!4745 otherR!12)) (inv!36313 (transformation!4255 otherR!12)) e!1444649))))

(declare-fun b!2256654 () Bool)

(declare-fun tp!713357 () Bool)

(declare-fun e!1444645 () Bool)

(assert (=> b!2256654 (= e!1444626 (and tp!713357 (inv!36310 (tag!4745 (h!32185 rules!1750))) (inv!36313 (transformation!4255 (h!32185 rules!1750))) e!1444645))))

(declare-fun b!2256655 () Bool)

(declare-fun e!1444632 () Bool)

(declare-fun e!1444628 () Bool)

(assert (=> b!2256655 (= e!1444632 e!1444628)))

(declare-fun res!964671 () Bool)

(assert (=> b!2256655 (=> res!964671 e!1444628)))

(declare-datatypes ((tuple2!26342 0))(
  ( (tuple2!26343 (_1!15681 Token!7988) (_2!15681 List!26876)) )
))
(declare-datatypes ((Option!5231 0))(
  ( (None!5230) (Some!5230 (v!30256 tuple2!26342)) )
))
(declare-fun lt!838843 () Option!5231)

(assert (=> b!2256655 (= res!964671 (not (= lt!838843 None!5230)))))

(declare-fun isEmpty!15120 (Option!5231) Bool)

(assert (=> b!2256655 (isEmpty!15120 lt!838843)))

(declare-fun maxPrefixOneRule!1330 (LexerInterface!3852 Rule!8310 List!26876) Option!5231)

(assert (=> b!2256655 (= lt!838843 (maxPrefixOneRule!1330 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!838838 () Unit!39702)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!403 (LexerInterface!3852 Rule!8310 List!26878 List!26876) Unit!39702)

(assert (=> b!2256655 (= lt!838838 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!403 thiss!16613 otherR!12 rules!1750 input!1722))))

(declare-fun b!2256656 () Bool)

(declare-fun e!1444629 () Unit!39702)

(declare-fun Unit!39704 () Unit!39702)

(assert (=> b!2256656 (= e!1444629 Unit!39704)))

(declare-fun lt!838845 () Unit!39702)

(declare-fun lemmaSameIndexThenSameElement!122 (List!26878 Rule!8310 Rule!8310) Unit!39702)

(assert (=> b!2256656 (= lt!838845 (lemmaSameIndexThenSameElement!122 rules!1750 r!2363 otherR!12))))

(assert (=> b!2256656 false))

(assert (=> b!2256657 (= e!1444649 (and tp!713359 tp!713361))))

(declare-fun res!964660 () Bool)

(declare-fun e!1444648 () Bool)

(assert (=> start!220188 (=> (not res!964660) (not e!1444648))))

(get-info :version)

(assert (=> start!220188 (= res!964660 ((_ is Lexer!3850) thiss!16613))))

(assert (=> start!220188 e!1444648))

(assert (=> start!220188 true))

(declare-fun e!1444643 () Bool)

(assert (=> start!220188 e!1444643))

(assert (=> start!220188 e!1444642))

(assert (=> start!220188 e!1444641))

(declare-fun e!1444638 () Bool)

(assert (=> start!220188 e!1444638))

(assert (=> start!220188 e!1444637))

(declare-fun e!1444654 () Bool)

(assert (=> start!220188 e!1444654))

(assert (=> start!220188 e!1444651))

(assert (=> b!2256644 (= e!1444636 (and tp!713367 tp!713373))))

(declare-fun b!2256658 () Bool)

(declare-fun e!1444630 () Bool)

(assert (=> b!2256658 (= e!1444648 e!1444630)))

(declare-fun res!964658 () Bool)

(assert (=> b!2256658 (=> (not res!964658) (not e!1444630))))

(declare-datatypes ((IArray!17323 0))(
  ( (IArray!17324 (innerList!8719 List!26877)) )
))
(declare-datatypes ((Conc!8659 0))(
  ( (Node!8659 (left!20339 Conc!8659) (right!20669 Conc!8659) (csize!17548 Int) (cheight!8870 Int)) (Leaf!12772 (xs!11601 IArray!17323) (csize!17549 Int)) (Empty!8659) )
))
(declare-datatypes ((BalanceConc!17046 0))(
  ( (BalanceConc!17047 (c!358614 Conc!8659)) )
))
(declare-datatypes ((tuple2!26344 0))(
  ( (tuple2!26345 (_1!15682 BalanceConc!17046) (_2!15682 BalanceConc!17044)) )
))
(declare-fun lt!838839 () tuple2!26344)

(declare-fun suffix!886 () List!26876)

(declare-datatypes ((tuple2!26346 0))(
  ( (tuple2!26347 (_1!15683 List!26877) (_2!15683 List!26876)) )
))
(declare-fun list!10305 (BalanceConc!17046) List!26877)

(declare-fun list!10306 (BalanceConc!17044) List!26876)

(assert (=> b!2256658 (= res!964658 (= (tuple2!26347 (list!10305 (_1!15682 lt!838839)) (list!10306 (_2!15682 lt!838839))) (tuple2!26347 tokens!456 suffix!886)))))

(declare-fun lex!1691 (LexerInterface!3852 List!26878 BalanceConc!17044) tuple2!26344)

(declare-fun seqFromList!2959 (List!26876) BalanceConc!17044)

(assert (=> b!2256658 (= lt!838839 (lex!1691 thiss!16613 rules!1750 (seqFromList!2959 input!1722)))))

(declare-fun b!2256659 () Bool)

(declare-fun e!1444627 () Bool)

(declare-fun tp!713356 () Bool)

(assert (=> b!2256659 (= e!1444654 (and tp!713356 (inv!36310 (tag!4745 r!2363)) (inv!36313 (transformation!4255 r!2363)) e!1444627))))

(declare-fun b!2256660 () Bool)

(declare-fun res!964673 () Bool)

(assert (=> b!2256660 (=> (not res!964673) (not e!1444635))))

(assert (=> b!2256660 (= res!964673 (not (= r!2363 otherR!12)))))

(declare-fun b!2256661 () Bool)

(declare-fun e!1444646 () Bool)

(declare-fun size!20971 (BalanceConc!17044) Int)

(declare-fun charsOf!2643 (Token!7988) BalanceConc!17044)

(declare-fun size!20972 (List!26876) Int)

(assert (=> b!2256661 (= e!1444646 (<= (size!20971 (charsOf!2643 (head!4828 tokens!456))) (size!20972 otherP!12)))))

(declare-fun b!2256662 () Bool)

(declare-fun res!964659 () Bool)

(assert (=> b!2256662 (=> (not res!964659) (not e!1444648))))

(declare-fun rulesInvariant!3354 (LexerInterface!3852 List!26878) Bool)

(assert (=> b!2256662 (= res!964659 (rulesInvariant!3354 thiss!16613 rules!1750))))

(assert (=> b!2256663 (= e!1444627 (and tp!713369 tp!713364))))

(declare-fun b!2256664 () Bool)

(declare-fun matchR!2864 (Regex!6603 List!26876) Bool)

(assert (=> b!2256664 (= e!1444634 (not (matchR!2864 (regex!4255 r!2363) (list!10306 (charsOf!2643 (head!4828 tokens!456))))))))

(declare-fun b!2256665 () Bool)

(declare-fun Unit!39705 () Unit!39702)

(assert (=> b!2256665 (= e!1444629 Unit!39705)))

(declare-fun b!2256666 () Bool)

(declare-fun tp!713368 () Bool)

(assert (=> b!2256666 (= e!1444638 (and tp_is_empty!10427 tp!713368))))

(declare-fun b!2256667 () Bool)

(declare-fun res!964670 () Bool)

(assert (=> b!2256667 (=> (not res!964670) (not e!1444648))))

(declare-fun contains!4607 (List!26878 Rule!8310) Bool)

(assert (=> b!2256667 (= res!964670 (contains!4607 rules!1750 r!2363))))

(declare-fun b!2256668 () Bool)

(declare-fun e!1444640 () Bool)

(assert (=> b!2256668 (= e!1444640 e!1444632)))

(declare-fun res!964669 () Bool)

(assert (=> b!2256668 (=> res!964669 e!1444632)))

(assert (=> b!2256668 (= res!964669 (not ((_ is Nil!26783) tokens!456)))))

(declare-fun lt!838837 () Unit!39702)

(assert (=> b!2256668 (= lt!838837 e!1444629)))

(declare-fun c!358611 () Bool)

(declare-fun lt!838841 () Int)

(declare-fun lt!838846 () Int)

(assert (=> b!2256668 (= c!358611 (= lt!838841 lt!838846))))

(declare-fun b!2256669 () Bool)

(declare-fun res!964663 () Bool)

(assert (=> b!2256669 (=> (not res!964663) (not e!1444648))))

(declare-fun isEmpty!15121 (List!26878) Bool)

(assert (=> b!2256669 (= res!964663 (not (isEmpty!15121 rules!1750)))))

(declare-fun b!2256670 () Bool)

(assert (=> b!2256670 (= e!1444630 e!1444635)))

(declare-fun res!964672 () Bool)

(assert (=> b!2256670 (=> (not res!964672) (not e!1444635))))

(assert (=> b!2256670 (= res!964672 e!1444646)))

(declare-fun res!964662 () Bool)

(assert (=> b!2256670 (=> res!964662 e!1444646)))

(assert (=> b!2256670 (= res!964662 lt!838836)))

(declare-fun isEmpty!15122 (List!26877) Bool)

(assert (=> b!2256670 (= lt!838836 (isEmpty!15122 tokens!456))))

(declare-fun b!2256671 () Bool)

(assert (=> b!2256671 (= e!1444628 true)))

(assert (=> b!2256671 (not (matchR!2864 (regex!4255 otherR!12) otherP!12))))

(declare-fun lt!838842 () Unit!39702)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!395 (LexerInterface!3852 Rule!8310 List!26876 List!26876) Unit!39702)

(assert (=> b!2256671 (= lt!838842 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!395 thiss!16613 otherR!12 otherP!12 input!1722))))

(declare-fun b!2256672 () Bool)

(declare-fun res!964661 () Bool)

(assert (=> b!2256672 (=> (not res!964661) (not e!1444635))))

(assert (=> b!2256672 (= res!964661 e!1444652)))

(declare-fun res!964674 () Bool)

(assert (=> b!2256672 (=> res!964674 e!1444652)))

(assert (=> b!2256672 (= res!964674 lt!838836)))

(declare-fun b!2256673 () Bool)

(assert (=> b!2256673 (= e!1444633 e!1444640)))

(declare-fun res!964666 () Bool)

(assert (=> b!2256673 (=> res!964666 e!1444640)))

(assert (=> b!2256673 (= res!964666 (> lt!838841 lt!838846))))

(declare-fun getIndex!276 (List!26878 Rule!8310) Int)

(assert (=> b!2256673 (= lt!838846 (getIndex!276 rules!1750 otherR!12))))

(assert (=> b!2256673 (= lt!838841 (getIndex!276 rules!1750 r!2363))))

(assert (=> b!2256673 (ruleValid!1347 thiss!16613 otherR!12)))

(declare-fun lt!838840 () Unit!39702)

(assert (=> b!2256673 (= lt!838840 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!754 thiss!16613 otherR!12 rules!1750))))

(assert (=> b!2256674 (= e!1444645 (and tp!713370 tp!713363))))

(declare-fun b!2256675 () Bool)

(declare-fun res!964664 () Bool)

(assert (=> b!2256675 (=> (not res!964664) (not e!1444648))))

(assert (=> b!2256675 (= res!964664 (contains!4607 rules!1750 otherR!12))))

(declare-fun b!2256676 () Bool)

(declare-fun tp!713366 () Bool)

(assert (=> b!2256676 (= e!1444643 (and tp_is_empty!10427 tp!713366))))

(assert (= (and start!220188 res!964660) b!2256669))

(assert (= (and b!2256669 res!964663) b!2256662))

(assert (= (and b!2256662 res!964659) b!2256667))

(assert (= (and b!2256667 res!964670) b!2256675))

(assert (= (and b!2256675 res!964664) b!2256658))

(assert (= (and b!2256658 res!964658) b!2256670))

(assert (= (and b!2256670 (not res!964662)) b!2256661))

(assert (= (and b!2256670 res!964672) b!2256672))

(assert (= (and b!2256672 (not res!964674)) b!2256645))

(assert (= (and b!2256672 res!964661) b!2256651))

(assert (= (and b!2256651 res!964667) b!2256660))

(assert (= (and b!2256660 res!964673) b!2256649))

(assert (= (and b!2256649 res!964665) b!2256664))

(assert (= (and b!2256649 (not res!964668)) b!2256673))

(assert (= (and b!2256673 (not res!964666)) b!2256668))

(assert (= (and b!2256668 c!358611) b!2256656))

(assert (= (and b!2256668 (not c!358611)) b!2256665))

(assert (= (and b!2256668 (not res!964669)) b!2256655))

(assert (= (and b!2256655 (not res!964671)) b!2256671))

(assert (= (and start!220188 ((_ is Cons!26782) input!1722)) b!2256676))

(assert (= b!2256653 b!2256657))

(assert (= start!220188 b!2256653))

(assert (= (and start!220188 ((_ is Cons!26782) suffix!886)) b!2256652))

(assert (= (and start!220188 ((_ is Cons!26782) otherP!12)) b!2256666))

(assert (= b!2256654 b!2256674))

(assert (= b!2256650 b!2256654))

(assert (= (and start!220188 ((_ is Cons!26784) rules!1750)) b!2256650))

(assert (= b!2256659 b!2256663))

(assert (= start!220188 b!2256659))

(assert (= b!2256646 b!2256644))

(assert (= b!2256647 b!2256646))

(assert (= b!2256648 b!2256647))

(assert (= (and start!220188 ((_ is Cons!26783) tokens!456)) b!2256648))

(declare-fun m!2686983 () Bool)

(assert (=> b!2256675 m!2686983))

(declare-fun m!2686985 () Bool)

(assert (=> b!2256664 m!2686985))

(assert (=> b!2256664 m!2686985))

(declare-fun m!2686987 () Bool)

(assert (=> b!2256664 m!2686987))

(assert (=> b!2256664 m!2686987))

(declare-fun m!2686989 () Bool)

(assert (=> b!2256664 m!2686989))

(assert (=> b!2256664 m!2686989))

(declare-fun m!2686991 () Bool)

(assert (=> b!2256664 m!2686991))

(declare-fun m!2686993 () Bool)

(assert (=> b!2256659 m!2686993))

(declare-fun m!2686995 () Bool)

(assert (=> b!2256659 m!2686995))

(declare-fun m!2686997 () Bool)

(assert (=> b!2256671 m!2686997))

(declare-fun m!2686999 () Bool)

(assert (=> b!2256671 m!2686999))

(declare-fun m!2687001 () Bool)

(assert (=> b!2256667 m!2687001))

(assert (=> b!2256661 m!2686985))

(assert (=> b!2256661 m!2686985))

(assert (=> b!2256661 m!2686987))

(assert (=> b!2256661 m!2686987))

(declare-fun m!2687003 () Bool)

(assert (=> b!2256661 m!2687003))

(declare-fun m!2687005 () Bool)

(assert (=> b!2256661 m!2687005))

(declare-fun m!2687007 () Bool)

(assert (=> b!2256651 m!2687007))

(declare-fun m!2687009 () Bool)

(assert (=> b!2256654 m!2687009))

(declare-fun m!2687011 () Bool)

(assert (=> b!2256654 m!2687011))

(declare-fun m!2687013 () Bool)

(assert (=> b!2256653 m!2687013))

(declare-fun m!2687015 () Bool)

(assert (=> b!2256653 m!2687015))

(declare-fun m!2687017 () Bool)

(assert (=> b!2256646 m!2687017))

(declare-fun m!2687019 () Bool)

(assert (=> b!2256646 m!2687019))

(declare-fun m!2687021 () Bool)

(assert (=> b!2256673 m!2687021))

(declare-fun m!2687023 () Bool)

(assert (=> b!2256673 m!2687023))

(declare-fun m!2687025 () Bool)

(assert (=> b!2256673 m!2687025))

(declare-fun m!2687027 () Bool)

(assert (=> b!2256673 m!2687027))

(declare-fun m!2687029 () Bool)

(assert (=> b!2256658 m!2687029))

(declare-fun m!2687031 () Bool)

(assert (=> b!2256658 m!2687031))

(declare-fun m!2687033 () Bool)

(assert (=> b!2256658 m!2687033))

(assert (=> b!2256658 m!2687033))

(declare-fun m!2687035 () Bool)

(assert (=> b!2256658 m!2687035))

(declare-fun m!2687037 () Bool)

(assert (=> b!2256669 m!2687037))

(declare-fun m!2687039 () Bool)

(assert (=> b!2256648 m!2687039))

(declare-fun m!2687041 () Bool)

(assert (=> b!2256670 m!2687041))

(assert (=> b!2256645 m!2686985))

(declare-fun m!2687043 () Bool)

(assert (=> b!2256647 m!2687043))

(declare-fun m!2687045 () Bool)

(assert (=> b!2256655 m!2687045))

(declare-fun m!2687047 () Bool)

(assert (=> b!2256655 m!2687047))

(declare-fun m!2687049 () Bool)

(assert (=> b!2256655 m!2687049))

(declare-fun m!2687051 () Bool)

(assert (=> b!2256662 m!2687051))

(declare-fun m!2687053 () Bool)

(assert (=> b!2256656 m!2687053))

(declare-fun m!2687055 () Bool)

(assert (=> b!2256649 m!2687055))

(declare-fun m!2687057 () Bool)

(assert (=> b!2256649 m!2687057))

(check-sat (not b_next!67151) (not b!2256664) (not b_next!67163) (not b!2256647) (not b!2256670) (not b!2256650) (not b!2256666) (not b!2256661) b_and!177149 (not b!2256648) (not b!2256669) (not b!2256645) tp_is_empty!10427 (not b_next!67153) (not b!2256649) (not b!2256646) (not b!2256651) b_and!177145 b_and!177147 (not b_next!67155) (not b_next!67149) b_and!177143 (not b!2256671) (not b!2256673) b_and!177137 (not b!2256654) (not b_next!67161) (not b_next!67157) (not b!2256659) (not b!2256656) b_and!177141 (not b!2256658) b_and!177139 (not b!2256676) (not b!2256652) (not b!2256653) (not b!2256667) (not b!2256662) (not b!2256675) b_and!177151 (not b!2256655) (not b_next!67159))
(check-sat (not b_next!67151) (not b_next!67153) (not b_next!67163) b_and!177141 b_and!177139 b_and!177149 b_and!177145 b_and!177147 (not b_next!67155) (not b_next!67149) b_and!177143 b_and!177137 (not b_next!67161) (not b_next!67157) (not b_next!67159) b_and!177151)
