; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373620 () Bool)

(assert start!373620)

(declare-fun b!3970407 () Bool)

(declare-fun b_free!109953 () Bool)

(declare-fun b_next!110657 () Bool)

(assert (=> b!3970407 (= b_free!109953 (not b_next!110657))))

(declare-fun tp!1210499 () Bool)

(declare-fun b_and!305199 () Bool)

(assert (=> b!3970407 (= tp!1210499 b_and!305199)))

(declare-fun b_free!109955 () Bool)

(declare-fun b_next!110659 () Bool)

(assert (=> b!3970407 (= b_free!109955 (not b_next!110659))))

(declare-fun tp!1210493 () Bool)

(declare-fun b_and!305201 () Bool)

(assert (=> b!3970407 (= tp!1210493 b_and!305201)))

(declare-fun b!3970421 () Bool)

(declare-fun b_free!109957 () Bool)

(declare-fun b_next!110661 () Bool)

(assert (=> b!3970421 (= b_free!109957 (not b_next!110661))))

(declare-fun tp!1210501 () Bool)

(declare-fun b_and!305203 () Bool)

(assert (=> b!3970421 (= tp!1210501 b_and!305203)))

(declare-fun b_free!109959 () Bool)

(declare-fun b_next!110663 () Bool)

(assert (=> b!3970421 (= b_free!109959 (not b_next!110663))))

(declare-fun tp!1210502 () Bool)

(declare-fun b_and!305205 () Bool)

(assert (=> b!3970421 (= tp!1210502 b_and!305205)))

(declare-fun e!2459362 () Bool)

(assert (=> b!3970407 (= e!2459362 (and tp!1210499 tp!1210493))))

(declare-fun b!3970408 () Bool)

(declare-fun e!2459363 () Bool)

(declare-fun tp_is_empty!20101 () Bool)

(declare-fun tp!1210494 () Bool)

(assert (=> b!3970408 (= e!2459363 (and tp_is_empty!20101 tp!1210494))))

(declare-fun b!3970409 () Bool)

(declare-fun res!1607130 () Bool)

(declare-fun e!2459364 () Bool)

(assert (=> b!3970409 (=> (not res!1607130) (not e!2459364))))

