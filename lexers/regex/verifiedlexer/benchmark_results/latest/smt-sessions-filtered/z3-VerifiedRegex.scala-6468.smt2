; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!339110 () Bool)

(assert start!339110)

(declare-fun b!3634817 () Bool)

(declare-fun b_free!95137 () Bool)

(declare-fun b_next!95841 () Bool)

(assert (=> b!3634817 (= b_free!95137 (not b_next!95841))))

(declare-fun tp!1109421 () Bool)

(declare-fun b_and!267243 () Bool)

(assert (=> b!3634817 (= tp!1109421 b_and!267243)))

(declare-fun b_free!95139 () Bool)

(declare-fun b_next!95843 () Bool)

(assert (=> b!3634817 (= b_free!95139 (not b_next!95843))))

(declare-fun tp!1109411 () Bool)

(declare-fun b_and!267245 () Bool)

(assert (=> b!3634817 (= tp!1109411 b_and!267245)))

(declare-fun b!3634843 () Bool)

(declare-fun b_free!95141 () Bool)

(declare-fun b_next!95845 () Bool)

(assert (=> b!3634843 (= b_free!95141 (not b_next!95845))))

(declare-fun tp!1109413 () Bool)

(declare-fun b_and!267247 () Bool)

(assert (=> b!3634843 (= tp!1109413 b_and!267247)))

(declare-fun b_free!95143 () Bool)

(declare-fun b_next!95847 () Bool)

(assert (=> b!3634843 (= b_free!95143 (not b_next!95847))))

(declare-fun tp!1109412 () Bool)

(declare-fun b_and!267249 () Bool)

(assert (=> b!3634843 (= tp!1109412 b_and!267249)))

(declare-fun b!3634823 () Bool)

(declare-fun b_free!95145 () Bool)

(declare-fun b_next!95849 () Bool)

(assert (=> b!3634823 (= b_free!95145 (not b_next!95849))))

(declare-fun tp!1109416 () Bool)

(declare-fun b_and!267251 () Bool)

(assert (=> b!3634823 (= tp!1109416 b_and!267251)))

(declare-fun b_free!95147 () Bool)

(declare-fun b_next!95851 () Bool)

(assert (=> b!3634823 (= b_free!95147 (not b_next!95851))))

(declare-fun tp!1109415 () Bool)

(declare-fun b_and!267253 () Bool)

(assert (=> b!3634823 (= tp!1109415 b_and!267253)))

(declare-fun b!3634816 () Bool)

(declare-fun b_free!95149 () Bool)

(declare-fun b_next!95853 () Bool)

(assert (=> b!3634816 (= b_free!95149 (not b_next!95853))))

(declare-fun tp!1109422 () Bool)

(declare-fun b_and!267255 () Bool)

(assert (=> b!3634816 (= tp!1109422 b_and!267255)))

(declare-fun b_free!95151 () Bool)

(declare-fun b_next!95855 () Bool)

(assert (=> b!3634816 (= b_free!95151 (not b_next!95855))))

(declare-fun tp!1109414 () Bool)

(declare-fun b_and!267257 () Bool)

(assert (=> b!3634816 (= tp!1109414 b_and!267257)))

(declare-fun e!2249985 () Bool)

(assert (=> b!3634816 (= e!2249985 (and tp!1109422 tp!1109414))))

(declare-fun e!2249974 () Bool)

(assert (=> b!3634817 (= e!2249974 (and tp!1109421 tp!1109411))))

(declare-fun b!3634818 () Bool)

(declare-fun res!1472407 () Bool)

(declare-fun e!2249981 () Bool)

(assert (=> b!3634818 (=> (not res!1472407) (not e!2249981))))

