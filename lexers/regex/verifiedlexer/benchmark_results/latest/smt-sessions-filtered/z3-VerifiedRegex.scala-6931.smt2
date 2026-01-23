; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!366228 () Bool)

(assert start!366228)

(declare-fun b!3910453 () Bool)

(declare-fun b_free!106037 () Bool)

(declare-fun b_next!106741 () Bool)

(assert (=> b!3910453 (= b_free!106037 (not b_next!106741))))

(declare-fun tp!1190315 () Bool)

(declare-fun b_and!297371 () Bool)

(assert (=> b!3910453 (= tp!1190315 b_and!297371)))

(declare-fun b_free!106039 () Bool)

(declare-fun b_next!106743 () Bool)

(assert (=> b!3910453 (= b_free!106039 (not b_next!106743))))

(declare-fun tp!1190329 () Bool)

(declare-fun b_and!297373 () Bool)

(assert (=> b!3910453 (= tp!1190329 b_and!297373)))

(declare-fun b!3910435 () Bool)

(declare-fun b_free!106041 () Bool)

(declare-fun b_next!106745 () Bool)

(assert (=> b!3910435 (= b_free!106041 (not b_next!106745))))

(declare-fun tp!1190328 () Bool)

(declare-fun b_and!297375 () Bool)

(assert (=> b!3910435 (= tp!1190328 b_and!297375)))

(declare-fun b_free!106043 () Bool)

(declare-fun b_next!106747 () Bool)

(assert (=> b!3910435 (= b_free!106043 (not b_next!106747))))

(declare-fun tp!1190327 () Bool)

(declare-fun b_and!297377 () Bool)

(assert (=> b!3910435 (= tp!1190327 b_and!297377)))

(declare-fun b!3910456 () Bool)

(declare-fun b_free!106045 () Bool)

(declare-fun b_next!106749 () Bool)

(assert (=> b!3910456 (= b_free!106045 (not b_next!106749))))

(declare-fun tp!1190330 () Bool)

(declare-fun b_and!297379 () Bool)

(assert (=> b!3910456 (= tp!1190330 b_and!297379)))

(declare-fun b_free!106047 () Bool)

(declare-fun b_next!106751 () Bool)

(assert (=> b!3910456 (= b_free!106047 (not b_next!106751))))

(declare-fun tp!1190320 () Bool)

(declare-fun b_and!297381 () Bool)

(assert (=> b!3910456 (= tp!1190320 b_and!297381)))

(declare-fun e!2417618 () Bool)

(declare-fun tp!1190324 () Bool)

(declare-fun b!3910433 () Bool)

