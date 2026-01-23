; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111834 () Bool)

(assert start!111834)

(declare-fun b!1281951 () Bool)

(declare-fun b_free!29851 () Bool)

(declare-fun b_next!30555 () Bool)

(assert (=> b!1281951 (= b_free!29851 (not b_next!30555))))

(declare-fun tp!371898 () Bool)

(declare-fun b_and!84995 () Bool)

(assert (=> b!1281951 (= tp!371898 b_and!84995)))

(declare-fun b_free!29853 () Bool)

(declare-fun b_next!30557 () Bool)

(assert (=> b!1281951 (= b_free!29853 (not b_next!30557))))

(declare-fun tp!371899 () Bool)

(declare-fun b_and!84997 () Bool)

(assert (=> b!1281951 (= tp!371899 b_and!84997)))

(declare-fun b!1281944 () Bool)

(declare-fun res!575326 () Bool)

(declare-fun e!821705 () Bool)

(assert (=> b!1281944 (=> (not res!575326) (not e!821705))))

(declare-datatypes ((List!12736 0))(
  ( (Nil!12670) (Cons!12670 (h!18071 (_ BitVec 16)) (t!116560 List!12736)) )
))
(declare-datatypes ((TokenValue!2268 0))(
  ( (FloatLiteralValue!4536 (text!16321 List!12736)) (TokenValueExt!2267 (__x!8308 Int)) (Broken!11340 (value!71678 List!12736)) (Object!2333) (End!2268) (Def!2268) (Underscore!2268) (Match!2268) (Else!2268) (Error!2268) (Case!2268) (If!2268) (Extends!2268) (Abstract!2268) (Class!2268) (Val!2268) (DelimiterValue!4536 (del!2328 List!12736)) (KeywordValue!2274 (value!71679 List!12736)) (CommentValue!4536 (value!71680 List!12736)) (WhitespaceValue!4536 (value!71681 List!12736)) (IndentationValue!2268 (value!71682 List!12736)) (String!15573) (Int32!2268) (Broken!11341 (value!71683 List!12736)) (Boolean!2269) (Unit!18960) (OperatorValue!2271 (op!2328 List!12736)) (IdentifierValue!4536 (value!71684 List!12736)) (IdentifierValue!4537 (value!71685 List!12736)) (WhitespaceValue!4537 (value!71686 List!12736)) (True!4536) (False!4536) (Broken!11342 (value!71687 List!12736)) (Broken!11343 (value!71688 List!12736)) (True!4537) (RightBrace!2268) (RightBracket!2268) (Colon!2268) (Null!2268) (Comma!2268) (LeftBracket!2268) (False!4537) (LeftBrace!2268) (ImaginaryLiteralValue!2268 (text!16322 List!12736)) (StringLiteralValue!6804 (value!71689 List!12736)) (EOFValue!2268 (value!71690 List!12736)) (IdentValue!2268 (value!71691 List!12736)) (DelimiterValue!4537 (value!71692 List!12736)) (DedentValue!2268 (value!71693 List!12736)) (NewLineValue!2268 (value!71694 List!12736)) (IntegerValue!6804 (value!71695 (_ BitVec 32)) (text!16323 List!12736)) (IntegerValue!6805 (value!71696 Int) (text!16324 List!12736)) (Times!2268) (Or!2268) (Equal!2268) (Minus!2268) (Broken!11344 (value!71697 List!12736)) (And!2268) (Div!2268) (LessEqual!2268) (Mod!2268) (Concat!5759) (Not!2268) (Plus!2268) (SpaceValue!2268 (value!71698 List!12736)) (IntegerValue!6806 (value!71699 Int) (text!16325 List!12736)) (StringLiteralValue!6805 (text!16326 List!12736)) (FloatLiteralValue!4537 (text!16327 List!12736)) (BytesLiteralValue!2268 (value!71700 List!12736)) (CommentValue!4537 (value!71701 List!12736)) (StringLiteralValue!6806 (value!71702 List!12736)) (ErrorTokenValue!2268 (msg!2329 List!12736)) )
))
(declare-datatypes ((C!7272 0))(
  ( (C!7273 (val!4196 Int)) )
))
(declare-datatypes ((List!12737 0))(
  ( (Nil!12671) (Cons!12671 (h!18072 C!7272) (t!116561 List!12737)) )
))
(declare-datatypes ((IArray!8337 0))(
  ( (IArray!8338 (innerList!4226 List!12737)) )
))
(declare-datatypes ((Conc!4166 0))(
  ( (Node!4166 (left!10958 Conc!4166) (right!11288 Conc!4166) (csize!8562 Int) (cheight!4377 Int)) (Leaf!6451 (xs!6877 IArray!8337) (csize!8563 Int)) (Empty!4166) )
))
(declare-datatypes ((BalanceConc!8272 0))(
  ( (BalanceConc!8273 (c!211383 Conc!4166)) )
))
(declare-datatypes ((Regex!3491 0))(
  ( (ElementMatch!3491 (c!211384 C!7272)) (Concat!5760 (regOne!7494 Regex!3491) (regTwo!7494 Regex!3491)) (EmptyExpr!3491) (Star!3491 (reg!3820 Regex!3491)) (EmptyLang!3491) (Union!3491 (regOne!7495 Regex!3491) (regTwo!7495 Regex!3491)) )
))
(declare-datatypes ((String!15574 0))(
  ( (String!15575 (value!71703 String)) )
))
(declare-datatypes ((TokenValueInjection!4196 0))(
  ( (TokenValueInjection!4197 (toValue!3345 Int) (toChars!3204 Int)) )
))
(declare-datatypes ((Rule!4156 0))(
  ( (Rule!4157 (regex!2178 Regex!3491) (tag!2440 String!15574) (isSeparator!2178 Bool) (transformation!2178 TokenValueInjection!4196)) )
))
(declare-datatypes ((Token!4018 0))(
  ( (Token!4019 (value!71704 TokenValue!2268) (rule!3917 Rule!4156) (size!10334 Int) (originalCharacters!3040 List!12737)) )
))
(declare-datatypes ((List!12738 0))(
  ( (Nil!12672) (Cons!12672 (h!18073 Token!4018) (t!116562 List!12738)) )
))
(declare-datatypes ((IArray!8339 0))(
  ( (IArray!8340 (innerList!4227 List!12738)) )
))
(declare-datatypes ((Conc!4167 0))(
  ( (Node!4167 (left!10959 Conc!4167) (right!11289 Conc!4167) (csize!8564 Int) (cheight!4378 Int)) (Leaf!6452 (xs!6878 IArray!8339) (csize!8565 Int)) (Empty!4167) )
))
(declare-datatypes ((BalanceConc!8274 0))(
  ( (BalanceConc!8275 (c!211385 Conc!4167)) )
))
(declare-fun ts!110 () BalanceConc!8274)

