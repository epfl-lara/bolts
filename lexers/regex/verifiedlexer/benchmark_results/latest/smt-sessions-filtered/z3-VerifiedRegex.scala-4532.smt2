; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239962 () Bool)

(assert start!239962)

(declare-fun b!2461189 () Bool)

(declare-fun b_free!70605 () Bool)

(declare-fun b_next!71309 () Bool)

(assert (=> b!2461189 (= b_free!70605 (not b_next!71309))))

(declare-fun tp!783563 () Bool)

(declare-fun b_and!185677 () Bool)

(assert (=> b!2461189 (= tp!783563 b_and!185677)))

(declare-fun b_free!70607 () Bool)

(declare-fun b_next!71311 () Bool)

(assert (=> b!2461189 (= b_free!70607 (not b_next!71311))))

(declare-fun tp!783562 () Bool)

(declare-fun b_and!185679 () Bool)

(assert (=> b!2461189 (= tp!783562 b_and!185679)))

(declare-fun b!2461188 () Bool)

(declare-fun b_free!70609 () Bool)

(declare-fun b_next!71313 () Bool)

(assert (=> b!2461188 (= b_free!70609 (not b_next!71313))))

(declare-fun tp!783560 () Bool)

(declare-fun b_and!185681 () Bool)

(assert (=> b!2461188 (= tp!783560 b_and!185681)))

(declare-fun b_free!70611 () Bool)

(declare-fun b_next!71315 () Bool)

(assert (=> b!2461188 (= b_free!70611 (not b_next!71315))))

(declare-fun tp!783559 () Bool)

(declare-fun b_and!185683 () Bool)

(assert (=> b!2461188 (= tp!783559 b_and!185683)))

(declare-fun b!2461182 () Bool)

(declare-fun res!1042992 () Bool)

(declare-fun e!1560960 () Bool)

(assert (=> b!2461182 (=> (not res!1042992) (not e!1560960))))

(declare-datatypes ((List!28738 0))(
  ( (Nil!28638) (Cons!28638 (h!34039 (_ BitVec 16)) (t!208757 List!28738)) )
))
(declare-datatypes ((TokenValue!4637 0))(
  ( (FloatLiteralValue!9274 (text!32904 List!28738)) (TokenValueExt!4636 (__x!18529 Int)) (Broken!23185 (value!142233 List!28738)) (Object!4736) (End!4637) (Def!4637) (Underscore!4637) (Match!4637) (Else!4637) (Error!4637) (Case!4637) (If!4637) (Extends!4637) (Abstract!4637) (Class!4637) (Val!4637) (DelimiterValue!9274 (del!4697 List!28738)) (KeywordValue!4643 (value!142234 List!28738)) (CommentValue!9274 (value!142235 List!28738)) (WhitespaceValue!9274 (value!142236 List!28738)) (IndentationValue!4637 (value!142237 List!28738)) (String!31480) (Int32!4637) (Broken!23186 (value!142238 List!28738)) (Boolean!4638) (Unit!41976) (OperatorValue!4640 (op!4697 List!28738)) (IdentifierValue!9274 (value!142239 List!28738)) (IdentifierValue!9275 (value!142240 List!28738)) (WhitespaceValue!9275 (value!142241 List!28738)) (True!9274) (False!9274) (Broken!23187 (value!142242 List!28738)) (Broken!23188 (value!142243 List!28738)) (True!9275) (RightBrace!4637) (RightBracket!4637) (Colon!4637) (Null!4637) (Comma!4637) (LeftBracket!4637) (False!9275) (LeftBrace!4637) (ImaginaryLiteralValue!4637 (text!32905 List!28738)) (StringLiteralValue!13911 (value!142244 List!28738)) (EOFValue!4637 (value!142245 List!28738)) (IdentValue!4637 (value!142246 List!28738)) (DelimiterValue!9275 (value!142247 List!28738)) (DedentValue!4637 (value!142248 List!28738)) (NewLineValue!4637 (value!142249 List!28738)) (IntegerValue!13911 (value!142250 (_ BitVec 32)) (text!32906 List!28738)) (IntegerValue!13912 (value!142251 Int) (text!32907 List!28738)) (Times!4637) (Or!4637) (Equal!4637) (Minus!4637) (Broken!23189 (value!142252 List!28738)) (And!4637) (Div!4637) (LessEqual!4637) (Mod!4637) (Concat!11876) (Not!4637) (Plus!4637) (SpaceValue!4637 (value!142253 List!28738)) (IntegerValue!13913 (value!142254 Int) (text!32908 List!28738)) (StringLiteralValue!13912 (text!32909 List!28738)) (FloatLiteralValue!9275 (text!32910 List!28738)) (BytesLiteralValue!4637 (value!142255 List!28738)) (CommentValue!9275 (value!142256 List!28738)) (StringLiteralValue!13913 (value!142257 List!28738)) (ErrorTokenValue!4637 (msg!4698 List!28738)) )
))
(declare-datatypes ((C!14636 0))(
  ( (C!14637 (val!8578 Int)) )
))
(declare-datatypes ((List!28739 0))(
  ( (Nil!28639) (Cons!28639 (h!34040 C!14636) (t!208758 List!28739)) )
))
(declare-datatypes ((IArray!18315 0))(
  ( (IArray!18316 (innerList!9215 List!28739)) )
))
(declare-datatypes ((Conc!9155 0))(
  ( (Node!9155 (left!22003 Conc!9155) (right!22333 Conc!9155) (csize!18540 Int) (cheight!9366 Int)) (Leaf!13688 (xs!12135 IArray!18315) (csize!18541 Int)) (Empty!9155) )
))
(declare-datatypes ((BalanceConc!17924 0))(
  ( (BalanceConc!17925 (c!392824 Conc!9155)) )
))
(declare-datatypes ((Regex!7239 0))(
  ( (ElementMatch!7239 (c!392825 C!14636)) (Concat!11877 (regOne!14990 Regex!7239) (regTwo!14990 Regex!7239)) (EmptyExpr!7239) (Star!7239 (reg!7568 Regex!7239)) (EmptyLang!7239) (Union!7239 (regOne!14991 Regex!7239) (regTwo!14991 Regex!7239)) )
))
(declare-datatypes ((String!31481 0))(
  ( (String!31482 (value!142258 String)) )
))
(declare-datatypes ((TokenValueInjection!8774 0))(
  ( (TokenValueInjection!8775 (toValue!6303 Int) (toChars!6162 Int)) )
))
(declare-datatypes ((Rule!8702 0))(
  ( (Rule!8703 (regex!4451 Regex!7239) (tag!4941 String!31481) (isSeparator!4451 Bool) (transformation!4451 TokenValueInjection!8774)) )
))
(declare-datatypes ((List!28740 0))(
  ( (Nil!28640) (Cons!28640 (h!34041 Rule!8702) (t!208759 List!28740)) )
))
(declare-fun rules!4472 () List!28740)

