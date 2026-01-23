; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392446 () Bool)

(assert start!392446)

(declare-fun b!4133371 () Bool)

(declare-fun b_free!117363 () Bool)

(declare-fun b_next!118067 () Bool)

(assert (=> b!4133371 (= b_free!117363 (not b_next!118067))))

(declare-fun tp!1259908 () Bool)

(declare-fun b_and!320525 () Bool)

(assert (=> b!4133371 (= tp!1259908 b_and!320525)))

(declare-fun b_free!117365 () Bool)

(declare-fun b_next!118069 () Bool)

(assert (=> b!4133371 (= b_free!117365 (not b_next!118069))))

(declare-fun tp!1259900 () Bool)

(declare-fun b_and!320527 () Bool)

(assert (=> b!4133371 (= tp!1259900 b_and!320527)))

(declare-fun b!4133382 () Bool)

(declare-fun b_free!117367 () Bool)

(declare-fun b_next!118071 () Bool)

(assert (=> b!4133382 (= b_free!117367 (not b_next!118071))))

(declare-fun tp!1259906 () Bool)

(declare-fun b_and!320529 () Bool)

(assert (=> b!4133382 (= tp!1259906 b_and!320529)))

(declare-fun b_free!117369 () Bool)

(declare-fun b_next!118073 () Bool)

(assert (=> b!4133382 (= b_free!117369 (not b_next!118073))))

(declare-fun tp!1259898 () Bool)

(declare-fun b_and!320531 () Bool)

(assert (=> b!4133382 (= tp!1259898 b_and!320531)))

(declare-fun b!4133383 () Bool)

(declare-fun b_free!117371 () Bool)

(declare-fun b_next!118075 () Bool)

(assert (=> b!4133383 (= b_free!117371 (not b_next!118075))))

(declare-fun tp!1259903 () Bool)

(declare-fun b_and!320533 () Bool)

(assert (=> b!4133383 (= tp!1259903 b_and!320533)))

(declare-fun b_free!117373 () Bool)

(declare-fun b_next!118077 () Bool)

(assert (=> b!4133383 (= b_free!117373 (not b_next!118077))))

(declare-fun tp!1259904 () Bool)

(declare-fun b_and!320535 () Bool)

(assert (=> b!4133383 (= tp!1259904 b_and!320535)))

(declare-fun b!4133368 () Bool)

(declare-fun res!1689907 () Bool)

(declare-fun e!2564598 () Bool)

(assert (=> b!4133368 (=> (not res!1689907) (not e!2564598))))

