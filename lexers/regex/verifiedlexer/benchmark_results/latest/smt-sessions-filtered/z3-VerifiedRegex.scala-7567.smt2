; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!399282 () Bool)

(assert start!399282)

(declare-fun b!4185525 () Bool)

(declare-fun b_free!121703 () Bool)

(declare-fun b_next!122407 () Bool)

(assert (=> b!4185525 (= b_free!121703 (not b_next!122407))))

(declare-fun tp!1279119 () Bool)

(declare-fun b_and!327745 () Bool)

(assert (=> b!4185525 (= tp!1279119 b_and!327745)))

(declare-fun b_free!121705 () Bool)

(declare-fun b_next!122409 () Bool)

(assert (=> b!4185525 (= b_free!121705 (not b_next!122409))))

(declare-fun tp!1279118 () Bool)

(declare-fun b_and!327747 () Bool)

(assert (=> b!4185525 (= tp!1279118 b_and!327747)))

(declare-fun b!4185532 () Bool)

(declare-fun b_free!121707 () Bool)

(declare-fun b_next!122411 () Bool)

(assert (=> b!4185532 (= b_free!121707 (not b_next!122411))))

(declare-fun tp!1279122 () Bool)

(declare-fun b_and!327749 () Bool)

(assert (=> b!4185532 (= tp!1279122 b_and!327749)))

(declare-fun b_free!121709 () Bool)

(declare-fun b_next!122413 () Bool)

(assert (=> b!4185532 (= b_free!121709 (not b_next!122413))))

(declare-fun tp!1279116 () Bool)

(declare-fun b_and!327751 () Bool)

(assert (=> b!4185532 (= tp!1279116 b_and!327751)))

(declare-fun b!4185547 () Bool)

(declare-fun b_free!121711 () Bool)

(declare-fun b_next!122415 () Bool)

(assert (=> b!4185547 (= b_free!121711 (not b_next!122415))))

(declare-fun tp!1279114 () Bool)

(declare-fun b_and!327753 () Bool)

(assert (=> b!4185547 (= tp!1279114 b_and!327753)))

(declare-fun b_free!121713 () Bool)

(declare-fun b_next!122417 () Bool)

(assert (=> b!4185547 (= b_free!121713 (not b_next!122417))))

(declare-fun tp!1279120 () Bool)

(declare-fun b_and!327755 () Bool)

(assert (=> b!4185547 (= tp!1279120 b_and!327755)))

(declare-fun b!4185522 () Bool)

(declare-fun e!2598365 () Bool)

(declare-fun e!2598368 () Bool)

(assert (=> b!4185522 (= e!2598365 e!2598368)))

(declare-fun res!1716693 () Bool)

(assert (=> b!4185522 (=> res!1716693 e!2598368)))

(declare-datatypes ((List!46071 0))(
  ( (Nil!45947) (Cons!45947 (h!51367 (_ BitVec 16)) (t!345570 List!46071)) )
))
(declare-datatypes ((TokenValue!7880 0))(
  ( (FloatLiteralValue!15760 (text!55605 List!46071)) (TokenValueExt!7879 (__x!27981 Int)) (Broken!39400 (value!238531 List!46071)) (Object!8003) (End!7880) (Def!7880) (Underscore!7880) (Match!7880) (Else!7880) (Error!7880) (Case!7880) (If!7880) (Extends!7880) (Abstract!7880) (Class!7880) (Val!7880) (DelimiterValue!15760 (del!7940 List!46071)) (KeywordValue!7886 (value!238532 List!46071)) (CommentValue!15760 (value!238533 List!46071)) (WhitespaceValue!15760 (value!238534 List!46071)) (IndentationValue!7880 (value!238535 List!46071)) (String!53265) (Int32!7880) (Broken!39401 (value!238536 List!46071)) (Boolean!7881) (Unit!65040) (OperatorValue!7883 (op!7940 List!46071)) (IdentifierValue!15760 (value!238537 List!46071)) (IdentifierValue!15761 (value!238538 List!46071)) (WhitespaceValue!15761 (value!238539 List!46071)) (True!15760) (False!15760) (Broken!39402 (value!238540 List!46071)) (Broken!39403 (value!238541 List!46071)) (True!15761) (RightBrace!7880) (RightBracket!7880) (Colon!7880) (Null!7880) (Comma!7880) (LeftBracket!7880) (False!15761) (LeftBrace!7880) (ImaginaryLiteralValue!7880 (text!55606 List!46071)) (StringLiteralValue!23640 (value!238542 List!46071)) (EOFValue!7880 (value!238543 List!46071)) (IdentValue!7880 (value!238544 List!46071)) (DelimiterValue!15761 (value!238545 List!46071)) (DedentValue!7880 (value!238546 List!46071)) (NewLineValue!7880 (value!238547 List!46071)) (IntegerValue!23640 (value!238548 (_ BitVec 32)) (text!55607 List!46071)) (IntegerValue!23641 (value!238549 Int) (text!55608 List!46071)) (Times!7880) (Or!7880) (Equal!7880) (Minus!7880) (Broken!39404 (value!238550 List!46071)) (And!7880) (Div!7880) (LessEqual!7880) (Mod!7880) (Concat!20435) (Not!7880) (Plus!7880) (SpaceValue!7880 (value!238551 List!46071)) (IntegerValue!23642 (value!238552 Int) (text!55609 List!46071)) (StringLiteralValue!23641 (text!55610 List!46071)) (FloatLiteralValue!15761 (text!55611 List!46071)) (BytesLiteralValue!7880 (value!238553 List!46071)) (CommentValue!15761 (value!238554 List!46071)) (StringLiteralValue!23642 (value!238555 List!46071)) (ErrorTokenValue!7880 (msg!7941 List!46071)) )
))
(declare-datatypes ((C!25300 0))(
  ( (C!25301 (val!14812 Int)) )
))
(declare-datatypes ((Regex!12555 0))(
  ( (ElementMatch!12555 (c!714560 C!25300)) (Concat!20436 (regOne!25622 Regex!12555) (regTwo!25622 Regex!12555)) (EmptyExpr!12555) (Star!12555 (reg!12884 Regex!12555)) (EmptyLang!12555) (Union!12555 (regOne!25623 Regex!12555) (regTwo!25623 Regex!12555)) )
))
(declare-datatypes ((String!53266 0))(
  ( (String!53267 (value!238556 String)) )
))
(declare-datatypes ((List!46072 0))(
  ( (Nil!45948) (Cons!45948 (h!51368 C!25300) (t!345571 List!46072)) )
))
(declare-datatypes ((IArray!27727 0))(
  ( (IArray!27728 (innerList!13921 List!46072)) )
))
(declare-datatypes ((Conc!13861 0))(
  ( (Node!13861 (left!34228 Conc!13861) (right!34558 Conc!13861) (csize!27952 Int) (cheight!14072 Int)) (Leaf!21429 (xs!17167 IArray!27727) (csize!27953 Int)) (Empty!13861) )
))
(declare-datatypes ((BalanceConc!27316 0))(
  ( (BalanceConc!27317 (c!714561 Conc!13861)) )
))
(declare-datatypes ((TokenValueInjection!15188 0))(
  ( (TokenValueInjection!15189 (toValue!10346 Int) (toChars!10205 Int)) )
))
(declare-datatypes ((Rule!15100 0))(
  ( (Rule!15101 (regex!7650 Regex!12555) (tag!8514 String!53266) (isSeparator!7650 Bool) (transformation!7650 TokenValueInjection!15188)) )
))
(declare-datatypes ((Token!14014 0))(
  ( (Token!14015 (value!238557 TokenValue!7880) (rule!10720 Rule!15100) (size!33744 Int) (originalCharacters!8038 List!46072)) )
))
(declare-datatypes ((tuple2!43754 0))(
  ( (tuple2!43755 (_1!25011 Token!14014) (_2!25011 List!46072)) )
))
(declare-datatypes ((Option!9844 0))(
  ( (None!9843) (Some!9843 (v!40661 tuple2!43754)) )
))
(declare-fun lt!1490632 () Option!9844)

(declare-fun isEmpty!27192 (Option!9844) Bool)

(assert (=> b!4185522 (= res!1716693 (isEmpty!27192 lt!1490632))))

(declare-fun input!3342 () List!46072)

(declare-datatypes ((LexerInterface!7243 0))(
  ( (LexerInterfaceExt!7240 (__x!27982 Int)) (Lexer!7241) )
))
(declare-fun thiss!25986 () LexerInterface!7243)

(declare-fun rBis!167 () Rule!15100)

(declare-fun maxPrefixOneRule!3252 (LexerInterface!7243 Rule!15100 List!46072) Option!9844)

(assert (=> b!4185522 (= lt!1490632 (maxPrefixOneRule!3252 thiss!25986 rBis!167 input!3342))))

(declare-datatypes ((Unit!65041 0))(
  ( (Unit!65042) )
))
(declare-fun lt!1490631 () Unit!65041)

(declare-datatypes ((List!46073 0))(
  ( (Nil!45949) (Cons!45949 (h!51369 Rule!15100) (t!345572 List!46073)) )
))
(declare-fun rules!3843 () List!46073)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2374 (LexerInterface!7243 Rule!15100 List!46073) Unit!65041)

