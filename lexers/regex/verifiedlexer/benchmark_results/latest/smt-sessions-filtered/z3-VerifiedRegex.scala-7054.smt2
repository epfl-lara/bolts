; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374228 () Bool)

(assert start!374228)

(declare-fun b!3976137 () Bool)

(declare-fun b_free!110281 () Bool)

(declare-fun b_next!110985 () Bool)

(assert (=> b!3976137 (= b_free!110281 (not b_next!110985))))

(declare-fun tp!1212336 () Bool)

(declare-fun b_and!305647 () Bool)

(assert (=> b!3976137 (= tp!1212336 b_and!305647)))

(declare-fun b_free!110283 () Bool)

(declare-fun b_next!110987 () Bool)

(assert (=> b!3976137 (= b_free!110283 (not b_next!110987))))

(declare-fun tp!1212338 () Bool)

(declare-fun b_and!305649 () Bool)

(assert (=> b!3976137 (= tp!1212338 b_and!305649)))

(declare-fun b!3976135 () Bool)

(declare-fun b_free!110285 () Bool)

(declare-fun b_next!110989 () Bool)

(assert (=> b!3976135 (= b_free!110285 (not b_next!110989))))

(declare-fun tp!1212337 () Bool)

(declare-fun b_and!305651 () Bool)

(assert (=> b!3976135 (= tp!1212337 b_and!305651)))

(declare-fun b_free!110287 () Bool)

(declare-fun b_next!110991 () Bool)

(assert (=> b!3976135 (= b_free!110287 (not b_next!110991))))

(declare-fun tp!1212329 () Bool)

(declare-fun b_and!305653 () Bool)

(assert (=> b!3976135 (= tp!1212329 b_and!305653)))

(declare-fun b!3976112 () Bool)

(declare-fun e!2463579 () Bool)

(declare-fun tp_is_empty!20173 () Bool)

(declare-fun tp!1212328 () Bool)

(assert (=> b!3976112 (= e!2463579 (and tp_is_empty!20173 tp!1212328))))

(declare-fun b!3976113 () Bool)

(declare-fun res!1610369 () Bool)

(declare-fun e!2463563 () Bool)

(assert (=> b!3976113 (=> (not res!1610369) (not e!2463563))))

(declare-datatypes ((C!23388 0))(
  ( (C!23389 (val!13788 Int)) )
))
(declare-datatypes ((List!42606 0))(
  ( (Nil!42482) (Cons!42482 (h!47902 C!23388) (t!331093 List!42606)) )
))
(declare-fun suffix!1299 () List!42606)

(declare-fun newSuffix!27 () List!42606)

(declare-fun size!31782 (List!42606) Int)

(assert (=> b!3976113 (= res!1610369 (>= (size!31782 suffix!1299) (size!31782 newSuffix!27)))))

(declare-fun b!3976114 () Bool)

(declare-fun e!2463569 () Bool)

(declare-fun e!2463573 () Bool)

(assert (=> b!3976114 (= e!2463569 e!2463573)))

(declare-fun res!1610363 () Bool)

(assert (=> b!3976114 (=> res!1610363 e!2463573)))

(declare-fun lt!1394229 () List!42606)

(declare-fun lt!1394220 () List!42606)

(declare-fun lt!1394231 () List!42606)

(assert (=> b!3976114 (= res!1610363 (or (not (= lt!1394229 lt!1394231)) (not (= lt!1394229 lt!1394220))))))

(assert (=> b!3976114 (= lt!1394231 lt!1394220)))

(declare-fun lt!1394205 () List!42606)

(declare-fun lt!1394226 () List!42606)

(declare-fun ++!11098 (List!42606 List!42606) List!42606)

(assert (=> b!3976114 (= lt!1394220 (++!11098 lt!1394205 lt!1394226))))

(declare-fun lt!1394207 () List!42606)

(assert (=> b!3976114 (= lt!1394231 (++!11098 lt!1394207 suffix!1299))))

(declare-fun lt!1394224 () List!42606)

(assert (=> b!3976114 (= lt!1394226 (++!11098 lt!1394224 suffix!1299))))

(declare-datatypes ((Unit!61132 0))(
  ( (Unit!61133) )
))
(declare-fun lt!1394237 () Unit!61132)

(declare-fun lemmaConcatAssociativity!2418 (List!42606 List!42606 List!42606) Unit!61132)

(assert (=> b!3976114 (= lt!1394237 (lemmaConcatAssociativity!2418 lt!1394205 lt!1394224 suffix!1299))))

(declare-fun b!3976115 () Bool)

(declare-fun e!2463561 () Bool)

(assert (=> b!3976115 (= e!2463561 e!2463569)))

(declare-fun res!1610365 () Bool)

(assert (=> b!3976115 (=> res!1610365 e!2463569)))

(declare-fun prefix!494 () List!42606)

(assert (=> b!3976115 (= res!1610365 (not (= lt!1394207 prefix!494)))))

(assert (=> b!3976115 (= lt!1394207 (++!11098 lt!1394205 lt!1394224))))

(declare-fun getSuffix!2214 (List!42606 List!42606) List!42606)

(assert (=> b!3976115 (= lt!1394224 (getSuffix!2214 prefix!494 lt!1394205))))

(declare-fun isPrefix!3783 (List!42606 List!42606) Bool)

(assert (=> b!3976115 (isPrefix!3783 lt!1394205 prefix!494)))

(declare-fun lt!1394233 () Unit!61132)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!361 (List!42606 List!42606 List!42606) Unit!61132)

(assert (=> b!3976115 (= lt!1394233 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!361 prefix!494 lt!1394205 lt!1394229))))

(declare-fun b!3976116 () Bool)

(declare-fun e!2463559 () Bool)

(declare-fun e!2463565 () Bool)

(assert (=> b!3976116 (= e!2463559 e!2463565)))

(declare-fun res!1610370 () Bool)

(assert (=> b!3976116 (=> res!1610370 e!2463565)))

(declare-fun lt!1394225 () List!42606)

(assert (=> b!3976116 (= res!1610370 (not (= lt!1394225 lt!1394229)))))

(declare-fun lt!1394236 () List!42606)

(assert (=> b!3976116 (= lt!1394225 (++!11098 lt!1394205 lt!1394236))))

(assert (=> b!3976116 (= lt!1394236 (getSuffix!2214 lt!1394229 lt!1394205))))

(declare-fun e!2463572 () Bool)

(assert (=> b!3976116 e!2463572))

(declare-fun res!1610359 () Bool)

(assert (=> b!3976116 (=> (not res!1610359) (not e!2463572))))

(assert (=> b!3976116 (= res!1610359 (isPrefix!3783 lt!1394229 lt!1394229))))

(declare-fun lt!1394208 () Unit!61132)

(declare-fun lemmaIsPrefixRefl!2375 (List!42606 List!42606) Unit!61132)

(assert (=> b!3976116 (= lt!1394208 (lemmaIsPrefixRefl!2375 lt!1394229 lt!1394229))))

(declare-fun b!3976117 () Bool)

(declare-fun e!2463558 () Bool)

(declare-fun tp!1212326 () Bool)

(assert (=> b!3976117 (= e!2463558 (and tp_is_empty!20173 tp!1212326))))

(declare-fun b!3976118 () Bool)

(declare-fun e!2463578 () Bool)

(declare-fun e!2463556 () Bool)

(assert (=> b!3976118 (= e!2463578 e!2463556)))

(declare-fun res!1610364 () Bool)

(assert (=> b!3976118 (=> (not res!1610364) (not e!2463556))))

(declare-fun lt!1394216 () List!42606)

(declare-fun lt!1394232 () List!42606)

(assert (=> b!3976118 (= res!1610364 (= lt!1394216 lt!1394232))))

