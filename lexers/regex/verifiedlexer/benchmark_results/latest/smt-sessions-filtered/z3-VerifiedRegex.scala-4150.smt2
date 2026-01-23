; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!223364 () Bool)

(assert start!223364)

(declare-fun b!2280369 () Bool)

(declare-fun b_free!68109 () Bool)

(declare-fun b_next!68813 () Bool)

(assert (=> b!2280369 (= b_free!68109 (not b_next!68813))))

(declare-fun tp!722632 () Bool)

(declare-fun b_and!180081 () Bool)

(assert (=> b!2280369 (= tp!722632 b_and!180081)))

(declare-fun b_free!68111 () Bool)

(declare-fun b_next!68815 () Bool)

(assert (=> b!2280369 (= b_free!68111 (not b_next!68815))))

(declare-fun tp!722628 () Bool)

(declare-fun b_and!180083 () Bool)

(assert (=> b!2280369 (= tp!722628 b_and!180083)))

(declare-fun b!2280374 () Bool)

(declare-fun b_free!68113 () Bool)

(declare-fun b_next!68817 () Bool)

(assert (=> b!2280374 (= b_free!68113 (not b_next!68817))))

(declare-fun tp!722629 () Bool)

(declare-fun b_and!180085 () Bool)

(assert (=> b!2280374 (= tp!722629 b_and!180085)))

(declare-fun b_free!68115 () Bool)

(declare-fun b_next!68819 () Bool)

(assert (=> b!2280374 (= b_free!68115 (not b_next!68819))))

(declare-fun tp!722641 () Bool)

(declare-fun b_and!180087 () Bool)

(assert (=> b!2280374 (= tp!722641 b_and!180087)))

(declare-fun b!2280363 () Bool)

(declare-fun b_free!68117 () Bool)

(declare-fun b_next!68821 () Bool)

(assert (=> b!2280363 (= b_free!68117 (not b_next!68821))))

(declare-fun tp!722630 () Bool)

(declare-fun b_and!180089 () Bool)

(assert (=> b!2280363 (= tp!722630 b_and!180089)))

(declare-fun b_free!68119 () Bool)

(declare-fun b_next!68823 () Bool)

(assert (=> b!2280363 (= b_free!68119 (not b_next!68823))))

(declare-fun tp!722642 () Bool)

(declare-fun b_and!180091 () Bool)

(assert (=> b!2280363 (= tp!722642 b_and!180091)))

(declare-fun b!2280384 () Bool)

(declare-fun b_free!68121 () Bool)

(declare-fun b_next!68825 () Bool)

(assert (=> b!2280384 (= b_free!68121 (not b_next!68825))))

(declare-fun tp!722633 () Bool)

(declare-fun b_and!180093 () Bool)

(assert (=> b!2280384 (= tp!722633 b_and!180093)))

(declare-fun b_free!68123 () Bool)

(declare-fun b_next!68827 () Bool)

(assert (=> b!2280384 (= b_free!68123 (not b_next!68827))))

(declare-fun tp!722643 () Bool)

(declare-fun b_and!180095 () Bool)

(assert (=> b!2280384 (= tp!722643 b_and!180095)))

(declare-fun e!1460757 () Bool)

(assert (=> b!2280363 (= e!1460757 (and tp!722630 tp!722642))))

(declare-fun b!2280364 () Bool)

(declare-fun e!1460743 () Bool)

