; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!128758 () Bool)

(assert start!128758)

(declare-fun b!1409564 () Bool)

(declare-fun res!638389 () Bool)

(declare-fun e!899880 () Bool)

(assert (=> b!1409564 (=> (not res!638389) (not e!899880))))

(declare-datatypes ((List!14443 0))(
  ( (Nil!14377) (Cons!14377 (h!19778 (_ BitVec 16)) (t!123362 List!14443)) )
))
(declare-datatypes ((TokenValue!2584 0))(
  ( (FloatLiteralValue!5168 (text!18533 List!14443)) (TokenValueExt!2583 (__x!8992 Int)) (Broken!12920 (value!80687 List!14443)) (Object!2649) (End!2584) (Def!2584) (Underscore!2584) (Match!2584) (Else!2584) (Error!2584) (Case!2584) (If!2584) (Extends!2584) (Abstract!2584) (Class!2584) (Val!2584) (DelimiterValue!5168 (del!2644 List!14443)) (KeywordValue!2590 (value!80688 List!14443)) (CommentValue!5168 (value!80689 List!14443)) (WhitespaceValue!5168 (value!80690 List!14443)) (IndentationValue!2584 (value!80691 List!14443)) (String!17157) (Int32!2584) (Broken!12921 (value!80692 List!14443)) (Boolean!2585) (Unit!20749) (OperatorValue!2587 (op!2644 List!14443)) (IdentifierValue!5168 (value!80693 List!14443)) (IdentifierValue!5169 (value!80694 List!14443)) (WhitespaceValue!5169 (value!80695 List!14443)) (True!5168) (False!5168) (Broken!12922 (value!80696 List!14443)) (Broken!12923 (value!80697 List!14443)) (True!5169) (RightBrace!2584) (RightBracket!2584) (Colon!2584) (Null!2584) (Comma!2584) (LeftBracket!2584) (False!5169) (LeftBrace!2584) (ImaginaryLiteralValue!2584 (text!18534 List!14443)) (StringLiteralValue!7752 (value!80698 List!14443)) (EOFValue!2584 (value!80699 List!14443)) (IdentValue!2584 (value!80700 List!14443)) (DelimiterValue!5169 (value!80701 List!14443)) (DedentValue!2584 (value!80702 List!14443)) (NewLineValue!2584 (value!80703 List!14443)) (IntegerValue!7752 (value!80704 (_ BitVec 32)) (text!18535 List!14443)) (IntegerValue!7753 (value!80705 Int) (text!18536 List!14443)) (Times!2584) (Or!2584) (Equal!2584) (Minus!2584) (Broken!12924 (value!80706 List!14443)) (And!2584) (Div!2584) (LessEqual!2584) (Mod!2584) (Concat!6392) (Not!2584) (Plus!2584) (SpaceValue!2584 (value!80707 List!14443)) (IntegerValue!7754 (value!80708 Int) (text!18537 List!14443)) (StringLiteralValue!7753 (text!18538 List!14443)) (FloatLiteralValue!5169 (text!18539 List!14443)) (BytesLiteralValue!2584 (value!80709 List!14443)) (CommentValue!5169 (value!80710 List!14443)) (StringLiteralValue!7754 (value!80711 List!14443)) (ErrorTokenValue!2584 (msg!2645 List!14443)) )
))
(declare-datatypes ((Regex!3808 0))(
  ( (ElementMatch!3808 (c!231625 (_ BitVec 16))) (Concat!6393 (regOne!8128 Regex!3808) (regTwo!8128 Regex!3808)) (EmptyExpr!3808) (Star!3808 (reg!4137 Regex!3808)) (EmptyLang!3808) (Union!3808 (regOne!8129 Regex!3808) (regTwo!8129 Regex!3808)) )
))
(declare-datatypes ((String!17158 0))(
  ( (String!17159 (value!80712 String)) )
))
(declare-datatypes ((IArray!9517 0))(
  ( (IArray!9518 (innerList!4816 List!14443)) )
))
(declare-datatypes ((Conc!4756 0))(
  ( (Node!4756 (left!12277 Conc!4756) (right!12607 Conc!4756) (csize!9742 Int) (cheight!4967 Int)) (Leaf!7200 (xs!7483 IArray!9517) (csize!9743 Int)) (Empty!4756) )
))
(declare-datatypes ((BalanceConc!9452 0))(
  ( (BalanceConc!9453 (c!231626 Conc!4756)) )
))
(declare-datatypes ((TokenValueInjection!4828 0))(
  ( (TokenValueInjection!4829 (toValue!3789 Int) (toChars!3648 Int)) )
))
(declare-datatypes ((Rule!4788 0))(
  ( (Rule!4789 (regex!2494 Regex!3808) (tag!2756 String!17158) (isSeparator!2494 Bool) (transformation!2494 TokenValueInjection!4828)) )
))
(declare-datatypes ((Token!4650 0))(
  ( (Token!4651 (value!80713 TokenValue!2584) (rule!4257 Rule!4788) (size!11833 Int) (originalCharacters!3356 List!14443)) )
))
(declare-datatypes ((List!14444 0))(
  ( (Nil!14378) (Cons!14378 (h!19779 Token!4650) (t!123363 List!14444)) )
))
(declare-datatypes ((IArray!9519 0))(
  ( (IArray!9520 (innerList!4817 List!14444)) )
))
(declare-datatypes ((Conc!4757 0))(
  ( (Node!4757 (left!12278 Conc!4757) (right!12608 Conc!4757) (csize!9744 Int) (cheight!4968 Int)) (Leaf!7201 (xs!7484 IArray!9519) (csize!9745 Int)) (Empty!4757) )
))
(declare-datatypes ((List!14445 0))(
  ( (Nil!14379) (Cons!14379 (h!19780 Rule!4788) (t!123364 List!14445)) )
))
(declare-datatypes ((BalanceConc!9454 0))(
  ( (BalanceConc!9455 (c!231627 Conc!4757)) )
))
(declare-datatypes ((PrintableTokens!770 0))(
  ( (PrintableTokens!771 (rules!10965 List!14445) (tokens!1713 BalanceConc!9454)) )
))
(declare-fun acc!229 () PrintableTokens!770)

(declare-datatypes ((List!14446 0))(
  ( (Nil!14380) (Cons!14380 (h!19781 PrintableTokens!770) (t!123365 List!14446)) )
))
(declare-datatypes ((IArray!9521 0))(
  ( (IArray!9522 (innerList!4818 List!14446)) )
))
(declare-datatypes ((Conc!4758 0))(
  ( (Node!4758 (left!12279 Conc!4758) (right!12609 Conc!4758) (csize!9746 Int) (cheight!4969 Int)) (Leaf!7202 (xs!7485 IArray!9521) (csize!9747 Int)) (Empty!4758) )
))
(declare-datatypes ((BalanceConc!9456 0))(
  ( (BalanceConc!9457 (c!231628 Conc!4758)) )
))
(declare-fun objs!24 () BalanceConc!9456)

(declare-datatypes ((Option!2753 0))(
  ( (None!2752) (Some!2752 (v!21722 PrintableTokens!770)) )
))
(declare-fun append!415 (PrintableTokens!770 PrintableTokens!770) Option!2753)

(declare-fun head!2638 (BalanceConc!9456) PrintableTokens!770)

(assert (=> b!1409564 (= res!638389 (is-Some!2752 (append!415 acc!229 (head!2638 objs!24))))))

(declare-fun b!1409565 () Bool)

(declare-fun res!638386 () Bool)

(assert (=> b!1409565 (=> (not res!638386) (not e!899880))))

(declare-fun size!11834 (BalanceConc!9456) Int)

(assert (=> b!1409565 (= res!638386 (= (size!11834 objs!24) 1))))

(declare-fun b!1409566 () Bool)

(declare-fun e!899877 () Bool)

(declare-fun tp!400245 () Bool)

(declare-fun inv!18720 (Conc!4757) Bool)

(assert (=> b!1409566 (= e!899877 (and (inv!18720 (c!231627 (tokens!1713 acc!229))) tp!400245))))

(declare-fun b!1409567 () Bool)

(declare-fun e!899876 () Bool)

(declare-fun tp!400242 () Bool)

(declare-fun inv!18721 (Conc!4758) Bool)

(assert (=> b!1409567 (= e!899876 (and (inv!18721 (c!231628 objs!24)) tp!400242))))

(declare-fun b!1409568 () Bool)

(declare-fun e!899879 () Bool)

(declare-fun sep!3 () PrintableTokens!770)

(declare-fun tp!400243 () Bool)

(assert (=> b!1409568 (= e!899879 (and (inv!18720 (c!231627 (tokens!1713 sep!3))) tp!400243))))

(declare-fun res!638388 () Bool)

(assert (=> start!128758 (=> (not res!638388) (not e!899880))))

(declare-fun lambda!62336 () Int)

(declare-fun forall!3496 (BalanceConc!9456 Int) Bool)

(assert (=> start!128758 (= res!638388 (forall!3496 objs!24 lambda!62336))))

(assert (=> start!128758 e!899880))

(declare-fun inv!18722 (BalanceConc!9456) Bool)

(assert (=> start!128758 (and (inv!18722 objs!24) e!899876)))

(declare-fun e!899878 () Bool)

(declare-fun inv!18723 (PrintableTokens!770) Bool)

(assert (=> start!128758 (and (inv!18723 acc!229) e!899878)))

(declare-fun e!899875 () Bool)

(assert (=> start!128758 (and (inv!18723 sep!3) e!899875)))

(declare-fun b!1409569 () Bool)

(declare-fun res!638384 () Bool)

(assert (=> b!1409569 (=> (not res!638384) (not e!899880))))

(declare-fun isEmpty!8761 (BalanceConc!9456) Bool)

(assert (=> b!1409569 (= res!638384 (not (isEmpty!8761 objs!24)))))

(declare-fun tp!400241 () Bool)

(declare-fun b!1409570 () Bool)

(declare-fun inv!18724 (BalanceConc!9454) Bool)

(assert (=> b!1409570 (= e!899875 (and tp!400241 (inv!18724 (tokens!1713 sep!3)) e!899879))))

(declare-fun b!1409571 () Bool)

(declare-fun res!638387 () Bool)

(assert (=> b!1409571 (=> (not res!638387) (not e!899880))))

(declare-fun usesJsonRules!0 (PrintableTokens!770) Bool)

(assert (=> b!1409571 (= res!638387 (usesJsonRules!0 sep!3))))

(declare-fun tp!400244 () Bool)

(declare-fun b!1409572 () Bool)

(assert (=> b!1409572 (= e!899878 (and tp!400244 (inv!18724 (tokens!1713 acc!229)) e!899877))))

(declare-fun b!1409573 () Bool)

(declare-fun res!638385 () Bool)

(assert (=> b!1409573 (=> (not res!638385) (not e!899880))))

(assert (=> b!1409573 (= res!638385 (usesJsonRules!0 acc!229))))

(declare-fun b!1409574 () Bool)

(declare-fun tail!2045 (BalanceConc!9456) BalanceConc!9456)

(assert (=> b!1409574 (= e!899880 (not (forall!3496 (tail!2045 objs!24) lambda!62336)))))

(assert (= (and start!128758 res!638388) b!1409573))

(assert (= (and b!1409573 res!638385) b!1409571))

(assert (= (and b!1409571 res!638387) b!1409569))

(assert (= (and b!1409569 res!638384) b!1409565))

(assert (= (and b!1409565 res!638386) b!1409564))

(assert (= (and b!1409564 res!638389) b!1409574))

(assert (= start!128758 b!1409567))

(assert (= b!1409572 b!1409566))

(assert (= start!128758 b!1409572))

(assert (= b!1409570 b!1409568))

(assert (= start!128758 b!1409570))

(declare-fun m!1588247 () Bool)

(assert (=> b!1409574 m!1588247))

(assert (=> b!1409574 m!1588247))

(declare-fun m!1588249 () Bool)

(assert (=> b!1409574 m!1588249))

(declare-fun m!1588251 () Bool)

(assert (=> b!1409572 m!1588251))

(declare-fun m!1588253 () Bool)

(assert (=> b!1409564 m!1588253))

(assert (=> b!1409564 m!1588253))

(declare-fun m!1588255 () Bool)

(assert (=> b!1409564 m!1588255))

(declare-fun m!1588257 () Bool)

(assert (=> b!1409573 m!1588257))

(declare-fun m!1588259 () Bool)

(assert (=> b!1409569 m!1588259))

(declare-fun m!1588261 () Bool)

(assert (=> b!1409570 m!1588261))

(declare-fun m!1588263 () Bool)

(assert (=> b!1409567 m!1588263))

(declare-fun m!1588265 () Bool)

(assert (=> b!1409566 m!1588265))

(declare-fun m!1588267 () Bool)

(assert (=> b!1409565 m!1588267))

(declare-fun m!1588269 () Bool)

(assert (=> b!1409568 m!1588269))

(declare-fun m!1588271 () Bool)

(assert (=> b!1409571 m!1588271))

(declare-fun m!1588273 () Bool)

(assert (=> start!128758 m!1588273))

(declare-fun m!1588275 () Bool)

(assert (=> start!128758 m!1588275))

(declare-fun m!1588277 () Bool)

(assert (=> start!128758 m!1588277))

(declare-fun m!1588279 () Bool)

(assert (=> start!128758 m!1588279))

(push 1)

(assert (not b!1409566))

(assert (not b!1409565))

(assert (not b!1409573))

(assert (not b!1409564))

(assert (not b!1409571))

(assert (not b!1409572))

(assert (not b!1409569))

(assert (not b!1409567))

(assert (not b!1409570))

(assert (not b!1409568))

(assert (not b!1409574))

(assert (not start!128758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!470673 () List!14444)

(declare-fun c!231659 () Bool)

(declare-fun lt!470649 () List!14444)

(declare-fun c!231657 () Bool)

(declare-fun call!93937 () List!14443)

(declare-fun bm!93931 () Bool)

(declare-datatypes ((LexerInterface!2184 0))(
  ( (LexerInterfaceExt!2181 (__x!8994 Int)) (Lexer!2182) )
))
(declare-fun lt!470668 () LexerInterface!2184)

(declare-fun printList!645 (LexerInterface!2184 List!14444) List!14443)

(assert (=> bm!93931 (= call!93937 (printList!645 (ite (or c!231657 c!231659) Lexer!2182 lt!470668) (ite c!231657 Nil!14378 (ite c!231659 (t!123363 lt!470673) lt!470649))))))

(declare-fun b!1409678 () Bool)

(declare-fun e!899942 () Bool)

(declare-fun e!899941 () Bool)

(assert (=> b!1409678 (= e!899942 e!899941)))

(declare-fun res!638438 () Bool)

(assert (=> b!1409678 (=> (not res!638438) (not e!899941))))

(declare-fun lt!470679 () Option!2753)

(declare-fun get!4425 (Option!2753) PrintableTokens!770)

(assert (=> b!1409678 (= res!638438 (= (rules!10965 (get!4425 lt!470679)) (rules!10965 acc!229)))))

(declare-fun call!93948 () List!14444)

(declare-fun lt!470638 () List!14444)

(declare-fun bm!93932 () Bool)

(declare-fun call!93949 () List!14443)

(declare-fun lt!470655 () LexerInterface!2184)

(declare-fun call!93952 () List!14444)

(assert (=> bm!93932 (= call!93949 (printList!645 (ite c!231657 lt!470655 (ite c!231659 Lexer!2182 lt!470668)) (ite c!231657 lt!470638 (ite c!231659 call!93948 call!93952))))))

(declare-fun call!93958 () List!14443)

(declare-fun call!93964 () List!14443)

(declare-fun bm!93933 () Bool)

(declare-fun call!93963 () List!14443)

(declare-fun call!93972 () List!14443)

(declare-fun call!93974 () List!14443)

(declare-fun ++!3733 (List!14443 List!14443) List!14443)

(assert (=> bm!93933 (= call!93974 (++!3733 (ite c!231657 call!93963 call!93972) (ite c!231657 call!93949 (ite c!231659 call!93958 call!93964))))))

(declare-fun b!1409679 () Bool)

(declare-fun e!899945 () List!14444)

(declare-fun lt!470677 () List!14444)

(declare-fun lt!470678 () List!14444)

(declare-fun ++!3734 (List!14444 List!14444) List!14444)

(assert (=> b!1409679 (= e!899945 (++!3734 lt!470677 lt!470678))))

(declare-fun bm!93934 () Bool)

(declare-fun call!93945 () BalanceConc!9452)

(declare-fun call!93971 () BalanceConc!9452)

(assert (=> bm!93934 (= call!93945 call!93971)))

(declare-fun call!93969 () List!14444)

(declare-fun call!93970 () List!14444)

(declare-fun bm!93935 () Bool)

(declare-datatypes ((Unit!20751 0))(
  ( (Unit!20752) )
))
(declare-fun call!93965 () Unit!20751)

(declare-fun theoremInvertabilityWhenTokenListSeparable!15 (LexerInterface!2184 List!14445 List!14444) Unit!20751)

(assert (=> bm!93935 (= call!93965 (theoremInvertabilityWhenTokenListSeparable!15 Lexer!2182 (rules!10965 acc!229) (ite c!231657 call!93969 call!93970)))))

(declare-fun bm!93936 () Bool)

(declare-fun c!231658 () Bool)

(assert (=> bm!93936 (= c!231658 c!231659)))

(declare-fun call!93955 () List!14443)

(declare-fun call!93966 () List!14443)

(assert (=> bm!93936 (= call!93955 call!93966)))

(declare-fun b!1409680 () Bool)

(assert (=> b!1409680 (= e!899945 call!93952)))

(declare-fun bm!93937 () Bool)

(declare-fun call!93936 () List!14444)

(assert (=> bm!93937 (= call!93970 call!93936)))

(declare-fun bm!93938 () Bool)

(declare-fun call!93973 () List!14443)

(assert (=> bm!93938 (= call!93973 call!93937)))

(declare-fun bm!93939 () Bool)

(declare-fun call!93940 () BalanceConc!9452)

(declare-fun call!93953 () BalanceConc!9452)

(assert (=> bm!93939 (= call!93940 call!93953)))

(declare-fun b!1409681 () Bool)

(declare-fun e!899944 () List!14443)

(assert (=> b!1409681 (= e!899944 call!93973)))

(declare-fun b!1409682 () Bool)

(declare-fun e!899938 () Option!2753)

(assert (=> b!1409682 (= e!899938 None!2752)))

(declare-fun b!1409683 () Bool)

(declare-fun e!899939 () List!14443)

(assert (=> b!1409683 (= e!899939 Nil!14377)))

(declare-fun lt!470639 () List!14444)

(declare-fun lt!470670 () LexerInterface!2184)

(declare-fun call!93941 () List!14443)

(declare-fun lt!470684 () List!14444)

(declare-fun bm!93940 () Bool)

(declare-fun lt!470654 () List!14444)

(assert (=> bm!93940 (= call!93941 (printList!645 (ite c!231657 Lexer!2182 (ite c!231659 lt!470670 lt!470668)) (ite c!231657 (t!123363 lt!470654) (ite c!231659 lt!470684 lt!470639))))))

(declare-fun bm!93941 () Bool)

(declare-fun call!93951 () List!14443)

(assert (=> bm!93941 (= call!93972 call!93951)))

(declare-fun bm!93942 () Bool)

(declare-fun call!93950 () List!14444)

(assert (=> bm!93942 (= call!93952 call!93950)))

(declare-fun d!402806 () Bool)

(assert (=> d!402806 e!899942))

(declare-fun res!638440 () Bool)

(assert (=> d!402806 (=> res!638440 e!899942)))

(declare-fun isEmpty!8763 (Option!2753) Bool)

(assert (=> d!402806 (= res!638440 (isEmpty!8763 lt!470679))))

(declare-fun e!899943 () Option!2753)

(assert (=> d!402806 (= lt!470679 e!899943)))

(declare-fun isEmpty!8764 (BalanceConc!9454) Bool)

(assert (=> d!402806 (= c!231657 (isEmpty!8764 (tokens!1713 (head!2638 objs!24))))))

(declare-fun lt!470686 () Unit!20751)

(declare-fun lemmaInvariant!217 (PrintableTokens!770) Unit!20751)

(assert (=> d!402806 (= lt!470686 (lemmaInvariant!217 acc!229))))

(declare-fun lt!470656 () Unit!20751)

(assert (=> d!402806 (= lt!470656 (lemmaInvariant!217 (head!2638 objs!24)))))

(assert (=> d!402806 (= (rules!10965 acc!229) (rules!10965 (head!2638 objs!24)))))

(assert (=> d!402806 (= (append!415 acc!229 (head!2638 objs!24)) lt!470679)))

(declare-fun bm!93943 () Bool)

(declare-fun call!93956 () BalanceConc!9452)

(declare-fun print!945 (PrintableTokens!770) BalanceConc!9452)

(assert (=> bm!93943 (= call!93956 (print!945 (ite c!231657 acc!229 (ite c!231659 (head!2638 objs!24) acc!229))))))

(declare-fun bm!93944 () Bool)

(declare-fun call!93967 () BalanceConc!9452)

(assert (=> bm!93944 (= call!93967 call!93956)))

(declare-fun bm!93945 () Bool)

(declare-fun call!93960 () List!14443)

(assert (=> bm!93945 (= call!93966 (++!3733 (ite c!231657 call!93960 e!899944) (ite c!231657 call!93941 (ite c!231659 call!93973 call!93958))))))

(declare-fun bm!93946 () Bool)

(assert (=> bm!93946 (= call!93971 (print!945 (ite c!231657 (head!2638 objs!24) (ite c!231659 acc!229 (head!2638 objs!24)))))))

(declare-fun bm!93947 () Bool)

(declare-fun call!93957 () Unit!20751)

(assert (=> bm!93947 (= call!93957 (theoremInvertabilityWhenTokenListSeparable!15 Lexer!2182 (rules!10965 (head!2638 objs!24)) (ite c!231657 call!93936 call!93948)))))

(declare-fun b!1409684 () Bool)

(assert (=> b!1409684 (= e!899943 (Some!2752 acc!229))))

(assert (=> b!1409684 (= lt!470655 Lexer!2182)))

(declare-fun lt!470667 () List!14444)

(assert (=> b!1409684 (= lt!470667 call!93969)))

(assert (=> b!1409684 (= lt!470638 Nil!14378)))

(declare-fun lt!470689 () Unit!20751)

(declare-fun call!93959 () Unit!20751)

(assert (=> b!1409684 (= lt!470689 call!93959)))

(declare-fun call!93943 () List!14443)

(assert (=> b!1409684 (= call!93943 call!93974)))

(declare-fun lt!470676 () Unit!20751)

(assert (=> b!1409684 (= lt!470676 lt!470689)))

(assert (=> b!1409684 (= call!93937 Nil!14377)))

(declare-fun lt!470682 () Unit!20751)

(declare-fun Unit!20753 () Unit!20751)

(assert (=> b!1409684 (= lt!470682 Unit!20753)))

(declare-fun lt!470691 () Unit!20751)

(assert (=> b!1409684 (= lt!470691 call!93965)))

(assert (=> b!1409684 (= call!93956 call!93953)))

(declare-fun lt!470657 () Unit!20751)

(declare-fun Unit!20754 () Unit!20751)

(assert (=> b!1409684 (= lt!470657 Unit!20754)))

(declare-fun lt!470643 () Unit!20751)

(assert (=> b!1409684 (= lt!470643 call!93957)))

(declare-fun call!93946 () BalanceConc!9452)

(assert (=> b!1409684 (= call!93971 call!93946)))

(declare-fun lt!470685 () Unit!20751)

(declare-fun Unit!20755 () Unit!20751)

(assert (=> b!1409684 (= lt!470685 Unit!20755)))

(declare-fun call!93939 () BalanceConc!9452)

(assert (=> b!1409684 (= call!93946 call!93939)))

(declare-fun lt!470644 () Unit!20751)

(declare-fun Unit!20756 () Unit!20751)

(assert (=> b!1409684 (= lt!470644 Unit!20756)))

(assert (=> b!1409684 (= lt!470654 call!93936)))

(declare-fun c!231662 () Bool)

(assert (=> b!1409684 (= c!231662 (is-Cons!14378 lt!470654))))

(assert (=> b!1409684 (= call!93951 e!899939)))

(declare-fun lt!470648 () Unit!20751)

(declare-fun Unit!20757 () Unit!20751)

(assert (=> b!1409684 (= lt!470648 Unit!20757)))

(declare-fun b!1409685 () Bool)

(declare-fun e!899940 () Option!2753)

(assert (=> b!1409685 (= e!899943 e!899940)))

(assert (=> b!1409685 (= c!231659 (isEmpty!8764 (tokens!1713 acc!229)))))

(declare-fun bm!93948 () Bool)

(declare-fun list!5622 (BalanceConc!9454) List!14444)

(assert (=> bm!93948 (= call!93936 (list!5622 (ite c!231657 (tokens!1713 (head!2638 objs!24)) (tokens!1713 acc!229))))))

(declare-fun b!1409686 () Bool)

(declare-fun c!231661 () Bool)

(declare-fun separableTokensPredicate!466 (LexerInterface!2184 Token!4650 Token!4650 List!14445) Bool)

(declare-fun last!55 (BalanceConc!9454) Token!4650)

(declare-fun head!2640 (BalanceConc!9454) Token!4650)

(assert (=> b!1409686 (= c!231661 (separableTokensPredicate!466 Lexer!2182 (last!55 (tokens!1713 acc!229)) (head!2640 (tokens!1713 (head!2638 objs!24))) (rules!10965 acc!229)))))

(declare-fun lt!470641 () Unit!20751)

(declare-fun lt!470693 () Unit!20751)

(assert (=> b!1409686 (= lt!470641 lt!470693)))

(declare-fun lt!470687 () LexerInterface!2184)

(declare-fun lt!470645 () Token!4650)

(declare-fun rulesProduceIndividualToken!1152 (LexerInterface!2184 List!14445 Token!4650) Bool)

(assert (=> b!1409686 (rulesProduceIndividualToken!1152 lt!470687 (rules!10965 acc!229) lt!470645)))

(declare-fun lt!470671 () List!14444)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!337 (LexerInterface!2184 List!14445 List!14444 Token!4650) Unit!20751)

(assert (=> b!1409686 (= lt!470693 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!337 lt!470687 (rules!10965 acc!229) lt!470671 lt!470645))))

(assert (=> b!1409686 (= lt!470645 (head!2640 (tokens!1713 (head!2638 objs!24))))))

(assert (=> b!1409686 (= lt!470671 call!93948)))

(assert (=> b!1409686 (= lt!470687 Lexer!2182)))

(declare-fun lt!470658 () Unit!20751)

(declare-fun lt!470680 () Unit!20751)

(assert (=> b!1409686 (= lt!470658 lt!470680)))

(declare-fun lt!470695 () LexerInterface!2184)

(declare-fun lt!470683 () Token!4650)

(assert (=> b!1409686 (rulesProduceIndividualToken!1152 lt!470695 (rules!10965 acc!229) lt!470683)))

(declare-fun lt!470661 () List!14444)

(assert (=> b!1409686 (= lt!470680 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!337 lt!470695 (rules!10965 acc!229) lt!470661 lt!470683))))

(assert (=> b!1409686 (= lt!470683 (last!55 (tokens!1713 acc!229)))))

(assert (=> b!1409686 (= lt!470661 call!93970)))

(assert (=> b!1409686 (= lt!470695 Lexer!2182)))

(assert (=> b!1409686 (= e!899940 e!899938)))

(declare-fun call!93942 () BalanceConc!9452)

(declare-fun bm!93949 () Bool)

(declare-fun charsOf!1460 (Token!4650) BalanceConc!9452)

(assert (=> bm!93949 (= call!93942 (charsOf!1460 (ite c!231657 (h!19779 lt!470654) (h!19779 lt!470673))))))

(declare-fun b!1409687 () Bool)

(declare-fun lt!470662 () Unit!20751)

(declare-fun Unit!20758 () Unit!20751)

(assert (=> b!1409687 (= lt!470662 Unit!20758)))

(declare-fun call!93944 () List!14443)

(declare-fun e!899946 () List!14443)

(assert (=> b!1409687 (= call!93944 e!899946)))

(declare-fun c!231656 () Bool)

(assert (=> b!1409687 (= c!231656 (is-Cons!14378 lt!470673))))

(assert (=> b!1409687 (= lt!470673 call!93948)))

(declare-fun lt!470688 () Unit!20751)

(declare-fun Unit!20759 () Unit!20751)

(assert (=> b!1409687 (= lt!470688 Unit!20759)))

(declare-fun call!93962 () BalanceConc!9452)

(assert (=> b!1409687 (= call!93962 call!93939)))

(declare-fun lt!470651 () Unit!20751)

(declare-fun Unit!20760 () Unit!20751)

(assert (=> b!1409687 (= lt!470651 Unit!20760)))

(assert (=> b!1409687 (= call!93967 call!93962)))

(declare-fun lt!470650 () Unit!20751)

(declare-fun call!93947 () Unit!20751)

(assert (=> b!1409687 (= lt!470650 call!93947)))

(declare-fun lt!470696 () Unit!20751)

(declare-fun Unit!20761 () Unit!20751)

(assert (=> b!1409687 (= lt!470696 Unit!20761)))

(assert (=> b!1409687 (= call!93945 call!93940)))

(declare-fun lt!470669 () Unit!20751)

(declare-fun call!93961 () Unit!20751)

(assert (=> b!1409687 (= lt!470669 call!93961)))

(declare-fun lt!470701 () Unit!20751)

(declare-fun Unit!20762 () Unit!20751)

(assert (=> b!1409687 (= lt!470701 Unit!20762)))

(assert (=> b!1409687 (= call!93964 Nil!14377)))

(declare-fun lt!470652 () Unit!20751)

(declare-fun lt!470698 () Unit!20751)

(assert (=> b!1409687 (= lt!470652 lt!470698)))

(declare-fun call!93938 () List!14443)

(declare-fun call!93968 () List!14443)

(assert (=> b!1409687 (= call!93938 call!93968)))

(declare-fun call!93954 () Unit!20751)

(assert (=> b!1409687 (= lt!470698 call!93954)))

(assert (=> b!1409687 (= lt!470684 call!93948)))

(declare-fun lt!470666 () List!14444)

(assert (=> b!1409687 (= lt!470666 Nil!14378)))

(assert (=> b!1409687 (= lt!470670 Lexer!2182)))

(assert (=> b!1409687 (= e!899940 (Some!2752 (head!2638 objs!24)))))

(declare-fun bm!93950 () Bool)

(declare-fun printTailRec!627 (LexerInterface!2184 BalanceConc!9454 Int BalanceConc!9452) BalanceConc!9452)

(assert (=> bm!93950 (= call!93939 (printTailRec!627 Lexer!2182 (tokens!1713 (head!2638 objs!24)) 0 (BalanceConc!9453 Empty!4756)))))

(declare-fun bm!93951 () Bool)

(assert (=> bm!93951 (= call!93958 call!93941)))

(declare-fun bm!93952 () Bool)

(assert (=> bm!93952 (= call!93947 call!93957)))

(declare-fun bm!93953 () Bool)

(assert (=> bm!93953 (= call!93948 call!93969)))

(declare-fun bm!93954 () Bool)

(declare-fun c!231660 () Bool)

(assert (=> bm!93954 (= c!231660 c!231659)))

(assert (=> bm!93954 (= call!93938 call!93943)))

(declare-fun b!1409688 () Bool)

(assert (=> b!1409688 (= e!899939 call!93966)))

(declare-fun b!1409689 () Bool)

(declare-fun list!5623 (BalanceConc!9452) List!14443)

(assert (=> b!1409689 (= e!899941 (= (list!5623 (print!945 (get!4425 lt!470679))) (++!3733 (list!5623 (print!945 acc!229)) (list!5623 (print!945 (head!2638 objs!24))))))))

(declare-fun bm!93955 () Bool)

(declare-fun lt!470674 () LexerInterface!2184)

(assert (=> bm!93955 (= call!93951 (printList!645 (ite c!231657 Lexer!2182 (ite c!231659 lt!470670 lt!470674)) (ite c!231657 call!93936 (ite c!231659 lt!470666 lt!470677))))))

(declare-fun bm!93956 () Bool)

(assert (=> bm!93956 (= call!93961 call!93965)))

(declare-fun bm!93957 () Bool)

(declare-fun print!946 (LexerInterface!2184 BalanceConc!9454) BalanceConc!9452)

(assert (=> bm!93957 (= call!93953 (print!946 Lexer!2182 (tokens!1713 acc!229)))))

(declare-fun bm!93958 () Bool)

(assert (=> bm!93958 (= call!93943 (printList!645 (ite c!231657 lt!470655 (ite c!231659 lt!470670 lt!470674)) (ite c!231657 call!93950 e!899945)))))

(declare-fun b!1409690 () Bool)

(assert (=> b!1409690 (= e!899944 call!93960)))

(declare-fun bm!93959 () Bool)

(assert (=> bm!93959 (= call!93962 call!93946)))

(declare-fun bm!93960 () Bool)

(assert (=> bm!93960 (= call!93944 call!93949)))

(declare-fun bm!93961 () Bool)

(declare-fun lemmaPrintConcatSameAsConcatPrint!10 (LexerInterface!2184 List!14444 List!14444) Unit!20751)

(assert (=> bm!93961 (= call!93954 (lemmaPrintConcatSameAsConcatPrint!10 (ite c!231659 lt!470670 lt!470674) (ite c!231659 lt!470666 lt!470677) (ite c!231659 lt!470684 lt!470678)))))

(declare-fun b!1409691 () Bool)

(assert (=> b!1409691 (= e!899946 call!93955)))

(declare-fun b!1409692 () Bool)

(declare-fun res!638439 () Bool)

(assert (=> b!1409692 (=> (not res!638439) (not e!899941))))

(assert (=> b!1409692 (= res!638439 (= (list!5622 (tokens!1713 (get!4425 lt!470679))) (++!3734 (list!5622 (tokens!1713 acc!229)) (list!5622 (tokens!1713 (head!2638 objs!24))))))))

(declare-fun b!1409693 () Bool)

(assert (=> b!1409693 (= e!899946 Nil!14377)))

(declare-fun bm!93962 () Bool)

(assert (=> bm!93962 (= call!93964 call!93963)))

(declare-fun bm!93963 () Bool)

(assert (=> bm!93963 (= call!93950 (++!3734 (ite c!231657 lt!470667 (ite c!231659 lt!470666 lt!470649)) (ite c!231657 lt!470638 (ite c!231659 lt!470684 lt!470639))))))

(declare-fun bm!93964 () Bool)

(assert (=> bm!93964 (= call!93969 (list!5622 (ite c!231657 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))))

(declare-fun bm!93965 () Bool)

(assert (=> bm!93965 (= call!93946 (print!946 Lexer!2182 (tokens!1713 (head!2638 objs!24))))))

(declare-fun bm!93966 () Bool)

(assert (=> bm!93966 (= call!93968 call!93974)))

(declare-fun bm!93967 () Bool)

(assert (=> bm!93967 (= call!93959 (lemmaPrintConcatSameAsConcatPrint!10 (ite c!231657 lt!470655 lt!470668) (ite c!231657 lt!470667 lt!470649) (ite c!231657 lt!470638 lt!470639)))))

(declare-fun b!1409694 () Bool)

(declare-fun ++!3735 (BalanceConc!9454 BalanceConc!9454) BalanceConc!9454)

(assert (=> b!1409694 (= e!899938 (Some!2752 (PrintableTokens!771 (rules!10965 acc!229) (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))

(declare-fun lt!470653 () LexerInterface!2184)

(assert (=> b!1409694 (= lt!470653 Lexer!2182)))

(declare-fun lt!470640 () List!14444)

(assert (=> b!1409694 (= lt!470640 call!93970)))

(declare-fun lt!470664 () List!14444)

(assert (=> b!1409694 (= lt!470664 call!93948)))

(declare-fun lt!470681 () Unit!20751)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!10 (LexerInterface!2184 List!14444 List!14444 List!14445) Unit!20751)

(assert (=> b!1409694 (= lt!470681 (tokensListTwoByTwoPredicateConcatSeparableTokensList!10 lt!470653 lt!470640 lt!470664 (rules!10965 acc!229)))))

(declare-fun lt!470642 () Unit!20751)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!10 (LexerInterface!2184 List!14445 List!14444 List!14444) Unit!20751)

(assert (=> b!1409694 (= lt!470642 (lemmaRulesProduceEachTokenIndividuallyConcat!10 lt!470653 (rules!10965 acc!229) lt!470640 lt!470664))))

(declare-fun rulesProduceEachTokenIndividuallyList!668 (LexerInterface!2184 List!14445 List!14444) Bool)

(assert (=> b!1409694 (rulesProduceEachTokenIndividuallyList!668 lt!470653 (rules!10965 acc!229) (++!3734 lt!470640 lt!470664))))

(declare-fun lt!470660 () Unit!20751)

(assert (=> b!1409694 (= lt!470660 lt!470642)))

(declare-fun tokensListTwoByTwoPredicateSeparableList!189 (LexerInterface!2184 List!14444 List!14445) Bool)

(assert (=> b!1409694 (tokensListTwoByTwoPredicateSeparableList!189 lt!470653 (++!3734 lt!470640 lt!470664) (rules!10965 acc!229))))

(declare-fun lt!470675 () Unit!20751)

(assert (=> b!1409694 (= lt!470675 lt!470681)))

(assert (=> b!1409694 (= lt!470668 Lexer!2182)))

(assert (=> b!1409694 (= lt!470649 call!93970)))

(assert (=> b!1409694 (= lt!470639 call!93948)))

(declare-fun lt!470646 () Unit!20751)

(assert (=> b!1409694 (= lt!470646 call!93959)))

(assert (=> b!1409694 (= call!93944 call!93955)))

(declare-fun lt!470672 () Unit!20751)

(assert (=> b!1409694 (= lt!470672 lt!470646)))

(declare-fun lt!470700 () Unit!20751)

(assert (=> b!1409694 (= lt!470700 call!93961)))

(assert (=> b!1409694 (= call!93967 call!93940)))

(declare-fun lt!470694 () Unit!20751)

(declare-fun Unit!20763 () Unit!20751)

(assert (=> b!1409694 (= lt!470694 Unit!20763)))

(declare-fun lt!470665 () Unit!20751)

(assert (=> b!1409694 (= lt!470665 call!93947)))

(assert (=> b!1409694 (= call!93945 call!93962)))

(declare-fun lt!470663 () Unit!20751)

(declare-fun Unit!20764 () Unit!20751)

(assert (=> b!1409694 (= lt!470663 Unit!20764)))

(declare-fun lt!470699 () PrintableTokens!770)

(assert (=> b!1409694 (= lt!470699 (PrintableTokens!771 (rules!10965 acc!229) (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))))

(declare-fun lt!470659 () BalanceConc!9454)

(assert (=> b!1409694 (= lt!470659 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))

(declare-fun lt!470692 () Unit!20751)

(assert (=> b!1409694 (= lt!470692 (theoremInvertabilityWhenTokenListSeparable!15 Lexer!2182 (rules!10965 acc!229) (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))

(assert (=> b!1409694 (= (print!945 (PrintableTokens!771 (rules!10965 acc!229) (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))) (print!946 Lexer!2182 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))))

(declare-fun lt!470647 () Unit!20751)

(declare-fun Unit!20765 () Unit!20751)

(assert (=> b!1409694 (= lt!470647 Unit!20765)))

(assert (=> b!1409694 (= lt!470674 Lexer!2182)))

(assert (=> b!1409694 (= lt!470677 call!93970)))

(assert (=> b!1409694 (= lt!470678 call!93948)))

(declare-fun lt!470697 () Unit!20751)

(assert (=> b!1409694 (= lt!470697 call!93954)))

(assert (=> b!1409694 (= call!93938 call!93968)))

(declare-fun lt!470690 () Unit!20751)

(assert (=> b!1409694 (= lt!470690 lt!470697)))

(declare-fun bm!93968 () Bool)

(assert (=> bm!93968 (= call!93960 (list!5623 call!93942))))

(declare-fun bm!93969 () Bool)

(assert (=> bm!93969 (= call!93963 (printList!645 (ite c!231657 lt!470655 (ite c!231659 Lexer!2182 lt!470674)) (ite c!231657 lt!470667 (ite c!231659 Nil!14378 lt!470678))))))

(assert (= (and d!402806 c!231657) b!1409684))

(assert (= (and d!402806 (not c!231657)) b!1409685))

(assert (= (and b!1409684 c!231662) b!1409688))

(assert (= (and b!1409684 (not c!231662)) b!1409683))

(assert (= (and b!1409685 c!231659) b!1409687))

(assert (= (and b!1409685 (not c!231659)) b!1409686))

(assert (= (and b!1409687 c!231656) b!1409691))

(assert (= (and b!1409687 (not c!231656)) b!1409693))

(assert (= (and b!1409686 c!231661) b!1409694))

(assert (= (and b!1409686 (not c!231661)) b!1409682))

(assert (= (or b!1409691 b!1409694) bm!93938))

(assert (= (or b!1409687 b!1409694) bm!93934))

(assert (= (or b!1409687 b!1409694) bm!93939))

(assert (= (or b!1409687 b!1409694) bm!93962))

(assert (= (or b!1409687 b!1409686 b!1409694) bm!93937))

(assert (= (or b!1409687 b!1409694) bm!93951))

(assert (= (or b!1409687 b!1409686 b!1409694) bm!93953))

(assert (= (or b!1409687 b!1409694) bm!93942))

(assert (= (or b!1409687 b!1409694) bm!93959))

(assert (= (or b!1409687 b!1409694) bm!93961))

(assert (= (or b!1409687 b!1409694) bm!93944))

(assert (= (or b!1409687 b!1409694) bm!93941))

(assert (= (or b!1409687 b!1409694) bm!93954))

(assert (= (and bm!93954 c!231660) b!1409680))

(assert (= (and bm!93954 (not c!231660)) b!1409679))

(assert (= (or b!1409687 b!1409694) bm!93956))

(assert (= (or b!1409687 b!1409694) bm!93960))

(assert (= (or b!1409687 b!1409694) bm!93952))

(assert (= (or b!1409687 b!1409694) bm!93966))

(assert (= (or b!1409691 b!1409694) bm!93936))

(assert (= (and bm!93936 c!231658) b!1409690))

(assert (= (and bm!93936 (not c!231658)) b!1409681))

(assert (= (or b!1409684 bm!93942) bm!93963))

(assert (= (or b!1409684 bm!93939) bm!93957))

(assert (= (or b!1409684 bm!93944) bm!93943))

(assert (= (or b!1409684 bm!93960) bm!93932))

(assert (= (or b!1409684 b!1409694) bm!93967))

(assert (= (or b!1409684 bm!93934) bm!93946))

(assert (= (or b!1409684 bm!93953) bm!93964))

(assert (= (or b!1409688 b!1409690) bm!93949))

(assert (= (or b!1409684 b!1409687) bm!93950))

(assert (= (or b!1409688 bm!93951) bm!93940))

(assert (= (or b!1409684 bm!93959) bm!93965))

(assert (= (or b!1409684 bm!93962) bm!93969))

(assert (= (or b!1409684 bm!93938) bm!93931))

(assert (= (or b!1409684 bm!93937) bm!93948))

(assert (= (or b!1409684 bm!93952) bm!93947))

(assert (= (or b!1409684 bm!93956) bm!93935))

(assert (= (or b!1409684 bm!93954) bm!93958))

(assert (= (or b!1409684 bm!93941) bm!93955))

(assert (= (or b!1409688 b!1409690) bm!93968))

(assert (= (or b!1409684 bm!93966) bm!93933))

(assert (= (or b!1409688 bm!93936) bm!93945))

(assert (= (and d!402806 (not res!638440)) b!1409678))

(assert (= (and b!1409678 res!638438) b!1409692))

(assert (= (and b!1409692 res!638439) b!1409689))

(declare-fun m!1588379 () Bool)

(assert (=> b!1409686 m!1588379))

(declare-fun m!1588381 () Bool)

(assert (=> b!1409686 m!1588381))

(assert (=> b!1409686 m!1588379))

(assert (=> b!1409686 m!1588381))

(declare-fun m!1588383 () Bool)

(assert (=> b!1409686 m!1588383))

(declare-fun m!1588385 () Bool)

(assert (=> b!1409686 m!1588385))

(declare-fun m!1588387 () Bool)

(assert (=> b!1409686 m!1588387))

(declare-fun m!1588389 () Bool)

(assert (=> b!1409686 m!1588389))

(declare-fun m!1588391 () Bool)

(assert (=> b!1409686 m!1588391))

(declare-fun m!1588393 () Bool)

(assert (=> bm!93965 m!1588393))

(declare-fun m!1588395 () Bool)

(assert (=> bm!93932 m!1588395))

(declare-fun m!1588397 () Bool)

(assert (=> bm!93957 m!1588397))

(declare-fun m!1588399 () Bool)

(assert (=> bm!93943 m!1588399))

(declare-fun m!1588401 () Bool)

(assert (=> d!402806 m!1588401))

(declare-fun m!1588403 () Bool)

(assert (=> d!402806 m!1588403))

(declare-fun m!1588405 () Bool)

(assert (=> d!402806 m!1588405))

(assert (=> d!402806 m!1588253))

(declare-fun m!1588407 () Bool)

(assert (=> d!402806 m!1588407))

(declare-fun m!1588409 () Bool)

(assert (=> b!1409685 m!1588409))

(declare-fun m!1588411 () Bool)

(assert (=> bm!93947 m!1588411))

(declare-fun m!1588413 () Bool)

(assert (=> b!1409678 m!1588413))

(declare-fun m!1588415 () Bool)

(assert (=> b!1409694 m!1588415))

(declare-fun m!1588417 () Bool)

(assert (=> b!1409694 m!1588417))

(declare-fun m!1588419 () Bool)

(assert (=> b!1409694 m!1588419))

(declare-fun m!1588421 () Bool)

(assert (=> b!1409694 m!1588421))

(declare-fun m!1588423 () Bool)

(assert (=> b!1409694 m!1588423))

(assert (=> b!1409694 m!1588417))

(assert (=> b!1409694 m!1588423))

(declare-fun m!1588425 () Bool)

(assert (=> b!1409694 m!1588425))

(declare-fun m!1588427 () Bool)

(assert (=> b!1409694 m!1588427))

(declare-fun m!1588429 () Bool)

(assert (=> b!1409694 m!1588429))

(declare-fun m!1588431 () Bool)

(assert (=> b!1409694 m!1588431))

(assert (=> b!1409694 m!1588427))

(assert (=> b!1409694 m!1588423))

(assert (=> b!1409694 m!1588427))

(declare-fun m!1588433 () Bool)

(assert (=> b!1409694 m!1588433))

(declare-fun m!1588435 () Bool)

(assert (=> b!1409689 m!1588435))

(declare-fun m!1588437 () Bool)

(assert (=> b!1409689 m!1588437))

(assert (=> b!1409689 m!1588435))

(assert (=> b!1409689 m!1588437))

(declare-fun m!1588439 () Bool)

(assert (=> b!1409689 m!1588439))

(declare-fun m!1588441 () Bool)

(assert (=> b!1409689 m!1588441))

(declare-fun m!1588443 () Bool)

(assert (=> b!1409689 m!1588443))

(assert (=> b!1409689 m!1588439))

(assert (=> b!1409689 m!1588413))

(declare-fun m!1588445 () Bool)

(assert (=> b!1409689 m!1588445))

(assert (=> b!1409689 m!1588445))

(declare-fun m!1588447 () Bool)

(assert (=> b!1409689 m!1588447))

(assert (=> b!1409689 m!1588413))

(assert (=> b!1409689 m!1588253))

(assert (=> b!1409689 m!1588443))

(declare-fun m!1588449 () Bool)

(assert (=> bm!93968 m!1588449))

(declare-fun m!1588451 () Bool)

(assert (=> bm!93969 m!1588451))

(declare-fun m!1588453 () Bool)

(assert (=> bm!93940 m!1588453))

(declare-fun m!1588455 () Bool)

(assert (=> bm!93949 m!1588455))

(declare-fun m!1588457 () Bool)

(assert (=> bm!93955 m!1588457))

(declare-fun m!1588459 () Bool)

(assert (=> bm!93964 m!1588459))

(declare-fun m!1588461 () Bool)

(assert (=> bm!93931 m!1588461))

(declare-fun m!1588463 () Bool)

(assert (=> bm!93933 m!1588463))

(declare-fun m!1588465 () Bool)

(assert (=> bm!93961 m!1588465))

(declare-fun m!1588467 () Bool)

(assert (=> bm!93935 m!1588467))

(declare-fun m!1588469 () Bool)

(assert (=> bm!93963 m!1588469))

(assert (=> b!1409692 m!1588413))

(declare-fun m!1588471 () Bool)

(assert (=> b!1409692 m!1588471))

(declare-fun m!1588473 () Bool)

(assert (=> b!1409692 m!1588473))

(assert (=> b!1409692 m!1588473))

(assert (=> b!1409692 m!1588471))

(declare-fun m!1588475 () Bool)

(assert (=> b!1409692 m!1588475))

(declare-fun m!1588477 () Bool)

(assert (=> b!1409692 m!1588477))

(declare-fun m!1588479 () Bool)

(assert (=> bm!93950 m!1588479))

(declare-fun m!1588481 () Bool)

(assert (=> b!1409679 m!1588481))

(declare-fun m!1588483 () Bool)

(assert (=> bm!93948 m!1588483))

(declare-fun m!1588485 () Bool)

(assert (=> bm!93945 m!1588485))

(declare-fun m!1588487 () Bool)

(assert (=> bm!93946 m!1588487))

(declare-fun m!1588489 () Bool)

(assert (=> bm!93958 m!1588489))

(declare-fun m!1588491 () Bool)

(assert (=> bm!93967 m!1588491))

(assert (=> b!1409564 d!402806))

(declare-fun d!402840 () Bool)

(declare-fun lt!470704 () PrintableTokens!770)

(declare-fun head!2641 (List!14446) PrintableTokens!770)

(declare-fun list!5624 (BalanceConc!9456) List!14446)

(assert (=> d!402840 (= lt!470704 (head!2641 (list!5624 objs!24)))))

(declare-fun head!2642 (Conc!4758) PrintableTokens!770)

(assert (=> d!402840 (= lt!470704 (head!2642 (c!231628 objs!24)))))

(assert (=> d!402840 (not (isEmpty!8761 objs!24))))

(assert (=> d!402840 (= (head!2638 objs!24) lt!470704)))

(declare-fun bs!338824 () Bool)

(assert (= bs!338824 d!402840))

(declare-fun m!1588493 () Bool)

(assert (=> bs!338824 m!1588493))

(assert (=> bs!338824 m!1588493))

(declare-fun m!1588495 () Bool)

(assert (=> bs!338824 m!1588495))

(declare-fun m!1588497 () Bool)

(assert (=> bs!338824 m!1588497))

(assert (=> bs!338824 m!1588259))

(assert (=> b!1409564 d!402840))

(declare-fun d!402842 () Bool)

(declare-fun c!231665 () Bool)

(assert (=> d!402842 (= c!231665 (is-Node!4757 (c!231627 (tokens!1713 acc!229))))))

(declare-fun e!899951 () Bool)

(assert (=> d!402842 (= (inv!18720 (c!231627 (tokens!1713 acc!229))) e!899951)))

(declare-fun b!1409701 () Bool)

(declare-fun inv!18730 (Conc!4757) Bool)

(assert (=> b!1409701 (= e!899951 (inv!18730 (c!231627 (tokens!1713 acc!229))))))

(declare-fun b!1409702 () Bool)

(declare-fun e!899952 () Bool)

(assert (=> b!1409702 (= e!899951 e!899952)))

(declare-fun res!638443 () Bool)

(assert (=> b!1409702 (= res!638443 (not (is-Leaf!7201 (c!231627 (tokens!1713 acc!229)))))))

(assert (=> b!1409702 (=> res!638443 e!899952)))

(declare-fun b!1409703 () Bool)

(declare-fun inv!18731 (Conc!4757) Bool)

(assert (=> b!1409703 (= e!899952 (inv!18731 (c!231627 (tokens!1713 acc!229))))))

(assert (= (and d!402842 c!231665) b!1409701))

(assert (= (and d!402842 (not c!231665)) b!1409702))

(assert (= (and b!1409702 (not res!638443)) b!1409703))

(declare-fun m!1588499 () Bool)

(assert (=> b!1409701 m!1588499))

(declare-fun m!1588501 () Bool)

(assert (=> b!1409703 m!1588501))

(assert (=> b!1409566 d!402842))

(declare-fun d!402844 () Bool)

(declare-fun lt!470707 () Int)

(declare-fun size!11837 (List!14446) Int)

(assert (=> d!402844 (= lt!470707 (size!11837 (list!5624 objs!24)))))

(declare-fun size!11838 (Conc!4758) Int)

(assert (=> d!402844 (= lt!470707 (size!11838 (c!231628 objs!24)))))

(assert (=> d!402844 (= (size!11834 objs!24) lt!470707)))

(declare-fun bs!338825 () Bool)

(assert (= bs!338825 d!402844))

(assert (=> bs!338825 m!1588493))

(assert (=> bs!338825 m!1588493))

(declare-fun m!1588503 () Bool)

(assert (=> bs!338825 m!1588503))

(declare-fun m!1588505 () Bool)

(assert (=> bs!338825 m!1588505))

(assert (=> b!1409565 d!402844))

(declare-fun d!402846 () Bool)

(declare-fun isBalanced!1401 (Conc!4757) Bool)

(assert (=> d!402846 (= (inv!18724 (tokens!1713 acc!229)) (isBalanced!1401 (c!231627 (tokens!1713 acc!229))))))

(declare-fun bs!338826 () Bool)

(assert (= bs!338826 d!402846))

(declare-fun m!1588507 () Bool)

(assert (=> bs!338826 m!1588507))

(assert (=> b!1409572 d!402846))

(declare-fun d!402848 () Bool)

(declare-fun lt!470710 () Bool)

(declare-fun forall!3498 (List!14446 Int) Bool)

(assert (=> d!402848 (= lt!470710 (forall!3498 (list!5624 objs!24) lambda!62336))))

(declare-fun forall!3499 (Conc!4758 Int) Bool)

(assert (=> d!402848 (= lt!470710 (forall!3499 (c!231628 objs!24) lambda!62336))))

(assert (=> d!402848 (= (forall!3496 objs!24 lambda!62336) lt!470710)))

(declare-fun bs!338827 () Bool)

(assert (= bs!338827 d!402848))

(assert (=> bs!338827 m!1588493))

(assert (=> bs!338827 m!1588493))

(declare-fun m!1588509 () Bool)

(assert (=> bs!338827 m!1588509))

(declare-fun m!1588511 () Bool)

(assert (=> bs!338827 m!1588511))

(assert (=> start!128758 d!402848))

(declare-fun d!402850 () Bool)

(declare-fun isBalanced!1402 (Conc!4758) Bool)

(assert (=> d!402850 (= (inv!18722 objs!24) (isBalanced!1402 (c!231628 objs!24)))))

(declare-fun bs!338828 () Bool)

(assert (= bs!338828 d!402850))

(declare-fun m!1588513 () Bool)

(assert (=> bs!338828 m!1588513))

(assert (=> start!128758 d!402850))

(declare-fun d!402852 () Bool)

(declare-fun res!638450 () Bool)

(declare-fun e!899955 () Bool)

(assert (=> d!402852 (=> (not res!638450) (not e!899955))))

(declare-fun isEmpty!8765 (List!14445) Bool)

(assert (=> d!402852 (= res!638450 (not (isEmpty!8765 (rules!10965 acc!229))))))

(assert (=> d!402852 (= (inv!18723 acc!229) e!899955)))

(declare-fun b!1409710 () Bool)

(declare-fun res!638451 () Bool)

(assert (=> b!1409710 (=> (not res!638451) (not e!899955))))

(declare-fun rulesInvariant!2054 (LexerInterface!2184 List!14445) Bool)

(assert (=> b!1409710 (= res!638451 (rulesInvariant!2054 Lexer!2182 (rules!10965 acc!229)))))

(declare-fun b!1409711 () Bool)

(declare-fun res!638452 () Bool)

(assert (=> b!1409711 (=> (not res!638452) (not e!899955))))

(declare-fun rulesProduceEachTokenIndividually!781 (LexerInterface!2184 List!14445 BalanceConc!9454) Bool)

(assert (=> b!1409711 (= res!638452 (rulesProduceEachTokenIndividually!781 Lexer!2182 (rules!10965 acc!229) (tokens!1713 acc!229)))))

(declare-fun b!1409712 () Bool)

(declare-fun separableTokens!166 (LexerInterface!2184 BalanceConc!9454 List!14445) Bool)

(assert (=> b!1409712 (= e!899955 (separableTokens!166 Lexer!2182 (tokens!1713 acc!229) (rules!10965 acc!229)))))

(assert (= (and d!402852 res!638450) b!1409710))

(assert (= (and b!1409710 res!638451) b!1409711))

(assert (= (and b!1409711 res!638452) b!1409712))

(declare-fun m!1588515 () Bool)

(assert (=> d!402852 m!1588515))

(declare-fun m!1588517 () Bool)

(assert (=> b!1409710 m!1588517))

(declare-fun m!1588519 () Bool)

(assert (=> b!1409711 m!1588519))

(declare-fun m!1588521 () Bool)

(assert (=> b!1409712 m!1588521))

(assert (=> start!128758 d!402852))

(declare-fun d!402854 () Bool)

(declare-fun res!638453 () Bool)

(declare-fun e!899956 () Bool)

(assert (=> d!402854 (=> (not res!638453) (not e!899956))))

(assert (=> d!402854 (= res!638453 (not (isEmpty!8765 (rules!10965 sep!3))))))

(assert (=> d!402854 (= (inv!18723 sep!3) e!899956)))

(declare-fun b!1409713 () Bool)

(declare-fun res!638454 () Bool)

(assert (=> b!1409713 (=> (not res!638454) (not e!899956))))

(assert (=> b!1409713 (= res!638454 (rulesInvariant!2054 Lexer!2182 (rules!10965 sep!3)))))

(declare-fun b!1409714 () Bool)

(declare-fun res!638455 () Bool)

(assert (=> b!1409714 (=> (not res!638455) (not e!899956))))

(assert (=> b!1409714 (= res!638455 (rulesProduceEachTokenIndividually!781 Lexer!2182 (rules!10965 sep!3) (tokens!1713 sep!3)))))

(declare-fun b!1409715 () Bool)

(assert (=> b!1409715 (= e!899956 (separableTokens!166 Lexer!2182 (tokens!1713 sep!3) (rules!10965 sep!3)))))

(assert (= (and d!402854 res!638453) b!1409713))

(assert (= (and b!1409713 res!638454) b!1409714))

(assert (= (and b!1409714 res!638455) b!1409715))

(declare-fun m!1588523 () Bool)

(assert (=> d!402854 m!1588523))

(declare-fun m!1588525 () Bool)

(assert (=> b!1409713 m!1588525))

(declare-fun m!1588527 () Bool)

(assert (=> b!1409714 m!1588527))

(declare-fun m!1588529 () Bool)

(assert (=> b!1409715 m!1588529))

(assert (=> start!128758 d!402854))

(declare-fun d!402856 () Bool)

(declare-fun lt!470711 () Bool)

(assert (=> d!402856 (= lt!470711 (forall!3498 (list!5624 (tail!2045 objs!24)) lambda!62336))))

(assert (=> d!402856 (= lt!470711 (forall!3499 (c!231628 (tail!2045 objs!24)) lambda!62336))))

(assert (=> d!402856 (= (forall!3496 (tail!2045 objs!24) lambda!62336) lt!470711)))

(declare-fun bs!338829 () Bool)

(assert (= bs!338829 d!402856))

(assert (=> bs!338829 m!1588247))

(declare-fun m!1588531 () Bool)

(assert (=> bs!338829 m!1588531))

(assert (=> bs!338829 m!1588531))

(declare-fun m!1588533 () Bool)

(assert (=> bs!338829 m!1588533))

(declare-fun m!1588535 () Bool)

(assert (=> bs!338829 m!1588535))

(assert (=> b!1409574 d!402856))

(declare-fun d!402858 () Bool)

(declare-fun e!899959 () Bool)

(assert (=> d!402858 e!899959))

(declare-fun res!638458 () Bool)

(assert (=> d!402858 (=> (not res!638458) (not e!899959))))

(declare-fun tail!2047 (Conc!4758) Conc!4758)

(assert (=> d!402858 (= res!638458 (isBalanced!1402 (tail!2047 (c!231628 objs!24))))))

(declare-fun lt!470714 () BalanceConc!9456)

(assert (=> d!402858 (= lt!470714 (BalanceConc!9457 (tail!2047 (c!231628 objs!24))))))

(assert (=> d!402858 (not (isEmpty!8761 objs!24))))

(assert (=> d!402858 (= (tail!2045 objs!24) lt!470714)))

(declare-fun b!1409718 () Bool)

(declare-fun tail!2048 (List!14446) List!14446)

(assert (=> b!1409718 (= e!899959 (= (list!5624 lt!470714) (tail!2048 (list!5624 objs!24))))))

(assert (= (and d!402858 res!638458) b!1409718))

(declare-fun m!1588537 () Bool)

(assert (=> d!402858 m!1588537))

(assert (=> d!402858 m!1588537))

(declare-fun m!1588539 () Bool)

(assert (=> d!402858 m!1588539))

(assert (=> d!402858 m!1588259))

(declare-fun m!1588541 () Bool)

(assert (=> b!1409718 m!1588541))

(assert (=> b!1409718 m!1588493))

(assert (=> b!1409718 m!1588493))

(declare-fun m!1588543 () Bool)

(assert (=> b!1409718 m!1588543))

(assert (=> b!1409574 d!402858))

(declare-fun d!402860 () Bool)

(declare-datatypes ((JsonLexer!372 0))(
  ( (JsonLexer!373) )
))
(declare-fun rules!109 (JsonLexer!372) List!14445)

(assert (=> d!402860 (= (usesJsonRules!0 acc!229) (= (rules!10965 acc!229) (rules!109 JsonLexer!373)))))

(declare-fun bs!338830 () Bool)

(assert (= bs!338830 d!402860))

(declare-fun m!1588545 () Bool)

(assert (=> bs!338830 m!1588545))

(assert (=> b!1409573 d!402860))

(declare-fun d!402862 () Bool)

(assert (=> d!402862 (= (inv!18724 (tokens!1713 sep!3)) (isBalanced!1401 (c!231627 (tokens!1713 sep!3))))))

(declare-fun bs!338831 () Bool)

(assert (= bs!338831 d!402862))

(declare-fun m!1588547 () Bool)

(assert (=> bs!338831 m!1588547))

(assert (=> b!1409570 d!402862))

(declare-fun d!402864 () Bool)

(declare-fun lt!470717 () Bool)

(declare-fun isEmpty!8768 (List!14446) Bool)

(assert (=> d!402864 (= lt!470717 (isEmpty!8768 (list!5624 objs!24)))))

(declare-fun isEmpty!8769 (Conc!4758) Bool)

(assert (=> d!402864 (= lt!470717 (isEmpty!8769 (c!231628 objs!24)))))

(assert (=> d!402864 (= (isEmpty!8761 objs!24) lt!470717)))

(declare-fun bs!338832 () Bool)

(assert (= bs!338832 d!402864))

(assert (=> bs!338832 m!1588493))

(assert (=> bs!338832 m!1588493))

(declare-fun m!1588549 () Bool)

(assert (=> bs!338832 m!1588549))

(declare-fun m!1588551 () Bool)

(assert (=> bs!338832 m!1588551))

(assert (=> b!1409569 d!402864))

(declare-fun d!402866 () Bool)

(assert (=> d!402866 (= (usesJsonRules!0 sep!3) (= (rules!10965 sep!3) (rules!109 JsonLexer!373)))))

(declare-fun bs!338833 () Bool)

(assert (= bs!338833 d!402866))

(assert (=> bs!338833 m!1588545))

(assert (=> b!1409571 d!402866))

(declare-fun d!402868 () Bool)

(declare-fun c!231670 () Bool)

(assert (=> d!402868 (= c!231670 (is-Node!4758 (c!231628 objs!24)))))

(declare-fun e!899964 () Bool)

(assert (=> d!402868 (= (inv!18721 (c!231628 objs!24)) e!899964)))

(declare-fun b!1409725 () Bool)

(declare-fun inv!18732 (Conc!4758) Bool)

(assert (=> b!1409725 (= e!899964 (inv!18732 (c!231628 objs!24)))))

(declare-fun b!1409726 () Bool)

(declare-fun e!899965 () Bool)

(assert (=> b!1409726 (= e!899964 e!899965)))

(declare-fun res!638461 () Bool)

(assert (=> b!1409726 (= res!638461 (not (is-Leaf!7202 (c!231628 objs!24))))))

(assert (=> b!1409726 (=> res!638461 e!899965)))

(declare-fun b!1409727 () Bool)

(declare-fun inv!18733 (Conc!4758) Bool)

(assert (=> b!1409727 (= e!899965 (inv!18733 (c!231628 objs!24)))))

(assert (= (and d!402868 c!231670) b!1409725))

(assert (= (and d!402868 (not c!231670)) b!1409726))

(assert (= (and b!1409726 (not res!638461)) b!1409727))

(declare-fun m!1588553 () Bool)

(assert (=> b!1409725 m!1588553))

(declare-fun m!1588555 () Bool)

(assert (=> b!1409727 m!1588555))

(assert (=> b!1409567 d!402868))

(declare-fun d!402870 () Bool)

(declare-fun c!231671 () Bool)

(assert (=> d!402870 (= c!231671 (is-Node!4757 (c!231627 (tokens!1713 sep!3))))))

(declare-fun e!899966 () Bool)

(assert (=> d!402870 (= (inv!18720 (c!231627 (tokens!1713 sep!3))) e!899966)))

(declare-fun b!1409728 () Bool)

(assert (=> b!1409728 (= e!899966 (inv!18730 (c!231627 (tokens!1713 sep!3))))))

(declare-fun b!1409729 () Bool)

(declare-fun e!899967 () Bool)

(assert (=> b!1409729 (= e!899966 e!899967)))

(declare-fun res!638462 () Bool)

(assert (=> b!1409729 (= res!638462 (not (is-Leaf!7201 (c!231627 (tokens!1713 sep!3)))))))

(assert (=> b!1409729 (=> res!638462 e!899967)))

(declare-fun b!1409730 () Bool)

(assert (=> b!1409730 (= e!899967 (inv!18731 (c!231627 (tokens!1713 sep!3))))))

(assert (= (and d!402870 c!231671) b!1409728))

(assert (= (and d!402870 (not c!231671)) b!1409729))

(assert (= (and b!1409729 (not res!638462)) b!1409730))

(declare-fun m!1588557 () Bool)

(assert (=> b!1409728 m!1588557))

(declare-fun m!1588559 () Bool)

(assert (=> b!1409730 m!1588559))

(assert (=> b!1409568 d!402870))

(declare-fun b!1409741 () Bool)

(declare-fun b_free!34527 () Bool)

(declare-fun b_next!35231 () Bool)

(assert (=> b!1409741 (= b_free!34527 (not b_next!35231))))

(declare-fun tp!400269 () Bool)

(declare-fun b_and!94447 () Bool)

(assert (=> b!1409741 (= tp!400269 b_and!94447)))

(declare-fun b_free!34529 () Bool)

(declare-fun b_next!35233 () Bool)

(assert (=> b!1409741 (= b_free!34529 (not b_next!35233))))

(declare-fun tp!400268 () Bool)

(declare-fun b_and!94449 () Bool)

(assert (=> b!1409741 (= tp!400268 b_and!94449)))

(declare-fun e!899979 () Bool)

(assert (=> b!1409741 (= e!899979 (and tp!400269 tp!400268))))

(declare-fun b!1409740 () Bool)

(declare-fun e!899977 () Bool)

(declare-fun inv!18717 (String!17158) Bool)

(declare-fun inv!18734 (TokenValueInjection!4828) Bool)

(assert (=> b!1409740 (= e!899977 (and (inv!18717 (tag!2756 (h!19780 (rules!10965 sep!3)))) (inv!18734 (transformation!2494 (h!19780 (rules!10965 sep!3)))) e!899979))))

(declare-fun b!1409739 () Bool)

(declare-fun e!899978 () Bool)

(declare-fun tp!400267 () Bool)

(assert (=> b!1409739 (= e!899978 (and e!899977 tp!400267))))

(assert (=> b!1409570 (= tp!400241 e!899978)))

(assert (= b!1409740 b!1409741))

(assert (= b!1409739 b!1409740))

(assert (= (and b!1409570 (is-Cons!14379 (rules!10965 sep!3))) b!1409739))

(declare-fun m!1588561 () Bool)

(assert (=> b!1409740 m!1588561))

(declare-fun m!1588563 () Bool)

(assert (=> b!1409740 m!1588563))

(declare-fun b!1409750 () Bool)

(declare-fun e!899985 () Bool)

(declare-fun tp!400278 () Bool)

(declare-fun tp!400277 () Bool)

(assert (=> b!1409750 (= e!899985 (and (inv!18720 (left!12278 (c!231627 (tokens!1713 acc!229)))) tp!400278 (inv!18720 (right!12608 (c!231627 (tokens!1713 acc!229)))) tp!400277))))

(declare-fun b!1409752 () Bool)

(declare-fun e!899984 () Bool)

(declare-fun tp!400276 () Bool)

(assert (=> b!1409752 (= e!899984 tp!400276)))

(declare-fun b!1409751 () Bool)

(declare-fun inv!18738 (IArray!9519) Bool)

(assert (=> b!1409751 (= e!899985 (and (inv!18738 (xs!7484 (c!231627 (tokens!1713 acc!229)))) e!899984))))

(assert (=> b!1409566 (= tp!400245 (and (inv!18720 (c!231627 (tokens!1713 acc!229))) e!899985))))

(assert (= (and b!1409566 (is-Node!4757 (c!231627 (tokens!1713 acc!229)))) b!1409750))

(assert (= b!1409751 b!1409752))

(assert (= (and b!1409566 (is-Leaf!7201 (c!231627 (tokens!1713 acc!229)))) b!1409751))

(declare-fun m!1588565 () Bool)

(assert (=> b!1409750 m!1588565))

(declare-fun m!1588567 () Bool)

(assert (=> b!1409750 m!1588567))

(declare-fun m!1588569 () Bool)

(assert (=> b!1409751 m!1588569))

(assert (=> b!1409566 m!1588265))

(declare-fun tp!400287 () Bool)

(declare-fun e!899990 () Bool)

(declare-fun b!1409761 () Bool)

(declare-fun tp!400286 () Bool)

(assert (=> b!1409761 (= e!899990 (and (inv!18721 (left!12279 (c!231628 objs!24))) tp!400286 (inv!18721 (right!12609 (c!231628 objs!24))) tp!400287))))

(declare-fun b!1409763 () Bool)

(declare-fun e!899991 () Bool)

(declare-fun tp!400285 () Bool)

(assert (=> b!1409763 (= e!899991 tp!400285)))

(declare-fun b!1409762 () Bool)

(declare-fun inv!18740 (IArray!9521) Bool)

(assert (=> b!1409762 (= e!899990 (and (inv!18740 (xs!7485 (c!231628 objs!24))) e!899991))))

(assert (=> b!1409567 (= tp!400242 (and (inv!18721 (c!231628 objs!24)) e!899990))))

(assert (= (and b!1409567 (is-Node!4758 (c!231628 objs!24))) b!1409761))

(assert (= b!1409762 b!1409763))

(assert (= (and b!1409567 (is-Leaf!7202 (c!231628 objs!24))) b!1409762))

(declare-fun m!1588571 () Bool)

(assert (=> b!1409761 m!1588571))

(declare-fun m!1588573 () Bool)

(assert (=> b!1409761 m!1588573))

(declare-fun m!1588575 () Bool)

(assert (=> b!1409762 m!1588575))

(assert (=> b!1409567 m!1588263))

(declare-fun b!1409766 () Bool)

(declare-fun b_free!34531 () Bool)

(declare-fun b_next!35235 () Bool)

(assert (=> b!1409766 (= b_free!34531 (not b_next!35235))))

(declare-fun tp!400290 () Bool)

(declare-fun b_and!94451 () Bool)

(assert (=> b!1409766 (= tp!400290 b_and!94451)))

(declare-fun b_free!34533 () Bool)

(declare-fun b_next!35237 () Bool)

(assert (=> b!1409766 (= b_free!34533 (not b_next!35237))))

(declare-fun tp!400289 () Bool)

(declare-fun b_and!94453 () Bool)

(assert (=> b!1409766 (= tp!400289 b_and!94453)))

(declare-fun e!899995 () Bool)

(assert (=> b!1409766 (= e!899995 (and tp!400290 tp!400289))))

(declare-fun b!1409765 () Bool)

(declare-fun e!899993 () Bool)

(assert (=> b!1409765 (= e!899993 (and (inv!18717 (tag!2756 (h!19780 (rules!10965 acc!229)))) (inv!18734 (transformation!2494 (h!19780 (rules!10965 acc!229)))) e!899995))))

(declare-fun b!1409764 () Bool)

(declare-fun e!899994 () Bool)

(declare-fun tp!400288 () Bool)

(assert (=> b!1409764 (= e!899994 (and e!899993 tp!400288))))

(assert (=> b!1409572 (= tp!400244 e!899994)))

(assert (= b!1409765 b!1409766))

(assert (= b!1409764 b!1409765))

(assert (= (and b!1409572 (is-Cons!14379 (rules!10965 acc!229))) b!1409764))

(declare-fun m!1588577 () Bool)

(assert (=> b!1409765 m!1588577))

(declare-fun m!1588579 () Bool)

(assert (=> b!1409765 m!1588579))

(declare-fun b!1409767 () Bool)

(declare-fun tp!400292 () Bool)

(declare-fun tp!400293 () Bool)

(declare-fun e!899997 () Bool)

(assert (=> b!1409767 (= e!899997 (and (inv!18720 (left!12278 (c!231627 (tokens!1713 sep!3)))) tp!400293 (inv!18720 (right!12608 (c!231627 (tokens!1713 sep!3)))) tp!400292))))

(declare-fun b!1409769 () Bool)

(declare-fun e!899996 () Bool)

(declare-fun tp!400291 () Bool)

(assert (=> b!1409769 (= e!899996 tp!400291)))

(declare-fun b!1409768 () Bool)

(assert (=> b!1409768 (= e!899997 (and (inv!18738 (xs!7484 (c!231627 (tokens!1713 sep!3)))) e!899996))))

(assert (=> b!1409568 (= tp!400243 (and (inv!18720 (c!231627 (tokens!1713 sep!3))) e!899997))))

(assert (= (and b!1409568 (is-Node!4757 (c!231627 (tokens!1713 sep!3)))) b!1409767))

(assert (= b!1409768 b!1409769))

(assert (= (and b!1409568 (is-Leaf!7201 (c!231627 (tokens!1713 sep!3)))) b!1409768))

(declare-fun m!1588581 () Bool)

(assert (=> b!1409767 m!1588581))

(declare-fun m!1588583 () Bool)

(assert (=> b!1409767 m!1588583))

(declare-fun m!1588585 () Bool)

(assert (=> b!1409768 m!1588585))

(assert (=> b!1409568 m!1588269))

(push 1)

(assert (not d!402856))

(assert (not b!1409701))

(assert (not b_next!35237))

(assert (not b!1409710))

(assert (not b_next!35233))

(assert (not d!402840))

(assert (not b!1409764))

(assert (not bm!93961))

(assert (not bm!93947))

(assert (not bm!93943))

(assert (not bm!93965))

(assert (not b!1409685))

(assert (not bm!93933))

(assert (not b!1409725))

(assert (not b!1409686))

(assert (not d!402850))

(assert (not b!1409739))

(assert (not b!1409566))

(assert b_and!94447)

(assert (not b!1409750))

(assert (not b!1409769))

(assert (not d!402864))

(assert (not d!402844))

(assert (not b!1409730))

(assert (not bm!93948))

(assert (not b!1409751))

(assert (not b!1409689))

(assert (not d!402846))

(assert (not b!1409715))

(assert (not d!402866))

(assert (not bm!93950))

(assert (not d!402806))

(assert (not bm!93963))

(assert (not d!402854))

(assert (not bm!93945))

(assert (not bm!93964))

(assert (not d!402860))

(assert (not b_next!35231))

(assert (not b!1409568))

(assert (not b!1409728))

(assert (not b!1409761))

(assert (not bm!93969))

(assert (not bm!93957))

(assert (not bm!93931))

(assert (not b!1409762))

(assert (not b!1409692))

(assert (not b!1409703))

(assert (not bm!93935))

(assert (not b!1409679))

(assert (not d!402852))

(assert (not b!1409765))

(assert (not bm!93968))

(assert (not b!1409752))

(assert (not b!1409740))

(assert (not b!1409714))

(assert (not bm!93955))

(assert (not b!1409678))

(assert (not bm!93940))

(assert (not bm!93946))

(assert (not b!1409711))

(assert (not b!1409694))

(assert (not d!402862))

(assert (not bm!93949))

(assert (not bm!93932))

(assert (not b!1409763))

(assert (not b_next!35235))

(assert (not b!1409567))

(assert (not bm!93967))

(assert (not d!402858))

(assert (not b!1409727))

(assert (not bm!93958))

(assert b_and!94453)

(assert b_and!94449)

(assert (not b!1409718))

(assert (not b!1409713))

(assert (not d!402848))

(assert (not b!1409768))

(assert (not b!1409767))

(assert b_and!94451)

(assert (not b!1409712))

(check-sat)

(pop 1)

(push 1)

(assert b_and!94447)

(assert (not b_next!35237))

(assert (not b_next!35231))

(assert (not b_next!35233))

(assert (not b_next!35235))

(assert b_and!94451)

(assert b_and!94453)

(assert b_and!94449)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!402874 () Bool)

(assert (=> d!402874 (= (isEmpty!8763 lt!470679) (not (is-Some!2752 lt!470679)))))

(assert (=> d!402806 d!402874))

(declare-fun d!402876 () Bool)

(declare-fun lt!470915 () Bool)

(declare-fun isEmpty!8773 (List!14444) Bool)

(assert (=> d!402876 (= lt!470915 (isEmpty!8773 (list!5622 (tokens!1713 (head!2638 objs!24)))))))

(declare-fun isEmpty!8774 (Conc!4757) Bool)

(assert (=> d!402876 (= lt!470915 (isEmpty!8774 (c!231627 (tokens!1713 (head!2638 objs!24)))))))

(assert (=> d!402876 (= (isEmpty!8764 (tokens!1713 (head!2638 objs!24))) lt!470915)))

(declare-fun bs!338835 () Bool)

(assert (= bs!338835 d!402876))

(assert (=> bs!338835 m!1588471))

(assert (=> bs!338835 m!1588471))

(declare-fun m!1588731 () Bool)

(assert (=> bs!338835 m!1588731))

(declare-fun m!1588733 () Bool)

(assert (=> bs!338835 m!1588733))

(assert (=> d!402806 d!402876))

(declare-fun d!402878 () Bool)

(declare-fun e!900060 () Bool)

(assert (=> d!402878 e!900060))

(declare-fun res!638487 () Bool)

(assert (=> d!402878 (=> (not res!638487) (not e!900060))))

(assert (=> d!402878 (= res!638487 (rulesInvariant!2054 Lexer!2182 (rules!10965 acc!229)))))

(declare-fun Unit!20781 () Unit!20751)

(assert (=> d!402878 (= (lemmaInvariant!217 acc!229) Unit!20781)))

(declare-fun b!1409870 () Bool)

(declare-fun res!638488 () Bool)

(assert (=> b!1409870 (=> (not res!638488) (not e!900060))))

(assert (=> b!1409870 (= res!638488 (rulesProduceEachTokenIndividually!781 Lexer!2182 (rules!10965 acc!229) (tokens!1713 acc!229)))))

(declare-fun b!1409871 () Bool)

(assert (=> b!1409871 (= e!900060 (separableTokens!166 Lexer!2182 (tokens!1713 acc!229) (rules!10965 acc!229)))))

(assert (= (and d!402878 res!638487) b!1409870))

(assert (= (and b!1409870 res!638488) b!1409871))

(assert (=> d!402878 m!1588517))

(assert (=> b!1409870 m!1588519))

(assert (=> b!1409871 m!1588521))

(assert (=> d!402806 d!402878))

(declare-fun d!402884 () Bool)

(declare-fun e!900061 () Bool)

(assert (=> d!402884 e!900061))

(declare-fun res!638489 () Bool)

(assert (=> d!402884 (=> (not res!638489) (not e!900061))))

(assert (=> d!402884 (= res!638489 (rulesInvariant!2054 Lexer!2182 (rules!10965 (head!2638 objs!24))))))

(declare-fun Unit!20782 () Unit!20751)

(assert (=> d!402884 (= (lemmaInvariant!217 (head!2638 objs!24)) Unit!20782)))

(declare-fun b!1409872 () Bool)

(declare-fun res!638490 () Bool)

(assert (=> b!1409872 (=> (not res!638490) (not e!900061))))

(assert (=> b!1409872 (= res!638490 (rulesProduceEachTokenIndividually!781 Lexer!2182 (rules!10965 (head!2638 objs!24)) (tokens!1713 (head!2638 objs!24))))))

(declare-fun b!1409873 () Bool)

(assert (=> b!1409873 (= e!900061 (separableTokens!166 Lexer!2182 (tokens!1713 (head!2638 objs!24)) (rules!10965 (head!2638 objs!24))))))

(assert (= (and d!402884 res!638489) b!1409872))

(assert (= (and b!1409872 res!638490) b!1409873))

(declare-fun m!1588739 () Bool)

(assert (=> d!402884 m!1588739))

(declare-fun m!1588741 () Bool)

(assert (=> b!1409872 m!1588741))

(declare-fun m!1588743 () Bool)

(assert (=> b!1409873 m!1588743))

(assert (=> d!402806 d!402884))

(declare-fun lt!470918 () List!14444)

(declare-fun b!1409885 () Bool)

(declare-fun e!900066 () Bool)

(assert (=> b!1409885 (= e!900066 (or (not (= lt!470664 Nil!14378)) (= lt!470918 lt!470640)))))

(declare-fun b!1409883 () Bool)

(declare-fun e!900067 () List!14444)

(assert (=> b!1409883 (= e!900067 (Cons!14378 (h!19779 lt!470640) (++!3734 (t!123363 lt!470640) lt!470664)))))

(declare-fun b!1409882 () Bool)

(assert (=> b!1409882 (= e!900067 lt!470664)))

(declare-fun d!402886 () Bool)

(assert (=> d!402886 e!900066))

(declare-fun res!638496 () Bool)

(assert (=> d!402886 (=> (not res!638496) (not e!900066))))

(declare-fun content!2136 (List!14444) (Set Token!4650))

(assert (=> d!402886 (= res!638496 (= (content!2136 lt!470918) (set.union (content!2136 lt!470640) (content!2136 lt!470664))))))

(assert (=> d!402886 (= lt!470918 e!900067)))

(declare-fun c!231695 () Bool)

(assert (=> d!402886 (= c!231695 (is-Nil!14378 lt!470640))))

(assert (=> d!402886 (= (++!3734 lt!470640 lt!470664) lt!470918)))

(declare-fun b!1409884 () Bool)

(declare-fun res!638495 () Bool)

(assert (=> b!1409884 (=> (not res!638495) (not e!900066))))

(declare-fun size!11841 (List!14444) Int)

(assert (=> b!1409884 (= res!638495 (= (size!11841 lt!470918) (+ (size!11841 lt!470640) (size!11841 lt!470664))))))

(assert (= (and d!402886 c!231695) b!1409882))

(assert (= (and d!402886 (not c!231695)) b!1409883))

(assert (= (and d!402886 res!638496) b!1409884))

(assert (= (and b!1409884 res!638495) b!1409885))

(declare-fun m!1588745 () Bool)

(assert (=> b!1409883 m!1588745))

(declare-fun m!1588747 () Bool)

(assert (=> d!402886 m!1588747))

(declare-fun m!1588749 () Bool)

(assert (=> d!402886 m!1588749))

(declare-fun m!1588751 () Bool)

(assert (=> d!402886 m!1588751))

(declare-fun m!1588753 () Bool)

(assert (=> b!1409884 m!1588753))

(declare-fun m!1588755 () Bool)

(assert (=> b!1409884 m!1588755))

(declare-fun m!1588757 () Bool)

(assert (=> b!1409884 m!1588757))

(assert (=> b!1409694 d!402886))

(declare-fun d!402888 () Bool)

(declare-fun e!900090 () Bool)

(assert (=> d!402888 e!900090))

(declare-fun res!638529 () Bool)

(assert (=> d!402888 (=> (not res!638529) (not e!900090))))

(declare-datatypes ((tuple2!13976 0))(
  ( (tuple2!13977 (_1!7874 BalanceConc!9454) (_2!7874 BalanceConc!9452)) )
))
(declare-fun lex!1006 (LexerInterface!2184 List!14445 BalanceConc!9452) tuple2!13976)

(declare-fun seqFromList!1668 (List!14444) BalanceConc!9454)

(assert (=> d!402888 (= res!638529 (= (list!5622 (_1!7874 (lex!1006 Lexer!2182 (rules!10965 acc!229) (print!946 Lexer!2182 (seqFromList!1668 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))) (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))

(declare-fun lt!471077 () Unit!20751)

(declare-fun e!900091 () Unit!20751)

(assert (=> d!402888 (= lt!471077 e!900091)))

(declare-fun c!231704 () Bool)

(assert (=> d!402888 (= c!231704 (or (is-Nil!14378 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))) (is-Nil!14378 (t!123363 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))))

(assert (=> d!402888 (not (isEmpty!8765 (rules!10965 acc!229)))))

(assert (=> d!402888 (= (theoremInvertabilityWhenTokenListSeparable!15 Lexer!2182 (rules!10965 acc!229) (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))) lt!471077)))

(declare-fun b!1409934 () Bool)

(declare-fun Unit!20783 () Unit!20751)

(assert (=> b!1409934 (= e!900091 Unit!20783)))

(declare-fun b!1409935 () Bool)

(declare-fun Unit!20784 () Unit!20751)

(assert (=> b!1409935 (= e!900091 Unit!20784)))

(declare-fun lt!471076 () BalanceConc!9452)

(assert (=> b!1409935 (= lt!471076 (print!946 Lexer!2182 (seqFromList!1668 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))))))

(declare-fun lt!471060 () BalanceConc!9452)

(assert (=> b!1409935 (= lt!471060 (print!946 Lexer!2182 (seqFromList!1668 (t!123363 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))))

(declare-fun lt!471080 () tuple2!13976)

(assert (=> b!1409935 (= lt!471080 (lex!1006 Lexer!2182 (rules!10965 acc!229) lt!471060))))

(declare-fun lt!471062 () List!14443)

(assert (=> b!1409935 (= lt!471062 (list!5623 (charsOf!1460 (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))))

(declare-fun lt!471068 () List!14443)

(assert (=> b!1409935 (= lt!471068 (list!5623 lt!471060))))

(declare-fun lt!471063 () Unit!20751)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!732 (List!14443 List!14443) Unit!20751)

(assert (=> b!1409935 (= lt!471063 (lemmaConcatTwoListThenFirstIsPrefix!732 lt!471062 lt!471068))))

(declare-fun isPrefix!1165 (List!14443 List!14443) Bool)

(assert (=> b!1409935 (isPrefix!1165 lt!471062 (++!3733 lt!471062 lt!471068))))

(declare-fun lt!471057 () Unit!20751)

(assert (=> b!1409935 (= lt!471057 lt!471063)))

(declare-fun lt!471056 () Unit!20751)

(assert (=> b!1409935 (= lt!471056 (theoremInvertabilityWhenTokenListSeparable!15 Lexer!2182 (rules!10965 acc!229) (t!123363 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))))))

(declare-fun lt!471079 () Unit!20751)

(declare-fun seqFromListBHdTlConstructive!61 (Token!4650 List!14444 BalanceConc!9454) Unit!20751)

(assert (=> b!1409935 (= lt!471079 (seqFromListBHdTlConstructive!61 (h!19779 (t!123363 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))) (t!123363 (t!123363 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))) (_1!7874 lt!471080)))))

(declare-fun prepend!377 (BalanceConc!9454 Token!4650) BalanceConc!9454)

(assert (=> b!1409935 (= (list!5622 (_1!7874 lt!471080)) (list!5622 (prepend!377 (seqFromList!1668 (t!123363 (t!123363 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))) (h!19779 (t!123363 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))))))))

(declare-fun lt!471074 () Unit!20751)

(assert (=> b!1409935 (= lt!471074 lt!471079)))

(declare-datatypes ((tuple2!13978 0))(
  ( (tuple2!13979 (_1!7875 Token!4650) (_2!7875 List!14443)) )
))
(declare-datatypes ((Option!2755 0))(
  ( (None!2754) (Some!2754 (v!21768 tuple2!13978)) )
))
(declare-fun lt!471064 () Option!2755)

(declare-fun maxPrefix!1155 (LexerInterface!2184 List!14445 List!14443) Option!2755)

(assert (=> b!1409935 (= lt!471064 (maxPrefix!1155 Lexer!2182 (rules!10965 acc!229) (list!5623 lt!471076)))))

(declare-fun singletonSeq!1155 (Token!4650) BalanceConc!9454)

(assert (=> b!1409935 (= (print!946 Lexer!2182 (singletonSeq!1155 (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))) (printTailRec!627 Lexer!2182 (singletonSeq!1155 (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))) 0 (BalanceConc!9453 Empty!4756)))))

(declare-fun lt!471075 () Unit!20751)

(declare-fun Unit!20785 () Unit!20751)

(assert (=> b!1409935 (= lt!471075 Unit!20785)))

(declare-fun lt!471070 () Unit!20751)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!205 (LexerInterface!2184 List!14445 List!14443 List!14443) Unit!20751)

(assert (=> b!1409935 (= lt!471070 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!205 Lexer!2182 (rules!10965 acc!229) (list!5623 (charsOf!1460 (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))) (list!5623 lt!471060)))))

(assert (=> b!1409935 (= (list!5623 (charsOf!1460 (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))) (originalCharacters!3356 (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))))))

(declare-fun lt!471061 () Unit!20751)

(declare-fun Unit!20786 () Unit!20751)

(assert (=> b!1409935 (= lt!471061 Unit!20786)))

(declare-fun singletonSeq!1156 ((_ BitVec 16)) BalanceConc!9452)

(declare-fun apply!3686 (BalanceConc!9452 Int) (_ BitVec 16))

(declare-fun head!2646 (List!14443) (_ BitVec 16))

(assert (=> b!1409935 (= (list!5623 (singletonSeq!1156 (apply!3686 (charsOf!1460 (h!19779 (t!123363 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))) 0))) (Cons!14377 (head!2646 (originalCharacters!3356 (h!19779 (t!123363 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))))) Nil!14377))))

(declare-fun lt!471078 () Unit!20751)

(declare-fun Unit!20787 () Unit!20751)

(assert (=> b!1409935 (= lt!471078 Unit!20787)))

(assert (=> b!1409935 (= (list!5623 (singletonSeq!1156 (apply!3686 (charsOf!1460 (h!19779 (t!123363 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))) 0))) (Cons!14377 (head!2646 (list!5623 lt!471060)) Nil!14377))))

(declare-fun lt!471059 () Unit!20751)

(declare-fun Unit!20788 () Unit!20751)

(assert (=> b!1409935 (= lt!471059 Unit!20788)))

(declare-fun head!2647 (BalanceConc!9452) (_ BitVec 16))

(assert (=> b!1409935 (= (list!5623 (singletonSeq!1156 (apply!3686 (charsOf!1460 (h!19779 (t!123363 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))) 0))) (Cons!14377 (head!2647 lt!471060) Nil!14377))))

(declare-fun lt!471067 () Unit!20751)

(declare-fun Unit!20789 () Unit!20751)

(assert (=> b!1409935 (= lt!471067 Unit!20789)))

(declare-fun isDefined!2254 (Option!2755) Bool)

(assert (=> b!1409935 (isDefined!2254 (maxPrefix!1155 Lexer!2182 (rules!10965 acc!229) (originalCharacters!3356 (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))))

(declare-fun lt!471073 () Unit!20751)

(declare-fun Unit!20790 () Unit!20751)

(assert (=> b!1409935 (= lt!471073 Unit!20790)))

(assert (=> b!1409935 (isDefined!2254 (maxPrefix!1155 Lexer!2182 (rules!10965 acc!229) (list!5623 (charsOf!1460 (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))))))))

(declare-fun lt!471071 () Unit!20751)

(declare-fun Unit!20791 () Unit!20751)

(assert (=> b!1409935 (= lt!471071 Unit!20791)))

(declare-fun lt!471058 () Unit!20751)

(declare-fun Unit!20792 () Unit!20751)

(assert (=> b!1409935 (= lt!471058 Unit!20792)))

(declare-fun get!4427 (Option!2755) tuple2!13978)

(assert (=> b!1409935 (= (_1!7875 (get!4427 (maxPrefix!1155 Lexer!2182 (rules!10965 acc!229) (list!5623 (charsOf!1460 (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))))))) (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))

(declare-fun lt!471055 () Unit!20751)

(declare-fun Unit!20793 () Unit!20751)

(assert (=> b!1409935 (= lt!471055 Unit!20793)))

(declare-fun isEmpty!8775 (List!14443) Bool)

(assert (=> b!1409935 (isEmpty!8775 (_2!7875 (get!4427 (maxPrefix!1155 Lexer!2182 (rules!10965 acc!229) (list!5623 (charsOf!1460 (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))))))))))

(declare-fun lt!471065 () Unit!20751)

(declare-fun Unit!20794 () Unit!20751)

(assert (=> b!1409935 (= lt!471065 Unit!20794)))

(declare-fun matchR!1791 (Regex!3808 List!14443) Bool)

(assert (=> b!1409935 (matchR!1791 (regex!2494 (rule!4257 (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))) (list!5623 (charsOf!1460 (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))))

(declare-fun lt!471066 () Unit!20751)

(declare-fun Unit!20795 () Unit!20751)

(assert (=> b!1409935 (= lt!471066 Unit!20795)))

(assert (=> b!1409935 (= (rule!4257 (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))) (rule!4257 (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))))))

(declare-fun lt!471072 () Unit!20751)

(declare-fun Unit!20796 () Unit!20751)

(assert (=> b!1409935 (= lt!471072 Unit!20796)))

(declare-fun lt!471069 () Unit!20751)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!3 (LexerInterface!2184 List!14445 Token!4650 Rule!4788 List!14443) Unit!20751)

(assert (=> b!1409935 (= lt!471069 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!3 Lexer!2182 (rules!10965 acc!229) (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))) (rule!4257 (h!19779 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))) (list!5623 lt!471060)))))

(declare-fun b!1409936 () Bool)

(declare-fun isEmpty!8776 (BalanceConc!9452) Bool)

(assert (=> b!1409936 (= e!900090 (isEmpty!8776 (_2!7874 (lex!1006 Lexer!2182 (rules!10965 acc!229) (print!946 Lexer!2182 (seqFromList!1668 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))))))

(assert (= (and d!402888 c!231704) b!1409934))

(assert (= (and d!402888 (not c!231704)) b!1409935))

(assert (= (and d!402888 res!638529) b!1409936))

(assert (=> d!402888 m!1588417))

(declare-fun m!1588873 () Bool)

(assert (=> d!402888 m!1588873))

(assert (=> d!402888 m!1588873))

(declare-fun m!1588875 () Bool)

(assert (=> d!402888 m!1588875))

(assert (=> d!402888 m!1588515))

(declare-fun m!1588877 () Bool)

(assert (=> d!402888 m!1588877))

(assert (=> d!402888 m!1588875))

(declare-fun m!1588879 () Bool)

(assert (=> d!402888 m!1588879))

(declare-fun m!1588881 () Bool)

(assert (=> b!1409935 m!1588881))

(declare-fun m!1588883 () Bool)

(assert (=> b!1409935 m!1588883))

(declare-fun m!1588885 () Bool)

(assert (=> b!1409935 m!1588885))

(declare-fun m!1588887 () Bool)

(assert (=> b!1409935 m!1588887))

(declare-fun m!1588889 () Bool)

(assert (=> b!1409935 m!1588889))

(declare-fun m!1588891 () Bool)

(assert (=> b!1409935 m!1588891))

(declare-fun m!1588893 () Bool)

(assert (=> b!1409935 m!1588893))

(assert (=> b!1409935 m!1588883))

(assert (=> b!1409935 m!1588889))

(declare-fun m!1588895 () Bool)

(assert (=> b!1409935 m!1588895))

(assert (=> b!1409935 m!1588883))

(assert (=> b!1409935 m!1588891))

(assert (=> b!1409935 m!1588889))

(declare-fun m!1588897 () Bool)

(assert (=> b!1409935 m!1588897))

(declare-fun m!1588899 () Bool)

(assert (=> b!1409935 m!1588899))

(assert (=> b!1409935 m!1588889))

(declare-fun m!1588901 () Bool)

(assert (=> b!1409935 m!1588901))

(declare-fun m!1588903 () Bool)

(assert (=> b!1409935 m!1588903))

(declare-fun m!1588905 () Bool)

(assert (=> b!1409935 m!1588905))

(declare-fun m!1588907 () Bool)

(assert (=> b!1409935 m!1588907))

(declare-fun m!1588909 () Bool)

(assert (=> b!1409935 m!1588909))

(assert (=> b!1409935 m!1588899))

(assert (=> b!1409935 m!1588903))

(declare-fun m!1588911 () Bool)

(assert (=> b!1409935 m!1588911))

(assert (=> b!1409935 m!1588881))

(declare-fun m!1588913 () Bool)

(assert (=> b!1409935 m!1588913))

(declare-fun m!1588915 () Bool)

(assert (=> b!1409935 m!1588915))

(declare-fun m!1588917 () Bool)

(assert (=> b!1409935 m!1588917))

(declare-fun m!1588919 () Bool)

(assert (=> b!1409935 m!1588919))

(declare-fun m!1588921 () Bool)

(assert (=> b!1409935 m!1588921))

(assert (=> b!1409935 m!1588919))

(assert (=> b!1409935 m!1588417))

(assert (=> b!1409935 m!1588873))

(assert (=> b!1409935 m!1588883))

(declare-fun m!1588923 () Bool)

(assert (=> b!1409935 m!1588923))

(assert (=> b!1409935 m!1588873))

(assert (=> b!1409935 m!1588875))

(declare-fun m!1588925 () Bool)

(assert (=> b!1409935 m!1588925))

(declare-fun m!1588927 () Bool)

(assert (=> b!1409935 m!1588927))

(declare-fun m!1588929 () Bool)

(assert (=> b!1409935 m!1588929))

(assert (=> b!1409935 m!1588929))

(assert (=> b!1409935 m!1588907))

(declare-fun m!1588931 () Bool)

(assert (=> b!1409935 m!1588931))

(declare-fun m!1588933 () Bool)

(assert (=> b!1409935 m!1588933))

(assert (=> b!1409935 m!1588885))

(declare-fun m!1588935 () Bool)

(assert (=> b!1409935 m!1588935))

(declare-fun m!1588937 () Bool)

(assert (=> b!1409935 m!1588937))

(declare-fun m!1588939 () Bool)

(assert (=> b!1409935 m!1588939))

(assert (=> b!1409935 m!1588937))

(declare-fun m!1588941 () Bool)

(assert (=> b!1409935 m!1588941))

(assert (=> b!1409935 m!1588915))

(assert (=> b!1409935 m!1588911))

(declare-fun m!1588943 () Bool)

(assert (=> b!1409935 m!1588943))

(assert (=> b!1409935 m!1588891))

(declare-fun m!1588945 () Bool)

(assert (=> b!1409935 m!1588945))

(declare-fun m!1588947 () Bool)

(assert (=> b!1409935 m!1588947))

(assert (=> b!1409935 m!1588905))

(declare-fun m!1588949 () Bool)

(assert (=> b!1409935 m!1588949))

(assert (=> b!1409935 m!1588937))

(declare-fun m!1588951 () Bool)

(assert (=> b!1409935 m!1588951))

(assert (=> b!1409936 m!1588417))

(assert (=> b!1409936 m!1588873))

(assert (=> b!1409936 m!1588873))

(assert (=> b!1409936 m!1588875))

(assert (=> b!1409936 m!1588875))

(assert (=> b!1409936 m!1588879))

(declare-fun m!1588953 () Bool)

(assert (=> b!1409936 m!1588953))

(assert (=> b!1409694 d!402888))

(declare-fun d!402910 () Bool)

(assert (=> d!402910 (rulesProduceEachTokenIndividuallyList!668 lt!470653 (rules!10965 acc!229) (++!3734 lt!470640 lt!470664))))

(declare-fun lt!471104 () Unit!20751)

(declare-fun choose!8710 (LexerInterface!2184 List!14445 List!14444 List!14444) Unit!20751)

(assert (=> d!402910 (= lt!471104 (choose!8710 lt!470653 (rules!10965 acc!229) lt!470640 lt!470664))))

(assert (=> d!402910 (not (isEmpty!8765 (rules!10965 acc!229)))))

(assert (=> d!402910 (= (lemmaRulesProduceEachTokenIndividuallyConcat!10 lt!470653 (rules!10965 acc!229) lt!470640 lt!470664) lt!471104)))

(declare-fun bs!338841 () Bool)

(assert (= bs!338841 d!402910))

(assert (=> bs!338841 m!1588427))

(assert (=> bs!338841 m!1588427))

(assert (=> bs!338841 m!1588433))

(declare-fun m!1589001 () Bool)

(assert (=> bs!338841 m!1589001))

(assert (=> bs!338841 m!1588515))

(assert (=> b!1409694 d!402910))

(declare-fun d!402918 () Bool)

(declare-fun lt!471107 () BalanceConc!9452)

(assert (=> d!402918 (= (list!5623 lt!471107) (printList!645 Lexer!2182 (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))

(assert (=> d!402918 (= lt!471107 (printTailRec!627 Lexer!2182 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))) 0 (BalanceConc!9453 Empty!4756)))))

(assert (=> d!402918 (= (print!946 Lexer!2182 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))) lt!471107)))

(declare-fun bs!338842 () Bool)

(assert (= bs!338842 d!402918))

(declare-fun m!1589003 () Bool)

(assert (=> bs!338842 m!1589003))

(assert (=> bs!338842 m!1588423))

(assert (=> bs!338842 m!1588417))

(assert (=> bs!338842 m!1588417))

(declare-fun m!1589005 () Bool)

(assert (=> bs!338842 m!1589005))

(assert (=> bs!338842 m!1588423))

(declare-fun m!1589007 () Bool)

(assert (=> bs!338842 m!1589007))

(assert (=> b!1409694 d!402918))

(declare-fun d!402920 () Bool)

(declare-fun res!638546 () Bool)

(declare-fun e!900116 () Bool)

(assert (=> d!402920 (=> res!638546 e!900116)))

(assert (=> d!402920 (= res!638546 (or (not (is-Cons!14378 (++!3734 lt!470640 lt!470664))) (not (is-Cons!14378 (t!123363 (++!3734 lt!470640 lt!470664))))))))

(assert (=> d!402920 (= (tokensListTwoByTwoPredicateSeparableList!189 lt!470653 (++!3734 lt!470640 lt!470664) (rules!10965 acc!229)) e!900116)))

(declare-fun b!1409968 () Bool)

(declare-fun e!900115 () Bool)

(assert (=> b!1409968 (= e!900116 e!900115)))

(declare-fun res!638545 () Bool)

(assert (=> b!1409968 (=> (not res!638545) (not e!900115))))

(assert (=> b!1409968 (= res!638545 (separableTokensPredicate!466 lt!470653 (h!19779 (++!3734 lt!470640 lt!470664)) (h!19779 (t!123363 (++!3734 lt!470640 lt!470664))) (rules!10965 acc!229)))))

(declare-fun lt!471130 () Unit!20751)

(declare-fun Unit!20797 () Unit!20751)

(assert (=> b!1409968 (= lt!471130 Unit!20797)))

(declare-fun size!11842 (BalanceConc!9452) Int)

(assert (=> b!1409968 (> (size!11842 (charsOf!1460 (h!19779 (t!123363 (++!3734 lt!470640 lt!470664))))) 0)))

(declare-fun lt!471128 () Unit!20751)

(declare-fun Unit!20798 () Unit!20751)

(assert (=> b!1409968 (= lt!471128 Unit!20798)))

(assert (=> b!1409968 (rulesProduceIndividualToken!1152 lt!470653 (rules!10965 acc!229) (h!19779 (t!123363 (++!3734 lt!470640 lt!470664))))))

(declare-fun lt!471133 () Unit!20751)

(declare-fun Unit!20799 () Unit!20751)

(assert (=> b!1409968 (= lt!471133 Unit!20799)))

(assert (=> b!1409968 (rulesProduceIndividualToken!1152 lt!470653 (rules!10965 acc!229) (h!19779 (++!3734 lt!470640 lt!470664)))))

(declare-fun lt!471129 () Unit!20751)

(declare-fun lt!471132 () Unit!20751)

(assert (=> b!1409968 (= lt!471129 lt!471132)))

(assert (=> b!1409968 (rulesProduceIndividualToken!1152 lt!470653 (rules!10965 acc!229) (h!19779 (t!123363 (++!3734 lt!470640 lt!470664))))))

(assert (=> b!1409968 (= lt!471132 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!337 lt!470653 (rules!10965 acc!229) (++!3734 lt!470640 lt!470664) (h!19779 (t!123363 (++!3734 lt!470640 lt!470664)))))))

(declare-fun lt!471131 () Unit!20751)

(declare-fun lt!471134 () Unit!20751)

(assert (=> b!1409968 (= lt!471131 lt!471134)))

(assert (=> b!1409968 (rulesProduceIndividualToken!1152 lt!470653 (rules!10965 acc!229) (h!19779 (++!3734 lt!470640 lt!470664)))))

(assert (=> b!1409968 (= lt!471134 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!337 lt!470653 (rules!10965 acc!229) (++!3734 lt!470640 lt!470664) (h!19779 (++!3734 lt!470640 lt!470664))))))

(declare-fun b!1409969 () Bool)

(assert (=> b!1409969 (= e!900115 (tokensListTwoByTwoPredicateSeparableList!189 lt!470653 (Cons!14378 (h!19779 (t!123363 (++!3734 lt!470640 lt!470664))) (t!123363 (t!123363 (++!3734 lt!470640 lt!470664)))) (rules!10965 acc!229)))))

(assert (= (and d!402920 (not res!638546)) b!1409968))

(assert (= (and b!1409968 res!638545) b!1409969))

(declare-fun m!1589033 () Bool)

(assert (=> b!1409968 m!1589033))

(declare-fun m!1589035 () Bool)

(assert (=> b!1409968 m!1589035))

(declare-fun m!1589037 () Bool)

(assert (=> b!1409968 m!1589037))

(declare-fun m!1589039 () Bool)

(assert (=> b!1409968 m!1589039))

(assert (=> b!1409968 m!1588427))

(declare-fun m!1589041 () Bool)

(assert (=> b!1409968 m!1589041))

(assert (=> b!1409968 m!1589039))

(declare-fun m!1589043 () Bool)

(assert (=> b!1409968 m!1589043))

(assert (=> b!1409968 m!1588427))

(declare-fun m!1589045 () Bool)

(assert (=> b!1409968 m!1589045))

(declare-fun m!1589047 () Bool)

(assert (=> b!1409969 m!1589047))

(assert (=> b!1409694 d!402920))

(declare-fun lt!471137 () BalanceConc!9454)

(declare-fun b!1409981 () Bool)

(declare-fun e!900119 () Bool)

(assert (=> b!1409981 (= e!900119 (= (list!5622 lt!471137) (++!3734 (list!5622 (tokens!1713 acc!229)) (list!5622 (tokens!1713 (head!2638 objs!24))))))))

(declare-fun b!1409978 () Bool)

(declare-fun res!638557 () Bool)

(assert (=> b!1409978 (=> (not res!638557) (not e!900119))))

(declare-fun ++!3739 (Conc!4757 Conc!4757) Conc!4757)

(assert (=> b!1409978 (= res!638557 (isBalanced!1401 (++!3739 (c!231627 (tokens!1713 acc!229)) (c!231627 (tokens!1713 (head!2638 objs!24))))))))

(declare-fun b!1409979 () Bool)

(declare-fun res!638555 () Bool)

(assert (=> b!1409979 (=> (not res!638555) (not e!900119))))

(declare-fun height!688 (Conc!4757) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1409979 (= res!638555 (<= (height!688 (++!3739 (c!231627 (tokens!1713 acc!229)) (c!231627 (tokens!1713 (head!2638 objs!24))))) (+ (max!0 (height!688 (c!231627 (tokens!1713 acc!229))) (height!688 (c!231627 (tokens!1713 (head!2638 objs!24))))) 1)))))

(declare-fun d!402932 () Bool)

(assert (=> d!402932 e!900119))

(declare-fun res!638558 () Bool)

(assert (=> d!402932 (=> (not res!638558) (not e!900119))))

(declare-fun appendAssocInst!292 (Conc!4757 Conc!4757) Bool)

(assert (=> d!402932 (= res!638558 (appendAssocInst!292 (c!231627 (tokens!1713 acc!229)) (c!231627 (tokens!1713 (head!2638 objs!24)))))))

(assert (=> d!402932 (= lt!471137 (BalanceConc!9455 (++!3739 (c!231627 (tokens!1713 acc!229)) (c!231627 (tokens!1713 (head!2638 objs!24))))))))

(assert (=> d!402932 (= (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))) lt!471137)))

(declare-fun b!1409980 () Bool)

(declare-fun res!638556 () Bool)

(assert (=> b!1409980 (=> (not res!638556) (not e!900119))))

(assert (=> b!1409980 (= res!638556 (>= (height!688 (++!3739 (c!231627 (tokens!1713 acc!229)) (c!231627 (tokens!1713 (head!2638 objs!24))))) (max!0 (height!688 (c!231627 (tokens!1713 acc!229))) (height!688 (c!231627 (tokens!1713 (head!2638 objs!24)))))))))

(assert (= (and d!402932 res!638558) b!1409978))

(assert (= (and b!1409978 res!638557) b!1409979))

(assert (= (and b!1409979 res!638555) b!1409980))

(assert (= (and b!1409980 res!638556) b!1409981))

(declare-fun m!1589049 () Bool)

(assert (=> b!1409981 m!1589049))

(assert (=> b!1409981 m!1588473))

(assert (=> b!1409981 m!1588471))

(assert (=> b!1409981 m!1588473))

(assert (=> b!1409981 m!1588471))

(assert (=> b!1409981 m!1588475))

(declare-fun m!1589051 () Bool)

(assert (=> b!1409979 m!1589051))

(declare-fun m!1589053 () Bool)

(assert (=> b!1409979 m!1589053))

(assert (=> b!1409979 m!1589051))

(declare-fun m!1589055 () Bool)

(assert (=> b!1409979 m!1589055))

(assert (=> b!1409979 m!1589053))

(declare-fun m!1589057 () Bool)

(assert (=> b!1409979 m!1589057))

(declare-fun m!1589059 () Bool)

(assert (=> b!1409979 m!1589059))

(assert (=> b!1409979 m!1589057))

(declare-fun m!1589061 () Bool)

(assert (=> d!402932 m!1589061))

(assert (=> d!402932 m!1589051))

(assert (=> b!1409980 m!1589051))

(assert (=> b!1409980 m!1589053))

(assert (=> b!1409980 m!1589051))

(assert (=> b!1409980 m!1589055))

(assert (=> b!1409980 m!1589053))

(assert (=> b!1409980 m!1589057))

(assert (=> b!1409980 m!1589059))

(assert (=> b!1409980 m!1589057))

(assert (=> b!1409978 m!1589051))

(assert (=> b!1409978 m!1589051))

(declare-fun m!1589063 () Bool)

(assert (=> b!1409978 m!1589063))

(assert (=> b!1409694 d!402932))

(declare-fun b!1410008 () Bool)

(declare-fun res!638570 () Bool)

(declare-fun e!900134 () Bool)

(assert (=> b!1410008 (=> (not res!638570) (not e!900134))))

(assert (=> b!1410008 (= res!638570 (rulesProduceEachTokenIndividuallyList!668 lt!470653 (rules!10965 acc!229) lt!470664))))

(declare-fun d!402934 () Bool)

(assert (=> d!402934 e!900134))

(declare-fun res!638573 () Bool)

(assert (=> d!402934 (=> (not res!638573) (not e!900134))))

(assert (=> d!402934 (= res!638573 (is-Lexer!2182 lt!470653))))

(declare-fun lt!471151 () Unit!20751)

(declare-fun choose!8711 (LexerInterface!2184 List!14444 List!14444 List!14445) Unit!20751)

(assert (=> d!402934 (= lt!471151 (choose!8711 lt!470653 lt!470640 lt!470664 (rules!10965 acc!229)))))

(assert (=> d!402934 (not (isEmpty!8765 (rules!10965 acc!229)))))

(assert (=> d!402934 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!10 lt!470653 lt!470640 lt!470664 (rules!10965 acc!229)) lt!471151)))

(declare-fun b!1410009 () Bool)

(assert (=> b!1410009 (= e!900134 (tokensListTwoByTwoPredicateSeparableList!189 lt!470653 (++!3734 lt!470640 lt!470664) (rules!10965 acc!229)))))

(declare-fun lt!471152 () Unit!20751)

(declare-fun lt!471150 () Unit!20751)

(assert (=> b!1410009 (= lt!471152 lt!471150)))

(assert (=> b!1410009 (rulesProduceEachTokenIndividuallyList!668 lt!470653 (rules!10965 acc!229) (++!3734 lt!470640 lt!470664))))

(assert (=> b!1410009 (= lt!471150 (lemmaRulesProduceEachTokenIndividuallyConcat!10 lt!470653 (rules!10965 acc!229) lt!470640 lt!470664))))

(declare-fun b!1410006 () Bool)

(declare-fun res!638572 () Bool)

(assert (=> b!1410006 (=> (not res!638572) (not e!900134))))

(assert (=> b!1410006 (= res!638572 (rulesInvariant!2054 lt!470653 (rules!10965 acc!229)))))

(declare-fun b!1410007 () Bool)

(declare-fun res!638571 () Bool)

(assert (=> b!1410007 (=> (not res!638571) (not e!900134))))

(assert (=> b!1410007 (= res!638571 (rulesProduceEachTokenIndividuallyList!668 lt!470653 (rules!10965 acc!229) lt!470640))))

(assert (= (and d!402934 res!638573) b!1410006))

(assert (= (and b!1410006 res!638572) b!1410007))

(assert (= (and b!1410007 res!638571) b!1410008))

(assert (= (and b!1410008 res!638570) b!1410009))

(declare-fun m!1589075 () Bool)

(assert (=> b!1410006 m!1589075))

(declare-fun m!1589077 () Bool)

(assert (=> d!402934 m!1589077))

(assert (=> d!402934 m!1588515))

(declare-fun m!1589079 () Bool)

(assert (=> b!1410007 m!1589079))

(declare-fun m!1589081 () Bool)

(assert (=> b!1410008 m!1589081))

(assert (=> b!1410009 m!1588427))

(assert (=> b!1410009 m!1588427))

(assert (=> b!1410009 m!1588429))

(assert (=> b!1410009 m!1588427))

(assert (=> b!1410009 m!1588433))

(assert (=> b!1410009 m!1588421))

(assert (=> b!1409694 d!402934))

(declare-fun d!402942 () Bool)

(declare-fun e!900141 () Bool)

(assert (=> d!402942 e!900141))

(declare-fun res!638584 () Bool)

(assert (=> d!402942 (=> (not res!638584) (not e!900141))))

(declare-fun lt!471157 () BalanceConc!9452)

(assert (=> d!402942 (= res!638584 (= (list!5622 (_1!7874 (lex!1006 Lexer!2182 (rules!10965 (PrintableTokens!771 (rules!10965 acc!229) (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))) lt!471157))) (list!5622 (tokens!1713 (PrintableTokens!771 (rules!10965 acc!229) (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))))

(assert (=> d!402942 (= lt!471157 (print!946 Lexer!2182 (tokens!1713 (PrintableTokens!771 (rules!10965 acc!229) (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))))))))

(declare-fun lt!471158 () Unit!20751)

(assert (=> d!402942 (= lt!471158 (theoremInvertabilityWhenTokenListSeparable!15 Lexer!2182 (rules!10965 (PrintableTokens!771 (rules!10965 acc!229) (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))) (list!5622 (tokens!1713 (PrintableTokens!771 (rules!10965 acc!229) (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))))

(assert (=> d!402942 (= (print!945 (PrintableTokens!771 (rules!10965 acc!229) (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))) lt!471157)))

(declare-fun b!1410020 () Bool)

(assert (=> b!1410020 (= e!900141 (isEmpty!8775 (list!5623 (_2!7874 (lex!1006 Lexer!2182 (rules!10965 (PrintableTokens!771 (rules!10965 acc!229) (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))) lt!471157)))))))

(assert (= (and d!402942 res!638584) b!1410020))

(declare-fun m!1589117 () Bool)

(assert (=> d!402942 m!1589117))

(declare-fun m!1589119 () Bool)

(assert (=> d!402942 m!1589119))

(declare-fun m!1589121 () Bool)

(assert (=> d!402942 m!1589121))

(assert (=> d!402942 m!1589119))

(declare-fun m!1589123 () Bool)

(assert (=> d!402942 m!1589123))

(declare-fun m!1589125 () Bool)

(assert (=> d!402942 m!1589125))

(assert (=> b!1410020 m!1589125))

(declare-fun m!1589127 () Bool)

(assert (=> b!1410020 m!1589127))

(assert (=> b!1410020 m!1589127))

(declare-fun m!1589129 () Bool)

(assert (=> b!1410020 m!1589129))

(assert (=> b!1409694 d!402942))

(declare-fun b!1410037 () Bool)

(declare-fun e!900156 () Bool)

(assert (=> b!1410037 (= e!900156 true)))

(declare-fun b!1410036 () Bool)

(declare-fun e!900155 () Bool)

(assert (=> b!1410036 (= e!900155 e!900156)))

(declare-fun b!1410035 () Bool)

(declare-fun e!900154 () Bool)

(assert (=> b!1410035 (= e!900154 e!900155)))

(declare-fun d!402950 () Bool)

(assert (=> d!402950 e!900154))

(assert (= b!1410036 b!1410037))

(assert (= b!1410035 b!1410036))

(assert (= (and d!402950 (is-Cons!14379 (rules!10965 acc!229))) b!1410035))

(declare-fun order!8789 () Int)

(declare-fun order!8791 () Int)

(declare-fun lambda!62349 () Int)

(declare-fun dynLambda!6665 (Int Int) Int)

(declare-fun dynLambda!6666 (Int Int) Int)

(assert (=> b!1410037 (< (dynLambda!6665 order!8789 (toValue!3789 (transformation!2494 (h!19780 (rules!10965 acc!229))))) (dynLambda!6666 order!8791 lambda!62349))))

(declare-fun order!8793 () Int)

(declare-fun dynLambda!6667 (Int Int) Int)

(assert (=> b!1410037 (< (dynLambda!6667 order!8793 (toChars!3648 (transformation!2494 (h!19780 (rules!10965 acc!229))))) (dynLambda!6666 order!8791 lambda!62349))))

(assert (=> d!402950 true))

(declare-fun lt!471167 () Bool)

(declare-fun forall!3502 (List!14444 Int) Bool)

(assert (=> d!402950 (= lt!471167 (forall!3502 (++!3734 lt!470640 lt!470664) lambda!62349))))

(declare-fun e!900147 () Bool)

(assert (=> d!402950 (= lt!471167 e!900147)))

(declare-fun res!638590 () Bool)

(assert (=> d!402950 (=> res!638590 e!900147)))

(assert (=> d!402950 (= res!638590 (not (is-Cons!14378 (++!3734 lt!470640 lt!470664))))))

(assert (=> d!402950 (not (isEmpty!8765 (rules!10965 acc!229)))))

(assert (=> d!402950 (= (rulesProduceEachTokenIndividuallyList!668 lt!470653 (rules!10965 acc!229) (++!3734 lt!470640 lt!470664)) lt!471167)))

(declare-fun b!1410025 () Bool)

(declare-fun e!900146 () Bool)

(assert (=> b!1410025 (= e!900147 e!900146)))

(declare-fun res!638589 () Bool)

(assert (=> b!1410025 (=> (not res!638589) (not e!900146))))

(assert (=> b!1410025 (= res!638589 (rulesProduceIndividualToken!1152 lt!470653 (rules!10965 acc!229) (h!19779 (++!3734 lt!470640 lt!470664))))))

(declare-fun b!1410026 () Bool)

(assert (=> b!1410026 (= e!900146 (rulesProduceEachTokenIndividuallyList!668 lt!470653 (rules!10965 acc!229) (t!123363 (++!3734 lt!470640 lt!470664))))))

(assert (= (and d!402950 (not res!638590)) b!1410025))

(assert (= (and b!1410025 res!638589) b!1410026))

(assert (=> d!402950 m!1588427))

(declare-fun m!1589137 () Bool)

(assert (=> d!402950 m!1589137))

(assert (=> d!402950 m!1588515))

(assert (=> b!1410025 m!1589035))

(declare-fun m!1589139 () Bool)

(assert (=> b!1410026 m!1589139))

(assert (=> b!1409694 d!402950))

(declare-fun d!402956 () Bool)

(declare-fun list!5629 (Conc!4757) List!14444)

(assert (=> d!402956 (= (list!5622 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))) (list!5629 (c!231627 (++!3735 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))

(declare-fun bs!338848 () Bool)

(assert (= bs!338848 d!402956))

(declare-fun m!1589141 () Bool)

(assert (=> bs!338848 m!1589141))

(assert (=> b!1409694 d!402956))

(declare-fun d!402958 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!372) Rule!4788)

(declare-fun integerLiteralRule!0 (JsonLexer!372) Rule!4788)

(declare-fun floatLiteralRule!0 (JsonLexer!372) Rule!4788)

(declare-fun trueRule!0 (JsonLexer!372) Rule!4788)

(declare-fun falseRule!0 (JsonLexer!372) Rule!4788)

(declare-fun nullRule!0 (JsonLexer!372) Rule!4788)

(declare-fun jsonstringRule!0 (JsonLexer!372) Rule!4788)

(declare-fun lBraceRule!0 (JsonLexer!372) Rule!4788)

(declare-fun rBraceRule!0 (JsonLexer!372) Rule!4788)

(declare-fun lBracketRule!0 (JsonLexer!372) Rule!4788)

(declare-fun rBracketRule!0 (JsonLexer!372) Rule!4788)

(declare-fun colonRule!0 (JsonLexer!372) Rule!4788)

(declare-fun commaRule!0 (JsonLexer!372) Rule!4788)

(declare-fun eofRule!0 (JsonLexer!372) Rule!4788)

(assert (=> d!402958 (= (rules!109 JsonLexer!373) (Cons!14379 (whitespaceRule!0 JsonLexer!373) (Cons!14379 (integerLiteralRule!0 JsonLexer!373) (Cons!14379 (floatLiteralRule!0 JsonLexer!373) (Cons!14379 (trueRule!0 JsonLexer!373) (Cons!14379 (falseRule!0 JsonLexer!373) (Cons!14379 (nullRule!0 JsonLexer!373) (Cons!14379 (jsonstringRule!0 JsonLexer!373) (Cons!14379 (lBraceRule!0 JsonLexer!373) (Cons!14379 (rBraceRule!0 JsonLexer!373) (Cons!14379 (lBracketRule!0 JsonLexer!373) (Cons!14379 (rBracketRule!0 JsonLexer!373) (Cons!14379 (colonRule!0 JsonLexer!373) (Cons!14379 (commaRule!0 JsonLexer!373) (Cons!14379 (eofRule!0 JsonLexer!373) Nil!14379)))))))))))))))))

(declare-fun bs!338851 () Bool)

(assert (= bs!338851 d!402958))

(declare-fun m!1589185 () Bool)

(assert (=> bs!338851 m!1589185))

(declare-fun m!1589187 () Bool)

(assert (=> bs!338851 m!1589187))

(declare-fun m!1589189 () Bool)

(assert (=> bs!338851 m!1589189))

(declare-fun m!1589191 () Bool)

(assert (=> bs!338851 m!1589191))

(declare-fun m!1589193 () Bool)

(assert (=> bs!338851 m!1589193))

(declare-fun m!1589195 () Bool)

(assert (=> bs!338851 m!1589195))

(declare-fun m!1589197 () Bool)

(assert (=> bs!338851 m!1589197))

(declare-fun m!1589199 () Bool)

(assert (=> bs!338851 m!1589199))

(declare-fun m!1589201 () Bool)

(assert (=> bs!338851 m!1589201))

(declare-fun m!1589203 () Bool)

(assert (=> bs!338851 m!1589203))

(declare-fun m!1589205 () Bool)

(assert (=> bs!338851 m!1589205))

(declare-fun m!1589207 () Bool)

(assert (=> bs!338851 m!1589207))

(declare-fun m!1589209 () Bool)

(assert (=> bs!338851 m!1589209))

(declare-fun m!1589211 () Bool)

(assert (=> bs!338851 m!1589211))

(assert (=> d!402860 d!402958))

(declare-fun d!402968 () Bool)

(assert (=> d!402968 (= (list!5622 (ite c!231657 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24)))) (list!5629 (c!231627 (ite c!231657 (tokens!1713 acc!229) (tokens!1713 (head!2638 objs!24))))))))

(declare-fun bs!338852 () Bool)

(assert (= bs!338852 d!402968))

(declare-fun m!1589213 () Bool)

(assert (=> bs!338852 m!1589213))

(assert (=> bm!93964 d!402968))

(declare-fun d!402970 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!88 (LexerInterface!2184 BalanceConc!9454 Int List!14445) Bool)

(assert (=> d!402970 (= (separableTokens!166 Lexer!2182 (tokens!1713 acc!229) (rules!10965 acc!229)) (tokensListTwoByTwoPredicateSeparable!88 Lexer!2182 (tokens!1713 acc!229) 0 (rules!10965 acc!229)))))

(declare-fun bs!338862 () Bool)

(assert (= bs!338862 d!402970))

(declare-fun m!1589483 () Bool)

(assert (=> bs!338862 m!1589483))

(assert (=> b!1409712 d!402970))

(declare-fun d!403028 () Bool)

(assert (=> d!403028 (= (inv!18738 (xs!7484 (c!231627 (tokens!1713 acc!229)))) (<= (size!11841 (innerList!4817 (xs!7484 (c!231627 (tokens!1713 acc!229))))) 2147483647))))

(declare-fun bs!338863 () Bool)

(assert (= bs!338863 d!403028))

(declare-fun m!1589485 () Bool)

(assert (=> bs!338863 m!1589485))

(assert (=> b!1409751 d!403028))

(declare-fun b!1410188 () Bool)

(declare-fun res!638692 () Bool)

(declare-fun e!900239 () Bool)

(assert (=> b!1410188 (=> (not res!638692) (not e!900239))))

(assert (=> b!1410188 (= res!638692 (isBalanced!1401 (left!12278 (c!231627 (tokens!1713 sep!3)))))))

(declare-fun b!1410189 () Bool)

(declare-fun res!638691 () Bool)

(assert (=> b!1410189 (=> (not res!638691) (not e!900239))))

(assert (=> b!1410189 (= res!638691 (<= (- (height!688 (left!12278 (c!231627 (tokens!1713 sep!3)))) (height!688 (right!12608 (c!231627 (tokens!1713 sep!3))))) 1))))

(declare-fun d!403030 () Bool)

(declare-fun res!638694 () Bool)

(declare-fun e!900240 () Bool)

(assert (=> d!403030 (=> res!638694 e!900240)))

(assert (=> d!403030 (= res!638694 (not (is-Node!4757 (c!231627 (tokens!1713 sep!3)))))))

(assert (=> d!403030 (= (isBalanced!1401 (c!231627 (tokens!1713 sep!3))) e!900240)))

(declare-fun b!1410190 () Bool)

(declare-fun res!638696 () Bool)

(assert (=> b!1410190 (=> (not res!638696) (not e!900239))))

(assert (=> b!1410190 (= res!638696 (isBalanced!1401 (right!12608 (c!231627 (tokens!1713 sep!3)))))))

(declare-fun b!1410191 () Bool)

(assert (=> b!1410191 (= e!900239 (not (isEmpty!8774 (right!12608 (c!231627 (tokens!1713 sep!3))))))))

(declare-fun b!1410192 () Bool)

(declare-fun res!638693 () Bool)

(assert (=> b!1410192 (=> (not res!638693) (not e!900239))))

(assert (=> b!1410192 (= res!638693 (not (isEmpty!8774 (left!12278 (c!231627 (tokens!1713 sep!3))))))))

(declare-fun b!1410193 () Bool)

(assert (=> b!1410193 (= e!900240 e!900239)))

(declare-fun res!638695 () Bool)

(assert (=> b!1410193 (=> (not res!638695) (not e!900239))))

(assert (=> b!1410193 (= res!638695 (<= (- 1) (- (height!688 (left!12278 (c!231627 (tokens!1713 sep!3)))) (height!688 (right!12608 (c!231627 (tokens!1713 sep!3)))))))))

(assert (= (and d!403030 (not res!638694)) b!1410193))

(assert (= (and b!1410193 res!638695) b!1410189))

(assert (= (and b!1410189 res!638691) b!1410188))

(assert (= (and b!1410188 res!638692) b!1410190))

(assert (= (and b!1410190 res!638696) b!1410192))

(assert (= (and b!1410192 res!638693) b!1410191))

(declare-fun m!1589487 () Bool)

(assert (=> b!1410188 m!1589487))

(declare-fun m!1589489 () Bool)

(assert (=> b!1410193 m!1589489))

(declare-fun m!1589491 () Bool)

(assert (=> b!1410193 m!1589491))

(declare-fun m!1589493 () Bool)

(assert (=> b!1410191 m!1589493))

(assert (=> b!1410189 m!1589489))

(assert (=> b!1410189 m!1589491))

(declare-fun m!1589495 () Bool)

(assert (=> b!1410190 m!1589495))

(declare-fun m!1589497 () Bool)

(assert (=> b!1410192 m!1589497))

(assert (=> d!402862 d!403030))

(declare-fun c!231741 () Bool)

(declare-fun d!403032 () Bool)

(assert (=> d!403032 (= c!231741 (is-Cons!14378 (ite c!231657 (t!123363 lt!470654) (ite c!231659 lt!470684 lt!470639))))))

(declare-fun e!900250 () List!14443)

(assert (=> d!403032 (= (printList!645 (ite c!231657 Lexer!2182 (ite c!231659 lt!470670 lt!470668)) (ite c!231657 (t!123363 lt!470654) (ite c!231659 lt!470684 lt!470639))) e!900250)))

(declare-fun b!1410210 () Bool)

(assert (=> b!1410210 (= e!900250 (++!3733 (list!5623 (charsOf!1460 (h!19779 (ite c!231657 (t!123363 lt!470654) (ite c!231659 lt!470684 lt!470639))))) (printList!645 (ite c!231657 Lexer!2182 (ite c!231659 lt!470670 lt!470668)) (t!123363 (ite c!231657 (t!123363 lt!470654) (ite c!231659 lt!470684 lt!470639))))))))

(declare-fun b!1410211 () Bool)

(assert (=> b!1410211 (= e!900250 Nil!14377)))

(assert (= (and d!403032 c!231741) b!1410210))

(assert (= (and d!403032 (not c!231741)) b!1410211))

(declare-fun m!1589549 () Bool)

(assert (=> b!1410210 m!1589549))

(assert (=> b!1410210 m!1589549))

(declare-fun m!1589553 () Bool)

(assert (=> b!1410210 m!1589553))

(declare-fun m!1589555 () Bool)

(assert (=> b!1410210 m!1589555))

(assert (=> b!1410210 m!1589553))

(assert (=> b!1410210 m!1589555))

(declare-fun m!1589557 () Bool)

(assert (=> b!1410210 m!1589557))

(assert (=> bm!93940 d!403032))

(declare-fun d!403040 () Bool)

(declare-fun c!231742 () Bool)

(assert (=> d!403040 (= c!231742 (is-Cons!14378 (ite c!231657 call!93936 (ite c!231659 lt!470666 lt!470677))))))

(declare-fun e!900251 () List!14443)

(assert (=> d!403040 (= (printList!645 (ite c!231657 Lexer!2182 (ite c!231659 lt!470670 lt!470674)) (ite c!231657 call!93936 (ite c!231659 lt!470666 lt!470677))) e!900251)))

(declare-fun b!1410212 () Bool)

(assert (=> b!1410212 (= e!900251 (++!3733 (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93936 (ite c!231659 lt!470666 lt!470677))))) (printList!645 (ite c!231657 Lexer!2182 (ite c!231659 lt!470670 lt!470674)) (t!123363 (ite c!231657 call!93936 (ite c!231659 lt!470666 lt!470677))))))))

(declare-fun b!1410213 () Bool)

(assert (=> b!1410213 (= e!900251 Nil!14377)))

(assert (= (and d!403040 c!231742) b!1410212))

(assert (= (and d!403040 (not c!231742)) b!1410213))

(declare-fun m!1589559 () Bool)

(assert (=> b!1410212 m!1589559))

(assert (=> b!1410212 m!1589559))

(declare-fun m!1589561 () Bool)

(assert (=> b!1410212 m!1589561))

(declare-fun m!1589563 () Bool)

(assert (=> b!1410212 m!1589563))

(assert (=> b!1410212 m!1589561))

(assert (=> b!1410212 m!1589563))

(declare-fun m!1589565 () Bool)

(assert (=> b!1410212 m!1589565))

(assert (=> bm!93955 d!403040))

(declare-fun b!1410214 () Bool)

(declare-fun res!638704 () Bool)

(declare-fun e!900252 () Bool)

(assert (=> b!1410214 (=> (not res!638704) (not e!900252))))

(assert (=> b!1410214 (= res!638704 (isBalanced!1401 (left!12278 (c!231627 (tokens!1713 acc!229)))))))

(declare-fun b!1410215 () Bool)

(declare-fun res!638703 () Bool)

(assert (=> b!1410215 (=> (not res!638703) (not e!900252))))

(assert (=> b!1410215 (= res!638703 (<= (- (height!688 (left!12278 (c!231627 (tokens!1713 acc!229)))) (height!688 (right!12608 (c!231627 (tokens!1713 acc!229))))) 1))))

(declare-fun d!403044 () Bool)

(declare-fun res!638706 () Bool)

(declare-fun e!900253 () Bool)

(assert (=> d!403044 (=> res!638706 e!900253)))

(assert (=> d!403044 (= res!638706 (not (is-Node!4757 (c!231627 (tokens!1713 acc!229)))))))

(assert (=> d!403044 (= (isBalanced!1401 (c!231627 (tokens!1713 acc!229))) e!900253)))

(declare-fun b!1410216 () Bool)

(declare-fun res!638708 () Bool)

(assert (=> b!1410216 (=> (not res!638708) (not e!900252))))

(assert (=> b!1410216 (= res!638708 (isBalanced!1401 (right!12608 (c!231627 (tokens!1713 acc!229)))))))

(declare-fun b!1410217 () Bool)

(assert (=> b!1410217 (= e!900252 (not (isEmpty!8774 (right!12608 (c!231627 (tokens!1713 acc!229))))))))

(declare-fun b!1410218 () Bool)

(declare-fun res!638705 () Bool)

(assert (=> b!1410218 (=> (not res!638705) (not e!900252))))

(assert (=> b!1410218 (= res!638705 (not (isEmpty!8774 (left!12278 (c!231627 (tokens!1713 acc!229))))))))

(declare-fun b!1410219 () Bool)

(assert (=> b!1410219 (= e!900253 e!900252)))

(declare-fun res!638707 () Bool)

(assert (=> b!1410219 (=> (not res!638707) (not e!900252))))

(assert (=> b!1410219 (= res!638707 (<= (- 1) (- (height!688 (left!12278 (c!231627 (tokens!1713 acc!229)))) (height!688 (right!12608 (c!231627 (tokens!1713 acc!229)))))))))

(assert (= (and d!403044 (not res!638706)) b!1410219))

(assert (= (and b!1410219 res!638707) b!1410215))

(assert (= (and b!1410215 res!638703) b!1410214))

(assert (= (and b!1410214 res!638704) b!1410216))

(assert (= (and b!1410216 res!638708) b!1410218))

(assert (= (and b!1410218 res!638705) b!1410217))

(declare-fun m!1589569 () Bool)

(assert (=> b!1410214 m!1589569))

(declare-fun m!1589571 () Bool)

(assert (=> b!1410219 m!1589571))

(declare-fun m!1589573 () Bool)

(assert (=> b!1410219 m!1589573))

(declare-fun m!1589575 () Bool)

(assert (=> b!1410217 m!1589575))

(assert (=> b!1410215 m!1589571))

(assert (=> b!1410215 m!1589573))

(declare-fun m!1589577 () Bool)

(assert (=> b!1410216 m!1589577))

(declare-fun m!1589579 () Bool)

(assert (=> b!1410218 m!1589579))

(assert (=> d!402846 d!403044))

(declare-fun d!403048 () Bool)

(declare-fun c!231743 () Bool)

(assert (=> d!403048 (= c!231743 (is-Cons!14378 (ite c!231657 lt!470667 (ite c!231659 Nil!14378 lt!470678))))))

(declare-fun e!900254 () List!14443)

(assert (=> d!403048 (= (printList!645 (ite c!231657 lt!470655 (ite c!231659 Lexer!2182 lt!470674)) (ite c!231657 lt!470667 (ite c!231659 Nil!14378 lt!470678))) e!900254)))

(declare-fun b!1410220 () Bool)

(assert (=> b!1410220 (= e!900254 (++!3733 (list!5623 (charsOf!1460 (h!19779 (ite c!231657 lt!470667 (ite c!231659 Nil!14378 lt!470678))))) (printList!645 (ite c!231657 lt!470655 (ite c!231659 Lexer!2182 lt!470674)) (t!123363 (ite c!231657 lt!470667 (ite c!231659 Nil!14378 lt!470678))))))))

(declare-fun b!1410221 () Bool)

(assert (=> b!1410221 (= e!900254 Nil!14377)))

(assert (= (and d!403048 c!231743) b!1410220))

(assert (= (and d!403048 (not c!231743)) b!1410221))

(declare-fun m!1589581 () Bool)

(assert (=> b!1410220 m!1589581))

(assert (=> b!1410220 m!1589581))

(declare-fun m!1589583 () Bool)

(assert (=> b!1410220 m!1589583))

(declare-fun m!1589585 () Bool)

(assert (=> b!1410220 m!1589585))

(assert (=> b!1410220 m!1589583))

(assert (=> b!1410220 m!1589585))

(declare-fun m!1589587 () Bool)

(assert (=> b!1410220 m!1589587))

(assert (=> bm!93969 d!403048))

(declare-fun d!403050 () Bool)

(declare-fun res!638713 () Bool)

(declare-fun e!900259 () Bool)

(assert (=> d!403050 (=> res!638713 e!900259)))

(assert (=> d!403050 (= res!638713 (is-Nil!14380 (list!5624 (tail!2045 objs!24))))))

(assert (=> d!403050 (= (forall!3498 (list!5624 (tail!2045 objs!24)) lambda!62336) e!900259)))

(declare-fun b!1410226 () Bool)

(declare-fun e!900260 () Bool)

(assert (=> b!1410226 (= e!900259 e!900260)))

(declare-fun res!638714 () Bool)

(assert (=> b!1410226 (=> (not res!638714) (not e!900260))))

(declare-fun dynLambda!6668 (Int PrintableTokens!770) Bool)

(assert (=> b!1410226 (= res!638714 (dynLambda!6668 lambda!62336 (h!19781 (list!5624 (tail!2045 objs!24)))))))

(declare-fun b!1410227 () Bool)

(assert (=> b!1410227 (= e!900260 (forall!3498 (t!123365 (list!5624 (tail!2045 objs!24))) lambda!62336))))

(assert (= (and d!403050 (not res!638713)) b!1410226))

(assert (= (and b!1410226 res!638714) b!1410227))

(declare-fun b_lambda!44495 () Bool)

(assert (=> (not b_lambda!44495) (not b!1410226)))

(declare-fun m!1589601 () Bool)

(assert (=> b!1410226 m!1589601))

(declare-fun m!1589603 () Bool)

(assert (=> b!1410227 m!1589603))

(assert (=> d!402856 d!403050))

(declare-fun d!403054 () Bool)

(declare-fun list!5632 (Conc!4758) List!14446)

(assert (=> d!403054 (= (list!5624 (tail!2045 objs!24)) (list!5632 (c!231628 (tail!2045 objs!24))))))

(declare-fun bs!338868 () Bool)

(assert (= bs!338868 d!403054))

(declare-fun m!1589623 () Bool)

(assert (=> bs!338868 m!1589623))

(assert (=> d!402856 d!403054))

(declare-fun b!1410248 () Bool)

(declare-fun e!900275 () Bool)

(assert (=> b!1410248 (= e!900275 (forall!3499 (right!12609 (c!231628 (tail!2045 objs!24))) lambda!62336))))

(declare-fun b!1410245 () Bool)

(declare-fun e!900274 () Bool)

(declare-fun e!900273 () Bool)

(assert (=> b!1410245 (= e!900274 e!900273)))

(declare-fun c!231748 () Bool)

(assert (=> b!1410245 (= c!231748 (is-Leaf!7202 (c!231628 (tail!2045 objs!24))))))

(declare-fun b!1410247 () Bool)

(assert (=> b!1410247 (= e!900273 e!900275)))

(declare-fun lt!471268 () Unit!20751)

(declare-fun lemmaForallConcat!125 (List!14446 List!14446 Int) Unit!20751)

(assert (=> b!1410247 (= lt!471268 (lemmaForallConcat!125 (list!5632 (left!12279 (c!231628 (tail!2045 objs!24)))) (list!5632 (right!12609 (c!231628 (tail!2045 objs!24)))) lambda!62336))))

(declare-fun res!638725 () Bool)

(assert (=> b!1410247 (= res!638725 (forall!3499 (left!12279 (c!231628 (tail!2045 objs!24))) lambda!62336))))

(assert (=> b!1410247 (=> (not res!638725) (not e!900275))))

(declare-fun b!1410246 () Bool)

(declare-fun forall!3503 (IArray!9521 Int) Bool)

(assert (=> b!1410246 (= e!900273 (forall!3503 (xs!7485 (c!231628 (tail!2045 objs!24))) lambda!62336))))

(declare-fun d!403062 () Bool)

(declare-fun lt!471269 () Bool)

(assert (=> d!403062 (= lt!471269 (forall!3498 (list!5632 (c!231628 (tail!2045 objs!24))) lambda!62336))))

(assert (=> d!403062 (= lt!471269 e!900274)))

(declare-fun res!638724 () Bool)

(assert (=> d!403062 (=> res!638724 e!900274)))

(assert (=> d!403062 (= res!638724 (is-Empty!4758 (c!231628 (tail!2045 objs!24))))))

(assert (=> d!403062 (= (forall!3499 (c!231628 (tail!2045 objs!24)) lambda!62336) lt!471269)))

(assert (= (and d!403062 (not res!638724)) b!1410245))

(assert (= (and b!1410245 c!231748) b!1410246))

(assert (= (and b!1410245 (not c!231748)) b!1410247))

(assert (= (and b!1410247 res!638725) b!1410248))

(declare-fun m!1589639 () Bool)

(assert (=> b!1410248 m!1589639))

(declare-fun m!1589641 () Bool)

(assert (=> b!1410247 m!1589641))

(declare-fun m!1589643 () Bool)

(assert (=> b!1410247 m!1589643))

(assert (=> b!1410247 m!1589641))

(assert (=> b!1410247 m!1589643))

(declare-fun m!1589645 () Bool)

(assert (=> b!1410247 m!1589645))

(declare-fun m!1589647 () Bool)

(assert (=> b!1410247 m!1589647))

(declare-fun m!1589649 () Bool)

(assert (=> b!1410246 m!1589649))

(assert (=> d!403062 m!1589623))

(assert (=> d!403062 m!1589623))

(declare-fun m!1589651 () Bool)

(assert (=> d!403062 m!1589651))

(assert (=> d!402856 d!403062))

(declare-fun d!403074 () Bool)

(assert (=> d!403074 (= (inv!18738 (xs!7484 (c!231627 (tokens!1713 sep!3)))) (<= (size!11841 (innerList!4817 (xs!7484 (c!231627 (tokens!1713 sep!3))))) 2147483647))))

(declare-fun bs!338870 () Bool)

(assert (= bs!338870 d!403074))

(declare-fun m!1589653 () Bool)

(assert (=> bs!338870 m!1589653))

(assert (=> b!1409768 d!403074))

(assert (=> b!1409566 d!402842))

(declare-fun lt!471301 () List!14443)

(declare-fun b!1410269 () Bool)

(declare-fun e!900286 () Bool)

(assert (=> b!1410269 (= e!900286 (or (not (= (ite c!231657 call!93941 (ite c!231659 call!93973 call!93958)) Nil!14377)) (= lt!471301 (ite c!231657 call!93960 e!899944))))))

(declare-fun b!1410268 () Bool)

(declare-fun res!638732 () Bool)

(assert (=> b!1410268 (=> (not res!638732) (not e!900286))))

(declare-fun size!11845 (List!14443) Int)

(assert (=> b!1410268 (= res!638732 (= (size!11845 lt!471301) (+ (size!11845 (ite c!231657 call!93960 e!899944)) (size!11845 (ite c!231657 call!93941 (ite c!231659 call!93973 call!93958))))))))

(declare-fun e!900285 () List!14443)

(declare-fun b!1410267 () Bool)

(assert (=> b!1410267 (= e!900285 (Cons!14377 (h!19778 (ite c!231657 call!93960 e!899944)) (++!3733 (t!123362 (ite c!231657 call!93960 e!899944)) (ite c!231657 call!93941 (ite c!231659 call!93973 call!93958)))))))

(declare-fun b!1410266 () Bool)

(assert (=> b!1410266 (= e!900285 (ite c!231657 call!93941 (ite c!231659 call!93973 call!93958)))))

(declare-fun d!403076 () Bool)

(assert (=> d!403076 e!900286))

(declare-fun res!638731 () Bool)

(assert (=> d!403076 (=> (not res!638731) (not e!900286))))

(declare-fun content!2137 (List!14443) (Set (_ BitVec 16)))

(assert (=> d!403076 (= res!638731 (= (content!2137 lt!471301) (set.union (content!2137 (ite c!231657 call!93960 e!899944)) (content!2137 (ite c!231657 call!93941 (ite c!231659 call!93973 call!93958))))))))

(assert (=> d!403076 (= lt!471301 e!900285)))

(declare-fun c!231755 () Bool)

(assert (=> d!403076 (= c!231755 (is-Nil!14377 (ite c!231657 call!93960 e!899944)))))

(assert (=> d!403076 (= (++!3733 (ite c!231657 call!93960 e!899944) (ite c!231657 call!93941 (ite c!231659 call!93973 call!93958))) lt!471301)))

(assert (= (and d!403076 c!231755) b!1410266))

(assert (= (and d!403076 (not c!231755)) b!1410267))

(assert (= (and d!403076 res!638731) b!1410268))

(assert (= (and b!1410268 res!638732) b!1410269))

(declare-fun m!1589673 () Bool)

(assert (=> b!1410268 m!1589673))

(declare-fun m!1589675 () Bool)

(assert (=> b!1410268 m!1589675))

(declare-fun m!1589677 () Bool)

(assert (=> b!1410268 m!1589677))

(declare-fun m!1589681 () Bool)

(assert (=> b!1410267 m!1589681))

(declare-fun m!1589685 () Bool)

(assert (=> d!403076 m!1589685))

(declare-fun m!1589687 () Bool)

(assert (=> d!403076 m!1589687))

(declare-fun m!1589691 () Bool)

(assert (=> d!403076 m!1589691))

(assert (=> bm!93945 d!403076))

(declare-fun b!1410282 () Bool)

(declare-fun res!638745 () Bool)

(declare-fun e!900292 () Bool)

(assert (=> b!1410282 (=> (not res!638745) (not e!900292))))

(assert (=> b!1410282 (= res!638745 (not (isEmpty!8769 (left!12279 (c!231628 objs!24)))))))

(declare-fun b!1410283 () Bool)

(assert (=> b!1410283 (= e!900292 (not (isEmpty!8769 (right!12609 (c!231628 objs!24)))))))

(declare-fun b!1410285 () Bool)

(declare-fun res!638747 () Bool)

(assert (=> b!1410285 (=> (not res!638747) (not e!900292))))

(assert (=> b!1410285 (= res!638747 (isBalanced!1402 (right!12609 (c!231628 objs!24))))))

(declare-fun b!1410286 () Bool)

(declare-fun e!900291 () Bool)

(assert (=> b!1410286 (= e!900291 e!900292)))

(declare-fun res!638749 () Bool)

(assert (=> b!1410286 (=> (not res!638749) (not e!900292))))

(declare-fun height!690 (Conc!4758) Int)

(assert (=> b!1410286 (= res!638749 (<= (- 1) (- (height!690 (left!12279 (c!231628 objs!24))) (height!690 (right!12609 (c!231628 objs!24))))))))

(declare-fun b!1410287 () Bool)

(declare-fun res!638746 () Bool)

(assert (=> b!1410287 (=> (not res!638746) (not e!900292))))

(assert (=> b!1410287 (= res!638746 (isBalanced!1402 (left!12279 (c!231628 objs!24))))))

(declare-fun d!403080 () Bool)

(declare-fun res!638750 () Bool)

(assert (=> d!403080 (=> res!638750 e!900291)))

(assert (=> d!403080 (= res!638750 (not (is-Node!4758 (c!231628 objs!24))))))

(assert (=> d!403080 (= (isBalanced!1402 (c!231628 objs!24)) e!900291)))

(declare-fun b!1410284 () Bool)

(declare-fun res!638748 () Bool)

(assert (=> b!1410284 (=> (not res!638748) (not e!900292))))

(assert (=> b!1410284 (= res!638748 (<= (- (height!690 (left!12279 (c!231628 objs!24))) (height!690 (right!12609 (c!231628 objs!24)))) 1))))

(assert (= (and d!403080 (not res!638750)) b!1410286))

(assert (= (and b!1410286 res!638749) b!1410284))

(assert (= (and b!1410284 res!638748) b!1410287))

(assert (= (and b!1410287 res!638746) b!1410285))

(assert (= (and b!1410285 res!638747) b!1410282))

(assert (= (and b!1410282 res!638745) b!1410283))

(declare-fun m!1589757 () Bool)

(assert (=> b!1410287 m!1589757))

(declare-fun m!1589759 () Bool)

(assert (=> b!1410284 m!1589759))

(declare-fun m!1589761 () Bool)

(assert (=> b!1410284 m!1589761))

(declare-fun m!1589763 () Bool)

(assert (=> b!1410285 m!1589763))

(declare-fun m!1589765 () Bool)

(assert (=> b!1410283 m!1589765))

(declare-fun m!1589767 () Bool)

(assert (=> b!1410282 m!1589767))

(assert (=> b!1410286 m!1589759))

(assert (=> b!1410286 m!1589761))

(assert (=> d!402850 d!403080))

(declare-fun d!403084 () Bool)

(assert (=> d!403084 (= (list!5624 lt!470714) (list!5632 (c!231628 lt!470714)))))

(declare-fun bs!338871 () Bool)

(assert (= bs!338871 d!403084))

(declare-fun m!1589769 () Bool)

(assert (=> bs!338871 m!1589769))

(assert (=> b!1409718 d!403084))

(declare-fun d!403086 () Bool)

(assert (=> d!403086 (= (tail!2048 (list!5624 objs!24)) (t!123365 (list!5624 objs!24)))))

(assert (=> b!1409718 d!403086))

(declare-fun d!403088 () Bool)

(assert (=> d!403088 (= (list!5624 objs!24) (list!5632 (c!231628 objs!24)))))

(declare-fun bs!338872 () Bool)

(assert (= bs!338872 d!403088))

(declare-fun m!1589771 () Bool)

(assert (=> bs!338872 m!1589771))

(assert (=> b!1409718 d!403088))

(declare-fun d!403090 () Bool)

(declare-fun c!231756 () Bool)

(assert (=> d!403090 (= c!231756 (is-Cons!14378 (ite c!231657 call!93950 e!899945)))))

(declare-fun e!900293 () List!14443)

(assert (=> d!403090 (= (printList!645 (ite c!231657 lt!470655 (ite c!231659 lt!470670 lt!470674)) (ite c!231657 call!93950 e!899945)) e!900293)))

(declare-fun b!1410288 () Bool)

(assert (=> b!1410288 (= e!900293 (++!3733 (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93950 e!899945)))) (printList!645 (ite c!231657 lt!470655 (ite c!231659 lt!470670 lt!470674)) (t!123363 (ite c!231657 call!93950 e!899945)))))))

(declare-fun b!1410289 () Bool)

(assert (=> b!1410289 (= e!900293 Nil!14377)))

(assert (= (and d!403090 c!231756) b!1410288))

(assert (= (and d!403090 (not c!231756)) b!1410289))

(declare-fun m!1589773 () Bool)

(assert (=> b!1410288 m!1589773))

(assert (=> b!1410288 m!1589773))

(declare-fun m!1589775 () Bool)

(assert (=> b!1410288 m!1589775))

(declare-fun m!1589777 () Bool)

(assert (=> b!1410288 m!1589777))

(assert (=> b!1410288 m!1589775))

(assert (=> b!1410288 m!1589777))

(declare-fun m!1589779 () Bool)

(assert (=> b!1410288 m!1589779))

(assert (=> bm!93958 d!403090))

(declare-fun d!403092 () Bool)

(declare-fun e!900294 () Bool)

(assert (=> d!403092 e!900294))

(declare-fun res!638751 () Bool)

(assert (=> d!403092 (=> (not res!638751) (not e!900294))))

(declare-fun lt!471302 () BalanceConc!9452)

(assert (=> d!403092 (= res!638751 (= (list!5622 (_1!7874 (lex!1006 Lexer!2182 (rules!10965 (ite c!231657 acc!229 (ite c!231659 (head!2638 objs!24) acc!229))) lt!471302))) (list!5622 (tokens!1713 (ite c!231657 acc!229 (ite c!231659 (head!2638 objs!24) acc!229))))))))

(assert (=> d!403092 (= lt!471302 (print!946 Lexer!2182 (tokens!1713 (ite c!231657 acc!229 (ite c!231659 (head!2638 objs!24) acc!229)))))))

(declare-fun lt!471303 () Unit!20751)

(assert (=> d!403092 (= lt!471303 (theoremInvertabilityWhenTokenListSeparable!15 Lexer!2182 (rules!10965 (ite c!231657 acc!229 (ite c!231659 (head!2638 objs!24) acc!229))) (list!5622 (tokens!1713 (ite c!231657 acc!229 (ite c!231659 (head!2638 objs!24) acc!229))))))))

(assert (=> d!403092 (= (print!945 (ite c!231657 acc!229 (ite c!231659 (head!2638 objs!24) acc!229))) lt!471302)))

(declare-fun b!1410290 () Bool)

(assert (=> b!1410290 (= e!900294 (isEmpty!8775 (list!5623 (_2!7874 (lex!1006 Lexer!2182 (rules!10965 (ite c!231657 acc!229 (ite c!231659 (head!2638 objs!24) acc!229))) lt!471302)))))))

(assert (= (and d!403092 res!638751) b!1410290))

(declare-fun m!1589781 () Bool)

(assert (=> d!403092 m!1589781))

(declare-fun m!1589783 () Bool)

(assert (=> d!403092 m!1589783))

(declare-fun m!1589785 () Bool)

(assert (=> d!403092 m!1589785))

(assert (=> d!403092 m!1589783))

(declare-fun m!1589787 () Bool)

(assert (=> d!403092 m!1589787))

(declare-fun m!1589789 () Bool)

(assert (=> d!403092 m!1589789))

(assert (=> b!1410290 m!1589789))

(declare-fun m!1589791 () Bool)

(assert (=> b!1410290 m!1589791))

(assert (=> b!1410290 m!1589791))

(declare-fun m!1589793 () Bool)

(assert (=> b!1410290 m!1589793))

(assert (=> bm!93943 d!403092))

(declare-fun d!403094 () Bool)

(assert (=> d!403094 (= (isEmpty!8768 (list!5624 objs!24)) (is-Nil!14380 (list!5624 objs!24)))))

(assert (=> d!402864 d!403094))

(assert (=> d!402864 d!403088))

(declare-fun d!403096 () Bool)

(declare-fun lt!471306 () Bool)

(assert (=> d!403096 (= lt!471306 (isEmpty!8768 (list!5632 (c!231628 objs!24))))))

(assert (=> d!403096 (= lt!471306 (= (size!11838 (c!231628 objs!24)) 0))))

(assert (=> d!403096 (= (isEmpty!8769 (c!231628 objs!24)) lt!471306)))

(declare-fun bs!338873 () Bool)

(assert (= bs!338873 d!403096))

(assert (=> bs!338873 m!1589771))

(assert (=> bs!338873 m!1589771))

(declare-fun m!1589795 () Bool)

(assert (=> bs!338873 m!1589795))

(assert (=> bs!338873 m!1588505))

(assert (=> d!402864 d!403096))

(declare-fun b!1410294 () Bool)

(declare-fun e!900296 () Bool)

(declare-fun lt!471307 () List!14443)

(assert (=> b!1410294 (= e!900296 (or (not (= (ite c!231657 call!93949 (ite c!231659 call!93958 call!93964)) Nil!14377)) (= lt!471307 (ite c!231657 call!93963 call!93972))))))

(declare-fun b!1410293 () Bool)

(declare-fun res!638753 () Bool)

(assert (=> b!1410293 (=> (not res!638753) (not e!900296))))

(assert (=> b!1410293 (= res!638753 (= (size!11845 lt!471307) (+ (size!11845 (ite c!231657 call!93963 call!93972)) (size!11845 (ite c!231657 call!93949 (ite c!231659 call!93958 call!93964))))))))

(declare-fun b!1410292 () Bool)

(declare-fun e!900295 () List!14443)

(assert (=> b!1410292 (= e!900295 (Cons!14377 (h!19778 (ite c!231657 call!93963 call!93972)) (++!3733 (t!123362 (ite c!231657 call!93963 call!93972)) (ite c!231657 call!93949 (ite c!231659 call!93958 call!93964)))))))

(declare-fun b!1410291 () Bool)

(assert (=> b!1410291 (= e!900295 (ite c!231657 call!93949 (ite c!231659 call!93958 call!93964)))))

(declare-fun d!403098 () Bool)

(assert (=> d!403098 e!900296))

(declare-fun res!638752 () Bool)

(assert (=> d!403098 (=> (not res!638752) (not e!900296))))

(assert (=> d!403098 (= res!638752 (= (content!2137 lt!471307) (set.union (content!2137 (ite c!231657 call!93963 call!93972)) (content!2137 (ite c!231657 call!93949 (ite c!231659 call!93958 call!93964))))))))

(assert (=> d!403098 (= lt!471307 e!900295)))

(declare-fun c!231757 () Bool)

(assert (=> d!403098 (= c!231757 (is-Nil!14377 (ite c!231657 call!93963 call!93972)))))

(assert (=> d!403098 (= (++!3733 (ite c!231657 call!93963 call!93972) (ite c!231657 call!93949 (ite c!231659 call!93958 call!93964))) lt!471307)))

(assert (= (and d!403098 c!231757) b!1410291))

(assert (= (and d!403098 (not c!231757)) b!1410292))

(assert (= (and d!403098 res!638752) b!1410293))

(assert (= (and b!1410293 res!638753) b!1410294))

(declare-fun m!1589797 () Bool)

(assert (=> b!1410293 m!1589797))

(declare-fun m!1589799 () Bool)

(assert (=> b!1410293 m!1589799))

(declare-fun m!1589801 () Bool)

(assert (=> b!1410293 m!1589801))

(declare-fun m!1589803 () Bool)

(assert (=> b!1410292 m!1589803))

(declare-fun m!1589805 () Bool)

(assert (=> d!403098 m!1589805))

(declare-fun m!1589807 () Bool)

(assert (=> d!403098 m!1589807))

(declare-fun m!1589809 () Bool)

(assert (=> d!403098 m!1589809))

(assert (=> bm!93933 d!403098))

(declare-fun d!403100 () Bool)

(declare-fun lt!471308 () Bool)

(assert (=> d!403100 (= lt!471308 (isEmpty!8773 (list!5622 (tokens!1713 acc!229))))))

(assert (=> d!403100 (= lt!471308 (isEmpty!8774 (c!231627 (tokens!1713 acc!229))))))

(assert (=> d!403100 (= (isEmpty!8764 (tokens!1713 acc!229)) lt!471308)))

(declare-fun bs!338874 () Bool)

(assert (= bs!338874 d!403100))

(assert (=> bs!338874 m!1588473))

(assert (=> bs!338874 m!1588473))

(declare-fun m!1589811 () Bool)

(assert (=> bs!338874 m!1589811))

(declare-fun m!1589813 () Bool)

(assert (=> bs!338874 m!1589813))

(assert (=> b!1409685 d!403100))

(declare-fun d!403102 () Bool)

(assert (=> d!403102 (= (isEmpty!8765 (rules!10965 acc!229)) (is-Nil!14379 (rules!10965 acc!229)))))

(assert (=> d!402852 d!403102))

(declare-fun d!403104 () Bool)

(assert (=> d!403104 (= (inv!18717 (tag!2756 (h!19780 (rules!10965 sep!3)))) (= (mod (str.len (value!80712 (tag!2756 (h!19780 (rules!10965 sep!3))))) 2) 0))))

(assert (=> b!1409740 d!403104))

(declare-fun d!403106 () Bool)

(declare-fun res!638756 () Bool)

(declare-fun e!900299 () Bool)

(assert (=> d!403106 (=> (not res!638756) (not e!900299))))

(declare-fun semiInverseModEq!969 (Int Int) Bool)

(assert (=> d!403106 (= res!638756 (semiInverseModEq!969 (toChars!3648 (transformation!2494 (h!19780 (rules!10965 sep!3)))) (toValue!3789 (transformation!2494 (h!19780 (rules!10965 sep!3))))))))

(assert (=> d!403106 (= (inv!18734 (transformation!2494 (h!19780 (rules!10965 sep!3)))) e!900299)))

(declare-fun b!1410297 () Bool)

(declare-fun equivClasses!928 (Int Int) Bool)

(assert (=> b!1410297 (= e!900299 (equivClasses!928 (toChars!3648 (transformation!2494 (h!19780 (rules!10965 sep!3)))) (toValue!3789 (transformation!2494 (h!19780 (rules!10965 sep!3))))))))

(assert (= (and d!403106 res!638756) b!1410297))

(declare-fun m!1589815 () Bool)

(assert (=> d!403106 m!1589815))

(declare-fun m!1589817 () Bool)

(assert (=> b!1410297 m!1589817))

(assert (=> b!1409740 d!403106))

(declare-fun d!403108 () Bool)

(declare-fun res!638759 () Bool)

(declare-fun e!900302 () Bool)

(assert (=> d!403108 (=> (not res!638759) (not e!900302))))

(declare-fun rulesValid!939 (LexerInterface!2184 List!14445) Bool)

(assert (=> d!403108 (= res!638759 (rulesValid!939 Lexer!2182 (rules!10965 acc!229)))))

(assert (=> d!403108 (= (rulesInvariant!2054 Lexer!2182 (rules!10965 acc!229)) e!900302)))

(declare-fun b!1410300 () Bool)

(declare-datatypes ((List!14452 0))(
  ( (Nil!14386) (Cons!14386 (h!19787 String!17158) (t!123455 List!14452)) )
))
(declare-fun noDuplicateTag!939 (LexerInterface!2184 List!14445 List!14452) Bool)

(assert (=> b!1410300 (= e!900302 (noDuplicateTag!939 Lexer!2182 (rules!10965 acc!229) Nil!14386))))

(assert (= (and d!403108 res!638759) b!1410300))

(declare-fun m!1589819 () Bool)

(assert (=> d!403108 m!1589819))

(declare-fun m!1589821 () Bool)

(assert (=> b!1410300 m!1589821))

(assert (=> b!1409710 d!403108))

(declare-fun d!403110 () Bool)

(assert (=> d!403110 (rulesProduceIndividualToken!1152 lt!470687 (rules!10965 acc!229) lt!470645)))

(declare-fun lt!471314 () Unit!20751)

(declare-fun choose!8712 (LexerInterface!2184 List!14445 List!14444 Token!4650) Unit!20751)

(assert (=> d!403110 (= lt!471314 (choose!8712 lt!470687 (rules!10965 acc!229) lt!470671 lt!470645))))

(assert (=> d!403110 (not (isEmpty!8765 (rules!10965 acc!229)))))

(assert (=> d!403110 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!337 lt!470687 (rules!10965 acc!229) lt!470671 lt!470645) lt!471314)))

(declare-fun bs!338877 () Bool)

(assert (= bs!338877 d!403110))

(assert (=> bs!338877 m!1588385))

(declare-fun m!1589829 () Bool)

(assert (=> bs!338877 m!1589829))

(assert (=> bs!338877 m!1588515))

(assert (=> b!1409686 d!403110))

(declare-fun d!403114 () Bool)

(declare-fun lt!471333 () Bool)

(declare-fun e!900321 () Bool)

(assert (=> d!403114 (= lt!471333 e!900321)))

(declare-fun res!638778 () Bool)

(assert (=> d!403114 (=> (not res!638778) (not e!900321))))

(assert (=> d!403114 (= res!638778 (= (list!5622 (_1!7874 (lex!1006 lt!470695 (rules!10965 acc!229) (print!946 lt!470695 (singletonSeq!1155 lt!470683))))) (list!5622 (singletonSeq!1155 lt!470683))))))

(declare-fun e!900320 () Bool)

(assert (=> d!403114 (= lt!471333 e!900320)))

(declare-fun res!638776 () Bool)

(assert (=> d!403114 (=> (not res!638776) (not e!900320))))

(declare-fun lt!471334 () tuple2!13976)

(declare-fun size!11846 (BalanceConc!9454) Int)

(assert (=> d!403114 (= res!638776 (= (size!11846 (_1!7874 lt!471334)) 1))))

(assert (=> d!403114 (= lt!471334 (lex!1006 lt!470695 (rules!10965 acc!229) (print!946 lt!470695 (singletonSeq!1155 lt!470683))))))

(assert (=> d!403114 (not (isEmpty!8765 (rules!10965 acc!229)))))

(assert (=> d!403114 (= (rulesProduceIndividualToken!1152 lt!470695 (rules!10965 acc!229) lt!470683) lt!471333)))

(declare-fun b!1410320 () Bool)

(declare-fun res!638777 () Bool)

(assert (=> b!1410320 (=> (not res!638777) (not e!900320))))

(declare-fun apply!3690 (BalanceConc!9454 Int) Token!4650)

(assert (=> b!1410320 (= res!638777 (= (apply!3690 (_1!7874 lt!471334) 0) lt!470683))))

(declare-fun b!1410321 () Bool)

(assert (=> b!1410321 (= e!900320 (isEmpty!8776 (_2!7874 lt!471334)))))

(declare-fun b!1410322 () Bool)

(assert (=> b!1410322 (= e!900321 (isEmpty!8776 (_2!7874 (lex!1006 lt!470695 (rules!10965 acc!229) (print!946 lt!470695 (singletonSeq!1155 lt!470683))))))))

(assert (= (and d!403114 res!638776) b!1410320))

(assert (= (and b!1410320 res!638777) b!1410321))

(assert (= (and d!403114 res!638778) b!1410322))

(declare-fun m!1589831 () Bool)

(assert (=> d!403114 m!1589831))

(declare-fun m!1589833 () Bool)

(assert (=> d!403114 m!1589833))

(declare-fun m!1589835 () Bool)

(assert (=> d!403114 m!1589835))

(assert (=> d!403114 m!1589831))

(assert (=> d!403114 m!1589833))

(assert (=> d!403114 m!1589831))

(declare-fun m!1589837 () Bool)

(assert (=> d!403114 m!1589837))

(assert (=> d!403114 m!1588515))

(declare-fun m!1589839 () Bool)

(assert (=> d!403114 m!1589839))

(declare-fun m!1589841 () Bool)

(assert (=> d!403114 m!1589841))

(declare-fun m!1589843 () Bool)

(assert (=> b!1410320 m!1589843))

(declare-fun m!1589845 () Bool)

(assert (=> b!1410321 m!1589845))

(assert (=> b!1410322 m!1589831))

(assert (=> b!1410322 m!1589831))

(assert (=> b!1410322 m!1589833))

(assert (=> b!1410322 m!1589833))

(assert (=> b!1410322 m!1589835))

(declare-fun m!1589847 () Bool)

(assert (=> b!1410322 m!1589847))

(assert (=> b!1409686 d!403114))

(declare-fun d!403116 () Bool)

(declare-fun prefixMatchZipperSequence!309 (Regex!3808 BalanceConc!9452) Bool)

(declare-fun rulesRegex!369 (LexerInterface!2184 List!14445) Regex!3808)

(declare-fun ++!3741 (BalanceConc!9452 BalanceConc!9452) BalanceConc!9452)

(assert (=> d!403116 (= (separableTokensPredicate!466 Lexer!2182 (last!55 (tokens!1713 acc!229)) (head!2640 (tokens!1713 (head!2638 objs!24))) (rules!10965 acc!229)) (not (prefixMatchZipperSequence!309 (rulesRegex!369 Lexer!2182 (rules!10965 acc!229)) (++!3741 (charsOf!1460 (last!55 (tokens!1713 acc!229))) (singletonSeq!1156 (apply!3686 (charsOf!1460 (head!2640 (tokens!1713 (head!2638 objs!24)))) 0))))))))

(declare-fun bs!338878 () Bool)

(assert (= bs!338878 d!403116))

(assert (=> bs!338878 m!1588379))

(declare-fun m!1589877 () Bool)

(assert (=> bs!338878 m!1589877))

(declare-fun m!1589879 () Bool)

(assert (=> bs!338878 m!1589879))

(declare-fun m!1589881 () Bool)

(assert (=> bs!338878 m!1589881))

(declare-fun m!1589883 () Bool)

(assert (=> bs!338878 m!1589883))

(declare-fun m!1589885 () Bool)

(assert (=> bs!338878 m!1589885))

(declare-fun m!1589887 () Bool)

(assert (=> bs!338878 m!1589887))

(declare-fun m!1589889 () Bool)

(assert (=> bs!338878 m!1589889))

(assert (=> bs!338878 m!1589879))

(assert (=> bs!338878 m!1589883))

(assert (=> bs!338878 m!1588381))

(assert (=> bs!338878 m!1589889))

(assert (=> bs!338878 m!1589877))

(assert (=> bs!338878 m!1589881))

(assert (=> bs!338878 m!1589885))

(assert (=> b!1409686 d!403116))

(declare-fun d!403122 () Bool)

(declare-fun lt!471346 () Token!4650)

(declare-fun head!2652 (List!14444) Token!4650)

(assert (=> d!403122 (= lt!471346 (head!2652 (list!5622 (tokens!1713 (head!2638 objs!24)))))))

(declare-fun head!2653 (Conc!4757) Token!4650)

(assert (=> d!403122 (= lt!471346 (head!2653 (c!231627 (tokens!1713 (head!2638 objs!24)))))))

(assert (=> d!403122 (not (isEmpty!8764 (tokens!1713 (head!2638 objs!24))))))

(assert (=> d!403122 (= (head!2640 (tokens!1713 (head!2638 objs!24))) lt!471346)))

(declare-fun bs!338879 () Bool)

(assert (= bs!338879 d!403122))

(assert (=> bs!338879 m!1588471))

(assert (=> bs!338879 m!1588471))

(declare-fun m!1589891 () Bool)

(assert (=> bs!338879 m!1589891))

(declare-fun m!1589893 () Bool)

(assert (=> bs!338879 m!1589893))

(assert (=> bs!338879 m!1588403))

(assert (=> b!1409686 d!403122))

(declare-fun d!403124 () Bool)

(declare-fun lt!471349 () Token!4650)

(declare-fun last!57 (List!14444) Token!4650)

(assert (=> d!403124 (= lt!471349 (last!57 (list!5622 (tokens!1713 acc!229))))))

(declare-fun last!58 (Conc!4757) Token!4650)

(assert (=> d!403124 (= lt!471349 (last!58 (c!231627 (tokens!1713 acc!229))))))

(assert (=> d!403124 (not (isEmpty!8764 (tokens!1713 acc!229)))))

(assert (=> d!403124 (= (last!55 (tokens!1713 acc!229)) lt!471349)))

(declare-fun bs!338880 () Bool)

(assert (= bs!338880 d!403124))

(assert (=> bs!338880 m!1588473))

(assert (=> bs!338880 m!1588473))

(declare-fun m!1589895 () Bool)

(assert (=> bs!338880 m!1589895))

(declare-fun m!1589897 () Bool)

(assert (=> bs!338880 m!1589897))

(assert (=> bs!338880 m!1588409))

(assert (=> b!1409686 d!403124))

(declare-fun d!403126 () Bool)

(declare-fun lt!471350 () Bool)

(declare-fun e!900326 () Bool)

(assert (=> d!403126 (= lt!471350 e!900326)))

(declare-fun res!638784 () Bool)

(assert (=> d!403126 (=> (not res!638784) (not e!900326))))

(assert (=> d!403126 (= res!638784 (= (list!5622 (_1!7874 (lex!1006 lt!470687 (rules!10965 acc!229) (print!946 lt!470687 (singletonSeq!1155 lt!470645))))) (list!5622 (singletonSeq!1155 lt!470645))))))

(declare-fun e!900325 () Bool)

(assert (=> d!403126 (= lt!471350 e!900325)))

(declare-fun res!638782 () Bool)

(assert (=> d!403126 (=> (not res!638782) (not e!900325))))

(declare-fun lt!471351 () tuple2!13976)

(assert (=> d!403126 (= res!638782 (= (size!11846 (_1!7874 lt!471351)) 1))))

(assert (=> d!403126 (= lt!471351 (lex!1006 lt!470687 (rules!10965 acc!229) (print!946 lt!470687 (singletonSeq!1155 lt!470645))))))

(assert (=> d!403126 (not (isEmpty!8765 (rules!10965 acc!229)))))

(assert (=> d!403126 (= (rulesProduceIndividualToken!1152 lt!470687 (rules!10965 acc!229) lt!470645) lt!471350)))

(declare-fun b!1410326 () Bool)

(declare-fun res!638783 () Bool)

(assert (=> b!1410326 (=> (not res!638783) (not e!900325))))

(assert (=> b!1410326 (= res!638783 (= (apply!3690 (_1!7874 lt!471351) 0) lt!470645))))

(declare-fun b!1410327 () Bool)

(assert (=> b!1410327 (= e!900325 (isEmpty!8776 (_2!7874 lt!471351)))))

(declare-fun b!1410328 () Bool)

(assert (=> b!1410328 (= e!900326 (isEmpty!8776 (_2!7874 (lex!1006 lt!470687 (rules!10965 acc!229) (print!946 lt!470687 (singletonSeq!1155 lt!470645))))))))

(assert (= (and d!403126 res!638782) b!1410326))

(assert (= (and b!1410326 res!638783) b!1410327))

(assert (= (and d!403126 res!638784) b!1410328))

(declare-fun m!1589899 () Bool)

(assert (=> d!403126 m!1589899))

(declare-fun m!1589901 () Bool)

(assert (=> d!403126 m!1589901))

(declare-fun m!1589903 () Bool)

(assert (=> d!403126 m!1589903))

(assert (=> d!403126 m!1589899))

(assert (=> d!403126 m!1589901))

(assert (=> d!403126 m!1589899))

(declare-fun m!1589905 () Bool)

(assert (=> d!403126 m!1589905))

(assert (=> d!403126 m!1588515))

(declare-fun m!1589907 () Bool)

(assert (=> d!403126 m!1589907))

(declare-fun m!1589909 () Bool)

(assert (=> d!403126 m!1589909))

(declare-fun m!1589911 () Bool)

(assert (=> b!1410326 m!1589911))

(declare-fun m!1589913 () Bool)

(assert (=> b!1410327 m!1589913))

(assert (=> b!1410328 m!1589899))

(assert (=> b!1410328 m!1589899))

(assert (=> b!1410328 m!1589901))

(assert (=> b!1410328 m!1589901))

(assert (=> b!1410328 m!1589903))

(declare-fun m!1589915 () Bool)

(assert (=> b!1410328 m!1589915))

(assert (=> b!1409686 d!403126))

(declare-fun d!403128 () Bool)

(assert (=> d!403128 (rulesProduceIndividualToken!1152 lt!470695 (rules!10965 acc!229) lt!470683)))

(declare-fun lt!471352 () Unit!20751)

(assert (=> d!403128 (= lt!471352 (choose!8712 lt!470695 (rules!10965 acc!229) lt!470661 lt!470683))))

(assert (=> d!403128 (not (isEmpty!8765 (rules!10965 acc!229)))))

(assert (=> d!403128 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!337 lt!470695 (rules!10965 acc!229) lt!470661 lt!470683) lt!471352)))

(declare-fun bs!338881 () Bool)

(assert (= bs!338881 d!403128))

(assert (=> bs!338881 m!1588387))

(declare-fun m!1589917 () Bool)

(assert (=> bs!338881 m!1589917))

(assert (=> bs!338881 m!1588515))

(assert (=> b!1409686 d!403128))

(declare-fun d!403130 () Bool)

(assert (=> d!403130 (= (printList!645 (ite c!231659 lt!470670 lt!470674) (++!3734 (ite c!231659 lt!470666 lt!470677) (ite c!231659 lt!470684 lt!470678))) (++!3733 (printList!645 (ite c!231659 lt!470670 lt!470674) (ite c!231659 lt!470666 lt!470677)) (printList!645 (ite c!231659 lt!470670 lt!470674) (ite c!231659 lt!470684 lt!470678))))))

(declare-fun lt!471355 () Unit!20751)

(declare-fun choose!8714 (LexerInterface!2184 List!14444 List!14444) Unit!20751)

(assert (=> d!403130 (= lt!471355 (choose!8714 (ite c!231659 lt!470670 lt!470674) (ite c!231659 lt!470666 lt!470677) (ite c!231659 lt!470684 lt!470678)))))

(assert (=> d!403130 (= (lemmaPrintConcatSameAsConcatPrint!10 (ite c!231659 lt!470670 lt!470674) (ite c!231659 lt!470666 lt!470677) (ite c!231659 lt!470684 lt!470678)) lt!471355)))

(declare-fun bs!338882 () Bool)

(assert (= bs!338882 d!403130))

(declare-fun m!1589919 () Bool)

(assert (=> bs!338882 m!1589919))

(declare-fun m!1589921 () Bool)

(assert (=> bs!338882 m!1589921))

(declare-fun m!1589923 () Bool)

(assert (=> bs!338882 m!1589923))

(declare-fun m!1589925 () Bool)

(assert (=> bs!338882 m!1589925))

(declare-fun m!1589927 () Bool)

(assert (=> bs!338882 m!1589927))

(assert (=> bs!338882 m!1589925))

(assert (=> bs!338882 m!1589923))

(declare-fun m!1589929 () Bool)

(assert (=> bs!338882 m!1589929))

(assert (=> bs!338882 m!1589919))

(assert (=> bm!93961 d!403130))

(declare-fun d!403132 () Bool)

(assert (=> d!403132 (= (head!2641 (list!5624 objs!24)) (h!19781 (list!5624 objs!24)))))

(assert (=> d!402840 d!403132))

(assert (=> d!402840 d!403088))

(declare-fun d!403134 () Bool)

(declare-fun lt!471358 () PrintableTokens!770)

(assert (=> d!403134 (= lt!471358 (head!2641 (list!5632 (c!231628 objs!24))))))

(declare-fun e!900329 () PrintableTokens!770)

(assert (=> d!403134 (= lt!471358 e!900329)))

(declare-fun c!231760 () Bool)

(assert (=> d!403134 (= c!231760 (is-Leaf!7202 (c!231628 objs!24)))))

(assert (=> d!403134 (isBalanced!1402 (c!231628 objs!24))))

(assert (=> d!403134 (= (head!2642 (c!231628 objs!24)) lt!471358)))

(declare-fun b!1410333 () Bool)

(declare-fun apply!3691 (IArray!9521 Int) PrintableTokens!770)

(assert (=> b!1410333 (= e!900329 (apply!3691 (xs!7485 (c!231628 objs!24)) 0))))

(declare-fun b!1410334 () Bool)

(assert (=> b!1410334 (= e!900329 (head!2642 (left!12279 (c!231628 objs!24))))))

(assert (= (and d!403134 c!231760) b!1410333))

(assert (= (and d!403134 (not c!231760)) b!1410334))

(assert (=> d!403134 m!1589771))

(assert (=> d!403134 m!1589771))

(declare-fun m!1589931 () Bool)

(assert (=> d!403134 m!1589931))

(assert (=> d!403134 m!1588513))

(declare-fun m!1589933 () Bool)

(assert (=> b!1410333 m!1589933))

(declare-fun m!1589935 () Bool)

(assert (=> b!1410334 m!1589935))

(assert (=> d!402840 d!403134))

(assert (=> d!402840 d!402864))

(declare-fun d!403136 () Bool)

(declare-fun res!638785 () Bool)

(declare-fun e!900330 () Bool)

(assert (=> d!403136 (=> (not res!638785) (not e!900330))))

(assert (=> d!403136 (= res!638785 (rulesValid!939 Lexer!2182 (rules!10965 sep!3)))))

(assert (=> d!403136 (= (rulesInvariant!2054 Lexer!2182 (rules!10965 sep!3)) e!900330)))

(declare-fun b!1410335 () Bool)

(assert (=> b!1410335 (= e!900330 (noDuplicateTag!939 Lexer!2182 (rules!10965 sep!3) Nil!14386))))

(assert (= (and d!403136 res!638785) b!1410335))

(declare-fun m!1589937 () Bool)

(assert (=> d!403136 m!1589937))

(declare-fun m!1589939 () Bool)

(assert (=> b!1410335 m!1589939))

(assert (=> b!1409713 d!403136))

(declare-fun d!403138 () Bool)

(assert (=> d!403138 (= (inv!18740 (xs!7485 (c!231628 objs!24))) (<= (size!11837 (innerList!4818 (xs!7485 (c!231628 objs!24)))) 2147483647))))

(declare-fun bs!338883 () Bool)

(assert (= bs!338883 d!403138))

(declare-fun m!1589941 () Bool)

(assert (=> bs!338883 m!1589941))

(assert (=> b!1409762 d!403138))

(declare-fun d!403140 () Bool)

(assert (=> d!403140 (= (get!4425 lt!470679) (v!21722 lt!470679))))

(assert (=> b!1409678 d!403140))

(declare-fun d!403142 () Bool)

(declare-fun e!900331 () Bool)

(assert (=> d!403142 e!900331))

(declare-fun res!638786 () Bool)

(assert (=> d!403142 (=> (not res!638786) (not e!900331))))

(assert (=> d!403142 (= res!638786 (= (list!5622 (_1!7874 (lex!1006 Lexer!2182 (rules!10965 (head!2638 objs!24)) (print!946 Lexer!2182 (seqFromList!1668 (ite c!231657 call!93936 call!93948)))))) (ite c!231657 call!93936 call!93948)))))

(declare-fun lt!471381 () Unit!20751)

(declare-fun e!900332 () Unit!20751)

(assert (=> d!403142 (= lt!471381 e!900332)))

(declare-fun c!231761 () Bool)

(assert (=> d!403142 (= c!231761 (or (is-Nil!14378 (ite c!231657 call!93936 call!93948)) (is-Nil!14378 (t!123363 (ite c!231657 call!93936 call!93948)))))))

(assert (=> d!403142 (not (isEmpty!8765 (rules!10965 (head!2638 objs!24))))))

(assert (=> d!403142 (= (theoremInvertabilityWhenTokenListSeparable!15 Lexer!2182 (rules!10965 (head!2638 objs!24)) (ite c!231657 call!93936 call!93948)) lt!471381)))

(declare-fun b!1410336 () Bool)

(declare-fun Unit!20816 () Unit!20751)

(assert (=> b!1410336 (= e!900332 Unit!20816)))

(declare-fun b!1410337 () Bool)

(declare-fun Unit!20817 () Unit!20751)

(assert (=> b!1410337 (= e!900332 Unit!20817)))

(declare-fun lt!471380 () BalanceConc!9452)

(assert (=> b!1410337 (= lt!471380 (print!946 Lexer!2182 (seqFromList!1668 (ite c!231657 call!93936 call!93948))))))

(declare-fun lt!471364 () BalanceConc!9452)

(assert (=> b!1410337 (= lt!471364 (print!946 Lexer!2182 (seqFromList!1668 (t!123363 (ite c!231657 call!93936 call!93948)))))))

(declare-fun lt!471384 () tuple2!13976)

(assert (=> b!1410337 (= lt!471384 (lex!1006 Lexer!2182 (rules!10965 (head!2638 objs!24)) lt!471364))))

(declare-fun lt!471366 () List!14443)

(assert (=> b!1410337 (= lt!471366 (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93936 call!93948)))))))

(declare-fun lt!471372 () List!14443)

(assert (=> b!1410337 (= lt!471372 (list!5623 lt!471364))))

(declare-fun lt!471367 () Unit!20751)

(assert (=> b!1410337 (= lt!471367 (lemmaConcatTwoListThenFirstIsPrefix!732 lt!471366 lt!471372))))

(assert (=> b!1410337 (isPrefix!1165 lt!471366 (++!3733 lt!471366 lt!471372))))

(declare-fun lt!471361 () Unit!20751)

(assert (=> b!1410337 (= lt!471361 lt!471367)))

(declare-fun lt!471360 () Unit!20751)

(assert (=> b!1410337 (= lt!471360 (theoremInvertabilityWhenTokenListSeparable!15 Lexer!2182 (rules!10965 (head!2638 objs!24)) (t!123363 (ite c!231657 call!93936 call!93948))))))

(declare-fun lt!471383 () Unit!20751)

(assert (=> b!1410337 (= lt!471383 (seqFromListBHdTlConstructive!61 (h!19779 (t!123363 (ite c!231657 call!93936 call!93948))) (t!123363 (t!123363 (ite c!231657 call!93936 call!93948))) (_1!7874 lt!471384)))))

(assert (=> b!1410337 (= (list!5622 (_1!7874 lt!471384)) (list!5622 (prepend!377 (seqFromList!1668 (t!123363 (t!123363 (ite c!231657 call!93936 call!93948)))) (h!19779 (t!123363 (ite c!231657 call!93936 call!93948))))))))

(declare-fun lt!471378 () Unit!20751)

(assert (=> b!1410337 (= lt!471378 lt!471383)))

(declare-fun lt!471368 () Option!2755)

(assert (=> b!1410337 (= lt!471368 (maxPrefix!1155 Lexer!2182 (rules!10965 (head!2638 objs!24)) (list!5623 lt!471380)))))

(assert (=> b!1410337 (= (print!946 Lexer!2182 (singletonSeq!1155 (h!19779 (ite c!231657 call!93936 call!93948)))) (printTailRec!627 Lexer!2182 (singletonSeq!1155 (h!19779 (ite c!231657 call!93936 call!93948))) 0 (BalanceConc!9453 Empty!4756)))))

(declare-fun lt!471379 () Unit!20751)

(declare-fun Unit!20818 () Unit!20751)

(assert (=> b!1410337 (= lt!471379 Unit!20818)))

(declare-fun lt!471374 () Unit!20751)

(assert (=> b!1410337 (= lt!471374 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!205 Lexer!2182 (rules!10965 (head!2638 objs!24)) (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93936 call!93948)))) (list!5623 lt!471364)))))

(assert (=> b!1410337 (= (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93936 call!93948)))) (originalCharacters!3356 (h!19779 (ite c!231657 call!93936 call!93948))))))

(declare-fun lt!471365 () Unit!20751)

(declare-fun Unit!20819 () Unit!20751)

(assert (=> b!1410337 (= lt!471365 Unit!20819)))

(assert (=> b!1410337 (= (list!5623 (singletonSeq!1156 (apply!3686 (charsOf!1460 (h!19779 (t!123363 (ite c!231657 call!93936 call!93948)))) 0))) (Cons!14377 (head!2646 (originalCharacters!3356 (h!19779 (t!123363 (ite c!231657 call!93936 call!93948))))) Nil!14377))))

(declare-fun lt!471382 () Unit!20751)

(declare-fun Unit!20820 () Unit!20751)

(assert (=> b!1410337 (= lt!471382 Unit!20820)))

(assert (=> b!1410337 (= (list!5623 (singletonSeq!1156 (apply!3686 (charsOf!1460 (h!19779 (t!123363 (ite c!231657 call!93936 call!93948)))) 0))) (Cons!14377 (head!2646 (list!5623 lt!471364)) Nil!14377))))

(declare-fun lt!471363 () Unit!20751)

(declare-fun Unit!20821 () Unit!20751)

(assert (=> b!1410337 (= lt!471363 Unit!20821)))

(assert (=> b!1410337 (= (list!5623 (singletonSeq!1156 (apply!3686 (charsOf!1460 (h!19779 (t!123363 (ite c!231657 call!93936 call!93948)))) 0))) (Cons!14377 (head!2647 lt!471364) Nil!14377))))

(declare-fun lt!471371 () Unit!20751)

(declare-fun Unit!20822 () Unit!20751)

(assert (=> b!1410337 (= lt!471371 Unit!20822)))

(assert (=> b!1410337 (isDefined!2254 (maxPrefix!1155 Lexer!2182 (rules!10965 (head!2638 objs!24)) (originalCharacters!3356 (h!19779 (ite c!231657 call!93936 call!93948)))))))

(declare-fun lt!471377 () Unit!20751)

(declare-fun Unit!20823 () Unit!20751)

(assert (=> b!1410337 (= lt!471377 Unit!20823)))

(assert (=> b!1410337 (isDefined!2254 (maxPrefix!1155 Lexer!2182 (rules!10965 (head!2638 objs!24)) (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93936 call!93948))))))))

(declare-fun lt!471375 () Unit!20751)

(declare-fun Unit!20824 () Unit!20751)

(assert (=> b!1410337 (= lt!471375 Unit!20824)))

(declare-fun lt!471362 () Unit!20751)

(declare-fun Unit!20825 () Unit!20751)

(assert (=> b!1410337 (= lt!471362 Unit!20825)))

(assert (=> b!1410337 (= (_1!7875 (get!4427 (maxPrefix!1155 Lexer!2182 (rules!10965 (head!2638 objs!24)) (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93936 call!93948))))))) (h!19779 (ite c!231657 call!93936 call!93948)))))

(declare-fun lt!471359 () Unit!20751)

(declare-fun Unit!20826 () Unit!20751)

(assert (=> b!1410337 (= lt!471359 Unit!20826)))

(assert (=> b!1410337 (isEmpty!8775 (_2!7875 (get!4427 (maxPrefix!1155 Lexer!2182 (rules!10965 (head!2638 objs!24)) (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93936 call!93948))))))))))

(declare-fun lt!471369 () Unit!20751)

(declare-fun Unit!20827 () Unit!20751)

(assert (=> b!1410337 (= lt!471369 Unit!20827)))

(assert (=> b!1410337 (matchR!1791 (regex!2494 (rule!4257 (h!19779 (ite c!231657 call!93936 call!93948)))) (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93936 call!93948)))))))

(declare-fun lt!471370 () Unit!20751)

(declare-fun Unit!20828 () Unit!20751)

(assert (=> b!1410337 (= lt!471370 Unit!20828)))

(assert (=> b!1410337 (= (rule!4257 (h!19779 (ite c!231657 call!93936 call!93948))) (rule!4257 (h!19779 (ite c!231657 call!93936 call!93948))))))

(declare-fun lt!471376 () Unit!20751)

(declare-fun Unit!20829 () Unit!20751)

(assert (=> b!1410337 (= lt!471376 Unit!20829)))

(declare-fun lt!471373 () Unit!20751)

(assert (=> b!1410337 (= lt!471373 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!3 Lexer!2182 (rules!10965 (head!2638 objs!24)) (h!19779 (ite c!231657 call!93936 call!93948)) (rule!4257 (h!19779 (ite c!231657 call!93936 call!93948))) (list!5623 lt!471364)))))

(declare-fun b!1410338 () Bool)

(assert (=> b!1410338 (= e!900331 (isEmpty!8776 (_2!7874 (lex!1006 Lexer!2182 (rules!10965 (head!2638 objs!24)) (print!946 Lexer!2182 (seqFromList!1668 (ite c!231657 call!93936 call!93948)))))))))

(assert (= (and d!403142 c!231761) b!1410336))

(assert (= (and d!403142 (not c!231761)) b!1410337))

(assert (= (and d!403142 res!638786) b!1410338))

(declare-fun m!1589943 () Bool)

(assert (=> d!403142 m!1589943))

(assert (=> d!403142 m!1589943))

(declare-fun m!1589945 () Bool)

(assert (=> d!403142 m!1589945))

(declare-fun m!1589947 () Bool)

(assert (=> d!403142 m!1589947))

(declare-fun m!1589949 () Bool)

(assert (=> d!403142 m!1589949))

(assert (=> d!403142 m!1589945))

(declare-fun m!1589951 () Bool)

(assert (=> d!403142 m!1589951))

(declare-fun m!1589953 () Bool)

(assert (=> b!1410337 m!1589953))

(declare-fun m!1589955 () Bool)

(assert (=> b!1410337 m!1589955))

(declare-fun m!1589957 () Bool)

(assert (=> b!1410337 m!1589957))

(declare-fun m!1589959 () Bool)

(assert (=> b!1410337 m!1589959))

(declare-fun m!1589961 () Bool)

(assert (=> b!1410337 m!1589961))

(declare-fun m!1589963 () Bool)

(assert (=> b!1410337 m!1589963))

(declare-fun m!1589965 () Bool)

(assert (=> b!1410337 m!1589965))

(assert (=> b!1410337 m!1589955))

(assert (=> b!1410337 m!1589961))

(declare-fun m!1589967 () Bool)

(assert (=> b!1410337 m!1589967))

(assert (=> b!1410337 m!1589955))

(assert (=> b!1410337 m!1589963))

(assert (=> b!1410337 m!1589961))

(declare-fun m!1589969 () Bool)

(assert (=> b!1410337 m!1589969))

(declare-fun m!1589971 () Bool)

(assert (=> b!1410337 m!1589971))

(assert (=> b!1410337 m!1589961))

(declare-fun m!1589973 () Bool)

(assert (=> b!1410337 m!1589973))

(declare-fun m!1589975 () Bool)

(assert (=> b!1410337 m!1589975))

(declare-fun m!1589977 () Bool)

(assert (=> b!1410337 m!1589977))

(declare-fun m!1589979 () Bool)

(assert (=> b!1410337 m!1589979))

(declare-fun m!1589981 () Bool)

(assert (=> b!1410337 m!1589981))

(assert (=> b!1410337 m!1589971))

(assert (=> b!1410337 m!1589975))

(declare-fun m!1589983 () Bool)

(assert (=> b!1410337 m!1589983))

(assert (=> b!1410337 m!1589953))

(declare-fun m!1589985 () Bool)

(assert (=> b!1410337 m!1589985))

(declare-fun m!1589987 () Bool)

(assert (=> b!1410337 m!1589987))

(declare-fun m!1589989 () Bool)

(assert (=> b!1410337 m!1589989))

(declare-fun m!1589991 () Bool)

(assert (=> b!1410337 m!1589991))

(declare-fun m!1589993 () Bool)

(assert (=> b!1410337 m!1589993))

(assert (=> b!1410337 m!1589991))

(assert (=> b!1410337 m!1589943))

(assert (=> b!1410337 m!1589955))

(declare-fun m!1589995 () Bool)

(assert (=> b!1410337 m!1589995))

(assert (=> b!1410337 m!1589943))

(assert (=> b!1410337 m!1589945))

(declare-fun m!1589997 () Bool)

(assert (=> b!1410337 m!1589997))

(declare-fun m!1589999 () Bool)

(assert (=> b!1410337 m!1589999))

(declare-fun m!1590001 () Bool)

(assert (=> b!1410337 m!1590001))

(assert (=> b!1410337 m!1590001))

(assert (=> b!1410337 m!1589979))

(declare-fun m!1590003 () Bool)

(assert (=> b!1410337 m!1590003))

(declare-fun m!1590005 () Bool)

(assert (=> b!1410337 m!1590005))

(assert (=> b!1410337 m!1589957))

(declare-fun m!1590007 () Bool)

(assert (=> b!1410337 m!1590007))

(declare-fun m!1590009 () Bool)

(assert (=> b!1410337 m!1590009))

(declare-fun m!1590011 () Bool)

(assert (=> b!1410337 m!1590011))

(assert (=> b!1410337 m!1590009))

(declare-fun m!1590013 () Bool)

(assert (=> b!1410337 m!1590013))

(assert (=> b!1410337 m!1589987))

(assert (=> b!1410337 m!1589983))

(declare-fun m!1590015 () Bool)

(assert (=> b!1410337 m!1590015))

(assert (=> b!1410337 m!1589963))

(declare-fun m!1590017 () Bool)

(assert (=> b!1410337 m!1590017))

(declare-fun m!1590019 () Bool)

(assert (=> b!1410337 m!1590019))

(assert (=> b!1410337 m!1589977))

(declare-fun m!1590021 () Bool)

(assert (=> b!1410337 m!1590021))

(assert (=> b!1410337 m!1590009))

(declare-fun m!1590023 () Bool)

(assert (=> b!1410337 m!1590023))

(assert (=> b!1410338 m!1589943))

(assert (=> b!1410338 m!1589943))

(assert (=> b!1410338 m!1589945))

(assert (=> b!1410338 m!1589945))

(assert (=> b!1410338 m!1589951))

(declare-fun m!1590025 () Bool)

(assert (=> b!1410338 m!1590025))

(assert (=> bm!93947 d!403142))

(assert (=> b!1409692 d!403140))

(declare-fun e!900333 () Bool)

(declare-fun lt!471385 () List!14444)

(declare-fun b!1410342 () Bool)

(assert (=> b!1410342 (= e!900333 (or (not (= (list!5622 (tokens!1713 (head!2638 objs!24))) Nil!14378)) (= lt!471385 (list!5622 (tokens!1713 acc!229)))))))

(declare-fun b!1410340 () Bool)

(declare-fun e!900334 () List!14444)

(assert (=> b!1410340 (= e!900334 (Cons!14378 (h!19779 (list!5622 (tokens!1713 acc!229))) (++!3734 (t!123363 (list!5622 (tokens!1713 acc!229))) (list!5622 (tokens!1713 (head!2638 objs!24))))))))

(declare-fun b!1410339 () Bool)

(assert (=> b!1410339 (= e!900334 (list!5622 (tokens!1713 (head!2638 objs!24))))))

(declare-fun d!403144 () Bool)

(assert (=> d!403144 e!900333))

(declare-fun res!638788 () Bool)

(assert (=> d!403144 (=> (not res!638788) (not e!900333))))

(assert (=> d!403144 (= res!638788 (= (content!2136 lt!471385) (set.union (content!2136 (list!5622 (tokens!1713 acc!229))) (content!2136 (list!5622 (tokens!1713 (head!2638 objs!24)))))))))

(assert (=> d!403144 (= lt!471385 e!900334)))

(declare-fun c!231762 () Bool)

(assert (=> d!403144 (= c!231762 (is-Nil!14378 (list!5622 (tokens!1713 acc!229))))))

(assert (=> d!403144 (= (++!3734 (list!5622 (tokens!1713 acc!229)) (list!5622 (tokens!1713 (head!2638 objs!24)))) lt!471385)))

(declare-fun b!1410341 () Bool)

(declare-fun res!638787 () Bool)

(assert (=> b!1410341 (=> (not res!638787) (not e!900333))))

(assert (=> b!1410341 (= res!638787 (= (size!11841 lt!471385) (+ (size!11841 (list!5622 (tokens!1713 acc!229))) (size!11841 (list!5622 (tokens!1713 (head!2638 objs!24)))))))))

(assert (= (and d!403144 c!231762) b!1410339))

(assert (= (and d!403144 (not c!231762)) b!1410340))

(assert (= (and d!403144 res!638788) b!1410341))

(assert (= (and b!1410341 res!638787) b!1410342))

(assert (=> b!1410340 m!1588471))

(declare-fun m!1590027 () Bool)

(assert (=> b!1410340 m!1590027))

(declare-fun m!1590029 () Bool)

(assert (=> d!403144 m!1590029))

(assert (=> d!403144 m!1588473))

(declare-fun m!1590031 () Bool)

(assert (=> d!403144 m!1590031))

(assert (=> d!403144 m!1588471))

(declare-fun m!1590033 () Bool)

(assert (=> d!403144 m!1590033))

(declare-fun m!1590035 () Bool)

(assert (=> b!1410341 m!1590035))

(assert (=> b!1410341 m!1588473))

(declare-fun m!1590037 () Bool)

(assert (=> b!1410341 m!1590037))

(assert (=> b!1410341 m!1588471))

(declare-fun m!1590039 () Bool)

(assert (=> b!1410341 m!1590039))

(assert (=> b!1409692 d!403144))

(declare-fun d!403146 () Bool)

(assert (=> d!403146 (= (list!5622 (tokens!1713 acc!229)) (list!5629 (c!231627 (tokens!1713 acc!229))))))

(declare-fun bs!338884 () Bool)

(assert (= bs!338884 d!403146))

(declare-fun m!1590041 () Bool)

(assert (=> bs!338884 m!1590041))

(assert (=> b!1409692 d!403146))

(declare-fun d!403148 () Bool)

(assert (=> d!403148 (= (list!5622 (tokens!1713 (head!2638 objs!24))) (list!5629 (c!231627 (tokens!1713 (head!2638 objs!24)))))))

(declare-fun bs!338885 () Bool)

(assert (= bs!338885 d!403148))

(declare-fun m!1590043 () Bool)

(assert (=> bs!338885 m!1590043))

(assert (=> b!1409692 d!403148))

(declare-fun d!403150 () Bool)

(assert (=> d!403150 (= (list!5622 (tokens!1713 (get!4425 lt!470679))) (list!5629 (c!231627 (tokens!1713 (get!4425 lt!470679)))))))

(declare-fun bs!338886 () Bool)

(assert (= bs!338886 d!403150))

(declare-fun m!1590045 () Bool)

(assert (=> bs!338886 m!1590045))

(assert (=> b!1409692 d!403150))

(assert (=> b!1409568 d!402870))

(declare-fun d!403152 () Bool)

(assert (=> d!403152 (= (separableTokens!166 Lexer!2182 (tokens!1713 sep!3) (rules!10965 sep!3)) (tokensListTwoByTwoPredicateSeparable!88 Lexer!2182 (tokens!1713 sep!3) 0 (rules!10965 sep!3)))))

(declare-fun bs!338887 () Bool)

(assert (= bs!338887 d!403152))

(declare-fun m!1590047 () Bool)

(assert (=> bs!338887 m!1590047))

(assert (=> b!1409715 d!403152))

(declare-fun d!403154 () Bool)

(assert (=> d!403154 (= (printList!645 (ite c!231657 lt!470655 lt!470668) (++!3734 (ite c!231657 lt!470667 lt!470649) (ite c!231657 lt!470638 lt!470639))) (++!3733 (printList!645 (ite c!231657 lt!470655 lt!470668) (ite c!231657 lt!470667 lt!470649)) (printList!645 (ite c!231657 lt!470655 lt!470668) (ite c!231657 lt!470638 lt!470639))))))

(declare-fun lt!471386 () Unit!20751)

(assert (=> d!403154 (= lt!471386 (choose!8714 (ite c!231657 lt!470655 lt!470668) (ite c!231657 lt!470667 lt!470649) (ite c!231657 lt!470638 lt!470639)))))

(assert (=> d!403154 (= (lemmaPrintConcatSameAsConcatPrint!10 (ite c!231657 lt!470655 lt!470668) (ite c!231657 lt!470667 lt!470649) (ite c!231657 lt!470638 lt!470639)) lt!471386)))

(declare-fun bs!338888 () Bool)

(assert (= bs!338888 d!403154))

(declare-fun m!1590049 () Bool)

(assert (=> bs!338888 m!1590049))

(declare-fun m!1590051 () Bool)

(assert (=> bs!338888 m!1590051))

(declare-fun m!1590053 () Bool)

(assert (=> bs!338888 m!1590053))

(declare-fun m!1590055 () Bool)

(assert (=> bs!338888 m!1590055))

(declare-fun m!1590057 () Bool)

(assert (=> bs!338888 m!1590057))

(assert (=> bs!338888 m!1590055))

(assert (=> bs!338888 m!1590053))

(declare-fun m!1590059 () Bool)

(assert (=> bs!338888 m!1590059))

(assert (=> bs!338888 m!1590049))

(assert (=> bm!93967 d!403154))

(assert (=> d!402866 d!402958))

(declare-fun d!403156 () Bool)

(declare-fun lt!471389 () BalanceConc!9452)

(assert (=> d!403156 (= (list!5623 lt!471389) (originalCharacters!3356 (ite c!231657 (h!19779 lt!470654) (h!19779 lt!470673))))))

(declare-fun dynLambda!6673 (Int TokenValue!2584) BalanceConc!9452)

(assert (=> d!403156 (= lt!471389 (dynLambda!6673 (toChars!3648 (transformation!2494 (rule!4257 (ite c!231657 (h!19779 lt!470654) (h!19779 lt!470673))))) (value!80713 (ite c!231657 (h!19779 lt!470654) (h!19779 lt!470673)))))))

(assert (=> d!403156 (= (charsOf!1460 (ite c!231657 (h!19779 lt!470654) (h!19779 lt!470673))) lt!471389)))

(declare-fun b_lambda!44497 () Bool)

(assert (=> (not b_lambda!44497) (not d!403156)))

(declare-fun tb!73333 () Bool)

(declare-fun t!123429 () Bool)

(assert (=> (and b!1409741 (= (toChars!3648 (transformation!2494 (h!19780 (rules!10965 sep!3)))) (toChars!3648 (transformation!2494 (rule!4257 (ite c!231657 (h!19779 lt!470654) (h!19779 lt!470673)))))) t!123429) tb!73333))

(declare-fun tp!400332 () Bool)

(declare-fun b!1410347 () Bool)

(declare-fun e!900337 () Bool)

(declare-fun inv!18744 (Conc!4756) Bool)

(assert (=> b!1410347 (= e!900337 (and (inv!18744 (c!231626 (dynLambda!6673 (toChars!3648 (transformation!2494 (rule!4257 (ite c!231657 (h!19779 lt!470654) (h!19779 lt!470673))))) (value!80713 (ite c!231657 (h!19779 lt!470654) (h!19779 lt!470673)))))) tp!400332))))

(declare-fun result!89212 () Bool)

(declare-fun inv!18745 (BalanceConc!9452) Bool)

(assert (=> tb!73333 (= result!89212 (and (inv!18745 (dynLambda!6673 (toChars!3648 (transformation!2494 (rule!4257 (ite c!231657 (h!19779 lt!470654) (h!19779 lt!470673))))) (value!80713 (ite c!231657 (h!19779 lt!470654) (h!19779 lt!470673))))) e!900337))))

(assert (= tb!73333 b!1410347))

(declare-fun m!1590061 () Bool)

(assert (=> b!1410347 m!1590061))

(declare-fun m!1590063 () Bool)

(assert (=> tb!73333 m!1590063))

(assert (=> d!403156 t!123429))

(declare-fun b_and!94467 () Bool)

(assert (= b_and!94449 (and (=> t!123429 result!89212) b_and!94467)))

(declare-fun tb!73335 () Bool)

(declare-fun t!123431 () Bool)

(assert (=> (and b!1409766 (= (toChars!3648 (transformation!2494 (h!19780 (rules!10965 acc!229)))) (toChars!3648 (transformation!2494 (rule!4257 (ite c!231657 (h!19779 lt!470654) (h!19779 lt!470673)))))) t!123431) tb!73335))

(declare-fun result!89216 () Bool)

(assert (= result!89216 result!89212))

(assert (=> d!403156 t!123431))

(declare-fun b_and!94469 () Bool)

(assert (= b_and!94453 (and (=> t!123431 result!89216) b_and!94469)))

(declare-fun m!1590065 () Bool)

(assert (=> d!403156 m!1590065))

(declare-fun m!1590067 () Bool)

(assert (=> d!403156 m!1590067))

(assert (=> bm!93949 d!403156))

(declare-fun d!403158 () Bool)

(declare-fun res!638795 () Bool)

(declare-fun e!900340 () Bool)

(assert (=> d!403158 (=> (not res!638795) (not e!900340))))

(declare-fun size!11847 (Conc!4757) Int)

(assert (=> d!403158 (= res!638795 (= (csize!9744 (c!231627 (tokens!1713 sep!3))) (+ (size!11847 (left!12278 (c!231627 (tokens!1713 sep!3)))) (size!11847 (right!12608 (c!231627 (tokens!1713 sep!3)))))))))

(assert (=> d!403158 (= (inv!18730 (c!231627 (tokens!1713 sep!3))) e!900340)))

(declare-fun b!1410354 () Bool)

(declare-fun res!638796 () Bool)

(assert (=> b!1410354 (=> (not res!638796) (not e!900340))))

(assert (=> b!1410354 (= res!638796 (and (not (= (left!12278 (c!231627 (tokens!1713 sep!3))) Empty!4757)) (not (= (right!12608 (c!231627 (tokens!1713 sep!3))) Empty!4757))))))

(declare-fun b!1410355 () Bool)

(declare-fun res!638797 () Bool)

(assert (=> b!1410355 (=> (not res!638797) (not e!900340))))

(assert (=> b!1410355 (= res!638797 (= (cheight!4968 (c!231627 (tokens!1713 sep!3))) (+ (max!0 (height!688 (left!12278 (c!231627 (tokens!1713 sep!3)))) (height!688 (right!12608 (c!231627 (tokens!1713 sep!3))))) 1)))))

(declare-fun b!1410356 () Bool)

(assert (=> b!1410356 (= e!900340 (<= 0 (cheight!4968 (c!231627 (tokens!1713 sep!3)))))))

(assert (= (and d!403158 res!638795) b!1410354))

(assert (= (and b!1410354 res!638796) b!1410355))

(assert (= (and b!1410355 res!638797) b!1410356))

(declare-fun m!1590069 () Bool)

(assert (=> d!403158 m!1590069))

(declare-fun m!1590071 () Bool)

(assert (=> d!403158 m!1590071))

(assert (=> b!1410355 m!1589489))

(assert (=> b!1410355 m!1589491))

(assert (=> b!1410355 m!1589489))

(assert (=> b!1410355 m!1589491))

(declare-fun m!1590073 () Bool)

(assert (=> b!1410355 m!1590073))

(assert (=> b!1409728 d!403158))

(declare-fun e!900341 () Bool)

(declare-fun lt!471390 () List!14444)

(declare-fun b!1410360 () Bool)

(assert (=> b!1410360 (= e!900341 (or (not (= (ite c!231657 lt!470638 (ite c!231659 lt!470684 lt!470639)) Nil!14378)) (= lt!471390 (ite c!231657 lt!470667 (ite c!231659 lt!470666 lt!470649)))))))

(declare-fun b!1410358 () Bool)

(declare-fun e!900342 () List!14444)

(assert (=> b!1410358 (= e!900342 (Cons!14378 (h!19779 (ite c!231657 lt!470667 (ite c!231659 lt!470666 lt!470649))) (++!3734 (t!123363 (ite c!231657 lt!470667 (ite c!231659 lt!470666 lt!470649))) (ite c!231657 lt!470638 (ite c!231659 lt!470684 lt!470639)))))))

(declare-fun b!1410357 () Bool)

(assert (=> b!1410357 (= e!900342 (ite c!231657 lt!470638 (ite c!231659 lt!470684 lt!470639)))))

(declare-fun d!403160 () Bool)

(assert (=> d!403160 e!900341))

(declare-fun res!638799 () Bool)

(assert (=> d!403160 (=> (not res!638799) (not e!900341))))

(assert (=> d!403160 (= res!638799 (= (content!2136 lt!471390) (set.union (content!2136 (ite c!231657 lt!470667 (ite c!231659 lt!470666 lt!470649))) (content!2136 (ite c!231657 lt!470638 (ite c!231659 lt!470684 lt!470639))))))))

(assert (=> d!403160 (= lt!471390 e!900342)))

(declare-fun c!231763 () Bool)

(assert (=> d!403160 (= c!231763 (is-Nil!14378 (ite c!231657 lt!470667 (ite c!231659 lt!470666 lt!470649))))))

(assert (=> d!403160 (= (++!3734 (ite c!231657 lt!470667 (ite c!231659 lt!470666 lt!470649)) (ite c!231657 lt!470638 (ite c!231659 lt!470684 lt!470639))) lt!471390)))

(declare-fun b!1410359 () Bool)

(declare-fun res!638798 () Bool)

(assert (=> b!1410359 (=> (not res!638798) (not e!900341))))

(assert (=> b!1410359 (= res!638798 (= (size!11841 lt!471390) (+ (size!11841 (ite c!231657 lt!470667 (ite c!231659 lt!470666 lt!470649))) (size!11841 (ite c!231657 lt!470638 (ite c!231659 lt!470684 lt!470639))))))))

(assert (= (and d!403160 c!231763) b!1410357))

(assert (= (and d!403160 (not c!231763)) b!1410358))

(assert (= (and d!403160 res!638799) b!1410359))

(assert (= (and b!1410359 res!638798) b!1410360))

(declare-fun m!1590075 () Bool)

(assert (=> b!1410358 m!1590075))

(declare-fun m!1590077 () Bool)

(assert (=> d!403160 m!1590077))

(declare-fun m!1590079 () Bool)

(assert (=> d!403160 m!1590079))

(declare-fun m!1590081 () Bool)

(assert (=> d!403160 m!1590081))

(declare-fun m!1590083 () Bool)

(assert (=> b!1410359 m!1590083))

(declare-fun m!1590085 () Bool)

(assert (=> b!1410359 m!1590085))

(declare-fun m!1590087 () Bool)

(assert (=> b!1410359 m!1590087))

(assert (=> bm!93963 d!403160))

(declare-fun bs!338891 () Bool)

(declare-fun d!403162 () Bool)

(assert (= bs!338891 (and d!403162 d!402950)))

(declare-fun lambda!62358 () Int)

(assert (=> bs!338891 (= (= Lexer!2182 lt!470653) (= lambda!62358 lambda!62349))))

(declare-fun b!1410394 () Bool)

(declare-fun e!900356 () Bool)

(assert (=> b!1410394 (= e!900356 true)))

(declare-fun b!1410393 () Bool)

(declare-fun e!900355 () Bool)

(assert (=> b!1410393 (= e!900355 e!900356)))

(declare-fun b!1410392 () Bool)

(declare-fun e!900354 () Bool)

(assert (=> b!1410392 (= e!900354 e!900355)))

(assert (=> d!403162 e!900354))

(assert (= b!1410393 b!1410394))

(assert (= b!1410392 b!1410393))

(assert (= (and d!403162 (is-Cons!14379 (rules!10965 acc!229))) b!1410392))

(assert (=> b!1410394 (< (dynLambda!6665 order!8789 (toValue!3789 (transformation!2494 (h!19780 (rules!10965 acc!229))))) (dynLambda!6666 order!8791 lambda!62358))))

(assert (=> b!1410394 (< (dynLambda!6667 order!8793 (toChars!3648 (transformation!2494 (h!19780 (rules!10965 acc!229))))) (dynLambda!6666 order!8791 lambda!62358))))

(assert (=> d!403162 true))

(declare-fun e!900353 () Bool)

(assert (=> d!403162 e!900353))

(declare-fun res!638828 () Bool)

(assert (=> d!403162 (=> (not res!638828) (not e!900353))))

(declare-fun lt!471407 () Bool)

(assert (=> d!403162 (= res!638828 (= lt!471407 (forall!3502 (list!5622 (tokens!1713 acc!229)) lambda!62358)))))

(declare-fun forall!3507 (BalanceConc!9454 Int) Bool)

(assert (=> d!403162 (= lt!471407 (forall!3507 (tokens!1713 acc!229) lambda!62358))))

(assert (=> d!403162 (not (isEmpty!8765 (rules!10965 acc!229)))))

(assert (=> d!403162 (= (rulesProduceEachTokenIndividually!781 Lexer!2182 (rules!10965 acc!229) (tokens!1713 acc!229)) lt!471407)))

(declare-fun b!1410391 () Bool)

(assert (=> b!1410391 (= e!900353 (= lt!471407 (rulesProduceEachTokenIndividuallyList!668 Lexer!2182 (rules!10965 acc!229) (list!5622 (tokens!1713 acc!229)))))))

(assert (= (and d!403162 res!638828) b!1410391))

(assert (=> d!403162 m!1588473))

(assert (=> d!403162 m!1588473))

(declare-fun m!1590135 () Bool)

(assert (=> d!403162 m!1590135))

(declare-fun m!1590137 () Bool)

(assert (=> d!403162 m!1590137))

(assert (=> d!403162 m!1588515))

(assert (=> b!1410391 m!1588473))

(assert (=> b!1410391 m!1588473))

(declare-fun m!1590139 () Bool)

(assert (=> b!1410391 m!1590139))

(assert (=> b!1409711 d!403162))

(declare-fun d!403174 () Bool)

(declare-fun c!231768 () Bool)

(assert (=> d!403174 (= c!231768 (is-Node!4757 (left!12278 (c!231627 (tokens!1713 acc!229)))))))

(declare-fun e!900357 () Bool)

(assert (=> d!403174 (= (inv!18720 (left!12278 (c!231627 (tokens!1713 acc!229)))) e!900357)))

(declare-fun b!1410395 () Bool)

(assert (=> b!1410395 (= e!900357 (inv!18730 (left!12278 (c!231627 (tokens!1713 acc!229)))))))

(declare-fun b!1410396 () Bool)

(declare-fun e!900358 () Bool)

(assert (=> b!1410396 (= e!900357 e!900358)))

(declare-fun res!638829 () Bool)

(assert (=> b!1410396 (= res!638829 (not (is-Leaf!7201 (left!12278 (c!231627 (tokens!1713 acc!229))))))))

(assert (=> b!1410396 (=> res!638829 e!900358)))

(declare-fun b!1410397 () Bool)

(assert (=> b!1410397 (= e!900358 (inv!18731 (left!12278 (c!231627 (tokens!1713 acc!229)))))))

(assert (= (and d!403174 c!231768) b!1410395))

(assert (= (and d!403174 (not c!231768)) b!1410396))

(assert (= (and b!1410396 (not res!638829)) b!1410397))

(declare-fun m!1590141 () Bool)

(assert (=> b!1410395 m!1590141))

(declare-fun m!1590143 () Bool)

(assert (=> b!1410397 m!1590143))

(assert (=> b!1409750 d!403174))

(declare-fun d!403176 () Bool)

(declare-fun c!231769 () Bool)

(assert (=> d!403176 (= c!231769 (is-Node!4757 (right!12608 (c!231627 (tokens!1713 acc!229)))))))

(declare-fun e!900359 () Bool)

(assert (=> d!403176 (= (inv!18720 (right!12608 (c!231627 (tokens!1713 acc!229)))) e!900359)))

(declare-fun b!1410398 () Bool)

(assert (=> b!1410398 (= e!900359 (inv!18730 (right!12608 (c!231627 (tokens!1713 acc!229)))))))

(declare-fun b!1410399 () Bool)

(declare-fun e!900360 () Bool)

(assert (=> b!1410399 (= e!900359 e!900360)))

(declare-fun res!638830 () Bool)

(assert (=> b!1410399 (= res!638830 (not (is-Leaf!7201 (right!12608 (c!231627 (tokens!1713 acc!229))))))))

(assert (=> b!1410399 (=> res!638830 e!900360)))

(declare-fun b!1410400 () Bool)

(assert (=> b!1410400 (= e!900360 (inv!18731 (right!12608 (c!231627 (tokens!1713 acc!229)))))))

(assert (= (and d!403176 c!231769) b!1410398))

(assert (= (and d!403176 (not c!231769)) b!1410399))

(assert (= (and b!1410399 (not res!638830)) b!1410400))

(declare-fun m!1590145 () Bool)

(assert (=> b!1410398 m!1590145))

(declare-fun m!1590147 () Bool)

(assert (=> b!1410400 m!1590147))

(assert (=> b!1409750 d!403176))

(declare-fun d!403178 () Bool)

(declare-fun e!900361 () Bool)

(assert (=> d!403178 e!900361))

(declare-fun res!638831 () Bool)

(assert (=> d!403178 (=> (not res!638831) (not e!900361))))

(assert (=> d!403178 (= res!638831 (= (list!5622 (_1!7874 (lex!1006 Lexer!2182 (rules!10965 acc!229) (print!946 Lexer!2182 (seqFromList!1668 (ite c!231657 call!93969 call!93970)))))) (ite c!231657 call!93969 call!93970)))))

(declare-fun lt!471430 () Unit!20751)

(declare-fun e!900362 () Unit!20751)

(assert (=> d!403178 (= lt!471430 e!900362)))

(declare-fun c!231770 () Bool)

(assert (=> d!403178 (= c!231770 (or (is-Nil!14378 (ite c!231657 call!93969 call!93970)) (is-Nil!14378 (t!123363 (ite c!231657 call!93969 call!93970)))))))

(assert (=> d!403178 (not (isEmpty!8765 (rules!10965 acc!229)))))

(assert (=> d!403178 (= (theoremInvertabilityWhenTokenListSeparable!15 Lexer!2182 (rules!10965 acc!229) (ite c!231657 call!93969 call!93970)) lt!471430)))

(declare-fun b!1410401 () Bool)

(declare-fun Unit!20844 () Unit!20751)

(assert (=> b!1410401 (= e!900362 Unit!20844)))

(declare-fun b!1410402 () Bool)

(declare-fun Unit!20845 () Unit!20751)

(assert (=> b!1410402 (= e!900362 Unit!20845)))

(declare-fun lt!471429 () BalanceConc!9452)

(assert (=> b!1410402 (= lt!471429 (print!946 Lexer!2182 (seqFromList!1668 (ite c!231657 call!93969 call!93970))))))

(declare-fun lt!471413 () BalanceConc!9452)

(assert (=> b!1410402 (= lt!471413 (print!946 Lexer!2182 (seqFromList!1668 (t!123363 (ite c!231657 call!93969 call!93970)))))))

(declare-fun lt!471433 () tuple2!13976)

(assert (=> b!1410402 (= lt!471433 (lex!1006 Lexer!2182 (rules!10965 acc!229) lt!471413))))

(declare-fun lt!471415 () List!14443)

(assert (=> b!1410402 (= lt!471415 (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93969 call!93970)))))))

(declare-fun lt!471421 () List!14443)

(assert (=> b!1410402 (= lt!471421 (list!5623 lt!471413))))

(declare-fun lt!471416 () Unit!20751)

(assert (=> b!1410402 (= lt!471416 (lemmaConcatTwoListThenFirstIsPrefix!732 lt!471415 lt!471421))))

(assert (=> b!1410402 (isPrefix!1165 lt!471415 (++!3733 lt!471415 lt!471421))))

(declare-fun lt!471410 () Unit!20751)

(assert (=> b!1410402 (= lt!471410 lt!471416)))

(declare-fun lt!471409 () Unit!20751)

(assert (=> b!1410402 (= lt!471409 (theoremInvertabilityWhenTokenListSeparable!15 Lexer!2182 (rules!10965 acc!229) (t!123363 (ite c!231657 call!93969 call!93970))))))

(declare-fun lt!471432 () Unit!20751)

(assert (=> b!1410402 (= lt!471432 (seqFromListBHdTlConstructive!61 (h!19779 (t!123363 (ite c!231657 call!93969 call!93970))) (t!123363 (t!123363 (ite c!231657 call!93969 call!93970))) (_1!7874 lt!471433)))))

(assert (=> b!1410402 (= (list!5622 (_1!7874 lt!471433)) (list!5622 (prepend!377 (seqFromList!1668 (t!123363 (t!123363 (ite c!231657 call!93969 call!93970)))) (h!19779 (t!123363 (ite c!231657 call!93969 call!93970))))))))

(declare-fun lt!471427 () Unit!20751)

(assert (=> b!1410402 (= lt!471427 lt!471432)))

(declare-fun lt!471417 () Option!2755)

(assert (=> b!1410402 (= lt!471417 (maxPrefix!1155 Lexer!2182 (rules!10965 acc!229) (list!5623 lt!471429)))))

(assert (=> b!1410402 (= (print!946 Lexer!2182 (singletonSeq!1155 (h!19779 (ite c!231657 call!93969 call!93970)))) (printTailRec!627 Lexer!2182 (singletonSeq!1155 (h!19779 (ite c!231657 call!93969 call!93970))) 0 (BalanceConc!9453 Empty!4756)))))

(declare-fun lt!471428 () Unit!20751)

(declare-fun Unit!20846 () Unit!20751)

(assert (=> b!1410402 (= lt!471428 Unit!20846)))

(declare-fun lt!471423 () Unit!20751)

(assert (=> b!1410402 (= lt!471423 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!205 Lexer!2182 (rules!10965 acc!229) (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93969 call!93970)))) (list!5623 lt!471413)))))

(assert (=> b!1410402 (= (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93969 call!93970)))) (originalCharacters!3356 (h!19779 (ite c!231657 call!93969 call!93970))))))

(declare-fun lt!471414 () Unit!20751)

(declare-fun Unit!20847 () Unit!20751)

(assert (=> b!1410402 (= lt!471414 Unit!20847)))

(assert (=> b!1410402 (= (list!5623 (singletonSeq!1156 (apply!3686 (charsOf!1460 (h!19779 (t!123363 (ite c!231657 call!93969 call!93970)))) 0))) (Cons!14377 (head!2646 (originalCharacters!3356 (h!19779 (t!123363 (ite c!231657 call!93969 call!93970))))) Nil!14377))))

(declare-fun lt!471431 () Unit!20751)

(declare-fun Unit!20848 () Unit!20751)

(assert (=> b!1410402 (= lt!471431 Unit!20848)))

(assert (=> b!1410402 (= (list!5623 (singletonSeq!1156 (apply!3686 (charsOf!1460 (h!19779 (t!123363 (ite c!231657 call!93969 call!93970)))) 0))) (Cons!14377 (head!2646 (list!5623 lt!471413)) Nil!14377))))

(declare-fun lt!471412 () Unit!20751)

(declare-fun Unit!20849 () Unit!20751)

(assert (=> b!1410402 (= lt!471412 Unit!20849)))

(assert (=> b!1410402 (= (list!5623 (singletonSeq!1156 (apply!3686 (charsOf!1460 (h!19779 (t!123363 (ite c!231657 call!93969 call!93970)))) 0))) (Cons!14377 (head!2647 lt!471413) Nil!14377))))

(declare-fun lt!471420 () Unit!20751)

(declare-fun Unit!20850 () Unit!20751)

(assert (=> b!1410402 (= lt!471420 Unit!20850)))

(assert (=> b!1410402 (isDefined!2254 (maxPrefix!1155 Lexer!2182 (rules!10965 acc!229) (originalCharacters!3356 (h!19779 (ite c!231657 call!93969 call!93970)))))))

(declare-fun lt!471426 () Unit!20751)

(declare-fun Unit!20851 () Unit!20751)

(assert (=> b!1410402 (= lt!471426 Unit!20851)))

(assert (=> b!1410402 (isDefined!2254 (maxPrefix!1155 Lexer!2182 (rules!10965 acc!229) (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93969 call!93970))))))))

(declare-fun lt!471424 () Unit!20751)

(declare-fun Unit!20852 () Unit!20751)

(assert (=> b!1410402 (= lt!471424 Unit!20852)))

(declare-fun lt!471411 () Unit!20751)

(declare-fun Unit!20853 () Unit!20751)

(assert (=> b!1410402 (= lt!471411 Unit!20853)))

(assert (=> b!1410402 (= (_1!7875 (get!4427 (maxPrefix!1155 Lexer!2182 (rules!10965 acc!229) (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93969 call!93970))))))) (h!19779 (ite c!231657 call!93969 call!93970)))))

(declare-fun lt!471408 () Unit!20751)

(declare-fun Unit!20854 () Unit!20751)

(assert (=> b!1410402 (= lt!471408 Unit!20854)))

(assert (=> b!1410402 (isEmpty!8775 (_2!7875 (get!4427 (maxPrefix!1155 Lexer!2182 (rules!10965 acc!229) (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93969 call!93970))))))))))

(declare-fun lt!471418 () Unit!20751)

(declare-fun Unit!20855 () Unit!20751)

(assert (=> b!1410402 (= lt!471418 Unit!20855)))

(assert (=> b!1410402 (matchR!1791 (regex!2494 (rule!4257 (h!19779 (ite c!231657 call!93969 call!93970)))) (list!5623 (charsOf!1460 (h!19779 (ite c!231657 call!93969 call!93970)))))))

(declare-fun lt!471419 () Unit!20751)

(declare-fun Unit!20856 () Unit!20751)

(assert (=> b!1410402 (= lt!471419 Unit!20856)))

(assert (=> b!1410402 (= (rule!4257 (h!19779 (ite c!231657 call!93969 call!93970))) (rule!4257 (h!19779 (ite c!231657 call!93969 call!93970))))))

(declare-fun lt!471425 () Unit!20751)

(declare-fun Unit!20857 () Unit!20751)

(assert (=> b!1410402 (= lt!471425 Unit!20857)))

(declare-fun lt!471422 () Unit!20751)

(assert (=> b!1410402 (= lt!471422 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!3 Lexer!2182 (rules!10965 acc!229) (h!19779 (ite c!231657 call!93969 call!93970)) (rule!4257 (h!19779 (ite c!231657 call!93969 call!93970))) (list!5623 lt!471413)))))

(declare-fun b!1410403 () Bool)

(assert (=> b!1410403 (= e!900361 (isEmpty!8776 (_2!7874 (lex!1006 Lexer!2182 (rules!10965 acc!229) (print!946 Lexer!2182 (seqFromList!1668 (ite c!231657 call!93969 call!93970)))))))))

(assert (= (and d!403178 c!231770) b!1410401))

(assert (= (and d!403178 (not c!231770)) b!1410402))

(assert (= (and d!403178 res!638831) b!1410403))

(declare-fun m!1590149 () Bool)

(assert (=> d!403178 m!1590149))

(assert (=> d!403178 m!1590149))

(declare-fun m!1590151 () Bool)

(assert (=> d!403178 m!1590151))

(assert (=> d!403178 m!1588515))

(declare-fun m!1590153 () Bool)

(assert (=> d!403178 m!1590153))

(assert (=> d!403178 m!1590151))

(declare-fun m!1590155 () Bool)

(assert (=> d!403178 m!1590155))

(declare-fun m!1590157 () Bool)

(assert (=> b!1410402 m!1590157))

(declare-fun m!1590159 () Bool)

(assert (=> b!1410402 m!1590159))

(declare-fun m!1590161 () Bool)

(assert (=> b!1410402 m!1590161))

(declare-fun m!1590163 () Bool)

(assert (=> b!1410402 m!1590163))

(declare-fun m!1590165 () Bool)

(assert (=> b!1410402 m!1590165))

(declare-fun m!1590167 () Bool)

(assert (=> b!1410402 m!1590167))

(declare-fun m!1590169 () Bool)

(assert (=> b!1410402 m!1590169))

(assert (=> b!1410402 m!1590159))

(assert (=> b!1410402 m!1590165))

(declare-fun m!1590171 () Bool)

(assert (=> b!1410402 m!1590171))

(assert (=> b!1410402 m!1590159))

(assert (=> b!1410402 m!1590167))

(assert (=> b!1410402 m!1590165))

(declare-fun m!1590173 () Bool)

(assert (=> b!1410402 m!1590173))

(declare-fun m!1590175 () Bool)

(assert (=> b!1410402 m!1590175))

(assert (=> b!1410402 m!1590165))

(declare-fun m!1590177 () Bool)

(assert (=> b!1410402 m!1590177))

(declare-fun m!1590179 () Bool)

(assert (=> b!1410402 m!1590179))

(declare-fun m!1590181 () Bool)

(assert (=> b!1410402 m!1590181))

(declare-fun m!1590183 () Bool)

(assert (=> b!1410402 m!1590183))

(declare-fun m!1590185 () Bool)

(assert (=> b!1410402 m!1590185))

(assert (=> b!1410402 m!1590175))

(assert (=> b!1410402 m!1590179))

(declare-fun m!1590187 () Bool)

(assert (=> b!1410402 m!1590187))

(assert (=> b!1410402 m!1590157))

(declare-fun m!1590189 () Bool)

(assert (=> b!1410402 m!1590189))

(declare-fun m!1590191 () Bool)

(assert (=> b!1410402 m!1590191))

(declare-fun m!1590193 () Bool)

(assert (=> b!1410402 m!1590193))

(declare-fun m!1590195 () Bool)

(assert (=> b!1410402 m!1590195))

(declare-fun m!1590197 () Bool)

(assert (=> b!1410402 m!1590197))

(assert (=> b!1410402 m!1590195))

(assert (=> b!1410402 m!1590149))

(assert (=> b!1410402 m!1590159))

(declare-fun m!1590199 () Bool)

(assert (=> b!1410402 m!1590199))

(assert (=> b!1410402 m!1590149))

(assert (=> b!1410402 m!1590151))

(declare-fun m!1590201 () Bool)

(assert (=> b!1410402 m!1590201))

(declare-fun m!1590203 () Bool)

(assert (=> b!1410402 m!1590203))

(declare-fun m!1590205 () Bool)

(assert (=> b!1410402 m!1590205))

(assert (=> b!1410402 m!1590205))

(assert (=> b!1410402 m!1590183))

(declare-fun m!1590207 () Bool)

(assert (=> b!1410402 m!1590207))

(declare-fun m!1590209 () Bool)

(assert (=> b!1410402 m!1590209))

(assert (=> b!1410402 m!1590161))

(declare-fun m!1590211 () Bool)

(assert (=> b!1410402 m!1590211))

(declare-fun m!1590213 () Bool)

(assert (=> b!1410402 m!1590213))

(declare-fun m!1590215 () Bool)

(assert (=> b!1410402 m!1590215))

(assert (=> b!1410402 m!1590213))

(declare-fun m!1590217 () Bool)

(assert (=> b!1410402 m!1590217))

(assert (=> b!1410402 m!1590191))

(assert (=> b!1410402 m!1590187))

(declare-fun m!1590219 () Bool)

(assert (=> b!1410402 m!1590219))

(assert (=> b!1410402 m!1590167))

(declare-fun m!1590221 () Bool)

(assert (=> b!1410402 m!1590221))

(declare-fun m!1590223 () Bool)

(assert (=> b!1410402 m!1590223))

(assert (=> b!1410402 m!1590181))

(declare-fun m!1590225 () Bool)

(assert (=> b!1410402 m!1590225))

(assert (=> b!1410402 m!1590213))

(declare-fun m!1590227 () Bool)

(assert (=> b!1410402 m!1590227))

(assert (=> b!1410403 m!1590149))

(assert (=> b!1410403 m!1590149))

(assert (=> b!1410403 m!1590151))

(assert (=> b!1410403 m!1590151))

(assert (=> b!1410403 m!1590155))

(declare-fun m!1590229 () Bool)

(assert (=> b!1410403 m!1590229))

(assert (=> bm!93935 d!403178))

(declare-fun d!403180 () Bool)

(declare-fun lt!471454 () BalanceConc!9452)

(declare-fun printListTailRec!259 (LexerInterface!2184 List!14444 List!14443) List!14443)

(declare-fun dropList!430 (BalanceConc!9454 Int) List!14444)

(assert (=> d!403180 (= (list!5623 lt!471454) (printListTailRec!259 Lexer!2182 (dropList!430 (tokens!1713 (head!2638 objs!24)) 0) (list!5623 (BalanceConc!9453 Empty!4756))))))

(declare-fun e!900367 () BalanceConc!9452)

(assert (=> d!403180 (= lt!471454 e!900367)))

(declare-fun c!231773 () Bool)

(assert (=> d!403180 (= c!231773 (>= 0 (size!11846 (tokens!1713 (head!2638 objs!24)))))))

(declare-fun e!900368 () Bool)

(assert (=> d!403180 e!900368))

(declare-fun res!638834 () Bool)

(assert (=> d!403180 (=> (not res!638834) (not e!900368))))

(assert (=> d!403180 (= res!638834 (>= 0 0))))

(assert (=> d!403180 (= (printTailRec!627 Lexer!2182 (tokens!1713 (head!2638 objs!24)) 0 (BalanceConc!9453 Empty!4756)) lt!471454)))

(declare-fun b!1410410 () Bool)

(assert (=> b!1410410 (= e!900368 (<= 0 (size!11846 (tokens!1713 (head!2638 objs!24)))))))

(declare-fun b!1410411 () Bool)

(assert (=> b!1410411 (= e!900367 (BalanceConc!9453 Empty!4756))))

(declare-fun b!1410412 () Bool)

(assert (=> b!1410412 (= e!900367 (printTailRec!627 Lexer!2182 (tokens!1713 (head!2638 objs!24)) (+ 0 1) (++!3741 (BalanceConc!9453 Empty!4756) (charsOf!1460 (apply!3690 (tokens!1713 (head!2638 objs!24)) 0)))))))

(declare-fun lt!471449 () List!14444)

(assert (=> b!1410412 (= lt!471449 (list!5622 (tokens!1713 (head!2638 objs!24))))))

(declare-fun lt!471451 () Unit!20751)

(declare-fun lemmaDropApply!452 (List!14444 Int) Unit!20751)

(assert (=> b!1410412 (= lt!471451 (lemmaDropApply!452 lt!471449 0))))

(declare-fun drop!697 (List!14444 Int) List!14444)

(declare-fun apply!3692 (List!14444 Int) Token!4650)

(assert (=> b!1410412 (= (head!2652 (drop!697 lt!471449 0)) (apply!3692 lt!471449 0))))

(declare-fun lt!471453 () Unit!20751)

(assert (=> b!1410412 (= lt!471453 lt!471451)))

(declare-fun lt!471448 () List!14444)

(assert (=> b!1410412 (= lt!471448 (list!5622 (tokens!1713 (head!2638 objs!24))))))

(declare-fun lt!471450 () Unit!20751)

(declare-fun lemmaDropTail!432 (List!14444 Int) Unit!20751)

(assert (=> b!1410412 (= lt!471450 (lemmaDropTail!432 lt!471448 0))))

(declare-fun tail!2052 (List!14444) List!14444)

(assert (=> b!1410412 (= (tail!2052 (drop!697 lt!471448 0)) (drop!697 lt!471448 (+ 0 1)))))

(declare-fun lt!471452 () Unit!20751)

(assert (=> b!1410412 (= lt!471452 lt!471450)))

(assert (= (and d!403180 res!638834) b!1410410))

(assert (= (and d!403180 c!231773) b!1410411))

(assert (= (and d!403180 (not c!231773)) b!1410412))

(declare-fun m!1590231 () Bool)

(assert (=> d!403180 m!1590231))

(declare-fun m!1590233 () Bool)

(assert (=> d!403180 m!1590233))

(declare-fun m!1590235 () Bool)

(assert (=> d!403180 m!1590235))

(assert (=> d!403180 m!1590233))

(declare-fun m!1590237 () Bool)

(assert (=> d!403180 m!1590237))

(declare-fun m!1590239 () Bool)

(assert (=> d!403180 m!1590239))

(assert (=> d!403180 m!1590231))

(assert (=> b!1410410 m!1590239))

(declare-fun m!1590241 () Bool)

(assert (=> b!1410412 m!1590241))

(declare-fun m!1590243 () Bool)

(assert (=> b!1410412 m!1590243))

(declare-fun m!1590245 () Bool)

(assert (=> b!1410412 m!1590245))

(declare-fun m!1590247 () Bool)

(assert (=> b!1410412 m!1590247))

(declare-fun m!1590249 () Bool)

(assert (=> b!1410412 m!1590249))

(declare-fun m!1590251 () Bool)

(assert (=> b!1410412 m!1590251))

(declare-fun m!1590253 () Bool)

(assert (=> b!1410412 m!1590253))

(assert (=> b!1410412 m!1590243))

(assert (=> b!1410412 m!1590251))

(declare-fun m!1590255 () Bool)

(assert (=> b!1410412 m!1590255))

(declare-fun m!1590257 () Bool)

(assert (=> b!1410412 m!1590257))

(declare-fun m!1590259 () Bool)

(assert (=> b!1410412 m!1590259))

(declare-fun m!1590261 () Bool)

(assert (=> b!1410412 m!1590261))

(assert (=> b!1410412 m!1590255))

(declare-fun m!1590263 () Bool)

(assert (=> b!1410412 m!1590263))

(assert (=> b!1410412 m!1590257))

(assert (=> b!1410412 m!1588471))

(assert (=> b!1410412 m!1590241))

(assert (=> bm!93950 d!403180))

(declare-fun d!403182 () Bool)

(declare-fun res!638839 () Bool)

(declare-fun e!900371 () Bool)

(assert (=> d!403182 (=> (not res!638839) (not e!900371))))

(declare-fun list!5635 (IArray!9519) List!14444)

(assert (=> d!403182 (= res!638839 (<= (size!11841 (list!5635 (xs!7484 (c!231627 (tokens!1713 sep!3))))) 512))))

(assert (=> d!403182 (= (inv!18731 (c!231627 (tokens!1713 sep!3))) e!900371)))

(declare-fun b!1410417 () Bool)

(declare-fun res!638840 () Bool)

(assert (=> b!1410417 (=> (not res!638840) (not e!900371))))

(assert (=> b!1410417 (= res!638840 (= (csize!9745 (c!231627 (tokens!1713 sep!3))) (size!11841 (list!5635 (xs!7484 (c!231627 (tokens!1713 sep!3)))))))))

(declare-fun b!1410418 () Bool)

(assert (=> b!1410418 (= e!900371 (and (> (csize!9745 (c!231627 (tokens!1713 sep!3))) 0) (<= (csize!9745 (c!231627 (tokens!1713 sep!3))) 512)))))

(assert (= (and d!403182 res!638839) b!1410417))

(assert (= (and b!1410417 res!638840) b!1410418))

(declare-fun m!1590265 () Bool)

(assert (=> d!403182 m!1590265))

(assert (=> d!403182 m!1590265))

(declare-fun m!1590267 () Bool)

(assert (=> d!403182 m!1590267))

(assert (=> b!1410417 m!1590265))

(assert (=> b!1410417 m!1590265))

(assert (=> b!1410417 m!1590267))

(assert (=> b!1409730 d!403182))

(declare-fun d!403184 () Bool)

(declare-fun lt!471455 () BalanceConc!9452)

(assert (=> d!403184 (= (list!5623 lt!471455) (printList!645 Lexer!2182 (list!5622 (tokens!1713 (head!2638 objs!24)))))))

(assert (=> d!403184 (= lt!471455 (printTailRec!627 Lexer!2182 (tokens!1713 (head!2638 objs!24)) 0 (BalanceConc!9453 Empty!4756)))))

(assert (=> d!403184 (= (print!946 Lexer!2182 (tokens!1713 (head!2638 objs!24))) lt!471455)))

(declare-fun bs!338892 () Bool)

(assert (= bs!338892 d!403184))

(declare-fun m!1590269 () Bool)

(assert (=> bs!338892 m!1590269))

(assert (=> bs!338892 m!1588471))

(assert (=> bs!338892 m!1588471))

(declare-fun m!1590271 () Bool)

(assert (=> bs!338892 m!1590271))

(assert (=> bs!338892 m!1588479))

(assert (=> bm!93965 d!403184))

(declare-fun d!403186 () Bool)

(declare-fun list!5636 (Conc!4756) List!14443)

(assert (=> d!403186 (= (list!5623 (print!945 acc!229)) (list!5636 (c!231626 (print!945 acc!229))))))

(declare-fun bs!338893 () Bool)

(assert (= bs!338893 d!403186))

(declare-fun m!1590273 () Bool)

(assert (=> bs!338893 m!1590273))

(assert (=> b!1409689 d!403186))

(declare-fun e!900373 () Bool)

(declare-fun lt!471456 () List!14443)

(declare-fun b!1410422 () Bool)

(assert (=> b!1410422 (= e!900373 (or (not (= (list!5623 (print!945 (head!2638 objs!24))) Nil!14377)) (= lt!471456 (list!5623 (print!945 acc!229)))))))

(declare-fun b!1410421 () Bool)

(declare-fun res!638842 () Bool)

(assert (=> b!1410421 (=> (not res!638842) (not e!900373))))

(assert (=> b!1410421 (= res!638842 (= (size!11845 lt!471456) (+ (size!11845 (list!5623 (print!945 acc!229))) (size!11845 (list!5623 (print!945 (head!2638 objs!24)))))))))

(declare-fun b!1410420 () Bool)

(declare-fun e!900372 () List!14443)

(assert (=> b!1410420 (= e!900372 (Cons!14377 (h!19778 (list!5623 (print!945 acc!229))) (++!3733 (t!123362 (list!5623 (print!945 acc!229))) (list!5623 (print!945 (head!2638 objs!24))))))))

(declare-fun b!1410419 () Bool)

(assert (=> b!1410419 (= e!900372 (list!5623 (print!945 (head!2638 objs!24))))))

(declare-fun d!403188 () Bool)

(assert (=> d!403188 e!900373))

(declare-fun res!638841 () Bool)

(assert (=> d!403188 (=> (not res!638841) (not e!900373))))

(assert (=> d!403188 (= res!638841 (= (content!2137 lt!471456) (set.union (content!2137 (list!5623 (print!945 acc!229))) (content!2137 (list!5623 (print!945 (head!2638 objs!24)))))))))

(assert (=> d!403188 (= lt!471456 e!900372)))

(declare-fun c!231774 () Bool)

(assert (=> d!403188 (= c!231774 (is-Nil!14377 (list!5623 (print!945 acc!229))))))

(assert (=> d!403188 (= (++!3733 (list!5623 (print!945 acc!229)) (list!5623 (print!945 (head!2638 objs!24)))) lt!471456)))

(assert (= (and d!403188 c!231774) b!1410419))

(assert (= (and d!403188 (not c!231774)) b!1410420))

(assert (= (and d!403188 res!638841) b!1410421))

(assert (= (and b!1410421 res!638842) b!1410422))

(declare-fun m!1590275 () Bool)

(assert (=> b!1410421 m!1590275))

(assert (=> b!1410421 m!1588437))

(declare-fun m!1590277 () Bool)

(assert (=> b!1410421 m!1590277))

(assert (=> b!1410421 m!1588439))

(declare-fun m!1590279 () Bool)

(assert (=> b!1410421 m!1590279))

(assert (=> b!1410420 m!1588439))

(declare-fun m!1590281 () Bool)

(assert (=> b!1410420 m!1590281))

(declare-fun m!1590283 () Bool)

(assert (=> d!403188 m!1590283))

(assert (=> d!403188 m!1588437))

(declare-fun m!1590285 () Bool)

(assert (=> d!403188 m!1590285))

(assert (=> d!403188 m!1588439))

(declare-fun m!1590287 () Bool)

(assert (=> d!403188 m!1590287))

(assert (=> b!1409689 d!403188))

(assert (=> b!1409689 d!403140))

(declare-fun d!403190 () Bool)

(assert (=> d!403190 (= (list!5623 (print!945 (head!2638 objs!24))) (list!5636 (c!231626 (print!945 (head!2638 objs!24)))))))

(declare-fun bs!338894 () Bool)

(assert (= bs!338894 d!403190))

(declare-fun m!1590289 () Bool)

(assert (=> bs!338894 m!1590289))

(assert (=> b!1409689 d!403190))

(declare-fun d!403192 () Bool)

(declare-fun e!900374 () Bool)

(assert (=> d!403192 e!900374))

(declare-fun res!638843 () Bool)

(assert (=> d!403192 (=> (not res!638843) (not e!900374))))

(declare-fun lt!471457 () BalanceConc!9452)

(assert (=> d!403192 (= res!638843 (= (list!5622 (_1!7874 (lex!1006 Lexer!2182 (rules!10965 (get!4425 lt!470679)) lt!471457))) (list!5622 (tokens!1713 (get!4425 lt!470679)))))))

(assert (=> d!403192 (= lt!471457 (print!946 Lexer!2182 (tokens!1713 (get!4425 lt!470679))))))

(declare-fun lt!471458 () Unit!20751)

(assert (=> d!403192 (= lt!471458 (theoremInvertabilityWhenTokenListSeparable!15 Lexer!2182 (rules!10965 (get!4425 lt!470679)) (list!5622 (tokens!1713 (get!4425 lt!470679)))))))

(assert (=> d!403192 (= (print!945 (get!4425 lt!470679)) lt!471457)))

(declare-fun b!1410423 () Bool)

(assert (=> b!1410423 (= e!900374 (isEmpty!8775 (list!5623 (_2!7874 (lex!1006 Lexer!2182 (rules!10965 (get!4425 lt!470679)) lt!471457)))))))

(assert (= (and d!403192 res!638843) b!1410423))

(declare-fun m!1590291 () Bool)

(assert (=> d!403192 m!1590291))

(assert (=> d!403192 m!1588477))

(declare-fun m!1590293 () Bool)

(assert (=> d!403192 m!1590293))

(assert (=> d!403192 m!1588477))

(declare-fun m!1590295 () Bool)

(assert (=> d!403192 m!1590295))

(declare-fun m!1590297 () Bool)

(assert (=> d!403192 m!1590297))

(assert (=> b!1410423 m!1590297))

(declare-fun m!1590299 () Bool)

(assert (=> b!1410423 m!1590299))

(assert (=> b!1410423 m!1590299))

(declare-fun m!1590301 () Bool)

(assert (=> b!1410423 m!1590301))

(assert (=> b!1409689 d!403192))

(declare-fun d!403194 () Bool)

(declare-fun e!900375 () Bool)

(assert (=> d!403194 e!900375))

(declare-fun res!638844 () Bool)

(assert (=> d!403194 (=> (not res!638844) (not e!900375))))

(declare-fun lt!471459 () BalanceConc!9452)

(assert (=> d!403194 (= res!638844 (= (list!5622 (_1!7874 (lex!1006 Lexer!2182 (rules!10965 acc!229) lt!471459))) (list!5622 (tokens!1713 acc!229))))))

(assert (=> d!403194 (= lt!471459 (print!946 Lexer!2182 (tokens!1713 acc!229)))))

(declare-fun lt!471460 () Unit!20751)

(assert (=> d!403194 (= lt!471460 (theoremInvertabilityWhenTokenListSeparable!15 Lexer!2182 (rules!10965 acc!229) (list!5622 (tokens!1713 acc!229))))))

(assert (=> d!403194 (= (print!945 acc!229) lt!471459)))

(declare-fun b!1410424 () Bool)

(assert (=> b!1410424 (= e!900375 (isEmpty!8775 (list!5623 (_2!7874 (lex!1006 Lexer!2182 (rules!10965 acc!229) lt!471459)))))))

(assert (= (and d!403194 res!638844) b!1410424))

(declare-fun m!1590303 () Bool)

(assert (=> d!403194 m!1590303))

(assert (=> d!403194 m!1588473))

(declare-fun m!1590305 () Bool)

(assert (=> d!403194 m!1590305))

(assert (=> d!403194 m!1588473))

(assert (=> d!403194 m!1588397))

(declare-fun m!1590307 () Bool)

(assert (=> d!403194 m!1590307))

(assert (=> b!1410424 m!1590307))

(declare-fun m!1590309 () Bool)

(assert (=> b!1410424 m!1590309))

(assert (=> b!1410424 m!1590309))

(declare-fun m!1590311 () Bool)

(assert (=> b!1410424 m!1590311))

(assert (=> b!1409689 d!403194))

(declare-fun d!403196 () Bool)

(assert (=> d!403196 (= (list!5623 (print!945 (get!4425 lt!470679))) (list!5636 (c!231626 (print!945 (get!4425 lt!470679)))))))

(declare-fun bs!338895 () Bool)

(assert (= bs!338895 d!403196))

(declare-fun m!1590313 () Bool)

(assert (=> bs!338895 m!1590313))

(assert (=> b!1409689 d!403196))

(declare-fun d!403198 () Bool)

(declare-fun e!900376 () Bool)

(assert (=> d!403198 e!900376))

(declare-fun res!638845 () Bool)

(assert (=> d!403198 (=> (not res!638845) (not e!900376))))

(declare-fun lt!471461 () BalanceConc!9452)

(assert (=> d!403198 (= res!638845 (= (list!5622 (_1!7874 (lex!1006 Lexer!2182 (rules!10965 (head!2638 objs!24)) lt!471461))) (list!5622 (tokens!1713 (head!2638 objs!24)))))))

(assert (=> d!403198 (= lt!471461 (print!946 Lexer!2182 (tokens!1713 (head!2638 objs!24))))))

(declare-fun lt!471462 () Unit!20751)

(assert (=> d!403198 (= lt!471462 (theoremInvertabilityWhenTokenListSeparable!15 Lexer!2182 (rules!10965 (head!2638 objs!24)) (list!5622 (tokens!1713 (head!2638 objs!24)))))))

(assert (=> d!403198 (= (print!945 (head!2638 objs!24)) lt!471461)))

(declare-fun b!1410425 () Bool)

(assert (=> b!1410425 (= e!900376 (isEmpty!8775 (list!5623 (_2!7874 (lex!1006 Lexer!2182 (rules!10965 (head!2638 objs!24)) lt!471461)))))))

(assert (= (and d!403198 res!638845) b!1410425))

(declare-fun m!1590315 () Bool)

(assert (=> d!403198 m!1590315))

(assert (=> d!403198 m!1588471))

(declare-fun m!1590317 () Bool)

(assert (=> d!403198 m!1590317))

(assert (=> d!403198 m!1588471))

(assert (=> d!403198 m!1588393))

(declare-fun m!1590319 () Bool)

(assert (=> d!403198 m!1590319))

(assert (=> b!1410425 m!1590319))

(declare-fun m!1590321 () Bool)

(assert (=> b!1410425 m!1590321))

(assert (=> b!1410425 m!1590321))

(declare-fun m!1590323 () Bool)

(assert (=> b!1410425 m!1590323))

(assert (=> b!1409689 d!403198))

(declare-fun d!403200 () Bool)

(declare-fun res!638852 () Bool)

(declare-fun e!900379 () Bool)

(assert (=> d!403200 (=> (not res!638852) (not e!900379))))

(assert (=> d!403200 (= res!638852 (= (csize!9746 (c!231628 objs!24)) (+ (size!11838 (left!12279 (c!231628 objs!24))) (size!11838 (right!12609 (c!231628 objs!24))))))))

(assert (=> d!403200 (= (inv!18732 (c!231628 objs!24)) e!900379)))

(declare-fun b!1410432 () Bool)

(declare-fun res!638853 () Bool)

(assert (=> b!1410432 (=> (not res!638853) (not e!900379))))

(assert (=> b!1410432 (= res!638853 (and (not (= (left!12279 (c!231628 objs!24)) Empty!4758)) (not (= (right!12609 (c!231628 objs!24)) Empty!4758))))))

(declare-fun b!1410433 () Bool)

(declare-fun res!638854 () Bool)

(assert (=> b!1410433 (=> (not res!638854) (not e!900379))))

(assert (=> b!1410433 (= res!638854 (= (cheight!4969 (c!231628 objs!24)) (+ (max!0 (height!690 (left!12279 (c!231628 objs!24))) (height!690 (right!12609 (c!231628 objs!24)))) 1)))))

(declare-fun b!1410434 () Bool)

(assert (=> b!1410434 (= e!900379 (<= 0 (cheight!4969 (c!231628 objs!24))))))

(assert (= (and d!403200 res!638852) b!1410432))

(assert (= (and b!1410432 res!638853) b!1410433))

(assert (= (and b!1410433 res!638854) b!1410434))

(declare-fun m!1590327 () Bool)

(assert (=> d!403200 m!1590327))

(declare-fun m!1590329 () Bool)

(assert (=> d!403200 m!1590329))

(assert (=> b!1410433 m!1589759))

(assert (=> b!1410433 m!1589761))

(assert (=> b!1410433 m!1589759))

(assert (=> b!1410433 m!1589761))

(declare-fun m!1590331 () Bool)

(assert (=> b!1410433 m!1590331))

(assert (=> b!1409725 d!403200))

(declare-fun d!403204 () Bool)

(declare-fun res!638870 () Bool)

(declare-fun e!900391 () Bool)

(assert (=> d!403204 (=> (not res!638870) (not e!900391))))

(declare-fun list!5637 (IArray!9521) List!14446)

(assert (=> d!403204 (= res!638870 (<= (size!11837 (list!5637 (xs!7485 (c!231628 objs!24)))) 512))))

(assert (=> d!403204 (= (inv!18733 (c!231628 objs!24)) e!900391)))

(declare-fun b!1410456 () Bool)

(declare-fun res!638871 () Bool)

(assert (=> b!1410456 (=> (not res!638871) (not e!900391))))

(assert (=> b!1410456 (= res!638871 (= (csize!9747 (c!231628 objs!24)) (size!11837 (list!5637 (xs!7485 (c!231628 objs!24))))))))

(declare-fun b!1410457 () Bool)

(assert (=> b!1410457 (= e!900391 (and (> (csize!9747 (c!231628 objs!24)) 0) (<= (csize!9747 (c!231628 objs!24)) 512)))))

(assert (= (and d!403204 res!638870) b!1410456))

(assert (= (and b!1410456 res!638871) b!1410457))

(declare-fun m!1590371 () Bool)

(assert (=> d!403204 m!1590371))

(assert (=> d!403204 m!1590371))

(declare-fun m!1590373 () Bool)

(assert (=> d!403204 m!1590373))

(assert (=> b!1410456 m!1590371))

(assert (=> b!1410456 m!1590371))

(assert (=> b!1410456 m!1590373))

(assert (=> b!1409727 d!403204))

(declare-fun d!403218 () Bool)

(assert (=> d!403218 (= (list!5623 call!93942) (list!5636 (c!231626 call!93942)))))

(declare-fun bs!338898 () Bool)

(assert (= bs!338898 d!403218))

(declare-fun m!1590375 () Bool)

(assert (=> bs!338898 m!1590375))

(assert (=> bm!93968 d!403218))

(declare-fun d!403220 () Bool)

(declare-fun e!900392 () Bool)

(assert (=> d!403220 e!900392))

(declare-fun res!638872 () Bool)

(assert (=> d!403220 (=> (not res!638872) (not e!900392))))

(declare-fun lt!471468 () BalanceConc!9452)

(assert (=> d!403220 (= res!638872 (= (list!5622 (_1!7874 (lex!1006 Lexer!2182 (rules!10965 (ite c!231657 (head!2638 objs!24) (ite c!231659 acc!229 (head!2638 objs!24)))) lt!471468))) (list!5622 (tokens!1713 (ite c!231657 (head!2638 objs!24) (ite c!231659 acc!229 (head!2638 objs!24)))))))))

(assert (=> d!403220 (= lt!471468 (print!946 Lexer!2182 (tokens!1713 (ite c!231657 (head!2638 objs!24) (ite c!231659 acc!229 (head!2638 objs!24))))))))

(declare-fun lt!471469 () Unit!20751)

(assert (=> d!403220 (= lt!471469 (theoremInvertabilityWhenTokenListSeparable!15 Lexer!2182 (rules!10965 (ite c!231657 (head!2638 objs!24) (ite c!231659 acc!229 (head!2638 objs!24)))) (list!5622 (tokens!1713 (ite c!231657 (head!2638 objs!24) (ite c!231659 acc!229 (head!2638 objs!24)))))))))

(assert (=> d!403220 (= (print!945 (ite c!231657 (head!2638 objs!24) (ite c!231659 acc!229 (head!2638 objs!24)))) lt!471468)))

(declare-fun b!1410458 () Bool)

(assert (=> b!1410458 (= e!900392 (isEmpty!8775 (list!5623 (_2!7874 (lex!1006 Lexer!2182 (rules!10965 (ite c!231657 (head!2638 objs!24) (ite c!231659 acc!229 (head!2638 objs!24)))) lt!471468)))))))

(assert (= (and d!403220 res!638872) b!1410458))

(declare-fun m!1590377 () Bool)

(assert (=> d!403220 m!1590377))

(declare-fun m!1590379 () Bool)

(assert (=> d!403220 m!1590379))

(declare-fun m!1590381 () Bool)

(assert (=> d!403220 m!1590381))

(assert (=> d!403220 m!1590379))

(declare-fun m!1590383 () Bool)

(assert (=> d!403220 m!1590383))

(declare-fun m!1590385 () Bool)

(assert (=> d!403220 m!1590385))

(assert (=> b!1410458 m!1590385))

(declare-fun m!1590387 () Bool)

(assert (=> b!1410458 m!1590387))

(assert (=> b!1410458 m!1590387))

(declare-fun m!1590389 () Bool)

(assert (=> b!1410458 m!1590389))

(assert (=> bm!93946 d!403220))

(declare-fun d!403222 () Bool)

(declare-fun c!231778 () Bool)

(assert (=> d!403222 (= c!231778 (is-Node!4758 (left!12279 (c!231628 objs!24))))))

(declare-fun e!900393 () Bool)

(assert (=> d!403222 (= (inv!18721 (left!12279 (c!231628 objs!24))) e!900393)))

(declare-fun b!1410459 () Bool)

(assert (=> b!1410459 (= e!900393 (inv!18732 (left!12279 (c!231628 objs!24))))))

(declare-fun b!1410460 () Bool)

(declare-fun e!900394 () Bool)

(assert (=> b!1410460 (= e!900393 e!900394)))

(declare-fun res!638873 () Bool)

(assert (=> b!1410460 (= res!638873 (not (is-Leaf!7202 (left!12279 (c!231628 objs!24)))))))

(assert (=> b!1410460 (=> res!638873 e!900394)))

(declare-fun b!1410461 () Bool)

(assert (=> b!1410461 (= e!900394 (inv!18733 (left!12279 (c!231628 objs!24))))))

(assert (= (and d!403222 c!231778) b!1410459))

(assert (= (and d!403222 (not c!231778)) b!1410460))

(assert (= (and b!1410460 (not res!638873)) b!1410461))

(declare-fun m!1590391 () Bool)

(assert (=> b!1410459 m!1590391))

(declare-fun m!1590393 () Bool)

(assert (=> b!1410461 m!1590393))

(assert (=> b!1409761 d!403222))

(declare-fun d!403224 () Bool)

(declare-fun c!231779 () Bool)

(assert (=> d!403224 (= c!231779 (is-Node!4758 (right!12609 (c!231628 objs!24))))))

(declare-fun e!900395 () Bool)

(assert (=> d!403224 (= (inv!18721 (right!12609 (c!231628 objs!24))) e!900395)))

(declare-fun b!1410462 () Bool)

(assert (=> b!1410462 (= e!900395 (inv!18732 (right!12609 (c!231628 objs!24))))))

(declare-fun b!1410463 () Bool)

(declare-fun e!900396 () Bool)

(assert (=> b!1410463 (= e!900395 e!900396)))

(declare-fun res!638874 () Bool)

(assert (=> b!1410463 (= res!638874 (not (is-Leaf!7202 (right!12609 (c!231628 objs!24)))))))

(assert (=> b!1410463 (=> res!638874 e!900396)))

(declare-fun b!1410464 () Bool)

(assert (=> b!1410464 (= e!900396 (inv!18733 (right!12609 (c!231628 objs!24))))))

(assert (= (and d!403224 c!231779) b!1410462))

(assert (= (and d!403224 (not c!231779)) b!1410463))

(assert (= (and b!1410463 (not res!638874)) b!1410464))

(declare-fun m!1590395 () Bool)

(assert (=> b!1410462 m!1590395))

(declare-fun m!1590397 () Bool)

(assert (=> b!1410464 m!1590397))

(assert (=> b!1409761 d!403224))

(declare-fun d!403226 () Bool)

(declare-fun res!638875 () Bool)

(declare-fun e!900397 () Bool)

(assert (=> d!403226 (=> (not res!638875) (not e!900397))))

(assert (=> d!403226 (= res!638875 (= (csize!9744 (c!231627 (tokens!1713 acc!229))) (+ (size!11847 (left!12278 (c!231627 (tokens!1713 acc!229)))) (size!11847 (right!12608 (c!231627 (tokens!1713 acc!229)))))))))

(assert (=> d!403226 (= (inv!18730 (c!231627 (tokens!1713 acc!229))) e!900397)))

(declare-fun b!1410465 () Bool)

(declare-fun res!638876 () Bool)

(assert (=> b!1410465 (=> (not res!638876) (not e!900397))))

(assert (=> b!1410465 (= res!638876 (and (not (= (left!12278 (c!231627 (tokens!1713 acc!229))) Empty!4757)) (not (= (right!12608 (c!231627 (tokens!1713 acc!229))) Empty!4757))))))

(declare-fun b!1410466 () Bool)

(declare-fun res!638877 () Bool)

(assert (=> b!1410466 (=> (not res!638877) (not e!900397))))

(assert (=> b!1410466 (= res!638877 (= (cheight!4968 (c!231627 (tokens!1713 acc!229))) (+ (max!0 (height!688 (left!12278 (c!231627 (tokens!1713 acc!229)))) (height!688 (right!12608 (c!231627 (tokens!1713 acc!229))))) 1)))))

(declare-fun b!1410467 () Bool)

(assert (=> b!1410467 (= e!900397 (<= 0 (cheight!4968 (c!231627 (tokens!1713 acc!229)))))))

(assert (= (and d!403226 res!638875) b!1410465))

(assert (= (and b!1410465 res!638876) b!1410466))

(assert (= (and b!1410466 res!638877) b!1410467))

(declare-fun m!1590399 () Bool)

(assert (=> d!403226 m!1590399))

(declare-fun m!1590401 () Bool)

(assert (=> d!403226 m!1590401))

(assert (=> b!1410466 m!1589571))

(assert (=> b!1410466 m!1589573))

(assert (=> b!1410466 m!1589571))

(assert (=> b!1410466 m!1589573))

(declare-fun m!1590403 () Bool)

(assert (=> b!1410466 m!1590403))

(assert (=> b!1409701 d!403226))

(declare-fun d!403228 () Bool)

(assert (=> d!403228 (= (inv!18717 (tag!2756 (h!19780 (rules!10965 acc!229)))) (= (mod (str.len (value!80712 (tag!2756 (h!19780 (rules!10965 acc!229))))) 2) 0))))

(assert (=> b!1409765 d!403228))

(declare-fun d!403230 () Bool)

(declare-fun res!638878 () Bool)

(declare-fun e!900398 () Bool)

(assert (=> d!403230 (=> (not res!638878) (not e!900398))))

(assert (=> d!403230 (= res!638878 (semiInverseModEq!969 (toChars!3648 (transformation!2494 (h!19780 (rules!10965 acc!229)))) (toValue!3789 (transformation!2494 (h!19780 (rules!10965 acc!229))))))))

(assert (=> d!403230 (= (inv!18734 (transformation!2494 (h!19780 (rules!10965 acc!229)))) e!900398)))

(declare-fun b!1410468 () Bool)

(assert (=> b!1410468 (= e!900398 (equivClasses!928 (toChars!3648 (transformation!2494 (h!19780 (rules!10965 acc!229)))) (toValue!3789 (transformation!2494 (h!19780 (rules!10965 acc!229))))))))

(assert (= (and d!403230 res!638878) b!1410468))

(declare-fun m!1590405 () Bool)

(assert (=> d!403230 m!1590405))

(declare-fun m!1590407 () Bool)

(assert (=> b!1410468 m!1590407))

(assert (=> b!1409765 d!403230))

(declare-fun d!403232 () Bool)

(assert (=> d!403232 (= (isEmpty!8765 (rules!10965 sep!3)) (is-Nil!14379 (rules!10965 sep!3)))))

(assert (=> d!402854 d!403232))

(declare-fun d!403234 () Bool)

(declare-fun lt!471470 () BalanceConc!9452)

(assert (=> d!403234 (= (list!5623 lt!471470) (printList!645 Lexer!2182 (list!5622 (tokens!1713 acc!229))))))

(assert (=> d!403234 (= lt!471470 (printTailRec!627 Lexer!2182 (tokens!1713 acc!229) 0 (BalanceConc!9453 Empty!4756)))))

(assert (=> d!403234 (= (print!946 Lexer!2182 (tokens!1713 acc!229)) lt!471470)))

(declare-fun bs!338899 () Bool)

(assert (= bs!338899 d!403234))

(declare-fun m!1590409 () Bool)

(assert (=> bs!338899 m!1590409))

(assert (=> bs!338899 m!1588473))

(assert (=> bs!338899 m!1588473))

(declare-fun m!1590411 () Bool)

(assert (=> bs!338899 m!1590411))

(declare-fun m!1590413 () Bool)

(assert (=> bs!338899 m!1590413))

(assert (=> bm!93957 d!403234))

(declare-fun d!403236 () Bool)

(declare-fun res!638879 () Bool)

(declare-fun e!900399 () Bool)

(assert (=> d!403236 (=> (not res!638879) (not e!900399))))

(assert (=> d!403236 (= res!638879 (<= (size!11841 (list!5635 (xs!7484 (c!231627 (tokens!1713 acc!229))))) 512))))

(assert (=> d!403236 (= (inv!18731 (c!231627 (tokens!1713 acc!229))) e!900399)))

(declare-fun b!1410469 () Bool)

(declare-fun res!638880 () Bool)

(assert (=> b!1410469 (=> (not res!638880) (not e!900399))))

(assert (=> b!1410469 (= res!638880 (= (csize!9745 (c!231627 (tokens!1713 acc!229))) (size!11841 (list!5635 (xs!7484 (c!231627 (tokens!1713 acc!229)))))))))

(declare-fun b!1410470 () Bool)

(assert (=> b!1410470 (= e!900399 (and (> (csize!9745 (c!231627 (tokens!1713 acc!229))) 0) (<= (csize!9745 (c!231627 (tokens!1713 acc!229))) 512)))))

(assert (= (and d!403236 res!638879) b!1410469))

(assert (= (and b!1410469 res!638880) b!1410470))

(declare-fun m!1590415 () Bool)

(assert (=> d!403236 m!1590415))

(assert (=> d!403236 m!1590415))

(declare-fun m!1590417 () Bool)

(assert (=> d!403236 m!1590417))

(assert (=> b!1410469 m!1590415))

(assert (=> b!1410469 m!1590415))

(assert (=> b!1410469 m!1590417))

(assert (=> b!1409703 d!403236))

(declare-fun d!403238 () Bool)

(declare-fun c!231780 () Bool)

(assert (=> d!403238 (= c!231780 (is-Node!4757 (left!12278 (c!231627 (tokens!1713 sep!3)))))))

(declare-fun e!900400 () Bool)

(assert (=> d!403238 (= (inv!18720 (left!12278 (c!231627 (tokens!1713 sep!3)))) e!900400)))

(declare-fun b!1410471 () Bool)

(assert (=> b!1410471 (= e!900400 (inv!18730 (left!12278 (c!231627 (tokens!1713 sep!3)))))))

(declare-fun b!1410472 () Bool)

(declare-fun e!900401 () Bool)

(assert (=> b!1410472 (= e!900400 e!900401)))

(declare-fun res!638881 () Bool)

(assert (=> b!1410472 (= res!638881 (not (is-Leaf!7201 (left!12278 (c!231627 (tokens!1713 sep!3))))))))

(assert (=> b!1410472 (=> res!638881 e!900401)))

(declare-fun b!1410473 () Bool)

(assert (=> b!1410473 (= e!900401 (inv!18731 (left!12278 (c!231627 (tokens!1713 sep!3)))))))

(assert (= (and d!403238 c!231780) b!1410471))

(assert (= (and d!403238 (not c!231780)) b!1410472))

(assert (= (and b!1410472 (not res!638881)) b!1410473))

(declare-fun m!1590419 () Bool)

(assert (=> b!1410471 m!1590419))

(declare-fun m!1590421 () Bool)

(assert (=> b!1410473 m!1590421))

(assert (=> b!1409767 d!403238))

(declare-fun d!403240 () Bool)

(declare-fun c!231781 () Bool)

(assert (=> d!403240 (= c!231781 (is-Node!4757 (right!12608 (c!231627 (tokens!1713 sep!3)))))))

(declare-fun e!900402 () Bool)

(assert (=> d!403240 (= (inv!18720 (right!12608 (c!231627 (tokens!1713 sep!3)))) e!900402)))

(declare-fun b!1410474 () Bool)

(assert (=> b!1410474 (= e!900402 (inv!18730 (right!12608 (c!231627 (tokens!1713 sep!3)))))))

(declare-fun b!1410475 () Bool)

(declare-fun e!900403 () Bool)

(assert (=> b!1410475 (= e!900402 e!900403)))

(declare-fun res!638882 () Bool)

(assert (=> b!1410475 (= res!638882 (not (is-Leaf!7201 (right!12608 (c!231627 (tokens!1713 sep!3))))))))

(assert (=> b!1410475 (=> res!638882 e!900403)))

(declare-fun b!1410476 () Bool)

(assert (=> b!1410476 (= e!900403 (inv!18731 (right!12608 (c!231627 (tokens!1713 sep!3)))))))

(assert (= (and d!403240 c!231781) b!1410474))

(assert (= (and d!403240 (not c!231781)) b!1410475))

(assert (= (and b!1410475 (not res!638882)) b!1410476))

(declare-fun m!1590423 () Bool)

(assert (=> b!1410474 m!1590423))

(declare-fun m!1590425 () Bool)

(assert (=> b!1410476 m!1590425))

(assert (=> b!1409767 d!403240))

(declare-fun d!403242 () Bool)

(declare-fun lt!471473 () Int)

(assert (=> d!403242 (>= lt!471473 0)))

(declare-fun e!900406 () Int)

(assert (=> d!403242 (= lt!471473 e!900406)))

(declare-fun c!231784 () Bool)

(assert (=> d!403242 (= c!231784 (is-Nil!14380 (list!5624 objs!24)))))

(assert (=> d!403242 (= (size!11837 (list!5624 objs!24)) lt!471473)))

(declare-fun b!1410481 () Bool)

(assert (=> b!1410481 (= e!900406 0)))

(declare-fun b!1410482 () Bool)

(assert (=> b!1410482 (= e!900406 (+ 1 (size!11837 (t!123365 (list!5624 objs!24)))))))

(assert (= (and d!403242 c!231784) b!1410481))

(assert (= (and d!403242 (not c!231784)) b!1410482))

(declare-fun m!1590427 () Bool)

(assert (=> b!1410482 m!1590427))

(assert (=> d!402844 d!403242))

(assert (=> d!402844 d!403088))

(declare-fun d!403244 () Bool)

(declare-fun lt!471476 () Int)

(assert (=> d!403244 (= lt!471476 (size!11837 (list!5632 (c!231628 objs!24))))))

(assert (=> d!403244 (= lt!471476 (ite (is-Empty!4758 (c!231628 objs!24)) 0 (ite (is-Leaf!7202 (c!231628 objs!24)) (csize!9747 (c!231628 objs!24)) (csize!9746 (c!231628 objs!24)))))))

(assert (=> d!403244 (= (size!11838 (c!231628 objs!24)) lt!471476)))

(declare-fun bs!338900 () Bool)

(assert (= bs!338900 d!403244))

(assert (=> bs!338900 m!1589771))

(assert (=> bs!338900 m!1589771))

(declare-fun m!1590429 () Bool)

(assert (=> bs!338900 m!1590429))

(assert (=> d!402844 d!403244))

(declare-fun d!403246 () Bool)

(assert (=> d!403246 (= (list!5622 (ite c!231657 (tokens!1713 (head!2638 objs!24)) (tokens!1713 acc!229))) (list!5629 (c!231627 (ite c!231657 (tokens!1713 (head!2638 objs!24)) (tokens!1713 acc!229)))))))

(declare-fun bs!338901 () Bool)

(assert (= bs!338901 d!403246))

(declare-fun m!1590431 () Bool)

(assert (=> bs!338901 m!1590431))

(assert (=> bm!93948 d!403246))

(declare-fun b!1410486 () Bool)

(declare-fun e!900407 () Bool)

(declare-fun lt!471477 () List!14444)

(assert (=> b!1410486 (= e!900407 (or (not (= lt!470678 Nil!14378)) (= lt!471477 lt!470677)))))

(declare-fun b!1410484 () Bool)

(declare-fun e!900408 () List!14444)

(assert (=> b!1410484 (= e!900408 (Cons!14378 (h!19779 lt!470677) (++!3734 (t!123363 lt!470677) lt!470678)))))

(declare-fun b!1410483 () Bool)

(assert (=> b!1410483 (= e!900408 lt!470678)))

(declare-fun d!403248 () Bool)

(assert (=> d!403248 e!900407))

(declare-fun res!638884 () Bool)

(assert (=> d!403248 (=> (not res!638884) (not e!900407))))

(assert (=> d!403248 (= res!638884 (= (content!2136 lt!471477) (set.union (content!2136 lt!470677) (content!2136 lt!470678))))))

(assert (=> d!403248 (= lt!471477 e!900408)))

(declare-fun c!231785 () Bool)

(assert (=> d!403248 (= c!231785 (is-Nil!14378 lt!470677))))

(assert (=> d!403248 (= (++!3734 lt!470677 lt!470678) lt!471477)))

(declare-fun b!1410485 () Bool)

(declare-fun res!638883 () Bool)

(assert (=> b!1410485 (=> (not res!638883) (not e!900407))))

(assert (=> b!1410485 (= res!638883 (= (size!11841 lt!471477) (+ (size!11841 lt!470677) (size!11841 lt!470678))))))

(assert (= (and d!403248 c!231785) b!1410483))

(assert (= (and d!403248 (not c!231785)) b!1410484))

(assert (= (and d!403248 res!638884) b!1410485))

(assert (= (and b!1410485 res!638883) b!1410486))

(declare-fun m!1590433 () Bool)

(assert (=> b!1410484 m!1590433))

(declare-fun m!1590435 () Bool)

(assert (=> d!403248 m!1590435))

(declare-fun m!1590437 () Bool)

(assert (=> d!403248 m!1590437))

(declare-fun m!1590439 () Bool)

(assert (=> d!403248 m!1590439))

(declare-fun m!1590441 () Bool)

(assert (=> b!1410485 m!1590441))

(declare-fun m!1590443 () Bool)

(assert (=> b!1410485 m!1590443))

(declare-fun m!1590445 () Bool)

(assert (=> b!1410485 m!1590445))

(assert (=> b!1409679 d!403248))

(assert (=> b!1409567 d!402868))

(declare-fun d!403250 () Bool)

(declare-fun c!231786 () Bool)

(assert (=> d!403250 (= c!231786 (is-Cons!14378 (ite c!231657 Nil!14378 (ite c!231659 (t!123363 lt!470673) lt!470649))))))

(declare-fun e!900409 () List!14443)

(assert (=> d!403250 (= (printList!645 (ite (or c!231657 c!231659) Lexer!2182 lt!470668) (ite c!231657 Nil!14378 (ite c!231659 (t!123363 lt!470673) lt!470649))) e!900409)))

(declare-fun b!1410487 () Bool)

(assert (=> b!1410487 (= e!900409 (++!3733 (list!5623 (charsOf!1460 (h!19779 (ite c!231657 Nil!14378 (ite c!231659 (t!123363 lt!470673) lt!470649))))) (printList!645 (ite (or c!231657 c!231659) Lexer!2182 lt!470668) (t!123363 (ite c!231657 Nil!14378 (ite c!231659 (t!123363 lt!470673) lt!470649))))))))

(declare-fun b!1410488 () Bool)

(assert (=> b!1410488 (= e!900409 Nil!14377)))

(assert (= (and d!403250 c!231786) b!1410487))

(assert (= (and d!403250 (not c!231786)) b!1410488))

(declare-fun m!1590447 () Bool)

(assert (=> b!1410487 m!1590447))

(assert (=> b!1410487 m!1590447))

(declare-fun m!1590449 () Bool)

(assert (=> b!1410487 m!1590449))

(declare-fun m!1590451 () Bool)

(assert (=> b!1410487 m!1590451))

(assert (=> b!1410487 m!1590449))

(assert (=> b!1410487 m!1590451))

(declare-fun m!1590453 () Bool)

(assert (=> b!1410487 m!1590453))

(assert (=> bm!93931 d!403250))

(declare-fun b!1410489 () Bool)

(declare-fun res!638885 () Bool)

(declare-fun e!900411 () Bool)

(assert (=> b!1410489 (=> (not res!638885) (not e!900411))))

(assert (=> b!1410489 (= res!638885 (not (isEmpty!8769 (left!12279 (tail!2047 (c!231628 objs!24))))))))

(declare-fun b!1410490 () Bool)

(assert (=> b!1410490 (= e!900411 (not (isEmpty!8769 (right!12609 (tail!2047 (c!231628 objs!24))))))))

(declare-fun b!1410492 () Bool)

(declare-fun res!638887 () Bool)

(assert (=> b!1410492 (=> (not res!638887) (not e!900411))))

(assert (=> b!1410492 (= res!638887 (isBalanced!1402 (right!12609 (tail!2047 (c!231628 objs!24)))))))

(declare-fun b!1410493 () Bool)

(declare-fun e!900410 () Bool)

(assert (=> b!1410493 (= e!900410 e!900411)))

(declare-fun res!638889 () Bool)

(assert (=> b!1410493 (=> (not res!638889) (not e!900411))))

(assert (=> b!1410493 (= res!638889 (<= (- 1) (- (height!690 (left!12279 (tail!2047 (c!231628 objs!24)))) (height!690 (right!12609 (tail!2047 (c!231628 objs!24)))))))))

(declare-fun b!1410494 () Bool)

(declare-fun res!638886 () Bool)

(assert (=> b!1410494 (=> (not res!638886) (not e!900411))))

(assert (=> b!1410494 (= res!638886 (isBalanced!1402 (left!12279 (tail!2047 (c!231628 objs!24)))))))

(declare-fun d!403252 () Bool)

(declare-fun res!638890 () Bool)

(assert (=> d!403252 (=> res!638890 e!900410)))

(assert (=> d!403252 (= res!638890 (not (is-Node!4758 (tail!2047 (c!231628 objs!24)))))))

(assert (=> d!403252 (= (isBalanced!1402 (tail!2047 (c!231628 objs!24))) e!900410)))

(declare-fun b!1410491 () Bool)

(declare-fun res!638888 () Bool)

(assert (=> b!1410491 (=> (not res!638888) (not e!900411))))

(assert (=> b!1410491 (= res!638888 (<= (- (height!690 (left!12279 (tail!2047 (c!231628 objs!24)))) (height!690 (right!12609 (tail!2047 (c!231628 objs!24))))) 1))))

(assert (= (and d!403252 (not res!638890)) b!1410493))

(assert (= (and b!1410493 res!638889) b!1410491))

(assert (= (and b!1410491 res!638888) b!1410494))

(assert (= (and b!1410494 res!638886) b!1410492))

(assert (= (and b!1410492 res!638887) b!1410489))

(assert (= (and b!1410489 res!638885) b!1410490))

(declare-fun m!1590455 () Bool)

(assert (=> b!1410494 m!1590455))

(declare-fun m!1590457 () Bool)

(assert (=> b!1410491 m!1590457))

(declare-fun m!1590459 () Bool)

(assert (=> b!1410491 m!1590459))

(declare-fun m!1590461 () Bool)

(assert (=> b!1410492 m!1590461))

(declare-fun m!1590463 () Bool)

(assert (=> b!1410490 m!1590463))

(declare-fun m!1590465 () Bool)

(assert (=> b!1410489 m!1590465))

(assert (=> b!1410493 m!1590457))

(assert (=> b!1410493 m!1590459))

(assert (=> d!402858 d!403252))

(declare-fun b!1410511 () Bool)

(declare-fun lt!471496 () Unit!20751)

(declare-fun lt!471501 () Unit!20751)

(assert (=> b!1410511 (= lt!471496 lt!471501)))

(declare-fun lt!471498 () List!14446)

(declare-fun lt!471499 () List!14446)

(declare-fun call!94102 () List!14446)

(declare-fun ++!3744 (List!14446 List!14446) List!14446)

(assert (=> b!1410511 (= (tail!2048 (++!3744 lt!471498 lt!471499)) (++!3744 call!94102 lt!471499))))

(declare-fun lemmaTailOfConcatIsTailConcat!10 (List!14446 List!14446) Unit!20751)

(assert (=> b!1410511 (= lt!471501 (lemmaTailOfConcatIsTailConcat!10 lt!471498 lt!471499))))

(assert (=> b!1410511 (= lt!471499 (list!5632 (right!12609 (c!231628 objs!24))))))

(assert (=> b!1410511 (= lt!471498 (list!5632 (left!12279 (c!231628 objs!24))))))

(declare-fun e!900425 () Conc!4758)

(declare-fun call!94103 () Conc!4758)

(declare-fun ++!3745 (Conc!4758 Conc!4758) Conc!4758)

(assert (=> b!1410511 (= e!900425 (++!3745 call!94103 (right!12609 (c!231628 objs!24))))))

(declare-fun b!1410512 () Bool)

(assert (=> b!1410512 (= e!900425 call!94103)))

(declare-fun b!1410513 () Bool)

(declare-fun e!900422 () Conc!4758)

(assert (=> b!1410513 (= e!900422 e!900425)))

(declare-fun res!638895 () Bool)

(assert (=> b!1410513 (= res!638895 (is-Node!4758 (c!231628 objs!24)))))

(declare-fun e!900424 () Bool)

(assert (=> b!1410513 (=> (not res!638895) (not e!900424))))

(declare-fun c!231793 () Bool)

(assert (=> b!1410513 (= c!231793 e!900424)))

(declare-fun c!231795 () Bool)

(declare-fun bm!94097 () Bool)

(declare-fun lt!471495 () List!14446)

(assert (=> bm!94097 (= call!94102 (tail!2048 (ite c!231795 lt!471495 lt!471498)))))

(declare-fun b!1410514 () Bool)

(assert (=> b!1410514 (= e!900424 (isEmpty!8769 (left!12279 (c!231628 objs!24))))))

(declare-fun b!1410515 () Bool)

(declare-fun e!900423 () Conc!4758)

(assert (=> b!1410515 (= e!900423 Empty!4758)))

(declare-fun b!1410516 () Bool)

(assert (=> b!1410516 (= e!900422 e!900423)))

(declare-fun c!231794 () Bool)

(assert (=> b!1410516 (= c!231794 (= (csize!9747 (c!231628 objs!24)) 1))))

(declare-fun bm!94098 () Bool)

(assert (=> bm!94098 (= call!94103 (tail!2047 (ite c!231793 (right!12609 (c!231628 objs!24)) (left!12279 (c!231628 objs!24)))))))

(declare-fun b!1410518 () Bool)

(declare-fun lt!471500 () Unit!20751)

(declare-fun lt!471497 () Unit!20751)

(assert (=> b!1410518 (= lt!471500 lt!471497)))

(declare-fun slice!530 (List!14446 Int Int) List!14446)

(assert (=> b!1410518 (= call!94102 (slice!530 lt!471495 1 (size!11837 lt!471495)))))

(declare-fun sliceTailLemma!10 (List!14446) Unit!20751)

(assert (=> b!1410518 (= lt!471497 (sliceTailLemma!10 lt!471495))))

(assert (=> b!1410518 (= lt!471495 (list!5637 (xs!7485 (c!231628 objs!24))))))

(declare-fun slice!531 (IArray!9521 Int Int) IArray!9521)

(assert (=> b!1410518 (= e!900423 (Leaf!7202 (slice!531 (xs!7485 (c!231628 objs!24)) 1 (csize!9747 (c!231628 objs!24))) (- (csize!9747 (c!231628 objs!24)) 1)))))

(declare-fun b!1410517 () Bool)

(declare-fun e!900426 () Bool)

(declare-fun lt!471494 () Conc!4758)

(assert (=> b!1410517 (= e!900426 (= (list!5632 lt!471494) (tail!2048 (list!5632 (c!231628 objs!24)))))))

(declare-fun d!403254 () Bool)

(assert (=> d!403254 e!900426))

(declare-fun res!638896 () Bool)

(assert (=> d!403254 (=> (not res!638896) (not e!900426))))

(assert (=> d!403254 (= res!638896 (isBalanced!1402 lt!471494))))

(assert (=> d!403254 (= lt!471494 e!900422)))

(assert (=> d!403254 (= c!231795 (is-Leaf!7202 (c!231628 objs!24)))))

(assert (=> d!403254 (isBalanced!1402 (c!231628 objs!24))))

(assert (=> d!403254 (= (tail!2047 (c!231628 objs!24)) lt!471494)))

(assert (= (and d!403254 c!231795) b!1410516))

(assert (= (and d!403254 (not c!231795)) b!1410513))

(assert (= (and b!1410516 c!231794) b!1410515))

(assert (= (and b!1410516 (not c!231794)) b!1410518))

(assert (= (and b!1410513 res!638895) b!1410514))

(assert (= (and b!1410513 c!231793) b!1410512))

(assert (= (and b!1410513 (not c!231793)) b!1410511))

(assert (= (or b!1410512 b!1410511) bm!94098))

(assert (= (or b!1410518 b!1410511) bm!94097))

(assert (= (and d!403254 res!638896) b!1410517))

(declare-fun m!1590467 () Bool)

(assert (=> bm!94097 m!1590467))

(declare-fun m!1590469 () Bool)

(assert (=> bm!94098 m!1590469))

(declare-fun m!1590471 () Bool)

(assert (=> b!1410518 m!1590471))

(assert (=> b!1410518 m!1590471))

(declare-fun m!1590473 () Bool)

(assert (=> b!1410518 m!1590473))

(declare-fun m!1590475 () Bool)

(assert (=> b!1410518 m!1590475))

(declare-fun m!1590477 () Bool)

(assert (=> b!1410518 m!1590477))

(assert (=> b!1410518 m!1590371))

(declare-fun m!1590479 () Bool)

(assert (=> d!403254 m!1590479))

(assert (=> d!403254 m!1588513))

(declare-fun m!1590481 () Bool)

(assert (=> b!1410511 m!1590481))

(declare-fun m!1590483 () Bool)

(assert (=> b!1410511 m!1590483))

(declare-fun m!1590485 () Bool)

(assert (=> b!1410511 m!1590485))

(declare-fun m!1590487 () Bool)

(assert (=> b!1410511 m!1590487))

(assert (=> b!1410511 m!1590483))

(declare-fun m!1590489 () Bool)

(assert (=> b!1410511 m!1590489))

(declare-fun m!1590491 () Bool)

(assert (=> b!1410511 m!1590491))

(declare-fun m!1590493 () Bool)

(assert (=> b!1410511 m!1590493))

(declare-fun m!1590495 () Bool)

(assert (=> b!1410517 m!1590495))

(assert (=> b!1410517 m!1589771))

(assert (=> b!1410517 m!1589771))

(declare-fun m!1590497 () Bool)

(assert (=> b!1410517 m!1590497))

(assert (=> b!1410514 m!1589767))

(assert (=> d!402858 d!403254))

(assert (=> d!402858 d!402864))

(declare-fun bs!338902 () Bool)

(declare-fun d!403256 () Bool)

(assert (= bs!338902 (and d!403256 d!402950)))

(declare-fun lambda!62359 () Int)

(assert (=> bs!338902 (= (and (= Lexer!2182 lt!470653) (= (rules!10965 sep!3) (rules!10965 acc!229))) (= lambda!62359 lambda!62349))))

(declare-fun bs!338903 () Bool)

(assert (= bs!338903 (and d!403256 d!403162)))

(assert (=> bs!338903 (= (= (rules!10965 sep!3) (rules!10965 acc!229)) (= lambda!62359 lambda!62358))))

(declare-fun b!1410522 () Bool)

(declare-fun e!900430 () Bool)

(assert (=> b!1410522 (= e!900430 true)))

(declare-fun b!1410521 () Bool)

(declare-fun e!900429 () Bool)

(assert (=> b!1410521 (= e!900429 e!900430)))

(declare-fun b!1410520 () Bool)

(declare-fun e!900428 () Bool)

(assert (=> b!1410520 (= e!900428 e!900429)))

(assert (=> d!403256 e!900428))

(assert (= b!1410521 b!1410522))

(assert (= b!1410520 b!1410521))

(assert (= (and d!403256 (is-Cons!14379 (rules!10965 sep!3))) b!1410520))

(assert (=> b!1410522 (< (dynLambda!6665 order!8789 (toValue!3789 (transformation!2494 (h!19780 (rules!10965 sep!3))))) (dynLambda!6666 order!8791 lambda!62359))))

(assert (=> b!1410522 (< (dynLambda!6667 order!8793 (toChars!3648 (transformation!2494 (h!19780 (rules!10965 sep!3))))) (dynLambda!6666 order!8791 lambda!62359))))

(assert (=> d!403256 true))

(declare-fun e!900427 () Bool)

(assert (=> d!403256 e!900427))

(declare-fun res!638897 () Bool)

(assert (=> d!403256 (=> (not res!638897) (not e!900427))))

(declare-fun lt!471502 () Bool)

(assert (=> d!403256 (= res!638897 (= lt!471502 (forall!3502 (list!5622 (tokens!1713 sep!3)) lambda!62359)))))

(assert (=> d!403256 (= lt!471502 (forall!3507 (tokens!1713 sep!3) lambda!62359))))

(assert (=> d!403256 (not (isEmpty!8765 (rules!10965 sep!3)))))

(assert (=> d!403256 (= (rulesProduceEachTokenIndividually!781 Lexer!2182 (rules!10965 sep!3) (tokens!1713 sep!3)) lt!471502)))

(declare-fun b!1410519 () Bool)

(assert (=> b!1410519 (= e!900427 (= lt!471502 (rulesProduceEachTokenIndividuallyList!668 Lexer!2182 (rules!10965 sep!3) (list!5622 (tokens!1713 sep!3)))))))

(assert (= (and d!403256 res!638897) b!1410519))

(declare-fun m!1590499 () Bool)

(assert (=> d!403256 m!1590499))

(assert (=> d!403256 m!1590499))

(declare-fun m!1590501 () Bool)

(assert (=> d!403256 m!1590501))

(declare-fun m!1590503 () Bool)

(assert (=> d!403256 m!1590503))

(assert (=> d!403256 m!1588523))

(assert (=> b!1410519 m!1590499))

(assert (=> b!1410519 m!1590499))

(declare-fun m!1590505 () Bool)

(assert (=> b!1410519 m!1590505))

(assert (=> b!1409714 d!403256))

(declare-fun c!231796 () Bool)

(declare-fun d!403258 () Bool)

(assert (=> d!403258 (= c!231796 (is-Cons!14378 (ite c!231657 lt!470638 (ite c!231659 call!93948 call!93952))))))

(declare-fun e!900431 () List!14443)

(assert (=> d!403258 (= (printList!645 (ite c!231657 lt!470655 (ite c!231659 Lexer!2182 lt!470668)) (ite c!231657 lt!470638 (ite c!231659 call!93948 call!93952))) e!900431)))

(declare-fun b!1410523 () Bool)

(assert (=> b!1410523 (= e!900431 (++!3733 (list!5623 (charsOf!1460 (h!19779 (ite c!231657 lt!470638 (ite c!231659 call!93948 call!93952))))) (printList!645 (ite c!231657 lt!470655 (ite c!231659 Lexer!2182 lt!470668)) (t!123363 (ite c!231657 lt!470638 (ite c!231659 call!93948 call!93952))))))))

(declare-fun b!1410524 () Bool)

(assert (=> b!1410524 (= e!900431 Nil!14377)))

(assert (= (and d!403258 c!231796) b!1410523))

(assert (= (and d!403258 (not c!231796)) b!1410524))

(declare-fun m!1590507 () Bool)

(assert (=> b!1410523 m!1590507))

(assert (=> b!1410523 m!1590507))

(declare-fun m!1590509 () Bool)

(assert (=> b!1410523 m!1590509))

(declare-fun m!1590511 () Bool)

(assert (=> b!1410523 m!1590511))

(assert (=> b!1410523 m!1590509))

(assert (=> b!1410523 m!1590511))

(declare-fun m!1590513 () Bool)

(assert (=> b!1410523 m!1590513))

(assert (=> bm!93932 d!403258))

(declare-fun d!403260 () Bool)

(declare-fun res!638898 () Bool)

(declare-fun e!900432 () Bool)

(assert (=> d!403260 (=> res!638898 e!900432)))

(assert (=> d!403260 (= res!638898 (is-Nil!14380 (list!5624 objs!24)))))

(assert (=> d!403260 (= (forall!3498 (list!5624 objs!24) lambda!62336) e!900432)))

(declare-fun b!1410525 () Bool)

(declare-fun e!900433 () Bool)

(assert (=> b!1410525 (= e!900432 e!900433)))

(declare-fun res!638899 () Bool)

(assert (=> b!1410525 (=> (not res!638899) (not e!900433))))

(assert (=> b!1410525 (= res!638899 (dynLambda!6668 lambda!62336 (h!19781 (list!5624 objs!24))))))

(declare-fun b!1410526 () Bool)

(assert (=> b!1410526 (= e!900433 (forall!3498 (t!123365 (list!5624 objs!24)) lambda!62336))))

(assert (= (and d!403260 (not res!638898)) b!1410525))

(assert (= (and b!1410525 res!638899) b!1410526))

(declare-fun b_lambda!44499 () Bool)

(assert (=> (not b_lambda!44499) (not b!1410525)))

(declare-fun m!1590515 () Bool)

(assert (=> b!1410525 m!1590515))

(declare-fun m!1590517 () Bool)

(assert (=> b!1410526 m!1590517))

(assert (=> d!402848 d!403260))

(assert (=> d!402848 d!403088))

(declare-fun b!1410530 () Bool)

(declare-fun e!900436 () Bool)

(assert (=> b!1410530 (= e!900436 (forall!3499 (right!12609 (c!231628 objs!24)) lambda!62336))))

(declare-fun b!1410527 () Bool)

(declare-fun e!900435 () Bool)

(declare-fun e!900434 () Bool)

(assert (=> b!1410527 (= e!900435 e!900434)))

(declare-fun c!231797 () Bool)

(assert (=> b!1410527 (= c!231797 (is-Leaf!7202 (c!231628 objs!24)))))

(declare-fun b!1410529 () Bool)

(assert (=> b!1410529 (= e!900434 e!900436)))

(declare-fun lt!471503 () Unit!20751)

(assert (=> b!1410529 (= lt!471503 (lemmaForallConcat!125 (list!5632 (left!12279 (c!231628 objs!24))) (list!5632 (right!12609 (c!231628 objs!24))) lambda!62336))))

(declare-fun res!638901 () Bool)

(assert (=> b!1410529 (= res!638901 (forall!3499 (left!12279 (c!231628 objs!24)) lambda!62336))))

(assert (=> b!1410529 (=> (not res!638901) (not e!900436))))

(declare-fun b!1410528 () Bool)

(assert (=> b!1410528 (= e!900434 (forall!3503 (xs!7485 (c!231628 objs!24)) lambda!62336))))

(declare-fun d!403262 () Bool)

(declare-fun lt!471504 () Bool)

(assert (=> d!403262 (= lt!471504 (forall!3498 (list!5632 (c!231628 objs!24)) lambda!62336))))

(assert (=> d!403262 (= lt!471504 e!900435)))

(declare-fun res!638900 () Bool)

(assert (=> d!403262 (=> res!638900 e!900435)))

(assert (=> d!403262 (= res!638900 (is-Empty!4758 (c!231628 objs!24)))))

(assert (=> d!403262 (= (forall!3499 (c!231628 objs!24) lambda!62336) lt!471504)))

(assert (= (and d!403262 (not res!638900)) b!1410527))

(assert (= (and b!1410527 c!231797) b!1410528))

(assert (= (and b!1410527 (not c!231797)) b!1410529))

(assert (= (and b!1410529 res!638901) b!1410530))

(declare-fun m!1590519 () Bool)

(assert (=> b!1410530 m!1590519))

(assert (=> b!1410529 m!1590491))

(assert (=> b!1410529 m!1590493))

(assert (=> b!1410529 m!1590491))

(assert (=> b!1410529 m!1590493))

(declare-fun m!1590521 () Bool)

(assert (=> b!1410529 m!1590521))

(declare-fun m!1590523 () Bool)

(assert (=> b!1410529 m!1590523))

(declare-fun m!1590525 () Bool)

(assert (=> b!1410528 m!1590525))

(assert (=> d!403262 m!1589771))

(assert (=> d!403262 m!1589771))

(declare-fun m!1590527 () Bool)

(assert (=> d!403262 m!1590527))

(assert (=> d!402848 d!403262))

(declare-fun b!1410544 () Bool)

(declare-fun b_free!34543 () Bool)

(declare-fun b_next!35247 () Bool)

(assert (=> b!1410544 (= b_free!34543 (not b_next!35247))))

(declare-fun tp!400339 () Bool)

(declare-fun b_and!94471 () Bool)

(assert (=> b!1410544 (= tp!400339 b_and!94471)))

(declare-fun b_free!34545 () Bool)

(declare-fun b_next!35249 () Bool)

(assert (=> b!1410544 (= b_free!34545 (not b_next!35249))))

(declare-fun tb!73337 () Bool)

(declare-fun t!123439 () Bool)

(assert (=> (and b!1410544 (= (toChars!3648 (transformation!2494 (rule!4257 (h!19779 (innerList!4817 (xs!7484 (c!231627 (tokens!1713 acc!229)))))))) (toChars!3648 (transformation!2494 (rule!4257 (ite c!231657 (h!19779 lt!470654) (h!19779 lt!470673)))))) t!123439) tb!73337))

(declare-fun result!89220 () Bool)

(assert (= result!89220 result!89212))

(assert (=> d!403156 t!123439))

(declare-fun b_and!94473 () Bool)

(declare-fun tp!400341 () Bool)

(assert (=> b!1410544 (= tp!400341 (and (=> t!123439 result!89220) b_and!94473))))

(declare-fun b!1410542 () Bool)

(declare-fun e!900450 () Bool)

(declare-fun e!900451 () Bool)

(declare-fun inv!21 (TokenValue!2584) Bool)

(assert (=> b!1410542 (= e!900450 (and (inv!21 (value!80713 (h!19779 (innerList!4817 (xs!7484 (c!231627 (tokens!1713 acc!229))))))) e!900451))))

(declare-fun e!900453 () Bool)

(assert (=> b!1410544 (= e!900453 (and tp!400339 tp!400341))))

(declare-fun e!900449 () Bool)

(assert (=> b!1409752 (= tp!400276 e!900449)))

(declare-fun b!1410541 () Bool)

(declare-fun tp!400340 () Bool)

(declare-fun inv!18748 (Token!4650) Bool)

(assert (=> b!1410541 (= e!900449 (and (inv!18748 (h!19779 (innerList!4817 (xs!7484 (c!231627 (tokens!1713 acc!229)))))) e!900450 tp!400340))))

(declare-fun b!1410543 () Bool)

(assert (=> b!1410543 (= e!900451 (and (inv!18717 (tag!2756 (rule!4257 (h!19779 (innerList!4817 (xs!7484 (c!231627 (tokens!1713 acc!229)))))))) (inv!18734 (transformation!2494 (rule!4257 (h!19779 (innerList!4817 (xs!7484 (c!231627 (tokens!1713 acc!229)))))))) e!900453))))

(assert (= b!1410543 b!1410544))

(assert (= b!1410542 b!1410543))

(assert (= b!1410541 b!1410542))

(assert (= (and b!1409752 (is-Cons!14378 (innerList!4817 (xs!7484 (c!231627 (tokens!1713 acc!229)))))) b!1410541))

(declare-fun m!1590529 () Bool)

(assert (=> b!1410542 m!1590529))

(declare-fun m!1590531 () Bool)

(assert (=> b!1410541 m!1590531))

(declare-fun m!1590533 () Bool)

(assert (=> b!1410543 m!1590533))

(declare-fun m!1590535 () Bool)

(assert (=> b!1410543 m!1590535))

(declare-fun b!1410548 () Bool)

(declare-fun b_free!34547 () Bool)

(declare-fun b_next!35251 () Bool)

(assert (=> b!1410548 (= b_free!34547 (not b_next!35251))))

(declare-fun tp!400342 () Bool)

(declare-fun b_and!94475 () Bool)

(assert (=> b!1410548 (= tp!400342 b_and!94475)))

(declare-fun b_free!34549 () Bool)

(declare-fun b_next!35253 () Bool)

(assert (=> b!1410548 (= b_free!34549 (not b_next!35253))))

(declare-fun tb!73339 () Bool)

(declare-fun t!123441 () Bool)

(assert (=> (and b!1410548 (= (toChars!3648 (transformation!2494 (rule!4257 (h!19779 (innerList!4817 (xs!7484 (c!231627 (tokens!1713 sep!3)))))))) (toChars!3648 (transformation!2494 (rule!4257 (ite c!231657 (h!19779 lt!470654) (h!19779 lt!470673)))))) t!123441) tb!73339))

(declare-fun result!89222 () Bool)

(assert (= result!89222 result!89212))

(assert (=> d!403156 t!123441))

(declare-fun tp!400344 () Bool)

(declare-fun b_and!94477 () Bool)

(assert (=> b!1410548 (= tp!400344 (and (=> t!123441 result!89222) b_and!94477))))

(declare-fun b!1410546 () Bool)

(declare-fun e!900456 () Bool)

(declare-fun e!900457 () Bool)

(assert (=> b!1410546 (= e!900456 (and (inv!21 (value!80713 (h!19779 (innerList!4817 (xs!7484 (c!231627 (tokens!1713 sep!3))))))) e!900457))))

(declare-fun e!900459 () Bool)

(assert (=> b!1410548 (= e!900459 (and tp!400342 tp!400344))))

(declare-fun e!900455 () Bool)

(assert (=> b!1409769 (= tp!400291 e!900455)))

(declare-fun b!1410545 () Bool)

(declare-fun tp!400343 () Bool)

(assert (=> b!1410545 (= e!900455 (and (inv!18748 (h!19779 (innerList!4817 (xs!7484 (c!231627 (tokens!1713 sep!3)))))) e!900456 tp!400343))))

(declare-fun b!1410547 () Bool)

(assert (=> b!1410547 (= e!900457 (and (inv!18717 (tag!2756 (rule!4257 (h!19779 (innerList!4817 (xs!7484 (c!231627 (tokens!1713 sep!3)))))))) (inv!18734 (transformation!2494 (rule!4257 (h!19779 (innerList!4817 (xs!7484 (c!231627 (tokens!1713 sep!3)))))))) e!900459))))

(assert (= b!1410547 b!1410548))

(assert (= b!1410546 b!1410547))

(assert (= b!1410545 b!1410546))

(assert (= (and b!1409769 (is-Cons!14378 (innerList!4817 (xs!7484 (c!231627 (tokens!1713 sep!3)))))) b!1410545))

(declare-fun m!1590537 () Bool)

(assert (=> b!1410546 m!1590537))

(declare-fun m!1590539 () Bool)

(assert (=> b!1410545 m!1590539))

(declare-fun m!1590541 () Bool)

(assert (=> b!1410547 m!1590541))

(declare-fun m!1590543 () Bool)

(assert (=> b!1410547 m!1590543))

(declare-fun tp!400346 () Bool)

(declare-fun e!900461 () Bool)

(declare-fun tp!400347 () Bool)

(declare-fun b!1410549 () Bool)

(assert (=> b!1410549 (= e!900461 (and (inv!18721 (left!12279 (left!12279 (c!231628 objs!24)))) tp!400346 (inv!18721 (right!12609 (left!12279 (c!231628 objs!24)))) tp!400347))))

(declare-fun b!1410551 () Bool)

(declare-fun e!900462 () Bool)

(declare-fun tp!400345 () Bool)

(assert (=> b!1410551 (= e!900462 tp!400345)))

(declare-fun b!1410550 () Bool)

(assert (=> b!1410550 (= e!900461 (and (inv!18740 (xs!7485 (left!12279 (c!231628 objs!24)))) e!900462))))

(assert (=> b!1409761 (= tp!400286 (and (inv!18721 (left!12279 (c!231628 objs!24))) e!900461))))

(assert (= (and b!1409761 (is-Node!4758 (left!12279 (c!231628 objs!24)))) b!1410549))

(assert (= b!1410550 b!1410551))

(assert (= (and b!1409761 (is-Leaf!7202 (left!12279 (c!231628 objs!24)))) b!1410550))

(declare-fun m!1590545 () Bool)

(assert (=> b!1410549 m!1590545))

(declare-fun m!1590547 () Bool)

(assert (=> b!1410549 m!1590547))

(declare-fun m!1590549 () Bool)

(assert (=> b!1410550 m!1590549))

(assert (=> b!1409761 m!1588571))

(declare-fun tp!400349 () Bool)

(declare-fun tp!400350 () Bool)

(declare-fun e!900463 () Bool)

(declare-fun b!1410552 () Bool)

(assert (=> b!1410552 (= e!900463 (and (inv!18721 (left!12279 (right!12609 (c!231628 objs!24)))) tp!400349 (inv!18721 (right!12609 (right!12609 (c!231628 objs!24)))) tp!400350))))

(declare-fun b!1410554 () Bool)

(declare-fun e!900464 () Bool)

(declare-fun tp!400348 () Bool)

(assert (=> b!1410554 (= e!900464 tp!400348)))

(declare-fun b!1410553 () Bool)

(assert (=> b!1410553 (= e!900463 (and (inv!18740 (xs!7485 (right!12609 (c!231628 objs!24)))) e!900464))))

(assert (=> b!1409761 (= tp!400287 (and (inv!18721 (right!12609 (c!231628 objs!24))) e!900463))))

(assert (= (and b!1409761 (is-Node!4758 (right!12609 (c!231628 objs!24)))) b!1410552))

(assert (= b!1410553 b!1410554))

(assert (= (and b!1409761 (is-Leaf!7202 (right!12609 (c!231628 objs!24)))) b!1410553))

(declare-fun m!1590551 () Bool)

(assert (=> b!1410552 m!1590551))

(declare-fun m!1590553 () Bool)

(assert (=> b!1410552 m!1590553))

(declare-fun m!1590555 () Bool)

(assert (=> b!1410553 m!1590555))

(assert (=> b!1409761 m!1588573))

(declare-fun b!1410555 () Bool)

(declare-fun tp!400352 () Bool)

(declare-fun e!900466 () Bool)

(declare-fun tp!400353 () Bool)

(assert (=> b!1410555 (= e!900466 (and (inv!18720 (left!12278 (left!12278 (c!231627 (tokens!1713 acc!229))))) tp!400353 (inv!18720 (right!12608 (left!12278 (c!231627 (tokens!1713 acc!229))))) tp!400352))))

(declare-fun b!1410557 () Bool)

(declare-fun e!900465 () Bool)

(declare-fun tp!400351 () Bool)

(assert (=> b!1410557 (= e!900465 tp!400351)))

(declare-fun b!1410556 () Bool)

(assert (=> b!1410556 (= e!900466 (and (inv!18738 (xs!7484 (left!12278 (c!231627 (tokens!1713 acc!229))))) e!900465))))

(assert (=> b!1409750 (= tp!400278 (and (inv!18720 (left!12278 (c!231627 (tokens!1713 acc!229)))) e!900466))))

(assert (= (and b!1409750 (is-Node!4757 (left!12278 (c!231627 (tokens!1713 acc!229))))) b!1410555))

(assert (= b!1410556 b!1410557))

(assert (= (and b!1409750 (is-Leaf!7201 (left!12278 (c!231627 (tokens!1713 acc!229))))) b!1410556))

(declare-fun m!1590557 () Bool)

(assert (=> b!1410555 m!1590557))

(declare-fun m!1590559 () Bool)

(assert (=> b!1410555 m!1590559))

(declare-fun m!1590561 () Bool)

(assert (=> b!1410556 m!1590561))

(assert (=> b!1409750 m!1588565))

(declare-fun tp!400356 () Bool)

(declare-fun e!900468 () Bool)

(declare-fun tp!400355 () Bool)

(declare-fun b!1410558 () Bool)

(assert (=> b!1410558 (= e!900468 (and (inv!18720 (left!12278 (right!12608 (c!231627 (tokens!1713 acc!229))))) tp!400356 (inv!18720 (right!12608 (right!12608 (c!231627 (tokens!1713 acc!229))))) tp!400355))))

(declare-fun b!1410560 () Bool)

(declare-fun e!900467 () Bool)

(declare-fun tp!400354 () Bool)

(assert (=> b!1410560 (= e!900467 tp!400354)))

(declare-fun b!1410559 () Bool)

(assert (=> b!1410559 (= e!900468 (and (inv!18738 (xs!7484 (right!12608 (c!231627 (tokens!1713 acc!229))))) e!900467))))

(assert (=> b!1409750 (= tp!400277 (and (inv!18720 (right!12608 (c!231627 (tokens!1713 acc!229)))) e!900468))))

(assert (= (and b!1409750 (is-Node!4757 (right!12608 (c!231627 (tokens!1713 acc!229))))) b!1410558))

(assert (= b!1410559 b!1410560))

(assert (= (and b!1409750 (is-Leaf!7201 (right!12608 (c!231627 (tokens!1713 acc!229))))) b!1410559))

(declare-fun m!1590563 () Bool)

(assert (=> b!1410558 m!1590563))

(declare-fun m!1590565 () Bool)

(assert (=> b!1410558 m!1590565))

(declare-fun m!1590567 () Bool)

(assert (=> b!1410559 m!1590567))

(assert (=> b!1409750 m!1588567))

(declare-fun tp!400359 () Bool)

(declare-fun tp!400358 () Bool)

(declare-fun b!1410561 () Bool)

(declare-fun e!900470 () Bool)

(assert (=> b!1410561 (= e!900470 (and (inv!18720 (left!12278 (left!12278 (c!231627 (tokens!1713 sep!3))))) tp!400359 (inv!18720 (right!12608 (left!12278 (c!231627 (tokens!1713 sep!3))))) tp!400358))))

(declare-fun b!1410563 () Bool)

(declare-fun e!900469 () Bool)

(declare-fun tp!400357 () Bool)

(assert (=> b!1410563 (= e!900469 tp!400357)))

(declare-fun b!1410562 () Bool)

(assert (=> b!1410562 (= e!900470 (and (inv!18738 (xs!7484 (left!12278 (c!231627 (tokens!1713 sep!3))))) e!900469))))

(assert (=> b!1409767 (= tp!400293 (and (inv!18720 (left!12278 (c!231627 (tokens!1713 sep!3)))) e!900470))))

(assert (= (and b!1409767 (is-Node!4757 (left!12278 (c!231627 (tokens!1713 sep!3))))) b!1410561))

(assert (= b!1410562 b!1410563))

(assert (= (and b!1409767 (is-Leaf!7201 (left!12278 (c!231627 (tokens!1713 sep!3))))) b!1410562))

(declare-fun m!1590569 () Bool)

(assert (=> b!1410561 m!1590569))

(declare-fun m!1590571 () Bool)

(assert (=> b!1410561 m!1590571))

(declare-fun m!1590573 () Bool)

(assert (=> b!1410562 m!1590573))

(assert (=> b!1409767 m!1588581))

(declare-fun b!1410564 () Bool)

(declare-fun tp!400362 () Bool)

(declare-fun e!900472 () Bool)

(declare-fun tp!400361 () Bool)

(assert (=> b!1410564 (= e!900472 (and (inv!18720 (left!12278 (right!12608 (c!231627 (tokens!1713 sep!3))))) tp!400362 (inv!18720 (right!12608 (right!12608 (c!231627 (tokens!1713 sep!3))))) tp!400361))))

(declare-fun b!1410566 () Bool)

(declare-fun e!900471 () Bool)

(declare-fun tp!400360 () Bool)

(assert (=> b!1410566 (= e!900471 tp!400360)))

(declare-fun b!1410565 () Bool)

(assert (=> b!1410565 (= e!900472 (and (inv!18738 (xs!7484 (right!12608 (c!231627 (tokens!1713 sep!3))))) e!900471))))

(assert (=> b!1409767 (= tp!400292 (and (inv!18720 (right!12608 (c!231627 (tokens!1713 sep!3)))) e!900472))))

(assert (= (and b!1409767 (is-Node!4757 (right!12608 (c!231627 (tokens!1713 sep!3))))) b!1410564))

(assert (= b!1410565 b!1410566))

(assert (= (and b!1409767 (is-Leaf!7201 (right!12608 (c!231627 (tokens!1713 sep!3))))) b!1410565))

(declare-fun m!1590575 () Bool)

(assert (=> b!1410564 m!1590575))

(declare-fun m!1590577 () Bool)

(assert (=> b!1410564 m!1590577))

(declare-fun m!1590579 () Bool)

(assert (=> b!1410565 m!1590579))

(assert (=> b!1409767 m!1588583))

(declare-fun b!1410569 () Bool)

(declare-fun b_free!34551 () Bool)

(declare-fun b_next!35255 () Bool)

(assert (=> b!1410569 (= b_free!34551 (not b_next!35255))))

(declare-fun tp!400365 () Bool)

(declare-fun b_and!94479 () Bool)

(assert (=> b!1410569 (= tp!400365 b_and!94479)))

(declare-fun b_free!34553 () Bool)

(declare-fun b_next!35257 () Bool)

(assert (=> b!1410569 (= b_free!34553 (not b_next!35257))))

(declare-fun t!123443 () Bool)

(declare-fun tb!73341 () Bool)

(assert (=> (and b!1410569 (= (toChars!3648 (transformation!2494 (h!19780 (t!123364 (rules!10965 sep!3))))) (toChars!3648 (transformation!2494 (rule!4257 (ite c!231657 (h!19779 lt!470654) (h!19779 lt!470673)))))) t!123443) tb!73341))

(declare-fun result!89224 () Bool)

(assert (= result!89224 result!89212))

(assert (=> d!403156 t!123443))

(declare-fun tp!400364 () Bool)

(declare-fun b_and!94481 () Bool)

(assert (=> b!1410569 (= tp!400364 (and (=> t!123443 result!89224) b_and!94481))))

(declare-fun e!900476 () Bool)

(assert (=> b!1410569 (= e!900476 (and tp!400365 tp!400364))))

(declare-fun b!1410568 () Bool)

(declare-fun e!900474 () Bool)

(assert (=> b!1410568 (= e!900474 (and (inv!18717 (tag!2756 (h!19780 (t!123364 (rules!10965 sep!3))))) (inv!18734 (transformation!2494 (h!19780 (t!123364 (rules!10965 sep!3))))) e!900476))))

(declare-fun b!1410567 () Bool)

(declare-fun e!900475 () Bool)

(declare-fun tp!400363 () Bool)

(assert (=> b!1410567 (= e!900475 (and e!900474 tp!400363))))

(assert (=> b!1409739 (= tp!400267 e!900475)))

(assert (= b!1410568 b!1410569))

(assert (= b!1410567 b!1410568))

(assert (= (and b!1409739 (is-Cons!14379 (t!123364 (rules!10965 sep!3)))) b!1410567))

(declare-fun m!1590581 () Bool)

(assert (=> b!1410568 m!1590581))

(declare-fun m!1590583 () Bool)

(assert (=> b!1410568 m!1590583))

(declare-fun b!1410572 () Bool)

(declare-fun b_free!34555 () Bool)

(declare-fun b_next!35259 () Bool)

(assert (=> b!1410572 (= b_free!34555 (not b_next!35259))))

(declare-fun tp!400368 () Bool)

(declare-fun b_and!94483 () Bool)

(assert (=> b!1410572 (= tp!400368 b_and!94483)))

(declare-fun b_free!34557 () Bool)

(declare-fun b_next!35261 () Bool)

(assert (=> b!1410572 (= b_free!34557 (not b_next!35261))))

(declare-fun t!123445 () Bool)

(declare-fun tb!73343 () Bool)

(assert (=> (and b!1410572 (= (toChars!3648 (transformation!2494 (h!19780 (t!123364 (rules!10965 acc!229))))) (toChars!3648 (transformation!2494 (rule!4257 (ite c!231657 (h!19779 lt!470654) (h!19779 lt!470673)))))) t!123445) tb!73343))

(declare-fun result!89226 () Bool)

(assert (= result!89226 result!89212))

(assert (=> d!403156 t!123445))

(declare-fun b_and!94485 () Bool)

(declare-fun tp!400367 () Bool)

(assert (=> b!1410572 (= tp!400367 (and (=> t!123445 result!89226) b_and!94485))))

(declare-fun e!900480 () Bool)

(assert (=> b!1410572 (= e!900480 (and tp!400368 tp!400367))))

(declare-fun b!1410571 () Bool)

(declare-fun e!900478 () Bool)

(assert (=> b!1410571 (= e!900478 (and (inv!18717 (tag!2756 (h!19780 (t!123364 (rules!10965 acc!229))))) (inv!18734 (transformation!2494 (h!19780 (t!123364 (rules!10965 acc!229))))) e!900480))))

(declare-fun b!1410570 () Bool)

(declare-fun e!900479 () Bool)

(declare-fun tp!400366 () Bool)

(assert (=> b!1410570 (= e!900479 (and e!900478 tp!400366))))

(assert (=> b!1409764 (= tp!400288 e!900479)))

(assert (= b!1410571 b!1410572))

(assert (= b!1410570 b!1410571))

(assert (= (and b!1409764 (is-Cons!14379 (t!123364 (rules!10965 acc!229)))) b!1410570))

(declare-fun m!1590585 () Bool)

(assert (=> b!1410571 m!1590585))

(declare-fun m!1590587 () Bool)

(assert (=> b!1410571 m!1590587))

(declare-fun b!1410583 () Bool)

(declare-fun e!900487 () Bool)

(declare-fun tp!400377 () Bool)

(assert (=> b!1410583 (= e!900487 (and (inv!18720 (c!231627 (tokens!1713 (h!19781 (innerList!4818 (xs!7485 (c!231628 objs!24))))))) tp!400377))))

(declare-fun e!900488 () Bool)

(declare-fun tp!400375 () Bool)

(declare-fun b!1410582 () Bool)

(assert (=> b!1410582 (= e!900488 (and tp!400375 (inv!18724 (tokens!1713 (h!19781 (innerList!4818 (xs!7485 (c!231628 objs!24)))))) e!900487))))

(declare-fun e!900489 () Bool)

(declare-fun b!1410581 () Bool)

(declare-fun tp!400376 () Bool)

(assert (=> b!1410581 (= e!900489 (and (inv!18723 (h!19781 (innerList!4818 (xs!7485 (c!231628 objs!24))))) e!900488 tp!400376))))

(assert (=> b!1409763 (= tp!400285 e!900489)))

(assert (= b!1410582 b!1410583))

(assert (= b!1410581 b!1410582))

(assert (= (and b!1409763 (is-Cons!14380 (innerList!4818 (xs!7485 (c!231628 objs!24))))) b!1410581))

(declare-fun m!1590589 () Bool)

(assert (=> b!1410583 m!1590589))

(declare-fun m!1590591 () Bool)

(assert (=> b!1410582 m!1590591))

(declare-fun m!1590593 () Bool)

(assert (=> b!1410581 m!1590593))

(declare-fun b_lambda!44501 () Bool)

(assert (= b_lambda!44499 (or start!128758 b_lambda!44501)))

(declare-fun bs!338904 () Bool)

(declare-fun d!403264 () Bool)

(assert (= bs!338904 (and d!403264 start!128758)))

(assert (=> bs!338904 (= (dynLambda!6668 lambda!62336 (h!19781 (list!5624 objs!24))) (usesJsonRules!0 (h!19781 (list!5624 objs!24))))))

(declare-fun m!1590595 () Bool)

(assert (=> bs!338904 m!1590595))

(assert (=> b!1410525 d!403264))

(declare-fun b_lambda!44503 () Bool)

(assert (= b_lambda!44495 (or start!128758 b_lambda!44503)))

(declare-fun bs!338905 () Bool)

(declare-fun d!403266 () Bool)

(assert (= bs!338905 (and d!403266 start!128758)))

(assert (=> bs!338905 (= (dynLambda!6668 lambda!62336 (h!19781 (list!5624 (tail!2045 objs!24)))) (usesJsonRules!0 (h!19781 (list!5624 (tail!2045 objs!24)))))))

(declare-fun m!1590597 () Bool)

(assert (=> bs!338905 m!1590597))

(assert (=> b!1410226 d!403266))

(push 1)

(assert (not d!402970))

(assert (not d!403100))

(assert (not b!1410494))

(assert (not b!1409980))

(assert (not b!1410558))

(assert (not b!1410327))

(assert (not b!1410562))

(assert (not b_next!35253))

(assert (not b!1410530))

(assert b_and!94467)

(assert b_and!94475)

(assert (not b_next!35259))

(assert (not b!1409871))

(assert (not b!1410326))

(assert (not b!1410287))

(assert (not b!1410466))

(assert (not d!403084))

(assert (not b!1410523))

(assert (not b!1410322))

(assert b_and!94469)

(assert (not b!1410191))

(assert (not b!1410359))

(assert (not b!1410391))

(assert (not b!1410557))

(assert (not d!402968))

(assert (not d!403244))

(assert (not b!1410456))

(assert (not b!1410424))

(assert (not d!403236))

(assert (not d!403138))

(assert (not d!403194))

(assert (not d!403200))

(assert (not b!1410458))

(assert (not d!403106))

(assert (not b!1410248))

(assert (not d!402888))

(assert (not b!1410541))

(assert (not b!1410397))

(assert (not b!1410402))

(assert (not b!1409935))

(assert b_and!94447)

(assert (not b!1409750))

(assert (not b!1410188))

(assert (not b!1410567))

(assert (not d!402932))

(assert (not b!1409968))

(assert (not d!403122))

(assert (not b!1410570))

(assert (not bs!338904))

(assert (not d!403128))

(assert (not b!1410482))

(assert (not d!403160))

(assert (not b!1410286))

(assert (not b!1410549))

(assert (not d!402884))

(assert (not d!403062))

(assert (not d!403188))

(assert (not b!1410026))

(assert (not b!1410297))

(assert (not d!403198))

(assert (not d!402886))

(assert (not d!403158))

(assert (not b!1410519))

(assert (not tb!73333))

(assert (not d!403190))

(assert (not d!403178))

(assert (not b!1410290))

(assert (not b!1410474))

(assert (not b!1410489))

(assert (not b!1410400))

(assert (not b!1410282))

(assert (not bm!94098))

(assert (not b!1410246))

(assert (not d!402876))

(assert (not b!1409978))

(assert (not d!403234))

(assert (not b!1410412))

(assert (not d!403146))

(assert (not d!402942))

(assert (not b!1410025))

(assert (not b_next!35237))

(assert (not b_lambda!44497))

(assert (not b!1410227))

(assert (not b!1410433))

(assert (not b!1410551))

(assert b_and!94485)

(assert (not d!403248))

(assert (not d!403262))

(assert (not b_next!35251))

(assert (not b!1410568))

(assert (not b!1410214))

(assert b_and!94471)

(assert (not b!1410006))

(assert (not b!1410328))

(assert (not b!1409870))

(assert (not b_next!35257))

(assert (not b!1410490))

(assert b_and!94473)

(assert (not d!403108))

(assert (not d!402950))

(assert (not b!1410335))

(assert (not b_next!35247))

(assert (not b!1410564))

(assert (not d!403096))

(assert (not b!1410554))

(assert (not b!1410461))

(assert (not d!403150))

(assert (not d!403162))

(assert (not b!1410215))

(assert (not b!1410300))

(assert (not b!1410285))

(assert (not d!402910))

(assert (not d!402958))

(assert (not b_next!35231))

(assert (not b!1409872))

(assert (not b!1410007))

(assert (not b!1410571))

(assert (not b!1410555))

(assert (not b!1410547))

(assert (not b_lambda!44501))

(assert (not d!403192))

(assert (not b!1410491))

(assert (not b!1410190))

(assert (not b!1410526))

(assert (not b!1410340))

(assert (not b!1410395))

(assert (not b!1410459))

(assert (not b!1410511))

(assert (not d!403110))

(assert (not d!403074))

(assert (not b_next!35233))

(assert (not b!1410550))

(assert (not b!1410337))

(assert (not b!1410321))

(assert (not b_next!35255))

(assert (not b!1410566))

(assert (not b!1409761))

(assert (not b!1410417))

(assert (not b!1410559))

(assert (not b!1409883))

(assert (not d!403256))

(assert (not b!1410268))

(assert (not b!1410556))

(assert (not b!1410217))

(assert (not d!403218))

(assert (not b!1410410))

(assert (not d!403088))

(assert (not b!1410518))

(assert (not d!403148))

(assert (not b!1410560))

(assert (not d!403098))

(assert (not d!403220))

(assert (not d!403230))

(assert (not b!1410464))

(assert (not b!1410423))

(assert (not b!1409936))

(assert (not b!1410035))

(assert (not b!1410545))

(assert (not b!1410216))

(assert (not b!1410492))

(assert (not b!1410485))

(assert (not d!403204))

(assert (not b!1410218))

(assert (not b!1410517))

(assert (not b!1410355))

(assert (not bm!94097))

(assert (not b!1410583))

(assert (not b!1410008))

(assert (not b!1410283))

(assert (not d!403144))

(assert (not d!403076))

(assert (not d!402878))

(assert (not b!1410468))

(assert (not b!1410392))

(assert (not d!403226))

(assert (not d!403182))

(assert (not d!403028))

(assert (not d!403114))

(assert (not b!1410528))

(assert (not b!1410292))

(assert (not b!1410193))

(assert (not b!1410288))

(assert (not d!403136))

(assert (not d!403092))

(assert (not b!1410358))

(assert b_and!94481)

(assert (not b!1410398))

(assert (not b!1410320))

(assert (not d!403134))

(assert (not b!1410565))

(assert (not b!1410333))

(assert (not b!1410219))

(assert (not d!403054))

(assert (not b!1409979))

(assert (not b!1410347))

(assert (not d!403142))

(assert (not b!1409969))

(assert (not d!403254))

(assert (not b!1410543))

(assert (not b!1410561))

(assert (not b!1409873))

(assert (not b!1410192))

(assert (not b!1410471))

(assert b_and!94483)

(assert (not b!1410421))

(assert (not b!1410284))

(assert (not b!1410210))

(assert (not d!403152))

(assert (not b!1409981))

(assert (not d!403126))

(assert (not b!1410542))

(assert (not b!1410267))

(assert b_and!94477)

(assert (not d!403154))

(assert (not b!1410334))

(assert (not d!402918))

(assert (not b!1410403))

(assert b_and!94479)

(assert (not b!1410487))

(assert (not bs!338905))

(assert (not b!1410520))

(assert (not d!403116))

(assert (not d!403196))

(assert (not d!403180))

(assert (not b_next!35235))

(assert (not b!1410020))

(assert (not b!1409884))

(assert (not d!402956))

(assert (not b!1410425))

(assert (not d!403130))

(assert (not b!1410493))

(assert (not b!1410546))

(assert (not d!403246))

(assert (not b!1410484))

(assert (not b!1410189))

(assert (not b_lambda!44503))

(assert (not b_next!35249))

(assert (not b!1410341))

(assert (not b!1410009))

(assert (not b!1410563))

(assert (not b!1410462))

(assert (not d!403124))

(assert (not d!403184))

(assert (not b!1410582))

(assert (not b!1410420))

(assert (not b_next!35261))

(assert (not b!1410473))

(assert (not b!1410247))

(assert (not d!403156))

(assert (not b!1410553))

(assert (not b!1410514))

(assert (not b!1410581))

(assert (not b!1410338))

(assert (not b!1410529))

(assert (not d!403186))

(assert (not d!402934))

(assert (not b!1410552))

(assert (not b!1410469))

(assert b_and!94451)

(assert (not b!1410212))

(assert (not b!1409767))

(assert (not b!1410476))

(assert (not b!1410220))

(assert (not b!1410293))

(check-sat)

(pop 1)

(push 1)

(assert b_and!94469)

(assert b_and!94447)

(assert (not b_next!35231))

(assert (not b_next!35233))

(assert (not b_next!35255))

(assert b_and!94481)

(assert b_and!94483)

(assert b_and!94477)

(assert b_and!94479)

(assert (not b_next!35235))

(assert b_and!94451)

(assert (not b_next!35253))

(assert b_and!94467)

(assert b_and!94475)

(assert (not b_next!35259))

(assert (not b_next!35237))

(assert b_and!94471)

(assert b_and!94485)

(assert (not b_next!35251))

(assert (not b_next!35257))

(assert b_and!94473)

(assert (not b_next!35247))

(assert (not b_next!35249))

(assert (not b_next!35261))

(check-sat)

(pop 1)

