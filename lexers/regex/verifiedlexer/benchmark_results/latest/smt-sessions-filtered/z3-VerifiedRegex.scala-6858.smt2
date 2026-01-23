; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!360424 () Bool)

(assert start!360424)

(declare-fun b!3848559 () Bool)

(declare-fun b_free!103117 () Bool)

(declare-fun b_next!103821 () Bool)

(assert (=> b!3848559 (= b_free!103117 (not b_next!103821))))

(declare-fun tp!1166607 () Bool)

(declare-fun b_and!287211 () Bool)

(assert (=> b!3848559 (= tp!1166607 b_and!287211)))

(declare-fun b_free!103119 () Bool)

(declare-fun b_next!103823 () Bool)

(assert (=> b!3848559 (= b_free!103119 (not b_next!103823))))

(declare-fun tp!1166613 () Bool)

(declare-fun b_and!287213 () Bool)

(assert (=> b!3848559 (= tp!1166613 b_and!287213)))

(declare-fun b!3848565 () Bool)

(declare-fun b_free!103121 () Bool)

(declare-fun b_next!103825 () Bool)

(assert (=> b!3848565 (= b_free!103121 (not b_next!103825))))

(declare-fun tp!1166605 () Bool)

(declare-fun b_and!287215 () Bool)

(assert (=> b!3848565 (= tp!1166605 b_and!287215)))

(declare-fun b_free!103123 () Bool)

(declare-fun b_next!103827 () Bool)

(assert (=> b!3848565 (= b_free!103123 (not b_next!103827))))

(declare-fun tp!1166610 () Bool)

(declare-fun b_and!287217 () Bool)

(assert (=> b!3848565 (= tp!1166610 b_and!287217)))

(declare-fun b!3848568 () Bool)

(declare-fun b_free!103125 () Bool)

(declare-fun b_next!103829 () Bool)

(assert (=> b!3848568 (= b_free!103125 (not b_next!103829))))

(declare-fun tp!1166602 () Bool)

(declare-fun b_and!287219 () Bool)

(assert (=> b!3848568 (= tp!1166602 b_and!287219)))

(declare-fun b_free!103127 () Bool)

(declare-fun b_next!103831 () Bool)

(assert (=> b!3848568 (= b_free!103127 (not b_next!103831))))

(declare-fun tp!1166601 () Bool)

(declare-fun b_and!287221 () Bool)

(assert (=> b!3848568 (= tp!1166601 b_and!287221)))

(declare-fun b!3848545 () Bool)

(declare-fun e!2378790 () Bool)

(declare-fun e!2378775 () Bool)

(declare-fun tp!1166608 () Bool)

(assert (=> b!3848545 (= e!2378790 (and e!2378775 tp!1166608))))

(declare-fun b!3848546 () Bool)

(declare-fun e!2378797 () Bool)

(declare-fun e!2378792 () Bool)

(assert (=> b!3848546 (= e!2378797 (not e!2378792))))

(declare-fun res!1558040 () Bool)

(assert (=> b!3848546 (=> res!1558040 e!2378792)))

(declare-datatypes ((C!22604 0))(
  ( (C!22605 (val!13396 Int)) )
))
(declare-datatypes ((List!40912 0))(
  ( (Nil!40788) (Cons!40788 (h!46208 C!22604) (t!311333 List!40912)) )
))
(declare-fun lt!1336593 () List!40912)

(declare-fun lt!1336601 () List!40912)

(assert (=> b!3848546 (= res!1558040 (not (= lt!1336593 lt!1336601)))))

(declare-datatypes ((List!40913 0))(
  ( (Nil!40789) (Cons!40789 (h!46209 (_ BitVec 16)) (t!311334 List!40913)) )
))
(declare-datatypes ((TokenValue!6534 0))(
  ( (FloatLiteralValue!13068 (text!46183 List!40913)) (TokenValueExt!6533 (__x!25285 Int)) (Broken!32670 (value!200272 List!40913)) (Object!6657) (End!6534) (Def!6534) (Underscore!6534) (Match!6534) (Else!6534) (Error!6534) (Case!6534) (If!6534) (Extends!6534) (Abstract!6534) (Class!6534) (Val!6534) (DelimiterValue!13068 (del!6594 List!40913)) (KeywordValue!6540 (value!200273 List!40913)) (CommentValue!13068 (value!200274 List!40913)) (WhitespaceValue!13068 (value!200275 List!40913)) (IndentationValue!6534 (value!200276 List!40913)) (String!46387) (Int32!6534) (Broken!32671 (value!200277 List!40913)) (Boolean!6535) (Unit!58459) (OperatorValue!6537 (op!6594 List!40913)) (IdentifierValue!13068 (value!200278 List!40913)) (IdentifierValue!13069 (value!200279 List!40913)) (WhitespaceValue!13069 (value!200280 List!40913)) (True!13068) (False!13068) (Broken!32672 (value!200281 List!40913)) (Broken!32673 (value!200282 List!40913)) (True!13069) (RightBrace!6534) (RightBracket!6534) (Colon!6534) (Null!6534) (Comma!6534) (LeftBracket!6534) (False!13069) (LeftBrace!6534) (ImaginaryLiteralValue!6534 (text!46184 List!40913)) (StringLiteralValue!19602 (value!200283 List!40913)) (EOFValue!6534 (value!200284 List!40913)) (IdentValue!6534 (value!200285 List!40913)) (DelimiterValue!13069 (value!200286 List!40913)) (DedentValue!6534 (value!200287 List!40913)) (NewLineValue!6534 (value!200288 List!40913)) (IntegerValue!19602 (value!200289 (_ BitVec 32)) (text!46185 List!40913)) (IntegerValue!19603 (value!200290 Int) (text!46186 List!40913)) (Times!6534) (Or!6534) (Equal!6534) (Minus!6534) (Broken!32674 (value!200291 List!40913)) (And!6534) (Div!6534) (LessEqual!6534) (Mod!6534) (Concat!17743) (Not!6534) (Plus!6534) (SpaceValue!6534 (value!200292 List!40913)) (IntegerValue!19604 (value!200293 Int) (text!46187 List!40913)) (StringLiteralValue!19603 (text!46188 List!40913)) (FloatLiteralValue!13069 (text!46189 List!40913)) (BytesLiteralValue!6534 (value!200294 List!40913)) (CommentValue!13069 (value!200295 List!40913)) (StringLiteralValue!19604 (value!200296 List!40913)) (ErrorTokenValue!6534 (msg!6595 List!40913)) )
))
(declare-datatypes ((Regex!11209 0))(
  ( (ElementMatch!11209 (c!670246 C!22604)) (Concat!17744 (regOne!22930 Regex!11209) (regTwo!22930 Regex!11209)) (EmptyExpr!11209) (Star!11209 (reg!11538 Regex!11209)) (EmptyLang!11209) (Union!11209 (regOne!22931 Regex!11209) (regTwo!22931 Regex!11209)) )
))
(declare-datatypes ((String!46388 0))(
  ( (String!46389 (value!200297 String)) )
))
(declare-datatypes ((IArray!25035 0))(
  ( (IArray!25036 (innerList!12575 List!40912)) )
))
(declare-datatypes ((Conc!12515 0))(
  ( (Node!12515 (left!31461 Conc!12515) (right!31791 Conc!12515) (csize!25260 Int) (cheight!12726 Int)) (Leaf!19374 (xs!15821 IArray!25035) (csize!25261 Int)) (Empty!12515) )
))
(declare-datatypes ((BalanceConc!24624 0))(
  ( (BalanceConc!24625 (c!670247 Conc!12515)) )
))
(declare-datatypes ((TokenValueInjection!12496 0))(
  ( (TokenValueInjection!12497 (toValue!8720 Int) (toChars!8579 Int)) )
))
(declare-datatypes ((Rule!12408 0))(
  ( (Rule!12409 (regex!6304 Regex!11209) (tag!7164 String!46388) (isSeparator!6304 Bool) (transformation!6304 TokenValueInjection!12496)) )
))
(declare-datatypes ((Token!11746 0))(
  ( (Token!11747 (value!200298 TokenValue!6534) (rule!9154 Rule!12408) (size!30679 Int) (originalCharacters!6904 List!40912)) )
))
(declare-datatypes ((List!40914 0))(
  ( (Nil!40790) (Cons!40790 (h!46210 Token!11746) (t!311335 List!40914)) )
))
(declare-datatypes ((tuple2!39974 0))(
  ( (tuple2!39975 (_1!23121 List!40914) (_2!23121 List!40912)) )
))
(declare-fun lt!1336607 () tuple2!39974)

(declare-datatypes ((LexerInterface!5893 0))(
  ( (LexerInterfaceExt!5890 (__x!25286 Int)) (Lexer!5891) )
))
(declare-fun thiss!20629 () LexerInterface!5893)

(declare-datatypes ((List!40915 0))(
  ( (Nil!40791) (Cons!40791 (h!46211 Rule!12408) (t!311336 List!40915)) )
))
(declare-fun rules!2768 () List!40915)

(declare-datatypes ((tuple2!39976 0))(
  ( (tuple2!39977 (_1!23122 Token!11746) (_2!23122 List!40912)) )
))
(declare-datatypes ((Option!8722 0))(
  ( (None!8721) (Some!8721 (v!39013 tuple2!39976)) )
))
(declare-fun lt!1336591 () Option!8722)

(declare-fun lexList!1661 (LexerInterface!5893 List!40915 List!40912) tuple2!39974)

(assert (=> b!3848546 (= lt!1336607 (lexList!1661 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336591))))))

(declare-fun lt!1336596 () List!40912)

(declare-fun lt!1336592 () TokenValue!6534)

(declare-fun lt!1336594 () List!40912)

(declare-fun lt!1336590 () Int)

(assert (=> b!3848546 (and (= (size!30679 (_1!23122 (v!39013 lt!1336591))) lt!1336590) (= (originalCharacters!6904 (_1!23122 (v!39013 lt!1336591))) lt!1336596) (= (v!39013 lt!1336591) (tuple2!39977 (Token!11747 lt!1336592 (rule!9154 (_1!23122 (v!39013 lt!1336591))) lt!1336590 lt!1336596) lt!1336594)))))

(declare-fun size!30680 (List!40912) Int)

(assert (=> b!3848546 (= lt!1336590 (size!30680 lt!1336596))))

(declare-fun e!2378801 () Bool)

(assert (=> b!3848546 e!2378801))

(declare-fun res!1558043 () Bool)

(assert (=> b!3848546 (=> (not res!1558043) (not e!2378801))))

(assert (=> b!3848546 (= res!1558043 (= (value!200298 (_1!23122 (v!39013 lt!1336591))) lt!1336592))))

(declare-fun apply!9547 (TokenValueInjection!12496 BalanceConc!24624) TokenValue!6534)

(declare-fun seqFromList!4575 (List!40912) BalanceConc!24624)

(assert (=> b!3848546 (= lt!1336592 (apply!9547 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (seqFromList!4575 lt!1336596)))))

(assert (=> b!3848546 (= (_2!23122 (v!39013 lt!1336591)) lt!1336594)))

(declare-datatypes ((Unit!58460 0))(
  ( (Unit!58461) )
))
(declare-fun lt!1336602 () Unit!58460)

(declare-fun lemmaSamePrefixThenSameSuffix!1624 (List!40912 List!40912 List!40912 List!40912 List!40912) Unit!58460)

(assert (=> b!3848546 (= lt!1336602 (lemmaSamePrefixThenSameSuffix!1624 lt!1336596 (_2!23122 (v!39013 lt!1336591)) lt!1336596 lt!1336594 lt!1336601))))

(declare-fun getSuffix!1858 (List!40912 List!40912) List!40912)

(assert (=> b!3848546 (= lt!1336594 (getSuffix!1858 lt!1336601 lt!1336596))))

(declare-fun isPrefix!3403 (List!40912 List!40912) Bool)

(assert (=> b!3848546 (isPrefix!3403 lt!1336596 lt!1336593)))

(declare-fun ++!10365 (List!40912 List!40912) List!40912)

(assert (=> b!3848546 (= lt!1336593 (++!10365 lt!1336596 (_2!23122 (v!39013 lt!1336591))))))

(declare-fun lt!1336589 () Unit!58460)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2266 (List!40912 List!40912) Unit!58460)

(assert (=> b!3848546 (= lt!1336589 (lemmaConcatTwoListThenFirstIsPrefix!2266 lt!1336596 (_2!23122 (v!39013 lt!1336591))))))

(declare-fun list!15180 (BalanceConc!24624) List!40912)

(declare-fun charsOf!4132 (Token!11746) BalanceConc!24624)

(assert (=> b!3848546 (= lt!1336596 (list!15180 (charsOf!4132 (_1!23122 (v!39013 lt!1336591)))))))

(declare-fun ruleValid!2256 (LexerInterface!5893 Rule!12408) Bool)

(assert (=> b!3848546 (ruleValid!2256 thiss!20629 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))

(declare-fun lt!1336604 () Unit!58460)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1336 (LexerInterface!5893 Rule!12408 List!40915) Unit!58460)

(assert (=> b!3848546 (= lt!1336604 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1336 thiss!20629 (rule!9154 (_1!23122 (v!39013 lt!1336591))) rules!2768))))

(declare-fun lt!1336597 () Unit!58460)

(declare-fun lemmaCharactersSize!965 (Token!11746) Unit!58460)

(assert (=> b!3848546 (= lt!1336597 (lemmaCharactersSize!965 (_1!23122 (v!39013 lt!1336591))))))

(declare-fun e!2378786 () Bool)

(declare-fun suffixTokens!72 () List!40914)

(declare-fun b!3848547 () Bool)

(declare-fun tp!1166611 () Bool)

(declare-fun e!2378793 () Bool)

(declare-fun inv!54931 (Token!11746) Bool)

(assert (=> b!3848547 (= e!2378793 (and (inv!54931 (h!46210 suffixTokens!72)) e!2378786 tp!1166611))))

(declare-fun b!3848548 () Bool)

(declare-fun e!2378776 () Bool)

(declare-fun e!2378782 () Bool)

(assert (=> b!3848548 (= e!2378776 e!2378782)))

(declare-fun res!1558046 () Bool)

(assert (=> b!3848548 (=> res!1558046 e!2378782)))

(declare-fun matchR!5356 (Regex!11209 List!40912) Bool)

(assert (=> b!3848548 (= res!1558046 (not (matchR!5356 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) lt!1336596)))))

(declare-fun maxPrefixOneRule!2279 (LexerInterface!5893 Rule!12408 List!40912) Option!8722)

(assert (=> b!3848548 (= (maxPrefixOneRule!2279 thiss!20629 (rule!9154 (_1!23122 (v!39013 lt!1336591))) lt!1336601) (Some!8721 (tuple2!39977 (Token!11747 lt!1336592 (rule!9154 (_1!23122 (v!39013 lt!1336591))) lt!1336590 lt!1336596) (_2!23122 (v!39013 lt!1336591)))))))

(declare-fun lt!1336595 () Unit!58460)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1177 (LexerInterface!5893 List!40915 List!40912 List!40912 List!40912 Rule!12408) Unit!58460)

(assert (=> b!3848548 (= lt!1336595 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1177 thiss!20629 rules!2768 lt!1336596 lt!1336601 (_2!23122 (v!39013 lt!1336591)) (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))

(declare-fun b!3848549 () Bool)

(declare-fun tp!1166604 () Bool)

(declare-fun prefixTokens!80 () List!40914)

(declare-fun e!2378778 () Bool)

(declare-fun e!2378777 () Bool)

(declare-fun inv!54928 (String!46388) Bool)

(declare-fun inv!54932 (TokenValueInjection!12496) Bool)

(assert (=> b!3848549 (= e!2378778 (and tp!1166604 (inv!54928 (tag!7164 (rule!9154 (h!46210 prefixTokens!80)))) (inv!54932 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) e!2378777))))

(declare-fun b!3848550 () Bool)

(declare-fun isDefined!6847 (Option!8722) Bool)

(assert (=> b!3848550 (= e!2378782 (isDefined!6847 lt!1336591))))

(declare-fun b!3848551 () Bool)

(declare-fun res!1558034 () Bool)

(assert (=> b!3848551 (=> res!1558034 e!2378792)))

(declare-fun suffix!1176 () List!40912)

(assert (=> b!3848551 (= res!1558034 (or (not (= lt!1336607 (tuple2!39975 (_1!23121 lt!1336607) (_2!23121 lt!1336607)))) (= (_2!23122 (v!39013 lt!1336591)) suffix!1176)))))

(declare-fun b!3848552 () Bool)

(declare-fun e!2378780 () Bool)

(assert (=> b!3848552 (= e!2378780 e!2378797)))

(declare-fun res!1558042 () Bool)

(assert (=> b!3848552 (=> (not res!1558042) (not e!2378797))))

(get-info :version)

(assert (=> b!3848552 (= res!1558042 ((_ is Some!8721) lt!1336591))))

(declare-fun maxPrefix!3197 (LexerInterface!5893 List!40915 List!40912) Option!8722)

(assert (=> b!3848552 (= lt!1336591 (maxPrefix!3197 thiss!20629 rules!2768 lt!1336601))))

(declare-fun e!2378779 () Bool)

(declare-fun tp!1166603 () Bool)

(declare-fun b!3848554 () Bool)

(declare-fun e!2378795 () Bool)

(assert (=> b!3848554 (= e!2378779 (and (inv!54931 (h!46210 prefixTokens!80)) e!2378795 tp!1166603))))

(declare-fun b!3848555 () Bool)

(declare-fun res!1558048 () Bool)

(declare-fun e!2378787 () Bool)

(assert (=> b!3848555 (=> (not res!1558048) (not e!2378787))))

(declare-fun prefix!426 () List!40912)

(declare-fun isEmpty!24136 (List!40912) Bool)

(assert (=> b!3848555 (= res!1558048 (not (isEmpty!24136 prefix!426)))))

(declare-fun e!2378802 () Bool)

(declare-fun tp!1166600 () Bool)

(declare-fun b!3848556 () Bool)

(declare-fun inv!21 (TokenValue!6534) Bool)

(assert (=> b!3848556 (= e!2378786 (and (inv!21 (value!200298 (h!46210 suffixTokens!72))) e!2378802 tp!1166600))))

(declare-fun b!3848557 () Bool)

(declare-fun res!1558033 () Bool)

(assert (=> b!3848557 (=> res!1558033 e!2378792)))

(declare-fun lt!1336605 () tuple2!39974)

(declare-fun ++!10366 (List!40914 List!40914) List!40914)

(assert (=> b!3848557 (= res!1558033 (not (= lt!1336605 (tuple2!39975 (++!10366 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790) (_1!23121 lt!1336607)) (_2!23121 lt!1336607)))))))

(declare-fun b!3848558 () Bool)

(declare-fun e!2378789 () Bool)

(declare-fun tp_is_empty!19389 () Bool)

(declare-fun tp!1166612 () Bool)

(assert (=> b!3848558 (= e!2378789 (and tp_is_empty!19389 tp!1166612))))

(declare-fun e!2378796 () Bool)

(assert (=> b!3848559 (= e!2378796 (and tp!1166607 tp!1166613))))

(declare-fun b!3848560 () Bool)

(declare-fun e!2378785 () Bool)

(declare-fun tp!1166614 () Bool)

(assert (=> b!3848560 (= e!2378785 (and tp_is_empty!19389 tp!1166614))))

(declare-fun b!3848561 () Bool)

(assert (=> b!3848561 (= e!2378801 (= (size!30679 (_1!23122 (v!39013 lt!1336591))) (size!30680 (originalCharacters!6904 (_1!23122 (v!39013 lt!1336591))))))))

(declare-fun b!3848562 () Bool)

(declare-fun e!2378784 () Bool)

(declare-fun e!2378783 () Bool)

(assert (=> b!3848562 (= e!2378784 e!2378783)))

(declare-fun res!1558035 () Bool)

(assert (=> b!3848562 (=> res!1558035 e!2378783)))

(declare-fun lt!1336600 () Int)

(declare-fun lt!1336599 () Int)

(assert (=> b!3848562 (= res!1558035 (not (= (+ lt!1336590 lt!1336599) lt!1336600)))))

(assert (=> b!3848562 (= lt!1336600 (size!30680 lt!1336601))))

(declare-fun b!3848563 () Bool)

(declare-fun res!1558045 () Bool)

(assert (=> b!3848563 (=> (not res!1558045) (not e!2378787))))

(declare-fun isEmpty!24137 (List!40915) Bool)

(assert (=> b!3848563 (= res!1558045 (not (isEmpty!24137 rules!2768)))))

(declare-fun b!3848564 () Bool)

(declare-fun res!1558037 () Bool)

(assert (=> b!3848564 (=> (not res!1558037) (not e!2378780))))

(declare-fun suffixResult!91 () List!40912)

(assert (=> b!3848564 (= res!1558037 (= (lexList!1661 thiss!20629 rules!2768 suffix!1176) (tuple2!39975 suffixTokens!72 suffixResult!91)))))

(assert (=> b!3848565 (= e!2378777 (and tp!1166605 tp!1166610))))

(declare-fun b!3848566 () Bool)

(declare-fun e!2378781 () Bool)

(declare-fun tp!1166616 () Bool)

(assert (=> b!3848566 (= e!2378781 (and tp_is_empty!19389 tp!1166616))))

(declare-fun b!3848567 () Bool)

(assert (=> b!3848567 (= e!2378783 e!2378776)))

(declare-fun res!1558044 () Bool)

(assert (=> b!3848567 (=> res!1558044 e!2378776)))

(declare-fun lt!1336603 () Int)

(declare-fun lt!1336598 () Int)

(assert (=> b!3848567 (= res!1558044 (or (not (= (+ lt!1336598 lt!1336603) lt!1336600)) (<= lt!1336590 lt!1336598)))))

(assert (=> b!3848567 (= lt!1336598 (size!30680 prefix!426))))

(declare-fun res!1558047 () Bool)

(assert (=> start!360424 (=> (not res!1558047) (not e!2378787))))

(assert (=> start!360424 (= res!1558047 ((_ is Lexer!5891) thiss!20629))))

(assert (=> start!360424 e!2378787))

(assert (=> start!360424 e!2378785))

(assert (=> start!360424 true))

(assert (=> start!360424 e!2378789))

(assert (=> start!360424 e!2378790))

(assert (=> start!360424 e!2378779))

(assert (=> start!360424 e!2378793))

(assert (=> start!360424 e!2378781))

(declare-fun b!3848553 () Bool)

(declare-fun e!2378791 () Bool)

(declare-fun tp!1166609 () Bool)

(assert (=> b!3848553 (= e!2378802 (and tp!1166609 (inv!54928 (tag!7164 (rule!9154 (h!46210 suffixTokens!72)))) (inv!54932 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) e!2378791))))

(assert (=> b!3848568 (= e!2378791 (and tp!1166602 tp!1166601))))

(declare-fun tp!1166606 () Bool)

(declare-fun b!3848569 () Bool)

(assert (=> b!3848569 (= e!2378775 (and tp!1166606 (inv!54928 (tag!7164 (h!46211 rules!2768))) (inv!54932 (transformation!6304 (h!46211 rules!2768))) e!2378796))))

(declare-fun b!3848570 () Bool)

(declare-fun res!1558039 () Bool)

(assert (=> b!3848570 (=> (not res!1558039) (not e!2378787))))

(declare-fun rulesInvariant!5236 (LexerInterface!5893 List!40915) Bool)

(assert (=> b!3848570 (= res!1558039 (rulesInvariant!5236 thiss!20629 rules!2768))))

(declare-fun b!3848571 () Bool)

(declare-fun tp!1166615 () Bool)

(assert (=> b!3848571 (= e!2378795 (and (inv!21 (value!200298 (h!46210 prefixTokens!80))) e!2378778 tp!1166615))))

(declare-fun b!3848572 () Bool)

(declare-fun res!1558038 () Bool)

(assert (=> b!3848572 (=> (not res!1558038) (not e!2378787))))

(declare-fun isEmpty!24138 (List!40914) Bool)

(assert (=> b!3848572 (= res!1558038 (not (isEmpty!24138 prefixTokens!80)))))

(declare-fun b!3848573 () Bool)

(assert (=> b!3848573 (= e!2378792 e!2378784)))

(declare-fun res!1558041 () Bool)

(assert (=> b!3848573 (=> res!1558041 e!2378784)))

(assert (=> b!3848573 (= res!1558041 (>= lt!1336599 lt!1336603))))

(assert (=> b!3848573 (= lt!1336603 (size!30680 suffix!1176))))

(assert (=> b!3848573 (= lt!1336599 (size!30680 (_2!23122 (v!39013 lt!1336591))))))

(declare-fun b!3848574 () Bool)

(assert (=> b!3848574 (= e!2378787 e!2378780)))

(declare-fun res!1558036 () Bool)

(assert (=> b!3848574 (=> (not res!1558036) (not e!2378780))))

(declare-fun lt!1336606 () List!40914)

(assert (=> b!3848574 (= res!1558036 (= lt!1336605 (tuple2!39975 lt!1336606 suffixResult!91)))))

(assert (=> b!3848574 (= lt!1336605 (lexList!1661 thiss!20629 rules!2768 lt!1336601))))

(assert (=> b!3848574 (= lt!1336606 (++!10366 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3848574 (= lt!1336601 (++!10365 prefix!426 suffix!1176))))

(assert (= (and start!360424 res!1558047) b!3848563))

(assert (= (and b!3848563 res!1558045) b!3848570))

(assert (= (and b!3848570 res!1558039) b!3848572))

(assert (= (and b!3848572 res!1558038) b!3848555))

(assert (= (and b!3848555 res!1558048) b!3848574))

(assert (= (and b!3848574 res!1558036) b!3848564))

(assert (= (and b!3848564 res!1558037) b!3848552))

(assert (= (and b!3848552 res!1558042) b!3848546))

(assert (= (and b!3848546 res!1558043) b!3848561))

(assert (= (and b!3848546 (not res!1558040)) b!3848557))

(assert (= (and b!3848557 (not res!1558033)) b!3848551))

(assert (= (and b!3848551 (not res!1558034)) b!3848573))

(assert (= (and b!3848573 (not res!1558041)) b!3848562))

(assert (= (and b!3848562 (not res!1558035)) b!3848567))

(assert (= (and b!3848567 (not res!1558044)) b!3848548))

(assert (= (and b!3848548 (not res!1558046)) b!3848550))

(assert (= (and start!360424 ((_ is Cons!40788) suffixResult!91)) b!3848560))

(assert (= (and start!360424 ((_ is Cons!40788) suffix!1176)) b!3848558))

(assert (= b!3848569 b!3848559))

(assert (= b!3848545 b!3848569))

(assert (= (and start!360424 ((_ is Cons!40791) rules!2768)) b!3848545))

(assert (= b!3848549 b!3848565))

(assert (= b!3848571 b!3848549))

(assert (= b!3848554 b!3848571))

(assert (= (and start!360424 ((_ is Cons!40790) prefixTokens!80)) b!3848554))

(assert (= b!3848553 b!3848568))

(assert (= b!3848556 b!3848553))

(assert (= b!3848547 b!3848556))

(assert (= (and start!360424 ((_ is Cons!40790) suffixTokens!72)) b!3848547))

(assert (= (and start!360424 ((_ is Cons!40788) prefix!426)) b!3848566))

(declare-fun m!4403219 () Bool)

(assert (=> b!3848571 m!4403219))

(declare-fun m!4403221 () Bool)

(assert (=> b!3848546 m!4403221))

(declare-fun m!4403223 () Bool)

(assert (=> b!3848546 m!4403223))

(declare-fun m!4403225 () Bool)

(assert (=> b!3848546 m!4403225))

(declare-fun m!4403227 () Bool)

(assert (=> b!3848546 m!4403227))

(declare-fun m!4403229 () Bool)

(assert (=> b!3848546 m!4403229))

(declare-fun m!4403231 () Bool)

(assert (=> b!3848546 m!4403231))

(declare-fun m!4403233 () Bool)

(assert (=> b!3848546 m!4403233))

(declare-fun m!4403235 () Bool)

(assert (=> b!3848546 m!4403235))

(declare-fun m!4403237 () Bool)

(assert (=> b!3848546 m!4403237))

(declare-fun m!4403239 () Bool)

(assert (=> b!3848546 m!4403239))

(declare-fun m!4403241 () Bool)

(assert (=> b!3848546 m!4403241))

(assert (=> b!3848546 m!4403221))

(declare-fun m!4403243 () Bool)

(assert (=> b!3848546 m!4403243))

(assert (=> b!3848546 m!4403231))

(declare-fun m!4403245 () Bool)

(assert (=> b!3848546 m!4403245))

(declare-fun m!4403247 () Bool)

(assert (=> b!3848546 m!4403247))

(declare-fun m!4403249 () Bool)

(assert (=> b!3848555 m!4403249))

(declare-fun m!4403251 () Bool)

(assert (=> b!3848562 m!4403251))

(declare-fun m!4403253 () Bool)

(assert (=> b!3848574 m!4403253))

(declare-fun m!4403255 () Bool)

(assert (=> b!3848574 m!4403255))

(declare-fun m!4403257 () Bool)

(assert (=> b!3848574 m!4403257))

(declare-fun m!4403259 () Bool)

(assert (=> b!3848547 m!4403259))

(declare-fun m!4403261 () Bool)

(assert (=> b!3848553 m!4403261))

(declare-fun m!4403263 () Bool)

(assert (=> b!3848553 m!4403263))

(declare-fun m!4403265 () Bool)

(assert (=> b!3848556 m!4403265))

(declare-fun m!4403267 () Bool)

(assert (=> b!3848563 m!4403267))

(declare-fun m!4403269 () Bool)

(assert (=> b!3848570 m!4403269))

(declare-fun m!4403271 () Bool)

(assert (=> b!3848557 m!4403271))

(declare-fun m!4403273 () Bool)

(assert (=> b!3848554 m!4403273))

(declare-fun m!4403275 () Bool)

(assert (=> b!3848549 m!4403275))

(declare-fun m!4403277 () Bool)

(assert (=> b!3848549 m!4403277))

(declare-fun m!4403279 () Bool)

(assert (=> b!3848572 m!4403279))

(declare-fun m!4403281 () Bool)

(assert (=> b!3848569 m!4403281))

(declare-fun m!4403283 () Bool)

(assert (=> b!3848569 m!4403283))

(declare-fun m!4403285 () Bool)

(assert (=> b!3848561 m!4403285))

(declare-fun m!4403287 () Bool)

(assert (=> b!3848552 m!4403287))

(declare-fun m!4403289 () Bool)

(assert (=> b!3848564 m!4403289))

(declare-fun m!4403291 () Bool)

(assert (=> b!3848573 m!4403291))

(declare-fun m!4403293 () Bool)

(assert (=> b!3848573 m!4403293))

(declare-fun m!4403295 () Bool)

(assert (=> b!3848548 m!4403295))

(declare-fun m!4403297 () Bool)

(assert (=> b!3848548 m!4403297))

(declare-fun m!4403299 () Bool)

(assert (=> b!3848548 m!4403299))

(declare-fun m!4403301 () Bool)

(assert (=> b!3848550 m!4403301))

(declare-fun m!4403303 () Bool)

(assert (=> b!3848567 m!4403303))

(check-sat (not b_next!103827) (not b!3848571) b_and!287215 b_and!287221 (not b!3848555) (not b!3848567) (not b_next!103831) b_and!287211 (not b!3848563) b_and!287219 (not b!3848574) (not b!3848573) (not b!3848572) (not b!3848553) (not b!3848550) (not b!3848547) (not b!3848554) b_and!287217 (not b!3848549) (not b!3848558) b_and!287213 (not b!3848548) (not b_next!103821) (not b!3848566) (not b!3848562) (not b!3848560) (not b!3848546) (not b!3848552) (not b!3848561) tp_is_empty!19389 (not b!3848564) (not b!3848545) (not b!3848556) (not b_next!103823) (not b_next!103825) (not b_next!103829) (not b!3848570) (not b!3848569) (not b!3848557))
(check-sat (not b_next!103827) b_and!287217 b_and!287215 b_and!287213 (not b_next!103821) b_and!287221 (not b_next!103831) b_and!287211 b_and!287219 (not b_next!103829) (not b_next!103823) (not b_next!103825))
(get-model)

(declare-fun b!3848604 () Bool)

(declare-fun res!1558062 () Bool)

(declare-fun e!2378821 () Bool)

(assert (=> b!3848604 (=> res!1558062 e!2378821)))

(assert (=> b!3848604 (= res!1558062 (not ((_ is IntegerValue!19604) (value!200298 (h!46210 prefixTokens!80)))))))

(declare-fun e!2378822 () Bool)

(assert (=> b!3848604 (= e!2378822 e!2378821)))

(declare-fun b!3848605 () Bool)

(declare-fun e!2378823 () Bool)

(assert (=> b!3848605 (= e!2378823 e!2378822)))

(declare-fun c!670256 () Bool)

(assert (=> b!3848605 (= c!670256 ((_ is IntegerValue!19603) (value!200298 (h!46210 prefixTokens!80))))))

(declare-fun b!3848606 () Bool)

(declare-fun inv!17 (TokenValue!6534) Bool)

(assert (=> b!3848606 (= e!2378822 (inv!17 (value!200298 (h!46210 prefixTokens!80))))))

(declare-fun d!1140871 () Bool)

(declare-fun c!670255 () Bool)

(assert (=> d!1140871 (= c!670255 ((_ is IntegerValue!19602) (value!200298 (h!46210 prefixTokens!80))))))

(assert (=> d!1140871 (= (inv!21 (value!200298 (h!46210 prefixTokens!80))) e!2378823)))

(declare-fun b!3848607 () Bool)

(declare-fun inv!16 (TokenValue!6534) Bool)

(assert (=> b!3848607 (= e!2378823 (inv!16 (value!200298 (h!46210 prefixTokens!80))))))

(declare-fun b!3848608 () Bool)

(declare-fun inv!15 (TokenValue!6534) Bool)

(assert (=> b!3848608 (= e!2378821 (inv!15 (value!200298 (h!46210 prefixTokens!80))))))

(assert (= (and d!1140871 c!670255) b!3848607))

(assert (= (and d!1140871 (not c!670255)) b!3848605))

(assert (= (and b!3848605 c!670256) b!3848606))

(assert (= (and b!3848605 (not c!670256)) b!3848604))

(assert (= (and b!3848604 (not res!1558062)) b!3848608))

(declare-fun m!4403335 () Bool)

(assert (=> b!3848606 m!4403335))

(declare-fun m!4403337 () Bool)

(assert (=> b!3848607 m!4403337))

(declare-fun m!4403339 () Bool)

(assert (=> b!3848608 m!4403339))

(assert (=> b!3848571 d!1140871))

(declare-fun d!1140881 () Bool)

(declare-fun lt!1336622 () Int)

(assert (=> d!1140881 (>= lt!1336622 0)))

(declare-fun e!2378826 () Int)

(assert (=> d!1140881 (= lt!1336622 e!2378826)))

(declare-fun c!670259 () Bool)

(assert (=> d!1140881 (= c!670259 ((_ is Nil!40788) (originalCharacters!6904 (_1!23122 (v!39013 lt!1336591)))))))

(assert (=> d!1140881 (= (size!30680 (originalCharacters!6904 (_1!23122 (v!39013 lt!1336591)))) lt!1336622)))

(declare-fun b!3848613 () Bool)

(assert (=> b!3848613 (= e!2378826 0)))

(declare-fun b!3848614 () Bool)

(assert (=> b!3848614 (= e!2378826 (+ 1 (size!30680 (t!311333 (originalCharacters!6904 (_1!23122 (v!39013 lt!1336591)))))))))

(assert (= (and d!1140881 c!670259) b!3848613))

(assert (= (and d!1140881 (not c!670259)) b!3848614))

(declare-fun m!4403341 () Bool)

(assert (=> b!3848614 m!4403341))

(assert (=> b!3848561 d!1140881))

(declare-fun d!1140883 () Bool)

(declare-fun isEmpty!24140 (Option!8722) Bool)

(assert (=> d!1140883 (= (isDefined!6847 lt!1336591) (not (isEmpty!24140 lt!1336591)))))

(declare-fun bs!582760 () Bool)

(assert (= bs!582760 d!1140883))

(declare-fun m!4403343 () Bool)

(assert (=> bs!582760 m!4403343))

(assert (=> b!3848550 d!1140883))

(declare-fun b!3848682 () Bool)

(declare-fun e!2378865 () Bool)

(declare-fun head!8094 (List!40912) C!22604)

(assert (=> b!3848682 (= e!2378865 (not (= (head!8094 lt!1336596) (c!670246 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))))

(declare-fun b!3848683 () Bool)

(declare-fun e!2378867 () Bool)

(assert (=> b!3848683 (= e!2378867 (= (head!8094 lt!1336596) (c!670246 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))))

(declare-fun b!3848684 () Bool)

(declare-fun e!2378868 () Bool)

(declare-fun nullable!3899 (Regex!11209) Bool)

(assert (=> b!3848684 (= e!2378868 (nullable!3899 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(declare-fun b!3848685 () Bool)

(declare-fun e!2378866 () Bool)

(declare-fun lt!1336640 () Bool)

(assert (=> b!3848685 (= e!2378866 (not lt!1336640))))

(declare-fun b!3848686 () Bool)

(declare-fun e!2378870 () Bool)

(assert (=> b!3848686 (= e!2378870 e!2378865)))

(declare-fun res!1558106 () Bool)

(assert (=> b!3848686 (=> res!1558106 e!2378865)))

(declare-fun call!282111 () Bool)

(assert (=> b!3848686 (= res!1558106 call!282111)))

(declare-fun b!3848687 () Bool)

(declare-fun res!1558100 () Bool)

(assert (=> b!3848687 (=> (not res!1558100) (not e!2378867))))

(assert (=> b!3848687 (= res!1558100 (not call!282111))))

(declare-fun b!3848688 () Bool)

(declare-fun e!2378869 () Bool)

(assert (=> b!3848688 (= e!2378869 e!2378866)))

(declare-fun c!670277 () Bool)

(assert (=> b!3848688 (= c!670277 ((_ is EmptyLang!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(declare-fun b!3848689 () Bool)

(assert (=> b!3848689 (= e!2378869 (= lt!1336640 call!282111))))

(declare-fun d!1140885 () Bool)

(assert (=> d!1140885 e!2378869))

(declare-fun c!670275 () Bool)

(assert (=> d!1140885 (= c!670275 ((_ is EmptyExpr!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(assert (=> d!1140885 (= lt!1336640 e!2378868)))

(declare-fun c!670276 () Bool)

(assert (=> d!1140885 (= c!670276 (isEmpty!24136 lt!1336596))))

(declare-fun validRegex!5098 (Regex!11209) Bool)

(assert (=> d!1140885 (validRegex!5098 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))

(assert (=> d!1140885 (= (matchR!5356 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) lt!1336596) lt!1336640)))

(declare-fun b!3848690 () Bool)

(declare-fun res!1558105 () Bool)

(declare-fun e!2378871 () Bool)

(assert (=> b!3848690 (=> res!1558105 e!2378871)))

(assert (=> b!3848690 (= res!1558105 e!2378867)))

(declare-fun res!1558107 () Bool)

(assert (=> b!3848690 (=> (not res!1558107) (not e!2378867))))

(assert (=> b!3848690 (= res!1558107 lt!1336640)))

(declare-fun bm!282106 () Bool)

(assert (=> bm!282106 (= call!282111 (isEmpty!24136 lt!1336596))))

(declare-fun b!3848691 () Bool)

(declare-fun res!1558102 () Bool)

(assert (=> b!3848691 (=> (not res!1558102) (not e!2378867))))

(declare-fun tail!5821 (List!40912) List!40912)

(assert (=> b!3848691 (= res!1558102 (isEmpty!24136 (tail!5821 lt!1336596)))))

(declare-fun b!3848692 () Bool)

(declare-fun res!1558101 () Bool)

(assert (=> b!3848692 (=> res!1558101 e!2378871)))

(assert (=> b!3848692 (= res!1558101 (not ((_ is ElementMatch!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))))

(assert (=> b!3848692 (= e!2378866 e!2378871)))

(declare-fun b!3848693 () Bool)

(declare-fun res!1558103 () Bool)

(assert (=> b!3848693 (=> res!1558103 e!2378865)))

(assert (=> b!3848693 (= res!1558103 (not (isEmpty!24136 (tail!5821 lt!1336596))))))

(declare-fun b!3848694 () Bool)

(assert (=> b!3848694 (= e!2378871 e!2378870)))

(declare-fun res!1558104 () Bool)

(assert (=> b!3848694 (=> (not res!1558104) (not e!2378870))))

(assert (=> b!3848694 (= res!1558104 (not lt!1336640))))

(declare-fun b!3848695 () Bool)

(declare-fun derivativeStep!3397 (Regex!11209 C!22604) Regex!11209)

(assert (=> b!3848695 (= e!2378868 (matchR!5356 (derivativeStep!3397 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (head!8094 lt!1336596)) (tail!5821 lt!1336596)))))

(assert (= (and d!1140885 c!670276) b!3848684))

(assert (= (and d!1140885 (not c!670276)) b!3848695))

(assert (= (and d!1140885 c!670275) b!3848689))

(assert (= (and d!1140885 (not c!670275)) b!3848688))

(assert (= (and b!3848688 c!670277) b!3848685))

(assert (= (and b!3848688 (not c!670277)) b!3848692))

(assert (= (and b!3848692 (not res!1558101)) b!3848690))

(assert (= (and b!3848690 res!1558107) b!3848687))

(assert (= (and b!3848687 res!1558100) b!3848691))

(assert (= (and b!3848691 res!1558102) b!3848683))

(assert (= (and b!3848690 (not res!1558105)) b!3848694))

(assert (= (and b!3848694 res!1558104) b!3848686))

(assert (= (and b!3848686 (not res!1558106)) b!3848693))

(assert (= (and b!3848693 (not res!1558103)) b!3848682))

(assert (= (or b!3848689 b!3848686 b!3848687) bm!282106))

(declare-fun m!4403377 () Bool)

(assert (=> d!1140885 m!4403377))

(declare-fun m!4403379 () Bool)

(assert (=> d!1140885 m!4403379))

(declare-fun m!4403381 () Bool)

(assert (=> b!3848693 m!4403381))

(assert (=> b!3848693 m!4403381))

(declare-fun m!4403383 () Bool)

(assert (=> b!3848693 m!4403383))

(declare-fun m!4403385 () Bool)

(assert (=> b!3848682 m!4403385))

(assert (=> b!3848691 m!4403381))

(assert (=> b!3848691 m!4403381))

(assert (=> b!3848691 m!4403383))

(assert (=> b!3848695 m!4403385))

(assert (=> b!3848695 m!4403385))

(declare-fun m!4403387 () Bool)

(assert (=> b!3848695 m!4403387))

(assert (=> b!3848695 m!4403381))

(assert (=> b!3848695 m!4403387))

(assert (=> b!3848695 m!4403381))

(declare-fun m!4403389 () Bool)

(assert (=> b!3848695 m!4403389))

(assert (=> bm!282106 m!4403377))

(assert (=> b!3848683 m!4403385))

(declare-fun m!4403391 () Bool)

(assert (=> b!3848684 m!4403391))

(assert (=> b!3848548 d!1140885))

(declare-fun b!3848845 () Bool)

(declare-fun e!2378948 () Bool)

(declare-fun e!2378947 () Bool)

(assert (=> b!3848845 (= e!2378948 e!2378947)))

(declare-fun res!1558186 () Bool)

(assert (=> b!3848845 (=> (not res!1558186) (not e!2378947))))

(declare-fun lt!1336693 () Option!8722)

(declare-fun get!13496 (Option!8722) tuple2!39976)

(assert (=> b!3848845 (= res!1558186 (matchR!5356 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693))))))))

(declare-fun b!3848846 () Bool)

(declare-fun res!1558191 () Bool)

(assert (=> b!3848846 (=> (not res!1558191) (not e!2378947))))

(assert (=> b!3848846 (= res!1558191 (= (++!10365 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693)))) (_2!23122 (get!13496 lt!1336693))) lt!1336601))))

(declare-fun b!3848847 () Bool)

(declare-fun res!1558188 () Bool)

(assert (=> b!3848847 (=> (not res!1558188) (not e!2378947))))

(assert (=> b!3848847 (= res!1558188 (< (size!30680 (_2!23122 (get!13496 lt!1336693))) (size!30680 lt!1336601)))))

(declare-fun b!3848848 () Bool)

(declare-fun e!2378945 () Bool)

(declare-datatypes ((tuple2!39978 0))(
  ( (tuple2!39979 (_1!23123 List!40912) (_2!23123 List!40912)) )
))
(declare-fun findLongestMatchInner!1165 (Regex!11209 List!40912 Int List!40912 List!40912 Int) tuple2!39978)

(assert (=> b!3848848 (= e!2378945 (matchR!5356 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (_1!23123 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601)))))))

(declare-fun b!3848850 () Bool)

(declare-fun res!1558185 () Bool)

(assert (=> b!3848850 (=> (not res!1558185) (not e!2378947))))

(assert (=> b!3848850 (= res!1558185 (= (rule!9154 (_1!23122 (get!13496 lt!1336693))) (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))

(declare-fun b!3848849 () Bool)

(declare-fun e!2378946 () Option!8722)

(assert (=> b!3848849 (= e!2378946 None!8721)))

(declare-fun d!1140893 () Bool)

(assert (=> d!1140893 e!2378948))

(declare-fun res!1558189 () Bool)

(assert (=> d!1140893 (=> res!1558189 e!2378948)))

(assert (=> d!1140893 (= res!1558189 (isEmpty!24140 lt!1336693))))

(assert (=> d!1140893 (= lt!1336693 e!2378946)))

(declare-fun c!670314 () Bool)

(declare-fun lt!1336691 () tuple2!39978)

(assert (=> d!1140893 (= c!670314 (isEmpty!24136 (_1!23123 lt!1336691)))))

(declare-fun findLongestMatch!1078 (Regex!11209 List!40912) tuple2!39978)

(assert (=> d!1140893 (= lt!1336691 (findLongestMatch!1078 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) lt!1336601))))

(assert (=> d!1140893 (ruleValid!2256 thiss!20629 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))

(assert (=> d!1140893 (= (maxPrefixOneRule!2279 thiss!20629 (rule!9154 (_1!23122 (v!39013 lt!1336591))) lt!1336601) lt!1336693)))

(declare-fun b!3848851 () Bool)

(assert (=> b!3848851 (= e!2378947 (= (size!30679 (_1!23122 (get!13496 lt!1336693))) (size!30680 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336693))))))))

(declare-fun b!3848852 () Bool)

(declare-fun res!1558190 () Bool)

(assert (=> b!3848852 (=> (not res!1558190) (not e!2378947))))

(assert (=> b!3848852 (= res!1558190 (= (value!200298 (_1!23122 (get!13496 lt!1336693))) (apply!9547 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))) (seqFromList!4575 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336693)))))))))

(declare-fun b!3848853 () Bool)

(declare-fun size!30682 (BalanceConc!24624) Int)

(assert (=> b!3848853 (= e!2378946 (Some!8721 (tuple2!39977 (Token!11747 (apply!9547 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (seqFromList!4575 (_1!23123 lt!1336691))) (rule!9154 (_1!23122 (v!39013 lt!1336591))) (size!30682 (seqFromList!4575 (_1!23123 lt!1336691))) (_1!23123 lt!1336691)) (_2!23123 lt!1336691))))))

(declare-fun lt!1336692 () Unit!58460)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1138 (Regex!11209 List!40912) Unit!58460)

(assert (=> b!3848853 (= lt!1336692 (longestMatchIsAcceptedByMatchOrIsEmpty!1138 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) lt!1336601))))

(declare-fun res!1558187 () Bool)

(assert (=> b!3848853 (= res!1558187 (isEmpty!24136 (_1!23123 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601)))))))

(assert (=> b!3848853 (=> res!1558187 e!2378945)))

(assert (=> b!3848853 e!2378945))

(declare-fun lt!1336690 () Unit!58460)

(assert (=> b!3848853 (= lt!1336690 lt!1336692)))

(declare-fun lt!1336694 () Unit!58460)

(declare-fun lemmaSemiInverse!1671 (TokenValueInjection!12496 BalanceConc!24624) Unit!58460)

(assert (=> b!3848853 (= lt!1336694 (lemmaSemiInverse!1671 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (seqFromList!4575 (_1!23123 lt!1336691))))))

(assert (= (and d!1140893 c!670314) b!3848849))

(assert (= (and d!1140893 (not c!670314)) b!3848853))

(assert (= (and b!3848853 (not res!1558187)) b!3848848))

(assert (= (and d!1140893 (not res!1558189)) b!3848845))

(assert (= (and b!3848845 res!1558186) b!3848846))

(assert (= (and b!3848846 res!1558191) b!3848847))

(assert (= (and b!3848847 res!1558188) b!3848850))

(assert (= (and b!3848850 res!1558185) b!3848852))

(assert (= (and b!3848852 res!1558190) b!3848851))

(declare-fun m!4403519 () Bool)

(assert (=> b!3848848 m!4403519))

(assert (=> b!3848848 m!4403251))

(assert (=> b!3848848 m!4403519))

(assert (=> b!3848848 m!4403251))

(declare-fun m!4403521 () Bool)

(assert (=> b!3848848 m!4403521))

(declare-fun m!4403523 () Bool)

(assert (=> b!3848848 m!4403523))

(declare-fun m!4403525 () Bool)

(assert (=> b!3848850 m!4403525))

(assert (=> b!3848846 m!4403525))

(declare-fun m!4403527 () Bool)

(assert (=> b!3848846 m!4403527))

(assert (=> b!3848846 m!4403527))

(declare-fun m!4403529 () Bool)

(assert (=> b!3848846 m!4403529))

(assert (=> b!3848846 m!4403529))

(declare-fun m!4403531 () Bool)

(assert (=> b!3848846 m!4403531))

(assert (=> b!3848852 m!4403525))

(declare-fun m!4403533 () Bool)

(assert (=> b!3848852 m!4403533))

(assert (=> b!3848852 m!4403533))

(declare-fun m!4403535 () Bool)

(assert (=> b!3848852 m!4403535))

(declare-fun m!4403537 () Bool)

(assert (=> d!1140893 m!4403537))

(declare-fun m!4403539 () Bool)

(assert (=> d!1140893 m!4403539))

(declare-fun m!4403541 () Bool)

(assert (=> d!1140893 m!4403541))

(assert (=> d!1140893 m!4403247))

(assert (=> b!3848847 m!4403525))

(declare-fun m!4403543 () Bool)

(assert (=> b!3848847 m!4403543))

(assert (=> b!3848847 m!4403251))

(declare-fun m!4403545 () Bool)

(assert (=> b!3848853 m!4403545))

(declare-fun m!4403547 () Bool)

(assert (=> b!3848853 m!4403547))

(assert (=> b!3848853 m!4403251))

(assert (=> b!3848853 m!4403545))

(declare-fun m!4403549 () Bool)

(assert (=> b!3848853 m!4403549))

(declare-fun m!4403551 () Bool)

(assert (=> b!3848853 m!4403551))

(assert (=> b!3848853 m!4403545))

(declare-fun m!4403553 () Bool)

(assert (=> b!3848853 m!4403553))

(assert (=> b!3848853 m!4403519))

(assert (=> b!3848853 m!4403251))

(assert (=> b!3848853 m!4403521))

(assert (=> b!3848853 m!4403519))

(assert (=> b!3848853 m!4403545))

(declare-fun m!4403555 () Bool)

(assert (=> b!3848853 m!4403555))

(assert (=> b!3848851 m!4403525))

(declare-fun m!4403557 () Bool)

(assert (=> b!3848851 m!4403557))

(assert (=> b!3848845 m!4403525))

(assert (=> b!3848845 m!4403527))

(assert (=> b!3848845 m!4403527))

(assert (=> b!3848845 m!4403529))

(assert (=> b!3848845 m!4403529))

(declare-fun m!4403559 () Bool)

(assert (=> b!3848845 m!4403559))

(assert (=> b!3848548 d!1140893))

(declare-fun d!1140931 () Bool)

(assert (=> d!1140931 (= (maxPrefixOneRule!2279 thiss!20629 (rule!9154 (_1!23122 (v!39013 lt!1336591))) lt!1336601) (Some!8721 (tuple2!39977 (Token!11747 (apply!9547 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (seqFromList!4575 lt!1336596)) (rule!9154 (_1!23122 (v!39013 lt!1336591))) (size!30680 lt!1336596) lt!1336596) (_2!23122 (v!39013 lt!1336591)))))))

(declare-fun lt!1336712 () Unit!58460)

(declare-fun choose!22648 (LexerInterface!5893 List!40915 List!40912 List!40912 List!40912 Rule!12408) Unit!58460)

(assert (=> d!1140931 (= lt!1336712 (choose!22648 thiss!20629 rules!2768 lt!1336596 lt!1336601 (_2!23122 (v!39013 lt!1336591)) (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))

(assert (=> d!1140931 (not (isEmpty!24137 rules!2768))))

(assert (=> d!1140931 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1177 thiss!20629 rules!2768 lt!1336596 lt!1336601 (_2!23122 (v!39013 lt!1336591)) (rule!9154 (_1!23122 (v!39013 lt!1336591)))) lt!1336712)))

(declare-fun bs!582763 () Bool)

(assert (= bs!582763 d!1140931))

(assert (=> bs!582763 m!4403297))

(declare-fun m!4403603 () Bool)

(assert (=> bs!582763 m!4403603))

(assert (=> bs!582763 m!4403231))

(assert (=> bs!582763 m!4403245))

(assert (=> bs!582763 m!4403267))

(assert (=> bs!582763 m!4403231))

(assert (=> bs!582763 m!4403237))

(assert (=> b!3848548 d!1140931))

(declare-fun d!1140935 () Bool)

(assert (=> d!1140935 (= (inv!54928 (tag!7164 (rule!9154 (h!46210 prefixTokens!80)))) (= (mod (str.len (value!200297 (tag!7164 (rule!9154 (h!46210 prefixTokens!80))))) 2) 0))))

(assert (=> b!3848549 d!1140935))

(declare-fun d!1140937 () Bool)

(declare-fun res!1558215 () Bool)

(declare-fun e!2378963 () Bool)

(assert (=> d!1140937 (=> (not res!1558215) (not e!2378963))))

(declare-fun semiInverseModEq!2699 (Int Int) Bool)

(assert (=> d!1140937 (= res!1558215 (semiInverseModEq!2699 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))))))

(assert (=> d!1140937 (= (inv!54932 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) e!2378963)))

(declare-fun b!3848883 () Bool)

(declare-fun equivClasses!2598 (Int Int) Bool)

(assert (=> b!3848883 (= e!2378963 (equivClasses!2598 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))))))

(assert (= (and d!1140937 res!1558215) b!3848883))

(declare-fun m!4403605 () Bool)

(assert (=> d!1140937 m!4403605))

(declare-fun m!4403607 () Bool)

(assert (=> b!3848883 m!4403607))

(assert (=> b!3848549 d!1140937))

(declare-fun d!1140939 () Bool)

(declare-fun res!1558218 () Bool)

(declare-fun e!2378966 () Bool)

(assert (=> d!1140939 (=> (not res!1558218) (not e!2378966))))

(declare-fun rulesValid!2433 (LexerInterface!5893 List!40915) Bool)

(assert (=> d!1140939 (= res!1558218 (rulesValid!2433 thiss!20629 rules!2768))))

(assert (=> d!1140939 (= (rulesInvariant!5236 thiss!20629 rules!2768) e!2378966)))

(declare-fun b!3848886 () Bool)

(declare-datatypes ((List!40916 0))(
  ( (Nil!40792) (Cons!40792 (h!46212 String!46388) (t!311433 List!40916)) )
))
(declare-fun noDuplicateTag!2434 (LexerInterface!5893 List!40915 List!40916) Bool)

(assert (=> b!3848886 (= e!2378966 (noDuplicateTag!2434 thiss!20629 rules!2768 Nil!40792))))

(assert (= (and d!1140939 res!1558218) b!3848886))

(declare-fun m!4403609 () Bool)

(assert (=> d!1140939 m!4403609))

(declare-fun m!4403611 () Bool)

(assert (=> b!3848886 m!4403611))

(assert (=> b!3848570 d!1140939))

(declare-fun d!1140941 () Bool)

(assert (=> d!1140941 (= (isEmpty!24137 rules!2768) ((_ is Nil!40791) rules!2768))))

(assert (=> b!3848563 d!1140941))

(declare-fun b!3848987 () Bool)

(declare-fun e!2379038 () Option!8722)

(declare-fun lt!1336730 () Option!8722)

(declare-fun lt!1336731 () Option!8722)

(assert (=> b!3848987 (= e!2379038 (ite (and ((_ is None!8721) lt!1336730) ((_ is None!8721) lt!1336731)) None!8721 (ite ((_ is None!8721) lt!1336731) lt!1336730 (ite ((_ is None!8721) lt!1336730) lt!1336731 (ite (>= (size!30679 (_1!23122 (v!39013 lt!1336730))) (size!30679 (_1!23122 (v!39013 lt!1336731)))) lt!1336730 lt!1336731)))))))

(declare-fun call!282120 () Option!8722)

(assert (=> b!3848987 (= lt!1336730 call!282120)))

(assert (=> b!3848987 (= lt!1336731 (maxPrefix!3197 thiss!20629 (t!311336 rules!2768) lt!1336601))))

(declare-fun b!3848988 () Bool)

(assert (=> b!3848988 (= e!2379038 call!282120)))

(declare-fun b!3848989 () Bool)

(declare-fun res!1558252 () Bool)

(declare-fun e!2379037 () Bool)

(assert (=> b!3848989 (=> (not res!1558252) (not e!2379037))))

(declare-fun lt!1336728 () Option!8722)

(assert (=> b!3848989 (= res!1558252 (< (size!30680 (_2!23122 (get!13496 lt!1336728))) (size!30680 lt!1336601)))))

(declare-fun b!3848990 () Bool)

(declare-fun res!1558253 () Bool)

(assert (=> b!3848990 (=> (not res!1558253) (not e!2379037))))

(assert (=> b!3848990 (= res!1558253 (= (++!10365 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728)))) (_2!23122 (get!13496 lt!1336728))) lt!1336601))))

(declare-fun b!3848991 () Bool)

(declare-fun res!1558250 () Bool)

(assert (=> b!3848991 (=> (not res!1558250) (not e!2379037))))

(assert (=> b!3848991 (= res!1558250 (matchR!5356 (regex!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))) (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728))))))))

(declare-fun d!1140943 () Bool)

(declare-fun e!2379036 () Bool)

(assert (=> d!1140943 e!2379036))

(declare-fun res!1558247 () Bool)

(assert (=> d!1140943 (=> res!1558247 e!2379036)))

(assert (=> d!1140943 (= res!1558247 (isEmpty!24140 lt!1336728))))

(assert (=> d!1140943 (= lt!1336728 e!2379038)))

(declare-fun c!670323 () Bool)

(assert (=> d!1140943 (= c!670323 (and ((_ is Cons!40791) rules!2768) ((_ is Nil!40791) (t!311336 rules!2768))))))

(declare-fun lt!1336729 () Unit!58460)

(declare-fun lt!1336727 () Unit!58460)

(assert (=> d!1140943 (= lt!1336729 lt!1336727)))

(assert (=> d!1140943 (isPrefix!3403 lt!1336601 lt!1336601)))

(declare-fun lemmaIsPrefixRefl!2170 (List!40912 List!40912) Unit!58460)

(assert (=> d!1140943 (= lt!1336727 (lemmaIsPrefixRefl!2170 lt!1336601 lt!1336601))))

(declare-fun rulesValidInductive!2238 (LexerInterface!5893 List!40915) Bool)

(assert (=> d!1140943 (rulesValidInductive!2238 thiss!20629 rules!2768)))

(assert (=> d!1140943 (= (maxPrefix!3197 thiss!20629 rules!2768 lt!1336601) lt!1336728)))

(declare-fun bm!282115 () Bool)

(assert (=> bm!282115 (= call!282120 (maxPrefixOneRule!2279 thiss!20629 (h!46211 rules!2768) lt!1336601))))

(declare-fun b!3848992 () Bool)

(declare-fun res!1558249 () Bool)

(assert (=> b!3848992 (=> (not res!1558249) (not e!2379037))))

(assert (=> b!3848992 (= res!1558249 (= (value!200298 (_1!23122 (get!13496 lt!1336728))) (apply!9547 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))) (seqFromList!4575 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336728)))))))))

(declare-fun b!3848993 () Bool)

(assert (=> b!3848993 (= e!2379036 e!2379037)))

(declare-fun res!1558251 () Bool)

(assert (=> b!3848993 (=> (not res!1558251) (not e!2379037))))

(assert (=> b!3848993 (= res!1558251 (isDefined!6847 lt!1336728))))

(declare-fun b!3848994 () Bool)

(declare-fun res!1558248 () Bool)

(assert (=> b!3848994 (=> (not res!1558248) (not e!2379037))))

(assert (=> b!3848994 (= res!1558248 (= (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728)))) (originalCharacters!6904 (_1!23122 (get!13496 lt!1336728)))))))

(declare-fun b!3848995 () Bool)

(declare-fun contains!8246 (List!40915 Rule!12408) Bool)

(assert (=> b!3848995 (= e!2379037 (contains!8246 rules!2768 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))))

(assert (= (and d!1140943 c!670323) b!3848988))

(assert (= (and d!1140943 (not c!670323)) b!3848987))

(assert (= (or b!3848988 b!3848987) bm!282115))

(assert (= (and d!1140943 (not res!1558247)) b!3848993))

(assert (= (and b!3848993 res!1558251) b!3848994))

(assert (= (and b!3848994 res!1558248) b!3848989))

(assert (= (and b!3848989 res!1558252) b!3848990))

(assert (= (and b!3848990 res!1558253) b!3848992))

(assert (= (and b!3848992 res!1558249) b!3848991))

(assert (= (and b!3848991 res!1558250) b!3848995))

(declare-fun m!4403679 () Bool)

(assert (=> b!3848992 m!4403679))

(declare-fun m!4403681 () Bool)

(assert (=> b!3848992 m!4403681))

(assert (=> b!3848992 m!4403681))

(declare-fun m!4403683 () Bool)

(assert (=> b!3848992 m!4403683))

(declare-fun m!4403685 () Bool)

(assert (=> d!1140943 m!4403685))

(declare-fun m!4403687 () Bool)

(assert (=> d!1140943 m!4403687))

(declare-fun m!4403689 () Bool)

(assert (=> d!1140943 m!4403689))

(declare-fun m!4403691 () Bool)

(assert (=> d!1140943 m!4403691))

(assert (=> b!3848995 m!4403679))

(declare-fun m!4403693 () Bool)

(assert (=> b!3848995 m!4403693))

(assert (=> b!3848990 m!4403679))

(declare-fun m!4403695 () Bool)

(assert (=> b!3848990 m!4403695))

(assert (=> b!3848990 m!4403695))

(declare-fun m!4403697 () Bool)

(assert (=> b!3848990 m!4403697))

(assert (=> b!3848990 m!4403697))

(declare-fun m!4403699 () Bool)

(assert (=> b!3848990 m!4403699))

(assert (=> b!3848989 m!4403679))

(declare-fun m!4403701 () Bool)

(assert (=> b!3848989 m!4403701))

(assert (=> b!3848989 m!4403251))

(declare-fun m!4403703 () Bool)

(assert (=> b!3848987 m!4403703))

(assert (=> b!3848994 m!4403679))

(assert (=> b!3848994 m!4403695))

(assert (=> b!3848994 m!4403695))

(assert (=> b!3848994 m!4403697))

(declare-fun m!4403705 () Bool)

(assert (=> bm!282115 m!4403705))

(assert (=> b!3848991 m!4403679))

(assert (=> b!3848991 m!4403695))

(assert (=> b!3848991 m!4403695))

(assert (=> b!3848991 m!4403697))

(assert (=> b!3848991 m!4403697))

(declare-fun m!4403707 () Bool)

(assert (=> b!3848991 m!4403707))

(declare-fun m!4403709 () Bool)

(assert (=> b!3848993 m!4403709))

(assert (=> b!3848552 d!1140943))

(declare-fun d!1140967 () Bool)

(assert (=> d!1140967 (= (inv!54928 (tag!7164 (rule!9154 (h!46210 suffixTokens!72)))) (= (mod (str.len (value!200297 (tag!7164 (rule!9154 (h!46210 suffixTokens!72))))) 2) 0))))

(assert (=> b!3848553 d!1140967))

(declare-fun d!1140969 () Bool)

(declare-fun res!1558254 () Bool)

(declare-fun e!2379039 () Bool)

(assert (=> d!1140969 (=> (not res!1558254) (not e!2379039))))

(assert (=> d!1140969 (= res!1558254 (semiInverseModEq!2699 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))))))

(assert (=> d!1140969 (= (inv!54932 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) e!2379039)))

(declare-fun b!3848996 () Bool)

(assert (=> b!3848996 (= e!2379039 (equivClasses!2598 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))))))

(assert (= (and d!1140969 res!1558254) b!3848996))

(declare-fun m!4403711 () Bool)

(assert (=> d!1140969 m!4403711))

(declare-fun m!4403713 () Bool)

(assert (=> b!3848996 m!4403713))

(assert (=> b!3848553 d!1140969))

(declare-fun b!3849007 () Bool)

(declare-fun e!2379046 () Bool)

(declare-fun lt!1336739 () tuple2!39974)

(assert (=> b!3849007 (= e!2379046 (= (_2!23121 lt!1336739) lt!1336601))))

(declare-fun d!1140971 () Bool)

(assert (=> d!1140971 e!2379046))

(declare-fun c!670329 () Bool)

(declare-fun size!30684 (List!40914) Int)

(assert (=> d!1140971 (= c!670329 (> (size!30684 (_1!23121 lt!1336739)) 0))))

(declare-fun e!2379048 () tuple2!39974)

(assert (=> d!1140971 (= lt!1336739 e!2379048)))

(declare-fun c!670328 () Bool)

(declare-fun lt!1336740 () Option!8722)

(assert (=> d!1140971 (= c!670328 ((_ is Some!8721) lt!1336740))))

(assert (=> d!1140971 (= lt!1336740 (maxPrefix!3197 thiss!20629 rules!2768 lt!1336601))))

(assert (=> d!1140971 (= (lexList!1661 thiss!20629 rules!2768 lt!1336601) lt!1336739)))

(declare-fun b!3849008 () Bool)

(declare-fun e!2379047 () Bool)

(assert (=> b!3849008 (= e!2379046 e!2379047)))

(declare-fun res!1558257 () Bool)

(assert (=> b!3849008 (= res!1558257 (< (size!30680 (_2!23121 lt!1336739)) (size!30680 lt!1336601)))))

(assert (=> b!3849008 (=> (not res!1558257) (not e!2379047))))

(declare-fun b!3849009 () Bool)

(declare-fun lt!1336738 () tuple2!39974)

(assert (=> b!3849009 (= e!2379048 (tuple2!39975 (Cons!40790 (_1!23122 (v!39013 lt!1336740)) (_1!23121 lt!1336738)) (_2!23121 lt!1336738)))))

(assert (=> b!3849009 (= lt!1336738 (lexList!1661 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336740))))))

(declare-fun b!3849010 () Bool)

(assert (=> b!3849010 (= e!2379047 (not (isEmpty!24138 (_1!23121 lt!1336739))))))

(declare-fun b!3849011 () Bool)

(assert (=> b!3849011 (= e!2379048 (tuple2!39975 Nil!40790 lt!1336601))))

(assert (= (and d!1140971 c!670328) b!3849009))

(assert (= (and d!1140971 (not c!670328)) b!3849011))

(assert (= (and d!1140971 c!670329) b!3849008))

(assert (= (and d!1140971 (not c!670329)) b!3849007))

(assert (= (and b!3849008 res!1558257) b!3849010))

(declare-fun m!4403715 () Bool)

(assert (=> d!1140971 m!4403715))

(assert (=> d!1140971 m!4403287))

(declare-fun m!4403717 () Bool)

(assert (=> b!3849008 m!4403717))

(assert (=> b!3849008 m!4403251))

(declare-fun m!4403719 () Bool)

(assert (=> b!3849009 m!4403719))

(declare-fun m!4403721 () Bool)

(assert (=> b!3849010 m!4403721))

(assert (=> b!3848574 d!1140971))

(declare-fun b!3849020 () Bool)

(declare-fun e!2379054 () List!40914)

(assert (=> b!3849020 (= e!2379054 suffixTokens!72)))

(declare-fun b!3849021 () Bool)

(assert (=> b!3849021 (= e!2379054 (Cons!40790 (h!46210 prefixTokens!80) (++!10366 (t!311335 prefixTokens!80) suffixTokens!72)))))

(declare-fun e!2379053 () Bool)

(declare-fun b!3849023 () Bool)

(declare-fun lt!1336743 () List!40914)

(assert (=> b!3849023 (= e!2379053 (or (not (= suffixTokens!72 Nil!40790)) (= lt!1336743 prefixTokens!80)))))

(declare-fun d!1140973 () Bool)

(assert (=> d!1140973 e!2379053))

(declare-fun res!1558263 () Bool)

(assert (=> d!1140973 (=> (not res!1558263) (not e!2379053))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6063 (List!40914) (InoxSet Token!11746))

(assert (=> d!1140973 (= res!1558263 (= (content!6063 lt!1336743) ((_ map or) (content!6063 prefixTokens!80) (content!6063 suffixTokens!72))))))

(assert (=> d!1140973 (= lt!1336743 e!2379054)))

(declare-fun c!670332 () Bool)

(assert (=> d!1140973 (= c!670332 ((_ is Nil!40790) prefixTokens!80))))

(assert (=> d!1140973 (= (++!10366 prefixTokens!80 suffixTokens!72) lt!1336743)))

(declare-fun b!3849022 () Bool)

(declare-fun res!1558262 () Bool)

(assert (=> b!3849022 (=> (not res!1558262) (not e!2379053))))

(assert (=> b!3849022 (= res!1558262 (= (size!30684 lt!1336743) (+ (size!30684 prefixTokens!80) (size!30684 suffixTokens!72))))))

(assert (= (and d!1140973 c!670332) b!3849020))

(assert (= (and d!1140973 (not c!670332)) b!3849021))

(assert (= (and d!1140973 res!1558263) b!3849022))

(assert (= (and b!3849022 res!1558262) b!3849023))

(declare-fun m!4403723 () Bool)

(assert (=> b!3849021 m!4403723))

(declare-fun m!4403725 () Bool)

(assert (=> d!1140973 m!4403725))

(declare-fun m!4403727 () Bool)

(assert (=> d!1140973 m!4403727))

(declare-fun m!4403729 () Bool)

(assert (=> d!1140973 m!4403729))

(declare-fun m!4403731 () Bool)

(assert (=> b!3849022 m!4403731))

(declare-fun m!4403733 () Bool)

(assert (=> b!3849022 m!4403733))

(declare-fun m!4403735 () Bool)

(assert (=> b!3849022 m!4403735))

(assert (=> b!3848574 d!1140973))

(declare-fun b!3849032 () Bool)

(declare-fun e!2379060 () List!40912)

(assert (=> b!3849032 (= e!2379060 suffix!1176)))

(declare-fun b!3849035 () Bool)

(declare-fun lt!1336746 () List!40912)

(declare-fun e!2379059 () Bool)

(assert (=> b!3849035 (= e!2379059 (or (not (= suffix!1176 Nil!40788)) (= lt!1336746 prefix!426)))))

(declare-fun b!3849033 () Bool)

(assert (=> b!3849033 (= e!2379060 (Cons!40788 (h!46208 prefix!426) (++!10365 (t!311333 prefix!426) suffix!1176)))))

(declare-fun b!3849034 () Bool)

(declare-fun res!1558268 () Bool)

(assert (=> b!3849034 (=> (not res!1558268) (not e!2379059))))

(assert (=> b!3849034 (= res!1558268 (= (size!30680 lt!1336746) (+ (size!30680 prefix!426) (size!30680 suffix!1176))))))

(declare-fun d!1140975 () Bool)

(assert (=> d!1140975 e!2379059))

(declare-fun res!1558269 () Bool)

(assert (=> d!1140975 (=> (not res!1558269) (not e!2379059))))

(declare-fun content!6064 (List!40912) (InoxSet C!22604))

(assert (=> d!1140975 (= res!1558269 (= (content!6064 lt!1336746) ((_ map or) (content!6064 prefix!426) (content!6064 suffix!1176))))))

(assert (=> d!1140975 (= lt!1336746 e!2379060)))

(declare-fun c!670335 () Bool)

(assert (=> d!1140975 (= c!670335 ((_ is Nil!40788) prefix!426))))

(assert (=> d!1140975 (= (++!10365 prefix!426 suffix!1176) lt!1336746)))

(assert (= (and d!1140975 c!670335) b!3849032))

(assert (= (and d!1140975 (not c!670335)) b!3849033))

(assert (= (and d!1140975 res!1558269) b!3849034))

(assert (= (and b!3849034 res!1558268) b!3849035))

(declare-fun m!4403737 () Bool)

(assert (=> b!3849033 m!4403737))

(declare-fun m!4403739 () Bool)

(assert (=> b!3849034 m!4403739))

(assert (=> b!3849034 m!4403303))

(assert (=> b!3849034 m!4403291))

(declare-fun m!4403741 () Bool)

(assert (=> d!1140975 m!4403741))

(declare-fun m!4403743 () Bool)

(assert (=> d!1140975 m!4403743))

(declare-fun m!4403745 () Bool)

(assert (=> d!1140975 m!4403745))

(assert (=> b!3848574 d!1140975))

(declare-fun d!1140977 () Bool)

(assert (=> d!1140977 (= (isEmpty!24138 prefixTokens!80) ((_ is Nil!40790) prefixTokens!80))))

(assert (=> b!3848572 d!1140977))

(declare-fun d!1140979 () Bool)

(declare-fun lt!1336747 () Int)

(assert (=> d!1140979 (>= lt!1336747 0)))

(declare-fun e!2379061 () Int)

(assert (=> d!1140979 (= lt!1336747 e!2379061)))

(declare-fun c!670336 () Bool)

(assert (=> d!1140979 (= c!670336 ((_ is Nil!40788) suffix!1176))))

(assert (=> d!1140979 (= (size!30680 suffix!1176) lt!1336747)))

(declare-fun b!3849036 () Bool)

(assert (=> b!3849036 (= e!2379061 0)))

(declare-fun b!3849037 () Bool)

(assert (=> b!3849037 (= e!2379061 (+ 1 (size!30680 (t!311333 suffix!1176))))))

(assert (= (and d!1140979 c!670336) b!3849036))

(assert (= (and d!1140979 (not c!670336)) b!3849037))

(declare-fun m!4403747 () Bool)

(assert (=> b!3849037 m!4403747))

(assert (=> b!3848573 d!1140979))

(declare-fun d!1140981 () Bool)

(declare-fun lt!1336748 () Int)

(assert (=> d!1140981 (>= lt!1336748 0)))

(declare-fun e!2379062 () Int)

(assert (=> d!1140981 (= lt!1336748 e!2379062)))

(declare-fun c!670337 () Bool)

(assert (=> d!1140981 (= c!670337 ((_ is Nil!40788) (_2!23122 (v!39013 lt!1336591))))))

(assert (=> d!1140981 (= (size!30680 (_2!23122 (v!39013 lt!1336591))) lt!1336748)))

(declare-fun b!3849038 () Bool)

(assert (=> b!3849038 (= e!2379062 0)))

(declare-fun b!3849039 () Bool)

(assert (=> b!3849039 (= e!2379062 (+ 1 (size!30680 (t!311333 (_2!23122 (v!39013 lt!1336591))))))))

(assert (= (and d!1140981 c!670337) b!3849038))

(assert (= (and d!1140981 (not c!670337)) b!3849039))

(declare-fun m!4403749 () Bool)

(assert (=> b!3849039 m!4403749))

(assert (=> b!3848573 d!1140981))

(declare-fun d!1140983 () Bool)

(declare-fun lt!1336749 () Int)

(assert (=> d!1140983 (>= lt!1336749 0)))

(declare-fun e!2379063 () Int)

(assert (=> d!1140983 (= lt!1336749 e!2379063)))

(declare-fun c!670338 () Bool)

(assert (=> d!1140983 (= c!670338 ((_ is Nil!40788) lt!1336601))))

(assert (=> d!1140983 (= (size!30680 lt!1336601) lt!1336749)))

(declare-fun b!3849040 () Bool)

(assert (=> b!3849040 (= e!2379063 0)))

(declare-fun b!3849041 () Bool)

(assert (=> b!3849041 (= e!2379063 (+ 1 (size!30680 (t!311333 lt!1336601))))))

(assert (= (and d!1140983 c!670338) b!3849040))

(assert (= (and d!1140983 (not c!670338)) b!3849041))

(declare-fun m!4403751 () Bool)

(assert (=> b!3849041 m!4403751))

(assert (=> b!3848562 d!1140983))

(declare-fun d!1140985 () Bool)

(assert (=> d!1140985 (= (isEmpty!24136 prefix!426) ((_ is Nil!40788) prefix!426))))

(assert (=> b!3848555 d!1140985))

(declare-fun b!3849042 () Bool)

(declare-fun e!2379064 () Bool)

(declare-fun lt!1336751 () tuple2!39974)

(assert (=> b!3849042 (= e!2379064 (= (_2!23121 lt!1336751) suffix!1176))))

(declare-fun d!1140987 () Bool)

(assert (=> d!1140987 e!2379064))

(declare-fun c!670340 () Bool)

(assert (=> d!1140987 (= c!670340 (> (size!30684 (_1!23121 lt!1336751)) 0))))

(declare-fun e!2379066 () tuple2!39974)

(assert (=> d!1140987 (= lt!1336751 e!2379066)))

(declare-fun c!670339 () Bool)

(declare-fun lt!1336752 () Option!8722)

(assert (=> d!1140987 (= c!670339 ((_ is Some!8721) lt!1336752))))

(assert (=> d!1140987 (= lt!1336752 (maxPrefix!3197 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1140987 (= (lexList!1661 thiss!20629 rules!2768 suffix!1176) lt!1336751)))

(declare-fun b!3849043 () Bool)

(declare-fun e!2379065 () Bool)

(assert (=> b!3849043 (= e!2379064 e!2379065)))

(declare-fun res!1558270 () Bool)

(assert (=> b!3849043 (= res!1558270 (< (size!30680 (_2!23121 lt!1336751)) (size!30680 suffix!1176)))))

(assert (=> b!3849043 (=> (not res!1558270) (not e!2379065))))

(declare-fun b!3849044 () Bool)

(declare-fun lt!1336750 () tuple2!39974)

(assert (=> b!3849044 (= e!2379066 (tuple2!39975 (Cons!40790 (_1!23122 (v!39013 lt!1336752)) (_1!23121 lt!1336750)) (_2!23121 lt!1336750)))))

(assert (=> b!3849044 (= lt!1336750 (lexList!1661 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336752))))))

(declare-fun b!3849045 () Bool)

(assert (=> b!3849045 (= e!2379065 (not (isEmpty!24138 (_1!23121 lt!1336751))))))

(declare-fun b!3849046 () Bool)

(assert (=> b!3849046 (= e!2379066 (tuple2!39975 Nil!40790 suffix!1176))))

(assert (= (and d!1140987 c!670339) b!3849044))

(assert (= (and d!1140987 (not c!670339)) b!3849046))

(assert (= (and d!1140987 c!670340) b!3849043))

(assert (= (and d!1140987 (not c!670340)) b!3849042))

(assert (= (and b!3849043 res!1558270) b!3849045))

(declare-fun m!4403753 () Bool)

(assert (=> d!1140987 m!4403753))

(declare-fun m!4403755 () Bool)

(assert (=> d!1140987 m!4403755))

(declare-fun m!4403757 () Bool)

(assert (=> b!3849043 m!4403757))

(assert (=> b!3849043 m!4403291))

(declare-fun m!4403759 () Bool)

(assert (=> b!3849044 m!4403759))

(declare-fun m!4403761 () Bool)

(assert (=> b!3849045 m!4403761))

(assert (=> b!3848564 d!1140987))

(declare-fun d!1140989 () Bool)

(declare-fun res!1558275 () Bool)

(declare-fun e!2379069 () Bool)

(assert (=> d!1140989 (=> (not res!1558275) (not e!2379069))))

(assert (=> d!1140989 (= res!1558275 (not (isEmpty!24136 (originalCharacters!6904 (h!46210 prefixTokens!80)))))))

(assert (=> d!1140989 (= (inv!54931 (h!46210 prefixTokens!80)) e!2379069)))

(declare-fun b!3849051 () Bool)

(declare-fun res!1558276 () Bool)

(assert (=> b!3849051 (=> (not res!1558276) (not e!2379069))))

(declare-fun dynLambda!17597 (Int TokenValue!6534) BalanceConc!24624)

(assert (=> b!3849051 (= res!1558276 (= (originalCharacters!6904 (h!46210 prefixTokens!80)) (list!15180 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80))))))))

(declare-fun b!3849052 () Bool)

(assert (=> b!3849052 (= e!2379069 (= (size!30679 (h!46210 prefixTokens!80)) (size!30680 (originalCharacters!6904 (h!46210 prefixTokens!80)))))))

(assert (= (and d!1140989 res!1558275) b!3849051))

(assert (= (and b!3849051 res!1558276) b!3849052))

(declare-fun b_lambda!112479 () Bool)

(assert (=> (not b_lambda!112479) (not b!3849051)))

(declare-fun tb!221777 () Bool)

(declare-fun t!311386 () Bool)

(assert (=> (and b!3848559 (= (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) t!311386) tb!221777))

(declare-fun b!3849057 () Bool)

(declare-fun e!2379072 () Bool)

(declare-fun tp!1166688 () Bool)

(declare-fun inv!54935 (Conc!12515) Bool)

(assert (=> b!3849057 (= e!2379072 (and (inv!54935 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80))))) tp!1166688))))

(declare-fun result!270274 () Bool)

(declare-fun inv!54936 (BalanceConc!24624) Bool)

(assert (=> tb!221777 (= result!270274 (and (inv!54936 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80)))) e!2379072))))

(assert (= tb!221777 b!3849057))

(declare-fun m!4403763 () Bool)

(assert (=> b!3849057 m!4403763))

(declare-fun m!4403765 () Bool)

(assert (=> tb!221777 m!4403765))

(assert (=> b!3849051 t!311386))

(declare-fun b_and!287259 () Bool)

(assert (= b_and!287213 (and (=> t!311386 result!270274) b_and!287259)))

(declare-fun t!311388 () Bool)

(declare-fun tb!221779 () Bool)

(assert (=> (and b!3848565 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) t!311388) tb!221779))

(declare-fun result!270278 () Bool)

(assert (= result!270278 result!270274))

(assert (=> b!3849051 t!311388))

(declare-fun b_and!287261 () Bool)

(assert (= b_and!287217 (and (=> t!311388 result!270278) b_and!287261)))

(declare-fun t!311390 () Bool)

(declare-fun tb!221781 () Bool)

(assert (=> (and b!3848568 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) t!311390) tb!221781))

(declare-fun result!270280 () Bool)

(assert (= result!270280 result!270274))

(assert (=> b!3849051 t!311390))

(declare-fun b_and!287263 () Bool)

(assert (= b_and!287221 (and (=> t!311390 result!270280) b_and!287263)))

(declare-fun m!4403767 () Bool)

(assert (=> d!1140989 m!4403767))

(declare-fun m!4403769 () Bool)

(assert (=> b!3849051 m!4403769))

(assert (=> b!3849051 m!4403769))

(declare-fun m!4403771 () Bool)

(assert (=> b!3849051 m!4403771))

(declare-fun m!4403773 () Bool)

(assert (=> b!3849052 m!4403773))

(assert (=> b!3848554 d!1140989))

(declare-fun d!1140991 () Bool)

(declare-fun res!1558277 () Bool)

(declare-fun e!2379073 () Bool)

(assert (=> d!1140991 (=> (not res!1558277) (not e!2379073))))

(assert (=> d!1140991 (= res!1558277 (not (isEmpty!24136 (originalCharacters!6904 (h!46210 suffixTokens!72)))))))

(assert (=> d!1140991 (= (inv!54931 (h!46210 suffixTokens!72)) e!2379073)))

(declare-fun b!3849058 () Bool)

(declare-fun res!1558278 () Bool)

(assert (=> b!3849058 (=> (not res!1558278) (not e!2379073))))

(assert (=> b!3849058 (= res!1558278 (= (originalCharacters!6904 (h!46210 suffixTokens!72)) (list!15180 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72))))))))

(declare-fun b!3849059 () Bool)

(assert (=> b!3849059 (= e!2379073 (= (size!30679 (h!46210 suffixTokens!72)) (size!30680 (originalCharacters!6904 (h!46210 suffixTokens!72)))))))

(assert (= (and d!1140991 res!1558277) b!3849058))

(assert (= (and b!3849058 res!1558278) b!3849059))

(declare-fun b_lambda!112481 () Bool)

(assert (=> (not b_lambda!112481) (not b!3849058)))

(declare-fun t!311392 () Bool)

(declare-fun tb!221783 () Bool)

(assert (=> (and b!3848559 (= (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) t!311392) tb!221783))

(declare-fun b!3849060 () Bool)

(declare-fun e!2379074 () Bool)

(declare-fun tp!1166689 () Bool)

(assert (=> b!3849060 (= e!2379074 (and (inv!54935 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72))))) tp!1166689))))

(declare-fun result!270282 () Bool)

(assert (=> tb!221783 (= result!270282 (and (inv!54936 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72)))) e!2379074))))

(assert (= tb!221783 b!3849060))

(declare-fun m!4403775 () Bool)

(assert (=> b!3849060 m!4403775))

(declare-fun m!4403777 () Bool)

(assert (=> tb!221783 m!4403777))

(assert (=> b!3849058 t!311392))

(declare-fun b_and!287265 () Bool)

(assert (= b_and!287259 (and (=> t!311392 result!270282) b_and!287265)))

(declare-fun t!311394 () Bool)

(declare-fun tb!221785 () Bool)

(assert (=> (and b!3848565 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) t!311394) tb!221785))

(declare-fun result!270284 () Bool)

(assert (= result!270284 result!270282))

(assert (=> b!3849058 t!311394))

(declare-fun b_and!287267 () Bool)

(assert (= b_and!287261 (and (=> t!311394 result!270284) b_and!287267)))

(declare-fun t!311396 () Bool)

(declare-fun tb!221787 () Bool)

(assert (=> (and b!3848568 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) t!311396) tb!221787))

(declare-fun result!270286 () Bool)

(assert (= result!270286 result!270282))

(assert (=> b!3849058 t!311396))

(declare-fun b_and!287269 () Bool)

(assert (= b_and!287263 (and (=> t!311396 result!270286) b_and!287269)))

(declare-fun m!4403779 () Bool)

(assert (=> d!1140991 m!4403779))

(declare-fun m!4403781 () Bool)

(assert (=> b!3849058 m!4403781))

(assert (=> b!3849058 m!4403781))

(declare-fun m!4403783 () Bool)

(assert (=> b!3849058 m!4403783))

(declare-fun m!4403785 () Bool)

(assert (=> b!3849059 m!4403785))

(assert (=> b!3848547 d!1140991))

(declare-fun d!1140993 () Bool)

(assert (=> d!1140993 (= (inv!54928 (tag!7164 (h!46211 rules!2768))) (= (mod (str.len (value!200297 (tag!7164 (h!46211 rules!2768)))) 2) 0))))

(assert (=> b!3848569 d!1140993))

(declare-fun d!1140995 () Bool)

(declare-fun res!1558279 () Bool)

(declare-fun e!2379075 () Bool)

(assert (=> d!1140995 (=> (not res!1558279) (not e!2379075))))

(assert (=> d!1140995 (= res!1558279 (semiInverseModEq!2699 (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toValue!8720 (transformation!6304 (h!46211 rules!2768)))))))

(assert (=> d!1140995 (= (inv!54932 (transformation!6304 (h!46211 rules!2768))) e!2379075)))

(declare-fun b!3849061 () Bool)

(assert (=> b!3849061 (= e!2379075 (equivClasses!2598 (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toValue!8720 (transformation!6304 (h!46211 rules!2768)))))))

(assert (= (and d!1140995 res!1558279) b!3849061))

(declare-fun m!4403787 () Bool)

(assert (=> d!1140995 m!4403787))

(declare-fun m!4403789 () Bool)

(assert (=> b!3849061 m!4403789))

(assert (=> b!3848569 d!1140995))

(declare-fun d!1140997 () Bool)

(declare-fun lt!1336753 () Int)

(assert (=> d!1140997 (>= lt!1336753 0)))

(declare-fun e!2379076 () Int)

(assert (=> d!1140997 (= lt!1336753 e!2379076)))

(declare-fun c!670341 () Bool)

(assert (=> d!1140997 (= c!670341 ((_ is Nil!40788) prefix!426))))

(assert (=> d!1140997 (= (size!30680 prefix!426) lt!1336753)))

(declare-fun b!3849062 () Bool)

(assert (=> b!3849062 (= e!2379076 0)))

(declare-fun b!3849063 () Bool)

(assert (=> b!3849063 (= e!2379076 (+ 1 (size!30680 (t!311333 prefix!426))))))

(assert (= (and d!1140997 c!670341) b!3849062))

(assert (= (and d!1140997 (not c!670341)) b!3849063))

(declare-fun m!4403791 () Bool)

(assert (=> b!3849063 m!4403791))

(assert (=> b!3848567 d!1140997))

(declare-fun b!3849064 () Bool)

(declare-fun res!1558280 () Bool)

(declare-fun e!2379077 () Bool)

(assert (=> b!3849064 (=> res!1558280 e!2379077)))

(assert (=> b!3849064 (= res!1558280 (not ((_ is IntegerValue!19604) (value!200298 (h!46210 suffixTokens!72)))))))

(declare-fun e!2379078 () Bool)

(assert (=> b!3849064 (= e!2379078 e!2379077)))

(declare-fun b!3849065 () Bool)

(declare-fun e!2379079 () Bool)

(assert (=> b!3849065 (= e!2379079 e!2379078)))

(declare-fun c!670343 () Bool)

(assert (=> b!3849065 (= c!670343 ((_ is IntegerValue!19603) (value!200298 (h!46210 suffixTokens!72))))))

(declare-fun b!3849066 () Bool)

(assert (=> b!3849066 (= e!2379078 (inv!17 (value!200298 (h!46210 suffixTokens!72))))))

(declare-fun d!1140999 () Bool)

(declare-fun c!670342 () Bool)

(assert (=> d!1140999 (= c!670342 ((_ is IntegerValue!19602) (value!200298 (h!46210 suffixTokens!72))))))

(assert (=> d!1140999 (= (inv!21 (value!200298 (h!46210 suffixTokens!72))) e!2379079)))

(declare-fun b!3849067 () Bool)

(assert (=> b!3849067 (= e!2379079 (inv!16 (value!200298 (h!46210 suffixTokens!72))))))

(declare-fun b!3849068 () Bool)

(assert (=> b!3849068 (= e!2379077 (inv!15 (value!200298 (h!46210 suffixTokens!72))))))

(assert (= (and d!1140999 c!670342) b!3849067))

(assert (= (and d!1140999 (not c!670342)) b!3849065))

(assert (= (and b!3849065 c!670343) b!3849066))

(assert (= (and b!3849065 (not c!670343)) b!3849064))

(assert (= (and b!3849064 (not res!1558280)) b!3849068))

(declare-fun m!4403793 () Bool)

(assert (=> b!3849066 m!4403793))

(declare-fun m!4403795 () Bool)

(assert (=> b!3849067 m!4403795))

(declare-fun m!4403797 () Bool)

(assert (=> b!3849068 m!4403797))

(assert (=> b!3848556 d!1140999))

(declare-fun b!3849069 () Bool)

(declare-fun e!2379081 () List!40914)

(assert (=> b!3849069 (= e!2379081 (_1!23121 lt!1336607))))

(declare-fun b!3849070 () Bool)

(assert (=> b!3849070 (= e!2379081 (Cons!40790 (h!46210 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790)) (++!10366 (t!311335 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790)) (_1!23121 lt!1336607))))))

(declare-fun lt!1336754 () List!40914)

(declare-fun e!2379080 () Bool)

(declare-fun b!3849072 () Bool)

(assert (=> b!3849072 (= e!2379080 (or (not (= (_1!23121 lt!1336607) Nil!40790)) (= lt!1336754 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790))))))

(declare-fun d!1141001 () Bool)

(assert (=> d!1141001 e!2379080))

(declare-fun res!1558282 () Bool)

(assert (=> d!1141001 (=> (not res!1558282) (not e!2379080))))

(assert (=> d!1141001 (= res!1558282 (= (content!6063 lt!1336754) ((_ map or) (content!6063 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790)) (content!6063 (_1!23121 lt!1336607)))))))

(assert (=> d!1141001 (= lt!1336754 e!2379081)))

(declare-fun c!670344 () Bool)

(assert (=> d!1141001 (= c!670344 ((_ is Nil!40790) (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790)))))

(assert (=> d!1141001 (= (++!10366 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790) (_1!23121 lt!1336607)) lt!1336754)))

(declare-fun b!3849071 () Bool)

(declare-fun res!1558281 () Bool)

(assert (=> b!3849071 (=> (not res!1558281) (not e!2379080))))

(assert (=> b!3849071 (= res!1558281 (= (size!30684 lt!1336754) (+ (size!30684 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790)) (size!30684 (_1!23121 lt!1336607)))))))

(assert (= (and d!1141001 c!670344) b!3849069))

(assert (= (and d!1141001 (not c!670344)) b!3849070))

(assert (= (and d!1141001 res!1558282) b!3849071))

(assert (= (and b!3849071 res!1558281) b!3849072))

(declare-fun m!4403799 () Bool)

(assert (=> b!3849070 m!4403799))

(declare-fun m!4403801 () Bool)

(assert (=> d!1141001 m!4403801))

(declare-fun m!4403803 () Bool)

(assert (=> d!1141001 m!4403803))

(declare-fun m!4403805 () Bool)

(assert (=> d!1141001 m!4403805))

(declare-fun m!4403807 () Bool)

(assert (=> b!3849071 m!4403807))

(declare-fun m!4403809 () Bool)

(assert (=> b!3849071 m!4403809))

(declare-fun m!4403811 () Bool)

(assert (=> b!3849071 m!4403811))

(assert (=> b!3848557 d!1141001))

(declare-fun d!1141003 () Bool)

(declare-fun lt!1336757 () List!40912)

(assert (=> d!1141003 (= (++!10365 lt!1336596 lt!1336757) lt!1336601)))

(declare-fun e!2379084 () List!40912)

(assert (=> d!1141003 (= lt!1336757 e!2379084)))

(declare-fun c!670347 () Bool)

(assert (=> d!1141003 (= c!670347 ((_ is Cons!40788) lt!1336596))))

(assert (=> d!1141003 (>= (size!30680 lt!1336601) (size!30680 lt!1336596))))

(assert (=> d!1141003 (= (getSuffix!1858 lt!1336601 lt!1336596) lt!1336757)))

(declare-fun b!3849077 () Bool)

(assert (=> b!3849077 (= e!2379084 (getSuffix!1858 (tail!5821 lt!1336601) (t!311333 lt!1336596)))))

(declare-fun b!3849078 () Bool)

(assert (=> b!3849078 (= e!2379084 lt!1336601)))

(assert (= (and d!1141003 c!670347) b!3849077))

(assert (= (and d!1141003 (not c!670347)) b!3849078))

(declare-fun m!4403813 () Bool)

(assert (=> d!1141003 m!4403813))

(assert (=> d!1141003 m!4403251))

(assert (=> d!1141003 m!4403237))

(declare-fun m!4403815 () Bool)

(assert (=> b!3849077 m!4403815))

(assert (=> b!3849077 m!4403815))

(declare-fun m!4403817 () Bool)

(assert (=> b!3849077 m!4403817))

(assert (=> b!3848546 d!1141003))

(declare-fun d!1141005 () Bool)

(assert (=> d!1141005 (isPrefix!3403 lt!1336596 (++!10365 lt!1336596 (_2!23122 (v!39013 lt!1336591))))))

(declare-fun lt!1336760 () Unit!58460)

(declare-fun choose!22650 (List!40912 List!40912) Unit!58460)

(assert (=> d!1141005 (= lt!1336760 (choose!22650 lt!1336596 (_2!23122 (v!39013 lt!1336591))))))

(assert (=> d!1141005 (= (lemmaConcatTwoListThenFirstIsPrefix!2266 lt!1336596 (_2!23122 (v!39013 lt!1336591))) lt!1336760)))

(declare-fun bs!582765 () Bool)

(assert (= bs!582765 d!1141005))

(assert (=> bs!582765 m!4403227))

(assert (=> bs!582765 m!4403227))

(declare-fun m!4403819 () Bool)

(assert (=> bs!582765 m!4403819))

(declare-fun m!4403821 () Bool)

(assert (=> bs!582765 m!4403821))

(assert (=> b!3848546 d!1141005))

(declare-fun d!1141007 () Bool)

(declare-fun fromListB!2109 (List!40912) BalanceConc!24624)

(assert (=> d!1141007 (= (seqFromList!4575 lt!1336596) (fromListB!2109 lt!1336596))))

(declare-fun bs!582766 () Bool)

(assert (= bs!582766 d!1141007))

(declare-fun m!4403823 () Bool)

(assert (=> bs!582766 m!4403823))

(assert (=> b!3848546 d!1141007))

(declare-fun d!1141009 () Bool)

(assert (=> d!1141009 (= (_2!23122 (v!39013 lt!1336591)) lt!1336594)))

(declare-fun lt!1336763 () Unit!58460)

(declare-fun choose!22651 (List!40912 List!40912 List!40912 List!40912 List!40912) Unit!58460)

(assert (=> d!1141009 (= lt!1336763 (choose!22651 lt!1336596 (_2!23122 (v!39013 lt!1336591)) lt!1336596 lt!1336594 lt!1336601))))

(assert (=> d!1141009 (isPrefix!3403 lt!1336596 lt!1336601)))

(assert (=> d!1141009 (= (lemmaSamePrefixThenSameSuffix!1624 lt!1336596 (_2!23122 (v!39013 lt!1336591)) lt!1336596 lt!1336594 lt!1336601) lt!1336763)))

(declare-fun bs!582767 () Bool)

(assert (= bs!582767 d!1141009))

(declare-fun m!4403825 () Bool)

(assert (=> bs!582767 m!4403825))

(declare-fun m!4403827 () Bool)

(assert (=> bs!582767 m!4403827))

(assert (=> b!3848546 d!1141009))

(declare-fun d!1141011 () Bool)

(declare-fun lt!1336766 () BalanceConc!24624)

(assert (=> d!1141011 (= (list!15180 lt!1336766) (originalCharacters!6904 (_1!23122 (v!39013 lt!1336591))))))

(assert (=> d!1141011 (= lt!1336766 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591)))))))

(assert (=> d!1141011 (= (charsOf!4132 (_1!23122 (v!39013 lt!1336591))) lt!1336766)))

(declare-fun b_lambda!112483 () Bool)

(assert (=> (not b_lambda!112483) (not d!1141011)))

(declare-fun t!311398 () Bool)

(declare-fun tb!221789 () Bool)

(assert (=> (and b!3848559 (= (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311398) tb!221789))

(declare-fun b!3849079 () Bool)

(declare-fun e!2379085 () Bool)

(declare-fun tp!1166690 () Bool)

(assert (=> b!3849079 (= e!2379085 (and (inv!54935 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591)))))) tp!1166690))))

(declare-fun result!270288 () Bool)

(assert (=> tb!221789 (= result!270288 (and (inv!54936 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591))))) e!2379085))))

(assert (= tb!221789 b!3849079))

(declare-fun m!4403829 () Bool)

(assert (=> b!3849079 m!4403829))

(declare-fun m!4403831 () Bool)

(assert (=> tb!221789 m!4403831))

(assert (=> d!1141011 t!311398))

(declare-fun b_and!287271 () Bool)

(assert (= b_and!287265 (and (=> t!311398 result!270288) b_and!287271)))

(declare-fun t!311400 () Bool)

(declare-fun tb!221791 () Bool)

(assert (=> (and b!3848565 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311400) tb!221791))

(declare-fun result!270290 () Bool)

(assert (= result!270290 result!270288))

(assert (=> d!1141011 t!311400))

(declare-fun b_and!287273 () Bool)

(assert (= b_and!287267 (and (=> t!311400 result!270290) b_and!287273)))

(declare-fun t!311402 () Bool)

(declare-fun tb!221793 () Bool)

(assert (=> (and b!3848568 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311402) tb!221793))

(declare-fun result!270292 () Bool)

(assert (= result!270292 result!270288))

(assert (=> d!1141011 t!311402))

(declare-fun b_and!287275 () Bool)

(assert (= b_and!287269 (and (=> t!311402 result!270292) b_and!287275)))

(declare-fun m!4403833 () Bool)

(assert (=> d!1141011 m!4403833))

(declare-fun m!4403835 () Bool)

(assert (=> d!1141011 m!4403835))

(assert (=> b!3848546 d!1141011))

(declare-fun b!3849080 () Bool)

(declare-fun e!2379086 () Bool)

(declare-fun lt!1336768 () tuple2!39974)

(assert (=> b!3849080 (= e!2379086 (= (_2!23121 lt!1336768) (_2!23122 (v!39013 lt!1336591))))))

(declare-fun d!1141013 () Bool)

(assert (=> d!1141013 e!2379086))

(declare-fun c!670349 () Bool)

(assert (=> d!1141013 (= c!670349 (> (size!30684 (_1!23121 lt!1336768)) 0))))

(declare-fun e!2379088 () tuple2!39974)

(assert (=> d!1141013 (= lt!1336768 e!2379088)))

(declare-fun c!670348 () Bool)

(declare-fun lt!1336769 () Option!8722)

(assert (=> d!1141013 (= c!670348 ((_ is Some!8721) lt!1336769))))

(assert (=> d!1141013 (= lt!1336769 (maxPrefix!3197 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336591))))))

(assert (=> d!1141013 (= (lexList!1661 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336591))) lt!1336768)))

(declare-fun b!3849081 () Bool)

(declare-fun e!2379087 () Bool)

(assert (=> b!3849081 (= e!2379086 e!2379087)))

(declare-fun res!1558283 () Bool)

(assert (=> b!3849081 (= res!1558283 (< (size!30680 (_2!23121 lt!1336768)) (size!30680 (_2!23122 (v!39013 lt!1336591)))))))

(assert (=> b!3849081 (=> (not res!1558283) (not e!2379087))))

(declare-fun b!3849082 () Bool)

(declare-fun lt!1336767 () tuple2!39974)

(assert (=> b!3849082 (= e!2379088 (tuple2!39975 (Cons!40790 (_1!23122 (v!39013 lt!1336769)) (_1!23121 lt!1336767)) (_2!23121 lt!1336767)))))

(assert (=> b!3849082 (= lt!1336767 (lexList!1661 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336769))))))

(declare-fun b!3849083 () Bool)

(assert (=> b!3849083 (= e!2379087 (not (isEmpty!24138 (_1!23121 lt!1336768))))))

(declare-fun b!3849084 () Bool)

(assert (=> b!3849084 (= e!2379088 (tuple2!39975 Nil!40790 (_2!23122 (v!39013 lt!1336591))))))

(assert (= (and d!1141013 c!670348) b!3849082))

(assert (= (and d!1141013 (not c!670348)) b!3849084))

(assert (= (and d!1141013 c!670349) b!3849081))

(assert (= (and d!1141013 (not c!670349)) b!3849080))

(assert (= (and b!3849081 res!1558283) b!3849083))

(declare-fun m!4403837 () Bool)

(assert (=> d!1141013 m!4403837))

(declare-fun m!4403839 () Bool)

(assert (=> d!1141013 m!4403839))

(declare-fun m!4403841 () Bool)

(assert (=> b!3849081 m!4403841))

(assert (=> b!3849081 m!4403293))

(declare-fun m!4403843 () Bool)

(assert (=> b!3849082 m!4403843))

(declare-fun m!4403845 () Bool)

(assert (=> b!3849083 m!4403845))

(assert (=> b!3848546 d!1141013))

(declare-fun d!1141015 () Bool)

(assert (=> d!1141015 (= (size!30679 (_1!23122 (v!39013 lt!1336591))) (size!30680 (originalCharacters!6904 (_1!23122 (v!39013 lt!1336591)))))))

(declare-fun Unit!58463 () Unit!58460)

(assert (=> d!1141015 (= (lemmaCharactersSize!965 (_1!23122 (v!39013 lt!1336591))) Unit!58463)))

(declare-fun bs!582768 () Bool)

(assert (= bs!582768 d!1141015))

(assert (=> bs!582768 m!4403285))

(assert (=> b!3848546 d!1141015))

(declare-fun d!1141017 () Bool)

(declare-fun list!15182 (Conc!12515) List!40912)

(assert (=> d!1141017 (= (list!15180 (charsOf!4132 (_1!23122 (v!39013 lt!1336591)))) (list!15182 (c!670247 (charsOf!4132 (_1!23122 (v!39013 lt!1336591))))))))

(declare-fun bs!582769 () Bool)

(assert (= bs!582769 d!1141017))

(declare-fun m!4403847 () Bool)

(assert (=> bs!582769 m!4403847))

(assert (=> b!3848546 d!1141017))

(declare-fun d!1141019 () Bool)

(declare-fun dynLambda!17598 (Int BalanceConc!24624) TokenValue!6534)

(assert (=> d!1141019 (= (apply!9547 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (seqFromList!4575 lt!1336596)) (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (seqFromList!4575 lt!1336596)))))

(declare-fun b_lambda!112485 () Bool)

(assert (=> (not b_lambda!112485) (not d!1141019)))

(declare-fun tb!221795 () Bool)

(declare-fun t!311404 () Bool)

(assert (=> (and b!3848559 (= (toValue!8720 (transformation!6304 (h!46211 rules!2768))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311404) tb!221795))

(declare-fun result!270294 () Bool)

(assert (=> tb!221795 (= result!270294 (inv!21 (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (seqFromList!4575 lt!1336596))))))

(declare-fun m!4403849 () Bool)

(assert (=> tb!221795 m!4403849))

(assert (=> d!1141019 t!311404))

(declare-fun b_and!287277 () Bool)

(assert (= b_and!287211 (and (=> t!311404 result!270294) b_and!287277)))

(declare-fun t!311406 () Bool)

(declare-fun tb!221797 () Bool)

(assert (=> (and b!3848565 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311406) tb!221797))

(declare-fun result!270298 () Bool)

(assert (= result!270298 result!270294))

(assert (=> d!1141019 t!311406))

(declare-fun b_and!287279 () Bool)

(assert (= b_and!287215 (and (=> t!311406 result!270298) b_and!287279)))

(declare-fun t!311408 () Bool)

(declare-fun tb!221799 () Bool)

(assert (=> (and b!3848568 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311408) tb!221799))

(declare-fun result!270300 () Bool)

(assert (= result!270300 result!270294))

(assert (=> d!1141019 t!311408))

(declare-fun b_and!287281 () Bool)

(assert (= b_and!287219 (and (=> t!311408 result!270300) b_and!287281)))

(assert (=> d!1141019 m!4403231))

(declare-fun m!4403851 () Bool)

(assert (=> d!1141019 m!4403851))

(assert (=> b!3848546 d!1141019))

(declare-fun d!1141021 () Bool)

(assert (=> d!1141021 (ruleValid!2256 thiss!20629 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))

(declare-fun lt!1336772 () Unit!58460)

(declare-fun choose!22652 (LexerInterface!5893 Rule!12408 List!40915) Unit!58460)

(assert (=> d!1141021 (= lt!1336772 (choose!22652 thiss!20629 (rule!9154 (_1!23122 (v!39013 lt!1336591))) rules!2768))))

(assert (=> d!1141021 (contains!8246 rules!2768 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))

(assert (=> d!1141021 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1336 thiss!20629 (rule!9154 (_1!23122 (v!39013 lt!1336591))) rules!2768) lt!1336772)))

(declare-fun bs!582770 () Bool)

(assert (= bs!582770 d!1141021))

(assert (=> bs!582770 m!4403247))

(declare-fun m!4403853 () Bool)

(assert (=> bs!582770 m!4403853))

(declare-fun m!4403855 () Bool)

(assert (=> bs!582770 m!4403855))

(assert (=> b!3848546 d!1141021))

(declare-fun b!3849087 () Bool)

(declare-fun e!2379093 () List!40912)

(assert (=> b!3849087 (= e!2379093 (_2!23122 (v!39013 lt!1336591)))))

(declare-fun e!2379092 () Bool)

(declare-fun lt!1336773 () List!40912)

(declare-fun b!3849090 () Bool)

(assert (=> b!3849090 (= e!2379092 (or (not (= (_2!23122 (v!39013 lt!1336591)) Nil!40788)) (= lt!1336773 lt!1336596)))))

(declare-fun b!3849088 () Bool)

(assert (=> b!3849088 (= e!2379093 (Cons!40788 (h!46208 lt!1336596) (++!10365 (t!311333 lt!1336596) (_2!23122 (v!39013 lt!1336591)))))))

(declare-fun b!3849089 () Bool)

(declare-fun res!1558284 () Bool)

(assert (=> b!3849089 (=> (not res!1558284) (not e!2379092))))

(assert (=> b!3849089 (= res!1558284 (= (size!30680 lt!1336773) (+ (size!30680 lt!1336596) (size!30680 (_2!23122 (v!39013 lt!1336591))))))))

(declare-fun d!1141023 () Bool)

(assert (=> d!1141023 e!2379092))

(declare-fun res!1558285 () Bool)

(assert (=> d!1141023 (=> (not res!1558285) (not e!2379092))))

(assert (=> d!1141023 (= res!1558285 (= (content!6064 lt!1336773) ((_ map or) (content!6064 lt!1336596) (content!6064 (_2!23122 (v!39013 lt!1336591))))))))

(assert (=> d!1141023 (= lt!1336773 e!2379093)))

(declare-fun c!670350 () Bool)

(assert (=> d!1141023 (= c!670350 ((_ is Nil!40788) lt!1336596))))

(assert (=> d!1141023 (= (++!10365 lt!1336596 (_2!23122 (v!39013 lt!1336591))) lt!1336773)))

(assert (= (and d!1141023 c!670350) b!3849087))

(assert (= (and d!1141023 (not c!670350)) b!3849088))

(assert (= (and d!1141023 res!1558285) b!3849089))

(assert (= (and b!3849089 res!1558284) b!3849090))

(declare-fun m!4403857 () Bool)

(assert (=> b!3849088 m!4403857))

(declare-fun m!4403859 () Bool)

(assert (=> b!3849089 m!4403859))

(assert (=> b!3849089 m!4403237))

(assert (=> b!3849089 m!4403293))

(declare-fun m!4403861 () Bool)

(assert (=> d!1141023 m!4403861))

(declare-fun m!4403863 () Bool)

(assert (=> d!1141023 m!4403863))

(declare-fun m!4403865 () Bool)

(assert (=> d!1141023 m!4403865))

(assert (=> b!3848546 d!1141023))

(declare-fun d!1141025 () Bool)

(declare-fun res!1558290 () Bool)

(declare-fun e!2379096 () Bool)

(assert (=> d!1141025 (=> (not res!1558290) (not e!2379096))))

(assert (=> d!1141025 (= res!1558290 (validRegex!5098 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(assert (=> d!1141025 (= (ruleValid!2256 thiss!20629 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) e!2379096)))

(declare-fun b!3849095 () Bool)

(declare-fun res!1558291 () Bool)

(assert (=> b!3849095 (=> (not res!1558291) (not e!2379096))))

(assert (=> b!3849095 (= res!1558291 (not (nullable!3899 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))))

(declare-fun b!3849096 () Bool)

(assert (=> b!3849096 (= e!2379096 (not (= (tag!7164 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (String!46389 ""))))))

(assert (= (and d!1141025 res!1558290) b!3849095))

(assert (= (and b!3849095 res!1558291) b!3849096))

(assert (=> d!1141025 m!4403379))

(assert (=> b!3849095 m!4403391))

(assert (=> b!3848546 d!1141025))

(declare-fun d!1141027 () Bool)

(declare-fun lt!1336774 () Int)

(assert (=> d!1141027 (>= lt!1336774 0)))

(declare-fun e!2379097 () Int)

(assert (=> d!1141027 (= lt!1336774 e!2379097)))

(declare-fun c!670351 () Bool)

(assert (=> d!1141027 (= c!670351 ((_ is Nil!40788) lt!1336596))))

(assert (=> d!1141027 (= (size!30680 lt!1336596) lt!1336774)))

(declare-fun b!3849097 () Bool)

(assert (=> b!3849097 (= e!2379097 0)))

(declare-fun b!3849098 () Bool)

(assert (=> b!3849098 (= e!2379097 (+ 1 (size!30680 (t!311333 lt!1336596))))))

(assert (= (and d!1141027 c!670351) b!3849097))

(assert (= (and d!1141027 (not c!670351)) b!3849098))

(declare-fun m!4403867 () Bool)

(assert (=> b!3849098 m!4403867))

(assert (=> b!3848546 d!1141027))

(declare-fun b!3849110 () Bool)

(declare-fun e!2379104 () Bool)

(assert (=> b!3849110 (= e!2379104 (>= (size!30680 lt!1336593) (size!30680 lt!1336596)))))

(declare-fun d!1141029 () Bool)

(assert (=> d!1141029 e!2379104))

(declare-fun res!1558301 () Bool)

(assert (=> d!1141029 (=> res!1558301 e!2379104)))

(declare-fun lt!1336777 () Bool)

(assert (=> d!1141029 (= res!1558301 (not lt!1336777))))

(declare-fun e!2379106 () Bool)

(assert (=> d!1141029 (= lt!1336777 e!2379106)))

(declare-fun res!1558302 () Bool)

(assert (=> d!1141029 (=> res!1558302 e!2379106)))

(assert (=> d!1141029 (= res!1558302 ((_ is Nil!40788) lt!1336596))))

(assert (=> d!1141029 (= (isPrefix!3403 lt!1336596 lt!1336593) lt!1336777)))

(declare-fun b!3849109 () Bool)

(declare-fun e!2379105 () Bool)

(assert (=> b!3849109 (= e!2379105 (isPrefix!3403 (tail!5821 lt!1336596) (tail!5821 lt!1336593)))))

(declare-fun b!3849107 () Bool)

(assert (=> b!3849107 (= e!2379106 e!2379105)))

(declare-fun res!1558303 () Bool)

(assert (=> b!3849107 (=> (not res!1558303) (not e!2379105))))

(assert (=> b!3849107 (= res!1558303 (not ((_ is Nil!40788) lt!1336593)))))

(declare-fun b!3849108 () Bool)

(declare-fun res!1558300 () Bool)

(assert (=> b!3849108 (=> (not res!1558300) (not e!2379105))))

(assert (=> b!3849108 (= res!1558300 (= (head!8094 lt!1336596) (head!8094 lt!1336593)))))

(assert (= (and d!1141029 (not res!1558302)) b!3849107))

(assert (= (and b!3849107 res!1558303) b!3849108))

(assert (= (and b!3849108 res!1558300) b!3849109))

(assert (= (and d!1141029 (not res!1558301)) b!3849110))

(declare-fun m!4403869 () Bool)

(assert (=> b!3849110 m!4403869))

(assert (=> b!3849110 m!4403237))

(assert (=> b!3849109 m!4403381))

(declare-fun m!4403871 () Bool)

(assert (=> b!3849109 m!4403871))

(assert (=> b!3849109 m!4403381))

(assert (=> b!3849109 m!4403871))

(declare-fun m!4403873 () Bool)

(assert (=> b!3849109 m!4403873))

(assert (=> b!3849108 m!4403385))

(declare-fun m!4403875 () Bool)

(assert (=> b!3849108 m!4403875))

(assert (=> b!3848546 d!1141029))

(declare-fun b!3849115 () Bool)

(declare-fun e!2379109 () Bool)

(declare-fun tp!1166693 () Bool)

(assert (=> b!3849115 (= e!2379109 (and tp_is_empty!19389 tp!1166693))))

(assert (=> b!3848571 (= tp!1166615 e!2379109)))

(assert (= (and b!3848571 ((_ is Cons!40788) (originalCharacters!6904 (h!46210 prefixTokens!80)))) b!3849115))

(declare-fun b!3849116 () Bool)

(declare-fun e!2379110 () Bool)

(declare-fun tp!1166694 () Bool)

(assert (=> b!3849116 (= e!2379110 (and tp_is_empty!19389 tp!1166694))))

(assert (=> b!3848560 (= tp!1166614 e!2379110)))

(assert (= (and b!3848560 ((_ is Cons!40788) (t!311333 suffixResult!91))) b!3849116))

(declare-fun e!2379113 () Bool)

(assert (=> b!3848549 (= tp!1166604 e!2379113)))

(declare-fun b!3849129 () Bool)

(declare-fun tp!1166709 () Bool)

(assert (=> b!3849129 (= e!2379113 tp!1166709)))

(declare-fun b!3849127 () Bool)

(assert (=> b!3849127 (= e!2379113 tp_is_empty!19389)))

(declare-fun b!3849130 () Bool)

(declare-fun tp!1166708 () Bool)

(declare-fun tp!1166707 () Bool)

(assert (=> b!3849130 (= e!2379113 (and tp!1166708 tp!1166707))))

(declare-fun b!3849128 () Bool)

(declare-fun tp!1166706 () Bool)

(declare-fun tp!1166705 () Bool)

(assert (=> b!3849128 (= e!2379113 (and tp!1166706 tp!1166705))))

(assert (= (and b!3848549 ((_ is ElementMatch!11209) (regex!6304 (rule!9154 (h!46210 prefixTokens!80))))) b!3849127))

(assert (= (and b!3848549 ((_ is Concat!17744) (regex!6304 (rule!9154 (h!46210 prefixTokens!80))))) b!3849128))

(assert (= (and b!3848549 ((_ is Star!11209) (regex!6304 (rule!9154 (h!46210 prefixTokens!80))))) b!3849129))

(assert (= (and b!3848549 ((_ is Union!11209) (regex!6304 (rule!9154 (h!46210 prefixTokens!80))))) b!3849130))

(declare-fun e!2379114 () Bool)

(assert (=> b!3848553 (= tp!1166609 e!2379114)))

(declare-fun b!3849133 () Bool)

(declare-fun tp!1166714 () Bool)

(assert (=> b!3849133 (= e!2379114 tp!1166714)))

(declare-fun b!3849131 () Bool)

(assert (=> b!3849131 (= e!2379114 tp_is_empty!19389)))

(declare-fun b!3849134 () Bool)

(declare-fun tp!1166713 () Bool)

(declare-fun tp!1166712 () Bool)

(assert (=> b!3849134 (= e!2379114 (and tp!1166713 tp!1166712))))

(declare-fun b!3849132 () Bool)

(declare-fun tp!1166711 () Bool)

(declare-fun tp!1166710 () Bool)

(assert (=> b!3849132 (= e!2379114 (and tp!1166711 tp!1166710))))

(assert (= (and b!3848553 ((_ is ElementMatch!11209) (regex!6304 (rule!9154 (h!46210 suffixTokens!72))))) b!3849131))

(assert (= (and b!3848553 ((_ is Concat!17744) (regex!6304 (rule!9154 (h!46210 suffixTokens!72))))) b!3849132))

(assert (= (and b!3848553 ((_ is Star!11209) (regex!6304 (rule!9154 (h!46210 suffixTokens!72))))) b!3849133))

(assert (= (and b!3848553 ((_ is Union!11209) (regex!6304 (rule!9154 (h!46210 suffixTokens!72))))) b!3849134))

(declare-fun b!3849145 () Bool)

(declare-fun b_free!103141 () Bool)

(declare-fun b_next!103845 () Bool)

(assert (=> b!3849145 (= b_free!103141 (not b_next!103845))))

(declare-fun tb!221801 () Bool)

(declare-fun t!311410 () Bool)

(assert (=> (and b!3849145 (= (toValue!8720 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311410) tb!221801))

(declare-fun result!270308 () Bool)

(assert (= result!270308 result!270294))

(assert (=> d!1141019 t!311410))

(declare-fun b_and!287283 () Bool)

(declare-fun tp!1166726 () Bool)

(assert (=> b!3849145 (= tp!1166726 (and (=> t!311410 result!270308) b_and!287283))))

(declare-fun b_free!103143 () Bool)

(declare-fun b_next!103847 () Bool)

(assert (=> b!3849145 (= b_free!103143 (not b_next!103847))))

(declare-fun tb!221803 () Bool)

(declare-fun t!311412 () Bool)

(assert (=> (and b!3849145 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) t!311412) tb!221803))

(declare-fun result!270310 () Bool)

(assert (= result!270310 result!270274))

(assert (=> b!3849051 t!311412))

(declare-fun t!311414 () Bool)

(declare-fun tb!221805 () Bool)

(assert (=> (and b!3849145 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) t!311414) tb!221805))

(declare-fun result!270312 () Bool)

(assert (= result!270312 result!270282))

(assert (=> b!3849058 t!311414))

(declare-fun tb!221807 () Bool)

(declare-fun t!311416 () Bool)

(assert (=> (and b!3849145 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311416) tb!221807))

(declare-fun result!270314 () Bool)

(assert (= result!270314 result!270288))

(assert (=> d!1141011 t!311416))

(declare-fun b_and!287285 () Bool)

(declare-fun tp!1166725 () Bool)

(assert (=> b!3849145 (= tp!1166725 (and (=> t!311412 result!270310) (=> t!311414 result!270312) (=> t!311416 result!270314) b_and!287285))))

(declare-fun e!2379124 () Bool)

(assert (=> b!3849145 (= e!2379124 (and tp!1166726 tp!1166725))))

(declare-fun tp!1166723 () Bool)

(declare-fun e!2379126 () Bool)

(declare-fun b!3849144 () Bool)

(assert (=> b!3849144 (= e!2379126 (and tp!1166723 (inv!54928 (tag!7164 (h!46211 (t!311336 rules!2768)))) (inv!54932 (transformation!6304 (h!46211 (t!311336 rules!2768)))) e!2379124))))

(declare-fun b!3849143 () Bool)

(declare-fun e!2379125 () Bool)

(declare-fun tp!1166724 () Bool)

(assert (=> b!3849143 (= e!2379125 (and e!2379126 tp!1166724))))

(assert (=> b!3848545 (= tp!1166608 e!2379125)))

(assert (= b!3849144 b!3849145))

(assert (= b!3849143 b!3849144))

(assert (= (and b!3848545 ((_ is Cons!40791) (t!311336 rules!2768))) b!3849143))

(declare-fun m!4403877 () Bool)

(assert (=> b!3849144 m!4403877))

(declare-fun m!4403879 () Bool)

(assert (=> b!3849144 m!4403879))

(declare-fun b!3849146 () Bool)

(declare-fun e!2379127 () Bool)

(declare-fun tp!1166727 () Bool)

(assert (=> b!3849146 (= e!2379127 (and tp_is_empty!19389 tp!1166727))))

(assert (=> b!3848566 (= tp!1166616 e!2379127)))

(assert (= (and b!3848566 ((_ is Cons!40788) (t!311333 prefix!426))) b!3849146))

(declare-fun b!3849160 () Bool)

(declare-fun b_free!103145 () Bool)

(declare-fun b_next!103849 () Bool)

(assert (=> b!3849160 (= b_free!103145 (not b_next!103849))))

(declare-fun tb!221809 () Bool)

(declare-fun t!311418 () Bool)

(assert (=> (and b!3849160 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311418) tb!221809))

(declare-fun result!270318 () Bool)

(assert (= result!270318 result!270294))

(assert (=> d!1141019 t!311418))

(declare-fun b_and!287287 () Bool)

(declare-fun tp!1166741 () Bool)

(assert (=> b!3849160 (= tp!1166741 (and (=> t!311418 result!270318) b_and!287287))))

(declare-fun b_free!103147 () Bool)

(declare-fun b_next!103851 () Bool)

(assert (=> b!3849160 (= b_free!103147 (not b_next!103851))))

(declare-fun t!311420 () Bool)

(declare-fun tb!221811 () Bool)

(assert (=> (and b!3849160 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) t!311420) tb!221811))

(declare-fun result!270320 () Bool)

(assert (= result!270320 result!270274))

(assert (=> b!3849051 t!311420))

(declare-fun tb!221813 () Bool)

(declare-fun t!311422 () Bool)

(assert (=> (and b!3849160 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) t!311422) tb!221813))

(declare-fun result!270322 () Bool)

(assert (= result!270322 result!270282))

(assert (=> b!3849058 t!311422))

(declare-fun tb!221815 () Bool)

(declare-fun t!311424 () Bool)

(assert (=> (and b!3849160 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311424) tb!221815))

(declare-fun result!270324 () Bool)

(assert (= result!270324 result!270288))

(assert (=> d!1141011 t!311424))

(declare-fun tp!1166740 () Bool)

(declare-fun b_and!287289 () Bool)

(assert (=> b!3849160 (= tp!1166740 (and (=> t!311420 result!270320) (=> t!311422 result!270322) (=> t!311424 result!270324) b_and!287289))))

(declare-fun b!3849158 () Bool)

(declare-fun e!2379142 () Bool)

(declare-fun tp!1166738 () Bool)

(declare-fun e!2379141 () Bool)

(assert (=> b!3849158 (= e!2379141 (and (inv!21 (value!200298 (h!46210 (t!311335 prefixTokens!80)))) e!2379142 tp!1166738))))

(declare-fun tp!1166742 () Bool)

(declare-fun b!3849157 () Bool)

(declare-fun e!2379144 () Bool)

(assert (=> b!3849157 (= e!2379144 (and (inv!54931 (h!46210 (t!311335 prefixTokens!80))) e!2379141 tp!1166742))))

(assert (=> b!3848554 (= tp!1166603 e!2379144)))

(declare-fun e!2379143 () Bool)

(assert (=> b!3849160 (= e!2379143 (and tp!1166741 tp!1166740))))

(declare-fun tp!1166739 () Bool)

(declare-fun b!3849159 () Bool)

(assert (=> b!3849159 (= e!2379142 (and tp!1166739 (inv!54928 (tag!7164 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (inv!54932 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) e!2379143))))

(assert (= b!3849159 b!3849160))

(assert (= b!3849158 b!3849159))

(assert (= b!3849157 b!3849158))

(assert (= (and b!3848554 ((_ is Cons!40790) (t!311335 prefixTokens!80))) b!3849157))

(declare-fun m!4403881 () Bool)

(assert (=> b!3849158 m!4403881))

(declare-fun m!4403883 () Bool)

(assert (=> b!3849157 m!4403883))

(declare-fun m!4403885 () Bool)

(assert (=> b!3849159 m!4403885))

(declare-fun m!4403887 () Bool)

(assert (=> b!3849159 m!4403887))

(declare-fun b!3849164 () Bool)

(declare-fun b_free!103149 () Bool)

(declare-fun b_next!103853 () Bool)

(assert (=> b!3849164 (= b_free!103149 (not b_next!103853))))

(declare-fun t!311426 () Bool)

(declare-fun tb!221817 () Bool)

(assert (=> (and b!3849164 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311426) tb!221817))

(declare-fun result!270326 () Bool)

(assert (= result!270326 result!270294))

(assert (=> d!1141019 t!311426))

(declare-fun tp!1166746 () Bool)

(declare-fun b_and!287291 () Bool)

(assert (=> b!3849164 (= tp!1166746 (and (=> t!311426 result!270326) b_and!287291))))

(declare-fun b_free!103151 () Bool)

(declare-fun b_next!103855 () Bool)

(assert (=> b!3849164 (= b_free!103151 (not b_next!103855))))

(declare-fun tb!221819 () Bool)

(declare-fun t!311428 () Bool)

(assert (=> (and b!3849164 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) t!311428) tb!221819))

(declare-fun result!270328 () Bool)

(assert (= result!270328 result!270274))

(assert (=> b!3849051 t!311428))

(declare-fun t!311430 () Bool)

(declare-fun tb!221821 () Bool)

(assert (=> (and b!3849164 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) t!311430) tb!221821))

(declare-fun result!270330 () Bool)

(assert (= result!270330 result!270282))

(assert (=> b!3849058 t!311430))

(declare-fun tb!221823 () Bool)

(declare-fun t!311432 () Bool)

(assert (=> (and b!3849164 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311432) tb!221823))

(declare-fun result!270332 () Bool)

(assert (= result!270332 result!270288))

(assert (=> d!1141011 t!311432))

(declare-fun tp!1166745 () Bool)

(declare-fun b_and!287293 () Bool)

(assert (=> b!3849164 (= tp!1166745 (and (=> t!311428 result!270328) (=> t!311430 result!270330) (=> t!311432 result!270332) b_and!287293))))

(declare-fun e!2379147 () Bool)

(declare-fun tp!1166743 () Bool)

(declare-fun b!3849162 () Bool)

(declare-fun e!2379148 () Bool)

(assert (=> b!3849162 (= e!2379147 (and (inv!21 (value!200298 (h!46210 (t!311335 suffixTokens!72)))) e!2379148 tp!1166743))))

(declare-fun b!3849161 () Bool)

(declare-fun e!2379150 () Bool)

(declare-fun tp!1166747 () Bool)

(assert (=> b!3849161 (= e!2379150 (and (inv!54931 (h!46210 (t!311335 suffixTokens!72))) e!2379147 tp!1166747))))

(assert (=> b!3848547 (= tp!1166611 e!2379150)))

(declare-fun e!2379149 () Bool)

(assert (=> b!3849164 (= e!2379149 (and tp!1166746 tp!1166745))))

(declare-fun tp!1166744 () Bool)

(declare-fun b!3849163 () Bool)

(assert (=> b!3849163 (= e!2379148 (and tp!1166744 (inv!54928 (tag!7164 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (inv!54932 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) e!2379149))))

(assert (= b!3849163 b!3849164))

(assert (= b!3849162 b!3849163))

(assert (= b!3849161 b!3849162))

(assert (= (and b!3848547 ((_ is Cons!40790) (t!311335 suffixTokens!72))) b!3849161))

(declare-fun m!4403889 () Bool)

(assert (=> b!3849162 m!4403889))

(declare-fun m!4403891 () Bool)

(assert (=> b!3849161 m!4403891))

(declare-fun m!4403893 () Bool)

(assert (=> b!3849163 m!4403893))

(declare-fun m!4403895 () Bool)

(assert (=> b!3849163 m!4403895))

(declare-fun e!2379152 () Bool)

(assert (=> b!3848569 (= tp!1166606 e!2379152)))

(declare-fun b!3849167 () Bool)

(declare-fun tp!1166752 () Bool)

(assert (=> b!3849167 (= e!2379152 tp!1166752)))

(declare-fun b!3849165 () Bool)

(assert (=> b!3849165 (= e!2379152 tp_is_empty!19389)))

(declare-fun b!3849168 () Bool)

(declare-fun tp!1166751 () Bool)

(declare-fun tp!1166750 () Bool)

(assert (=> b!3849168 (= e!2379152 (and tp!1166751 tp!1166750))))

(declare-fun b!3849166 () Bool)

(declare-fun tp!1166749 () Bool)

(declare-fun tp!1166748 () Bool)

(assert (=> b!3849166 (= e!2379152 (and tp!1166749 tp!1166748))))

(assert (= (and b!3848569 ((_ is ElementMatch!11209) (regex!6304 (h!46211 rules!2768)))) b!3849165))

(assert (= (and b!3848569 ((_ is Concat!17744) (regex!6304 (h!46211 rules!2768)))) b!3849166))

(assert (= (and b!3848569 ((_ is Star!11209) (regex!6304 (h!46211 rules!2768)))) b!3849167))

(assert (= (and b!3848569 ((_ is Union!11209) (regex!6304 (h!46211 rules!2768)))) b!3849168))

(declare-fun b!3849169 () Bool)

(declare-fun e!2379153 () Bool)

(declare-fun tp!1166753 () Bool)

(assert (=> b!3849169 (= e!2379153 (and tp_is_empty!19389 tp!1166753))))

(assert (=> b!3848558 (= tp!1166612 e!2379153)))

(assert (= (and b!3848558 ((_ is Cons!40788) (t!311333 suffix!1176))) b!3849169))

(declare-fun b!3849170 () Bool)

(declare-fun e!2379154 () Bool)

(declare-fun tp!1166754 () Bool)

(assert (=> b!3849170 (= e!2379154 (and tp_is_empty!19389 tp!1166754))))

(assert (=> b!3848556 (= tp!1166600 e!2379154)))

(assert (= (and b!3848556 ((_ is Cons!40788) (originalCharacters!6904 (h!46210 suffixTokens!72)))) b!3849170))

(declare-fun b_lambda!112487 () Bool)

(assert (= b_lambda!112481 (or (and b!3848568 b_free!103127) (and b!3849160 b_free!103147 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))))) (and b!3848565 b_free!103123 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))))) (and b!3848559 b_free!103119 (= (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))))) (and b!3849145 b_free!103143 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))))) (and b!3849164 b_free!103151 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b_lambda!112487)))

(declare-fun b_lambda!112489 () Bool)

(assert (= b_lambda!112479 (or (and b!3848559 b_free!103119 (= (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))))) (and b!3848568 b_free!103127 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))))) (and b!3849145 b_free!103143 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))))) (and b!3849164 b_free!103151 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))))) (and b!3848565 b_free!103123) (and b!3849160 b_free!103147 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b_lambda!112489)))

(check-sat (not b!3849163) (not b!3849128) (not b!3848851) (not d!1141023) (not b_next!103855) (not b!3848614) (not b_next!103827) (not b!3849143) (not b!3849058) (not b!3848883) (not b!3849169) (not b!3848607) (not b!3849052) (not b_next!103849) (not b!3848606) (not b!3849098) (not d!1140931) (not tb!221795) (not b!3849057) (not b!3849083) (not b!3849108) (not b!3849008) (not b!3849159) (not d!1141013) (not b!3848987) (not b!3849070) (not b!3849081) (not b!3848991) (not b!3849039) (not b!3848850) (not b!3848990) (not b_next!103853) b_and!287271 (not b!3849095) (not d!1141017) (not b!3849144) (not b!3848995) (not d!1140991) (not b!3849158) (not b!3849146) b_and!287279 (not d!1140883) (not d!1141025) (not b!3849133) (not d!1140893) (not b!3848852) (not d!1141005) (not b_next!103847) (not b!3849082) (not b!3849041) (not d!1141009) b_and!287281 (not b!3848695) (not d!1140943) b_and!287273 (not b!3848608) (not b_next!103851) (not b_next!103821) (not tb!221777) (not b!3849010) b_and!287287 (not b!3849033) (not b!3849109) (not b!3849134) b_and!287293 (not b!3849168) (not b!3849043) (not d!1140969) (not b_lambda!112485) (not d!1140973) b_and!287283 (not b_lambda!112487) (not b!3849088) (not d!1141011) (not b!3849161) (not b_next!103845) (not d!1140885) (not b!3849060) (not b!3849068) (not d!1141007) (not d!1140995) (not b!3849022) b_and!287285 (not b!3849089) (not d!1140987) (not b!3848683) (not b_lambda!112489) (not b!3849044) (not b!3849079) (not b!3849037) (not b!3848845) (not b_next!103831) (not b!3848853) (not b!3848682) (not b!3849066) b_and!287277 (not b!3849061) (not b!3848846) (not b_lambda!112483) (not b!3849115) (not bm!282106) (not d!1140939) (not d!1140971) (not b!3849051) (not b!3849110) (not d!1140975) (not b!3848993) tp_is_empty!19389 (not b!3848684) (not b!3849130) (not b_next!103823) (not b!3848996) (not b!3849170) (not b_next!103825) (not b!3849077) (not b!3849071) (not b!3849162) (not b!3849116) (not b!3848886) (not d!1141021) (not b_next!103829) (not b!3849021) (not b!3849009) (not b!3848847) (not d!1141015) (not b!3849063) (not b!3849034) b_and!287291 (not bm!282115) (not d!1141003) (not b!3849045) (not d!1141001) (not b!3849132) (not d!1140989) b_and!287289 (not b!3848691) (not b!3848989) (not b!3849129) (not tb!221789) (not tb!221783) (not b!3849167) b_and!287275 (not b!3849157) (not b!3849166) (not b!3849059) (not b!3848848) (not b!3848994) (not b!3848992) (not b!3848693) (not b!3849067) (not d!1140937))
(check-sat (not b_next!103855) (not b_next!103827) (not b_next!103849) b_and!287279 b_and!287273 b_and!287287 b_and!287293 b_and!287285 (not b_next!103831) b_and!287277 (not b_next!103829) b_and!287291 b_and!287289 b_and!287275 (not b_next!103853) b_and!287271 (not b_next!103847) b_and!287281 (not b_next!103851) (not b_next!103821) b_and!287283 (not b_next!103845) (not b_next!103823) (not b_next!103825))
(get-model)

(declare-fun d!1141039 () Bool)

(declare-fun c!670356 () Bool)

(assert (=> d!1141039 (= c!670356 ((_ is Nil!40790) lt!1336754))))

(declare-fun e!2379161 () (InoxSet Token!11746))

(assert (=> d!1141039 (= (content!6063 lt!1336754) e!2379161)))

(declare-fun b!3849180 () Bool)

(assert (=> b!3849180 (= e!2379161 ((as const (Array Token!11746 Bool)) false))))

(declare-fun b!3849181 () Bool)

(assert (=> b!3849181 (= e!2379161 ((_ map or) (store ((as const (Array Token!11746 Bool)) false) (h!46210 lt!1336754) true) (content!6063 (t!311335 lt!1336754))))))

(assert (= (and d!1141039 c!670356) b!3849180))

(assert (= (and d!1141039 (not c!670356)) b!3849181))

(declare-fun m!4403905 () Bool)

(assert (=> b!3849181 m!4403905))

(declare-fun m!4403907 () Bool)

(assert (=> b!3849181 m!4403907))

(assert (=> d!1141001 d!1141039))

(declare-fun d!1141041 () Bool)

(declare-fun c!670357 () Bool)

(assert (=> d!1141041 (= c!670357 ((_ is Nil!40790) (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790)))))

(declare-fun e!2379162 () (InoxSet Token!11746))

(assert (=> d!1141041 (= (content!6063 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790)) e!2379162)))

(declare-fun b!3849182 () Bool)

(assert (=> b!3849182 (= e!2379162 ((as const (Array Token!11746 Bool)) false))))

(declare-fun b!3849183 () Bool)

(assert (=> b!3849183 (= e!2379162 ((_ map or) (store ((as const (Array Token!11746 Bool)) false) (h!46210 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790)) true) (content!6063 (t!311335 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790)))))))

(assert (= (and d!1141041 c!670357) b!3849182))

(assert (= (and d!1141041 (not c!670357)) b!3849183))

(declare-fun m!4403909 () Bool)

(assert (=> b!3849183 m!4403909))

(declare-fun m!4403911 () Bool)

(assert (=> b!3849183 m!4403911))

(assert (=> d!1141001 d!1141041))

(declare-fun d!1141043 () Bool)

(declare-fun c!670358 () Bool)

(assert (=> d!1141043 (= c!670358 ((_ is Nil!40790) (_1!23121 lt!1336607)))))

(declare-fun e!2379163 () (InoxSet Token!11746))

(assert (=> d!1141043 (= (content!6063 (_1!23121 lt!1336607)) e!2379163)))

(declare-fun b!3849184 () Bool)

(assert (=> b!3849184 (= e!2379163 ((as const (Array Token!11746 Bool)) false))))

(declare-fun b!3849185 () Bool)

(assert (=> b!3849185 (= e!2379163 ((_ map or) (store ((as const (Array Token!11746 Bool)) false) (h!46210 (_1!23121 lt!1336607)) true) (content!6063 (t!311335 (_1!23121 lt!1336607)))))))

(assert (= (and d!1141043 c!670358) b!3849184))

(assert (= (and d!1141043 (not c!670358)) b!3849185))

(declare-fun m!4403913 () Bool)

(assert (=> b!3849185 m!4403913))

(declare-fun m!4403915 () Bool)

(assert (=> b!3849185 m!4403915))

(assert (=> d!1141001 d!1141043))

(declare-fun d!1141045 () Bool)

(declare-fun lt!1336782 () Int)

(assert (=> d!1141045 (>= lt!1336782 0)))

(declare-fun e!2379164 () Int)

(assert (=> d!1141045 (= lt!1336782 e!2379164)))

(declare-fun c!670359 () Bool)

(assert (=> d!1141045 (= c!670359 ((_ is Nil!40788) (t!311333 suffix!1176)))))

(assert (=> d!1141045 (= (size!30680 (t!311333 suffix!1176)) lt!1336782)))

(declare-fun b!3849186 () Bool)

(assert (=> b!3849186 (= e!2379164 0)))

(declare-fun b!3849187 () Bool)

(assert (=> b!3849187 (= e!2379164 (+ 1 (size!30680 (t!311333 (t!311333 suffix!1176)))))))

(assert (= (and d!1141045 c!670359) b!3849186))

(assert (= (and d!1141045 (not c!670359)) b!3849187))

(declare-fun m!4403917 () Bool)

(assert (=> b!3849187 m!4403917))

(assert (=> b!3849037 d!1141045))

(declare-fun d!1141047 () Bool)

(assert (=> d!1141047 (= (list!15180 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72)))) (list!15182 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72))))))))

(declare-fun bs!582771 () Bool)

(assert (= bs!582771 d!1141047))

(declare-fun m!4403919 () Bool)

(assert (=> bs!582771 m!4403919))

(assert (=> b!3849058 d!1141047))

(declare-fun b!3849198 () Bool)

(declare-fun e!2379170 () List!40912)

(declare-fun list!15183 (IArray!25035) List!40912)

(assert (=> b!3849198 (= e!2379170 (list!15183 (xs!15821 (c!670247 (charsOf!4132 (_1!23122 (v!39013 lt!1336591)))))))))

(declare-fun b!3849196 () Bool)

(declare-fun e!2379169 () List!40912)

(assert (=> b!3849196 (= e!2379169 Nil!40788)))

(declare-fun d!1141049 () Bool)

(declare-fun c!670364 () Bool)

(assert (=> d!1141049 (= c!670364 ((_ is Empty!12515) (c!670247 (charsOf!4132 (_1!23122 (v!39013 lt!1336591))))))))

(assert (=> d!1141049 (= (list!15182 (c!670247 (charsOf!4132 (_1!23122 (v!39013 lt!1336591))))) e!2379169)))

(declare-fun b!3849199 () Bool)

(assert (=> b!3849199 (= e!2379170 (++!10365 (list!15182 (left!31461 (c!670247 (charsOf!4132 (_1!23122 (v!39013 lt!1336591)))))) (list!15182 (right!31791 (c!670247 (charsOf!4132 (_1!23122 (v!39013 lt!1336591))))))))))

(declare-fun b!3849197 () Bool)

(assert (=> b!3849197 (= e!2379169 e!2379170)))

(declare-fun c!670365 () Bool)

(assert (=> b!3849197 (= c!670365 ((_ is Leaf!19374) (c!670247 (charsOf!4132 (_1!23122 (v!39013 lt!1336591))))))))

(assert (= (and d!1141049 c!670364) b!3849196))

(assert (= (and d!1141049 (not c!670364)) b!3849197))

(assert (= (and b!3849197 c!670365) b!3849198))

(assert (= (and b!3849197 (not c!670365)) b!3849199))

(declare-fun m!4403921 () Bool)

(assert (=> b!3849198 m!4403921))

(declare-fun m!4403923 () Bool)

(assert (=> b!3849199 m!4403923))

(declare-fun m!4403925 () Bool)

(assert (=> b!3849199 m!4403925))

(assert (=> b!3849199 m!4403923))

(assert (=> b!3849199 m!4403925))

(declare-fun m!4403927 () Bool)

(assert (=> b!3849199 m!4403927))

(assert (=> d!1141017 d!1141049))

(declare-fun d!1141051 () Bool)

(assert (=> d!1141051 (= (get!13496 lt!1336693) (v!39013 lt!1336693))))

(assert (=> b!3848850 d!1141051))

(declare-fun b!3849200 () Bool)

(declare-fun e!2379171 () Bool)

(declare-fun lt!1336784 () tuple2!39974)

(assert (=> b!3849200 (= e!2379171 (= (_2!23121 lt!1336784) (_2!23122 (v!39013 lt!1336769))))))

(declare-fun d!1141053 () Bool)

(assert (=> d!1141053 e!2379171))

(declare-fun c!670367 () Bool)

(assert (=> d!1141053 (= c!670367 (> (size!30684 (_1!23121 lt!1336784)) 0))))

(declare-fun e!2379173 () tuple2!39974)

(assert (=> d!1141053 (= lt!1336784 e!2379173)))

(declare-fun c!670366 () Bool)

(declare-fun lt!1336785 () Option!8722)

(assert (=> d!1141053 (= c!670366 ((_ is Some!8721) lt!1336785))))

(assert (=> d!1141053 (= lt!1336785 (maxPrefix!3197 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336769))))))

(assert (=> d!1141053 (= (lexList!1661 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336769))) lt!1336784)))

(declare-fun b!3849201 () Bool)

(declare-fun e!2379172 () Bool)

(assert (=> b!3849201 (= e!2379171 e!2379172)))

(declare-fun res!1558307 () Bool)

(assert (=> b!3849201 (= res!1558307 (< (size!30680 (_2!23121 lt!1336784)) (size!30680 (_2!23122 (v!39013 lt!1336769)))))))

(assert (=> b!3849201 (=> (not res!1558307) (not e!2379172))))

(declare-fun b!3849202 () Bool)

(declare-fun lt!1336783 () tuple2!39974)

(assert (=> b!3849202 (= e!2379173 (tuple2!39975 (Cons!40790 (_1!23122 (v!39013 lt!1336785)) (_1!23121 lt!1336783)) (_2!23121 lt!1336783)))))

(assert (=> b!3849202 (= lt!1336783 (lexList!1661 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336785))))))

(declare-fun b!3849203 () Bool)

(assert (=> b!3849203 (= e!2379172 (not (isEmpty!24138 (_1!23121 lt!1336784))))))

(declare-fun b!3849204 () Bool)

(assert (=> b!3849204 (= e!2379173 (tuple2!39975 Nil!40790 (_2!23122 (v!39013 lt!1336769))))))

(assert (= (and d!1141053 c!670366) b!3849202))

(assert (= (and d!1141053 (not c!670366)) b!3849204))

(assert (= (and d!1141053 c!670367) b!3849201))

(assert (= (and d!1141053 (not c!670367)) b!3849200))

(assert (= (and b!3849201 res!1558307) b!3849203))

(declare-fun m!4403929 () Bool)

(assert (=> d!1141053 m!4403929))

(declare-fun m!4403931 () Bool)

(assert (=> d!1141053 m!4403931))

(declare-fun m!4403933 () Bool)

(assert (=> b!3849201 m!4403933))

(declare-fun m!4403935 () Bool)

(assert (=> b!3849201 m!4403935))

(declare-fun m!4403937 () Bool)

(assert (=> b!3849202 m!4403937))

(declare-fun m!4403939 () Bool)

(assert (=> b!3849203 m!4403939))

(assert (=> b!3849082 d!1141053))

(declare-fun d!1141055 () Bool)

(declare-fun res!1558308 () Bool)

(declare-fun e!2379174 () Bool)

(assert (=> d!1141055 (=> (not res!1558308) (not e!2379174))))

(assert (=> d!1141055 (= res!1558308 (not (isEmpty!24136 (originalCharacters!6904 (h!46210 (t!311335 prefixTokens!80))))))))

(assert (=> d!1141055 (= (inv!54931 (h!46210 (t!311335 prefixTokens!80))) e!2379174)))

(declare-fun b!3849205 () Bool)

(declare-fun res!1558309 () Bool)

(assert (=> b!3849205 (=> (not res!1558309) (not e!2379174))))

(assert (=> b!3849205 (= res!1558309 (= (originalCharacters!6904 (h!46210 (t!311335 prefixTokens!80))) (list!15180 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (value!200298 (h!46210 (t!311335 prefixTokens!80)))))))))

(declare-fun b!3849206 () Bool)

(assert (=> b!3849206 (= e!2379174 (= (size!30679 (h!46210 (t!311335 prefixTokens!80))) (size!30680 (originalCharacters!6904 (h!46210 (t!311335 prefixTokens!80))))))))

(assert (= (and d!1141055 res!1558308) b!3849205))

(assert (= (and b!3849205 res!1558309) b!3849206))

(declare-fun b_lambda!112491 () Bool)

(assert (=> (not b_lambda!112491) (not b!3849205)))

(declare-fun tb!221825 () Bool)

(declare-fun t!311437 () Bool)

(assert (=> (and b!3849145 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))) t!311437) tb!221825))

(declare-fun b!3849207 () Bool)

(declare-fun e!2379175 () Bool)

(declare-fun tp!1166755 () Bool)

(assert (=> b!3849207 (= e!2379175 (and (inv!54935 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (value!200298 (h!46210 (t!311335 prefixTokens!80)))))) tp!1166755))))

(declare-fun result!270334 () Bool)

(assert (=> tb!221825 (= result!270334 (and (inv!54936 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (value!200298 (h!46210 (t!311335 prefixTokens!80))))) e!2379175))))

(assert (= tb!221825 b!3849207))

(declare-fun m!4403941 () Bool)

(assert (=> b!3849207 m!4403941))

(declare-fun m!4403943 () Bool)

(assert (=> tb!221825 m!4403943))

(assert (=> b!3849205 t!311437))

(declare-fun b_and!287295 () Bool)

(assert (= b_and!287285 (and (=> t!311437 result!270334) b_and!287295)))

(declare-fun t!311439 () Bool)

(declare-fun tb!221827 () Bool)

(assert (=> (and b!3849160 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))) t!311439) tb!221827))

(declare-fun result!270336 () Bool)

(assert (= result!270336 result!270334))

(assert (=> b!3849205 t!311439))

(declare-fun b_and!287297 () Bool)

(assert (= b_and!287289 (and (=> t!311439 result!270336) b_and!287297)))

(declare-fun t!311441 () Bool)

(declare-fun tb!221829 () Bool)

(assert (=> (and b!3849164 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))) t!311441) tb!221829))

(declare-fun result!270338 () Bool)

(assert (= result!270338 result!270334))

(assert (=> b!3849205 t!311441))

(declare-fun b_and!287299 () Bool)

(assert (= b_and!287293 (and (=> t!311441 result!270338) b_and!287299)))

(declare-fun t!311443 () Bool)

(declare-fun tb!221831 () Bool)

(assert (=> (and b!3848559 (= (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))) t!311443) tb!221831))

(declare-fun result!270340 () Bool)

(assert (= result!270340 result!270334))

(assert (=> b!3849205 t!311443))

(declare-fun b_and!287301 () Bool)

(assert (= b_and!287271 (and (=> t!311443 result!270340) b_and!287301)))

(declare-fun tb!221833 () Bool)

(declare-fun t!311445 () Bool)

(assert (=> (and b!3848568 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))) t!311445) tb!221833))

(declare-fun result!270342 () Bool)

(assert (= result!270342 result!270334))

(assert (=> b!3849205 t!311445))

(declare-fun b_and!287303 () Bool)

(assert (= b_and!287275 (and (=> t!311445 result!270342) b_and!287303)))

(declare-fun t!311447 () Bool)

(declare-fun tb!221835 () Bool)

(assert (=> (and b!3848565 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))) t!311447) tb!221835))

(declare-fun result!270344 () Bool)

(assert (= result!270344 result!270334))

(assert (=> b!3849205 t!311447))

(declare-fun b_and!287305 () Bool)

(assert (= b_and!287273 (and (=> t!311447 result!270344) b_and!287305)))

(declare-fun m!4403945 () Bool)

(assert (=> d!1141055 m!4403945))

(declare-fun m!4403947 () Bool)

(assert (=> b!3849205 m!4403947))

(assert (=> b!3849205 m!4403947))

(declare-fun m!4403949 () Bool)

(assert (=> b!3849205 m!4403949))

(declare-fun m!4403951 () Bool)

(assert (=> b!3849206 m!4403951))

(assert (=> b!3849157 d!1141055))

(declare-fun d!1141057 () Bool)

(declare-fun nullableFct!1111 (Regex!11209) Bool)

(assert (=> d!1141057 (= (nullable!3899 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (nullableFct!1111 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(declare-fun bs!582772 () Bool)

(assert (= bs!582772 d!1141057))

(declare-fun m!4403953 () Bool)

(assert (=> bs!582772 m!4403953))

(assert (=> b!3849095 d!1141057))

(declare-fun b!3849208 () Bool)

(declare-fun e!2379176 () Bool)

(assert (=> b!3849208 (= e!2379176 (not (= (head!8094 (tail!5821 lt!1336596)) (c!670246 (derivativeStep!3397 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (head!8094 lt!1336596))))))))

(declare-fun b!3849209 () Bool)

(declare-fun e!2379178 () Bool)

(assert (=> b!3849209 (= e!2379178 (= (head!8094 (tail!5821 lt!1336596)) (c!670246 (derivativeStep!3397 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (head!8094 lt!1336596)))))))

(declare-fun b!3849210 () Bool)

(declare-fun e!2379179 () Bool)

(assert (=> b!3849210 (= e!2379179 (nullable!3899 (derivativeStep!3397 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (head!8094 lt!1336596))))))

(declare-fun b!3849211 () Bool)

(declare-fun e!2379177 () Bool)

(declare-fun lt!1336786 () Bool)

(assert (=> b!3849211 (= e!2379177 (not lt!1336786))))

(declare-fun b!3849212 () Bool)

(declare-fun e!2379181 () Bool)

(assert (=> b!3849212 (= e!2379181 e!2379176)))

(declare-fun res!1558316 () Bool)

(assert (=> b!3849212 (=> res!1558316 e!2379176)))

(declare-fun call!282121 () Bool)

(assert (=> b!3849212 (= res!1558316 call!282121)))

(declare-fun b!3849213 () Bool)

(declare-fun res!1558310 () Bool)

(assert (=> b!3849213 (=> (not res!1558310) (not e!2379178))))

(assert (=> b!3849213 (= res!1558310 (not call!282121))))

(declare-fun b!3849214 () Bool)

(declare-fun e!2379180 () Bool)

(assert (=> b!3849214 (= e!2379180 e!2379177)))

(declare-fun c!670370 () Bool)

(assert (=> b!3849214 (= c!670370 ((_ is EmptyLang!11209) (derivativeStep!3397 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (head!8094 lt!1336596))))))

(declare-fun b!3849215 () Bool)

(assert (=> b!3849215 (= e!2379180 (= lt!1336786 call!282121))))

(declare-fun d!1141059 () Bool)

(assert (=> d!1141059 e!2379180))

(declare-fun c!670368 () Bool)

(assert (=> d!1141059 (= c!670368 ((_ is EmptyExpr!11209) (derivativeStep!3397 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (head!8094 lt!1336596))))))

(assert (=> d!1141059 (= lt!1336786 e!2379179)))

(declare-fun c!670369 () Bool)

(assert (=> d!1141059 (= c!670369 (isEmpty!24136 (tail!5821 lt!1336596)))))

(assert (=> d!1141059 (validRegex!5098 (derivativeStep!3397 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (head!8094 lt!1336596)))))

(assert (=> d!1141059 (= (matchR!5356 (derivativeStep!3397 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (head!8094 lt!1336596)) (tail!5821 lt!1336596)) lt!1336786)))

(declare-fun b!3849216 () Bool)

(declare-fun res!1558315 () Bool)

(declare-fun e!2379182 () Bool)

(assert (=> b!3849216 (=> res!1558315 e!2379182)))

(assert (=> b!3849216 (= res!1558315 e!2379178)))

(declare-fun res!1558317 () Bool)

(assert (=> b!3849216 (=> (not res!1558317) (not e!2379178))))

(assert (=> b!3849216 (= res!1558317 lt!1336786)))

(declare-fun bm!282116 () Bool)

(assert (=> bm!282116 (= call!282121 (isEmpty!24136 (tail!5821 lt!1336596)))))

(declare-fun b!3849217 () Bool)

(declare-fun res!1558312 () Bool)

(assert (=> b!3849217 (=> (not res!1558312) (not e!2379178))))

(assert (=> b!3849217 (= res!1558312 (isEmpty!24136 (tail!5821 (tail!5821 lt!1336596))))))

(declare-fun b!3849218 () Bool)

(declare-fun res!1558311 () Bool)

(assert (=> b!3849218 (=> res!1558311 e!2379182)))

(assert (=> b!3849218 (= res!1558311 (not ((_ is ElementMatch!11209) (derivativeStep!3397 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (head!8094 lt!1336596)))))))

(assert (=> b!3849218 (= e!2379177 e!2379182)))

(declare-fun b!3849219 () Bool)

(declare-fun res!1558313 () Bool)

(assert (=> b!3849219 (=> res!1558313 e!2379176)))

(assert (=> b!3849219 (= res!1558313 (not (isEmpty!24136 (tail!5821 (tail!5821 lt!1336596)))))))

(declare-fun b!3849220 () Bool)

(assert (=> b!3849220 (= e!2379182 e!2379181)))

(declare-fun res!1558314 () Bool)

(assert (=> b!3849220 (=> (not res!1558314) (not e!2379181))))

(assert (=> b!3849220 (= res!1558314 (not lt!1336786))))

(declare-fun b!3849221 () Bool)

(assert (=> b!3849221 (= e!2379179 (matchR!5356 (derivativeStep!3397 (derivativeStep!3397 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (head!8094 lt!1336596)) (head!8094 (tail!5821 lt!1336596))) (tail!5821 (tail!5821 lt!1336596))))))

(assert (= (and d!1141059 c!670369) b!3849210))

(assert (= (and d!1141059 (not c!670369)) b!3849221))

(assert (= (and d!1141059 c!670368) b!3849215))

(assert (= (and d!1141059 (not c!670368)) b!3849214))

(assert (= (and b!3849214 c!670370) b!3849211))

(assert (= (and b!3849214 (not c!670370)) b!3849218))

(assert (= (and b!3849218 (not res!1558311)) b!3849216))

(assert (= (and b!3849216 res!1558317) b!3849213))

(assert (= (and b!3849213 res!1558310) b!3849217))

(assert (= (and b!3849217 res!1558312) b!3849209))

(assert (= (and b!3849216 (not res!1558315)) b!3849220))

(assert (= (and b!3849220 res!1558314) b!3849212))

(assert (= (and b!3849212 (not res!1558316)) b!3849219))

(assert (= (and b!3849219 (not res!1558313)) b!3849208))

(assert (= (or b!3849215 b!3849212 b!3849213) bm!282116))

(assert (=> d!1141059 m!4403381))

(assert (=> d!1141059 m!4403383))

(assert (=> d!1141059 m!4403387))

(declare-fun m!4403955 () Bool)

(assert (=> d!1141059 m!4403955))

(assert (=> b!3849219 m!4403381))

(declare-fun m!4403957 () Bool)

(assert (=> b!3849219 m!4403957))

(assert (=> b!3849219 m!4403957))

(declare-fun m!4403959 () Bool)

(assert (=> b!3849219 m!4403959))

(assert (=> b!3849208 m!4403381))

(declare-fun m!4403961 () Bool)

(assert (=> b!3849208 m!4403961))

(assert (=> b!3849217 m!4403381))

(assert (=> b!3849217 m!4403957))

(assert (=> b!3849217 m!4403957))

(assert (=> b!3849217 m!4403959))

(assert (=> b!3849221 m!4403381))

(assert (=> b!3849221 m!4403961))

(assert (=> b!3849221 m!4403387))

(assert (=> b!3849221 m!4403961))

(declare-fun m!4403963 () Bool)

(assert (=> b!3849221 m!4403963))

(assert (=> b!3849221 m!4403381))

(assert (=> b!3849221 m!4403957))

(assert (=> b!3849221 m!4403963))

(assert (=> b!3849221 m!4403957))

(declare-fun m!4403965 () Bool)

(assert (=> b!3849221 m!4403965))

(assert (=> bm!282116 m!4403381))

(assert (=> bm!282116 m!4403383))

(assert (=> b!3849209 m!4403381))

(assert (=> b!3849209 m!4403961))

(assert (=> b!3849210 m!4403387))

(declare-fun m!4403967 () Bool)

(assert (=> b!3849210 m!4403967))

(assert (=> b!3848695 d!1141059))

(declare-fun b!3849242 () Bool)

(declare-fun e!2379194 () Regex!11209)

(declare-fun e!2379196 () Regex!11209)

(assert (=> b!3849242 (= e!2379194 e!2379196)))

(declare-fun c!670383 () Bool)

(assert (=> b!3849242 (= c!670383 ((_ is Star!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(declare-fun b!3849243 () Bool)

(declare-fun e!2379197 () Regex!11209)

(declare-fun e!2379195 () Regex!11209)

(assert (=> b!3849243 (= e!2379197 e!2379195)))

(declare-fun c!670385 () Bool)

(assert (=> b!3849243 (= c!670385 ((_ is ElementMatch!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(declare-fun b!3849244 () Bool)

(declare-fun e!2379193 () Regex!11209)

(declare-fun call!282130 () Regex!11209)

(assert (=> b!3849244 (= e!2379193 (Union!11209 (Concat!17744 call!282130 (regTwo!22930 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) EmptyLang!11209))))

(declare-fun call!282131 () Regex!11209)

(declare-fun b!3849245 () Bool)

(assert (=> b!3849245 (= e!2379193 (Union!11209 (Concat!17744 call!282130 (regTwo!22930 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) call!282131))))

(declare-fun b!3849246 () Bool)

(declare-fun c!670384 () Bool)

(assert (=> b!3849246 (= c!670384 ((_ is Union!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(assert (=> b!3849246 (= e!2379195 e!2379194)))

(declare-fun bm!282125 () Bool)

(declare-fun call!282132 () Regex!11209)

(declare-fun call!282133 () Regex!11209)

(assert (=> bm!282125 (= call!282132 call!282133)))

(declare-fun b!3849247 () Bool)

(declare-fun c!670381 () Bool)

(assert (=> b!3849247 (= c!670381 (nullable!3899 (regOne!22930 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))))

(assert (=> b!3849247 (= e!2379196 e!2379193)))

(declare-fun d!1141061 () Bool)

(declare-fun lt!1336789 () Regex!11209)

(assert (=> d!1141061 (validRegex!5098 lt!1336789)))

(assert (=> d!1141061 (= lt!1336789 e!2379197)))

(declare-fun c!670382 () Bool)

(assert (=> d!1141061 (= c!670382 (or ((_ is EmptyExpr!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) ((_ is EmptyLang!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))))

(assert (=> d!1141061 (validRegex!5098 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))

(assert (=> d!1141061 (= (derivativeStep!3397 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (head!8094 lt!1336596)) lt!1336789)))

(declare-fun bm!282126 () Bool)

(assert (=> bm!282126 (= call!282133 (derivativeStep!3397 (ite c!670384 (regOne!22931 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (ite c!670383 (reg!11538 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (regOne!22930 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (head!8094 lt!1336596)))))

(declare-fun bm!282127 () Bool)

(assert (=> bm!282127 (= call!282130 call!282132)))

(declare-fun b!3849248 () Bool)

(assert (=> b!3849248 (= e!2379197 EmptyLang!11209)))

(declare-fun b!3849249 () Bool)

(assert (=> b!3849249 (= e!2379195 (ite (= (head!8094 lt!1336596) (c!670246 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) EmptyExpr!11209 EmptyLang!11209))))

(declare-fun b!3849250 () Bool)

(assert (=> b!3849250 (= e!2379194 (Union!11209 call!282133 call!282131))))

(declare-fun bm!282128 () Bool)

(assert (=> bm!282128 (= call!282131 (derivativeStep!3397 (ite c!670384 (regTwo!22931 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (regTwo!22930 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) (head!8094 lt!1336596)))))

(declare-fun b!3849251 () Bool)

(assert (=> b!3849251 (= e!2379196 (Concat!17744 call!282132 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(assert (= (and d!1141061 c!670382) b!3849248))

(assert (= (and d!1141061 (not c!670382)) b!3849243))

(assert (= (and b!3849243 c!670385) b!3849249))

(assert (= (and b!3849243 (not c!670385)) b!3849246))

(assert (= (and b!3849246 c!670384) b!3849250))

(assert (= (and b!3849246 (not c!670384)) b!3849242))

(assert (= (and b!3849242 c!670383) b!3849251))

(assert (= (and b!3849242 (not c!670383)) b!3849247))

(assert (= (and b!3849247 c!670381) b!3849245))

(assert (= (and b!3849247 (not c!670381)) b!3849244))

(assert (= (or b!3849245 b!3849244) bm!282127))

(assert (= (or b!3849251 bm!282127) bm!282125))

(assert (= (or b!3849250 b!3849245) bm!282128))

(assert (= (or b!3849250 bm!282125) bm!282126))

(declare-fun m!4403969 () Bool)

(assert (=> b!3849247 m!4403969))

(declare-fun m!4403971 () Bool)

(assert (=> d!1141061 m!4403971))

(assert (=> d!1141061 m!4403379))

(assert (=> bm!282126 m!4403385))

(declare-fun m!4403973 () Bool)

(assert (=> bm!282126 m!4403973))

(assert (=> bm!282128 m!4403385))

(declare-fun m!4403975 () Bool)

(assert (=> bm!282128 m!4403975))

(assert (=> b!3848695 d!1141061))

(declare-fun d!1141063 () Bool)

(assert (=> d!1141063 (= (head!8094 lt!1336596) (h!46208 lt!1336596))))

(assert (=> b!3848695 d!1141063))

(declare-fun d!1141065 () Bool)

(assert (=> d!1141065 (= (tail!5821 lt!1336596) (t!311333 lt!1336596))))

(assert (=> b!3848695 d!1141065))

(declare-fun d!1141067 () Bool)

(assert (=> d!1141067 (= (isEmpty!24140 lt!1336693) (not ((_ is Some!8721) lt!1336693)))))

(assert (=> d!1140893 d!1141067))

(declare-fun d!1141069 () Bool)

(assert (=> d!1141069 (= (isEmpty!24136 (_1!23123 lt!1336691)) ((_ is Nil!40788) (_1!23123 lt!1336691)))))

(assert (=> d!1140893 d!1141069))

(declare-fun d!1141071 () Bool)

(declare-fun lt!1336812 () tuple2!39978)

(assert (=> d!1141071 (= (++!10365 (_1!23123 lt!1336812) (_2!23123 lt!1336812)) lt!1336601)))

(declare-fun sizeTr!235 (List!40912 Int) Int)

(assert (=> d!1141071 (= lt!1336812 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 0 lt!1336601 lt!1336601 (sizeTr!235 lt!1336601 0)))))

(declare-fun lt!1336809 () Unit!58460)

(declare-fun lt!1336810 () Unit!58460)

(assert (=> d!1141071 (= lt!1336809 lt!1336810)))

(declare-fun lt!1336806 () List!40912)

(declare-fun lt!1336813 () Int)

(assert (=> d!1141071 (= (sizeTr!235 lt!1336806 lt!1336813) (+ (size!30680 lt!1336806) lt!1336813))))

(declare-fun lemmaSizeTrEqualsSize!234 (List!40912 Int) Unit!58460)

(assert (=> d!1141071 (= lt!1336810 (lemmaSizeTrEqualsSize!234 lt!1336806 lt!1336813))))

(assert (=> d!1141071 (= lt!1336813 0)))

(assert (=> d!1141071 (= lt!1336806 Nil!40788)))

(declare-fun lt!1336811 () Unit!58460)

(declare-fun lt!1336807 () Unit!58460)

(assert (=> d!1141071 (= lt!1336811 lt!1336807)))

(declare-fun lt!1336808 () Int)

(assert (=> d!1141071 (= (sizeTr!235 lt!1336601 lt!1336808) (+ (size!30680 lt!1336601) lt!1336808))))

(assert (=> d!1141071 (= lt!1336807 (lemmaSizeTrEqualsSize!234 lt!1336601 lt!1336808))))

(assert (=> d!1141071 (= lt!1336808 0)))

(assert (=> d!1141071 (validRegex!5098 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))

(assert (=> d!1141071 (= (findLongestMatch!1078 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) lt!1336601) lt!1336812)))

(declare-fun bs!582773 () Bool)

(assert (= bs!582773 d!1141071))

(declare-fun m!4403977 () Bool)

(assert (=> bs!582773 m!4403977))

(declare-fun m!4403979 () Bool)

(assert (=> bs!582773 m!4403979))

(declare-fun m!4403981 () Bool)

(assert (=> bs!582773 m!4403981))

(declare-fun m!4403983 () Bool)

(assert (=> bs!582773 m!4403983))

(assert (=> bs!582773 m!4403251))

(declare-fun m!4403985 () Bool)

(assert (=> bs!582773 m!4403985))

(assert (=> bs!582773 m!4403379))

(declare-fun m!4403987 () Bool)

(assert (=> bs!582773 m!4403987))

(assert (=> bs!582773 m!4403983))

(declare-fun m!4403989 () Bool)

(assert (=> bs!582773 m!4403989))

(declare-fun m!4403991 () Bool)

(assert (=> bs!582773 m!4403991))

(assert (=> d!1140893 d!1141071))

(assert (=> d!1140893 d!1141025))

(declare-fun d!1141073 () Bool)

(declare-fun lt!1336814 () Int)

(assert (=> d!1141073 (>= lt!1336814 0)))

(declare-fun e!2379198 () Int)

(assert (=> d!1141073 (= lt!1336814 e!2379198)))

(declare-fun c!670386 () Bool)

(assert (=> d!1141073 (= c!670386 ((_ is Nil!40788) (originalCharacters!6904 (h!46210 prefixTokens!80))))))

(assert (=> d!1141073 (= (size!30680 (originalCharacters!6904 (h!46210 prefixTokens!80))) lt!1336814)))

(declare-fun b!3849252 () Bool)

(assert (=> b!3849252 (= e!2379198 0)))

(declare-fun b!3849253 () Bool)

(assert (=> b!3849253 (= e!2379198 (+ 1 (size!30680 (t!311333 (originalCharacters!6904 (h!46210 prefixTokens!80))))))))

(assert (= (and d!1141073 c!670386) b!3849252))

(assert (= (and d!1141073 (not c!670386)) b!3849253))

(declare-fun m!4403993 () Bool)

(assert (=> b!3849253 m!4403993))

(assert (=> b!3849052 d!1141073))

(declare-fun b!3849254 () Bool)

(declare-fun e!2379200 () List!40914)

(assert (=> b!3849254 (= e!2379200 (_1!23121 lt!1336607))))

(declare-fun b!3849255 () Bool)

(assert (=> b!3849255 (= e!2379200 (Cons!40790 (h!46210 (t!311335 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790))) (++!10366 (t!311335 (t!311335 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790))) (_1!23121 lt!1336607))))))

(declare-fun e!2379199 () Bool)

(declare-fun lt!1336815 () List!40914)

(declare-fun b!3849257 () Bool)

(assert (=> b!3849257 (= e!2379199 (or (not (= (_1!23121 lt!1336607) Nil!40790)) (= lt!1336815 (t!311335 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790)))))))

(declare-fun d!1141075 () Bool)

(assert (=> d!1141075 e!2379199))

(declare-fun res!1558319 () Bool)

(assert (=> d!1141075 (=> (not res!1558319) (not e!2379199))))

(assert (=> d!1141075 (= res!1558319 (= (content!6063 lt!1336815) ((_ map or) (content!6063 (t!311335 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790))) (content!6063 (_1!23121 lt!1336607)))))))

(assert (=> d!1141075 (= lt!1336815 e!2379200)))

(declare-fun c!670387 () Bool)

(assert (=> d!1141075 (= c!670387 ((_ is Nil!40790) (t!311335 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790))))))

(assert (=> d!1141075 (= (++!10366 (t!311335 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790)) (_1!23121 lt!1336607)) lt!1336815)))

(declare-fun b!3849256 () Bool)

(declare-fun res!1558318 () Bool)

(assert (=> b!3849256 (=> (not res!1558318) (not e!2379199))))

(assert (=> b!3849256 (= res!1558318 (= (size!30684 lt!1336815) (+ (size!30684 (t!311335 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790))) (size!30684 (_1!23121 lt!1336607)))))))

(assert (= (and d!1141075 c!670387) b!3849254))

(assert (= (and d!1141075 (not c!670387)) b!3849255))

(assert (= (and d!1141075 res!1558319) b!3849256))

(assert (= (and b!3849256 res!1558318) b!3849257))

(declare-fun m!4403995 () Bool)

(assert (=> b!3849255 m!4403995))

(declare-fun m!4403997 () Bool)

(assert (=> d!1141075 m!4403997))

(assert (=> d!1141075 m!4403911))

(assert (=> d!1141075 m!4403805))

(declare-fun m!4403999 () Bool)

(assert (=> b!3849256 m!4403999))

(declare-fun m!4404001 () Bool)

(assert (=> b!3849256 m!4404001))

(assert (=> b!3849256 m!4403811))

(assert (=> b!3849070 d!1141075))

(declare-fun d!1141077 () Bool)

(declare-fun lt!1336816 () Int)

(assert (=> d!1141077 (>= lt!1336816 0)))

(declare-fun e!2379201 () Int)

(assert (=> d!1141077 (= lt!1336816 e!2379201)))

(declare-fun c!670388 () Bool)

(assert (=> d!1141077 (= c!670388 ((_ is Nil!40788) (_2!23122 (get!13496 lt!1336728))))))

(assert (=> d!1141077 (= (size!30680 (_2!23122 (get!13496 lt!1336728))) lt!1336816)))

(declare-fun b!3849258 () Bool)

(assert (=> b!3849258 (= e!2379201 0)))

(declare-fun b!3849259 () Bool)

(assert (=> b!3849259 (= e!2379201 (+ 1 (size!30680 (t!311333 (_2!23122 (get!13496 lt!1336728))))))))

(assert (= (and d!1141077 c!670388) b!3849258))

(assert (= (and d!1141077 (not c!670388)) b!3849259))

(declare-fun m!4404003 () Bool)

(assert (=> b!3849259 m!4404003))

(assert (=> b!3848989 d!1141077))

(declare-fun d!1141079 () Bool)

(assert (=> d!1141079 (= (get!13496 lt!1336728) (v!39013 lt!1336728))))

(assert (=> b!3848989 d!1141079))

(assert (=> b!3848989 d!1140983))

(declare-fun d!1141081 () Bool)

(declare-fun charsToBigInt!1 (List!40913) Int)

(assert (=> d!1141081 (= (inv!17 (value!200298 (h!46210 prefixTokens!80))) (= (charsToBigInt!1 (text!46186 (value!200298 (h!46210 prefixTokens!80)))) (value!200290 (value!200298 (h!46210 prefixTokens!80)))))))

(declare-fun bs!582774 () Bool)

(assert (= bs!582774 d!1141081))

(declare-fun m!4404005 () Bool)

(assert (=> bs!582774 m!4404005))

(assert (=> b!3848606 d!1141081))

(declare-fun d!1141083 () Bool)

(assert (=> d!1141083 true))

(declare-fun lambda!126120 () Int)

(declare-fun order!22149 () Int)

(declare-fun order!22151 () Int)

(declare-fun dynLambda!17603 (Int Int) Int)

(declare-fun dynLambda!17604 (Int Int) Int)

(assert (=> d!1141083 (< (dynLambda!17603 order!22149 (toValue!8720 (transformation!6304 (h!46211 rules!2768)))) (dynLambda!17604 order!22151 lambda!126120))))

(declare-fun Forall2!1030 (Int) Bool)

(assert (=> d!1141083 (= (equivClasses!2598 (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toValue!8720 (transformation!6304 (h!46211 rules!2768)))) (Forall2!1030 lambda!126120))))

(declare-fun bs!582778 () Bool)

(assert (= bs!582778 d!1141083))

(declare-fun m!4404083 () Bool)

(assert (=> bs!582778 m!4404083))

(assert (=> b!3849061 d!1141083))

(declare-fun d!1141107 () Bool)

(declare-fun lt!1336914 () Int)

(assert (=> d!1141107 (>= lt!1336914 0)))

(declare-fun e!2379246 () Int)

(assert (=> d!1141107 (= lt!1336914 e!2379246)))

(declare-fun c!670417 () Bool)

(assert (=> d!1141107 (= c!670417 ((_ is Nil!40790) lt!1336743))))

(assert (=> d!1141107 (= (size!30684 lt!1336743) lt!1336914)))

(declare-fun b!3849343 () Bool)

(assert (=> b!3849343 (= e!2379246 0)))

(declare-fun b!3849344 () Bool)

(assert (=> b!3849344 (= e!2379246 (+ 1 (size!30684 (t!311335 lt!1336743))))))

(assert (= (and d!1141107 c!670417) b!3849343))

(assert (= (and d!1141107 (not c!670417)) b!3849344))

(declare-fun m!4404085 () Bool)

(assert (=> b!3849344 m!4404085))

(assert (=> b!3849022 d!1141107))

(declare-fun d!1141109 () Bool)

(declare-fun lt!1336923 () Int)

(assert (=> d!1141109 (>= lt!1336923 0)))

(declare-fun e!2379247 () Int)

(assert (=> d!1141109 (= lt!1336923 e!2379247)))

(declare-fun c!670418 () Bool)

(assert (=> d!1141109 (= c!670418 ((_ is Nil!40790) prefixTokens!80))))

(assert (=> d!1141109 (= (size!30684 prefixTokens!80) lt!1336923)))

(declare-fun b!3849345 () Bool)

(assert (=> b!3849345 (= e!2379247 0)))

(declare-fun b!3849346 () Bool)

(assert (=> b!3849346 (= e!2379247 (+ 1 (size!30684 (t!311335 prefixTokens!80))))))

(assert (= (and d!1141109 c!670418) b!3849345))

(assert (= (and d!1141109 (not c!670418)) b!3849346))

(declare-fun m!4404087 () Bool)

(assert (=> b!3849346 m!4404087))

(assert (=> b!3849022 d!1141109))

(declare-fun d!1141111 () Bool)

(declare-fun lt!1336924 () Int)

(assert (=> d!1141111 (>= lt!1336924 0)))

(declare-fun e!2379248 () Int)

(assert (=> d!1141111 (= lt!1336924 e!2379248)))

(declare-fun c!670419 () Bool)

(assert (=> d!1141111 (= c!670419 ((_ is Nil!40790) suffixTokens!72))))

(assert (=> d!1141111 (= (size!30684 suffixTokens!72) lt!1336924)))

(declare-fun b!3849347 () Bool)

(assert (=> b!3849347 (= e!2379248 0)))

(declare-fun b!3849348 () Bool)

(assert (=> b!3849348 (= e!2379248 (+ 1 (size!30684 (t!311335 suffixTokens!72))))))

(assert (= (and d!1141111 c!670419) b!3849347))

(assert (= (and d!1141111 (not c!670419)) b!3849348))

(declare-fun m!4404089 () Bool)

(assert (=> b!3849348 m!4404089))

(assert (=> b!3849022 d!1141111))

(assert (=> b!3848684 d!1141057))

(declare-fun d!1141113 () Bool)

(assert (=> d!1141113 (= (isDefined!6847 lt!1336728) (not (isEmpty!24140 lt!1336728)))))

(declare-fun bs!582779 () Bool)

(assert (= bs!582779 d!1141113))

(assert (=> bs!582779 m!4403685))

(assert (=> b!3848993 d!1141113))

(assert (=> b!3849108 d!1141063))

(declare-fun d!1141115 () Bool)

(assert (=> d!1141115 (= (head!8094 lt!1336593) (h!46208 lt!1336593))))

(assert (=> b!3849108 d!1141115))

(declare-fun d!1141117 () Bool)

(declare-fun lt!1336925 () Int)

(assert (=> d!1141117 (>= lt!1336925 0)))

(declare-fun e!2379249 () Int)

(assert (=> d!1141117 (= lt!1336925 e!2379249)))

(declare-fun c!670420 () Bool)

(assert (=> d!1141117 (= c!670420 ((_ is Nil!40790) (_1!23121 lt!1336768)))))

(assert (=> d!1141117 (= (size!30684 (_1!23121 lt!1336768)) lt!1336925)))

(declare-fun b!3849349 () Bool)

(assert (=> b!3849349 (= e!2379249 0)))

(declare-fun b!3849350 () Bool)

(assert (=> b!3849350 (= e!2379249 (+ 1 (size!30684 (t!311335 (_1!23121 lt!1336768)))))))

(assert (= (and d!1141117 c!670420) b!3849349))

(assert (= (and d!1141117 (not c!670420)) b!3849350))

(declare-fun m!4404091 () Bool)

(assert (=> b!3849350 m!4404091))

(assert (=> d!1141013 d!1141117))

(declare-fun b!3849351 () Bool)

(declare-fun e!2379252 () Option!8722)

(declare-fun lt!1336929 () Option!8722)

(declare-fun lt!1336930 () Option!8722)

(assert (=> b!3849351 (= e!2379252 (ite (and ((_ is None!8721) lt!1336929) ((_ is None!8721) lt!1336930)) None!8721 (ite ((_ is None!8721) lt!1336930) lt!1336929 (ite ((_ is None!8721) lt!1336929) lt!1336930 (ite (>= (size!30679 (_1!23122 (v!39013 lt!1336929))) (size!30679 (_1!23122 (v!39013 lt!1336930)))) lt!1336929 lt!1336930)))))))

(declare-fun call!282159 () Option!8722)

(assert (=> b!3849351 (= lt!1336929 call!282159)))

(assert (=> b!3849351 (= lt!1336930 (maxPrefix!3197 thiss!20629 (t!311336 rules!2768) (_2!23122 (v!39013 lt!1336591))))))

(declare-fun b!3849352 () Bool)

(assert (=> b!3849352 (= e!2379252 call!282159)))

(declare-fun b!3849353 () Bool)

(declare-fun res!1558346 () Bool)

(declare-fun e!2379251 () Bool)

(assert (=> b!3849353 (=> (not res!1558346) (not e!2379251))))

(declare-fun lt!1336927 () Option!8722)

(assert (=> b!3849353 (= res!1558346 (< (size!30680 (_2!23122 (get!13496 lt!1336927))) (size!30680 (_2!23122 (v!39013 lt!1336591)))))))

(declare-fun b!3849354 () Bool)

(declare-fun res!1558347 () Bool)

(assert (=> b!3849354 (=> (not res!1558347) (not e!2379251))))

(assert (=> b!3849354 (= res!1558347 (= (++!10365 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336927)))) (_2!23122 (get!13496 lt!1336927))) (_2!23122 (v!39013 lt!1336591))))))

(declare-fun b!3849355 () Bool)

(declare-fun res!1558344 () Bool)

(assert (=> b!3849355 (=> (not res!1558344) (not e!2379251))))

(assert (=> b!3849355 (= res!1558344 (matchR!5356 (regex!6304 (rule!9154 (_1!23122 (get!13496 lt!1336927)))) (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336927))))))))

(declare-fun d!1141119 () Bool)

(declare-fun e!2379250 () Bool)

(assert (=> d!1141119 e!2379250))

(declare-fun res!1558341 () Bool)

(assert (=> d!1141119 (=> res!1558341 e!2379250)))

(assert (=> d!1141119 (= res!1558341 (isEmpty!24140 lt!1336927))))

(assert (=> d!1141119 (= lt!1336927 e!2379252)))

(declare-fun c!670421 () Bool)

(assert (=> d!1141119 (= c!670421 (and ((_ is Cons!40791) rules!2768) ((_ is Nil!40791) (t!311336 rules!2768))))))

(declare-fun lt!1336928 () Unit!58460)

(declare-fun lt!1336926 () Unit!58460)

(assert (=> d!1141119 (= lt!1336928 lt!1336926)))

(assert (=> d!1141119 (isPrefix!3403 (_2!23122 (v!39013 lt!1336591)) (_2!23122 (v!39013 lt!1336591)))))

(assert (=> d!1141119 (= lt!1336926 (lemmaIsPrefixRefl!2170 (_2!23122 (v!39013 lt!1336591)) (_2!23122 (v!39013 lt!1336591))))))

(assert (=> d!1141119 (rulesValidInductive!2238 thiss!20629 rules!2768)))

(assert (=> d!1141119 (= (maxPrefix!3197 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336591))) lt!1336927)))

(declare-fun bm!282154 () Bool)

(assert (=> bm!282154 (= call!282159 (maxPrefixOneRule!2279 thiss!20629 (h!46211 rules!2768) (_2!23122 (v!39013 lt!1336591))))))

(declare-fun b!3849356 () Bool)

(declare-fun res!1558343 () Bool)

(assert (=> b!3849356 (=> (not res!1558343) (not e!2379251))))

(assert (=> b!3849356 (= res!1558343 (= (value!200298 (_1!23122 (get!13496 lt!1336927))) (apply!9547 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336927)))) (seqFromList!4575 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336927)))))))))

(declare-fun b!3849357 () Bool)

(assert (=> b!3849357 (= e!2379250 e!2379251)))

(declare-fun res!1558345 () Bool)

(assert (=> b!3849357 (=> (not res!1558345) (not e!2379251))))

(assert (=> b!3849357 (= res!1558345 (isDefined!6847 lt!1336927))))

(declare-fun b!3849358 () Bool)

(declare-fun res!1558342 () Bool)

(assert (=> b!3849358 (=> (not res!1558342) (not e!2379251))))

(assert (=> b!3849358 (= res!1558342 (= (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336927)))) (originalCharacters!6904 (_1!23122 (get!13496 lt!1336927)))))))

(declare-fun b!3849359 () Bool)

(assert (=> b!3849359 (= e!2379251 (contains!8246 rules!2768 (rule!9154 (_1!23122 (get!13496 lt!1336927)))))))

(assert (= (and d!1141119 c!670421) b!3849352))

(assert (= (and d!1141119 (not c!670421)) b!3849351))

(assert (= (or b!3849352 b!3849351) bm!282154))

(assert (= (and d!1141119 (not res!1558341)) b!3849357))

(assert (= (and b!3849357 res!1558345) b!3849358))

(assert (= (and b!3849358 res!1558342) b!3849353))

(assert (= (and b!3849353 res!1558346) b!3849354))

(assert (= (and b!3849354 res!1558347) b!3849356))

(assert (= (and b!3849356 res!1558343) b!3849355))

(assert (= (and b!3849355 res!1558344) b!3849359))

(declare-fun m!4404109 () Bool)

(assert (=> b!3849356 m!4404109))

(declare-fun m!4404111 () Bool)

(assert (=> b!3849356 m!4404111))

(assert (=> b!3849356 m!4404111))

(declare-fun m!4404113 () Bool)

(assert (=> b!3849356 m!4404113))

(declare-fun m!4404115 () Bool)

(assert (=> d!1141119 m!4404115))

(declare-fun m!4404117 () Bool)

(assert (=> d!1141119 m!4404117))

(declare-fun m!4404119 () Bool)

(assert (=> d!1141119 m!4404119))

(assert (=> d!1141119 m!4403691))

(assert (=> b!3849359 m!4404109))

(declare-fun m!4404121 () Bool)

(assert (=> b!3849359 m!4404121))

(assert (=> b!3849354 m!4404109))

(declare-fun m!4404123 () Bool)

(assert (=> b!3849354 m!4404123))

(assert (=> b!3849354 m!4404123))

(declare-fun m!4404125 () Bool)

(assert (=> b!3849354 m!4404125))

(assert (=> b!3849354 m!4404125))

(declare-fun m!4404127 () Bool)

(assert (=> b!3849354 m!4404127))

(assert (=> b!3849353 m!4404109))

(declare-fun m!4404129 () Bool)

(assert (=> b!3849353 m!4404129))

(assert (=> b!3849353 m!4403293))

(declare-fun m!4404131 () Bool)

(assert (=> b!3849351 m!4404131))

(assert (=> b!3849358 m!4404109))

(assert (=> b!3849358 m!4404123))

(assert (=> b!3849358 m!4404123))

(assert (=> b!3849358 m!4404125))

(declare-fun m!4404133 () Bool)

(assert (=> bm!282154 m!4404133))

(assert (=> b!3849355 m!4404109))

(assert (=> b!3849355 m!4404123))

(assert (=> b!3849355 m!4404123))

(assert (=> b!3849355 m!4404125))

(assert (=> b!3849355 m!4404125))

(declare-fun m!4404135 () Bool)

(assert (=> b!3849355 m!4404135))

(declare-fun m!4404137 () Bool)

(assert (=> b!3849357 m!4404137))

(assert (=> d!1141013 d!1141119))

(declare-fun d!1141123 () Bool)

(declare-fun charsToBigInt!0 (List!40913 Int) Int)

(assert (=> d!1141123 (= (inv!15 (value!200298 (h!46210 suffixTokens!72))) (= (charsToBigInt!0 (text!46187 (value!200298 (h!46210 suffixTokens!72))) 0) (value!200293 (value!200298 (h!46210 suffixTokens!72)))))))

(declare-fun bs!582782 () Bool)

(assert (= bs!582782 d!1141123))

(declare-fun m!4404141 () Bool)

(assert (=> bs!582782 m!4404141))

(assert (=> b!3849068 d!1141123))

(declare-fun b!3849368 () Bool)

(declare-fun e!2379258 () List!40912)

(assert (=> b!3849368 (= e!2379258 (_2!23122 (v!39013 lt!1336591)))))

(declare-fun b!3849371 () Bool)

(declare-fun lt!1336939 () List!40912)

(declare-fun e!2379257 () Bool)

(assert (=> b!3849371 (= e!2379257 (or (not (= (_2!23122 (v!39013 lt!1336591)) Nil!40788)) (= lt!1336939 (t!311333 lt!1336596))))))

(declare-fun b!3849369 () Bool)

(assert (=> b!3849369 (= e!2379258 (Cons!40788 (h!46208 (t!311333 lt!1336596)) (++!10365 (t!311333 (t!311333 lt!1336596)) (_2!23122 (v!39013 lt!1336591)))))))

(declare-fun b!3849370 () Bool)

(declare-fun res!1558348 () Bool)

(assert (=> b!3849370 (=> (not res!1558348) (not e!2379257))))

(assert (=> b!3849370 (= res!1558348 (= (size!30680 lt!1336939) (+ (size!30680 (t!311333 lt!1336596)) (size!30680 (_2!23122 (v!39013 lt!1336591))))))))

(declare-fun d!1141129 () Bool)

(assert (=> d!1141129 e!2379257))

(declare-fun res!1558349 () Bool)

(assert (=> d!1141129 (=> (not res!1558349) (not e!2379257))))

(assert (=> d!1141129 (= res!1558349 (= (content!6064 lt!1336939) ((_ map or) (content!6064 (t!311333 lt!1336596)) (content!6064 (_2!23122 (v!39013 lt!1336591))))))))

(assert (=> d!1141129 (= lt!1336939 e!2379258)))

(declare-fun c!670426 () Bool)

(assert (=> d!1141129 (= c!670426 ((_ is Nil!40788) (t!311333 lt!1336596)))))

(assert (=> d!1141129 (= (++!10365 (t!311333 lt!1336596) (_2!23122 (v!39013 lt!1336591))) lt!1336939)))

(assert (= (and d!1141129 c!670426) b!3849368))

(assert (= (and d!1141129 (not c!670426)) b!3849369))

(assert (= (and d!1141129 res!1558349) b!3849370))

(assert (= (and b!3849370 res!1558348) b!3849371))

(declare-fun m!4404155 () Bool)

(assert (=> b!3849369 m!4404155))

(declare-fun m!4404157 () Bool)

(assert (=> b!3849370 m!4404157))

(assert (=> b!3849370 m!4403867))

(assert (=> b!3849370 m!4403293))

(declare-fun m!4404159 () Bool)

(assert (=> d!1141129 m!4404159))

(declare-fun m!4404161 () Bool)

(assert (=> d!1141129 m!4404161))

(assert (=> d!1141129 m!4403865))

(assert (=> b!3849088 d!1141129))

(declare-fun d!1141135 () Bool)

(declare-fun lt!1336941 () Int)

(assert (=> d!1141135 (>= lt!1336941 0)))

(declare-fun e!2379262 () Int)

(assert (=> d!1141135 (= lt!1336941 e!2379262)))

(declare-fun c!670429 () Bool)

(assert (=> d!1141135 (= c!670429 ((_ is Nil!40788) (_2!23121 lt!1336751)))))

(assert (=> d!1141135 (= (size!30680 (_2!23121 lt!1336751)) lt!1336941)))

(declare-fun b!3849378 () Bool)

(assert (=> b!3849378 (= e!2379262 0)))

(declare-fun b!3849379 () Bool)

(assert (=> b!3849379 (= e!2379262 (+ 1 (size!30680 (t!311333 (_2!23121 lt!1336751)))))))

(assert (= (and d!1141135 c!670429) b!3849378))

(assert (= (and d!1141135 (not c!670429)) b!3849379))

(declare-fun m!4404165 () Bool)

(assert (=> b!3849379 m!4404165))

(assert (=> b!3849043 d!1141135))

(assert (=> b!3849043 d!1140979))

(declare-fun b!3849380 () Bool)

(declare-fun e!2379264 () List!40912)

(assert (=> b!3849380 (= e!2379264 (_2!23122 (get!13496 lt!1336693)))))

(declare-fun b!3849383 () Bool)

(declare-fun e!2379263 () Bool)

(declare-fun lt!1336942 () List!40912)

(assert (=> b!3849383 (= e!2379263 (or (not (= (_2!23122 (get!13496 lt!1336693)) Nil!40788)) (= lt!1336942 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693)))))))))

(declare-fun b!3849381 () Bool)

(assert (=> b!3849381 (= e!2379264 (Cons!40788 (h!46208 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693))))) (++!10365 (t!311333 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693))))) (_2!23122 (get!13496 lt!1336693)))))))

(declare-fun b!3849382 () Bool)

(declare-fun res!1558352 () Bool)

(assert (=> b!3849382 (=> (not res!1558352) (not e!2379263))))

(assert (=> b!3849382 (= res!1558352 (= (size!30680 lt!1336942) (+ (size!30680 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693))))) (size!30680 (_2!23122 (get!13496 lt!1336693))))))))

(declare-fun d!1141137 () Bool)

(assert (=> d!1141137 e!2379263))

(declare-fun res!1558353 () Bool)

(assert (=> d!1141137 (=> (not res!1558353) (not e!2379263))))

(assert (=> d!1141137 (= res!1558353 (= (content!6064 lt!1336942) ((_ map or) (content!6064 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693))))) (content!6064 (_2!23122 (get!13496 lt!1336693))))))))

(assert (=> d!1141137 (= lt!1336942 e!2379264)))

(declare-fun c!670430 () Bool)

(assert (=> d!1141137 (= c!670430 ((_ is Nil!40788) (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693))))))))

(assert (=> d!1141137 (= (++!10365 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693)))) (_2!23122 (get!13496 lt!1336693))) lt!1336942)))

(assert (= (and d!1141137 c!670430) b!3849380))

(assert (= (and d!1141137 (not c!670430)) b!3849381))

(assert (= (and d!1141137 res!1558353) b!3849382))

(assert (= (and b!3849382 res!1558352) b!3849383))

(declare-fun m!4404173 () Bool)

(assert (=> b!3849381 m!4404173))

(declare-fun m!4404175 () Bool)

(assert (=> b!3849382 m!4404175))

(assert (=> b!3849382 m!4403529))

(declare-fun m!4404177 () Bool)

(assert (=> b!3849382 m!4404177))

(assert (=> b!3849382 m!4403543))

(declare-fun m!4404179 () Bool)

(assert (=> d!1141137 m!4404179))

(assert (=> d!1141137 m!4403529))

(declare-fun m!4404181 () Bool)

(assert (=> d!1141137 m!4404181))

(declare-fun m!4404183 () Bool)

(assert (=> d!1141137 m!4404183))

(assert (=> b!3848846 d!1141137))

(declare-fun d!1141141 () Bool)

(assert (=> d!1141141 (= (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693)))) (list!15182 (c!670247 (charsOf!4132 (_1!23122 (get!13496 lt!1336693))))))))

(declare-fun bs!582783 () Bool)

(assert (= bs!582783 d!1141141))

(declare-fun m!4404185 () Bool)

(assert (=> bs!582783 m!4404185))

(assert (=> b!3848846 d!1141141))

(declare-fun d!1141143 () Bool)

(declare-fun lt!1336943 () BalanceConc!24624)

(assert (=> d!1141143 (= (list!15180 lt!1336943) (originalCharacters!6904 (_1!23122 (get!13496 lt!1336693))))))

(assert (=> d!1141143 (= lt!1336943 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693))))) (value!200298 (_1!23122 (get!13496 lt!1336693)))))))

(assert (=> d!1141143 (= (charsOf!4132 (_1!23122 (get!13496 lt!1336693))) lt!1336943)))

(declare-fun b_lambda!112493 () Bool)

(assert (=> (not b_lambda!112493) (not d!1141143)))

(declare-fun tb!221837 () Bool)

(declare-fun t!311449 () Bool)

(assert (=> (and b!3848565 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311449) tb!221837))

(declare-fun b!3849388 () Bool)

(declare-fun e!2379267 () Bool)

(declare-fun tp!1166756 () Bool)

(assert (=> b!3849388 (= e!2379267 (and (inv!54935 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693))))) (value!200298 (_1!23122 (get!13496 lt!1336693)))))) tp!1166756))))

(declare-fun result!270346 () Bool)

(assert (=> tb!221837 (= result!270346 (and (inv!54936 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693))))) (value!200298 (_1!23122 (get!13496 lt!1336693))))) e!2379267))))

(assert (= tb!221837 b!3849388))

(declare-fun m!4404191 () Bool)

(assert (=> b!3849388 m!4404191))

(declare-fun m!4404193 () Bool)

(assert (=> tb!221837 m!4404193))

(assert (=> d!1141143 t!311449))

(declare-fun b_and!287307 () Bool)

(assert (= b_and!287305 (and (=> t!311449 result!270346) b_and!287307)))

(declare-fun t!311451 () Bool)

(declare-fun tb!221839 () Bool)

(assert (=> (and b!3849164 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311451) tb!221839))

(declare-fun result!270348 () Bool)

(assert (= result!270348 result!270346))

(assert (=> d!1141143 t!311451))

(declare-fun b_and!287309 () Bool)

(assert (= b_and!287299 (and (=> t!311451 result!270348) b_and!287309)))

(declare-fun t!311453 () Bool)

(declare-fun tb!221841 () Bool)

(assert (=> (and b!3849160 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311453) tb!221841))

(declare-fun result!270350 () Bool)

(assert (= result!270350 result!270346))

(assert (=> d!1141143 t!311453))

(declare-fun b_and!287311 () Bool)

(assert (= b_and!287297 (and (=> t!311453 result!270350) b_and!287311)))

(declare-fun tb!221843 () Bool)

(declare-fun t!311455 () Bool)

(assert (=> (and b!3849145 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311455) tb!221843))

(declare-fun result!270352 () Bool)

(assert (= result!270352 result!270346))

(assert (=> d!1141143 t!311455))

(declare-fun b_and!287313 () Bool)

(assert (= b_and!287295 (and (=> t!311455 result!270352) b_and!287313)))

(declare-fun t!311457 () Bool)

(declare-fun tb!221845 () Bool)

(assert (=> (and b!3848568 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311457) tb!221845))

(declare-fun result!270354 () Bool)

(assert (= result!270354 result!270346))

(assert (=> d!1141143 t!311457))

(declare-fun b_and!287315 () Bool)

(assert (= b_and!287303 (and (=> t!311457 result!270354) b_and!287315)))

(declare-fun tb!221847 () Bool)

(declare-fun t!311459 () Bool)

(assert (=> (and b!3848559 (= (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311459) tb!221847))

(declare-fun result!270356 () Bool)

(assert (= result!270356 result!270346))

(assert (=> d!1141143 t!311459))

(declare-fun b_and!287317 () Bool)

(assert (= b_and!287301 (and (=> t!311459 result!270356) b_and!287317)))

(declare-fun m!4404207 () Bool)

(assert (=> d!1141143 m!4404207))

(declare-fun m!4404209 () Bool)

(assert (=> d!1141143 m!4404209))

(assert (=> b!3848846 d!1141143))

(assert (=> b!3848846 d!1141051))

(declare-fun d!1141153 () Bool)

(assert (=> d!1141153 (= (isEmpty!24136 (originalCharacters!6904 (h!46210 suffixTokens!72))) ((_ is Nil!40788) (originalCharacters!6904 (h!46210 suffixTokens!72))))))

(assert (=> d!1140991 d!1141153))

(declare-fun d!1141155 () Bool)

(assert (=> d!1141155 (= (isEmpty!24136 (tail!5821 lt!1336596)) ((_ is Nil!40788) (tail!5821 lt!1336596)))))

(assert (=> b!3848691 d!1141155))

(assert (=> b!3848691 d!1141065))

(declare-fun d!1141157 () Bool)

(declare-fun res!1558356 () Bool)

(declare-fun e!2379268 () Bool)

(assert (=> d!1141157 (=> (not res!1558356) (not e!2379268))))

(assert (=> d!1141157 (= res!1558356 (not (isEmpty!24136 (originalCharacters!6904 (h!46210 (t!311335 suffixTokens!72))))))))

(assert (=> d!1141157 (= (inv!54931 (h!46210 (t!311335 suffixTokens!72))) e!2379268)))

(declare-fun b!3849389 () Bool)

(declare-fun res!1558357 () Bool)

(assert (=> b!3849389 (=> (not res!1558357) (not e!2379268))))

(assert (=> b!3849389 (= res!1558357 (= (originalCharacters!6904 (h!46210 (t!311335 suffixTokens!72))) (list!15180 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (value!200298 (h!46210 (t!311335 suffixTokens!72)))))))))

(declare-fun b!3849390 () Bool)

(assert (=> b!3849390 (= e!2379268 (= (size!30679 (h!46210 (t!311335 suffixTokens!72))) (size!30680 (originalCharacters!6904 (h!46210 (t!311335 suffixTokens!72))))))))

(assert (= (and d!1141157 res!1558356) b!3849389))

(assert (= (and b!3849389 res!1558357) b!3849390))

(declare-fun b_lambda!112497 () Bool)

(assert (=> (not b_lambda!112497) (not b!3849389)))

(declare-fun t!311463 () Bool)

(declare-fun tb!221851 () Bool)

(assert (=> (and b!3849160 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))) t!311463) tb!221851))

(declare-fun b!3849392 () Bool)

(declare-fun e!2379270 () Bool)

(declare-fun tp!1166758 () Bool)

(assert (=> b!3849392 (= e!2379270 (and (inv!54935 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (value!200298 (h!46210 (t!311335 suffixTokens!72)))))) tp!1166758))))

(declare-fun result!270360 () Bool)

(assert (=> tb!221851 (= result!270360 (and (inv!54936 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (value!200298 (h!46210 (t!311335 suffixTokens!72))))) e!2379270))))

(assert (= tb!221851 b!3849392))

(declare-fun m!4404215 () Bool)

(assert (=> b!3849392 m!4404215))

(declare-fun m!4404217 () Bool)

(assert (=> tb!221851 m!4404217))

(assert (=> b!3849389 t!311463))

(declare-fun b_and!287325 () Bool)

(assert (= b_and!287311 (and (=> t!311463 result!270360) b_and!287325)))

(declare-fun t!311471 () Bool)

(declare-fun tb!221859 () Bool)

(assert (=> (and b!3848559 (= (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))) t!311471) tb!221859))

(declare-fun result!270368 () Bool)

(assert (= result!270368 result!270360))

(assert (=> b!3849389 t!311471))

(declare-fun b_and!287329 () Bool)

(assert (= b_and!287317 (and (=> t!311471 result!270368) b_and!287329)))

(declare-fun t!311475 () Bool)

(declare-fun tb!221863 () Bool)

(assert (=> (and b!3848568 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))) t!311475) tb!221863))

(declare-fun result!270372 () Bool)

(assert (= result!270372 result!270360))

(assert (=> b!3849389 t!311475))

(declare-fun b_and!287333 () Bool)

(assert (= b_and!287315 (and (=> t!311475 result!270372) b_and!287333)))

(declare-fun t!311479 () Bool)

(declare-fun tb!221867 () Bool)

(assert (=> (and b!3849164 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))) t!311479) tb!221867))

(declare-fun result!270376 () Bool)

(assert (= result!270376 result!270360))

(assert (=> b!3849389 t!311479))

(declare-fun b_and!287337 () Bool)

(assert (= b_and!287309 (and (=> t!311479 result!270376) b_and!287337)))

(declare-fun t!311481 () Bool)

(declare-fun tb!221869 () Bool)

(assert (=> (and b!3849145 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))) t!311481) tb!221869))

(declare-fun result!270378 () Bool)

(assert (= result!270378 result!270360))

(assert (=> b!3849389 t!311481))

(declare-fun b_and!287339 () Bool)

(assert (= b_and!287313 (and (=> t!311481 result!270378) b_and!287339)))

(declare-fun t!311483 () Bool)

(declare-fun tb!221871 () Bool)

(assert (=> (and b!3848565 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))) t!311483) tb!221871))

(declare-fun result!270380 () Bool)

(assert (= result!270380 result!270360))

(assert (=> b!3849389 t!311483))

(declare-fun b_and!287341 () Bool)

(assert (= b_and!287307 (and (=> t!311483 result!270380) b_and!287341)))

(declare-fun m!4404223 () Bool)

(assert (=> d!1141157 m!4404223))

(declare-fun m!4404225 () Bool)

(assert (=> b!3849389 m!4404225))

(assert (=> b!3849389 m!4404225))

(declare-fun m!4404227 () Bool)

(assert (=> b!3849389 m!4404227))

(declare-fun m!4404229 () Bool)

(assert (=> b!3849390 m!4404229))

(assert (=> b!3849161 d!1141157))

(declare-fun b!3849393 () Bool)

(declare-fun res!1558358 () Bool)

(declare-fun e!2379271 () Bool)

(assert (=> b!3849393 (=> res!1558358 e!2379271)))

(assert (=> b!3849393 (= res!1558358 (not ((_ is IntegerValue!19604) (value!200298 (h!46210 (t!311335 suffixTokens!72))))))))

(declare-fun e!2379272 () Bool)

(assert (=> b!3849393 (= e!2379272 e!2379271)))

(declare-fun b!3849394 () Bool)

(declare-fun e!2379273 () Bool)

(assert (=> b!3849394 (= e!2379273 e!2379272)))

(declare-fun c!670433 () Bool)

(assert (=> b!3849394 (= c!670433 ((_ is IntegerValue!19603) (value!200298 (h!46210 (t!311335 suffixTokens!72)))))))

(declare-fun b!3849395 () Bool)

(assert (=> b!3849395 (= e!2379272 (inv!17 (value!200298 (h!46210 (t!311335 suffixTokens!72)))))))

(declare-fun d!1141161 () Bool)

(declare-fun c!670432 () Bool)

(assert (=> d!1141161 (= c!670432 ((_ is IntegerValue!19602) (value!200298 (h!46210 (t!311335 suffixTokens!72)))))))

(assert (=> d!1141161 (= (inv!21 (value!200298 (h!46210 (t!311335 suffixTokens!72)))) e!2379273)))

(declare-fun b!3849396 () Bool)

(assert (=> b!3849396 (= e!2379273 (inv!16 (value!200298 (h!46210 (t!311335 suffixTokens!72)))))))

(declare-fun b!3849397 () Bool)

(assert (=> b!3849397 (= e!2379271 (inv!15 (value!200298 (h!46210 (t!311335 suffixTokens!72)))))))

(assert (= (and d!1141161 c!670432) b!3849396))

(assert (= (and d!1141161 (not c!670432)) b!3849394))

(assert (= (and b!3849394 c!670433) b!3849395))

(assert (= (and b!3849394 (not c!670433)) b!3849393))

(assert (= (and b!3849393 (not res!1558358)) b!3849397))

(declare-fun m!4404231 () Bool)

(assert (=> b!3849395 m!4404231))

(declare-fun m!4404233 () Bool)

(assert (=> b!3849396 m!4404233))

(declare-fun m!4404235 () Bool)

(assert (=> b!3849397 m!4404235))

(assert (=> b!3849162 d!1141161))

(assert (=> b!3848851 d!1141051))

(declare-fun d!1141165 () Bool)

(declare-fun lt!1336946 () Int)

(assert (=> d!1141165 (>= lt!1336946 0)))

(declare-fun e!2379277 () Int)

(assert (=> d!1141165 (= lt!1336946 e!2379277)))

(declare-fun c!670436 () Bool)

(assert (=> d!1141165 (= c!670436 ((_ is Nil!40788) (originalCharacters!6904 (_1!23122 (get!13496 lt!1336693)))))))

(assert (=> d!1141165 (= (size!30680 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336693)))) lt!1336946)))

(declare-fun b!3849403 () Bool)

(assert (=> b!3849403 (= e!2379277 0)))

(declare-fun b!3849404 () Bool)

(assert (=> b!3849404 (= e!2379277 (+ 1 (size!30680 (t!311333 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336693)))))))))

(assert (= (and d!1141165 c!670436) b!3849403))

(assert (= (and d!1141165 (not c!670436)) b!3849404))

(declare-fun m!4404243 () Bool)

(assert (=> b!3849404 m!4404243))

(assert (=> b!3848851 d!1141165))

(declare-fun d!1141167 () Bool)

(declare-fun isBalanced!3622 (Conc!12515) Bool)

(assert (=> d!1141167 (= (inv!54936 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591))))) (isBalanced!3622 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591)))))))))

(declare-fun bs!582786 () Bool)

(assert (= bs!582786 d!1141167))

(declare-fun m!4404245 () Bool)

(assert (=> bs!582786 m!4404245))

(assert (=> tb!221789 d!1141167))

(declare-fun d!1141171 () Bool)

(declare-fun lt!1336947 () Int)

(assert (=> d!1141171 (>= lt!1336947 0)))

(declare-fun e!2379278 () Int)

(assert (=> d!1141171 (= lt!1336947 e!2379278)))

(declare-fun c!670437 () Bool)

(assert (=> d!1141171 (= c!670437 ((_ is Nil!40788) (originalCharacters!6904 (h!46210 suffixTokens!72))))))

(assert (=> d!1141171 (= (size!30680 (originalCharacters!6904 (h!46210 suffixTokens!72))) lt!1336947)))

(declare-fun b!3849405 () Bool)

(assert (=> b!3849405 (= e!2379278 0)))

(declare-fun b!3849406 () Bool)

(assert (=> b!3849406 (= e!2379278 (+ 1 (size!30680 (t!311333 (originalCharacters!6904 (h!46210 suffixTokens!72))))))))

(assert (= (and d!1141171 c!670437) b!3849405))

(assert (= (and d!1141171 (not c!670437)) b!3849406))

(declare-fun m!4404247 () Bool)

(assert (=> b!3849406 m!4404247))

(assert (=> b!3849059 d!1141171))

(declare-fun d!1141173 () Bool)

(declare-fun lt!1336948 () Int)

(assert (=> d!1141173 (>= lt!1336948 0)))

(declare-fun e!2379279 () Int)

(assert (=> d!1141173 (= lt!1336948 e!2379279)))

(declare-fun c!670438 () Bool)

(assert (=> d!1141173 (= c!670438 ((_ is Nil!40788) (_2!23121 lt!1336739)))))

(assert (=> d!1141173 (= (size!30680 (_2!23121 lt!1336739)) lt!1336948)))

(declare-fun b!3849407 () Bool)

(assert (=> b!3849407 (= e!2379279 0)))

(declare-fun b!3849408 () Bool)

(assert (=> b!3849408 (= e!2379279 (+ 1 (size!30680 (t!311333 (_2!23121 lt!1336739)))))))

(assert (= (and d!1141173 c!670438) b!3849407))

(assert (= (and d!1141173 (not c!670438)) b!3849408))

(declare-fun m!4404249 () Bool)

(assert (=> b!3849408 m!4404249))

(assert (=> b!3849008 d!1141173))

(assert (=> b!3849008 d!1140983))

(declare-fun d!1141175 () Bool)

(assert (=> d!1141175 (= (isEmpty!24138 (_1!23121 lt!1336768)) ((_ is Nil!40790) (_1!23121 lt!1336768)))))

(assert (=> b!3849083 d!1141175))

(declare-fun d!1141177 () Bool)

(declare-fun c!670441 () Bool)

(assert (=> d!1141177 (= c!670441 ((_ is Nil!40788) lt!1336746))))

(declare-fun e!2379284 () (InoxSet C!22604))

(assert (=> d!1141177 (= (content!6064 lt!1336746) e!2379284)))

(declare-fun b!3849415 () Bool)

(assert (=> b!3849415 (= e!2379284 ((as const (Array C!22604 Bool)) false))))

(declare-fun b!3849416 () Bool)

(assert (=> b!3849416 (= e!2379284 ((_ map or) (store ((as const (Array C!22604 Bool)) false) (h!46208 lt!1336746) true) (content!6064 (t!311333 lt!1336746))))))

(assert (= (and d!1141177 c!670441) b!3849415))

(assert (= (and d!1141177 (not c!670441)) b!3849416))

(declare-fun m!4404251 () Bool)

(assert (=> b!3849416 m!4404251))

(declare-fun m!4404253 () Bool)

(assert (=> b!3849416 m!4404253))

(assert (=> d!1140975 d!1141177))

(declare-fun d!1141179 () Bool)

(declare-fun c!670442 () Bool)

(assert (=> d!1141179 (= c!670442 ((_ is Nil!40788) prefix!426))))

(declare-fun e!2379285 () (InoxSet C!22604))

(assert (=> d!1141179 (= (content!6064 prefix!426) e!2379285)))

(declare-fun b!3849417 () Bool)

(assert (=> b!3849417 (= e!2379285 ((as const (Array C!22604 Bool)) false))))

(declare-fun b!3849418 () Bool)

(assert (=> b!3849418 (= e!2379285 ((_ map or) (store ((as const (Array C!22604 Bool)) false) (h!46208 prefix!426) true) (content!6064 (t!311333 prefix!426))))))

(assert (= (and d!1141179 c!670442) b!3849417))

(assert (= (and d!1141179 (not c!670442)) b!3849418))

(declare-fun m!4404255 () Bool)

(assert (=> b!3849418 m!4404255))

(declare-fun m!4404257 () Bool)

(assert (=> b!3849418 m!4404257))

(assert (=> d!1140975 d!1141179))

(declare-fun d!1141181 () Bool)

(declare-fun c!670443 () Bool)

(assert (=> d!1141181 (= c!670443 ((_ is Nil!40788) suffix!1176))))

(declare-fun e!2379286 () (InoxSet C!22604))

(assert (=> d!1141181 (= (content!6064 suffix!1176) e!2379286)))

(declare-fun b!3849421 () Bool)

(assert (=> b!3849421 (= e!2379286 ((as const (Array C!22604 Bool)) false))))

(declare-fun b!3849422 () Bool)

(assert (=> b!3849422 (= e!2379286 ((_ map or) (store ((as const (Array C!22604 Bool)) false) (h!46208 suffix!1176) true) (content!6064 (t!311333 suffix!1176))))))

(assert (= (and d!1141181 c!670443) b!3849421))

(assert (= (and d!1141181 (not c!670443)) b!3849422))

(declare-fun m!4404259 () Bool)

(assert (=> b!3849422 m!4404259))

(declare-fun m!4404261 () Bool)

(assert (=> b!3849422 m!4404261))

(assert (=> d!1140975 d!1141181))

(declare-fun d!1141183 () Bool)

(declare-fun c!670444 () Bool)

(assert (=> d!1141183 (= c!670444 ((_ is Nil!40788) lt!1336773))))

(declare-fun e!2379287 () (InoxSet C!22604))

(assert (=> d!1141183 (= (content!6064 lt!1336773) e!2379287)))

(declare-fun b!3849423 () Bool)

(assert (=> b!3849423 (= e!2379287 ((as const (Array C!22604 Bool)) false))))

(declare-fun b!3849424 () Bool)

(assert (=> b!3849424 (= e!2379287 ((_ map or) (store ((as const (Array C!22604 Bool)) false) (h!46208 lt!1336773) true) (content!6064 (t!311333 lt!1336773))))))

(assert (= (and d!1141183 c!670444) b!3849423))

(assert (= (and d!1141183 (not c!670444)) b!3849424))

(declare-fun m!4404265 () Bool)

(assert (=> b!3849424 m!4404265))

(declare-fun m!4404267 () Bool)

(assert (=> b!3849424 m!4404267))

(assert (=> d!1141023 d!1141183))

(declare-fun d!1141187 () Bool)

(declare-fun c!670445 () Bool)

(assert (=> d!1141187 (= c!670445 ((_ is Nil!40788) lt!1336596))))

(declare-fun e!2379288 () (InoxSet C!22604))

(assert (=> d!1141187 (= (content!6064 lt!1336596) e!2379288)))

(declare-fun b!3849425 () Bool)

(assert (=> b!3849425 (= e!2379288 ((as const (Array C!22604 Bool)) false))))

(declare-fun b!3849426 () Bool)

(assert (=> b!3849426 (= e!2379288 ((_ map or) (store ((as const (Array C!22604 Bool)) false) (h!46208 lt!1336596) true) (content!6064 (t!311333 lt!1336596))))))

(assert (= (and d!1141187 c!670445) b!3849425))

(assert (= (and d!1141187 (not c!670445)) b!3849426))

(declare-fun m!4404271 () Bool)

(assert (=> b!3849426 m!4404271))

(assert (=> b!3849426 m!4404161))

(assert (=> d!1141023 d!1141187))

(declare-fun d!1141191 () Bool)

(declare-fun c!670447 () Bool)

(assert (=> d!1141191 (= c!670447 ((_ is Nil!40788) (_2!23122 (v!39013 lt!1336591))))))

(declare-fun e!2379290 () (InoxSet C!22604))

(assert (=> d!1141191 (= (content!6064 (_2!23122 (v!39013 lt!1336591))) e!2379290)))

(declare-fun b!3849429 () Bool)

(assert (=> b!3849429 (= e!2379290 ((as const (Array C!22604 Bool)) false))))

(declare-fun b!3849430 () Bool)

(assert (=> b!3849430 (= e!2379290 ((_ map or) (store ((as const (Array C!22604 Bool)) false) (h!46208 (_2!23122 (v!39013 lt!1336591))) true) (content!6064 (t!311333 (_2!23122 (v!39013 lt!1336591))))))))

(assert (= (and d!1141191 c!670447) b!3849429))

(assert (= (and d!1141191 (not c!670447)) b!3849430))

(declare-fun m!4404273 () Bool)

(assert (=> b!3849430 m!4404273))

(declare-fun m!4404277 () Bool)

(assert (=> b!3849430 m!4404277))

(assert (=> d!1141023 d!1141191))

(declare-fun b!3849431 () Bool)

(declare-fun res!1558362 () Bool)

(declare-fun e!2379291 () Bool)

(assert (=> b!3849431 (=> res!1558362 e!2379291)))

(assert (=> b!3849431 (= res!1558362 (not ((_ is IntegerValue!19604) (value!200298 (h!46210 (t!311335 prefixTokens!80))))))))

(declare-fun e!2379292 () Bool)

(assert (=> b!3849431 (= e!2379292 e!2379291)))

(declare-fun b!3849432 () Bool)

(declare-fun e!2379293 () Bool)

(assert (=> b!3849432 (= e!2379293 e!2379292)))

(declare-fun c!670449 () Bool)

(assert (=> b!3849432 (= c!670449 ((_ is IntegerValue!19603) (value!200298 (h!46210 (t!311335 prefixTokens!80)))))))

(declare-fun b!3849433 () Bool)

(assert (=> b!3849433 (= e!2379292 (inv!17 (value!200298 (h!46210 (t!311335 prefixTokens!80)))))))

(declare-fun d!1141193 () Bool)

(declare-fun c!670448 () Bool)

(assert (=> d!1141193 (= c!670448 ((_ is IntegerValue!19602) (value!200298 (h!46210 (t!311335 prefixTokens!80)))))))

(assert (=> d!1141193 (= (inv!21 (value!200298 (h!46210 (t!311335 prefixTokens!80)))) e!2379293)))

(declare-fun b!3849434 () Bool)

(assert (=> b!3849434 (= e!2379293 (inv!16 (value!200298 (h!46210 (t!311335 prefixTokens!80)))))))

(declare-fun b!3849435 () Bool)

(assert (=> b!3849435 (= e!2379291 (inv!15 (value!200298 (h!46210 (t!311335 prefixTokens!80)))))))

(assert (= (and d!1141193 c!670448) b!3849434))

(assert (= (and d!1141193 (not c!670448)) b!3849432))

(assert (= (and b!3849432 c!670449) b!3849433))

(assert (= (and b!3849432 (not c!670449)) b!3849431))

(assert (= (and b!3849431 (not res!1558362)) b!3849435))

(declare-fun m!4404279 () Bool)

(assert (=> b!3849433 m!4404279))

(declare-fun m!4404281 () Bool)

(assert (=> b!3849434 m!4404281))

(declare-fun m!4404283 () Bool)

(assert (=> b!3849435 m!4404283))

(assert (=> b!3849158 d!1141193))

(declare-fun b!3849436 () Bool)

(declare-fun e!2379295 () List!40912)

(assert (=> b!3849436 (= e!2379295 lt!1336757)))

(declare-fun e!2379294 () Bool)

(declare-fun b!3849439 () Bool)

(declare-fun lt!1336950 () List!40912)

(assert (=> b!3849439 (= e!2379294 (or (not (= lt!1336757 Nil!40788)) (= lt!1336950 lt!1336596)))))

(declare-fun b!3849437 () Bool)

(assert (=> b!3849437 (= e!2379295 (Cons!40788 (h!46208 lt!1336596) (++!10365 (t!311333 lt!1336596) lt!1336757)))))

(declare-fun b!3849438 () Bool)

(declare-fun res!1558363 () Bool)

(assert (=> b!3849438 (=> (not res!1558363) (not e!2379294))))

(assert (=> b!3849438 (= res!1558363 (= (size!30680 lt!1336950) (+ (size!30680 lt!1336596) (size!30680 lt!1336757))))))

(declare-fun d!1141197 () Bool)

(assert (=> d!1141197 e!2379294))

(declare-fun res!1558364 () Bool)

(assert (=> d!1141197 (=> (not res!1558364) (not e!2379294))))

(assert (=> d!1141197 (= res!1558364 (= (content!6064 lt!1336950) ((_ map or) (content!6064 lt!1336596) (content!6064 lt!1336757))))))

(assert (=> d!1141197 (= lt!1336950 e!2379295)))

(declare-fun c!670450 () Bool)

(assert (=> d!1141197 (= c!670450 ((_ is Nil!40788) lt!1336596))))

(assert (=> d!1141197 (= (++!10365 lt!1336596 lt!1336757) lt!1336950)))

(assert (= (and d!1141197 c!670450) b!3849436))

(assert (= (and d!1141197 (not c!670450)) b!3849437))

(assert (= (and d!1141197 res!1558364) b!3849438))

(assert (= (and b!3849438 res!1558363) b!3849439))

(declare-fun m!4404285 () Bool)

(assert (=> b!3849437 m!4404285))

(declare-fun m!4404287 () Bool)

(assert (=> b!3849438 m!4404287))

(assert (=> b!3849438 m!4403237))

(declare-fun m!4404289 () Bool)

(assert (=> b!3849438 m!4404289))

(declare-fun m!4404291 () Bool)

(assert (=> d!1141197 m!4404291))

(assert (=> d!1141197 m!4403863))

(declare-fun m!4404293 () Bool)

(assert (=> d!1141197 m!4404293))

(assert (=> d!1141003 d!1141197))

(assert (=> d!1141003 d!1140983))

(assert (=> d!1141003 d!1141027))

(assert (=> d!1140931 d!1140941))

(assert (=> d!1140931 d!1141007))

(declare-fun d!1141199 () Bool)

(assert (=> d!1141199 (= (maxPrefixOneRule!2279 thiss!20629 (rule!9154 (_1!23122 (v!39013 lt!1336591))) lt!1336601) (Some!8721 (tuple2!39977 (Token!11747 (apply!9547 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (seqFromList!4575 lt!1336596)) (rule!9154 (_1!23122 (v!39013 lt!1336591))) (size!30680 lt!1336596) lt!1336596) (_2!23122 (v!39013 lt!1336591)))))))

(assert (=> d!1141199 true))

(declare-fun _$59!584 () Unit!58460)

(assert (=> d!1141199 (= (choose!22648 thiss!20629 rules!2768 lt!1336596 lt!1336601 (_2!23122 (v!39013 lt!1336591)) (rule!9154 (_1!23122 (v!39013 lt!1336591)))) _$59!584)))

(declare-fun bs!582792 () Bool)

(assert (= bs!582792 d!1141199))

(assert (=> bs!582792 m!4403297))

(assert (=> bs!582792 m!4403231))

(assert (=> bs!582792 m!4403231))

(assert (=> bs!582792 m!4403245))

(assert (=> bs!582792 m!4403237))

(assert (=> d!1140931 d!1141199))

(assert (=> d!1140931 d!1141027))

(assert (=> d!1140931 d!1141019))

(assert (=> d!1140931 d!1140893))

(declare-fun d!1141225 () Bool)

(assert (=> d!1141225 true))

(declare-fun order!22155 () Int)

(declare-fun order!22157 () Int)

(declare-fun lambda!126126 () Int)

(declare-fun dynLambda!17605 (Int Int) Int)

(declare-fun dynLambda!17606 (Int Int) Int)

(assert (=> d!1141225 (< (dynLambda!17605 order!22155 (toChars!8579 (transformation!6304 (h!46211 rules!2768)))) (dynLambda!17606 order!22157 lambda!126126))))

(assert (=> d!1141225 true))

(assert (=> d!1141225 (< (dynLambda!17603 order!22149 (toValue!8720 (transformation!6304 (h!46211 rules!2768)))) (dynLambda!17606 order!22157 lambda!126126))))

(declare-fun Forall!1432 (Int) Bool)

(assert (=> d!1141225 (= (semiInverseModEq!2699 (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toValue!8720 (transformation!6304 (h!46211 rules!2768)))) (Forall!1432 lambda!126126))))

(declare-fun bs!582794 () Bool)

(assert (= bs!582794 d!1141225))

(declare-fun m!4404337 () Bool)

(assert (=> bs!582794 m!4404337))

(assert (=> d!1140995 d!1141225))

(declare-fun b!3849462 () Bool)

(declare-fun e!2379311 () List!40912)

(assert (=> b!3849462 (= e!2379311 (_2!23122 (get!13496 lt!1336728)))))

(declare-fun b!3849465 () Bool)

(declare-fun e!2379310 () Bool)

(declare-fun lt!1336962 () List!40912)

(assert (=> b!3849465 (= e!2379310 (or (not (= (_2!23122 (get!13496 lt!1336728)) Nil!40788)) (= lt!1336962 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728)))))))))

(declare-fun b!3849463 () Bool)

(assert (=> b!3849463 (= e!2379311 (Cons!40788 (h!46208 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728))))) (++!10365 (t!311333 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728))))) (_2!23122 (get!13496 lt!1336728)))))))

(declare-fun b!3849464 () Bool)

(declare-fun res!1558378 () Bool)

(assert (=> b!3849464 (=> (not res!1558378) (not e!2379310))))

(assert (=> b!3849464 (= res!1558378 (= (size!30680 lt!1336962) (+ (size!30680 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728))))) (size!30680 (_2!23122 (get!13496 lt!1336728))))))))

(declare-fun d!1141229 () Bool)

(assert (=> d!1141229 e!2379310))

(declare-fun res!1558379 () Bool)

(assert (=> d!1141229 (=> (not res!1558379) (not e!2379310))))

(assert (=> d!1141229 (= res!1558379 (= (content!6064 lt!1336962) ((_ map or) (content!6064 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728))))) (content!6064 (_2!23122 (get!13496 lt!1336728))))))))

(assert (=> d!1141229 (= lt!1336962 e!2379311)))

(declare-fun c!670454 () Bool)

(assert (=> d!1141229 (= c!670454 ((_ is Nil!40788) (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728))))))))

(assert (=> d!1141229 (= (++!10365 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728)))) (_2!23122 (get!13496 lt!1336728))) lt!1336962)))

(assert (= (and d!1141229 c!670454) b!3849462))

(assert (= (and d!1141229 (not c!670454)) b!3849463))

(assert (= (and d!1141229 res!1558379) b!3849464))

(assert (= (and b!3849464 res!1558378) b!3849465))

(declare-fun m!4404339 () Bool)

(assert (=> b!3849463 m!4404339))

(declare-fun m!4404341 () Bool)

(assert (=> b!3849464 m!4404341))

(assert (=> b!3849464 m!4403697))

(declare-fun m!4404343 () Bool)

(assert (=> b!3849464 m!4404343))

(assert (=> b!3849464 m!4403701))

(declare-fun m!4404345 () Bool)

(assert (=> d!1141229 m!4404345))

(assert (=> d!1141229 m!4403697))

(declare-fun m!4404347 () Bool)

(assert (=> d!1141229 m!4404347))

(declare-fun m!4404349 () Bool)

(assert (=> d!1141229 m!4404349))

(assert (=> b!3848990 d!1141229))

(declare-fun d!1141231 () Bool)

(assert (=> d!1141231 (= (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728)))) (list!15182 (c!670247 (charsOf!4132 (_1!23122 (get!13496 lt!1336728))))))))

(declare-fun bs!582795 () Bool)

(assert (= bs!582795 d!1141231))

(declare-fun m!4404351 () Bool)

(assert (=> bs!582795 m!4404351))

(assert (=> b!3848990 d!1141231))

(declare-fun d!1141233 () Bool)

(declare-fun lt!1336964 () BalanceConc!24624)

(assert (=> d!1141233 (= (list!15180 lt!1336964) (originalCharacters!6904 (_1!23122 (get!13496 lt!1336728))))))

(assert (=> d!1141233 (= lt!1336964 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728))))) (value!200298 (_1!23122 (get!13496 lt!1336728)))))))

(assert (=> d!1141233 (= (charsOf!4132 (_1!23122 (get!13496 lt!1336728))) lt!1336964)))

(declare-fun b_lambda!112501 () Bool)

(assert (=> (not b_lambda!112501) (not d!1141233)))

(declare-fun tb!221885 () Bool)

(declare-fun t!311497 () Bool)

(assert (=> (and b!3848568 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311497) tb!221885))

(declare-fun b!3849468 () Bool)

(declare-fun e!2379312 () Bool)

(declare-fun tp!1166760 () Bool)

(assert (=> b!3849468 (= e!2379312 (and (inv!54935 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728))))) (value!200298 (_1!23122 (get!13496 lt!1336728)))))) tp!1166760))))

(declare-fun result!270394 () Bool)

(assert (=> tb!221885 (= result!270394 (and (inv!54936 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728))))) (value!200298 (_1!23122 (get!13496 lt!1336728))))) e!2379312))))

(assert (= tb!221885 b!3849468))

(declare-fun m!4404353 () Bool)

(assert (=> b!3849468 m!4404353))

(declare-fun m!4404355 () Bool)

(assert (=> tb!221885 m!4404355))

(assert (=> d!1141233 t!311497))

(declare-fun b_and!287355 () Bool)

(assert (= b_and!287333 (and (=> t!311497 result!270394) b_and!287355)))

(declare-fun t!311499 () Bool)

(declare-fun tb!221887 () Bool)

(assert (=> (and b!3849145 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311499) tb!221887))

(declare-fun result!270396 () Bool)

(assert (= result!270396 result!270394))

(assert (=> d!1141233 t!311499))

(declare-fun b_and!287357 () Bool)

(assert (= b_and!287339 (and (=> t!311499 result!270396) b_and!287357)))

(declare-fun t!311501 () Bool)

(declare-fun tb!221889 () Bool)

(assert (=> (and b!3848565 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311501) tb!221889))

(declare-fun result!270398 () Bool)

(assert (= result!270398 result!270394))

(assert (=> d!1141233 t!311501))

(declare-fun b_and!287359 () Bool)

(assert (= b_and!287341 (and (=> t!311501 result!270398) b_and!287359)))

(declare-fun tb!221891 () Bool)

(declare-fun t!311503 () Bool)

(assert (=> (and b!3849160 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311503) tb!221891))

(declare-fun result!270400 () Bool)

(assert (= result!270400 result!270394))

(assert (=> d!1141233 t!311503))

(declare-fun b_and!287361 () Bool)

(assert (= b_and!287325 (and (=> t!311503 result!270400) b_and!287361)))

(declare-fun tb!221893 () Bool)

(declare-fun t!311505 () Bool)

(assert (=> (and b!3848559 (= (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311505) tb!221893))

(declare-fun result!270402 () Bool)

(assert (= result!270402 result!270394))

(assert (=> d!1141233 t!311505))

(declare-fun b_and!287363 () Bool)

(assert (= b_and!287329 (and (=> t!311505 result!270402) b_and!287363)))

(declare-fun tb!221895 () Bool)

(declare-fun t!311507 () Bool)

(assert (=> (and b!3849164 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311507) tb!221895))

(declare-fun result!270404 () Bool)

(assert (= result!270404 result!270394))

(assert (=> d!1141233 t!311507))

(declare-fun b_and!287365 () Bool)

(assert (= b_and!287337 (and (=> t!311507 result!270404) b_and!287365)))

(declare-fun m!4404357 () Bool)

(assert (=> d!1141233 m!4404357))

(declare-fun m!4404359 () Bool)

(assert (=> d!1141233 m!4404359))

(assert (=> b!3848990 d!1141233))

(assert (=> b!3848990 d!1141079))

(declare-fun bs!582798 () Bool)

(declare-fun d!1141235 () Bool)

(assert (= bs!582798 (and d!1141235 d!1141225)))

(declare-fun lambda!126130 () Int)

(assert (=> bs!582798 (= (and (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toChars!8579 (transformation!6304 (h!46211 rules!2768)))) (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toValue!8720 (transformation!6304 (h!46211 rules!2768))))) (= lambda!126130 lambda!126126))))

(assert (=> d!1141235 true))

(assert (=> d!1141235 (< (dynLambda!17605 order!22155 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) (dynLambda!17606 order!22157 lambda!126130))))

(assert (=> d!1141235 true))

(assert (=> d!1141235 (< (dynLambda!17603 order!22149 (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) (dynLambda!17606 order!22157 lambda!126130))))

(assert (=> d!1141235 (= (semiInverseModEq!2699 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) (Forall!1432 lambda!126130))))

(declare-fun bs!582799 () Bool)

(assert (= bs!582799 d!1141235))

(declare-fun m!4404361 () Bool)

(assert (=> bs!582799 m!4404361))

(assert (=> d!1140969 d!1141235))

(declare-fun d!1141237 () Bool)

(declare-fun lt!1336965 () Int)

(assert (=> d!1141237 (>= lt!1336965 0)))

(declare-fun e!2379317 () Int)

(assert (=> d!1141237 (= lt!1336965 e!2379317)))

(declare-fun c!670455 () Bool)

(assert (=> d!1141237 (= c!670455 ((_ is Nil!40790) lt!1336754))))

(assert (=> d!1141237 (= (size!30684 lt!1336754) lt!1336965)))

(declare-fun b!3849473 () Bool)

(assert (=> b!3849473 (= e!2379317 0)))

(declare-fun b!3849474 () Bool)

(assert (=> b!3849474 (= e!2379317 (+ 1 (size!30684 (t!311335 lt!1336754))))))

(assert (= (and d!1141237 c!670455) b!3849473))

(assert (= (and d!1141237 (not c!670455)) b!3849474))

(declare-fun m!4404367 () Bool)

(assert (=> b!3849474 m!4404367))

(assert (=> b!3849071 d!1141237))

(declare-fun d!1141239 () Bool)

(declare-fun lt!1336966 () Int)

(assert (=> d!1141239 (>= lt!1336966 0)))

(declare-fun e!2379318 () Int)

(assert (=> d!1141239 (= lt!1336966 e!2379318)))

(declare-fun c!670456 () Bool)

(assert (=> d!1141239 (= c!670456 ((_ is Nil!40790) (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790)))))

(assert (=> d!1141239 (= (size!30684 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790)) lt!1336966)))

(declare-fun b!3849475 () Bool)

(assert (=> b!3849475 (= e!2379318 0)))

(declare-fun b!3849476 () Bool)

(assert (=> b!3849476 (= e!2379318 (+ 1 (size!30684 (t!311335 (Cons!40790 (_1!23122 (v!39013 lt!1336591)) Nil!40790)))))))

(assert (= (and d!1141239 c!670456) b!3849475))

(assert (= (and d!1141239 (not c!670456)) b!3849476))

(assert (=> b!3849476 m!4404001))

(assert (=> b!3849071 d!1141239))

(declare-fun d!1141241 () Bool)

(declare-fun lt!1336967 () Int)

(assert (=> d!1141241 (>= lt!1336967 0)))

(declare-fun e!2379319 () Int)

(assert (=> d!1141241 (= lt!1336967 e!2379319)))

(declare-fun c!670457 () Bool)

(assert (=> d!1141241 (= c!670457 ((_ is Nil!40790) (_1!23121 lt!1336607)))))

(assert (=> d!1141241 (= (size!30684 (_1!23121 lt!1336607)) lt!1336967)))

(declare-fun b!3849477 () Bool)

(assert (=> b!3849477 (= e!2379319 0)))

(declare-fun b!3849478 () Bool)

(assert (=> b!3849478 (= e!2379319 (+ 1 (size!30684 (t!311335 (_1!23121 lt!1336607)))))))

(assert (= (and d!1141241 c!670457) b!3849477))

(assert (= (and d!1141241 (not c!670457)) b!3849478))

(declare-fun m!4404369 () Bool)

(assert (=> b!3849478 m!4404369))

(assert (=> b!3849071 d!1141241))

(declare-fun d!1141243 () Bool)

(declare-fun charsToInt!0 (List!40913) (_ BitVec 32))

(assert (=> d!1141243 (= (inv!16 (value!200298 (h!46210 prefixTokens!80))) (= (charsToInt!0 (text!46185 (value!200298 (h!46210 prefixTokens!80)))) (value!200289 (value!200298 (h!46210 prefixTokens!80)))))))

(declare-fun bs!582800 () Bool)

(assert (= bs!582800 d!1141243))

(declare-fun m!4404373 () Bool)

(assert (=> bs!582800 m!4404373))

(assert (=> b!3848607 d!1141243))

(declare-fun d!1141245 () Bool)

(declare-fun lt!1336968 () Int)

(assert (=> d!1141245 (>= lt!1336968 0)))

(declare-fun e!2379321 () Int)

(assert (=> d!1141245 (= lt!1336968 e!2379321)))

(declare-fun c!670458 () Bool)

(assert (=> d!1141245 (= c!670458 ((_ is Nil!40788) (t!311333 (_2!23122 (v!39013 lt!1336591)))))))

(assert (=> d!1141245 (= (size!30680 (t!311333 (_2!23122 (v!39013 lt!1336591)))) lt!1336968)))

(declare-fun b!3849479 () Bool)

(assert (=> b!3849479 (= e!2379321 0)))

(declare-fun b!3849480 () Bool)

(assert (=> b!3849480 (= e!2379321 (+ 1 (size!30680 (t!311333 (t!311333 (_2!23122 (v!39013 lt!1336591)))))))))

(assert (= (and d!1141245 c!670458) b!3849479))

(assert (= (and d!1141245 (not c!670458)) b!3849480))

(declare-fun m!4404379 () Bool)

(assert (=> b!3849480 m!4404379))

(assert (=> b!3849039 d!1141245))

(declare-fun b!3849484 () Bool)

(declare-fun e!2379322 () Bool)

(assert (=> b!3849484 (= e!2379322 (>= (size!30680 (tail!5821 lt!1336593)) (size!30680 (tail!5821 lt!1336596))))))

(declare-fun d!1141247 () Bool)

(assert (=> d!1141247 e!2379322))

(declare-fun res!1558381 () Bool)

(assert (=> d!1141247 (=> res!1558381 e!2379322)))

(declare-fun lt!1336969 () Bool)

(assert (=> d!1141247 (= res!1558381 (not lt!1336969))))

(declare-fun e!2379324 () Bool)

(assert (=> d!1141247 (= lt!1336969 e!2379324)))

(declare-fun res!1558382 () Bool)

(assert (=> d!1141247 (=> res!1558382 e!2379324)))

(assert (=> d!1141247 (= res!1558382 ((_ is Nil!40788) (tail!5821 lt!1336596)))))

(assert (=> d!1141247 (= (isPrefix!3403 (tail!5821 lt!1336596) (tail!5821 lt!1336593)) lt!1336969)))

(declare-fun b!3849483 () Bool)

(declare-fun e!2379323 () Bool)

(assert (=> b!3849483 (= e!2379323 (isPrefix!3403 (tail!5821 (tail!5821 lt!1336596)) (tail!5821 (tail!5821 lt!1336593))))))

(declare-fun b!3849481 () Bool)

(assert (=> b!3849481 (= e!2379324 e!2379323)))

(declare-fun res!1558383 () Bool)

(assert (=> b!3849481 (=> (not res!1558383) (not e!2379323))))

(assert (=> b!3849481 (= res!1558383 (not ((_ is Nil!40788) (tail!5821 lt!1336593))))))

(declare-fun b!3849482 () Bool)

(declare-fun res!1558380 () Bool)

(assert (=> b!3849482 (=> (not res!1558380) (not e!2379323))))

(assert (=> b!3849482 (= res!1558380 (= (head!8094 (tail!5821 lt!1336596)) (head!8094 (tail!5821 lt!1336593))))))

(assert (= (and d!1141247 (not res!1558382)) b!3849481))

(assert (= (and b!3849481 res!1558383) b!3849482))

(assert (= (and b!3849482 res!1558380) b!3849483))

(assert (= (and d!1141247 (not res!1558381)) b!3849484))

(assert (=> b!3849484 m!4403871))

(declare-fun m!4404385 () Bool)

(assert (=> b!3849484 m!4404385))

(assert (=> b!3849484 m!4403381))

(declare-fun m!4404387 () Bool)

(assert (=> b!3849484 m!4404387))

(assert (=> b!3849483 m!4403381))

(assert (=> b!3849483 m!4403957))

(assert (=> b!3849483 m!4403871))

(declare-fun m!4404389 () Bool)

(assert (=> b!3849483 m!4404389))

(assert (=> b!3849483 m!4403957))

(assert (=> b!3849483 m!4404389))

(declare-fun m!4404391 () Bool)

(assert (=> b!3849483 m!4404391))

(assert (=> b!3849482 m!4403381))

(assert (=> b!3849482 m!4403961))

(assert (=> b!3849482 m!4403871))

(declare-fun m!4404393 () Bool)

(assert (=> b!3849482 m!4404393))

(assert (=> b!3849109 d!1141247))

(assert (=> b!3849109 d!1141065))

(declare-fun d!1141251 () Bool)

(assert (=> d!1141251 (= (tail!5821 lt!1336593) (t!311333 lt!1336593))))

(assert (=> b!3849109 d!1141251))

(declare-fun d!1141253 () Bool)

(assert (=> d!1141253 (= (_2!23122 (v!39013 lt!1336591)) lt!1336594)))

(assert (=> d!1141253 true))

(declare-fun _$63!933 () Unit!58460)

(assert (=> d!1141253 (= (choose!22651 lt!1336596 (_2!23122 (v!39013 lt!1336591)) lt!1336596 lt!1336594 lt!1336601) _$63!933)))

(assert (=> d!1141009 d!1141253))

(declare-fun b!3849488 () Bool)

(declare-fun e!2379325 () Bool)

(assert (=> b!3849488 (= e!2379325 (>= (size!30680 lt!1336601) (size!30680 lt!1336596)))))

(declare-fun d!1141255 () Bool)

(assert (=> d!1141255 e!2379325))

(declare-fun res!1558385 () Bool)

(assert (=> d!1141255 (=> res!1558385 e!2379325)))

(declare-fun lt!1336970 () Bool)

(assert (=> d!1141255 (= res!1558385 (not lt!1336970))))

(declare-fun e!2379327 () Bool)

(assert (=> d!1141255 (= lt!1336970 e!2379327)))

(declare-fun res!1558386 () Bool)

(assert (=> d!1141255 (=> res!1558386 e!2379327)))

(assert (=> d!1141255 (= res!1558386 ((_ is Nil!40788) lt!1336596))))

(assert (=> d!1141255 (= (isPrefix!3403 lt!1336596 lt!1336601) lt!1336970)))

(declare-fun b!3849487 () Bool)

(declare-fun e!2379326 () Bool)

(assert (=> b!3849487 (= e!2379326 (isPrefix!3403 (tail!5821 lt!1336596) (tail!5821 lt!1336601)))))

(declare-fun b!3849485 () Bool)

(assert (=> b!3849485 (= e!2379327 e!2379326)))

(declare-fun res!1558387 () Bool)

(assert (=> b!3849485 (=> (not res!1558387) (not e!2379326))))

(assert (=> b!3849485 (= res!1558387 (not ((_ is Nil!40788) lt!1336601)))))

(declare-fun b!3849486 () Bool)

(declare-fun res!1558384 () Bool)

(assert (=> b!3849486 (=> (not res!1558384) (not e!2379326))))

(assert (=> b!3849486 (= res!1558384 (= (head!8094 lt!1336596) (head!8094 lt!1336601)))))

(assert (= (and d!1141255 (not res!1558386)) b!3849485))

(assert (= (and b!3849485 res!1558387) b!3849486))

(assert (= (and b!3849486 res!1558384) b!3849487))

(assert (= (and d!1141255 (not res!1558385)) b!3849488))

(assert (=> b!3849488 m!4403251))

(assert (=> b!3849488 m!4403237))

(assert (=> b!3849487 m!4403381))

(assert (=> b!3849487 m!4403815))

(assert (=> b!3849487 m!4403381))

(assert (=> b!3849487 m!4403815))

(declare-fun m!4404395 () Bool)

(assert (=> b!3849487 m!4404395))

(assert (=> b!3849486 m!4403385))

(declare-fun m!4404397 () Bool)

(assert (=> b!3849486 m!4404397))

(assert (=> d!1141009 d!1141255))

(assert (=> b!3848994 d!1141231))

(assert (=> b!3848994 d!1141233))

(assert (=> b!3848994 d!1141079))

(declare-fun d!1141257 () Bool)

(assert (=> d!1141257 (= (inv!54936 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80)))) (isBalanced!3622 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80))))))))

(declare-fun bs!582801 () Bool)

(assert (= bs!582801 d!1141257))

(declare-fun m!4404399 () Bool)

(assert (=> bs!582801 m!4404399))

(assert (=> tb!221777 d!1141257))

(declare-fun d!1141259 () Bool)

(declare-fun lt!1336971 () Int)

(assert (=> d!1141259 (>= lt!1336971 0)))

(declare-fun e!2379328 () Int)

(assert (=> d!1141259 (= lt!1336971 e!2379328)))

(declare-fun c!670459 () Bool)

(assert (=> d!1141259 (= c!670459 ((_ is Nil!40788) lt!1336773))))

(assert (=> d!1141259 (= (size!30680 lt!1336773) lt!1336971)))

(declare-fun b!3849489 () Bool)

(assert (=> b!3849489 (= e!2379328 0)))

(declare-fun b!3849490 () Bool)

(assert (=> b!3849490 (= e!2379328 (+ 1 (size!30680 (t!311333 lt!1336773))))))

(assert (= (and d!1141259 c!670459) b!3849489))

(assert (= (and d!1141259 (not c!670459)) b!3849490))

(declare-fun m!4404401 () Bool)

(assert (=> b!3849490 m!4404401))

(assert (=> b!3849089 d!1141259))

(assert (=> b!3849089 d!1141027))

(assert (=> b!3849089 d!1140981))

(declare-fun d!1141261 () Bool)

(declare-fun c!670460 () Bool)

(assert (=> d!1141261 (= c!670460 ((_ is Nil!40790) lt!1336743))))

(declare-fun e!2379329 () (InoxSet Token!11746))

(assert (=> d!1141261 (= (content!6063 lt!1336743) e!2379329)))

(declare-fun b!3849491 () Bool)

(assert (=> b!3849491 (= e!2379329 ((as const (Array Token!11746 Bool)) false))))

(declare-fun b!3849492 () Bool)

(assert (=> b!3849492 (= e!2379329 ((_ map or) (store ((as const (Array Token!11746 Bool)) false) (h!46210 lt!1336743) true) (content!6063 (t!311335 lt!1336743))))))

(assert (= (and d!1141261 c!670460) b!3849491))

(assert (= (and d!1141261 (not c!670460)) b!3849492))

(declare-fun m!4404403 () Bool)

(assert (=> b!3849492 m!4404403))

(declare-fun m!4404405 () Bool)

(assert (=> b!3849492 m!4404405))

(assert (=> d!1140973 d!1141261))

(declare-fun d!1141263 () Bool)

(declare-fun c!670461 () Bool)

(assert (=> d!1141263 (= c!670461 ((_ is Nil!40790) prefixTokens!80))))

(declare-fun e!2379330 () (InoxSet Token!11746))

(assert (=> d!1141263 (= (content!6063 prefixTokens!80) e!2379330)))

(declare-fun b!3849493 () Bool)

(assert (=> b!3849493 (= e!2379330 ((as const (Array Token!11746 Bool)) false))))

(declare-fun b!3849494 () Bool)

(assert (=> b!3849494 (= e!2379330 ((_ map or) (store ((as const (Array Token!11746 Bool)) false) (h!46210 prefixTokens!80) true) (content!6063 (t!311335 prefixTokens!80))))))

(assert (= (and d!1141263 c!670461) b!3849493))

(assert (= (and d!1141263 (not c!670461)) b!3849494))

(declare-fun m!4404407 () Bool)

(assert (=> b!3849494 m!4404407))

(declare-fun m!4404409 () Bool)

(assert (=> b!3849494 m!4404409))

(assert (=> d!1140973 d!1141263))

(declare-fun d!1141265 () Bool)

(declare-fun c!670462 () Bool)

(assert (=> d!1141265 (= c!670462 ((_ is Nil!40790) suffixTokens!72))))

(declare-fun e!2379331 () (InoxSet Token!11746))

(assert (=> d!1141265 (= (content!6063 suffixTokens!72) e!2379331)))

(declare-fun b!3849495 () Bool)

(assert (=> b!3849495 (= e!2379331 ((as const (Array Token!11746 Bool)) false))))

(declare-fun b!3849496 () Bool)

(assert (=> b!3849496 (= e!2379331 ((_ map or) (store ((as const (Array Token!11746 Bool)) false) (h!46210 suffixTokens!72) true) (content!6063 (t!311335 suffixTokens!72))))))

(assert (= (and d!1141265 c!670462) b!3849495))

(assert (= (and d!1141265 (not c!670462)) b!3849496))

(declare-fun m!4404411 () Bool)

(assert (=> b!3849496 m!4404411))

(declare-fun m!4404413 () Bool)

(assert (=> b!3849496 m!4404413))

(assert (=> d!1140973 d!1141265))

(declare-fun bs!582802 () Bool)

(declare-fun d!1141267 () Bool)

(assert (= bs!582802 (and d!1141267 d!1141083)))

(declare-fun lambda!126131 () Int)

(assert (=> bs!582802 (= (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toValue!8720 (transformation!6304 (h!46211 rules!2768)))) (= lambda!126131 lambda!126120))))

(assert (=> d!1141267 true))

(assert (=> d!1141267 (< (dynLambda!17603 order!22149 (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) (dynLambda!17604 order!22151 lambda!126131))))

(assert (=> d!1141267 (= (equivClasses!2598 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) (Forall2!1030 lambda!126131))))

(declare-fun bs!582803 () Bool)

(assert (= bs!582803 d!1141267))

(declare-fun m!4404415 () Bool)

(assert (=> bs!582803 m!4404415))

(assert (=> b!3848883 d!1141267))

(declare-fun d!1141269 () Bool)

(declare-fun lt!1336972 () Int)

(assert (=> d!1141269 (>= lt!1336972 0)))

(declare-fun e!2379332 () Int)

(assert (=> d!1141269 (= lt!1336972 e!2379332)))

(declare-fun c!670463 () Bool)

(assert (=> d!1141269 (= c!670463 ((_ is Nil!40788) (t!311333 lt!1336601)))))

(assert (=> d!1141269 (= (size!30680 (t!311333 lt!1336601)) lt!1336972)))

(declare-fun b!3849497 () Bool)

(assert (=> b!3849497 (= e!2379332 0)))

(declare-fun b!3849498 () Bool)

(assert (=> b!3849498 (= e!2379332 (+ 1 (size!30680 (t!311333 (t!311333 lt!1336601)))))))

(assert (= (and d!1141269 c!670463) b!3849497))

(assert (= (and d!1141269 (not c!670463)) b!3849498))

(declare-fun m!4404417 () Bool)

(assert (=> b!3849498 m!4404417))

(assert (=> b!3849041 d!1141269))

(declare-fun b!3849499 () Bool)

(declare-fun e!2379333 () Bool)

(declare-fun lt!1336974 () tuple2!39974)

(assert (=> b!3849499 (= e!2379333 (= (_2!23121 lt!1336974) (_2!23122 (v!39013 lt!1336752))))))

(declare-fun d!1141271 () Bool)

(assert (=> d!1141271 e!2379333))

(declare-fun c!670465 () Bool)

(assert (=> d!1141271 (= c!670465 (> (size!30684 (_1!23121 lt!1336974)) 0))))

(declare-fun e!2379335 () tuple2!39974)

(assert (=> d!1141271 (= lt!1336974 e!2379335)))

(declare-fun c!670464 () Bool)

(declare-fun lt!1336975 () Option!8722)

(assert (=> d!1141271 (= c!670464 ((_ is Some!8721) lt!1336975))))

(assert (=> d!1141271 (= lt!1336975 (maxPrefix!3197 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336752))))))

(assert (=> d!1141271 (= (lexList!1661 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336752))) lt!1336974)))

(declare-fun b!3849500 () Bool)

(declare-fun e!2379334 () Bool)

(assert (=> b!3849500 (= e!2379333 e!2379334)))

(declare-fun res!1558388 () Bool)

(assert (=> b!3849500 (= res!1558388 (< (size!30680 (_2!23121 lt!1336974)) (size!30680 (_2!23122 (v!39013 lt!1336752)))))))

(assert (=> b!3849500 (=> (not res!1558388) (not e!2379334))))

(declare-fun b!3849501 () Bool)

(declare-fun lt!1336973 () tuple2!39974)

(assert (=> b!3849501 (= e!2379335 (tuple2!39975 (Cons!40790 (_1!23122 (v!39013 lt!1336975)) (_1!23121 lt!1336973)) (_2!23121 lt!1336973)))))

(assert (=> b!3849501 (= lt!1336973 (lexList!1661 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336975))))))

(declare-fun b!3849502 () Bool)

(assert (=> b!3849502 (= e!2379334 (not (isEmpty!24138 (_1!23121 lt!1336974))))))

(declare-fun b!3849503 () Bool)

(assert (=> b!3849503 (= e!2379335 (tuple2!39975 Nil!40790 (_2!23122 (v!39013 lt!1336752))))))

(assert (= (and d!1141271 c!670464) b!3849501))

(assert (= (and d!1141271 (not c!670464)) b!3849503))

(assert (= (and d!1141271 c!670465) b!3849500))

(assert (= (and d!1141271 (not c!670465)) b!3849499))

(assert (= (and b!3849500 res!1558388) b!3849502))

(declare-fun m!4404419 () Bool)

(assert (=> d!1141271 m!4404419))

(declare-fun m!4404421 () Bool)

(assert (=> d!1141271 m!4404421))

(declare-fun m!4404423 () Bool)

(assert (=> b!3849500 m!4404423))

(declare-fun m!4404425 () Bool)

(assert (=> b!3849500 m!4404425))

(declare-fun m!4404427 () Bool)

(assert (=> b!3849501 m!4404427))

(declare-fun m!4404429 () Bool)

(assert (=> b!3849502 m!4404429))

(assert (=> b!3849044 d!1141271))

(declare-fun d!1141273 () Bool)

(declare-fun lt!1336976 () Int)

(assert (=> d!1141273 (>= lt!1336976 0)))

(declare-fun e!2379336 () Int)

(assert (=> d!1141273 (= lt!1336976 e!2379336)))

(declare-fun c!670466 () Bool)

(assert (=> d!1141273 (= c!670466 ((_ is Nil!40790) (_1!23121 lt!1336739)))))

(assert (=> d!1141273 (= (size!30684 (_1!23121 lt!1336739)) lt!1336976)))

(declare-fun b!3849504 () Bool)

(assert (=> b!3849504 (= e!2379336 0)))

(declare-fun b!3849505 () Bool)

(assert (=> b!3849505 (= e!2379336 (+ 1 (size!30684 (t!311335 (_1!23121 lt!1336739)))))))

(assert (= (and d!1141273 c!670466) b!3849504))

(assert (= (and d!1141273 (not c!670466)) b!3849505))

(declare-fun m!4404431 () Bool)

(assert (=> b!3849505 m!4404431))

(assert (=> d!1140971 d!1141273))

(assert (=> d!1140971 d!1140943))

(declare-fun b!3849506 () Bool)

(declare-fun e!2379338 () List!40912)

(assert (=> b!3849506 (= e!2379338 suffix!1176)))

(declare-fun lt!1336977 () List!40912)

(declare-fun b!3849509 () Bool)

(declare-fun e!2379337 () Bool)

(assert (=> b!3849509 (= e!2379337 (or (not (= suffix!1176 Nil!40788)) (= lt!1336977 (t!311333 prefix!426))))))

(declare-fun b!3849507 () Bool)

(assert (=> b!3849507 (= e!2379338 (Cons!40788 (h!46208 (t!311333 prefix!426)) (++!10365 (t!311333 (t!311333 prefix!426)) suffix!1176)))))

(declare-fun b!3849508 () Bool)

(declare-fun res!1558389 () Bool)

(assert (=> b!3849508 (=> (not res!1558389) (not e!2379337))))

(assert (=> b!3849508 (= res!1558389 (= (size!30680 lt!1336977) (+ (size!30680 (t!311333 prefix!426)) (size!30680 suffix!1176))))))

(declare-fun d!1141275 () Bool)

(assert (=> d!1141275 e!2379337))

(declare-fun res!1558390 () Bool)

(assert (=> d!1141275 (=> (not res!1558390) (not e!2379337))))

(assert (=> d!1141275 (= res!1558390 (= (content!6064 lt!1336977) ((_ map or) (content!6064 (t!311333 prefix!426)) (content!6064 suffix!1176))))))

(assert (=> d!1141275 (= lt!1336977 e!2379338)))

(declare-fun c!670467 () Bool)

(assert (=> d!1141275 (= c!670467 ((_ is Nil!40788) (t!311333 prefix!426)))))

(assert (=> d!1141275 (= (++!10365 (t!311333 prefix!426) suffix!1176) lt!1336977)))

(assert (= (and d!1141275 c!670467) b!3849506))

(assert (= (and d!1141275 (not c!670467)) b!3849507))

(assert (= (and d!1141275 res!1558390) b!3849508))

(assert (= (and b!3849508 res!1558389) b!3849509))

(declare-fun m!4404433 () Bool)

(assert (=> b!3849507 m!4404433))

(declare-fun m!4404435 () Bool)

(assert (=> b!3849508 m!4404435))

(assert (=> b!3849508 m!4403791))

(assert (=> b!3849508 m!4403291))

(declare-fun m!4404437 () Bool)

(assert (=> d!1141275 m!4404437))

(assert (=> d!1141275 m!4404257))

(assert (=> d!1141275 m!4403745))

(assert (=> b!3849033 d!1141275))

(declare-fun d!1141277 () Bool)

(declare-fun lt!1336978 () Int)

(assert (=> d!1141277 (>= lt!1336978 0)))

(declare-fun e!2379339 () Int)

(assert (=> d!1141277 (= lt!1336978 e!2379339)))

(declare-fun c!670468 () Bool)

(assert (=> d!1141277 (= c!670468 ((_ is Nil!40788) (_2!23122 (get!13496 lt!1336693))))))

(assert (=> d!1141277 (= (size!30680 (_2!23122 (get!13496 lt!1336693))) lt!1336978)))

(declare-fun b!3849510 () Bool)

(assert (=> b!3849510 (= e!2379339 0)))

(declare-fun b!3849511 () Bool)

(assert (=> b!3849511 (= e!2379339 (+ 1 (size!30680 (t!311333 (_2!23122 (get!13496 lt!1336693))))))))

(assert (= (and d!1141277 c!670468) b!3849510))

(assert (= (and d!1141277 (not c!670468)) b!3849511))

(declare-fun m!4404439 () Bool)

(assert (=> b!3849511 m!4404439))

(assert (=> b!3848847 d!1141277))

(assert (=> b!3848847 d!1141051))

(assert (=> b!3848847 d!1140983))

(declare-fun b!3849512 () Bool)

(declare-fun res!1558391 () Bool)

(declare-fun e!2379340 () Bool)

(assert (=> b!3849512 (=> res!1558391 e!2379340)))

(assert (=> b!3849512 (= res!1558391 (not ((_ is IntegerValue!19604) (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (seqFromList!4575 lt!1336596)))))))

(declare-fun e!2379341 () Bool)

(assert (=> b!3849512 (= e!2379341 e!2379340)))

(declare-fun b!3849513 () Bool)

(declare-fun e!2379342 () Bool)

(assert (=> b!3849513 (= e!2379342 e!2379341)))

(declare-fun c!670470 () Bool)

(assert (=> b!3849513 (= c!670470 ((_ is IntegerValue!19603) (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (seqFromList!4575 lt!1336596))))))

(declare-fun b!3849514 () Bool)

(assert (=> b!3849514 (= e!2379341 (inv!17 (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (seqFromList!4575 lt!1336596))))))

(declare-fun d!1141279 () Bool)

(declare-fun c!670469 () Bool)

(assert (=> d!1141279 (= c!670469 ((_ is IntegerValue!19602) (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (seqFromList!4575 lt!1336596))))))

(assert (=> d!1141279 (= (inv!21 (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (seqFromList!4575 lt!1336596))) e!2379342)))

(declare-fun b!3849515 () Bool)

(assert (=> b!3849515 (= e!2379342 (inv!16 (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (seqFromList!4575 lt!1336596))))))

(declare-fun b!3849516 () Bool)

(assert (=> b!3849516 (= e!2379340 (inv!15 (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (seqFromList!4575 lt!1336596))))))

(assert (= (and d!1141279 c!670469) b!3849515))

(assert (= (and d!1141279 (not c!670469)) b!3849513))

(assert (= (and b!3849513 c!670470) b!3849514))

(assert (= (and b!3849513 (not c!670470)) b!3849512))

(assert (= (and b!3849512 (not res!1558391)) b!3849516))

(declare-fun m!4404441 () Bool)

(assert (=> b!3849514 m!4404441))

(declare-fun m!4404443 () Bool)

(assert (=> b!3849515 m!4404443))

(declare-fun m!4404445 () Bool)

(assert (=> b!3849516 m!4404445))

(assert (=> tb!221795 d!1141279))

(assert (=> b!3848693 d!1141155))

(assert (=> b!3848693 d!1141065))

(declare-fun d!1141281 () Bool)

(declare-fun lt!1336979 () List!40912)

(assert (=> d!1141281 (= (++!10365 (t!311333 lt!1336596) lt!1336979) (tail!5821 lt!1336601))))

(declare-fun e!2379343 () List!40912)

(assert (=> d!1141281 (= lt!1336979 e!2379343)))

(declare-fun c!670471 () Bool)

(assert (=> d!1141281 (= c!670471 ((_ is Cons!40788) (t!311333 lt!1336596)))))

(assert (=> d!1141281 (>= (size!30680 (tail!5821 lt!1336601)) (size!30680 (t!311333 lt!1336596)))))

(assert (=> d!1141281 (= (getSuffix!1858 (tail!5821 lt!1336601) (t!311333 lt!1336596)) lt!1336979)))

(declare-fun b!3849517 () Bool)

(assert (=> b!3849517 (= e!2379343 (getSuffix!1858 (tail!5821 (tail!5821 lt!1336601)) (t!311333 (t!311333 lt!1336596))))))

(declare-fun b!3849518 () Bool)

(assert (=> b!3849518 (= e!2379343 (tail!5821 lt!1336601))))

(assert (= (and d!1141281 c!670471) b!3849517))

(assert (= (and d!1141281 (not c!670471)) b!3849518))

(declare-fun m!4404447 () Bool)

(assert (=> d!1141281 m!4404447))

(assert (=> d!1141281 m!4403815))

(declare-fun m!4404449 () Bool)

(assert (=> d!1141281 m!4404449))

(assert (=> d!1141281 m!4403867))

(assert (=> b!3849517 m!4403815))

(declare-fun m!4404451 () Bool)

(assert (=> b!3849517 m!4404451))

(assert (=> b!3849517 m!4404451))

(declare-fun m!4404453 () Bool)

(assert (=> b!3849517 m!4404453))

(assert (=> b!3849077 d!1141281))

(declare-fun d!1141283 () Bool)

(assert (=> d!1141283 (= (tail!5821 lt!1336601) (t!311333 lt!1336601))))

(assert (=> b!3849077 d!1141283))

(declare-fun d!1141285 () Bool)

(assert (=> d!1141285 (= (inv!54928 (tag!7164 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (= (mod (str.len (value!200297 (tag!7164 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3849163 d!1141285))

(declare-fun d!1141287 () Bool)

(declare-fun res!1558394 () Bool)

(declare-fun e!2379346 () Bool)

(assert (=> d!1141287 (=> (not res!1558394) (not e!2379346))))

(assert (=> d!1141287 (= res!1558394 (semiInverseModEq!2699 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))))))

(assert (=> d!1141287 (= (inv!54932 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) e!2379346)))

(declare-fun b!3849521 () Bool)

(assert (=> b!3849521 (= e!2379346 (equivClasses!2598 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))))))

(assert (= (and d!1141287 res!1558394) b!3849521))

(declare-fun m!4404455 () Bool)

(assert (=> d!1141287 m!4404455))

(declare-fun m!4404457 () Bool)

(assert (=> b!3849521 m!4404457))

(assert (=> b!3849163 d!1141287))

(declare-fun bs!582804 () Bool)

(declare-fun d!1141289 () Bool)

(assert (= bs!582804 (and d!1141289 d!1141225)))

(declare-fun lambda!126132 () Int)

(assert (=> bs!582804 (= (and (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toChars!8579 (transformation!6304 (h!46211 rules!2768)))) (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toValue!8720 (transformation!6304 (h!46211 rules!2768))))) (= lambda!126132 lambda!126126))))

(declare-fun bs!582805 () Bool)

(assert (= bs!582805 (and d!1141289 d!1141235)))

(assert (=> bs!582805 (= (and (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))))) (= lambda!126132 lambda!126130))))

(assert (=> d!1141289 true))

(assert (=> d!1141289 (< (dynLambda!17605 order!22155 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) (dynLambda!17606 order!22157 lambda!126132))))

(assert (=> d!1141289 true))

(assert (=> d!1141289 (< (dynLambda!17603 order!22149 (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) (dynLambda!17606 order!22157 lambda!126132))))

(assert (=> d!1141289 (= (semiInverseModEq!2699 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) (Forall!1432 lambda!126132))))

(declare-fun bs!582806 () Bool)

(assert (= bs!582806 d!1141289))

(declare-fun m!4404459 () Bool)

(assert (=> bs!582806 m!4404459))

(assert (=> d!1140937 d!1141289))

(declare-fun d!1141291 () Bool)

(assert (=> d!1141291 (= (isEmpty!24140 lt!1336728) (not ((_ is Some!8721) lt!1336728)))))

(assert (=> d!1140943 d!1141291))

(declare-fun b!3849525 () Bool)

(declare-fun e!2379347 () Bool)

(assert (=> b!3849525 (= e!2379347 (>= (size!30680 lt!1336601) (size!30680 lt!1336601)))))

(declare-fun d!1141293 () Bool)

(assert (=> d!1141293 e!2379347))

(declare-fun res!1558396 () Bool)

(assert (=> d!1141293 (=> res!1558396 e!2379347)))

(declare-fun lt!1336982 () Bool)

(assert (=> d!1141293 (= res!1558396 (not lt!1336982))))

(declare-fun e!2379349 () Bool)

(assert (=> d!1141293 (= lt!1336982 e!2379349)))

(declare-fun res!1558397 () Bool)

(assert (=> d!1141293 (=> res!1558397 e!2379349)))

(assert (=> d!1141293 (= res!1558397 ((_ is Nil!40788) lt!1336601))))

(assert (=> d!1141293 (= (isPrefix!3403 lt!1336601 lt!1336601) lt!1336982)))

(declare-fun b!3849524 () Bool)

(declare-fun e!2379348 () Bool)

(assert (=> b!3849524 (= e!2379348 (isPrefix!3403 (tail!5821 lt!1336601) (tail!5821 lt!1336601)))))

(declare-fun b!3849522 () Bool)

(assert (=> b!3849522 (= e!2379349 e!2379348)))

(declare-fun res!1558398 () Bool)

(assert (=> b!3849522 (=> (not res!1558398) (not e!2379348))))

(assert (=> b!3849522 (= res!1558398 (not ((_ is Nil!40788) lt!1336601)))))

(declare-fun b!3849523 () Bool)

(declare-fun res!1558395 () Bool)

(assert (=> b!3849523 (=> (not res!1558395) (not e!2379348))))

(assert (=> b!3849523 (= res!1558395 (= (head!8094 lt!1336601) (head!8094 lt!1336601)))))

(assert (= (and d!1141293 (not res!1558397)) b!3849522))

(assert (= (and b!3849522 res!1558398) b!3849523))

(assert (= (and b!3849523 res!1558395) b!3849524))

(assert (= (and d!1141293 (not res!1558396)) b!3849525))

(assert (=> b!3849525 m!4403251))

(assert (=> b!3849525 m!4403251))

(assert (=> b!3849524 m!4403815))

(assert (=> b!3849524 m!4403815))

(assert (=> b!3849524 m!4403815))

(assert (=> b!3849524 m!4403815))

(declare-fun m!4404461 () Bool)

(assert (=> b!3849524 m!4404461))

(assert (=> b!3849523 m!4404397))

(assert (=> b!3849523 m!4404397))

(assert (=> d!1140943 d!1141293))

(declare-fun d!1141295 () Bool)

(assert (=> d!1141295 (isPrefix!3403 lt!1336601 lt!1336601)))

(declare-fun lt!1336986 () Unit!58460)

(declare-fun choose!22654 (List!40912 List!40912) Unit!58460)

(assert (=> d!1141295 (= lt!1336986 (choose!22654 lt!1336601 lt!1336601))))

(assert (=> d!1141295 (= (lemmaIsPrefixRefl!2170 lt!1336601 lt!1336601) lt!1336986)))

(declare-fun bs!582808 () Bool)

(assert (= bs!582808 d!1141295))

(assert (=> bs!582808 m!4403687))

(declare-fun m!4404467 () Bool)

(assert (=> bs!582808 m!4404467))

(assert (=> d!1140943 d!1141295))

(declare-fun d!1141303 () Bool)

(assert (=> d!1141303 true))

(declare-fun lt!1336994 () Bool)

(declare-fun lambda!126135 () Int)

(declare-fun forall!8286 (List!40915 Int) Bool)

(assert (=> d!1141303 (= lt!1336994 (forall!8286 rules!2768 lambda!126135))))

(declare-fun e!2379370 () Bool)

(assert (=> d!1141303 (= lt!1336994 e!2379370)))

(declare-fun res!1558415 () Bool)

(assert (=> d!1141303 (=> res!1558415 e!2379370)))

(assert (=> d!1141303 (= res!1558415 (not ((_ is Cons!40791) rules!2768)))))

(assert (=> d!1141303 (= (rulesValidInductive!2238 thiss!20629 rules!2768) lt!1336994)))

(declare-fun b!3849559 () Bool)

(declare-fun e!2379371 () Bool)

(assert (=> b!3849559 (= e!2379370 e!2379371)))

(declare-fun res!1558414 () Bool)

(assert (=> b!3849559 (=> (not res!1558414) (not e!2379371))))

(assert (=> b!3849559 (= res!1558414 (ruleValid!2256 thiss!20629 (h!46211 rules!2768)))))

(declare-fun b!3849560 () Bool)

(assert (=> b!3849560 (= e!2379371 (rulesValidInductive!2238 thiss!20629 (t!311336 rules!2768)))))

(assert (= (and d!1141303 (not res!1558415)) b!3849559))

(assert (= (and b!3849559 res!1558414) b!3849560))

(declare-fun m!4404515 () Bool)

(assert (=> d!1141303 m!4404515))

(declare-fun m!4404517 () Bool)

(assert (=> b!3849559 m!4404517))

(declare-fun m!4404519 () Bool)

(assert (=> b!3849560 m!4404519))

(assert (=> d!1140943 d!1141303))

(assert (=> b!3848852 d!1141051))

(declare-fun d!1141325 () Bool)

(assert (=> d!1141325 (= (apply!9547 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))) (seqFromList!4575 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336693))))) (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693))))) (seqFromList!4575 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336693))))))))

(declare-fun b_lambda!112509 () Bool)

(assert (=> (not b_lambda!112509) (not d!1141325)))

(declare-fun tb!221921 () Bool)

(declare-fun t!311533 () Bool)

(assert (=> (and b!3848565 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311533) tb!221921))

(declare-fun result!270430 () Bool)

(assert (=> tb!221921 (= result!270430 (inv!21 (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693))))) (seqFromList!4575 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336693)))))))))

(declare-fun m!4404521 () Bool)

(assert (=> tb!221921 m!4404521))

(assert (=> d!1141325 t!311533))

(declare-fun b_and!287403 () Bool)

(assert (= b_and!287279 (and (=> t!311533 result!270430) b_and!287403)))

(declare-fun tb!221923 () Bool)

(declare-fun t!311535 () Bool)

(assert (=> (and b!3848568 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311535) tb!221923))

(declare-fun result!270432 () Bool)

(assert (= result!270432 result!270430))

(assert (=> d!1141325 t!311535))

(declare-fun b_and!287405 () Bool)

(assert (= b_and!287281 (and (=> t!311535 result!270432) b_and!287405)))

(declare-fun tb!221925 () Bool)

(declare-fun t!311537 () Bool)

(assert (=> (and b!3849160 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311537) tb!221925))

(declare-fun result!270434 () Bool)

(assert (= result!270434 result!270430))

(assert (=> d!1141325 t!311537))

(declare-fun b_and!287407 () Bool)

(assert (= b_and!287287 (and (=> t!311537 result!270434) b_and!287407)))

(declare-fun tb!221927 () Bool)

(declare-fun t!311539 () Bool)

(assert (=> (and b!3849164 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311539) tb!221927))

(declare-fun result!270436 () Bool)

(assert (= result!270436 result!270430))

(assert (=> d!1141325 t!311539))

(declare-fun b_and!287409 () Bool)

(assert (= b_and!287291 (and (=> t!311539 result!270436) b_and!287409)))

(declare-fun tb!221929 () Bool)

(declare-fun t!311541 () Bool)

(assert (=> (and b!3848559 (= (toValue!8720 (transformation!6304 (h!46211 rules!2768))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311541) tb!221929))

(declare-fun result!270438 () Bool)

(assert (= result!270438 result!270430))

(assert (=> d!1141325 t!311541))

(declare-fun b_and!287411 () Bool)

(assert (= b_and!287277 (and (=> t!311541 result!270438) b_and!287411)))

(declare-fun tb!221931 () Bool)

(declare-fun t!311543 () Bool)

(assert (=> (and b!3849145 (= (toValue!8720 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311543) tb!221931))

(declare-fun result!270440 () Bool)

(assert (= result!270440 result!270430))

(assert (=> d!1141325 t!311543))

(declare-fun b_and!287413 () Bool)

(assert (= b_and!287283 (and (=> t!311543 result!270440) b_and!287413)))

(assert (=> d!1141325 m!4403533))

(declare-fun m!4404523 () Bool)

(assert (=> d!1141325 m!4404523))

(assert (=> b!3848852 d!1141325))

(declare-fun d!1141327 () Bool)

(assert (=> d!1141327 (= (seqFromList!4575 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336693)))) (fromListB!2109 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336693)))))))

(declare-fun bs!582811 () Bool)

(assert (= bs!582811 d!1141327))

(declare-fun m!4404525 () Bool)

(assert (=> bs!582811 m!4404525))

(assert (=> b!3848852 d!1141327))

(declare-fun b!3849563 () Bool)

(declare-fun e!2379373 () Bool)

(declare-fun lt!1336996 () tuple2!39974)

(assert (=> b!3849563 (= e!2379373 (= (_2!23121 lt!1336996) (_2!23122 (v!39013 lt!1336740))))))

(declare-fun d!1141329 () Bool)

(assert (=> d!1141329 e!2379373))

(declare-fun c!670482 () Bool)

(assert (=> d!1141329 (= c!670482 (> (size!30684 (_1!23121 lt!1336996)) 0))))

(declare-fun e!2379375 () tuple2!39974)

(assert (=> d!1141329 (= lt!1336996 e!2379375)))

(declare-fun c!670481 () Bool)

(declare-fun lt!1336997 () Option!8722)

(assert (=> d!1141329 (= c!670481 ((_ is Some!8721) lt!1336997))))

(assert (=> d!1141329 (= lt!1336997 (maxPrefix!3197 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336740))))))

(assert (=> d!1141329 (= (lexList!1661 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336740))) lt!1336996)))

(declare-fun b!3849564 () Bool)

(declare-fun e!2379374 () Bool)

(assert (=> b!3849564 (= e!2379373 e!2379374)))

(declare-fun res!1558416 () Bool)

(assert (=> b!3849564 (= res!1558416 (< (size!30680 (_2!23121 lt!1336996)) (size!30680 (_2!23122 (v!39013 lt!1336740)))))))

(assert (=> b!3849564 (=> (not res!1558416) (not e!2379374))))

(declare-fun b!3849565 () Bool)

(declare-fun lt!1336995 () tuple2!39974)

(assert (=> b!3849565 (= e!2379375 (tuple2!39975 (Cons!40790 (_1!23122 (v!39013 lt!1336997)) (_1!23121 lt!1336995)) (_2!23121 lt!1336995)))))

(assert (=> b!3849565 (= lt!1336995 (lexList!1661 thiss!20629 rules!2768 (_2!23122 (v!39013 lt!1336997))))))

(declare-fun b!3849566 () Bool)

(assert (=> b!3849566 (= e!2379374 (not (isEmpty!24138 (_1!23121 lt!1336996))))))

(declare-fun b!3849567 () Bool)

(assert (=> b!3849567 (= e!2379375 (tuple2!39975 Nil!40790 (_2!23122 (v!39013 lt!1336740))))))

(assert (= (and d!1141329 c!670481) b!3849565))

(assert (= (and d!1141329 (not c!670481)) b!3849567))

(assert (= (and d!1141329 c!670482) b!3849564))

(assert (= (and d!1141329 (not c!670482)) b!3849563))

(assert (= (and b!3849564 res!1558416) b!3849566))

(declare-fun m!4404527 () Bool)

(assert (=> d!1141329 m!4404527))

(declare-fun m!4404529 () Bool)

(assert (=> d!1141329 m!4404529))

(declare-fun m!4404531 () Bool)

(assert (=> b!3849564 m!4404531))

(declare-fun m!4404533 () Bool)

(assert (=> b!3849564 m!4404533))

(declare-fun m!4404535 () Bool)

(assert (=> b!3849565 m!4404535))

(declare-fun m!4404537 () Bool)

(assert (=> b!3849566 m!4404537))

(assert (=> b!3849009 d!1141329))

(declare-fun d!1141331 () Bool)

(declare-fun e!2379388 () Bool)

(assert (=> d!1141331 e!2379388))

(declare-fun res!1558419 () Bool)

(assert (=> d!1141331 (=> (not res!1558419) (not e!2379388))))

(declare-fun lt!1337002 () BalanceConc!24624)

(assert (=> d!1141331 (= res!1558419 (= (list!15180 lt!1337002) lt!1336596))))

(declare-fun fromList!812 (List!40912) Conc!12515)

(assert (=> d!1141331 (= lt!1337002 (BalanceConc!24625 (fromList!812 lt!1336596)))))

(assert (=> d!1141331 (= (fromListB!2109 lt!1336596) lt!1337002)))

(declare-fun b!3849590 () Bool)

(assert (=> b!3849590 (= e!2379388 (isBalanced!3622 (fromList!812 lt!1336596)))))

(assert (= (and d!1141331 res!1558419) b!3849590))

(declare-fun m!4404539 () Bool)

(assert (=> d!1141331 m!4404539))

(declare-fun m!4404541 () Bool)

(assert (=> d!1141331 m!4404541))

(assert (=> b!3849590 m!4404541))

(assert (=> b!3849590 m!4404541))

(declare-fun m!4404543 () Bool)

(assert (=> b!3849590 m!4404543))

(assert (=> d!1141007 d!1141331))

(declare-fun d!1141333 () Bool)

(declare-fun lt!1337003 () Int)

(assert (=> d!1141333 (>= lt!1337003 0)))

(declare-fun e!2379389 () Int)

(assert (=> d!1141333 (= lt!1337003 e!2379389)))

(declare-fun c!670494 () Bool)

(assert (=> d!1141333 (= c!670494 ((_ is Nil!40790) (_1!23121 lt!1336751)))))

(assert (=> d!1141333 (= (size!30684 (_1!23121 lt!1336751)) lt!1337003)))

(declare-fun b!3849591 () Bool)

(assert (=> b!3849591 (= e!2379389 0)))

(declare-fun b!3849592 () Bool)

(assert (=> b!3849592 (= e!2379389 (+ 1 (size!30684 (t!311335 (_1!23121 lt!1336751)))))))

(assert (= (and d!1141333 c!670494) b!3849591))

(assert (= (and d!1141333 (not c!670494)) b!3849592))

(declare-fun m!4404545 () Bool)

(assert (=> b!3849592 m!4404545))

(assert (=> d!1140987 d!1141333))

(declare-fun b!3849593 () Bool)

(declare-fun e!2379392 () Option!8722)

(declare-fun lt!1337007 () Option!8722)

(declare-fun lt!1337008 () Option!8722)

(assert (=> b!3849593 (= e!2379392 (ite (and ((_ is None!8721) lt!1337007) ((_ is None!8721) lt!1337008)) None!8721 (ite ((_ is None!8721) lt!1337008) lt!1337007 (ite ((_ is None!8721) lt!1337007) lt!1337008 (ite (>= (size!30679 (_1!23122 (v!39013 lt!1337007))) (size!30679 (_1!23122 (v!39013 lt!1337008)))) lt!1337007 lt!1337008)))))))

(declare-fun call!282169 () Option!8722)

(assert (=> b!3849593 (= lt!1337007 call!282169)))

(assert (=> b!3849593 (= lt!1337008 (maxPrefix!3197 thiss!20629 (t!311336 rules!2768) suffix!1176))))

(declare-fun b!3849594 () Bool)

(assert (=> b!3849594 (= e!2379392 call!282169)))

(declare-fun b!3849595 () Bool)

(declare-fun res!1558425 () Bool)

(declare-fun e!2379391 () Bool)

(assert (=> b!3849595 (=> (not res!1558425) (not e!2379391))))

(declare-fun lt!1337005 () Option!8722)

(assert (=> b!3849595 (= res!1558425 (< (size!30680 (_2!23122 (get!13496 lt!1337005))) (size!30680 suffix!1176)))))

(declare-fun b!3849596 () Bool)

(declare-fun res!1558426 () Bool)

(assert (=> b!3849596 (=> (not res!1558426) (not e!2379391))))

(assert (=> b!3849596 (= res!1558426 (= (++!10365 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1337005)))) (_2!23122 (get!13496 lt!1337005))) suffix!1176))))

(declare-fun b!3849597 () Bool)

(declare-fun res!1558423 () Bool)

(assert (=> b!3849597 (=> (not res!1558423) (not e!2379391))))

(assert (=> b!3849597 (= res!1558423 (matchR!5356 (regex!6304 (rule!9154 (_1!23122 (get!13496 lt!1337005)))) (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1337005))))))))

(declare-fun d!1141335 () Bool)

(declare-fun e!2379390 () Bool)

(assert (=> d!1141335 e!2379390))

(declare-fun res!1558420 () Bool)

(assert (=> d!1141335 (=> res!1558420 e!2379390)))

(assert (=> d!1141335 (= res!1558420 (isEmpty!24140 lt!1337005))))

(assert (=> d!1141335 (= lt!1337005 e!2379392)))

(declare-fun c!670495 () Bool)

(assert (=> d!1141335 (= c!670495 (and ((_ is Cons!40791) rules!2768) ((_ is Nil!40791) (t!311336 rules!2768))))))

(declare-fun lt!1337006 () Unit!58460)

(declare-fun lt!1337004 () Unit!58460)

(assert (=> d!1141335 (= lt!1337006 lt!1337004)))

(assert (=> d!1141335 (isPrefix!3403 suffix!1176 suffix!1176)))

(assert (=> d!1141335 (= lt!1337004 (lemmaIsPrefixRefl!2170 suffix!1176 suffix!1176))))

(assert (=> d!1141335 (rulesValidInductive!2238 thiss!20629 rules!2768)))

(assert (=> d!1141335 (= (maxPrefix!3197 thiss!20629 rules!2768 suffix!1176) lt!1337005)))

(declare-fun bm!282164 () Bool)

(assert (=> bm!282164 (= call!282169 (maxPrefixOneRule!2279 thiss!20629 (h!46211 rules!2768) suffix!1176))))

(declare-fun b!3849598 () Bool)

(declare-fun res!1558422 () Bool)

(assert (=> b!3849598 (=> (not res!1558422) (not e!2379391))))

(assert (=> b!3849598 (= res!1558422 (= (value!200298 (_1!23122 (get!13496 lt!1337005))) (apply!9547 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1337005)))) (seqFromList!4575 (originalCharacters!6904 (_1!23122 (get!13496 lt!1337005)))))))))

(declare-fun b!3849599 () Bool)

(assert (=> b!3849599 (= e!2379390 e!2379391)))

(declare-fun res!1558424 () Bool)

(assert (=> b!3849599 (=> (not res!1558424) (not e!2379391))))

(assert (=> b!3849599 (= res!1558424 (isDefined!6847 lt!1337005))))

(declare-fun b!3849600 () Bool)

(declare-fun res!1558421 () Bool)

(assert (=> b!3849600 (=> (not res!1558421) (not e!2379391))))

(assert (=> b!3849600 (= res!1558421 (= (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1337005)))) (originalCharacters!6904 (_1!23122 (get!13496 lt!1337005)))))))

(declare-fun b!3849601 () Bool)

(assert (=> b!3849601 (= e!2379391 (contains!8246 rules!2768 (rule!9154 (_1!23122 (get!13496 lt!1337005)))))))

(assert (= (and d!1141335 c!670495) b!3849594))

(assert (= (and d!1141335 (not c!670495)) b!3849593))

(assert (= (or b!3849594 b!3849593) bm!282164))

(assert (= (and d!1141335 (not res!1558420)) b!3849599))

(assert (= (and b!3849599 res!1558424) b!3849600))

(assert (= (and b!3849600 res!1558421) b!3849595))

(assert (= (and b!3849595 res!1558425) b!3849596))

(assert (= (and b!3849596 res!1558426) b!3849598))

(assert (= (and b!3849598 res!1558422) b!3849597))

(assert (= (and b!3849597 res!1558423) b!3849601))

(declare-fun m!4404547 () Bool)

(assert (=> b!3849598 m!4404547))

(declare-fun m!4404549 () Bool)

(assert (=> b!3849598 m!4404549))

(assert (=> b!3849598 m!4404549))

(declare-fun m!4404551 () Bool)

(assert (=> b!3849598 m!4404551))

(declare-fun m!4404553 () Bool)

(assert (=> d!1141335 m!4404553))

(declare-fun m!4404555 () Bool)

(assert (=> d!1141335 m!4404555))

(declare-fun m!4404557 () Bool)

(assert (=> d!1141335 m!4404557))

(assert (=> d!1141335 m!4403691))

(assert (=> b!3849601 m!4404547))

(declare-fun m!4404559 () Bool)

(assert (=> b!3849601 m!4404559))

(assert (=> b!3849596 m!4404547))

(declare-fun m!4404561 () Bool)

(assert (=> b!3849596 m!4404561))

(assert (=> b!3849596 m!4404561))

(declare-fun m!4404563 () Bool)

(assert (=> b!3849596 m!4404563))

(assert (=> b!3849596 m!4404563))

(declare-fun m!4404565 () Bool)

(assert (=> b!3849596 m!4404565))

(assert (=> b!3849595 m!4404547))

(declare-fun m!4404567 () Bool)

(assert (=> b!3849595 m!4404567))

(assert (=> b!3849595 m!4403291))

(declare-fun m!4404569 () Bool)

(assert (=> b!3849593 m!4404569))

(assert (=> b!3849600 m!4404547))

(assert (=> b!3849600 m!4404561))

(assert (=> b!3849600 m!4404561))

(assert (=> b!3849600 m!4404563))

(declare-fun m!4404571 () Bool)

(assert (=> bm!282164 m!4404571))

(assert (=> b!3849597 m!4404547))

(assert (=> b!3849597 m!4404561))

(assert (=> b!3849597 m!4404561))

(assert (=> b!3849597 m!4404563))

(assert (=> b!3849597 m!4404563))

(declare-fun m!4404573 () Bool)

(assert (=> b!3849597 m!4404573))

(declare-fun m!4404575 () Bool)

(assert (=> b!3849599 m!4404575))

(assert (=> d!1140987 d!1141335))

(declare-fun b!3849602 () Bool)

(declare-fun e!2379395 () Option!8722)

(declare-fun lt!1337012 () Option!8722)

(declare-fun lt!1337013 () Option!8722)

(assert (=> b!3849602 (= e!2379395 (ite (and ((_ is None!8721) lt!1337012) ((_ is None!8721) lt!1337013)) None!8721 (ite ((_ is None!8721) lt!1337013) lt!1337012 (ite ((_ is None!8721) lt!1337012) lt!1337013 (ite (>= (size!30679 (_1!23122 (v!39013 lt!1337012))) (size!30679 (_1!23122 (v!39013 lt!1337013)))) lt!1337012 lt!1337013)))))))

(declare-fun call!282170 () Option!8722)

(assert (=> b!3849602 (= lt!1337012 call!282170)))

(assert (=> b!3849602 (= lt!1337013 (maxPrefix!3197 thiss!20629 (t!311336 (t!311336 rules!2768)) lt!1336601))))

(declare-fun b!3849603 () Bool)

(assert (=> b!3849603 (= e!2379395 call!282170)))

(declare-fun b!3849604 () Bool)

(declare-fun res!1558432 () Bool)

(declare-fun e!2379394 () Bool)

(assert (=> b!3849604 (=> (not res!1558432) (not e!2379394))))

(declare-fun lt!1337010 () Option!8722)

(assert (=> b!3849604 (= res!1558432 (< (size!30680 (_2!23122 (get!13496 lt!1337010))) (size!30680 lt!1336601)))))

(declare-fun b!3849605 () Bool)

(declare-fun res!1558433 () Bool)

(assert (=> b!3849605 (=> (not res!1558433) (not e!2379394))))

(assert (=> b!3849605 (= res!1558433 (= (++!10365 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1337010)))) (_2!23122 (get!13496 lt!1337010))) lt!1336601))))

(declare-fun b!3849606 () Bool)

(declare-fun res!1558430 () Bool)

(assert (=> b!3849606 (=> (not res!1558430) (not e!2379394))))

(assert (=> b!3849606 (= res!1558430 (matchR!5356 (regex!6304 (rule!9154 (_1!23122 (get!13496 lt!1337010)))) (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1337010))))))))

(declare-fun d!1141337 () Bool)

(declare-fun e!2379393 () Bool)

(assert (=> d!1141337 e!2379393))

(declare-fun res!1558427 () Bool)

(assert (=> d!1141337 (=> res!1558427 e!2379393)))

(assert (=> d!1141337 (= res!1558427 (isEmpty!24140 lt!1337010))))

(assert (=> d!1141337 (= lt!1337010 e!2379395)))

(declare-fun c!670496 () Bool)

(assert (=> d!1141337 (= c!670496 (and ((_ is Cons!40791) (t!311336 rules!2768)) ((_ is Nil!40791) (t!311336 (t!311336 rules!2768)))))))

(declare-fun lt!1337011 () Unit!58460)

(declare-fun lt!1337009 () Unit!58460)

(assert (=> d!1141337 (= lt!1337011 lt!1337009)))

(assert (=> d!1141337 (isPrefix!3403 lt!1336601 lt!1336601)))

(assert (=> d!1141337 (= lt!1337009 (lemmaIsPrefixRefl!2170 lt!1336601 lt!1336601))))

(assert (=> d!1141337 (rulesValidInductive!2238 thiss!20629 (t!311336 rules!2768))))

(assert (=> d!1141337 (= (maxPrefix!3197 thiss!20629 (t!311336 rules!2768) lt!1336601) lt!1337010)))

(declare-fun bm!282165 () Bool)

(assert (=> bm!282165 (= call!282170 (maxPrefixOneRule!2279 thiss!20629 (h!46211 (t!311336 rules!2768)) lt!1336601))))

(declare-fun b!3849607 () Bool)

(declare-fun res!1558429 () Bool)

(assert (=> b!3849607 (=> (not res!1558429) (not e!2379394))))

(assert (=> b!3849607 (= res!1558429 (= (value!200298 (_1!23122 (get!13496 lt!1337010))) (apply!9547 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1337010)))) (seqFromList!4575 (originalCharacters!6904 (_1!23122 (get!13496 lt!1337010)))))))))

(declare-fun b!3849608 () Bool)

(assert (=> b!3849608 (= e!2379393 e!2379394)))

(declare-fun res!1558431 () Bool)

(assert (=> b!3849608 (=> (not res!1558431) (not e!2379394))))

(assert (=> b!3849608 (= res!1558431 (isDefined!6847 lt!1337010))))

(declare-fun b!3849609 () Bool)

(declare-fun res!1558428 () Bool)

(assert (=> b!3849609 (=> (not res!1558428) (not e!2379394))))

(assert (=> b!3849609 (= res!1558428 (= (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1337010)))) (originalCharacters!6904 (_1!23122 (get!13496 lt!1337010)))))))

(declare-fun b!3849610 () Bool)

(assert (=> b!3849610 (= e!2379394 (contains!8246 (t!311336 rules!2768) (rule!9154 (_1!23122 (get!13496 lt!1337010)))))))

(assert (= (and d!1141337 c!670496) b!3849603))

(assert (= (and d!1141337 (not c!670496)) b!3849602))

(assert (= (or b!3849603 b!3849602) bm!282165))

(assert (= (and d!1141337 (not res!1558427)) b!3849608))

(assert (= (and b!3849608 res!1558431) b!3849609))

(assert (= (and b!3849609 res!1558428) b!3849604))

(assert (= (and b!3849604 res!1558432) b!3849605))

(assert (= (and b!3849605 res!1558433) b!3849607))

(assert (= (and b!3849607 res!1558429) b!3849606))

(assert (= (and b!3849606 res!1558430) b!3849610))

(declare-fun m!4404585 () Bool)

(assert (=> b!3849607 m!4404585))

(declare-fun m!4404587 () Bool)

(assert (=> b!3849607 m!4404587))

(assert (=> b!3849607 m!4404587))

(declare-fun m!4404589 () Bool)

(assert (=> b!3849607 m!4404589))

(declare-fun m!4404591 () Bool)

(assert (=> d!1141337 m!4404591))

(assert (=> d!1141337 m!4403687))

(assert (=> d!1141337 m!4403689))

(assert (=> d!1141337 m!4404519))

(assert (=> b!3849610 m!4404585))

(declare-fun m!4404593 () Bool)

(assert (=> b!3849610 m!4404593))

(assert (=> b!3849605 m!4404585))

(declare-fun m!4404595 () Bool)

(assert (=> b!3849605 m!4404595))

(assert (=> b!3849605 m!4404595))

(declare-fun m!4404597 () Bool)

(assert (=> b!3849605 m!4404597))

(assert (=> b!3849605 m!4404597))

(declare-fun m!4404599 () Bool)

(assert (=> b!3849605 m!4404599))

(assert (=> b!3849604 m!4404585))

(declare-fun m!4404601 () Bool)

(assert (=> b!3849604 m!4404601))

(assert (=> b!3849604 m!4403251))

(declare-fun m!4404603 () Bool)

(assert (=> b!3849602 m!4404603))

(assert (=> b!3849609 m!4404585))

(assert (=> b!3849609 m!4404595))

(assert (=> b!3849609 m!4404595))

(assert (=> b!3849609 m!4404597))

(declare-fun m!4404607 () Bool)

(assert (=> bm!282165 m!4404607))

(assert (=> b!3849606 m!4404585))

(assert (=> b!3849606 m!4404595))

(assert (=> b!3849606 m!4404595))

(assert (=> b!3849606 m!4404597))

(assert (=> b!3849606 m!4404597))

(declare-fun m!4404609 () Bool)

(assert (=> b!3849606 m!4404609))

(declare-fun m!4404611 () Bool)

(assert (=> b!3849608 m!4404611))

(assert (=> b!3848987 d!1141337))

(declare-fun d!1141347 () Bool)

(declare-fun c!670506 () Bool)

(assert (=> d!1141347 (= c!670506 ((_ is Node!12515) (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591)))))))))

(declare-fun e!2379411 () Bool)

(assert (=> d!1141347 (= (inv!54935 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591)))))) e!2379411)))

(declare-fun b!3849641 () Bool)

(declare-fun inv!54939 (Conc!12515) Bool)

(assert (=> b!3849641 (= e!2379411 (inv!54939 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591)))))))))

(declare-fun b!3849642 () Bool)

(declare-fun e!2379412 () Bool)

(assert (=> b!3849642 (= e!2379411 e!2379412)))

(declare-fun res!1558445 () Bool)

(assert (=> b!3849642 (= res!1558445 (not ((_ is Leaf!19374) (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591))))))))))

(assert (=> b!3849642 (=> res!1558445 e!2379412)))

(declare-fun b!3849643 () Bool)

(declare-fun inv!54940 (Conc!12515) Bool)

(assert (=> b!3849643 (= e!2379412 (inv!54940 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591)))))))))

(assert (= (and d!1141347 c!670506) b!3849641))

(assert (= (and d!1141347 (not c!670506)) b!3849642))

(assert (= (and b!3849642 (not res!1558445)) b!3849643))

(declare-fun m!4404627 () Bool)

(assert (=> b!3849641 m!4404627))

(declare-fun m!4404629 () Bool)

(assert (=> b!3849643 m!4404629))

(assert (=> b!3849079 d!1141347))

(declare-fun d!1141353 () Bool)

(assert (=> d!1141353 (= (isEmpty!24136 lt!1336596) ((_ is Nil!40788) lt!1336596))))

(assert (=> d!1140885 d!1141353))

(declare-fun bm!282177 () Bool)

(declare-fun call!282182 () Bool)

(declare-fun call!282184 () Bool)

(assert (=> bm!282177 (= call!282182 call!282184)))

(declare-fun b!3849682 () Bool)

(declare-fun e!2379439 () Bool)

(declare-fun e!2379440 () Bool)

(assert (=> b!3849682 (= e!2379439 e!2379440)))

(declare-fun c!670521 () Bool)

(assert (=> b!3849682 (= c!670521 ((_ is Star!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(declare-fun b!3849683 () Bool)

(declare-fun e!2379443 () Bool)

(assert (=> b!3849683 (= e!2379443 call!282182)))

(declare-fun bm!282178 () Bool)

(declare-fun call!282183 () Bool)

(declare-fun c!670522 () Bool)

(assert (=> bm!282178 (= call!282183 (validRegex!5098 (ite c!670522 (regTwo!22931 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (regOne!22930 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))))

(declare-fun d!1141355 () Bool)

(declare-fun res!1558460 () Bool)

(assert (=> d!1141355 (=> res!1558460 e!2379439)))

(assert (=> d!1141355 (= res!1558460 ((_ is ElementMatch!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(assert (=> d!1141355 (= (validRegex!5098 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) e!2379439)))

(declare-fun b!3849684 () Bool)

(declare-fun e!2379441 () Bool)

(assert (=> b!3849684 (= e!2379440 e!2379441)))

(declare-fun res!1558456 () Bool)

(assert (=> b!3849684 (= res!1558456 (not (nullable!3899 (reg!11538 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))))

(assert (=> b!3849684 (=> (not res!1558456) (not e!2379441))))

(declare-fun b!3849685 () Bool)

(assert (=> b!3849685 (= e!2379441 call!282184)))

(declare-fun bm!282179 () Bool)

(assert (=> bm!282179 (= call!282184 (validRegex!5098 (ite c!670521 (reg!11538 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (ite c!670522 (regOne!22931 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (regTwo!22930 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))))))

(declare-fun b!3849686 () Bool)

(declare-fun e!2379437 () Bool)

(assert (=> b!3849686 (= e!2379437 e!2379443)))

(declare-fun res!1558459 () Bool)

(assert (=> b!3849686 (=> (not res!1558459) (not e!2379443))))

(assert (=> b!3849686 (= res!1558459 call!282183)))

(declare-fun b!3849687 () Bool)

(declare-fun e!2379438 () Bool)

(assert (=> b!3849687 (= e!2379438 call!282183)))

(declare-fun b!3849688 () Bool)

(declare-fun res!1558458 () Bool)

(assert (=> b!3849688 (=> res!1558458 e!2379437)))

(assert (=> b!3849688 (= res!1558458 (not ((_ is Concat!17744) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))))

(declare-fun e!2379442 () Bool)

(assert (=> b!3849688 (= e!2379442 e!2379437)))

(declare-fun b!3849689 () Bool)

(declare-fun res!1558457 () Bool)

(assert (=> b!3849689 (=> (not res!1558457) (not e!2379438))))

(assert (=> b!3849689 (= res!1558457 call!282182)))

(assert (=> b!3849689 (= e!2379442 e!2379438)))

(declare-fun b!3849690 () Bool)

(assert (=> b!3849690 (= e!2379440 e!2379442)))

(assert (=> b!3849690 (= c!670522 ((_ is Union!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(assert (= (and d!1141355 (not res!1558460)) b!3849682))

(assert (= (and b!3849682 c!670521) b!3849684))

(assert (= (and b!3849682 (not c!670521)) b!3849690))

(assert (= (and b!3849684 res!1558456) b!3849685))

(assert (= (and b!3849690 c!670522) b!3849689))

(assert (= (and b!3849690 (not c!670522)) b!3849688))

(assert (= (and b!3849689 res!1558457) b!3849687))

(assert (= (and b!3849688 (not res!1558458)) b!3849686))

(assert (= (and b!3849686 res!1558459) b!3849683))

(assert (= (or b!3849687 b!3849686) bm!282178))

(assert (= (or b!3849689 b!3849683) bm!282177))

(assert (= (or b!3849685 bm!282177) bm!282179))

(declare-fun m!4404677 () Bool)

(assert (=> bm!282178 m!4404677))

(declare-fun m!4404679 () Bool)

(assert (=> b!3849684 m!4404679))

(declare-fun m!4404681 () Bool)

(assert (=> bm!282179 m!4404681))

(assert (=> d!1140885 d!1141355))

(declare-fun d!1141377 () Bool)

(assert (=> d!1141377 (= (inv!54928 (tag!7164 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (= (mod (str.len (value!200297 (tag!7164 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3849159 d!1141377))

(declare-fun d!1141379 () Bool)

(declare-fun res!1558461 () Bool)

(declare-fun e!2379445 () Bool)

(assert (=> d!1141379 (=> (not res!1558461) (not e!2379445))))

(assert (=> d!1141379 (= res!1558461 (semiInverseModEq!2699 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))))))

(assert (=> d!1141379 (= (inv!54932 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) e!2379445)))

(declare-fun b!3849693 () Bool)

(assert (=> b!3849693 (= e!2379445 (equivClasses!2598 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))))))

(assert (= (and d!1141379 res!1558461) b!3849693))

(declare-fun m!4404683 () Bool)

(assert (=> d!1141379 m!4404683))

(declare-fun m!4404685 () Bool)

(assert (=> b!3849693 m!4404685))

(assert (=> b!3849159 d!1141379))

(assert (=> d!1141025 d!1141355))

(declare-fun d!1141381 () Bool)

(declare-fun c!670524 () Bool)

(assert (=> d!1141381 (= c!670524 ((_ is Node!12515) (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80))))))))

(declare-fun e!2379446 () Bool)

(assert (=> d!1141381 (= (inv!54935 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80))))) e!2379446)))

(declare-fun b!3849694 () Bool)

(assert (=> b!3849694 (= e!2379446 (inv!54939 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80))))))))

(declare-fun b!3849695 () Bool)

(declare-fun e!2379447 () Bool)

(assert (=> b!3849695 (= e!2379446 e!2379447)))

(declare-fun res!1558462 () Bool)

(assert (=> b!3849695 (= res!1558462 (not ((_ is Leaf!19374) (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80)))))))))

(assert (=> b!3849695 (=> res!1558462 e!2379447)))

(declare-fun b!3849696 () Bool)

(assert (=> b!3849696 (= e!2379447 (inv!54940 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80))))))))

(assert (= (and d!1141381 c!670524) b!3849694))

(assert (= (and d!1141381 (not c!670524)) b!3849695))

(assert (= (and b!3849695 (not res!1558462)) b!3849696))

(declare-fun m!4404689 () Bool)

(assert (=> b!3849694 m!4404689))

(declare-fun m!4404691 () Bool)

(assert (=> b!3849696 m!4404691))

(assert (=> b!3849057 d!1141381))

(declare-fun d!1141387 () Bool)

(assert (=> d!1141387 (= (inv!15 (value!200298 (h!46210 prefixTokens!80))) (= (charsToBigInt!0 (text!46187 (value!200298 (h!46210 prefixTokens!80))) 0) (value!200293 (value!200298 (h!46210 prefixTokens!80)))))))

(declare-fun bs!582815 () Bool)

(assert (= bs!582815 d!1141387))

(declare-fun m!4404693 () Bool)

(assert (=> bs!582815 m!4404693))

(assert (=> b!3848608 d!1141387))

(declare-fun b!3849697 () Bool)

(declare-fun e!2379448 () Bool)

(assert (=> b!3849697 (= e!2379448 (not (= (head!8094 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728))))) (c!670246 (regex!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728))))))))))

(declare-fun b!3849698 () Bool)

(declare-fun e!2379450 () Bool)

(assert (=> b!3849698 (= e!2379450 (= (head!8094 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728))))) (c!670246 (regex!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))))))

(declare-fun b!3849699 () Bool)

(declare-fun e!2379451 () Bool)

(assert (=> b!3849699 (= e!2379451 (nullable!3899 (regex!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728))))))))

(declare-fun b!3849700 () Bool)

(declare-fun e!2379449 () Bool)

(declare-fun lt!1337027 () Bool)

(assert (=> b!3849700 (= e!2379449 (not lt!1337027))))

(declare-fun b!3849701 () Bool)

(declare-fun e!2379453 () Bool)

(assert (=> b!3849701 (= e!2379453 e!2379448)))

(declare-fun res!1558469 () Bool)

(assert (=> b!3849701 (=> res!1558469 e!2379448)))

(declare-fun call!282185 () Bool)

(assert (=> b!3849701 (= res!1558469 call!282185)))

(declare-fun b!3849702 () Bool)

(declare-fun res!1558463 () Bool)

(assert (=> b!3849702 (=> (not res!1558463) (not e!2379450))))

(assert (=> b!3849702 (= res!1558463 (not call!282185))))

(declare-fun b!3849703 () Bool)

(declare-fun e!2379452 () Bool)

(assert (=> b!3849703 (= e!2379452 e!2379449)))

(declare-fun c!670527 () Bool)

(assert (=> b!3849703 (= c!670527 ((_ is EmptyLang!11209) (regex!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728))))))))

(declare-fun b!3849704 () Bool)

(assert (=> b!3849704 (= e!2379452 (= lt!1337027 call!282185))))

(declare-fun d!1141389 () Bool)

(assert (=> d!1141389 e!2379452))

(declare-fun c!670525 () Bool)

(assert (=> d!1141389 (= c!670525 ((_ is EmptyExpr!11209) (regex!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728))))))))

(assert (=> d!1141389 (= lt!1337027 e!2379451)))

(declare-fun c!670526 () Bool)

(assert (=> d!1141389 (= c!670526 (isEmpty!24136 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728))))))))

(assert (=> d!1141389 (validRegex!5098 (regex!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))))

(assert (=> d!1141389 (= (matchR!5356 (regex!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))) (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728))))) lt!1337027)))

(declare-fun b!3849705 () Bool)

(declare-fun res!1558468 () Bool)

(declare-fun e!2379454 () Bool)

(assert (=> b!3849705 (=> res!1558468 e!2379454)))

(assert (=> b!3849705 (= res!1558468 e!2379450)))

(declare-fun res!1558470 () Bool)

(assert (=> b!3849705 (=> (not res!1558470) (not e!2379450))))

(assert (=> b!3849705 (= res!1558470 lt!1337027)))

(declare-fun bm!282180 () Bool)

(assert (=> bm!282180 (= call!282185 (isEmpty!24136 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728))))))))

(declare-fun b!3849706 () Bool)

(declare-fun res!1558465 () Bool)

(assert (=> b!3849706 (=> (not res!1558465) (not e!2379450))))

(assert (=> b!3849706 (= res!1558465 (isEmpty!24136 (tail!5821 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728)))))))))

(declare-fun b!3849707 () Bool)

(declare-fun res!1558464 () Bool)

(assert (=> b!3849707 (=> res!1558464 e!2379454)))

(assert (=> b!3849707 (= res!1558464 (not ((_ is ElementMatch!11209) (regex!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))))))

(assert (=> b!3849707 (= e!2379449 e!2379454)))

(declare-fun b!3849708 () Bool)

(declare-fun res!1558466 () Bool)

(assert (=> b!3849708 (=> res!1558466 e!2379448)))

(assert (=> b!3849708 (= res!1558466 (not (isEmpty!24136 (tail!5821 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728))))))))))

(declare-fun b!3849709 () Bool)

(assert (=> b!3849709 (= e!2379454 e!2379453)))

(declare-fun res!1558467 () Bool)

(assert (=> b!3849709 (=> (not res!1558467) (not e!2379453))))

(assert (=> b!3849709 (= res!1558467 (not lt!1337027))))

(declare-fun b!3849710 () Bool)

(assert (=> b!3849710 (= e!2379451 (matchR!5356 (derivativeStep!3397 (regex!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))) (head!8094 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728)))))) (tail!5821 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336728)))))))))

(assert (= (and d!1141389 c!670526) b!3849699))

(assert (= (and d!1141389 (not c!670526)) b!3849710))

(assert (= (and d!1141389 c!670525) b!3849704))

(assert (= (and d!1141389 (not c!670525)) b!3849703))

(assert (= (and b!3849703 c!670527) b!3849700))

(assert (= (and b!3849703 (not c!670527)) b!3849707))

(assert (= (and b!3849707 (not res!1558464)) b!3849705))

(assert (= (and b!3849705 res!1558470) b!3849702))

(assert (= (and b!3849702 res!1558463) b!3849706))

(assert (= (and b!3849706 res!1558465) b!3849698))

(assert (= (and b!3849705 (not res!1558468)) b!3849709))

(assert (= (and b!3849709 res!1558467) b!3849701))

(assert (= (and b!3849701 (not res!1558469)) b!3849708))

(assert (= (and b!3849708 (not res!1558466)) b!3849697))

(assert (= (or b!3849704 b!3849701 b!3849702) bm!282180))

(assert (=> d!1141389 m!4403697))

(declare-fun m!4404699 () Bool)

(assert (=> d!1141389 m!4404699))

(declare-fun m!4404703 () Bool)

(assert (=> d!1141389 m!4404703))

(assert (=> b!3849708 m!4403697))

(declare-fun m!4404707 () Bool)

(assert (=> b!3849708 m!4404707))

(assert (=> b!3849708 m!4404707))

(declare-fun m!4404711 () Bool)

(assert (=> b!3849708 m!4404711))

(assert (=> b!3849697 m!4403697))

(declare-fun m!4404713 () Bool)

(assert (=> b!3849697 m!4404713))

(assert (=> b!3849706 m!4403697))

(assert (=> b!3849706 m!4404707))

(assert (=> b!3849706 m!4404707))

(assert (=> b!3849706 m!4404711))

(assert (=> b!3849710 m!4403697))

(assert (=> b!3849710 m!4404713))

(assert (=> b!3849710 m!4404713))

(declare-fun m!4404715 () Bool)

(assert (=> b!3849710 m!4404715))

(assert (=> b!3849710 m!4403697))

(assert (=> b!3849710 m!4404707))

(assert (=> b!3849710 m!4404715))

(assert (=> b!3849710 m!4404707))

(declare-fun m!4404717 () Bool)

(assert (=> b!3849710 m!4404717))

(assert (=> bm!282180 m!4403697))

(assert (=> bm!282180 m!4404699))

(assert (=> b!3849698 m!4403697))

(assert (=> b!3849698 m!4404713))

(declare-fun m!4404727 () Bool)

(assert (=> b!3849699 m!4404727))

(assert (=> b!3848991 d!1141389))

(assert (=> b!3848991 d!1141079))

(assert (=> b!3848991 d!1141231))

(assert (=> b!3848991 d!1141233))

(declare-fun d!1141403 () Bool)

(assert (=> d!1141403 (= (list!15180 lt!1336766) (list!15182 (c!670247 lt!1336766)))))

(declare-fun bs!582821 () Bool)

(assert (= bs!582821 d!1141403))

(declare-fun m!4404731 () Bool)

(assert (=> bs!582821 m!4404731))

(assert (=> d!1141011 d!1141403))

(declare-fun b!3849735 () Bool)

(declare-fun e!2379466 () Bool)

(assert (=> b!3849735 (= e!2379466 (>= (size!30680 (++!10365 lt!1336596 (_2!23122 (v!39013 lt!1336591)))) (size!30680 lt!1336596)))))

(declare-fun d!1141407 () Bool)

(assert (=> d!1141407 e!2379466))

(declare-fun res!1558483 () Bool)

(assert (=> d!1141407 (=> res!1558483 e!2379466)))

(declare-fun lt!1337031 () Bool)

(assert (=> d!1141407 (= res!1558483 (not lt!1337031))))

(declare-fun e!2379468 () Bool)

(assert (=> d!1141407 (= lt!1337031 e!2379468)))

(declare-fun res!1558484 () Bool)

(assert (=> d!1141407 (=> res!1558484 e!2379468)))

(assert (=> d!1141407 (= res!1558484 ((_ is Nil!40788) lt!1336596))))

(assert (=> d!1141407 (= (isPrefix!3403 lt!1336596 (++!10365 lt!1336596 (_2!23122 (v!39013 lt!1336591)))) lt!1337031)))

(declare-fun b!3849734 () Bool)

(declare-fun e!2379467 () Bool)

(assert (=> b!3849734 (= e!2379467 (isPrefix!3403 (tail!5821 lt!1336596) (tail!5821 (++!10365 lt!1336596 (_2!23122 (v!39013 lt!1336591))))))))

(declare-fun b!3849732 () Bool)

(assert (=> b!3849732 (= e!2379468 e!2379467)))

(declare-fun res!1558485 () Bool)

(assert (=> b!3849732 (=> (not res!1558485) (not e!2379467))))

(assert (=> b!3849732 (= res!1558485 (not ((_ is Nil!40788) (++!10365 lt!1336596 (_2!23122 (v!39013 lt!1336591))))))))

(declare-fun b!3849733 () Bool)

(declare-fun res!1558482 () Bool)

(assert (=> b!3849733 (=> (not res!1558482) (not e!2379467))))

(assert (=> b!3849733 (= res!1558482 (= (head!8094 lt!1336596) (head!8094 (++!10365 lt!1336596 (_2!23122 (v!39013 lt!1336591))))))))

(assert (= (and d!1141407 (not res!1558484)) b!3849732))

(assert (= (and b!3849732 res!1558485) b!3849733))

(assert (= (and b!3849733 res!1558482) b!3849734))

(assert (= (and d!1141407 (not res!1558483)) b!3849735))

(assert (=> b!3849735 m!4403227))

(declare-fun m!4404733 () Bool)

(assert (=> b!3849735 m!4404733))

(assert (=> b!3849735 m!4403237))

(assert (=> b!3849734 m!4403381))

(assert (=> b!3849734 m!4403227))

(declare-fun m!4404735 () Bool)

(assert (=> b!3849734 m!4404735))

(assert (=> b!3849734 m!4403381))

(assert (=> b!3849734 m!4404735))

(declare-fun m!4404737 () Bool)

(assert (=> b!3849734 m!4404737))

(assert (=> b!3849733 m!4403385))

(assert (=> b!3849733 m!4403227))

(declare-fun m!4404739 () Bool)

(assert (=> b!3849733 m!4404739))

(assert (=> d!1141005 d!1141407))

(assert (=> d!1141005 d!1141023))

(declare-fun d!1141409 () Bool)

(assert (=> d!1141409 (isPrefix!3403 lt!1336596 (++!10365 lt!1336596 (_2!23122 (v!39013 lt!1336591))))))

(assert (=> d!1141409 true))

(declare-fun _$46!1508 () Unit!58460)

(assert (=> d!1141409 (= (choose!22650 lt!1336596 (_2!23122 (v!39013 lt!1336591))) _$46!1508)))

(declare-fun bs!582822 () Bool)

(assert (= bs!582822 d!1141409))

(assert (=> bs!582822 m!4403227))

(assert (=> bs!582822 m!4403227))

(assert (=> bs!582822 m!4403819))

(assert (=> d!1141005 d!1141409))

(declare-fun b!3849740 () Bool)

(declare-fun e!2379474 () Bool)

(declare-fun e!2379473 () Bool)

(assert (=> b!3849740 (= e!2379474 e!2379473)))

(declare-fun res!1558487 () Bool)

(assert (=> b!3849740 (=> (not res!1558487) (not e!2379473))))

(declare-fun lt!1337035 () Option!8722)

(assert (=> b!3849740 (= res!1558487 (matchR!5356 (regex!6304 (h!46211 rules!2768)) (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1337035))))))))

(declare-fun b!3849741 () Bool)

(declare-fun res!1558492 () Bool)

(assert (=> b!3849741 (=> (not res!1558492) (not e!2379473))))

(assert (=> b!3849741 (= res!1558492 (= (++!10365 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1337035)))) (_2!23122 (get!13496 lt!1337035))) lt!1336601))))

(declare-fun b!3849742 () Bool)

(declare-fun res!1558489 () Bool)

(assert (=> b!3849742 (=> (not res!1558489) (not e!2379473))))

(assert (=> b!3849742 (= res!1558489 (< (size!30680 (_2!23122 (get!13496 lt!1337035))) (size!30680 lt!1336601)))))

(declare-fun b!3849743 () Bool)

(declare-fun e!2379471 () Bool)

(assert (=> b!3849743 (= e!2379471 (matchR!5356 (regex!6304 (h!46211 rules!2768)) (_1!23123 (findLongestMatchInner!1165 (regex!6304 (h!46211 rules!2768)) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601)))))))

(declare-fun b!3849745 () Bool)

(declare-fun res!1558486 () Bool)

(assert (=> b!3849745 (=> (not res!1558486) (not e!2379473))))

(assert (=> b!3849745 (= res!1558486 (= (rule!9154 (_1!23122 (get!13496 lt!1337035))) (h!46211 rules!2768)))))

(declare-fun b!3849744 () Bool)

(declare-fun e!2379472 () Option!8722)

(assert (=> b!3849744 (= e!2379472 None!8721)))

(declare-fun d!1141415 () Bool)

(assert (=> d!1141415 e!2379474))

(declare-fun res!1558490 () Bool)

(assert (=> d!1141415 (=> res!1558490 e!2379474)))

(assert (=> d!1141415 (= res!1558490 (isEmpty!24140 lt!1337035))))

(assert (=> d!1141415 (= lt!1337035 e!2379472)))

(declare-fun c!670535 () Bool)

(declare-fun lt!1337033 () tuple2!39978)

(assert (=> d!1141415 (= c!670535 (isEmpty!24136 (_1!23123 lt!1337033)))))

(assert (=> d!1141415 (= lt!1337033 (findLongestMatch!1078 (regex!6304 (h!46211 rules!2768)) lt!1336601))))

(assert (=> d!1141415 (ruleValid!2256 thiss!20629 (h!46211 rules!2768))))

(assert (=> d!1141415 (= (maxPrefixOneRule!2279 thiss!20629 (h!46211 rules!2768) lt!1336601) lt!1337035)))

(declare-fun b!3849746 () Bool)

(assert (=> b!3849746 (= e!2379473 (= (size!30679 (_1!23122 (get!13496 lt!1337035))) (size!30680 (originalCharacters!6904 (_1!23122 (get!13496 lt!1337035))))))))

(declare-fun b!3849747 () Bool)

(declare-fun res!1558491 () Bool)

(assert (=> b!3849747 (=> (not res!1558491) (not e!2379473))))

(assert (=> b!3849747 (= res!1558491 (= (value!200298 (_1!23122 (get!13496 lt!1337035))) (apply!9547 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1337035)))) (seqFromList!4575 (originalCharacters!6904 (_1!23122 (get!13496 lt!1337035)))))))))

(declare-fun b!3849748 () Bool)

(assert (=> b!3849748 (= e!2379472 (Some!8721 (tuple2!39977 (Token!11747 (apply!9547 (transformation!6304 (h!46211 rules!2768)) (seqFromList!4575 (_1!23123 lt!1337033))) (h!46211 rules!2768) (size!30682 (seqFromList!4575 (_1!23123 lt!1337033))) (_1!23123 lt!1337033)) (_2!23123 lt!1337033))))))

(declare-fun lt!1337034 () Unit!58460)

(assert (=> b!3849748 (= lt!1337034 (longestMatchIsAcceptedByMatchOrIsEmpty!1138 (regex!6304 (h!46211 rules!2768)) lt!1336601))))

(declare-fun res!1558488 () Bool)

(assert (=> b!3849748 (= res!1558488 (isEmpty!24136 (_1!23123 (findLongestMatchInner!1165 (regex!6304 (h!46211 rules!2768)) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601)))))))

(assert (=> b!3849748 (=> res!1558488 e!2379471)))

(assert (=> b!3849748 e!2379471))

(declare-fun lt!1337032 () Unit!58460)

(assert (=> b!3849748 (= lt!1337032 lt!1337034)))

(declare-fun lt!1337036 () Unit!58460)

(assert (=> b!3849748 (= lt!1337036 (lemmaSemiInverse!1671 (transformation!6304 (h!46211 rules!2768)) (seqFromList!4575 (_1!23123 lt!1337033))))))

(assert (= (and d!1141415 c!670535) b!3849744))

(assert (= (and d!1141415 (not c!670535)) b!3849748))

(assert (= (and b!3849748 (not res!1558488)) b!3849743))

(assert (= (and d!1141415 (not res!1558490)) b!3849740))

(assert (= (and b!3849740 res!1558487) b!3849741))

(assert (= (and b!3849741 res!1558492) b!3849742))

(assert (= (and b!3849742 res!1558489) b!3849745))

(assert (= (and b!3849745 res!1558486) b!3849747))

(assert (= (and b!3849747 res!1558491) b!3849746))

(assert (=> b!3849743 m!4403519))

(assert (=> b!3849743 m!4403251))

(assert (=> b!3849743 m!4403519))

(assert (=> b!3849743 m!4403251))

(declare-fun m!4404783 () Bool)

(assert (=> b!3849743 m!4404783))

(declare-fun m!4404785 () Bool)

(assert (=> b!3849743 m!4404785))

(declare-fun m!4404787 () Bool)

(assert (=> b!3849745 m!4404787))

(assert (=> b!3849741 m!4404787))

(declare-fun m!4404789 () Bool)

(assert (=> b!3849741 m!4404789))

(assert (=> b!3849741 m!4404789))

(declare-fun m!4404791 () Bool)

(assert (=> b!3849741 m!4404791))

(assert (=> b!3849741 m!4404791))

(declare-fun m!4404793 () Bool)

(assert (=> b!3849741 m!4404793))

(assert (=> b!3849747 m!4404787))

(declare-fun m!4404795 () Bool)

(assert (=> b!3849747 m!4404795))

(assert (=> b!3849747 m!4404795))

(declare-fun m!4404797 () Bool)

(assert (=> b!3849747 m!4404797))

(declare-fun m!4404799 () Bool)

(assert (=> d!1141415 m!4404799))

(declare-fun m!4404801 () Bool)

(assert (=> d!1141415 m!4404801))

(declare-fun m!4404803 () Bool)

(assert (=> d!1141415 m!4404803))

(assert (=> d!1141415 m!4404517))

(assert (=> b!3849742 m!4404787))

(declare-fun m!4404805 () Bool)

(assert (=> b!3849742 m!4404805))

(assert (=> b!3849742 m!4403251))

(declare-fun m!4404807 () Bool)

(assert (=> b!3849748 m!4404807))

(declare-fun m!4404809 () Bool)

(assert (=> b!3849748 m!4404809))

(assert (=> b!3849748 m!4403251))

(assert (=> b!3849748 m!4404807))

(declare-fun m!4404811 () Bool)

(assert (=> b!3849748 m!4404811))

(declare-fun m!4404813 () Bool)

(assert (=> b!3849748 m!4404813))

(assert (=> b!3849748 m!4404807))

(declare-fun m!4404815 () Bool)

(assert (=> b!3849748 m!4404815))

(assert (=> b!3849748 m!4403519))

(assert (=> b!3849748 m!4403251))

(assert (=> b!3849748 m!4404783))

(assert (=> b!3849748 m!4403519))

(assert (=> b!3849748 m!4404807))

(declare-fun m!4404817 () Bool)

(assert (=> b!3849748 m!4404817))

(assert (=> b!3849746 m!4404787))

(declare-fun m!4404819 () Bool)

(assert (=> b!3849746 m!4404819))

(assert (=> b!3849740 m!4404787))

(assert (=> b!3849740 m!4404789))

(assert (=> b!3849740 m!4404789))

(assert (=> b!3849740 m!4404791))

(assert (=> b!3849740 m!4404791))

(declare-fun m!4404821 () Bool)

(assert (=> b!3849740 m!4404821))

(assert (=> bm!282115 d!1141415))

(declare-fun d!1141431 () Bool)

(assert (=> d!1141431 (= (isEmpty!24136 (originalCharacters!6904 (h!46210 prefixTokens!80))) ((_ is Nil!40788) (originalCharacters!6904 (h!46210 prefixTokens!80))))))

(assert (=> d!1140989 d!1141431))

(assert (=> b!3848682 d!1141063))

(assert (=> d!1141021 d!1141025))

(declare-fun d!1141433 () Bool)

(assert (=> d!1141433 (ruleValid!2256 thiss!20629 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))

(assert (=> d!1141433 true))

(declare-fun _$65!1320 () Unit!58460)

(assert (=> d!1141433 (= (choose!22652 thiss!20629 (rule!9154 (_1!23122 (v!39013 lt!1336591))) rules!2768) _$65!1320)))

(declare-fun bs!582823 () Bool)

(assert (= bs!582823 d!1141433))

(assert (=> bs!582823 m!4403247))

(assert (=> d!1141021 d!1141433))

(declare-fun d!1141435 () Bool)

(declare-fun lt!1337050 () Bool)

(declare-fun content!6066 (List!40915) (InoxSet Rule!12408))

(assert (=> d!1141435 (= lt!1337050 (select (content!6066 rules!2768) (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))

(declare-fun e!2379498 () Bool)

(assert (=> d!1141435 (= lt!1337050 e!2379498)))

(declare-fun res!1558508 () Bool)

(assert (=> d!1141435 (=> (not res!1558508) (not e!2379498))))

(assert (=> d!1141435 (= res!1558508 ((_ is Cons!40791) rules!2768))))

(assert (=> d!1141435 (= (contains!8246 rules!2768 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) lt!1337050)))

(declare-fun b!3849785 () Bool)

(declare-fun e!2379497 () Bool)

(assert (=> b!3849785 (= e!2379498 e!2379497)))

(declare-fun res!1558507 () Bool)

(assert (=> b!3849785 (=> res!1558507 e!2379497)))

(assert (=> b!3849785 (= res!1558507 (= (h!46211 rules!2768) (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))

(declare-fun b!3849786 () Bool)

(assert (=> b!3849786 (= e!2379497 (contains!8246 (t!311336 rules!2768) (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))

(assert (= (and d!1141435 res!1558508) b!3849785))

(assert (= (and b!3849785 (not res!1558507)) b!3849786))

(declare-fun m!4404851 () Bool)

(assert (=> d!1141435 m!4404851))

(declare-fun m!4404853 () Bool)

(assert (=> d!1141435 m!4404853))

(declare-fun m!4404855 () Bool)

(assert (=> b!3849786 m!4404855))

(assert (=> d!1141021 d!1141435))

(declare-fun d!1141455 () Bool)

(assert (=> d!1141455 (= (inv!17 (value!200298 (h!46210 suffixTokens!72))) (= (charsToBigInt!1 (text!46186 (value!200298 (h!46210 suffixTokens!72)))) (value!200290 (value!200298 (h!46210 suffixTokens!72)))))))

(declare-fun bs!582827 () Bool)

(assert (= bs!582827 d!1141455))

(declare-fun m!4404857 () Bool)

(assert (=> bs!582827 m!4404857))

(assert (=> b!3849066 d!1141455))

(declare-fun d!1141457 () Bool)

(declare-fun lt!1337051 () Int)

(assert (=> d!1141457 (>= lt!1337051 0)))

(declare-fun e!2379499 () Int)

(assert (=> d!1141457 (= lt!1337051 e!2379499)))

(declare-fun c!670546 () Bool)

(assert (=> d!1141457 (= c!670546 ((_ is Nil!40788) (t!311333 (originalCharacters!6904 (_1!23122 (v!39013 lt!1336591))))))))

(assert (=> d!1141457 (= (size!30680 (t!311333 (originalCharacters!6904 (_1!23122 (v!39013 lt!1336591))))) lt!1337051)))

(declare-fun b!3849787 () Bool)

(assert (=> b!3849787 (= e!2379499 0)))

(declare-fun b!3849788 () Bool)

(assert (=> b!3849788 (= e!2379499 (+ 1 (size!30680 (t!311333 (t!311333 (originalCharacters!6904 (_1!23122 (v!39013 lt!1336591))))))))))

(assert (= (and d!1141457 c!670546) b!3849787))

(assert (= (and d!1141457 (not c!670546)) b!3849788))

(declare-fun m!4404859 () Bool)

(assert (=> b!3849788 m!4404859))

(assert (=> b!3848614 d!1141457))

(declare-fun d!1141459 () Bool)

(declare-fun lt!1337052 () Bool)

(assert (=> d!1141459 (= lt!1337052 (select (content!6066 rules!2768) (rule!9154 (_1!23122 (get!13496 lt!1336728)))))))

(declare-fun e!2379501 () Bool)

(assert (=> d!1141459 (= lt!1337052 e!2379501)))

(declare-fun res!1558510 () Bool)

(assert (=> d!1141459 (=> (not res!1558510) (not e!2379501))))

(assert (=> d!1141459 (= res!1558510 ((_ is Cons!40791) rules!2768))))

(assert (=> d!1141459 (= (contains!8246 rules!2768 (rule!9154 (_1!23122 (get!13496 lt!1336728)))) lt!1337052)))

(declare-fun b!3849789 () Bool)

(declare-fun e!2379500 () Bool)

(assert (=> b!3849789 (= e!2379501 e!2379500)))

(declare-fun res!1558509 () Bool)

(assert (=> b!3849789 (=> res!1558509 e!2379500)))

(assert (=> b!3849789 (= res!1558509 (= (h!46211 rules!2768) (rule!9154 (_1!23122 (get!13496 lt!1336728)))))))

(declare-fun b!3849790 () Bool)

(assert (=> b!3849790 (= e!2379500 (contains!8246 (t!311336 rules!2768) (rule!9154 (_1!23122 (get!13496 lt!1336728)))))))

(assert (= (and d!1141459 res!1558510) b!3849789))

(assert (= (and b!3849789 (not res!1558509)) b!3849790))

(assert (=> d!1141459 m!4404851))

(declare-fun m!4404861 () Bool)

(assert (=> d!1141459 m!4404861))

(declare-fun m!4404863 () Bool)

(assert (=> b!3849790 m!4404863))

(assert (=> b!3848995 d!1141459))

(assert (=> b!3848995 d!1141079))

(declare-fun d!1141461 () Bool)

(declare-fun lt!1337053 () Int)

(assert (=> d!1141461 (>= lt!1337053 0)))

(declare-fun e!2379506 () Int)

(assert (=> d!1141461 (= lt!1337053 e!2379506)))

(declare-fun c!670551 () Bool)

(assert (=> d!1141461 (= c!670551 ((_ is Nil!40788) lt!1336593))))

(assert (=> d!1141461 (= (size!30680 lt!1336593) lt!1337053)))

(declare-fun b!3849799 () Bool)

(assert (=> b!3849799 (= e!2379506 0)))

(declare-fun b!3849800 () Bool)

(assert (=> b!3849800 (= e!2379506 (+ 1 (size!30680 (t!311333 lt!1336593))))))

(assert (= (and d!1141461 c!670551) b!3849799))

(assert (= (and d!1141461 (not c!670551)) b!3849800))

(declare-fun m!4404865 () Bool)

(assert (=> b!3849800 m!4404865))

(assert (=> b!3849110 d!1141461))

(assert (=> b!3849110 d!1141027))

(assert (=> d!1141015 d!1140881))

(declare-fun b!3849801 () Bool)

(declare-fun e!2379507 () Bool)

(assert (=> b!3849801 (= e!2379507 (not (= (head!8094 (_1!23123 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601)))) (c!670246 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))))

(declare-fun b!3849802 () Bool)

(declare-fun e!2379509 () Bool)

(assert (=> b!3849802 (= e!2379509 (= (head!8094 (_1!23123 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601)))) (c!670246 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))))

(declare-fun b!3849803 () Bool)

(declare-fun e!2379510 () Bool)

(assert (=> b!3849803 (= e!2379510 (nullable!3899 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(declare-fun b!3849804 () Bool)

(declare-fun e!2379508 () Bool)

(declare-fun lt!1337054 () Bool)

(assert (=> b!3849804 (= e!2379508 (not lt!1337054))))

(declare-fun b!3849805 () Bool)

(declare-fun e!2379512 () Bool)

(assert (=> b!3849805 (= e!2379512 e!2379507)))

(declare-fun res!1558517 () Bool)

(assert (=> b!3849805 (=> res!1558517 e!2379507)))

(declare-fun call!282187 () Bool)

(assert (=> b!3849805 (= res!1558517 call!282187)))

(declare-fun b!3849806 () Bool)

(declare-fun res!1558511 () Bool)

(assert (=> b!3849806 (=> (not res!1558511) (not e!2379509))))

(assert (=> b!3849806 (= res!1558511 (not call!282187))))

(declare-fun b!3849807 () Bool)

(declare-fun e!2379511 () Bool)

(assert (=> b!3849807 (= e!2379511 e!2379508)))

(declare-fun c!670554 () Bool)

(assert (=> b!3849807 (= c!670554 ((_ is EmptyLang!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(declare-fun b!3849808 () Bool)

(assert (=> b!3849808 (= e!2379511 (= lt!1337054 call!282187))))

(declare-fun d!1141463 () Bool)

(assert (=> d!1141463 e!2379511))

(declare-fun c!670552 () Bool)

(assert (=> d!1141463 (= c!670552 ((_ is EmptyExpr!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(assert (=> d!1141463 (= lt!1337054 e!2379510)))

(declare-fun c!670553 () Bool)

(assert (=> d!1141463 (= c!670553 (isEmpty!24136 (_1!23123 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601)))))))

(assert (=> d!1141463 (validRegex!5098 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))

(assert (=> d!1141463 (= (matchR!5356 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (_1!23123 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601)))) lt!1337054)))

(declare-fun b!3849809 () Bool)

(declare-fun res!1558516 () Bool)

(declare-fun e!2379513 () Bool)

(assert (=> b!3849809 (=> res!1558516 e!2379513)))

(assert (=> b!3849809 (= res!1558516 e!2379509)))

(declare-fun res!1558518 () Bool)

(assert (=> b!3849809 (=> (not res!1558518) (not e!2379509))))

(assert (=> b!3849809 (= res!1558518 lt!1337054)))

(declare-fun bm!282182 () Bool)

(assert (=> bm!282182 (= call!282187 (isEmpty!24136 (_1!23123 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601)))))))

(declare-fun b!3849810 () Bool)

(declare-fun res!1558513 () Bool)

(assert (=> b!3849810 (=> (not res!1558513) (not e!2379509))))

(assert (=> b!3849810 (= res!1558513 (isEmpty!24136 (tail!5821 (_1!23123 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601))))))))

(declare-fun b!3849811 () Bool)

(declare-fun res!1558512 () Bool)

(assert (=> b!3849811 (=> res!1558512 e!2379513)))

(assert (=> b!3849811 (= res!1558512 (not ((_ is ElementMatch!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))))

(assert (=> b!3849811 (= e!2379508 e!2379513)))

(declare-fun b!3849812 () Bool)

(declare-fun res!1558514 () Bool)

(assert (=> b!3849812 (=> res!1558514 e!2379507)))

(assert (=> b!3849812 (= res!1558514 (not (isEmpty!24136 (tail!5821 (_1!23123 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601)))))))))

(declare-fun b!3849813 () Bool)

(assert (=> b!3849813 (= e!2379513 e!2379512)))

(declare-fun res!1558515 () Bool)

(assert (=> b!3849813 (=> (not res!1558515) (not e!2379512))))

(assert (=> b!3849813 (= res!1558515 (not lt!1337054))))

(declare-fun b!3849814 () Bool)

(assert (=> b!3849814 (= e!2379510 (matchR!5356 (derivativeStep!3397 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (head!8094 (_1!23123 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601))))) (tail!5821 (_1!23123 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601))))))))

(assert (= (and d!1141463 c!670553) b!3849803))

(assert (= (and d!1141463 (not c!670553)) b!3849814))

(assert (= (and d!1141463 c!670552) b!3849808))

(assert (= (and d!1141463 (not c!670552)) b!3849807))

(assert (= (and b!3849807 c!670554) b!3849804))

(assert (= (and b!3849807 (not c!670554)) b!3849811))

(assert (= (and b!3849811 (not res!1558512)) b!3849809))

(assert (= (and b!3849809 res!1558518) b!3849806))

(assert (= (and b!3849806 res!1558511) b!3849810))

(assert (= (and b!3849810 res!1558513) b!3849802))

(assert (= (and b!3849809 (not res!1558516)) b!3849813))

(assert (= (and b!3849813 res!1558515) b!3849805))

(assert (= (and b!3849805 (not res!1558517)) b!3849812))

(assert (= (and b!3849812 (not res!1558514)) b!3849801))

(assert (= (or b!3849808 b!3849805 b!3849806) bm!282182))

(assert (=> d!1141463 m!4403553))

(assert (=> d!1141463 m!4403379))

(declare-fun m!4404867 () Bool)

(assert (=> b!3849812 m!4404867))

(assert (=> b!3849812 m!4404867))

(declare-fun m!4404869 () Bool)

(assert (=> b!3849812 m!4404869))

(declare-fun m!4404871 () Bool)

(assert (=> b!3849801 m!4404871))

(assert (=> b!3849810 m!4404867))

(assert (=> b!3849810 m!4404867))

(assert (=> b!3849810 m!4404869))

(assert (=> b!3849814 m!4404871))

(assert (=> b!3849814 m!4404871))

(declare-fun m!4404873 () Bool)

(assert (=> b!3849814 m!4404873))

(assert (=> b!3849814 m!4404867))

(assert (=> b!3849814 m!4404873))

(assert (=> b!3849814 m!4404867))

(declare-fun m!4404877 () Bool)

(assert (=> b!3849814 m!4404877))

(assert (=> bm!282182 m!4403553))

(assert (=> b!3849802 m!4404871))

(assert (=> b!3849803 m!4403391))

(assert (=> b!3848848 d!1141463))

(declare-fun b!3850091 () Bool)

(declare-fun e!2379674 () tuple2!39978)

(assert (=> b!3850091 (= e!2379674 (tuple2!39979 Nil!40788 lt!1336601))))

(declare-fun bm!282211 () Bool)

(declare-fun call!282219 () Unit!58460)

(assert (=> bm!282211 (= call!282219 (lemmaIsPrefixRefl!2170 lt!1336601 lt!1336601))))

(declare-fun bm!282212 () Bool)

(declare-fun call!282216 () List!40912)

(assert (=> bm!282212 (= call!282216 (tail!5821 lt!1336601))))

(declare-fun bm!282213 () Bool)

(declare-fun call!282218 () Bool)

(assert (=> bm!282213 (= call!282218 (isPrefix!3403 lt!1336601 lt!1336601))))

(declare-fun b!3850092 () Bool)

(declare-fun e!2379670 () tuple2!39978)

(assert (=> b!3850092 (= e!2379670 (tuple2!39979 Nil!40788 lt!1336601))))

(declare-fun b!3850093 () Bool)

(assert (=> b!3850093 (= e!2379670 (tuple2!39979 Nil!40788 Nil!40788))))

(declare-fun b!3850094 () Bool)

(declare-fun c!670606 () Bool)

(declare-fun call!282222 () Bool)

(assert (=> b!3850094 (= c!670606 call!282222)))

(declare-fun lt!1337160 () Unit!58460)

(declare-fun lt!1337175 () Unit!58460)

(assert (=> b!3850094 (= lt!1337160 lt!1337175)))

(assert (=> b!3850094 (= lt!1336601 Nil!40788)))

(declare-fun call!282221 () Unit!58460)

(assert (=> b!3850094 (= lt!1337175 call!282221)))

(declare-fun lt!1337158 () Unit!58460)

(declare-fun lt!1337178 () Unit!58460)

(assert (=> b!3850094 (= lt!1337158 lt!1337178)))

(assert (=> b!3850094 call!282218))

(assert (=> b!3850094 (= lt!1337178 call!282219)))

(declare-fun e!2379671 () tuple2!39978)

(assert (=> b!3850094 (= e!2379671 e!2379670)))

(declare-fun b!3850095 () Bool)

(declare-fun e!2379668 () Bool)

(declare-fun e!2379675 () Bool)

(assert (=> b!3850095 (= e!2379668 e!2379675)))

(declare-fun res!1558595 () Bool)

(assert (=> b!3850095 (=> res!1558595 e!2379675)))

(declare-fun lt!1337163 () tuple2!39978)

(assert (=> b!3850095 (= res!1558595 (isEmpty!24136 (_1!23123 lt!1337163)))))

(declare-fun b!3850096 () Bool)

(declare-fun e!2379672 () Unit!58460)

(declare-fun Unit!58467 () Unit!58460)

(assert (=> b!3850096 (= e!2379672 Unit!58467)))

(declare-fun bm!282214 () Bool)

(declare-fun lt!1337177 () List!40912)

(declare-fun call!282220 () Regex!11209)

(declare-fun call!282223 () tuple2!39978)

(assert (=> bm!282214 (= call!282223 (findLongestMatchInner!1165 call!282220 lt!1337177 (+ (size!30680 Nil!40788) 1) call!282216 lt!1336601 (size!30680 lt!1336601)))))

(declare-fun b!3850098 () Bool)

(declare-fun e!2379669 () tuple2!39978)

(assert (=> b!3850098 (= e!2379669 (tuple2!39979 Nil!40788 lt!1336601))))

(declare-fun b!3850099 () Bool)

(declare-fun c!670603 () Bool)

(assert (=> b!3850099 (= c!670603 call!282222)))

(declare-fun lt!1337168 () Unit!58460)

(declare-fun lt!1337181 () Unit!58460)

(assert (=> b!3850099 (= lt!1337168 lt!1337181)))

(declare-fun lt!1337182 () C!22604)

(declare-fun lt!1337156 () List!40912)

(assert (=> b!3850099 (= (++!10365 (++!10365 Nil!40788 (Cons!40788 lt!1337182 Nil!40788)) lt!1337156) lt!1336601)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1216 (List!40912 C!22604 List!40912 List!40912) Unit!58460)

(assert (=> b!3850099 (= lt!1337181 (lemmaMoveElementToOtherListKeepsConcatEq!1216 Nil!40788 lt!1337182 lt!1337156 lt!1336601))))

(assert (=> b!3850099 (= lt!1337156 (tail!5821 lt!1336601))))

(assert (=> b!3850099 (= lt!1337182 (head!8094 lt!1336601))))

(declare-fun lt!1337165 () Unit!58460)

(declare-fun lt!1337179 () Unit!58460)

(assert (=> b!3850099 (= lt!1337165 lt!1337179)))

(assert (=> b!3850099 (isPrefix!3403 (++!10365 Nil!40788 (Cons!40788 (head!8094 (getSuffix!1858 lt!1336601 Nil!40788)) Nil!40788)) lt!1336601)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!598 (List!40912 List!40912) Unit!58460)

(assert (=> b!3850099 (= lt!1337179 (lemmaAddHeadSuffixToPrefixStillPrefix!598 Nil!40788 lt!1336601))))

(declare-fun lt!1337170 () Unit!58460)

(declare-fun lt!1337172 () Unit!58460)

(assert (=> b!3850099 (= lt!1337170 lt!1337172)))

(assert (=> b!3850099 (= lt!1337172 (lemmaAddHeadSuffixToPrefixStillPrefix!598 Nil!40788 lt!1336601))))

(assert (=> b!3850099 (= lt!1337177 (++!10365 Nil!40788 (Cons!40788 (head!8094 lt!1336601) Nil!40788)))))

(declare-fun lt!1337167 () Unit!58460)

(assert (=> b!3850099 (= lt!1337167 e!2379672)))

(declare-fun c!670605 () Bool)

(assert (=> b!3850099 (= c!670605 (= (size!30680 Nil!40788) (size!30680 lt!1336601)))))

(declare-fun lt!1337180 () Unit!58460)

(declare-fun lt!1337157 () Unit!58460)

(assert (=> b!3850099 (= lt!1337180 lt!1337157)))

(assert (=> b!3850099 (<= (size!30680 Nil!40788) (size!30680 lt!1336601))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!406 (List!40912 List!40912) Unit!58460)

(assert (=> b!3850099 (= lt!1337157 (lemmaIsPrefixThenSmallerEqSize!406 Nil!40788 lt!1336601))))

(declare-fun e!2379673 () tuple2!39978)

(assert (=> b!3850099 (= e!2379671 e!2379673)))

(declare-fun b!3850100 () Bool)

(assert (=> b!3850100 (= e!2379669 e!2379671)))

(declare-fun c!670601 () Bool)

(assert (=> b!3850100 (= c!670601 (= (size!30680 Nil!40788) (size!30680 lt!1336601)))))

(declare-fun b!3850101 () Bool)

(declare-fun lt!1337166 () tuple2!39978)

(assert (=> b!3850101 (= e!2379674 lt!1337166)))

(declare-fun bm!282215 () Bool)

(declare-fun call!282217 () C!22604)

(assert (=> bm!282215 (= call!282220 (derivativeStep!3397 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) call!282217))))

(declare-fun b!3850102 () Bool)

(assert (=> b!3850102 (= e!2379673 call!282223)))

(declare-fun bm!282216 () Bool)

(assert (=> bm!282216 (= call!282222 (nullable!3899 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(declare-fun b!3850103 () Bool)

(assert (=> b!3850103 (= e!2379673 e!2379674)))

(assert (=> b!3850103 (= lt!1337166 call!282223)))

(declare-fun c!670604 () Bool)

(assert (=> b!3850103 (= c!670604 (isEmpty!24136 (_1!23123 lt!1337166)))))

(declare-fun bm!282217 () Bool)

(assert (=> bm!282217 (= call!282217 (head!8094 lt!1336601))))

(declare-fun bm!282218 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!699 (List!40912 List!40912 List!40912) Unit!58460)

(assert (=> bm!282218 (= call!282221 (lemmaIsPrefixSameLengthThenSameList!699 lt!1336601 Nil!40788 lt!1336601))))

(declare-fun b!3850104 () Bool)

(declare-fun Unit!58468 () Unit!58460)

(assert (=> b!3850104 (= e!2379672 Unit!58468)))

(declare-fun lt!1337174 () Unit!58460)

(assert (=> b!3850104 (= lt!1337174 call!282219)))

(assert (=> b!3850104 call!282218))

(declare-fun lt!1337159 () Unit!58460)

(assert (=> b!3850104 (= lt!1337159 lt!1337174)))

(declare-fun lt!1337155 () Unit!58460)

(assert (=> b!3850104 (= lt!1337155 call!282221)))

(assert (=> b!3850104 (= lt!1336601 Nil!40788)))

(declare-fun lt!1337162 () Unit!58460)

(assert (=> b!3850104 (= lt!1337162 lt!1337155)))

(assert (=> b!3850104 false))

(declare-fun b!3850097 () Bool)

(assert (=> b!3850097 (= e!2379675 (>= (size!30680 (_1!23123 lt!1337163)) (size!30680 Nil!40788)))))

(declare-fun d!1141465 () Bool)

(assert (=> d!1141465 e!2379668))

(declare-fun res!1558596 () Bool)

(assert (=> d!1141465 (=> (not res!1558596) (not e!2379668))))

(assert (=> d!1141465 (= res!1558596 (= (++!10365 (_1!23123 lt!1337163) (_2!23123 lt!1337163)) lt!1336601))))

(assert (=> d!1141465 (= lt!1337163 e!2379669)))

(declare-fun c!670602 () Bool)

(declare-fun lostCause!972 (Regex!11209) Bool)

(assert (=> d!1141465 (= c!670602 (lostCause!972 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(declare-fun lt!1337171 () Unit!58460)

(declare-fun Unit!58469 () Unit!58460)

(assert (=> d!1141465 (= lt!1337171 Unit!58469)))

(assert (=> d!1141465 (= (getSuffix!1858 lt!1336601 Nil!40788) lt!1336601)))

(declare-fun lt!1337161 () Unit!58460)

(declare-fun lt!1337169 () Unit!58460)

(assert (=> d!1141465 (= lt!1337161 lt!1337169)))

(declare-fun lt!1337173 () List!40912)

(assert (=> d!1141465 (= lt!1336601 lt!1337173)))

(assert (=> d!1141465 (= lt!1337169 (lemmaSamePrefixThenSameSuffix!1624 Nil!40788 lt!1336601 Nil!40788 lt!1337173 lt!1336601))))

(assert (=> d!1141465 (= lt!1337173 (getSuffix!1858 lt!1336601 Nil!40788))))

(declare-fun lt!1337176 () Unit!58460)

(declare-fun lt!1337164 () Unit!58460)

(assert (=> d!1141465 (= lt!1337176 lt!1337164)))

(assert (=> d!1141465 (isPrefix!3403 Nil!40788 (++!10365 Nil!40788 lt!1336601))))

(assert (=> d!1141465 (= lt!1337164 (lemmaConcatTwoListThenFirstIsPrefix!2266 Nil!40788 lt!1336601))))

(assert (=> d!1141465 (validRegex!5098 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))

(assert (=> d!1141465 (= (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601)) lt!1337163)))

(assert (= (and d!1141465 c!670602) b!3850098))

(assert (= (and d!1141465 (not c!670602)) b!3850100))

(assert (= (and b!3850100 c!670601) b!3850094))

(assert (= (and b!3850100 (not c!670601)) b!3850099))

(assert (= (and b!3850094 c!670606) b!3850093))

(assert (= (and b!3850094 (not c!670606)) b!3850092))

(assert (= (and b!3850099 c!670605) b!3850104))

(assert (= (and b!3850099 (not c!670605)) b!3850096))

(assert (= (and b!3850099 c!670603) b!3850103))

(assert (= (and b!3850099 (not c!670603)) b!3850102))

(assert (= (and b!3850103 c!670604) b!3850091))

(assert (= (and b!3850103 (not c!670604)) b!3850101))

(assert (= (or b!3850103 b!3850102) bm!282217))

(assert (= (or b!3850103 b!3850102) bm!282212))

(assert (= (or b!3850103 b!3850102) bm!282215))

(assert (= (or b!3850103 b!3850102) bm!282214))

(assert (= (or b!3850094 b!3850104) bm!282218))

(assert (= (or b!3850094 b!3850099) bm!282216))

(assert (= (or b!3850094 b!3850104) bm!282213))

(assert (= (or b!3850094 b!3850104) bm!282211))

(assert (= (and d!1141465 res!1558596) b!3850095))

(assert (= (and b!3850095 (not res!1558595)) b!3850097))

(assert (=> bm!282212 m!4403815))

(assert (=> bm!282216 m!4403391))

(declare-fun m!4405167 () Bool)

(assert (=> b!3850099 m!4405167))

(assert (=> b!3850099 m!4403815))

(declare-fun m!4405169 () Bool)

(assert (=> b!3850099 m!4405169))

(assert (=> b!3850099 m!4403519))

(declare-fun m!4405171 () Bool)

(assert (=> b!3850099 m!4405171))

(declare-fun m!4405173 () Bool)

(assert (=> b!3850099 m!4405173))

(assert (=> b!3850099 m!4403251))

(declare-fun m!4405175 () Bool)

(assert (=> b!3850099 m!4405175))

(declare-fun m!4405177 () Bool)

(assert (=> b!3850099 m!4405177))

(assert (=> b!3850099 m!4405175))

(declare-fun m!4405179 () Bool)

(assert (=> b!3850099 m!4405179))

(assert (=> b!3850099 m!4404397))

(declare-fun m!4405181 () Bool)

(assert (=> b!3850099 m!4405181))

(assert (=> b!3850099 m!4405173))

(declare-fun m!4405183 () Bool)

(assert (=> b!3850099 m!4405183))

(assert (=> b!3850099 m!4405171))

(declare-fun m!4405185 () Bool)

(assert (=> b!3850099 m!4405185))

(assert (=> bm!282211 m!4403689))

(declare-fun m!4405187 () Bool)

(assert (=> b!3850095 m!4405187))

(assert (=> bm!282213 m!4403687))

(declare-fun m!4405189 () Bool)

(assert (=> bm!282218 m!4405189))

(declare-fun m!4405191 () Bool)

(assert (=> d!1141465 m!4405191))

(declare-fun m!4405193 () Bool)

(assert (=> d!1141465 m!4405193))

(assert (=> d!1141465 m!4405191))

(declare-fun m!4405195 () Bool)

(assert (=> d!1141465 m!4405195))

(declare-fun m!4405197 () Bool)

(assert (=> d!1141465 m!4405197))

(assert (=> d!1141465 m!4403379))

(assert (=> d!1141465 m!4405175))

(declare-fun m!4405199 () Bool)

(assert (=> d!1141465 m!4405199))

(declare-fun m!4405201 () Bool)

(assert (=> d!1141465 m!4405201))

(declare-fun m!4405203 () Bool)

(assert (=> bm!282215 m!4405203))

(assert (=> bm!282217 m!4404397))

(assert (=> bm!282214 m!4403251))

(declare-fun m!4405205 () Bool)

(assert (=> bm!282214 m!4405205))

(declare-fun m!4405207 () Bool)

(assert (=> b!3850097 m!4405207))

(assert (=> b!3850097 m!4403519))

(declare-fun m!4405209 () Bool)

(assert (=> b!3850103 m!4405209))

(assert (=> b!3848848 d!1141465))

(declare-fun d!1141553 () Bool)

(declare-fun lt!1337183 () Int)

(assert (=> d!1141553 (>= lt!1337183 0)))

(declare-fun e!2379676 () Int)

(assert (=> d!1141553 (= lt!1337183 e!2379676)))

(declare-fun c!670607 () Bool)

(assert (=> d!1141553 (= c!670607 ((_ is Nil!40788) Nil!40788))))

(assert (=> d!1141553 (= (size!30680 Nil!40788) lt!1337183)))

(declare-fun b!3850105 () Bool)

(assert (=> b!3850105 (= e!2379676 0)))

(declare-fun b!3850106 () Bool)

(assert (=> b!3850106 (= e!2379676 (+ 1 (size!30680 (t!311333 Nil!40788))))))

(assert (= (and d!1141553 c!670607) b!3850105))

(assert (= (and d!1141553 (not c!670607)) b!3850106))

(declare-fun m!4405211 () Bool)

(assert (=> b!3850106 m!4405211))

(assert (=> b!3848848 d!1141553))

(assert (=> b!3848848 d!1140983))

(declare-fun d!1141555 () Bool)

(assert (=> d!1141555 (= (isEmpty!24138 (_1!23121 lt!1336751)) ((_ is Nil!40790) (_1!23121 lt!1336751)))))

(assert (=> b!3849045 d!1141555))

(declare-fun d!1141557 () Bool)

(assert (=> d!1141557 (= (isEmpty!24140 lt!1336591) (not ((_ is Some!8721) lt!1336591)))))

(assert (=> d!1140883 d!1141557))

(declare-fun d!1141559 () Bool)

(declare-fun lt!1337184 () Int)

(assert (=> d!1141559 (>= lt!1337184 0)))

(declare-fun e!2379677 () Int)

(assert (=> d!1141559 (= lt!1337184 e!2379677)))

(declare-fun c!670608 () Bool)

(assert (=> d!1141559 (= c!670608 ((_ is Nil!40788) (t!311333 prefix!426)))))

(assert (=> d!1141559 (= (size!30680 (t!311333 prefix!426)) lt!1337184)))

(declare-fun b!3850107 () Bool)

(assert (=> b!3850107 (= e!2379677 0)))

(declare-fun b!3850108 () Bool)

(assert (=> b!3850108 (= e!2379677 (+ 1 (size!30680 (t!311333 (t!311333 prefix!426)))))))

(assert (= (and d!1141559 c!670608) b!3850107))

(assert (= (and d!1141559 (not c!670608)) b!3850108))

(declare-fun m!4405213 () Bool)

(assert (=> b!3850108 m!4405213))

(assert (=> b!3849063 d!1141559))

(declare-fun d!1141561 () Bool)

(declare-fun lt!1337185 () Int)

(assert (=> d!1141561 (>= lt!1337185 0)))

(declare-fun e!2379678 () Int)

(assert (=> d!1141561 (= lt!1337185 e!2379678)))

(declare-fun c!670609 () Bool)

(assert (=> d!1141561 (= c!670609 ((_ is Nil!40788) lt!1336746))))

(assert (=> d!1141561 (= (size!30680 lt!1336746) lt!1337185)))

(declare-fun b!3850109 () Bool)

(assert (=> b!3850109 (= e!2379678 0)))

(declare-fun b!3850110 () Bool)

(assert (=> b!3850110 (= e!2379678 (+ 1 (size!30680 (t!311333 lt!1336746))))))

(assert (= (and d!1141561 c!670609) b!3850109))

(assert (= (and d!1141561 (not c!670609)) b!3850110))

(declare-fun m!4405215 () Bool)

(assert (=> b!3850110 m!4405215))

(assert (=> b!3849034 d!1141561))

(assert (=> b!3849034 d!1140997))

(assert (=> b!3849034 d!1140979))

(declare-fun bs!582841 () Bool)

(declare-fun d!1141563 () Bool)

(assert (= bs!582841 (and d!1141563 d!1141303)))

(declare-fun lambda!126147 () Int)

(assert (=> bs!582841 (= lambda!126147 lambda!126135)))

(assert (=> d!1141563 true))

(declare-fun lt!1337188 () Bool)

(assert (=> d!1141563 (= lt!1337188 (rulesValidInductive!2238 thiss!20629 rules!2768))))

(assert (=> d!1141563 (= lt!1337188 (forall!8286 rules!2768 lambda!126147))))

(assert (=> d!1141563 (= (rulesValid!2433 thiss!20629 rules!2768) lt!1337188)))

(declare-fun bs!582842 () Bool)

(assert (= bs!582842 d!1141563))

(assert (=> bs!582842 m!4403691))

(declare-fun m!4405217 () Bool)

(assert (=> bs!582842 m!4405217))

(assert (=> d!1140939 d!1141563))

(declare-fun d!1141565 () Bool)

(declare-fun lt!1337189 () Int)

(assert (=> d!1141565 (>= lt!1337189 0)))

(declare-fun e!2379679 () Int)

(assert (=> d!1141565 (= lt!1337189 e!2379679)))

(declare-fun c!670610 () Bool)

(assert (=> d!1141565 (= c!670610 ((_ is Nil!40788) (_2!23121 lt!1336768)))))

(assert (=> d!1141565 (= (size!30680 (_2!23121 lt!1336768)) lt!1337189)))

(declare-fun b!3850111 () Bool)

(assert (=> b!3850111 (= e!2379679 0)))

(declare-fun b!3850112 () Bool)

(assert (=> b!3850112 (= e!2379679 (+ 1 (size!30680 (t!311333 (_2!23121 lt!1336768)))))))

(assert (= (and d!1141565 c!670610) b!3850111))

(assert (= (and d!1141565 (not c!670610)) b!3850112))

(declare-fun m!4405219 () Bool)

(assert (=> b!3850112 m!4405219))

(assert (=> b!3849081 d!1141565))

(assert (=> b!3849081 d!1140981))

(declare-fun d!1141567 () Bool)

(assert (=> d!1141567 (= (apply!9547 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (seqFromList!4575 (_1!23123 lt!1336691))) (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (seqFromList!4575 (_1!23123 lt!1336691))))))

(declare-fun b_lambda!112527 () Bool)

(assert (=> (not b_lambda!112527) (not d!1141567)))

(declare-fun t!311666 () Bool)

(declare-fun tb!222053 () Bool)

(assert (=> (and b!3849164 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311666) tb!222053))

(declare-fun result!270564 () Bool)

(assert (=> tb!222053 (= result!270564 (inv!21 (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (seqFromList!4575 (_1!23123 lt!1336691)))))))

(declare-fun m!4405221 () Bool)

(assert (=> tb!222053 m!4405221))

(assert (=> d!1141567 t!311666))

(declare-fun b_and!287475 () Bool)

(assert (= b_and!287409 (and (=> t!311666 result!270564) b_and!287475)))

(declare-fun tb!222055 () Bool)

(declare-fun t!311668 () Bool)

(assert (=> (and b!3848565 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311668) tb!222055))

(declare-fun result!270566 () Bool)

(assert (= result!270566 result!270564))

(assert (=> d!1141567 t!311668))

(declare-fun b_and!287477 () Bool)

(assert (= b_and!287403 (and (=> t!311668 result!270566) b_and!287477)))

(declare-fun t!311670 () Bool)

(declare-fun tb!222057 () Bool)

(assert (=> (and b!3849145 (= (toValue!8720 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311670) tb!222057))

(declare-fun result!270568 () Bool)

(assert (= result!270568 result!270564))

(assert (=> d!1141567 t!311670))

(declare-fun b_and!287479 () Bool)

(assert (= b_and!287413 (and (=> t!311670 result!270568) b_and!287479)))

(declare-fun tb!222059 () Bool)

(declare-fun t!311672 () Bool)

(assert (=> (and b!3848568 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311672) tb!222059))

(declare-fun result!270570 () Bool)

(assert (= result!270570 result!270564))

(assert (=> d!1141567 t!311672))

(declare-fun b_and!287481 () Bool)

(assert (= b_and!287405 (and (=> t!311672 result!270570) b_and!287481)))

(declare-fun tb!222061 () Bool)

(declare-fun t!311674 () Bool)

(assert (=> (and b!3848559 (= (toValue!8720 (transformation!6304 (h!46211 rules!2768))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311674) tb!222061))

(declare-fun result!270572 () Bool)

(assert (= result!270572 result!270564))

(assert (=> d!1141567 t!311674))

(declare-fun b_and!287483 () Bool)

(assert (= b_and!287411 (and (=> t!311674 result!270572) b_and!287483)))

(declare-fun tb!222063 () Bool)

(declare-fun t!311676 () Bool)

(assert (=> (and b!3849160 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311676) tb!222063))

(declare-fun result!270574 () Bool)

(assert (= result!270574 result!270564))

(assert (=> d!1141567 t!311676))

(declare-fun b_and!287485 () Bool)

(assert (= b_and!287407 (and (=> t!311676 result!270574) b_and!287485)))

(assert (=> d!1141567 m!4403545))

(declare-fun m!4405223 () Bool)

(assert (=> d!1141567 m!4405223))

(assert (=> b!3848853 d!1141567))

(declare-fun d!1141569 () Bool)

(declare-fun e!2379683 () Bool)

(assert (=> d!1141569 e!2379683))

(declare-fun res!1558599 () Bool)

(assert (=> d!1141569 (=> res!1558599 e!2379683)))

(assert (=> d!1141569 (= res!1558599 (isEmpty!24136 (_1!23123 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601)))))))

(declare-fun lt!1337192 () Unit!58460)

(declare-fun choose!22655 (Regex!11209 List!40912) Unit!58460)

(assert (=> d!1141569 (= lt!1337192 (choose!22655 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) lt!1336601))))

(assert (=> d!1141569 (validRegex!5098 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))

(assert (=> d!1141569 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1138 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) lt!1336601) lt!1337192)))

(declare-fun b!3850115 () Bool)

(assert (=> b!3850115 (= e!2379683 (matchR!5356 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (_1!23123 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601)))))))

(assert (= (and d!1141569 (not res!1558599)) b!3850115))

(assert (=> d!1141569 m!4403251))

(declare-fun m!4405225 () Bool)

(assert (=> d!1141569 m!4405225))

(assert (=> d!1141569 m!4403519))

(assert (=> d!1141569 m!4403519))

(assert (=> d!1141569 m!4403251))

(assert (=> d!1141569 m!4403521))

(assert (=> d!1141569 m!4403379))

(assert (=> d!1141569 m!4403553))

(assert (=> b!3850115 m!4403519))

(assert (=> b!3850115 m!4403251))

(assert (=> b!3850115 m!4403519))

(assert (=> b!3850115 m!4403251))

(assert (=> b!3850115 m!4403521))

(assert (=> b!3850115 m!4403523))

(assert (=> b!3848853 d!1141569))

(declare-fun bs!582843 () Bool)

(declare-fun d!1141571 () Bool)

(assert (= bs!582843 (and d!1141571 d!1141225)))

(declare-fun lambda!126150 () Int)

(assert (=> bs!582843 (= (and (= (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (toChars!8579 (transformation!6304 (h!46211 rules!2768)))) (= (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (toValue!8720 (transformation!6304 (h!46211 rules!2768))))) (= lambda!126150 lambda!126126))))

(declare-fun bs!582844 () Bool)

(assert (= bs!582844 (and d!1141571 d!1141235)))

(assert (=> bs!582844 (= (and (= (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) (= (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))))) (= lambda!126150 lambda!126130))))

(declare-fun bs!582845 () Bool)

(assert (= bs!582845 (and d!1141571 d!1141289)))

(assert (=> bs!582845 (= (and (= (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) (= (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))))) (= lambda!126150 lambda!126132))))

(declare-fun b!3850120 () Bool)

(declare-fun e!2379686 () Bool)

(assert (=> b!3850120 (= e!2379686 true)))

(assert (=> d!1141571 e!2379686))

(assert (= d!1141571 b!3850120))

(assert (=> b!3850120 (< (dynLambda!17603 order!22149 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) (dynLambda!17606 order!22157 lambda!126150))))

(assert (=> b!3850120 (< (dynLambda!17605 order!22155 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) (dynLambda!17606 order!22157 lambda!126150))))

(assert (=> d!1141571 (= (list!15180 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (seqFromList!4575 (_1!23123 lt!1336691))))) (list!15180 (seqFromList!4575 (_1!23123 lt!1336691))))))

(declare-fun lt!1337195 () Unit!58460)

(declare-fun ForallOf!780 (Int BalanceConc!24624) Unit!58460)

(assert (=> d!1141571 (= lt!1337195 (ForallOf!780 lambda!126150 (seqFromList!4575 (_1!23123 lt!1336691))))))

(assert (=> d!1141571 (= (lemmaSemiInverse!1671 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (seqFromList!4575 (_1!23123 lt!1336691))) lt!1337195)))

(declare-fun b_lambda!112529 () Bool)

(assert (=> (not b_lambda!112529) (not d!1141571)))

(declare-fun t!311678 () Bool)

(declare-fun tb!222065 () Bool)

(assert (=> (and b!3848565 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311678) tb!222065))

(declare-fun tp!1166890 () Bool)

(declare-fun e!2379687 () Bool)

(declare-fun b!3850121 () Bool)

(assert (=> b!3850121 (= e!2379687 (and (inv!54935 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (seqFromList!4575 (_1!23123 lt!1336691)))))) tp!1166890))))

(declare-fun result!270576 () Bool)

(assert (=> tb!222065 (= result!270576 (and (inv!54936 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (seqFromList!4575 (_1!23123 lt!1336691))))) e!2379687))))

(assert (= tb!222065 b!3850121))

(declare-fun m!4405227 () Bool)

(assert (=> b!3850121 m!4405227))

(declare-fun m!4405229 () Bool)

(assert (=> tb!222065 m!4405229))

(assert (=> d!1141571 t!311678))

(declare-fun b_and!287487 () Bool)

(assert (= b_and!287359 (and (=> t!311678 result!270576) b_and!287487)))

(declare-fun t!311680 () Bool)

(declare-fun tb!222067 () Bool)

(assert (=> (and b!3848568 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311680) tb!222067))

(declare-fun result!270578 () Bool)

(assert (= result!270578 result!270576))

(assert (=> d!1141571 t!311680))

(declare-fun b_and!287489 () Bool)

(assert (= b_and!287355 (and (=> t!311680 result!270578) b_and!287489)))

(declare-fun tb!222069 () Bool)

(declare-fun t!311682 () Bool)

(assert (=> (and b!3849160 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311682) tb!222069))

(declare-fun result!270580 () Bool)

(assert (= result!270580 result!270576))

(assert (=> d!1141571 t!311682))

(declare-fun b_and!287491 () Bool)

(assert (= b_and!287361 (and (=> t!311682 result!270580) b_and!287491)))

(declare-fun t!311684 () Bool)

(declare-fun tb!222071 () Bool)

(assert (=> (and b!3849145 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311684) tb!222071))

(declare-fun result!270582 () Bool)

(assert (= result!270582 result!270576))

(assert (=> d!1141571 t!311684))

(declare-fun b_and!287493 () Bool)

(assert (= b_and!287357 (and (=> t!311684 result!270582) b_and!287493)))

(declare-fun tb!222073 () Bool)

(declare-fun t!311686 () Bool)

(assert (=> (and b!3848559 (= (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311686) tb!222073))

(declare-fun result!270584 () Bool)

(assert (= result!270584 result!270576))

(assert (=> d!1141571 t!311686))

(declare-fun b_and!287495 () Bool)

(assert (= b_and!287363 (and (=> t!311686 result!270584) b_and!287495)))

(declare-fun t!311688 () Bool)

(declare-fun tb!222075 () Bool)

(assert (=> (and b!3849164 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311688) tb!222075))

(declare-fun result!270586 () Bool)

(assert (= result!270586 result!270576))

(assert (=> d!1141571 t!311688))

(declare-fun b_and!287497 () Bool)

(assert (= b_and!287365 (and (=> t!311688 result!270586) b_and!287497)))

(declare-fun b_lambda!112531 () Bool)

(assert (=> (not b_lambda!112531) (not d!1141571)))

(assert (=> d!1141571 t!311676))

(declare-fun b_and!287499 () Bool)

(assert (= b_and!287485 (and (=> t!311676 result!270574) b_and!287499)))

(assert (=> d!1141571 t!311668))

(declare-fun b_and!287501 () Bool)

(assert (= b_and!287477 (and (=> t!311668 result!270566) b_and!287501)))

(assert (=> d!1141571 t!311674))

(declare-fun b_and!287503 () Bool)

(assert (= b_and!287483 (and (=> t!311674 result!270572) b_and!287503)))

(assert (=> d!1141571 t!311672))

(declare-fun b_and!287505 () Bool)

(assert (= b_and!287481 (and (=> t!311672 result!270570) b_and!287505)))

(assert (=> d!1141571 t!311666))

(declare-fun b_and!287507 () Bool)

(assert (= b_and!287475 (and (=> t!311666 result!270564) b_and!287507)))

(assert (=> d!1141571 t!311670))

(declare-fun b_and!287509 () Bool)

(assert (= b_and!287479 (and (=> t!311670 result!270568) b_and!287509)))

(assert (=> d!1141571 m!4403545))

(declare-fun m!4405231 () Bool)

(assert (=> d!1141571 m!4405231))

(assert (=> d!1141571 m!4405223))

(declare-fun m!4405233 () Bool)

(assert (=> d!1141571 m!4405233))

(assert (=> d!1141571 m!4403545))

(declare-fun m!4405235 () Bool)

(assert (=> d!1141571 m!4405235))

(assert (=> d!1141571 m!4405233))

(declare-fun m!4405237 () Bool)

(assert (=> d!1141571 m!4405237))

(assert (=> d!1141571 m!4403545))

(assert (=> d!1141571 m!4405223))

(assert (=> b!3848853 d!1141571))

(assert (=> b!3848853 d!1141465))

(assert (=> b!3848853 d!1140983))

(declare-fun d!1141573 () Bool)

(assert (=> d!1141573 (= (isEmpty!24136 (_1!23123 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601)))) ((_ is Nil!40788) (_1!23123 (findLongestMatchInner!1165 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) Nil!40788 (size!30680 Nil!40788) lt!1336601 lt!1336601 (size!30680 lt!1336601)))))))

(assert (=> b!3848853 d!1141573))

(declare-fun d!1141575 () Bool)

(assert (=> d!1141575 (= (seqFromList!4575 (_1!23123 lt!1336691)) (fromListB!2109 (_1!23123 lt!1336691)))))

(declare-fun bs!582846 () Bool)

(assert (= bs!582846 d!1141575))

(declare-fun m!4405239 () Bool)

(assert (=> bs!582846 m!4405239))

(assert (=> b!3848853 d!1141575))

(assert (=> b!3848853 d!1141553))

(declare-fun d!1141577 () Bool)

(declare-fun lt!1337198 () Int)

(assert (=> d!1141577 (= lt!1337198 (size!30680 (list!15180 (seqFromList!4575 (_1!23123 lt!1336691)))))))

(declare-fun size!30686 (Conc!12515) Int)

(assert (=> d!1141577 (= lt!1337198 (size!30686 (c!670247 (seqFromList!4575 (_1!23123 lt!1336691)))))))

(assert (=> d!1141577 (= (size!30682 (seqFromList!4575 (_1!23123 lt!1336691))) lt!1337198)))

(declare-fun bs!582847 () Bool)

(assert (= bs!582847 d!1141577))

(assert (=> bs!582847 m!4403545))

(assert (=> bs!582847 m!4405231))

(assert (=> bs!582847 m!4405231))

(declare-fun m!4405241 () Bool)

(assert (=> bs!582847 m!4405241))

(declare-fun m!4405243 () Bool)

(assert (=> bs!582847 m!4405243))

(assert (=> b!3848853 d!1141577))

(declare-fun d!1141579 () Bool)

(assert (=> d!1141579 (= (list!15180 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80)))) (list!15182 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80))))))))

(declare-fun bs!582848 () Bool)

(assert (= bs!582848 d!1141579))

(declare-fun m!4405245 () Bool)

(assert (=> bs!582848 m!4405245))

(assert (=> b!3849051 d!1141579))

(declare-fun d!1141581 () Bool)

(assert (=> d!1141581 (= (isEmpty!24138 (_1!23121 lt!1336739)) ((_ is Nil!40790) (_1!23121 lt!1336739)))))

(assert (=> b!3849010 d!1141581))

(declare-fun b!3850122 () Bool)

(declare-fun e!2379689 () List!40914)

(assert (=> b!3850122 (= e!2379689 suffixTokens!72)))

(declare-fun b!3850123 () Bool)

(assert (=> b!3850123 (= e!2379689 (Cons!40790 (h!46210 (t!311335 prefixTokens!80)) (++!10366 (t!311335 (t!311335 prefixTokens!80)) suffixTokens!72)))))

(declare-fun e!2379688 () Bool)

(declare-fun b!3850125 () Bool)

(declare-fun lt!1337199 () List!40914)

(assert (=> b!3850125 (= e!2379688 (or (not (= suffixTokens!72 Nil!40790)) (= lt!1337199 (t!311335 prefixTokens!80))))))

(declare-fun d!1141583 () Bool)

(assert (=> d!1141583 e!2379688))

(declare-fun res!1558601 () Bool)

(assert (=> d!1141583 (=> (not res!1558601) (not e!2379688))))

(assert (=> d!1141583 (= res!1558601 (= (content!6063 lt!1337199) ((_ map or) (content!6063 (t!311335 prefixTokens!80)) (content!6063 suffixTokens!72))))))

(assert (=> d!1141583 (= lt!1337199 e!2379689)))

(declare-fun c!670612 () Bool)

(assert (=> d!1141583 (= c!670612 ((_ is Nil!40790) (t!311335 prefixTokens!80)))))

(assert (=> d!1141583 (= (++!10366 (t!311335 prefixTokens!80) suffixTokens!72) lt!1337199)))

(declare-fun b!3850124 () Bool)

(declare-fun res!1558600 () Bool)

(assert (=> b!3850124 (=> (not res!1558600) (not e!2379688))))

(assert (=> b!3850124 (= res!1558600 (= (size!30684 lt!1337199) (+ (size!30684 (t!311335 prefixTokens!80)) (size!30684 suffixTokens!72))))))

(assert (= (and d!1141583 c!670612) b!3850122))

(assert (= (and d!1141583 (not c!670612)) b!3850123))

(assert (= (and d!1141583 res!1558601) b!3850124))

(assert (= (and b!3850124 res!1558600) b!3850125))

(declare-fun m!4405247 () Bool)

(assert (=> b!3850123 m!4405247))

(declare-fun m!4405249 () Bool)

(assert (=> d!1141583 m!4405249))

(assert (=> d!1141583 m!4404409))

(assert (=> d!1141583 m!4403729))

(declare-fun m!4405251 () Bool)

(assert (=> b!3850124 m!4405251))

(assert (=> b!3850124 m!4404087))

(assert (=> b!3850124 m!4403735))

(assert (=> b!3849021 d!1141583))

(declare-fun d!1141585 () Bool)

(assert (=> d!1141585 (= (inv!54936 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72)))) (isBalanced!3622 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72))))))))

(declare-fun bs!582849 () Bool)

(assert (= bs!582849 d!1141585))

(declare-fun m!4405253 () Bool)

(assert (=> bs!582849 m!4405253))

(assert (=> tb!221783 d!1141585))

(declare-fun bs!582850 () Bool)

(declare-fun d!1141587 () Bool)

(assert (= bs!582850 (and d!1141587 d!1141083)))

(declare-fun lambda!126151 () Int)

(assert (=> bs!582850 (= (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toValue!8720 (transformation!6304 (h!46211 rules!2768)))) (= lambda!126151 lambda!126120))))

(declare-fun bs!582851 () Bool)

(assert (= bs!582851 (and d!1141587 d!1141267)))

(assert (=> bs!582851 (= (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) (= lambda!126151 lambda!126131))))

(assert (=> d!1141587 true))

(assert (=> d!1141587 (< (dynLambda!17603 order!22149 (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) (dynLambda!17604 order!22151 lambda!126151))))

(assert (=> d!1141587 (= (equivClasses!2598 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) (Forall2!1030 lambda!126151))))

(declare-fun bs!582852 () Bool)

(assert (= bs!582852 d!1141587))

(declare-fun m!4405255 () Bool)

(assert (=> bs!582852 m!4405255))

(assert (=> b!3848996 d!1141587))

(declare-fun d!1141589 () Bool)

(declare-fun lt!1337200 () Int)

(assert (=> d!1141589 (>= lt!1337200 0)))

(declare-fun e!2379690 () Int)

(assert (=> d!1141589 (= lt!1337200 e!2379690)))

(declare-fun c!670613 () Bool)

(assert (=> d!1141589 (= c!670613 ((_ is Nil!40788) (t!311333 lt!1336596)))))

(assert (=> d!1141589 (= (size!30680 (t!311333 lt!1336596)) lt!1337200)))

(declare-fun b!3850126 () Bool)

(assert (=> b!3850126 (= e!2379690 0)))

(declare-fun b!3850127 () Bool)

(assert (=> b!3850127 (= e!2379690 (+ 1 (size!30680 (t!311333 (t!311333 lt!1336596)))))))

(assert (= (and d!1141589 c!670613) b!3850126))

(assert (= (and d!1141589 (not c!670613)) b!3850127))

(declare-fun m!4405257 () Bool)

(assert (=> b!3850127 m!4405257))

(assert (=> b!3849098 d!1141589))

(assert (=> b!3848683 d!1141063))

(assert (=> b!3848992 d!1141079))

(declare-fun d!1141591 () Bool)

(assert (=> d!1141591 (= (apply!9547 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))) (seqFromList!4575 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336728))))) (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728))))) (seqFromList!4575 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336728))))))))

(declare-fun b_lambda!112533 () Bool)

(assert (=> (not b_lambda!112533) (not d!1141591)))

(declare-fun t!311690 () Bool)

(declare-fun tb!222077 () Bool)

(assert (=> (and b!3848568 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311690) tb!222077))

(declare-fun result!270588 () Bool)

(assert (=> tb!222077 (= result!270588 (inv!21 (dynLambda!17598 (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728))))) (seqFromList!4575 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336728)))))))))

(declare-fun m!4405259 () Bool)

(assert (=> tb!222077 m!4405259))

(assert (=> d!1141591 t!311690))

(declare-fun b_and!287511 () Bool)

(assert (= b_and!287505 (and (=> t!311690 result!270588) b_and!287511)))

(declare-fun tb!222079 () Bool)

(declare-fun t!311692 () Bool)

(assert (=> (and b!3848559 (= (toValue!8720 (transformation!6304 (h!46211 rules!2768))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311692) tb!222079))

(declare-fun result!270590 () Bool)

(assert (= result!270590 result!270588))

(assert (=> d!1141591 t!311692))

(declare-fun b_and!287513 () Bool)

(assert (= b_and!287503 (and (=> t!311692 result!270590) b_and!287513)))

(declare-fun tb!222081 () Bool)

(declare-fun t!311694 () Bool)

(assert (=> (and b!3848565 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311694) tb!222081))

(declare-fun result!270592 () Bool)

(assert (= result!270592 result!270588))

(assert (=> d!1141591 t!311694))

(declare-fun b_and!287515 () Bool)

(assert (= b_and!287501 (and (=> t!311694 result!270592) b_and!287515)))

(declare-fun tb!222083 () Bool)

(declare-fun t!311696 () Bool)

(assert (=> (and b!3849145 (= (toValue!8720 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311696) tb!222083))

(declare-fun result!270594 () Bool)

(assert (= result!270594 result!270588))

(assert (=> d!1141591 t!311696))

(declare-fun b_and!287517 () Bool)

(assert (= b_and!287509 (and (=> t!311696 result!270594) b_and!287517)))

(declare-fun tb!222085 () Bool)

(declare-fun t!311698 () Bool)

(assert (=> (and b!3849164 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311698) tb!222085))

(declare-fun result!270596 () Bool)

(assert (= result!270596 result!270588))

(assert (=> d!1141591 t!311698))

(declare-fun b_and!287519 () Bool)

(assert (= b_and!287507 (and (=> t!311698 result!270596) b_and!287519)))

(declare-fun tb!222087 () Bool)

(declare-fun t!311700 () Bool)

(assert (=> (and b!3849160 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311700) tb!222087))

(declare-fun result!270598 () Bool)

(assert (= result!270598 result!270588))

(assert (=> d!1141591 t!311700))

(declare-fun b_and!287521 () Bool)

(assert (= b_and!287499 (and (=> t!311700 result!270598) b_and!287521)))

(assert (=> d!1141591 m!4403681))

(declare-fun m!4405261 () Bool)

(assert (=> d!1141591 m!4405261))

(assert (=> b!3848992 d!1141591))

(declare-fun d!1141593 () Bool)

(assert (=> d!1141593 (= (seqFromList!4575 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336728)))) (fromListB!2109 (originalCharacters!6904 (_1!23122 (get!13496 lt!1336728)))))))

(declare-fun bs!582853 () Bool)

(assert (= bs!582853 d!1141593))

(declare-fun m!4405263 () Bool)

(assert (=> bs!582853 m!4405263))

(assert (=> b!3848992 d!1141593))

(declare-fun d!1141595 () Bool)

(declare-fun c!670614 () Bool)

(assert (=> d!1141595 (= c!670614 ((_ is Node!12515) (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72))))))))

(declare-fun e!2379692 () Bool)

(assert (=> d!1141595 (= (inv!54935 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72))))) e!2379692)))

(declare-fun b!3850128 () Bool)

(assert (=> b!3850128 (= e!2379692 (inv!54939 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72))))))))

(declare-fun b!3850129 () Bool)

(declare-fun e!2379693 () Bool)

(assert (=> b!3850129 (= e!2379692 e!2379693)))

(declare-fun res!1558602 () Bool)

(assert (=> b!3850129 (= res!1558602 (not ((_ is Leaf!19374) (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72)))))))))

(assert (=> b!3850129 (=> res!1558602 e!2379693)))

(declare-fun b!3850130 () Bool)

(assert (=> b!3850130 (= e!2379693 (inv!54940 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72))))))))

(assert (= (and d!1141595 c!670614) b!3850128))

(assert (= (and d!1141595 (not c!670614)) b!3850129))

(assert (= (and b!3850129 (not res!1558602)) b!3850130))

(declare-fun m!4405265 () Bool)

(assert (=> b!3850128 m!4405265))

(declare-fun m!4405267 () Bool)

(assert (=> b!3850130 m!4405267))

(assert (=> b!3849060 d!1141595))

(declare-fun d!1141597 () Bool)

(declare-fun res!1558607 () Bool)

(declare-fun e!2379698 () Bool)

(assert (=> d!1141597 (=> res!1558607 e!2379698)))

(assert (=> d!1141597 (= res!1558607 ((_ is Nil!40791) rules!2768))))

(assert (=> d!1141597 (= (noDuplicateTag!2434 thiss!20629 rules!2768 Nil!40792) e!2379698)))

(declare-fun b!3850135 () Bool)

(declare-fun e!2379699 () Bool)

(assert (=> b!3850135 (= e!2379698 e!2379699)))

(declare-fun res!1558608 () Bool)

(assert (=> b!3850135 (=> (not res!1558608) (not e!2379699))))

(declare-fun contains!8248 (List!40916 String!46388) Bool)

(assert (=> b!3850135 (= res!1558608 (not (contains!8248 Nil!40792 (tag!7164 (h!46211 rules!2768)))))))

(declare-fun b!3850136 () Bool)

(assert (=> b!3850136 (= e!2379699 (noDuplicateTag!2434 thiss!20629 (t!311336 rules!2768) (Cons!40792 (tag!7164 (h!46211 rules!2768)) Nil!40792)))))

(assert (= (and d!1141597 (not res!1558607)) b!3850135))

(assert (= (and b!3850135 res!1558608) b!3850136))

(declare-fun m!4405269 () Bool)

(assert (=> b!3850135 m!4405269))

(declare-fun m!4405271 () Bool)

(assert (=> b!3850136 m!4405271))

(assert (=> b!3848886 d!1141597))

(declare-fun d!1141599 () Bool)

(assert (=> d!1141599 (= (inv!16 (value!200298 (h!46210 suffixTokens!72))) (= (charsToInt!0 (text!46185 (value!200298 (h!46210 suffixTokens!72)))) (value!200289 (value!200298 (h!46210 suffixTokens!72)))))))

(declare-fun bs!582854 () Bool)

(assert (= bs!582854 d!1141599))

(declare-fun m!4405273 () Bool)

(assert (=> bs!582854 m!4405273))

(assert (=> b!3849067 d!1141599))

(declare-fun b!3850137 () Bool)

(declare-fun e!2379700 () Bool)

(assert (=> b!3850137 (= e!2379700 (not (= (head!8094 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693))))) (c!670246 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))))

(declare-fun b!3850138 () Bool)

(declare-fun e!2379702 () Bool)

(assert (=> b!3850138 (= e!2379702 (= (head!8094 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693))))) (c!670246 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))))

(declare-fun b!3850139 () Bool)

(declare-fun e!2379703 () Bool)

(assert (=> b!3850139 (= e!2379703 (nullable!3899 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(declare-fun b!3850140 () Bool)

(declare-fun e!2379701 () Bool)

(declare-fun lt!1337201 () Bool)

(assert (=> b!3850140 (= e!2379701 (not lt!1337201))))

(declare-fun b!3850141 () Bool)

(declare-fun e!2379705 () Bool)

(assert (=> b!3850141 (= e!2379705 e!2379700)))

(declare-fun res!1558615 () Bool)

(assert (=> b!3850141 (=> res!1558615 e!2379700)))

(declare-fun call!282224 () Bool)

(assert (=> b!3850141 (= res!1558615 call!282224)))

(declare-fun b!3850142 () Bool)

(declare-fun res!1558609 () Bool)

(assert (=> b!3850142 (=> (not res!1558609) (not e!2379702))))

(assert (=> b!3850142 (= res!1558609 (not call!282224))))

(declare-fun b!3850143 () Bool)

(declare-fun e!2379704 () Bool)

(assert (=> b!3850143 (= e!2379704 e!2379701)))

(declare-fun c!670617 () Bool)

(assert (=> b!3850143 (= c!670617 ((_ is EmptyLang!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(declare-fun b!3850144 () Bool)

(assert (=> b!3850144 (= e!2379704 (= lt!1337201 call!282224))))

(declare-fun d!1141601 () Bool)

(assert (=> d!1141601 e!2379704))

(declare-fun c!670615 () Bool)

(assert (=> d!1141601 (= c!670615 ((_ is EmptyExpr!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))))

(assert (=> d!1141601 (= lt!1337201 e!2379703)))

(declare-fun c!670616 () Bool)

(assert (=> d!1141601 (= c!670616 (isEmpty!24136 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693))))))))

(assert (=> d!1141601 (validRegex!5098 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))

(assert (=> d!1141601 (= (matchR!5356 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693))))) lt!1337201)))

(declare-fun b!3850145 () Bool)

(declare-fun res!1558614 () Bool)

(declare-fun e!2379706 () Bool)

(assert (=> b!3850145 (=> res!1558614 e!2379706)))

(assert (=> b!3850145 (= res!1558614 e!2379702)))

(declare-fun res!1558616 () Bool)

(assert (=> b!3850145 (=> (not res!1558616) (not e!2379702))))

(assert (=> b!3850145 (= res!1558616 lt!1337201)))

(declare-fun bm!282219 () Bool)

(assert (=> bm!282219 (= call!282224 (isEmpty!24136 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693))))))))

(declare-fun b!3850146 () Bool)

(declare-fun res!1558611 () Bool)

(assert (=> b!3850146 (=> (not res!1558611) (not e!2379702))))

(assert (=> b!3850146 (= res!1558611 (isEmpty!24136 (tail!5821 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693)))))))))

(declare-fun b!3850147 () Bool)

(declare-fun res!1558610 () Bool)

(assert (=> b!3850147 (=> res!1558610 e!2379706)))

(assert (=> b!3850147 (= res!1558610 (not ((_ is ElementMatch!11209) (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))))))

(assert (=> b!3850147 (= e!2379701 e!2379706)))

(declare-fun b!3850148 () Bool)

(declare-fun res!1558612 () Bool)

(assert (=> b!3850148 (=> res!1558612 e!2379700)))

(assert (=> b!3850148 (= res!1558612 (not (isEmpty!24136 (tail!5821 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693))))))))))

(declare-fun b!3850149 () Bool)

(assert (=> b!3850149 (= e!2379706 e!2379705)))

(declare-fun res!1558613 () Bool)

(assert (=> b!3850149 (=> (not res!1558613) (not e!2379705))))

(assert (=> b!3850149 (= res!1558613 (not lt!1337201))))

(declare-fun b!3850150 () Bool)

(assert (=> b!3850150 (= e!2379703 (matchR!5356 (derivativeStep!3397 (regex!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))) (head!8094 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693)))))) (tail!5821 (list!15180 (charsOf!4132 (_1!23122 (get!13496 lt!1336693)))))))))

(assert (= (and d!1141601 c!670616) b!3850139))

(assert (= (and d!1141601 (not c!670616)) b!3850150))

(assert (= (and d!1141601 c!670615) b!3850144))

(assert (= (and d!1141601 (not c!670615)) b!3850143))

(assert (= (and b!3850143 c!670617) b!3850140))

(assert (= (and b!3850143 (not c!670617)) b!3850147))

(assert (= (and b!3850147 (not res!1558610)) b!3850145))

(assert (= (and b!3850145 res!1558616) b!3850142))

(assert (= (and b!3850142 res!1558609) b!3850146))

(assert (= (and b!3850146 res!1558611) b!3850138))

(assert (= (and b!3850145 (not res!1558614)) b!3850149))

(assert (= (and b!3850149 res!1558613) b!3850141))

(assert (= (and b!3850141 (not res!1558615)) b!3850148))

(assert (= (and b!3850148 (not res!1558612)) b!3850137))

(assert (= (or b!3850144 b!3850141 b!3850142) bm!282219))

(assert (=> d!1141601 m!4403529))

(declare-fun m!4405275 () Bool)

(assert (=> d!1141601 m!4405275))

(assert (=> d!1141601 m!4403379))

(assert (=> b!3850148 m!4403529))

(declare-fun m!4405277 () Bool)

(assert (=> b!3850148 m!4405277))

(assert (=> b!3850148 m!4405277))

(declare-fun m!4405279 () Bool)

(assert (=> b!3850148 m!4405279))

(assert (=> b!3850137 m!4403529))

(declare-fun m!4405281 () Bool)

(assert (=> b!3850137 m!4405281))

(assert (=> b!3850146 m!4403529))

(assert (=> b!3850146 m!4405277))

(assert (=> b!3850146 m!4405277))

(assert (=> b!3850146 m!4405279))

(assert (=> b!3850150 m!4403529))

(assert (=> b!3850150 m!4405281))

(assert (=> b!3850150 m!4405281))

(declare-fun m!4405283 () Bool)

(assert (=> b!3850150 m!4405283))

(assert (=> b!3850150 m!4403529))

(assert (=> b!3850150 m!4405277))

(assert (=> b!3850150 m!4405283))

(assert (=> b!3850150 m!4405277))

(declare-fun m!4405285 () Bool)

(assert (=> b!3850150 m!4405285))

(assert (=> bm!282219 m!4403529))

(assert (=> bm!282219 m!4405275))

(assert (=> b!3850138 m!4403529))

(assert (=> b!3850138 m!4405281))

(assert (=> b!3850139 m!4403391))

(assert (=> b!3848845 d!1141601))

(assert (=> b!3848845 d!1141141))

(assert (=> b!3848845 d!1141143))

(assert (=> b!3848845 d!1141051))

(declare-fun d!1141603 () Bool)

(assert (=> d!1141603 (= (inv!54928 (tag!7164 (h!46211 (t!311336 rules!2768)))) (= (mod (str.len (value!200297 (tag!7164 (h!46211 (t!311336 rules!2768))))) 2) 0))))

(assert (=> b!3849144 d!1141603))

(declare-fun d!1141605 () Bool)

(declare-fun res!1558617 () Bool)

(declare-fun e!2379707 () Bool)

(assert (=> d!1141605 (=> (not res!1558617) (not e!2379707))))

(assert (=> d!1141605 (= res!1558617 (semiInverseModEq!2699 (toChars!8579 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toValue!8720 (transformation!6304 (h!46211 (t!311336 rules!2768))))))))

(assert (=> d!1141605 (= (inv!54932 (transformation!6304 (h!46211 (t!311336 rules!2768)))) e!2379707)))

(declare-fun b!3850151 () Bool)

(assert (=> b!3850151 (= e!2379707 (equivClasses!2598 (toChars!8579 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toValue!8720 (transformation!6304 (h!46211 (t!311336 rules!2768))))))))

(assert (= (and d!1141605 res!1558617) b!3850151))

(declare-fun m!4405287 () Bool)

(assert (=> d!1141605 m!4405287))

(declare-fun m!4405289 () Bool)

(assert (=> b!3850151 m!4405289))

(assert (=> b!3849144 d!1141605))

(assert (=> bm!282106 d!1141353))

(declare-fun e!2379708 () Bool)

(assert (=> b!3849133 (= tp!1166714 e!2379708)))

(declare-fun b!3850154 () Bool)

(declare-fun tp!1166895 () Bool)

(assert (=> b!3850154 (= e!2379708 tp!1166895)))

(declare-fun b!3850152 () Bool)

(assert (=> b!3850152 (= e!2379708 tp_is_empty!19389)))

(declare-fun b!3850155 () Bool)

(declare-fun tp!1166894 () Bool)

(declare-fun tp!1166893 () Bool)

(assert (=> b!3850155 (= e!2379708 (and tp!1166894 tp!1166893))))

(declare-fun b!3850153 () Bool)

(declare-fun tp!1166892 () Bool)

(declare-fun tp!1166891 () Bool)

(assert (=> b!3850153 (= e!2379708 (and tp!1166892 tp!1166891))))

(assert (= (and b!3849133 ((_ is ElementMatch!11209) (reg!11538 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850152))

(assert (= (and b!3849133 ((_ is Concat!17744) (reg!11538 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850153))

(assert (= (and b!3849133 ((_ is Star!11209) (reg!11538 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850154))

(assert (= (and b!3849133 ((_ is Union!11209) (reg!11538 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850155))

(declare-fun b!3850156 () Bool)

(declare-fun e!2379709 () Bool)

(declare-fun tp!1166896 () Bool)

(assert (=> b!3850156 (= e!2379709 (and tp_is_empty!19389 tp!1166896))))

(assert (=> b!3849162 (= tp!1166743 e!2379709)))

(assert (= (and b!3849162 ((_ is Cons!40788) (originalCharacters!6904 (h!46210 (t!311335 suffixTokens!72))))) b!3850156))

(declare-fun e!2379710 () Bool)

(assert (=> b!3849134 (= tp!1166713 e!2379710)))

(declare-fun b!3850159 () Bool)

(declare-fun tp!1166901 () Bool)

(assert (=> b!3850159 (= e!2379710 tp!1166901)))

(declare-fun b!3850157 () Bool)

(assert (=> b!3850157 (= e!2379710 tp_is_empty!19389)))

(declare-fun b!3850160 () Bool)

(declare-fun tp!1166900 () Bool)

(declare-fun tp!1166899 () Bool)

(assert (=> b!3850160 (= e!2379710 (and tp!1166900 tp!1166899))))

(declare-fun b!3850158 () Bool)

(declare-fun tp!1166898 () Bool)

(declare-fun tp!1166897 () Bool)

(assert (=> b!3850158 (= e!2379710 (and tp!1166898 tp!1166897))))

(assert (= (and b!3849134 ((_ is ElementMatch!11209) (regOne!22931 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850157))

(assert (= (and b!3849134 ((_ is Concat!17744) (regOne!22931 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850158))

(assert (= (and b!3849134 ((_ is Star!11209) (regOne!22931 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850159))

(assert (= (and b!3849134 ((_ is Union!11209) (regOne!22931 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850160))

(declare-fun e!2379711 () Bool)

(assert (=> b!3849134 (= tp!1166712 e!2379711)))

(declare-fun b!3850163 () Bool)

(declare-fun tp!1166906 () Bool)

(assert (=> b!3850163 (= e!2379711 tp!1166906)))

(declare-fun b!3850161 () Bool)

(assert (=> b!3850161 (= e!2379711 tp_is_empty!19389)))

(declare-fun b!3850164 () Bool)

(declare-fun tp!1166905 () Bool)

(declare-fun tp!1166904 () Bool)

(assert (=> b!3850164 (= e!2379711 (and tp!1166905 tp!1166904))))

(declare-fun b!3850162 () Bool)

(declare-fun tp!1166903 () Bool)

(declare-fun tp!1166902 () Bool)

(assert (=> b!3850162 (= e!2379711 (and tp!1166903 tp!1166902))))

(assert (= (and b!3849134 ((_ is ElementMatch!11209) (regTwo!22931 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850161))

(assert (= (and b!3849134 ((_ is Concat!17744) (regTwo!22931 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850162))

(assert (= (and b!3849134 ((_ is Star!11209) (regTwo!22931 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850163))

(assert (= (and b!3849134 ((_ is Union!11209) (regTwo!22931 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850164))

(declare-fun e!2379712 () Bool)

(assert (=> b!3849163 (= tp!1166744 e!2379712)))

(declare-fun b!3850167 () Bool)

(declare-fun tp!1166911 () Bool)

(assert (=> b!3850167 (= e!2379712 tp!1166911)))

(declare-fun b!3850165 () Bool)

(assert (=> b!3850165 (= e!2379712 tp_is_empty!19389)))

(declare-fun b!3850168 () Bool)

(declare-fun tp!1166910 () Bool)

(declare-fun tp!1166909 () Bool)

(assert (=> b!3850168 (= e!2379712 (and tp!1166910 tp!1166909))))

(declare-fun b!3850166 () Bool)

(declare-fun tp!1166908 () Bool)

(declare-fun tp!1166907 () Bool)

(assert (=> b!3850166 (= e!2379712 (and tp!1166908 tp!1166907))))

(assert (= (and b!3849163 ((_ is ElementMatch!11209) (regex!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))) b!3850165))

(assert (= (and b!3849163 ((_ is Concat!17744) (regex!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))) b!3850166))

(assert (= (and b!3849163 ((_ is Star!11209) (regex!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))) b!3850167))

(assert (= (and b!3849163 ((_ is Union!11209) (regex!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))) b!3850168))

(declare-fun b!3850172 () Bool)

(declare-fun b_free!103165 () Bool)

(declare-fun b_next!103869 () Bool)

(assert (=> b!3850172 (= b_free!103165 (not b_next!103869))))

(declare-fun t!311702 () Bool)

(declare-fun tb!222089 () Bool)

(assert (=> (and b!3850172 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311702) tb!222089))

(declare-fun result!270600 () Bool)

(assert (= result!270600 result!270588))

(assert (=> d!1141591 t!311702))

(declare-fun tb!222091 () Bool)

(declare-fun t!311704 () Bool)

(assert (=> (and b!3850172 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311704) tb!222091))

(declare-fun result!270602 () Bool)

(assert (= result!270602 result!270294))

(assert (=> d!1141019 t!311704))

(declare-fun t!311706 () Bool)

(declare-fun tb!222093 () Bool)

(assert (=> (and b!3850172 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311706) tb!222093))

(declare-fun result!270604 () Bool)

(assert (= result!270604 result!270430))

(assert (=> d!1141325 t!311706))

(declare-fun tb!222095 () Bool)

(declare-fun t!311708 () Bool)

(assert (=> (and b!3850172 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311708) tb!222095))

(declare-fun result!270606 () Bool)

(assert (= result!270606 result!270564))

(assert (=> d!1141571 t!311708))

(assert (=> d!1141567 t!311708))

(declare-fun b_and!287523 () Bool)

(declare-fun tp!1166915 () Bool)

(assert (=> b!3850172 (= tp!1166915 (and (=> t!311708 result!270606) (=> t!311706 result!270604) (=> t!311704 result!270602) (=> t!311702 result!270600) b_and!287523))))

(declare-fun b_free!103167 () Bool)

(declare-fun b_next!103871 () Bool)

(assert (=> b!3850172 (= b_free!103167 (not b_next!103871))))

(declare-fun t!311710 () Bool)

(declare-fun tb!222097 () Bool)

(assert (=> (and b!3850172 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) t!311710) tb!222097))

(declare-fun result!270608 () Bool)

(assert (= result!270608 result!270282))

(assert (=> b!3849058 t!311710))

(declare-fun tb!222099 () Bool)

(declare-fun t!311712 () Bool)

(assert (=> (and b!3850172 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311712) tb!222099))

(declare-fun result!270610 () Bool)

(assert (= result!270610 result!270288))

(assert (=> d!1141011 t!311712))

(declare-fun t!311714 () Bool)

(declare-fun tb!222101 () Bool)

(assert (=> (and b!3850172 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))) t!311714) tb!222101))

(declare-fun result!270612 () Bool)

(assert (= result!270612 result!270334))

(assert (=> b!3849205 t!311714))

(declare-fun tb!222103 () Bool)

(declare-fun t!311716 () Bool)

(assert (=> (and b!3850172 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311716) tb!222103))

(declare-fun result!270614 () Bool)

(assert (= result!270614 result!270346))

(assert (=> d!1141143 t!311716))

(declare-fun t!311718 () Bool)

(declare-fun tb!222105 () Bool)

(assert (=> (and b!3850172 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) t!311718) tb!222105))

(declare-fun result!270616 () Bool)

(assert (= result!270616 result!270274))

(assert (=> b!3849051 t!311718))

(declare-fun t!311720 () Bool)

(declare-fun tb!222107 () Bool)

(assert (=> (and b!3850172 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311720) tb!222107))

(declare-fun result!270618 () Bool)

(assert (= result!270618 result!270576))

(assert (=> d!1141571 t!311720))

(declare-fun tb!222109 () Bool)

(declare-fun t!311722 () Bool)

(assert (=> (and b!3850172 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))) t!311722) tb!222109))

(declare-fun result!270620 () Bool)

(assert (= result!270620 result!270360))

(assert (=> b!3849389 t!311722))

(declare-fun tb!222111 () Bool)

(declare-fun t!311724 () Bool)

(assert (=> (and b!3850172 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311724) tb!222111))

(declare-fun result!270622 () Bool)

(assert (= result!270622 result!270394))

(assert (=> d!1141233 t!311724))

(declare-fun tp!1166914 () Bool)

(declare-fun b_and!287525 () Bool)

(assert (=> b!3850172 (= tp!1166914 (and (=> t!311712 result!270610) (=> t!311718 result!270616) (=> t!311724 result!270622) (=> t!311722 result!270620) (=> t!311710 result!270608) (=> t!311720 result!270618) (=> t!311714 result!270612) (=> t!311716 result!270614) b_and!287525))))

(declare-fun e!2379714 () Bool)

(declare-fun e!2379715 () Bool)

(declare-fun tp!1166912 () Bool)

(declare-fun b!3850170 () Bool)

(assert (=> b!3850170 (= e!2379714 (and (inv!21 (value!200298 (h!46210 (t!311335 (t!311335 prefixTokens!80))))) e!2379715 tp!1166912))))

(declare-fun e!2379717 () Bool)

(declare-fun b!3850169 () Bool)

(declare-fun tp!1166916 () Bool)

(assert (=> b!3850169 (= e!2379717 (and (inv!54931 (h!46210 (t!311335 (t!311335 prefixTokens!80)))) e!2379714 tp!1166916))))

(assert (=> b!3849157 (= tp!1166742 e!2379717)))

(declare-fun e!2379716 () Bool)

(assert (=> b!3850172 (= e!2379716 (and tp!1166915 tp!1166914))))

(declare-fun tp!1166913 () Bool)

(declare-fun b!3850171 () Bool)

(assert (=> b!3850171 (= e!2379715 (and tp!1166913 (inv!54928 (tag!7164 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (inv!54932 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) e!2379716))))

(assert (= b!3850171 b!3850172))

(assert (= b!3850170 b!3850171))

(assert (= b!3850169 b!3850170))

(assert (= (and b!3849157 ((_ is Cons!40790) (t!311335 (t!311335 prefixTokens!80)))) b!3850169))

(declare-fun m!4405291 () Bool)

(assert (=> b!3850170 m!4405291))

(declare-fun m!4405293 () Bool)

(assert (=> b!3850169 m!4405293))

(declare-fun m!4405295 () Bool)

(assert (=> b!3850171 m!4405295))

(declare-fun m!4405297 () Bool)

(assert (=> b!3850171 m!4405297))

(declare-fun tp!1166923 () Bool)

(declare-fun b!3850181 () Bool)

(declare-fun tp!1166924 () Bool)

(declare-fun e!2379724 () Bool)

(assert (=> b!3850181 (= e!2379724 (and (inv!54935 (left!31461 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591))))))) tp!1166924 (inv!54935 (right!31791 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591))))))) tp!1166923))))

(declare-fun b!3850183 () Bool)

(declare-fun e!2379723 () Bool)

(declare-fun tp!1166925 () Bool)

(assert (=> b!3850183 (= e!2379723 tp!1166925)))

(declare-fun b!3850182 () Bool)

(declare-fun inv!54942 (IArray!25035) Bool)

(assert (=> b!3850182 (= e!2379724 (and (inv!54942 (xs!15821 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591))))))) e!2379723))))

(assert (=> b!3849079 (= tp!1166690 (and (inv!54935 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591)))))) e!2379724))))

(assert (= (and b!3849079 ((_ is Node!12515) (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591))))))) b!3850181))

(assert (= b!3850182 b!3850183))

(assert (= (and b!3849079 ((_ is Leaf!19374) (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))) (value!200298 (_1!23122 (v!39013 lt!1336591))))))) b!3850182))

(declare-fun m!4405299 () Bool)

(assert (=> b!3850181 m!4405299))

(declare-fun m!4405301 () Bool)

(assert (=> b!3850181 m!4405301))

(declare-fun m!4405303 () Bool)

(assert (=> b!3850182 m!4405303))

(assert (=> b!3849079 m!4403829))

(declare-fun b!3850184 () Bool)

(declare-fun e!2379725 () Bool)

(declare-fun tp!1166926 () Bool)

(assert (=> b!3850184 (= e!2379725 (and tp_is_empty!19389 tp!1166926))))

(assert (=> b!3849158 (= tp!1166738 e!2379725)))

(assert (= (and b!3849158 ((_ is Cons!40788) (originalCharacters!6904 (h!46210 (t!311335 prefixTokens!80))))) b!3850184))

(declare-fun e!2379726 () Bool)

(assert (=> b!3849159 (= tp!1166739 e!2379726)))

(declare-fun b!3850187 () Bool)

(declare-fun tp!1166931 () Bool)

(assert (=> b!3850187 (= e!2379726 tp!1166931)))

(declare-fun b!3850185 () Bool)

(assert (=> b!3850185 (= e!2379726 tp_is_empty!19389)))

(declare-fun b!3850188 () Bool)

(declare-fun tp!1166930 () Bool)

(declare-fun tp!1166929 () Bool)

(assert (=> b!3850188 (= e!2379726 (and tp!1166930 tp!1166929))))

(declare-fun b!3850186 () Bool)

(declare-fun tp!1166928 () Bool)

(declare-fun tp!1166927 () Bool)

(assert (=> b!3850186 (= e!2379726 (and tp!1166928 tp!1166927))))

(assert (= (and b!3849159 ((_ is ElementMatch!11209) (regex!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))) b!3850185))

(assert (= (and b!3849159 ((_ is Concat!17744) (regex!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))) b!3850186))

(assert (= (and b!3849159 ((_ is Star!11209) (regex!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))) b!3850187))

(assert (= (and b!3849159 ((_ is Union!11209) (regex!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))) b!3850188))

(declare-fun b!3850189 () Bool)

(declare-fun tp!1166933 () Bool)

(declare-fun tp!1166932 () Bool)

(declare-fun e!2379728 () Bool)

(assert (=> b!3850189 (= e!2379728 (and (inv!54935 (left!31461 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80)))))) tp!1166933 (inv!54935 (right!31791 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80)))))) tp!1166932))))

(declare-fun b!3850191 () Bool)

(declare-fun e!2379727 () Bool)

(declare-fun tp!1166934 () Bool)

(assert (=> b!3850191 (= e!2379727 tp!1166934)))

(declare-fun b!3850190 () Bool)

(assert (=> b!3850190 (= e!2379728 (and (inv!54942 (xs!15821 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80)))))) e!2379727))))

(assert (=> b!3849057 (= tp!1166688 (and (inv!54935 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80))))) e!2379728))))

(assert (= (and b!3849057 ((_ is Node!12515) (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80)))))) b!3850189))

(assert (= b!3850190 b!3850191))

(assert (= (and b!3849057 ((_ is Leaf!19374) (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (value!200298 (h!46210 prefixTokens!80)))))) b!3850190))

(declare-fun m!4405305 () Bool)

(assert (=> b!3850189 m!4405305))

(declare-fun m!4405307 () Bool)

(assert (=> b!3850189 m!4405307))

(declare-fun m!4405309 () Bool)

(assert (=> b!3850190 m!4405309))

(assert (=> b!3849057 m!4403763))

(declare-fun e!2379729 () Bool)

(assert (=> b!3849128 (= tp!1166706 e!2379729)))

(declare-fun b!3850194 () Bool)

(declare-fun tp!1166939 () Bool)

(assert (=> b!3850194 (= e!2379729 tp!1166939)))

(declare-fun b!3850192 () Bool)

(assert (=> b!3850192 (= e!2379729 tp_is_empty!19389)))

(declare-fun b!3850195 () Bool)

(declare-fun tp!1166938 () Bool)

(declare-fun tp!1166937 () Bool)

(assert (=> b!3850195 (= e!2379729 (and tp!1166938 tp!1166937))))

(declare-fun b!3850193 () Bool)

(declare-fun tp!1166936 () Bool)

(declare-fun tp!1166935 () Bool)

(assert (=> b!3850193 (= e!2379729 (and tp!1166936 tp!1166935))))

(assert (= (and b!3849128 ((_ is ElementMatch!11209) (regOne!22930 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850192))

(assert (= (and b!3849128 ((_ is Concat!17744) (regOne!22930 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850193))

(assert (= (and b!3849128 ((_ is Star!11209) (regOne!22930 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850194))

(assert (= (and b!3849128 ((_ is Union!11209) (regOne!22930 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850195))

(declare-fun e!2379730 () Bool)

(assert (=> b!3849128 (= tp!1166705 e!2379730)))

(declare-fun b!3850198 () Bool)

(declare-fun tp!1166944 () Bool)

(assert (=> b!3850198 (= e!2379730 tp!1166944)))

(declare-fun b!3850196 () Bool)

(assert (=> b!3850196 (= e!2379730 tp_is_empty!19389)))

(declare-fun b!3850199 () Bool)

(declare-fun tp!1166943 () Bool)

(declare-fun tp!1166942 () Bool)

(assert (=> b!3850199 (= e!2379730 (and tp!1166943 tp!1166942))))

(declare-fun b!3850197 () Bool)

(declare-fun tp!1166941 () Bool)

(declare-fun tp!1166940 () Bool)

(assert (=> b!3850197 (= e!2379730 (and tp!1166941 tp!1166940))))

(assert (= (and b!3849128 ((_ is ElementMatch!11209) (regTwo!22930 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850196))

(assert (= (and b!3849128 ((_ is Concat!17744) (regTwo!22930 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850197))

(assert (= (and b!3849128 ((_ is Star!11209) (regTwo!22930 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850198))

(assert (= (and b!3849128 ((_ is Union!11209) (regTwo!22930 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850199))

(declare-fun e!2379731 () Bool)

(assert (=> b!3849130 (= tp!1166708 e!2379731)))

(declare-fun b!3850202 () Bool)

(declare-fun tp!1166949 () Bool)

(assert (=> b!3850202 (= e!2379731 tp!1166949)))

(declare-fun b!3850200 () Bool)

(assert (=> b!3850200 (= e!2379731 tp_is_empty!19389)))

(declare-fun b!3850203 () Bool)

(declare-fun tp!1166948 () Bool)

(declare-fun tp!1166947 () Bool)

(assert (=> b!3850203 (= e!2379731 (and tp!1166948 tp!1166947))))

(declare-fun b!3850201 () Bool)

(declare-fun tp!1166946 () Bool)

(declare-fun tp!1166945 () Bool)

(assert (=> b!3850201 (= e!2379731 (and tp!1166946 tp!1166945))))

(assert (= (and b!3849130 ((_ is ElementMatch!11209) (regOne!22931 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850200))

(assert (= (and b!3849130 ((_ is Concat!17744) (regOne!22931 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850201))

(assert (= (and b!3849130 ((_ is Star!11209) (regOne!22931 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850202))

(assert (= (and b!3849130 ((_ is Union!11209) (regOne!22931 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850203))

(declare-fun e!2379732 () Bool)

(assert (=> b!3849130 (= tp!1166707 e!2379732)))

(declare-fun b!3850206 () Bool)

(declare-fun tp!1166954 () Bool)

(assert (=> b!3850206 (= e!2379732 tp!1166954)))

(declare-fun b!3850204 () Bool)

(assert (=> b!3850204 (= e!2379732 tp_is_empty!19389)))

(declare-fun b!3850207 () Bool)

(declare-fun tp!1166953 () Bool)

(declare-fun tp!1166952 () Bool)

(assert (=> b!3850207 (= e!2379732 (and tp!1166953 tp!1166952))))

(declare-fun b!3850205 () Bool)

(declare-fun tp!1166951 () Bool)

(declare-fun tp!1166950 () Bool)

(assert (=> b!3850205 (= e!2379732 (and tp!1166951 tp!1166950))))

(assert (= (and b!3849130 ((_ is ElementMatch!11209) (regTwo!22931 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850204))

(assert (= (and b!3849130 ((_ is Concat!17744) (regTwo!22931 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850205))

(assert (= (and b!3849130 ((_ is Star!11209) (regTwo!22931 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850206))

(assert (= (and b!3849130 ((_ is Union!11209) (regTwo!22931 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850207))

(declare-fun e!2379733 () Bool)

(assert (=> b!3849167 (= tp!1166752 e!2379733)))

(declare-fun b!3850210 () Bool)

(declare-fun tp!1166959 () Bool)

(assert (=> b!3850210 (= e!2379733 tp!1166959)))

(declare-fun b!3850208 () Bool)

(assert (=> b!3850208 (= e!2379733 tp_is_empty!19389)))

(declare-fun b!3850211 () Bool)

(declare-fun tp!1166958 () Bool)

(declare-fun tp!1166957 () Bool)

(assert (=> b!3850211 (= e!2379733 (and tp!1166958 tp!1166957))))

(declare-fun b!3850209 () Bool)

(declare-fun tp!1166956 () Bool)

(declare-fun tp!1166955 () Bool)

(assert (=> b!3850209 (= e!2379733 (and tp!1166956 tp!1166955))))

(assert (= (and b!3849167 ((_ is ElementMatch!11209) (reg!11538 (regex!6304 (h!46211 rules!2768))))) b!3850208))

(assert (= (and b!3849167 ((_ is Concat!17744) (reg!11538 (regex!6304 (h!46211 rules!2768))))) b!3850209))

(assert (= (and b!3849167 ((_ is Star!11209) (reg!11538 (regex!6304 (h!46211 rules!2768))))) b!3850210))

(assert (= (and b!3849167 ((_ is Union!11209) (reg!11538 (regex!6304 (h!46211 rules!2768))))) b!3850211))

(declare-fun e!2379734 () Bool)

(assert (=> b!3849129 (= tp!1166709 e!2379734)))

(declare-fun b!3850214 () Bool)

(declare-fun tp!1166964 () Bool)

(assert (=> b!3850214 (= e!2379734 tp!1166964)))

(declare-fun b!3850212 () Bool)

(assert (=> b!3850212 (= e!2379734 tp_is_empty!19389)))

(declare-fun b!3850215 () Bool)

(declare-fun tp!1166963 () Bool)

(declare-fun tp!1166962 () Bool)

(assert (=> b!3850215 (= e!2379734 (and tp!1166963 tp!1166962))))

(declare-fun b!3850213 () Bool)

(declare-fun tp!1166961 () Bool)

(declare-fun tp!1166960 () Bool)

(assert (=> b!3850213 (= e!2379734 (and tp!1166961 tp!1166960))))

(assert (= (and b!3849129 ((_ is ElementMatch!11209) (reg!11538 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850212))

(assert (= (and b!3849129 ((_ is Concat!17744) (reg!11538 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850213))

(assert (= (and b!3849129 ((_ is Star!11209) (reg!11538 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850214))

(assert (= (and b!3849129 ((_ is Union!11209) (reg!11538 (regex!6304 (rule!9154 (h!46210 prefixTokens!80)))))) b!3850215))

(declare-fun e!2379735 () Bool)

(assert (=> b!3849166 (= tp!1166749 e!2379735)))

(declare-fun b!3850218 () Bool)

(declare-fun tp!1166969 () Bool)

(assert (=> b!3850218 (= e!2379735 tp!1166969)))

(declare-fun b!3850216 () Bool)

(assert (=> b!3850216 (= e!2379735 tp_is_empty!19389)))

(declare-fun b!3850219 () Bool)

(declare-fun tp!1166968 () Bool)

(declare-fun tp!1166967 () Bool)

(assert (=> b!3850219 (= e!2379735 (and tp!1166968 tp!1166967))))

(declare-fun b!3850217 () Bool)

(declare-fun tp!1166966 () Bool)

(declare-fun tp!1166965 () Bool)

(assert (=> b!3850217 (= e!2379735 (and tp!1166966 tp!1166965))))

(assert (= (and b!3849166 ((_ is ElementMatch!11209) (regOne!22930 (regex!6304 (h!46211 rules!2768))))) b!3850216))

(assert (= (and b!3849166 ((_ is Concat!17744) (regOne!22930 (regex!6304 (h!46211 rules!2768))))) b!3850217))

(assert (= (and b!3849166 ((_ is Star!11209) (regOne!22930 (regex!6304 (h!46211 rules!2768))))) b!3850218))

(assert (= (and b!3849166 ((_ is Union!11209) (regOne!22930 (regex!6304 (h!46211 rules!2768))))) b!3850219))

(declare-fun e!2379736 () Bool)

(assert (=> b!3849166 (= tp!1166748 e!2379736)))

(declare-fun b!3850222 () Bool)

(declare-fun tp!1166974 () Bool)

(assert (=> b!3850222 (= e!2379736 tp!1166974)))

(declare-fun b!3850220 () Bool)

(assert (=> b!3850220 (= e!2379736 tp_is_empty!19389)))

(declare-fun b!3850223 () Bool)

(declare-fun tp!1166973 () Bool)

(declare-fun tp!1166972 () Bool)

(assert (=> b!3850223 (= e!2379736 (and tp!1166973 tp!1166972))))

(declare-fun b!3850221 () Bool)

(declare-fun tp!1166971 () Bool)

(declare-fun tp!1166970 () Bool)

(assert (=> b!3850221 (= e!2379736 (and tp!1166971 tp!1166970))))

(assert (= (and b!3849166 ((_ is ElementMatch!11209) (regTwo!22930 (regex!6304 (h!46211 rules!2768))))) b!3850220))

(assert (= (and b!3849166 ((_ is Concat!17744) (regTwo!22930 (regex!6304 (h!46211 rules!2768))))) b!3850221))

(assert (= (and b!3849166 ((_ is Star!11209) (regTwo!22930 (regex!6304 (h!46211 rules!2768))))) b!3850222))

(assert (= (and b!3849166 ((_ is Union!11209) (regTwo!22930 (regex!6304 (h!46211 rules!2768))))) b!3850223))

(declare-fun tp!1166976 () Bool)

(declare-fun tp!1166975 () Bool)

(declare-fun e!2379738 () Bool)

(declare-fun b!3850224 () Bool)

(assert (=> b!3850224 (= e!2379738 (and (inv!54935 (left!31461 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72)))))) tp!1166976 (inv!54935 (right!31791 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72)))))) tp!1166975))))

(declare-fun b!3850226 () Bool)

(declare-fun e!2379737 () Bool)

(declare-fun tp!1166977 () Bool)

(assert (=> b!3850226 (= e!2379737 tp!1166977)))

(declare-fun b!3850225 () Bool)

(assert (=> b!3850225 (= e!2379738 (and (inv!54942 (xs!15821 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72)))))) e!2379737))))

(assert (=> b!3849060 (= tp!1166689 (and (inv!54935 (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72))))) e!2379738))))

(assert (= (and b!3849060 ((_ is Node!12515) (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72)))))) b!3850224))

(assert (= b!3850225 b!3850226))

(assert (= (and b!3849060 ((_ is Leaf!19374) (c!670247 (dynLambda!17597 (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (value!200298 (h!46210 suffixTokens!72)))))) b!3850225))

(declare-fun m!4405311 () Bool)

(assert (=> b!3850224 m!4405311))

(declare-fun m!4405313 () Bool)

(assert (=> b!3850224 m!4405313))

(declare-fun m!4405315 () Bool)

(assert (=> b!3850225 m!4405315))

(assert (=> b!3849060 m!4403775))

(declare-fun e!2379739 () Bool)

(assert (=> b!3849168 (= tp!1166751 e!2379739)))

(declare-fun b!3850229 () Bool)

(declare-fun tp!1166982 () Bool)

(assert (=> b!3850229 (= e!2379739 tp!1166982)))

(declare-fun b!3850227 () Bool)

(assert (=> b!3850227 (= e!2379739 tp_is_empty!19389)))

(declare-fun b!3850230 () Bool)

(declare-fun tp!1166981 () Bool)

(declare-fun tp!1166980 () Bool)

(assert (=> b!3850230 (= e!2379739 (and tp!1166981 tp!1166980))))

(declare-fun b!3850228 () Bool)

(declare-fun tp!1166979 () Bool)

(declare-fun tp!1166978 () Bool)

(assert (=> b!3850228 (= e!2379739 (and tp!1166979 tp!1166978))))

(assert (= (and b!3849168 ((_ is ElementMatch!11209) (regOne!22931 (regex!6304 (h!46211 rules!2768))))) b!3850227))

(assert (= (and b!3849168 ((_ is Concat!17744) (regOne!22931 (regex!6304 (h!46211 rules!2768))))) b!3850228))

(assert (= (and b!3849168 ((_ is Star!11209) (regOne!22931 (regex!6304 (h!46211 rules!2768))))) b!3850229))

(assert (= (and b!3849168 ((_ is Union!11209) (regOne!22931 (regex!6304 (h!46211 rules!2768))))) b!3850230))

(declare-fun e!2379740 () Bool)

(assert (=> b!3849168 (= tp!1166750 e!2379740)))

(declare-fun b!3850233 () Bool)

(declare-fun tp!1166987 () Bool)

(assert (=> b!3850233 (= e!2379740 tp!1166987)))

(declare-fun b!3850231 () Bool)

(assert (=> b!3850231 (= e!2379740 tp_is_empty!19389)))

(declare-fun b!3850234 () Bool)

(declare-fun tp!1166986 () Bool)

(declare-fun tp!1166985 () Bool)

(assert (=> b!3850234 (= e!2379740 (and tp!1166986 tp!1166985))))

(declare-fun b!3850232 () Bool)

(declare-fun tp!1166984 () Bool)

(declare-fun tp!1166983 () Bool)

(assert (=> b!3850232 (= e!2379740 (and tp!1166984 tp!1166983))))

(assert (= (and b!3849168 ((_ is ElementMatch!11209) (regTwo!22931 (regex!6304 (h!46211 rules!2768))))) b!3850231))

(assert (= (and b!3849168 ((_ is Concat!17744) (regTwo!22931 (regex!6304 (h!46211 rules!2768))))) b!3850232))

(assert (= (and b!3849168 ((_ is Star!11209) (regTwo!22931 (regex!6304 (h!46211 rules!2768))))) b!3850233))

(assert (= (and b!3849168 ((_ is Union!11209) (regTwo!22931 (regex!6304 (h!46211 rules!2768))))) b!3850234))

(declare-fun b!3850235 () Bool)

(declare-fun e!2379741 () Bool)

(declare-fun tp!1166988 () Bool)

(assert (=> b!3850235 (= e!2379741 (and tp_is_empty!19389 tp!1166988))))

(assert (=> b!3849115 (= tp!1166693 e!2379741)))

(assert (= (and b!3849115 ((_ is Cons!40788) (t!311333 (originalCharacters!6904 (h!46210 prefixTokens!80))))) b!3850235))

(declare-fun b!3850236 () Bool)

(declare-fun e!2379742 () Bool)

(declare-fun tp!1166989 () Bool)

(assert (=> b!3850236 (= e!2379742 (and tp_is_empty!19389 tp!1166989))))

(assert (=> b!3849169 (= tp!1166753 e!2379742)))

(assert (= (and b!3849169 ((_ is Cons!40788) (t!311333 (t!311333 suffix!1176)))) b!3850236))

(declare-fun e!2379743 () Bool)

(assert (=> b!3849144 (= tp!1166723 e!2379743)))

(declare-fun b!3850239 () Bool)

(declare-fun tp!1166994 () Bool)

(assert (=> b!3850239 (= e!2379743 tp!1166994)))

(declare-fun b!3850237 () Bool)

(assert (=> b!3850237 (= e!2379743 tp_is_empty!19389)))

(declare-fun b!3850240 () Bool)

(declare-fun tp!1166993 () Bool)

(declare-fun tp!1166992 () Bool)

(assert (=> b!3850240 (= e!2379743 (and tp!1166993 tp!1166992))))

(declare-fun b!3850238 () Bool)

(declare-fun tp!1166991 () Bool)

(declare-fun tp!1166990 () Bool)

(assert (=> b!3850238 (= e!2379743 (and tp!1166991 tp!1166990))))

(assert (= (and b!3849144 ((_ is ElementMatch!11209) (regex!6304 (h!46211 (t!311336 rules!2768))))) b!3850237))

(assert (= (and b!3849144 ((_ is Concat!17744) (regex!6304 (h!46211 (t!311336 rules!2768))))) b!3850238))

(assert (= (and b!3849144 ((_ is Star!11209) (regex!6304 (h!46211 (t!311336 rules!2768))))) b!3850239))

(assert (= (and b!3849144 ((_ is Union!11209) (regex!6304 (h!46211 (t!311336 rules!2768))))) b!3850240))

(declare-fun b!3850243 () Bool)

(declare-fun b_free!103169 () Bool)

(declare-fun b_next!103873 () Bool)

(assert (=> b!3850243 (= b_free!103169 (not b_next!103873))))

(declare-fun tb!222113 () Bool)

(declare-fun t!311726 () Bool)

(assert (=> (and b!3850243 (= (toValue!8720 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311726) tb!222113))

(declare-fun result!270626 () Bool)

(assert (= result!270626 result!270588))

(assert (=> d!1141591 t!311726))

(declare-fun t!311728 () Bool)

(declare-fun tb!222115 () Bool)

(assert (=> (and b!3850243 (= (toValue!8720 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311728) tb!222115))

(declare-fun result!270628 () Bool)

(assert (= result!270628 result!270294))

(assert (=> d!1141019 t!311728))

(declare-fun t!311730 () Bool)

(declare-fun tb!222117 () Bool)

(assert (=> (and b!3850243 (= (toValue!8720 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311730) tb!222117))

(declare-fun result!270630 () Bool)

(assert (= result!270630 result!270430))

(assert (=> d!1141325 t!311730))

(declare-fun t!311732 () Bool)

(declare-fun tb!222119 () Bool)

(assert (=> (and b!3850243 (= (toValue!8720 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311732) tb!222119))

(declare-fun result!270632 () Bool)

(assert (= result!270632 result!270564))

(assert (=> d!1141571 t!311732))

(assert (=> d!1141567 t!311732))

(declare-fun tp!1166998 () Bool)

(declare-fun b_and!287527 () Bool)

(assert (=> b!3850243 (= tp!1166998 (and (=> t!311730 result!270630) (=> t!311732 result!270632) (=> t!311726 result!270626) (=> t!311728 result!270628) b_and!287527))))

(declare-fun b_free!103171 () Bool)

(declare-fun b_next!103875 () Bool)

(assert (=> b!3850243 (= b_free!103171 (not b_next!103875))))

(declare-fun tb!222121 () Bool)

(declare-fun t!311734 () Bool)

(assert (=> (and b!3850243 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) t!311734) tb!222121))

(declare-fun result!270634 () Bool)

(assert (= result!270634 result!270282))

(assert (=> b!3849058 t!311734))

(declare-fun t!311736 () Bool)

(declare-fun tb!222123 () Bool)

(assert (=> (and b!3850243 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311736) tb!222123))

(declare-fun result!270636 () Bool)

(assert (= result!270636 result!270288))

(assert (=> d!1141011 t!311736))

(declare-fun tb!222125 () Bool)

(declare-fun t!311738 () Bool)

(assert (=> (and b!3850243 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))) t!311738) tb!222125))

(declare-fun result!270638 () Bool)

(assert (= result!270638 result!270334))

(assert (=> b!3849205 t!311738))

(declare-fun t!311740 () Bool)

(declare-fun tb!222127 () Bool)

(assert (=> (and b!3850243 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311740) tb!222127))

(declare-fun result!270640 () Bool)

(assert (= result!270640 result!270346))

(assert (=> d!1141143 t!311740))

(declare-fun tb!222129 () Bool)

(declare-fun t!311742 () Bool)

(assert (=> (and b!3850243 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) t!311742) tb!222129))

(declare-fun result!270642 () Bool)

(assert (= result!270642 result!270274))

(assert (=> b!3849051 t!311742))

(declare-fun tb!222131 () Bool)

(declare-fun t!311744 () Bool)

(assert (=> (and b!3850243 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311744) tb!222131))

(declare-fun result!270644 () Bool)

(assert (= result!270644 result!270576))

(assert (=> d!1141571 t!311744))

(declare-fun tb!222133 () Bool)

(declare-fun t!311746 () Bool)

(assert (=> (and b!3850243 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))) t!311746) tb!222133))

(declare-fun result!270646 () Bool)

(assert (= result!270646 result!270360))

(assert (=> b!3849389 t!311746))

(declare-fun t!311748 () Bool)

(declare-fun tb!222135 () Bool)

(assert (=> (and b!3850243 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311748) tb!222135))

(declare-fun result!270648 () Bool)

(assert (= result!270648 result!270394))

(assert (=> d!1141233 t!311748))

(declare-fun tp!1166997 () Bool)

(declare-fun b_and!287529 () Bool)

(assert (=> b!3850243 (= tp!1166997 (and (=> t!311734 result!270634) (=> t!311746 result!270646) (=> t!311740 result!270640) (=> t!311738 result!270638) (=> t!311742 result!270642) (=> t!311748 result!270648) (=> t!311736 result!270636) (=> t!311744 result!270644) b_and!287529))))

(declare-fun e!2379745 () Bool)

(assert (=> b!3850243 (= e!2379745 (and tp!1166998 tp!1166997))))

(declare-fun tp!1166995 () Bool)

(declare-fun b!3850242 () Bool)

(declare-fun e!2379747 () Bool)

(assert (=> b!3850242 (= e!2379747 (and tp!1166995 (inv!54928 (tag!7164 (h!46211 (t!311336 (t!311336 rules!2768))))) (inv!54932 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) e!2379745))))

(declare-fun b!3850241 () Bool)

(declare-fun e!2379746 () Bool)

(declare-fun tp!1166996 () Bool)

(assert (=> b!3850241 (= e!2379746 (and e!2379747 tp!1166996))))

(assert (=> b!3849143 (= tp!1166724 e!2379746)))

(assert (= b!3850242 b!3850243))

(assert (= b!3850241 b!3850242))

(assert (= (and b!3849143 ((_ is Cons!40791) (t!311336 (t!311336 rules!2768)))) b!3850241))

(declare-fun m!4405317 () Bool)

(assert (=> b!3850242 m!4405317))

(declare-fun m!4405319 () Bool)

(assert (=> b!3850242 m!4405319))

(declare-fun b!3850244 () Bool)

(declare-fun e!2379748 () Bool)

(declare-fun tp!1166999 () Bool)

(assert (=> b!3850244 (= e!2379748 (and tp_is_empty!19389 tp!1166999))))

(assert (=> b!3849116 (= tp!1166694 e!2379748)))

(assert (= (and b!3849116 ((_ is Cons!40788) (t!311333 (t!311333 suffixResult!91)))) b!3850244))

(declare-fun b!3850245 () Bool)

(declare-fun e!2379749 () Bool)

(declare-fun tp!1167000 () Bool)

(assert (=> b!3850245 (= e!2379749 (and tp_is_empty!19389 tp!1167000))))

(assert (=> b!3849146 (= tp!1166727 e!2379749)))

(assert (= (and b!3849146 ((_ is Cons!40788) (t!311333 (t!311333 prefix!426)))) b!3850245))

(declare-fun e!2379750 () Bool)

(assert (=> b!3849132 (= tp!1166711 e!2379750)))

(declare-fun b!3850248 () Bool)

(declare-fun tp!1167005 () Bool)

(assert (=> b!3850248 (= e!2379750 tp!1167005)))

(declare-fun b!3850246 () Bool)

(assert (=> b!3850246 (= e!2379750 tp_is_empty!19389)))

(declare-fun b!3850249 () Bool)

(declare-fun tp!1167004 () Bool)

(declare-fun tp!1167003 () Bool)

(assert (=> b!3850249 (= e!2379750 (and tp!1167004 tp!1167003))))

(declare-fun b!3850247 () Bool)

(declare-fun tp!1167002 () Bool)

(declare-fun tp!1167001 () Bool)

(assert (=> b!3850247 (= e!2379750 (and tp!1167002 tp!1167001))))

(assert (= (and b!3849132 ((_ is ElementMatch!11209) (regOne!22930 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850246))

(assert (= (and b!3849132 ((_ is Concat!17744) (regOne!22930 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850247))

(assert (= (and b!3849132 ((_ is Star!11209) (regOne!22930 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850248))

(assert (= (and b!3849132 ((_ is Union!11209) (regOne!22930 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850249))

(declare-fun e!2379751 () Bool)

(assert (=> b!3849132 (= tp!1166710 e!2379751)))

(declare-fun b!3850252 () Bool)

(declare-fun tp!1167010 () Bool)

(assert (=> b!3850252 (= e!2379751 tp!1167010)))

(declare-fun b!3850250 () Bool)

(assert (=> b!3850250 (= e!2379751 tp_is_empty!19389)))

(declare-fun b!3850253 () Bool)

(declare-fun tp!1167009 () Bool)

(declare-fun tp!1167008 () Bool)

(assert (=> b!3850253 (= e!2379751 (and tp!1167009 tp!1167008))))

(declare-fun b!3850251 () Bool)

(declare-fun tp!1167007 () Bool)

(declare-fun tp!1167006 () Bool)

(assert (=> b!3850251 (= e!2379751 (and tp!1167007 tp!1167006))))

(assert (= (and b!3849132 ((_ is ElementMatch!11209) (regTwo!22930 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850250))

(assert (= (and b!3849132 ((_ is Concat!17744) (regTwo!22930 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850251))

(assert (= (and b!3849132 ((_ is Star!11209) (regTwo!22930 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850252))

(assert (= (and b!3849132 ((_ is Union!11209) (regTwo!22930 (regex!6304 (rule!9154 (h!46210 suffixTokens!72)))))) b!3850253))

(declare-fun b!3850257 () Bool)

(declare-fun b_free!103173 () Bool)

(declare-fun b_next!103877 () Bool)

(assert (=> b!3850257 (= b_free!103173 (not b_next!103877))))

(declare-fun t!311750 () Bool)

(declare-fun tb!222137 () Bool)

(assert (=> (and b!3850257 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311750) tb!222137))

(declare-fun result!270650 () Bool)

(assert (= result!270650 result!270588))

(assert (=> d!1141591 t!311750))

(declare-fun tb!222139 () Bool)

(declare-fun t!311752 () Bool)

(assert (=> (and b!3850257 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311752) tb!222139))

(declare-fun result!270652 () Bool)

(assert (= result!270652 result!270294))

(assert (=> d!1141019 t!311752))

(declare-fun tb!222141 () Bool)

(declare-fun t!311754 () Bool)

(assert (=> (and b!3850257 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311754) tb!222141))

(declare-fun result!270654 () Bool)

(assert (= result!270654 result!270430))

(assert (=> d!1141325 t!311754))

(declare-fun t!311756 () Bool)

(declare-fun tb!222143 () Bool)

(assert (=> (and b!3850257 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311756) tb!222143))

(declare-fun result!270656 () Bool)

(assert (= result!270656 result!270564))

(assert (=> d!1141571 t!311756))

(assert (=> d!1141567 t!311756))

(declare-fun tp!1167014 () Bool)

(declare-fun b_and!287531 () Bool)

(assert (=> b!3850257 (= tp!1167014 (and (=> t!311750 result!270650) (=> t!311754 result!270654) (=> t!311752 result!270652) (=> t!311756 result!270656) b_and!287531))))

(declare-fun b_free!103175 () Bool)

(declare-fun b_next!103879 () Bool)

(assert (=> b!3850257 (= b_free!103175 (not b_next!103879))))

(declare-fun t!311758 () Bool)

(declare-fun tb!222145 () Bool)

(assert (=> (and b!3850257 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72))))) t!311758) tb!222145))

(declare-fun result!270658 () Bool)

(assert (= result!270658 result!270282))

(assert (=> b!3849058 t!311758))

(declare-fun t!311760 () Bool)

(declare-fun tb!222147 () Bool)

(assert (=> (and b!3850257 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311760) tb!222147))

(declare-fun result!270660 () Bool)

(assert (= result!270660 result!270288))

(assert (=> d!1141011 t!311760))

(declare-fun tb!222149 () Bool)

(declare-fun t!311762 () Bool)

(assert (=> (and b!3850257 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80)))))) t!311762) tb!222149))

(declare-fun result!270662 () Bool)

(assert (= result!270662 result!270334))

(assert (=> b!3849205 t!311762))

(declare-fun tb!222151 () Bool)

(declare-fun t!311764 () Bool)

(assert (=> (and b!3850257 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336693)))))) t!311764) tb!222151))

(declare-fun result!270664 () Bool)

(assert (= result!270664 result!270346))

(assert (=> d!1141143 t!311764))

(declare-fun t!311766 () Bool)

(declare-fun tb!222153 () Bool)

(assert (=> (and b!3850257 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80))))) t!311766) tb!222153))

(declare-fun result!270666 () Bool)

(assert (= result!270666 result!270274))

(assert (=> b!3849051 t!311766))

(declare-fun tb!222155 () Bool)

(declare-fun t!311768 () Bool)

(assert (=> (and b!3850257 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591)))))) t!311768) tb!222155))

(declare-fun result!270668 () Bool)

(assert (= result!270668 result!270576))

(assert (=> d!1141571 t!311768))

(declare-fun t!311770 () Bool)

(declare-fun tb!222157 () Bool)

(assert (=> (and b!3850257 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72)))))) t!311770) tb!222157))

(declare-fun result!270670 () Bool)

(assert (= result!270670 result!270360))

(assert (=> b!3849389 t!311770))

(declare-fun tb!222159 () Bool)

(declare-fun t!311772 () Bool)

(assert (=> (and b!3850257 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (get!13496 lt!1336728)))))) t!311772) tb!222159))

(declare-fun result!270672 () Bool)

(assert (= result!270672 result!270394))

(assert (=> d!1141233 t!311772))

(declare-fun b_and!287533 () Bool)

(declare-fun tp!1167013 () Bool)

(assert (=> b!3850257 (= tp!1167013 (and (=> t!311762 result!270662) (=> t!311768 result!270668) (=> t!311760 result!270660) (=> t!311766 result!270666) (=> t!311764 result!270664) (=> t!311772 result!270672) (=> t!311758 result!270658) (=> t!311770 result!270670) b_and!287533))))

(declare-fun e!2379754 () Bool)

(declare-fun b!3850255 () Bool)

(declare-fun e!2379753 () Bool)

(declare-fun tp!1167011 () Bool)

(assert (=> b!3850255 (= e!2379753 (and (inv!21 (value!200298 (h!46210 (t!311335 (t!311335 suffixTokens!72))))) e!2379754 tp!1167011))))

(declare-fun b!3850254 () Bool)

(declare-fun e!2379756 () Bool)

(declare-fun tp!1167015 () Bool)

(assert (=> b!3850254 (= e!2379756 (and (inv!54931 (h!46210 (t!311335 (t!311335 suffixTokens!72)))) e!2379753 tp!1167015))))

(assert (=> b!3849161 (= tp!1166747 e!2379756)))

(declare-fun e!2379755 () Bool)

(assert (=> b!3850257 (= e!2379755 (and tp!1167014 tp!1167013))))

(declare-fun tp!1167012 () Bool)

(declare-fun b!3850256 () Bool)

(assert (=> b!3850256 (= e!2379754 (and tp!1167012 (inv!54928 (tag!7164 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (inv!54932 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) e!2379755))))

(assert (= b!3850256 b!3850257))

(assert (= b!3850255 b!3850256))

(assert (= b!3850254 b!3850255))

(assert (= (and b!3849161 ((_ is Cons!40790) (t!311335 (t!311335 suffixTokens!72)))) b!3850254))

(declare-fun m!4405321 () Bool)

(assert (=> b!3850255 m!4405321))

(declare-fun m!4405323 () Bool)

(assert (=> b!3850254 m!4405323))

(declare-fun m!4405325 () Bool)

(assert (=> b!3850256 m!4405325))

(declare-fun m!4405327 () Bool)

(assert (=> b!3850256 m!4405327))

(declare-fun b!3850258 () Bool)

(declare-fun e!2379758 () Bool)

(declare-fun tp!1167016 () Bool)

(assert (=> b!3850258 (= e!2379758 (and tp_is_empty!19389 tp!1167016))))

(assert (=> b!3849170 (= tp!1166754 e!2379758)))

(assert (= (and b!3849170 ((_ is Cons!40788) (t!311333 (originalCharacters!6904 (h!46210 suffixTokens!72))))) b!3850258))

(declare-fun b_lambda!112535 () Bool)

(assert (= b_lambda!112491 (or (and b!3849145 b_free!103143 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))))) (and b!3850257 b_free!103175 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))))) (and b!3849164 b_free!103151 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))))) (and b!3848565 b_free!103123 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))))) (and b!3850243 b_free!103171 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))))) (and b!3848568 b_free!103127 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))))) (and b!3850172 b_free!103167 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))))) (and b!3849160 b_free!103147) (and b!3848559 b_free!103119 (= (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))))) b_lambda!112535)))

(declare-fun b_lambda!112537 () Bool)

(assert (= b_lambda!112497 (or (and b!3850172 b_free!103167 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))))) (and b!3850243 b_free!103171 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))))) (and b!3848568 b_free!103127 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))))) (and b!3848565 b_free!103123 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))))) (and b!3849164 b_free!103151) (and b!3849160 b_free!103147 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))))) (and b!3848559 b_free!103119 (= (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))))) (and b!3849145 b_free!103143 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))))) (and b!3850257 b_free!103175 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))))) b_lambda!112537)))

(declare-fun b_lambda!112539 () Bool)

(assert (= b_lambda!112483 (or (and b!3848559 b_free!103119 (= (toChars!8579 (transformation!6304 (h!46211 rules!2768))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3850243 b_free!103171 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3848565 b_free!103123 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3849160 b_free!103147 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3849164 b_free!103151 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3850172 b_free!103167 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3849145 b_free!103143 (= (toChars!8579 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3850257 b_free!103175 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3848568 b_free!103127 (= (toChars!8579 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toChars!8579 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) b_lambda!112539)))

(declare-fun b_lambda!112541 () Bool)

(assert (= b_lambda!112485 (or (and b!3850172 b_free!103165 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 prefixTokens!80)))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3850257 b_free!103173 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 (t!311335 suffixTokens!72)))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3849145 b_free!103141 (= (toValue!8720 (transformation!6304 (h!46211 (t!311336 rules!2768)))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3849164 b_free!103149 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 suffixTokens!72))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3849160 b_free!103145 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 (t!311335 prefixTokens!80))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3850243 b_free!103169 (= (toValue!8720 (transformation!6304 (h!46211 (t!311336 (t!311336 rules!2768))))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3848568 b_free!103125 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 suffixTokens!72)))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3848559 b_free!103117 (= (toValue!8720 (transformation!6304 (h!46211 rules!2768))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) (and b!3848565 b_free!103121 (= (toValue!8720 (transformation!6304 (rule!9154 (h!46210 prefixTokens!80)))) (toValue!8720 (transformation!6304 (rule!9154 (_1!23122 (v!39013 lt!1336591))))))) b_lambda!112541)))

(check-sat (not b!3849517) (not b!3850158) (not d!1141167) (not b!3849812) (not b_next!103855) (not b!3850242) (not b!3850148) (not bm!282116) (not b!3849697) (not b!3850201) (not b!3850146) (not b!3850167) (not d!1141057) (not d!1141575) (not b_next!103827) (not b!3850186) (not b!3850221) (not b!3849610) (not b!3850223) (not bm!282165) (not b!3850139) (not tb!221825) (not b!3850128) (not b!3849388) (not b!3849643) (not b!3849560) (not b_next!103849) (not b!3850207) (not b!3849484) (not b_lambda!112531) (not d!1141061) (not bm!282216) (not b!3850217) (not b!3849395) (not d!1141143) b_and!287497 (not b!3849198) (not b!3849516) (not b!3850162) (not b!3850228) (not b!3849741) (not b!3850190) (not b!3849514) (not b!3849350) (not b!3849389) (not b!3849353) (not d!1141577) (not b!3849498) (not tb!221851) (not d!1141083) (not b!3849597) (not b!3849381) (not b!3849487) (not b!3850182) (not b!3849564) (not b!3849523) (not b!3849501) (not b!3849057) (not b!3849609) (not b!3850224) (not bm!282164) (not b!3850240) (not b!3849221) (not b!3849483) (not b!3849602) (not b!3850150) (not b!3849746) (not b!3849434) (not b!3850168) b_and!287513 (not d!1141129) (not b_lambda!112539) (not bm!282211) (not b!3849559) (not b!3849354) b_and!287521 (not b!3849810) (not b!3849486) (not b!3849207) (not b!3850181) (not b!3850121) (not d!1141271) (not b!3849217) (not b_next!103853) (not b!3849802) (not b!3849747) (not b!3849206) (not d!1141387) (not d!1141053) (not b!3849219) (not b!3849463) (not b!3849800) (not b!3849351) (not b!3850160) (not d!1141379) (not b!3849408) (not b!3849790) (not b_lambda!112535) (not b!3850230) (not b!3850253) (not b!3849181) (not b!3849478) (not b!3850218) (not b_lambda!112541) (not b!3849696) b_and!287533 (not b!3850166) (not b!3850235) (not bm!282212) (not bm!282219) (not b!3849210) (not b!3849693) (not b!3850197) (not b!3849187) (not b!3850205) (not b!3850153) (not b!3849424) (not b!3849515) (not d!1141289) (not b!3850137) (not b!3850171) (not bm!282217) (not b_next!103869) (not d!1141287) (not b!3850215) (not b_next!103873) (not d!1141435) (not d!1141275) (not b!3849494) (not b!3849396) (not b!3850256) (not bm!282154) (not d!1141587) (not b!3850245) (not d!1141563) (not bm!282128) (not b!3849433) b_and!287493 (not b!3849348) (not b!3850115) (not b!3850209) (not d!1141295) (not b!3849205) (not b_next!103847) (not d!1141389) (not b!3850202) (not b!3849684) (not d!1141075) (not b!3849183) (not b!3849426) (not b!3849464) (not b!3850110) (not b!3850213) (not b!3849185) (not b!3850103) (not bm!282179) (not b!3850214) (not b!3849801) (not tb!221885) (not b!3849606) (not b!3849404) (not b_next!103851) (not d!1141337) (not b!3850210) (not b_next!103821) (not b!3849356) (not b!3850258) (not b!3850222) (not b!3849500) (not b!3849608) (not b!3850163) (not b!3850211) (not bm!282213) (not b!3849488) (not bm!282215) (not d!1141047) (not bm!282218) (not b_lambda!112493) (not b!3850193) (not b!3849255) (not b!3850156) (not b!3849599) (not d!1141119) (not d!1141433) (not b!3849598) (not d!1141137) (not b!3849379) (not tb!222053) (not b!3849735) (not b!3849201) b_and!287487 (not b!3849745) (not b!3849788) (not d!1141113) (not b!3849355) (not b_lambda!112487) (not b!3849256) (not b!3849208) (not d!1141335) (not b_next!103845) (not b!3849740) (not d!1141593) (not b!3849435) (not b!3849344) (not b!3850194) (not b!3850191) (not b!3849406) (not tb!221921) (not b!3849060) (not b!3849710) (not b!3850127) b_and!287527 (not b!3849437) (not b!3850189) (not b!3849595) (not d!1141199) (not b!3849359) (not b!3849803) (not b!3850198) (not b_next!103875) (not b!3850236) (not b!3850252) b_and!287491 (not b!3849786) (not b!3850130) (not d!1141303) (not b_lambda!112489) (not b!3850123) (not b!3849079) (not b_next!103879) b_and!287517 (not b_next!103831) (not b_lambda!112509) (not bm!282126) (not b!3849521) (not b!3849600) (not b!3849593) (not b!3849430) (not b!3850106) (not b!3850112) (not d!1141329) (not b!3849468) (not b!3850239) b_and!287511 (not d!1141415) (not b!3850199) (not b_lambda!112537) (not d!1141579) (not d!1141403) (not b!3849422) (not b!3849382) (not b!3849202) (not b!3849490) (not d!1141605) (not b!3849209) (not b!3849733) (not d!1141235) (not b!3850151) (not b!3850099) (not b!3849607) (not b!3850184) (not bm!282180) (not b!3849507) (not bm!282182) (not b!3850206) (not b!3850234) (not b!3849502) (not d!1141197) (not b!3850159) (not d!1141599) (not b!3850164) (not d!1141571) (not b!3850247) (not b!3850169) (not b!3850183) (not d!1141231) (not b!3850219) (not d!1141055) (not b_lambda!112501) (not b!3850155) (not b!3850255) (not b!3849566) (not d!1141463) (not b!3850154) (not d!1141229) (not d!1141233) (not b!3849641) (not b!3849742) (not d!1141459) (not d!1141569) (not b!3849590) (not b!3849496) (not b!3849596) (not tb!221837) (not b!3849699) (not b!3849392) (not b!3850254) tp_is_empty!19389 (not b!3849370) (not b!3849601) (not b!3850225) (not d!1141583) b_and!287515 (not b!3850203) (not d!1141225) (not b!3850135) (not b!3849416) (not bm!282178) (not b!3849492) (not b!3849525) (not b_lambda!112529) (not b!3849253) (not b!3849524) (not b!3849605) (not b!3850124) (not b!3849346) (not d!1141601) (not d!1141243) (not bm!282214) (not b!3849814) (not b_next!103823) (not b!3849418) (not b!3850244) (not b!3849508) (not d!1141059) (not b_next!103825) (not b!3849604) (not b!3849592) (not b!3850170) (not b!3850095) (not b!3849511) (not b!3849438) (not b!3849397) (not b!3849358) (not b_next!103829) (not d!1141267) (not tb!222065) b_and!287523 (not b!3849203) (not tb!222077) (not d!1141455) (not b!3850138) (not b_next!103877) (not b!3849199) (not b!3849694) (not b!3849698) (not b!3850238) (not b!3850232) (not b!3850187) b_and!287525 (not b!3850108) (not b!3849748) (not d!1141123) (not b!3850097) (not d!1141331) (not b!3850229) b_and!287531 (not b!3849259) (not d!1141081) (not b!3850226) b_and!287495 (not d!1141071) (not b!3850248) (not b!3850241) (not b!3849247) (not b!3849708) b_and!287529 (not b!3849505) (not b!3850188) (not d!1141409) b_and!287489 (not b!3849390) (not b!3850251) (not b_lambda!112533) (not b!3849369) (not b!3849357) (not b_lambda!112527) (not b!3849482) (not d!1141141) (not d!1141157) (not b_next!103871) (not d!1141585) (not b!3850195) (not d!1141281) (not d!1141465) (not b!3850136) (not d!1141257) (not b!3850233) (not b!3849565) (not b!3850249) (not b!3849734) (not b!3849706) (not b!3849474) (not b!3849480) b_and!287519 (not b!3849476) (not b!3849743) (not d!1141327))
(check-sat (not b_next!103855) (not b_next!103827) (not b_next!103853) b_and!287533 b_and!287487 (not b_next!103845) b_and!287527 b_and!287511 b_and!287515 (not b_next!103877) (not b_next!103871) b_and!287519 (not b_next!103849) b_and!287497 b_and!287513 b_and!287521 (not b_next!103869) (not b_next!103873) b_and!287493 (not b_next!103847) (not b_next!103851) (not b_next!103821) (not b_next!103875) b_and!287491 (not b_next!103879) b_and!287517 (not b_next!103831) (not b_next!103823) (not b_next!103825) (not b_next!103829) b_and!287523 b_and!287525 b_and!287531 b_and!287529 b_and!287495 b_and!287489)
