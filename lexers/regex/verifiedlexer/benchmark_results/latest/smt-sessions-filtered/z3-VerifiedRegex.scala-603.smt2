; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19186 () Bool)

(assert start!19186)

(declare-fun b!176844 () Bool)

(declare-fun b_free!6745 () Bool)

(declare-fun b_next!6745 () Bool)

(assert (=> b!176844 (= b_free!6745 (not b_next!6745))))

(declare-fun tp!85319 () Bool)

(declare-fun b_and!11965 () Bool)

(assert (=> b!176844 (= tp!85319 b_and!11965)))

(declare-fun b_free!6747 () Bool)

(declare-fun b_next!6747 () Bool)

(assert (=> b!176844 (= b_free!6747 (not b_next!6747))))

(declare-fun tp!85323 () Bool)

(declare-fun b_and!11967 () Bool)

(assert (=> b!176844 (= tp!85323 b_and!11967)))

(declare-fun b!176852 () Bool)

(declare-fun b_free!6749 () Bool)

(declare-fun b_next!6749 () Bool)

(assert (=> b!176852 (= b_free!6749 (not b_next!6749))))

(declare-fun tp!85313 () Bool)

(declare-fun b_and!11969 () Bool)

(assert (=> b!176852 (= tp!85313 b_and!11969)))

(declare-fun b_free!6751 () Bool)

(declare-fun b_next!6751 () Bool)

(assert (=> b!176852 (= b_free!6751 (not b_next!6751))))

(declare-fun tp!85325 () Bool)

(declare-fun b_and!11971 () Bool)

(assert (=> b!176852 (= tp!85325 b_and!11971)))

(declare-fun b!176841 () Bool)

(declare-fun b_free!6753 () Bool)

(declare-fun b_next!6753 () Bool)

(assert (=> b!176841 (= b_free!6753 (not b_next!6753))))

(declare-fun tp!85318 () Bool)

(declare-fun b_and!11973 () Bool)

(assert (=> b!176841 (= tp!85318 b_and!11973)))

(declare-fun b_free!6755 () Bool)

(declare-fun b_next!6755 () Bool)

(assert (=> b!176841 (= b_free!6755 (not b_next!6755))))

(declare-fun tp!85322 () Bool)

(declare-fun b_and!11975 () Bool)

(assert (=> b!176841 (= tp!85322 b_and!11975)))

(declare-fun bs!17686 () Bool)

(declare-fun b!176857 () Bool)

(declare-fun b!176840 () Bool)

(assert (= bs!17686 (and b!176857 b!176840)))

(declare-fun lambda!5124 () Int)

(declare-fun lambda!5123 () Int)

(assert (=> bs!17686 (not (= lambda!5124 lambda!5123))))

(declare-fun b!176872 () Bool)

(declare-fun e!107291 () Bool)

(assert (=> b!176872 (= e!107291 true)))

(declare-fun b!176871 () Bool)

(declare-fun e!107290 () Bool)

(assert (=> b!176871 (= e!107290 e!107291)))

(declare-fun b!176870 () Bool)

(declare-fun e!107289 () Bool)

(assert (=> b!176870 (= e!107289 e!107290)))

(assert (=> b!176857 e!107289))

(assert (= b!176871 b!176872))

(assert (= b!176870 b!176871))

