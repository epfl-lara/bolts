; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!55038 () Bool)

(assert start!55038)

(declare-fun b!589047 () Bool)

(declare-fun b_free!16493 () Bool)

(declare-fun b_next!16509 () Bool)

(assert (=> b!589047 (= b_free!16493 (not b_next!16509))))

(declare-fun tp!183744 () Bool)

(declare-fun b_and!58035 () Bool)

(assert (=> b!589047 (= tp!183744 b_and!58035)))

(declare-fun b_free!16495 () Bool)

(declare-fun b_next!16511 () Bool)

(assert (=> b!589047 (= b_free!16495 (not b_next!16511))))

(declare-fun tp!183742 () Bool)

(declare-fun b_and!58037 () Bool)

(assert (=> b!589047 (= tp!183742 b_and!58037)))

(declare-fun b!589040 () Bool)

(declare-fun b_free!16497 () Bool)

(declare-fun b_next!16513 () Bool)

(assert (=> b!589040 (= b_free!16497 (not b_next!16513))))

(declare-fun tp!183741 () Bool)

(declare-fun b_and!58039 () Bool)

(assert (=> b!589040 (= tp!183741 b_and!58039)))

(declare-fun b_free!16499 () Bool)

(declare-fun b_next!16515 () Bool)

(assert (=> b!589040 (= b_free!16499 (not b_next!16515))))

(declare-fun tp!183740 () Bool)

(declare-fun b_and!58041 () Bool)

(assert (=> b!589040 (= tp!183740 b_and!58041)))

(declare-fun b!589035 () Bool)

(declare-datatypes ((String!7555 0))(
  ( (String!7556 (value!37275 String)) )
))
(declare-datatypes ((C!3866 0))(
  ( (C!3867 (val!2159 Int)) )
))
(declare-datatypes ((Regex!1472 0))(
  ( (ElementMatch!1472 (c!109983 C!3866)) (Concat!2634 (regOne!3456 Regex!1472) (regTwo!3456 Regex!1472)) (EmptyExpr!1472) (Star!1472 (reg!1801 Regex!1472)) (EmptyLang!1472) (Union!1472 (regOne!3457 Regex!1472) (regTwo!3457 Regex!1472)) )
))
(declare-datatypes ((List!5817 0))(
  ( (Nil!5807) (Cons!5807 (h!11208 (_ BitVec 16)) (t!78794 List!5817)) )
))
(declare-datatypes ((TokenValue!1162 0))(
  ( (FloatLiteralValue!2324 (text!8579 List!5817)) (TokenValueExt!1161 (__x!4222 Int)) (Broken!5810 (value!37276 List!5817)) (Object!1171) (End!1162) (Def!1162) (Underscore!1162) (Match!1162) (Else!1162) (Error!1162) (Case!1162) (If!1162) (Extends!1162) (Abstract!1162) (Class!1162) (Val!1162) (DelimiterValue!2324 (del!1222 List!5817)) (KeywordValue!1168 (value!37277 List!5817)) (CommentValue!2324 (value!37278 List!5817)) (WhitespaceValue!2324 (value!37279 List!5817)) (IndentationValue!1162 (value!37280 List!5817)) (String!7557) (Int32!1162) (Broken!5811 (value!37281 List!5817)) (Boolean!1163) (Unit!10543) (OperatorValue!1165 (op!1222 List!5817)) (IdentifierValue!2324 (value!37282 List!5817)) (IdentifierValue!2325 (value!37283 List!5817)) (WhitespaceValue!2325 (value!37284 List!5817)) (True!2324) (False!2324) (Broken!5812 (value!37285 List!5817)) (Broken!5813 (value!37286 List!5817)) (True!2325) (RightBrace!1162) (RightBracket!1162) (Colon!1162) (Null!1162) (Comma!1162) (LeftBracket!1162) (False!2325) (LeftBrace!1162) (ImaginaryLiteralValue!1162 (text!8580 List!5817)) (StringLiteralValue!3486 (value!37287 List!5817)) (EOFValue!1162 (value!37288 List!5817)) (IdentValue!1162 (value!37289 List!5817)) (DelimiterValue!2325 (value!37290 List!5817)) (DedentValue!1162 (value!37291 List!5817)) (NewLineValue!1162 (value!37292 List!5817)) (IntegerValue!3486 (value!37293 (_ BitVec 32)) (text!8581 List!5817)) (IntegerValue!3487 (value!37294 Int) (text!8582 List!5817)) (Times!1162) (Or!1162) (Equal!1162) (Minus!1162) (Broken!5814 (value!37295 List!5817)) (And!1162) (Div!1162) (LessEqual!1162) (Mod!1162) (Concat!2635) (Not!1162) (Plus!1162) (SpaceValue!1162 (value!37296 List!5817)) (IntegerValue!3488 (value!37297 Int) (text!8583 List!5817)) (StringLiteralValue!3487 (text!8584 List!5817)) (FloatLiteralValue!2325 (text!8585 List!5817)) (BytesLiteralValue!1162 (value!37298 List!5817)) (CommentValue!2325 (value!37299 List!5817)) (StringLiteralValue!3488 (value!37300 List!5817)) (ErrorTokenValue!1162 (msg!1223 List!5817)) )
))
(declare-datatypes ((List!5818 0))(
  ( (Nil!5808) (Cons!5808 (h!11209 C!3866) (t!78795 List!5818)) )
))
(declare-datatypes ((IArray!3711 0))(
  ( (IArray!3712 (innerList!1913 List!5818)) )
))
(declare-datatypes ((Conc!1855 0))(
  ( (Node!1855 (left!4725 Conc!1855) (right!5055 Conc!1855) (csize!3940 Int) (cheight!2066 Int)) (Leaf!2932 (xs!4492 IArray!3711) (csize!3941 Int)) (Empty!1855) )
))
(declare-datatypes ((BalanceConc!3718 0))(
  ( (BalanceConc!3719 (c!109984 Conc!1855)) )
))
(declare-datatypes ((TokenValueInjection!2092 0))(
  ( (TokenValueInjection!2093 (toValue!2021 Int) (toChars!1880 Int)) )
))
(declare-datatypes ((Rule!2076 0))(
  ( (Rule!2077 (regex!1138 Regex!1472) (tag!1400 String!7555) (isSeparator!1138 Bool) (transformation!1138 TokenValueInjection!2092)) )
))
(declare-datatypes ((List!5819 0))(
  ( (Nil!5809) (Cons!5809 (h!11210 Rule!2076) (t!78796 List!5819)) )
))
(declare-fun rules!3103 () List!5819)

(declare-fun tp!183746 () Bool)

(declare-fun e!356098 () Bool)

(declare-fun e!356096 () Bool)

(declare-fun inv!7344 (String!7555) Bool)

(declare-fun inv!7347 (TokenValueInjection!2092) Bool)

(assert (=> b!589035 (= e!356096 (and tp!183746 (inv!7344 (tag!1400 (h!11210 rules!3103))) (inv!7347 (transformation!1138 (h!11210 rules!3103))) e!356098))))

(declare-fun b!589036 () Bool)

(declare-datatypes ((Unit!10544 0))(
  ( (Unit!10545) )
))
(declare-fun e!356086 () Unit!10544)

(declare-fun Unit!10546 () Unit!10544)

(assert (=> b!589036 (= e!356086 Unit!10546)))

(declare-fun tp!183745 () Bool)

(declare-fun e!356091 () Bool)

(declare-fun e!356103 () Bool)

(declare-datatypes ((Token!2012 0))(
  ( (Token!2013 (value!37301 TokenValue!1162) (rule!1904 Rule!2076) (size!4606 Int) (originalCharacters!1177 List!5818)) )
))
(declare-fun token!491 () Token!2012)

(declare-fun b!589037 () Bool)

(declare-fun inv!21 (TokenValue!1162) Bool)

(assert (=> b!589037 (= e!356091 (and (inv!21 (value!37301 token!491)) e!356103 tp!183745))))

(declare-fun b!589038 () Bool)

(declare-fun Unit!10547 () Unit!10544)

(assert (=> b!589038 (= e!356086 Unit!10547)))

(assert (=> b!589038 false))

(declare-fun b!589039 () Bool)

(declare-fun e!356100 () Bool)

(declare-datatypes ((LexerInterface!1024 0))(
  ( (LexerInterfaceExt!1021 (__x!4223 Int)) (Lexer!1022) )
))
(declare-fun thiss!22590 () LexerInterface!1024)

(declare-fun rulesValidInductive!415 (LexerInterface!1024 List!5819) Bool)

(assert (=> b!589039 (= e!356100 (rulesValidInductive!415 thiss!22590 rules!3103))))

(assert (=> b!589040 (= e!356098 (and tp!183741 tp!183740))))

(declare-fun b!589041 () Bool)

(declare-fun e!356095 () Bool)

(declare-fun tp!183748 () Bool)

(assert (=> b!589041 (= e!356103 (and tp!183748 (inv!7344 (tag!1400 (rule!1904 token!491))) (inv!7347 (transformation!1138 (rule!1904 token!491))) e!356095))))

(declare-fun b!589034 () Bool)

(declare-fun e!356093 () Bool)

(declare-fun e!356094 () Bool)

(assert (=> b!589034 (= e!356093 e!356094)))

(declare-fun res!253840 () Bool)

(assert (=> b!589034 (=> (not res!253840) (not e!356094))))

(declare-datatypes ((tuple2!6762 0))(
  ( (tuple2!6763 (_1!3645 Token!2012) (_2!3645 List!5818)) )
))
(declare-datatypes ((Option!1489 0))(
  ( (None!1488) (Some!1488 (v!16369 tuple2!6762)) )
))
(declare-fun lt!249568 () Option!1489)

(assert (=> b!589034 (= res!253840 (is-Some!1488 lt!249568))))

(declare-fun input!2705 () List!5818)

(declare-fun maxPrefix!722 (LexerInterface!1024 List!5819 List!5818) Option!1489)

(assert (=> b!589034 (= lt!249568 (maxPrefix!722 thiss!22590 rules!3103 input!2705))))

(declare-fun res!253839 () Bool)

(declare-fun e!356097 () Bool)

(assert (=> start!55038 (=> (not res!253839) (not e!356097))))

(assert (=> start!55038 (= res!253839 (is-Lexer!1022 thiss!22590))))

(assert (=> start!55038 e!356097))

(declare-fun e!356088 () Bool)

(assert (=> start!55038 e!356088))

(declare-fun e!356092 () Bool)

(assert (=> start!55038 e!356092))

(declare-fun inv!7348 (Token!2012) Bool)

(assert (=> start!55038 (and (inv!7348 token!491) e!356091)))

(assert (=> start!55038 true))

(declare-fun e!356101 () Bool)

(assert (=> start!55038 e!356101))

(declare-fun b!589042 () Bool)

(declare-fun res!253841 () Bool)

(assert (=> b!589042 (=> (not res!253841) (not e!356097))))

(declare-fun isEmpty!4193 (List!5818) Bool)

(assert (=> b!589042 (= res!253841 (not (isEmpty!4193 input!2705)))))

(declare-fun b!589043 () Bool)

(assert (=> b!589043 (= e!356094 (not e!356100))))

(declare-fun res!253838 () Bool)

(assert (=> b!589043 (=> res!253838 e!356100)))

(declare-fun contains!1368 (List!5819 Rule!2076) Bool)

(assert (=> b!589043 (= res!253838 (not (contains!1368 rules!3103 (rule!1904 token!491))))))

(declare-fun ruleValid!336 (LexerInterface!1024 Rule!2076) Bool)

(assert (=> b!589043 (ruleValid!336 thiss!22590 (rule!1904 (_1!3645 (v!16369 lt!249568))))))

