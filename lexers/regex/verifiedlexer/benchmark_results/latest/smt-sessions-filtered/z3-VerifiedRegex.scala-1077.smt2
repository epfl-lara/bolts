; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55144 () Bool)

(assert start!55144)

(declare-fun b!589571 () Bool)

(declare-fun b_free!16525 () Bool)

(declare-fun b_next!16541 () Bool)

(assert (=> b!589571 (= b_free!16525 (not b_next!16541))))

(declare-fun tp!183914 () Bool)

(declare-fun b_and!58091 () Bool)

(assert (=> b!589571 (= tp!183914 b_and!58091)))

(declare-fun b_free!16527 () Bool)

(declare-fun b_next!16543 () Bool)

(assert (=> b!589571 (= b_free!16527 (not b_next!16543))))

(declare-fun tp!183915 () Bool)

(declare-fun b_and!58093 () Bool)

(assert (=> b!589571 (= tp!183915 b_and!58093)))

(declare-fun b!589565 () Bool)

(declare-fun b_free!16529 () Bool)

(declare-fun b_next!16545 () Bool)

(assert (=> b!589565 (= b_free!16529 (not b_next!16545))))

(declare-fun tp!183918 () Bool)

(declare-fun b_and!58095 () Bool)

(assert (=> b!589565 (= tp!183918 b_and!58095)))

(declare-fun b_free!16531 () Bool)

(declare-fun b_next!16547 () Bool)

(assert (=> b!589565 (= b_free!16531 (not b_next!16547))))

(declare-fun tp!183912 () Bool)

(declare-fun b_and!58097 () Bool)

(assert (=> b!589565 (= tp!183912 b_and!58097)))

(declare-fun b!589561 () Bool)

(declare-fun tp!183911 () Bool)

(declare-datatypes ((C!3872 0))(
  ( (C!3873 (val!2162 Int)) )
))
(declare-datatypes ((Regex!1475 0))(
  ( (ElementMatch!1475 (c!110045 C!3872)) (Concat!2640 (regOne!3462 Regex!1475) (regTwo!3462 Regex!1475)) (EmptyExpr!1475) (Star!1475 (reg!1804 Regex!1475)) (EmptyLang!1475) (Union!1475 (regOne!3463 Regex!1475) (regTwo!3463 Regex!1475)) )
))
(declare-datatypes ((List!5828 0))(
  ( (Nil!5818) (Cons!5818 (h!11219 (_ BitVec 16)) (t!78829 List!5828)) )
))
(declare-datatypes ((TokenValue!1165 0))(
  ( (FloatLiteralValue!2330 (text!8600 List!5828)) (TokenValueExt!1164 (__x!4228 Int)) (Broken!5825 (value!37359 List!5828)) (Object!1174) (End!1165) (Def!1165) (Underscore!1165) (Match!1165) (Else!1165) (Error!1165) (Case!1165) (If!1165) (Extends!1165) (Abstract!1165) (Class!1165) (Val!1165) (DelimiterValue!2330 (del!1225 List!5828)) (KeywordValue!1171 (value!37360 List!5828)) (CommentValue!2330 (value!37361 List!5828)) (WhitespaceValue!2330 (value!37362 List!5828)) (IndentationValue!1165 (value!37363 List!5828)) (String!7568) (Int32!1165) (Broken!5826 (value!37364 List!5828)) (Boolean!1166) (Unit!10562) (OperatorValue!1168 (op!1225 List!5828)) (IdentifierValue!2330 (value!37365 List!5828)) (IdentifierValue!2331 (value!37366 List!5828)) (WhitespaceValue!2331 (value!37367 List!5828)) (True!2330) (False!2330) (Broken!5827 (value!37368 List!5828)) (Broken!5828 (value!37369 List!5828)) (True!2331) (RightBrace!1165) (RightBracket!1165) (Colon!1165) (Null!1165) (Comma!1165) (LeftBracket!1165) (False!2331) (LeftBrace!1165) (ImaginaryLiteralValue!1165 (text!8601 List!5828)) (StringLiteralValue!3495 (value!37370 List!5828)) (EOFValue!1165 (value!37371 List!5828)) (IdentValue!1165 (value!37372 List!5828)) (DelimiterValue!2331 (value!37373 List!5828)) (DedentValue!1165 (value!37374 List!5828)) (NewLineValue!1165 (value!37375 List!5828)) (IntegerValue!3495 (value!37376 (_ BitVec 32)) (text!8602 List!5828)) (IntegerValue!3496 (value!37377 Int) (text!8603 List!5828)) (Times!1165) (Or!1165) (Equal!1165) (Minus!1165) (Broken!5829 (value!37378 List!5828)) (And!1165) (Div!1165) (LessEqual!1165) (Mod!1165) (Concat!2641) (Not!1165) (Plus!1165) (SpaceValue!1165 (value!37379 List!5828)) (IntegerValue!3497 (value!37380 Int) (text!8604 List!5828)) (StringLiteralValue!3496 (text!8605 List!5828)) (FloatLiteralValue!2331 (text!8606 List!5828)) (BytesLiteralValue!1165 (value!37381 List!5828)) (CommentValue!2331 (value!37382 List!5828)) (StringLiteralValue!3497 (value!37383 List!5828)) (ErrorTokenValue!1165 (msg!1226 List!5828)) )
))
(declare-datatypes ((String!7569 0))(
  ( (String!7570 (value!37384 String)) )
))
(declare-datatypes ((List!5829 0))(
  ( (Nil!5819) (Cons!5819 (h!11220 C!3872) (t!78830 List!5829)) )
))
(declare-datatypes ((IArray!3717 0))(
  ( (IArray!3718 (innerList!1916 List!5829)) )
))
(declare-datatypes ((Conc!1858 0))(
  ( (Node!1858 (left!4733 Conc!1858) (right!5063 Conc!1858) (csize!3946 Int) (cheight!2069 Int)) (Leaf!2936 (xs!4495 IArray!3717) (csize!3947 Int)) (Empty!1858) )
))
(declare-datatypes ((BalanceConc!3724 0))(
  ( (BalanceConc!3725 (c!110046 Conc!1858)) )
))
(declare-datatypes ((TokenValueInjection!2098 0))(
  ( (TokenValueInjection!2099 (toValue!2024 Int) (toChars!1883 Int)) )
))
(declare-datatypes ((Rule!2082 0))(
  ( (Rule!2083 (regex!1141 Regex!1475) (tag!1403 String!7569) (isSeparator!1141 Bool) (transformation!1141 TokenValueInjection!2098)) )
))
(declare-datatypes ((Token!2018 0))(
  ( (Token!2019 (value!37385 TokenValue!1165) (rule!1907 Rule!2082) (size!4612 Int) (originalCharacters!1180 List!5829)) )
))
(declare-fun token!491 () Token!2018)

(declare-fun e!356454 () Bool)

(declare-fun e!356443 () Bool)

(declare-fun inv!7357 (String!7569) Bool)

(declare-fun inv!7360 (TokenValueInjection!2098) Bool)

(assert (=> b!589561 (= e!356454 (and tp!183911 (inv!7357 (tag!1403 (rule!1907 token!491))) (inv!7360 (transformation!1141 (rule!1907 token!491))) e!356443))))

(declare-fun b!589562 () Bool)

(declare-datatypes ((Unit!10563 0))(
  ( (Unit!10564) )
))
(declare-fun e!356453 () Unit!10563)

(declare-fun Unit!10565 () Unit!10563)

(assert (=> b!589562 (= e!356453 Unit!10565)))

(declare-fun b!589563 () Bool)

(declare-fun Unit!10566 () Unit!10563)

(assert (=> b!589563 (= e!356453 Unit!10566)))

(assert (=> b!589563 false))

(declare-fun b!589564 () Bool)

(declare-fun e!356451 () Bool)

(declare-datatypes ((tuple2!6768 0))(
  ( (tuple2!6769 (_1!3648 Token!2018) (_2!3648 List!5829)) )
))
(declare-datatypes ((Option!1492 0))(
  ( (None!1491) (Some!1491 (v!16374 tuple2!6768)) )
))
(declare-fun lt!249846 () Option!1492)

(declare-fun lt!249848 () List!5829)

(declare-fun apply!1394 (TokenValueInjection!2098 BalanceConc!3724) TokenValue!1165)

(declare-fun seqFromList!1317 (List!5829) BalanceConc!3724)

(assert (=> b!589564 (= e!356451 (not (= (value!37385 (_1!3648 (v!16374 lt!249846))) (apply!1394 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))) (seqFromList!1317 lt!249848)))))))

(declare-fun lt!249833 () Unit!10563)

(declare-fun lemmaInv!249 (TokenValueInjection!2098) Unit!10563)

(assert (=> b!589564 (= lt!249833 (lemmaInv!249 (transformation!1141 (rule!1907 token!491))))))

(declare-fun lt!249834 () Unit!10563)

(assert (=> b!589564 (= lt!249834 (lemmaInv!249 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))))

(declare-datatypes ((LexerInterface!1027 0))(
  ( (LexerInterfaceExt!1024 (__x!4229 Int)) (Lexer!1025) )
))
(declare-fun thiss!22590 () LexerInterface!1027)

(declare-fun ruleValid!339 (LexerInterface!1027 Rule!2082) Bool)

(assert (=> b!589564 (ruleValid!339 thiss!22590 (rule!1907 token!491))))

(declare-fun lt!249832 () Unit!10563)

(declare-datatypes ((List!5830 0))(
  ( (Nil!5820) (Cons!5820 (h!11221 Rule!2082) (t!78831 List!5830)) )
))
(declare-fun rules!3103 () List!5830)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!186 (LexerInterface!1027 Rule!2082 List!5830) Unit!10563)

(assert (=> b!589564 (= lt!249832 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!186 thiss!22590 (rule!1907 token!491) rules!3103))))

(assert (=> b!589564 (ruleValid!339 thiss!22590 (rule!1907 (_1!3648 (v!16374 lt!249846))))))

(declare-fun lt!249836 () Unit!10563)

(assert (=> b!589564 (= lt!249836 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!186 thiss!22590 (rule!1907 (_1!3648 (v!16374 lt!249846))) rules!3103))))

(declare-fun input!2705 () List!5829)

(declare-fun isPrefix!769 (List!5829 List!5829) Bool)

(assert (=> b!589564 (isPrefix!769 input!2705 input!2705)))

(declare-fun lt!249841 () Unit!10563)

(declare-fun lemmaIsPrefixRefl!505 (List!5829 List!5829) Unit!10563)

(assert (=> b!589564 (= lt!249841 (lemmaIsPrefixRefl!505 input!2705 input!2705))))

(declare-fun lt!249837 () List!5829)

(assert (=> b!589564 (= (_2!3648 (v!16374 lt!249846)) lt!249837)))

(declare-fun lt!249838 () Unit!10563)

(declare-fun lemmaSamePrefixThenSameSuffix!482 (List!5829 List!5829 List!5829 List!5829 List!5829) Unit!10563)

(assert (=> b!589564 (= lt!249838 (lemmaSamePrefixThenSameSuffix!482 lt!249848 (_2!3648 (v!16374 lt!249846)) lt!249848 lt!249837 input!2705))))

(declare-fun getSuffix!286 (List!5829 List!5829) List!5829)

(assert (=> b!589564 (= lt!249837 (getSuffix!286 input!2705 lt!249848))))

(declare-fun ++!1629 (List!5829 List!5829) List!5829)

(assert (=> b!589564 (isPrefix!769 lt!249848 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846))))))

(declare-fun lt!249844 () Unit!10563)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!614 (List!5829 List!5829) Unit!10563)

(assert (=> b!589564 (= lt!249844 (lemmaConcatTwoListThenFirstIsPrefix!614 lt!249848 (_2!3648 (v!16374 lt!249846))))))

(declare-fun lt!249842 () Unit!10563)

(declare-fun lemmaCharactersSize!200 (Token!2018) Unit!10563)

(assert (=> b!589564 (= lt!249842 (lemmaCharactersSize!200 token!491))))

(declare-fun lt!249839 () Unit!10563)

(assert (=> b!589564 (= lt!249839 (lemmaCharactersSize!200 (_1!3648 (v!16374 lt!249846))))))

(declare-fun lt!249845 () Unit!10563)

(assert (=> b!589564 (= lt!249845 e!356453)))

(declare-fun c!110044 () Bool)

(declare-fun lt!249831 () List!5829)

(declare-fun size!4613 (List!5829) Int)

(assert (=> b!589564 (= c!110044 (> (size!4613 lt!249848) (size!4613 lt!249831)))))

(declare-fun list!2432 (BalanceConc!3724) List!5829)

(declare-fun charsOf!770 (Token!2018) BalanceConc!3724)

(assert (=> b!589564 (= lt!249848 (list!2432 (charsOf!770 (_1!3648 (v!16374 lt!249846)))))))

(assert (=> b!589564 (= lt!249846 (Some!1491 (v!16374 lt!249846)))))

(declare-fun lt!249843 () Unit!10563)

(declare-fun suffix!1342 () List!5829)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!214 (List!5829 List!5829 List!5829 List!5829) Unit!10563)

(assert (=> b!589564 (= lt!249843 (lemmaConcatSameAndSameSizesThenSameLists!214 lt!249831 suffix!1342 input!2705 suffix!1342))))

(assert (=> b!589565 (= e!356443 (and tp!183918 tp!183912))))

(declare-fun b!589566 () Bool)

(declare-fun e!356456 () Bool)

(declare-fun e!356445 () Bool)

(declare-fun tp!183919 () Bool)

(assert (=> b!589566 (= e!356456 (and tp!183919 (inv!7357 (tag!1403 (h!11221 rules!3103))) (inv!7360 (transformation!1141 (h!11221 rules!3103))) e!356445))))

(declare-fun b!589567 () Bool)

(declare-fun res!254114 () Bool)

(declare-fun e!356444 () Bool)

(assert (=> b!589567 (=> (not res!254114) (not e!356444))))

(declare-fun rulesInvariant!990 (LexerInterface!1027 List!5830) Bool)

(assert (=> b!589567 (= res!254114 (rulesInvariant!990 thiss!22590 rules!3103))))

(declare-fun b!589568 () Bool)

(declare-fun e!356447 () Bool)

(declare-fun tp!183920 () Bool)

(declare-fun inv!21 (TokenValue!1165) Bool)

(assert (=> b!589568 (= e!356447 (and (inv!21 (value!37385 token!491)) e!356454 tp!183920))))

(declare-fun b!589569 () Bool)

(declare-fun res!254113 () Bool)

(assert (=> b!589569 (=> (not res!254113) (not e!356444))))

(declare-fun isEmpty!4201 (List!5829) Bool)

(assert (=> b!589569 (= res!254113 (not (isEmpty!4201 input!2705)))))

(declare-fun b!589570 () Bool)

(declare-fun res!254109 () Bool)

(assert (=> b!589570 (=> (not res!254109) (not e!356451))))

(declare-fun lt!249835 () List!5829)

(assert (=> b!589570 (= res!254109 (= (++!1629 lt!249831 suffix!1342) lt!249835))))

(declare-fun res!254110 () Bool)

(assert (=> start!55144 (=> (not res!254110) (not e!356444))))

(get-info :version)

(assert (=> start!55144 (= res!254110 ((_ is Lexer!1025) thiss!22590))))

(assert (=> start!55144 e!356444))

(declare-fun e!356450 () Bool)

(assert (=> start!55144 e!356450))

(declare-fun e!356457 () Bool)

(assert (=> start!55144 e!356457))

(declare-fun inv!7361 (Token!2018) Bool)

(assert (=> start!55144 (and (inv!7361 token!491) e!356447)))

(assert (=> start!55144 true))

(declare-fun e!356458 () Bool)

(assert (=> start!55144 e!356458))

(assert (=> b!589571 (= e!356445 (and tp!183914 tp!183915))))

(declare-fun b!589572 () Bool)

(declare-fun e!356459 () Bool)

(declare-fun e!356448 () Bool)

(assert (=> b!589572 (= e!356459 e!356448)))

(declare-fun res!254107 () Bool)

(assert (=> b!589572 (=> (not res!254107) (not e!356448))))

(declare-fun lt!249840 () Option!1492)

(declare-fun isDefined!1303 (Option!1492) Bool)

(assert (=> b!589572 (= res!254107 (isDefined!1303 lt!249840))))

(declare-fun maxPrefix!725 (LexerInterface!1027 List!5830 List!5829) Option!1492)

(assert (=> b!589572 (= lt!249840 (maxPrefix!725 thiss!22590 rules!3103 lt!249835))))

(assert (=> b!589572 (= lt!249835 (++!1629 input!2705 suffix!1342))))

(declare-fun b!589573 () Bool)

(declare-fun e!356446 () Bool)

(assert (=> b!589573 (= e!356446 e!356451)))

(declare-fun res!254112 () Bool)

(assert (=> b!589573 (=> (not res!254112) (not e!356451))))

(assert (=> b!589573 (= res!254112 ((_ is Some!1491) lt!249846))))

(assert (=> b!589573 (= lt!249846 (maxPrefix!725 thiss!22590 rules!3103 input!2705))))

(declare-fun b!589574 () Bool)

(assert (=> b!589574 (= e!356444 e!356459)))

(declare-fun res!254111 () Bool)

(assert (=> b!589574 (=> (not res!254111) (not e!356459))))

(assert (=> b!589574 (= res!254111 (= lt!249831 input!2705))))

(assert (=> b!589574 (= lt!249831 (list!2432 (charsOf!770 token!491)))))

(declare-fun b!589575 () Bool)

(declare-fun tp_is_empty!3305 () Bool)

(declare-fun tp!183913 () Bool)

(assert (=> b!589575 (= e!356450 (and tp_is_empty!3305 tp!183913))))

(declare-fun b!589576 () Bool)

(declare-fun tp!183916 () Bool)

(assert (=> b!589576 (= e!356457 (and e!356456 tp!183916))))

(declare-fun b!589577 () Bool)

(declare-fun tp!183917 () Bool)

(assert (=> b!589577 (= e!356458 (and tp_is_empty!3305 tp!183917))))

(declare-fun b!589578 () Bool)

(declare-fun res!254108 () Bool)

(assert (=> b!589578 (=> (not res!254108) (not e!356444))))

(declare-fun isEmpty!4202 (List!5830) Bool)

(assert (=> b!589578 (= res!254108 (not (isEmpty!4202 rules!3103)))))

(declare-fun b!589579 () Bool)

(assert (=> b!589579 (= e!356448 e!356446)))

(declare-fun res!254106 () Bool)

(assert (=> b!589579 (=> (not res!254106) (not e!356446))))

(declare-fun lt!249847 () tuple2!6768)

(assert (=> b!589579 (= res!254106 (and (= (_1!3648 lt!249847) token!491) (= (_2!3648 lt!249847) suffix!1342)))))

(declare-fun get!2226 (Option!1492) tuple2!6768)

(assert (=> b!589579 (= lt!249847 (get!2226 lt!249840))))

(assert (= (and start!55144 res!254110) b!589578))

(assert (= (and b!589578 res!254108) b!589567))

(assert (= (and b!589567 res!254114) b!589569))

(assert (= (and b!589569 res!254113) b!589574))

(assert (= (and b!589574 res!254111) b!589572))

(assert (= (and b!589572 res!254107) b!589579))

(assert (= (and b!589579 res!254106) b!589573))

(assert (= (and b!589573 res!254112) b!589570))

(assert (= (and b!589570 res!254109) b!589564))

(assert (= (and b!589564 c!110044) b!589563))

(assert (= (and b!589564 (not c!110044)) b!589562))

(assert (= (and start!55144 ((_ is Cons!5819) suffix!1342)) b!589575))

(assert (= b!589566 b!589571))

(assert (= b!589576 b!589566))

(assert (= (and start!55144 ((_ is Cons!5820) rules!3103)) b!589576))

(assert (= b!589561 b!589565))

(assert (= b!589568 b!589561))

(assert (= start!55144 b!589568))

(assert (= (and start!55144 ((_ is Cons!5819) input!2705)) b!589577))

(declare-fun m!850335 () Bool)

(assert (=> start!55144 m!850335))

(declare-fun m!850337 () Bool)

(assert (=> b!589561 m!850337))

(declare-fun m!850339 () Bool)

(assert (=> b!589561 m!850339))

(declare-fun m!850341 () Bool)

(assert (=> b!589567 m!850341))

(declare-fun m!850343 () Bool)

(assert (=> b!589569 m!850343))

(declare-fun m!850345 () Bool)

(assert (=> b!589574 m!850345))

(assert (=> b!589574 m!850345))

(declare-fun m!850347 () Bool)

(assert (=> b!589574 m!850347))

(declare-fun m!850349 () Bool)

(assert (=> b!589572 m!850349))

(declare-fun m!850351 () Bool)

(assert (=> b!589572 m!850351))

(declare-fun m!850353 () Bool)

(assert (=> b!589572 m!850353))

(declare-fun m!850355 () Bool)

(assert (=> b!589579 m!850355))

(declare-fun m!850357 () Bool)

(assert (=> b!589570 m!850357))

(declare-fun m!850359 () Bool)

(assert (=> b!589573 m!850359))

(declare-fun m!850361 () Bool)

(assert (=> b!589578 m!850361))

(declare-fun m!850363 () Bool)

(assert (=> b!589564 m!850363))

(declare-fun m!850365 () Bool)

(assert (=> b!589564 m!850365))

(declare-fun m!850367 () Bool)

(assert (=> b!589564 m!850367))

(declare-fun m!850369 () Bool)

(assert (=> b!589564 m!850369))

(declare-fun m!850371 () Bool)

(assert (=> b!589564 m!850371))

(declare-fun m!850373 () Bool)

(assert (=> b!589564 m!850373))

(declare-fun m!850375 () Bool)

(assert (=> b!589564 m!850375))

(declare-fun m!850377 () Bool)

(assert (=> b!589564 m!850377))

(assert (=> b!589564 m!850371))

(declare-fun m!850379 () Bool)

(assert (=> b!589564 m!850379))

(declare-fun m!850381 () Bool)

(assert (=> b!589564 m!850381))

(declare-fun m!850383 () Bool)

(assert (=> b!589564 m!850383))

(declare-fun m!850385 () Bool)

(assert (=> b!589564 m!850385))

(declare-fun m!850387 () Bool)

(assert (=> b!589564 m!850387))

(declare-fun m!850389 () Bool)

(assert (=> b!589564 m!850389))

(declare-fun m!850391 () Bool)

(assert (=> b!589564 m!850391))

(declare-fun m!850393 () Bool)

(assert (=> b!589564 m!850393))

(declare-fun m!850395 () Bool)

(assert (=> b!589564 m!850395))

(assert (=> b!589564 m!850367))

(declare-fun m!850397 () Bool)

(assert (=> b!589564 m!850397))

(declare-fun m!850399 () Bool)

(assert (=> b!589564 m!850399))

(assert (=> b!589564 m!850387))

(declare-fun m!850401 () Bool)

(assert (=> b!589564 m!850401))

(declare-fun m!850403 () Bool)

(assert (=> b!589564 m!850403))

(declare-fun m!850405 () Bool)

(assert (=> b!589564 m!850405))

(declare-fun m!850407 () Bool)

(assert (=> b!589566 m!850407))

(declare-fun m!850409 () Bool)

(assert (=> b!589566 m!850409))

(declare-fun m!850411 () Bool)

(assert (=> b!589568 m!850411))

(check-sat b_and!58095 b_and!58097 (not b_next!16545) b_and!58093 (not start!55144) (not b!589579) (not b!589564) (not b_next!16547) (not b_next!16543) (not b!589567) (not b!589569) (not b!589576) tp_is_empty!3305 (not b!589566) (not b!589573) (not b_next!16541) b_and!58091 (not b!589578) (not b!589577) (not b!589568) (not b!589561) (not b!589574) (not b!589570) (not b!589572) (not b!589575))
(check-sat b_and!58095 b_and!58097 (not b_next!16545) b_and!58093 (not b_next!16547) (not b_next!16543) (not b_next!16541) b_and!58091)
(get-model)

(declare-fun d!207310 () Bool)

(assert (=> d!207310 (= (inv!7357 (tag!1403 (rule!1907 token!491))) (= (mod (str.len (value!37384 (tag!1403 (rule!1907 token!491)))) 2) 0))))

(assert (=> b!589561 d!207310))

(declare-fun d!207312 () Bool)

(declare-fun res!254125 () Bool)

(declare-fun e!356462 () Bool)

(assert (=> d!207312 (=> (not res!254125) (not e!356462))))

(declare-fun semiInverseModEq!449 (Int Int) Bool)

(assert (=> d!207312 (= res!254125 (semiInverseModEq!449 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (toValue!2024 (transformation!1141 (rule!1907 token!491)))))))

(assert (=> d!207312 (= (inv!7360 (transformation!1141 (rule!1907 token!491))) e!356462)))

(declare-fun b!589582 () Bool)

(declare-fun equivClasses!432 (Int Int) Bool)

(assert (=> b!589582 (= e!356462 (equivClasses!432 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (toValue!2024 (transformation!1141 (rule!1907 token!491)))))))

(assert (= (and d!207312 res!254125) b!589582))

(declare-fun m!850413 () Bool)

(assert (=> d!207312 m!850413))

(declare-fun m!850415 () Bool)

(assert (=> b!589582 m!850415))

(assert (=> b!589561 d!207312))

(declare-fun lt!249854 () List!5829)

(declare-fun e!356480 () Bool)

(declare-fun b!589616 () Bool)

(assert (=> b!589616 (= e!356480 (or (not (= suffix!1342 Nil!5819)) (= lt!249854 lt!249831)))))

(declare-fun b!589615 () Bool)

(declare-fun res!254138 () Bool)

(assert (=> b!589615 (=> (not res!254138) (not e!356480))))

(assert (=> b!589615 (= res!254138 (= (size!4613 lt!249854) (+ (size!4613 lt!249831) (size!4613 suffix!1342))))))

(declare-fun b!589613 () Bool)

(declare-fun e!356479 () List!5829)

(assert (=> b!589613 (= e!356479 suffix!1342)))

(declare-fun b!589614 () Bool)

(assert (=> b!589614 (= e!356479 (Cons!5819 (h!11220 lt!249831) (++!1629 (t!78830 lt!249831) suffix!1342)))))

(declare-fun d!207318 () Bool)

(assert (=> d!207318 e!356480))

(declare-fun res!254139 () Bool)

(assert (=> d!207318 (=> (not res!254139) (not e!356480))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1047 (List!5829) (InoxSet C!3872))

(assert (=> d!207318 (= res!254139 (= (content!1047 lt!249854) ((_ map or) (content!1047 lt!249831) (content!1047 suffix!1342))))))

(assert (=> d!207318 (= lt!249854 e!356479)))

(declare-fun c!110056 () Bool)

(assert (=> d!207318 (= c!110056 ((_ is Nil!5819) lt!249831))))

(assert (=> d!207318 (= (++!1629 lt!249831 suffix!1342) lt!249854)))

(assert (= (and d!207318 c!110056) b!589613))

(assert (= (and d!207318 (not c!110056)) b!589614))

(assert (= (and d!207318 res!254139) b!589615))

(assert (= (and b!589615 res!254138) b!589616))

(declare-fun m!850429 () Bool)

(assert (=> b!589615 m!850429))

(assert (=> b!589615 m!850401))

(declare-fun m!850431 () Bool)

(assert (=> b!589615 m!850431))

(declare-fun m!850433 () Bool)

(assert (=> b!589614 m!850433))

(declare-fun m!850437 () Bool)

(assert (=> d!207318 m!850437))

(declare-fun m!850439 () Bool)

(assert (=> d!207318 m!850439))

(declare-fun m!850445 () Bool)

(assert (=> d!207318 m!850445))

(assert (=> b!589570 d!207318))

(declare-fun d!207324 () Bool)

(assert (=> d!207324 (= (isEmpty!4201 input!2705) ((_ is Nil!5819) input!2705))))

(assert (=> b!589569 d!207324))

(declare-fun d!207326 () Bool)

(assert (=> d!207326 (= (get!2226 lt!249840) (v!16374 lt!249840))))

(assert (=> b!589579 d!207326))

(declare-fun b!589643 () Bool)

(declare-fun res!254154 () Bool)

(declare-fun e!356500 () Bool)

(assert (=> b!589643 (=> res!254154 e!356500)))

(assert (=> b!589643 (= res!254154 (not ((_ is IntegerValue!3497) (value!37385 token!491))))))

(declare-fun e!356501 () Bool)

(assert (=> b!589643 (= e!356501 e!356500)))

(declare-fun b!589644 () Bool)

(declare-fun inv!17 (TokenValue!1165) Bool)

(assert (=> b!589644 (= e!356501 (inv!17 (value!37385 token!491)))))

(declare-fun b!589645 () Bool)

(declare-fun e!356499 () Bool)

(declare-fun inv!16 (TokenValue!1165) Bool)

(assert (=> b!589645 (= e!356499 (inv!16 (value!37385 token!491)))))

(declare-fun b!589646 () Bool)

(assert (=> b!589646 (= e!356499 e!356501)))

(declare-fun c!110063 () Bool)

(assert (=> b!589646 (= c!110063 ((_ is IntegerValue!3496) (value!37385 token!491)))))

(declare-fun b!589647 () Bool)

(declare-fun inv!15 (TokenValue!1165) Bool)

(assert (=> b!589647 (= e!356500 (inv!15 (value!37385 token!491)))))

(declare-fun d!207328 () Bool)

(declare-fun c!110064 () Bool)

(assert (=> d!207328 (= c!110064 ((_ is IntegerValue!3495) (value!37385 token!491)))))

(assert (=> d!207328 (= (inv!21 (value!37385 token!491)) e!356499)))

(assert (= (and d!207328 c!110064) b!589645))

(assert (= (and d!207328 (not c!110064)) b!589646))

(assert (= (and b!589646 c!110063) b!589644))

(assert (= (and b!589646 (not c!110063)) b!589643))

(assert (= (and b!589643 (not res!254154)) b!589647))

(declare-fun m!850451 () Bool)

(assert (=> b!589644 m!850451))

(declare-fun m!850453 () Bool)

(assert (=> b!589645 m!850453))

(declare-fun m!850455 () Bool)

(assert (=> b!589647 m!850455))

(assert (=> b!589568 d!207328))

(declare-fun d!207332 () Bool)

(assert (=> d!207332 (= (isEmpty!4202 rules!3103) ((_ is Nil!5820) rules!3103))))

(assert (=> b!589578 d!207332))

(declare-fun d!207334 () Bool)

(declare-fun res!254163 () Bool)

(declare-fun e!356507 () Bool)

(assert (=> d!207334 (=> (not res!254163) (not e!356507))))

(assert (=> d!207334 (= res!254163 (not (isEmpty!4201 (originalCharacters!1180 token!491))))))

(assert (=> d!207334 (= (inv!7361 token!491) e!356507)))

(declare-fun b!589656 () Bool)

(declare-fun res!254164 () Bool)

(assert (=> b!589656 (=> (not res!254164) (not e!356507))))

(declare-fun dynLambda!3391 (Int TokenValue!1165) BalanceConc!3724)

(assert (=> b!589656 (= res!254164 (= (originalCharacters!1180 token!491) (list!2432 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491)))))))

(declare-fun b!589657 () Bool)

(assert (=> b!589657 (= e!356507 (= (size!4612 token!491) (size!4613 (originalCharacters!1180 token!491))))))

(assert (= (and d!207334 res!254163) b!589656))

(assert (= (and b!589656 res!254164) b!589657))

(declare-fun b_lambda!23219 () Bool)

(assert (=> (not b_lambda!23219) (not b!589656)))

(declare-fun t!78835 () Bool)

(declare-fun tb!51545 () Bool)

(assert (=> (and b!589571 (= (toChars!1883 (transformation!1141 (h!11221 rules!3103))) (toChars!1883 (transformation!1141 (rule!1907 token!491)))) t!78835) tb!51545))

(declare-fun b!589667 () Bool)

(declare-fun e!356513 () Bool)

(declare-fun tp!183926 () Bool)

(declare-fun inv!7364 (Conc!1858) Bool)

(assert (=> b!589667 (= e!356513 (and (inv!7364 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491)))) tp!183926))))

(declare-fun result!57802 () Bool)

(declare-fun inv!7365 (BalanceConc!3724) Bool)

(assert (=> tb!51545 (= result!57802 (and (inv!7365 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491))) e!356513))))

(assert (= tb!51545 b!589667))

(declare-fun m!850477 () Bool)

(assert (=> b!589667 m!850477))

(declare-fun m!850479 () Bool)

(assert (=> tb!51545 m!850479))

(assert (=> b!589656 t!78835))

(declare-fun b_and!58103 () Bool)

(assert (= b_and!58093 (and (=> t!78835 result!57802) b_and!58103)))

(declare-fun t!78839 () Bool)

(declare-fun tb!51549 () Bool)

(assert (=> (and b!589565 (= (toChars!1883 (transformation!1141 (rule!1907 token!491))) (toChars!1883 (transformation!1141 (rule!1907 token!491)))) t!78839) tb!51549))

(declare-fun result!57808 () Bool)

(assert (= result!57808 result!57802))

(assert (=> b!589656 t!78839))

(declare-fun b_and!58105 () Bool)

(assert (= b_and!58097 (and (=> t!78839 result!57808) b_and!58105)))

(declare-fun m!850481 () Bool)

(assert (=> d!207334 m!850481))

(declare-fun m!850483 () Bool)

(assert (=> b!589656 m!850483))

(assert (=> b!589656 m!850483))

(declare-fun m!850485 () Bool)

(assert (=> b!589656 m!850485))

(declare-fun m!850487 () Bool)

(assert (=> b!589657 m!850487))

(assert (=> start!55144 d!207334))

(declare-fun d!207340 () Bool)

(declare-fun res!254167 () Bool)

(declare-fun e!356519 () Bool)

(assert (=> d!207340 (=> (not res!254167) (not e!356519))))

(declare-fun rulesValid!413 (LexerInterface!1027 List!5830) Bool)

(assert (=> d!207340 (= res!254167 (rulesValid!413 thiss!22590 rules!3103))))

(assert (=> d!207340 (= (rulesInvariant!990 thiss!22590 rules!3103) e!356519)))

(declare-fun b!589676 () Bool)

(declare-datatypes ((List!5832 0))(
  ( (Nil!5822) (Cons!5822 (h!11223 String!7569) (t!78869 List!5832)) )
))
(declare-fun noDuplicateTag!413 (LexerInterface!1027 List!5830 List!5832) Bool)

(assert (=> b!589676 (= e!356519 (noDuplicateTag!413 thiss!22590 rules!3103 Nil!5822))))

(assert (= (and d!207340 res!254167) b!589676))

(declare-fun m!850493 () Bool)

(assert (=> d!207340 m!850493))

(declare-fun m!850495 () Bool)

(assert (=> b!589676 m!850495))

(assert (=> b!589567 d!207340))