(assert (=> b!3976118 (= lt!1394232 (++!11098 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42606)

(assert (=> b!3976118 (= lt!1394216 (++!11098 lt!1394205 newSuffixResult!27))))

(declare-fun b!3976119 () Bool)

(declare-fun res!1610356 () Bool)

(assert (=> b!3976119 (=> (not res!1610356) (not e!2463563))))

(assert (=> b!3976119 (= res!1610356 (isPrefix!3783 newSuffix!27 suffix!1299))))

(declare-fun b!3976120 () Bool)

(declare-fun e!2463562 () Bool)

(assert (=> b!3976120 (= e!2463562 e!2463559)))

(declare-fun res!1610360 () Bool)

(assert (=> b!3976120 (=> res!1610360 e!2463559)))

(declare-datatypes ((IArray!25819 0))(
  ( (IArray!25820 (innerList!12967 List!42606)) )
))
(declare-datatypes ((Conc!12907 0))(
  ( (Node!12907 (left!32149 Conc!12907) (right!32479 Conc!12907) (csize!26044 Int) (cheight!13118 Int)) (Leaf!19962 (xs!16213 IArray!25819) (csize!26045 Int)) (Empty!12907) )
))
(declare-datatypes ((BalanceConc!25408 0))(
  ( (BalanceConc!25409 (c!689244 Conc!12907)) )
))
(declare-datatypes ((List!42607 0))(
  ( (Nil!42483) (Cons!42483 (h!47903 (_ BitVec 16)) (t!331094 List!42607)) )
))
(declare-datatypes ((TokenValue!6926 0))(
  ( (FloatLiteralValue!13852 (text!48927 List!42607)) (TokenValueExt!6925 (__x!26069 Int)) (Broken!34630 (value!211444 List!42607)) (Object!7049) (End!6926) (Def!6926) (Underscore!6926) (Match!6926) (Else!6926) (Error!6926) (Case!6926) (If!6926) (Extends!6926) (Abstract!6926) (Class!6926) (Val!6926) (DelimiterValue!13852 (del!6986 List!42607)) (KeywordValue!6932 (value!211445 List!42607)) (CommentValue!13852 (value!211446 List!42607)) (WhitespaceValue!13852 (value!211447 List!42607)) (IndentationValue!6926 (value!211448 List!42607)) (String!48347) (Int32!6926) (Broken!34631 (value!211449 List!42607)) (Boolean!6927) (Unit!61134) (OperatorValue!6929 (op!6986 List!42607)) (IdentifierValue!13852 (value!211450 List!42607)) (IdentifierValue!13853 (value!211451 List!42607)) (WhitespaceValue!13853 (value!211452 List!42607)) (True!13852) (False!13852) (Broken!34632 (value!211453 List!42607)) (Broken!34633 (value!211454 List!42607)) (True!13853) (RightBrace!6926) (RightBracket!6926) (Colon!6926) (Null!6926) (Comma!6926) (LeftBracket!6926) (False!13853) (LeftBrace!6926) (ImaginaryLiteralValue!6926 (text!48928 List!42607)) (StringLiteralValue!20778 (value!211455 List!42607)) (EOFValue!6926 (value!211456 List!42607)) (IdentValue!6926 (value!211457 List!42607)) (DelimiterValue!13853 (value!211458 List!42607)) (DedentValue!6926 (value!211459 List!42607)) (NewLineValue!6926 (value!211460 List!42607)) (IntegerValue!20778 (value!211461 (_ BitVec 32)) (text!48929 List!42607)) (IntegerValue!20779 (value!211462 Int) (text!48930 List!42607)) (Times!6926) (Or!6926) (Equal!6926) (Minus!6926) (Broken!34634 (value!211463 List!42607)) (And!6926) (Div!6926) (LessEqual!6926) (Mod!6926) (Concat!18527) (Not!6926) (Plus!6926) (SpaceValue!6926 (value!211464 List!42607)) (IntegerValue!20780 (value!211465 Int) (text!48931 List!42607)) (StringLiteralValue!20779 (text!48932 List!42607)) (FloatLiteralValue!13853 (text!48933 List!42607)) (BytesLiteralValue!6926 (value!211466 List!42607)) (CommentValue!13853 (value!211467 List!42607)) (StringLiteralValue!20780 (value!211468 List!42607)) (ErrorTokenValue!6926 (msg!6987 List!42607)) )
))
(declare-datatypes ((Regex!11601 0))(
  ( (ElementMatch!11601 (c!689245 C!23388)) (Concat!18528 (regOne!23714 Regex!11601) (regTwo!23714 Regex!11601)) (EmptyExpr!11601) (Star!11601 (reg!11930 Regex!11601)) (EmptyLang!11601) (Union!11601 (regOne!23715 Regex!11601) (regTwo!23715 Regex!11601)) )
))
(declare-datatypes ((String!48348 0))(
  ( (String!48349 (value!211469 String)) )
))
(declare-datatypes ((TokenValueInjection!13280 0))(
  ( (TokenValueInjection!13281 (toValue!9184 Int) (toChars!9043 Int)) )
))
(declare-datatypes ((Rule!13192 0))(
  ( (Rule!13193 (regex!6696 Regex!11601) (tag!7556 String!48348) (isSeparator!6696 Bool) (transformation!6696 TokenValueInjection!13280)) )
))
(declare-datatypes ((Token!12530 0))(
  ( (Token!12531 (value!211470 TokenValue!6926) (rule!9694 Rule!13192) (size!31783 Int) (originalCharacters!7296 List!42606)) )
))
(declare-fun token!484 () Token!12530)

(declare-fun matchR!5578 (Regex!11601 List!42606) Bool)

(assert (=> b!3976120 (= res!1610360 (not (matchR!5578 (regex!6696 (rule!9694 token!484)) lt!1394205)))))

(assert (=> b!3976120 (isPrefix!3783 lt!1394205 lt!1394232)))

(declare-fun lt!1394235 () Unit!61132)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!616 (List!42606 List!42606 List!42606) Unit!61132)

(assert (=> b!3976120 (= lt!1394235 (lemmaPrefixStaysPrefixWhenAddingToSuffix!616 lt!1394205 prefix!494 newSuffix!27))))

(declare-fun lt!1394227 () Unit!61132)

(assert (=> b!3976120 (= lt!1394227 (lemmaPrefixStaysPrefixWhenAddingToSuffix!616 lt!1394205 prefix!494 suffix!1299))))

(declare-fun b!3976121 () Bool)

(declare-fun res!1610357 () Bool)

(assert (=> b!3976121 (=> (not res!1610357) (not e!2463572))))

(assert (=> b!3976121 (= res!1610357 (= (size!31783 token!484) (size!31782 (originalCharacters!7296 token!484))))))

(declare-fun b!3976122 () Bool)

(declare-fun res!1610366 () Bool)

(assert (=> b!3976122 (=> (not res!1610366) (not e!2463572))))

(declare-fun lt!1394218 () TokenValue!6926)

(assert (=> b!3976122 (= res!1610366 (= (value!211470 token!484) lt!1394218))))

(declare-fun b!3976123 () Bool)

(declare-fun e!2463571 () Bool)

(declare-fun tp!1212330 () Bool)

(assert (=> b!3976123 (= e!2463571 (and tp_is_empty!20173 tp!1212330))))

(declare-fun b!3976124 () Bool)

(declare-fun res!1610362 () Bool)

(assert (=> b!3976124 (=> (not res!1610362) (not e!2463563))))

(declare-datatypes ((LexerInterface!6285 0))(
  ( (LexerInterfaceExt!6282 (__x!26070 Int)) (Lexer!6283) )
))
(declare-fun thiss!21717 () LexerInterface!6285)

(declare-datatypes ((List!42608 0))(
  ( (Nil!42484) (Cons!42484 (h!47904 Rule!13192) (t!331095 List!42608)) )
))
(declare-fun rules!2999 () List!42608)

(declare-fun rulesInvariant!5628 (LexerInterface!6285 List!42608) Bool)

(assert (=> b!3976124 (= res!1610362 (rulesInvariant!5628 thiss!21717 rules!2999))))

(declare-fun res!1610358 () Bool)

(assert (=> start!374228 (=> (not res!1610358) (not e!2463563))))

(get-info :version)

(assert (=> start!374228 (= res!1610358 ((_ is Lexer!6283) thiss!21717))))

(assert (=> start!374228 e!2463563))

(assert (=> start!374228 e!2463558))

(declare-fun e!2463568 () Bool)

(declare-fun inv!56759 (Token!12530) Bool)

(assert (=> start!374228 (and (inv!56759 token!484) e!2463568)))

(assert (=> start!374228 e!2463579))

(declare-fun e!2463560 () Bool)

(assert (=> start!374228 e!2463560))

(declare-fun e!2463580 () Bool)

(assert (=> start!374228 e!2463580))

(assert (=> start!374228 true))

(declare-fun e!2463570 () Bool)

(assert (=> start!374228 e!2463570))

(assert (=> start!374228 e!2463571))

(declare-fun b!3976125 () Bool)

(declare-fun e!2463567 () Bool)

(assert (=> b!3976125 (= e!2463556 e!2463567)))

(declare-fun res!1610355 () Bool)

(assert (=> b!3976125 (=> (not res!1610355) (not e!2463567))))

(declare-datatypes ((tuple2!41724 0))(
  ( (tuple2!41725 (_1!23996 Token!12530) (_2!23996 List!42606)) )
))
(declare-datatypes ((Option!9110 0))(
  ( (None!9109) (Some!9109 (v!39457 tuple2!41724)) )
))
(declare-fun lt!1394217 () Option!9110)

(declare-fun maxPrefix!3583 (LexerInterface!6285 List!42608 List!42606) Option!9110)

(assert (=> b!3976125 (= res!1610355 (= (maxPrefix!3583 thiss!21717 rules!2999 lt!1394229) lt!1394217))))

(declare-fun lt!1394211 () tuple2!41724)

(assert (=> b!3976125 (= lt!1394217 (Some!9109 lt!1394211))))

(declare-fun suffixResult!105 () List!42606)

(assert (=> b!3976125 (= lt!1394211 (tuple2!41725 token!484 suffixResult!105))))

(assert (=> b!3976125 (= lt!1394229 (++!11098 prefix!494 suffix!1299))))

(declare-fun b!3976126 () Bool)

(declare-fun e!2463575 () Bool)

(assert (=> b!3976126 (= e!2463575 e!2463561)))

(declare-fun res!1610368 () Bool)

(assert (=> b!3976126 (=> res!1610368 e!2463561)))

(assert (=> b!3976126 (= res!1610368 (not (isPrefix!3783 lt!1394205 lt!1394229)))))

(assert (=> b!3976126 (isPrefix!3783 prefix!494 lt!1394229)))

(declare-fun lt!1394213 () Unit!61132)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2626 (List!42606 List!42606) Unit!61132)

(assert (=> b!3976126 (= lt!1394213 (lemmaConcatTwoListThenFirstIsPrefix!2626 prefix!494 suffix!1299))))

(declare-fun lt!1394234 () List!42606)

(assert (=> b!3976126 (isPrefix!3783 lt!1394205 lt!1394234)))

(declare-fun lt!1394212 () Unit!61132)

(assert (=> b!3976126 (= lt!1394212 (lemmaConcatTwoListThenFirstIsPrefix!2626 lt!1394205 suffixResult!105))))

(declare-fun b!3976127 () Bool)

(declare-fun tp!1212331 () Bool)

(assert (=> b!3976127 (= e!2463560 (and tp_is_empty!20173 tp!1212331))))

(declare-fun e!2463555 () Bool)

(declare-fun tp!1212327 () Bool)

(declare-fun b!3976128 () Bool)

(declare-fun inv!21 (TokenValue!6926) Bool)

(assert (=> b!3976128 (= e!2463568 (and (inv!21 (value!211470 token!484)) e!2463555 tp!1212327))))

(declare-fun b!3976129 () Bool)

(declare-fun lt!1394209 () Int)

(assert (=> b!3976129 (= e!2463572 (and (= (size!31783 token!484) lt!1394209) (= (originalCharacters!7296 token!484) lt!1394205)))))

(declare-fun b!3976130 () Bool)

(declare-fun tp!1212333 () Bool)

(assert (=> b!3976130 (= e!2463580 (and tp_is_empty!20173 tp!1212333))))

(declare-fun b!3976131 () Bool)

(assert (=> b!3976131 (= e!2463563 e!2463578)))

(declare-fun res!1610372 () Bool)

(assert (=> b!3976131 (=> (not res!1610372) (not e!2463578))))

(declare-fun lt!1394230 () Int)

(assert (=> b!3976131 (= res!1610372 (>= lt!1394230 lt!1394209))))

(assert (=> b!3976131 (= lt!1394209 (size!31782 lt!1394205))))

(assert (=> b!3976131 (= lt!1394230 (size!31782 prefix!494))))

(declare-fun list!15766 (BalanceConc!25408) List!42606)

(declare-fun charsOf!4512 (Token!12530) BalanceConc!25408)

(assert (=> b!3976131 (= lt!1394205 (list!15766 (charsOf!4512 token!484)))))

(declare-fun b!3976132 () Bool)

(declare-fun e!2463574 () Bool)

(declare-fun tp!1212334 () Bool)

(assert (=> b!3976132 (= e!2463570 (and e!2463574 tp!1212334))))

(declare-fun b!3976133 () Bool)

(assert (=> b!3976133 (= e!2463573 e!2463562)))

(declare-fun res!1610371 () Bool)

(assert (=> b!3976133 (=> res!1610371 e!2463562)))

(declare-fun lt!1394219 () Option!9110)

(assert (=> b!3976133 (= res!1610371 (not (= lt!1394219 lt!1394217)))))

(declare-fun lt!1394221 () Token!12530)

(assert (=> b!3976133 (= lt!1394219 (Some!9109 (tuple2!41725 lt!1394221 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2617 (LexerInterface!6285 Rule!13192 List!42606) Option!9110)

(assert (=> b!3976133 (= lt!1394219 (maxPrefixOneRule!2617 thiss!21717 (rule!9694 token!484) lt!1394229))))

(assert (=> b!3976133 (= lt!1394221 (Token!12531 lt!1394218 (rule!9694 token!484) lt!1394209 lt!1394205))))

(declare-fun apply!9907 (TokenValueInjection!13280 BalanceConc!25408) TokenValue!6926)

(declare-fun seqFromList!4935 (List!42606) BalanceConc!25408)

(assert (=> b!3976133 (= lt!1394218 (apply!9907 (transformation!6696 (rule!9694 token!484)) (seqFromList!4935 lt!1394205)))))

(declare-fun lt!1394214 () Unit!61132)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1439 (LexerInterface!6285 List!42608 List!42606 List!42606 List!42606 Rule!13192) Unit!61132)

(assert (=> b!3976133 (= lt!1394214 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1439 thiss!21717 rules!2999 lt!1394205 lt!1394229 suffixResult!105 (rule!9694 token!484)))))

(assert (=> b!3976133 (= lt!1394226 suffixResult!105)))

(declare-fun lt!1394228 () Unit!61132)

(declare-fun lemmaSamePrefixThenSameSuffix!1970 (List!42606 List!42606 List!42606 List!42606 List!42606) Unit!61132)

(assert (=> b!3976133 (= lt!1394228 (lemmaSamePrefixThenSameSuffix!1970 lt!1394205 lt!1394226 lt!1394205 suffixResult!105 lt!1394229))))

(assert (=> b!3976133 (isPrefix!3783 lt!1394205 lt!1394220)))

(declare-fun lt!1394210 () Unit!61132)

(assert (=> b!3976133 (= lt!1394210 (lemmaConcatTwoListThenFirstIsPrefix!2626 lt!1394205 lt!1394226))))

(declare-fun b!3976134 () Bool)

(declare-fun res!1610367 () Bool)

(assert (=> b!3976134 (=> (not res!1610367) (not e!2463563))))

(declare-fun isEmpty!25406 (List!42608) Bool)

(assert (=> b!3976134 (= res!1610367 (not (isEmpty!25406 rules!2999)))))

(declare-fun e!2463564 () Bool)

(assert (=> b!3976135 (= e!2463564 (and tp!1212337 tp!1212329))))

(declare-fun e!2463577 () Bool)

(declare-fun b!3976136 () Bool)

(declare-fun tp!1212332 () Bool)

(declare-fun inv!56756 (String!48348) Bool)

(declare-fun inv!56760 (TokenValueInjection!13280) Bool)

(assert (=> b!3976136 (= e!2463574 (and tp!1212332 (inv!56756 (tag!7556 (h!47904 rules!2999))) (inv!56760 (transformation!6696 (h!47904 rules!2999))) e!2463577))))

(assert (=> b!3976137 (= e!2463577 (and tp!1212336 tp!1212338))))

(declare-fun b!3976138 () Bool)

(declare-fun rulesValidInductive!2429 (LexerInterface!6285 List!42608) Bool)

(assert (=> b!3976138 (= e!2463565 (rulesValidInductive!2429 thiss!21717 rules!2999))))

(assert (=> b!3976138 (and (= suffixResult!105 lt!1394236) (= lt!1394211 (tuple2!41725 lt!1394221 lt!1394236)))))

(declare-fun lt!1394223 () Unit!61132)

(assert (=> b!3976138 (= lt!1394223 (lemmaSamePrefixThenSameSuffix!1970 lt!1394205 suffixResult!105 lt!1394205 lt!1394236 lt!1394229))))

(assert (=> b!3976138 (isPrefix!3783 lt!1394205 lt!1394225)))

(declare-fun lt!1394215 () Unit!61132)

(assert (=> b!3976138 (= lt!1394215 (lemmaConcatTwoListThenFirstIsPrefix!2626 lt!1394205 lt!1394236))))

(declare-fun tp!1212335 () Bool)

(declare-fun b!3976139 () Bool)

(assert (=> b!3976139 (= e!2463555 (and tp!1212335 (inv!56756 (tag!7556 (rule!9694 token!484))) (inv!56760 (transformation!6696 (rule!9694 token!484))) e!2463564))))

(declare-fun b!3976140 () Bool)

(assert (=> b!3976140 (= e!2463567 (not e!2463575))))

(declare-fun res!1610361 () Bool)

(assert (=> b!3976140 (=> res!1610361 e!2463575)))

(assert (=> b!3976140 (= res!1610361 (not (= lt!1394234 lt!1394229)))))

(assert (=> b!3976140 (= lt!1394234 (++!11098 lt!1394205 suffixResult!105))))

(declare-fun lt!1394222 () Unit!61132)

(declare-fun lemmaInv!911 (TokenValueInjection!13280) Unit!61132)

(assert (=> b!3976140 (= lt!1394222 (lemmaInv!911 (transformation!6696 (rule!9694 token!484))))))

(declare-fun ruleValid!2628 (LexerInterface!6285 Rule!13192) Bool)

(assert (=> b!3976140 (ruleValid!2628 thiss!21717 (rule!9694 token!484))))

(declare-fun lt!1394206 () Unit!61132)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1702 (LexerInterface!6285 Rule!13192 List!42608) Unit!61132)

(assert (=> b!3976140 (= lt!1394206 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1702 thiss!21717 (rule!9694 token!484) rules!2999))))

(assert (= (and start!374228 res!1610358) b!3976134))

(assert (= (and b!3976134 res!1610367) b!3976124))

(assert (= (and b!3976124 res!1610362) b!3976113))

(assert (= (and b!3976113 res!1610369) b!3976119))

(assert (= (and b!3976119 res!1610356) b!3976131))

(assert (= (and b!3976131 res!1610372) b!3976118))

(assert (= (and b!3976118 res!1610364) b!3976125))

(assert (= (and b!3976125 res!1610355) b!3976140))

(assert (= (and b!3976140 (not res!1610361)) b!3976126))

(assert (= (and b!3976126 (not res!1610368)) b!3976115))

(assert (= (and b!3976115 (not res!1610365)) b!3976114))

(assert (= (and b!3976114 (not res!1610363)) b!3976133))

(assert (= (and b!3976133 (not res!1610371)) b!3976120))

(assert (= (and b!3976120 (not res!1610360)) b!3976116))

(assert (= (and b!3976116 res!1610359) b!3976122))

(assert (= (and b!3976122 res!1610366) b!3976121))

(assert (= (and b!3976121 res!1610357) b!3976129))

(assert (= (and b!3976116 (not res!1610370)) b!3976138))

(assert (= (and start!374228 ((_ is Cons!42482) prefix!494)) b!3976117))

(assert (= b!3976139 b!3976135))

(assert (= b!3976128 b!3976139))

(assert (= start!374228 b!3976128))

(assert (= (and start!374228 ((_ is Cons!42482) suffixResult!105)) b!3976112))

(assert (= (and start!374228 ((_ is Cons!42482) suffix!1299)) b!3976127))

(assert (= (and start!374228 ((_ is Cons!42482) newSuffix!27)) b!3976130))

(assert (= b!3976136 b!3976137))

(assert (= b!3976132 b!3976136))

(assert (= (and start!374228 ((_ is Cons!42484) rules!2999)) b!3976132))

(assert (= (and start!374228 ((_ is Cons!42482) newSuffixResult!27)) b!3976123))

(declare-fun m!4547257 () Bool)

(assert (=> b!3976118 m!4547257))

(declare-fun m!4547259 () Bool)

(assert (=> b!3976118 m!4547259))

(declare-fun m!4547261 () Bool)

(assert (=> b!3976120 m!4547261))

(declare-fun m!4547263 () Bool)

(assert (=> b!3976120 m!4547263))

(declare-fun m!4547265 () Bool)

(assert (=> b!3976120 m!4547265))

(declare-fun m!4547267 () Bool)

(assert (=> b!3976120 m!4547267))

(declare-fun m!4547269 () Bool)

(assert (=> b!3976119 m!4547269))

(declare-fun m!4547271 () Bool)

(assert (=> start!374228 m!4547271))

(declare-fun m!4547273 () Bool)

(assert (=> b!3976138 m!4547273))

(declare-fun m!4547275 () Bool)

(assert (=> b!3976138 m!4547275))

(declare-fun m!4547277 () Bool)

(assert (=> b!3976138 m!4547277))

(declare-fun m!4547279 () Bool)

(assert (=> b!3976138 m!4547279))

(declare-fun m!4547281 () Bool)

(assert (=> b!3976113 m!4547281))

(declare-fun m!4547283 () Bool)

(assert (=> b!3976113 m!4547283))

(declare-fun m!4547285 () Bool)

(assert (=> b!3976124 m!4547285))

(declare-fun m!4547287 () Bool)

(assert (=> b!3976133 m!4547287))

(declare-fun m!4547289 () Bool)

(assert (=> b!3976133 m!4547289))

(declare-fun m!4547291 () Bool)

(assert (=> b!3976133 m!4547291))

(assert (=> b!3976133 m!4547287))

(declare-fun m!4547293 () Bool)

(assert (=> b!3976133 m!4547293))

(declare-fun m!4547295 () Bool)

(assert (=> b!3976133 m!4547295))

(declare-fun m!4547297 () Bool)

(assert (=> b!3976133 m!4547297))

(declare-fun m!4547299 () Bool)

(assert (=> b!3976133 m!4547299))

(declare-fun m!4547301 () Bool)

(assert (=> b!3976139 m!4547301))

(declare-fun m!4547303 () Bool)

(assert (=> b!3976139 m!4547303))

(declare-fun m!4547305 () Bool)

(assert (=> b!3976126 m!4547305))

(declare-fun m!4547307 () Bool)

(assert (=> b!3976126 m!4547307))

(declare-fun m!4547309 () Bool)

(assert (=> b!3976126 m!4547309))

(declare-fun m!4547311 () Bool)

(assert (=> b!3976126 m!4547311))

(declare-fun m!4547313 () Bool)

(assert (=> b!3976126 m!4547313))

(declare-fun m!4547315 () Bool)

(assert (=> b!3976114 m!4547315))

(declare-fun m!4547317 () Bool)

(assert (=> b!3976114 m!4547317))

(declare-fun m!4547319 () Bool)

(assert (=> b!3976114 m!4547319))

(declare-fun m!4547321 () Bool)

(assert (=> b!3976114 m!4547321))

(declare-fun m!4547323 () Bool)

(assert (=> b!3976125 m!4547323))

(declare-fun m!4547325 () Bool)

(assert (=> b!3976125 m!4547325))

(declare-fun m!4547327 () Bool)

(assert (=> b!3976134 m!4547327))

(declare-fun m!4547329 () Bool)

(assert (=> b!3976116 m!4547329))

(declare-fun m!4547331 () Bool)

(assert (=> b!3976116 m!4547331))

(declare-fun m!4547333 () Bool)

(assert (=> b!3976116 m!4547333))

(declare-fun m!4547335 () Bool)

(assert (=> b!3976116 m!4547335))

(declare-fun m!4547337 () Bool)

(assert (=> b!3976115 m!4547337))

(declare-fun m!4547339 () Bool)

(assert (=> b!3976115 m!4547339))

(declare-fun m!4547341 () Bool)

(assert (=> b!3976115 m!4547341))

(declare-fun m!4547343 () Bool)

(assert (=> b!3976115 m!4547343))

(declare-fun m!4547345 () Bool)

(assert (=> b!3976140 m!4547345))

(declare-fun m!4547347 () Bool)

(assert (=> b!3976140 m!4547347))

(declare-fun m!4547349 () Bool)

(assert (=> b!3976140 m!4547349))

(declare-fun m!4547351 () Bool)

(assert (=> b!3976140 m!4547351))

(declare-fun m!4547353 () Bool)

(assert (=> b!3976136 m!4547353))

(declare-fun m!4547355 () Bool)

(assert (=> b!3976136 m!4547355))

(declare-fun m!4547357 () Bool)

(assert (=> b!3976131 m!4547357))

(declare-fun m!4547359 () Bool)

(assert (=> b!3976131 m!4547359))

(declare-fun m!4547361 () Bool)

(assert (=> b!3976131 m!4547361))

(assert (=> b!3976131 m!4547361))

(declare-fun m!4547363 () Bool)

(assert (=> b!3976131 m!4547363))

(declare-fun m!4547365 () Bool)

(assert (=> b!3976121 m!4547365))

(declare-fun m!4547367 () Bool)

(assert (=> b!3976128 m!4547367))

(check-sat (not b!3976139) (not b!3976112) (not b!3976130) tp_is_empty!20173 (not b!3976123) (not b!3976140) (not b!3976127) (not b_next!110985) (not b!3976132) (not b!3976118) (not b!3976136) (not b!3976115) (not b!3976125) (not b!3976131) (not b!3976124) (not b!3976138) (not b!3976119) (not b!3976126) (not b_next!110991) (not b!3976116) (not b!3976128) b_and!305653 (not b!3976121) b_and!305647 (not b_next!110987) (not b!3976117) (not start!374228) (not b!3976113) (not b!3976114) (not b!3976133) (not b!3976134) b_and!305651 (not b_next!110989) (not b!3976120) b_and!305649)
(check-sat (not b_next!110991) b_and!305653 b_and!305647 (not b_next!110987) (not b_next!110985) b_and!305649 b_and!305651 (not b_next!110989))
(get-model)

(declare-fun lt!1394240 () List!42606)

(declare-fun e!2463586 () Bool)

(declare-fun b!3976152 () Bool)

(assert (=> b!3976152 (= e!2463586 (or (not (= newSuffix!27 Nil!42482)) (= lt!1394240 prefix!494)))))

(declare-fun b!3976149 () Bool)

(declare-fun e!2463585 () List!42606)

(assert (=> b!3976149 (= e!2463585 newSuffix!27)))

(declare-fun b!3976151 () Bool)

(declare-fun res!1610380 () Bool)

(assert (=> b!3976151 (=> (not res!1610380) (not e!2463586))))

(assert (=> b!3976151 (= res!1610380 (= (size!31782 lt!1394240) (+ (size!31782 prefix!494) (size!31782 newSuffix!27))))))

(declare-fun d!1177283 () Bool)

(assert (=> d!1177283 e!2463586))

(declare-fun res!1610379 () Bool)

(assert (=> d!1177283 (=> (not res!1610379) (not e!2463586))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6445 (List!42606) (InoxSet C!23388))

(assert (=> d!1177283 (= res!1610379 (= (content!6445 lt!1394240) ((_ map or) (content!6445 prefix!494) (content!6445 newSuffix!27))))))

(assert (=> d!1177283 (= lt!1394240 e!2463585)))

(declare-fun c!689248 () Bool)

(assert (=> d!1177283 (= c!689248 ((_ is Nil!42482) prefix!494))))

(assert (=> d!1177283 (= (++!11098 prefix!494 newSuffix!27) lt!1394240)))

(declare-fun b!3976150 () Bool)

(assert (=> b!3976150 (= e!2463585 (Cons!42482 (h!47902 prefix!494) (++!11098 (t!331093 prefix!494) newSuffix!27)))))

(assert (= (and d!1177283 c!689248) b!3976149))

(assert (= (and d!1177283 (not c!689248)) b!3976150))

(assert (= (and d!1177283 res!1610379) b!3976151))

(assert (= (and b!3976151 res!1610380) b!3976152))

(declare-fun m!4547369 () Bool)

(assert (=> b!3976151 m!4547369))

(assert (=> b!3976151 m!4547359))

(assert (=> b!3976151 m!4547283))

(declare-fun m!4547371 () Bool)

(assert (=> d!1177283 m!4547371))

(declare-fun m!4547373 () Bool)

(assert (=> d!1177283 m!4547373))

(declare-fun m!4547375 () Bool)

(assert (=> d!1177283 m!4547375))

(declare-fun m!4547377 () Bool)

(assert (=> b!3976150 m!4547377))

(assert (=> b!3976118 d!1177283))

(declare-fun b!3976156 () Bool)

(declare-fun e!2463588 () Bool)

(declare-fun lt!1394241 () List!42606)

(assert (=> b!3976156 (= e!2463588 (or (not (= newSuffixResult!27 Nil!42482)) (= lt!1394241 lt!1394205)))))

(declare-fun b!3976153 () Bool)

(declare-fun e!2463587 () List!42606)

(assert (=> b!3976153 (= e!2463587 newSuffixResult!27)))

(declare-fun b!3976155 () Bool)

(declare-fun res!1610382 () Bool)

(assert (=> b!3976155 (=> (not res!1610382) (not e!2463588))))

(assert (=> b!3976155 (= res!1610382 (= (size!31782 lt!1394241) (+ (size!31782 lt!1394205) (size!31782 newSuffixResult!27))))))

(declare-fun d!1177285 () Bool)

(assert (=> d!1177285 e!2463588))

(declare-fun res!1610381 () Bool)

(assert (=> d!1177285 (=> (not res!1610381) (not e!2463588))))

(assert (=> d!1177285 (= res!1610381 (= (content!6445 lt!1394241) ((_ map or) (content!6445 lt!1394205) (content!6445 newSuffixResult!27))))))

(assert (=> d!1177285 (= lt!1394241 e!2463587)))

(declare-fun c!689249 () Bool)

(assert (=> d!1177285 (= c!689249 ((_ is Nil!42482) lt!1394205))))

(assert (=> d!1177285 (= (++!11098 lt!1394205 newSuffixResult!27) lt!1394241)))

(declare-fun b!3976154 () Bool)

(assert (=> b!3976154 (= e!2463587 (Cons!42482 (h!47902 lt!1394205) (++!11098 (t!331093 lt!1394205) newSuffixResult!27)))))

(assert (= (and d!1177285 c!689249) b!3976153))

(assert (= (and d!1177285 (not c!689249)) b!3976154))

(assert (= (and d!1177285 res!1610381) b!3976155))

(assert (= (and b!3976155 res!1610382) b!3976156))

(declare-fun m!4547379 () Bool)

(assert (=> b!3976155 m!4547379))

(assert (=> b!3976155 m!4547357))

(declare-fun m!4547381 () Bool)

(assert (=> b!3976155 m!4547381))

(declare-fun m!4547383 () Bool)

(assert (=> d!1177285 m!4547383))

(declare-fun m!4547385 () Bool)

(assert (=> d!1177285 m!4547385))

(declare-fun m!4547387 () Bool)

(assert (=> d!1177285 m!4547387))

(declare-fun m!4547389 () Bool)

(assert (=> b!3976154 m!4547389))

(assert (=> b!3976118 d!1177285))

(declare-fun b!3976167 () Bool)

(declare-fun e!2463597 () Bool)

(declare-fun inv!15 (TokenValue!6926) Bool)

(assert (=> b!3976167 (= e!2463597 (inv!15 (value!211470 token!484)))))

(declare-fun d!1177287 () Bool)

(declare-fun c!689255 () Bool)

(assert (=> d!1177287 (= c!689255 ((_ is IntegerValue!20778) (value!211470 token!484)))))

(declare-fun e!2463595 () Bool)

(assert (=> d!1177287 (= (inv!21 (value!211470 token!484)) e!2463595)))

(declare-fun b!3976168 () Bool)

(declare-fun res!1610387 () Bool)

(assert (=> b!3976168 (=> res!1610387 e!2463597)))

(assert (=> b!3976168 (= res!1610387 (not ((_ is IntegerValue!20780) (value!211470 token!484))))))

(declare-fun e!2463596 () Bool)

(assert (=> b!3976168 (= e!2463596 e!2463597)))

(declare-fun b!3976169 () Bool)

(assert (=> b!3976169 (= e!2463595 e!2463596)))

(declare-fun c!689254 () Bool)

(assert (=> b!3976169 (= c!689254 ((_ is IntegerValue!20779) (value!211470 token!484)))))

(declare-fun b!3976170 () Bool)

(declare-fun inv!17 (TokenValue!6926) Bool)

(assert (=> b!3976170 (= e!2463596 (inv!17 (value!211470 token!484)))))

(declare-fun b!3976171 () Bool)

(declare-fun inv!16 (TokenValue!6926) Bool)

(assert (=> b!3976171 (= e!2463595 (inv!16 (value!211470 token!484)))))

(assert (= (and d!1177287 c!689255) b!3976171))

(assert (= (and d!1177287 (not c!689255)) b!3976169))

(assert (= (and b!3976169 c!689254) b!3976170))

(assert (= (and b!3976169 (not c!689254)) b!3976168))

(assert (= (and b!3976168 (not res!1610387)) b!3976167))

(declare-fun m!4547391 () Bool)

(assert (=> b!3976167 m!4547391))

(declare-fun m!4547393 () Bool)

(assert (=> b!3976170 m!4547393))

(declare-fun m!4547395 () Bool)

(assert (=> b!3976171 m!4547395))

(assert (=> b!3976128 d!1177287))

(declare-fun d!1177289 () Bool)

(assert (=> d!1177289 (= (inv!56756 (tag!7556 (rule!9694 token!484))) (= (mod (str.len (value!211469 (tag!7556 (rule!9694 token!484)))) 2) 0))))

(assert (=> b!3976139 d!1177289))

(declare-fun d!1177291 () Bool)

(declare-fun res!1610400 () Bool)

(declare-fun e!2463606 () Bool)

(assert (=> d!1177291 (=> (not res!1610400) (not e!2463606))))

(declare-fun semiInverseModEq!2876 (Int Int) Bool)

(assert (=> d!1177291 (= res!1610400 (semiInverseModEq!2876 (toChars!9043 (transformation!6696 (rule!9694 token!484))) (toValue!9184 (transformation!6696 (rule!9694 token!484)))))))

(assert (=> d!1177291 (= (inv!56760 (transformation!6696 (rule!9694 token!484))) e!2463606)))

(declare-fun b!3976182 () Bool)

(declare-fun equivClasses!2775 (Int Int) Bool)

(assert (=> b!3976182 (= e!2463606 (equivClasses!2775 (toChars!9043 (transformation!6696 (rule!9694 token!484))) (toValue!9184 (transformation!6696 (rule!9694 token!484)))))))

(assert (= (and d!1177291 res!1610400) b!3976182))

(declare-fun m!4547399 () Bool)

(assert (=> d!1177291 m!4547399))

(declare-fun m!4547409 () Bool)

(assert (=> b!3976182 m!4547409))

(assert (=> b!3976139 d!1177291))

(declare-fun d!1177295 () Bool)

(assert (=> d!1177295 true))

(declare-fun lt!1394337 () Bool)

(declare-fun lambda!126878 () Int)

(declare-fun forall!8334 (List!42608 Int) Bool)

(assert (=> d!1177295 (= lt!1394337 (forall!8334 rules!2999 lambda!126878))))

(declare-fun e!2463736 () Bool)

(assert (=> d!1177295 (= lt!1394337 e!2463736)))

(declare-fun res!1610545 () Bool)

(assert (=> d!1177295 (=> res!1610545 e!2463736)))

(assert (=> d!1177295 (= res!1610545 (not ((_ is Cons!42484) rules!2999)))))

(assert (=> d!1177295 (= (rulesValidInductive!2429 thiss!21717 rules!2999) lt!1394337)))

(declare-fun b!3976414 () Bool)

(declare-fun e!2463737 () Bool)

(assert (=> b!3976414 (= e!2463736 e!2463737)))

(declare-fun res!1610546 () Bool)

(assert (=> b!3976414 (=> (not res!1610546) (not e!2463737))))

(assert (=> b!3976414 (= res!1610546 (ruleValid!2628 thiss!21717 (h!47904 rules!2999)))))

(declare-fun b!3976415 () Bool)

(assert (=> b!3976415 (= e!2463737 (rulesValidInductive!2429 thiss!21717 (t!331095 rules!2999)))))

(assert (= (and d!1177295 (not res!1610545)) b!3976414))

(assert (= (and b!3976414 res!1610546) b!3976415))

(declare-fun m!4547691 () Bool)

(assert (=> d!1177295 m!4547691))

(declare-fun m!4547693 () Bool)

(assert (=> b!3976414 m!4547693))

(declare-fun m!4547695 () Bool)

(assert (=> b!3976415 m!4547695))

(assert (=> b!3976138 d!1177295))

(declare-fun d!1177391 () Bool)

(assert (=> d!1177391 (= suffixResult!105 lt!1394236)))

(declare-fun lt!1394340 () Unit!61132)

(declare-fun choose!23826 (List!42606 List!42606 List!42606 List!42606 List!42606) Unit!61132)

(assert (=> d!1177391 (= lt!1394340 (choose!23826 lt!1394205 suffixResult!105 lt!1394205 lt!1394236 lt!1394229))))

(assert (=> d!1177391 (isPrefix!3783 lt!1394205 lt!1394229)))

(assert (=> d!1177391 (= (lemmaSamePrefixThenSameSuffix!1970 lt!1394205 suffixResult!105 lt!1394205 lt!1394236 lt!1394229) lt!1394340)))

(declare-fun bs!587778 () Bool)

(assert (= bs!587778 d!1177391))

(declare-fun m!4547697 () Bool)

(assert (=> bs!587778 m!4547697))

(assert (=> bs!587778 m!4547305))

(assert (=> b!3976138 d!1177391))

(declare-fun b!3976428 () Bool)

(declare-fun e!2463744 () Bool)

(declare-fun tail!6203 (List!42606) List!42606)

(assert (=> b!3976428 (= e!2463744 (isPrefix!3783 (tail!6203 lt!1394205) (tail!6203 lt!1394225)))))

(declare-fun d!1177393 () Bool)

(declare-fun e!2463746 () Bool)

(assert (=> d!1177393 e!2463746))

(declare-fun res!1610557 () Bool)

(assert (=> d!1177393 (=> res!1610557 e!2463746)))

(declare-fun lt!1394343 () Bool)

(assert (=> d!1177393 (= res!1610557 (not lt!1394343))))

(declare-fun e!2463745 () Bool)

(assert (=> d!1177393 (= lt!1394343 e!2463745)))

(declare-fun res!1610555 () Bool)

(assert (=> d!1177393 (=> res!1610555 e!2463745)))

(assert (=> d!1177393 (= res!1610555 ((_ is Nil!42482) lt!1394205))))

(assert (=> d!1177393 (= (isPrefix!3783 lt!1394205 lt!1394225) lt!1394343)))

(declare-fun b!3976427 () Bool)

(declare-fun res!1610556 () Bool)

(assert (=> b!3976427 (=> (not res!1610556) (not e!2463744))))

(declare-fun head!8471 (List!42606) C!23388)

(assert (=> b!3976427 (= res!1610556 (= (head!8471 lt!1394205) (head!8471 lt!1394225)))))

(declare-fun b!3976429 () Bool)

(assert (=> b!3976429 (= e!2463746 (>= (size!31782 lt!1394225) (size!31782 lt!1394205)))))

(declare-fun b!3976426 () Bool)

(assert (=> b!3976426 (= e!2463745 e!2463744)))

(declare-fun res!1610558 () Bool)

(assert (=> b!3976426 (=> (not res!1610558) (not e!2463744))))

(assert (=> b!3976426 (= res!1610558 (not ((_ is Nil!42482) lt!1394225)))))

(assert (= (and d!1177393 (not res!1610555)) b!3976426))

(assert (= (and b!3976426 res!1610558) b!3976427))

(assert (= (and b!3976427 res!1610556) b!3976428))

(assert (= (and d!1177393 (not res!1610557)) b!3976429))

(declare-fun m!4547699 () Bool)

(assert (=> b!3976428 m!4547699))

(declare-fun m!4547701 () Bool)

(assert (=> b!3976428 m!4547701))

(assert (=> b!3976428 m!4547699))

(assert (=> b!3976428 m!4547701))

(declare-fun m!4547703 () Bool)

(assert (=> b!3976428 m!4547703))

(declare-fun m!4547705 () Bool)

(assert (=> b!3976427 m!4547705))

(declare-fun m!4547707 () Bool)

(assert (=> b!3976427 m!4547707))

(declare-fun m!4547709 () Bool)

(assert (=> b!3976429 m!4547709))

(assert (=> b!3976429 m!4547357))

(assert (=> b!3976138 d!1177393))

(declare-fun d!1177395 () Bool)

(assert (=> d!1177395 (isPrefix!3783 lt!1394205 (++!11098 lt!1394205 lt!1394236))))

(declare-fun lt!1394346 () Unit!61132)

(declare-fun choose!23827 (List!42606 List!42606) Unit!61132)

(assert (=> d!1177395 (= lt!1394346 (choose!23827 lt!1394205 lt!1394236))))

(assert (=> d!1177395 (= (lemmaConcatTwoListThenFirstIsPrefix!2626 lt!1394205 lt!1394236) lt!1394346)))

(declare-fun bs!587779 () Bool)

(assert (= bs!587779 d!1177395))

(assert (=> bs!587779 m!4547329))

(assert (=> bs!587779 m!4547329))

(declare-fun m!4547711 () Bool)

(assert (=> bs!587779 m!4547711))

(declare-fun m!4547713 () Bool)

(assert (=> bs!587779 m!4547713))

(assert (=> b!3976138 d!1177395))

(declare-fun b!3976433 () Bool)

(declare-fun lt!1394347 () List!42606)

(declare-fun e!2463748 () Bool)

(assert (=> b!3976433 (= e!2463748 (or (not (= lt!1394236 Nil!42482)) (= lt!1394347 lt!1394205)))))

(declare-fun b!3976430 () Bool)

(declare-fun e!2463747 () List!42606)

(assert (=> b!3976430 (= e!2463747 lt!1394236)))

(declare-fun b!3976432 () Bool)

(declare-fun res!1610560 () Bool)

(assert (=> b!3976432 (=> (not res!1610560) (not e!2463748))))

(assert (=> b!3976432 (= res!1610560 (= (size!31782 lt!1394347) (+ (size!31782 lt!1394205) (size!31782 lt!1394236))))))

(declare-fun d!1177397 () Bool)

(assert (=> d!1177397 e!2463748))

(declare-fun res!1610559 () Bool)

(assert (=> d!1177397 (=> (not res!1610559) (not e!2463748))))

(assert (=> d!1177397 (= res!1610559 (= (content!6445 lt!1394347) ((_ map or) (content!6445 lt!1394205) (content!6445 lt!1394236))))))

(assert (=> d!1177397 (= lt!1394347 e!2463747)))

(declare-fun c!689295 () Bool)

(assert (=> d!1177397 (= c!689295 ((_ is Nil!42482) lt!1394205))))

(assert (=> d!1177397 (= (++!11098 lt!1394205 lt!1394236) lt!1394347)))

(declare-fun b!3976431 () Bool)

(assert (=> b!3976431 (= e!2463747 (Cons!42482 (h!47902 lt!1394205) (++!11098 (t!331093 lt!1394205) lt!1394236)))))

(assert (= (and d!1177397 c!689295) b!3976430))

(assert (= (and d!1177397 (not c!689295)) b!3976431))

(assert (= (and d!1177397 res!1610559) b!3976432))

(assert (= (and b!3976432 res!1610560) b!3976433))

(declare-fun m!4547715 () Bool)

(assert (=> b!3976432 m!4547715))

(assert (=> b!3976432 m!4547357))

(declare-fun m!4547717 () Bool)

(assert (=> b!3976432 m!4547717))

(declare-fun m!4547719 () Bool)

(assert (=> d!1177397 m!4547719))

(assert (=> d!1177397 m!4547385))

(declare-fun m!4547721 () Bool)

(assert (=> d!1177397 m!4547721))

(declare-fun m!4547723 () Bool)

(assert (=> b!3976431 m!4547723))

(assert (=> b!3976116 d!1177397))

(declare-fun d!1177399 () Bool)

(declare-fun lt!1394350 () List!42606)

(assert (=> d!1177399 (= (++!11098 lt!1394205 lt!1394350) lt!1394229)))

(declare-fun e!2463751 () List!42606)

(assert (=> d!1177399 (= lt!1394350 e!2463751)))

(declare-fun c!689298 () Bool)

(assert (=> d!1177399 (= c!689298 ((_ is Cons!42482) lt!1394205))))

(assert (=> d!1177399 (>= (size!31782 lt!1394229) (size!31782 lt!1394205))))

(assert (=> d!1177399 (= (getSuffix!2214 lt!1394229 lt!1394205) lt!1394350)))

(declare-fun b!3976438 () Bool)

(assert (=> b!3976438 (= e!2463751 (getSuffix!2214 (tail!6203 lt!1394229) (t!331093 lt!1394205)))))

(declare-fun b!3976439 () Bool)

(assert (=> b!3976439 (= e!2463751 lt!1394229)))

(assert (= (and d!1177399 c!689298) b!3976438))

(assert (= (and d!1177399 (not c!689298)) b!3976439))

(declare-fun m!4547725 () Bool)

(assert (=> d!1177399 m!4547725))

(declare-fun m!4547727 () Bool)

(assert (=> d!1177399 m!4547727))

(assert (=> d!1177399 m!4547357))

(declare-fun m!4547729 () Bool)

(assert (=> b!3976438 m!4547729))

(assert (=> b!3976438 m!4547729))

(declare-fun m!4547731 () Bool)

(assert (=> b!3976438 m!4547731))

(assert (=> b!3976116 d!1177399))

(declare-fun b!3976442 () Bool)

(declare-fun e!2463752 () Bool)

(assert (=> b!3976442 (= e!2463752 (isPrefix!3783 (tail!6203 lt!1394229) (tail!6203 lt!1394229)))))

(declare-fun d!1177401 () Bool)

(declare-fun e!2463754 () Bool)

(assert (=> d!1177401 e!2463754))

(declare-fun res!1610563 () Bool)

(assert (=> d!1177401 (=> res!1610563 e!2463754)))

(declare-fun lt!1394351 () Bool)

(assert (=> d!1177401 (= res!1610563 (not lt!1394351))))

(declare-fun e!2463753 () Bool)

(assert (=> d!1177401 (= lt!1394351 e!2463753)))

(declare-fun res!1610561 () Bool)

(assert (=> d!1177401 (=> res!1610561 e!2463753)))

(assert (=> d!1177401 (= res!1610561 ((_ is Nil!42482) lt!1394229))))

(assert (=> d!1177401 (= (isPrefix!3783 lt!1394229 lt!1394229) lt!1394351)))

(declare-fun b!3976441 () Bool)

(declare-fun res!1610562 () Bool)

(assert (=> b!3976441 (=> (not res!1610562) (not e!2463752))))

(assert (=> b!3976441 (= res!1610562 (= (head!8471 lt!1394229) (head!8471 lt!1394229)))))

(declare-fun b!3976443 () Bool)

(assert (=> b!3976443 (= e!2463754 (>= (size!31782 lt!1394229) (size!31782 lt!1394229)))))

(declare-fun b!3976440 () Bool)

(assert (=> b!3976440 (= e!2463753 e!2463752)))

(declare-fun res!1610564 () Bool)

(assert (=> b!3976440 (=> (not res!1610564) (not e!2463752))))

(assert (=> b!3976440 (= res!1610564 (not ((_ is Nil!42482) lt!1394229)))))

(assert (= (and d!1177401 (not res!1610561)) b!3976440))

(assert (= (and b!3976440 res!1610564) b!3976441))

(assert (= (and b!3976441 res!1610562) b!3976442))

(assert (= (and d!1177401 (not res!1610563)) b!3976443))

(assert (=> b!3976442 m!4547729))

(assert (=> b!3976442 m!4547729))

(assert (=> b!3976442 m!4547729))

(assert (=> b!3976442 m!4547729))

(declare-fun m!4547733 () Bool)

(assert (=> b!3976442 m!4547733))

(declare-fun m!4547735 () Bool)

(assert (=> b!3976441 m!4547735))

(assert (=> b!3976441 m!4547735))

(assert (=> b!3976443 m!4547727))

(assert (=> b!3976443 m!4547727))

(assert (=> b!3976116 d!1177401))

(declare-fun d!1177403 () Bool)

(assert (=> d!1177403 (isPrefix!3783 lt!1394229 lt!1394229)))

(declare-fun lt!1394354 () Unit!61132)

(declare-fun choose!23828 (List!42606 List!42606) Unit!61132)

(assert (=> d!1177403 (= lt!1394354 (choose!23828 lt!1394229 lt!1394229))))

(assert (=> d!1177403 (= (lemmaIsPrefixRefl!2375 lt!1394229 lt!1394229) lt!1394354)))

(declare-fun bs!587780 () Bool)

(assert (= bs!587780 d!1177403))

(assert (=> bs!587780 m!4547333))

(declare-fun m!4547737 () Bool)

(assert (=> bs!587780 m!4547737))

(assert (=> b!3976116 d!1177403))

(declare-fun b!3976446 () Bool)

(declare-fun e!2463755 () Bool)

(assert (=> b!3976446 (= e!2463755 (isPrefix!3783 (tail!6203 prefix!494) (tail!6203 lt!1394229)))))

(declare-fun d!1177405 () Bool)

(declare-fun e!2463757 () Bool)

(assert (=> d!1177405 e!2463757))

(declare-fun res!1610567 () Bool)

(assert (=> d!1177405 (=> res!1610567 e!2463757)))

(declare-fun lt!1394355 () Bool)

(assert (=> d!1177405 (= res!1610567 (not lt!1394355))))

(declare-fun e!2463756 () Bool)

(assert (=> d!1177405 (= lt!1394355 e!2463756)))

(declare-fun res!1610565 () Bool)

(assert (=> d!1177405 (=> res!1610565 e!2463756)))

(assert (=> d!1177405 (= res!1610565 ((_ is Nil!42482) prefix!494))))

(assert (=> d!1177405 (= (isPrefix!3783 prefix!494 lt!1394229) lt!1394355)))

(declare-fun b!3976445 () Bool)

(declare-fun res!1610566 () Bool)

(assert (=> b!3976445 (=> (not res!1610566) (not e!2463755))))

(assert (=> b!3976445 (= res!1610566 (= (head!8471 prefix!494) (head!8471 lt!1394229)))))

(declare-fun b!3976447 () Bool)

(assert (=> b!3976447 (= e!2463757 (>= (size!31782 lt!1394229) (size!31782 prefix!494)))))

(declare-fun b!3976444 () Bool)

(assert (=> b!3976444 (= e!2463756 e!2463755)))

(declare-fun res!1610568 () Bool)

(assert (=> b!3976444 (=> (not res!1610568) (not e!2463755))))

(assert (=> b!3976444 (= res!1610568 (not ((_ is Nil!42482) lt!1394229)))))

(assert (= (and d!1177405 (not res!1610565)) b!3976444))

(assert (= (and b!3976444 res!1610568) b!3976445))

(assert (= (and b!3976445 res!1610566) b!3976446))

(assert (= (and d!1177405 (not res!1610567)) b!3976447))

(declare-fun m!4547739 () Bool)

(assert (=> b!3976446 m!4547739))

(assert (=> b!3976446 m!4547729))

(assert (=> b!3976446 m!4547739))

(assert (=> b!3976446 m!4547729))

(declare-fun m!4547741 () Bool)

(assert (=> b!3976446 m!4547741))

(declare-fun m!4547743 () Bool)

(assert (=> b!3976445 m!4547743))

(assert (=> b!3976445 m!4547735))

(assert (=> b!3976447 m!4547727))

(assert (=> b!3976447 m!4547359))

(assert (=> b!3976126 d!1177405))

(declare-fun b!3976450 () Bool)

(declare-fun e!2463758 () Bool)

(assert (=> b!3976450 (= e!2463758 (isPrefix!3783 (tail!6203 lt!1394205) (tail!6203 lt!1394234)))))

(declare-fun d!1177407 () Bool)

(declare-fun e!2463760 () Bool)

(assert (=> d!1177407 e!2463760))

(declare-fun res!1610571 () Bool)

(assert (=> d!1177407 (=> res!1610571 e!2463760)))

(declare-fun lt!1394356 () Bool)

(assert (=> d!1177407 (= res!1610571 (not lt!1394356))))

(declare-fun e!2463759 () Bool)

(assert (=> d!1177407 (= lt!1394356 e!2463759)))

(declare-fun res!1610569 () Bool)

(assert (=> d!1177407 (=> res!1610569 e!2463759)))

(assert (=> d!1177407 (= res!1610569 ((_ is Nil!42482) lt!1394205))))

(assert (=> d!1177407 (= (isPrefix!3783 lt!1394205 lt!1394234) lt!1394356)))

(declare-fun b!3976449 () Bool)

(declare-fun res!1610570 () Bool)

(assert (=> b!3976449 (=> (not res!1610570) (not e!2463758))))

(assert (=> b!3976449 (= res!1610570 (= (head!8471 lt!1394205) (head!8471 lt!1394234)))))

(declare-fun b!3976451 () Bool)

(assert (=> b!3976451 (= e!2463760 (>= (size!31782 lt!1394234) (size!31782 lt!1394205)))))

(declare-fun b!3976448 () Bool)

(assert (=> b!3976448 (= e!2463759 e!2463758)))

(declare-fun res!1610572 () Bool)

(assert (=> b!3976448 (=> (not res!1610572) (not e!2463758))))

(assert (=> b!3976448 (= res!1610572 (not ((_ is Nil!42482) lt!1394234)))))

(assert (= (and d!1177407 (not res!1610569)) b!3976448))

(assert (= (and b!3976448 res!1610572) b!3976449))

(assert (= (and b!3976449 res!1610570) b!3976450))

(assert (= (and d!1177407 (not res!1610571)) b!3976451))

(assert (=> b!3976450 m!4547699))

(declare-fun m!4547745 () Bool)

(assert (=> b!3976450 m!4547745))

(assert (=> b!3976450 m!4547699))

(assert (=> b!3976450 m!4547745))

(declare-fun m!4547747 () Bool)

(assert (=> b!3976450 m!4547747))

(assert (=> b!3976449 m!4547705))

(declare-fun m!4547749 () Bool)

(assert (=> b!3976449 m!4547749))

(declare-fun m!4547751 () Bool)

(assert (=> b!3976451 m!4547751))

(assert (=> b!3976451 m!4547357))

(assert (=> b!3976126 d!1177407))

(declare-fun d!1177409 () Bool)

(assert (=> d!1177409 (isPrefix!3783 lt!1394205 (++!11098 lt!1394205 suffixResult!105))))

(declare-fun lt!1394357 () Unit!61132)

(assert (=> d!1177409 (= lt!1394357 (choose!23827 lt!1394205 suffixResult!105))))

(assert (=> d!1177409 (= (lemmaConcatTwoListThenFirstIsPrefix!2626 lt!1394205 suffixResult!105) lt!1394357)))

(declare-fun bs!587781 () Bool)

(assert (= bs!587781 d!1177409))

(assert (=> bs!587781 m!4547345))

(assert (=> bs!587781 m!4547345))

(declare-fun m!4547753 () Bool)

(assert (=> bs!587781 m!4547753))

(declare-fun m!4547755 () Bool)

(assert (=> bs!587781 m!4547755))

(assert (=> b!3976126 d!1177409))

(declare-fun b!3976454 () Bool)

(declare-fun e!2463761 () Bool)

(assert (=> b!3976454 (= e!2463761 (isPrefix!3783 (tail!6203 lt!1394205) (tail!6203 lt!1394229)))))

(declare-fun d!1177411 () Bool)

(declare-fun e!2463763 () Bool)

(assert (=> d!1177411 e!2463763))

(declare-fun res!1610575 () Bool)

(assert (=> d!1177411 (=> res!1610575 e!2463763)))

(declare-fun lt!1394358 () Bool)

(assert (=> d!1177411 (= res!1610575 (not lt!1394358))))

(declare-fun e!2463762 () Bool)

(assert (=> d!1177411 (= lt!1394358 e!2463762)))

(declare-fun res!1610573 () Bool)

(assert (=> d!1177411 (=> res!1610573 e!2463762)))

(assert (=> d!1177411 (= res!1610573 ((_ is Nil!42482) lt!1394205))))

(assert (=> d!1177411 (= (isPrefix!3783 lt!1394205 lt!1394229) lt!1394358)))

(declare-fun b!3976453 () Bool)

(declare-fun res!1610574 () Bool)

(assert (=> b!3976453 (=> (not res!1610574) (not e!2463761))))

(assert (=> b!3976453 (= res!1610574 (= (head!8471 lt!1394205) (head!8471 lt!1394229)))))

(declare-fun b!3976455 () Bool)

(assert (=> b!3976455 (= e!2463763 (>= (size!31782 lt!1394229) (size!31782 lt!1394205)))))

(declare-fun b!3976452 () Bool)

(assert (=> b!3976452 (= e!2463762 e!2463761)))

(declare-fun res!1610576 () Bool)

(assert (=> b!3976452 (=> (not res!1610576) (not e!2463761))))

(assert (=> b!3976452 (= res!1610576 (not ((_ is Nil!42482) lt!1394229)))))

(assert (= (and d!1177411 (not res!1610573)) b!3976452))

(assert (= (and b!3976452 res!1610576) b!3976453))

(assert (= (and b!3976453 res!1610574) b!3976454))

(assert (= (and d!1177411 (not res!1610575)) b!3976455))

(assert (=> b!3976454 m!4547699))

(assert (=> b!3976454 m!4547729))

(assert (=> b!3976454 m!4547699))

(assert (=> b!3976454 m!4547729))

(declare-fun m!4547757 () Bool)

(assert (=> b!3976454 m!4547757))

(assert (=> b!3976453 m!4547705))

(assert (=> b!3976453 m!4547735))

(assert (=> b!3976455 m!4547727))

(assert (=> b!3976455 m!4547357))

(assert (=> b!3976126 d!1177411))

(declare-fun d!1177413 () Bool)

(assert (=> d!1177413 (isPrefix!3783 prefix!494 (++!11098 prefix!494 suffix!1299))))

(declare-fun lt!1394359 () Unit!61132)

(assert (=> d!1177413 (= lt!1394359 (choose!23827 prefix!494 suffix!1299))))

(assert (=> d!1177413 (= (lemmaConcatTwoListThenFirstIsPrefix!2626 prefix!494 suffix!1299) lt!1394359)))

(declare-fun bs!587782 () Bool)

(assert (= bs!587782 d!1177413))

(assert (=> bs!587782 m!4547325))

(assert (=> bs!587782 m!4547325))

(declare-fun m!4547759 () Bool)

(assert (=> bs!587782 m!4547759))

(declare-fun m!4547761 () Bool)

(assert (=> bs!587782 m!4547761))

(assert (=> b!3976126 d!1177413))

(declare-fun d!1177415 () Bool)

(assert (=> d!1177415 (= (inv!56756 (tag!7556 (h!47904 rules!2999))) (= (mod (str.len (value!211469 (tag!7556 (h!47904 rules!2999)))) 2) 0))))

(assert (=> b!3976136 d!1177415))

(declare-fun d!1177417 () Bool)

(declare-fun res!1610577 () Bool)

(declare-fun e!2463764 () Bool)

(assert (=> d!1177417 (=> (not res!1610577) (not e!2463764))))

(assert (=> d!1177417 (= res!1610577 (semiInverseModEq!2876 (toChars!9043 (transformation!6696 (h!47904 rules!2999))) (toValue!9184 (transformation!6696 (h!47904 rules!2999)))))))

(assert (=> d!1177417 (= (inv!56760 (transformation!6696 (h!47904 rules!2999))) e!2463764)))

(declare-fun b!3976456 () Bool)

(assert (=> b!3976456 (= e!2463764 (equivClasses!2775 (toChars!9043 (transformation!6696 (h!47904 rules!2999))) (toValue!9184 (transformation!6696 (h!47904 rules!2999)))))))

(assert (= (and d!1177417 res!1610577) b!3976456))

(declare-fun m!4547763 () Bool)

(assert (=> d!1177417 m!4547763))

(declare-fun m!4547765 () Bool)

(assert (=> b!3976456 m!4547765))

(assert (=> b!3976136 d!1177417))

(declare-fun e!2463766 () Bool)

(declare-fun lt!1394360 () List!42606)

(declare-fun b!3976460 () Bool)

(assert (=> b!3976460 (= e!2463766 (or (not (= lt!1394224 Nil!42482)) (= lt!1394360 lt!1394205)))))

(declare-fun b!3976457 () Bool)

(declare-fun e!2463765 () List!42606)

(assert (=> b!3976457 (= e!2463765 lt!1394224)))

(declare-fun b!3976459 () Bool)

(declare-fun res!1610579 () Bool)

(assert (=> b!3976459 (=> (not res!1610579) (not e!2463766))))

(assert (=> b!3976459 (= res!1610579 (= (size!31782 lt!1394360) (+ (size!31782 lt!1394205) (size!31782 lt!1394224))))))

(declare-fun d!1177419 () Bool)

(assert (=> d!1177419 e!2463766))

(declare-fun res!1610578 () Bool)

(assert (=> d!1177419 (=> (not res!1610578) (not e!2463766))))

(assert (=> d!1177419 (= res!1610578 (= (content!6445 lt!1394360) ((_ map or) (content!6445 lt!1394205) (content!6445 lt!1394224))))))

(assert (=> d!1177419 (= lt!1394360 e!2463765)))

(declare-fun c!689299 () Bool)

(assert (=> d!1177419 (= c!689299 ((_ is Nil!42482) lt!1394205))))

(assert (=> d!1177419 (= (++!11098 lt!1394205 lt!1394224) lt!1394360)))

(declare-fun b!3976458 () Bool)

(assert (=> b!3976458 (= e!2463765 (Cons!42482 (h!47902 lt!1394205) (++!11098 (t!331093 lt!1394205) lt!1394224)))))

(assert (= (and d!1177419 c!689299) b!3976457))

(assert (= (and d!1177419 (not c!689299)) b!3976458))

(assert (= (and d!1177419 res!1610578) b!3976459))

(assert (= (and b!3976459 res!1610579) b!3976460))

(declare-fun m!4547767 () Bool)

(assert (=> b!3976459 m!4547767))

(assert (=> b!3976459 m!4547357))

(declare-fun m!4547769 () Bool)

(assert (=> b!3976459 m!4547769))

(declare-fun m!4547771 () Bool)

(assert (=> d!1177419 m!4547771))

(assert (=> d!1177419 m!4547385))

(declare-fun m!4547773 () Bool)

(assert (=> d!1177419 m!4547773))

(declare-fun m!4547775 () Bool)

(assert (=> b!3976458 m!4547775))

(assert (=> b!3976115 d!1177419))

(declare-fun d!1177421 () Bool)

(declare-fun lt!1394361 () List!42606)

(assert (=> d!1177421 (= (++!11098 lt!1394205 lt!1394361) prefix!494)))

(declare-fun e!2463767 () List!42606)

(assert (=> d!1177421 (= lt!1394361 e!2463767)))

(declare-fun c!689300 () Bool)

(assert (=> d!1177421 (= c!689300 ((_ is Cons!42482) lt!1394205))))

(assert (=> d!1177421 (>= (size!31782 prefix!494) (size!31782 lt!1394205))))

(assert (=> d!1177421 (= (getSuffix!2214 prefix!494 lt!1394205) lt!1394361)))

(declare-fun b!3976461 () Bool)

(assert (=> b!3976461 (= e!2463767 (getSuffix!2214 (tail!6203 prefix!494) (t!331093 lt!1394205)))))

(declare-fun b!3976462 () Bool)

(assert (=> b!3976462 (= e!2463767 prefix!494)))

(assert (= (and d!1177421 c!689300) b!3976461))

(assert (= (and d!1177421 (not c!689300)) b!3976462))

(declare-fun m!4547777 () Bool)

(assert (=> d!1177421 m!4547777))

(assert (=> d!1177421 m!4547359))

(assert (=> d!1177421 m!4547357))

(assert (=> b!3976461 m!4547739))

(assert (=> b!3976461 m!4547739))

(declare-fun m!4547779 () Bool)

(assert (=> b!3976461 m!4547779))

(assert (=> b!3976115 d!1177421))

(declare-fun b!3976465 () Bool)

(declare-fun e!2463768 () Bool)

(assert (=> b!3976465 (= e!2463768 (isPrefix!3783 (tail!6203 lt!1394205) (tail!6203 prefix!494)))))

(declare-fun d!1177423 () Bool)

(declare-fun e!2463770 () Bool)

(assert (=> d!1177423 e!2463770))

(declare-fun res!1610582 () Bool)

(assert (=> d!1177423 (=> res!1610582 e!2463770)))

(declare-fun lt!1394362 () Bool)

(assert (=> d!1177423 (= res!1610582 (not lt!1394362))))

(declare-fun e!2463769 () Bool)

(assert (=> d!1177423 (= lt!1394362 e!2463769)))

(declare-fun res!1610580 () Bool)

(assert (=> d!1177423 (=> res!1610580 e!2463769)))

(assert (=> d!1177423 (= res!1610580 ((_ is Nil!42482) lt!1394205))))

(assert (=> d!1177423 (= (isPrefix!3783 lt!1394205 prefix!494) lt!1394362)))

(declare-fun b!3976464 () Bool)

(declare-fun res!1610581 () Bool)

(assert (=> b!3976464 (=> (not res!1610581) (not e!2463768))))

(assert (=> b!3976464 (= res!1610581 (= (head!8471 lt!1394205) (head!8471 prefix!494)))))

(declare-fun b!3976466 () Bool)

(assert (=> b!3976466 (= e!2463770 (>= (size!31782 prefix!494) (size!31782 lt!1394205)))))

(declare-fun b!3976463 () Bool)

(assert (=> b!3976463 (= e!2463769 e!2463768)))

(declare-fun res!1610583 () Bool)

(assert (=> b!3976463 (=> (not res!1610583) (not e!2463768))))

(assert (=> b!3976463 (= res!1610583 (not ((_ is Nil!42482) prefix!494)))))

(assert (= (and d!1177423 (not res!1610580)) b!3976463))

(assert (= (and b!3976463 res!1610583) b!3976464))

(assert (= (and b!3976464 res!1610581) b!3976465))

(assert (= (and d!1177423 (not res!1610582)) b!3976466))

(assert (=> b!3976465 m!4547699))

(assert (=> b!3976465 m!4547739))

(assert (=> b!3976465 m!4547699))

(assert (=> b!3976465 m!4547739))

(declare-fun m!4547781 () Bool)

(assert (=> b!3976465 m!4547781))

(assert (=> b!3976464 m!4547705))

(assert (=> b!3976464 m!4547743))

(assert (=> b!3976466 m!4547359))

(assert (=> b!3976466 m!4547357))

(assert (=> b!3976115 d!1177423))

(declare-fun d!1177425 () Bool)

(assert (=> d!1177425 (isPrefix!3783 lt!1394205 prefix!494)))

(declare-fun lt!1394365 () Unit!61132)

(declare-fun choose!23831 (List!42606 List!42606 List!42606) Unit!61132)

(assert (=> d!1177425 (= lt!1394365 (choose!23831 prefix!494 lt!1394205 lt!1394229))))

(assert (=> d!1177425 (isPrefix!3783 prefix!494 lt!1394229)))

(assert (=> d!1177425 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!361 prefix!494 lt!1394205 lt!1394229) lt!1394365)))