(declare-fun lt!249560 () Unit!10544)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!183 (LexerInterface!1024 Rule!2076 List!5819) Unit!10544)

(assert (=> b!589043 (= lt!249560 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!183 thiss!22590 (rule!1904 (_1!3645 (v!16369 lt!249568))) rules!3103))))

(declare-fun isPrefix!766 (List!5818 List!5818) Bool)

(assert (=> b!589043 (isPrefix!766 input!2705 input!2705)))

(declare-fun lt!249570 () Unit!10544)

(declare-fun lemmaIsPrefixRefl!502 (List!5818 List!5818) Unit!10544)

(assert (=> b!589043 (= lt!249570 (lemmaIsPrefixRefl!502 input!2705 input!2705))))

(declare-fun lt!249561 () List!5818)

(assert (=> b!589043 (= (_2!3645 (v!16369 lt!249568)) lt!249561)))

(declare-fun lt!249573 () List!5818)

(declare-fun lt!249566 () Unit!10544)

(declare-fun lemmaSamePrefixThenSameSuffix!479 (List!5818 List!5818 List!5818 List!5818 List!5818) Unit!10544)

(assert (=> b!589043 (= lt!249566 (lemmaSamePrefixThenSameSuffix!479 lt!249573 (_2!3645 (v!16369 lt!249568)) lt!249573 lt!249561 input!2705))))

(declare-fun getSuffix!283 (List!5818 List!5818) List!5818)

(assert (=> b!589043 (= lt!249561 (getSuffix!283 input!2705 lt!249573))))

(declare-fun ++!1626 (List!5818 List!5818) List!5818)

(assert (=> b!589043 (isPrefix!766 lt!249573 (++!1626 lt!249573 (_2!3645 (v!16369 lt!249568))))))

(declare-fun lt!249569 () Unit!10544)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!611 (List!5818 List!5818) Unit!10544)

(assert (=> b!589043 (= lt!249569 (lemmaConcatTwoListThenFirstIsPrefix!611 lt!249573 (_2!3645 (v!16369 lt!249568))))))

(declare-fun lt!249562 () Unit!10544)

(declare-fun lemmaCharactersSize!197 (Token!2012) Unit!10544)

(assert (=> b!589043 (= lt!249562 (lemmaCharactersSize!197 token!491))))

(declare-fun lt!249563 () Unit!10544)

(assert (=> b!589043 (= lt!249563 (lemmaCharactersSize!197 (_1!3645 (v!16369 lt!249568))))))

(declare-fun lt!249565 () Unit!10544)

(assert (=> b!589043 (= lt!249565 e!356086)))

(declare-fun c!109982 () Bool)

(declare-fun lt!249567 () List!5818)

(declare-fun size!4607 (List!5818) Int)

(assert (=> b!589043 (= c!109982 (> (size!4607 lt!249573) (size!4607 lt!249567)))))

(declare-fun list!2427 (BalanceConc!3718) List!5818)

(declare-fun charsOf!767 (Token!2012) BalanceConc!3718)

(assert (=> b!589043 (= lt!249573 (list!2427 (charsOf!767 (_1!3645 (v!16369 lt!249568)))))))

(assert (=> b!589043 (= lt!249568 (Some!1488 (v!16369 lt!249568)))))

(declare-fun suffix!1342 () List!5818)

(declare-fun lt!249571 () Unit!10544)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!211 (List!5818 List!5818 List!5818 List!5818) Unit!10544)

