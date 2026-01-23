; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241314 () Bool)

(assert start!241314)

(declare-fun b!2474375 () Bool)

(declare-fun b_free!71701 () Bool)

(declare-fun b_next!72405 () Bool)

(assert (=> b!2474375 (= b_free!71701 (not b_next!72405))))

(declare-fun tp!791138 () Bool)

(declare-fun b_and!187829 () Bool)

(assert (=> b!2474375 (= tp!791138 b_and!187829)))

(declare-fun b_free!71703 () Bool)

(declare-fun b_next!72407 () Bool)

(assert (=> b!2474375 (= b_free!71703 (not b_next!72407))))

(declare-fun tp!791131 () Bool)

(declare-fun b_and!187831 () Bool)

(assert (=> b!2474375 (= tp!791131 b_and!187831)))

(declare-fun b!2474372 () Bool)

(declare-fun b_free!71705 () Bool)

(declare-fun b_next!72409 () Bool)

(assert (=> b!2474372 (= b_free!71705 (not b_next!72409))))

(declare-fun tp!791143 () Bool)

(declare-fun b_and!187833 () Bool)

(assert (=> b!2474372 (= tp!791143 b_and!187833)))

(declare-fun b_free!71707 () Bool)

(declare-fun b_next!72411 () Bool)

(assert (=> b!2474372 (= b_free!71707 (not b_next!72411))))

(declare-fun tp!791129 () Bool)

(declare-fun b_and!187835 () Bool)

(assert (=> b!2474372 (= tp!791129 b_and!187835)))

(declare-fun b!2474371 () Bool)

(declare-fun b_free!71709 () Bool)

(declare-fun b_next!72413 () Bool)

(assert (=> b!2474371 (= b_free!71709 (not b_next!72413))))

(declare-fun tp!791127 () Bool)

(declare-fun b_and!187837 () Bool)

(assert (=> b!2474371 (= tp!791127 b_and!187837)))

(declare-fun b_free!71711 () Bool)

(declare-fun b_next!72415 () Bool)

(assert (=> b!2474371 (= b_free!71711 (not b_next!72415))))

(declare-fun tp!791133 () Bool)

(declare-fun b_and!187839 () Bool)

(assert (=> b!2474371 (= tp!791133 b_and!187839)))

(declare-fun b!2474369 () Bool)

(declare-fun b_free!71713 () Bool)

(declare-fun b_next!72417 () Bool)

(assert (=> b!2474369 (= b_free!71713 (not b_next!72417))))

(declare-fun tp!791140 () Bool)

(declare-fun b_and!187841 () Bool)

(assert (=> b!2474369 (= tp!791140 b_and!187841)))

(declare-fun b_free!71715 () Bool)

(declare-fun b_next!72419 () Bool)

(assert (=> b!2474369 (= b_free!71715 (not b_next!72419))))

(declare-fun tp!791130 () Bool)

(declare-fun b_and!187843 () Bool)

(assert (=> b!2474369 (= tp!791130 b_and!187843)))

(declare-fun b!2474363 () Bool)

(declare-fun res!1047564 () Bool)

(declare-fun e!1569689 () Bool)

(assert (=> b!2474363 (=> (not res!1047564) (not e!1569689))))

