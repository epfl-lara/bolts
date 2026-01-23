; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384412 () Bool)

(assert start!384412)

(declare-fun b!4072503 () Bool)

(declare-fun b_free!113321 () Bool)

(declare-fun b_next!114025 () Bool)

(assert (=> b!4072503 (= b_free!113321 (not b_next!114025))))

(declare-fun tp!1232502 () Bool)

(declare-fun b_and!312947 () Bool)

(assert (=> b!4072503 (= tp!1232502 b_and!312947)))

(declare-fun b_free!113323 () Bool)

(declare-fun b_next!114027 () Bool)

(assert (=> b!4072503 (= b_free!113323 (not b_next!114027))))

(declare-fun tp!1232501 () Bool)

(declare-fun b_and!312949 () Bool)

(assert (=> b!4072503 (= tp!1232501 b_and!312949)))

(declare-fun b!4072510 () Bool)

(declare-fun b_free!113325 () Bool)

(declare-fun b_next!114029 () Bool)

(assert (=> b!4072510 (= b_free!113325 (not b_next!114029))))

(declare-fun tp!1232500 () Bool)

(declare-fun b_and!312951 () Bool)

(assert (=> b!4072510 (= tp!1232500 b_and!312951)))

(declare-fun b_free!113327 () Bool)

(declare-fun b_next!114031 () Bool)

(assert (=> b!4072510 (= b_free!113327 (not b_next!114031))))

(declare-fun tp!1232497 () Bool)

(declare-fun b_and!312953 () Bool)

(assert (=> b!4072510 (= tp!1232497 b_and!312953)))

(declare-fun e!2527522 () Bool)

(declare-datatypes ((List!43643 0))(
  ( (Nil!43519) (Cons!43519 (h!48939 (_ BitVec 16)) (t!337122 List!43643)) )
))
(declare-datatypes ((TokenValue!7226 0))(
  ( (FloatLiteralValue!14452 (text!51027 List!43643)) (TokenValueExt!7225 (__x!26669 Int)) (Broken!36130 (value!220012 List!43643)) (Object!7349) (End!7226) (Def!7226) (Underscore!7226) (Match!7226) (Else!7226) (Error!7226) (Case!7226) (If!7226) (Extends!7226) (Abstract!7226) (Class!7226) (Val!7226) (DelimiterValue!14452 (del!7286 List!43643)) (KeywordValue!7232 (value!220013 List!43643)) (CommentValue!14452 (value!220014 List!43643)) (WhitespaceValue!14452 (value!220015 List!43643)) (IndentationValue!7226 (value!220016 List!43643)) (String!49879) (Int32!7226) (Broken!36131 (value!220017 List!43643)) (Boolean!7227) (Unit!63072) (OperatorValue!7229 (op!7286 List!43643)) (IdentifierValue!14452 (value!220018 List!43643)) (IdentifierValue!14453 (value!220019 List!43643)) (WhitespaceValue!14453 (value!220020 List!43643)) (True!14452) (False!14452) (Broken!36132 (value!220021 List!43643)) (Broken!36133 (value!220022 List!43643)) (True!14453) (RightBrace!7226) (RightBracket!7226) (Colon!7226) (Null!7226) (Comma!7226) (LeftBracket!7226) (False!14453) (LeftBrace!7226) (ImaginaryLiteralValue!7226 (text!51028 List!43643)) (StringLiteralValue!21678 (value!220023 List!43643)) (EOFValue!7226 (value!220024 List!43643)) (IdentValue!7226 (value!220025 List!43643)) (DelimiterValue!14453 (value!220026 List!43643)) (DedentValue!7226 (value!220027 List!43643)) (NewLineValue!7226 (value!220028 List!43643)) (IntegerValue!21678 (value!220029 (_ BitVec 32)) (text!51029 List!43643)) (IntegerValue!21679 (value!220030 Int) (text!51030 List!43643)) (Times!7226) (Or!7226) (Equal!7226) (Minus!7226) (Broken!36134 (value!220031 List!43643)) (And!7226) (Div!7226) (LessEqual!7226) (Mod!7226) (Concat!19127) (Not!7226) (Plus!7226) (SpaceValue!7226 (value!220032 List!43643)) (IntegerValue!21680 (value!220033 Int) (text!51031 List!43643)) (StringLiteralValue!21679 (text!51032 List!43643)) (FloatLiteralValue!14453 (text!51033 List!43643)) (BytesLiteralValue!7226 (value!220034 List!43643)) (CommentValue!14453 (value!220035 List!43643)) (StringLiteralValue!21680 (value!220036 List!43643)) (ErrorTokenValue!7226 (msg!7287 List!43643)) )
))
(declare-datatypes ((C!23988 0))(
  ( (C!23989 (val!14104 Int)) )
))
(declare-datatypes ((Regex!11901 0))(
  ( (ElementMatch!11901 (c!702848 C!23988)) (Concat!19128 (regOne!24314 Regex!11901) (regTwo!24314 Regex!11901)) (EmptyExpr!11901) (Star!11901 (reg!12230 Regex!11901)) (EmptyLang!11901) (Union!11901 (regOne!24315 Regex!11901) (regTwo!24315 Regex!11901)) )
))
(declare-datatypes ((String!49880 0))(
  ( (String!49881 (value!220037 String)) )
))
(declare-datatypes ((List!43644 0))(
  ( (Nil!43520) (Cons!43520 (h!48940 C!23988) (t!337123 List!43644)) )
))
(declare-datatypes ((IArray!26419 0))(
  ( (IArray!26420 (innerList!13267 List!43644)) )
))
(declare-datatypes ((Conc!13207 0))(
  ( (Node!13207 (left!32723 Conc!13207) (right!33053 Conc!13207) (csize!26644 Int) (cheight!13418 Int)) (Leaf!20420 (xs!16513 IArray!26419) (csize!26645 Int)) (Empty!13207) )
))
(declare-datatypes ((BalanceConc!26008 0))(
  ( (BalanceConc!26009 (c!702849 Conc!13207)) )
))
(declare-datatypes ((TokenValueInjection!13880 0))(
  ( (TokenValueInjection!13881 (toValue!9560 Int) (toChars!9419 Int)) )
))
(declare-datatypes ((Rule!13792 0))(
  ( (Rule!13793 (regex!6996 Regex!11901) (tag!7856 String!49880) (isSeparator!6996 Bool) (transformation!6996 TokenValueInjection!13880)) )
))
(declare-datatypes ((List!43645 0))(
  ( (Nil!43521) (Cons!43521 (h!48941 Rule!13792) (t!337124 List!43645)) )
))
(declare-fun rules!3870 () List!43645)