(declare-datatypes ((List!38423 0))(
  ( (Nil!38299) (Cons!38299 (h!43719 (_ BitVec 16)) (t!295726 List!38423)) )
))
(declare-datatypes ((TokenValue!5946 0))(
  ( (FloatLiteralValue!11892 (text!42067 List!38423)) (TokenValueExt!5945 (__x!24109 Int)) (Broken!29730 (value!183340 List!38423)) (Object!6069) (End!5946) (Def!5946) (Underscore!5946) (Match!5946) (Else!5946) (Error!5946) (Case!5946) (If!5946) (Extends!5946) (Abstract!5946) (Class!5946) (Val!5946) (DelimiterValue!11892 (del!6006 List!38423)) (KeywordValue!5952 (value!183341 List!38423)) (CommentValue!11892 (value!183342 List!38423)) (WhitespaceValue!11892 (value!183343 List!38423)) (IndentationValue!5946 (value!183344 List!38423)) (String!43063) (Int32!5946) (Broken!29731 (value!183345 List!38423)) (Boolean!5947) (Unit!55123) (OperatorValue!5949 (op!6006 List!38423)) (IdentifierValue!11892 (value!183346 List!38423)) (IdentifierValue!11893 (value!183347 List!38423)) (WhitespaceValue!11893 (value!183348 List!38423)) (True!11892) (False!11892) (Broken!29732 (value!183349 List!38423)) (Broken!29733 (value!183350 List!38423)) (True!11893) (RightBrace!5946) (RightBracket!5946) (Colon!5946) (Null!5946) (Comma!5946) (LeftBracket!5946) (False!11893) (LeftBrace!5946) (ImaginaryLiteralValue!5946 (text!42068 List!38423)) (StringLiteralValue!17838 (value!183351 List!38423)) (EOFValue!5946 (value!183352 List!38423)) (IdentValue!5946 (value!183353 List!38423)) (DelimiterValue!11893 (value!183354 List!38423)) (DedentValue!5946 (value!183355 List!38423)) (NewLineValue!5946 (value!183356 List!38423)) (IntegerValue!17838 (value!183357 (_ BitVec 32)) (text!42069 List!38423)) (IntegerValue!17839 (value!183358 Int) (text!42070 List!38423)) (Times!5946) (Or!5946) (Equal!5946) (Minus!5946) (Broken!29734 (value!183359 List!38423)) (And!5946) (Div!5946) (LessEqual!5946) (Mod!5946) (Concat!16421) (Not!5946) (Plus!5946) (SpaceValue!5946 (value!183360 List!38423)) (IntegerValue!17840 (value!183361 Int) (text!42071 List!38423)) (StringLiteralValue!17839 (text!42072 List!38423)) (FloatLiteralValue!11893 (text!42073 List!38423)) (BytesLiteralValue!5946 (value!183362 List!38423)) (CommentValue!11893 (value!183363 List!38423)) (StringLiteralValue!17840 (value!183364 List!38423)) (ErrorTokenValue!5946 (msg!6007 List!38423)) )
))
(declare-datatypes ((C!21136 0))(
  ( (C!21137 (val!12616 Int)) )
))
(declare-datatypes ((List!38424 0))(
  ( (Nil!38300) (Cons!38300 (h!43720 C!21136) (t!295727 List!38424)) )
))
(declare-datatypes ((Regex!10475 0))(
  ( (ElementMatch!10475 (c!628682 C!21136)) (Concat!16422 (regOne!21462 Regex!10475) (regTwo!21462 Regex!10475)) (EmptyExpr!10475) (Star!10475 (reg!10804 Regex!10475)) (EmptyLang!10475) (Union!10475 (regOne!21463 Regex!10475) (regTwo!21463 Regex!10475)) )
))
(declare-datatypes ((IArray!23383 0))(
  ( (IArray!23384 (innerList!11749 List!38424)) )
))
(declare-datatypes ((String!43064 0))(
  ( (String!43065 (value!183365 String)) )
))
(declare-datatypes ((Conc!11689 0))(
  ( (Node!11689 (left!29901 Conc!11689) (right!30231 Conc!11689) (csize!23608 Int) (cheight!11900 Int)) (Leaf!18158 (xs!14891 IArray!23383) (csize!23609 Int)) (Empty!11689) )
))
(declare-datatypes ((BalanceConc!22992 0))(
  ( (BalanceConc!22993 (c!628683 Conc!11689)) )
))
(declare-datatypes ((TokenValueInjection!11320 0))(
  ( (TokenValueInjection!11321 (toValue!8008 Int) (toChars!7867 Int)) )
))
(declare-datatypes ((Rule!11232 0))(
  ( (Rule!11233 (regex!5716 Regex!10475) (tag!6454 String!43064) (isSeparator!5716 Bool) (transformation!5716 TokenValueInjection!11320)) )
))
(declare-datatypes ((Token!10798 0))(
  ( (Token!10799 (value!183366 TokenValue!5946) (rule!8488 Rule!11232) (size!29225 Int) (originalCharacters!6430 List!38424)) )
))
(declare-datatypes ((tuple2!38164 0))(
  ( (tuple2!38165 (_1!22216 Token!10798) (_2!22216 List!38424)) )
))
(declare-fun lt!1257546 () tuple2!38164)

(declare-fun isEmpty!22664 (List!38424) Bool)

(assert (=> b!3634818 (= res!1472407 (isEmpty!22664 (_2!22216 lt!1257546)))))

(declare-fun b!3634819 () Bool)

(declare-fun res!1472409 () Bool)

(declare-fun e!2249982 () Bool)

