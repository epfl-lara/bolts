; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!59962 () Bool)

(assert start!59962)

(declare-fun b!622224 () Bool)

(declare-fun b_free!18169 () Bool)

(declare-fun b_next!18185 () Bool)

(assert (=> b!622224 (= b_free!18169 (not b_next!18185))))

(declare-fun tp!193194 () Bool)

(declare-fun b_and!61827 () Bool)

(assert (=> b!622224 (= tp!193194 b_and!61827)))

(declare-fun b_free!18171 () Bool)

(declare-fun b_next!18187 () Bool)

(assert (=> b!622224 (= b_free!18171 (not b_next!18187))))

(declare-fun tp!193196 () Bool)

(declare-fun b_and!61829 () Bool)

(assert (=> b!622224 (= tp!193196 b_and!61829)))

(declare-fun b!622222 () Bool)

(declare-fun e!377663 () Bool)

(declare-fun e!377667 () Bool)

(assert (=> b!622222 (= e!377663 e!377667)))

(declare-fun res!270759 () Bool)

(assert (=> b!622222 (=> (not res!270759) (not e!377667))))

(declare-fun lt!266140 () Int)

(declare-fun from!852 () Int)

(declare-datatypes ((List!6373 0))(
  ( (Nil!6363) (Cons!6363 (h!11764 (_ BitVec 16)) (t!81880 List!6373)) )
))
(declare-datatypes ((TokenValue!1316 0))(
  ( (FloatLiteralValue!2632 (text!9657 List!6373)) (TokenValueExt!1315 (__x!4532 Int)) (Broken!6580 (value!41661 List!6373)) (Object!1325) (End!1316) (Def!1316) (Underscore!1316) (Match!1316) (Else!1316) (Error!1316) (Case!1316) (If!1316) (Extends!1316) (Abstract!1316) (Class!1316) (Val!1316) (DelimiterValue!2632 (del!1376 List!6373)) (KeywordValue!1322 (value!41662 List!6373)) (CommentValue!2632 (value!41663 List!6373)) (WhitespaceValue!2632 (value!41664 List!6373)) (IndentationValue!1316 (value!41665 List!6373)) (String!8329) (Int32!1316) (Broken!6581 (value!41666 List!6373)) (Boolean!1317) (Unit!11464) (OperatorValue!1319 (op!1376 List!6373)) (IdentifierValue!2632 (value!41667 List!6373)) (IdentifierValue!2633 (value!41668 List!6373)) (WhitespaceValue!2633 (value!41669 List!6373)) (True!2632) (False!2632) (Broken!6582 (value!41670 List!6373)) (Broken!6583 (value!41671 List!6373)) (True!2633) (RightBrace!1316) (RightBracket!1316) (Colon!1316) (Null!1316) (Comma!1316) (LeftBracket!1316) (False!2633) (LeftBrace!1316) (ImaginaryLiteralValue!1316 (text!9658 List!6373)) (StringLiteralValue!3948 (value!41672 List!6373)) (EOFValue!1316 (value!41673 List!6373)) (IdentValue!1316 (value!41674 List!6373)) (DelimiterValue!2633 (value!41675 List!6373)) (DedentValue!1316 (value!41676 List!6373)) (NewLineValue!1316 (value!41677 List!6373)) (IntegerValue!3948 (value!41678 (_ BitVec 32)) (text!9659 List!6373)) (IntegerValue!3949 (value!41679 Int) (text!9660 List!6373)) (Times!1316) (Or!1316) (Equal!1316) (Minus!1316) (Broken!6584 (value!41680 List!6373)) (And!1316) (Div!1316) (LessEqual!1316) (Mod!1316) (Concat!2942) (Not!1316) (Plus!1316) (SpaceValue!1316 (value!41681 List!6373)) (IntegerValue!3950 (value!41682 Int) (text!9661 List!6373)) (StringLiteralValue!3949 (text!9662 List!6373)) (FloatLiteralValue!2633 (text!9663 List!6373)) (BytesLiteralValue!1316 (value!41683 List!6373)) (CommentValue!2633 (value!41684 List!6373)) (StringLiteralValue!3950 (value!41685 List!6373)) (ErrorTokenValue!1316 (msg!1377 List!6373)) )
))
(declare-datatypes ((String!8330 0))(
  ( (String!8331 (value!41686 String)) )
))
(declare-datatypes ((C!4178 0))(
  ( (C!4179 (val!2315 Int)) )
))
(declare-datatypes ((List!6374 0))(
  ( (Nil!6364) (Cons!6364 (h!11765 C!4178) (t!81881 List!6374)) )
))
(declare-datatypes ((IArray!4051 0))(
  ( (IArray!4052 (innerList!2083 List!6374)) )
))
(declare-datatypes ((Conc!2025 0))(
  ( (Node!2025 (left!5045 Conc!2025) (right!5375 Conc!2025) (csize!4280 Int) (cheight!2236 Int)) (Leaf!3180 (xs!4662 IArray!4051) (csize!4281 Int)) (Empty!2025) )
))
(declare-datatypes ((BalanceConc!4058 0))(
  ( (BalanceConc!4059 (c!114390 Conc!2025)) )
))
(declare-datatypes ((TokenValueInjection!2400 0))(
  ( (TokenValueInjection!2401 (toValue!2217 Int) (toChars!2076 Int)) )
))
(declare-datatypes ((Regex!1626 0))(
  ( (ElementMatch!1626 (c!114391 C!4178)) (Concat!2943 (regOne!3764 Regex!1626) (regTwo!3764 Regex!1626)) (EmptyExpr!1626) (Star!1626 (reg!1955 Regex!1626)) (EmptyLang!1626) (Union!1626 (regOne!3765 Regex!1626) (regTwo!3765 Regex!1626)) )
))
(declare-datatypes ((Rule!2384 0))(
  ( (Rule!2385 (regex!1292 Regex!1626) (tag!1554 String!8330) (isSeparator!1292 Bool) (transformation!1292 TokenValueInjection!2400)) )
))
(declare-datatypes ((Token!2308 0))(
  ( (Token!2309 (value!41687 TokenValue!1316) (rule!2088 Rule!2384) (size!4962 Int) (originalCharacters!1325 List!6374)) )
))
(declare-fun separatorToken!136 () Token!2308)