(declare-datatypes ((List!2955 0))(
  ( (Nil!2945) (Cons!2945 (h!8342 (_ BitVec 16)) (t!27997 List!2955)) )
))
(declare-datatypes ((TokenValue!551 0))(
  ( (FloatLiteralValue!1102 (text!4302 List!2955)) (TokenValueExt!550 (__x!2589 Int)) (Broken!2755 (value!19366 List!2955)) (Object!560) (End!551) (Def!551) (Underscore!551) (Match!551) (Else!551) (Error!551) (Case!551) (If!551) (Extends!551) (Abstract!551) (Class!551) (Val!551) (DelimiterValue!1102 (del!611 List!2955)) (KeywordValue!557 (value!19367 List!2955)) (CommentValue!1102 (value!19368 List!2955)) (WhitespaceValue!1102 (value!19369 List!2955)) (IndentationValue!551 (value!19370 List!2955)) (String!3834) (Int32!551) (Broken!2756 (value!19371 List!2955)) (Boolean!552) (Unit!2677) (OperatorValue!554 (op!611 List!2955)) (IdentifierValue!1102 (value!19372 List!2955)) (IdentifierValue!1103 (value!19373 List!2955)) (WhitespaceValue!1103 (value!19374 List!2955)) (True!1102) (False!1102) (Broken!2757 (value!19375 List!2955)) (Broken!2758 (value!19376 List!2955)) (True!1103) (RightBrace!551) (RightBracket!551) (Colon!551) (Null!551) (Comma!551) (LeftBracket!551) (False!1103) (LeftBrace!551) (ImaginaryLiteralValue!551 (text!4303 List!2955)) (StringLiteralValue!1653 (value!19377 List!2955)) (EOFValue!551 (value!19378 List!2955)) (IdentValue!551 (value!19379 List!2955)) (DelimiterValue!1103 (value!19380 List!2955)) (DedentValue!551 (value!19381 List!2955)) (NewLineValue!551 (value!19382 List!2955)) (IntegerValue!1653 (value!19383 (_ BitVec 32)) (text!4304 List!2955)) (IntegerValue!1654 (value!19384 Int) (text!4305 List!2955)) (Times!551) (Or!551) (Equal!551) (Minus!551) (Broken!2759 (value!19385 List!2955)) (And!551) (Div!551) (LessEqual!551) (Mod!551) (Concat!1304) (Not!551) (Plus!551) (SpaceValue!551 (value!19386 List!2955)) (IntegerValue!1655 (value!19387 Int) (text!4306 List!2955)) (StringLiteralValue!1654 (text!4307 List!2955)) (FloatLiteralValue!1103 (text!4308 List!2955)) (BytesLiteralValue!551 (value!19388 List!2955)) (CommentValue!1103 (value!19389 List!2955)) (StringLiteralValue!1655 (value!19390 List!2955)) (ErrorTokenValue!551 (msg!612 List!2955)) )
))
(declare-datatypes ((C!2428 0))(
  ( (C!2429 (val!1100 Int)) )
))
(declare-datatypes ((List!2956 0))(
  ( (Nil!2946) (Cons!2946 (h!8343 C!2428) (t!27998 List!2956)) )
))
(declare-datatypes ((IArray!1761 0))(
  ( (IArray!1762 (innerList!938 List!2956)) )
))
(declare-datatypes ((Conc!880 0))(
  ( (Node!880 (left!2259 Conc!880) (right!2589 Conc!880) (csize!1990 Int) (cheight!1091 Int)) (Leaf!1484 (xs!3475 IArray!1761) (csize!1991 Int)) (Empty!880) )
))
(declare-datatypes ((BalanceConc!1768 0))(
  ( (BalanceConc!1769 (c!34955 Conc!880)) )
))
(declare-datatypes ((TokenValueInjection!874 0))(
  ( (TokenValueInjection!875 (toValue!1200 Int) (toChars!1059 Int)) )
))
(declare-datatypes ((Regex!753 0))(
  ( (ElementMatch!753 (c!34956 C!2428)) (Concat!1305 (regOne!2018 Regex!753) (regTwo!2018 Regex!753)) (EmptyExpr!753) (Star!753 (reg!1082 Regex!753)) (EmptyLang!753) (Union!753 (regOne!2019 Regex!753) (regTwo!2019 Regex!753)) )
))
(declare-datatypes ((String!3835 0))(
  ( (String!3836 (value!19391 String)) )
))
(declare-datatypes ((Rule!858 0))(
  ( (Rule!859 (regex!529 Regex!753) (tag!707 String!3835) (isSeparator!529 Bool) (transformation!529 TokenValueInjection!874)) )
))
(declare-datatypes ((List!2957 0))(
  ( (Nil!2947) (Cons!2947 (h!8344 Rule!858) (t!27999 List!2957)) )
))
(declare-fun rules!1920 () List!2957)

(get-info :version)

(assert (= (and b!176857 ((_ is Cons!2947) rules!1920)) b!176870))

(declare-fun order!1649 () Int)

(declare-fun order!1651 () Int)

(declare-fun dynLambda!1145 (Int Int) Int)

(declare-fun dynLambda!1146 (Int Int) Int)

(assert (=> b!176872 (< (dynLambda!1145 order!1649 (toValue!1200 (transformation!529 (h!8344 rules!1920)))) (dynLambda!1146 order!1651 lambda!5124))))

(declare-fun order!1653 () Int)

(declare-fun dynLambda!1147 (Int Int) Int)

