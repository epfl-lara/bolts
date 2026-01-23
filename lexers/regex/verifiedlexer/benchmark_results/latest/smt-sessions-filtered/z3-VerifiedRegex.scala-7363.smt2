; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!391334 () Bool)

(assert start!391334)

(declare-fun b!4124930 () Bool)

(declare-fun b_free!116795 () Bool)

(declare-fun b_next!117499 () Bool)

(assert (=> b!4124930 (= b_free!116795 (not b_next!117499))))

(declare-fun tp!1256981 () Bool)

(declare-fun b_and!319285 () Bool)

(assert (=> b!4124930 (= tp!1256981 b_and!319285)))

(declare-fun b_free!116797 () Bool)

(declare-fun b_next!117501 () Bool)

(assert (=> b!4124930 (= b_free!116797 (not b_next!117501))))

(declare-fun tp!1256977 () Bool)

(declare-fun b_and!319287 () Bool)

(assert (=> b!4124930 (= tp!1256977 b_and!319287)))

(declare-fun b!4124926 () Bool)

(declare-fun b_free!116799 () Bool)

(declare-fun b_next!117503 () Bool)

(assert (=> b!4124926 (= b_free!116799 (not b_next!117503))))

(declare-fun tp!1256982 () Bool)

(declare-fun b_and!319289 () Bool)

(assert (=> b!4124926 (= tp!1256982 b_and!319289)))

(declare-fun b_free!116801 () Bool)

(declare-fun b_next!117505 () Bool)

(assert (=> b!4124926 (= b_free!116801 (not b_next!117505))))

(declare-fun tp!1256983 () Bool)

(declare-fun b_and!319291 () Bool)

(assert (=> b!4124926 (= tp!1256983 b_and!319291)))

(declare-fun b!4124933 () Bool)

(declare-fun b_free!116803 () Bool)

(declare-fun b_next!117507 () Bool)

(assert (=> b!4124933 (= b_free!116803 (not b_next!117507))))

(declare-fun tp!1256979 () Bool)

(declare-fun b_and!319293 () Bool)

(assert (=> b!4124933 (= tp!1256979 b_and!319293)))

(declare-fun b_free!116805 () Bool)

(declare-fun b_next!117509 () Bool)

(assert (=> b!4124933 (= b_free!116805 (not b_next!117509))))

(declare-fun tp!1256978 () Bool)

(declare-fun b_and!319295 () Bool)

(assert (=> b!4124933 (= tp!1256978 b_and!319295)))

