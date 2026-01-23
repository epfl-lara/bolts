; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5630 () Bool)

(assert start!5630)

(declare-fun b!75102 () Bool)

(declare-fun b_free!2321 () Bool)

(declare-fun b_next!2321 () Bool)

(assert (=> b!75102 (= b_free!2321 (not b_next!2321))))

(declare-fun tp!49017 () Bool)

(declare-fun b_and!3363 () Bool)

(assert (=> b!75102 (= tp!49017 b_and!3363)))

(declare-fun b_free!2323 () Bool)

(declare-fun b_next!2323 () Bool)

(assert (=> b!75102 (= b_free!2323 (not b_next!2323))))

(declare-fun tp!49014 () Bool)

(declare-fun b_and!3365 () Bool)

(assert (=> b!75102 (= tp!49014 b_and!3365)))

(declare-fun e!41758 () Bool)

(assert (=> b!75102 (= e!41758 (and tp!49017 tp!49014))))

(declare-fun b!75103 () Bool)

(declare-fun e!41754 () Bool)

(declare-fun e!41755 () Bool)

(declare-fun tp!49018 () Bool)

(assert (=> b!75103 (= e!41754 (and e!41755 tp!49018))))

(declare-fun tp!49015 () Bool)

(declare-datatypes ((C!1596 0))(
  ( (C!1597 (val!405 Int)) )
))
(declare-datatypes ((List!1246 0))(
  ( (Nil!1240) (Cons!1240 (h!6637 C!1596) (t!19981 List!1246)) )
))
(declare-datatypes ((IArray!681 0))(
  ( (IArray!682 (innerList!398 List!1246)) )
))
(declare-datatypes ((Conc!340 0))(
  ( (Node!340 (left!947 Conc!340) (right!1277 Conc!340) (csize!910 Int) (cheight!551 Int)) (Leaf!610 (xs!2919 IArray!681) (csize!911 Int)) (Empty!340) )
))
(declare-datatypes ((BalanceConc!684 0))(
  ( (BalanceConc!685 (c!19488 Conc!340)) )
))
(declare-datatypes ((Regex!337 0))(
  ( (ElementMatch!337 (c!19489 C!1596)) (Concat!596 (regOne!1186 Regex!337) (regTwo!1186 Regex!337)) (EmptyExpr!337) (Star!337 (reg!666 Regex!337)) (EmptyLang!337) (Union!337 (regOne!1187 Regex!337) (regTwo!1187 Regex!337)) )
))
(declare-datatypes ((String!1686 0))(
  ( (String!1687 (value!10536 String)) )
))
(declare-datatypes ((List!1247 0))(
  ( (Nil!1241) (Cons!1241 (h!6638 (_ BitVec 16)) (t!19982 List!1247)) )
))
(declare-datatypes ((TokenValue!259 0))(
  ( (FloatLiteralValue!518 (text!2258 List!1247)) (TokenValueExt!258 (__x!1613 Int)) (Broken!1295 (value!10537 List!1247)) (Object!264) (End!259) (Def!259) (Underscore!259) (Match!259) (Else!259) (Error!259) (Case!259) (If!259) (Extends!259) (Abstract!259) (Class!259) (Val!259) (DelimiterValue!518 (del!319 List!1247)) (KeywordValue!265 (value!10538 List!1247)) (CommentValue!518 (value!10539 List!1247)) (WhitespaceValue!518 (value!10540 List!1247)) (IndentationValue!259 (value!10541 List!1247)) (String!1688) (Int32!259) (Broken!1296 (value!10542 List!1247)) (Boolean!260) (Unit!741) (OperatorValue!262 (op!319 List!1247)) (IdentifierValue!518 (value!10543 List!1247)) (IdentifierValue!519 (value!10544 List!1247)) (WhitespaceValue!519 (value!10545 List!1247)) (True!518) (False!518) (Broken!1297 (value!10546 List!1247)) (Broken!1298 (value!10547 List!1247)) (True!519) (RightBrace!259) (RightBracket!259) (Colon!259) (Null!259) (Comma!259) (LeftBracket!259) (False!519) (LeftBrace!259) (ImaginaryLiteralValue!259 (text!2259 List!1247)) (StringLiteralValue!777 (value!10548 List!1247)) (EOFValue!259 (value!10549 List!1247)) (IdentValue!259 (value!10550 List!1247)) (DelimiterValue!519 (value!10551 List!1247)) (DedentValue!259 (value!10552 List!1247)) (NewLineValue!259 (value!10553 List!1247)) (IntegerValue!777 (value!10554 (_ BitVec 32)) (text!2260 List!1247)) (IntegerValue!778 (value!10555 Int) (text!2261 List!1247)) (Times!259) (Or!259) (Equal!259) (Minus!259) (Broken!1299 (value!10556 List!1247)) (And!259) (Div!259) (LessEqual!259) (Mod!259) (Concat!597) (Not!259) (Plus!259) (SpaceValue!259 (value!10557 List!1247)) (IntegerValue!779 (value!10558 Int) (text!2262 List!1247)) (StringLiteralValue!778 (text!2263 List!1247)) (FloatLiteralValue!519 (text!2264 List!1247)) (BytesLiteralValue!259 (value!10559 List!1247)) (CommentValue!519 (value!10560 List!1247)) (StringLiteralValue!779 (value!10561 List!1247)) (ErrorTokenValue!259 (msg!320 List!1247)) )
))
(declare-datatypes ((TokenValueInjection!342 0))(
  ( (TokenValueInjection!343 (toValue!768 Int) (toChars!627 Int)) )
))
(declare-datatypes ((Rule!338 0))(
  ( (Rule!339 (regex!269 Regex!337) (tag!447 String!1686) (isSeparator!269 Bool) (transformation!269 TokenValueInjection!342)) )
))
(declare-datatypes ((List!1248 0))(
  ( (Nil!1242) (Cons!1242 (h!6639 Rule!338) (t!19983 List!1248)) )
))
(declare-fun rules!2471 () List!1248)

