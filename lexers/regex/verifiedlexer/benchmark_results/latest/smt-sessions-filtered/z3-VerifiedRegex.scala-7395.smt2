; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!393214 () Bool)

(assert start!393214)

(declare-fun b!4138365 () Bool)

(declare-fun b_free!117731 () Bool)

(declare-fun b_next!118435 () Bool)

(assert (=> b!4138365 (= b_free!117731 (not b_next!118435))))

(declare-fun tp!1261463 () Bool)

(declare-fun b_and!321217 () Bool)

(assert (=> b!4138365 (= tp!1261463 b_and!321217)))

(declare-fun b_free!117733 () Bool)

(declare-fun b_next!118437 () Bool)

(assert (=> b!4138365 (= b_free!117733 (not b_next!118437))))

(declare-fun tp!1261467 () Bool)

(declare-fun b_and!321219 () Bool)

(assert (=> b!4138365 (= tp!1261467 b_and!321219)))

(declare-fun b!4138387 () Bool)

(declare-fun b_free!117735 () Bool)

(declare-fun b_next!118439 () Bool)

(assert (=> b!4138387 (= b_free!117735 (not b_next!118439))))

(declare-fun tp!1261461 () Bool)

(declare-fun b_and!321221 () Bool)

(assert (=> b!4138387 (= tp!1261461 b_and!321221)))

(declare-fun b_free!117737 () Bool)

(declare-fun b_next!118441 () Bool)

(assert (=> b!4138387 (= b_free!117737 (not b_next!118441))))

(declare-fun tp!1261468 () Bool)

(declare-fun b_and!321223 () Bool)

(assert (=> b!4138387 (= tp!1261468 b_and!321223)))

(declare-fun b!4138378 () Bool)

(declare-fun b_free!117739 () Bool)

(declare-fun b_next!118443 () Bool)

(assert (=> b!4138378 (= b_free!117739 (not b_next!118443))))

(declare-fun tp!1261462 () Bool)

(declare-fun b_and!321225 () Bool)

(assert (=> b!4138378 (= tp!1261462 b_and!321225)))

(declare-fun b_free!117741 () Bool)

(declare-fun b_next!118445 () Bool)

(assert (=> b!4138378 (= b_free!117741 (not b_next!118445))))

(declare-fun tp!1261469 () Bool)

(declare-fun b_and!321227 () Bool)

(assert (=> b!4138378 (= tp!1261469 b_and!321227)))

(declare-fun b!4138364 () Bool)

(declare-fun res!1692667 () Bool)

(declare-fun e!2567729 () Bool)

(assert (=> b!4138364 (=> (not res!1692667) (not e!2567729))))

(declare-datatypes ((List!44986 0))(
  ( (Nil!44862) (Cons!44862 (h!50282 (_ BitVec 16)) (t!342167 List!44986)) )
))
(declare-datatypes ((TokenValue!7592 0))(
  ( (FloatLiteralValue!15184 (text!53589 List!44986)) (TokenValueExt!7591 (__x!27401 Int)) (Broken!37960 (value!230345 List!44986)) (Object!7715) (End!7592) (Def!7592) (Underscore!7592) (Match!7592) (Else!7592) (Error!7592) (Case!7592) (If!7592) (Extends!7592) (Abstract!7592) (Class!7592) (Val!7592) (DelimiterValue!15184 (del!7652 List!44986)) (KeywordValue!7598 (value!230346 List!44986)) (CommentValue!15184 (value!230347 List!44986)) (WhitespaceValue!15184 (value!230348 List!44986)) (IndentationValue!7592 (value!230349 List!44986)) (String!51709) (Int32!7592) (Broken!37961 (value!230350 List!44986)) (Boolean!7593) (Unit!64168) (OperatorValue!7595 (op!7652 List!44986)) (IdentifierValue!15184 (value!230351 List!44986)) (IdentifierValue!15185 (value!230352 List!44986)) (WhitespaceValue!15185 (value!230353 List!44986)) (True!15184) (False!15184) (Broken!37962 (value!230354 List!44986)) (Broken!37963 (value!230355 List!44986)) (True!15185) (RightBrace!7592) (RightBracket!7592) (Colon!7592) (Null!7592) (Comma!7592) (LeftBracket!7592) (False!15185) (LeftBrace!7592) (ImaginaryLiteralValue!7592 (text!53590 List!44986)) (StringLiteralValue!22776 (value!230356 List!44986)) (EOFValue!7592 (value!230357 List!44986)) (IdentValue!7592 (value!230358 List!44986)) (DelimiterValue!15185 (value!230359 List!44986)) (DedentValue!7592 (value!230360 List!44986)) (NewLineValue!7592 (value!230361 List!44986)) (IntegerValue!22776 (value!230362 (_ BitVec 32)) (text!53591 List!44986)) (IntegerValue!22777 (value!230363 Int) (text!53592 List!44986)) (Times!7592) (Or!7592) (Equal!7592) (Minus!7592) (Broken!37964 (value!230364 List!44986)) (And!7592) (Div!7592) (LessEqual!7592) (Mod!7592) (Concat!19859) (Not!7592) (Plus!7592) (SpaceValue!7592 (value!230365 List!44986)) (IntegerValue!22778 (value!230366 Int) (text!53593 List!44986)) (StringLiteralValue!22777 (text!53594 List!44986)) (FloatLiteralValue!15185 (text!53595 List!44986)) (BytesLiteralValue!7592 (value!230367 List!44986)) (CommentValue!15185 (value!230368 List!44986)) (StringLiteralValue!22778 (value!230369 List!44986)) (ErrorTokenValue!7592 (msg!7653 List!44986)) )
))
(declare-datatypes ((C!24720 0))(
  ( (C!24721 (val!14470 Int)) )
))
(declare-datatypes ((List!44987 0))(
  ( (Nil!44863) (Cons!44863 (h!50283 C!24720) (t!342168 List!44987)) )
))
(declare-datatypes ((IArray!27151 0))(
  ( (IArray!27152 (innerList!13633 List!44987)) )
))
(declare-datatypes ((Conc!13573 0))(
  ( (Node!13573 (left!33596 Conc!13573) (right!33926 Conc!13573) (csize!27376 Int) (cheight!13784 Int)) (Leaf!20969 (xs!16879 IArray!27151) (csize!27377 Int)) (Empty!13573) )
))
(declare-datatypes ((BalanceConc!26740 0))(
  ( (BalanceConc!26741 (c!709590 Conc!13573)) )
))
(declare-datatypes ((Regex!12267 0))(
  ( (ElementMatch!12267 (c!709591 C!24720)) (Concat!19860 (regOne!25046 Regex!12267) (regTwo!25046 Regex!12267)) (EmptyExpr!12267) (Star!12267 (reg!12596 Regex!12267)) (EmptyLang!12267) (Union!12267 (regOne!25047 Regex!12267) (regTwo!25047 Regex!12267)) )
))
(declare-datatypes ((String!51710 0))(
  ( (String!51711 (value!230370 String)) )
))
(declare-datatypes ((TokenValueInjection!14612 0))(
  ( (TokenValueInjection!14613 (toValue!10026 Int) (toChars!9885 Int)) )
))
(declare-datatypes ((Rule!14524 0))(
  ( (Rule!14525 (regex!7362 Regex!12267) (tag!8222 String!51710) (isSeparator!7362 Bool) (transformation!7362 TokenValueInjection!14612)) )
))
(declare-datatypes ((List!44988 0))(
  ( (Nil!44864) (Cons!44864 (h!50284 Rule!14524) (t!342169 List!44988)) )
))
(declare-fun rules!3756 () List!44988)

(declare-fun isEmpty!26739 (List!44988) Bool)

(assert (=> b!4138364 (= res!1692667 (not (isEmpty!26739 rules!3756)))))

(declare-fun e!2567723 () Bool)

(assert (=> b!4138365 (= e!2567723 (and tp!1261463 tp!1261467))))

(declare-fun b!4138366 () Bool)

(declare-fun e!2567714 () Bool)

(declare-fun e!2567730 () Bool)

(assert (=> b!4138366 (= e!2567714 e!2567730)))

(declare-fun res!1692678 () Bool)

(assert (=> b!4138366 (=> res!1692678 e!2567730)))

(declare-datatypes ((Token!13654 0))(
  ( (Token!13655 (value!230371 TokenValue!7592) (rule!10466 Rule!14524) (size!33220 Int) (originalCharacters!7858 List!44987)) )
))
(declare-datatypes ((tuple2!43254 0))(
  ( (tuple2!43255 (_1!24761 Token!13654) (_2!24761 List!44987)) )
))
(declare-datatypes ((Option!9668 0))(
  ( (None!9667) (Some!9667 (v!40299 tuple2!43254)) )
))
(declare-fun lt!1475635 () Option!9668)

(declare-fun isEmpty!26740 (Option!9668) Bool)

(assert (=> b!4138366 (= res!1692678 (isEmpty!26740 lt!1475635))))

(declare-datatypes ((LexerInterface!6951 0))(
  ( (LexerInterfaceExt!6948 (__x!27402 Int)) (Lexer!6949) )
))
(declare-fun thiss!25645 () LexerInterface!6951)

(declare-fun input!3238 () List!44987)

(declare-fun rBis!149 () Rule!14524)

(declare-fun maxPrefixOneRule!3080 (LexerInterface!6951 Rule!14524 List!44987) Option!9668)

(assert (=> b!4138366 (= lt!1475635 (maxPrefixOneRule!3080 thiss!25645 rBis!149 input!3238))))

(declare-fun r!4008 () Rule!14524)

(assert (=> b!4138366 (not (= rBis!149 r!4008))))

(declare-datatypes ((Unit!64169 0))(
  ( (Unit!64170) )
))
(declare-fun lt!1475632 () Unit!64169)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!60 (LexerInterface!6951 List!44988 Rule!14524 Rule!14524) Unit!64169)