(declare-fun bs!587783 () Bool)

(assert (= bs!587783 d!1177425))

(assert (=> bs!587783 m!4547341))

(declare-fun m!4547783 () Bool)

(assert (=> bs!587783 m!4547783))

(assert (=> bs!587783 m!4547311))

(assert (=> b!3976115 d!1177425))

(declare-fun lt!1394366 () List!42606)

(declare-fun b!3976470 () Bool)

(declare-fun e!2463772 () Bool)

(assert (=> b!3976470 (= e!2463772 (or (not (= lt!1394226 Nil!42482)) (= lt!1394366 lt!1394205)))))

(declare-fun b!3976467 () Bool)

(declare-fun e!2463771 () List!42606)

(assert (=> b!3976467 (= e!2463771 lt!1394226)))

(declare-fun b!3976469 () Bool)

(declare-fun res!1610585 () Bool)

(assert (=> b!3976469 (=> (not res!1610585) (not e!2463772))))

(assert (=> b!3976469 (= res!1610585 (= (size!31782 lt!1394366) (+ (size!31782 lt!1394205) (size!31782 lt!1394226))))))

(declare-fun d!1177427 () Bool)

(assert (=> d!1177427 e!2463772))

(declare-fun res!1610584 () Bool)

(assert (=> d!1177427 (=> (not res!1610584) (not e!2463772))))

