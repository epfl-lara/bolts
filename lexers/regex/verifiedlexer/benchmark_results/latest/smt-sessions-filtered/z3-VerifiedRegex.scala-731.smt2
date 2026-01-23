; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33642 () Bool)

(assert start!33642)

(declare-fun b!311748 () Bool)

(declare-fun b_free!11113 () Bool)

(declare-fun b_next!11113 () Bool)

(assert (=> b!311748 (= b_free!11113 (not b_next!11113))))

(declare-fun tp!109599 () Bool)

(declare-fun b_and!26477 () Bool)

(assert (=> b!311748 (= tp!109599 b_and!26477)))

(declare-fun b_free!11115 () Bool)

(declare-fun b_next!11115 () Bool)

(assert (=> b!311748 (= b_free!11115 (not b_next!11115))))

(declare-fun tp!109598 () Bool)

(declare-fun b_and!26479 () Bool)

(assert (=> b!311748 (= tp!109598 b_and!26479)))

(declare-fun b!311730 () Bool)

(declare-fun b_free!11117 () Bool)

(declare-fun b_next!11117 () Bool)

(assert (=> b!311730 (= b_free!11117 (not b_next!11117))))

(declare-fun tp!109600 () Bool)

(declare-fun b_and!26481 () Bool)

(assert (=> b!311730 (= tp!109600 b_and!26481)))

(declare-fun b_free!11119 () Bool)

(declare-fun b_next!11119 () Bool)

(assert (=> b!311730 (= b_free!11119 (not b_next!11119))))

(declare-fun tp!109595 () Bool)

(declare-fun b_and!26483 () Bool)

(assert (=> b!311730 (= tp!109595 b_and!26483)))

(declare-fun b!311713 () Bool)

(declare-fun b_free!11121 () Bool)

(declare-fun b_next!11121 () Bool)

(assert (=> b!311713 (= b_free!11121 (not b_next!11121))))

(declare-fun tp!109606 () Bool)

(declare-fun b_and!26485 () Bool)

(assert (=> b!311713 (= tp!109606 b_and!26485)))

(declare-fun b_free!11123 () Bool)

(declare-fun b_next!11123 () Bool)

(assert (=> b!311713 (= b_free!11123 (not b_next!11123))))

(declare-fun tp!109605 () Bool)

(declare-fun b_and!26487 () Bool)

(assert (=> b!311713 (= tp!109605 b_and!26487)))

(declare-fun bs!36178 () Bool)

(declare-fun b!311737 () Bool)

(declare-fun b!311725 () Bool)

(assert (= bs!36178 (and b!311737 b!311725)))

(declare-fun lambda!10652 () Int)

(declare-fun lambda!10651 () Int)

(assert (=> bs!36178 (not (= lambda!10652 lambda!10651))))

(declare-fun b!311760 () Bool)

(declare-fun e!193938 () Bool)

(assert (=> b!311760 (= e!193938 true)))

(declare-fun b!311759 () Bool)

(declare-fun e!193937 () Bool)

(assert (=> b!311759 (= e!193937 e!193938)))

(declare-fun b!311758 () Bool)

(declare-fun e!193936 () Bool)

(assert (=> b!311758 (= e!193936 e!193937)))

(assert (=> b!311737 e!193936))

(assert (= b!311759 b!311760))

(assert (= b!311758 b!311759))