(declare-datatypes ((List!44894 0))(
  ( (Nil!44770) (Cons!44770 (h!50190 (_ BitVec 16)) (t!341755 List!44894)) )
))
(declare-datatypes ((TokenValue!7566 0))(
  ( (FloatLiteralValue!15132 (text!53407 List!44894)) (TokenValueExt!7565 (__x!27349 Int)) (Broken!37830 (value!229604 List!44894)) (Object!7689) (End!7566) (Def!7566) (Underscore!7566) (Match!7566) (Else!7566) (Error!7566) (Case!7566) (If!7566) (Extends!7566) (Abstract!7566) (Class!7566) (Val!7566) (DelimiterValue!15132 (del!7626 List!44894)) (KeywordValue!7572 (value!229605 List!44894)) (CommentValue!15132 (value!229606 List!44894)) (WhitespaceValue!15132 (value!229607 List!44894)) (IndentationValue!7566 (value!229608 List!44894)) (String!51579) (Int32!7566) (Broken!37831 (value!229609 List!44894)) (Boolean!7567) (Unit!64090) (OperatorValue!7569 (op!7626 List!44894)) (IdentifierValue!15132 (value!229610 List!44894)) (IdentifierValue!15133 (value!229611 List!44894)) (WhitespaceValue!15133 (value!229612 List!44894)) (True!15132) (False!15132) (Broken!37832 (value!229613 List!44894)) (Broken!37833 (value!229614 List!44894)) (True!15133) (RightBrace!7566) (RightBracket!7566) (Colon!7566) (Null!7566) (Comma!7566) (LeftBracket!7566) (False!15133) (LeftBrace!7566) (ImaginaryLiteralValue!7566 (text!53408 List!44894)) (StringLiteralValue!22698 (value!229615 List!44894)) (EOFValue!7566 (value!229616 List!44894)) (IdentValue!7566 (value!229617 List!44894)) (DelimiterValue!15133 (value!229618 List!44894)) (DedentValue!7566 (value!229619 List!44894)) (NewLineValue!7566 (value!229620 List!44894)) (IntegerValue!22698 (value!229621 (_ BitVec 32)) (text!53409 List!44894)) (IntegerValue!22699 (value!229622 Int) (text!53410 List!44894)) (Times!7566) (Or!7566) (Equal!7566) (Minus!7566) (Broken!37834 (value!229623 List!44894)) (And!7566) (Div!7566) (LessEqual!7566) (Mod!7566) (Concat!19807) (Not!7566) (Plus!7566) (SpaceValue!7566 (value!229624 List!44894)) (IntegerValue!22700 (value!229625 Int) (text!53411 List!44894)) (StringLiteralValue!22699 (text!53412 List!44894)) (FloatLiteralValue!15133 (text!53413 List!44894)) (BytesLiteralValue!7566 (value!229626 List!44894)) (CommentValue!15133 (value!229627 List!44894)) (StringLiteralValue!22700 (value!229628 List!44894)) (ErrorTokenValue!7566 (msg!7627 List!44894)) )
))
(declare-datatypes ((C!24668 0))(
  ( (C!24669 (val!14444 Int)) )
))
(declare-datatypes ((List!44895 0))(
  ( (Nil!44771) (Cons!44771 (h!50191 C!24668) (t!341756 List!44895)) )
))
(declare-datatypes ((IArray!27099 0))(
  ( (IArray!27100 (innerList!13607 List!44895)) )
))
(declare-datatypes ((Conc!13547 0))(
  ( (Node!13547 (left!33529 Conc!13547) (right!33859 Conc!13547) (csize!27324 Int) (cheight!13758 Int)) (Leaf!20930 (xs!16853 IArray!27099) (csize!27325 Int)) (Empty!13547) )
))
(declare-datatypes ((BalanceConc!26688 0))(
  ( (BalanceConc!26689 (c!709066 Conc!13547)) )
))
(declare-datatypes ((String!51580 0))(
  ( (String!51581 (value!229629 String)) )
))
(declare-datatypes ((Regex!12241 0))(
  ( (ElementMatch!12241 (c!709067 C!24668)) (Concat!19808 (regOne!24994 Regex!12241) (regTwo!24994 Regex!12241)) (EmptyExpr!12241) (Star!12241 (reg!12570 Regex!12241)) (EmptyLang!12241) (Union!12241 (regOne!24995 Regex!12241) (regTwo!24995 Regex!12241)) )
))
(declare-datatypes ((TokenValueInjection!14560 0))(
  ( (TokenValueInjection!14561 (toValue!10000 Int) (toChars!9859 Int)) )
))
(declare-datatypes ((Rule!14472 0))(
  ( (Rule!14473 (regex!7336 Regex!12241) (tag!8196 String!51580) (isSeparator!7336 Bool) (transformation!7336 TokenValueInjection!14560)) )
))
(declare-datatypes ((List!44896 0))(
  ( (Nil!44772) (Cons!44772 (h!50192 Rule!14472) (t!341757 List!44896)) )
))
(declare-fun rules!3756 () List!44896)

(declare-fun rBis!149 () Rule!14472)

(declare-fun contains!9014 (List!44896 Rule!14472) Bool)

(assert (=> b!4133368 (= res!1689907 (contains!9014 rules!3756 rBis!149))))

(declare-fun b!4133369 () Bool)

(declare-fun res!1689912 () Bool)

(assert (=> b!4133369 (=> (not res!1689912) (not e!2564598))))

(declare-fun p!2912 () List!44895)

(declare-fun input!3238 () List!44895)

(declare-fun isPrefix!4271 (List!44895 List!44895) Bool)

(assert (=> b!4133369 (= res!1689912 (isPrefix!4271 p!2912 input!3238))))

(declare-fun b!4133370 () Bool)

(declare-fun res!1689916 () Bool)

(assert (=> b!4133370 (=> (not res!1689916) (not e!2564598))))

(declare-fun isEmpty!26662 (List!44896) Bool)

(assert (=> b!4133370 (= res!1689916 (not (isEmpty!26662 rules!3756)))))

(declare-fun e!2564602 () Bool)

(assert (=> b!4133371 (= e!2564602 (and tp!1259908 tp!1259900))))

(declare-fun b!4133372 () Bool)

(declare-fun res!1689908 () Bool)

(assert (=> b!4133372 (=> (not res!1689908) (not e!2564598))))

(declare-fun isEmpty!26663 (List!44895) Bool)