(declare-datatypes ((List!27215 0))(
  ( (Nil!27121) (Cons!27121 (h!32522 (_ BitVec 16)) (t!203471 List!27215)) )
))
(declare-datatypes ((TokenValue!4493 0))(
  ( (FloatLiteralValue!8986 (text!31896 List!27215)) (TokenValueExt!4492 (__x!18046 Int)) (Broken!22465 (value!137227 List!27215)) (Object!4586) (End!4493) (Def!4493) (Underscore!4493) (Match!4493) (Else!4493) (Error!4493) (Case!4493) (If!4493) (Extends!4493) (Abstract!4493) (Class!4493) (Val!4493) (DelimiterValue!8986 (del!4553 List!27215)) (KeywordValue!4499 (value!137228 List!27215)) (CommentValue!8986 (value!137229 List!27215)) (WhitespaceValue!8986 (value!137230 List!27215)) (IndentationValue!4493 (value!137231 List!27215)) (String!29568) (Int32!4493) (Broken!22466 (value!137232 List!27215)) (Boolean!4494) (Unit!40047) (OperatorValue!4496 (op!4553 List!27215)) (IdentifierValue!8986 (value!137233 List!27215)) (IdentifierValue!8987 (value!137234 List!27215)) (WhitespaceValue!8987 (value!137235 List!27215)) (True!8986) (False!8986) (Broken!22467 (value!137236 List!27215)) (Broken!22468 (value!137237 List!27215)) (True!8987) (RightBrace!4493) (RightBracket!4493) (Colon!4493) (Null!4493) (Comma!4493) (LeftBracket!4493) (False!8987) (LeftBrace!4493) (ImaginaryLiteralValue!4493 (text!31897 List!27215)) (StringLiteralValue!13479 (value!137238 List!27215)) (EOFValue!4493 (value!137239 List!27215)) (IdentValue!4493 (value!137240 List!27215)) (DelimiterValue!8987 (value!137241 List!27215)) (DedentValue!4493 (value!137242 List!27215)) (NewLineValue!4493 (value!137243 List!27215)) (IntegerValue!13479 (value!137244 (_ BitVec 32)) (text!31898 List!27215)) (IntegerValue!13480 (value!137245 Int) (text!31899 List!27215)) (Times!4493) (Or!4493) (Equal!4493) (Minus!4493) (Broken!22469 (value!137246 List!27215)) (And!4493) (Div!4493) (LessEqual!4493) (Mod!4493) (Concat!11172) (Not!4493) (Plus!4493) (SpaceValue!4493 (value!137247 List!27215)) (IntegerValue!13481 (value!137248 Int) (text!31900 List!27215)) (StringLiteralValue!13480 (text!31901 List!27215)) (FloatLiteralValue!8987 (text!31902 List!27215)) (BytesLiteralValue!4493 (value!137249 List!27215)) (CommentValue!8987 (value!137250 List!27215)) (StringLiteralValue!13481 (value!137251 List!27215)) (ErrorTokenValue!4493 (msg!4554 List!27215)) )
))
(declare-datatypes ((C!13504 0))(
  ( (C!13505 (val!7800 Int)) )
))
(declare-datatypes ((List!27216 0))(
  ( (Nil!27122) (Cons!27122 (h!32523 C!13504) (t!203472 List!27216)) )
))
(declare-datatypes ((IArray!17625 0))(
  ( (IArray!17626 (innerList!8870 List!27216)) )
))
(declare-datatypes ((Conc!8810 0))(
  ( (Node!8810 (left!20572 Conc!8810) (right!20902 Conc!8810) (csize!17850 Int) (cheight!9021 Int)) (Leaf!12961 (xs!11752 IArray!17625) (csize!17851 Int)) (Empty!8810) )
))
(declare-datatypes ((BalanceConc!17348 0))(
  ( (BalanceConc!17349 (c!361890 Conc!8810)) )
))
(declare-datatypes ((Regex!6679 0))(
  ( (ElementMatch!6679 (c!361891 C!13504)) (Concat!11173 (regOne!13870 Regex!6679) (regTwo!13870 Regex!6679)) (EmptyExpr!6679) (Star!6679 (reg!7008 Regex!6679)) (EmptyLang!6679) (Union!6679 (regOne!13871 Regex!6679) (regTwo!13871 Regex!6679)) )
))
(declare-datatypes ((String!29569 0))(
  ( (String!29570 (value!137252 String)) )
))
(declare-datatypes ((TokenValueInjection!8526 0))(
  ( (TokenValueInjection!8527 (toValue!6113 Int) (toChars!5972 Int)) )
))
(declare-datatypes ((Rule!8462 0))(
  ( (Rule!8463 (regex!4331 Regex!6679) (tag!4821 String!29569) (isSeparator!4331 Bool) (transformation!4331 TokenValueInjection!8526)) )
))
(declare-datatypes ((Token!8140 0))(
  ( (Token!8141 (value!137253 TokenValue!4493) (rule!6657 Rule!8462) (size!21324 Int) (originalCharacters!5101 List!27216)) )
))
(declare-datatypes ((List!27217 0))(
  ( (Nil!27123) (Cons!27123 (h!32524 Token!8140) (t!203473 List!27217)) )
))
(declare-fun tokens!456 () List!27217)

