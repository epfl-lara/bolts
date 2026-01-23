; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!513706 () Bool)

(assert start!513706)

(declare-fun b!4903293 () Bool)

(declare-fun b_free!131879 () Bool)

(declare-fun b_next!132669 () Bool)

(assert (=> b!4903293 (= b_free!131879 (not b_next!132669))))

(declare-fun tp!1379618 () Bool)

(declare-fun b_and!346271 () Bool)

(assert (=> b!4903293 (= tp!1379618 b_and!346271)))

(declare-fun b_free!131881 () Bool)

(declare-fun b_next!132671 () Bool)

(assert (=> b!4903293 (= b_free!131881 (not b_next!132671))))

(declare-fun tp!1379619 () Bool)

(declare-fun b_and!346273 () Bool)

(assert (=> b!4903293 (= tp!1379619 b_and!346273)))

(declare-fun b!4903305 () Bool)

(declare-fun e!3065173 () Bool)

(assert (=> b!4903305 (= e!3065173 true)))

(declare-fun b!4903304 () Bool)

(declare-fun e!3065172 () Bool)

(assert (=> b!4903304 (= e!3065172 e!3065173)))

(declare-fun b!4903295 () Bool)

(assert (=> b!4903295 e!3065172))

(assert (= b!4903304 b!4903305))

(assert (= b!4903295 b!4903304))

(declare-fun order!25713 () Int)

(declare-datatypes ((C!26802 0))(
  ( (C!26803 (val!22735 Int)) )
))
(declare-datatypes ((Regex!13302 0))(
  ( (ElementMatch!13302 (c!833297 C!26802)) (Concat!21839 (regOne!27116 Regex!13302) (regTwo!27116 Regex!13302)) (EmptyExpr!13302) (Star!13302 (reg!13631 Regex!13302)) (EmptyLang!13302) (Union!13302 (regOne!27117 Regex!13302) (regTwo!27117 Regex!13302)) )
))
(declare-datatypes ((String!64128 0))(
  ( (String!64129 (value!263579 String)) )
))
(declare-datatypes ((List!56652 0))(
  ( (Nil!56528) (Cons!56528 (h!62976 (_ BitVec 16)) (t!366744 List!56652)) )
))
(declare-datatypes ((TokenValue!8537 0))(
  ( (FloatLiteralValue!17074 (text!60204 List!56652)) (TokenValueExt!8536 (__x!34367 Int)) (Broken!42685 (value!263580 List!56652)) (Object!8660) (End!8537) (Def!8537) (Underscore!8537) (Match!8537) (Else!8537) (Error!8537) (Case!8537) (If!8537) (Extends!8537) (Abstract!8537) (Class!8537) (Val!8537) (DelimiterValue!17074 (del!8597 List!56652)) (KeywordValue!8543 (value!263581 List!56652)) (CommentValue!17074 (value!263582 List!56652)) (WhitespaceValue!17074 (value!263583 List!56652)) (IndentationValue!8537 (value!263584 List!56652)) (String!64130) (Int32!8537) (Broken!42686 (value!263585 List!56652)) (Boolean!8538) (Unit!146657) (OperatorValue!8540 (op!8597 List!56652)) (IdentifierValue!17074 (value!263586 List!56652)) (IdentifierValue!17075 (value!263587 List!56652)) (WhitespaceValue!17075 (value!263588 List!56652)) (True!17074) (False!17074) (Broken!42687 (value!263589 List!56652)) (Broken!42688 (value!263590 List!56652)) (True!17075) (RightBrace!8537) (RightBracket!8537) (Colon!8537) (Null!8537) (Comma!8537) (LeftBracket!8537) (False!17075) (LeftBrace!8537) (ImaginaryLiteralValue!8537 (text!60205 List!56652)) (StringLiteralValue!25611 (value!263591 List!56652)) (EOFValue!8537 (value!263592 List!56652)) (IdentValue!8537 (value!263593 List!56652)) (DelimiterValue!17075 (value!263594 List!56652)) (DedentValue!8537 (value!263595 List!56652)) (NewLineValue!8537 (value!263596 List!56652)) (IntegerValue!25611 (value!263597 (_ BitVec 32)) (text!60206 List!56652)) (IntegerValue!25612 (value!263598 Int) (text!60207 List!56652)) (Times!8537) (Or!8537) (Equal!8537) (Minus!8537) (Broken!42689 (value!263599 List!56652)) (And!8537) (Div!8537) (LessEqual!8537) (Mod!8537) (Concat!21840) (Not!8537) (Plus!8537) (SpaceValue!8537 (value!263600 List!56652)) (IntegerValue!25613 (value!263601 Int) (text!60208 List!56652)) (StringLiteralValue!25612 (text!60209 List!56652)) (FloatLiteralValue!17075 (text!60210 List!56652)) (BytesLiteralValue!8537 (value!263602 List!56652)) (CommentValue!17075 (value!263603 List!56652)) (StringLiteralValue!25613 (value!263604 List!56652)) (ErrorTokenValue!8537 (msg!8598 List!56652)) )
))
(declare-datatypes ((List!56653 0))(
  ( (Nil!56529) (Cons!56529 (h!62977 C!26802) (t!366745 List!56653)) )
))
(declare-datatypes ((IArray!29651 0))(
  ( (IArray!29652 (innerList!14883 List!56653)) )
))
(declare-datatypes ((Conc!14795 0))(
  ( (Node!14795 (left!41141 Conc!14795) (right!41471 Conc!14795) (csize!29820 Int) (cheight!15006 Int)) (Leaf!24626 (xs!18111 IArray!29651) (csize!29821 Int)) (Empty!14795) )
))
(declare-datatypes ((BalanceConc!29020 0))(
  ( (BalanceConc!29021 (c!833298 Conc!14795)) )
))
(declare-datatypes ((TokenValueInjection!16382 0))(
  ( (TokenValueInjection!16383 (toValue!11140 Int) (toChars!10999 Int)) )
))
(declare-datatypes ((Rule!16254 0))(
  ( (Rule!16255 (regex!8227 Regex!13302) (tag!9091 String!64128) (isSeparator!8227 Bool) (transformation!8227 TokenValueInjection!16382)) )
))
(declare-fun rule!164 () Rule!16254)

(declare-fun lambda!244411 () Int)

(declare-fun order!25711 () Int)

(declare-fun dynLambda!22789 (Int Int) Int)

(declare-fun dynLambda!22790 (Int Int) Int)

(assert (=> b!4903305 (< (dynLambda!22789 order!25711 (toValue!11140 (transformation!8227 rule!164))) (dynLambda!22790 order!25713 lambda!244411))))

(declare-fun order!25715 () Int)

(declare-fun dynLambda!22791 (Int Int) Int)

(assert (=> b!4903305 (< (dynLambda!22791 order!25715 (toChars!10999 (transformation!8227 rule!164))) (dynLambda!22790 order!25713 lambda!244411))))

(declare-fun b!4903290 () Bool)

(declare-fun e!3065162 () Bool)

(declare-fun e!3065167 () Bool)

(assert (=> b!4903290 (= e!3065162 (not e!3065167))))

(declare-fun res!2094532 () Bool)

(assert (=> b!4903290 (=> res!2094532 e!3065167)))

(declare-fun semiInverseModEq!3628 (Int Int) Bool)

(assert (=> b!4903290 (= res!2094532 (not (semiInverseModEq!3628 (toChars!10999 (transformation!8227 rule!164)) (toValue!11140 (transformation!8227 rule!164)))))))

