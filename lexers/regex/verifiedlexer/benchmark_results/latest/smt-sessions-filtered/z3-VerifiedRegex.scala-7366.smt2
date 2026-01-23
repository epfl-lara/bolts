; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!391514 () Bool)

(assert start!391514)

(declare-fun b!4126378 () Bool)

(declare-fun b_free!116883 () Bool)

(declare-fun b_next!117587 () Bool)

(assert (=> b!4126378 (= b_free!116883 (not b_next!117587))))

(declare-fun tp!1257481 () Bool)

(declare-fun b_and!319481 () Bool)

(assert (=> b!4126378 (= tp!1257481 b_and!319481)))

(declare-fun b_free!116885 () Bool)

(declare-fun b_next!117589 () Bool)

(assert (=> b!4126378 (= b_free!116885 (not b_next!117589))))

(declare-fun tp!1257480 () Bool)

(declare-fun b_and!319483 () Bool)

(assert (=> b!4126378 (= tp!1257480 b_and!319483)))

(declare-fun b!4126375 () Bool)

(declare-fun b_free!116887 () Bool)

(declare-fun b_next!117591 () Bool)

(assert (=> b!4126375 (= b_free!116887 (not b_next!117591))))

(declare-fun tp!1257472 () Bool)

(declare-fun b_and!319485 () Bool)

(assert (=> b!4126375 (= tp!1257472 b_and!319485)))

(declare-fun b_free!116889 () Bool)

(declare-fun b_next!117593 () Bool)

(assert (=> b!4126375 (= b_free!116889 (not b_next!117593))))

(declare-fun tp!1257471 () Bool)

(declare-fun b_and!319487 () Bool)

(assert (=> b!4126375 (= tp!1257471 b_and!319487)))

(declare-fun b!4126368 () Bool)

(declare-fun b_free!116891 () Bool)

(declare-fun b_next!117595 () Bool)

(assert (=> b!4126368 (= b_free!116891 (not b_next!117595))))

(declare-fun tp!1257476 () Bool)

(declare-fun b_and!319489 () Bool)

(assert (=> b!4126368 (= tp!1257476 b_and!319489)))

(declare-fun b_free!116893 () Bool)

(declare-fun b_next!117597 () Bool)

(assert (=> b!4126368 (= b_free!116893 (not b_next!117597))))

(declare-fun tp!1257482 () Bool)

(declare-fun b_and!319491 () Bool)

(assert (=> b!4126368 (= tp!1257482 b_and!319491)))

(declare-fun b!4126356 () Bool)

(declare-fun res!1686524 () Bool)

(declare-fun e!2560384 () Bool)

(assert (=> b!4126356 (=> (not res!1686524) (not e!2560384))))

(declare-datatypes ((C!24604 0))(
  ( (C!24605 (val!14412 Int)) )
))
(declare-datatypes ((List!44777 0))(
  ( (Nil!44653) (Cons!44653 (h!50073 C!24604) (t!341162 List!44777)) )
))
(declare-datatypes ((IArray!27035 0))(
  ( (IArray!27036 (innerList!13575 List!44777)) )
))
(declare-datatypes ((Conc!13515 0))(
  ( (Node!13515 (left!33441 Conc!13515) (right!33771 Conc!13515) (csize!27260 Int) (cheight!13726 Int)) (Leaf!20882 (xs!16821 IArray!27035) (csize!27261 Int)) (Empty!13515) )
))
(declare-datatypes ((BalanceConc!26624 0))(
  ( (BalanceConc!26625 (c!708222 Conc!13515)) )
))
(declare-datatypes ((List!44778 0))(
  ( (Nil!44654) (Cons!44654 (h!50074 (_ BitVec 16)) (t!341163 List!44778)) )
))
(declare-datatypes ((TokenValue!7534 0))(
  ( (FloatLiteralValue!15068 (text!53183 List!44778)) (TokenValueExt!7533 (__x!27285 Int)) (Broken!37670 (value!228692 List!44778)) (Object!7657) (End!7534) (Def!7534) (Underscore!7534) (Match!7534) (Else!7534) (Error!7534) (Case!7534) (If!7534) (Extends!7534) (Abstract!7534) (Class!7534) (Val!7534) (DelimiterValue!15068 (del!7594 List!44778)) (KeywordValue!7540 (value!228693 List!44778)) (CommentValue!15068 (value!228694 List!44778)) (WhitespaceValue!15068 (value!228695 List!44778)) (IndentationValue!7534 (value!228696 List!44778)) (String!51419) (Int32!7534) (Broken!37671 (value!228697 List!44778)) (Boolean!7535) (Unit!63988) (OperatorValue!7537 (op!7594 List!44778)) (IdentifierValue!15068 (value!228698 List!44778)) (IdentifierValue!15069 (value!228699 List!44778)) (WhitespaceValue!15069 (value!228700 List!44778)) (True!15068) (False!15068) (Broken!37672 (value!228701 List!44778)) (Broken!37673 (value!228702 List!44778)) (True!15069) (RightBrace!7534) (RightBracket!7534) (Colon!7534) (Null!7534) (Comma!7534) (LeftBracket!7534) (False!15069) (LeftBrace!7534) (ImaginaryLiteralValue!7534 (text!53184 List!44778)) (StringLiteralValue!22602 (value!228703 List!44778)) (EOFValue!7534 (value!228704 List!44778)) (IdentValue!7534 (value!228705 List!44778)) (DelimiterValue!15069 (value!228706 List!44778)) (DedentValue!7534 (value!228707 List!44778)) (NewLineValue!7534 (value!228708 List!44778)) (IntegerValue!22602 (value!228709 (_ BitVec 32)) (text!53185 List!44778)) (IntegerValue!22603 (value!228710 Int) (text!53186 List!44778)) (Times!7534) (Or!7534) (Equal!7534) (Minus!7534) (Broken!37674 (value!228711 List!44778)) (And!7534) (Div!7534) (LessEqual!7534) (Mod!7534) (Concat!19743) (Not!7534) (Plus!7534) (SpaceValue!7534 (value!228712 List!44778)) (IntegerValue!22604 (value!228713 Int) (text!53187 List!44778)) (StringLiteralValue!22603 (text!53188 List!44778)) (FloatLiteralValue!15069 (text!53189 List!44778)) (BytesLiteralValue!7534 (value!228714 List!44778)) (CommentValue!15069 (value!228715 List!44778)) (StringLiteralValue!22604 (value!228716 List!44778)) (ErrorTokenValue!7534 (msg!7595 List!44778)) )
))
(declare-datatypes ((Regex!12209 0))(
  ( (ElementMatch!12209 (c!708223 C!24604)) (Concat!19744 (regOne!24930 Regex!12209) (regTwo!24930 Regex!12209)) (EmptyExpr!12209) (Star!12209 (reg!12538 Regex!12209)) (EmptyLang!12209) (Union!12209 (regOne!24931 Regex!12209) (regTwo!24931 Regex!12209)) )
))
(declare-datatypes ((String!51420 0))(
  ( (String!51421 (value!228717 String)) )
))
(declare-datatypes ((TokenValueInjection!14496 0))(
  ( (TokenValueInjection!14497 (toValue!9960 Int) (toChars!9819 Int)) )
))
(declare-datatypes ((Rule!14408 0))(
  ( (Rule!14409 (regex!7304 Regex!12209) (tag!8164 String!51420) (isSeparator!7304 Bool) (transformation!7304 TokenValueInjection!14496)) )
))
(declare-fun r!4008 () Rule!14408)

(declare-fun p!2912 () List!44777)

(declare-fun matchR!6040 (Regex!12209 List!44777) Bool)

(assert (=> b!4126356 (= res!1686524 (matchR!6040 (regex!7304 r!4008) p!2912))))

(declare-fun b!4126357 () Bool)

(declare-fun res!1686521 () Bool)

(assert (=> b!4126357 (=> (not res!1686521) (not e!2560384))))

(declare-datatypes ((LexerInterface!6893 0))(
  ( (LexerInterfaceExt!6890 (__x!27286 Int)) (Lexer!6891) )
))
(declare-fun thiss!25645 () LexerInterface!6893)

(declare-fun ruleValid!3112 (LexerInterface!6893 Rule!14408) Bool)

(assert (=> b!4126357 (= res!1686521 (ruleValid!3112 thiss!25645 r!4008))))

(declare-fun b!4126358 () Bool)

(declare-fun res!1686523 () Bool)

(declare-fun e!2560377 () Bool)

(assert (=> b!4126358 (=> (not res!1686523) (not e!2560377))))

(declare-datatypes ((List!44779 0))(
  ( (Nil!44655) (Cons!44655 (h!50075 Rule!14408) (t!341164 List!44779)) )
))
(declare-fun rules!3756 () List!44779)

(declare-fun isEmpty!26581 (List!44779) Bool)

(assert (=> b!4126358 (= res!1686523 (not (isEmpty!26581 rules!3756)))))

(declare-fun res!1686517 () Bool)

(assert (=> start!391514 (=> (not res!1686517) (not e!2560377))))

(get-info :version)

(assert (=> start!391514 (= res!1686517 ((_ is Lexer!6891) thiss!25645))))

(assert (=> start!391514 e!2560377))

(declare-fun e!2560388 () Bool)

(assert (=> start!391514 e!2560388))

(declare-fun e!2560390 () Bool)

(assert (=> start!391514 e!2560390))

(assert (=> start!391514 true))

(declare-fun e!2560382 () Bool)

(assert (=> start!391514 e!2560382))

(declare-fun e!2560389 () Bool)

(assert (=> start!391514 e!2560389))

(declare-fun e!2560385 () Bool)

(assert (=> start!391514 e!2560385))

(declare-fun b!4126359 () Bool)

(declare-fun res!1686527 () Bool)

(assert (=> b!4126359 (=> (not res!1686527) (not e!2560377))))

(declare-fun isEmpty!26582 (List!44777) Bool)

(assert (=> b!4126359 (= res!1686527 (not (isEmpty!26582 p!2912)))))

(declare-fun b!4126360 () Bool)

(declare-fun tp!1257474 () Bool)

(declare-fun e!2560376 () Bool)

(declare-fun inv!59239 (String!51420) Bool)

(declare-fun inv!59241 (TokenValueInjection!14496) Bool)

(assert (=> b!4126360 (= e!2560382 (and tp!1257474 (inv!59239 (tag!8164 r!4008)) (inv!59241 (transformation!7304 r!4008)) e!2560376))))

(declare-fun b!4126361 () Bool)

(declare-fun e!2560387 () Bool)

(declare-fun tp!1257479 () Bool)

(assert (=> b!4126361 (= e!2560388 (and e!2560387 tp!1257479))))

(declare-fun b!4126362 () Bool)

(declare-fun res!1686530 () Bool)

(assert (=> b!4126362 (=> (not res!1686530) (not e!2560384))))

(declare-fun rBis!149 () Rule!14408)

(declare-fun getIndex!652 (List!44779 Rule!14408) Int)

(assert (=> b!4126362 (= res!1686530 (< (getIndex!652 rules!3756 rBis!149) (getIndex!652 rules!3756 r!4008)))))

(declare-fun b!4126363 () Bool)

(assert (=> b!4126363 (= e!2560377 e!2560384)))

(declare-fun res!1686529 () Bool)

(assert (=> b!4126363 (=> (not res!1686529) (not e!2560384))))

(declare-fun input!3238 () List!44777)

(declare-fun lt!1471990 () BalanceConc!26624)

(declare-datatypes ((Token!13538 0))(
  ( (Token!13539 (value!228718 TokenValue!7534) (rule!10390 Rule!14408) (size!33065 Int) (originalCharacters!7800 List!44777)) )
))
(declare-datatypes ((tuple2!43106 0))(
  ( (tuple2!43107 (_1!24687 Token!13538) (_2!24687 List!44777)) )
))
(declare-datatypes ((Option!9612 0))(
  ( (None!9611) (Some!9611 (v!40209 tuple2!43106)) )
))
(declare-fun maxPrefix!4085 (LexerInterface!6893 List!44779 List!44777) Option!9612)

(declare-fun apply!10377 (TokenValueInjection!14496 BalanceConc!26624) TokenValue!7534)

(declare-fun size!33066 (List!44777) Int)

(declare-fun getSuffix!2568 (List!44777 List!44777) List!44777)

(assert (=> b!4126363 (= res!1686529 (= (maxPrefix!4085 thiss!25645 rules!3756 input!3238) (Some!9611 (tuple2!43107 (Token!13539 (apply!10377 (transformation!7304 r!4008) lt!1471990) r!4008 (size!33066 p!2912) p!2912) (getSuffix!2568 input!3238 p!2912)))))))

(declare-datatypes ((Unit!63989 0))(
  ( (Unit!63990) )
))
(declare-fun lt!1471987 () Unit!63989)

(declare-fun lemmaSemiInverse!2162 (TokenValueInjection!14496 BalanceConc!26624) Unit!63989)

(assert (=> b!4126363 (= lt!1471987 (lemmaSemiInverse!2162 (transformation!7304 r!4008) lt!1471990))))

(declare-fun seqFromList!5421 (List!44777) BalanceConc!26624)

(assert (=> b!4126363 (= lt!1471990 (seqFromList!5421 p!2912))))

(declare-fun b!4126364 () Bool)

(declare-fun res!1686518 () Bool)

(declare-fun e!2560386 () Bool)

(assert (=> b!4126364 (=> res!1686518 e!2560386)))

(declare-fun contains!8978 (List!44779 Rule!14408) Bool)

(assert (=> b!4126364 (= res!1686518 (not (contains!8978 (t!341164 rules!3756) rBis!149)))))

(declare-fun b!4126365 () Bool)

(declare-fun res!1686525 () Bool)

(assert (=> b!4126365 (=> (not res!1686525) (not e!2560377))))

(assert (=> b!4126365 (= res!1686525 (contains!8978 rules!3756 r!4008))))

(declare-fun b!4126366 () Bool)

(declare-fun res!1686520 () Bool)

(assert (=> b!4126366 (=> (not res!1686520) (not e!2560377))))

(assert (=> b!4126366 (= res!1686520 (contains!8978 rules!3756 rBis!149))))

(declare-fun b!4126367 () Bool)

(assert (=> b!4126367 (= e!2560384 (not e!2560386))))

(declare-fun res!1686519 () Bool)

(assert (=> b!4126367 (=> res!1686519 e!2560386)))

(assert (=> b!4126367 (= res!1686519 (or (and ((_ is Cons!44655) rules!3756) (= (h!50075 rules!3756) rBis!149)) (not ((_ is Cons!44655) rules!3756)) (= (h!50075 rules!3756) rBis!149)))))

(declare-fun lt!1471988 () Unit!63989)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2156 (LexerInterface!6893 Rule!14408 List!44779) Unit!63989)

(assert (=> b!4126367 (= lt!1471988 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2156 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4126367 (ruleValid!3112 thiss!25645 rBis!149)))

(declare-fun lt!1471986 () Unit!63989)

(assert (=> b!4126367 (= lt!1471986 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2156 thiss!25645 rBis!149 rules!3756))))

(declare-fun e!2560379 () Bool)

(assert (=> b!4126368 (= e!2560379 (and tp!1257476 tp!1257482))))

(declare-fun tp!1257475 () Bool)

(declare-fun b!4126369 () Bool)

(assert (=> b!4126369 (= e!2560387 (and tp!1257475 (inv!59239 (tag!8164 (h!50075 rules!3756))) (inv!59241 (transformation!7304 (h!50075 rules!3756))) e!2560379))))

(declare-fun b!4126370 () Bool)

(declare-fun res!1686528 () Bool)

(assert (=> b!4126370 (=> (not res!1686528) (not e!2560377))))

(declare-fun rulesInvariant!6190 (LexerInterface!6893 List!44779) Bool)

(assert (=> b!4126370 (= res!1686528 (rulesInvariant!6190 thiss!25645 rules!3756))))

(declare-fun b!4126371 () Bool)

(declare-fun res!1686526 () Bool)

(assert (=> b!4126371 (=> res!1686526 e!2560386)))

(assert (=> b!4126371 (= res!1686526 (not (contains!8978 (t!341164 rules!3756) r!4008)))))

(declare-fun b!4126372 () Bool)

(declare-fun rulesValidInductive!2698 (LexerInterface!6893 List!44779) Bool)

(assert (=> b!4126372 (= e!2560386 (rulesValidInductive!2698 thiss!25645 (t!341164 rules!3756)))))

(declare-fun lt!1471989 () Option!9612)

(declare-fun maxPrefixOneRule!3033 (LexerInterface!6893 Rule!14408 List!44777) Option!9612)

(assert (=> b!4126372 (= lt!1471989 (maxPrefixOneRule!3033 thiss!25645 (h!50075 rules!3756) input!3238))))

(declare-fun e!2560378 () Bool)

(declare-fun tp!1257477 () Bool)

(declare-fun b!4126373 () Bool)

(assert (=> b!4126373 (= e!2560385 (and tp!1257477 (inv!59239 (tag!8164 rBis!149)) (inv!59241 (transformation!7304 rBis!149)) e!2560378))))

(declare-fun b!4126374 () Bool)

(declare-fun res!1686522 () Bool)

(assert (=> b!4126374 (=> (not res!1686522) (not e!2560377))))

(declare-fun isPrefix!4239 (List!44777 List!44777) Bool)

(assert (=> b!4126374 (= res!1686522 (isPrefix!4239 p!2912 input!3238))))

(assert (=> b!4126375 (= e!2560376 (and tp!1257472 tp!1257471))))

(declare-fun b!4126376 () Bool)

(declare-fun tp_is_empty!21341 () Bool)

(declare-fun tp!1257478 () Bool)

(assert (=> b!4126376 (= e!2560390 (and tp_is_empty!21341 tp!1257478))))

(declare-fun b!4126377 () Bool)

(declare-fun tp!1257473 () Bool)

(assert (=> b!4126377 (= e!2560389 (and tp_is_empty!21341 tp!1257473))))

(assert (=> b!4126378 (= e!2560378 (and tp!1257481 tp!1257480))))

(assert (= (and start!391514 res!1686517) b!4126374))

(assert (= (and b!4126374 res!1686522) b!4126358))

(assert (= (and b!4126358 res!1686523) b!4126370))

(assert (= (and b!4126370 res!1686528) b!4126365))

(assert (= (and b!4126365 res!1686525) b!4126366))

(assert (= (and b!4126366 res!1686520) b!4126359))

(assert (= (and b!4126359 res!1686527) b!4126363))

(assert (= (and b!4126363 res!1686529) b!4126356))

(assert (= (and b!4126356 res!1686524) b!4126362))

(assert (= (and b!4126362 res!1686530) b!4126357))

(assert (= (and b!4126357 res!1686521) b!4126367))

(assert (= (and b!4126367 (not res!1686519)) b!4126371))

(assert (= (and b!4126371 (not res!1686526)) b!4126364))

(assert (= (and b!4126364 (not res!1686518)) b!4126372))

(assert (= b!4126369 b!4126368))

(assert (= b!4126361 b!4126369))

(assert (= (and start!391514 ((_ is Cons!44655) rules!3756)) b!4126361))

(assert (= (and start!391514 ((_ is Cons!44653) p!2912)) b!4126376))

(assert (= b!4126360 b!4126375))

(assert (= start!391514 b!4126360))

(assert (= (and start!391514 ((_ is Cons!44653) input!3238)) b!4126377))

(assert (= b!4126373 b!4126378))

(assert (= start!391514 b!4126373))

(declare-fun m!4724839 () Bool)

(assert (=> b!4126357 m!4724839))

(declare-fun m!4724841 () Bool)

(assert (=> b!4126359 m!4724841))

(declare-fun m!4724843 () Bool)

(assert (=> b!4126360 m!4724843))

(declare-fun m!4724845 () Bool)

(assert (=> b!4126360 m!4724845))

(declare-fun m!4724847 () Bool)

(assert (=> b!4126367 m!4724847))

(declare-fun m!4724849 () Bool)

(assert (=> b!4126367 m!4724849))

(declare-fun m!4724851 () Bool)

(assert (=> b!4126367 m!4724851))

(declare-fun m!4724853 () Bool)

(assert (=> b!4126362 m!4724853))

(declare-fun m!4724855 () Bool)

(assert (=> b!4126362 m!4724855))

(declare-fun m!4724857 () Bool)

(assert (=> b!4126372 m!4724857))

(declare-fun m!4724859 () Bool)

(assert (=> b!4126372 m!4724859))

(declare-fun m!4724861 () Bool)

(assert (=> b!4126369 m!4724861))

(declare-fun m!4724863 () Bool)

(assert (=> b!4126369 m!4724863))

(declare-fun m!4724865 () Bool)

(assert (=> b!4126373 m!4724865))

(declare-fun m!4724867 () Bool)

(assert (=> b!4126373 m!4724867))

(declare-fun m!4724869 () Bool)

(assert (=> b!4126371 m!4724869))

(declare-fun m!4724871 () Bool)

(assert (=> b!4126363 m!4724871))

(declare-fun m!4724873 () Bool)

(assert (=> b!4126363 m!4724873))

(declare-fun m!4724875 () Bool)

(assert (=> b!4126363 m!4724875))

(declare-fun m!4724877 () Bool)

(assert (=> b!4126363 m!4724877))

(declare-fun m!4724879 () Bool)

(assert (=> b!4126363 m!4724879))

(declare-fun m!4724881 () Bool)

(assert (=> b!4126363 m!4724881))

(declare-fun m!4724883 () Bool)

(assert (=> b!4126370 m!4724883))

(declare-fun m!4724885 () Bool)

(assert (=> b!4126374 m!4724885))

(declare-fun m!4724887 () Bool)

(assert (=> b!4126356 m!4724887))

(declare-fun m!4724889 () Bool)

(assert (=> b!4126366 m!4724889))

(declare-fun m!4724891 () Bool)

(assert (=> b!4126364 m!4724891))

(declare-fun m!4724893 () Bool)

(assert (=> b!4126365 m!4724893))

(declare-fun m!4724895 () Bool)

(assert (=> b!4126358 m!4724895))

(check-sat b_and!319489 (not b!4126371) (not b!4126365) b_and!319485 b_and!319483 (not b_next!117593) (not b!4126362) (not b!4126376) (not b!4126358) (not b!4126370) (not b!4126372) (not b!4126360) (not b!4126373) (not b!4126374) (not b!4126377) (not b!4126359) (not b!4126364) (not b!4126361) b_and!319487 (not b!4126363) (not b!4126357) (not b_next!117589) (not b!4126366) (not b!4126367) (not b_next!117587) (not b_next!117597) b_and!319491 tp_is_empty!21341 (not b_next!117591) b_and!319481 (not b_next!117595) (not b!4126369) (not b!4126356))
(check-sat b_and!319489 b_and!319485 b_and!319487 b_and!319483 (not b_next!117593) (not b_next!117591) (not b_next!117589) (not b_next!117587) (not b_next!117597) b_and!319491 b_and!319481 (not b_next!117595))
(get-model)

(declare-fun b!4126387 () Bool)

(declare-fun e!2560397 () Int)

(assert (=> b!4126387 (= e!2560397 0)))

(declare-fun b!4126389 () Bool)

(declare-fun e!2560396 () Int)

(assert (=> b!4126389 (= e!2560396 (+ 1 (getIndex!652 (t!341164 rules!3756) rBis!149)))))

(declare-fun b!4126390 () Bool)

(assert (=> b!4126390 (= e!2560396 (- 1))))

(declare-fun b!4126388 () Bool)

(assert (=> b!4126388 (= e!2560397 e!2560396)))

(declare-fun c!708229 () Bool)

(assert (=> b!4126388 (= c!708229 (and ((_ is Cons!44655) rules!3756) (not (= (h!50075 rules!3756) rBis!149))))))

(declare-fun d!1222823 () Bool)

(declare-fun lt!1471993 () Int)

(assert (=> d!1222823 (>= lt!1471993 0)))

(assert (=> d!1222823 (= lt!1471993 e!2560397)))

(declare-fun c!708228 () Bool)

(assert (=> d!1222823 (= c!708228 (and ((_ is Cons!44655) rules!3756) (= (h!50075 rules!3756) rBis!149)))))

(assert (=> d!1222823 (contains!8978 rules!3756 rBis!149)))

(assert (=> d!1222823 (= (getIndex!652 rules!3756 rBis!149) lt!1471993)))

(assert (= (and d!1222823 c!708228) b!4126387))

(assert (= (and d!1222823 (not c!708228)) b!4126388))

(assert (= (and b!4126388 c!708229) b!4126389))

(assert (= (and b!4126388 (not c!708229)) b!4126390))

(declare-fun m!4724897 () Bool)

(assert (=> b!4126389 m!4724897))

(assert (=> d!1222823 m!4724889))

(assert (=> b!4126362 d!1222823))

(declare-fun b!4126391 () Bool)

(declare-fun e!2560399 () Int)

(assert (=> b!4126391 (= e!2560399 0)))

(declare-fun b!4126393 () Bool)

(declare-fun e!2560398 () Int)

(assert (=> b!4126393 (= e!2560398 (+ 1 (getIndex!652 (t!341164 rules!3756) r!4008)))))

(declare-fun b!4126394 () Bool)

(assert (=> b!4126394 (= e!2560398 (- 1))))

(declare-fun b!4126392 () Bool)

(assert (=> b!4126392 (= e!2560399 e!2560398)))

(declare-fun c!708231 () Bool)

(assert (=> b!4126392 (= c!708231 (and ((_ is Cons!44655) rules!3756) (not (= (h!50075 rules!3756) r!4008))))))

(declare-fun d!1222829 () Bool)

(declare-fun lt!1471994 () Int)

(assert (=> d!1222829 (>= lt!1471994 0)))

(assert (=> d!1222829 (= lt!1471994 e!2560399)))

(declare-fun c!708230 () Bool)

(assert (=> d!1222829 (= c!708230 (and ((_ is Cons!44655) rules!3756) (= (h!50075 rules!3756) r!4008)))))

(assert (=> d!1222829 (contains!8978 rules!3756 r!4008)))

(assert (=> d!1222829 (= (getIndex!652 rules!3756 r!4008) lt!1471994)))

(assert (= (and d!1222829 c!708230) b!4126391))

(assert (= (and d!1222829 (not c!708230)) b!4126392))

(assert (= (and b!4126392 c!708231) b!4126393))

(assert (= (and b!4126392 (not c!708231)) b!4126394))

(declare-fun m!4724899 () Bool)

(assert (=> b!4126393 m!4724899))

(assert (=> d!1222829 m!4724893))

(assert (=> b!4126362 d!1222829))

(declare-fun d!1222831 () Bool)

(assert (=> d!1222831 true))

(declare-fun lt!1472007 () Bool)

(declare-fun lambda!128747 () Int)

(declare-fun forall!8450 (List!44779 Int) Bool)

(assert (=> d!1222831 (= lt!1472007 (forall!8450 (t!341164 rules!3756) lambda!128747))))

(declare-fun e!2560435 () Bool)

(assert (=> d!1222831 (= lt!1472007 e!2560435)))

(declare-fun res!1686572 () Bool)

(assert (=> d!1222831 (=> res!1686572 e!2560435)))

(assert (=> d!1222831 (= res!1686572 (not ((_ is Cons!44655) (t!341164 rules!3756))))))

(assert (=> d!1222831 (= (rulesValidInductive!2698 thiss!25645 (t!341164 rules!3756)) lt!1472007)))

(declare-fun b!4126444 () Bool)

(declare-fun e!2560434 () Bool)

(assert (=> b!4126444 (= e!2560435 e!2560434)))

(declare-fun res!1686573 () Bool)

(assert (=> b!4126444 (=> (not res!1686573) (not e!2560434))))

(assert (=> b!4126444 (= res!1686573 (ruleValid!3112 thiss!25645 (h!50075 (t!341164 rules!3756))))))

(declare-fun b!4126445 () Bool)

(assert (=> b!4126445 (= e!2560434 (rulesValidInductive!2698 thiss!25645 (t!341164 (t!341164 rules!3756))))))

(assert (= (and d!1222831 (not res!1686572)) b!4126444))

(assert (= (and b!4126444 res!1686573) b!4126445))

(declare-fun m!4724931 () Bool)

(assert (=> d!1222831 m!4724931))

(declare-fun m!4724933 () Bool)

(assert (=> b!4126444 m!4724933))

(declare-fun m!4724935 () Bool)

(assert (=> b!4126445 m!4724935))

(assert (=> b!4126372 d!1222831))

(declare-fun b!4126520 () Bool)

(declare-fun e!2560478 () Bool)

(declare-fun e!2560480 () Bool)

(assert (=> b!4126520 (= e!2560478 e!2560480)))

(declare-fun res!1686618 () Bool)

(assert (=> b!4126520 (=> (not res!1686618) (not e!2560480))))

(declare-fun lt!1472042 () Option!9612)

(declare-fun list!16375 (BalanceConc!26624) List!44777)

(declare-fun charsOf!4922 (Token!13538) BalanceConc!26624)

(declare-fun get!14570 (Option!9612) tuple2!43106)

(assert (=> b!4126520 (= res!1686618 (matchR!6040 (regex!7304 (h!50075 rules!3756)) (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042))))))))

(declare-fun b!4126521 () Bool)

(declare-fun res!1686620 () Bool)

(assert (=> b!4126521 (=> (not res!1686620) (not e!2560480))))

(declare-fun ++!11568 (List!44777 List!44777) List!44777)

(assert (=> b!4126521 (= res!1686620 (= (++!11568 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042)))) (_2!24687 (get!14570 lt!1472042))) input!3238))))

(declare-fun b!4126522 () Bool)

(assert (=> b!4126522 (= e!2560480 (= (size!33065 (_1!24687 (get!14570 lt!1472042))) (size!33066 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472042))))))))

(declare-fun d!1222845 () Bool)

(assert (=> d!1222845 e!2560478))

(declare-fun res!1686619 () Bool)

(assert (=> d!1222845 (=> res!1686619 e!2560478)))

(declare-fun isEmpty!26584 (Option!9612) Bool)

(assert (=> d!1222845 (= res!1686619 (isEmpty!26584 lt!1472042))))

(declare-fun e!2560477 () Option!9612)

(assert (=> d!1222845 (= lt!1472042 e!2560477)))

(declare-fun c!708249 () Bool)

(declare-datatypes ((tuple2!43110 0))(
  ( (tuple2!43111 (_1!24689 List!44777) (_2!24689 List!44777)) )
))
(declare-fun lt!1472043 () tuple2!43110)

(assert (=> d!1222845 (= c!708249 (isEmpty!26582 (_1!24689 lt!1472043)))))

(declare-fun findLongestMatch!1416 (Regex!12209 List!44777) tuple2!43110)

(assert (=> d!1222845 (= lt!1472043 (findLongestMatch!1416 (regex!7304 (h!50075 rules!3756)) input!3238))))

(assert (=> d!1222845 (ruleValid!3112 thiss!25645 (h!50075 rules!3756))))

(assert (=> d!1222845 (= (maxPrefixOneRule!3033 thiss!25645 (h!50075 rules!3756) input!3238) lt!1472042)))

(declare-fun b!4126523 () Bool)

(assert (=> b!4126523 (= e!2560477 None!9611)))

(declare-fun b!4126524 () Bool)

(declare-fun e!2560479 () Bool)

(declare-fun findLongestMatchInner!1503 (Regex!12209 List!44777 Int List!44777 List!44777 Int) tuple2!43110)

(assert (=> b!4126524 (= e!2560479 (matchR!6040 (regex!7304 (h!50075 rules!3756)) (_1!24689 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238)))))))

(declare-fun b!4126525 () Bool)

(declare-fun res!1686624 () Bool)

(assert (=> b!4126525 (=> (not res!1686624) (not e!2560480))))

(assert (=> b!4126525 (= res!1686624 (< (size!33066 (_2!24687 (get!14570 lt!1472042))) (size!33066 input!3238)))))

(declare-fun b!4126526 () Bool)

(declare-fun res!1686622 () Bool)

(assert (=> b!4126526 (=> (not res!1686622) (not e!2560480))))

(assert (=> b!4126526 (= res!1686622 (= (rule!10390 (_1!24687 (get!14570 lt!1472042))) (h!50075 rules!3756)))))

(declare-fun b!4126527 () Bool)

(declare-fun res!1686621 () Bool)

(assert (=> b!4126527 (=> (not res!1686621) (not e!2560480))))

(assert (=> b!4126527 (= res!1686621 (= (value!228718 (_1!24687 (get!14570 lt!1472042))) (apply!10377 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042)))) (seqFromList!5421 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472042)))))))))

(declare-fun b!4126528 () Bool)

(declare-fun size!33068 (BalanceConc!26624) Int)

(assert (=> b!4126528 (= e!2560477 (Some!9611 (tuple2!43107 (Token!13539 (apply!10377 (transformation!7304 (h!50075 rules!3756)) (seqFromList!5421 (_1!24689 lt!1472043))) (h!50075 rules!3756) (size!33068 (seqFromList!5421 (_1!24689 lt!1472043))) (_1!24689 lt!1472043)) (_2!24689 lt!1472043))))))

(declare-fun lt!1472046 () Unit!63989)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1476 (Regex!12209 List!44777) Unit!63989)

(assert (=> b!4126528 (= lt!1472046 (longestMatchIsAcceptedByMatchOrIsEmpty!1476 (regex!7304 (h!50075 rules!3756)) input!3238))))

(declare-fun res!1686623 () Bool)

(assert (=> b!4126528 (= res!1686623 (isEmpty!26582 (_1!24689 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238)))))))

(assert (=> b!4126528 (=> res!1686623 e!2560479)))

(assert (=> b!4126528 e!2560479))

(declare-fun lt!1472044 () Unit!63989)

(assert (=> b!4126528 (= lt!1472044 lt!1472046)))

(declare-fun lt!1472045 () Unit!63989)

(assert (=> b!4126528 (= lt!1472045 (lemmaSemiInverse!2162 (transformation!7304 (h!50075 rules!3756)) (seqFromList!5421 (_1!24689 lt!1472043))))))

(assert (= (and d!1222845 c!708249) b!4126523))

(assert (= (and d!1222845 (not c!708249)) b!4126528))

(assert (= (and b!4126528 (not res!1686623)) b!4126524))

(assert (= (and d!1222845 (not res!1686619)) b!4126520))

(assert (= (and b!4126520 res!1686618) b!4126521))

(assert (= (and b!4126521 res!1686620) b!4126525))

(assert (= (and b!4126525 res!1686624) b!4126526))

(assert (= (and b!4126526 res!1686622) b!4126527))

(assert (= (and b!4126527 res!1686621) b!4126522))

(declare-fun m!4725009 () Bool)

(assert (=> b!4126528 m!4725009))

(declare-fun m!4725011 () Bool)

(assert (=> b!4126528 m!4725011))

(declare-fun m!4725013 () Bool)

(assert (=> b!4126528 m!4725013))

(declare-fun m!4725015 () Bool)

(assert (=> b!4126528 m!4725015))

(declare-fun m!4725017 () Bool)

(assert (=> b!4126528 m!4725017))

(declare-fun m!4725019 () Bool)

(assert (=> b!4126528 m!4725019))

(assert (=> b!4126528 m!4725017))

(assert (=> b!4126528 m!4725009))

(declare-fun m!4725021 () Bool)

(assert (=> b!4126528 m!4725021))

(assert (=> b!4126528 m!4725009))

(declare-fun m!4725023 () Bool)

(assert (=> b!4126528 m!4725023))

(assert (=> b!4126528 m!4725009))

(declare-fun m!4725025 () Bool)

(assert (=> b!4126528 m!4725025))

(assert (=> b!4126528 m!4725015))

(declare-fun m!4725027 () Bool)

(assert (=> b!4126527 m!4725027))

(declare-fun m!4725029 () Bool)

(assert (=> b!4126527 m!4725029))

(assert (=> b!4126527 m!4725029))

(declare-fun m!4725031 () Bool)

(assert (=> b!4126527 m!4725031))

(assert (=> b!4126520 m!4725027))

(declare-fun m!4725033 () Bool)

(assert (=> b!4126520 m!4725033))

(assert (=> b!4126520 m!4725033))

(declare-fun m!4725035 () Bool)

(assert (=> b!4126520 m!4725035))

(assert (=> b!4126520 m!4725035))

(declare-fun m!4725037 () Bool)

(assert (=> b!4126520 m!4725037))

(assert (=> b!4126521 m!4725027))

(assert (=> b!4126521 m!4725033))

(assert (=> b!4126521 m!4725033))

(assert (=> b!4126521 m!4725035))

(assert (=> b!4126521 m!4725035))

(declare-fun m!4725039 () Bool)

(assert (=> b!4126521 m!4725039))

(assert (=> b!4126526 m!4725027))

(assert (=> b!4126522 m!4725027))

(declare-fun m!4725041 () Bool)

(assert (=> b!4126522 m!4725041))

(declare-fun m!4725043 () Bool)

(assert (=> d!1222845 m!4725043))

(declare-fun m!4725045 () Bool)

(assert (=> d!1222845 m!4725045))

(declare-fun m!4725047 () Bool)

(assert (=> d!1222845 m!4725047))

(declare-fun m!4725049 () Bool)

(assert (=> d!1222845 m!4725049))

(assert (=> b!4126524 m!4725015))

(assert (=> b!4126524 m!4725017))

(assert (=> b!4126524 m!4725015))

(assert (=> b!4126524 m!4725017))

(assert (=> b!4126524 m!4725019))

(declare-fun m!4725051 () Bool)

(assert (=> b!4126524 m!4725051))

(assert (=> b!4126525 m!4725027))

(declare-fun m!4725053 () Bool)

(assert (=> b!4126525 m!4725053))

(assert (=> b!4126525 m!4725017))

(assert (=> b!4126372 d!1222845))

(declare-fun d!1222861 () Bool)

