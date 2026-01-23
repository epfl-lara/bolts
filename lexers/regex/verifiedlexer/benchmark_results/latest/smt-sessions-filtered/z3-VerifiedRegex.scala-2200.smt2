; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108202 () Bool)

(assert start!108202)

(declare-fun b!1212169 () Bool)

(declare-fun b_free!28873 () Bool)

(declare-fun b_next!29577 () Bool)

(assert (=> b!1212169 (= b_free!28873 (not b_next!29577))))

(declare-fun tp!343491 () Bool)

(declare-fun b_and!82097 () Bool)

(assert (=> b!1212169 (= tp!343491 b_and!82097)))

(declare-fun b_free!28875 () Bool)

(declare-fun b_next!29579 () Bool)

(assert (=> b!1212169 (= b_free!28875 (not b_next!29579))))

(declare-fun tp!343484 () Bool)

(declare-fun b_and!82099 () Bool)

(assert (=> b!1212169 (= tp!343484 b_and!82099)))

(declare-fun b!1212178 () Bool)

(declare-fun b_free!28877 () Bool)

(declare-fun b_next!29581 () Bool)

(assert (=> b!1212178 (= b_free!28877 (not b_next!29581))))

(declare-fun tp!343485 () Bool)

(declare-fun b_and!82101 () Bool)

(assert (=> b!1212178 (= tp!343485 b_and!82101)))

(declare-fun b_free!28879 () Bool)

(declare-fun b_next!29583 () Bool)

(assert (=> b!1212178 (= b_free!28879 (not b_next!29583))))

(declare-fun tp!343489 () Bool)

(declare-fun b_and!82103 () Bool)

(assert (=> b!1212178 (= tp!343489 b_and!82103)))

(declare-fun b!1212167 () Bool)

(declare-fun e!777716 () Bool)

(declare-fun e!777722 () Bool)

(declare-fun tp!343486 () Bool)

(assert (=> b!1212167 (= e!777716 (and e!777722 tp!343486))))

(declare-fun b!1212168 () Bool)

(declare-fun res!545124 () Bool)

(declare-fun e!777713 () Bool)

(assert (=> b!1212168 (=> (not res!545124) (not e!777713))))

(declare-datatypes ((List!12334 0))(
  ( (Nil!12276) (Cons!12276 (h!17677 (_ BitVec 16)) (t!112766 List!12334)) )
))
(declare-datatypes ((TokenValue!2173 0))(
  ( (FloatLiteralValue!4346 (text!15656 List!12334)) (TokenValueExt!2172 (__x!8061 Int)) (Broken!10865 (value!68563 List!12334)) (Object!2230) (End!2173) (Def!2173) (Underscore!2173) (Match!2173) (Else!2173) (Error!2173) (Case!2173) (If!2173) (Extends!2173) (Abstract!2173) (Class!2173) (Val!2173) (DelimiterValue!4346 (del!2233 List!12334)) (KeywordValue!2179 (value!68564 List!12334)) (CommentValue!4346 (value!68565 List!12334)) (WhitespaceValue!4346 (value!68566 List!12334)) (IndentationValue!2173 (value!68567 List!12334)) (String!14996) (Int32!2173) (Broken!10866 (value!68568 List!12334)) (Boolean!2174) (Unit!18617) (OperatorValue!2176 (op!2233 List!12334)) (IdentifierValue!4346 (value!68569 List!12334)) (IdentifierValue!4347 (value!68570 List!12334)) (WhitespaceValue!4347 (value!68571 List!12334)) (True!4346) (False!4346) (Broken!10867 (value!68572 List!12334)) (Broken!10868 (value!68573 List!12334)) (True!4347) (RightBrace!2173) (RightBracket!2173) (Colon!2173) (Null!2173) (Comma!2173) (LeftBracket!2173) (False!4347) (LeftBrace!2173) (ImaginaryLiteralValue!2173 (text!15657 List!12334)) (StringLiteralValue!6519 (value!68574 List!12334)) (EOFValue!2173 (value!68575 List!12334)) (IdentValue!2173 (value!68576 List!12334)) (DelimiterValue!4347 (value!68577 List!12334)) (DedentValue!2173 (value!68578 List!12334)) (NewLineValue!2173 (value!68579 List!12334)) (IntegerValue!6519 (value!68580 (_ BitVec 32)) (text!15658 List!12334)) (IntegerValue!6520 (value!68581 Int) (text!15659 List!12334)) (Times!2173) (Or!2173) (Equal!2173) (Minus!2173) (Broken!10869 (value!68582 List!12334)) (And!2173) (Div!2173) (LessEqual!2173) (Mod!2173) (Concat!5548) (Not!2173) (Plus!2173) (SpaceValue!2173 (value!68583 List!12334)) (IntegerValue!6521 (value!68584 Int) (text!15660 List!12334)) (StringLiteralValue!6520 (text!15661 List!12334)) (FloatLiteralValue!4347 (text!15662 List!12334)) (BytesLiteralValue!2173 (value!68585 List!12334)) (CommentValue!4347 (value!68586 List!12334)) (StringLiteralValue!6521 (value!68587 List!12334)) (ErrorTokenValue!2173 (msg!2234 List!12334)) )
))
(declare-datatypes ((String!14997 0))(
  ( (String!14998 (value!68588 String)) )
))
(declare-datatypes ((C!7068 0))(
  ( (C!7069 (val!4064 Int)) )
))
(declare-datatypes ((List!12335 0))(
  ( (Nil!12277) (Cons!12277 (h!17678 C!7068) (t!112767 List!12335)) )
))
(declare-datatypes ((IArray!8065 0))(
  ( (IArray!8066 (innerList!4090 List!12335)) )
))
(declare-datatypes ((Conc!4030 0))(
  ( (Node!4030 (left!10658 Conc!4030) (right!10988 Conc!4030) (csize!8290 Int) (cheight!4241 Int)) (Leaf!6231 (xs!6741 IArray!8065) (csize!8291 Int)) (Empty!4030) )
))
(declare-datatypes ((BalanceConc!7992 0))(
  ( (BalanceConc!7993 (c!202978 Conc!4030)) )
))
(declare-datatypes ((Regex!3375 0))(
  ( (ElementMatch!3375 (c!202979 C!7068)) (Concat!5549 (regOne!7262 Regex!3375) (regTwo!7262 Regex!3375)) (EmptyExpr!3375) (Star!3375 (reg!3704 Regex!3375)) (EmptyLang!3375) (Union!3375 (regOne!7263 Regex!3375) (regTwo!7263 Regex!3375)) )
))
(declare-datatypes ((TokenValueInjection!4042 0))(
  ( (TokenValueInjection!4043 (toValue!3226 Int) (toChars!3085 Int)) )
))
(declare-datatypes ((Rule!4010 0))(
  ( (Rule!4011 (regex!2105 Regex!3375) (tag!2367 String!14997) (isSeparator!2105 Bool) (transformation!2105 TokenValueInjection!4042)) )
))
(declare-datatypes ((Token!3872 0))(
  ( (Token!3873 (value!68589 TokenValue!2173) (rule!3526 Rule!4010) (size!9765 Int) (originalCharacters!2659 List!12335)) )
))
(declare-datatypes ((List!12336 0))(
  ( (Nil!12278) (Cons!12278 (h!17679 Token!3872) (t!112768 List!12336)) )
))
(declare-fun tokens!556 () List!12336)

