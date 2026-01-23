; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58684 () Bool)

(assert start!58684)

(declare-fun b!613022 () Bool)

(declare-fun b_free!17453 () Bool)

(declare-fun b_next!17469 () Bool)

(assert (=> b!613022 (= b_free!17453 (not b_next!17469))))

(declare-fun tp!189522 () Bool)

(declare-fun b_and!60831 () Bool)

(assert (=> b!613022 (= tp!189522 b_and!60831)))

(declare-fun b_free!17455 () Bool)

(declare-fun b_next!17471 () Bool)

(assert (=> b!613022 (= b_free!17455 (not b_next!17471))))

(declare-fun tp!189513 () Bool)

(declare-fun b_and!60833 () Bool)

(assert (=> b!613022 (= tp!189513 b_and!60833)))

(declare-fun b!612996 () Bool)

(declare-fun b_free!17457 () Bool)

(declare-fun b_next!17473 () Bool)

(assert (=> b!612996 (= b_free!17457 (not b_next!17473))))

(declare-fun tp!189514 () Bool)

(declare-fun b_and!60835 () Bool)

(assert (=> b!612996 (= tp!189514 b_and!60835)))

(declare-fun b_free!17459 () Bool)

(declare-fun b_next!17475 () Bool)

(assert (=> b!612996 (= b_free!17459 (not b_next!17475))))

(declare-fun tp!189517 () Bool)

(declare-fun b_and!60837 () Bool)

(assert (=> b!612996 (= tp!189517 b_and!60837)))

(declare-fun b!612985 () Bool)

(declare-fun e!371509 () Bool)

(declare-fun e!371519 () Bool)

(assert (=> b!612985 (= e!371509 e!371519)))

(declare-fun res!266429 () Bool)

(assert (=> b!612985 (=> res!266429 e!371519)))

(declare-datatypes ((C!4044 0))(
  ( (C!4045 (val!2248 Int)) )
))
(declare-datatypes ((List!6131 0))(
  ( (Nil!6121) (Cons!6121 (h!11522 C!4044) (t!81250 List!6131)) )
))
(declare-fun lt!262512 () List!6131)

(declare-fun lt!262537 () Int)

(declare-fun input!2705 () List!6131)

(declare-fun lt!262536 () List!6131)

(declare-fun lt!262518 () Int)

(assert (=> b!612985 (= res!266429 (or (not (= lt!262518 lt!262537)) (not (= lt!262536 input!2705)) (not (= lt!262536 lt!262512))))))

(declare-datatypes ((Unit!11217 0))(
  ( (Unit!11218) )
))
(declare-fun lt!262546 () Unit!11217)

(declare-datatypes ((Regex!1561 0))(
  ( (ElementMatch!1561 (c!113347 C!4044)) (Concat!2812 (regOne!3634 Regex!1561) (regTwo!3634 Regex!1561)) (EmptyExpr!1561) (Star!1561 (reg!1890 Regex!1561)) (EmptyLang!1561) (Union!1561 (regOne!3635 Regex!1561) (regTwo!3635 Regex!1561)) )
))
(declare-datatypes ((List!6132 0))(
  ( (Nil!6122) (Cons!6122 (h!11523 (_ BitVec 16)) (t!81251 List!6132)) )
))
(declare-datatypes ((TokenValue!1251 0))(
  ( (FloatLiteralValue!2502 (text!9202 List!6132)) (TokenValueExt!1250 (__x!4400 Int)) (Broken!6255 (value!39810 List!6132)) (Object!1260) (End!1251) (Def!1251) (Underscore!1251) (Match!1251) (Else!1251) (Error!1251) (Case!1251) (If!1251) (Extends!1251) (Abstract!1251) (Class!1251) (Val!1251) (DelimiterValue!2502 (del!1311 List!6132)) (KeywordValue!1257 (value!39811 List!6132)) (CommentValue!2502 (value!39812 List!6132)) (WhitespaceValue!2502 (value!39813 List!6132)) (IndentationValue!1251 (value!39814 List!6132)) (String!7998) (Int32!1251) (Broken!6256 (value!39815 List!6132)) (Boolean!1252) (Unit!11219) (OperatorValue!1254 (op!1311 List!6132)) (IdentifierValue!2502 (value!39816 List!6132)) (IdentifierValue!2503 (value!39817 List!6132)) (WhitespaceValue!2503 (value!39818 List!6132)) (True!2502) (False!2502) (Broken!6257 (value!39819 List!6132)) (Broken!6258 (value!39820 List!6132)) (True!2503) (RightBrace!1251) (RightBracket!1251) (Colon!1251) (Null!1251) (Comma!1251) (LeftBracket!1251) (False!2503) (LeftBrace!1251) (ImaginaryLiteralValue!1251 (text!9203 List!6132)) (StringLiteralValue!3753 (value!39821 List!6132)) (EOFValue!1251 (value!39822 List!6132)) (IdentValue!1251 (value!39823 List!6132)) (DelimiterValue!2503 (value!39824 List!6132)) (DedentValue!1251 (value!39825 List!6132)) (NewLineValue!1251 (value!39826 List!6132)) (IntegerValue!3753 (value!39827 (_ BitVec 32)) (text!9204 List!6132)) (IntegerValue!3754 (value!39828 Int) (text!9205 List!6132)) (Times!1251) (Or!1251) (Equal!1251) (Minus!1251) (Broken!6259 (value!39829 List!6132)) (And!1251) (Div!1251) (LessEqual!1251) (Mod!1251) (Concat!2813) (Not!1251) (Plus!1251) (SpaceValue!1251 (value!39830 List!6132)) (IntegerValue!3755 (value!39831 Int) (text!9206 List!6132)) (StringLiteralValue!3754 (text!9207 List!6132)) (FloatLiteralValue!2503 (text!9208 List!6132)) (BytesLiteralValue!1251 (value!39832 List!6132)) (CommentValue!2503 (value!39833 List!6132)) (StringLiteralValue!3755 (value!39834 List!6132)) (ErrorTokenValue!1251 (msg!1312 List!6132)) )
))
(declare-datatypes ((String!7999 0))(
  ( (String!8000 (value!39835 String)) )
))
(declare-datatypes ((IArray!3889 0))(
  ( (IArray!3890 (innerList!2002 List!6131)) )
))
(declare-datatypes ((Conc!1944 0))(
  ( (Node!1944 (left!4902 Conc!1944) (right!5232 Conc!1944) (csize!4118 Int) (cheight!2155 Int)) (Leaf!3065 (xs!4581 IArray!3889) (csize!4119 Int)) (Empty!1944) )
))
(declare-datatypes ((BalanceConc!3896 0))(
  ( (BalanceConc!3897 (c!113348 Conc!1944)) )
))
(declare-datatypes ((TokenValueInjection!2270 0))(
  ( (TokenValueInjection!2271 (toValue!2138 Int) (toChars!1997 Int)) )
))
(declare-datatypes ((Rule!2254 0))(
  ( (Rule!2255 (regex!1227 Regex!1561) (tag!1489 String!7999) (isSeparator!1227 Bool) (transformation!1227 TokenValueInjection!2270)) )
))
(declare-datatypes ((Token!2190 0))(
  ( (Token!2191 (value!39836 TokenValue!1251) (rule!2019 Rule!2254) (size!4815 Int) (originalCharacters!1266 List!6131)) )
))
(declare-fun token!491 () Token!2190)

