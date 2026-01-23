; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384408 () Bool)

(assert start!384408)

(declare-fun b!4072422 () Bool)

(declare-fun b_free!113305 () Bool)

(declare-fun b_next!114009 () Bool)

(assert (=> b!4072422 (= b_free!113305 (not b_next!114009))))

(declare-fun tp!1232442 () Bool)

(declare-fun b_and!312931 () Bool)

(assert (=> b!4072422 (= tp!1232442 b_and!312931)))

(declare-fun b_free!113307 () Bool)

(declare-fun b_next!114011 () Bool)

(assert (=> b!4072422 (= b_free!113307 (not b_next!114011))))

(declare-fun tp!1232439 () Bool)

(declare-fun b_and!312933 () Bool)

(assert (=> b!4072422 (= tp!1232439 b_and!312933)))

(declare-fun b!4072415 () Bool)

(declare-fun b_free!113309 () Bool)

(declare-fun b_next!114013 () Bool)

(assert (=> b!4072415 (= b_free!113309 (not b_next!114013))))

(declare-fun tp!1232441 () Bool)

(declare-fun b_and!312935 () Bool)

(assert (=> b!4072415 (= tp!1232441 b_and!312935)))

(declare-fun b_free!113311 () Bool)

(declare-fun b_next!114015 () Bool)

(assert (=> b!4072415 (= b_free!113311 (not b_next!114015))))

(declare-fun tp!1232438 () Bool)

(declare-fun b_and!312937 () Bool)

(assert (=> b!4072415 (= tp!1232438 b_and!312937)))

(declare-fun b!4072409 () Bool)

(declare-fun e!2527451 () Bool)

(declare-fun e!2527458 () Bool)

(declare-fun tp!1232435 () Bool)

(assert (=> b!4072409 (= e!2527451 (and e!2527458 tp!1232435))))

(declare-fun b!4072410 () Bool)

(declare-fun res!1662907 () Bool)

(declare-fun e!2527455 () Bool)

(assert (=> b!4072410 (=> (not res!1662907) (not e!2527455))))

(declare-datatypes ((C!23984 0))(
  ( (C!23985 (val!14102 Int)) )
))
(declare-datatypes ((List!43637 0))(
  ( (Nil!43513) (Cons!43513 (h!48933 C!23984) (t!337116 List!43637)) )
))
(declare-fun p!2988 () List!43637)

(declare-fun isEmpty!25964 (List!43637) Bool)

(assert (=> b!4072410 (= res!1662907 (not (isEmpty!25964 p!2988)))))

(declare-fun b!4072411 () Bool)

(declare-fun res!1662908 () Bool)

(assert (=> b!4072411 (=> (not res!1662908) (not e!2527455))))

(declare-datatypes ((LexerInterface!6583 0))(
  ( (LexerInterfaceExt!6580 (__x!26665 Int)) (Lexer!6581) )
))
(declare-fun thiss!26199 () LexerInterface!6583)