(declare-fun d!207346 () Bool)

(assert (=> d!207346 (= (inv!7357 (tag!1403 (h!11221 rules!3103))) (= (mod (str.len (value!37384 (tag!1403 (h!11221 rules!3103)))) 2) 0))))

(assert (=> b!589566 d!207346))

(declare-fun d!207348 () Bool)

(declare-fun res!254168 () Bool)

(declare-fun e!356520 () Bool)

(assert (=> d!207348 (=> (not res!254168) (not e!356520))))

(assert (=> d!207348 (= res!254168 (semiInverseModEq!449 (toChars!1883 (transformation!1141 (h!11221 rules!3103))) (toValue!2024 (transformation!1141 (h!11221 rules!3103)))))))

(assert (=> d!207348 (= (inv!7360 (transformation!1141 (h!11221 rules!3103))) e!356520)))

(declare-fun b!589677 () Bool)

(assert (=> b!589677 (= e!356520 (equivClasses!432 (toChars!1883 (transformation!1141 (h!11221 rules!3103))) (toValue!2024 (transformation!1141 (h!11221 rules!3103)))))))

(assert (= (and d!207348 res!254168) b!589677))

(declare-fun m!850497 () Bool)

(assert (=> d!207348 m!850497))

(declare-fun m!850499 () Bool)

(assert (=> b!589677 m!850499))

(assert (=> b!589566 d!207348))

(declare-fun d!207350 () Bool)

(declare-fun lt!249867 () Int)

(assert (=> d!207350 (>= lt!249867 0)))

(declare-fun e!356528 () Int)

(assert (=> d!207350 (= lt!249867 e!356528)))

(declare-fun c!110071 () Bool)

(assert (=> d!207350 (= c!110071 ((_ is Nil!5819) lt!249848))))

(assert (=> d!207350 (= (size!4613 lt!249848) lt!249867)))

(declare-fun b!589692 () Bool)

(assert (=> b!589692 (= e!356528 0)))

(declare-fun b!589693 () Bool)

(assert (=> b!589693 (= e!356528 (+ 1 (size!4613 (t!78830 lt!249848))))))

(assert (= (and d!207350 c!110071) b!589692))

(assert (= (and d!207350 (not c!110071)) b!589693))

(declare-fun m!850517 () Bool)

(assert (=> b!589693 m!850517))

(assert (=> b!589564 d!207350))

(declare-fun d!207356 () Bool)

(assert (=> d!207356 (= (size!4612 (_1!3648 (v!16374 lt!249846))) (size!4613 (originalCharacters!1180 (_1!3648 (v!16374 lt!249846)))))))

(declare-fun Unit!10571 () Unit!10563)

(assert (=> d!207356 (= (lemmaCharactersSize!200 (_1!3648 (v!16374 lt!249846))) Unit!10571)))

(declare-fun bs!70229 () Bool)

(assert (= bs!70229 d!207356))

(declare-fun m!850519 () Bool)

(assert (=> bs!70229 m!850519))

(assert (=> b!589564 d!207356))

(declare-fun d!207358 () Bool)

(declare-fun res!254187 () Bool)

(declare-fun e!356538 () Bool)

(assert (=> d!207358 (=> (not res!254187) (not e!356538))))

(declare-fun validRegex!502 (Regex!1475) Bool)

(assert (=> d!207358 (= res!254187 (validRegex!502 (regex!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))))

(assert (=> d!207358 (= (ruleValid!339 thiss!22590 (rule!1907 (_1!3648 (v!16374 lt!249846)))) e!356538)))

(declare-fun b!589710 () Bool)

(declare-fun res!254188 () Bool)

(assert (=> b!589710 (=> (not res!254188) (not e!356538))))

(declare-fun nullable!407 (Regex!1475) Bool)

(assert (=> b!589710 (= res!254188 (not (nullable!407 (regex!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))))))

(declare-fun b!589711 () Bool)

(assert (=> b!589711 (= e!356538 (not (= (tag!1403 (rule!1907 (_1!3648 (v!16374 lt!249846)))) (String!7570 ""))))))

(assert (= (and d!207358 res!254187) b!589710))

(assert (= (and b!589710 res!254188) b!589711))

(declare-fun m!850543 () Bool)

(assert (=> d!207358 m!850543))

(declare-fun m!850545 () Bool)

(assert (=> b!589710 m!850545))

(assert (=> b!589564 d!207358))

(declare-fun d!207370 () Bool)

(declare-fun e!356544 () Bool)

(assert (=> d!207370 e!356544))

(declare-fun res!254194 () Bool)

(assert (=> d!207370 (=> (not res!254194) (not e!356544))))

(assert (=> d!207370 (= res!254194 (semiInverseModEq!449 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))))))

(declare-fun Unit!10572 () Unit!10563)

(assert (=> d!207370 (= (lemmaInv!249 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) Unit!10572)))

(declare-fun b!589717 () Bool)

(assert (=> b!589717 (= e!356544 (equivClasses!432 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))))))

(assert (= (and d!207370 res!254194) b!589717))

(declare-fun m!850559 () Bool)

(assert (=> d!207370 m!850559))

(declare-fun m!850561 () Bool)

(assert (=> b!589717 m!850561))

(assert (=> b!589564 d!207370))

(declare-fun e!356546 () Bool)

(declare-fun b!589721 () Bool)

(declare-fun lt!249878 () List!5829)

(assert (=> b!589721 (= e!356546 (or (not (= (_2!3648 (v!16374 lt!249846)) Nil!5819)) (= lt!249878 lt!249848)))))

(declare-fun b!589720 () Bool)

(declare-fun res!254195 () Bool)

(assert (=> b!589720 (=> (not res!254195) (not e!356546))))

(assert (=> b!589720 (= res!254195 (= (size!4613 lt!249878) (+ (size!4613 lt!249848) (size!4613 (_2!3648 (v!16374 lt!249846))))))))

(declare-fun b!589718 () Bool)

(declare-fun e!356545 () List!5829)

(assert (=> b!589718 (= e!356545 (_2!3648 (v!16374 lt!249846)))))

(declare-fun b!589719 () Bool)

(assert (=> b!589719 (= e!356545 (Cons!5819 (h!11220 lt!249848) (++!1629 (t!78830 lt!249848) (_2!3648 (v!16374 lt!249846)))))))

(declare-fun d!207380 () Bool)

(assert (=> d!207380 e!356546))

(declare-fun res!254196 () Bool)

(assert (=> d!207380 (=> (not res!254196) (not e!356546))))

(assert (=> d!207380 (= res!254196 (= (content!1047 lt!249878) ((_ map or) (content!1047 lt!249848) (content!1047 (_2!3648 (v!16374 lt!249846))))))))

(assert (=> d!207380 (= lt!249878 e!356545)))

(declare-fun c!110075 () Bool)

(assert (=> d!207380 (= c!110075 ((_ is Nil!5819) lt!249848))))

(assert (=> d!207380 (= (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846))) lt!249878)))

(assert (= (and d!207380 c!110075) b!589718))

(assert (= (and d!207380 (not c!110075)) b!589719))

(assert (= (and d!207380 res!254196) b!589720))

(assert (= (and b!589720 res!254195) b!589721))

(declare-fun m!850563 () Bool)

(assert (=> b!589720 m!850563))

(assert (=> b!589720 m!850377))

(declare-fun m!850565 () Bool)

(assert (=> b!589720 m!850565))

(declare-fun m!850567 () Bool)

(assert (=> b!589719 m!850567))

(declare-fun m!850569 () Bool)

(assert (=> d!207380 m!850569))

(declare-fun m!850571 () Bool)

(assert (=> d!207380 m!850571))

(declare-fun m!850573 () Bool)

(assert (=> d!207380 m!850573))

(assert (=> b!589564 d!207380))

(declare-fun b!589738 () Bool)

(declare-fun e!356559 () Bool)

(assert (=> b!589738 (= e!356559 (>= (size!4613 input!2705) (size!4613 input!2705)))))

(declare-fun b!589736 () Bool)

(declare-fun res!254206 () Bool)

(declare-fun e!356558 () Bool)

(assert (=> b!589736 (=> (not res!254206) (not e!356558))))

(declare-fun head!1248 (List!5829) C!3872)

(assert (=> b!589736 (= res!254206 (= (head!1248 input!2705) (head!1248 input!2705)))))

(declare-fun b!589735 () Bool)

(declare-fun e!356560 () Bool)

(assert (=> b!589735 (= e!356560 e!356558)))

(declare-fun res!254208 () Bool)

(assert (=> b!589735 (=> (not res!254208) (not e!356558))))

(assert (=> b!589735 (= res!254208 (not ((_ is Nil!5819) input!2705)))))

(declare-fun d!207382 () Bool)

(assert (=> d!207382 e!356559))

(declare-fun res!254207 () Bool)

(assert (=> d!207382 (=> res!254207 e!356559)))

(declare-fun lt!249892 () Bool)

(assert (=> d!207382 (= res!254207 (not lt!249892))))

(assert (=> d!207382 (= lt!249892 e!356560)))

(declare-fun res!254209 () Bool)

(assert (=> d!207382 (=> res!254209 e!356560)))

(assert (=> d!207382 (= res!254209 ((_ is Nil!5819) input!2705))))

(assert (=> d!207382 (= (isPrefix!769 input!2705 input!2705) lt!249892)))

(declare-fun b!589737 () Bool)

(declare-fun tail!777 (List!5829) List!5829)

(assert (=> b!589737 (= e!356558 (isPrefix!769 (tail!777 input!2705) (tail!777 input!2705)))))

(assert (= (and d!207382 (not res!254209)) b!589735))

(assert (= (and b!589735 res!254208) b!589736))

(assert (= (and b!589736 res!254206) b!589737))

(assert (= (and d!207382 (not res!254207)) b!589738))

(declare-fun m!850597 () Bool)

(assert (=> b!589738 m!850597))

(assert (=> b!589738 m!850597))

(declare-fun m!850599 () Bool)

(assert (=> b!589736 m!850599))

(assert (=> b!589736 m!850599))

(declare-fun m!850601 () Bool)

(assert (=> b!589737 m!850601))

(assert (=> b!589737 m!850601))

(assert (=> b!589737 m!850601))

(assert (=> b!589737 m!850601))

(declare-fun m!850603 () Bool)

(assert (=> b!589737 m!850603))

(assert (=> b!589564 d!207382))

(declare-fun d!207400 () Bool)

(declare-fun res!254210 () Bool)

(declare-fun e!356561 () Bool)

(assert (=> d!207400 (=> (not res!254210) (not e!356561))))

(assert (=> d!207400 (= res!254210 (validRegex!502 (regex!1141 (rule!1907 token!491))))))

(assert (=> d!207400 (= (ruleValid!339 thiss!22590 (rule!1907 token!491)) e!356561)))

(declare-fun b!589739 () Bool)

(declare-fun res!254211 () Bool)

(assert (=> b!589739 (=> (not res!254211) (not e!356561))))

(assert (=> b!589739 (= res!254211 (not (nullable!407 (regex!1141 (rule!1907 token!491)))))))

(declare-fun b!589740 () Bool)

(assert (=> b!589740 (= e!356561 (not (= (tag!1403 (rule!1907 token!491)) (String!7570 ""))))))

(assert (= (and d!207400 res!254210) b!589739))

(assert (= (and b!589739 res!254211) b!589740))

(declare-fun m!850605 () Bool)

(assert (=> d!207400 m!850605))

(declare-fun m!850607 () Bool)

(assert (=> b!589739 m!850607))

(assert (=> b!589564 d!207400))

(declare-fun d!207402 () Bool)

(declare-fun fromListB!576 (List!5829) BalanceConc!3724)

(assert (=> d!207402 (= (seqFromList!1317 lt!249848) (fromListB!576 lt!249848))))

(declare-fun bs!70240 () Bool)

(assert (= bs!70240 d!207402))

(declare-fun m!850609 () Bool)

(assert (=> bs!70240 m!850609))

(assert (=> b!589564 d!207402))

(declare-fun b!589744 () Bool)

(declare-fun e!356563 () Bool)

(assert (=> b!589744 (= e!356563 (>= (size!4613 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846)))) (size!4613 lt!249848)))))

(declare-fun b!589742 () Bool)

(declare-fun res!254212 () Bool)

(declare-fun e!356562 () Bool)

(assert (=> b!589742 (=> (not res!254212) (not e!356562))))

(assert (=> b!589742 (= res!254212 (= (head!1248 lt!249848) (head!1248 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846))))))))

(declare-fun b!589741 () Bool)

(declare-fun e!356564 () Bool)

(assert (=> b!589741 (= e!356564 e!356562)))

(declare-fun res!254214 () Bool)

(assert (=> b!589741 (=> (not res!254214) (not e!356562))))

(assert (=> b!589741 (= res!254214 (not ((_ is Nil!5819) (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846))))))))

(declare-fun d!207404 () Bool)

(assert (=> d!207404 e!356563))

(declare-fun res!254213 () Bool)

(assert (=> d!207404 (=> res!254213 e!356563)))

(declare-fun lt!249893 () Bool)

(assert (=> d!207404 (= res!254213 (not lt!249893))))

(assert (=> d!207404 (= lt!249893 e!356564)))

(declare-fun res!254215 () Bool)

(assert (=> d!207404 (=> res!254215 e!356564)))

(assert (=> d!207404 (= res!254215 ((_ is Nil!5819) lt!249848))))

(assert (=> d!207404 (= (isPrefix!769 lt!249848 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846)))) lt!249893)))

(declare-fun b!589743 () Bool)

(assert (=> b!589743 (= e!356562 (isPrefix!769 (tail!777 lt!249848) (tail!777 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846))))))))

(assert (= (and d!207404 (not res!254215)) b!589741))

(assert (= (and b!589741 res!254214) b!589742))

(assert (= (and b!589742 res!254212) b!589743))

(assert (= (and d!207404 (not res!254213)) b!589744))

(assert (=> b!589744 m!850387))

(declare-fun m!850611 () Bool)

(assert (=> b!589744 m!850611))

(assert (=> b!589744 m!850377))

(declare-fun m!850613 () Bool)

(assert (=> b!589742 m!850613))

(assert (=> b!589742 m!850387))

(declare-fun m!850615 () Bool)

(assert (=> b!589742 m!850615))

(declare-fun m!850617 () Bool)

(assert (=> b!589743 m!850617))

(assert (=> b!589743 m!850387))

(declare-fun m!850619 () Bool)

(assert (=> b!589743 m!850619))

(assert (=> b!589743 m!850617))

(assert (=> b!589743 m!850619))

(declare-fun m!850621 () Bool)

(assert (=> b!589743 m!850621))

(assert (=> b!589564 d!207404))

(declare-fun d!207406 () Bool)

(assert (=> d!207406 (and (= lt!249831 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!249896 () Unit!10563)

(declare-fun choose!4253 (List!5829 List!5829 List!5829 List!5829) Unit!10563)

(assert (=> d!207406 (= lt!249896 (choose!4253 lt!249831 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!207406 (= (++!1629 lt!249831 suffix!1342) (++!1629 input!2705 suffix!1342))))

(assert (=> d!207406 (= (lemmaConcatSameAndSameSizesThenSameLists!214 lt!249831 suffix!1342 input!2705 suffix!1342) lt!249896)))

(declare-fun bs!70241 () Bool)

(assert (= bs!70241 d!207406))

(declare-fun m!850623 () Bool)

(assert (=> bs!70241 m!850623))

(assert (=> bs!70241 m!850357))

(assert (=> bs!70241 m!850353))

(assert (=> b!589564 d!207406))

(declare-fun d!207408 () Bool)

(assert (=> d!207408 (isPrefix!769 input!2705 input!2705)))

(declare-fun lt!249899 () Unit!10563)

(declare-fun choose!4254 (List!5829 List!5829) Unit!10563)

(assert (=> d!207408 (= lt!249899 (choose!4254 input!2705 input!2705))))

(assert (=> d!207408 (= (lemmaIsPrefixRefl!505 input!2705 input!2705) lt!249899)))

(declare-fun bs!70242 () Bool)

(assert (= bs!70242 d!207408))

(assert (=> bs!70242 m!850373))

(declare-fun m!850625 () Bool)

(assert (=> bs!70242 m!850625))

(assert (=> b!589564 d!207408))

(declare-fun d!207410 () Bool)

(assert (=> d!207410 (ruleValid!339 thiss!22590 (rule!1907 (_1!3648 (v!16374 lt!249846))))))

(declare-fun lt!249912 () Unit!10563)

(declare-fun choose!4255 (LexerInterface!1027 Rule!2082 List!5830) Unit!10563)

(assert (=> d!207410 (= lt!249912 (choose!4255 thiss!22590 (rule!1907 (_1!3648 (v!16374 lt!249846))) rules!3103))))

(declare-fun contains!1371 (List!5830 Rule!2082) Bool)

(assert (=> d!207410 (contains!1371 rules!3103 (rule!1907 (_1!3648 (v!16374 lt!249846))))))

(assert (=> d!207410 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!186 thiss!22590 (rule!1907 (_1!3648 (v!16374 lt!249846))) rules!3103) lt!249912)))

(declare-fun bs!70243 () Bool)

(assert (= bs!70243 d!207410))

(assert (=> bs!70243 m!850365))

(declare-fun m!850627 () Bool)

(assert (=> bs!70243 m!850627))

(declare-fun m!850629 () Bool)

(assert (=> bs!70243 m!850629))

(assert (=> b!589564 d!207410))

(declare-fun d!207412 () Bool)

(declare-fun e!356569 () Bool)

(assert (=> d!207412 e!356569))

(declare-fun res!254218 () Bool)

(assert (=> d!207412 (=> (not res!254218) (not e!356569))))

(assert (=> d!207412 (= res!254218 (semiInverseModEq!449 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (toValue!2024 (transformation!1141 (rule!1907 token!491)))))))

(declare-fun Unit!10573 () Unit!10563)

(assert (=> d!207412 (= (lemmaInv!249 (transformation!1141 (rule!1907 token!491))) Unit!10573)))

(declare-fun b!589750 () Bool)

(assert (=> b!589750 (= e!356569 (equivClasses!432 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (toValue!2024 (transformation!1141 (rule!1907 token!491)))))))

(assert (= (and d!207412 res!254218) b!589750))

(assert (=> d!207412 m!850413))

(assert (=> b!589750 m!850415))

(assert (=> b!589564 d!207412))

(declare-fun d!207414 () Bool)

(assert (=> d!207414 (= (size!4612 token!491) (size!4613 (originalCharacters!1180 token!491)))))

(declare-fun Unit!10574 () Unit!10563)

(assert (=> d!207414 (= (lemmaCharactersSize!200 token!491) Unit!10574)))

(declare-fun bs!70244 () Bool)

(assert (= bs!70244 d!207414))

(assert (=> bs!70244 m!850487))

(assert (=> b!589564 d!207414))

(declare-fun d!207416 () Bool)

(declare-fun dynLambda!3392 (Int BalanceConc!3724) TokenValue!1165)

(assert (=> d!207416 (= (apply!1394 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))) (seqFromList!1317 lt!249848)) (dynLambda!3392 (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (seqFromList!1317 lt!249848)))))

(declare-fun b_lambda!23223 () Bool)

(assert (=> (not b_lambda!23223) (not d!207416)))

(declare-fun tb!51555 () Bool)

(declare-fun t!78845 () Bool)

(assert (=> (and b!589571 (= (toValue!2024 (transformation!1141 (h!11221 rules!3103))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))) t!78845) tb!51555))

(declare-fun result!57816 () Bool)

(assert (=> tb!51555 (= result!57816 (inv!21 (dynLambda!3392 (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (seqFromList!1317 lt!249848))))))

(declare-fun m!850631 () Bool)

(assert (=> tb!51555 m!850631))

(assert (=> d!207416 t!78845))

(declare-fun b_and!58111 () Bool)

(assert (= b_and!58091 (and (=> t!78845 result!57816) b_and!58111)))

(declare-fun t!78847 () Bool)

(declare-fun tb!51557 () Bool)

(assert (=> (and b!589565 (= (toValue!2024 (transformation!1141 (rule!1907 token!491))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))) t!78847) tb!51557))

(declare-fun result!57820 () Bool)

(assert (= result!57820 result!57816))

(assert (=> d!207416 t!78847))

(declare-fun b_and!58113 () Bool)

(assert (= b_and!58095 (and (=> t!78847 result!57820) b_and!58113)))

(assert (=> d!207416 m!850371))

(declare-fun m!850633 () Bool)

(assert (=> d!207416 m!850633))

(assert (=> b!589564 d!207416))

(declare-fun d!207418 () Bool)

(declare-fun lt!249913 () Int)

(assert (=> d!207418 (>= lt!249913 0)))

(declare-fun e!356575 () Int)

(assert (=> d!207418 (= lt!249913 e!356575)))

(declare-fun c!110079 () Bool)

(assert (=> d!207418 (= c!110079 ((_ is Nil!5819) lt!249831))))

(assert (=> d!207418 (= (size!4613 lt!249831) lt!249913)))

(declare-fun b!589766 () Bool)

(assert (=> b!589766 (= e!356575 0)))

(declare-fun b!589767 () Bool)

(assert (=> b!589767 (= e!356575 (+ 1 (size!4613 (t!78830 lt!249831))))))

(assert (= (and d!207418 c!110079) b!589766))

(assert (= (and d!207418 (not c!110079)) b!589767))

(declare-fun m!850635 () Bool)

(assert (=> b!589767 m!850635))

(assert (=> b!589564 d!207418))

(declare-fun d!207420 () Bool)

(assert (=> d!207420 (= (_2!3648 (v!16374 lt!249846)) lt!249837)))

(declare-fun lt!249922 () Unit!10563)

(declare-fun choose!4256 (List!5829 List!5829 List!5829 List!5829 List!5829) Unit!10563)

(assert (=> d!207420 (= lt!249922 (choose!4256 lt!249848 (_2!3648 (v!16374 lt!249846)) lt!249848 lt!249837 input!2705))))

(assert (=> d!207420 (isPrefix!769 lt!249848 input!2705)))

(assert (=> d!207420 (= (lemmaSamePrefixThenSameSuffix!482 lt!249848 (_2!3648 (v!16374 lt!249846)) lt!249848 lt!249837 input!2705) lt!249922)))

(declare-fun bs!70245 () Bool)

(assert (= bs!70245 d!207420))

(declare-fun m!850679 () Bool)

(assert (=> bs!70245 m!850679))

(declare-fun m!850681 () Bool)

(assert (=> bs!70245 m!850681))

(assert (=> b!589564 d!207420))

(declare-fun d!207426 () Bool)

(declare-fun lt!249926 () BalanceConc!3724)

(assert (=> d!207426 (= (list!2432 lt!249926) (originalCharacters!1180 (_1!3648 (v!16374 lt!249846))))))

(assert (=> d!207426 (= lt!249926 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846)))))))

(assert (=> d!207426 (= (charsOf!770 (_1!3648 (v!16374 lt!249846))) lt!249926)))

(declare-fun b_lambda!23229 () Bool)

(assert (=> (not b_lambda!23229) (not d!207426)))

(declare-fun tb!51563 () Bool)

(declare-fun t!78853 () Bool)

(assert (=> (and b!589571 (= (toChars!1883 (transformation!1141 (h!11221 rules!3103))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))) t!78853) tb!51563))

(declare-fun b!589797 () Bool)

(declare-fun e!356588 () Bool)

(declare-fun tp!183928 () Bool)

(assert (=> b!589797 (= e!356588 (and (inv!7364 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846)))))) tp!183928))))

(declare-fun result!57826 () Bool)

(assert (=> tb!51563 (= result!57826 (and (inv!7365 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846))))) e!356588))))

(assert (= tb!51563 b!589797))

(declare-fun m!850697 () Bool)

(assert (=> b!589797 m!850697))

(declare-fun m!850699 () Bool)

(assert (=> tb!51563 m!850699))

(assert (=> d!207426 t!78853))

(declare-fun b_and!58123 () Bool)

(assert (= b_and!58103 (and (=> t!78853 result!57826) b_and!58123)))

(declare-fun tb!51565 () Bool)

(declare-fun t!78855 () Bool)

(assert (=> (and b!589565 (= (toChars!1883 (transformation!1141 (rule!1907 token!491))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))) t!78855) tb!51565))

(declare-fun result!57828 () Bool)

(assert (= result!57828 result!57826))

(assert (=> d!207426 t!78855))

(declare-fun b_and!58125 () Bool)

(assert (= b_and!58105 (and (=> t!78855 result!57828) b_and!58125)))

(declare-fun m!850701 () Bool)

(assert (=> d!207426 m!850701))

(declare-fun m!850703 () Bool)

(assert (=> d!207426 m!850703))

(assert (=> b!589564 d!207426))

(declare-fun d!207434 () Bool)

(assert (=> d!207434 (ruleValid!339 thiss!22590 (rule!1907 token!491))))

(declare-fun lt!249932 () Unit!10563)

(assert (=> d!207434 (= lt!249932 (choose!4255 thiss!22590 (rule!1907 token!491) rules!3103))))

(assert (=> d!207434 (contains!1371 rules!3103 (rule!1907 token!491))))

(assert (=> d!207434 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!186 thiss!22590 (rule!1907 token!491) rules!3103) lt!249932)))

(declare-fun bs!70247 () Bool)

(assert (= bs!70247 d!207434))

(assert (=> bs!70247 m!850375))

(declare-fun m!850705 () Bool)

(assert (=> bs!70247 m!850705))

(declare-fun m!850707 () Bool)

(assert (=> bs!70247 m!850707))

(assert (=> b!589564 d!207434))

(declare-fun d!207436 () Bool)

(assert (=> d!207436 (isPrefix!769 lt!249848 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846))))))

(declare-fun lt!249935 () Unit!10563)

(declare-fun choose!4257 (List!5829 List!5829) Unit!10563)

(assert (=> d!207436 (= lt!249935 (choose!4257 lt!249848 (_2!3648 (v!16374 lt!249846))))))

(assert (=> d!207436 (= (lemmaConcatTwoListThenFirstIsPrefix!614 lt!249848 (_2!3648 (v!16374 lt!249846))) lt!249935)))

(declare-fun bs!70248 () Bool)

(assert (= bs!70248 d!207436))

(assert (=> bs!70248 m!850387))

(assert (=> bs!70248 m!850387))

(assert (=> bs!70248 m!850389))

(declare-fun m!850735 () Bool)

(assert (=> bs!70248 m!850735))

(assert (=> b!589564 d!207436))

(declare-fun d!207442 () Bool)

(declare-fun list!2434 (Conc!1858) List!5829)

(assert (=> d!207442 (= (list!2432 (charsOf!770 (_1!3648 (v!16374 lt!249846)))) (list!2434 (c!110046 (charsOf!770 (_1!3648 (v!16374 lt!249846))))))))

(declare-fun bs!70249 () Bool)

(assert (= bs!70249 d!207442))

(declare-fun m!850741 () Bool)

(assert (=> bs!70249 m!850741))

(assert (=> b!589564 d!207442))

(declare-fun d!207452 () Bool)

(declare-fun lt!249938 () List!5829)

(assert (=> d!207452 (= (++!1629 lt!249848 lt!249938) input!2705)))

(declare-fun e!356616 () List!5829)

(assert (=> d!207452 (= lt!249938 e!356616)))

(declare-fun c!110085 () Bool)

(assert (=> d!207452 (= c!110085 ((_ is Cons!5819) lt!249848))))

(assert (=> d!207452 (>= (size!4613 input!2705) (size!4613 lt!249848))))

(assert (=> d!207452 (= (getSuffix!286 input!2705 lt!249848) lt!249938)))

(declare-fun b!589842 () Bool)

(assert (=> b!589842 (= e!356616 (getSuffix!286 (tail!777 input!2705) (t!78830 lt!249848)))))

(declare-fun b!589843 () Bool)

(assert (=> b!589843 (= e!356616 input!2705)))

(assert (= (and d!207452 c!110085) b!589842))

(assert (= (and d!207452 (not c!110085)) b!589843))

(declare-fun m!850747 () Bool)

(assert (=> d!207452 m!850747))

(assert (=> d!207452 m!850597))

(assert (=> d!207452 m!850377))

(assert (=> b!589842 m!850601))

(assert (=> b!589842 m!850601))

(declare-fun m!850749 () Bool)

(assert (=> b!589842 m!850749))

(assert (=> b!589564 d!207452))

(declare-fun d!207454 () Bool)

(assert (=> d!207454 (= (list!2432 (charsOf!770 token!491)) (list!2434 (c!110046 (charsOf!770 token!491))))))

(declare-fun bs!70250 () Bool)

(assert (= bs!70250 d!207454))

(declare-fun m!850751 () Bool)

(assert (=> bs!70250 m!850751))

(assert (=> b!589574 d!207454))

(declare-fun d!207456 () Bool)

(declare-fun lt!249939 () BalanceConc!3724)

(assert (=> d!207456 (= (list!2432 lt!249939) (originalCharacters!1180 token!491))))

(assert (=> d!207456 (= lt!249939 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491)))))

(assert (=> d!207456 (= (charsOf!770 token!491) lt!249939)))

(declare-fun b_lambda!23235 () Bool)

(assert (=> (not b_lambda!23235) (not d!207456)))

(assert (=> d!207456 t!78835))

(declare-fun b_and!58131 () Bool)

(assert (= b_and!58123 (and (=> t!78835 result!57802) b_and!58131)))

(assert (=> d!207456 t!78839))

(declare-fun b_and!58133 () Bool)

(assert (= b_and!58125 (and (=> t!78839 result!57808) b_and!58133)))

(declare-fun m!850753 () Bool)

(assert (=> d!207456 m!850753))

(assert (=> d!207456 m!850483))

(assert (=> b!589574 d!207456))

(declare-fun b!589862 () Bool)

(declare-fun res!254275 () Bool)

(declare-fun e!356623 () Bool)

(assert (=> b!589862 (=> (not res!254275) (not e!356623))))

(declare-fun lt!249950 () Option!1492)

(assert (=> b!589862 (= res!254275 (< (size!4613 (_2!3648 (get!2226 lt!249950))) (size!4613 input!2705)))))

(declare-fun b!589863 () Bool)

(declare-fun res!254271 () Bool)

(assert (=> b!589863 (=> (not res!254271) (not e!356623))))

(declare-fun matchR!610 (Regex!1475 List!5829) Bool)

(assert (=> b!589863 (= res!254271 (matchR!610 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))) (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950))))))))

(declare-fun b!589864 () Bool)

(assert (=> b!589864 (= e!356623 (contains!1371 rules!3103 (rule!1907 (_1!3648 (get!2226 lt!249950)))))))

(declare-fun b!589865 () Bool)

(declare-fun res!254274 () Bool)

(assert (=> b!589865 (=> (not res!254274) (not e!356623))))

(assert (=> b!589865 (= res!254274 (= (++!1629 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950)))) (_2!3648 (get!2226 lt!249950))) input!2705))))

(declare-fun bm!40271 () Bool)

(declare-fun call!40276 () Option!1492)

(declare-fun maxPrefixOneRule!414 (LexerInterface!1027 Rule!2082 List!5829) Option!1492)

(assert (=> bm!40271 (= call!40276 (maxPrefixOneRule!414 thiss!22590 (h!11221 rules!3103) input!2705))))

(declare-fun b!589866 () Bool)

(declare-fun res!254272 () Bool)

(assert (=> b!589866 (=> (not res!254272) (not e!356623))))

(assert (=> b!589866 (= res!254272 (= (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950)))) (originalCharacters!1180 (_1!3648 (get!2226 lt!249950)))))))

(declare-fun b!589867 () Bool)

(declare-fun e!356624 () Option!1492)

(declare-fun lt!249953 () Option!1492)

(declare-fun lt!249952 () Option!1492)

(assert (=> b!589867 (= e!356624 (ite (and ((_ is None!1491) lt!249953) ((_ is None!1491) lt!249952)) None!1491 (ite ((_ is None!1491) lt!249952) lt!249953 (ite ((_ is None!1491) lt!249953) lt!249952 (ite (>= (size!4612 (_1!3648 (v!16374 lt!249953))) (size!4612 (_1!3648 (v!16374 lt!249952)))) lt!249953 lt!249952)))))))

(assert (=> b!589867 (= lt!249953 call!40276)))

(assert (=> b!589867 (= lt!249952 (maxPrefix!725 thiss!22590 (t!78831 rules!3103) input!2705))))

(declare-fun b!589868 () Bool)

(assert (=> b!589868 (= e!356624 call!40276)))

(declare-fun d!207458 () Bool)

(declare-fun e!356625 () Bool)

(assert (=> d!207458 e!356625))

(declare-fun res!254277 () Bool)

(assert (=> d!207458 (=> res!254277 e!356625)))

(declare-fun isEmpty!4204 (Option!1492) Bool)

(assert (=> d!207458 (= res!254277 (isEmpty!4204 lt!249950))))

(assert (=> d!207458 (= lt!249950 e!356624)))

(declare-fun c!110088 () Bool)

(assert (=> d!207458 (= c!110088 (and ((_ is Cons!5820) rules!3103) ((_ is Nil!5820) (t!78831 rules!3103))))))

(declare-fun lt!249951 () Unit!10563)

(declare-fun lt!249954 () Unit!10563)

(assert (=> d!207458 (= lt!249951 lt!249954)))

(assert (=> d!207458 (isPrefix!769 input!2705 input!2705)))

(assert (=> d!207458 (= lt!249954 (lemmaIsPrefixRefl!505 input!2705 input!2705))))

(declare-fun rulesValidInductive!418 (LexerInterface!1027 List!5830) Bool)

(assert (=> d!207458 (rulesValidInductive!418 thiss!22590 rules!3103)))

(assert (=> d!207458 (= (maxPrefix!725 thiss!22590 rules!3103 input!2705) lt!249950)))

(declare-fun b!589869 () Bool)

(declare-fun res!254276 () Bool)

(assert (=> b!589869 (=> (not res!254276) (not e!356623))))

(assert (=> b!589869 (= res!254276 (= (value!37385 (_1!3648 (get!2226 lt!249950))) (apply!1394 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))) (seqFromList!1317 (originalCharacters!1180 (_1!3648 (get!2226 lt!249950)))))))))

(declare-fun b!589870 () Bool)

(assert (=> b!589870 (= e!356625 e!356623)))

(declare-fun res!254273 () Bool)

(assert (=> b!589870 (=> (not res!254273) (not e!356623))))

(assert (=> b!589870 (= res!254273 (isDefined!1303 lt!249950))))

(assert (= (and d!207458 c!110088) b!589868))

(assert (= (and d!207458 (not c!110088)) b!589867))

(assert (= (or b!589868 b!589867) bm!40271))

(assert (= (and d!207458 (not res!254277)) b!589870))

(assert (= (and b!589870 res!254273) b!589866))

(assert (= (and b!589866 res!254272) b!589862))

(assert (= (and b!589862 res!254275) b!589865))

