; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!226846 () Bool)

(assert start!226846)

(declare-fun b!2304441 () Bool)

(declare-fun b_free!69597 () Bool)

(declare-fun b_next!70301 () Bool)

(assert (=> b!2304441 (= b_free!69597 (not b_next!70301))))

(declare-fun tp!731073 () Bool)

(declare-fun b_and!183777 () Bool)

(assert (=> b!2304441 (= tp!731073 b_and!183777)))

(declare-fun b_free!69599 () Bool)

(declare-fun b_next!70303 () Bool)

(assert (=> b!2304441 (= b_free!69599 (not b_next!70303))))

(declare-fun tp!731072 () Bool)

(declare-fun b_and!183779 () Bool)

(assert (=> b!2304441 (= tp!731072 b_and!183779)))

(declare-fun b!2304422 () Bool)

(declare-fun b_free!69601 () Bool)

(declare-fun b_next!70305 () Bool)

(assert (=> b!2304422 (= b_free!69601 (not b_next!70305))))

(declare-fun tp!731064 () Bool)

(declare-fun b_and!183781 () Bool)

(assert (=> b!2304422 (= tp!731064 b_and!183781)))

(declare-fun b_free!69603 () Bool)

(declare-fun b_next!70307 () Bool)

(assert (=> b!2304422 (= b_free!69603 (not b_next!70307))))

(declare-fun tp!731081 () Bool)

(declare-fun b_and!183783 () Bool)

(assert (=> b!2304422 (= tp!731081 b_and!183783)))

(declare-fun b!2304409 () Bool)

(declare-fun b_free!69605 () Bool)

(declare-fun b_next!70309 () Bool)

(assert (=> b!2304409 (= b_free!69605 (not b_next!70309))))

(declare-fun tp!731077 () Bool)

(declare-fun b_and!183785 () Bool)

(assert (=> b!2304409 (= tp!731077 b_and!183785)))

(declare-fun b_free!69607 () Bool)

(declare-fun b_next!70311 () Bool)

(assert (=> b!2304409 (= b_free!69607 (not b_next!70311))))

(declare-fun tp!731066 () Bool)

(declare-fun b_and!183787 () Bool)

(assert (=> b!2304409 (= tp!731066 b_and!183787)))

(declare-fun b!2304443 () Bool)

(declare-fun b_free!69609 () Bool)

(declare-fun b_next!70313 () Bool)

(assert (=> b!2304443 (= b_free!69609 (not b_next!70313))))

(declare-fun tp!731074 () Bool)

(declare-fun b_and!183789 () Bool)

(assert (=> b!2304443 (= tp!731074 b_and!183789)))

(declare-fun b_free!69611 () Bool)

(declare-fun b_next!70315 () Bool)

(assert (=> b!2304443 (= b_free!69611 (not b_next!70315))))

(declare-fun tp!731071 () Bool)

(declare-fun b_and!183791 () Bool)

(assert (=> b!2304443 (= tp!731071 b_and!183791)))

(declare-fun e!1476710 () Bool)

(assert (=> b!2304409 (= e!1476710 (and tp!731077 tp!731066))))

(declare-fun b!2304411 () Bool)

(declare-fun e!1476703 () Bool)

(declare-datatypes ((List!27515 0))(
  ( (Nil!27421) (Cons!27421 (h!32822 (_ BitVec 16)) (t!206219 List!27515)) )
))
(declare-datatypes ((TokenValue!4558 0))(
  ( (FloatLiteralValue!9116 (text!32351 List!27515)) (TokenValueExt!4557 (__x!18176 Int)) (Broken!22790 (value!139081 List!27515)) (Object!4651) (End!4558) (Def!4558) (Underscore!4558) (Match!4558) (Else!4558) (Error!4558) (Case!4558) (If!4558) (Extends!4558) (Abstract!4558) (Class!4558) (Val!4558) (DelimiterValue!9116 (del!4618 List!27515)) (KeywordValue!4564 (value!139082 List!27515)) (CommentValue!9116 (value!139083 List!27515)) (WhitespaceValue!9116 (value!139084 List!27515)) (IndentationValue!4558 (value!139085 List!27515)) (String!29895) (Int32!4558) (Broken!22791 (value!139086 List!27515)) (Boolean!4559) (Unit!40328) (OperatorValue!4561 (op!4618 List!27515)) (IdentifierValue!9116 (value!139087 List!27515)) (IdentifierValue!9117 (value!139088 List!27515)) (WhitespaceValue!9117 (value!139089 List!27515)) (True!9116) (False!9116) (Broken!22792 (value!139090 List!27515)) (Broken!22793 (value!139091 List!27515)) (True!9117) (RightBrace!4558) (RightBracket!4558) (Colon!4558) (Null!4558) (Comma!4558) (LeftBracket!4558) (False!9117) (LeftBrace!4558) (ImaginaryLiteralValue!4558 (text!32352 List!27515)) (StringLiteralValue!13674 (value!139092 List!27515)) (EOFValue!4558 (value!139093 List!27515)) (IdentValue!4558 (value!139094 List!27515)) (DelimiterValue!9117 (value!139095 List!27515)) (DedentValue!4558 (value!139096 List!27515)) (NewLineValue!4558 (value!139097 List!27515)) (IntegerValue!13674 (value!139098 (_ BitVec 32)) (text!32353 List!27515)) (IntegerValue!13675 (value!139099 Int) (text!32354 List!27515)) (Times!4558) (Or!4558) (Equal!4558) (Minus!4558) (Broken!22794 (value!139100 List!27515)) (And!4558) (Div!4558) (LessEqual!4558) (Mod!4558) (Concat!11302) (Not!4558) (Plus!4558) (SpaceValue!4558 (value!139101 List!27515)) (IntegerValue!13676 (value!139102 Int) (text!32355 List!27515)) (StringLiteralValue!13675 (text!32356 List!27515)) (FloatLiteralValue!9117 (text!32357 List!27515)) (BytesLiteralValue!4558 (value!139103 List!27515)) (CommentValue!9117 (value!139104 List!27515)) (StringLiteralValue!13676 (value!139105 List!27515)) (ErrorTokenValue!4558 (msg!4619 List!27515)) )
))
(declare-datatypes ((C!13634 0))(
  ( (C!13635 (val!7865 Int)) )
))
(declare-datatypes ((List!27516 0))(
  ( (Nil!27422) (Cons!27422 (h!32823 C!13634) (t!206220 List!27516)) )
))
(declare-datatypes ((IArray!17885 0))(
  ( (IArray!17886 (innerList!9000 List!27516)) )
))
(declare-datatypes ((Conc!8940 0))(
  ( (Node!8940 (left!20779 Conc!8940) (right!21109 Conc!8940) (csize!18110 Int) (cheight!9151 Int)) (Leaf!13124 (xs!11882 IArray!17885) (csize!18111 Int)) (Empty!8940) )
))
(declare-datatypes ((BalanceConc!17608 0))(
  ( (BalanceConc!17609 (c!365359 Conc!8940)) )
))
(declare-datatypes ((String!29896 0))(
  ( (String!29897 (value!139106 String)) )
))
(declare-datatypes ((Regex!6744 0))(
  ( (ElementMatch!6744 (c!365360 C!13634)) (Concat!11303 (regOne!14000 Regex!6744) (regTwo!14000 Regex!6744)) (EmptyExpr!6744) (Star!6744 (reg!7073 Regex!6744)) (EmptyLang!6744) (Union!6744 (regOne!14001 Regex!6744) (regTwo!14001 Regex!6744)) )
))
(declare-datatypes ((TokenValueInjection!8656 0))(
  ( (TokenValueInjection!8657 (toValue!6210 Int) (toChars!6069 Int)) )
))
(declare-datatypes ((Rule!8592 0))(
  ( (Rule!8593 (regex!4396 Regex!6744) (tag!4886 String!29896) (isSeparator!4396 Bool) (transformation!4396 TokenValueInjection!8656)) )
))
(declare-fun r!2363 () Rule!8592)

(declare-datatypes ((Token!8270 0))(
  ( (Token!8271 (value!139107 TokenValue!4558) (rule!6744 Rule!8592) (size!21635 Int) (originalCharacters!5166 List!27516)) )
))
(declare-datatypes ((List!27517 0))(
  ( (Nil!27423) (Cons!27423 (h!32824 Token!8270) (t!206221 List!27517)) )
))
(declare-fun tokens!456 () List!27517)

(declare-fun matchR!3001 (Regex!6744 List!27516) Bool)

(declare-fun list!10810 (BalanceConc!17608) List!27516)

(declare-fun charsOf!2784 (Token!8270) BalanceConc!17608)

(declare-fun head!5045 (List!27517) Token!8270)

(assert (=> b!2304411 (= e!1476703 (not (matchR!3001 (regex!4396 r!2363) (list!10810 (charsOf!2784 (head!5045 tokens!456))))))))

(declare-fun b!2304412 () Bool)

(declare-datatypes ((Unit!40329 0))(
  ( (Unit!40330) )
))
(declare-fun e!1476715 () Unit!40329)

(declare-fun Unit!40331 () Unit!40329)

(assert (=> b!2304412 (= e!1476715 Unit!40331)))

(declare-fun lt!854691 () Unit!40329)

(declare-fun otherR!12 () Rule!8592)

(declare-datatypes ((List!27518 0))(
  ( (Nil!27424) (Cons!27424 (h!32825 Rule!8592) (t!206222 List!27518)) )
))
(declare-fun rules!1750 () List!27518)

(declare-fun lemmaSameIndexThenSameElement!189 (List!27518 Rule!8592 Rule!8592) Unit!40329)

(assert (=> b!2304412 (= lt!854691 (lemmaSameIndexThenSameElement!189 rules!1750 r!2363 otherR!12))))

(assert (=> b!2304412 false))

(declare-fun b!2304413 () Bool)

(declare-fun e!1476704 () Bool)

(declare-fun tp_is_empty!10709 () Bool)

(declare-fun tp!731080 () Bool)

(assert (=> b!2304413 (= e!1476704 (and tp_is_empty!10709 tp!731080))))

(declare-fun e!1476725 () Bool)

(declare-fun b!2304414 () Bool)

(declare-fun tp!731069 () Bool)

(declare-fun e!1476714 () Bool)

(declare-fun inv!37061 (String!29896) Bool)

(declare-fun inv!37064 (TokenValueInjection!8656) Bool)

(assert (=> b!2304414 (= e!1476725 (and tp!731069 (inv!37061 (tag!4886 (h!32825 rules!1750))) (inv!37064 (transformation!4396 (h!32825 rules!1750))) e!1476714))))

(declare-fun b!2304415 () Bool)

(declare-fun e!1476708 () Bool)

(declare-fun e!1476728 () Bool)

(assert (=> b!2304415 (= e!1476708 e!1476728)))

(declare-fun res!985155 () Bool)

(assert (=> b!2304415 (=> res!985155 e!1476728)))

(declare-fun lt!854686 () Int)

(declare-fun lt!854690 () List!27516)

(declare-fun lt!854683 () Int)

(declare-fun input!1722 () List!27516)

(assert (=> b!2304415 (= res!985155 (or (<= lt!854683 lt!854686) (not (= input!1722 lt!854690))))))

(declare-fun lt!854698 () List!27516)

(declare-fun size!21636 (List!27516) Int)

(assert (=> b!2304415 (= lt!854686 (size!21636 lt!854698))))

(declare-fun otherP!12 () List!27516)

(assert (=> b!2304415 (= lt!854683 (size!21636 otherP!12))))

(declare-datatypes ((tuple2!27316 0))(
  ( (tuple2!27317 (_1!16168 Token!8270) (_2!16168 List!27516)) )
))
(declare-fun lt!854689 () tuple2!27316)

(declare-fun lt!854681 () List!27516)

(assert (=> b!2304415 (= (_2!16168 lt!854689) lt!854681)))

(declare-fun lt!854692 () Unit!40329)

(declare-fun lemmaSamePrefixThenSameSuffix!1067 (List!27516 List!27516 List!27516 List!27516 List!27516) Unit!40329)

(assert (=> b!2304415 (= lt!854692 (lemmaSamePrefixThenSameSuffix!1067 lt!854698 (_2!16168 lt!854689) lt!854698 lt!854681 input!1722))))

(declare-fun getSuffix!1165 (List!27516 List!27516) List!27516)

(assert (=> b!2304415 (= lt!854681 (getSuffix!1165 input!1722 lt!854698))))

(declare-fun isPrefix!2386 (List!27516 List!27516) Bool)

(assert (=> b!2304415 (isPrefix!2386 lt!854698 lt!854690)))

(declare-fun ++!6714 (List!27516 List!27516) List!27516)

(assert (=> b!2304415 (= lt!854690 (++!6714 lt!854698 (_2!16168 lt!854689)))))

(declare-fun lt!854685 () Unit!40329)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1579 (List!27516 List!27516) Unit!40329)

(assert (=> b!2304415 (= lt!854685 (lemmaConcatTwoListThenFirstIsPrefix!1579 lt!854698 (_2!16168 lt!854689)))))

(assert (=> b!2304415 (= lt!854698 (list!10810 (charsOf!2784 (h!32824 tokens!456))))))

(declare-datatypes ((Option!5394 0))(
  ( (None!5393) (Some!5393 (v!30495 tuple2!27316)) )
))
(declare-fun lt!854694 () Option!5394)

(declare-fun get!8266 (Option!5394) tuple2!27316)

(assert (=> b!2304415 (= lt!854689 (get!8266 lt!854694))))

(declare-datatypes ((LexerInterface!3993 0))(
  ( (LexerInterfaceExt!3990 (__x!18177 Int)) (Lexer!3991) )
))
(declare-fun thiss!16613 () LexerInterface!3993)

(declare-fun maxPrefix!2249 (LexerInterface!3993 List!27518 List!27516) Option!5394)