(assert (=> b!4185522 (= lt!1490631 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2374 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1490628 () Int)

(declare-fun size!33745 (List!46072) Int)

(assert (=> b!4185522 (<= lt!1490628 (size!33745 input!3342))))

(declare-fun lt!1490621 () Unit!65041)

(declare-fun pBis!107 () List!46072)

(declare-fun lemmaIsPrefixThenSmallerEqSize!537 (List!46072 List!46072) Unit!65041)

(assert (=> b!4185522 (= lt!1490621 (lemmaIsPrefixThenSmallerEqSize!537 pBis!107 input!3342))))

(declare-fun b!4185523 () Bool)

(declare-fun e!2598358 () Bool)

(declare-fun r!4142 () Rule!15100)

(declare-fun e!2598366 () Bool)

(declare-fun tp!1279115 () Bool)

(declare-fun inv!60493 (String!53266) Bool)

(declare-fun inv!60495 (TokenValueInjection!15188) Bool)

(assert (=> b!4185523 (= e!2598358 (and tp!1279115 (inv!60493 (tag!8514 r!4142)) (inv!60495 (transformation!7650 r!4142)) e!2598366))))

(declare-fun b!4185524 () Bool)

(declare-fun res!1716682 () Bool)

(declare-fun e!2598361 () Bool)

(assert (=> b!4185524 (=> (not res!1716682) (not e!2598361))))

(declare-fun ruleValid!3368 (LexerInterface!7243 Rule!15100) Bool)

(assert (=> b!4185524 (= res!1716682 (ruleValid!3368 thiss!25986 r!4142))))

(assert (=> b!4185525 (= e!2598366 (and tp!1279119 tp!1279118))))

(declare-fun tp!1279117 () Bool)

(declare-fun e!2598363 () Bool)

(declare-fun b!4185526 () Bool)

(declare-fun e!2598356 () Bool)

(assert (=> b!4185526 (= e!2598356 (and tp!1279117 (inv!60493 (tag!8514 rBis!167)) (inv!60495 (transformation!7650 rBis!167)) e!2598363))))

(declare-fun b!4185527 () Bool)

(declare-fun e!2598372 () Bool)

(assert (=> b!4185527 (= e!2598361 (not e!2598372))))

(declare-fun res!1716687 () Bool)

(assert (=> b!4185527 (=> res!1716687 e!2598372)))

(declare-fun lt!1490630 () Option!9844)

(assert (=> b!4185527 (= res!1716687 (not (= (maxPrefixOneRule!3252 thiss!25986 r!4142 input!3342) lt!1490630)))))

(declare-fun lt!1490624 () TokenValue!7880)

(declare-fun p!2959 () List!46072)

(declare-fun lt!1490627 () Int)

(declare-fun lt!1490623 () List!46072)

(assert (=> b!4185527 (= lt!1490630 (Some!9843 (tuple2!43755 (Token!14015 lt!1490624 r!4142 lt!1490627 p!2959) lt!1490623)))))

(declare-fun getSuffix!2800 (List!46072 List!46072) List!46072)

(assert (=> b!4185527 (= lt!1490623 (getSuffix!2800 input!3342 p!2959))))

(assert (=> b!4185527 (= lt!1490627 (size!33745 p!2959))))

(declare-fun lt!1490622 () BalanceConc!27316)

(declare-fun apply!10615 (TokenValueInjection!15188 BalanceConc!27316) TokenValue!7880)

(assert (=> b!4185527 (= lt!1490624 (apply!10615 (transformation!7650 r!4142) lt!1490622))))

(declare-fun isPrefix!4507 (List!46072 List!46072) Bool)

(assert (=> b!4185527 (isPrefix!4507 input!3342 input!3342)))

(declare-fun lt!1490626 () Unit!65041)

(declare-fun lemmaIsPrefixRefl!2936 (List!46072 List!46072) Unit!65041)

(assert (=> b!4185527 (= lt!1490626 (lemmaIsPrefixRefl!2936 input!3342 input!3342))))

(declare-fun lt!1490625 () Unit!65041)

(declare-fun lemmaSemiInverse!2416 (TokenValueInjection!15188 BalanceConc!27316) Unit!65041)

(assert (=> b!4185527 (= lt!1490625 (lemmaSemiInverse!2416 (transformation!7650 r!4142) lt!1490622))))

(declare-fun seqFromList!5675 (List!46072) BalanceConc!27316)

(assert (=> b!4185527 (= lt!1490622 (seqFromList!5675 p!2959))))

(declare-fun tp!1279125 () Bool)

(declare-fun e!2598360 () Bool)

(declare-fun e!2598355 () Bool)

(declare-fun b!4185528 () Bool)

(assert (=> b!4185528 (= e!2598355 (and tp!1279125 (inv!60493 (tag!8514 (h!51369 rules!3843))) (inv!60495 (transformation!7650 (h!51369 rules!3843))) e!2598360))))

(declare-fun b!4185529 () Bool)

(declare-fun e!2598371 () Bool)

(declare-fun tp_is_empty!22073 () Bool)

(declare-fun tp!1279123 () Bool)

(assert (=> b!4185529 (= e!2598371 (and tp_is_empty!22073 tp!1279123))))

(declare-fun b!4185530 () Bool)

(declare-fun res!1716686 () Bool)

(assert (=> b!4185530 (=> (not res!1716686) (not e!2598361))))

(declare-fun contains!9459 (List!46073 Rule!15100) Bool)

(assert (=> b!4185530 (= res!1716686 (contains!9459 rules!3843 rBis!167))))

(declare-fun b!4185531 () Bool)

(declare-fun res!1716681 () Bool)

(assert (=> b!4185531 (=> (not res!1716681) (not e!2598361))))

(declare-fun rulesInvariant!6456 (LexerInterface!7243 List!46073) Bool)

(assert (=> b!4185531 (= res!1716681 (rulesInvariant!6456 thiss!25986 rules!3843))))

(declare-fun res!1716680 () Bool)

(assert (=> start!399282 (=> (not res!1716680) (not e!2598361))))

(get-info :version)

(assert (=> start!399282 (= res!1716680 ((_ is Lexer!7241) thiss!25986))))

(assert (=> start!399282 e!2598361))

(assert (=> start!399282 true))

(assert (=> start!399282 e!2598356))

(assert (=> start!399282 e!2598358))

(declare-fun e!2598369 () Bool)

(assert (=> start!399282 e!2598369))

(declare-fun e!2598357 () Bool)

(assert (=> start!399282 e!2598357))

(declare-fun e!2598367 () Bool)

(assert (=> start!399282 e!2598367))

(assert (=> start!399282 e!2598371))

(assert (=> b!4185532 (= e!2598360 (and tp!1279122 tp!1279116))))

(declare-fun b!4185533 () Bool)

(declare-fun res!1716694 () Bool)

(assert (=> b!4185533 (=> (not res!1716694) (not e!2598361))))

(declare-fun matchR!6294 (Regex!12555 List!46072) Bool)

(assert (=> b!4185533 (= res!1716694 (matchR!6294 (regex!7650 r!4142) p!2959))))

(declare-fun b!4185534 () Bool)

(declare-fun tp!1279126 () Bool)

(assert (=> b!4185534 (= e!2598367 (and tp_is_empty!22073 tp!1279126))))

(declare-fun b!4185535 () Bool)

(declare-fun res!1716691 () Bool)

(assert (=> b!4185535 (=> (not res!1716691) (not e!2598361))))

(assert (=> b!4185535 (= res!1716691 (isPrefix!4507 p!2959 input!3342))))

(declare-fun b!4185536 () Bool)

(declare-fun e!2598362 () Bool)

(assert (=> b!4185536 (= e!2598368 e!2598362)))

(declare-fun res!1716685 () Bool)

(assert (=> b!4185536 (=> res!1716685 e!2598362)))

(declare-fun lt!1490629 () List!46072)

(assert (=> b!4185536 (= res!1716685 (not (= lt!1490629 pBis!107)))))

(declare-fun lt!1490633 () tuple2!43754)

(declare-fun ++!11722 (List!46072 List!46072) List!46072)

(assert (=> b!4185536 (isPrefix!4507 lt!1490629 (++!11722 lt!1490629 (_2!25011 lt!1490633)))))

(declare-fun lt!1490634 () Unit!65041)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3004 (List!46072 List!46072) Unit!65041)

(assert (=> b!4185536 (= lt!1490634 (lemmaConcatTwoListThenFirstIsPrefix!3004 lt!1490629 (_2!25011 lt!1490633)))))

(declare-fun list!16596 (BalanceConc!27316) List!46072)

(declare-fun charsOf!5085 (Token!14014) BalanceConc!27316)

(assert (=> b!4185536 (= lt!1490629 (list!16596 (charsOf!5085 (_1!25011 lt!1490633))))))

(declare-fun get!14934 (Option!9844) tuple2!43754)

(assert (=> b!4185536 (= lt!1490633 (get!14934 lt!1490632))))

(declare-fun b!4185537 () Bool)

(assert (=> b!4185537 (= e!2598362 (= lt!1490632 (Some!9843 (tuple2!43755 (_1!25011 lt!1490633) (_2!25011 lt!1490633)))))))

(declare-fun b!4185538 () Bool)

(declare-fun res!1716683 () Bool)

(assert (=> b!4185538 (=> res!1716683 e!2598365)))

(assert (=> b!4185538 (= res!1716683 (not (ruleValid!3368 thiss!25986 rBis!167)))))

(declare-fun b!4185539 () Bool)

(declare-fun res!1716690 () Bool)

(assert (=> b!4185539 (=> res!1716690 e!2598362)))

(assert (=> b!4185539 (= res!1716690 (not (= (++!11722 p!2959 lt!1490623) input!3342)))))

(declare-fun b!4185540 () Bool)

(declare-fun tp!1279121 () Bool)

(assert (=> b!4185540 (= e!2598357 (and tp_is_empty!22073 tp!1279121))))

(declare-fun b!4185541 () Bool)

(declare-fun tp!1279124 () Bool)

(assert (=> b!4185541 (= e!2598369 (and e!2598355 tp!1279124))))

(declare-fun b!4185542 () Bool)

(declare-fun res!1716692 () Bool)

(assert (=> b!4185542 (=> (not res!1716692) (not e!2598361))))

(assert (=> b!4185542 (= res!1716692 (isPrefix!4507 pBis!107 input!3342))))

(declare-fun b!4185543 () Bool)

(assert (=> b!4185543 (= e!2598372 e!2598365)))

(declare-fun res!1716689 () Bool)

(assert (=> b!4185543 (=> res!1716689 e!2598365)))

(assert (=> b!4185543 (= res!1716689 (<= lt!1490628 lt!1490627))))

(assert (=> b!4185543 (= lt!1490628 (size!33745 pBis!107))))

(declare-fun b!4185544 () Bool)

(declare-fun res!1716684 () Bool)

(assert (=> b!4185544 (=> res!1716684 e!2598365)))

(declare-fun maxPrefix!4291 (LexerInterface!7243 List!46073 List!46072) Option!9844)

(assert (=> b!4185544 (= res!1716684 (not (= (maxPrefix!4291 thiss!25986 rules!3843 input!3342) lt!1490630)))))

(declare-fun b!4185545 () Bool)

(declare-fun res!1716678 () Bool)

(assert (=> b!4185545 (=> (not res!1716678) (not e!2598361))))

(assert (=> b!4185545 (= res!1716678 (contains!9459 rules!3843 r!4142))))

(declare-fun b!4185546 () Bool)

(declare-fun res!1716688 () Bool)

(assert (=> b!4185546 (=> (not res!1716688) (not e!2598361))))

(declare-fun isEmpty!27193 (List!46073) Bool)

(assert (=> b!4185546 (= res!1716688 (not (isEmpty!27193 rules!3843)))))

(assert (=> b!4185547 (= e!2598363 (and tp!1279114 tp!1279120))))

(declare-fun b!4185548 () Bool)

(declare-fun res!1716679 () Bool)

(assert (=> b!4185548 (=> (not res!1716679) (not e!2598361))))

(declare-fun validRegex!5672 (Regex!12555) Bool)

(assert (=> b!4185548 (= res!1716679 (validRegex!5672 (regex!7650 r!4142)))))

(assert (= (and start!399282 res!1716680) b!4185535))

(assert (= (and b!4185535 res!1716691) b!4185542))

(assert (= (and b!4185542 res!1716692) b!4185546))

(assert (= (and b!4185546 res!1716688) b!4185531))

(assert (= (and b!4185531 res!1716681) b!4185545))

(assert (= (and b!4185545 res!1716678) b!4185530))

(assert (= (and b!4185530 res!1716686) b!4185548))

(assert (= (and b!4185548 res!1716679) b!4185533))

(assert (= (and b!4185533 res!1716694) b!4185524))

(assert (= (and b!4185524 res!1716682) b!4185527))

(assert (= (and b!4185527 (not res!1716687)) b!4185543))

(assert (= (and b!4185543 (not res!1716689)) b!4185538))

(assert (= (and b!4185538 (not res!1716683)) b!4185544))

(assert (= (and b!4185544 (not res!1716684)) b!4185522))

(assert (= (and b!4185522 (not res!1716693)) b!4185536))

(assert (= (and b!4185536 (not res!1716685)) b!4185539))

(assert (= (and b!4185539 (not res!1716690)) b!4185537))

(assert (= b!4185526 b!4185547))

(assert (= start!399282 b!4185526))

(assert (= b!4185523 b!4185525))

(assert (= start!399282 b!4185523))

(assert (= b!4185528 b!4185532))

(assert (= b!4185541 b!4185528))

(assert (= (and start!399282 ((_ is Cons!45949) rules!3843)) b!4185541))

(assert (= (and start!399282 ((_ is Cons!45948) input!3342)) b!4185540))

(assert (= (and start!399282 ((_ is Cons!45948) pBis!107)) b!4185534))

(assert (= (and start!399282 ((_ is Cons!45948) p!2959)) b!4185529))

(declare-fun m!4774487 () Bool)

(assert (=> b!4185523 m!4774487))

(declare-fun m!4774489 () Bool)

(assert (=> b!4185523 m!4774489))

(declare-fun m!4774491 () Bool)

(assert (=> b!4185543 m!4774491))

(declare-fun m!4774493 () Bool)

(assert (=> b!4185533 m!4774493))

(declare-fun m!4774495 () Bool)

(assert (=> b!4185531 m!4774495))

(declare-fun m!4774497 () Bool)

(assert (=> b!4185538 m!4774497))

(declare-fun m!4774499 () Bool)

(assert (=> b!4185528 m!4774499))

(declare-fun m!4774501 () Bool)

(assert (=> b!4185528 m!4774501))

(declare-fun m!4774503 () Bool)

(assert (=> b!4185527 m!4774503))

(declare-fun m!4774505 () Bool)

(assert (=> b!4185527 m!4774505))

(declare-fun m!4774507 () Bool)

(assert (=> b!4185527 m!4774507))

(declare-fun m!4774509 () Bool)

(assert (=> b!4185527 m!4774509))

(declare-fun m!4774511 () Bool)

(assert (=> b!4185527 m!4774511))

(declare-fun m!4774513 () Bool)

(assert (=> b!4185527 m!4774513))

(declare-fun m!4774515 () Bool)

(assert (=> b!4185527 m!4774515))

(declare-fun m!4774517 () Bool)

(assert (=> b!4185527 m!4774517))

(declare-fun m!4774519 () Bool)

(assert (=> b!4185545 m!4774519))

(declare-fun m!4774521 () Bool)

(assert (=> b!4185542 m!4774521))

(declare-fun m!4774523 () Bool)

(assert (=> b!4185539 m!4774523))

(declare-fun m!4774525 () Bool)

(assert (=> b!4185546 m!4774525))

(declare-fun m!4774527 () Bool)

(assert (=> b!4185524 m!4774527))

(declare-fun m!4774529 () Bool)

(assert (=> b!4185522 m!4774529))

(declare-fun m!4774531 () Bool)

(assert (=> b!4185522 m!4774531))

(declare-fun m!4774533 () Bool)

(assert (=> b!4185522 m!4774533))

(declare-fun m!4774535 () Bool)

(assert (=> b!4185522 m!4774535))

(declare-fun m!4774537 () Bool)

(assert (=> b!4185522 m!4774537))

(declare-fun m!4774539 () Bool)

(assert (=> b!4185526 m!4774539))

(declare-fun m!4774541 () Bool)

(assert (=> b!4185526 m!4774541))

(declare-fun m!4774543 () Bool)

(assert (=> b!4185536 m!4774543))

(assert (=> b!4185536 m!4774543))

(declare-fun m!4774545 () Bool)

(assert (=> b!4185536 m!4774545))

(declare-fun m!4774547 () Bool)

(assert (=> b!4185536 m!4774547))

(declare-fun m!4774549 () Bool)

(assert (=> b!4185536 m!4774549))

(assert (=> b!4185536 m!4774549))

(declare-fun m!4774551 () Bool)

(assert (=> b!4185536 m!4774551))

(declare-fun m!4774553 () Bool)

(assert (=> b!4185536 m!4774553))

(declare-fun m!4774555 () Bool)

(assert (=> b!4185548 m!4774555))

(declare-fun m!4774557 () Bool)

(assert (=> b!4185535 m!4774557))

(declare-fun m!4774559 () Bool)

(assert (=> b!4185544 m!4774559))

(declare-fun m!4774561 () Bool)

(assert (=> b!4185530 m!4774561))

(check-sat (not b!4185542) (not b!4185540) (not b!4185544) (not b!4185527) tp_is_empty!22073 (not b_next!122413) (not b!4185536) (not b_next!122411) (not b!4185526) (not b_next!122407) (not b!4185545) b_and!327751 (not b!4185533) (not b!4185534) b_and!327747 (not b!4185539) (not b!4185548) b_and!327755 (not b_next!122415) b_and!327749 (not b!4185529) (not b!4185522) (not b!4185543) (not b!4185541) (not b!4185538) (not b_next!122409) (not b!4185524) (not b!4185530) b_and!327745 (not b_next!122417) (not b!4185523) (not b!4185531) (not b!4185546) (not b!4185535) (not b!4185528) b_and!327753)
(check-sat (not b_next!122411) (not b_next!122407) b_and!327751 b_and!327747 (not b_next!122409) (not b_next!122413) b_and!327753 b_and!327755 (not b_next!122415) b_and!327749 b_and!327745 (not b_next!122417))
(get-model)

(declare-fun d!1235120 () Bool)

(declare-fun lt!1490637 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7144 (List!46073) (InoxSet Rule!15100))

(assert (=> d!1235120 (= lt!1490637 (select (content!7144 rules!3843) rBis!167))))

(declare-fun e!2598378 () Bool)

(assert (=> d!1235120 (= lt!1490637 e!2598378)))

(declare-fun res!1716710 () Bool)

(assert (=> d!1235120 (=> (not res!1716710) (not e!2598378))))

(assert (=> d!1235120 (= res!1716710 ((_ is Cons!45949) rules!3843))))

(assert (=> d!1235120 (= (contains!9459 rules!3843 rBis!167) lt!1490637)))

(declare-fun b!4185553 () Bool)

(declare-fun e!2598377 () Bool)

(assert (=> b!4185553 (= e!2598378 e!2598377)))

(declare-fun res!1716709 () Bool)

(assert (=> b!4185553 (=> res!1716709 e!2598377)))

(assert (=> b!4185553 (= res!1716709 (= (h!51369 rules!3843) rBis!167))))

(declare-fun b!4185554 () Bool)

(assert (=> b!4185554 (= e!2598377 (contains!9459 (t!345572 rules!3843) rBis!167))))

(assert (= (and d!1235120 res!1716710) b!4185553))

(assert (= (and b!4185553 (not res!1716709)) b!4185554))

(declare-fun m!4774563 () Bool)

(assert (=> d!1235120 m!4774563))

(declare-fun m!4774565 () Bool)

(assert (=> d!1235120 m!4774565))

(declare-fun m!4774567 () Bool)

(assert (=> b!4185554 m!4774567))

(assert (=> b!4185530 d!1235120))

(declare-fun d!1235122 () Bool)

(declare-fun res!1716713 () Bool)

(declare-fun e!2598381 () Bool)

(assert (=> d!1235122 (=> (not res!1716713) (not e!2598381))))

(declare-fun rulesValid!2981 (LexerInterface!7243 List!46073) Bool)

(assert (=> d!1235122 (= res!1716713 (rulesValid!2981 thiss!25986 rules!3843))))

(assert (=> d!1235122 (= (rulesInvariant!6456 thiss!25986 rules!3843) e!2598381)))

(declare-fun b!4185557 () Bool)

(declare-datatypes ((List!46074 0))(
  ( (Nil!45950) (Cons!45950 (h!51370 String!53266) (t!345621 List!46074)) )
))
(declare-fun noDuplicateTag!3142 (LexerInterface!7243 List!46073 List!46074) Bool)

(assert (=> b!4185557 (= e!2598381 (noDuplicateTag!3142 thiss!25986 rules!3843 Nil!45950))))

(assert (= (and d!1235122 res!1716713) b!4185557))

(declare-fun m!4774569 () Bool)

(assert (=> d!1235122 m!4774569))

(declare-fun m!4774571 () Bool)

(assert (=> b!4185557 m!4774571))

(assert (=> b!4185531 d!1235122))

(declare-fun d!1235126 () Bool)

(assert (=> d!1235126 (= (inv!60493 (tag!8514 rBis!167)) (= (mod (str.len (value!238556 (tag!8514 rBis!167))) 2) 0))))

(assert (=> b!4185526 d!1235126))

(declare-fun d!1235128 () Bool)

(declare-fun res!1716722 () Bool)

(declare-fun e!2598390 () Bool)

(assert (=> d!1235128 (=> (not res!1716722) (not e!2598390))))

(declare-fun semiInverseModEq!3314 (Int Int) Bool)

(assert (=> d!1235128 (= res!1716722 (semiInverseModEq!3314 (toChars!10205 (transformation!7650 rBis!167)) (toValue!10346 (transformation!7650 rBis!167))))))

(assert (=> d!1235128 (= (inv!60495 (transformation!7650 rBis!167)) e!2598390)))

(declare-fun b!4185572 () Bool)

(declare-fun equivClasses!3213 (Int Int) Bool)

(assert (=> b!4185572 (= e!2598390 (equivClasses!3213 (toChars!10205 (transformation!7650 rBis!167)) (toValue!10346 (transformation!7650 rBis!167))))))

(assert (= (and d!1235128 res!1716722) b!4185572))

(declare-fun m!4774585 () Bool)

(assert (=> d!1235128 m!4774585))

(declare-fun m!4774587 () Bool)

(assert (=> b!4185572 m!4774587))

(assert (=> b!4185526 d!1235128))

(declare-fun b!4185590 () Bool)

(declare-fun res!1716740 () Bool)

(declare-fun e!2598403 () Bool)

(assert (=> b!4185590 (=> (not res!1716740) (not e!2598403))))

(declare-fun head!8881 (List!46072) C!25300)

(assert (=> b!4185590 (= res!1716740 (= (head!8881 input!3342) (head!8881 input!3342)))))

(declare-fun b!4185589 () Bool)

(declare-fun e!2598404 () Bool)

(assert (=> b!4185589 (= e!2598404 e!2598403)))

(declare-fun res!1716742 () Bool)

(assert (=> b!4185589 (=> (not res!1716742) (not e!2598403))))

(assert (=> b!4185589 (= res!1716742 (not ((_ is Nil!45948) input!3342)))))

(declare-fun b!4185592 () Bool)

(declare-fun e!2598402 () Bool)

(assert (=> b!4185592 (= e!2598402 (>= (size!33745 input!3342) (size!33745 input!3342)))))

(declare-fun d!1235132 () Bool)

(assert (=> d!1235132 e!2598402))

(declare-fun res!1716739 () Bool)

(assert (=> d!1235132 (=> res!1716739 e!2598402)))

(declare-fun lt!1490643 () Bool)

(assert (=> d!1235132 (= res!1716739 (not lt!1490643))))

(assert (=> d!1235132 (= lt!1490643 e!2598404)))

(declare-fun res!1716741 () Bool)

(assert (=> d!1235132 (=> res!1716741 e!2598404)))

(assert (=> d!1235132 (= res!1716741 ((_ is Nil!45948) input!3342))))

(assert (=> d!1235132 (= (isPrefix!4507 input!3342 input!3342) lt!1490643)))

(declare-fun b!4185591 () Bool)

(declare-fun tail!6728 (List!46072) List!46072)

(assert (=> b!4185591 (= e!2598403 (isPrefix!4507 (tail!6728 input!3342) (tail!6728 input!3342)))))

(assert (= (and d!1235132 (not res!1716741)) b!4185589))

(assert (= (and b!4185589 res!1716742) b!4185590))

(assert (= (and b!4185590 res!1716740) b!4185591))

(assert (= (and d!1235132 (not res!1716739)) b!4185592))

(declare-fun m!4774593 () Bool)

(assert (=> b!4185590 m!4774593))

(assert (=> b!4185590 m!4774593))

(assert (=> b!4185592 m!4774533))

(assert (=> b!4185592 m!4774533))

(declare-fun m!4774595 () Bool)

(assert (=> b!4185591 m!4774595))

(assert (=> b!4185591 m!4774595))

(assert (=> b!4185591 m!4774595))

(assert (=> b!4185591 m!4774595))

(declare-fun m!4774599 () Bool)

(assert (=> b!4185591 m!4774599))

(assert (=> b!4185527 d!1235132))

(declare-fun d!1235138 () Bool)

(declare-fun fromListB!2596 (List!46072) BalanceConc!27316)

(assert (=> d!1235138 (= (seqFromList!5675 p!2959) (fromListB!2596 p!2959))))

(declare-fun bs!596514 () Bool)

(assert (= bs!596514 d!1235138))

(declare-fun m!4774605 () Bool)

(assert (=> bs!596514 m!4774605))

(assert (=> b!4185527 d!1235138))

(declare-fun d!1235146 () Bool)

(assert (=> d!1235146 (isPrefix!4507 input!3342 input!3342)))

(declare-fun lt!1490649 () Unit!65041)

(declare-fun choose!25622 (List!46072 List!46072) Unit!65041)

(assert (=> d!1235146 (= lt!1490649 (choose!25622 input!3342 input!3342))))

(assert (=> d!1235146 (= (lemmaIsPrefixRefl!2936 input!3342 input!3342) lt!1490649)))

(declare-fun bs!596515 () Bool)

(assert (= bs!596515 d!1235146))

(assert (=> bs!596515 m!4774505))

(declare-fun m!4774611 () Bool)

(assert (=> bs!596515 m!4774611))

(assert (=> b!4185527 d!1235146))

(declare-fun d!1235152 () Bool)

(declare-fun dynLambda!19740 (Int BalanceConc!27316) TokenValue!7880)

(assert (=> d!1235152 (= (apply!10615 (transformation!7650 r!4142) lt!1490622) (dynLambda!19740 (toValue!10346 (transformation!7650 r!4142)) lt!1490622))))

(declare-fun b_lambda!123071 () Bool)

(assert (=> (not b_lambda!123071) (not d!1235152)))

(declare-fun t!345574 () Bool)

(declare-fun tb!250715 () Bool)

(assert (=> (and b!4185525 (= (toValue!10346 (transformation!7650 r!4142)) (toValue!10346 (transformation!7650 r!4142))) t!345574) tb!250715))

(declare-fun result!305500 () Bool)

(declare-fun inv!21 (TokenValue!7880) Bool)

(assert (=> tb!250715 (= result!305500 (inv!21 (dynLambda!19740 (toValue!10346 (transformation!7650 r!4142)) lt!1490622)))))

(declare-fun m!4774615 () Bool)

(assert (=> tb!250715 m!4774615))

(assert (=> d!1235152 t!345574))

(declare-fun b_and!327757 () Bool)

(assert (= b_and!327745 (and (=> t!345574 result!305500) b_and!327757)))

(declare-fun t!345576 () Bool)

(declare-fun tb!250717 () Bool)

(assert (=> (and b!4185532 (= (toValue!10346 (transformation!7650 (h!51369 rules!3843))) (toValue!10346 (transformation!7650 r!4142))) t!345576) tb!250717))

(declare-fun result!305504 () Bool)

(assert (= result!305504 result!305500))

(assert (=> d!1235152 t!345576))

(declare-fun b_and!327759 () Bool)

(assert (= b_and!327749 (and (=> t!345576 result!305504) b_and!327759)))

(declare-fun t!345578 () Bool)

(declare-fun tb!250719 () Bool)

(assert (=> (and b!4185547 (= (toValue!10346 (transformation!7650 rBis!167)) (toValue!10346 (transformation!7650 r!4142))) t!345578) tb!250719))

(declare-fun result!305506 () Bool)

(assert (= result!305506 result!305500))

(assert (=> d!1235152 t!345578))

(declare-fun b_and!327761 () Bool)

(assert (= b_and!327753 (and (=> t!345578 result!305506) b_and!327761)))

(declare-fun m!4774617 () Bool)

(assert (=> d!1235152 m!4774617))

(assert (=> b!4185527 d!1235152))

(declare-fun b!4185696 () Bool)

(declare-fun e!2598468 () Option!9844)

(declare-datatypes ((tuple2!43758 0))(
  ( (tuple2!43759 (_1!25013 List!46072) (_2!25013 List!46072)) )
))
(declare-fun lt!1490702 () tuple2!43758)

(declare-fun size!33747 (BalanceConc!27316) Int)

(assert (=> b!4185696 (= e!2598468 (Some!9843 (tuple2!43755 (Token!14015 (apply!10615 (transformation!7650 r!4142) (seqFromList!5675 (_1!25013 lt!1490702))) r!4142 (size!33747 (seqFromList!5675 (_1!25013 lt!1490702))) (_1!25013 lt!1490702)) (_2!25013 lt!1490702))))))

(declare-fun lt!1490706 () Unit!65041)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1568 (Regex!12555 List!46072) Unit!65041)