(assert (= (and b!589865 res!254274) b!589869))

(assert (= (and b!589869 res!254276) b!589863))

(assert (= (and b!589863 res!254271) b!589864))

(declare-fun m!850755 () Bool)

(assert (=> b!589862 m!850755))

(declare-fun m!850757 () Bool)

(assert (=> b!589862 m!850757))

(assert (=> b!589862 m!850597))

(assert (=> b!589866 m!850755))

(declare-fun m!850759 () Bool)

(assert (=> b!589866 m!850759))

(assert (=> b!589866 m!850759))

(declare-fun m!850761 () Bool)

(assert (=> b!589866 m!850761))

(assert (=> b!589865 m!850755))

(assert (=> b!589865 m!850759))

(assert (=> b!589865 m!850759))

(assert (=> b!589865 m!850761))

(assert (=> b!589865 m!850761))

(declare-fun m!850763 () Bool)

(assert (=> b!589865 m!850763))

(declare-fun m!850765 () Bool)

(assert (=> b!589870 m!850765))

(declare-fun m!850767 () Bool)

(assert (=> d!207458 m!850767))

(assert (=> d!207458 m!850373))

(assert (=> d!207458 m!850399))

(declare-fun m!850769 () Bool)

(assert (=> d!207458 m!850769))

(assert (=> b!589869 m!850755))

(declare-fun m!850771 () Bool)

(assert (=> b!589869 m!850771))

(assert (=> b!589869 m!850771))

(declare-fun m!850773 () Bool)

(assert (=> b!589869 m!850773))

(declare-fun m!850775 () Bool)

(assert (=> bm!40271 m!850775))

(assert (=> b!589863 m!850755))

(assert (=> b!589863 m!850759))

(assert (=> b!589863 m!850759))

(assert (=> b!589863 m!850761))

(assert (=> b!589863 m!850761))

(declare-fun m!850777 () Bool)

(assert (=> b!589863 m!850777))

(assert (=> b!589864 m!850755))

(declare-fun m!850779 () Bool)

(assert (=> b!589864 m!850779))

(declare-fun m!850781 () Bool)

(assert (=> b!589867 m!850781))

(assert (=> b!589573 d!207458))

(declare-fun d!207460 () Bool)

(assert (=> d!207460 (= (isDefined!1303 lt!249840) (not (isEmpty!4204 lt!249840)))))

(declare-fun bs!70251 () Bool)

(assert (= bs!70251 d!207460))

(declare-fun m!850783 () Bool)

(assert (=> bs!70251 m!850783))

(assert (=> b!589572 d!207460))

(declare-fun b!589871 () Bool)

(declare-fun res!254282 () Bool)

(declare-fun e!356626 () Bool)

(assert (=> b!589871 (=> (not res!254282) (not e!356626))))

(declare-fun lt!249955 () Option!1492)

(assert (=> b!589871 (= res!254282 (< (size!4613 (_2!3648 (get!2226 lt!249955))) (size!4613 lt!249835)))))

(declare-fun b!589872 () Bool)

(declare-fun res!254278 () Bool)

(assert (=> b!589872 (=> (not res!254278) (not e!356626))))

(assert (=> b!589872 (= res!254278 (matchR!610 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))) (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955))))))))

(declare-fun b!589873 () Bool)

(assert (=> b!589873 (= e!356626 (contains!1371 rules!3103 (rule!1907 (_1!3648 (get!2226 lt!249955)))))))

(declare-fun b!589874 () Bool)

(declare-fun res!254281 () Bool)

(assert (=> b!589874 (=> (not res!254281) (not e!356626))))

(assert (=> b!589874 (= res!254281 (= (++!1629 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955)))) (_2!3648 (get!2226 lt!249955))) lt!249835))))

(declare-fun bm!40272 () Bool)

(declare-fun call!40277 () Option!1492)

(assert (=> bm!40272 (= call!40277 (maxPrefixOneRule!414 thiss!22590 (h!11221 rules!3103) lt!249835))))

(declare-fun b!589875 () Bool)

(declare-fun res!254279 () Bool)

(assert (=> b!589875 (=> (not res!254279) (not e!356626))))

(assert (=> b!589875 (= res!254279 (= (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955)))) (originalCharacters!1180 (_1!3648 (get!2226 lt!249955)))))))

(declare-fun b!589876 () Bool)

(declare-fun e!356627 () Option!1492)

(declare-fun lt!249958 () Option!1492)

(declare-fun lt!249957 () Option!1492)

(assert (=> b!589876 (= e!356627 (ite (and ((_ is None!1491) lt!249958) ((_ is None!1491) lt!249957)) None!1491 (ite ((_ is None!1491) lt!249957) lt!249958 (ite ((_ is None!1491) lt!249958) lt!249957 (ite (>= (size!4612 (_1!3648 (v!16374 lt!249958))) (size!4612 (_1!3648 (v!16374 lt!249957)))) lt!249958 lt!249957)))))))

(assert (=> b!589876 (= lt!249958 call!40277)))

(assert (=> b!589876 (= lt!249957 (maxPrefix!725 thiss!22590 (t!78831 rules!3103) lt!249835))))

(declare-fun b!589877 () Bool)

(assert (=> b!589877 (= e!356627 call!40277)))

(declare-fun d!207462 () Bool)

(declare-fun e!356628 () Bool)

(assert (=> d!207462 e!356628))

(declare-fun res!254284 () Bool)

(assert (=> d!207462 (=> res!254284 e!356628)))

(assert (=> d!207462 (= res!254284 (isEmpty!4204 lt!249955))))

(assert (=> d!207462 (= lt!249955 e!356627)))

(declare-fun c!110089 () Bool)

(assert (=> d!207462 (= c!110089 (and ((_ is Cons!5820) rules!3103) ((_ is Nil!5820) (t!78831 rules!3103))))))

(declare-fun lt!249956 () Unit!10563)

(declare-fun lt!249959 () Unit!10563)

(assert (=> d!207462 (= lt!249956 lt!249959)))

(assert (=> d!207462 (isPrefix!769 lt!249835 lt!249835)))

(assert (=> d!207462 (= lt!249959 (lemmaIsPrefixRefl!505 lt!249835 lt!249835))))

(assert (=> d!207462 (rulesValidInductive!418 thiss!22590 rules!3103)))

(assert (=> d!207462 (= (maxPrefix!725 thiss!22590 rules!3103 lt!249835) lt!249955)))

(declare-fun b!589878 () Bool)

(declare-fun res!254283 () Bool)

(assert (=> b!589878 (=> (not res!254283) (not e!356626))))

(assert (=> b!589878 (= res!254283 (= (value!37385 (_1!3648 (get!2226 lt!249955))) (apply!1394 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))) (seqFromList!1317 (originalCharacters!1180 (_1!3648 (get!2226 lt!249955)))))))))

(declare-fun b!589879 () Bool)

(assert (=> b!589879 (= e!356628 e!356626)))

(declare-fun res!254280 () Bool)

(assert (=> b!589879 (=> (not res!254280) (not e!356626))))

(assert (=> b!589879 (= res!254280 (isDefined!1303 lt!249955))))

(assert (= (and d!207462 c!110089) b!589877))

(assert (= (and d!207462 (not c!110089)) b!589876))

(assert (= (or b!589877 b!589876) bm!40272))

(assert (= (and d!207462 (not res!254284)) b!589879))

(assert (= (and b!589879 res!254280) b!589875))

(assert (= (and b!589875 res!254279) b!589871))

(assert (= (and b!589871 res!254282) b!589874))

(assert (= (and b!589874 res!254281) b!589878))

(assert (= (and b!589878 res!254283) b!589872))

(assert (= (and b!589872 res!254278) b!589873))

(declare-fun m!850785 () Bool)

(assert (=> b!589871 m!850785))

(declare-fun m!850787 () Bool)

(assert (=> b!589871 m!850787))

(declare-fun m!850789 () Bool)

(assert (=> b!589871 m!850789))

(assert (=> b!589875 m!850785))

(declare-fun m!850791 () Bool)

(assert (=> b!589875 m!850791))

(assert (=> b!589875 m!850791))

(declare-fun m!850793 () Bool)

(assert (=> b!589875 m!850793))

(assert (=> b!589874 m!850785))

(assert (=> b!589874 m!850791))

(assert (=> b!589874 m!850791))

(assert (=> b!589874 m!850793))

(assert (=> b!589874 m!850793))

(declare-fun m!850795 () Bool)

(assert (=> b!589874 m!850795))

(declare-fun m!850797 () Bool)

(assert (=> b!589879 m!850797))

(declare-fun m!850799 () Bool)

(assert (=> d!207462 m!850799))

(declare-fun m!850801 () Bool)

(assert (=> d!207462 m!850801))

(declare-fun m!850803 () Bool)

(assert (=> d!207462 m!850803))

(assert (=> d!207462 m!850769))

(assert (=> b!589878 m!850785))

(declare-fun m!850805 () Bool)

(assert (=> b!589878 m!850805))

(assert (=> b!589878 m!850805))

(declare-fun m!850807 () Bool)

(assert (=> b!589878 m!850807))

(declare-fun m!850809 () Bool)

(assert (=> bm!40272 m!850809))

(assert (=> b!589872 m!850785))

(assert (=> b!589872 m!850791))

(assert (=> b!589872 m!850791))

(assert (=> b!589872 m!850793))

(assert (=> b!589872 m!850793))

(declare-fun m!850811 () Bool)

(assert (=> b!589872 m!850811))

(assert (=> b!589873 m!850785))

(declare-fun m!850813 () Bool)

(assert (=> b!589873 m!850813))

(declare-fun m!850815 () Bool)

(assert (=> b!589876 m!850815))

(assert (=> b!589572 d!207462))

(declare-fun b!589883 () Bool)

(declare-fun e!356630 () Bool)

(declare-fun lt!249960 () List!5829)

(assert (=> b!589883 (= e!356630 (or (not (= suffix!1342 Nil!5819)) (= lt!249960 input!2705)))))

(declare-fun b!589882 () Bool)

(declare-fun res!254285 () Bool)

(assert (=> b!589882 (=> (not res!254285) (not e!356630))))

(assert (=> b!589882 (= res!254285 (= (size!4613 lt!249960) (+ (size!4613 input!2705) (size!4613 suffix!1342))))))

(declare-fun b!589880 () Bool)

(declare-fun e!356629 () List!5829)

(assert (=> b!589880 (= e!356629 suffix!1342)))

(declare-fun b!589881 () Bool)

(assert (=> b!589881 (= e!356629 (Cons!5819 (h!11220 input!2705) (++!1629 (t!78830 input!2705) suffix!1342)))))

(declare-fun d!207464 () Bool)

(assert (=> d!207464 e!356630))

(declare-fun res!254286 () Bool)

(assert (=> d!207464 (=> (not res!254286) (not e!356630))))

(assert (=> d!207464 (= res!254286 (= (content!1047 lt!249960) ((_ map or) (content!1047 input!2705) (content!1047 suffix!1342))))))

(assert (=> d!207464 (= lt!249960 e!356629)))

(declare-fun c!110090 () Bool)

(assert (=> d!207464 (= c!110090 ((_ is Nil!5819) input!2705))))

(assert (=> d!207464 (= (++!1629 input!2705 suffix!1342) lt!249960)))

(assert (= (and d!207464 c!110090) b!589880))

(assert (= (and d!207464 (not c!110090)) b!589881))

(assert (= (and d!207464 res!254286) b!589882))

(assert (= (and b!589882 res!254285) b!589883))

(declare-fun m!850817 () Bool)

(assert (=> b!589882 m!850817))

(assert (=> b!589882 m!850597))

(assert (=> b!589882 m!850431))

(declare-fun m!850819 () Bool)

(assert (=> b!589881 m!850819))

(declare-fun m!850821 () Bool)

(assert (=> d!207464 m!850821))

(declare-fun m!850823 () Bool)

(assert (=> d!207464 m!850823))

(assert (=> d!207464 m!850445))

(assert (=> b!589572 d!207464))

(declare-fun b!589888 () Bool)

(declare-fun e!356633 () Bool)

(declare-fun tp!183968 () Bool)

(assert (=> b!589888 (= e!356633 (and tp_is_empty!3305 tp!183968))))

(assert (=> b!589577 (= tp!183917 e!356633)))

(assert (= (and b!589577 ((_ is Cons!5819) (t!78830 input!2705))) b!589888))

(declare-fun b!589901 () Bool)

(declare-fun e!356636 () Bool)

(declare-fun tp!183981 () Bool)

(assert (=> b!589901 (= e!356636 tp!183981)))

(declare-fun b!589902 () Bool)

(declare-fun tp!183983 () Bool)

(declare-fun tp!183982 () Bool)

(assert (=> b!589902 (= e!356636 (and tp!183983 tp!183982))))

(declare-fun b!589900 () Bool)

(declare-fun tp!183979 () Bool)

(declare-fun tp!183980 () Bool)

(assert (=> b!589900 (= e!356636 (and tp!183979 tp!183980))))

(assert (=> b!589561 (= tp!183911 e!356636)))

(declare-fun b!589899 () Bool)

(assert (=> b!589899 (= e!356636 tp_is_empty!3305)))

(assert (= (and b!589561 ((_ is ElementMatch!1475) (regex!1141 (rule!1907 token!491)))) b!589899))

(assert (= (and b!589561 ((_ is Concat!2640) (regex!1141 (rule!1907 token!491)))) b!589900))

(assert (= (and b!589561 ((_ is Star!1475) (regex!1141 (rule!1907 token!491)))) b!589901))

(assert (= (and b!589561 ((_ is Union!1475) (regex!1141 (rule!1907 token!491)))) b!589902))

(declare-fun b!589905 () Bool)

(declare-fun e!356637 () Bool)

(declare-fun tp!183986 () Bool)

(assert (=> b!589905 (= e!356637 tp!183986)))

(declare-fun b!589906 () Bool)

(declare-fun tp!183988 () Bool)

(declare-fun tp!183987 () Bool)

(assert (=> b!589906 (= e!356637 (and tp!183988 tp!183987))))

(declare-fun b!589904 () Bool)

(declare-fun tp!183984 () Bool)

(declare-fun tp!183985 () Bool)

(assert (=> b!589904 (= e!356637 (and tp!183984 tp!183985))))

(assert (=> b!589566 (= tp!183919 e!356637)))

(declare-fun b!589903 () Bool)

(assert (=> b!589903 (= e!356637 tp_is_empty!3305)))

(assert (= (and b!589566 ((_ is ElementMatch!1475) (regex!1141 (h!11221 rules!3103)))) b!589903))

(assert (= (and b!589566 ((_ is Concat!2640) (regex!1141 (h!11221 rules!3103)))) b!589904))

(assert (= (and b!589566 ((_ is Star!1475) (regex!1141 (h!11221 rules!3103)))) b!589905))

(assert (= (and b!589566 ((_ is Union!1475) (regex!1141 (h!11221 rules!3103)))) b!589906))

(declare-fun b!589917 () Bool)

(declare-fun b_free!16537 () Bool)

(declare-fun b_next!16553 () Bool)

(assert (=> b!589917 (= b_free!16537 (not b_next!16553))))

(declare-fun tb!51573 () Bool)

(declare-fun t!78864 () Bool)

(assert (=> (and b!589917 (= (toValue!2024 (transformation!1141 (h!11221 (t!78831 rules!3103)))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))) t!78864) tb!51573))

(declare-fun result!57848 () Bool)

(assert (= result!57848 result!57816))

(assert (=> d!207416 t!78864))

(declare-fun tp!183999 () Bool)

(declare-fun b_and!58135 () Bool)

(assert (=> b!589917 (= tp!183999 (and (=> t!78864 result!57848) b_and!58135))))

(declare-fun b_free!16539 () Bool)

(declare-fun b_next!16555 () Bool)

(assert (=> b!589917 (= b_free!16539 (not b_next!16555))))

(declare-fun tb!51575 () Bool)

(declare-fun t!78866 () Bool)

(assert (=> (and b!589917 (= (toChars!1883 (transformation!1141 (h!11221 (t!78831 rules!3103)))) (toChars!1883 (transformation!1141 (rule!1907 token!491)))) t!78866) tb!51575))

(declare-fun result!57850 () Bool)

(assert (= result!57850 result!57802))

(assert (=> b!589656 t!78866))

(declare-fun t!78868 () Bool)

(declare-fun tb!51577 () Bool)

(assert (=> (and b!589917 (= (toChars!1883 (transformation!1141 (h!11221 (t!78831 rules!3103)))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))) t!78868) tb!51577))

(declare-fun result!57852 () Bool)

(assert (= result!57852 result!57826))

(assert (=> d!207426 t!78868))

(assert (=> d!207456 t!78866))

(declare-fun tp!183997 () Bool)

(declare-fun b_and!58137 () Bool)

(assert (=> b!589917 (= tp!183997 (and (=> t!78866 result!57850) (=> t!78868 result!57852) b_and!58137))))

(declare-fun e!356649 () Bool)

(assert (=> b!589917 (= e!356649 (and tp!183999 tp!183997))))

(declare-fun b!589916 () Bool)

(declare-fun e!356647 () Bool)

(declare-fun tp!184000 () Bool)

(assert (=> b!589916 (= e!356647 (and tp!184000 (inv!7357 (tag!1403 (h!11221 (t!78831 rules!3103)))) (inv!7360 (transformation!1141 (h!11221 (t!78831 rules!3103)))) e!356649))))

(declare-fun b!589915 () Bool)

(declare-fun e!356646 () Bool)

(declare-fun tp!183998 () Bool)

(assert (=> b!589915 (= e!356646 (and e!356647 tp!183998))))

(assert (=> b!589576 (= tp!183916 e!356646)))

(assert (= b!589916 b!589917))

(assert (= b!589915 b!589916))

(assert (= (and b!589576 ((_ is Cons!5820) (t!78831 rules!3103))) b!589915))

(declare-fun m!850825 () Bool)

(assert (=> b!589916 m!850825))

(declare-fun m!850827 () Bool)

(assert (=> b!589916 m!850827))

(declare-fun b!589918 () Bool)

(declare-fun e!356650 () Bool)

(declare-fun tp!184001 () Bool)

(assert (=> b!589918 (= e!356650 (and tp_is_empty!3305 tp!184001))))

(assert (=> b!589575 (= tp!183913 e!356650)))

(assert (= (and b!589575 ((_ is Cons!5819) (t!78830 suffix!1342))) b!589918))

(declare-fun b!589919 () Bool)

(declare-fun e!356651 () Bool)

(declare-fun tp!184002 () Bool)

(assert (=> b!589919 (= e!356651 (and tp_is_empty!3305 tp!184002))))

(assert (=> b!589568 (= tp!183920 e!356651)))

(assert (= (and b!589568 ((_ is Cons!5819) (originalCharacters!1180 token!491))) b!589919))

(declare-fun b_lambda!23237 () Bool)

(assert (= b_lambda!23219 (or (and b!589571 b_free!16527 (= (toChars!1883 (transformation!1141 (h!11221 rules!3103))) (toChars!1883 (transformation!1141 (rule!1907 token!491))))) (and b!589565 b_free!16531) (and b!589917 b_free!16539 (= (toChars!1883 (transformation!1141 (h!11221 (t!78831 rules!3103)))) (toChars!1883 (transformation!1141 (rule!1907 token!491))))) b_lambda!23237)))

(declare-fun b_lambda!23239 () Bool)

(assert (= b_lambda!23235 (or (and b!589571 b_free!16527 (= (toChars!1883 (transformation!1141 (h!11221 rules!3103))) (toChars!1883 (transformation!1141 (rule!1907 token!491))))) (and b!589565 b_free!16531) (and b!589917 b_free!16539 (= (toChars!1883 (transformation!1141 (h!11221 (t!78831 rules!3103)))) (toChars!1883 (transformation!1141 (rule!1907 token!491))))) b_lambda!23239)))

(check-sat (not b_lambda!23229) (not b!589882) (not b!589888) (not bm!40272) (not d!207400) (not b!589667) (not b!589615) (not tb!51555) tp_is_empty!3305 (not b!589657) (not d!207460) (not b!589744) (not b!589919) (not d!207452) (not b!589906) (not b!589875) (not d!207408) (not b!589867) (not b!589905) b_and!58113 (not b_next!16553) (not d!207334) (not b!589901) (not b_next!16555) (not b!589873) b_and!58133 (not b!589881) (not b!589737) (not b!589720) (not d!207406) (not b!589739) (not b!589719) (not b_lambda!23223) (not b_next!16545) (not tb!51563) (not b!589916) (not d!207312) (not b_next!16541) (not b!589900) (not b!589862) (not b!589876) (not d!207436) (not b_lambda!23237) (not b!589656) (not b!589904) (not b!589750) (not b!589743) (not b!589645) (not d!207412) (not b!589874) (not d!207402) (not d!207370) (not b_lambda!23239) (not b!589767) (not b!589742) b_and!58131 (not d!207414) (not b!589693) (not b!589717) (not b!589647) (not b!589866) (not b!589915) (not d!207462) (not b!589870) (not d!207340) (not b!589738) (not d!207380) (not d!207356) (not d!207456) (not d!207358) (not bm!40271) (not d!207458) (not b!589902) (not d!207434) (not b!589842) (not b!589879) (not b!589918) (not b_next!16547) b_and!58111 (not b!589871) (not b!589869) (not d!207464) (not b!589676) (not b!589614) (not b!589872) (not d!207410) (not d!207442) (not b!589644) (not b_next!16543) (not b!589863) (not d!207348) (not d!207318) b_and!58135 b_and!58137 (not d!207426) (not b!589864) (not d!207420) (not b!589736) (not d!207454) (not b!589582) (not b!589710) (not b!589865) (not tb!51545) (not b!589677) (not b!589797) (not b!589878))
(check-sat (not b_next!16545) (not b_next!16541) b_and!58131 (not b_next!16543) b_and!58113 (not b_next!16553) (not b_next!16555) b_and!58133 (not b_next!16547) b_and!58111 b_and!58135 b_and!58137)
(get-model)

(declare-fun b!589948 () Bool)

(declare-fun res!254308 () Bool)

(declare-fun e!356669 () Bool)

(assert (=> b!589948 (=> (not res!254308) (not e!356669))))

(assert (=> b!589948 (= res!254308 (isEmpty!4201 (tail!777 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950)))))))))

(declare-fun b!589949 () Bool)

(declare-fun e!356668 () Bool)

(declare-fun lt!249963 () Bool)

(assert (=> b!589949 (= e!356668 (not lt!249963))))

(declare-fun b!589950 () Bool)

(declare-fun e!356671 () Bool)

(declare-fun call!40280 () Bool)

(assert (=> b!589950 (= e!356671 (= lt!249963 call!40280))))

(declare-fun b!589951 () Bool)

(declare-fun e!356673 () Bool)

(assert (=> b!589951 (= e!356673 (not (= (head!1248 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950))))) (c!110045 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249950))))))))))

(declare-fun b!589952 () Bool)

(assert (=> b!589952 (= e!356669 (= (head!1248 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950))))) (c!110045 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))))))))

(declare-fun b!589953 () Bool)

(declare-fun e!356672 () Bool)

(assert (=> b!589953 (= e!356672 (nullable!407 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249950))))))))

(declare-fun b!589954 () Bool)

(declare-fun res!254307 () Bool)

(assert (=> b!589954 (=> res!254307 e!356673)))

(assert (=> b!589954 (= res!254307 (not (isEmpty!4201 (tail!777 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950))))))))))

(declare-fun b!589955 () Bool)

(declare-fun res!254304 () Bool)

(declare-fun e!356667 () Bool)

(assert (=> b!589955 (=> res!254304 e!356667)))

(assert (=> b!589955 (= res!254304 (not ((_ is ElementMatch!1475) (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))))))))

(assert (=> b!589955 (= e!356668 e!356667)))

(declare-fun b!589956 () Bool)

(declare-fun res!254306 () Bool)

(assert (=> b!589956 (=> (not res!254306) (not e!356669))))

(assert (=> b!589956 (= res!254306 (not call!40280))))

(declare-fun b!589957 () Bool)

(declare-fun derivativeStep!316 (Regex!1475 C!3872) Regex!1475)

(assert (=> b!589957 (= e!356672 (matchR!610 (derivativeStep!316 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))) (head!1248 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950)))))) (tail!777 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950)))))))))

(declare-fun b!589959 () Bool)

(declare-fun e!356670 () Bool)

(assert (=> b!589959 (= e!356670 e!356673)))

(declare-fun res!254305 () Bool)

(assert (=> b!589959 (=> res!254305 e!356673)))

(assert (=> b!589959 (= res!254305 call!40280)))

(declare-fun b!589960 () Bool)

(declare-fun res!254303 () Bool)

(assert (=> b!589960 (=> res!254303 e!356667)))

(assert (=> b!589960 (= res!254303 e!356669)))

(declare-fun res!254309 () Bool)

(assert (=> b!589960 (=> (not res!254309) (not e!356669))))

(assert (=> b!589960 (= res!254309 lt!249963)))

(declare-fun bm!40275 () Bool)

(assert (=> bm!40275 (= call!40280 (isEmpty!4201 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950))))))))

(declare-fun b!589961 () Bool)

(assert (=> b!589961 (= e!356671 e!356668)))

(declare-fun c!110098 () Bool)

(assert (=> b!589961 (= c!110098 ((_ is EmptyLang!1475) (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249950))))))))

(declare-fun d!207480 () Bool)

(assert (=> d!207480 e!356671))

(declare-fun c!110097 () Bool)

(assert (=> d!207480 (= c!110097 ((_ is EmptyExpr!1475) (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249950))))))))

(assert (=> d!207480 (= lt!249963 e!356672)))

(declare-fun c!110099 () Bool)

(assert (=> d!207480 (= c!110099 (isEmpty!4201 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950))))))))

(assert (=> d!207480 (validRegex!502 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))))))

(assert (=> d!207480 (= (matchR!610 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))) (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950))))) lt!249963)))

(declare-fun b!589958 () Bool)

(assert (=> b!589958 (= e!356667 e!356670)))

(declare-fun res!254310 () Bool)

(assert (=> b!589958 (=> (not res!254310) (not e!356670))))

(assert (=> b!589958 (= res!254310 (not lt!249963))))

(assert (= (and d!207480 c!110099) b!589953))

(assert (= (and d!207480 (not c!110099)) b!589957))

(assert (= (and d!207480 c!110097) b!589950))

(assert (= (and d!207480 (not c!110097)) b!589961))

(assert (= (and b!589961 c!110098) b!589949))

(assert (= (and b!589961 (not c!110098)) b!589955))

(assert (= (and b!589955 (not res!254304)) b!589960))

(assert (= (and b!589960 res!254309) b!589956))

(assert (= (and b!589956 res!254306) b!589948))

(assert (= (and b!589948 res!254308) b!589952))

(assert (= (and b!589960 (not res!254303)) b!589958))

(assert (= (and b!589958 res!254310) b!589959))

(assert (= (and b!589959 (not res!254305)) b!589954))

(assert (= (and b!589954 (not res!254307)) b!589951))

(assert (= (or b!589950 b!589956 b!589959) bm!40275))

(assert (=> b!589957 m!850761))

(declare-fun m!850835 () Bool)

(assert (=> b!589957 m!850835))

(assert (=> b!589957 m!850835))

(declare-fun m!850837 () Bool)

(assert (=> b!589957 m!850837))

(assert (=> b!589957 m!850761))

(declare-fun m!850839 () Bool)

(assert (=> b!589957 m!850839))

(assert (=> b!589957 m!850837))

(assert (=> b!589957 m!850839))

(declare-fun m!850841 () Bool)

(assert (=> b!589957 m!850841))

(assert (=> b!589948 m!850761))

(assert (=> b!589948 m!850839))

(assert (=> b!589948 m!850839))

(declare-fun m!850843 () Bool)

(assert (=> b!589948 m!850843))

(assert (=> b!589951 m!850761))

(assert (=> b!589951 m!850835))

(assert (=> b!589952 m!850761))

(assert (=> b!589952 m!850835))

(assert (=> d!207480 m!850761))

(declare-fun m!850845 () Bool)

(assert (=> d!207480 m!850845))

(declare-fun m!850847 () Bool)

(assert (=> d!207480 m!850847))

(assert (=> b!589954 m!850761))

(assert (=> b!589954 m!850839))

(assert (=> b!589954 m!850839))

(assert (=> b!589954 m!850843))

(declare-fun m!850849 () Bool)

(assert (=> b!589953 m!850849))

(assert (=> bm!40275 m!850761))

(assert (=> bm!40275 m!850845))

(assert (=> b!589863 d!207480))

(declare-fun d!207482 () Bool)

(assert (=> d!207482 (= (get!2226 lt!249950) (v!16374 lt!249950))))

(assert (=> b!589863 d!207482))

(declare-fun d!207484 () Bool)

(assert (=> d!207484 (= (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950)))) (list!2434 (c!110046 (charsOf!770 (_1!3648 (get!2226 lt!249950))))))))

(declare-fun bs!70253 () Bool)

(assert (= bs!70253 d!207484))

(declare-fun m!850851 () Bool)

(assert (=> bs!70253 m!850851))

(assert (=> b!589863 d!207484))

(declare-fun d!207486 () Bool)

(declare-fun lt!249964 () BalanceConc!3724)

(assert (=> d!207486 (= (list!2432 lt!249964) (originalCharacters!1180 (_1!3648 (get!2226 lt!249950))))))

(assert (=> d!207486 (= lt!249964 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249950))))) (value!37385 (_1!3648 (get!2226 lt!249950)))))))

(assert (=> d!207486 (= (charsOf!770 (_1!3648 (get!2226 lt!249950))) lt!249964)))

(declare-fun b_lambda!23243 () Bool)

(assert (=> (not b_lambda!23243) (not d!207486)))

(declare-fun tb!51585 () Bool)

(declare-fun t!78877 () Bool)

(assert (=> (and b!589571 (= (toChars!1883 (transformation!1141 (h!11221 rules!3103))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))))) t!78877) tb!51585))

(declare-fun b!589962 () Bool)

(declare-fun e!356674 () Bool)

(declare-fun tp!184003 () Bool)

(assert (=> b!589962 (= e!356674 (and (inv!7364 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249950))))) (value!37385 (_1!3648 (get!2226 lt!249950)))))) tp!184003))))

(declare-fun result!57860 () Bool)

(assert (=> tb!51585 (= result!57860 (and (inv!7365 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249950))))) (value!37385 (_1!3648 (get!2226 lt!249950))))) e!356674))))

(assert (= tb!51585 b!589962))

(declare-fun m!850853 () Bool)

(assert (=> b!589962 m!850853))

(declare-fun m!850855 () Bool)

(assert (=> tb!51585 m!850855))

(assert (=> d!207486 t!78877))

(declare-fun b_and!58145 () Bool)

(assert (= b_and!58131 (and (=> t!78877 result!57860) b_and!58145)))

(declare-fun t!78879 () Bool)

(declare-fun tb!51587 () Bool)

(assert (=> (and b!589565 (= (toChars!1883 (transformation!1141 (rule!1907 token!491))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))))) t!78879) tb!51587))

(declare-fun result!57862 () Bool)

(assert (= result!57862 result!57860))

(assert (=> d!207486 t!78879))

(declare-fun b_and!58147 () Bool)

(assert (= b_and!58133 (and (=> t!78879 result!57862) b_and!58147)))

(declare-fun tb!51589 () Bool)

(declare-fun t!78881 () Bool)

(assert (=> (and b!589917 (= (toChars!1883 (transformation!1141 (h!11221 (t!78831 rules!3103)))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))))) t!78881) tb!51589))

(declare-fun result!57864 () Bool)

(assert (= result!57864 result!57860))

(assert (=> d!207486 t!78881))

(declare-fun b_and!58149 () Bool)

(assert (= b_and!58137 (and (=> t!78881 result!57864) b_and!58149)))

(declare-fun m!850857 () Bool)

(assert (=> d!207486 m!850857))

(declare-fun m!850859 () Bool)

(assert (=> d!207486 m!850859))

(assert (=> b!589863 d!207486))

(declare-fun b!589963 () Bool)

(declare-fun res!254311 () Bool)

(declare-fun e!356676 () Bool)

(assert (=> b!589963 (=> res!254311 e!356676)))