(declare-datatypes ((C!23316 0))(
  ( (C!23317 (val!13752 Int)) )
))
(declare-datatypes ((List!42488 0))(
  ( (Nil!42364) (Cons!42364 (h!47784 C!23316) (t!330855 List!42488)) )
))
(declare-datatypes ((IArray!25747 0))(
  ( (IArray!25748 (innerList!12931 List!42488)) )
))
(declare-datatypes ((Conc!12871 0))(
  ( (Node!12871 (left!32095 Conc!12871) (right!32425 Conc!12871) (csize!25972 Int) (cheight!13082 Int)) (Leaf!19908 (xs!16177 IArray!25747) (csize!25973 Int)) (Empty!12871) )
))
(declare-datatypes ((BalanceConc!25336 0))(
  ( (BalanceConc!25337 (c!688714 Conc!12871)) )
))
(declare-datatypes ((String!48167 0))(
  ( (String!48168 (value!210418 String)) )
))
(declare-datatypes ((List!42489 0))(
  ( (Nil!42365) (Cons!42365 (h!47785 (_ BitVec 16)) (t!330856 List!42489)) )
))
(declare-datatypes ((TokenValue!6890 0))(
  ( (FloatLiteralValue!13780 (text!48675 List!42489)) (TokenValueExt!6889 (__x!25997 Int)) (Broken!34450 (value!210419 List!42489)) (Object!7013) (End!6890) (Def!6890) (Underscore!6890) (Match!6890) (Else!6890) (Error!6890) (Case!6890) (If!6890) (Extends!6890) (Abstract!6890) (Class!6890) (Val!6890) (DelimiterValue!13780 (del!6950 List!42489)) (KeywordValue!6896 (value!210420 List!42489)) (CommentValue!13780 (value!210421 List!42489)) (WhitespaceValue!13780 (value!210422 List!42489)) (IndentationValue!6890 (value!210423 List!42489)) (String!48169) (Int32!6890) (Broken!34451 (value!210424 List!42489)) (Boolean!6891) (Unit!61015) (OperatorValue!6893 (op!6950 List!42489)) (IdentifierValue!13780 (value!210425 List!42489)) (IdentifierValue!13781 (value!210426 List!42489)) (WhitespaceValue!13781 (value!210427 List!42489)) (True!13780) (False!13780) (Broken!34452 (value!210428 List!42489)) (Broken!34453 (value!210429 List!42489)) (True!13781) (RightBrace!6890) (RightBracket!6890) (Colon!6890) (Null!6890) (Comma!6890) (LeftBracket!6890) (False!13781) (LeftBrace!6890) (ImaginaryLiteralValue!6890 (text!48676 List!42489)) (StringLiteralValue!20670 (value!210430 List!42489)) (EOFValue!6890 (value!210431 List!42489)) (IdentValue!6890 (value!210432 List!42489)) (DelimiterValue!13781 (value!210433 List!42489)) (DedentValue!6890 (value!210434 List!42489)) (NewLineValue!6890 (value!210435 List!42489)) (IntegerValue!20670 (value!210436 (_ BitVec 32)) (text!48677 List!42489)) (IntegerValue!20671 (value!210437 Int) (text!48678 List!42489)) (Times!6890) (Or!6890) (Equal!6890) (Minus!6890) (Broken!34454 (value!210438 List!42489)) (And!6890) (Div!6890) (LessEqual!6890) (Mod!6890) (Concat!18455) (Not!6890) (Plus!6890) (SpaceValue!6890 (value!210439 List!42489)) (IntegerValue!20672 (value!210440 Int) (text!48679 List!42489)) (StringLiteralValue!20671 (text!48680 List!42489)) (FloatLiteralValue!13781 (text!48681 List!42489)) (BytesLiteralValue!6890 (value!210441 List!42489)) (CommentValue!13781 (value!210442 List!42489)) (StringLiteralValue!20672 (value!210443 List!42489)) (ErrorTokenValue!6890 (msg!6951 List!42489)) )
))
(declare-datatypes ((Regex!11565 0))(
  ( (ElementMatch!11565 (c!688715 C!23316)) (Concat!18456 (regOne!23642 Regex!11565) (regTwo!23642 Regex!11565)) (EmptyExpr!11565) (Star!11565 (reg!11894 Regex!11565)) (EmptyLang!11565) (Union!11565 (regOne!23643 Regex!11565) (regTwo!23643 Regex!11565)) )
))
(declare-datatypes ((TokenValueInjection!13208 0))(
  ( (TokenValueInjection!13209 (toValue!9148 Int) (toChars!9007 Int)) )
))
(declare-datatypes ((Rule!13120 0))(
  ( (Rule!13121 (regex!6660 Regex!11565) (tag!7520 String!48167) (isSeparator!6660 Bool) (transformation!6660 TokenValueInjection!13208)) )
))
(declare-datatypes ((List!42490 0))(
  ( (Nil!42366) (Cons!42366 (h!47786 Rule!13120) (t!330857 List!42490)) )
))
(declare-fun rules!2999 () List!42490)

(declare-fun isEmpty!25348 (List!42490) Bool)

(assert (=> b!3970409 (= res!1607130 (not (isEmpty!25348 rules!2999)))))

(declare-fun b!3970410 () Bool)

(declare-fun e!2459360 () Bool)

(declare-fun tp!1210504 () Bool)

(assert (=> b!3970410 (= e!2459360 (and tp_is_empty!20101 tp!1210504))))

(declare-fun b!3970411 () Bool)

(declare-fun e!2459355 () Bool)

(assert (=> b!3970411 (= e!2459364 e!2459355)))

(declare-fun res!1607129 () Bool)

(assert (=> b!3970411 (=> (not res!1607129) (not e!2459355))))

(declare-fun prefix!494 () List!42488)

(declare-fun lt!1390471 () List!42488)

(declare-fun size!31700 (List!42488) Int)

(assert (=> b!3970411 (= res!1607129 (>= (size!31700 prefix!494) (size!31700 lt!1390471)))))

(declare-datatypes ((Token!12458 0))(
  ( (Token!12459 (value!210444 TokenValue!6890) (rule!9648 Rule!13120) (size!31701 Int) (originalCharacters!7260 List!42488)) )
))
(declare-fun token!484 () Token!12458)

(declare-fun list!15720 (BalanceConc!25336) List!42488)

(declare-fun charsOf!4476 (Token!12458) BalanceConc!25336)

(assert (=> b!3970411 (= lt!1390471 (list!15720 (charsOf!4476 token!484)))))

(declare-fun b!3970412 () Bool)