(declare-datatypes ((List!41565 0))(
  ( (Nil!41441) (Cons!41441 (h!46861 (_ BitVec 16)) (t!322848 List!41565)) )
))
(declare-datatypes ((TokenValue!6680 0))(
  ( (FloatLiteralValue!13360 (text!47205 List!41565)) (TokenValueExt!6679 (__x!25577 Int)) (Broken!33400 (value!204433 List!41565)) (Object!6803) (End!6680) (Def!6680) (Underscore!6680) (Match!6680) (Else!6680) (Error!6680) (Case!6680) (If!6680) (Extends!6680) (Abstract!6680) (Class!6680) (Val!6680) (DelimiterValue!13360 (del!6740 List!41565)) (KeywordValue!6686 (value!204434 List!41565)) (CommentValue!13360 (value!204435 List!41565)) (WhitespaceValue!13360 (value!204436 List!41565)) (IndentationValue!6680 (value!204437 List!41565)) (String!47117) (Int32!6680) (Broken!33401 (value!204438 List!41565)) (Boolean!6681) (Unit!59584) (OperatorValue!6683 (op!6740 List!41565)) (IdentifierValue!13360 (value!204439 List!41565)) (IdentifierValue!13361 (value!204440 List!41565)) (WhitespaceValue!13361 (value!204441 List!41565)) (True!13360) (False!13360) (Broken!33402 (value!204442 List!41565)) (Broken!33403 (value!204443 List!41565)) (True!13361) (RightBrace!6680) (RightBracket!6680) (Colon!6680) (Null!6680) (Comma!6680) (LeftBracket!6680) (False!13361) (LeftBrace!6680) (ImaginaryLiteralValue!6680 (text!47206 List!41565)) (StringLiteralValue!20040 (value!204444 List!41565)) (EOFValue!6680 (value!204445 List!41565)) (IdentValue!6680 (value!204446 List!41565)) (DelimiterValue!13361 (value!204447 List!41565)) (DedentValue!6680 (value!204448 List!41565)) (NewLineValue!6680 (value!204449 List!41565)) (IntegerValue!20040 (value!204450 (_ BitVec 32)) (text!47207 List!41565)) (IntegerValue!20041 (value!204451 Int) (text!47208 List!41565)) (Times!6680) (Or!6680) (Equal!6680) (Minus!6680) (Broken!33404 (value!204452 List!41565)) (And!6680) (Div!6680) (LessEqual!6680) (Mod!6680) (Concat!18035) (Not!6680) (Plus!6680) (SpaceValue!6680 (value!204453 List!41565)) (IntegerValue!20042 (value!204454 Int) (text!47209 List!41565)) (StringLiteralValue!20041 (text!47210 List!41565)) (FloatLiteralValue!13361 (text!47211 List!41565)) (BytesLiteralValue!6680 (value!204455 List!41565)) (CommentValue!13361 (value!204456 List!41565)) (StringLiteralValue!20042 (value!204457 List!41565)) (ErrorTokenValue!6680 (msg!6741 List!41565)) )
))
(declare-datatypes ((C!22896 0))(
  ( (C!22897 (val!13542 Int)) )
))
(declare-datatypes ((Regex!11355 0))(
  ( (ElementMatch!11355 (c!679722 C!22896)) (Concat!18036 (regOne!23222 Regex!11355) (regTwo!23222 Regex!11355)) (EmptyExpr!11355) (Star!11355 (reg!11684 Regex!11355)) (EmptyLang!11355) (Union!11355 (regOne!23223 Regex!11355) (regTwo!23223 Regex!11355)) )
))
(declare-datatypes ((String!47118 0))(
  ( (String!47119 (value!204458 String)) )
))
(declare-datatypes ((List!41566 0))(
  ( (Nil!41442) (Cons!41442 (h!46862 C!22896) (t!322849 List!41566)) )
))
(declare-datatypes ((IArray!25327 0))(
  ( (IArray!25328 (innerList!12721 List!41566)) )
))
(declare-datatypes ((Conc!12661 0))(
  ( (Node!12661 (left!31728 Conc!12661) (right!32058 Conc!12661) (csize!25552 Int) (cheight!12872 Int)) (Leaf!19593 (xs!15967 IArray!25327) (csize!25553 Int)) (Empty!12661) )
))
(declare-datatypes ((BalanceConc!24916 0))(
  ( (BalanceConc!24917 (c!679723 Conc!12661)) )
))
(declare-datatypes ((TokenValueInjection!12788 0))(
  ( (TokenValueInjection!12789 (toValue!8894 Int) (toChars!8753 Int)) )
))
(declare-datatypes ((Rule!12700 0))(
  ( (Rule!12701 (regex!6450 Regex!11355) (tag!7310 String!47118) (isSeparator!6450 Bool) (transformation!6450 TokenValueInjection!12788)) )
))
(declare-datatypes ((Token!12038 0))(
  ( (Token!12039 (value!204459 TokenValue!6680) (rule!9364 Rule!12700) (size!31113 Int) (originalCharacters!7050 List!41566)) )
))
(declare-datatypes ((List!41567 0))(
  ( (Nil!41443) (Cons!41443 (h!46863 Token!12038) (t!322850 List!41567)) )
))
(declare-fun prefixTokens!80 () List!41567)