(assert (=> b!589963 (= res!254311 (not ((_ is IntegerValue!3497) (dynLambda!3392 (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (seqFromList!1317 lt!249848)))))))

(declare-fun e!356677 () Bool)

(assert (=> b!589963 (= e!356677 e!356676)))

(declare-fun b!589964 () Bool)

(assert (=> b!589964 (= e!356677 (inv!17 (dynLambda!3392 (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (seqFromList!1317 lt!249848))))))

(declare-fun b!589965 () Bool)

(declare-fun e!356675 () Bool)

(assert (=> b!589965 (= e!356675 (inv!16 (dynLambda!3392 (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (seqFromList!1317 lt!249848))))))

(declare-fun b!589966 () Bool)

(assert (=> b!589966 (= e!356675 e!356677)))

(declare-fun c!110100 () Bool)

(assert (=> b!589966 (= c!110100 ((_ is IntegerValue!3496) (dynLambda!3392 (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (seqFromList!1317 lt!249848))))))

(declare-fun b!589967 () Bool)

(assert (=> b!589967 (= e!356676 (inv!15 (dynLambda!3392 (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (seqFromList!1317 lt!249848))))))

(declare-fun d!207488 () Bool)

(declare-fun c!110101 () Bool)

(assert (=> d!207488 (= c!110101 ((_ is IntegerValue!3495) (dynLambda!3392 (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (seqFromList!1317 lt!249848))))))

(assert (=> d!207488 (= (inv!21 (dynLambda!3392 (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (seqFromList!1317 lt!249848))) e!356675)))

(assert (= (and d!207488 c!110101) b!589965))

(assert (= (and d!207488 (not c!110101)) b!589966))

(assert (= (and b!589966 c!110100) b!589964))

(assert (= (and b!589966 (not c!110100)) b!589963))

(assert (= (and b!589963 (not res!254311)) b!589967))

(declare-fun m!850861 () Bool)

(assert (=> b!589964 m!850861))

(declare-fun m!850863 () Bool)

(assert (=> b!589965 m!850863))

(declare-fun m!850865 () Bool)

(assert (=> b!589967 m!850865))

(assert (=> tb!51555 d!207488))

(declare-fun d!207490 () Bool)

(declare-fun charsToBigInt!0 (List!5828 Int) Int)

(assert (=> d!207490 (= (inv!15 (value!37385 token!491)) (= (charsToBigInt!0 (text!8604 (value!37385 token!491)) 0) (value!37380 (value!37385 token!491))))))

(declare-fun bs!70254 () Bool)

(assert (= bs!70254 d!207490))

(declare-fun m!850867 () Bool)

(assert (=> bs!70254 m!850867))

(assert (=> b!589647 d!207490))

(declare-fun e!356679 () Bool)

(declare-fun b!589971 () Bool)

(declare-fun lt!249965 () List!5829)

(assert (=> b!589971 (= e!356679 (or (not (= suffix!1342 Nil!5819)) (= lt!249965 (t!78830 lt!249831))))))

(declare-fun b!589970 () Bool)

(declare-fun res!254312 () Bool)

(assert (=> b!589970 (=> (not res!254312) (not e!356679))))

(assert (=> b!589970 (= res!254312 (= (size!4613 lt!249965) (+ (size!4613 (t!78830 lt!249831)) (size!4613 suffix!1342))))))

(declare-fun b!589968 () Bool)

(declare-fun e!356678 () List!5829)

(assert (=> b!589968 (= e!356678 suffix!1342)))

(declare-fun b!589969 () Bool)

(assert (=> b!589969 (= e!356678 (Cons!5819 (h!11220 (t!78830 lt!249831)) (++!1629 (t!78830 (t!78830 lt!249831)) suffix!1342)))))

(declare-fun d!207492 () Bool)

(assert (=> d!207492 e!356679))

(declare-fun res!254313 () Bool)

(assert (=> d!207492 (=> (not res!254313) (not e!356679))))

(assert (=> d!207492 (= res!254313 (= (content!1047 lt!249965) ((_ map or) (content!1047 (t!78830 lt!249831)) (content!1047 suffix!1342))))))

(assert (=> d!207492 (= lt!249965 e!356678)))

(declare-fun c!110102 () Bool)

(assert (=> d!207492 (= c!110102 ((_ is Nil!5819) (t!78830 lt!249831)))))

(assert (=> d!207492 (= (++!1629 (t!78830 lt!249831) suffix!1342) lt!249965)))

(assert (= (and d!207492 c!110102) b!589968))

(assert (= (and d!207492 (not c!110102)) b!589969))

(assert (= (and d!207492 res!254313) b!589970))

(assert (= (and b!589970 res!254312) b!589971))

(declare-fun m!850869 () Bool)

(assert (=> b!589970 m!850869))

(assert (=> b!589970 m!850635))

(assert (=> b!589970 m!850431))

(declare-fun m!850871 () Bool)

(assert (=> b!589969 m!850871))

(declare-fun m!850873 () Bool)

(assert (=> d!207492 m!850873))

(declare-fun m!850875 () Bool)

(assert (=> d!207492 m!850875))

(assert (=> d!207492 m!850445))

(assert (=> b!589614 d!207492))

(assert (=> d!207436 d!207404))

(assert (=> d!207436 d!207380))

(declare-fun d!207494 () Bool)

(assert (=> d!207494 (isPrefix!769 lt!249848 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846))))))

(assert (=> d!207494 true))

(declare-fun _$46!956 () Unit!10563)

(assert (=> d!207494 (= (choose!4257 lt!249848 (_2!3648 (v!16374 lt!249846))) _$46!956)))

(declare-fun bs!70255 () Bool)

(assert (= bs!70255 d!207494))

(assert (=> bs!70255 m!850387))

(assert (=> bs!70255 m!850387))

(assert (=> bs!70255 m!850389))

(assert (=> d!207436 d!207494))

(declare-fun d!207496 () Bool)

(declare-fun res!254318 () Bool)

(declare-fun e!356684 () Bool)

(assert (=> d!207496 (=> res!254318 e!356684)))

(assert (=> d!207496 (= res!254318 ((_ is Nil!5820) rules!3103))))

(assert (=> d!207496 (= (noDuplicateTag!413 thiss!22590 rules!3103 Nil!5822) e!356684)))

(declare-fun b!589976 () Bool)

(declare-fun e!356685 () Bool)

(assert (=> b!589976 (= e!356684 e!356685)))

(declare-fun res!254319 () Bool)

(assert (=> b!589976 (=> (not res!254319) (not e!356685))))

(declare-fun contains!1373 (List!5832 String!7569) Bool)

(assert (=> b!589976 (= res!254319 (not (contains!1373 Nil!5822 (tag!1403 (h!11221 rules!3103)))))))

(declare-fun b!589977 () Bool)

(assert (=> b!589977 (= e!356685 (noDuplicateTag!413 thiss!22590 (t!78831 rules!3103) (Cons!5822 (tag!1403 (h!11221 rules!3103)) Nil!5822)))))

(assert (= (and d!207496 (not res!254318)) b!589976))

(assert (= (and b!589976 res!254319) b!589977))

(declare-fun m!850877 () Bool)

(assert (=> b!589976 m!850877))

(declare-fun m!850879 () Bool)

(assert (=> b!589977 m!850879))

(assert (=> b!589676 d!207496))

(declare-fun d!207498 () Bool)

(assert (=> d!207498 true))

(declare-fun order!4747 () Int)

(declare-fun lambda!15953 () Int)

(declare-fun order!4749 () Int)

(declare-fun dynLambda!3397 (Int Int) Int)

(declare-fun dynLambda!3398 (Int Int) Int)

(assert (=> d!207498 (< (dynLambda!3397 order!4747 (toValue!2024 (transformation!1141 (rule!1907 token!491)))) (dynLambda!3398 order!4749 lambda!15953))))

(declare-fun Forall2!222 (Int) Bool)

(assert (=> d!207498 (= (equivClasses!432 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (toValue!2024 (transformation!1141 (rule!1907 token!491)))) (Forall2!222 lambda!15953))))

(declare-fun bs!70290 () Bool)

(assert (= bs!70290 d!207498))

(declare-fun m!851351 () Bool)

(assert (=> bs!70290 m!851351))

(assert (=> b!589750 d!207498))

(declare-fun d!207688 () Bool)

(assert (=> d!207688 (= (inv!7357 (tag!1403 (h!11221 (t!78831 rules!3103)))) (= (mod (str.len (value!37384 (tag!1403 (h!11221 (t!78831 rules!3103))))) 2) 0))))

(assert (=> b!589916 d!207688))

(declare-fun d!207690 () Bool)

(declare-fun res!254479 () Bool)

(declare-fun e!356893 () Bool)

(assert (=> d!207690 (=> (not res!254479) (not e!356893))))

(assert (=> d!207690 (= res!254479 (semiInverseModEq!449 (toChars!1883 (transformation!1141 (h!11221 (t!78831 rules!3103)))) (toValue!2024 (transformation!1141 (h!11221 (t!78831 rules!3103))))))))

(assert (=> d!207690 (= (inv!7360 (transformation!1141 (h!11221 (t!78831 rules!3103)))) e!356893)))

(declare-fun b!590355 () Bool)

(assert (=> b!590355 (= e!356893 (equivClasses!432 (toChars!1883 (transformation!1141 (h!11221 (t!78831 rules!3103)))) (toValue!2024 (transformation!1141 (h!11221 (t!78831 rules!3103))))))))

(assert (= (and d!207690 res!254479) b!590355))

(declare-fun m!851353 () Bool)

(assert (=> d!207690 m!851353))

(declare-fun m!851355 () Bool)

(assert (=> b!590355 m!851355))

(assert (=> b!589916 d!207690))

(declare-fun lt!250043 () List!5829)

(declare-fun b!590359 () Bool)

(declare-fun e!356895 () Bool)

(assert (=> b!590359 (= e!356895 (or (not (= lt!249938 Nil!5819)) (= lt!250043 lt!249848)))))

(declare-fun b!590358 () Bool)

(declare-fun res!254480 () Bool)

(assert (=> b!590358 (=> (not res!254480) (not e!356895))))

(assert (=> b!590358 (= res!254480 (= (size!4613 lt!250043) (+ (size!4613 lt!249848) (size!4613 lt!249938))))))

(declare-fun b!590356 () Bool)

(declare-fun e!356894 () List!5829)

(assert (=> b!590356 (= e!356894 lt!249938)))

(declare-fun b!590357 () Bool)

(assert (=> b!590357 (= e!356894 (Cons!5819 (h!11220 lt!249848) (++!1629 (t!78830 lt!249848) lt!249938)))))

(declare-fun d!207692 () Bool)

(assert (=> d!207692 e!356895))

(declare-fun res!254481 () Bool)

(assert (=> d!207692 (=> (not res!254481) (not e!356895))))

(assert (=> d!207692 (= res!254481 (= (content!1047 lt!250043) ((_ map or) (content!1047 lt!249848) (content!1047 lt!249938))))))

(assert (=> d!207692 (= lt!250043 e!356894)))

(declare-fun c!110175 () Bool)

(assert (=> d!207692 (= c!110175 ((_ is Nil!5819) lt!249848))))

(assert (=> d!207692 (= (++!1629 lt!249848 lt!249938) lt!250043)))

(assert (= (and d!207692 c!110175) b!590356))

(assert (= (and d!207692 (not c!110175)) b!590357))

(assert (= (and d!207692 res!254481) b!590358))

(assert (= (and b!590358 res!254480) b!590359))

(declare-fun m!851357 () Bool)

(assert (=> b!590358 m!851357))

(assert (=> b!590358 m!850377))

(declare-fun m!851359 () Bool)

(assert (=> b!590358 m!851359))

(declare-fun m!851361 () Bool)

(assert (=> b!590357 m!851361))

(declare-fun m!851363 () Bool)

(assert (=> d!207692 m!851363))

(assert (=> d!207692 m!850571))

(declare-fun m!851365 () Bool)

(assert (=> d!207692 m!851365))

(assert (=> d!207452 d!207692))

(declare-fun d!207694 () Bool)

(declare-fun lt!250044 () Int)

(assert (=> d!207694 (>= lt!250044 0)))

(declare-fun e!356896 () Int)

(assert (=> d!207694 (= lt!250044 e!356896)))

(declare-fun c!110176 () Bool)

(assert (=> d!207694 (= c!110176 ((_ is Nil!5819) input!2705))))

(assert (=> d!207694 (= (size!4613 input!2705) lt!250044)))

(declare-fun b!590360 () Bool)

(assert (=> b!590360 (= e!356896 0)))

(declare-fun b!590361 () Bool)

(assert (=> b!590361 (= e!356896 (+ 1 (size!4613 (t!78830 input!2705))))))

(assert (= (and d!207694 c!110176) b!590360))

(assert (= (and d!207694 (not c!110176)) b!590361))

(declare-fun m!851367 () Bool)

(assert (=> b!590361 m!851367))

(assert (=> d!207452 d!207694))

(assert (=> d!207452 d!207350))

(declare-fun d!207696 () Bool)

(declare-fun charsToInt!0 (List!5828) (_ BitVec 32))

(assert (=> d!207696 (= (inv!16 (value!37385 token!491)) (= (charsToInt!0 (text!8602 (value!37385 token!491))) (value!37376 (value!37385 token!491))))))

(declare-fun bs!70291 () Bool)

(assert (= bs!70291 d!207696))

(declare-fun m!851369 () Bool)

(assert (=> bs!70291 m!851369))

(assert (=> b!589645 d!207696))

(declare-fun d!207698 () Bool)

(assert (=> d!207698 true))

(declare-fun lambda!15956 () Int)

(declare-fun order!4751 () Int)

(declare-fun order!4753 () Int)

(declare-fun dynLambda!3399 (Int Int) Int)

(declare-fun dynLambda!3400 (Int Int) Int)

(assert (=> d!207698 (< (dynLambda!3399 order!4751 (toChars!1883 (transformation!1141 (rule!1907 token!491)))) (dynLambda!3400 order!4753 lambda!15956))))

(assert (=> d!207698 true))

(assert (=> d!207698 (< (dynLambda!3397 order!4747 (toValue!2024 (transformation!1141 (rule!1907 token!491)))) (dynLambda!3400 order!4753 lambda!15956))))

(declare-fun Forall!296 (Int) Bool)

(assert (=> d!207698 (= (semiInverseModEq!449 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (toValue!2024 (transformation!1141 (rule!1907 token!491)))) (Forall!296 lambda!15956))))

(declare-fun bs!70292 () Bool)

(assert (= bs!70292 d!207698))

(declare-fun m!851371 () Bool)

(assert (=> bs!70292 m!851371))

(assert (=> d!207312 d!207698))

(declare-fun d!207700 () Bool)

(assert (=> d!207700 (= (isEmpty!4204 lt!249840) (not ((_ is Some!1491) lt!249840)))))

(assert (=> d!207460 d!207700))

(assert (=> b!589582 d!207498))

(declare-fun b!590369 () Bool)

(declare-fun e!356898 () Bool)

(assert (=> b!590369 (= e!356898 (>= (size!4613 (tail!777 input!2705)) (size!4613 (tail!777 input!2705))))))

(declare-fun b!590367 () Bool)

(declare-fun res!254482 () Bool)

(declare-fun e!356897 () Bool)

(assert (=> b!590367 (=> (not res!254482) (not e!356897))))

(assert (=> b!590367 (= res!254482 (= (head!1248 (tail!777 input!2705)) (head!1248 (tail!777 input!2705))))))

(declare-fun b!590366 () Bool)

(declare-fun e!356899 () Bool)

(assert (=> b!590366 (= e!356899 e!356897)))

(declare-fun res!254484 () Bool)

(assert (=> b!590366 (=> (not res!254484) (not e!356897))))

(assert (=> b!590366 (= res!254484 (not ((_ is Nil!5819) (tail!777 input!2705))))))

(declare-fun d!207702 () Bool)

(assert (=> d!207702 e!356898))

(declare-fun res!254483 () Bool)

(assert (=> d!207702 (=> res!254483 e!356898)))

(declare-fun lt!250045 () Bool)

(assert (=> d!207702 (= res!254483 (not lt!250045))))

(assert (=> d!207702 (= lt!250045 e!356899)))

(declare-fun res!254485 () Bool)

(assert (=> d!207702 (=> res!254485 e!356899)))

(assert (=> d!207702 (= res!254485 ((_ is Nil!5819) (tail!777 input!2705)))))

(assert (=> d!207702 (= (isPrefix!769 (tail!777 input!2705) (tail!777 input!2705)) lt!250045)))

(declare-fun b!590368 () Bool)

(assert (=> b!590368 (= e!356897 (isPrefix!769 (tail!777 (tail!777 input!2705)) (tail!777 (tail!777 input!2705))))))

(assert (= (and d!207702 (not res!254485)) b!590366))

(assert (= (and b!590366 res!254484) b!590367))

(assert (= (and b!590367 res!254482) b!590368))

(assert (= (and d!207702 (not res!254483)) b!590369))

(assert (=> b!590369 m!850601))

(declare-fun m!851373 () Bool)

(assert (=> b!590369 m!851373))

(assert (=> b!590369 m!850601))

(assert (=> b!590369 m!851373))

(assert (=> b!590367 m!850601))

(declare-fun m!851375 () Bool)

(assert (=> b!590367 m!851375))

(assert (=> b!590367 m!850601))

(assert (=> b!590367 m!851375))

(assert (=> b!590368 m!850601))

(declare-fun m!851377 () Bool)

(assert (=> b!590368 m!851377))

(assert (=> b!590368 m!850601))

(assert (=> b!590368 m!851377))

(assert (=> b!590368 m!851377))

(assert (=> b!590368 m!851377))

(declare-fun m!851379 () Bool)

(assert (=> b!590368 m!851379))

(assert (=> b!589737 d!207702))

(declare-fun d!207704 () Bool)

(assert (=> d!207704 (= (tail!777 input!2705) (t!78830 input!2705))))

(assert (=> b!589737 d!207704))

(declare-fun d!207706 () Bool)

(declare-fun lt!250046 () Int)

(assert (=> d!207706 (>= lt!250046 0)))

(declare-fun e!356900 () Int)

(assert (=> d!207706 (= lt!250046 e!356900)))

(declare-fun c!110177 () Bool)

(assert (=> d!207706 (= c!110177 ((_ is Nil!5819) (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846)))))))

(assert (=> d!207706 (= (size!4613 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846)))) lt!250046)))

(declare-fun b!590370 () Bool)

(assert (=> b!590370 (= e!356900 0)))

(declare-fun b!590371 () Bool)

(assert (=> b!590371 (= e!356900 (+ 1 (size!4613 (t!78830 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846)))))))))

(assert (= (and d!207706 c!110177) b!590370))

(assert (= (and d!207706 (not c!110177)) b!590371))

(declare-fun m!851381 () Bool)

(assert (=> b!590371 m!851381))

(assert (=> b!589744 d!207706))

(assert (=> b!589744 d!207350))

(declare-fun d!207708 () Bool)

(assert (=> d!207708 (= (isEmpty!4204 lt!249955) (not ((_ is Some!1491) lt!249955)))))

(assert (=> d!207462 d!207708))

(declare-fun b!590375 () Bool)

(declare-fun e!356902 () Bool)

(assert (=> b!590375 (= e!356902 (>= (size!4613 lt!249835) (size!4613 lt!249835)))))

(declare-fun b!590373 () Bool)

(declare-fun res!254486 () Bool)

(declare-fun e!356901 () Bool)

(assert (=> b!590373 (=> (not res!254486) (not e!356901))))

(assert (=> b!590373 (= res!254486 (= (head!1248 lt!249835) (head!1248 lt!249835)))))

(declare-fun b!590372 () Bool)

(declare-fun e!356903 () Bool)

(assert (=> b!590372 (= e!356903 e!356901)))

(declare-fun res!254488 () Bool)

(assert (=> b!590372 (=> (not res!254488) (not e!356901))))

(assert (=> b!590372 (= res!254488 (not ((_ is Nil!5819) lt!249835)))))

(declare-fun d!207710 () Bool)

(assert (=> d!207710 e!356902))

(declare-fun res!254487 () Bool)

(assert (=> d!207710 (=> res!254487 e!356902)))

(declare-fun lt!250047 () Bool)

(assert (=> d!207710 (= res!254487 (not lt!250047))))

(assert (=> d!207710 (= lt!250047 e!356903)))

(declare-fun res!254489 () Bool)

(assert (=> d!207710 (=> res!254489 e!356903)))

(assert (=> d!207710 (= res!254489 ((_ is Nil!5819) lt!249835))))

(assert (=> d!207710 (= (isPrefix!769 lt!249835 lt!249835) lt!250047)))

(declare-fun b!590374 () Bool)

(assert (=> b!590374 (= e!356901 (isPrefix!769 (tail!777 lt!249835) (tail!777 lt!249835)))))

(assert (= (and d!207710 (not res!254489)) b!590372))

(assert (= (and b!590372 res!254488) b!590373))

(assert (= (and b!590373 res!254486) b!590374))

(assert (= (and d!207710 (not res!254487)) b!590375))

(assert (=> b!590375 m!850789))

(assert (=> b!590375 m!850789))

(declare-fun m!851383 () Bool)

(assert (=> b!590373 m!851383))

(assert (=> b!590373 m!851383))

(declare-fun m!851385 () Bool)

(assert (=> b!590374 m!851385))

(assert (=> b!590374 m!851385))

(assert (=> b!590374 m!851385))

(assert (=> b!590374 m!851385))

(declare-fun m!851387 () Bool)

(assert (=> b!590374 m!851387))

(assert (=> d!207462 d!207710))

(declare-fun d!207712 () Bool)

(assert (=> d!207712 (isPrefix!769 lt!249835 lt!249835)))

(declare-fun lt!250048 () Unit!10563)

(assert (=> d!207712 (= lt!250048 (choose!4254 lt!249835 lt!249835))))

(assert (=> d!207712 (= (lemmaIsPrefixRefl!505 lt!249835 lt!249835) lt!250048)))

(declare-fun bs!70293 () Bool)

(assert (= bs!70293 d!207712))

(assert (=> bs!70293 m!850801))

(declare-fun m!851389 () Bool)

(assert (=> bs!70293 m!851389))

(assert (=> d!207462 d!207712))

(declare-fun d!207714 () Bool)

(assert (=> d!207714 true))

(declare-fun lt!250051 () Bool)

(declare-fun lambda!15959 () Int)

(declare-fun forall!1552 (List!5830 Int) Bool)

(assert (=> d!207714 (= lt!250051 (forall!1552 rules!3103 lambda!15959))))

(declare-fun e!356909 () Bool)

(assert (=> d!207714 (= lt!250051 e!356909)))

(declare-fun res!254494 () Bool)

(assert (=> d!207714 (=> res!254494 e!356909)))

(assert (=> d!207714 (= res!254494 (not ((_ is Cons!5820) rules!3103)))))

(assert (=> d!207714 (= (rulesValidInductive!418 thiss!22590 rules!3103) lt!250051)))

(declare-fun b!590380 () Bool)

(declare-fun e!356908 () Bool)

(assert (=> b!590380 (= e!356909 e!356908)))

(declare-fun res!254495 () Bool)

(assert (=> b!590380 (=> (not res!254495) (not e!356908))))

(assert (=> b!590380 (= res!254495 (ruleValid!339 thiss!22590 (h!11221 rules!3103)))))

(declare-fun b!590381 () Bool)

(assert (=> b!590381 (= e!356908 (rulesValidInductive!418 thiss!22590 (t!78831 rules!3103)))))

(assert (= (and d!207714 (not res!254494)) b!590380))

(assert (= (and b!590380 res!254495) b!590381))

(declare-fun m!851391 () Bool)

(assert (=> d!207714 m!851391))

(declare-fun m!851393 () Bool)

(assert (=> b!590380 m!851393))

(declare-fun m!851395 () Bool)

(assert (=> b!590381 m!851395))

(assert (=> d!207462 d!207714))

(declare-fun b!590387 () Bool)

(declare-fun e!356911 () Bool)

(declare-fun lt!250052 () List!5829)

(assert (=> b!590387 (= e!356911 (or (not (= (_2!3648 (get!2226 lt!249955)) Nil!5819)) (= lt!250052 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955)))))))))

(declare-fun b!590386 () Bool)

(declare-fun res!254496 () Bool)

(assert (=> b!590386 (=> (not res!254496) (not e!356911))))

(assert (=> b!590386 (= res!254496 (= (size!4613 lt!250052) (+ (size!4613 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955))))) (size!4613 (_2!3648 (get!2226 lt!249955))))))))

(declare-fun b!590384 () Bool)

(declare-fun e!356910 () List!5829)

(assert (=> b!590384 (= e!356910 (_2!3648 (get!2226 lt!249955)))))

(declare-fun b!590385 () Bool)

(assert (=> b!590385 (= e!356910 (Cons!5819 (h!11220 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955))))) (++!1629 (t!78830 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955))))) (_2!3648 (get!2226 lt!249955)))))))

(declare-fun d!207716 () Bool)

(assert (=> d!207716 e!356911))

(declare-fun res!254497 () Bool)

(assert (=> d!207716 (=> (not res!254497) (not e!356911))))

(assert (=> d!207716 (= res!254497 (= (content!1047 lt!250052) ((_ map or) (content!1047 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955))))) (content!1047 (_2!3648 (get!2226 lt!249955))))))))

(assert (=> d!207716 (= lt!250052 e!356910)))

(declare-fun c!110178 () Bool)

(assert (=> d!207716 (= c!110178 ((_ is Nil!5819) (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955))))))))

(assert (=> d!207716 (= (++!1629 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955)))) (_2!3648 (get!2226 lt!249955))) lt!250052)))

(assert (= (and d!207716 c!110178) b!590384))

(assert (= (and d!207716 (not c!110178)) b!590385))

(assert (= (and d!207716 res!254497) b!590386))

(assert (= (and b!590386 res!254496) b!590387))

(declare-fun m!851397 () Bool)

(assert (=> b!590386 m!851397))

(assert (=> b!590386 m!850793))

(declare-fun m!851399 () Bool)

(assert (=> b!590386 m!851399))

(assert (=> b!590386 m!850787))

(declare-fun m!851401 () Bool)

(assert (=> b!590385 m!851401))

(declare-fun m!851403 () Bool)

(assert (=> d!207716 m!851403))

(assert (=> d!207716 m!850793))

(declare-fun m!851405 () Bool)

(assert (=> d!207716 m!851405))

(declare-fun m!851407 () Bool)

(assert (=> d!207716 m!851407))

(assert (=> b!589874 d!207716))

(declare-fun d!207718 () Bool)

(assert (=> d!207718 (= (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955)))) (list!2434 (c!110046 (charsOf!770 (_1!3648 (get!2226 lt!249955))))))))

(declare-fun bs!70294 () Bool)

(assert (= bs!70294 d!207718))

(declare-fun m!851409 () Bool)

(assert (=> bs!70294 m!851409))

(assert (=> b!589874 d!207718))

(declare-fun d!207720 () Bool)

(declare-fun lt!250053 () BalanceConc!3724)

(assert (=> d!207720 (= (list!2432 lt!250053) (originalCharacters!1180 (_1!3648 (get!2226 lt!249955))))))

(assert (=> d!207720 (= lt!250053 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249955))))) (value!37385 (_1!3648 (get!2226 lt!249955)))))))

(assert (=> d!207720 (= (charsOf!770 (_1!3648 (get!2226 lt!249955))) lt!250053)))

(declare-fun b_lambda!23255 () Bool)

(assert (=> (not b_lambda!23255) (not d!207720)))

(declare-fun tb!51623 () Bool)

(declare-fun t!78916 () Bool)

(assert (=> (and b!589571 (= (toChars!1883 (transformation!1141 (h!11221 rules!3103))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))))) t!78916) tb!51623))

(declare-fun b!590388 () Bool)

(declare-fun e!356912 () Bool)

(declare-fun tp!184080 () Bool)

(assert (=> b!590388 (= e!356912 (and (inv!7364 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249955))))) (value!37385 (_1!3648 (get!2226 lt!249955)))))) tp!184080))))

(declare-fun result!57900 () Bool)

(assert (=> tb!51623 (= result!57900 (and (inv!7365 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249955))))) (value!37385 (_1!3648 (get!2226 lt!249955))))) e!356912))))

(assert (= tb!51623 b!590388))

(declare-fun m!851411 () Bool)

(assert (=> b!590388 m!851411))

(declare-fun m!851413 () Bool)

(assert (=> tb!51623 m!851413))

(assert (=> d!207720 t!78916))

(declare-fun b_and!58173 () Bool)

(assert (= b_and!58145 (and (=> t!78916 result!57900) b_and!58173)))

(declare-fun t!78918 () Bool)

(declare-fun tb!51625 () Bool)

(assert (=> (and b!589565 (= (toChars!1883 (transformation!1141 (rule!1907 token!491))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))))) t!78918) tb!51625))

(declare-fun result!57902 () Bool)

(assert (= result!57902 result!57900))

(assert (=> d!207720 t!78918))

(declare-fun b_and!58175 () Bool)

(assert (= b_and!58147 (and (=> t!78918 result!57902) b_and!58175)))

(declare-fun t!78920 () Bool)

(declare-fun tb!51627 () Bool)

(assert (=> (and b!589917 (= (toChars!1883 (transformation!1141 (h!11221 (t!78831 rules!3103)))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))))) t!78920) tb!51627))

(declare-fun result!57904 () Bool)

(assert (= result!57904 result!57900))

(assert (=> d!207720 t!78920))

(declare-fun b_and!58177 () Bool)

(assert (= b_and!58149 (and (=> t!78920 result!57904) b_and!58177)))

(declare-fun m!851415 () Bool)

(assert (=> d!207720 m!851415))

(declare-fun m!851417 () Bool)

(assert (=> d!207720 m!851417))

(assert (=> b!589874 d!207720))

(declare-fun d!207722 () Bool)

(assert (=> d!207722 (= (get!2226 lt!249955) (v!16374 lt!249955))))

(assert (=> b!589874 d!207722))

(assert (=> b!589866 d!207484))

(assert (=> b!589866 d!207486))

(assert (=> b!589866 d!207482))

(declare-fun bs!70295 () Bool)

(declare-fun d!207724 () Bool)

(assert (= bs!70295 (and d!207724 d!207498)))

(declare-fun lambda!15960 () Int)

(assert (=> bs!70295 (= (= (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (toValue!2024 (transformation!1141 (rule!1907 token!491)))) (= lambda!15960 lambda!15953))))

(assert (=> d!207724 true))

(assert (=> d!207724 (< (dynLambda!3397 order!4747 (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))) (dynLambda!3398 order!4749 lambda!15960))))

(assert (=> d!207724 (= (equivClasses!432 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))) (Forall2!222 lambda!15960))))

(declare-fun bs!70296 () Bool)

(assert (= bs!70296 d!207724))

(declare-fun m!851419 () Bool)

(assert (=> bs!70296 m!851419))

(assert (=> b!589717 d!207724))

(declare-fun b!590392 () Bool)

(declare-fun lt!250054 () List!5829)

(declare-fun e!356914 () Bool)

(assert (=> b!590392 (= e!356914 (or (not (= (_2!3648 (v!16374 lt!249846)) Nil!5819)) (= lt!250054 (t!78830 lt!249848))))))

(declare-fun b!590391 () Bool)

(declare-fun res!254498 () Bool)

(assert (=> b!590391 (=> (not res!254498) (not e!356914))))

(assert (=> b!590391 (= res!254498 (= (size!4613 lt!250054) (+ (size!4613 (t!78830 lt!249848)) (size!4613 (_2!3648 (v!16374 lt!249846))))))))

(declare-fun b!590389 () Bool)

(declare-fun e!356913 () List!5829)

(assert (=> b!590389 (= e!356913 (_2!3648 (v!16374 lt!249846)))))

(declare-fun b!590390 () Bool)

(assert (=> b!590390 (= e!356913 (Cons!5819 (h!11220 (t!78830 lt!249848)) (++!1629 (t!78830 (t!78830 lt!249848)) (_2!3648 (v!16374 lt!249846)))))))

(declare-fun d!207726 () Bool)

(assert (=> d!207726 e!356914))

(declare-fun res!254499 () Bool)

(assert (=> d!207726 (=> (not res!254499) (not e!356914))))

(assert (=> d!207726 (= res!254499 (= (content!1047 lt!250054) ((_ map or) (content!1047 (t!78830 lt!249848)) (content!1047 (_2!3648 (v!16374 lt!249846))))))))

(assert (=> d!207726 (= lt!250054 e!356913)))

(declare-fun c!110179 () Bool)

(assert (=> d!207726 (= c!110179 ((_ is Nil!5819) (t!78830 lt!249848)))))

(assert (=> d!207726 (= (++!1629 (t!78830 lt!249848) (_2!3648 (v!16374 lt!249846))) lt!250054)))

(assert (= (and d!207726 c!110179) b!590389))

(assert (= (and d!207726 (not c!110179)) b!590390))

(assert (= (and d!207726 res!254499) b!590391))

(assert (= (and b!590391 res!254498) b!590392))

(declare-fun m!851421 () Bool)

(assert (=> b!590391 m!851421))

(assert (=> b!590391 m!850517))

(assert (=> b!590391 m!850565))

(declare-fun m!851423 () Bool)

(assert (=> b!590390 m!851423))

(declare-fun m!851425 () Bool)

(assert (=> d!207726 m!851425))

(declare-fun m!851427 () Bool)

(assert (=> d!207726 m!851427))

(assert (=> d!207726 m!850573))

(assert (=> b!589719 d!207726))

(declare-fun b!590393 () Bool)

(declare-fun res!254505 () Bool)

(declare-fun e!356917 () Bool)

(assert (=> b!590393 (=> (not res!254505) (not e!356917))))

(assert (=> b!590393 (= res!254505 (isEmpty!4201 (tail!777 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955)))))))))

(declare-fun b!590394 () Bool)

(declare-fun e!356916 () Bool)

(declare-fun lt!250055 () Bool)

(assert (=> b!590394 (= e!356916 (not lt!250055))))

(declare-fun b!590395 () Bool)

(declare-fun e!356919 () Bool)

(declare-fun call!40299 () Bool)

(assert (=> b!590395 (= e!356919 (= lt!250055 call!40299))))

(declare-fun b!590396 () Bool)

(declare-fun e!356921 () Bool)

(assert (=> b!590396 (= e!356921 (not (= (head!1248 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955))))) (c!110045 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249955))))))))))

(declare-fun b!590397 () Bool)

(assert (=> b!590397 (= e!356917 (= (head!1248 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955))))) (c!110045 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))))))))

(declare-fun b!590398 () Bool)

(declare-fun e!356920 () Bool)

(assert (=> b!590398 (= e!356920 (nullable!407 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249955))))))))

(declare-fun b!590399 () Bool)

(declare-fun res!254504 () Bool)

(assert (=> b!590399 (=> res!254504 e!356921)))

(assert (=> b!590399 (= res!254504 (not (isEmpty!4201 (tail!777 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955))))))))))

(declare-fun b!590400 () Bool)

(declare-fun res!254501 () Bool)

(declare-fun e!356915 () Bool)

(assert (=> b!590400 (=> res!254501 e!356915)))

(assert (=> b!590400 (= res!254501 (not ((_ is ElementMatch!1475) (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))))))))

(assert (=> b!590400 (= e!356916 e!356915)))

(declare-fun b!590401 () Bool)

(declare-fun res!254503 () Bool)

(assert (=> b!590401 (=> (not res!254503) (not e!356917))))

(assert (=> b!590401 (= res!254503 (not call!40299))))

(declare-fun b!590402 () Bool)

(assert (=> b!590402 (= e!356920 (matchR!610 (derivativeStep!316 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))) (head!1248 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955)))))) (tail!777 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955)))))))))

(declare-fun b!590404 () Bool)

(declare-fun e!356918 () Bool)

(assert (=> b!590404 (= e!356918 e!356921)))

(declare-fun res!254502 () Bool)

(assert (=> b!590404 (=> res!254502 e!356921)))

(assert (=> b!590404 (= res!254502 call!40299)))

(declare-fun b!590405 () Bool)

(declare-fun res!254500 () Bool)

(assert (=> b!590405 (=> res!254500 e!356915)))

(assert (=> b!590405 (= res!254500 e!356917)))

(declare-fun res!254506 () Bool)

(assert (=> b!590405 (=> (not res!254506) (not e!356917))))

(assert (=> b!590405 (= res!254506 lt!250055)))

(declare-fun bm!40294 () Bool)

(assert (=> bm!40294 (= call!40299 (isEmpty!4201 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955))))))))

(declare-fun b!590406 () Bool)

(assert (=> b!590406 (= e!356919 e!356916)))

(declare-fun c!110181 () Bool)

(assert (=> b!590406 (= c!110181 ((_ is EmptyLang!1475) (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249955))))))))

(declare-fun d!207728 () Bool)

(assert (=> d!207728 e!356919))

(declare-fun c!110180 () Bool)

(assert (=> d!207728 (= c!110180 ((_ is EmptyExpr!1475) (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249955))))))))

(assert (=> d!207728 (= lt!250055 e!356920)))

(declare-fun c!110182 () Bool)

(assert (=> d!207728 (= c!110182 (isEmpty!4201 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955))))))))

(assert (=> d!207728 (validRegex!502 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))))))

(assert (=> d!207728 (= (matchR!610 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))) (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249955))))) lt!250055)))

(declare-fun b!590403 () Bool)

(assert (=> b!590403 (= e!356915 e!356918)))

(declare-fun res!254507 () Bool)