(declare-fun e!2459356 () Bool)

(declare-fun tp!1210497 () Bool)

(assert (=> b!3970412 (= e!2459356 (and tp_is_empty!20101 tp!1210497))))

(declare-fun b!3970413 () Bool)

(declare-fun e!2459359 () Bool)

(declare-fun tp!1210492 () Bool)

(assert (=> b!3970413 (= e!2459359 (and tp_is_empty!20101 tp!1210492))))

(declare-fun b!3970414 () Bool)

(declare-fun res!1607124 () Bool)

(assert (=> b!3970414 (=> (not res!1607124) (not e!2459364))))

(declare-fun newSuffix!27 () List!42488)

(declare-fun suffix!1299 () List!42488)

(declare-fun isPrefix!3747 (List!42488 List!42488) Bool)

(assert (=> b!3970414 (= res!1607124 (isPrefix!3747 newSuffix!27 suffix!1299))))

(declare-fun b!3970415 () Bool)

(declare-fun res!1607128 () Bool)

(assert (=> b!3970415 (=> (not res!1607128) (not e!2459364))))

(declare-datatypes ((LexerInterface!6249 0))(
  ( (LexerInterfaceExt!6246 (__x!25998 Int)) (Lexer!6247) )
))
(declare-fun thiss!21717 () LexerInterface!6249)

(declare-fun rulesInvariant!5592 (LexerInterface!6249 List!42490) Bool)

(assert (=> b!3970415 (= res!1607128 (rulesInvariant!5592 thiss!21717 rules!2999))))

(declare-fun b!3970416 () Bool)

(declare-fun e!2459361 () Bool)

(assert (=> b!3970416 (= e!2459361 true)))

(declare-fun lt!1390472 () Bool)

(declare-fun lt!1390468 () List!42488)

(assert (=> b!3970416 (= lt!1390472 (isPrefix!3747 lt!1390471 lt!1390468))))

(assert (=> b!3970416 (isPrefix!3747 prefix!494 lt!1390468)))

(declare-datatypes ((Unit!61016 0))(
  ( (Unit!61017) )
))
(declare-fun lt!1390470 () Unit!61016)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2590 (List!42488 List!42488) Unit!61016)

(assert (=> b!3970416 (= lt!1390470 (lemmaConcatTwoListThenFirstIsPrefix!2590 prefix!494 suffix!1299))))

(declare-fun lt!1390473 () List!42488)

(assert (=> b!3970416 (isPrefix!3747 lt!1390471 lt!1390473)))

(declare-fun lt!1390466 () Unit!61016)

(declare-fun suffixResult!105 () List!42488)

(assert (=> b!3970416 (= lt!1390466 (lemmaConcatTwoListThenFirstIsPrefix!2590 lt!1390471 suffixResult!105))))

(declare-fun b!3970417 () Bool)

(declare-fun e!2459351 () Bool)

(assert (=> b!3970417 (= e!2459355 e!2459351)))

(declare-fun res!1607122 () Bool)

(assert (=> b!3970417 (=> (not res!1607122) (not e!2459351))))

(declare-datatypes ((tuple2!41632 0))(
  ( (tuple2!41633 (_1!23950 Token!12458) (_2!23950 List!42488)) )
))
(declare-datatypes ((Option!9074 0))(
  ( (None!9073) (Some!9073 (v!39421 tuple2!41632)) )
))
(declare-fun maxPrefix!3547 (LexerInterface!6249 List!42490 List!42488) Option!9074)

(assert (=> b!3970417 (= res!1607122 (= (maxPrefix!3547 thiss!21717 rules!2999 lt!1390468) (Some!9073 (tuple2!41633 token!484 suffixResult!105))))))

(declare-fun ++!11062 (List!42488 List!42488) List!42488)

(assert (=> b!3970417 (= lt!1390468 (++!11062 prefix!494 suffix!1299))))

(declare-fun res!1607127 () Bool)

(assert (=> start!373620 (=> (not res!1607127) (not e!2459364))))

(get-info :version)

(assert (=> start!373620 (= res!1607127 ((_ is Lexer!6247) thiss!21717))))

(assert (=> start!373620 e!2459364))

(assert (=> start!373620 e!2459360))

(declare-fun e!2459353 () Bool)

(declare-fun inv!56613 (Token!12458) Bool)

(assert (=> start!373620 (and (inv!56613 token!484) e!2459353)))