(declare-fun isEmpty!7533 (BalanceConc!8274) Bool)

(assert (=> b!1281944 (= res!575326 (not (isEmpty!7533 ts!110)))))

(declare-fun res!575324 () Bool)

(assert (=> start!111834 (=> (not res!575324) (not e!821705))))

(declare-datatypes ((LexerInterface!1873 0))(
  ( (LexerInterfaceExt!1870 (__x!8309 Int)) (Lexer!1871) )
))
(declare-fun thiss!10944 () LexerInterface!1873)

(get-info :version)

(assert (=> start!111834 (= res!575324 ((_ is Lexer!1871) thiss!10944))))

(assert (=> start!111834 e!821705))

(assert (=> start!111834 true))

(declare-fun e!821707 () Bool)

(assert (=> start!111834 e!821707))

(declare-fun e!821703 () Bool)

(declare-fun inv!17065 (BalanceConc!8274) Bool)

(assert (=> start!111834 (and (inv!17065 ts!110) e!821703)))

(declare-fun b!1281945 () Bool)

(declare-fun e!821702 () Bool)

(declare-fun tp!371896 () Bool)

(assert (=> b!1281945 (= e!821707 (and e!821702 tp!371896))))

(declare-fun b!1281946 () Bool)

(assert (=> b!1281946 (= e!821705 false)))