(declare-fun b!4072498 () Bool)

(declare-fun e!2527525 () Bool)

(declare-fun tp!1232495 () Bool)

(declare-fun inv!58174 (String!49880) Bool)

(declare-fun inv!58176 (TokenValueInjection!13880) Bool)

(assert (=> b!4072498 (= e!2527522 (and tp!1232495 (inv!58174 (tag!7856 (h!48941 rules!3870))) (inv!58176 (transformation!6996 (h!48941 rules!3870))) e!2527525))))

(declare-fun b!4072499 () Bool)

(declare-fun e!2527531 () Bool)

(declare-fun e!2527529 () Bool)

(assert (=> b!4072499 (= e!2527531 e!2527529)))

(declare-fun res!1662949 () Bool)

(assert (=> b!4072499 (=> (not res!1662949) (not e!2527529))))

(declare-datatypes ((LexerInterface!6585 0))(
  ( (LexerInterfaceExt!6582 (__x!26670 Int)) (Lexer!6583) )
))
(declare-fun thiss!26199 () LexerInterface!6585)

(declare-fun suffix!1518 () List!43644)

(declare-fun p!2988 () List!43644)

(declare-fun input!3411 () List!43644)

(declare-fun r!4213 () Rule!13792)

(declare-fun lt!1457664 () BalanceConc!26008)

(declare-datatypes ((Token!13118 0))(
  ( (Token!13119 (value!220038 TokenValue!7226) (rule!10100 Rule!13792) (size!32523 Int) (originalCharacters!7590 List!43644)) )
))
(declare-datatypes ((tuple2!42534 0))(
  ( (tuple2!42535 (_1!24401 Token!13118) (_2!24401 List!43644)) )
))
(declare-datatypes ((Option!9404 0))(
  ( (None!9403) (Some!9403 (v!39839 tuple2!42534)) )
))
(declare-fun maxPrefix!3877 (LexerInterface!6585 List!43645 List!43644) Option!9404)