(declare-fun e!2417616 () Bool)

(declare-fun inv!55623 (Token!12038) Bool)

(assert (=> b!3910433 (= e!2417618 (and (inv!55623 (h!46863 prefixTokens!80)) e!2417616 tp!1190324))))

(declare-fun e!2417634 () Bool)

(declare-fun lt!1362216 () Int)

(declare-fun lt!1362219 () Int)

(declare-fun b!3910434 () Bool)

(declare-fun lt!1362215 () Int)

(declare-fun lt!1362206 () Int)

(assert (=> b!3910434 (= e!2417634 (or (not (= (+ lt!1362206 lt!1362215) lt!1362216)) (> lt!1362219 lt!1362206)))))

(declare-fun prefix!426 () List!41566)

(declare-fun size!31114 (List!41566) Int)

(assert (=> b!3910434 (= lt!1362206 (size!31114 prefix!426))))

(declare-fun e!2417631 () Bool)

(assert (=> b!3910435 (= e!2417631 (and tp!1190328 tp!1190327))))

(declare-fun b!3910436 () Bool)

(declare-fun res!1581632 () Bool)

(declare-fun e!2417635 () Bool)

(assert (=> b!3910436 (=> (not res!1581632) (not e!2417635))))

(declare-fun suffixResult!91 () List!41566)

(declare-datatypes ((LexerInterface!6039 0))(
  ( (LexerInterfaceExt!6036 (__x!25578 Int)) (Lexer!6037) )
))
(declare-fun thiss!20629 () LexerInterface!6039)

(declare-fun suffix!1176 () List!41566)

(declare-fun suffixTokens!72 () List!41567)

(declare-datatypes ((List!41568 0))(
  ( (Nil!41444) (Cons!41444 (h!46864 Rule!12700) (t!322851 List!41568)) )
))
(declare-fun rules!2768 () List!41568)

(declare-datatypes ((tuple2!40686 0))(
  ( (tuple2!40687 (_1!23477 List!41567) (_2!23477 List!41566)) )
))
(declare-fun lexList!1807 (LexerInterface!6039 List!41568 List!41566) tuple2!40686)

