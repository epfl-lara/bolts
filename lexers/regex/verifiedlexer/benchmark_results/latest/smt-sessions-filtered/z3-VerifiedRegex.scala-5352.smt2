; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273170 () Bool)

(assert start!273170)

(declare-fun b!2816944 () Bool)

(declare-fun b_free!80325 () Bool)

(declare-fun b_next!81029 () Bool)

(assert (=> b!2816944 (= b_free!80325 (not b_next!81029))))

(declare-fun tp!899263 () Bool)

(declare-fun b_and!205615 () Bool)

(assert (=> b!2816944 (= tp!899263 b_and!205615)))

(declare-fun b_free!80327 () Bool)

(declare-fun b_next!81031 () Bool)

(assert (=> b!2816944 (= b_free!80327 (not b_next!81031))))

(declare-fun tp!899266 () Bool)

(declare-fun b_and!205617 () Bool)

(assert (=> b!2816944 (= tp!899266 b_and!205617)))

(declare-fun b!2816945 () Bool)

(declare-fun b_free!80329 () Bool)

(declare-fun b_next!81033 () Bool)

(assert (=> b!2816945 (= b_free!80329 (not b_next!81033))))

(declare-fun tp!899265 () Bool)

(declare-fun b_and!205619 () Bool)

(assert (=> b!2816945 (= tp!899265 b_and!205619)))

(declare-fun b_free!80331 () Bool)

(declare-fun b_next!81035 () Bool)

(assert (=> b!2816945 (= b_free!80331 (not b_next!81035))))

(declare-fun tp!899268 () Bool)

(declare-fun b_and!205621 () Bool)

(assert (=> b!2816945 (= tp!899268 b_and!205621)))

(declare-fun b!2816937 () Bool)

(declare-fun res!1172267 () Bool)

(declare-fun e!1781420 () Bool)

(assert (=> b!2816937 (=> (not res!1172267) (not e!1781420))))

(declare-datatypes ((LexerInterface!4514 0))(
  ( (LexerInterfaceExt!4511 (__x!21979 Int)) (Lexer!4512) )
))
(declare-fun thiss!27755 () LexerInterface!4514)

