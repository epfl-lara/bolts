; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95506 () Bool)

(assert start!95506)

(declare-fun b!1106326 () Bool)

(declare-fun b_free!26761 () Bool)

(declare-fun b_next!26825 () Bool)

(assert (=> b!1106326 (= b_free!26761 (not b_next!26825))))

(declare-fun tp!327581 () Bool)

(declare-fun b_and!79081 () Bool)

(assert (=> b!1106326 (= tp!327581 b_and!79081)))

(declare-fun b_free!26763 () Bool)

(declare-fun b_next!26827 () Bool)

(assert (=> b!1106326 (= b_free!26763 (not b_next!26827))))

(declare-fun tp!327579 () Bool)

(declare-fun b_and!79083 () Bool)

(assert (=> b!1106326 (= tp!327579 b_and!79083)))

(declare-fun e!701199 () Bool)

(assert (=> b!1106326 (= e!701199 (and tp!327581 tp!327579))))

(declare-fun b!1106327 () Bool)

(declare-fun res!490239 () Bool)

(declare-fun e!701201 () Bool)

(assert (=> b!1106327 (=> (not res!490239) (not e!701201))))

(declare-datatypes ((List!10805 0))(
  ( (Nil!10781) (Cons!10781 (h!16182 (_ BitVec 16)) (t!105361 List!10805)) )
))
(declare-datatypes ((TokenValue!1926 0))(
  ( (FloatLiteralValue!3852 (text!13927 List!10805)) (TokenValueExt!1925 (__x!7511 Int)) (Broken!9630 (value!60979 List!10805)) (Object!1949) (End!1926) (Def!1926) (Underscore!1926) (Match!1926) (Else!1926) (Error!1926) (Case!1926) (If!1926) (Extends!1926) (Abstract!1926) (Class!1926) (Val!1926) (DelimiterValue!3852 (del!1986 List!10805)) (KeywordValue!1932 (value!60980 List!10805)) (CommentValue!3852 (value!60981 List!10805)) (WhitespaceValue!3852 (value!60982 List!10805)) (IndentationValue!1926 (value!60983 List!10805)) (String!13215) (Int32!1926) (Broken!9631 (value!60984 List!10805)) (Boolean!1927) (Unit!16458) (OperatorValue!1929 (op!1986 List!10805)) (IdentifierValue!3852 (value!60985 List!10805)) (IdentifierValue!3853 (value!60986 List!10805)) (WhitespaceValue!3853 (value!60987 List!10805)) (True!3852) (False!3852) (Broken!9632 (value!60988 List!10805)) (Broken!9633 (value!60989 List!10805)) (True!3853) (RightBrace!1926) (RightBracket!1926) (Colon!1926) (Null!1926) (Comma!1926) (LeftBracket!1926) (False!3853) (LeftBrace!1926) (ImaginaryLiteralValue!1926 (text!13928 List!10805)) (StringLiteralValue!5778 (value!60990 List!10805)) (EOFValue!1926 (value!60991 List!10805)) (IdentValue!1926 (value!60992 List!10805)) (DelimiterValue!3853 (value!60993 List!10805)) (DedentValue!1926 (value!60994 List!10805)) (NewLineValue!1926 (value!60995 List!10805)) (IntegerValue!5778 (value!60996 (_ BitVec 32)) (text!13929 List!10805)) (IntegerValue!5779 (value!60997 Int) (text!13930 List!10805)) (Times!1926) (Or!1926) (Equal!1926) (Minus!1926) (Broken!9634 (value!60998 List!10805)) (And!1926) (Div!1926) (LessEqual!1926) (Mod!1926) (Concat!5055) (Not!1926) (Plus!1926) (SpaceValue!1926 (value!60999 List!10805)) (IntegerValue!5780 (value!61000 Int) (text!13931 List!10805)) (StringLiteralValue!5779 (text!13932 List!10805)) (FloatLiteralValue!3853 (text!13933 List!10805)) (BytesLiteralValue!1926 (value!61001 List!10805)) (CommentValue!3853 (value!61002 List!10805)) (StringLiteralValue!5780 (value!61003 List!10805)) (ErrorTokenValue!1926 (msg!1987 List!10805)) )
))
(declare-datatypes ((C!6648 0))(
  ( (C!6649 (val!3580 Int)) )
))
(declare-datatypes ((List!10806 0))(
  ( (Nil!10782) (Cons!10782 (h!16183 C!6648) (t!105362 List!10806)) )
))
(declare-datatypes ((IArray!6825 0))(
  ( (IArray!6826 (innerList!3470 List!10806)) )
))
(declare-datatypes ((Regex!3129 0))(
  ( (ElementMatch!3129 (c!187917 C!6648)) (Concat!5056 (regOne!6770 Regex!3129) (regTwo!6770 Regex!3129)) (EmptyExpr!3129) (Star!3129 (reg!3458 Regex!3129)) (EmptyLang!3129) (Union!3129 (regOne!6771 Regex!3129) (regTwo!6771 Regex!3129)) )
))
(declare-datatypes ((String!13216 0))(
  ( (String!13217 (value!61004 String)) )
))
(declare-datatypes ((Conc!3410 0))(
  ( (Node!3410 (left!9375 Conc!3410) (right!9705 Conc!3410) (csize!7050 Int) (cheight!3621 Int)) (Leaf!5350 (xs!6103 IArray!6825) (csize!7051 Int)) (Empty!3410) )
))
(declare-datatypes ((BalanceConc!6842 0))(
  ( (BalanceConc!6843 (c!187918 Conc!3410)) )
))
(declare-datatypes ((TokenValueInjection!3552 0))(
  ( (TokenValueInjection!3553 (toValue!2937 Int) (toChars!2796 Int)) )
))
(declare-datatypes ((Rule!3520 0))(
  ( (Rule!3521 (regex!1860 Regex!3129) (tag!2122 String!13216) (isSeparator!1860 Bool) (transformation!1860 TokenValueInjection!3552)) )
))
(declare-datatypes ((List!10807 0))(
  ( (Nil!10783) (Cons!10783 (h!16184 Rule!3520) (t!105363 List!10807)) )
))
(declare-fun rules!859 () List!10807)

