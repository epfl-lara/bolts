; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!14924 () Bool)

(assert start!14924)

(declare-fun b!142099 () Bool)

(declare-fun b_free!4749 () Bool)

(declare-fun b_next!4749 () Bool)

(assert (=> b!142099 (= b_free!4749 (not b_next!4749))))

(declare-fun tp!74927 () Bool)

(declare-fun b_and!7345 () Bool)

(assert (=> b!142099 (= tp!74927 b_and!7345)))

(declare-fun b_free!4751 () Bool)

(declare-fun b_next!4751 () Bool)

(assert (=> b!142099 (= b_free!4751 (not b_next!4751))))

(declare-fun tp!74924 () Bool)

(declare-fun b_and!7347 () Bool)

(assert (=> b!142099 (= tp!74924 b_and!7347)))

(declare-fun b!142106 () Bool)

(declare-fun b_free!4753 () Bool)

(declare-fun b_next!4753 () Bool)

(assert (=> b!142106 (= b_free!4753 (not b_next!4753))))

(declare-fun tp!74922 () Bool)

(declare-fun b_and!7349 () Bool)

(assert (=> b!142106 (= tp!74922 b_and!7349)))

(declare-fun b_free!4755 () Bool)

(declare-fun b_next!4755 () Bool)

(assert (=> b!142106 (= b_free!4755 (not b_next!4755))))

(declare-fun tp!74925 () Bool)

(declare-fun b_and!7351 () Bool)

(assert (=> b!142106 (= tp!74925 b_and!7351)))

(declare-fun res!65794 () Bool)

(declare-fun e!83912 () Bool)

(assert (=> start!14924 (=> (not res!65794) (not e!83912))))

(declare-datatypes ((LexerInterface!294 0))(
  ( (LexerInterfaceExt!291 (__x!2347 Int)) (Lexer!292) )
))
(declare-fun thiss!17480 () LexerInterface!294)

(assert (=> start!14924 (= res!65794 (is-Lexer!292 thiss!17480))))

(assert (=> start!14924 e!83912))

(assert (=> start!14924 true))

(declare-fun e!83913 () Bool)

(assert (=> start!14924 e!83913))

(declare-fun e!83917 () Bool)

(assert (=> start!14924 e!83917))

(declare-fun e!83908 () Bool)

(assert (=> b!142099 (= e!83908 (and tp!74927 tp!74924))))

(declare-fun b!142100 () Bool)

(declare-fun res!65792 () Bool)

(assert (=> b!142100 (=> (not res!65792) (not e!83912))))