(assert (=> b!2304415 (= lt!854694 (maxPrefix!2249 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2304416 () Bool)

(declare-fun res!985154 () Bool)

(declare-fun e!1476720 () Bool)

(assert (=> b!2304416 (=> (not res!985154) (not e!1476720))))

(declare-fun rulesInvariant!3495 (LexerInterface!3993 List!27518) Bool)

(assert (=> b!2304416 (= res!985154 (rulesInvariant!3495 thiss!16613 rules!1750))))

(declare-fun e!1476716 () Bool)

(declare-fun b!2304417 () Bool)

(declare-fun e!1476712 () Bool)

(declare-fun tp!731078 () Bool)

(declare-fun inv!37065 (Token!8270) Bool)

(assert (=> b!2304417 (= e!1476716 (and (inv!37065 (h!32824 tokens!456)) e!1476712 tp!731078))))

(declare-fun b!2304418 () Bool)

(declare-fun e!1476706 () Bool)

(declare-fun tp!731065 () Bool)

(assert (=> b!2304418 (= e!1476706 (and tp_is_empty!10709 tp!731065))))

(declare-fun b!2304419 () Bool)

(declare-fun e!1476702 () Bool)

(declare-fun e!1476711 () Bool)

(assert (=> b!2304419 (= e!1476702 (not e!1476711))))

(declare-fun res!985160 () Bool)

(assert (=> b!2304419 (=> res!985160 e!1476711)))

(assert (=> b!2304419 (= res!985160 e!1476703)))

(declare-fun res!985153 () Bool)

(assert (=> b!2304419 (=> (not res!985153) (not e!1476703))))

(declare-fun lt!854687 () Bool)

(assert (=> b!2304419 (= res!985153 (not lt!854687))))

(declare-fun ruleValid!1486 (LexerInterface!3993 Rule!8592) Bool)

(assert (=> b!2304419 (ruleValid!1486 thiss!16613 r!2363)))

(declare-fun lt!854699 () Unit!40329)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!891 (LexerInterface!3993 Rule!8592 List!27518) Unit!40329)

(assert (=> b!2304419 (= lt!854699 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!891 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2304420 () Bool)

(declare-fun res!985164 () Bool)

(assert (=> b!2304420 (=> (not res!985164) (not e!1476720))))

(declare-fun contains!4784 (List!27518 Rule!8592) Bool)

(assert (=> b!2304420 (= res!985164 (contains!4784 rules!1750 r!2363))))

(declare-fun b!2304421 () Bool)

(declare-fun res!985163 () Bool)

(assert (=> b!2304421 (=> (not res!985163) (not e!1476702))))

(assert (=> b!2304421 (= res!985163 (not (= r!2363 otherR!12)))))

(assert (=> b!2304422 (= e!1476714 (and tp!731064 tp!731081))))

(declare-fun b!2304423 () Bool)

(declare-fun Unit!40332 () Unit!40329)

(assert (=> b!2304423 (= e!1476715 Unit!40332)))

(declare-fun b!2304424 () Bool)

(declare-fun res!985162 () Bool)

(assert (=> b!2304424 (=> (not res!985162) (not e!1476720))))

(assert (=> b!2304424 (= res!985162 (contains!4784 rules!1750 otherR!12))))

(declare-fun res!985166 () Bool)

(assert (=> start!226846 (=> (not res!985166) (not e!1476720))))

(assert (=> start!226846 (= res!985166 (is-Lexer!3991 thiss!16613))))

(assert (=> start!226846 e!1476720))

(assert (=> start!226846 true))

(declare-fun e!1476717 () Bool)

(assert (=> start!226846 e!1476717))

(declare-fun e!1476727 () Bool)

(assert (=> start!226846 e!1476727))

(assert (=> start!226846 e!1476706))

(assert (=> start!226846 e!1476704))

(declare-fun e!1476731 () Bool)

(assert (=> start!226846 e!1476731))

(declare-fun e!1476724 () Bool)

(assert (=> start!226846 e!1476724))

(assert (=> start!226846 e!1476716))

(declare-fun b!2304410 () Bool)

(declare-fun e!1476723 () Bool)

(assert (=> b!2304410 (= e!1476723 e!1476708)))

(declare-fun res!985167 () Bool)

(assert (=> b!2304410 (=> res!985167 e!1476708)))

(assert (=> b!2304410 (= res!985167 (is-Nil!27423 tokens!456))))

(declare-fun lt!854695 () Unit!40329)

(assert (=> b!2304410 (= lt!854695 e!1476715)))

(declare-fun c!365358 () Bool)

(declare-fun lt!854693 () Int)

(declare-fun lt!854697 () Int)

(assert (=> b!2304410 (= c!365358 (= lt!854693 lt!854697))))

(declare-fun b!2304425 () Bool)

(declare-fun tp!731070 () Bool)

(assert (=> b!2304425 (= e!1476717 (and tp_is_empty!10709 tp!731070))))

(declare-fun b!2304426 () Bool)

(declare-fun e!1476729 () Bool)

(declare-fun tp!731068 () Bool)

(declare-fun e!1476719 () Bool)

(assert (=> b!2304426 (= e!1476729 (and tp!731068 (inv!37061 (tag!4886 (rule!6744 (h!32824 tokens!456)))) (inv!37064 (transformation!4396 (rule!6744 (h!32824 tokens!456)))) e!1476719))))

(declare-fun b!2304427 () Bool)

(declare-fun res!985159 () Bool)

(assert (=> b!2304427 (=> (not res!985159) (not e!1476702))))

(assert (=> b!2304427 (= res!985159 (isPrefix!2386 otherP!12 input!1722))))

(declare-fun b!2304428 () Bool)

(declare-fun e!1476705 () Bool)

(assert (=> b!2304428 (= e!1476720 e!1476705)))

(declare-fun res!985152 () Bool)

(assert (=> b!2304428 (=> (not res!985152) (not e!1476705))))

(declare-fun suffix!886 () List!27516)

(declare-datatypes ((IArray!17887 0))(
  ( (IArray!17888 (innerList!9001 List!27517)) )
))
(declare-datatypes ((Conc!8941 0))(
  ( (Node!8941 (left!20780 Conc!8941) (right!21110 Conc!8941) (csize!18112 Int) (cheight!9152 Int)) (Leaf!13125 (xs!11883 IArray!17887) (csize!18113 Int)) (Empty!8941) )
))
(declare-datatypes ((BalanceConc!17610 0))(
  ( (BalanceConc!17611 (c!365361 Conc!8941)) )
))
(declare-datatypes ((tuple2!27318 0))(
  ( (tuple2!27319 (_1!16169 BalanceConc!17610) (_2!16169 BalanceConc!17608)) )
))
(declare-fun lt!854688 () tuple2!27318)

(declare-datatypes ((tuple2!27320 0))(
  ( (tuple2!27321 (_1!16170 List!27517) (_2!16170 List!27516)) )
))
(declare-fun list!10811 (BalanceConc!17610) List!27517)

(assert (=> b!2304428 (= res!985152 (= (tuple2!27321 (list!10811 (_1!16169 lt!854688)) (list!10810 (_2!16169 lt!854688))) (tuple2!27321 tokens!456 suffix!886)))))

(declare-fun lex!1832 (LexerInterface!3993 List!27518 BalanceConc!17608) tuple2!27318)

(declare-fun seqFromList!3100 (List!27516) BalanceConc!17608)

(assert (=> b!2304428 (= lt!854688 (lex!1832 thiss!16613 rules!1750 (seqFromList!3100 input!1722)))))

(declare-fun b!2304429 () Bool)

(declare-fun res!985156 () Bool)

(assert (=> b!2304429 (=> (not res!985156) (not e!1476720))))

(declare-fun isEmpty!15669 (List!27518) Bool)

(assert (=> b!2304429 (= res!985156 (not (isEmpty!15669 rules!1750)))))

(declare-fun b!2304430 () Bool)

(assert (=> b!2304430 (= e!1476711 e!1476723)))

(declare-fun res!985165 () Bool)

(assert (=> b!2304430 (=> res!985165 e!1476723)))

(assert (=> b!2304430 (= res!985165 (> lt!854693 lt!854697))))

(declare-fun getIndex!409 (List!27518 Rule!8592) Int)

(assert (=> b!2304430 (= lt!854697 (getIndex!409 rules!1750 otherR!12))))

(assert (=> b!2304430 (= lt!854693 (getIndex!409 rules!1750 r!2363))))

(assert (=> b!2304430 (ruleValid!1486 thiss!16613 otherR!12)))

(declare-fun lt!854684 () Unit!40329)

(assert (=> b!2304430 (= lt!854684 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!891 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2304431 () Bool)

(declare-fun tp!731075 () Bool)

(declare-fun inv!21 (TokenValue!4558) Bool)

(assert (=> b!2304431 (= e!1476712 (and (inv!21 (value!139107 (h!32824 tokens!456))) e!1476729 tp!731075))))

(declare-fun b!2304432 () Bool)

(declare-fun tp!731079 () Bool)

(assert (=> b!2304432 (= e!1476727 (and tp!731079 (inv!37061 (tag!4886 otherR!12)) (inv!37064 (transformation!4396 otherR!12)) e!1476710))))

(declare-fun b!2304433 () Bool)

(declare-fun e!1476721 () Bool)

(declare-fun size!21637 (BalanceConc!17608) Int)

(assert (=> b!2304433 (= e!1476721 (<= (size!21637 (charsOf!2784 (head!5045 tokens!456))) (size!21636 otherP!12)))))

(declare-fun b!2304434 () Bool)

(declare-fun tp!731067 () Bool)

(assert (=> b!2304434 (= e!1476731 (and e!1476725 tp!731067))))

(declare-fun b!2304435 () Bool)

(declare-fun res!985169 () Bool)

(assert (=> b!2304435 (=> (not res!985169) (not e!1476702))))

(declare-fun e!1476713 () Bool)

(assert (=> b!2304435 (= res!985169 e!1476713)))

(declare-fun res!985168 () Bool)

(assert (=> b!2304435 (=> res!985168 e!1476713)))

(assert (=> b!2304435 (= res!985168 lt!854687)))

(declare-fun b!2304436 () Bool)

(declare-fun res!985161 () Bool)

(assert (=> b!2304436 (=> res!985161 e!1476728)))

(declare-fun isEmpty!15670 (List!27516) Bool)

(assert (=> b!2304436 (= res!985161 (isEmpty!15670 lt!854698))))

(declare-fun e!1476718 () Bool)

(declare-fun b!2304437 () Bool)

(declare-fun tp!731076 () Bool)

(assert (=> b!2304437 (= e!1476724 (and tp!731076 (inv!37061 (tag!4886 r!2363)) (inv!37064 (transformation!4396 r!2363)) e!1476718))))

(declare-fun b!2304438 () Bool)

(declare-fun e!1476726 () Bool)

(assert (=> b!2304438 (= e!1476726 (matchR!3001 (regex!4396 r!2363) lt!854698))))

(declare-fun b!2304439 () Bool)

(assert (=> b!2304439 (= e!1476728 e!1476726)))

(declare-fun res!985170 () Bool)

(assert (=> b!2304439 (=> res!985170 e!1476726)))

(declare-fun lt!854682 () BalanceConc!17608)

(declare-fun apply!6658 (TokenValueInjection!8656 BalanceConc!17608) TokenValue!4558)

(assert (=> b!2304439 (= res!985170 (not (= lt!854694 (Some!5393 (tuple2!27317 (Token!8271 (apply!6658 (transformation!4396 r!2363) lt!854682) r!2363 lt!854686 lt!854698) (_2!16168 lt!854689))))))))

(declare-fun lt!854696 () Unit!40329)

(declare-fun lemmaSemiInverse!1079 (TokenValueInjection!8656 BalanceConc!17608) Unit!40329)

(assert (=> b!2304439 (= lt!854696 (lemmaSemiInverse!1079 (transformation!4396 r!2363) lt!854682))))

(assert (=> b!2304439 (= lt!854682 (seqFromList!3100 lt!854698))))

(declare-fun b!2304440 () Bool)

(assert (=> b!2304440 (= e!1476705 e!1476702)))

(declare-fun res!985158 () Bool)

(assert (=> b!2304440 (=> (not res!985158) (not e!1476702))))

(assert (=> b!2304440 (= res!985158 e!1476721)))

(declare-fun res!985157 () Bool)

(assert (=> b!2304440 (=> res!985157 e!1476721)))

(assert (=> b!2304440 (= res!985157 lt!854687)))

(declare-fun isEmpty!15671 (List!27517) Bool)

(assert (=> b!2304440 (= lt!854687 (isEmpty!15671 tokens!456))))

(assert (=> b!2304441 (= e!1476718 (and tp!731073 tp!731072))))

(declare-fun b!2304442 () Bool)

(assert (=> b!2304442 (= e!1476713 (= (rule!6744 (head!5045 tokens!456)) r!2363))))

(assert (=> b!2304443 (= e!1476719 (and tp!731074 tp!731071))))

(assert (= (and start!226846 res!985166) b!2304429))

(assert (= (and b!2304429 res!985156) b!2304416))

(assert (= (and b!2304416 res!985154) b!2304420))

(assert (= (and b!2304420 res!985164) b!2304424))

(assert (= (and b!2304424 res!985162) b!2304428))

(assert (= (and b!2304428 res!985152) b!2304440))

(assert (= (and b!2304440 (not res!985157)) b!2304433))

(assert (= (and b!2304440 res!985158) b!2304435))

(assert (= (and b!2304435 (not res!985168)) b!2304442))

(assert (= (and b!2304435 res!985169) b!2304427))

(assert (= (and b!2304427 res!985159) b!2304421))

(assert (= (and b!2304421 res!985163) b!2304419))

(assert (= (and b!2304419 res!985153) b!2304411))

(assert (= (and b!2304419 (not res!985160)) b!2304430))

(assert (= (and b!2304430 (not res!985165)) b!2304410))

(assert (= (and b!2304410 c!365358) b!2304412))

(assert (= (and b!2304410 (not c!365358)) b!2304423))

(assert (= (and b!2304410 (not res!985167)) b!2304415))

(assert (= (and b!2304415 (not res!985155)) b!2304436))

(assert (= (and b!2304436 (not res!985161)) b!2304439))

(assert (= (and b!2304439 (not res!985170)) b!2304438))

(assert (= (and start!226846 (is-Cons!27422 input!1722)) b!2304425))

(assert (= b!2304432 b!2304409))

(assert (= start!226846 b!2304432))

(assert (= (and start!226846 (is-Cons!27422 suffix!886)) b!2304418))

(assert (= (and start!226846 (is-Cons!27422 otherP!12)) b!2304413))

(assert (= b!2304414 b!2304422))

(assert (= b!2304434 b!2304414))

(assert (= (and start!226846 (is-Cons!27424 rules!1750)) b!2304434))

(assert (= b!2304437 b!2304441))

(assert (= start!226846 b!2304437))

(assert (= b!2304426 b!2304443))

(assert (= b!2304431 b!2304426))

(assert (= b!2304417 b!2304431))

(assert (= (and start!226846 (is-Cons!27423 tokens!456)) b!2304417))

(declare-fun m!2731631 () Bool)

(assert (=> b!2304414 m!2731631))

(declare-fun m!2731633 () Bool)

(assert (=> b!2304414 m!2731633))

(declare-fun m!2731635 () Bool)

(assert (=> b!2304442 m!2731635))

(declare-fun m!2731637 () Bool)

(assert (=> b!2304429 m!2731637))

(declare-fun m!2731639 () Bool)

(assert (=> b!2304440 m!2731639))

(declare-fun m!2731641 () Bool)

(assert (=> b!2304415 m!2731641))

(declare-fun m!2731643 () Bool)

(assert (=> b!2304415 m!2731643))

(declare-fun m!2731645 () Bool)

(assert (=> b!2304415 m!2731645))

(declare-fun m!2731647 () Bool)

(assert (=> b!2304415 m!2731647))

(declare-fun m!2731649 () Bool)

(assert (=> b!2304415 m!2731649))

(declare-fun m!2731651 () Bool)

(assert (=> b!2304415 m!2731651))

(declare-fun m!2731653 () Bool)

(assert (=> b!2304415 m!2731653))

(declare-fun m!2731655 () Bool)

(assert (=> b!2304415 m!2731655))

(declare-fun m!2731657 () Bool)

(assert (=> b!2304415 m!2731657))

(declare-fun m!2731659 () Bool)

(assert (=> b!2304415 m!2731659))

(declare-fun m!2731661 () Bool)

(assert (=> b!2304415 m!2731661))

(assert (=> b!2304415 m!2731655))

(declare-fun m!2731663 () Bool)

(assert (=> b!2304416 m!2731663))

(declare-fun m!2731665 () Bool)

(assert (=> b!2304424 m!2731665))

(declare-fun m!2731667 () Bool)

(assert (=> b!2304439 m!2731667))

(declare-fun m!2731669 () Bool)

(assert (=> b!2304439 m!2731669))

(declare-fun m!2731671 () Bool)

(assert (=> b!2304439 m!2731671))

(declare-fun m!2731673 () Bool)

(assert (=> b!2304420 m!2731673))

(declare-fun m!2731675 () Bool)

(assert (=> b!2304437 m!2731675))

(declare-fun m!2731677 () Bool)

(assert (=> b!2304437 m!2731677))

(declare-fun m!2731679 () Bool)

(assert (=> b!2304432 m!2731679))

(declare-fun m!2731681 () Bool)

(assert (=> b!2304432 m!2731681))

(declare-fun m!2731683 () Bool)

(assert (=> b!2304412 m!2731683))

(assert (=> b!2304433 m!2731635))

(assert (=> b!2304433 m!2731635))

(declare-fun m!2731685 () Bool)

(assert (=> b!2304433 m!2731685))

(assert (=> b!2304433 m!2731685))

(declare-fun m!2731687 () Bool)

(assert (=> b!2304433 m!2731687))

(assert (=> b!2304433 m!2731647))

(declare-fun m!2731689 () Bool)

(assert (=> b!2304438 m!2731689))

(declare-fun m!2731691 () Bool)

(assert (=> b!2304430 m!2731691))

(declare-fun m!2731693 () Bool)

(assert (=> b!2304430 m!2731693))

(declare-fun m!2731695 () Bool)

(assert (=> b!2304430 m!2731695))

(declare-fun m!2731697 () Bool)

(assert (=> b!2304430 m!2731697))

(declare-fun m!2731699 () Bool)

(assert (=> b!2304417 m!2731699))

(declare-fun m!2731701 () Bool)

(assert (=> b!2304428 m!2731701))

(declare-fun m!2731703 () Bool)

(assert (=> b!2304428 m!2731703))

(declare-fun m!2731705 () Bool)

(assert (=> b!2304428 m!2731705))

(assert (=> b!2304428 m!2731705))

(declare-fun m!2731707 () Bool)

(assert (=> b!2304428 m!2731707))

(declare-fun m!2731709 () Bool)

(assert (=> b!2304431 m!2731709))

(declare-fun m!2731711 () Bool)

(assert (=> b!2304419 m!2731711))

(declare-fun m!2731713 () Bool)

(assert (=> b!2304419 m!2731713))

(assert (=> b!2304411 m!2731635))

(assert (=> b!2304411 m!2731635))

(assert (=> b!2304411 m!2731685))

(assert (=> b!2304411 m!2731685))

(declare-fun m!2731715 () Bool)

(assert (=> b!2304411 m!2731715))

(assert (=> b!2304411 m!2731715))

(declare-fun m!2731717 () Bool)

(assert (=> b!2304411 m!2731717))

(declare-fun m!2731719 () Bool)

(assert (=> b!2304427 m!2731719))

(declare-fun m!2731721 () Bool)

(assert (=> b!2304436 m!2731721))

(declare-fun m!2731723 () Bool)

(assert (=> b!2304426 m!2731723))

(declare-fun m!2731725 () Bool)

(assert (=> b!2304426 m!2731725))

(push 1)

(assert (not b!2304432))

(assert (not b!2304426))

(assert (not b!2304440))

(assert (not b!2304411))

(assert (not b!2304439))

(assert (not b!2304433))

(assert (not b!2304414))

(assert (not b!2304417))

(assert (not b!2304418))

(assert b_and!183791)

(assert b_and!183779)

(assert (not b!2304416))

(assert (not b!2304412))

(assert (not b!2304427))

(assert (not b!2304442))

(assert (not b!2304425))

(assert (not b!2304430))

(assert (not b!2304431))

(assert (not b_next!70313))

(assert (not b_next!70309))

(assert (not b_next!70305))

(assert (not b_next!70315))

(assert (not b!2304420))

(assert b_and!183777)

(assert (not b!2304434))

(assert (not b_next!70307))

(assert (not b!2304428))

(assert b_and!183783)

(assert (not b_next!70303))

(assert (not b!2304436))

(assert (not b!2304415))

(assert (not b_next!70301))

(assert (not b!2304437))

(assert b_and!183789)

(assert (not b!2304419))

(assert (not b!2304413))

(assert b_and!183785)

(assert (not b!2304429))

(assert b_and!183781)

(assert tp_is_empty!10709)

(assert (not b!2304424))

(assert (not b!2304438))

(assert (not b_next!70311))

(assert b_and!183787)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!70313))

(assert (not b_next!70315))

(assert b_and!183783)

(assert (not b_next!70303))

(assert b_and!183785)

(assert b_and!183781)

(assert b_and!183791)

(assert b_and!183779)

(assert (not b_next!70309))

(assert (not b_next!70305))

(assert b_and!183777)

(assert (not b_next!70307))

(assert (not b_next!70301))

(assert b_and!183789)

(assert (not b_next!70311))

(assert b_and!183787)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!681788 () Bool)

(assert (=> d!681788 (= (head!5045 tokens!456) (h!32824 tokens!456))))

(assert (=> b!2304442 d!681788))

(declare-fun d!681790 () Bool)

(declare-fun lt!854759 () Bool)

(declare-fun content!3700 (List!27518) (Set Rule!8592))

(assert (=> d!681790 (= lt!854759 (set.member otherR!12 (content!3700 rules!1750)))))

(declare-fun e!1476831 () Bool)

(assert (=> d!681790 (= lt!854759 e!1476831)))

(declare-fun res!985238 () Bool)

(assert (=> d!681790 (=> (not res!985238) (not e!1476831))))

(assert (=> d!681790 (= res!985238 (is-Cons!27424 rules!1750))))

(assert (=> d!681790 (= (contains!4784 rules!1750 otherR!12) lt!854759)))

(declare-fun b!2304553 () Bool)

(declare-fun e!1476830 () Bool)

(assert (=> b!2304553 (= e!1476831 e!1476830)))

(declare-fun res!985239 () Bool)

(assert (=> b!2304553 (=> res!985239 e!1476830)))

(assert (=> b!2304553 (= res!985239 (= (h!32825 rules!1750) otherR!12))))

(declare-fun b!2304554 () Bool)

(assert (=> b!2304554 (= e!1476830 (contains!4784 (t!206222 rules!1750) otherR!12))))

(assert (= (and d!681790 res!985238) b!2304553))

(assert (= (and b!2304553 (not res!985239)) b!2304554))

(declare-fun m!2731823 () Bool)

(assert (=> d!681790 m!2731823))

(declare-fun m!2731825 () Bool)

(assert (=> d!681790 m!2731825))

(declare-fun m!2731827 () Bool)

(assert (=> b!2304554 m!2731827))

(assert (=> b!2304424 d!681790))

(declare-fun d!681792 () Bool)

(assert (=> d!681792 (= (inv!37061 (tag!4886 r!2363)) (= (mod (str.len (value!139106 (tag!4886 r!2363))) 2) 0))))

(assert (=> b!2304437 d!681792))

(declare-fun d!681794 () Bool)

(declare-fun res!985245 () Bool)

(declare-fun e!1476834 () Bool)

(assert (=> d!681794 (=> (not res!985245) (not e!1476834))))

(declare-fun semiInverseModEq!1789 (Int Int) Bool)

(assert (=> d!681794 (= res!985245 (semiInverseModEq!1789 (toChars!6069 (transformation!4396 r!2363)) (toValue!6210 (transformation!4396 r!2363))))))

(assert (=> d!681794 (= (inv!37064 (transformation!4396 r!2363)) e!1476834)))

(declare-fun b!2304557 () Bool)

(declare-fun equivClasses!1708 (Int Int) Bool)

(assert (=> b!2304557 (= e!1476834 (equivClasses!1708 (toChars!6069 (transformation!4396 r!2363)) (toValue!6210 (transformation!4396 r!2363))))))

(assert (= (and d!681794 res!985245) b!2304557))

(declare-fun m!2731829 () Bool)

(assert (=> d!681794 m!2731829))

(declare-fun m!2731831 () Bool)

(assert (=> b!2304557 m!2731831))

(assert (=> b!2304437 d!681794))

(declare-fun d!681796 () Bool)

(declare-fun res!985249 () Bool)

(declare-fun e!1476837 () Bool)

(assert (=> d!681796 (=> (not res!985249) (not e!1476837))))

(declare-fun rulesValid!1633 (LexerInterface!3993 List!27518) Bool)

(assert (=> d!681796 (= res!985249 (rulesValid!1633 thiss!16613 rules!1750))))

(assert (=> d!681796 (= (rulesInvariant!3495 thiss!16613 rules!1750) e!1476837)))

(declare-fun b!2304560 () Bool)

(declare-datatypes ((List!27523 0))(
  ( (Nil!27429) (Cons!27429 (h!32830 String!29896) (t!206299 List!27523)) )
))
(declare-fun noDuplicateTag!1631 (LexerInterface!3993 List!27518 List!27523) Bool)

(assert (=> b!2304560 (= e!1476837 (noDuplicateTag!1631 thiss!16613 rules!1750 Nil!27429))))

(assert (= (and d!681796 res!985249) b!2304560))

(declare-fun m!2731833 () Bool)

(assert (=> d!681796 m!2731833))

(declare-fun m!2731835 () Bool)

(assert (=> b!2304560 m!2731835))

(assert (=> b!2304416 d!681796))

(declare-fun d!681798 () Bool)

(declare-fun res!985256 () Bool)

(declare-fun e!1476840 () Bool)

(assert (=> d!681798 (=> (not res!985256) (not e!1476840))))

(assert (=> d!681798 (= res!985256 (not (isEmpty!15670 (originalCharacters!5166 (h!32824 tokens!456)))))))

(assert (=> d!681798 (= (inv!37065 (h!32824 tokens!456)) e!1476840)))

(declare-fun b!2304565 () Bool)

(declare-fun res!985257 () Bool)

(assert (=> b!2304565 (=> (not res!985257) (not e!1476840))))

(declare-fun dynLambda!11928 (Int TokenValue!4558) BalanceConc!17608)

(assert (=> b!2304565 (= res!985257 (= (originalCharacters!5166 (h!32824 tokens!456)) (list!10810 (dynLambda!11928 (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))) (value!139107 (h!32824 tokens!456))))))))

(declare-fun b!2304566 () Bool)

(assert (=> b!2304566 (= e!1476840 (= (size!21635 (h!32824 tokens!456)) (size!21636 (originalCharacters!5166 (h!32824 tokens!456)))))))

(assert (= (and d!681798 res!985256) b!2304565))

(assert (= (and b!2304565 res!985257) b!2304566))

(declare-fun b_lambda!73413 () Bool)

(assert (=> (not b_lambda!73413) (not b!2304565)))

(declare-fun t!206228 () Bool)

(declare-fun tb!137919 () Bool)

(assert (=> (and b!2304441 (= (toChars!6069 (transformation!4396 r!2363)) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456))))) t!206228) tb!137919))