(declare-datatypes ((Unit!146658 0))(
  ( (Unit!146659) )
))
(declare-fun lt!2011272 () Unit!146658)

(declare-fun lemmaInv!1273 (TokenValueInjection!16382) Unit!146658)

(assert (=> b!4903290 (= lt!2011272 (lemmaInv!1273 (transformation!8227 rule!164)))))

(declare-fun e!3065161 () Bool)

(assert (=> b!4903290 e!3065161))

(declare-fun res!2094533 () Bool)

(assert (=> b!4903290 (=> res!2094533 e!3065161)))

(declare-datatypes ((tuple2!60756 0))(
  ( (tuple2!60757 (_1!33681 List!56653) (_2!33681 List!56653)) )
))
(declare-fun lt!2011271 () tuple2!60756)

(declare-fun isEmpty!30391 (List!56653) Bool)

(assert (=> b!4903290 (= res!2094533 (isEmpty!30391 (_1!33681 lt!2011271)))))

(declare-fun lt!2011270 () List!56653)

(declare-fun findLongestMatchInner!1790 (Regex!13302 List!56653 Int List!56653 List!56653 Int) tuple2!60756)

(declare-fun size!37257 (List!56653) Int)

(assert (=> b!4903290 (= lt!2011271 (findLongestMatchInner!1790 (regex!8227 rule!164) Nil!56529 (size!37257 Nil!56529) lt!2011270 lt!2011270 (size!37257 lt!2011270)))))

(declare-fun lt!2011273 () Unit!146658)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1753 (Regex!13302 List!56653) Unit!146658)

(assert (=> b!4903290 (= lt!2011273 (longestMatchIsAcceptedByMatchOrIsEmpty!1753 (regex!8227 rule!164) lt!2011270))))

(declare-fun input!1509 () BalanceConc!29020)

(declare-fun list!17799 (BalanceConc!29020) List!56653)

(assert (=> b!4903290 (= lt!2011270 (list!17799 input!1509))))

(declare-fun b!4903291 () Bool)

(declare-fun matchR!6569 (Regex!13302 List!56653) Bool)

(assert (=> b!4903291 (= e!3065161 (matchR!6569 (regex!8227 rule!164) (_1!33681 lt!2011271)))))

(declare-fun b!4903292 () Bool)

(declare-fun e!3065164 () Bool)

(declare-fun tp!1379616 () Bool)

(declare-fun inv!72960 (Conc!14795) Bool)

(assert (=> b!4903292 (= e!3065164 (and (inv!72960 (c!833298 input!1509)) tp!1379616))))

(declare-fun res!2094531 () Bool)

(assert (=> start!513706 (=> (not res!2094531) (not e!3065162))))

(declare-datatypes ((LexerInterface!7819 0))(
  ( (LexerInterfaceExt!7816 (__x!34368 Int)) (Lexer!7817) )
))
(declare-fun thiss!15943 () LexerInterface!7819)

(assert (=> start!513706 (= res!2094531 (is-Lexer!7817 thiss!15943))))

(assert (=> start!513706 e!3065162))

(assert (=> start!513706 true))

(declare-fun e!3065163 () Bool)

(assert (=> start!513706 e!3065163))

(declare-fun inv!72961 (BalanceConc!29020) Bool)

(assert (=> start!513706 (and (inv!72961 input!1509) e!3065164)))

(declare-fun e!3065165 () Bool)

(assert (=> b!4903293 (= e!3065165 (and tp!1379618 tp!1379619))))

(declare-fun b!4903294 () Bool)

(declare-fun res!2094535 () Bool)

(assert (=> b!4903294 (=> (not res!2094535) (not e!3065162))))

(declare-fun ruleValid!3724 (LexerInterface!7819 Rule!16254) Bool)

(assert (=> b!4903294 (= res!2094535 (ruleValid!3724 thiss!15943 rule!164))))

(declare-fun Forall!1724 (Int) Bool)

(assert (=> b!4903295 (= e!3065167 (Forall!1724 lambda!244411))))

(declare-fun b!4903296 () Bool)

(declare-fun tp!1379617 () Bool)

(declare-fun inv!72957 (String!64128) Bool)

(declare-fun inv!72962 (TokenValueInjection!16382) Bool)

(assert (=> b!4903296 (= e!3065163 (and tp!1379617 (inv!72957 (tag!9091 rule!164)) (inv!72962 (transformation!8227 rule!164)) e!3065165))))

(declare-fun b!4903297 () Bool)

(declare-fun res!2094534 () Bool)

(assert (=> b!4903297 (=> (not res!2094534) (not e!3065162))))

(declare-fun isEmpty!30392 (BalanceConc!29020) Bool)

(declare-datatypes ((tuple2!60758 0))(
  ( (tuple2!60759 (_1!33682 BalanceConc!29020) (_2!33682 BalanceConc!29020)) )
))
(declare-fun findLongestMatchWithZipperSequence!315 (Regex!13302 BalanceConc!29020) tuple2!60758)

(assert (=> b!4903297 (= res!2094534 (not (isEmpty!30392 (_1!33682 (findLongestMatchWithZipperSequence!315 (regex!8227 rule!164) input!1509)))))))

(assert (= (and start!513706 res!2094531) b!4903294))

(assert (= (and b!4903294 res!2094535) b!4903297))

(assert (= (and b!4903297 res!2094534) b!4903290))

(assert (= (and b!4903290 (not res!2094533)) b!4903291))

(assert (= (and b!4903290 (not res!2094532)) b!4903295))

(assert (= b!4903296 b!4903293))

(assert (= start!513706 b!4903296))

(assert (= start!513706 b!4903292))

(declare-fun m!5912186 () Bool)

(assert (=> b!4903292 m!5912186))

(declare-fun m!5912188 () Bool)

(assert (=> b!4903295 m!5912188))

(declare-fun m!5912190 () Bool)

(assert (=> b!4903296 m!5912190))

(declare-fun m!5912192 () Bool)

(assert (=> b!4903296 m!5912192))

(declare-fun m!5912194 () Bool)

(assert (=> b!4903290 m!5912194))

(declare-fun m!5912196 () Bool)

(assert (=> b!4903290 m!5912196))

(declare-fun m!5912198 () Bool)

(assert (=> b!4903290 m!5912198))

(declare-fun m!5912200 () Bool)

(assert (=> b!4903290 m!5912200))

(assert (=> b!4903290 m!5912196))

(assert (=> b!4903290 m!5912200))

(declare-fun m!5912202 () Bool)

(assert (=> b!4903290 m!5912202))

(declare-fun m!5912204 () Bool)

(assert (=> b!4903290 m!5912204))

(declare-fun m!5912206 () Bool)

(assert (=> b!4903290 m!5912206))

(declare-fun m!5912208 () Bool)

(assert (=> b!4903290 m!5912208))

(declare-fun m!5912210 () Bool)

(assert (=> start!513706 m!5912210))

(declare-fun m!5912212 () Bool)

(assert (=> b!4903297 m!5912212))

(declare-fun m!5912214 () Bool)

(assert (=> b!4903297 m!5912214))

(declare-fun m!5912216 () Bool)

(assert (=> b!4903294 m!5912216))

(declare-fun m!5912218 () Bool)

(assert (=> b!4903291 m!5912218))

(push 1)

(assert (not b_next!132671))

