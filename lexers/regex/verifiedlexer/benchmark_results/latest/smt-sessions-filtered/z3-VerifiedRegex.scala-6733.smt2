; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351930 () Bool)

(assert start!351930)

(declare-fun b!3748615 () Bool)

(declare-fun b_free!100121 () Bool)

(declare-fun b_next!100825 () Bool)

(assert (=> b!3748615 (= b_free!100121 (not b_next!100825))))

(declare-fun tp!1144097 () Bool)

(declare-fun b_and!278355 () Bool)

(assert (=> b!3748615 (= tp!1144097 b_and!278355)))

(declare-fun b_free!100123 () Bool)

(declare-fun b_next!100827 () Bool)

(assert (=> b!3748615 (= b_free!100123 (not b_next!100827))))

(declare-fun tp!1144102 () Bool)

(declare-fun b_and!278357 () Bool)

(assert (=> b!3748615 (= tp!1144102 b_and!278357)))

(declare-fun b!3748609 () Bool)

(declare-fun b_free!100125 () Bool)

(declare-fun b_next!100829 () Bool)

(assert (=> b!3748609 (= b_free!100125 (not b_next!100829))))

(declare-fun tp!1144098 () Bool)

(declare-fun b_and!278359 () Bool)

(assert (=> b!3748609 (= tp!1144098 b_and!278359)))

(declare-fun b_free!100127 () Bool)

(declare-fun b_next!100831 () Bool)

(assert (=> b!3748609 (= b_free!100127 (not b_next!100831))))

(declare-fun tp!1144099 () Bool)

(declare-fun b_and!278361 () Bool)

(assert (=> b!3748609 (= tp!1144099 b_and!278361)))

(declare-fun b!3748603 () Bool)

(declare-fun b_free!100129 () Bool)

(declare-fun b_next!100833 () Bool)

(assert (=> b!3748603 (= b_free!100129 (not b_next!100833))))

(declare-fun tp!1144096 () Bool)

(declare-fun b_and!278363 () Bool)

(assert (=> b!3748603 (= tp!1144096 b_and!278363)))

(declare-fun b_free!100131 () Bool)

(declare-fun b_next!100835 () Bool)

(assert (=> b!3748603 (= b_free!100131 (not b_next!100835))))

(declare-fun tp!1144092 () Bool)

(declare-fun b_and!278365 () Bool)

(assert (=> b!3748603 (= tp!1144092 b_and!278365)))

(declare-fun e!2318304 () Bool)

(declare-fun b!3748601 () Bool)