(declare-datatypes ((List!44757 0))(
  ( (Nil!44633) (Cons!44633 (h!50053 (_ BitVec 16)) (t!341062 List!44757)) )
))
(declare-datatypes ((TokenValue!7528 0))(
  ( (FloatLiteralValue!15056 (text!53141 List!44757)) (TokenValueExt!7527 (__x!27273 Int)) (Broken!37640 (value!228521 List!44757)) (Object!7651) (End!7528) (Def!7528) (Underscore!7528) (Match!7528) (Else!7528) (Error!7528) (Case!7528) (If!7528) (Extends!7528) (Abstract!7528) (Class!7528) (Val!7528) (DelimiterValue!15056 (del!7588 List!44757)) (KeywordValue!7534 (value!228522 List!44757)) (CommentValue!15056 (value!228523 List!44757)) (WhitespaceValue!15056 (value!228524 List!44757)) (IndentationValue!7528 (value!228525 List!44757)) (String!51389) (Int32!7528) (Broken!37641 (value!228526 List!44757)) (Boolean!7529) (Unit!63970) (OperatorValue!7531 (op!7588 List!44757)) (IdentifierValue!15056 (value!228527 List!44757)) (IdentifierValue!15057 (value!228528 List!44757)) (WhitespaceValue!15057 (value!228529 List!44757)) (True!15056) (False!15056) (Broken!37642 (value!228530 List!44757)) (Broken!37643 (value!228531 List!44757)) (True!15057) (RightBrace!7528) (RightBracket!7528) (Colon!7528) (Null!7528) (Comma!7528) (LeftBracket!7528) (False!15057) (LeftBrace!7528) (ImaginaryLiteralValue!7528 (text!53142 List!44757)) (StringLiteralValue!22584 (value!228532 List!44757)) (EOFValue!7528 (value!228533 List!44757)) (IdentValue!7528 (value!228534 List!44757)) (DelimiterValue!15057 (value!228535 List!44757)) (DedentValue!7528 (value!228536 List!44757)) (NewLineValue!7528 (value!228537 List!44757)) (IntegerValue!22584 (value!228538 (_ BitVec 32)) (text!53143 List!44757)) (IntegerValue!22585 (value!228539 Int) (text!53144 List!44757)) (Times!7528) (Or!7528) (Equal!7528) (Minus!7528) (Broken!37644 (value!228540 List!44757)) (And!7528) (Div!7528) (LessEqual!7528) (Mod!7528) (Concat!19731) (Not!7528) (Plus!7528) (SpaceValue!7528 (value!228541 List!44757)) (IntegerValue!22586 (value!228542 Int) (text!53145 List!44757)) (StringLiteralValue!22585 (text!53146 List!44757)) (FloatLiteralValue!15057 (text!53147 List!44757)) (BytesLiteralValue!7528 (value!228543 List!44757)) (CommentValue!15057 (value!228544 List!44757)) (StringLiteralValue!22586 (value!228545 List!44757)) (ErrorTokenValue!7528 (msg!7589 List!44757)) )
))
(declare-datatypes ((C!24592 0))(
  ( (C!24593 (val!14406 Int)) )
))
(declare-datatypes ((List!44758 0))(
  ( (Nil!44634) (Cons!44634 (h!50054 C!24592) (t!341063 List!44758)) )
))
(declare-datatypes ((IArray!27023 0))(
  ( (IArray!27024 (innerList!13569 List!44758)) )
))
(declare-datatypes ((Conc!13509 0))(
  ( (Node!13509 (left!33428 Conc!13509) (right!33758 Conc!13509) (csize!27248 Int) (cheight!13720 Int)) (Leaf!20873 (xs!16815 IArray!27023) (csize!27249 Int)) (Empty!13509) )
))
(declare-datatypes ((BalanceConc!26612 0))(
  ( (BalanceConc!26613 (c!708028 Conc!13509)) )
))
(declare-datatypes ((String!51390 0))(
  ( (String!51391 (value!228546 String)) )
))
(declare-datatypes ((Regex!12203 0))(
  ( (ElementMatch!12203 (c!708029 C!24592)) (Concat!19732 (regOne!24918 Regex!12203) (regTwo!24918 Regex!12203)) (EmptyExpr!12203) (Star!12203 (reg!12532 Regex!12203)) (EmptyLang!12203) (Union!12203 (regOne!24919 Regex!12203) (regTwo!24919 Regex!12203)) )
))
(declare-datatypes ((TokenValueInjection!14484 0))(
  ( (TokenValueInjection!14485 (toValue!9950 Int) (toChars!9809 Int)) )
))
(declare-datatypes ((Rule!14396 0))(
  ( (Rule!14397 (regex!7298 Regex!12203) (tag!8158 String!51390) (isSeparator!7298 Bool) (transformation!7298 TokenValueInjection!14484)) )
))
(declare-datatypes ((List!44759 0))(
  ( (Nil!44635) (Cons!44635 (h!50055 Rule!14396) (t!341064 List!44759)) )
))
(declare-fun rules!3756 () List!44759)

(declare-fun e!2559554 () Bool)

(declare-fun b!4124915 () Bool)

(declare-fun e!2559542 () Bool)

(declare-fun tp!1256985 () Bool)

(declare-fun inv!59214 (String!51390) Bool)

(declare-fun inv!59216 (TokenValueInjection!14484) Bool)

(assert (=> b!4124915 (= e!2559542 (and tp!1256985 (inv!59214 (tag!8158 (h!50055 rules!3756))) (inv!59216 (transformation!7298 (h!50055 rules!3756))) e!2559554))))

(declare-fun rBis!149 () Rule!14396)

(declare-fun e!2559551 () Bool)

(declare-fun e!2559548 () Bool)

(declare-fun tp!1256976 () Bool)

(declare-fun b!4124916 () Bool)

(assert (=> b!4124916 (= e!2559548 (and tp!1256976 (inv!59214 (tag!8158 rBis!149)) (inv!59216 (transformation!7298 rBis!149)) e!2559551))))

(declare-fun b!4124917 () Bool)

(declare-fun res!1685863 () Bool)

(declare-fun e!2559547 () Bool)

(assert (=> b!4124917 (=> (not res!1685863) (not e!2559547))))

(declare-fun r!4008 () Rule!14396)

(declare-fun getIndex!646 (List!44759 Rule!14396) Int)

(assert (=> b!4124917 (= res!1685863 (< (getIndex!646 rules!3756 rBis!149) (getIndex!646 rules!3756 r!4008)))))

(declare-fun b!4124918 () Bool)