(declare-fun isEmpty!16647 (List!28740) Bool)

(assert (=> b!2461182 (= res!1042992 (not (isEmpty!16647 rules!4472)))))

(declare-fun b!2461183 () Bool)

(declare-fun e!1560953 () Bool)

(declare-fun e!1560956 () Bool)

(declare-fun tp!783556 () Bool)

(assert (=> b!2461183 (= e!1560953 (and e!1560956 tp!783556))))

(declare-fun b!2461184 () Bool)

(declare-fun tp!783558 () Bool)

(declare-fun e!1560951 () Bool)

(declare-fun inv!38718 (String!31481) Bool)

(declare-fun inv!38721 (TokenValueInjection!8774) Bool)

(assert (=> b!2461184 (= e!1560956 (and tp!783558 (inv!38718 (tag!4941 (h!34041 rules!4472))) (inv!38721 (transformation!4451 (h!34041 rules!4472))) e!1560951))))

(declare-fun e!1560950 () Bool)

(declare-datatypes ((Token!8372 0))(
  ( (Token!8373 (value!142259 TokenValue!4637) (rule!6809 Rule!8702) (size!22289 Int) (originalCharacters!5217 List!28739)) )
))
(declare-datatypes ((List!28741 0))(
  ( (Nil!28641) (Cons!28641 (h!34042 Token!8372) (t!208760 List!28741)) )
))
(declare-fun l!6611 () List!28741)

(declare-fun tp!783561 () Bool)

(declare-fun b!2461185 () Bool)

(declare-fun e!1560958 () Bool)

(declare-fun inv!21 (TokenValue!4637) Bool)

(assert (=> b!2461185 (= e!1560958 (and (inv!21 (value!142259 (h!34042 l!6611))) e!1560950 tp!783561))))

(declare-fun e!1560952 () Bool)

(declare-fun tp!783555 () Bool)

(declare-fun b!2461186 () Bool)

(assert (=> b!2461186 (= e!1560950 (and tp!783555 (inv!38718 (tag!4941 (rule!6809 (h!34042 l!6611)))) (inv!38721 (transformation!4451 (rule!6809 (h!34042 l!6611)))) e!1560952))))

(declare-fun b!2461187 () Bool)

(declare-fun res!1042990 () Bool)

(assert (=> b!2461187 (=> (not res!1042990) (not e!1560960))))

(declare-datatypes ((LexerInterface!4048 0))(
  ( (LexerInterfaceExt!4045 (__x!18530 Int)) (Lexer!4046) )
))
(declare-fun thiss!27932 () LexerInterface!4048)

(declare-fun rulesProduceEachTokenIndividuallyList!1364 (LexerInterface!4048 List!28740 List!28741) Bool)

(assert (=> b!2461187 (= res!1042990 (rulesProduceEachTokenIndividuallyList!1364 thiss!27932 rules!4472 l!6611))))