(declare-fun lt!1472049 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6886 (List!44779) (InoxSet Rule!14408))

(assert (=> d!1222861 (= lt!1472049 (select (content!6886 (t!341164 rules!3756)) r!4008))))

(declare-fun e!2560485 () Bool)

(assert (=> d!1222861 (= lt!1472049 e!2560485)))

(declare-fun res!1686629 () Bool)

(assert (=> d!1222861 (=> (not res!1686629) (not e!2560485))))

(assert (=> d!1222861 (= res!1686629 ((_ is Cons!44655) (t!341164 rules!3756)))))

(assert (=> d!1222861 (= (contains!8978 (t!341164 rules!3756) r!4008) lt!1472049)))

(declare-fun b!4126533 () Bool)

(declare-fun e!2560486 () Bool)

(assert (=> b!4126533 (= e!2560485 e!2560486)))

(declare-fun res!1686630 () Bool)

(assert (=> b!4126533 (=> res!1686630 e!2560486)))

(assert (=> b!4126533 (= res!1686630 (= (h!50075 (t!341164 rules!3756)) r!4008))))

(declare-fun b!4126534 () Bool)

(assert (=> b!4126534 (= e!2560486 (contains!8978 (t!341164 (t!341164 rules!3756)) r!4008))))

(assert (= (and d!1222861 res!1686629) b!4126533))

(assert (= (and b!4126533 (not res!1686630)) b!4126534))

(declare-fun m!4725055 () Bool)

(assert (=> d!1222861 m!4725055))

(declare-fun m!4725057 () Bool)

(assert (=> d!1222861 m!4725057))

(declare-fun m!4725059 () Bool)

(assert (=> b!4126534 m!4725059))

(assert (=> b!4126371 d!1222861))

(declare-fun d!1222863 () Bool)

(assert (=> d!1222863 (= (inv!59239 (tag!8164 r!4008)) (= (mod (str.len (value!228717 (tag!8164 r!4008))) 2) 0))))

(assert (=> b!4126360 d!1222863))

(declare-fun d!1222865 () Bool)

(declare-fun res!1686633 () Bool)

(declare-fun e!2560489 () Bool)

(assert (=> d!1222865 (=> (not res!1686633) (not e!2560489))))

(declare-fun semiInverseModEq!3147 (Int Int) Bool)

(assert (=> d!1222865 (= res!1686633 (semiInverseModEq!3147 (toChars!9819 (transformation!7304 r!4008)) (toValue!9960 (transformation!7304 r!4008))))))

(assert (=> d!1222865 (= (inv!59241 (transformation!7304 r!4008)) e!2560489)))

(declare-fun b!4126537 () Bool)

(declare-fun equivClasses!3046 (Int Int) Bool)

(assert (=> b!4126537 (= e!2560489 (equivClasses!3046 (toChars!9819 (transformation!7304 r!4008)) (toValue!9960 (transformation!7304 r!4008))))))

(assert (= (and d!1222865 res!1686633) b!4126537))

(declare-fun m!4725061 () Bool)

(assert (=> d!1222865 m!4725061))

(declare-fun m!4725063 () Bool)

(assert (=> b!4126537 m!4725063))

(assert (=> b!4126360 d!1222865))

(declare-fun d!1222867 () Bool)

(declare-fun lt!1472050 () Bool)

(assert (=> d!1222867 (= lt!1472050 (select (content!6886 (t!341164 rules!3756)) rBis!149))))

(declare-fun e!2560490 () Bool)

(assert (=> d!1222867 (= lt!1472050 e!2560490)))

(declare-fun res!1686634 () Bool)

(assert (=> d!1222867 (=> (not res!1686634) (not e!2560490))))

(assert (=> d!1222867 (= res!1686634 ((_ is Cons!44655) (t!341164 rules!3756)))))

(assert (=> d!1222867 (= (contains!8978 (t!341164 rules!3756) rBis!149) lt!1472050)))

(declare-fun b!4126538 () Bool)

(declare-fun e!2560491 () Bool)

(assert (=> b!4126538 (= e!2560490 e!2560491)))

(declare-fun res!1686635 () Bool)

(assert (=> b!4126538 (=> res!1686635 e!2560491)))

(assert (=> b!4126538 (= res!1686635 (= (h!50075 (t!341164 rules!3756)) rBis!149))))

(declare-fun b!4126539 () Bool)

(assert (=> b!4126539 (= e!2560491 (contains!8978 (t!341164 (t!341164 rules!3756)) rBis!149))))

(assert (= (and d!1222867 res!1686634) b!4126538))

(assert (= (and b!4126538 (not res!1686635)) b!4126539))

(assert (=> d!1222867 m!4725055))

(declare-fun m!4725065 () Bool)

(assert (=> d!1222867 m!4725065))

(declare-fun m!4725067 () Bool)

(assert (=> b!4126539 m!4725067))

(assert (=> b!4126364 d!1222867))

(declare-fun d!1222869 () Bool)

(declare-fun dynLambda!19103 (Int BalanceConc!26624) TokenValue!7534)

(assert (=> d!1222869 (= (apply!10377 (transformation!7304 r!4008) lt!1471990) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990))))

(declare-fun b_lambda!121113 () Bool)

(assert (=> (not b_lambda!121113) (not d!1222869)))

(declare-fun tb!247619 () Bool)

(declare-fun t!341178 () Bool)

(assert (=> (and b!4126378 (= (toValue!9960 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 r!4008))) t!341178) tb!247619))

(declare-fun result!300892 () Bool)

(declare-fun inv!21 (TokenValue!7534) Bool)

(assert (=> tb!247619 (= result!300892 (inv!21 (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990)))))

(declare-fun m!4725069 () Bool)

(assert (=> tb!247619 m!4725069))

(assert (=> d!1222869 t!341178))

(declare-fun b_and!319511 () Bool)

(assert (= b_and!319481 (and (=> t!341178 result!300892) b_and!319511)))

(declare-fun t!341180 () Bool)

(declare-fun tb!247621 () Bool)

(assert (=> (and b!4126375 (= (toValue!9960 (transformation!7304 r!4008)) (toValue!9960 (transformation!7304 r!4008))) t!341180) tb!247621))

(declare-fun result!300896 () Bool)

(assert (= result!300896 result!300892))

(assert (=> d!1222869 t!341180))

(declare-fun b_and!319513 () Bool)

(assert (= b_and!319485 (and (=> t!341180 result!300896) b_and!319513)))

(declare-fun t!341182 () Bool)

(declare-fun tb!247623 () Bool)

(assert (=> (and b!4126368 (= (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (toValue!9960 (transformation!7304 r!4008))) t!341182) tb!247623))

(declare-fun result!300898 () Bool)

(assert (= result!300898 result!300892))

(assert (=> d!1222869 t!341182))

(declare-fun b_and!319515 () Bool)

(assert (= b_and!319489 (and (=> t!341182 result!300898) b_and!319515)))

(declare-fun m!4725071 () Bool)

(assert (=> d!1222869 m!4725071))

(assert (=> b!4126363 d!1222869))

(declare-fun d!1222871 () Bool)

(declare-fun lt!1472063 () List!44777)

(assert (=> d!1222871 (= (++!11568 p!2912 lt!1472063) input!3238)))

(declare-fun e!2560503 () List!44777)

(assert (=> d!1222871 (= lt!1472063 e!2560503)))

(declare-fun c!708254 () Bool)

(assert (=> d!1222871 (= c!708254 ((_ is Cons!44653) p!2912))))

(assert (=> d!1222871 (>= (size!33066 input!3238) (size!33066 p!2912))))

(assert (=> d!1222871 (= (getSuffix!2568 input!3238 p!2912) lt!1472063)))

(declare-fun b!4126564 () Bool)

(declare-fun tail!6467 (List!44777) List!44777)

(assert (=> b!4126564 (= e!2560503 (getSuffix!2568 (tail!6467 input!3238) (t!341162 p!2912)))))

(declare-fun b!4126565 () Bool)

(assert (=> b!4126565 (= e!2560503 input!3238)))

(assert (= (and d!1222871 c!708254) b!4126564))

(assert (= (and d!1222871 (not c!708254)) b!4126565))

(declare-fun m!4725073 () Bool)

(assert (=> d!1222871 m!4725073))

(assert (=> d!1222871 m!4725017))

(assert (=> d!1222871 m!4724871))

(declare-fun m!4725075 () Bool)

(assert (=> b!4126564 m!4725075))

(assert (=> b!4126564 m!4725075))

(declare-fun m!4725077 () Bool)

(assert (=> b!4126564 m!4725077))

(assert (=> b!4126363 d!1222871))

(declare-fun b!4126579 () Bool)

(declare-fun e!2560509 () Bool)

(assert (=> b!4126579 (= e!2560509 true)))

(declare-fun d!1222873 () Bool)

(assert (=> d!1222873 e!2560509))

(assert (= d!1222873 b!4126579))

(declare-fun order!23519 () Int)

(declare-fun lambda!128753 () Int)

(declare-fun order!23517 () Int)

(declare-fun dynLambda!19104 (Int Int) Int)

(declare-fun dynLambda!19105 (Int Int) Int)

(assert (=> b!4126579 (< (dynLambda!19104 order!23517 (toValue!9960 (transformation!7304 r!4008))) (dynLambda!19105 order!23519 lambda!128753))))

(declare-fun order!23521 () Int)

(declare-fun dynLambda!19106 (Int Int) Int)

(assert (=> b!4126579 (< (dynLambda!19106 order!23521 (toChars!9819 (transformation!7304 r!4008))) (dynLambda!19105 order!23519 lambda!128753))))

(declare-fun dynLambda!19107 (Int TokenValue!7534) BalanceConc!26624)

(assert (=> d!1222873 (= (list!16375 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990))) (list!16375 lt!1471990))))

(declare-fun lt!1472071 () Unit!63989)

(declare-fun ForallOf!930 (Int BalanceConc!26624) Unit!63989)

(assert (=> d!1222873 (= lt!1472071 (ForallOf!930 lambda!128753 lt!1471990))))

(assert (=> d!1222873 (= (lemmaSemiInverse!2162 (transformation!7304 r!4008) lt!1471990) lt!1472071)))

(declare-fun b_lambda!121115 () Bool)

(assert (=> (not b_lambda!121115) (not d!1222873)))

(declare-fun t!341184 () Bool)

(declare-fun tb!247625 () Bool)

(assert (=> (and b!4126378 (= (toChars!9819 (transformation!7304 rBis!149)) (toChars!9819 (transformation!7304 r!4008))) t!341184) tb!247625))

(declare-fun b!4126584 () Bool)

(declare-fun e!2560512 () Bool)

(declare-fun tp!1257488 () Bool)

(declare-fun inv!59244 (Conc!13515) Bool)

(assert (=> b!4126584 (= e!2560512 (and (inv!59244 (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990)))) tp!1257488))))

(declare-fun result!300900 () Bool)

(declare-fun inv!59245 (BalanceConc!26624) Bool)

(assert (=> tb!247625 (= result!300900 (and (inv!59245 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990))) e!2560512))))

(assert (= tb!247625 b!4126584))

(declare-fun m!4725109 () Bool)

(assert (=> b!4126584 m!4725109))

(declare-fun m!4725111 () Bool)

(assert (=> tb!247625 m!4725111))

(assert (=> d!1222873 t!341184))

(declare-fun b_and!319517 () Bool)

(assert (= b_and!319483 (and (=> t!341184 result!300900) b_and!319517)))

(declare-fun t!341186 () Bool)

(declare-fun tb!247627 () Bool)

(assert (=> (and b!4126375 (= (toChars!9819 (transformation!7304 r!4008)) (toChars!9819 (transformation!7304 r!4008))) t!341186) tb!247627))

(declare-fun result!300904 () Bool)

(assert (= result!300904 result!300900))

(assert (=> d!1222873 t!341186))

(declare-fun b_and!319519 () Bool)

(assert (= b_and!319487 (and (=> t!341186 result!300904) b_and!319519)))

(declare-fun t!341188 () Bool)

(declare-fun tb!247629 () Bool)

(assert (=> (and b!4126368 (= (toChars!9819 (transformation!7304 (h!50075 rules!3756))) (toChars!9819 (transformation!7304 r!4008))) t!341188) tb!247629))

(declare-fun result!300906 () Bool)

(assert (= result!300906 result!300900))

(assert (=> d!1222873 t!341188))

(declare-fun b_and!319521 () Bool)

(assert (= b_and!319491 (and (=> t!341188 result!300906) b_and!319521)))

(declare-fun b_lambda!121117 () Bool)

(assert (=> (not b_lambda!121117) (not d!1222873)))

(assert (=> d!1222873 t!341178))

(declare-fun b_and!319523 () Bool)

(assert (= b_and!319511 (and (=> t!341178 result!300892) b_and!319523)))

(assert (=> d!1222873 t!341180))

(declare-fun b_and!319525 () Bool)

(assert (= b_and!319513 (and (=> t!341180 result!300896) b_and!319525)))

(assert (=> d!1222873 t!341182))

(declare-fun b_and!319527 () Bool)

(assert (= b_and!319515 (and (=> t!341182 result!300898) b_and!319527)))

(assert (=> d!1222873 m!4725071))

(declare-fun m!4725113 () Bool)

(assert (=> d!1222873 m!4725113))

(declare-fun m!4725115 () Bool)

(assert (=> d!1222873 m!4725115))

(assert (=> d!1222873 m!4725071))

(assert (=> d!1222873 m!4725113))

(declare-fun m!4725117 () Bool)

(assert (=> d!1222873 m!4725117))

(declare-fun m!4725119 () Bool)

(assert (=> d!1222873 m!4725119))

(assert (=> b!4126363 d!1222873))

(declare-fun b!4126700 () Bool)

(declare-fun e!2560573 () Bool)

(declare-fun lt!1472095 () Option!9612)

(assert (=> b!4126700 (= e!2560573 (contains!8978 rules!3756 (rule!10390 (_1!24687 (get!14570 lt!1472095)))))))

(declare-fun b!4126701 () Bool)

(declare-fun res!1686709 () Bool)

(assert (=> b!4126701 (=> (not res!1686709) (not e!2560573))))

(assert (=> b!4126701 (= res!1686709 (< (size!33066 (_2!24687 (get!14570 lt!1472095))) (size!33066 input!3238)))))

(declare-fun call!290153 () Option!9612)

(declare-fun bm!290148 () Bool)

(assert (=> bm!290148 (= call!290153 (maxPrefixOneRule!3033 thiss!25645 (h!50075 rules!3756) input!3238))))

(declare-fun b!4126702 () Bool)

(declare-fun e!2560575 () Bool)

(assert (=> b!4126702 (= e!2560575 e!2560573)))

(declare-fun res!1686711 () Bool)

(assert (=> b!4126702 (=> (not res!1686711) (not e!2560573))))

(declare-fun isDefined!7241 (Option!9612) Bool)

(assert (=> b!4126702 (= res!1686711 (isDefined!7241 lt!1472095))))

(declare-fun b!4126703 () Bool)

(declare-fun e!2560574 () Option!9612)

(declare-fun lt!1472098 () Option!9612)

(declare-fun lt!1472097 () Option!9612)

(assert (=> b!4126703 (= e!2560574 (ite (and ((_ is None!9611) lt!1472098) ((_ is None!9611) lt!1472097)) None!9611 (ite ((_ is None!9611) lt!1472097) lt!1472098 (ite ((_ is None!9611) lt!1472098) lt!1472097 (ite (>= (size!33065 (_1!24687 (v!40209 lt!1472098))) (size!33065 (_1!24687 (v!40209 lt!1472097)))) lt!1472098 lt!1472097)))))))

(assert (=> b!4126703 (= lt!1472098 call!290153)))

(assert (=> b!4126703 (= lt!1472097 (maxPrefix!4085 thiss!25645 (t!341164 rules!3756) input!3238))))

(declare-fun b!4126704 () Bool)

(declare-fun res!1686708 () Bool)

(assert (=> b!4126704 (=> (not res!1686708) (not e!2560573))))

(assert (=> b!4126704 (= res!1686708 (= (value!228718 (_1!24687 (get!14570 lt!1472095))) (apply!10377 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))) (seqFromList!5421 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472095)))))))))

(declare-fun b!4126705 () Bool)

(assert (=> b!4126705 (= e!2560574 call!290153)))

(declare-fun b!4126706 () Bool)

(declare-fun res!1686707 () Bool)

(assert (=> b!4126706 (=> (not res!1686707) (not e!2560573))))

(assert (=> b!4126706 (= res!1686707 (matchR!6040 (regex!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))) (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095))))))))

(declare-fun d!1222877 () Bool)

(assert (=> d!1222877 e!2560575))

(declare-fun res!1686710 () Bool)

(assert (=> d!1222877 (=> res!1686710 e!2560575)))

(assert (=> d!1222877 (= res!1686710 (isEmpty!26584 lt!1472095))))

(assert (=> d!1222877 (= lt!1472095 e!2560574)))

(declare-fun c!708271 () Bool)

(assert (=> d!1222877 (= c!708271 (and ((_ is Cons!44655) rules!3756) ((_ is Nil!44655) (t!341164 rules!3756))))))

(declare-fun lt!1472096 () Unit!63989)

(declare-fun lt!1472099 () Unit!63989)

(assert (=> d!1222877 (= lt!1472096 lt!1472099)))

(assert (=> d!1222877 (isPrefix!4239 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2747 (List!44777 List!44777) Unit!63989)

(assert (=> d!1222877 (= lt!1472099 (lemmaIsPrefixRefl!2747 input!3238 input!3238))))

(assert (=> d!1222877 (rulesValidInductive!2698 thiss!25645 rules!3756)))

(assert (=> d!1222877 (= (maxPrefix!4085 thiss!25645 rules!3756 input!3238) lt!1472095)))

(declare-fun b!4126707 () Bool)

(declare-fun res!1686706 () Bool)

(assert (=> b!4126707 (=> (not res!1686706) (not e!2560573))))

(assert (=> b!4126707 (= res!1686706 (= (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095)))) (originalCharacters!7800 (_1!24687 (get!14570 lt!1472095)))))))

(declare-fun b!4126708 () Bool)

(declare-fun res!1686705 () Bool)

(assert (=> b!4126708 (=> (not res!1686705) (not e!2560573))))

(assert (=> b!4126708 (= res!1686705 (= (++!11568 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095)))) (_2!24687 (get!14570 lt!1472095))) input!3238))))

(assert (= (and d!1222877 c!708271) b!4126705))

(assert (= (and d!1222877 (not c!708271)) b!4126703))

(assert (= (or b!4126705 b!4126703) bm!290148))

(assert (= (and d!1222877 (not res!1686710)) b!4126702))

(assert (= (and b!4126702 res!1686711) b!4126707))

(assert (= (and b!4126707 res!1686706) b!4126701))

(assert (= (and b!4126701 res!1686709) b!4126708))

(assert (= (and b!4126708 res!1686705) b!4126704))

(assert (= (and b!4126704 res!1686708) b!4126706))

(assert (= (and b!4126706 res!1686707) b!4126700))

(declare-fun m!4725163 () Bool)

(assert (=> b!4126706 m!4725163))

(declare-fun m!4725165 () Bool)

(assert (=> b!4126706 m!4725165))

(assert (=> b!4126706 m!4725165))

(declare-fun m!4725167 () Bool)

(assert (=> b!4126706 m!4725167))

(assert (=> b!4126706 m!4725167))

(declare-fun m!4725169 () Bool)

(assert (=> b!4126706 m!4725169))

(declare-fun m!4725171 () Bool)

(assert (=> b!4126703 m!4725171))

(declare-fun m!4725173 () Bool)

(assert (=> d!1222877 m!4725173))

(declare-fun m!4725175 () Bool)

(assert (=> d!1222877 m!4725175))

(declare-fun m!4725177 () Bool)

(assert (=> d!1222877 m!4725177))

(declare-fun m!4725179 () Bool)

(assert (=> d!1222877 m!4725179))

(assert (=> b!4126704 m!4725163))

(declare-fun m!4725181 () Bool)

(assert (=> b!4126704 m!4725181))

(assert (=> b!4126704 m!4725181))

(declare-fun m!4725183 () Bool)

(assert (=> b!4126704 m!4725183))

(assert (=> b!4126707 m!4725163))

(assert (=> b!4126707 m!4725165))

(assert (=> b!4126707 m!4725165))

(assert (=> b!4126707 m!4725167))

(assert (=> b!4126700 m!4725163))

(declare-fun m!4725185 () Bool)

(assert (=> b!4126700 m!4725185))

(assert (=> bm!290148 m!4724859))

(declare-fun m!4725187 () Bool)

(assert (=> b!4126702 m!4725187))

(assert (=> b!4126701 m!4725163))

(declare-fun m!4725189 () Bool)

(assert (=> b!4126701 m!4725189))

(assert (=> b!4126701 m!4725017))

(assert (=> b!4126708 m!4725163))

(assert (=> b!4126708 m!4725165))

(assert (=> b!4126708 m!4725165))

(assert (=> b!4126708 m!4725167))

(assert (=> b!4126708 m!4725167))

(declare-fun m!4725191 () Bool)

(assert (=> b!4126708 m!4725191))

(assert (=> b!4126363 d!1222877))

(declare-fun d!1222905 () Bool)

(declare-fun fromListB!2480 (List!44777) BalanceConc!26624)

(assert (=> d!1222905 (= (seqFromList!5421 p!2912) (fromListB!2480 p!2912))))

(declare-fun bs!594857 () Bool)

(assert (= bs!594857 d!1222905))

(declare-fun m!4725193 () Bool)

(assert (=> bs!594857 m!4725193))

(assert (=> b!4126363 d!1222905))

(declare-fun d!1222907 () Bool)

(declare-fun lt!1472102 () Int)

(assert (=> d!1222907 (>= lt!1472102 0)))

(declare-fun e!2560578 () Int)

(assert (=> d!1222907 (= lt!1472102 e!2560578)))

(declare-fun c!708274 () Bool)

(assert (=> d!1222907 (= c!708274 ((_ is Nil!44653) p!2912))))

(assert (=> d!1222907 (= (size!33066 p!2912) lt!1472102)))

(declare-fun b!4126713 () Bool)

(assert (=> b!4126713 (= e!2560578 0)))

(declare-fun b!4126714 () Bool)

(assert (=> b!4126714 (= e!2560578 (+ 1 (size!33066 (t!341162 p!2912))))))

(assert (= (and d!1222907 c!708274) b!4126713))

(assert (= (and d!1222907 (not c!708274)) b!4126714))

(declare-fun m!4725195 () Bool)

(assert (=> b!4126714 m!4725195))

(assert (=> b!4126363 d!1222907))

(declare-fun b!4126726 () Bool)

(declare-fun e!2560585 () Bool)

(assert (=> b!4126726 (= e!2560585 (>= (size!33066 input!3238) (size!33066 p!2912)))))

(declare-fun d!1222909 () Bool)

(assert (=> d!1222909 e!2560585))

(declare-fun res!1686723 () Bool)

(assert (=> d!1222909 (=> res!1686723 e!2560585)))

(declare-fun lt!1472105 () Bool)

(assert (=> d!1222909 (= res!1686723 (not lt!1472105))))

(declare-fun e!2560587 () Bool)

(assert (=> d!1222909 (= lt!1472105 e!2560587)))

(declare-fun res!1686721 () Bool)

(assert (=> d!1222909 (=> res!1686721 e!2560587)))

(assert (=> d!1222909 (= res!1686721 ((_ is Nil!44653) p!2912))))

(assert (=> d!1222909 (= (isPrefix!4239 p!2912 input!3238) lt!1472105)))

(declare-fun b!4126723 () Bool)

(declare-fun e!2560586 () Bool)

(assert (=> b!4126723 (= e!2560587 e!2560586)))

(declare-fun res!1686720 () Bool)

(assert (=> b!4126723 (=> (not res!1686720) (not e!2560586))))

(assert (=> b!4126723 (= res!1686720 (not ((_ is Nil!44653) input!3238)))))

(declare-fun b!4126724 () Bool)

(declare-fun res!1686722 () Bool)

(assert (=> b!4126724 (=> (not res!1686722) (not e!2560586))))

(declare-fun head!8694 (List!44777) C!24604)

(assert (=> b!4126724 (= res!1686722 (= (head!8694 p!2912) (head!8694 input!3238)))))

(declare-fun b!4126725 () Bool)

(assert (=> b!4126725 (= e!2560586 (isPrefix!4239 (tail!6467 p!2912) (tail!6467 input!3238)))))

(assert (= (and d!1222909 (not res!1686721)) b!4126723))

(assert (= (and b!4126723 res!1686720) b!4126724))

(assert (= (and b!4126724 res!1686722) b!4126725))

(assert (= (and d!1222909 (not res!1686723)) b!4126726))

(assert (=> b!4126726 m!4725017))

(assert (=> b!4126726 m!4724871))

(declare-fun m!4725197 () Bool)

(assert (=> b!4126724 m!4725197))

(declare-fun m!4725199 () Bool)

(assert (=> b!4126724 m!4725199))

(declare-fun m!4725201 () Bool)

(assert (=> b!4126725 m!4725201))

(assert (=> b!4126725 m!4725075))

(assert (=> b!4126725 m!4725201))

(assert (=> b!4126725 m!4725075))

(declare-fun m!4725203 () Bool)

(assert (=> b!4126725 m!4725203))

(assert (=> b!4126374 d!1222909))

(declare-fun d!1222911 () Bool)

(assert (=> d!1222911 (= (inv!59239 (tag!8164 rBis!149)) (= (mod (str.len (value!228717 (tag!8164 rBis!149))) 2) 0))))

(assert (=> b!4126373 d!1222911))

(declare-fun d!1222913 () Bool)

(declare-fun res!1686724 () Bool)

(declare-fun e!2560588 () Bool)

(assert (=> d!1222913 (=> (not res!1686724) (not e!2560588))))

(assert (=> d!1222913 (= res!1686724 (semiInverseModEq!3147 (toChars!9819 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 rBis!149))))))

(assert (=> d!1222913 (= (inv!59241 (transformation!7304 rBis!149)) e!2560588)))

(declare-fun b!4126727 () Bool)

(assert (=> b!4126727 (= e!2560588 (equivClasses!3046 (toChars!9819 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 rBis!149))))))

(assert (= (and d!1222913 res!1686724) b!4126727))

(declare-fun m!4725205 () Bool)

(assert (=> d!1222913 m!4725205))

(declare-fun m!4725207 () Bool)

(assert (=> b!4126727 m!4725207))

(assert (=> b!4126373 d!1222913))

(declare-fun d!1222915 () Bool)

(assert (=> d!1222915 (ruleValid!3112 thiss!25645 r!4008)))

(declare-fun lt!1472108 () Unit!63989)

(declare-fun choose!25231 (LexerInterface!6893 Rule!14408 List!44779) Unit!63989)

(assert (=> d!1222915 (= lt!1472108 (choose!25231 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1222915 (contains!8978 rules!3756 r!4008)))

(assert (=> d!1222915 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2156 thiss!25645 r!4008 rules!3756) lt!1472108)))

(declare-fun bs!594858 () Bool)

(assert (= bs!594858 d!1222915))

(assert (=> bs!594858 m!4724839))

(declare-fun m!4725209 () Bool)

(assert (=> bs!594858 m!4725209))

(assert (=> bs!594858 m!4724893))

(assert (=> b!4126367 d!1222915))

(declare-fun d!1222917 () Bool)

(declare-fun res!1686729 () Bool)

(declare-fun e!2560591 () Bool)

(assert (=> d!1222917 (=> (not res!1686729) (not e!2560591))))

(declare-fun validRegex!5492 (Regex!12209) Bool)

(assert (=> d!1222917 (= res!1686729 (validRegex!5492 (regex!7304 rBis!149)))))

(assert (=> d!1222917 (= (ruleValid!3112 thiss!25645 rBis!149) e!2560591)))

(declare-fun b!4126732 () Bool)

(declare-fun res!1686730 () Bool)

(assert (=> b!4126732 (=> (not res!1686730) (not e!2560591))))

(declare-fun nullable!4286 (Regex!12209) Bool)

(assert (=> b!4126732 (= res!1686730 (not (nullable!4286 (regex!7304 rBis!149))))))

(declare-fun b!4126733 () Bool)

(assert (=> b!4126733 (= e!2560591 (not (= (tag!8164 rBis!149) (String!51421 ""))))))

(assert (= (and d!1222917 res!1686729) b!4126732))

(assert (= (and b!4126732 res!1686730) b!4126733))

(declare-fun m!4725211 () Bool)

(assert (=> d!1222917 m!4725211))

(declare-fun m!4725213 () Bool)

(assert (=> b!4126732 m!4725213))

(assert (=> b!4126367 d!1222917))

(declare-fun d!1222919 () Bool)

(assert (=> d!1222919 (ruleValid!3112 thiss!25645 rBis!149)))

(declare-fun lt!1472109 () Unit!63989)

(assert (=> d!1222919 (= lt!1472109 (choose!25231 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1222919 (contains!8978 rules!3756 rBis!149)))

(assert (=> d!1222919 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2156 thiss!25645 rBis!149 rules!3756) lt!1472109)))

(declare-fun bs!594859 () Bool)

(assert (= bs!594859 d!1222919))

(assert (=> bs!594859 m!4724849))

(declare-fun m!4725215 () Bool)

(assert (=> bs!594859 m!4725215))

(assert (=> bs!594859 m!4724889))

(assert (=> b!4126367 d!1222919))

(declare-fun b!4126762 () Bool)

(declare-fun e!2560611 () Bool)

(declare-fun e!2560608 () Bool)

(assert (=> b!4126762 (= e!2560611 e!2560608)))

(declare-fun res!1686747 () Bool)

(assert (=> b!4126762 (=> (not res!1686747) (not e!2560608))))

(declare-fun lt!1472112 () Bool)

(assert (=> b!4126762 (= res!1686747 (not lt!1472112))))

(declare-fun b!4126763 () Bool)

(declare-fun res!1686749 () Bool)

(assert (=> b!4126763 (=> res!1686749 e!2560611)))

(assert (=> b!4126763 (= res!1686749 (not ((_ is ElementMatch!12209) (regex!7304 r!4008))))))

(declare-fun e!2560606 () Bool)

(assert (=> b!4126763 (= e!2560606 e!2560611)))

(declare-fun b!4126764 () Bool)

(declare-fun e!2560607 () Bool)

(assert (=> b!4126764 (= e!2560608 e!2560607)))

(declare-fun res!1686750 () Bool)

(assert (=> b!4126764 (=> res!1686750 e!2560607)))

(declare-fun call!290156 () Bool)

(assert (=> b!4126764 (= res!1686750 call!290156)))

(declare-fun b!4126765 () Bool)

(declare-fun res!1686754 () Bool)

(assert (=> b!4126765 (=> res!1686754 e!2560607)))

(assert (=> b!4126765 (= res!1686754 (not (isEmpty!26582 (tail!6467 p!2912))))))

(declare-fun b!4126766 () Bool)

(assert (=> b!4126766 (= e!2560607 (not (= (head!8694 p!2912) (c!708223 (regex!7304 r!4008)))))))

(declare-fun b!4126767 () Bool)

(assert (=> b!4126767 (= e!2560606 (not lt!1472112))))

(declare-fun b!4126768 () Bool)

(declare-fun res!1686752 () Bool)

(declare-fun e!2560612 () Bool)

(assert (=> b!4126768 (=> (not res!1686752) (not e!2560612))))

(assert (=> b!4126768 (= res!1686752 (isEmpty!26582 (tail!6467 p!2912)))))

(declare-fun bm!290151 () Bool)

(assert (=> bm!290151 (= call!290156 (isEmpty!26582 p!2912))))

(declare-fun d!1222921 () Bool)

(declare-fun e!2560610 () Bool)

(assert (=> d!1222921 e!2560610))

(declare-fun c!708283 () Bool)

(assert (=> d!1222921 (= c!708283 ((_ is EmptyExpr!12209) (regex!7304 r!4008)))))

(declare-fun e!2560609 () Bool)

(assert (=> d!1222921 (= lt!1472112 e!2560609)))

(declare-fun c!708281 () Bool)

(assert (=> d!1222921 (= c!708281 (isEmpty!26582 p!2912))))

(assert (=> d!1222921 (validRegex!5492 (regex!7304 r!4008))))

(assert (=> d!1222921 (= (matchR!6040 (regex!7304 r!4008) p!2912) lt!1472112)))

(declare-fun b!4126769 () Bool)

(assert (=> b!4126769 (= e!2560609 (nullable!4286 (regex!7304 r!4008)))))

(declare-fun b!4126770 () Bool)

(assert (=> b!4126770 (= e!2560610 e!2560606)))

(declare-fun c!708282 () Bool)

(assert (=> b!4126770 (= c!708282 ((_ is EmptyLang!12209) (regex!7304 r!4008)))))

(declare-fun b!4126771 () Bool)

(assert (=> b!4126771 (= e!2560610 (= lt!1472112 call!290156))))

(declare-fun b!4126772 () Bool)

(assert (=> b!4126772 (= e!2560612 (= (head!8694 p!2912) (c!708223 (regex!7304 r!4008))))))

(declare-fun b!4126773 () Bool)

(declare-fun res!1686751 () Bool)

(assert (=> b!4126773 (=> (not res!1686751) (not e!2560612))))

(assert (=> b!4126773 (= res!1686751 (not call!290156))))

(declare-fun b!4126774 () Bool)

(declare-fun derivativeStep!3681 (Regex!12209 C!24604) Regex!12209)

(assert (=> b!4126774 (= e!2560609 (matchR!6040 (derivativeStep!3681 (regex!7304 r!4008) (head!8694 p!2912)) (tail!6467 p!2912)))))

(declare-fun b!4126775 () Bool)

(declare-fun res!1686748 () Bool)

(assert (=> b!4126775 (=> res!1686748 e!2560611)))

(assert (=> b!4126775 (= res!1686748 e!2560612)))

(declare-fun res!1686753 () Bool)

(assert (=> b!4126775 (=> (not res!1686753) (not e!2560612))))

(assert (=> b!4126775 (= res!1686753 lt!1472112)))

(assert (= (and d!1222921 c!708281) b!4126769))

(assert (= (and d!1222921 (not c!708281)) b!4126774))

(assert (= (and d!1222921 c!708283) b!4126771))

(assert (= (and d!1222921 (not c!708283)) b!4126770))

(assert (= (and b!4126770 c!708282) b!4126767))

(assert (= (and b!4126770 (not c!708282)) b!4126763))

(assert (= (and b!4126763 (not res!1686749)) b!4126775))

(assert (= (and b!4126775 res!1686753) b!4126773))

(assert (= (and b!4126773 res!1686751) b!4126768))

(assert (= (and b!4126768 res!1686752) b!4126772))

(assert (= (and b!4126775 (not res!1686748)) b!4126762))

(assert (= (and b!4126762 res!1686747) b!4126764))

(assert (= (and b!4126764 (not res!1686750)) b!4126765))

(assert (= (and b!4126765 (not res!1686754)) b!4126766))

(assert (= (or b!4126771 b!4126764 b!4126773) bm!290151))

(declare-fun m!4725217 () Bool)

(assert (=> b!4126769 m!4725217))

(assert (=> b!4126768 m!4725201))

(assert (=> b!4126768 m!4725201))

(declare-fun m!4725219 () Bool)

(assert (=> b!4126768 m!4725219))

(assert (=> b!4126774 m!4725197))

(assert (=> b!4126774 m!4725197))

(declare-fun m!4725221 () Bool)

(assert (=> b!4126774 m!4725221))

(assert (=> b!4126774 m!4725201))

(assert (=> b!4126774 m!4725221))

(assert (=> b!4126774 m!4725201))

(declare-fun m!4725223 () Bool)

(assert (=> b!4126774 m!4725223))

(assert (=> bm!290151 m!4724841))

(assert (=> b!4126766 m!4725197))

(assert (=> b!4126765 m!4725201))

(assert (=> b!4126765 m!4725201))

(assert (=> b!4126765 m!4725219))

(assert (=> d!1222921 m!4724841))

(declare-fun m!4725225 () Bool)

(assert (=> d!1222921 m!4725225))

(assert (=> b!4126772 m!4725197))

(assert (=> b!4126356 d!1222921))

(declare-fun d!1222923 () Bool)

(declare-fun lt!1472113 () Bool)

(assert (=> d!1222923 (= lt!1472113 (select (content!6886 rules!3756) rBis!149))))

(declare-fun e!2560613 () Bool)

(assert (=> d!1222923 (= lt!1472113 e!2560613)))

(declare-fun res!1686755 () Bool)

(assert (=> d!1222923 (=> (not res!1686755) (not e!2560613))))

(assert (=> d!1222923 (= res!1686755 ((_ is Cons!44655) rules!3756))))

(assert (=> d!1222923 (= (contains!8978 rules!3756 rBis!149) lt!1472113)))

(declare-fun b!4126776 () Bool)

(declare-fun e!2560614 () Bool)

(assert (=> b!4126776 (= e!2560613 e!2560614)))

(declare-fun res!1686756 () Bool)

(assert (=> b!4126776 (=> res!1686756 e!2560614)))

(assert (=> b!4126776 (= res!1686756 (= (h!50075 rules!3756) rBis!149))))

(declare-fun b!4126777 () Bool)

(assert (=> b!4126777 (= e!2560614 (contains!8978 (t!341164 rules!3756) rBis!149))))

(assert (= (and d!1222923 res!1686755) b!4126776))

(assert (= (and b!4126776 (not res!1686756)) b!4126777))

(declare-fun m!4725227 () Bool)

(assert (=> d!1222923 m!4725227))

(declare-fun m!4725229 () Bool)

(assert (=> d!1222923 m!4725229))

(assert (=> b!4126777 m!4724891))

(assert (=> b!4126366 d!1222923))

