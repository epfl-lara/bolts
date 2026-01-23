; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401826 () Bool)

(assert start!401826)

(declare-fun b!4205533 () Bool)

(declare-fun b_free!122867 () Bool)

(declare-fun b_next!123571 () Bool)

(assert (=> b!4205533 (= b_free!122867 (not b_next!123571))))

(declare-fun tp!1285346 () Bool)

(declare-fun b_and!330493 () Bool)

(assert (=> b!4205533 (= tp!1285346 b_and!330493)))

(declare-fun b_free!122869 () Bool)

(declare-fun b_next!123573 () Bool)

(assert (=> b!4205533 (= b_free!122869 (not b_next!123573))))

(declare-fun tp!1285354 () Bool)

(declare-fun b_and!330495 () Bool)

(assert (=> b!4205533 (= tp!1285354 b_and!330495)))

(declare-fun b!4205541 () Bool)

(declare-fun b_free!122871 () Bool)

(declare-fun b_next!123575 () Bool)

(assert (=> b!4205541 (= b_free!122871 (not b_next!123575))))

(declare-fun tp!1285347 () Bool)

(declare-fun b_and!330497 () Bool)

(assert (=> b!4205541 (= tp!1285347 b_and!330497)))

(declare-fun b_free!122873 () Bool)

(declare-fun b_next!123577 () Bool)

(assert (=> b!4205541 (= b_free!122873 (not b_next!123577))))

(declare-fun tp!1285343 () Bool)

(declare-fun b_and!330499 () Bool)

(assert (=> b!4205541 (= tp!1285343 b_and!330499)))

(declare-fun b!4205548 () Bool)

(declare-fun b_free!122875 () Bool)

(declare-fun b_next!123579 () Bool)

(assert (=> b!4205548 (= b_free!122875 (not b_next!123579))))

(declare-fun tp!1285348 () Bool)

(declare-fun b_and!330501 () Bool)

(assert (=> b!4205548 (= tp!1285348 b_and!330501)))

(declare-fun b_free!122877 () Bool)

(declare-fun b_next!123581 () Bool)

(assert (=> b!4205548 (= b_free!122877 (not b_next!123581))))

(declare-fun tp!1285350 () Bool)

(declare-fun b_and!330503 () Bool)

(assert (=> b!4205548 (= tp!1285350 b_and!330503)))

(declare-fun b!4205539 () Bool)

(declare-fun b_free!122879 () Bool)

(declare-fun b_next!123583 () Bool)

(assert (=> b!4205539 (= b_free!122879 (not b_next!123583))))

(declare-fun tp!1285362 () Bool)

(declare-fun b_and!330505 () Bool)

(assert (=> b!4205539 (= tp!1285362 b_and!330505)))

(declare-fun b_free!122881 () Bool)

(declare-fun b_next!123585 () Bool)

(assert (=> b!4205539 (= b_free!122881 (not b_next!123585))))

(declare-fun tp!1285344 () Bool)

(declare-fun b_and!330507 () Bool)

(assert (=> b!4205539 (= tp!1285344 b_and!330507)))

(declare-fun b!4205520 () Bool)

(declare-fun res!1727304 () Bool)

(declare-fun e!2610621 () Bool)

(assert (=> b!4205520 (=> res!1727304 e!2610621)))