(assert (=> b!2461188 (= e!1560952 (and tp!783560 tp!783559))))

(declare-fun res!1042988 () Bool)

(assert (=> start!239962 (=> (not res!1042988) (not e!1560960))))

(get-info :version)

(assert (=> start!239962 (= res!1042988 ((_ is Lexer!4046) thiss!27932))))

(assert (=> start!239962 e!1560960))

(assert (=> start!239962 true))

(assert (=> start!239962 e!1560953))

(declare-fun e!1560955 () Bool)

(assert (=> start!239962 e!1560955))

(assert (=> b!2461189 (= e!1560951 (and tp!783563 tp!783562))))

(declare-fun tp!783557 () Bool)

(declare-fun b!2461190 () Bool)

(declare-fun inv!38722 (Token!8372) Bool)

(assert (=> b!2461190 (= e!1560955 (and (inv!38722 (h!34042 l!6611)) e!1560958 tp!783557))))

(declare-fun b!2461191 () Bool)

(declare-fun i!1803 () Int)

(declare-fun lt!881072 () Int)

(assert (=> b!2461191 (= e!1560960 (and (< (+ 1 i!1803) lt!881072) (or (> 0 i!1803) (>= i!1803 lt!881072))))))

(declare-fun size!22290 (List!28741) Int)

(assert (=> b!2461191 (= lt!881072 (size!22290 l!6611))))

(declare-fun b!2461192 () Bool)

(declare-fun res!1042987 () Bool)

(assert (=> b!2461192 (=> (not res!1042987) (not e!1560960))))

(assert (=> b!2461192 (= res!1042987 (>= i!1803 0))))

(declare-fun b!2461193 () Bool)

(declare-fun res!1042991 () Bool)

(assert (=> b!2461193 (=> (not res!1042991) (not e!1560960))))

(declare-fun rulesInvariant!3548 (LexerInterface!4048 List!28740) Bool)

(assert (=> b!2461193 (= res!1042991 (rulesInvariant!3548 thiss!27932 rules!4472))))

(declare-fun b!2461194 () Bool)

(declare-fun res!1042989 () Bool)

(assert (=> b!2461194 (=> (not res!1042989) (not e!1560960))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!587 (LexerInterface!4048 List!28741 List!28740) Bool)

(assert (=> b!2461194 (= res!1042989 (tokensListTwoByTwoPredicateSeparableList!587 thiss!27932 l!6611 rules!4472))))

(assert (= (and start!239962 res!1042988) b!2461182))

(assert (= (and b!2461182 res!1042992) b!2461193))

(assert (= (and b!2461193 res!1042991) b!2461187))

(assert (= (and b!2461187 res!1042990) b!2461194))

(assert (= (and b!2461194 res!1042989) b!2461192))

(assert (= (and b!2461192 res!1042987) b!2461191))

(assert (= b!2461184 b!2461189))

(assert (= b!2461183 b!2461184))

(assert (= (and start!239962 ((_ is Cons!28640) rules!4472)) b!2461183))

(assert (= b!2461186 b!2461188))

(assert (= b!2461185 b!2461186))

(assert (= b!2461190 b!2461185))

(assert (= (and start!239962 ((_ is Cons!28641) l!6611)) b!2461190))

(declare-fun m!2830301 () Bool)

(assert (=> b!2461191 m!2830301))

(declare-fun m!2830303 () Bool)

(assert (=> b!2461184 m!2830303))

(declare-fun m!2830305 () Bool)

(assert (=> b!2461184 m!2830305))

(declare-fun m!2830307 () Bool)

(assert (=> b!2461194 m!2830307))

(declare-fun m!2830309 () Bool)

(assert (=> b!2461193 m!2830309))

(declare-fun m!2830311 () Bool)

(assert (=> b!2461182 m!2830311))

(declare-fun m!2830313 () Bool)

(assert (=> b!2461186 m!2830313))

(declare-fun m!2830315 () Bool)

(assert (=> b!2461186 m!2830315))

(declare-fun m!2830317 () Bool)

(assert (=> b!2461187 m!2830317))

(declare-fun m!2830319 () Bool)

(assert (=> b!2461185 m!2830319))

(declare-fun m!2830321 () Bool)

(assert (=> b!2461190 m!2830321))

(check-sat (not b!2461186) (not b_next!71313) (not b!2461184) (not b!2461193) (not b!2461183) b_and!185681 (not b!2461190) (not b_next!71309) (not b!2461185) (not b_next!71315) (not b!2461187) b_and!185679 b_and!185683 (not b!2461182) (not b!2461191) (not b_next!71311) (not b!2461194) b_and!185677)
(check-sat (not b_next!71313) b_and!185681 (not b_next!71309) (not b_next!71315) b_and!185679 b_and!185677 b_and!185683 (not b_next!71311))