(assert (not start!513706))

(assert b_and!346273)

(assert (not b!4903292))

(assert (not b!4903295))

(assert (not b_next!132669))

(assert (not b!4903296))

(assert b_and!346271)

(assert (not b!4903294))

(assert (not b!4903291))

(assert (not b!4903297))

(assert (not b!4903290))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346273)

(assert b_and!346271)

(assert (not b_next!132671))

(assert (not b_next!132669))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1575651 () Bool)

(declare-fun list!17801 (Conc!14795) List!56653)

(assert (=> d!1575651 (= (list!17799 input!1509) (list!17801 (c!833298 input!1509)))))

(declare-fun bs!1176869 () Bool)

(assert (= bs!1176869 d!1575651))

(declare-fun m!5912254 () Bool)

(assert (=> bs!1176869 m!5912254))

(assert (=> b!4903290 d!1575651))

(declare-fun b!4903400 () Bool)

(declare-fun e!3065245 () tuple2!60756)

(declare-fun call!340148 () tuple2!60756)

(assert (=> b!4903400 (= e!3065245 call!340148)))

(declare-fun b!4903401 () Bool)

(declare-fun c!833324 () Bool)

(declare-fun call!340154 () Bool)

(assert (=> b!4903401 (= c!833324 call!340154)))

(declare-fun lt!2011379 () Unit!146658)

(declare-fun lt!2011381 () Unit!146658)

(assert (=> b!4903401 (= lt!2011379 lt!2011381)))

(declare-fun lt!2011375 () C!26802)

(declare-fun lt!2011370 () List!56653)

(declare-fun ++!12256 (List!56653 List!56653) List!56653)