(declare-datatypes ((List!4090 0))(
  ( (Nil!4080) (Cons!4080 (h!9477 (_ BitVec 16)) (t!43910 List!4090)) )
))
(declare-datatypes ((TokenValue!807 0))(
  ( (FloatLiteralValue!1614 (text!6094 List!4090)) (TokenValueExt!806 (__x!3101 Int)) (Broken!4035 (value!26662 List!4090)) (Object!816) (End!807) (Def!807) (Underscore!807) (Match!807) (Else!807) (Error!807) (Case!807) (If!807) (Extends!807) (Abstract!807) (Class!807) (Val!807) (DelimiterValue!1614 (del!867 List!4090)) (KeywordValue!813 (value!26663 List!4090)) (CommentValue!1614 (value!26664 List!4090)) (WhitespaceValue!1614 (value!26665 List!4090)) (IndentationValue!807 (value!26666 List!4090)) (String!5114) (Int32!807) (Broken!4036 (value!26667 List!4090)) (Boolean!808) (Unit!5781) (OperatorValue!810 (op!867 List!4090)) (IdentifierValue!1614 (value!26668 List!4090)) (IdentifierValue!1615 (value!26669 List!4090)) (WhitespaceValue!1615 (value!26670 List!4090)) (True!1614) (False!1614) (Broken!4037 (value!26671 List!4090)) (Broken!4038 (value!26672 List!4090)) (True!1615) (RightBrace!807) (RightBracket!807) (Colon!807) (Null!807) (Comma!807) (LeftBracket!807) (False!1615) (LeftBrace!807) (ImaginaryLiteralValue!807 (text!6095 List!4090)) (StringLiteralValue!2421 (value!26673 List!4090)) (EOFValue!807 (value!26674 List!4090)) (IdentValue!807 (value!26675 List!4090)) (DelimiterValue!1615 (value!26676 List!4090)) (DedentValue!807 (value!26677 List!4090)) (NewLineValue!807 (value!26678 List!4090)) (IntegerValue!2421 (value!26679 (_ BitVec 32)) (text!6096 List!4090)) (IntegerValue!2422 (value!26680 Int) (text!6097 List!4090)) (Times!807) (Or!807) (Equal!807) (Minus!807) (Broken!4039 (value!26681 List!4090)) (And!807) (Div!807) (LessEqual!807) (Mod!807) (Concat!1816) (Not!807) (Plus!807) (SpaceValue!807 (value!26682 List!4090)) (IntegerValue!2423 (value!26683 Int) (text!6098 List!4090)) (StringLiteralValue!2422 (text!6099 List!4090)) (FloatLiteralValue!1615 (text!6100 List!4090)) (BytesLiteralValue!807 (value!26684 List!4090)) (CommentValue!1615 (value!26685 List!4090)) (StringLiteralValue!2423 (value!26686 List!4090)) (ErrorTokenValue!807 (msg!868 List!4090)) )
))
(declare-datatypes ((C!2940 0))(
  ( (C!2941 (val!1356 Int)) )
))
(declare-datatypes ((List!4091 0))(
  ( (Nil!4081) (Cons!4081 (h!9478 C!2940) (t!43911 List!4091)) )
))
(declare-datatypes ((IArray!2785 0))(
  ( (IArray!2786 (innerList!1450 List!4091)) )
))
(declare-datatypes ((Conc!1392 0))(
  ( (Node!1392 (left!3395 Conc!1392) (right!3725 Conc!1392) (csize!3014 Int) (cheight!1603 Int)) (Leaf!2124 (xs!3995 IArray!2785) (csize!3015 Int)) (Empty!1392) )
))
(declare-datatypes ((BalanceConc!2792 0))(
  ( (BalanceConc!2793 (c!59076 Conc!1392)) )
))
(declare-datatypes ((TokenValueInjection!1386 0))(
  ( (TokenValueInjection!1387 (toValue!1548 Int) (toChars!1407 Int)) )
))
(declare-datatypes ((Regex!1009 0))(
  ( (ElementMatch!1009 (c!59077 C!2940)) (Concat!1817 (regOne!2530 Regex!1009) (regTwo!2530 Regex!1009)) (EmptyExpr!1009) (Star!1009 (reg!1338 Regex!1009)) (EmptyLang!1009) (Union!1009 (regOne!2531 Regex!1009) (regTwo!2531 Regex!1009)) )
))
(declare-datatypes ((String!5115 0))(
  ( (String!5116 (value!26687 String)) )
))
(declare-datatypes ((Rule!1370 0))(
  ( (Rule!1371 (regex!785 Regex!1009) (tag!1003 String!5115) (isSeparator!785 Bool) (transformation!785 TokenValueInjection!1386)) )
))
(declare-datatypes ((List!4092 0))(
  ( (Nil!4082) (Cons!4082 (h!9479 Rule!1370) (t!43912 List!4092)) )
))
(declare-fun rules!1920 () List!4092)

(get-info :version)

(assert (= (and b!311737 ((_ is Cons!4082) rules!1920)) b!311758))

(declare-fun order!3329 () Int)

(declare-fun order!3331 () Int)

(declare-fun dynLambda!2245 (Int Int) Int)

(declare-fun dynLambda!2246 (Int Int) Int)

(assert (=> b!311760 (< (dynLambda!2245 order!3329 (toValue!1548 (transformation!785 (h!9479 rules!1920)))) (dynLambda!2246 order!3331 lambda!10652))))

(declare-fun order!3333 () Int)

(declare-fun dynLambda!2247 (Int Int) Int)

(assert (=> b!311760 (< (dynLambda!2247 order!3333 (toChars!1407 (transformation!785 (h!9479 rules!1920)))) (dynLambda!2246 order!3331 lambda!10652))))

(assert (=> b!311737 true))

(declare-fun e!193911 () Bool)

(assert (=> b!311713 (= e!193911 (and tp!109606 tp!109605))))

(declare-fun lt!133550 () List!4091)

(declare-fun lt!133530 () List!4091)

(declare-fun e!193928 () Bool)

(declare-fun b!311715 () Bool)

(declare-fun lt!133545 () List!4091)

(declare-fun ++!1114 (List!4091 List!4091) List!4091)

(assert (=> b!311715 (= e!193928 (not (= lt!133550 (++!1114 lt!133530 lt!133545))))))

(declare-fun b!311716 () Bool)

(declare-fun res!141765 () Bool)

(declare-fun e!193923 () Bool)

(assert (=> b!311716 (=> (not res!141765) (not e!193923))))

(declare-fun sepAndNonSepRulesDisjointChars!374 (List!4092 List!4092) Bool)

(assert (=> b!311716 (= res!141765 (sepAndNonSepRulesDisjointChars!374 rules!1920 rules!1920))))

(declare-fun b!311717 () Bool)

(declare-fun res!141755 () Bool)

(declare-fun e!193927 () Bool)

(assert (=> b!311717 (=> (not res!141755) (not e!193927))))

(declare-datatypes ((LexerInterface!671 0))(
  ( (LexerInterfaceExt!668 (__x!3102 Int)) (Lexer!669) )
))
(declare-fun thiss!17480 () LexerInterface!671)

(declare-fun rulesInvariant!637 (LexerInterface!671 List!4092) Bool)

(assert (=> b!311717 (= res!141755 (rulesInvariant!637 thiss!17480 rules!1920))))