(assert (=> b!3910436 (= res!1581632 (= (lexList!1807 thiss!20629 rules!2768 suffix!1176) (tuple2!40687 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3910438 () Bool)

(declare-fun res!1581630 () Bool)

(declare-fun e!2417632 () Bool)

(assert (=> b!3910438 (=> (not res!1581630) (not e!2417632))))

(declare-fun isEmpty!24650 (List!41567) Bool)

(assert (=> b!3910438 (= res!1581630 (not (isEmpty!24650 prefixTokens!80)))))

(declare-fun e!2417636 () Bool)

(declare-fun tp!1190314 () Bool)

(declare-fun b!3910439 () Bool)

(declare-fun e!2417638 () Bool)

(declare-fun inv!55620 (String!47118) Bool)

(declare-fun inv!55624 (TokenValueInjection!12788) Bool)

(assert (=> b!3910439 (= e!2417636 (and tp!1190314 (inv!55620 (tag!7310 (h!46864 rules!2768))) (inv!55624 (transformation!6450 (h!46864 rules!2768))) e!2417638))))

(declare-fun b!3910440 () Bool)

(declare-fun e!2417620 () Bool)

(declare-datatypes ((tuple2!40688 0))(
  ( (tuple2!40689 (_1!23478 Token!12038) (_2!23478 List!41566)) )
))
(declare-datatypes ((Option!8870 0))(
  ( (None!8869) (Some!8869 (v!39191 tuple2!40688)) )
))
(declare-fun lt!1362212 () Option!8870)

(assert (=> b!3910440 (= e!2417620 (= (size!31113 (_1!23478 (v!39191 lt!1362212))) (size!31114 (originalCharacters!7050 (_1!23478 (v!39191 lt!1362212))))))))

(declare-fun b!3910441 () Bool)

(declare-fun res!1581635 () Bool)

(assert (=> b!3910441 (=> (not res!1581635) (not e!2417632))))

(declare-fun isEmpty!24651 (List!41566) Bool)

(assert (=> b!3910441 (= res!1581635 (not (isEmpty!24651 prefix!426)))))

(declare-fun b!3910442 () Bool)

(declare-fun e!2417624 () Bool)

(declare-fun e!2417621 () Bool)

(assert (=> b!3910442 (= e!2417624 (not e!2417621))))

(declare-fun res!1581629 () Bool)

(assert (=> b!3910442 (=> res!1581629 e!2417621)))

(declare-fun lt!1362218 () List!41566)

(declare-fun lt!1362221 () List!41566)

(assert (=> b!3910442 (= res!1581629 (not (= lt!1362218 lt!1362221)))))

(declare-fun lt!1362214 () tuple2!40686)

(assert (=> b!3910442 (= lt!1362214 (lexList!1807 thiss!20629 rules!2768 (_2!23478 (v!39191 lt!1362212))))))

(declare-fun lt!1362220 () TokenValue!6680)

(declare-fun lt!1362204 () List!41566)

(declare-fun lt!1362217 () List!41566)

(assert (=> b!3910442 (and (= (size!31113 (_1!23478 (v!39191 lt!1362212))) lt!1362219) (= (originalCharacters!7050 (_1!23478 (v!39191 lt!1362212))) lt!1362217) (= (v!39191 lt!1362212) (tuple2!40689 (Token!12039 lt!1362220 (rule!9364 (_1!23478 (v!39191 lt!1362212))) lt!1362219 lt!1362217) lt!1362204)))))

(assert (=> b!3910442 (= lt!1362219 (size!31114 lt!1362217))))

(assert (=> b!3910442 e!2417620))

(declare-fun res!1581627 () Bool)

(assert (=> b!3910442 (=> (not res!1581627) (not e!2417620))))

(assert (=> b!3910442 (= res!1581627 (= (value!204459 (_1!23478 (v!39191 lt!1362212))) lt!1362220))))

(declare-fun apply!9689 (TokenValueInjection!12788 BalanceConc!24916) TokenValue!6680)

(declare-fun seqFromList!4717 (List!41566) BalanceConc!24916)

(assert (=> b!3910442 (= lt!1362220 (apply!9689 (transformation!6450 (rule!9364 (_1!23478 (v!39191 lt!1362212)))) (seqFromList!4717 lt!1362217)))))

(assert (=> b!3910442 (= (_2!23478 (v!39191 lt!1362212)) lt!1362204)))

(declare-datatypes ((Unit!59585 0))(
  ( (Unit!59586) )
))
(declare-fun lt!1362211 () Unit!59585)

(declare-fun lemmaSamePrefixThenSameSuffix!1766 (List!41566 List!41566 List!41566 List!41566 List!41566) Unit!59585)

(assert (=> b!3910442 (= lt!1362211 (lemmaSamePrefixThenSameSuffix!1766 lt!1362217 (_2!23478 (v!39191 lt!1362212)) lt!1362217 lt!1362204 lt!1362221))))

(declare-fun getSuffix!2000 (List!41566 List!41566) List!41566)

(assert (=> b!3910442 (= lt!1362204 (getSuffix!2000 lt!1362221 lt!1362217))))

(declare-fun isPrefix!3545 (List!41566 List!41566) Bool)

(assert (=> b!3910442 (isPrefix!3545 lt!1362217 lt!1362218)))

(declare-fun ++!10657 (List!41566 List!41566) List!41566)

(assert (=> b!3910442 (= lt!1362218 (++!10657 lt!1362217 (_2!23478 (v!39191 lt!1362212))))))

(declare-fun lt!1362209 () Unit!59585)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2408 (List!41566 List!41566) Unit!59585)

(assert (=> b!3910442 (= lt!1362209 (lemmaConcatTwoListThenFirstIsPrefix!2408 lt!1362217 (_2!23478 (v!39191 lt!1362212))))))

(declare-fun list!15405 (BalanceConc!24916) List!41566)

(declare-fun charsOf!4274 (Token!12038) BalanceConc!24916)

(assert (=> b!3910442 (= lt!1362217 (list!15405 (charsOf!4274 (_1!23478 (v!39191 lt!1362212)))))))

(declare-fun ruleValid!2398 (LexerInterface!6039 Rule!12700) Bool)

(assert (=> b!3910442 (ruleValid!2398 thiss!20629 (rule!9364 (_1!23478 (v!39191 lt!1362212))))))

(declare-fun lt!1362213 () Unit!59585)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1478 (LexerInterface!6039 Rule!12700 List!41568) Unit!59585)

(assert (=> b!3910442 (= lt!1362213 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1478 thiss!20629 (rule!9364 (_1!23478 (v!39191 lt!1362212))) rules!2768))))

(declare-fun lt!1362208 () Unit!59585)

(declare-fun lemmaCharactersSize!1107 (Token!12038) Unit!59585)

(assert (=> b!3910442 (= lt!1362208 (lemmaCharactersSize!1107 (_1!23478 (v!39191 lt!1362212))))))

(declare-fun b!3910443 () Bool)

(declare-fun e!2417625 () Bool)

(declare-fun e!2417617 () Bool)

(declare-fun tp!1190323 () Bool)

(assert (=> b!3910443 (= e!2417617 (and (inv!55623 (h!46863 suffixTokens!72)) e!2417625 tp!1190323))))

(declare-fun b!3910444 () Bool)

(declare-fun res!1581636 () Bool)

(assert (=> b!3910444 (=> res!1581636 e!2417621)))

(declare-fun lt!1362205 () tuple2!40686)

(declare-fun ++!10658 (List!41567 List!41567) List!41567)

(assert (=> b!3910444 (= res!1581636 (not (= lt!1362205 (tuple2!40687 (++!10658 (Cons!41443 (_1!23478 (v!39191 lt!1362212)) Nil!41443) (_1!23477 lt!1362214)) (_2!23477 lt!1362214)))))))

(declare-fun b!3910445 () Bool)

(declare-fun res!1581626 () Bool)

(assert (=> b!3910445 (=> (not res!1581626) (not e!2417632))))

(declare-fun rulesInvariant!5382 (LexerInterface!6039 List!41568) Bool)

(assert (=> b!3910445 (= res!1581626 (rulesInvariant!5382 thiss!20629 rules!2768))))

(declare-fun tp!1190318 () Bool)

(declare-fun e!2417627 () Bool)

(declare-fun b!3910446 () Bool)

(declare-fun inv!21 (TokenValue!6680) Bool)

(assert (=> b!3910446 (= e!2417625 (and (inv!21 (value!204459 (h!46863 suffixTokens!72))) e!2417627 tp!1190318))))

(declare-fun b!3910447 () Bool)

(declare-fun e!2417626 () Bool)

(assert (=> b!3910447 (= e!2417626 e!2417634)))

(declare-fun res!1581638 () Bool)

(assert (=> b!3910447 (=> res!1581638 e!2417634)))

(declare-fun lt!1362207 () Int)

(assert (=> b!3910447 (= res!1581638 (not (= (+ lt!1362219 lt!1362207) lt!1362216)))))

(assert (=> b!3910447 (= lt!1362216 (size!31114 lt!1362221))))

(declare-fun e!2417629 () Bool)

(declare-fun b!3910448 () Bool)

(declare-fun tp!1190317 () Bool)

(declare-fun e!2417619 () Bool)

(assert (=> b!3910448 (= e!2417619 (and tp!1190317 (inv!55620 (tag!7310 (rule!9364 (h!46863 prefixTokens!80)))) (inv!55624 (transformation!6450 (rule!9364 (h!46863 prefixTokens!80)))) e!2417629))))

(declare-fun b!3910449 () Bool)

(declare-fun e!2417633 () Bool)

(declare-fun tp_is_empty!19681 () Bool)

(declare-fun tp!1190326 () Bool)

(assert (=> b!3910449 (= e!2417633 (and tp_is_empty!19681 tp!1190326))))

(declare-fun res!1581639 () Bool)

(assert (=> start!366228 (=> (not res!1581639) (not e!2417632))))

(get-info :version)

(assert (=> start!366228 (= res!1581639 ((_ is Lexer!6037) thiss!20629))))

(assert (=> start!366228 e!2417632))

(declare-fun e!2417639 () Bool)

(assert (=> start!366228 e!2417639))

(assert (=> start!366228 true))

(declare-fun e!2417623 () Bool)

(assert (=> start!366228 e!2417623))

(declare-fun e!2417637 () Bool)

(assert (=> start!366228 e!2417637))

(assert (=> start!366228 e!2417618))

(assert (=> start!366228 e!2417617))

(assert (=> start!366228 e!2417633))

(declare-fun b!3910437 () Bool)

(declare-fun tp!1190325 () Bool)

(assert (=> b!3910437 (= e!2417616 (and (inv!21 (value!204459 (h!46863 prefixTokens!80))) e!2417619 tp!1190325))))

(declare-fun b!3910450 () Bool)

(declare-fun res!1581631 () Bool)

(assert (=> b!3910450 (=> res!1581631 e!2417621)))

(assert (=> b!3910450 (= res!1581631 (or (not (= lt!1362214 (tuple2!40687 (_1!23477 lt!1362214) (_2!23477 lt!1362214)))) (= (_2!23478 (v!39191 lt!1362212)) suffix!1176)))))

(declare-fun b!3910451 () Bool)

(assert (=> b!3910451 (= e!2417635 e!2417624)))

(declare-fun res!1581628 () Bool)

(assert (=> b!3910451 (=> (not res!1581628) (not e!2417624))))

(assert (=> b!3910451 (= res!1581628 ((_ is Some!8869) lt!1362212))))

(declare-fun maxPrefix!3343 (LexerInterface!6039 List!41568 List!41566) Option!8870)

(assert (=> b!3910451 (= lt!1362212 (maxPrefix!3343 thiss!20629 rules!2768 lt!1362221))))

(declare-fun b!3910452 () Bool)

(assert (=> b!3910452 (= e!2417632 e!2417635)))

(declare-fun res!1581637 () Bool)

(assert (=> b!3910452 (=> (not res!1581637) (not e!2417635))))

(declare-fun lt!1362210 () List!41567)

(assert (=> b!3910452 (= res!1581637 (= lt!1362205 (tuple2!40687 lt!1362210 suffixResult!91)))))

(assert (=> b!3910452 (= lt!1362205 (lexList!1807 thiss!20629 rules!2768 lt!1362221))))

(assert (=> b!3910452 (= lt!1362210 (++!10658 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3910452 (= lt!1362221 (++!10657 prefix!426 suffix!1176))))

(assert (=> b!3910453 (= e!2417638 (and tp!1190315 tp!1190329))))

(declare-fun tp!1190321 () Bool)

(declare-fun b!3910454 () Bool)

(assert (=> b!3910454 (= e!2417627 (and tp!1190321 (inv!55620 (tag!7310 (rule!9364 (h!46863 suffixTokens!72)))) (inv!55624 (transformation!6450 (rule!9364 (h!46863 suffixTokens!72)))) e!2417631))))

(declare-fun b!3910455 () Bool)

(assert (=> b!3910455 (= e!2417621 e!2417626)))

(declare-fun res!1581634 () Bool)

(assert (=> b!3910455 (=> res!1581634 e!2417626)))

(assert (=> b!3910455 (= res!1581634 (>= lt!1362207 lt!1362215))))

(assert (=> b!3910455 (= lt!1362215 (size!31114 suffix!1176))))

(assert (=> b!3910455 (= lt!1362207 (size!31114 (_2!23478 (v!39191 lt!1362212))))))

(assert (=> b!3910456 (= e!2417629 (and tp!1190330 tp!1190320))))

(declare-fun b!3910457 () Bool)

(declare-fun tp!1190322 () Bool)

(assert (=> b!3910457 (= e!2417639 (and tp_is_empty!19681 tp!1190322))))

(declare-fun b!3910458 () Bool)

(declare-fun tp!1190316 () Bool)

(assert (=> b!3910458 (= e!2417637 (and e!2417636 tp!1190316))))

(declare-fun b!3910459 () Bool)

(declare-fun tp!1190319 () Bool)

(assert (=> b!3910459 (= e!2417623 (and tp_is_empty!19681 tp!1190319))))

(declare-fun b!3910460 () Bool)

(declare-fun res!1581633 () Bool)

(assert (=> b!3910460 (=> (not res!1581633) (not e!2417632))))

(declare-fun isEmpty!24652 (List!41568) Bool)

(assert (=> b!3910460 (= res!1581633 (not (isEmpty!24652 rules!2768)))))

(assert (= (and start!366228 res!1581639) b!3910460))

(assert (= (and b!3910460 res!1581633) b!3910445))

(assert (= (and b!3910445 res!1581626) b!3910438))

(assert (= (and b!3910438 res!1581630) b!3910441))

(assert (= (and b!3910441 res!1581635) b!3910452))

(assert (= (and b!3910452 res!1581637) b!3910436))

(assert (= (and b!3910436 res!1581632) b!3910451))

(assert (= (and b!3910451 res!1581628) b!3910442))

(assert (= (and b!3910442 res!1581627) b!3910440))

(assert (= (and b!3910442 (not res!1581629)) b!3910444))

(assert (= (and b!3910444 (not res!1581636)) b!3910450))

(assert (= (and b!3910450 (not res!1581631)) b!3910455))

(assert (= (and b!3910455 (not res!1581634)) b!3910447))

(assert (= (and b!3910447 (not res!1581638)) b!3910434))

(assert (= (and start!366228 ((_ is Cons!41442) suffixResult!91)) b!3910457))

(assert (= (and start!366228 ((_ is Cons!41442) suffix!1176)) b!3910459))

(assert (= b!3910439 b!3910453))

(assert (= b!3910458 b!3910439))

(assert (= (and start!366228 ((_ is Cons!41444) rules!2768)) b!3910458))

(assert (= b!3910448 b!3910456))

(assert (= b!3910437 b!3910448))

(assert (= b!3910433 b!3910437))

(assert (= (and start!366228 ((_ is Cons!41443) prefixTokens!80)) b!3910433))

(assert (= b!3910454 b!3910435))

(assert (= b!3910446 b!3910454))

(assert (= b!3910443 b!3910446))

(assert (= (and start!366228 ((_ is Cons!41443) suffixTokens!72)) b!3910443))

(assert (= (and start!366228 ((_ is Cons!41442) prefix!426)) b!3910449))

(declare-fun m!4473507 () Bool)

(assert (=> b!3910438 m!4473507))

(declare-fun m!4473509 () Bool)

(assert (=> b!3910436 m!4473509))

(declare-fun m!4473511 () Bool)

(assert (=> b!3910441 m!4473511))

(declare-fun m!4473513 () Bool)

(assert (=> b!3910460 m!4473513))

(declare-fun m!4473515 () Bool)

(assert (=> b!3910448 m!4473515))

(declare-fun m!4473517 () Bool)

(assert (=> b!3910448 m!4473517))

(declare-fun m!4473519 () Bool)

(assert (=> b!3910434 m!4473519))

(declare-fun m!4473521 () Bool)

(assert (=> b!3910446 m!4473521))

(declare-fun m!4473523 () Bool)

(assert (=> b!3910447 m!4473523))

(declare-fun m!4473525 () Bool)

(assert (=> b!3910442 m!4473525))

(declare-fun m!4473527 () Bool)

(assert (=> b!3910442 m!4473527))

(declare-fun m!4473529 () Bool)

(assert (=> b!3910442 m!4473529))

(declare-fun m!4473531 () Bool)

(assert (=> b!3910442 m!4473531))

(declare-fun m!4473533 () Bool)

(assert (=> b!3910442 m!4473533))

(declare-fun m!4473535 () Bool)

(assert (=> b!3910442 m!4473535))

(declare-fun m!4473537 () Bool)

(assert (=> b!3910442 m!4473537))

(declare-fun m!4473539 () Bool)

(assert (=> b!3910442 m!4473539))

(assert (=> b!3910442 m!4473537))

(declare-fun m!4473541 () Bool)

(assert (=> b!3910442 m!4473541))

(declare-fun m!4473543 () Bool)

(assert (=> b!3910442 m!4473543))

(declare-fun m!4473545 () Bool)

(assert (=> b!3910442 m!4473545))

(assert (=> b!3910442 m!4473545))

(declare-fun m!4473547 () Bool)

(assert (=> b!3910442 m!4473547))

(declare-fun m!4473549 () Bool)

(assert (=> b!3910442 m!4473549))

(declare-fun m!4473551 () Bool)

(assert (=> b!3910442 m!4473551))

(declare-fun m!4473553 () Bool)

(assert (=> b!3910444 m!4473553))

(declare-fun m!4473555 () Bool)

(assert (=> b!3910440 m!4473555))

(declare-fun m!4473557 () Bool)

(assert (=> b!3910439 m!4473557))

(declare-fun m!4473559 () Bool)

(assert (=> b!3910439 m!4473559))

(declare-fun m!4473561 () Bool)

(assert (=> b!3910445 m!4473561))

(declare-fun m!4473563 () Bool)

(assert (=> b!3910455 m!4473563))

(declare-fun m!4473565 () Bool)

(assert (=> b!3910455 m!4473565))

(declare-fun m!4473567 () Bool)

(assert (=> b!3910443 m!4473567))

(declare-fun m!4473569 () Bool)

(assert (=> b!3910433 m!4473569))

(declare-fun m!4473571 () Bool)

(assert (=> b!3910451 m!4473571))

(declare-fun m!4473573 () Bool)

(assert (=> b!3910454 m!4473573))

(declare-fun m!4473575 () Bool)

(assert (=> b!3910454 m!4473575))

(declare-fun m!4473577 () Bool)

(assert (=> b!3910437 m!4473577))

(declare-fun m!4473579 () Bool)

(assert (=> b!3910452 m!4473579))

(declare-fun m!4473581 () Bool)

(assert (=> b!3910452 m!4473581))

(declare-fun m!4473583 () Bool)

(assert (=> b!3910452 m!4473583))

(check-sat (not b!3910438) (not b_next!106743) (not b_next!106745) (not b!3910460) (not b!3910434) b_and!297375 (not b_next!106749) (not b!3910441) (not b!3910442) (not b!3910443) (not b!3910433) (not b_next!106751) (not b!3910459) (not b_next!106747) (not b!3910452) (not b!3910439) b_and!297381 tp_is_empty!19681 (not b!3910446) (not b!3910447) (not b!3910436) b_and!297377 (not b!3910454) b_and!297379 (not b!3910440) b_and!297373 (not b!3910458) (not b_next!106741) (not b!3910451) b_and!297371 (not b!3910449) (not b!3910448) (not b!3910457) (not b!3910445) (not b!3910455) (not b!3910437) (not b!3910444))
(check-sat b_and!297381 (not b_next!106743) b_and!297377 (not b_next!106741) b_and!297371 (not b_next!106745) b_and!297375 (not b_next!106749) (not b_next!106751) (not b_next!106747) b_and!297379 b_and!297373)