(declare-datatypes ((C!22196 0))(
  ( (C!22197 (val!13146 Int)) )
))
(declare-datatypes ((List!40037 0))(
  ( (Nil!39913) (Cons!39913 (h!45333 C!22196) (t!302720 List!40037)) )
))
(declare-datatypes ((IArray!24399 0))(
  ( (IArray!24400 (innerList!12257 List!40037)) )
))
(declare-datatypes ((Regex!11005 0))(
  ( (ElementMatch!11005 (c!649058 C!22196)) (Concat!17335 (regOne!22522 Regex!11005) (regTwo!22522 Regex!11005)) (EmptyExpr!11005) (Star!11005 (reg!11334 Regex!11005)) (EmptyLang!11005) (Union!11005 (regOne!22523 Regex!11005) (regTwo!22523 Regex!11005)) )
))
(declare-datatypes ((List!40038 0))(
  ( (Nil!39914) (Cons!39914 (h!45334 (_ BitVec 16)) (t!302721 List!40038)) )
))
(declare-datatypes ((TokenValue!6330 0))(
  ( (FloatLiteralValue!12660 (text!44755 List!40038)) (TokenValueExt!6329 (__x!24877 Int)) (Broken!31650 (value!194389 List!40038)) (Object!6453) (End!6330) (Def!6330) (Underscore!6330) (Match!6330) (Else!6330) (Error!6330) (Case!6330) (If!6330) (Extends!6330) (Abstract!6330) (Class!6330) (Val!6330) (DelimiterValue!12660 (del!6390 List!40038)) (KeywordValue!6336 (value!194390 List!40038)) (CommentValue!12660 (value!194391 List!40038)) (WhitespaceValue!12660 (value!194392 List!40038)) (IndentationValue!6330 (value!194393 List!40038)) (String!45275) (Int32!6330) (Broken!31651 (value!194394 List!40038)) (Boolean!6331) (Unit!57707) (OperatorValue!6333 (op!6390 List!40038)) (IdentifierValue!12660 (value!194395 List!40038)) (IdentifierValue!12661 (value!194396 List!40038)) (WhitespaceValue!12661 (value!194397 List!40038)) (True!12660) (False!12660) (Broken!31652 (value!194398 List!40038)) (Broken!31653 (value!194399 List!40038)) (True!12661) (RightBrace!6330) (RightBracket!6330) (Colon!6330) (Null!6330) (Comma!6330) (LeftBracket!6330) (False!12661) (LeftBrace!6330) (ImaginaryLiteralValue!6330 (text!44756 List!40038)) (StringLiteralValue!18990 (value!194400 List!40038)) (EOFValue!6330 (value!194401 List!40038)) (IdentValue!6330 (value!194402 List!40038)) (DelimiterValue!12661 (value!194403 List!40038)) (DedentValue!6330 (value!194404 List!40038)) (NewLineValue!6330 (value!194405 List!40038)) (IntegerValue!18990 (value!194406 (_ BitVec 32)) (text!44757 List!40038)) (IntegerValue!18991 (value!194407 Int) (text!44758 List!40038)) (Times!6330) (Or!6330) (Equal!6330) (Minus!6330) (Broken!31654 (value!194408 List!40038)) (And!6330) (Div!6330) (LessEqual!6330) (Mod!6330) (Concat!17336) (Not!6330) (Plus!6330) (SpaceValue!6330 (value!194409 List!40038)) (IntegerValue!18992 (value!194410 Int) (text!44759 List!40038)) (StringLiteralValue!18991 (text!44760 List!40038)) (FloatLiteralValue!12661 (text!44761 List!40038)) (BytesLiteralValue!6330 (value!194411 List!40038)) (CommentValue!12661 (value!194412 List!40038)) (StringLiteralValue!18992 (value!194413 List!40038)) (ErrorTokenValue!6330 (msg!6391 List!40038)) )
))
(declare-datatypes ((String!45276 0))(
  ( (String!45277 (value!194414 String)) )
))
(declare-datatypes ((Conc!12197 0))(
  ( (Node!12197 (left!30886 Conc!12197) (right!31216 Conc!12197) (csize!24624 Int) (cheight!12408 Int)) (Leaf!18931 (xs!15399 IArray!24399) (csize!24625 Int)) (Empty!12197) )
))
(declare-datatypes ((BalanceConc!24008 0))(
  ( (BalanceConc!24009 (c!649059 Conc!12197)) )
))
(declare-datatypes ((TokenValueInjection!12088 0))(
  ( (TokenValueInjection!12089 (toValue!8448 Int) (toChars!8307 Int)) )
))
(declare-datatypes ((Rule!12000 0))(
  ( (Rule!12001 (regex!6100 Regex!11005) (tag!6960 String!45276) (isSeparator!6100 Bool) (transformation!6100 TokenValueInjection!12088)) )
))
(declare-datatypes ((Token!11338 0))(
  ( (Token!11339 (value!194415 TokenValue!6330) (rule!8864 Rule!12000) (size!30061 Int) (originalCharacters!6700 List!40037)) )
))
(declare-datatypes ((List!40039 0))(
  ( (Nil!39915) (Cons!39915 (h!45335 Token!11338) (t!302722 List!40039)) )
))
(declare-fun tokens!606 () List!40039)

(declare-fun tp!1144094 () Bool)

(declare-fun e!2318308 () Bool)

(declare-fun inv!21 (TokenValue!6330) Bool)

(assert (=> b!3748601 (= e!2318304 (and (inv!21 (value!194415 (h!45335 tokens!606))) e!2318308 tp!1144094))))

(declare-fun b!3748602 () Bool)

(declare-fun res!1519458 () Bool)

(declare-fun e!2318303 () Bool)

(assert (=> b!3748602 (=> (not res!1519458) (not e!2318303))))

(declare-fun t!8579 () Token!11338)

(declare-fun contains!8152 (List!40039 Token!11338) Bool)

(assert (=> b!3748602 (= res!1519458 (contains!8152 tokens!606 t!8579))))

(declare-fun b!3748604 () Bool)

(declare-fun res!1519457 () Bool)

(assert (=> b!3748604 (=> (not res!1519457) (not e!2318303))))

(assert (=> b!3748604 (= res!1519457 (contains!8152 (t!302722 tokens!606) t!8579))))

(declare-fun b!3748605 () Bool)

(declare-fun res!1519456 () Bool)

(assert (=> b!3748605 (=> (not res!1519456) (not e!2318303))))

(declare-datatypes ((LexerInterface!5689 0))(
  ( (LexerInterfaceExt!5686 (__x!24878 Int)) (Lexer!5687) )
))
(declare-fun thiss!27232 () LexerInterface!5689)