(declare-datatypes ((List!2429 0))(
  ( (Nil!2419) (Cons!2419 (h!7816 (_ BitVec 16)) (t!23723 List!2429)) )
))
(declare-datatypes ((TokenValue!430 0))(
  ( (FloatLiteralValue!860 (text!3455 List!2429)) (TokenValueExt!429 (__x!2348 Int)) (Broken!2150 (value!15919 List!2429)) (Object!439) (End!430) (Def!430) (Underscore!430) (Match!430) (Else!430) (Error!430) (Case!430) (If!430) (Extends!430) (Abstract!430) (Class!430) (Val!430) (DelimiterValue!860 (del!490 List!2429)) (KeywordValue!436 (value!15920 List!2429)) (CommentValue!860 (value!15921 List!2429)) (WhitespaceValue!860 (value!15922 List!2429)) (IndentationValue!430 (value!15923 List!2429)) (String!3231) (Int32!430) (Broken!2151 (value!15924 List!2429)) (Boolean!431) (Unit!1818) (OperatorValue!433 (op!490 List!2429)) (IdentifierValue!860 (value!15925 List!2429)) (IdentifierValue!861 (value!15926 List!2429)) (WhitespaceValue!861 (value!15927 List!2429)) (True!860) (False!860) (Broken!2152 (value!15928 List!2429)) (Broken!2153 (value!15929 List!2429)) (True!861) (RightBrace!430) (RightBracket!430) (Colon!430) (Null!430) (Comma!430) (LeftBracket!430) (False!861) (LeftBrace!430) (ImaginaryLiteralValue!430 (text!3456 List!2429)) (StringLiteralValue!1290 (value!15930 List!2429)) (EOFValue!430 (value!15931 List!2429)) (IdentValue!430 (value!15932 List!2429)) (DelimiterValue!861 (value!15933 List!2429)) (DedentValue!430 (value!15934 List!2429)) (NewLineValue!430 (value!15935 List!2429)) (IntegerValue!1290 (value!15936 (_ BitVec 32)) (text!3457 List!2429)) (IntegerValue!1291 (value!15937 Int) (text!3458 List!2429)) (Times!430) (Or!430) (Equal!430) (Minus!430) (Broken!2154 (value!15938 List!2429)) (And!430) (Div!430) (LessEqual!430) (Mod!430) (Concat!1062) (Not!430) (Plus!430) (SpaceValue!430 (value!15939 List!2429)) (IntegerValue!1292 (value!15940 Int) (text!3459 List!2429)) (StringLiteralValue!1291 (text!3460 List!2429)) (FloatLiteralValue!861 (text!3461 List!2429)) (BytesLiteralValue!430 (value!15941 List!2429)) (CommentValue!861 (value!15942 List!2429)) (StringLiteralValue!1292 (value!15943 List!2429)) (ErrorTokenValue!430 (msg!491 List!2429)) )
))
(declare-datatypes ((C!2186 0))(
  ( (C!2187 (val!979 Int)) )
))
(declare-datatypes ((List!2430 0))(
  ( (Nil!2420) (Cons!2420 (h!7817 C!2186) (t!23724 List!2430)) )
))
(declare-datatypes ((IArray!1277 0))(
  ( (IArray!1278 (innerList!696 List!2430)) )
))
(declare-datatypes ((Conc!638 0))(
  ( (Node!638 (left!1833 Conc!638) (right!2163 Conc!638) (csize!1506 Int) (cheight!849 Int)) (Leaf!1182 (xs!3233 IArray!1277) (csize!1507 Int)) (Empty!638) )
))
(declare-datatypes ((BalanceConc!1284 0))(
  ( (BalanceConc!1285 (c!29409 Conc!638)) )
))
(declare-datatypes ((String!3232 0))(
  ( (String!3233 (value!15944 String)) )
))
(declare-datatypes ((TokenValueInjection!632 0))(
  ( (TokenValueInjection!633 (toValue!1023 Int) (toChars!882 Int)) )
))
(declare-datatypes ((Regex!632 0))(
  ( (ElementMatch!632 (c!29410 C!2186)) (Concat!1063 (regOne!1776 Regex!632) (regTwo!1776 Regex!632)) (EmptyExpr!632) (Star!632 (reg!961 Regex!632)) (EmptyLang!632) (Union!632 (regOne!1777 Regex!632) (regTwo!1777 Regex!632)) )
))
(declare-datatypes ((Rule!616 0))(
  ( (Rule!617 (regex!408 Regex!632) (tag!586 String!3232) (isSeparator!408 Bool) (transformation!408 TokenValueInjection!632)) )
))
(declare-datatypes ((List!2431 0))(
  ( (Nil!2421) (Cons!2421 (h!7818 Rule!616) (t!23725 List!2431)) )
))
(declare-fun rules!1920 () List!2431)

(declare-fun rulesInvariant!260 (LexerInterface!294 List!2431) Bool)

(assert (=> b!142100 (= res!65792 (rulesInvariant!260 thiss!17480 rules!1920))))

(declare-fun e!83915 () Bool)

(declare-fun tp!74923 () Bool)

(declare-datatypes ((Token!560 0))(
  ( (Token!561 (value!15945 TokenValue!430) (rule!915 Rule!616) (size!2120 Int) (originalCharacters!451 List!2430)) )
))
(declare-datatypes ((List!2432 0))(
  ( (Nil!2422) (Cons!2422 (h!7819 Token!560) (t!23726 List!2432)) )
))
(declare-fun tokens!465 () List!2432)

(declare-fun b!142101 () Bool)

(declare-fun inv!3191 (String!3232) Bool)

(declare-fun inv!3194 (TokenValueInjection!632) Bool)

(assert (=> b!142101 (= e!83915 (and tp!74923 (inv!3191 (tag!586 (rule!915 (h!7819 tokens!465)))) (inv!3194 (transformation!408 (rule!915 (h!7819 tokens!465)))) e!83908))))

(declare-fun b!142102 () Bool)

(declare-fun e!83918 () Bool)

(declare-fun tp!74930 () Bool)

(assert (=> b!142102 (= e!83913 (and e!83918 tp!74930))))