(assert (=> b!4138366 (= lt!1475632 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!60 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9042 (List!44988 Rule!14524) Bool)

(declare-fun tail!6527 (List!44988) List!44988)

(assert (=> b!4138366 (contains!9042 (tail!6527 rules!3756) r!4008)))

(declare-fun lt!1475630 () Unit!64169)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!66 (List!44988 Rule!14524 Rule!14524) Unit!64169)

(assert (=> b!4138366 (= lt!1475630 (lemmaGetIndexBiggerAndHeadEqThenTailContains!66 rules!3756 rBis!149 r!4008))))

(declare-fun e!2567719 () Bool)

(declare-fun b!4138367 () Bool)

(declare-fun e!2567718 () Bool)

(declare-fun tp!1261466 () Bool)

(declare-fun inv!59468 (String!51710) Bool)

(declare-fun inv!59470 (TokenValueInjection!14612) Bool)

(assert (=> b!4138367 (= e!2567719 (and tp!1261466 (inv!59468 (tag!8222 rBis!149)) (inv!59470 (transformation!7362 rBis!149)) e!2567718))))

(declare-fun b!4138368 () Bool)

(declare-fun res!1692676 () Bool)

(assert (=> b!4138368 (=> (not res!1692676) (not e!2567729))))

(declare-fun p!2912 () List!44987)

(declare-fun isEmpty!26741 (List!44987) Bool)

(assert (=> b!4138368 (= res!1692676 (not (isEmpty!26741 p!2912)))))

(declare-fun b!4138369 () Bool)

(declare-fun e!2567727 () Bool)

(declare-fun e!2567722 () Bool)

(assert (=> b!4138369 (= e!2567727 e!2567722)))

(declare-fun res!1692674 () Bool)

(assert (=> b!4138369 (=> res!1692674 e!2567722)))

(declare-fun lt!1475637 () List!44987)

(declare-fun ++!11606 (List!44987 List!44987) List!44987)

(assert (=> b!4138369 (= res!1692674 (not (= (++!11606 p!2912 lt!1475637) input!3238)))))

(declare-fun lt!1475628 () List!44987)

(declare-fun lt!1475633 () List!44987)

(declare-fun getSuffix!2624 (List!44987 List!44987) List!44987)

(assert (=> b!4138369 (= lt!1475628 (getSuffix!2624 input!3238 lt!1475633))))

(declare-fun lt!1475636 () BalanceConc!26740)

(declare-fun list!16429 (BalanceConc!26740) List!44987)

(assert (=> b!4138369 (= lt!1475633 (list!16429 lt!1475636))))

(declare-fun b!4138370 () Bool)

(declare-fun e!2567717 () Bool)

(assert (=> b!4138370 (= e!2567722 e!2567717)))

(declare-fun res!1692664 () Bool)

(assert (=> b!4138370 (=> res!1692664 e!2567717)))

(declare-fun lt!1475624 () tuple2!43254)

(assert (=> b!4138370 (= res!1692664 (or (not (= lt!1475635 (Some!9667 (tuple2!43255 (_1!24761 lt!1475624) lt!1475628)))) (not (= (rule!10466 (_1!24761 lt!1475624)) rBis!149))))))

(declare-fun isPrefix!4297 (List!44987 List!44987) Bool)

(assert (=> b!4138370 (isPrefix!4297 input!3238 input!3238)))

(declare-fun lt!1475627 () Unit!64169)

(declare-fun lemmaIsPrefixRefl!2780 (List!44987 List!44987) Unit!64169)

(assert (=> b!4138370 (= lt!1475627 (lemmaIsPrefixRefl!2780 input!3238 input!3238))))

(declare-fun b!4138371 () Bool)

(declare-fun res!1692671 () Bool)

(declare-fun e!2567721 () Bool)

(assert (=> b!4138371 (=> (not res!1692671) (not e!2567721))))

(declare-fun matchR!6096 (Regex!12267 List!44987) Bool)

(assert (=> b!4138371 (= res!1692671 (matchR!6096 (regex!7362 r!4008) p!2912))))

(declare-fun b!4138372 () Bool)

(declare-fun e!2567713 () Bool)

(declare-fun e!2567728 () Bool)

(declare-fun tp!1261464 () Bool)

(assert (=> b!4138372 (= e!2567713 (and e!2567728 tp!1261464))))

(declare-fun tp!1261470 () Bool)

(declare-fun b!4138373 () Bool)

(declare-fun e!2567716 () Bool)

(declare-fun e!2567715 () Bool)

(assert (=> b!4138373 (= e!2567716 (and tp!1261470 (inv!59468 (tag!8222 r!4008)) (inv!59470 (transformation!7362 r!4008)) e!2567715))))

(declare-fun b!4138374 () Bool)

(assert (=> b!4138374 (= e!2567729 e!2567721)))

(declare-fun res!1692668 () Bool)

(assert (=> b!4138374 (=> (not res!1692668) (not e!2567721))))

(declare-fun lt!1475634 () TokenValue!7592)

(declare-fun lt!1475625 () Int)

(declare-fun maxPrefix!4141 (LexerInterface!6951 List!44988 List!44987) Option!9668)

(assert (=> b!4138374 (= res!1692668 (= (maxPrefix!4141 thiss!25645 rules!3756 input!3238) (Some!9667 (tuple2!43255 (Token!13655 lt!1475634 r!4008 lt!1475625 p!2912) lt!1475637))))))

(assert (=> b!4138374 (= lt!1475637 (getSuffix!2624 input!3238 p!2912))))

(declare-fun size!33221 (List!44987) Int)

(assert (=> b!4138374 (= lt!1475625 (size!33221 p!2912))))

(declare-fun lt!1475629 () BalanceConc!26740)

(declare-fun apply!10435 (TokenValueInjection!14612 BalanceConc!26740) TokenValue!7592)

(assert (=> b!4138374 (= lt!1475634 (apply!10435 (transformation!7362 r!4008) lt!1475629))))

(declare-fun lt!1475638 () Unit!64169)

(declare-fun lemmaSemiInverse!2220 (TokenValueInjection!14612 BalanceConc!26740) Unit!64169)

(assert (=> b!4138374 (= lt!1475638 (lemmaSemiInverse!2220 (transformation!7362 r!4008) lt!1475629))))

(declare-fun seqFromList!5479 (List!44987) BalanceConc!26740)

(assert (=> b!4138374 (= lt!1475629 (seqFromList!5479 p!2912))))

(declare-fun b!4138375 () Bool)

(declare-fun res!1692669 () Bool)

(assert (=> b!4138375 (=> (not res!1692669) (not e!2567729))))

(assert (=> b!4138375 (= res!1692669 (isPrefix!4297 p!2912 input!3238))))

(declare-fun tp!1261472 () Bool)

(declare-fun b!4138376 () Bool)

(assert (=> b!4138376 (= e!2567728 (and tp!1261472 (inv!59468 (tag!8222 (h!50284 rules!3756))) (inv!59470 (transformation!7362 (h!50284 rules!3756))) e!2567723))))

(declare-fun res!1692670 () Bool)

(assert (=> start!393214 (=> (not res!1692670) (not e!2567729))))

(get-info :version)

(assert (=> start!393214 (= res!1692670 ((_ is Lexer!6949) thiss!25645))))

(assert (=> start!393214 e!2567729))

(assert (=> start!393214 e!2567713))

(declare-fun e!2567725 () Bool)

(assert (=> start!393214 e!2567725))

(assert (=> start!393214 true))

(assert (=> start!393214 e!2567716))

(declare-fun e!2567726 () Bool)

(assert (=> start!393214 e!2567726))

(assert (=> start!393214 e!2567719))

(declare-fun b!4138363 () Bool)

(declare-fun res!1692663 () Bool)

(assert (=> b!4138363 (=> (not res!1692663) (not e!2567729))))

(assert (=> b!4138363 (= res!1692663 (contains!9042 rules!3756 r!4008))))

(declare-fun b!4138377 () Bool)

(declare-fun res!1692672 () Bool)

(assert (=> b!4138377 (=> (not res!1692672) (not e!2567729))))

(declare-fun rulesInvariant!6248 (LexerInterface!6951 List!44988) Bool)

(assert (=> b!4138377 (= res!1692672 (rulesInvariant!6248 thiss!25645 rules!3756))))

(assert (=> b!4138378 (= e!2567718 (and tp!1261462 tp!1261469))))

(declare-fun b!4138379 () Bool)

(declare-fun tp_is_empty!21457 () Bool)

(declare-fun tp!1261471 () Bool)

(assert (=> b!4138379 (= e!2567726 (and tp_is_empty!21457 tp!1261471))))

(declare-fun b!4138380 () Bool)

(declare-fun tp!1261465 () Bool)

(assert (=> b!4138380 (= e!2567725 (and tp_is_empty!21457 tp!1261465))))

(declare-fun b!4138381 () Bool)

(assert (=> b!4138381 (= e!2567730 e!2567727)))

(declare-fun res!1692666 () Bool)

(assert (=> b!4138381 (=> res!1692666 e!2567727)))

(declare-fun size!33222 (BalanceConc!26740) Int)

(assert (=> b!4138381 (= res!1692666 (<= (size!33222 lt!1475636) lt!1475625))))

(declare-fun charsOf!4961 (Token!13654) BalanceConc!26740)

(assert (=> b!4138381 (= lt!1475636 (charsOf!4961 (_1!24761 lt!1475624)))))

(declare-fun get!14638 (Option!9668) tuple2!43254)

(assert (=> b!4138381 (= lt!1475624 (get!14638 lt!1475635))))

(declare-fun b!4138382 () Bool)

(assert (=> b!4138382 (= e!2567717 (= (++!11606 lt!1475633 lt!1475628) input!3238))))

(declare-fun b!4138383 () Bool)

(assert (=> b!4138383 (= e!2567721 (not e!2567714))))

(declare-fun res!1692675 () Bool)

(assert (=> b!4138383 (=> res!1692675 e!2567714)))

(assert (=> b!4138383 (= res!1692675 (or (not ((_ is Cons!44864) rules!3756)) (not (= (h!50284 rules!3756) rBis!149))))))

(declare-fun lt!1475626 () Unit!64169)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2208 (LexerInterface!6951 Rule!14524 List!44988) Unit!64169)