(assert (=> b!3634819 (=> res!1472409 e!2249982)))

(declare-fun anOtherTypeRule!33 () Rule!11232)

(declare-fun lt!1257547 () C!21136)

(declare-fun contains!7497 (List!38424 C!21136) Bool)

(declare-fun usedCharacters!928 (Regex!10475) List!38424)

(assert (=> b!3634819 (= res!1472409 (not (contains!7497 (usedCharacters!928 (regex!5716 anOtherTypeRule!33)) lt!1257547)))))

(declare-fun b!3634820 () Bool)

(declare-fun res!1472400 () Bool)

(assert (=> b!3634820 (=> (not res!1472400) (not e!2249981))))

(declare-fun token!511 () Token!10798)

(declare-fun rule!403 () Rule!11232)

(assert (=> b!3634820 (= res!1472400 (= (rule!8488 token!511) rule!403))))

(declare-fun b!3634821 () Bool)

(declare-fun e!2249966 () Bool)

(declare-fun e!2249965 () Bool)

(assert (=> b!3634821 (= e!2249966 e!2249965)))

(declare-fun res!1472394 () Bool)

(assert (=> b!3634821 (=> res!1472394 e!2249965)))

(declare-fun lt!1257557 () tuple2!38164)

(declare-fun lt!1257558 () List!38424)

(declare-datatypes ((Option!8060 0))(
  ( (None!8059) (Some!8059 (v!37867 tuple2!38164)) )
))
(declare-fun lt!1257560 () Option!8060)

(declare-fun lt!1257563 () BalanceConc!22992)

(declare-fun apply!9218 (TokenValueInjection!11320 BalanceConc!22992) TokenValue!5946)

(declare-fun size!29226 (BalanceConc!22992) Int)

(assert (=> b!3634821 (= res!1472394 (not (= lt!1257560 (Some!8059 (tuple2!38165 (Token!10799 (apply!9218 (transformation!5716 (rule!8488 (_1!22216 lt!1257557))) lt!1257563) (rule!8488 (_1!22216 lt!1257557)) (size!29226 lt!1257563) lt!1257558) (_2!22216 lt!1257557))))))))

(declare-datatypes ((Unit!55124 0))(
  ( (Unit!55125) )
))
(declare-fun lt!1257551 () Unit!55124)

(declare-fun lemmaCharactersSize!761 (Token!10798) Unit!55124)

(assert (=> b!3634821 (= lt!1257551 (lemmaCharactersSize!761 (_1!22216 lt!1257557)))))

(declare-fun lt!1257544 () Unit!55124)

(declare-fun lemmaEqSameImage!899 (TokenValueInjection!11320 BalanceConc!22992 BalanceConc!22992) Unit!55124)

(declare-fun seqFromList!4265 (List!38424) BalanceConc!22992)

(assert (=> b!3634821 (= lt!1257544 (lemmaEqSameImage!899 (transformation!5716 (rule!8488 (_1!22216 lt!1257557))) lt!1257563 (seqFromList!4265 (originalCharacters!6430 (_1!22216 lt!1257557)))))))

(declare-fun lt!1257564 () Unit!55124)

(declare-fun lemmaSemiInverse!1465 (TokenValueInjection!11320 BalanceConc!22992) Unit!55124)

(assert (=> b!3634821 (= lt!1257564 (lemmaSemiInverse!1465 (transformation!5716 (rule!8488 (_1!22216 lt!1257557))) lt!1257563))))

(declare-fun b!3634822 () Bool)

(assert (=> b!3634822 (= e!2249982 e!2249966)))

(declare-fun res!1472392 () Bool)

(assert (=> b!3634822 (=> res!1472392 e!2249966)))

(declare-fun lt!1257562 () List!38424)

(declare-fun isPrefix!3079 (List!38424 List!38424) Bool)

(assert (=> b!3634822 (= res!1472392 (not (isPrefix!3079 lt!1257558 lt!1257562)))))

(declare-fun ++!9532 (List!38424 List!38424) List!38424)

(assert (=> b!3634822 (isPrefix!3079 lt!1257558 (++!9532 lt!1257558 (_2!22216 lt!1257557)))))

(declare-fun lt!1257554 () Unit!55124)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1998 (List!38424 List!38424) Unit!55124)

(assert (=> b!3634822 (= lt!1257554 (lemmaConcatTwoListThenFirstIsPrefix!1998 lt!1257558 (_2!22216 lt!1257557)))))

(declare-fun list!14166 (BalanceConc!22992) List!38424)

(assert (=> b!3634822 (= lt!1257558 (list!14166 lt!1257563))))

(declare-fun charsOf!3730 (Token!10798) BalanceConc!22992)