(declare-fun b!2304571 () Bool)

(declare-fun e!1476843 () Bool)

(declare-fun tp!731138 () Bool)

(declare-fun inv!37068 (Conc!8940) Bool)

(assert (=> b!2304571 (= e!1476843 (and (inv!37068 (c!365359 (dynLambda!11928 (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))) (value!139107 (h!32824 tokens!456))))) tp!731138))))

(declare-fun result!168122 () Bool)

(declare-fun inv!37069 (BalanceConc!17608) Bool)

(assert (=> tb!137919 (= result!168122 (and (inv!37069 (dynLambda!11928 (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))) (value!139107 (h!32824 tokens!456)))) e!1476843))))

(assert (= tb!137919 b!2304571))

(declare-fun m!2731837 () Bool)

(assert (=> b!2304571 m!2731837))

(declare-fun m!2731839 () Bool)

(assert (=> tb!137919 m!2731839))

(assert (=> b!2304565 t!206228))

(declare-fun b_and!183809 () Bool)

(assert (= b_and!183779 (and (=> t!206228 result!168122) b_and!183809)))

(declare-fun tb!137921 () Bool)

(declare-fun t!206230 () Bool)

(assert (=> (and b!2304422 (= (toChars!6069 (transformation!4396 (h!32825 rules!1750))) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456))))) t!206230) tb!137921))

(declare-fun result!168126 () Bool)

(assert (= result!168126 result!168122))

(assert (=> b!2304565 t!206230))

(declare-fun b_and!183811 () Bool)

(assert (= b_and!183783 (and (=> t!206230 result!168126) b_and!183811)))

(declare-fun tb!137923 () Bool)

(declare-fun t!206232 () Bool)

(assert (=> (and b!2304409 (= (toChars!6069 (transformation!4396 otherR!12)) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456))))) t!206232) tb!137923))

(declare-fun result!168128 () Bool)

(assert (= result!168128 result!168122))

(assert (=> b!2304565 t!206232))

(declare-fun b_and!183813 () Bool)

(assert (= b_and!183787 (and (=> t!206232 result!168128) b_and!183813)))

(declare-fun t!206234 () Bool)

(declare-fun tb!137925 () Bool)

(assert (=> (and b!2304443 (= (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456))))) t!206234) tb!137925))

(declare-fun result!168130 () Bool)

(assert (= result!168130 result!168122))

(assert (=> b!2304565 t!206234))

(declare-fun b_and!183815 () Bool)

(assert (= b_and!183791 (and (=> t!206234 result!168130) b_and!183815)))

(declare-fun m!2731841 () Bool)

(assert (=> d!681798 m!2731841))

(declare-fun m!2731843 () Bool)

(assert (=> b!2304565 m!2731843))

(assert (=> b!2304565 m!2731843))

(declare-fun m!2731845 () Bool)

(assert (=> b!2304565 m!2731845))

(declare-fun m!2731847 () Bool)

(assert (=> b!2304566 m!2731847))

(assert (=> b!2304417 d!681798))

(declare-fun b!2304600 () Bool)

(declare-fun res!985276 () Bool)

(declare-fun e!1476863 () Bool)

(assert (=> b!2304600 (=> (not res!985276) (not e!1476863))))

(declare-fun tail!3330 (List!27516) List!27516)

(assert (=> b!2304600 (= res!985276 (isEmpty!15670 (tail!3330 lt!854698)))))

(declare-fun b!2304601 () Bool)

(declare-fun res!985279 () Bool)

(declare-fun e!1476858 () Bool)

(assert (=> b!2304601 (=> res!985279 e!1476858)))

(assert (=> b!2304601 (= res!985279 (not (is-ElementMatch!6744 (regex!4396 r!2363))))))

(declare-fun e!1476860 () Bool)

(assert (=> b!2304601 (= e!1476860 e!1476858)))

(declare-fun d!681800 () Bool)

(declare-fun e!1476859 () Bool)

(assert (=> d!681800 e!1476859))

(declare-fun c!365375 () Bool)

(assert (=> d!681800 (= c!365375 (is-EmptyExpr!6744 (regex!4396 r!2363)))))

(declare-fun lt!854762 () Bool)

(declare-fun e!1476864 () Bool)

(assert (=> d!681800 (= lt!854762 e!1476864)))

(declare-fun c!365376 () Bool)

(assert (=> d!681800 (= c!365376 (isEmpty!15670 lt!854698))))

(declare-fun validRegex!2549 (Regex!6744) Bool)

(assert (=> d!681800 (validRegex!2549 (regex!4396 r!2363))))

(assert (=> d!681800 (= (matchR!3001 (regex!4396 r!2363) lt!854698) lt!854762)))

(declare-fun b!2304602 () Bool)

(declare-fun res!985280 () Bool)

(declare-fun e!1476861 () Bool)

(assert (=> b!2304602 (=> res!985280 e!1476861)))

(assert (=> b!2304602 (= res!985280 (not (isEmpty!15670 (tail!3330 lt!854698))))))

(declare-fun b!2304603 () Bool)

(assert (=> b!2304603 (= e!1476859 e!1476860)))

(declare-fun c!365377 () Bool)

(assert (=> b!2304603 (= c!365377 (is-EmptyLang!6744 (regex!4396 r!2363)))))

(declare-fun bm!137138 () Bool)

(declare-fun call!137143 () Bool)

(assert (=> bm!137138 (= call!137143 (isEmpty!15670 lt!854698))))

(declare-fun b!2304604 () Bool)

(declare-fun derivativeStep!1547 (Regex!6744 C!13634) Regex!6744)

(declare-fun head!5047 (List!27516) C!13634)

(assert (=> b!2304604 (= e!1476864 (matchR!3001 (derivativeStep!1547 (regex!4396 r!2363) (head!5047 lt!854698)) (tail!3330 lt!854698)))))

(declare-fun b!2304605 () Bool)

(declare-fun res!985281 () Bool)

(assert (=> b!2304605 (=> (not res!985281) (not e!1476863))))

(assert (=> b!2304605 (= res!985281 (not call!137143))))

(declare-fun b!2304606 () Bool)

(assert (=> b!2304606 (= e!1476861 (not (= (head!5047 lt!854698) (c!365360 (regex!4396 r!2363)))))))

(declare-fun b!2304607 () Bool)

(declare-fun nullable!1887 (Regex!6744) Bool)

(assert (=> b!2304607 (= e!1476864 (nullable!1887 (regex!4396 r!2363)))))

(declare-fun b!2304608 () Bool)

(assert (=> b!2304608 (= e!1476859 (= lt!854762 call!137143))))

(declare-fun b!2304609 () Bool)

(assert (=> b!2304609 (= e!1476863 (= (head!5047 lt!854698) (c!365360 (regex!4396 r!2363))))))

(declare-fun b!2304610 () Bool)

(declare-fun res!985277 () Bool)

(assert (=> b!2304610 (=> res!985277 e!1476858)))

(assert (=> b!2304610 (= res!985277 e!1476863)))

(declare-fun res!985282 () Bool)

(assert (=> b!2304610 (=> (not res!985282) (not e!1476863))))

(assert (=> b!2304610 (= res!985282 lt!854762)))

(declare-fun b!2304611 () Bool)

(assert (=> b!2304611 (= e!1476860 (not lt!854762))))

(declare-fun b!2304612 () Bool)

(declare-fun e!1476862 () Bool)

(assert (=> b!2304612 (= e!1476862 e!1476861)))

(declare-fun res!985275 () Bool)

(assert (=> b!2304612 (=> res!985275 e!1476861)))

(assert (=> b!2304612 (= res!985275 call!137143)))

(declare-fun b!2304613 () Bool)

(assert (=> b!2304613 (= e!1476858 e!1476862)))

(declare-fun res!985278 () Bool)

(assert (=> b!2304613 (=> (not res!985278) (not e!1476862))))

(assert (=> b!2304613 (= res!985278 (not lt!854762))))

(assert (= (and d!681800 c!365376) b!2304607))

(assert (= (and d!681800 (not c!365376)) b!2304604))

(assert (= (and d!681800 c!365375) b!2304608))

(assert (= (and d!681800 (not c!365375)) b!2304603))

(assert (= (and b!2304603 c!365377) b!2304611))

(assert (= (and b!2304603 (not c!365377)) b!2304601))

(assert (= (and b!2304601 (not res!985279)) b!2304610))

(assert (= (and b!2304610 res!985282) b!2304605))

(assert (= (and b!2304605 res!985281) b!2304600))

(assert (= (and b!2304600 res!985276) b!2304609))

(assert (= (and b!2304610 (not res!985277)) b!2304613))

(assert (= (and b!2304613 res!985278) b!2304612))

(assert (= (and b!2304612 (not res!985275)) b!2304602))

(assert (= (and b!2304602 (not res!985280)) b!2304606))

(assert (= (or b!2304608 b!2304605 b!2304612) bm!137138))

(declare-fun m!2731849 () Bool)

(assert (=> b!2304604 m!2731849))

(assert (=> b!2304604 m!2731849))

(declare-fun m!2731851 () Bool)

(assert (=> b!2304604 m!2731851))

(declare-fun m!2731853 () Bool)

(assert (=> b!2304604 m!2731853))

(assert (=> b!2304604 m!2731851))

(assert (=> b!2304604 m!2731853))

(declare-fun m!2731855 () Bool)

(assert (=> b!2304604 m!2731855))

(assert (=> bm!137138 m!2731721))

(assert (=> b!2304606 m!2731849))

(assert (=> b!2304609 m!2731849))

(assert (=> d!681800 m!2731721))

(declare-fun m!2731857 () Bool)

(assert (=> d!681800 m!2731857))

(assert (=> b!2304600 m!2731853))

(assert (=> b!2304600 m!2731853))

(declare-fun m!2731859 () Bool)

(assert (=> b!2304600 m!2731859))

(assert (=> b!2304602 m!2731853))

(assert (=> b!2304602 m!2731853))

(assert (=> b!2304602 m!2731859))

(declare-fun m!2731861 () Bool)

(assert (=> b!2304607 m!2731861))

(assert (=> b!2304438 d!681800))

(declare-fun d!681802 () Bool)

(declare-fun dynLambda!11929 (Int BalanceConc!17608) TokenValue!4558)

(assert (=> d!681802 (= (apply!6658 (transformation!4396 r!2363) lt!854682) (dynLambda!11929 (toValue!6210 (transformation!4396 r!2363)) lt!854682))))

(declare-fun b_lambda!73415 () Bool)

(assert (=> (not b_lambda!73415) (not d!681802)))

(declare-fun t!206236 () Bool)

(declare-fun tb!137927 () Bool)

(assert (=> (and b!2304441 (= (toValue!6210 (transformation!4396 r!2363)) (toValue!6210 (transformation!4396 r!2363))) t!206236) tb!137927))

(declare-fun result!168132 () Bool)

(assert (=> tb!137927 (= result!168132 (inv!21 (dynLambda!11929 (toValue!6210 (transformation!4396 r!2363)) lt!854682)))))

(declare-fun m!2731863 () Bool)

(assert (=> tb!137927 m!2731863))

(assert (=> d!681802 t!206236))

(declare-fun b_and!183817 () Bool)

(assert (= b_and!183777 (and (=> t!206236 result!168132) b_and!183817)))

(declare-fun t!206238 () Bool)

(declare-fun tb!137929 () Bool)

(assert (=> (and b!2304422 (= (toValue!6210 (transformation!4396 (h!32825 rules!1750))) (toValue!6210 (transformation!4396 r!2363))) t!206238) tb!137929))

(declare-fun result!168136 () Bool)

(assert (= result!168136 result!168132))

(assert (=> d!681802 t!206238))

(declare-fun b_and!183819 () Bool)

(assert (= b_and!183781 (and (=> t!206238 result!168136) b_and!183819)))

(declare-fun t!206240 () Bool)

(declare-fun tb!137931 () Bool)

(assert (=> (and b!2304409 (= (toValue!6210 (transformation!4396 otherR!12)) (toValue!6210 (transformation!4396 r!2363))) t!206240) tb!137931))

(declare-fun result!168138 () Bool)

(assert (= result!168138 result!168132))

(assert (=> d!681802 t!206240))

(declare-fun b_and!183821 () Bool)

(assert (= b_and!183785 (and (=> t!206240 result!168138) b_and!183821)))

(declare-fun t!206242 () Bool)

(declare-fun tb!137933 () Bool)

(assert (=> (and b!2304443 (= (toValue!6210 (transformation!4396 (rule!6744 (h!32824 tokens!456)))) (toValue!6210 (transformation!4396 r!2363))) t!206242) tb!137933))

(declare-fun result!168140 () Bool)

(assert (= result!168140 result!168132))

(assert (=> d!681802 t!206242))

(declare-fun b_and!183823 () Bool)

(assert (= b_and!183789 (and (=> t!206242 result!168140) b_and!183823)))

(declare-fun m!2731865 () Bool)

(assert (=> d!681802 m!2731865))

(assert (=> b!2304439 d!681802))

(declare-fun b!2304664 () Bool)