(declare-fun b!311718 () Bool)

(declare-fun e!193908 () Bool)

(declare-fun e!193905 () Bool)

(assert (=> b!311718 (= e!193908 (not e!193905))))

(declare-fun res!141766 () Bool)

(assert (=> b!311718 (=> res!141766 e!193905)))

(declare-datatypes ((Token!1314 0))(
  ( (Token!1315 (value!26688 TokenValue!807) (rule!1402 Rule!1370) (size!3266 Int) (originalCharacters!828 List!4091)) )
))
(declare-fun separatorToken!170 () Token!1314)

(declare-datatypes ((List!4093 0))(
  ( (Nil!4083) (Cons!4083 (h!9480 Token!1314) (t!43913 List!4093)) )
))
(declare-fun tokens!465 () List!4093)

(declare-fun list!1729 (BalanceConc!2792) List!4091)

(declare-datatypes ((IArray!2787 0))(
  ( (IArray!2788 (innerList!1451 List!4093)) )
))
(declare-datatypes ((Conc!1393 0))(
  ( (Node!1393 (left!3396 Conc!1393) (right!3726 Conc!1393) (csize!3016 Int) (cheight!1604 Int)) (Leaf!2125 (xs!3996 IArray!2787) (csize!3017 Int)) (Empty!1393) )
))
(declare-datatypes ((BalanceConc!2794 0))(
  ( (BalanceConc!2795 (c!59078 Conc!1393)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!344 (LexerInterface!671 List!4092 BalanceConc!2794 Token!1314 Int) BalanceConc!2792)

(declare-fun seqFromList!935 (List!4093) BalanceConc!2794)

(assert (=> b!311718 (= res!141766 (not (= lt!133545 (list!1729 (printWithSeparatorTokenWhenNeededRec!344 thiss!17480 rules!1920 (seqFromList!935 (t!43913 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!133531 () List!4091)

(declare-fun lt!133551 () List!4091)

(assert (=> b!311718 (= lt!133531 lt!133551)))

(declare-fun lt!133540 () List!4091)

(assert (=> b!311718 (= lt!133551 (++!1114 lt!133530 lt!133540))))

(declare-fun lt!133552 () List!4091)

(assert (=> b!311718 (= lt!133531 (++!1114 (++!1114 lt!133530 lt!133552) lt!133545))))

(declare-datatypes ((Unit!5782 0))(
  ( (Unit!5783) )
))
(declare-fun lt!133533 () Unit!5782)

(declare-fun lemmaConcatAssociativity!494 (List!4091 List!4091 List!4091) Unit!5782)

(assert (=> b!311718 (= lt!133533 (lemmaConcatAssociativity!494 lt!133530 lt!133552 lt!133545))))

(declare-fun charsOf!428 (Token!1314) BalanceConc!2792)

(assert (=> b!311718 (= lt!133530 (list!1729 (charsOf!428 (h!9480 tokens!465))))))

(assert (=> b!311718 (= lt!133540 (++!1114 lt!133552 lt!133545))))

(declare-fun printWithSeparatorTokenWhenNeededList!352 (LexerInterface!671 List!4092 List!4093 Token!1314) List!4091)

(assert (=> b!311718 (= lt!133545 (printWithSeparatorTokenWhenNeededList!352 thiss!17480 rules!1920 (t!43913 tokens!465) separatorToken!170))))

(assert (=> b!311718 (= lt!133552 (list!1729 (charsOf!428 separatorToken!170)))))

(declare-fun b!311719 () Bool)

(declare-fun res!141751 () Bool)

(assert (=> b!311719 (=> (not res!141751) (not e!193908))))

(declare-fun lt!133536 () List!4091)

(declare-fun seqFromList!936 (List!4091) BalanceConc!2792)

(assert (=> b!311719 (= res!141751 (= (list!1729 (seqFromList!936 lt!133550)) lt!133536))))

(declare-fun b!311720 () Bool)

(declare-fun e!193916 () Bool)

(assert (=> b!311720 (= e!193905 e!193916)))

(declare-fun res!141768 () Bool)

(assert (=> b!311720 (=> res!141768 e!193916)))

(assert (=> b!311720 (= res!141768 e!193928)))

(declare-fun res!141762 () Bool)

(assert (=> b!311720 (=> (not res!141762) (not e!193928))))

(declare-fun lt!133539 () Bool)

(assert (=> b!311720 (= res!141762 (not lt!133539))))

(assert (=> b!311720 (= lt!133539 (= lt!133550 lt!133551))))

(declare-fun b!311721 () Bool)

(declare-fun res!141749 () Bool)

(assert (=> b!311721 (=> (not res!141749) (not e!193923))))

(assert (=> b!311721 (= res!141749 (isSeparator!785 (rule!1402 separatorToken!170)))))

(declare-fun b!311722 () Bool)

(declare-fun e!193907 () Unit!5782)

(declare-fun Unit!5784 () Unit!5782)

(assert (=> b!311722 (= e!193907 Unit!5784)))

(declare-fun b!311723 () Bool)

(declare-fun e!193915 () Bool)

(assert (=> b!311723 (= e!193915 true)))

(declare-fun e!193901 () Bool)

(assert (=> b!311723 e!193901))

(declare-fun res!141760 () Bool)

(assert (=> b!311723 (=> (not res!141760) (not e!193901))))

(declare-datatypes ((tuple2!4730 0))(
  ( (tuple2!4731 (_1!2581 BalanceConc!2794) (_2!2581 BalanceConc!2792)) )
))
(declare-fun lt!133542 () tuple2!4730)

(declare-fun size!3267 (BalanceConc!2794) Int)

(assert (=> b!311723 (= res!141760 (= (size!3267 (_1!2581 lt!133542)) 1))))

(declare-fun lt!133555 () BalanceConc!2792)

(declare-fun lex!463 (LexerInterface!671 List!4092 BalanceConc!2792) tuple2!4730)

(assert (=> b!311723 (= lt!133542 (lex!463 thiss!17480 rules!1920 lt!133555))))

(declare-fun lt!133529 () BalanceConc!2794)

(declare-fun printTailRec!357 (LexerInterface!671 BalanceConc!2794 Int BalanceConc!2792) BalanceConc!2792)

(assert (=> b!311723 (= lt!133555 (printTailRec!357 thiss!17480 lt!133529 0 (BalanceConc!2793 Empty!1392)))))

(declare-fun print!396 (LexerInterface!671 BalanceConc!2794) BalanceConc!2792)

(assert (=> b!311723 (= lt!133555 (print!396 thiss!17480 lt!133529))))

(declare-fun singletonSeq!331 (Token!1314) BalanceConc!2794)

(assert (=> b!311723 (= lt!133529 (singletonSeq!331 separatorToken!170))))

(declare-fun lt!133537 () Token!1314)

(declare-fun rulesProduceIndividualToken!420 (LexerInterface!671 List!4092 Token!1314) Bool)

(assert (=> b!311723 (rulesProduceIndividualToken!420 thiss!17480 rules!1920 lt!133537)))

(declare-fun lt!133534 () Unit!5782)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!134 (LexerInterface!671 List!4092 List!4093 Token!1314) Unit!5782)

(assert (=> b!311723 (= lt!133534 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!134 thiss!17480 rules!1920 tokens!465 lt!133537))))

(declare-fun head!974 (List!4093) Token!1314)

(assert (=> b!311723 (= lt!133537 (head!974 (t!43913 tokens!465)))))

(declare-fun lt!133557 () Unit!5782)

(assert (=> b!311723 (= lt!133557 e!193907)))

(declare-fun c!59075 () Bool)

(declare-fun isEmpty!2810 (List!4093) Bool)

(assert (=> b!311723 (= c!59075 (isEmpty!2810 (t!43913 tokens!465)))))

(declare-datatypes ((tuple2!4732 0))(
  ( (tuple2!4733 (_1!2582 Token!1314) (_2!2582 List!4091)) )
))
(declare-datatypes ((Option!938 0))(
  ( (None!937) (Some!937 (v!14960 tuple2!4732)) )
))
(declare-fun lt!133553 () Option!938)

(declare-fun maxPrefix!387 (LexerInterface!671 List!4092 List!4091) Option!938)

(assert (=> b!311723 (= lt!133553 (maxPrefix!387 thiss!17480 rules!1920 lt!133540))))

(declare-fun lt!133556 () tuple2!4732)

(assert (=> b!311723 (= lt!133540 (_2!2582 lt!133556))))

(declare-fun lt!133532 () Unit!5782)

(declare-fun lemmaSamePrefixThenSameSuffix!230 (List!4091 List!4091 List!4091 List!4091 List!4091) Unit!5782)

(assert (=> b!311723 (= lt!133532 (lemmaSamePrefixThenSameSuffix!230 lt!133530 lt!133540 lt!133530 (_2!2582 lt!133556) lt!133550))))

(declare-fun get!1400 (Option!938) tuple2!4732)

(assert (=> b!311723 (= lt!133556 (get!1400 (maxPrefix!387 thiss!17480 rules!1920 lt!133550)))))

(declare-fun isPrefix!445 (List!4091 List!4091) Bool)

(assert (=> b!311723 (isPrefix!445 lt!133530 lt!133551)))

(declare-fun lt!133541 () Unit!5782)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!336 (List!4091 List!4091) Unit!5782)

(assert (=> b!311723 (= lt!133541 (lemmaConcatTwoListThenFirstIsPrefix!336 lt!133530 lt!133540))))

(declare-fun e!193929 () Bool)

(assert (=> b!311723 e!193929))

(declare-fun res!141757 () Bool)

(assert (=> b!311723 (=> res!141757 e!193929)))

(assert (=> b!311723 (= res!141757 (isEmpty!2810 tokens!465))))

(declare-fun lt!133549 () Unit!5782)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!192 (LexerInterface!671 List!4092 List!4093 Token!1314) Unit!5782)

(assert (=> b!311723 (= lt!133549 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!192 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!311724 () Bool)

(declare-fun res!141763 () Bool)

(assert (=> b!311724 (=> (not res!141763) (not e!193927))))

(declare-fun isEmpty!2811 (List!4092) Bool)

(assert (=> b!311724 (= res!141763 (not (isEmpty!2811 rules!1920)))))

(declare-fun res!141754 () Bool)

(assert (=> b!311725 (=> (not res!141754) (not e!193923))))

(declare-fun forall!1084 (List!4093 Int) Bool)

(assert (=> b!311725 (= res!141754 (forall!1084 tokens!465 lambda!10651))))

(declare-fun b!311726 () Bool)

(declare-fun e!193910 () Bool)

(declare-fun matchR!327 (Regex!1009 List!4091) Bool)

(assert (=> b!311726 (= e!193910 (matchR!327 (regex!785 (rule!1402 (h!9480 tokens!465))) lt!133530))))

(declare-fun b!311727 () Bool)

(declare-fun res!141753 () Bool)

(assert (=> b!311727 (=> (not res!141753) (not e!193923))))

(assert (=> b!311727 (= res!141753 ((_ is Cons!4083) tokens!465))))

(declare-fun tp!109602 () Bool)

(declare-fun b!311728 () Bool)

(declare-fun e!193902 () Bool)

(declare-fun e!193920 () Bool)

(declare-fun inv!5040 (String!5115) Bool)

(declare-fun inv!5043 (TokenValueInjection!1386) Bool)

(assert (=> b!311728 (= e!193920 (and tp!109602 (inv!5040 (tag!1003 (rule!1402 separatorToken!170))) (inv!5043 (transformation!785 (rule!1402 separatorToken!170))) e!193902))))

(declare-fun b!311729 () Bool)

(declare-fun e!193913 () Bool)

(assert (=> b!311729 (= e!193913 e!193915)))

(declare-fun res!141771 () Bool)

(assert (=> b!311729 (=> res!141771 e!193915)))

(assert (=> b!311729 (= res!141771 (not lt!133539))))

(assert (=> b!311729 e!193910))

(declare-fun res!141748 () Bool)

(assert (=> b!311729 (=> (not res!141748) (not e!193910))))

(declare-fun lt!133543 () tuple2!4732)

(assert (=> b!311729 (= res!141748 (= (_1!2582 lt!133543) (h!9480 tokens!465)))))

(declare-fun lt!133548 () Option!938)

(assert (=> b!311729 (= lt!133543 (get!1400 lt!133548))))

(declare-fun isDefined!777 (Option!938) Bool)

(assert (=> b!311729 (isDefined!777 lt!133548)))

(assert (=> b!311729 (= lt!133548 (maxPrefix!387 thiss!17480 rules!1920 lt!133530))))

(assert (=> b!311730 (= e!193902 (and tp!109600 tp!109595))))

(declare-fun e!193912 () Bool)

(declare-fun tp!109596 () Bool)

(declare-fun e!193914 () Bool)

(declare-fun b!311731 () Bool)

(declare-fun inv!5044 (Token!1314) Bool)

(assert (=> b!311731 (= e!193912 (and (inv!5044 (h!9480 tokens!465)) e!193914 tp!109596))))

(declare-fun b!311732 () Bool)

(declare-fun res!141758 () Bool)

(assert (=> b!311732 (=> (not res!141758) (not e!193910))))

(declare-fun isEmpty!2812 (List!4091) Bool)

(assert (=> b!311732 (= res!141758 (isEmpty!2812 (_2!2582 lt!133543)))))

(declare-fun b!311733 () Bool)

(declare-fun e!193903 () Bool)

(assert (=> b!311733 (= e!193929 e!193903)))

(declare-fun res!141752 () Bool)

(assert (=> b!311733 (=> (not res!141752) (not e!193903))))

(declare-fun lt!133554 () Option!938)

(assert (=> b!311733 (= res!141752 (isDefined!777 lt!133554))))

(assert (=> b!311733 (= lt!133554 (maxPrefix!387 thiss!17480 rules!1920 lt!133550))))

(declare-fun b!311714 () Bool)

(declare-fun Unit!5785 () Unit!5782)

(assert (=> b!311714 (= e!193907 Unit!5785)))

(assert (=> b!311714 false))

(declare-fun res!141747 () Bool)

(assert (=> start!33642 (=> (not res!141747) (not e!193927))))

(assert (=> start!33642 (= res!141747 ((_ is Lexer!669) thiss!17480))))

(assert (=> start!33642 e!193927))

(assert (=> start!33642 true))

(declare-fun e!193917 () Bool)

(assert (=> start!33642 e!193917))

(declare-fun e!193921 () Bool)

(assert (=> start!33642 (and (inv!5044 separatorToken!170) e!193921)))

(assert (=> start!33642 e!193912))

(declare-fun b!311734 () Bool)

(declare-fun res!141767 () Bool)

(declare-fun e!193904 () Bool)

(assert (=> b!311734 (=> res!141767 e!193904)))

(declare-fun isEmpty!2813 (BalanceConc!2794) Bool)

(assert (=> b!311734 (= res!141767 (isEmpty!2813 (_1!2581 (lex!463 thiss!17480 rules!1920 (seqFromList!936 lt!133530)))))))

(declare-fun b!311735 () Bool)

(assert (=> b!311735 (= e!193927 e!193923)))

(declare-fun res!141769 () Bool)

(assert (=> b!311735 (=> (not res!141769) (not e!193923))))

(declare-fun lt!133538 () BalanceConc!2794)

(declare-fun rulesProduceEachTokenIndividually!463 (LexerInterface!671 List!4092 BalanceConc!2794) Bool)

(assert (=> b!311735 (= res!141769 (rulesProduceEachTokenIndividually!463 thiss!17480 rules!1920 lt!133538))))

(assert (=> b!311735 (= lt!133538 (seqFromList!935 tokens!465))))

(declare-fun b!311736 () Bool)

(assert (=> b!311736 (= e!193903 (= (_1!2582 (get!1400 lt!133554)) (head!974 tokens!465)))))

(assert (=> b!311737 (= e!193904 e!193913)))

(declare-fun res!141764 () Bool)

(assert (=> b!311737 (=> res!141764 e!193913)))

(declare-datatypes ((tuple2!4734 0))(
  ( (tuple2!4735 (_1!2583 Token!1314) (_2!2583 BalanceConc!2792)) )
))
(declare-datatypes ((Option!939 0))(
  ( (None!938) (Some!938 (v!14961 tuple2!4734)) )
))
(declare-fun isDefined!778 (Option!939) Bool)

(declare-fun maxPrefixZipperSequence!350 (LexerInterface!671 List!4092 BalanceConc!2792) Option!939)

(assert (=> b!311737 (= res!141764 (not (isDefined!778 (maxPrefixZipperSequence!350 thiss!17480 rules!1920 (seqFromList!936 (originalCharacters!828 (h!9480 tokens!465)))))))))

(declare-fun lt!133558 () Unit!5782)

(declare-fun forallContained!338 (List!4093 Int Token!1314) Unit!5782)

(assert (=> b!311737 (= lt!133558 (forallContained!338 tokens!465 lambda!10652 (h!9480 tokens!465)))))

(assert (=> b!311737 (= lt!133530 (originalCharacters!828 (h!9480 tokens!465)))))

(declare-fun b!311738 () Bool)

(declare-fun e!193926 () Bool)

(declare-fun tp!109597 () Bool)

(declare-fun e!193909 () Bool)

(assert (=> b!311738 (= e!193909 (and tp!109597 (inv!5040 (tag!1003 (h!9479 rules!1920))) (inv!5043 (transformation!785 (h!9479 rules!1920))) e!193926))))

(declare-fun tp!109603 () Bool)

(declare-fun e!193906 () Bool)

(declare-fun b!311739 () Bool)

(declare-fun inv!21 (TokenValue!807) Bool)

(assert (=> b!311739 (= e!193914 (and (inv!21 (value!26688 (h!9480 tokens!465))) e!193906 tp!109603))))

(declare-fun b!311740 () Bool)

(assert (=> b!311740 (= e!193923 e!193908)))

(declare-fun res!141750 () Bool)

(assert (=> b!311740 (=> (not res!141750) (not e!193908))))

(assert (=> b!311740 (= res!141750 (= lt!133550 lt!133536))))

(assert (=> b!311740 (= lt!133536 (list!1729 (printWithSeparatorTokenWhenNeededRec!344 thiss!17480 rules!1920 lt!133538 separatorToken!170 0)))))

(assert (=> b!311740 (= lt!133550 (printWithSeparatorTokenWhenNeededList!352 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!311741 () Bool)

(declare-fun res!141759 () Bool)

(assert (=> b!311741 (=> (not res!141759) (not e!193923))))

(assert (=> b!311741 (= res!141759 (rulesProduceIndividualToken!420 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!311742 () Bool)

(declare-fun res!141756 () Bool)

(assert (=> b!311742 (=> (not res!141756) (not e!193901))))

(declare-fun apply!904 (BalanceConc!2794 Int) Token!1314)

(assert (=> b!311742 (= res!141756 (= (apply!904 (_1!2581 lt!133542) 0) separatorToken!170))))

(declare-fun b!311743 () Bool)

(declare-fun tp!109601 () Bool)

(assert (=> b!311743 (= e!193917 (and e!193909 tp!109601))))

(declare-fun b!311744 () Bool)

(declare-fun isEmpty!2814 (BalanceConc!2792) Bool)

(assert (=> b!311744 (= e!193901 (isEmpty!2814 (_2!2581 lt!133542)))))

(declare-fun b!311745 () Bool)

(declare-fun res!141761 () Bool)

(assert (=> b!311745 (=> res!141761 e!193904)))

(assert (=> b!311745 (= res!141761 (not (rulesProduceIndividualToken!420 thiss!17480 rules!1920 (h!9480 tokens!465))))))

(declare-fun b!311746 () Bool)

(declare-fun tp!109604 () Bool)

(assert (=> b!311746 (= e!193921 (and (inv!21 (value!26688 separatorToken!170)) e!193920 tp!109604))))

(declare-fun b!311747 () Bool)

(declare-fun tp!109607 () Bool)

(assert (=> b!311747 (= e!193906 (and tp!109607 (inv!5040 (tag!1003 (rule!1402 (h!9480 tokens!465)))) (inv!5043 (transformation!785 (rule!1402 (h!9480 tokens!465)))) e!193911))))

(assert (=> b!311748 (= e!193926 (and tp!109599 tp!109598))))

(declare-fun b!311749 () Bool)

(assert (=> b!311749 (= e!193916 e!193904)))

(declare-fun res!141770 () Bool)

(assert (=> b!311749 (=> res!141770 e!193904)))

(declare-fun lt!133544 () List!4091)

(declare-fun lt!133547 () List!4091)

(assert (=> b!311749 (= res!141770 (or (not (= lt!133544 lt!133547)) (not (= lt!133547 lt!133530)) (not (= lt!133544 lt!133530))))))

(declare-fun printList!345 (LexerInterface!671 List!4093) List!4091)

(assert (=> b!311749 (= lt!133547 (printList!345 thiss!17480 (Cons!4083 (h!9480 tokens!465) Nil!4083)))))

(declare-fun lt!133535 () BalanceConc!2792)

(assert (=> b!311749 (= lt!133544 (list!1729 lt!133535))))

(declare-fun lt!133546 () BalanceConc!2794)

(assert (=> b!311749 (= lt!133535 (printTailRec!357 thiss!17480 lt!133546 0 (BalanceConc!2793 Empty!1392)))))

(assert (=> b!311749 (= lt!133535 (print!396 thiss!17480 lt!133546))))

(assert (=> b!311749 (= lt!133546 (singletonSeq!331 (h!9480 tokens!465)))))

(assert (= (and start!33642 res!141747) b!311724))

(assert (= (and b!311724 res!141763) b!311717))

(assert (= (and b!311717 res!141755) b!311735))

(assert (= (and b!311735 res!141769) b!311741))

(assert (= (and b!311741 res!141759) b!311721))

(assert (= (and b!311721 res!141749) b!311725))

(assert (= (and b!311725 res!141754) b!311716))

(assert (= (and b!311716 res!141765) b!311727))

(assert (= (and b!311727 res!141753) b!311740))

(assert (= (and b!311740 res!141750) b!311719))

(assert (= (and b!311719 res!141751) b!311718))

(assert (= (and b!311718 (not res!141766)) b!311720))

(assert (= (and b!311720 res!141762) b!311715))

(assert (= (and b!311720 (not res!141768)) b!311749))

(assert (= (and b!311749 (not res!141770)) b!311745))

(assert (= (and b!311745 (not res!141761)) b!311734))

(assert (= (and b!311734 (not res!141767)) b!311737))

(assert (= (and b!311737 (not res!141764)) b!311729))

(assert (= (and b!311729 res!141748) b!311732))

(assert (= (and b!311732 res!141758) b!311726))

(assert (= (and b!311729 (not res!141771)) b!311723))

(assert (= (and b!311723 (not res!141757)) b!311733))

(assert (= (and b!311733 res!141752) b!311736))

(assert (= (and b!311723 c!59075) b!311714))

(assert (= (and b!311723 (not c!59075)) b!311722))

(assert (= (and b!311723 res!141760) b!311742))

(assert (= (and b!311742 res!141756) b!311744))

(assert (= b!311738 b!311748))

(assert (= b!311743 b!311738))

(assert (= (and start!33642 ((_ is Cons!4082) rules!1920)) b!311743))

(assert (= b!311728 b!311730))

(assert (= b!311746 b!311728))

(assert (= start!33642 b!311746))

(assert (= b!311747 b!311713))

(assert (= b!311739 b!311747))

(assert (= b!311731 b!311739))

(assert (= (and start!33642 ((_ is Cons!4083) tokens!465)) b!311731))

(declare-fun m!418143 () Bool)

(assert (=> b!311723 m!418143))

(declare-fun m!418145 () Bool)

(assert (=> b!311723 m!418145))

(declare-fun m!418147 () Bool)

(assert (=> b!311723 m!418147))

(declare-fun m!418149 () Bool)

(assert (=> b!311723 m!418149))

(declare-fun m!418151 () Bool)

(assert (=> b!311723 m!418151))

(declare-fun m!418153 () Bool)

(assert (=> b!311723 m!418153))

(declare-fun m!418155 () Bool)

(assert (=> b!311723 m!418155))

(declare-fun m!418157 () Bool)

(assert (=> b!311723 m!418157))

(assert (=> b!311723 m!418143))

(declare-fun m!418159 () Bool)

(assert (=> b!311723 m!418159))

(declare-fun m!418161 () Bool)

(assert (=> b!311723 m!418161))

(declare-fun m!418163 () Bool)

(assert (=> b!311723 m!418163))

(declare-fun m!418165 () Bool)

(assert (=> b!311723 m!418165))

(declare-fun m!418167 () Bool)

(assert (=> b!311723 m!418167))

(declare-fun m!418169 () Bool)

(assert (=> b!311723 m!418169))

(declare-fun m!418171 () Bool)

(assert (=> b!311723 m!418171))

(declare-fun m!418173 () Bool)

(assert (=> b!311723 m!418173))

(declare-fun m!418175 () Bool)

(assert (=> b!311723 m!418175))

(declare-fun m!418177 () Bool)

(assert (=> b!311724 m!418177))

(declare-fun m!418179 () Bool)

(assert (=> b!311733 m!418179))

(assert (=> b!311733 m!418143))

(declare-fun m!418181 () Bool)

(assert (=> b!311715 m!418181))

(declare-fun m!418183 () Bool)

(assert (=> b!311717 m!418183))

(declare-fun m!418185 () Bool)

(assert (=> b!311716 m!418185))

(declare-fun m!418187 () Bool)

(assert (=> b!311719 m!418187))

(assert (=> b!311719 m!418187))

(declare-fun m!418189 () Bool)

(assert (=> b!311719 m!418189))

(declare-fun m!418191 () Bool)

(assert (=> b!311726 m!418191))

(declare-fun m!418193 () Bool)

(assert (=> b!311745 m!418193))

(declare-fun m!418195 () Bool)

(assert (=> b!311746 m!418195))

(declare-fun m!418197 () Bool)

(assert (=> b!311718 m!418197))

(declare-fun m!418199 () Bool)

(assert (=> b!311718 m!418199))

(declare-fun m!418201 () Bool)

(assert (=> b!311718 m!418201))

(declare-fun m!418203 () Bool)

(assert (=> b!311718 m!418203))

(assert (=> b!311718 m!418201))

(declare-fun m!418205 () Bool)

(assert (=> b!311718 m!418205))

(declare-fun m!418207 () Bool)

(assert (=> b!311718 m!418207))

(declare-fun m!418209 () Bool)

(assert (=> b!311718 m!418209))

(declare-fun m!418211 () Bool)

(assert (=> b!311718 m!418211))

(declare-fun m!418213 () Bool)

(assert (=> b!311718 m!418213))

(assert (=> b!311718 m!418205))

(declare-fun m!418215 () Bool)

(assert (=> b!311718 m!418215))

(assert (=> b!311718 m!418207))

(assert (=> b!311718 m!418211))

(declare-fun m!418217 () Bool)

(assert (=> b!311718 m!418217))

(declare-fun m!418219 () Bool)

(assert (=> b!311718 m!418219))

(assert (=> b!311718 m!418209))

(declare-fun m!418221 () Bool)

(assert (=> b!311718 m!418221))

(declare-fun m!418223 () Bool)

(assert (=> b!311749 m!418223))

(declare-fun m!418225 () Bool)

(assert (=> b!311749 m!418225))

(declare-fun m!418227 () Bool)

(assert (=> b!311749 m!418227))

(declare-fun m!418229 () Bool)

(assert (=> b!311749 m!418229))

(declare-fun m!418231 () Bool)

(assert (=> b!311749 m!418231))

(declare-fun m!418233 () Bool)

(assert (=> b!311739 m!418233))

(declare-fun m!418235 () Bool)

(assert (=> b!311725 m!418235))

(declare-fun m!418237 () Bool)

(assert (=> b!311736 m!418237))

(declare-fun m!418239 () Bool)

(assert (=> b!311736 m!418239))

(declare-fun m!418241 () Bool)

(assert (=> b!311737 m!418241))

(assert (=> b!311737 m!418241))

(declare-fun m!418243 () Bool)

(assert (=> b!311737 m!418243))

(assert (=> b!311737 m!418243))

(declare-fun m!418245 () Bool)

(assert (=> b!311737 m!418245))

(declare-fun m!418247 () Bool)

(assert (=> b!311737 m!418247))

(declare-fun m!418249 () Bool)

(assert (=> b!311735 m!418249))

(declare-fun m!418251 () Bool)

(assert (=> b!311735 m!418251))

(declare-fun m!418253 () Bool)

(assert (=> b!311742 m!418253))

(declare-fun m!418255 () Bool)

(assert (=> b!311740 m!418255))

(assert (=> b!311740 m!418255))

(declare-fun m!418257 () Bool)

(assert (=> b!311740 m!418257))

(declare-fun m!418259 () Bool)

(assert (=> b!311740 m!418259))

(declare-fun m!418261 () Bool)

(assert (=> b!311731 m!418261))

(declare-fun m!418263 () Bool)

(assert (=> start!33642 m!418263))

(declare-fun m!418265 () Bool)

(assert (=> b!311732 m!418265))

(declare-fun m!418267 () Bool)

(assert (=> b!311744 m!418267))

(declare-fun m!418269 () Bool)

(assert (=> b!311729 m!418269))

(declare-fun m!418271 () Bool)

(assert (=> b!311729 m!418271))

(declare-fun m!418273 () Bool)

(assert (=> b!311729 m!418273))

(declare-fun m!418275 () Bool)

(assert (=> b!311728 m!418275))

(declare-fun m!418277 () Bool)

(assert (=> b!311728 m!418277))

(declare-fun m!418279 () Bool)

(assert (=> b!311747 m!418279))

(declare-fun m!418281 () Bool)

(assert (=> b!311747 m!418281))

(declare-fun m!418283 () Bool)

(assert (=> b!311738 m!418283))

(declare-fun m!418285 () Bool)

(assert (=> b!311738 m!418285))

(declare-fun m!418287 () Bool)

(assert (=> b!311734 m!418287))

(assert (=> b!311734 m!418287))

(declare-fun m!418289 () Bool)

(assert (=> b!311734 m!418289))

(declare-fun m!418291 () Bool)

(assert (=> b!311734 m!418291))

(declare-fun m!418293 () Bool)

(assert (=> b!311741 m!418293))

(check-sat (not b!311731) (not start!33642) (not b!311723) (not b!311726) (not b!311758) (not b!311740) (not b!311725) (not b!311728) (not b!311724) (not b!311738) b_and!26479 (not b!311743) (not b!311739) (not b!311718) b_and!26477 b_and!26485 (not b_next!11113) b_and!26487 b_and!26481 (not b!311745) (not b!311715) (not b!311735) (not b!311719) (not b_next!11119) (not b!311734) (not b!311749) (not b!311744) b_and!26483 (not b!311736) (not b_next!11121) (not b!311717) (not b!311732) (not b_next!11115) (not b!311733) (not b!311716) (not b!311741) (not b!311747) (not b_next!11117) (not b!311729) (not b!311742) (not b!311737) (not b_next!11123) (not b!311746))
(check-sat b_and!26481 (not b_next!11119) (not b_next!11115) (not b_next!11117) b_and!26479 (not b_next!11123) b_and!26477 b_and!26485 (not b_next!11113) b_and!26487 b_and!26483 (not b_next!11121))