(assert (=> b!590403 (=> (not res!254507) (not e!356918))))

(assert (=> b!590403 (= res!254507 (not lt!250055))))

(assert (= (and d!207728 c!110182) b!590398))

(assert (= (and d!207728 (not c!110182)) b!590402))

(assert (= (and d!207728 c!110180) b!590395))

(assert (= (and d!207728 (not c!110180)) b!590406))

(assert (= (and b!590406 c!110181) b!590394))

(assert (= (and b!590406 (not c!110181)) b!590400))

(assert (= (and b!590400 (not res!254501)) b!590405))

(assert (= (and b!590405 res!254506) b!590401))

(assert (= (and b!590401 res!254503) b!590393))

(assert (= (and b!590393 res!254505) b!590397))

(assert (= (and b!590405 (not res!254500)) b!590403))

(assert (= (and b!590403 res!254507) b!590404))

(assert (= (and b!590404 (not res!254502)) b!590399))

(assert (= (and b!590399 (not res!254504)) b!590396))

(assert (= (or b!590395 b!590401 b!590404) bm!40294))

(assert (=> b!590402 m!850793))

(declare-fun m!851429 () Bool)

(assert (=> b!590402 m!851429))

(assert (=> b!590402 m!851429))

(declare-fun m!851431 () Bool)

(assert (=> b!590402 m!851431))

(assert (=> b!590402 m!850793))

(declare-fun m!851433 () Bool)

(assert (=> b!590402 m!851433))

(assert (=> b!590402 m!851431))

(assert (=> b!590402 m!851433))

(declare-fun m!851435 () Bool)

(assert (=> b!590402 m!851435))

(assert (=> b!590393 m!850793))

(assert (=> b!590393 m!851433))

(assert (=> b!590393 m!851433))

(declare-fun m!851437 () Bool)

(assert (=> b!590393 m!851437))

(assert (=> b!590396 m!850793))

(assert (=> b!590396 m!851429))

(assert (=> b!590397 m!850793))

(assert (=> b!590397 m!851429))

(assert (=> d!207728 m!850793))

(declare-fun m!851439 () Bool)

(assert (=> d!207728 m!851439))

(declare-fun m!851441 () Bool)

(assert (=> d!207728 m!851441))

(assert (=> b!590399 m!850793))

(assert (=> b!590399 m!851433))

(assert (=> b!590399 m!851433))

(assert (=> b!590399 m!851437))

(declare-fun m!851443 () Bool)

(assert (=> b!590398 m!851443))

(assert (=> bm!40294 m!850793))

(assert (=> bm!40294 m!851439))

(assert (=> b!589872 d!207728))

(assert (=> b!589872 d!207722))

(assert (=> b!589872 d!207718))

(assert (=> b!589872 d!207720))

(declare-fun b!590410 () Bool)

(declare-fun e!356923 () Bool)

(declare-fun lt!250056 () List!5829)

(assert (=> b!590410 (= e!356923 (or (not (= (_2!3648 (get!2226 lt!249950)) Nil!5819)) (= lt!250056 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950)))))))))

(declare-fun b!590409 () Bool)

(declare-fun res!254508 () Bool)

(assert (=> b!590409 (=> (not res!254508) (not e!356923))))

(assert (=> b!590409 (= res!254508 (= (size!4613 lt!250056) (+ (size!4613 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950))))) (size!4613 (_2!3648 (get!2226 lt!249950))))))))

(declare-fun b!590407 () Bool)

(declare-fun e!356922 () List!5829)

(assert (=> b!590407 (= e!356922 (_2!3648 (get!2226 lt!249950)))))

(declare-fun b!590408 () Bool)

(assert (=> b!590408 (= e!356922 (Cons!5819 (h!11220 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950))))) (++!1629 (t!78830 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950))))) (_2!3648 (get!2226 lt!249950)))))))

(declare-fun d!207730 () Bool)

(assert (=> d!207730 e!356923))

(declare-fun res!254509 () Bool)

(assert (=> d!207730 (=> (not res!254509) (not e!356923))))

(assert (=> d!207730 (= res!254509 (= (content!1047 lt!250056) ((_ map or) (content!1047 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950))))) (content!1047 (_2!3648 (get!2226 lt!249950))))))))

(assert (=> d!207730 (= lt!250056 e!356922)))

(declare-fun c!110183 () Bool)

(assert (=> d!207730 (= c!110183 ((_ is Nil!5819) (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950))))))))

(assert (=> d!207730 (= (++!1629 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!249950)))) (_2!3648 (get!2226 lt!249950))) lt!250056)))

(assert (= (and d!207730 c!110183) b!590407))

(assert (= (and d!207730 (not c!110183)) b!590408))

(assert (= (and d!207730 res!254509) b!590409))

(assert (= (and b!590409 res!254508) b!590410))

(declare-fun m!851445 () Bool)

(assert (=> b!590409 m!851445))

(assert (=> b!590409 m!850761))

(declare-fun m!851447 () Bool)

(assert (=> b!590409 m!851447))

(assert (=> b!590409 m!850757))

(declare-fun m!851449 () Bool)

(assert (=> b!590408 m!851449))

(declare-fun m!851451 () Bool)

(assert (=> d!207730 m!851451))

(assert (=> d!207730 m!850761))

(declare-fun m!851453 () Bool)

(assert (=> d!207730 m!851453))

(declare-fun m!851455 () Bool)

(assert (=> d!207730 m!851455))

(assert (=> b!589865 d!207730))

(assert (=> b!589865 d!207484))

(assert (=> b!589865 d!207486))

(assert (=> b!589865 d!207482))

(declare-fun d!207732 () Bool)

(assert (=> d!207732 (= (list!2432 lt!249939) (list!2434 (c!110046 lt!249939)))))

(declare-fun bs!70297 () Bool)

(assert (= bs!70297 d!207732))

(declare-fun m!851457 () Bool)

(assert (=> bs!70297 m!851457))

(assert (=> d!207456 d!207732))

(declare-fun d!207734 () Bool)

(assert (=> d!207734 (= (isDefined!1303 lt!249955) (not (isEmpty!4204 lt!249955)))))

(declare-fun bs!70298 () Bool)

(assert (= bs!70298 d!207734))

(assert (=> bs!70298 m!850799))

(assert (=> b!589879 d!207734))

(declare-fun d!207736 () Bool)

(assert (=> d!207736 (and (= lt!249831 input!2705) (= suffix!1342 suffix!1342))))

(assert (=> d!207736 true))

(declare-fun _$50!262 () Unit!10563)

(assert (=> d!207736 (= (choose!4253 lt!249831 suffix!1342 input!2705 suffix!1342) _$50!262)))

(assert (=> d!207406 d!207736))

(assert (=> d!207406 d!207318))

(assert (=> d!207406 d!207464))

(declare-fun b!590422 () Bool)

(declare-fun e!356929 () List!5829)

(assert (=> b!590422 (= e!356929 (++!1629 (list!2434 (left!4733 (c!110046 (charsOf!770 (_1!3648 (v!16374 lt!249846)))))) (list!2434 (right!5063 (c!110046 (charsOf!770 (_1!3648 (v!16374 lt!249846))))))))))

(declare-fun d!207738 () Bool)

(declare-fun c!110188 () Bool)

(assert (=> d!207738 (= c!110188 ((_ is Empty!1858) (c!110046 (charsOf!770 (_1!3648 (v!16374 lt!249846))))))))

(declare-fun e!356928 () List!5829)

(assert (=> d!207738 (= (list!2434 (c!110046 (charsOf!770 (_1!3648 (v!16374 lt!249846))))) e!356928)))

(declare-fun b!590420 () Bool)

(assert (=> b!590420 (= e!356928 e!356929)))

(declare-fun c!110189 () Bool)

(assert (=> b!590420 (= c!110189 ((_ is Leaf!2936) (c!110046 (charsOf!770 (_1!3648 (v!16374 lt!249846))))))))

(declare-fun b!590421 () Bool)

(declare-fun list!2436 (IArray!3717) List!5829)

(assert (=> b!590421 (= e!356929 (list!2436 (xs!4495 (c!110046 (charsOf!770 (_1!3648 (v!16374 lt!249846)))))))))

(declare-fun b!590419 () Bool)

(assert (=> b!590419 (= e!356928 Nil!5819)))

(assert (= (and d!207738 c!110188) b!590419))

(assert (= (and d!207738 (not c!110188)) b!590420))

(assert (= (and b!590420 c!110189) b!590421))

(assert (= (and b!590420 (not c!110189)) b!590422))

(declare-fun m!851459 () Bool)

(assert (=> b!590422 m!851459))

(declare-fun m!851461 () Bool)

(assert (=> b!590422 m!851461))

(assert (=> b!590422 m!851459))

(assert (=> b!590422 m!851461))

(declare-fun m!851463 () Bool)

(assert (=> b!590422 m!851463))

(declare-fun m!851465 () Bool)

(assert (=> b!590421 m!851465))

(assert (=> d!207442 d!207738))

(declare-fun d!207740 () Bool)

(assert (=> d!207740 (= (isDefined!1303 lt!249950) (not (isEmpty!4204 lt!249950)))))

(declare-fun bs!70299 () Bool)

(assert (= bs!70299 d!207740))

(assert (=> bs!70299 m!850767))

(assert (=> b!589870 d!207740))

(declare-fun d!207742 () Bool)

(assert (=> d!207742 (= (list!2432 lt!249926) (list!2434 (c!110046 lt!249926)))))

(declare-fun bs!70300 () Bool)

(assert (= bs!70300 d!207742))

(declare-fun m!851467 () Bool)

(assert (=> bs!70300 m!851467))

(assert (=> d!207426 d!207742))

(declare-fun d!207744 () Bool)

(declare-fun lt!250057 () Int)

(assert (=> d!207744 (>= lt!250057 0)))

(declare-fun e!356930 () Int)

(assert (=> d!207744 (= lt!250057 e!356930)))

(declare-fun c!110190 () Bool)

(assert (=> d!207744 (= c!110190 ((_ is Nil!5819) (originalCharacters!1180 token!491)))))

(assert (=> d!207744 (= (size!4613 (originalCharacters!1180 token!491)) lt!250057)))

(declare-fun b!590423 () Bool)

(assert (=> b!590423 (= e!356930 0)))

(declare-fun b!590424 () Bool)

(assert (=> b!590424 (= e!356930 (+ 1 (size!4613 (t!78830 (originalCharacters!1180 token!491)))))))

(assert (= (and d!207744 c!110190) b!590423))

(assert (= (and d!207744 (not c!110190)) b!590424))

(declare-fun m!851469 () Bool)

(assert (=> b!590424 m!851469))

(assert (=> b!589657 d!207744))

(assert (=> d!207414 d!207744))

(assert (=> b!589875 d!207718))

(assert (=> b!589875 d!207720))

(assert (=> b!589875 d!207722))

(declare-fun b!590428 () Bool)

(declare-fun e!356932 () Bool)

(assert (=> b!590428 (= e!356932 (>= (size!4613 (tail!777 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846))))) (size!4613 (tail!777 lt!249848))))))

(declare-fun b!590426 () Bool)

(declare-fun res!254510 () Bool)

(declare-fun e!356931 () Bool)

(assert (=> b!590426 (=> (not res!254510) (not e!356931))))

(assert (=> b!590426 (= res!254510 (= (head!1248 (tail!777 lt!249848)) (head!1248 (tail!777 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846)))))))))

(declare-fun b!590425 () Bool)

(declare-fun e!356933 () Bool)

(assert (=> b!590425 (= e!356933 e!356931)))

(declare-fun res!254512 () Bool)

(assert (=> b!590425 (=> (not res!254512) (not e!356931))))

(assert (=> b!590425 (= res!254512 (not ((_ is Nil!5819) (tail!777 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846)))))))))

(declare-fun d!207746 () Bool)

(assert (=> d!207746 e!356932))

(declare-fun res!254511 () Bool)

(assert (=> d!207746 (=> res!254511 e!356932)))

(declare-fun lt!250058 () Bool)

(assert (=> d!207746 (= res!254511 (not lt!250058))))

(assert (=> d!207746 (= lt!250058 e!356933)))

(declare-fun res!254513 () Bool)

(assert (=> d!207746 (=> res!254513 e!356933)))

(assert (=> d!207746 (= res!254513 ((_ is Nil!5819) (tail!777 lt!249848)))))

(assert (=> d!207746 (= (isPrefix!769 (tail!777 lt!249848) (tail!777 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846))))) lt!250058)))

(declare-fun b!590427 () Bool)

(assert (=> b!590427 (= e!356931 (isPrefix!769 (tail!777 (tail!777 lt!249848)) (tail!777 (tail!777 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846)))))))))

(assert (= (and d!207746 (not res!254513)) b!590425))

(assert (= (and b!590425 res!254512) b!590426))

(assert (= (and b!590426 res!254510) b!590427))

(assert (= (and d!207746 (not res!254511)) b!590428))

(assert (=> b!590428 m!850619))

(declare-fun m!851471 () Bool)

(assert (=> b!590428 m!851471))

(assert (=> b!590428 m!850617))

(declare-fun m!851473 () Bool)

(assert (=> b!590428 m!851473))

(assert (=> b!590426 m!850617))

(declare-fun m!851475 () Bool)

(assert (=> b!590426 m!851475))

(assert (=> b!590426 m!850619))

(declare-fun m!851477 () Bool)

(assert (=> b!590426 m!851477))

(assert (=> b!590427 m!850617))

(declare-fun m!851479 () Bool)

(assert (=> b!590427 m!851479))

(assert (=> b!590427 m!850619))

(declare-fun m!851481 () Bool)

(assert (=> b!590427 m!851481))

(assert (=> b!590427 m!851479))

(assert (=> b!590427 m!851481))

(declare-fun m!851483 () Bool)

(assert (=> b!590427 m!851483))

(assert (=> b!589743 d!207746))

(declare-fun d!207748 () Bool)

(assert (=> d!207748 (= (tail!777 lt!249848) (t!78830 lt!249848))))

(assert (=> b!589743 d!207748))

(declare-fun d!207750 () Bool)

(assert (=> d!207750 (= (tail!777 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846)))) (t!78830 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846)))))))

(assert (=> b!589743 d!207750))

(declare-fun d!207752 () Bool)

(declare-fun c!110193 () Bool)

(assert (=> d!207752 (= c!110193 ((_ is Nil!5819) lt!249854))))

(declare-fun e!356936 () (InoxSet C!3872))

(assert (=> d!207752 (= (content!1047 lt!249854) e!356936)))

(declare-fun b!590433 () Bool)

(assert (=> b!590433 (= e!356936 ((as const (Array C!3872 Bool)) false))))

(declare-fun b!590434 () Bool)

(assert (=> b!590434 (= e!356936 ((_ map or) (store ((as const (Array C!3872 Bool)) false) (h!11220 lt!249854) true) (content!1047 (t!78830 lt!249854))))))

(assert (= (and d!207752 c!110193) b!590433))

(assert (= (and d!207752 (not c!110193)) b!590434))

(declare-fun m!851485 () Bool)

(assert (=> b!590434 m!851485))

(declare-fun m!851487 () Bool)

(assert (=> b!590434 m!851487))

(assert (=> d!207318 d!207752))

(declare-fun d!207754 () Bool)

(declare-fun c!110194 () Bool)

(assert (=> d!207754 (= c!110194 ((_ is Nil!5819) lt!249831))))

(declare-fun e!356937 () (InoxSet C!3872))

(assert (=> d!207754 (= (content!1047 lt!249831) e!356937)))

(declare-fun b!590435 () Bool)

(assert (=> b!590435 (= e!356937 ((as const (Array C!3872 Bool)) false))))

(declare-fun b!590436 () Bool)

(assert (=> b!590436 (= e!356937 ((_ map or) (store ((as const (Array C!3872 Bool)) false) (h!11220 lt!249831) true) (content!1047 (t!78830 lt!249831))))))

(assert (= (and d!207754 c!110194) b!590435))

(assert (= (and d!207754 (not c!110194)) b!590436))

(declare-fun m!851489 () Bool)

(assert (=> b!590436 m!851489))

(assert (=> b!590436 m!850875))

(assert (=> d!207318 d!207754))

(declare-fun d!207756 () Bool)

(declare-fun c!110195 () Bool)

(assert (=> d!207756 (= c!110195 ((_ is Nil!5819) suffix!1342))))

(declare-fun e!356938 () (InoxSet C!3872))

(assert (=> d!207756 (= (content!1047 suffix!1342) e!356938)))

(declare-fun b!590437 () Bool)

(assert (=> b!590437 (= e!356938 ((as const (Array C!3872 Bool)) false))))

(declare-fun b!590438 () Bool)

(assert (=> b!590438 (= e!356938 ((_ map or) (store ((as const (Array C!3872 Bool)) false) (h!11220 suffix!1342) true) (content!1047 (t!78830 suffix!1342))))))

(assert (= (and d!207756 c!110195) b!590437))

(assert (= (and d!207756 (not c!110195)) b!590438))

(declare-fun m!851491 () Bool)

(assert (=> b!590438 m!851491))

(declare-fun m!851493 () Bool)

(assert (=> b!590438 m!851493))

(assert (=> d!207318 d!207756))

(declare-fun bs!70301 () Bool)

(declare-fun d!207758 () Bool)

(assert (= bs!70301 (and d!207758 d!207698)))

(declare-fun lambda!15961 () Int)

(assert (=> bs!70301 (= (and (= (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (toChars!1883 (transformation!1141 (rule!1907 token!491)))) (= (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (toValue!2024 (transformation!1141 (rule!1907 token!491))))) (= lambda!15961 lambda!15956))))

(assert (=> d!207758 true))

(assert (=> d!207758 (< (dynLambda!3399 order!4751 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))) (dynLambda!3400 order!4753 lambda!15961))))

(assert (=> d!207758 true))

(assert (=> d!207758 (< (dynLambda!3397 order!4747 (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))) (dynLambda!3400 order!4753 lambda!15961))))

(assert (=> d!207758 (= (semiInverseModEq!449 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))) (Forall!296 lambda!15961))))

(declare-fun bs!70302 () Bool)

(assert (= bs!70302 d!207758))

(declare-fun m!851495 () Bool)

(assert (=> bs!70302 m!851495))

(assert (=> d!207370 d!207758))

(declare-fun bs!70303 () Bool)

(declare-fun d!207760 () Bool)

(assert (= bs!70303 (and d!207760 d!207498)))

(declare-fun lambda!15962 () Int)

(assert (=> bs!70303 (= (= (toValue!2024 (transformation!1141 (h!11221 rules!3103))) (toValue!2024 (transformation!1141 (rule!1907 token!491)))) (= lambda!15962 lambda!15953))))

(declare-fun bs!70304 () Bool)

(assert (= bs!70304 (and d!207760 d!207724)))

(assert (=> bs!70304 (= (= (toValue!2024 (transformation!1141 (h!11221 rules!3103))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))) (= lambda!15962 lambda!15960))))

(assert (=> d!207760 true))

(assert (=> d!207760 (< (dynLambda!3397 order!4747 (toValue!2024 (transformation!1141 (h!11221 rules!3103)))) (dynLambda!3398 order!4749 lambda!15962))))

(assert (=> d!207760 (= (equivClasses!432 (toChars!1883 (transformation!1141 (h!11221 rules!3103))) (toValue!2024 (transformation!1141 (h!11221 rules!3103)))) (Forall2!222 lambda!15962))))

(declare-fun bs!70305 () Bool)

(assert (= bs!70305 d!207760))

(declare-fun m!851497 () Bool)

(assert (=> bs!70305 m!851497))

(assert (=> b!589677 d!207760))

(declare-fun d!207762 () Bool)

(declare-fun lt!250059 () Int)

(assert (=> d!207762 (>= lt!250059 0)))

(declare-fun e!356939 () Int)

(assert (=> d!207762 (= lt!250059 e!356939)))

(declare-fun c!110196 () Bool)

(assert (=> d!207762 (= c!110196 ((_ is Nil!5819) lt!249960))))

(assert (=> d!207762 (= (size!4613 lt!249960) lt!250059)))

(declare-fun b!590439 () Bool)

(assert (=> b!590439 (= e!356939 0)))

(declare-fun b!590440 () Bool)

(assert (=> b!590440 (= e!356939 (+ 1 (size!4613 (t!78830 lt!249960))))))

(assert (= (and d!207762 c!110196) b!590439))

(assert (= (and d!207762 (not c!110196)) b!590440))

(declare-fun m!851499 () Bool)

(assert (=> b!590440 m!851499))

(assert (=> b!589882 d!207762))

(assert (=> b!589882 d!207694))

(declare-fun d!207764 () Bool)

(declare-fun lt!250060 () Int)

(assert (=> d!207764 (>= lt!250060 0)))

(declare-fun e!356940 () Int)

(assert (=> d!207764 (= lt!250060 e!356940)))

(declare-fun c!110197 () Bool)

(assert (=> d!207764 (= c!110197 ((_ is Nil!5819) suffix!1342))))

(assert (=> d!207764 (= (size!4613 suffix!1342) lt!250060)))

(declare-fun b!590441 () Bool)

(assert (=> b!590441 (= e!356940 0)))

(declare-fun b!590442 () Bool)

(assert (=> b!590442 (= e!356940 (+ 1 (size!4613 (t!78830 suffix!1342))))))

(assert (= (and d!207764 c!110197) b!590441))

(assert (= (and d!207764 (not c!110197)) b!590442))

(declare-fun m!851501 () Bool)

(assert (=> b!590442 m!851501))

(assert (=> b!589882 d!207764))

(declare-fun d!207766 () Bool)

(declare-fun c!110200 () Bool)

(assert (=> d!207766 (= c!110200 ((_ is Node!1858) (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846)))))))))

(declare-fun e!356945 () Bool)

(assert (=> d!207766 (= (inv!7364 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846)))))) e!356945)))

(declare-fun b!590449 () Bool)

(declare-fun inv!7368 (Conc!1858) Bool)

(assert (=> b!590449 (= e!356945 (inv!7368 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846)))))))))

(declare-fun b!590450 () Bool)

(declare-fun e!356946 () Bool)

(assert (=> b!590450 (= e!356945 e!356946)))

(declare-fun res!254516 () Bool)

(assert (=> b!590450 (= res!254516 (not ((_ is Leaf!2936) (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846))))))))))

(assert (=> b!590450 (=> res!254516 e!356946)))

(declare-fun b!590451 () Bool)

(declare-fun inv!7369 (Conc!1858) Bool)

(assert (=> b!590451 (= e!356946 (inv!7369 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846)))))))))

(assert (= (and d!207766 c!110200) b!590449))

(assert (= (and d!207766 (not c!110200)) b!590450))

(assert (= (and b!590450 (not res!254516)) b!590451))

(declare-fun m!851503 () Bool)

(assert (=> b!590449 m!851503))

(declare-fun m!851505 () Bool)

(assert (=> b!590451 m!851505))

(assert (=> b!589797 d!207766))

(declare-fun d!207768 () Bool)

(declare-fun lt!250061 () Int)

(assert (=> d!207768 (>= lt!250061 0)))

(declare-fun e!356947 () Int)

(assert (=> d!207768 (= lt!250061 e!356947)))

(declare-fun c!110201 () Bool)

(assert (=> d!207768 (= c!110201 ((_ is Nil!5819) (_2!3648 (get!2226 lt!249950))))))

(assert (=> d!207768 (= (size!4613 (_2!3648 (get!2226 lt!249950))) lt!250061)))

(declare-fun b!590452 () Bool)

(assert (=> b!590452 (= e!356947 0)))

(declare-fun b!590453 () Bool)

(assert (=> b!590453 (= e!356947 (+ 1 (size!4613 (t!78830 (_2!3648 (get!2226 lt!249950))))))))

(assert (= (and d!207768 c!110201) b!590452))

(assert (= (and d!207768 (not c!110201)) b!590453))

(declare-fun m!851507 () Bool)

(assert (=> b!590453 m!851507))

(assert (=> b!589862 d!207768))

(assert (=> b!589862 d!207482))

(assert (=> b!589862 d!207694))

(assert (=> b!589738 d!207694))

(declare-fun d!207770 () Bool)

(declare-fun charsToBigInt!1 (List!5828) Int)

(assert (=> d!207770 (= (inv!17 (value!37385 token!491)) (= (charsToBigInt!1 (text!8603 (value!37385 token!491))) (value!37377 (value!37385 token!491))))))

(declare-fun bs!70306 () Bool)

(assert (= bs!70306 d!207770))

(declare-fun m!851509 () Bool)

(assert (=> bs!70306 m!851509))

(assert (=> b!589644 d!207770))

(declare-fun d!207772 () Bool)

(declare-fun e!356950 () Bool)

(assert (=> d!207772 e!356950))

(declare-fun res!254519 () Bool)

(assert (=> d!207772 (=> (not res!254519) (not e!356950))))

(declare-fun lt!250064 () BalanceConc!3724)

(assert (=> d!207772 (= res!254519 (= (list!2432 lt!250064) lt!249848))))

(declare-fun fromList!273 (List!5829) Conc!1858)

(assert (=> d!207772 (= lt!250064 (BalanceConc!3725 (fromList!273 lt!249848)))))

(assert (=> d!207772 (= (fromListB!576 lt!249848) lt!250064)))

(declare-fun b!590456 () Bool)

(declare-fun isBalanced!522 (Conc!1858) Bool)

(assert (=> b!590456 (= e!356950 (isBalanced!522 (fromList!273 lt!249848)))))

(assert (= (and d!207772 res!254519) b!590456))

(declare-fun m!851511 () Bool)

(assert (=> d!207772 m!851511))

(declare-fun m!851513 () Bool)

(assert (=> d!207772 m!851513))

(assert (=> b!590456 m!851513))

(assert (=> b!590456 m!851513))

(declare-fun m!851515 () Bool)

(assert (=> b!590456 m!851515))

(assert (=> d!207402 d!207772))

(declare-fun d!207774 () Bool)

(assert (=> d!207774 (= (head!1248 input!2705) (h!11220 input!2705))))

(assert (=> b!589736 d!207774))

(declare-fun b!590460 () Bool)

(declare-fun e!356952 () List!5829)

(assert (=> b!590460 (= e!356952 (++!1629 (list!2434 (left!4733 (c!110046 (charsOf!770 token!491)))) (list!2434 (right!5063 (c!110046 (charsOf!770 token!491))))))))

(declare-fun d!207776 () Bool)

(declare-fun c!110203 () Bool)

(assert (=> d!207776 (= c!110203 ((_ is Empty!1858) (c!110046 (charsOf!770 token!491))))))

(declare-fun e!356951 () List!5829)

(assert (=> d!207776 (= (list!2434 (c!110046 (charsOf!770 token!491))) e!356951)))

(declare-fun b!590458 () Bool)

(assert (=> b!590458 (= e!356951 e!356952)))

(declare-fun c!110204 () Bool)

(assert (=> b!590458 (= c!110204 ((_ is Leaf!2936) (c!110046 (charsOf!770 token!491))))))

(declare-fun b!590459 () Bool)

(assert (=> b!590459 (= e!356952 (list!2436 (xs!4495 (c!110046 (charsOf!770 token!491)))))))

(declare-fun b!590457 () Bool)

(assert (=> b!590457 (= e!356951 Nil!5819)))

(assert (= (and d!207776 c!110203) b!590457))

(assert (= (and d!207776 (not c!110203)) b!590458))

(assert (= (and b!590458 c!110204) b!590459))

(assert (= (and b!590458 (not c!110204)) b!590460))

(declare-fun m!851517 () Bool)

(assert (=> b!590460 m!851517))

(declare-fun m!851519 () Bool)

(assert (=> b!590460 m!851519))

(assert (=> b!590460 m!851517))

(assert (=> b!590460 m!851519))

(declare-fun m!851521 () Bool)

(assert (=> b!590460 m!851521))

(declare-fun m!851523 () Bool)

(assert (=> b!590459 m!851523))

(assert (=> d!207454 d!207776))

(declare-fun d!207778 () Bool)

(declare-fun c!110205 () Bool)

(assert (=> d!207778 (= c!110205 ((_ is Nil!5819) lt!249960))))

(declare-fun e!356953 () (InoxSet C!3872))

(assert (=> d!207778 (= (content!1047 lt!249960) e!356953)))

(declare-fun b!590461 () Bool)

(assert (=> b!590461 (= e!356953 ((as const (Array C!3872 Bool)) false))))

(declare-fun b!590462 () Bool)

(assert (=> b!590462 (= e!356953 ((_ map or) (store ((as const (Array C!3872 Bool)) false) (h!11220 lt!249960) true) (content!1047 (t!78830 lt!249960))))))

(assert (= (and d!207778 c!110205) b!590461))

(assert (= (and d!207778 (not c!110205)) b!590462))

(declare-fun m!851525 () Bool)

(assert (=> b!590462 m!851525))

(declare-fun m!851527 () Bool)

(assert (=> b!590462 m!851527))

(assert (=> d!207464 d!207778))

(declare-fun d!207780 () Bool)

(declare-fun c!110206 () Bool)

(assert (=> d!207780 (= c!110206 ((_ is Nil!5819) input!2705))))

(declare-fun e!356954 () (InoxSet C!3872))

(assert (=> d!207780 (= (content!1047 input!2705) e!356954)))

(declare-fun b!590463 () Bool)

(assert (=> b!590463 (= e!356954 ((as const (Array C!3872 Bool)) false))))

(declare-fun b!590464 () Bool)

(assert (=> b!590464 (= e!356954 ((_ map or) (store ((as const (Array C!3872 Bool)) false) (h!11220 input!2705) true) (content!1047 (t!78830 input!2705))))))

(assert (= (and d!207780 c!110206) b!590463))

(assert (= (and d!207780 (not c!110206)) b!590464))

(declare-fun m!851529 () Bool)

(assert (=> b!590464 m!851529))

(declare-fun m!851531 () Bool)

(assert (=> b!590464 m!851531))

(assert (=> d!207464 d!207780))

(assert (=> d!207464 d!207756))

(declare-fun b!590465 () Bool)

(declare-fun res!254524 () Bool)

(declare-fun e!356955 () Bool)

(assert (=> b!590465 (=> (not res!254524) (not e!356955))))

(declare-fun lt!250065 () Option!1492)

(assert (=> b!590465 (= res!254524 (< (size!4613 (_2!3648 (get!2226 lt!250065))) (size!4613 input!2705)))))

(declare-fun b!590466 () Bool)

(declare-fun res!254520 () Bool)

(assert (=> b!590466 (=> (not res!254520) (not e!356955))))

(assert (=> b!590466 (= res!254520 (matchR!610 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!250065)))) (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!250065))))))))

(declare-fun b!590467 () Bool)

(assert (=> b!590467 (= e!356955 (contains!1371 (t!78831 rules!3103) (rule!1907 (_1!3648 (get!2226 lt!250065)))))))

(declare-fun b!590468 () Bool)

(declare-fun res!254523 () Bool)

(assert (=> b!590468 (=> (not res!254523) (not e!356955))))

(assert (=> b!590468 (= res!254523 (= (++!1629 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!250065)))) (_2!3648 (get!2226 lt!250065))) input!2705))))

(declare-fun bm!40295 () Bool)

(declare-fun call!40300 () Option!1492)

(assert (=> bm!40295 (= call!40300 (maxPrefixOneRule!414 thiss!22590 (h!11221 (t!78831 rules!3103)) input!2705))))

(declare-fun b!590469 () Bool)

(declare-fun res!254521 () Bool)

(assert (=> b!590469 (=> (not res!254521) (not e!356955))))

(assert (=> b!590469 (= res!254521 (= (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!250065)))) (originalCharacters!1180 (_1!3648 (get!2226 lt!250065)))))))

(declare-fun b!590470 () Bool)

(declare-fun e!356956 () Option!1492)

(declare-fun lt!250068 () Option!1492)

(declare-fun lt!250067 () Option!1492)

(assert (=> b!590470 (= e!356956 (ite (and ((_ is None!1491) lt!250068) ((_ is None!1491) lt!250067)) None!1491 (ite ((_ is None!1491) lt!250067) lt!250068 (ite ((_ is None!1491) lt!250068) lt!250067 (ite (>= (size!4612 (_1!3648 (v!16374 lt!250068))) (size!4612 (_1!3648 (v!16374 lt!250067)))) lt!250068 lt!250067)))))))

(assert (=> b!590470 (= lt!250068 call!40300)))

(assert (=> b!590470 (= lt!250067 (maxPrefix!725 thiss!22590 (t!78831 (t!78831 rules!3103)) input!2705))))

(declare-fun b!590471 () Bool)

(assert (=> b!590471 (= e!356956 call!40300)))

(declare-fun d!207782 () Bool)

(declare-fun e!356957 () Bool)

(assert (=> d!207782 e!356957))

(declare-fun res!254526 () Bool)

(assert (=> d!207782 (=> res!254526 e!356957)))

(assert (=> d!207782 (= res!254526 (isEmpty!4204 lt!250065))))

(assert (=> d!207782 (= lt!250065 e!356956)))

(declare-fun c!110207 () Bool)

(assert (=> d!207782 (= c!110207 (and ((_ is Cons!5820) (t!78831 rules!3103)) ((_ is Nil!5820) (t!78831 (t!78831 rules!3103)))))))

(declare-fun lt!250066 () Unit!10563)

(declare-fun lt!250069 () Unit!10563)

(assert (=> d!207782 (= lt!250066 lt!250069)))

(assert (=> d!207782 (isPrefix!769 input!2705 input!2705)))

(assert (=> d!207782 (= lt!250069 (lemmaIsPrefixRefl!505 input!2705 input!2705))))

(assert (=> d!207782 (rulesValidInductive!418 thiss!22590 (t!78831 rules!3103))))

(assert (=> d!207782 (= (maxPrefix!725 thiss!22590 (t!78831 rules!3103) input!2705) lt!250065)))

(declare-fun b!590472 () Bool)

(declare-fun res!254525 () Bool)

(assert (=> b!590472 (=> (not res!254525) (not e!356955))))

(assert (=> b!590472 (= res!254525 (= (value!37385 (_1!3648 (get!2226 lt!250065))) (apply!1394 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!250065)))) (seqFromList!1317 (originalCharacters!1180 (_1!3648 (get!2226 lt!250065)))))))))

(declare-fun b!590473 () Bool)

(assert (=> b!590473 (= e!356957 e!356955)))

(declare-fun res!254522 () Bool)

(assert (=> b!590473 (=> (not res!254522) (not e!356955))))

(assert (=> b!590473 (= res!254522 (isDefined!1303 lt!250065))))

(assert (= (and d!207782 c!110207) b!590471))

(assert (= (and d!207782 (not c!110207)) b!590470))

(assert (= (or b!590471 b!590470) bm!40295))

(assert (= (and d!207782 (not res!254526)) b!590473))

(assert (= (and b!590473 res!254522) b!590469))

(assert (= (and b!590469 res!254521) b!590465))

(assert (= (and b!590465 res!254524) b!590468))