(declare-fun d!1222925 () Bool)

(declare-fun lt!1472114 () Bool)

(assert (=> d!1222925 (= lt!1472114 (select (content!6886 rules!3756) r!4008))))

(declare-fun e!2560615 () Bool)

(assert (=> d!1222925 (= lt!1472114 e!2560615)))

(declare-fun res!1686757 () Bool)

(assert (=> d!1222925 (=> (not res!1686757) (not e!2560615))))

(assert (=> d!1222925 (= res!1686757 ((_ is Cons!44655) rules!3756))))

(assert (=> d!1222925 (= (contains!8978 rules!3756 r!4008) lt!1472114)))

(declare-fun b!4126778 () Bool)

(declare-fun e!2560616 () Bool)

(assert (=> b!4126778 (= e!2560615 e!2560616)))

(declare-fun res!1686758 () Bool)

(assert (=> b!4126778 (=> res!1686758 e!2560616)))

(assert (=> b!4126778 (= res!1686758 (= (h!50075 rules!3756) r!4008))))

(declare-fun b!4126779 () Bool)

(assert (=> b!4126779 (= e!2560616 (contains!8978 (t!341164 rules!3756) r!4008))))

(assert (= (and d!1222925 res!1686757) b!4126778))

(assert (= (and b!4126778 (not res!1686758)) b!4126779))

(assert (=> d!1222925 m!4725227))

(declare-fun m!4725231 () Bool)

(assert (=> d!1222925 m!4725231))

(assert (=> b!4126779 m!4724869))

(assert (=> b!4126365 d!1222925))

(declare-fun d!1222927 () Bool)

(assert (=> d!1222927 (= (isEmpty!26582 p!2912) ((_ is Nil!44653) p!2912))))

(assert (=> b!4126359 d!1222927))

(declare-fun d!1222929 () Bool)

(declare-fun res!1686761 () Bool)

(declare-fun e!2560619 () Bool)

(assert (=> d!1222929 (=> (not res!1686761) (not e!2560619))))

(declare-fun rulesValid!2862 (LexerInterface!6893 List!44779) Bool)

(assert (=> d!1222929 (= res!1686761 (rulesValid!2862 thiss!25645 rules!3756))))

(assert (=> d!1222929 (= (rulesInvariant!6190 thiss!25645 rules!3756) e!2560619)))

(declare-fun b!4126782 () Bool)

(declare-datatypes ((List!44781 0))(
  ( (Nil!44657) (Cons!44657 (h!50077 String!51420) (t!341198 List!44781)) )
))
(declare-fun noDuplicateTag!2943 (LexerInterface!6893 List!44779 List!44781) Bool)

(assert (=> b!4126782 (= e!2560619 (noDuplicateTag!2943 thiss!25645 rules!3756 Nil!44657))))

(assert (= (and d!1222929 res!1686761) b!4126782))

(declare-fun m!4725233 () Bool)

(assert (=> d!1222929 m!4725233))

(declare-fun m!4725235 () Bool)

(assert (=> b!4126782 m!4725235))

(assert (=> b!4126370 d!1222929))

(declare-fun d!1222931 () Bool)

(assert (=> d!1222931 (= (inv!59239 (tag!8164 (h!50075 rules!3756))) (= (mod (str.len (value!228717 (tag!8164 (h!50075 rules!3756)))) 2) 0))))

(assert (=> b!4126369 d!1222931))

(declare-fun d!1222933 () Bool)

(declare-fun res!1686762 () Bool)

(declare-fun e!2560620 () Bool)

(assert (=> d!1222933 (=> (not res!1686762) (not e!2560620))))

(assert (=> d!1222933 (= res!1686762 (semiInverseModEq!3147 (toChars!9819 (transformation!7304 (h!50075 rules!3756))) (toValue!9960 (transformation!7304 (h!50075 rules!3756)))))))

(assert (=> d!1222933 (= (inv!59241 (transformation!7304 (h!50075 rules!3756))) e!2560620)))

(declare-fun b!4126783 () Bool)

(assert (=> b!4126783 (= e!2560620 (equivClasses!3046 (toChars!9819 (transformation!7304 (h!50075 rules!3756))) (toValue!9960 (transformation!7304 (h!50075 rules!3756)))))))

(assert (= (and d!1222933 res!1686762) b!4126783))

(declare-fun m!4725237 () Bool)

(assert (=> d!1222933 m!4725237))

(declare-fun m!4725239 () Bool)

(assert (=> b!4126783 m!4725239))

(assert (=> b!4126369 d!1222933))

(declare-fun d!1222935 () Bool)

(assert (=> d!1222935 (= (isEmpty!26581 rules!3756) ((_ is Nil!44655) rules!3756))))

(assert (=> b!4126358 d!1222935))

(declare-fun d!1222937 () Bool)

(declare-fun res!1686763 () Bool)

(declare-fun e!2560621 () Bool)

(assert (=> d!1222937 (=> (not res!1686763) (not e!2560621))))

(assert (=> d!1222937 (= res!1686763 (validRegex!5492 (regex!7304 r!4008)))))

(assert (=> d!1222937 (= (ruleValid!3112 thiss!25645 r!4008) e!2560621)))

(declare-fun b!4126784 () Bool)

(declare-fun res!1686764 () Bool)

(assert (=> b!4126784 (=> (not res!1686764) (not e!2560621))))

(assert (=> b!4126784 (= res!1686764 (not (nullable!4286 (regex!7304 r!4008))))))

(declare-fun b!4126785 () Bool)

(assert (=> b!4126785 (= e!2560621 (not (= (tag!8164 r!4008) (String!51421 ""))))))

(assert (= (and d!1222937 res!1686763) b!4126784))

(assert (= (and b!4126784 res!1686764) b!4126785))

(assert (=> d!1222937 m!4725225))

(assert (=> b!4126784 m!4725217))

(assert (=> b!4126357 d!1222937))

(declare-fun b!4126796 () Bool)

(declare-fun b_free!116899 () Bool)

(declare-fun b_next!117603 () Bool)

(assert (=> b!4126796 (= b_free!116899 (not b_next!117603))))

(declare-fun tb!247635 () Bool)

(declare-fun t!341194 () Bool)

(assert (=> (and b!4126796 (= (toValue!9960 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toValue!9960 (transformation!7304 r!4008))) t!341194) tb!247635))

(declare-fun result!300920 () Bool)

(assert (= result!300920 result!300892))

(assert (=> d!1222869 t!341194))

(assert (=> d!1222873 t!341194))

(declare-fun tp!1257538 () Bool)

(declare-fun b_and!319533 () Bool)

(assert (=> b!4126796 (= tp!1257538 (and (=> t!341194 result!300920) b_and!319533))))

(declare-fun b_free!116901 () Bool)

(declare-fun b_next!117605 () Bool)

(assert (=> b!4126796 (= b_free!116901 (not b_next!117605))))

(declare-fun tb!247637 () Bool)

(declare-fun t!341196 () Bool)

(assert (=> (and b!4126796 (= (toChars!9819 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toChars!9819 (transformation!7304 r!4008))) t!341196) tb!247637))

(declare-fun result!300922 () Bool)

(assert (= result!300922 result!300900))

(assert (=> d!1222873 t!341196))

(declare-fun b_and!319535 () Bool)

(declare-fun tp!1257541 () Bool)

(assert (=> b!4126796 (= tp!1257541 (and (=> t!341196 result!300922) b_and!319535))))

(declare-fun e!2560630 () Bool)

(assert (=> b!4126796 (= e!2560630 (and tp!1257538 tp!1257541))))

(declare-fun e!2560631 () Bool)

(declare-fun b!4126795 () Bool)

(declare-fun tp!1257539 () Bool)

(assert (=> b!4126795 (= e!2560631 (and tp!1257539 (inv!59239 (tag!8164 (h!50075 (t!341164 rules!3756)))) (inv!59241 (transformation!7304 (h!50075 (t!341164 rules!3756)))) e!2560630))))

(declare-fun b!4126794 () Bool)

(declare-fun e!2560633 () Bool)

(declare-fun tp!1257540 () Bool)

(assert (=> b!4126794 (= e!2560633 (and e!2560631 tp!1257540))))

(assert (=> b!4126361 (= tp!1257479 e!2560633)))

(assert (= b!4126795 b!4126796))

(assert (= b!4126794 b!4126795))

(assert (= (and b!4126361 ((_ is Cons!44655) (t!341164 rules!3756))) b!4126794))

(declare-fun m!4725241 () Bool)

(assert (=> b!4126795 m!4725241))

(declare-fun m!4725243 () Bool)

(assert (=> b!4126795 m!4725243))

(declare-fun b!4126801 () Bool)

(declare-fun e!2560636 () Bool)

(declare-fun tp!1257544 () Bool)

(assert (=> b!4126801 (= e!2560636 (and tp_is_empty!21341 tp!1257544))))

(assert (=> b!4126377 (= tp!1257473 e!2560636)))

(assert (= (and b!4126377 ((_ is Cons!44653) (t!341162 input!3238))) b!4126801))

(declare-fun b!4126812 () Bool)

(declare-fun e!2560639 () Bool)

(assert (=> b!4126812 (= e!2560639 tp_is_empty!21341)))

(declare-fun b!4126815 () Bool)

(declare-fun tp!1257555 () Bool)

(declare-fun tp!1257556 () Bool)

(assert (=> b!4126815 (= e!2560639 (and tp!1257555 tp!1257556))))

(declare-fun b!4126814 () Bool)

(declare-fun tp!1257557 () Bool)

(assert (=> b!4126814 (= e!2560639 tp!1257557)))

(assert (=> b!4126360 (= tp!1257474 e!2560639)))

(declare-fun b!4126813 () Bool)

(declare-fun tp!1257558 () Bool)

(declare-fun tp!1257559 () Bool)

(assert (=> b!4126813 (= e!2560639 (and tp!1257558 tp!1257559))))

(assert (= (and b!4126360 ((_ is ElementMatch!12209) (regex!7304 r!4008))) b!4126812))

(assert (= (and b!4126360 ((_ is Concat!19744) (regex!7304 r!4008))) b!4126813))

(assert (= (and b!4126360 ((_ is Star!12209) (regex!7304 r!4008))) b!4126814))

(assert (= (and b!4126360 ((_ is Union!12209) (regex!7304 r!4008))) b!4126815))

(declare-fun b!4126816 () Bool)

(declare-fun e!2560640 () Bool)

(declare-fun tp!1257560 () Bool)

(assert (=> b!4126816 (= e!2560640 (and tp_is_empty!21341 tp!1257560))))

(assert (=> b!4126376 (= tp!1257478 e!2560640)))

(assert (= (and b!4126376 ((_ is Cons!44653) (t!341162 p!2912))) b!4126816))

(declare-fun b!4126817 () Bool)

(declare-fun e!2560641 () Bool)

(assert (=> b!4126817 (= e!2560641 tp_is_empty!21341)))

(declare-fun b!4126820 () Bool)

(declare-fun tp!1257561 () Bool)

(declare-fun tp!1257562 () Bool)

(assert (=> b!4126820 (= e!2560641 (and tp!1257561 tp!1257562))))

(declare-fun b!4126819 () Bool)

(declare-fun tp!1257563 () Bool)

(assert (=> b!4126819 (= e!2560641 tp!1257563)))

(assert (=> b!4126369 (= tp!1257475 e!2560641)))

(declare-fun b!4126818 () Bool)

(declare-fun tp!1257564 () Bool)

(declare-fun tp!1257565 () Bool)

(assert (=> b!4126818 (= e!2560641 (and tp!1257564 tp!1257565))))

(assert (= (and b!4126369 ((_ is ElementMatch!12209) (regex!7304 (h!50075 rules!3756)))) b!4126817))

(assert (= (and b!4126369 ((_ is Concat!19744) (regex!7304 (h!50075 rules!3756)))) b!4126818))

(assert (= (and b!4126369 ((_ is Star!12209) (regex!7304 (h!50075 rules!3756)))) b!4126819))

(assert (= (and b!4126369 ((_ is Union!12209) (regex!7304 (h!50075 rules!3756)))) b!4126820))

(declare-fun b!4126821 () Bool)

(declare-fun e!2560642 () Bool)

(assert (=> b!4126821 (= e!2560642 tp_is_empty!21341)))

(declare-fun b!4126824 () Bool)

(declare-fun tp!1257566 () Bool)

(declare-fun tp!1257567 () Bool)

(assert (=> b!4126824 (= e!2560642 (and tp!1257566 tp!1257567))))

(declare-fun b!4126823 () Bool)

(declare-fun tp!1257568 () Bool)

(assert (=> b!4126823 (= e!2560642 tp!1257568)))

(assert (=> b!4126373 (= tp!1257477 e!2560642)))

(declare-fun b!4126822 () Bool)

(declare-fun tp!1257569 () Bool)

(declare-fun tp!1257570 () Bool)

(assert (=> b!4126822 (= e!2560642 (and tp!1257569 tp!1257570))))

(assert (= (and b!4126373 ((_ is ElementMatch!12209) (regex!7304 rBis!149))) b!4126821))

(assert (= (and b!4126373 ((_ is Concat!19744) (regex!7304 rBis!149))) b!4126822))

(assert (= (and b!4126373 ((_ is Star!12209) (regex!7304 rBis!149))) b!4126823))

(assert (= (and b!4126373 ((_ is Union!12209) (regex!7304 rBis!149))) b!4126824))

(declare-fun b_lambda!121125 () Bool)

(assert (= b_lambda!121113 (or (and b!4126378 b_free!116883 (= (toValue!9960 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 r!4008)))) (and b!4126375 b_free!116887) (and b!4126368 b_free!116891 (= (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (toValue!9960 (transformation!7304 r!4008)))) (and b!4126796 b_free!116899 (= (toValue!9960 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toValue!9960 (transformation!7304 r!4008)))) b_lambda!121125)))

(declare-fun b_lambda!121127 () Bool)

(assert (= b_lambda!121115 (or (and b!4126378 b_free!116885 (= (toChars!9819 (transformation!7304 rBis!149)) (toChars!9819 (transformation!7304 r!4008)))) (and b!4126375 b_free!116889) (and b!4126368 b_free!116893 (= (toChars!9819 (transformation!7304 (h!50075 rules!3756))) (toChars!9819 (transformation!7304 r!4008)))) (and b!4126796 b_free!116901 (= (toChars!9819 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toChars!9819 (transformation!7304 r!4008)))) b_lambda!121127)))

(declare-fun b_lambda!121129 () Bool)

(assert (= b_lambda!121117 (or (and b!4126378 b_free!116883 (= (toValue!9960 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 r!4008)))) (and b!4126375 b_free!116887) (and b!4126368 b_free!116891 (= (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (toValue!9960 (transformation!7304 r!4008)))) (and b!4126796 b_free!116899 (= (toValue!9960 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toValue!9960 (transformation!7304 r!4008)))) b_lambda!121129)))

(check-sat (not b!4126527) (not b!4126819) b_and!319517 (not b!4126732) (not b!4126520) (not b!4126820) (not b!4126769) (not d!1222929) (not b!4126818) (not b!4126445) (not b_lambda!121127) (not b!4126814) b_and!319519 (not d!1222873) (not b!4126727) (not b!4126801) (not b!4126823) b_and!319525 (not b!4126539) (not b!4126526) (not b!4126524) (not b!4126783) b_and!319533 (not b!4126784) (not b!4126765) (not d!1222865) (not d!1222867) (not b!4126822) (not b!4126724) (not b!4126522) b_and!319535 (not d!1222925) (not b!4126521) (not b!4126815) (not b!4126706) (not b!4126714) (not d!1222937) (not b!4126768) (not b!4126584) (not d!1222921) (not b!4126824) (not b!4126702) (not b!4126766) (not b_lambda!121125) (not b_next!117605) (not d!1222831) (not bm!290148) (not bm!290151) (not b!4126707) (not d!1222905) (not b!4126782) (not tb!247619) (not b!4126389) (not d!1222923) (not b_next!117593) (not b!4126534) (not d!1222861) (not b!4126703) (not b!4126393) (not b!4126704) (not b!4126795) (not d!1222913) b_and!319523 (not d!1222823) (not b_next!117589) (not b!4126701) (not b_next!117587) (not d!1222845) (not d!1222877) (not b!4126525) b_and!319521 (not b_next!117597) (not b!4126794) (not b!4126816) (not d!1222915) b_and!319527 (not b!4126779) (not b!4126537) (not b!4126772) (not b!4126777) (not b!4126700) (not b!4126528) (not d!1222871) (not b_lambda!121129) (not b!4126813) tp_is_empty!21341 (not b!4126444) (not b_next!117591) (not b!4126725) (not d!1222917) (not d!1222829) (not d!1222933) (not b!4126564) (not b!4126726) (not tb!247625) (not b_next!117603) (not b!4126774) (not b_next!117595) (not b!4126708) (not d!1222919))
(check-sat b_and!319519 b_and!319525 b_and!319533 b_and!319535 (not b_next!117605) b_and!319517 (not b_next!117593) (not b_next!117591) b_and!319523 (not b_next!117589) (not b_next!117587) b_and!319521 (not b_next!117597) b_and!319527 (not b_next!117603) (not b_next!117595))
(get-model)

(declare-fun d!1222939 () Bool)

(declare-fun res!1686769 () Bool)

(declare-fun e!2560647 () Bool)

(assert (=> d!1222939 (=> res!1686769 e!2560647)))

(assert (=> d!1222939 (= res!1686769 ((_ is Nil!44655) (t!341164 rules!3756)))))

(assert (=> d!1222939 (= (forall!8450 (t!341164 rules!3756) lambda!128747) e!2560647)))

(declare-fun b!4126829 () Bool)

(declare-fun e!2560648 () Bool)

(assert (=> b!4126829 (= e!2560647 e!2560648)))

(declare-fun res!1686770 () Bool)

(assert (=> b!4126829 (=> (not res!1686770) (not e!2560648))))

(declare-fun dynLambda!19108 (Int Rule!14408) Bool)

(assert (=> b!4126829 (= res!1686770 (dynLambda!19108 lambda!128747 (h!50075 (t!341164 rules!3756))))))

(declare-fun b!4126830 () Bool)

(assert (=> b!4126830 (= e!2560648 (forall!8450 (t!341164 (t!341164 rules!3756)) lambda!128747))))

(assert (= (and d!1222939 (not res!1686769)) b!4126829))

(assert (= (and b!4126829 res!1686770) b!4126830))

(declare-fun b_lambda!121131 () Bool)

(assert (=> (not b_lambda!121131) (not b!4126829)))

(declare-fun m!4725245 () Bool)

(assert (=> b!4126829 m!4725245))

(declare-fun m!4725247 () Bool)

(assert (=> b!4126830 m!4725247))

(assert (=> d!1222831 d!1222939))

(assert (=> d!1222915 d!1222937))

(declare-fun d!1222941 () Bool)

(assert (=> d!1222941 (ruleValid!3112 thiss!25645 r!4008)))

(assert (=> d!1222941 true))

(declare-fun _$65!1609 () Unit!63989)

(assert (=> d!1222941 (= (choose!25231 thiss!25645 r!4008 rules!3756) _$65!1609)))

(declare-fun bs!594860 () Bool)

(assert (= bs!594860 d!1222941))

(assert (=> bs!594860 m!4724839))

(assert (=> d!1222915 d!1222941))

(assert (=> d!1222915 d!1222925))

(assert (=> d!1222823 d!1222923))

(assert (=> d!1222921 d!1222927))

(declare-fun b!4126849 () Bool)

(declare-fun e!2560664 () Bool)

(declare-fun call!290163 () Bool)

(assert (=> b!4126849 (= e!2560664 call!290163)))

(declare-fun b!4126850 () Bool)

(declare-fun e!2560663 () Bool)

(declare-fun call!290164 () Bool)

(assert (=> b!4126850 (= e!2560663 call!290164)))

(declare-fun c!708289 () Bool)

(declare-fun c!708288 () Bool)

(declare-fun bm!290158 () Bool)

(assert (=> bm!290158 (= call!290163 (validRegex!5492 (ite c!708289 (reg!12538 (regex!7304 r!4008)) (ite c!708288 (regTwo!24931 (regex!7304 r!4008)) (regTwo!24930 (regex!7304 r!4008))))))))

(declare-fun b!4126851 () Bool)

(declare-fun res!1686783 () Bool)

(declare-fun e!2560669 () Bool)

(assert (=> b!4126851 (=> (not res!1686783) (not e!2560669))))

(declare-fun call!290165 () Bool)

(assert (=> b!4126851 (= res!1686783 call!290165)))

(declare-fun e!2560667 () Bool)

(assert (=> b!4126851 (= e!2560667 e!2560669)))

(declare-fun b!4126852 () Bool)

(declare-fun e!2560666 () Bool)

(assert (=> b!4126852 (= e!2560666 e!2560664)))

(declare-fun res!1686781 () Bool)

(assert (=> b!4126852 (= res!1686781 (not (nullable!4286 (reg!12538 (regex!7304 r!4008)))))))

(assert (=> b!4126852 (=> (not res!1686781) (not e!2560664))))

(declare-fun d!1222943 () Bool)

(declare-fun res!1686782 () Bool)

(declare-fun e!2560668 () Bool)

(assert (=> d!1222943 (=> res!1686782 e!2560668)))

(assert (=> d!1222943 (= res!1686782 ((_ is ElementMatch!12209) (regex!7304 r!4008)))))

(assert (=> d!1222943 (= (validRegex!5492 (regex!7304 r!4008)) e!2560668)))

(declare-fun b!4126853 () Bool)

(declare-fun res!1686785 () Bool)

(declare-fun e!2560665 () Bool)

(assert (=> b!4126853 (=> res!1686785 e!2560665)))

(assert (=> b!4126853 (= res!1686785 (not ((_ is Concat!19744) (regex!7304 r!4008))))))

(assert (=> b!4126853 (= e!2560667 e!2560665)))

(declare-fun b!4126854 () Bool)

(assert (=> b!4126854 (= e!2560668 e!2560666)))

(assert (=> b!4126854 (= c!708289 ((_ is Star!12209) (regex!7304 r!4008)))))

(declare-fun b!4126855 () Bool)

(assert (=> b!4126855 (= e!2560666 e!2560667)))

(assert (=> b!4126855 (= c!708288 ((_ is Union!12209) (regex!7304 r!4008)))))

(declare-fun b!4126856 () Bool)

(assert (=> b!4126856 (= e!2560665 e!2560663)))

(declare-fun res!1686784 () Bool)

(assert (=> b!4126856 (=> (not res!1686784) (not e!2560663))))

(assert (=> b!4126856 (= res!1686784 call!290165)))

(declare-fun bm!290159 () Bool)

(assert (=> bm!290159 (= call!290165 (validRegex!5492 (ite c!708288 (regOne!24931 (regex!7304 r!4008)) (regOne!24930 (regex!7304 r!4008)))))))

(declare-fun b!4126857 () Bool)

(assert (=> b!4126857 (= e!2560669 call!290164)))

(declare-fun bm!290160 () Bool)

(assert (=> bm!290160 (= call!290164 call!290163)))

(assert (= (and d!1222943 (not res!1686782)) b!4126854))

(assert (= (and b!4126854 c!708289) b!4126852))

(assert (= (and b!4126854 (not c!708289)) b!4126855))

(assert (= (and b!4126852 res!1686781) b!4126849))

(assert (= (and b!4126855 c!708288) b!4126851))

(assert (= (and b!4126855 (not c!708288)) b!4126853))

(assert (= (and b!4126851 res!1686783) b!4126857))

(assert (= (and b!4126853 (not res!1686785)) b!4126856))

(assert (= (and b!4126856 res!1686784) b!4126850))

(assert (= (or b!4126851 b!4126856) bm!290159))

(assert (= (or b!4126857 b!4126850) bm!290160))

(assert (= (or b!4126849 bm!290160) bm!290158))

(declare-fun m!4725249 () Bool)

(assert (=> bm!290158 m!4725249))

(declare-fun m!4725251 () Bool)

(assert (=> b!4126852 m!4725251))

(declare-fun m!4725253 () Bool)

(assert (=> bm!290159 m!4725253))

(assert (=> d!1222921 d!1222943))

(declare-fun d!1222945 () Bool)

(declare-fun e!2560675 () Bool)

(assert (=> d!1222945 e!2560675))

(declare-fun res!1686790 () Bool)

(assert (=> d!1222945 (=> (not res!1686790) (not e!2560675))))

(declare-fun lt!1472117 () List!44777)

(declare-fun content!6887 (List!44777) (InoxSet C!24604))

(assert (=> d!1222945 (= res!1686790 (= (content!6887 lt!1472117) ((_ map or) (content!6887 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042))))) (content!6887 (_2!24687 (get!14570 lt!1472042))))))))

(declare-fun e!2560674 () List!44777)

(assert (=> d!1222945 (= lt!1472117 e!2560674)))

(declare-fun c!708292 () Bool)

(assert (=> d!1222945 (= c!708292 ((_ is Nil!44653) (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042))))))))

(assert (=> d!1222945 (= (++!11568 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042)))) (_2!24687 (get!14570 lt!1472042))) lt!1472117)))

(declare-fun b!4126868 () Bool)

(declare-fun res!1686791 () Bool)

(assert (=> b!4126868 (=> (not res!1686791) (not e!2560675))))

(assert (=> b!4126868 (= res!1686791 (= (size!33066 lt!1472117) (+ (size!33066 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042))))) (size!33066 (_2!24687 (get!14570 lt!1472042))))))))

(declare-fun b!4126866 () Bool)

(assert (=> b!4126866 (= e!2560674 (_2!24687 (get!14570 lt!1472042)))))

(declare-fun b!4126869 () Bool)

(assert (=> b!4126869 (= e!2560675 (or (not (= (_2!24687 (get!14570 lt!1472042)) Nil!44653)) (= lt!1472117 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042)))))))))

(declare-fun b!4126867 () Bool)

(assert (=> b!4126867 (= e!2560674 (Cons!44653 (h!50073 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042))))) (++!11568 (t!341162 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042))))) (_2!24687 (get!14570 lt!1472042)))))))

(assert (= (and d!1222945 c!708292) b!4126866))

(assert (= (and d!1222945 (not c!708292)) b!4126867))

(assert (= (and d!1222945 res!1686790) b!4126868))

(assert (= (and b!4126868 res!1686791) b!4126869))

(declare-fun m!4725255 () Bool)

(assert (=> d!1222945 m!4725255))

(assert (=> d!1222945 m!4725035))

(declare-fun m!4725257 () Bool)

(assert (=> d!1222945 m!4725257))

(declare-fun m!4725259 () Bool)

(assert (=> d!1222945 m!4725259))

(declare-fun m!4725261 () Bool)

(assert (=> b!4126868 m!4725261))

(assert (=> b!4126868 m!4725035))

(declare-fun m!4725263 () Bool)

(assert (=> b!4126868 m!4725263))

(assert (=> b!4126868 m!4725053))

(declare-fun m!4725265 () Bool)

(assert (=> b!4126867 m!4725265))

(assert (=> b!4126521 d!1222945))

(declare-fun d!1222947 () Bool)

(declare-fun list!16376 (Conc!13515) List!44777)

(assert (=> d!1222947 (= (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042)))) (list!16376 (c!708222 (charsOf!4922 (_1!24687 (get!14570 lt!1472042))))))))

(declare-fun bs!594861 () Bool)

(assert (= bs!594861 d!1222947))

(declare-fun m!4725267 () Bool)

(assert (=> bs!594861 m!4725267))

(assert (=> b!4126521 d!1222947))

(declare-fun d!1222949 () Bool)

(declare-fun lt!1472120 () BalanceConc!26624)

(assert (=> d!1222949 (= (list!16375 lt!1472120) (originalCharacters!7800 (_1!24687 (get!14570 lt!1472042))))))

(assert (=> d!1222949 (= lt!1472120 (dynLambda!19107 (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042))))) (value!228718 (_1!24687 (get!14570 lt!1472042)))))))

(assert (=> d!1222949 (= (charsOf!4922 (_1!24687 (get!14570 lt!1472042))) lt!1472120)))

(declare-fun b_lambda!121133 () Bool)

(assert (=> (not b_lambda!121133) (not d!1222949)))

(declare-fun t!341200 () Bool)

(declare-fun tb!247639 () Bool)

(assert (=> (and b!4126378 (= (toChars!9819 (transformation!7304 rBis!149)) (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042)))))) t!341200) tb!247639))

(declare-fun b!4126870 () Bool)

(declare-fun e!2560676 () Bool)

(declare-fun tp!1257571 () Bool)

(assert (=> b!4126870 (= e!2560676 (and (inv!59244 (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042))))) (value!228718 (_1!24687 (get!14570 lt!1472042)))))) tp!1257571))))

(declare-fun result!300928 () Bool)

(assert (=> tb!247639 (= result!300928 (and (inv!59245 (dynLambda!19107 (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042))))) (value!228718 (_1!24687 (get!14570 lt!1472042))))) e!2560676))))

(assert (= tb!247639 b!4126870))

(declare-fun m!4725269 () Bool)

(assert (=> b!4126870 m!4725269))

(declare-fun m!4725271 () Bool)

(assert (=> tb!247639 m!4725271))

(assert (=> d!1222949 t!341200))

(declare-fun b_and!319537 () Bool)

(assert (= b_and!319517 (and (=> t!341200 result!300928) b_and!319537)))

(declare-fun t!341202 () Bool)

(declare-fun tb!247641 () Bool)

(assert (=> (and b!4126375 (= (toChars!9819 (transformation!7304 r!4008)) (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042)))))) t!341202) tb!247641))

(declare-fun result!300930 () Bool)

(assert (= result!300930 result!300928))

(assert (=> d!1222949 t!341202))

(declare-fun b_and!319539 () Bool)

(assert (= b_and!319519 (and (=> t!341202 result!300930) b_and!319539)))

(declare-fun tb!247643 () Bool)

(declare-fun t!341204 () Bool)

(assert (=> (and b!4126368 (= (toChars!9819 (transformation!7304 (h!50075 rules!3756))) (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042)))))) t!341204) tb!247643))

(declare-fun result!300932 () Bool)

(assert (= result!300932 result!300928))

(assert (=> d!1222949 t!341204))

(declare-fun b_and!319541 () Bool)

(assert (= b_and!319521 (and (=> t!341204 result!300932) b_and!319541)))

(declare-fun t!341206 () Bool)

(declare-fun tb!247645 () Bool)

(assert (=> (and b!4126796 (= (toChars!9819 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042)))))) t!341206) tb!247645))

(declare-fun result!300934 () Bool)

(assert (= result!300934 result!300928))

(assert (=> d!1222949 t!341206))

(declare-fun b_and!319543 () Bool)

(assert (= b_and!319535 (and (=> t!341206 result!300934) b_and!319543)))

(declare-fun m!4725273 () Bool)

(assert (=> d!1222949 m!4725273))

(declare-fun m!4725275 () Bool)

(assert (=> d!1222949 m!4725275))

(assert (=> b!4126521 d!1222949))

(declare-fun d!1222953 () Bool)

(assert (=> d!1222953 (= (get!14570 lt!1472042) (v!40209 lt!1472042))))

(assert (=> b!4126521 d!1222953))

(declare-fun d!1222955 () Bool)

(assert (=> d!1222955 (= (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095)))) (list!16376 (c!708222 (charsOf!4922 (_1!24687 (get!14570 lt!1472095))))))))

(declare-fun bs!594862 () Bool)

(assert (= bs!594862 d!1222955))

(declare-fun m!4725277 () Bool)

(assert (=> bs!594862 m!4725277))

(assert (=> b!4126707 d!1222955))

(declare-fun d!1222957 () Bool)

(declare-fun lt!1472121 () BalanceConc!26624)

(assert (=> d!1222957 (= (list!16375 lt!1472121) (originalCharacters!7800 (_1!24687 (get!14570 lt!1472095))))))

(assert (=> d!1222957 (= lt!1472121 (dynLambda!19107 (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095))))) (value!228718 (_1!24687 (get!14570 lt!1472095)))))))

(assert (=> d!1222957 (= (charsOf!4922 (_1!24687 (get!14570 lt!1472095))) lt!1472121)))

(declare-fun b_lambda!121135 () Bool)

(assert (=> (not b_lambda!121135) (not d!1222957)))

(declare-fun tb!247647 () Bool)

(declare-fun t!341208 () Bool)

(assert (=> (and b!4126378 (= (toChars!9819 (transformation!7304 rBis!149)) (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))))) t!341208) tb!247647))

(declare-fun b!4126871 () Bool)

(declare-fun e!2560677 () Bool)

(declare-fun tp!1257572 () Bool)

(assert (=> b!4126871 (= e!2560677 (and (inv!59244 (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095))))) (value!228718 (_1!24687 (get!14570 lt!1472095)))))) tp!1257572))))

(declare-fun result!300936 () Bool)

(assert (=> tb!247647 (= result!300936 (and (inv!59245 (dynLambda!19107 (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095))))) (value!228718 (_1!24687 (get!14570 lt!1472095))))) e!2560677))))

(assert (= tb!247647 b!4126871))

(declare-fun m!4725279 () Bool)

(assert (=> b!4126871 m!4725279))

(declare-fun m!4725281 () Bool)

(assert (=> tb!247647 m!4725281))

(assert (=> d!1222957 t!341208))

(declare-fun b_and!319545 () Bool)

(assert (= b_and!319537 (and (=> t!341208 result!300936) b_and!319545)))

(declare-fun tb!247649 () Bool)

(declare-fun t!341210 () Bool)

(assert (=> (and b!4126375 (= (toChars!9819 (transformation!7304 r!4008)) (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))))) t!341210) tb!247649))

(declare-fun result!300938 () Bool)

(assert (= result!300938 result!300936))

(assert (=> d!1222957 t!341210))

(declare-fun b_and!319547 () Bool)

(assert (= b_and!319539 (and (=> t!341210 result!300938) b_and!319547)))

(declare-fun t!341212 () Bool)

(declare-fun tb!247651 () Bool)

(assert (=> (and b!4126368 (= (toChars!9819 (transformation!7304 (h!50075 rules!3756))) (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))))) t!341212) tb!247651))

(declare-fun result!300940 () Bool)

(assert (= result!300940 result!300936))

(assert (=> d!1222957 t!341212))

(declare-fun b_and!319549 () Bool)

(assert (= b_and!319541 (and (=> t!341212 result!300940) b_and!319549)))

(declare-fun t!341214 () Bool)

(declare-fun tb!247653 () Bool)

(assert (=> (and b!4126796 (= (toChars!9819 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))))) t!341214) tb!247653))

(declare-fun result!300942 () Bool)

(assert (= result!300942 result!300936))

(assert (=> d!1222957 t!341214))

(declare-fun b_and!319551 () Bool)

(assert (= b_and!319543 (and (=> t!341214 result!300942) b_and!319551)))

(declare-fun m!4725283 () Bool)

(assert (=> d!1222957 m!4725283))

(declare-fun m!4725285 () Bool)

(assert (=> d!1222957 m!4725285))

(assert (=> b!4126707 d!1222957))

(declare-fun d!1222959 () Bool)

(assert (=> d!1222959 (= (get!14570 lt!1472095) (v!40209 lt!1472095))))

(assert (=> b!4126707 d!1222959))

(declare-fun d!1222961 () Bool)

(assert (=> d!1222961 true))

(declare-fun order!23523 () Int)

(declare-fun lambda!128756 () Int)

(declare-fun dynLambda!19109 (Int Int) Int)

(assert (=> d!1222961 (< (dynLambda!19104 order!23517 (toValue!9960 (transformation!7304 r!4008))) (dynLambda!19109 order!23523 lambda!128756))))

(declare-fun Forall2!1146 (Int) Bool)

(assert (=> d!1222961 (= (equivClasses!3046 (toChars!9819 (transformation!7304 r!4008)) (toValue!9960 (transformation!7304 r!4008))) (Forall2!1146 lambda!128756))))

(declare-fun bs!594863 () Bool)

(assert (= bs!594863 d!1222961))

(declare-fun m!4725287 () Bool)

(assert (=> bs!594863 m!4725287))

(assert (=> b!4126537 d!1222961))

(declare-fun d!1222963 () Bool)

(assert (=> d!1222963 (= (head!8694 p!2912) (h!50073 p!2912))))

(assert (=> b!4126766 d!1222963))

(assert (=> b!4126779 d!1222861))

(assert (=> d!1222829 d!1222925))

(assert (=> d!1222937 d!1222943))

(declare-fun d!1222965 () Bool)

(declare-fun c!708299 () Bool)

(assert (=> d!1222965 (= c!708299 ((_ is Nil!44655) (t!341164 rules!3756)))))

(declare-fun e!2560696 () (InoxSet Rule!14408))

(assert (=> d!1222965 (= (content!6886 (t!341164 rules!3756)) e!2560696)))

(declare-fun b!4126898 () Bool)

(assert (=> b!4126898 (= e!2560696 ((as const (Array Rule!14408 Bool)) false))))

(declare-fun b!4126899 () Bool)

(assert (=> b!4126899 (= e!2560696 ((_ map or) (store ((as const (Array Rule!14408 Bool)) false) (h!50075 (t!341164 rules!3756)) true) (content!6886 (t!341164 (t!341164 rules!3756)))))))

(assert (= (and d!1222965 c!708299) b!4126898))

(assert (= (and d!1222965 (not c!708299)) b!4126899))

(declare-fun m!4725289 () Bool)

(assert (=> b!4126899 m!4725289))

(declare-fun m!4725291 () Bool)

(assert (=> b!4126899 m!4725291))

(assert (=> d!1222867 d!1222965))

(declare-fun d!1222967 () Bool)

(declare-fun lt!1472122 () Int)

(assert (=> d!1222967 (>= lt!1472122 0)))

(declare-fun e!2560697 () Int)