(assert (=> b!4185696 (= lt!1490706 (longestMatchIsAcceptedByMatchOrIsEmpty!1568 (regex!7650 r!4142) input!3342))))

(declare-fun res!1716814 () Bool)

(declare-fun isEmpty!27195 (List!46072) Bool)

(declare-fun findLongestMatchInner!1595 (Regex!12555 List!46072 Int List!46072 List!46072 Int) tuple2!43758)

(assert (=> b!4185696 (= res!1716814 (isEmpty!27195 (_1!25013 (findLongestMatchInner!1595 (regex!7650 r!4142) Nil!45948 (size!33745 Nil!45948) input!3342 input!3342 (size!33745 input!3342)))))))

(declare-fun e!2598471 () Bool)

(assert (=> b!4185696 (=> res!1716814 e!2598471)))

(assert (=> b!4185696 e!2598471))

(declare-fun lt!1490705 () Unit!65041)

(assert (=> b!4185696 (= lt!1490705 lt!1490706)))

(declare-fun lt!1490704 () Unit!65041)

(assert (=> b!4185696 (= lt!1490704 (lemmaSemiInverse!2416 (transformation!7650 r!4142) (seqFromList!5675 (_1!25013 lt!1490702))))))

(declare-fun b!4185697 () Bool)

(declare-fun e!2598469 () Bool)

(declare-fun lt!1490703 () Option!9844)

(assert (=> b!4185697 (= e!2598469 (= (size!33744 (_1!25011 (get!14934 lt!1490703))) (size!33745 (originalCharacters!8038 (_1!25011 (get!14934 lt!1490703))))))))

(declare-fun b!4185698 () Bool)

(declare-fun res!1716812 () Bool)

(assert (=> b!4185698 (=> (not res!1716812) (not e!2598469))))

(assert (=> b!4185698 (= res!1716812 (= (++!11722 (list!16596 (charsOf!5085 (_1!25011 (get!14934 lt!1490703)))) (_2!25011 (get!14934 lt!1490703))) input!3342))))

(declare-fun b!4185699 () Bool)

(declare-fun res!1716817 () Bool)

(assert (=> b!4185699 (=> (not res!1716817) (not e!2598469))))

(assert (=> b!4185699 (= res!1716817 (< (size!33745 (_2!25011 (get!14934 lt!1490703))) (size!33745 input!3342)))))

(declare-fun d!1235156 () Bool)

(declare-fun e!2598470 () Bool)

(assert (=> d!1235156 e!2598470))

(declare-fun res!1716811 () Bool)

(assert (=> d!1235156 (=> res!1716811 e!2598470)))

(assert (=> d!1235156 (= res!1716811 (isEmpty!27192 lt!1490703))))

(assert (=> d!1235156 (= lt!1490703 e!2598468)))

(declare-fun c!714579 () Bool)

(assert (=> d!1235156 (= c!714579 (isEmpty!27195 (_1!25013 lt!1490702)))))

(declare-fun findLongestMatch!1508 (Regex!12555 List!46072) tuple2!43758)

(assert (=> d!1235156 (= lt!1490702 (findLongestMatch!1508 (regex!7650 r!4142) input!3342))))

(assert (=> d!1235156 (ruleValid!3368 thiss!25986 r!4142)))

(assert (=> d!1235156 (= (maxPrefixOneRule!3252 thiss!25986 r!4142 input!3342) lt!1490703)))

(declare-fun b!4185700 () Bool)

(declare-fun res!1716815 () Bool)

(assert (=> b!4185700 (=> (not res!1716815) (not e!2598469))))

(assert (=> b!4185700 (= res!1716815 (= (rule!10720 (_1!25011 (get!14934 lt!1490703))) r!4142))))

(declare-fun b!4185701 () Bool)

(assert (=> b!4185701 (= e!2598468 None!9843)))

(declare-fun b!4185702 () Bool)

(assert (=> b!4185702 (= e!2598471 (matchR!6294 (regex!7650 r!4142) (_1!25013 (findLongestMatchInner!1595 (regex!7650 r!4142) Nil!45948 (size!33745 Nil!45948) input!3342 input!3342 (size!33745 input!3342)))))))

(declare-fun b!4185703 () Bool)

(assert (=> b!4185703 (= e!2598470 e!2598469)))

(declare-fun res!1716813 () Bool)

(assert (=> b!4185703 (=> (not res!1716813) (not e!2598469))))

(assert (=> b!4185703 (= res!1716813 (matchR!6294 (regex!7650 r!4142) (list!16596 (charsOf!5085 (_1!25011 (get!14934 lt!1490703))))))))

(declare-fun b!4185704 () Bool)

(declare-fun res!1716816 () Bool)

(assert (=> b!4185704 (=> (not res!1716816) (not e!2598469))))

(assert (=> b!4185704 (= res!1716816 (= (value!238557 (_1!25011 (get!14934 lt!1490703))) (apply!10615 (transformation!7650 (rule!10720 (_1!25011 (get!14934 lt!1490703)))) (seqFromList!5675 (originalCharacters!8038 (_1!25011 (get!14934 lt!1490703)))))))))

(assert (= (and d!1235156 c!714579) b!4185701))

(assert (= (and d!1235156 (not c!714579)) b!4185696))

(assert (= (and b!4185696 (not res!1716814)) b!4185702))

(assert (= (and d!1235156 (not res!1716811)) b!4185703))

(assert (= (and b!4185703 res!1716813) b!4185698))

(assert (= (and b!4185698 res!1716812) b!4185699))

(assert (= (and b!4185699 res!1716817) b!4185700))

(assert (= (and b!4185700 res!1716815) b!4185704))

(assert (= (and b!4185704 res!1716816) b!4185697))

(declare-fun m!4774735 () Bool)

(assert (=> b!4185700 m!4774735))

(assert (=> b!4185697 m!4774735))

(declare-fun m!4774737 () Bool)

(assert (=> b!4185697 m!4774737))

(assert (=> b!4185704 m!4774735))

(declare-fun m!4774739 () Bool)

(assert (=> b!4185704 m!4774739))

(assert (=> b!4185704 m!4774739))

(declare-fun m!4774741 () Bool)

(assert (=> b!4185704 m!4774741))

(declare-fun m!4774743 () Bool)

(assert (=> b!4185696 m!4774743))

(assert (=> b!4185696 m!4774533))

(declare-fun m!4774745 () Bool)

(assert (=> b!4185696 m!4774745))

(declare-fun m!4774747 () Bool)

(assert (=> b!4185696 m!4774747))

(declare-fun m!4774749 () Bool)

(assert (=> b!4185696 m!4774749))

(assert (=> b!4185696 m!4774747))

(declare-fun m!4774751 () Bool)

(assert (=> b!4185696 m!4774751))

(assert (=> b!4185696 m!4774747))

(declare-fun m!4774753 () Bool)

(assert (=> b!4185696 m!4774753))

(declare-fun m!4774755 () Bool)

(assert (=> b!4185696 m!4774755))

(assert (=> b!4185696 m!4774747))

(declare-fun m!4774757 () Bool)

(assert (=> b!4185696 m!4774757))

(assert (=> b!4185696 m!4774533))

(assert (=> b!4185696 m!4774743))

(assert (=> b!4185699 m!4774735))

(declare-fun m!4774759 () Bool)

(assert (=> b!4185699 m!4774759))

(assert (=> b!4185699 m!4774533))

(assert (=> b!4185698 m!4774735))

(declare-fun m!4774761 () Bool)

(assert (=> b!4185698 m!4774761))

(assert (=> b!4185698 m!4774761))

(declare-fun m!4774763 () Bool)

(assert (=> b!4185698 m!4774763))

(assert (=> b!4185698 m!4774763))

(declare-fun m!4774765 () Bool)

(assert (=> b!4185698 m!4774765))

(declare-fun m!4774767 () Bool)

(assert (=> d!1235156 m!4774767))

(declare-fun m!4774769 () Bool)

(assert (=> d!1235156 m!4774769))

(declare-fun m!4774771 () Bool)

(assert (=> d!1235156 m!4774771))

(assert (=> d!1235156 m!4774527))

(assert (=> b!4185703 m!4774735))

(assert (=> b!4185703 m!4774761))

(assert (=> b!4185703 m!4774761))

(assert (=> b!4185703 m!4774763))

(assert (=> b!4185703 m!4774763))

(declare-fun m!4774773 () Bool)

(assert (=> b!4185703 m!4774773))

(assert (=> b!4185702 m!4774743))

(assert (=> b!4185702 m!4774533))

(assert (=> b!4185702 m!4774743))

(assert (=> b!4185702 m!4774533))

(assert (=> b!4185702 m!4774745))

(declare-fun m!4774775 () Bool)

(assert (=> b!4185702 m!4774775))

(assert (=> b!4185527 d!1235156))

(declare-fun d!1235194 () Bool)

(declare-fun lt!1490709 () Int)

(assert (=> d!1235194 (>= lt!1490709 0)))

(declare-fun e!2598474 () Int)

(assert (=> d!1235194 (= lt!1490709 e!2598474)))

