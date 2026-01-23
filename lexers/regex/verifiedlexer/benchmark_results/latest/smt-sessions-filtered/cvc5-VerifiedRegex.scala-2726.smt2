; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!146808 () Bool)

(assert start!146808)

(declare-fun b!1573330 () Bool)

(declare-fun b_free!42159 () Bool)

(declare-fun b_next!42863 () Bool)

(assert (=> b!1573330 (= b_free!42159 (not b_next!42863))))

(declare-fun tp!462829 () Bool)

(declare-fun b_and!109965 () Bool)

(assert (=> b!1573330 (= tp!462829 b_and!109965)))

(declare-fun b_free!42161 () Bool)

(declare-fun b_next!42865 () Bool)

(assert (=> b!1573330 (= b_free!42161 (not b_next!42865))))

(declare-fun tp!462835 () Bool)

(declare-fun b_and!109967 () Bool)

(assert (=> b!1573330 (= tp!462835 b_and!109967)))

(declare-fun b!1573325 () Bool)

(declare-fun b_free!42163 () Bool)

(declare-fun b_next!42867 () Bool)

(assert (=> b!1573325 (= b_free!42163 (not b_next!42867))))

(declare-fun tp!462827 () Bool)

(declare-fun b_and!109969 () Bool)

(assert (=> b!1573325 (= tp!462827 b_and!109969)))

(declare-fun b_free!42165 () Bool)

(declare-fun b_next!42869 () Bool)

(assert (=> b!1573325 (= b_free!42165 (not b_next!42869))))

(declare-fun tp!462834 () Bool)

(declare-fun b_and!109971 () Bool)

(assert (=> b!1573325 (= tp!462834 b_and!109971)))

(declare-fun tp!462832 () Bool)

