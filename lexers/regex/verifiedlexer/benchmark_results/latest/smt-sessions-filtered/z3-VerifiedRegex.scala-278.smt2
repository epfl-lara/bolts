; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5974 () Bool)

(assert start!5974)

(declare-fun b!76648 () Bool)

(declare-fun b_free!2425 () Bool)

(declare-fun b_next!2425 () Bool)

(assert (=> b!76648 (= b_free!2425 (not b_next!2425))))

(declare-fun tp!49553 () Bool)

(declare-fun b_and!3483 () Bool)

(assert (=> b!76648 (= tp!49553 b_and!3483)))

(declare-fun b_free!2427 () Bool)

(declare-fun b_next!2427 () Bool)

(assert (=> b!76648 (= b_free!2427 (not b_next!2427))))

(declare-fun tp!49552 () Bool)

(declare-fun b_and!3485 () Bool)

(assert (=> b!76648 (= tp!49552 b_and!3485)))

(declare-fun b!76646 () Bool)

(declare-fun e!42782 () Bool)

(declare-fun e!42781 () Bool)

(assert (=> b!76646 (= e!42782 e!42781)))

(declare-fun res!40061 () Bool)

(assert (=> b!76646 (=> (not res!40061) (not e!42781))))

(declare-fun lt!15115 () Bool)

(declare-datatypes ((C!1632 0))(
  ( (C!1633 (val!423 Int)) )
))
(declare-datatypes ((List!1322 0))(
  ( (Nil!1316) (Cons!1316 (h!6713 C!1632) (t!20101 List!1322)) )
))
(declare-datatypes ((IArray!753 0))(
  ( (IArray!754 (innerList!434 List!1322)) )
))
(declare-datatypes ((Conc!376 0))(
  ( (Node!376 (left!1000 Conc!376) (right!1330 Conc!376) (csize!982 Int) (cheight!587 Int)) (Leaf!655 (xs!2955 IArray!753) (csize!983 Int)) (Empty!376) )
))
(declare-datatypes ((BalanceConc!756 0))(
  ( (BalanceConc!757 (c!19722 Conc!376)) )
))
(declare-datatypes ((List!1323 0))(
  ( (Nil!1317) (Cons!1317 (h!6714 (_ BitVec 16)) (t!20102 List!1323)) )
))
(declare-datatypes ((TokenValue!277 0))(
  ( (FloatLiteralValue!554 (text!2384 List!1323)) (TokenValueExt!276 (__x!1649 Int)) (Broken!1385 (value!11049 List!1323)) (Object!282) (End!277) (Def!277) (Underscore!277) (Match!277) (Else!277) (Error!277) (Case!277) (If!277) (Extends!277) (Abstract!277) (Class!277) (Val!277) (DelimiterValue!554 (del!337 List!1323)) (KeywordValue!283 (value!11050 List!1323)) (CommentValue!554 (value!11051 List!1323)) (WhitespaceValue!554 (value!11052 List!1323)) (IndentationValue!277 (value!11053 List!1323)) (String!1776) (Int32!277) (Broken!1386 (value!11054 List!1323)) (Boolean!278) (Unit!789) (OperatorValue!280 (op!337 List!1323)) (IdentifierValue!554 (value!11055 List!1323)) (IdentifierValue!555 (value!11056 List!1323)) (WhitespaceValue!555 (value!11057 List!1323)) (True!554) (False!554) (Broken!1387 (value!11058 List!1323)) (Broken!1388 (value!11059 List!1323)) (True!555) (RightBrace!277) (RightBracket!277) (Colon!277) (Null!277) (Comma!277) (LeftBracket!277) (False!555) (LeftBrace!277) (ImaginaryLiteralValue!277 (text!2385 List!1323)) (StringLiteralValue!831 (value!11060 List!1323)) (EOFValue!277 (value!11061 List!1323)) (IdentValue!277 (value!11062 List!1323)) (DelimiterValue!555 (value!11063 List!1323)) (DedentValue!277 (value!11064 List!1323)) (NewLineValue!277 (value!11065 List!1323)) (IntegerValue!831 (value!11066 (_ BitVec 32)) (text!2386 List!1323)) (IntegerValue!832 (value!11067 Int) (text!2387 List!1323)) (Times!277) (Or!277) (Equal!277) (Minus!277) (Broken!1389 (value!11068 List!1323)) (And!277) (Div!277) (LessEqual!277) (Mod!277) (Concat!632) (Not!277) (Plus!277) (SpaceValue!277 (value!11069 List!1323)) (IntegerValue!833 (value!11070 Int) (text!2388 List!1323)) (StringLiteralValue!832 (text!2389 List!1323)) (FloatLiteralValue!555 (text!2390 List!1323)) (BytesLiteralValue!277 (value!11071 List!1323)) (CommentValue!555 (value!11072 List!1323)) (StringLiteralValue!833 (value!11073 List!1323)) (ErrorTokenValue!277 (msg!338 List!1323)) )
))
(declare-datatypes ((Regex!355 0))(
  ( (ElementMatch!355 (c!19723 C!1632)) (Concat!633 (regOne!1222 Regex!355) (regTwo!1222 Regex!355)) (EmptyExpr!355) (Star!355 (reg!684 Regex!355)) (EmptyLang!355) (Union!355 (regOne!1223 Regex!355) (regTwo!1223 Regex!355)) )
))
(declare-datatypes ((String!1777 0))(
  ( (String!1778 (value!11074 String)) )
))
(declare-datatypes ((TokenValueInjection!378 0))(
  ( (TokenValueInjection!379 (toValue!794 Int) (toChars!653 Int)) )
))
(declare-datatypes ((Rule!374 0))(
  ( (Rule!375 (regex!287 Regex!355) (tag!465 String!1777) (isSeparator!287 Bool) (transformation!287 TokenValueInjection!378)) )
))
(declare-datatypes ((Token!334 0))(
  ( (Token!335 (value!11075 TokenValue!277) (rule!764 Rule!374) (size!1167 Int) (originalCharacters!338 List!1322)) )
))
(declare-datatypes ((List!1324 0))(
  ( (Nil!1318) (Cons!1318 (h!6715 Token!334) (t!20103 List!1324)) )
))
(declare-fun lt!15112 () List!1324)