(declare-fun r!2363 () Rule!8462)

(declare-fun head!4940 (List!27217) Token!8140)

(assert (=> b!2280364 (= e!1460743 (= (rule!6657 (head!4940 tokens!456)) r!2363))))

(declare-fun e!1460740 () Bool)

(declare-fun tp!722636 () Bool)

(declare-fun e!1460750 () Bool)

(declare-fun b!2280365 () Bool)

(declare-fun inv!21 (TokenValue!4493) Bool)

(assert (=> b!2280365 (= e!1460750 (and (inv!21 (value!137253 (h!32524 tokens!456))) e!1460740 tp!722636))))

(declare-fun b!2280366 () Bool)

(declare-fun e!1460733 () Bool)

(declare-fun tp_is_empty!10579 () Bool)

(declare-fun tp!722639 () Bool)

(assert (=> b!2280366 (= e!1460733 (and tp_is_empty!10579 tp!722639))))

(declare-fun b!2280367 () Bool)

(declare-fun e!1460741 () Bool)

(declare-fun e!1460751 () Bool)

(assert (=> b!2280367 (= e!1460741 e!1460751)))

(declare-fun res!974681 () Bool)

(assert (=> b!2280367 (=> res!974681 e!1460751)))

(declare-fun otherP!12 () List!27216)

(declare-fun lt!846443 () List!27216)

(declare-fun size!21325 (List!27216) Int)

(assert (=> b!2280367 (= res!974681 (not (= (size!21325 otherP!12) (size!21325 lt!846443))))))

(declare-datatypes ((tuple2!26858 0))(
  ( (tuple2!26859 (_1!15939 Token!8140) (_2!15939 List!27216)) )
))
(declare-fun lt!846441 () tuple2!26858)

(declare-fun lt!846440 () List!27216)

(assert (=> b!2280367 (= (_2!15939 lt!846441) lt!846440)))

(declare-datatypes ((Unit!40048 0))(
  ( (Unit!40049) )
))
(declare-fun lt!846439 () Unit!40048)

(declare-fun input!1722 () List!27216)

(declare-fun lemmaSamePrefixThenSameSuffix!1022 (List!27216 List!27216 List!27216 List!27216 List!27216) Unit!40048)

(assert (=> b!2280367 (= lt!846439 (lemmaSamePrefixThenSameSuffix!1022 lt!846443 (_2!15939 lt!846441) lt!846443 lt!846440 input!1722))))

(declare-fun getSuffix!1112 (List!27216 List!27216) List!27216)

(assert (=> b!2280367 (= lt!846440 (getSuffix!1112 input!1722 lt!846443))))

(declare-fun isPrefix!2321 (List!27216 List!27216) Bool)

(declare-fun ++!6623 (List!27216 List!27216) List!27216)

(assert (=> b!2280367 (isPrefix!2321 lt!846443 (++!6623 lt!846443 (_2!15939 lt!846441)))))

(declare-fun lt!846446 () Unit!40048)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1526 (List!27216 List!27216) Unit!40048)

(assert (=> b!2280367 (= lt!846446 (lemmaConcatTwoListThenFirstIsPrefix!1526 lt!846443 (_2!15939 lt!846441)))))

(declare-fun list!10568 (BalanceConc!17348) List!27216)

(declare-fun charsOf!2719 (Token!8140) BalanceConc!17348)

(assert (=> b!2280367 (= lt!846443 (list!10568 (charsOf!2719 (h!32524 tokens!456))))))

(declare-fun b!2280368 () Bool)

(declare-fun e!1460749 () Bool)

(declare-fun e!1460756 () Bool)

(declare-fun tp!722637 () Bool)

(assert (=> b!2280368 (= e!1460749 (and e!1460756 tp!722637))))