(assert (=> b!4903401 (= (++!12256 (++!12256 Nil!56529 (Cons!56529 lt!2011375 Nil!56529)) lt!2011370) lt!2011270)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1340 (List!56653 C!26802 List!56653 List!56653) Unit!146658)

(assert (=> b!4903401 (= lt!2011381 (lemmaMoveElementToOtherListKeepsConcatEq!1340 Nil!56529 lt!2011375 lt!2011370 lt!2011270))))

(declare-fun tail!9616 (List!56653) List!56653)

(assert (=> b!4903401 (= lt!2011370 (tail!9616 lt!2011270))))

(declare-fun head!10469 (List!56653) C!26802)

(assert (=> b!4903401 (= lt!2011375 (head!10469 lt!2011270))))

(declare-fun lt!2011369 () Unit!146658)

(declare-fun lt!2011371 () Unit!146658)

(assert (=> b!4903401 (= lt!2011369 lt!2011371)))

(declare-fun isPrefix!4909 (List!56653 List!56653) Bool)

(declare-fun getSuffix!2897 (List!56653 List!56653) List!56653)

(assert (=> b!4903401 (isPrefix!4909 (++!12256 Nil!56529 (Cons!56529 (head!10469 (getSuffix!2897 lt!2011270 Nil!56529)) Nil!56529)) lt!2011270)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!722 (List!56653 List!56653) Unit!146658)

(assert (=> b!4903401 (= lt!2011371 (lemmaAddHeadSuffixToPrefixStillPrefix!722 Nil!56529 lt!2011270))))

(declare-fun lt!2011356 () Unit!146658)

(declare-fun lt!2011361 () Unit!146658)

(assert (=> b!4903401 (= lt!2011356 lt!2011361)))

(assert (=> b!4903401 (= lt!2011361 (lemmaAddHeadSuffixToPrefixStillPrefix!722 Nil!56529 lt!2011270))))

(declare-fun lt!2011374 () List!56653)

(assert (=> b!4903401 (= lt!2011374 (++!12256 Nil!56529 (Cons!56529 (head!10469 lt!2011270) Nil!56529)))))

(declare-fun lt!2011355 () Unit!146658)

(declare-fun e!3065242 () Unit!146658)

(assert (=> b!4903401 (= lt!2011355 e!3065242)))

(declare-fun c!833319 () Bool)

(assert (=> b!4903401 (= c!833319 (= (size!37257 Nil!56529) (size!37257 lt!2011270)))))

(declare-fun lt!2011378 () Unit!146658)

(declare-fun lt!2011362 () Unit!146658)

(assert (=> b!4903401 (= lt!2011378 lt!2011362)))

(assert (=> b!4903401 (<= (size!37257 Nil!56529) (size!37257 lt!2011270))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!634 (List!56653 List!56653) Unit!146658)

(assert (=> b!4903401 (= lt!2011362 (lemmaIsPrefixThenSmallerEqSize!634 Nil!56529 lt!2011270))))

(declare-fun e!3065238 () tuple2!60756)

(assert (=> b!4903401 (= e!3065238 e!3065245)))

(declare-fun b!4903402 () Bool)

(declare-fun Unit!146663 () Unit!146658)

(assert (=> b!4903402 (= e!3065242 Unit!146663)))

(declare-fun b!4903403 () Bool)

(declare-fun e!3065244 () tuple2!60756)

(assert (=> b!4903403 (= e!3065244 (tuple2!60757 Nil!56529 lt!2011270))))

(declare-fun bm!340142 () Bool)

(declare-fun call!340153 () List!56653)

(assert (=> bm!340142 (= call!340153 (tail!9616 lt!2011270))))

(declare-fun bm!340143 () Bool)

(declare-fun nullable!4568 (Regex!13302) Bool)

(assert (=> bm!340143 (= call!340154 (nullable!4568 (regex!8227 rule!164)))))

(declare-fun b!4903404 () Bool)

(assert (=> b!4903404 (= e!3065244 e!3065238)))

(declare-fun c!833322 () Bool)

(assert (=> b!4903404 (= c!833322 (= (size!37257 Nil!56529) (size!37257 lt!2011270)))))

(declare-fun bm!340144 () Bool)

(declare-fun call!340149 () Bool)

(assert (=> bm!340144 (= call!340149 (isPrefix!4909 lt!2011270 lt!2011270))))

(declare-fun bm!340145 () Bool)

(declare-fun call!340152 () Regex!13302)

(assert (=> bm!340145 (= call!340148 (findLongestMatchInner!1790 call!340152 lt!2011374 (+ (size!37257 Nil!56529) 1) call!340153 lt!2011270 (size!37257 lt!2011270)))))

(declare-fun b!4903406 () Bool)

(declare-fun Unit!146664 () Unit!146658)

(assert (=> b!4903406 (= e!3065242 Unit!146664)))

(declare-fun lt!2011372 () Unit!146658)

(declare-fun call!340147 () Unit!146658)

(assert (=> b!4903406 (= lt!2011372 call!340147)))

(assert (=> b!4903406 call!340149))

(declare-fun lt!2011364 () Unit!146658)

(assert (=> b!4903406 (= lt!2011364 lt!2011372)))

(declare-fun lt!2011366 () Unit!146658)

(declare-fun call!340151 () Unit!146658)

(assert (=> b!4903406 (= lt!2011366 call!340151)))

(assert (=> b!4903406 (= lt!2011270 Nil!56529)))

(declare-fun lt!2011357 () Unit!146658)

(assert (=> b!4903406 (= lt!2011357 lt!2011366)))

(assert (=> b!4903406 false))

(declare-fun bm!340146 () Bool)

(declare-fun call!340150 () C!26802)

(assert (=> bm!340146 (= call!340150 (head!10469 lt!2011270))))

(declare-fun bm!340147 () Bool)

(declare-fun derivativeStep!3888 (Regex!13302 C!26802) Regex!13302)

(assert (=> bm!340147 (= call!340152 (derivativeStep!3888 (regex!8227 rule!164) call!340150))))

(declare-fun bm!340148 () Bool)

(declare-fun lemmaIsPrefixRefl!3306 (List!56653 List!56653) Unit!146658)

(assert (=> bm!340148 (= call!340147 (lemmaIsPrefixRefl!3306 lt!2011270 lt!2011270))))

(declare-fun b!4903407 () Bool)

(declare-fun e!3065239 () tuple2!60756)

(assert (=> b!4903407 (= e!3065245 e!3065239)))

(declare-fun lt!2011360 () tuple2!60756)

(assert (=> b!4903407 (= lt!2011360 call!340148)))

(declare-fun c!833320 () Bool)

(assert (=> b!4903407 (= c!833320 (isEmpty!30391 (_1!33681 lt!2011360)))))

(declare-fun d!1575653 () Bool)

(declare-fun e!3065240 () Bool)

(assert (=> d!1575653 e!3065240))

(declare-fun res!2094577 () Bool)

(assert (=> d!1575653 (=> (not res!2094577) (not e!3065240))))

(declare-fun lt!2011373 () tuple2!60756)

(assert (=> d!1575653 (= res!2094577 (= (++!12256 (_1!33681 lt!2011373) (_2!33681 lt!2011373)) lt!2011270))))

(assert (=> d!1575653 (= lt!2011373 e!3065244)))

(declare-fun c!833321 () Bool)

(declare-fun lostCause!1096 (Regex!13302) Bool)

(assert (=> d!1575653 (= c!833321 (lostCause!1096 (regex!8227 rule!164)))))

(declare-fun lt!2011377 () Unit!146658)

(declare-fun Unit!146665 () Unit!146658)

(assert (=> d!1575653 (= lt!2011377 Unit!146665)))

(assert (=> d!1575653 (= (getSuffix!2897 lt!2011270 Nil!56529) lt!2011270)))

(declare-fun lt!2011354 () Unit!146658)

(declare-fun lt!2011365 () Unit!146658)

(assert (=> d!1575653 (= lt!2011354 lt!2011365)))

(declare-fun lt!2011368 () List!56653)

(assert (=> d!1575653 (= lt!2011270 lt!2011368)))

(declare-fun lemmaSamePrefixThenSameSuffix!2313 (List!56653 List!56653 List!56653 List!56653 List!56653) Unit!146658)

(assert (=> d!1575653 (= lt!2011365 (lemmaSamePrefixThenSameSuffix!2313 Nil!56529 lt!2011270 Nil!56529 lt!2011368 lt!2011270))))

(assert (=> d!1575653 (= lt!2011368 (getSuffix!2897 lt!2011270 Nil!56529))))

(declare-fun lt!2011367 () Unit!146658)

(declare-fun lt!2011376 () Unit!146658)

(assert (=> d!1575653 (= lt!2011367 lt!2011376)))

(assert (=> d!1575653 (isPrefix!4909 Nil!56529 (++!12256 Nil!56529 lt!2011270))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3133 (List!56653 List!56653) Unit!146658)

(assert (=> d!1575653 (= lt!2011376 (lemmaConcatTwoListThenFirstIsPrefix!3133 Nil!56529 lt!2011270))))

(declare-fun validRegex!5896 (Regex!13302) Bool)

(assert (=> d!1575653 (validRegex!5896 (regex!8227 rule!164))))

(assert (=> d!1575653 (= (findLongestMatchInner!1790 (regex!8227 rule!164) Nil!56529 (size!37257 Nil!56529) lt!2011270 lt!2011270 (size!37257 lt!2011270)) lt!2011373)))

(declare-fun b!4903405 () Bool)

(declare-fun c!833323 () Bool)

(assert (=> b!4903405 (= c!833323 call!340154)))

(declare-fun lt!2011363 () Unit!146658)

(declare-fun lt!2011358 () Unit!146658)

(assert (=> b!4903405 (= lt!2011363 lt!2011358)))

(assert (=> b!4903405 (= lt!2011270 Nil!56529)))

(assert (=> b!4903405 (= lt!2011358 call!340151)))

(declare-fun lt!2011380 () Unit!146658)

(declare-fun lt!2011359 () Unit!146658)

(assert (=> b!4903405 (= lt!2011380 lt!2011359)))

(assert (=> b!4903405 call!340149))

(assert (=> b!4903405 (= lt!2011359 call!340147)))

(declare-fun e!3065241 () tuple2!60756)

(assert (=> b!4903405 (= e!3065238 e!3065241)))

(declare-fun b!4903408 () Bool)

(assert (=> b!4903408 (= e!3065239 lt!2011360)))

(declare-fun b!4903409 () Bool)

(assert (=> b!4903409 (= e!3065241 (tuple2!60757 Nil!56529 Nil!56529))))

(declare-fun b!4903410 () Bool)

(declare-fun e!3065243 () Bool)

(assert (=> b!4903410 (= e!3065243 (>= (size!37257 (_1!33681 lt!2011373)) (size!37257 Nil!56529)))))

(declare-fun b!4903411 () Bool)

(assert (=> b!4903411 (= e!3065241 (tuple2!60757 Nil!56529 lt!2011270))))

(declare-fun b!4903412 () Bool)

(assert (=> b!4903412 (= e!3065239 (tuple2!60757 Nil!56529 lt!2011270))))

(declare-fun bm!340149 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1068 (List!56653 List!56653 List!56653) Unit!146658)

(assert (=> bm!340149 (= call!340151 (lemmaIsPrefixSameLengthThenSameList!1068 lt!2011270 Nil!56529 lt!2011270))))

(declare-fun b!4903413 () Bool)

(assert (=> b!4903413 (= e!3065240 e!3065243)))

(declare-fun res!2094578 () Bool)

(assert (=> b!4903413 (=> res!2094578 e!3065243)))

(assert (=> b!4903413 (= res!2094578 (isEmpty!30391 (_1!33681 lt!2011373)))))

(assert (= (and d!1575653 c!833321) b!4903403))

(assert (= (and d!1575653 (not c!833321)) b!4903404))

(assert (= (and b!4903404 c!833322) b!4903405))

(assert (= (and b!4903404 (not c!833322)) b!4903401))

(assert (= (and b!4903405 c!833323) b!4903409))

(assert (= (and b!4903405 (not c!833323)) b!4903411))

(assert (= (and b!4903401 c!833319) b!4903406))

(assert (= (and b!4903401 (not c!833319)) b!4903402))

(assert (= (and b!4903401 c!833324) b!4903407))

(assert (= (and b!4903401 (not c!833324)) b!4903400))

(assert (= (and b!4903407 c!833320) b!4903412))

(assert (= (and b!4903407 (not c!833320)) b!4903408))

(assert (= (or b!4903407 b!4903400) bm!340146))

(assert (= (or b!4903407 b!4903400) bm!340142))

(assert (= (or b!4903407 b!4903400) bm!340147))

(assert (= (or b!4903407 b!4903400) bm!340145))

(assert (= (or b!4903405 b!4903406) bm!340144))

(assert (= (or b!4903405 b!4903406) bm!340148))

(assert (= (or b!4903405 b!4903406) bm!340149))

(assert (= (or b!4903405 b!4903401) bm!340143))

(assert (= (and d!1575653 res!2094577) b!4903413))

(assert (= (and b!4903413 (not res!2094578)) b!4903410))

(assert (=> bm!340145 m!5912200))

(declare-fun m!5912294 () Bool)

(assert (=> bm!340145 m!5912294))

(declare-fun m!5912296 () Bool)

(assert (=> bm!340144 m!5912296))

(declare-fun m!5912298 () Bool)

(assert (=> bm!340146 m!5912298))

(declare-fun m!5912300 () Bool)

(assert (=> b!4903410 m!5912300))

(assert (=> b!4903410 m!5912196))

(declare-fun m!5912302 () Bool)

(assert (=> bm!340143 m!5912302))

(declare-fun m!5912304 () Bool)

(assert (=> bm!340148 m!5912304))

(declare-fun m!5912306 () Bool)

(assert (=> b!4903407 m!5912306))

(declare-fun m!5912308 () Bool)

(assert (=> b!4903413 m!5912308))

(declare-fun m!5912310 () Bool)

(assert (=> bm!340149 m!5912310))

(declare-fun m!5912312 () Bool)

(assert (=> b!4903401 m!5912312))

(declare-fun m!5912314 () Bool)

(assert (=> b!4903401 m!5912314))

(declare-fun m!5912316 () Bool)

(assert (=> b!4903401 m!5912316))

(assert (=> b!4903401 m!5912200))

(declare-fun m!5912318 () Bool)

(assert (=> b!4903401 m!5912318))

(declare-fun m!5912320 () Bool)

(assert (=> b!4903401 m!5912320))

(assert (=> b!4903401 m!5912298))

(declare-fun m!5912322 () Bool)

(assert (=> b!4903401 m!5912322))

(declare-fun m!5912324 () Bool)

(assert (=> b!4903401 m!5912324))

(declare-fun m!5912326 () Bool)

(assert (=> b!4903401 m!5912326))

(declare-fun m!5912328 () Bool)

(assert (=> b!4903401 m!5912328))

(declare-fun m!5912330 () Bool)

(assert (=> b!4903401 m!5912330))

(assert (=> b!4903401 m!5912326))

(assert (=> b!4903401 m!5912196))

(assert (=> b!4903401 m!5912322))

(declare-fun m!5912332 () Bool)

(assert (=> b!4903401 m!5912332))

(assert (=> b!4903401 m!5912318))

(assert (=> bm!340142 m!5912330))

(declare-fun m!5912334 () Bool)

(assert (=> bm!340147 m!5912334))

(declare-fun m!5912336 () Bool)

(assert (=> d!1575653 m!5912336))

(declare-fun m!5912338 () Bool)

(assert (=> d!1575653 m!5912338))

(declare-fun m!5912340 () Bool)

(assert (=> d!1575653 m!5912340))

(declare-fun m!5912342 () Bool)

(assert (=> d!1575653 m!5912342))

(assert (=> d!1575653 m!5912338))

(declare-fun m!5912344 () Bool)

(assert (=> d!1575653 m!5912344))

(assert (=> d!1575653 m!5912326))

(declare-fun m!5912346 () Bool)

(assert (=> d!1575653 m!5912346))

(declare-fun m!5912348 () Bool)

(assert (=> d!1575653 m!5912348))

(assert (=> b!4903290 d!1575653))

(declare-fun d!1575681 () Bool)

(assert (=> d!1575681 (= (isEmpty!30391 (_1!33681 lt!2011271)) (is-Nil!56529 (_1!33681 lt!2011271)))))

(assert (=> b!4903290 d!1575681))

(declare-fun d!1575683 () Bool)

(declare-fun e!3065248 () Bool)

(assert (=> d!1575683 e!3065248))

(declare-fun res!2094581 () Bool)

(assert (=> d!1575683 (=> (not res!2094581) (not e!3065248))))

(assert (=> d!1575683 (= res!2094581 (semiInverseModEq!3628 (toChars!10999 (transformation!8227 rule!164)) (toValue!11140 (transformation!8227 rule!164))))))

(declare-fun Unit!146666 () Unit!146658)

(assert (=> d!1575683 (= (lemmaInv!1273 (transformation!8227 rule!164)) Unit!146666)))

(declare-fun b!4903416 () Bool)

(declare-fun equivClasses!3482 (Int Int) Bool)

(assert (=> b!4903416 (= e!3065248 (equivClasses!3482 (toChars!10999 (transformation!8227 rule!164)) (toValue!11140 (transformation!8227 rule!164))))))

(assert (= (and d!1575683 res!2094581) b!4903416))

(assert (=> d!1575683 m!5912194))

(declare-fun m!5912350 () Bool)

(assert (=> b!4903416 m!5912350))

(assert (=> b!4903290 d!1575683))

(declare-fun d!1575685 () Bool)

(declare-fun lt!2011384 () Int)

(assert (=> d!1575685 (>= lt!2011384 0)))

(declare-fun e!3065251 () Int)

(assert (=> d!1575685 (= lt!2011384 e!3065251)))

(declare-fun c!833327 () Bool)

(assert (=> d!1575685 (= c!833327 (is-Nil!56529 Nil!56529))))

(assert (=> d!1575685 (= (size!37257 Nil!56529) lt!2011384)))

(declare-fun b!4903421 () Bool)

(assert (=> b!4903421 (= e!3065251 0)))

(declare-fun b!4903422 () Bool)

(assert (=> b!4903422 (= e!3065251 (+ 1 (size!37257 (t!366745 Nil!56529))))))

(assert (= (and d!1575685 c!833327) b!4903421))

(assert (= (and d!1575685 (not c!833327)) b!4903422))

(declare-fun m!5912352 () Bool)

(assert (=> b!4903422 m!5912352))

(assert (=> b!4903290 d!1575685))

(declare-fun bs!1176876 () Bool)

(declare-fun d!1575687 () Bool)

(assert (= bs!1176876 (and d!1575687 b!4903295)))

(declare-fun lambda!244420 () Int)

(assert (=> bs!1176876 (= lambda!244420 lambda!244411)))

(assert (=> d!1575687 true))

(assert (=> d!1575687 (< (dynLambda!22791 order!25715 (toChars!10999 (transformation!8227 rule!164))) (dynLambda!22790 order!25713 lambda!244420))))

(assert (=> d!1575687 true))

(assert (=> d!1575687 (< (dynLambda!22789 order!25711 (toValue!11140 (transformation!8227 rule!164))) (dynLambda!22790 order!25713 lambda!244420))))

(assert (=> d!1575687 (= (semiInverseModEq!3628 (toChars!10999 (transformation!8227 rule!164)) (toValue!11140 (transformation!8227 rule!164))) (Forall!1724 lambda!244420))))

(declare-fun bs!1176877 () Bool)

(assert (= bs!1176877 d!1575687))

(declare-fun m!5912354 () Bool)

(assert (=> bs!1176877 m!5912354))

(assert (=> b!4903290 d!1575687))

(declare-fun d!1575689 () Bool)

(declare-fun e!3065254 () Bool)

(assert (=> d!1575689 e!3065254))

(declare-fun res!2094584 () Bool)

(assert (=> d!1575689 (=> res!2094584 e!3065254)))

(assert (=> d!1575689 (= res!2094584 (isEmpty!30391 (_1!33681 (findLongestMatchInner!1790 (regex!8227 rule!164) Nil!56529 (size!37257 Nil!56529) lt!2011270 lt!2011270 (size!37257 lt!2011270)))))))

(declare-fun lt!2011387 () Unit!146658)

(declare-fun choose!35801 (Regex!13302 List!56653) Unit!146658)

(assert (=> d!1575689 (= lt!2011387 (choose!35801 (regex!8227 rule!164) lt!2011270))))

(assert (=> d!1575689 (validRegex!5896 (regex!8227 rule!164))))

(assert (=> d!1575689 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1753 (regex!8227 rule!164) lt!2011270) lt!2011387)))

(declare-fun b!4903429 () Bool)

(assert (=> b!4903429 (= e!3065254 (matchR!6569 (regex!8227 rule!164) (_1!33681 (findLongestMatchInner!1790 (regex!8227 rule!164) Nil!56529 (size!37257 Nil!56529) lt!2011270 lt!2011270 (size!37257 lt!2011270)))))))

(assert (= (and d!1575689 (not res!2094584)) b!4903429))

(assert (=> d!1575689 m!5912196))

(assert (=> d!1575689 m!5912200))

(assert (=> d!1575689 m!5912346))

(declare-fun m!5912356 () Bool)

(assert (=> d!1575689 m!5912356))

(declare-fun m!5912358 () Bool)

(assert (=> d!1575689 m!5912358))

(assert (=> d!1575689 m!5912196))

(assert (=> d!1575689 m!5912200))

(assert (=> d!1575689 m!5912202))

(assert (=> b!4903429 m!5912196))

(assert (=> b!4903429 m!5912200))

(assert (=> b!4903429 m!5912196))

(assert (=> b!4903429 m!5912200))

(assert (=> b!4903429 m!5912202))

(declare-fun m!5912360 () Bool)

(assert (=> b!4903429 m!5912360))

(assert (=> b!4903290 d!1575689))

(declare-fun d!1575691 () Bool)

(declare-fun lt!2011388 () Int)

(assert (=> d!1575691 (>= lt!2011388 0)))

(declare-fun e!3065255 () Int)

(assert (=> d!1575691 (= lt!2011388 e!3065255)))

(declare-fun c!833328 () Bool)

(assert (=> d!1575691 (= c!833328 (is-Nil!56529 lt!2011270))))

(assert (=> d!1575691 (= (size!37257 lt!2011270) lt!2011388)))

(declare-fun b!4903430 () Bool)

(assert (=> b!4903430 (= e!3065255 0)))

(declare-fun b!4903431 () Bool)

(assert (=> b!4903431 (= e!3065255 (+ 1 (size!37257 (t!366745 lt!2011270))))))

(assert (= (and d!1575691 c!833328) b!4903430))

(assert (= (and d!1575691 (not c!833328)) b!4903431))

(declare-fun m!5912362 () Bool)

(assert (=> b!4903431 m!5912362))

(assert (=> b!4903290 d!1575691))

(declare-fun d!1575693 () Bool)

(declare-fun choose!35802 (Int) Bool)

(assert (=> d!1575693 (= (Forall!1724 lambda!244411) (choose!35802 lambda!244411))))

(declare-fun bs!1176878 () Bool)

(assert (= bs!1176878 d!1575693))

(declare-fun m!5912364 () Bool)

(assert (=> bs!1176878 m!5912364))

(assert (=> b!4903295 d!1575693))

(declare-fun d!1575695 () Bool)

(declare-fun res!2094589 () Bool)

(declare-fun e!3065258 () Bool)

(assert (=> d!1575695 (=> (not res!2094589) (not e!3065258))))

(assert (=> d!1575695 (= res!2094589 (validRegex!5896 (regex!8227 rule!164)))))

(assert (=> d!1575695 (= (ruleValid!3724 thiss!15943 rule!164) e!3065258)))

(declare-fun b!4903436 () Bool)

(declare-fun res!2094590 () Bool)

(assert (=> b!4903436 (=> (not res!2094590) (not e!3065258))))

(assert (=> b!4903436 (= res!2094590 (not (nullable!4568 (regex!8227 rule!164))))))

(declare-fun b!4903437 () Bool)

(assert (=> b!4903437 (= e!3065258 (not (= (tag!9091 rule!164) (String!64129 ""))))))

(assert (= (and d!1575695 res!2094589) b!4903436))

(assert (= (and b!4903436 res!2094590) b!4903437))

(assert (=> d!1575695 m!5912346))

(assert (=> b!4903436 m!5912302))

(assert (=> b!4903294 d!1575695))

(declare-fun d!1575697 () Bool)

(declare-fun isBalanced!4028 (Conc!14795) Bool)

(assert (=> d!1575697 (= (inv!72961 input!1509) (isBalanced!4028 (c!833298 input!1509)))))

(declare-fun bs!1176879 () Bool)

(assert (= bs!1176879 d!1575697))

(declare-fun m!5912366 () Bool)

(assert (=> bs!1176879 m!5912366))

(assert (=> start!513706 d!1575697))

(declare-fun d!1575699 () Bool)

(declare-fun c!833343 () Bool)

(assert (=> d!1575699 (= c!833343 (is-Node!14795 (c!833298 input!1509)))))

(declare-fun e!3065275 () Bool)

(assert (=> d!1575699 (= (inv!72960 (c!833298 input!1509)) e!3065275)))

(declare-fun b!4903468 () Bool)

(declare-fun inv!72968 (Conc!14795) Bool)

(assert (=> b!4903468 (= e!3065275 (inv!72968 (c!833298 input!1509)))))

(declare-fun b!4903469 () Bool)

(declare-fun e!3065276 () Bool)

(assert (=> b!4903469 (= e!3065275 e!3065276)))

(declare-fun res!2094593 () Bool)

(assert (=> b!4903469 (= res!2094593 (not (is-Leaf!24626 (c!833298 input!1509))))))

(assert (=> b!4903469 (=> res!2094593 e!3065276)))

(declare-fun b!4903470 () Bool)

(declare-fun inv!72969 (Conc!14795) Bool)

(assert (=> b!4903470 (= e!3065276 (inv!72969 (c!833298 input!1509)))))

(assert (= (and d!1575699 c!833343) b!4903468))

(assert (= (and d!1575699 (not c!833343)) b!4903469))

(assert (= (and b!4903469 (not res!2094593)) b!4903470))

(declare-fun m!5912368 () Bool)

(assert (=> b!4903468 m!5912368))

(declare-fun m!5912370 () Bool)

(assert (=> b!4903470 m!5912370))

(assert (=> b!4903292 d!1575699))

(declare-fun d!1575701 () Bool)

(declare-fun lt!2011447 () Bool)

(assert (=> d!1575701 (= lt!2011447 (isEmpty!30391 (list!17799 (_1!33682 (findLongestMatchWithZipperSequence!315 (regex!8227 rule!164) input!1509)))))))

(declare-fun isEmpty!30396 (Conc!14795) Bool)

(assert (=> d!1575701 (= lt!2011447 (isEmpty!30396 (c!833298 (_1!33682 (findLongestMatchWithZipperSequence!315 (regex!8227 rule!164) input!1509)))))))

(assert (=> d!1575701 (= (isEmpty!30392 (_1!33682 (findLongestMatchWithZipperSequence!315 (regex!8227 rule!164) input!1509))) lt!2011447)))

(declare-fun bs!1176880 () Bool)

(assert (= bs!1176880 d!1575701))

(declare-fun m!5912372 () Bool)

(assert (=> bs!1176880 m!5912372))

(assert (=> bs!1176880 m!5912372))

(declare-fun m!5912374 () Bool)

(assert (=> bs!1176880 m!5912374))

(declare-fun m!5912376 () Bool)

(assert (=> bs!1176880 m!5912376))

(assert (=> b!4903297 d!1575701))

(declare-fun d!1575703 () Bool)

(declare-fun lt!2011450 () tuple2!60758)

(declare-fun findLongestMatch!1659 (Regex!13302 List!56653) tuple2!60756)

(assert (=> d!1575703 (= (tuple2!60757 (list!17799 (_1!33682 lt!2011450)) (list!17799 (_2!33682 lt!2011450))) (findLongestMatch!1659 (regex!8227 rule!164) (list!17799 input!1509)))))

(declare-fun choose!35803 (Regex!13302 BalanceConc!29020) tuple2!60758)

(assert (=> d!1575703 (= lt!2011450 (choose!35803 (regex!8227 rule!164) input!1509))))

(assert (=> d!1575703 (validRegex!5896 (regex!8227 rule!164))))

(assert (=> d!1575703 (= (findLongestMatchWithZipperSequence!315 (regex!8227 rule!164) input!1509) lt!2011450)))

(declare-fun bs!1176881 () Bool)

(assert (= bs!1176881 d!1575703))

(assert (=> bs!1176881 m!5912206))

(declare-fun m!5912378 () Bool)

(assert (=> bs!1176881 m!5912378))

(declare-fun m!5912380 () Bool)

(assert (=> bs!1176881 m!5912380))

(assert (=> bs!1176881 m!5912206))

(declare-fun m!5912382 () Bool)

(assert (=> bs!1176881 m!5912382))

(declare-fun m!5912384 () Bool)

(assert (=> bs!1176881 m!5912384))

(assert (=> bs!1176881 m!5912346))

(assert (=> b!4903297 d!1575703))

(declare-fun b!4903519 () Bool)

(declare-fun res!2094619 () Bool)

(declare-fun e!3065306 () Bool)

(assert (=> b!4903519 (=> (not res!2094619) (not e!3065306))))

(assert (=> b!4903519 (= res!2094619 (isEmpty!30391 (tail!9616 (_1!33681 lt!2011271))))))

(declare-fun b!4903520 () Bool)

(declare-fun e!3065308 () Bool)

(declare-fun lt!2011482 () Bool)

(declare-fun call!340181 () Bool)

(assert (=> b!4903520 (= e!3065308 (= lt!2011482 call!340181))))

(declare-fun b!4903521 () Bool)

(assert (=> b!4903521 (= e!3065306 (= (head!10469 (_1!33681 lt!2011271)) (c!833297 (regex!8227 rule!164))))))

(declare-fun b!4903522 () Bool)

(declare-fun e!3065310 () Bool)

(declare-fun e!3065304 () Bool)

(assert (=> b!4903522 (= e!3065310 e!3065304)))

(declare-fun res!2094617 () Bool)

(assert (=> b!4903522 (=> res!2094617 e!3065304)))

(assert (=> b!4903522 (= res!2094617 call!340181)))

(declare-fun b!4903523 () Bool)

(declare-fun res!2094622 () Bool)

(declare-fun e!3065309 () Bool)

(assert (=> b!4903523 (=> res!2094622 e!3065309)))

(assert (=> b!4903523 (= res!2094622 (not (is-ElementMatch!13302 (regex!8227 rule!164))))))

(declare-fun e!3065307 () Bool)

(assert (=> b!4903523 (= e!3065307 e!3065309)))

(declare-fun b!4903525 () Bool)

(declare-fun e!3065305 () Bool)

(assert (=> b!4903525 (= e!3065305 (matchR!6569 (derivativeStep!3888 (regex!8227 rule!164) (head!10469 (_1!33681 lt!2011271))) (tail!9616 (_1!33681 lt!2011271))))))

(declare-fun b!4903526 () Bool)

(declare-fun res!2094620 () Bool)

(assert (=> b!4903526 (=> res!2094620 e!3065304)))

(assert (=> b!4903526 (= res!2094620 (not (isEmpty!30391 (tail!9616 (_1!33681 lt!2011271)))))))

(declare-fun b!4903527 () Bool)

(assert (=> b!4903527 (= e!3065304 (not (= (head!10469 (_1!33681 lt!2011271)) (c!833297 (regex!8227 rule!164)))))))

(declare-fun b!4903528 () Bool)

(assert (=> b!4903528 (= e!3065305 (nullable!4568 (regex!8227 rule!164)))))

(declare-fun bm!340176 () Bool)

(assert (=> bm!340176 (= call!340181 (isEmpty!30391 (_1!33681 lt!2011271)))))

(declare-fun b!4903529 () Bool)

(declare-fun res!2094618 () Bool)

(assert (=> b!4903529 (=> res!2094618 e!3065309)))

(assert (=> b!4903529 (= res!2094618 e!3065306)))

(declare-fun res!2094623 () Bool)

(assert (=> b!4903529 (=> (not res!2094623) (not e!3065306))))

(assert (=> b!4903529 (= res!2094623 lt!2011482)))

(declare-fun b!4903530 () Bool)

(assert (=> b!4903530 (= e!3065307 (not lt!2011482))))

(declare-fun b!4903531 () Bool)

(assert (=> b!4903531 (= e!3065309 e!3065310)))

(declare-fun res!2094621 () Bool)

(assert (=> b!4903531 (=> (not res!2094621) (not e!3065310))))

(assert (=> b!4903531 (= res!2094621 (not lt!2011482))))

(declare-fun b!4903532 () Bool)

(assert (=> b!4903532 (= e!3065308 e!3065307)))

(declare-fun c!833358 () Bool)

(assert (=> b!4903532 (= c!833358 (is-EmptyLang!13302 (regex!8227 rule!164)))))

(declare-fun d!1575705 () Bool)

(assert (=> d!1575705 e!3065308))

(declare-fun c!833359 () Bool)

(assert (=> d!1575705 (= c!833359 (is-EmptyExpr!13302 (regex!8227 rule!164)))))

(assert (=> d!1575705 (= lt!2011482 e!3065305)))

(declare-fun c!833357 () Bool)

(assert (=> d!1575705 (= c!833357 (isEmpty!30391 (_1!33681 lt!2011271)))))

(assert (=> d!1575705 (validRegex!5896 (regex!8227 rule!164))))

(assert (=> d!1575705 (= (matchR!6569 (regex!8227 rule!164) (_1!33681 lt!2011271)) lt!2011482)))

(declare-fun b!4903524 () Bool)

(declare-fun res!2094616 () Bool)

(assert (=> b!4903524 (=> (not res!2094616) (not e!3065306))))

(assert (=> b!4903524 (= res!2094616 (not call!340181))))

(assert (= (and d!1575705 c!833357) b!4903528))

(assert (= (and d!1575705 (not c!833357)) b!4903525))

(assert (= (and d!1575705 c!833359) b!4903520))

(assert (= (and d!1575705 (not c!833359)) b!4903532))

(assert (= (and b!4903532 c!833358) b!4903530))

(assert (= (and b!4903532 (not c!833358)) b!4903523))

(assert (= (and b!4903523 (not res!2094622)) b!4903529))

(assert (= (and b!4903529 res!2094623) b!4903524))

(assert (= (and b!4903524 res!2094616) b!4903519))

(assert (= (and b!4903519 res!2094619) b!4903521))

(assert (= (and b!4903529 (not res!2094618)) b!4903531))

(assert (= (and b!4903531 res!2094621) b!4903522))

(assert (= (and b!4903522 (not res!2094617)) b!4903526))

(assert (= (and b!4903526 (not res!2094620)) b!4903527))

(assert (= (or b!4903520 b!4903522 b!4903524) bm!340176))

(assert (=> b!4903528 m!5912302))

(assert (=> d!1575705 m!5912204))

(assert (=> d!1575705 m!5912346))

(declare-fun m!5912442 () Bool)

(assert (=> b!4903525 m!5912442))

(assert (=> b!4903525 m!5912442))

(declare-fun m!5912444 () Bool)

(assert (=> b!4903525 m!5912444))

(declare-fun m!5912446 () Bool)

(assert (=> b!4903525 m!5912446))

(assert (=> b!4903525 m!5912444))

(assert (=> b!4903525 m!5912446))

(declare-fun m!5912448 () Bool)

(assert (=> b!4903525 m!5912448))

(assert (=> b!4903519 m!5912446))

(assert (=> b!4903519 m!5912446))

(declare-fun m!5912450 () Bool)

(assert (=> b!4903519 m!5912450))

(assert (=> b!4903527 m!5912442))

(assert (=> b!4903526 m!5912446))

(assert (=> b!4903526 m!5912446))

(assert (=> b!4903526 m!5912450))

(assert (=> bm!340176 m!5912204))

(assert (=> b!4903521 m!5912442))

(assert (=> b!4903291 d!1575705))

(declare-fun d!1575715 () Bool)

(assert (=> d!1575715 (= (inv!72957 (tag!9091 rule!164)) (= (mod (str.len (value!263579 (tag!9091 rule!164))) 2) 0))))

(assert (=> b!4903296 d!1575715))

(declare-fun d!1575717 () Bool)

(declare-fun res!2094642 () Bool)

(declare-fun e!3065327 () Bool)

(assert (=> d!1575717 (=> (not res!2094642) (not e!3065327))))

(assert (=> d!1575717 (= res!2094642 (semiInverseModEq!3628 (toChars!10999 (transformation!8227 rule!164)) (toValue!11140 (transformation!8227 rule!164))))))

(assert (=> d!1575717 (= (inv!72962 (transformation!8227 rule!164)) e!3065327)))

(declare-fun b!4903563 () Bool)

(assert (=> b!4903563 (= e!3065327 (equivClasses!3482 (toChars!10999 (transformation!8227 rule!164)) (toValue!11140 (transformation!8227 rule!164))))))

(assert (= (and d!1575717 res!2094642) b!4903563))

(assert (=> d!1575717 m!5912194))

(assert (=> b!4903563 m!5912350))

(assert (=> b!4903296 d!1575717))

(declare-fun tp!1379638 () Bool)

(declare-fun b!4903572 () Bool)

(declare-fun e!3065333 () Bool)

(declare-fun tp!1379639 () Bool)

(assert (=> b!4903572 (= e!3065333 (and (inv!72960 (left!41141 (c!833298 input!1509))) tp!1379639 (inv!72960 (right!41471 (c!833298 input!1509))) tp!1379638))))

(declare-fun b!4903574 () Bool)

(declare-fun e!3065332 () Bool)

(declare-fun tp!1379640 () Bool)

(assert (=> b!4903574 (= e!3065332 tp!1379640)))

(declare-fun b!4903573 () Bool)

(declare-fun inv!72970 (IArray!29651) Bool)

(assert (=> b!4903573 (= e!3065333 (and (inv!72970 (xs!18111 (c!833298 input!1509))) e!3065332))))

(assert (=> b!4903292 (= tp!1379616 (and (inv!72960 (c!833298 input!1509)) e!3065333))))

(assert (= (and b!4903292 (is-Node!14795 (c!833298 input!1509))) b!4903572))

(assert (= b!4903573 b!4903574))

(assert (= (and b!4903292 (is-Leaf!24626 (c!833298 input!1509))) b!4903573))

(declare-fun m!5912452 () Bool)

(assert (=> b!4903572 m!5912452))

(declare-fun m!5912454 () Bool)

(assert (=> b!4903572 m!5912454))

(declare-fun m!5912456 () Bool)

(assert (=> b!4903573 m!5912456))

(assert (=> b!4903292 m!5912186))

(declare-fun b!4903600 () Bool)

(declare-fun e!3065343 () Bool)

(declare-fun tp!1379655 () Bool)

(declare-fun tp!1379652 () Bool)

(assert (=> b!4903600 (= e!3065343 (and tp!1379655 tp!1379652))))

(assert (=> b!4903296 (= tp!1379617 e!3065343)))

(declare-fun b!4903601 () Bool)

(declare-fun tp!1379653 () Bool)

(assert (=> b!4903601 (= e!3065343 tp!1379653)))

(declare-fun b!4903599 () Bool)

(declare-fun tp_is_empty!35813 () Bool)

(assert (=> b!4903599 (= e!3065343 tp_is_empty!35813)))

(declare-fun b!4903602 () Bool)

(declare-fun tp!1379651 () Bool)

(declare-fun tp!1379654 () Bool)

(assert (=> b!4903602 (= e!3065343 (and tp!1379651 tp!1379654))))

(assert (= (and b!4903296 (is-ElementMatch!13302 (regex!8227 rule!164))) b!4903599))

(assert (= (and b!4903296 (is-Concat!21839 (regex!8227 rule!164))) b!4903600))

(assert (= (and b!4903296 (is-Star!13302 (regex!8227 rule!164))) b!4903601))

(assert (= (and b!4903296 (is-Union!13302 (regex!8227 rule!164))) b!4903602))

(push 1)

(assert (not b_next!132671))

(assert (not d!1575703))

(assert (not b!4903528))

(assert (not b!4903526))

(assert (not b!4903574))

(assert (not d!1575683))

(assert (not bm!340144))

(assert (not d!1575651))

(assert (not b!4903407))

(assert (not b!4903527))

(assert (not b!4903422))

(assert (not b!4903416))

(assert (not b!4903401))

(assert (not bm!340148))

(assert (not b!4903572))

(assert tp_is_empty!35813)

(assert (not bm!340149))

(assert b_and!346273)

(assert (not b!4903410))

(assert (not b!4903429))

(assert (not b!4903436))

(assert (not d!1575701))

(assert (not d!1575705))

(assert (not bm!340143))

(assert (not d!1575697))

(assert (not b!4903292))

(assert (not b!4903431))

(assert (not b!4903519))

(assert (not b!4903521))

(assert (not b!4903468))

(assert (not d!1575653))

(assert (not bm!340142))

(assert (not b!4903573))

(assert (not b!4903413))

(assert (not bm!340176))

(assert (not bm!340146))

(assert (not b!4903600))

(assert (not b!4903563))

(assert (not d!1575717))

(assert (not d!1575693))

(assert (not b_next!132669))

(assert (not d!1575687))

(assert (not d!1575689))

(assert (not b!4903470))

(assert (not b!4903601))

(assert (not b!4903602))

(assert (not bm!340145))

(assert (not b!4903525))

(assert b_and!346271)

(assert (not bm!340147))

(assert (not d!1575695))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346273)

(assert b_and!346271)

(assert (not b_next!132671))

(assert (not b_next!132669))

(check-sat)

(pop 1)