(declare-fun lt!262535 () BalanceConc!3896)

(declare-fun lemmaSemiInverse!257 (TokenValueInjection!2270 BalanceConc!3896) Unit!11217)

(assert (=> b!612985 (= lt!262546 (lemmaSemiInverse!257 (transformation!1227 (rule!2019 token!491)) lt!262535))))

(declare-fun lt!262548 () Unit!11217)

(declare-datatypes ((tuple2!6990 0))(
  ( (tuple2!6991 (_1!3759 Token!2190) (_2!3759 List!6131)) )
))
(declare-datatypes ((Option!1578 0))(
  ( (None!1577) (Some!1577 (v!16488 tuple2!6990)) )
))
(declare-fun lt!262530 () Option!1578)

(declare-fun lt!262508 () BalanceConc!3896)

(assert (=> b!612985 (= lt!262548 (lemmaSemiInverse!257 (transformation!1227 (rule!2019 (_1!3759 (v!16488 lt!262530)))) lt!262508))))

(declare-fun lt!262519 () Unit!11217)

(declare-fun e!371508 () Unit!11217)

(assert (=> b!612985 (= lt!262519 e!371508)))

(declare-fun c!113344 () Bool)

(assert (=> b!612985 (= c!113344 (< lt!262518 lt!262537))))

(declare-fun e!371513 () Bool)

(assert (=> b!612985 e!371513))

(declare-fun res!266433 () Bool)

(assert (=> b!612985 (=> (not res!266433) (not e!371513))))

(declare-datatypes ((LexerInterface!1113 0))(
  ( (LexerInterfaceExt!1110 (__x!4401 Int)) (Lexer!1111) )
))
(declare-fun thiss!22590 () LexerInterface!1113)

(declare-fun lt!262515 () List!6131)

(declare-fun lt!262539 () TokenValue!1251)

(declare-fun suffix!1342 () List!6131)

(declare-fun maxPrefixOneRule!474 (LexerInterface!1113 Rule!2254 List!6131) Option!1578)

(assert (=> b!612985 (= res!266433 (= (maxPrefixOneRule!474 thiss!22590 (rule!2019 token!491) lt!262515) (Some!1577 (tuple2!6991 (Token!2191 lt!262539 (rule!2019 token!491) lt!262537 lt!262512) suffix!1342))))))

(declare-datatypes ((List!6133 0))(
  ( (Nil!6123) (Cons!6123 (h!11524 Rule!2254) (t!81252 List!6133)) )
))
(declare-fun rules!3103 () List!6133)

(declare-fun lt!262527 () Unit!11217)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!180 (LexerInterface!1113 List!6133 List!6131 List!6131 List!6131 Rule!2254) Unit!11217)

(assert (=> b!612985 (= lt!262527 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!180 thiss!22590 rules!3103 lt!262512 lt!262515 suffix!1342 (rule!2019 token!491)))))

(declare-fun lt!262510 () TokenValue!1251)

(declare-fun lt!262520 () List!6131)

(assert (=> b!612985 (= (maxPrefixOneRule!474 thiss!22590 (rule!2019 (_1!3759 (v!16488 lt!262530))) input!2705) (Some!1577 (tuple2!6991 (Token!2191 lt!262510 (rule!2019 (_1!3759 (v!16488 lt!262530))) lt!262518 lt!262520) (_2!3759 (v!16488 lt!262530)))))))

(declare-fun lt!262517 () Unit!11217)