(declare-fun e!1476894 () Bool)

(assert (=> b!2304664 (= e!1476894 true)))

(declare-fun d!681804 () Bool)

(assert (=> d!681804 e!1476894))

(assert (= d!681804 b!2304664))

(declare-fun order!15295 () Int)

(declare-fun lambda!85988 () Int)

(declare-fun order!15293 () Int)

(declare-fun dynLambda!11930 (Int Int) Int)

(declare-fun dynLambda!11931 (Int Int) Int)

(assert (=> b!2304664 (< (dynLambda!11930 order!15293 (toValue!6210 (transformation!4396 r!2363))) (dynLambda!11931 order!15295 lambda!85988))))

(declare-fun order!15297 () Int)

(declare-fun dynLambda!11932 (Int Int) Int)

(assert (=> b!2304664 (< (dynLambda!11932 order!15297 (toChars!6069 (transformation!4396 r!2363))) (dynLambda!11931 order!15295 lambda!85988))))

(assert (=> d!681804 (= (list!10810 (dynLambda!11928 (toChars!6069 (transformation!4396 r!2363)) (dynLambda!11929 (toValue!6210 (transformation!4396 r!2363)) lt!854682))) (list!10810 lt!854682))))

(declare-fun lt!854770 () Unit!40329)

(declare-fun ForallOf!500 (Int BalanceConc!17608) Unit!40329)

(assert (=> d!681804 (= lt!854770 (ForallOf!500 lambda!85988 lt!854682))))

(assert (=> d!681804 (= (lemmaSemiInverse!1079 (transformation!4396 r!2363) lt!854682) lt!854770)))

(declare-fun b_lambda!73419 () Bool)

(assert (=> (not b_lambda!73419) (not d!681804)))

(declare-fun t!206252 () Bool)

(declare-fun tb!137943 () Bool)

(assert (=> (and b!2304441 (= (toChars!6069 (transformation!4396 r!2363)) (toChars!6069 (transformation!4396 r!2363))) t!206252) tb!137943))

(declare-fun tp!731139 () Bool)

(declare-fun b!2304665 () Bool)

(declare-fun e!1476895 () Bool)

(assert (=> b!2304665 (= e!1476895 (and (inv!37068 (c!365359 (dynLambda!11928 (toChars!6069 (transformation!4396 r!2363)) (dynLambda!11929 (toValue!6210 (transformation!4396 r!2363)) lt!854682)))) tp!731139))))

(declare-fun result!168152 () Bool)

(assert (=> tb!137943 (= result!168152 (and (inv!37069 (dynLambda!11928 (toChars!6069 (transformation!4396 r!2363)) (dynLambda!11929 (toValue!6210 (transformation!4396 r!2363)) lt!854682))) e!1476895))))

(assert (= tb!137943 b!2304665))

(declare-fun m!2731885 () Bool)

(assert (=> b!2304665 m!2731885))

(declare-fun m!2731887 () Bool)

(assert (=> tb!137943 m!2731887))

(assert (=> d!681804 t!206252))

(declare-fun b_and!183833 () Bool)

(assert (= b_and!183809 (and (=> t!206252 result!168152) b_and!183833)))

(declare-fun tb!137945 () Bool)

(declare-fun t!206254 () Bool)

(assert (=> (and b!2304422 (= (toChars!6069 (transformation!4396 (h!32825 rules!1750))) (toChars!6069 (transformation!4396 r!2363))) t!206254) tb!137945))

(declare-fun result!168154 () Bool)

(assert (= result!168154 result!168152))

(assert (=> d!681804 t!206254))

(declare-fun b_and!183835 () Bool)

(assert (= b_and!183811 (and (=> t!206254 result!168154) b_and!183835)))

(declare-fun tb!137947 () Bool)

(declare-fun t!206256 () Bool)

(assert (=> (and b!2304409 (= (toChars!6069 (transformation!4396 otherR!12)) (toChars!6069 (transformation!4396 r!2363))) t!206256) tb!137947))

(declare-fun result!168156 () Bool)

(assert (= result!168156 result!168152))

(assert (=> d!681804 t!206256))

(declare-fun b_and!183837 () Bool)

(assert (= b_and!183813 (and (=> t!206256 result!168156) b_and!183837)))

(declare-fun t!206258 () Bool)

(declare-fun tb!137949 () Bool)

(assert (=> (and b!2304443 (= (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))) (toChars!6069 (transformation!4396 r!2363))) t!206258) tb!137949))

(declare-fun result!168158 () Bool)

(assert (= result!168158 result!168152))

(assert (=> d!681804 t!206258))

(declare-fun b_and!183839 () Bool)

(assert (= b_and!183815 (and (=> t!206258 result!168158) b_and!183839)))

(declare-fun b_lambda!73421 () Bool)

(assert (=> (not b_lambda!73421) (not d!681804)))

(assert (=> d!681804 t!206236))

(declare-fun b_and!183841 () Bool)

(assert (= b_and!183817 (and (=> t!206236 result!168132) b_and!183841)))

(assert (=> d!681804 t!206238))

(declare-fun b_and!183843 () Bool)

(assert (= b_and!183819 (and (=> t!206238 result!168136) b_and!183843)))

(assert (=> d!681804 t!206240))

(declare-fun b_and!183845 () Bool)

(assert (= b_and!183821 (and (=> t!206240 result!168138) b_and!183845)))

(assert (=> d!681804 t!206242))

(declare-fun b_and!183847 () Bool)

(assert (= b_and!183823 (and (=> t!206242 result!168140) b_and!183847)))

(declare-fun m!2731889 () Bool)

(assert (=> d!681804 m!2731889))

(declare-fun m!2731891 () Bool)

(assert (=> d!681804 m!2731891))

(declare-fun m!2731893 () Bool)

(assert (=> d!681804 m!2731893))

(declare-fun m!2731895 () Bool)

(assert (=> d!681804 m!2731895))

(assert (=> d!681804 m!2731865))

(assert (=> d!681804 m!2731889))

(assert (=> d!681804 m!2731865))

(assert (=> b!2304439 d!681804))

(declare-fun d!681812 () Bool)

(declare-fun fromListB!1399 (List!27516) BalanceConc!17608)

(assert (=> d!681812 (= (seqFromList!3100 lt!854698) (fromListB!1399 lt!854698))))

(declare-fun bs!457894 () Bool)

(assert (= bs!457894 d!681812))

(declare-fun m!2731897 () Bool)

(assert (=> bs!457894 m!2731897))

(assert (=> b!2304439 d!681812))

(declare-fun d!681814 () Bool)

(declare-fun res!985311 () Bool)

(declare-fun e!1476898 () Bool)

(assert (=> d!681814 (=> (not res!985311) (not e!1476898))))

(assert (=> d!681814 (= res!985311 (validRegex!2549 (regex!4396 r!2363)))))

(assert (=> d!681814 (= (ruleValid!1486 thiss!16613 r!2363) e!1476898)))

(declare-fun b!2304670 () Bool)

(declare-fun res!985312 () Bool)

(assert (=> b!2304670 (=> (not res!985312) (not e!1476898))))

(assert (=> b!2304670 (= res!985312 (not (nullable!1887 (regex!4396 r!2363))))))

(declare-fun b!2304671 () Bool)

(assert (=> b!2304671 (= e!1476898 (not (= (tag!4886 r!2363) (String!29897 ""))))))

(assert (= (and d!681814 res!985311) b!2304670))

(assert (= (and b!2304670 res!985312) b!2304671))

(assert (=> d!681814 m!2731857))

(assert (=> b!2304670 m!2731861))

(assert (=> b!2304419 d!681814))

(declare-fun d!681816 () Bool)

(assert (=> d!681816 (ruleValid!1486 thiss!16613 r!2363)))

(declare-fun lt!854773 () Unit!40329)

(declare-fun choose!13460 (LexerInterface!3993 Rule!8592 List!27518) Unit!40329)

(assert (=> d!681816 (= lt!854773 (choose!13460 thiss!16613 r!2363 rules!1750))))

(assert (=> d!681816 (contains!4784 rules!1750 r!2363)))

(assert (=> d!681816 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!891 thiss!16613 r!2363 rules!1750) lt!854773)))

(declare-fun bs!457895 () Bool)

(assert (= bs!457895 d!681816))

(assert (=> bs!457895 m!2731711))

(declare-fun m!2731899 () Bool)

(assert (=> bs!457895 m!2731899))

(assert (=> bs!457895 m!2731673))

(assert (=> b!2304419 d!681816))

(declare-fun d!681818 () Bool)

(assert (=> d!681818 (= (isEmpty!15671 tokens!456) (is-Nil!27423 tokens!456))))

(assert (=> b!2304440 d!681818))

(declare-fun d!681820 () Bool)

(declare-fun lt!854774 () Bool)

(assert (=> d!681820 (= lt!854774 (set.member r!2363 (content!3700 rules!1750)))))

(declare-fun e!1476900 () Bool)

(assert (=> d!681820 (= lt!854774 e!1476900)))

(declare-fun res!985313 () Bool)

(assert (=> d!681820 (=> (not res!985313) (not e!1476900))))

(assert (=> d!681820 (= res!985313 (is-Cons!27424 rules!1750))))

(assert (=> d!681820 (= (contains!4784 rules!1750 r!2363) lt!854774)))

(declare-fun b!2304672 () Bool)

(declare-fun e!1476899 () Bool)

(assert (=> b!2304672 (= e!1476900 e!1476899)))

(declare-fun res!985314 () Bool)

(assert (=> b!2304672 (=> res!985314 e!1476899)))

(assert (=> b!2304672 (= res!985314 (= (h!32825 rules!1750) r!2363))))

(declare-fun b!2304673 () Bool)

(assert (=> b!2304673 (= e!1476899 (contains!4784 (t!206222 rules!1750) r!2363))))

(assert (= (and d!681820 res!985313) b!2304672))

(assert (= (and b!2304672 (not res!985314)) b!2304673))

(assert (=> d!681820 m!2731823))

(declare-fun m!2731901 () Bool)

(assert (=> d!681820 m!2731901))

(declare-fun m!2731903 () Bool)

(assert (=> b!2304673 m!2731903))

(assert (=> b!2304420 d!681820))

(declare-fun b!2304674 () Bool)

(declare-fun res!985316 () Bool)

(declare-fun e!1476906 () Bool)

(assert (=> b!2304674 (=> (not res!985316) (not e!1476906))))

(assert (=> b!2304674 (= res!985316 (isEmpty!15670 (tail!3330 (list!10810 (charsOf!2784 (head!5045 tokens!456))))))))

(declare-fun b!2304675 () Bool)

(declare-fun res!985319 () Bool)

(declare-fun e!1476901 () Bool)

(assert (=> b!2304675 (=> res!985319 e!1476901)))

(assert (=> b!2304675 (= res!985319 (not (is-ElementMatch!6744 (regex!4396 r!2363))))))

(declare-fun e!1476903 () Bool)

(assert (=> b!2304675 (= e!1476903 e!1476901)))

(declare-fun d!681822 () Bool)

(declare-fun e!1476902 () Bool)

(assert (=> d!681822 e!1476902))

(declare-fun c!365389 () Bool)

(assert (=> d!681822 (= c!365389 (is-EmptyExpr!6744 (regex!4396 r!2363)))))

(declare-fun lt!854775 () Bool)

(declare-fun e!1476907 () Bool)

(assert (=> d!681822 (= lt!854775 e!1476907)))

(declare-fun c!365390 () Bool)

(assert (=> d!681822 (= c!365390 (isEmpty!15670 (list!10810 (charsOf!2784 (head!5045 tokens!456)))))))

(assert (=> d!681822 (validRegex!2549 (regex!4396 r!2363))))

(assert (=> d!681822 (= (matchR!3001 (regex!4396 r!2363) (list!10810 (charsOf!2784 (head!5045 tokens!456)))) lt!854775)))

(declare-fun b!2304676 () Bool)

(declare-fun res!985320 () Bool)

(declare-fun e!1476904 () Bool)

(assert (=> b!2304676 (=> res!985320 e!1476904)))

(assert (=> b!2304676 (= res!985320 (not (isEmpty!15670 (tail!3330 (list!10810 (charsOf!2784 (head!5045 tokens!456)))))))))

(declare-fun b!2304677 () Bool)

(assert (=> b!2304677 (= e!1476902 e!1476903)))

(declare-fun c!365391 () Bool)

(assert (=> b!2304677 (= c!365391 (is-EmptyLang!6744 (regex!4396 r!2363)))))

(declare-fun bm!137142 () Bool)

(declare-fun call!137147 () Bool)

(assert (=> bm!137142 (= call!137147 (isEmpty!15670 (list!10810 (charsOf!2784 (head!5045 tokens!456)))))))

(declare-fun b!2304678 () Bool)

(assert (=> b!2304678 (= e!1476907 (matchR!3001 (derivativeStep!1547 (regex!4396 r!2363) (head!5047 (list!10810 (charsOf!2784 (head!5045 tokens!456))))) (tail!3330 (list!10810 (charsOf!2784 (head!5045 tokens!456))))))))

(declare-fun b!2304679 () Bool)

(declare-fun res!985321 () Bool)

(assert (=> b!2304679 (=> (not res!985321) (not e!1476906))))

(assert (=> b!2304679 (= res!985321 (not call!137147))))

(declare-fun b!2304680 () Bool)

(assert (=> b!2304680 (= e!1476904 (not (= (head!5047 (list!10810 (charsOf!2784 (head!5045 tokens!456)))) (c!365360 (regex!4396 r!2363)))))))

(declare-fun b!2304681 () Bool)

(assert (=> b!2304681 (= e!1476907 (nullable!1887 (regex!4396 r!2363)))))

(declare-fun b!2304682 () Bool)

(assert (=> b!2304682 (= e!1476902 (= lt!854775 call!137147))))

(declare-fun b!2304683 () Bool)

(assert (=> b!2304683 (= e!1476906 (= (head!5047 (list!10810 (charsOf!2784 (head!5045 tokens!456)))) (c!365360 (regex!4396 r!2363))))))

(declare-fun b!2304684 () Bool)

(declare-fun res!985317 () Bool)

(assert (=> b!2304684 (=> res!985317 e!1476901)))

(assert (=> b!2304684 (= res!985317 e!1476906)))

(declare-fun res!985322 () Bool)

(assert (=> b!2304684 (=> (not res!985322) (not e!1476906))))

(assert (=> b!2304684 (= res!985322 lt!854775)))

(declare-fun b!2304685 () Bool)

(assert (=> b!2304685 (= e!1476903 (not lt!854775))))

(declare-fun b!2304686 () Bool)

(declare-fun e!1476905 () Bool)

(assert (=> b!2304686 (= e!1476905 e!1476904)))

(declare-fun res!985315 () Bool)

(assert (=> b!2304686 (=> res!985315 e!1476904)))

(assert (=> b!2304686 (= res!985315 call!137147)))

(declare-fun b!2304687 () Bool)

(assert (=> b!2304687 (= e!1476901 e!1476905)))

(declare-fun res!985318 () Bool)

(assert (=> b!2304687 (=> (not res!985318) (not e!1476905))))

(assert (=> b!2304687 (= res!985318 (not lt!854775))))

(assert (= (and d!681822 c!365390) b!2304681))

(assert (= (and d!681822 (not c!365390)) b!2304678))

(assert (= (and d!681822 c!365389) b!2304682))

(assert (= (and d!681822 (not c!365389)) b!2304677))

(assert (= (and b!2304677 c!365391) b!2304685))

(assert (= (and b!2304677 (not c!365391)) b!2304675))

(assert (= (and b!2304675 (not res!985319)) b!2304684))

(assert (= (and b!2304684 res!985322) b!2304679))

(assert (= (and b!2304679 res!985321) b!2304674))

(assert (= (and b!2304674 res!985316) b!2304683))

(assert (= (and b!2304684 (not res!985317)) b!2304687))

(assert (= (and b!2304687 res!985318) b!2304686))

(assert (= (and b!2304686 (not res!985315)) b!2304676))

(assert (= (and b!2304676 (not res!985320)) b!2304680))

(assert (= (or b!2304682 b!2304679 b!2304686) bm!137142))

(assert (=> b!2304678 m!2731715))

(declare-fun m!2731905 () Bool)

(assert (=> b!2304678 m!2731905))

(assert (=> b!2304678 m!2731905))

(declare-fun m!2731907 () Bool)

(assert (=> b!2304678 m!2731907))

(assert (=> b!2304678 m!2731715))

(declare-fun m!2731909 () Bool)

(assert (=> b!2304678 m!2731909))

(assert (=> b!2304678 m!2731907))

(assert (=> b!2304678 m!2731909))

(declare-fun m!2731911 () Bool)

(assert (=> b!2304678 m!2731911))

(assert (=> bm!137142 m!2731715))

(declare-fun m!2731913 () Bool)

(assert (=> bm!137142 m!2731913))

(assert (=> b!2304680 m!2731715))

(assert (=> b!2304680 m!2731905))

(assert (=> b!2304683 m!2731715))

(assert (=> b!2304683 m!2731905))

(assert (=> d!681822 m!2731715))

(assert (=> d!681822 m!2731913))

(assert (=> d!681822 m!2731857))

(assert (=> b!2304674 m!2731715))

(assert (=> b!2304674 m!2731909))

(assert (=> b!2304674 m!2731909))

(declare-fun m!2731915 () Bool)

(assert (=> b!2304674 m!2731915))

(assert (=> b!2304676 m!2731715))

(assert (=> b!2304676 m!2731909))

(assert (=> b!2304676 m!2731909))

(assert (=> b!2304676 m!2731915))

(assert (=> b!2304681 m!2731861))

(assert (=> b!2304411 d!681822))

(declare-fun d!681824 () Bool)

(declare-fun list!10814 (Conc!8940) List!27516)

(assert (=> d!681824 (= (list!10810 (charsOf!2784 (head!5045 tokens!456))) (list!10814 (c!365359 (charsOf!2784 (head!5045 tokens!456)))))))

(declare-fun bs!457896 () Bool)

(assert (= bs!457896 d!681824))

(declare-fun m!2731917 () Bool)

(assert (=> bs!457896 m!2731917))

