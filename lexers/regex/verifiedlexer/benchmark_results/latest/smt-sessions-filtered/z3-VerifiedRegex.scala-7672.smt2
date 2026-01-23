; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404326 () Bool)

(assert start!404326)

(declare-fun b!4227929 () Bool)

(declare-fun b_free!124779 () Bool)

(declare-fun b_next!125483 () Bool)

(assert (=> b!4227929 (= b_free!124779 (not b_next!125483))))

(declare-fun tp!1294938 () Bool)

(declare-fun b_and!334013 () Bool)

(assert (=> b!4227929 (= tp!1294938 b_and!334013)))

(declare-fun b_free!124781 () Bool)

(declare-fun b_next!125485 () Bool)

(assert (=> b!4227929 (= b_free!124781 (not b_next!125485))))

(declare-fun tp!1294941 () Bool)

(declare-fun b_and!334015 () Bool)

(assert (=> b!4227929 (= tp!1294941 b_and!334015)))

(declare-fun b!4227930 () Bool)

(declare-fun b_free!124783 () Bool)

(declare-fun b_next!125487 () Bool)

(assert (=> b!4227930 (= b_free!124783 (not b_next!125487))))

(declare-fun tp!1294942 () Bool)

(declare-fun b_and!334017 () Bool)

(assert (=> b!4227930 (= tp!1294942 b_and!334017)))

(declare-fun b_free!124785 () Bool)

(declare-fun b_next!125489 () Bool)

(assert (=> b!4227930 (= b_free!124785 (not b_next!125489))))

(declare-fun tp!1294939 () Bool)

(declare-fun b_and!334019 () Bool)

(assert (=> b!4227930 (= tp!1294939 b_and!334019)))

(declare-fun b!4227922 () Bool)

(declare-fun res!1738519 () Bool)

(declare-fun e!2625197 () Bool)

(assert (=> b!4227922 (=> (not res!1738519) (not e!2625197))))