(assert (=> b!612985 (= lt!262517 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!180 thiss!22590 rules!3103 lt!262520 input!2705 (_2!3759 (v!16488 lt!262530)) (rule!2019 (_1!3759 (v!16488 lt!262530)))))))

(declare-fun e!371496 () Bool)

(assert (=> b!612985 e!371496))

(declare-fun res!266414 () Bool)

(assert (=> b!612985 (=> (not res!266414) (not e!371496))))

(assert (=> b!612985 (= res!266414 (= (value!39836 token!491) lt!262539))))

(declare-fun apply!1480 (TokenValueInjection!2270 BalanceConc!3896) TokenValue!1251)

(assert (=> b!612985 (= lt!262539 (apply!1480 (transformation!1227 (rule!2019 token!491)) lt!262535))))

(declare-fun seqFromList!1403 (List!6131) BalanceConc!3896)

(assert (=> b!612985 (= lt!262535 (seqFromList!1403 lt!262512))))

(declare-fun lt!262545 () List!6131)

(assert (=> b!612985 (= suffix!1342 lt!262545)))

(declare-fun lt!262549 () Unit!11217)

(declare-fun lemmaSamePrefixThenSameSuffix!568 (List!6131 List!6131 List!6131 List!6131 List!6131) Unit!11217)

(assert (=> b!612985 (= lt!262549 (lemmaSamePrefixThenSameSuffix!568 lt!262512 suffix!1342 lt!262512 lt!262545 lt!262515))))

(declare-fun getSuffix!372 (List!6131 List!6131) List!6131)

(assert (=> b!612985 (= lt!262545 (getSuffix!372 lt!262515 lt!262512))))

(declare-fun b!612986 () Bool)

(declare-fun e!371500 () Unit!11217)

(declare-fun Unit!11220 () Unit!11217)

(assert (=> b!612986 (= e!371500 Unit!11220)))

(assert (=> b!612986 false))

(declare-fun b!612987 () Bool)

(declare-fun e!371512 () Unit!11217)

(declare-fun Unit!11221 () Unit!11217)

(assert (=> b!612987 (= e!371512 Unit!11221)))

(declare-fun lt!262533 () Unit!11217)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!30 (LexerInterface!1113 List!6133 Rule!2254 List!6131 List!6131 Rule!2254) Unit!11217)

(assert (=> b!612987 (= lt!262533 (lemmaMaxPrefNoSmallerRuleMatches!30 thiss!22590 rules!3103 (rule!2019 token!491) input!2705 lt!262515 (rule!2019 (_1!3759 (v!16488 lt!262530)))))))

(declare-fun res!266436 () Bool)

(declare-fun matchR!664 (Regex!1561 List!6131) Bool)

(assert (=> b!612987 (= res!266436 (not (matchR!664 (regex!1227 (rule!2019 (_1!3759 (v!16488 lt!262530)))) input!2705)))))

(declare-fun e!371504 () Bool)

(assert (=> b!612987 (=> (not res!266436) (not e!371504))))

(assert (=> b!612987 e!371504))

(declare-fun b!612988 () Bool)

(declare-fun res!266427 () Bool)

(declare-fun e!371520 () Bool)

(assert (=> b!612988 (=> (not res!266427) (not e!371520))))

(declare-fun rulesInvariant!1076 (LexerInterface!1113 List!6133) Bool)

(assert (=> b!612988 (= res!266427 (rulesInvariant!1076 thiss!22590 rules!3103))))

(declare-fun b!612989 () Bool)

(declare-fun e!371501 () Bool)

(declare-fun tp_is_empty!3477 () Bool)

(declare-fun tp!189518 () Bool)

(assert (=> b!612989 (= e!371501 (and tp_is_empty!3477 tp!189518))))

(declare-fun b!612990 () Bool)

(declare-fun Unit!11222 () Unit!11217)

(assert (=> b!612990 (= e!371508 Unit!11222)))

(declare-fun b!612991 () Bool)

(declare-fun e!371498 () Bool)

(assert (=> b!612991 (= e!371498 true)))

(declare-fun lt!262529 () Bool)

(assert (=> b!612991 (= lt!262529 (matchR!664 (regex!1227 (rule!2019 (_1!3759 (v!16488 lt!262530)))) input!2705))))

(declare-fun b!612992 () Bool)

(declare-fun e!371516 () Bool)

(declare-fun e!371521 () Bool)

(assert (=> b!612992 (= e!371516 e!371521)))

(declare-fun res!266410 () Bool)

(assert (=> b!612992 (=> (not res!266410) (not e!371521))))

(declare-fun isDefined!1389 (Option!1578) Bool)

(assert (=> b!612992 (= res!266410 (isDefined!1389 lt!262530))))

(declare-fun b!612993 () Bool)

(declare-fun res!266425 () Bool)

(assert (=> b!612993 (=> res!266425 e!371519)))

(assert (=> b!612993 (= res!266425 (or (not (= lt!262520 lt!262512)) (not (= (originalCharacters!1266 (_1!3759 (v!16488 lt!262530))) (originalCharacters!1266 token!491)))))))

(declare-fun b!612994 () Bool)

(declare-fun res!266413 () Bool)

(assert (=> b!612994 (=> (not res!266413) (not e!371521))))

(declare-fun get!2355 (Option!1578) tuple2!6990)

(assert (=> b!612994 (= res!266413 (= (_1!3759 (get!2355 lt!262530)) (_1!3759 (v!16488 lt!262530))))))

