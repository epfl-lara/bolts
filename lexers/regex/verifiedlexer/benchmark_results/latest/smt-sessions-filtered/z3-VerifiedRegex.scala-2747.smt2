; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!147734 () Bool)

(assert start!147734)

(declare-fun b!1579226 () Bool)

(declare-fun b_free!42631 () Bool)

(declare-fun b_next!43335 () Bool)

(assert (=> b!1579226 (= b_free!42631 (not b_next!43335))))

(declare-fun tp!464963 () Bool)

(declare-fun b_and!110621 () Bool)

(assert (=> b!1579226 (= tp!464963 b_and!110621)))

(declare-fun b_free!42633 () Bool)

(declare-fun b_next!43337 () Bool)

(assert (=> b!1579226 (= b_free!42633 (not b_next!43337))))

(declare-fun tp!464966 () Bool)

(declare-fun b_and!110623 () Bool)

(assert (=> b!1579226 (= tp!464966 b_and!110623)))

(declare-fun b!1579223 () Bool)

(declare-fun b_free!42635 () Bool)

(declare-fun b_next!43339 () Bool)

(assert (=> b!1579223 (= b_free!42635 (not b_next!43339))))

(declare-fun tp!464960 () Bool)

(declare-fun b_and!110625 () Bool)

(assert (=> b!1579223 (= tp!464960 b_and!110625)))

(declare-fun b_free!42637 () Bool)

(declare-fun b_next!43341 () Bool)

(assert (=> b!1579223 (= b_free!42637 (not b_next!43341))))

(declare-fun tp!464964 () Bool)

(declare-fun b_and!110627 () Bool)

(assert (=> b!1579223 (= tp!464964 b_and!110627)))

(declare-fun b!1579216 () Bool)

(declare-fun res!703947 () Bool)

(declare-fun e!1014460 () Bool)

(assert (=> b!1579216 (=> (not res!703947) (not e!1014460))))