(assert (=> b!2304411 d!681824))

(declare-fun d!681826 () Bool)

(declare-fun lt!854778 () BalanceConc!17608)

(assert (=> d!681826 (= (list!10810 lt!854778) (originalCharacters!5166 (head!5045 tokens!456)))))

(assert (=> d!681826 (= lt!854778 (dynLambda!11928 (toChars!6069 (transformation!4396 (rule!6744 (head!5045 tokens!456)))) (value!139107 (head!5045 tokens!456))))))

(assert (=> d!681826 (= (charsOf!2784 (head!5045 tokens!456)) lt!854778)))

(declare-fun b_lambda!73423 () Bool)

(assert (=> (not b_lambda!73423) (not d!681826)))

(declare-fun tb!137951 () Bool)

(declare-fun t!206260 () Bool)

(assert (=> (and b!2304441 (= (toChars!6069 (transformation!4396 r!2363)) (toChars!6069 (transformation!4396 (rule!6744 (head!5045 tokens!456))))) t!206260) tb!137951))

(declare-fun b!2304688 () Bool)

(declare-fun e!1476908 () Bool)

(declare-fun tp!731140 () Bool)

(assert (=> b!2304688 (= e!1476908 (and (inv!37068 (c!365359 (dynLambda!11928 (toChars!6069 (transformation!4396 (rule!6744 (head!5045 tokens!456)))) (value!139107 (head!5045 tokens!456))))) tp!731140))))

(declare-fun result!168160 () Bool)

(assert (=> tb!137951 (= result!168160 (and (inv!37069 (dynLambda!11928 (toChars!6069 (transformation!4396 (rule!6744 (head!5045 tokens!456)))) (value!139107 (head!5045 tokens!456)))) e!1476908))))

(assert (= tb!137951 b!2304688))

(declare-fun m!2731919 () Bool)

(assert (=> b!2304688 m!2731919))

(declare-fun m!2731921 () Bool)

(assert (=> tb!137951 m!2731921))

(assert (=> d!681826 t!206260))

(declare-fun b_and!183849 () Bool)

(assert (= b_and!183833 (and (=> t!206260 result!168160) b_and!183849)))

(declare-fun t!206262 () Bool)

(declare-fun tb!137953 () Bool)

(assert (=> (and b!2304422 (= (toChars!6069 (transformation!4396 (h!32825 rules!1750))) (toChars!6069 (transformation!4396 (rule!6744 (head!5045 tokens!456))))) t!206262) tb!137953))

(declare-fun result!168162 () Bool)

(assert (= result!168162 result!168160))

(assert (=> d!681826 t!206262))

(declare-fun b_and!183851 () Bool)

(assert (= b_and!183835 (and (=> t!206262 result!168162) b_and!183851)))

(declare-fun t!206264 () Bool)

(declare-fun tb!137955 () Bool)

(assert (=> (and b!2304409 (= (toChars!6069 (transformation!4396 otherR!12)) (toChars!6069 (transformation!4396 (rule!6744 (head!5045 tokens!456))))) t!206264) tb!137955))

(declare-fun result!168164 () Bool)

(assert (= result!168164 result!168160))

(assert (=> d!681826 t!206264))

(declare-fun b_and!183853 () Bool)

(assert (= b_and!183837 (and (=> t!206264 result!168164) b_and!183853)))

(declare-fun t!206266 () Bool)

(declare-fun tb!137957 () Bool)

(assert (=> (and b!2304443 (= (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))) (toChars!6069 (transformation!4396 (rule!6744 (head!5045 tokens!456))))) t!206266) tb!137957))

(declare-fun result!168166 () Bool)

(assert (= result!168166 result!168160))

(assert (=> d!681826 t!206266))

(declare-fun b_and!183855 () Bool)

(assert (= b_and!183839 (and (=> t!206266 result!168166) b_and!183855)))

(declare-fun m!2731923 () Bool)

(assert (=> d!681826 m!2731923))

(declare-fun m!2731925 () Bool)

(assert (=> d!681826 m!2731925))

(assert (=> b!2304411 d!681826))

(assert (=> b!2304411 d!681788))

(declare-fun d!681828 () Bool)

(assert (=> d!681828 (= (inv!37061 (tag!4886 otherR!12)) (= (mod (str.len (value!139106 (tag!4886 otherR!12))) 2) 0))))

(assert (=> b!2304432 d!681828))

(declare-fun d!681830 () Bool)

(declare-fun res!985323 () Bool)

(declare-fun e!1476909 () Bool)

(assert (=> d!681830 (=> (not res!985323) (not e!1476909))))

(assert (=> d!681830 (= res!985323 (semiInverseModEq!1789 (toChars!6069 (transformation!4396 otherR!12)) (toValue!6210 (transformation!4396 otherR!12))))))

(assert (=> d!681830 (= (inv!37064 (transformation!4396 otherR!12)) e!1476909)))

(declare-fun b!2304689 () Bool)

(assert (=> b!2304689 (= e!1476909 (equivClasses!1708 (toChars!6069 (transformation!4396 otherR!12)) (toValue!6210 (transformation!4396 otherR!12))))))

(assert (= (and d!681830 res!985323) b!2304689))

(declare-fun m!2731927 () Bool)

(assert (=> d!681830 m!2731927))

(declare-fun m!2731929 () Bool)

(assert (=> b!2304689 m!2731929))

(assert (=> b!2304432 d!681830))

(declare-fun d!681832 () Bool)

(declare-fun lt!854781 () Int)

(assert (=> d!681832 (= lt!854781 (size!21636 (list!10810 (charsOf!2784 (head!5045 tokens!456)))))))

(declare-fun size!21641 (Conc!8940) Int)

(assert (=> d!681832 (= lt!854781 (size!21641 (c!365359 (charsOf!2784 (head!5045 tokens!456)))))))

(assert (=> d!681832 (= (size!21637 (charsOf!2784 (head!5045 tokens!456))) lt!854781)))

(declare-fun bs!457897 () Bool)

(assert (= bs!457897 d!681832))

(assert (=> bs!457897 m!2731685))

(assert (=> bs!457897 m!2731715))

(assert (=> bs!457897 m!2731715))

(declare-fun m!2731931 () Bool)

(assert (=> bs!457897 m!2731931))

(declare-fun m!2731933 () Bool)

(assert (=> bs!457897 m!2731933))

(assert (=> b!2304433 d!681832))

(assert (=> b!2304433 d!681826))

(assert (=> b!2304433 d!681788))

(declare-fun d!681834 () Bool)

(declare-fun lt!854784 () Int)

(assert (=> d!681834 (>= lt!854784 0)))

(declare-fun e!1476912 () Int)

(assert (=> d!681834 (= lt!854784 e!1476912)))

(declare-fun c!365394 () Bool)

(assert (=> d!681834 (= c!365394 (is-Nil!27422 otherP!12))))

(assert (=> d!681834 (= (size!21636 otherP!12) lt!854784)))

(declare-fun b!2304694 () Bool)

(assert (=> b!2304694 (= e!1476912 0)))

(declare-fun b!2304695 () Bool)

(assert (=> b!2304695 (= e!1476912 (+ 1 (size!21636 (t!206220 otherP!12))))))

(assert (= (and d!681834 c!365394) b!2304694))

(assert (= (and d!681834 (not c!365394)) b!2304695))

(declare-fun m!2731935 () Bool)

(assert (=> b!2304695 m!2731935))

(assert (=> b!2304433 d!681834))

(declare-fun d!681836 () Bool)

(assert (=> d!681836 (= r!2363 otherR!12)))

(declare-fun lt!854787 () Unit!40329)

(declare-fun choose!13461 (List!27518 Rule!8592 Rule!8592) Unit!40329)

(assert (=> d!681836 (= lt!854787 (choose!13461 rules!1750 r!2363 otherR!12))))

(assert (=> d!681836 (contains!4784 rules!1750 r!2363)))

(assert (=> d!681836 (= (lemmaSameIndexThenSameElement!189 rules!1750 r!2363 otherR!12) lt!854787)))

(declare-fun bs!457898 () Bool)

(assert (= bs!457898 d!681836))

(declare-fun m!2731937 () Bool)

(assert (=> bs!457898 m!2731937))

(assert (=> bs!457898 m!2731673))

(assert (=> b!2304412 d!681836))

(declare-fun d!681838 () Bool)

(assert (=> d!681838 (= (inv!37061 (tag!4886 (h!32825 rules!1750))) (= (mod (str.len (value!139106 (tag!4886 (h!32825 rules!1750)))) 2) 0))))

(assert (=> b!2304414 d!681838))

(declare-fun d!681840 () Bool)

(declare-fun res!985324 () Bool)

(declare-fun e!1476913 () Bool)

(assert (=> d!681840 (=> (not res!985324) (not e!1476913))))

(assert (=> d!681840 (= res!985324 (semiInverseModEq!1789 (toChars!6069 (transformation!4396 (h!32825 rules!1750))) (toValue!6210 (transformation!4396 (h!32825 rules!1750)))))))

(assert (=> d!681840 (= (inv!37064 (transformation!4396 (h!32825 rules!1750))) e!1476913)))

(declare-fun b!2304696 () Bool)

(assert (=> b!2304696 (= e!1476913 (equivClasses!1708 (toChars!6069 (transformation!4396 (h!32825 rules!1750))) (toValue!6210 (transformation!4396 (h!32825 rules!1750)))))))

(assert (= (and d!681840 res!985324) b!2304696))

(declare-fun m!2731939 () Bool)

(assert (=> d!681840 m!2731939))

(declare-fun m!2731941 () Bool)

(assert (=> b!2304696 m!2731941))

(assert (=> b!2304414 d!681840))

(declare-fun d!681842 () Bool)

(declare-fun lt!854788 () Int)

(assert (=> d!681842 (>= lt!854788 0)))

(declare-fun e!1476914 () Int)

(assert (=> d!681842 (= lt!854788 e!1476914)))

(declare-fun c!365395 () Bool)

(assert (=> d!681842 (= c!365395 (is-Nil!27422 lt!854698))))

(assert (=> d!681842 (= (size!21636 lt!854698) lt!854788)))

(declare-fun b!2304697 () Bool)

(assert (=> b!2304697 (= e!1476914 0)))

(declare-fun b!2304698 () Bool)

(assert (=> b!2304698 (= e!1476914 (+ 1 (size!21636 (t!206220 lt!854698))))))

(assert (= (and d!681842 c!365395) b!2304697))

(assert (= (and d!681842 (not c!365395)) b!2304698))

(declare-fun m!2731943 () Bool)

(assert (=> b!2304698 m!2731943))

(assert (=> b!2304415 d!681842))

(declare-fun d!681844 () Bool)

(declare-fun lt!854791 () List!27516)

(assert (=> d!681844 (= (++!6714 lt!854698 lt!854791) input!1722)))

(declare-fun e!1476917 () List!27516)

(assert (=> d!681844 (= lt!854791 e!1476917)))

(declare-fun c!365398 () Bool)

(assert (=> d!681844 (= c!365398 (is-Cons!27422 lt!854698))))

(assert (=> d!681844 (>= (size!21636 input!1722) (size!21636 lt!854698))))

(assert (=> d!681844 (= (getSuffix!1165 input!1722 lt!854698) lt!854791)))

(declare-fun b!2304703 () Bool)

(assert (=> b!2304703 (= e!1476917 (getSuffix!1165 (tail!3330 input!1722) (t!206220 lt!854698)))))

(declare-fun b!2304704 () Bool)

(assert (=> b!2304704 (= e!1476917 input!1722)))

(assert (= (and d!681844 c!365398) b!2304703))

(assert (= (and d!681844 (not c!365398)) b!2304704))

(declare-fun m!2731945 () Bool)

(assert (=> d!681844 m!2731945))

(declare-fun m!2731947 () Bool)

(assert (=> d!681844 m!2731947))

(assert (=> d!681844 m!2731645))

(declare-fun m!2731949 () Bool)

(assert (=> b!2304703 m!2731949))

(assert (=> b!2304703 m!2731949))

(declare-fun m!2731951 () Bool)

(assert (=> b!2304703 m!2731951))

(assert (=> b!2304415 d!681844))

(declare-fun d!681846 () Bool)

(assert (=> d!681846 (= (_2!16168 lt!854689) lt!854681)))

(declare-fun lt!854794 () Unit!40329)

(declare-fun choose!13462 (List!27516 List!27516 List!27516 List!27516 List!27516) Unit!40329)

(assert (=> d!681846 (= lt!854794 (choose!13462 lt!854698 (_2!16168 lt!854689) lt!854698 lt!854681 input!1722))))

(assert (=> d!681846 (isPrefix!2386 lt!854698 input!1722)))

(assert (=> d!681846 (= (lemmaSamePrefixThenSameSuffix!1067 lt!854698 (_2!16168 lt!854689) lt!854698 lt!854681 input!1722) lt!854794)))

(declare-fun bs!457899 () Bool)

(assert (= bs!457899 d!681846))

(declare-fun m!2731953 () Bool)

(assert (=> bs!457899 m!2731953))

(declare-fun m!2731955 () Bool)

(assert (=> bs!457899 m!2731955))

(assert (=> b!2304415 d!681846))

(declare-fun d!681848 () Bool)

(declare-fun e!1476925 () Bool)

(assert (=> d!681848 e!1476925))

(declare-fun res!985334 () Bool)

(assert (=> d!681848 (=> res!985334 e!1476925)))

(declare-fun lt!854797 () Bool)

(assert (=> d!681848 (= res!985334 (not lt!854797))))

(declare-fun e!1476926 () Bool)

(assert (=> d!681848 (= lt!854797 e!1476926)))

(declare-fun res!985335 () Bool)

(assert (=> d!681848 (=> res!985335 e!1476926)))

(assert (=> d!681848 (= res!985335 (is-Nil!27422 lt!854698))))

(assert (=> d!681848 (= (isPrefix!2386 lt!854698 lt!854690) lt!854797)))

(declare-fun b!2304714 () Bool)

(declare-fun res!985333 () Bool)

(declare-fun e!1476924 () Bool)

(assert (=> b!2304714 (=> (not res!985333) (not e!1476924))))

(assert (=> b!2304714 (= res!985333 (= (head!5047 lt!854698) (head!5047 lt!854690)))))

(declare-fun b!2304713 () Bool)

(assert (=> b!2304713 (= e!1476926 e!1476924)))

(declare-fun res!985336 () Bool)

(assert (=> b!2304713 (=> (not res!985336) (not e!1476924))))

(assert (=> b!2304713 (= res!985336 (not (is-Nil!27422 lt!854690)))))

(declare-fun b!2304715 () Bool)

(assert (=> b!2304715 (= e!1476924 (isPrefix!2386 (tail!3330 lt!854698) (tail!3330 lt!854690)))))

(declare-fun b!2304716 () Bool)

(assert (=> b!2304716 (= e!1476925 (>= (size!21636 lt!854690) (size!21636 lt!854698)))))

(assert (= (and d!681848 (not res!985335)) b!2304713))

(assert (= (and b!2304713 res!985336) b!2304714))

(assert (= (and b!2304714 res!985333) b!2304715))

(assert (= (and d!681848 (not res!985334)) b!2304716))

(assert (=> b!2304714 m!2731849))

(declare-fun m!2731957 () Bool)

(assert (=> b!2304714 m!2731957))

(assert (=> b!2304715 m!2731853))

(declare-fun m!2731959 () Bool)

(assert (=> b!2304715 m!2731959))

(assert (=> b!2304715 m!2731853))

(assert (=> b!2304715 m!2731959))

(declare-fun m!2731961 () Bool)

(assert (=> b!2304715 m!2731961))

(declare-fun m!2731963 () Bool)

(assert (=> b!2304716 m!2731963))

(assert (=> b!2304716 m!2731645))

(assert (=> b!2304415 d!681848))

(declare-fun b!2304735 () Bool)

(declare-fun e!1476933 () Bool)

(declare-fun lt!854809 () Option!5394)

(assert (=> b!2304735 (= e!1476933 (contains!4784 rules!1750 (rule!6744 (_1!16168 (get!8266 lt!854809)))))))

(declare-fun d!681850 () Bool)

(declare-fun e!1476934 () Bool)

(assert (=> d!681850 e!1476934))

(declare-fun res!985351 () Bool)

(assert (=> d!681850 (=> res!985351 e!1476934)))

(declare-fun isEmpty!15675 (Option!5394) Bool)

(assert (=> d!681850 (= res!985351 (isEmpty!15675 lt!854809))))

(declare-fun e!1476935 () Option!5394)

(assert (=> d!681850 (= lt!854809 e!1476935)))

(declare-fun c!365401 () Bool)

(assert (=> d!681850 (= c!365401 (and (is-Cons!27424 rules!1750) (is-Nil!27424 (t!206222 rules!1750))))))

(declare-fun lt!854811 () Unit!40329)

(declare-fun lt!854808 () Unit!40329)

(assert (=> d!681850 (= lt!854811 lt!854808)))