(declare-fun b!612995 () Bool)

(declare-fun Unit!11223 () Unit!11217)

(assert (=> b!612995 (= e!371500 Unit!11223)))

(declare-fun e!371494 () Bool)

(assert (=> b!612996 (= e!371494 (and tp!189514 tp!189517))))

(declare-fun b!612997 () Bool)

(declare-fun e!371495 () Bool)

(declare-fun e!371523 () Bool)

(assert (=> b!612997 (= e!371495 e!371523)))

(declare-fun res!266412 () Bool)

(assert (=> b!612997 (=> (not res!266412) (not e!371523))))

(declare-fun lt!262544 () tuple2!6990)

(assert (=> b!612997 (= res!266412 (and (= (_1!3759 lt!262544) token!491) (= (_2!3759 lt!262544) suffix!1342)))))

(declare-fun lt!262521 () Option!1578)

(assert (=> b!612997 (= lt!262544 (get!2355 lt!262521))))

(declare-fun b!612998 () Bool)

(declare-fun e!371510 () Bool)

(assert (=> b!612998 (= e!371523 e!371510)))

(declare-fun res!266428 () Bool)

(assert (=> b!612998 (=> (not res!266428) (not e!371510))))

(get-info :version)

(assert (=> b!612998 (= res!266428 ((_ is Some!1577) lt!262530))))

(declare-fun maxPrefix!811 (LexerInterface!1113 List!6133 List!6131) Option!1578)

(assert (=> b!612998 (= lt!262530 (maxPrefix!811 thiss!22590 rules!3103 input!2705))))

(declare-fun b!612999 () Bool)

(declare-fun Unit!11224 () Unit!11217)

(assert (=> b!612999 (= e!371512 Unit!11224)))

(declare-fun b!613000 () Bool)

(declare-fun e!371511 () Bool)

(assert (=> b!613000 (= e!371511 false)))

(declare-fun b!613001 () Bool)

(declare-fun e!371522 () Bool)

(declare-fun e!371503 () Bool)

(declare-fun tp!189521 () Bool)

(assert (=> b!613001 (= e!371522 (and e!371503 tp!189521))))

(declare-fun b!613002 () Bool)

(declare-fun res!266432 () Bool)

(assert (=> b!613002 (=> res!266432 e!371519)))

(declare-fun contains!1445 (List!6133 Rule!2254) Bool)

(assert (=> b!613002 (= res!266432 (not (contains!1445 rules!3103 (rule!2019 token!491))))))

(declare-fun e!371507 () Bool)

(declare-fun b!613003 () Bool)

(declare-fun tp!189520 () Bool)

(declare-fun e!371515 () Bool)

(declare-fun inv!21 (TokenValue!1251) Bool)

(assert (=> b!613003 (= e!371507 (and (inv!21 (value!39836 token!491)) e!371515 tp!189520))))

(declare-fun b!613004 () Bool)

(declare-fun e!371518 () Bool)

(assert (=> b!613004 (= e!371510 e!371518)))

(declare-fun res!266419 () Bool)

(assert (=> b!613004 (=> (not res!266419) (not e!371518))))

(declare-fun lt!262543 () List!6131)

(assert (=> b!613004 (= res!266419 (= lt!262543 lt!262515))))

(declare-fun ++!1715 (List!6131 List!6131) List!6131)

(assert (=> b!613004 (= lt!262543 (++!1715 lt!262512 suffix!1342))))

(declare-fun b!613005 () Bool)

(declare-fun res!266431 () Bool)

(assert (=> b!613005 (=> res!266431 e!371519)))

(assert (=> b!613005 (= res!266431 (= (rule!2019 (_1!3759 (v!16488 lt!262530))) (rule!2019 token!491)))))

(declare-fun b!613006 () Bool)

(declare-fun res!266421 () Bool)

(declare-fun e!371499 () Bool)

(assert (=> b!613006 (=> (not res!266421) (not e!371499))))

(declare-fun size!4816 (List!6131) Int)

(assert (=> b!613006 (= res!266421 (= (size!4815 (_1!3759 (v!16488 lt!262530))) (size!4816 (originalCharacters!1266 (_1!3759 (v!16488 lt!262530))))))))

(declare-fun b!613007 () Bool)

(declare-fun res!266423 () Bool)

(assert (=> b!613007 (=> (not res!266423) (not e!371520))))

(declare-fun isEmpty!4419 (List!6133) Bool)

(assert (=> b!613007 (= res!266423 (not (isEmpty!4419 rules!3103)))))

(declare-fun b!613008 () Bool)

(declare-fun lt!262523 () tuple2!6990)

(declare-fun lt!262514 () List!6131)

(assert (=> b!613008 (= e!371499 (and (= (size!4815 (_1!3759 (v!16488 lt!262530))) lt!262518) (= (originalCharacters!1266 (_1!3759 (v!16488 lt!262530))) lt!262520) (= lt!262523 (tuple2!6991 (Token!2191 lt!262510 (rule!2019 (_1!3759 (v!16488 lt!262530))) lt!262518 lt!262520) lt!262514))))))

(declare-fun b!613009 () Bool)

(assert (=> b!613009 (= e!371496 (and (= (size!4815 token!491) lt!262537) (= (originalCharacters!1266 token!491) lt!262512) (= (tuple2!6991 token!491 suffix!1342) (tuple2!6991 (Token!2191 lt!262539 (rule!2019 token!491) lt!262537 lt!262512) lt!262545))))))