(assert (=> b!4138383 (= lt!1475626 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2208 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3168 (LexerInterface!6951 Rule!14524) Bool)

(assert (=> b!4138383 (ruleValid!3168 thiss!25645 rBis!149)))

(declare-fun lt!1475631 () Unit!64169)

(assert (=> b!4138383 (= lt!1475631 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2208 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4138384 () Bool)

(declare-fun res!1692677 () Bool)

(assert (=> b!4138384 (=> (not res!1692677) (not e!2567721))))

(assert (=> b!4138384 (= res!1692677 (ruleValid!3168 thiss!25645 r!4008))))

(declare-fun b!4138385 () Bool)

(declare-fun res!1692673 () Bool)

(assert (=> b!4138385 (=> res!1692673 e!2567722)))

(assert (=> b!4138385 (= res!1692673 (not (isPrefix!4297 lt!1475633 input!3238)))))

(declare-fun b!4138386 () Bool)

(declare-fun res!1692665 () Bool)

(assert (=> b!4138386 (=> (not res!1692665) (not e!2567729))))

(assert (=> b!4138386 (= res!1692665 (contains!9042 rules!3756 rBis!149))))

(assert (=> b!4138387 (= e!2567715 (and tp!1261461 tp!1261468))))

(declare-fun b!4138388 () Bool)

(declare-fun res!1692662 () Bool)

(assert (=> b!4138388 (=> (not res!1692662) (not e!2567721))))

(declare-fun getIndex!708 (List!44988 Rule!14524) Int)

(assert (=> b!4138388 (= res!1692662 (< (getIndex!708 rules!3756 rBis!149) (getIndex!708 rules!3756 r!4008)))))

(assert (= (and start!393214 res!1692670) b!4138375))

(assert (= (and b!4138375 res!1692669) b!4138364))

(assert (= (and b!4138364 res!1692667) b!4138377))

(assert (= (and b!4138377 res!1692672) b!4138363))

(assert (= (and b!4138363 res!1692663) b!4138386))

(assert (= (and b!4138386 res!1692665) b!4138368))

(assert (= (and b!4138368 res!1692676) b!4138374))

(assert (= (and b!4138374 res!1692668) b!4138371))

(assert (= (and b!4138371 res!1692671) b!4138388))

(assert (= (and b!4138388 res!1692662) b!4138384))

(assert (= (and b!4138384 res!1692677) b!4138383))

(assert (= (and b!4138383 (not res!1692675)) b!4138366))

(assert (= (and b!4138366 (not res!1692678)) b!4138381))

(assert (= (and b!4138381 (not res!1692666)) b!4138369))

(assert (= (and b!4138369 (not res!1692674)) b!4138385))

(assert (= (and b!4138385 (not res!1692673)) b!4138370))

(assert (= (and b!4138370 (not res!1692664)) b!4138382))

(assert (= b!4138376 b!4138365))

(assert (= b!4138372 b!4138376))

(assert (= (and start!393214 ((_ is Cons!44864) rules!3756)) b!4138372))

(assert (= (and start!393214 ((_ is Cons!44863) p!2912)) b!4138380))

(assert (= b!4138373 b!4138387))

(assert (= start!393214 b!4138373))

(assert (= (and start!393214 ((_ is Cons!44863) input!3238)) b!4138379))

(assert (= b!4138367 b!4138378))

(assert (= start!393214 b!4138367))

(declare-fun m!4734847 () Bool)

(assert (=> b!4138373 m!4734847))

(declare-fun m!4734849 () Bool)

(assert (=> b!4138373 m!4734849))

(declare-fun m!4734851 () Bool)

(assert (=> b!4138366 m!4734851))

(declare-fun m!4734853 () Bool)

(assert (=> b!4138366 m!4734853))

(declare-fun m!4734855 () Bool)

(assert (=> b!4138366 m!4734855))

(assert (=> b!4138366 m!4734851))

(declare-fun m!4734857 () Bool)

(assert (=> b!4138366 m!4734857))

(declare-fun m!4734859 () Bool)

(assert (=> b!4138366 m!4734859))

(declare-fun m!4734861 () Bool)

(assert (=> b!4138366 m!4734861))

(declare-fun m!4734863 () Bool)

(assert (=> b!4138368 m!4734863))

(declare-fun m!4734865 () Bool)

(assert (=> b!4138382 m!4734865))

(declare-fun m!4734867 () Bool)

(assert (=> b!4138385 m!4734867))

(declare-fun m!4734869 () Bool)

(assert (=> b!4138388 m!4734869))

(declare-fun m!4734871 () Bool)

(assert (=> b!4138388 m!4734871))

(declare-fun m!4734873 () Bool)

(assert (=> b!4138374 m!4734873))

(declare-fun m!4734875 () Bool)

(assert (=> b!4138374 m!4734875))

(declare-fun m!4734877 () Bool)

(assert (=> b!4138374 m!4734877))

(declare-fun m!4734879 () Bool)

(assert (=> b!4138374 m!4734879))

(declare-fun m!4734881 () Bool)

(assert (=> b!4138374 m!4734881))

(declare-fun m!4734883 () Bool)

(assert (=> b!4138374 m!4734883))

(declare-fun m!4734885 () Bool)

(assert (=> b!4138367 m!4734885))

(declare-fun m!4734887 () Bool)

(assert (=> b!4138367 m!4734887))

(declare-fun m!4734889 () Bool)

(assert (=> b!4138364 m!4734889))

(declare-fun m!4734891 () Bool)

(assert (=> b!4138375 m!4734891))

(declare-fun m!4734893 () Bool)

(assert (=> b!4138363 m!4734893))

(declare-fun m!4734895 () Bool)

(assert (=> b!4138386 m!4734895))

(declare-fun m!4734897 () Bool)

(assert (=> b!4138376 m!4734897))

(declare-fun m!4734899 () Bool)

(assert (=> b!4138376 m!4734899))

(declare-fun m!4734901 () Bool)

(assert (=> b!4138370 m!4734901))

(declare-fun m!4734903 () Bool)

(assert (=> b!4138370 m!4734903))

(declare-fun m!4734905 () Bool)

(assert (=> b!4138369 m!4734905))

(declare-fun m!4734907 () Bool)

(assert (=> b!4138369 m!4734907))

(declare-fun m!4734909 () Bool)

(assert (=> b!4138369 m!4734909))

(declare-fun m!4734911 () Bool)

(assert (=> b!4138377 m!4734911))

(declare-fun m!4734913 () Bool)

(assert (=> b!4138383 m!4734913))

(declare-fun m!4734915 () Bool)

(assert (=> b!4138383 m!4734915))

(declare-fun m!4734917 () Bool)

(assert (=> b!4138383 m!4734917))

(declare-fun m!4734919 () Bool)

(assert (=> b!4138384 m!4734919))

(declare-fun m!4734921 () Bool)

(assert (=> b!4138381 m!4734921))

(declare-fun m!4734923 () Bool)

(assert (=> b!4138381 m!4734923))

(declare-fun m!4734925 () Bool)

(assert (=> b!4138381 m!4734925))

(declare-fun m!4734927 () Bool)

(assert (=> b!4138371 m!4734927))

(check-sat (not b!4138377) (not b!4138385) (not b!4138366) (not b_next!118435) (not b!4138372) (not b!4138363) (not b!4138376) (not b!4138374) b_and!321219 (not b!4138383) (not b!4138382) (not b!4138381) b_and!321227 b_and!321221 (not b!4138367) (not b_next!118445) (not b!4138386) (not b_next!118439) (not b!4138384) (not b_next!118443) (not b_next!118441) (not b!4138364) (not b!4138375) (not b!4138388) (not b!4138379) (not b!4138368) b_and!321217 (not b!4138371) (not b!4138373) tp_is_empty!21457 (not b_next!118437) (not b!4138370) (not b!4138380) b_and!321225 (not b!4138369) b_and!321223)
(check-sat (not b_next!118435) (not b_next!118445) (not b_next!118441) b_and!321217 (not b_next!118437) b_and!321225 b_and!321223 b_and!321219 b_and!321227 b_and!321221 (not b_next!118439) (not b_next!118443))
(get-model)

(declare-fun d!1225376 () Bool)

(assert (=> d!1225376 (= (inv!59468 (tag!8222 (h!50284 rules!3756))) (= (mod (str.len (value!230370 (tag!8222 (h!50284 rules!3756)))) 2) 0))))

(assert (=> b!4138376 d!1225376))

(declare-fun d!1225378 () Bool)

(declare-fun res!1692688 () Bool)

(declare-fun e!2567733 () Bool)

(assert (=> d!1225378 (=> (not res!1692688) (not e!2567733))))

(declare-fun semiInverseModEq!3181 (Int Int) Bool)

(assert (=> d!1225378 (= res!1692688 (semiInverseModEq!3181 (toChars!9885 (transformation!7362 (h!50284 rules!3756))) (toValue!10026 (transformation!7362 (h!50284 rules!3756)))))))

(assert (=> d!1225378 (= (inv!59470 (transformation!7362 (h!50284 rules!3756))) e!2567733)))

(declare-fun b!4138391 () Bool)

(declare-fun equivClasses!3080 (Int Int) Bool)

(assert (=> b!4138391 (= e!2567733 (equivClasses!3080 (toChars!9885 (transformation!7362 (h!50284 rules!3756))) (toValue!10026 (transformation!7362 (h!50284 rules!3756)))))))

(assert (= (and d!1225378 res!1692688) b!4138391))

(declare-fun m!4734929 () Bool)

(assert (=> d!1225378 m!4734929))

(declare-fun m!4734931 () Bool)

(assert (=> b!4138391 m!4734931))

(assert (=> b!4138376 d!1225378))

(declare-fun d!1225382 () Bool)

(declare-fun lt!1475644 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6930 (List!44988) (InoxSet Rule!14524))

(assert (=> d!1225382 (= lt!1475644 (select (content!6930 rules!3756) rBis!149))))

(declare-fun e!2567745 () Bool)

(assert (=> d!1225382 (= lt!1475644 e!2567745)))

(declare-fun res!1692699 () Bool)

(assert (=> d!1225382 (=> (not res!1692699) (not e!2567745))))

(assert (=> d!1225382 (= res!1692699 ((_ is Cons!44864) rules!3756))))

(assert (=> d!1225382 (= (contains!9042 rules!3756 rBis!149) lt!1475644)))

(declare-fun b!4138402 () Bool)

(declare-fun e!2567744 () Bool)

(assert (=> b!4138402 (= e!2567745 e!2567744)))

(declare-fun res!1692700 () Bool)

(assert (=> b!4138402 (=> res!1692700 e!2567744)))

(assert (=> b!4138402 (= res!1692700 (= (h!50284 rules!3756) rBis!149))))

(declare-fun b!4138403 () Bool)

(assert (=> b!4138403 (= e!2567744 (contains!9042 (t!342169 rules!3756) rBis!149))))

(assert (= (and d!1225382 res!1692699) b!4138402))

(assert (= (and b!4138402 (not res!1692700)) b!4138403))

(declare-fun m!4734939 () Bool)

(assert (=> d!1225382 m!4734939))

(declare-fun m!4734941 () Bool)

(assert (=> d!1225382 m!4734941))

(declare-fun m!4734943 () Bool)

(assert (=> b!4138403 m!4734943))

(assert (=> b!4138386 d!1225382))

(declare-fun b!4138420 () Bool)

(declare-fun e!2567756 () Bool)

(declare-fun tail!6529 (List!44987) List!44987)

(assert (=> b!4138420 (= e!2567756 (isPrefix!4297 (tail!6529 p!2912) (tail!6529 input!3238)))))

(declare-fun d!1225386 () Bool)

(declare-fun e!2567755 () Bool)

(assert (=> d!1225386 e!2567755))

(declare-fun res!1692716 () Bool)

(assert (=> d!1225386 (=> res!1692716 e!2567755)))

(declare-fun lt!1475651 () Bool)

(assert (=> d!1225386 (= res!1692716 (not lt!1475651))))

(declare-fun e!2567757 () Bool)

(assert (=> d!1225386 (= lt!1475651 e!2567757)))

(declare-fun res!1692718 () Bool)

(assert (=> d!1225386 (=> res!1692718 e!2567757)))

(assert (=> d!1225386 (= res!1692718 ((_ is Nil!44863) p!2912))))

(assert (=> d!1225386 (= (isPrefix!4297 p!2912 input!3238) lt!1475651)))

(declare-fun b!4138421 () Bool)

(assert (=> b!4138421 (= e!2567755 (>= (size!33221 input!3238) (size!33221 p!2912)))))

(declare-fun b!4138419 () Bool)

(declare-fun res!1692715 () Bool)

(assert (=> b!4138419 (=> (not res!1692715) (not e!2567756))))

(declare-fun head!8730 (List!44987) C!24720)

(assert (=> b!4138419 (= res!1692715 (= (head!8730 p!2912) (head!8730 input!3238)))))

(declare-fun b!4138418 () Bool)

(assert (=> b!4138418 (= e!2567757 e!2567756)))

(declare-fun res!1692717 () Bool)

(assert (=> b!4138418 (=> (not res!1692717) (not e!2567756))))

(assert (=> b!4138418 (= res!1692717 (not ((_ is Nil!44863) input!3238)))))

(assert (= (and d!1225386 (not res!1692718)) b!4138418))

(assert (= (and b!4138418 res!1692717) b!4138419))

(assert (= (and b!4138419 res!1692715) b!4138420))

(assert (= (and d!1225386 (not res!1692716)) b!4138421))

(declare-fun m!4734953 () Bool)

(assert (=> b!4138420 m!4734953))

(declare-fun m!4734955 () Bool)

(assert (=> b!4138420 m!4734955))

(assert (=> b!4138420 m!4734953))

(assert (=> b!4138420 m!4734955))

(declare-fun m!4734957 () Bool)

(assert (=> b!4138420 m!4734957))

(declare-fun m!4734959 () Bool)

(assert (=> b!4138421 m!4734959))

(assert (=> b!4138421 m!4734873))

(declare-fun m!4734961 () Bool)

(assert (=> b!4138419 m!4734961))

(declare-fun m!4734963 () Bool)

(assert (=> b!4138419 m!4734963))

(assert (=> b!4138375 d!1225386))

(declare-fun d!1225394 () Bool)

(assert (=> d!1225394 (= (isEmpty!26739 rules!3756) ((_ is Nil!44864) rules!3756))))

(assert (=> b!4138364 d!1225394))

(declare-fun b!4138428 () Bool)

(declare-fun e!2567762 () Bool)

(assert (=> b!4138428 (= e!2567762 (isPrefix!4297 (tail!6529 lt!1475633) (tail!6529 input!3238)))))

(declare-fun d!1225396 () Bool)

(declare-fun e!2567761 () Bool)

(assert (=> d!1225396 e!2567761))

(declare-fun res!1692720 () Bool)

(assert (=> d!1225396 (=> res!1692720 e!2567761)))

(declare-fun lt!1475654 () Bool)

(assert (=> d!1225396 (= res!1692720 (not lt!1475654))))

(declare-fun e!2567763 () Bool)

(assert (=> d!1225396 (= lt!1475654 e!2567763)))

(declare-fun res!1692722 () Bool)

(assert (=> d!1225396 (=> res!1692722 e!2567763)))

(assert (=> d!1225396 (= res!1692722 ((_ is Nil!44863) lt!1475633))))

(assert (=> d!1225396 (= (isPrefix!4297 lt!1475633 input!3238) lt!1475654)))

(declare-fun b!4138429 () Bool)

(assert (=> b!4138429 (= e!2567761 (>= (size!33221 input!3238) (size!33221 lt!1475633)))))

(declare-fun b!4138427 () Bool)

(declare-fun res!1692719 () Bool)

(assert (=> b!4138427 (=> (not res!1692719) (not e!2567762))))

(assert (=> b!4138427 (= res!1692719 (= (head!8730 lt!1475633) (head!8730 input!3238)))))

(declare-fun b!4138426 () Bool)

(assert (=> b!4138426 (= e!2567763 e!2567762)))

(declare-fun res!1692721 () Bool)

(assert (=> b!4138426 (=> (not res!1692721) (not e!2567762))))

(assert (=> b!4138426 (= res!1692721 (not ((_ is Nil!44863) input!3238)))))

(assert (= (and d!1225396 (not res!1692722)) b!4138426))

(assert (= (and b!4138426 res!1692721) b!4138427))

(assert (= (and b!4138427 res!1692719) b!4138428))

(assert (= (and d!1225396 (not res!1692720)) b!4138429))

(declare-fun m!4734965 () Bool)

(assert (=> b!4138428 m!4734965))

(assert (=> b!4138428 m!4734955))

(assert (=> b!4138428 m!4734965))

(assert (=> b!4138428 m!4734955))

(declare-fun m!4734967 () Bool)

(assert (=> b!4138428 m!4734967))

(assert (=> b!4138429 m!4734959))

(declare-fun m!4734969 () Bool)

(assert (=> b!4138429 m!4734969))

(declare-fun m!4734971 () Bool)

(assert (=> b!4138427 m!4734971))

(assert (=> b!4138427 m!4734963))

(assert (=> b!4138385 d!1225396))

(declare-fun d!1225398 () Bool)

(declare-fun dynLambda!19278 (Int BalanceConc!26740) TokenValue!7592)

(assert (=> d!1225398 (= (apply!10435 (transformation!7362 r!4008) lt!1475629) (dynLambda!19278 (toValue!10026 (transformation!7362 r!4008)) lt!1475629))))

(declare-fun b_lambda!121627 () Bool)

(assert (=> (not b_lambda!121627) (not d!1225398)))

(declare-fun tb!248403 () Bool)

(declare-fun t!342171 () Bool)

(assert (=> (and b!4138365 (= (toValue!10026 (transformation!7362 (h!50284 rules!3756))) (toValue!10026 (transformation!7362 r!4008))) t!342171) tb!248403))

(declare-fun result!302020 () Bool)

(declare-fun inv!21 (TokenValue!7592) Bool)

(assert (=> tb!248403 (= result!302020 (inv!21 (dynLambda!19278 (toValue!10026 (transformation!7362 r!4008)) lt!1475629)))))

(declare-fun m!4734977 () Bool)

(assert (=> tb!248403 m!4734977))

(assert (=> d!1225398 t!342171))

(declare-fun b_and!321229 () Bool)

(assert (= b_and!321217 (and (=> t!342171 result!302020) b_and!321229)))

(declare-fun t!342173 () Bool)

(declare-fun tb!248405 () Bool)

(assert (=> (and b!4138387 (= (toValue!10026 (transformation!7362 r!4008)) (toValue!10026 (transformation!7362 r!4008))) t!342173) tb!248405))

(declare-fun result!302024 () Bool)

(assert (= result!302024 result!302020))

(assert (=> d!1225398 t!342173))

(declare-fun b_and!321231 () Bool)

(assert (= b_and!321221 (and (=> t!342173 result!302024) b_and!321231)))

(declare-fun t!342175 () Bool)

(declare-fun tb!248407 () Bool)

(assert (=> (and b!4138378 (= (toValue!10026 (transformation!7362 rBis!149)) (toValue!10026 (transformation!7362 r!4008))) t!342175) tb!248407))

(declare-fun result!302026 () Bool)

(assert (= result!302026 result!302020))

(assert (=> d!1225398 t!342175))

(declare-fun b_and!321233 () Bool)

(assert (= b_and!321225 (and (=> t!342175 result!302026) b_and!321233)))

(declare-fun m!4734979 () Bool)

(assert (=> d!1225398 m!4734979))

(assert (=> b!4138374 d!1225398))

(declare-fun d!1225404 () Bool)

(declare-fun lt!1475662 () List!44987)

(assert (=> d!1225404 (= (++!11606 p!2912 lt!1475662) input!3238)))

(declare-fun e!2567781 () List!44987)

(assert (=> d!1225404 (= lt!1475662 e!2567781)))

(declare-fun c!709605 () Bool)

(assert (=> d!1225404 (= c!709605 ((_ is Cons!44863) p!2912))))

(assert (=> d!1225404 (>= (size!33221 input!3238) (size!33221 p!2912))))

(assert (=> d!1225404 (= (getSuffix!2624 input!3238 p!2912) lt!1475662)))

(declare-fun b!4138458 () Bool)

(assert (=> b!4138458 (= e!2567781 (getSuffix!2624 (tail!6529 input!3238) (t!342168 p!2912)))))

(declare-fun b!4138460 () Bool)

(assert (=> b!4138460 (= e!2567781 input!3238)))

(assert (= (and d!1225404 c!709605) b!4138458))

(assert (= (and d!1225404 (not c!709605)) b!4138460))

(declare-fun m!4734981 () Bool)

(assert (=> d!1225404 m!4734981))

(assert (=> d!1225404 m!4734959))

(assert (=> d!1225404 m!4734873))

(assert (=> b!4138458 m!4734955))

(assert (=> b!4138458 m!4734955))

(declare-fun m!4734987 () Bool)

(assert (=> b!4138458 m!4734987))

(assert (=> b!4138374 d!1225404))

(declare-fun b!4138515 () Bool)

(declare-fun e!2567814 () Bool)

(declare-fun lt!1475685 () Option!9668)

(assert (=> b!4138515 (= e!2567814 (contains!9042 rules!3756 (rule!10466 (_1!24761 (get!14638 lt!1475685)))))))

(declare-fun b!4138516 () Bool)

(declare-fun res!1692772 () Bool)

(assert (=> b!4138516 (=> (not res!1692772) (not e!2567814))))

(assert (=> b!4138516 (= res!1692772 (= (value!230371 (_1!24761 (get!14638 lt!1475685))) (apply!10435 (transformation!7362 (rule!10466 (_1!24761 (get!14638 lt!1475685)))) (seqFromList!5479 (originalCharacters!7858 (_1!24761 (get!14638 lt!1475685)))))))))

(declare-fun b!4138517 () Bool)

(declare-fun e!2567815 () Option!9668)

(declare-fun call!290467 () Option!9668)

(assert (=> b!4138517 (= e!2567815 call!290467)))

(declare-fun bm!290462 () Bool)

(assert (=> bm!290462 (= call!290467 (maxPrefixOneRule!3080 thiss!25645 (h!50284 rules!3756) input!3238))))

(declare-fun b!4138518 () Bool)

(declare-fun res!1692770 () Bool)

(assert (=> b!4138518 (=> (not res!1692770) (not e!2567814))))

(assert (=> b!4138518 (= res!1692770 (= (list!16429 (charsOf!4961 (_1!24761 (get!14638 lt!1475685)))) (originalCharacters!7858 (_1!24761 (get!14638 lt!1475685)))))))

(declare-fun b!4138519 () Bool)

(declare-fun lt!1475688 () Option!9668)

(declare-fun lt!1475684 () Option!9668)

(assert (=> b!4138519 (= e!2567815 (ite (and ((_ is None!9667) lt!1475688) ((_ is None!9667) lt!1475684)) None!9667 (ite ((_ is None!9667) lt!1475684) lt!1475688 (ite ((_ is None!9667) lt!1475688) lt!1475684 (ite (>= (size!33220 (_1!24761 (v!40299 lt!1475688))) (size!33220 (_1!24761 (v!40299 lt!1475684)))) lt!1475688 lt!1475684)))))))

(assert (=> b!4138519 (= lt!1475688 call!290467)))

(assert (=> b!4138519 (= lt!1475684 (maxPrefix!4141 thiss!25645 (t!342169 rules!3756) input!3238))))

(declare-fun b!4138521 () Bool)

(declare-fun res!1692775 () Bool)

(assert (=> b!4138521 (=> (not res!1692775) (not e!2567814))))

(assert (=> b!4138521 (= res!1692775 (= (++!11606 (list!16429 (charsOf!4961 (_1!24761 (get!14638 lt!1475685)))) (_2!24761 (get!14638 lt!1475685))) input!3238))))

(declare-fun b!4138522 () Bool)

(declare-fun e!2567816 () Bool)

(assert (=> b!4138522 (= e!2567816 e!2567814)))

(declare-fun res!1692773 () Bool)

(assert (=> b!4138522 (=> (not res!1692773) (not e!2567814))))

(declare-fun isDefined!7271 (Option!9668) Bool)

(assert (=> b!4138522 (= res!1692773 (isDefined!7271 lt!1475685))))

(declare-fun b!4138523 () Bool)

(declare-fun res!1692774 () Bool)

(assert (=> b!4138523 (=> (not res!1692774) (not e!2567814))))

(assert (=> b!4138523 (= res!1692774 (matchR!6096 (regex!7362 (rule!10466 (_1!24761 (get!14638 lt!1475685)))) (list!16429 (charsOf!4961 (_1!24761 (get!14638 lt!1475685))))))))

(declare-fun d!1225406 () Bool)

(assert (=> d!1225406 e!2567816))

(declare-fun res!1692776 () Bool)

(assert (=> d!1225406 (=> res!1692776 e!2567816)))

(assert (=> d!1225406 (= res!1692776 (isEmpty!26740 lt!1475685))))

(assert (=> d!1225406 (= lt!1475685 e!2567815)))

(declare-fun c!709612 () Bool)

(assert (=> d!1225406 (= c!709612 (and ((_ is Cons!44864) rules!3756) ((_ is Nil!44864) (t!342169 rules!3756))))))

(declare-fun lt!1475687 () Unit!64169)

(declare-fun lt!1475686 () Unit!64169)

(assert (=> d!1225406 (= lt!1475687 lt!1475686)))

(assert (=> d!1225406 (isPrefix!4297 input!3238 input!3238)))

(assert (=> d!1225406 (= lt!1475686 (lemmaIsPrefixRefl!2780 input!3238 input!3238))))

(declare-fun rulesValidInductive!2731 (LexerInterface!6951 List!44988) Bool)

(assert (=> d!1225406 (rulesValidInductive!2731 thiss!25645 rules!3756)))

(assert (=> d!1225406 (= (maxPrefix!4141 thiss!25645 rules!3756 input!3238) lt!1475685)))

(declare-fun b!4138520 () Bool)

(declare-fun res!1692771 () Bool)

(assert (=> b!4138520 (=> (not res!1692771) (not e!2567814))))

(assert (=> b!4138520 (= res!1692771 (< (size!33221 (_2!24761 (get!14638 lt!1475685))) (size!33221 input!3238)))))

(assert (= (and d!1225406 c!709612) b!4138517))

(assert (= (and d!1225406 (not c!709612)) b!4138519))

(assert (= (or b!4138517 b!4138519) bm!290462))

(assert (= (and d!1225406 (not res!1692776)) b!4138522))

(assert (= (and b!4138522 res!1692773) b!4138518))

(assert (= (and b!4138518 res!1692770) b!4138520))

(assert (= (and b!4138520 res!1692771) b!4138521))

(assert (= (and b!4138521 res!1692775) b!4138516))

(assert (= (and b!4138516 res!1692772) b!4138523))

(assert (= (and b!4138523 res!1692774) b!4138515))

(declare-fun m!4735049 () Bool)

(assert (=> b!4138523 m!4735049))

(declare-fun m!4735051 () Bool)

(assert (=> b!4138523 m!4735051))

(assert (=> b!4138523 m!4735051))

(declare-fun m!4735053 () Bool)

(assert (=> b!4138523 m!4735053))

(assert (=> b!4138523 m!4735053))

(declare-fun m!4735055 () Bool)

(assert (=> b!4138523 m!4735055))

(assert (=> b!4138518 m!4735049))

(assert (=> b!4138518 m!4735051))

(assert (=> b!4138518 m!4735051))

(assert (=> b!4138518 m!4735053))

(assert (=> b!4138515 m!4735049))

(declare-fun m!4735057 () Bool)

(assert (=> b!4138515 m!4735057))

(declare-fun m!4735059 () Bool)

(assert (=> b!4138519 m!4735059))

(declare-fun m!4735061 () Bool)

(assert (=> d!1225406 m!4735061))

(assert (=> d!1225406 m!4734901))

(assert (=> d!1225406 m!4734903))

(declare-fun m!4735063 () Bool)

(assert (=> d!1225406 m!4735063))

(assert (=> b!4138516 m!4735049))

(declare-fun m!4735065 () Bool)

(assert (=> b!4138516 m!4735065))

(assert (=> b!4138516 m!4735065))

(declare-fun m!4735067 () Bool)

(assert (=> b!4138516 m!4735067))

(declare-fun m!4735069 () Bool)

(assert (=> b!4138522 m!4735069))

(assert (=> b!4138520 m!4735049))

(declare-fun m!4735071 () Bool)

(assert (=> b!4138520 m!4735071))

(assert (=> b!4138520 m!4734959))

(declare-fun m!4735073 () Bool)

(assert (=> bm!290462 m!4735073))

(assert (=> b!4138521 m!4735049))

(assert (=> b!4138521 m!4735051))

(assert (=> b!4138521 m!4735051))

(assert (=> b!4138521 m!4735053))

(assert (=> b!4138521 m!4735053))

(declare-fun m!4735075 () Bool)

(assert (=> b!4138521 m!4735075))

(assert (=> b!4138374 d!1225406))

(declare-fun b!4138651 () Bool)

(declare-fun e!2567881 () Bool)

(assert (=> b!4138651 (= e!2567881 true)))

(declare-fun d!1225436 () Bool)

(assert (=> d!1225436 e!2567881))

(assert (= d!1225436 b!4138651))

(declare-fun order!23725 () Int)

(declare-fun order!23723 () Int)

(declare-fun lambda!128928 () Int)

(declare-fun dynLambda!19280 (Int Int) Int)

(declare-fun dynLambda!19281 (Int Int) Int)

(assert (=> b!4138651 (< (dynLambda!19280 order!23723 (toValue!10026 (transformation!7362 r!4008))) (dynLambda!19281 order!23725 lambda!128928))))

(declare-fun order!23727 () Int)

(declare-fun dynLambda!19282 (Int Int) Int)

(assert (=> b!4138651 (< (dynLambda!19282 order!23727 (toChars!9885 (transformation!7362 r!4008))) (dynLambda!19281 order!23725 lambda!128928))))

(declare-fun dynLambda!19283 (Int TokenValue!7592) BalanceConc!26740)

(assert (=> d!1225436 (= (list!16429 (dynLambda!19283 (toChars!9885 (transformation!7362 r!4008)) (dynLambda!19278 (toValue!10026 (transformation!7362 r!4008)) lt!1475629))) (list!16429 lt!1475629))))

(declare-fun lt!1475745 () Unit!64169)

(declare-fun ForallOf!963 (Int BalanceConc!26740) Unit!64169)

(assert (=> d!1225436 (= lt!1475745 (ForallOf!963 lambda!128928 lt!1475629))))

(assert (=> d!1225436 (= (lemmaSemiInverse!2220 (transformation!7362 r!4008) lt!1475629) lt!1475745)))

(declare-fun b_lambda!121633 () Bool)

(assert (=> (not b_lambda!121633) (not d!1225436)))

(declare-fun t!342189 () Bool)

(declare-fun tb!248421 () Bool)

(assert (=> (and b!4138365 (= (toChars!9885 (transformation!7362 (h!50284 rules!3756))) (toChars!9885 (transformation!7362 r!4008))) t!342189) tb!248421))

(declare-fun b!4138656 () Bool)

(declare-fun e!2567884 () Bool)

(declare-fun tp!1261478 () Bool)

(declare-fun inv!59473 (Conc!13573) Bool)

(assert (=> b!4138656 (= e!2567884 (and (inv!59473 (c!709590 (dynLambda!19283 (toChars!9885 (transformation!7362 r!4008)) (dynLambda!19278 (toValue!10026 (transformation!7362 r!4008)) lt!1475629)))) tp!1261478))))

(declare-fun result!302044 () Bool)

(declare-fun inv!59474 (BalanceConc!26740) Bool)

(assert (=> tb!248421 (= result!302044 (and (inv!59474 (dynLambda!19283 (toChars!9885 (transformation!7362 r!4008)) (dynLambda!19278 (toValue!10026 (transformation!7362 r!4008)) lt!1475629))) e!2567884))))

(assert (= tb!248421 b!4138656))

(declare-fun m!4735201 () Bool)

(assert (=> b!4138656 m!4735201))

(declare-fun m!4735203 () Bool)

(assert (=> tb!248421 m!4735203))

(assert (=> d!1225436 t!342189))

(declare-fun b_and!321247 () Bool)

(assert (= b_and!321219 (and (=> t!342189 result!302044) b_and!321247)))

(declare-fun t!342191 () Bool)

(declare-fun tb!248423 () Bool)

(assert (=> (and b!4138387 (= (toChars!9885 (transformation!7362 r!4008)) (toChars!9885 (transformation!7362 r!4008))) t!342191) tb!248423))

(declare-fun result!302048 () Bool)

(assert (= result!302048 result!302044))

(assert (=> d!1225436 t!342191))

(declare-fun b_and!321249 () Bool)

(assert (= b_and!321223 (and (=> t!342191 result!302048) b_and!321249)))

(declare-fun tb!248425 () Bool)

(declare-fun t!342193 () Bool)

(assert (=> (and b!4138378 (= (toChars!9885 (transformation!7362 rBis!149)) (toChars!9885 (transformation!7362 r!4008))) t!342193) tb!248425))

(declare-fun result!302050 () Bool)

(assert (= result!302050 result!302044))

(assert (=> d!1225436 t!342193))

(declare-fun b_and!321251 () Bool)

(assert (= b_and!321227 (and (=> t!342193 result!302050) b_and!321251)))

(declare-fun b_lambda!121635 () Bool)

(assert (=> (not b_lambda!121635) (not d!1225436)))

(assert (=> d!1225436 t!342171))

(declare-fun b_and!321253 () Bool)

(assert (= b_and!321229 (and (=> t!342171 result!302020) b_and!321253)))

(assert (=> d!1225436 t!342173))

(declare-fun b_and!321255 () Bool)

(assert (= b_and!321231 (and (=> t!342173 result!302024) b_and!321255)))

(assert (=> d!1225436 t!342175))

(declare-fun b_and!321257 () Bool)

(assert (= b_and!321233 (and (=> t!342175 result!302026) b_and!321257)))

(assert (=> d!1225436 m!4734979))

(declare-fun m!4735205 () Bool)

(assert (=> d!1225436 m!4735205))

(declare-fun m!4735207 () Bool)

(assert (=> d!1225436 m!4735207))

(declare-fun m!4735209 () Bool)

(assert (=> d!1225436 m!4735209))

(assert (=> d!1225436 m!4734979))

(assert (=> d!1225436 m!4735205))

(declare-fun m!4735211 () Bool)

(assert (=> d!1225436 m!4735211))

(assert (=> b!4138374 d!1225436))

(declare-fun d!1225478 () Bool)

(declare-fun fromListB!2512 (List!44987) BalanceConc!26740)

(assert (=> d!1225478 (= (seqFromList!5479 p!2912) (fromListB!2512 p!2912))))

(declare-fun bs!595183 () Bool)

(assert (= bs!595183 d!1225478))

(declare-fun m!4735213 () Bool)

(assert (=> bs!595183 m!4735213))

(assert (=> b!4138374 d!1225478))

(declare-fun d!1225480 () Bool)

(declare-fun lt!1475748 () Int)

(assert (=> d!1225480 (>= lt!1475748 0)))

(declare-fun e!2567887 () Int)

(assert (=> d!1225480 (= lt!1475748 e!2567887)))

(declare-fun c!709636 () Bool)

(assert (=> d!1225480 (= c!709636 ((_ is Nil!44863) p!2912))))

(assert (=> d!1225480 (= (size!33221 p!2912) lt!1475748)))

(declare-fun b!4138661 () Bool)

(assert (=> b!4138661 (= e!2567887 0)))

(declare-fun b!4138662 () Bool)

(assert (=> b!4138662 (= e!2567887 (+ 1 (size!33221 (t!342168 p!2912))))))

(assert (= (and d!1225480 c!709636) b!4138661))

(assert (= (and d!1225480 (not c!709636)) b!4138662))

(declare-fun m!4735215 () Bool)

(assert (=> b!4138662 m!4735215))

(assert (=> b!4138374 d!1225480))

(declare-fun d!1225482 () Bool)

(declare-fun lt!1475749 () Bool)

(assert (=> d!1225482 (= lt!1475749 (select (content!6930 rules!3756) r!4008))))

(declare-fun e!2567889 () Bool)

(assert (=> d!1225482 (= lt!1475749 e!2567889)))

(declare-fun res!1692855 () Bool)

(assert (=> d!1225482 (=> (not res!1692855) (not e!2567889))))

(assert (=> d!1225482 (= res!1692855 ((_ is Cons!44864) rules!3756))))

(assert (=> d!1225482 (= (contains!9042 rules!3756 r!4008) lt!1475749)))

(declare-fun b!4138663 () Bool)

(declare-fun e!2567888 () Bool)

(assert (=> b!4138663 (= e!2567889 e!2567888)))

(declare-fun res!1692856 () Bool)

(assert (=> b!4138663 (=> res!1692856 e!2567888)))

(assert (=> b!4138663 (= res!1692856 (= (h!50284 rules!3756) r!4008))))

(declare-fun b!4138664 () Bool)

(assert (=> b!4138664 (= e!2567888 (contains!9042 (t!342169 rules!3756) r!4008))))

(assert (= (and d!1225482 res!1692855) b!4138663))

(assert (= (and b!4138663 (not res!1692856)) b!4138664))

(assert (=> d!1225482 m!4734939))

(declare-fun m!4735217 () Bool)

(assert (=> d!1225482 m!4735217))

(declare-fun m!4735219 () Bool)

(assert (=> b!4138664 m!4735219))

(assert (=> b!4138363 d!1225482))

(declare-fun d!1225484 () Bool)

(declare-fun res!1692861 () Bool)

(declare-fun e!2567892 () Bool)

(assert (=> d!1225484 (=> (not res!1692861) (not e!2567892))))

(declare-fun validRegex!5525 (Regex!12267) Bool)

(assert (=> d!1225484 (= res!1692861 (validRegex!5525 (regex!7362 r!4008)))))

(assert (=> d!1225484 (= (ruleValid!3168 thiss!25645 r!4008) e!2567892)))

(declare-fun b!4138669 () Bool)

(declare-fun res!1692862 () Bool)

(assert (=> b!4138669 (=> (not res!1692862) (not e!2567892))))

(declare-fun nullable!4317 (Regex!12267) Bool)

(assert (=> b!4138669 (= res!1692862 (not (nullable!4317 (regex!7362 r!4008))))))

(declare-fun b!4138670 () Bool)

(assert (=> b!4138670 (= e!2567892 (not (= (tag!8222 r!4008) (String!51711 ""))))))

(assert (= (and d!1225484 res!1692861) b!4138669))

(assert (= (and b!4138669 res!1692862) b!4138670))

(declare-fun m!4735221 () Bool)

(assert (=> d!1225484 m!4735221))

(declare-fun m!4735223 () Bool)

(assert (=> b!4138669 m!4735223))

(assert (=> b!4138384 d!1225484))

(declare-fun d!1225486 () Bool)

(assert (=> d!1225486 (= (inv!59468 (tag!8222 r!4008)) (= (mod (str.len (value!230370 (tag!8222 r!4008))) 2) 0))))

(assert (=> b!4138373 d!1225486))

(declare-fun d!1225488 () Bool)

(declare-fun res!1692863 () Bool)

(declare-fun e!2567893 () Bool)

(assert (=> d!1225488 (=> (not res!1692863) (not e!2567893))))

(assert (=> d!1225488 (= res!1692863 (semiInverseModEq!3181 (toChars!9885 (transformation!7362 r!4008)) (toValue!10026 (transformation!7362 r!4008))))))

(assert (=> d!1225488 (= (inv!59470 (transformation!7362 r!4008)) e!2567893)))

(declare-fun b!4138671 () Bool)

(assert (=> b!4138671 (= e!2567893 (equivClasses!3080 (toChars!9885 (transformation!7362 r!4008)) (toValue!10026 (transformation!7362 r!4008))))))

(assert (= (and d!1225488 res!1692863) b!4138671))

(declare-fun m!4735225 () Bool)

(assert (=> d!1225488 m!4735225))

(declare-fun m!4735227 () Bool)

(assert (=> b!4138671 m!4735227))

(assert (=> b!4138373 d!1225488))

(declare-fun d!1225490 () Bool)

(assert (=> d!1225490 (ruleValid!3168 thiss!25645 r!4008)))

(declare-fun lt!1475752 () Unit!64169)

(declare-fun choose!25304 (LexerInterface!6951 Rule!14524 List!44988) Unit!64169)

(assert (=> d!1225490 (= lt!1475752 (choose!25304 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1225490 (contains!9042 rules!3756 r!4008)))

(assert (=> d!1225490 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2208 thiss!25645 r!4008 rules!3756) lt!1475752)))

(declare-fun bs!595184 () Bool)

(assert (= bs!595184 d!1225490))

(assert (=> bs!595184 m!4734919))

(declare-fun m!4735229 () Bool)

(assert (=> bs!595184 m!4735229))

(assert (=> bs!595184 m!4734893))

(assert (=> b!4138383 d!1225490))

(declare-fun d!1225492 () Bool)

(declare-fun res!1692864 () Bool)

(declare-fun e!2567894 () Bool)

(assert (=> d!1225492 (=> (not res!1692864) (not e!2567894))))

(assert (=> d!1225492 (= res!1692864 (validRegex!5525 (regex!7362 rBis!149)))))

(assert (=> d!1225492 (= (ruleValid!3168 thiss!25645 rBis!149) e!2567894)))

(declare-fun b!4138672 () Bool)

(declare-fun res!1692865 () Bool)

(assert (=> b!4138672 (=> (not res!1692865) (not e!2567894))))

(assert (=> b!4138672 (= res!1692865 (not (nullable!4317 (regex!7362 rBis!149))))))

(declare-fun b!4138673 () Bool)

(assert (=> b!4138673 (= e!2567894 (not (= (tag!8222 rBis!149) (String!51711 ""))))))

(assert (= (and d!1225492 res!1692864) b!4138672))

(assert (= (and b!4138672 res!1692865) b!4138673))

(declare-fun m!4735231 () Bool)

(assert (=> d!1225492 m!4735231))

(declare-fun m!4735233 () Bool)

(assert (=> b!4138672 m!4735233))

(assert (=> b!4138383 d!1225492))

(declare-fun d!1225494 () Bool)

(assert (=> d!1225494 (ruleValid!3168 thiss!25645 rBis!149)))

(declare-fun lt!1475753 () Unit!64169)

(assert (=> d!1225494 (= lt!1475753 (choose!25304 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1225494 (contains!9042 rules!3756 rBis!149)))

(assert (=> d!1225494 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2208 thiss!25645 rBis!149 rules!3756) lt!1475753)))

(declare-fun bs!595185 () Bool)

(assert (= bs!595185 d!1225494))

(assert (=> bs!595185 m!4734915))

(declare-fun m!4735235 () Bool)

(assert (=> bs!595185 m!4735235))

(assert (=> bs!595185 m!4734895))

(assert (=> b!4138383 d!1225494))

(declare-fun b!4138684 () Bool)

(declare-fun res!1692871 () Bool)

(declare-fun e!2567899 () Bool)

(assert (=> b!4138684 (=> (not res!1692871) (not e!2567899))))

(declare-fun lt!1475756 () List!44987)

(assert (=> b!4138684 (= res!1692871 (= (size!33221 lt!1475756) (+ (size!33221 lt!1475633) (size!33221 lt!1475628))))))

(declare-fun b!4138683 () Bool)

(declare-fun e!2567900 () List!44987)

(assert (=> b!4138683 (= e!2567900 (Cons!44863 (h!50283 lt!1475633) (++!11606 (t!342168 lt!1475633) lt!1475628)))))

(declare-fun b!4138682 () Bool)

(assert (=> b!4138682 (= e!2567900 lt!1475628)))

(declare-fun d!1225496 () Bool)

(assert (=> d!1225496 e!2567899))

(declare-fun res!1692870 () Bool)

(assert (=> d!1225496 (=> (not res!1692870) (not e!2567899))))

(declare-fun content!6931 (List!44987) (InoxSet C!24720))

(assert (=> d!1225496 (= res!1692870 (= (content!6931 lt!1475756) ((_ map or) (content!6931 lt!1475633) (content!6931 lt!1475628))))))

(assert (=> d!1225496 (= lt!1475756 e!2567900)))

(declare-fun c!709639 () Bool)

(assert (=> d!1225496 (= c!709639 ((_ is Nil!44863) lt!1475633))))

(assert (=> d!1225496 (= (++!11606 lt!1475633 lt!1475628) lt!1475756)))

(declare-fun b!4138685 () Bool)

(assert (=> b!4138685 (= e!2567899 (or (not (= lt!1475628 Nil!44863)) (= lt!1475756 lt!1475633)))))

(assert (= (and d!1225496 c!709639) b!4138682))

(assert (= (and d!1225496 (not c!709639)) b!4138683))

(assert (= (and d!1225496 res!1692870) b!4138684))

(assert (= (and b!4138684 res!1692871) b!4138685))

(declare-fun m!4735237 () Bool)

(assert (=> b!4138684 m!4735237))

(assert (=> b!4138684 m!4734969))

(declare-fun m!4735239 () Bool)

(assert (=> b!4138684 m!4735239))

(declare-fun m!4735241 () Bool)

(assert (=> b!4138683 m!4735241))

(declare-fun m!4735243 () Bool)

(assert (=> d!1225496 m!4735243))

(declare-fun m!4735245 () Bool)

(assert (=> d!1225496 m!4735245))

(declare-fun m!4735247 () Bool)

(assert (=> d!1225496 m!4735247))

(assert (=> b!4138382 d!1225496))

(declare-fun bm!290471 () Bool)

(declare-fun call!290476 () Bool)

(assert (=> bm!290471 (= call!290476 (isEmpty!26741 p!2912))))

(declare-fun b!4138715 () Bool)

(declare-fun e!2567917 () Bool)

(assert (=> b!4138715 (= e!2567917 (= (head!8730 p!2912) (c!709591 (regex!7362 r!4008))))))

(declare-fun b!4138716 () Bool)

(declare-fun res!1692895 () Bool)

(declare-fun e!2567918 () Bool)

(assert (=> b!4138716 (=> res!1692895 e!2567918)))

(assert (=> b!4138716 (= res!1692895 (not (isEmpty!26741 (tail!6529 p!2912))))))

(declare-fun b!4138717 () Bool)

(declare-fun res!1692888 () Bool)

(declare-fun e!2567919 () Bool)

(assert (=> b!4138717 (=> res!1692888 e!2567919)))

(assert (=> b!4138717 (= res!1692888 e!2567917)))

(declare-fun res!1692889 () Bool)

(assert (=> b!4138717 (=> (not res!1692889) (not e!2567917))))

(declare-fun lt!1475759 () Bool)

(assert (=> b!4138717 (= res!1692889 lt!1475759)))

(declare-fun b!4138718 () Bool)

(declare-fun e!2567915 () Bool)

(declare-fun derivativeStep!3712 (Regex!12267 C!24720) Regex!12267)

(assert (=> b!4138718 (= e!2567915 (matchR!6096 (derivativeStep!3712 (regex!7362 r!4008) (head!8730 p!2912)) (tail!6529 p!2912)))))

(declare-fun b!4138719 () Bool)

(declare-fun e!2567916 () Bool)

(assert (=> b!4138719 (= e!2567916 (not lt!1475759))))

(declare-fun d!1225498 () Bool)

(declare-fun e!2567921 () Bool)

(assert (=> d!1225498 e!2567921))

(declare-fun c!709646 () Bool)

(assert (=> d!1225498 (= c!709646 ((_ is EmptyExpr!12267) (regex!7362 r!4008)))))

(assert (=> d!1225498 (= lt!1475759 e!2567915)))

(declare-fun c!709648 () Bool)

(assert (=> d!1225498 (= c!709648 (isEmpty!26741 p!2912))))

(assert (=> d!1225498 (validRegex!5525 (regex!7362 r!4008))))

(assert (=> d!1225498 (= (matchR!6096 (regex!7362 r!4008) p!2912) lt!1475759)))

(declare-fun b!4138714 () Bool)

(declare-fun res!1692892 () Bool)

(assert (=> b!4138714 (=> (not res!1692892) (not e!2567917))))

(assert (=> b!4138714 (= res!1692892 (isEmpty!26741 (tail!6529 p!2912)))))

(declare-fun b!4138720 () Bool)

(assert (=> b!4138720 (= e!2567918 (not (= (head!8730 p!2912) (c!709591 (regex!7362 r!4008)))))))

(declare-fun b!4138721 () Bool)

(assert (=> b!4138721 (= e!2567921 e!2567916)))

(declare-fun c!709647 () Bool)

(assert (=> b!4138721 (= c!709647 ((_ is EmptyLang!12267) (regex!7362 r!4008)))))

(declare-fun b!4138722 () Bool)

(declare-fun e!2567920 () Bool)

(assert (=> b!4138722 (= e!2567919 e!2567920)))

(declare-fun res!1692891 () Bool)

(assert (=> b!4138722 (=> (not res!1692891) (not e!2567920))))

(assert (=> b!4138722 (= res!1692891 (not lt!1475759))))

(declare-fun b!4138723 () Bool)

(assert (=> b!4138723 (= e!2567921 (= lt!1475759 call!290476))))

(declare-fun b!4138724 () Bool)

(assert (=> b!4138724 (= e!2567915 (nullable!4317 (regex!7362 r!4008)))))

(declare-fun b!4138725 () Bool)

(declare-fun res!1692894 () Bool)

(assert (=> b!4138725 (=> res!1692894 e!2567919)))

(assert (=> b!4138725 (= res!1692894 (not ((_ is ElementMatch!12267) (regex!7362 r!4008))))))

(assert (=> b!4138725 (= e!2567916 e!2567919)))

(declare-fun b!4138726 () Bool)

(assert (=> b!4138726 (= e!2567920 e!2567918)))

(declare-fun res!1692893 () Bool)

(assert (=> b!4138726 (=> res!1692893 e!2567918)))

(assert (=> b!4138726 (= res!1692893 call!290476)))

(declare-fun b!4138727 () Bool)

(declare-fun res!1692890 () Bool)

(assert (=> b!4138727 (=> (not res!1692890) (not e!2567917))))

(assert (=> b!4138727 (= res!1692890 (not call!290476))))

(assert (= (and d!1225498 c!709648) b!4138724))

(assert (= (and d!1225498 (not c!709648)) b!4138718))

(assert (= (and d!1225498 c!709646) b!4138723))

(assert (= (and d!1225498 (not c!709646)) b!4138721))

(assert (= (and b!4138721 c!709647) b!4138719))

(assert (= (and b!4138721 (not c!709647)) b!4138725))

(assert (= (and b!4138725 (not res!1692894)) b!4138717))

(assert (= (and b!4138717 res!1692889) b!4138727))

(assert (= (and b!4138727 res!1692890) b!4138714))

(assert (= (and b!4138714 res!1692892) b!4138715))

(assert (= (and b!4138717 (not res!1692888)) b!4138722))

(assert (= (and b!4138722 res!1692891) b!4138726))

(assert (= (and b!4138726 (not res!1692893)) b!4138716))

(assert (= (and b!4138716 (not res!1692895)) b!4138720))

(assert (= (or b!4138723 b!4138726 b!4138727) bm!290471))

(assert (=> b!4138715 m!4734961))

(assert (=> b!4138714 m!4734953))

(assert (=> b!4138714 m!4734953))

(declare-fun m!4735249 () Bool)

(assert (=> b!4138714 m!4735249))

(assert (=> bm!290471 m!4734863))

(assert (=> b!4138718 m!4734961))

(assert (=> b!4138718 m!4734961))

(declare-fun m!4735251 () Bool)

(assert (=> b!4138718 m!4735251))

(assert (=> b!4138718 m!4734953))

(assert (=> b!4138718 m!4735251))

(assert (=> b!4138718 m!4734953))

(declare-fun m!4735253 () Bool)

(assert (=> b!4138718 m!4735253))

(assert (=> b!4138716 m!4734953))

(assert (=> b!4138716 m!4734953))

(assert (=> b!4138716 m!4735249))

(assert (=> b!4138720 m!4734961))

(assert (=> d!1225498 m!4734863))

(assert (=> d!1225498 m!4735221))

(assert (=> b!4138724 m!4735223))

(assert (=> b!4138371 d!1225498))

(declare-fun d!1225500 () Bool)

(declare-fun lt!1475762 () Int)

(assert (=> d!1225500 (= lt!1475762 (size!33221 (list!16429 lt!1475636)))))

(declare-fun size!33224 (Conc!13573) Int)

(assert (=> d!1225500 (= lt!1475762 (size!33224 (c!709590 lt!1475636)))))

(assert (=> d!1225500 (= (size!33222 lt!1475636) lt!1475762)))

(declare-fun bs!595186 () Bool)

(assert (= bs!595186 d!1225500))

(assert (=> bs!595186 m!4734909))

(assert (=> bs!595186 m!4734909))

(declare-fun m!4735255 () Bool)

(assert (=> bs!595186 m!4735255))

(declare-fun m!4735257 () Bool)

(assert (=> bs!595186 m!4735257))

(assert (=> b!4138381 d!1225500))

(declare-fun d!1225502 () Bool)

(declare-fun lt!1475765 () BalanceConc!26740)

(assert (=> d!1225502 (= (list!16429 lt!1475765) (originalCharacters!7858 (_1!24761 lt!1475624)))))

(assert (=> d!1225502 (= lt!1475765 (dynLambda!19283 (toChars!9885 (transformation!7362 (rule!10466 (_1!24761 lt!1475624)))) (value!230371 (_1!24761 lt!1475624))))))

(assert (=> d!1225502 (= (charsOf!4961 (_1!24761 lt!1475624)) lt!1475765)))

(declare-fun b_lambda!121637 () Bool)

(assert (=> (not b_lambda!121637) (not d!1225502)))

(declare-fun t!342195 () Bool)

(declare-fun tb!248427 () Bool)

(assert (=> (and b!4138365 (= (toChars!9885 (transformation!7362 (h!50284 rules!3756))) (toChars!9885 (transformation!7362 (rule!10466 (_1!24761 lt!1475624))))) t!342195) tb!248427))

(declare-fun b!4138728 () Bool)

(declare-fun e!2567922 () Bool)

(declare-fun tp!1261479 () Bool)

(assert (=> b!4138728 (= e!2567922 (and (inv!59473 (c!709590 (dynLambda!19283 (toChars!9885 (transformation!7362 (rule!10466 (_1!24761 lt!1475624)))) (value!230371 (_1!24761 lt!1475624))))) tp!1261479))))

(declare-fun result!302052 () Bool)

(assert (=> tb!248427 (= result!302052 (and (inv!59474 (dynLambda!19283 (toChars!9885 (transformation!7362 (rule!10466 (_1!24761 lt!1475624)))) (value!230371 (_1!24761 lt!1475624)))) e!2567922))))

(assert (= tb!248427 b!4138728))

(declare-fun m!4735259 () Bool)

(assert (=> b!4138728 m!4735259))

(declare-fun m!4735261 () Bool)

(assert (=> tb!248427 m!4735261))

(assert (=> d!1225502 t!342195))

(declare-fun b_and!321259 () Bool)

(assert (= b_and!321247 (and (=> t!342195 result!302052) b_and!321259)))

(declare-fun tb!248429 () Bool)

(declare-fun t!342197 () Bool)

(assert (=> (and b!4138387 (= (toChars!9885 (transformation!7362 r!4008)) (toChars!9885 (transformation!7362 (rule!10466 (_1!24761 lt!1475624))))) t!342197) tb!248429))

(declare-fun result!302054 () Bool)

(assert (= result!302054 result!302052))

(assert (=> d!1225502 t!342197))

(declare-fun b_and!321261 () Bool)

(assert (= b_and!321249 (and (=> t!342197 result!302054) b_and!321261)))

(declare-fun t!342199 () Bool)

(declare-fun tb!248431 () Bool)

(assert (=> (and b!4138378 (= (toChars!9885 (transformation!7362 rBis!149)) (toChars!9885 (transformation!7362 (rule!10466 (_1!24761 lt!1475624))))) t!342199) tb!248431))

(declare-fun result!302056 () Bool)

(assert (= result!302056 result!302052))

(assert (=> d!1225502 t!342199))

(declare-fun b_and!321263 () Bool)

(assert (= b_and!321251 (and (=> t!342199 result!302056) b_and!321263)))

(declare-fun m!4735263 () Bool)

(assert (=> d!1225502 m!4735263))

(declare-fun m!4735265 () Bool)

(assert (=> d!1225502 m!4735265))

(assert (=> b!4138381 d!1225502))

(declare-fun d!1225504 () Bool)

(assert (=> d!1225504 (= (get!14638 lt!1475635) (v!40299 lt!1475635))))

(assert (=> b!4138381 d!1225504))

(declare-fun b!4138731 () Bool)

(declare-fun e!2567924 () Bool)

(assert (=> b!4138731 (= e!2567924 (isPrefix!4297 (tail!6529 input!3238) (tail!6529 input!3238)))))

(declare-fun d!1225506 () Bool)

(declare-fun e!2567923 () Bool)

(assert (=> d!1225506 e!2567923))

(declare-fun res!1692897 () Bool)

(assert (=> d!1225506 (=> res!1692897 e!2567923)))

(declare-fun lt!1475766 () Bool)

(assert (=> d!1225506 (= res!1692897 (not lt!1475766))))

(declare-fun e!2567925 () Bool)

(assert (=> d!1225506 (= lt!1475766 e!2567925)))

(declare-fun res!1692899 () Bool)

(assert (=> d!1225506 (=> res!1692899 e!2567925)))

(assert (=> d!1225506 (= res!1692899 ((_ is Nil!44863) input!3238))))

(assert (=> d!1225506 (= (isPrefix!4297 input!3238 input!3238) lt!1475766)))

(declare-fun b!4138732 () Bool)

(assert (=> b!4138732 (= e!2567923 (>= (size!33221 input!3238) (size!33221 input!3238)))))

(declare-fun b!4138730 () Bool)

(declare-fun res!1692896 () Bool)

(assert (=> b!4138730 (=> (not res!1692896) (not e!2567924))))

(assert (=> b!4138730 (= res!1692896 (= (head!8730 input!3238) (head!8730 input!3238)))))

(declare-fun b!4138729 () Bool)

(assert (=> b!4138729 (= e!2567925 e!2567924)))

(declare-fun res!1692898 () Bool)

(assert (=> b!4138729 (=> (not res!1692898) (not e!2567924))))

(assert (=> b!4138729 (= res!1692898 (not ((_ is Nil!44863) input!3238)))))

(assert (= (and d!1225506 (not res!1692899)) b!4138729))

(assert (= (and b!4138729 res!1692898) b!4138730))

(assert (= (and b!4138730 res!1692896) b!4138731))

(assert (= (and d!1225506 (not res!1692897)) b!4138732))

(assert (=> b!4138731 m!4734955))

(assert (=> b!4138731 m!4734955))

(assert (=> b!4138731 m!4734955))

(assert (=> b!4138731 m!4734955))

(declare-fun m!4735267 () Bool)

(assert (=> b!4138731 m!4735267))

(assert (=> b!4138732 m!4734959))

(assert (=> b!4138732 m!4734959))

(assert (=> b!4138730 m!4734963))

(assert (=> b!4138730 m!4734963))

(assert (=> b!4138370 d!1225506))

(declare-fun d!1225508 () Bool)

(assert (=> d!1225508 (isPrefix!4297 input!3238 input!3238)))

(declare-fun lt!1475769 () Unit!64169)

(declare-fun choose!25306 (List!44987 List!44987) Unit!64169)

(assert (=> d!1225508 (= lt!1475769 (choose!25306 input!3238 input!3238))))

(assert (=> d!1225508 (= (lemmaIsPrefixRefl!2780 input!3238 input!3238) lt!1475769)))

(declare-fun bs!595187 () Bool)

(assert (= bs!595187 d!1225508))

(assert (=> bs!595187 m!4734901))

(declare-fun m!4735269 () Bool)

(assert (=> bs!595187 m!4735269))

(assert (=> b!4138370 d!1225508))

(declare-fun b!4138735 () Bool)

(declare-fun res!1692901 () Bool)

(declare-fun e!2567926 () Bool)

(assert (=> b!4138735 (=> (not res!1692901) (not e!2567926))))

(declare-fun lt!1475770 () List!44987)

(assert (=> b!4138735 (= res!1692901 (= (size!33221 lt!1475770) (+ (size!33221 p!2912) (size!33221 lt!1475637))))))

(declare-fun b!4138734 () Bool)

(declare-fun e!2567927 () List!44987)

(assert (=> b!4138734 (= e!2567927 (Cons!44863 (h!50283 p!2912) (++!11606 (t!342168 p!2912) lt!1475637)))))

(declare-fun b!4138733 () Bool)

(assert (=> b!4138733 (= e!2567927 lt!1475637)))

(declare-fun d!1225510 () Bool)

(assert (=> d!1225510 e!2567926))

(declare-fun res!1692900 () Bool)

(assert (=> d!1225510 (=> (not res!1692900) (not e!2567926))))

(assert (=> d!1225510 (= res!1692900 (= (content!6931 lt!1475770) ((_ map or) (content!6931 p!2912) (content!6931 lt!1475637))))))

(assert (=> d!1225510 (= lt!1475770 e!2567927)))

(declare-fun c!709649 () Bool)

(assert (=> d!1225510 (= c!709649 ((_ is Nil!44863) p!2912))))

(assert (=> d!1225510 (= (++!11606 p!2912 lt!1475637) lt!1475770)))

(declare-fun b!4138736 () Bool)

(assert (=> b!4138736 (= e!2567926 (or (not (= lt!1475637 Nil!44863)) (= lt!1475770 p!2912)))))

(assert (= (and d!1225510 c!709649) b!4138733))

(assert (= (and d!1225510 (not c!709649)) b!4138734))

(assert (= (and d!1225510 res!1692900) b!4138735))

(assert (= (and b!4138735 res!1692901) b!4138736))

(declare-fun m!4735271 () Bool)

(assert (=> b!4138735 m!4735271))

(assert (=> b!4138735 m!4734873))

(declare-fun m!4735273 () Bool)

(assert (=> b!4138735 m!4735273))

(declare-fun m!4735275 () Bool)

(assert (=> b!4138734 m!4735275))

(declare-fun m!4735277 () Bool)

(assert (=> d!1225510 m!4735277))

(declare-fun m!4735279 () Bool)

(assert (=> d!1225510 m!4735279))

(declare-fun m!4735281 () Bool)

(assert (=> d!1225510 m!4735281))

(assert (=> b!4138369 d!1225510))

(declare-fun d!1225512 () Bool)

(declare-fun lt!1475771 () List!44987)

(assert (=> d!1225512 (= (++!11606 lt!1475633 lt!1475771) input!3238)))

(declare-fun e!2567928 () List!44987)

(assert (=> d!1225512 (= lt!1475771 e!2567928)))

(declare-fun c!709650 () Bool)

(assert (=> d!1225512 (= c!709650 ((_ is Cons!44863) lt!1475633))))

(assert (=> d!1225512 (>= (size!33221 input!3238) (size!33221 lt!1475633))))

(assert (=> d!1225512 (= (getSuffix!2624 input!3238 lt!1475633) lt!1475771)))

(declare-fun b!4138737 () Bool)

(assert (=> b!4138737 (= e!2567928 (getSuffix!2624 (tail!6529 input!3238) (t!342168 lt!1475633)))))

(declare-fun b!4138738 () Bool)

(assert (=> b!4138738 (= e!2567928 input!3238)))

(assert (= (and d!1225512 c!709650) b!4138737))

(assert (= (and d!1225512 (not c!709650)) b!4138738))

(declare-fun m!4735283 () Bool)

(assert (=> d!1225512 m!4735283))

(assert (=> d!1225512 m!4734959))

(assert (=> d!1225512 m!4734969))

(assert (=> b!4138737 m!4734955))

(assert (=> b!4138737 m!4734955))

(declare-fun m!4735285 () Bool)

(assert (=> b!4138737 m!4735285))

(assert (=> b!4138369 d!1225512))

(declare-fun d!1225514 () Bool)

(declare-fun list!16431 (Conc!13573) List!44987)

(assert (=> d!1225514 (= (list!16429 lt!1475636) (list!16431 (c!709590 lt!1475636)))))

(declare-fun bs!595188 () Bool)

(assert (= bs!595188 d!1225514))

(declare-fun m!4735287 () Bool)

(assert (=> bs!595188 m!4735287))

(assert (=> b!4138369 d!1225514))

(declare-fun d!1225516 () Bool)

(assert (=> d!1225516 (= (isEmpty!26741 p!2912) ((_ is Nil!44863) p!2912))))

(assert (=> b!4138368 d!1225516))

(declare-fun d!1225518 () Bool)

(assert (=> d!1225518 (= (inv!59468 (tag!8222 rBis!149)) (= (mod (str.len (value!230370 (tag!8222 rBis!149))) 2) 0))))

(assert (=> b!4138367 d!1225518))

(declare-fun d!1225520 () Bool)

(declare-fun res!1692902 () Bool)

(declare-fun e!2567929 () Bool)

(assert (=> d!1225520 (=> (not res!1692902) (not e!2567929))))

(assert (=> d!1225520 (= res!1692902 (semiInverseModEq!3181 (toChars!9885 (transformation!7362 rBis!149)) (toValue!10026 (transformation!7362 rBis!149))))))

(assert (=> d!1225520 (= (inv!59470 (transformation!7362 rBis!149)) e!2567929)))

(declare-fun b!4138739 () Bool)

(assert (=> b!4138739 (= e!2567929 (equivClasses!3080 (toChars!9885 (transformation!7362 rBis!149)) (toValue!10026 (transformation!7362 rBis!149))))))

(assert (= (and d!1225520 res!1692902) b!4138739))

(declare-fun m!4735289 () Bool)

(assert (=> d!1225520 m!4735289))

(declare-fun m!4735291 () Bool)

(assert (=> b!4138739 m!4735291))

(assert (=> b!4138367 d!1225520))

(declare-fun d!1225522 () Bool)

(declare-fun lt!1475775 () Int)

(assert (=> d!1225522 (>= lt!1475775 0)))

(declare-fun e!2567939 () Int)

(assert (=> d!1225522 (= lt!1475775 e!2567939)))

(declare-fun c!709655 () Bool)

(assert (=> d!1225522 (= c!709655 (and ((_ is Cons!44864) rules!3756) (= (h!50284 rules!3756) rBis!149)))))

(assert (=> d!1225522 (contains!9042 rules!3756 rBis!149)))

(assert (=> d!1225522 (= (getIndex!708 rules!3756 rBis!149) lt!1475775)))

(declare-fun b!4138757 () Bool)

(declare-fun e!2567940 () Int)

(assert (=> b!4138757 (= e!2567940 (- 1))))

(declare-fun b!4138756 () Bool)

(assert (=> b!4138756 (= e!2567940 (+ 1 (getIndex!708 (t!342169 rules!3756) rBis!149)))))

(declare-fun b!4138755 () Bool)

(assert (=> b!4138755 (= e!2567939 e!2567940)))

(declare-fun c!709656 () Bool)

(assert (=> b!4138755 (= c!709656 (and ((_ is Cons!44864) rules!3756) (not (= (h!50284 rules!3756) rBis!149))))))

(declare-fun b!4138754 () Bool)

(assert (=> b!4138754 (= e!2567939 0)))

(assert (= (and d!1225522 c!709655) b!4138754))

(assert (= (and d!1225522 (not c!709655)) b!4138755))

(assert (= (and b!4138755 c!709656) b!4138756))

(assert (= (and b!4138755 (not c!709656)) b!4138757))

(assert (=> d!1225522 m!4734895))

(declare-fun m!4735297 () Bool)

(assert (=> b!4138756 m!4735297))

(assert (=> b!4138388 d!1225522))

(declare-fun d!1225524 () Bool)

(declare-fun lt!1475776 () Int)

(assert (=> d!1225524 (>= lt!1475776 0)))

(declare-fun e!2567941 () Int)

(assert (=> d!1225524 (= lt!1475776 e!2567941)))

(declare-fun c!709657 () Bool)

(assert (=> d!1225524 (= c!709657 (and ((_ is Cons!44864) rules!3756) (= (h!50284 rules!3756) r!4008)))))

(assert (=> d!1225524 (contains!9042 rules!3756 r!4008)))

(assert (=> d!1225524 (= (getIndex!708 rules!3756 r!4008) lt!1475776)))

(declare-fun b!4138761 () Bool)

(declare-fun e!2567942 () Int)

(assert (=> b!4138761 (= e!2567942 (- 1))))

(declare-fun b!4138760 () Bool)

(assert (=> b!4138760 (= e!2567942 (+ 1 (getIndex!708 (t!342169 rules!3756) r!4008)))))

(declare-fun b!4138759 () Bool)

(assert (=> b!4138759 (= e!2567941 e!2567942)))

(declare-fun c!709658 () Bool)

(assert (=> b!4138759 (= c!709658 (and ((_ is Cons!44864) rules!3756) (not (= (h!50284 rules!3756) r!4008))))))

(declare-fun b!4138758 () Bool)

(assert (=> b!4138758 (= e!2567941 0)))

(assert (= (and d!1225524 c!709657) b!4138758))

(assert (= (and d!1225524 (not c!709657)) b!4138759))

(assert (= (and b!4138759 c!709658) b!4138760))

(assert (= (and b!4138759 (not c!709658)) b!4138761))

(assert (=> d!1225524 m!4734893))

(declare-fun m!4735305 () Bool)

(assert (=> b!4138760 m!4735305))

(assert (=> b!4138388 d!1225524))

(declare-fun d!1225526 () Bool)

(declare-fun res!1692905 () Bool)

(declare-fun e!2567957 () Bool)

(assert (=> d!1225526 (=> (not res!1692905) (not e!2567957))))

(declare-fun rulesValid!2895 (LexerInterface!6951 List!44988) Bool)

(assert (=> d!1225526 (= res!1692905 (rulesValid!2895 thiss!25645 rules!3756))))

(assert (=> d!1225526 (= (rulesInvariant!6248 thiss!25645 rules!3756) e!2567957)))

(declare-fun b!4138775 () Bool)

(declare-datatypes ((List!44990 0))(
  ( (Nil!44866) (Cons!44866 (h!50286 String!51710) (t!342219 List!44990)) )
))
(declare-fun noDuplicateTag!2978 (LexerInterface!6951 List!44988 List!44990) Bool)

(assert (=> b!4138775 (= e!2567957 (noDuplicateTag!2978 thiss!25645 rules!3756 Nil!44866))))

(assert (= (and d!1225526 res!1692905) b!4138775))

(declare-fun m!4735309 () Bool)

(assert (=> d!1225526 m!4735309))

(declare-fun m!4735311 () Bool)

(assert (=> b!4138775 m!4735311))

(assert (=> b!4138377 d!1225526))

(declare-fun d!1225528 () Bool)

(declare-fun lt!1475777 () Bool)

(assert (=> d!1225528 (= lt!1475777 (select (content!6930 (tail!6527 rules!3756)) r!4008))))

(declare-fun e!2567959 () Bool)

(assert (=> d!1225528 (= lt!1475777 e!2567959)))

(declare-fun res!1692906 () Bool)

(assert (=> d!1225528 (=> (not res!1692906) (not e!2567959))))

(assert (=> d!1225528 (= res!1692906 ((_ is Cons!44864) (tail!6527 rules!3756)))))

(assert (=> d!1225528 (= (contains!9042 (tail!6527 rules!3756) r!4008) lt!1475777)))

(declare-fun b!4138776 () Bool)

(declare-fun e!2567958 () Bool)

(assert (=> b!4138776 (= e!2567959 e!2567958)))

(declare-fun res!1692907 () Bool)

(assert (=> b!4138776 (=> res!1692907 e!2567958)))

(assert (=> b!4138776 (= res!1692907 (= (h!50284 (tail!6527 rules!3756)) r!4008))))

(declare-fun b!4138777 () Bool)

(assert (=> b!4138777 (= e!2567958 (contains!9042 (t!342169 (tail!6527 rules!3756)) r!4008))))

(assert (= (and d!1225528 res!1692906) b!4138776))

(assert (= (and b!4138776 (not res!1692907)) b!4138777))

(assert (=> d!1225528 m!4734851))

(declare-fun m!4735313 () Bool)

(assert (=> d!1225528 m!4735313))

(declare-fun m!4735315 () Bool)

(assert (=> d!1225528 m!4735315))

(declare-fun m!4735317 () Bool)

(assert (=> b!4138777 m!4735317))

(assert (=> b!4138366 d!1225528))

(declare-fun d!1225530 () Bool)

(assert (=> d!1225530 (contains!9042 (tail!6527 rules!3756) r!4008)))

(declare-fun lt!1475780 () Unit!64169)

(declare-fun choose!25307 (List!44988 Rule!14524 Rule!14524) Unit!64169)

(assert (=> d!1225530 (= lt!1475780 (choose!25307 rules!3756 rBis!149 r!4008))))

(declare-fun e!2567971 () Bool)

(assert (=> d!1225530 e!2567971))

(declare-fun res!1692910 () Bool)

(assert (=> d!1225530 (=> (not res!1692910) (not e!2567971))))

(assert (=> d!1225530 (= res!1692910 (contains!9042 rules!3756 rBis!149))))

(assert (=> d!1225530 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!66 rules!3756 rBis!149 r!4008) lt!1475780)))

(declare-fun b!4138808 () Bool)

(assert (=> b!4138808 (= e!2567971 (contains!9042 rules!3756 r!4008))))

(assert (= (and d!1225530 res!1692910) b!4138808))

(assert (=> d!1225530 m!4734851))

(assert (=> d!1225530 m!4734851))

(assert (=> d!1225530 m!4734853))

(declare-fun m!4735323 () Bool)

(assert (=> d!1225530 m!4735323))

(assert (=> d!1225530 m!4734895))

(assert (=> b!4138808 m!4734893))

(assert (=> b!4138366 d!1225530))

(declare-fun b!4138827 () Bool)

(declare-fun res!1692929 () Bool)

(declare-fun e!2567983 () Bool)

(assert (=> b!4138827 (=> (not res!1692929) (not e!2567983))))

(declare-fun lt!1475792 () Option!9668)

(assert (=> b!4138827 (= res!1692929 (= (rule!10466 (_1!24761 (get!14638 lt!1475792))) rBis!149))))

(declare-fun b!4138828 () Bool)

(assert (=> b!4138828 (= e!2567983 (= (size!33220 (_1!24761 (get!14638 lt!1475792))) (size!33221 (originalCharacters!7858 (_1!24761 (get!14638 lt!1475792))))))))

(declare-fun b!4138829 () Bool)

(declare-fun e!2567980 () Option!9668)

(assert (=> b!4138829 (= e!2567980 None!9667)))

(declare-fun b!4138830 () Bool)

(declare-fun e!2567982 () Bool)

(assert (=> b!4138830 (= e!2567982 e!2567983)))

(declare-fun res!1692928 () Bool)

(assert (=> b!4138830 (=> (not res!1692928) (not e!2567983))))

(assert (=> b!4138830 (= res!1692928 (matchR!6096 (regex!7362 rBis!149) (list!16429 (charsOf!4961 (_1!24761 (get!14638 lt!1475792))))))))

(declare-fun d!1225532 () Bool)

(assert (=> d!1225532 e!2567982))

(declare-fun res!1692931 () Bool)

(assert (=> d!1225532 (=> res!1692931 e!2567982)))

(assert (=> d!1225532 (= res!1692931 (isEmpty!26740 lt!1475792))))

(assert (=> d!1225532 (= lt!1475792 e!2567980)))

(declare-fun c!709661 () Bool)

(declare-datatypes ((tuple2!43258 0))(
  ( (tuple2!43259 (_1!24763 List!44987) (_2!24763 List!44987)) )
))
(declare-fun lt!1475793 () tuple2!43258)

(assert (=> d!1225532 (= c!709661 (isEmpty!26741 (_1!24763 lt!1475793)))))

(declare-fun findLongestMatch!1434 (Regex!12267 List!44987) tuple2!43258)

(assert (=> d!1225532 (= lt!1475793 (findLongestMatch!1434 (regex!7362 rBis!149) input!3238))))

(assert (=> d!1225532 (ruleValid!3168 thiss!25645 rBis!149)))

(assert (=> d!1225532 (= (maxPrefixOneRule!3080 thiss!25645 rBis!149 input!3238) lt!1475792)))

(declare-fun b!4138831 () Bool)

(declare-fun res!1692927 () Bool)

(assert (=> b!4138831 (=> (not res!1692927) (not e!2567983))))

(assert (=> b!4138831 (= res!1692927 (= (value!230371 (_1!24761 (get!14638 lt!1475792))) (apply!10435 (transformation!7362 (rule!10466 (_1!24761 (get!14638 lt!1475792)))) (seqFromList!5479 (originalCharacters!7858 (_1!24761 (get!14638 lt!1475792)))))))))

(declare-fun b!4138832 () Bool)

(assert (=> b!4138832 (= e!2567980 (Some!9667 (tuple2!43255 (Token!13655 (apply!10435 (transformation!7362 rBis!149) (seqFromList!5479 (_1!24763 lt!1475793))) rBis!149 (size!33222 (seqFromList!5479 (_1!24763 lt!1475793))) (_1!24763 lt!1475793)) (_2!24763 lt!1475793))))))

(declare-fun lt!1475794 () Unit!64169)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1494 (Regex!12267 List!44987) Unit!64169)

(assert (=> b!4138832 (= lt!1475794 (longestMatchIsAcceptedByMatchOrIsEmpty!1494 (regex!7362 rBis!149) input!3238))))

(declare-fun res!1692925 () Bool)

(declare-fun findLongestMatchInner!1521 (Regex!12267 List!44987 Int List!44987 List!44987 Int) tuple2!43258)

(assert (=> b!4138832 (= res!1692925 (isEmpty!26741 (_1!24763 (findLongestMatchInner!1521 (regex!7362 rBis!149) Nil!44863 (size!33221 Nil!44863) input!3238 input!3238 (size!33221 input!3238)))))))

(declare-fun e!2567981 () Bool)

(assert (=> b!4138832 (=> res!1692925 e!2567981)))

(assert (=> b!4138832 e!2567981))

(declare-fun lt!1475791 () Unit!64169)

(assert (=> b!4138832 (= lt!1475791 lt!1475794)))

(declare-fun lt!1475795 () Unit!64169)

(assert (=> b!4138832 (= lt!1475795 (lemmaSemiInverse!2220 (transformation!7362 rBis!149) (seqFromList!5479 (_1!24763 lt!1475793))))))

(declare-fun b!4138833 () Bool)

(declare-fun res!1692930 () Bool)

(assert (=> b!4138833 (=> (not res!1692930) (not e!2567983))))

(assert (=> b!4138833 (= res!1692930 (< (size!33221 (_2!24761 (get!14638 lt!1475792))) (size!33221 input!3238)))))

(declare-fun b!4138834 () Bool)

(assert (=> b!4138834 (= e!2567981 (matchR!6096 (regex!7362 rBis!149) (_1!24763 (findLongestMatchInner!1521 (regex!7362 rBis!149) Nil!44863 (size!33221 Nil!44863) input!3238 input!3238 (size!33221 input!3238)))))))

(declare-fun b!4138835 () Bool)

(declare-fun res!1692926 () Bool)

(assert (=> b!4138835 (=> (not res!1692926) (not e!2567983))))

(assert (=> b!4138835 (= res!1692926 (= (++!11606 (list!16429 (charsOf!4961 (_1!24761 (get!14638 lt!1475792)))) (_2!24761 (get!14638 lt!1475792))) input!3238))))

(assert (= (and d!1225532 c!709661) b!4138829))

(assert (= (and d!1225532 (not c!709661)) b!4138832))

(assert (= (and b!4138832 (not res!1692925)) b!4138834))

(assert (= (and d!1225532 (not res!1692931)) b!4138830))

(assert (= (and b!4138830 res!1692928) b!4138835))

(assert (= (and b!4138835 res!1692926) b!4138833))

(assert (= (and b!4138833 res!1692930) b!4138827))

(assert (= (and b!4138827 res!1692929) b!4138831))

(assert (= (and b!4138831 res!1692927) b!4138828))

(declare-fun m!4735325 () Bool)

(assert (=> d!1225532 m!4735325))

(declare-fun m!4735327 () Bool)

(assert (=> d!1225532 m!4735327))

(declare-fun m!4735329 () Bool)

(assert (=> d!1225532 m!4735329))

(assert (=> d!1225532 m!4734915))

(declare-fun m!4735331 () Bool)

(assert (=> b!4138831 m!4735331))

(declare-fun m!4735333 () Bool)

(assert (=> b!4138831 m!4735333))

(assert (=> b!4138831 m!4735333))

(declare-fun m!4735335 () Bool)

(assert (=> b!4138831 m!4735335))

(declare-fun m!4735337 () Bool)

(assert (=> b!4138834 m!4735337))

(assert (=> b!4138834 m!4734959))

(assert (=> b!4138834 m!4735337))

(assert (=> b!4138834 m!4734959))

(declare-fun m!4735339 () Bool)

(assert (=> b!4138834 m!4735339))

(declare-fun m!4735341 () Bool)

(assert (=> b!4138834 m!4735341))

(assert (=> b!4138828 m!4735331))

(declare-fun m!4735343 () Bool)

(assert (=> b!4138828 m!4735343))

(assert (=> b!4138830 m!4735331))

(declare-fun m!4735345 () Bool)

(assert (=> b!4138830 m!4735345))

(assert (=> b!4138830 m!4735345))

(declare-fun m!4735347 () Bool)

(assert (=> b!4138830 m!4735347))

(assert (=> b!4138830 m!4735347))

(declare-fun m!4735349 () Bool)

(assert (=> b!4138830 m!4735349))

(assert (=> b!4138827 m!4735331))

(assert (=> b!4138835 m!4735331))

(assert (=> b!4138835 m!4735345))

(assert (=> b!4138835 m!4735345))

(assert (=> b!4138835 m!4735347))

(assert (=> b!4138835 m!4735347))

(declare-fun m!4735351 () Bool)

(assert (=> b!4138835 m!4735351))

(assert (=> b!4138833 m!4735331))

(declare-fun m!4735353 () Bool)

(assert (=> b!4138833 m!4735353))

(assert (=> b!4138833 m!4734959))

(declare-fun m!4735355 () Bool)

(assert (=> b!4138832 m!4735355))

(declare-fun m!4735357 () Bool)

(assert (=> b!4138832 m!4735357))

(declare-fun m!4735359 () Bool)

(assert (=> b!4138832 m!4735359))

(assert (=> b!4138832 m!4735359))

(declare-fun m!4735361 () Bool)

(assert (=> b!4138832 m!4735361))

(assert (=> b!4138832 m!4735337))

(assert (=> b!4138832 m!4734959))

(assert (=> b!4138832 m!4735337))

(assert (=> b!4138832 m!4734959))

(assert (=> b!4138832 m!4735339))

(assert (=> b!4138832 m!4735359))

(declare-fun m!4735363 () Bool)

(assert (=> b!4138832 m!4735363))

(assert (=> b!4138832 m!4735359))

(declare-fun m!4735365 () Bool)

(assert (=> b!4138832 m!4735365))

(assert (=> b!4138366 d!1225532))

(declare-fun d!1225534 () Bool)

(assert (=> d!1225534 (not (= rBis!149 r!4008))))

(declare-fun lt!1475798 () Unit!64169)

(declare-fun choose!25308 (LexerInterface!6951 List!44988 Rule!14524 Rule!14524) Unit!64169)

(assert (=> d!1225534 (= lt!1475798 (choose!25308 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1225534 (contains!9042 rules!3756 rBis!149)))

(assert (=> d!1225534 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!60 thiss!25645 rules!3756 rBis!149 r!4008) lt!1475798)))

(declare-fun bs!595189 () Bool)

(assert (= bs!595189 d!1225534))

(declare-fun m!4735367 () Bool)

(assert (=> bs!595189 m!4735367))

(assert (=> bs!595189 m!4734895))

(assert (=> b!4138366 d!1225534))

(declare-fun d!1225536 () Bool)

(assert (=> d!1225536 (= (tail!6527 rules!3756) (t!342169 rules!3756))))

(assert (=> b!4138366 d!1225536))

(declare-fun d!1225538 () Bool)

(assert (=> d!1225538 (= (isEmpty!26740 lt!1475635) (not ((_ is Some!9667) lt!1475635)))))

(assert (=> b!4138366 d!1225538))

(declare-fun b!4138847 () Bool)

(declare-fun e!2567986 () Bool)

(declare-fun tp!1261533 () Bool)

(declare-fun tp!1261532 () Bool)

(assert (=> b!4138847 (= e!2567986 (and tp!1261533 tp!1261532))))

(declare-fun b!4138846 () Bool)

(assert (=> b!4138846 (= e!2567986 tp_is_empty!21457)))

(assert (=> b!4138376 (= tp!1261472 e!2567986)))

(declare-fun b!4138848 () Bool)

(declare-fun tp!1261535 () Bool)

(assert (=> b!4138848 (= e!2567986 tp!1261535)))

(declare-fun b!4138849 () Bool)

(declare-fun tp!1261534 () Bool)

(declare-fun tp!1261536 () Bool)

(assert (=> b!4138849 (= e!2567986 (and tp!1261534 tp!1261536))))

(assert (= (and b!4138376 ((_ is ElementMatch!12267) (regex!7362 (h!50284 rules!3756)))) b!4138846))

(assert (= (and b!4138376 ((_ is Concat!19860) (regex!7362 (h!50284 rules!3756)))) b!4138847))

(assert (= (and b!4138376 ((_ is Star!12267) (regex!7362 (h!50284 rules!3756)))) b!4138848))

(assert (= (and b!4138376 ((_ is Union!12267) (regex!7362 (h!50284 rules!3756)))) b!4138849))

(declare-fun b!4138854 () Bool)

(declare-fun e!2567989 () Bool)

(declare-fun tp!1261539 () Bool)

(assert (=> b!4138854 (= e!2567989 (and tp_is_empty!21457 tp!1261539))))

(assert (=> b!4138380 (= tp!1261465 e!2567989)))

(assert (= (and b!4138380 ((_ is Cons!44863) (t!342168 p!2912))) b!4138854))

(declare-fun b!4138855 () Bool)

(declare-fun e!2567990 () Bool)

(declare-fun tp!1261540 () Bool)

(assert (=> b!4138855 (= e!2567990 (and tp_is_empty!21457 tp!1261540))))

(assert (=> b!4138379 (= tp!1261471 e!2567990)))

(assert (= (and b!4138379 ((_ is Cons!44863) (t!342168 input!3238))) b!4138855))

(declare-fun b!4138857 () Bool)

(declare-fun e!2567991 () Bool)

(declare-fun tp!1261542 () Bool)

(declare-fun tp!1261541 () Bool)

(assert (=> b!4138857 (= e!2567991 (and tp!1261542 tp!1261541))))

(declare-fun b!4138856 () Bool)

(assert (=> b!4138856 (= e!2567991 tp_is_empty!21457)))

(assert (=> b!4138373 (= tp!1261470 e!2567991)))

(declare-fun b!4138858 () Bool)

(declare-fun tp!1261544 () Bool)

(assert (=> b!4138858 (= e!2567991 tp!1261544)))

(declare-fun b!4138859 () Bool)

(declare-fun tp!1261543 () Bool)

(declare-fun tp!1261545 () Bool)

(assert (=> b!4138859 (= e!2567991 (and tp!1261543 tp!1261545))))

(assert (= (and b!4138373 ((_ is ElementMatch!12267) (regex!7362 r!4008))) b!4138856))

(assert (= (and b!4138373 ((_ is Concat!19860) (regex!7362 r!4008))) b!4138857))

(assert (= (and b!4138373 ((_ is Star!12267) (regex!7362 r!4008))) b!4138858))

(assert (= (and b!4138373 ((_ is Union!12267) (regex!7362 r!4008))) b!4138859))

(declare-fun b!4138861 () Bool)

(declare-fun e!2567992 () Bool)

(declare-fun tp!1261547 () Bool)

(declare-fun tp!1261546 () Bool)

(assert (=> b!4138861 (= e!2567992 (and tp!1261547 tp!1261546))))

(declare-fun b!4138860 () Bool)

(assert (=> b!4138860 (= e!2567992 tp_is_empty!21457)))

(assert (=> b!4138367 (= tp!1261466 e!2567992)))

(declare-fun b!4138862 () Bool)

(declare-fun tp!1261549 () Bool)

(assert (=> b!4138862 (= e!2567992 tp!1261549)))

(declare-fun b!4138863 () Bool)

(declare-fun tp!1261548 () Bool)

(declare-fun tp!1261550 () Bool)

(assert (=> b!4138863 (= e!2567992 (and tp!1261548 tp!1261550))))

(assert (= (and b!4138367 ((_ is ElementMatch!12267) (regex!7362 rBis!149))) b!4138860))

(assert (= (and b!4138367 ((_ is Concat!19860) (regex!7362 rBis!149))) b!4138861))

(assert (= (and b!4138367 ((_ is Star!12267) (regex!7362 rBis!149))) b!4138862))

(assert (= (and b!4138367 ((_ is Union!12267) (regex!7362 rBis!149))) b!4138863))

(declare-fun b!4138874 () Bool)

(declare-fun b_free!117747 () Bool)

(declare-fun b_next!118451 () Bool)

(assert (=> b!4138874 (= b_free!117747 (not b_next!118451))))

(declare-fun t!342214 () Bool)

(declare-fun tb!248445 () Bool)

(assert (=> (and b!4138874 (= (toValue!10026 (transformation!7362 (h!50284 (t!342169 rules!3756)))) (toValue!10026 (transformation!7362 r!4008))) t!342214) tb!248445))

(declare-fun result!302082 () Bool)

(assert (= result!302082 result!302020))

(assert (=> d!1225398 t!342214))

(assert (=> d!1225436 t!342214))

(declare-fun b_and!321281 () Bool)

(declare-fun tp!1261561 () Bool)

(assert (=> b!4138874 (= tp!1261561 (and (=> t!342214 result!302082) b_and!321281))))

(declare-fun b_free!117749 () Bool)

(declare-fun b_next!118453 () Bool)

(assert (=> b!4138874 (= b_free!117749 (not b_next!118453))))

(declare-fun tb!248447 () Bool)

(declare-fun t!342216 () Bool)

(assert (=> (and b!4138874 (= (toChars!9885 (transformation!7362 (h!50284 (t!342169 rules!3756)))) (toChars!9885 (transformation!7362 r!4008))) t!342216) tb!248447))

(declare-fun result!302084 () Bool)

(assert (= result!302084 result!302044))

(assert (=> d!1225436 t!342216))

(declare-fun tb!248449 () Bool)

(declare-fun t!342218 () Bool)

(assert (=> (and b!4138874 (= (toChars!9885 (transformation!7362 (h!50284 (t!342169 rules!3756)))) (toChars!9885 (transformation!7362 (rule!10466 (_1!24761 lt!1475624))))) t!342218) tb!248449))

(declare-fun result!302086 () Bool)

(assert (= result!302086 result!302052))

(assert (=> d!1225502 t!342218))

(declare-fun tp!1261562 () Bool)

(declare-fun b_and!321283 () Bool)

(assert (=> b!4138874 (= tp!1261562 (and (=> t!342216 result!302084) (=> t!342218 result!302086) b_and!321283))))

(declare-fun e!2568002 () Bool)

(assert (=> b!4138874 (= e!2568002 (and tp!1261561 tp!1261562))))

(declare-fun e!2568004 () Bool)

(declare-fun tp!1261559 () Bool)

(declare-fun b!4138873 () Bool)

(assert (=> b!4138873 (= e!2568004 (and tp!1261559 (inv!59468 (tag!8222 (h!50284 (t!342169 rules!3756)))) (inv!59470 (transformation!7362 (h!50284 (t!342169 rules!3756)))) e!2568002))))

(declare-fun b!4138872 () Bool)

(declare-fun e!2568001 () Bool)

(declare-fun tp!1261560 () Bool)

(assert (=> b!4138872 (= e!2568001 (and e!2568004 tp!1261560))))

(assert (=> b!4138372 (= tp!1261464 e!2568001)))

(assert (= b!4138873 b!4138874))

(assert (= b!4138872 b!4138873))

(assert (= (and b!4138372 ((_ is Cons!44864) (t!342169 rules!3756))) b!4138872))

(declare-fun m!4735369 () Bool)

(assert (=> b!4138873 m!4735369))

(declare-fun m!4735371 () Bool)

(assert (=> b!4138873 m!4735371))

(declare-fun b_lambda!121649 () Bool)

(assert (= b_lambda!121633 (or (and b!4138365 b_free!117733 (= (toChars!9885 (transformation!7362 (h!50284 rules!3756))) (toChars!9885 (transformation!7362 r!4008)))) (and b!4138387 b_free!117737) (and b!4138378 b_free!117741 (= (toChars!9885 (transformation!7362 rBis!149)) (toChars!9885 (transformation!7362 r!4008)))) (and b!4138874 b_free!117749 (= (toChars!9885 (transformation!7362 (h!50284 (t!342169 rules!3756)))) (toChars!9885 (transformation!7362 r!4008)))) b_lambda!121649)))

(declare-fun b_lambda!121651 () Bool)

(assert (= b_lambda!121627 (or (and b!4138365 b_free!117731 (= (toValue!10026 (transformation!7362 (h!50284 rules!3756))) (toValue!10026 (transformation!7362 r!4008)))) (and b!4138387 b_free!117735) (and b!4138378 b_free!117739 (= (toValue!10026 (transformation!7362 rBis!149)) (toValue!10026 (transformation!7362 r!4008)))) (and b!4138874 b_free!117747 (= (toValue!10026 (transformation!7362 (h!50284 (t!342169 rules!3756)))) (toValue!10026 (transformation!7362 r!4008)))) b_lambda!121651)))

(declare-fun b_lambda!121653 () Bool)

(assert (= b_lambda!121635 (or (and b!4138365 b_free!117731 (= (toValue!10026 (transformation!7362 (h!50284 rules!3756))) (toValue!10026 (transformation!7362 r!4008)))) (and b!4138387 b_free!117735) (and b!4138378 b_free!117739 (= (toValue!10026 (transformation!7362 rBis!149)) (toValue!10026 (transformation!7362 r!4008)))) (and b!4138874 b_free!117747 (= (toValue!10026 (transformation!7362 (h!50284 (t!342169 rules!3756)))) (toValue!10026 (transformation!7362 r!4008)))) b_lambda!121653)))

(check-sat (not d!1225492) (not b!4138734) (not b_next!118445) (not b_next!118451) (not b!4138861) b_and!321253 (not b!4138521) (not b!4138833) (not b!4138518) (not b!4138458) b_and!321257 (not b_next!118453) (not d!1225378) (not d!1225488) b_and!321259 (not d!1225496) (not b!4138672) (not b!4138714) (not d!1225528) (not b!4138857) (not tb!248403) (not b!4138760) (not b!4138828) (not d!1225498) (not b_next!118435) (not d!1225514) (not b_next!118439) (not b!4138849) (not b!4138830) (not b!4138859) (not d!1225406) (not b_next!118443) (not b!4138656) (not b!4138730) (not b!4138775) (not b!4138731) (not b_next!118441) (not b!4138724) (not d!1225494) (not b!4138664) (not d!1225508) (not b_lambda!121651) (not b!4138834) (not b!4138858) (not b!4138716) (not tb!248427) (not b!4138669) (not b_lambda!121637) (not b!4138520) (not b!4138808) (not b_lambda!121653) (not b!4138420) (not d!1225532) (not b!4138855) (not d!1225490) (not b!4138777) (not b!4138862) tp_is_empty!21457 (not b!4138848) (not b_next!118437) (not b!4138421) (not bm!290462) (not d!1225522) (not d!1225520) (not b!4138522) (not b!4138715) (not b!4138683) b_and!321255 (not d!1225484) b_and!321281 b_and!321263 (not bm!290471) (not b!4138832) (not b!4138427) (not b!4138523) (not d!1225502) (not b!4138718) b_and!321283 (not b!4138684) (not d!1225512) (not b!4138428) (not b!4138854) (not b!4138403) (not b!4138720) (not b!4138739) (not d!1225404) (not d!1225526) (not b!4138519) (not d!1225382) (not b!4138835) b_and!321261 (not b!4138872) (not b!4138735) (not b!4138728) (not b!4138732) (not b!4138737) (not b!4138827) (not b!4138873) (not b!4138756) (not b_lambda!121649) (not b!4138662) (not b!4138515) (not b!4138419) (not b!4138831) (not d!1225524) (not d!1225510) (not d!1225534) (not b!4138391) (not b!4138863) (not b!4138516) (not d!1225530) (not b!4138847) (not d!1225478) (not b!4138429) (not b!4138671) (not d!1225500) (not d!1225436) (not d!1225482) (not tb!248421))
(check-sat (not b_next!118435) (not b_next!118445) (not b_next!118441) (not b_next!118437) b_and!321283 b_and!321261 (not b_next!118451) b_and!321253 b_and!321257 (not b_next!118453) b_and!321259 (not b_next!118439) (not b_next!118443) b_and!321255 b_and!321281 b_and!321263)
