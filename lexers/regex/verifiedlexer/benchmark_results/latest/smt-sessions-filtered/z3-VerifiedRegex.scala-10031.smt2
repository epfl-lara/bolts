; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525126 () Bool)

(assert start!525126)

(declare-fun b!4976619 () Bool)

(declare-fun b_free!132955 () Bool)

(declare-fun b_next!133745 () Bool)

(assert (=> b!4976619 (= b_free!132955 (not b_next!133745))))

(declare-fun tp!1395492 () Bool)

(declare-fun b_and!349367 () Bool)

(assert (=> b!4976619 (= tp!1395492 b_and!349367)))

(declare-fun b_free!132957 () Bool)

(declare-fun b_next!133747 () Bool)

(assert (=> b!4976619 (= b_free!132957 (not b_next!133747))))

(declare-fun tp!1395490 () Bool)

(declare-fun b_and!349369 () Bool)

(assert (=> b!4976619 (= tp!1395490 b_and!349369)))

(declare-fun b!4976613 () Bool)

(declare-fun e!3110299 () Bool)

(declare-fun e!3110301 () Bool)

(assert (=> b!4976613 (= e!3110299 e!3110301)))

(declare-fun res!2124306 () Bool)

(assert (=> b!4976613 (=> (not res!2124306) (not e!3110301))))

(declare-datatypes ((C!27544 0))(
  ( (C!27545 (val!23138 Int)) )
))
(declare-datatypes ((List!57624 0))(
  ( (Nil!57500) (Cons!57500 (h!63948 C!27544) (t!369636 List!57624)) )
))
(declare-fun lt!2055206 () List!57624)

(declare-datatypes ((IArray!30393 0))(
  ( (IArray!30394 (innerList!15254 List!57624)) )
))
(declare-datatypes ((Conc!15166 0))(
  ( (Node!15166 (left!41955 Conc!15166) (right!42285 Conc!15166) (csize!30562 Int) (cheight!15377 Int)) (Leaf!25198 (xs!18492 IArray!30393) (csize!30563 Int)) (Empty!15166) )
))
(declare-datatypes ((BalanceConc!29762 0))(
  ( (BalanceConc!29763 (c!849195 Conc!15166)) )
))
(declare-fun totalInput!520 () BalanceConc!29762)

(declare-fun isSuffix!1213 (List!57624 List!57624) Bool)

(declare-fun list!18406 (BalanceConc!29762) List!57624)

(assert (=> b!4976613 (= res!2124306 (isSuffix!1213 lt!2055206 (list!18406 totalInput!520)))))

(declare-fun input!1580 () BalanceConc!29762)

(assert (=> b!4976613 (= lt!2055206 (list!18406 input!1580))))

(declare-fun b!4976614 () Bool)

(declare-fun lt!2055207 () Bool)

(declare-fun lt!2055208 () Bool)

(assert (=> b!4976614 (= e!3110301 (and (= lt!2055207 lt!2055208) lt!2055207 (not lt!2055208)))))

(declare-datatypes ((LexerInterface!8006 0))(
  ( (LexerInterfaceExt!8003 (__x!34741 Int)) (Lexer!8004) )
))
(declare-fun thiss!16165 () LexerInterface!8006)