(declare-datatypes ((List!40040 0))(
  ( (Nil!39916) (Cons!39916 (h!45336 Rule!12000) (t!302723 List!40040)) )
))
(declare-fun rules!4236 () List!40040)

(declare-fun rulesProduceEachTokenIndividuallyList!1917 (LexerInterface!5689 List!40040 List!40039) Bool)

(assert (=> b!3748605 (= res!1519456 (rulesProduceEachTokenIndividuallyList!1917 thiss!27232 rules!4236 (t!302722 tokens!606)))))

(declare-fun b!3748606 () Bool)

(declare-fun e!2318307 () Bool)

(declare-fun tp!1144091 () Bool)

(declare-fun inv!53413 (String!45276) Bool)

(declare-fun inv!53416 (TokenValueInjection!12088) Bool)

(assert (=> b!3748606 (= e!2318308 (and tp!1144091 (inv!53413 (tag!6960 (rule!8864 (h!45335 tokens!606)))) (inv!53416 (transformation!6100 (rule!8864 (h!45335 tokens!606)))) e!2318307))))

(declare-fun e!2318300 () Bool)

(declare-fun b!3748607 () Bool)

(declare-fun tp!1144093 () Bool)

(declare-fun inv!53417 (Token!11338) Bool)

(assert (=> b!3748607 (= e!2318300 (and (inv!53417 (h!45335 tokens!606)) e!2318304 tp!1144093))))

(declare-fun b!3748608 () Bool)

(declare-fun e!2318305 () Bool)

(declare-fun e!2318299 () Bool)

(declare-fun tp!1144090 () Bool)

(assert (=> b!3748608 (= e!2318299 (and tp!1144090 (inv!53413 (tag!6960 (h!45336 rules!4236))) (inv!53416 (transformation!6100 (h!45336 rules!4236))) e!2318305))))

(declare-fun e!2318310 () Bool)

(assert (=> b!3748609 (= e!2318310 (and tp!1144098 tp!1144099))))

(declare-fun b!3748610 () Bool)

(declare-fun res!1519461 () Bool)

(assert (=> b!3748610 (=> (not res!1519461) (not e!2318303))))

(declare-fun isEmpty!23522 (List!40040) Bool)

(assert (=> b!3748610 (= res!1519461 (not (isEmpty!23522 rules!4236)))))

(declare-fun b!3748611 () Bool)

(declare-fun res!1519459 () Bool)

(assert (=> b!3748611 (=> (not res!1519459) (not e!2318303))))

(declare-fun rulesInvariant!5086 (LexerInterface!5689 List!40040) Bool)

(assert (=> b!3748611 (= res!1519459 (rulesInvariant!5086 thiss!27232 rules!4236))))

(declare-fun b!3748612 () Bool)

(declare-fun res!1519455 () Bool)

(assert (=> b!3748612 (=> (not res!1519455) (not e!2318303))))

(assert (=> b!3748612 (= res!1519455 (rulesProduceEachTokenIndividuallyList!1917 thiss!27232 rules!4236 tokens!606))))

(declare-fun b!3748613 () Bool)

(declare-fun tp!1144095 () Bool)

(declare-fun e!2318298 () Bool)

(assert (=> b!3748613 (= e!2318298 (and tp!1144095 (inv!53413 (tag!6960 (rule!8864 t!8579))) (inv!53416 (transformation!6100 (rule!8864 t!8579))) e!2318310))))

(declare-fun b!3748614 () Bool)

(declare-fun res!1519460 () Bool)

(assert (=> b!3748614 (=> (not res!1519460) (not e!2318303))))

(get-info :version)

(assert (=> b!3748614 (= res!1519460 (and (or (not ((_ is Cons!39915) tokens!606)) (not (= (h!45335 tokens!606) t!8579))) ((_ is Cons!39915) tokens!606)))))

(assert (=> b!3748603 (= e!2318307 (and tp!1144096 tp!1144092))))

(declare-fun res!1519454 () Bool)

(assert (=> start!351930 (=> (not res!1519454) (not e!2318303))))

(assert (=> start!351930 (= res!1519454 ((_ is Lexer!5687) thiss!27232))))

(assert (=> start!351930 e!2318303))

(assert (=> start!351930 true))

(declare-fun e!2318306 () Bool)

(assert (=> start!351930 e!2318306))

(assert (=> start!351930 e!2318300))

(declare-fun e!2318295 () Bool)

(assert (=> start!351930 (and (inv!53417 t!8579) e!2318295)))

(assert (=> b!3748615 (= e!2318305 (and tp!1144097 tp!1144102))))

(declare-fun b!3748616 () Bool)

(declare-fun tp!1144100 () Bool)