(assert (=> d!1222967 (= lt!1472122 e!2560697)))

(declare-fun c!708300 () Bool)

(assert (=> d!1222967 (= c!708300 ((_ is Nil!44653) (_2!24687 (get!14570 lt!1472042))))))

(assert (=> d!1222967 (= (size!33066 (_2!24687 (get!14570 lt!1472042))) lt!1472122)))

(declare-fun b!4126900 () Bool)

(assert (=> b!4126900 (= e!2560697 0)))

(declare-fun b!4126901 () Bool)

(assert (=> b!4126901 (= e!2560697 (+ 1 (size!33066 (t!341162 (_2!24687 (get!14570 lt!1472042))))))))

(assert (= (and d!1222967 c!708300) b!4126900))

(assert (= (and d!1222967 (not c!708300)) b!4126901))

(declare-fun m!4725293 () Bool)

(assert (=> b!4126901 m!4725293))

(assert (=> b!4126525 d!1222967))

(assert (=> b!4126525 d!1222953))

(declare-fun d!1222969 () Bool)

(declare-fun lt!1472123 () Int)

(assert (=> d!1222969 (>= lt!1472123 0)))

(declare-fun e!2560698 () Int)

(assert (=> d!1222969 (= lt!1472123 e!2560698)))

(declare-fun c!708301 () Bool)

(assert (=> d!1222969 (= c!708301 ((_ is Nil!44653) input!3238))))

(assert (=> d!1222969 (= (size!33066 input!3238) lt!1472123)))

(declare-fun b!4126902 () Bool)

(assert (=> b!4126902 (= e!2560698 0)))

(declare-fun b!4126903 () Bool)

(assert (=> b!4126903 (= e!2560698 (+ 1 (size!33066 (t!341162 input!3238))))))

(assert (= (and d!1222969 c!708301) b!4126902))

(assert (= (and d!1222969 (not c!708301)) b!4126903))

(declare-fun m!4725295 () Bool)

(assert (=> b!4126903 m!4725295))

(assert (=> b!4126525 d!1222969))

(declare-fun d!1222971 () Bool)

(assert (=> d!1222971 (= (isEmpty!26582 (tail!6467 p!2912)) ((_ is Nil!44653) (tail!6467 p!2912)))))

(assert (=> b!4126768 d!1222971))

(declare-fun d!1222973 () Bool)

(assert (=> d!1222973 (= (tail!6467 p!2912) (t!341162 p!2912))))

(assert (=> b!4126768 d!1222973))

(declare-fun d!1222975 () Bool)

(declare-fun e!2560713 () Bool)

(assert (=> d!1222975 e!2560713))

(declare-fun res!1686811 () Bool)

(assert (=> d!1222975 (=> res!1686811 e!2560713)))

(assert (=> d!1222975 (= res!1686811 (isEmpty!26582 (_1!24689 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238)))))))

(declare-fun lt!1472129 () Unit!63989)

(declare-fun choose!25232 (Regex!12209 List!44777) Unit!63989)

(assert (=> d!1222975 (= lt!1472129 (choose!25232 (regex!7304 (h!50075 rules!3756)) input!3238))))

(assert (=> d!1222975 (validRegex!5492 (regex!7304 (h!50075 rules!3756)))))

(assert (=> d!1222975 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1476 (regex!7304 (h!50075 rules!3756)) input!3238) lt!1472129)))

(declare-fun b!4126925 () Bool)

(assert (=> b!4126925 (= e!2560713 (matchR!6040 (regex!7304 (h!50075 rules!3756)) (_1!24689 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238)))))))

(assert (= (and d!1222975 (not res!1686811)) b!4126925))

(assert (=> d!1222975 m!4725015))

(assert (=> d!1222975 m!4725015))

(assert (=> d!1222975 m!4725017))

(assert (=> d!1222975 m!4725019))

(assert (=> d!1222975 m!4725013))

(declare-fun m!4725309 () Bool)

(assert (=> d!1222975 m!4725309))

(assert (=> d!1222975 m!4725017))

(declare-fun m!4725311 () Bool)

(assert (=> d!1222975 m!4725311))

(assert (=> b!4126925 m!4725015))

(assert (=> b!4126925 m!4725017))

(assert (=> b!4126925 m!4725015))

(assert (=> b!4126925 m!4725017))

(assert (=> b!4126925 m!4725019))

(assert (=> b!4126925 m!4725051))

(assert (=> b!4126528 d!1222975))

(assert (=> b!4126528 d!1222969))

(declare-fun d!1222991 () Bool)

(assert (=> d!1222991 (= (isEmpty!26582 (_1!24689 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238)))) ((_ is Nil!44653) (_1!24689 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238)))))))

(assert (=> b!4126528 d!1222991))

(declare-fun bs!594864 () Bool)

(declare-fun d!1222993 () Bool)

(assert (= bs!594864 (and d!1222993 d!1222873)))

(declare-fun lambda!128757 () Int)

(assert (=> bs!594864 (= (and (= (toChars!9819 (transformation!7304 (h!50075 rules!3756))) (toChars!9819 (transformation!7304 r!4008))) (= (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (toValue!9960 (transformation!7304 r!4008)))) (= lambda!128757 lambda!128753))))

(declare-fun b!4126927 () Bool)

(declare-fun e!2560715 () Bool)

(assert (=> b!4126927 (= e!2560715 true)))

(assert (=> d!1222993 e!2560715))

(assert (= d!1222993 b!4126927))

(assert (=> b!4126927 (< (dynLambda!19104 order!23517 (toValue!9960 (transformation!7304 (h!50075 rules!3756)))) (dynLambda!19105 order!23519 lambda!128757))))

(assert (=> b!4126927 (< (dynLambda!19106 order!23521 (toChars!9819 (transformation!7304 (h!50075 rules!3756)))) (dynLambda!19105 order!23519 lambda!128757))))

(assert (=> d!1222993 (= (list!16375 (dynLambda!19107 (toChars!9819 (transformation!7304 (h!50075 rules!3756))) (dynLambda!19103 (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (seqFromList!5421 (_1!24689 lt!1472043))))) (list!16375 (seqFromList!5421 (_1!24689 lt!1472043))))))

(declare-fun lt!1472130 () Unit!63989)

(assert (=> d!1222993 (= lt!1472130 (ForallOf!930 lambda!128757 (seqFromList!5421 (_1!24689 lt!1472043))))))

(assert (=> d!1222993 (= (lemmaSemiInverse!2162 (transformation!7304 (h!50075 rules!3756)) (seqFromList!5421 (_1!24689 lt!1472043))) lt!1472130)))

(declare-fun b_lambda!121137 () Bool)

(assert (=> (not b_lambda!121137) (not d!1222993)))

(declare-fun t!341216 () Bool)

(declare-fun tb!247655 () Bool)

(assert (=> (and b!4126378 (= (toChars!9819 (transformation!7304 rBis!149)) (toChars!9819 (transformation!7304 (h!50075 rules!3756)))) t!341216) tb!247655))

(declare-fun b!4126929 () Bool)

(declare-fun tp!1257573 () Bool)

(declare-fun e!2560716 () Bool)

(assert (=> b!4126929 (= e!2560716 (and (inv!59244 (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 (h!50075 rules!3756))) (dynLambda!19103 (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (seqFromList!5421 (_1!24689 lt!1472043)))))) tp!1257573))))

(declare-fun result!300944 () Bool)

(assert (=> tb!247655 (= result!300944 (and (inv!59245 (dynLambda!19107 (toChars!9819 (transformation!7304 (h!50075 rules!3756))) (dynLambda!19103 (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (seqFromList!5421 (_1!24689 lt!1472043))))) e!2560716))))

(assert (= tb!247655 b!4126929))

(declare-fun m!4725317 () Bool)

(assert (=> b!4126929 m!4725317))

(declare-fun m!4725319 () Bool)

(assert (=> tb!247655 m!4725319))

(assert (=> d!1222993 t!341216))

(declare-fun b_and!319553 () Bool)

(assert (= b_and!319545 (and (=> t!341216 result!300944) b_and!319553)))

(declare-fun t!341218 () Bool)

(declare-fun tb!247657 () Bool)

(assert (=> (and b!4126375 (= (toChars!9819 (transformation!7304 r!4008)) (toChars!9819 (transformation!7304 (h!50075 rules!3756)))) t!341218) tb!247657))

(declare-fun result!300946 () Bool)

(assert (= result!300946 result!300944))

(assert (=> d!1222993 t!341218))

(declare-fun b_and!319555 () Bool)

(assert (= b_and!319547 (and (=> t!341218 result!300946) b_and!319555)))

(declare-fun t!341220 () Bool)

(declare-fun tb!247659 () Bool)

(assert (=> (and b!4126368 (= (toChars!9819 (transformation!7304 (h!50075 rules!3756))) (toChars!9819 (transformation!7304 (h!50075 rules!3756)))) t!341220) tb!247659))

(declare-fun result!300948 () Bool)

(assert (= result!300948 result!300944))

(assert (=> d!1222993 t!341220))

(declare-fun b_and!319557 () Bool)

(assert (= b_and!319549 (and (=> t!341220 result!300948) b_and!319557)))

(declare-fun t!341222 () Bool)

(declare-fun tb!247661 () Bool)

(assert (=> (and b!4126796 (= (toChars!9819 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toChars!9819 (transformation!7304 (h!50075 rules!3756)))) t!341222) tb!247661))

(declare-fun result!300950 () Bool)

(assert (= result!300950 result!300944))

(assert (=> d!1222993 t!341222))

(declare-fun b_and!319559 () Bool)

(assert (= b_and!319551 (and (=> t!341222 result!300950) b_and!319559)))

(declare-fun b_lambda!121139 () Bool)

(assert (=> (not b_lambda!121139) (not d!1222993)))

(declare-fun t!341224 () Bool)

(declare-fun tb!247663 () Bool)

(assert (=> (and b!4126378 (= (toValue!9960 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 (h!50075 rules!3756)))) t!341224) tb!247663))

(declare-fun result!300952 () Bool)

(assert (=> tb!247663 (= result!300952 (inv!21 (dynLambda!19103 (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (seqFromList!5421 (_1!24689 lt!1472043)))))))

(declare-fun m!4725321 () Bool)

(assert (=> tb!247663 m!4725321))

(assert (=> d!1222993 t!341224))

(declare-fun b_and!319561 () Bool)

(assert (= b_and!319523 (and (=> t!341224 result!300952) b_and!319561)))

(declare-fun tb!247665 () Bool)

(declare-fun t!341226 () Bool)

(assert (=> (and b!4126375 (= (toValue!9960 (transformation!7304 r!4008)) (toValue!9960 (transformation!7304 (h!50075 rules!3756)))) t!341226) tb!247665))

(declare-fun result!300954 () Bool)

(assert (= result!300954 result!300952))

(assert (=> d!1222993 t!341226))

(declare-fun b_and!319563 () Bool)

(assert (= b_and!319525 (and (=> t!341226 result!300954) b_and!319563)))

(declare-fun t!341228 () Bool)

(declare-fun tb!247667 () Bool)

(assert (=> (and b!4126368 (= (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (toValue!9960 (transformation!7304 (h!50075 rules!3756)))) t!341228) tb!247667))

(declare-fun result!300956 () Bool)

(assert (= result!300956 result!300952))

(assert (=> d!1222993 t!341228))

(declare-fun b_and!319565 () Bool)

(assert (= b_and!319527 (and (=> t!341228 result!300956) b_and!319565)))

(declare-fun t!341230 () Bool)

(declare-fun tb!247669 () Bool)

(assert (=> (and b!4126796 (= (toValue!9960 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toValue!9960 (transformation!7304 (h!50075 rules!3756)))) t!341230) tb!247669))

(declare-fun result!300958 () Bool)

(assert (= result!300958 result!300952))

(assert (=> d!1222993 t!341230))

(declare-fun b_and!319567 () Bool)

(assert (= b_and!319533 (and (=> t!341230 result!300958) b_and!319567)))

(declare-fun m!4725323 () Bool)

(assert (=> d!1222993 m!4725323))

(declare-fun m!4725325 () Bool)

(assert (=> d!1222993 m!4725325))

(assert (=> d!1222993 m!4725009))

(declare-fun m!4725327 () Bool)

(assert (=> d!1222993 m!4725327))

(assert (=> d!1222993 m!4725009))

(assert (=> d!1222993 m!4725323))

(assert (=> d!1222993 m!4725325))

(declare-fun m!4725329 () Bool)

(assert (=> d!1222993 m!4725329))

(assert (=> d!1222993 m!4725009))

(declare-fun m!4725331 () Bool)

(assert (=> d!1222993 m!4725331))

(assert (=> b!4126528 d!1222993))

(declare-fun b!4126997 () Bool)

(declare-fun e!2560761 () tuple2!43110)

(declare-fun e!2560762 () tuple2!43110)

(assert (=> b!4126997 (= e!2560761 e!2560762)))

(declare-fun c!708332 () Bool)

(assert (=> b!4126997 (= c!708332 (= (size!33066 Nil!44653) (size!33066 input!3238)))))

(declare-fun b!4126998 () Bool)

(declare-fun e!2560760 () Unit!63989)

(declare-fun Unit!63991 () Unit!63989)

(assert (=> b!4126998 (= e!2560760 Unit!63991)))

(declare-fun lt!1472227 () Unit!63989)

(declare-fun call!290192 () Unit!63989)

(assert (=> b!4126998 (= lt!1472227 call!290192)))

(declare-fun call!290198 () Bool)

(assert (=> b!4126998 call!290198))

(declare-fun lt!1472243 () Unit!63989)

(assert (=> b!4126998 (= lt!1472243 lt!1472227)))

(declare-fun lt!1472242 () Unit!63989)

(declare-fun call!290194 () Unit!63989)

(assert (=> b!4126998 (= lt!1472242 call!290194)))

(assert (=> b!4126998 (= input!3238 Nil!44653)))

(declare-fun lt!1472239 () Unit!63989)

(assert (=> b!4126998 (= lt!1472239 lt!1472242)))

(assert (=> b!4126998 false))

(declare-fun bm!290186 () Bool)

(assert (=> bm!290186 (= call!290198 (isPrefix!4239 input!3238 input!3238))))

(declare-fun b!4126999 () Bool)

(declare-fun e!2560763 () tuple2!43110)

(assert (=> b!4126999 (= e!2560763 (tuple2!43111 Nil!44653 input!3238))))

(declare-fun b!4127000 () Bool)

(assert (=> b!4127000 (= e!2560763 (tuple2!43111 Nil!44653 Nil!44653))))

(declare-fun b!4127002 () Bool)

(declare-fun c!708331 () Bool)

(declare-fun call!290197 () Bool)

(assert (=> b!4127002 (= c!708331 call!290197)))

(declare-fun lt!1472251 () Unit!63989)

(declare-fun lt!1472230 () Unit!63989)

(assert (=> b!4127002 (= lt!1472251 lt!1472230)))

(assert (=> b!4127002 (= input!3238 Nil!44653)))

(assert (=> b!4127002 (= lt!1472230 call!290194)))

(declare-fun lt!1472237 () Unit!63989)

(declare-fun lt!1472228 () Unit!63989)

(assert (=> b!4127002 (= lt!1472237 lt!1472228)))

(assert (=> b!4127002 call!290198))

(assert (=> b!4127002 (= lt!1472228 call!290192)))

(assert (=> b!4127002 (= e!2560762 e!2560763)))

(declare-fun bm!290187 () Bool)

(declare-fun call!290196 () List!44777)

(declare-fun lt!1472226 () List!44777)

(declare-fun call!290195 () Regex!12209)

(declare-fun call!290191 () tuple2!43110)

(assert (=> bm!290187 (= call!290191 (findLongestMatchInner!1503 call!290195 lt!1472226 (+ (size!33066 Nil!44653) 1) call!290196 input!3238 (size!33066 input!3238)))))

(declare-fun bm!290188 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!974 (List!44777 List!44777 List!44777) Unit!63989)

(assert (=> bm!290188 (= call!290194 (lemmaIsPrefixSameLengthThenSameList!974 input!3238 Nil!44653 input!3238))))

(declare-fun bm!290189 () Bool)

(declare-fun call!290193 () C!24604)

(assert (=> bm!290189 (= call!290193 (head!8694 input!3238))))

(declare-fun bm!290190 () Bool)

(assert (=> bm!290190 (= call!290197 (nullable!4286 (regex!7304 (h!50075 rules!3756))))))

(declare-fun bm!290191 () Bool)

(assert (=> bm!290191 (= call!290196 (tail!6467 input!3238))))

(declare-fun b!4127003 () Bool)

(declare-fun e!2560756 () tuple2!43110)

(declare-fun lt!1472234 () tuple2!43110)

(assert (=> b!4127003 (= e!2560756 lt!1472234)))

(declare-fun b!4127004 () Bool)

(declare-fun e!2560759 () Bool)

(declare-fun lt!1472238 () tuple2!43110)

(assert (=> b!4127004 (= e!2560759 (>= (size!33066 (_1!24689 lt!1472238)) (size!33066 Nil!44653)))))

(declare-fun b!4127005 () Bool)

(declare-fun e!2560758 () Bool)

(assert (=> b!4127005 (= e!2560758 e!2560759)))

(declare-fun res!1686834 () Bool)

(assert (=> b!4127005 (=> res!1686834 e!2560759)))

(assert (=> b!4127005 (= res!1686834 (isEmpty!26582 (_1!24689 lt!1472238)))))

(declare-fun b!4127006 () Bool)

(declare-fun c!708334 () Bool)

(assert (=> b!4127006 (= c!708334 call!290197)))

(declare-fun lt!1472240 () Unit!63989)

(declare-fun lt!1472246 () Unit!63989)

(assert (=> b!4127006 (= lt!1472240 lt!1472246)))

(declare-fun lt!1472245 () C!24604)

(declare-fun lt!1472252 () List!44777)

(assert (=> b!4127006 (= (++!11568 (++!11568 Nil!44653 (Cons!44653 lt!1472245 Nil!44653)) lt!1472252) input!3238)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1280 (List!44777 C!24604 List!44777 List!44777) Unit!63989)

(assert (=> b!4127006 (= lt!1472246 (lemmaMoveElementToOtherListKeepsConcatEq!1280 Nil!44653 lt!1472245 lt!1472252 input!3238))))

(assert (=> b!4127006 (= lt!1472252 (tail!6467 input!3238))))

(assert (=> b!4127006 (= lt!1472245 (head!8694 input!3238))))

(declare-fun lt!1472229 () Unit!63989)

(declare-fun lt!1472231 () Unit!63989)

(assert (=> b!4127006 (= lt!1472229 lt!1472231)))

(assert (=> b!4127006 (isPrefix!4239 (++!11568 Nil!44653 (Cons!44653 (head!8694 (getSuffix!2568 input!3238 Nil!44653)) Nil!44653)) input!3238)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!662 (List!44777 List!44777) Unit!63989)

(assert (=> b!4127006 (= lt!1472231 (lemmaAddHeadSuffixToPrefixStillPrefix!662 Nil!44653 input!3238))))

(declare-fun lt!1472247 () Unit!63989)

(declare-fun lt!1472244 () Unit!63989)

(assert (=> b!4127006 (= lt!1472247 lt!1472244)))

(assert (=> b!4127006 (= lt!1472244 (lemmaAddHeadSuffixToPrefixStillPrefix!662 Nil!44653 input!3238))))

(assert (=> b!4127006 (= lt!1472226 (++!11568 Nil!44653 (Cons!44653 (head!8694 input!3238) Nil!44653)))))

(declare-fun lt!1472232 () Unit!63989)

(assert (=> b!4127006 (= lt!1472232 e!2560760)))

(declare-fun c!708330 () Bool)

(assert (=> b!4127006 (= c!708330 (= (size!33066 Nil!44653) (size!33066 input!3238)))))

(declare-fun lt!1472250 () Unit!63989)

(declare-fun lt!1472233 () Unit!63989)

(assert (=> b!4127006 (= lt!1472250 lt!1472233)))

(assert (=> b!4127006 (<= (size!33066 Nil!44653) (size!33066 input!3238))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!470 (List!44777 List!44777) Unit!63989)

(assert (=> b!4127006 (= lt!1472233 (lemmaIsPrefixThenSmallerEqSize!470 Nil!44653 input!3238))))

(declare-fun e!2560757 () tuple2!43110)

(assert (=> b!4127006 (= e!2560762 e!2560757)))

(declare-fun b!4127007 () Bool)

(assert (=> b!4127007 (= e!2560761 (tuple2!43111 Nil!44653 input!3238))))

(declare-fun d!1222997 () Bool)

(assert (=> d!1222997 e!2560758))

(declare-fun res!1686835 () Bool)

(assert (=> d!1222997 (=> (not res!1686835) (not e!2560758))))

(assert (=> d!1222997 (= res!1686835 (= (++!11568 (_1!24689 lt!1472238) (_2!24689 lt!1472238)) input!3238))))

(assert (=> d!1222997 (= lt!1472238 e!2560761)))

(declare-fun c!708329 () Bool)

(declare-fun lostCause!1036 (Regex!12209) Bool)

(assert (=> d!1222997 (= c!708329 (lostCause!1036 (regex!7304 (h!50075 rules!3756))))))

(declare-fun lt!1472236 () Unit!63989)

(declare-fun Unit!63992 () Unit!63989)

(assert (=> d!1222997 (= lt!1472236 Unit!63992)))

(assert (=> d!1222997 (= (getSuffix!2568 input!3238 Nil!44653) input!3238)))

(declare-fun lt!1472235 () Unit!63989)

(declare-fun lt!1472241 () Unit!63989)

(assert (=> d!1222997 (= lt!1472235 lt!1472241)))

(declare-fun lt!1472249 () List!44777)

(assert (=> d!1222997 (= input!3238 lt!1472249)))

(declare-fun lemmaSamePrefixThenSameSuffix!2253 (List!44777 List!44777 List!44777 List!44777 List!44777) Unit!63989)

(assert (=> d!1222997 (= lt!1472241 (lemmaSamePrefixThenSameSuffix!2253 Nil!44653 input!3238 Nil!44653 lt!1472249 input!3238))))

(assert (=> d!1222997 (= lt!1472249 (getSuffix!2568 input!3238 Nil!44653))))

(declare-fun lt!1472225 () Unit!63989)

(declare-fun lt!1472248 () Unit!63989)

(assert (=> d!1222997 (= lt!1472225 lt!1472248)))

(assert (=> d!1222997 (isPrefix!4239 Nil!44653 (++!11568 Nil!44653 input!3238))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2931 (List!44777 List!44777) Unit!63989)

(assert (=> d!1222997 (= lt!1472248 (lemmaConcatTwoListThenFirstIsPrefix!2931 Nil!44653 input!3238))))

(assert (=> d!1222997 (validRegex!5492 (regex!7304 (h!50075 rules!3756)))))

(assert (=> d!1222997 (= (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238)) lt!1472238)))

(declare-fun b!4127001 () Bool)

(declare-fun Unit!63993 () Unit!63989)

(assert (=> b!4127001 (= e!2560760 Unit!63993)))

(declare-fun bm!290192 () Bool)

(assert (=> bm!290192 (= call!290192 (lemmaIsPrefixRefl!2747 input!3238 input!3238))))

(declare-fun b!4127008 () Bool)

(assert (=> b!4127008 (= e!2560757 e!2560756)))

(assert (=> b!4127008 (= lt!1472234 call!290191)))

(declare-fun c!708333 () Bool)

(assert (=> b!4127008 (= c!708333 (isEmpty!26582 (_1!24689 lt!1472234)))))

(declare-fun b!4127009 () Bool)

(assert (=> b!4127009 (= e!2560757 call!290191)))

(declare-fun b!4127010 () Bool)

(assert (=> b!4127010 (= e!2560756 (tuple2!43111 Nil!44653 input!3238))))

(declare-fun bm!290193 () Bool)

(assert (=> bm!290193 (= call!290195 (derivativeStep!3681 (regex!7304 (h!50075 rules!3756)) call!290193))))

(assert (= (and d!1222997 c!708329) b!4127007))

(assert (= (and d!1222997 (not c!708329)) b!4126997))

(assert (= (and b!4126997 c!708332) b!4127002))

(assert (= (and b!4126997 (not c!708332)) b!4127006))

(assert (= (and b!4127002 c!708331) b!4127000))

(assert (= (and b!4127002 (not c!708331)) b!4126999))

(assert (= (and b!4127006 c!708330) b!4126998))

(assert (= (and b!4127006 (not c!708330)) b!4127001))

(assert (= (and b!4127006 c!708334) b!4127008))

(assert (= (and b!4127006 (not c!708334)) b!4127009))

(assert (= (and b!4127008 c!708333) b!4127010))

(assert (= (and b!4127008 (not c!708333)) b!4127003))

(assert (= (or b!4127008 b!4127009) bm!290191))

(assert (= (or b!4127008 b!4127009) bm!290189))

(assert (= (or b!4127008 b!4127009) bm!290193))

(assert (= (or b!4127008 b!4127009) bm!290187))

(assert (= (or b!4127002 b!4126998) bm!290188))

(assert (= (or b!4127002 b!4126998) bm!290186))

(assert (= (or b!4127002 b!4126998) bm!290192))

(assert (= (or b!4127002 b!4127006) bm!290190))

(assert (= (and d!1222997 res!1686835) b!4127005))

(assert (= (and b!4127005 (not res!1686834)) b!4127004))

(assert (=> bm!290192 m!4725177))

(assert (=> bm!290191 m!4725075))

(assert (=> bm!290187 m!4725017))

(declare-fun m!4725401 () Bool)

(assert (=> bm!290187 m!4725401))

(declare-fun m!4725403 () Bool)

(assert (=> b!4127005 m!4725403))

(declare-fun m!4725405 () Bool)

(assert (=> bm!290193 m!4725405))

(declare-fun m!4725407 () Bool)

(assert (=> b!4127008 m!4725407))

(assert (=> bm!290186 m!4725175))

(assert (=> b!4127006 m!4725199))

(declare-fun m!4725409 () Bool)

(assert (=> b!4127006 m!4725409))

(declare-fun m!4725411 () Bool)

(assert (=> b!4127006 m!4725411))

(declare-fun m!4725413 () Bool)

(assert (=> b!4127006 m!4725413))

(declare-fun m!4725415 () Bool)

(assert (=> b!4127006 m!4725415))

(declare-fun m!4725417 () Bool)

(assert (=> b!4127006 m!4725417))

(assert (=> b!4127006 m!4725075))

(assert (=> b!4127006 m!4725015))

(assert (=> b!4127006 m!4725415))

(declare-fun m!4725419 () Bool)

(assert (=> b!4127006 m!4725419))

(assert (=> b!4127006 m!4725409))

(declare-fun m!4725421 () Bool)

(assert (=> b!4127006 m!4725421))

(declare-fun m!4725423 () Bool)

(assert (=> b!4127006 m!4725423))

(declare-fun m!4725425 () Bool)

(assert (=> b!4127006 m!4725425))

(declare-fun m!4725427 () Bool)

(assert (=> b!4127006 m!4725427))

(assert (=> b!4127006 m!4725425))

(assert (=> b!4127006 m!4725017))

(declare-fun m!4725429 () Bool)

(assert (=> bm!290188 m!4725429))

(declare-fun m!4725431 () Bool)

(assert (=> bm!290190 m!4725431))

(assert (=> bm!290189 m!4725199))

(assert (=> d!1222997 m!4725311))

(assert (=> d!1222997 m!4725415))

(declare-fun m!4725433 () Bool)

(assert (=> d!1222997 m!4725433))

(declare-fun m!4725435 () Bool)

(assert (=> d!1222997 m!4725435))

(declare-fun m!4725437 () Bool)

(assert (=> d!1222997 m!4725437))

(declare-fun m!4725439 () Bool)

(assert (=> d!1222997 m!4725439))

(declare-fun m!4725441 () Bool)

(assert (=> d!1222997 m!4725441))

(declare-fun m!4725443 () Bool)

(assert (=> d!1222997 m!4725443))

(assert (=> d!1222997 m!4725433))

(declare-fun m!4725445 () Bool)

(assert (=> b!4127004 m!4725445))

(assert (=> b!4127004 m!4725015))

(assert (=> b!4126528 d!1222997))

(declare-fun d!1223039 () Bool)

(assert (=> d!1223039 (= (seqFromList!5421 (_1!24689 lt!1472043)) (fromListB!2480 (_1!24689 lt!1472043)))))

(declare-fun bs!594881 () Bool)

(assert (= bs!594881 d!1223039))

(declare-fun m!4725447 () Bool)

(assert (=> bs!594881 m!4725447))

(assert (=> b!4126528 d!1223039))

(declare-fun d!1223041 () Bool)

(declare-fun lt!1472253 () Int)

(assert (=> d!1223041 (>= lt!1472253 0)))

(declare-fun e!2560764 () Int)

(assert (=> d!1223041 (= lt!1472253 e!2560764)))

(declare-fun c!708335 () Bool)

(assert (=> d!1223041 (= c!708335 ((_ is Nil!44653) Nil!44653))))

(assert (=> d!1223041 (= (size!33066 Nil!44653) lt!1472253)))

(declare-fun b!4127011 () Bool)

(assert (=> b!4127011 (= e!2560764 0)))

(declare-fun b!4127012 () Bool)

(assert (=> b!4127012 (= e!2560764 (+ 1 (size!33066 (t!341162 Nil!44653))))))

(assert (= (and d!1223041 c!708335) b!4127011))

(assert (= (and d!1223041 (not c!708335)) b!4127012))

(declare-fun m!4725449 () Bool)

(assert (=> b!4127012 m!4725449))

(assert (=> b!4126528 d!1223041))

(declare-fun d!1223043 () Bool)

(assert (=> d!1223043 (= (apply!10377 (transformation!7304 (h!50075 rules!3756)) (seqFromList!5421 (_1!24689 lt!1472043))) (dynLambda!19103 (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (seqFromList!5421 (_1!24689 lt!1472043))))))

(declare-fun b_lambda!121143 () Bool)

(assert (=> (not b_lambda!121143) (not d!1223043)))

(assert (=> d!1223043 t!341224))

(declare-fun b_and!319577 () Bool)

(assert (= b_and!319561 (and (=> t!341224 result!300952) b_and!319577)))

(assert (=> d!1223043 t!341226))

(declare-fun b_and!319579 () Bool)

(assert (= b_and!319563 (and (=> t!341226 result!300954) b_and!319579)))

(assert (=> d!1223043 t!341228))

(declare-fun b_and!319581 () Bool)

(assert (= b_and!319565 (and (=> t!341228 result!300956) b_and!319581)))

(assert (=> d!1223043 t!341230))

(declare-fun b_and!319583 () Bool)

(assert (= b_and!319567 (and (=> t!341230 result!300958) b_and!319583)))

(assert (=> d!1223043 m!4725009))

(assert (=> d!1223043 m!4725323))

(assert (=> b!4126528 d!1223043))

(declare-fun d!1223045 () Bool)

(declare-fun lt!1472256 () Int)

(assert (=> d!1223045 (= lt!1472256 (size!33066 (list!16375 (seqFromList!5421 (_1!24689 lt!1472043)))))))

(declare-fun size!33069 (Conc!13515) Int)

(assert (=> d!1223045 (= lt!1472256 (size!33069 (c!708222 (seqFromList!5421 (_1!24689 lt!1472043)))))))

(assert (=> d!1223045 (= (size!33068 (seqFromList!5421 (_1!24689 lt!1472043))) lt!1472256)))

(declare-fun bs!594882 () Bool)

(assert (= bs!594882 d!1223045))

(assert (=> bs!594882 m!4725009))

(assert (=> bs!594882 m!4725331))

(assert (=> bs!594882 m!4725331))

(declare-fun m!4725451 () Bool)

(assert (=> bs!594882 m!4725451))

(declare-fun m!4725453 () Bool)

(assert (=> bs!594882 m!4725453))

(assert (=> b!4126528 d!1223045))

(declare-fun bs!594883 () Bool)

(declare-fun d!1223047 () Bool)

(assert (= bs!594883 (and d!1223047 d!1222873)))

(declare-fun lambda!128772 () Int)

(assert (=> bs!594883 (= lambda!128772 lambda!128753)))

(declare-fun bs!594884 () Bool)

(assert (= bs!594884 (and d!1223047 d!1222993)))

(assert (=> bs!594884 (= (and (= (toChars!9819 (transformation!7304 r!4008)) (toChars!9819 (transformation!7304 (h!50075 rules!3756)))) (= (toValue!9960 (transformation!7304 r!4008)) (toValue!9960 (transformation!7304 (h!50075 rules!3756))))) (= lambda!128772 lambda!128757))))

(assert (=> d!1223047 true))

(assert (=> d!1223047 (< (dynLambda!19106 order!23521 (toChars!9819 (transformation!7304 r!4008))) (dynLambda!19105 order!23519 lambda!128772))))

(assert (=> d!1223047 true))

(assert (=> d!1223047 (< (dynLambda!19104 order!23517 (toValue!9960 (transformation!7304 r!4008))) (dynLambda!19105 order!23519 lambda!128772))))

(declare-fun Forall!1548 (Int) Bool)

(assert (=> d!1223047 (= (semiInverseModEq!3147 (toChars!9819 (transformation!7304 r!4008)) (toValue!9960 (transformation!7304 r!4008))) (Forall!1548 lambda!128772))))

(declare-fun bs!594885 () Bool)

(assert (= bs!594885 d!1223047))

(declare-fun m!4725455 () Bool)

(assert (=> bs!594885 m!4725455))

(assert (=> d!1222865 d!1223047))

(declare-fun d!1223049 () Bool)

(assert (=> d!1223049 (= (inv!59239 (tag!8164 (h!50075 (t!341164 rules!3756)))) (= (mod (str.len (value!228717 (tag!8164 (h!50075 (t!341164 rules!3756))))) 2) 0))))

(assert (=> b!4126795 d!1223049))

(declare-fun d!1223051 () Bool)

(declare-fun res!1686836 () Bool)

(declare-fun e!2560765 () Bool)

(assert (=> d!1223051 (=> (not res!1686836) (not e!2560765))))

(assert (=> d!1223051 (= res!1686836 (semiInverseModEq!3147 (toChars!9819 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toValue!9960 (transformation!7304 (h!50075 (t!341164 rules!3756))))))))

(assert (=> d!1223051 (= (inv!59241 (transformation!7304 (h!50075 (t!341164 rules!3756)))) e!2560765)))

(declare-fun b!4127017 () Bool)

(assert (=> b!4127017 (= e!2560765 (equivClasses!3046 (toChars!9819 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toValue!9960 (transformation!7304 (h!50075 (t!341164 rules!3756))))))))

(assert (= (and d!1223051 res!1686836) b!4127017))

(declare-fun m!4725457 () Bool)

(assert (=> d!1223051 m!4725457))

(declare-fun m!4725459 () Bool)

(assert (=> b!4127017 m!4725459))

(assert (=> b!4126795 d!1223051))

(declare-fun b!4127018 () Bool)

(declare-fun e!2560771 () Bool)

(declare-fun e!2560768 () Bool)

(assert (=> b!4127018 (= e!2560771 e!2560768)))

(declare-fun res!1686837 () Bool)

(assert (=> b!4127018 (=> (not res!1686837) (not e!2560768))))

(declare-fun lt!1472257 () Bool)

(assert (=> b!4127018 (= res!1686837 (not lt!1472257))))

(declare-fun b!4127019 () Bool)

(declare-fun res!1686839 () Bool)

(assert (=> b!4127019 (=> res!1686839 e!2560771)))

(assert (=> b!4127019 (= res!1686839 (not ((_ is ElementMatch!12209) (derivativeStep!3681 (regex!7304 r!4008) (head!8694 p!2912)))))))

(declare-fun e!2560766 () Bool)

(assert (=> b!4127019 (= e!2560766 e!2560771)))

(declare-fun b!4127020 () Bool)

(declare-fun e!2560767 () Bool)

(assert (=> b!4127020 (= e!2560768 e!2560767)))

(declare-fun res!1686840 () Bool)

(assert (=> b!4127020 (=> res!1686840 e!2560767)))

(declare-fun call!290199 () Bool)

(assert (=> b!4127020 (= res!1686840 call!290199)))

(declare-fun b!4127021 () Bool)

(declare-fun res!1686844 () Bool)

(assert (=> b!4127021 (=> res!1686844 e!2560767)))

(assert (=> b!4127021 (= res!1686844 (not (isEmpty!26582 (tail!6467 (tail!6467 p!2912)))))))

(declare-fun b!4127022 () Bool)

(assert (=> b!4127022 (= e!2560767 (not (= (head!8694 (tail!6467 p!2912)) (c!708223 (derivativeStep!3681 (regex!7304 r!4008) (head!8694 p!2912))))))))

(declare-fun b!4127023 () Bool)

(assert (=> b!4127023 (= e!2560766 (not lt!1472257))))

(declare-fun b!4127024 () Bool)

(declare-fun res!1686842 () Bool)

(declare-fun e!2560772 () Bool)

(assert (=> b!4127024 (=> (not res!1686842) (not e!2560772))))

(assert (=> b!4127024 (= res!1686842 (isEmpty!26582 (tail!6467 (tail!6467 p!2912))))))

(declare-fun bm!290194 () Bool)

(assert (=> bm!290194 (= call!290199 (isEmpty!26582 (tail!6467 p!2912)))))

(declare-fun d!1223053 () Bool)

(declare-fun e!2560770 () Bool)

(assert (=> d!1223053 e!2560770))

(declare-fun c!708338 () Bool)

(assert (=> d!1223053 (= c!708338 ((_ is EmptyExpr!12209) (derivativeStep!3681 (regex!7304 r!4008) (head!8694 p!2912))))))

(declare-fun e!2560769 () Bool)

(assert (=> d!1223053 (= lt!1472257 e!2560769)))

(declare-fun c!708336 () Bool)

(assert (=> d!1223053 (= c!708336 (isEmpty!26582 (tail!6467 p!2912)))))

(assert (=> d!1223053 (validRegex!5492 (derivativeStep!3681 (regex!7304 r!4008) (head!8694 p!2912)))))

(assert (=> d!1223053 (= (matchR!6040 (derivativeStep!3681 (regex!7304 r!4008) (head!8694 p!2912)) (tail!6467 p!2912)) lt!1472257)))

(declare-fun b!4127025 () Bool)

(assert (=> b!4127025 (= e!2560769 (nullable!4286 (derivativeStep!3681 (regex!7304 r!4008) (head!8694 p!2912))))))

(declare-fun b!4127026 () Bool)

(assert (=> b!4127026 (= e!2560770 e!2560766)))

(declare-fun c!708337 () Bool)

(assert (=> b!4127026 (= c!708337 ((_ is EmptyLang!12209) (derivativeStep!3681 (regex!7304 r!4008) (head!8694 p!2912))))))

(declare-fun b!4127027 () Bool)

(assert (=> b!4127027 (= e!2560770 (= lt!1472257 call!290199))))

(declare-fun b!4127028 () Bool)

(assert (=> b!4127028 (= e!2560772 (= (head!8694 (tail!6467 p!2912)) (c!708223 (derivativeStep!3681 (regex!7304 r!4008) (head!8694 p!2912)))))))

(declare-fun b!4127029 () Bool)

(declare-fun res!1686841 () Bool)

(assert (=> b!4127029 (=> (not res!1686841) (not e!2560772))))

(assert (=> b!4127029 (= res!1686841 (not call!290199))))

(declare-fun b!4127030 () Bool)

(assert (=> b!4127030 (= e!2560769 (matchR!6040 (derivativeStep!3681 (derivativeStep!3681 (regex!7304 r!4008) (head!8694 p!2912)) (head!8694 (tail!6467 p!2912))) (tail!6467 (tail!6467 p!2912))))))

(declare-fun b!4127031 () Bool)

(declare-fun res!1686838 () Bool)

(assert (=> b!4127031 (=> res!1686838 e!2560771)))

(assert (=> b!4127031 (= res!1686838 e!2560772)))

(declare-fun res!1686843 () Bool)

(assert (=> b!4127031 (=> (not res!1686843) (not e!2560772))))

(assert (=> b!4127031 (= res!1686843 lt!1472257)))

(assert (= (and d!1223053 c!708336) b!4127025))

(assert (= (and d!1223053 (not c!708336)) b!4127030))

(assert (= (and d!1223053 c!708338) b!4127027))

(assert (= (and d!1223053 (not c!708338)) b!4127026))

(assert (= (and b!4127026 c!708337) b!4127023))

(assert (= (and b!4127026 (not c!708337)) b!4127019))

(assert (= (and b!4127019 (not res!1686839)) b!4127031))

(assert (= (and b!4127031 res!1686843) b!4127029))

(assert (= (and b!4127029 res!1686841) b!4127024))

(assert (= (and b!4127024 res!1686842) b!4127028))

(assert (= (and b!4127031 (not res!1686838)) b!4127018))

(assert (= (and b!4127018 res!1686837) b!4127020))

(assert (= (and b!4127020 (not res!1686840)) b!4127021))

(assert (= (and b!4127021 (not res!1686844)) b!4127022))

(assert (= (or b!4127027 b!4127020 b!4127029) bm!290194))

(assert (=> b!4127025 m!4725221))

(declare-fun m!4725461 () Bool)

(assert (=> b!4127025 m!4725461))

(assert (=> b!4127024 m!4725201))

(declare-fun m!4725463 () Bool)

(assert (=> b!4127024 m!4725463))

(assert (=> b!4127024 m!4725463))

(declare-fun m!4725465 () Bool)

(assert (=> b!4127024 m!4725465))

(assert (=> b!4127030 m!4725201))

(declare-fun m!4725467 () Bool)

(assert (=> b!4127030 m!4725467))

(assert (=> b!4127030 m!4725221))

(assert (=> b!4127030 m!4725467))

(declare-fun m!4725469 () Bool)

(assert (=> b!4127030 m!4725469))

(assert (=> b!4127030 m!4725201))

(assert (=> b!4127030 m!4725463))

(assert (=> b!4127030 m!4725469))

(assert (=> b!4127030 m!4725463))

(declare-fun m!4725471 () Bool)

(assert (=> b!4127030 m!4725471))

(assert (=> bm!290194 m!4725201))

(assert (=> bm!290194 m!4725219))

(assert (=> b!4127022 m!4725201))

(assert (=> b!4127022 m!4725467))

(assert (=> b!4127021 m!4725201))

(assert (=> b!4127021 m!4725463))

(assert (=> b!4127021 m!4725463))

(assert (=> b!4127021 m!4725465))

(assert (=> d!1223053 m!4725201))

(assert (=> d!1223053 m!4725219))

(assert (=> d!1223053 m!4725221))

(declare-fun m!4725473 () Bool)

(assert (=> d!1223053 m!4725473))

(assert (=> b!4127028 m!4725201))

(assert (=> b!4127028 m!4725467))

(assert (=> b!4126774 d!1223053))

(declare-fun b!4127052 () Bool)

(declare-fun e!2560783 () Regex!12209)

(declare-fun e!2560784 () Regex!12209)

(assert (=> b!4127052 (= e!2560783 e!2560784)))

(declare-fun c!708350 () Bool)

(assert (=> b!4127052 (= c!708350 ((_ is Star!12209) (regex!7304 r!4008)))))

(declare-fun b!4127053 () Bool)

(declare-fun e!2560785 () Regex!12209)

(assert (=> b!4127053 (= e!2560785 (ite (= (head!8694 p!2912) (c!708223 (regex!7304 r!4008))) EmptyExpr!12209 EmptyLang!12209))))

(declare-fun b!4127055 () Bool)

(declare-fun e!2560786 () Regex!12209)

(assert (=> b!4127055 (= e!2560786 e!2560785)))

(declare-fun c!708351 () Bool)

(assert (=> b!4127055 (= c!708351 ((_ is ElementMatch!12209) (regex!7304 r!4008)))))

(declare-fun b!4127056 () Bool)

(declare-fun call!290209 () Regex!12209)

(declare-fun call!290208 () Regex!12209)

(assert (=> b!4127056 (= e!2560783 (Union!12209 call!290209 call!290208))))

(declare-fun c!708349 () Bool)

(declare-fun bm!290203 () Bool)

(assert (=> bm!290203 (= call!290208 (derivativeStep!3681 (ite c!708349 (regTwo!24931 (regex!7304 r!4008)) (ite c!708350 (reg!12538 (regex!7304 r!4008)) (regOne!24930 (regex!7304 r!4008)))) (head!8694 p!2912)))))

(declare-fun b!4127057 () Bool)

(declare-fun call!290210 () Regex!12209)

(assert (=> b!4127057 (= e!2560784 (Concat!19744 call!290210 (regex!7304 r!4008)))))

(declare-fun b!4127058 () Bool)

(assert (=> b!4127058 (= c!708349 ((_ is Union!12209) (regex!7304 r!4008)))))

(assert (=> b!4127058 (= e!2560785 e!2560783)))

(declare-fun bm!290204 () Bool)

(assert (=> bm!290204 (= call!290209 (derivativeStep!3681 (ite c!708349 (regOne!24931 (regex!7304 r!4008)) (regTwo!24930 (regex!7304 r!4008))) (head!8694 p!2912)))))

(declare-fun b!4127059 () Bool)

(declare-fun c!708352 () Bool)

(assert (=> b!4127059 (= c!708352 (nullable!4286 (regOne!24930 (regex!7304 r!4008))))))

(declare-fun e!2560787 () Regex!12209)

(assert (=> b!4127059 (= e!2560784 e!2560787)))

(declare-fun d!1223055 () Bool)

(declare-fun lt!1472260 () Regex!12209)

(assert (=> d!1223055 (validRegex!5492 lt!1472260)))

(assert (=> d!1223055 (= lt!1472260 e!2560786)))

(declare-fun c!708353 () Bool)

(assert (=> d!1223055 (= c!708353 (or ((_ is EmptyExpr!12209) (regex!7304 r!4008)) ((_ is EmptyLang!12209) (regex!7304 r!4008))))))

(assert (=> d!1223055 (validRegex!5492 (regex!7304 r!4008))))

(assert (=> d!1223055 (= (derivativeStep!3681 (regex!7304 r!4008) (head!8694 p!2912)) lt!1472260)))

(declare-fun b!4127054 () Bool)

(declare-fun call!290211 () Regex!12209)

(assert (=> b!4127054 (= e!2560787 (Union!12209 (Concat!19744 call!290211 (regTwo!24930 (regex!7304 r!4008))) EmptyLang!12209))))

(declare-fun b!4127060 () Bool)

(assert (=> b!4127060 (= e!2560787 (Union!12209 (Concat!19744 call!290211 (regTwo!24930 (regex!7304 r!4008))) call!290209))))

(declare-fun b!4127061 () Bool)

(assert (=> b!4127061 (= e!2560786 EmptyLang!12209)))

(declare-fun bm!290205 () Bool)

(assert (=> bm!290205 (= call!290211 call!290210)))

(declare-fun bm!290206 () Bool)

(assert (=> bm!290206 (= call!290210 call!290208)))

(assert (= (and d!1223055 c!708353) b!4127061))

(assert (= (and d!1223055 (not c!708353)) b!4127055))

(assert (= (and b!4127055 c!708351) b!4127053))

(assert (= (and b!4127055 (not c!708351)) b!4127058))

(assert (= (and b!4127058 c!708349) b!4127056))

(assert (= (and b!4127058 (not c!708349)) b!4127052))

(assert (= (and b!4127052 c!708350) b!4127057))

(assert (= (and b!4127052 (not c!708350)) b!4127059))

(assert (= (and b!4127059 c!708352) b!4127060))

(assert (= (and b!4127059 (not c!708352)) b!4127054))

(assert (= (or b!4127060 b!4127054) bm!290205))

(assert (= (or b!4127057 bm!290205) bm!290206))

(assert (= (or b!4127056 b!4127060) bm!290204))

(assert (= (or b!4127056 bm!290206) bm!290203))

(assert (=> bm!290203 m!4725197))

(declare-fun m!4725475 () Bool)

(assert (=> bm!290203 m!4725475))

(assert (=> bm!290204 m!4725197))

(declare-fun m!4725477 () Bool)

(assert (=> bm!290204 m!4725477))

(declare-fun m!4725479 () Bool)

(assert (=> b!4127059 m!4725479))

(declare-fun m!4725481 () Bool)

(assert (=> d!1223055 m!4725481))

(assert (=> d!1223055 m!4725225))

(assert (=> b!4126774 d!1223055))

(assert (=> b!4126774 d!1222963))

(assert (=> b!4126774 d!1222973))

(assert (=> b!4126772 d!1222963))

(declare-fun b!4127062 () Bool)

(declare-fun e!2560789 () Bool)

(declare-fun call!290212 () Bool)

(assert (=> b!4127062 (= e!2560789 call!290212)))

(declare-fun b!4127063 () Bool)

(declare-fun e!2560788 () Bool)

(declare-fun call!290213 () Bool)

(assert (=> b!4127063 (= e!2560788 call!290213)))

(declare-fun c!708354 () Bool)

(declare-fun c!708355 () Bool)

(declare-fun bm!290207 () Bool)

(assert (=> bm!290207 (= call!290212 (validRegex!5492 (ite c!708355 (reg!12538 (regex!7304 rBis!149)) (ite c!708354 (regTwo!24931 (regex!7304 rBis!149)) (regTwo!24930 (regex!7304 rBis!149))))))))

(declare-fun b!4127064 () Bool)

(declare-fun res!1686847 () Bool)

(declare-fun e!2560794 () Bool)

(assert (=> b!4127064 (=> (not res!1686847) (not e!2560794))))

(declare-fun call!290214 () Bool)

(assert (=> b!4127064 (= res!1686847 call!290214)))

(declare-fun e!2560792 () Bool)

(assert (=> b!4127064 (= e!2560792 e!2560794)))

(declare-fun b!4127065 () Bool)

(declare-fun e!2560791 () Bool)

(assert (=> b!4127065 (= e!2560791 e!2560789)))

(declare-fun res!1686845 () Bool)

(assert (=> b!4127065 (= res!1686845 (not (nullable!4286 (reg!12538 (regex!7304 rBis!149)))))))

(assert (=> b!4127065 (=> (not res!1686845) (not e!2560789))))

(declare-fun d!1223057 () Bool)

(declare-fun res!1686846 () Bool)

(declare-fun e!2560793 () Bool)

(assert (=> d!1223057 (=> res!1686846 e!2560793)))

(assert (=> d!1223057 (= res!1686846 ((_ is ElementMatch!12209) (regex!7304 rBis!149)))))

(assert (=> d!1223057 (= (validRegex!5492 (regex!7304 rBis!149)) e!2560793)))

(declare-fun b!4127066 () Bool)

(declare-fun res!1686849 () Bool)

(declare-fun e!2560790 () Bool)

(assert (=> b!4127066 (=> res!1686849 e!2560790)))

(assert (=> b!4127066 (= res!1686849 (not ((_ is Concat!19744) (regex!7304 rBis!149))))))

(assert (=> b!4127066 (= e!2560792 e!2560790)))

(declare-fun b!4127067 () Bool)

(assert (=> b!4127067 (= e!2560793 e!2560791)))

(assert (=> b!4127067 (= c!708355 ((_ is Star!12209) (regex!7304 rBis!149)))))

(declare-fun b!4127068 () Bool)

(assert (=> b!4127068 (= e!2560791 e!2560792)))

(assert (=> b!4127068 (= c!708354 ((_ is Union!12209) (regex!7304 rBis!149)))))

(declare-fun b!4127069 () Bool)

(assert (=> b!4127069 (= e!2560790 e!2560788)))

(declare-fun res!1686848 () Bool)

(assert (=> b!4127069 (=> (not res!1686848) (not e!2560788))))

(assert (=> b!4127069 (= res!1686848 call!290214)))

(declare-fun bm!290208 () Bool)

(assert (=> bm!290208 (= call!290214 (validRegex!5492 (ite c!708354 (regOne!24931 (regex!7304 rBis!149)) (regOne!24930 (regex!7304 rBis!149)))))))

(declare-fun b!4127070 () Bool)

(assert (=> b!4127070 (= e!2560794 call!290213)))

(declare-fun bm!290209 () Bool)

(assert (=> bm!290209 (= call!290213 call!290212)))

(assert (= (and d!1223057 (not res!1686846)) b!4127067))

(assert (= (and b!4127067 c!708355) b!4127065))

(assert (= (and b!4127067 (not c!708355)) b!4127068))

(assert (= (and b!4127065 res!1686845) b!4127062))

(assert (= (and b!4127068 c!708354) b!4127064))

(assert (= (and b!4127068 (not c!708354)) b!4127066))

(assert (= (and b!4127064 res!1686847) b!4127070))

(assert (= (and b!4127066 (not res!1686849)) b!4127069))

(assert (= (and b!4127069 res!1686848) b!4127063))

(assert (= (or b!4127064 b!4127069) bm!290208))

(assert (= (or b!4127070 b!4127063) bm!290209))

(assert (= (or b!4127062 bm!290209) bm!290207))

(declare-fun m!4725483 () Bool)

(assert (=> bm!290207 m!4725483))

(declare-fun m!4725485 () Bool)

(assert (=> b!4127065 m!4725485))

(declare-fun m!4725487 () Bool)

(assert (=> bm!290208 m!4725487))

(assert (=> d!1222917 d!1223057))

(assert (=> d!1222861 d!1222965))

(assert (=> bm!290148 d!1222845))

(declare-fun d!1223059 () Bool)

(declare-fun lt!1472261 () Bool)

(assert (=> d!1223059 (= lt!1472261 (select (content!6886 (t!341164 (t!341164 rules!3756))) rBis!149))))

(declare-fun e!2560795 () Bool)

(assert (=> d!1223059 (= lt!1472261 e!2560795)))

(declare-fun res!1686850 () Bool)

(assert (=> d!1223059 (=> (not res!1686850) (not e!2560795))))

(assert (=> d!1223059 (= res!1686850 ((_ is Cons!44655) (t!341164 (t!341164 rules!3756))))))

(assert (=> d!1223059 (= (contains!8978 (t!341164 (t!341164 rules!3756)) rBis!149) lt!1472261)))

(declare-fun b!4127071 () Bool)

(declare-fun e!2560796 () Bool)

(assert (=> b!4127071 (= e!2560795 e!2560796)))

(declare-fun res!1686851 () Bool)

(assert (=> b!4127071 (=> res!1686851 e!2560796)))

(assert (=> b!4127071 (= res!1686851 (= (h!50075 (t!341164 (t!341164 rules!3756))) rBis!149))))

(declare-fun b!4127072 () Bool)

(assert (=> b!4127072 (= e!2560796 (contains!8978 (t!341164 (t!341164 (t!341164 rules!3756))) rBis!149))))

(assert (= (and d!1223059 res!1686850) b!4127071))

(assert (= (and b!4127071 (not res!1686851)) b!4127072))

(assert (=> d!1223059 m!4725291))

(declare-fun m!4725489 () Bool)

(assert (=> d!1223059 m!4725489))

(declare-fun m!4725491 () Bool)

(assert (=> b!4127072 m!4725491))

(assert (=> b!4126539 d!1223059))

(declare-fun d!1223061 () Bool)

(declare-fun lt!1472262 () List!44777)

(assert (=> d!1223061 (= (++!11568 (t!341162 p!2912) lt!1472262) (tail!6467 input!3238))))

(declare-fun e!2560797 () List!44777)

(assert (=> d!1223061 (= lt!1472262 e!2560797)))

(declare-fun c!708356 () Bool)

(assert (=> d!1223061 (= c!708356 ((_ is Cons!44653) (t!341162 p!2912)))))

(assert (=> d!1223061 (>= (size!33066 (tail!6467 input!3238)) (size!33066 (t!341162 p!2912)))))

(assert (=> d!1223061 (= (getSuffix!2568 (tail!6467 input!3238) (t!341162 p!2912)) lt!1472262)))

(declare-fun b!4127073 () Bool)

(assert (=> b!4127073 (= e!2560797 (getSuffix!2568 (tail!6467 (tail!6467 input!3238)) (t!341162 (t!341162 p!2912))))))

(declare-fun b!4127074 () Bool)

(assert (=> b!4127074 (= e!2560797 (tail!6467 input!3238))))

(assert (= (and d!1223061 c!708356) b!4127073))

(assert (= (and d!1223061 (not c!708356)) b!4127074))

(declare-fun m!4725493 () Bool)

(assert (=> d!1223061 m!4725493))

(assert (=> d!1223061 m!4725075))

(declare-fun m!4725495 () Bool)

(assert (=> d!1223061 m!4725495))

(assert (=> d!1223061 m!4725195))

(assert (=> b!4127073 m!4725075))

(declare-fun m!4725497 () Bool)

(assert (=> b!4127073 m!4725497))

(assert (=> b!4127073 m!4725497))

(declare-fun m!4725499 () Bool)

(assert (=> b!4127073 m!4725499))

(assert (=> b!4126564 d!1223061))

(declare-fun d!1223063 () Bool)

(assert (=> d!1223063 (= (tail!6467 input!3238) (t!341162 input!3238))))

(assert (=> b!4126564 d!1223063))

(declare-fun bs!594886 () Bool)

(declare-fun d!1223065 () Bool)

(assert (= bs!594886 (and d!1223065 d!1222961)))

(declare-fun lambda!128773 () Int)

(assert (=> bs!594886 (= (= (toValue!9960 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 r!4008))) (= lambda!128773 lambda!128756))))

(assert (=> d!1223065 true))

(assert (=> d!1223065 (< (dynLambda!19104 order!23517 (toValue!9960 (transformation!7304 rBis!149))) (dynLambda!19109 order!23523 lambda!128773))))

(assert (=> d!1223065 (= (equivClasses!3046 (toChars!9819 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 rBis!149))) (Forall2!1146 lambda!128773))))

(declare-fun bs!594887 () Bool)

(assert (= bs!594887 d!1223065))

(declare-fun m!4725501 () Bool)

(assert (=> bs!594887 m!4725501))

(assert (=> b!4126727 d!1223065))

(declare-fun d!1223067 () Bool)

(declare-fun lt!1472263 () Bool)

(assert (=> d!1223067 (= lt!1472263 (select (content!6886 rules!3756) (rule!10390 (_1!24687 (get!14570 lt!1472095)))))))

(declare-fun e!2560798 () Bool)

(assert (=> d!1223067 (= lt!1472263 e!2560798)))

(declare-fun res!1686852 () Bool)

(assert (=> d!1223067 (=> (not res!1686852) (not e!2560798))))

(assert (=> d!1223067 (= res!1686852 ((_ is Cons!44655) rules!3756))))

(assert (=> d!1223067 (= (contains!8978 rules!3756 (rule!10390 (_1!24687 (get!14570 lt!1472095)))) lt!1472263)))

(declare-fun b!4127075 () Bool)

(declare-fun e!2560799 () Bool)

(assert (=> b!4127075 (= e!2560798 e!2560799)))

(declare-fun res!1686853 () Bool)

(assert (=> b!4127075 (=> res!1686853 e!2560799)))

(assert (=> b!4127075 (= res!1686853 (= (h!50075 rules!3756) (rule!10390 (_1!24687 (get!14570 lt!1472095)))))))

(declare-fun b!4127076 () Bool)

(assert (=> b!4127076 (= e!2560799 (contains!8978 (t!341164 rules!3756) (rule!10390 (_1!24687 (get!14570 lt!1472095)))))))

(assert (= (and d!1223067 res!1686852) b!4127075))

(assert (= (and b!4127075 (not res!1686853)) b!4127076))

(assert (=> d!1223067 m!4725227))

(declare-fun m!4725503 () Bool)

(assert (=> d!1223067 m!4725503))

(declare-fun m!4725505 () Bool)

(assert (=> b!4127076 m!4725505))

(assert (=> b!4126700 d!1223067))

(assert (=> b!4126700 d!1222959))

(declare-fun bs!594888 () Bool)

(declare-fun d!1223069 () Bool)

(assert (= bs!594888 (and d!1223069 d!1222873)))

(declare-fun lambda!128774 () Int)

(assert (=> bs!594888 (= (and (= (toChars!9819 (transformation!7304 (h!50075 rules!3756))) (toChars!9819 (transformation!7304 r!4008))) (= (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (toValue!9960 (transformation!7304 r!4008)))) (= lambda!128774 lambda!128753))))

(declare-fun bs!594889 () Bool)

(assert (= bs!594889 (and d!1223069 d!1222993)))

(assert (=> bs!594889 (= lambda!128774 lambda!128757)))

(declare-fun bs!594890 () Bool)

(assert (= bs!594890 (and d!1223069 d!1223047)))

(assert (=> bs!594890 (= (and (= (toChars!9819 (transformation!7304 (h!50075 rules!3756))) (toChars!9819 (transformation!7304 r!4008))) (= (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (toValue!9960 (transformation!7304 r!4008)))) (= lambda!128774 lambda!128772))))

(assert (=> d!1223069 true))

(assert (=> d!1223069 (< (dynLambda!19106 order!23521 (toChars!9819 (transformation!7304 (h!50075 rules!3756)))) (dynLambda!19105 order!23519 lambda!128774))))

(assert (=> d!1223069 true))

(assert (=> d!1223069 (< (dynLambda!19104 order!23517 (toValue!9960 (transformation!7304 (h!50075 rules!3756)))) (dynLambda!19105 order!23519 lambda!128774))))

(assert (=> d!1223069 (= (semiInverseModEq!3147 (toChars!9819 (transformation!7304 (h!50075 rules!3756))) (toValue!9960 (transformation!7304 (h!50075 rules!3756)))) (Forall!1548 lambda!128774))))

(declare-fun bs!594891 () Bool)

(assert (= bs!594891 d!1223069))

(declare-fun m!4725507 () Bool)

(assert (=> bs!594891 m!4725507))

(assert (=> d!1222933 d!1223069))

(declare-fun b!4127077 () Bool)

(declare-fun e!2560800 () Bool)

(declare-fun lt!1472264 () Option!9612)

(assert (=> b!4127077 (= e!2560800 (contains!8978 (t!341164 rules!3756) (rule!10390 (_1!24687 (get!14570 lt!1472264)))))))

(declare-fun b!4127078 () Bool)

(declare-fun res!1686858 () Bool)

(assert (=> b!4127078 (=> (not res!1686858) (not e!2560800))))

(assert (=> b!4127078 (= res!1686858 (< (size!33066 (_2!24687 (get!14570 lt!1472264))) (size!33066 input!3238)))))

(declare-fun bm!290210 () Bool)

(declare-fun call!290215 () Option!9612)

(assert (=> bm!290210 (= call!290215 (maxPrefixOneRule!3033 thiss!25645 (h!50075 (t!341164 rules!3756)) input!3238))))

(declare-fun b!4127079 () Bool)

(declare-fun e!2560802 () Bool)

(assert (=> b!4127079 (= e!2560802 e!2560800)))

(declare-fun res!1686860 () Bool)

(assert (=> b!4127079 (=> (not res!1686860) (not e!2560800))))

(assert (=> b!4127079 (= res!1686860 (isDefined!7241 lt!1472264))))

(declare-fun b!4127080 () Bool)

(declare-fun e!2560801 () Option!9612)

(declare-fun lt!1472267 () Option!9612)

(declare-fun lt!1472266 () Option!9612)

(assert (=> b!4127080 (= e!2560801 (ite (and ((_ is None!9611) lt!1472267) ((_ is None!9611) lt!1472266)) None!9611 (ite ((_ is None!9611) lt!1472266) lt!1472267 (ite ((_ is None!9611) lt!1472267) lt!1472266 (ite (>= (size!33065 (_1!24687 (v!40209 lt!1472267))) (size!33065 (_1!24687 (v!40209 lt!1472266)))) lt!1472267 lt!1472266)))))))

(assert (=> b!4127080 (= lt!1472267 call!290215)))

(assert (=> b!4127080 (= lt!1472266 (maxPrefix!4085 thiss!25645 (t!341164 (t!341164 rules!3756)) input!3238))))

(declare-fun b!4127081 () Bool)

(declare-fun res!1686857 () Bool)

(assert (=> b!4127081 (=> (not res!1686857) (not e!2560800))))

(assert (=> b!4127081 (= res!1686857 (= (value!228718 (_1!24687 (get!14570 lt!1472264))) (apply!10377 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472264)))) (seqFromList!5421 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472264)))))))))

