; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5646 () Bool)

(assert start!5646)

(declare-fun b!75318 () Bool)

(declare-fun b_free!2353 () Bool)

(declare-fun b_next!2353 () Bool)

(assert (=> b!75318 (= b_free!2353 (not b_next!2353))))

(declare-fun tp!49136 () Bool)

(declare-fun b_and!3395 () Bool)

(assert (=> b!75318 (= tp!49136 b_and!3395)))

(declare-fun b_free!2355 () Bool)

(declare-fun b_next!2355 () Bool)

(assert (=> b!75318 (= b_free!2355 (not b_next!2355))))

(declare-fun tp!49137 () Bool)

(declare-fun b_and!3397 () Bool)

(assert (=> b!75318 (= tp!49137 b_and!3397)))

(declare-fun b!75312 () Bool)

(declare-fun e!41943 () Bool)

(declare-fun e!41939 () Bool)

(declare-fun tp!49135 () Bool)

(assert (=> b!75312 (= e!41943 (and e!41939 tp!49135))))

(declare-fun b!75313 () Bool)

(declare-fun e!41944 () Bool)

(declare-fun e!41937 () Bool)

(assert (=> b!75313 (= e!41944 e!41937)))

(declare-fun res!39393 () Bool)

(assert (=> b!75313 (=> (not res!39393) (not e!41937))))

(declare-fun lt!14261 () Bool)

(declare-datatypes ((C!1612 0))(
  ( (C!1613 (val!413 Int)) )
))
(declare-datatypes ((List!1278 0))(
  ( (Nil!1272) (Cons!1272 (h!6669 C!1612) (t!20013 List!1278)) )
))
(declare-datatypes ((IArray!713 0))(
  ( (IArray!714 (innerList!414 List!1278)) )
))
(declare-datatypes ((Conc!356 0))(
  ( (Node!356 (left!967 Conc!356) (right!1297 Conc!356) (csize!942 Int) (cheight!567 Int)) (Leaf!630 (xs!2935 IArray!713) (csize!943 Int)) (Empty!356) )
))
(declare-datatypes ((BalanceConc!716 0))(
  ( (BalanceConc!717 (c!19520 Conc!356)) )
))
(declare-datatypes ((List!1279 0))(
  ( (Nil!1273) (Cons!1273 (h!6670 (_ BitVec 16)) (t!20014 List!1279)) )
))
(declare-datatypes ((TokenValue!267 0))(
  ( (FloatLiteralValue!534 (text!2314 List!1279)) (TokenValueExt!266 (__x!1629 Int)) (Broken!1335 (value!10764 List!1279)) (Object!272) (End!267) (Def!267) (Underscore!267) (Match!267) (Else!267) (Error!267) (Case!267) (If!267) (Extends!267) (Abstract!267) (Class!267) (Val!267) (DelimiterValue!534 (del!327 List!1279)) (KeywordValue!273 (value!10765 List!1279)) (CommentValue!534 (value!10766 List!1279)) (WhitespaceValue!534 (value!10767 List!1279)) (IndentationValue!267 (value!10768 List!1279)) (String!1726) (Int32!267) (Broken!1336 (value!10769 List!1279)) (Boolean!268) (Unit!753) (OperatorValue!270 (op!327 List!1279)) (IdentifierValue!534 (value!10770 List!1279)) (IdentifierValue!535 (value!10771 List!1279)) (WhitespaceValue!535 (value!10772 List!1279)) (True!534) (False!534) (Broken!1337 (value!10773 List!1279)) (Broken!1338 (value!10774 List!1279)) (True!535) (RightBrace!267) (RightBracket!267) (Colon!267) (Null!267) (Comma!267) (LeftBracket!267) (False!535) (LeftBrace!267) (ImaginaryLiteralValue!267 (text!2315 List!1279)) (StringLiteralValue!801 (value!10775 List!1279)) (EOFValue!267 (value!10776 List!1279)) (IdentValue!267 (value!10777 List!1279)) (DelimiterValue!535 (value!10778 List!1279)) (DedentValue!267 (value!10779 List!1279)) (NewLineValue!267 (value!10780 List!1279)) (IntegerValue!801 (value!10781 (_ BitVec 32)) (text!2316 List!1279)) (IntegerValue!802 (value!10782 Int) (text!2317 List!1279)) (Times!267) (Or!267) (Equal!267) (Minus!267) (Broken!1339 (value!10783 List!1279)) (And!267) (Div!267) (LessEqual!267) (Mod!267) (Concat!612) (Not!267) (Plus!267) (SpaceValue!267 (value!10784 List!1279)) (IntegerValue!803 (value!10785 Int) (text!2318 List!1279)) (StringLiteralValue!802 (text!2319 List!1279)) (FloatLiteralValue!535 (text!2320 List!1279)) (BytesLiteralValue!267 (value!10786 List!1279)) (CommentValue!535 (value!10787 List!1279)) (StringLiteralValue!803 (value!10788 List!1279)) (ErrorTokenValue!267 (msg!328 List!1279)) )
))
(declare-datatypes ((Regex!345 0))(
  ( (ElementMatch!345 (c!19521 C!1612)) (Concat!613 (regOne!1202 Regex!345) (regTwo!1202 Regex!345)) (EmptyExpr!345) (Star!345 (reg!674 Regex!345)) (EmptyLang!345) (Union!345 (regOne!1203 Regex!345) (regTwo!1203 Regex!345)) )
))
(declare-datatypes ((String!1727 0))(
  ( (String!1728 (value!10789 String)) )
))
(declare-datatypes ((TokenValueInjection!358 0))(
  ( (TokenValueInjection!359 (toValue!776 Int) (toChars!635 Int)) )
))
(declare-datatypes ((Rule!354 0))(
  ( (Rule!355 (regex!277 Regex!345) (tag!455 String!1727) (isSeparator!277 Bool) (transformation!277 TokenValueInjection!358)) )
))
(declare-datatypes ((Token!314 0))(
  ( (Token!315 (value!10790 TokenValue!267) (rule!752 Rule!354) (size!1133 Int) (originalCharacters!328 List!1278)) )
))
(declare-datatypes ((List!1280 0))(
  ( (Nil!1274) (Cons!1274 (h!6671 Token!314) (t!20015 List!1280)) )
))
(declare-fun lt!14262 () List!1280)

