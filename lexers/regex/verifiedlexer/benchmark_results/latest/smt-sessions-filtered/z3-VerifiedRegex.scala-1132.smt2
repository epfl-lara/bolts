; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59108 () Bool)

(assert start!59108)

(declare-fun b!616631 () Bool)

(declare-fun b_free!17669 () Bool)

(declare-fun b_next!17685 () Bool)

(assert (=> b!616631 (= b_free!17669 (not b_next!17685))))

(declare-fun tp!190587 () Bool)

(declare-fun b_and!61183 () Bool)

(assert (=> b!616631 (= tp!190587 b_and!61183)))

(declare-fun b_free!17671 () Bool)

(declare-fun b_next!17687 () Bool)

(assert (=> b!616631 (= b_free!17671 (not b_next!17687))))

(declare-fun tp!190586 () Bool)

(declare-fun b_and!61185 () Bool)

(assert (=> b!616631 (= tp!190586 b_and!61185)))

(declare-fun b!616629 () Bool)

(declare-fun b_free!17673 () Bool)

(declare-fun b_next!17689 () Bool)

(assert (=> b!616629 (= b_free!17673 (not b_next!17689))))

(declare-fun tp!190592 () Bool)

(declare-fun b_and!61187 () Bool)

(assert (=> b!616629 (= tp!190592 b_and!61187)))

(declare-fun b_free!17675 () Bool)

(declare-fun b_next!17691 () Bool)

(assert (=> b!616629 (= b_free!17675 (not b_next!17691))))

(declare-fun tp!190591 () Bool)

(declare-fun b_and!61189 () Bool)

(assert (=> b!616629 (= tp!190591 b_and!61189)))

(declare-fun b!616627 () Bool)

(declare-fun res!268448 () Bool)

(declare-fun e!373915 () Bool)

(assert (=> b!616627 (=> (not res!268448) (not e!373915))))