(declare-fun b!4127082 () Bool)

(assert (=> b!4127082 (= e!2560801 call!290215)))

(declare-fun b!4127083 () Bool)

(declare-fun res!1686856 () Bool)

(assert (=> b!4127083 (=> (not res!1686856) (not e!2560800))))

(assert (=> b!4127083 (= res!1686856 (matchR!6040 (regex!7304 (rule!10390 (_1!24687 (get!14570 lt!1472264)))) (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472264))))))))

(declare-fun d!1223071 () Bool)

(assert (=> d!1223071 e!2560802))

(declare-fun res!1686859 () Bool)

(assert (=> d!1223071 (=> res!1686859 e!2560802)))

(assert (=> d!1223071 (= res!1686859 (isEmpty!26584 lt!1472264))))

(assert (=> d!1223071 (= lt!1472264 e!2560801)))

(declare-fun c!708357 () Bool)

(assert (=> d!1223071 (= c!708357 (and ((_ is Cons!44655) (t!341164 rules!3756)) ((_ is Nil!44655) (t!341164 (t!341164 rules!3756)))))))

(declare-fun lt!1472265 () Unit!63989)

(declare-fun lt!1472268 () Unit!63989)

(assert (=> d!1223071 (= lt!1472265 lt!1472268)))

(assert (=> d!1223071 (isPrefix!4239 input!3238 input!3238)))

(assert (=> d!1223071 (= lt!1472268 (lemmaIsPrefixRefl!2747 input!3238 input!3238))))

(assert (=> d!1223071 (rulesValidInductive!2698 thiss!25645 (t!341164 rules!3756))))

(assert (=> d!1223071 (= (maxPrefix!4085 thiss!25645 (t!341164 rules!3756) input!3238) lt!1472264)))

(declare-fun b!4127084 () Bool)

(declare-fun res!1686855 () Bool)

(assert (=> b!4127084 (=> (not res!1686855) (not e!2560800))))

(assert (=> b!4127084 (= res!1686855 (= (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472264)))) (originalCharacters!7800 (_1!24687 (get!14570 lt!1472264)))))))

(declare-fun b!4127085 () Bool)

(declare-fun res!1686854 () Bool)

(assert (=> b!4127085 (=> (not res!1686854) (not e!2560800))))

(assert (=> b!4127085 (= res!1686854 (= (++!11568 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472264)))) (_2!24687 (get!14570 lt!1472264))) input!3238))))

(assert (= (and d!1223071 c!708357) b!4127082))

(assert (= (and d!1223071 (not c!708357)) b!4127080))

(assert (= (or b!4127082 b!4127080) bm!290210))

(assert (= (and d!1223071 (not res!1686859)) b!4127079))

(assert (= (and b!4127079 res!1686860) b!4127084))

(assert (= (and b!4127084 res!1686855) b!4127078))

(assert (= (and b!4127078 res!1686858) b!4127085))

(assert (= (and b!4127085 res!1686854) b!4127081))

(assert (= (and b!4127081 res!1686857) b!4127083))

(assert (= (and b!4127083 res!1686856) b!4127077))

(declare-fun m!4725509 () Bool)

(assert (=> b!4127083 m!4725509))

(declare-fun m!4725511 () Bool)

(assert (=> b!4127083 m!4725511))

(assert (=> b!4127083 m!4725511))

(declare-fun m!4725513 () Bool)

(assert (=> b!4127083 m!4725513))

(assert (=> b!4127083 m!4725513))

(declare-fun m!4725515 () Bool)

(assert (=> b!4127083 m!4725515))

(declare-fun m!4725517 () Bool)

(assert (=> b!4127080 m!4725517))

(declare-fun m!4725519 () Bool)

(assert (=> d!1223071 m!4725519))

(assert (=> d!1223071 m!4725175))

(assert (=> d!1223071 m!4725177))

(assert (=> d!1223071 m!4724857))

(assert (=> b!4127081 m!4725509))

(declare-fun m!4725521 () Bool)

(assert (=> b!4127081 m!4725521))

(assert (=> b!4127081 m!4725521))

(declare-fun m!4725523 () Bool)

(assert (=> b!4127081 m!4725523))

(assert (=> b!4127084 m!4725509))

(assert (=> b!4127084 m!4725511))

(assert (=> b!4127084 m!4725511))

(assert (=> b!4127084 m!4725513))

(assert (=> b!4127077 m!4725509))

(declare-fun m!4725525 () Bool)

(assert (=> b!4127077 m!4725525))

(declare-fun m!4725527 () Bool)

(assert (=> bm!290210 m!4725527))

(declare-fun m!4725529 () Bool)

(assert (=> b!4127079 m!4725529))

(assert (=> b!4127078 m!4725509))

(declare-fun m!4725531 () Bool)

(assert (=> b!4127078 m!4725531))

(assert (=> b!4127078 m!4725017))

(assert (=> b!4127085 m!4725509))

(assert (=> b!4127085 m!4725511))

(assert (=> b!4127085 m!4725511))

(assert (=> b!4127085 m!4725513))

(assert (=> b!4127085 m!4725513))

(declare-fun m!4725533 () Bool)

(assert (=> b!4127085 m!4725533))

(assert (=> b!4126703 d!1223071))

(declare-fun d!1223073 () Bool)

(declare-fun lt!1472269 () Bool)

(assert (=> d!1223073 (= lt!1472269 (select (content!6886 (t!341164 (t!341164 rules!3756))) r!4008))))

(declare-fun e!2560803 () Bool)

(assert (=> d!1223073 (= lt!1472269 e!2560803)))

(declare-fun res!1686861 () Bool)

(assert (=> d!1223073 (=> (not res!1686861) (not e!2560803))))

(assert (=> d!1223073 (= res!1686861 ((_ is Cons!44655) (t!341164 (t!341164 rules!3756))))))

(assert (=> d!1223073 (= (contains!8978 (t!341164 (t!341164 rules!3756)) r!4008) lt!1472269)))

(declare-fun b!4127086 () Bool)

(declare-fun e!2560804 () Bool)

(assert (=> b!4127086 (= e!2560803 e!2560804)))

(declare-fun res!1686862 () Bool)

(assert (=> b!4127086 (=> res!1686862 e!2560804)))

(assert (=> b!4127086 (= res!1686862 (= (h!50075 (t!341164 (t!341164 rules!3756))) r!4008))))

(declare-fun b!4127087 () Bool)

(assert (=> b!4127087 (= e!2560804 (contains!8978 (t!341164 (t!341164 (t!341164 rules!3756))) r!4008))))

(assert (= (and d!1223073 res!1686861) b!4127086))

(assert (= (and b!4127086 (not res!1686862)) b!4127087))

(assert (=> d!1223073 m!4725291))

(declare-fun m!4725535 () Bool)

(assert (=> d!1223073 m!4725535))

(declare-fun m!4725537 () Bool)

(assert (=> b!4127087 m!4725537))

(assert (=> b!4126534 d!1223073))

(declare-fun b!4127091 () Bool)

(declare-fun e!2560805 () Bool)

(assert (=> b!4127091 (= e!2560805 (>= (size!33066 (tail!6467 input!3238)) (size!33066 (tail!6467 p!2912))))))

(declare-fun d!1223075 () Bool)

(assert (=> d!1223075 e!2560805))

(declare-fun res!1686866 () Bool)

(assert (=> d!1223075 (=> res!1686866 e!2560805)))

(declare-fun lt!1472270 () Bool)

(assert (=> d!1223075 (= res!1686866 (not lt!1472270))))

(declare-fun e!2560807 () Bool)

(assert (=> d!1223075 (= lt!1472270 e!2560807)))

(declare-fun res!1686864 () Bool)

(assert (=> d!1223075 (=> res!1686864 e!2560807)))

(assert (=> d!1223075 (= res!1686864 ((_ is Nil!44653) (tail!6467 p!2912)))))

(assert (=> d!1223075 (= (isPrefix!4239 (tail!6467 p!2912) (tail!6467 input!3238)) lt!1472270)))

(declare-fun b!4127088 () Bool)

(declare-fun e!2560806 () Bool)

(assert (=> b!4127088 (= e!2560807 e!2560806)))

(declare-fun res!1686863 () Bool)

(assert (=> b!4127088 (=> (not res!1686863) (not e!2560806))))

(assert (=> b!4127088 (= res!1686863 (not ((_ is Nil!44653) (tail!6467 input!3238))))))

(declare-fun b!4127089 () Bool)

(declare-fun res!1686865 () Bool)

(assert (=> b!4127089 (=> (not res!1686865) (not e!2560806))))

(assert (=> b!4127089 (= res!1686865 (= (head!8694 (tail!6467 p!2912)) (head!8694 (tail!6467 input!3238))))))

(declare-fun b!4127090 () Bool)

(assert (=> b!4127090 (= e!2560806 (isPrefix!4239 (tail!6467 (tail!6467 p!2912)) (tail!6467 (tail!6467 input!3238))))))

(assert (= (and d!1223075 (not res!1686864)) b!4127088))

(assert (= (and b!4127088 res!1686863) b!4127089))

(assert (= (and b!4127089 res!1686865) b!4127090))

(assert (= (and d!1223075 (not res!1686866)) b!4127091))

(assert (=> b!4127091 m!4725075))

(assert (=> b!4127091 m!4725495))

(assert (=> b!4127091 m!4725201))

(declare-fun m!4725539 () Bool)

(assert (=> b!4127091 m!4725539))

(assert (=> b!4127089 m!4725201))

(assert (=> b!4127089 m!4725467))

(assert (=> b!4127089 m!4725075))

(declare-fun m!4725541 () Bool)

(assert (=> b!4127089 m!4725541))

(assert (=> b!4127090 m!4725201))

(assert (=> b!4127090 m!4725463))

(assert (=> b!4127090 m!4725075))

(assert (=> b!4127090 m!4725497))

(assert (=> b!4127090 m!4725463))

(assert (=> b!4127090 m!4725497))

(declare-fun m!4725543 () Bool)

(assert (=> b!4127090 m!4725543))

(assert (=> b!4126725 d!1223075))

(assert (=> b!4126725 d!1222973))

(assert (=> b!4126725 d!1223063))

(declare-fun d!1223077 () Bool)

(declare-fun res!1686867 () Bool)

(declare-fun e!2560808 () Bool)

(assert (=> d!1223077 (=> (not res!1686867) (not e!2560808))))

(assert (=> d!1223077 (= res!1686867 (validRegex!5492 (regex!7304 (h!50075 (t!341164 rules!3756)))))))

(assert (=> d!1223077 (= (ruleValid!3112 thiss!25645 (h!50075 (t!341164 rules!3756))) e!2560808)))

(declare-fun b!4127092 () Bool)

(declare-fun res!1686868 () Bool)

(assert (=> b!4127092 (=> (not res!1686868) (not e!2560808))))

(assert (=> b!4127092 (= res!1686868 (not (nullable!4286 (regex!7304 (h!50075 (t!341164 rules!3756))))))))

(declare-fun b!4127093 () Bool)

(assert (=> b!4127093 (= e!2560808 (not (= (tag!8164 (h!50075 (t!341164 rules!3756))) (String!51421 ""))))))

(assert (= (and d!1223077 res!1686867) b!4127092))

(assert (= (and b!4127092 res!1686868) b!4127093))