(assert (=> b!176872 (< (dynLambda!1147 order!1653 (toChars!1059 (transformation!529 (h!8344 rules!1920)))) (dynLambda!1146 order!1651 lambda!5124))))

(assert (=> b!176857 true))

(declare-fun b!176831 () Bool)

(declare-fun e!107271 () Bool)

(declare-fun e!107280 () Bool)

(assert (=> b!176831 (= e!107271 e!107280)))

(declare-fun res!79799 () Bool)

(assert (=> b!176831 (=> res!79799 e!107280)))

(declare-fun lt!57455 () Bool)

(assert (=> b!176831 (= res!79799 (not lt!57455))))

(declare-fun e!107262 () Bool)

(assert (=> b!176831 e!107262))

(declare-fun res!79802 () Bool)

(assert (=> b!176831 (=> (not res!79802) (not e!107262))))

(declare-datatypes ((Token!802 0))(
  ( (Token!803 (value!19392 TokenValue!551) (rule!1044 Rule!858) (size!2441 Int) (originalCharacters!572 List!2956)) )
))
(declare-datatypes ((tuple2!2886 0))(
  ( (tuple2!2887 (_1!1659 Token!802) (_2!1659 List!2956)) )
))
(declare-fun lt!57459 () tuple2!2886)

(declare-datatypes ((List!2958 0))(
  ( (Nil!2948) (Cons!2948 (h!8345 Token!802) (t!28000 List!2958)) )
))
(declare-fun tokens!465 () List!2958)

(assert (=> b!176831 (= res!79802 (= (_1!1659 lt!57459) (h!8345 tokens!465)))))

(declare-datatypes ((Option!336 0))(
  ( (None!335) (Some!335 (v!13798 tuple2!2886)) )
))
(declare-fun lt!57453 () Option!336)

(declare-fun get!818 (Option!336) tuple2!2886)

(assert (=> b!176831 (= lt!57459 (get!818 lt!57453))))

(declare-fun isDefined!187 (Option!336) Bool)

(assert (=> b!176831 (isDefined!187 lt!57453)))

(declare-fun lt!57450 () List!2956)

(declare-datatypes ((LexerInterface!415 0))(
  ( (LexerInterfaceExt!412 (__x!2590 Int)) (Lexer!413) )
))
(declare-fun thiss!17480 () LexerInterface!415)

(declare-fun maxPrefix!145 (LexerInterface!415 List!2957 List!2956) Option!336)

(assert (=> b!176831 (= lt!57453 (maxPrefix!145 thiss!17480 rules!1920 lt!57450))))

(declare-fun b!176832 () Bool)

(declare-fun res!79795 () Bool)

(declare-fun e!107258 () Bool)

(assert (=> b!176832 (=> (not res!79795) (not e!107258))))

(declare-fun isEmpty!1288 (List!2957) Bool)

(assert (=> b!176832 (= res!79795 (not (isEmpty!1288 rules!1920)))))

(declare-fun b!176833 () Bool)

(declare-fun tp!85324 () Bool)

(declare-fun e!107281 () Bool)

(declare-fun e!107265 () Bool)

(declare-fun inv!21 (TokenValue!551) Bool)

(assert (=> b!176833 (= e!107265 (and (inv!21 (value!19392 (h!8345 tokens!465))) e!107281 tp!85324))))

(declare-fun separatorToken!170 () Token!802)

(declare-fun e!107276 () Bool)

(declare-fun tp!85320 () Bool)

(declare-fun e!107264 () Bool)

(declare-fun b!176834 () Bool)

(assert (=> b!176834 (= e!107264 (and (inv!21 (value!19392 separatorToken!170)) e!107276 tp!85320))))

(declare-fun b!176835 () Bool)

(declare-fun e!107279 () Bool)

(declare-fun tp!85314 () Bool)

(declare-fun inv!3781 (String!3835) Bool)

(declare-fun inv!3784 (TokenValueInjection!874) Bool)

(assert (=> b!176835 (= e!107281 (and tp!85314 (inv!3781 (tag!707 (rule!1044 (h!8345 tokens!465)))) (inv!3784 (transformation!529 (rule!1044 (h!8345 tokens!465)))) e!107279))))

(declare-fun tp!85317 () Bool)

(declare-fun b!176836 () Bool)

(declare-fun e!107273 () Bool)

(declare-fun e!107266 () Bool)

(assert (=> b!176836 (= e!107273 (and tp!85317 (inv!3781 (tag!707 (h!8344 rules!1920))) (inv!3784 (transformation!529 (h!8344 rules!1920))) e!107266))))