(declare-fun c!714582 () Bool)

(assert (=> d!1235194 (= c!714582 ((_ is Nil!45948) p!2959))))

(assert (=> d!1235194 (= (size!33745 p!2959) lt!1490709)))

(declare-fun b!4185709 () Bool)

(assert (=> b!4185709 (= e!2598474 0)))

(declare-fun b!4185710 () Bool)

(assert (=> b!4185710 (= e!2598474 (+ 1 (size!33745 (t!345571 p!2959))))))

(assert (= (and d!1235194 c!714582) b!4185709))

(assert (= (and d!1235194 (not c!714582)) b!4185710))

(declare-fun m!4774777 () Bool)

(assert (=> b!4185710 m!4774777))

(assert (=> b!4185527 d!1235194))

(declare-fun d!1235196 () Bool)

(declare-fun lt!1490712 () List!46072)

(assert (=> d!1235196 (= (++!11722 p!2959 lt!1490712) input!3342)))

(declare-fun e!2598477 () List!46072)

(assert (=> d!1235196 (= lt!1490712 e!2598477)))

(declare-fun c!714585 () Bool)

(assert (=> d!1235196 (= c!714585 ((_ is Cons!45948) p!2959))))

(assert (=> d!1235196 (>= (size!33745 input!3342) (size!33745 p!2959))))

(assert (=> d!1235196 (= (getSuffix!2800 input!3342 p!2959) lt!1490712)))

(declare-fun b!4185715 () Bool)

(assert (=> b!4185715 (= e!2598477 (getSuffix!2800 (tail!6728 input!3342) (t!345571 p!2959)))))

(declare-fun b!4185716 () Bool)

(assert (=> b!4185716 (= e!2598477 input!3342)))

(assert (= (and d!1235196 c!714585) b!4185715))

(assert (= (and d!1235196 (not c!714585)) b!4185716))

(declare-fun m!4774779 () Bool)

(assert (=> d!1235196 m!4774779))

(assert (=> d!1235196 m!4774533))

(assert (=> d!1235196 m!4774511))

(assert (=> b!4185715 m!4774595))

(assert (=> b!4185715 m!4774595))

(declare-fun m!4774781 () Bool)

(assert (=> b!4185715 m!4774781))

(assert (=> b!4185527 d!1235196))

(declare-fun b!4185811 () Bool)

(declare-fun e!2598534 () Bool)

(assert (=> b!4185811 (= e!2598534 true)))

(declare-fun d!1235198 () Bool)

(assert (=> d!1235198 e!2598534))

(assert (= d!1235198 b!4185811))

(declare-fun order!24277 () Int)

(declare-fun order!24279 () Int)

(declare-fun lambda!129445 () Int)

(declare-fun dynLambda!19743 (Int Int) Int)

(declare-fun dynLambda!19744 (Int Int) Int)

(assert (=> b!4185811 (< (dynLambda!19743 order!24277 (toValue!10346 (transformation!7650 r!4142))) (dynLambda!19744 order!24279 lambda!129445))))

(declare-fun order!24281 () Int)

(declare-fun dynLambda!19745 (Int Int) Int)

(assert (=> b!4185811 (< (dynLambda!19745 order!24281 (toChars!10205 (transformation!7650 r!4142))) (dynLambda!19744 order!24279 lambda!129445))))

(declare-fun dynLambda!19746 (Int TokenValue!7880) BalanceConc!27316)

(assert (=> d!1235198 (= (list!16596 (dynLambda!19746 (toChars!10205 (transformation!7650 r!4142)) (dynLambda!19740 (toValue!10346 (transformation!7650 r!4142)) lt!1490622))) (list!16596 lt!1490622))))

(declare-fun lt!1490728 () Unit!65041)

(declare-fun ForallOf!1047 (Int BalanceConc!27316) Unit!65041)

(assert (=> d!1235198 (= lt!1490728 (ForallOf!1047 lambda!129445 lt!1490622))))

(assert (=> d!1235198 (= (lemmaSemiInverse!2416 (transformation!7650 r!4142) lt!1490622) lt!1490728)))

(declare-fun b_lambda!123081 () Bool)

(assert (=> (not b_lambda!123081) (not d!1235198)))

(declare-fun t!345598 () Bool)

(declare-fun tb!250739 () Bool)

(assert (=> (and b!4185525 (= (toChars!10205 (transformation!7650 r!4142)) (toChars!10205 (transformation!7650 r!4142))) t!345598) tb!250739))

(declare-fun e!2598537 () Bool)

(declare-fun tp!1279133 () Bool)

(declare-fun b!4185816 () Bool)

(declare-fun inv!60498 (Conc!13861) Bool)

(assert (=> b!4185816 (= e!2598537 (and (inv!60498 (c!714561 (dynLambda!19746 (toChars!10205 (transformation!7650 r!4142)) (dynLambda!19740 (toValue!10346 (transformation!7650 r!4142)) lt!1490622)))) tp!1279133))))

(declare-fun result!305530 () Bool)

(declare-fun inv!60499 (BalanceConc!27316) Bool)

(assert (=> tb!250739 (= result!305530 (and (inv!60499 (dynLambda!19746 (toChars!10205 (transformation!7650 r!4142)) (dynLambda!19740 (toValue!10346 (transformation!7650 r!4142)) lt!1490622))) e!2598537))))

(assert (= tb!250739 b!4185816))

(declare-fun m!4774861 () Bool)

(assert (=> b!4185816 m!4774861))

(declare-fun m!4774863 () Bool)

(assert (=> tb!250739 m!4774863))

(assert (=> d!1235198 t!345598))

(declare-fun b_and!327787 () Bool)

(assert (= b_and!327747 (and (=> t!345598 result!305530) b_and!327787)))

(declare-fun tb!250741 () Bool)

(declare-fun t!345600 () Bool)

(assert (=> (and b!4185532 (= (toChars!10205 (transformation!7650 (h!51369 rules!3843))) (toChars!10205 (transformation!7650 r!4142))) t!345600) tb!250741))

(declare-fun result!305534 () Bool)

(assert (= result!305534 result!305530))

(assert (=> d!1235198 t!345600))

(declare-fun b_and!327789 () Bool)

(assert (= b_and!327751 (and (=> t!345600 result!305534) b_and!327789)))

(declare-fun t!345602 () Bool)

(declare-fun tb!250743 () Bool)

(assert (=> (and b!4185547 (= (toChars!10205 (transformation!7650 rBis!167)) (toChars!10205 (transformation!7650 r!4142))) t!345602) tb!250743))

(declare-fun result!305536 () Bool)

(assert (= result!305536 result!305530))

(assert (=> d!1235198 t!345602))

(declare-fun b_and!327791 () Bool)

(assert (= b_and!327755 (and (=> t!345602 result!305536) b_and!327791)))

(declare-fun b_lambda!123083 () Bool)

(assert (=> (not b_lambda!123083) (not d!1235198)))

(assert (=> d!1235198 t!345574))

(declare-fun b_and!327793 () Bool)

(assert (= b_and!327757 (and (=> t!345574 result!305500) b_and!327793)))

(assert (=> d!1235198 t!345576))

(declare-fun b_and!327795 () Bool)

(assert (= b_and!327759 (and (=> t!345576 result!305504) b_and!327795)))

(assert (=> d!1235198 t!345578))

(declare-fun b_and!327797 () Bool)

(assert (= b_and!327761 (and (=> t!345578 result!305506) b_and!327797)))

(assert (=> d!1235198 m!4774617))

(declare-fun m!4774865 () Bool)

(assert (=> d!1235198 m!4774865))

(declare-fun m!4774867 () Bool)

(assert (=> d!1235198 m!4774867))

(assert (=> d!1235198 m!4774865))

(declare-fun m!4774869 () Bool)

(assert (=> d!1235198 m!4774869))

(declare-fun m!4774871 () Bool)

(assert (=> d!1235198 m!4774871))

(assert (=> d!1235198 m!4774617))

(assert (=> b!4185527 d!1235198))

(declare-fun b!4185835 () Bool)

(declare-fun e!2598555 () Bool)

(declare-fun e!2598552 () Bool)

(assert (=> b!4185835 (= e!2598555 e!2598552)))

(declare-fun c!714609 () Bool)

(assert (=> b!4185835 (= c!714609 ((_ is Star!12555) (regex!7650 r!4142)))))

(declare-fun bm!291960 () Bool)

(declare-fun call!291967 () Bool)

(declare-fun call!291966 () Bool)

(assert (=> bm!291960 (= call!291967 call!291966)))

(declare-fun b!4185836 () Bool)

(declare-fun e!2598558 () Bool)

(assert (=> b!4185836 (= e!2598558 call!291967)))

(declare-fun b!4185837 () Bool)

(declare-fun res!1716878 () Bool)

(declare-fun e!2598554 () Bool)

(assert (=> b!4185837 (=> res!1716878 e!2598554)))

(assert (=> b!4185837 (= res!1716878 (not ((_ is Concat!20436) (regex!7650 r!4142))))))

(declare-fun e!2598553 () Bool)

(assert (=> b!4185837 (= e!2598553 e!2598554)))

(declare-fun bm!291961 () Bool)

(declare-fun call!291965 () Bool)

(declare-fun c!714608 () Bool)

(assert (=> bm!291961 (= call!291965 (validRegex!5672 (ite c!714608 (regOne!25623 (regex!7650 r!4142)) (regOne!25622 (regex!7650 r!4142)))))))

(declare-fun bm!291962 () Bool)

(assert (=> bm!291962 (= call!291966 (validRegex!5672 (ite c!714609 (reg!12884 (regex!7650 r!4142)) (ite c!714608 (regTwo!25623 (regex!7650 r!4142)) (regTwo!25622 (regex!7650 r!4142))))))))

(declare-fun b!4185838 () Bool)

(assert (=> b!4185838 (= e!2598552 e!2598553)))

(assert (=> b!4185838 (= c!714608 ((_ is Union!12555) (regex!7650 r!4142)))))

(declare-fun b!4185839 () Bool)

(declare-fun res!1716881 () Bool)

(assert (=> b!4185839 (=> (not res!1716881) (not e!2598558))))

(assert (=> b!4185839 (= res!1716881 call!291965)))

(assert (=> b!4185839 (= e!2598553 e!2598558)))

(declare-fun b!4185840 () Bool)

(declare-fun e!2598556 () Bool)

(assert (=> b!4185840 (= e!2598554 e!2598556)))

(declare-fun res!1716879 () Bool)

(assert (=> b!4185840 (=> (not res!1716879) (not e!2598556))))

(assert (=> b!4185840 (= res!1716879 call!291965)))

(declare-fun b!4185841 () Bool)

(assert (=> b!4185841 (= e!2598556 call!291967)))

(declare-fun b!4185842 () Bool)

(declare-fun e!2598557 () Bool)

(assert (=> b!4185842 (= e!2598557 call!291966)))

(declare-fun d!1235216 () Bool)

(declare-fun res!1716882 () Bool)

(assert (=> d!1235216 (=> res!1716882 e!2598555)))

(assert (=> d!1235216 (= res!1716882 ((_ is ElementMatch!12555) (regex!7650 r!4142)))))

(assert (=> d!1235216 (= (validRegex!5672 (regex!7650 r!4142)) e!2598555)))

(declare-fun b!4185843 () Bool)

(assert (=> b!4185843 (= e!2598552 e!2598557)))

(declare-fun res!1716880 () Bool)

(declare-fun nullable!4405 (Regex!12555) Bool)

(assert (=> b!4185843 (= res!1716880 (not (nullable!4405 (reg!12884 (regex!7650 r!4142)))))))

(assert (=> b!4185843 (=> (not res!1716880) (not e!2598557))))

(assert (= (and d!1235216 (not res!1716882)) b!4185835))

(assert (= (and b!4185835 c!714609) b!4185843))

(assert (= (and b!4185835 (not c!714609)) b!4185838))

(assert (= (and b!4185843 res!1716880) b!4185842))

(assert (= (and b!4185838 c!714608) b!4185839))

(assert (= (and b!4185838 (not c!714608)) b!4185837))

(assert (= (and b!4185839 res!1716881) b!4185836))

(assert (= (and b!4185837 (not res!1716878)) b!4185840))

(assert (= (and b!4185840 res!1716879) b!4185841))

(assert (= (or b!4185836 b!4185841) bm!291960))

(assert (= (or b!4185839 b!4185840) bm!291961))

(assert (= (or b!4185842 bm!291960) bm!291962))

(declare-fun m!4774873 () Bool)

(assert (=> bm!291961 m!4774873))

(declare-fun m!4774875 () Bool)

(assert (=> bm!291962 m!4774875))

(declare-fun m!4774877 () Bool)

(assert (=> b!4185843 m!4774877))

(assert (=> b!4185548 d!1235216))

(declare-fun d!1235218 () Bool)

(declare-fun res!1716887 () Bool)

(declare-fun e!2598561 () Bool)

(assert (=> d!1235218 (=> (not res!1716887) (not e!2598561))))

(assert (=> d!1235218 (= res!1716887 (validRegex!5672 (regex!7650 rBis!167)))))

(assert (=> d!1235218 (= (ruleValid!3368 thiss!25986 rBis!167) e!2598561)))

(declare-fun b!4185848 () Bool)

(declare-fun res!1716888 () Bool)

(assert (=> b!4185848 (=> (not res!1716888) (not e!2598561))))

(assert (=> b!4185848 (= res!1716888 (not (nullable!4405 (regex!7650 rBis!167))))))

(declare-fun b!4185849 () Bool)

(assert (=> b!4185849 (= e!2598561 (not (= (tag!8514 rBis!167) (String!53267 ""))))))

(assert (= (and d!1235218 res!1716887) b!4185848))

(assert (= (and b!4185848 res!1716888) b!4185849))

(declare-fun m!4774879 () Bool)

(assert (=> d!1235218 m!4774879))

(declare-fun m!4774881 () Bool)

(assert (=> b!4185848 m!4774881))

(assert (=> b!4185538 d!1235218))

(declare-fun b!4185859 () Bool)

(declare-fun e!2598566 () List!46072)

(assert (=> b!4185859 (= e!2598566 (Cons!45948 (h!51368 p!2959) (++!11722 (t!345571 p!2959) lt!1490623)))))

(declare-fun d!1235220 () Bool)

(declare-fun e!2598567 () Bool)

(assert (=> d!1235220 e!2598567))

(declare-fun res!1716894 () Bool)

(assert (=> d!1235220 (=> (not res!1716894) (not e!2598567))))

(declare-fun lt!1490732 () List!46072)

(declare-fun content!7146 (List!46072) (InoxSet C!25300))

(assert (=> d!1235220 (= res!1716894 (= (content!7146 lt!1490732) ((_ map or) (content!7146 p!2959) (content!7146 lt!1490623))))))

(assert (=> d!1235220 (= lt!1490732 e!2598566)))

(declare-fun c!714612 () Bool)

(assert (=> d!1235220 (= c!714612 ((_ is Nil!45948) p!2959))))

(assert (=> d!1235220 (= (++!11722 p!2959 lt!1490623) lt!1490732)))

(declare-fun b!4185860 () Bool)

(declare-fun res!1716893 () Bool)

(assert (=> b!4185860 (=> (not res!1716893) (not e!2598567))))

(assert (=> b!4185860 (= res!1716893 (= (size!33745 lt!1490732) (+ (size!33745 p!2959) (size!33745 lt!1490623))))))

(declare-fun b!4185858 () Bool)

(assert (=> b!4185858 (= e!2598566 lt!1490623)))

(declare-fun b!4185861 () Bool)

(assert (=> b!4185861 (= e!2598567 (or (not (= lt!1490623 Nil!45948)) (= lt!1490732 p!2959)))))

(assert (= (and d!1235220 c!714612) b!4185858))

(assert (= (and d!1235220 (not c!714612)) b!4185859))

(assert (= (and d!1235220 res!1716894) b!4185860))

(assert (= (and b!4185860 res!1716893) b!4185861))

(declare-fun m!4774883 () Bool)

(assert (=> b!4185859 m!4774883))