(declare-fun b!613010 () Bool)

(declare-fun Unit!11225 () Unit!11217)

(assert (=> b!613010 (= e!371508 Unit!11225)))

(declare-fun lt!262538 () Unit!11217)

(assert (=> b!613010 (= lt!262538 (lemmaSemiInverse!257 (transformation!1227 (rule!2019 (_1!3759 (v!16488 lt!262530)))) lt!262508))))

(declare-fun lt!262528 () Unit!11217)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!80 (LexerInterface!1113 List!6133 Rule!2254 List!6131 List!6131 List!6131 Rule!2254) Unit!11217)

(assert (=> b!613010 (= lt!262528 (lemmaMaxPrefixOutputsMaxPrefix!80 thiss!22590 rules!3103 (rule!2019 (_1!3759 (v!16488 lt!262530))) lt!262520 input!2705 input!2705 (rule!2019 token!491)))))

(declare-fun res!266416 () Bool)

(assert (=> b!613010 (= res!266416 (not (matchR!664 (regex!1227 (rule!2019 token!491)) input!2705)))))

(assert (=> b!613010 (=> (not res!266416) (not e!371511))))

(assert (=> b!613010 e!371511))

(declare-fun b!613011 () Bool)

(declare-fun res!266418 () Bool)

(assert (=> b!613011 (=> (not res!266418) (not e!371496))))

(assert (=> b!613011 (= res!266418 (= (size!4815 token!491) (size!4816 (originalCharacters!1266 token!491))))))

(declare-fun b!613012 () Bool)

(assert (=> b!613012 (= e!371513 e!371516)))

(declare-fun res!266420 () Bool)

(assert (=> b!613012 (=> res!266420 e!371516)))

(assert (=> b!613012 (= res!266420 (>= lt!262518 lt!262537))))

(declare-fun b!613013 () Bool)

(declare-fun e!371497 () Bool)

(assert (=> b!613013 (= e!371497 e!371495)))

(declare-fun res!266435 () Bool)

(assert (=> b!613013 (=> (not res!266435) (not e!371495))))

(assert (=> b!613013 (= res!266435 (isDefined!1389 lt!262521))))

(assert (=> b!613013 (= lt!262521 (maxPrefix!811 thiss!22590 rules!3103 lt!262515))))

(assert (=> b!613013 (= lt!262515 (++!1715 input!2705 suffix!1342))))

(declare-fun b!613014 () Bool)

(declare-fun res!266415 () Bool)

(assert (=> b!613014 (=> res!266415 e!371519)))

(declare-fun isEmpty!4420 (List!6131) Bool)

(assert (=> b!613014 (= res!266415 (not (isEmpty!4420 (_2!3759 (v!16488 lt!262530)))))))

(declare-fun b!613015 () Bool)

(declare-fun e!371517 () Bool)

(declare-fun tp!189515 () Bool)

(assert (=> b!613015 (= e!371517 (and tp_is_empty!3477 tp!189515))))

(declare-fun res!266430 () Bool)

(assert (=> start!58684 (=> (not res!266430) (not e!371520))))

(assert (=> start!58684 (= res!266430 ((_ is Lexer!1111) thiss!22590))))

(assert (=> start!58684 e!371520))

(assert (=> start!58684 e!371501))

(assert (=> start!58684 e!371522))

(declare-fun inv!7795 (Token!2190) Bool)

(assert (=> start!58684 (and (inv!7795 token!491) e!371507)))

(assert (=> start!58684 true))

(assert (=> start!58684 e!371517))

(declare-fun b!613016 () Bool)

(declare-fun res!266426 () Bool)

(assert (=> b!613016 (=> (not res!266426) (not e!371520))))

(assert (=> b!613016 (= res!266426 (not (isEmpty!4420 input!2705)))))

(declare-fun b!613017 () Bool)

(assert (=> b!613017 (= e!371519 e!371498)))

(declare-fun res!266422 () Bool)

(assert (=> b!613017 (=> res!266422 e!371498)))

(declare-fun lt!262541 () Int)

(declare-fun lt!262526 () Int)

(assert (=> b!613017 (= res!266422 (<= lt!262541 lt!262526))))

(declare-fun lt!262542 () Unit!11217)

(assert (=> b!613017 (= lt!262542 e!371512)))

(declare-fun c!113346 () Bool)

(assert (=> b!613017 (= c!113346 (< lt!262541 lt!262526))))

(declare-fun getIndex!58 (List!6133 Rule!2254) Int)

(assert (=> b!613017 (= lt!262526 (getIndex!58 rules!3103 (rule!2019 token!491)))))

(assert (=> b!613017 (= lt!262541 (getIndex!58 rules!3103 (rule!2019 (_1!3759 (v!16488 lt!262530)))))))

(declare-fun b!613018 () Bool)

(assert (=> b!613018 (= e!371504 false)))

(declare-fun b!613019 () Bool)

(declare-fun e!371514 () Bool)

(declare-fun tp!189516 () Bool)

(declare-fun inv!7792 (String!7999) Bool)

(declare-fun inv!7796 (TokenValueInjection!2270) Bool)

(assert (=> b!613019 (= e!371515 (and tp!189516 (inv!7792 (tag!1489 (rule!2019 token!491))) (inv!7796 (transformation!1227 (rule!2019 token!491))) e!371514))))

(declare-fun b!613020 () Bool)