(declare-fun b!176837 () Bool)

(declare-fun e!107260 () Bool)

(declare-fun e!107282 () Bool)

(assert (=> b!176837 (= e!107260 (not e!107282))))

(declare-fun res!79811 () Bool)

(assert (=> b!176837 (=> res!79811 e!107282)))

(declare-fun lt!57449 () List!2956)

(declare-fun list!1083 (BalanceConc!1768) List!2956)

(declare-datatypes ((IArray!1763 0))(
  ( (IArray!1764 (innerList!939 List!2958)) )
))
(declare-datatypes ((Conc!881 0))(
  ( (Node!881 (left!2260 Conc!881) (right!2590 Conc!881) (csize!1992 Int) (cheight!1092 Int)) (Leaf!1485 (xs!3476 IArray!1763) (csize!1993 Int)) (Empty!881) )
))
(declare-datatypes ((BalanceConc!1770 0))(
  ( (BalanceConc!1771 (c!34957 Conc!881)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!98 (LexerInterface!415 List!2957 BalanceConc!1770 Token!802 Int) BalanceConc!1768)

(declare-fun seqFromList!435 (List!2958) BalanceConc!1770)

(assert (=> b!176837 (= res!79811 (not (= lt!57449 (list!1083 (printWithSeparatorTokenWhenNeededRec!98 thiss!17480 rules!1920 (seqFromList!435 (t!28000 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!57448 () List!2956)

(declare-fun lt!57462 () List!2956)

(assert (=> b!176837 (= lt!57448 lt!57462)))

(declare-fun lt!57452 () List!2956)

(declare-fun ++!688 (List!2956 List!2956) List!2956)

(assert (=> b!176837 (= lt!57462 (++!688 lt!57450 lt!57452))))

(declare-fun lt!57458 () List!2956)

(assert (=> b!176837 (= lt!57448 (++!688 (++!688 lt!57450 lt!57458) lt!57449))))

(declare-datatypes ((Unit!2678 0))(
  ( (Unit!2679) )
))
(declare-fun lt!57456 () Unit!2678)

(declare-fun lemmaConcatAssociativity!218 (List!2956 List!2956 List!2956) Unit!2678)

(assert (=> b!176837 (= lt!57456 (lemmaConcatAssociativity!218 lt!57450 lt!57458 lt!57449))))

(declare-fun charsOf!184 (Token!802) BalanceConc!1768)

(assert (=> b!176837 (= lt!57450 (list!1083 (charsOf!184 (h!8345 tokens!465))))))

(assert (=> b!176837 (= lt!57452 (++!688 lt!57458 lt!57449))))

(declare-fun printWithSeparatorTokenWhenNeededList!108 (LexerInterface!415 List!2957 List!2958 Token!802) List!2956)

(assert (=> b!176837 (= lt!57449 (printWithSeparatorTokenWhenNeededList!108 thiss!17480 rules!1920 (t!28000 tokens!465) separatorToken!170))))

(assert (=> b!176837 (= lt!57458 (list!1083 (charsOf!184 separatorToken!170)))))

(declare-fun b!176838 () Bool)

(declare-fun res!79798 () Bool)

(assert (=> b!176838 (=> (not res!79798) (not e!107258))))

(declare-fun rulesInvariant!381 (LexerInterface!415 List!2957) Bool)

(assert (=> b!176838 (= res!79798 (rulesInvariant!381 thiss!17480 rules!1920))))

(declare-fun b!176839 () Bool)

(assert (=> b!176839 (= e!107280 true)))

(declare-fun lt!57460 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!117 (LexerInterface!415 List!2957 List!2958) Bool)

(assert (=> b!176839 (= lt!57460 (rulesProduceEachTokenIndividuallyList!117 thiss!17480 rules!1920 (t!28000 tokens!465)))))

(declare-fun res!79801 () Bool)

(assert (=> start!19186 (=> (not res!79801) (not e!107258))))

(assert (=> start!19186 (= res!79801 ((_ is Lexer!413) thiss!17480))))

(assert (=> start!19186 e!107258))

(assert (=> start!19186 true))

(declare-fun e!107267 () Bool)

(assert (=> start!19186 e!107267))

(declare-fun inv!3785 (Token!802) Bool)

(assert (=> start!19186 (and (inv!3785 separatorToken!170) e!107264)))

(declare-fun e!107278 () Bool)

(assert (=> start!19186 e!107278))

(declare-fun res!79797 () Bool)

(declare-fun e!107261 () Bool)

(assert (=> b!176840 (=> (not res!79797) (not e!107261))))

(declare-fun forall!591 (List!2958 Int) Bool)

(assert (=> b!176840 (= res!79797 (forall!591 tokens!465 lambda!5123))))

(assert (=> b!176841 (= e!107279 (and tp!85318 tp!85322))))

(declare-fun b!176842 () Bool)

(declare-fun res!79793 () Bool)

(assert (=> b!176842 (=> (not res!79793) (not e!107261))))

(assert (=> b!176842 (= res!79793 ((_ is Cons!2948) tokens!465))))

(declare-fun b!176843 () Bool)

(declare-fun res!79807 () Bool)

(declare-fun e!107270 () Bool)

(assert (=> b!176843 (=> res!79807 e!107270)))

(declare-fun rulesProduceIndividualToken!164 (LexerInterface!415 List!2957 Token!802) Bool)

(assert (=> b!176843 (= res!79807 (not (rulesProduceIndividualToken!164 thiss!17480 rules!1920 (h!8345 tokens!465))))))

(declare-fun e!107272 () Bool)

(assert (=> b!176844 (= e!107272 (and tp!85319 tp!85323))))

(declare-fun b!176845 () Bool)

(declare-fun res!79792 () Bool)

(assert (=> b!176845 (=> (not res!79792) (not e!107260))))

(declare-fun lt!57451 () List!2956)

(declare-fun lt!57454 () List!2956)

(declare-fun seqFromList!436 (List!2956) BalanceConc!1768)

(assert (=> b!176845 (= res!79792 (= (list!1083 (seqFromList!436 lt!57451)) lt!57454))))

(declare-fun b!176846 () Bool)

(declare-fun res!79810 () Bool)

(assert (=> b!176846 (=> (not res!79810) (not e!107261))))

(assert (=> b!176846 (= res!79810 (rulesProduceIndividualToken!164 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!85316 () Bool)

(declare-fun b!176847 () Bool)

(assert (=> b!176847 (= e!107276 (and tp!85316 (inv!3781 (tag!707 (rule!1044 separatorToken!170))) (inv!3784 (transformation!529 (rule!1044 separatorToken!170))) e!107272))))

(declare-fun b!176848 () Bool)

(declare-fun res!79804 () Bool)

(assert (=> b!176848 (=> (not res!79804) (not e!107261))))

(declare-fun sepAndNonSepRulesDisjointChars!118 (List!2957 List!2957) Bool)

(assert (=> b!176848 (= res!79804 (sepAndNonSepRulesDisjointChars!118 rules!1920 rules!1920))))

(declare-fun b!176849 () Bool)

(declare-fun res!79794 () Bool)

(assert (=> b!176849 (=> (not res!79794) (not e!107262))))

(declare-fun isEmpty!1289 (List!2956) Bool)

(assert (=> b!176849 (= res!79794 (isEmpty!1289 (_2!1659 lt!57459)))))

(declare-fun b!176850 () Bool)

(declare-fun e!107274 () Bool)

(assert (=> b!176850 (= e!107274 e!107270)))

(declare-fun res!79805 () Bool)

(assert (=> b!176850 (=> res!79805 e!107270)))

(declare-fun lt!57447 () List!2956)

(declare-fun lt!57463 () List!2956)

(assert (=> b!176850 (= res!79805 (or (not (= lt!57463 lt!57447)) (not (= lt!57447 lt!57450)) (not (= lt!57463 lt!57450))))))

(declare-fun printList!99 (LexerInterface!415 List!2958) List!2956)

(assert (=> b!176850 (= lt!57447 (printList!99 thiss!17480 (Cons!2948 (h!8345 tokens!465) Nil!2948)))))

(declare-fun lt!57461 () BalanceConc!1768)

(assert (=> b!176850 (= lt!57463 (list!1083 lt!57461))))

(declare-fun lt!57446 () BalanceConc!1770)

(declare-fun printTailRec!109 (LexerInterface!415 BalanceConc!1770 Int BalanceConc!1768) BalanceConc!1768)

(assert (=> b!176850 (= lt!57461 (printTailRec!109 thiss!17480 lt!57446 0 (BalanceConc!1769 Empty!880)))))

(declare-fun print!146 (LexerInterface!415 BalanceConc!1770) BalanceConc!1768)

(assert (=> b!176850 (= lt!57461 (print!146 thiss!17480 lt!57446))))

(declare-fun singletonSeq!81 (Token!802) BalanceConc!1770)

(assert (=> b!176850 (= lt!57446 (singletonSeq!81 (h!8345 tokens!465)))))

(declare-fun b!176851 () Bool)

(declare-fun res!79808 () Bool)

(assert (=> b!176851 (=> res!79808 e!107270)))

(declare-fun isEmpty!1290 (BalanceConc!1770) Bool)

(declare-datatypes ((tuple2!2888 0))(
  ( (tuple2!2889 (_1!1660 BalanceConc!1770) (_2!1660 BalanceConc!1768)) )
))
(declare-fun lex!215 (LexerInterface!415 List!2957 BalanceConc!1768) tuple2!2888)

(assert (=> b!176851 (= res!79808 (isEmpty!1290 (_1!1660 (lex!215 thiss!17480 rules!1920 (seqFromList!436 lt!57450)))))))

(assert (=> b!176852 (= e!107266 (and tp!85313 tp!85325))))

(declare-fun b!176853 () Bool)

(assert (=> b!176853 (= e!107261 e!107260)))

(declare-fun res!79812 () Bool)

(assert (=> b!176853 (=> (not res!79812) (not e!107260))))

(assert (=> b!176853 (= res!79812 (= lt!57451 lt!57454))))

(declare-fun lt!57457 () BalanceConc!1770)

(assert (=> b!176853 (= lt!57454 (list!1083 (printWithSeparatorTokenWhenNeededRec!98 thiss!17480 rules!1920 lt!57457 separatorToken!170 0)))))

(assert (=> b!176853 (= lt!57451 (printWithSeparatorTokenWhenNeededList!108 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!176854 () Bool)

(assert (=> b!176854 (= e!107282 e!107274)))

(declare-fun res!79809 () Bool)

(assert (=> b!176854 (=> res!79809 e!107274)))

(declare-fun e!107269 () Bool)

(assert (=> b!176854 (= res!79809 e!107269)))

(declare-fun res!79803 () Bool)

(assert (=> b!176854 (=> (not res!79803) (not e!107269))))

(assert (=> b!176854 (= res!79803 (not lt!57455))))

(assert (=> b!176854 (= lt!57455 (= lt!57451 lt!57462))))

(declare-fun b!176855 () Bool)

(assert (=> b!176855 (= e!107258 e!107261)))

(declare-fun res!79800 () Bool)

(assert (=> b!176855 (=> (not res!79800) (not e!107261))))

(declare-fun rulesProduceEachTokenIndividually!207 (LexerInterface!415 List!2957 BalanceConc!1770) Bool)

(assert (=> b!176855 (= res!79800 (rulesProduceEachTokenIndividually!207 thiss!17480 rules!1920 lt!57457))))

(assert (=> b!176855 (= lt!57457 (seqFromList!435 tokens!465))))

(declare-fun b!176856 () Bool)

(declare-fun matchR!91 (Regex!753 List!2956) Bool)

(assert (=> b!176856 (= e!107262 (matchR!91 (regex!529 (rule!1044 (h!8345 tokens!465))) lt!57450))))

(assert (=> b!176857 (= e!107270 e!107271)))

(declare-fun res!79796 () Bool)

(assert (=> b!176857 (=> res!79796 e!107271)))

(declare-datatypes ((tuple2!2890 0))(
  ( (tuple2!2891 (_1!1661 Token!802) (_2!1661 BalanceConc!1768)) )
))
(declare-datatypes ((Option!337 0))(
  ( (None!336) (Some!336 (v!13799 tuple2!2890)) )
))
(declare-fun isDefined!188 (Option!337) Bool)

(declare-fun maxPrefixZipperSequence!108 (LexerInterface!415 List!2957 BalanceConc!1768) Option!337)

(assert (=> b!176857 (= res!79796 (not (isDefined!188 (maxPrefixZipperSequence!108 thiss!17480 rules!1920 (seqFromList!436 (originalCharacters!572 (h!8345 tokens!465)))))))))

(declare-fun lt!57464 () Unit!2678)

(declare-fun forallContained!96 (List!2958 Int Token!802) Unit!2678)

(assert (=> b!176857 (= lt!57464 (forallContained!96 tokens!465 lambda!5124 (h!8345 tokens!465)))))

(assert (=> b!176857 (= lt!57450 (originalCharacters!572 (h!8345 tokens!465)))))

(declare-fun b!176858 () Bool)

(declare-fun tp!85315 () Bool)

(assert (=> b!176858 (= e!107267 (and e!107273 tp!85315))))

(declare-fun b!176859 () Bool)

(declare-fun res!79806 () Bool)

(assert (=> b!176859 (=> (not res!79806) (not e!107261))))

(assert (=> b!176859 (= res!79806 (isSeparator!529 (rule!1044 separatorToken!170)))))

(declare-fun tp!85321 () Bool)

(declare-fun b!176860 () Bool)

(assert (=> b!176860 (= e!107278 (and (inv!3785 (h!8345 tokens!465)) e!107265 tp!85321))))

(declare-fun b!176861 () Bool)

(assert (=> b!176861 (= e!107269 (not (= lt!57451 (++!688 lt!57450 lt!57449))))))

(assert (= (and start!19186 res!79801) b!176832))

(assert (= (and b!176832 res!79795) b!176838))

(assert (= (and b!176838 res!79798) b!176855))

(assert (= (and b!176855 res!79800) b!176846))

(assert (= (and b!176846 res!79810) b!176859))

(assert (= (and b!176859 res!79806) b!176840))

(assert (= (and b!176840 res!79797) b!176848))

(assert (= (and b!176848 res!79804) b!176842))

(assert (= (and b!176842 res!79793) b!176853))

(assert (= (and b!176853 res!79812) b!176845))

(assert (= (and b!176845 res!79792) b!176837))

(assert (= (and b!176837 (not res!79811)) b!176854))

(assert (= (and b!176854 res!79803) b!176861))

(assert (= (and b!176854 (not res!79809)) b!176850))

(assert (= (and b!176850 (not res!79805)) b!176843))

(assert (= (and b!176843 (not res!79807)) b!176851))

(assert (= (and b!176851 (not res!79808)) b!176857))

(assert (= (and b!176857 (not res!79796)) b!176831))

(assert (= (and b!176831 res!79802) b!176849))

(assert (= (and b!176849 res!79794) b!176856))

(assert (= (and b!176831 (not res!79799)) b!176839))

(assert (= b!176836 b!176852))

(assert (= b!176858 b!176836))

(assert (= (and start!19186 ((_ is Cons!2947) rules!1920)) b!176858))

(assert (= b!176847 b!176844))

(assert (= b!176834 b!176847))

(assert (= start!19186 b!176834))

(assert (= b!176835 b!176841))

(assert (= b!176833 b!176835))

(assert (= b!176860 b!176833))

(assert (= (and start!19186 ((_ is Cons!2948) tokens!465)) b!176860))

(declare-fun m!178377 () Bool)

(assert (=> b!176851 m!178377))

(assert (=> b!176851 m!178377))

(declare-fun m!178379 () Bool)

(assert (=> b!176851 m!178379))

(declare-fun m!178381 () Bool)

(assert (=> b!176851 m!178381))

(declare-fun m!178383 () Bool)

(assert (=> b!176847 m!178383))

(declare-fun m!178385 () Bool)

(assert (=> b!176847 m!178385))

(declare-fun m!178387 () Bool)

(assert (=> b!176845 m!178387))

(assert (=> b!176845 m!178387))

(declare-fun m!178389 () Bool)

(assert (=> b!176845 m!178389))

(declare-fun m!178391 () Bool)

(assert (=> b!176833 m!178391))

(declare-fun m!178393 () Bool)

(assert (=> b!176835 m!178393))

(declare-fun m!178395 () Bool)

(assert (=> b!176835 m!178395))

(declare-fun m!178397 () Bool)

(assert (=> b!176855 m!178397))

(declare-fun m!178399 () Bool)

(assert (=> b!176855 m!178399))

(declare-fun m!178401 () Bool)

(assert (=> b!176850 m!178401))

(declare-fun m!178403 () Bool)

(assert (=> b!176850 m!178403))

(declare-fun m!178405 () Bool)

(assert (=> b!176850 m!178405))

(declare-fun m!178407 () Bool)

(assert (=> b!176850 m!178407))

(declare-fun m!178409 () Bool)

(assert (=> b!176850 m!178409))

(declare-fun m!178411 () Bool)

(assert (=> b!176856 m!178411))

(declare-fun m!178413 () Bool)

(assert (=> b!176857 m!178413))

(assert (=> b!176857 m!178413))

(declare-fun m!178415 () Bool)

(assert (=> b!176857 m!178415))

(assert (=> b!176857 m!178415))

(declare-fun m!178417 () Bool)

(assert (=> b!176857 m!178417))

(declare-fun m!178419 () Bool)

(assert (=> b!176857 m!178419))

(declare-fun m!178421 () Bool)

(assert (=> start!19186 m!178421))

(declare-fun m!178423 () Bool)

(assert (=> b!176834 m!178423))

(declare-fun m!178425 () Bool)

(assert (=> b!176853 m!178425))

(assert (=> b!176853 m!178425))

(declare-fun m!178427 () Bool)

(assert (=> b!176853 m!178427))

(declare-fun m!178429 () Bool)

(assert (=> b!176853 m!178429))

(declare-fun m!178431 () Bool)

(assert (=> b!176860 m!178431))

(declare-fun m!178433 () Bool)

(assert (=> b!176832 m!178433))

(declare-fun m!178435 () Bool)

(assert (=> b!176836 m!178435))

(declare-fun m!178437 () Bool)

(assert (=> b!176836 m!178437))

(declare-fun m!178439 () Bool)

(assert (=> b!176849 m!178439))

(declare-fun m!178441 () Bool)

(assert (=> b!176837 m!178441))

(declare-fun m!178443 () Bool)

(assert (=> b!176837 m!178443))

(declare-fun m!178445 () Bool)

(assert (=> b!176837 m!178445))

(declare-fun m!178447 () Bool)

(assert (=> b!176837 m!178447))

(assert (=> b!176837 m!178445))

(declare-fun m!178449 () Bool)

(assert (=> b!176837 m!178449))

(declare-fun m!178451 () Bool)

(assert (=> b!176837 m!178451))

(assert (=> b!176837 m!178441))

(declare-fun m!178453 () Bool)

(assert (=> b!176837 m!178453))

(assert (=> b!176837 m!178451))

(declare-fun m!178455 () Bool)

(assert (=> b!176837 m!178455))

(declare-fun m!178457 () Bool)

(assert (=> b!176837 m!178457))

(declare-fun m!178459 () Bool)

(assert (=> b!176837 m!178459))

(declare-fun m!178461 () Bool)

(assert (=> b!176837 m!178461))

(assert (=> b!176837 m!178457))

(declare-fun m!178463 () Bool)

(assert (=> b!176837 m!178463))

(assert (=> b!176837 m!178453))

(declare-fun m!178465 () Bool)

(assert (=> b!176837 m!178465))

(declare-fun m!178467 () Bool)

(assert (=> b!176861 m!178467))

(declare-fun m!178469 () Bool)

(assert (=> b!176846 m!178469))

(declare-fun m!178471 () Bool)

(assert (=> b!176840 m!178471))

(declare-fun m!178473 () Bool)

(assert (=> b!176843 m!178473))

(declare-fun m!178475 () Bool)

(assert (=> b!176848 m!178475))

(declare-fun m!178477 () Bool)

(assert (=> b!176839 m!178477))

(declare-fun m!178479 () Bool)

(assert (=> b!176838 m!178479))

(declare-fun m!178481 () Bool)

(assert (=> b!176831 m!178481))

(declare-fun m!178483 () Bool)

(assert (=> b!176831 m!178483))

(declare-fun m!178485 () Bool)

(assert (=> b!176831 m!178485))

(check-sat (not b!176856) (not b!176847) (not b!176860) b_and!11971 (not b!176850) (not b!176857) b_and!11965 (not b!176849) b_and!11967 (not b!176832) (not b!176833) (not b!176838) (not b_next!6747) (not b!176843) (not b!176858) (not start!19186) (not b!176861) (not b!176839) (not b_next!6753) (not b_next!6751) (not b!176845) (not b!176835) (not b!176851) (not b!176855) (not b!176834) (not b_next!6749) (not b!176848) b_and!11975 b_and!11973 (not b_next!6745) (not b!176870) b_and!11969 (not b!176840) (not b!176836) (not b!176846) (not b_next!6755) (not b!176831) (not b!176837) (not b!176853))
(check-sat (not b_next!6747) b_and!11971 b_and!11965 b_and!11969 b_and!11967 (not b_next!6755) (not b_next!6753) (not b_next!6751) (not b_next!6749) b_and!11975 b_and!11973 (not b_next!6745))
