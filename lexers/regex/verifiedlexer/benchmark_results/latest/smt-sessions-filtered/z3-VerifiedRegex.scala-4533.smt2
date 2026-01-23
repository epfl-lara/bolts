; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239966 () Bool)

(assert start!239966)

(declare-fun b!2461286 () Bool)

(declare-fun b_free!70625 () Bool)

(declare-fun b_next!71329 () Bool)

(assert (=> b!2461286 (= b_free!70625 (not b_next!71329))))

(declare-fun tp!783636 () Bool)

(declare-fun b_and!185697 () Bool)

(assert (=> b!2461286 (= tp!783636 b_and!185697)))

(declare-fun b_free!70627 () Bool)

(declare-fun b_next!71331 () Bool)

(assert (=> b!2461286 (= b_free!70627 (not b_next!71331))))

(declare-fun tp!783637 () Bool)

(declare-fun b_and!185699 () Bool)

(assert (=> b!2461286 (= tp!783637 b_and!185699)))

(declare-fun b!2461292 () Bool)

(declare-fun b_free!70629 () Bool)

(declare-fun b_next!71333 () Bool)

(assert (=> b!2461292 (= b_free!70629 (not b_next!71333))))

(declare-fun tp!783629 () Bool)

(declare-fun b_and!185701 () Bool)

(assert (=> b!2461292 (= tp!783629 b_and!185701)))

(declare-fun b_free!70631 () Bool)

(declare-fun b_next!71335 () Bool)

(assert (=> b!2461292 (= b_free!70631 (not b_next!71335))))

(declare-fun tp!783633 () Bool)

(declare-fun b_and!185703 () Bool)

(assert (=> b!2461292 (= tp!783633 b_and!185703)))

(declare-fun b!2461288 () Bool)

(declare-fun b_free!70633 () Bool)

(declare-fun b_next!71337 () Bool)

(assert (=> b!2461288 (= b_free!70633 (not b_next!71337))))

(declare-fun tp!783641 () Bool)

(declare-fun b_and!185705 () Bool)

(assert (=> b!2461288 (= tp!783641 b_and!185705)))

(declare-fun b_free!70635 () Bool)

(declare-fun b_next!71339 () Bool)

(assert (=> b!2461288 (= b_free!70635 (not b_next!71339))))

(declare-fun tp!783634 () Bool)

(declare-fun b_and!185707 () Bool)

(assert (=> b!2461288 (= tp!783634 b_and!185707)))

(declare-fun res!1043036 () Bool)

(declare-fun e!1561044 () Bool)

(assert (=> start!239966 (=> (not res!1043036) (not e!1561044))))

(declare-datatypes ((LexerInterface!4050 0))(
  ( (LexerInterfaceExt!4047 (__x!18533 Int)) (Lexer!4048) )
))
(declare-fun thiss!27932 () LexerInterface!4050)

(get-info :version)

(assert (=> start!239966 (= res!1043036 ((_ is Lexer!4048) thiss!27932))))

(assert (=> start!239966 e!1561044))

(assert (=> start!239966 true))

(declare-fun e!1561056 () Bool)

(assert (=> start!239966 e!1561056))

(declare-fun e!1561045 () Bool)

(assert (=> start!239966 e!1561045))

