; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!508120 () Bool)

(assert start!508120)

(declare-fun b!4861514 () Bool)

(declare-fun b_free!130491 () Bool)

(declare-fun b_next!131281 () Bool)

(assert (=> b!4861514 (= b_free!130491 (not b_next!131281))))

(declare-fun tp!1367834 () Bool)

(declare-fun b_and!342343 () Bool)

(assert (=> b!4861514 (= tp!1367834 b_and!342343)))

(declare-fun b_free!130493 () Bool)

(declare-fun b_next!131283 () Bool)

(assert (=> b!4861514 (= b_free!130493 (not b_next!131283))))

(declare-fun tp!1367833 () Bool)

(declare-fun b_and!342345 () Bool)

(assert (=> b!4861514 (= tp!1367833 b_and!342345)))

(declare-fun b!4861510 () Bool)

(declare-fun e!3039560 () Bool)

(assert (=> b!4861510 (= e!3039560 false)))

(declare-fun lt!1992532 () Bool)

(declare-datatypes ((C!26368 0))(
  ( (C!26369 (val!22506 Int)) )
))
(declare-datatypes ((List!55977 0))(
  ( (Nil!55853) (Cons!55853 (h!62301 C!26368) (t!363597 List!55977)) )
))
(declare-datatypes ((IArray!29137 0))(
  ( (IArray!29138 (innerList!14626 List!55977)) )
))
(declare-datatypes ((Conc!14538 0))(
  ( (Node!14538 (left!40571 Conc!14538) (right!40901 Conc!14538) (csize!29306 Int) (cheight!14749 Int)) (Leaf!24254 (xs!17844 IArray!29137) (csize!29307 Int)) (Empty!14538) )
))
(declare-datatypes ((BalanceConc!28518 0))(
  ( (BalanceConc!28519 (c!826853 Conc!14538)) )
))
(declare-fun input!661 () BalanceConc!28518)

(declare-fun totalInput!332 () BalanceConc!28518)

(declare-fun isSuffix!1039 (List!55977 List!55977) Bool)

(declare-fun list!17436 (BalanceConc!28518) List!55977)

(assert (=> b!4861510 (= lt!1992532 (isSuffix!1039 (list!17436 input!661) (list!17436 totalInput!332)))))

(declare-fun b!4861511 () Bool)

(declare-fun res!2075375 () Bool)

(assert (=> b!4861511 (=> (not res!2075375) (not e!3039560))))

(declare-datatypes ((List!55978 0))(
  ( (Nil!55854) (Cons!55854 (h!62302 (_ BitVec 16)) (t!363598 List!55978)) )
))
(declare-datatypes ((TokenValue!8320 0))(
  ( (FloatLiteralValue!16640 (text!58685 List!55978)) (TokenValueExt!8319 (__x!33933 Int)) (Broken!41600 (value!257408 List!55978)) (Object!8443) (End!8320) (Def!8320) (Underscore!8320) (Match!8320) (Else!8320) (Error!8320) (Case!8320) (If!8320) (Extends!8320) (Abstract!8320) (Class!8320) (Val!8320) (DelimiterValue!16640 (del!8380 List!55978)) (KeywordValue!8326 (value!257409 List!55978)) (CommentValue!16640 (value!257410 List!55978)) (WhitespaceValue!16640 (value!257411 List!55978)) (IndentationValue!8320 (value!257412 List!55978)) (String!63017) (Int32!8320) (Broken!41601 (value!257413 List!55978)) (Boolean!8321) (Unit!145903) (OperatorValue!8323 (op!8380 List!55978)) (IdentifierValue!16640 (value!257414 List!55978)) (IdentifierValue!16641 (value!257415 List!55978)) (WhitespaceValue!16641 (value!257416 List!55978)) (True!16640) (False!16640) (Broken!41602 (value!257417 List!55978)) (Broken!41603 (value!257418 List!55978)) (True!16641) (RightBrace!8320) (RightBracket!8320) (Colon!8320) (Null!8320) (Comma!8320) (LeftBracket!8320) (False!16641) (LeftBrace!8320) (ImaginaryLiteralValue!8320 (text!58686 List!55978)) (StringLiteralValue!24960 (value!257419 List!55978)) (EOFValue!8320 (value!257420 List!55978)) (IdentValue!8320 (value!257421 List!55978)) (DelimiterValue!16641 (value!257422 List!55978)) (DedentValue!8320 (value!257423 List!55978)) (NewLineValue!8320 (value!257424 List!55978)) (IntegerValue!24960 (value!257425 (_ BitVec 32)) (text!58687 List!55978)) (IntegerValue!24961 (value!257426 Int) (text!58688 List!55978)) (Times!8320) (Or!8320) (Equal!8320) (Minus!8320) (Broken!41604 (value!257427 List!55978)) (And!8320) (Div!8320) (LessEqual!8320) (Mod!8320) (Concat!21405) (Not!8320) (Plus!8320) (SpaceValue!8320 (value!257428 List!55978)) (IntegerValue!24962 (value!257429 Int) (text!58689 List!55978)) (StringLiteralValue!24961 (text!58690 List!55978)) (FloatLiteralValue!16641 (text!58691 List!55978)) (BytesLiteralValue!8320 (value!257430 List!55978)) (CommentValue!16641 (value!257431 List!55978)) (StringLiteralValue!24962 (value!257432 List!55978)) (ErrorTokenValue!8320 (msg!8381 List!55978)) )
))
(declare-datatypes ((TokenValueInjection!15948 0))(
  ( (TokenValueInjection!15949 (toValue!10861 Int) (toChars!10720 Int)) )
))
(declare-datatypes ((Regex!13085 0))(
  ( (ElementMatch!13085 (c!826854 C!26368)) (Concat!21406 (regOne!26682 Regex!13085) (regTwo!26682 Regex!13085)) (EmptyExpr!13085) (Star!13085 (reg!13414 Regex!13085)) (EmptyLang!13085) (Union!13085 (regOne!26683 Regex!13085) (regTwo!26683 Regex!13085)) )
))
(declare-datatypes ((String!63018 0))(
  ( (String!63019 (value!257433 String)) )
))
(declare-datatypes ((Rule!15820 0))(
  ( (Rule!15821 (regex!8010 Regex!13085) (tag!8874 String!63018) (isSeparator!8010 Bool) (transformation!8010 TokenValueInjection!15948)) )
))
(declare-datatypes ((List!55979 0))(
  ( (Nil!55855) (Cons!55855 (h!62303 Rule!15820) (t!363599 List!55979)) )
))
(declare-fun rules!1248 () List!55979)

