; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!5640 () Bool)

(assert start!5640)

(declare-fun b!75238 () Bool)

(declare-fun b_free!2341 () Bool)

(declare-fun b_next!2341 () Bool)

(assert (=> b!75238 (= b_free!2341 (not b_next!2341))))

(declare-fun tp!49089 () Bool)

(declare-fun b_and!3383 () Bool)

(assert (=> b!75238 (= tp!49089 b_and!3383)))

(declare-fun b_free!2343 () Bool)

(declare-fun b_next!2343 () Bool)

(assert (=> b!75238 (= b_free!2343 (not b_next!2343))))

(declare-fun tp!49092 () Bool)

(declare-fun b_and!3385 () Bool)

(assert (=> b!75238 (= tp!49092 b_and!3385)))

(declare-fun b!75231 () Bool)

(declare-fun res!39348 () Bool)

(declare-fun e!41865 () Bool)

(assert (=> b!75231 (=> (not res!39348) (not e!41865))))

(declare-datatypes ((LexerInterface!166 0))(
  ( (LexerInterfaceExt!163 (__x!1623 Int)) (Lexer!164) )
))
(declare-fun thiss!19403 () LexerInterface!166)

(declare-datatypes ((C!1606 0))(
  ( (C!1607 (val!410 Int)) )
))
(declare-datatypes ((List!1266 0))(
  ( (Nil!1260) (Cons!1260 (h!6657 C!1606) (t!20001 List!1266)) )
))
(declare-datatypes ((IArray!701 0))(
  ( (IArray!702 (innerList!408 List!1266)) )
))
(declare-datatypes ((Conc!350 0))(
  ( (Node!350 (left!960 Conc!350) (right!1290 Conc!350) (csize!930 Int) (cheight!561 Int)) (Leaf!623 (xs!2929 IArray!701) (csize!931 Int)) (Empty!350) )
))
(declare-datatypes ((BalanceConc!704 0))(
  ( (BalanceConc!705 (c!19508 Conc!350)) )
))
(declare-datatypes ((Regex!342 0))(
  ( (ElementMatch!342 (c!19509 C!1606)) (Concat!606 (regOne!1196 Regex!342) (regTwo!1196 Regex!342)) (EmptyExpr!342) (Star!342 (reg!671 Regex!342)) (EmptyLang!342) (Union!342 (regOne!1197 Regex!342) (regTwo!1197 Regex!342)) )
))
(declare-datatypes ((String!1713 0))(
  ( (String!1714 (value!10680 String)) )
))
(declare-datatypes ((List!1267 0))(
  ( (Nil!1261) (Cons!1261 (h!6658 (_ BitVec 16)) (t!20002 List!1267)) )
))
(declare-datatypes ((TokenValue!264 0))(
  ( (FloatLiteralValue!528 (text!2293 List!1267)) (TokenValueExt!263 (__x!1624 Int)) (Broken!1320 (value!10681 List!1267)) (Object!269) (End!264) (Def!264) (Underscore!264) (Match!264) (Else!264) (Error!264) (Case!264) (If!264) (Extends!264) (Abstract!264) (Class!264) (Val!264) (DelimiterValue!528 (del!324 List!1267)) (KeywordValue!270 (value!10682 List!1267)) (CommentValue!528 (value!10683 List!1267)) (WhitespaceValue!528 (value!10684 List!1267)) (IndentationValue!264 (value!10685 List!1267)) (String!1715) (Int32!264) (Broken!1321 (value!10686 List!1267)) (Boolean!265) (Unit!750) (OperatorValue!267 (op!324 List!1267)) (IdentifierValue!528 (value!10687 List!1267)) (IdentifierValue!529 (value!10688 List!1267)) (WhitespaceValue!529 (value!10689 List!1267)) (True!528) (False!528) (Broken!1322 (value!10690 List!1267)) (Broken!1323 (value!10691 List!1267)) (True!529) (RightBrace!264) (RightBracket!264) (Colon!264) (Null!264) (Comma!264) (LeftBracket!264) (False!529) (LeftBrace!264) (ImaginaryLiteralValue!264 (text!2294 List!1267)) (StringLiteralValue!792 (value!10692 List!1267)) (EOFValue!264 (value!10693 List!1267)) (IdentValue!264 (value!10694 List!1267)) (DelimiterValue!529 (value!10695 List!1267)) (DedentValue!264 (value!10696 List!1267)) (NewLineValue!264 (value!10697 List!1267)) (IntegerValue!792 (value!10698 (_ BitVec 32)) (text!2295 List!1267)) (IntegerValue!793 (value!10699 Int) (text!2296 List!1267)) (Times!264) (Or!264) (Equal!264) (Minus!264) (Broken!1324 (value!10700 List!1267)) (And!264) (Div!264) (LessEqual!264) (Mod!264) (Concat!607) (Not!264) (Plus!264) (SpaceValue!264 (value!10701 List!1267)) (IntegerValue!794 (value!10702 Int) (text!2297 List!1267)) (StringLiteralValue!793 (text!2298 List!1267)) (FloatLiteralValue!529 (text!2299 List!1267)) (BytesLiteralValue!264 (value!10703 List!1267)) (CommentValue!529 (value!10704 List!1267)) (StringLiteralValue!794 (value!10705 List!1267)) (ErrorTokenValue!264 (msg!325 List!1267)) )
))
(declare-datatypes ((TokenValueInjection!352 0))(
  ( (TokenValueInjection!353 (toValue!773 Int) (toChars!632 Int)) )
))
(declare-datatypes ((Rule!348 0))(
  ( (Rule!349 (regex!274 Regex!342) (tag!452 String!1713) (isSeparator!274 Bool) (transformation!274 TokenValueInjection!352)) )
))
(declare-datatypes ((List!1268 0))(
  ( (Nil!1262) (Cons!1262 (h!6659 Rule!348) (t!20003 List!1268)) )
))
(declare-fun rules!2471 () List!1268)

