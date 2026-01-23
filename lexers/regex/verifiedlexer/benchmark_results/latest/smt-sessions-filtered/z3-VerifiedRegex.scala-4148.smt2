; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!223356 () Bool)

(assert start!223356)

(declare-fun b!2279981 () Bool)

(declare-fun b_free!68045 () Bool)

(declare-fun b_next!68749 () Bool)

(assert (=> b!2279981 (= b_free!68045 (not b_next!68749))))

(declare-fun tp!722426 () Bool)

(declare-fun b_and!180017 () Bool)

(assert (=> b!2279981 (= tp!722426 b_and!180017)))

(declare-fun b_free!68047 () Bool)

(declare-fun b_next!68751 () Bool)

(assert (=> b!2279981 (= b_free!68047 (not b_next!68751))))

(declare-fun tp!722423 () Bool)

(declare-fun b_and!180019 () Bool)

(assert (=> b!2279981 (= tp!722423 b_and!180019)))

(declare-fun b!2279994 () Bool)

(declare-fun b_free!68049 () Bool)

(declare-fun b_next!68753 () Bool)

(assert (=> b!2279994 (= b_free!68049 (not b_next!68753))))

(declare-fun tp!722412 () Bool)

(declare-fun b_and!180021 () Bool)

(assert (=> b!2279994 (= tp!722412 b_and!180021)))

(declare-fun b_free!68051 () Bool)

(declare-fun b_next!68755 () Bool)

(assert (=> b!2279994 (= b_free!68051 (not b_next!68755))))

(declare-fun tp!722425 () Bool)

(declare-fun b_and!180023 () Bool)

(assert (=> b!2279994 (= tp!722425 b_and!180023)))

(declare-fun b!2280003 () Bool)

(declare-fun b_free!68053 () Bool)

(declare-fun b_next!68757 () Bool)

(assert (=> b!2280003 (= b_free!68053 (not b_next!68757))))

(declare-fun tp!722417 () Bool)

(declare-fun b_and!180025 () Bool)

(assert (=> b!2280003 (= tp!722417 b_and!180025)))

(declare-fun b_free!68055 () Bool)

(declare-fun b_next!68759 () Bool)

(assert (=> b!2280003 (= b_free!68055 (not b_next!68759))))

(declare-fun tp!722411 () Bool)

(declare-fun b_and!180027 () Bool)

(assert (=> b!2280003 (= tp!722411 b_and!180027)))

(declare-fun b!2279992 () Bool)

(declare-fun b_free!68057 () Bool)

(declare-fun b_next!68761 () Bool)

(assert (=> b!2279992 (= b_free!68057 (not b_next!68761))))

(declare-fun tp!722410 () Bool)

(declare-fun b_and!180029 () Bool)

(assert (=> b!2279992 (= tp!722410 b_and!180029)))

(declare-fun b_free!68059 () Bool)

(declare-fun b_next!68763 () Bool)

(assert (=> b!2279992 (= b_free!68059 (not b_next!68763))))

(declare-fun tp!722419 () Bool)

(declare-fun b_and!180031 () Bool)

(assert (=> b!2279992 (= tp!722419 b_and!180031)))

(declare-fun b!2279978 () Bool)

(declare-fun res!974473 () Bool)

(declare-fun e!1460389 () Bool)

(assert (=> b!2279978 (=> (not res!974473) (not e!1460389))))