(assert (=> d!1177427 (= res!1610584 (= (content!6445 lt!1394366) ((_ map or) (content!6445 lt!1394205) (content!6445 lt!1394226))))))

(assert (=> d!1177427 (= lt!1394366 e!2463771)))

(declare-fun c!689301 () Bool)

(assert (=> d!1177427 (= c!689301 ((_ is Nil!42482) lt!1394205))))

(assert (=> d!1177427 (= (++!11098 lt!1394205 lt!1394226) lt!1394366)))

(declare-fun b!3976468 () Bool)

(assert (=> b!3976468 (= e!2463771 (Cons!42482 (h!47902 lt!1394205) (++!11098 (t!331093 lt!1394205) lt!1394226)))))

(assert (= (and d!1177427 c!689301) b!3976467))

(assert (= (and d!1177427 (not c!689301)) b!3976468))

(assert (= (and d!1177427 res!1610584) b!3976469))

(assert (= (and b!3976469 res!1610585) b!3976470))

(declare-fun m!4547785 () Bool)

(assert (=> b!3976469 m!4547785))

(assert (=> b!3976469 m!4547357))

(declare-fun m!4547787 () Bool)

(assert (=> b!3976469 m!4547787))

(declare-fun m!4547789 () Bool)

(assert (=> d!1177427 m!4547789))

(assert (=> d!1177427 m!4547385))

(declare-fun m!4547791 () Bool)

(assert (=> d!1177427 m!4547791))

(declare-fun m!4547793 () Bool)

(assert (=> b!3976468 m!4547793))

(assert (=> b!3976114 d!1177427))

(declare-fun e!2463774 () Bool)

(declare-fun lt!1394367 () List!42606)

(declare-fun b!3976474 () Bool)

(assert (=> b!3976474 (= e!2463774 (or (not (= suffix!1299 Nil!42482)) (= lt!1394367 lt!1394207)))))

(declare-fun b!3976471 () Bool)

(declare-fun e!2463773 () List!42606)

(assert (=> b!3976471 (= e!2463773 suffix!1299)))

(declare-fun b!3976473 () Bool)

(declare-fun res!1610587 () Bool)

(assert (=> b!3976473 (=> (not res!1610587) (not e!2463774))))

(assert (=> b!3976473 (= res!1610587 (= (size!31782 lt!1394367) (+ (size!31782 lt!1394207) (size!31782 suffix!1299))))))

(declare-fun d!1177429 () Bool)

(assert (=> d!1177429 e!2463774))

(declare-fun res!1610586 () Bool)