(declare-fun m!4725545 () Bool)

(assert (=> d!1223077 m!4725545))

(declare-fun m!4725547 () Bool)

(assert (=> b!4127092 m!4725547))

(assert (=> b!4126444 d!1223077))

(declare-fun d!1223079 () Bool)

(declare-fun lt!1472271 () Int)

(assert (=> d!1223079 (>= lt!1472271 0)))

(declare-fun e!2560809 () Int)

(assert (=> d!1223079 (= lt!1472271 e!2560809)))

(declare-fun c!708358 () Bool)

(assert (=> d!1223079 (= c!708358 ((_ is Nil!44653) (t!341162 p!2912)))))

(assert (=> d!1223079 (= (size!33066 (t!341162 p!2912)) lt!1472271)))

(declare-fun b!4127094 () Bool)

(assert (=> b!4127094 (= e!2560809 0)))

(declare-fun b!4127095 () Bool)

(assert (=> b!4127095 (= e!2560809 (+ 1 (size!33066 (t!341162 (t!341162 p!2912)))))))

(assert (= (and d!1223079 c!708358) b!4127094))

(assert (= (and d!1223079 (not c!708358)) b!4127095))

(declare-fun m!4725549 () Bool)

(assert (=> b!4127095 m!4725549))

(assert (=> b!4126714 d!1223079))

(assert (=> d!1222919 d!1222917))

(declare-fun d!1223081 () Bool)

(assert (=> d!1223081 (ruleValid!3112 thiss!25645 rBis!149)))

(assert (=> d!1223081 true))

(declare-fun _$65!1613 () Unit!63989)

(assert (=> d!1223081 (= (choose!25231 thiss!25645 rBis!149 rules!3756) _$65!1613)))

(declare-fun bs!594892 () Bool)

(assert (= bs!594892 d!1223081))

(assert (=> bs!594892 m!4724849))

(assert (=> d!1222919 d!1223081))

(assert (=> d!1222919 d!1222923))

(declare-fun b!4127096 () Bool)

(declare-fun e!2560815 () Bool)

(declare-fun e!2560812 () Bool)

(assert (=> b!4127096 (= e!2560815 e!2560812)))

(declare-fun res!1686869 () Bool)

(assert (=> b!4127096 (=> (not res!1686869) (not e!2560812))))

(declare-fun lt!1472272 () Bool)

(assert (=> b!4127096 (= res!1686869 (not lt!1472272))))

(declare-fun b!4127097 () Bool)

(declare-fun res!1686871 () Bool)

(assert (=> b!4127097 (=> res!1686871 e!2560815)))

(assert (=> b!4127097 (= res!1686871 (not ((_ is ElementMatch!12209) (regex!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))))))))

(declare-fun e!2560810 () Bool)

(assert (=> b!4127097 (= e!2560810 e!2560815)))

(declare-fun b!4127098 () Bool)

(declare-fun e!2560811 () Bool)

(assert (=> b!4127098 (= e!2560812 e!2560811)))

(declare-fun res!1686872 () Bool)

(assert (=> b!4127098 (=> res!1686872 e!2560811)))

(declare-fun call!290216 () Bool)

(assert (=> b!4127098 (= res!1686872 call!290216)))

(declare-fun b!4127099 () Bool)

(declare-fun res!1686876 () Bool)

(assert (=> b!4127099 (=> res!1686876 e!2560811)))

(assert (=> b!4127099 (= res!1686876 (not (isEmpty!26582 (tail!6467 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095))))))))))

(declare-fun b!4127100 () Bool)

(assert (=> b!4127100 (= e!2560811 (not (= (head!8694 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095))))) (c!708223 (regex!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095))))))))))

(declare-fun b!4127101 () Bool)

(assert (=> b!4127101 (= e!2560810 (not lt!1472272))))

(declare-fun b!4127102 () Bool)

(declare-fun res!1686874 () Bool)

(declare-fun e!2560816 () Bool)

(assert (=> b!4127102 (=> (not res!1686874) (not e!2560816))))

(assert (=> b!4127102 (= res!1686874 (isEmpty!26582 (tail!6467 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095)))))))))

(declare-fun bm!290211 () Bool)

(assert (=> bm!290211 (= call!290216 (isEmpty!26582 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095))))))))

(declare-fun d!1223083 () Bool)

(declare-fun e!2560814 () Bool)

(assert (=> d!1223083 e!2560814))

(declare-fun c!708361 () Bool)

(assert (=> d!1223083 (= c!708361 ((_ is EmptyExpr!12209) (regex!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095))))))))

(declare-fun e!2560813 () Bool)

(assert (=> d!1223083 (= lt!1472272 e!2560813)))

(declare-fun c!708359 () Bool)

(assert (=> d!1223083 (= c!708359 (isEmpty!26582 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095))))))))

(assert (=> d!1223083 (validRegex!5492 (regex!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))))))

(assert (=> d!1223083 (= (matchR!6040 (regex!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))) (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095))))) lt!1472272)))

(declare-fun b!4127103 () Bool)

(assert (=> b!4127103 (= e!2560813 (nullable!4286 (regex!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095))))))))

(declare-fun b!4127104 () Bool)

(assert (=> b!4127104 (= e!2560814 e!2560810)))

(declare-fun c!708360 () Bool)

(assert (=> b!4127104 (= c!708360 ((_ is EmptyLang!12209) (regex!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095))))))))

(declare-fun b!4127105 () Bool)

(assert (=> b!4127105 (= e!2560814 (= lt!1472272 call!290216))))

(declare-fun b!4127106 () Bool)

(assert (=> b!4127106 (= e!2560816 (= (head!8694 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095))))) (c!708223 (regex!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))))))))

(declare-fun b!4127107 () Bool)

(declare-fun res!1686873 () Bool)

(assert (=> b!4127107 (=> (not res!1686873) (not e!2560816))))

(assert (=> b!4127107 (= res!1686873 (not call!290216))))

(declare-fun b!4127108 () Bool)

(assert (=> b!4127108 (= e!2560813 (matchR!6040 (derivativeStep!3681 (regex!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))) (head!8694 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095)))))) (tail!6467 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095)))))))))

(declare-fun b!4127109 () Bool)

(declare-fun res!1686870 () Bool)

(assert (=> b!4127109 (=> res!1686870 e!2560815)))

(assert (=> b!4127109 (= res!1686870 e!2560816)))

(declare-fun res!1686875 () Bool)

(assert (=> b!4127109 (=> (not res!1686875) (not e!2560816))))

(assert (=> b!4127109 (= res!1686875 lt!1472272)))

(assert (= (and d!1223083 c!708359) b!4127103))

(assert (= (and d!1223083 (not c!708359)) b!4127108))

(assert (= (and d!1223083 c!708361) b!4127105))

(assert (= (and d!1223083 (not c!708361)) b!4127104))

(assert (= (and b!4127104 c!708360) b!4127101))

(assert (= (and b!4127104 (not c!708360)) b!4127097))

(assert (= (and b!4127097 (not res!1686871)) b!4127109))

(assert (= (and b!4127109 res!1686875) b!4127107))

(assert (= (and b!4127107 res!1686873) b!4127102))

(assert (= (and b!4127102 res!1686874) b!4127106))

(assert (= (and b!4127109 (not res!1686870)) b!4127096))

(assert (= (and b!4127096 res!1686869) b!4127098))

(assert (= (and b!4127098 (not res!1686872)) b!4127099))

(assert (= (and b!4127099 (not res!1686876)) b!4127100))

(assert (= (or b!4127105 b!4127098 b!4127107) bm!290211))

(declare-fun m!4725551 () Bool)

(assert (=> b!4127103 m!4725551))

(assert (=> b!4127102 m!4725167))

(declare-fun m!4725553 () Bool)

(assert (=> b!4127102 m!4725553))

(assert (=> b!4127102 m!4725553))

(declare-fun m!4725555 () Bool)

(assert (=> b!4127102 m!4725555))

(assert (=> b!4127108 m!4725167))

(declare-fun m!4725557 () Bool)

(assert (=> b!4127108 m!4725557))

(assert (=> b!4127108 m!4725557))

(declare-fun m!4725559 () Bool)

(assert (=> b!4127108 m!4725559))

(assert (=> b!4127108 m!4725167))

(assert (=> b!4127108 m!4725553))

(assert (=> b!4127108 m!4725559))

(assert (=> b!4127108 m!4725553))

(declare-fun m!4725561 () Bool)

(assert (=> b!4127108 m!4725561))

(assert (=> bm!290211 m!4725167))

(declare-fun m!4725563 () Bool)

(assert (=> bm!290211 m!4725563))

(assert (=> b!4127100 m!4725167))

(assert (=> b!4127100 m!4725557))

(assert (=> b!4127099 m!4725167))

(assert (=> b!4127099 m!4725553))

(assert (=> b!4127099 m!4725553))

(assert (=> b!4127099 m!4725555))

(assert (=> d!1223083 m!4725167))

(assert (=> d!1223083 m!4725563))

(declare-fun m!4725565 () Bool)

(assert (=> d!1223083 m!4725565))

(assert (=> b!4127106 m!4725167))

(assert (=> b!4127106 m!4725557))

(assert (=> b!4126706 d!1223083))

(assert (=> b!4126706 d!1222959))

(assert (=> b!4126706 d!1222955))

(assert (=> b!4126706 d!1222957))

(assert (=> b!4126704 d!1222959))

(declare-fun d!1223085 () Bool)

(assert (=> d!1223085 (= (apply!10377 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))) (seqFromList!5421 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472095))))) (dynLambda!19103 (toValue!9960 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095))))) (seqFromList!5421 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472095))))))))

(declare-fun b_lambda!121145 () Bool)

(assert (=> (not b_lambda!121145) (not d!1223085)))

(declare-fun t!341240 () Bool)

(declare-fun tb!247679 () Bool)

(assert (=> (and b!4126378 (= (toValue!9960 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))))) t!341240) tb!247679))

(declare-fun result!300968 () Bool)

(assert (=> tb!247679 (= result!300968 (inv!21 (dynLambda!19103 (toValue!9960 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095))))) (seqFromList!5421 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472095)))))))))

(declare-fun m!4725567 () Bool)

(assert (=> tb!247679 m!4725567))

(assert (=> d!1223085 t!341240))

(declare-fun b_and!319585 () Bool)

(assert (= b_and!319577 (and (=> t!341240 result!300968) b_and!319585)))

(declare-fun tb!247681 () Bool)

(declare-fun t!341242 () Bool)

(assert (=> (and b!4126375 (= (toValue!9960 (transformation!7304 r!4008)) (toValue!9960 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))))) t!341242) tb!247681))

(declare-fun result!300970 () Bool)

(assert (= result!300970 result!300968))

(assert (=> d!1223085 t!341242))

(declare-fun b_and!319587 () Bool)

(assert (= b_and!319579 (and (=> t!341242 result!300970) b_and!319587)))

(declare-fun tb!247683 () Bool)

(declare-fun t!341244 () Bool)

(assert (=> (and b!4126368 (= (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (toValue!9960 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))))) t!341244) tb!247683))

(declare-fun result!300972 () Bool)

(assert (= result!300972 result!300968))

(assert (=> d!1223085 t!341244))

(declare-fun b_and!319589 () Bool)

(assert (= b_and!319581 (and (=> t!341244 result!300972) b_and!319589)))

(declare-fun tb!247685 () Bool)

(declare-fun t!341246 () Bool)

(assert (=> (and b!4126796 (= (toValue!9960 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toValue!9960 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))))) t!341246) tb!247685))

(declare-fun result!300974 () Bool)

(assert (= result!300974 result!300968))

(assert (=> d!1223085 t!341246))

(declare-fun b_and!319591 () Bool)

(assert (= b_and!319583 (and (=> t!341246 result!300974) b_and!319591)))

(assert (=> d!1223085 m!4725181))

(declare-fun m!4725569 () Bool)

(assert (=> d!1223085 m!4725569))

(assert (=> b!4126704 d!1223085))

(declare-fun d!1223087 () Bool)

(assert (=> d!1223087 (= (seqFromList!5421 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472095)))) (fromListB!2480 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472095)))))))

(declare-fun bs!594893 () Bool)

(assert (= bs!594893 d!1223087))

(declare-fun m!4725571 () Bool)

(assert (=> bs!594893 m!4725571))

(assert (=> b!4126704 d!1223087))

(declare-fun d!1223089 () Bool)

(declare-fun c!708364 () Bool)

(assert (=> d!1223089 (= c!708364 ((_ is Node!13515) (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990)))))))

(declare-fun e!2560822 () Bool)

(assert (=> d!1223089 (= (inv!59244 (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990)))) e!2560822)))

(declare-fun b!4127116 () Bool)

(declare-fun inv!59248 (Conc!13515) Bool)

(assert (=> b!4127116 (= e!2560822 (inv!59248 (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990)))))))

(declare-fun b!4127117 () Bool)

(declare-fun e!2560823 () Bool)

(assert (=> b!4127117 (= e!2560822 e!2560823)))

(declare-fun res!1686879 () Bool)

(assert (=> b!4127117 (= res!1686879 (not ((_ is Leaf!20882) (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990))))))))

(assert (=> b!4127117 (=> res!1686879 e!2560823)))

(declare-fun b!4127118 () Bool)

(declare-fun inv!59249 (Conc!13515) Bool)

(assert (=> b!4127118 (= e!2560823 (inv!59249 (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990)))))))

(assert (= (and d!1223089 c!708364) b!4127116))

(assert (= (and d!1223089 (not c!708364)) b!4127117))

(assert (= (and b!4127117 (not res!1686879)) b!4127118))

(declare-fun m!4725573 () Bool)

(assert (=> b!4127116 m!4725573))

(declare-fun m!4725575 () Bool)

(assert (=> b!4127118 m!4725575))

(assert (=> b!4126584 d!1223089))

(assert (=> b!4126726 d!1222969))

(assert (=> b!4126726 d!1222907))

(declare-fun d!1223091 () Bool)

(declare-fun e!2560825 () Bool)

(assert (=> d!1223091 e!2560825))

(declare-fun res!1686880 () Bool)

(assert (=> d!1223091 (=> (not res!1686880) (not e!2560825))))

(declare-fun lt!1472273 () List!44777)

(assert (=> d!1223091 (= res!1686880 (= (content!6887 lt!1472273) ((_ map or) (content!6887 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095))))) (content!6887 (_2!24687 (get!14570 lt!1472095))))))))

(declare-fun e!2560824 () List!44777)

(assert (=> d!1223091 (= lt!1472273 e!2560824)))

(declare-fun c!708365 () Bool)

(assert (=> d!1223091 (= c!708365 ((_ is Nil!44653) (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095))))))))

(assert (=> d!1223091 (= (++!11568 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095)))) (_2!24687 (get!14570 lt!1472095))) lt!1472273)))

(declare-fun b!4127121 () Bool)

(declare-fun res!1686881 () Bool)

(assert (=> b!4127121 (=> (not res!1686881) (not e!2560825))))

(assert (=> b!4127121 (= res!1686881 (= (size!33066 lt!1472273) (+ (size!33066 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095))))) (size!33066 (_2!24687 (get!14570 lt!1472095))))))))

(declare-fun b!4127119 () Bool)

(assert (=> b!4127119 (= e!2560824 (_2!24687 (get!14570 lt!1472095)))))

(declare-fun b!4127122 () Bool)

(assert (=> b!4127122 (= e!2560825 (or (not (= (_2!24687 (get!14570 lt!1472095)) Nil!44653)) (= lt!1472273 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095)))))))))

(declare-fun b!4127120 () Bool)

(assert (=> b!4127120 (= e!2560824 (Cons!44653 (h!50073 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095))))) (++!11568 (t!341162 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472095))))) (_2!24687 (get!14570 lt!1472095)))))))

(assert (= (and d!1223091 c!708365) b!4127119))

(assert (= (and d!1223091 (not c!708365)) b!4127120))

(assert (= (and d!1223091 res!1686880) b!4127121))

(assert (= (and b!4127121 res!1686881) b!4127122))

(declare-fun m!4725577 () Bool)

(assert (=> d!1223091 m!4725577))

(assert (=> d!1223091 m!4725167))

(declare-fun m!4725579 () Bool)

(assert (=> d!1223091 m!4725579))

(declare-fun m!4725581 () Bool)

(assert (=> d!1223091 m!4725581))

(declare-fun m!4725583 () Bool)

(assert (=> b!4127121 m!4725583))

(assert (=> b!4127121 m!4725167))

(declare-fun m!4725585 () Bool)

(assert (=> b!4127121 m!4725585))

(assert (=> b!4127121 m!4725189))

(declare-fun m!4725587 () Bool)

(assert (=> b!4127120 m!4725587))

(assert (=> b!4126708 d!1223091))

(assert (=> b!4126708 d!1222955))

(assert (=> b!4126708 d!1222957))

(assert (=> b!4126708 d!1222959))

(declare-fun b!4127123 () Bool)

(declare-fun e!2560831 () Bool)

(declare-fun e!2560828 () Bool)

(assert (=> b!4127123 (= e!2560831 e!2560828)))

(declare-fun res!1686882 () Bool)

(assert (=> b!4127123 (=> (not res!1686882) (not e!2560828))))

(declare-fun lt!1472274 () Bool)

(assert (=> b!4127123 (= res!1686882 (not lt!1472274))))

(declare-fun b!4127124 () Bool)

(declare-fun res!1686884 () Bool)

(assert (=> b!4127124 (=> res!1686884 e!2560831)))

(assert (=> b!4127124 (= res!1686884 (not ((_ is ElementMatch!12209) (regex!7304 (h!50075 rules!3756)))))))

(declare-fun e!2560826 () Bool)

(assert (=> b!4127124 (= e!2560826 e!2560831)))

(declare-fun b!4127125 () Bool)

(declare-fun e!2560827 () Bool)

(assert (=> b!4127125 (= e!2560828 e!2560827)))

(declare-fun res!1686885 () Bool)

(assert (=> b!4127125 (=> res!1686885 e!2560827)))

(declare-fun call!290217 () Bool)

(assert (=> b!4127125 (= res!1686885 call!290217)))

(declare-fun b!4127126 () Bool)

(declare-fun res!1686889 () Bool)

(assert (=> b!4127126 (=> res!1686889 e!2560827)))

(assert (=> b!4127126 (= res!1686889 (not (isEmpty!26582 (tail!6467 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042))))))))))

(declare-fun b!4127127 () Bool)

(assert (=> b!4127127 (= e!2560827 (not (= (head!8694 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042))))) (c!708223 (regex!7304 (h!50075 rules!3756))))))))

(declare-fun b!4127128 () Bool)

(assert (=> b!4127128 (= e!2560826 (not lt!1472274))))

(declare-fun b!4127129 () Bool)

(declare-fun res!1686887 () Bool)

(declare-fun e!2560832 () Bool)

(assert (=> b!4127129 (=> (not res!1686887) (not e!2560832))))

(assert (=> b!4127129 (= res!1686887 (isEmpty!26582 (tail!6467 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042)))))))))

(declare-fun bm!290212 () Bool)

(assert (=> bm!290212 (= call!290217 (isEmpty!26582 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042))))))))

(declare-fun d!1223093 () Bool)

(declare-fun e!2560830 () Bool)

(assert (=> d!1223093 e!2560830))

(declare-fun c!708368 () Bool)

(assert (=> d!1223093 (= c!708368 ((_ is EmptyExpr!12209) (regex!7304 (h!50075 rules!3756))))))

(declare-fun e!2560829 () Bool)

(assert (=> d!1223093 (= lt!1472274 e!2560829)))

(declare-fun c!708366 () Bool)

(assert (=> d!1223093 (= c!708366 (isEmpty!26582 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042))))))))

(assert (=> d!1223093 (validRegex!5492 (regex!7304 (h!50075 rules!3756)))))

(assert (=> d!1223093 (= (matchR!6040 (regex!7304 (h!50075 rules!3756)) (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042))))) lt!1472274)))

(declare-fun b!4127130 () Bool)

(assert (=> b!4127130 (= e!2560829 (nullable!4286 (regex!7304 (h!50075 rules!3756))))))

(declare-fun b!4127131 () Bool)

(assert (=> b!4127131 (= e!2560830 e!2560826)))

(declare-fun c!708367 () Bool)

(assert (=> b!4127131 (= c!708367 ((_ is EmptyLang!12209) (regex!7304 (h!50075 rules!3756))))))

(declare-fun b!4127132 () Bool)

(assert (=> b!4127132 (= e!2560830 (= lt!1472274 call!290217))))

(declare-fun b!4127133 () Bool)

(assert (=> b!4127133 (= e!2560832 (= (head!8694 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042))))) (c!708223 (regex!7304 (h!50075 rules!3756)))))))

(declare-fun b!4127134 () Bool)

(declare-fun res!1686886 () Bool)

(assert (=> b!4127134 (=> (not res!1686886) (not e!2560832))))

(assert (=> b!4127134 (= res!1686886 (not call!290217))))

(declare-fun b!4127135 () Bool)

(assert (=> b!4127135 (= e!2560829 (matchR!6040 (derivativeStep!3681 (regex!7304 (h!50075 rules!3756)) (head!8694 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042)))))) (tail!6467 (list!16375 (charsOf!4922 (_1!24687 (get!14570 lt!1472042)))))))))

(declare-fun b!4127136 () Bool)

(declare-fun res!1686883 () Bool)

(assert (=> b!4127136 (=> res!1686883 e!2560831)))

(assert (=> b!4127136 (= res!1686883 e!2560832)))

(declare-fun res!1686888 () Bool)

(assert (=> b!4127136 (=> (not res!1686888) (not e!2560832))))

(assert (=> b!4127136 (= res!1686888 lt!1472274)))

(assert (= (and d!1223093 c!708366) b!4127130))

(assert (= (and d!1223093 (not c!708366)) b!4127135))

(assert (= (and d!1223093 c!708368) b!4127132))

(assert (= (and d!1223093 (not c!708368)) b!4127131))

(assert (= (and b!4127131 c!708367) b!4127128))

(assert (= (and b!4127131 (not c!708367)) b!4127124))

(assert (= (and b!4127124 (not res!1686884)) b!4127136))

(assert (= (and b!4127136 res!1686888) b!4127134))

(assert (= (and b!4127134 res!1686886) b!4127129))

(assert (= (and b!4127129 res!1686887) b!4127133))

(assert (= (and b!4127136 (not res!1686883)) b!4127123))

(assert (= (and b!4127123 res!1686882) b!4127125))

(assert (= (and b!4127125 (not res!1686885)) b!4127126))

(assert (= (and b!4127126 (not res!1686889)) b!4127127))

(assert (= (or b!4127132 b!4127125 b!4127134) bm!290212))

(assert (=> b!4127130 m!4725431))

(assert (=> b!4127129 m!4725035))

(declare-fun m!4725589 () Bool)

(assert (=> b!4127129 m!4725589))

(assert (=> b!4127129 m!4725589))

(declare-fun m!4725591 () Bool)

(assert (=> b!4127129 m!4725591))

(assert (=> b!4127135 m!4725035))

(declare-fun m!4725593 () Bool)

(assert (=> b!4127135 m!4725593))

(assert (=> b!4127135 m!4725593))

(declare-fun m!4725595 () Bool)

(assert (=> b!4127135 m!4725595))

(assert (=> b!4127135 m!4725035))

(assert (=> b!4127135 m!4725589))

(assert (=> b!4127135 m!4725595))

(assert (=> b!4127135 m!4725589))

(declare-fun m!4725597 () Bool)

(assert (=> b!4127135 m!4725597))

(assert (=> bm!290212 m!4725035))

(declare-fun m!4725599 () Bool)

(assert (=> bm!290212 m!4725599))

(assert (=> b!4127127 m!4725035))

(assert (=> b!4127127 m!4725593))

(assert (=> b!4127126 m!4725035))

(assert (=> b!4127126 m!4725589))

(assert (=> b!4127126 m!4725589))

(assert (=> b!4127126 m!4725591))

(assert (=> d!1223093 m!4725035))

(assert (=> d!1223093 m!4725599))

(assert (=> d!1223093 m!4725311))

(assert (=> b!4127133 m!4725035))

(assert (=> b!4127133 m!4725593))

(assert (=> b!4126520 d!1223093))

(assert (=> b!4126520 d!1222947))

(assert (=> b!4126520 d!1222949))

(assert (=> b!4126520 d!1222953))

(declare-fun d!1223095 () Bool)

(assert (=> d!1223095 (= (list!16375 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990))) (list!16376 (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990)))))))

(declare-fun bs!594894 () Bool)

(assert (= bs!594894 d!1223095))

(declare-fun m!4725601 () Bool)

(assert (=> bs!594894 m!4725601))

(assert (=> d!1222873 d!1223095))

(declare-fun d!1223097 () Bool)

(assert (=> d!1223097 (= (list!16375 lt!1471990) (list!16376 (c!708222 lt!1471990)))))

(declare-fun bs!594895 () Bool)

(assert (= bs!594895 d!1223097))

(declare-fun m!4725603 () Bool)

(assert (=> bs!594895 m!4725603))

(assert (=> d!1222873 d!1223097))

(declare-fun d!1223099 () Bool)

(declare-fun dynLambda!19111 (Int BalanceConc!26624) Bool)

(assert (=> d!1223099 (dynLambda!19111 lambda!128753 lt!1471990)))

(declare-fun lt!1472277 () Unit!63989)

(declare-fun choose!25234 (Int BalanceConc!26624) Unit!63989)

(assert (=> d!1223099 (= lt!1472277 (choose!25234 lambda!128753 lt!1471990))))

(assert (=> d!1223099 (Forall!1548 lambda!128753)))

(assert (=> d!1223099 (= (ForallOf!930 lambda!128753 lt!1471990) lt!1472277)))

(declare-fun b_lambda!121147 () Bool)

(assert (=> (not b_lambda!121147) (not d!1223099)))

(declare-fun bs!594896 () Bool)

(assert (= bs!594896 d!1223099))

(declare-fun m!4725605 () Bool)

(assert (=> bs!594896 m!4725605))

(declare-fun m!4725607 () Bool)

(assert (=> bs!594896 m!4725607))

(declare-fun m!4725609 () Bool)

(assert (=> bs!594896 m!4725609))

(assert (=> d!1222873 d!1223099))

(declare-fun b!4127137 () Bool)

(declare-fun e!2560834 () Int)

(assert (=> b!4127137 (= e!2560834 0)))

(declare-fun b!4127139 () Bool)

(declare-fun e!2560833 () Int)

(assert (=> b!4127139 (= e!2560833 (+ 1 (getIndex!652 (t!341164 (t!341164 rules!3756)) rBis!149)))))

(declare-fun b!4127140 () Bool)

(assert (=> b!4127140 (= e!2560833 (- 1))))

(declare-fun b!4127138 () Bool)

(assert (=> b!4127138 (= e!2560834 e!2560833)))

(declare-fun c!708370 () Bool)

(assert (=> b!4127138 (= c!708370 (and ((_ is Cons!44655) (t!341164 rules!3756)) (not (= (h!50075 (t!341164 rules!3756)) rBis!149))))))

(declare-fun d!1223101 () Bool)

(declare-fun lt!1472278 () Int)

(assert (=> d!1223101 (>= lt!1472278 0)))

(assert (=> d!1223101 (= lt!1472278 e!2560834)))

(declare-fun c!708369 () Bool)

(assert (=> d!1223101 (= c!708369 (and ((_ is Cons!44655) (t!341164 rules!3756)) (= (h!50075 (t!341164 rules!3756)) rBis!149)))))

(assert (=> d!1223101 (contains!8978 (t!341164 rules!3756) rBis!149)))

(assert (=> d!1223101 (= (getIndex!652 (t!341164 rules!3756) rBis!149) lt!1472278)))

(assert (= (and d!1223101 c!708369) b!4127137))

(assert (= (and d!1223101 (not c!708369)) b!4127138))

(assert (= (and b!4127138 c!708370) b!4127139))

(assert (= (and b!4127138 (not c!708370)) b!4127140))

(declare-fun m!4725611 () Bool)

(assert (=> b!4127139 m!4725611))

(assert (=> d!1223101 m!4724891))

(assert (=> b!4126389 d!1223101))

(declare-fun d!1223103 () Bool)

(declare-fun e!2560836 () Bool)

(assert (=> d!1223103 e!2560836))

(declare-fun res!1686890 () Bool)

(assert (=> d!1223103 (=> (not res!1686890) (not e!2560836))))

(declare-fun lt!1472279 () List!44777)

(assert (=> d!1223103 (= res!1686890 (= (content!6887 lt!1472279) ((_ map or) (content!6887 p!2912) (content!6887 lt!1472063))))))

(declare-fun e!2560835 () List!44777)

(assert (=> d!1223103 (= lt!1472279 e!2560835)))

(declare-fun c!708371 () Bool)

(assert (=> d!1223103 (= c!708371 ((_ is Nil!44653) p!2912))))

(assert (=> d!1223103 (= (++!11568 p!2912 lt!1472063) lt!1472279)))

(declare-fun b!4127143 () Bool)

(declare-fun res!1686891 () Bool)

(assert (=> b!4127143 (=> (not res!1686891) (not e!2560836))))

(assert (=> b!4127143 (= res!1686891 (= (size!33066 lt!1472279) (+ (size!33066 p!2912) (size!33066 lt!1472063))))))

(declare-fun b!4127141 () Bool)

(assert (=> b!4127141 (= e!2560835 lt!1472063)))

(declare-fun b!4127144 () Bool)

(assert (=> b!4127144 (= e!2560836 (or (not (= lt!1472063 Nil!44653)) (= lt!1472279 p!2912)))))

(declare-fun b!4127142 () Bool)

(assert (=> b!4127142 (= e!2560835 (Cons!44653 (h!50073 p!2912) (++!11568 (t!341162 p!2912) lt!1472063)))))

(assert (= (and d!1223103 c!708371) b!4127141))

(assert (= (and d!1223103 (not c!708371)) b!4127142))

(assert (= (and d!1223103 res!1686890) b!4127143))

(assert (= (and b!4127143 res!1686891) b!4127144))

(declare-fun m!4725613 () Bool)

(assert (=> d!1223103 m!4725613))

(declare-fun m!4725615 () Bool)

(assert (=> d!1223103 m!4725615))

(declare-fun m!4725617 () Bool)

(assert (=> d!1223103 m!4725617))

(declare-fun m!4725619 () Bool)

(assert (=> b!4127143 m!4725619))

(assert (=> b!4127143 m!4724871))

(declare-fun m!4725621 () Bool)

(assert (=> b!4127143 m!4725621))

(declare-fun m!4725623 () Bool)

(assert (=> b!4127142 m!4725623))

(assert (=> d!1222871 d!1223103))

(assert (=> d!1222871 d!1222969))

(assert (=> d!1222871 d!1222907))

(declare-fun d!1223105 () Bool)

(declare-fun c!708372 () Bool)

(assert (=> d!1223105 (= c!708372 ((_ is Nil!44655) rules!3756))))

(declare-fun e!2560837 () (InoxSet Rule!14408))

(assert (=> d!1223105 (= (content!6886 rules!3756) e!2560837)))

(declare-fun b!4127145 () Bool)

(assert (=> b!4127145 (= e!2560837 ((as const (Array Rule!14408 Bool)) false))))

(declare-fun b!4127146 () Bool)

(assert (=> b!4127146 (= e!2560837 ((_ map or) (store ((as const (Array Rule!14408 Bool)) false) (h!50075 rules!3756) true) (content!6886 (t!341164 rules!3756))))))

(assert (= (and d!1223105 c!708372) b!4127145))

(assert (= (and d!1223105 (not c!708372)) b!4127146))

(declare-fun m!4725625 () Bool)

(assert (=> b!4127146 m!4725625))

(assert (=> b!4127146 m!4725055))

(assert (=> d!1222923 d!1223105))

(assert (=> b!4126765 d!1222971))

(assert (=> b!4126765 d!1222973))

(assert (=> b!4126522 d!1222953))

(declare-fun d!1223107 () Bool)

(declare-fun lt!1472280 () Int)

(assert (=> d!1223107 (>= lt!1472280 0)))

(declare-fun e!2560838 () Int)

(assert (=> d!1223107 (= lt!1472280 e!2560838)))

(declare-fun c!708373 () Bool)

(assert (=> d!1223107 (= c!708373 ((_ is Nil!44653) (originalCharacters!7800 (_1!24687 (get!14570 lt!1472042)))))))

(assert (=> d!1223107 (= (size!33066 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472042)))) lt!1472280)))

(declare-fun b!4127147 () Bool)

(assert (=> b!4127147 (= e!2560838 0)))

(declare-fun b!4127148 () Bool)

(assert (=> b!4127148 (= e!2560838 (+ 1 (size!33066 (t!341162 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472042)))))))))

(assert (= (and d!1223107 c!708373) b!4127147))

(assert (= (and d!1223107 (not c!708373)) b!4127148))

(declare-fun m!4725627 () Bool)

(assert (=> b!4127148 m!4725627))

(assert (=> b!4126522 d!1223107))

(assert (=> bm!290151 d!1222927))

(assert (=> b!4126526 d!1222953))

(declare-fun b!4127149 () Bool)

(declare-fun e!2560844 () Bool)

(declare-fun e!2560841 () Bool)

(assert (=> b!4127149 (= e!2560844 e!2560841)))

(declare-fun res!1686892 () Bool)

(assert (=> b!4127149 (=> (not res!1686892) (not e!2560841))))

(declare-fun lt!1472281 () Bool)

(assert (=> b!4127149 (= res!1686892 (not lt!1472281))))

(declare-fun b!4127150 () Bool)

(declare-fun res!1686894 () Bool)

(assert (=> b!4127150 (=> res!1686894 e!2560844)))

(assert (=> b!4127150 (= res!1686894 (not ((_ is ElementMatch!12209) (regex!7304 (h!50075 rules!3756)))))))

(declare-fun e!2560839 () Bool)

(assert (=> b!4127150 (= e!2560839 e!2560844)))

(declare-fun b!4127151 () Bool)

(declare-fun e!2560840 () Bool)

(assert (=> b!4127151 (= e!2560841 e!2560840)))

(declare-fun res!1686895 () Bool)

(assert (=> b!4127151 (=> res!1686895 e!2560840)))

(declare-fun call!290218 () Bool)

(assert (=> b!4127151 (= res!1686895 call!290218)))

(declare-fun b!4127152 () Bool)

(declare-fun res!1686899 () Bool)

(assert (=> b!4127152 (=> res!1686899 e!2560840)))

(assert (=> b!4127152 (= res!1686899 (not (isEmpty!26582 (tail!6467 (_1!24689 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238)))))))))

(declare-fun b!4127153 () Bool)

(assert (=> b!4127153 (= e!2560840 (not (= (head!8694 (_1!24689 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238)))) (c!708223 (regex!7304 (h!50075 rules!3756))))))))

(declare-fun b!4127154 () Bool)

(assert (=> b!4127154 (= e!2560839 (not lt!1472281))))

(declare-fun b!4127155 () Bool)

(declare-fun res!1686897 () Bool)

(declare-fun e!2560845 () Bool)

(assert (=> b!4127155 (=> (not res!1686897) (not e!2560845))))

(assert (=> b!4127155 (= res!1686897 (isEmpty!26582 (tail!6467 (_1!24689 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238))))))))

(declare-fun bm!290213 () Bool)

(assert (=> bm!290213 (= call!290218 (isEmpty!26582 (_1!24689 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238)))))))

(declare-fun d!1223109 () Bool)

(declare-fun e!2560843 () Bool)

(assert (=> d!1223109 e!2560843))

(declare-fun c!708376 () Bool)

(assert (=> d!1223109 (= c!708376 ((_ is EmptyExpr!12209) (regex!7304 (h!50075 rules!3756))))))

(declare-fun e!2560842 () Bool)

(assert (=> d!1223109 (= lt!1472281 e!2560842)))

(declare-fun c!708374 () Bool)

(assert (=> d!1223109 (= c!708374 (isEmpty!26582 (_1!24689 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238)))))))

(assert (=> d!1223109 (validRegex!5492 (regex!7304 (h!50075 rules!3756)))))

(assert (=> d!1223109 (= (matchR!6040 (regex!7304 (h!50075 rules!3756)) (_1!24689 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238)))) lt!1472281)))

(declare-fun b!4127156 () Bool)

(assert (=> b!4127156 (= e!2560842 (nullable!4286 (regex!7304 (h!50075 rules!3756))))))

(declare-fun b!4127157 () Bool)

(assert (=> b!4127157 (= e!2560843 e!2560839)))

(declare-fun c!708375 () Bool)

(assert (=> b!4127157 (= c!708375 ((_ is EmptyLang!12209) (regex!7304 (h!50075 rules!3756))))))

(declare-fun b!4127158 () Bool)

(assert (=> b!4127158 (= e!2560843 (= lt!1472281 call!290218))))

(declare-fun b!4127159 () Bool)

(assert (=> b!4127159 (= e!2560845 (= (head!8694 (_1!24689 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238)))) (c!708223 (regex!7304 (h!50075 rules!3756)))))))

(declare-fun b!4127160 () Bool)

(declare-fun res!1686896 () Bool)

(assert (=> b!4127160 (=> (not res!1686896) (not e!2560845))))

(assert (=> b!4127160 (= res!1686896 (not call!290218))))

(declare-fun b!4127161 () Bool)

(assert (=> b!4127161 (= e!2560842 (matchR!6040 (derivativeStep!3681 (regex!7304 (h!50075 rules!3756)) (head!8694 (_1!24689 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238))))) (tail!6467 (_1!24689 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 (size!33066 Nil!44653) input!3238 input!3238 (size!33066 input!3238))))))))

(declare-fun b!4127162 () Bool)

(declare-fun res!1686893 () Bool)

(assert (=> b!4127162 (=> res!1686893 e!2560844)))