(declare-datatypes ((List!27199 0))(
  ( (Nil!27105) (Cons!27105 (h!32506 (_ BitVec 16)) (t!203455 List!27199)) )
))
(declare-datatypes ((TokenValue!4489 0))(
  ( (FloatLiteralValue!8978 (text!31868 List!27199)) (TokenValueExt!4488 (__x!18038 Int)) (Broken!22445 (value!137113 List!27199)) (Object!4582) (End!4489) (Def!4489) (Underscore!4489) (Match!4489) (Else!4489) (Error!4489) (Case!4489) (If!4489) (Extends!4489) (Abstract!4489) (Class!4489) (Val!4489) (DelimiterValue!8978 (del!4549 List!27199)) (KeywordValue!4495 (value!137114 List!27199)) (CommentValue!8978 (value!137115 List!27199)) (WhitespaceValue!8978 (value!137116 List!27199)) (IndentationValue!4489 (value!137117 List!27199)) (String!29548) (Int32!4489) (Broken!22446 (value!137118 List!27199)) (Boolean!4490) (Unit!40035) (OperatorValue!4492 (op!4549 List!27199)) (IdentifierValue!8978 (value!137119 List!27199)) (IdentifierValue!8979 (value!137120 List!27199)) (WhitespaceValue!8979 (value!137121 List!27199)) (True!8978) (False!8978) (Broken!22447 (value!137122 List!27199)) (Broken!22448 (value!137123 List!27199)) (True!8979) (RightBrace!4489) (RightBracket!4489) (Colon!4489) (Null!4489) (Comma!4489) (LeftBracket!4489) (False!8979) (LeftBrace!4489) (ImaginaryLiteralValue!4489 (text!31869 List!27199)) (StringLiteralValue!13467 (value!137124 List!27199)) (EOFValue!4489 (value!137125 List!27199)) (IdentValue!4489 (value!137126 List!27199)) (DelimiterValue!8979 (value!137127 List!27199)) (DedentValue!4489 (value!137128 List!27199)) (NewLineValue!4489 (value!137129 List!27199)) (IntegerValue!13467 (value!137130 (_ BitVec 32)) (text!31870 List!27199)) (IntegerValue!13468 (value!137131 Int) (text!31871 List!27199)) (Times!4489) (Or!4489) (Equal!4489) (Minus!4489) (Broken!22449 (value!137132 List!27199)) (And!4489) (Div!4489) (LessEqual!4489) (Mod!4489) (Concat!11164) (Not!4489) (Plus!4489) (SpaceValue!4489 (value!137133 List!27199)) (IntegerValue!13469 (value!137134 Int) (text!31872 List!27199)) (StringLiteralValue!13468 (text!31873 List!27199)) (FloatLiteralValue!8979 (text!31874 List!27199)) (BytesLiteralValue!4489 (value!137135 List!27199)) (CommentValue!8979 (value!137136 List!27199)) (StringLiteralValue!13469 (value!137137 List!27199)) (ErrorTokenValue!4489 (msg!4550 List!27199)) )
))
(declare-datatypes ((C!13496 0))(
  ( (C!13497 (val!7796 Int)) )
))
(declare-datatypes ((List!27200 0))(
  ( (Nil!27106) (Cons!27106 (h!32507 C!13496) (t!203456 List!27200)) )
))
(declare-datatypes ((IArray!17609 0))(
  ( (IArray!17610 (innerList!8862 List!27200)) )
))
(declare-datatypes ((Conc!8802 0))(
  ( (Node!8802 (left!20562 Conc!8802) (right!20892 Conc!8802) (csize!17834 Int) (cheight!9013 Int)) (Leaf!12951 (xs!11744 IArray!17609) (csize!17835 Int)) (Empty!8802) )
))
(declare-datatypes ((BalanceConc!17332 0))(
  ( (BalanceConc!17333 (c!361874 Conc!8802)) )
))
(declare-datatypes ((Regex!6675 0))(
  ( (ElementMatch!6675 (c!361875 C!13496)) (Concat!11165 (regOne!13862 Regex!6675) (regTwo!13862 Regex!6675)) (EmptyExpr!6675) (Star!6675 (reg!7004 Regex!6675)) (EmptyLang!6675) (Union!6675 (regOne!13863 Regex!6675) (regTwo!13863 Regex!6675)) )
))
(declare-datatypes ((String!29549 0))(
  ( (String!29550 (value!137138 String)) )
))
(declare-datatypes ((TokenValueInjection!8518 0))(
  ( (TokenValueInjection!8519 (toValue!6109 Int) (toChars!5968 Int)) )
))
(declare-datatypes ((Rule!8454 0))(
  ( (Rule!8455 (regex!4327 Regex!6675) (tag!4817 String!29549) (isSeparator!4327 Bool) (transformation!4327 TokenValueInjection!8518)) )
))
(declare-datatypes ((List!27201 0))(
  ( (Nil!27107) (Cons!27107 (h!32508 Rule!8454) (t!203457 List!27201)) )
))
(declare-fun rules!1750 () List!27201)