(declare-datatypes ((List!17227 0))(
  ( (Nil!17157) (Cons!17157 (h!22558 (_ BitVec 16)) (t!143130 List!17227)) )
))
(declare-datatypes ((TokenValue!3102 0))(
  ( (FloatLiteralValue!6204 (text!22159 List!17227)) (TokenValueExt!3101 (__x!11506 Int)) (Broken!15510 (value!95490 List!17227)) (Object!3171) (End!3102) (Def!3102) (Underscore!3102) (Match!3102) (Else!3102) (Error!3102) (Case!3102) (If!3102) (Extends!3102) (Abstract!3102) (Class!3102) (Val!3102) (DelimiterValue!6204 (del!3162 List!17227)) (KeywordValue!3108 (value!95491 List!17227)) (CommentValue!6204 (value!95492 List!17227)) (WhitespaceValue!6204 (value!95493 List!17227)) (IndentationValue!3102 (value!95494 List!17227)) (String!19843) (Int32!3102) (Broken!15511 (value!95495 List!17227)) (Boolean!3103) (Unit!26551) (OperatorValue!3105 (op!3162 List!17227)) (IdentifierValue!6204 (value!95496 List!17227)) (IdentifierValue!6205 (value!95497 List!17227)) (WhitespaceValue!6205 (value!95498 List!17227)) (True!6204) (False!6204) (Broken!15512 (value!95499 List!17227)) (Broken!15513 (value!95500 List!17227)) (True!6205) (RightBrace!3102) (RightBracket!3102) (Colon!3102) (Null!3102) (Comma!3102) (LeftBracket!3102) (False!6205) (LeftBrace!3102) (ImaginaryLiteralValue!3102 (text!22160 List!17227)) (StringLiteralValue!9306 (value!95501 List!17227)) (EOFValue!3102 (value!95502 List!17227)) (IdentValue!3102 (value!95503 List!17227)) (DelimiterValue!6205 (value!95504 List!17227)) (DedentValue!3102 (value!95505 List!17227)) (NewLineValue!3102 (value!95506 List!17227)) (IntegerValue!9306 (value!95507 (_ BitVec 32)) (text!22161 List!17227)) (IntegerValue!9307 (value!95508 Int) (text!22162 List!17227)) (Times!3102) (Or!3102) (Equal!3102) (Minus!3102) (Broken!15514 (value!95509 List!17227)) (And!3102) (Div!3102) (LessEqual!3102) (Mod!3102) (Concat!7442) (Not!3102) (Plus!3102) (SpaceValue!3102 (value!95510 List!17227)) (IntegerValue!9308 (value!95511 Int) (text!22163 List!17227)) (StringLiteralValue!9307 (text!22164 List!17227)) (FloatLiteralValue!6205 (text!22165 List!17227)) (BytesLiteralValue!3102 (value!95512 List!17227)) (CommentValue!6205 (value!95513 List!17227)) (StringLiteralValue!9308 (value!95514 List!17227)) (ErrorTokenValue!3102 (msg!3163 List!17227)) )
))
(declare-datatypes ((C!8854 0))(
  ( (C!8855 (val!5023 Int)) )
))
(declare-datatypes ((List!17228 0))(
  ( (Nil!17158) (Cons!17158 (h!22559 C!8854) (t!143131 List!17228)) )
))
(declare-datatypes ((IArray!11349 0))(
  ( (IArray!11350 (innerList!5732 List!17228)) )
))
(declare-datatypes ((Conc!5672 0))(
  ( (Node!5672 (left!13884 Conc!5672) (right!14214 Conc!5672) (csize!11574 Int) (cheight!5883 Int)) (Leaf!8399 (xs!8476 IArray!11349) (csize!11575 Int)) (Empty!5672) )
))
(declare-datatypes ((BalanceConc!11288 0))(
  ( (BalanceConc!11289 (c!255171 Conc!5672)) )
))
(declare-datatypes ((Regex!4340 0))(
  ( (ElementMatch!4340 (c!255172 C!8854)) (Concat!7443 (regOne!9192 Regex!4340) (regTwo!9192 Regex!4340)) (EmptyExpr!4340) (Star!4340 (reg!4669 Regex!4340)) (EmptyLang!4340) (Union!4340 (regOne!9193 Regex!4340) (regTwo!9193 Regex!4340)) )
))
(declare-datatypes ((String!19844 0))(
  ( (String!19845 (value!95515 String)) )
))
(declare-datatypes ((TokenValueInjection!5864 0))(
  ( (TokenValueInjection!5865 (toValue!4407 Int) (toChars!4266 Int)) )
))
(declare-datatypes ((Rule!5824 0))(
  ( (Rule!5825 (regex!3012 Regex!4340) (tag!3278 String!19844) (isSeparator!3012 Bool) (transformation!3012 TokenValueInjection!5864)) )
))
(declare-datatypes ((Token!5590 0))(
  ( (Token!5591 (value!95516 TokenValue!3102) (rule!4804 Rule!5824) (size!13865 Int) (originalCharacters!3826 List!17228)) )
))
(declare-datatypes ((List!17229 0))(
  ( (Nil!17159) (Cons!17159 (h!22560 Token!5590) (t!143132 List!17229)) )
))
(declare-fun tokens!457 () List!17229)

(declare-fun b!1573319 () Bool)

(declare-fun e!1010314 () Bool)

(declare-fun e!1010312 () Bool)

(declare-fun inv!21 (TokenValue!3102) Bool)

(assert (=> b!1573319 (= e!1010312 (and (inv!21 (value!95516 (h!22560 tokens!457))) e!1010314 tp!462832))))

(declare-fun b!1573320 () Bool)

(declare-fun res!701194 () Bool)

(declare-fun e!1010316 () Bool)

(assert (=> b!1573320 (=> (not res!701194) (not e!1010316))))

(declare-datatypes ((List!17230 0))(
  ( (Nil!17160) (Cons!17160 (h!22561 Rule!5824) (t!143133 List!17230)) )
))
(declare-fun rules!1846 () List!17230)