(assert (=> b!4127162 (= res!1686893 e!2560845)))

(declare-fun res!1686898 () Bool)

(assert (=> b!4127162 (=> (not res!1686898) (not e!2560845))))

(assert (=> b!4127162 (= res!1686898 lt!1472281)))

(assert (= (and d!1223109 c!708374) b!4127156))

(assert (= (and d!1223109 (not c!708374)) b!4127161))

(assert (= (and d!1223109 c!708376) b!4127158))

(assert (= (and d!1223109 (not c!708376)) b!4127157))

(assert (= (and b!4127157 c!708375) b!4127154))

(assert (= (and b!4127157 (not c!708375)) b!4127150))

(assert (= (and b!4127150 (not res!1686894)) b!4127162))

(assert (= (and b!4127162 res!1686898) b!4127160))

(assert (= (and b!4127160 res!1686896) b!4127155))

(assert (= (and b!4127155 res!1686897) b!4127159))

(assert (= (and b!4127162 (not res!1686893)) b!4127149))

(assert (= (and b!4127149 res!1686892) b!4127151))

(assert (= (and b!4127151 (not res!1686895)) b!4127152))

(assert (= (and b!4127152 (not res!1686899)) b!4127153))

(assert (= (or b!4127158 b!4127151 b!4127160) bm!290213))

(assert (=> b!4127156 m!4725431))

(declare-fun m!4725629 () Bool)

(assert (=> b!4127155 m!4725629))

(assert (=> b!4127155 m!4725629))

(declare-fun m!4725631 () Bool)

(assert (=> b!4127155 m!4725631))

(declare-fun m!4725633 () Bool)

(assert (=> b!4127161 m!4725633))

(assert (=> b!4127161 m!4725633))

(declare-fun m!4725635 () Bool)

(assert (=> b!4127161 m!4725635))

(assert (=> b!4127161 m!4725629))

(assert (=> b!4127161 m!4725635))

(assert (=> b!4127161 m!4725629))

(declare-fun m!4725637 () Bool)

(assert (=> b!4127161 m!4725637))

(assert (=> bm!290213 m!4725013))

(assert (=> b!4127153 m!4725633))

(assert (=> b!4127152 m!4725629))

(assert (=> b!4127152 m!4725629))

(assert (=> b!4127152 m!4725631))

(assert (=> d!1223109 m!4725013))

(assert (=> d!1223109 m!4725311))

(assert (=> b!4127159 m!4725633))

(assert (=> b!4126524 d!1223109))

(assert (=> b!4126524 d!1222997))

(assert (=> b!4126524 d!1223041))

(assert (=> b!4126524 d!1222969))

(declare-fun d!1223111 () Bool)

(declare-fun res!1686904 () Bool)

(declare-fun e!2560850 () Bool)

(assert (=> d!1223111 (=> res!1686904 e!2560850)))

(assert (=> d!1223111 (= res!1686904 ((_ is Nil!44655) rules!3756))))

(assert (=> d!1223111 (= (noDuplicateTag!2943 thiss!25645 rules!3756 Nil!44657) e!2560850)))

(declare-fun b!4127167 () Bool)

(declare-fun e!2560851 () Bool)

(assert (=> b!4127167 (= e!2560850 e!2560851)))

(declare-fun res!1686905 () Bool)

(assert (=> b!4127167 (=> (not res!1686905) (not e!2560851))))

(declare-fun contains!8980 (List!44781 String!51420) Bool)

(assert (=> b!4127167 (= res!1686905 (not (contains!8980 Nil!44657 (tag!8164 (h!50075 rules!3756)))))))

(declare-fun b!4127168 () Bool)

(assert (=> b!4127168 (= e!2560851 (noDuplicateTag!2943 thiss!25645 (t!341164 rules!3756) (Cons!44657 (tag!8164 (h!50075 rules!3756)) Nil!44657)))))

(assert (= (and d!1223111 (not res!1686904)) b!4127167))

(assert (= (and b!4127167 res!1686905) b!4127168))

(declare-fun m!4725639 () Bool)

(assert (=> b!4127167 m!4725639))

(declare-fun m!4725641 () Bool)

(assert (=> b!4127168 m!4725641))

(assert (=> b!4126782 d!1223111))

(declare-fun d!1223113 () Bool)

(declare-fun nullableFct!1202 (Regex!12209) Bool)

(assert (=> d!1223113 (= (nullable!4286 (regex!7304 rBis!149)) (nullableFct!1202 (regex!7304 rBis!149)))))

(declare-fun bs!594897 () Bool)

(assert (= bs!594897 d!1223113))

(declare-fun m!4725643 () Bool)

(assert (=> bs!594897 m!4725643))

(assert (=> b!4126732 d!1223113))

(assert (=> b!4126527 d!1222953))

(declare-fun d!1223115 () Bool)

(assert (=> d!1223115 (= (apply!10377 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042)))) (seqFromList!5421 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472042))))) (dynLambda!19103 (toValue!9960 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042))))) (seqFromList!5421 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472042))))))))

(declare-fun b_lambda!121149 () Bool)

(assert (=> (not b_lambda!121149) (not d!1223115)))

(declare-fun t!341248 () Bool)

(declare-fun tb!247687 () Bool)

(assert (=> (and b!4126378 (= (toValue!9960 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042)))))) t!341248) tb!247687))

(declare-fun result!300976 () Bool)

(assert (=> tb!247687 (= result!300976 (inv!21 (dynLambda!19103 (toValue!9960 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042))))) (seqFromList!5421 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472042)))))))))

(declare-fun m!4725645 () Bool)

(assert (=> tb!247687 m!4725645))

(assert (=> d!1223115 t!341248))

(declare-fun b_and!319593 () Bool)

(assert (= b_and!319585 (and (=> t!341248 result!300976) b_and!319593)))

(declare-fun tb!247689 () Bool)

(declare-fun t!341250 () Bool)

(assert (=> (and b!4126375 (= (toValue!9960 (transformation!7304 r!4008)) (toValue!9960 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042)))))) t!341250) tb!247689))

(declare-fun result!300978 () Bool)

(assert (= result!300978 result!300976))

(assert (=> d!1223115 t!341250))

(declare-fun b_and!319595 () Bool)

(assert (= b_and!319587 (and (=> t!341250 result!300978) b_and!319595)))

(declare-fun t!341252 () Bool)

(declare-fun tb!247691 () Bool)

(assert (=> (and b!4126368 (= (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (toValue!9960 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042)))))) t!341252) tb!247691))

(declare-fun result!300980 () Bool)

(assert (= result!300980 result!300976))

(assert (=> d!1223115 t!341252))

(declare-fun b_and!319597 () Bool)

(assert (= b_and!319589 (and (=> t!341252 result!300980) b_and!319597)))

(declare-fun tb!247693 () Bool)

(declare-fun t!341254 () Bool)

(assert (=> (and b!4126796 (= (toValue!9960 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toValue!9960 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042)))))) t!341254) tb!247693))

(declare-fun result!300982 () Bool)

(assert (= result!300982 result!300976))

(assert (=> d!1223115 t!341254))

(declare-fun b_and!319599 () Bool)

(assert (= b_and!319591 (and (=> t!341254 result!300982) b_and!319599)))

(assert (=> d!1223115 m!4725029))

(declare-fun m!4725647 () Bool)

(assert (=> d!1223115 m!4725647))

(assert (=> b!4126527 d!1223115))

(declare-fun d!1223117 () Bool)

(assert (=> d!1223117 (= (seqFromList!5421 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472042)))) (fromListB!2480 (originalCharacters!7800 (_1!24687 (get!14570 lt!1472042)))))))

(declare-fun bs!594898 () Bool)

(assert (= bs!594898 d!1223117))

(declare-fun m!4725649 () Bool)

(assert (=> bs!594898 m!4725649))

(assert (=> b!4126527 d!1223117))

(declare-fun b!4127179 () Bool)

(declare-fun e!2560860 () Bool)

(declare-fun e!2560861 () Bool)

(assert (=> b!4127179 (= e!2560860 e!2560861)))

(declare-fun c!708381 () Bool)

(assert (=> b!4127179 (= c!708381 ((_ is IntegerValue!22603) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990)))))

(declare-fun b!4127180 () Bool)

(declare-fun res!1686908 () Bool)

(declare-fun e!2560859 () Bool)

(assert (=> b!4127180 (=> res!1686908 e!2560859)))

(assert (=> b!4127180 (= res!1686908 (not ((_ is IntegerValue!22604) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990))))))

(assert (=> b!4127180 (= e!2560861 e!2560859)))

(declare-fun b!4127181 () Bool)

(declare-fun inv!15 (TokenValue!7534) Bool)

(assert (=> b!4127181 (= e!2560859 (inv!15 (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990)))))

(declare-fun b!4127182 () Bool)

(declare-fun inv!17 (TokenValue!7534) Bool)

(assert (=> b!4127182 (= e!2560861 (inv!17 (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990)))))

(declare-fun b!4127183 () Bool)

(declare-fun inv!16 (TokenValue!7534) Bool)

(assert (=> b!4127183 (= e!2560860 (inv!16 (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990)))))

(declare-fun d!1223119 () Bool)

(declare-fun c!708382 () Bool)

(assert (=> d!1223119 (= c!708382 ((_ is IntegerValue!22602) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990)))))

(assert (=> d!1223119 (= (inv!21 (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990)) e!2560860)))

(assert (= (and d!1223119 c!708382) b!4127183))

(assert (= (and d!1223119 (not c!708382)) b!4127179))

(assert (= (and b!4127179 c!708381) b!4127182))

(assert (= (and b!4127179 (not c!708381)) b!4127180))

(assert (= (and b!4127180 (not res!1686908)) b!4127181))

(declare-fun m!4725651 () Bool)

(assert (=> b!4127181 m!4725651))

(declare-fun m!4725653 () Bool)

(assert (=> b!4127182 m!4725653))

(declare-fun m!4725655 () Bool)

(assert (=> b!4127183 m!4725655))

(assert (=> tb!247619 d!1223119))

(declare-fun d!1223121 () Bool)

(assert (=> d!1223121 (= (nullable!4286 (regex!7304 r!4008)) (nullableFct!1202 (regex!7304 r!4008)))))

(declare-fun bs!594899 () Bool)

(assert (= bs!594899 d!1223121))

(declare-fun m!4725657 () Bool)

(assert (=> bs!594899 m!4725657))

(assert (=> b!4126769 d!1223121))

(declare-fun d!1223123 () Bool)

(declare-fun e!2560876 () Bool)

(assert (=> d!1223123 e!2560876))

(declare-fun res!1686911 () Bool)

(assert (=> d!1223123 (=> (not res!1686911) (not e!2560876))))

(declare-fun lt!1472340 () BalanceConc!26624)

(assert (=> d!1223123 (= res!1686911 (= (list!16375 lt!1472340) p!2912))))

(declare-fun fromList!899 (List!44777) Conc!13515)

(assert (=> d!1223123 (= lt!1472340 (BalanceConc!26625 (fromList!899 p!2912)))))

(assert (=> d!1223123 (= (fromListB!2480 p!2912) lt!1472340)))

(declare-fun b!4127210 () Bool)

(declare-fun isBalanced!3720 (Conc!13515) Bool)

(assert (=> b!4127210 (= e!2560876 (isBalanced!3720 (fromList!899 p!2912)))))

(assert (= (and d!1223123 res!1686911) b!4127210))

(declare-fun m!4725659 () Bool)

(assert (=> d!1223123 m!4725659))

(declare-fun m!4725661 () Bool)

(assert (=> d!1223123 m!4725661))

(assert (=> b!4127210 m!4725661))

(assert (=> b!4127210 m!4725661))

(declare-fun m!4725663 () Bool)

(assert (=> b!4127210 m!4725663))

(assert (=> d!1222905 d!1223123))

(declare-fun bs!594900 () Bool)

(declare-fun d!1223125 () Bool)

(assert (= bs!594900 (and d!1223125 d!1222873)))

(declare-fun lambda!128775 () Int)

(assert (=> bs!594900 (= (and (= (toChars!9819 (transformation!7304 rBis!149)) (toChars!9819 (transformation!7304 r!4008))) (= (toValue!9960 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 r!4008)))) (= lambda!128775 lambda!128753))))

(declare-fun bs!594901 () Bool)

(assert (= bs!594901 (and d!1223125 d!1222993)))

(assert (=> bs!594901 (= (and (= (toChars!9819 (transformation!7304 rBis!149)) (toChars!9819 (transformation!7304 (h!50075 rules!3756)))) (= (toValue!9960 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 (h!50075 rules!3756))))) (= lambda!128775 lambda!128757))))

(declare-fun bs!594902 () Bool)

(assert (= bs!594902 (and d!1223125 d!1223047)))

(assert (=> bs!594902 (= (and (= (toChars!9819 (transformation!7304 rBis!149)) (toChars!9819 (transformation!7304 r!4008))) (= (toValue!9960 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 r!4008)))) (= lambda!128775 lambda!128772))))

(declare-fun bs!594903 () Bool)

(assert (= bs!594903 (and d!1223125 d!1223069)))

(assert (=> bs!594903 (= (and (= (toChars!9819 (transformation!7304 rBis!149)) (toChars!9819 (transformation!7304 (h!50075 rules!3756)))) (= (toValue!9960 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 (h!50075 rules!3756))))) (= lambda!128775 lambda!128774))))

(assert (=> d!1223125 true))

(assert (=> d!1223125 (< (dynLambda!19106 order!23521 (toChars!9819 (transformation!7304 rBis!149))) (dynLambda!19105 order!23519 lambda!128775))))

(assert (=> d!1223125 true))

(assert (=> d!1223125 (< (dynLambda!19104 order!23517 (toValue!9960 (transformation!7304 rBis!149))) (dynLambda!19105 order!23519 lambda!128775))))

(assert (=> d!1223125 (= (semiInverseModEq!3147 (toChars!9819 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 rBis!149))) (Forall!1548 lambda!128775))))

(declare-fun bs!594904 () Bool)

(assert (= bs!594904 d!1223125))

(declare-fun m!4725665 () Bool)

(assert (=> bs!594904 m!4725665))

(assert (=> d!1222913 d!1223125))

(assert (=> b!4126784 d!1223121))

(assert (=> b!4126777 d!1222867))

(declare-fun d!1223127 () Bool)

(assert (=> d!1223127 (= (isEmpty!26584 lt!1472042) (not ((_ is Some!9611) lt!1472042)))))

(assert (=> d!1222845 d!1223127))

(declare-fun d!1223129 () Bool)

(assert (=> d!1223129 (= (isEmpty!26582 (_1!24689 lt!1472043)) ((_ is Nil!44653) (_1!24689 lt!1472043)))))

(assert (=> d!1222845 d!1223129))

(declare-fun d!1223131 () Bool)

(declare-fun lt!1472390 () tuple2!43110)

(assert (=> d!1223131 (= (++!11568 (_1!24689 lt!1472390) (_2!24689 lt!1472390)) input!3238)))

(declare-fun sizeTr!300 (List!44777 Int) Int)

(assert (=> d!1223131 (= lt!1472390 (findLongestMatchInner!1503 (regex!7304 (h!50075 rules!3756)) Nil!44653 0 input!3238 input!3238 (sizeTr!300 input!3238 0)))))

(declare-fun lt!1472389 () Unit!63989)

(declare-fun lt!1472392 () Unit!63989)

(assert (=> d!1223131 (= lt!1472389 lt!1472392)))

(declare-fun lt!1472391 () List!44777)

(declare-fun lt!1472387 () Int)

(assert (=> d!1223131 (= (sizeTr!300 lt!1472391 lt!1472387) (+ (size!33066 lt!1472391) lt!1472387))))

(declare-fun lemmaSizeTrEqualsSize!299 (List!44777 Int) Unit!63989)

(assert (=> d!1223131 (= lt!1472392 (lemmaSizeTrEqualsSize!299 lt!1472391 lt!1472387))))

(assert (=> d!1223131 (= lt!1472387 0)))

(assert (=> d!1223131 (= lt!1472391 Nil!44653)))

(declare-fun lt!1472388 () Unit!63989)

(declare-fun lt!1472386 () Unit!63989)

(assert (=> d!1223131 (= lt!1472388 lt!1472386)))

(declare-fun lt!1472385 () Int)

(assert (=> d!1223131 (= (sizeTr!300 input!3238 lt!1472385) (+ (size!33066 input!3238) lt!1472385))))

(assert (=> d!1223131 (= lt!1472386 (lemmaSizeTrEqualsSize!299 input!3238 lt!1472385))))

(assert (=> d!1223131 (= lt!1472385 0)))

(assert (=> d!1223131 (validRegex!5492 (regex!7304 (h!50075 rules!3756)))))

(assert (=> d!1223131 (= (findLongestMatch!1416 (regex!7304 (h!50075 rules!3756)) input!3238) lt!1472390)))

(declare-fun bs!594905 () Bool)

(assert (= bs!594905 d!1223131))

(declare-fun m!4725667 () Bool)

(assert (=> bs!594905 m!4725667))

(declare-fun m!4725669 () Bool)

(assert (=> bs!594905 m!4725669))

(assert (=> bs!594905 m!4725017))

(declare-fun m!4725671 () Bool)

(assert (=> bs!594905 m!4725671))

(declare-fun m!4725673 () Bool)

(assert (=> bs!594905 m!4725673))

(declare-fun m!4725675 () Bool)

(assert (=> bs!594905 m!4725675))

(declare-fun m!4725677 () Bool)

(assert (=> bs!594905 m!4725677))

(assert (=> bs!594905 m!4725671))

(declare-fun m!4725679 () Bool)

(assert (=> bs!594905 m!4725679))

(assert (=> bs!594905 m!4725311))

(declare-fun m!4725681 () Bool)

(assert (=> bs!594905 m!4725681))

(assert (=> d!1222845 d!1223131))

(declare-fun d!1223133 () Bool)

(declare-fun res!1686918 () Bool)

(declare-fun e!2560889 () Bool)

(assert (=> d!1223133 (=> (not res!1686918) (not e!2560889))))

(assert (=> d!1223133 (= res!1686918 (validRegex!5492 (regex!7304 (h!50075 rules!3756))))))

(assert (=> d!1223133 (= (ruleValid!3112 thiss!25645 (h!50075 rules!3756)) e!2560889)))

(declare-fun b!4127229 () Bool)

(declare-fun res!1686919 () Bool)

(assert (=> b!4127229 (=> (not res!1686919) (not e!2560889))))

(assert (=> b!4127229 (= res!1686919 (not (nullable!4286 (regex!7304 (h!50075 rules!3756)))))))

(declare-fun b!4127230 () Bool)

(assert (=> b!4127230 (= e!2560889 (not (= (tag!8164 (h!50075 rules!3756)) (String!51421 ""))))))

(assert (= (and d!1223133 res!1686918) b!4127229))

(assert (= (and b!4127229 res!1686919) b!4127230))

(assert (=> d!1223133 m!4725311))

(assert (=> b!4127229 m!4725431))

(assert (=> d!1222845 d!1223133))

(declare-fun b!4127231 () Bool)

(declare-fun e!2560891 () Int)

(assert (=> b!4127231 (= e!2560891 0)))

(declare-fun b!4127233 () Bool)

(declare-fun e!2560890 () Int)

(assert (=> b!4127233 (= e!2560890 (+ 1 (getIndex!652 (t!341164 (t!341164 rules!3756)) r!4008)))))

(declare-fun b!4127234 () Bool)

(assert (=> b!4127234 (= e!2560890 (- 1))))

(declare-fun b!4127232 () Bool)

(assert (=> b!4127232 (= e!2560891 e!2560890)))

(declare-fun c!708403 () Bool)

(assert (=> b!4127232 (= c!708403 (and ((_ is Cons!44655) (t!341164 rules!3756)) (not (= (h!50075 (t!341164 rules!3756)) r!4008))))))

(declare-fun d!1223135 () Bool)

(declare-fun lt!1472393 () Int)

(assert (=> d!1223135 (>= lt!1472393 0)))

(assert (=> d!1223135 (= lt!1472393 e!2560891)))

(declare-fun c!708402 () Bool)

(assert (=> d!1223135 (= c!708402 (and ((_ is Cons!44655) (t!341164 rules!3756)) (= (h!50075 (t!341164 rules!3756)) r!4008)))))

(assert (=> d!1223135 (contains!8978 (t!341164 rules!3756) r!4008)))

(assert (=> d!1223135 (= (getIndex!652 (t!341164 rules!3756) r!4008) lt!1472393)))

(assert (= (and d!1223135 c!708402) b!4127231))

(assert (= (and d!1223135 (not c!708402)) b!4127232))

(assert (= (and b!4127232 c!708403) b!4127233))

(assert (= (and b!4127232 (not c!708403)) b!4127234))

(declare-fun m!4725703 () Bool)

(assert (=> b!4127233 m!4725703))

(assert (=> d!1223135 m!4724869))

(assert (=> b!4126393 d!1223135))

(declare-fun d!1223137 () Bool)

(assert (=> d!1223137 (= (inv!59245 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990))) (isBalanced!3720 (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990)))))))

(declare-fun bs!594907 () Bool)

(assert (= bs!594907 d!1223137))

(declare-fun m!4725731 () Bool)

(assert (=> bs!594907 m!4725731))

(assert (=> tb!247625 d!1223137))

(declare-fun d!1223143 () Bool)

(declare-fun lt!1472394 () Int)

(assert (=> d!1223143 (>= lt!1472394 0)))

(declare-fun e!2560893 () Int)

(assert (=> d!1223143 (= lt!1472394 e!2560893)))

(declare-fun c!708404 () Bool)

(assert (=> d!1223143 (= c!708404 ((_ is Nil!44653) (_2!24687 (get!14570 lt!1472095))))))

(assert (=> d!1223143 (= (size!33066 (_2!24687 (get!14570 lt!1472095))) lt!1472394)))

(declare-fun b!4127235 () Bool)

(assert (=> b!4127235 (= e!2560893 0)))

(declare-fun b!4127236 () Bool)

(assert (=> b!4127236 (= e!2560893 (+ 1 (size!33066 (t!341162 (_2!24687 (get!14570 lt!1472095))))))))

(assert (= (and d!1223143 c!708404) b!4127235))

(assert (= (and d!1223143 (not c!708404)) b!4127236))

(declare-fun m!4725735 () Bool)

(assert (=> b!4127236 m!4725735))

(assert (=> b!4126701 d!1223143))

(assert (=> b!4126701 d!1222959))

(assert (=> b!4126701 d!1222969))

(declare-fun bs!594911 () Bool)

(declare-fun d!1223145 () Bool)

(assert (= bs!594911 (and d!1223145 d!1222831)))

(declare-fun lambda!128779 () Int)

(assert (=> bs!594911 (= lambda!128779 lambda!128747)))

(assert (=> d!1223145 true))

(declare-fun lt!1472399 () Bool)

(assert (=> d!1223145 (= lt!1472399 (rulesValidInductive!2698 thiss!25645 rules!3756))))

(assert (=> d!1223145 (= lt!1472399 (forall!8450 rules!3756 lambda!128779))))

(assert (=> d!1223145 (= (rulesValid!2862 thiss!25645 rules!3756) lt!1472399)))

(declare-fun bs!594912 () Bool)

(assert (= bs!594912 d!1223145))

(assert (=> bs!594912 m!4725179))

(declare-fun m!4725745 () Bool)

(assert (=> bs!594912 m!4725745))

(assert (=> d!1222929 d!1223145))

(assert (=> d!1222925 d!1223105))

(declare-fun bs!594913 () Bool)

(declare-fun d!1223151 () Bool)

(assert (= bs!594913 (and d!1223151 d!1222831)))

(declare-fun lambda!128780 () Int)

(assert (=> bs!594913 (= lambda!128780 lambda!128747)))

(declare-fun bs!594914 () Bool)

(assert (= bs!594914 (and d!1223151 d!1223145)))

(assert (=> bs!594914 (= lambda!128780 lambda!128779)))

(assert (=> d!1223151 true))

(declare-fun lt!1472400 () Bool)

(assert (=> d!1223151 (= lt!1472400 (forall!8450 (t!341164 (t!341164 rules!3756)) lambda!128780))))

(declare-fun e!2560898 () Bool)

(assert (=> d!1223151 (= lt!1472400 e!2560898)))

(declare-fun res!1686920 () Bool)

(assert (=> d!1223151 (=> res!1686920 e!2560898)))

(assert (=> d!1223151 (= res!1686920 (not ((_ is Cons!44655) (t!341164 (t!341164 rules!3756)))))))

(assert (=> d!1223151 (= (rulesValidInductive!2698 thiss!25645 (t!341164 (t!341164 rules!3756))) lt!1472400)))

(declare-fun b!4127241 () Bool)

(declare-fun e!2560897 () Bool)

(assert (=> b!4127241 (= e!2560898 e!2560897)))

(declare-fun res!1686921 () Bool)

(assert (=> b!4127241 (=> (not res!1686921) (not e!2560897))))

(assert (=> b!4127241 (= res!1686921 (ruleValid!3112 thiss!25645 (h!50075 (t!341164 (t!341164 rules!3756)))))))

(declare-fun b!4127242 () Bool)

(assert (=> b!4127242 (= e!2560897 (rulesValidInductive!2698 thiss!25645 (t!341164 (t!341164 (t!341164 rules!3756)))))))

(assert (= (and d!1223151 (not res!1686920)) b!4127241))

(assert (= (and b!4127241 res!1686921) b!4127242))

(declare-fun m!4725755 () Bool)

(assert (=> d!1223151 m!4725755))

(declare-fun m!4725757 () Bool)

(assert (=> b!4127241 m!4725757))

(declare-fun m!4725759 () Bool)

(assert (=> b!4127242 m!4725759))

(assert (=> b!4126445 d!1223151))

(declare-fun d!1223155 () Bool)

(assert (=> d!1223155 (= (isEmpty!26584 lt!1472095) (not ((_ is Some!9611) lt!1472095)))))

(assert (=> d!1222877 d!1223155))

(declare-fun b!4127246 () Bool)

(declare-fun e!2560899 () Bool)

(assert (=> b!4127246 (= e!2560899 (>= (size!33066 input!3238) (size!33066 input!3238)))))

(declare-fun d!1223157 () Bool)

(assert (=> d!1223157 e!2560899))

(declare-fun res!1686925 () Bool)

(assert (=> d!1223157 (=> res!1686925 e!2560899)))

(declare-fun lt!1472401 () Bool)

(assert (=> d!1223157 (= res!1686925 (not lt!1472401))))

(declare-fun e!2560901 () Bool)

(assert (=> d!1223157 (= lt!1472401 e!2560901)))

(declare-fun res!1686923 () Bool)

(assert (=> d!1223157 (=> res!1686923 e!2560901)))

(assert (=> d!1223157 (= res!1686923 ((_ is Nil!44653) input!3238))))

(assert (=> d!1223157 (= (isPrefix!4239 input!3238 input!3238) lt!1472401)))

(declare-fun b!4127243 () Bool)

(declare-fun e!2560900 () Bool)

(assert (=> b!4127243 (= e!2560901 e!2560900)))

(declare-fun res!1686922 () Bool)

(assert (=> b!4127243 (=> (not res!1686922) (not e!2560900))))

(assert (=> b!4127243 (= res!1686922 (not ((_ is Nil!44653) input!3238)))))

(declare-fun b!4127244 () Bool)

(declare-fun res!1686924 () Bool)

(assert (=> b!4127244 (=> (not res!1686924) (not e!2560900))))

(assert (=> b!4127244 (= res!1686924 (= (head!8694 input!3238) (head!8694 input!3238)))))

(declare-fun b!4127245 () Bool)

(assert (=> b!4127245 (= e!2560900 (isPrefix!4239 (tail!6467 input!3238) (tail!6467 input!3238)))))

(assert (= (and d!1223157 (not res!1686923)) b!4127243))

(assert (= (and b!4127243 res!1686922) b!4127244))

(assert (= (and b!4127244 res!1686924) b!4127245))

(assert (= (and d!1223157 (not res!1686925)) b!4127246))

(assert (=> b!4127246 m!4725017))

(assert (=> b!4127246 m!4725017))

(assert (=> b!4127244 m!4725199))

(assert (=> b!4127244 m!4725199))

(assert (=> b!4127245 m!4725075))

(assert (=> b!4127245 m!4725075))

(assert (=> b!4127245 m!4725075))

(assert (=> b!4127245 m!4725075))

(declare-fun m!4725761 () Bool)

(assert (=> b!4127245 m!4725761))

(assert (=> d!1222877 d!1223157))

(declare-fun d!1223159 () Bool)

(assert (=> d!1223159 (isPrefix!4239 input!3238 input!3238)))

(declare-fun lt!1472406 () Unit!63989)

(declare-fun choose!25236 (List!44777 List!44777) Unit!63989)

(assert (=> d!1223159 (= lt!1472406 (choose!25236 input!3238 input!3238))))

(assert (=> d!1223159 (= (lemmaIsPrefixRefl!2747 input!3238 input!3238) lt!1472406)))

(declare-fun bs!594915 () Bool)

(assert (= bs!594915 d!1223159))

(assert (=> bs!594915 m!4725175))

(declare-fun m!4725763 () Bool)

(assert (=> bs!594915 m!4725763))

(assert (=> d!1222877 d!1223159))

(declare-fun bs!594917 () Bool)

(declare-fun d!1223161 () Bool)

(assert (= bs!594917 (and d!1223161 d!1222831)))

(declare-fun lambda!128781 () Int)

(assert (=> bs!594917 (= lambda!128781 lambda!128747)))

(declare-fun bs!594919 () Bool)

(assert (= bs!594919 (and d!1223161 d!1223145)))

(assert (=> bs!594919 (= lambda!128781 lambda!128779)))

(declare-fun bs!594920 () Bool)

(assert (= bs!594920 (and d!1223161 d!1223151)))

(assert (=> bs!594920 (= lambda!128781 lambda!128780)))

(assert (=> d!1223161 true))

(declare-fun lt!1472408 () Bool)

(assert (=> d!1223161 (= lt!1472408 (forall!8450 rules!3756 lambda!128781))))

(declare-fun e!2560903 () Bool)

(assert (=> d!1223161 (= lt!1472408 e!2560903)))

(declare-fun res!1686926 () Bool)

(assert (=> d!1223161 (=> res!1686926 e!2560903)))

(assert (=> d!1223161 (= res!1686926 (not ((_ is Cons!44655) rules!3756)))))

(assert (=> d!1223161 (= (rulesValidInductive!2698 thiss!25645 rules!3756) lt!1472408)))

(declare-fun b!4127247 () Bool)

(declare-fun e!2560902 () Bool)

(assert (=> b!4127247 (= e!2560903 e!2560902)))

(declare-fun res!1686927 () Bool)

(assert (=> b!4127247 (=> (not res!1686927) (not e!2560902))))

(assert (=> b!4127247 (= res!1686927 (ruleValid!3112 thiss!25645 (h!50075 rules!3756)))))

(declare-fun b!4127248 () Bool)

(assert (=> b!4127248 (= e!2560902 (rulesValidInductive!2698 thiss!25645 (t!341164 rules!3756)))))

(assert (= (and d!1223161 (not res!1686926)) b!4127247))

(assert (= (and b!4127247 res!1686927) b!4127248))

(declare-fun m!4725771 () Bool)

(assert (=> d!1223161 m!4725771))

(assert (=> b!4127247 m!4725049))

(assert (=> b!4127248 m!4724857))

(assert (=> d!1222877 d!1223161))

(declare-fun d!1223167 () Bool)

(assert (=> d!1223167 (= (isDefined!7241 lt!1472095) (not (isEmpty!26584 lt!1472095)))))

(declare-fun bs!594921 () Bool)

(assert (= bs!594921 d!1223167))

(assert (=> bs!594921 m!4725173))

(assert (=> b!4126702 d!1223167))

(declare-fun bs!594922 () Bool)

(declare-fun d!1223169 () Bool)

(assert (= bs!594922 (and d!1223169 d!1222961)))

(declare-fun lambda!128782 () Int)

(assert (=> bs!594922 (= (= (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (toValue!9960 (transformation!7304 r!4008))) (= lambda!128782 lambda!128756))))

(declare-fun bs!594923 () Bool)

(assert (= bs!594923 (and d!1223169 d!1223065)))

(assert (=> bs!594923 (= (= (toValue!9960 (transformation!7304 (h!50075 rules!3756))) (toValue!9960 (transformation!7304 rBis!149))) (= lambda!128782 lambda!128773))))

(assert (=> d!1223169 true))

(assert (=> d!1223169 (< (dynLambda!19104 order!23517 (toValue!9960 (transformation!7304 (h!50075 rules!3756)))) (dynLambda!19109 order!23523 lambda!128782))))

(assert (=> d!1223169 (= (equivClasses!3046 (toChars!9819 (transformation!7304 (h!50075 rules!3756))) (toValue!9960 (transformation!7304 (h!50075 rules!3756)))) (Forall2!1146 lambda!128782))))

(declare-fun bs!594924 () Bool)

(assert (= bs!594924 d!1223169))

(declare-fun m!4725781 () Bool)

(assert (=> bs!594924 m!4725781))

(assert (=> b!4126783 d!1223169))

(assert (=> b!4126724 d!1222963))

(declare-fun d!1223173 () Bool)

(assert (=> d!1223173 (= (head!8694 input!3238) (h!50073 input!3238))))

(assert (=> b!4126724 d!1223173))

(declare-fun b!4127250 () Bool)

(declare-fun e!2560905 () Bool)

(declare-fun tp!1257577 () Bool)

(assert (=> b!4127250 (= e!2560905 (and tp_is_empty!21341 tp!1257577))))

(assert (=> b!4126801 (= tp!1257544 e!2560905)))

(assert (= (and b!4126801 ((_ is Cons!44653) (t!341162 (t!341162 input!3238)))) b!4127250))

(declare-fun b!4127253 () Bool)

(declare-fun b_free!116903 () Bool)

(declare-fun b_next!117607 () Bool)

(assert (=> b!4127253 (= b_free!116903 (not b_next!117607))))

(declare-fun tb!247719 () Bool)

(declare-fun t!341280 () Bool)

(assert (=> (and b!4127253 (= (toValue!9960 (transformation!7304 (h!50075 (t!341164 (t!341164 rules!3756))))) (toValue!9960 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042)))))) t!341280) tb!247719))

(declare-fun result!301008 () Bool)

(assert (= result!301008 result!300976))

(assert (=> d!1223115 t!341280))

(declare-fun tb!247721 () Bool)

(declare-fun t!341282 () Bool)

(assert (=> (and b!4127253 (= (toValue!9960 (transformation!7304 (h!50075 (t!341164 (t!341164 rules!3756))))) (toValue!9960 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))))) t!341282) tb!247721))

(declare-fun result!301010 () Bool)

(assert (= result!301010 result!300968))

(assert (=> d!1223085 t!341282))

(declare-fun tb!247723 () Bool)

(declare-fun t!341284 () Bool)

(assert (=> (and b!4127253 (= (toValue!9960 (transformation!7304 (h!50075 (t!341164 (t!341164 rules!3756))))) (toValue!9960 (transformation!7304 r!4008))) t!341284) tb!247723))

(declare-fun result!301012 () Bool)

(assert (= result!301012 result!300892))

(assert (=> d!1222873 t!341284))

(assert (=> d!1222869 t!341284))

(declare-fun t!341286 () Bool)

(declare-fun tb!247725 () Bool)

(assert (=> (and b!4127253 (= (toValue!9960 (transformation!7304 (h!50075 (t!341164 (t!341164 rules!3756))))) (toValue!9960 (transformation!7304 (h!50075 rules!3756)))) t!341286) tb!247725))

(declare-fun result!301014 () Bool)

(assert (= result!301014 result!300952))

(assert (=> d!1223043 t!341286))

(assert (=> d!1222993 t!341286))

(declare-fun tp!1257578 () Bool)

(declare-fun b_and!319633 () Bool)

(assert (=> b!4127253 (= tp!1257578 (and (=> t!341286 result!301014) (=> t!341284 result!301012) (=> t!341282 result!301010) (=> t!341280 result!301008) b_and!319633))))

(declare-fun b_free!116905 () Bool)

(declare-fun b_next!117609 () Bool)

(assert (=> b!4127253 (= b_free!116905 (not b_next!117609))))

(declare-fun t!341288 () Bool)

(declare-fun tb!247727 () Bool)

(assert (=> (and b!4127253 (= (toChars!9819 (transformation!7304 (h!50075 (t!341164 (t!341164 rules!3756))))) (toChars!9819 (transformation!7304 r!4008))) t!341288) tb!247727))

(declare-fun result!301016 () Bool)

(assert (= result!301016 result!300900))

(assert (=> d!1222873 t!341288))

(declare-fun t!341290 () Bool)

(declare-fun tb!247729 () Bool)

(assert (=> (and b!4127253 (= (toChars!9819 (transformation!7304 (h!50075 (t!341164 (t!341164 rules!3756))))) (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472042)))))) t!341290) tb!247729))

(declare-fun result!301018 () Bool)

(assert (= result!301018 result!300928))

(assert (=> d!1222949 t!341290))

(declare-fun tb!247731 () Bool)

(declare-fun t!341292 () Bool)

(assert (=> (and b!4127253 (= (toChars!9819 (transformation!7304 (h!50075 (t!341164 (t!341164 rules!3756))))) (toChars!9819 (transformation!7304 (rule!10390 (_1!24687 (get!14570 lt!1472095)))))) t!341292) tb!247731))

(declare-fun result!301020 () Bool)

(assert (= result!301020 result!300936))

(assert (=> d!1222957 t!341292))

(declare-fun t!341294 () Bool)

(declare-fun tb!247733 () Bool)

