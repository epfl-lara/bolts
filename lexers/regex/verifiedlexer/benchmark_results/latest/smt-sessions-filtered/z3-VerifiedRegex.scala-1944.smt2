; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95646 () Bool)

(assert start!95646)

(declare-fun b!1107559 () Bool)

(declare-fun b_free!26881 () Bool)

(declare-fun b_next!26945 () Bool)

(assert (=> b!1107559 (= b_free!26881 (not b_next!26945))))

(declare-fun tp!328665 () Bool)

(declare-fun b_and!79201 () Bool)

(assert (=> b!1107559 (= tp!328665 b_and!79201)))

(declare-fun b_free!26883 () Bool)

(declare-fun b_next!26947 () Bool)

(assert (=> b!1107559 (= b_free!26883 (not b_next!26947))))

(declare-fun tp!328666 () Bool)

(declare-fun b_and!79203 () Bool)

(assert (=> b!1107559 (= tp!328666 b_and!79203)))

(declare-fun b!1107558 () Bool)

(declare-fun res!490441 () Bool)

(declare-fun e!702294 () Bool)

(assert (=> b!1107558 (=> (not res!490441) (not e!702294))))

(declare-datatypes ((List!10868 0))(
  ( (Nil!10844) (Cons!10844 (h!16245 (_ BitVec 16)) (t!105440 List!10868)) )
))
(declare-datatypes ((TokenValue!1935 0))(
  ( (FloatLiteralValue!3870 (text!13990 List!10868)) (TokenValueExt!1934 (__x!7573 Int)) (Broken!9675 (value!61237 List!10868)) (Object!1958) (End!1935) (Def!1935) (Underscore!1935) (Match!1935) (Else!1935) (Error!1935) (Case!1935) (If!1935) (Extends!1935) (Abstract!1935) (Class!1935) (Val!1935) (DelimiterValue!3870 (del!1995 List!10868)) (KeywordValue!1941 (value!61238 List!10868)) (CommentValue!3870 (value!61239 List!10868)) (WhitespaceValue!3870 (value!61240 List!10868)) (IndentationValue!1935 (value!61241 List!10868)) (String!13262) (Int32!1935) (Broken!9676 (value!61242 List!10868)) (Boolean!1936) (Unit!16467) (OperatorValue!1938 (op!1995 List!10868)) (IdentifierValue!3870 (value!61243 List!10868)) (IdentifierValue!3871 (value!61244 List!10868)) (WhitespaceValue!3871 (value!61245 List!10868)) (True!3870) (False!3870) (Broken!9677 (value!61246 List!10868)) (Broken!9678 (value!61247 List!10868)) (True!3871) (RightBrace!1935) (RightBracket!1935) (Colon!1935) (Null!1935) (Comma!1935) (LeftBracket!1935) (False!3871) (LeftBrace!1935) (ImaginaryLiteralValue!1935 (text!13991 List!10868)) (StringLiteralValue!5805 (value!61248 List!10868)) (EOFValue!1935 (value!61249 List!10868)) (IdentValue!1935 (value!61250 List!10868)) (DelimiterValue!3871 (value!61251 List!10868)) (DedentValue!1935 (value!61252 List!10868)) (NewLineValue!1935 (value!61253 List!10868)) (IntegerValue!5805 (value!61254 (_ BitVec 32)) (text!13992 List!10868)) (IntegerValue!5806 (value!61255 Int) (text!13993 List!10868)) (Times!1935) (Or!1935) (Equal!1935) (Minus!1935) (Broken!9679 (value!61256 List!10868)) (And!1935) (Div!1935) (LessEqual!1935) (Mod!1935) (Concat!5074) (Not!1935) (Plus!1935) (SpaceValue!1935 (value!61257 List!10868)) (IntegerValue!5807 (value!61258 Int) (text!13994 List!10868)) (StringLiteralValue!5806 (text!13995 List!10868)) (FloatLiteralValue!3871 (text!13996 List!10868)) (BytesLiteralValue!1935 (value!61259 List!10868)) (CommentValue!3871 (value!61260 List!10868)) (StringLiteralValue!5807 (value!61261 List!10868)) (ErrorTokenValue!1935 (msg!1996 List!10868)) )
))
(declare-datatypes ((C!6668 0))(
  ( (C!6669 (val!3590 Int)) )
))
(declare-datatypes ((Regex!3139 0))(
  ( (ElementMatch!3139 (c!187975 C!6668)) (Concat!5075 (regOne!6790 Regex!3139) (regTwo!6790 Regex!3139)) (EmptyExpr!3139) (Star!3139 (reg!3468 Regex!3139)) (EmptyLang!3139) (Union!3139 (regOne!6791 Regex!3139) (regTwo!6791 Regex!3139)) )
))
(declare-datatypes ((String!13263 0))(
  ( (String!13264 (value!61262 String)) )
))
(declare-datatypes ((List!10869 0))(
  ( (Nil!10845) (Cons!10845 (h!16246 C!6668) (t!105441 List!10869)) )
))
(declare-datatypes ((IArray!6861 0))(
  ( (IArray!6862 (innerList!3488 List!10869)) )
))
(declare-datatypes ((Conc!3428 0))(
  ( (Node!3428 (left!9406 Conc!3428) (right!9736 Conc!3428) (csize!7086 Int) (cheight!3639 Int)) (Leaf!5373 (xs!6121 IArray!6861) (csize!7087 Int)) (Empty!3428) )
))
(declare-datatypes ((BalanceConc!6878 0))(
  ( (BalanceConc!6879 (c!187976 Conc!3428)) )
))
(declare-datatypes ((TokenValueInjection!3570 0))(
  ( (TokenValueInjection!3571 (toValue!2946 Int) (toChars!2805 Int)) )
))
(declare-datatypes ((Rule!3538 0))(
  ( (Rule!3539 (regex!1869 Regex!3139) (tag!2131 String!13263) (isSeparator!1869 Bool) (transformation!1869 TokenValueInjection!3570)) )
))
(declare-datatypes ((List!10870 0))(
  ( (Nil!10846) (Cons!10846 (h!16247 Rule!3538) (t!105442 List!10870)) )
))
(declare-fun rules!1093 () List!10870)