(declare-datatypes ((LexerInterface!1800 0))(
  ( (LexerInterfaceExt!1797 (__x!8062 Int)) (Lexer!1798) )
))
(declare-fun thiss!20528 () LexerInterface!1800)

(declare-datatypes ((List!12337 0))(
  ( (Nil!12279) (Cons!12279 (h!17680 Rule!4010) (t!112769 List!12337)) )
))
(declare-fun rules!2728 () List!12337)

(declare-fun input!2346 () List!12335)

(declare-datatypes ((tuple2!12150 0))(
  ( (tuple2!12151 (_1!6922 List!12336) (_2!6922 List!12335)) )
))
(declare-fun lexList!430 (LexerInterface!1800 List!12337 List!12335) tuple2!12150)

(assert (=> b!1212168 (= res!545124 (= (_1!6922 (lexList!430 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun e!777717 () Bool)

(assert (=> b!1212169 (= e!777717 (and tp!343491 tp!343484))))

(declare-fun b!1212171 () Bool)

(declare-fun res!545123 () Bool)

(assert (=> b!1212171 (=> (not res!545123) (not e!777713))))

(declare-fun rulesInvariant!1674 (LexerInterface!1800 List!12337) Bool)

(assert (=> b!1212171 (= res!545123 (rulesInvariant!1674 thiss!20528 rules!2728))))

(declare-fun e!777723 () Bool)

(declare-fun b!1212172 () Bool)

(declare-fun tp!343492 () Bool)

(declare-fun e!777715 () Bool)

(declare-fun inv!16464 (String!14997) Bool)

(declare-fun inv!16467 (TokenValueInjection!4042) Bool)

(assert (=> b!1212172 (= e!777723 (and tp!343492 (inv!16464 (tag!2367 (rule!3526 (h!17679 tokens!556)))) (inv!16467 (transformation!2105 (rule!3526 (h!17679 tokens!556)))) e!777715))))

(declare-fun b!1212173 () Bool)

(declare-fun res!545122 () Bool)

(assert (=> b!1212173 (=> (not res!545122) (not e!777713))))

(declare-fun isEmpty!7319 (List!12337) Bool)

(assert (=> b!1212173 (= res!545122 (not (isEmpty!7319 rules!2728)))))

(declare-fun res!545125 () Bool)

(assert (=> start!108202 (=> (not res!545125) (not e!777713))))

(get-info :version)

(assert (=> start!108202 (= res!545125 ((_ is Lexer!1798) thiss!20528))))

(assert (=> start!108202 e!777713))

(assert (=> start!108202 true))

(assert (=> start!108202 e!777716))

(declare-fun e!777720 () Bool)

(assert (=> start!108202 e!777720))

(declare-fun e!777721 () Bool)

(assert (=> start!108202 e!777721))

(declare-fun tp!343493 () Bool)

(declare-fun b!1212170 () Bool)

(assert (=> b!1212170 (= e!777722 (and tp!343493 (inv!16464 (tag!2367 (h!17680 rules!2728))) (inv!16467 (transformation!2105 (h!17680 rules!2728))) e!777717))))

(declare-fun b!1212174 () Bool)

(assert (=> b!1212174 (= e!777713 false)))

(declare-fun lt!414699 () Bool)

(declare-fun rulesValidInductive!655 (LexerInterface!1800 List!12337) Bool)

(assert (=> b!1212174 (= lt!414699 (rulesValidInductive!655 thiss!20528 rules!2728))))

(declare-fun e!777718 () Bool)

(declare-fun tp!343490 () Bool)

(declare-fun b!1212175 () Bool)

(declare-fun inv!16468 (Token!3872) Bool)

(assert (=> b!1212175 (= e!777721 (and (inv!16468 (h!17679 tokens!556)) e!777718 tp!343490))))

(declare-fun b!1212176 () Bool)

(declare-fun res!545126 () Bool)

(assert (=> b!1212176 (=> (not res!545126) (not e!777713))))

(assert (=> b!1212176 (= res!545126 (not ((_ is Nil!12278) tokens!556)))))

(declare-fun tp!343487 () Bool)

(declare-fun b!1212177 () Bool)

(declare-fun inv!21 (TokenValue!2173) Bool)

(assert (=> b!1212177 (= e!777718 (and (inv!21 (value!68589 (h!17679 tokens!556))) e!777723 tp!343487))))

(assert (=> b!1212178 (= e!777715 (and tp!343485 tp!343489))))

(declare-fun b!1212179 () Bool)

(declare-fun tp_is_empty!6271 () Bool)

(declare-fun tp!343488 () Bool)

(assert (=> b!1212179 (= e!777720 (and tp_is_empty!6271 tp!343488))))

(assert (= (and start!108202 res!545125) b!1212173))

(assert (= (and b!1212173 res!545122) b!1212171))

(assert (= (and b!1212171 res!545123) b!1212168))

(assert (= (and b!1212168 res!545124) b!1212176))

(assert (= (and b!1212176 res!545126) b!1212174))

(assert (= b!1212170 b!1212169))

(assert (= b!1212167 b!1212170))

(assert (= (and start!108202 ((_ is Cons!12279) rules!2728)) b!1212167))

(assert (= (and start!108202 ((_ is Cons!12277) input!2346)) b!1212179))

(assert (= b!1212172 b!1212178))

(assert (= b!1212177 b!1212172))

(assert (= b!1212175 b!1212177))

(assert (= (and start!108202 ((_ is Cons!12278) tokens!556)) b!1212175))

(declare-fun m!1387555 () Bool)

(assert (=> b!1212171 m!1387555))

(declare-fun m!1387557 () Bool)

(assert (=> b!1212174 m!1387557))

(declare-fun m!1387559 () Bool)

(assert (=> b!1212177 m!1387559))

(declare-fun m!1387561 () Bool)

(assert (=> b!1212173 m!1387561))

(declare-fun m!1387563 () Bool)

(assert (=> b!1212172 m!1387563))

(declare-fun m!1387565 () Bool)

(assert (=> b!1212172 m!1387565))

(declare-fun m!1387567 () Bool)

(assert (=> b!1212168 m!1387567))

(declare-fun m!1387569 () Bool)

(assert (=> b!1212175 m!1387569))

(declare-fun m!1387571 () Bool)

(assert (=> b!1212170 m!1387571))

(declare-fun m!1387573 () Bool)

(assert (=> b!1212170 m!1387573))

(check-sat (not b!1212175) (not b!1212173) b_and!82099 (not b!1212168) (not b!1212177) (not b!1212179) (not b_next!29579) tp_is_empty!6271 b_and!82101 (not b!1212170) (not b!1212174) (not b!1212172) b_and!82103 (not b_next!29583) b_and!82097 (not b!1212171) (not b_next!29577) (not b_next!29581) (not b!1212167))
(check-sat b_and!82099 b_and!82101 b_and!82103 (not b_next!29577) (not b_next!29581) (not b_next!29579) (not b_next!29583) b_and!82097)