(declare-fun isEmpty!10262 (List!17230) Bool)

(assert (=> b!1573320 (= res!701194 (not (isEmpty!10262 rules!1846)))))

(declare-fun e!1010321 () Bool)

(declare-fun tp!462830 () Bool)

(declare-fun b!1573321 () Bool)

(declare-fun inv!22571 (String!19844) Bool)

(declare-fun inv!22574 (TokenValueInjection!5864) Bool)

(assert (=> b!1573321 (= e!1010314 (and tp!462830 (inv!22571 (tag!3278 (rule!4804 (h!22560 tokens!457)))) (inv!22574 (transformation!3012 (rule!4804 (h!22560 tokens!457)))) e!1010321))))

(declare-fun b!1573322 () Bool)

(assert (=> b!1573322 (= e!1010316 false)))

(declare-datatypes ((IArray!11351 0))(
  ( (IArray!11352 (innerList!5733 List!17229)) )
))
(declare-datatypes ((Conc!5673 0))(
  ( (Node!5673 (left!13885 Conc!5673) (right!14215 Conc!5673) (csize!11576 Int) (cheight!5884 Int)) (Leaf!8400 (xs!8477 IArray!11351) (csize!11577 Int)) (Empty!5673) )
))
(declare-datatypes ((BalanceConc!11290 0))(
  ( (BalanceConc!11291 (c!255173 Conc!5673)) )
))
(declare-fun lt!546909 () BalanceConc!11290)

(declare-fun seqFromList!1809 (List!17229) BalanceConc!11290)

(assert (=> b!1573322 (= lt!546909 (seqFromList!1809 tokens!457))))

(declare-fun b!1573323 () Bool)

(declare-fun res!701196 () Bool)

(assert (=> b!1573323 (=> (not res!701196) (not e!1010316))))

(declare-datatypes ((LexerInterface!2641 0))(
  ( (LexerInterfaceExt!2638 (__x!11507 Int)) (Lexer!2639) )
))
(declare-fun thiss!17113 () LexerInterface!2641)

(declare-fun rulesProduceEachTokenIndividuallyList!843 (LexerInterface!2641 List!17230 List!17229) Bool)

(assert (=> b!1573323 (= res!701196 (rulesProduceEachTokenIndividuallyList!843 thiss!17113 rules!1846 tokens!457))))

(declare-fun e!1010319 () Bool)

(declare-fun tp!462831 () Bool)

(declare-fun e!1010317 () Bool)

(declare-fun b!1573324 () Bool)

(assert (=> b!1573324 (= e!1010317 (and tp!462831 (inv!22571 (tag!3278 (h!22561 rules!1846))) (inv!22574 (transformation!3012 (h!22561 rules!1846))) e!1010319))))

(declare-fun res!701198 () Bool)

(assert (=> start!146808 (=> (not res!701198) (not e!1010316))))

(assert (=> start!146808 (= res!701198 (is-Lexer!2639 thiss!17113))))

(assert (=> start!146808 e!1010316))

(assert (=> start!146808 true))

(declare-fun e!1010320 () Bool)

(assert (=> start!146808 e!1010320))

(declare-fun e!1010311 () Bool)

(assert (=> start!146808 e!1010311))

(assert (=> b!1573325 (= e!1010321 (and tp!462827 tp!462834))))

(declare-fun tp!462828 () Bool)

(declare-fun b!1573326 () Bool)

(declare-fun inv!22575 (Token!5590) Bool)

(assert (=> b!1573326 (= e!1010311 (and (inv!22575 (h!22560 tokens!457)) e!1010312 tp!462828))))

(declare-fun b!1573327 () Bool)

(declare-fun res!701193 () Bool)

(assert (=> b!1573327 (=> (not res!701193) (not e!1010316))))