(declare-datatypes ((C!25720 0))(
  ( (C!25721 (val!15022 Int)) )
))
(declare-datatypes ((List!46777 0))(
  ( (Nil!46653) (Cons!46653 (h!52073 C!25720) (t!349394 List!46777)) )
))
(declare-datatypes ((IArray!28143 0))(
  ( (IArray!28144 (innerList!14129 List!46777)) )
))
(declare-datatypes ((Conc!14069 0))(
  ( (Node!14069 (left!34701 Conc!14069) (right!35031 Conc!14069) (csize!28368 Int) (cheight!14280 Int)) (Leaf!21742 (xs!17375 IArray!28143) (csize!28369 Int)) (Empty!14069) )
))
(declare-datatypes ((List!46778 0))(
  ( (Nil!46654) (Cons!46654 (h!52074 (_ BitVec 16)) (t!349395 List!46778)) )
))
(declare-datatypes ((TokenValue!8088 0))(
  ( (FloatLiteralValue!16176 (text!57061 List!46778)) (TokenValueExt!8087 (__x!28399 Int)) (Broken!40440 (value!244425 List!46778)) (Object!8211) (End!8088) (Def!8088) (Underscore!8088) (Match!8088) (Else!8088) (Error!8088) (Case!8088) (If!8088) (Extends!8088) (Abstract!8088) (Class!8088) (Val!8088) (DelimiterValue!16176 (del!8148 List!46778)) (KeywordValue!8094 (value!244426 List!46778)) (CommentValue!16176 (value!244427 List!46778)) (WhitespaceValue!16176 (value!244428 List!46778)) (IndentationValue!8088 (value!244429 List!46778)) (String!54309) (Int32!8088) (Broken!40441 (value!244430 List!46778)) (Boolean!8089) (Unit!65758) (OperatorValue!8091 (op!8148 List!46778)) (IdentifierValue!16176 (value!244431 List!46778)) (IdentifierValue!16177 (value!244432 List!46778)) (WhitespaceValue!16177 (value!244433 List!46778)) (True!16176) (False!16176) (Broken!40442 (value!244434 List!46778)) (Broken!40443 (value!244435 List!46778)) (True!16177) (RightBrace!8088) (RightBracket!8088) (Colon!8088) (Null!8088) (Comma!8088) (LeftBracket!8088) (False!16177) (LeftBrace!8088) (ImaginaryLiteralValue!8088 (text!57062 List!46778)) (StringLiteralValue!24264 (value!244436 List!46778)) (EOFValue!8088 (value!244437 List!46778)) (IdentValue!8088 (value!244438 List!46778)) (DelimiterValue!16177 (value!244439 List!46778)) (DedentValue!8088 (value!244440 List!46778)) (NewLineValue!8088 (value!244441 List!46778)) (IntegerValue!24264 (value!244442 (_ BitVec 32)) (text!57063 List!46778)) (IntegerValue!24265 (value!244443 Int) (text!57064 List!46778)) (Times!8088) (Or!8088) (Equal!8088) (Minus!8088) (Broken!40444 (value!244444 List!46778)) (And!8088) (Div!8088) (LessEqual!8088) (Mod!8088) (Concat!20851) (Not!8088) (Plus!8088) (SpaceValue!8088 (value!244445 List!46778)) (IntegerValue!24266 (value!244446 Int) (text!57065 List!46778)) (StringLiteralValue!24265 (text!57066 List!46778)) (FloatLiteralValue!16177 (text!57067 List!46778)) (BytesLiteralValue!8088 (value!244447 List!46778)) (CommentValue!16177 (value!244448 List!46778)) (StringLiteralValue!24266 (value!244449 List!46778)) (ErrorTokenValue!8088 (msg!8149 List!46778)) )
))
(declare-datatypes ((BalanceConc!27732 0))(
  ( (BalanceConc!27733 (c!718746 Conc!14069)) )
))
(declare-datatypes ((TokenValueInjection!15604 0))(
  ( (TokenValueInjection!15605 (toValue!10586 Int) (toChars!10445 Int)) )
))
(declare-datatypes ((Regex!12763 0))(
  ( (ElementMatch!12763 (c!718747 C!25720)) (Concat!20852 (regOne!26038 Regex!12763) (regTwo!26038 Regex!12763)) (EmptyExpr!12763) (Star!12763 (reg!13092 Regex!12763)) (EmptyLang!12763) (Union!12763 (regOne!26039 Regex!12763) (regTwo!26039 Regex!12763)) )
))
(declare-datatypes ((String!54310 0))(
  ( (String!54311 (value!244450 String)) )
))
(declare-datatypes ((Rule!15516 0))(
  ( (Rule!15517 (regex!7858 Regex!12763) (tag!8722 String!54310) (isSeparator!7858 Bool) (transformation!7858 TokenValueInjection!15604)) )
))
(declare-datatypes ((List!46779 0))(
  ( (Nil!46655) (Cons!46655 (h!52075 Rule!15516) (t!349396 List!46779)) )
))
(declare-fun rules!4024 () List!46779)

(declare-fun r!4367 () Rule!15516)

(declare-fun contains!9681 (List!46779 Rule!15516) Bool)

(assert (=> b!4227922 (= res!1738519 (contains!9681 rules!4024 r!4367))))

(declare-fun b!4227923 () Bool)

(declare-fun e!2625202 () Bool)

(declare-fun tp!1294940 () Bool)

(declare-fun e!2625195 () Bool)

(declare-fun inv!61301 (String!54310) Bool)

(declare-fun inv!61303 (TokenValueInjection!15604) Bool)

(assert (=> b!4227923 (= e!2625202 (and tp!1294940 (inv!61301 (tag!8722 r!4367)) (inv!61303 (transformation!7858 r!4367)) e!2625195))))

(declare-fun res!1738520 () Bool)

(assert (=> start!404326 (=> (not res!1738520) (not e!2625197))))

(declare-datatypes ((LexerInterface!7453 0))(
  ( (LexerInterfaceExt!7450 (__x!28400 Int)) (Lexer!7451) )
))
(declare-fun thiss!26827 () LexerInterface!7453)