(declare-fun b!75104 () Bool)

(declare-fun inv!1647 (String!1686) Bool)

(declare-fun inv!1649 (TokenValueInjection!342) Bool)

(assert (=> b!75104 (= e!41755 (and tp!49015 (inv!1647 (tag!447 (h!6639 rules!2471))) (inv!1649 (transformation!269 (h!6639 rules!2471))) e!41758))))

(declare-fun b!75106 () Bool)

(declare-fun res!39277 () Bool)

(declare-fun e!41757 () Bool)

(assert (=> b!75106 (=> (not res!39277) (not e!41757))))

(declare-datatypes ((LexerInterface!161 0))(
  ( (LexerInterfaceExt!158 (__x!1614 Int)) (Lexer!159) )
))
(declare-fun thiss!19403 () LexerInterface!161)

(declare-fun rulesInvariant!155 (LexerInterface!161 List!1248) Bool)

(assert (=> b!75106 (= res!39277 (rulesInvariant!155 thiss!19403 rules!2471))))

(declare-fun b!75107 () Bool)

(declare-fun e!41751 () Bool)

(assert (=> b!75107 (= e!41751 false)))

(declare-datatypes ((Token!298 0))(
  ( (Token!299 (value!10562 TokenValue!259) (rule!744 Rule!338) (size!1125 Int) (originalCharacters!320 List!1246)) )
))
(declare-datatypes ((tuple2!1220 0))(
  ( (tuple2!1221 (_1!817 Token!298) (_2!817 List!1246)) )
))
(declare-datatypes ((Option!78 0))(
  ( (None!77) (Some!77 (v!12718 tuple2!1220)) )
))
(declare-fun lt!14178 () Option!78)

(declare-fun input!2238 () List!1246)

(declare-fun maxPrefix!15 (LexerInterface!161 List!1248 List!1246) Option!78)

(assert (=> b!75107 (= lt!14178 (maxPrefix!15 thiss!19403 rules!2471 input!2238))))

(declare-fun b!75108 () Bool)

(declare-fun res!39275 () Bool)

(assert (=> b!75108 (=> (not res!39275) (not e!41757))))

(declare-fun isEmpty!324 (List!1248) Bool)

(assert (=> b!75108 (= res!39275 (not (isEmpty!324 rules!2471)))))

(declare-fun b!75109 () Bool)

(declare-fun e!41753 () Bool)

(declare-fun tp_is_empty!597 () Bool)

(declare-fun tp!49016 () Bool)

(assert (=> b!75109 (= e!41753 (and tp_is_empty!597 tp!49016))))

(declare-fun b!75110 () Bool)

(declare-fun e!41752 () Bool)

(assert (=> b!75110 (= e!41757 e!41752)))