(declare-fun rulesInvariant!160 (LexerInterface!166 List!1268) Bool)

(assert (=> b!75231 (= res!39348 (rulesInvariant!160 thiss!19403 rules!2471))))

(declare-fun b!75232 () Bool)

(declare-fun res!39345 () Bool)

(assert (=> b!75232 (=> (not res!39345) (not e!41865))))

(declare-fun isEmpty!334 (List!1268) Bool)

(assert (=> b!75232 (= res!39345 (not (isEmpty!334 rules!2471)))))

(declare-fun b!75233 () Bool)

(declare-fun e!41869 () Bool)

(declare-fun e!41871 () Bool)

(assert (=> b!75233 (= e!41869 e!41871)))

(declare-fun res!39344 () Bool)

(assert (=> b!75233 (=> (not res!39344) (not e!41871))))

(declare-datatypes ((Token!308 0))(
  ( (Token!309 (value!10706 TokenValue!264) (rule!749 Rule!348) (size!1130 Int) (originalCharacters!325 List!1266)) )
))
(declare-datatypes ((List!1269 0))(
  ( (Nil!1263) (Cons!1263 (h!6660 Token!308) (t!20004 List!1269)) )
))
(declare-fun lt!14231 () List!1269)

(assert (=> b!75233 (= res!39344 (and (is-Cons!1263 lt!14231) (is-Nil!1263 (t!20004 lt!14231))))))

(declare-datatypes ((IArray!703 0))(
  ( (IArray!704 (innerList!409 List!1269)) )
))
(declare-datatypes ((Conc!351 0))(
  ( (Node!351 (left!961 Conc!351) (right!1291 Conc!351) (csize!932 Int) (cheight!562 Int)) (Leaf!624 (xs!2930 IArray!703) (csize!933 Int)) (Empty!351) )
))
(declare-datatypes ((BalanceConc!706 0))(
  ( (BalanceConc!707 (c!19510 Conc!351)) )
))
(declare-datatypes ((tuple2!1236 0))(
  ( (tuple2!1237 (_1!825 BalanceConc!706) (_2!825 BalanceConc!704)) )
))
(declare-fun lt!14230 () tuple2!1236)

(declare-fun list!372 (BalanceConc!706) List!1269)

(assert (=> b!75233 (= lt!14231 (list!372 (_1!825 lt!14230)))))

(declare-fun b!75234 () Bool)

(assert (=> b!75234 (= e!41871 false)))

(declare-fun lt!14229 () List!1266)

(declare-fun ++!89 (List!1266 List!1266) List!1266)

(declare-fun list!373 (BalanceConc!704) List!1266)

(declare-fun print!17 (LexerInterface!166 BalanceConc!706) BalanceConc!704)

(assert (=> b!75234 (= lt!14229 (++!89 (list!373 (print!17 thiss!19403 (_1!825 lt!14230))) (list!373 (_2!825 lt!14230))))))

(declare-fun tp!49093 () Bool)