(declare-fun apply!10179 (TokenValueInjection!13880 BalanceConc!26008) TokenValue!7226)

(declare-fun size!32524 (List!43644) Int)

(assert (=> b!4072499 (= res!1662949 (= (maxPrefix!3877 thiss!26199 rules!3870 input!3411) (Some!9403 (tuple2!42535 (Token!13119 (apply!10179 (transformation!6996 r!4213) lt!1457664) r!4213 (size!32524 p!2988) p!2988) suffix!1518))))))

(declare-datatypes ((Unit!63073 0))(
  ( (Unit!63074) )
))
(declare-fun lt!1457663 () Unit!63073)

(declare-fun lemmaSemiInverse!1963 (TokenValueInjection!13880 BalanceConc!26008) Unit!63073)

(assert (=> b!4072499 (= lt!1457663 (lemmaSemiInverse!1963 (transformation!6996 r!4213) lt!1457664))))

(declare-fun seqFromList!5213 (List!43644) BalanceConc!26008)

(assert (=> b!4072499 (= lt!1457664 (seqFromList!5213 p!2988))))

(declare-fun b!4072500 () Bool)

(declare-fun res!1662947 () Bool)

(assert (=> b!4072500 (=> (not res!1662947) (not e!2527531))))

(declare-fun ++!11402 (List!43644 List!43644) List!43644)

(assert (=> b!4072500 (= res!1662947 (= input!3411 (++!11402 p!2988 suffix!1518)))))

(declare-fun b!4072501 () Bool)

(assert (=> b!4072501 (= e!2527529 false)))

(declare-fun lt!1457665 () Bool)

(declare-fun rulesValidInductive!2567 (LexerInterface!6585 List!43645) Bool)

(assert (=> b!4072501 (= lt!1457665 (rulesValidInductive!2567 thiss!26199 rules!3870))))

(declare-fun b!4072502 () Bool)

(declare-fun e!2527526 () Bool)

(declare-fun tp_is_empty!20805 () Bool)

(declare-fun tp!1232496 () Bool)

(assert (=> b!4072502 (= e!2527526 (and tp_is_empty!20805 tp!1232496))))

(declare-fun e!2527530 () Bool)

(assert (=> b!4072503 (= e!2527530 (and tp!1232502 tp!1232501))))

(declare-fun b!4072504 () Bool)

(declare-fun res!1662945 () Bool)

(assert (=> b!4072504 (=> (not res!1662945) (not e!2527531))))

(declare-fun rulesInvariant!5928 (LexerInterface!6585 List!43645) Bool)

(assert (=> b!4072504 (= res!1662945 (rulesInvariant!5928 thiss!26199 rules!3870))))

(declare-fun b!4072505 () Bool)

(declare-fun e!2527523 () Bool)

(declare-fun tp!1232493 () Bool)

(assert (=> b!4072505 (= e!2527523 (and e!2527522 tp!1232493))))

(declare-fun b!4072506 () Bool)

(declare-fun e!2527532 () Bool)

(declare-fun tp!1232498 () Bool)

(assert (=> b!4072506 (= e!2527532 (and tp_is_empty!20805 tp!1232498))))

(declare-fun b!4072507 () Bool)

(declare-fun res!1662946 () Bool)

(assert (=> b!4072507 (=> (not res!1662946) (not e!2527531))))

(declare-fun isEmpty!25968 (List!43644) Bool)

(assert (=> b!4072507 (= res!1662946 (not (isEmpty!25968 p!2988)))))

(declare-fun b!4072508 () Bool)

(declare-fun res!1662944 () Bool)

(assert (=> b!4072508 (=> (not res!1662944) (not e!2527531))))

(declare-fun isEmpty!25969 (List!43645) Bool)

(assert (=> b!4072508 (= res!1662944 (not (isEmpty!25969 rules!3870)))))

(declare-fun res!1662950 () Bool)

(assert (=> start!384412 (=> (not res!1662950) (not e!2527531))))

(get-info :version)

(assert (=> start!384412 (= res!1662950 ((_ is Lexer!6583) thiss!26199))))

(assert (=> start!384412 e!2527531))

(assert (=> start!384412 true))

(assert (=> start!384412 e!2527526))