(declare-datatypes ((List!46349 0))(
  ( (Nil!46225) (Cons!46225 (h!51645 (_ BitVec 16)) (t!347418 List!46349)) )
))
(declare-datatypes ((TokenValue!7958 0))(
  ( (FloatLiteralValue!15916 (text!56151 List!46349)) (TokenValueExt!7957 (__x!28139 Int)) (Broken!39790 (value!240751 List!46349)) (Object!8081) (End!7958) (Def!7958) (Underscore!7958) (Match!7958) (Else!7958) (Error!7958) (Case!7958) (If!7958) (Extends!7958) (Abstract!7958) (Class!7958) (Val!7958) (DelimiterValue!15916 (del!8018 List!46349)) (KeywordValue!7964 (value!240752 List!46349)) (CommentValue!15916 (value!240753 List!46349)) (WhitespaceValue!15916 (value!240754 List!46349)) (IndentationValue!7958 (value!240755 List!46349)) (String!53659) (Int32!7958) (Broken!39791 (value!240756 List!46349)) (Boolean!7959) (Unit!65330) (OperatorValue!7961 (op!8018 List!46349)) (IdentifierValue!15916 (value!240757 List!46349)) (IdentifierValue!15917 (value!240758 List!46349)) (WhitespaceValue!15917 (value!240759 List!46349)) (True!15916) (False!15916) (Broken!39792 (value!240760 List!46349)) (Broken!39793 (value!240761 List!46349)) (True!15917) (RightBrace!7958) (RightBracket!7958) (Colon!7958) (Null!7958) (Comma!7958) (LeftBracket!7958) (False!15917) (LeftBrace!7958) (ImaginaryLiteralValue!7958 (text!56152 List!46349)) (StringLiteralValue!23874 (value!240762 List!46349)) (EOFValue!7958 (value!240763 List!46349)) (IdentValue!7958 (value!240764 List!46349)) (DelimiterValue!15917 (value!240765 List!46349)) (DedentValue!7958 (value!240766 List!46349)) (NewLineValue!7958 (value!240767 List!46349)) (IntegerValue!23874 (value!240768 (_ BitVec 32)) (text!56153 List!46349)) (IntegerValue!23875 (value!240769 Int) (text!56154 List!46349)) (Times!7958) (Or!7958) (Equal!7958) (Minus!7958) (Broken!39794 (value!240770 List!46349)) (And!7958) (Div!7958) (LessEqual!7958) (Mod!7958) (Concat!20591) (Not!7958) (Plus!7958) (SpaceValue!7958 (value!240771 List!46349)) (IntegerValue!23876 (value!240772 Int) (text!56155 List!46349)) (StringLiteralValue!23875 (text!56156 List!46349)) (FloatLiteralValue!15917 (text!56157 List!46349)) (BytesLiteralValue!7958 (value!240773 List!46349)) (CommentValue!15917 (value!240774 List!46349)) (StringLiteralValue!23876 (value!240775 List!46349)) (ErrorTokenValue!7958 (msg!8019 List!46349)) )
))
(declare-datatypes ((C!25460 0))(
  ( (C!25461 (val!14892 Int)) )
))
(declare-datatypes ((List!46350 0))(
  ( (Nil!46226) (Cons!46226 (h!51646 C!25460) (t!347419 List!46350)) )
))
(declare-datatypes ((IArray!27883 0))(
  ( (IArray!27884 (innerList!13999 List!46350)) )
))
(declare-datatypes ((Regex!12633 0))(
  ( (ElementMatch!12633 (c!716788 C!25460)) (Concat!20592 (regOne!25778 Regex!12633) (regTwo!25778 Regex!12633)) (EmptyExpr!12633) (Star!12633 (reg!12962 Regex!12633)) (EmptyLang!12633) (Union!12633 (regOne!25779 Regex!12633) (regTwo!25779 Regex!12633)) )
))
(declare-datatypes ((String!53660 0))(
  ( (String!53661 (value!240776 String)) )
))
(declare-datatypes ((Conc!13939 0))(
  ( (Node!13939 (left!34426 Conc!13939) (right!34756 Conc!13939) (csize!28108 Int) (cheight!14150 Int)) (Leaf!21547 (xs!17245 IArray!27883) (csize!28109 Int)) (Empty!13939) )
))
(declare-datatypes ((BalanceConc!27472 0))(
  ( (BalanceConc!27473 (c!716789 Conc!13939)) )
))
(declare-datatypes ((TokenValueInjection!15344 0))(
  ( (TokenValueInjection!15345 (toValue!10440 Int) (toChars!10299 Int)) )
))
(declare-datatypes ((Rule!15256 0))(
  ( (Rule!15257 (regex!7728 Regex!12633) (tag!8592 String!53660) (isSeparator!7728 Bool) (transformation!7728 TokenValueInjection!15344)) )
))
(declare-datatypes ((Token!14158 0))(
  ( (Token!14159 (value!240777 TokenValue!7958) (rule!10832 Rule!15256) (size!33963 Int) (originalCharacters!8110 List!46350)) )
))
(declare-fun tBis!41 () Token!14158)

(declare-fun rBis!178 () Rule!15256)

(assert (=> b!4205520 (= res!1727304 (not (= (rule!10832 tBis!41) rBis!178)))))

(declare-fun b!4205521 () Bool)