(declare-fun e!1460759 () Bool)

(assert (=> b!2280369 (= e!1460759 (and tp!722632 tp!722628))))

(declare-fun b!2280370 () Bool)

(declare-fun res!974683 () Bool)

(declare-fun e!1460758 () Bool)

(assert (=> b!2280370 (=> (not res!974683) (not e!1460758))))

(assert (=> b!2280370 (= res!974683 e!1460743)))

(declare-fun res!974693 () Bool)

(assert (=> b!2280370 (=> res!974693 e!1460743)))

(declare-fun lt!846447 () Bool)

(assert (=> b!2280370 (= res!974693 lt!846447)))

(declare-fun b!2280371 () Bool)

(declare-fun e!1460752 () Bool)

(assert (=> b!2280371 (= e!1460752 e!1460741)))

(declare-fun res!974689 () Bool)

(assert (=> b!2280371 (=> res!974689 e!1460741)))

(assert (=> b!2280371 (= res!974689 (not (= (h!32524 tokens!456) (_1!15939 lt!846441))))))

(declare-datatypes ((LexerInterface!3928 0))(
  ( (LexerInterfaceExt!3925 (__x!18047 Int)) (Lexer!3926) )
))
(declare-fun thiss!16613 () LexerInterface!3928)

(declare-datatypes ((List!27218 0))(
  ( (Nil!27124) (Cons!27124 (h!32525 Rule!8462) (t!203474 List!27218)) )
))
(declare-fun rules!1750 () List!27218)

(declare-datatypes ((Option!5317 0))(
  ( (None!5316) (Some!5316 (v!30378 tuple2!26858)) )
))
(declare-fun get!8176 (Option!5317) tuple2!26858)

(declare-fun maxPrefix!2192 (LexerInterface!3928 List!27218 List!27216) Option!5317)