(declare-fun isEmpty!15391 (List!27201) Bool)

(assert (=> b!2279978 (= res!974473 (not (isEmpty!15391 rules!1750)))))

(declare-fun tp!722416 () Bool)

(declare-datatypes ((Token!8132 0))(
  ( (Token!8133 (value!137139 TokenValue!4489) (rule!6653 Rule!8454) (size!21312 Int) (originalCharacters!5097 List!27200)) )
))
(declare-datatypes ((List!27202 0))(
  ( (Nil!27108) (Cons!27108 (h!32509 Token!8132) (t!203458 List!27202)) )
))
(declare-fun tokens!456 () List!27202)

(declare-fun b!2279979 () Bool)

(declare-fun e!1460409 () Bool)

(declare-fun e!1460413 () Bool)

(declare-fun inv!36693 (Token!8132) Bool)

(assert (=> b!2279979 (= e!1460409 (and (inv!36693 (h!32509 tokens!456)) e!1460413 tp!722416))))

(declare-fun b!2279980 () Bool)

(declare-fun res!974471 () Bool)

(assert (=> b!2279980 (=> (not res!974471) (not e!1460389))))

(declare-datatypes ((LexerInterface!3924 0))(
  ( (LexerInterfaceExt!3921 (__x!18039 Int)) (Lexer!3922) )
))
(declare-fun thiss!16613 () LexerInterface!3924)

(declare-fun rulesInvariant!3426 (LexerInterface!3924 List!27201) Bool)

(assert (=> b!2279980 (= res!974471 (rulesInvariant!3426 thiss!16613 rules!1750))))

(declare-fun e!1460405 () Bool)

(assert (=> b!2279981 (= e!1460405 (and tp!722426 tp!722423))))

(declare-fun b!2279982 () Bool)

(declare-fun e!1460404 () Bool)

(declare-fun e!1460385 () Bool)

(assert (=> b!2279982 (= e!1460404 e!1460385)))

(declare-fun res!974481 () Bool)

(assert (=> b!2279982 (=> (not res!974481) (not e!1460385))))

(declare-fun e!1460412 () Bool)

(assert (=> b!2279982 (= res!974481 e!1460412)))

(declare-fun res!974472 () Bool)

(assert (=> b!2279982 (=> res!974472 e!1460412)))

(declare-fun lt!846319 () Bool)

(assert (=> b!2279982 (= res!974472 lt!846319)))

(declare-fun isEmpty!15392 (List!27202) Bool)

(assert (=> b!2279982 (= lt!846319 (isEmpty!15392 tokens!456))))

(declare-fun b!2279983 () Bool)

(declare-fun res!974475 () Bool)

(declare-fun e!1460394 () Bool)

(assert (=> b!2279983 (=> res!974475 e!1460394)))

(declare-fun lt!846322 () List!27200)

(declare-fun input!1722 () List!27200)

(declare-fun isPrefix!2317 (List!27200 List!27200) Bool)

(assert (=> b!2279983 (= res!974475 (not (isPrefix!2317 lt!846322 input!1722)))))

(declare-fun b!2279984 () Bool)

(declare-fun e!1460397 () Bool)

(declare-fun r!2363 () Rule!8454)

(declare-fun head!4936 (List!27202) Token!8132)

(assert (=> b!2279984 (= e!1460397 (= (rule!6653 (head!4936 tokens!456)) r!2363))))

(declare-fun b!2279985 () Bool)

(declare-fun e!1460408 () Bool)

(declare-fun tp_is_empty!10571 () Bool)

(declare-fun tp!722422 () Bool)

(assert (=> b!2279985 (= e!1460408 (and tp_is_empty!10571 tp!722422))))

(declare-fun b!2279986 () Bool)

(declare-fun e!1460388 () Bool)

(declare-fun tp!722427 () Bool)

(declare-fun inv!21 (TokenValue!4489) Bool)

(assert (=> b!2279986 (= e!1460413 (and (inv!21 (value!137139 (h!32509 tokens!456))) e!1460388 tp!722427))))

(declare-fun b!2279987 () Bool)