(declare-fun e!2610635 () Bool)

(declare-fun tp_is_empty!22233 () Bool)

(declare-fun tp!1285361 () Bool)

(assert (=> b!4205521 (= e!2610635 (and tp_is_empty!22233 tp!1285361))))

(declare-fun b!4205522 () Bool)

(declare-fun res!1727305 () Bool)

(declare-fun e!2610631 () Bool)

(assert (=> b!4205522 (=> (not res!1727305) (not e!2610631))))

(declare-datatypes ((LexerInterface!7323 0))(
  ( (LexerInterfaceExt!7320 (__x!28140 Int)) (Lexer!7321) )
))
(declare-fun thiss!26544 () LexerInterface!7323)

(declare-fun ruleValid!3440 (LexerInterface!7323 Rule!15256) Bool)

(assert (=> b!4205522 (= res!1727305 (ruleValid!3440 thiss!26544 rBis!178))))

(declare-fun b!4205523 () Bool)

(declare-fun e!2610639 () Bool)

(declare-fun tp!1285345 () Bool)

(assert (=> b!4205523 (= e!2610639 (and tp_is_empty!22233 tp!1285345))))

(declare-fun b!4205524 () Bool)

(declare-datatypes ((Unit!65331 0))(
  ( (Unit!65332) )
))
(declare-fun e!2610628 () Unit!65331)

(declare-fun Unit!65333 () Unit!65331)

(assert (=> b!4205524 (= e!2610628 Unit!65333)))

(declare-fun b!4205525 () Bool)

(declare-fun res!1727306 () Bool)

(declare-fun e!2610622 () Bool)

(assert (=> b!4205525 (=> (not res!1727306) (not e!2610622))))

(declare-fun pBis!121 () List!46350)

(declare-fun input!3517 () List!46350)

(declare-fun isPrefix!4587 (List!46350 List!46350) Bool)

(assert (=> b!4205525 (= res!1727306 (isPrefix!4587 pBis!121 input!3517))))

(declare-fun b!4205526 () Bool)

(declare-fun res!1727296 () Bool)

(assert (=> b!4205526 (=> (not res!1727296) (not e!2610622))))

(declare-datatypes ((List!46351 0))(
  ( (Nil!46227) (Cons!46227 (h!51647 Rule!15256) (t!347420 List!46351)) )
))
(declare-fun rules!3967 () List!46351)

(declare-fun isEmpty!27372 (List!46351) Bool)

(assert (=> b!4205526 (= res!1727296 (not (isEmpty!27372 rules!3967)))))

(declare-fun b!4205527 () Bool)

(declare-fun e!2610643 () Bool)

(declare-fun tp!1285352 () Bool)

(declare-fun e!2610626 () Bool)

(declare-fun t!8364 () Token!14158)

(declare-fun inv!60807 (String!53660) Bool)

(declare-fun inv!60810 (TokenValueInjection!15344) Bool)

(assert (=> b!4205527 (= e!2610643 (and tp!1285352 (inv!60807 (tag!8592 (rule!10832 t!8364))) (inv!60810 (transformation!7728 (rule!10832 t!8364))) e!2610626))))

(declare-fun e!2610623 () Bool)

(declare-fun e!2610644 () Bool)

(declare-fun tp!1285353 () Bool)

(declare-fun b!4205528 () Bool)

(assert (=> b!4205528 (= e!2610644 (and tp!1285353 (inv!60807 (tag!8592 rBis!178)) (inv!60810 (transformation!7728 rBis!178)) e!2610623))))

(declare-fun b!4205529 () Bool)

(assert (=> b!4205529 (= e!2610621 true)))

(declare-fun lt!1497638 () Bool)

(declare-fun rulesInvariant!6534 (LexerInterface!7323 List!46351) Bool)

(assert (=> b!4205529 (= lt!1497638 (rulesInvariant!6534 thiss!26544 (Cons!46227 (h!51647 rules!3967) (t!347420 rules!3967))))))

(declare-fun lt!1497636 () List!46350)

(declare-datatypes ((tuple2!43978 0))(
  ( (tuple2!43979 (_1!25123 Token!14158) (_2!25123 List!46350)) )
))
(declare-fun lt!1497641 () tuple2!43978)

(declare-fun ++!11802 (List!46350 List!46350) List!46350)