(assert (= (and b!590468 res!254523) b!590472))

(assert (= (and b!590472 res!254525) b!590466))

(assert (= (and b!590466 res!254520) b!590467))

(declare-fun m!851533 () Bool)

(assert (=> b!590465 m!851533))

(declare-fun m!851535 () Bool)

(assert (=> b!590465 m!851535))

(assert (=> b!590465 m!850597))

(assert (=> b!590469 m!851533))

(declare-fun m!851537 () Bool)

(assert (=> b!590469 m!851537))

(assert (=> b!590469 m!851537))

(declare-fun m!851539 () Bool)

(assert (=> b!590469 m!851539))

(assert (=> b!590468 m!851533))

(assert (=> b!590468 m!851537))

(assert (=> b!590468 m!851537))

(assert (=> b!590468 m!851539))

(assert (=> b!590468 m!851539))

(declare-fun m!851541 () Bool)

(assert (=> b!590468 m!851541))

(declare-fun m!851543 () Bool)

(assert (=> b!590473 m!851543))

(declare-fun m!851545 () Bool)

(assert (=> d!207782 m!851545))

(assert (=> d!207782 m!850373))

(assert (=> d!207782 m!850399))

(assert (=> d!207782 m!851395))

(assert (=> b!590472 m!851533))

(declare-fun m!851547 () Bool)

(assert (=> b!590472 m!851547))

(assert (=> b!590472 m!851547))

(declare-fun m!851549 () Bool)

(assert (=> b!590472 m!851549))

(declare-fun m!851551 () Bool)

(assert (=> bm!40295 m!851551))

(assert (=> b!590466 m!851533))

(assert (=> b!590466 m!851537))

(assert (=> b!590466 m!851537))

(assert (=> b!590466 m!851539))

(assert (=> b!590466 m!851539))

(declare-fun m!851553 () Bool)

(assert (=> b!590466 m!851553))

(assert (=> b!590467 m!851533))

(declare-fun m!851555 () Bool)

(assert (=> b!590467 m!851555))

(declare-fun m!851557 () Bool)

(assert (=> b!590470 m!851557))

(assert (=> b!589867 d!207782))

(declare-fun b!590492 () Bool)

(declare-fun e!356966 () Bool)

(declare-fun e!356968 () Bool)

(assert (=> b!590492 (= e!356966 e!356968)))

(declare-fun res!254547 () Bool)

(assert (=> b!590492 (=> (not res!254547) (not e!356968))))

(declare-fun lt!250082 () Option!1492)

(assert (=> b!590492 (= res!254547 (matchR!610 (regex!1141 (h!11221 rules!3103)) (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!250082))))))))

(declare-fun d!207784 () Bool)

(assert (=> d!207784 e!356966))

(declare-fun res!254544 () Bool)

(assert (=> d!207784 (=> res!254544 e!356966)))

(assert (=> d!207784 (= res!254544 (isEmpty!4204 lt!250082))))

(declare-fun e!356967 () Option!1492)

(assert (=> d!207784 (= lt!250082 e!356967)))

(declare-fun c!110210 () Bool)

(declare-datatypes ((tuple2!6772 0))(
  ( (tuple2!6773 (_1!3650 List!5829) (_2!3650 List!5829)) )
))
(declare-fun lt!250080 () tuple2!6772)

(assert (=> d!207784 (= c!110210 (isEmpty!4201 (_1!3650 lt!250080)))))

(declare-fun findLongestMatch!166 (Regex!1475 List!5829) tuple2!6772)

(assert (=> d!207784 (= lt!250080 (findLongestMatch!166 (regex!1141 (h!11221 rules!3103)) lt!249835))))

(assert (=> d!207784 (ruleValid!339 thiss!22590 (h!11221 rules!3103))))

(assert (=> d!207784 (= (maxPrefixOneRule!414 thiss!22590 (h!11221 rules!3103) lt!249835) lt!250082)))

(declare-fun b!590493 () Bool)

(declare-fun res!254542 () Bool)

(assert (=> b!590493 (=> (not res!254542) (not e!356968))))

(assert (=> b!590493 (= res!254542 (= (++!1629 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!250082)))) (_2!3648 (get!2226 lt!250082))) lt!249835))))

(declare-fun b!590494 () Bool)

(declare-fun res!254541 () Bool)

(assert (=> b!590494 (=> (not res!254541) (not e!356968))))

(assert (=> b!590494 (= res!254541 (< (size!4613 (_2!3648 (get!2226 lt!250082))) (size!4613 lt!249835)))))

(declare-fun b!590495 () Bool)

(assert (=> b!590495 (= e!356968 (= (size!4612 (_1!3648 (get!2226 lt!250082))) (size!4613 (originalCharacters!1180 (_1!3648 (get!2226 lt!250082))))))))

(declare-fun b!590496 () Bool)

(declare-fun res!254546 () Bool)

(assert (=> b!590496 (=> (not res!254546) (not e!356968))))

(assert (=> b!590496 (= res!254546 (= (rule!1907 (_1!3648 (get!2226 lt!250082))) (h!11221 rules!3103)))))

(declare-fun b!590497 () Bool)

(assert (=> b!590497 (= e!356967 None!1491)))

(declare-fun b!590498 () Bool)

(declare-fun size!4615 (BalanceConc!3724) Int)

(assert (=> b!590498 (= e!356967 (Some!1491 (tuple2!6769 (Token!2019 (apply!1394 (transformation!1141 (h!11221 rules!3103)) (seqFromList!1317 (_1!3650 lt!250080))) (h!11221 rules!3103) (size!4615 (seqFromList!1317 (_1!3650 lt!250080))) (_1!3650 lt!250080)) (_2!3650 lt!250080))))))

(declare-fun lt!250083 () Unit!10563)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!171 (Regex!1475 List!5829) Unit!10563)

(assert (=> b!590498 (= lt!250083 (longestMatchIsAcceptedByMatchOrIsEmpty!171 (regex!1141 (h!11221 rules!3103)) lt!249835))))

(declare-fun res!254545 () Bool)

(declare-fun findLongestMatchInner!187 (Regex!1475 List!5829 Int List!5829 List!5829 Int) tuple2!6772)

(assert (=> b!590498 (= res!254545 (isEmpty!4201 (_1!3650 (findLongestMatchInner!187 (regex!1141 (h!11221 rules!3103)) Nil!5819 (size!4613 Nil!5819) lt!249835 lt!249835 (size!4613 lt!249835)))))))

(declare-fun e!356969 () Bool)

(assert (=> b!590498 (=> res!254545 e!356969)))

(assert (=> b!590498 e!356969))

(declare-fun lt!250081 () Unit!10563)

(assert (=> b!590498 (= lt!250081 lt!250083)))

(declare-fun lt!250084 () Unit!10563)

(declare-fun lemmaSemiInverse!224 (TokenValueInjection!2098 BalanceConc!3724) Unit!10563)

(assert (=> b!590498 (= lt!250084 (lemmaSemiInverse!224 (transformation!1141 (h!11221 rules!3103)) (seqFromList!1317 (_1!3650 lt!250080))))))

(declare-fun b!590499 () Bool)

(assert (=> b!590499 (= e!356969 (matchR!610 (regex!1141 (h!11221 rules!3103)) (_1!3650 (findLongestMatchInner!187 (regex!1141 (h!11221 rules!3103)) Nil!5819 (size!4613 Nil!5819) lt!249835 lt!249835 (size!4613 lt!249835)))))))

(declare-fun b!590500 () Bool)

(declare-fun res!254543 () Bool)

(assert (=> b!590500 (=> (not res!254543) (not e!356968))))

(assert (=> b!590500 (= res!254543 (= (value!37385 (_1!3648 (get!2226 lt!250082))) (apply!1394 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!250082)))) (seqFromList!1317 (originalCharacters!1180 (_1!3648 (get!2226 lt!250082)))))))))

(assert (= (and d!207784 c!110210) b!590497))

(assert (= (and d!207784 (not c!110210)) b!590498))

(assert (= (and b!590498 (not res!254545)) b!590499))

(assert (= (and d!207784 (not res!254544)) b!590492))

(assert (= (and b!590492 res!254547) b!590493))

(assert (= (and b!590493 res!254542) b!590494))

(assert (= (and b!590494 res!254541) b!590496))

(assert (= (and b!590496 res!254546) b!590500))

(assert (= (and b!590500 res!254543) b!590495))

(declare-fun m!851559 () Bool)

(assert (=> b!590492 m!851559))

(declare-fun m!851561 () Bool)

(assert (=> b!590492 m!851561))

(assert (=> b!590492 m!851561))

(declare-fun m!851563 () Bool)

(assert (=> b!590492 m!851563))

(assert (=> b!590492 m!851563))

(declare-fun m!851565 () Bool)

(assert (=> b!590492 m!851565))

(declare-fun m!851567 () Bool)

(assert (=> b!590499 m!851567))

(assert (=> b!590499 m!850789))

(assert (=> b!590499 m!851567))

(assert (=> b!590499 m!850789))

(declare-fun m!851569 () Bool)

(assert (=> b!590499 m!851569))

(declare-fun m!851571 () Bool)

(assert (=> b!590499 m!851571))

(assert (=> b!590495 m!851559))

(declare-fun m!851573 () Bool)

(assert (=> b!590495 m!851573))

(declare-fun m!851575 () Bool)

(assert (=> b!590498 m!851575))

(declare-fun m!851577 () Bool)

(assert (=> b!590498 m!851577))

(declare-fun m!851579 () Bool)

(assert (=> b!590498 m!851579))

(assert (=> b!590498 m!851567))

(assert (=> b!590498 m!850789))

(assert (=> b!590498 m!851569))

(declare-fun m!851581 () Bool)

(assert (=> b!590498 m!851581))

(assert (=> b!590498 m!851577))

(declare-fun m!851583 () Bool)

(assert (=> b!590498 m!851583))

(assert (=> b!590498 m!850789))

(assert (=> b!590498 m!851567))

(assert (=> b!590498 m!851577))

(assert (=> b!590498 m!851577))

(declare-fun m!851585 () Bool)

(assert (=> b!590498 m!851585))

(assert (=> b!590496 m!851559))

(assert (=> b!590493 m!851559))

(assert (=> b!590493 m!851561))

(assert (=> b!590493 m!851561))

(assert (=> b!590493 m!851563))

(assert (=> b!590493 m!851563))

(declare-fun m!851587 () Bool)

(assert (=> b!590493 m!851587))

(declare-fun m!851589 () Bool)

(assert (=> d!207784 m!851589))

(declare-fun m!851591 () Bool)

(assert (=> d!207784 m!851591))

(declare-fun m!851593 () Bool)

(assert (=> d!207784 m!851593))

(assert (=> d!207784 m!851393))

(assert (=> b!590500 m!851559))

(declare-fun m!851595 () Bool)

(assert (=> b!590500 m!851595))

(assert (=> b!590500 m!851595))

(declare-fun m!851597 () Bool)

(assert (=> b!590500 m!851597))

(assert (=> b!590494 m!851559))

(declare-fun m!851599 () Bool)

(assert (=> b!590494 m!851599))

(assert (=> b!590494 m!850789))

(assert (=> bm!40272 d!207784))

(declare-fun d!207786 () Bool)

(declare-fun lt!250085 () Int)

(assert (=> d!207786 (>= lt!250085 0)))

(declare-fun e!356970 () Int)

(assert (=> d!207786 (= lt!250085 e!356970)))

(declare-fun c!110211 () Bool)

(assert (=> d!207786 (= c!110211 ((_ is Nil!5819) lt!249878))))

(assert (=> d!207786 (= (size!4613 lt!249878) lt!250085)))

(declare-fun b!590501 () Bool)

(assert (=> b!590501 (= e!356970 0)))

(declare-fun b!590502 () Bool)

(assert (=> b!590502 (= e!356970 (+ 1 (size!4613 (t!78830 lt!249878))))))

(assert (= (and d!207786 c!110211) b!590501))

(assert (= (and d!207786 (not c!110211)) b!590502))

(declare-fun m!851601 () Bool)

(assert (=> b!590502 m!851601))

(assert (=> b!589720 d!207786))

(assert (=> b!589720 d!207350))

(declare-fun d!207788 () Bool)

(declare-fun lt!250086 () Int)

(assert (=> d!207788 (>= lt!250086 0)))

(declare-fun e!356971 () Int)

(assert (=> d!207788 (= lt!250086 e!356971)))

(declare-fun c!110212 () Bool)

(assert (=> d!207788 (= c!110212 ((_ is Nil!5819) (_2!3648 (v!16374 lt!249846))))))

(assert (=> d!207788 (= (size!4613 (_2!3648 (v!16374 lt!249846))) lt!250086)))

(declare-fun b!590503 () Bool)

(assert (=> b!590503 (= e!356971 0)))

(declare-fun b!590504 () Bool)

(assert (=> b!590504 (= e!356971 (+ 1 (size!4613 (t!78830 (_2!3648 (v!16374 lt!249846))))))))

(assert (= (and d!207788 c!110212) b!590503))

(assert (= (and d!207788 (not c!110212)) b!590504))

(declare-fun m!851603 () Bool)

(assert (=> b!590504 m!851603))

(assert (=> b!589720 d!207788))

(declare-fun d!207790 () Bool)

(assert (=> d!207790 (= (inv!7365 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491))) (isBalanced!522 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491)))))))

(declare-fun bs!70307 () Bool)

(assert (= bs!70307 d!207790))

(declare-fun m!851605 () Bool)

(assert (=> bs!70307 m!851605))

(assert (=> tb!51545 d!207790))

(declare-fun d!207792 () Bool)

(declare-fun lt!250089 () Bool)

(declare-fun content!1049 (List!5830) (InoxSet Rule!2082))

(assert (=> d!207792 (= lt!250089 (select (content!1049 rules!3103) (rule!1907 (_1!3648 (get!2226 lt!249955)))))))

(declare-fun e!356977 () Bool)

(assert (=> d!207792 (= lt!250089 e!356977)))

(declare-fun res!254553 () Bool)

(assert (=> d!207792 (=> (not res!254553) (not e!356977))))

(assert (=> d!207792 (= res!254553 ((_ is Cons!5820) rules!3103))))

(assert (=> d!207792 (= (contains!1371 rules!3103 (rule!1907 (_1!3648 (get!2226 lt!249955)))) lt!250089)))

(declare-fun b!590509 () Bool)

(declare-fun e!356976 () Bool)

(assert (=> b!590509 (= e!356977 e!356976)))

(declare-fun res!254552 () Bool)

(assert (=> b!590509 (=> res!254552 e!356976)))

(assert (=> b!590509 (= res!254552 (= (h!11221 rules!3103) (rule!1907 (_1!3648 (get!2226 lt!249955)))))))

(declare-fun b!590510 () Bool)

(assert (=> b!590510 (= e!356976 (contains!1371 (t!78831 rules!3103) (rule!1907 (_1!3648 (get!2226 lt!249955)))))))

(assert (= (and d!207792 res!254553) b!590509))

(assert (= (and b!590509 (not res!254552)) b!590510))

(declare-fun m!851607 () Bool)

(assert (=> d!207792 m!851607))

(declare-fun m!851609 () Bool)

(assert (=> d!207792 m!851609))

(declare-fun m!851611 () Bool)

(assert (=> b!590510 m!851611))

(assert (=> b!589873 d!207792))

(assert (=> b!589873 d!207722))

(declare-fun d!207794 () Bool)

(declare-fun lt!250090 () Int)

(assert (=> d!207794 (>= lt!250090 0)))

(declare-fun e!356978 () Int)

(assert (=> d!207794 (= lt!250090 e!356978)))

(declare-fun c!110213 () Bool)

(assert (=> d!207794 (= c!110213 ((_ is Nil!5819) (t!78830 lt!249848)))))

(assert (=> d!207794 (= (size!4613 (t!78830 lt!249848)) lt!250090)))

(declare-fun b!590511 () Bool)

(assert (=> b!590511 (= e!356978 0)))

(declare-fun b!590512 () Bool)

(assert (=> b!590512 (= e!356978 (+ 1 (size!4613 (t!78830 (t!78830 lt!249848)))))))

(assert (= (and d!207794 c!110213) b!590511))

(assert (= (and d!207794 (not c!110213)) b!590512))

(declare-fun m!851613 () Bool)

(assert (=> b!590512 m!851613))

(assert (=> b!589693 d!207794))

(assert (=> d!207408 d!207382))

(declare-fun d!207796 () Bool)

(assert (=> d!207796 (isPrefix!769 input!2705 input!2705)))

(assert (=> d!207796 true))

(declare-fun _$45!1300 () Unit!10563)

(assert (=> d!207796 (= (choose!4254 input!2705 input!2705) _$45!1300)))

(declare-fun bs!70308 () Bool)

(assert (= bs!70308 d!207796))

(assert (=> bs!70308 m!850373))

(assert (=> d!207408 d!207796))

(declare-fun b!590513 () Bool)

(declare-fun e!356979 () Bool)

(declare-fun e!356981 () Bool)

(assert (=> b!590513 (= e!356979 e!356981)))

(declare-fun res!254560 () Bool)

(assert (=> b!590513 (=> (not res!254560) (not e!356981))))

(declare-fun lt!250093 () Option!1492)

(assert (=> b!590513 (= res!254560 (matchR!610 (regex!1141 (h!11221 rules!3103)) (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!250093))))))))

(declare-fun d!207798 () Bool)

(assert (=> d!207798 e!356979))

(declare-fun res!254557 () Bool)

(assert (=> d!207798 (=> res!254557 e!356979)))

(assert (=> d!207798 (= res!254557 (isEmpty!4204 lt!250093))))

(declare-fun e!356980 () Option!1492)

(assert (=> d!207798 (= lt!250093 e!356980)))

(declare-fun c!110214 () Bool)

(declare-fun lt!250091 () tuple2!6772)

(assert (=> d!207798 (= c!110214 (isEmpty!4201 (_1!3650 lt!250091)))))

(assert (=> d!207798 (= lt!250091 (findLongestMatch!166 (regex!1141 (h!11221 rules!3103)) input!2705))))

(assert (=> d!207798 (ruleValid!339 thiss!22590 (h!11221 rules!3103))))

(assert (=> d!207798 (= (maxPrefixOneRule!414 thiss!22590 (h!11221 rules!3103) input!2705) lt!250093)))

(declare-fun b!590514 () Bool)

(declare-fun res!254555 () Bool)

(assert (=> b!590514 (=> (not res!254555) (not e!356981))))

(assert (=> b!590514 (= res!254555 (= (++!1629 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!250093)))) (_2!3648 (get!2226 lt!250093))) input!2705))))

(declare-fun b!590515 () Bool)

(declare-fun res!254554 () Bool)

(assert (=> b!590515 (=> (not res!254554) (not e!356981))))

(assert (=> b!590515 (= res!254554 (< (size!4613 (_2!3648 (get!2226 lt!250093))) (size!4613 input!2705)))))

(declare-fun b!590516 () Bool)

(assert (=> b!590516 (= e!356981 (= (size!4612 (_1!3648 (get!2226 lt!250093))) (size!4613 (originalCharacters!1180 (_1!3648 (get!2226 lt!250093))))))))

(declare-fun b!590517 () Bool)

(declare-fun res!254559 () Bool)

(assert (=> b!590517 (=> (not res!254559) (not e!356981))))

(assert (=> b!590517 (= res!254559 (= (rule!1907 (_1!3648 (get!2226 lt!250093))) (h!11221 rules!3103)))))

(declare-fun b!590518 () Bool)

(assert (=> b!590518 (= e!356980 None!1491)))

(declare-fun b!590519 () Bool)

(assert (=> b!590519 (= e!356980 (Some!1491 (tuple2!6769 (Token!2019 (apply!1394 (transformation!1141 (h!11221 rules!3103)) (seqFromList!1317 (_1!3650 lt!250091))) (h!11221 rules!3103) (size!4615 (seqFromList!1317 (_1!3650 lt!250091))) (_1!3650 lt!250091)) (_2!3650 lt!250091))))))

(declare-fun lt!250094 () Unit!10563)

(assert (=> b!590519 (= lt!250094 (longestMatchIsAcceptedByMatchOrIsEmpty!171 (regex!1141 (h!11221 rules!3103)) input!2705))))

(declare-fun res!254558 () Bool)

(assert (=> b!590519 (= res!254558 (isEmpty!4201 (_1!3650 (findLongestMatchInner!187 (regex!1141 (h!11221 rules!3103)) Nil!5819 (size!4613 Nil!5819) input!2705 input!2705 (size!4613 input!2705)))))))

(declare-fun e!356982 () Bool)

(assert (=> b!590519 (=> res!254558 e!356982)))

(assert (=> b!590519 e!356982))

(declare-fun lt!250092 () Unit!10563)

(assert (=> b!590519 (= lt!250092 lt!250094)))

(declare-fun lt!250095 () Unit!10563)

(assert (=> b!590519 (= lt!250095 (lemmaSemiInverse!224 (transformation!1141 (h!11221 rules!3103)) (seqFromList!1317 (_1!3650 lt!250091))))))

(declare-fun b!590520 () Bool)

(assert (=> b!590520 (= e!356982 (matchR!610 (regex!1141 (h!11221 rules!3103)) (_1!3650 (findLongestMatchInner!187 (regex!1141 (h!11221 rules!3103)) Nil!5819 (size!4613 Nil!5819) input!2705 input!2705 (size!4613 input!2705)))))))

(declare-fun b!590521 () Bool)

(declare-fun res!254556 () Bool)

(assert (=> b!590521 (=> (not res!254556) (not e!356981))))

(assert (=> b!590521 (= res!254556 (= (value!37385 (_1!3648 (get!2226 lt!250093))) (apply!1394 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!250093)))) (seqFromList!1317 (originalCharacters!1180 (_1!3648 (get!2226 lt!250093)))))))))

(assert (= (and d!207798 c!110214) b!590518))

(assert (= (and d!207798 (not c!110214)) b!590519))

(assert (= (and b!590519 (not res!254558)) b!590520))

(assert (= (and d!207798 (not res!254557)) b!590513))

(assert (= (and b!590513 res!254560) b!590514))

(assert (= (and b!590514 res!254555) b!590515))

(assert (= (and b!590515 res!254554) b!590517))

(assert (= (and b!590517 res!254559) b!590521))

(assert (= (and b!590521 res!254556) b!590516))

(declare-fun m!851615 () Bool)

(assert (=> b!590513 m!851615))

(declare-fun m!851617 () Bool)

(assert (=> b!590513 m!851617))

(assert (=> b!590513 m!851617))

(declare-fun m!851619 () Bool)

(assert (=> b!590513 m!851619))

(assert (=> b!590513 m!851619))

(declare-fun m!851621 () Bool)

(assert (=> b!590513 m!851621))

(assert (=> b!590520 m!851567))

(assert (=> b!590520 m!850597))

(assert (=> b!590520 m!851567))

(assert (=> b!590520 m!850597))

(declare-fun m!851623 () Bool)

(assert (=> b!590520 m!851623))

(declare-fun m!851625 () Bool)

(assert (=> b!590520 m!851625))

(assert (=> b!590516 m!851615))

(declare-fun m!851627 () Bool)

(assert (=> b!590516 m!851627))

(declare-fun m!851629 () Bool)

(assert (=> b!590519 m!851629))

(declare-fun m!851631 () Bool)

(assert (=> b!590519 m!851631))

(declare-fun m!851633 () Bool)

(assert (=> b!590519 m!851633))

(assert (=> b!590519 m!851567))

(assert (=> b!590519 m!850597))

(assert (=> b!590519 m!851623))

(declare-fun m!851635 () Bool)

(assert (=> b!590519 m!851635))

(assert (=> b!590519 m!851631))

(declare-fun m!851637 () Bool)

(assert (=> b!590519 m!851637))

(assert (=> b!590519 m!850597))

(assert (=> b!590519 m!851567))

(assert (=> b!590519 m!851631))

(assert (=> b!590519 m!851631))

(declare-fun m!851639 () Bool)

(assert (=> b!590519 m!851639))

(assert (=> b!590517 m!851615))

(assert (=> b!590514 m!851615))

(assert (=> b!590514 m!851617))

(assert (=> b!590514 m!851617))

(assert (=> b!590514 m!851619))

(assert (=> b!590514 m!851619))

(declare-fun m!851641 () Bool)

(assert (=> b!590514 m!851641))

(declare-fun m!851643 () Bool)

(assert (=> d!207798 m!851643))

(declare-fun m!851645 () Bool)

(assert (=> d!207798 m!851645))

(declare-fun m!851647 () Bool)

(assert (=> d!207798 m!851647))

(assert (=> d!207798 m!851393))

(assert (=> b!590521 m!851615))

(declare-fun m!851649 () Bool)

(assert (=> b!590521 m!851649))

(assert (=> b!590521 m!851649))

(declare-fun m!851651 () Bool)

(assert (=> b!590521 m!851651))

(assert (=> b!590515 m!851615))

(declare-fun m!851653 () Bool)

(assert (=> b!590515 m!851653))

(assert (=> b!590515 m!850597))

(assert (=> bm!40271 d!207798))

(declare-fun d!207800 () Bool)

(declare-fun c!110215 () Bool)

(assert (=> d!207800 (= c!110215 ((_ is Node!1858) (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491)))))))

(declare-fun e!356983 () Bool)

(assert (=> d!207800 (= (inv!7364 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491)))) e!356983)))

(declare-fun b!590522 () Bool)

(assert (=> b!590522 (= e!356983 (inv!7368 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491)))))))

(declare-fun b!590523 () Bool)

(declare-fun e!356984 () Bool)

(assert (=> b!590523 (= e!356983 e!356984)))

(declare-fun res!254561 () Bool)

(assert (=> b!590523 (= res!254561 (not ((_ is Leaf!2936) (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491))))))))

(assert (=> b!590523 (=> res!254561 e!356984)))

(declare-fun b!590524 () Bool)

(assert (=> b!590524 (= e!356984 (inv!7369 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491)))))))

(assert (= (and d!207800 c!110215) b!590522))

(assert (= (and d!207800 (not c!110215)) b!590523))

(assert (= (and b!590523 (not res!254561)) b!590524))

(declare-fun m!851655 () Bool)

(assert (=> b!590522 m!851655))

(declare-fun m!851657 () Bool)

(assert (=> b!590524 m!851657))

(assert (=> b!589667 d!207800))

(declare-fun d!207802 () Bool)

(declare-fun lt!250096 () Int)

(assert (=> d!207802 (>= lt!250096 0)))

(declare-fun e!356985 () Int)

(assert (=> d!207802 (= lt!250096 e!356985)))

(declare-fun c!110216 () Bool)

(assert (=> d!207802 (= c!110216 ((_ is Nil!5819) lt!249854))))

(assert (=> d!207802 (= (size!4613 lt!249854) lt!250096)))

(declare-fun b!590525 () Bool)

(assert (=> b!590525 (= e!356985 0)))

(declare-fun b!590526 () Bool)

(assert (=> b!590526 (= e!356985 (+ 1 (size!4613 (t!78830 lt!249854))))))

(assert (= (and d!207802 c!110216) b!590525))

(assert (= (and d!207802 (not c!110216)) b!590526))

(declare-fun m!851659 () Bool)

(assert (=> b!590526 m!851659))

(assert (=> b!589615 d!207802))

(assert (=> b!589615 d!207418))

(assert (=> b!589615 d!207764))

(declare-fun d!207804 () Bool)

(declare-fun lt!250097 () Bool)

(assert (=> d!207804 (= lt!250097 (select (content!1049 rules!3103) (rule!1907 (_1!3648 (get!2226 lt!249950)))))))

(declare-fun e!356987 () Bool)

(assert (=> d!207804 (= lt!250097 e!356987)))

(declare-fun res!254563 () Bool)

(assert (=> d!207804 (=> (not res!254563) (not e!356987))))

(assert (=> d!207804 (= res!254563 ((_ is Cons!5820) rules!3103))))

(assert (=> d!207804 (= (contains!1371 rules!3103 (rule!1907 (_1!3648 (get!2226 lt!249950)))) lt!250097)))

(declare-fun b!590527 () Bool)

(declare-fun e!356986 () Bool)

(assert (=> b!590527 (= e!356987 e!356986)))

(declare-fun res!254562 () Bool)

(assert (=> b!590527 (=> res!254562 e!356986)))

(assert (=> b!590527 (= res!254562 (= (h!11221 rules!3103) (rule!1907 (_1!3648 (get!2226 lt!249950)))))))

(declare-fun b!590528 () Bool)

(assert (=> b!590528 (= e!356986 (contains!1371 (t!78831 rules!3103) (rule!1907 (_1!3648 (get!2226 lt!249950)))))))

(assert (= (and d!207804 res!254563) b!590527))

(assert (= (and b!590527 (not res!254562)) b!590528))

(assert (=> d!207804 m!851607))

(declare-fun m!851661 () Bool)

(assert (=> d!207804 m!851661))

(declare-fun m!851663 () Bool)

(assert (=> b!590528 m!851663))

(assert (=> b!589864 d!207804))

(assert (=> b!589864 d!207482))

(declare-fun d!207806 () Bool)

(declare-fun lt!250098 () Int)

(assert (=> d!207806 (>= lt!250098 0)))

(declare-fun e!356988 () Int)

(assert (=> d!207806 (= lt!250098 e!356988)))

(declare-fun c!110217 () Bool)

(assert (=> d!207806 (= c!110217 ((_ is Nil!5819) (_2!3648 (get!2226 lt!249955))))))

(assert (=> d!207806 (= (size!4613 (_2!3648 (get!2226 lt!249955))) lt!250098)))

(declare-fun b!590529 () Bool)

(assert (=> b!590529 (= e!356988 0)))

(declare-fun b!590530 () Bool)

(assert (=> b!590530 (= e!356988 (+ 1 (size!4613 (t!78830 (_2!3648 (get!2226 lt!249955))))))))

(assert (= (and d!207806 c!110217) b!590529))

(assert (= (and d!207806 (not c!110217)) b!590530))

(declare-fun m!851665 () Bool)

(assert (=> b!590530 m!851665))

(assert (=> b!589871 d!207806))

(assert (=> b!589871 d!207722))

(declare-fun d!207808 () Bool)

(declare-fun lt!250099 () Int)

(assert (=> d!207808 (>= lt!250099 0)))

(declare-fun e!356989 () Int)

(assert (=> d!207808 (= lt!250099 e!356989)))

(declare-fun c!110218 () Bool)

(assert (=> d!207808 (= c!110218 ((_ is Nil!5819) lt!249835))))

(assert (=> d!207808 (= (size!4613 lt!249835) lt!250099)))

(declare-fun b!590531 () Bool)

(assert (=> b!590531 (= e!356989 0)))

(declare-fun b!590532 () Bool)

(assert (=> b!590532 (= e!356989 (+ 1 (size!4613 (t!78830 lt!249835))))))

(assert (= (and d!207808 c!110218) b!590531))

(assert (= (and d!207808 (not c!110218)) b!590532))

(declare-fun m!851667 () Bool)

(assert (=> b!590532 m!851667))

(assert (=> b!589871 d!207808))

(declare-fun d!207810 () Bool)

(declare-fun lt!250100 () Int)

(assert (=> d!207810 (>= lt!250100 0)))

(declare-fun e!356990 () Int)

(assert (=> d!207810 (= lt!250100 e!356990)))

(declare-fun c!110219 () Bool)

(assert (=> d!207810 (= c!110219 ((_ is Nil!5819) (t!78830 lt!249831)))))

(assert (=> d!207810 (= (size!4613 (t!78830 lt!249831)) lt!250100)))

(declare-fun b!590533 () Bool)

(assert (=> b!590533 (= e!356990 0)))

(declare-fun b!590534 () Bool)

(assert (=> b!590534 (= e!356990 (+ 1 (size!4613 (t!78830 (t!78830 lt!249831)))))))

(assert (= (and d!207810 c!110219) b!590533))

(assert (= (and d!207810 (not c!110219)) b!590534))

(declare-fun m!851669 () Bool)

(assert (=> b!590534 m!851669))

(assert (=> b!589767 d!207810))

(declare-fun bs!70309 () Bool)

(declare-fun d!207812 () Bool)

(assert (= bs!70309 (and d!207812 d!207714)))

(declare-fun lambda!15965 () Int)

(assert (=> bs!70309 (= lambda!15965 lambda!15959)))

(assert (=> d!207812 true))

(declare-fun lt!250103 () Bool)

(assert (=> d!207812 (= lt!250103 (rulesValidInductive!418 thiss!22590 rules!3103))))

(assert (=> d!207812 (= lt!250103 (forall!1552 rules!3103 lambda!15965))))

(assert (=> d!207812 (= (rulesValid!413 thiss!22590 rules!3103) lt!250103)))

(declare-fun bs!70310 () Bool)

(assert (= bs!70310 d!207812))

(assert (=> bs!70310 m!850769))

(declare-fun m!851671 () Bool)

(assert (=> bs!70310 m!851671))

(assert (=> d!207340 d!207812))

(declare-fun d!207814 () Bool)

(declare-fun lt!250104 () List!5829)

(assert (=> d!207814 (= (++!1629 (t!78830 lt!249848) lt!250104) (tail!777 input!2705))))

(declare-fun e!356991 () List!5829)

(assert (=> d!207814 (= lt!250104 e!356991)))

(declare-fun c!110220 () Bool)

(assert (=> d!207814 (= c!110220 ((_ is Cons!5819) (t!78830 lt!249848)))))

(assert (=> d!207814 (>= (size!4613 (tail!777 input!2705)) (size!4613 (t!78830 lt!249848)))))

(assert (=> d!207814 (= (getSuffix!286 (tail!777 input!2705) (t!78830 lt!249848)) lt!250104)))

(declare-fun b!590535 () Bool)

(assert (=> b!590535 (= e!356991 (getSuffix!286 (tail!777 (tail!777 input!2705)) (t!78830 (t!78830 lt!249848))))))

(declare-fun b!590536 () Bool)

(assert (=> b!590536 (= e!356991 (tail!777 input!2705))))

(assert (= (and d!207814 c!110220) b!590535))

(assert (= (and d!207814 (not c!110220)) b!590536))

(declare-fun m!851673 () Bool)

(assert (=> d!207814 m!851673))

(assert (=> d!207814 m!850601))

(assert (=> d!207814 m!851373))

(assert (=> d!207814 m!850517))

(assert (=> b!590535 m!850601))

(assert (=> b!590535 m!851377))

(assert (=> b!590535 m!851377))

(declare-fun m!851675 () Bool)

(assert (=> b!590535 m!851675))

(assert (=> b!589842 d!207814))

(assert (=> b!589842 d!207704))

(assert (=> d!207434 d!207400))

(declare-fun d!207816 () Bool)

(assert (=> d!207816 (ruleValid!339 thiss!22590 (rule!1907 token!491))))

(assert (=> d!207816 true))

(declare-fun _$65!848 () Unit!10563)