(declare-datatypes ((List!28978 0))(
  ( (Nil!28878) (Cons!28878 (h!34279 (_ BitVec 16)) (t!210449 List!28978)) )
))
(declare-datatypes ((TokenValue!4689 0))(
  ( (FloatLiteralValue!9378 (text!33268 List!28978)) (TokenValueExt!4688 (__x!18633 Int)) (Broken!23445 (value!143715 List!28978)) (Object!4788) (End!4689) (Def!4689) (Underscore!4689) (Match!4689) (Else!4689) (Error!4689) (Case!4689) (If!4689) (Extends!4689) (Abstract!4689) (Class!4689) (Val!4689) (DelimiterValue!9378 (del!4749 List!28978)) (KeywordValue!4695 (value!143716 List!28978)) (CommentValue!9378 (value!143717 List!28978)) (WhitespaceValue!9378 (value!143718 List!28978)) (IndentationValue!4689 (value!143719 List!28978)) (String!31740) (Int32!4689) (Broken!23446 (value!143720 List!28978)) (Boolean!4690) (Unit!42245) (OperatorValue!4692 (op!4749 List!28978)) (IdentifierValue!9378 (value!143721 List!28978)) (IdentifierValue!9379 (value!143722 List!28978)) (WhitespaceValue!9379 (value!143723 List!28978)) (True!9378) (False!9378) (Broken!23447 (value!143724 List!28978)) (Broken!23448 (value!143725 List!28978)) (True!9379) (RightBrace!4689) (RightBracket!4689) (Colon!4689) (Null!4689) (Comma!4689) (LeftBracket!4689) (False!9379) (LeftBrace!4689) (ImaginaryLiteralValue!4689 (text!33269 List!28978)) (StringLiteralValue!14067 (value!143726 List!28978)) (EOFValue!4689 (value!143727 List!28978)) (IdentValue!4689 (value!143728 List!28978)) (DelimiterValue!9379 (value!143729 List!28978)) (DedentValue!4689 (value!143730 List!28978)) (NewLineValue!4689 (value!143731 List!28978)) (IntegerValue!14067 (value!143732 (_ BitVec 32)) (text!33270 List!28978)) (IntegerValue!14068 (value!143733 Int) (text!33271 List!28978)) (Times!4689) (Or!4689) (Equal!4689) (Minus!4689) (Broken!23449 (value!143734 List!28978)) (And!4689) (Div!4689) (LessEqual!4689) (Mod!4689) (Concat!11980) (Not!4689) (Plus!4689) (SpaceValue!4689 (value!143735 List!28978)) (IntegerValue!14069 (value!143736 Int) (text!33272 List!28978)) (StringLiteralValue!14068 (text!33273 List!28978)) (FloatLiteralValue!9379 (text!33274 List!28978)) (BytesLiteralValue!4689 (value!143737 List!28978)) (CommentValue!9379 (value!143738 List!28978)) (StringLiteralValue!14069 (value!143739 List!28978)) (ErrorTokenValue!4689 (msg!4750 List!28978)) )
))
(declare-datatypes ((C!14740 0))(
  ( (C!14741 (val!8630 Int)) )
))
(declare-datatypes ((List!28979 0))(
  ( (Nil!28879) (Cons!28879 (h!34280 C!14740) (t!210450 List!28979)) )
))
(declare-datatypes ((IArray!18447 0))(
  ( (IArray!18448 (innerList!9281 List!28979)) )
))
(declare-datatypes ((Conc!9221 0))(
  ( (Node!9221 (left!22147 Conc!9221) (right!22477 Conc!9221) (csize!18672 Int) (cheight!9432 Int)) (Leaf!13780 (xs!12205 IArray!18447) (csize!18673 Int)) (Empty!9221) )
))
(declare-datatypes ((BalanceConc!18056 0))(
  ( (BalanceConc!18057 (c!393938 Conc!9221)) )
))
(declare-datatypes ((Regex!7291 0))(
  ( (ElementMatch!7291 (c!393939 C!14740)) (Concat!11981 (regOne!15094 Regex!7291) (regTwo!15094 Regex!7291)) (EmptyExpr!7291) (Star!7291 (reg!7620 Regex!7291)) (EmptyLang!7291) (Union!7291 (regOne!15095 Regex!7291) (regTwo!15095 Regex!7291)) )
))
(declare-datatypes ((String!31741 0))(
  ( (String!31742 (value!143740 String)) )
))
(declare-datatypes ((TokenValueInjection!8878 0))(
  ( (TokenValueInjection!8879 (toValue!6367 Int) (toChars!6226 Int)) )
))
(declare-datatypes ((Rule!8806 0))(
  ( (Rule!8807 (regex!4503 Regex!7291) (tag!4993 String!31741) (isSeparator!4503 Bool) (transformation!4503 TokenValueInjection!8878)) )
))
(declare-datatypes ((Token!8476 0))(
  ( (Token!8477 (value!143741 TokenValue!4689) (rule!6861 Rule!8806) (size!22473 Int) (originalCharacters!5269 List!28979)) )
))
(declare-datatypes ((List!28980 0))(
  ( (Nil!28880) (Cons!28880 (h!34281 Token!8476) (t!210451 List!28980)) )
))
(declare-fun lt!883738 () List!28980)

(declare-fun i!1803 () Int)

(declare-fun t1!67 () Token!8476)

(declare-fun apply!6812 (List!28980 Int) Token!8476)

(assert (=> b!2474363 (= res!1047564 (= (apply!6812 lt!883738 (- i!1803 1)) t1!67))))

(declare-fun b!2474364 () Bool)