(get-info :version)

(assert (=> b!75313 (= res!39393 (and (or lt!14261 (not ((_ is Nil!1274) (t!20015 lt!14262)))) (not lt!14261)))))

(assert (=> b!75313 (= lt!14261 (not ((_ is Cons!1274) lt!14262)))))

(declare-datatypes ((IArray!715 0))(
  ( (IArray!716 (innerList!415 List!1280)) )
))
(declare-datatypes ((Conc!357 0))(
  ( (Node!357 (left!968 Conc!357) (right!1298 Conc!357) (csize!944 Int) (cheight!568 Int)) (Leaf!631 (xs!2936 IArray!715) (csize!945 Int)) (Empty!357) )
))
(declare-datatypes ((BalanceConc!718 0))(
  ( (BalanceConc!719 (c!19522 Conc!357)) )
))
(declare-datatypes ((tuple2!1242 0))(
  ( (tuple2!1243 (_1!828 BalanceConc!718) (_2!828 BalanceConc!716)) )
))
(declare-fun lt!14263 () tuple2!1242)

(declare-fun list!377 (BalanceConc!718) List!1280)

(assert (=> b!75313 (= lt!14262 (list!377 (_1!828 lt!14263)))))

(declare-fun b!75314 () Bool)

(assert (=> b!75314 (= e!41937 false)))

(declare-fun lt!14264 () List!1280)

(declare-fun seqFromList!66 (List!1280) BalanceConc!718)

(declare-fun $colon$colon!8 (List!1280 Token!314) List!1280)

(assert (=> b!75314 (= lt!14264 (list!377 (seqFromList!66 ($colon$colon!8 (t!20015 lt!14262) (h!6671 lt!14262)))))))

(declare-fun b!75315 () Bool)

(declare-fun e!41940 () Bool)

(assert (=> b!75315 (= e!41940 e!41944)))

(declare-fun res!39389 () Bool)

(assert (=> b!75315 (=> (not res!39389) (not e!41944))))

(declare-fun isEmpty!340 (BalanceConc!716) Bool)

(assert (=> b!75315 (= res!39389 (not (isEmpty!340 (_2!828 lt!14263))))))

(declare-datatypes ((LexerInterface!169 0))(
  ( (LexerInterfaceExt!166 (__x!1630 Int)) (Lexer!167) )
))
(declare-fun thiss!19403 () LexerInterface!169)