(assert (=> b!622222 (= res!270759 (and (<= from!852 lt!266140) (isSeparator!1292 (rule!2088 separatorToken!136)) (>= from!852 lt!266140)))))

(declare-datatypes ((List!6375 0))(
  ( (Nil!6365) (Cons!6365 (h!11766 Token!2308) (t!81882 List!6375)) )
))
(declare-datatypes ((IArray!4053 0))(
  ( (IArray!4054 (innerList!2084 List!6375)) )
))
(declare-datatypes ((Conc!2026 0))(
  ( (Node!2026 (left!5046 Conc!2026) (right!5376 Conc!2026) (csize!4282 Int) (cheight!2237 Int)) (Leaf!3181 (xs!4663 IArray!4053) (csize!4283 Int)) (Empty!2026) )
))
(declare-datatypes ((BalanceConc!4060 0))(
  ( (BalanceConc!4061 (c!114392 Conc!2026)) )
))
(declare-fun v!6361 () BalanceConc!4060)

(declare-fun size!4963 (BalanceConc!4060) Int)

(assert (=> b!622222 (= lt!266140 (size!4963 v!6361))))

(declare-fun res!270758 () Bool)

(assert (=> start!59962 (=> (not res!270758) (not e!377663))))

(declare-datatypes ((LexerInterface!1180 0))(
  ( (LexerInterfaceExt!1177 (__x!4533 Int)) (Lexer!1178) )
))
(declare-fun thiss!14007 () LexerInterface!1180)

(assert (=> start!59962 (= res!270758 (and (is-Lexer!1178 thiss!14007) (>= from!852 0)))))

(assert (=> start!59962 e!377663))

(assert (=> start!59962 true))

(declare-fun e!377662 () Bool)

(declare-fun inv!8054 (BalanceConc!4060) Bool)

(assert (=> start!59962 (and (inv!8054 v!6361) e!377662)))

(declare-fun e!377661 () Bool)

(declare-fun inv!8055 (Token!2308) Bool)

(assert (=> start!59962 (and (inv!8055 separatorToken!136) e!377661)))

(declare-fun tp!193193 () Bool)

(declare-fun b!622223 () Bool)

(declare-fun e!377665 () Bool)

(declare-fun inv!21 (TokenValue!1316) Bool)

(assert (=> b!622223 (= e!377661 (and (inv!21 (value!41687 separatorToken!136)) e!377665 tp!193193))))

(declare-fun e!377666 () Bool)

(assert (=> b!622224 (= e!377666 (and tp!193194 tp!193196))))

(declare-fun b!622225 () Bool)

(declare-fun tp!193195 () Bool)

(declare-fun inv!8056 (Conc!2026) Bool)

(assert (=> b!622225 (= e!377662 (and (inv!8056 (c!114392 v!6361)) tp!193195))))

(declare-fun b!622226 () Bool)

(declare-fun tp!193192 () Bool)

(declare-fun inv!8051 (String!8330) Bool)

(declare-fun inv!8057 (TokenValueInjection!2400) Bool)

(assert (=> b!622226 (= e!377665 (and tp!193192 (inv!8051 (tag!1554 (rule!2088 separatorToken!136))) (inv!8057 (transformation!1292 (rule!2088 separatorToken!136))) e!377666))))

(declare-fun b!622227 () Bool)

(assert (=> b!622227 (= e!377667 false)))

(declare-fun lt!266139 () List!6375)

(declare-fun dropList!255 (BalanceConc!4060 Int) List!6375)

(assert (=> b!622227 (= lt!266139 (dropList!255 v!6361 from!852))))

(assert (= (and start!59962 res!270758) b!622222))

(assert (= (and b!622222 res!270759) b!622227))

(assert (= start!59962 b!622225))

(assert (= b!622226 b!622224))

(assert (= b!622223 b!622226))

(assert (= start!59962 b!622223))

(declare-fun m!890367 () Bool)

(assert (=> b!622226 m!890367))

(declare-fun m!890369 () Bool)

(assert (=> b!622226 m!890369))

(declare-fun m!890371 () Bool)

(assert (=> b!622222 m!890371))

(declare-fun m!890373 () Bool)

(assert (=> start!59962 m!890373))

(declare-fun m!890375 () Bool)

(assert (=> start!59962 m!890375))

(declare-fun m!890377 () Bool)

(assert (=> b!622225 m!890377))

(declare-fun m!890379 () Bool)

(assert (=> b!622227 m!890379))

(declare-fun m!890381 () Bool)

(assert (=> b!622223 m!890381))

(push 1)

(assert (not b!622227))

(assert (not start!59962))

(assert (not b!622223))

(assert (not b_next!18185))

(assert (not b!622226))

(assert b_and!61827)

(assert (not b!622222))

(assert (not b_next!18187))

(assert (not b!622225))

(assert b_and!61829)

(check-sat)

(pop 1)

(push 1)

(assert b_and!61827)

(assert b_and!61829)

(assert (not b_next!18187))

(assert (not b_next!18185))

(check-sat)

(pop 1)