(assert (=> b!3634822 (= lt!1257563 (charsOf!3730 (_1!22216 lt!1257557)))))

(declare-fun e!2249983 () Bool)

(assert (=> b!3634822 e!2249983))

(declare-fun res!1472390 () Bool)

(assert (=> b!3634822 (=> (not res!1472390) (not e!2249983))))

(declare-datatypes ((Option!8061 0))(
  ( (None!8060) (Some!8060 (v!37868 Rule!11232)) )
))
(declare-fun lt!1257548 () Option!8061)

(declare-fun isDefined!6292 (Option!8061) Bool)

(assert (=> b!3634822 (= res!1472390 (isDefined!6292 lt!1257548))))

(declare-datatypes ((List!38425 0))(
  ( (Nil!38301) (Cons!38301 (h!43721 Rule!11232) (t!295728 List!38425)) )
))
(declare-fun rules!3307 () List!38425)

(declare-datatypes ((LexerInterface!5305 0))(
  ( (LexerInterfaceExt!5302 (__x!24110 Int)) (Lexer!5303) )
))
(declare-fun thiss!23823 () LexerInterface!5305)

(declare-fun getRuleFromTag!1320 (LexerInterface!5305 List!38425 String!43064) Option!8061)

(assert (=> b!3634822 (= lt!1257548 (getRuleFromTag!1320 thiss!23823 rules!3307 (tag!6454 (rule!8488 (_1!22216 lt!1257557)))))))

(declare-fun lt!1257556 () Unit!55124)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1320 (LexerInterface!5305 List!38425 List!38424 Token!10798) Unit!55124)

(assert (=> b!3634822 (= lt!1257556 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1320 thiss!23823 rules!3307 lt!1257562 (_1!22216 lt!1257557)))))

(declare-fun get!12528 (Option!8060) tuple2!38164)

(assert (=> b!3634822 (= lt!1257557 (get!12528 lt!1257560))))

(declare-fun suffix!1395 () List!38424)

(declare-fun lt!1257545 () Unit!55124)

(declare-fun lt!1257553 () List!38424)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!983 (LexerInterface!5305 List!38425 List!38424 List!38424) Unit!55124)

(assert (=> b!3634822 (= lt!1257545 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!983 thiss!23823 rules!3307 lt!1257553 suffix!1395))))

(declare-fun maxPrefix!2839 (LexerInterface!5305 List!38425 List!38424) Option!8060)

(assert (=> b!3634822 (= lt!1257560 (maxPrefix!2839 thiss!23823 rules!3307 lt!1257562))))

(assert (=> b!3634822 (isPrefix!3079 lt!1257553 lt!1257562)))

(declare-fun lt!1257550 () Unit!55124)

(assert (=> b!3634822 (= lt!1257550 (lemmaConcatTwoListThenFirstIsPrefix!1998 lt!1257553 suffix!1395))))

(assert (=> b!3634822 (= lt!1257562 (++!9532 lt!1257553 suffix!1395))))

(declare-fun e!2249972 () Bool)

(assert (=> b!3634823 (= e!2249972 (and tp!1109416 tp!1109415))))

(declare-fun b!3634824 () Bool)

(declare-fun res!1472402 () Bool)

(declare-fun e!2249973 () Bool)

(assert (=> b!3634824 (=> (not res!1472402) (not e!2249973))))

(declare-fun contains!7498 (List!38425 Rule!11232) Bool)

(assert (=> b!3634824 (= res!1472402 (contains!7498 rules!3307 rule!403))))

(declare-fun b!3634825 () Bool)

(declare-fun res!1472399 () Bool)

(assert (=> b!3634825 (=> (not res!1472399) (not e!2249973))))

(declare-fun rulesInvariant!4702 (LexerInterface!5305 List!38425) Bool)

(assert (=> b!3634825 (= res!1472399 (rulesInvariant!4702 thiss!23823 rules!3307))))

(declare-fun b!3634826 () Bool)

(declare-fun e!2249978 () Bool)

(declare-fun tp!1109420 () Bool)

(declare-fun inv!51723 (String!43064) Bool)

(declare-fun inv!51726 (TokenValueInjection!11320) Bool)

(assert (=> b!3634826 (= e!2249978 (and tp!1109420 (inv!51723 (tag!6454 (rule!8488 token!511))) (inv!51726 (transformation!5716 (rule!8488 token!511))) e!2249972))))

(declare-fun b!3634827 () Bool)

(declare-fun e!2249975 () Bool)

(assert (=> b!3634827 (= e!2249973 e!2249975)))

(declare-fun res!1472404 () Bool)