(declare-fun m!4774885 () Bool)

(assert (=> d!1235220 m!4774885))

(declare-fun m!4774887 () Bool)

(assert (=> d!1235220 m!4774887))

(declare-fun m!4774889 () Bool)

(assert (=> d!1235220 m!4774889))

(declare-fun m!4774891 () Bool)

(assert (=> b!4185860 m!4774891))

(assert (=> b!4185860 m!4774511))

(declare-fun m!4774893 () Bool)

(assert (=> b!4185860 m!4774893))

(assert (=> b!4185539 d!1235220))

(declare-fun d!1235222 () Bool)

(assert (=> d!1235222 (= (inv!60493 (tag!8514 (h!51369 rules!3843))) (= (mod (str.len (value!238556 (tag!8514 (h!51369 rules!3843)))) 2) 0))))

(assert (=> b!4185528 d!1235222))

(declare-fun d!1235224 () Bool)

(declare-fun res!1716895 () Bool)

(declare-fun e!2598568 () Bool)

(assert (=> d!1235224 (=> (not res!1716895) (not e!2598568))))

(assert (=> d!1235224 (= res!1716895 (semiInverseModEq!3314 (toChars!10205 (transformation!7650 (h!51369 rules!3843))) (toValue!10346 (transformation!7650 (h!51369 rules!3843)))))))

(assert (=> d!1235224 (= (inv!60495 (transformation!7650 (h!51369 rules!3843))) e!2598568)))

(declare-fun b!4185862 () Bool)

(assert (=> b!4185862 (= e!2598568 (equivClasses!3213 (toChars!10205 (transformation!7650 (h!51369 rules!3843))) (toValue!10346 (transformation!7650 (h!51369 rules!3843)))))))

(assert (= (and d!1235224 res!1716895) b!4185862))

(declare-fun m!4774895 () Bool)

(assert (=> d!1235224 m!4774895))

(declare-fun m!4774897 () Bool)

(assert (=> b!4185862 m!4774897))

(assert (=> b!4185528 d!1235224))

(declare-fun d!1235226 () Bool)

(declare-fun lt!1490733 () Bool)

(assert (=> d!1235226 (= lt!1490733 (select (content!7144 rules!3843) r!4142))))

(declare-fun e!2598570 () Bool)

(assert (=> d!1235226 (= lt!1490733 e!2598570)))

(declare-fun res!1716897 () Bool)

(assert (=> d!1235226 (=> (not res!1716897) (not e!2598570))))

(assert (=> d!1235226 (= res!1716897 ((_ is Cons!45949) rules!3843))))

(assert (=> d!1235226 (= (contains!9459 rules!3843 r!4142) lt!1490733)))

(declare-fun b!4185863 () Bool)

(declare-fun e!2598569 () Bool)

(assert (=> b!4185863 (= e!2598570 e!2598569)))

(declare-fun res!1716896 () Bool)

(assert (=> b!4185863 (=> res!1716896 e!2598569)))

(assert (=> b!4185863 (= res!1716896 (= (h!51369 rules!3843) r!4142))))

(declare-fun b!4185864 () Bool)

(assert (=> b!4185864 (= e!2598569 (contains!9459 (t!345572 rules!3843) r!4142))))

(assert (= (and d!1235226 res!1716897) b!4185863))

(assert (= (and b!4185863 (not res!1716896)) b!4185864))

(assert (=> d!1235226 m!4774563))

(declare-fun m!4774899 () Bool)

(assert (=> d!1235226 m!4774899))

(declare-fun m!4774901 () Bool)

(assert (=> b!4185864 m!4774901))

(assert (=> b!4185545 d!1235226))

(declare-fun b!4185866 () Bool)

(declare-fun res!1716899 () Bool)

(declare-fun e!2598572 () Bool)

(assert (=> b!4185866 (=> (not res!1716899) (not e!2598572))))

(assert (=> b!4185866 (= res!1716899 (= (head!8881 p!2959) (head!8881 input!3342)))))

(declare-fun b!4185865 () Bool)

(declare-fun e!2598573 () Bool)

(assert (=> b!4185865 (= e!2598573 e!2598572)))

(declare-fun res!1716901 () Bool)

(assert (=> b!4185865 (=> (not res!1716901) (not e!2598572))))

(assert (=> b!4185865 (= res!1716901 (not ((_ is Nil!45948) input!3342)))))

(declare-fun b!4185868 () Bool)

(declare-fun e!2598571 () Bool)

(assert (=> b!4185868 (= e!2598571 (>= (size!33745 input!3342) (size!33745 p!2959)))))

(declare-fun d!1235228 () Bool)

(assert (=> d!1235228 e!2598571))

(declare-fun res!1716898 () Bool)

(assert (=> d!1235228 (=> res!1716898 e!2598571)))

(declare-fun lt!1490734 () Bool)

(assert (=> d!1235228 (= res!1716898 (not lt!1490734))))

(assert (=> d!1235228 (= lt!1490734 e!2598573)))

(declare-fun res!1716900 () Bool)

(assert (=> d!1235228 (=> res!1716900 e!2598573)))

(assert (=> d!1235228 (= res!1716900 ((_ is Nil!45948) p!2959))))

(assert (=> d!1235228 (= (isPrefix!4507 p!2959 input!3342) lt!1490734)))

(declare-fun b!4185867 () Bool)

(assert (=> b!4185867 (= e!2598572 (isPrefix!4507 (tail!6728 p!2959) (tail!6728 input!3342)))))

(assert (= (and d!1235228 (not res!1716900)) b!4185865))

(assert (= (and b!4185865 res!1716901) b!4185866))

(assert (= (and b!4185866 res!1716899) b!4185867))

(assert (= (and d!1235228 (not res!1716898)) b!4185868))

(declare-fun m!4774903 () Bool)

(assert (=> b!4185866 m!4774903))

(assert (=> b!4185866 m!4774593))

(assert (=> b!4185868 m!4774533))

(assert (=> b!4185868 m!4774511))

(declare-fun m!4774905 () Bool)

(assert (=> b!4185867 m!4774905))

(assert (=> b!4185867 m!4774595))

(assert (=> b!4185867 m!4774905))

(assert (=> b!4185867 m!4774595))

(declare-fun m!4774907 () Bool)

(assert (=> b!4185867 m!4774907))

(assert (=> b!4185535 d!1235228))

(declare-fun d!1235230 () Bool)

(declare-fun res!1716902 () Bool)

(declare-fun e!2598574 () Bool)

(assert (=> d!1235230 (=> (not res!1716902) (not e!2598574))))

(assert (=> d!1235230 (= res!1716902 (validRegex!5672 (regex!7650 r!4142)))))

(assert (=> d!1235230 (= (ruleValid!3368 thiss!25986 r!4142) e!2598574)))

(declare-fun b!4185869 () Bool)

(declare-fun res!1716903 () Bool)

(assert (=> b!4185869 (=> (not res!1716903) (not e!2598574))))

(assert (=> b!4185869 (= res!1716903 (not (nullable!4405 (regex!7650 r!4142))))))

(declare-fun b!4185870 () Bool)

(assert (=> b!4185870 (= e!2598574 (not (= (tag!8514 r!4142) (String!53267 ""))))))

(assert (= (and d!1235230 res!1716902) b!4185869))

(assert (= (and b!4185869 res!1716903) b!4185870))

(assert (=> d!1235230 m!4774555))

(declare-fun m!4774909 () Bool)

(assert (=> b!4185869 m!4774909))

(assert (=> b!4185524 d!1235230))

(declare-fun d!1235232 () Bool)

(assert (=> d!1235232 (= (isEmpty!27193 rules!3843) ((_ is Nil!45949) rules!3843))))

(assert (=> b!4185546 d!1235232))

(declare-fun d!1235234 () Bool)

(declare-fun list!16598 (Conc!13861) List!46072)

(assert (=> d!1235234 (= (list!16596 (charsOf!5085 (_1!25011 lt!1490633))) (list!16598 (c!714561 (charsOf!5085 (_1!25011 lt!1490633)))))))

(declare-fun bs!596522 () Bool)

(assert (= bs!596522 d!1235234))

(declare-fun m!4774911 () Bool)

(assert (=> bs!596522 m!4774911))

(assert (=> b!4185536 d!1235234))

(declare-fun d!1235236 () Bool)

(assert (=> d!1235236 (= (get!14934 lt!1490632) (v!40661 lt!1490632))))

(assert (=> b!4185536 d!1235236))

(declare-fun d!1235238 () Bool)

(assert (=> d!1235238 (isPrefix!4507 lt!1490629 (++!11722 lt!1490629 (_2!25011 lt!1490633)))))

(declare-fun lt!1490737 () Unit!65041)

(declare-fun choose!25625 (List!46072 List!46072) Unit!65041)

(assert (=> d!1235238 (= lt!1490737 (choose!25625 lt!1490629 (_2!25011 lt!1490633)))))

(assert (=> d!1235238 (= (lemmaConcatTwoListThenFirstIsPrefix!3004 lt!1490629 (_2!25011 lt!1490633)) lt!1490737)))

(declare-fun bs!596523 () Bool)

(assert (= bs!596523 d!1235238))

(assert (=> bs!596523 m!4774543))

(assert (=> bs!596523 m!4774543))

(assert (=> bs!596523 m!4774545))

(declare-fun m!4774913 () Bool)

(assert (=> bs!596523 m!4774913))

(assert (=> b!4185536 d!1235238))

(declare-fun b!4185872 () Bool)

(declare-fun e!2598575 () List!46072)

(assert (=> b!4185872 (= e!2598575 (Cons!45948 (h!51368 lt!1490629) (++!11722 (t!345571 lt!1490629) (_2!25011 lt!1490633))))))

(declare-fun d!1235240 () Bool)

(declare-fun e!2598576 () Bool)

(assert (=> d!1235240 e!2598576))

(declare-fun res!1716905 () Bool)

(assert (=> d!1235240 (=> (not res!1716905) (not e!2598576))))

(declare-fun lt!1490738 () List!46072)

(assert (=> d!1235240 (= res!1716905 (= (content!7146 lt!1490738) ((_ map or) (content!7146 lt!1490629) (content!7146 (_2!25011 lt!1490633)))))))

(assert (=> d!1235240 (= lt!1490738 e!2598575)))

(declare-fun c!714613 () Bool)

(assert (=> d!1235240 (= c!714613 ((_ is Nil!45948) lt!1490629))))

(assert (=> d!1235240 (= (++!11722 lt!1490629 (_2!25011 lt!1490633)) lt!1490738)))

(declare-fun b!4185873 () Bool)

(declare-fun res!1716904 () Bool)

(assert (=> b!4185873 (=> (not res!1716904) (not e!2598576))))

(assert (=> b!4185873 (= res!1716904 (= (size!33745 lt!1490738) (+ (size!33745 lt!1490629) (size!33745 (_2!25011 lt!1490633)))))))

(declare-fun b!4185871 () Bool)

(assert (=> b!4185871 (= e!2598575 (_2!25011 lt!1490633))))

(declare-fun b!4185874 () Bool)

(assert (=> b!4185874 (= e!2598576 (or (not (= (_2!25011 lt!1490633) Nil!45948)) (= lt!1490738 lt!1490629)))))

(assert (= (and d!1235240 c!714613) b!4185871))

(assert (= (and d!1235240 (not c!714613)) b!4185872))

(assert (= (and d!1235240 res!1716905) b!4185873))

(assert (= (and b!4185873 res!1716904) b!4185874))

(declare-fun m!4774915 () Bool)

(assert (=> b!4185872 m!4774915))

(declare-fun m!4774917 () Bool)

(assert (=> d!1235240 m!4774917))

(declare-fun m!4774919 () Bool)

(assert (=> d!1235240 m!4774919))

(declare-fun m!4774921 () Bool)

(assert (=> d!1235240 m!4774921))

(declare-fun m!4774923 () Bool)

(assert (=> b!4185873 m!4774923))

(declare-fun m!4774925 () Bool)

(assert (=> b!4185873 m!4774925))

(declare-fun m!4774927 () Bool)

(assert (=> b!4185873 m!4774927))

(assert (=> b!4185536 d!1235240))

(declare-fun d!1235242 () Bool)

(declare-fun lt!1490751 () BalanceConc!27316)

(assert (=> d!1235242 (= (list!16596 lt!1490751) (originalCharacters!8038 (_1!25011 lt!1490633)))))

(assert (=> d!1235242 (= lt!1490751 (dynLambda!19746 (toChars!10205 (transformation!7650 (rule!10720 (_1!25011 lt!1490633)))) (value!238557 (_1!25011 lt!1490633))))))

(assert (=> d!1235242 (= (charsOf!5085 (_1!25011 lt!1490633)) lt!1490751)))

(declare-fun b_lambda!123085 () Bool)

(assert (=> (not b_lambda!123085) (not d!1235242)))

(declare-fun tb!250745 () Bool)

(declare-fun t!345604 () Bool)

(assert (=> (and b!4185525 (= (toChars!10205 (transformation!7650 r!4142)) (toChars!10205 (transformation!7650 (rule!10720 (_1!25011 lt!1490633))))) t!345604) tb!250745))

(declare-fun b!4185879 () Bool)

(declare-fun e!2598579 () Bool)

(declare-fun tp!1279134 () Bool)

(assert (=> b!4185879 (= e!2598579 (and (inv!60498 (c!714561 (dynLambda!19746 (toChars!10205 (transformation!7650 (rule!10720 (_1!25011 lt!1490633)))) (value!238557 (_1!25011 lt!1490633))))) tp!1279134))))

(declare-fun result!305538 () Bool)

(assert (=> tb!250745 (= result!305538 (and (inv!60499 (dynLambda!19746 (toChars!10205 (transformation!7650 (rule!10720 (_1!25011 lt!1490633)))) (value!238557 (_1!25011 lt!1490633)))) e!2598579))))

(assert (= tb!250745 b!4185879))

(declare-fun m!4774929 () Bool)

(assert (=> b!4185879 m!4774929))

(declare-fun m!4774931 () Bool)

(assert (=> tb!250745 m!4774931))

(assert (=> d!1235242 t!345604))

(declare-fun b_and!327799 () Bool)

(assert (= b_and!327787 (and (=> t!345604 result!305538) b_and!327799)))

(declare-fun t!345606 () Bool)

(declare-fun tb!250747 () Bool)

(assert (=> (and b!4185532 (= (toChars!10205 (transformation!7650 (h!51369 rules!3843))) (toChars!10205 (transformation!7650 (rule!10720 (_1!25011 lt!1490633))))) t!345606) tb!250747))

(declare-fun result!305540 () Bool)

(assert (= result!305540 result!305538))

(assert (=> d!1235242 t!345606))

(declare-fun b_and!327801 () Bool)

(assert (= b_and!327789 (and (=> t!345606 result!305540) b_and!327801)))

(declare-fun t!345608 () Bool)

(declare-fun tb!250749 () Bool)

(assert (=> (and b!4185547 (= (toChars!10205 (transformation!7650 rBis!167)) (toChars!10205 (transformation!7650 (rule!10720 (_1!25011 lt!1490633))))) t!345608) tb!250749))

(declare-fun result!305542 () Bool)

(assert (= result!305542 result!305538))

(assert (=> d!1235242 t!345608))

(declare-fun b_and!327803 () Bool)

(assert (= b_and!327791 (and (=> t!345608 result!305542) b_and!327803)))

(declare-fun m!4774933 () Bool)

(assert (=> d!1235242 m!4774933))

(declare-fun m!4774935 () Bool)

(assert (=> d!1235242 m!4774935))

(assert (=> b!4185536 d!1235242))

(declare-fun b!4185895 () Bool)

(declare-fun res!1716921 () Bool)

(declare-fun e!2598585 () Bool)

(assert (=> b!4185895 (=> (not res!1716921) (not e!2598585))))

(assert (=> b!4185895 (= res!1716921 (= (head!8881 lt!1490629) (head!8881 (++!11722 lt!1490629 (_2!25011 lt!1490633)))))))

(declare-fun b!4185894 () Bool)

(declare-fun e!2598586 () Bool)