(declare-fun tp!74926 () Bool)

(declare-fun e!83911 () Bool)

(declare-fun b!142103 () Bool)

(assert (=> b!142103 (= e!83918 (and tp!74926 (inv!3191 (tag!586 (h!7818 rules!1920))) (inv!3194 (transformation!408 (h!7818 rules!1920))) e!83911))))

(declare-fun e!83914 () Bool)

(declare-fun tp!74928 () Bool)

(declare-fun b!142104 () Bool)

(declare-fun inv!21 (TokenValue!430) Bool)

(assert (=> b!142104 (= e!83914 (and (inv!21 (value!15945 (h!7819 tokens!465))) e!83915 tp!74928))))

(declare-fun b!142105 () Bool)

(declare-fun res!65793 () Bool)

(assert (=> b!142105 (=> (not res!65793) (not e!83912))))

(declare-fun isEmpty!929 (List!2431) Bool)

(assert (=> b!142105 (= res!65793 (not (isEmpty!929 rules!1920)))))

(assert (=> b!142106 (= e!83911 (and tp!74922 tp!74925))))

(declare-fun b!142107 () Bool)

(declare-fun tp!74929 () Bool)

(declare-fun inv!3195 (Token!560) Bool)

(assert (=> b!142107 (= e!83917 (and (inv!3195 (h!7819 tokens!465)) e!83914 tp!74929))))

(declare-fun b!142108 () Bool)

(assert (=> b!142108 (= e!83912 false)))

(declare-datatypes ((IArray!1279 0))(
  ( (IArray!1280 (innerList!697 List!2432)) )
))
(declare-datatypes ((Conc!639 0))(
  ( (Node!639 (left!1834 Conc!639) (right!2164 Conc!639) (csize!1508 Int) (cheight!850 Int)) (Leaf!1183 (xs!3234 IArray!1279) (csize!1509 Int)) (Empty!639) )
))
(declare-datatypes ((BalanceConc!1286 0))(
  ( (BalanceConc!1287 (c!29411 Conc!639)) )
))
(declare-fun lt!41223 () BalanceConc!1286)

(declare-fun seqFromList!221 (List!2432) BalanceConc!1286)

(assert (=> b!142108 (= lt!41223 (seqFromList!221 tokens!465))))

(assert (= (and start!14924 res!65794) b!142105))

(assert (= (and b!142105 res!65793) b!142100))

(assert (= (and b!142100 res!65792) b!142108))

(assert (= b!142103 b!142106))

(assert (= b!142102 b!142103))

(assert (= (and start!14924 (is-Cons!2421 rules!1920)) b!142102))

(assert (= b!142101 b!142099))

(assert (= b!142104 b!142101))

(assert (= b!142107 b!142104))

(assert (= (and start!14924 (is-Cons!2422 tokens!465)) b!142107))

(declare-fun m!124991 () Bool)

(assert (=> b!142103 m!124991))

(declare-fun m!124993 () Bool)

(assert (=> b!142103 m!124993))

(declare-fun m!124995 () Bool)

(assert (=> b!142101 m!124995))

(declare-fun m!124997 () Bool)

(assert (=> b!142101 m!124997))

(declare-fun m!124999 () Bool)

(assert (=> b!142100 m!124999))

(declare-fun m!125001 () Bool)

(assert (=> b!142105 m!125001))

(declare-fun m!125003 () Bool)

(assert (=> b!142108 m!125003))

(declare-fun m!125005 () Bool)

(assert (=> b!142104 m!125005))

(declare-fun m!125007 () Bool)

(assert (=> b!142107 m!125007))

(push 1)

(assert (not b!142108))

(assert (not b!142104))

(assert (not b!142102))

(assert (not b!142107))

(assert (not b!142105))

(assert b_and!7349)

(assert b_and!7347)

(assert b_and!7351)

(assert (not b!142100))

(assert (not b!142101))

(assert (not b_next!4755))

(assert (not b_next!4753))

(assert (not b!142103))

(assert (not b_next!4749))

(assert b_and!7345)

(assert (not b_next!4751))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7349)

(assert b_and!7347)

(assert b_and!7351)

(assert (not b_next!4755))

(assert (not b_next!4753))

(assert (not b_next!4749))

(assert b_and!7345)

(assert (not b_next!4751))

(check-sat)

(pop 1)