(declare-datatypes ((List!1281 0))(
  ( (Nil!1275) (Cons!1275 (h!6672 Rule!354) (t!20016 List!1281)) )
))
(declare-fun rules!2471 () List!1281)

(declare-fun input!2238 () List!1278)

(declare-fun lex!77 (LexerInterface!169 List!1281 BalanceConc!716) tuple2!1242)

(declare-fun seqFromList!67 (List!1278) BalanceConc!716)

(assert (=> b!75315 (= lt!14263 (lex!77 thiss!19403 rules!2471 (seqFromList!67 input!2238)))))

(declare-fun e!41941 () Bool)

(declare-fun tp!49134 () Bool)

(declare-fun b!75316 () Bool)

(declare-fun inv!1667 (String!1727) Bool)

(declare-fun inv!1669 (TokenValueInjection!358) Bool)

(assert (=> b!75316 (= e!41939 (and tp!49134 (inv!1667 (tag!455 (h!6672 rules!2471))) (inv!1669 (transformation!277 (h!6672 rules!2471))) e!41941))))

(declare-fun b!75317 () Bool)

(declare-fun res!39391 () Bool)

(assert (=> b!75317 (=> (not res!39391) (not e!41940))))

(declare-fun isEmpty!341 (List!1281) Bool)

(assert (=> b!75317 (= res!39391 (not (isEmpty!341 rules!2471)))))

(assert (=> b!75318 (= e!41941 (and tp!49136 tp!49137))))

(declare-fun b!75319 () Bool)

(declare-fun e!41938 () Bool)

(declare-fun tp_is_empty!613 () Bool)

(declare-fun tp!49138 () Bool)

(assert (=> b!75319 (= e!41938 (and tp_is_empty!613 tp!49138))))

(declare-fun res!39390 () Bool)

(assert (=> start!5646 (=> (not res!39390) (not e!41940))))

(assert (=> start!5646 (= res!39390 ((_ is Lexer!167) thiss!19403))))

(assert (=> start!5646 e!41940))

(assert (=> start!5646 true))

(assert (=> start!5646 e!41943))

(assert (=> start!5646 e!41938))

(declare-fun b!75320 () Bool)

(declare-fun res!39392 () Bool)

(assert (=> b!75320 (=> (not res!39392) (not e!41940))))

(declare-fun rulesInvariant!163 (LexerInterface!169 List!1281) Bool)

(assert (=> b!75320 (= res!39392 (rulesInvariant!163 thiss!19403 rules!2471))))

(assert (= (and start!5646 res!39390) b!75317))

(assert (= (and b!75317 res!39391) b!75320))

(assert (= (and b!75320 res!39392) b!75315))

(assert (= (and b!75315 res!39389) b!75313))

(assert (= (and b!75313 res!39393) b!75314))

(assert (= b!75316 b!75318))

(assert (= b!75312 b!75316))

(assert (= (and start!5646 ((_ is Cons!1275) rules!2471)) b!75312))

(assert (= (and start!5646 ((_ is Cons!1272) input!2238)) b!75319))

(declare-fun m!47008 () Bool)

(assert (=> b!75314 m!47008))

(assert (=> b!75314 m!47008))

(declare-fun m!47010 () Bool)

(assert (=> b!75314 m!47010))

(assert (=> b!75314 m!47010))

(declare-fun m!47012 () Bool)

(assert (=> b!75314 m!47012))

(declare-fun m!47014 () Bool)

(assert (=> b!75317 m!47014))

(declare-fun m!47016 () Bool)

(assert (=> b!75313 m!47016))

(declare-fun m!47018 () Bool)

(assert (=> b!75316 m!47018))

(declare-fun m!47020 () Bool)

(assert (=> b!75316 m!47020))

(declare-fun m!47022 () Bool)

(assert (=> b!75320 m!47022))

(declare-fun m!47024 () Bool)

(assert (=> b!75315 m!47024))

(declare-fun m!47026 () Bool)

(assert (=> b!75315 m!47026))

(assert (=> b!75315 m!47026))

(declare-fun m!47028 () Bool)

(assert (=> b!75315 m!47028))

(check-sat tp_is_empty!613 (not b!75312) b_and!3395 (not b!75313) (not b!75319) (not b_next!2353) (not b!75316) (not b!75314) (not b!75317) (not b!75315) (not b!75320) b_and!3397 (not b_next!2355))
(check-sat b_and!3397 b_and!3395 (not b_next!2355) (not b_next!2353))