(declare-datatypes ((List!33078 0))(
  ( (Nil!32954) (Cons!32954 (h!38374 (_ BitVec 16)) (t!230127 List!33078)) )
))
(declare-datatypes ((TokenValue!5153 0))(
  ( (FloatLiteralValue!10306 (text!36516 List!33078)) (TokenValueExt!5152 (__x!21980 Int)) (Broken!25765 (value!158599 List!33078)) (Object!5276) (End!5153) (Def!5153) (Underscore!5153) (Match!5153) (Else!5153) (Error!5153) (Case!5153) (If!5153) (Extends!5153) (Abstract!5153) (Class!5153) (Val!5153) (DelimiterValue!10306 (del!5213 List!33078)) (KeywordValue!5159 (value!158600 List!33078)) (CommentValue!10306 (value!158601 List!33078)) (WhitespaceValue!10306 (value!158602 List!33078)) (IndentationValue!5153 (value!158603 List!33078)) (String!36220) (Int32!5153) (Broken!25766 (value!158604 List!33078)) (Boolean!5154) (Unit!46927) (OperatorValue!5156 (op!5213 List!33078)) (IdentifierValue!10306 (value!158605 List!33078)) (IdentifierValue!10307 (value!158606 List!33078)) (WhitespaceValue!10307 (value!158607 List!33078)) (True!10306) (False!10306) (Broken!25767 (value!158608 List!33078)) (Broken!25768 (value!158609 List!33078)) (True!10307) (RightBrace!5153) (RightBracket!5153) (Colon!5153) (Null!5153) (Comma!5153) (LeftBracket!5153) (False!10307) (LeftBrace!5153) (ImaginaryLiteralValue!5153 (text!36517 List!33078)) (StringLiteralValue!15459 (value!158610 List!33078)) (EOFValue!5153 (value!158611 List!33078)) (IdentValue!5153 (value!158612 List!33078)) (DelimiterValue!10307 (value!158613 List!33078)) (DedentValue!5153 (value!158614 List!33078)) (NewLineValue!5153 (value!158615 List!33078)) (IntegerValue!15459 (value!158616 (_ BitVec 32)) (text!36518 List!33078)) (IntegerValue!15460 (value!158617 Int) (text!36519 List!33078)) (Times!5153) (Or!5153) (Equal!5153) (Minus!5153) (Broken!25769 (value!158618 List!33078)) (And!5153) (Div!5153) (LessEqual!5153) (Mod!5153) (Concat!13466) (Not!5153) (Plus!5153) (SpaceValue!5153 (value!158619 List!33078)) (IntegerValue!15461 (value!158620 Int) (text!36520 List!33078)) (StringLiteralValue!15460 (text!36521 List!33078)) (FloatLiteralValue!10307 (text!36522 List!33078)) (BytesLiteralValue!5153 (value!158621 List!33078)) (CommentValue!10307 (value!158622 List!33078)) (StringLiteralValue!15461 (value!158623 List!33078)) (ErrorTokenValue!5153 (msg!5214 List!33078)) )
))
(declare-datatypes ((C!16808 0))(
  ( (C!16809 (val!10384 Int)) )
))
(declare-datatypes ((Regex!8313 0))(
  ( (ElementMatch!8313 (c!456744 C!16808)) (Concat!13467 (regOne!17138 Regex!8313) (regTwo!17138 Regex!8313)) (EmptyExpr!8313) (Star!8313 (reg!8642 Regex!8313)) (EmptyLang!8313) (Union!8313 (regOne!17139 Regex!8313) (regTwo!17139 Regex!8313)) )
))
(declare-datatypes ((String!36221 0))(
  ( (String!36222 (value!158624 String)) )
))
(declare-datatypes ((List!33079 0))(
  ( (Nil!32955) (Cons!32955 (h!38375 C!16808) (t!230128 List!33079)) )
))
(declare-datatypes ((IArray!20457 0))(
  ( (IArray!20458 (innerList!10286 List!33079)) )
))
(declare-datatypes ((Conc!10226 0))(
  ( (Node!10226 (left!24890 Conc!10226) (right!25220 Conc!10226) (csize!20682 Int) (cheight!10437 Int)) (Leaf!15579 (xs!13338 IArray!20457) (csize!20683 Int)) (Empty!10226) )
))
(declare-datatypes ((BalanceConc!20090 0))(
  ( (BalanceConc!20091 (c!456745 Conc!10226)) )
))
(declare-datatypes ((TokenValueInjection!9734 0))(
  ( (TokenValueInjection!9735 (toValue!6933 Int) (toChars!6792 Int)) )
))
(declare-datatypes ((Rule!9646 0))(
  ( (Rule!9647 (regex!4923 Regex!8313) (tag!5427 String!36221) (isSeparator!4923 Bool) (transformation!4923 TokenValueInjection!9734)) )
))
(declare-datatypes ((Token!9248 0))(
  ( (Token!9249 (value!158625 TokenValue!5153) (rule!7351 Rule!9646) (size!25683 Int) (originalCharacters!5655 List!33079)) )
))
(declare-datatypes ((List!33080 0))(
  ( (Nil!32956) (Cons!32956 (h!38376 Token!9248) (t!230129 List!33080)) )
))
(declare-fun l!6581 () List!33080)

(declare-datatypes ((List!33081 0))(
  ( (Nil!32957) (Cons!32957 (h!38377 Rule!9646) (t!230130 List!33081)) )
))
(declare-fun rules!4424 () List!33081)

(declare-fun tokensListTwoByTwoPredicateSeparableList!651 (LexerInterface!4514 List!33080 List!33081) Bool)