(assert (=> b!613020 (= e!371520 e!371497)))

(declare-fun res!266434 () Bool)

(assert (=> b!613020 (=> (not res!266434) (not e!371497))))

(assert (=> b!613020 (= res!266434 (= lt!262512 input!2705))))

(declare-fun list!2578 (BalanceConc!3896) List!6131)

(declare-fun charsOf!856 (Token!2190) BalanceConc!3896)

(assert (=> b!613020 (= lt!262512 (list!2578 (charsOf!856 token!491)))))

(declare-fun b!613021 () Bool)

(assert (=> b!613021 (= e!371518 (not e!371509))))

(declare-fun res!266417 () Bool)

(assert (=> b!613021 (=> res!266417 e!371509)))

(declare-fun isPrefix!855 (List!6131 List!6131) Bool)

(assert (=> b!613021 (= res!266417 (not (isPrefix!855 input!2705 lt!262543)))))

(assert (=> b!613021 (isPrefix!855 lt!262512 lt!262543)))

(declare-fun lt!262513 () Unit!11217)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!700 (List!6131 List!6131) Unit!11217)

(assert (=> b!613021 (= lt!262513 (lemmaConcatTwoListThenFirstIsPrefix!700 lt!262512 suffix!1342))))

(assert (=> b!613021 (isPrefix!855 input!2705 lt!262515)))

(declare-fun lt!262525 () Unit!11217)

(assert (=> b!613021 (= lt!262525 (lemmaConcatTwoListThenFirstIsPrefix!700 input!2705 suffix!1342))))

(assert (=> b!613021 e!371499))

(declare-fun res!266411 () Bool)

(assert (=> b!613021 (=> (not res!266411) (not e!371499))))

(assert (=> b!613021 (= res!266411 (= (value!39836 (_1!3759 (v!16488 lt!262530))) lt!262510))))

(assert (=> b!613021 (= lt!262510 (apply!1480 (transformation!1227 (rule!2019 (_1!3759 (v!16488 lt!262530)))) lt!262508))))

(assert (=> b!613021 (= lt!262508 (seqFromList!1403 lt!262520))))

(declare-fun lt!262540 () Unit!11217)

(declare-fun lemmaInv!335 (TokenValueInjection!2270) Unit!11217)

(assert (=> b!613021 (= lt!262540 (lemmaInv!335 (transformation!1227 (rule!2019 token!491))))))

(declare-fun lt!262547 () Unit!11217)

(assert (=> b!613021 (= lt!262547 (lemmaInv!335 (transformation!1227 (rule!2019 (_1!3759 (v!16488 lt!262530))))))))

(declare-fun ruleValid!425 (LexerInterface!1113 Rule!2254) Bool)

(assert (=> b!613021 (ruleValid!425 thiss!22590 (rule!2019 token!491))))

(declare-fun lt!262532 () Unit!11217)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!272 (LexerInterface!1113 Rule!2254 List!6133) Unit!11217)

(assert (=> b!613021 (= lt!262532 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!272 thiss!22590 (rule!2019 token!491) rules!3103))))

(assert (=> b!613021 (ruleValid!425 thiss!22590 (rule!2019 (_1!3759 (v!16488 lt!262530))))))

(declare-fun lt!262524 () Unit!11217)

(assert (=> b!613021 (= lt!262524 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!272 thiss!22590 (rule!2019 (_1!3759 (v!16488 lt!262530))) rules!3103))))

(assert (=> b!613021 (isPrefix!855 input!2705 input!2705)))

(declare-fun lt!262522 () Unit!11217)

(declare-fun lemmaIsPrefixRefl!591 (List!6131 List!6131) Unit!11217)

(assert (=> b!613021 (= lt!262522 (lemmaIsPrefixRefl!591 input!2705 input!2705))))

(assert (=> b!613021 (= (_2!3759 (v!16488 lt!262530)) lt!262514)))

(declare-fun lt!262511 () Unit!11217)

(assert (=> b!613021 (= lt!262511 (lemmaSamePrefixThenSameSuffix!568 lt!262520 (_2!3759 (v!16488 lt!262530)) lt!262520 lt!262514 input!2705))))

(assert (=> b!613021 (= lt!262514 (getSuffix!372 input!2705 lt!262520))))

(assert (=> b!613021 (isPrefix!855 lt!262520 lt!262536)))

(assert (=> b!613021 (= lt!262536 (++!1715 lt!262520 (_2!3759 (v!16488 lt!262530))))))

(declare-fun lt!262509 () Unit!11217)

(assert (=> b!613021 (= lt!262509 (lemmaConcatTwoListThenFirstIsPrefix!700 lt!262520 (_2!3759 (v!16488 lt!262530))))))

(declare-fun lt!262534 () Unit!11217)

(declare-fun lemmaCharactersSize!286 (Token!2190) Unit!11217)

(assert (=> b!613021 (= lt!262534 (lemmaCharactersSize!286 token!491))))

(declare-fun lt!262531 () Unit!11217)

(assert (=> b!613021 (= lt!262531 (lemmaCharactersSize!286 (_1!3759 (v!16488 lt!262530))))))

(declare-fun lt!262550 () Unit!11217)

(assert (=> b!613021 (= lt!262550 e!371500)))

(declare-fun c!113345 () Bool)

(assert (=> b!613021 (= c!113345 (> lt!262518 lt!262537))))

(assert (=> b!613021 (= lt!262537 (size!4816 lt!262512))))