(assert (=> b!4205529 (isPrefix!4587 lt!1497636 (++!11802 lt!1497636 (_2!25123 lt!1497641)))))

(declare-fun lt!1497637 () Unit!65331)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3060 (List!46350 List!46350) Unit!65331)

(assert (=> b!4205529 (= lt!1497637 (lemmaConcatTwoListThenFirstIsPrefix!3060 lt!1497636 (_2!25123 lt!1497641)))))

(declare-fun list!16707 (BalanceConc!27472) List!46350)

(declare-fun charsOf!5151 (Token!14158) BalanceConc!27472)

(assert (=> b!4205529 (= lt!1497636 (list!16707 (charsOf!5151 (_1!25123 lt!1497641))))))

(declare-datatypes ((Option!9916 0))(
  ( (None!9915) (Some!9915 (v!40775 tuple2!43978)) )
))
(declare-fun lt!1497643 () Option!9916)

(declare-fun get!15034 (Option!9916) tuple2!43978)

(assert (=> b!4205529 (= lt!1497641 (get!15034 lt!1497643))))

(declare-fun lt!1497639 () Unit!65331)

(assert (=> b!4205529 (= lt!1497639 e!2610628)))

(declare-fun c!716787 () Bool)

(declare-fun isEmpty!27373 (Option!9916) Bool)

(assert (=> b!4205529 (= c!716787 (isEmpty!27373 lt!1497643))))

(declare-fun maxPrefix!4363 (LexerInterface!7323 List!46351 List!46350) Option!9916)

(assert (=> b!4205529 (= lt!1497643 (maxPrefix!4363 thiss!26544 (t!347420 rules!3967) input!3517))))

(declare-fun b!4205530 () Bool)

(declare-fun res!1727309 () Bool)

(assert (=> b!4205530 (=> (not res!1727309) (not e!2610622))))

(declare-fun p!3001 () List!46350)

(declare-fun suffix!1557 () List!46350)

(assert (=> b!4205530 (= res!1727309 (= (++!11802 p!3001 suffix!1557) input!3517))))

(declare-fun tp!1285359 () Bool)

(declare-fun b!4205531 () Bool)

(declare-fun e!2610625 () Bool)

(declare-fun inv!21 (TokenValue!7958) Bool)

(assert (=> b!4205531 (= e!2610625 (and (inv!21 (value!240777 t!8364)) e!2610643 tp!1285359))))

(declare-fun b!4205532 () Bool)

(assert (=> b!4205532 (= e!2610622 e!2610631)))

(declare-fun res!1727303 () Bool)

(assert (=> b!4205532 (=> (not res!1727303) (not e!2610631))))

(declare-fun lt!1497644 () Option!9916)

(assert (=> b!4205532 (= res!1727303 (= (maxPrefix!4363 thiss!26544 rules!3967 input!3517) lt!1497644))))

(assert (=> b!4205532 (= lt!1497644 (Some!9915 (tuple2!43979 t!8364 suffix!1557)))))

(assert (=> b!4205533 (= e!2610626 (and tp!1285346 tp!1285354))))

(declare-fun e!2610640 () Bool)

(declare-fun tp!1285356 () Bool)

(declare-fun e!2610620 () Bool)

(declare-fun b!4205534 () Bool)

(assert (=> b!4205534 (= e!2610620 (and tp!1285356 (inv!60807 (tag!8592 (h!51647 rules!3967))) (inv!60810 (transformation!7728 (h!51647 rules!3967))) e!2610640))))

(declare-fun b!4205535 () Bool)

(declare-fun res!1727299 () Bool)

(assert (=> b!4205535 (=> (not res!1727299) (not e!2610622))))

(assert (=> b!4205535 (= res!1727299 (rulesInvariant!6534 thiss!26544 rules!3967))))

(declare-fun b!4205536 () Bool)

(assert (=> b!4205536 (= e!2610631 (not e!2610621))))

(declare-fun res!1727301 () Bool)

(assert (=> b!4205536 (=> res!1727301 e!2610621)))

(declare-fun suffixBis!41 () List!46350)

(declare-fun maxPrefixOneRule!3318 (LexerInterface!7323 Rule!15256 List!46350) Option!9916)

