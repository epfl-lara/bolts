; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59164 () Bool)

(assert start!59164)

(declare-fun b!617004 () Bool)

(declare-fun b_free!17713 () Bool)

(declare-fun b_next!17729 () Bool)

(assert (=> b!617004 (= b_free!17713 (not b_next!17729))))

(declare-fun tp!190830 () Bool)

(declare-fun b_and!61227 () Bool)

(assert (=> b!617004 (= tp!190830 b_and!61227)))

(declare-fun b_free!17715 () Bool)

(declare-fun b_next!17731 () Bool)

(assert (=> b!617004 (= b_free!17715 (not b_next!17731))))

(declare-fun tp!190834 () Bool)

(declare-fun b_and!61229 () Bool)

(assert (=> b!617004 (= tp!190834 b_and!61229)))

(declare-fun b!617009 () Bool)

(declare-fun b_free!17717 () Bool)

(declare-fun b_next!17733 () Bool)

(assert (=> b!617009 (= b_free!17717 (not b_next!17733))))

(declare-fun tp!190831 () Bool)

(declare-fun b_and!61231 () Bool)

(assert (=> b!617009 (= tp!190831 b_and!61231)))

(declare-fun b_free!17719 () Bool)

(declare-fun b_next!17735 () Bool)

(assert (=> b!617009 (= b_free!17719 (not b_next!17735))))

(declare-fun tp!190829 () Bool)

(declare-fun b_and!61233 () Bool)

(assert (=> b!617009 (= tp!190829 b_and!61233)))

(declare-fun e!374179 () Bool)

(assert (=> b!617004 (= e!374179 (and tp!190830 tp!190834))))

(declare-fun b!617005 () Bool)

(declare-fun e!374173 () Bool)

(declare-fun tp_is_empty!3533 () Bool)

(declare-fun tp!190827 () Bool)

(assert (=> b!617005 (= e!374173 (and tp_is_empty!3533 tp!190827))))

(declare-fun b!617006 () Bool)

(declare-fun e!374174 () Bool)

(declare-fun tp!190835 () Bool)

(assert (=> b!617006 (= e!374174 (and tp_is_empty!3533 tp!190835))))

(declare-fun b!617007 () Bool)

(declare-fun res!268607 () Bool)

(declare-fun e!374177 () Bool)

(assert (=> b!617007 (=> (not res!268607) (not e!374177))))

(declare-datatypes ((C!4100 0))(
  ( (C!4101 (val!2276 Int)) )
))
(declare-datatypes ((List!6223 0))(
  ( (Nil!6213) (Cons!6213 (h!11614 C!4100) (t!81462 List!6223)) )
))
(declare-fun p!2908 () List!6223)

(declare-fun input!3215 () List!6223)

(declare-fun isPrefix!883 (List!6223 List!6223) Bool)

(assert (=> b!617007 (= res!268607 (isPrefix!883 p!2908 input!3215))))

(declare-fun b!617008 () Bool)

(declare-fun res!268604 () Bool)

(assert (=> b!617008 (=> (not res!268604) (not e!374177))))