(declare-fun res!39278 () Bool)

(assert (=> b!75110 (=> (not res!39278) (not e!41752))))

(declare-datatypes ((List!1249 0))(
  ( (Nil!1243) (Cons!1243 (h!6640 Token!298) (t!19984 List!1249)) )
))
(declare-datatypes ((IArray!683 0))(
  ( (IArray!684 (innerList!399 List!1249)) )
))
(declare-datatypes ((Conc!341 0))(
  ( (Node!341 (left!948 Conc!341) (right!1278 Conc!341) (csize!912 Int) (cheight!552 Int)) (Leaf!611 (xs!2920 IArray!683) (csize!913 Int)) (Empty!341) )
))
(declare-datatypes ((BalanceConc!686 0))(
  ( (BalanceConc!687 (c!19490 Conc!341)) )
))
(declare-datatypes ((tuple2!1222 0))(
  ( (tuple2!1223 (_1!818 BalanceConc!686) (_2!818 BalanceConc!684)) )
))
(declare-fun lt!14179 () tuple2!1222)

(declare-fun isEmpty!325 (BalanceConc!684) Bool)

(assert (=> b!75110 (= res!39278 (isEmpty!325 (_2!818 lt!14179)))))

(declare-fun lex!69 (LexerInterface!161 List!1248 BalanceConc!684) tuple2!1222)

(declare-fun seqFromList!57 (List!1246) BalanceConc!684)

(assert (=> b!75110 (= lt!14179 (lex!69 thiss!19403 rules!2471 (seqFromList!57 input!2238)))))

(declare-fun res!39279 () Bool)

(assert (=> start!5630 (=> (not res!39279) (not e!41757))))

(get-info :version)

(assert (=> start!5630 (= res!39279 ((_ is Lexer!159) thiss!19403))))

(assert (=> start!5630 e!41757))

(assert (=> start!5630 true))

(assert (=> start!5630 e!41754))

(assert (=> start!5630 e!41753))

(declare-fun b!75105 () Bool)

(assert (=> b!75105 (= e!41752 e!41751)))

(declare-fun res!39276 () Bool)

(assert (=> b!75105 (=> (not res!39276) (not e!41751))))

(declare-fun lt!14180 () List!1249)

(assert (=> b!75105 (= res!39276 (and (or (not ((_ is Cons!1243) lt!14180)) (not ((_ is Nil!1243) (t!19984 lt!14180)))) ((_ is Cons!1243) lt!14180)))))

(declare-fun list!365 (BalanceConc!686) List!1249)

(assert (=> b!75105 (= lt!14180 (list!365 (_1!818 lt!14179)))))

(assert (= (and start!5630 res!39279) b!75108))

(assert (= (and b!75108 res!39275) b!75106))

(assert (= (and b!75106 res!39277) b!75110))

(assert (= (and b!75110 res!39278) b!75105))

(assert (= (and b!75105 res!39276) b!75107))

(assert (= b!75104 b!75102))

(assert (= b!75103 b!75104))

(assert (= (and start!5630 ((_ is Cons!1242) rules!2471)) b!75103))

(assert (= (and start!5630 ((_ is Cons!1240) input!2238)) b!75109))

(declare-fun m!46820 () Bool)

(assert (=> b!75108 m!46820))

(declare-fun m!46822 () Bool)

(assert (=> b!75106 m!46822))

(declare-fun m!46824 () Bool)

(assert (=> b!75107 m!46824))

(declare-fun m!46826 () Bool)

(assert (=> b!75110 m!46826))

(declare-fun m!46828 () Bool)

(assert (=> b!75110 m!46828))

(assert (=> b!75110 m!46828))

(declare-fun m!46830 () Bool)

(assert (=> b!75110 m!46830))

(declare-fun m!46832 () Bool)

(assert (=> b!75105 m!46832))

(declare-fun m!46834 () Bool)

(assert (=> b!75104 m!46834))

(declare-fun m!46836 () Bool)

(assert (=> b!75104 m!46836))

(check-sat (not b!75106) (not b_next!2321) (not b!75107) b_and!3363 b_and!3365 (not b_next!2323) (not b!75103) (not b!75109) tp_is_empty!597 (not b!75110) (not b!75104) (not b!75108) (not b!75105))
(check-sat b_and!3365 b_and!3363 (not b_next!2323) (not b_next!2321))