(assert (=> d!681850 (isPrefix!2386 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1516 (List!27516 List!27516) Unit!40329)

(assert (=> d!681850 (= lt!854808 (lemmaIsPrefixRefl!1516 input!1722 input!1722))))

(declare-fun rulesValidInductive!1558 (LexerInterface!3993 List!27518) Bool)

(assert (=> d!681850 (rulesValidInductive!1558 thiss!16613 rules!1750)))

(assert (=> d!681850 (= (maxPrefix!2249 thiss!16613 rules!1750 input!1722) lt!854809)))

(declare-fun b!2304736 () Bool)

(declare-fun res!985352 () Bool)

(assert (=> b!2304736 (=> (not res!985352) (not e!1476933))))

(assert (=> b!2304736 (= res!985352 (= (++!6714 (list!10810 (charsOf!2784 (_1!16168 (get!8266 lt!854809)))) (_2!16168 (get!8266 lt!854809))) input!1722))))

(declare-fun b!2304737 () Bool)

(declare-fun res!985354 () Bool)

(assert (=> b!2304737 (=> (not res!985354) (not e!1476933))))

(assert (=> b!2304737 (= res!985354 (< (size!21636 (_2!16168 (get!8266 lt!854809))) (size!21636 input!1722)))))

(declare-fun b!2304738 () Bool)

(assert (=> b!2304738 (= e!1476934 e!1476933)))

(declare-fun res!985356 () Bool)

(assert (=> b!2304738 (=> (not res!985356) (not e!1476933))))

(declare-fun isDefined!4249 (Option!5394) Bool)

(assert (=> b!2304738 (= res!985356 (isDefined!4249 lt!854809))))

(declare-fun b!2304739 () Bool)

(declare-fun call!137150 () Option!5394)

(assert (=> b!2304739 (= e!1476935 call!137150)))

(declare-fun b!2304740 () Bool)

(declare-fun res!985353 () Bool)

(assert (=> b!2304740 (=> (not res!985353) (not e!1476933))))

(assert (=> b!2304740 (= res!985353 (matchR!3001 (regex!4396 (rule!6744 (_1!16168 (get!8266 lt!854809)))) (list!10810 (charsOf!2784 (_1!16168 (get!8266 lt!854809))))))))

(declare-fun b!2304741 () Bool)

(declare-fun res!985357 () Bool)

(assert (=> b!2304741 (=> (not res!985357) (not e!1476933))))

(assert (=> b!2304741 (= res!985357 (= (value!139107 (_1!16168 (get!8266 lt!854809))) (apply!6658 (transformation!4396 (rule!6744 (_1!16168 (get!8266 lt!854809)))) (seqFromList!3100 (originalCharacters!5166 (_1!16168 (get!8266 lt!854809)))))))))

(declare-fun b!2304742 () Bool)

(declare-fun res!985355 () Bool)

(assert (=> b!2304742 (=> (not res!985355) (not e!1476933))))

(assert (=> b!2304742 (= res!985355 (= (list!10810 (charsOf!2784 (_1!16168 (get!8266 lt!854809)))) (originalCharacters!5166 (_1!16168 (get!8266 lt!854809)))))))

(declare-fun b!2304743 () Bool)

(declare-fun lt!854810 () Option!5394)

(declare-fun lt!854812 () Option!5394)

(assert (=> b!2304743 (= e!1476935 (ite (and (is-None!5393 lt!854810) (is-None!5393 lt!854812)) None!5393 (ite (is-None!5393 lt!854812) lt!854810 (ite (is-None!5393 lt!854810) lt!854812 (ite (>= (size!21635 (_1!16168 (v!30495 lt!854810))) (size!21635 (_1!16168 (v!30495 lt!854812)))) lt!854810 lt!854812)))))))

(assert (=> b!2304743 (= lt!854810 call!137150)))

(assert (=> b!2304743 (= lt!854812 (maxPrefix!2249 thiss!16613 (t!206222 rules!1750) input!1722))))

(declare-fun bm!137145 () Bool)

(declare-fun maxPrefixOneRule!1419 (LexerInterface!3993 Rule!8592 List!27516) Option!5394)

(assert (=> bm!137145 (= call!137150 (maxPrefixOneRule!1419 thiss!16613 (h!32825 rules!1750) input!1722))))

(assert (= (and d!681850 c!365401) b!2304739))

(assert (= (and d!681850 (not c!365401)) b!2304743))

(assert (= (or b!2304739 b!2304743) bm!137145))

(assert (= (and d!681850 (not res!985351)) b!2304738))

(assert (= (and b!2304738 res!985356) b!2304742))

(assert (= (and b!2304742 res!985355) b!2304737))

(assert (= (and b!2304737 res!985354) b!2304736))

(assert (= (and b!2304736 res!985352) b!2304741))

(assert (= (and b!2304741 res!985357) b!2304740))

(assert (= (and b!2304740 res!985353) b!2304735))

(declare-fun m!2731965 () Bool)

(assert (=> b!2304738 m!2731965))

(declare-fun m!2731967 () Bool)

(assert (=> b!2304743 m!2731967))

(declare-fun m!2731969 () Bool)

(assert (=> b!2304735 m!2731969))

(declare-fun m!2731971 () Bool)

(assert (=> b!2304735 m!2731971))

(assert (=> b!2304736 m!2731969))

(declare-fun m!2731973 () Bool)

(assert (=> b!2304736 m!2731973))

(assert (=> b!2304736 m!2731973))

(declare-fun m!2731975 () Bool)

(assert (=> b!2304736 m!2731975))

(assert (=> b!2304736 m!2731975))

(declare-fun m!2731977 () Bool)

(assert (=> b!2304736 m!2731977))

(assert (=> b!2304737 m!2731969))

(declare-fun m!2731979 () Bool)

(assert (=> b!2304737 m!2731979))

(assert (=> b!2304737 m!2731947))

(assert (=> b!2304741 m!2731969))

(declare-fun m!2731981 () Bool)

(assert (=> b!2304741 m!2731981))

(assert (=> b!2304741 m!2731981))

(declare-fun m!2731983 () Bool)

(assert (=> b!2304741 m!2731983))

(declare-fun m!2731985 () Bool)

(assert (=> d!681850 m!2731985))

(declare-fun m!2731987 () Bool)

(assert (=> d!681850 m!2731987))

(declare-fun m!2731989 () Bool)

(assert (=> d!681850 m!2731989))

(declare-fun m!2731991 () Bool)

(assert (=> d!681850 m!2731991))

(assert (=> b!2304742 m!2731969))

(assert (=> b!2304742 m!2731973))

(assert (=> b!2304742 m!2731973))

(assert (=> b!2304742 m!2731975))

(declare-fun m!2731993 () Bool)

(assert (=> bm!137145 m!2731993))

(assert (=> b!2304740 m!2731969))

(assert (=> b!2304740 m!2731973))

(assert (=> b!2304740 m!2731973))

(assert (=> b!2304740 m!2731975))

(assert (=> b!2304740 m!2731975))

(declare-fun m!2731995 () Bool)

(assert (=> b!2304740 m!2731995))

(assert (=> b!2304415 d!681850))

(declare-fun d!681852 () Bool)

(assert (=> d!681852 (= (list!10810 (charsOf!2784 (h!32824 tokens!456))) (list!10814 (c!365359 (charsOf!2784 (h!32824 tokens!456)))))))

(declare-fun bs!457900 () Bool)

(assert (= bs!457900 d!681852))

(declare-fun m!2731997 () Bool)

(assert (=> bs!457900 m!2731997))

(assert (=> b!2304415 d!681852))

(declare-fun d!681854 () Bool)

(declare-fun lt!854813 () BalanceConc!17608)

(assert (=> d!681854 (= (list!10810 lt!854813) (originalCharacters!5166 (h!32824 tokens!456)))))

(assert (=> d!681854 (= lt!854813 (dynLambda!11928 (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))) (value!139107 (h!32824 tokens!456))))))

(assert (=> d!681854 (= (charsOf!2784 (h!32824 tokens!456)) lt!854813)))

(declare-fun b_lambda!73425 () Bool)

(assert (=> (not b_lambda!73425) (not d!681854)))

(assert (=> d!681854 t!206228))

(declare-fun b_and!183857 () Bool)

(assert (= b_and!183849 (and (=> t!206228 result!168122) b_and!183857)))

(assert (=> d!681854 t!206230))

(declare-fun b_and!183859 () Bool)

(assert (= b_and!183851 (and (=> t!206230 result!168126) b_and!183859)))

(assert (=> d!681854 t!206232))

(declare-fun b_and!183861 () Bool)

(assert (= b_and!183853 (and (=> t!206232 result!168128) b_and!183861)))

(assert (=> d!681854 t!206234))

(declare-fun b_and!183863 () Bool)

(assert (= b_and!183855 (and (=> t!206234 result!168130) b_and!183863)))

(declare-fun m!2731999 () Bool)

(assert (=> d!681854 m!2731999))

(assert (=> d!681854 m!2731843))

(assert (=> b!2304415 d!681854))

(declare-fun lt!854816 () List!27516)

(declare-fun e!1476940 () Bool)

(declare-fun b!2304755 () Bool)

(assert (=> b!2304755 (= e!1476940 (or (not (= (_2!16168 lt!854689) Nil!27422)) (= lt!854816 lt!854698)))))

(declare-fun b!2304754 () Bool)

(declare-fun res!985363 () Bool)

(assert (=> b!2304754 (=> (not res!985363) (not e!1476940))))

(assert (=> b!2304754 (= res!985363 (= (size!21636 lt!854816) (+ (size!21636 lt!854698) (size!21636 (_2!16168 lt!854689)))))))

(declare-fun b!2304752 () Bool)

(declare-fun e!1476941 () List!27516)

(assert (=> b!2304752 (= e!1476941 (_2!16168 lt!854689))))

(declare-fun d!681856 () Bool)

(assert (=> d!681856 e!1476940))

(declare-fun res!985362 () Bool)

(assert (=> d!681856 (=> (not res!985362) (not e!1476940))))

(declare-fun content!3701 (List!27516) (Set C!13634))

(assert (=> d!681856 (= res!985362 (= (content!3701 lt!854816) (set.union (content!3701 lt!854698) (content!3701 (_2!16168 lt!854689)))))))

(assert (=> d!681856 (= lt!854816 e!1476941)))

(declare-fun c!365404 () Bool)

(assert (=> d!681856 (= c!365404 (is-Nil!27422 lt!854698))))

(assert (=> d!681856 (= (++!6714 lt!854698 (_2!16168 lt!854689)) lt!854816)))

(declare-fun b!2304753 () Bool)

(assert (=> b!2304753 (= e!1476941 (Cons!27422 (h!32823 lt!854698) (++!6714 (t!206220 lt!854698) (_2!16168 lt!854689))))))

(assert (= (and d!681856 c!365404) b!2304752))

(assert (= (and d!681856 (not c!365404)) b!2304753))

(assert (= (and d!681856 res!985362) b!2304754))

(assert (= (and b!2304754 res!985363) b!2304755))

(declare-fun m!2732001 () Bool)

(assert (=> b!2304754 m!2732001))

(assert (=> b!2304754 m!2731645))

(declare-fun m!2732003 () Bool)

(assert (=> b!2304754 m!2732003))

(declare-fun m!2732005 () Bool)

(assert (=> d!681856 m!2732005))

(declare-fun m!2732007 () Bool)

(assert (=> d!681856 m!2732007))

(declare-fun m!2732009 () Bool)

(assert (=> d!681856 m!2732009))

(declare-fun m!2732011 () Bool)

(assert (=> b!2304753 m!2732011))

(assert (=> b!2304415 d!681856))

(declare-fun d!681858 () Bool)

(assert (=> d!681858 (isPrefix!2386 lt!854698 (++!6714 lt!854698 (_2!16168 lt!854689)))))

(declare-fun lt!854819 () Unit!40329)

(declare-fun choose!13463 (List!27516 List!27516) Unit!40329)

(assert (=> d!681858 (= lt!854819 (choose!13463 lt!854698 (_2!16168 lt!854689)))))

(assert (=> d!681858 (= (lemmaConcatTwoListThenFirstIsPrefix!1579 lt!854698 (_2!16168 lt!854689)) lt!854819)))

(declare-fun bs!457901 () Bool)

(assert (= bs!457901 d!681858))

(assert (=> bs!457901 m!2731643))

(assert (=> bs!457901 m!2731643))

(declare-fun m!2732013 () Bool)

(assert (=> bs!457901 m!2732013))

(declare-fun m!2732015 () Bool)

(assert (=> bs!457901 m!2732015))

(assert (=> b!2304415 d!681858))

(assert (=> b!2304415 d!681834))

(declare-fun d!681860 () Bool)

(assert (=> d!681860 (= (get!8266 lt!854694) (v!30495 lt!854694))))

(assert (=> b!2304415 d!681860))

(declare-fun d!681862 () Bool)

(assert (=> d!681862 (= (isEmpty!15670 lt!854698) (is-Nil!27422 lt!854698))))

(assert (=> b!2304436 d!681862))

(declare-fun d!681864 () Bool)

(assert (=> d!681864 (= (inv!37061 (tag!4886 (rule!6744 (h!32824 tokens!456)))) (= (mod (str.len (value!139106 (tag!4886 (rule!6744 (h!32824 tokens!456))))) 2) 0))))

(assert (=> b!2304426 d!681864))

(declare-fun d!681866 () Bool)

(declare-fun res!985364 () Bool)

(declare-fun e!1476942 () Bool)

(assert (=> d!681866 (=> (not res!985364) (not e!1476942))))

(assert (=> d!681866 (= res!985364 (semiInverseModEq!1789 (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))) (toValue!6210 (transformation!4396 (rule!6744 (h!32824 tokens!456))))))))

(assert (=> d!681866 (= (inv!37064 (transformation!4396 (rule!6744 (h!32824 tokens!456)))) e!1476942)))

(declare-fun b!2304756 () Bool)

(assert (=> b!2304756 (= e!1476942 (equivClasses!1708 (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))) (toValue!6210 (transformation!4396 (rule!6744 (h!32824 tokens!456))))))))

(assert (= (and d!681866 res!985364) b!2304756))

(declare-fun m!2732017 () Bool)

(assert (=> d!681866 m!2732017))

(declare-fun m!2732019 () Bool)

(assert (=> b!2304756 m!2732019))

(assert (=> b!2304426 d!681866))

(declare-fun d!681868 () Bool)

(declare-fun e!1476944 () Bool)

(assert (=> d!681868 e!1476944))

(declare-fun res!985366 () Bool)

(assert (=> d!681868 (=> res!985366 e!1476944)))

(declare-fun lt!854820 () Bool)

(assert (=> d!681868 (= res!985366 (not lt!854820))))

(declare-fun e!1476945 () Bool)

(assert (=> d!681868 (= lt!854820 e!1476945)))

(declare-fun res!985367 () Bool)

(assert (=> d!681868 (=> res!985367 e!1476945)))

(assert (=> d!681868 (= res!985367 (is-Nil!27422 otherP!12))))

(assert (=> d!681868 (= (isPrefix!2386 otherP!12 input!1722) lt!854820)))

(declare-fun b!2304758 () Bool)

(declare-fun res!985365 () Bool)

(declare-fun e!1476943 () Bool)

(assert (=> b!2304758 (=> (not res!985365) (not e!1476943))))

(assert (=> b!2304758 (= res!985365 (= (head!5047 otherP!12) (head!5047 input!1722)))))

(declare-fun b!2304757 () Bool)

(assert (=> b!2304757 (= e!1476945 e!1476943)))

(declare-fun res!985368 () Bool)

(assert (=> b!2304757 (=> (not res!985368) (not e!1476943))))

(assert (=> b!2304757 (= res!985368 (not (is-Nil!27422 input!1722)))))

(declare-fun b!2304759 () Bool)

(assert (=> b!2304759 (= e!1476943 (isPrefix!2386 (tail!3330 otherP!12) (tail!3330 input!1722)))))

(declare-fun b!2304760 () Bool)

(assert (=> b!2304760 (= e!1476944 (>= (size!21636 input!1722) (size!21636 otherP!12)))))

(assert (= (and d!681868 (not res!985367)) b!2304757))

(assert (= (and b!2304757 res!985368) b!2304758))

(assert (= (and b!2304758 res!985365) b!2304759))

(assert (= (and d!681868 (not res!985366)) b!2304760))

(declare-fun m!2732021 () Bool)

(assert (=> b!2304758 m!2732021))

(declare-fun m!2732023 () Bool)

(assert (=> b!2304758 m!2732023))

(declare-fun m!2732025 () Bool)

(assert (=> b!2304759 m!2732025))

(assert (=> b!2304759 m!2731949))

(assert (=> b!2304759 m!2732025))

(assert (=> b!2304759 m!2731949))

(declare-fun m!2732027 () Bool)

(assert (=> b!2304759 m!2732027))

(assert (=> b!2304760 m!2731947))

(assert (=> b!2304760 m!2731647))

(assert (=> b!2304427 d!681868))

(declare-fun d!681870 () Bool)

(declare-fun list!10815 (Conc!8941) List!27517)

(assert (=> d!681870 (= (list!10811 (_1!16169 lt!854688)) (list!10815 (c!365361 (_1!16169 lt!854688))))))

(declare-fun bs!457902 () Bool)

(assert (= bs!457902 d!681870))

(declare-fun m!2732029 () Bool)

(assert (=> bs!457902 m!2732029))

(assert (=> b!2304428 d!681870))

(declare-fun d!681872 () Bool)

(assert (=> d!681872 (= (list!10810 (_2!16169 lt!854688)) (list!10814 (c!365359 (_2!16169 lt!854688))))))

(declare-fun bs!457903 () Bool)

(assert (= bs!457903 d!681872))

(declare-fun m!2732031 () Bool)

(assert (=> bs!457903 m!2732031))

(assert (=> b!2304428 d!681872))

(declare-fun e!1476993 () Bool)

(declare-fun b!2304830 () Bool)

(declare-fun lt!854836 () tuple2!27318)

(declare-fun lexList!1133 (LexerInterface!3993 List!27518 List!27516) tuple2!27320)

(assert (=> b!2304830 (= e!1476993 (= (list!10810 (_2!16169 lt!854836)) (_2!16170 (lexList!1133 thiss!16613 rules!1750 (list!10810 (seqFromList!3100 input!1722))))))))

(declare-fun b!2304831 () Bool)

(declare-fun e!1476992 () Bool)

(assert (=> b!2304831 (= e!1476992 (= (_2!16169 lt!854836) (seqFromList!3100 input!1722)))))

(declare-fun b!2304832 () Bool)

(declare-fun e!1476994 () Bool)

(declare-fun isEmpty!15676 (BalanceConc!17610) Bool)

(assert (=> b!2304832 (= e!1476994 (not (isEmpty!15676 (_1!16169 lt!854836))))))

(declare-fun b!2304833 () Bool)

(assert (=> b!2304833 (= e!1476992 e!1476994)))

(declare-fun res!985411 () Bool)

(assert (=> b!2304833 (= res!985411 (< (size!21637 (_2!16169 lt!854836)) (size!21637 (seqFromList!3100 input!1722))))))

(assert (=> b!2304833 (=> (not res!985411) (not e!1476994))))

(declare-fun d!681874 () Bool)

(assert (=> d!681874 e!1476993))

(declare-fun res!985412 () Bool)