(declare-datatypes ((List!6224 0))(
  ( (Nil!6214) (Cons!6214 (h!11615 (_ BitVec 16)) (t!81463 List!6224)) )
))
(declare-datatypes ((TokenValue!1277 0))(
  ( (FloatLiteralValue!2554 (text!9384 List!6224)) (TokenValueExt!1276 (__x!4454 Int)) (Broken!6385 (value!40549 List!6224)) (Object!1286) (End!1277) (Def!1277) (Underscore!1277) (Match!1277) (Else!1277) (Error!1277) (Case!1277) (If!1277) (Extends!1277) (Abstract!1277) (Class!1277) (Val!1277) (DelimiterValue!2554 (del!1337 List!6224)) (KeywordValue!1283 (value!40550 List!6224)) (CommentValue!2554 (value!40551 List!6224)) (WhitespaceValue!2554 (value!40552 List!6224)) (IndentationValue!1277 (value!40553 List!6224)) (String!8132) (Int32!1277) (Broken!6386 (value!40554 List!6224)) (Boolean!1278) (Unit!11367) (OperatorValue!1280 (op!1337 List!6224)) (IdentifierValue!2554 (value!40555 List!6224)) (IdentifierValue!2555 (value!40556 List!6224)) (WhitespaceValue!2555 (value!40557 List!6224)) (True!2554) (False!2554) (Broken!6387 (value!40558 List!6224)) (Broken!6388 (value!40559 List!6224)) (True!2555) (RightBrace!1277) (RightBracket!1277) (Colon!1277) (Null!1277) (Comma!1277) (LeftBracket!1277) (False!2555) (LeftBrace!1277) (ImaginaryLiteralValue!1277 (text!9385 List!6224)) (StringLiteralValue!3831 (value!40560 List!6224)) (EOFValue!1277 (value!40561 List!6224)) (IdentValue!1277 (value!40562 List!6224)) (DelimiterValue!2555 (value!40563 List!6224)) (DedentValue!1277 (value!40564 List!6224)) (NewLineValue!1277 (value!40565 List!6224)) (IntegerValue!3831 (value!40566 (_ BitVec 32)) (text!9386 List!6224)) (IntegerValue!3832 (value!40567 Int) (text!9387 List!6224)) (Times!1277) (Or!1277) (Equal!1277) (Minus!1277) (Broken!6389 (value!40568 List!6224)) (And!1277) (Div!1277) (LessEqual!1277) (Mod!1277) (Concat!2864) (Not!1277) (Plus!1277) (SpaceValue!1277 (value!40569 List!6224)) (IntegerValue!3833 (value!40570 Int) (text!9388 List!6224)) (StringLiteralValue!3832 (text!9389 List!6224)) (FloatLiteralValue!2555 (text!9390 List!6224)) (BytesLiteralValue!1277 (value!40571 List!6224)) (CommentValue!2555 (value!40572 List!6224)) (StringLiteralValue!3833 (value!40573 List!6224)) (ErrorTokenValue!1277 (msg!1338 List!6224)) )
))
(declare-datatypes ((Regex!1587 0))(
  ( (ElementMatch!1587 (c!113762 C!4100)) (Concat!2865 (regOne!3686 Regex!1587) (regTwo!3686 Regex!1587)) (EmptyExpr!1587) (Star!1587 (reg!1916 Regex!1587)) (EmptyLang!1587) (Union!1587 (regOne!3687 Regex!1587) (regTwo!3687 Regex!1587)) )
))
(declare-datatypes ((String!8133 0))(
  ( (String!8134 (value!40574 String)) )
))
(declare-datatypes ((IArray!3941 0))(
  ( (IArray!3942 (innerList!2028 List!6223)) )
))
(declare-datatypes ((Conc!1970 0))(
  ( (Node!1970 (left!4950 Conc!1970) (right!5280 Conc!1970) (csize!4170 Int) (cheight!2181 Int)) (Leaf!3105 (xs!4607 IArray!3941) (csize!4171 Int)) (Empty!1970) )
))
(declare-datatypes ((BalanceConc!3948 0))(
  ( (BalanceConc!3949 (c!113763 Conc!1970)) )
))
(declare-datatypes ((TokenValueInjection!2322 0))(
  ( (TokenValueInjection!2323 (toValue!2166 Int) (toChars!2025 Int)) )
))
(declare-datatypes ((Rule!2306 0))(
  ( (Rule!2307 (regex!1253 Regex!1587) (tag!1515 String!8133) (isSeparator!1253 Bool) (transformation!1253 TokenValueInjection!2322)) )
))
(declare-datatypes ((List!6225 0))(
  ( (Nil!6215) (Cons!6215 (h!11616 Rule!2306) (t!81464 List!6225)) )
))
(declare-fun rules!3744 () List!6225)

(declare-fun r!3983 () Rule!2306)

(declare-fun contains!1470 (List!6225 Rule!2306) Bool)

(assert (=> b!617008 (= res!268604 (contains!1470 rules!3744 r!3983))))

(declare-fun e!374182 () Bool)

(assert (=> b!617009 (= e!374182 (and tp!190831 tp!190829))))

(declare-fun b!617011 () Bool)

(assert (=> b!617011 (= e!374177 false)))

(declare-fun lt!264462 () Bool)

(declare-datatypes ((LexerInterface!1141 0))(
  ( (LexerInterfaceExt!1138 (__x!4455 Int)) (Lexer!1139) )
))
(declare-fun thiss!25598 () LexerInterface!1141)

(declare-fun rulesValidInductive!476 (LexerInterface!1141 List!6225) Bool)