(declare-datatypes ((List!28746 0))(
  ( (Nil!28646) (Cons!28646 (h!34047 (_ BitVec 16)) (t!208765 List!28746)) )
))
(declare-datatypes ((TokenValue!4639 0))(
  ( (FloatLiteralValue!9278 (text!32918 List!28746)) (TokenValueExt!4638 (__x!18534 Int)) (Broken!23195 (value!142290 List!28746)) (Object!4738) (End!4639) (Def!4639) (Underscore!4639) (Match!4639) (Else!4639) (Error!4639) (Case!4639) (If!4639) (Extends!4639) (Abstract!4639) (Class!4639) (Val!4639) (DelimiterValue!9278 (del!4699 List!28746)) (KeywordValue!4645 (value!142291 List!28746)) (CommentValue!9278 (value!142292 List!28746)) (WhitespaceValue!9278 (value!142293 List!28746)) (IndentationValue!4639 (value!142294 List!28746)) (String!31490) (Int32!4639) (Broken!23196 (value!142295 List!28746)) (Boolean!4640) (Unit!41978) (OperatorValue!4642 (op!4699 List!28746)) (IdentifierValue!9278 (value!142296 List!28746)) (IdentifierValue!9279 (value!142297 List!28746)) (WhitespaceValue!9279 (value!142298 List!28746)) (True!9278) (False!9278) (Broken!23197 (value!142299 List!28746)) (Broken!23198 (value!142300 List!28746)) (True!9279) (RightBrace!4639) (RightBracket!4639) (Colon!4639) (Null!4639) (Comma!4639) (LeftBracket!4639) (False!9279) (LeftBrace!4639) (ImaginaryLiteralValue!4639 (text!32919 List!28746)) (StringLiteralValue!13917 (value!142301 List!28746)) (EOFValue!4639 (value!142302 List!28746)) (IdentValue!4639 (value!142303 List!28746)) (DelimiterValue!9279 (value!142304 List!28746)) (DedentValue!4639 (value!142305 List!28746)) (NewLineValue!4639 (value!142306 List!28746)) (IntegerValue!13917 (value!142307 (_ BitVec 32)) (text!32920 List!28746)) (IntegerValue!13918 (value!142308 Int) (text!32921 List!28746)) (Times!4639) (Or!4639) (Equal!4639) (Minus!4639) (Broken!23199 (value!142309 List!28746)) (And!4639) (Div!4639) (LessEqual!4639) (Mod!4639) (Concat!11880) (Not!4639) (Plus!4639) (SpaceValue!4639 (value!142310 List!28746)) (IntegerValue!13919 (value!142311 Int) (text!32922 List!28746)) (StringLiteralValue!13918 (text!32923 List!28746)) (FloatLiteralValue!9279 (text!32924 List!28746)) (BytesLiteralValue!4639 (value!142312 List!28746)) (CommentValue!9279 (value!142313 List!28746)) (StringLiteralValue!13919 (value!142314 List!28746)) (ErrorTokenValue!4639 (msg!4700 List!28746)) )
))
(declare-datatypes ((C!14640 0))(
  ( (C!14641 (val!8580 Int)) )
))
(declare-datatypes ((List!28747 0))(
  ( (Nil!28647) (Cons!28647 (h!34048 C!14640) (t!208766 List!28747)) )
))
(declare-datatypes ((IArray!18319 0))(
  ( (IArray!18320 (innerList!9217 List!28747)) )
))
(declare-datatypes ((Conc!9157 0))(
  ( (Node!9157 (left!22006 Conc!9157) (right!22336 Conc!9157) (csize!18544 Int) (cheight!9368 Int)) (Leaf!13691 (xs!12137 IArray!18319) (csize!18545 Int)) (Empty!9157) )
))
(declare-datatypes ((BalanceConc!17928 0))(
  ( (BalanceConc!17929 (c!392828 Conc!9157)) )
))
(declare-datatypes ((String!31491 0))(
  ( (String!31492 (value!142315 String)) )
))
(declare-datatypes ((Regex!7241 0))(
  ( (ElementMatch!7241 (c!392829 C!14640)) (Concat!11881 (regOne!14994 Regex!7241) (regTwo!14994 Regex!7241)) (EmptyExpr!7241) (Star!7241 (reg!7570 Regex!7241)) (EmptyLang!7241) (Union!7241 (regOne!14995 Regex!7241) (regTwo!14995 Regex!7241)) )
))
(declare-datatypes ((TokenValueInjection!8778 0))(
  ( (TokenValueInjection!8779 (toValue!6305 Int) (toChars!6164 Int)) )
))
(declare-datatypes ((Rule!8706 0))(
  ( (Rule!8707 (regex!4453 Regex!7241) (tag!4943 String!31491) (isSeparator!4453 Bool) (transformation!4453 TokenValueInjection!8778)) )
))
(declare-datatypes ((Token!8376 0))(
  ( (Token!8377 (value!142316 TokenValue!4639) (rule!6811 Rule!8706) (size!22293 Int) (originalCharacters!5219 List!28747)) )
))
(declare-fun t1!67 () Token!8376)

(declare-fun e!1561046 () Bool)

(declare-fun inv!38728 (Token!8376) Bool)

(assert (=> start!239966 (and (inv!38728 t1!67) e!1561046)))

(declare-fun b!2461285 () Bool)

(declare-fun res!1043040 () Bool)

(assert (=> b!2461285 (=> (not res!1043040) (not e!1561044))))

(declare-datatypes ((List!28748 0))(
  ( (Nil!28648) (Cons!28648 (h!34049 Rule!8706) (t!208767 List!28748)) )
))
(declare-fun rules!4472 () List!28748)