(declare-fun e!2559546 () Bool)

(declare-fun tp!1256986 () Bool)

(assert (=> b!4124918 (= e!2559546 (and e!2559542 tp!1256986))))

(declare-fun b!4124919 () Bool)

(declare-fun e!2559544 () Bool)

(declare-fun tp_is_empty!21329 () Bool)

(declare-fun tp!1256984 () Bool)

(assert (=> b!4124919 (= e!2559544 (and tp_is_empty!21329 tp!1256984))))

(declare-fun b!4124920 () Bool)

(declare-fun e!2559541 () Bool)

(assert (=> b!4124920 (= e!2559541 true)))

(declare-fun lt!1471700 () Bool)

(declare-fun contains!8970 (List!44759 Rule!14396) Bool)

(assert (=> b!4124920 (= lt!1471700 (contains!8970 (t!341064 rules!3756) rBis!149))))

(declare-fun res!1685855 () Bool)

(declare-fun e!2559545 () Bool)

(assert (=> start!391334 (=> (not res!1685855) (not e!2559545))))

(declare-datatypes ((LexerInterface!6887 0))(
  ( (LexerInterfaceExt!6884 (__x!27274 Int)) (Lexer!6885) )
))
(declare-fun thiss!25645 () LexerInterface!6887)

(get-info :version)

(assert (=> start!391334 (= res!1685855 ((_ is Lexer!6885) thiss!25645))))

(assert (=> start!391334 e!2559545))

(assert (=> start!391334 e!2559546))

(declare-fun e!2559540 () Bool)

(assert (=> start!391334 e!2559540))

(assert (=> start!391334 true))

(declare-fun e!2559552 () Bool)

(assert (=> start!391334 e!2559552))

(assert (=> start!391334 e!2559544))

(assert (=> start!391334 e!2559548))

(declare-fun b!4124921 () Bool)

(declare-fun res!1685857 () Bool)

(assert (=> b!4124921 (=> (not res!1685857) (not e!2559547))))

(declare-fun p!2912 () List!44758)

(declare-fun matchR!6034 (Regex!12203 List!44758) Bool)

(assert (=> b!4124921 (= res!1685857 (matchR!6034 (regex!7298 r!4008) p!2912))))

(declare-fun b!4124922 () Bool)

(declare-fun tp!1256975 () Bool)

(assert (=> b!4124922 (= e!2559540 (and tp_is_empty!21329 tp!1256975))))

(declare-fun b!4124923 () Bool)

(declare-fun res!1685856 () Bool)

(assert (=> b!4124923 (=> res!1685856 e!2559541)))

(assert (=> b!4124923 (= res!1685856 (not (contains!8970 (t!341064 rules!3756) r!4008)))))

(declare-fun b!4124924 () Bool)

(declare-fun res!1685852 () Bool)

(assert (=> b!4124924 (=> (not res!1685852) (not e!2559545))))

(assert (=> b!4124924 (= res!1685852 (contains!8970 rules!3756 r!4008))))

(declare-fun b!4124925 () Bool)

(declare-fun res!1685862 () Bool)

(assert (=> b!4124925 (=> (not res!1685862) (not e!2559545))))

(declare-fun input!3238 () List!44758)

(declare-fun isPrefix!4233 (List!44758 List!44758) Bool)

(assert (=> b!4124925 (= res!1685862 (isPrefix!4233 p!2912 input!3238))))

(assert (=> b!4124926 (= e!2559554 (and tp!1256982 tp!1256983))))

(declare-fun b!4124927 () Bool)

(assert (=> b!4124927 (= e!2559547 (not e!2559541))))

(declare-fun res!1685853 () Bool)

(assert (=> b!4124927 (=> res!1685853 e!2559541)))

(assert (=> b!4124927 (= res!1685853 (or (and ((_ is Cons!44635) rules!3756) (= (h!50055 rules!3756) rBis!149)) (not ((_ is Cons!44635) rules!3756)) (= (h!50055 rules!3756) rBis!149)))))

(declare-datatypes ((Unit!63971 0))(
  ( (Unit!63972) )
))
(declare-fun lt!1471698 () Unit!63971)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2150 (LexerInterface!6887 Rule!14396 List!44759) Unit!63971)