(assert (=> (and b!4127253 (= (toChars!9819 (transformation!7304 (h!50075 (t!341164 (t!341164 rules!3756))))) (toChars!9819 (transformation!7304 (h!50075 rules!3756)))) t!341294) tb!247733))

(declare-fun result!301022 () Bool)

(assert (= result!301022 result!300944))

(assert (=> d!1222993 t!341294))

(declare-fun b_and!319635 () Bool)

(declare-fun tp!1257581 () Bool)

(assert (=> b!4127253 (= tp!1257581 (and (=> t!341288 result!301016) (=> t!341290 result!301018) (=> t!341292 result!301020) (=> t!341294 result!301022) b_and!319635))))

(declare-fun e!2560906 () Bool)

(assert (=> b!4127253 (= e!2560906 (and tp!1257578 tp!1257581))))

(declare-fun b!4127252 () Bool)

(declare-fun tp!1257579 () Bool)

(declare-fun e!2560907 () Bool)

(assert (=> b!4127252 (= e!2560907 (and tp!1257579 (inv!59239 (tag!8164 (h!50075 (t!341164 (t!341164 rules!3756))))) (inv!59241 (transformation!7304 (h!50075 (t!341164 (t!341164 rules!3756))))) e!2560906))))

(declare-fun b!4127251 () Bool)

(declare-fun e!2560909 () Bool)

(declare-fun tp!1257580 () Bool)

(assert (=> b!4127251 (= e!2560909 (and e!2560907 tp!1257580))))

(assert (=> b!4126794 (= tp!1257540 e!2560909)))

(assert (= b!4127252 b!4127253))

(assert (= b!4127251 b!4127252))

(assert (= (and b!4126794 ((_ is Cons!44655) (t!341164 (t!341164 rules!3756)))) b!4127251))

(declare-fun m!4725789 () Bool)

(assert (=> b!4127252 m!4725789))

(declare-fun m!4725791 () Bool)

(assert (=> b!4127252 m!4725791))

(declare-fun tp!1257588 () Bool)

(declare-fun tp!1257590 () Bool)

(declare-fun b!4127269 () Bool)

(declare-fun e!2560920 () Bool)

(assert (=> b!4127269 (= e!2560920 (and (inv!59244 (left!33441 (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990))))) tp!1257588 (inv!59244 (right!33771 (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990))))) tp!1257590))))

(declare-fun b!4127271 () Bool)

(declare-fun e!2560919 () Bool)

(declare-fun tp!1257589 () Bool)

(assert (=> b!4127271 (= e!2560919 tp!1257589)))

(declare-fun b!4127270 () Bool)

(declare-fun inv!59250 (IArray!27035) Bool)

(assert (=> b!4127270 (= e!2560920 (and (inv!59250 (xs!16821 (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990))))) e!2560919))))

(assert (=> b!4126584 (= tp!1257488 (and (inv!59244 (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990)))) e!2560920))))

(assert (= (and b!4126584 ((_ is Node!13515) (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990))))) b!4127269))

(assert (= b!4127270 b!4127271))

(assert (= (and b!4126584 ((_ is Leaf!20882) (c!708222 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990))))) b!4127270))

(declare-fun m!4725807 () Bool)

(assert (=> b!4127269 m!4725807))

(declare-fun m!4725809 () Bool)

(assert (=> b!4127269 m!4725809))

(declare-fun m!4725811 () Bool)

(assert (=> b!4127270 m!4725811))

(assert (=> b!4126584 m!4725109))

(declare-fun b!4127272 () Bool)

(declare-fun e!2560921 () Bool)

(assert (=> b!4127272 (= e!2560921 tp_is_empty!21341)))

(declare-fun b!4127275 () Bool)

(declare-fun tp!1257591 () Bool)

(declare-fun tp!1257592 () Bool)

(assert (=> b!4127275 (= e!2560921 (and tp!1257591 tp!1257592))))

(declare-fun b!4127274 () Bool)

(declare-fun tp!1257593 () Bool)

(assert (=> b!4127274 (= e!2560921 tp!1257593)))

(assert (=> b!4126795 (= tp!1257539 e!2560921)))

(declare-fun b!4127273 () Bool)

(declare-fun tp!1257594 () Bool)

(declare-fun tp!1257595 () Bool)

(assert (=> b!4127273 (= e!2560921 (and tp!1257594 tp!1257595))))

(assert (= (and b!4126795 ((_ is ElementMatch!12209) (regex!7304 (h!50075 (t!341164 rules!3756))))) b!4127272))

(assert (= (and b!4126795 ((_ is Concat!19744) (regex!7304 (h!50075 (t!341164 rules!3756))))) b!4127273))

(assert (= (and b!4126795 ((_ is Star!12209) (regex!7304 (h!50075 (t!341164 rules!3756))))) b!4127274))

(assert (= (and b!4126795 ((_ is Union!12209) (regex!7304 (h!50075 (t!341164 rules!3756))))) b!4127275))

(declare-fun b!4127278 () Bool)

(declare-fun e!2560923 () Bool)

(assert (=> b!4127278 (= e!2560923 tp_is_empty!21341)))

(declare-fun b!4127281 () Bool)

(declare-fun tp!1257596 () Bool)

(declare-fun tp!1257597 () Bool)

(assert (=> b!4127281 (= e!2560923 (and tp!1257596 tp!1257597))))

(declare-fun b!4127280 () Bool)

(declare-fun tp!1257598 () Bool)

(assert (=> b!4127280 (= e!2560923 tp!1257598)))

(assert (=> b!4126813 (= tp!1257558 e!2560923)))

(declare-fun b!4127279 () Bool)

(declare-fun tp!1257599 () Bool)

(declare-fun tp!1257600 () Bool)

(assert (=> b!4127279 (= e!2560923 (and tp!1257599 tp!1257600))))

(assert (= (and b!4126813 ((_ is ElementMatch!12209) (regOne!24930 (regex!7304 r!4008)))) b!4127278))

(assert (= (and b!4126813 ((_ is Concat!19744) (regOne!24930 (regex!7304 r!4008)))) b!4127279))

(assert (= (and b!4126813 ((_ is Star!12209) (regOne!24930 (regex!7304 r!4008)))) b!4127280))

(assert (= (and b!4126813 ((_ is Union!12209) (regOne!24930 (regex!7304 r!4008)))) b!4127281))

(declare-fun b!4127282 () Bool)

(declare-fun e!2560924 () Bool)

(assert (=> b!4127282 (= e!2560924 tp_is_empty!21341)))

(declare-fun b!4127285 () Bool)

(declare-fun tp!1257601 () Bool)

(declare-fun tp!1257602 () Bool)

(assert (=> b!4127285 (= e!2560924 (and tp!1257601 tp!1257602))))

(declare-fun b!4127284 () Bool)

(declare-fun tp!1257603 () Bool)

(assert (=> b!4127284 (= e!2560924 tp!1257603)))

(assert (=> b!4126813 (= tp!1257559 e!2560924)))

(declare-fun b!4127283 () Bool)

(declare-fun tp!1257604 () Bool)

(declare-fun tp!1257605 () Bool)

(assert (=> b!4127283 (= e!2560924 (and tp!1257604 tp!1257605))))

(assert (= (and b!4126813 ((_ is ElementMatch!12209) (regTwo!24930 (regex!7304 r!4008)))) b!4127282))

(assert (= (and b!4126813 ((_ is Concat!19744) (regTwo!24930 (regex!7304 r!4008)))) b!4127283))

(assert (= (and b!4126813 ((_ is Star!12209) (regTwo!24930 (regex!7304 r!4008)))) b!4127284))

(assert (= (and b!4126813 ((_ is Union!12209) (regTwo!24930 (regex!7304 r!4008)))) b!4127285))

(declare-fun b!4127300 () Bool)

(declare-fun e!2560932 () Bool)

(assert (=> b!4127300 (= e!2560932 tp_is_empty!21341)))

(declare-fun b!4127303 () Bool)

(declare-fun tp!1257606 () Bool)

(declare-fun tp!1257607 () Bool)

(assert (=> b!4127303 (= e!2560932 (and tp!1257606 tp!1257607))))

(declare-fun b!4127302 () Bool)

(declare-fun tp!1257608 () Bool)

(assert (=> b!4127302 (= e!2560932 tp!1257608)))

(assert (=> b!4126818 (= tp!1257564 e!2560932)))

(declare-fun b!4127301 () Bool)

(declare-fun tp!1257609 () Bool)

(declare-fun tp!1257610 () Bool)

(assert (=> b!4127301 (= e!2560932 (and tp!1257609 tp!1257610))))

(assert (= (and b!4126818 ((_ is ElementMatch!12209) (regOne!24930 (regex!7304 (h!50075 rules!3756))))) b!4127300))

(assert (= (and b!4126818 ((_ is Concat!19744) (regOne!24930 (regex!7304 (h!50075 rules!3756))))) b!4127301))

(assert (= (and b!4126818 ((_ is Star!12209) (regOne!24930 (regex!7304 (h!50075 rules!3756))))) b!4127302))

(assert (= (and b!4126818 ((_ is Union!12209) (regOne!24930 (regex!7304 (h!50075 rules!3756))))) b!4127303))

(declare-fun b!4127304 () Bool)

(declare-fun e!2560933 () Bool)

(assert (=> b!4127304 (= e!2560933 tp_is_empty!21341)))

(declare-fun b!4127307 () Bool)

(declare-fun tp!1257611 () Bool)

(declare-fun tp!1257612 () Bool)

(assert (=> b!4127307 (= e!2560933 (and tp!1257611 tp!1257612))))

(declare-fun b!4127306 () Bool)

(declare-fun tp!1257613 () Bool)

(assert (=> b!4127306 (= e!2560933 tp!1257613)))

(assert (=> b!4126818 (= tp!1257565 e!2560933)))

(declare-fun b!4127305 () Bool)

(declare-fun tp!1257614 () Bool)

(declare-fun tp!1257615 () Bool)

(assert (=> b!4127305 (= e!2560933 (and tp!1257614 tp!1257615))))

(assert (= (and b!4126818 ((_ is ElementMatch!12209) (regTwo!24930 (regex!7304 (h!50075 rules!3756))))) b!4127304))

(assert (= (and b!4126818 ((_ is Concat!19744) (regTwo!24930 (regex!7304 (h!50075 rules!3756))))) b!4127305))

(assert (= (and b!4126818 ((_ is Star!12209) (regTwo!24930 (regex!7304 (h!50075 rules!3756))))) b!4127306))

(assert (= (and b!4126818 ((_ is Union!12209) (regTwo!24930 (regex!7304 (h!50075 rules!3756))))) b!4127307))

(declare-fun b!4127308 () Bool)

(declare-fun e!2560934 () Bool)

(assert (=> b!4127308 (= e!2560934 tp_is_empty!21341)))

(declare-fun b!4127311 () Bool)

(declare-fun tp!1257616 () Bool)

(declare-fun tp!1257617 () Bool)

(assert (=> b!4127311 (= e!2560934 (and tp!1257616 tp!1257617))))

(declare-fun b!4127310 () Bool)

(declare-fun tp!1257618 () Bool)

(assert (=> b!4127310 (= e!2560934 tp!1257618)))

(assert (=> b!4126823 (= tp!1257568 e!2560934)))

(declare-fun b!4127309 () Bool)

(declare-fun tp!1257619 () Bool)

(declare-fun tp!1257620 () Bool)

(assert (=> b!4127309 (= e!2560934 (and tp!1257619 tp!1257620))))

(assert (= (and b!4126823 ((_ is ElementMatch!12209) (reg!12538 (regex!7304 rBis!149)))) b!4127308))

(assert (= (and b!4126823 ((_ is Concat!19744) (reg!12538 (regex!7304 rBis!149)))) b!4127309))

(assert (= (and b!4126823 ((_ is Star!12209) (reg!12538 (regex!7304 rBis!149)))) b!4127310))

(assert (= (and b!4126823 ((_ is Union!12209) (reg!12538 (regex!7304 rBis!149)))) b!4127311))

(declare-fun b!4127312 () Bool)

(declare-fun e!2560935 () Bool)

(assert (=> b!4127312 (= e!2560935 tp_is_empty!21341)))

(declare-fun b!4127315 () Bool)

(declare-fun tp!1257621 () Bool)

(declare-fun tp!1257622 () Bool)

(assert (=> b!4127315 (= e!2560935 (and tp!1257621 tp!1257622))))

(declare-fun b!4127314 () Bool)

(declare-fun tp!1257623 () Bool)

(assert (=> b!4127314 (= e!2560935 tp!1257623)))

(assert (=> b!4126819 (= tp!1257563 e!2560935)))

(declare-fun b!4127313 () Bool)

(declare-fun tp!1257624 () Bool)

(declare-fun tp!1257625 () Bool)

(assert (=> b!4127313 (= e!2560935 (and tp!1257624 tp!1257625))))

(assert (= (and b!4126819 ((_ is ElementMatch!12209) (reg!12538 (regex!7304 (h!50075 rules!3756))))) b!4127312))

(assert (= (and b!4126819 ((_ is Concat!19744) (reg!12538 (regex!7304 (h!50075 rules!3756))))) b!4127313))

(assert (= (and b!4126819 ((_ is Star!12209) (reg!12538 (regex!7304 (h!50075 rules!3756))))) b!4127314))

(assert (= (and b!4126819 ((_ is Union!12209) (reg!12538 (regex!7304 (h!50075 rules!3756))))) b!4127315))

(declare-fun b!4127316 () Bool)

(declare-fun e!2560936 () Bool)

(assert (=> b!4127316 (= e!2560936 tp_is_empty!21341)))

(declare-fun b!4127319 () Bool)

(declare-fun tp!1257626 () Bool)

(declare-fun tp!1257627 () Bool)

(assert (=> b!4127319 (= e!2560936 (and tp!1257626 tp!1257627))))

(declare-fun b!4127318 () Bool)

(declare-fun tp!1257628 () Bool)

(assert (=> b!4127318 (= e!2560936 tp!1257628)))

(assert (=> b!4126814 (= tp!1257557 e!2560936)))

(declare-fun b!4127317 () Bool)

(declare-fun tp!1257629 () Bool)

(declare-fun tp!1257630 () Bool)

(assert (=> b!4127317 (= e!2560936 (and tp!1257629 tp!1257630))))

(assert (= (and b!4126814 ((_ is ElementMatch!12209) (reg!12538 (regex!7304 r!4008)))) b!4127316))

(assert (= (and b!4126814 ((_ is Concat!19744) (reg!12538 (regex!7304 r!4008)))) b!4127317))

(assert (= (and b!4126814 ((_ is Star!12209) (reg!12538 (regex!7304 r!4008)))) b!4127318))

(assert (= (and b!4126814 ((_ is Union!12209) (reg!12538 (regex!7304 r!4008)))) b!4127319))

(declare-fun b!4127320 () Bool)

(declare-fun e!2560937 () Bool)

(assert (=> b!4127320 (= e!2560937 tp_is_empty!21341)))

(declare-fun b!4127323 () Bool)

(declare-fun tp!1257631 () Bool)

(declare-fun tp!1257632 () Bool)

(assert (=> b!4127323 (= e!2560937 (and tp!1257631 tp!1257632))))

(declare-fun b!4127322 () Bool)

(declare-fun tp!1257633 () Bool)

(assert (=> b!4127322 (= e!2560937 tp!1257633)))

(assert (=> b!4126822 (= tp!1257569 e!2560937)))

(declare-fun b!4127321 () Bool)

(declare-fun tp!1257634 () Bool)

(declare-fun tp!1257635 () Bool)

(assert (=> b!4127321 (= e!2560937 (and tp!1257634 tp!1257635))))

(assert (= (and b!4126822 ((_ is ElementMatch!12209) (regOne!24930 (regex!7304 rBis!149)))) b!4127320))

(assert (= (and b!4126822 ((_ is Concat!19744) (regOne!24930 (regex!7304 rBis!149)))) b!4127321))

(assert (= (and b!4126822 ((_ is Star!12209) (regOne!24930 (regex!7304 rBis!149)))) b!4127322))

(assert (= (and b!4126822 ((_ is Union!12209) (regOne!24930 (regex!7304 rBis!149)))) b!4127323))

(declare-fun b!4127324 () Bool)

(declare-fun e!2560938 () Bool)

(assert (=> b!4127324 (= e!2560938 tp_is_empty!21341)))

(declare-fun b!4127327 () Bool)

(declare-fun tp!1257636 () Bool)

(declare-fun tp!1257637 () Bool)

(assert (=> b!4127327 (= e!2560938 (and tp!1257636 tp!1257637))))

(declare-fun b!4127326 () Bool)

(declare-fun tp!1257638 () Bool)

(assert (=> b!4127326 (= e!2560938 tp!1257638)))

(assert (=> b!4126822 (= tp!1257570 e!2560938)))

(declare-fun b!4127325 () Bool)

(declare-fun tp!1257639 () Bool)

(declare-fun tp!1257640 () Bool)

(assert (=> b!4127325 (= e!2560938 (and tp!1257639 tp!1257640))))

(assert (= (and b!4126822 ((_ is ElementMatch!12209) (regTwo!24930 (regex!7304 rBis!149)))) b!4127324))

(assert (= (and b!4126822 ((_ is Concat!19744) (regTwo!24930 (regex!7304 rBis!149)))) b!4127325))

(assert (= (and b!4126822 ((_ is Star!12209) (regTwo!24930 (regex!7304 rBis!149)))) b!4127326))

(assert (= (and b!4126822 ((_ is Union!12209) (regTwo!24930 (regex!7304 rBis!149)))) b!4127327))

(declare-fun b!4127328 () Bool)

(declare-fun e!2560939 () Bool)

(assert (=> b!4127328 (= e!2560939 tp_is_empty!21341)))

(declare-fun b!4127331 () Bool)

(declare-fun tp!1257641 () Bool)

(declare-fun tp!1257642 () Bool)

(assert (=> b!4127331 (= e!2560939 (and tp!1257641 tp!1257642))))

(declare-fun b!4127330 () Bool)

(declare-fun tp!1257643 () Bool)

(assert (=> b!4127330 (= e!2560939 tp!1257643)))

(assert (=> b!4126815 (= tp!1257555 e!2560939)))

(declare-fun b!4127329 () Bool)

(declare-fun tp!1257644 () Bool)

(declare-fun tp!1257645 () Bool)

(assert (=> b!4127329 (= e!2560939 (and tp!1257644 tp!1257645))))

(assert (= (and b!4126815 ((_ is ElementMatch!12209) (regOne!24931 (regex!7304 r!4008)))) b!4127328))

(assert (= (and b!4126815 ((_ is Concat!19744) (regOne!24931 (regex!7304 r!4008)))) b!4127329))

(assert (= (and b!4126815 ((_ is Star!12209) (regOne!24931 (regex!7304 r!4008)))) b!4127330))

(assert (= (and b!4126815 ((_ is Union!12209) (regOne!24931 (regex!7304 r!4008)))) b!4127331))

(declare-fun b!4127332 () Bool)

(declare-fun e!2560940 () Bool)

(assert (=> b!4127332 (= e!2560940 tp_is_empty!21341)))

(declare-fun b!4127335 () Bool)

(declare-fun tp!1257646 () Bool)

(declare-fun tp!1257647 () Bool)

(assert (=> b!4127335 (= e!2560940 (and tp!1257646 tp!1257647))))

(declare-fun b!4127334 () Bool)

(declare-fun tp!1257648 () Bool)

(assert (=> b!4127334 (= e!2560940 tp!1257648)))

(assert (=> b!4126815 (= tp!1257556 e!2560940)))

(declare-fun b!4127333 () Bool)

(declare-fun tp!1257649 () Bool)

(declare-fun tp!1257650 () Bool)

(assert (=> b!4127333 (= e!2560940 (and tp!1257649 tp!1257650))))

(assert (= (and b!4126815 ((_ is ElementMatch!12209) (regTwo!24931 (regex!7304 r!4008)))) b!4127332))

(assert (= (and b!4126815 ((_ is Concat!19744) (regTwo!24931 (regex!7304 r!4008)))) b!4127333))

(assert (= (and b!4126815 ((_ is Star!12209) (regTwo!24931 (regex!7304 r!4008)))) b!4127334))

(assert (= (and b!4126815 ((_ is Union!12209) (regTwo!24931 (regex!7304 r!4008)))) b!4127335))

(declare-fun b!4127336 () Bool)

(declare-fun e!2560941 () Bool)

(declare-fun tp!1257651 () Bool)

(assert (=> b!4127336 (= e!2560941 (and tp_is_empty!21341 tp!1257651))))

(assert (=> b!4126816 (= tp!1257560 e!2560941)))

(assert (= (and b!4126816 ((_ is Cons!44653) (t!341162 (t!341162 p!2912)))) b!4127336))

(declare-fun b!4127339 () Bool)

(declare-fun e!2560945 () Bool)

(assert (=> b!4127339 (= e!2560945 tp_is_empty!21341)))

(declare-fun b!4127344 () Bool)

(declare-fun tp!1257652 () Bool)

(declare-fun tp!1257653 () Bool)

(assert (=> b!4127344 (= e!2560945 (and tp!1257652 tp!1257653))))

(declare-fun b!4127343 () Bool)

(declare-fun tp!1257654 () Bool)

(assert (=> b!4127343 (= e!2560945 tp!1257654)))

(assert (=> b!4126824 (= tp!1257566 e!2560945)))

(declare-fun b!4127341 () Bool)

(declare-fun tp!1257655 () Bool)

(declare-fun tp!1257656 () Bool)

(assert (=> b!4127341 (= e!2560945 (and tp!1257655 tp!1257656))))

(assert (= (and b!4126824 ((_ is ElementMatch!12209) (regOne!24931 (regex!7304 rBis!149)))) b!4127339))

(assert (= (and b!4126824 ((_ is Concat!19744) (regOne!24931 (regex!7304 rBis!149)))) b!4127341))

(assert (= (and b!4126824 ((_ is Star!12209) (regOne!24931 (regex!7304 rBis!149)))) b!4127343))

(assert (= (and b!4126824 ((_ is Union!12209) (regOne!24931 (regex!7304 rBis!149)))) b!4127344))

(declare-fun b!4127345 () Bool)

(declare-fun e!2560946 () Bool)

(assert (=> b!4127345 (= e!2560946 tp_is_empty!21341)))

(declare-fun b!4127348 () Bool)

(declare-fun tp!1257657 () Bool)

(declare-fun tp!1257658 () Bool)

(assert (=> b!4127348 (= e!2560946 (and tp!1257657 tp!1257658))))

(declare-fun b!4127347 () Bool)

(declare-fun tp!1257659 () Bool)

(assert (=> b!4127347 (= e!2560946 tp!1257659)))

(assert (=> b!4126824 (= tp!1257567 e!2560946)))

(declare-fun b!4127346 () Bool)

(declare-fun tp!1257660 () Bool)

(declare-fun tp!1257661 () Bool)

(assert (=> b!4127346 (= e!2560946 (and tp!1257660 tp!1257661))))

(assert (= (and b!4126824 ((_ is ElementMatch!12209) (regTwo!24931 (regex!7304 rBis!149)))) b!4127345))

(assert (= (and b!4126824 ((_ is Concat!19744) (regTwo!24931 (regex!7304 rBis!149)))) b!4127346))

(assert (= (and b!4126824 ((_ is Star!12209) (regTwo!24931 (regex!7304 rBis!149)))) b!4127347))

(assert (= (and b!4126824 ((_ is Union!12209) (regTwo!24931 (regex!7304 rBis!149)))) b!4127348))

(declare-fun b!4127349 () Bool)

(declare-fun e!2560947 () Bool)

(assert (=> b!4127349 (= e!2560947 tp_is_empty!21341)))

(declare-fun b!4127352 () Bool)

(declare-fun tp!1257662 () Bool)

(declare-fun tp!1257663 () Bool)

(assert (=> b!4127352 (= e!2560947 (and tp!1257662 tp!1257663))))

(declare-fun b!4127351 () Bool)

(declare-fun tp!1257664 () Bool)

(assert (=> b!4127351 (= e!2560947 tp!1257664)))

(assert (=> b!4126820 (= tp!1257561 e!2560947)))

(declare-fun b!4127350 () Bool)

(declare-fun tp!1257665 () Bool)

(declare-fun tp!1257666 () Bool)

(assert (=> b!4127350 (= e!2560947 (and tp!1257665 tp!1257666))))

(assert (= (and b!4126820 ((_ is ElementMatch!12209) (regOne!24931 (regex!7304 (h!50075 rules!3756))))) b!4127349))

(assert (= (and b!4126820 ((_ is Concat!19744) (regOne!24931 (regex!7304 (h!50075 rules!3756))))) b!4127350))

(assert (= (and b!4126820 ((_ is Star!12209) (regOne!24931 (regex!7304 (h!50075 rules!3756))))) b!4127351))

(assert (= (and b!4126820 ((_ is Union!12209) (regOne!24931 (regex!7304 (h!50075 rules!3756))))) b!4127352))

(declare-fun b!4127353 () Bool)

(declare-fun e!2560948 () Bool)

(assert (=> b!4127353 (= e!2560948 tp_is_empty!21341)))

(declare-fun b!4127356 () Bool)

(declare-fun tp!1257667 () Bool)

(declare-fun tp!1257668 () Bool)

(assert (=> b!4127356 (= e!2560948 (and tp!1257667 tp!1257668))))

(declare-fun b!4127355 () Bool)

(declare-fun tp!1257669 () Bool)

(assert (=> b!4127355 (= e!2560948 tp!1257669)))

(assert (=> b!4126820 (= tp!1257562 e!2560948)))

(declare-fun b!4127354 () Bool)

(declare-fun tp!1257670 () Bool)

(declare-fun tp!1257671 () Bool)

(assert (=> b!4127354 (= e!2560948 (and tp!1257670 tp!1257671))))

(assert (= (and b!4126820 ((_ is ElementMatch!12209) (regTwo!24931 (regex!7304 (h!50075 rules!3756))))) b!4127353))

(assert (= (and b!4126820 ((_ is Concat!19744) (regTwo!24931 (regex!7304 (h!50075 rules!3756))))) b!4127354))

(assert (= (and b!4126820 ((_ is Star!12209) (regTwo!24931 (regex!7304 (h!50075 rules!3756))))) b!4127355))

(assert (= (and b!4126820 ((_ is Union!12209) (regTwo!24931 (regex!7304 (h!50075 rules!3756))))) b!4127356))

(declare-fun b_lambda!121159 () Bool)

(assert (= b_lambda!121137 (or (and b!4126796 b_free!116901 (= (toChars!9819 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toChars!9819 (transformation!7304 (h!50075 rules!3756))))) (and b!4127253 b_free!116905 (= (toChars!9819 (transformation!7304 (h!50075 (t!341164 (t!341164 rules!3756))))) (toChars!9819 (transformation!7304 (h!50075 rules!3756))))) (and b!4126368 b_free!116893) (and b!4126375 b_free!116889 (= (toChars!9819 (transformation!7304 r!4008)) (toChars!9819 (transformation!7304 (h!50075 rules!3756))))) (and b!4126378 b_free!116885 (= (toChars!9819 (transformation!7304 rBis!149)) (toChars!9819 (transformation!7304 (h!50075 rules!3756))))) b_lambda!121159)))

(declare-fun b_lambda!121161 () Bool)

(assert (= b_lambda!121139 (or (and b!4126796 b_free!116899 (= (toValue!9960 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toValue!9960 (transformation!7304 (h!50075 rules!3756))))) (and b!4126378 b_free!116883 (= (toValue!9960 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 (h!50075 rules!3756))))) (and b!4127253 b_free!116903 (= (toValue!9960 (transformation!7304 (h!50075 (t!341164 (t!341164 rules!3756))))) (toValue!9960 (transformation!7304 (h!50075 rules!3756))))) (and b!4126375 b_free!116887 (= (toValue!9960 (transformation!7304 r!4008)) (toValue!9960 (transformation!7304 (h!50075 rules!3756))))) (and b!4126368 b_free!116891) b_lambda!121161)))

(declare-fun b_lambda!121163 () Bool)

(assert (= b_lambda!121147 (or d!1222873 b_lambda!121163)))

(declare-fun bs!594930 () Bool)

(declare-fun d!1223197 () Bool)

(assert (= bs!594930 (and d!1223197 d!1222873)))

(assert (=> bs!594930 (= (dynLambda!19111 lambda!128753 lt!1471990) (= (list!16375 (dynLambda!19107 (toChars!9819 (transformation!7304 r!4008)) (dynLambda!19103 (toValue!9960 (transformation!7304 r!4008)) lt!1471990))) (list!16375 lt!1471990)))))

(declare-fun b_lambda!121169 () Bool)

(assert (=> (not b_lambda!121169) (not bs!594930)))

(assert (=> bs!594930 t!341288))

(declare-fun b_and!319637 () Bool)

(assert (= b_and!319635 (and (=> t!341288 result!301016) b_and!319637)))

(assert (=> bs!594930 t!341196))

(declare-fun b_and!319639 () Bool)

(assert (= b_and!319559 (and (=> t!341196 result!300922) b_and!319639)))

(assert (=> bs!594930 t!341184))

(declare-fun b_and!319641 () Bool)

(assert (= b_and!319553 (and (=> t!341184 result!300900) b_and!319641)))

(assert (=> bs!594930 t!341188))

(declare-fun b_and!319643 () Bool)

(assert (= b_and!319557 (and (=> t!341188 result!300906) b_and!319643)))

(assert (=> bs!594930 t!341186))

(declare-fun b_and!319645 () Bool)

(assert (= b_and!319555 (and (=> t!341186 result!300904) b_and!319645)))

(declare-fun b_lambda!121171 () Bool)

(assert (=> (not b_lambda!121171) (not bs!594930)))

(assert (=> bs!594930 t!341180))

(declare-fun b_and!319647 () Bool)

(assert (= b_and!319595 (and (=> t!341180 result!300896) b_and!319647)))

(assert (=> bs!594930 t!341178))

(declare-fun b_and!319649 () Bool)

(assert (= b_and!319593 (and (=> t!341178 result!300892) b_and!319649)))

(assert (=> bs!594930 t!341194))

(declare-fun b_and!319651 () Bool)

(assert (= b_and!319599 (and (=> t!341194 result!300920) b_and!319651)))

(assert (=> bs!594930 t!341284))

(declare-fun b_and!319653 () Bool)

(assert (= b_and!319633 (and (=> t!341284 result!301012) b_and!319653)))

(assert (=> bs!594930 t!341182))

(declare-fun b_and!319655 () Bool)

(assert (= b_and!319597 (and (=> t!341182 result!300898) b_and!319655)))

(assert (=> bs!594930 m!4725113))

(assert (=> bs!594930 m!4725117))

(assert (=> bs!594930 m!4725119))

(assert (=> bs!594930 m!4725071))

(assert (=> bs!594930 m!4725113))

(assert (=> bs!594930 m!4725071))

(assert (=> d!1223099 d!1223197))

(declare-fun b_lambda!121165 () Bool)

(assert (= b_lambda!121143 (or (and b!4126796 b_free!116899 (= (toValue!9960 (transformation!7304 (h!50075 (t!341164 rules!3756)))) (toValue!9960 (transformation!7304 (h!50075 rules!3756))))) (and b!4126378 b_free!116883 (= (toValue!9960 (transformation!7304 rBis!149)) (toValue!9960 (transformation!7304 (h!50075 rules!3756))))) (and b!4127253 b_free!116903 (= (toValue!9960 (transformation!7304 (h!50075 (t!341164 (t!341164 rules!3756))))) (toValue!9960 (transformation!7304 (h!50075 rules!3756))))) (and b!4126375 b_free!116887 (= (toValue!9960 (transformation!7304 r!4008)) (toValue!9960 (transformation!7304 (h!50075 rules!3756))))) (and b!4126368 b_free!116891) b_lambda!121165)))

(declare-fun b_lambda!121167 () Bool)

(assert (= b_lambda!121131 (or d!1222831 b_lambda!121167)))

(declare-fun bs!594931 () Bool)

(declare-fun d!1223203 () Bool)

(assert (= bs!594931 (and d!1223203 d!1222831)))

(assert (=> bs!594931 (= (dynLambda!19108 lambda!128747 (h!50075 (t!341164 rules!3756))) (ruleValid!3112 thiss!25645 (h!50075 (t!341164 rules!3756))))))

(assert (=> bs!594931 m!4724933))

(assert (=> b!4126829 d!1223203))

(check-sat (not d!1223103) (not d!1223061) (not bm!290210) (not b!4127244) (not b!4127247) (not b!4127348) (not d!1223073) (not b!4127129) (not b!4126929) (not d!1222955) (not b!4126903) (not b!4127021) (not d!1222957) (not d!1223051) (not b!4127315) b_and!319647 (not bm!290159) (not d!1223059) (not b!4127350) (not b!4126852) (not b!4127090) (not bm!290188) (not b_lambda!121133) (not b_lambda!121135) (not d!1223101) (not d!1223093) (not b!4127183) (not b!4127313) (not b!4126870) (not b!4127347) (not b_lambda!121163) (not bm!290190) (not b!4127323) (not b!4127155) (not d!1223055) (not b_lambda!121127) (not d!1223123) (not b!4127116) (not b!4127346) (not b!4127302) (not b!4127087) (not b_lambda!121161) (not b!4127273) (not b!4127167) b_and!319643 (not d!1223047) (not b!4126867) (not b!4127092) (not d!1223117) (not d!1223121) (not bm!290192) (not d!1223053) b_and!319645 (not b!4127344) (not b!4127012) (not b!4127329) (not b!4126830) (not tb!247655) (not b!4127168) (not b!4127159) (not b!4127133) (not d!1223081) (not d!1223045) (not b!4127270) (not b!4127301) (not b!4127095) (not bs!594931) (not b!4127252) (not b!4127108) (not b!4127280) (not d!1222975) (not b!4127083) (not b!4127065) (not d!1222949) (not d!1223097) (not b_lambda!121169) (not b!4127330) b_and!319637 (not b!4127006) (not b!4127130) (not b!4127284) (not b!4127311) (not b!4127314) (not b!4127248) (not b!4127281) (not b!4127283) (not tb!247679) (not b_lambda!121165) (not b!4127317) (not d!1223087) (not b!4127143) (not b!4127242) b_and!319653 (not b!4127148) (not b!4127352) (not d!1223083) (not b!4127336) (not bm!290191) (not b!4127017) (not b!4127059) (not b!4127251) (not bm!290204) (not b!4127126) (not b!4127024) (not b!4127076) (not b!4127022) (not b!4127081) (not b_lambda!121149) (not b!4127099) b_and!319641 (not b!4127341) (not b_lambda!121171) (not b!4127303) (not b!4127309) (not b!4126584) (not b!4127120) (not d!1222993) (not d!1223161) (not b!4127210) (not b!4127279) (not d!1223167) (not b!4127331) (not d!1223169) (not d!1223071) (not b!4127084) (not bm!290208) (not b_lambda!121159) (not b!4127146) (not b_lambda!121125) (not b!4127156) (not b_next!117605) (not d!1223159) (not b!4127089) (not bm!290189) (not d!1223091) (not b!4127310) (not b!4127229) (not b!4127335) (not d!1223145) (not b!4127030) (not d!1223113) (not bm!290207) (not b!4127004) (not b!4127153) (not bm!290211) (not b!4127307) (not bs!594930) (not tb!247639) (not b!4127318) (not b!4127233) (not tb!247687) (not b!4127028) (not b!4126868) (not bm!290187) (not d!1222941) (not b!4127285) (not bm!290194) b_and!319649 (not b!4127080) (not b_next!117593) (not b_next!117609) (not b!4127250) (not d!1222961) (not b!4127326) (not d!1223069) (not d!1223077) (not b!4127245) (not d!1223133) (not b!4127161) (not b!4127241) (not b!4127327) (not b!4127356) (not b!4127305) (not d!1223135) (not bm!290186) (not b!4127343) (not d!1223039) (not b_lambda!121145) (not b!4127325) (not b!4127275) b_and!319639 (not b!4127354) (not b!4127127) (not b!4127103) (not bm!290158) (not b_lambda!121167) (not b!4127246) (not d!1223065) (not bm!290203) (not tb!247663) (not b!4127355) (not b_next!117589) (not b!4126901) (not b!4127073) (not b_next!117587) (not b!4127182) (not b!4127102) (not b!4127274) (not b!4127271) (not d!1222945) (not b!4127351) (not b_next!117597) (not b!4127100) (not b!4127072) (not bm!290212) (not b!4127152) (not b!4127077) (not b!4127005) (not b!4127008) (not b!4126871) (not d!1223131) (not b!4127025) b_and!319655 (not b!4127319) (not b!4126899) (not b!4127091) (not b_lambda!121129) (not b!4127333) (not d!1223109) (not d!1223067) tp_is_empty!21341 (not d!1223099) (not b_next!117607) (not b_next!117591) (not b!4126925) b_and!319651 (not b!4127085) (not b!4127078) (not b!4127139) (not b!4127321) (not b!4127269) (not b!4127121) (not b!4127181) (not tb!247647) (not d!1223125) (not bm!290213) (not d!1223095) (not bm!290193) (not d!1223151) (not b!4127135) (not b!4127118) (not b_next!117603) (not b!4127106) (not b!4127236) (not b!4127306) (not d!1222997) (not b_next!117595) (not d!1223137) (not b!4127322) (not b!4127142) (not b!4127334) (not d!1222947) (not b!4127079))
(check-sat b_and!319647 b_and!319643 b_and!319645 b_and!319637 b_and!319653 b_and!319641 (not b_next!117605) b_and!319639 (not b_next!117597) b_and!319655 b_and!319649 (not b_next!117593) (not b_next!117609) (not b_next!117589) (not b_next!117587) (not b_next!117607) (not b_next!117591) b_and!319651 (not b_next!117603) (not b_next!117595))