(assert (=> d!1177429 (=> (not res!1610586) (not e!2463774))))

(assert (=> d!1177429 (= res!1610586 (= (content!6445 lt!1394367) ((_ map or) (content!6445 lt!1394207) (content!6445 suffix!1299))))))

(assert (=> d!1177429 (= lt!1394367 e!2463773)))

(declare-fun c!689302 () Bool)

(assert (=> d!1177429 (= c!689302 ((_ is Nil!42482) lt!1394207))))

(assert (=> d!1177429 (= (++!11098 lt!1394207 suffix!1299) lt!1394367)))

(declare-fun b!3976472 () Bool)

(assert (=> b!3976472 (= e!2463773 (Cons!42482 (h!47902 lt!1394207) (++!11098 (t!331093 lt!1394207) suffix!1299)))))

(assert (= (and d!1177429 c!689302) b!3976471))

(assert (= (and d!1177429 (not c!689302)) b!3976472))

(assert (= (and d!1177429 res!1610586) b!3976473))

(assert (= (and b!3976473 res!1610587) b!3976474))

(declare-fun m!4547795 () Bool)

(assert (=> b!3976473 m!4547795))

(declare-fun m!4547797 () Bool)

(assert (=> b!3976473 m!4547797))

(assert (=> b!3976473 m!4547281))

(declare-fun m!4547799 () Bool)

(assert (=> d!1177429 m!4547799))

(declare-fun m!4547801 () Bool)

(assert (=> d!1177429 m!4547801))

(declare-fun m!4547803 () Bool)

(assert (=> d!1177429 m!4547803))

(declare-fun m!4547805 () Bool)

(assert (=> b!3976472 m!4547805))

(assert (=> b!3976114 d!1177429))

(declare-fun lt!1394368 () List!42606)

(declare-fun e!2463776 () Bool)

(declare-fun b!3976478 () Bool)

(assert (=> b!3976478 (= e!2463776 (or (not (= suffix!1299 Nil!42482)) (= lt!1394368 lt!1394224)))))

(declare-fun b!3976475 () Bool)

(declare-fun e!2463775 () List!42606)

(assert (=> b!3976475 (= e!2463775 suffix!1299)))

(declare-fun b!3976477 () Bool)

(declare-fun res!1610589 () Bool)

(assert (=> b!3976477 (=> (not res!1610589) (not e!2463776))))

(assert (=> b!3976477 (= res!1610589 (= (size!31782 lt!1394368) (+ (size!31782 lt!1394224) (size!31782 suffix!1299))))))

(declare-fun d!1177431 () Bool)

(assert (=> d!1177431 e!2463776))

(declare-fun res!1610588 () Bool)

(assert (=> d!1177431 (=> (not res!1610588) (not e!2463776))))

(assert (=> d!1177431 (= res!1610588 (= (content!6445 lt!1394368) ((_ map or) (content!6445 lt!1394224) (content!6445 suffix!1299))))))

(assert (=> d!1177431 (= lt!1394368 e!2463775)))

(declare-fun c!689303 () Bool)

(assert (=> d!1177431 (= c!689303 ((_ is Nil!42482) lt!1394224))))

(assert (=> d!1177431 (= (++!11098 lt!1394224 suffix!1299) lt!1394368)))

(declare-fun b!3976476 () Bool)

(assert (=> b!3976476 (= e!2463775 (Cons!42482 (h!47902 lt!1394224) (++!11098 (t!331093 lt!1394224) suffix!1299)))))

(assert (= (and d!1177431 c!689303) b!3976475))

(assert (= (and d!1177431 (not c!689303)) b!3976476))

(assert (= (and d!1177431 res!1610588) b!3976477))

(assert (= (and b!3976477 res!1610589) b!3976478))

(declare-fun m!4547807 () Bool)

(assert (=> b!3976477 m!4547807))

(assert (=> b!3976477 m!4547769))

(assert (=> b!3976477 m!4547281))

(declare-fun m!4547809 () Bool)

(assert (=> d!1177431 m!4547809))

(assert (=> d!1177431 m!4547773))

(assert (=> d!1177431 m!4547803))

(declare-fun m!4547811 () Bool)

(assert (=> b!3976476 m!4547811))

(assert (=> b!3976114 d!1177431))

(declare-fun d!1177433 () Bool)

(assert (=> d!1177433 (= (++!11098 (++!11098 lt!1394205 lt!1394224) suffix!1299) (++!11098 lt!1394205 (++!11098 lt!1394224 suffix!1299)))))

(declare-fun lt!1394371 () Unit!61132)

(declare-fun choose!23833 (List!42606 List!42606 List!42606) Unit!61132)

(assert (=> d!1177433 (= lt!1394371 (choose!23833 lt!1394205 lt!1394224 suffix!1299))))

(assert (=> d!1177433 (= (lemmaConcatAssociativity!2418 lt!1394205 lt!1394224 suffix!1299) lt!1394371)))

(declare-fun bs!587784 () Bool)

(assert (= bs!587784 d!1177433))

(assert (=> bs!587784 m!4547319))

(declare-fun m!4547813 () Bool)

(assert (=> bs!587784 m!4547813))

(declare-fun m!4547815 () Bool)

(assert (=> bs!587784 m!4547815))

(assert (=> bs!587784 m!4547337))

(declare-fun m!4547817 () Bool)

(assert (=> bs!587784 m!4547817))

(assert (=> bs!587784 m!4547337))

(assert (=> bs!587784 m!4547319))

(assert (=> b!3976114 d!1177433))

(declare-fun b!3976497 () Bool)

(declare-fun res!1610609 () Bool)

(declare-fun e!2463784 () Bool)

(assert (=> b!3976497 (=> (not res!1610609) (not e!2463784))))

(declare-fun lt!1394386 () Option!9110)

(declare-fun get!13994 (Option!9110) tuple2!41724)

(assert (=> b!3976497 (= res!1610609 (= (++!11098 (list!15766 (charsOf!4512 (_1!23996 (get!13994 lt!1394386)))) (_2!23996 (get!13994 lt!1394386))) lt!1394229))))

(declare-fun b!3976498 () Bool)

(declare-fun e!2463785 () Option!9110)

(declare-fun call!285681 () Option!9110)

(assert (=> b!3976498 (= e!2463785 call!285681)))

(declare-fun b!3976499 () Bool)

(declare-fun res!1610606 () Bool)

(assert (=> b!3976499 (=> (not res!1610606) (not e!2463784))))

(assert (=> b!3976499 (= res!1610606 (< (size!31782 (_2!23996 (get!13994 lt!1394386))) (size!31782 lt!1394229)))))

(declare-fun b!3976501 () Bool)

(declare-fun lt!1394384 () Option!9110)

(declare-fun lt!1394385 () Option!9110)

(assert (=> b!3976501 (= e!2463785 (ite (and ((_ is None!9109) lt!1394384) ((_ is None!9109) lt!1394385)) None!9109 (ite ((_ is None!9109) lt!1394385) lt!1394384 (ite ((_ is None!9109) lt!1394384) lt!1394385 (ite (>= (size!31783 (_1!23996 (v!39457 lt!1394384))) (size!31783 (_1!23996 (v!39457 lt!1394385)))) lt!1394384 lt!1394385)))))))

(assert (=> b!3976501 (= lt!1394384 call!285681)))

(assert (=> b!3976501 (= lt!1394385 (maxPrefix!3583 thiss!21717 (t!331095 rules!2999) lt!1394229))))

(declare-fun b!3976502 () Bool)

(declare-fun contains!8459 (List!42608 Rule!13192) Bool)

(assert (=> b!3976502 (= e!2463784 (contains!8459 rules!2999 (rule!9694 (_1!23996 (get!13994 lt!1394386)))))))

(declare-fun b!3976503 () Bool)

(declare-fun e!2463783 () Bool)

(assert (=> b!3976503 (= e!2463783 e!2463784)))

(declare-fun res!1610605 () Bool)

(assert (=> b!3976503 (=> (not res!1610605) (not e!2463784))))

(declare-fun isDefined!7021 (Option!9110) Bool)

(assert (=> b!3976503 (= res!1610605 (isDefined!7021 lt!1394386))))

(declare-fun b!3976500 () Bool)

(declare-fun res!1610608 () Bool)

(assert (=> b!3976500 (=> (not res!1610608) (not e!2463784))))

(assert (=> b!3976500 (= res!1610608 (matchR!5578 (regex!6696 (rule!9694 (_1!23996 (get!13994 lt!1394386)))) (list!15766 (charsOf!4512 (_1!23996 (get!13994 lt!1394386))))))))

(declare-fun d!1177435 () Bool)

(assert (=> d!1177435 e!2463783))

(declare-fun res!1610610 () Bool)

(assert (=> d!1177435 (=> res!1610610 e!2463783)))

(declare-fun isEmpty!25409 (Option!9110) Bool)

(assert (=> d!1177435 (= res!1610610 (isEmpty!25409 lt!1394386))))

(assert (=> d!1177435 (= lt!1394386 e!2463785)))

(declare-fun c!689306 () Bool)

(assert (=> d!1177435 (= c!689306 (and ((_ is Cons!42484) rules!2999) ((_ is Nil!42484) (t!331095 rules!2999))))))

(declare-fun lt!1394383 () Unit!61132)

(declare-fun lt!1394382 () Unit!61132)

(assert (=> d!1177435 (= lt!1394383 lt!1394382)))

(assert (=> d!1177435 (isPrefix!3783 lt!1394229 lt!1394229)))

(assert (=> d!1177435 (= lt!1394382 (lemmaIsPrefixRefl!2375 lt!1394229 lt!1394229))))

(assert (=> d!1177435 (rulesValidInductive!2429 thiss!21717 rules!2999)))

(assert (=> d!1177435 (= (maxPrefix!3583 thiss!21717 rules!2999 lt!1394229) lt!1394386)))

(declare-fun bm!285676 () Bool)

(assert (=> bm!285676 (= call!285681 (maxPrefixOneRule!2617 thiss!21717 (h!47904 rules!2999) lt!1394229))))

(declare-fun b!3976504 () Bool)

(declare-fun res!1610607 () Bool)

(assert (=> b!3976504 (=> (not res!1610607) (not e!2463784))))

(assert (=> b!3976504 (= res!1610607 (= (list!15766 (charsOf!4512 (_1!23996 (get!13994 lt!1394386)))) (originalCharacters!7296 (_1!23996 (get!13994 lt!1394386)))))))

(declare-fun b!3976505 () Bool)

(declare-fun res!1610604 () Bool)

(assert (=> b!3976505 (=> (not res!1610604) (not e!2463784))))

(assert (=> b!3976505 (= res!1610604 (= (value!211470 (_1!23996 (get!13994 lt!1394386))) (apply!9907 (transformation!6696 (rule!9694 (_1!23996 (get!13994 lt!1394386)))) (seqFromList!4935 (originalCharacters!7296 (_1!23996 (get!13994 lt!1394386)))))))))

(assert (= (and d!1177435 c!689306) b!3976498))

(assert (= (and d!1177435 (not c!689306)) b!3976501))

(assert (= (or b!3976498 b!3976501) bm!285676))

(assert (= (and d!1177435 (not res!1610610)) b!3976503))

(assert (= (and b!3976503 res!1610605) b!3976504))

(assert (= (and b!3976504 res!1610607) b!3976499))

(assert (= (and b!3976499 res!1610606) b!3976497))

(assert (= (and b!3976497 res!1610609) b!3976505))

(assert (= (and b!3976505 res!1610604) b!3976500))

(assert (= (and b!3976500 res!1610608) b!3976502))

(declare-fun m!4547819 () Bool)

(assert (=> b!3976505 m!4547819))

(declare-fun m!4547821 () Bool)

(assert (=> b!3976505 m!4547821))

(assert (=> b!3976505 m!4547821))

(declare-fun m!4547823 () Bool)

(assert (=> b!3976505 m!4547823))

(assert (=> b!3976502 m!4547819))

(declare-fun m!4547825 () Bool)

(assert (=> b!3976502 m!4547825))

(declare-fun m!4547827 () Bool)

(assert (=> b!3976503 m!4547827))

(assert (=> b!3976504 m!4547819))

(declare-fun m!4547829 () Bool)

(assert (=> b!3976504 m!4547829))

(assert (=> b!3976504 m!4547829))

(declare-fun m!4547831 () Bool)

(assert (=> b!3976504 m!4547831))

(assert (=> b!3976500 m!4547819))

(assert (=> b!3976500 m!4547829))

(assert (=> b!3976500 m!4547829))

(assert (=> b!3976500 m!4547831))

(assert (=> b!3976500 m!4547831))

(declare-fun m!4547833 () Bool)

(assert (=> b!3976500 m!4547833))

(declare-fun m!4547835 () Bool)

(assert (=> b!3976501 m!4547835))

(declare-fun m!4547837 () Bool)

(assert (=> d!1177435 m!4547837))

(assert (=> d!1177435 m!4547333))

(assert (=> d!1177435 m!4547335))

(assert (=> d!1177435 m!4547273))

(assert (=> b!3976499 m!4547819))

(declare-fun m!4547839 () Bool)

(assert (=> b!3976499 m!4547839))

(assert (=> b!3976499 m!4547727))

(declare-fun m!4547841 () Bool)

(assert (=> bm!285676 m!4547841))

(assert (=> b!3976497 m!4547819))

(assert (=> b!3976497 m!4547829))

(assert (=> b!3976497 m!4547829))

(assert (=> b!3976497 m!4547831))

(assert (=> b!3976497 m!4547831))

(declare-fun m!4547843 () Bool)

(assert (=> b!3976497 m!4547843))

(assert (=> b!3976125 d!1177435))

(declare-fun lt!1394387 () List!42606)

(declare-fun e!2463787 () Bool)

(declare-fun b!3976509 () Bool)

(assert (=> b!3976509 (= e!2463787 (or (not (= suffix!1299 Nil!42482)) (= lt!1394387 prefix!494)))))

(declare-fun b!3976506 () Bool)

(declare-fun e!2463786 () List!42606)

(assert (=> b!3976506 (= e!2463786 suffix!1299)))

(declare-fun b!3976508 () Bool)

(declare-fun res!1610612 () Bool)

(assert (=> b!3976508 (=> (not res!1610612) (not e!2463787))))

(assert (=> b!3976508 (= res!1610612 (= (size!31782 lt!1394387) (+ (size!31782 prefix!494) (size!31782 suffix!1299))))))

(declare-fun d!1177437 () Bool)

(assert (=> d!1177437 e!2463787))

(declare-fun res!1610611 () Bool)

(assert (=> d!1177437 (=> (not res!1610611) (not e!2463787))))

(assert (=> d!1177437 (= res!1610611 (= (content!6445 lt!1394387) ((_ map or) (content!6445 prefix!494) (content!6445 suffix!1299))))))

(assert (=> d!1177437 (= lt!1394387 e!2463786)))

(declare-fun c!689307 () Bool)

(assert (=> d!1177437 (= c!689307 ((_ is Nil!42482) prefix!494))))

(assert (=> d!1177437 (= (++!11098 prefix!494 suffix!1299) lt!1394387)))

(declare-fun b!3976507 () Bool)

(assert (=> b!3976507 (= e!2463786 (Cons!42482 (h!47902 prefix!494) (++!11098 (t!331093 prefix!494) suffix!1299)))))

(assert (= (and d!1177437 c!689307) b!3976506))

(assert (= (and d!1177437 (not c!689307)) b!3976507))

(assert (= (and d!1177437 res!1610611) b!3976508))

(assert (= (and b!3976508 res!1610612) b!3976509))

(declare-fun m!4547845 () Bool)

(assert (=> b!3976508 m!4547845))

(assert (=> b!3976508 m!4547359))

(assert (=> b!3976508 m!4547281))

(declare-fun m!4547847 () Bool)

(assert (=> d!1177437 m!4547847))

(assert (=> d!1177437 m!4547373))

(assert (=> d!1177437 m!4547803))

(declare-fun m!4547849 () Bool)

(assert (=> b!3976507 m!4547849))

(assert (=> b!3976125 d!1177437))

(declare-fun d!1177439 () Bool)

(declare-fun res!1610615 () Bool)

(declare-fun e!2463790 () Bool)

(assert (=> d!1177439 (=> (not res!1610615) (not e!2463790))))

(declare-fun rulesValid!2610 (LexerInterface!6285 List!42608) Bool)

(assert (=> d!1177439 (= res!1610615 (rulesValid!2610 thiss!21717 rules!2999))))

(assert (=> d!1177439 (= (rulesInvariant!5628 thiss!21717 rules!2999) e!2463790)))

(declare-fun b!3976512 () Bool)

(declare-datatypes ((List!42609 0))(
  ( (Nil!42485) (Cons!42485 (h!47905 String!48348) (t!331120 List!42609)) )
))
(declare-fun noDuplicateTag!2611 (LexerInterface!6285 List!42608 List!42609) Bool)

(assert (=> b!3976512 (= e!2463790 (noDuplicateTag!2611 thiss!21717 rules!2999 Nil!42485))))

(assert (= (and d!1177439 res!1610615) b!3976512))

(declare-fun m!4547851 () Bool)

(assert (=> d!1177439 m!4547851))

(declare-fun m!4547853 () Bool)

(assert (=> b!3976512 m!4547853))

(assert (=> b!3976124 d!1177439))

(declare-fun d!1177441 () Bool)

(assert (=> d!1177441 (= (isEmpty!25406 rules!2999) ((_ is Nil!42484) rules!2999))))

(assert (=> b!3976134 d!1177441))

(declare-fun d!1177443 () Bool)

(declare-fun lt!1394390 () Int)

(assert (=> d!1177443 (>= lt!1394390 0)))

(declare-fun e!2463793 () Int)

(assert (=> d!1177443 (= lt!1394390 e!2463793)))

(declare-fun c!689310 () Bool)

(assert (=> d!1177443 (= c!689310 ((_ is Nil!42482) suffix!1299))))

(assert (=> d!1177443 (= (size!31782 suffix!1299) lt!1394390)))

(declare-fun b!3976517 () Bool)

(assert (=> b!3976517 (= e!2463793 0)))

(declare-fun b!3976518 () Bool)

(assert (=> b!3976518 (= e!2463793 (+ 1 (size!31782 (t!331093 suffix!1299))))))

(assert (= (and d!1177443 c!689310) b!3976517))

(assert (= (and d!1177443 (not c!689310)) b!3976518))

(declare-fun m!4547855 () Bool)

(assert (=> b!3976518 m!4547855))

(assert (=> b!3976113 d!1177443))

(declare-fun d!1177445 () Bool)

(declare-fun lt!1394391 () Int)

(assert (=> d!1177445 (>= lt!1394391 0)))

(declare-fun e!2463794 () Int)

(assert (=> d!1177445 (= lt!1394391 e!2463794)))

(declare-fun c!689311 () Bool)

(assert (=> d!1177445 (= c!689311 ((_ is Nil!42482) newSuffix!27))))

(assert (=> d!1177445 (= (size!31782 newSuffix!27) lt!1394391)))

(declare-fun b!3976519 () Bool)

(assert (=> b!3976519 (= e!2463794 0)))

(declare-fun b!3976520 () Bool)

(assert (=> b!3976520 (= e!2463794 (+ 1 (size!31782 (t!331093 newSuffix!27))))))

(assert (= (and d!1177445 c!689311) b!3976519))

(assert (= (and d!1177445 (not c!689311)) b!3976520))

(declare-fun m!4547857 () Bool)

(assert (=> b!3976520 m!4547857))

(assert (=> b!3976113 d!1177445))

(declare-fun d!1177447 () Bool)

(assert (=> d!1177447 (isPrefix!3783 lt!1394205 (++!11098 lt!1394205 lt!1394226))))

(declare-fun lt!1394392 () Unit!61132)

(assert (=> d!1177447 (= lt!1394392 (choose!23827 lt!1394205 lt!1394226))))

(assert (=> d!1177447 (= (lemmaConcatTwoListThenFirstIsPrefix!2626 lt!1394205 lt!1394226) lt!1394392)))

(declare-fun bs!587785 () Bool)

(assert (= bs!587785 d!1177447))

(assert (=> bs!587785 m!4547315))