(declare-fun e!1460395 () Bool)

(declare-fun tp!722415 () Bool)

(assert (=> b!2279987 (= e!1460395 (and tp_is_empty!10571 tp!722415))))

(declare-fun b!2279988 () Bool)

(declare-fun e!1460406 () Bool)

(assert (=> b!2279988 (= e!1460406 e!1460394)))

(declare-fun res!974465 () Bool)

(assert (=> b!2279988 (=> res!974465 e!1460394)))

(declare-fun lt!846318 () Int)

(declare-fun lt!846327 () Int)

(assert (=> b!2279988 (= res!974465 (not (= lt!846318 lt!846327)))))

(declare-fun size!21313 (List!27200) Int)

(assert (=> b!2279988 (= lt!846327 (size!21313 lt!846322))))

(declare-fun otherP!12 () List!27200)

(assert (=> b!2279988 (= lt!846318 (size!21313 otherP!12))))

(declare-datatypes ((tuple2!26834 0))(
  ( (tuple2!26835 (_1!15927 Token!8132) (_2!15927 List!27200)) )
))
(declare-fun lt!846324 () tuple2!26834)

(declare-fun lt!846326 () List!27200)

(assert (=> b!2279988 (= (_2!15927 lt!846324) lt!846326)))

(declare-datatypes ((Unit!40036 0))(
  ( (Unit!40037) )
))
(declare-fun lt!846323 () Unit!40036)

(declare-fun lemmaSamePrefixThenSameSuffix!1018 (List!27200 List!27200 List!27200 List!27200 List!27200) Unit!40036)

(assert (=> b!2279988 (= lt!846323 (lemmaSamePrefixThenSameSuffix!1018 lt!846322 (_2!15927 lt!846324) lt!846322 lt!846326 input!1722))))

(declare-fun getSuffix!1108 (List!27200 List!27200) List!27200)

(assert (=> b!2279988 (= lt!846326 (getSuffix!1108 input!1722 lt!846322))))

(declare-fun ++!6619 (List!27200 List!27200) List!27200)

(assert (=> b!2279988 (isPrefix!2317 lt!846322 (++!6619 lt!846322 (_2!15927 lt!846324)))))

(declare-fun lt!846328 () Unit!40036)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1522 (List!27200 List!27200) Unit!40036)

(assert (=> b!2279988 (= lt!846328 (lemmaConcatTwoListThenFirstIsPrefix!1522 lt!846322 (_2!15927 lt!846324)))))

(declare-fun list!10560 (BalanceConc!17332) List!27200)

(declare-fun charsOf!2715 (Token!8132) BalanceConc!17332)

(assert (=> b!2279988 (= lt!846322 (list!10560 (charsOf!2715 (h!32509 tokens!456))))))

(declare-fun b!2279989 () Bool)

(declare-fun e!1460410 () Bool)

(declare-fun e!1460399 () Bool)

(declare-fun tp!722421 () Bool)

(assert (=> b!2279989 (= e!1460410 (and e!1460399 tp!722421))))

(declare-fun b!2279990 () Bool)

(assert (=> b!2279990 (= e!1460389 e!1460404)))

(declare-fun res!974476 () Bool)

(assert (=> b!2279990 (=> (not res!974476) (not e!1460404))))

(declare-datatypes ((IArray!17611 0))(
  ( (IArray!17612 (innerList!8863 List!27202)) )
))
(declare-datatypes ((Conc!8803 0))(
  ( (Node!8803 (left!20563 Conc!8803) (right!20893 Conc!8803) (csize!17836 Int) (cheight!9014 Int)) (Leaf!12952 (xs!11745 IArray!17611) (csize!17837 Int)) (Empty!8803) )
))
(declare-datatypes ((BalanceConc!17334 0))(
  ( (BalanceConc!17335 (c!361876 Conc!8803)) )
))
(declare-datatypes ((tuple2!26836 0))(
  ( (tuple2!26837 (_1!15928 BalanceConc!17334) (_2!15928 BalanceConc!17332)) )
))
(declare-fun lt!846325 () tuple2!26836)

(declare-fun suffix!886 () List!27200)

