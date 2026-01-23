; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299286 () Bool)

(assert start!299286)

(declare-fun b!3191661 () Bool)

(declare-fun b_free!84529 () Bool)

(declare-fun b_next!85233 () Bool)

(assert (=> b!3191661 (= b_free!84529 (not b_next!85233))))

(declare-fun tp!1009093 () Bool)

(declare-fun b_and!211539 () Bool)

(assert (=> b!3191661 (= tp!1009093 b_and!211539)))

(declare-fun b_free!84531 () Bool)

(declare-fun b_next!85235 () Bool)

(assert (=> b!3191661 (= b_free!84531 (not b_next!85235))))

(declare-fun tp!1009094 () Bool)

(declare-fun b_and!211541 () Bool)

(assert (=> b!3191661 (= tp!1009094 b_and!211541)))

(declare-fun b!3191652 () Bool)

(declare-fun b_free!84533 () Bool)

(declare-fun b_next!85237 () Bool)

(assert (=> b!3191652 (= b_free!84533 (not b_next!85237))))

(declare-fun tp!1009085 () Bool)

(declare-fun b_and!211543 () Bool)

(assert (=> b!3191652 (= tp!1009085 b_and!211543)))

(declare-fun b_free!84535 () Bool)

(declare-fun b_next!85239 () Bool)

(assert (=> b!3191652 (= b_free!84535 (not b_next!85239))))

(declare-fun tp!1009082 () Bool)

(declare-fun b_and!211545 () Bool)

(assert (=> b!3191652 (= tp!1009082 b_and!211545)))

(declare-fun b!3191651 () Bool)

(declare-fun b_free!84537 () Bool)

(declare-fun b_next!85241 () Bool)

(assert (=> b!3191651 (= b_free!84537 (not b_next!85241))))

(declare-fun tp!1009089 () Bool)

(declare-fun b_and!211547 () Bool)

(assert (=> b!3191651 (= tp!1009089 b_and!211547)))

(declare-fun b_free!84539 () Bool)

(declare-fun b_next!85243 () Bool)

(assert (=> b!3191651 (= b_free!84539 (not b_next!85243))))

(declare-fun tp!1009084 () Bool)

(declare-fun b_and!211549 () Bool)

(assert (=> b!3191651 (= tp!1009084 b_and!211549)))

(declare-fun b!3191646 () Bool)