(get-info :version)

(assert (=> b!76646 (= res!40061 (and (or lt!15115 (not ((_ is Nil!1318) (t!20103 lt!15112)))) (not lt!15115)))))

(assert (=> b!76646 (= lt!15115 (not ((_ is Cons!1318) lt!15112)))))

(declare-datatypes ((IArray!755 0))(
  ( (IArray!756 (innerList!435 List!1324)) )
))
(declare-datatypes ((Conc!377 0))(
  ( (Node!377 (left!1001 Conc!377) (right!1331 Conc!377) (csize!984 Int) (cheight!588 Int)) (Leaf!656 (xs!2956 IArray!755) (csize!985 Int)) (Empty!377) )
))
(declare-datatypes ((BalanceConc!758 0))(
  ( (BalanceConc!759 (c!19724 Conc!377)) )
))
(declare-datatypes ((tuple2!1292 0))(
  ( (tuple2!1293 (_1!853 BalanceConc!758) (_2!853 BalanceConc!756)) )
))
(declare-fun lt!15116 () tuple2!1292)

(declare-fun list!403 (BalanceConc!758) List!1324)

(assert (=> b!76646 (= lt!15112 (list!403 (_1!853 lt!15116)))))

(declare-fun tp!49550 () Bool)

(declare-datatypes ((List!1325 0))(
  ( (Nil!1319) (Cons!1319 (h!6716 Rule!374) (t!20104 List!1325)) )
))
(declare-fun rules!2471 () List!1325)

(declare-fun b!76647 () Bool)

(declare-fun e!42775 () Bool)

(declare-fun e!42778 () Bool)

(declare-fun inv!1696 (String!1777) Bool)

(declare-fun inv!1698 (TokenValueInjection!378) Bool)

(assert (=> b!76647 (= e!42778 (and tp!49550 (inv!1696 (tag!465 (h!6716 rules!2471))) (inv!1698 (transformation!287 (h!6716 rules!2471))) e!42775))))

(assert (=> b!76648 (= e!42775 (and tp!49553 tp!49552))))

(declare-fun res!40059 () Bool)

(declare-fun e!42777 () Bool)

(assert (=> start!5974 (=> (not res!40059) (not e!42777))))

(declare-datatypes ((LexerInterface!179 0))(
  ( (LexerInterfaceExt!176 (__x!1650 Int)) (Lexer!177) )
))
(declare-fun thiss!19403 () LexerInterface!179)

(assert (=> start!5974 (= res!40059 ((_ is Lexer!177) thiss!19403))))

(assert (=> start!5974 e!42777))

(assert (=> start!5974 true))

(declare-fun e!42779 () Bool)

(assert (=> start!5974 e!42779))

(declare-fun e!42780 () Bool)

(assert (=> start!5974 e!42780))

(declare-fun b!76649 () Bool)

(declare-fun tp_is_empty!633 () Bool)

(declare-fun tp!49551 () Bool)

(assert (=> b!76649 (= e!42780 (and tp_is_empty!633 tp!49551))))

(declare-fun b!76650 () Bool)

(declare-fun tp!49554 () Bool)

(assert (=> b!76650 (= e!42779 (and e!42778 tp!49554))))

(declare-fun b!76651 () Bool)

(declare-fun res!40062 () Bool)

(assert (=> b!76651 (=> (not res!40062) (not e!42777))))

(declare-fun isEmpty!382 (List!1325) Bool)