(declare-datatypes ((List!43638 0))(
  ( (Nil!43514) (Cons!43514 (h!48934 (_ BitVec 16)) (t!337117 List!43638)) )
))
(declare-datatypes ((TokenValue!7224 0))(
  ( (FloatLiteralValue!14448 (text!51013 List!43638)) (TokenValueExt!7223 (__x!26666 Int)) (Broken!36120 (value!219956 List!43638)) (Object!7347) (End!7224) (Def!7224) (Underscore!7224) (Match!7224) (Else!7224) (Error!7224) (Case!7224) (If!7224) (Extends!7224) (Abstract!7224) (Class!7224) (Val!7224) (DelimiterValue!14448 (del!7284 List!43638)) (KeywordValue!7230 (value!219957 List!43638)) (CommentValue!14448 (value!219958 List!43638)) (WhitespaceValue!14448 (value!219959 List!43638)) (IndentationValue!7224 (value!219960 List!43638)) (String!49869) (Int32!7224) (Broken!36121 (value!219961 List!43638)) (Boolean!7225) (Unit!63066) (OperatorValue!7227 (op!7284 List!43638)) (IdentifierValue!14448 (value!219962 List!43638)) (IdentifierValue!14449 (value!219963 List!43638)) (WhitespaceValue!14449 (value!219964 List!43638)) (True!14448) (False!14448) (Broken!36122 (value!219965 List!43638)) (Broken!36123 (value!219966 List!43638)) (True!14449) (RightBrace!7224) (RightBracket!7224) (Colon!7224) (Null!7224) (Comma!7224) (LeftBracket!7224) (False!14449) (LeftBrace!7224) (ImaginaryLiteralValue!7224 (text!51014 List!43638)) (StringLiteralValue!21672 (value!219967 List!43638)) (EOFValue!7224 (value!219968 List!43638)) (IdentValue!7224 (value!219969 List!43638)) (DelimiterValue!14449 (value!219970 List!43638)) (DedentValue!7224 (value!219971 List!43638)) (NewLineValue!7224 (value!219972 List!43638)) (IntegerValue!21672 (value!219973 (_ BitVec 32)) (text!51015 List!43638)) (IntegerValue!21673 (value!219974 Int) (text!51016 List!43638)) (Times!7224) (Or!7224) (Equal!7224) (Minus!7224) (Broken!36124 (value!219975 List!43638)) (And!7224) (Div!7224) (LessEqual!7224) (Mod!7224) (Concat!19123) (Not!7224) (Plus!7224) (SpaceValue!7224 (value!219976 List!43638)) (IntegerValue!21674 (value!219977 Int) (text!51017 List!43638)) (StringLiteralValue!21673 (text!51018 List!43638)) (FloatLiteralValue!14449 (text!51019 List!43638)) (BytesLiteralValue!7224 (value!219978 List!43638)) (CommentValue!14449 (value!219979 List!43638)) (StringLiteralValue!21674 (value!219980 List!43638)) (ErrorTokenValue!7224 (msg!7285 List!43638)) )
))
(declare-datatypes ((Regex!11899 0))(
  ( (ElementMatch!11899 (c!702842 C!23984)) (Concat!19124 (regOne!24310 Regex!11899) (regTwo!24310 Regex!11899)) (EmptyExpr!11899) (Star!11899 (reg!12228 Regex!11899)) (EmptyLang!11899) (Union!11899 (regOne!24311 Regex!11899) (regTwo!24311 Regex!11899)) )
))
(declare-datatypes ((String!49870 0))(
  ( (String!49871 (value!219981 String)) )
))
(declare-datatypes ((IArray!26415 0))(
  ( (IArray!26416 (innerList!13265 List!43637)) )
))
(declare-datatypes ((Conc!13205 0))(
  ( (Node!13205 (left!32720 Conc!13205) (right!33050 Conc!13205) (csize!26640 Int) (cheight!13416 Int)) (Leaf!20417 (xs!16511 IArray!26415) (csize!26641 Int)) (Empty!13205) )
))
(declare-datatypes ((BalanceConc!26004 0))(
  ( (BalanceConc!26005 (c!702843 Conc!13205)) )
))
(declare-datatypes ((TokenValueInjection!13876 0))(
  ( (TokenValueInjection!13877 (toValue!9558 Int) (toChars!9417 Int)) )
))
(declare-datatypes ((Rule!13788 0))(
  ( (Rule!13789 (regex!6994 Regex!11899) (tag!7854 String!49870) (isSeparator!6994 Bool) (transformation!6994 TokenValueInjection!13876)) )
))
(declare-datatypes ((List!43639 0))(
  ( (Nil!43515) (Cons!43515 (h!48935 Rule!13788) (t!337118 List!43639)) )
))
(declare-fun rules!3870 () List!43639)

(declare-fun rulesInvariant!5926 (LexerInterface!6583 List!43639) Bool)

(assert (=> b!4072411 (= res!1662908 (rulesInvariant!5926 thiss!26199 rules!3870))))

(declare-fun b!4072412 () Bool)

(declare-fun e!2527450 () Bool)

(declare-fun tp_is_empty!20801 () Bool)

(declare-fun tp!1232440 () Bool)

(assert (=> b!4072412 (= e!2527450 (and tp_is_empty!20801 tp!1232440))))

(declare-fun b!4072413 () Bool)

(declare-fun e!2527453 () Bool)

(declare-fun tp!1232437 () Bool)

(assert (=> b!4072413 (= e!2527453 (and tp_is_empty!20801 tp!1232437))))

(declare-fun b!4072414 () Bool)

(declare-fun res!1662903 () Bool)

(assert (=> b!4072414 (=> (not res!1662903) (not e!2527455))))

(declare-fun r!4213 () Rule!13788)

(declare-fun contains!8661 (List!43639 Rule!13788) Bool)

(assert (=> b!4072414 (= res!1662903 (contains!8661 rules!3870 r!4213))))

(declare-fun e!2527457 () Bool)

(assert (=> b!4072415 (= e!2527457 (and tp!1232441 tp!1232438))))

(declare-fun b!4072416 () Bool)

(declare-fun res!1662904 () Bool)

(assert (=> b!4072416 (=> (not res!1662904) (not e!2527455))))

(declare-fun isEmpty!25965 (List!43639) Bool)

(assert (=> b!4072416 (= res!1662904 (not (isEmpty!25965 rules!3870)))))

(declare-fun b!4072417 () Bool)

(declare-fun res!1662905 () Bool)

(assert (=> b!4072417 (=> (not res!1662905) (not e!2527455))))

(declare-fun suffix!1518 () List!43637)

(declare-fun input!3411 () List!43637)

(declare-fun ++!11400 (List!43637 List!43637) List!43637)

(assert (=> b!4072417 (= res!1662905 (= input!3411 (++!11400 p!2988 suffix!1518)))))

(declare-fun b!4072418 () Bool)

(assert (=> b!4072418 (= e!2527455 false)))

(declare-fun lt!1457647 () Bool)

(declare-fun rulesValidInductive!2565 (LexerInterface!6583 List!43639) Bool)