(declare-datatypes ((C!20036 0))(
  ( (C!20037 (val!12066 Int)) )
))
(declare-datatypes ((Regex!9925 0))(
  ( (ElementMatch!9925 (c!535876 C!20036)) (Concat!15321 (regOne!20362 Regex!9925) (regTwo!20362 Regex!9925)) (EmptyExpr!9925) (Star!9925 (reg!10254 Regex!9925)) (EmptyLang!9925) (Union!9925 (regOne!20363 Regex!9925) (regTwo!20363 Regex!9925)) )
))
(declare-datatypes ((List!36056 0))(
  ( (Nil!35932) (Cons!35932 (h!41352 (_ BitVec 16)) (t!236219 List!36056)) )
))
(declare-datatypes ((TokenValue!5396 0))(
  ( (FloatLiteralValue!10792 (text!38217 List!36056)) (TokenValueExt!5395 (__x!23009 Int)) (Broken!26980 (value!167665 List!36056)) (Object!5519) (End!5396) (Def!5396) (Underscore!5396) (Match!5396) (Else!5396) (Error!5396) (Case!5396) (If!5396) (Extends!5396) (Abstract!5396) (Class!5396) (Val!5396) (DelimiterValue!10792 (del!5456 List!36056)) (KeywordValue!5402 (value!167666 List!36056)) (CommentValue!10792 (value!167667 List!36056)) (WhitespaceValue!10792 (value!167668 List!36056)) (IndentationValue!5396 (value!167669 List!36056)) (String!40313) (Int32!5396) (Broken!26981 (value!167670 List!36056)) (Boolean!5397) (Unit!50359) (OperatorValue!5399 (op!5456 List!36056)) (IdentifierValue!10792 (value!167671 List!36056)) (IdentifierValue!10793 (value!167672 List!36056)) (WhitespaceValue!10793 (value!167673 List!36056)) (True!10792) (False!10792) (Broken!26982 (value!167674 List!36056)) (Broken!26983 (value!167675 List!36056)) (True!10793) (RightBrace!5396) (RightBracket!5396) (Colon!5396) (Null!5396) (Comma!5396) (LeftBracket!5396) (False!10793) (LeftBrace!5396) (ImaginaryLiteralValue!5396 (text!38218 List!36056)) (StringLiteralValue!16188 (value!167676 List!36056)) (EOFValue!5396 (value!167677 List!36056)) (IdentValue!5396 (value!167678 List!36056)) (DelimiterValue!10793 (value!167679 List!36056)) (DedentValue!5396 (value!167680 List!36056)) (NewLineValue!5396 (value!167681 List!36056)) (IntegerValue!16188 (value!167682 (_ BitVec 32)) (text!38219 List!36056)) (IntegerValue!16189 (value!167683 Int) (text!38220 List!36056)) (Times!5396) (Or!5396) (Equal!5396) (Minus!5396) (Broken!26984 (value!167684 List!36056)) (And!5396) (Div!5396) (LessEqual!5396) (Mod!5396) (Concat!15322) (Not!5396) (Plus!5396) (SpaceValue!5396 (value!167685 List!36056)) (IntegerValue!16190 (value!167686 Int) (text!38221 List!36056)) (StringLiteralValue!16189 (text!38222 List!36056)) (FloatLiteralValue!10793 (text!38223 List!36056)) (BytesLiteralValue!5396 (value!167687 List!36056)) (CommentValue!10793 (value!167688 List!36056)) (StringLiteralValue!16190 (value!167689 List!36056)) (ErrorTokenValue!5396 (msg!5457 List!36056)) )
))
(declare-datatypes ((List!36057 0))(
  ( (Nil!35933) (Cons!35933 (h!41353 C!20036) (t!236220 List!36057)) )
))
(declare-datatypes ((IArray!21419 0))(
  ( (IArray!21420 (innerList!10767 List!36057)) )
))
(declare-datatypes ((Conc!10707 0))(
  ( (Node!10707 (left!27932 Conc!10707) (right!28262 Conc!10707) (csize!21644 Int) (cheight!10918 Int)) (Leaf!16901 (xs!13825 IArray!21419) (csize!21645 Int)) (Empty!10707) )
))
(declare-datatypes ((BalanceConc!21028 0))(
  ( (BalanceConc!21029 (c!535877 Conc!10707)) )
))
(declare-datatypes ((String!40314 0))(
  ( (String!40315 (value!167690 String)) )
))
(declare-datatypes ((TokenValueInjection!10220 0))(
  ( (TokenValueInjection!10221 (toValue!7230 Int) (toChars!7089 Int)) )
))
(declare-datatypes ((Rule!10132 0))(
  ( (Rule!10133 (regex!5166 Regex!9925) (tag!5684 String!40314) (isSeparator!5166 Bool) (transformation!5166 TokenValueInjection!10220)) )
))
(declare-datatypes ((Token!9698 0))(
  ( (Token!9699 (value!167691 TokenValue!5396) (rule!7598 Rule!10132) (size!27083 Int) (originalCharacters!5880 List!36057)) )
))
(declare-datatypes ((List!36058 0))(
  ( (Nil!35934) (Cons!35934 (h!41354 Token!9698) (t!236221 List!36058)) )
))
(declare-fun tokens!494 () List!36058)

(declare-fun e!1989384 () Bool)

(declare-fun e!1989386 () Bool)

(declare-fun tp!1009088 () Bool)

(declare-fun inv!48775 (String!40314) Bool)

(declare-fun inv!48778 (TokenValueInjection!10220) Bool)

(assert (=> b!3191646 (= e!1989384 (and tp!1009088 (inv!48775 (tag!5684 (rule!7598 (h!41354 tokens!494)))) (inv!48778 (transformation!5166 (rule!7598 (h!41354 tokens!494)))) e!1989386))))

(declare-fun b!3191647 () Bool)

(declare-fun res!1298274 () Bool)

(declare-fun e!1989378 () Bool)