(assert (=> b!2280371 (= lt!846441 (get!8176 (maxPrefix!2192 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2280373 () Bool)

(declare-fun tp!722635 () Bool)

(declare-fun e!1460739 () Bool)

(declare-fun inv!36707 (Token!8140) Bool)

(assert (=> b!2280373 (= e!1460739 (and (inv!36707 (h!32524 tokens!456)) e!1460750 tp!722635))))

(declare-fun e!1460736 () Bool)

(assert (=> b!2280374 (= e!1460736 (and tp!722629 tp!722641))))

(declare-fun b!2280375 () Bool)

(declare-fun e!1460746 () Bool)

(declare-fun tp!722626 () Bool)

(declare-fun otherR!12 () Rule!8462)

(declare-fun inv!36704 (String!29569) Bool)

(declare-fun inv!36708 (TokenValueInjection!8526) Bool)

(assert (=> b!2280375 (= e!1460746 (and tp!722626 (inv!36704 (tag!4821 otherR!12)) (inv!36708 (transformation!4331 otherR!12)) e!1460757))))

(declare-fun b!2280376 () Bool)

(declare-fun res!974694 () Bool)

(declare-fun e!1460761 () Bool)

(assert (=> b!2280376 (=> (not res!974694) (not e!1460761))))

(declare-fun contains!4703 (List!27218 Rule!8462) Bool)

(assert (=> b!2280376 (= res!974694 (contains!4703 rules!1750 r!2363))))

(declare-fun b!2280377 () Bool)

(declare-fun res!974692 () Bool)

(assert (=> b!2280377 (=> (not res!974692) (not e!1460758))))

(assert (=> b!2280377 (= res!974692 (isPrefix!2321 otherP!12 input!1722))))

(declare-fun b!2280378 () Bool)

(declare-fun e!1460753 () Bool)

(assert (=> b!2280378 (= e!1460753 e!1460752)))

(declare-fun res!974698 () Bool)

(assert (=> b!2280378 (=> res!974698 e!1460752)))

(declare-fun getIndex!344 (List!27218 Rule!8462) Int)

(assert (=> b!2280378 (= res!974698 (<= (getIndex!344 rules!1750 r!2363) (getIndex!344 rules!1750 otherR!12)))))

(declare-fun ruleValid!1421 (LexerInterface!3928 Rule!8462) Bool)

(assert (=> b!2280378 (ruleValid!1421 thiss!16613 otherR!12)))

(declare-fun lt!846448 () Unit!40048)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!826 (LexerInterface!3928 Rule!8462 List!27218) Unit!40048)

(assert (=> b!2280378 (= lt!846448 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!826 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2280379 () Bool)

(declare-fun e!1460748 () Bool)

(declare-fun tp!722638 () Bool)

(assert (=> b!2280379 (= e!1460748 (and tp_is_empty!10579 tp!722638))))

(declare-fun b!2280380 () Bool)

(declare-fun e!1460754 () Bool)

(declare-fun tp!722634 () Bool)

(assert (=> b!2280380 (= e!1460754 (and tp_is_empty!10579 tp!722634))))

(declare-fun b!2280381 () Bool)

(declare-fun res!974685 () Bool)

(assert (=> b!2280381 (=> res!974685 e!1460752)))

(get-info :version)

(assert (=> b!2280381 (= res!974685 ((_ is Nil!27123) tokens!456))))

(declare-fun b!2280382 () Bool)

(declare-fun res!974690 () Bool)

(assert (=> b!2280382 (=> (not res!974690) (not e!1460758))))

(assert (=> b!2280382 (= res!974690 (not (= r!2363 otherR!12)))))

(declare-fun b!2280383 () Bool)

(declare-fun res!974684 () Bool)

(assert (=> b!2280383 (=> (not res!974684) (not e!1460761))))

(declare-fun rulesInvariant!3430 (LexerInterface!3928 List!27218) Bool)

(assert (=> b!2280383 (= res!974684 (rulesInvariant!3430 thiss!16613 rules!1750))))

(declare-fun e!1460735 () Bool)

(assert (=> b!2280384 (= e!1460735 (and tp!722633 tp!722643))))

(declare-fun b!2280385 () Bool)

(declare-fun res!974697 () Bool)

(assert (=> b!2280385 (=> (not res!974697) (not e!1460761))))

(declare-fun isEmpty!15399 (List!27218) Bool)

(assert (=> b!2280385 (= res!974697 (not (isEmpty!15399 rules!1750)))))

(declare-fun b!2280386 () Bool)

(declare-fun e!1460737 () Bool)

(declare-fun tp!722640 () Bool)

(assert (=> b!2280386 (= e!1460737 (and tp!722640 (inv!36704 (tag!4821 r!2363)) (inv!36708 (transformation!4331 r!2363)) e!1460759))))

(declare-fun b!2280387 () Bool)

(declare-fun res!974695 () Bool)

(assert (=> b!2280387 (=> (not res!974695) (not e!1460761))))

(assert (=> b!2280387 (= res!974695 (contains!4703 rules!1750 otherR!12))))

(declare-fun b!2280388 () Bool)

(declare-fun e!1460760 () Bool)

(declare-fun matchR!2936 (Regex!6679 List!27216) Bool)

(assert (=> b!2280388 (= e!1460760 (not (matchR!2936 (regex!4331 r!2363) (list!10568 (charsOf!2719 (head!4940 tokens!456))))))))

(declare-fun res!974687 () Bool)

(assert (=> start!223364 (=> (not res!974687) (not e!1460761))))

(assert (=> start!223364 (= res!974687 ((_ is Lexer!3926) thiss!16613))))

(assert (=> start!223364 e!1460761))

(assert (=> start!223364 true))

(assert (=> start!223364 e!1460754))

(assert (=> start!223364 e!1460746))

(assert (=> start!223364 e!1460733))

(assert (=> start!223364 e!1460748))

(assert (=> start!223364 e!1460749))

(assert (=> start!223364 e!1460737))

(assert (=> start!223364 e!1460739))

(declare-fun b!2280372 () Bool)

(declare-fun tp!722627 () Bool)

(assert (=> b!2280372 (= e!1460740 (and tp!722627 (inv!36704 (tag!4821 (rule!6657 (h!32524 tokens!456)))) (inv!36708 (transformation!4331 (rule!6657 (h!32524 tokens!456)))) e!1460735))))

(declare-fun b!2280389 () Bool)

(assert (=> b!2280389 (= e!1460751 (isPrefix!2321 lt!846443 input!1722))))

(assert (=> b!2280389 (= lt!846443 otherP!12)))

(declare-fun lt!846444 () Unit!40048)

(declare-fun lemmaIsPrefixSameLengthThenSameList!387 (List!27216 List!27216 List!27216) Unit!40048)

(assert (=> b!2280389 (= lt!846444 (lemmaIsPrefixSameLengthThenSameList!387 lt!846443 otherP!12 input!1722))))

(declare-fun b!2280390 () Bool)

(declare-fun tp!722631 () Bool)

(assert (=> b!2280390 (= e!1460756 (and tp!722631 (inv!36704 (tag!4821 (h!32525 rules!1750))) (inv!36708 (transformation!4331 (h!32525 rules!1750))) e!1460736))))

(declare-fun b!2280391 () Bool)

(declare-fun e!1460745 () Bool)

(declare-fun size!21326 (BalanceConc!17348) Int)

(assert (=> b!2280391 (= e!1460745 (<= (size!21326 (charsOf!2719 (head!4940 tokens!456))) (size!21325 otherP!12)))))

(declare-fun b!2280392 () Bool)

(assert (=> b!2280392 (= e!1460758 (not e!1460753))))

(declare-fun res!974691 () Bool)

(assert (=> b!2280392 (=> res!974691 e!1460753)))

(assert (=> b!2280392 (= res!974691 e!1460760)))

(declare-fun res!974682 () Bool)

(assert (=> b!2280392 (=> (not res!974682) (not e!1460760))))

(assert (=> b!2280392 (= res!974682 (not lt!846447))))

(assert (=> b!2280392 (ruleValid!1421 thiss!16613 r!2363)))

(declare-fun lt!846442 () Unit!40048)

(assert (=> b!2280392 (= lt!846442 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!826 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2280393 () Bool)

(declare-fun e!1460734 () Bool)

(assert (=> b!2280393 (= e!1460761 e!1460734)))

(declare-fun res!974686 () Bool)

(assert (=> b!2280393 (=> (not res!974686) (not e!1460734))))

(declare-datatypes ((IArray!17627 0))(
  ( (IArray!17628 (innerList!8871 List!27217)) )
))
(declare-datatypes ((Conc!8811 0))(
  ( (Node!8811 (left!20573 Conc!8811) (right!20903 Conc!8811) (csize!17852 Int) (cheight!9022 Int)) (Leaf!12962 (xs!11753 IArray!17627) (csize!17853 Int)) (Empty!8811) )
))
(declare-datatypes ((BalanceConc!17350 0))(
  ( (BalanceConc!17351 (c!361892 Conc!8811)) )
))
(declare-datatypes ((tuple2!26860 0))(
  ( (tuple2!26861 (_1!15940 BalanceConc!17350) (_2!15940 BalanceConc!17348)) )
))
(declare-fun lt!846445 () tuple2!26860)

(declare-fun suffix!886 () List!27216)

(declare-datatypes ((tuple2!26862 0))(
  ( (tuple2!26863 (_1!15941 List!27217) (_2!15941 List!27216)) )
))
(declare-fun list!10569 (BalanceConc!17350) List!27217)

(assert (=> b!2280393 (= res!974686 (= (tuple2!26863 (list!10569 (_1!15940 lt!846445)) (list!10568 (_2!15940 lt!846445))) (tuple2!26863 tokens!456 suffix!886)))))

(declare-fun lex!1767 (LexerInterface!3928 List!27218 BalanceConc!17348) tuple2!26860)

(declare-fun seqFromList!3035 (List!27216) BalanceConc!17348)

(assert (=> b!2280393 (= lt!846445 (lex!1767 thiss!16613 rules!1750 (seqFromList!3035 input!1722)))))

(declare-fun b!2280394 () Bool)

(assert (=> b!2280394 (= e!1460734 e!1460758)))

(declare-fun res!974688 () Bool)

(assert (=> b!2280394 (=> (not res!974688) (not e!1460758))))

(assert (=> b!2280394 (= res!974688 e!1460745)))

(declare-fun res!974696 () Bool)

(assert (=> b!2280394 (=> res!974696 e!1460745)))

(assert (=> b!2280394 (= res!974696 lt!846447)))

(declare-fun isEmpty!15400 (List!27217) Bool)

(assert (=> b!2280394 (= lt!846447 (isEmpty!15400 tokens!456))))

(assert (= (and start!223364 res!974687) b!2280385))

(assert (= (and b!2280385 res!974697) b!2280383))

(assert (= (and b!2280383 res!974684) b!2280376))

(assert (= (and b!2280376 res!974694) b!2280387))

(assert (= (and b!2280387 res!974695) b!2280393))

(assert (= (and b!2280393 res!974686) b!2280394))

(assert (= (and b!2280394 (not res!974696)) b!2280391))

(assert (= (and b!2280394 res!974688) b!2280370))

(assert (= (and b!2280370 (not res!974693)) b!2280364))

(assert (= (and b!2280370 res!974683) b!2280377))

(assert (= (and b!2280377 res!974692) b!2280382))

(assert (= (and b!2280382 res!974690) b!2280392))

(assert (= (and b!2280392 res!974682) b!2280388))

(assert (= (and b!2280392 (not res!974691)) b!2280378))

(assert (= (and b!2280378 (not res!974698)) b!2280381))

(assert (= (and b!2280381 (not res!974685)) b!2280371))

(assert (= (and b!2280371 (not res!974689)) b!2280367))

(assert (= (and b!2280367 (not res!974681)) b!2280389))

(assert (= (and start!223364 ((_ is Cons!27122) input!1722)) b!2280380))

(assert (= b!2280375 b!2280363))

(assert (= start!223364 b!2280375))

(assert (= (and start!223364 ((_ is Cons!27122) suffix!886)) b!2280366))

(assert (= (and start!223364 ((_ is Cons!27122) otherP!12)) b!2280379))

(assert (= b!2280390 b!2280374))

(assert (= b!2280368 b!2280390))

(assert (= (and start!223364 ((_ is Cons!27124) rules!1750)) b!2280368))

(assert (= b!2280386 b!2280369))

(assert (= start!223364 b!2280386))

(assert (= b!2280372 b!2280384))

(assert (= b!2280365 b!2280372))

(assert (= b!2280373 b!2280365))

(assert (= (and start!223364 ((_ is Cons!27123) tokens!456)) b!2280373))

(declare-fun m!2708407 () Bool)

(assert (=> b!2280394 m!2708407))

(declare-fun m!2708409 () Bool)

(assert (=> b!2280372 m!2708409))

(declare-fun m!2708411 () Bool)

(assert (=> b!2280372 m!2708411))

(declare-fun m!2708413 () Bool)

(assert (=> b!2280383 m!2708413))

(declare-fun m!2708415 () Bool)

(assert (=> b!2280375 m!2708415))

(declare-fun m!2708417 () Bool)

(assert (=> b!2280375 m!2708417))

(declare-fun m!2708419 () Bool)

(assert (=> b!2280390 m!2708419))

(declare-fun m!2708421 () Bool)

(assert (=> b!2280390 m!2708421))

(declare-fun m!2708423 () Bool)

(assert (=> b!2280389 m!2708423))

(declare-fun m!2708425 () Bool)

(assert (=> b!2280389 m!2708425))

(declare-fun m!2708427 () Bool)

(assert (=> b!2280392 m!2708427))

(declare-fun m!2708429 () Bool)

(assert (=> b!2280392 m!2708429))

(declare-fun m!2708431 () Bool)

(assert (=> b!2280377 m!2708431))

(declare-fun m!2708433 () Bool)

(assert (=> b!2280376 m!2708433))

(declare-fun m!2708435 () Bool)

(assert (=> b!2280373 m!2708435))

(declare-fun m!2708437 () Bool)

(assert (=> b!2280371 m!2708437))

(assert (=> b!2280371 m!2708437))

(declare-fun m!2708439 () Bool)

(assert (=> b!2280371 m!2708439))

(declare-fun m!2708441 () Bool)

(assert (=> b!2280386 m!2708441))

(declare-fun m!2708443 () Bool)

(assert (=> b!2280386 m!2708443))

(declare-fun m!2708445 () Bool)

(assert (=> b!2280388 m!2708445))

(assert (=> b!2280388 m!2708445))

(declare-fun m!2708447 () Bool)

(assert (=> b!2280388 m!2708447))

(assert (=> b!2280388 m!2708447))

(declare-fun m!2708449 () Bool)

(assert (=> b!2280388 m!2708449))

(assert (=> b!2280388 m!2708449))

(declare-fun m!2708451 () Bool)

(assert (=> b!2280388 m!2708451))

(declare-fun m!2708453 () Bool)

(assert (=> b!2280387 m!2708453))

(assert (=> b!2280364 m!2708445))

(declare-fun m!2708455 () Bool)

(assert (=> b!2280365 m!2708455))

(assert (=> b!2280391 m!2708445))

(assert (=> b!2280391 m!2708445))

(assert (=> b!2280391 m!2708447))

(assert (=> b!2280391 m!2708447))

(declare-fun m!2708457 () Bool)

(assert (=> b!2280391 m!2708457))

(declare-fun m!2708459 () Bool)

(assert (=> b!2280391 m!2708459))

(declare-fun m!2708461 () Bool)

(assert (=> b!2280367 m!2708461))

(declare-fun m!2708463 () Bool)

(assert (=> b!2280367 m!2708463))

(declare-fun m!2708465 () Bool)

(assert (=> b!2280367 m!2708465))

(assert (=> b!2280367 m!2708459))

(declare-fun m!2708467 () Bool)

(assert (=> b!2280367 m!2708467))

(declare-fun m!2708469 () Bool)

(assert (=> b!2280367 m!2708469))

(declare-fun m!2708471 () Bool)

(assert (=> b!2280367 m!2708471))

(declare-fun m!2708473 () Bool)

(assert (=> b!2280367 m!2708473))

(assert (=> b!2280367 m!2708467))

(declare-fun m!2708475 () Bool)

(assert (=> b!2280367 m!2708475))

(assert (=> b!2280367 m!2708471))

(declare-fun m!2708477 () Bool)

(assert (=> b!2280393 m!2708477))

(declare-fun m!2708479 () Bool)

(assert (=> b!2280393 m!2708479))

(declare-fun m!2708481 () Bool)

(assert (=> b!2280393 m!2708481))

(assert (=> b!2280393 m!2708481))

(declare-fun m!2708483 () Bool)

(assert (=> b!2280393 m!2708483))

(declare-fun m!2708485 () Bool)

(assert (=> b!2280378 m!2708485))

(declare-fun m!2708487 () Bool)

(assert (=> b!2280378 m!2708487))

(declare-fun m!2708489 () Bool)

(assert (=> b!2280378 m!2708489))

(declare-fun m!2708491 () Bool)

(assert (=> b!2280378 m!2708491))

(declare-fun m!2708493 () Bool)

(assert (=> b!2280385 m!2708493))

(check-sat (not b!2280392) (not b!2280367) (not b!2280376) b_and!180089 (not b_next!68823) (not b!2280373) (not b!2280391) b_and!180081 (not b!2280365) (not b!2280387) (not b!2280388) (not b!2280364) (not b!2280390) (not b_next!68825) (not b_next!68819) (not b!2280385) (not b!2280371) (not b!2280386) b_and!180091 (not b!2280375) (not b_next!68817) (not b!2280389) (not b_next!68813) (not b!2280394) b_and!180083 (not b!2280380) (not b!2280383) b_and!180085 (not b!2280368) (not b!2280378) (not b!2280393) b_and!180095 (not b!2280372) b_and!180087 (not b_next!68821) (not b_next!68827) (not b_next!68815) (not b!2280377) tp_is_empty!10579 (not b!2280366) (not b!2280379) b_and!180093)
(check-sat b_and!180091 (not b_next!68817) (not b_next!68813) b_and!180089 b_and!180083 (not b_next!68823) b_and!180081 b_and!180085 b_and!180093 (not b_next!68825) (not b_next!68819) b_and!180095 b_and!180087 (not b_next!68821) (not b_next!68827) (not b_next!68815))