(declare-datatypes ((List!28749 0))(
  ( (Nil!28649) (Cons!28649 (h!34050 Token!8376) (t!208768 List!28749)) )
))
(declare-fun l!6611 () List!28749)

(declare-fun tokensListTwoByTwoPredicateSeparableList!589 (LexerInterface!4050 List!28749 List!28748) Bool)

(assert (=> b!2461285 (= res!1043040 (tokensListTwoByTwoPredicateSeparableList!589 thiss!27932 l!6611 rules!4472))))

(declare-fun e!1561049 () Bool)

(assert (=> b!2461286 (= e!1561049 (and tp!783636 tp!783637))))

(declare-fun b!2461287 () Bool)

(declare-fun e!1561052 () Bool)

(declare-fun tp!783630 () Bool)

(assert (=> b!2461287 (= e!1561056 (and e!1561052 tp!783630))))

(declare-fun e!1561055 () Bool)

(assert (=> b!2461288 (= e!1561055 (and tp!783641 tp!783634))))

(declare-fun b!2461289 () Bool)

(declare-fun i!1803 () Int)

(assert (=> b!2461289 (= e!1561044 (> 0 (+ 1 i!1803)))))

(declare-fun b!2461290 () Bool)

(declare-fun tp!783640 () Bool)

(declare-fun e!1561047 () Bool)

(declare-fun inv!38725 (String!31491) Bool)

(declare-fun inv!38729 (TokenValueInjection!8778) Bool)

(assert (=> b!2461290 (= e!1561047 (and tp!783640 (inv!38725 (tag!4943 (rule!6811 (h!34050 l!6611)))) (inv!38729 (transformation!4453 (rule!6811 (h!34050 l!6611)))) e!1561055))))

(declare-fun b!2461291 () Bool)

(declare-fun res!1043037 () Bool)

(assert (=> b!2461291 (=> (not res!1043037) (not e!1561044))))

(declare-fun rulesProduceEachTokenIndividuallyList!1366 (LexerInterface!4050 List!28748 List!28749) Bool)

(assert (=> b!2461291 (= res!1043037 (rulesProduceEachTokenIndividuallyList!1366 thiss!27932 rules!4472 l!6611))))

(declare-fun e!1561053 () Bool)

(assert (=> b!2461292 (= e!1561053 (and tp!783629 tp!783633))))

(declare-fun b!2461293 () Bool)

(declare-fun res!1043035 () Bool)

(assert (=> b!2461293 (=> (not res!1043035) (not e!1561044))))

(declare-fun size!22294 (List!28749) Int)

(assert (=> b!2461293 (= res!1043035 (< (+ 1 i!1803) (size!22294 l!6611)))))

(declare-fun tp!783635 () Bool)

(declare-fun e!1561050 () Bool)

(declare-fun b!2461294 () Bool)

(assert (=> b!2461294 (= e!1561045 (and (inv!38728 (h!34050 l!6611)) e!1561050 tp!783635))))

(declare-fun b!2461295 () Bool)

(declare-fun res!1043034 () Bool)

(assert (=> b!2461295 (=> (not res!1043034) (not e!1561044))))

(declare-fun rulesInvariant!3550 (LexerInterface!4050 List!28748) Bool)

(assert (=> b!2461295 (= res!1043034 (rulesInvariant!3550 thiss!27932 rules!4472))))

(declare-fun tp!783638 () Bool)

(declare-fun b!2461296 () Bool)

(declare-fun inv!21 (TokenValue!4639) Bool)

(assert (=> b!2461296 (= e!1561050 (and (inv!21 (value!142316 (h!34050 l!6611))) e!1561047 tp!783638))))

(declare-fun b!2461297 () Bool)

(declare-fun res!1043038 () Bool)

(assert (=> b!2461297 (=> (not res!1043038) (not e!1561044))))

(assert (=> b!2461297 (= res!1043038 (>= i!1803 0))))

(declare-fun b!2461298 () Bool)

(declare-fun e!1561041 () Bool)

(declare-fun tp!783631 () Bool)

(assert (=> b!2461298 (= e!1561046 (and (inv!21 (value!142316 t1!67)) e!1561041 tp!783631))))

(declare-fun b!2461299 () Bool)

(declare-fun res!1043033 () Bool)

(assert (=> b!2461299 (=> (not res!1043033) (not e!1561044))))

(declare-fun apply!6718 (List!28749 Int) Token!8376)