(declare-fun isEmpty!6736 (List!10870) Bool)

(assert (=> b!1107558 (= res!490441 (not (isEmpty!6736 rules!1093)))))

(declare-fun res!490442 () Bool)

(assert (=> start!95646 (=> (not res!490442) (not e!702294))))

(declare-datatypes ((LexerInterface!1580 0))(
  ( (LexerInterfaceExt!1577 (__x!7574 Int)) (Lexer!1578) )
))
(declare-fun thiss!11199 () LexerInterface!1580)

(get-info :version)

(assert (=> start!95646 (= res!490442 ((_ is Lexer!1578) thiss!11199))))

(assert (=> start!95646 e!702294))

(assert (=> start!95646 true))

(declare-fun e!702295 () Bool)

(assert (=> start!95646 e!702295))

(declare-datatypes ((Token!3400 0))(
  ( (Token!3401 (value!61263 TokenValue!1935) (rule!3290 Rule!3538) (size!8414 Int) (originalCharacters!2423 List!10869)) )
))
(declare-datatypes ((List!10871 0))(
  ( (Nil!10847) (Cons!10847 (h!16248 Token!3400) (t!105443 List!10871)) )
))
(declare-datatypes ((IArray!6863 0))(
  ( (IArray!6864 (innerList!3489 List!10871)) )
))
(declare-datatypes ((Conc!3429 0))(
  ( (Node!3429 (left!9407 Conc!3429) (right!9737 Conc!3429) (csize!7088 Int) (cheight!3640 Int)) (Leaf!5374 (xs!6122 IArray!6863) (csize!7089 Int)) (Empty!3429) )
))
(declare-datatypes ((BalanceConc!6880 0))(
  ( (BalanceConc!6881 (c!187977 Conc!3429)) )
))
(declare-fun tokens!410 () BalanceConc!6880)

(declare-fun e!702297 () Bool)

(declare-fun inv!13925 (BalanceConc!6880) Bool)

(assert (=> start!95646 (and (inv!13925 tokens!410) e!702297)))

(declare-fun e!702298 () Bool)

(assert (=> b!1107559 (= e!702298 (and tp!328665 tp!328666))))

(declare-fun b!1107560 () Bool)

(declare-fun res!490440 () Bool)

(assert (=> b!1107560 (=> (not res!490440) (not e!702294))))

(declare-fun rulesInvariant!1455 (LexerInterface!1580 List!10870) Bool)

(assert (=> b!1107560 (= res!490440 (rulesInvariant!1455 thiss!11199 rules!1093))))

(declare-fun b!1107561 () Bool)

(assert (=> b!1107561 (= e!702294 false)))

(declare-fun lt!376083 () Bool)

(declare-fun rulesProduceEachTokenIndividually!623 (LexerInterface!1580 List!10870 BalanceConc!6880) Bool)

(assert (=> b!1107561 (= lt!376083 (rulesProduceEachTokenIndividually!623 thiss!11199 rules!1093 tokens!410))))

(declare-fun b!1107562 () Bool)

(declare-fun tp!328668 () Bool)

(declare-fun inv!13926 (Conc!3429) Bool)

(assert (=> b!1107562 (= e!702297 (and (inv!13926 (c!187977 tokens!410)) tp!328668))))

(declare-fun tp!328664 () Bool)

(declare-fun b!1107563 () Bool)

(declare-fun e!702296 () Bool)

(declare-fun inv!13921 (String!13263) Bool)

(declare-fun inv!13927 (TokenValueInjection!3570) Bool)

(assert (=> b!1107563 (= e!702296 (and tp!328664 (inv!13921 (tag!2131 (h!16247 rules!1093))) (inv!13927 (transformation!1869 (h!16247 rules!1093))) e!702298))))

(declare-fun b!1107564 () Bool)

(declare-fun tp!328667 () Bool)

(assert (=> b!1107564 (= e!702295 (and e!702296 tp!328667))))

(assert (= (and start!95646 res!490442) b!1107558))

(assert (= (and b!1107558 res!490441) b!1107560))

(assert (= (and b!1107560 res!490440) b!1107561))

(assert (= b!1107563 b!1107559))

(assert (= b!1107564 b!1107563))

(assert (= (and start!95646 ((_ is Cons!10846) rules!1093)) b!1107564))

(assert (= start!95646 b!1107562))

(declare-fun m!1264713 () Bool)

(assert (=> b!1107561 m!1264713))

(declare-fun m!1264715 () Bool)

(assert (=> b!1107560 m!1264715))

(declare-fun m!1264717 () Bool)

(assert (=> b!1107558 m!1264717))

(declare-fun m!1264719 () Bool)

(assert (=> start!95646 m!1264719))

(declare-fun m!1264721 () Bool)

(assert (=> b!1107562 m!1264721))

(declare-fun m!1264723 () Bool)

(assert (=> b!1107563 m!1264723))

(declare-fun m!1264725 () Bool)

(assert (=> b!1107563 m!1264725))

(check-sat (not b!1107563) (not b!1107561) b_and!79201 (not b_next!26945) (not b!1107564) (not b_next!26947) (not b!1107558) (not b!1107560) (not b!1107562) (not start!95646) b_and!79203)
(check-sat b_and!79201 b_and!79203 (not b_next!26947) (not b_next!26945))