(assert (=> b!3634827 (=> (not res!1472404) (not e!2249975))))

(declare-fun lt!1257559 () Option!8060)

(declare-fun isDefined!6293 (Option!8060) Bool)

(assert (=> b!3634827 (= res!1472404 (isDefined!6293 lt!1257559))))

(assert (=> b!3634827 (= lt!1257559 (maxPrefix!2839 thiss!23823 rules!3307 lt!1257553))))

(assert (=> b!3634827 (= lt!1257553 (list!14166 (charsOf!3730 token!511)))))

(declare-fun b!3634828 () Bool)

(declare-fun res!1472398 () Bool)

(declare-fun e!2249977 () Bool)

(assert (=> b!3634828 (=> res!1472398 e!2249977)))

(assert (=> b!3634828 (= res!1472398 (isEmpty!22664 suffix!1395))))

(declare-fun b!3634829 () Bool)

(declare-fun res!1472393 () Bool)

(assert (=> b!3634829 (=> (not res!1472393) (not e!2249973))))

(declare-fun isEmpty!22665 (List!38425) Bool)

(assert (=> b!3634829 (= res!1472393 (not (isEmpty!22665 rules!3307)))))

(declare-fun b!3634830 () Bool)

(declare-fun tp!1109410 () Bool)

(declare-fun e!2249976 () Bool)

(assert (=> b!3634830 (= e!2249976 (and tp!1109410 (inv!51723 (tag!6454 anOtherTypeRule!33)) (inv!51726 (transformation!5716 anOtherTypeRule!33)) e!2249974))))

(declare-fun b!3634831 () Bool)

(declare-fun res!1472391 () Bool)

(assert (=> b!3634831 (=> (not res!1472391) (not e!2249973))))