(declare-datatypes ((tuple2!26838 0))(
  ( (tuple2!26839 (_1!15929 List!27202) (_2!15929 List!27200)) )
))
(declare-fun list!10561 (BalanceConc!17334) List!27202)

(assert (=> b!2279990 (= res!974476 (= (tuple2!26839 (list!10561 (_1!15928 lt!846325)) (list!10560 (_2!15928 lt!846325))) (tuple2!26839 tokens!456 suffix!886)))))

(declare-fun lex!1763 (LexerInterface!3924 List!27201 BalanceConc!17332) tuple2!26836)

(declare-fun seqFromList!3031 (List!27200) BalanceConc!17332)

(assert (=> b!2279990 (= lt!846325 (lex!1763 thiss!16613 rules!1750 (seqFromList!3031 input!1722)))))

(declare-fun tp!722424 () Bool)

(declare-fun b!2279991 () Bool)

(declare-fun e!1460393 () Bool)

(declare-fun e!1460391 () Bool)

(declare-fun inv!36690 (String!29549) Bool)

(declare-fun inv!36694 (TokenValueInjection!8518) Bool)

(assert (=> b!2279991 (= e!1460391 (and tp!722424 (inv!36690 (tag!4817 r!2363)) (inv!36694 (transformation!4327 r!2363)) e!1460393))))

(declare-fun e!1460390 () Bool)

(assert (=> b!2279992 (= e!1460390 (and tp!722410 tp!722419))))

(declare-fun b!2279993 () Bool)

(declare-fun res!974469 () Bool)

(assert (=> b!2279993 (=> (not res!974469) (not e!1460389))))

(declare-fun contains!4699 (List!27201 Rule!8454) Bool)

(assert (=> b!2279993 (= res!974469 (contains!4699 rules!1750 r!2363))))

(declare-fun e!1460411 () Bool)

(assert (=> b!2279994 (= e!1460411 (and tp!722412 tp!722425))))

(declare-fun res!974466 () Bool)

(assert (=> start!223356 (=> (not res!974466) (not e!1460389))))

(get-info :version)

(assert (=> start!223356 (= res!974466 ((_ is Lexer!3922) thiss!16613))))

(assert (=> start!223356 e!1460389))

(assert (=> start!223356 true))

(declare-fun e!1460396 () Bool)

(assert (=> start!223356 e!1460396))

(declare-fun e!1460403 () Bool)

(assert (=> start!223356 e!1460403))

(assert (=> start!223356 e!1460408))

(assert (=> start!223356 e!1460395))

(assert (=> start!223356 e!1460410))

(assert (=> start!223356 e!1460391))

(assert (=> start!223356 e!1460409))

(declare-fun b!2279995 () Bool)

(assert (=> b!2279995 (= e!1460394 (= lt!846327 lt!846318))))

(declare-fun b!2279996 () Bool)

(declare-fun e!1460392 () Bool)

(assert (=> b!2279996 (= e!1460392 e!1460406)))

(declare-fun res!974482 () Bool)

(assert (=> b!2279996 (=> res!974482 e!1460406)))

(assert (=> b!2279996 (= res!974482 (not (= (h!32509 tokens!456) (_1!15927 lt!846324))))))

(declare-datatypes ((Option!5313 0))(
  ( (None!5312) (Some!5312 (v!30374 tuple2!26834)) )
))
(declare-fun get!8170 (Option!5313) tuple2!26834)

(declare-fun maxPrefix!2188 (LexerInterface!3924 List!27201 List!27200) Option!5313)

(assert (=> b!2279996 (= lt!846324 (get!8170 (maxPrefix!2188 thiss!16613 rules!1750 input!1722)))))

(declare-fun tp!722420 () Bool)

(declare-fun b!2279997 () Bool)

(assert (=> b!2279997 (= e!1460388 (and tp!722420 (inv!36690 (tag!4817 (rule!6653 (h!32509 tokens!456)))) (inv!36694 (transformation!4327 (rule!6653 (h!32509 tokens!456)))) e!1460411))))

(declare-fun b!2279998 () Bool)

(declare-fun e!1460402 () Bool)

(declare-fun matchR!2932 (Regex!6675 List!27200) Bool)