(declare-datatypes ((List!6209 0))(
  ( (Nil!6199) (Cons!6199 (h!11600 (_ BitVec 16)) (t!81448 List!6209)) )
))
(declare-datatypes ((TokenValue!1273 0))(
  ( (FloatLiteralValue!2546 (text!9356 List!6209)) (TokenValueExt!1272 (__x!4446 Int)) (Broken!6365 (value!40439 List!6209)) (Object!1282) (End!1273) (Def!1273) (Underscore!1273) (Match!1273) (Else!1273) (Error!1273) (Case!1273) (If!1273) (Extends!1273) (Abstract!1273) (Class!1273) (Val!1273) (DelimiterValue!2546 (del!1333 List!6209)) (KeywordValue!1279 (value!40440 List!6209)) (CommentValue!2546 (value!40441 List!6209)) (WhitespaceValue!2546 (value!40442 List!6209)) (IndentationValue!1273 (value!40443 List!6209)) (String!8112) (Int32!1273) (Broken!6366 (value!40444 List!6209)) (Boolean!1274) (Unit!11363) (OperatorValue!1276 (op!1333 List!6209)) (IdentifierValue!2546 (value!40445 List!6209)) (IdentifierValue!2547 (value!40446 List!6209)) (WhitespaceValue!2547 (value!40447 List!6209)) (True!2546) (False!2546) (Broken!6367 (value!40448 List!6209)) (Broken!6368 (value!40449 List!6209)) (True!2547) (RightBrace!1273) (RightBracket!1273) (Colon!1273) (Null!1273) (Comma!1273) (LeftBracket!1273) (False!2547) (LeftBrace!1273) (ImaginaryLiteralValue!1273 (text!9357 List!6209)) (StringLiteralValue!3819 (value!40450 List!6209)) (EOFValue!1273 (value!40451 List!6209)) (IdentValue!1273 (value!40452 List!6209)) (DelimiterValue!2547 (value!40453 List!6209)) (DedentValue!1273 (value!40454 List!6209)) (NewLineValue!1273 (value!40455 List!6209)) (IntegerValue!3819 (value!40456 (_ BitVec 32)) (text!9358 List!6209)) (IntegerValue!3820 (value!40457 Int) (text!9359 List!6209)) (Times!1273) (Or!1273) (Equal!1273) (Minus!1273) (Broken!6369 (value!40458 List!6209)) (And!1273) (Div!1273) (LessEqual!1273) (Mod!1273) (Concat!2856) (Not!1273) (Plus!1273) (SpaceValue!1273 (value!40459 List!6209)) (IntegerValue!3821 (value!40460 Int) (text!9360 List!6209)) (StringLiteralValue!3820 (text!9361 List!6209)) (FloatLiteralValue!2547 (text!9362 List!6209)) (BytesLiteralValue!1273 (value!40461 List!6209)) (CommentValue!2547 (value!40462 List!6209)) (StringLiteralValue!3821 (value!40463 List!6209)) (ErrorTokenValue!1273 (msg!1334 List!6209)) )
))
(declare-datatypes ((C!4092 0))(
  ( (C!4093 (val!2272 Int)) )
))
(declare-datatypes ((Regex!1583 0))(
  ( (ElementMatch!1583 (c!113747 C!4092)) (Concat!2857 (regOne!3678 Regex!1583) (regTwo!3678 Regex!1583)) (EmptyExpr!1583) (Star!1583 (reg!1912 Regex!1583)) (EmptyLang!1583) (Union!1583 (regOne!3679 Regex!1583) (regTwo!3679 Regex!1583)) )
))
(declare-datatypes ((String!8113 0))(
  ( (String!8114 (value!40464 String)) )
))
(declare-datatypes ((List!6210 0))(
  ( (Nil!6200) (Cons!6200 (h!11601 C!4092) (t!81449 List!6210)) )
))
(declare-datatypes ((IArray!3933 0))(
  ( (IArray!3934 (innerList!2024 List!6210)) )
))
(declare-datatypes ((Conc!1966 0))(
  ( (Node!1966 (left!4940 Conc!1966) (right!5270 Conc!1966) (csize!4162 Int) (cheight!2177 Int)) (Leaf!3099 (xs!4603 IArray!3933) (csize!4163 Int)) (Empty!1966) )
))
(declare-datatypes ((BalanceConc!3940 0))(
  ( (BalanceConc!3941 (c!113748 Conc!1966)) )
))
(declare-datatypes ((TokenValueInjection!2314 0))(
  ( (TokenValueInjection!2315 (toValue!2160 Int) (toChars!2019 Int)) )
))
(declare-datatypes ((Rule!2298 0))(
  ( (Rule!2299 (regex!1249 Regex!1583) (tag!1511 String!8113) (isSeparator!1249 Bool) (transformation!1249 TokenValueInjection!2314)) )
))
(declare-datatypes ((List!6211 0))(
  ( (Nil!6201) (Cons!6201 (h!11602 Rule!2298) (t!81450 List!6211)) )
))
(declare-fun rules!3744 () List!6211)

(declare-fun isEmpty!4472 (List!6211) Bool)

(assert (=> b!616627 (= res!268448 (not (isEmpty!4472 rules!3744)))))

(declare-fun b!616628 () Bool)

(assert (=> b!616628 (= e!373915 false)))

(declare-fun lt!264428 () Bool)

(declare-fun r!3983 () Rule!2298)

(declare-fun contains!1465 (List!6211 Rule!2298) Bool)

(assert (=> b!616628 (= lt!264428 (contains!1465 rules!3744 r!3983))))

(declare-fun e!373916 () Bool)

(assert (=> b!616629 (= e!373916 (and tp!190592 tp!190591))))

(declare-fun b!616630 () Bool)

(declare-fun res!268445 () Bool)

(assert (=> b!616630 (=> (not res!268445) (not e!373915))))

(declare-fun p!2908 () List!6210)

(declare-fun input!3215 () List!6210)

(declare-fun isPrefix!879 (List!6210 List!6210) Bool)

(assert (=> b!616630 (= res!268445 (isPrefix!879 p!2908 input!3215))))

(declare-fun e!373909 () Bool)

(assert (=> b!616631 (= e!373909 (and tp!190587 tp!190586))))

(declare-fun b!616632 () Bool)

(declare-fun e!373914 () Bool)

(declare-fun e!373912 () Bool)

(declare-fun tp!190594 () Bool)

(assert (=> b!616632 (= e!373914 (and e!373912 tp!190594))))

(declare-fun b!616633 () Bool)