(assert (=> d!681874 (=> (not res!985412) (not e!1476993))))

(assert (=> d!681874 (= res!985412 e!1476992)))

(declare-fun c!365413 () Bool)

(declare-fun size!21642 (BalanceConc!17610) Int)

(assert (=> d!681874 (= c!365413 (> (size!21642 (_1!16169 lt!854836)) 0))))

(declare-fun lexTailRecV2!808 (LexerInterface!3993 List!27518 BalanceConc!17608 BalanceConc!17608 BalanceConc!17608 BalanceConc!17610) tuple2!27318)

(assert (=> d!681874 (= lt!854836 (lexTailRecV2!808 thiss!16613 rules!1750 (seqFromList!3100 input!1722) (BalanceConc!17609 Empty!8940) (seqFromList!3100 input!1722) (BalanceConc!17611 Empty!8941)))))

(assert (=> d!681874 (= (lex!1832 thiss!16613 rules!1750 (seqFromList!3100 input!1722)) lt!854836)))

(declare-fun b!2304834 () Bool)

(declare-fun res!985413 () Bool)

(assert (=> b!2304834 (=> (not res!985413) (not e!1476993))))

(assert (=> b!2304834 (= res!985413 (= (list!10811 (_1!16169 lt!854836)) (_1!16170 (lexList!1133 thiss!16613 rules!1750 (list!10810 (seqFromList!3100 input!1722))))))))

(assert (= (and d!681874 c!365413) b!2304833))

(assert (= (and d!681874 (not c!365413)) b!2304831))

(assert (= (and b!2304833 res!985411) b!2304832))

(assert (= (and d!681874 res!985412) b!2304834))

(assert (= (and b!2304834 res!985413) b!2304830))

(declare-fun m!2732095 () Bool)

(assert (=> b!2304834 m!2732095))

(assert (=> b!2304834 m!2731705))

(declare-fun m!2732097 () Bool)

(assert (=> b!2304834 m!2732097))

(assert (=> b!2304834 m!2732097))

(declare-fun m!2732099 () Bool)

(assert (=> b!2304834 m!2732099))

(declare-fun m!2732101 () Bool)

(assert (=> b!2304830 m!2732101))

(assert (=> b!2304830 m!2731705))

(assert (=> b!2304830 m!2732097))

(assert (=> b!2304830 m!2732097))

(assert (=> b!2304830 m!2732099))

(declare-fun m!2732103 () Bool)

(assert (=> d!681874 m!2732103))

(assert (=> d!681874 m!2731705))

(assert (=> d!681874 m!2731705))

(declare-fun m!2732105 () Bool)

(assert (=> d!681874 m!2732105))

(declare-fun m!2732107 () Bool)

(assert (=> b!2304833 m!2732107))

(assert (=> b!2304833 m!2731705))

(declare-fun m!2732109 () Bool)

(assert (=> b!2304833 m!2732109))

(declare-fun m!2732111 () Bool)

(assert (=> b!2304832 m!2732111))

(assert (=> b!2304428 d!681874))

(declare-fun d!681906 () Bool)

(assert (=> d!681906 (= (seqFromList!3100 input!1722) (fromListB!1399 input!1722))))

(declare-fun bs!457909 () Bool)

(assert (= bs!457909 d!681906))

(declare-fun m!2732113 () Bool)

(assert (=> bs!457909 m!2732113))

(assert (=> b!2304428 d!681906))

(declare-fun d!681908 () Bool)

(assert (=> d!681908 (= (isEmpty!15669 rules!1750) (is-Nil!27424 rules!1750))))

(assert (=> b!2304429 d!681908))

(declare-fun b!2304844 () Bool)

(declare-fun e!1477000 () Int)

(declare-fun e!1477001 () Int)

(assert (=> b!2304844 (= e!1477000 e!1477001)))

(declare-fun c!365419 () Bool)

(assert (=> b!2304844 (= c!365419 (and (is-Cons!27424 rules!1750) (not (= (h!32825 rules!1750) otherR!12))))))

(declare-fun d!681910 () Bool)

(declare-fun lt!854839 () Int)

(assert (=> d!681910 (>= lt!854839 0)))

(assert (=> d!681910 (= lt!854839 e!1477000)))

(declare-fun c!365418 () Bool)

(assert (=> d!681910 (= c!365418 (and (is-Cons!27424 rules!1750) (= (h!32825 rules!1750) otherR!12)))))

(assert (=> d!681910 (contains!4784 rules!1750 otherR!12)))

(assert (=> d!681910 (= (getIndex!409 rules!1750 otherR!12) lt!854839)))

(declare-fun b!2304846 () Bool)

(assert (=> b!2304846 (= e!1477001 (- 1))))

(declare-fun b!2304843 () Bool)

(assert (=> b!2304843 (= e!1477000 0)))

(declare-fun b!2304845 () Bool)

(assert (=> b!2304845 (= e!1477001 (+ 1 (getIndex!409 (t!206222 rules!1750) otherR!12)))))

(assert (= (and d!681910 c!365418) b!2304843))

(assert (= (and d!681910 (not c!365418)) b!2304844))

(assert (= (and b!2304844 c!365419) b!2304845))

(assert (= (and b!2304844 (not c!365419)) b!2304846))

(assert (=> d!681910 m!2731665))

(declare-fun m!2732115 () Bool)

(assert (=> b!2304845 m!2732115))

(assert (=> b!2304430 d!681910))

(declare-fun b!2304848 () Bool)

(declare-fun e!1477002 () Int)

(declare-fun e!1477003 () Int)

(assert (=> b!2304848 (= e!1477002 e!1477003)))

(declare-fun c!365421 () Bool)

(assert (=> b!2304848 (= c!365421 (and (is-Cons!27424 rules!1750) (not (= (h!32825 rules!1750) r!2363))))))

(declare-fun d!681912 () Bool)

(declare-fun lt!854840 () Int)

(assert (=> d!681912 (>= lt!854840 0)))

(assert (=> d!681912 (= lt!854840 e!1477002)))

(declare-fun c!365420 () Bool)

(assert (=> d!681912 (= c!365420 (and (is-Cons!27424 rules!1750) (= (h!32825 rules!1750) r!2363)))))

(assert (=> d!681912 (contains!4784 rules!1750 r!2363)))

(assert (=> d!681912 (= (getIndex!409 rules!1750 r!2363) lt!854840)))

(declare-fun b!2304850 () Bool)

(assert (=> b!2304850 (= e!1477003 (- 1))))

(declare-fun b!2304847 () Bool)

(assert (=> b!2304847 (= e!1477002 0)))

(declare-fun b!2304849 () Bool)

(assert (=> b!2304849 (= e!1477003 (+ 1 (getIndex!409 (t!206222 rules!1750) r!2363)))))

(assert (= (and d!681912 c!365420) b!2304847))

(assert (= (and d!681912 (not c!365420)) b!2304848))

(assert (= (and b!2304848 c!365421) b!2304849))

(assert (= (and b!2304848 (not c!365421)) b!2304850))

(assert (=> d!681912 m!2731673))

(declare-fun m!2732117 () Bool)

(assert (=> b!2304849 m!2732117))

(assert (=> b!2304430 d!681912))

(declare-fun d!681914 () Bool)

(declare-fun res!985414 () Bool)

(declare-fun e!1477004 () Bool)

(assert (=> d!681914 (=> (not res!985414) (not e!1477004))))

(assert (=> d!681914 (= res!985414 (validRegex!2549 (regex!4396 otherR!12)))))

(assert (=> d!681914 (= (ruleValid!1486 thiss!16613 otherR!12) e!1477004)))

(declare-fun b!2304851 () Bool)

(declare-fun res!985415 () Bool)

(assert (=> b!2304851 (=> (not res!985415) (not e!1477004))))

(assert (=> b!2304851 (= res!985415 (not (nullable!1887 (regex!4396 otherR!12))))))

(declare-fun b!2304852 () Bool)

(assert (=> b!2304852 (= e!1477004 (not (= (tag!4886 otherR!12) (String!29897 ""))))))

(assert (= (and d!681914 res!985414) b!2304851))

(assert (= (and b!2304851 res!985415) b!2304852))

(declare-fun m!2732119 () Bool)

(assert (=> d!681914 m!2732119))

(declare-fun m!2732121 () Bool)

(assert (=> b!2304851 m!2732121))

(assert (=> b!2304430 d!681914))

(declare-fun d!681916 () Bool)

(assert (=> d!681916 (ruleValid!1486 thiss!16613 otherR!12)))

(declare-fun lt!854841 () Unit!40329)

(assert (=> d!681916 (= lt!854841 (choose!13460 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!681916 (contains!4784 rules!1750 otherR!12)))

(assert (=> d!681916 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!891 thiss!16613 otherR!12 rules!1750) lt!854841)))

(declare-fun bs!457910 () Bool)

(assert (= bs!457910 d!681916))

(assert (=> bs!457910 m!2731695))

(declare-fun m!2732123 () Bool)

(assert (=> bs!457910 m!2732123))

(assert (=> bs!457910 m!2731665))

(assert (=> b!2304430 d!681916))

(declare-fun b!2304863 () Bool)

(declare-fun e!1477012 () Bool)

(declare-fun inv!16 (TokenValue!4558) Bool)

(assert (=> b!2304863 (= e!1477012 (inv!16 (value!139107 (h!32824 tokens!456))))))

(declare-fun b!2304864 () Bool)

(declare-fun e!1477013 () Bool)

(declare-fun inv!17 (TokenValue!4558) Bool)

(assert (=> b!2304864 (= e!1477013 (inv!17 (value!139107 (h!32824 tokens!456))))))

(declare-fun b!2304865 () Bool)

(declare-fun res!985418 () Bool)

(declare-fun e!1477011 () Bool)

(assert (=> b!2304865 (=> res!985418 e!1477011)))

(assert (=> b!2304865 (= res!985418 (not (is-IntegerValue!13676 (value!139107 (h!32824 tokens!456)))))))

(assert (=> b!2304865 (= e!1477013 e!1477011)))

(declare-fun d!681918 () Bool)

(declare-fun c!365427 () Bool)

(assert (=> d!681918 (= c!365427 (is-IntegerValue!13674 (value!139107 (h!32824 tokens!456))))))

(assert (=> d!681918 (= (inv!21 (value!139107 (h!32824 tokens!456))) e!1477012)))

(declare-fun b!2304866 () Bool)

(declare-fun inv!15 (TokenValue!4558) Bool)

(assert (=> b!2304866 (= e!1477011 (inv!15 (value!139107 (h!32824 tokens!456))))))

(declare-fun b!2304867 () Bool)

(assert (=> b!2304867 (= e!1477012 e!1477013)))

(declare-fun c!365426 () Bool)

(assert (=> b!2304867 (= c!365426 (is-IntegerValue!13675 (value!139107 (h!32824 tokens!456))))))

(assert (= (and d!681918 c!365427) b!2304863))

(assert (= (and d!681918 (not c!365427)) b!2304867))

(assert (= (and b!2304867 c!365426) b!2304864))

(assert (= (and b!2304867 (not c!365426)) b!2304865))

(assert (= (and b!2304865 (not res!985418)) b!2304866))

(declare-fun m!2732125 () Bool)

(assert (=> b!2304863 m!2732125))

(declare-fun m!2732127 () Bool)

(assert (=> b!2304864 m!2732127))

(declare-fun m!2732129 () Bool)

(assert (=> b!2304866 m!2732129))

(assert (=> b!2304431 d!681918))

(declare-fun b!2304879 () Bool)

(declare-fun e!1477016 () Bool)

(declare-fun tp!731156 () Bool)

(declare-fun tp!731155 () Bool)

(assert (=> b!2304879 (= e!1477016 (and tp!731156 tp!731155))))

(declare-fun b!2304878 () Bool)

(assert (=> b!2304878 (= e!1477016 tp_is_empty!10709)))

(assert (=> b!2304432 (= tp!731079 e!1477016)))

(declare-fun b!2304880 () Bool)

(declare-fun tp!731159 () Bool)

(assert (=> b!2304880 (= e!1477016 tp!731159)))

(declare-fun b!2304881 () Bool)

(declare-fun tp!731158 () Bool)

(declare-fun tp!731157 () Bool)

(assert (=> b!2304881 (= e!1477016 (and tp!731158 tp!731157))))

(assert (= (and b!2304432 (is-ElementMatch!6744 (regex!4396 otherR!12))) b!2304878))

(assert (= (and b!2304432 (is-Concat!11303 (regex!4396 otherR!12))) b!2304879))

(assert (= (and b!2304432 (is-Star!6744 (regex!4396 otherR!12))) b!2304880))

(assert (= (and b!2304432 (is-Union!6744 (regex!4396 otherR!12))) b!2304881))

(declare-fun b!2304886 () Bool)

(declare-fun e!1477019 () Bool)

(declare-fun tp!731162 () Bool)

(assert (=> b!2304886 (= e!1477019 (and tp_is_empty!10709 tp!731162))))

(assert (=> b!2304413 (= tp!731080 e!1477019)))

(assert (= (and b!2304413 (is-Cons!27422 (t!206220 otherP!12))) b!2304886))

(declare-fun b!2304897 () Bool)

(declare-fun b_free!69629 () Bool)

(declare-fun b_next!70333 () Bool)

(assert (=> b!2304897 (= b_free!69629 (not b_next!70333))))

(declare-fun t!206284 () Bool)

(declare-fun tb!137975 () Bool)

(assert (=> (and b!2304897 (= (toValue!6210 (transformation!4396 (h!32825 (t!206222 rules!1750)))) (toValue!6210 (transformation!4396 r!2363))) t!206284) tb!137975))

(declare-fun result!168192 () Bool)

(assert (= result!168192 result!168132))

(assert (=> d!681802 t!206284))

(assert (=> d!681804 t!206284))

(declare-fun tp!731172 () Bool)

(declare-fun b_and!183889 () Bool)

(assert (=> b!2304897 (= tp!731172 (and (=> t!206284 result!168192) b_and!183889))))

(declare-fun b_free!69631 () Bool)

(declare-fun b_next!70335 () Bool)

(assert (=> b!2304897 (= b_free!69631 (not b_next!70335))))

(declare-fun tb!137977 () Bool)

(declare-fun t!206286 () Bool)

(assert (=> (and b!2304897 (= (toChars!6069 (transformation!4396 (h!32825 (t!206222 rules!1750)))) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456))))) t!206286) tb!137977))

(declare-fun result!168194 () Bool)

(assert (= result!168194 result!168122))

(assert (=> b!2304565 t!206286))

(declare-fun tb!137979 () Bool)

(declare-fun t!206288 () Bool)

(assert (=> (and b!2304897 (= (toChars!6069 (transformation!4396 (h!32825 (t!206222 rules!1750)))) (toChars!6069 (transformation!4396 r!2363))) t!206288) tb!137979))

(declare-fun result!168196 () Bool)

(assert (= result!168196 result!168152))

(assert (=> d!681804 t!206288))

(declare-fun tb!137981 () Bool)

(declare-fun t!206290 () Bool)

(assert (=> (and b!2304897 (= (toChars!6069 (transformation!4396 (h!32825 (t!206222 rules!1750)))) (toChars!6069 (transformation!4396 (rule!6744 (head!5045 tokens!456))))) t!206290) tb!137981))

(declare-fun result!168198 () Bool)

(assert (= result!168198 result!168160))

(assert (=> d!681826 t!206290))

(assert (=> d!681854 t!206286))

(declare-fun tp!731173 () Bool)

(declare-fun b_and!183891 () Bool)

(assert (=> b!2304897 (= tp!731173 (and (=> t!206286 result!168194) (=> t!206288 result!168196) (=> t!206290 result!168198) b_and!183891))))

(declare-fun e!1477031 () Bool)

(assert (=> b!2304897 (= e!1477031 (and tp!731172 tp!731173))))

(declare-fun b!2304896 () Bool)

(declare-fun tp!731174 () Bool)

(declare-fun e!1477029 () Bool)

(assert (=> b!2304896 (= e!1477029 (and tp!731174 (inv!37061 (tag!4886 (h!32825 (t!206222 rules!1750)))) (inv!37064 (transformation!4396 (h!32825 (t!206222 rules!1750)))) e!1477031))))

(declare-fun b!2304895 () Bool)

(declare-fun e!1477028 () Bool)

(declare-fun tp!731171 () Bool)

(assert (=> b!2304895 (= e!1477028 (and e!1477029 tp!731171))))

(assert (=> b!2304434 (= tp!731067 e!1477028)))

(assert (= b!2304896 b!2304897))

(assert (= b!2304895 b!2304896))

(assert (= (and b!2304434 (is-Cons!27424 (t!206222 rules!1750))) b!2304895))

(declare-fun m!2732131 () Bool)

(assert (=> b!2304896 m!2732131))

(declare-fun m!2732133 () Bool)

(assert (=> b!2304896 m!2732133))

(declare-fun b!2304898 () Bool)

(declare-fun e!1477032 () Bool)

(declare-fun tp!731175 () Bool)

(assert (=> b!2304898 (= e!1477032 (and tp_is_empty!10709 tp!731175))))

(assert (=> b!2304425 (= tp!731070 e!1477032)))

(assert (= (and b!2304425 (is-Cons!27422 (t!206220 input!1722))) b!2304898))

(declare-fun b!2304900 () Bool)

(declare-fun e!1477033 () Bool)

(declare-fun tp!731177 () Bool)

(declare-fun tp!731176 () Bool)

(assert (=> b!2304900 (= e!1477033 (and tp!731177 tp!731176))))

(declare-fun b!2304899 () Bool)

(assert (=> b!2304899 (= e!1477033 tp_is_empty!10709)))

(assert (=> b!2304414 (= tp!731069 e!1477033)))

(declare-fun b!2304901 () Bool)

(declare-fun tp!731180 () Bool)

(assert (=> b!2304901 (= e!1477033 tp!731180)))

(declare-fun b!2304902 () Bool)

(declare-fun tp!731179 () Bool)

(declare-fun tp!731178 () Bool)

(assert (=> b!2304902 (= e!1477033 (and tp!731179 tp!731178))))

(assert (= (and b!2304414 (is-ElementMatch!6744 (regex!4396 (h!32825 rules!1750)))) b!2304899))