(assert (=> b!2279998 (= e!1460402 (not (matchR!2932 (regex!4327 r!2363) (list!10560 (charsOf!2715 (head!4936 tokens!456))))))))

(declare-fun b!2279999 () Bool)

(declare-fun res!974470 () Bool)

(assert (=> b!2279999 (=> res!974470 e!1460392)))

(assert (=> b!2279999 (= res!974470 ((_ is Nil!27108) tokens!456))))

(declare-fun b!2280000 () Bool)

(declare-fun res!974480 () Bool)

(assert (=> b!2280000 (=> (not res!974480) (not e!1460389))))

(declare-fun otherR!12 () Rule!8454)

(assert (=> b!2280000 (= res!974480 (contains!4699 rules!1750 otherR!12))))

(declare-fun b!2280001 () Bool)

(declare-fun res!974478 () Bool)

(assert (=> b!2280001 (=> (not res!974478) (not e!1460385))))

(assert (=> b!2280001 (= res!974478 (isPrefix!2317 otherP!12 input!1722))))

(declare-fun tp!722413 () Bool)

(declare-fun b!2280002 () Bool)

(assert (=> b!2280002 (= e!1460403 (and tp!722413 (inv!36690 (tag!4817 otherR!12)) (inv!36694 (transformation!4327 otherR!12)) e!1460390))))

(assert (=> b!2280003 (= e!1460393 (and tp!722417 tp!722411))))

(declare-fun b!2280004 () Bool)

(declare-fun size!21314 (BalanceConc!17332) Int)

(assert (=> b!2280004 (= e!1460412 (<= (size!21314 (charsOf!2715 (head!4936 tokens!456))) (size!21313 otherP!12)))))

(declare-fun b!2280005 () Bool)

(declare-fun tp!722414 () Bool)

(assert (=> b!2280005 (= e!1460396 (and tp_is_empty!10571 tp!722414))))

(declare-fun b!2280006 () Bool)

(declare-fun e!1460407 () Bool)

(assert (=> b!2280006 (= e!1460407 e!1460392)))

(declare-fun res!974479 () Bool)

(assert (=> b!2280006 (=> res!974479 e!1460392)))

(declare-fun getIndex!340 (List!27201 Rule!8454) Int)

(assert (=> b!2280006 (= res!974479 (<= (getIndex!340 rules!1750 r!2363) (getIndex!340 rules!1750 otherR!12)))))

(declare-fun ruleValid!1417 (LexerInterface!3924 Rule!8454) Bool)

(assert (=> b!2280006 (ruleValid!1417 thiss!16613 otherR!12)))

(declare-fun lt!846320 () Unit!40036)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!822 (LexerInterface!3924 Rule!8454 List!27201) Unit!40036)