(assert (=> b!4133372 (= res!1689908 (not (isEmpty!26663 p!2912)))))

(declare-fun b!4133373 () Bool)

(declare-fun tp!1259897 () Bool)

(declare-fun e!2564597 () Bool)

(declare-fun e!2564605 () Bool)

(declare-fun inv!59373 (String!51580) Bool)

(declare-fun inv!59375 (TokenValueInjection!14560) Bool)

(assert (=> b!4133373 (= e!2564605 (and tp!1259897 (inv!59373 (tag!8196 (h!50192 rules!3756))) (inv!59375 (transformation!7336 (h!50192 rules!3756))) e!2564597))))

(declare-fun b!4133374 () Bool)

(declare-fun e!2564599 () Bool)

(declare-fun tp_is_empty!21405 () Bool)

(declare-fun tp!1259901 () Bool)

(assert (=> b!4133374 (= e!2564599 (and tp_is_empty!21405 tp!1259901))))

(declare-fun res!1689914 () Bool)

(assert (=> start!392446 (=> (not res!1689914) (not e!2564598))))

(declare-datatypes ((LexerInterface!6925 0))(
  ( (LexerInterfaceExt!6922 (__x!27350 Int)) (Lexer!6923) )
))
(declare-fun thiss!25645 () LexerInterface!6925)

(get-info :version)

(assert (=> start!392446 (= res!1689914 ((_ is Lexer!6923) thiss!25645))))

(assert (=> start!392446 e!2564598))

(declare-fun e!2564594 () Bool)

(assert (=> start!392446 e!2564594))

(declare-fun e!2564601 () Bool)

(assert (=> start!392446 e!2564601))

(assert (=> start!392446 true))

(declare-fun e!2564606 () Bool)

(assert (=> start!392446 e!2564606))

(assert (=> start!392446 e!2564599))

(declare-fun e!2564603 () Bool)

(assert (=> start!392446 e!2564603))

(declare-fun b!4133375 () Bool)

(declare-fun res!1689909 () Bool)

(assert (=> b!4133375 (=> (not res!1689909) (not e!2564598))))

(declare-fun rulesInvariant!6222 (LexerInterface!6925 List!44896) Bool)

(assert (=> b!4133375 (= res!1689909 (rulesInvariant!6222 thiss!25645 rules!3756))))

(declare-fun b!4133376 () Bool)

(declare-fun res!1689917 () Bool)

(assert (=> b!4133376 (=> (not res!1689917) (not e!2564598))))

(declare-fun r!4008 () Rule!14472)

(assert (=> b!4133376 (= res!1689917 (contains!9014 rules!3756 r!4008))))

(declare-fun b!4133377 () Bool)

(declare-fun res!1689913 () Bool)

(declare-fun e!2564593 () Bool)

(assert (=> b!4133377 (=> (not res!1689913) (not e!2564593))))

(declare-fun getIndex!682 (List!44896 Rule!14472) Int)

(assert (=> b!4133377 (= res!1689913 (< (getIndex!682 rules!3756 rBis!149) (getIndex!682 rules!3756 r!4008)))))

(declare-fun b!4133378 () Bool)

(declare-fun e!2564600 () Bool)

(assert (=> b!4133378 (= e!2564593 (not e!2564600))))

(declare-fun res!1689915 () Bool)

(assert (=> b!4133378 (=> res!1689915 e!2564600)))

(assert (=> b!4133378 (= res!1689915 (or (not ((_ is Cons!44772) rules!3756)) (not (= (h!50192 rules!3756) rBis!149))))))

(declare-datatypes ((Unit!64091 0))(
  ( (Unit!64092) )
))
(declare-fun lt!1473748 () Unit!64091)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2182 (LexerInterface!6925 Rule!14472 List!44896) Unit!64091)