(assert (=> b!4205536 (= res!1727301 (not (= (maxPrefixOneRule!3318 thiss!26544 rBis!178 input!3517) (Some!9915 (tuple2!43979 tBis!41 suffixBis!41)))))))

(assert (=> b!4205536 (isPrefix!4587 input!3517 input!3517)))

(declare-fun lt!1497640 () Unit!65331)

(declare-fun lemmaIsPrefixRefl!3004 (List!46350 List!46350) Unit!65331)

(assert (=> b!4205536 (= lt!1497640 (lemmaIsPrefixRefl!3004 input!3517 input!3517))))

(declare-fun b!4205537 () Bool)

(declare-fun res!1727302 () Bool)

(assert (=> b!4205537 (=> res!1727302 e!2610621)))

(assert (=> b!4205537 (= res!1727302 (not (= (maxPrefixOneRule!3318 thiss!26544 (h!51647 rules!3967) input!3517) lt!1497644)))))

(declare-fun b!4205538 () Bool)

(declare-fun e!2610629 () Bool)

(declare-fun tp!1285358 () Bool)

(assert (=> b!4205538 (= e!2610629 (and tp_is_empty!22233 tp!1285358))))

(assert (=> b!4205539 (= e!2610640 (and tp!1285362 tp!1285344))))

(declare-fun b!4205540 () Bool)

(declare-fun res!1727300 () Bool)

(assert (=> b!4205540 (=> (not res!1727300) (not e!2610622))))

(assert (=> b!4205540 (= res!1727300 (isPrefix!4587 p!3001 input!3517))))

(assert (=> b!4205541 (= e!2610623 (and tp!1285347 tp!1285343))))

(declare-fun b!4205542 () Bool)

(declare-fun res!1727307 () Bool)

(assert (=> b!4205542 (=> res!1727307 e!2610621)))

(assert (=> b!4205542 (= res!1727307 (not (= (list!16707 (charsOf!5151 tBis!41)) pBis!121)))))

(declare-fun e!2610633 () Bool)

(declare-fun b!4205543 () Bool)

(declare-fun tp!1285360 () Bool)

(declare-fun e!2610641 () Bool)

(assert (=> b!4205543 (= e!2610641 (and (inv!21 (value!240777 tBis!41)) e!2610633 tp!1285360))))

(declare-fun b!4205544 () Bool)

(declare-fun e!2610624 () Bool)

(declare-fun tp!1285357 () Bool)

(assert (=> b!4205544 (= e!2610624 (and e!2610620 tp!1285357))))

(declare-fun e!2610619 () Bool)

(declare-fun tp!1285351 () Bool)

(declare-fun b!4205545 () Bool)

(assert (=> b!4205545 (= e!2610633 (and tp!1285351 (inv!60807 (tag!8592 (rule!10832 tBis!41))) (inv!60810 (transformation!7728 (rule!10832 tBis!41))) e!2610619))))

(declare-fun b!4205546 () Bool)

(declare-fun res!1727295 () Bool)

(assert (=> b!4205546 (=> (not res!1727295) (not e!2610622))))

(declare-fun contains!9545 (List!46351 Rule!15256) Bool)

(assert (=> b!4205546 (= res!1727295 (contains!9545 rules!3967 rBis!178))))

(declare-fun b!4205547 () Bool)

(declare-fun e!2610636 () Bool)

(declare-fun tp!1285355 () Bool)

(assert (=> b!4205547 (= e!2610636 (and tp_is_empty!22233 tp!1285355))))

(declare-fun b!4205549 () Bool)

(declare-fun e!2610632 () Bool)

(declare-fun tp!1285349 () Bool)

(assert (=> b!4205549 (= e!2610632 (and tp_is_empty!22233 tp!1285349))))

(assert (=> b!4205548 (= e!2610619 (and tp!1285348 tp!1285350))))

(declare-fun res!1727298 () Bool)

(assert (=> start!401826 (=> (not res!1727298) (not e!2610622))))

(get-info :version)

(assert (=> start!401826 (= res!1727298 ((_ is Lexer!7321) thiss!26544))))

(assert (=> start!401826 e!2610622))

(declare-fun inv!60811 (Token!14158) Bool)

(assert (=> start!401826 (and (inv!60811 tBis!41) e!2610641)))

(assert (=> start!401826 true))

(assert (=> start!401826 e!2610644))