(assert (=> b!613021 (= lt!262518 (size!4816 lt!262520))))

(assert (=> b!613021 (= lt!262520 (list!2578 (charsOf!856 (_1!3759 (v!16488 lt!262530)))))))

(assert (=> b!613021 (= lt!262530 (Some!1577 lt!262523))))

(assert (=> b!613021 (= lt!262523 (tuple2!6991 (_1!3759 (v!16488 lt!262530)) (_2!3759 (v!16488 lt!262530))))))

(declare-fun lt!262516 () Unit!11217)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!300 (List!6131 List!6131 List!6131 List!6131) Unit!11217)

(assert (=> b!613021 (= lt!262516 (lemmaConcatSameAndSameSizesThenSameLists!300 lt!262512 suffix!1342 input!2705 suffix!1342))))

(assert (=> b!613022 (= e!371514 (and tp!189522 tp!189513))))

(declare-fun b!613023 () Bool)

(declare-fun res!266424 () Bool)

(assert (=> b!613023 (=> res!266424 e!371519)))

(assert (=> b!613023 (= res!266424 (not (contains!1445 rules!3103 (rule!2019 (_1!3759 (v!16488 lt!262530))))))))

(declare-fun b!613024 () Bool)

(assert (=> b!613024 (= e!371521 (= lt!262514 (_2!3759 (v!16488 lt!262530))))))

(declare-fun b!613025 () Bool)

(declare-fun tp!189519 () Bool)

(assert (=> b!613025 (= e!371503 (and tp!189519 (inv!7792 (tag!1489 (h!11524 rules!3103))) (inv!7796 (transformation!1227 (h!11524 rules!3103))) e!371494))))

(assert (= (and start!58684 res!266430) b!613007))

(assert (= (and b!613007 res!266423) b!612988))

(assert (= (and b!612988 res!266427) b!613016))

(assert (= (and b!613016 res!266426) b!613020))

(assert (= (and b!613020 res!266434) b!613013))

(assert (= (and b!613013 res!266435) b!612997))

(assert (= (and b!612997 res!266412) b!612998))

(assert (= (and b!612998 res!266428) b!613004))

(assert (= (and b!613004 res!266419) b!613021))

(assert (= (and b!613021 c!113345) b!612986))

(assert (= (and b!613021 (not c!113345)) b!612995))

(assert (= (and b!613021 res!266411) b!613006))

(assert (= (and b!613006 res!266421) b!613008))

(assert (= (and b!613021 (not res!266417)) b!612985))

(assert (= (and b!612985 res!266414) b!613011))

(assert (= (and b!613011 res!266418) b!613009))

(assert (= (and b!612985 res!266433) b!613012))

(assert (= (and b!613012 (not res!266420)) b!612992))

(assert (= (and b!612992 res!266410) b!612994))

(assert (= (and b!612994 res!266413) b!613024))

(assert (= (and b!612985 c!113344) b!613010))

(assert (= (and b!612985 (not c!113344)) b!612990))

(assert (= (and b!613010 res!266416) b!613000))

(assert (= (and b!612985 (not res!266429)) b!613014))

(assert (= (and b!613014 (not res!266415)) b!612993))

(assert (= (and b!612993 (not res!266425)) b!613023))

(assert (= (and b!613023 (not res!266424)) b!613002))

(assert (= (and b!613002 (not res!266432)) b!613005))

(assert (= (and b!613005 (not res!266431)) b!613017))

(assert (= (and b!613017 c!113346) b!612987))

(assert (= (and b!613017 (not c!113346)) b!612999))

(assert (= (and b!612987 res!266436) b!613018))

(assert (= (and b!613017 (not res!266422)) b!612991))

(assert (= (and start!58684 ((_ is Cons!6121) suffix!1342)) b!612989))

(assert (= b!613025 b!612996))

(assert (= b!613001 b!613025))

(assert (= (and start!58684 ((_ is Cons!6123) rules!3103)) b!613001))

(assert (= b!613019 b!613022))

(assert (= b!613003 b!613019))

(assert (= start!58684 b!613003))

(assert (= (and start!58684 ((_ is Cons!6121) input!2705)) b!613015))

(declare-fun m!881527 () Bool)

(assert (=> b!613025 m!881527))

(declare-fun m!881529 () Bool)

(assert (=> b!613025 m!881529))

(declare-fun m!881531 () Bool)

(assert (=> b!613020 m!881531))

(assert (=> b!613020 m!881531))

(declare-fun m!881533 () Bool)

(assert (=> b!613020 m!881533))

(declare-fun m!881535 () Bool)

(assert (=> b!613016 m!881535))

(declare-fun m!881537 () Bool)

(assert (=> b!613013 m!881537))

(declare-fun m!881539 () Bool)

(assert (=> b!613013 m!881539))

(declare-fun m!881541 () Bool)

(assert (=> b!613013 m!881541))

(declare-fun m!881543 () Bool)

(assert (=> b!613011 m!881543))

(declare-fun m!881545 () Bool)

(assert (=> b!613004 m!881545))

(declare-fun m!881547 () Bool)

(assert (=> b!613007 m!881547))

(declare-fun m!881549 () Bool)

(assert (=> b!613014 m!881549))

(declare-fun m!881551 () Bool)

(assert (=> b!613006 m!881551))

(declare-fun m!881553 () Bool)

(assert (=> b!612987 m!881553))

(declare-fun m!881555 () Bool)

(assert (=> b!612987 m!881555))