(declare-fun e!41866 () Bool)

(declare-fun b!75235 () Bool)

(declare-fun e!41868 () Bool)

(declare-fun inv!1660 (String!1713) Bool)

(declare-fun inv!1663 (TokenValueInjection!352) Bool)

(assert (=> b!75235 (= e!41866 (and tp!49093 (inv!1660 (tag!452 (h!6659 rules!2471))) (inv!1663 (transformation!274 (h!6659 rules!2471))) e!41868))))

(declare-fun res!39347 () Bool)

(assert (=> start!5640 (=> (not res!39347) (not e!41865))))

(assert (=> start!5640 (= res!39347 (is-Lexer!164 thiss!19403))))

(assert (=> start!5640 e!41865))

(assert (=> start!5640 true))

(declare-fun e!41872 () Bool)

(assert (=> start!5640 e!41872))

(declare-fun e!41867 () Bool)

(assert (=> start!5640 e!41867))

(declare-fun b!75236 () Bool)

(declare-fun tp!49090 () Bool)

(assert (=> b!75236 (= e!41872 (and e!41866 tp!49090))))

(declare-fun b!75237 () Bool)

(declare-fun tp_is_empty!607 () Bool)

(declare-fun tp!49091 () Bool)

(assert (=> b!75237 (= e!41867 (and tp_is_empty!607 tp!49091))))

(assert (=> b!75238 (= e!41868 (and tp!49089 tp!49092))))

(declare-fun b!75239 () Bool)

(assert (=> b!75239 (= e!41865 e!41869)))

(declare-fun res!39346 () Bool)

(assert (=> b!75239 (=> (not res!39346) (not e!41869))))

(declare-fun isEmpty!335 (BalanceConc!704) Bool)

(assert (=> b!75239 (= res!39346 (not (isEmpty!335 (_2!825 lt!14230))))))

(declare-fun input!2238 () List!1266)

(declare-fun lex!74 (LexerInterface!166 List!1268 BalanceConc!704) tuple2!1236)

(declare-fun seqFromList!62 (List!1266) BalanceConc!704)

(assert (=> b!75239 (= lt!14230 (lex!74 thiss!19403 rules!2471 (seqFromList!62 input!2238)))))

(assert (= (and start!5640 res!39347) b!75232))

(assert (= (and b!75232 res!39345) b!75231))

(assert (= (and b!75231 res!39348) b!75239))

(assert (= (and b!75239 res!39346) b!75233))

(assert (= (and b!75233 res!39344) b!75234))

(assert (= b!75235 b!75238))

(assert (= b!75236 b!75235))

(assert (= (and start!5640 (is-Cons!1262 rules!2471)) b!75236))

(assert (= (and start!5640 (is-Cons!1260 input!2238)) b!75237))

(declare-fun m!46938 () Bool)

(assert (=> b!75231 m!46938))

(declare-fun m!46940 () Bool)

(assert (=> b!75239 m!46940))

(declare-fun m!46942 () Bool)

(assert (=> b!75239 m!46942))

(assert (=> b!75239 m!46942))

(declare-fun m!46944 () Bool)

(assert (=> b!75239 m!46944))

(declare-fun m!46946 () Bool)

(assert (=> b!75235 m!46946))

(declare-fun m!46948 () Bool)

(assert (=> b!75235 m!46948))

(declare-fun m!46950 () Bool)

(assert (=> b!75232 m!46950))

(declare-fun m!46952 () Bool)

(assert (=> b!75233 m!46952))

(declare-fun m!46954 () Bool)

(assert (=> b!75234 m!46954))

(assert (=> b!75234 m!46954))

(declare-fun m!46956 () Bool)

(assert (=> b!75234 m!46956))

(declare-fun m!46958 () Bool)

(assert (=> b!75234 m!46958))

(assert (=> b!75234 m!46956))

(assert (=> b!75234 m!46958))

(declare-fun m!46960 () Bool)

(assert (=> b!75234 m!46960))

(push 1)

(assert (not b!75239))

(assert (not b!75234))

(assert (not b!75237))

(assert (not b!75231))

(assert (not b!75236))

(assert (not b_next!2343))

(assert b_and!3385)

(assert (not b!75232))

(assert tp_is_empty!607)

(assert b_and!3383)

(assert (not b_next!2341))

(assert (not b!75235))

(assert (not b!75233))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3385)

(assert b_and!3383)

(assert (not b_next!2343))

(assert (not b_next!2341))

(check-sat)

(pop 1)