(declare-datatypes ((List!57625 0))(
  ( (Nil!57501) (Cons!57501 (h!63949 (_ BitVec 16)) (t!369637 List!57625)) )
))
(declare-datatypes ((Regex!13647 0))(
  ( (ElementMatch!13647 (c!849196 C!27544)) (Concat!22371 (regOne!27806 Regex!13647) (regTwo!27806 Regex!13647)) (EmptyExpr!13647) (Star!13647 (reg!13976 Regex!13647)) (EmptyLang!13647) (Union!13647 (regOne!27807 Regex!13647) (regTwo!27807 Regex!13647)) )
))
(declare-datatypes ((TokenValue!8724 0))(
  ( (FloatLiteralValue!17448 (text!61513 List!57625)) (TokenValueExt!8723 (__x!34742 Int)) (Broken!43620 (value!269205 List!57625)) (Object!8847) (End!8724) (Def!8724) (Underscore!8724) (Match!8724) (Else!8724) (Error!8724) (Case!8724) (If!8724) (Extends!8724) (Abstract!8724) (Class!8724) (Val!8724) (DelimiterValue!17448 (del!8784 List!57625)) (KeywordValue!8730 (value!269206 List!57625)) (CommentValue!17448 (value!269207 List!57625)) (WhitespaceValue!17448 (value!269208 List!57625)) (IndentationValue!8724 (value!269209 List!57625)) (String!65493) (Int32!8724) (Broken!43621 (value!269210 List!57625)) (Boolean!8725) (Unit!148487) (OperatorValue!8727 (op!8784 List!57625)) (IdentifierValue!17448 (value!269211 List!57625)) (IdentifierValue!17449 (value!269212 List!57625)) (WhitespaceValue!17449 (value!269213 List!57625)) (True!17448) (False!17448) (Broken!43622 (value!269214 List!57625)) (Broken!43623 (value!269215 List!57625)) (True!17449) (RightBrace!8724) (RightBracket!8724) (Colon!8724) (Null!8724) (Comma!8724) (LeftBracket!8724) (False!17449) (LeftBrace!8724) (ImaginaryLiteralValue!8724 (text!61514 List!57625)) (StringLiteralValue!26172 (value!269216 List!57625)) (EOFValue!8724 (value!269217 List!57625)) (IdentValue!8724 (value!269218 List!57625)) (DelimiterValue!17449 (value!269219 List!57625)) (DedentValue!8724 (value!269220 List!57625)) (NewLineValue!8724 (value!269221 List!57625)) (IntegerValue!26172 (value!269222 (_ BitVec 32)) (text!61515 List!57625)) (IntegerValue!26173 (value!269223 Int) (text!61516 List!57625)) (Times!8724) (Or!8724) (Equal!8724) (Minus!8724) (Broken!43624 (value!269224 List!57625)) (And!8724) (Div!8724) (LessEqual!8724) (Mod!8724) (Concat!22372) (Not!8724) (Plus!8724) (SpaceValue!8724 (value!269225 List!57625)) (IntegerValue!26174 (value!269226 Int) (text!61517 List!57625)) (StringLiteralValue!26173 (text!61518 List!57625)) (FloatLiteralValue!17449 (text!61519 List!57625)) (BytesLiteralValue!8724 (value!269227 List!57625)) (CommentValue!17449 (value!269228 List!57625)) (StringLiteralValue!26174 (value!269229 List!57625)) (ErrorTokenValue!8724 (msg!8785 List!57625)) )
))
(declare-datatypes ((TokenValueInjection!16756 0))(
  ( (TokenValueInjection!16757 (toValue!11389 Int) (toChars!11248 Int)) )
))
(declare-datatypes ((String!65494 0))(
  ( (String!65495 (value!269230 String)) )
))
(declare-datatypes ((Rule!16628 0))(
  ( (Rule!16629 (regex!8414 Regex!13647) (tag!9278 String!65494) (isSeparator!8414 Bool) (transformation!8414 TokenValueInjection!16756)) )
))
(declare-fun rule!200 () Rule!16628)

(declare-datatypes ((Token!15308 0))(
  ( (Token!15309 (value!269231 TokenValue!8724) (rule!11674 Rule!16628) (size!38111 Int) (originalCharacters!8685 List!57624)) )
))
(declare-datatypes ((tuple2!62252 0))(
  ( (tuple2!62253 (_1!34429 Token!15308) (_2!34429 List!57624)) )
))
(declare-datatypes ((Option!14472 0))(
  ( (None!14471) (Some!14471 (v!50468 tuple2!62252)) )
))
(declare-fun isDefined!11383 (Option!14472) Bool)

(declare-fun maxPrefixOneRule!3642 (LexerInterface!8006 Rule!16628 List!57624) Option!14472)

(assert (=> b!4976614 (= lt!2055208 (isDefined!11383 (maxPrefixOneRule!3642 thiss!16165 rule!200 lt!2055206)))))

(assert (=> b!4976614 (= lt!2055207 false)))

(declare-fun tp!1395488 () Bool)

(declare-fun e!3110304 () Bool)

(declare-fun e!3110303 () Bool)

(declare-fun b!4976615 () Bool)

(declare-fun inv!75203 (String!65494) Bool)

(declare-fun inv!75207 (TokenValueInjection!16756) Bool)

(assert (=> b!4976615 (= e!3110304 (and tp!1395488 (inv!75203 (tag!9278 rule!200)) (inv!75207 (transformation!8414 rule!200)) e!3110303))))

(declare-fun b!4976616 () Bool)

(declare-fun res!2124309 () Bool)

(assert (=> b!4976616 (=> (not res!2124309) (not e!3110301))))