(assert (=> b!4124927 (= lt!1471698 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2150 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3106 (LexerInterface!6887 Rule!14396) Bool)

(assert (=> b!4124927 (ruleValid!3106 thiss!25645 rBis!149)))

(declare-fun lt!1471701 () Unit!63971)

(assert (=> b!4124927 (= lt!1471701 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2150 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4124928 () Bool)

(declare-fun res!1685859 () Bool)

(assert (=> b!4124928 (=> (not res!1685859) (not e!2559545))))

(assert (=> b!4124928 (= res!1685859 (contains!8970 rules!3756 rBis!149))))

(declare-fun b!4124929 () Bool)

(declare-fun res!1685854 () Bool)

(assert (=> b!4124929 (=> (not res!1685854) (not e!2559547))))

(assert (=> b!4124929 (= res!1685854 (ruleValid!3106 thiss!25645 r!4008))))

(assert (=> b!4124930 (= e!2559551 (and tp!1256981 tp!1256977))))

(declare-fun b!4124931 () Bool)

(assert (=> b!4124931 (= e!2559545 e!2559547)))

(declare-fun res!1685864 () Bool)

(assert (=> b!4124931 (=> (not res!1685864) (not e!2559547))))

(declare-fun lt!1471699 () BalanceConc!26612)

(declare-datatypes ((Token!13526 0))(
  ( (Token!13527 (value!228547 TokenValue!7528) (rule!10382 Rule!14396) (size!33051 Int) (originalCharacters!7794 List!44758)) )
))
(declare-datatypes ((tuple2!43090 0))(
  ( (tuple2!43091 (_1!24679 Token!13526) (_2!24679 List!44758)) )
))
(declare-datatypes ((Option!9606 0))(
  ( (None!9605) (Some!9605 (v!40201 tuple2!43090)) )
))
(declare-fun maxPrefix!4079 (LexerInterface!6887 List!44759 List!44758) Option!9606)

(declare-fun apply!10371 (TokenValueInjection!14484 BalanceConc!26612) TokenValue!7528)

(declare-fun size!33052 (List!44758) Int)

(declare-fun getSuffix!2562 (List!44758 List!44758) List!44758)

(assert (=> b!4124931 (= res!1685864 (= (maxPrefix!4079 thiss!25645 rules!3756 input!3238) (Some!9605 (tuple2!43091 (Token!13527 (apply!10371 (transformation!7298 r!4008) lt!1471699) r!4008 (size!33052 p!2912) p!2912) (getSuffix!2562 input!3238 p!2912)))))))

(declare-fun lt!1471702 () Unit!63971)

(declare-fun lemmaSemiInverse!2156 (TokenValueInjection!14484 BalanceConc!26612) Unit!63971)

(assert (=> b!4124931 (= lt!1471702 (lemmaSemiInverse!2156 (transformation!7298 r!4008) lt!1471699))))

(declare-fun seqFromList!5415 (List!44758) BalanceConc!26612)

(assert (=> b!4124931 (= lt!1471699 (seqFromList!5415 p!2912))))

(declare-fun b!4124932 () Bool)

(declare-fun res!1685858 () Bool)

(assert (=> b!4124932 (=> (not res!1685858) (not e!2559545))))

(declare-fun isEmpty!26567 (List!44759) Bool)

(assert (=> b!4124932 (= res!1685858 (not (isEmpty!26567 rules!3756)))))

(declare-fun e!2559553 () Bool)

(assert (=> b!4124933 (= e!2559553 (and tp!1256979 tp!1256978))))

(declare-fun tp!1256980 () Bool)

(declare-fun b!4124934 () Bool)

(assert (=> b!4124934 (= e!2559552 (and tp!1256980 (inv!59214 (tag!8158 r!4008)) (inv!59216 (transformation!7298 r!4008)) e!2559553))))

(declare-fun b!4124935 () Bool)

(declare-fun res!1685860 () Bool)

(assert (=> b!4124935 (=> (not res!1685860) (not e!2559545))))

(declare-fun isEmpty!26568 (List!44758) Bool)

(assert (=> b!4124935 (= res!1685860 (not (isEmpty!26568 p!2912)))))

(declare-fun b!4124936 () Bool)

(declare-fun res!1685861 () Bool)

(assert (=> b!4124936 (=> (not res!1685861) (not e!2559545))))

(declare-fun rulesInvariant!6184 (LexerInterface!6887 List!44759) Bool)

(assert (=> b!4124936 (= res!1685861 (rulesInvariant!6184 thiss!25645 rules!3756))))

(assert (= (and start!391334 res!1685855) b!4124925))

(assert (= (and b!4124925 res!1685862) b!4124932))

(assert (= (and b!4124932 res!1685858) b!4124936))

(assert (= (and b!4124936 res!1685861) b!4124924))

(assert (= (and b!4124924 res!1685852) b!4124928))

(assert (= (and b!4124928 res!1685859) b!4124935))

(assert (= (and b!4124935 res!1685860) b!4124931))

(assert (= (and b!4124931 res!1685864) b!4124921))

(assert (= (and b!4124921 res!1685857) b!4124917))

(assert (= (and b!4124917 res!1685863) b!4124929))

(assert (= (and b!4124929 res!1685854) b!4124927))

(assert (= (and b!4124927 (not res!1685853)) b!4124923))

(assert (= (and b!4124923 (not res!1685856)) b!4124920))

(assert (= b!4124915 b!4124926))

(assert (= b!4124918 b!4124915))

(assert (= (and start!391334 ((_ is Cons!44635) rules!3756)) b!4124918))

(assert (= (and start!391334 ((_ is Cons!44634) p!2912)) b!4124922))

(assert (= b!4124934 b!4124933))

(assert (= start!391334 b!4124934))

(assert (= (and start!391334 ((_ is Cons!44634) input!3238)) b!4124919))

(assert (= b!4124916 b!4124930))

(assert (= start!391334 b!4124916))

(declare-fun m!4723683 () Bool)

(assert (=> b!4124921 m!4723683))

(declare-fun m!4723685 () Bool)

(assert (=> b!4124931 m!4723685))

(declare-fun m!4723687 () Bool)

(assert (=> b!4124931 m!4723687))

(declare-fun m!4723689 () Bool)

(assert (=> b!4124931 m!4723689))

(declare-fun m!4723691 () Bool)

(assert (=> b!4124931 m!4723691))

(declare-fun m!4723693 () Bool)

(assert (=> b!4124931 m!4723693))

(declare-fun m!4723695 () Bool)

(assert (=> b!4124931 m!4723695))

(declare-fun m!4723697 () Bool)

(assert (=> b!4124932 m!4723697))

(declare-fun m!4723699 () Bool)

(assert (=> b!4124935 m!4723699))

(declare-fun m!4723701 () Bool)

(assert (=> b!4124927 m!4723701))

(declare-fun m!4723703 () Bool)

(assert (=> b!4124927 m!4723703))

(declare-fun m!4723705 () Bool)

(assert (=> b!4124927 m!4723705))

(declare-fun m!4723707 () Bool)

(assert (=> b!4124934 m!4723707))

(declare-fun m!4723709 () Bool)

(assert (=> b!4124934 m!4723709))

(declare-fun m!4723711 () Bool)

(assert (=> b!4124917 m!4723711))

(declare-fun m!4723713 () Bool)

(assert (=> b!4124917 m!4723713))

(declare-fun m!4723715 () Bool)

(assert (=> b!4124925 m!4723715))

(declare-fun m!4723717 () Bool)

(assert (=> b!4124924 m!4723717))

(declare-fun m!4723719 () Bool)

(assert (=> b!4124929 m!4723719))

(declare-fun m!4723721 () Bool)

(assert (=> b!4124920 m!4723721))

(declare-fun m!4723723 () Bool)

(assert (=> b!4124916 m!4723723))

(declare-fun m!4723725 () Bool)

(assert (=> b!4124916 m!4723725))

(declare-fun m!4723727 () Bool)

(assert (=> b!4124923 m!4723727))

(declare-fun m!4723729 () Bool)

(assert (=> b!4124936 m!4723729))

(declare-fun m!4723731 () Bool)

(assert (=> b!4124928 m!4723731))

(declare-fun m!4723733 () Bool)

(assert (=> b!4124915 m!4723733))

(declare-fun m!4723735 () Bool)

(assert (=> b!4124915 m!4723735))

(check-sat b_and!319287 b_and!319289 (not b!4124916) (not b_next!117507) (not b!4124928) b_and!319291 (not b!4124925) (not b!4124927) (not b!4124924) b_and!319295 (not b!4124932) (not b_next!117501) (not b!4124919) (not b!4124923) (not b!4124934) (not b!4124915) (not b!4124918) (not b!4124936) (not b!4124917) (not b!4124931) (not b_next!117505) b_and!319293 (not b_next!117499) b_and!319285 (not b_next!117509) (not b!4124929) (not b_next!117503) tp_is_empty!21329 (not b!4124922) (not b!4124920) (not b!4124921) (not b!4124935))
(check-sat b_and!319287 b_and!319289 (not b_next!117503) (not b_next!117507) b_and!319291 b_and!319295 (not b_next!117501) (not b_next!117505) b_and!319293 (not b_next!117499) b_and!319285 (not b_next!117509))