(get-info :version)

(assert (=> start!404326 (= res!1738520 ((_ is Lexer!7451) thiss!26827))))

(assert (=> start!404326 e!2625197))

(assert (=> start!404326 true))

(declare-fun e!2625196 () Bool)

(assert (=> start!404326 e!2625196))

(assert (=> start!404326 e!2625202))

(declare-fun b!4227924 () Bool)

(declare-fun ruleValid!3556 (LexerInterface!7453 Rule!15516) Bool)

(assert (=> b!4227924 (= e!2625197 (not (ruleValid!3556 thiss!26827 r!4367)))))

(declare-fun b!4227925 () Bool)

(declare-fun res!1738521 () Bool)

(assert (=> b!4227925 (=> (not res!1738521) (not e!2625197))))

(assert (=> b!4227925 (= res!1738521 (and (or (not ((_ is Cons!46655) rules!4024)) (not (= (h!52075 rules!4024) r!4367))) (or (not ((_ is Cons!46655) rules!4024)) (= (h!52075 rules!4024) r!4367)) (not ((_ is Nil!46655) rules!4024))))))

(declare-fun tp!1294937 () Bool)

(declare-fun b!4227926 () Bool)

(declare-fun e!2625200 () Bool)

(declare-fun e!2625199 () Bool)

(assert (=> b!4227926 (= e!2625200 (and tp!1294937 (inv!61301 (tag!8722 (h!52075 rules!4024))) (inv!61303 (transformation!7858 (h!52075 rules!4024))) e!2625199))))

(declare-fun b!4227927 () Bool)

(declare-fun tp!1294936 () Bool)

(assert (=> b!4227927 (= e!2625196 (and e!2625200 tp!1294936))))

(declare-fun b!4227928 () Bool)

(declare-fun res!1738522 () Bool)

(assert (=> b!4227928 (=> (not res!1738522) (not e!2625197))))

(declare-fun rulesValidInductive!2960 (LexerInterface!7453 List!46779) Bool)

(assert (=> b!4227928 (= res!1738522 (rulesValidInductive!2960 thiss!26827 rules!4024))))

(assert (=> b!4227929 (= e!2625195 (and tp!1294938 tp!1294941))))

(assert (=> b!4227930 (= e!2625199 (and tp!1294942 tp!1294939))))

(assert (= (and start!404326 res!1738520) b!4227922))

(assert (= (and b!4227922 res!1738519) b!4227928))

(assert (= (and b!4227928 res!1738522) b!4227925))

(assert (= (and b!4227925 res!1738521) b!4227924))

(assert (= b!4227926 b!4227930))

(assert (= b!4227927 b!4227926))

(assert (= (and start!404326 ((_ is Cons!46655) rules!4024)) b!4227927))

(assert (= b!4227923 b!4227929))

(assert (= start!404326 b!4227923))

(declare-fun m!4815157 () Bool)

(assert (=> b!4227924 m!4815157))

(declare-fun m!4815159 () Bool)

(assert (=> b!4227922 m!4815159))

(declare-fun m!4815161 () Bool)

(assert (=> b!4227923 m!4815161))

(declare-fun m!4815163 () Bool)

(assert (=> b!4227923 m!4815163))

(declare-fun m!4815165 () Bool)

(assert (=> b!4227928 m!4815165))

(declare-fun m!4815167 () Bool)

(assert (=> b!4227926 m!4815167))

(declare-fun m!4815169 () Bool)

(assert (=> b!4227926 m!4815169))

(check-sat b_and!334015 (not b_next!125489) (not b!4227926) (not b_next!125483) (not b!4227928) (not b!4227924) (not b!4227927) (not b_next!125485) b_and!334013 b_and!334017 (not b!4227923) (not b!4227922) (not b_next!125487) b_and!334019)
(check-sat b_and!334015 (not b_next!125489) (not b_next!125483) (not b_next!125485) b_and!334013 b_and!334017 (not b_next!125487) b_and!334019)