(assert (=> b!2461299 (= res!1043033 (= (apply!6718 l!6611 i!1803) t1!67))))

(declare-fun b!2461300 () Bool)

(declare-fun res!1043039 () Bool)

(assert (=> b!2461300 (=> (not res!1043039) (not e!1561044))))

(declare-fun isEmpty!16649 (List!28748) Bool)

(assert (=> b!2461300 (= res!1043039 (not (isEmpty!16649 rules!4472)))))

(declare-fun tp!783632 () Bool)

(declare-fun b!2461301 () Bool)

(assert (=> b!2461301 (= e!1561041 (and tp!783632 (inv!38725 (tag!4943 (rule!6811 t1!67))) (inv!38729 (transformation!4453 (rule!6811 t1!67))) e!1561053))))

(declare-fun b!2461302 () Bool)

(declare-fun tp!783639 () Bool)

(assert (=> b!2461302 (= e!1561052 (and tp!783639 (inv!38725 (tag!4943 (h!34049 rules!4472))) (inv!38729 (transformation!4453 (h!34049 rules!4472))) e!1561049))))

(assert (= (and start!239966 res!1043036) b!2461300))

(assert (= (and b!2461300 res!1043039) b!2461295))

(assert (= (and b!2461295 res!1043034) b!2461291))

(assert (= (and b!2461291 res!1043037) b!2461285))

(assert (= (and b!2461285 res!1043040) b!2461297))

(assert (= (and b!2461297 res!1043038) b!2461293))

(assert (= (and b!2461293 res!1043035) b!2461299))

(assert (= (and b!2461299 res!1043033) b!2461289))

(assert (= b!2461302 b!2461286))

(assert (= b!2461287 b!2461302))

(assert (= (and start!239966 ((_ is Cons!28648) rules!4472)) b!2461287))

(assert (= b!2461290 b!2461288))

(assert (= b!2461296 b!2461290))

(assert (= b!2461294 b!2461296))

(assert (= (and start!239966 ((_ is Cons!28649) l!6611)) b!2461294))

(assert (= b!2461301 b!2461292))

(assert (= b!2461298 b!2461301))

(assert (= start!239966 b!2461298))

(declare-fun m!2830355 () Bool)

(assert (=> b!2461291 m!2830355))

(declare-fun m!2830357 () Bool)

(assert (=> b!2461295 m!2830357))

(declare-fun m!2830359 () Bool)

(assert (=> b!2461296 m!2830359))

(declare-fun m!2830361 () Bool)

(assert (=> b!2461298 m!2830361))

(declare-fun m!2830363 () Bool)

(assert (=> b!2461294 m!2830363))

(declare-fun m!2830365 () Bool)

(assert (=> start!239966 m!2830365))

(declare-fun m!2830367 () Bool)

(assert (=> b!2461300 m!2830367))

(declare-fun m!2830369 () Bool)

(assert (=> b!2461302 m!2830369))

(declare-fun m!2830371 () Bool)

(assert (=> b!2461302 m!2830371))

(declare-fun m!2830373 () Bool)

(assert (=> b!2461285 m!2830373))

(declare-fun m!2830375 () Bool)

(assert (=> b!2461290 m!2830375))

(declare-fun m!2830377 () Bool)

(assert (=> b!2461290 m!2830377))

(declare-fun m!2830379 () Bool)

(assert (=> b!2461301 m!2830379))

(declare-fun m!2830381 () Bool)

(assert (=> b!2461301 m!2830381))

(declare-fun m!2830383 () Bool)

(assert (=> b!2461299 m!2830383))

(declare-fun m!2830385 () Bool)

(assert (=> b!2461293 m!2830385))

(check-sat (not b!2461298) (not b!2461290) (not b_next!71335) (not b!2461285) (not b_next!71331) (not b!2461299) (not b_next!71337) b_and!185699 (not b!2461295) b_and!185697 (not b!2461302) b_and!185701 (not b!2461291) (not b!2461293) (not b!2461300) b_and!185703 (not b_next!71339) (not b_next!71329) b_and!185707 (not b_next!71333) (not b!2461296) (not start!239966) b_and!185705 (not b!2461294) (not b!2461301) (not b!2461287))
(check-sat (not b_next!71335) (not b_next!71331) (not b_next!71337) b_and!185699 b_and!185697 b_and!185701 b_and!185705 b_and!185703 (not b_next!71339) (not b_next!71329) b_and!185707 (not b_next!71333))