(assert (=> b!617011 (= lt!264462 (rulesValidInductive!476 thiss!25598 rules!3744))))

(declare-fun b!617012 () Bool)

(declare-fun res!268605 () Bool)

(assert (=> b!617012 (=> (not res!268605) (not e!374177))))

(declare-fun isEmpty!4476 (List!6225) Bool)

(assert (=> b!617012 (= res!268605 (not (isEmpty!4476 rules!3744)))))

(declare-fun b!617013 () Bool)

(declare-fun res!268606 () Bool)

(assert (=> b!617013 (=> (not res!268606) (not e!374177))))

(declare-fun rulesInvariant!1102 (LexerInterface!1141 List!6225) Bool)

(assert (=> b!617013 (= res!268606 (rulesInvariant!1102 thiss!25598 rules!3744))))

(declare-fun tp!190828 () Bool)

(declare-fun b!617014 () Bool)

(declare-fun e!374181 () Bool)

(declare-fun inv!7902 (String!8133) Bool)

(declare-fun inv!7904 (TokenValueInjection!2322) Bool)

(assert (=> b!617014 (= e!374181 (and tp!190828 (inv!7902 (tag!1515 r!3983)) (inv!7904 (transformation!1253 r!3983)) e!374182))))

(declare-fun b!617015 () Bool)

(declare-fun e!374178 () Bool)

(declare-fun e!374176 () Bool)

(declare-fun tp!190833 () Bool)

(assert (=> b!617015 (= e!374178 (and e!374176 tp!190833))))

(declare-fun b!617010 () Bool)

(declare-fun tp!190832 () Bool)

(assert (=> b!617010 (= e!374176 (and tp!190832 (inv!7902 (tag!1515 (h!11616 rules!3744))) (inv!7904 (transformation!1253 (h!11616 rules!3744))) e!374179))))

(declare-fun res!268603 () Bool)

(assert (=> start!59164 (=> (not res!268603) (not e!374177))))

(get-info :version)

(assert (=> start!59164 (= res!268603 ((_ is Lexer!1139) thiss!25598))))

(assert (=> start!59164 e!374177))

(assert (=> start!59164 e!374181))

(assert (=> start!59164 e!374174))

(assert (=> start!59164 e!374178))

(assert (=> start!59164 true))

(assert (=> start!59164 e!374173))

(assert (= (and start!59164 res!268603) b!617007))

(assert (= (and b!617007 res!268607) b!617012))

(assert (= (and b!617012 res!268605) b!617013))

(assert (= (and b!617013 res!268606) b!617008))

(assert (= (and b!617008 res!268604) b!617011))

(assert (= b!617014 b!617009))

(assert (= start!59164 b!617014))

(assert (= (and start!59164 ((_ is Cons!6213) p!2908)) b!617006))

(assert (= b!617010 b!617004))

(assert (= b!617015 b!617010))

(assert (= (and start!59164 ((_ is Cons!6215) rules!3744)) b!617015))

(assert (= (and start!59164 ((_ is Cons!6213) input!3215)) b!617005))

(declare-fun m!885457 () Bool)

(assert (=> b!617012 m!885457))

(declare-fun m!885459 () Bool)

(assert (=> b!617010 m!885459))

(declare-fun m!885461 () Bool)

(assert (=> b!617010 m!885461))

(declare-fun m!885463 () Bool)

(assert (=> b!617014 m!885463))

(declare-fun m!885465 () Bool)

(assert (=> b!617014 m!885465))

(declare-fun m!885467 () Bool)

(assert (=> b!617008 m!885467))

(declare-fun m!885469 () Bool)

(assert (=> b!617007 m!885469))

(declare-fun m!885471 () Bool)

(assert (=> b!617011 m!885471))

(declare-fun m!885473 () Bool)

(assert (=> b!617013 m!885473))

(check-sat (not b!617012) (not b!617007) b_and!61227 b_and!61229 (not b!617014) (not b_next!17729) (not b!617005) (not b!617015) (not b!617010) (not b_next!17731) (not b!617013) b_and!61231 tp_is_empty!3533 b_and!61233 (not b!617008) (not b!617006) (not b_next!17735) (not b!617011) (not b_next!17733))
(check-sat b_and!61227 b_and!61229 b_and!61233 (not b_next!17735) (not b_next!17729) (not b_next!17733) (not b_next!17731) b_and!61231)