(assert (=> b!1573327 (= res!701193 (and (not (is-Nil!17159 tokens!457)) (not (is-Nil!17159 (t!143132 tokens!457)))))))

(declare-fun b!1573328 () Bool)

(declare-fun tp!462833 () Bool)

(assert (=> b!1573328 (= e!1010320 (and e!1010317 tp!462833))))

(declare-fun b!1573329 () Bool)

(declare-fun res!701195 () Bool)

(assert (=> b!1573329 (=> (not res!701195) (not e!1010316))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!334 (LexerInterface!2641 List!17229 List!17230) Bool)

(assert (=> b!1573329 (= res!701195 (tokensListTwoByTwoPredicateSeparableList!334 thiss!17113 tokens!457 rules!1846))))

(assert (=> b!1573330 (= e!1010319 (and tp!462829 tp!462835))))

(declare-fun b!1573331 () Bool)

(declare-fun res!701197 () Bool)

(assert (=> b!1573331 (=> (not res!701197) (not e!1010316))))

(declare-fun rulesInvariant!2310 (LexerInterface!2641 List!17230) Bool)

(assert (=> b!1573331 (= res!701197 (rulesInvariant!2310 thiss!17113 rules!1846))))

(assert (= (and start!146808 res!701198) b!1573320))

(assert (= (and b!1573320 res!701194) b!1573331))

(assert (= (and b!1573331 res!701197) b!1573323))

(assert (= (and b!1573323 res!701196) b!1573329))

(assert (= (and b!1573329 res!701195) b!1573327))

(assert (= (and b!1573327 res!701193) b!1573322))

(assert (= b!1573324 b!1573330))

(assert (= b!1573328 b!1573324))

(assert (= (and start!146808 (is-Cons!17160 rules!1846)) b!1573328))

(assert (= b!1573321 b!1573325))

(assert (= b!1573319 b!1573321))

(assert (= b!1573326 b!1573319))

(assert (= (and start!146808 (is-Cons!17159 tokens!457)) b!1573326))

(declare-fun m!1852317 () Bool)

(assert (=> b!1573322 m!1852317))

(declare-fun m!1852319 () Bool)

(assert (=> b!1573323 m!1852319))

(declare-fun m!1852321 () Bool)

(assert (=> b!1573326 m!1852321))

(declare-fun m!1852323 () Bool)

(assert (=> b!1573320 m!1852323))

(declare-fun m!1852325 () Bool)

(assert (=> b!1573324 m!1852325))

(declare-fun m!1852327 () Bool)

(assert (=> b!1573324 m!1852327))

(declare-fun m!1852329 () Bool)

(assert (=> b!1573329 m!1852329))

(declare-fun m!1852331 () Bool)

(assert (=> b!1573321 m!1852331))

(declare-fun m!1852333 () Bool)

(assert (=> b!1573321 m!1852333))

(declare-fun m!1852335 () Bool)

(assert (=> b!1573319 m!1852335))

(declare-fun m!1852337 () Bool)

(assert (=> b!1573331 m!1852337))

(push 1)

(assert (not b!1573331))

(assert (not b!1573323))

(assert (not b!1573324))

(assert (not b_next!42869))

(assert (not b_next!42867))

(assert (not b!1573319))

(assert (not b_next!42865))

(assert (not b!1573329))

(assert b_and!109965)

(assert b_and!109967)

(assert (not b!1573322))

(assert (not b!1573320))

(assert (not b!1573321))

(assert b_and!109971)

(assert (not b_next!42863))

(assert b_and!109969)

(assert (not b!1573326))

(assert (not b!1573328))

(check-sat)

(pop 1)

(push 1)

(assert b_and!109967)

(assert (not b_next!42869))

(assert (not b_next!42867))

(assert (not b_next!42865))

(assert b_and!109965)

(assert b_and!109969)

(assert b_and!109971)

(assert (not b_next!42863))

(check-sat)

(pop 1)