(declare-fun res!1047563 () Bool)

(declare-fun e!1569680 () Bool)

(assert (=> b!2474364 (=> (not res!1047563) (not e!1569680))))

(declare-fun t2!67 () Token!8476)

(declare-fun l!6611 () List!28980)

(assert (=> b!2474364 (= res!1047563 (= (apply!6812 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun b!2474365 () Bool)

(declare-fun res!1047554 () Bool)

(assert (=> b!2474365 (=> (not res!1047554) (not e!1569680))))

(assert (=> b!2474365 (= res!1047554 (not (= i!1803 0)))))

(declare-fun b!2474367 () Bool)

(declare-fun res!1047561 () Bool)

(assert (=> b!2474367 (=> (not res!1047561) (not e!1569680))))

(declare-datatypes ((LexerInterface!4100 0))(
  ( (LexerInterfaceExt!4097 (__x!18634 Int)) (Lexer!4098) )
))
(declare-fun thiss!27932 () LexerInterface!4100)

(declare-datatypes ((List!28981 0))(
  ( (Nil!28881) (Cons!28881 (h!34282 Rule!8806) (t!210452 List!28981)) )
))
(declare-fun rules!4472 () List!28981)

(declare-fun tokensListTwoByTwoPredicateSeparableList!639 (LexerInterface!4100 List!28980 List!28981) Bool)

(assert (=> b!2474367 (= res!1047561 (tokensListTwoByTwoPredicateSeparableList!639 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2474368 () Bool)

(declare-fun res!1047553 () Bool)

(assert (=> b!2474368 (=> (not res!1047553) (not e!1569680))))

(declare-fun size!22474 (List!28980) Int)

(assert (=> b!2474368 (= res!1047553 (< (+ 1 i!1803) (size!22474 l!6611)))))

(declare-fun e!1569678 () Bool)

(assert (=> b!2474369 (= e!1569678 (and tp!791140 tp!791130))))

(declare-fun b!2474370 () Bool)

(declare-fun res!1047555 () Bool)

(assert (=> b!2474370 (=> (not res!1047555) (not e!1569680))))

(assert (=> b!2474370 (= res!1047555 (= (apply!6812 l!6611 i!1803) t1!67))))

(declare-fun e!1569673 () Bool)

(assert (=> b!2474371 (= e!1569673 (and tp!791127 tp!791133))))

(declare-fun e!1569675 () Bool)

(assert (=> b!2474372 (= e!1569675 (and tp!791143 tp!791129))))

(declare-fun b!2474373 () Bool)

(declare-fun e!1569669 () Bool)

(declare-fun tp!791141 () Bool)

(declare-fun inv!38969 (String!31741) Bool)

(declare-fun inv!38972 (TokenValueInjection!8878) Bool)

(assert (=> b!2474373 (= e!1569669 (and tp!791141 (inv!38969 (tag!4993 (rule!6861 t1!67))) (inv!38972 (transformation!4503 (rule!6861 t1!67))) e!1569673))))

(declare-fun b!2474374 () Bool)

(declare-fun res!1047569 () Bool)

(assert (=> b!2474374 (=> (not res!1047569) (not e!1569680))))

(assert (=> b!2474374 (= res!1047569 (>= i!1803 0))))

(declare-fun e!1569670 () Bool)

(assert (=> b!2474375 (= e!1569670 (and tp!791138 tp!791131))))

(declare-fun b!2474376 () Bool)

(declare-fun tp!791134 () Bool)

(declare-fun e!1569667 () Bool)

(assert (=> b!2474376 (= e!1569667 (and tp!791134 (inv!38969 (tag!4993 (h!34282 rules!4472))) (inv!38972 (transformation!4503 (h!34282 rules!4472))) e!1569678))))

(declare-fun b!2474377 () Bool)

(declare-fun e!1569672 () Bool)

(declare-fun tp!791139 () Bool)

(assert (=> b!2474377 (= e!1569672 (and e!1569667 tp!791139))))

(declare-fun b!2474378 () Bool)

(declare-fun res!1047558 () Bool)

(assert (=> b!2474378 (=> (not res!1047558) (not e!1569689))))

(declare-fun lt!883736 () Int)

(assert (=> b!2474378 (= res!1047558 (= (apply!6812 lt!883738 lt!883736) t2!67))))

(declare-fun b!2474379 () Bool)

(declare-fun e!1569674 () Bool)

(assert (=> b!2474379 (= e!1569674 e!1569689)))

(declare-fun res!1047568 () Bool)

(assert (=> b!2474379 (=> (not res!1047568) (not e!1569689))))

(assert (=> b!2474379 (= res!1047568 (< lt!883736 (size!22474 lt!883738)))))

(assert (=> b!2474379 (= lt!883736 (+ 1 (- i!1803 1)))))

(declare-fun e!1569676 () Bool)

(declare-fun b!2474380 () Bool)

(declare-fun tp!791142 () Bool)

(declare-fun inv!21 (TokenValue!4689) Bool)

(assert (=> b!2474380 (= e!1569676 (and (inv!21 (value!143741 t1!67)) e!1569669 tp!791142))))

(declare-fun b!2474381 () Bool)

(declare-fun res!1047559 () Bool)

(assert (=> b!2474381 (=> (not res!1047559) (not e!1569674))))

(assert (=> b!2474381 (= res!1047559 (tokensListTwoByTwoPredicateSeparableList!639 thiss!27932 lt!883738 rules!4472))))

(declare-fun b!2474382 () Bool)

(declare-fun res!1047557 () Bool)

(assert (=> b!2474382 (=> (not res!1047557) (not e!1569680))))

(declare-fun rulesInvariant!3600 (LexerInterface!4100 List!28981) Bool)

(assert (=> b!2474382 (= res!1047557 (rulesInvariant!3600 thiss!27932 rules!4472))))

(declare-fun b!2474383 () Bool)

(declare-fun e!1569685 () Bool)

(declare-fun tp!791132 () Bool)

(declare-fun e!1569677 () Bool)

(assert (=> b!2474383 (= e!1569685 (and (inv!21 (value!143741 t2!67)) e!1569677 tp!791132))))

(declare-fun b!2474384 () Bool)

(declare-fun e!1569684 () Bool)

(declare-fun tp!791137 () Bool)

(declare-fun e!1569671 () Bool)

(declare-fun inv!38973 (Token!8476) Bool)

(assert (=> b!2474384 (= e!1569671 (and (inv!38973 (h!34281 l!6611)) e!1569684 tp!791137))))

(declare-fun b!2474385 () Bool)

(assert (=> b!2474385 (= e!1569689 (not true))))

(declare-fun e!1569686 () Bool)

(assert (=> b!2474385 e!1569686))

(declare-fun res!1047556 () Bool)

(assert (=> b!2474385 (=> (not res!1047556) (not e!1569686))))

(declare-fun rulesProduceIndividualToken!1828 (LexerInterface!4100 List!28981 Token!8476) Bool)

(assert (=> b!2474385 (= res!1047556 (rulesProduceIndividualToken!1828 thiss!27932 rules!4472 t2!67))))

(declare-datatypes ((Unit!42246 0))(
  ( (Unit!42247) )
))
(declare-fun lt!883734 () Unit!42246)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!689 (LexerInterface!4100 List!28981 List!28980 Token!8476) Unit!42246)

(assert (=> b!2474385 (= lt!883734 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!689 thiss!27932 rules!4472 lt!883738 t2!67))))

(assert (=> b!2474385 (rulesProduceIndividualToken!1828 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!883735 () Unit!42246)

(assert (=> b!2474385 (= lt!883735 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!689 thiss!27932 rules!4472 lt!883738 t1!67))))

(declare-fun lt!883737 () Unit!42246)

(declare-fun tokensListTwoByTwoPredicateInstantiateSeparableTokens!10 (LexerInterface!4100 List!28980 List!28981 Token!8476 Token!8476 Int) Unit!42246)

(assert (=> b!2474385 (= lt!883737 (tokensListTwoByTwoPredicateInstantiateSeparableTokens!10 thiss!27932 lt!883738 rules!4472 t1!67 t2!67 (- i!1803 1)))))

(declare-fun e!1569688 () Bool)

(declare-fun tp!791135 () Bool)

(declare-fun b!2474366 () Bool)

(assert (=> b!2474366 (= e!1569684 (and (inv!21 (value!143741 (h!34281 l!6611))) e!1569688 tp!791135))))

(declare-fun res!1047566 () Bool)

(assert (=> start!241314 (=> (not res!1047566) (not e!1569680))))

(get-info :version)

(assert (=> start!241314 (= res!1047566 ((_ is Lexer!4098) thiss!27932))))

(assert (=> start!241314 e!1569680))

(assert (=> start!241314 true))

(assert (=> start!241314 e!1569672))

(assert (=> start!241314 (and (inv!38973 t2!67) e!1569685)))

(assert (=> start!241314 e!1569671))

(assert (=> start!241314 (and (inv!38973 t1!67) e!1569676)))

(declare-fun b!2474386 () Bool)

(assert (=> b!2474386 (= e!1569680 e!1569674)))

(declare-fun res!1047562 () Bool)

(assert (=> b!2474386 (=> (not res!1047562) (not e!1569674))))

(declare-fun rulesProduceEachTokenIndividuallyList!1416 (LexerInterface!4100 List!28981 List!28980) Bool)

(assert (=> b!2474386 (= res!1047562 (rulesProduceEachTokenIndividuallyList!1416 thiss!27932 rules!4472 lt!883738))))

(declare-fun tail!3936 (List!28980) List!28980)

(assert (=> b!2474386 (= lt!883738 (tail!3936 l!6611))))

(declare-fun b!2474387 () Bool)

(declare-fun separableTokensPredicate!875 (LexerInterface!4100 Token!8476 Token!8476 List!28981) Bool)

(assert (=> b!2474387 (= e!1569686 (separableTokensPredicate!875 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun b!2474388 () Bool)

(declare-fun res!1047560 () Bool)

(assert (=> b!2474388 (=> (not res!1047560) (not e!1569680))))

(assert (=> b!2474388 (= res!1047560 (rulesProduceEachTokenIndividuallyList!1416 thiss!27932 rules!4472 l!6611))))

(declare-fun tp!791136 () Bool)

(declare-fun b!2474389 () Bool)

(assert (=> b!2474389 (= e!1569688 (and tp!791136 (inv!38969 (tag!4993 (rule!6861 (h!34281 l!6611)))) (inv!38972 (transformation!4503 (rule!6861 (h!34281 l!6611)))) e!1569675))))

(declare-fun b!2474390 () Bool)

(declare-fun res!1047565 () Bool)

(assert (=> b!2474390 (=> (not res!1047565) (not e!1569680))))

(declare-fun isEmpty!16762 (List!28981) Bool)

(assert (=> b!2474390 (= res!1047565 (not (isEmpty!16762 rules!4472)))))

(declare-fun tp!791128 () Bool)

(declare-fun b!2474391 () Bool)

(assert (=> b!2474391 (= e!1569677 (and tp!791128 (inv!38969 (tag!4993 (rule!6861 t2!67))) (inv!38972 (transformation!4503 (rule!6861 t2!67))) e!1569670))))

(declare-fun b!2474392 () Bool)

(declare-fun res!1047567 () Bool)

(assert (=> b!2474392 (=> (not res!1047567) (not e!1569674))))

(assert (=> b!2474392 (= res!1047567 (>= (- i!1803 1) 0))))

(assert (= (and start!241314 res!1047566) b!2474390))

(assert (= (and b!2474390 res!1047565) b!2474382))

(assert (= (and b!2474382 res!1047557) b!2474388))

(assert (= (and b!2474388 res!1047560) b!2474367))

(assert (= (and b!2474367 res!1047561) b!2474374))

(assert (= (and b!2474374 res!1047569) b!2474368))

(assert (= (and b!2474368 res!1047553) b!2474370))

(assert (= (and b!2474370 res!1047555) b!2474364))

(assert (= (and b!2474364 res!1047563) b!2474365))

(assert (= (and b!2474365 res!1047554) b!2474386))

(assert (= (and b!2474386 res!1047562) b!2474381))

(assert (= (and b!2474381 res!1047559) b!2474392))

(assert (= (and b!2474392 res!1047567) b!2474379))

(assert (= (and b!2474379 res!1047568) b!2474363))

(assert (= (and b!2474363 res!1047564) b!2474378))

(assert (= (and b!2474378 res!1047558) b!2474385))

(assert (= (and b!2474385 res!1047556) b!2474387))

(assert (= b!2474376 b!2474369))

(assert (= b!2474377 b!2474376))

(assert (= (and start!241314 ((_ is Cons!28881) rules!4472)) b!2474377))

(assert (= b!2474391 b!2474375))

(assert (= b!2474383 b!2474391))

(assert (= start!241314 b!2474383))

(assert (= b!2474389 b!2474372))

(assert (= b!2474366 b!2474389))

(assert (= b!2474384 b!2474366))

(assert (= (and start!241314 ((_ is Cons!28880) l!6611)) b!2474384))

(assert (= b!2474373 b!2474371))

(assert (= b!2474380 b!2474373))

(assert (= start!241314 b!2474380))

(declare-fun m!2842637 () Bool)

(assert (=> b!2474376 m!2842637))

(declare-fun m!2842639 () Bool)

(assert (=> b!2474376 m!2842639))

(declare-fun m!2842641 () Bool)

(assert (=> b!2474373 m!2842641))

(declare-fun m!2842643 () Bool)

(assert (=> b!2474373 m!2842643))

(declare-fun m!2842645 () Bool)

(assert (=> b!2474388 m!2842645))

(declare-fun m!2842647 () Bool)

(assert (=> b!2474366 m!2842647))

(declare-fun m!2842649 () Bool)

(assert (=> b!2474384 m!2842649))

(declare-fun m!2842651 () Bool)

(assert (=> b!2474380 m!2842651))

(declare-fun m!2842653 () Bool)

(assert (=> start!241314 m!2842653))

(declare-fun m!2842655 () Bool)

(assert (=> start!241314 m!2842655))

(declare-fun m!2842657 () Bool)

(assert (=> b!2474370 m!2842657))

(declare-fun m!2842659 () Bool)

(assert (=> b!2474383 m!2842659))

(declare-fun m!2842661 () Bool)

(assert (=> b!2474363 m!2842661))

(declare-fun m!2842663 () Bool)

(assert (=> b!2474379 m!2842663))

(declare-fun m!2842665 () Bool)

(assert (=> b!2474378 m!2842665))

(declare-fun m!2842667 () Bool)

(assert (=> b!2474386 m!2842667))

(declare-fun m!2842669 () Bool)

(assert (=> b!2474386 m!2842669))

(declare-fun m!2842671 () Bool)

(assert (=> b!2474389 m!2842671))

(declare-fun m!2842673 () Bool)

(assert (=> b!2474389 m!2842673))

(declare-fun m!2842675 () Bool)

(assert (=> b!2474390 m!2842675))

(declare-fun m!2842677 () Bool)

(assert (=> b!2474387 m!2842677))

(declare-fun m!2842679 () Bool)

(assert (=> b!2474385 m!2842679))

(declare-fun m!2842681 () Bool)

(assert (=> b!2474385 m!2842681))

(declare-fun m!2842683 () Bool)

(assert (=> b!2474385 m!2842683))

(declare-fun m!2842685 () Bool)

(assert (=> b!2474385 m!2842685))

(declare-fun m!2842687 () Bool)

(assert (=> b!2474385 m!2842687))

(declare-fun m!2842689 () Bool)

(assert (=> b!2474391 m!2842689))

(declare-fun m!2842691 () Bool)

(assert (=> b!2474391 m!2842691))

(declare-fun m!2842693 () Bool)

(assert (=> b!2474368 m!2842693))

(declare-fun m!2842695 () Bool)

(assert (=> b!2474364 m!2842695))

(declare-fun m!2842697 () Bool)

(assert (=> b!2474367 m!2842697))

(declare-fun m!2842699 () Bool)

(assert (=> b!2474381 m!2842699))

(declare-fun m!2842701 () Bool)

(assert (=> b!2474382 m!2842701))

(check-sat (not b!2474379) (not b!2474366) (not b_next!72405) (not b_next!72409) (not b_next!72419) (not b!2474376) (not b!2474364) b_and!187837 (not b!2474381) (not b_next!72417) b_and!187835 (not b_next!72415) (not b!2474377) (not b!2474383) (not b_next!72407) (not b!2474380) b_and!187831 (not b!2474368) b_and!187833 b_and!187829 (not b!2474370) (not b!2474387) (not b!2474391) b_and!187841 (not b!2474373) (not b!2474390) (not b!2474382) (not b!2474389) (not b!2474367) b_and!187839 (not b_next!72411) (not start!241314) (not b!2474363) b_and!187843 (not b!2474384) (not b_next!72413) (not b!2474388) (not b!2474378) (not b!2474386) (not b!2474385))
(check-sat (not b_next!72407) (not b_next!72405) (not b_next!72409) b_and!187829 (not b_next!72419) b_and!187841 b_and!187837 (not b_next!72417) b_and!187835 b_and!187843 (not b_next!72413) (not b_next!72415) b_and!187833 b_and!187831 b_and!187839 (not b_next!72411))