(assert (=> b!4072418 (= lt!1457647 (rulesValidInductive!2565 thiss!26199 rules!3870))))

(declare-datatypes ((Unit!63067 0))(
  ( (Unit!63068) )
))
(declare-fun lt!1457646 () Unit!63067)

(declare-fun lemmaSemiInverse!1961 (TokenValueInjection!13876 BalanceConc!26004) Unit!63067)

(declare-fun seqFromList!5211 (List!43637) BalanceConc!26004)

(assert (=> b!4072418 (= lt!1457646 (lemmaSemiInverse!1961 (transformation!6994 r!4213) (seqFromList!5211 p!2988)))))

(declare-fun b!4072419 () Bool)

(declare-fun e!2527460 () Bool)

(declare-fun tp!1232436 () Bool)

(assert (=> b!4072419 (= e!2527460 (and tp_is_empty!20801 tp!1232436))))

(declare-fun res!1662906 () Bool)

(assert (=> start!384408 (=> (not res!1662906) (not e!2527455))))

(get-info :version)

(assert (=> start!384408 (= res!1662906 ((_ is Lexer!6581) thiss!26199))))

(assert (=> start!384408 e!2527455))

(assert (=> start!384408 true))

(assert (=> start!384408 e!2527450))

(assert (=> start!384408 e!2527451))

(assert (=> start!384408 e!2527453))

(assert (=> start!384408 e!2527460))

(declare-fun e!2527456 () Bool)

(assert (=> start!384408 e!2527456))

(declare-fun tp!1232434 () Bool)

(declare-fun e!2527454 () Bool)

(declare-fun b!4072420 () Bool)

(declare-fun inv!58169 (String!49870) Bool)

(declare-fun inv!58171 (TokenValueInjection!13876) Bool)

(assert (=> b!4072420 (= e!2527456 (and tp!1232434 (inv!58169 (tag!7854 r!4213)) (inv!58171 (transformation!6994 r!4213)) e!2527454))))

(declare-fun tp!1232433 () Bool)

(declare-fun b!4072421 () Bool)

(assert (=> b!4072421 (= e!2527458 (and tp!1232433 (inv!58169 (tag!7854 (h!48935 rules!3870))) (inv!58171 (transformation!6994 (h!48935 rules!3870))) e!2527457))))

(assert (=> b!4072422 (= e!2527454 (and tp!1232442 tp!1232439))))

(assert (= (and start!384408 res!1662906) b!4072416))

(assert (= (and b!4072416 res!1662904) b!4072411))

(assert (= (and b!4072411 res!1662908) b!4072414))

(assert (= (and b!4072414 res!1662903) b!4072417))

(assert (= (and b!4072417 res!1662905) b!4072410))

(assert (= (and b!4072410 res!1662907) b!4072418))

(assert (= (and start!384408 ((_ is Cons!43513) suffix!1518)) b!4072412))

(assert (= b!4072421 b!4072415))

(assert (= b!4072409 b!4072421))

(assert (= (and start!384408 ((_ is Cons!43515) rules!3870)) b!4072409))

(assert (= (and start!384408 ((_ is Cons!43513) p!2988)) b!4072413))

(assert (= (and start!384408 ((_ is Cons!43513) input!3411)) b!4072419))

(assert (= b!4072420 b!4072422))

(assert (= start!384408 b!4072420))

(declare-fun m!4681465 () Bool)

(assert (=> b!4072418 m!4681465))

(declare-fun m!4681467 () Bool)

(assert (=> b!4072418 m!4681467))

(assert (=> b!4072418 m!4681467))

(declare-fun m!4681469 () Bool)

(assert (=> b!4072418 m!4681469))

(declare-fun m!4681471 () Bool)

(assert (=> b!4072414 m!4681471))

(declare-fun m!4681473 () Bool)

(assert (=> b!4072416 m!4681473))

(declare-fun m!4681475 () Bool)

(assert (=> b!4072410 m!4681475))

(declare-fun m!4681477 () Bool)

(assert (=> b!4072411 m!4681477))

(declare-fun m!4681479 () Bool)

(assert (=> b!4072420 m!4681479))

(declare-fun m!4681481 () Bool)

(assert (=> b!4072420 m!4681481))

(declare-fun m!4681483 () Bool)

(assert (=> b!4072417 m!4681483))

(declare-fun m!4681485 () Bool)

(assert (=> b!4072421 m!4681485))

(declare-fun m!4681487 () Bool)

(assert (=> b!4072421 m!4681487))

(check-sat (not b!4072413) (not b!4072417) b_and!312933 (not b_next!114011) (not b!4072411) (not b!4072420) (not b!4072421) (not b!4072419) tp_is_empty!20801 b_and!312937 (not b!4072410) (not b!4072418) b_and!312935 (not b_next!114009) b_and!312931 (not b!4072409) (not b!4072414) (not b!4072416) (not b!4072412) (not b_next!114015) (not b_next!114013))
(check-sat b_and!312933 (not b_next!114011) b_and!312937 b_and!312935 (not b_next!114009) b_and!312931 (not b_next!114015) (not b_next!114013))