(declare-datatypes ((List!17413 0))(
  ( (Nil!17343) (Cons!17343 (h!22744 (_ BitVec 16)) (t!143590 List!17413)) )
))
(declare-datatypes ((TokenValue!3145 0))(
  ( (FloatLiteralValue!6290 (text!22460 List!17413)) (TokenValueExt!3144 (__x!11592 Int)) (Broken!15725 (value!96714 List!17413)) (Object!3214) (End!3145) (Def!3145) (Underscore!3145) (Match!3145) (Else!3145) (Error!3145) (Case!3145) (If!3145) (Extends!3145) (Abstract!3145) (Class!3145) (Val!3145) (DelimiterValue!6290 (del!3205 List!17413)) (KeywordValue!3151 (value!96715 List!17413)) (CommentValue!6290 (value!96716 List!17413)) (WhitespaceValue!6290 (value!96717 List!17413)) (IndentationValue!3145 (value!96718 List!17413)) (String!20056) (Int32!3145) (Broken!15726 (value!96719 List!17413)) (Boolean!3146) (Unit!26958) (OperatorValue!3148 (op!3205 List!17413)) (IdentifierValue!6290 (value!96720 List!17413)) (IdentifierValue!6291 (value!96721 List!17413)) (WhitespaceValue!6291 (value!96722 List!17413)) (True!6290) (False!6290) (Broken!15727 (value!96723 List!17413)) (Broken!15728 (value!96724 List!17413)) (True!6291) (RightBrace!3145) (RightBracket!3145) (Colon!3145) (Null!3145) (Comma!3145) (LeftBracket!3145) (False!6291) (LeftBrace!3145) (ImaginaryLiteralValue!3145 (text!22461 List!17413)) (StringLiteralValue!9435 (value!96725 List!17413)) (EOFValue!3145 (value!96726 List!17413)) (IdentValue!3145 (value!96727 List!17413)) (DelimiterValue!6291 (value!96728 List!17413)) (DedentValue!3145 (value!96729 List!17413)) (NewLineValue!3145 (value!96730 List!17413)) (IntegerValue!9435 (value!96731 (_ BitVec 32)) (text!22462 List!17413)) (IntegerValue!9436 (value!96732 Int) (text!22463 List!17413)) (Times!3145) (Or!3145) (Equal!3145) (Minus!3145) (Broken!15729 (value!96733 List!17413)) (And!3145) (Div!3145) (LessEqual!3145) (Mod!3145) (Concat!7528) (Not!3145) (Plus!3145) (SpaceValue!3145 (value!96734 List!17413)) (IntegerValue!9437 (value!96735 Int) (text!22464 List!17413)) (StringLiteralValue!9436 (text!22465 List!17413)) (FloatLiteralValue!6291 (text!22466 List!17413)) (BytesLiteralValue!3145 (value!96736 List!17413)) (CommentValue!6291 (value!96737 List!17413)) (StringLiteralValue!9437 (value!96738 List!17413)) (ErrorTokenValue!3145 (msg!3206 List!17413)) )
))
(declare-datatypes ((C!8940 0))(
  ( (C!8941 (val!5066 Int)) )
))
(declare-datatypes ((List!17414 0))(
  ( (Nil!17344) (Cons!17344 (h!22745 C!8940) (t!143591 List!17414)) )
))
(declare-datatypes ((IArray!11521 0))(
  ( (IArray!11522 (innerList!5818 List!17414)) )
))
(declare-datatypes ((Conc!5758 0))(
  ( (Node!5758 (left!14015 Conc!5758) (right!14345 Conc!5758) (csize!11746 Int) (cheight!5969 Int)) (Leaf!8506 (xs!8562 IArray!11521) (csize!11747 Int)) (Empty!5758) )
))
(declare-datatypes ((BalanceConc!11460 0))(
  ( (BalanceConc!11461 (c!255939 Conc!5758)) )
))
(declare-datatypes ((Regex!4383 0))(
  ( (ElementMatch!4383 (c!255940 C!8940)) (Concat!7529 (regOne!9278 Regex!4383) (regTwo!9278 Regex!4383)) (EmptyExpr!4383) (Star!4383 (reg!4712 Regex!4383)) (EmptyLang!4383) (Union!4383 (regOne!9279 Regex!4383) (regTwo!9279 Regex!4383)) )
))
(declare-datatypes ((String!20057 0))(
  ( (String!20058 (value!96739 String)) )
))
(declare-datatypes ((TokenValueInjection!5950 0))(
  ( (TokenValueInjection!5951 (toValue!4458 Int) (toChars!4317 Int)) )
))
(declare-datatypes ((Rule!5910 0))(
  ( (Rule!5911 (regex!3055 Regex!4383) (tag!3321 String!20057) (isSeparator!3055 Bool) (transformation!3055 TokenValueInjection!5950)) )
))
(declare-datatypes ((List!17415 0))(
  ( (Nil!17345) (Cons!17345 (h!22746 Rule!5910) (t!143592 List!17415)) )
))
(declare-fun rules!1846 () List!17415)

(declare-datatypes ((LexerInterface!2684 0))(
  ( (LexerInterfaceExt!2681 (__x!11593 Int)) (Lexer!2682) )
))
(declare-fun thiss!17113 () LexerInterface!2684)

(declare-datatypes ((Token!5676 0))(
  ( (Token!5677 (value!96740 TokenValue!3145) (rule!4851 Rule!5910) (size!13956 Int) (originalCharacters!3869 List!17414)) )
))
(declare-datatypes ((List!17416 0))(
  ( (Nil!17346) (Cons!17346 (h!22747 Token!5676) (t!143593 List!17416)) )
))
(declare-fun tokens!457 () List!17416)

(declare-fun rulesProduceEachTokenIndividuallyList!886 (LexerInterface!2684 List!17415 List!17416) Bool)