(assert (=> b!4185894 (= e!2598586 e!2598585)))

(declare-fun res!1716923 () Bool)

(assert (=> b!4185894 (=> (not res!1716923) (not e!2598585))))

(assert (=> b!4185894 (= res!1716923 (not ((_ is Nil!45948) (++!11722 lt!1490629 (_2!25011 lt!1490633)))))))

(declare-fun b!4185897 () Bool)

(declare-fun e!2598584 () Bool)

(assert (=> b!4185897 (= e!2598584 (>= (size!33745 (++!11722 lt!1490629 (_2!25011 lt!1490633))) (size!33745 lt!1490629)))))

(declare-fun d!1235244 () Bool)

(assert (=> d!1235244 e!2598584))

(declare-fun res!1716920 () Bool)

(assert (=> d!1235244 (=> res!1716920 e!2598584)))

(declare-fun lt!1490752 () Bool)

(assert (=> d!1235244 (= res!1716920 (not lt!1490752))))

(assert (=> d!1235244 (= lt!1490752 e!2598586)))

(declare-fun res!1716922 () Bool)

(assert (=> d!1235244 (=> res!1716922 e!2598586)))

(assert (=> d!1235244 (= res!1716922 ((_ is Nil!45948) lt!1490629))))

(assert (=> d!1235244 (= (isPrefix!4507 lt!1490629 (++!11722 lt!1490629 (_2!25011 lt!1490633))) lt!1490752)))

(declare-fun b!4185896 () Bool)

(assert (=> b!4185896 (= e!2598585 (isPrefix!4507 (tail!6728 lt!1490629) (tail!6728 (++!11722 lt!1490629 (_2!25011 lt!1490633)))))))

(assert (= (and d!1235244 (not res!1716922)) b!4185894))

(assert (= (and b!4185894 res!1716923) b!4185895))

(assert (= (and b!4185895 res!1716921) b!4185896))

(assert (= (and d!1235244 (not res!1716920)) b!4185897))

(declare-fun m!4774937 () Bool)

(assert (=> b!4185895 m!4774937))

(assert (=> b!4185895 m!4774543))

(declare-fun m!4774939 () Bool)

(assert (=> b!4185895 m!4774939))

(assert (=> b!4185897 m!4774543))

(declare-fun m!4774941 () Bool)

(assert (=> b!4185897 m!4774941))

(assert (=> b!4185897 m!4774925))

(declare-fun m!4774943 () Bool)

(assert (=> b!4185896 m!4774943))

(assert (=> b!4185896 m!4774543))

(declare-fun m!4774945 () Bool)

(assert (=> b!4185896 m!4774945))

(assert (=> b!4185896 m!4774943))

(assert (=> b!4185896 m!4774945))

(declare-fun m!4774947 () Bool)

(assert (=> b!4185896 m!4774947))

(assert (=> b!4185536 d!1235244))

(declare-fun b!4185899 () Bool)

(declare-fun res!1716925 () Bool)

(declare-fun e!2598588 () Bool)

(assert (=> b!4185899 (=> (not res!1716925) (not e!2598588))))

(assert (=> b!4185899 (= res!1716925 (= (head!8881 pBis!107) (head!8881 input!3342)))))

(declare-fun b!4185898 () Bool)

(declare-fun e!2598589 () Bool)

(assert (=> b!4185898 (= e!2598589 e!2598588)))

(declare-fun res!1716927 () Bool)

(assert (=> b!4185898 (=> (not res!1716927) (not e!2598588))))

(assert (=> b!4185898 (= res!1716927 (not ((_ is Nil!45948) input!3342)))))

(declare-fun b!4185901 () Bool)

(declare-fun e!2598587 () Bool)

(assert (=> b!4185901 (= e!2598587 (>= (size!33745 input!3342) (size!33745 pBis!107)))))

(declare-fun d!1235246 () Bool)

(assert (=> d!1235246 e!2598587))

(declare-fun res!1716924 () Bool)

(assert (=> d!1235246 (=> res!1716924 e!2598587)))

(declare-fun lt!1490753 () Bool)

(assert (=> d!1235246 (= res!1716924 (not lt!1490753))))

(assert (=> d!1235246 (= lt!1490753 e!2598589)))

(declare-fun res!1716926 () Bool)

(assert (=> d!1235246 (=> res!1716926 e!2598589)))

(assert (=> d!1235246 (= res!1716926 ((_ is Nil!45948) pBis!107))))

(assert (=> d!1235246 (= (isPrefix!4507 pBis!107 input!3342) lt!1490753)))

(declare-fun b!4185900 () Bool)

(assert (=> b!4185900 (= e!2598588 (isPrefix!4507 (tail!6728 pBis!107) (tail!6728 input!3342)))))

(assert (= (and d!1235246 (not res!1716926)) b!4185898))

(assert (= (and b!4185898 res!1716927) b!4185899))

(assert (= (and b!4185899 res!1716925) b!4185900))

(assert (= (and d!1235246 (not res!1716924)) b!4185901))

(declare-fun m!4774949 () Bool)

(assert (=> b!4185899 m!4774949))

(assert (=> b!4185899 m!4774593))

(assert (=> b!4185901 m!4774533))

(assert (=> b!4185901 m!4774491))

(declare-fun m!4774951 () Bool)

(assert (=> b!4185900 m!4774951))

(assert (=> b!4185900 m!4774595))

(assert (=> b!4185900 m!4774951))

(assert (=> b!4185900 m!4774595))

(declare-fun m!4774953 () Bool)

(assert (=> b!4185900 m!4774953))

(assert (=> b!4185542 d!1235246))

(declare-fun d!1235248 () Bool)

(declare-fun lt!1490754 () Int)

(assert (=> d!1235248 (>= lt!1490754 0)))

(declare-fun e!2598590 () Int)

(assert (=> d!1235248 (= lt!1490754 e!2598590)))

(declare-fun c!714616 () Bool)

(assert (=> d!1235248 (= c!714616 ((_ is Nil!45948) pBis!107))))

(assert (=> d!1235248 (= (size!33745 pBis!107) lt!1490754)))

(declare-fun b!4185902 () Bool)

(assert (=> b!4185902 (= e!2598590 0)))

(declare-fun b!4185903 () Bool)

(assert (=> b!4185903 (= e!2598590 (+ 1 (size!33745 (t!345571 pBis!107))))))

(assert (= (and d!1235248 c!714616) b!4185902))

(assert (= (and d!1235248 (not c!714616)) b!4185903))

(declare-fun m!4774955 () Bool)

(assert (=> b!4185903 m!4774955))

(assert (=> b!4185543 d!1235248))

(declare-fun b!4185961 () Bool)

(declare-fun e!2598622 () Bool)

(declare-fun e!2598623 () Bool)

(assert (=> b!4185961 (= e!2598622 e!2598623)))

(declare-fun res!1716957 () Bool)

(assert (=> b!4185961 (=> res!1716957 e!2598623)))

(declare-fun call!291973 () Bool)

(assert (=> b!4185961 (= res!1716957 call!291973)))

(declare-fun b!4185962 () Bool)

(declare-fun e!2598624 () Bool)

(declare-fun lt!1490763 () Bool)

(assert (=> b!4185962 (= e!2598624 (= lt!1490763 call!291973))))

(declare-fun b!4185963 () Bool)

(declare-fun res!1716962 () Bool)

(declare-fun e!2598620 () Bool)

(assert (=> b!4185963 (=> res!1716962 e!2598620)))

(assert (=> b!4185963 (= res!1716962 (not ((_ is ElementMatch!12555) (regex!7650 r!4142))))))

(declare-fun e!2598619 () Bool)

(assert (=> b!4185963 (= e!2598619 e!2598620)))

(declare-fun bm!291968 () Bool)

(assert (=> bm!291968 (= call!291973 (isEmpty!27195 p!2959))))

(declare-fun b!4185964 () Bool)

(assert (=> b!4185964 (= e!2598623 (not (= (head!8881 p!2959) (c!714560 (regex!7650 r!4142)))))))

(declare-fun b!4185965 () Bool)

(assert (=> b!4185965 (= e!2598619 (not lt!1490763))))

(declare-fun b!4185966 () Bool)

(declare-fun res!1716959 () Bool)

(declare-fun e!2598621 () Bool)

(assert (=> b!4185966 (=> (not res!1716959) (not e!2598621))))

(assert (=> b!4185966 (= res!1716959 (isEmpty!27195 (tail!6728 p!2959)))))

(declare-fun b!4185967 () Bool)

(declare-fun res!1716960 () Bool)

(assert (=> b!4185967 (=> (not res!1716960) (not e!2598621))))

(assert (=> b!4185967 (= res!1716960 (not call!291973))))

(declare-fun b!4185968 () Bool)

(assert (=> b!4185968 (= e!2598624 e!2598619)))

(declare-fun c!714624 () Bool)

(assert (=> b!4185968 (= c!714624 ((_ is EmptyLang!12555) (regex!7650 r!4142)))))

(declare-fun b!4185969 () Bool)

(declare-fun e!2598618 () Bool)

(assert (=> b!4185969 (= e!2598618 (nullable!4405 (regex!7650 r!4142)))))

(declare-fun b!4185970 () Bool)

(assert (=> b!4185970 (= e!2598621 (= (head!8881 p!2959) (c!714560 (regex!7650 r!4142))))))

(declare-fun b!4185971 () Bool)

(declare-fun res!1716963 () Bool)

(assert (=> b!4185971 (=> res!1716963 e!2598623)))

(assert (=> b!4185971 (= res!1716963 (not (isEmpty!27195 (tail!6728 p!2959))))))

(declare-fun b!4185972 () Bool)

(assert (=> b!4185972 (= e!2598620 e!2598622)))

(declare-fun res!1716958 () Bool)

(assert (=> b!4185972 (=> (not res!1716958) (not e!2598622))))

(assert (=> b!4185972 (= res!1716958 (not lt!1490763))))

(declare-fun b!4185973 () Bool)

(declare-fun res!1716961 () Bool)

(assert (=> b!4185973 (=> res!1716961 e!2598620)))

(assert (=> b!4185973 (= res!1716961 e!2598621)))

(declare-fun res!1716956 () Bool)

(assert (=> b!4185973 (=> (not res!1716956) (not e!2598621))))

(assert (=> b!4185973 (= res!1716956 lt!1490763)))

(declare-fun b!4185974 () Bool)

(declare-fun derivativeStep!3795 (Regex!12555 C!25300) Regex!12555)

(assert (=> b!4185974 (= e!2598618 (matchR!6294 (derivativeStep!3795 (regex!7650 r!4142) (head!8881 p!2959)) (tail!6728 p!2959)))))

(declare-fun d!1235250 () Bool)

(assert (=> d!1235250 e!2598624))

(declare-fun c!714625 () Bool)

(assert (=> d!1235250 (= c!714625 ((_ is EmptyExpr!12555) (regex!7650 r!4142)))))

(assert (=> d!1235250 (= lt!1490763 e!2598618)))

(declare-fun c!714626 () Bool)

(assert (=> d!1235250 (= c!714626 (isEmpty!27195 p!2959))))

(assert (=> d!1235250 (validRegex!5672 (regex!7650 r!4142))))

(assert (=> d!1235250 (= (matchR!6294 (regex!7650 r!4142) p!2959) lt!1490763)))

(assert (= (and d!1235250 c!714626) b!4185969))

(assert (= (and d!1235250 (not c!714626)) b!4185974))

(assert (= (and d!1235250 c!714625) b!4185962))

(assert (= (and d!1235250 (not c!714625)) b!4185968))

(assert (= (and b!4185968 c!714624) b!4185965))

(assert (= (and b!4185968 (not c!714624)) b!4185963))

(assert (= (and b!4185963 (not res!1716962)) b!4185973))

(assert (= (and b!4185973 res!1716956) b!4185967))

(assert (= (and b!4185967 res!1716960) b!4185966))

(assert (= (and b!4185966 res!1716959) b!4185970))

(assert (= (and b!4185973 (not res!1716961)) b!4185972))

(assert (= (and b!4185972 res!1716958) b!4185961))

(assert (= (and b!4185961 (not res!1716957)) b!4185971))

(assert (= (and b!4185971 (not res!1716963)) b!4185964))

(assert (= (or b!4185962 b!4185961 b!4185967) bm!291968))

(assert (=> b!4185966 m!4774905))

(assert (=> b!4185966 m!4774905))

(declare-fun m!4774993 () Bool)

(assert (=> b!4185966 m!4774993))

(assert (=> b!4185969 m!4774909))

(assert (=> b!4185964 m!4774903))

(declare-fun m!4774995 () Bool)

(assert (=> bm!291968 m!4774995))

(assert (=> d!1235250 m!4774995))

(assert (=> d!1235250 m!4774555))

(assert (=> b!4185974 m!4774903))

(assert (=> b!4185974 m!4774903))

(declare-fun m!4774997 () Bool)

(assert (=> b!4185974 m!4774997))

(assert (=> b!4185974 m!4774905))

(assert (=> b!4185974 m!4774997))

(assert (=> b!4185974 m!4774905))

(declare-fun m!4774999 () Bool)

(assert (=> b!4185974 m!4774999))

(assert (=> b!4185970 m!4774903))

(assert (=> b!4185971 m!4774905))

(assert (=> b!4185971 m!4774905))

(assert (=> b!4185971 m!4774993))

(assert (=> b!4185533 d!1235250))

(declare-fun d!1235256 () Bool)

(assert (=> d!1235256 (ruleValid!3368 thiss!25986 rBis!167)))

(declare-fun lt!1490766 () Unit!65041)

(declare-fun choose!25626 (LexerInterface!7243 Rule!15100 List!46073) Unit!65041)

(assert (=> d!1235256 (= lt!1490766 (choose!25626 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1235256 (contains!9459 rules!3843 rBis!167)))

(assert (=> d!1235256 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2374 thiss!25986 rBis!167 rules!3843) lt!1490766)))

(declare-fun bs!596524 () Bool)

(assert (= bs!596524 d!1235256))

(assert (=> bs!596524 m!4774497))

(declare-fun m!4775005 () Bool)

(assert (=> bs!596524 m!4775005))

(assert (=> bs!596524 m!4774561))

(assert (=> b!4185522 d!1235256))

(declare-fun b!4186000 () Bool)

(declare-fun e!2598642 () Option!9844)

(declare-fun lt!1490767 () tuple2!43758)

(assert (=> b!4186000 (= e!2598642 (Some!9843 (tuple2!43755 (Token!14015 (apply!10615 (transformation!7650 rBis!167) (seqFromList!5675 (_1!25013 lt!1490767))) rBis!167 (size!33747 (seqFromList!5675 (_1!25013 lt!1490767))) (_1!25013 lt!1490767)) (_2!25013 lt!1490767))))))

(declare-fun lt!1490771 () Unit!65041)

(assert (=> b!4186000 (= lt!1490771 (longestMatchIsAcceptedByMatchOrIsEmpty!1568 (regex!7650 rBis!167) input!3342))))

(declare-fun res!1716967 () Bool)

(assert (=> b!4186000 (= res!1716967 (isEmpty!27195 (_1!25013 (findLongestMatchInner!1595 (regex!7650 rBis!167) Nil!45948 (size!33745 Nil!45948) input!3342 input!3342 (size!33745 input!3342)))))))

(declare-fun e!2598645 () Bool)

(assert (=> b!4186000 (=> res!1716967 e!2598645)))

(assert (=> b!4186000 e!2598645))

(declare-fun lt!1490770 () Unit!65041)

(assert (=> b!4186000 (= lt!1490770 lt!1490771)))

(declare-fun lt!1490769 () Unit!65041)

(assert (=> b!4186000 (= lt!1490769 (lemmaSemiInverse!2416 (transformation!7650 rBis!167) (seqFromList!5675 (_1!25013 lt!1490767))))))

(declare-fun b!4186001 () Bool)

(declare-fun e!2598643 () Bool)

(declare-fun lt!1490768 () Option!9844)

(assert (=> b!4186001 (= e!2598643 (= (size!33744 (_1!25011 (get!14934 lt!1490768))) (size!33745 (originalCharacters!8038 (_1!25011 (get!14934 lt!1490768))))))))