(declare-fun isEmpty!29869 (List!55979) Bool)

(assert (=> b!4861511 (= res!2075375 (not (isEmpty!29869 rules!1248)))))

(declare-fun e!3039564 () Bool)

(declare-fun b!4861512 () Bool)

(declare-fun tp!1367835 () Bool)

(declare-fun e!3039563 () Bool)

(declare-fun inv!71725 (String!63018) Bool)

(declare-fun inv!71729 (TokenValueInjection!15948) Bool)

(assert (=> b!4861512 (= e!3039564 (and tp!1367835 (inv!71725 (tag!8874 (h!62303 rules!1248))) (inv!71729 (transformation!8010 (h!62303 rules!1248))) e!3039563))))

(declare-fun res!2075377 () Bool)

(assert (=> start!508120 (=> (not res!2075377) (not e!3039560))))

(declare-datatypes ((LexerInterface!7602 0))(
  ( (LexerInterfaceExt!7599 (__x!33934 Int)) (Lexer!7600) )
))
(declare-fun thiss!11777 () LexerInterface!7602)

(get-info :version)

(assert (=> start!508120 (= res!2075377 ((_ is Lexer!7600) thiss!11777))))

(assert (=> start!508120 e!3039560))

(assert (=> start!508120 true))

(declare-fun e!3039561 () Bool)

(assert (=> start!508120 e!3039561))

(declare-fun e!3039565 () Bool)

(declare-fun inv!71730 (BalanceConc!28518) Bool)

(assert (=> start!508120 (and (inv!71730 input!661) e!3039565)))

(declare-fun e!3039559 () Bool)

(assert (=> start!508120 (and (inv!71730 totalInput!332) e!3039559)))

(declare-fun b!4861513 () Bool)

(declare-fun res!2075376 () Bool)

(assert (=> b!4861513 (=> (not res!2075376) (not e!3039560))))

(declare-fun rulesInvariant!6700 (LexerInterface!7602 List!55979) Bool)

(assert (=> b!4861513 (= res!2075376 (rulesInvariant!6700 thiss!11777 rules!1248))))

(assert (=> b!4861514 (= e!3039563 (and tp!1367834 tp!1367833))))

(declare-fun b!4861515 () Bool)

(declare-fun tp!1367836 () Bool)

(declare-fun inv!71731 (Conc!14538) Bool)

(assert (=> b!4861515 (= e!3039565 (and (inv!71731 (c!826853 input!661)) tp!1367836))))

(declare-fun b!4861516 () Bool)

(declare-fun tp!1367837 () Bool)

(assert (=> b!4861516 (= e!3039559 (and (inv!71731 (c!826853 totalInput!332)) tp!1367837))))

(declare-fun b!4861517 () Bool)

(declare-fun tp!1367832 () Bool)

(assert (=> b!4861517 (= e!3039561 (and e!3039564 tp!1367832))))

(assert (= (and start!508120 res!2075377) b!4861511))

(assert (= (and b!4861511 res!2075375) b!4861513))

(assert (= (and b!4861513 res!2075376) b!4861510))

(assert (= b!4861512 b!4861514))

(assert (= b!4861517 b!4861512))

(assert (= (and start!508120 ((_ is Cons!55855) rules!1248)) b!4861517))

(assert (= start!508120 b!4861515))

(assert (= start!508120 b!4861516))

(declare-fun m!5859194 () Bool)

(assert (=> b!4861516 m!5859194))

(declare-fun m!5859196 () Bool)

(assert (=> b!4861513 m!5859196))

(declare-fun m!5859198 () Bool)

(assert (=> b!4861515 m!5859198))

(declare-fun m!5859200 () Bool)

(assert (=> start!508120 m!5859200))

(declare-fun m!5859202 () Bool)

(assert (=> start!508120 m!5859202))

(declare-fun m!5859204 () Bool)

(assert (=> b!4861510 m!5859204))

(declare-fun m!5859206 () Bool)

(assert (=> b!4861510 m!5859206))

(assert (=> b!4861510 m!5859204))

(assert (=> b!4861510 m!5859206))

(declare-fun m!5859208 () Bool)

(assert (=> b!4861510 m!5859208))

(declare-fun m!5859210 () Bool)

(assert (=> b!4861512 m!5859210))

(declare-fun m!5859212 () Bool)

(assert (=> b!4861512 m!5859212))

(declare-fun m!5859214 () Bool)

(assert (=> b!4861511 m!5859214))

(check-sat (not b_next!131281) (not start!508120) (not b!4861515) b_and!342345 b_and!342343 (not b!4861517) (not b!4861513) (not b!4861511) (not b_next!131283) (not b!4861512) (not b!4861510) (not b!4861516))
(check-sat b_and!342345 b_and!342343 (not b_next!131281) (not b_next!131283))