(assert (=> b!2280006 (= lt!846320 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!822 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2280007 () Bool)

(declare-fun res!974467 () Bool)

(assert (=> b!2280007 (=> (not res!974467) (not e!1460385))))

(assert (=> b!2280007 (= res!974467 e!1460397)))

(declare-fun res!974474 () Bool)

(assert (=> b!2280007 (=> res!974474 e!1460397)))

(assert (=> b!2280007 (= res!974474 lt!846319)))

(declare-fun b!2280008 () Bool)

(declare-fun res!974477 () Bool)

(assert (=> b!2280008 (=> (not res!974477) (not e!1460385))))

(assert (=> b!2280008 (= res!974477 (not (= r!2363 otherR!12)))))

(declare-fun tp!722418 () Bool)

(declare-fun b!2280009 () Bool)

(assert (=> b!2280009 (= e!1460399 (and tp!722418 (inv!36690 (tag!4817 (h!32508 rules!1750))) (inv!36694 (transformation!4327 (h!32508 rules!1750))) e!1460405))))

(declare-fun b!2280010 () Bool)

(assert (=> b!2280010 (= e!1460385 (not e!1460407))))

(declare-fun res!974464 () Bool)

(assert (=> b!2280010 (=> res!974464 e!1460407)))

(assert (=> b!2280010 (= res!974464 e!1460402)))

(declare-fun res!974468 () Bool)

(assert (=> b!2280010 (=> (not res!974468) (not e!1460402))))

(assert (=> b!2280010 (= res!974468 (not lt!846319))))

(assert (=> b!2280010 (ruleValid!1417 thiss!16613 r!2363)))

(declare-fun lt!846321 () Unit!40036)

(assert (=> b!2280010 (= lt!846321 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!822 thiss!16613 r!2363 rules!1750))))

(assert (= (and start!223356 res!974466) b!2279978))

(assert (= (and b!2279978 res!974473) b!2279980))

(assert (= (and b!2279980 res!974471) b!2279993))

(assert (= (and b!2279993 res!974469) b!2280000))

(assert (= (and b!2280000 res!974480) b!2279990))

(assert (= (and b!2279990 res!974476) b!2279982))

(assert (= (and b!2279982 (not res!974472)) b!2280004))

(assert (= (and b!2279982 res!974481) b!2280007))

(assert (= (and b!2280007 (not res!974474)) b!2279984))

(assert (= (and b!2280007 res!974467) b!2280001))

(assert (= (and b!2280001 res!974478) b!2280008))

(assert (= (and b!2280008 res!974477) b!2280010))

(assert (= (and b!2280010 res!974468) b!2279998))

(assert (= (and b!2280010 (not res!974464)) b!2280006))

(assert (= (and b!2280006 (not res!974479)) b!2279999))

(assert (= (and b!2279999 (not res!974470)) b!2279996))

(assert (= (and b!2279996 (not res!974482)) b!2279988))

(assert (= (and b!2279988 (not res!974465)) b!2279983))

(assert (= (and b!2279983 (not res!974475)) b!2279995))

(assert (= (and start!223356 ((_ is Cons!27106) input!1722)) b!2280005))

(assert (= b!2280002 b!2279992))

(assert (= start!223356 b!2280002))

(assert (= (and start!223356 ((_ is Cons!27106) suffix!886)) b!2279985))

(assert (= (and start!223356 ((_ is Cons!27106) otherP!12)) b!2279987))

(assert (= b!2280009 b!2279981))

(assert (= b!2279989 b!2280009))

(assert (= (and start!223356 ((_ is Cons!27107) rules!1750)) b!2279989))

(assert (= b!2279991 b!2280003))

(assert (= start!223356 b!2279991))

(assert (= b!2279997 b!2279994))

(assert (= b!2279986 b!2279997))

(assert (= b!2279979 b!2279986))

(assert (= (and start!223356 ((_ is Cons!27108) tokens!456)) b!2279979))

(declare-fun m!2708061 () Bool)

(assert (=> b!2280009 m!2708061))

(declare-fun m!2708063 () Bool)

(assert (=> b!2280009 m!2708063))

(declare-fun m!2708065 () Bool)

(assert (=> b!2279993 m!2708065))

(declare-fun m!2708067 () Bool)

(assert (=> b!2279997 m!2708067))

(declare-fun m!2708069 () Bool)

(assert (=> b!2279997 m!2708069))

(declare-fun m!2708071 () Bool)

(assert (=> b!2279978 m!2708071))

(declare-fun m!2708073 () Bool)

(assert (=> b!2279986 m!2708073))

(declare-fun m!2708075 () Bool)

(assert (=> b!2279996 m!2708075))

(assert (=> b!2279996 m!2708075))

(declare-fun m!2708077 () Bool)

(assert (=> b!2279996 m!2708077))

(declare-fun m!2708079 () Bool)

(assert (=> b!2279980 m!2708079))

(declare-fun m!2708081 () Bool)

(assert (=> b!2279990 m!2708081))

(declare-fun m!2708083 () Bool)

(assert (=> b!2279990 m!2708083))

(declare-fun m!2708085 () Bool)

(assert (=> b!2279990 m!2708085))

(assert (=> b!2279990 m!2708085))

(declare-fun m!2708087 () Bool)

(assert (=> b!2279990 m!2708087))

(declare-fun m!2708089 () Bool)

(assert (=> b!2279982 m!2708089))

(declare-fun m!2708091 () Bool)

(assert (=> b!2279991 m!2708091))

(declare-fun m!2708093 () Bool)

(assert (=> b!2279991 m!2708093))

(declare-fun m!2708095 () Bool)

(assert (=> b!2279998 m!2708095))

(assert (=> b!2279998 m!2708095))

(declare-fun m!2708097 () Bool)

(assert (=> b!2279998 m!2708097))

(assert (=> b!2279998 m!2708097))

(declare-fun m!2708099 () Bool)

(assert (=> b!2279998 m!2708099))

(assert (=> b!2279998 m!2708099))

(declare-fun m!2708101 () Bool)

(assert (=> b!2279998 m!2708101))

(declare-fun m!2708103 () Bool)

(assert (=> b!2279979 m!2708103))

(assert (=> b!2280004 m!2708095))

(assert (=> b!2280004 m!2708095))

(assert (=> b!2280004 m!2708097))

(assert (=> b!2280004 m!2708097))

(declare-fun m!2708105 () Bool)

(assert (=> b!2280004 m!2708105))

(declare-fun m!2708107 () Bool)

(assert (=> b!2280004 m!2708107))

(declare-fun m!2708109 () Bool)

(assert (=> b!2280010 m!2708109))

(declare-fun m!2708111 () Bool)

(assert (=> b!2280010 m!2708111))

(assert (=> b!2279984 m!2708095))

(declare-fun m!2708113 () Bool)

(assert (=> b!2279988 m!2708113))

(declare-fun m!2708115 () Bool)

(assert (=> b!2279988 m!2708115))

(declare-fun m!2708117 () Bool)

(assert (=> b!2279988 m!2708117))

(assert (=> b!2279988 m!2708107))

(declare-fun m!2708119 () Bool)

(assert (=> b!2279988 m!2708119))

(assert (=> b!2279988 m!2708119))

(declare-fun m!2708121 () Bool)

(assert (=> b!2279988 m!2708121))

(declare-fun m!2708123 () Bool)

(assert (=> b!2279988 m!2708123))

(declare-fun m!2708125 () Bool)

(assert (=> b!2279988 m!2708125))

(declare-fun m!2708127 () Bool)

(assert (=> b!2279988 m!2708127))

(assert (=> b!2279988 m!2708123))

(declare-fun m!2708129 () Bool)

(assert (=> b!2280002 m!2708129))

(declare-fun m!2708131 () Bool)

(assert (=> b!2280002 m!2708131))

(declare-fun m!2708133 () Bool)

(assert (=> b!2280000 m!2708133))

(declare-fun m!2708135 () Bool)

(assert (=> b!2280001 m!2708135))

(declare-fun m!2708137 () Bool)

(assert (=> b!2279983 m!2708137))

(declare-fun m!2708139 () Bool)

(assert (=> b!2280006 m!2708139))

(declare-fun m!2708141 () Bool)

(assert (=> b!2280006 m!2708141))

(declare-fun m!2708143 () Bool)

(assert (=> b!2280006 m!2708143))

(declare-fun m!2708145 () Bool)

(assert (=> b!2280006 m!2708145))

(check-sat (not b!2279980) (not b!2279991) b_and!180029 (not b!2280009) (not b!2279979) b_and!180031 (not b!2279989) (not b!2279978) (not b!2280006) (not b!2279998) (not b_next!68763) (not b!2279988) (not b!2279987) b_and!180027 tp_is_empty!10571 b_and!180019 (not b!2279982) (not b!2279997) (not b!2280001) (not b_next!68759) (not b!2280002) (not b!2280004) b_and!180021 (not b!2280000) (not b_next!68749) (not b!2280005) b_and!180023 b_and!180025 (not b!2279983) (not b!2279985) (not b_next!68753) b_and!180017 (not b!2279986) (not b!2279990) (not b_next!68751) (not b!2279993) (not b!2280010) (not b_next!68755) (not b!2279996) (not b_next!68757) (not b!2279984) (not b_next!68761))
(check-sat (not b_next!68749) b_and!180029 (not b_next!68753) b_and!180031 b_and!180017 (not b_next!68751) (not b_next!68761) (not b_next!68763) b_and!180027 b_and!180019 (not b_next!68759) b_and!180021 b_and!180023 b_and!180025 (not b_next!68755) (not b_next!68757))