(assert (=> d!207816 (= (choose!4255 thiss!22590 (rule!1907 token!491) rules!3103) _$65!848)))

(declare-fun bs!70311 () Bool)

(assert (= bs!70311 d!207816))

(assert (=> bs!70311 m!850375))

(assert (=> d!207434 d!207816))

(declare-fun d!207818 () Bool)

(declare-fun lt!250105 () Bool)

(assert (=> d!207818 (= lt!250105 (select (content!1049 rules!3103) (rule!1907 token!491)))))

(declare-fun e!356993 () Bool)

(assert (=> d!207818 (= lt!250105 e!356993)))

(declare-fun res!254565 () Bool)

(assert (=> d!207818 (=> (not res!254565) (not e!356993))))

(assert (=> d!207818 (= res!254565 ((_ is Cons!5820) rules!3103))))

(assert (=> d!207818 (= (contains!1371 rules!3103 (rule!1907 token!491)) lt!250105)))

(declare-fun b!590537 () Bool)

(declare-fun e!356992 () Bool)

(assert (=> b!590537 (= e!356993 e!356992)))

(declare-fun res!254564 () Bool)

(assert (=> b!590537 (=> res!254564 e!356992)))

(assert (=> b!590537 (= res!254564 (= (h!11221 rules!3103) (rule!1907 token!491)))))

(declare-fun b!590538 () Bool)

(assert (=> b!590538 (= e!356992 (contains!1371 (t!78831 rules!3103) (rule!1907 token!491)))))

(assert (= (and d!207818 res!254565) b!590537))

(assert (= (and b!590537 (not res!254564)) b!590538))

(assert (=> d!207818 m!851607))

(declare-fun m!851677 () Bool)

(assert (=> d!207818 m!851677))

(declare-fun m!851679 () Bool)

(assert (=> b!590538 m!851679))

(assert (=> d!207434 d!207818))

(declare-fun d!207820 () Bool)

(declare-fun nullableFct!137 (Regex!1475) Bool)

(assert (=> d!207820 (= (nullable!407 (regex!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (nullableFct!137 (regex!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))))

(declare-fun bs!70312 () Bool)

(assert (= bs!70312 d!207820))

(declare-fun m!851681 () Bool)

(assert (=> bs!70312 m!851681))

(assert (=> b!589710 d!207820))

(assert (=> b!589878 d!207722))

(declare-fun d!207822 () Bool)

(assert (=> d!207822 (= (apply!1394 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))) (seqFromList!1317 (originalCharacters!1180 (_1!3648 (get!2226 lt!249955))))) (dynLambda!3392 (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249955))))) (seqFromList!1317 (originalCharacters!1180 (_1!3648 (get!2226 lt!249955))))))))

(declare-fun b_lambda!23257 () Bool)

(assert (=> (not b_lambda!23257) (not d!207822)))

(declare-fun t!78923 () Bool)

(declare-fun tb!51629 () Bool)

(assert (=> (and b!589571 (= (toValue!2024 (transformation!1141 (h!11221 rules!3103))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))))) t!78923) tb!51629))

(declare-fun result!57906 () Bool)

(assert (=> tb!51629 (= result!57906 (inv!21 (dynLambda!3392 (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249955))))) (seqFromList!1317 (originalCharacters!1180 (_1!3648 (get!2226 lt!249955)))))))))

(declare-fun m!851683 () Bool)

(assert (=> tb!51629 m!851683))

(assert (=> d!207822 t!78923))

(declare-fun b_and!58179 () Bool)

(assert (= b_and!58111 (and (=> t!78923 result!57906) b_and!58179)))

(declare-fun t!78925 () Bool)

(declare-fun tb!51631 () Bool)

(assert (=> (and b!589565 (= (toValue!2024 (transformation!1141 (rule!1907 token!491))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))))) t!78925) tb!51631))

(declare-fun result!57908 () Bool)

(assert (= result!57908 result!57906))

(assert (=> d!207822 t!78925))

(declare-fun b_and!58181 () Bool)

(assert (= b_and!58113 (and (=> t!78925 result!57908) b_and!58181)))

(declare-fun t!78927 () Bool)

(declare-fun tb!51633 () Bool)

(assert (=> (and b!589917 (= (toValue!2024 (transformation!1141 (h!11221 (t!78831 rules!3103)))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))))) t!78927) tb!51633))

(declare-fun result!57910 () Bool)

(assert (= result!57910 result!57906))

(assert (=> d!207822 t!78927))

(declare-fun b_and!58183 () Bool)

(assert (= b_and!58135 (and (=> t!78927 result!57910) b_and!58183)))

(assert (=> d!207822 m!850805))

(declare-fun m!851685 () Bool)

(assert (=> d!207822 m!851685))

(assert (=> b!589878 d!207822))

(declare-fun d!207824 () Bool)

(assert (=> d!207824 (= (seqFromList!1317 (originalCharacters!1180 (_1!3648 (get!2226 lt!249955)))) (fromListB!576 (originalCharacters!1180 (_1!3648 (get!2226 lt!249955)))))))

(declare-fun bs!70313 () Bool)

(assert (= bs!70313 d!207824))

(declare-fun m!851687 () Bool)

(assert (=> bs!70313 m!851687))

(assert (=> b!589878 d!207824))

(declare-fun b!590539 () Bool)

(declare-fun res!254570 () Bool)

(declare-fun e!356995 () Bool)

(assert (=> b!590539 (=> (not res!254570) (not e!356995))))

(declare-fun lt!250106 () Option!1492)

(assert (=> b!590539 (= res!254570 (< (size!4613 (_2!3648 (get!2226 lt!250106))) (size!4613 lt!249835)))))

(declare-fun b!590540 () Bool)

(declare-fun res!254566 () Bool)

(assert (=> b!590540 (=> (not res!254566) (not e!356995))))

(assert (=> b!590540 (= res!254566 (matchR!610 (regex!1141 (rule!1907 (_1!3648 (get!2226 lt!250106)))) (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!250106))))))))

(declare-fun b!590541 () Bool)

(assert (=> b!590541 (= e!356995 (contains!1371 (t!78831 rules!3103) (rule!1907 (_1!3648 (get!2226 lt!250106)))))))

(declare-fun b!590542 () Bool)

(declare-fun res!254569 () Bool)

(assert (=> b!590542 (=> (not res!254569) (not e!356995))))

(assert (=> b!590542 (= res!254569 (= (++!1629 (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!250106)))) (_2!3648 (get!2226 lt!250106))) lt!249835))))

(declare-fun call!40301 () Option!1492)

(declare-fun bm!40296 () Bool)

(assert (=> bm!40296 (= call!40301 (maxPrefixOneRule!414 thiss!22590 (h!11221 (t!78831 rules!3103)) lt!249835))))

(declare-fun b!590543 () Bool)

(declare-fun res!254567 () Bool)

(assert (=> b!590543 (=> (not res!254567) (not e!356995))))

(assert (=> b!590543 (= res!254567 (= (list!2432 (charsOf!770 (_1!3648 (get!2226 lt!250106)))) (originalCharacters!1180 (_1!3648 (get!2226 lt!250106)))))))

(declare-fun b!590544 () Bool)

(declare-fun e!356996 () Option!1492)

(declare-fun lt!250109 () Option!1492)

(declare-fun lt!250108 () Option!1492)

(assert (=> b!590544 (= e!356996 (ite (and ((_ is None!1491) lt!250109) ((_ is None!1491) lt!250108)) None!1491 (ite ((_ is None!1491) lt!250108) lt!250109 (ite ((_ is None!1491) lt!250109) lt!250108 (ite (>= (size!4612 (_1!3648 (v!16374 lt!250109))) (size!4612 (_1!3648 (v!16374 lt!250108)))) lt!250109 lt!250108)))))))

(assert (=> b!590544 (= lt!250109 call!40301)))

(assert (=> b!590544 (= lt!250108 (maxPrefix!725 thiss!22590 (t!78831 (t!78831 rules!3103)) lt!249835))))

(declare-fun b!590545 () Bool)

(assert (=> b!590545 (= e!356996 call!40301)))

(declare-fun d!207826 () Bool)

(declare-fun e!356997 () Bool)

(assert (=> d!207826 e!356997))

(declare-fun res!254572 () Bool)

(assert (=> d!207826 (=> res!254572 e!356997)))

(assert (=> d!207826 (= res!254572 (isEmpty!4204 lt!250106))))

(assert (=> d!207826 (= lt!250106 e!356996)))

(declare-fun c!110221 () Bool)

(assert (=> d!207826 (= c!110221 (and ((_ is Cons!5820) (t!78831 rules!3103)) ((_ is Nil!5820) (t!78831 (t!78831 rules!3103)))))))

(declare-fun lt!250107 () Unit!10563)

(declare-fun lt!250110 () Unit!10563)

(assert (=> d!207826 (= lt!250107 lt!250110)))

(assert (=> d!207826 (isPrefix!769 lt!249835 lt!249835)))

(assert (=> d!207826 (= lt!250110 (lemmaIsPrefixRefl!505 lt!249835 lt!249835))))

(assert (=> d!207826 (rulesValidInductive!418 thiss!22590 (t!78831 rules!3103))))

(assert (=> d!207826 (= (maxPrefix!725 thiss!22590 (t!78831 rules!3103) lt!249835) lt!250106)))

(declare-fun b!590546 () Bool)

(declare-fun res!254571 () Bool)

(assert (=> b!590546 (=> (not res!254571) (not e!356995))))

(assert (=> b!590546 (= res!254571 (= (value!37385 (_1!3648 (get!2226 lt!250106))) (apply!1394 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!250106)))) (seqFromList!1317 (originalCharacters!1180 (_1!3648 (get!2226 lt!250106)))))))))

(declare-fun b!590547 () Bool)

(assert (=> b!590547 (= e!356997 e!356995)))

(declare-fun res!254568 () Bool)

(assert (=> b!590547 (=> (not res!254568) (not e!356995))))

(assert (=> b!590547 (= res!254568 (isDefined!1303 lt!250106))))

(assert (= (and d!207826 c!110221) b!590545))

(assert (= (and d!207826 (not c!110221)) b!590544))

(assert (= (or b!590545 b!590544) bm!40296))

(assert (= (and d!207826 (not res!254572)) b!590547))

(assert (= (and b!590547 res!254568) b!590543))

(assert (= (and b!590543 res!254567) b!590539))

(assert (= (and b!590539 res!254570) b!590542))

(assert (= (and b!590542 res!254569) b!590546))

(assert (= (and b!590546 res!254571) b!590540))

(assert (= (and b!590540 res!254566) b!590541))

(declare-fun m!851689 () Bool)

(assert (=> b!590539 m!851689))

(declare-fun m!851691 () Bool)

(assert (=> b!590539 m!851691))

(assert (=> b!590539 m!850789))

(assert (=> b!590543 m!851689))

(declare-fun m!851693 () Bool)

(assert (=> b!590543 m!851693))

(assert (=> b!590543 m!851693))

(declare-fun m!851695 () Bool)

(assert (=> b!590543 m!851695))

(assert (=> b!590542 m!851689))

(assert (=> b!590542 m!851693))

(assert (=> b!590542 m!851693))

(assert (=> b!590542 m!851695))

(assert (=> b!590542 m!851695))

(declare-fun m!851697 () Bool)

(assert (=> b!590542 m!851697))

(declare-fun m!851699 () Bool)

(assert (=> b!590547 m!851699))

(declare-fun m!851701 () Bool)

(assert (=> d!207826 m!851701))

(assert (=> d!207826 m!850801))

(assert (=> d!207826 m!850803))

(assert (=> d!207826 m!851395))

(assert (=> b!590546 m!851689))

(declare-fun m!851703 () Bool)

(assert (=> b!590546 m!851703))

(assert (=> b!590546 m!851703))

(declare-fun m!851705 () Bool)

(assert (=> b!590546 m!851705))

(declare-fun m!851707 () Bool)

(assert (=> bm!40296 m!851707))

(assert (=> b!590540 m!851689))

(assert (=> b!590540 m!851693))

(assert (=> b!590540 m!851693))

(assert (=> b!590540 m!851695))

(assert (=> b!590540 m!851695))

(declare-fun m!851709 () Bool)

(assert (=> b!590540 m!851709))

(assert (=> b!590541 m!851689))

(declare-fun m!851711 () Bool)

(assert (=> b!590541 m!851711))

(declare-fun m!851713 () Bool)

(assert (=> b!590544 m!851713))

(assert (=> b!589876 d!207826))

(declare-fun d!207828 () Bool)

(declare-fun res!254584 () Bool)

(declare-fun e!357013 () Bool)

(assert (=> d!207828 (=> res!254584 e!357013)))

(assert (=> d!207828 (= res!254584 ((_ is ElementMatch!1475) (regex!1141 (rule!1907 token!491))))))

(assert (=> d!207828 (= (validRegex!502 (regex!1141 (rule!1907 token!491))) e!357013)))

(declare-fun b!590566 () Bool)

(declare-fun e!357014 () Bool)

(declare-fun e!357017 () Bool)

(assert (=> b!590566 (= e!357014 e!357017)))

(declare-fun c!110227 () Bool)

(assert (=> b!590566 (= c!110227 ((_ is Union!1475) (regex!1141 (rule!1907 token!491))))))

(declare-fun b!590567 () Bool)

(declare-fun e!357015 () Bool)

(declare-fun call!40308 () Bool)

(assert (=> b!590567 (= e!357015 call!40308)))

(declare-fun b!590568 () Bool)

(assert (=> b!590568 (= e!357013 e!357014)))

(declare-fun c!110226 () Bool)

(assert (=> b!590568 (= c!110226 ((_ is Star!1475) (regex!1141 (rule!1907 token!491))))))

(declare-fun b!590569 () Bool)

(declare-fun e!357012 () Bool)

(assert (=> b!590569 (= e!357012 e!357015)))

(declare-fun res!254585 () Bool)

(assert (=> b!590569 (=> (not res!254585) (not e!357015))))

(declare-fun call!40310 () Bool)

(assert (=> b!590569 (= res!254585 call!40310)))

(declare-fun bm!40303 () Bool)

(declare-fun call!40309 () Bool)

(assert (=> bm!40303 (= call!40308 call!40309)))

(declare-fun b!590570 () Bool)

(declare-fun e!357018 () Bool)

(assert (=> b!590570 (= e!357018 call!40309)))

(declare-fun bm!40304 () Bool)

(assert (=> bm!40304 (= call!40309 (validRegex!502 (ite c!110226 (reg!1804 (regex!1141 (rule!1907 token!491))) (ite c!110227 (regOne!3463 (regex!1141 (rule!1907 token!491))) (regTwo!3462 (regex!1141 (rule!1907 token!491)))))))))

(declare-fun b!590571 () Bool)

(declare-fun e!357016 () Bool)

(assert (=> b!590571 (= e!357016 call!40310)))

(declare-fun b!590572 () Bool)

(declare-fun res!254583 () Bool)

(assert (=> b!590572 (=> (not res!254583) (not e!357016))))

(assert (=> b!590572 (= res!254583 call!40308)))

(assert (=> b!590572 (= e!357017 e!357016)))

(declare-fun b!590573 () Bool)

(declare-fun res!254587 () Bool)

(assert (=> b!590573 (=> res!254587 e!357012)))

(assert (=> b!590573 (= res!254587 (not ((_ is Concat!2640) (regex!1141 (rule!1907 token!491)))))))

(assert (=> b!590573 (= e!357017 e!357012)))

(declare-fun bm!40305 () Bool)

(assert (=> bm!40305 (= call!40310 (validRegex!502 (ite c!110227 (regTwo!3463 (regex!1141 (rule!1907 token!491))) (regOne!3462 (regex!1141 (rule!1907 token!491))))))))

(declare-fun b!590574 () Bool)

(assert (=> b!590574 (= e!357014 e!357018)))

(declare-fun res!254586 () Bool)

(assert (=> b!590574 (= res!254586 (not (nullable!407 (reg!1804 (regex!1141 (rule!1907 token!491))))))))

(assert (=> b!590574 (=> (not res!254586) (not e!357018))))

(assert (= (and d!207828 (not res!254584)) b!590568))

(assert (= (and b!590568 c!110226) b!590574))

(assert (= (and b!590568 (not c!110226)) b!590566))

(assert (= (and b!590574 res!254586) b!590570))

(assert (= (and b!590566 c!110227) b!590572))

(assert (= (and b!590566 (not c!110227)) b!590573))

(assert (= (and b!590572 res!254583) b!590571))

(assert (= (and b!590573 (not res!254587)) b!590569))

(assert (= (and b!590569 res!254585) b!590567))

(assert (= (or b!590572 b!590567) bm!40303))

(assert (= (or b!590571 b!590569) bm!40305))

(assert (= (or b!590570 bm!40303) bm!40304))

(declare-fun m!851715 () Bool)

(assert (=> bm!40304 m!851715))

(declare-fun m!851717 () Bool)

(assert (=> bm!40305 m!851717))

(declare-fun m!851719 () Bool)

(assert (=> b!590574 m!851719))

(assert (=> d!207400 d!207828))

(declare-fun d!207830 () Bool)

(declare-fun lt!250111 () Int)

(assert (=> d!207830 (>= lt!250111 0)))

(declare-fun e!357019 () Int)

(assert (=> d!207830 (= lt!250111 e!357019)))

(declare-fun c!110228 () Bool)

(assert (=> d!207830 (= c!110228 ((_ is Nil!5819) (originalCharacters!1180 (_1!3648 (v!16374 lt!249846)))))))

(assert (=> d!207830 (= (size!4613 (originalCharacters!1180 (_1!3648 (v!16374 lt!249846)))) lt!250111)))

(declare-fun b!590575 () Bool)

(assert (=> b!590575 (= e!357019 0)))

(declare-fun b!590576 () Bool)

(assert (=> b!590576 (= e!357019 (+ 1 (size!4613 (t!78830 (originalCharacters!1180 (_1!3648 (v!16374 lt!249846)))))))))

(assert (= (and d!207830 c!110228) b!590575))

(assert (= (and d!207830 (not c!110228)) b!590576))

(declare-fun m!851721 () Bool)

(assert (=> b!590576 m!851721))

(assert (=> d!207356 d!207830))

(declare-fun d!207832 () Bool)

(assert (=> d!207832 (= (inv!7365 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846))))) (isBalanced!522 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846)))))))))

(declare-fun bs!70314 () Bool)

(assert (= bs!70314 d!207832))

(declare-fun m!851723 () Bool)

(assert (=> bs!70314 m!851723))

(assert (=> tb!51563 d!207832))

(declare-fun d!207834 () Bool)

(assert (=> d!207834 (= (list!2432 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491))) (list!2434 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491)))))))

(declare-fun bs!70315 () Bool)

(assert (= bs!70315 d!207834))

(declare-fun m!851725 () Bool)

(assert (=> bs!70315 m!851725))

(assert (=> b!589656 d!207834))

(assert (=> b!589869 d!207482))

(declare-fun d!207836 () Bool)

(assert (=> d!207836 (= (apply!1394 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))) (seqFromList!1317 (originalCharacters!1180 (_1!3648 (get!2226 lt!249950))))) (dynLambda!3392 (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249950))))) (seqFromList!1317 (originalCharacters!1180 (_1!3648 (get!2226 lt!249950))))))))

(declare-fun b_lambda!23259 () Bool)

(assert (=> (not b_lambda!23259) (not d!207836)))

(declare-fun t!78929 () Bool)

(declare-fun tb!51635 () Bool)

(assert (=> (and b!589571 (= (toValue!2024 (transformation!1141 (h!11221 rules!3103))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))))) t!78929) tb!51635))

(declare-fun result!57912 () Bool)

(assert (=> tb!51635 (= result!57912 (inv!21 (dynLambda!3392 (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249950))))) (seqFromList!1317 (originalCharacters!1180 (_1!3648 (get!2226 lt!249950)))))))))

(declare-fun m!851727 () Bool)

(assert (=> tb!51635 m!851727))

(assert (=> d!207836 t!78929))

(declare-fun b_and!58185 () Bool)

(assert (= b_and!58179 (and (=> t!78929 result!57912) b_and!58185)))

(declare-fun t!78931 () Bool)

(declare-fun tb!51637 () Bool)

(assert (=> (and b!589565 (= (toValue!2024 (transformation!1141 (rule!1907 token!491))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))))) t!78931) tb!51637))

(declare-fun result!57914 () Bool)

(assert (= result!57914 result!57912))

(assert (=> d!207836 t!78931))

(declare-fun b_and!58187 () Bool)

(assert (= b_and!58181 (and (=> t!78931 result!57914) b_and!58187)))

(declare-fun t!78933 () Bool)

(declare-fun tb!51639 () Bool)

(assert (=> (and b!589917 (= (toValue!2024 (transformation!1141 (h!11221 (t!78831 rules!3103)))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))))) t!78933) tb!51639))

(declare-fun result!57916 () Bool)

(assert (= result!57916 result!57912))

(assert (=> d!207836 t!78933))

(declare-fun b_and!58189 () Bool)

(assert (= b_and!58183 (and (=> t!78933 result!57916) b_and!58189)))

(assert (=> d!207836 m!850771))

(declare-fun m!851729 () Bool)

(assert (=> d!207836 m!851729))

(assert (=> b!589869 d!207836))

(declare-fun d!207838 () Bool)

(assert (=> d!207838 (= (seqFromList!1317 (originalCharacters!1180 (_1!3648 (get!2226 lt!249950)))) (fromListB!576 (originalCharacters!1180 (_1!3648 (get!2226 lt!249950)))))))

(declare-fun bs!70316 () Bool)

(assert (= bs!70316 d!207838))

(declare-fun m!851731 () Bool)

(assert (=> bs!70316 m!851731))

(assert (=> b!589869 d!207838))

(declare-fun d!207840 () Bool)

(declare-fun c!110229 () Bool)

(assert (=> d!207840 (= c!110229 ((_ is Nil!5819) lt!249878))))

(declare-fun e!357021 () (InoxSet C!3872))

(assert (=> d!207840 (= (content!1047 lt!249878) e!357021)))

(declare-fun b!590577 () Bool)

(assert (=> b!590577 (= e!357021 ((as const (Array C!3872 Bool)) false))))

(declare-fun b!590578 () Bool)

(assert (=> b!590578 (= e!357021 ((_ map or) (store ((as const (Array C!3872 Bool)) false) (h!11220 lt!249878) true) (content!1047 (t!78830 lt!249878))))))

(assert (= (and d!207840 c!110229) b!590577))

(assert (= (and d!207840 (not c!110229)) b!590578))

(declare-fun m!851733 () Bool)

(assert (=> b!590578 m!851733))

(declare-fun m!851735 () Bool)

(assert (=> b!590578 m!851735))

(assert (=> d!207380 d!207840))

(declare-fun d!207842 () Bool)

(declare-fun c!110230 () Bool)

(assert (=> d!207842 (= c!110230 ((_ is Nil!5819) lt!249848))))

(declare-fun e!357022 () (InoxSet C!3872))

(assert (=> d!207842 (= (content!1047 lt!249848) e!357022)))

(declare-fun b!590579 () Bool)

(assert (=> b!590579 (= e!357022 ((as const (Array C!3872 Bool)) false))))

(declare-fun b!590580 () Bool)

(assert (=> b!590580 (= e!357022 ((_ map or) (store ((as const (Array C!3872 Bool)) false) (h!11220 lt!249848) true) (content!1047 (t!78830 lt!249848))))))

(assert (= (and d!207842 c!110230) b!590579))

(assert (= (and d!207842 (not c!110230)) b!590580))

(declare-fun m!851737 () Bool)

(assert (=> b!590580 m!851737))

(assert (=> b!590580 m!851427))

(assert (=> d!207380 d!207842))

(declare-fun d!207844 () Bool)

(declare-fun c!110231 () Bool)

(assert (=> d!207844 (= c!110231 ((_ is Nil!5819) (_2!3648 (v!16374 lt!249846))))))

(declare-fun e!357023 () (InoxSet C!3872))

(assert (=> d!207844 (= (content!1047 (_2!3648 (v!16374 lt!249846))) e!357023)))

(declare-fun b!590581 () Bool)

(assert (=> b!590581 (= e!357023 ((as const (Array C!3872 Bool)) false))))

(declare-fun b!590582 () Bool)

(assert (=> b!590582 (= e!357023 ((_ map or) (store ((as const (Array C!3872 Bool)) false) (h!11220 (_2!3648 (v!16374 lt!249846))) true) (content!1047 (t!78830 (_2!3648 (v!16374 lt!249846))))))))

(assert (= (and d!207844 c!110231) b!590581))

(assert (= (and d!207844 (not c!110231)) b!590582))

(declare-fun m!851739 () Bool)

(assert (=> b!590582 m!851739))

(declare-fun m!851741 () Bool)

(assert (=> b!590582 m!851741))

(assert (=> d!207380 d!207844))

(declare-fun d!207846 () Bool)

(declare-fun res!254589 () Bool)

(declare-fun e!357025 () Bool)

(assert (=> d!207846 (=> res!254589 e!357025)))