(declare-datatypes ((LexerInterface!1572 0))(
  ( (LexerInterfaceExt!1569 (__x!7512 Int)) (Lexer!1570) )
))
(declare-fun rulesInvariant!1448 (LexerInterface!1572 List!10807) Bool)

(assert (=> b!1106327 (= res!490239 (rulesInvariant!1448 Lexer!1570 rules!859))))

(declare-fun b!1106328 () Bool)

(declare-fun tp!327582 () Bool)

(declare-fun e!701202 () Bool)

(declare-fun inv!13855 (String!13216) Bool)

(declare-fun inv!13859 (TokenValueInjection!3552) Bool)

(assert (=> b!1106328 (= e!701202 (and tp!327582 (inv!13855 (tag!2122 (h!16184 rules!859))) (inv!13859 (transformation!1860 (h!16184 rules!859))) e!701199))))

(declare-fun b!1106329 () Bool)

(assert (=> b!1106329 (= e!701201 false)))

(declare-fun lt!375969 () Bool)

(declare-datatypes ((Token!3382 0))(
  ( (Token!3383 (value!61005 TokenValue!1926) (rule!3281 Rule!3520) (size!8382 Int) (originalCharacters!2414 List!10806)) )
))
(declare-datatypes ((List!10808 0))(
  ( (Nil!10784) (Cons!10784 (h!16185 Token!3382) (t!105364 List!10808)) )
))
(declare-datatypes ((IArray!6827 0))(
  ( (IArray!6828 (innerList!3471 List!10808)) )
))
(declare-datatypes ((Conc!3411 0))(
  ( (Node!3411 (left!9376 Conc!3411) (right!9706 Conc!3411) (csize!7052 Int) (cheight!3622 Int)) (Leaf!5351 (xs!6104 IArray!6827) (csize!7053 Int)) (Empty!3411) )
))
(declare-datatypes ((BalanceConc!6844 0))(
  ( (BalanceConc!6845 (c!187919 Conc!3411)) )
))
(declare-fun tokens!304 () BalanceConc!6844)

(declare-fun rulesProduceEachTokenIndividually!615 (LexerInterface!1572 List!10807 BalanceConc!6844) Bool)

(assert (=> b!1106329 (= lt!375969 (rulesProduceEachTokenIndividually!615 Lexer!1570 rules!859 tokens!304))))

(declare-fun b!1106330 () Bool)

(declare-fun e!701200 () Bool)

(declare-fun tp!327578 () Bool)

(assert (=> b!1106330 (= e!701200 (and e!701202 tp!327578))))

(declare-fun b!1106331 () Bool)

(declare-fun e!701204 () Bool)

(declare-fun tp!327580 () Bool)

(declare-fun inv!13860 (Conc!3411) Bool)

(assert (=> b!1106331 (= e!701204 (and (inv!13860 (c!187919 tokens!304)) tp!327580))))

(declare-fun res!490238 () Bool)

(assert (=> start!95506 (=> (not res!490238) (not e!701201))))

(declare-fun isEmpty!6725 (List!10807) Bool)

(assert (=> start!95506 (= res!490238 (not (isEmpty!6725 rules!859)))))

(assert (=> start!95506 e!701201))

(assert (=> start!95506 e!701200))

(declare-fun inv!13861 (BalanceConc!6844) Bool)

(assert (=> start!95506 (and (inv!13861 tokens!304) e!701204)))

(assert (= (and start!95506 res!490238) b!1106327))

(assert (= (and b!1106327 res!490239) b!1106329))

(assert (= b!1106328 b!1106326))

(assert (= b!1106330 b!1106328))

(get-info :version)

(assert (= (and start!95506 ((_ is Cons!10783) rules!859)) b!1106330))

(assert (= start!95506 b!1106331))

(declare-fun m!1264021 () Bool)

(assert (=> start!95506 m!1264021))

(declare-fun m!1264023 () Bool)

(assert (=> start!95506 m!1264023))

(declare-fun m!1264025 () Bool)

(assert (=> b!1106328 m!1264025))

(declare-fun m!1264027 () Bool)

(assert (=> b!1106328 m!1264027))

(declare-fun m!1264029 () Bool)

(assert (=> b!1106327 m!1264029))

(declare-fun m!1264031 () Bool)

(assert (=> b!1106331 m!1264031))

(declare-fun m!1264033 () Bool)

(assert (=> b!1106329 m!1264033))

(check-sat (not b_next!26827) b_and!79081 (not b!1106329) (not b!1106331) b_and!79083 (not b!1106327) (not b_next!26825) (not start!95506) (not b!1106330) (not b!1106328))
(check-sat b_and!79081 b_and!79083 (not b_next!26825) (not b_next!26827))