(assert (=> bs!587785 m!4547315))

(declare-fun m!4547859 () Bool)

(assert (=> bs!587785 m!4547859))

(declare-fun m!4547861 () Bool)

(assert (=> bs!587785 m!4547861))

(assert (=> b!3976133 d!1177447))

(declare-fun d!1177449 () Bool)

(declare-fun fromListB!2272 (List!42606) BalanceConc!25408)

(assert (=> d!1177449 (= (seqFromList!4935 lt!1394205) (fromListB!2272 lt!1394205))))

(declare-fun bs!587786 () Bool)

(assert (= bs!587786 d!1177449))

(declare-fun m!4547863 () Bool)

(assert (=> bs!587786 m!4547863))

(assert (=> b!3976133 d!1177449))

(declare-fun d!1177451 () Bool)

(declare-fun e!2463841 () Bool)

(assert (=> d!1177451 e!2463841))

(declare-fun res!1610644 () Bool)

(assert (=> d!1177451 (=> res!1610644 e!2463841)))

(declare-fun lt!1394415 () Option!9110)

(assert (=> d!1177451 (= res!1610644 (isEmpty!25409 lt!1394415))))

(declare-fun e!2463843 () Option!9110)

(assert (=> d!1177451 (= lt!1394415 e!2463843)))

(declare-fun c!689318 () Bool)

(declare-datatypes ((tuple2!41728 0))(
  ( (tuple2!41729 (_1!23998 List!42606) (_2!23998 List!42606)) )
))
(declare-fun lt!1394413 () tuple2!41728)

(declare-fun isEmpty!25410 (List!42606) Bool)

(assert (=> d!1177451 (= c!689318 (isEmpty!25410 (_1!23998 lt!1394413)))))

(declare-fun findLongestMatch!1227 (Regex!11601 List!42606) tuple2!41728)

(assert (=> d!1177451 (= lt!1394413 (findLongestMatch!1227 (regex!6696 (rule!9694 token!484)) lt!1394229))))

(assert (=> d!1177451 (ruleValid!2628 thiss!21717 (rule!9694 token!484))))

(assert (=> d!1177451 (= (maxPrefixOneRule!2617 thiss!21717 (rule!9694 token!484) lt!1394229) lt!1394415)))

(declare-fun b!3976601 () Bool)

(assert (=> b!3976601 (= e!2463843 None!9109)))

(declare-fun b!3976602 () Bool)

(declare-fun e!2463844 () Bool)

(declare-fun findLongestMatchInner!1314 (Regex!11601 List!42606 Int List!42606 List!42606 Int) tuple2!41728)

(assert (=> b!3976602 (= e!2463844 (matchR!5578 (regex!6696 (rule!9694 token!484)) (_1!23998 (findLongestMatchInner!1314 (regex!6696 (rule!9694 token!484)) Nil!42482 (size!31782 Nil!42482) lt!1394229 lt!1394229 (size!31782 lt!1394229)))))))

(declare-fun b!3976603 () Bool)

(declare-fun res!1610648 () Bool)

(declare-fun e!2463842 () Bool)

(assert (=> b!3976603 (=> (not res!1610648) (not e!2463842))))

(assert (=> b!3976603 (= res!1610648 (= (value!211470 (_1!23996 (get!13994 lt!1394415))) (apply!9907 (transformation!6696 (rule!9694 (_1!23996 (get!13994 lt!1394415)))) (seqFromList!4935 (originalCharacters!7296 (_1!23996 (get!13994 lt!1394415)))))))))

(declare-fun b!3976604 () Bool)

(declare-fun res!1610647 () Bool)

(assert (=> b!3976604 (=> (not res!1610647) (not e!2463842))))

(assert (=> b!3976604 (= res!1610647 (= (rule!9694 (_1!23996 (get!13994 lt!1394415))) (rule!9694 token!484)))))

(declare-fun b!3976605 () Bool)

(assert (=> b!3976605 (= e!2463842 (= (size!31783 (_1!23996 (get!13994 lt!1394415))) (size!31782 (originalCharacters!7296 (_1!23996 (get!13994 lt!1394415))))))))

(declare-fun b!3976606 () Bool)

(assert (=> b!3976606 (= e!2463841 e!2463842)))

(declare-fun res!1610646 () Bool)

(assert (=> b!3976606 (=> (not res!1610646) (not e!2463842))))

(assert (=> b!3976606 (= res!1610646 (matchR!5578 (regex!6696 (rule!9694 token!484)) (list!15766 (charsOf!4512 (_1!23996 (get!13994 lt!1394415))))))))

(declare-fun b!3976607 () Bool)

(declare-fun res!1610649 () Bool)

(assert (=> b!3976607 (=> (not res!1610649) (not e!2463842))))

(assert (=> b!3976607 (= res!1610649 (= (++!11098 (list!15766 (charsOf!4512 (_1!23996 (get!13994 lt!1394415)))) (_2!23996 (get!13994 lt!1394415))) lt!1394229))))

(declare-fun b!3976608 () Bool)

(declare-fun res!1610645 () Bool)

(assert (=> b!3976608 (=> (not res!1610645) (not e!2463842))))

(assert (=> b!3976608 (= res!1610645 (< (size!31782 (_2!23996 (get!13994 lt!1394415))) (size!31782 lt!1394229)))))

(declare-fun b!3976609 () Bool)

(declare-fun size!31785 (BalanceConc!25408) Int)

(assert (=> b!3976609 (= e!2463843 (Some!9109 (tuple2!41725 (Token!12531 (apply!9907 (transformation!6696 (rule!9694 token!484)) (seqFromList!4935 (_1!23998 lt!1394413))) (rule!9694 token!484) (size!31785 (seqFromList!4935 (_1!23998 lt!1394413))) (_1!23998 lt!1394413)) (_2!23998 lt!1394413))))))

(declare-fun lt!1394414 () Unit!61132)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1287 (Regex!11601 List!42606) Unit!61132)

(assert (=> b!3976609 (= lt!1394414 (longestMatchIsAcceptedByMatchOrIsEmpty!1287 (regex!6696 (rule!9694 token!484)) lt!1394229))))

(declare-fun res!1610643 () Bool)

(assert (=> b!3976609 (= res!1610643 (isEmpty!25410 (_1!23998 (findLongestMatchInner!1314 (regex!6696 (rule!9694 token!484)) Nil!42482 (size!31782 Nil!42482) lt!1394229 lt!1394229 (size!31782 lt!1394229)))))))

(assert (=> b!3976609 (=> res!1610643 e!2463844)))

(assert (=> b!3976609 e!2463844))

(declare-fun lt!1394412 () Unit!61132)

(assert (=> b!3976609 (= lt!1394412 lt!1394414)))

(declare-fun lt!1394411 () Unit!61132)

(declare-fun lemmaSemiInverse!1824 (TokenValueInjection!13280 BalanceConc!25408) Unit!61132)

(assert (=> b!3976609 (= lt!1394411 (lemmaSemiInverse!1824 (transformation!6696 (rule!9694 token!484)) (seqFromList!4935 (_1!23998 lt!1394413))))))

(assert (= (and d!1177451 c!689318) b!3976601))

(assert (= (and d!1177451 (not c!689318)) b!3976609))

(assert (= (and b!3976609 (not res!1610643)) b!3976602))

(assert (= (and d!1177451 (not res!1610644)) b!3976606))

(assert (= (and b!3976606 res!1610646) b!3976607))

(assert (= (and b!3976607 res!1610649) b!3976608))

(assert (= (and b!3976608 res!1610645) b!3976604))

(assert (= (and b!3976604 res!1610647) b!3976603))

(assert (= (and b!3976603 res!1610648) b!3976605))

(declare-fun m!4547915 () Bool)

(assert (=> b!3976605 m!4547915))

(declare-fun m!4547917 () Bool)

(assert (=> b!3976605 m!4547917))

(assert (=> b!3976604 m!4547915))

(assert (=> b!3976607 m!4547915))

(declare-fun m!4547919 () Bool)

(assert (=> b!3976607 m!4547919))

(assert (=> b!3976607 m!4547919))

(declare-fun m!4547921 () Bool)

(assert (=> b!3976607 m!4547921))

(assert (=> b!3976607 m!4547921))

(declare-fun m!4547923 () Bool)

(assert (=> b!3976607 m!4547923))

(assert (=> b!3976608 m!4547915))

(declare-fun m!4547925 () Bool)

(assert (=> b!3976608 m!4547925))

(assert (=> b!3976608 m!4547727))

(declare-fun m!4547927 () Bool)

(assert (=> b!3976602 m!4547927))

(assert (=> b!3976602 m!4547727))

(assert (=> b!3976602 m!4547927))

(assert (=> b!3976602 m!4547727))

(declare-fun m!4547929 () Bool)

(assert (=> b!3976602 m!4547929))

(declare-fun m!4547931 () Bool)

(assert (=> b!3976602 m!4547931))

(declare-fun m!4547933 () Bool)

(assert (=> d!1177451 m!4547933))

(declare-fun m!4547935 () Bool)

(assert (=> d!1177451 m!4547935))

(declare-fun m!4547937 () Bool)

(assert (=> d!1177451 m!4547937))

(assert (=> d!1177451 m!4547349))

(assert (=> b!3976606 m!4547915))

(assert (=> b!3976606 m!4547919))

(assert (=> b!3976606 m!4547919))

(assert (=> b!3976606 m!4547921))

(assert (=> b!3976606 m!4547921))

(declare-fun m!4547939 () Bool)

(assert (=> b!3976606 m!4547939))

(assert (=> b!3976609 m!4547927))

(assert (=> b!3976609 m!4547727))

(assert (=> b!3976609 m!4547929))

(declare-fun m!4547941 () Bool)

(assert (=> b!3976609 m!4547941))

(declare-fun m!4547943 () Bool)

(assert (=> b!3976609 m!4547943))

(assert (=> b!3976609 m!4547727))

(declare-fun m!4547945 () Bool)

(assert (=> b!3976609 m!4547945))

(declare-fun m!4547947 () Bool)

(assert (=> b!3976609 m!4547947))

(assert (=> b!3976609 m!4547941))

(assert (=> b!3976609 m!4547941))

(declare-fun m!4547949 () Bool)

(assert (=> b!3976609 m!4547949))

(assert (=> b!3976609 m!4547941))

(declare-fun m!4547951 () Bool)

(assert (=> b!3976609 m!4547951))

(assert (=> b!3976609 m!4547927))

(assert (=> b!3976603 m!4547915))

(declare-fun m!4547953 () Bool)

(assert (=> b!3976603 m!4547953))

(assert (=> b!3976603 m!4547953))

(declare-fun m!4547955 () Bool)

(assert (=> b!3976603 m!4547955))

(assert (=> b!3976133 d!1177451))

(declare-fun d!1177469 () Bool)

(assert (=> d!1177469 (= (maxPrefixOneRule!2617 thiss!21717 (rule!9694 token!484) lt!1394229) (Some!9109 (tuple2!41725 (Token!12531 (apply!9907 (transformation!6696 (rule!9694 token!484)) (seqFromList!4935 lt!1394205)) (rule!9694 token!484) (size!31782 lt!1394205) lt!1394205) suffixResult!105)))))

(declare-fun lt!1394418 () Unit!61132)

(declare-fun choose!23835 (LexerInterface!6285 List!42608 List!42606 List!42606 List!42606 Rule!13192) Unit!61132)

(assert (=> d!1177469 (= lt!1394418 (choose!23835 thiss!21717 rules!2999 lt!1394205 lt!1394229 suffixResult!105 (rule!9694 token!484)))))

(assert (=> d!1177469 (not (isEmpty!25406 rules!2999))))

(assert (=> d!1177469 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1439 thiss!21717 rules!2999 lt!1394205 lt!1394229 suffixResult!105 (rule!9694 token!484)) lt!1394418)))

(declare-fun bs!587789 () Bool)

(assert (= bs!587789 d!1177469))

(assert (=> bs!587789 m!4547327))

(assert (=> bs!587789 m!4547287))

(assert (=> bs!587789 m!4547289))

(assert (=> bs!587789 m!4547287))

(assert (=> bs!587789 m!4547357))

(assert (=> bs!587789 m!4547291))

(declare-fun m!4547957 () Bool)

(assert (=> bs!587789 m!4547957))

(assert (=> b!3976133 d!1177469))

(declare-fun b!3976612 () Bool)

(declare-fun e!2463845 () Bool)

(assert (=> b!3976612 (= e!2463845 (isPrefix!3783 (tail!6203 lt!1394205) (tail!6203 lt!1394220)))))

(declare-fun d!1177471 () Bool)

(declare-fun e!2463847 () Bool)

(assert (=> d!1177471 e!2463847))

(declare-fun res!1610652 () Bool)

(assert (=> d!1177471 (=> res!1610652 e!2463847)))

(declare-fun lt!1394419 () Bool)

(assert (=> d!1177471 (= res!1610652 (not lt!1394419))))

(declare-fun e!2463846 () Bool)

(assert (=> d!1177471 (= lt!1394419 e!2463846)))

(declare-fun res!1610650 () Bool)

(assert (=> d!1177471 (=> res!1610650 e!2463846)))

(assert (=> d!1177471 (= res!1610650 ((_ is Nil!42482) lt!1394205))))

(assert (=> d!1177471 (= (isPrefix!3783 lt!1394205 lt!1394220) lt!1394419)))

(declare-fun b!3976611 () Bool)

(declare-fun res!1610651 () Bool)

(assert (=> b!3976611 (=> (not res!1610651) (not e!2463845))))

(assert (=> b!3976611 (= res!1610651 (= (head!8471 lt!1394205) (head!8471 lt!1394220)))))

(declare-fun b!3976613 () Bool)

(assert (=> b!3976613 (= e!2463847 (>= (size!31782 lt!1394220) (size!31782 lt!1394205)))))

(declare-fun b!3976610 () Bool)

(assert (=> b!3976610 (= e!2463846 e!2463845)))

(declare-fun res!1610653 () Bool)

(assert (=> b!3976610 (=> (not res!1610653) (not e!2463845))))

(assert (=> b!3976610 (= res!1610653 (not ((_ is Nil!42482) lt!1394220)))))

(assert (= (and d!1177471 (not res!1610650)) b!3976610))

(assert (= (and b!3976610 res!1610653) b!3976611))

(assert (= (and b!3976611 res!1610651) b!3976612))

(assert (= (and d!1177471 (not res!1610652)) b!3976613))

(assert (=> b!3976612 m!4547699))

(declare-fun m!4547959 () Bool)

(assert (=> b!3976612 m!4547959))

(assert (=> b!3976612 m!4547699))

(assert (=> b!3976612 m!4547959))

(declare-fun m!4547961 () Bool)

(assert (=> b!3976612 m!4547961))

(assert (=> b!3976611 m!4547705))

(declare-fun m!4547963 () Bool)

(assert (=> b!3976611 m!4547963))

(declare-fun m!4547965 () Bool)

(assert (=> b!3976613 m!4547965))

(assert (=> b!3976613 m!4547357))

(assert (=> b!3976133 d!1177471))

(declare-fun d!1177473 () Bool)

(declare-fun dynLambda!18092 (Int BalanceConc!25408) TokenValue!6926)

(assert (=> d!1177473 (= (apply!9907 (transformation!6696 (rule!9694 token!484)) (seqFromList!4935 lt!1394205)) (dynLambda!18092 (toValue!9184 (transformation!6696 (rule!9694 token!484))) (seqFromList!4935 lt!1394205)))))

(declare-fun b_lambda!116195 () Bool)

(assert (=> (not b_lambda!116195) (not d!1177473)))

(declare-fun tb!239761 () Bool)

(declare-fun t!331109 () Bool)

(assert (=> (and b!3976137 (= (toValue!9184 (transformation!6696 (h!47904 rules!2999))) (toValue!9184 (transformation!6696 (rule!9694 token!484)))) t!331109) tb!239761))

(declare-fun result!290412 () Bool)

(assert (=> tb!239761 (= result!290412 (inv!21 (dynLambda!18092 (toValue!9184 (transformation!6696 (rule!9694 token!484))) (seqFromList!4935 lt!1394205))))))

(declare-fun m!4547967 () Bool)

(assert (=> tb!239761 m!4547967))

(assert (=> d!1177473 t!331109))

(declare-fun b_and!305671 () Bool)

(assert (= b_and!305647 (and (=> t!331109 result!290412) b_and!305671)))

(declare-fun t!331111 () Bool)

(declare-fun tb!239763 () Bool)

(assert (=> (and b!3976135 (= (toValue!9184 (transformation!6696 (rule!9694 token!484))) (toValue!9184 (transformation!6696 (rule!9694 token!484)))) t!331111) tb!239763))

(declare-fun result!290416 () Bool)

(assert (= result!290416 result!290412))

(assert (=> d!1177473 t!331111))

(declare-fun b_and!305673 () Bool)

(assert (= b_and!305651 (and (=> t!331111 result!290416) b_and!305673)))

(assert (=> d!1177473 m!4547287))

(declare-fun m!4547969 () Bool)

(assert (=> d!1177473 m!4547969))

(assert (=> b!3976133 d!1177473))

(declare-fun d!1177475 () Bool)

(assert (=> d!1177475 (= lt!1394226 suffixResult!105)))

(declare-fun lt!1394420 () Unit!61132)

(assert (=> d!1177475 (= lt!1394420 (choose!23826 lt!1394205 lt!1394226 lt!1394205 suffixResult!105 lt!1394229))))

(assert (=> d!1177475 (isPrefix!3783 lt!1394205 lt!1394229)))

(assert (=> d!1177475 (= (lemmaSamePrefixThenSameSuffix!1970 lt!1394205 lt!1394226 lt!1394205 suffixResult!105 lt!1394229) lt!1394420)))

(declare-fun bs!587790 () Bool)

(assert (= bs!587790 d!1177475))

(declare-fun m!4547971 () Bool)

(assert (=> bs!587790 m!4547971))

(assert (=> bs!587790 m!4547305))

(assert (=> b!3976133 d!1177475))

(declare-fun d!1177477 () Bool)

(declare-fun res!1610658 () Bool)

(declare-fun e!2463853 () Bool)

(assert (=> d!1177477 (=> (not res!1610658) (not e!2463853))))

(assert (=> d!1177477 (= res!1610658 (not (isEmpty!25410 (originalCharacters!7296 token!484))))))

(assert (=> d!1177477 (= (inv!56759 token!484) e!2463853)))

(declare-fun b!3976620 () Bool)

(declare-fun res!1610659 () Bool)

(assert (=> b!3976620 (=> (not res!1610659) (not e!2463853))))

(declare-fun dynLambda!18093 (Int TokenValue!6926) BalanceConc!25408)

(assert (=> b!3976620 (= res!1610659 (= (originalCharacters!7296 token!484) (list!15766 (dynLambda!18093 (toChars!9043 (transformation!6696 (rule!9694 token!484))) (value!211470 token!484)))))))

(declare-fun b!3976621 () Bool)

(assert (=> b!3976621 (= e!2463853 (= (size!31783 token!484) (size!31782 (originalCharacters!7296 token!484))))))

(assert (= (and d!1177477 res!1610658) b!3976620))

(assert (= (and b!3976620 res!1610659) b!3976621))

(declare-fun b_lambda!116197 () Bool)

(assert (=> (not b_lambda!116197) (not b!3976620)))

(declare-fun t!331113 () Bool)

(declare-fun tb!239765 () Bool)

(assert (=> (and b!3976137 (= (toChars!9043 (transformation!6696 (h!47904 rules!2999))) (toChars!9043 (transformation!6696 (rule!9694 token!484)))) t!331113) tb!239765))

(declare-fun b!3976626 () Bool)

(declare-fun e!2463856 () Bool)

(declare-fun tp!1212384 () Bool)

(declare-fun inv!56763 (Conc!12907) Bool)

(assert (=> b!3976626 (= e!2463856 (and (inv!56763 (c!689244 (dynLambda!18093 (toChars!9043 (transformation!6696 (rule!9694 token!484))) (value!211470 token!484)))) tp!1212384))))

(declare-fun result!290418 () Bool)

(declare-fun inv!56764 (BalanceConc!25408) Bool)