(assert (=> b!3634831 (= res!1472391 (contains!7498 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3634832 () Bool)

(declare-fun e!2249964 () Bool)

(assert (=> b!3634832 (= e!2249983 e!2249964)))

(declare-fun res!1472401 () Bool)

(assert (=> b!3634832 (=> (not res!1472401) (not e!2249964))))

(declare-fun lt!1257552 () Rule!11232)

(declare-fun matchR!5044 (Regex!10475 List!38424) Bool)

(assert (=> b!3634832 (= res!1472401 (matchR!5044 (regex!5716 lt!1257552) (list!14166 (charsOf!3730 (_1!22216 lt!1257557)))))))

(declare-fun get!12529 (Option!8061) Rule!11232)

(assert (=> b!3634832 (= lt!1257552 (get!12529 lt!1257548))))

(declare-fun b!3634833 () Bool)

(declare-fun e!2249986 () Bool)

(declare-fun e!2249984 () Bool)

(declare-fun tp!1109419 () Bool)

(assert (=> b!3634833 (= e!2249986 (and e!2249984 tp!1109419))))

(declare-fun b!3634834 () Bool)

(declare-fun res!1472406 () Bool)

(assert (=> b!3634834 (=> (not res!1472406) (not e!2249973))))

(assert (=> b!3634834 (= res!1472406 (not (= (isSeparator!5716 anOtherTypeRule!33) (isSeparator!5716 rule!403))))))

(declare-fun b!3634835 () Bool)

(declare-fun e!2249968 () Bool)

(declare-fun tp_is_empty!18033 () Bool)

(declare-fun tp!1109423 () Bool)

(assert (=> b!3634835 (= e!2249968 (and tp_is_empty!18033 tp!1109423))))

(declare-fun b!3634836 () Bool)

(declare-fun res!1472396 () Bool)

(assert (=> b!3634836 (=> res!1472396 e!2249966)))

(assert (=> b!3634836 (= res!1472396 (not (matchR!5044 (regex!5716 (rule!8488 (_1!22216 lt!1257557))) lt!1257558)))))

(declare-fun b!3634837 () Bool)

(assert (=> b!3634837 (= e!2249975 e!2249981)))

(declare-fun res!1472408 () Bool)

(assert (=> b!3634837 (=> (not res!1472408) (not e!2249981))))

(assert (=> b!3634837 (= res!1472408 (= (_1!22216 lt!1257546) token!511))))

(assert (=> b!3634837 (= lt!1257546 (get!12528 lt!1257559))))

(declare-fun b!3634838 () Bool)

(assert (=> b!3634838 (= e!2249981 (not e!2249977))))

(declare-fun res!1472403 () Bool)

(assert (=> b!3634838 (=> res!1472403 e!2249977)))

(assert (=> b!3634838 (= res!1472403 (not (matchR!5044 (regex!5716 rule!403) lt!1257553)))))

(declare-fun ruleValid!1980 (LexerInterface!5305 Rule!11232) Bool)

(assert (=> b!3634838 (ruleValid!1980 thiss!23823 rule!403)))

(declare-fun lt!1257561 () Unit!55124)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1134 (LexerInterface!5305 Rule!11232 List!38425) Unit!55124)

(assert (=> b!3634838 (= lt!1257561 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1134 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3634839 () Bool)

(declare-fun res!1472405 () Bool)

(assert (=> b!3634839 (=> res!1472405 e!2249982)))

(declare-fun sepAndNonSepRulesDisjointChars!1884 (List!38425 List!38425) Bool)

(assert (=> b!3634839 (= res!1472405 (not (sepAndNonSepRulesDisjointChars!1884 rules!3307 rules!3307)))))

(declare-fun b!3634840 () Bool)

(declare-fun tp!1109417 () Bool)

(declare-fun e!2249963 () Bool)

(assert (=> b!3634840 (= e!2249963 (and tp!1109417 (inv!51723 (tag!6454 rule!403)) (inv!51726 (transformation!5716 rule!403)) e!2249985))))

(declare-fun tp!1109424 () Bool)

(declare-fun b!3634841 () Bool)

(declare-fun e!2249971 () Bool)

(declare-fun inv!21 (TokenValue!5946) Bool)

(assert (=> b!3634841 (= e!2249971 (and (inv!21 (value!183366 token!511)) e!2249978 tp!1109424))))

(declare-fun b!3634842 () Bool)

(assert (=> b!3634842 (= e!2249964 (= (rule!8488 (_1!22216 lt!1257557)) lt!1257552))))

(declare-fun e!2249969 () Bool)

(assert (=> b!3634843 (= e!2249969 (and tp!1109413 tp!1109412))))

(declare-fun b!3634844 () Bool)

(assert (=> b!3634844 (= e!2249977 e!2249982)))

(declare-fun res!1472395 () Bool)

(assert (=> b!3634844 (=> res!1472395 e!2249982)))

(assert (=> b!3634844 (= res!1472395 (contains!7497 (usedCharacters!928 (regex!5716 rule!403)) lt!1257547))))

(declare-fun head!7704 (List!38424) C!21136)

(assert (=> b!3634844 (= lt!1257547 (head!7704 suffix!1395))))

(declare-fun res!1472397 () Bool)

(assert (=> start!339110 (=> (not res!1472397) (not e!2249973))))

(get-info :version)

(assert (=> start!339110 (= res!1472397 ((_ is Lexer!5303) thiss!23823))))

(assert (=> start!339110 e!2249973))

(assert (=> start!339110 e!2249986))

(assert (=> start!339110 e!2249968))

(assert (=> start!339110 true))

(declare-fun inv!51727 (Token!10798) Bool)

(assert (=> start!339110 (and (inv!51727 token!511) e!2249971)))

(assert (=> start!339110 e!2249963))

(assert (=> start!339110 e!2249976))

(declare-fun b!3634845 () Bool)

(assert (=> b!3634845 (= e!2249965 true)))

(declare-fun lt!1257549 () List!38424)

(declare-fun getSuffix!1632 (List!38424 List!38424) List!38424)

(assert (=> b!3634845 (= lt!1257549 (getSuffix!1632 lt!1257562 lt!1257558))))

(declare-fun maxPrefixOneRule!1977 (LexerInterface!5305 Rule!11232 List!38424) Option!8060)

(declare-fun size!29227 (List!38424) Int)

(assert (=> b!3634845 (= (maxPrefixOneRule!1977 thiss!23823 (rule!8488 (_1!22216 lt!1257557)) lt!1257562) (Some!8059 (tuple2!38165 (Token!10799 (apply!9218 (transformation!5716 (rule!8488 (_1!22216 lt!1257557))) (seqFromList!4265 lt!1257558)) (rule!8488 (_1!22216 lt!1257557)) (size!29227 lt!1257558) lt!1257558) (_2!22216 lt!1257557))))))

(declare-fun lt!1257555 () Unit!55124)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1033 (LexerInterface!5305 List!38425 List!38424 List!38424 List!38424 Rule!11232) Unit!55124)

(assert (=> b!3634845 (= lt!1257555 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1033 thiss!23823 rules!3307 lt!1257558 lt!1257562 (_2!22216 lt!1257557) (rule!8488 (_1!22216 lt!1257557))))))

(declare-fun b!3634846 () Bool)

(declare-fun tp!1109418 () Bool)

(assert (=> b!3634846 (= e!2249984 (and tp!1109418 (inv!51723 (tag!6454 (h!43721 rules!3307))) (inv!51726 (transformation!5716 (h!43721 rules!3307))) e!2249969))))

(assert (= (and start!339110 res!1472397) b!3634829))

(assert (= (and b!3634829 res!1472393) b!3634825))

(assert (= (and b!3634825 res!1472399) b!3634824))

(assert (= (and b!3634824 res!1472402) b!3634831))

(assert (= (and b!3634831 res!1472391) b!3634834))

(assert (= (and b!3634834 res!1472406) b!3634827))

(assert (= (and b!3634827 res!1472404) b!3634837))

(assert (= (and b!3634837 res!1472408) b!3634818))

(assert (= (and b!3634818 res!1472407) b!3634820))

(assert (= (and b!3634820 res!1472400) b!3634838))

(assert (= (and b!3634838 (not res!1472403)) b!3634828))

(assert (= (and b!3634828 (not res!1472398)) b!3634844))

(assert (= (and b!3634844 (not res!1472395)) b!3634819))

(assert (= (and b!3634819 (not res!1472409)) b!3634839))

(assert (= (and b!3634839 (not res!1472405)) b!3634822))

(assert (= (and b!3634822 res!1472390) b!3634832))

(assert (= (and b!3634832 res!1472401) b!3634842))

(assert (= (and b!3634822 (not res!1472392)) b!3634836))

(assert (= (and b!3634836 (not res!1472396)) b!3634821))

(assert (= (and b!3634821 (not res!1472394)) b!3634845))

(assert (= b!3634846 b!3634843))

(assert (= b!3634833 b!3634846))

(assert (= (and start!339110 ((_ is Cons!38301) rules!3307)) b!3634833))

(assert (= (and start!339110 ((_ is Cons!38300) suffix!1395)) b!3634835))

(assert (= b!3634826 b!3634823))

(assert (= b!3634841 b!3634826))

(assert (= start!339110 b!3634841))

(assert (= b!3634840 b!3634816))

(assert (= start!339110 b!3634840))

(assert (= b!3634830 b!3634817))

(assert (= start!339110 b!3634830))

(declare-fun m!4136859 () Bool)

(assert (=> b!3634831 m!4136859))

(declare-fun m!4136861 () Bool)

(assert (=> b!3634844 m!4136861))

(assert (=> b!3634844 m!4136861))

(declare-fun m!4136863 () Bool)

(assert (=> b!3634844 m!4136863))

(declare-fun m!4136865 () Bool)

(assert (=> b!3634844 m!4136865))

(declare-fun m!4136867 () Bool)

(assert (=> b!3634829 m!4136867))

(declare-fun m!4136869 () Bool)

(assert (=> b!3634845 m!4136869))

(declare-fun m!4136871 () Bool)

(assert (=> b!3634845 m!4136871))

(declare-fun m!4136873 () Bool)

(assert (=> b!3634845 m!4136873))

(declare-fun m!4136875 () Bool)

(assert (=> b!3634845 m!4136875))

(declare-fun m!4136877 () Bool)

(assert (=> b!3634845 m!4136877))

(assert (=> b!3634845 m!4136871))

(declare-fun m!4136879 () Bool)

(assert (=> b!3634845 m!4136879))

(declare-fun m!4136881 () Bool)

(assert (=> b!3634826 m!4136881))

(declare-fun m!4136883 () Bool)

(assert (=> b!3634826 m!4136883))

(declare-fun m!4136885 () Bool)

(assert (=> b!3634840 m!4136885))

(declare-fun m!4136887 () Bool)

(assert (=> b!3634840 m!4136887))

(declare-fun m!4136889 () Bool)

(assert (=> b!3634846 m!4136889))

(declare-fun m!4136891 () Bool)

(assert (=> b!3634846 m!4136891))

(declare-fun m!4136893 () Bool)

(assert (=> b!3634841 m!4136893))

(declare-fun m!4136895 () Bool)

(assert (=> b!3634838 m!4136895))

(declare-fun m!4136897 () Bool)

(assert (=> b!3634838 m!4136897))

(declare-fun m!4136899 () Bool)

(assert (=> b!3634838 m!4136899))

(declare-fun m!4136901 () Bool)

(assert (=> b!3634830 m!4136901))

(declare-fun m!4136903 () Bool)

(assert (=> b!3634830 m!4136903))

(declare-fun m!4136905 () Bool)

(assert (=> b!3634819 m!4136905))

(assert (=> b!3634819 m!4136905))

(declare-fun m!4136907 () Bool)

(assert (=> b!3634819 m!4136907))

(declare-fun m!4136909 () Bool)

(assert (=> b!3634827 m!4136909))

(declare-fun m!4136911 () Bool)

(assert (=> b!3634827 m!4136911))

(declare-fun m!4136913 () Bool)

(assert (=> b!3634827 m!4136913))

(assert (=> b!3634827 m!4136913))

(declare-fun m!4136915 () Bool)

(assert (=> b!3634827 m!4136915))

(declare-fun m!4136917 () Bool)

(assert (=> b!3634821 m!4136917))

(declare-fun m!4136919 () Bool)

(assert (=> b!3634821 m!4136919))

(declare-fun m!4136921 () Bool)

(assert (=> b!3634821 m!4136921))

(declare-fun m!4136923 () Bool)

(assert (=> b!3634821 m!4136923))

(declare-fun m!4136925 () Bool)

(assert (=> b!3634821 m!4136925))

(assert (=> b!3634821 m!4136917))

(declare-fun m!4136927 () Bool)

(assert (=> b!3634821 m!4136927))

(declare-fun m!4136929 () Bool)

(assert (=> b!3634832 m!4136929))

(assert (=> b!3634832 m!4136929))

(declare-fun m!4136931 () Bool)

(assert (=> b!3634832 m!4136931))

(assert (=> b!3634832 m!4136931))

(declare-fun m!4136933 () Bool)

(assert (=> b!3634832 m!4136933))

(declare-fun m!4136935 () Bool)

(assert (=> b!3634832 m!4136935))

(declare-fun m!4136937 () Bool)

(assert (=> b!3634836 m!4136937))

(declare-fun m!4136939 () Bool)

(assert (=> start!339110 m!4136939))

(declare-fun m!4136941 () Bool)

(assert (=> b!3634824 m!4136941))

(declare-fun m!4136943 () Bool)

(assert (=> b!3634818 m!4136943))

(declare-fun m!4136945 () Bool)

(assert (=> b!3634837 m!4136945))

(declare-fun m!4136947 () Bool)

(assert (=> b!3634828 m!4136947))

(declare-fun m!4136949 () Bool)

(assert (=> b!3634825 m!4136949))

(declare-fun m!4136951 () Bool)

(assert (=> b!3634822 m!4136951))

(declare-fun m!4136953 () Bool)

(assert (=> b!3634822 m!4136953))

(declare-fun m!4136955 () Bool)

(assert (=> b!3634822 m!4136955))

(assert (=> b!3634822 m!4136929))

(declare-fun m!4136957 () Bool)

(assert (=> b!3634822 m!4136957))

(declare-fun m!4136959 () Bool)

(assert (=> b!3634822 m!4136959))

(declare-fun m!4136961 () Bool)

(assert (=> b!3634822 m!4136961))

(declare-fun m!4136963 () Bool)

(assert (=> b!3634822 m!4136963))

(declare-fun m!4136965 () Bool)

(assert (=> b!3634822 m!4136965))

(declare-fun m!4136967 () Bool)

(assert (=> b!3634822 m!4136967))

(assert (=> b!3634822 m!4136955))

(declare-fun m!4136969 () Bool)

(assert (=> b!3634822 m!4136969))

(declare-fun m!4136971 () Bool)

(assert (=> b!3634822 m!4136971))

(declare-fun m!4136973 () Bool)

(assert (=> b!3634822 m!4136973))

(declare-fun m!4136975 () Bool)

(assert (=> b!3634822 m!4136975))

(declare-fun m!4136977 () Bool)

(assert (=> b!3634822 m!4136977))

(declare-fun m!4136979 () Bool)

(assert (=> b!3634839 m!4136979))

(check-sat (not b_next!95847) b_and!267243 (not b!3634819) (not b!3634831) (not b!3634824) (not b!3634840) (not b!3634846) (not b_next!95845) (not b!3634845) (not b_next!95841) (not b!3634833) b_and!267253 b_and!267255 (not start!339110) (not b_next!95851) (not b!3634822) b_and!267247 (not b_next!95849) (not b!3634826) (not b!3634821) (not b_next!95843) (not b!3634839) (not b!3634832) (not b!3634830) (not b!3634836) (not b_next!95853) (not b!3634829) b_and!267245 b_and!267249 (not b!3634818) (not b!3634837) (not b!3634835) tp_is_empty!18033 (not b!3634838) (not b!3634825) b_and!267257 b_and!267251 (not b!3634827) (not b_next!95855) (not b!3634844) (not b!3634828) (not b!3634841))
(check-sat b_and!267247 (not b_next!95847) (not b_next!95849) (not b_next!95843) b_and!267243 (not b_next!95845) (not b_next!95853) (not b_next!95841) (not b_next!95855) b_and!267253 b_and!267255 (not b_next!95851) b_and!267245 b_and!267249 b_and!267257 b_and!267251)