(assert (=> start!401826 e!2610635))

(assert (=> start!401826 e!2610624))

(assert (=> start!401826 e!2610632))

(assert (=> start!401826 (and (inv!60811 t!8364) e!2610625)))

(assert (=> start!401826 e!2610639))

(assert (=> start!401826 e!2610629))

(assert (=> start!401826 e!2610636))

(declare-fun b!4205550 () Bool)

(declare-fun Unit!65334 () Unit!65331)

(assert (=> b!4205550 (= e!2610628 Unit!65334)))

(declare-fun lt!1497642 () Unit!65331)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!606 (LexerInterface!7323 Rule!15256 List!46351 List!46350) Unit!65331)

(assert (=> b!4205550 (= lt!1497642 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!606 thiss!26544 rBis!178 (t!347420 rules!3967) input!3517))))

(assert (=> b!4205550 false))

(declare-fun b!4205551 () Bool)

(declare-fun res!1727308 () Bool)

(assert (=> b!4205551 (=> res!1727308 e!2610621)))

(assert (=> b!4205551 (= res!1727308 (or (and ((_ is Cons!46227) rules!3967) ((_ is Nil!46227) (t!347420 rules!3967))) (not ((_ is Cons!46227) rules!3967)) (= (h!51647 rules!3967) rBis!178)))))

(declare-fun b!4205552 () Bool)

(declare-fun res!1727297 () Bool)

(assert (=> b!4205552 (=> res!1727297 e!2610621)))

(assert (=> b!4205552 (= res!1727297 (not (= (++!11802 pBis!121 suffixBis!41) input!3517)))))

(assert (= (and start!401826 res!1727298) b!4205530))

(assert (= (and b!4205530 res!1727309) b!4205540))

(assert (= (and b!4205540 res!1727300) b!4205525))

(assert (= (and b!4205525 res!1727306) b!4205526))

(assert (= (and b!4205526 res!1727296) b!4205535))

(assert (= (and b!4205535 res!1727299) b!4205546))

(assert (= (and b!4205546 res!1727295) b!4205532))

(assert (= (and b!4205532 res!1727303) b!4205522))

(assert (= (and b!4205522 res!1727305) b!4205536))

(assert (= (and b!4205536 (not res!1727301)) b!4205520))

(assert (= (and b!4205520 (not res!1727304)) b!4205542))

(assert (= (and b!4205542 (not res!1727307)) b!4205552))

(assert (= (and b!4205552 (not res!1727297)) b!4205551))

(assert (= (and b!4205551 (not res!1727308)) b!4205537))

(assert (= (and b!4205537 (not res!1727302)) b!4205529))

(assert (= (and b!4205529 c!716787) b!4205550))

(assert (= (and b!4205529 (not c!716787)) b!4205524))

(assert (= b!4205545 b!4205548))

(assert (= b!4205543 b!4205545))

(assert (= start!401826 b!4205543))

(assert (= b!4205528 b!4205541))

(assert (= start!401826 b!4205528))

(assert (= (and start!401826 ((_ is Cons!46226) p!3001)) b!4205521))

(assert (= b!4205534 b!4205539))

(assert (= b!4205544 b!4205534))

(assert (= (and start!401826 ((_ is Cons!46227) rules!3967)) b!4205544))

(assert (= (and start!401826 ((_ is Cons!46226) input!3517)) b!4205549))

(assert (= b!4205527 b!4205533))

(assert (= b!4205531 b!4205527))

(assert (= start!401826 b!4205531))

(assert (= (and start!401826 ((_ is Cons!46226) pBis!121)) b!4205523))

(assert (= (and start!401826 ((_ is Cons!46226) suffix!1557)) b!4205538))

(assert (= (and start!401826 ((_ is Cons!46226) suffixBis!41)) b!4205547))

(declare-fun m!4793669 () Bool)

(assert (=> b!4205527 m!4793669))

(declare-fun m!4793671 () Bool)

(assert (=> b!4205527 m!4793671))

(declare-fun m!4793673 () Bool)

(assert (=> b!4205528 m!4793673))

(declare-fun m!4793675 () Bool)

(assert (=> b!4205528 m!4793675))

(declare-fun m!4793677 () Bool)

(assert (=> b!4205545 m!4793677))

(declare-fun m!4793679 () Bool)