(assert (=> b!589043 (= lt!249571 (lemmaConcatSameAndSameSizesThenSameLists!211 lt!249567 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!589044 () Bool)

(declare-fun tp_is_empty!3299 () Bool)

(declare-fun tp!183739 () Bool)

(assert (=> b!589044 (= e!356101 (and tp_is_empty!3299 tp!183739))))

(declare-fun b!589045 () Bool)

(declare-fun e!356102 () Bool)

(assert (=> b!589045 (= e!356102 e!356093)))

(declare-fun res!253846 () Bool)

(assert (=> b!589045 (=> (not res!253846) (not e!356093))))

(declare-fun lt!249559 () tuple2!6762)

(assert (=> b!589045 (= res!253846 (and (= (_1!3645 lt!249559) token!491) (= (_2!3645 lt!249559) suffix!1342)))))

(declare-fun lt!249564 () Option!1489)

(declare-fun get!2222 (Option!1489) tuple2!6762)

(assert (=> b!589045 (= lt!249559 (get!2222 lt!249564))))

(declare-fun b!589046 () Bool)

(declare-fun res!253842 () Bool)

(assert (=> b!589046 (=> (not res!253842) (not e!356097))))

(declare-fun rulesInvariant!987 (LexerInterface!1024 List!5819) Bool)

(assert (=> b!589046 (= res!253842 (rulesInvariant!987 thiss!22590 rules!3103))))

(assert (=> b!589047 (= e!356095 (and tp!183744 tp!183742))))

(declare-fun b!589048 () Bool)

(declare-fun tp!183747 () Bool)

(assert (=> b!589048 (= e!356088 (and tp_is_empty!3299 tp!183747))))

(declare-fun b!589049 () Bool)

(declare-fun res!253843 () Bool)

(assert (=> b!589049 (=> (not res!253843) (not e!356097))))

(declare-fun isEmpty!4194 (List!5819) Bool)

(assert (=> b!589049 (= res!253843 (not (isEmpty!4194 rules!3103)))))

(declare-fun b!589050 () Bool)

(declare-fun res!253847 () Bool)

(assert (=> b!589050 (=> (not res!253847) (not e!356094))))

(declare-fun lt!249572 () List!5818)

(assert (=> b!589050 (= res!253847 (= (++!1626 lt!249567 suffix!1342) lt!249572))))

(declare-fun b!589051 () Bool)

(declare-fun e!356099 () Bool)

(assert (=> b!589051 (= e!356097 e!356099)))

(declare-fun res!253845 () Bool)

(assert (=> b!589051 (=> (not res!253845) (not e!356099))))

(assert (=> b!589051 (= res!253845 (= lt!249567 input!2705))))

(assert (=> b!589051 (= lt!249567 (list!2427 (charsOf!767 token!491)))))

(declare-fun b!589052 () Bool)

(declare-fun tp!183743 () Bool)

(assert (=> b!589052 (= e!356092 (and e!356096 tp!183743))))

(declare-fun b!589053 () Bool)

(assert (=> b!589053 (= e!356099 e!356102)))

(declare-fun res!253844 () Bool)

(assert (=> b!589053 (=> (not res!253844) (not e!356102))))

(declare-fun isDefined!1300 (Option!1489) Bool)

(assert (=> b!589053 (= res!253844 (isDefined!1300 lt!249564))))

(assert (=> b!589053 (= lt!249564 (maxPrefix!722 thiss!22590 rules!3103 lt!249572))))

(assert (=> b!589053 (= lt!249572 (++!1626 input!2705 suffix!1342))))

(assert (= (and start!55038 res!253839) b!589049))

(assert (= (and b!589049 res!253843) b!589046))

(assert (= (and b!589046 res!253842) b!589042))

(assert (= (and b!589042 res!253841) b!589051))

(assert (= (and b!589051 res!253845) b!589053))

(assert (= (and b!589053 res!253844) b!589045))

(assert (= (and b!589045 res!253846) b!589034))

(assert (= (and b!589034 res!253840) b!589050))

(assert (= (and b!589050 res!253847) b!589043))

(assert (= (and b!589043 c!109982) b!589038))

(assert (= (and b!589043 (not c!109982)) b!589036))

(assert (= (and b!589043 (not res!253838)) b!589039))

(assert (= (and start!55038 (is-Cons!5808 suffix!1342)) b!589048))

(assert (= b!589035 b!589040))

(assert (= b!589052 b!589035))

(assert (= (and start!55038 (is-Cons!5809 rules!3103)) b!589052))

(assert (= b!589041 b!589047))

(assert (= b!589037 b!589041))

(assert (= start!55038 b!589037))

(assert (= (and start!55038 (is-Cons!5808 input!2705)) b!589044))

(declare-fun m!849717 () Bool)

(assert (=> b!589051 m!849717))

(assert (=> b!589051 m!849717))

(declare-fun m!849719 () Bool)

(assert (=> b!589051 m!849719))

(declare-fun m!849721 () Bool)

(assert (=> b!589041 m!849721))

(declare-fun m!849723 () Bool)

(assert (=> b!589041 m!849723))

(declare-fun m!849725 () Bool)

(assert (=> b!589053 m!849725))

(declare-fun m!849727 () Bool)

(assert (=> b!589053 m!849727))

(declare-fun m!849729 () Bool)

(assert (=> b!589053 m!849729))

(declare-fun m!849731 () Bool)

(assert (=> b!589039 m!849731))

(declare-fun m!849733 () Bool)

(assert (=> start!55038 m!849733))

(declare-fun m!849735 () Bool)

(assert (=> b!589037 m!849735))

(declare-fun m!849737 () Bool)

(assert (=> b!589042 m!849737))

(declare-fun m!849739 () Bool)

(assert (=> b!589049 m!849739))

(declare-fun m!849741 () Bool)

(assert (=> b!589046 m!849741))

(declare-fun m!849743 () Bool)

(assert (=> b!589035 m!849743))

(declare-fun m!849745 () Bool)

(assert (=> b!589035 m!849745))

(declare-fun m!849747 () Bool)

(assert (=> b!589045 m!849747))

(declare-fun m!849749 () Bool)

(assert (=> b!589043 m!849749))

(declare-fun m!849751 () Bool)

(assert (=> b!589043 m!849751))

(declare-fun m!849753 () Bool)

(assert (=> b!589043 m!849753))

(declare-fun m!849755 () Bool)

(assert (=> b!589043 m!849755))

(declare-fun m!849757 () Bool)

(assert (=> b!589043 m!849757))

(declare-fun m!849759 () Bool)

(assert (=> b!589043 m!849759))

(declare-fun m!849761 () Bool)

(assert (=> b!589043 m!849761))

(declare-fun m!849763 () Bool)

(assert (=> b!589043 m!849763))

(declare-fun m!849765 () Bool)

(assert (=> b!589043 m!849765))

(declare-fun m!849767 () Bool)

(assert (=> b!589043 m!849767))

(assert (=> b!589043 m!849763))

(declare-fun m!849769 () Bool)

(assert (=> b!589043 m!849769))

(declare-fun m!849771 () Bool)

(assert (=> b!589043 m!849771))

(declare-fun m!849773 () Bool)

(assert (=> b!589043 m!849773))

(declare-fun m!849775 () Bool)

(assert (=> b!589043 m!849775))

(assert (=> b!589043 m!849765))

(declare-fun m!849777 () Bool)

(assert (=> b!589043 m!849777))

(declare-fun m!849779 () Bool)

(assert (=> b!589043 m!849779))

(declare-fun m!849781 () Bool)

(assert (=> b!589043 m!849781))

(declare-fun m!849783 () Bool)

(assert (=> b!589034 m!849783))

(declare-fun m!849785 () Bool)

(assert (=> b!589050 m!849785))

(push 1)

(assert (not b_next!16509))

(assert (not b_next!16511))

(assert (not b_next!16515))

(assert b_and!58037)

(assert (not b!589034))

(assert (not b!589044))

(assert (not b!589045))

(assert (not b!589039))

(assert (not b!589043))

(assert (not b!589050))

(assert (not b_next!16513))

(assert (not b!589051))

(assert b_and!58039)

(assert (not b!589049))

(assert (not start!55038))

(assert b_and!58041)

(assert (not b!589042))

(assert (not b!589048))

(assert (not b!589052))

(assert (not b!589041))

(assert b_and!58035)

(assert (not b!589046))

(assert (not b!589035))

(assert (not b!589037))

(assert tp_is_empty!3299)

(assert (not b!589053))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58039)

(assert (not b_next!16509))

(assert (not b_next!16511))

(assert b_and!58041)

(assert (not b_next!16515))

(assert b_and!58037)

(assert b_and!58035)

(assert (not b_next!16513))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!207169 () Bool)

(assert (=> d!207169 (= (inv!7344 (tag!1400 (h!11210 rules!3103))) (= (mod (str.len (value!37275 (tag!1400 (h!11210 rules!3103)))) 2) 0))))

(assert (=> b!589035 d!207169))

(declare-fun d!207171 () Bool)

(declare-fun res!253887 () Bool)

(declare-fun e!356160 () Bool)

(assert (=> d!207171 (=> (not res!253887) (not e!356160))))

(declare-fun semiInverseModEq!446 (Int Int) Bool)

(assert (=> d!207171 (= res!253887 (semiInverseModEq!446 (toChars!1880 (transformation!1138 (h!11210 rules!3103))) (toValue!2021 (transformation!1138 (h!11210 rules!3103)))))))

(assert (=> d!207171 (= (inv!7347 (transformation!1138 (h!11210 rules!3103))) e!356160)))

(declare-fun b!589116 () Bool)

(declare-fun equivClasses!429 (Int Int) Bool)

(assert (=> b!589116 (= e!356160 (equivClasses!429 (toChars!1880 (transformation!1138 (h!11210 rules!3103))) (toValue!2021 (transformation!1138 (h!11210 rules!3103)))))))

(assert (= (and d!207171 res!253887) b!589116))

(declare-fun m!849857 () Bool)

(assert (=> d!207171 m!849857))

(declare-fun m!849859 () Bool)

(assert (=> b!589116 m!849859))

(assert (=> b!589035 d!207171))

(declare-fun b!589179 () Bool)

(declare-fun res!253934 () Bool)

(declare-fun e!356196 () Bool)

(assert (=> b!589179 (=> (not res!253934) (not e!356196))))

(declare-fun lt!249650 () Option!1489)

(assert (=> b!589179 (= res!253934 (< (size!4607 (_2!3645 (get!2222 lt!249650))) (size!4607 input!2705)))))

(declare-fun b!589180 () Bool)

(declare-fun e!356195 () Option!1489)

(declare-fun lt!249651 () Option!1489)

(declare-fun lt!249648 () Option!1489)

(assert (=> b!589180 (= e!356195 (ite (and (is-None!1488 lt!249651) (is-None!1488 lt!249648)) None!1488 (ite (is-None!1488 lt!249648) lt!249651 (ite (is-None!1488 lt!249651) lt!249648 (ite (>= (size!4606 (_1!3645 (v!16369 lt!249651))) (size!4606 (_1!3645 (v!16369 lt!249648)))) lt!249651 lt!249648)))))))

(declare-fun call!40264 () Option!1489)

(assert (=> b!589180 (= lt!249651 call!40264)))

(assert (=> b!589180 (= lt!249648 (maxPrefix!722 thiss!22590 (t!78796 rules!3103) input!2705))))

(declare-fun b!589181 () Bool)

(declare-fun res!253936 () Bool)

(assert (=> b!589181 (=> (not res!253936) (not e!356196))))

(assert (=> b!589181 (= res!253936 (= (list!2427 (charsOf!767 (_1!3645 (get!2222 lt!249650)))) (originalCharacters!1177 (_1!3645 (get!2222 lt!249650)))))))

(declare-fun b!589182 () Bool)

(declare-fun res!253938 () Bool)

(assert (=> b!589182 (=> (not res!253938) (not e!356196))))

(declare-fun apply!1391 (TokenValueInjection!2092 BalanceConc!3718) TokenValue!1162)

(declare-fun seqFromList!1314 (List!5818) BalanceConc!3718)

(assert (=> b!589182 (= res!253938 (= (value!37301 (_1!3645 (get!2222 lt!249650))) (apply!1391 (transformation!1138 (rule!1904 (_1!3645 (get!2222 lt!249650)))) (seqFromList!1314 (originalCharacters!1177 (_1!3645 (get!2222 lt!249650)))))))))

(declare-fun b!589183 () Bool)

(assert (=> b!589183 (= e!356195 call!40264)))

(declare-fun b!589184 () Bool)

(declare-fun e!356197 () Bool)

(assert (=> b!589184 (= e!356197 e!356196)))

(declare-fun res!253935 () Bool)

(assert (=> b!589184 (=> (not res!253935) (not e!356196))))

(assert (=> b!589184 (= res!253935 (isDefined!1300 lt!249650))))

(declare-fun d!207175 () Bool)

(assert (=> d!207175 e!356197))

(declare-fun res!253937 () Bool)

(assert (=> d!207175 (=> res!253937 e!356197)))

(declare-fun isEmpty!4197 (Option!1489) Bool)

(assert (=> d!207175 (= res!253937 (isEmpty!4197 lt!249650))))

(assert (=> d!207175 (= lt!249650 e!356195)))

(declare-fun c!110000 () Bool)

(assert (=> d!207175 (= c!110000 (and (is-Cons!5809 rules!3103) (is-Nil!5809 (t!78796 rules!3103))))))

(declare-fun lt!249649 () Unit!10544)

(declare-fun lt!249652 () Unit!10544)

(assert (=> d!207175 (= lt!249649 lt!249652)))

(assert (=> d!207175 (isPrefix!766 input!2705 input!2705)))

(assert (=> d!207175 (= lt!249652 (lemmaIsPrefixRefl!502 input!2705 input!2705))))

(assert (=> d!207175 (rulesValidInductive!415 thiss!22590 rules!3103)))

(assert (=> d!207175 (= (maxPrefix!722 thiss!22590 rules!3103 input!2705) lt!249650)))

(declare-fun b!589185 () Bool)

(declare-fun res!253932 () Bool)

(assert (=> b!589185 (=> (not res!253932) (not e!356196))))

(declare-fun matchR!607 (Regex!1472 List!5818) Bool)

(assert (=> b!589185 (= res!253932 (matchR!607 (regex!1138 (rule!1904 (_1!3645 (get!2222 lt!249650)))) (list!2427 (charsOf!767 (_1!3645 (get!2222 lt!249650))))))))

(declare-fun b!589186 () Bool)

(declare-fun res!253933 () Bool)

(assert (=> b!589186 (=> (not res!253933) (not e!356196))))

(assert (=> b!589186 (= res!253933 (= (++!1626 (list!2427 (charsOf!767 (_1!3645 (get!2222 lt!249650)))) (_2!3645 (get!2222 lt!249650))) input!2705))))

(declare-fun b!589187 () Bool)

(assert (=> b!589187 (= e!356196 (contains!1368 rules!3103 (rule!1904 (_1!3645 (get!2222 lt!249650)))))))

(declare-fun bm!40259 () Bool)

(declare-fun maxPrefixOneRule!411 (LexerInterface!1024 Rule!2076 List!5818) Option!1489)

(assert (=> bm!40259 (= call!40264 (maxPrefixOneRule!411 thiss!22590 (h!11210 rules!3103) input!2705))))

(assert (= (and d!207175 c!110000) b!589183))

(assert (= (and d!207175 (not c!110000)) b!589180))

(assert (= (or b!589183 b!589180) bm!40259))

(assert (= (and d!207175 (not res!253937)) b!589184))

(assert (= (and b!589184 res!253935) b!589181))

(assert (= (and b!589181 res!253936) b!589179))

(assert (= (and b!589179 res!253934) b!589186))

(assert (= (and b!589186 res!253933) b!589182))

(assert (= (and b!589182 res!253938) b!589185))

(assert (= (and b!589185 res!253932) b!589187))

(declare-fun m!849905 () Bool)

(assert (=> b!589186 m!849905))

(declare-fun m!849907 () Bool)

(assert (=> b!589186 m!849907))

(assert (=> b!589186 m!849907))

(declare-fun m!849909 () Bool)

(assert (=> b!589186 m!849909))

(assert (=> b!589186 m!849909))

(declare-fun m!849911 () Bool)

(assert (=> b!589186 m!849911))

(assert (=> b!589179 m!849905))

(declare-fun m!849913 () Bool)

(assert (=> b!589179 m!849913))

(declare-fun m!849915 () Bool)

(assert (=> b!589179 m!849915))

(declare-fun m!849917 () Bool)

(assert (=> bm!40259 m!849917))

(declare-fun m!849919 () Bool)

(assert (=> d!207175 m!849919))

(assert (=> d!207175 m!849781))

(assert (=> d!207175 m!849773))

(assert (=> d!207175 m!849731))

(declare-fun m!849921 () Bool)

(assert (=> b!589184 m!849921))

(assert (=> b!589187 m!849905))

(declare-fun m!849923 () Bool)

(assert (=> b!589187 m!849923))

(assert (=> b!589185 m!849905))

(assert (=> b!589185 m!849907))

(assert (=> b!589185 m!849907))

(assert (=> b!589185 m!849909))

(assert (=> b!589185 m!849909))

(declare-fun m!849925 () Bool)

(assert (=> b!589185 m!849925))

(declare-fun m!849929 () Bool)

(assert (=> b!589180 m!849929))

(assert (=> b!589181 m!849905))

(assert (=> b!589181 m!849907))

(assert (=> b!589181 m!849907))

(assert (=> b!589181 m!849909))

(assert (=> b!589182 m!849905))

(declare-fun m!849931 () Bool)

(assert (=> b!589182 m!849931))

(assert (=> b!589182 m!849931))

(declare-fun m!849933 () Bool)

(assert (=> b!589182 m!849933))

(assert (=> b!589034 d!207175))

(declare-fun d!207195 () Bool)

(assert (=> d!207195 (= (get!2222 lt!249564) (v!16369 lt!249564))))

(assert (=> b!589045 d!207195))

(declare-fun d!207199 () Bool)

(declare-fun res!253941 () Bool)

(declare-fun e!356200 () Bool)

(assert (=> d!207199 (=> (not res!253941) (not e!356200))))

(declare-fun rulesValid!410 (LexerInterface!1024 List!5819) Bool)

(assert (=> d!207199 (= res!253941 (rulesValid!410 thiss!22590 rules!3103))))

(assert (=> d!207199 (= (rulesInvariant!987 thiss!22590 rules!3103) e!356200)))

(declare-fun b!589190 () Bool)

(declare-datatypes ((List!5823 0))(
  ( (Nil!5813) (Cons!5813 (h!11214 String!7555) (t!78816 List!5823)) )
))
(declare-fun noDuplicateTag!410 (LexerInterface!1024 List!5819 List!5823) Bool)

(assert (=> b!589190 (= e!356200 (noDuplicateTag!410 thiss!22590 rules!3103 Nil!5813))))

(assert (= (and d!207199 res!253941) b!589190))

(declare-fun m!849937 () Bool)

(assert (=> d!207199 m!849937))

(declare-fun m!849939 () Bool)

(assert (=> b!589190 m!849939))

(assert (=> b!589046 d!207199))

(declare-fun b!589201 () Bool)

(declare-fun e!356208 () Bool)

(declare-fun inv!17 (TokenValue!1162) Bool)

(assert (=> b!589201 (= e!356208 (inv!17 (value!37301 token!491)))))

(declare-fun b!589202 () Bool)

(declare-fun e!356207 () Bool)

(assert (=> b!589202 (= e!356207 e!356208)))

(declare-fun c!110006 () Bool)

(assert (=> b!589202 (= c!110006 (is-IntegerValue!3487 (value!37301 token!491)))))

(declare-fun b!589203 () Bool)

(declare-fun e!356209 () Bool)

(declare-fun inv!15 (TokenValue!1162) Bool)

(assert (=> b!589203 (= e!356209 (inv!15 (value!37301 token!491)))))

(declare-fun b!589204 () Bool)

(declare-fun inv!16 (TokenValue!1162) Bool)

(assert (=> b!589204 (= e!356207 (inv!16 (value!37301 token!491)))))

(declare-fun b!589205 () Bool)

(declare-fun res!253944 () Bool)

(assert (=> b!589205 (=> res!253944 e!356209)))

(assert (=> b!589205 (= res!253944 (not (is-IntegerValue!3488 (value!37301 token!491))))))

(assert (=> b!589205 (= e!356208 e!356209)))

(declare-fun d!207201 () Bool)

(declare-fun c!110005 () Bool)

(assert (=> d!207201 (= c!110005 (is-IntegerValue!3486 (value!37301 token!491)))))

(assert (=> d!207201 (= (inv!21 (value!37301 token!491)) e!356207)))

(assert (= (and d!207201 c!110005) b!589204))

(assert (= (and d!207201 (not c!110005)) b!589202))

(assert (= (and b!589202 c!110006) b!589201))

(assert (= (and b!589202 (not c!110006)) b!589205))

(assert (= (and b!589205 (not res!253944)) b!589203))

(declare-fun m!849943 () Bool)

(assert (=> b!589201 m!849943))

(declare-fun m!849945 () Bool)

(assert (=> b!589203 m!849945))

(declare-fun m!849947 () Bool)

(assert (=> b!589204 m!849947))

(assert (=> b!589037 d!207201))

(declare-fun d!207205 () Bool)

(assert (=> d!207205 true))

(declare-fun lt!249689 () Bool)

(declare-fun lambda!15931 () Int)

(declare-fun forall!1549 (List!5819 Int) Bool)

(assert (=> d!207205 (= lt!249689 (forall!1549 rules!3103 lambda!15931))))

(declare-fun e!356238 () Bool)

(assert (=> d!207205 (= lt!249689 e!356238)))

(declare-fun res!253981 () Bool)

(assert (=> d!207205 (=> res!253981 e!356238)))

(assert (=> d!207205 (= res!253981 (not (is-Cons!5809 rules!3103)))))

(assert (=> d!207205 (= (rulesValidInductive!415 thiss!22590 rules!3103) lt!249689)))

(declare-fun b!589260 () Bool)

(declare-fun e!356239 () Bool)

(assert (=> b!589260 (= e!356238 e!356239)))

(declare-fun res!253980 () Bool)

(assert (=> b!589260 (=> (not res!253980) (not e!356239))))

(assert (=> b!589260 (= res!253980 (ruleValid!336 thiss!22590 (h!11210 rules!3103)))))

(declare-fun b!589261 () Bool)

(assert (=> b!589261 (= e!356239 (rulesValidInductive!415 thiss!22590 (t!78796 rules!3103)))))

(assert (= (and d!207205 (not res!253981)) b!589260))

(assert (= (and b!589260 res!253980) b!589261))

(declare-fun m!850023 () Bool)

(assert (=> d!207205 m!850023))

(declare-fun m!850025 () Bool)

(assert (=> b!589260 m!850025))

(declare-fun m!850027 () Bool)

(assert (=> b!589261 m!850027))

(assert (=> b!589039 d!207205))

(declare-fun d!207227 () Bool)

(assert (=> d!207227 (= (isEmpty!4194 rules!3103) (is-Nil!5809 rules!3103))))

(assert (=> b!589049 d!207227))

(declare-fun d!207229 () Bool)

(declare-fun list!2429 (Conc!1855) List!5818)

(assert (=> d!207229 (= (list!2427 (charsOf!767 token!491)) (list!2429 (c!109984 (charsOf!767 token!491))))))

(declare-fun bs!70215 () Bool)

(assert (= bs!70215 d!207229))

(declare-fun m!850029 () Bool)

(assert (=> bs!70215 m!850029))

(assert (=> b!589051 d!207229))

(declare-fun d!207231 () Bool)

(declare-fun lt!249692 () BalanceConc!3718)

(assert (=> d!207231 (= (list!2427 lt!249692) (originalCharacters!1177 token!491))))

(declare-fun dynLambda!3387 (Int TokenValue!1162) BalanceConc!3718)

(assert (=> d!207231 (= lt!249692 (dynLambda!3387 (toChars!1880 (transformation!1138 (rule!1904 token!491))) (value!37301 token!491)))))

(assert (=> d!207231 (= (charsOf!767 token!491) lt!249692)))

(declare-fun b_lambda!23199 () Bool)

(assert (=> (not b_lambda!23199) (not d!207231)))

(declare-fun t!78805 () Bool)

(declare-fun tb!51523 () Bool)

(assert (=> (and b!589047 (= (toChars!1880 (transformation!1138 (rule!1904 token!491))) (toChars!1880 (transformation!1138 (rule!1904 token!491)))) t!78805) tb!51523))

(declare-fun b!589268 () Bool)

(declare-fun e!356242 () Bool)

(declare-fun tp!183784 () Bool)

(declare-fun inv!7351 (Conc!1855) Bool)

(assert (=> b!589268 (= e!356242 (and (inv!7351 (c!109984 (dynLambda!3387 (toChars!1880 (transformation!1138 (rule!1904 token!491))) (value!37301 token!491)))) tp!183784))))

(declare-fun result!57764 () Bool)

(declare-fun inv!7352 (BalanceConc!3718) Bool)

(assert (=> tb!51523 (= result!57764 (and (inv!7352 (dynLambda!3387 (toChars!1880 (transformation!1138 (rule!1904 token!491))) (value!37301 token!491))) e!356242))))

(assert (= tb!51523 b!589268))

(declare-fun m!850031 () Bool)

(assert (=> b!589268 m!850031))

(declare-fun m!850033 () Bool)

(assert (=> tb!51523 m!850033))

(assert (=> d!207231 t!78805))

(declare-fun b_and!58055 () Bool)

(assert (= b_and!58037 (and (=> t!78805 result!57764) b_and!58055)))

(declare-fun t!78807 () Bool)

(declare-fun tb!51525 () Bool)

(assert (=> (and b!589040 (= (toChars!1880 (transformation!1138 (h!11210 rules!3103))) (toChars!1880 (transformation!1138 (rule!1904 token!491)))) t!78807) tb!51525))

(declare-fun result!57768 () Bool)

(assert (= result!57768 result!57764))

(assert (=> d!207231 t!78807))

(declare-fun b_and!58057 () Bool)

(assert (= b_and!58041 (and (=> t!78807 result!57768) b_and!58057)))

(declare-fun m!850035 () Bool)

(assert (=> d!207231 m!850035))

(declare-fun m!850037 () Bool)

(assert (=> d!207231 m!850037))

(assert (=> b!589051 d!207231))

(declare-fun b!589277 () Bool)

(declare-fun e!356247 () List!5818)

(assert (=> b!589277 (= e!356247 suffix!1342)))

(declare-fun lt!249695 () List!5818)

(declare-fun b!589280 () Bool)

(declare-fun e!356248 () Bool)

(assert (=> b!589280 (= e!356248 (or (not (= suffix!1342 Nil!5808)) (= lt!249695 lt!249567)))))

(declare-fun d!207233 () Bool)

(assert (=> d!207233 e!356248))

(declare-fun res!253986 () Bool)

(assert (=> d!207233 (=> (not res!253986) (not e!356248))))

(declare-fun content!1042 (List!5818) (Set C!3866))

(assert (=> d!207233 (= res!253986 (= (content!1042 lt!249695) (set.union (content!1042 lt!249567) (content!1042 suffix!1342))))))

(assert (=> d!207233 (= lt!249695 e!356247)))

(declare-fun c!110016 () Bool)

(assert (=> d!207233 (= c!110016 (is-Nil!5808 lt!249567))))

(assert (=> d!207233 (= (++!1626 lt!249567 suffix!1342) lt!249695)))

(declare-fun b!589279 () Bool)

(declare-fun res!253987 () Bool)

(assert (=> b!589279 (=> (not res!253987) (not e!356248))))

(assert (=> b!589279 (= res!253987 (= (size!4607 lt!249695) (+ (size!4607 lt!249567) (size!4607 suffix!1342))))))

(declare-fun b!589278 () Bool)

(assert (=> b!589278 (= e!356247 (Cons!5808 (h!11209 lt!249567) (++!1626 (t!78795 lt!249567) suffix!1342)))))

(assert (= (and d!207233 c!110016) b!589277))

(assert (= (and d!207233 (not c!110016)) b!589278))

(assert (= (and d!207233 res!253986) b!589279))

(assert (= (and b!589279 res!253987) b!589280))

(declare-fun m!850039 () Bool)

(assert (=> d!207233 m!850039))

(declare-fun m!850041 () Bool)

(assert (=> d!207233 m!850041))

(declare-fun m!850043 () Bool)

(assert (=> d!207233 m!850043))

(declare-fun m!850045 () Bool)

(assert (=> b!589279 m!850045))

(assert (=> b!589279 m!849779))

(declare-fun m!850047 () Bool)

(assert (=> b!589279 m!850047))

(declare-fun m!850049 () Bool)

(assert (=> b!589278 m!850049))

(assert (=> b!589050 d!207233))

(declare-fun d!207235 () Bool)

(declare-fun res!253992 () Bool)

(declare-fun e!356251 () Bool)

(assert (=> d!207235 (=> (not res!253992) (not e!356251))))

(assert (=> d!207235 (= res!253992 (not (isEmpty!4193 (originalCharacters!1177 token!491))))))

(assert (=> d!207235 (= (inv!7348 token!491) e!356251)))

(declare-fun b!589285 () Bool)

(declare-fun res!253993 () Bool)

(assert (=> b!589285 (=> (not res!253993) (not e!356251))))

(assert (=> b!589285 (= res!253993 (= (originalCharacters!1177 token!491) (list!2427 (dynLambda!3387 (toChars!1880 (transformation!1138 (rule!1904 token!491))) (value!37301 token!491)))))))

(declare-fun b!589286 () Bool)

(assert (=> b!589286 (= e!356251 (= (size!4606 token!491) (size!4607 (originalCharacters!1177 token!491))))))

(assert (= (and d!207235 res!253992) b!589285))

(assert (= (and b!589285 res!253993) b!589286))

(declare-fun b_lambda!23201 () Bool)

(assert (=> (not b_lambda!23201) (not b!589285)))

(assert (=> b!589285 t!78805))

(declare-fun b_and!58059 () Bool)

(assert (= b_and!58055 (and (=> t!78805 result!57764) b_and!58059)))

(assert (=> b!589285 t!78807))

(declare-fun b_and!58061 () Bool)

(assert (= b_and!58057 (and (=> t!78807 result!57768) b_and!58061)))

(declare-fun m!850051 () Bool)

(assert (=> d!207235 m!850051))

(assert (=> b!589285 m!850037))

(assert (=> b!589285 m!850037))

(declare-fun m!850053 () Bool)

(assert (=> b!589285 m!850053))

(declare-fun m!850055 () Bool)

(assert (=> b!589286 m!850055))

(assert (=> start!55038 d!207235))

(declare-fun d!207237 () Bool)

(assert (=> d!207237 (= (inv!7344 (tag!1400 (rule!1904 token!491))) (= (mod (str.len (value!37275 (tag!1400 (rule!1904 token!491)))) 2) 0))))

(assert (=> b!589041 d!207237))

(declare-fun d!207239 () Bool)

(declare-fun res!253994 () Bool)

(declare-fun e!356252 () Bool)

(assert (=> d!207239 (=> (not res!253994) (not e!356252))))

(assert (=> d!207239 (= res!253994 (semiInverseModEq!446 (toChars!1880 (transformation!1138 (rule!1904 token!491))) (toValue!2021 (transformation!1138 (rule!1904 token!491)))))))

(assert (=> d!207239 (= (inv!7347 (transformation!1138 (rule!1904 token!491))) e!356252)))

(declare-fun b!589287 () Bool)

(assert (=> b!589287 (= e!356252 (equivClasses!429 (toChars!1880 (transformation!1138 (rule!1904 token!491))) (toValue!2021 (transformation!1138 (rule!1904 token!491)))))))

(assert (= (and d!207239 res!253994) b!589287))

(declare-fun m!850057 () Bool)

(assert (=> d!207239 m!850057))

(declare-fun m!850059 () Bool)

(assert (=> b!589287 m!850059))

(assert (=> b!589041 d!207239))

(declare-fun d!207241 () Bool)

(assert (=> d!207241 (isPrefix!766 lt!249573 (++!1626 lt!249573 (_2!3645 (v!16369 lt!249568))))))

(declare-fun lt!249698 () Unit!10544)

(declare-fun choose!4238 (List!5818 List!5818) Unit!10544)

(assert (=> d!207241 (= lt!249698 (choose!4238 lt!249573 (_2!3645 (v!16369 lt!249568))))))

(assert (=> d!207241 (= (lemmaConcatTwoListThenFirstIsPrefix!611 lt!249573 (_2!3645 (v!16369 lt!249568))) lt!249698)))

(declare-fun bs!70216 () Bool)

(assert (= bs!70216 d!207241))

(assert (=> bs!70216 m!849763))

(assert (=> bs!70216 m!849763))

(assert (=> bs!70216 m!849769))

(declare-fun m!850061 () Bool)

(assert (=> bs!70216 m!850061))

(assert (=> b!589043 d!207241))

(declare-fun d!207243 () Bool)

(declare-fun lt!249701 () Int)

(assert (=> d!207243 (>= lt!249701 0)))

(declare-fun e!356255 () Int)

(assert (=> d!207243 (= lt!249701 e!356255)))

(declare-fun c!110019 () Bool)

(assert (=> d!207243 (= c!110019 (is-Nil!5808 lt!249567))))

(assert (=> d!207243 (= (size!4607 lt!249567) lt!249701)))

(declare-fun b!589292 () Bool)

(assert (=> b!589292 (= e!356255 0)))

(declare-fun b!589293 () Bool)

(assert (=> b!589293 (= e!356255 (+ 1 (size!4607 (t!78795 lt!249567))))))

(assert (= (and d!207243 c!110019) b!589292))

(assert (= (and d!207243 (not c!110019)) b!589293))

(declare-fun m!850063 () Bool)

(assert (=> b!589293 m!850063))

(assert (=> b!589043 d!207243))

(declare-fun d!207245 () Bool)

(declare-fun res!253999 () Bool)

(declare-fun e!356258 () Bool)

(assert (=> d!207245 (=> (not res!253999) (not e!356258))))

(declare-fun validRegex!499 (Regex!1472) Bool)

(assert (=> d!207245 (= res!253999 (validRegex!499 (regex!1138 (rule!1904 (_1!3645 (v!16369 lt!249568))))))))

(assert (=> d!207245 (= (ruleValid!336 thiss!22590 (rule!1904 (_1!3645 (v!16369 lt!249568)))) e!356258)))

(declare-fun b!589298 () Bool)

(declare-fun res!254000 () Bool)

(assert (=> b!589298 (=> (not res!254000) (not e!356258))))

(declare-fun nullable!404 (Regex!1472) Bool)

(assert (=> b!589298 (= res!254000 (not (nullable!404 (regex!1138 (rule!1904 (_1!3645 (v!16369 lt!249568)))))))))

(declare-fun b!589299 () Bool)

(assert (=> b!589299 (= e!356258 (not (= (tag!1400 (rule!1904 (_1!3645 (v!16369 lt!249568)))) (String!7556 ""))))))

(assert (= (and d!207245 res!253999) b!589298))

(assert (= (and b!589298 res!254000) b!589299))

(declare-fun m!850065 () Bool)

(assert (=> d!207245 m!850065))

(declare-fun m!850067 () Bool)

(assert (=> b!589298 m!850067))

(assert (=> b!589043 d!207245))

(declare-fun d!207247 () Bool)

(declare-fun lt!249704 () Bool)

(declare-fun content!1043 (List!5819) (Set Rule!2076))

(assert (=> d!207247 (= lt!249704 (set.member (rule!1904 token!491) (content!1043 rules!3103)))))

(declare-fun e!356263 () Bool)

(assert (=> d!207247 (= lt!249704 e!356263)))

(declare-fun res!254006 () Bool)

(assert (=> d!207247 (=> (not res!254006) (not e!356263))))

(assert (=> d!207247 (= res!254006 (is-Cons!5809 rules!3103))))

(assert (=> d!207247 (= (contains!1368 rules!3103 (rule!1904 token!491)) lt!249704)))

(declare-fun b!589304 () Bool)

(declare-fun e!356264 () Bool)

(assert (=> b!589304 (= e!356263 e!356264)))

(declare-fun res!254005 () Bool)

(assert (=> b!589304 (=> res!254005 e!356264)))

(assert (=> b!589304 (= res!254005 (= (h!11210 rules!3103) (rule!1904 token!491)))))

(declare-fun b!589305 () Bool)

(assert (=> b!589305 (= e!356264 (contains!1368 (t!78796 rules!3103) (rule!1904 token!491)))))

(assert (= (and d!207247 res!254006) b!589304))

(assert (= (and b!589304 (not res!254005)) b!589305))

(declare-fun m!850069 () Bool)

(assert (=> d!207247 m!850069))

(declare-fun m!850071 () Bool)

(assert (=> d!207247 m!850071))

(declare-fun m!850073 () Bool)

(assert (=> b!589305 m!850073))

(assert (=> b!589043 d!207247))

(declare-fun b!589317 () Bool)

(declare-fun e!356271 () Bool)

(assert (=> b!589317 (= e!356271 (>= (size!4607 input!2705) (size!4607 input!2705)))))

(declare-fun b!589316 () Bool)

(declare-fun e!356272 () Bool)

(declare-fun tail!774 (List!5818) List!5818)

(assert (=> b!589316 (= e!356272 (isPrefix!766 (tail!774 input!2705) (tail!774 input!2705)))))

(declare-fun b!589314 () Bool)

(declare-fun e!356273 () Bool)

(assert (=> b!589314 (= e!356273 e!356272)))

(declare-fun res!254018 () Bool)

(assert (=> b!589314 (=> (not res!254018) (not e!356272))))

(assert (=> b!589314 (= res!254018 (not (is-Nil!5808 input!2705)))))

(declare-fun b!589315 () Bool)

(declare-fun res!254017 () Bool)

(assert (=> b!589315 (=> (not res!254017) (not e!356272))))

(declare-fun head!1245 (List!5818) C!3866)

(assert (=> b!589315 (= res!254017 (= (head!1245 input!2705) (head!1245 input!2705)))))

(declare-fun d!207249 () Bool)

(assert (=> d!207249 e!356271))

(declare-fun res!254016 () Bool)

(assert (=> d!207249 (=> res!254016 e!356271)))

(declare-fun lt!249707 () Bool)

(assert (=> d!207249 (= res!254016 (not lt!249707))))

(assert (=> d!207249 (= lt!249707 e!356273)))

(declare-fun res!254015 () Bool)

(assert (=> d!207249 (=> res!254015 e!356273)))

(assert (=> d!207249 (= res!254015 (is-Nil!5808 input!2705))))

(assert (=> d!207249 (= (isPrefix!766 input!2705 input!2705) lt!249707)))

(assert (= (and d!207249 (not res!254015)) b!589314))

(assert (= (and b!589314 res!254018) b!589315))

(assert (= (and b!589315 res!254017) b!589316))

(assert (= (and d!207249 (not res!254016)) b!589317))

(assert (=> b!589317 m!849915))

(assert (=> b!589317 m!849915))

(declare-fun m!850075 () Bool)

(assert (=> b!589316 m!850075))

(assert (=> b!589316 m!850075))

(assert (=> b!589316 m!850075))

(assert (=> b!589316 m!850075))

(declare-fun m!850077 () Bool)

(assert (=> b!589316 m!850077))

(declare-fun m!850079 () Bool)

(assert (=> b!589315 m!850079))

(assert (=> b!589315 m!850079))

(assert (=> b!589043 d!207249))

(declare-fun d!207251 () Bool)

(assert (=> d!207251 (= (_2!3645 (v!16369 lt!249568)) lt!249561)))

(declare-fun lt!249710 () Unit!10544)

(declare-fun choose!4239 (List!5818 List!5818 List!5818 List!5818 List!5818) Unit!10544)

(assert (=> d!207251 (= lt!249710 (choose!4239 lt!249573 (_2!3645 (v!16369 lt!249568)) lt!249573 lt!249561 input!2705))))

(assert (=> d!207251 (isPrefix!766 lt!249573 input!2705)))

(assert (=> d!207251 (= (lemmaSamePrefixThenSameSuffix!479 lt!249573 (_2!3645 (v!16369 lt!249568)) lt!249573 lt!249561 input!2705) lt!249710)))

(declare-fun bs!70217 () Bool)

(assert (= bs!70217 d!207251))

(declare-fun m!850081 () Bool)

(assert (=> bs!70217 m!850081))

(declare-fun m!850083 () Bool)

(assert (=> bs!70217 m!850083))

(assert (=> b!589043 d!207251))

(declare-fun d!207253 () Bool)

(assert (=> d!207253 (isPrefix!766 input!2705 input!2705)))

(declare-fun lt!249713 () Unit!10544)

(declare-fun choose!4240 (List!5818 List!5818) Unit!10544)

(assert (=> d!207253 (= lt!249713 (choose!4240 input!2705 input!2705))))

(assert (=> d!207253 (= (lemmaIsPrefixRefl!502 input!2705 input!2705) lt!249713)))

(declare-fun bs!70218 () Bool)

(assert (= bs!70218 d!207253))

(assert (=> bs!70218 m!849781))

(declare-fun m!850085 () Bool)

(assert (=> bs!70218 m!850085))

(assert (=> b!589043 d!207253))

(declare-fun b!589321 () Bool)

(declare-fun e!356274 () Bool)

(assert (=> b!589321 (= e!356274 (>= (size!4607 (++!1626 lt!249573 (_2!3645 (v!16369 lt!249568)))) (size!4607 lt!249573)))))

(declare-fun b!589320 () Bool)

(declare-fun e!356275 () Bool)

(assert (=> b!589320 (= e!356275 (isPrefix!766 (tail!774 lt!249573) (tail!774 (++!1626 lt!249573 (_2!3645 (v!16369 lt!249568))))))))

(declare-fun b!589318 () Bool)

(declare-fun e!356276 () Bool)

(assert (=> b!589318 (= e!356276 e!356275)))

(declare-fun res!254022 () Bool)

(assert (=> b!589318 (=> (not res!254022) (not e!356275))))

(assert (=> b!589318 (= res!254022 (not (is-Nil!5808 (++!1626 lt!249573 (_2!3645 (v!16369 lt!249568))))))))

(declare-fun b!589319 () Bool)

(declare-fun res!254021 () Bool)

(assert (=> b!589319 (=> (not res!254021) (not e!356275))))

(assert (=> b!589319 (= res!254021 (= (head!1245 lt!249573) (head!1245 (++!1626 lt!249573 (_2!3645 (v!16369 lt!249568))))))))

(declare-fun d!207255 () Bool)

(assert (=> d!207255 e!356274))

(declare-fun res!254020 () Bool)

(assert (=> d!207255 (=> res!254020 e!356274)))

(declare-fun lt!249714 () Bool)

(assert (=> d!207255 (= res!254020 (not lt!249714))))

(assert (=> d!207255 (= lt!249714 e!356276)))

(declare-fun res!254019 () Bool)

(assert (=> d!207255 (=> res!254019 e!356276)))

(assert (=> d!207255 (= res!254019 (is-Nil!5808 lt!249573))))

(assert (=> d!207255 (= (isPrefix!766 lt!249573 (++!1626 lt!249573 (_2!3645 (v!16369 lt!249568)))) lt!249714)))

(assert (= (and d!207255 (not res!254019)) b!589318))

(assert (= (and b!589318 res!254022) b!589319))

(assert (= (and b!589319 res!254021) b!589320))

(assert (= (and d!207255 (not res!254020)) b!589321))

(assert (=> b!589321 m!849763))

(declare-fun m!850087 () Bool)

(assert (=> b!589321 m!850087))

(assert (=> b!589321 m!849757))

(declare-fun m!850089 () Bool)

(assert (=> b!589320 m!850089))

(assert (=> b!589320 m!849763))

(declare-fun m!850091 () Bool)

(assert (=> b!589320 m!850091))

(assert (=> b!589320 m!850089))

(assert (=> b!589320 m!850091))

(declare-fun m!850093 () Bool)

(assert (=> b!589320 m!850093))

(declare-fun m!850095 () Bool)

(assert (=> b!589319 m!850095))

(assert (=> b!589319 m!849763))

(declare-fun m!850097 () Bool)

(assert (=> b!589319 m!850097))

(assert (=> b!589043 d!207255))

(declare-fun d!207257 () Bool)

(assert (=> d!207257 (and (= lt!249567 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!249717 () Unit!10544)

(declare-fun choose!4241 (List!5818 List!5818 List!5818 List!5818) Unit!10544)

(assert (=> d!207257 (= lt!249717 (choose!4241 lt!249567 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!207257 (= (++!1626 lt!249567 suffix!1342) (++!1626 input!2705 suffix!1342))))

(assert (=> d!207257 (= (lemmaConcatSameAndSameSizesThenSameLists!211 lt!249567 suffix!1342 input!2705 suffix!1342) lt!249717)))

(declare-fun bs!70219 () Bool)

(assert (= bs!70219 d!207257))

(declare-fun m!850099 () Bool)

(assert (=> bs!70219 m!850099))

(assert (=> bs!70219 m!849785))

(assert (=> bs!70219 m!849729))

(assert (=> b!589043 d!207257))

(declare-fun d!207259 () Bool)

(assert (=> d!207259 (= (list!2427 (charsOf!767 (_1!3645 (v!16369 lt!249568)))) (list!2429 (c!109984 (charsOf!767 (_1!3645 (v!16369 lt!249568))))))))

(declare-fun bs!70220 () Bool)

(assert (= bs!70220 d!207259))

(declare-fun m!850101 () Bool)

(assert (=> bs!70220 m!850101))

(assert (=> b!589043 d!207259))

(declare-fun d!207261 () Bool)

(declare-fun lt!249718 () Int)

(assert (=> d!207261 (>= lt!249718 0)))

(declare-fun e!356277 () Int)

(assert (=> d!207261 (= lt!249718 e!356277)))

(declare-fun c!110020 () Bool)

(assert (=> d!207261 (= c!110020 (is-Nil!5808 lt!249573))))

(assert (=> d!207261 (= (size!4607 lt!249573) lt!249718)))

(declare-fun b!589322 () Bool)

(assert (=> b!589322 (= e!356277 0)))

(declare-fun b!589323 () Bool)

(assert (=> b!589323 (= e!356277 (+ 1 (size!4607 (t!78795 lt!249573))))))

(assert (= (and d!207261 c!110020) b!589322))

(assert (= (and d!207261 (not c!110020)) b!589323))

(declare-fun m!850103 () Bool)

(assert (=> b!589323 m!850103))

(assert (=> b!589043 d!207261))

(declare-fun d!207263 () Bool)

(declare-fun lt!249721 () List!5818)

(assert (=> d!207263 (= (++!1626 lt!249573 lt!249721) input!2705)))

(declare-fun e!356280 () List!5818)

(assert (=> d!207263 (= lt!249721 e!356280)))

(declare-fun c!110023 () Bool)

(assert (=> d!207263 (= c!110023 (is-Cons!5808 lt!249573))))

(assert (=> d!207263 (>= (size!4607 input!2705) (size!4607 lt!249573))))

(assert (=> d!207263 (= (getSuffix!283 input!2705 lt!249573) lt!249721)))

(declare-fun b!589328 () Bool)

(assert (=> b!589328 (= e!356280 (getSuffix!283 (tail!774 input!2705) (t!78795 lt!249573)))))

(declare-fun b!589329 () Bool)

(assert (=> b!589329 (= e!356280 input!2705)))

(assert (= (and d!207263 c!110023) b!589328))

(assert (= (and d!207263 (not c!110023)) b!589329))

(declare-fun m!850105 () Bool)

(assert (=> d!207263 m!850105))

(assert (=> d!207263 m!849915))

(assert (=> d!207263 m!849757))

(assert (=> b!589328 m!850075))

(assert (=> b!589328 m!850075))

(declare-fun m!850107 () Bool)

(assert (=> b!589328 m!850107))

(assert (=> b!589043 d!207263))

(declare-fun d!207265 () Bool)

(assert (=> d!207265 (= (size!4606 (_1!3645 (v!16369 lt!249568))) (size!4607 (originalCharacters!1177 (_1!3645 (v!16369 lt!249568)))))))

(declare-fun Unit!10553 () Unit!10544)

(assert (=> d!207265 (= (lemmaCharactersSize!197 (_1!3645 (v!16369 lt!249568))) Unit!10553)))

(declare-fun bs!70221 () Bool)

(assert (= bs!70221 d!207265))

(declare-fun m!850109 () Bool)

(assert (=> bs!70221 m!850109))

(assert (=> b!589043 d!207265))

(declare-fun d!207267 () Bool)

(declare-fun lt!249722 () BalanceConc!3718)

(assert (=> d!207267 (= (list!2427 lt!249722) (originalCharacters!1177 (_1!3645 (v!16369 lt!249568))))))

(assert (=> d!207267 (= lt!249722 (dynLambda!3387 (toChars!1880 (transformation!1138 (rule!1904 (_1!3645 (v!16369 lt!249568))))) (value!37301 (_1!3645 (v!16369 lt!249568)))))))

(assert (=> d!207267 (= (charsOf!767 (_1!3645 (v!16369 lt!249568))) lt!249722)))

(declare-fun b_lambda!23203 () Bool)

(assert (=> (not b_lambda!23203) (not d!207267)))

(declare-fun t!78809 () Bool)

(declare-fun tb!51527 () Bool)

(assert (=> (and b!589047 (= (toChars!1880 (transformation!1138 (rule!1904 token!491))) (toChars!1880 (transformation!1138 (rule!1904 (_1!3645 (v!16369 lt!249568)))))) t!78809) tb!51527))

(declare-fun b!589330 () Bool)

(declare-fun e!356281 () Bool)

(declare-fun tp!183785 () Bool)

(assert (=> b!589330 (= e!356281 (and (inv!7351 (c!109984 (dynLambda!3387 (toChars!1880 (transformation!1138 (rule!1904 (_1!3645 (v!16369 lt!249568))))) (value!37301 (_1!3645 (v!16369 lt!249568)))))) tp!183785))))

(declare-fun result!57770 () Bool)

(assert (=> tb!51527 (= result!57770 (and (inv!7352 (dynLambda!3387 (toChars!1880 (transformation!1138 (rule!1904 (_1!3645 (v!16369 lt!249568))))) (value!37301 (_1!3645 (v!16369 lt!249568))))) e!356281))))

(assert (= tb!51527 b!589330))

(declare-fun m!850111 () Bool)

(assert (=> b!589330 m!850111))

(declare-fun m!850113 () Bool)

(assert (=> tb!51527 m!850113))

(assert (=> d!207267 t!78809))

(declare-fun b_and!58063 () Bool)

(assert (= b_and!58059 (and (=> t!78809 result!57770) b_and!58063)))

(declare-fun tb!51529 () Bool)

(declare-fun t!78811 () Bool)

(assert (=> (and b!589040 (= (toChars!1880 (transformation!1138 (h!11210 rules!3103))) (toChars!1880 (transformation!1138 (rule!1904 (_1!3645 (v!16369 lt!249568)))))) t!78811) tb!51529))

(declare-fun result!57772 () Bool)

(assert (= result!57772 result!57770))

(assert (=> d!207267 t!78811))

(declare-fun b_and!58065 () Bool)

(assert (= b_and!58061 (and (=> t!78811 result!57772) b_and!58065)))

(declare-fun m!850115 () Bool)

(assert (=> d!207267 m!850115))

(declare-fun m!850117 () Bool)

(assert (=> d!207267 m!850117))

(assert (=> b!589043 d!207267))

(declare-fun d!207269 () Bool)

(assert (=> d!207269 (ruleValid!336 thiss!22590 (rule!1904 (_1!3645 (v!16369 lt!249568))))))

(declare-fun lt!249725 () Unit!10544)

(declare-fun choose!4242 (LexerInterface!1024 Rule!2076 List!5819) Unit!10544)

(assert (=> d!207269 (= lt!249725 (choose!4242 thiss!22590 (rule!1904 (_1!3645 (v!16369 lt!249568))) rules!3103))))

(assert (=> d!207269 (contains!1368 rules!3103 (rule!1904 (_1!3645 (v!16369 lt!249568))))))

(assert (=> d!207269 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!183 thiss!22590 (rule!1904 (_1!3645 (v!16369 lt!249568))) rules!3103) lt!249725)))

(declare-fun bs!70222 () Bool)

(assert (= bs!70222 d!207269))

(assert (=> bs!70222 m!849775))

(declare-fun m!850119 () Bool)

(assert (=> bs!70222 m!850119))

(declare-fun m!850121 () Bool)

(assert (=> bs!70222 m!850121))

(assert (=> b!589043 d!207269))

(declare-fun d!207271 () Bool)

(assert (=> d!207271 (= (size!4606 token!491) (size!4607 (originalCharacters!1177 token!491)))))

(declare-fun Unit!10554 () Unit!10544)

(assert (=> d!207271 (= (lemmaCharactersSize!197 token!491) Unit!10554)))

(declare-fun bs!70223 () Bool)

(assert (= bs!70223 d!207271))

(assert (=> bs!70223 m!850055))

(assert (=> b!589043 d!207271))

(declare-fun b!589331 () Bool)

(declare-fun e!356282 () List!5818)

(assert (=> b!589331 (= e!356282 (_2!3645 (v!16369 lt!249568)))))

(declare-fun b!589334 () Bool)

(declare-fun e!356283 () Bool)

(declare-fun lt!249726 () List!5818)

(assert (=> b!589334 (= e!356283 (or (not (= (_2!3645 (v!16369 lt!249568)) Nil!5808)) (= lt!249726 lt!249573)))))

(declare-fun d!207273 () Bool)

(assert (=> d!207273 e!356283))

(declare-fun res!254023 () Bool)

(assert (=> d!207273 (=> (not res!254023) (not e!356283))))

(assert (=> d!207273 (= res!254023 (= (content!1042 lt!249726) (set.union (content!1042 lt!249573) (content!1042 (_2!3645 (v!16369 lt!249568))))))))

(assert (=> d!207273 (= lt!249726 e!356282)))

(declare-fun c!110024 () Bool)

(assert (=> d!207273 (= c!110024 (is-Nil!5808 lt!249573))))

(assert (=> d!207273 (= (++!1626 lt!249573 (_2!3645 (v!16369 lt!249568))) lt!249726)))

(declare-fun b!589333 () Bool)

(declare-fun res!254024 () Bool)

(assert (=> b!589333 (=> (not res!254024) (not e!356283))))

(assert (=> b!589333 (= res!254024 (= (size!4607 lt!249726) (+ (size!4607 lt!249573) (size!4607 (_2!3645 (v!16369 lt!249568))))))))

(declare-fun b!589332 () Bool)

(assert (=> b!589332 (= e!356282 (Cons!5808 (h!11209 lt!249573) (++!1626 (t!78795 lt!249573) (_2!3645 (v!16369 lt!249568)))))))

(assert (= (and d!207273 c!110024) b!589331))

(assert (= (and d!207273 (not c!110024)) b!589332))

(assert (= (and d!207273 res!254023) b!589333))

(assert (= (and b!589333 res!254024) b!589334))

(declare-fun m!850123 () Bool)

(assert (=> d!207273 m!850123))

(declare-fun m!850125 () Bool)

(assert (=> d!207273 m!850125))

(declare-fun m!850127 () Bool)

(assert (=> d!207273 m!850127))

(declare-fun m!850129 () Bool)

(assert (=> b!589333 m!850129))

(assert (=> b!589333 m!849757))

(declare-fun m!850131 () Bool)

(assert (=> b!589333 m!850131))

(declare-fun m!850133 () Bool)

(assert (=> b!589332 m!850133))

(assert (=> b!589043 d!207273))

(declare-fun d!207275 () Bool)

(assert (=> d!207275 (= (isEmpty!4193 input!2705) (is-Nil!5808 input!2705))))

(assert (=> b!589042 d!207275))

(declare-fun d!207277 () Bool)

(assert (=> d!207277 (= (isDefined!1300 lt!249564) (not (isEmpty!4197 lt!249564)))))

(declare-fun bs!70224 () Bool)

(assert (= bs!70224 d!207277))

(declare-fun m!850135 () Bool)

(assert (=> bs!70224 m!850135))

(assert (=> b!589053 d!207277))

(declare-fun b!589335 () Bool)

(declare-fun res!254027 () Bool)

(declare-fun e!356285 () Bool)

(assert (=> b!589335 (=> (not res!254027) (not e!356285))))

(declare-fun lt!249729 () Option!1489)

(assert (=> b!589335 (= res!254027 (< (size!4607 (_2!3645 (get!2222 lt!249729))) (size!4607 lt!249572)))))

(declare-fun b!589336 () Bool)

(declare-fun e!356284 () Option!1489)

(declare-fun lt!249730 () Option!1489)

(declare-fun lt!249727 () Option!1489)

(assert (=> b!589336 (= e!356284 (ite (and (is-None!1488 lt!249730) (is-None!1488 lt!249727)) None!1488 (ite (is-None!1488 lt!249727) lt!249730 (ite (is-None!1488 lt!249730) lt!249727 (ite (>= (size!4606 (_1!3645 (v!16369 lt!249730))) (size!4606 (_1!3645 (v!16369 lt!249727)))) lt!249730 lt!249727)))))))

(declare-fun call!40268 () Option!1489)

(assert (=> b!589336 (= lt!249730 call!40268)))

(assert (=> b!589336 (= lt!249727 (maxPrefix!722 thiss!22590 (t!78796 rules!3103) lt!249572))))

(declare-fun b!589337 () Bool)

(declare-fun res!254029 () Bool)

(assert (=> b!589337 (=> (not res!254029) (not e!356285))))

(assert (=> b!589337 (= res!254029 (= (list!2427 (charsOf!767 (_1!3645 (get!2222 lt!249729)))) (originalCharacters!1177 (_1!3645 (get!2222 lt!249729)))))))

(declare-fun b!589338 () Bool)

(declare-fun res!254031 () Bool)

(assert (=> b!589338 (=> (not res!254031) (not e!356285))))

(assert (=> b!589338 (= res!254031 (= (value!37301 (_1!3645 (get!2222 lt!249729))) (apply!1391 (transformation!1138 (rule!1904 (_1!3645 (get!2222 lt!249729)))) (seqFromList!1314 (originalCharacters!1177 (_1!3645 (get!2222 lt!249729)))))))))

(declare-fun b!589339 () Bool)

(assert (=> b!589339 (= e!356284 call!40268)))

(declare-fun b!589340 () Bool)

(declare-fun e!356286 () Bool)

(assert (=> b!589340 (= e!356286 e!356285)))

(declare-fun res!254028 () Bool)

(assert (=> b!589340 (=> (not res!254028) (not e!356285))))

(assert (=> b!589340 (= res!254028 (isDefined!1300 lt!249729))))

(declare-fun d!207279 () Bool)

(assert (=> d!207279 e!356286))

(declare-fun res!254030 () Bool)

(assert (=> d!207279 (=> res!254030 e!356286)))

(assert (=> d!207279 (= res!254030 (isEmpty!4197 lt!249729))))

(assert (=> d!207279 (= lt!249729 e!356284)))

(declare-fun c!110025 () Bool)

(assert (=> d!207279 (= c!110025 (and (is-Cons!5809 rules!3103) (is-Nil!5809 (t!78796 rules!3103))))))

(declare-fun lt!249728 () Unit!10544)

(declare-fun lt!249731 () Unit!10544)

(assert (=> d!207279 (= lt!249728 lt!249731)))

(assert (=> d!207279 (isPrefix!766 lt!249572 lt!249572)))

(assert (=> d!207279 (= lt!249731 (lemmaIsPrefixRefl!502 lt!249572 lt!249572))))

(assert (=> d!207279 (rulesValidInductive!415 thiss!22590 rules!3103)))

(assert (=> d!207279 (= (maxPrefix!722 thiss!22590 rules!3103 lt!249572) lt!249729)))

(declare-fun b!589341 () Bool)

(declare-fun res!254025 () Bool)

(assert (=> b!589341 (=> (not res!254025) (not e!356285))))

(assert (=> b!589341 (= res!254025 (matchR!607 (regex!1138 (rule!1904 (_1!3645 (get!2222 lt!249729)))) (list!2427 (charsOf!767 (_1!3645 (get!2222 lt!249729))))))))

(declare-fun b!589342 () Bool)

(declare-fun res!254026 () Bool)

(assert (=> b!589342 (=> (not res!254026) (not e!356285))))

(assert (=> b!589342 (= res!254026 (= (++!1626 (list!2427 (charsOf!767 (_1!3645 (get!2222 lt!249729)))) (_2!3645 (get!2222 lt!249729))) lt!249572))))

(declare-fun b!589343 () Bool)

(assert (=> b!589343 (= e!356285 (contains!1368 rules!3103 (rule!1904 (_1!3645 (get!2222 lt!249729)))))))

(declare-fun bm!40263 () Bool)

(assert (=> bm!40263 (= call!40268 (maxPrefixOneRule!411 thiss!22590 (h!11210 rules!3103) lt!249572))))

(assert (= (and d!207279 c!110025) b!589339))

(assert (= (and d!207279 (not c!110025)) b!589336))

(assert (= (or b!589339 b!589336) bm!40263))

(assert (= (and d!207279 (not res!254030)) b!589340))

(assert (= (and b!589340 res!254028) b!589337))

(assert (= (and b!589337 res!254029) b!589335))

(assert (= (and b!589335 res!254027) b!589342))

(assert (= (and b!589342 res!254026) b!589338))

(assert (= (and b!589338 res!254031) b!589341))

(assert (= (and b!589341 res!254025) b!589343))

(declare-fun m!850137 () Bool)

(assert (=> b!589342 m!850137))

(declare-fun m!850139 () Bool)

(assert (=> b!589342 m!850139))

(assert (=> b!589342 m!850139))

(declare-fun m!850141 () Bool)

(assert (=> b!589342 m!850141))

(assert (=> b!589342 m!850141))

(declare-fun m!850143 () Bool)

(assert (=> b!589342 m!850143))

(assert (=> b!589335 m!850137))

(declare-fun m!850145 () Bool)

(assert (=> b!589335 m!850145))

(declare-fun m!850147 () Bool)

(assert (=> b!589335 m!850147))

(declare-fun m!850149 () Bool)

(assert (=> bm!40263 m!850149))

(declare-fun m!850151 () Bool)

(assert (=> d!207279 m!850151))

(declare-fun m!850153 () Bool)

(assert (=> d!207279 m!850153))

(declare-fun m!850155 () Bool)

(assert (=> d!207279 m!850155))

(assert (=> d!207279 m!849731))

(declare-fun m!850157 () Bool)

(assert (=> b!589340 m!850157))

(assert (=> b!589343 m!850137))

(declare-fun m!850159 () Bool)

(assert (=> b!589343 m!850159))

(assert (=> b!589341 m!850137))

(assert (=> b!589341 m!850139))

(assert (=> b!589341 m!850139))

(assert (=> b!589341 m!850141))

(assert (=> b!589341 m!850141))

(declare-fun m!850161 () Bool)

(assert (=> b!589341 m!850161))

(declare-fun m!850163 () Bool)

(assert (=> b!589336 m!850163))

(assert (=> b!589337 m!850137))

(assert (=> b!589337 m!850139))

(assert (=> b!589337 m!850139))

(assert (=> b!589337 m!850141))

(assert (=> b!589338 m!850137))

(declare-fun m!850165 () Bool)

(assert (=> b!589338 m!850165))

(assert (=> b!589338 m!850165))

(declare-fun m!850167 () Bool)

(assert (=> b!589338 m!850167))

(assert (=> b!589053 d!207279))

(declare-fun b!589344 () Bool)

(declare-fun e!356287 () List!5818)

(assert (=> b!589344 (= e!356287 suffix!1342)))

(declare-fun lt!249732 () List!5818)

(declare-fun b!589347 () Bool)

(declare-fun e!356288 () Bool)

(assert (=> b!589347 (= e!356288 (or (not (= suffix!1342 Nil!5808)) (= lt!249732 input!2705)))))

(declare-fun d!207281 () Bool)

(assert (=> d!207281 e!356288))

(declare-fun res!254032 () Bool)

(assert (=> d!207281 (=> (not res!254032) (not e!356288))))

(assert (=> d!207281 (= res!254032 (= (content!1042 lt!249732) (set.union (content!1042 input!2705) (content!1042 suffix!1342))))))

(assert (=> d!207281 (= lt!249732 e!356287)))

(declare-fun c!110026 () Bool)

(assert (=> d!207281 (= c!110026 (is-Nil!5808 input!2705))))

(assert (=> d!207281 (= (++!1626 input!2705 suffix!1342) lt!249732)))

(declare-fun b!589346 () Bool)

(declare-fun res!254033 () Bool)

(assert (=> b!589346 (=> (not res!254033) (not e!356288))))

(assert (=> b!589346 (= res!254033 (= (size!4607 lt!249732) (+ (size!4607 input!2705) (size!4607 suffix!1342))))))

(declare-fun b!589345 () Bool)

(assert (=> b!589345 (= e!356287 (Cons!5808 (h!11209 input!2705) (++!1626 (t!78795 input!2705) suffix!1342)))))

(assert (= (and d!207281 c!110026) b!589344))

(assert (= (and d!207281 (not c!110026)) b!589345))

(assert (= (and d!207281 res!254032) b!589346))

(assert (= (and b!589346 res!254033) b!589347))

(declare-fun m!850169 () Bool)

(assert (=> d!207281 m!850169))

(declare-fun m!850171 () Bool)

(assert (=> d!207281 m!850171))

(assert (=> d!207281 m!850043))

(declare-fun m!850173 () Bool)

(assert (=> b!589346 m!850173))

(assert (=> b!589346 m!849915))

(assert (=> b!589346 m!850047))

(declare-fun m!850175 () Bool)

(assert (=> b!589345 m!850175))

(assert (=> b!589053 d!207281))

(declare-fun b!589352 () Bool)

(declare-fun e!356291 () Bool)

(declare-fun tp!183788 () Bool)

(assert (=> b!589352 (= e!356291 (and tp_is_empty!3299 tp!183788))))

(assert (=> b!589044 (= tp!183739 e!356291)))

(assert (= (and b!589044 (is-Cons!5808 (t!78795 input!2705))) b!589352))

(declare-fun b!589364 () Bool)

(declare-fun e!356294 () Bool)

(declare-fun tp!183802 () Bool)

(declare-fun tp!183800 () Bool)

(assert (=> b!589364 (= e!356294 (and tp!183802 tp!183800))))

(declare-fun b!589366 () Bool)

(declare-fun tp!183799 () Bool)

(declare-fun tp!183803 () Bool)

(assert (=> b!589366 (= e!356294 (and tp!183799 tp!183803))))

(declare-fun b!589363 () Bool)

(assert (=> b!589363 (= e!356294 tp_is_empty!3299)))

(assert (=> b!589035 (= tp!183746 e!356294)))

(declare-fun b!589365 () Bool)

(declare-fun tp!183801 () Bool)

(assert (=> b!589365 (= e!356294 tp!183801)))

(assert (= (and b!589035 (is-ElementMatch!1472 (regex!1138 (h!11210 rules!3103)))) b!589363))

(assert (= (and b!589035 (is-Concat!2634 (regex!1138 (h!11210 rules!3103)))) b!589364))

(assert (= (and b!589035 (is-Star!1472 (regex!1138 (h!11210 rules!3103)))) b!589365))

(assert (= (and b!589035 (is-Union!1472 (regex!1138 (h!11210 rules!3103)))) b!589366))

(declare-fun b!589377 () Bool)

(declare-fun b_free!16509 () Bool)

(declare-fun b_next!16525 () Bool)

(assert (=> b!589377 (= b_free!16509 (not b_next!16525))))

(declare-fun tp!183812 () Bool)

(declare-fun b_and!58067 () Bool)

(assert (=> b!589377 (= tp!183812 b_and!58067)))

(declare-fun b_free!16511 () Bool)

(declare-fun b_next!16527 () Bool)

(assert (=> b!589377 (= b_free!16511 (not b_next!16527))))

(declare-fun t!78813 () Bool)

(declare-fun tb!51531 () Bool)

(assert (=> (and b!589377 (= (toChars!1880 (transformation!1138 (h!11210 (t!78796 rules!3103)))) (toChars!1880 (transformation!1138 (rule!1904 token!491)))) t!78813) tb!51531))

(declare-fun result!57780 () Bool)

(assert (= result!57780 result!57764))

(assert (=> d!207231 t!78813))

(assert (=> b!589285 t!78813))

(declare-fun tb!51533 () Bool)

(declare-fun t!78815 () Bool)

(assert (=> (and b!589377 (= (toChars!1880 (transformation!1138 (h!11210 (t!78796 rules!3103)))) (toChars!1880 (transformation!1138 (rule!1904 (_1!3645 (v!16369 lt!249568)))))) t!78815) tb!51533))

(declare-fun result!57782 () Bool)

(assert (= result!57782 result!57770))

(assert (=> d!207267 t!78815))

(declare-fun tp!183815 () Bool)

(declare-fun b_and!58069 () Bool)

(assert (=> b!589377 (= tp!183815 (and (=> t!78813 result!57780) (=> t!78815 result!57782) b_and!58069))))

(declare-fun e!356306 () Bool)

(assert (=> b!589377 (= e!356306 (and tp!183812 tp!183815))))

(declare-fun b!589376 () Bool)

(declare-fun e!356305 () Bool)

(declare-fun tp!183813 () Bool)

(assert (=> b!589376 (= e!356305 (and tp!183813 (inv!7344 (tag!1400 (h!11210 (t!78796 rules!3103)))) (inv!7347 (transformation!1138 (h!11210 (t!78796 rules!3103)))) e!356306))))

(declare-fun b!589375 () Bool)

(declare-fun e!356303 () Bool)

(declare-fun tp!183814 () Bool)

(assert (=> b!589375 (= e!356303 (and e!356305 tp!183814))))

(assert (=> b!589052 (= tp!183743 e!356303)))

(assert (= b!589376 b!589377))

(assert (= b!589375 b!589376))

(assert (= (and b!589052 (is-Cons!5809 (t!78796 rules!3103))) b!589375))

(declare-fun m!850177 () Bool)

(assert (=> b!589376 m!850177))

(declare-fun m!850179 () Bool)

(assert (=> b!589376 m!850179))

(declare-fun b!589379 () Bool)

(declare-fun e!356307 () Bool)

(declare-fun tp!183819 () Bool)

(declare-fun tp!183817 () Bool)

(assert (=> b!589379 (= e!356307 (and tp!183819 tp!183817))))

(declare-fun b!589381 () Bool)

(declare-fun tp!183816 () Bool)

(declare-fun tp!183820 () Bool)

(assert (=> b!589381 (= e!356307 (and tp!183816 tp!183820))))

(declare-fun b!589378 () Bool)

(assert (=> b!589378 (= e!356307 tp_is_empty!3299)))

(assert (=> b!589041 (= tp!183748 e!356307)))

(declare-fun b!589380 () Bool)

(declare-fun tp!183818 () Bool)

(assert (=> b!589380 (= e!356307 tp!183818)))

(assert (= (and b!589041 (is-ElementMatch!1472 (regex!1138 (rule!1904 token!491)))) b!589378))

(assert (= (and b!589041 (is-Concat!2634 (regex!1138 (rule!1904 token!491)))) b!589379))

(assert (= (and b!589041 (is-Star!1472 (regex!1138 (rule!1904 token!491)))) b!589380))

(assert (= (and b!589041 (is-Union!1472 (regex!1138 (rule!1904 token!491)))) b!589381))

(declare-fun b!589382 () Bool)

(declare-fun e!356308 () Bool)

(declare-fun tp!183821 () Bool)

(assert (=> b!589382 (= e!356308 (and tp_is_empty!3299 tp!183821))))

(assert (=> b!589048 (= tp!183747 e!356308)))

(assert (= (and b!589048 (is-Cons!5808 (t!78795 suffix!1342))) b!589382))

(declare-fun b!589383 () Bool)

(declare-fun e!356309 () Bool)

(declare-fun tp!183822 () Bool)

(assert (=> b!589383 (= e!356309 (and tp_is_empty!3299 tp!183822))))

(assert (=> b!589037 (= tp!183745 e!356309)))

(assert (= (and b!589037 (is-Cons!5808 (originalCharacters!1177 token!491))) b!589383))

(declare-fun b_lambda!23205 () Bool)

(assert (= b_lambda!23199 (or (and b!589047 b_free!16495) (and b!589040 b_free!16499 (= (toChars!1880 (transformation!1138 (h!11210 rules!3103))) (toChars!1880 (transformation!1138 (rule!1904 token!491))))) (and b!589377 b_free!16511 (= (toChars!1880 (transformation!1138 (h!11210 (t!78796 rules!3103)))) (toChars!1880 (transformation!1138 (rule!1904 token!491))))) b_lambda!23205)))

(declare-fun b_lambda!23207 () Bool)

(assert (= b_lambda!23201 (or (and b!589047 b_free!16495) (and b!589040 b_free!16499 (= (toChars!1880 (transformation!1138 (h!11210 rules!3103))) (toChars!1880 (transformation!1138 (rule!1904 token!491))))) (and b!589377 b_free!16511 (= (toChars!1880 (transformation!1138 (h!11210 (t!78796 rules!3103)))) (toChars!1880 (transformation!1138 (rule!1904 token!491))))) b_lambda!23207)))

(push 1)

(assert (not b!589186))

(assert (not b_next!16527))

(assert (not b!589317))

(assert (not d!207231))

(assert tp_is_empty!3299)

(assert (not d!207241))

(assert (not b!589305))

(assert (not b!589185))

(assert b_and!58039)

(assert (not b!589293))

(assert (not b!589319))

(assert (not b!589352))

(assert (not b!589381))

(assert (not b_next!16509))

(assert (not b!589261))

(assert (not tb!51523))

(assert (not d!207259))

(assert (not b!589328))

(assert (not d!207273))

(assert (not b!589179))

(assert (not b!589366))

(assert (not d!207265))

(assert (not b!589116))

(assert (not d!207233))

(assert (not b_lambda!23205))

(assert (not b!589383))

(assert (not bm!40263))

(assert (not d!207281))

(assert (not d!207245))

(assert (not b!589345))

(assert (not b!589336))

(assert (not b!589190))

(assert (not b!589180))

(assert (not b_next!16511))

(assert (not b!589279))

(assert (not b!589321))

(assert (not d!207251))

(assert (not b!589285))

(assert b_and!58067)

(assert (not b!589376))

(assert (not b!589268))

(assert (not b!589320))

(assert (not b!589182))

(assert (not b!589341))

(assert (not b!589335))

(assert (not b!589298))

(assert (not d!207229))

(assert (not b!589287))

(assert (not b!589375))

(assert (not b!589380))

(assert b_and!58065)

(assert (not d!207199))

(assert (not b!589204))

(assert (not b_next!16515))

(assert b_and!58063)

(assert (not b!589365))

(assert (not d!207247))

(assert (not b!589346))

(assert (not d!207239))

(assert (not b!589333))

(assert (not d!207171))

(assert (not d!207235))

(assert (not b_lambda!23203))

(assert (not b!589332))

(assert (not b!589181))

(assert (not tb!51527))

(assert (not b_next!16525))

(assert (not b!589323))

(assert (not d!207263))

(assert (not d!207253))

(assert (not d!207277))

(assert (not b!589203))

(assert b_and!58035)

(assert (not b!589278))

(assert (not b!589286))

(assert (not b!589184))

(assert b_and!58069)

(assert (not b!589343))

(assert (not b!589342))

(assert (not d!207205))

(assert (not b!589330))

(assert (not b!589316))

(assert (not d!207267))

(assert (not d!207175))

(assert (not b!589364))

(assert (not b!589337))

(assert (not b!589260))

(assert (not d!207257))

(assert (not b!589340))

(assert (not d!207269))

(assert (not b_next!16513))

(assert (not b!589382))

(assert (not b!589187))

(assert (not b!589379))

(assert (not b_lambda!23207))

(assert (not d!207279))

(assert (not bm!40259))

(assert (not b!589201))

(assert (not d!207271))

(assert (not b!589315))

(assert (not b!589338))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58039)

(assert (not b_next!16509))

(assert (not b_next!16511))

(assert b_and!58067)

(assert b_and!58065)

(assert (not b_next!16527))

(assert (not b_next!16525))

(assert b_and!58035)

(assert b_and!58069)

(assert (not b_next!16513))

(assert (not b_next!16515))

(assert b_and!58063)

(check-sat)

(pop 1)