(assert (=> b!3748616 (= e!2318306 (and e!2318299 tp!1144100))))

(declare-fun b!3748617 () Bool)

(declare-fun tp!1144101 () Bool)

(assert (=> b!3748617 (= e!2318295 (and (inv!21 (value!194415 t!8579)) e!2318298 tp!1144101))))

(declare-fun b!3748618 () Bool)

(assert (=> b!3748618 (= e!2318303 (not true))))

(declare-fun rulesProduceIndividualToken!2605 (LexerInterface!5689 List!40040 Token!11338) Bool)

(assert (=> b!3748618 (rulesProduceIndividualToken!2605 thiss!27232 rules!4236 t!8579)))

(declare-datatypes ((Unit!57708 0))(
  ( (Unit!57709) )
))
(declare-fun lt!1299688 () Unit!57708)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1102 (LexerInterface!5689 List!40040 List!40039 Token!11338) Unit!57708)

(assert (=> b!3748618 (= lt!1299688 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1102 thiss!27232 rules!4236 (t!302722 tokens!606) t!8579))))

(assert (= (and start!351930 res!1519454) b!3748610))

(assert (= (and b!3748610 res!1519461) b!3748611))

(assert (= (and b!3748611 res!1519459) b!3748602))

(assert (= (and b!3748602 res!1519458) b!3748612))

(assert (= (and b!3748612 res!1519455) b!3748614))

(assert (= (and b!3748614 res!1519460) b!3748604))

(assert (= (and b!3748604 res!1519457) b!3748605))

(assert (= (and b!3748605 res!1519456) b!3748618))

(assert (= b!3748608 b!3748615))

(assert (= b!3748616 b!3748608))

(assert (= (and start!351930 ((_ is Cons!39916) rules!4236)) b!3748616))

(assert (= b!3748606 b!3748603))

(assert (= b!3748601 b!3748606))

(assert (= b!3748607 b!3748601))

(assert (= (and start!351930 ((_ is Cons!39915) tokens!606)) b!3748607))

(assert (= b!3748613 b!3748609))

(assert (= b!3748617 b!3748613))

(assert (= start!351930 b!3748617))

(declare-fun m!4240305 () Bool)

(assert (=> b!3748617 m!4240305))

(declare-fun m!4240307 () Bool)

(assert (=> b!3748601 m!4240307))

(declare-fun m!4240309 () Bool)

(assert (=> b!3748606 m!4240309))

(declare-fun m!4240311 () Bool)

(assert (=> b!3748606 m!4240311))

(declare-fun m!4240313 () Bool)

(assert (=> b!3748618 m!4240313))

(declare-fun m!4240315 () Bool)

(assert (=> b!3748618 m!4240315))

(declare-fun m!4240317 () Bool)

(assert (=> b!3748608 m!4240317))

(declare-fun m!4240319 () Bool)

(assert (=> b!3748608 m!4240319))

(declare-fun m!4240321 () Bool)

(assert (=> b!3748613 m!4240321))

(declare-fun m!4240323 () Bool)

(assert (=> b!3748613 m!4240323))

(declare-fun m!4240325 () Bool)

(assert (=> b!3748610 m!4240325))

(declare-fun m!4240327 () Bool)

(assert (=> start!351930 m!4240327))

(declare-fun m!4240329 () Bool)

(assert (=> b!3748607 m!4240329))

(declare-fun m!4240331 () Bool)

(assert (=> b!3748605 m!4240331))

(declare-fun m!4240333 () Bool)

(assert (=> b!3748602 m!4240333))

(declare-fun m!4240335 () Bool)

(assert (=> b!3748604 m!4240335))

(declare-fun m!4240337 () Bool)

(assert (=> b!3748612 m!4240337))

(declare-fun m!4240339 () Bool)

(assert (=> b!3748611 m!4240339))

(check-sat (not b!3748611) (not b!3748607) (not b_next!100835) (not b!3748616) (not b_next!100829) (not b!3748610) (not b!3748604) b_and!278361 (not start!351930) (not b_next!100827) b_and!278355 (not b!3748613) (not b!3748602) (not b!3748606) (not b_next!100833) b_and!278365 (not b_next!100825) b_and!278359 (not b!3748618) b_and!278363 (not b!3748601) b_and!278357 (not b!3748608) (not b!3748605) (not b!3748617) (not b_next!100831) (not b!3748612))
(check-sat (not b_next!100835) (not b_next!100833) (not b_next!100829) b_and!278361 b_and!278357 (not b_next!100831) (not b_next!100827) b_and!278355 b_and!278365 (not b_next!100825) b_and!278359 b_and!278363)