(declare-fun lt!423103 () Token!4018)

(declare-fun head!2180 (BalanceConc!8274) Token!4018)

(assert (=> b!1281946 (= lt!423103 (head!2180 ts!110))))

(declare-fun b!1281947 () Bool)

(declare-fun res!575323 () Bool)

(assert (=> b!1281947 (=> (not res!575323) (not e!821705))))

(declare-datatypes ((List!12739 0))(
  ( (Nil!12673) (Cons!12673 (h!18074 Rule!4156) (t!116563 List!12739)) )
))
(declare-fun rs!174 () List!12739)

(declare-fun isEmpty!7534 (List!12739) Bool)

(assert (=> b!1281947 (= res!575323 (not (isEmpty!7534 rs!174)))))

(declare-fun b!1281948 () Bool)

(declare-fun res!575325 () Bool)

(assert (=> b!1281948 (=> (not res!575325) (not e!821705))))

(declare-fun rulesInvariant!1746 (LexerInterface!1873 List!12739) Bool)

(assert (=> b!1281948 (= res!575325 (rulesInvariant!1746 thiss!10944 rs!174))))

(declare-fun tp!371897 () Bool)

(declare-fun b!1281949 () Bool)

(declare-fun e!821704 () Bool)

(declare-fun inv!17061 (String!15574) Bool)

(declare-fun inv!17066 (TokenValueInjection!4196) Bool)

(assert (=> b!1281949 (= e!821702 (and tp!371897 (inv!17061 (tag!2440 (h!18074 rs!174))) (inv!17066 (transformation!2178 (h!18074 rs!174))) e!821704))))

(declare-fun b!1281950 () Bool)

(declare-fun tp!371900 () Bool)

(declare-fun inv!17067 (Conc!4167) Bool)

(assert (=> b!1281950 (= e!821703 (and (inv!17067 (c!211385 ts!110)) tp!371900))))

(assert (=> b!1281951 (= e!821704 (and tp!371898 tp!371899))))

(assert (= (and start!111834 res!575324) b!1281947))

(assert (= (and b!1281947 res!575323) b!1281948))

(assert (= (and b!1281948 res!575325) b!1281944))

(assert (= (and b!1281944 res!575326) b!1281946))

(assert (= b!1281949 b!1281951))

(assert (= b!1281945 b!1281949))

(assert (= (and start!111834 ((_ is Cons!12673) rs!174)) b!1281945))

(assert (= start!111834 b!1281950))

(declare-fun m!1432677 () Bool)

(assert (=> b!1281949 m!1432677))

(declare-fun m!1432679 () Bool)

(assert (=> b!1281949 m!1432679))

(declare-fun m!1432681 () Bool)

(assert (=> b!1281948 m!1432681))

(declare-fun m!1432683 () Bool)

(assert (=> b!1281947 m!1432683))

(declare-fun m!1432685 () Bool)

(assert (=> start!111834 m!1432685))

(declare-fun m!1432687 () Bool)

(assert (=> b!1281944 m!1432687))

(declare-fun m!1432689 () Bool)

(assert (=> b!1281950 m!1432689))

(declare-fun m!1432691 () Bool)

(assert (=> b!1281946 m!1432691))

(check-sat (not b!1281948) (not b!1281950) (not b_next!30557) b_and!84995 (not b!1281945) (not b!1281944) (not b_next!30555) (not b!1281947) (not start!111834) (not b!1281949) b_and!84997 (not b!1281946))
(check-sat b_and!84995 b_and!84997 (not b_next!30555) (not b_next!30557))