(assert (=> b!76651 (= res!40062 (not (isEmpty!382 rules!2471)))))

(declare-fun b!76652 () Bool)

(assert (=> b!76652 (= e!42781 (not true))))

(declare-fun input!2238 () List!1322)

(declare-datatypes ((tuple2!1294 0))(
  ( (tuple2!1295 (_1!854 Token!334) (_2!854 List!1322)) )
))
(declare-datatypes ((Option!90 0))(
  ( (None!89) (Some!89 (v!12740 tuple2!1294)) )
))
(declare-fun lt!15113 () Option!90)

(declare-fun maxPrefix!23 (LexerInterface!179 List!1325 List!1322) Option!90)

(assert (=> b!76652 (= lt!15113 (maxPrefix!23 thiss!19403 rules!2471 input!2238))))

(declare-fun prepend!36 (BalanceConc!758 Token!334) BalanceConc!758)

(declare-fun seqFromList!86 (List!1324) BalanceConc!758)

(assert (=> b!76652 (= lt!15112 (list!403 (prepend!36 (seqFromList!86 (t!20103 lt!15112)) (h!6715 lt!15112))))))

(declare-datatypes ((Unit!790 0))(
  ( (Unit!791) )
))
(declare-fun lt!15114 () Unit!790)

(declare-fun seqFromListBHdTlConstructive!10 (Token!334 List!1324 BalanceConc!758) Unit!790)

(assert (=> b!76652 (= lt!15114 (seqFromListBHdTlConstructive!10 (h!6715 lt!15112) (t!20103 lt!15112) (_1!853 lt!15116)))))

(declare-fun b!76653 () Bool)

(assert (=> b!76653 (= e!42777 e!42782)))

(declare-fun res!40060 () Bool)

(assert (=> b!76653 (=> (not res!40060) (not e!42782))))

(declare-fun isEmpty!383 (BalanceConc!756) Bool)

(assert (=> b!76653 (= res!40060 (not (isEmpty!383 (_2!853 lt!15116))))))

(declare-fun lex!87 (LexerInterface!179 List!1325 BalanceConc!756) tuple2!1292)

(declare-fun seqFromList!87 (List!1322) BalanceConc!756)

(assert (=> b!76653 (= lt!15116 (lex!87 thiss!19403 rules!2471 (seqFromList!87 input!2238)))))

(declare-fun b!76654 () Bool)

(declare-fun res!40058 () Bool)

(assert (=> b!76654 (=> (not res!40058) (not e!42777))))

(declare-fun rulesInvariant!173 (LexerInterface!179 List!1325) Bool)

(assert (=> b!76654 (= res!40058 (rulesInvariant!173 thiss!19403 rules!2471))))

(assert (= (and start!5974 res!40059) b!76651))

(assert (= (and b!76651 res!40062) b!76654))

(assert (= (and b!76654 res!40058) b!76653))

(assert (= (and b!76653 res!40060) b!76646))

(assert (= (and b!76646 res!40061) b!76652))

(assert (= b!76647 b!76648))

(assert (= b!76650 b!76647))

(assert (= (and start!5974 ((_ is Cons!1319) rules!2471)) b!76650))

(assert (= (and start!5974 ((_ is Cons!1316) input!2238)) b!76649))

(declare-fun m!48704 () Bool)

(assert (=> b!76651 m!48704))

(declare-fun m!48706 () Bool)

(assert (=> b!76647 m!48706))

(declare-fun m!48708 () Bool)

(assert (=> b!76647 m!48708))

(declare-fun m!48710 () Bool)

(assert (=> b!76653 m!48710))

(declare-fun m!48712 () Bool)

(assert (=> b!76653 m!48712))

(assert (=> b!76653 m!48712))

(declare-fun m!48714 () Bool)

(assert (=> b!76653 m!48714))

(declare-fun m!48716 () Bool)

(assert (=> b!76652 m!48716))

(declare-fun m!48718 () Bool)

(assert (=> b!76652 m!48718))

(declare-fun m!48720 () Bool)

(assert (=> b!76652 m!48720))

(assert (=> b!76652 m!48720))

(declare-fun m!48722 () Bool)

(assert (=> b!76652 m!48722))

(declare-fun m!48724 () Bool)

(assert (=> b!76652 m!48724))

(assert (=> b!76652 m!48718))

(declare-fun m!48726 () Bool)

(assert (=> b!76646 m!48726))

(declare-fun m!48728 () Bool)

(assert (=> b!76654 m!48728))

(check-sat (not b!76650) (not b!76647) (not b_next!2427) (not b!76651) (not b!76654) (not b!76649) b_and!3485 b_and!3483 tp_is_empty!633 (not b!76652) (not b_next!2425) (not b!76646) (not b!76653))
(check-sat b_and!3485 b_and!3483 (not b_next!2427) (not b_next!2425))