(assert (=> b!2816937 (= res!1172267 (tokensListTwoByTwoPredicateSeparableList!651 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2816938 () Bool)

(declare-fun res!1172273 () Bool)

(assert (=> b!2816938 (=> (not res!1172273) (not e!1781420))))

(declare-fun rulesProduceEachTokenIndividuallyList!1566 (LexerInterface!4514 List!33081 List!33080) Bool)

(assert (=> b!2816938 (= res!1172273 (rulesProduceEachTokenIndividuallyList!1566 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2816940 () Bool)

(declare-fun e!1781427 () Bool)

(declare-fun tp!899260 () Bool)

(declare-fun e!1781428 () Bool)

(declare-fun inv!21 (TokenValue!5153) Bool)

(assert (=> b!2816940 (= e!1781427 (and (inv!21 (value!158625 (h!38376 l!6581))) e!1781428 tp!899260))))

(declare-fun b!2816941 () Bool)

(declare-fun res!1172268 () Bool)

(assert (=> b!2816941 (=> (not res!1172268) (not e!1781420))))

(declare-fun rulesInvariant!3932 (LexerInterface!4514 List!33081) Bool)

(assert (=> b!2816941 (= res!1172268 (rulesInvariant!3932 thiss!27755 rules!4424))))

(declare-fun b!2816942 () Bool)

(assert (=> b!2816942 (= e!1781420 (not (rulesInvariant!3932 Lexer!4512 rules!4424)))))

(declare-fun lt!1006007 () List!33080)

(declare-fun e!1781430 () Bool)

(assert (=> b!2816942 (= (rulesProduceEachTokenIndividuallyList!1566 thiss!27755 rules!4424 lt!1006007) e!1781430)))

(declare-fun res!1172269 () Bool)

(assert (=> b!2816942 (=> res!1172269 e!1781430)))

(get-info :version)

(assert (=> b!2816942 (= res!1172269 (not ((_ is Cons!32956) lt!1006007)))))

(declare-fun i!1730 () Int)

(declare-fun take!517 (List!33080 Int) List!33080)

(assert (=> b!2816942 (= lt!1006007 (take!517 l!6581 i!1730))))

(declare-fun b!2816943 () Bool)

(declare-fun res!1172272 () Bool)

(assert (=> b!2816943 (=> (not res!1172272) (not e!1781420))))

(assert (=> b!2816943 (= res!1172272 ((_ is Nil!32956) l!6581))))

(declare-fun e!1781423 () Bool)

(assert (=> b!2816944 (= e!1781423 (and tp!899263 tp!899266))))

(declare-fun e!1781425 () Bool)

(assert (=> b!2816945 (= e!1781425 (and tp!899265 tp!899268))))

(declare-fun b!2816946 () Bool)

(declare-fun res!1172274 () Bool)

(assert (=> b!2816946 (=> (not res!1172274) (not e!1781420))))

(declare-fun isEmpty!18240 (List!33081) Bool)

(assert (=> b!2816946 (= res!1172274 (not (isEmpty!18240 rules!4424)))))

(declare-fun b!2816947 () Bool)

(declare-fun e!1781424 () Bool)

(assert (=> b!2816947 (= e!1781430 e!1781424)))

(declare-fun res!1172270 () Bool)

(assert (=> b!2816947 (=> (not res!1172270) (not e!1781424))))

(declare-fun rulesProduceIndividualToken!2054 (LexerInterface!4514 List!33081 Token!9248) Bool)

(assert (=> b!2816947 (= res!1172270 (rulesProduceIndividualToken!2054 thiss!27755 rules!4424 (h!38376 lt!1006007)))))

(declare-fun b!2816948 () Bool)

(assert (=> b!2816948 (= e!1781424 (rulesProduceEachTokenIndividuallyList!1566 thiss!27755 rules!4424 (t!230129 lt!1006007)))))

(declare-fun e!1781421 () Bool)

(declare-fun b!2816949 () Bool)

(declare-fun tp!899264 () Bool)

(declare-fun inv!44873 (Token!9248) Bool)

(assert (=> b!2816949 (= e!1781421 (and (inv!44873 (h!38376 l!6581)) e!1781427 tp!899264))))

(declare-fun e!1781431 () Bool)

(declare-fun b!2816950 () Bool)

(declare-fun tp!899267 () Bool)

(declare-fun inv!44870 (String!36221) Bool)

(declare-fun inv!44874 (TokenValueInjection!9734) Bool)

(assert (=> b!2816950 (= e!1781431 (and tp!899267 (inv!44870 (tag!5427 (h!38377 rules!4424))) (inv!44874 (transformation!4923 (h!38377 rules!4424))) e!1781423))))

(declare-fun b!2816951 () Bool)

(declare-fun tp!899262 () Bool)

(assert (=> b!2816951 (= e!1781428 (and tp!899262 (inv!44870 (tag!5427 (rule!7351 (h!38376 l!6581)))) (inv!44874 (transformation!4923 (rule!7351 (h!38376 l!6581)))) e!1781425))))

(declare-fun b!2816939 () Bool)

(declare-fun e!1781429 () Bool)

(declare-fun tp!899261 () Bool)

(assert (=> b!2816939 (= e!1781429 (and e!1781431 tp!899261))))

(declare-fun res!1172271 () Bool)

(assert (=> start!273170 (=> (not res!1172271) (not e!1781420))))

(assert (=> start!273170 (= res!1172271 ((_ is Lexer!4512) thiss!27755))))

(assert (=> start!273170 e!1781420))

(assert (=> start!273170 true))

(assert (=> start!273170 e!1781429))

(assert (=> start!273170 e!1781421))

(assert (= (and start!273170 res!1172271) b!2816946))

(assert (= (and b!2816946 res!1172274) b!2816941))

(assert (= (and b!2816941 res!1172268) b!2816938))

(assert (= (and b!2816938 res!1172273) b!2816937))

(assert (= (and b!2816937 res!1172267) b!2816943))

(assert (= (and b!2816943 res!1172272) b!2816942))

(assert (= (and b!2816942 (not res!1172269)) b!2816947))

(assert (= (and b!2816947 res!1172270) b!2816948))

(assert (= b!2816950 b!2816944))

(assert (= b!2816939 b!2816950))

(assert (= (and start!273170 ((_ is Cons!32957) rules!4424)) b!2816939))

(assert (= b!2816951 b!2816945))

(assert (= b!2816940 b!2816951))

(assert (= b!2816949 b!2816940))

(assert (= (and start!273170 ((_ is Cons!32956) l!6581)) b!2816949))

(declare-fun m!3247961 () Bool)

(assert (=> b!2816950 m!3247961))

(declare-fun m!3247963 () Bool)

(assert (=> b!2816950 m!3247963))

(declare-fun m!3247965 () Bool)

(assert (=> b!2816941 m!3247965))

(declare-fun m!3247967 () Bool)

(assert (=> b!2816949 m!3247967))

(declare-fun m!3247969 () Bool)

(assert (=> b!2816951 m!3247969))

(declare-fun m!3247971 () Bool)

(assert (=> b!2816951 m!3247971))

(declare-fun m!3247973 () Bool)

(assert (=> b!2816940 m!3247973))

(declare-fun m!3247975 () Bool)

(assert (=> b!2816946 m!3247975))

(declare-fun m!3247977 () Bool)

(assert (=> b!2816937 m!3247977))

(declare-fun m!3247979 () Bool)

(assert (=> b!2816948 m!3247979))

(declare-fun m!3247981 () Bool)

(assert (=> b!2816938 m!3247981))

(declare-fun m!3247983 () Bool)

(assert (=> b!2816947 m!3247983))

(declare-fun m!3247985 () Bool)

(assert (=> b!2816942 m!3247985))

(declare-fun m!3247987 () Bool)

(assert (=> b!2816942 m!3247987))

(declare-fun m!3247989 () Bool)

(assert (=> b!2816942 m!3247989))

(check-sat (not b!2816949) b_and!205619 (not b!2816948) (not b_next!81035) b_and!205615 b_and!205617 b_and!205621 (not b_next!81029) (not b!2816937) (not b!2816951) (not b!2816938) (not b_next!81031) (not b!2816950) (not b!2816940) (not b!2816946) (not b_next!81033) (not b!2816939) (not b!2816942) (not b!2816941) (not b!2816947))
(check-sat (not b_next!81031) b_and!205619 (not b_next!81035) b_and!205615 b_and!205617 (not b_next!81033) b_and!205621 (not b_next!81029))