(assert (=> b!1579216 (= res!703947 (rulesProduceEachTokenIndividuallyList!886 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1579217 () Bool)

(declare-fun e!1014467 () Bool)

(declare-fun e!1014458 () Bool)

(assert (=> b!1579217 (= e!1014467 e!1014458)))

(declare-fun res!703944 () Bool)

(assert (=> b!1579217 (=> res!703944 e!1014458)))

(declare-fun lt!551975 () List!17416)

(declare-fun lt!551973 () List!17416)

(declare-fun lt!551968 () List!17416)

(assert (=> b!1579217 (= res!703944 (or (not (= lt!551973 lt!551975)) (not (= lt!551975 lt!551968))))))

(declare-datatypes ((IArray!11523 0))(
  ( (IArray!11524 (innerList!5819 List!17416)) )
))
(declare-datatypes ((Conc!5759 0))(
  ( (Node!5759 (left!14016 Conc!5759) (right!14346 Conc!5759) (csize!11748 Int) (cheight!5970 Int)) (Leaf!8507 (xs!8563 IArray!11523) (csize!11749 Int)) (Empty!5759) )
))
(declare-datatypes ((BalanceConc!11462 0))(
  ( (BalanceConc!11463 (c!255941 Conc!5759)) )
))
(declare-fun lt!551981 () BalanceConc!11462)

(declare-fun list!6699 (BalanceConc!11462) List!17416)

(assert (=> b!1579217 (= lt!551975 (list!6699 lt!551981))))

(assert (=> b!1579217 (= lt!551973 lt!551968)))

(declare-fun prepend!529 (BalanceConc!11462 Token!5676) BalanceConc!11462)

(declare-fun seqFromList!1859 (List!17416) BalanceConc!11462)

(assert (=> b!1579217 (= lt!551968 (list!6699 (prepend!529 (seqFromList!1859 (t!143593 (t!143593 tokens!457))) (h!22747 (t!143593 tokens!457)))))))

(declare-datatypes ((Unit!26959 0))(
  ( (Unit!26960) )
))
(declare-fun lt!551980 () Unit!26959)

(declare-datatypes ((tuple2!16812 0))(
  ( (tuple2!16813 (_1!9808 BalanceConc!11462) (_2!9808 BalanceConc!11460)) )
))
(declare-fun lt!551976 () tuple2!16812)

(declare-fun seqFromListBHdTlConstructive!132 (Token!5676 List!17416 BalanceConc!11462) Unit!26959)

(assert (=> b!1579217 (= lt!551980 (seqFromListBHdTlConstructive!132 (h!22747 (t!143593 tokens!457)) (t!143593 (t!143593 tokens!457)) (_1!9808 lt!551976)))))

(declare-fun e!1014466 () Bool)

(declare-fun e!1014472 () Bool)

(declare-fun tp!464965 () Bool)

(declare-fun b!1579218 () Bool)

(declare-fun inv!22755 (String!20057) Bool)

(declare-fun inv!22758 (TokenValueInjection!5950) Bool)

(assert (=> b!1579218 (= e!1014466 (and tp!464965 (inv!22755 (tag!3321 (h!22746 rules!1846))) (inv!22758 (transformation!3055 (h!22746 rules!1846))) e!1014472))))

(declare-fun e!1014464 () Bool)

(declare-fun tp!464961 () Bool)

(declare-fun b!1579219 () Bool)

(declare-fun e!1014471 () Bool)

(assert (=> b!1579219 (= e!1014464 (and tp!464961 (inv!22755 (tag!3321 (rule!4851 (h!22747 tokens!457)))) (inv!22758 (transformation!3055 (rule!4851 (h!22747 tokens!457)))) e!1014471))))

(declare-fun b!1579220 () Bool)

(declare-fun res!703941 () Bool)

(assert (=> b!1579220 (=> res!703941 e!1014458)))

(declare-fun separableTokensPredicate!626 (LexerInterface!2684 Token!5676 Token!5676 List!17415) Bool)

(assert (=> b!1579220 (= res!703941 (not (separableTokensPredicate!626 thiss!17113 (h!22747 tokens!457) (h!22747 (t!143593 tokens!457)) rules!1846)))))

(declare-fun b!1579221 () Bool)

(declare-fun res!703948 () Bool)

(assert (=> b!1579221 (=> (not res!703948) (not e!1014460))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!377 (LexerInterface!2684 List!17416 List!17415) Bool)

(assert (=> b!1579221 (= res!703948 (tokensListTwoByTwoPredicateSeparableList!377 thiss!17113 tokens!457 rules!1846))))

(assert (=> b!1579223 (= e!1014472 (and tp!464960 tp!464964))))

(declare-fun b!1579224 () Bool)

(declare-fun e!1014468 () Bool)

(assert (=> b!1579224 (= e!1014458 e!1014468)))

(declare-fun res!703949 () Bool)

(assert (=> b!1579224 (=> res!703949 e!1014468)))

(declare-fun lt!551985 () List!17414)

(declare-fun lt!551984 () List!17414)

(declare-fun lt!551977 () List!17414)

(assert (=> b!1579224 (= res!703949 (or (not (= lt!551985 lt!551977)) (not (= lt!551977 lt!551984)) (not (= lt!551985 lt!551984))))))

(declare-fun printList!799 (LexerInterface!2684 List!17416) List!17414)

(assert (=> b!1579224 (= lt!551977 (printList!799 thiss!17113 (Cons!17346 (h!22747 tokens!457) Nil!17346)))))

(declare-fun lt!551982 () BalanceConc!11460)

(declare-fun list!6700 (BalanceConc!11460) List!17414)

(assert (=> b!1579224 (= lt!551985 (list!6700 lt!551982))))

(declare-fun lt!551972 () BalanceConc!11462)

(declare-fun printTailRec!737 (LexerInterface!2684 BalanceConc!11462 Int BalanceConc!11460) BalanceConc!11460)

(assert (=> b!1579224 (= lt!551982 (printTailRec!737 thiss!17113 lt!551972 0 (BalanceConc!11461 Empty!5758)))))

(declare-fun print!1215 (LexerInterface!2684 BalanceConc!11462) BalanceConc!11460)

(assert (=> b!1579224 (= lt!551982 (print!1215 thiss!17113 lt!551972))))

(declare-fun singletonSeq!1391 (Token!5676) BalanceConc!11462)

(assert (=> b!1579224 (= lt!551972 (singletonSeq!1391 (h!22747 tokens!457)))))

(declare-fun lt!551974 () List!17414)

(declare-datatypes ((tuple2!16814 0))(
  ( (tuple2!16815 (_1!9809 Token!5676) (_2!9809 List!17414)) )
))
(declare-datatypes ((Option!3106 0))(
  ( (None!3105) (Some!3105 (v!23936 tuple2!16814)) )
))
(declare-fun lt!551986 () Option!3106)

(declare-fun maxPrefix!1248 (LexerInterface!2684 List!17415 List!17414) Option!3106)

(assert (=> b!1579224 (= lt!551986 (maxPrefix!1248 thiss!17113 rules!1846 lt!551974))))

(declare-fun b!1579225 () Bool)

(declare-fun res!703939 () Bool)

(assert (=> b!1579225 (=> (not res!703939) (not e!1014460))))

(declare-fun isEmpty!10354 (List!17415) Bool)

(assert (=> b!1579225 (= res!703939 (not (isEmpty!10354 rules!1846)))))

(assert (=> b!1579226 (= e!1014471 (and tp!464963 tp!464966))))

(declare-fun b!1579227 () Bool)

(declare-fun res!703950 () Bool)

(assert (=> b!1579227 (=> (not res!703950) (not e!1014460))))

(declare-fun rulesInvariant!2353 (LexerInterface!2684 List!17415) Bool)

(assert (=> b!1579227 (= res!703950 (rulesInvariant!2353 thiss!17113 rules!1846))))

(declare-fun b!1579228 () Bool)

(declare-fun res!703945 () Bool)

(assert (=> b!1579228 (=> res!703945 e!1014468)))

(declare-fun rulesProduceIndividualToken!1336 (LexerInterface!2684 List!17415 Token!5676) Bool)

(assert (=> b!1579228 (= res!703945 (not (rulesProduceIndividualToken!1336 thiss!17113 rules!1846 (h!22747 tokens!457))))))

(declare-fun b!1579229 () Bool)

(declare-fun e!1014459 () Bool)

(assert (=> b!1579229 (= e!1014459 (not e!1014467))))

(declare-fun res!703942 () Bool)

(assert (=> b!1579229 (=> res!703942 e!1014467)))

(assert (=> b!1579229 (= res!703942 (not (= lt!551973 (t!143593 tokens!457))))))

(assert (=> b!1579229 (= lt!551973 (list!6699 (_1!9808 lt!551976)))))

(declare-fun lt!551967 () Unit!26959)

(declare-fun theoremInvertabilityWhenTokenListSeparable!129 (LexerInterface!2684 List!17415 List!17416) Unit!26959)

(assert (=> b!1579229 (= lt!551967 (theoremInvertabilityWhenTokenListSeparable!129 thiss!17113 rules!1846 (t!143593 tokens!457)))))

(declare-fun lt!551979 () List!17414)

(declare-fun isPrefix!1315 (List!17414 List!17414) Bool)

(assert (=> b!1579229 (isPrefix!1315 lt!551984 lt!551979)))

(declare-fun lt!551978 () Unit!26959)

(declare-fun lt!551971 () List!17414)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!840 (List!17414 List!17414) Unit!26959)

(assert (=> b!1579229 (= lt!551978 (lemmaConcatTwoListThenFirstIsPrefix!840 lt!551984 lt!551971))))

(declare-fun b!1579230 () Bool)

(declare-fun e!1014469 () Bool)

(declare-fun tp!464962 () Bool)

(declare-fun e!1014462 () Bool)

(declare-fun inv!22759 (Token!5676) Bool)

(assert (=> b!1579230 (= e!1014469 (and (inv!22759 (h!22747 tokens!457)) e!1014462 tp!464962))))

(declare-fun b!1579231 () Bool)

(declare-fun e!1014465 () Bool)

(declare-fun tp!464959 () Bool)

(assert (=> b!1579231 (= e!1014465 (and e!1014466 tp!464959))))

(declare-fun b!1579232 () Bool)

(declare-fun res!703946 () Bool)

(assert (=> b!1579232 (=> (not res!703946) (not e!1014460))))

(get-info :version)

(assert (=> b!1579232 (= res!703946 (and (not ((_ is Nil!17346) tokens!457)) (not ((_ is Nil!17346) (t!143593 tokens!457)))))))

(declare-fun b!1579222 () Bool)

(assert (=> b!1579222 (= e!1014468 true)))

(declare-fun lt!551969 () Bool)

(declare-fun isEmpty!10355 (BalanceConc!11462) Bool)

(declare-fun lex!1168 (LexerInterface!2684 List!17415 BalanceConc!11460) tuple2!16812)

(declare-fun seqFromList!1860 (List!17414) BalanceConc!11460)

(assert (=> b!1579222 (= lt!551969 (isEmpty!10355 (_1!9808 (lex!1168 thiss!17113 rules!1846 (seqFromList!1860 lt!551984)))))))

(declare-fun res!703940 () Bool)

(assert (=> start!147734 (=> (not res!703940) (not e!1014460))))

(assert (=> start!147734 (= res!703940 ((_ is Lexer!2682) thiss!17113))))

(assert (=> start!147734 e!1014460))

(assert (=> start!147734 true))

(assert (=> start!147734 e!1014465))

(assert (=> start!147734 e!1014469))

(declare-fun tp!464958 () Bool)

(declare-fun b!1579233 () Bool)

(declare-fun inv!21 (TokenValue!3145) Bool)

(assert (=> b!1579233 (= e!1014462 (and (inv!21 (value!96740 (h!22747 tokens!457))) e!1014464 tp!464958))))

(declare-fun b!1579234 () Bool)

(assert (=> b!1579234 (= e!1014460 e!1014459)))

(declare-fun res!703943 () Bool)

(assert (=> b!1579234 (=> (not res!703943) (not e!1014459))))

(assert (=> b!1579234 (= res!703943 (= lt!551974 lt!551979))))

(declare-fun ++!4503 (List!17414 List!17414) List!17414)

(assert (=> b!1579234 (= lt!551979 (++!4503 lt!551984 lt!551971))))

(declare-fun lt!551983 () BalanceConc!11460)

(assert (=> b!1579234 (= lt!551974 (list!6700 lt!551983))))

(declare-fun lt!551970 () BalanceConc!11460)

(assert (=> b!1579234 (= lt!551971 (list!6700 lt!551970))))

(declare-fun charsOf!1704 (Token!5676) BalanceConc!11460)

(assert (=> b!1579234 (= lt!551984 (list!6700 (charsOf!1704 (h!22747 tokens!457))))))

(assert (=> b!1579234 (= lt!551976 (lex!1168 thiss!17113 rules!1846 lt!551970))))

(assert (=> b!1579234 (= lt!551970 (print!1215 thiss!17113 lt!551981))))

(assert (=> b!1579234 (= lt!551981 (seqFromList!1859 (t!143593 tokens!457)))))

(assert (=> b!1579234 (= lt!551983 (print!1215 thiss!17113 (seqFromList!1859 tokens!457)))))

(assert (= (and start!147734 res!703940) b!1579225))

(assert (= (and b!1579225 res!703939) b!1579227))

(assert (= (and b!1579227 res!703950) b!1579216))

(assert (= (and b!1579216 res!703947) b!1579221))

(assert (= (and b!1579221 res!703948) b!1579232))

(assert (= (and b!1579232 res!703946) b!1579234))

(assert (= (and b!1579234 res!703943) b!1579229))

(assert (= (and b!1579229 (not res!703942)) b!1579217))

(assert (= (and b!1579217 (not res!703944)) b!1579220))

(assert (= (and b!1579220 (not res!703941)) b!1579224))

(assert (= (and b!1579224 (not res!703949)) b!1579228))

(assert (= (and b!1579228 (not res!703945)) b!1579222))

(assert (= b!1579218 b!1579223))

(assert (= b!1579231 b!1579218))

(assert (= (and start!147734 ((_ is Cons!17345) rules!1846)) b!1579231))

(assert (= b!1579219 b!1579226))

(assert (= b!1579233 b!1579219))

(assert (= b!1579230 b!1579233))

(assert (= (and start!147734 ((_ is Cons!17346) tokens!457)) b!1579230))

(declare-fun m!1861693 () Bool)

(assert (=> b!1579218 m!1861693))

(declare-fun m!1861695 () Bool)

(assert (=> b!1579218 m!1861695))

(declare-fun m!1861697 () Bool)

(assert (=> b!1579234 m!1861697))

(declare-fun m!1861699 () Bool)

(assert (=> b!1579234 m!1861699))

(declare-fun m!1861701 () Bool)

(assert (=> b!1579234 m!1861701))

(declare-fun m!1861703 () Bool)

(assert (=> b!1579234 m!1861703))

(declare-fun m!1861705 () Bool)

(assert (=> b!1579234 m!1861705))

(assert (=> b!1579234 m!1861699))

(declare-fun m!1861707 () Bool)

(assert (=> b!1579234 m!1861707))

(declare-fun m!1861709 () Bool)

(assert (=> b!1579234 m!1861709))

(declare-fun m!1861711 () Bool)

(assert (=> b!1579234 m!1861711))

(assert (=> b!1579234 m!1861703))

(declare-fun m!1861713 () Bool)

(assert (=> b!1579234 m!1861713))

(declare-fun m!1861715 () Bool)

(assert (=> b!1579234 m!1861715))

(declare-fun m!1861717 () Bool)

(assert (=> b!1579221 m!1861717))

(declare-fun m!1861719 () Bool)

(assert (=> b!1579225 m!1861719))

(declare-fun m!1861721 () Bool)

(assert (=> b!1579216 m!1861721))

(declare-fun m!1861723 () Bool)

(assert (=> b!1579230 m!1861723))

(declare-fun m!1861725 () Bool)

(assert (=> b!1579229 m!1861725))

(declare-fun m!1861727 () Bool)

(assert (=> b!1579229 m!1861727))

(declare-fun m!1861729 () Bool)

(assert (=> b!1579229 m!1861729))

(declare-fun m!1861731 () Bool)

(assert (=> b!1579229 m!1861731))

(declare-fun m!1861733 () Bool)

(assert (=> b!1579222 m!1861733))

(assert (=> b!1579222 m!1861733))

(declare-fun m!1861735 () Bool)

(assert (=> b!1579222 m!1861735))

(declare-fun m!1861737 () Bool)

(assert (=> b!1579222 m!1861737))

(declare-fun m!1861739 () Bool)

(assert (=> b!1579219 m!1861739))

(declare-fun m!1861741 () Bool)

(assert (=> b!1579219 m!1861741))

(declare-fun m!1861743 () Bool)

(assert (=> b!1579227 m!1861743))

(declare-fun m!1861745 () Bool)

(assert (=> b!1579233 m!1861745))

(declare-fun m!1861747 () Bool)

(assert (=> b!1579220 m!1861747))

(declare-fun m!1861749 () Bool)

(assert (=> b!1579228 m!1861749))

(declare-fun m!1861751 () Bool)

(assert (=> b!1579224 m!1861751))

(declare-fun m!1861753 () Bool)

(assert (=> b!1579224 m!1861753))

(declare-fun m!1861755 () Bool)

(assert (=> b!1579224 m!1861755))

(declare-fun m!1861757 () Bool)

(assert (=> b!1579224 m!1861757))

(declare-fun m!1861759 () Bool)

(assert (=> b!1579224 m!1861759))

(declare-fun m!1861761 () Bool)

(assert (=> b!1579224 m!1861761))

(declare-fun m!1861763 () Bool)

(assert (=> b!1579217 m!1861763))

(declare-fun m!1861765 () Bool)

(assert (=> b!1579217 m!1861765))

(declare-fun m!1861767 () Bool)

(assert (=> b!1579217 m!1861767))

(declare-fun m!1861769 () Bool)

(assert (=> b!1579217 m!1861769))

(assert (=> b!1579217 m!1861765))

(assert (=> b!1579217 m!1861767))

(declare-fun m!1861771 () Bool)

(assert (=> b!1579217 m!1861771))

(check-sat (not b_next!43339) (not b!1579220) b_and!110623 (not b!1579231) (not b!1579234) b_and!110627 (not b_next!43341) (not b!1579216) (not b!1579225) (not b!1579229) (not b!1579217) (not b!1579228) (not b!1579218) (not b_next!43335) (not b!1579221) (not b!1579230) (not b!1579227) b_and!110625 (not b!1579222) (not b!1579233) (not b!1579224) (not b!1579219) b_and!110621 (not b_next!43337))
(check-sat (not b_next!43339) b_and!110623 (not b_next!43335) b_and!110627 b_and!110625 (not b_next!43341) b_and!110621 (not b_next!43337))