(assert (=> b!3191647 (=> (not res!1298274) (not e!1989378))))

(declare-fun separatorToken!241 () Token!9698)

(declare-datatypes ((LexerInterface!4755 0))(
  ( (LexerInterfaceExt!4752 (__x!23010 Int)) (Lexer!4753) )
))
(declare-fun thiss!18206 () LexerInterface!4755)

(declare-datatypes ((List!36059 0))(
  ( (Nil!35935) (Cons!35935 (h!41355 Rule!10132) (t!236222 List!36059)) )
))
(declare-fun rules!2135 () List!36059)

(declare-fun rulesProduceIndividualToken!2247 (LexerInterface!4755 List!36059 Token!9698) Bool)

(assert (=> b!3191647 (= res!1298274 (rulesProduceIndividualToken!2247 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3191648 () Bool)

(declare-fun res!1298276 () Bool)

(assert (=> b!3191648 (=> (not res!1298276) (not e!1989378))))

(declare-datatypes ((IArray!21421 0))(
  ( (IArray!21422 (innerList!10768 List!36058)) )
))
(declare-datatypes ((Conc!10708 0))(
  ( (Node!10708 (left!27933 Conc!10708) (right!28263 Conc!10708) (csize!21646 Int) (cheight!10919 Int)) (Leaf!16902 (xs!13826 IArray!21421) (csize!21647 Int)) (Empty!10708) )
))
(declare-datatypes ((BalanceConc!21030 0))(
  ( (BalanceConc!21031 (c!535878 Conc!10708)) )
))
(declare-fun rulesProduceEachTokenIndividually!1206 (LexerInterface!4755 List!36059 BalanceConc!21030) Bool)

(declare-fun seqFromList!3406 (List!36058) BalanceConc!21030)

(assert (=> b!3191648 (= res!1298276 (rulesProduceEachTokenIndividually!1206 thiss!18206 rules!2135 (seqFromList!3406 tokens!494)))))

(declare-fun b!3191649 () Bool)

(declare-fun e!1989381 () Bool)

(declare-fun e!1989380 () Bool)

(declare-fun tp!1009087 () Bool)

(assert (=> b!3191649 (= e!1989381 (and e!1989380 tp!1009087))))

(declare-fun b!3191650 () Bool)

(declare-fun res!1298275 () Bool)

(assert (=> b!3191650 (=> (not res!1298275) (not e!1989378))))

(assert (=> b!3191650 (= res!1298275 (isSeparator!5166 (rule!7598 separatorToken!241)))))

(declare-fun e!1989377 () Bool)

(assert (=> b!3191651 (= e!1989377 (and tp!1009089 tp!1009084))))

(assert (=> b!3191652 (= e!1989386 (and tp!1009085 tp!1009082))))

(declare-fun b!3191653 () Bool)

(declare-fun res!1298278 () Bool)

(assert (=> b!3191653 (=> (not res!1298278) (not e!1989378))))

(declare-fun lambda!116789 () Int)

(declare-fun forall!7298 (List!36058 Int) Bool)

(assert (=> b!3191653 (= res!1298278 (forall!7298 tokens!494 lambda!116789))))

(declare-fun b!3191654 () Bool)

(declare-fun res!1298273 () Bool)

(assert (=> b!3191654 (=> (not res!1298273) (not e!1989378))))

(declare-fun sepAndNonSepRulesDisjointChars!1360 (List!36059 List!36059) Bool)

(assert (=> b!3191654 (= res!1298273 (sepAndNonSepRulesDisjointChars!1360 rules!2135 rules!2135))))

(declare-fun b!3191655 () Bool)

(assert (=> b!3191655 (= e!1989378 (not true))))

(declare-fun lt!1075100 () List!36057)

(declare-fun printList!1305 (LexerInterface!4755 List!36058) List!36057)

(assert (=> b!3191655 (= lt!1075100 (printList!1305 thiss!18206 (Cons!35934 (h!41354 tokens!494) Nil!35934)))))

(declare-fun lt!1075097 () List!36057)

(declare-fun lt!1075099 () BalanceConc!21028)

(declare-fun list!12763 (BalanceConc!21028) List!36057)

(assert (=> b!3191655 (= lt!1075097 (list!12763 lt!1075099))))

(declare-fun lt!1075098 () BalanceConc!21030)

(declare-fun printTailRec!1252 (LexerInterface!4755 BalanceConc!21030 Int BalanceConc!21028) BalanceConc!21028)

(assert (=> b!3191655 (= lt!1075099 (printTailRec!1252 thiss!18206 lt!1075098 0 (BalanceConc!21029 Empty!10707)))))

(declare-fun print!1820 (LexerInterface!4755 BalanceConc!21030) BalanceConc!21028)

(assert (=> b!3191655 (= lt!1075099 (print!1820 thiss!18206 lt!1075098))))

(declare-fun singletonSeq!2262 (Token!9698) BalanceConc!21030)

(assert (=> b!3191655 (= lt!1075098 (singletonSeq!2262 (h!41354 tokens!494)))))

(declare-fun e!1989385 () Bool)

(declare-fun b!3191656 () Bool)

(declare-fun tp!1009083 () Bool)

(declare-fun inv!21 (TokenValue!5396) Bool)

(assert (=> b!3191656 (= e!1989385 (and (inv!21 (value!167691 (h!41354 tokens!494))) e!1989384 tp!1009083))))

(declare-fun b!3191657 () Bool)

(declare-fun res!1298272 () Bool)

(assert (=> b!3191657 (=> (not res!1298272) (not e!1989378))))

(declare-fun isEmpty!20049 (List!36059) Bool)

(assert (=> b!3191657 (= res!1298272 (not (isEmpty!20049 rules!2135)))))

(declare-fun b!3191658 () Bool)

(declare-fun e!1989389 () Bool)

(declare-fun tp!1009091 () Bool)

(declare-fun inv!48779 (Token!9698) Bool)

(assert (=> b!3191658 (= e!1989389 (and (inv!48779 (h!41354 tokens!494)) e!1989385 tp!1009091))))

(declare-fun b!3191659 () Bool)

(declare-fun tp!1009086 () Bool)

(declare-fun e!1989382 () Bool)

(declare-fun e!1989383 () Bool)

(assert (=> b!3191659 (= e!1989382 (and (inv!21 (value!167691 separatorToken!241)) e!1989383 tp!1009086))))

(declare-fun tp!1009092 () Bool)

(declare-fun b!3191660 () Bool)

(assert (=> b!3191660 (= e!1989383 (and tp!1009092 (inv!48775 (tag!5684 (rule!7598 separatorToken!241))) (inv!48778 (transformation!5166 (rule!7598 separatorToken!241))) e!1989377))))

(declare-fun res!1298279 () Bool)

(assert (=> start!299286 (=> (not res!1298279) (not e!1989378))))

(get-info :version)

(assert (=> start!299286 (= res!1298279 ((_ is Lexer!4753) thiss!18206))))

(assert (=> start!299286 e!1989378))

(assert (=> start!299286 true))

(assert (=> start!299286 e!1989381))

(assert (=> start!299286 e!1989389))

(assert (=> start!299286 (and (inv!48779 separatorToken!241) e!1989382)))

(declare-fun e!1989390 () Bool)

(assert (=> b!3191661 (= e!1989390 (and tp!1009093 tp!1009094))))

(declare-fun tp!1009090 () Bool)

(declare-fun b!3191662 () Bool)

(assert (=> b!3191662 (= e!1989380 (and tp!1009090 (inv!48775 (tag!5684 (h!41355 rules!2135))) (inv!48778 (transformation!5166 (h!41355 rules!2135))) e!1989390))))

(declare-fun b!3191663 () Bool)

(declare-fun res!1298271 () Bool)

(assert (=> b!3191663 (=> (not res!1298271) (not e!1989378))))

(declare-fun rulesInvariant!4152 (LexerInterface!4755 List!36059) Bool)

(assert (=> b!3191663 (= res!1298271 (rulesInvariant!4152 thiss!18206 rules!2135))))

(declare-fun b!3191664 () Bool)

(declare-fun res!1298277 () Bool)

(assert (=> b!3191664 (=> (not res!1298277) (not e!1989378))))

(assert (=> b!3191664 (= res!1298277 (and (not ((_ is Nil!35934) tokens!494)) (not ((_ is Nil!35934) (t!236221 tokens!494)))))))

(assert (= (and start!299286 res!1298279) b!3191657))

(assert (= (and b!3191657 res!1298272) b!3191663))

(assert (= (and b!3191663 res!1298271) b!3191648))

(assert (= (and b!3191648 res!1298276) b!3191647))

(assert (= (and b!3191647 res!1298274) b!3191650))

(assert (= (and b!3191650 res!1298275) b!3191653))

(assert (= (and b!3191653 res!1298278) b!3191654))

(assert (= (and b!3191654 res!1298273) b!3191664))

(assert (= (and b!3191664 res!1298277) b!3191655))

(assert (= b!3191662 b!3191661))

(assert (= b!3191649 b!3191662))

(assert (= (and start!299286 ((_ is Cons!35935) rules!2135)) b!3191649))

(assert (= b!3191646 b!3191652))

(assert (= b!3191656 b!3191646))

(assert (= b!3191658 b!3191656))

(assert (= (and start!299286 ((_ is Cons!35934) tokens!494)) b!3191658))

(assert (= b!3191660 b!3191651))

(assert (= b!3191659 b!3191660))

(assert (= start!299286 b!3191659))

(declare-fun m!3450935 () Bool)

(assert (=> b!3191655 m!3450935))

(declare-fun m!3450937 () Bool)

(assert (=> b!3191655 m!3450937))

(declare-fun m!3450939 () Bool)

(assert (=> b!3191655 m!3450939))

(declare-fun m!3450941 () Bool)

(assert (=> b!3191655 m!3450941))

(declare-fun m!3450943 () Bool)

(assert (=> b!3191655 m!3450943))

(declare-fun m!3450945 () Bool)

(assert (=> b!3191659 m!3450945))

(declare-fun m!3450947 () Bool)

(assert (=> b!3191660 m!3450947))

(declare-fun m!3450949 () Bool)

(assert (=> b!3191660 m!3450949))

(declare-fun m!3450951 () Bool)

(assert (=> b!3191663 m!3450951))

(declare-fun m!3450953 () Bool)

(assert (=> b!3191647 m!3450953))

(declare-fun m!3450955 () Bool)

(assert (=> b!3191646 m!3450955))

(declare-fun m!3450957 () Bool)

(assert (=> b!3191646 m!3450957))

(declare-fun m!3450959 () Bool)

(assert (=> start!299286 m!3450959))

(declare-fun m!3450961 () Bool)

(assert (=> b!3191658 m!3450961))

(declare-fun m!3450963 () Bool)

(assert (=> b!3191654 m!3450963))

(declare-fun m!3450965 () Bool)

(assert (=> b!3191662 m!3450965))

(declare-fun m!3450967 () Bool)

(assert (=> b!3191662 m!3450967))

(declare-fun m!3450969 () Bool)

(assert (=> b!3191656 m!3450969))

(declare-fun m!3450971 () Bool)

(assert (=> b!3191657 m!3450971))

(declare-fun m!3450973 () Bool)

(assert (=> b!3191653 m!3450973))

(declare-fun m!3450975 () Bool)

(assert (=> b!3191648 m!3450975))

(assert (=> b!3191648 m!3450975))

(declare-fun m!3450977 () Bool)

(assert (=> b!3191648 m!3450977))

(check-sat (not b!3191649) (not b_next!85235) (not b!3191660) (not b!3191653) b_and!211545 b_and!211541 (not b_next!85239) (not b!3191663) (not b!3191656) (not b_next!85243) (not b!3191658) (not b_next!85241) (not b!3191647) b_and!211539 (not b!3191646) (not b!3191662) b_and!211547 (not start!299286) (not b_next!85233) b_and!211543 (not b!3191659) (not b_next!85237) (not b!3191655) (not b!3191657) (not b!3191648) b_and!211549 (not b!3191654))
(check-sat (not b_next!85243) (not b_next!85241) b_and!211539 (not b_next!85235) b_and!211547 (not b_next!85237) b_and!211545 b_and!211549 b_and!211541 (not b_next!85239) (not b_next!85233) b_and!211543)