(assert (=> b!4205545 m!4793679))

(declare-fun m!4793681 () Bool)

(assert (=> b!4205540 m!4793681))

(declare-fun m!4793683 () Bool)

(assert (=> b!4205550 m!4793683))

(declare-fun m!4793685 () Bool)

(assert (=> b!4205522 m!4793685))

(declare-fun m!4793687 () Bool)

(assert (=> b!4205529 m!4793687))

(declare-fun m!4793689 () Bool)

(assert (=> b!4205529 m!4793689))

(declare-fun m!4793691 () Bool)

(assert (=> b!4205529 m!4793691))

(declare-fun m!4793693 () Bool)

(assert (=> b!4205529 m!4793693))

(declare-fun m!4793695 () Bool)

(assert (=> b!4205529 m!4793695))

(declare-fun m!4793697 () Bool)

(assert (=> b!4205529 m!4793697))

(assert (=> b!4205529 m!4793691))

(declare-fun m!4793699 () Bool)

(assert (=> b!4205529 m!4793699))

(declare-fun m!4793701 () Bool)

(assert (=> b!4205529 m!4793701))

(assert (=> b!4205529 m!4793699))

(declare-fun m!4793703 () Bool)

(assert (=> b!4205529 m!4793703))

(declare-fun m!4793705 () Bool)

(assert (=> b!4205542 m!4793705))

(assert (=> b!4205542 m!4793705))

(declare-fun m!4793707 () Bool)

(assert (=> b!4205542 m!4793707))

(declare-fun m!4793709 () Bool)

(assert (=> b!4205546 m!4793709))

(declare-fun m!4793711 () Bool)

(assert (=> b!4205537 m!4793711))

(declare-fun m!4793713 () Bool)

(assert (=> b!4205552 m!4793713))

(declare-fun m!4793715 () Bool)

(assert (=> b!4205531 m!4793715))

(declare-fun m!4793717 () Bool)

(assert (=> b!4205543 m!4793717))

(declare-fun m!4793719 () Bool)

(assert (=> b!4205535 m!4793719))

(declare-fun m!4793721 () Bool)

(assert (=> b!4205525 m!4793721))

(declare-fun m!4793723 () Bool)

(assert (=> b!4205534 m!4793723))

(declare-fun m!4793725 () Bool)

(assert (=> b!4205534 m!4793725))

(declare-fun m!4793727 () Bool)

(assert (=> start!401826 m!4793727))

(declare-fun m!4793729 () Bool)

(assert (=> start!401826 m!4793729))

(declare-fun m!4793731 () Bool)

(assert (=> b!4205526 m!4793731))

(declare-fun m!4793733 () Bool)

(assert (=> b!4205530 m!4793733))

(declare-fun m!4793735 () Bool)

(assert (=> b!4205532 m!4793735))

(declare-fun m!4793737 () Bool)

(assert (=> b!4205536 m!4793737))

(declare-fun m!4793739 () Bool)

(assert (=> b!4205536 m!4793739))

(declare-fun m!4793741 () Bool)

(assert (=> b!4205536 m!4793741))

(check-sat (not b_next!123573) (not b_next!123575) (not b!4205527) (not b!4205526) b_and!330505 b_and!330499 (not b!4205534) (not b!4205543) b_and!330497 (not b!4205523) (not b!4205521) (not b!4205532) (not b_next!123579) (not b!4205549) b_and!330503 (not b!4205525) (not b!4205531) (not b!4205522) (not b!4205544) (not b!4205546) (not b!4205547) b_and!330495 (not b_next!123585) b_and!330493 tp_is_empty!22233 (not b!4205545) (not b_next!123581) (not b!4205535) b_and!330507 (not b_next!123571) (not b!4205530) b_and!330501 (not b!4205537) (not b!4205529) (not b_next!123577) (not b!4205552) (not b!4205538) (not b!4205542) (not start!401826) (not b!4205536) (not b!4205528) (not b!4205540) (not b!4205550) (not b_next!123583))
(check-sat b_and!330497 (not b_next!123579) b_and!330503 b_and!330495 (not b_next!123573) (not b_next!123575) (not b_next!123581) b_and!330501 b_and!330505 (not b_next!123577) b_and!330499 (not b_next!123583) (not b_next!123585) b_and!330493 b_and!330507 (not b_next!123571))