(assert (=> start!373620 e!2459359))

(declare-fun e!2459349 () Bool)

(assert (=> start!373620 e!2459349))

(assert (=> start!373620 e!2459363))

(assert (=> start!373620 true))

(declare-fun e!2459354 () Bool)

(assert (=> start!373620 e!2459354))

(assert (=> start!373620 e!2459356))

(declare-fun b!3970418 () Bool)

(declare-fun e!2459348 () Bool)

(declare-fun tp!1210496 () Bool)

(declare-fun e!2459352 () Bool)

(declare-fun inv!56610 (String!48167) Bool)

(declare-fun inv!56614 (TokenValueInjection!13208) Bool)

(assert (=> b!3970418 (= e!2459348 (and tp!1210496 (inv!56610 (tag!7520 (rule!9648 token!484))) (inv!56614 (transformation!6660 (rule!9648 token!484))) e!2459352))))

(declare-fun b!3970419 () Bool)

(declare-fun tp!1210495 () Bool)

(declare-fun e!2459358 () Bool)

(assert (=> b!3970419 (= e!2459358 (and tp!1210495 (inv!56610 (tag!7520 (h!47786 rules!2999))) (inv!56614 (transformation!6660 (h!47786 rules!2999))) e!2459362))))

(declare-fun b!3970420 () Bool)

(declare-fun res!1607125 () Bool)

(assert (=> b!3970420 (=> (not res!1607125) (not e!2459355))))

(declare-fun newSuffixResult!27 () List!42488)

(assert (=> b!3970420 (= res!1607125 (= (++!11062 lt!1390471 newSuffixResult!27) (++!11062 prefix!494 newSuffix!27)))))

(assert (=> b!3970421 (= e!2459352 (and tp!1210501 tp!1210502))))

(declare-fun b!3970422 () Bool)

(declare-fun res!1607123 () Bool)

(assert (=> b!3970422 (=> (not res!1607123) (not e!2459364))))

(assert (=> b!3970422 (= res!1607123 (>= (size!31700 suffix!1299) (size!31700 newSuffix!27)))))

(declare-fun b!3970423 () Bool)

(declare-fun tp!1210503 () Bool)

(declare-fun inv!21 (TokenValue!6890) Bool)

(assert (=> b!3970423 (= e!2459353 (and (inv!21 (value!210444 token!484)) e!2459348 tp!1210503))))

(declare-fun b!3970424 () Bool)

(declare-fun tp!1210500 () Bool)

(assert (=> b!3970424 (= e!2459349 (and tp_is_empty!20101 tp!1210500))))

(declare-fun b!3970425 () Bool)

(declare-fun tp!1210498 () Bool)

(assert (=> b!3970425 (= e!2459354 (and e!2459358 tp!1210498))))

(declare-fun b!3970426 () Bool)

(assert (=> b!3970426 (= e!2459351 (not e!2459361))))

(declare-fun res!1607126 () Bool)

(assert (=> b!3970426 (=> res!1607126 e!2459361)))

(assert (=> b!3970426 (= res!1607126 (not (= lt!1390473 lt!1390468)))))

(assert (=> b!3970426 (= lt!1390473 (++!11062 lt!1390471 suffixResult!105))))

(declare-fun lt!1390469 () Unit!61016)

(declare-fun lemmaInv!875 (TokenValueInjection!13208) Unit!61016)

(assert (=> b!3970426 (= lt!1390469 (lemmaInv!875 (transformation!6660 (rule!9648 token!484))))))

(declare-fun ruleValid!2592 (LexerInterface!6249 Rule!13120) Bool)

(assert (=> b!3970426 (ruleValid!2592 thiss!21717 (rule!9648 token!484))))

(declare-fun lt!1390467 () Unit!61016)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1666 (LexerInterface!6249 Rule!13120 List!42490) Unit!61016)

(assert (=> b!3970426 (= lt!1390467 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1666 thiss!21717 (rule!9648 token!484) rules!2999))))

(assert (= (and start!373620 res!1607127) b!3970409))

(assert (= (and b!3970409 res!1607130) b!3970415))

(assert (= (and b!3970415 res!1607128) b!3970422))

(assert (= (and b!3970422 res!1607123) b!3970414))

(assert (= (and b!3970414 res!1607124) b!3970411))

(assert (= (and b!3970411 res!1607129) b!3970420))

(assert (= (and b!3970420 res!1607125) b!3970417))