(assert (=> tb!239765 (= result!290418 (and (inv!56764 (dynLambda!18093 (toChars!9043 (transformation!6696 (rule!9694 token!484))) (value!211470 token!484))) e!2463856))))

(assert (= tb!239765 b!3976626))

(declare-fun m!4547973 () Bool)

(assert (=> b!3976626 m!4547973))

(declare-fun m!4547975 () Bool)

(assert (=> tb!239765 m!4547975))

(assert (=> b!3976620 t!331113))

(declare-fun b_and!305675 () Bool)

(assert (= b_and!305649 (and (=> t!331113 result!290418) b_and!305675)))

(declare-fun t!331115 () Bool)

(declare-fun tb!239767 () Bool)

(assert (=> (and b!3976135 (= (toChars!9043 (transformation!6696 (rule!9694 token!484))) (toChars!9043 (transformation!6696 (rule!9694 token!484)))) t!331115) tb!239767))

(declare-fun result!290422 () Bool)

(assert (= result!290422 result!290418))

(assert (=> b!3976620 t!331115))

(declare-fun b_and!305677 () Bool)

(assert (= b_and!305653 (and (=> t!331115 result!290422) b_and!305677)))

(declare-fun m!4547977 () Bool)

(assert (=> d!1177477 m!4547977))

(declare-fun m!4547979 () Bool)

(assert (=> b!3976620 m!4547979))

(assert (=> b!3976620 m!4547979))

(declare-fun m!4547981 () Bool)

(assert (=> b!3976620 m!4547981))

(assert (=> b!3976621 m!4547365))

(assert (=> start!374228 d!1177477))

(declare-fun d!1177479 () Bool)

(declare-fun lt!1394421 () Int)

(assert (=> d!1177479 (>= lt!1394421 0)))

(declare-fun e!2463857 () Int)

(assert (=> d!1177479 (= lt!1394421 e!2463857)))

(declare-fun c!689319 () Bool)

(assert (=> d!1177479 (= c!689319 ((_ is Nil!42482) (originalCharacters!7296 token!484)))))

(assert (=> d!1177479 (= (size!31782 (originalCharacters!7296 token!484)) lt!1394421)))

(declare-fun b!3976627 () Bool)

(assert (=> b!3976627 (= e!2463857 0)))

(declare-fun b!3976628 () Bool)

(assert (=> b!3976628 (= e!2463857 (+ 1 (size!31782 (t!331093 (originalCharacters!7296 token!484)))))))

(assert (= (and d!1177479 c!689319) b!3976627))

(assert (= (and d!1177479 (not c!689319)) b!3976628))

(declare-fun m!4547983 () Bool)

(assert (=> b!3976628 m!4547983))

(assert (=> b!3976121 d!1177479))

(declare-fun b!3976657 () Bool)

(declare-fun res!1610676 () Bool)

(declare-fun e!2463875 () Bool)

(assert (=> b!3976657 (=> res!1610676 e!2463875)))

(assert (=> b!3976657 (= res!1610676 (not ((_ is ElementMatch!11601) (regex!6696 (rule!9694 token!484)))))))

(declare-fun e!2463877 () Bool)

(assert (=> b!3976657 (= e!2463877 e!2463875)))

(declare-fun b!3976658 () Bool)

(declare-fun res!1610682 () Bool)

(declare-fun e!2463872 () Bool)

(assert (=> b!3976658 (=> res!1610682 e!2463872)))

(assert (=> b!3976658 (= res!1610682 (not (isEmpty!25410 (tail!6203 lt!1394205))))))

(declare-fun b!3976659 () Bool)

(declare-fun e!2463873 () Bool)

(assert (=> b!3976659 (= e!2463873 (= (head!8471 lt!1394205) (c!689245 (regex!6696 (rule!9694 token!484)))))))

(declare-fun bm!285679 () Bool)

(declare-fun call!285684 () Bool)

(assert (=> bm!285679 (= call!285684 (isEmpty!25410 lt!1394205))))

(declare-fun b!3976661 () Bool)

(declare-fun res!1610677 () Bool)

(assert (=> b!3976661 (=> res!1610677 e!2463875)))

(assert (=> b!3976661 (= res!1610677 e!2463873)))

(declare-fun res!1610681 () Bool)

(assert (=> b!3976661 (=> (not res!1610681) (not e!2463873))))

(declare-fun lt!1394424 () Bool)

(assert (=> b!3976661 (= res!1610681 lt!1394424)))

(declare-fun b!3976662 () Bool)

(declare-fun e!2463878 () Bool)

(assert (=> b!3976662 (= e!2463878 (= lt!1394424 call!285684))))

(declare-fun b!3976663 () Bool)

(declare-fun res!1610683 () Bool)

(assert (=> b!3976663 (=> (not res!1610683) (not e!2463873))))

(assert (=> b!3976663 (= res!1610683 (isEmpty!25410 (tail!6203 lt!1394205)))))

(declare-fun b!3976664 () Bool)

(declare-fun e!2463876 () Bool)

(assert (=> b!3976664 (= e!2463875 e!2463876)))

(declare-fun res!1610678 () Bool)

(assert (=> b!3976664 (=> (not res!1610678) (not e!2463876))))

(assert (=> b!3976664 (= res!1610678 (not lt!1394424))))

(declare-fun b!3976665 () Bool)

(declare-fun e!2463874 () Bool)

(declare-fun nullable!4070 (Regex!11601) Bool)

(assert (=> b!3976665 (= e!2463874 (nullable!4070 (regex!6696 (rule!9694 token!484))))))

(declare-fun b!3976666 () Bool)

(declare-fun res!1610680 () Bool)

(assert (=> b!3976666 (=> (not res!1610680) (not e!2463873))))

(assert (=> b!3976666 (= res!1610680 (not call!285684))))

(declare-fun b!3976667 () Bool)

(assert (=> b!3976667 (= e!2463878 e!2463877)))

(declare-fun c!689328 () Bool)

(assert (=> b!3976667 (= c!689328 ((_ is EmptyLang!11601) (regex!6696 (rule!9694 token!484))))))

(declare-fun b!3976668 () Bool)

(assert (=> b!3976668 (= e!2463877 (not lt!1394424))))

(declare-fun d!1177481 () Bool)

(assert (=> d!1177481 e!2463878))

(declare-fun c!689326 () Bool)

(assert (=> d!1177481 (= c!689326 ((_ is EmptyExpr!11601) (regex!6696 (rule!9694 token!484))))))

(assert (=> d!1177481 (= lt!1394424 e!2463874)))

(declare-fun c!689327 () Bool)

(assert (=> d!1177481 (= c!689327 (isEmpty!25410 lt!1394205))))

(declare-fun validRegex!5270 (Regex!11601) Bool)

(assert (=> d!1177481 (validRegex!5270 (regex!6696 (rule!9694 token!484)))))

(assert (=> d!1177481 (= (matchR!5578 (regex!6696 (rule!9694 token!484)) lt!1394205) lt!1394424)))

(declare-fun b!3976660 () Bool)

(declare-fun derivativeStep!3481 (Regex!11601 C!23388) Regex!11601)

(assert (=> b!3976660 (= e!2463874 (matchR!5578 (derivativeStep!3481 (regex!6696 (rule!9694 token!484)) (head!8471 lt!1394205)) (tail!6203 lt!1394205)))))

(declare-fun b!3976669 () Bool)

(assert (=> b!3976669 (= e!2463872 (not (= (head!8471 lt!1394205) (c!689245 (regex!6696 (rule!9694 token!484))))))))

(declare-fun b!3976670 () Bool)

(assert (=> b!3976670 (= e!2463876 e!2463872)))

(declare-fun res!1610679 () Bool)

(assert (=> b!3976670 (=> res!1610679 e!2463872)))

(assert (=> b!3976670 (= res!1610679 call!285684)))

(assert (= (and d!1177481 c!689327) b!3976665))

(assert (= (and d!1177481 (not c!689327)) b!3976660))

(assert (= (and d!1177481 c!689326) b!3976662))

(assert (= (and d!1177481 (not c!689326)) b!3976667))

(assert (= (and b!3976667 c!689328) b!3976668))

(assert (= (and b!3976667 (not c!689328)) b!3976657))

(assert (= (and b!3976657 (not res!1610676)) b!3976661))

(assert (= (and b!3976661 res!1610681) b!3976666))

(assert (= (and b!3976666 res!1610680) b!3976663))

(assert (= (and b!3976663 res!1610683) b!3976659))

(assert (= (and b!3976661 (not res!1610677)) b!3976664))

(assert (= (and b!3976664 res!1610678) b!3976670))

(assert (= (and b!3976670 (not res!1610679)) b!3976658))

(assert (= (and b!3976658 (not res!1610682)) b!3976669))

(assert (= (or b!3976662 b!3976666 b!3976670) bm!285679))

(declare-fun m!4547985 () Bool)

(assert (=> d!1177481 m!4547985))

(declare-fun m!4547987 () Bool)

(assert (=> d!1177481 m!4547987))

(assert (=> b!3976669 m!4547705))

(assert (=> b!3976658 m!4547699))

(assert (=> b!3976658 m!4547699))

(declare-fun m!4547989 () Bool)

(assert (=> b!3976658 m!4547989))

(assert (=> b!3976663 m!4547699))

(assert (=> b!3976663 m!4547699))

(assert (=> b!3976663 m!4547989))

(declare-fun m!4547991 () Bool)

(assert (=> b!3976665 m!4547991))

(assert (=> b!3976660 m!4547705))

(assert (=> b!3976660 m!4547705))

(declare-fun m!4547993 () Bool)

(assert (=> b!3976660 m!4547993))

(assert (=> b!3976660 m!4547699))

(assert (=> b!3976660 m!4547993))

(assert (=> b!3976660 m!4547699))

(declare-fun m!4547995 () Bool)

(assert (=> b!3976660 m!4547995))

(assert (=> b!3976659 m!4547705))

(assert (=> bm!285679 m!4547985))

(assert (=> b!3976120 d!1177481))

(declare-fun b!3976673 () Bool)

(declare-fun e!2463879 () Bool)

(assert (=> b!3976673 (= e!2463879 (isPrefix!3783 (tail!6203 lt!1394205) (tail!6203 lt!1394232)))))

(declare-fun d!1177483 () Bool)

(declare-fun e!2463881 () Bool)

(assert (=> d!1177483 e!2463881))

(declare-fun res!1610686 () Bool)

(assert (=> d!1177483 (=> res!1610686 e!2463881)))

(declare-fun lt!1394425 () Bool)

(assert (=> d!1177483 (= res!1610686 (not lt!1394425))))

(declare-fun e!2463880 () Bool)

(assert (=> d!1177483 (= lt!1394425 e!2463880)))

(declare-fun res!1610684 () Bool)

(assert (=> d!1177483 (=> res!1610684 e!2463880)))

(assert (=> d!1177483 (= res!1610684 ((_ is Nil!42482) lt!1394205))))

(assert (=> d!1177483 (= (isPrefix!3783 lt!1394205 lt!1394232) lt!1394425)))

(declare-fun b!3976672 () Bool)

(declare-fun res!1610685 () Bool)

(assert (=> b!3976672 (=> (not res!1610685) (not e!2463879))))

(assert (=> b!3976672 (= res!1610685 (= (head!8471 lt!1394205) (head!8471 lt!1394232)))))

(declare-fun b!3976674 () Bool)

(assert (=> b!3976674 (= e!2463881 (>= (size!31782 lt!1394232) (size!31782 lt!1394205)))))

(declare-fun b!3976671 () Bool)

(assert (=> b!3976671 (= e!2463880 e!2463879)))

(declare-fun res!1610687 () Bool)

(assert (=> b!3976671 (=> (not res!1610687) (not e!2463879))))

(assert (=> b!3976671 (= res!1610687 (not ((_ is Nil!42482) lt!1394232)))))

(assert (= (and d!1177483 (not res!1610684)) b!3976671))

(assert (= (and b!3976671 res!1610687) b!3976672))

(assert (= (and b!3976672 res!1610685) b!3976673))

(assert (= (and d!1177483 (not res!1610686)) b!3976674))

(assert (=> b!3976673 m!4547699))

(declare-fun m!4547997 () Bool)

(assert (=> b!3976673 m!4547997))

(assert (=> b!3976673 m!4547699))

(assert (=> b!3976673 m!4547997))

(declare-fun m!4547999 () Bool)

(assert (=> b!3976673 m!4547999))

(assert (=> b!3976672 m!4547705))

(declare-fun m!4548001 () Bool)

(assert (=> b!3976672 m!4548001))

(declare-fun m!4548003 () Bool)

(assert (=> b!3976674 m!4548003))

(assert (=> b!3976674 m!4547357))

(assert (=> b!3976120 d!1177483))

(declare-fun d!1177485 () Bool)

(assert (=> d!1177485 (isPrefix!3783 lt!1394205 (++!11098 prefix!494 newSuffix!27))))

(declare-fun lt!1394428 () Unit!61132)

(declare-fun choose!23836 (List!42606 List!42606 List!42606) Unit!61132)

(assert (=> d!1177485 (= lt!1394428 (choose!23836 lt!1394205 prefix!494 newSuffix!27))))

(assert (=> d!1177485 (isPrefix!3783 lt!1394205 prefix!494)))

(assert (=> d!1177485 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!616 lt!1394205 prefix!494 newSuffix!27) lt!1394428)))

(declare-fun bs!587791 () Bool)

(assert (= bs!587791 d!1177485))

(assert (=> bs!587791 m!4547257))

(assert (=> bs!587791 m!4547257))

(declare-fun m!4548005 () Bool)

(assert (=> bs!587791 m!4548005))

(declare-fun m!4548007 () Bool)

(assert (=> bs!587791 m!4548007))

(assert (=> bs!587791 m!4547341))

(assert (=> b!3976120 d!1177485))

(declare-fun d!1177487 () Bool)

(assert (=> d!1177487 (isPrefix!3783 lt!1394205 (++!11098 prefix!494 suffix!1299))))

(declare-fun lt!1394429 () Unit!61132)

(assert (=> d!1177487 (= lt!1394429 (choose!23836 lt!1394205 prefix!494 suffix!1299))))

(assert (=> d!1177487 (isPrefix!3783 lt!1394205 prefix!494)))

(assert (=> d!1177487 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!616 lt!1394205 prefix!494 suffix!1299) lt!1394429)))

(declare-fun bs!587792 () Bool)

(assert (= bs!587792 d!1177487))

(assert (=> bs!587792 m!4547325))

(assert (=> bs!587792 m!4547325))

(declare-fun m!4548009 () Bool)

(assert (=> bs!587792 m!4548009))

(declare-fun m!4548011 () Bool)

(assert (=> bs!587792 m!4548011))

(assert (=> bs!587792 m!4547341))

(assert (=> b!3976120 d!1177487))

(declare-fun d!1177489 () Bool)

(declare-fun lt!1394430 () Int)

(assert (=> d!1177489 (>= lt!1394430 0)))

(declare-fun e!2463882 () Int)

(assert (=> d!1177489 (= lt!1394430 e!2463882)))

(declare-fun c!689329 () Bool)

(assert (=> d!1177489 (= c!689329 ((_ is Nil!42482) lt!1394205))))

(assert (=> d!1177489 (= (size!31782 lt!1394205) lt!1394430)))

(declare-fun b!3976675 () Bool)

(assert (=> b!3976675 (= e!2463882 0)))

(declare-fun b!3976676 () Bool)

(assert (=> b!3976676 (= e!2463882 (+ 1 (size!31782 (t!331093 lt!1394205))))))

(assert (= (and d!1177489 c!689329) b!3976675))

(assert (= (and d!1177489 (not c!689329)) b!3976676))

(declare-fun m!4548013 () Bool)

(assert (=> b!3976676 m!4548013))

(assert (=> b!3976131 d!1177489))

(declare-fun d!1177491 () Bool)

(declare-fun lt!1394431 () Int)

(assert (=> d!1177491 (>= lt!1394431 0)))

(declare-fun e!2463883 () Int)

(assert (=> d!1177491 (= lt!1394431 e!2463883)))

(declare-fun c!689330 () Bool)

(assert (=> d!1177491 (= c!689330 ((_ is Nil!42482) prefix!494))))

(assert (=> d!1177491 (= (size!31782 prefix!494) lt!1394431)))

(declare-fun b!3976677 () Bool)

(assert (=> b!3976677 (= e!2463883 0)))

(declare-fun b!3976678 () Bool)

(assert (=> b!3976678 (= e!2463883 (+ 1 (size!31782 (t!331093 prefix!494))))))

(assert (= (and d!1177491 c!689330) b!3976677))

(assert (= (and d!1177491 (not c!689330)) b!3976678))

(declare-fun m!4548015 () Bool)

(assert (=> b!3976678 m!4548015))

(assert (=> b!3976131 d!1177491))

(declare-fun d!1177493 () Bool)

(declare-fun list!15768 (Conc!12907) List!42606)

(assert (=> d!1177493 (= (list!15766 (charsOf!4512 token!484)) (list!15768 (c!689244 (charsOf!4512 token!484))))))

(declare-fun bs!587793 () Bool)

(assert (= bs!587793 d!1177493))

(declare-fun m!4548017 () Bool)

(assert (=> bs!587793 m!4548017))

(assert (=> b!3976131 d!1177493))

(declare-fun d!1177495 () Bool)

(declare-fun lt!1394434 () BalanceConc!25408)

(assert (=> d!1177495 (= (list!15766 lt!1394434) (originalCharacters!7296 token!484))))

(assert (=> d!1177495 (= lt!1394434 (dynLambda!18093 (toChars!9043 (transformation!6696 (rule!9694 token!484))) (value!211470 token!484)))))

(assert (=> d!1177495 (= (charsOf!4512 token!484) lt!1394434)))

(declare-fun b_lambda!116199 () Bool)

(assert (=> (not b_lambda!116199) (not d!1177495)))

(assert (=> d!1177495 t!331113))

(declare-fun b_and!305679 () Bool)

(assert (= b_and!305675 (and (=> t!331113 result!290418) b_and!305679)))

(assert (=> d!1177495 t!331115))

(declare-fun b_and!305681 () Bool)

(assert (= b_and!305677 (and (=> t!331115 result!290422) b_and!305681)))

(declare-fun m!4548019 () Bool)

(assert (=> d!1177495 m!4548019))

(assert (=> d!1177495 m!4547979))

(assert (=> b!3976131 d!1177495))

(declare-fun b!3976682 () Bool)

(declare-fun e!2463885 () Bool)

(declare-fun lt!1394435 () List!42606)

(assert (=> b!3976682 (= e!2463885 (or (not (= suffixResult!105 Nil!42482)) (= lt!1394435 lt!1394205)))))

(declare-fun b!3976679 () Bool)

(declare-fun e!2463884 () List!42606)

(assert (=> b!3976679 (= e!2463884 suffixResult!105)))

(declare-fun b!3976681 () Bool)

(declare-fun res!1610689 () Bool)

(assert (=> b!3976681 (=> (not res!1610689) (not e!2463885))))

(assert (=> b!3976681 (= res!1610689 (= (size!31782 lt!1394435) (+ (size!31782 lt!1394205) (size!31782 suffixResult!105))))))

(declare-fun d!1177497 () Bool)

(assert (=> d!1177497 e!2463885))

(declare-fun res!1610688 () Bool)

(assert (=> d!1177497 (=> (not res!1610688) (not e!2463885))))

(assert (=> d!1177497 (= res!1610688 (= (content!6445 lt!1394435) ((_ map or) (content!6445 lt!1394205) (content!6445 suffixResult!105))))))

(assert (=> d!1177497 (= lt!1394435 e!2463884)))

(declare-fun c!689331 () Bool)

(assert (=> d!1177497 (= c!689331 ((_ is Nil!42482) lt!1394205))))

(assert (=> d!1177497 (= (++!11098 lt!1394205 suffixResult!105) lt!1394435)))

(declare-fun b!3976680 () Bool)

(assert (=> b!3976680 (= e!2463884 (Cons!42482 (h!47902 lt!1394205) (++!11098 (t!331093 lt!1394205) suffixResult!105)))))

(assert (= (and d!1177497 c!689331) b!3976679))