(declare-fun m!881557 () Bool)

(assert (=> start!58684 m!881557))

(declare-fun m!881559 () Bool)

(assert (=> b!613019 m!881559))

(declare-fun m!881561 () Bool)

(assert (=> b!613019 m!881561))

(declare-fun m!881563 () Bool)

(assert (=> b!612985 m!881563))

(declare-fun m!881565 () Bool)

(assert (=> b!612985 m!881565))

(declare-fun m!881567 () Bool)

(assert (=> b!612985 m!881567))

(declare-fun m!881569 () Bool)

(assert (=> b!612985 m!881569))

(declare-fun m!881571 () Bool)

(assert (=> b!612985 m!881571))

(declare-fun m!881573 () Bool)

(assert (=> b!612985 m!881573))

(declare-fun m!881575 () Bool)

(assert (=> b!612985 m!881575))

(declare-fun m!881577 () Bool)

(assert (=> b!612985 m!881577))

(declare-fun m!881579 () Bool)

(assert (=> b!612985 m!881579))

(declare-fun m!881581 () Bool)

(assert (=> b!612985 m!881581))

(assert (=> b!612991 m!881555))

(declare-fun m!881583 () Bool)

(assert (=> b!613002 m!881583))

(declare-fun m!881585 () Bool)

(assert (=> b!613017 m!881585))

(declare-fun m!881587 () Bool)

(assert (=> b!613017 m!881587))

(declare-fun m!881589 () Bool)

(assert (=> b!612998 m!881589))

(declare-fun m!881591 () Bool)

(assert (=> b!613023 m!881591))

(declare-fun m!881593 () Bool)

(assert (=> b!613021 m!881593))

(declare-fun m!881595 () Bool)

(assert (=> b!613021 m!881595))

(declare-fun m!881597 () Bool)

(assert (=> b!613021 m!881597))

(declare-fun m!881599 () Bool)

(assert (=> b!613021 m!881599))

(declare-fun m!881601 () Bool)

(assert (=> b!613021 m!881601))

(declare-fun m!881603 () Bool)

(assert (=> b!613021 m!881603))

(declare-fun m!881605 () Bool)

(assert (=> b!613021 m!881605))

(declare-fun m!881607 () Bool)

(assert (=> b!613021 m!881607))

(assert (=> b!613021 m!881605))

(declare-fun m!881609 () Bool)

(assert (=> b!613021 m!881609))

(declare-fun m!881611 () Bool)

(assert (=> b!613021 m!881611))

(declare-fun m!881613 () Bool)

(assert (=> b!613021 m!881613))

(declare-fun m!881615 () Bool)

(assert (=> b!613021 m!881615))

(declare-fun m!881617 () Bool)

(assert (=> b!613021 m!881617))

(declare-fun m!881619 () Bool)

(assert (=> b!613021 m!881619))

(declare-fun m!881621 () Bool)

(assert (=> b!613021 m!881621))

(declare-fun m!881623 () Bool)

(assert (=> b!613021 m!881623))

(declare-fun m!881625 () Bool)

(assert (=> b!613021 m!881625))

(declare-fun m!881627 () Bool)

(assert (=> b!613021 m!881627))

(declare-fun m!881629 () Bool)

(assert (=> b!613021 m!881629))

(declare-fun m!881631 () Bool)

(assert (=> b!613021 m!881631))

(declare-fun m!881633 () Bool)

(assert (=> b!613021 m!881633))

(declare-fun m!881635 () Bool)

(assert (=> b!613021 m!881635))

(declare-fun m!881637 () Bool)

(assert (=> b!613021 m!881637))

(declare-fun m!881639 () Bool)

(assert (=> b!613021 m!881639))

(declare-fun m!881641 () Bool)

(assert (=> b!613021 m!881641))

(declare-fun m!881643 () Bool)

(assert (=> b!613021 m!881643))

(declare-fun m!881645 () Bool)

(assert (=> b!613021 m!881645))

(declare-fun m!881647 () Bool)

(assert (=> b!612988 m!881647))

(declare-fun m!881649 () Bool)

(assert (=> b!612997 m!881649))

(assert (=> b!613010 m!881569))

(declare-fun m!881651 () Bool)

(assert (=> b!613010 m!881651))

(declare-fun m!881653 () Bool)

(assert (=> b!613010 m!881653))

(declare-fun m!881655 () Bool)

(assert (=> b!612994 m!881655))

(declare-fun m!881657 () Bool)

(assert (=> b!613003 m!881657))

(declare-fun m!881659 () Bool)

(assert (=> b!612992 m!881659))

(check-sat (not b!613020) (not b!613002) tp_is_empty!3477 (not b_next!17469) (not b!613003) (not b!613007) (not b!613016) b_and!60831 (not b!613023) (not start!58684) (not b!612997) (not b!613015) (not b!613010) (not b!613021) (not b!612988) b_and!60835 (not b!613013) b_and!60833 b_and!60837 (not b!612998) (not b!613014) (not b!612989) (not b!612994) (not b!613025) (not b_next!17471) (not b!612992) (not b!612991) (not b!613017) (not b!613019) (not b!613011) (not b!613006) (not b!612987) (not b_next!17475) (not b_next!17473) (not b!613001) (not b!613004) (not b!612985))
(check-sat b_and!60835 (not b_next!17469) b_and!60833 b_and!60837 (not b_next!17471) b_and!60831 (not b_next!17475) (not b_next!17473))