(assert (= (and b!3970417 res!1607122) b!3970426))

(assert (= (and b!3970426 (not res!1607126)) b!3970416))

(assert (= (and start!373620 ((_ is Cons!42364) prefix!494)) b!3970410))

(assert (= b!3970418 b!3970421))

(assert (= b!3970423 b!3970418))

(assert (= start!373620 b!3970423))

(assert (= (and start!373620 ((_ is Cons!42364) suffixResult!105)) b!3970413))

(assert (= (and start!373620 ((_ is Cons!42364) suffix!1299)) b!3970424))

(assert (= (and start!373620 ((_ is Cons!42364) newSuffix!27)) b!3970408))

(assert (= b!3970419 b!3970407))

(assert (= b!3970425 b!3970419))

(assert (= (and start!373620 ((_ is Cons!42366) rules!2999)) b!3970425))

(assert (= (and start!373620 ((_ is Cons!42364) newSuffixResult!27)) b!3970412))

(declare-fun m!4540549 () Bool)

(assert (=> b!3970409 m!4540549))

(declare-fun m!4540551 () Bool)

(assert (=> b!3970418 m!4540551))

(declare-fun m!4540553 () Bool)

(assert (=> b!3970418 m!4540553))

(declare-fun m!4540555 () Bool)

(assert (=> b!3970416 m!4540555))

(declare-fun m!4540557 () Bool)

(assert (=> b!3970416 m!4540557))

(declare-fun m!4540559 () Bool)

(assert (=> b!3970416 m!4540559))

(declare-fun m!4540561 () Bool)

(assert (=> b!3970416 m!4540561))

(declare-fun m!4540563 () Bool)

(assert (=> b!3970416 m!4540563))

(declare-fun m!4540565 () Bool)

(assert (=> b!3970411 m!4540565))

(declare-fun m!4540567 () Bool)

(assert (=> b!3970411 m!4540567))

(declare-fun m!4540569 () Bool)

(assert (=> b!3970411 m!4540569))

(assert (=> b!3970411 m!4540569))

(declare-fun m!4540571 () Bool)

(assert (=> b!3970411 m!4540571))

(declare-fun m!4540573 () Bool)

(assert (=> b!3970417 m!4540573))

(declare-fun m!4540575 () Bool)

(assert (=> b!3970417 m!4540575))

(declare-fun m!4540577 () Bool)

(assert (=> b!3970422 m!4540577))

(declare-fun m!4540579 () Bool)

(assert (=> b!3970422 m!4540579))

(declare-fun m!4540581 () Bool)

(assert (=> b!3970414 m!4540581))

(declare-fun m!4540583 () Bool)

(assert (=> b!3970426 m!4540583))

(declare-fun m!4540585 () Bool)

(assert (=> b!3970426 m!4540585))

(declare-fun m!4540587 () Bool)

(assert (=> b!3970426 m!4540587))

(declare-fun m!4540589 () Bool)

(assert (=> b!3970426 m!4540589))

(declare-fun m!4540591 () Bool)

(assert (=> b!3970419 m!4540591))

(declare-fun m!4540593 () Bool)

(assert (=> b!3970419 m!4540593))

(declare-fun m!4540595 () Bool)

(assert (=> b!3970420 m!4540595))

(declare-fun m!4540597 () Bool)

(assert (=> b!3970420 m!4540597))

(declare-fun m!4540599 () Bool)

(assert (=> b!3970415 m!4540599))

(declare-fun m!4540601 () Bool)

(assert (=> start!373620 m!4540601))

(declare-fun m!4540603 () Bool)

(assert (=> b!3970423 m!4540603))

(check-sat (not b_next!110663) (not b!3970413) tp_is_empty!20101 (not b!3970409) (not b!3970422) (not b!3970415) (not b!3970412) (not start!373620) (not b_next!110659) (not b!3970423) b_and!305201 (not b!3970414) (not b!3970418) (not b!3970417) (not b!3970411) (not b_next!110657) (not b!3970420) (not b!3970416) (not b!3970408) (not b!3970424) (not b!3970425) b_and!305199 (not b!3970410) b_and!305203 (not b!3970426) (not b_next!110661) (not b!3970419) b_and!305205)
(check-sat (not b_next!110663) (not b_next!110657) b_and!305199 b_and!305203 (not b_next!110659) (not b_next!110661) b_and!305201 b_and!305205)