(assert (= (and d!1177497 (not c!689331)) b!3976680))

(assert (= (and d!1177497 res!1610688) b!3976681))

(assert (= (and b!3976681 res!1610689) b!3976682))

(declare-fun m!4548021 () Bool)

(assert (=> b!3976681 m!4548021))

(assert (=> b!3976681 m!4547357))

(declare-fun m!4548023 () Bool)

(assert (=> b!3976681 m!4548023))

(declare-fun m!4548025 () Bool)

(assert (=> d!1177497 m!4548025))

(assert (=> d!1177497 m!4547385))

(declare-fun m!4548027 () Bool)

(assert (=> d!1177497 m!4548027))

(declare-fun m!4548029 () Bool)

(assert (=> b!3976680 m!4548029))

(assert (=> b!3976140 d!1177497))

(declare-fun d!1177499 () Bool)

(declare-fun e!2463888 () Bool)

(assert (=> d!1177499 e!2463888))

(declare-fun res!1610692 () Bool)

(assert (=> d!1177499 (=> (not res!1610692) (not e!2463888))))

(assert (=> d!1177499 (= res!1610692 (semiInverseModEq!2876 (toChars!9043 (transformation!6696 (rule!9694 token!484))) (toValue!9184 (transformation!6696 (rule!9694 token!484)))))))

(declare-fun Unit!61136 () Unit!61132)

(assert (=> d!1177499 (= (lemmaInv!911 (transformation!6696 (rule!9694 token!484))) Unit!61136)))

(declare-fun b!3976685 () Bool)

(assert (=> b!3976685 (= e!2463888 (equivClasses!2775 (toChars!9043 (transformation!6696 (rule!9694 token!484))) (toValue!9184 (transformation!6696 (rule!9694 token!484)))))))

(assert (= (and d!1177499 res!1610692) b!3976685))

(assert (=> d!1177499 m!4547399))

(assert (=> b!3976685 m!4547409))

(assert (=> b!3976140 d!1177499))

(declare-fun d!1177501 () Bool)

(declare-fun res!1610697 () Bool)

(declare-fun e!2463891 () Bool)

(assert (=> d!1177501 (=> (not res!1610697) (not e!2463891))))

(assert (=> d!1177501 (= res!1610697 (validRegex!5270 (regex!6696 (rule!9694 token!484))))))

(assert (=> d!1177501 (= (ruleValid!2628 thiss!21717 (rule!9694 token!484)) e!2463891)))

(declare-fun b!3976690 () Bool)

(declare-fun res!1610698 () Bool)

(assert (=> b!3976690 (=> (not res!1610698) (not e!2463891))))

(assert (=> b!3976690 (= res!1610698 (not (nullable!4070 (regex!6696 (rule!9694 token!484)))))))

(declare-fun b!3976691 () Bool)

(assert (=> b!3976691 (= e!2463891 (not (= (tag!7556 (rule!9694 token!484)) (String!48349 ""))))))

(assert (= (and d!1177501 res!1610697) b!3976690))

(assert (= (and b!3976690 res!1610698) b!3976691))

(assert (=> d!1177501 m!4547987))

(assert (=> b!3976690 m!4547991))

(assert (=> b!3976140 d!1177501))

(declare-fun d!1177503 () Bool)

(assert (=> d!1177503 (ruleValid!2628 thiss!21717 (rule!9694 token!484))))

(declare-fun lt!1394438 () Unit!61132)

(declare-fun choose!23837 (LexerInterface!6285 Rule!13192 List!42608) Unit!61132)

(assert (=> d!1177503 (= lt!1394438 (choose!23837 thiss!21717 (rule!9694 token!484) rules!2999))))

(assert (=> d!1177503 (contains!8459 rules!2999 (rule!9694 token!484))))

(assert (=> d!1177503 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1702 thiss!21717 (rule!9694 token!484) rules!2999) lt!1394438)))

(declare-fun bs!587794 () Bool)

(assert (= bs!587794 d!1177503))

(assert (=> bs!587794 m!4547349))

(declare-fun m!4548031 () Bool)

(assert (=> bs!587794 m!4548031))

(declare-fun m!4548033 () Bool)

(assert (=> bs!587794 m!4548033))

(assert (=> b!3976140 d!1177503))

(declare-fun b!3976694 () Bool)

(declare-fun e!2463892 () Bool)

(assert (=> b!3976694 (= e!2463892 (isPrefix!3783 (tail!6203 newSuffix!27) (tail!6203 suffix!1299)))))

(declare-fun d!1177505 () Bool)

(declare-fun e!2463894 () Bool)

(assert (=> d!1177505 e!2463894))

(declare-fun res!1610701 () Bool)

(assert (=> d!1177505 (=> res!1610701 e!2463894)))

(declare-fun lt!1394439 () Bool)

(assert (=> d!1177505 (= res!1610701 (not lt!1394439))))

(declare-fun e!2463893 () Bool)

(assert (=> d!1177505 (= lt!1394439 e!2463893)))

(declare-fun res!1610699 () Bool)

(assert (=> d!1177505 (=> res!1610699 e!2463893)))

(assert (=> d!1177505 (= res!1610699 ((_ is Nil!42482) newSuffix!27))))

(assert (=> d!1177505 (= (isPrefix!3783 newSuffix!27 suffix!1299) lt!1394439)))

(declare-fun b!3976693 () Bool)

(declare-fun res!1610700 () Bool)

(assert (=> b!3976693 (=> (not res!1610700) (not e!2463892))))

(assert (=> b!3976693 (= res!1610700 (= (head!8471 newSuffix!27) (head!8471 suffix!1299)))))

(declare-fun b!3976695 () Bool)

(assert (=> b!3976695 (= e!2463894 (>= (size!31782 suffix!1299) (size!31782 newSuffix!27)))))

(declare-fun b!3976692 () Bool)

(assert (=> b!3976692 (= e!2463893 e!2463892)))

(declare-fun res!1610702 () Bool)

(assert (=> b!3976692 (=> (not res!1610702) (not e!2463892))))

(assert (=> b!3976692 (= res!1610702 (not ((_ is Nil!42482) suffix!1299)))))

(assert (= (and d!1177505 (not res!1610699)) b!3976692))

(assert (= (and b!3976692 res!1610702) b!3976693))

(assert (= (and b!3976693 res!1610700) b!3976694))

(assert (= (and d!1177505 (not res!1610701)) b!3976695))

(declare-fun m!4548035 () Bool)

(assert (=> b!3976694 m!4548035))

(declare-fun m!4548037 () Bool)

(assert (=> b!3976694 m!4548037))

(assert (=> b!3976694 m!4548035))

(assert (=> b!3976694 m!4548037))

(declare-fun m!4548039 () Bool)

(assert (=> b!3976694 m!4548039))

(declare-fun m!4548041 () Bool)

(assert (=> b!3976693 m!4548041))

(declare-fun m!4548043 () Bool)

(assert (=> b!3976693 m!4548043))

(assert (=> b!3976695 m!4547281))

(assert (=> b!3976695 m!4547283))

(assert (=> b!3976119 d!1177505))

(declare-fun b!3976700 () Bool)

(declare-fun e!2463897 () Bool)

(declare-fun tp!1212387 () Bool)

(assert (=> b!3976700 (= e!2463897 (and tp_is_empty!20173 tp!1212387))))

(assert (=> b!3976112 (= tp!1212328 e!2463897)))

(assert (= (and b!3976112 ((_ is Cons!42482) (t!331093 suffixResult!105))) b!3976700))

(declare-fun b!3976701 () Bool)

(declare-fun e!2463898 () Bool)

(declare-fun tp!1212388 () Bool)

(assert (=> b!3976701 (= e!2463898 (and tp_is_empty!20173 tp!1212388))))

(assert (=> b!3976128 (= tp!1212327 e!2463898)))

(assert (= (and b!3976128 ((_ is Cons!42482) (originalCharacters!7296 token!484))) b!3976701))

(declare-fun e!2463901 () Bool)

(assert (=> b!3976139 (= tp!1212335 e!2463901)))

(declare-fun b!3976713 () Bool)

(declare-fun tp!1212399 () Bool)

(declare-fun tp!1212403 () Bool)

(assert (=> b!3976713 (= e!2463901 (and tp!1212399 tp!1212403))))

(declare-fun b!3976714 () Bool)

(declare-fun tp!1212400 () Bool)

(assert (=> b!3976714 (= e!2463901 tp!1212400)))

(declare-fun b!3976712 () Bool)

(assert (=> b!3976712 (= e!2463901 tp_is_empty!20173)))

(declare-fun b!3976715 () Bool)

(declare-fun tp!1212402 () Bool)

(declare-fun tp!1212401 () Bool)

(assert (=> b!3976715 (= e!2463901 (and tp!1212402 tp!1212401))))

(assert (= (and b!3976139 ((_ is ElementMatch!11601) (regex!6696 (rule!9694 token!484)))) b!3976712))

(assert (= (and b!3976139 ((_ is Concat!18528) (regex!6696 (rule!9694 token!484)))) b!3976713))

(assert (= (and b!3976139 ((_ is Star!11601) (regex!6696 (rule!9694 token!484)))) b!3976714))

(assert (= (and b!3976139 ((_ is Union!11601) (regex!6696 (rule!9694 token!484)))) b!3976715))

(declare-fun b!3976716 () Bool)

(declare-fun e!2463902 () Bool)

(declare-fun tp!1212404 () Bool)

(assert (=> b!3976716 (= e!2463902 (and tp_is_empty!20173 tp!1212404))))

(assert (=> b!3976123 (= tp!1212330 e!2463902)))

(assert (= (and b!3976123 ((_ is Cons!42482) (t!331093 newSuffixResult!27))) b!3976716))

(declare-fun b!3976717 () Bool)

(declare-fun e!2463903 () Bool)

(declare-fun tp!1212405 () Bool)

(assert (=> b!3976717 (= e!2463903 (and tp_is_empty!20173 tp!1212405))))

(assert (=> b!3976117 (= tp!1212326 e!2463903)))

(assert (= (and b!3976117 ((_ is Cons!42482) (t!331093 prefix!494))) b!3976717))

(declare-fun b!3976728 () Bool)

(declare-fun b_free!110293 () Bool)

(declare-fun b_next!110997 () Bool)

(assert (=> b!3976728 (= b_free!110293 (not b_next!110997))))

(declare-fun tb!239769 () Bool)

(declare-fun t!331117 () Bool)

(assert (=> (and b!3976728 (= (toValue!9184 (transformation!6696 (h!47904 (t!331095 rules!2999)))) (toValue!9184 (transformation!6696 (rule!9694 token!484)))) t!331117) tb!239769))

(declare-fun result!290430 () Bool)

(assert (= result!290430 result!290412))

(assert (=> d!1177473 t!331117))

(declare-fun tp!1212417 () Bool)

(declare-fun b_and!305683 () Bool)

(assert (=> b!3976728 (= tp!1212417 (and (=> t!331117 result!290430) b_and!305683))))

(declare-fun b_free!110295 () Bool)

(declare-fun b_next!110999 () Bool)

(assert (=> b!3976728 (= b_free!110295 (not b_next!110999))))

(declare-fun tb!239771 () Bool)

(declare-fun t!331119 () Bool)

(assert (=> (and b!3976728 (= (toChars!9043 (transformation!6696 (h!47904 (t!331095 rules!2999)))) (toChars!9043 (transformation!6696 (rule!9694 token!484)))) t!331119) tb!239771))

(declare-fun result!290432 () Bool)

(assert (= result!290432 result!290418))

(assert (=> b!3976620 t!331119))

(assert (=> d!1177495 t!331119))

(declare-fun tp!1212416 () Bool)

(declare-fun b_and!305685 () Bool)

(assert (=> b!3976728 (= tp!1212416 (and (=> t!331119 result!290432) b_and!305685))))

(declare-fun e!2463912 () Bool)

(assert (=> b!3976728 (= e!2463912 (and tp!1212417 tp!1212416))))

(declare-fun tp!1212415 () Bool)

(declare-fun e!2463913 () Bool)

(declare-fun b!3976727 () Bool)

(assert (=> b!3976727 (= e!2463913 (and tp!1212415 (inv!56756 (tag!7556 (h!47904 (t!331095 rules!2999)))) (inv!56760 (transformation!6696 (h!47904 (t!331095 rules!2999)))) e!2463912))))

(declare-fun b!3976726 () Bool)

(declare-fun e!2463915 () Bool)

(declare-fun tp!1212414 () Bool)

(assert (=> b!3976726 (= e!2463915 (and e!2463913 tp!1212414))))

(assert (=> b!3976132 (= tp!1212334 e!2463915)))

(assert (= b!3976727 b!3976728))

(assert (= b!3976726 b!3976727))

(assert (= (and b!3976132 ((_ is Cons!42484) (t!331095 rules!2999))) b!3976726))

(declare-fun m!4548045 () Bool)

(assert (=> b!3976727 m!4548045))

(declare-fun m!4548047 () Bool)

(assert (=> b!3976727 m!4548047))

(declare-fun b!3976729 () Bool)

(declare-fun e!2463916 () Bool)

(declare-fun tp!1212418 () Bool)

(assert (=> b!3976729 (= e!2463916 (and tp_is_empty!20173 tp!1212418))))

(assert (=> b!3976127 (= tp!1212331 e!2463916)))

(assert (= (and b!3976127 ((_ is Cons!42482) (t!331093 suffix!1299))) b!3976729))

(declare-fun e!2463917 () Bool)

(assert (=> b!3976136 (= tp!1212332 e!2463917)))

(declare-fun b!3976731 () Bool)

(declare-fun tp!1212419 () Bool)

(declare-fun tp!1212423 () Bool)

(assert (=> b!3976731 (= e!2463917 (and tp!1212419 tp!1212423))))

(declare-fun b!3976732 () Bool)

(declare-fun tp!1212420 () Bool)

(assert (=> b!3976732 (= e!2463917 tp!1212420)))

(declare-fun b!3976730 () Bool)

(assert (=> b!3976730 (= e!2463917 tp_is_empty!20173)))

(declare-fun b!3976733 () Bool)

(declare-fun tp!1212422 () Bool)

(declare-fun tp!1212421 () Bool)

(assert (=> b!3976733 (= e!2463917 (and tp!1212422 tp!1212421))))

(assert (= (and b!3976136 ((_ is ElementMatch!11601) (regex!6696 (h!47904 rules!2999)))) b!3976730))

(assert (= (and b!3976136 ((_ is Concat!18528) (regex!6696 (h!47904 rules!2999)))) b!3976731))

(assert (= (and b!3976136 ((_ is Star!11601) (regex!6696 (h!47904 rules!2999)))) b!3976732))

(assert (= (and b!3976136 ((_ is Union!11601) (regex!6696 (h!47904 rules!2999)))) b!3976733))

(declare-fun b!3976734 () Bool)

(declare-fun e!2463918 () Bool)

(declare-fun tp!1212424 () Bool)

(assert (=> b!3976734 (= e!2463918 (and tp_is_empty!20173 tp!1212424))))

(assert (=> b!3976130 (= tp!1212333 e!2463918)))

(assert (= (and b!3976130 ((_ is Cons!42482) (t!331093 newSuffix!27))) b!3976734))

(declare-fun b_lambda!116201 () Bool)

(assert (= b_lambda!116199 (or (and b!3976137 b_free!110283 (= (toChars!9043 (transformation!6696 (h!47904 rules!2999))) (toChars!9043 (transformation!6696 (rule!9694 token!484))))) (and b!3976135 b_free!110287) (and b!3976728 b_free!110295 (= (toChars!9043 (transformation!6696 (h!47904 (t!331095 rules!2999)))) (toChars!9043 (transformation!6696 (rule!9694 token!484))))) b_lambda!116201)))

(declare-fun b_lambda!116203 () Bool)

(assert (= b_lambda!116195 (or (and b!3976137 b_free!110281 (= (toValue!9184 (transformation!6696 (h!47904 rules!2999))) (toValue!9184 (transformation!6696 (rule!9694 token!484))))) (and b!3976135 b_free!110285) (and b!3976728 b_free!110293 (= (toValue!9184 (transformation!6696 (h!47904 (t!331095 rules!2999)))) (toValue!9184 (transformation!6696 (rule!9694 token!484))))) b_lambda!116203)))

(declare-fun b_lambda!116205 () Bool)

(assert (= b_lambda!116197 (or (and b!3976137 b_free!110283 (= (toChars!9043 (transformation!6696 (h!47904 rules!2999))) (toChars!9043 (transformation!6696 (rule!9694 token!484))))) (and b!3976135 b_free!110287) (and b!3976728 b_free!110295 (= (toChars!9043 (transformation!6696 (h!47904 (t!331095 rules!2999)))) (toChars!9043 (transformation!6696 (rule!9694 token!484))))) b_lambda!116205)))

(check-sat (not b!3976716) (not d!1177435) (not d!1177413) (not b!3976441) (not d!1177391) (not d!1177409) (not b!3976694) (not b!3976415) (not d!1177481) (not b!3976681) (not b!3976429) (not d!1177397) (not tb!239761) (not b!3976680) (not b!3976182) (not b!3976465) (not b!3976665) (not b!3976456) (not d!1177493) (not b!3976477) (not b_lambda!116203) (not b!3976431) (not b!3976449) (not b!3976432) (not b!3976450) (not b!3976512) (not b!3976606) (not b!3976608) (not b_next!110991) (not b!3976607) (not b!3976453) (not b!3976620) (not b!3976503) (not b!3976673) b_and!305671 (not b!3976690) (not b!3976447) (not d!1177395) (not b!3976497) (not d!1177403) (not b!3976713) (not b!3976658) (not b!3976727) (not d!1177417) (not b!3976150) (not b!3976676) (not b!3976414) (not b!3976473) (not b!3976151) (not b!3976659) (not b!3976518) (not b_next!110987) (not b!3976500) (not b!3976428) b_and!305679 (not b!3976171) (not b!3976714) (not b!3976731) (not b!3976602) (not b!3976734) (not d!1177501) (not b!3976469) (not b!3976733) (not b!3976508) (not b!3976726) (not d!1177449) (not d!1177477) (not b!3976663) (not d!1177497) (not d!1177283) (not b!3976611) (not tb!239765) (not b!3976170) (not b!3976717) (not b!3976167) (not b!3976155) (not d!1177487) (not b!3976678) (not d!1177503) (not d!1177495) tp_is_empty!20173 (not d!1177285) (not bm!285676) (not b_lambda!116201) (not b!3976612) (not d!1177437) (not b!3976504) (not b!3976732) (not b!3976443) (not b!3976520) (not b!3976693) (not b!3976455) (not b!3976660) (not d!1177427) (not b!3976613) b_and!305685 (not b!3976461) (not b!3976700) (not b!3976603) b_and!305681 (not b!3976466) (not d!1177295) (not b!3976672) (not d!1177485) (not d!1177451) (not d!1177429) (not b!3976695) (not b!3976499) (not d!1177447) (not b_next!110985) (not b!3976674) (not b!3976476) (not b!3976502) (not b!3976715) (not d!1177419) (not b!3976605) (not b!3976507) (not b!3976621) (not b!3976154) (not b!3976446) (not b!3976451) (not b!3976628) (not d!1177469) (not b!3976669) (not b!3976501) (not b!3976505) (not b!3976472) (not d!1177425) (not d!1177291) (not b_next!110997) (not d!1177433) b_and!305673 (not b!3976685) (not b!3976459) (not b_next!110989) (not b_next!110999) (not d!1177499) (not b!3976445) (not b!3976468) (not b!3976442) (not b_lambda!116205) (not b!3976626) (not b!3976464) (not b!3976427) (not b!3976701) (not b!3976729) (not d!1177439) (not d!1177431) (not bm!285679) (not b!3976454) (not d!1177421) (not b!3976458) (not b!3976438) b_and!305683 (not b!3976609) (not d!1177475) (not b!3976604) (not d!1177399))
(check-sat (not b_next!110991) b_and!305671 (not b_next!110987) b_and!305679 b_and!305685 b_and!305681 (not b_next!110985) (not b_next!110997) (not b_next!110999) b_and!305683 b_and!305673 (not b_next!110989))