(declare-fun b!4186002 () Bool)

(declare-fun res!1716965 () Bool)

(assert (=> b!4186002 (=> (not res!1716965) (not e!2598643))))

(assert (=> b!4186002 (= res!1716965 (= (++!11722 (list!16596 (charsOf!5085 (_1!25011 (get!14934 lt!1490768)))) (_2!25011 (get!14934 lt!1490768))) input!3342))))

(declare-fun b!4186003 () Bool)

(declare-fun res!1716970 () Bool)

(assert (=> b!4186003 (=> (not res!1716970) (not e!2598643))))

(assert (=> b!4186003 (= res!1716970 (< (size!33745 (_2!25011 (get!14934 lt!1490768))) (size!33745 input!3342)))))

(declare-fun d!1235258 () Bool)

(declare-fun e!2598644 () Bool)

(assert (=> d!1235258 e!2598644))

(declare-fun res!1716964 () Bool)

(assert (=> d!1235258 (=> res!1716964 e!2598644)))

(assert (=> d!1235258 (= res!1716964 (isEmpty!27192 lt!1490768))))

(assert (=> d!1235258 (= lt!1490768 e!2598642)))

(declare-fun c!714627 () Bool)

(assert (=> d!1235258 (= c!714627 (isEmpty!27195 (_1!25013 lt!1490767)))))

(assert (=> d!1235258 (= lt!1490767 (findLongestMatch!1508 (regex!7650 rBis!167) input!3342))))

(assert (=> d!1235258 (ruleValid!3368 thiss!25986 rBis!167)))

(assert (=> d!1235258 (= (maxPrefixOneRule!3252 thiss!25986 rBis!167 input!3342) lt!1490768)))

(declare-fun b!4186004 () Bool)

(declare-fun res!1716968 () Bool)

(assert (=> b!4186004 (=> (not res!1716968) (not e!2598643))))

(assert (=> b!4186004 (= res!1716968 (= (rule!10720 (_1!25011 (get!14934 lt!1490768))) rBis!167))))

(declare-fun b!4186005 () Bool)

(assert (=> b!4186005 (= e!2598642 None!9843)))

(declare-fun b!4186006 () Bool)

(assert (=> b!4186006 (= e!2598645 (matchR!6294 (regex!7650 rBis!167) (_1!25013 (findLongestMatchInner!1595 (regex!7650 rBis!167) Nil!45948 (size!33745 Nil!45948) input!3342 input!3342 (size!33745 input!3342)))))))

(declare-fun b!4186007 () Bool)

(assert (=> b!4186007 (= e!2598644 e!2598643)))

(declare-fun res!1716966 () Bool)

(assert (=> b!4186007 (=> (not res!1716966) (not e!2598643))))

(assert (=> b!4186007 (= res!1716966 (matchR!6294 (regex!7650 rBis!167) (list!16596 (charsOf!5085 (_1!25011 (get!14934 lt!1490768))))))))

(declare-fun b!4186008 () Bool)

(declare-fun res!1716969 () Bool)

(assert (=> b!4186008 (=> (not res!1716969) (not e!2598643))))

(assert (=> b!4186008 (= res!1716969 (= (value!238557 (_1!25011 (get!14934 lt!1490768))) (apply!10615 (transformation!7650 (rule!10720 (_1!25011 (get!14934 lt!1490768)))) (seqFromList!5675 (originalCharacters!8038 (_1!25011 (get!14934 lt!1490768)))))))))

(assert (= (and d!1235258 c!714627) b!4186005))

(assert (= (and d!1235258 (not c!714627)) b!4186000))

(assert (= (and b!4186000 (not res!1716967)) b!4186006))

(assert (= (and d!1235258 (not res!1716964)) b!4186007))

(assert (= (and b!4186007 res!1716966) b!4186002))

(assert (= (and b!4186002 res!1716965) b!4186003))

(assert (= (and b!4186003 res!1716970) b!4186004))

(assert (= (and b!4186004 res!1716968) b!4186008))

(assert (= (and b!4186008 res!1716969) b!4186001))

(declare-fun m!4775007 () Bool)

(assert (=> b!4186004 m!4775007))

(assert (=> b!4186001 m!4775007))

(declare-fun m!4775009 () Bool)

(assert (=> b!4186001 m!4775009))

(assert (=> b!4186008 m!4775007))

(declare-fun m!4775011 () Bool)

(assert (=> b!4186008 m!4775011))

(assert (=> b!4186008 m!4775011))

(declare-fun m!4775013 () Bool)

(assert (=> b!4186008 m!4775013))

(assert (=> b!4186000 m!4774743))

(assert (=> b!4186000 m!4774533))

(declare-fun m!4775015 () Bool)

(assert (=> b!4186000 m!4775015))

(declare-fun m!4775017 () Bool)

(assert (=> b!4186000 m!4775017))

(declare-fun m!4775019 () Bool)

(assert (=> b!4186000 m!4775019))

(assert (=> b!4186000 m!4775017))

(declare-fun m!4775021 () Bool)

(assert (=> b!4186000 m!4775021))

(assert (=> b!4186000 m!4775017))

(declare-fun m!4775023 () Bool)

(assert (=> b!4186000 m!4775023))

(declare-fun m!4775025 () Bool)

(assert (=> b!4186000 m!4775025))

(assert (=> b!4186000 m!4775017))

(declare-fun m!4775027 () Bool)

(assert (=> b!4186000 m!4775027))

(assert (=> b!4186000 m!4774533))

(assert (=> b!4186000 m!4774743))

(assert (=> b!4186003 m!4775007))

(declare-fun m!4775029 () Bool)

(assert (=> b!4186003 m!4775029))

(assert (=> b!4186003 m!4774533))

(assert (=> b!4186002 m!4775007))

(declare-fun m!4775031 () Bool)

(assert (=> b!4186002 m!4775031))

(assert (=> b!4186002 m!4775031))

(declare-fun m!4775033 () Bool)

(assert (=> b!4186002 m!4775033))

(assert (=> b!4186002 m!4775033))

(declare-fun m!4775035 () Bool)

(assert (=> b!4186002 m!4775035))

(declare-fun m!4775037 () Bool)

(assert (=> d!1235258 m!4775037))

(declare-fun m!4775039 () Bool)

(assert (=> d!1235258 m!4775039))

(declare-fun m!4775041 () Bool)

(assert (=> d!1235258 m!4775041))

(assert (=> d!1235258 m!4774497))

(assert (=> b!4186007 m!4775007))

(assert (=> b!4186007 m!4775031))

(assert (=> b!4186007 m!4775031))

(assert (=> b!4186007 m!4775033))

(assert (=> b!4186007 m!4775033))

(declare-fun m!4775043 () Bool)

(assert (=> b!4186007 m!4775043))

(assert (=> b!4186006 m!4774743))

(assert (=> b!4186006 m!4774533))

(assert (=> b!4186006 m!4774743))

(assert (=> b!4186006 m!4774533))

(assert (=> b!4186006 m!4775015))

(declare-fun m!4775045 () Bool)

(assert (=> b!4186006 m!4775045))

(assert (=> b!4185522 d!1235258))

(declare-fun d!1235260 () Bool)

(assert (=> d!1235260 (<= (size!33745 pBis!107) (size!33745 input!3342))))

(declare-fun lt!1490774 () Unit!65041)

(declare-fun choose!25627 (List!46072 List!46072) Unit!65041)

(assert (=> d!1235260 (= lt!1490774 (choose!25627 pBis!107 input!3342))))

(assert (=> d!1235260 (isPrefix!4507 pBis!107 input!3342)))

(assert (=> d!1235260 (= (lemmaIsPrefixThenSmallerEqSize!537 pBis!107 input!3342) lt!1490774)))

(declare-fun bs!596525 () Bool)

(assert (= bs!596525 d!1235260))

(assert (=> bs!596525 m!4774491))

(assert (=> bs!596525 m!4774533))

(declare-fun m!4775047 () Bool)

(assert (=> bs!596525 m!4775047))

(assert (=> bs!596525 m!4774521))

(assert (=> b!4185522 d!1235260))

(declare-fun d!1235262 () Bool)

(declare-fun lt!1490775 () Int)

(assert (=> d!1235262 (>= lt!1490775 0)))

(declare-fun e!2598646 () Int)

(assert (=> d!1235262 (= lt!1490775 e!2598646)))

(declare-fun c!714628 () Bool)

(assert (=> d!1235262 (= c!714628 ((_ is Nil!45948) input!3342))))

(assert (=> d!1235262 (= (size!33745 input!3342) lt!1490775)))

(declare-fun b!4186009 () Bool)

(assert (=> b!4186009 (= e!2598646 0)))

(declare-fun b!4186010 () Bool)

(assert (=> b!4186010 (= e!2598646 (+ 1 (size!33745 (t!345571 input!3342))))))

(assert (= (and d!1235262 c!714628) b!4186009))

(assert (= (and d!1235262 (not c!714628)) b!4186010))

(declare-fun m!4775049 () Bool)

(assert (=> b!4186010 m!4775049))

(assert (=> b!4185522 d!1235262))

(declare-fun d!1235264 () Bool)

(assert (=> d!1235264 (= (isEmpty!27192 lt!1490632) (not ((_ is Some!9843) lt!1490632)))))

(assert (=> b!4185522 d!1235264))

(declare-fun d!1235266 () Bool)

(assert (=> d!1235266 (= (inv!60493 (tag!8514 r!4142)) (= (mod (str.len (value!238556 (tag!8514 r!4142))) 2) 0))))

(assert (=> b!4185523 d!1235266))

(declare-fun d!1235268 () Bool)

(declare-fun res!1716971 () Bool)

(declare-fun e!2598647 () Bool)

(assert (=> d!1235268 (=> (not res!1716971) (not e!2598647))))

(assert (=> d!1235268 (= res!1716971 (semiInverseModEq!3314 (toChars!10205 (transformation!7650 r!4142)) (toValue!10346 (transformation!7650 r!4142))))))

(assert (=> d!1235268 (= (inv!60495 (transformation!7650 r!4142)) e!2598647)))

(declare-fun b!4186011 () Bool)

(assert (=> b!4186011 (= e!2598647 (equivClasses!3213 (toChars!10205 (transformation!7650 r!4142)) (toValue!10346 (transformation!7650 r!4142))))))

(assert (= (and d!1235268 res!1716971) b!4186011))

(declare-fun m!4775051 () Bool)

(assert (=> d!1235268 m!4775051))

(declare-fun m!4775053 () Bool)

(assert (=> b!4186011 m!4775053))

(assert (=> b!4185523 d!1235268))

(declare-fun d!1235270 () Bool)

(declare-fun e!2598656 () Bool)

(assert (=> d!1235270 e!2598656))

(declare-fun res!1716988 () Bool)

(assert (=> d!1235270 (=> res!1716988 e!2598656)))

(declare-fun lt!1490790 () Option!9844)

(assert (=> d!1235270 (= res!1716988 (isEmpty!27192 lt!1490790))))

(declare-fun e!2598655 () Option!9844)

(assert (=> d!1235270 (= lt!1490790 e!2598655)))

(declare-fun c!714631 () Bool)

(assert (=> d!1235270 (= c!714631 (and ((_ is Cons!45949) rules!3843) ((_ is Nil!45949) (t!345572 rules!3843))))))

(declare-fun lt!1490789 () Unit!65041)

(declare-fun lt!1490787 () Unit!65041)

(assert (=> d!1235270 (= lt!1490789 lt!1490787)))

(assert (=> d!1235270 (isPrefix!4507 input!3342 input!3342)))

(assert (=> d!1235270 (= lt!1490787 (lemmaIsPrefixRefl!2936 input!3342 input!3342))))

(declare-fun rulesValidInductive!2820 (LexerInterface!7243 List!46073) Bool)

(assert (=> d!1235270 (rulesValidInductive!2820 thiss!25986 rules!3843)))

(assert (=> d!1235270 (= (maxPrefix!4291 thiss!25986 rules!3843 input!3342) lt!1490790)))

(declare-fun b!4186030 () Bool)

(declare-fun e!2598654 () Bool)

(assert (=> b!4186030 (= e!2598656 e!2598654)))

(declare-fun res!1716987 () Bool)

(assert (=> b!4186030 (=> (not res!1716987) (not e!2598654))))

(declare-fun isDefined!7336 (Option!9844) Bool)

(assert (=> b!4186030 (= res!1716987 (isDefined!7336 lt!1490790))))

(declare-fun call!291976 () Option!9844)

(declare-fun bm!291971 () Bool)

(assert (=> bm!291971 (= call!291976 (maxPrefixOneRule!3252 thiss!25986 (h!51369 rules!3843) input!3342))))

(declare-fun b!4186031 () Bool)

(declare-fun res!1716991 () Bool)

(assert (=> b!4186031 (=> (not res!1716991) (not e!2598654))))

(assert (=> b!4186031 (= res!1716991 (= (list!16596 (charsOf!5085 (_1!25011 (get!14934 lt!1490790)))) (originalCharacters!8038 (_1!25011 (get!14934 lt!1490790)))))))

(declare-fun b!4186032 () Bool)

(declare-fun res!1716990 () Bool)

(assert (=> b!4186032 (=> (not res!1716990) (not e!2598654))))

(assert (=> b!4186032 (= res!1716990 (= (++!11722 (list!16596 (charsOf!5085 (_1!25011 (get!14934 lt!1490790)))) (_2!25011 (get!14934 lt!1490790))) input!3342))))

(declare-fun b!4186033 () Bool)

(declare-fun res!1716986 () Bool)

(assert (=> b!4186033 (=> (not res!1716986) (not e!2598654))))

(assert (=> b!4186033 (= res!1716986 (= (value!238557 (_1!25011 (get!14934 lt!1490790))) (apply!10615 (transformation!7650 (rule!10720 (_1!25011 (get!14934 lt!1490790)))) (seqFromList!5675 (originalCharacters!8038 (_1!25011 (get!14934 lt!1490790)))))))))

(declare-fun b!4186034 () Bool)

(declare-fun res!1716992 () Bool)

(assert (=> b!4186034 (=> (not res!1716992) (not e!2598654))))

(assert (=> b!4186034 (= res!1716992 (matchR!6294 (regex!7650 (rule!10720 (_1!25011 (get!14934 lt!1490790)))) (list!16596 (charsOf!5085 (_1!25011 (get!14934 lt!1490790))))))))

(declare-fun b!4186035 () Bool)

(declare-fun lt!1490788 () Option!9844)

(declare-fun lt!1490786 () Option!9844)

(assert (=> b!4186035 (= e!2598655 (ite (and ((_ is None!9843) lt!1490788) ((_ is None!9843) lt!1490786)) None!9843 (ite ((_ is None!9843) lt!1490786) lt!1490788 (ite ((_ is None!9843) lt!1490788) lt!1490786 (ite (>= (size!33744 (_1!25011 (v!40661 lt!1490788))) (size!33744 (_1!25011 (v!40661 lt!1490786)))) lt!1490788 lt!1490786)))))))

(assert (=> b!4186035 (= lt!1490788 call!291976)))

(assert (=> b!4186035 (= lt!1490786 (maxPrefix!4291 thiss!25986 (t!345572 rules!3843) input!3342))))

(declare-fun b!4186036 () Bool)

(declare-fun res!1716989 () Bool)

(assert (=> b!4186036 (=> (not res!1716989) (not e!2598654))))

(assert (=> b!4186036 (= res!1716989 (< (size!33745 (_2!25011 (get!14934 lt!1490790))) (size!33745 input!3342)))))

(declare-fun b!4186037 () Bool)

(assert (=> b!4186037 (= e!2598654 (contains!9459 rules!3843 (rule!10720 (_1!25011 (get!14934 lt!1490790)))))))

(declare-fun b!4186038 () Bool)

(assert (=> b!4186038 (= e!2598655 call!291976)))

(assert (= (and d!1235270 c!714631) b!4186038))

(assert (= (and d!1235270 (not c!714631)) b!4186035))

(assert (= (or b!4186038 b!4186035) bm!291971))