(assert (=> b!4133378 (= lt!1473748 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2182 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3142 (LexerInterface!6925 Rule!14472) Bool)

(assert (=> b!4133378 (ruleValid!3142 thiss!25645 rBis!149)))

(declare-fun lt!1473751 () Unit!64091)

(assert (=> b!4133378 (= lt!1473751 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2182 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4133379 () Bool)

(assert (=> b!4133379 (= e!2564600 true)))

(declare-fun tail!6487 (List!44896) List!44896)

(assert (=> b!4133379 (contains!9014 (tail!6487 rules!3756) r!4008)))

(declare-fun lt!1473749 () Unit!64091)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!40 (List!44896 Rule!14472 Rule!14472) Unit!64091)

(assert (=> b!4133379 (= lt!1473749 (lemmaGetIndexBiggerAndHeadEqThenTailContains!40 rules!3756 rBis!149 r!4008))))

(declare-fun b!4133380 () Bool)

(declare-fun tp!1259907 () Bool)

(assert (=> b!4133380 (= e!2564601 (and tp_is_empty!21405 tp!1259907))))

(declare-fun e!2564596 () Bool)

(declare-fun tp!1259902 () Bool)

(declare-fun b!4133381 () Bool)

(assert (=> b!4133381 (= e!2564603 (and tp!1259902 (inv!59373 (tag!8196 rBis!149)) (inv!59375 (transformation!7336 rBis!149)) e!2564596))))

(assert (=> b!4133382 (= e!2564596 (and tp!1259906 tp!1259898))))

(assert (=> b!4133383 (= e!2564597 (and tp!1259903 tp!1259904))))

(declare-fun b!4133384 () Bool)

(assert (=> b!4133384 (= e!2564598 e!2564593)))

(declare-fun res!1689911 () Bool)

(assert (=> b!4133384 (=> (not res!1689911) (not e!2564593))))

(declare-fun lt!1473752 () BalanceConc!26688)

(declare-datatypes ((Token!13602 0))(
  ( (Token!13603 (value!229630 TokenValue!7566) (rule!10428 Rule!14472) (size!33137 Int) (originalCharacters!7832 List!44895)) )
))
(declare-datatypes ((tuple2!43178 0))(
  ( (tuple2!43179 (_1!24723 Token!13602) (_2!24723 List!44895)) )
))
(declare-datatypes ((Option!9642 0))(
  ( (None!9641) (Some!9641 (v!40259 tuple2!43178)) )
))
(declare-fun maxPrefix!4115 (LexerInterface!6925 List!44896 List!44895) Option!9642)

(declare-fun apply!10409 (TokenValueInjection!14560 BalanceConc!26688) TokenValue!7566)

(declare-fun size!33138 (List!44895) Int)

(declare-fun getSuffix!2598 (List!44895 List!44895) List!44895)

(assert (=> b!4133384 (= res!1689911 (= (maxPrefix!4115 thiss!25645 rules!3756 input!3238) (Some!9641 (tuple2!43179 (Token!13603 (apply!10409 (transformation!7336 r!4008) lt!1473752) r!4008 (size!33138 p!2912) p!2912) (getSuffix!2598 input!3238 p!2912)))))))

(declare-fun lt!1473750 () Unit!64091)

(declare-fun lemmaSemiInverse!2194 (TokenValueInjection!14560 BalanceConc!26688) Unit!64091)

(assert (=> b!4133384 (= lt!1473750 (lemmaSemiInverse!2194 (transformation!7336 r!4008) lt!1473752))))

(declare-fun seqFromList!5453 (List!44895) BalanceConc!26688)

(assert (=> b!4133384 (= lt!1473752 (seqFromList!5453 p!2912))))

(declare-fun b!4133385 () Bool)

(declare-fun tp!1259899 () Bool)

(assert (=> b!4133385 (= e!2564594 (and e!2564605 tp!1259899))))

(declare-fun b!4133386 () Bool)

(declare-fun res!1689910 () Bool)

(assert (=> b!4133386 (=> (not res!1689910) (not e!2564593))))

(declare-fun matchR!6070 (Regex!12241 List!44895) Bool)

(assert (=> b!4133386 (= res!1689910 (matchR!6070 (regex!7336 r!4008) p!2912))))

(declare-fun b!4133387 () Bool)

(declare-fun tp!1259905 () Bool)

(assert (=> b!4133387 (= e!2564606 (and tp!1259905 (inv!59373 (tag!8196 r!4008)) (inv!59375 (transformation!7336 r!4008)) e!2564602))))

(declare-fun b!4133388 () Bool)

(declare-fun res!1689906 () Bool)

(assert (=> b!4133388 (=> (not res!1689906) (not e!2564593))))

(assert (=> b!4133388 (= res!1689906 (ruleValid!3142 thiss!25645 r!4008))))

(assert (= (and start!392446 res!1689914) b!4133369))

(assert (= (and b!4133369 res!1689912) b!4133370))

(assert (= (and b!4133370 res!1689916) b!4133375))

(assert (= (and b!4133375 res!1689909) b!4133376))

(assert (= (and b!4133376 res!1689917) b!4133368))

(assert (= (and b!4133368 res!1689907) b!4133372))

(assert (= (and b!4133372 res!1689908) b!4133384))

(assert (= (and b!4133384 res!1689911) b!4133386))

(assert (= (and b!4133386 res!1689910) b!4133377))

(assert (= (and b!4133377 res!1689913) b!4133388))

(assert (= (and b!4133388 res!1689906) b!4133378))

(assert (= (and b!4133378 (not res!1689915)) b!4133379))

(assert (= b!4133373 b!4133383))

(assert (= b!4133385 b!4133373))

(assert (= (and start!392446 ((_ is Cons!44772) rules!3756)) b!4133385))

(assert (= (and start!392446 ((_ is Cons!44771) p!2912)) b!4133380))

(assert (= b!4133387 b!4133371))

(assert (= start!392446 b!4133387))

(assert (= (and start!392446 ((_ is Cons!44771) input!3238)) b!4133374))

(assert (= b!4133381 b!4133382))

(assert (= start!392446 b!4133381))

(declare-fun m!4730301 () Bool)

(assert (=> b!4133386 m!4730301))

(declare-fun m!4730303 () Bool)

(assert (=> b!4133369 m!4730303))

(declare-fun m!4730305 () Bool)

(assert (=> b!4133384 m!4730305))

(declare-fun m!4730307 () Bool)

(assert (=> b!4133384 m!4730307))

(declare-fun m!4730309 () Bool)

(assert (=> b!4133384 m!4730309))

(declare-fun m!4730311 () Bool)

(assert (=> b!4133384 m!4730311))

(declare-fun m!4730313 () Bool)

(assert (=> b!4133384 m!4730313))

(declare-fun m!4730315 () Bool)

(assert (=> b!4133384 m!4730315))

(declare-fun m!4730317 () Bool)

(assert (=> b!4133381 m!4730317))

(declare-fun m!4730319 () Bool)

(assert (=> b!4133381 m!4730319))

(declare-fun m!4730321 () Bool)

(assert (=> b!4133376 m!4730321))

(declare-fun m!4730323 () Bool)

(assert (=> b!4133388 m!4730323))

(declare-fun m!4730325 () Bool)

(assert (=> b!4133370 m!4730325))

(declare-fun m!4730327 () Bool)

(assert (=> b!4133372 m!4730327))

(declare-fun m!4730329 () Bool)

(assert (=> b!4133377 m!4730329))

(declare-fun m!4730331 () Bool)

(assert (=> b!4133377 m!4730331))

(declare-fun m!4730333 () Bool)

(assert (=> b!4133379 m!4730333))

(assert (=> b!4133379 m!4730333))

(declare-fun m!4730335 () Bool)

(assert (=> b!4133379 m!4730335))

(declare-fun m!4730337 () Bool)

(assert (=> b!4133379 m!4730337))

(declare-fun m!4730339 () Bool)

(assert (=> b!4133375 m!4730339))

(declare-fun m!4730341 () Bool)

(assert (=> b!4133378 m!4730341))

(declare-fun m!4730343 () Bool)

(assert (=> b!4133378 m!4730343))

(declare-fun m!4730345 () Bool)

(assert (=> b!4133378 m!4730345))

(declare-fun m!4730347 () Bool)

(assert (=> b!4133368 m!4730347))

(declare-fun m!4730349 () Bool)

(assert (=> b!4133387 m!4730349))

(declare-fun m!4730351 () Bool)

(assert (=> b!4133387 m!4730351))

(declare-fun m!4730353 () Bool)

(assert (=> b!4133373 m!4730353))

(declare-fun m!4730355 () Bool)

(assert (=> b!4133373 m!4730355))

(check-sat (not b!4133372) tp_is_empty!21405 (not b!4133377) (not b!4133376) b_and!320531 (not b!4133373) (not b!4133369) (not b_next!118077) (not b!4133388) (not b_next!118073) (not b_next!118071) (not b!4133385) (not b!4133380) (not b_next!118075) (not b!4133378) (not b!4133381) (not b!4133379) (not b!4133386) b_and!320535 (not b!4133368) (not b!4133375) (not b!4133384) b_and!320533 (not b!4133374) (not b_next!118069) (not b_next!118067) b_and!320527 (not b!4133387) b_and!320525 b_and!320529 (not b!4133370))
(check-sat (not b_next!118075) b_and!320535 b_and!320531 b_and!320533 (not b_next!118069) (not b_next!118077) b_and!320525 b_and!320529 (not b_next!118073) (not b_next!118071) (not b_next!118067) b_and!320527)