(assert (= (and b!2304414 (is-Concat!11303 (regex!4396 (h!32825 rules!1750)))) b!2304900))

(assert (= (and b!2304414 (is-Star!6744 (regex!4396 (h!32825 rules!1750)))) b!2304901))

(assert (= (and b!2304414 (is-Union!6744 (regex!4396 (h!32825 rules!1750)))) b!2304902))

(declare-fun b!2304904 () Bool)

(declare-fun e!1477034 () Bool)

(declare-fun tp!731182 () Bool)

(declare-fun tp!731181 () Bool)

(assert (=> b!2304904 (= e!1477034 (and tp!731182 tp!731181))))

(declare-fun b!2304903 () Bool)

(assert (=> b!2304903 (= e!1477034 tp_is_empty!10709)))

(assert (=> b!2304437 (= tp!731076 e!1477034)))

(declare-fun b!2304905 () Bool)

(declare-fun tp!731185 () Bool)

(assert (=> b!2304905 (= e!1477034 tp!731185)))

(declare-fun b!2304906 () Bool)

(declare-fun tp!731184 () Bool)

(declare-fun tp!731183 () Bool)

(assert (=> b!2304906 (= e!1477034 (and tp!731184 tp!731183))))

(assert (= (and b!2304437 (is-ElementMatch!6744 (regex!4396 r!2363))) b!2304903))

(assert (= (and b!2304437 (is-Concat!11303 (regex!4396 r!2363))) b!2304904))

(assert (= (and b!2304437 (is-Star!6744 (regex!4396 r!2363))) b!2304905))

(assert (= (and b!2304437 (is-Union!6744 (regex!4396 r!2363))) b!2304906))

(declare-fun b!2304908 () Bool)

(declare-fun e!1477035 () Bool)

(declare-fun tp!731187 () Bool)

(declare-fun tp!731186 () Bool)

(assert (=> b!2304908 (= e!1477035 (and tp!731187 tp!731186))))

(declare-fun b!2304907 () Bool)

(assert (=> b!2304907 (= e!1477035 tp_is_empty!10709)))

(assert (=> b!2304426 (= tp!731068 e!1477035)))

(declare-fun b!2304909 () Bool)

(declare-fun tp!731190 () Bool)

(assert (=> b!2304909 (= e!1477035 tp!731190)))

(declare-fun b!2304910 () Bool)

(declare-fun tp!731189 () Bool)

(declare-fun tp!731188 () Bool)

(assert (=> b!2304910 (= e!1477035 (and tp!731189 tp!731188))))

(assert (= (and b!2304426 (is-ElementMatch!6744 (regex!4396 (rule!6744 (h!32824 tokens!456))))) b!2304907))

(assert (= (and b!2304426 (is-Concat!11303 (regex!4396 (rule!6744 (h!32824 tokens!456))))) b!2304908))

(assert (= (and b!2304426 (is-Star!6744 (regex!4396 (rule!6744 (h!32824 tokens!456))))) b!2304909))

(assert (= (and b!2304426 (is-Union!6744 (regex!4396 (rule!6744 (h!32824 tokens!456))))) b!2304910))

(declare-fun b!2304924 () Bool)

(declare-fun b_free!69633 () Bool)

(declare-fun b_next!70337 () Bool)

(assert (=> b!2304924 (= b_free!69633 (not b_next!70337))))

(declare-fun tb!137983 () Bool)

(declare-fun t!206292 () Bool)

(assert (=> (and b!2304924 (= (toValue!6210 (transformation!4396 (rule!6744 (h!32824 (t!206221 tokens!456))))) (toValue!6210 (transformation!4396 r!2363))) t!206292) tb!137983))

(declare-fun result!168202 () Bool)

(assert (= result!168202 result!168132))

(assert (=> d!681802 t!206292))

(assert (=> d!681804 t!206292))

(declare-fun tp!731205 () Bool)

(declare-fun b_and!183893 () Bool)

(assert (=> b!2304924 (= tp!731205 (and (=> t!206292 result!168202) b_and!183893))))

(declare-fun b_free!69635 () Bool)

(declare-fun b_next!70339 () Bool)

(assert (=> b!2304924 (= b_free!69635 (not b_next!70339))))

(declare-fun t!206294 () Bool)

(declare-fun tb!137985 () Bool)

(assert (=> (and b!2304924 (= (toChars!6069 (transformation!4396 (rule!6744 (h!32824 (t!206221 tokens!456))))) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456))))) t!206294) tb!137985))

(declare-fun result!168204 () Bool)

(assert (= result!168204 result!168122))

(assert (=> b!2304565 t!206294))

(declare-fun t!206296 () Bool)

(declare-fun tb!137987 () Bool)

(assert (=> (and b!2304924 (= (toChars!6069 (transformation!4396 (rule!6744 (h!32824 (t!206221 tokens!456))))) (toChars!6069 (transformation!4396 r!2363))) t!206296) tb!137987))

(declare-fun result!168206 () Bool)

(assert (= result!168206 result!168152))

(assert (=> d!681804 t!206296))

(declare-fun t!206298 () Bool)

(declare-fun tb!137989 () Bool)

(assert (=> (and b!2304924 (= (toChars!6069 (transformation!4396 (rule!6744 (h!32824 (t!206221 tokens!456))))) (toChars!6069 (transformation!4396 (rule!6744 (head!5045 tokens!456))))) t!206298) tb!137989))

(declare-fun result!168208 () Bool)

(assert (= result!168208 result!168160))

(assert (=> d!681826 t!206298))

(assert (=> d!681854 t!206294))

(declare-fun tp!731204 () Bool)

(declare-fun b_and!183895 () Bool)

(assert (=> b!2304924 (= tp!731204 (and (=> t!206294 result!168204) (=> t!206296 result!168206) (=> t!206298 result!168208) b_and!183895))))

(declare-fun e!1477048 () Bool)

(assert (=> b!2304417 (= tp!731078 e!1477048)))

(declare-fun e!1477052 () Bool)

(declare-fun b!2304923 () Bool)

(declare-fun e!1477050 () Bool)

(declare-fun tp!731203 () Bool)

(assert (=> b!2304923 (= e!1477052 (and tp!731203 (inv!37061 (tag!4886 (rule!6744 (h!32824 (t!206221 tokens!456))))) (inv!37064 (transformation!4396 (rule!6744 (h!32824 (t!206221 tokens!456))))) e!1477050))))

(declare-fun e!1477051 () Bool)

(declare-fun tp!731201 () Bool)

(declare-fun b!2304922 () Bool)

(assert (=> b!2304922 (= e!1477051 (and (inv!21 (value!139107 (h!32824 (t!206221 tokens!456)))) e!1477052 tp!731201))))

(assert (=> b!2304924 (= e!1477050 (and tp!731205 tp!731204))))

(declare-fun b!2304921 () Bool)

(declare-fun tp!731202 () Bool)

(assert (=> b!2304921 (= e!1477048 (and (inv!37065 (h!32824 (t!206221 tokens!456))) e!1477051 tp!731202))))

(assert (= b!2304923 b!2304924))

(assert (= b!2304922 b!2304923))

(assert (= b!2304921 b!2304922))

(assert (= (and b!2304417 (is-Cons!27423 (t!206221 tokens!456))) b!2304921))

(declare-fun m!2732135 () Bool)

(assert (=> b!2304923 m!2732135))

(declare-fun m!2732137 () Bool)

(assert (=> b!2304923 m!2732137))

(declare-fun m!2732139 () Bool)

(assert (=> b!2304922 m!2732139))

(declare-fun m!2732141 () Bool)

(assert (=> b!2304921 m!2732141))

(declare-fun b!2304925 () Bool)

(declare-fun e!1477054 () Bool)

(declare-fun tp!731206 () Bool)

(assert (=> b!2304925 (= e!1477054 (and tp_is_empty!10709 tp!731206))))

(assert (=> b!2304418 (= tp!731065 e!1477054)))

(assert (= (and b!2304418 (is-Cons!27422 (t!206220 suffix!886))) b!2304925))

(declare-fun b!2304926 () Bool)

(declare-fun e!1477055 () Bool)

(declare-fun tp!731207 () Bool)

(assert (=> b!2304926 (= e!1477055 (and tp_is_empty!10709 tp!731207))))

(assert (=> b!2304431 (= tp!731075 e!1477055)))

(assert (= (and b!2304431 (is-Cons!27422 (originalCharacters!5166 (h!32824 tokens!456)))) b!2304926))

(declare-fun b_lambda!73433 () Bool)

(assert (= b_lambda!73425 (or (and b!2304441 b_free!69599 (= (toChars!6069 (transformation!4396 r!2363)) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))))) (and b!2304443 b_free!69611) (and b!2304897 b_free!69631 (= (toChars!6069 (transformation!4396 (h!32825 (t!206222 rules!1750)))) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))))) (and b!2304409 b_free!69607 (= (toChars!6069 (transformation!4396 otherR!12)) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))))) (and b!2304924 b_free!69635 (= (toChars!6069 (transformation!4396 (rule!6744 (h!32824 (t!206221 tokens!456))))) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))))) (and b!2304422 b_free!69603 (= (toChars!6069 (transformation!4396 (h!32825 rules!1750))) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))))) b_lambda!73433)))

(declare-fun b_lambda!73435 () Bool)

(assert (= b_lambda!73421 (or (and b!2304897 b_free!69629 (= (toValue!6210 (transformation!4396 (h!32825 (t!206222 rules!1750)))) (toValue!6210 (transformation!4396 r!2363)))) (and b!2304409 b_free!69605 (= (toValue!6210 (transformation!4396 otherR!12)) (toValue!6210 (transformation!4396 r!2363)))) (and b!2304924 b_free!69633 (= (toValue!6210 (transformation!4396 (rule!6744 (h!32824 (t!206221 tokens!456))))) (toValue!6210 (transformation!4396 r!2363)))) (and b!2304443 b_free!69609 (= (toValue!6210 (transformation!4396 (rule!6744 (h!32824 tokens!456)))) (toValue!6210 (transformation!4396 r!2363)))) (and b!2304422 b_free!69601 (= (toValue!6210 (transformation!4396 (h!32825 rules!1750))) (toValue!6210 (transformation!4396 r!2363)))) (and b!2304441 b_free!69597) b_lambda!73435)))

(declare-fun b_lambda!73437 () Bool)

(assert (= b_lambda!73415 (or (and b!2304897 b_free!69629 (= (toValue!6210 (transformation!4396 (h!32825 (t!206222 rules!1750)))) (toValue!6210 (transformation!4396 r!2363)))) (and b!2304409 b_free!69605 (= (toValue!6210 (transformation!4396 otherR!12)) (toValue!6210 (transformation!4396 r!2363)))) (and b!2304924 b_free!69633 (= (toValue!6210 (transformation!4396 (rule!6744 (h!32824 (t!206221 tokens!456))))) (toValue!6210 (transformation!4396 r!2363)))) (and b!2304443 b_free!69609 (= (toValue!6210 (transformation!4396 (rule!6744 (h!32824 tokens!456)))) (toValue!6210 (transformation!4396 r!2363)))) (and b!2304422 b_free!69601 (= (toValue!6210 (transformation!4396 (h!32825 rules!1750))) (toValue!6210 (transformation!4396 r!2363)))) (and b!2304441 b_free!69597) b_lambda!73437)))

(declare-fun b_lambda!73439 () Bool)

(assert (= b_lambda!73413 (or (and b!2304441 b_free!69599 (= (toChars!6069 (transformation!4396 r!2363)) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))))) (and b!2304443 b_free!69611) (and b!2304897 b_free!69631 (= (toChars!6069 (transformation!4396 (h!32825 (t!206222 rules!1750)))) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))))) (and b!2304409 b_free!69607 (= (toChars!6069 (transformation!4396 otherR!12)) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))))) (and b!2304924 b_free!69635 (= (toChars!6069 (transformation!4396 (rule!6744 (h!32824 (t!206221 tokens!456))))) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))))) (and b!2304422 b_free!69603 (= (toChars!6069 (transformation!4396 (h!32825 rules!1750))) (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))))) b_lambda!73439)))

(declare-fun b_lambda!73441 () Bool)

(assert (= b_lambda!73419 (or (and b!2304897 b_free!69631 (= (toChars!6069 (transformation!4396 (h!32825 (t!206222 rules!1750)))) (toChars!6069 (transformation!4396 r!2363)))) (and b!2304924 b_free!69635 (= (toChars!6069 (transformation!4396 (rule!6744 (h!32824 (t!206221 tokens!456))))) (toChars!6069 (transformation!4396 r!2363)))) (and b!2304443 b_free!69611 (= (toChars!6069 (transformation!4396 (rule!6744 (h!32824 tokens!456)))) (toChars!6069 (transformation!4396 r!2363)))) (and b!2304409 b_free!69607 (= (toChars!6069 (transformation!4396 otherR!12)) (toChars!6069 (transformation!4396 r!2363)))) (and b!2304422 b_free!69603 (= (toChars!6069 (transformation!4396 (h!32825 rules!1750))) (toChars!6069 (transformation!4396 r!2363)))) (and b!2304441 b_free!69599) b_lambda!73441)))

(push 1)

(assert (not d!681800))

(assert (not d!681790))

(assert (not d!681816))

(assert (not b!2304851))

(assert (not b!2304557))

(assert (not b!2304698))

(assert (not b!2304695))

(assert (not d!681830))

(assert (not d!681872))

(assert (not b!2304565))

(assert (not b_next!70333))

(assert b_and!183857)

(assert (not b_next!70339))

(assert (not d!681870))

(assert (not b!2304833))

(assert (not b!2304676))

(assert (not b!2304910))

(assert b_and!183861)

(assert (not b!2304832))

(assert (not d!681858))

(assert (not b!2304881))

(assert (not b!2304922))

(assert (not b_next!70313))

(assert (not b!2304753))

(assert (not d!681820))

(assert (not b!2304923))

(assert (not b!2304830))

(assert (not b!2304760))

(assert (not b!2304863))

(assert (not b_next!70305))

(assert (not b!2304670))

(assert (not d!681814))

(assert (not b_next!70309))

(assert (not b_lambda!73433))

(assert (not b!2304886))

(assert (not b!2304696))

(assert (not b!2304740))

(assert (not b!2304600))

(assert (not d!681874))

(assert (not b_next!70315))

(assert (not b!2304560))

(assert (not b!2304688))

(assert (not b!2304680))

(assert (not b!2304681))

(assert (not d!681856))

(assert (not b!2304864))

(assert (not b!2304925))

(assert (not b!2304571))

(assert (not b!2304736))

(assert (not b!2304606))

(assert (not b!2304909))

(assert (not d!681832))

(assert b_and!183843)

(assert (not b!2304716))

(assert (not d!681910))

(assert (not b_next!70307))

(assert (not tb!137919))

(assert (not b!2304735))

(assert (not d!681866))

(assert (not d!681844))

(assert (not b!2304880))

(assert (not bm!137145))

(assert (not b!2304759))

(assert (not b!2304554))

(assert (not b!2304609))

(assert (not d!681906))

(assert b_and!183863)

(assert (not d!681794))

(assert (not d!681840))

(assert (not b!2304742))

(assert (not b!2304758))

(assert (not b_lambda!73435))

(assert (not b!2304849))

(assert (not b!2304665))

(assert (not b_next!70303))

(assert (not tb!137927))

(assert (not d!681916))

(assert (not b!2304754))

(assert (not b!2304896))

(assert (not b!2304921))

(assert (not d!681836))

(assert (not b!2304908))

(assert (not b!2304715))

(assert (not d!681912))

(assert (not b!2304902))

(assert (not tb!137943))

(assert (not b_lambda!73437))

(assert (not b!2304906))

(assert b_and!183845)

(assert (not b!2304703))

(assert (not b!2304607))

(assert (not d!681850))

(assert (not b!2304738))

(assert (not b!2304689))

(assert (not b!2304756))

(assert (not b_next!70301))

(assert (not b_next!70337))

(assert (not bm!137142))

(assert (not b!2304905))

(assert (not b!2304604))

(assert (not b!2304602))

(assert b_and!183891)

(assert (not b!2304879))

(assert (not d!681846))

(assert (not b_next!70335))

(assert b_and!183893)

(assert (not tb!137951))

(assert b_and!183859)

(assert (not d!681914))

(assert (not b_lambda!73423))

(assert b_and!183847)

(assert (not d!681852))

(assert tp_is_empty!10709)

(assert (not b!2304743))

(assert (not b!2304737))

(assert (not b!2304900))

(assert (not b!2304866))

(assert (not b_lambda!73441))

(assert (not b!2304566))

(assert (not b!2304926))

(assert b_and!183895)

(assert (not d!681854))

(assert (not b!2304845))

(assert (not b!2304898))

(assert (not bm!137138))

(assert (not b!2304895))

(assert b_and!183889)

(assert (not b!2304683))

(assert (not d!681824))

(assert (not d!681812))

(assert (not b_next!70311))

(assert (not b!2304834))

(assert (not b!2304678))

(assert (not d!681796))

(assert (not b!2304674))

(assert b_and!183841)

(assert (not d!681798))

(assert (not b!2304904))

(assert (not b!2304741))

(assert (not b!2304673))

(assert (not b_lambda!73439))

(assert (not d!681822))

(assert (not b!2304714))

(assert (not b!2304901))

(assert (not d!681804))

(assert (not d!681826))

(check-sat)

(pop 1)

(push 1)

(assert b_and!183861)

(assert (not b_next!70313))

(assert (not b_next!70315))

(assert b_and!183843)

(assert (not b_next!70307))

(assert b_and!183863)

(assert (not b_next!70303))

(assert b_and!183845)

(assert b_and!183891)

(assert b_and!183847)

(assert b_and!183895)

(assert b_and!183889)

(assert (not b_next!70311))

(assert b_and!183841)

(assert (not b_next!70333))

(assert b_and!183857)

(assert (not b_next!70339))

(assert (not b_next!70309))

(assert (not b_next!70305))

(assert (not b_next!70301))

(assert (not b_next!70337))

(assert b_and!183859)

(assert (not b_next!70335))

(assert b_and!183893)

(check-sat)

(pop 1)