(assert (= (and d!1235270 (not res!1716988)) b!4186030))

(assert (= (and b!4186030 res!1716987) b!4186031))

(assert (= (and b!4186031 res!1716991) b!4186036))

(assert (= (and b!4186036 res!1716989) b!4186032))

(assert (= (and b!4186032 res!1716990) b!4186033))

(assert (= (and b!4186033 res!1716986) b!4186034))

(assert (= (and b!4186034 res!1716992) b!4186037))

(declare-fun m!4775055 () Bool)

(assert (=> b!4186033 m!4775055))

(declare-fun m!4775057 () Bool)

(assert (=> b!4186033 m!4775057))

(assert (=> b!4186033 m!4775057))

(declare-fun m!4775059 () Bool)

(assert (=> b!4186033 m!4775059))

(declare-fun m!4775061 () Bool)

(assert (=> d!1235270 m!4775061))

(assert (=> d!1235270 m!4774505))

(assert (=> d!1235270 m!4774509))

(declare-fun m!4775063 () Bool)

(assert (=> d!1235270 m!4775063))

(assert (=> b!4186031 m!4775055))

(declare-fun m!4775065 () Bool)

(assert (=> b!4186031 m!4775065))

(assert (=> b!4186031 m!4775065))

(declare-fun m!4775067 () Bool)

(assert (=> b!4186031 m!4775067))

(assert (=> b!4186037 m!4775055))

(declare-fun m!4775069 () Bool)

(assert (=> b!4186037 m!4775069))

(assert (=> b!4186036 m!4775055))

(declare-fun m!4775071 () Bool)

(assert (=> b!4186036 m!4775071))

(assert (=> b!4186036 m!4774533))

(assert (=> b!4186032 m!4775055))

(assert (=> b!4186032 m!4775065))

(assert (=> b!4186032 m!4775065))

(assert (=> b!4186032 m!4775067))

(assert (=> b!4186032 m!4775067))

(declare-fun m!4775073 () Bool)

(assert (=> b!4186032 m!4775073))

(declare-fun m!4775075 () Bool)

(assert (=> b!4186035 m!4775075))

(assert (=> b!4186034 m!4775055))

(assert (=> b!4186034 m!4775065))

(assert (=> b!4186034 m!4775065))

(assert (=> b!4186034 m!4775067))

(assert (=> b!4186034 m!4775067))

(declare-fun m!4775077 () Bool)

(assert (=> b!4186034 m!4775077))

(declare-fun m!4775079 () Bool)

(assert (=> b!4186030 m!4775079))

(declare-fun m!4775081 () Bool)

(assert (=> bm!291971 m!4775081))

(assert (=> b!4185544 d!1235270))

(declare-fun b!4186043 () Bool)

(declare-fun e!2598659 () Bool)

(declare-fun tp!1279179 () Bool)

(assert (=> b!4186043 (= e!2598659 (and tp_is_empty!22073 tp!1279179))))

(assert (=> b!4185529 (= tp!1279123 e!2598659)))

(assert (= (and b!4185529 ((_ is Cons!45948) (t!345571 p!2959))) b!4186043))

(declare-fun b!4186044 () Bool)

(declare-fun e!2598660 () Bool)

(declare-fun tp!1279180 () Bool)

(assert (=> b!4186044 (= e!2598660 (and tp_is_empty!22073 tp!1279180))))

(assert (=> b!4185534 (= tp!1279126 e!2598660)))

(assert (= (and b!4185534 ((_ is Cons!45948) (t!345571 pBis!107))) b!4186044))

(declare-fun b!4186045 () Bool)

(declare-fun e!2598661 () Bool)

(declare-fun tp!1279181 () Bool)

(assert (=> b!4186045 (= e!2598661 (and tp_is_empty!22073 tp!1279181))))

(assert (=> b!4185540 (= tp!1279121 e!2598661)))

(assert (= (and b!4185540 ((_ is Cons!45948) (t!345571 input!3342))) b!4186045))

(declare-fun b!4186056 () Bool)

(declare-fun b_free!121719 () Bool)

(declare-fun b_next!122423 () Bool)

(assert (=> b!4186056 (= b_free!121719 (not b_next!122423))))

(declare-fun tb!250757 () Bool)

(declare-fun t!345616 () Bool)

(assert (=> (and b!4186056 (= (toValue!10346 (transformation!7650 (h!51369 (t!345572 rules!3843)))) (toValue!10346 (transformation!7650 r!4142))) t!345616) tb!250757))

(declare-fun result!305560 () Bool)

(assert (= result!305560 result!305500))

(assert (=> d!1235152 t!345616))

(assert (=> d!1235198 t!345616))

(declare-fun tp!1279193 () Bool)

(declare-fun b_and!327809 () Bool)

(assert (=> b!4186056 (= tp!1279193 (and (=> t!345616 result!305560) b_and!327809))))

(declare-fun b_free!121721 () Bool)

(declare-fun b_next!122425 () Bool)

(assert (=> b!4186056 (= b_free!121721 (not b_next!122425))))

(declare-fun t!345618 () Bool)

(declare-fun tb!250759 () Bool)

(assert (=> (and b!4186056 (= (toChars!10205 (transformation!7650 (h!51369 (t!345572 rules!3843)))) (toChars!10205 (transformation!7650 r!4142))) t!345618) tb!250759))

(declare-fun result!305562 () Bool)

(assert (= result!305562 result!305530))

(assert (=> d!1235198 t!345618))

(declare-fun tb!250761 () Bool)

(declare-fun t!345620 () Bool)

(assert (=> (and b!4186056 (= (toChars!10205 (transformation!7650 (h!51369 (t!345572 rules!3843)))) (toChars!10205 (transformation!7650 (rule!10720 (_1!25011 lt!1490633))))) t!345620) tb!250761))

(declare-fun result!305564 () Bool)

(assert (= result!305564 result!305538))

(assert (=> d!1235242 t!345620))

(declare-fun b_and!327811 () Bool)

(declare-fun tp!1279192 () Bool)

(assert (=> b!4186056 (= tp!1279192 (and (=> t!345618 result!305562) (=> t!345620 result!305564) b_and!327811))))

(declare-fun e!2598670 () Bool)

(assert (=> b!4186056 (= e!2598670 (and tp!1279193 tp!1279192))))

(declare-fun e!2598672 () Bool)

(declare-fun tp!1279191 () Bool)

(declare-fun b!4186055 () Bool)

(assert (=> b!4186055 (= e!2598672 (and tp!1279191 (inv!60493 (tag!8514 (h!51369 (t!345572 rules!3843)))) (inv!60495 (transformation!7650 (h!51369 (t!345572 rules!3843)))) e!2598670))))

(declare-fun b!4186054 () Bool)

(declare-fun e!2598673 () Bool)

(declare-fun tp!1279190 () Bool)

(assert (=> b!4186054 (= e!2598673 (and e!2598672 tp!1279190))))

(assert (=> b!4185541 (= tp!1279124 e!2598673)))

(assert (= b!4186055 b!4186056))

(assert (= b!4186054 b!4186055))

(assert (= (and b!4185541 ((_ is Cons!45949) (t!345572 rules!3843))) b!4186054))

(declare-fun m!4775083 () Bool)

(assert (=> b!4186055 m!4775083))

(declare-fun m!4775085 () Bool)

(assert (=> b!4186055 m!4775085))

(declare-fun b!4186068 () Bool)

(declare-fun e!2598676 () Bool)

(declare-fun tp!1279207 () Bool)

(declare-fun tp!1279206 () Bool)

(assert (=> b!4186068 (= e!2598676 (and tp!1279207 tp!1279206))))

(declare-fun b!4186067 () Bool)

(assert (=> b!4186067 (= e!2598676 tp_is_empty!22073)))

(assert (=> b!4185526 (= tp!1279117 e!2598676)))

(declare-fun b!4186070 () Bool)

(declare-fun tp!1279208 () Bool)

(declare-fun tp!1279205 () Bool)

(assert (=> b!4186070 (= e!2598676 (and tp!1279208 tp!1279205))))

(declare-fun b!4186069 () Bool)

(declare-fun tp!1279204 () Bool)

(assert (=> b!4186069 (= e!2598676 tp!1279204)))

(assert (= (and b!4185526 ((_ is ElementMatch!12555) (regex!7650 rBis!167))) b!4186067))

(assert (= (and b!4185526 ((_ is Concat!20436) (regex!7650 rBis!167))) b!4186068))

(assert (= (and b!4185526 ((_ is Star!12555) (regex!7650 rBis!167))) b!4186069))

(assert (= (and b!4185526 ((_ is Union!12555) (regex!7650 rBis!167))) b!4186070))

(declare-fun b!4186072 () Bool)

(declare-fun e!2598677 () Bool)

(declare-fun tp!1279212 () Bool)

(declare-fun tp!1279211 () Bool)

(assert (=> b!4186072 (= e!2598677 (and tp!1279212 tp!1279211))))

(declare-fun b!4186071 () Bool)

(assert (=> b!4186071 (= e!2598677 tp_is_empty!22073)))

(assert (=> b!4185523 (= tp!1279115 e!2598677)))

(declare-fun b!4186074 () Bool)

(declare-fun tp!1279213 () Bool)

(declare-fun tp!1279210 () Bool)

(assert (=> b!4186074 (= e!2598677 (and tp!1279213 tp!1279210))))

(declare-fun b!4186073 () Bool)

(declare-fun tp!1279209 () Bool)

(assert (=> b!4186073 (= e!2598677 tp!1279209)))

(assert (= (and b!4185523 ((_ is ElementMatch!12555) (regex!7650 r!4142))) b!4186071))

(assert (= (and b!4185523 ((_ is Concat!20436) (regex!7650 r!4142))) b!4186072))

(assert (= (and b!4185523 ((_ is Star!12555) (regex!7650 r!4142))) b!4186073))

(assert (= (and b!4185523 ((_ is Union!12555) (regex!7650 r!4142))) b!4186074))

(declare-fun b!4186076 () Bool)

(declare-fun e!2598678 () Bool)

(declare-fun tp!1279217 () Bool)

(declare-fun tp!1279216 () Bool)

(assert (=> b!4186076 (= e!2598678 (and tp!1279217 tp!1279216))))

(declare-fun b!4186075 () Bool)

(assert (=> b!4186075 (= e!2598678 tp_is_empty!22073)))

(assert (=> b!4185528 (= tp!1279125 e!2598678)))

(declare-fun b!4186078 () Bool)

(declare-fun tp!1279218 () Bool)

(declare-fun tp!1279215 () Bool)

(assert (=> b!4186078 (= e!2598678 (and tp!1279218 tp!1279215))))

(declare-fun b!4186077 () Bool)

(declare-fun tp!1279214 () Bool)

(assert (=> b!4186077 (= e!2598678 tp!1279214)))

(assert (= (and b!4185528 ((_ is ElementMatch!12555) (regex!7650 (h!51369 rules!3843)))) b!4186075))

(assert (= (and b!4185528 ((_ is Concat!20436) (regex!7650 (h!51369 rules!3843)))) b!4186076))

(assert (= (and b!4185528 ((_ is Star!12555) (regex!7650 (h!51369 rules!3843)))) b!4186077))

(assert (= (and b!4185528 ((_ is Union!12555) (regex!7650 (h!51369 rules!3843)))) b!4186078))

(declare-fun b_lambda!123093 () Bool)

(assert (= b_lambda!123071 (or (and b!4185525 b_free!121703) (and b!4185532 b_free!121707 (= (toValue!10346 (transformation!7650 (h!51369 rules!3843))) (toValue!10346 (transformation!7650 r!4142)))) (and b!4185547 b_free!121711 (= (toValue!10346 (transformation!7650 rBis!167)) (toValue!10346 (transformation!7650 r!4142)))) (and b!4186056 b_free!121719 (= (toValue!10346 (transformation!7650 (h!51369 (t!345572 rules!3843)))) (toValue!10346 (transformation!7650 r!4142)))) b_lambda!123093)))

(declare-fun b_lambda!123095 () Bool)

(assert (= b_lambda!123081 (or (and b!4185525 b_free!121705) (and b!4185532 b_free!121709 (= (toChars!10205 (transformation!7650 (h!51369 rules!3843))) (toChars!10205 (transformation!7650 r!4142)))) (and b!4185547 b_free!121713 (= (toChars!10205 (transformation!7650 rBis!167)) (toChars!10205 (transformation!7650 r!4142)))) (and b!4186056 b_free!121721 (= (toChars!10205 (transformation!7650 (h!51369 (t!345572 rules!3843)))) (toChars!10205 (transformation!7650 r!4142)))) b_lambda!123095)))

(declare-fun b_lambda!123097 () Bool)

(assert (= b_lambda!123083 (or (and b!4185525 b_free!121703) (and b!4185532 b_free!121707 (= (toValue!10346 (transformation!7650 (h!51369 rules!3843))) (toValue!10346 (transformation!7650 r!4142)))) (and b!4185547 b_free!121711 (= (toValue!10346 (transformation!7650 rBis!167)) (toValue!10346 (transformation!7650 r!4142)))) (and b!4186056 b_free!121719 (= (toValue!10346 (transformation!7650 (h!51369 (t!345572 rules!3843)))) (toValue!10346 (transformation!7650 r!4142)))) b_lambda!123097)))

(check-sat b_and!327799 (not tb!250745) (not b!4185697) (not b!4185900) (not b!4185699) (not b_next!122411) (not b!4185896) (not b_next!122407) (not b!4186072) (not tb!250715) (not b!4186070) (not d!1235198) (not bm!291968) (not d!1235146) (not d!1235238) (not d!1235234) (not b!4185557) (not b!4186006) (not d!1235128) (not b!4186069) (not b_lambda!123085) (not b!4186068) (not bm!291971) (not b!4185867) (not b!4186043) b_and!327801 (not b!4186035) (not b!4186007) (not b!4186000) b_and!327793 (not d!1235196) (not d!1235120) (not b!4186003) (not b!4185703) (not b!4186008) (not b!4185866) (not d!1235218) b_and!327811 (not b!4186054) (not b!4186077) (not d!1235250) (not b_next!122415) (not b!4186031) (not b!4185868) (not b!4186044) (not bm!291962) (not b!4186055) (not b!4185704) (not b!4185700) (not b!4185970) (not b!4186045) (not b!4186033) (not b!4186010) (not b_next!122425) (not b_next!122409) (not b!4186002) (not d!1235258) (not b_lambda!123093) (not b!4186037) b_and!327795 (not b!4185843) (not b!4185869) (not b!4185592) (not b!4185859) (not b!4185895) (not b_lambda!123097) (not b!4185848) (not d!1235220) (not b!4185702) (not bm!291961) (not tb!250739) (not b!4185590) (not b!4185860) (not b!4185872) tp_is_empty!22073 (not b!4185862) (not b!4186034) (not b!4185901) (not b!4185969) (not b!4186074) b_and!327797 (not b!4185554) (not b!4185873) (not b!4185710) (not b!4185897) (not b!4185572) (not d!1235240) (not b!4185899) (not b!4186011) (not b!4186004) (not b!4185971) (not d!1235268) (not b!4185974) (not d!1235156) (not b!4186032) (not b_next!122417) (not d!1235138) (not b!4185591) (not d!1235242) (not b_next!122413) (not b!4185879) (not d!1235256) (not b!4185816) (not d!1235230) (not b!4185966) (not d!1235224) (not b!4185698) b_and!327803 (not b!4186076) (not b!4185864) (not d!1235270) (not b!4186030) (not b!4185903) b_and!327809 (not d!1235226) (not b!4186078) (not b_lambda!123095) (not b!4186001) (not d!1235260) (not b_next!122423) (not b!4186073) (not b!4185715) (not b!4185964) (not d!1235122) (not b!4186036) (not b!4185696))
(check-sat (not b_next!122411) (not b_next!122407) b_and!327799 b_and!327801 b_and!327793 b_and!327811 (not b_next!122415) b_and!327795 b_and!327797 (not b_next!122417) (not b_next!122413) b_and!327803 b_and!327809 (not b_next!122423) (not b_next!122425) (not b_next!122409))