(assert (=> start!384412 e!2527523))

(declare-fun e!2527527 () Bool)

(assert (=> start!384412 e!2527527))

(assert (=> start!384412 e!2527532))

(declare-fun e!2527528 () Bool)

(assert (=> start!384412 e!2527528))

(declare-fun b!4072509 () Bool)

(declare-fun tp!1232499 () Bool)

(assert (=> b!4072509 (= e!2527527 (and tp_is_empty!20805 tp!1232499))))

(assert (=> b!4072510 (= e!2527525 (and tp!1232500 tp!1232497))))

(declare-fun b!4072511 () Bool)

(declare-fun res!1662948 () Bool)

(assert (=> b!4072511 (=> (not res!1662948) (not e!2527531))))

(declare-fun contains!8663 (List!43645 Rule!13792) Bool)

(assert (=> b!4072511 (= res!1662948 (contains!8663 rules!3870 r!4213))))

(declare-fun tp!1232494 () Bool)

(declare-fun b!4072512 () Bool)

(assert (=> b!4072512 (= e!2527528 (and tp!1232494 (inv!58174 (tag!7856 r!4213)) (inv!58176 (transformation!6996 r!4213)) e!2527530))))

(assert (= (and start!384412 res!1662950) b!4072508))

(assert (= (and b!4072508 res!1662944) b!4072504))

(assert (= (and b!4072504 res!1662945) b!4072511))

(assert (= (and b!4072511 res!1662948) b!4072500))

(assert (= (and b!4072500 res!1662947) b!4072507))

(assert (= (and b!4072507 res!1662946) b!4072499))

(assert (= (and b!4072499 res!1662949) b!4072501))

(assert (= (and start!384412 ((_ is Cons!43520) suffix!1518)) b!4072502))

(assert (= b!4072498 b!4072510))

(assert (= b!4072505 b!4072498))

(assert (= (and start!384412 ((_ is Cons!43521) rules!3870)) b!4072505))

(assert (= (and start!384412 ((_ is Cons!43520) p!2988)) b!4072509))

(assert (= (and start!384412 ((_ is Cons!43520) input!3411)) b!4072506))

(assert (= b!4072512 b!4072503))

(assert (= start!384412 b!4072512))

(declare-fun m!4681519 () Bool)

(assert (=> b!4072501 m!4681519))

(declare-fun m!4681521 () Bool)

(assert (=> b!4072498 m!4681521))

(declare-fun m!4681523 () Bool)

(assert (=> b!4072498 m!4681523))

(declare-fun m!4681525 () Bool)

(assert (=> b!4072511 m!4681525))

(declare-fun m!4681527 () Bool)

(assert (=> b!4072499 m!4681527))

(declare-fun m!4681529 () Bool)

(assert (=> b!4072499 m!4681529))

(declare-fun m!4681531 () Bool)

(assert (=> b!4072499 m!4681531))

(declare-fun m!4681533 () Bool)

(assert (=> b!4072499 m!4681533))

(declare-fun m!4681535 () Bool)

(assert (=> b!4072499 m!4681535))

(declare-fun m!4681537 () Bool)

(assert (=> b!4072507 m!4681537))

(declare-fun m!4681539 () Bool)

(assert (=> b!4072512 m!4681539))

(declare-fun m!4681541 () Bool)

(assert (=> b!4072512 m!4681541))

(declare-fun m!4681543 () Bool)

(assert (=> b!4072504 m!4681543))

(declare-fun m!4681545 () Bool)

(assert (=> b!4072500 m!4681545))

(declare-fun m!4681547 () Bool)

(assert (=> b!4072508 m!4681547))

(check-sat (not b!4072498) (not b!4072509) (not b!4072502) (not b!4072507) tp_is_empty!20805 (not b!4072504) b_and!312949 (not b!4072508) (not b!4072505) (not b_next!114025) (not b_next!114029) b_and!312947 (not b!4072500) (not b_next!114027) (not b!4072501) (not b!4072506) (not b!4072511) (not b!4072499) (not b!4072512) b_and!312953 (not b_next!114031) b_and!312951)
(check-sat b_and!312953 b_and!312949 (not b_next!114025) (not b_next!114029) b_and!312947 (not b_next!114027) (not b_next!114031) b_and!312951)