(declare-fun isEmpty!30994 (BalanceConc!29762) Bool)

(declare-datatypes ((tuple2!62254 0))(
  ( (tuple2!62255 (_1!34430 BalanceConc!29762) (_2!34430 BalanceConc!29762)) )
))
(declare-fun findLongestMatchWithZipperSequenceV2!177 (Regex!13647 BalanceConc!29762 BalanceConc!29762) tuple2!62254)

(assert (=> b!4976616 (= res!2124309 (isEmpty!30994 (_1!34430 (findLongestMatchWithZipperSequenceV2!177 (regex!8414 rule!200) input!1580 totalInput!520))))))

(declare-fun b!4976617 () Bool)

(declare-fun res!2124308 () Bool)

(assert (=> b!4976617 (=> (not res!2124308) (not e!3110299))))

(declare-fun ruleValid!3822 (LexerInterface!8006 Rule!16628) Bool)

(assert (=> b!4976617 (= res!2124308 (ruleValid!3822 thiss!16165 rule!200))))

(declare-fun b!4976618 () Bool)

(declare-fun e!3110302 () Bool)

(declare-fun tp!1395489 () Bool)

(declare-fun inv!75208 (Conc!15166) Bool)

(assert (=> b!4976618 (= e!3110302 (and (inv!75208 (c!849195 input!1580)) tp!1395489))))

(assert (=> b!4976619 (= e!3110303 (and tp!1395492 tp!1395490))))

(declare-fun b!4976620 () Bool)

(declare-fun e!3110305 () Bool)

(declare-fun tp!1395491 () Bool)

(assert (=> b!4976620 (= e!3110305 (and (inv!75208 (c!849195 totalInput!520)) tp!1395491))))

(declare-fun res!2124307 () Bool)

(assert (=> start!525126 (=> (not res!2124307) (not e!3110299))))

(get-info :version)

(assert (=> start!525126 (= res!2124307 ((_ is Lexer!8004) thiss!16165))))

(assert (=> start!525126 e!3110299))

(assert (=> start!525126 true))

(assert (=> start!525126 e!3110304))

(declare-fun inv!75209 (BalanceConc!29762) Bool)

(assert (=> start!525126 (and (inv!75209 totalInput!520) e!3110305)))

(assert (=> start!525126 (and (inv!75209 input!1580) e!3110302)))

(assert (= (and start!525126 res!2124307) b!4976617))

(assert (= (and b!4976617 res!2124308) b!4976613))

(assert (= (and b!4976613 res!2124306) b!4976616))

(assert (= (and b!4976616 res!2124309) b!4976614))

(assert (= b!4976615 b!4976619))

(assert (= start!525126 b!4976615))

(assert (= start!525126 b!4976620))

(assert (= start!525126 b!4976618))

(declare-fun m!6006822 () Bool)

(assert (=> b!4976613 m!6006822))

(assert (=> b!4976613 m!6006822))

(declare-fun m!6006824 () Bool)

(assert (=> b!4976613 m!6006824))

(declare-fun m!6006826 () Bool)

(assert (=> b!4976613 m!6006826))

(declare-fun m!6006828 () Bool)

(assert (=> b!4976616 m!6006828))

(declare-fun m!6006830 () Bool)

(assert (=> b!4976616 m!6006830))

(declare-fun m!6006832 () Bool)

(assert (=> b!4976615 m!6006832))

(declare-fun m!6006834 () Bool)

(assert (=> b!4976615 m!6006834))

(declare-fun m!6006836 () Bool)

(assert (=> b!4976614 m!6006836))

(assert (=> b!4976614 m!6006836))

(declare-fun m!6006838 () Bool)

(assert (=> b!4976614 m!6006838))

(declare-fun m!6006840 () Bool)

(assert (=> b!4976618 m!6006840))

(declare-fun m!6006842 () Bool)

(assert (=> b!4976617 m!6006842))

(declare-fun m!6006844 () Bool)

(assert (=> start!525126 m!6006844))

(declare-fun m!6006846 () Bool)

(assert (=> start!525126 m!6006846))

(declare-fun m!6006848 () Bool)

(assert (=> b!4976620 m!6006848))

(check-sat (not b!4976613) (not b!4976616) (not b_next!133745) b_and!349367 (not b!4976614) (not start!525126) (not b!4976617) (not b_next!133747) (not b!4976618) b_and!349369 (not b!4976615) (not b!4976620))
(check-sat b_and!349369 b_and!349367 (not b_next!133747) (not b_next!133745))