(assert (=> d!207846 (= res!254589 ((_ is ElementMatch!1475) (regex!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))))

(assert (=> d!207846 (= (validRegex!502 (regex!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) e!357025)))

(declare-fun b!590583 () Bool)

(declare-fun e!357026 () Bool)

(declare-fun e!357029 () Bool)

(assert (=> b!590583 (= e!357026 e!357029)))

(declare-fun c!110233 () Bool)

(assert (=> b!590583 (= c!110233 ((_ is Union!1475) (regex!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))))

(declare-fun b!590584 () Bool)

(declare-fun e!357027 () Bool)

(declare-fun call!40311 () Bool)

(assert (=> b!590584 (= e!357027 call!40311)))

(declare-fun b!590585 () Bool)

(assert (=> b!590585 (= e!357025 e!357026)))

(declare-fun c!110232 () Bool)

(assert (=> b!590585 (= c!110232 ((_ is Star!1475) (regex!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))))

(declare-fun b!590586 () Bool)

(declare-fun e!357024 () Bool)

(assert (=> b!590586 (= e!357024 e!357027)))

(declare-fun res!254590 () Bool)

(assert (=> b!590586 (=> (not res!254590) (not e!357027))))

(declare-fun call!40313 () Bool)

(assert (=> b!590586 (= res!254590 call!40313)))

(declare-fun bm!40306 () Bool)

(declare-fun call!40312 () Bool)

(assert (=> bm!40306 (= call!40311 call!40312)))

(declare-fun b!590587 () Bool)

(declare-fun e!357030 () Bool)

(assert (=> b!590587 (= e!357030 call!40312)))

(declare-fun bm!40307 () Bool)

(assert (=> bm!40307 (= call!40312 (validRegex!502 (ite c!110232 (reg!1804 (regex!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (ite c!110233 (regOne!3463 (regex!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (regTwo!3462 (regex!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))))))))

(declare-fun b!590588 () Bool)

(declare-fun e!357028 () Bool)

(assert (=> b!590588 (= e!357028 call!40313)))

(declare-fun b!590589 () Bool)

(declare-fun res!254588 () Bool)

(assert (=> b!590589 (=> (not res!254588) (not e!357028))))

(assert (=> b!590589 (= res!254588 call!40311)))

(assert (=> b!590589 (= e!357029 e!357028)))

(declare-fun b!590590 () Bool)

(declare-fun res!254592 () Bool)

(assert (=> b!590590 (=> res!254592 e!357024)))

(assert (=> b!590590 (= res!254592 (not ((_ is Concat!2640) (regex!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))))))

(assert (=> b!590590 (= e!357029 e!357024)))

(declare-fun bm!40308 () Bool)

(assert (=> bm!40308 (= call!40313 (validRegex!502 (ite c!110233 (regTwo!3463 (regex!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (regOne!3462 (regex!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))))))

(declare-fun b!590591 () Bool)

(assert (=> b!590591 (= e!357026 e!357030)))

(declare-fun res!254591 () Bool)

(assert (=> b!590591 (= res!254591 (not (nullable!407 (reg!1804 (regex!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))))))

(assert (=> b!590591 (=> (not res!254591) (not e!357030))))

(assert (= (and d!207846 (not res!254589)) b!590585))

(assert (= (and b!590585 c!110232) b!590591))

(assert (= (and b!590585 (not c!110232)) b!590583))

(assert (= (and b!590591 res!254591) b!590587))

(assert (= (and b!590583 c!110233) b!590589))

(assert (= (and b!590583 (not c!110233)) b!590590))

(assert (= (and b!590589 res!254588) b!590588))

(assert (= (and b!590590 (not res!254592)) b!590586))

(assert (= (and b!590586 res!254590) b!590584))

(assert (= (or b!590589 b!590584) bm!40306))

(assert (= (or b!590588 b!590586) bm!40308))

(assert (= (or b!590587 bm!40306) bm!40307))

(declare-fun m!851743 () Bool)

(assert (=> bm!40307 m!851743))

(declare-fun m!851745 () Bool)

(assert (=> bm!40308 m!851745))

(declare-fun m!851747 () Bool)

(assert (=> b!590591 m!851747))

(assert (=> d!207358 d!207846))

(declare-fun d!207848 () Bool)

(assert (=> d!207848 (= (_2!3648 (v!16374 lt!249846)) lt!249837)))

(assert (=> d!207848 true))

(declare-fun _$63!721 () Unit!10563)

(assert (=> d!207848 (= (choose!4256 lt!249848 (_2!3648 (v!16374 lt!249846)) lt!249848 lt!249837 input!2705) _$63!721)))

(assert (=> d!207420 d!207848))

(declare-fun b!590595 () Bool)

(declare-fun e!357032 () Bool)

(assert (=> b!590595 (= e!357032 (>= (size!4613 input!2705) (size!4613 lt!249848)))))

(declare-fun b!590593 () Bool)

(declare-fun res!254593 () Bool)

(declare-fun e!357031 () Bool)

(assert (=> b!590593 (=> (not res!254593) (not e!357031))))

(assert (=> b!590593 (= res!254593 (= (head!1248 lt!249848) (head!1248 input!2705)))))

(declare-fun b!590592 () Bool)

(declare-fun e!357033 () Bool)

(assert (=> b!590592 (= e!357033 e!357031)))

(declare-fun res!254595 () Bool)

(assert (=> b!590592 (=> (not res!254595) (not e!357031))))

(assert (=> b!590592 (= res!254595 (not ((_ is Nil!5819) input!2705)))))

(declare-fun d!207850 () Bool)

(assert (=> d!207850 e!357032))

(declare-fun res!254594 () Bool)

(assert (=> d!207850 (=> res!254594 e!357032)))

(declare-fun lt!250112 () Bool)

(assert (=> d!207850 (= res!254594 (not lt!250112))))

(assert (=> d!207850 (= lt!250112 e!357033)))

(declare-fun res!254596 () Bool)

(assert (=> d!207850 (=> res!254596 e!357033)))

(assert (=> d!207850 (= res!254596 ((_ is Nil!5819) lt!249848))))

(assert (=> d!207850 (= (isPrefix!769 lt!249848 input!2705) lt!250112)))

(declare-fun b!590594 () Bool)

(assert (=> b!590594 (= e!357031 (isPrefix!769 (tail!777 lt!249848) (tail!777 input!2705)))))

(assert (= (and d!207850 (not res!254596)) b!590592))

(assert (= (and b!590592 res!254595) b!590593))

(assert (= (and b!590593 res!254593) b!590594))

(assert (= (and d!207850 (not res!254594)) b!590595))

(assert (=> b!590595 m!850597))

(assert (=> b!590595 m!850377))

(assert (=> b!590593 m!850613))

(assert (=> b!590593 m!850599))

(assert (=> b!590594 m!850617))

(assert (=> b!590594 m!850601))

(assert (=> b!590594 m!850617))

(assert (=> b!590594 m!850601))

(declare-fun m!851749 () Bool)

(assert (=> b!590594 m!851749))

(assert (=> d!207420 d!207850))

(declare-fun d!207852 () Bool)

(assert (=> d!207852 (= (head!1248 lt!249848) (h!11220 lt!249848))))

(assert (=> b!589742 d!207852))

(declare-fun d!207854 () Bool)

(assert (=> d!207854 (= (head!1248 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846)))) (h!11220 (++!1629 lt!249848 (_2!3648 (v!16374 lt!249846)))))))

(assert (=> b!589742 d!207854))

(assert (=> d!207410 d!207358))

(declare-fun d!207856 () Bool)

(assert (=> d!207856 (ruleValid!339 thiss!22590 (rule!1907 (_1!3648 (v!16374 lt!249846))))))

(assert (=> d!207856 true))

(declare-fun _$65!849 () Unit!10563)

(assert (=> d!207856 (= (choose!4255 thiss!22590 (rule!1907 (_1!3648 (v!16374 lt!249846))) rules!3103) _$65!849)))

(declare-fun bs!70317 () Bool)

(assert (= bs!70317 d!207856))

(assert (=> bs!70317 m!850365))

(assert (=> d!207410 d!207856))

(declare-fun d!207858 () Bool)

(declare-fun lt!250113 () Bool)

(assert (=> d!207858 (= lt!250113 (select (content!1049 rules!3103) (rule!1907 (_1!3648 (v!16374 lt!249846)))))))

(declare-fun e!357035 () Bool)

(assert (=> d!207858 (= lt!250113 e!357035)))

(declare-fun res!254598 () Bool)

(assert (=> d!207858 (=> (not res!254598) (not e!357035))))

(assert (=> d!207858 (= res!254598 ((_ is Cons!5820) rules!3103))))

(assert (=> d!207858 (= (contains!1371 rules!3103 (rule!1907 (_1!3648 (v!16374 lt!249846)))) lt!250113)))

(declare-fun b!590596 () Bool)

(declare-fun e!357034 () Bool)

(assert (=> b!590596 (= e!357035 e!357034)))

(declare-fun res!254597 () Bool)

(assert (=> b!590596 (=> res!254597 e!357034)))

(assert (=> b!590596 (= res!254597 (= (h!11221 rules!3103) (rule!1907 (_1!3648 (v!16374 lt!249846)))))))

(declare-fun b!590597 () Bool)

(assert (=> b!590597 (= e!357034 (contains!1371 (t!78831 rules!3103) (rule!1907 (_1!3648 (v!16374 lt!249846)))))))

(assert (= (and d!207858 res!254598) b!590596))

(assert (= (and b!590596 (not res!254597)) b!590597))

(assert (=> d!207858 m!851607))

(declare-fun m!851751 () Bool)

(assert (=> d!207858 m!851751))

(declare-fun m!851753 () Bool)

(assert (=> b!590597 m!851753))

(assert (=> d!207410 d!207858))

(declare-fun d!207860 () Bool)

(assert (=> d!207860 (= (isEmpty!4201 (originalCharacters!1180 token!491)) ((_ is Nil!5819) (originalCharacters!1180 token!491)))))

(assert (=> d!207334 d!207860))

(declare-fun b!590601 () Bool)

(declare-fun lt!250114 () List!5829)

(declare-fun e!357037 () Bool)

(assert (=> b!590601 (= e!357037 (or (not (= suffix!1342 Nil!5819)) (= lt!250114 (t!78830 input!2705))))))

(declare-fun b!590600 () Bool)

(declare-fun res!254599 () Bool)

(assert (=> b!590600 (=> (not res!254599) (not e!357037))))

(assert (=> b!590600 (= res!254599 (= (size!4613 lt!250114) (+ (size!4613 (t!78830 input!2705)) (size!4613 suffix!1342))))))

(declare-fun b!590598 () Bool)

(declare-fun e!357036 () List!5829)

(assert (=> b!590598 (= e!357036 suffix!1342)))

(declare-fun b!590599 () Bool)

(assert (=> b!590599 (= e!357036 (Cons!5819 (h!11220 (t!78830 input!2705)) (++!1629 (t!78830 (t!78830 input!2705)) suffix!1342)))))

(declare-fun d!207862 () Bool)

(assert (=> d!207862 e!357037))

(declare-fun res!254600 () Bool)

(assert (=> d!207862 (=> (not res!254600) (not e!357037))))

(assert (=> d!207862 (= res!254600 (= (content!1047 lt!250114) ((_ map or) (content!1047 (t!78830 input!2705)) (content!1047 suffix!1342))))))

(assert (=> d!207862 (= lt!250114 e!357036)))

(declare-fun c!110234 () Bool)

(assert (=> d!207862 (= c!110234 ((_ is Nil!5819) (t!78830 input!2705)))))

(assert (=> d!207862 (= (++!1629 (t!78830 input!2705) suffix!1342) lt!250114)))

(assert (= (and d!207862 c!110234) b!590598))

(assert (= (and d!207862 (not c!110234)) b!590599))

(assert (= (and d!207862 res!254600) b!590600))

(assert (= (and b!590600 res!254599) b!590601))

(declare-fun m!851755 () Bool)

(assert (=> b!590600 m!851755))

(assert (=> b!590600 m!851367))

(assert (=> b!590600 m!850431))

(declare-fun m!851757 () Bool)

(assert (=> b!590599 m!851757))

(declare-fun m!851759 () Bool)

(assert (=> d!207862 m!851759))

(assert (=> d!207862 m!851531))

(assert (=> d!207862 m!850445))

(assert (=> b!589881 d!207862))

(assert (=> d!207412 d!207698))

(declare-fun bs!70318 () Bool)

(declare-fun d!207864 () Bool)

(assert (= bs!70318 (and d!207864 d!207698)))

(declare-fun lambda!15966 () Int)

(assert (=> bs!70318 (= (and (= (toChars!1883 (transformation!1141 (h!11221 rules!3103))) (toChars!1883 (transformation!1141 (rule!1907 token!491)))) (= (toValue!2024 (transformation!1141 (h!11221 rules!3103))) (toValue!2024 (transformation!1141 (rule!1907 token!491))))) (= lambda!15966 lambda!15956))))

(declare-fun bs!70319 () Bool)

(assert (= bs!70319 (and d!207864 d!207758)))

(assert (=> bs!70319 (= (and (= (toChars!1883 (transformation!1141 (h!11221 rules!3103))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))) (= (toValue!2024 (transformation!1141 (h!11221 rules!3103))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))) (= lambda!15966 lambda!15961))))

(assert (=> d!207864 true))

(assert (=> d!207864 (< (dynLambda!3399 order!4751 (toChars!1883 (transformation!1141 (h!11221 rules!3103)))) (dynLambda!3400 order!4753 lambda!15966))))

(assert (=> d!207864 true))

(assert (=> d!207864 (< (dynLambda!3397 order!4747 (toValue!2024 (transformation!1141 (h!11221 rules!3103)))) (dynLambda!3400 order!4753 lambda!15966))))

(assert (=> d!207864 (= (semiInverseModEq!449 (toChars!1883 (transformation!1141 (h!11221 rules!3103))) (toValue!2024 (transformation!1141 (h!11221 rules!3103)))) (Forall!296 lambda!15966))))

(declare-fun bs!70320 () Bool)

(assert (= bs!70320 d!207864))

(declare-fun m!851761 () Bool)

(assert (=> bs!70320 m!851761))

(assert (=> d!207348 d!207864))

(declare-fun d!207866 () Bool)

(assert (=> d!207866 (= (nullable!407 (regex!1141 (rule!1907 token!491))) (nullableFct!137 (regex!1141 (rule!1907 token!491))))))

(declare-fun bs!70321 () Bool)

(assert (= bs!70321 d!207866))

(declare-fun m!851763 () Bool)

(assert (=> bs!70321 m!851763))

(assert (=> b!589739 d!207866))

(declare-fun d!207868 () Bool)

(assert (=> d!207868 (= (isEmpty!4204 lt!249950) (not ((_ is Some!1491) lt!249950)))))

(assert (=> d!207458 d!207868))

(assert (=> d!207458 d!207382))

(assert (=> d!207458 d!207408))

(assert (=> d!207458 d!207714))

(declare-fun b!590604 () Bool)

(declare-fun e!357038 () Bool)

(declare-fun tp!184083 () Bool)

(assert (=> b!590604 (= e!357038 tp!184083)))

(declare-fun b!590605 () Bool)

(declare-fun tp!184085 () Bool)

(declare-fun tp!184084 () Bool)

(assert (=> b!590605 (= e!357038 (and tp!184085 tp!184084))))

(declare-fun b!590603 () Bool)

(declare-fun tp!184081 () Bool)

(declare-fun tp!184082 () Bool)

(assert (=> b!590603 (= e!357038 (and tp!184081 tp!184082))))

(assert (=> b!589905 (= tp!183986 e!357038)))

(declare-fun b!590602 () Bool)

(assert (=> b!590602 (= e!357038 tp_is_empty!3305)))

(assert (= (and b!589905 ((_ is ElementMatch!1475) (reg!1804 (regex!1141 (h!11221 rules!3103))))) b!590602))

(assert (= (and b!589905 ((_ is Concat!2640) (reg!1804 (regex!1141 (h!11221 rules!3103))))) b!590603))

(assert (= (and b!589905 ((_ is Star!1475) (reg!1804 (regex!1141 (h!11221 rules!3103))))) b!590604))

(assert (= (and b!589905 ((_ is Union!1475) (reg!1804 (regex!1141 (h!11221 rules!3103))))) b!590605))

(declare-fun b!590608 () Bool)

(declare-fun e!357039 () Bool)

(declare-fun tp!184088 () Bool)

(assert (=> b!590608 (= e!357039 tp!184088)))

(declare-fun b!590609 () Bool)

(declare-fun tp!184090 () Bool)

(declare-fun tp!184089 () Bool)

(assert (=> b!590609 (= e!357039 (and tp!184090 tp!184089))))

(declare-fun b!590607 () Bool)

(declare-fun tp!184086 () Bool)

(declare-fun tp!184087 () Bool)

(assert (=> b!590607 (= e!357039 (and tp!184086 tp!184087))))

(assert (=> b!589900 (= tp!183979 e!357039)))

(declare-fun b!590606 () Bool)

(assert (=> b!590606 (= e!357039 tp_is_empty!3305)))

(assert (= (and b!589900 ((_ is ElementMatch!1475) (regOne!3462 (regex!1141 (rule!1907 token!491))))) b!590606))

(assert (= (and b!589900 ((_ is Concat!2640) (regOne!3462 (regex!1141 (rule!1907 token!491))))) b!590607))

(assert (= (and b!589900 ((_ is Star!1475) (regOne!3462 (regex!1141 (rule!1907 token!491))))) b!590608))

(assert (= (and b!589900 ((_ is Union!1475) (regOne!3462 (regex!1141 (rule!1907 token!491))))) b!590609))

(declare-fun b!590612 () Bool)

(declare-fun e!357040 () Bool)

(declare-fun tp!184093 () Bool)

(assert (=> b!590612 (= e!357040 tp!184093)))

(declare-fun b!590613 () Bool)

(declare-fun tp!184095 () Bool)

(declare-fun tp!184094 () Bool)

(assert (=> b!590613 (= e!357040 (and tp!184095 tp!184094))))

(declare-fun b!590611 () Bool)

(declare-fun tp!184091 () Bool)

(declare-fun tp!184092 () Bool)

(assert (=> b!590611 (= e!357040 (and tp!184091 tp!184092))))

(assert (=> b!589900 (= tp!183980 e!357040)))

(declare-fun b!590610 () Bool)

(assert (=> b!590610 (= e!357040 tp_is_empty!3305)))

(assert (= (and b!589900 ((_ is ElementMatch!1475) (regTwo!3462 (regex!1141 (rule!1907 token!491))))) b!590610))

(assert (= (and b!589900 ((_ is Concat!2640) (regTwo!3462 (regex!1141 (rule!1907 token!491))))) b!590611))

(assert (= (and b!589900 ((_ is Star!1475) (regTwo!3462 (regex!1141 (rule!1907 token!491))))) b!590612))

(assert (= (and b!589900 ((_ is Union!1475) (regTwo!3462 (regex!1141 (rule!1907 token!491))))) b!590613))

(declare-fun b!590616 () Bool)

(declare-fun e!357041 () Bool)

(declare-fun tp!184098 () Bool)

(assert (=> b!590616 (= e!357041 tp!184098)))

(declare-fun b!590617 () Bool)

(declare-fun tp!184100 () Bool)

(declare-fun tp!184099 () Bool)

(assert (=> b!590617 (= e!357041 (and tp!184100 tp!184099))))

(declare-fun b!590615 () Bool)

(declare-fun tp!184096 () Bool)

(declare-fun tp!184097 () Bool)

(assert (=> b!590615 (= e!357041 (and tp!184096 tp!184097))))

(assert (=> b!589901 (= tp!183981 e!357041)))

(declare-fun b!590614 () Bool)

(assert (=> b!590614 (= e!357041 tp_is_empty!3305)))

(assert (= (and b!589901 ((_ is ElementMatch!1475) (reg!1804 (regex!1141 (rule!1907 token!491))))) b!590614))

(assert (= (and b!589901 ((_ is Concat!2640) (reg!1804 (regex!1141 (rule!1907 token!491))))) b!590615))

(assert (= (and b!589901 ((_ is Star!1475) (reg!1804 (regex!1141 (rule!1907 token!491))))) b!590616))

(assert (= (and b!589901 ((_ is Union!1475) (reg!1804 (regex!1141 (rule!1907 token!491))))) b!590617))

(declare-fun b!590620 () Bool)

(declare-fun e!357042 () Bool)

(declare-fun tp!184103 () Bool)

(assert (=> b!590620 (= e!357042 tp!184103)))

(declare-fun b!590621 () Bool)

(declare-fun tp!184105 () Bool)

(declare-fun tp!184104 () Bool)

(assert (=> b!590621 (= e!357042 (and tp!184105 tp!184104))))

(declare-fun b!590619 () Bool)

(declare-fun tp!184101 () Bool)

(declare-fun tp!184102 () Bool)

(assert (=> b!590619 (= e!357042 (and tp!184101 tp!184102))))

(assert (=> b!589916 (= tp!184000 e!357042)))

(declare-fun b!590618 () Bool)

(assert (=> b!590618 (= e!357042 tp_is_empty!3305)))

(assert (= (and b!589916 ((_ is ElementMatch!1475) (regex!1141 (h!11221 (t!78831 rules!3103))))) b!590618))

(assert (= (and b!589916 ((_ is Concat!2640) (regex!1141 (h!11221 (t!78831 rules!3103))))) b!590619))

(assert (= (and b!589916 ((_ is Star!1475) (regex!1141 (h!11221 (t!78831 rules!3103))))) b!590620))

(assert (= (and b!589916 ((_ is Union!1475) (regex!1141 (h!11221 (t!78831 rules!3103))))) b!590621))

(declare-fun b!590624 () Bool)

(declare-fun e!357043 () Bool)

(declare-fun tp!184108 () Bool)

(assert (=> b!590624 (= e!357043 tp!184108)))

(declare-fun b!590625 () Bool)

(declare-fun tp!184110 () Bool)

(declare-fun tp!184109 () Bool)

(assert (=> b!590625 (= e!357043 (and tp!184110 tp!184109))))

(declare-fun b!590623 () Bool)

(declare-fun tp!184106 () Bool)

(declare-fun tp!184107 () Bool)

(assert (=> b!590623 (= e!357043 (and tp!184106 tp!184107))))

(assert (=> b!589904 (= tp!183984 e!357043)))

(declare-fun b!590622 () Bool)

(assert (=> b!590622 (= e!357043 tp_is_empty!3305)))

(assert (= (and b!589904 ((_ is ElementMatch!1475) (regOne!3462 (regex!1141 (h!11221 rules!3103))))) b!590622))

(assert (= (and b!589904 ((_ is Concat!2640) (regOne!3462 (regex!1141 (h!11221 rules!3103))))) b!590623))

(assert (= (and b!589904 ((_ is Star!1475) (regOne!3462 (regex!1141 (h!11221 rules!3103))))) b!590624))

(assert (= (and b!589904 ((_ is Union!1475) (regOne!3462 (regex!1141 (h!11221 rules!3103))))) b!590625))

(declare-fun b!590628 () Bool)

(declare-fun e!357044 () Bool)

(declare-fun tp!184113 () Bool)

(assert (=> b!590628 (= e!357044 tp!184113)))

(declare-fun b!590629 () Bool)

(declare-fun tp!184115 () Bool)

(declare-fun tp!184114 () Bool)

(assert (=> b!590629 (= e!357044 (and tp!184115 tp!184114))))

(declare-fun b!590627 () Bool)

(declare-fun tp!184111 () Bool)

(declare-fun tp!184112 () Bool)

(assert (=> b!590627 (= e!357044 (and tp!184111 tp!184112))))

(assert (=> b!589904 (= tp!183985 e!357044)))

(declare-fun b!590626 () Bool)

(assert (=> b!590626 (= e!357044 tp_is_empty!3305)))

(assert (= (and b!589904 ((_ is ElementMatch!1475) (regTwo!3462 (regex!1141 (h!11221 rules!3103))))) b!590626))

(assert (= (and b!589904 ((_ is Concat!2640) (regTwo!3462 (regex!1141 (h!11221 rules!3103))))) b!590627))

(assert (= (and b!589904 ((_ is Star!1475) (regTwo!3462 (regex!1141 (h!11221 rules!3103))))) b!590628))

(assert (= (and b!589904 ((_ is Union!1475) (regTwo!3462 (regex!1141 (h!11221 rules!3103))))) b!590629))

(declare-fun b!590632 () Bool)

(declare-fun b_free!16545 () Bool)

(declare-fun b_next!16561 () Bool)

(assert (=> b!590632 (= b_free!16545 (not b_next!16561))))

(declare-fun tb!51641 () Bool)

(declare-fun t!78935 () Bool)

(assert (=> (and b!590632 (= (toValue!2024 (transformation!1141 (h!11221 (t!78831 (t!78831 rules!3103))))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))) t!78935) tb!51641))

(declare-fun result!57918 () Bool)

(assert (= result!57918 result!57816))

(assert (=> d!207416 t!78935))

(declare-fun tb!51643 () Bool)

(declare-fun t!78937 () Bool)

(assert (=> (and b!590632 (= (toValue!2024 (transformation!1141 (h!11221 (t!78831 (t!78831 rules!3103))))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))))) t!78937) tb!51643))

(declare-fun result!57920 () Bool)

(assert (= result!57920 result!57906))

(assert (=> d!207822 t!78937))

(declare-fun t!78939 () Bool)

(declare-fun tb!51645 () Bool)

(assert (=> (and b!590632 (= (toValue!2024 (transformation!1141 (h!11221 (t!78831 (t!78831 rules!3103))))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))))) t!78939) tb!51645))

(declare-fun result!57922 () Bool)

(assert (= result!57922 result!57912))

(assert (=> d!207836 t!78939))

(declare-fun b_and!58191 () Bool)

(declare-fun tp!184118 () Bool)

(assert (=> b!590632 (= tp!184118 (and (=> t!78935 result!57918) (=> t!78937 result!57920) (=> t!78939 result!57922) b_and!58191))))

(declare-fun b_free!16547 () Bool)

(declare-fun b_next!16563 () Bool)

(assert (=> b!590632 (= b_free!16547 (not b_next!16563))))

(declare-fun t!78941 () Bool)

(declare-fun tb!51647 () Bool)

(assert (=> (and b!590632 (= (toChars!1883 (transformation!1141 (h!11221 (t!78831 (t!78831 rules!3103))))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846)))))) t!78941) tb!51647))

(declare-fun result!57924 () Bool)

(assert (= result!57924 result!57826))

(assert (=> d!207426 t!78941))

(declare-fun tb!51649 () Bool)

(declare-fun t!78943 () Bool)

(assert (=> (and b!590632 (= (toChars!1883 (transformation!1141 (h!11221 (t!78831 (t!78831 rules!3103))))) (toChars!1883 (transformation!1141 (rule!1907 token!491)))) t!78943) tb!51649))

(declare-fun result!57926 () Bool)

(assert (= result!57926 result!57802))

(assert (=> d!207456 t!78943))

(declare-fun tb!51651 () Bool)

(declare-fun t!78945 () Bool)

(assert (=> (and b!590632 (= (toChars!1883 (transformation!1141 (h!11221 (t!78831 (t!78831 rules!3103))))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249955)))))) t!78945) tb!51651))

(declare-fun result!57928 () Bool)

(assert (= result!57928 result!57900))

(assert (=> d!207720 t!78945))

(declare-fun t!78947 () Bool)

(declare-fun tb!51653 () Bool)

(assert (=> (and b!590632 (= (toChars!1883 (transformation!1141 (h!11221 (t!78831 (t!78831 rules!3103))))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (get!2226 lt!249950)))))) t!78947) tb!51653))

(declare-fun result!57930 () Bool)

(assert (= result!57930 result!57860))

(assert (=> d!207486 t!78947))

(assert (=> b!589656 t!78943))

(declare-fun tp!184116 () Bool)

(declare-fun b_and!58193 () Bool)

(assert (=> b!590632 (= tp!184116 (and (=> t!78941 result!57924) (=> t!78947 result!57930) (=> t!78943 result!57926) (=> t!78945 result!57928) b_and!58193))))

(declare-fun e!357048 () Bool)

(assert (=> b!590632 (= e!357048 (and tp!184118 tp!184116))))

(declare-fun tp!184119 () Bool)

(declare-fun b!590631 () Bool)

(declare-fun e!357046 () Bool)

(assert (=> b!590631 (= e!357046 (and tp!184119 (inv!7357 (tag!1403 (h!11221 (t!78831 (t!78831 rules!3103))))) (inv!7360 (transformation!1141 (h!11221 (t!78831 (t!78831 rules!3103))))) e!357048))))

(declare-fun b!590630 () Bool)

(declare-fun e!357045 () Bool)

(declare-fun tp!184117 () Bool)

(assert (=> b!590630 (= e!357045 (and e!357046 tp!184117))))

(assert (=> b!589915 (= tp!183998 e!357045)))

(assert (= b!590631 b!590632))

(assert (= b!590630 b!590631))

(assert (= (and b!589915 ((_ is Cons!5820) (t!78831 (t!78831 rules!3103)))) b!590630))

(declare-fun m!851765 () Bool)

(assert (=> b!590631 m!851765))

(declare-fun m!851767 () Bool)

(assert (=> b!590631 m!851767))

(declare-fun b!590633 () Bool)

(declare-fun e!357049 () Bool)

(declare-fun tp!184120 () Bool)

(assert (=> b!590633 (= e!357049 (and tp_is_empty!3305 tp!184120))))

(assert (=> b!589919 (= tp!184002 e!357049)))

(assert (= (and b!589919 ((_ is Cons!5819) (t!78830 (originalCharacters!1180 token!491)))) b!590633))

(declare-fun b!590634 () Bool)

(declare-fun e!357050 () Bool)

(declare-fun tp!184121 () Bool)

(assert (=> b!590634 (= e!357050 (and tp_is_empty!3305 tp!184121))))

(assert (=> b!589888 (= tp!183968 e!357050)))

(assert (= (and b!589888 ((_ is Cons!5819) (t!78830 (t!78830 input!2705)))) b!590634))

(declare-fun b!590635 () Bool)

(declare-fun e!357051 () Bool)

(declare-fun tp!184122 () Bool)

(assert (=> b!590635 (= e!357051 (and tp_is_empty!3305 tp!184122))))

(assert (=> b!589918 (= tp!184001 e!357051)))

(assert (= (and b!589918 ((_ is Cons!5819) (t!78830 (t!78830 suffix!1342)))) b!590635))

(declare-fun b!590644 () Bool)

(declare-fun e!357056 () Bool)

(declare-fun tp!184130 () Bool)

(declare-fun tp!184129 () Bool)

(assert (=> b!590644 (= e!357056 (and (inv!7364 (left!4733 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491))))) tp!184130 (inv!7364 (right!5063 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491))))) tp!184129))))

(declare-fun b!590646 () Bool)

(declare-fun e!357057 () Bool)

(declare-fun tp!184131 () Bool)

(assert (=> b!590646 (= e!357057 tp!184131)))

(declare-fun b!590645 () Bool)

(declare-fun inv!7371 (IArray!3717) Bool)

(assert (=> b!590645 (= e!357056 (and (inv!7371 (xs!4495 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491))))) e!357057))))

(assert (=> b!589667 (= tp!183926 (and (inv!7364 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491)))) e!357056))))

(assert (= (and b!589667 ((_ is Node!1858) (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491))))) b!590644))

(assert (= b!590645 b!590646))

(assert (= (and b!589667 ((_ is Leaf!2936) (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 token!491))) (value!37385 token!491))))) b!590645))

(declare-fun m!851769 () Bool)

(assert (=> b!590644 m!851769))

(declare-fun m!851771 () Bool)

(assert (=> b!590644 m!851771))

(declare-fun m!851773 () Bool)

(assert (=> b!590645 m!851773))

(assert (=> b!589667 m!850477))

(declare-fun b!590649 () Bool)

(declare-fun e!357058 () Bool)

(declare-fun tp!184134 () Bool)

(assert (=> b!590649 (= e!357058 tp!184134)))

(declare-fun b!590650 () Bool)

(declare-fun tp!184136 () Bool)

(declare-fun tp!184135 () Bool)

(assert (=> b!590650 (= e!357058 (and tp!184136 tp!184135))))

(declare-fun b!590648 () Bool)

(declare-fun tp!184132 () Bool)

(declare-fun tp!184133 () Bool)

(assert (=> b!590648 (= e!357058 (and tp!184132 tp!184133))))

(assert (=> b!589906 (= tp!183988 e!357058)))

(declare-fun b!590647 () Bool)

(assert (=> b!590647 (= e!357058 tp_is_empty!3305)))

(assert (= (and b!589906 ((_ is ElementMatch!1475) (regOne!3463 (regex!1141 (h!11221 rules!3103))))) b!590647))

(assert (= (and b!589906 ((_ is Concat!2640) (regOne!3463 (regex!1141 (h!11221 rules!3103))))) b!590648))

(assert (= (and b!589906 ((_ is Star!1475) (regOne!3463 (regex!1141 (h!11221 rules!3103))))) b!590649))

(assert (= (and b!589906 ((_ is Union!1475) (regOne!3463 (regex!1141 (h!11221 rules!3103))))) b!590650))

(declare-fun b!590653 () Bool)

(declare-fun e!357059 () Bool)

(declare-fun tp!184139 () Bool)

(assert (=> b!590653 (= e!357059 tp!184139)))

(declare-fun b!590654 () Bool)

(declare-fun tp!184141 () Bool)

(declare-fun tp!184140 () Bool)

(assert (=> b!590654 (= e!357059 (and tp!184141 tp!184140))))

(declare-fun b!590652 () Bool)

(declare-fun tp!184137 () Bool)

(declare-fun tp!184138 () Bool)

(assert (=> b!590652 (= e!357059 (and tp!184137 tp!184138))))

(assert (=> b!589906 (= tp!183987 e!357059)))

(declare-fun b!590651 () Bool)

(assert (=> b!590651 (= e!357059 tp_is_empty!3305)))

(assert (= (and b!589906 ((_ is ElementMatch!1475) (regTwo!3463 (regex!1141 (h!11221 rules!3103))))) b!590651))

(assert (= (and b!589906 ((_ is Concat!2640) (regTwo!3463 (regex!1141 (h!11221 rules!3103))))) b!590652))

(assert (= (and b!589906 ((_ is Star!1475) (regTwo!3463 (regex!1141 (h!11221 rules!3103))))) b!590653))

(assert (= (and b!589906 ((_ is Union!1475) (regTwo!3463 (regex!1141 (h!11221 rules!3103))))) b!590654))

(declare-fun b!590657 () Bool)

(declare-fun e!357060 () Bool)

(declare-fun tp!184144 () Bool)

(assert (=> b!590657 (= e!357060 tp!184144)))

(declare-fun b!590658 () Bool)

(declare-fun tp!184146 () Bool)

(declare-fun tp!184145 () Bool)

(assert (=> b!590658 (= e!357060 (and tp!184146 tp!184145))))

(declare-fun b!590656 () Bool)

(declare-fun tp!184142 () Bool)

(declare-fun tp!184143 () Bool)

(assert (=> b!590656 (= e!357060 (and tp!184142 tp!184143))))

(assert (=> b!589902 (= tp!183983 e!357060)))

(declare-fun b!590655 () Bool)

(assert (=> b!590655 (= e!357060 tp_is_empty!3305)))

(assert (= (and b!589902 ((_ is ElementMatch!1475) (regOne!3463 (regex!1141 (rule!1907 token!491))))) b!590655))

(assert (= (and b!589902 ((_ is Concat!2640) (regOne!3463 (regex!1141 (rule!1907 token!491))))) b!590656))

(assert (= (and b!589902 ((_ is Star!1475) (regOne!3463 (regex!1141 (rule!1907 token!491))))) b!590657))

(assert (= (and b!589902 ((_ is Union!1475) (regOne!3463 (regex!1141 (rule!1907 token!491))))) b!590658))

(declare-fun b!590661 () Bool)

(declare-fun e!357061 () Bool)

(declare-fun tp!184149 () Bool)

(assert (=> b!590661 (= e!357061 tp!184149)))

(declare-fun b!590662 () Bool)

(declare-fun tp!184151 () Bool)

(declare-fun tp!184150 () Bool)

(assert (=> b!590662 (= e!357061 (and tp!184151 tp!184150))))

(declare-fun b!590660 () Bool)

(declare-fun tp!184147 () Bool)

(declare-fun tp!184148 () Bool)

(assert (=> b!590660 (= e!357061 (and tp!184147 tp!184148))))

(assert (=> b!589902 (= tp!183982 e!357061)))

(declare-fun b!590659 () Bool)

(assert (=> b!590659 (= e!357061 tp_is_empty!3305)))

(assert (= (and b!589902 ((_ is ElementMatch!1475) (regTwo!3463 (regex!1141 (rule!1907 token!491))))) b!590659))

(assert (= (and b!589902 ((_ is Concat!2640) (regTwo!3463 (regex!1141 (rule!1907 token!491))))) b!590660))

(assert (= (and b!589902 ((_ is Star!1475) (regTwo!3463 (regex!1141 (rule!1907 token!491))))) b!590661))

(assert (= (and b!589902 ((_ is Union!1475) (regTwo!3463 (regex!1141 (rule!1907 token!491))))) b!590662))

(declare-fun e!357062 () Bool)

(declare-fun b!590663 () Bool)

(declare-fun tp!184153 () Bool)

(declare-fun tp!184152 () Bool)

(assert (=> b!590663 (= e!357062 (and (inv!7364 (left!4733 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846))))))) tp!184153 (inv!7364 (right!5063 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846))))))) tp!184152))))

(declare-fun b!590665 () Bool)

(declare-fun e!357063 () Bool)

(declare-fun tp!184154 () Bool)

(assert (=> b!590665 (= e!357063 tp!184154)))

(declare-fun b!590664 () Bool)

(assert (=> b!590664 (= e!357062 (and (inv!7371 (xs!4495 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846))))))) e!357063))))

(assert (=> b!589797 (= tp!183928 (and (inv!7364 (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846)))))) e!357062))))

(assert (= (and b!589797 ((_ is Node!1858) (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846))))))) b!590663))

(assert (= b!590664 b!590665))

(assert (= (and b!589797 ((_ is Leaf!2936) (c!110046 (dynLambda!3391 (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))) (value!37385 (_1!3648 (v!16374 lt!249846))))))) b!590664))

(declare-fun m!851775 () Bool)

(assert (=> b!590663 m!851775))

(declare-fun m!851777 () Bool)

(assert (=> b!590663 m!851777))

(declare-fun m!851779 () Bool)

(assert (=> b!590664 m!851779))

(assert (=> b!589797 m!850697))

(declare-fun b_lambda!23261 () Bool)

(assert (= b_lambda!23223 (or (and b!589571 b_free!16525 (= (toValue!2024 (transformation!1141 (h!11221 rules!3103))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))) (and b!589565 b_free!16529 (= (toValue!2024 (transformation!1141 (rule!1907 token!491))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))) (and b!589917 b_free!16537 (= (toValue!2024 (transformation!1141 (h!11221 (t!78831 rules!3103)))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))) (and b!590632 b_free!16545 (= (toValue!2024 (transformation!1141 (h!11221 (t!78831 (t!78831 rules!3103))))) (toValue!2024 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))) b_lambda!23261)))

(declare-fun b_lambda!23263 () Bool)

(assert (= b_lambda!23229 (or (and b!589571 b_free!16527 (= (toChars!1883 (transformation!1141 (h!11221 rules!3103))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))) (and b!589565 b_free!16531 (= (toChars!1883 (transformation!1141 (rule!1907 token!491))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))) (and b!589917 b_free!16539 (= (toChars!1883 (transformation!1141 (h!11221 (t!78831 rules!3103)))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))) (and b!590632 b_free!16547 (= (toChars!1883 (transformation!1141 (h!11221 (t!78831 (t!78831 rules!3103))))) (toChars!1883 (transformation!1141 (rule!1907 (_1!3648 (v!16374 lt!249846))))))) b_lambda!23263)))

(check-sat (not b!590500) (not b!590499) (not b!590664) (not b!590623) tp_is_empty!3305 (not d!207692) (not b!590381) (not d!207758) b_and!58177 (not b!590661) (not b!590605) (not b!590466) (not d!207864) (not b!589667) (not b!589970) (not b!590498) (not b!590421) (not b!590375) (not d!207816) (not b!590361) (not d!207796) (not d!207824) (not d!207818) (not b!590656) (not d!207716) (not d!207740) (not b!589969) (not bm!40308) (not b!590373) (not b!590631) (not b!590358) (not b_next!16553) (not b!590408) (not d!207834) (not b_lambda!23263) (not d!207732) (not b!590369) (not b!590635) (not b!590625) (not tb!51635) (not b!590424) (not b!590619) (not b!590650) (not b!590522) b_and!58187 (not d!207718) (not b_next!16555) (not b!590615) (not b!590496) (not b!590613) (not d!207798) (not b!590367) (not b!590607) (not b!590593) (not d!207712) b_and!58191 (not b!590604) (not d!207862) (not d!207724) (not b!590633) (not d!207782) (not b!590603) (not b_next!16561) (not b!590627) (not d!207728) (not b!590646) (not b!590427) (not b!590538) (not b!589953) (not b!589964) (not b!590611) (not b!590434) (not b_next!16545) (not b!590532) (not b!590542) (not b!590653) (not b!590649) (not b!590513) (not d!207770) (not b!590451) (not bm!40296) (not b!590645) (not b_next!16541) (not b!590540) (not d!207490) (not bm!40295) (not b!590493) (not b!590472) (not b!589951) (not b!590355) (not d!207784) (not b!590597) (not b!590600) b_and!58189 (not b!590526) (not b_lambda!23237) (not b!590473) (not b!590502) (not b!590520) (not tb!51585) (not b!590608) (not b!590468) (not b!590422) (not b!590609) (not b!590582) (not b!590624) (not b!590652) (not d!207714) b_and!58175 (not b!590665) (not b!590390) (not b!590621) (not b_lambda!23257) (not b!590576) (not b!590517) (not b!590617) (not b!590396) (not b!590368) (not bm!40305) (not b!590599) (not b!590428) (not b!590510) (not b!590644) b_and!58185 (not d!207696) (not b!590409) (not tb!51629) (not b_lambda!23239) (not b!590519) (not b!590662) b_and!58173 (not b!590467) (not b!590426) (not b!590580) (not b!590460) (not bm!40275) (not b!590594) (not b!590440) (not b!590456) (not b!590535) (not b!590464) (not d!207820) (not b!590595) (not d!207790) (not b!590385) (not b!589976) (not b!590459) (not b!590495) (not d!207814) (not d!207486) (not b!590462) (not b!589977) (not b!590386) (not b!589965) (not d!207838) (not b!589952) (not b!590436) (not b!590574) (not b!590634) (not b!590612) (not b!590357) (not b!590393) (not b!589962) (not b!590657) (not b!590524) (not b!590398) (not b_next!16563) (not d!207720) (not b_lambda!23255) (not b!590515) (not b!590628) (not b!590391) (not b!589967) (not b!590648) (not b!590397) (not d!207792) (not d!207772) (not b!590654) (not b!589954) (not bm!40304) (not d!207858) (not d!207804) (not b!589957) b_and!58193 (not b!590469) (not d!207494) (not d!207480) (not b!590534) (not b!590514) (not d!207734) (not b!590438) (not tb!51623) (not b!590388) (not b!590494) (not d!207866) (not b!590521) (not d!207730) (not b_lambda!23243) (not b!590591) (not bm!40294) (not b!590453) (not b_next!16547) (not b!590449) (not bm!40307) (not d!207832) (not b!589948) (not b!590512) (not b!590578) (not d!207826) (not d!207856) (not b!590492) (not b!590465) (not b!590660) (not d!207726) (not b!590541) (not b!590544) (not b_lambda!23259) (not b!590547) (not b_next!16543) (not b!590629) (not b!590470) (not b_lambda!23261) (not b!590546) (not d!207698) (not d!207812) (not b!590528) (not b!590620) (not b!590543) (not b!590442) (not b!590663) (not b!590402) (not d!207742) (not b!590539) (not d!207498) (not b!590399) (not b!590371) (not d!207484) (not b!590380) (not d!207690) (not b!590504) (not d!207760) (not b!590630) (not b!590374) (not b!590516) (not b!590658) (not d!207492) (not b!589797) (not b!590616) (not b!590530))
(check-sat b_and!58177 (not b_next!16553) b_and!58191 (not b_next!16561) (not b_next!16545) (not b_next!16541) b_and!58189 b_and!58175 b_and!58185 b_and!58173 (not b_next!16563) b_and!58193 (not b_next!16547) (not b_next!16543) b_and!58187 (not b_next!16555))