(declare-fun tp!190589 () Bool)

(declare-fun inv!7892 (String!8113) Bool)

(declare-fun inv!7894 (TokenValueInjection!2314) Bool)

(assert (=> b!616633 (= e!373912 (and tp!190589 (inv!7892 (tag!1511 (h!11602 rules!3744))) (inv!7894 (transformation!1249 (h!11602 rules!3744))) e!373916))))

(declare-fun res!268447 () Bool)

(assert (=> start!59108 (=> (not res!268447) (not e!373915))))

(declare-datatypes ((LexerInterface!1137 0))(
  ( (LexerInterfaceExt!1134 (__x!4447 Int)) (Lexer!1135) )
))
(declare-fun thiss!25598 () LexerInterface!1137)

(get-info :version)

(assert (=> start!59108 (= res!268447 ((_ is Lexer!1135) thiss!25598))))

(assert (=> start!59108 e!373915))

(declare-fun e!373910 () Bool)

(assert (=> start!59108 e!373910))

(declare-fun e!373917 () Bool)

(assert (=> start!59108 e!373917))

(assert (=> start!59108 e!373914))

(assert (=> start!59108 true))

(declare-fun e!373913 () Bool)

(assert (=> start!59108 e!373913))

(declare-fun b!616634 () Bool)

(declare-fun tp_is_empty!3525 () Bool)

(declare-fun tp!190590 () Bool)

(assert (=> b!616634 (= e!373913 (and tp_is_empty!3525 tp!190590))))

(declare-fun b!616635 () Bool)

(declare-fun tp!190593 () Bool)

(assert (=> b!616635 (= e!373917 (and tp_is_empty!3525 tp!190593))))

(declare-fun tp!190588 () Bool)

(declare-fun b!616636 () Bool)

(assert (=> b!616636 (= e!373910 (and tp!190588 (inv!7892 (tag!1511 r!3983)) (inv!7894 (transformation!1249 r!3983)) e!373909))))

(declare-fun b!616637 () Bool)

(declare-fun res!268446 () Bool)

(assert (=> b!616637 (=> (not res!268446) (not e!373915))))

(declare-fun rulesInvariant!1098 (LexerInterface!1137 List!6211) Bool)

(assert (=> b!616637 (= res!268446 (rulesInvariant!1098 thiss!25598 rules!3744))))

(assert (= (and start!59108 res!268447) b!616630))

(assert (= (and b!616630 res!268445) b!616627))

(assert (= (and b!616627 res!268448) b!616637))

(assert (= (and b!616637 res!268446) b!616628))

(assert (= b!616636 b!616631))

(assert (= start!59108 b!616636))

(assert (= (and start!59108 ((_ is Cons!6200) p!2908)) b!616635))

(assert (= b!616633 b!616629))

(assert (= b!616632 b!616633))

(assert (= (and start!59108 ((_ is Cons!6201) rules!3744)) b!616632))

(assert (= (and start!59108 ((_ is Cons!6200) input!3215)) b!616634))

(declare-fun m!885241 () Bool)

(assert (=> b!616633 m!885241))

(declare-fun m!885243 () Bool)

(assert (=> b!616633 m!885243))

(declare-fun m!885245 () Bool)

(assert (=> b!616628 m!885245))

(declare-fun m!885247 () Bool)

(assert (=> b!616637 m!885247))

(declare-fun m!885249 () Bool)

(assert (=> b!616627 m!885249))

(declare-fun m!885251 () Bool)

(assert (=> b!616636 m!885251))

(declare-fun m!885253 () Bool)

(assert (=> b!616636 m!885253))

(declare-fun m!885255 () Bool)

(assert (=> b!616630 m!885255))

(check-sat (not b!616635) (not b!616633) (not b!616632) (not b!616634) (not b_next!17685) b_and!61189 (not b_next!17687) (not b!616636) (not b!616627) (not b_next!17691) b_and!61187 tp_is_empty!3525 (not b!616628) b_and!61185 (not b!616630) (not b!616637) (not b_next!17689) b_and!61183)
(check-sat (not b_next!17685) b_and!61189 (not b_next!17687) b_and!61185 (not b_next!17691) b_and!61187 (not b_next!17689) b_and!61183)
