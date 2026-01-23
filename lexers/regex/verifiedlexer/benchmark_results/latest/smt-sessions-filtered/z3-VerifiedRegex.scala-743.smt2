; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37350 () Bool)

(assert start!37350)

(declare-fun b!374888 () Bool)

(declare-fun b_free!11673 () Bool)

(declare-fun b_next!11673 () Bool)

(assert (=> b!374888 (= b_free!11673 (not b_next!11673))))

(declare-fun tp!117243 () Bool)

(declare-fun b_and!37605 () Bool)

(assert (=> b!374888 (= tp!117243 b_and!37605)))

(declare-fun b_free!11675 () Bool)

(declare-fun b_next!11675 () Bool)

(assert (=> b!374888 (= b_free!11675 (not b_next!11675))))

(declare-fun tp!117242 () Bool)

(declare-fun b_and!37607 () Bool)

(assert (=> b!374888 (= tp!117242 b_and!37607)))

(declare-fun b!374855 () Bool)

(declare-fun b_free!11677 () Bool)

(declare-fun b_next!11677 () Bool)

(assert (=> b!374855 (= b_free!11677 (not b_next!11677))))

(declare-fun tp!117235 () Bool)

(declare-fun b_and!37609 () Bool)

(assert (=> b!374855 (= tp!117235 b_and!37609)))

(declare-fun b_free!11679 () Bool)

(declare-fun b_next!11679 () Bool)

(assert (=> b!374855 (= b_free!11679 (not b_next!11679))))

(declare-fun tp!117234 () Bool)

(declare-fun b_and!37611 () Bool)

(assert (=> b!374855 (= tp!117234 b_and!37611)))

(declare-fun b!374889 () Bool)

(declare-fun b_free!11681 () Bool)

(declare-fun b_next!11681 () Bool)

(assert (=> b!374889 (= b_free!11681 (not b_next!11681))))

(declare-fun tp!117238 () Bool)

(declare-fun b_and!37613 () Bool)

(assert (=> b!374889 (= tp!117238 b_and!37613)))

(declare-fun b_free!11683 () Bool)

(declare-fun b_next!11683 () Bool)

(assert (=> b!374889 (= b_free!11683 (not b_next!11683))))

(declare-fun tp!117232 () Bool)

(declare-fun b_and!37615 () Bool)

(assert (=> b!374889 (= tp!117232 b_and!37615)))

(declare-fun bs!45396 () Bool)

(declare-fun b!374871 () Bool)

(declare-fun b!374869 () Bool)

(assert (= bs!45396 (and b!374871 b!374869)))

(declare-fun lambda!11678 () Int)

(declare-fun lambda!11677 () Int)

(assert (=> bs!45396 (not (= lambda!11678 lambda!11677))))

(declare-fun b!374906 () Bool)

(declare-fun e!230602 () Bool)

(assert (=> b!374906 (= e!230602 true)))

(declare-fun b!374905 () Bool)

(declare-fun e!230601 () Bool)

(assert (=> b!374905 (= e!230601 e!230602)))

(declare-fun b!374904 () Bool)

(declare-fun e!230600 () Bool)

(assert (=> b!374904 (= e!230600 e!230601)))

(assert (=> b!374871 e!230600))

(assert (= b!374905 b!374906))

(assert (= b!374904 b!374905))

(declare-datatypes ((List!4202 0))(
  ( (Nil!4192) (Cons!4192 (h!9589 (_ BitVec 16)) (t!57454 List!4202)) )
))
(declare-datatypes ((TokenValue!831 0))(
  ( (FloatLiteralValue!1662 (text!6262 List!4202)) (TokenValueExt!830 (__x!3149 Int)) (Broken!4155 (value!27346 List!4202)) (Object!840) (End!831) (Def!831) (Underscore!831) (Match!831) (Else!831) (Error!831) (Case!831) (If!831) (Extends!831) (Abstract!831) (Class!831) (Val!831) (DelimiterValue!1662 (del!891 List!4202)) (KeywordValue!837 (value!27347 List!4202)) (CommentValue!1662 (value!27348 List!4202)) (WhitespaceValue!1662 (value!27349 List!4202)) (IndentationValue!831 (value!27350 List!4202)) (String!5234) (Int32!831) (Broken!4156 (value!27351 List!4202)) (Boolean!832) (Unit!6675) (OperatorValue!834 (op!891 List!4202)) (IdentifierValue!1662 (value!27352 List!4202)) (IdentifierValue!1663 (value!27353 List!4202)) (WhitespaceValue!1663 (value!27354 List!4202)) (True!1662) (False!1662) (Broken!4157 (value!27355 List!4202)) (Broken!4158 (value!27356 List!4202)) (True!1663) (RightBrace!831) (RightBracket!831) (Colon!831) (Null!831) (Comma!831) (LeftBracket!831) (False!1663) (LeftBrace!831) (ImaginaryLiteralValue!831 (text!6263 List!4202)) (StringLiteralValue!2493 (value!27357 List!4202)) (EOFValue!831 (value!27358 List!4202)) (IdentValue!831 (value!27359 List!4202)) (DelimiterValue!1663 (value!27360 List!4202)) (DedentValue!831 (value!27361 List!4202)) (NewLineValue!831 (value!27362 List!4202)) (IntegerValue!2493 (value!27363 (_ BitVec 32)) (text!6264 List!4202)) (IntegerValue!2494 (value!27364 Int) (text!6265 List!4202)) (Times!831) (Or!831) (Equal!831) (Minus!831) (Broken!4159 (value!27365 List!4202)) (And!831) (Div!831) (LessEqual!831) (Mod!831) (Concat!1864) (Not!831) (Plus!831) (SpaceValue!831 (value!27366 List!4202)) (IntegerValue!2495 (value!27367 Int) (text!6266 List!4202)) (StringLiteralValue!2494 (text!6267 List!4202)) (FloatLiteralValue!1663 (text!6268 List!4202)) (BytesLiteralValue!831 (value!27368 List!4202)) (CommentValue!1663 (value!27369 List!4202)) (StringLiteralValue!2495 (value!27370 List!4202)) (ErrorTokenValue!831 (msg!892 List!4202)) )
))
(declare-datatypes ((C!2988 0))(
  ( (C!2989 (val!1380 Int)) )
))
(declare-datatypes ((List!4203 0))(
  ( (Nil!4193) (Cons!4193 (h!9590 C!2988) (t!57455 List!4203)) )
))
(declare-datatypes ((IArray!2881 0))(
  ( (IArray!2882 (innerList!1498 List!4203)) )
))
(declare-datatypes ((Conc!1440 0))(
  ( (Node!1440 (left!3503 Conc!1440) (right!3833 Conc!1440) (csize!3110 Int) (cheight!1651 Int)) (Leaf!2184 (xs!4059 IArray!2881) (csize!3111 Int)) (Empty!1440) )
))
(declare-datatypes ((BalanceConc!2888 0))(
  ( (BalanceConc!2889 (c!73692 Conc!1440)) )
))
(declare-datatypes ((String!5235 0))(
  ( (String!5236 (value!27371 String)) )
))
(declare-datatypes ((TokenValueInjection!1434 0))(
  ( (TokenValueInjection!1435 (toValue!1592 Int) (toChars!1451 Int)) )
))
(declare-datatypes ((Regex!1033 0))(
  ( (ElementMatch!1033 (c!73693 C!2988)) (Concat!1865 (regOne!2578 Regex!1033) (regTwo!2578 Regex!1033)) (EmptyExpr!1033) (Star!1033 (reg!1362 Regex!1033)) (EmptyLang!1033) (Union!1033 (regOne!2579 Regex!1033) (regTwo!2579 Regex!1033)) )
))
(declare-datatypes ((Rule!1418 0))(
  ( (Rule!1419 (regex!809 Regex!1033) (tag!1043 String!5235) (isSeparator!809 Bool) (transformation!809 TokenValueInjection!1434)) )
))
(declare-datatypes ((List!4204 0))(
  ( (Nil!4194) (Cons!4194 (h!9591 Rule!1418) (t!57456 List!4204)) )
))
(declare-fun rules!1920 () List!4204)

(get-info :version)

(assert (= (and b!374871 ((_ is Cons!4194) rules!1920)) b!374904))

(declare-fun order!3531 () Int)

(declare-fun order!3529 () Int)

(declare-fun dynLambda!2403 (Int Int) Int)

(declare-fun dynLambda!2404 (Int Int) Int)

(assert (=> b!374906 (< (dynLambda!2403 order!3529 (toValue!1592 (transformation!809 (h!9591 rules!1920)))) (dynLambda!2404 order!3531 lambda!11678))))

(declare-fun order!3533 () Int)

(declare-fun dynLambda!2405 (Int Int) Int)

(assert (=> b!374906 (< (dynLambda!2405 order!3533 (toChars!1451 (transformation!809 (h!9591 rules!1920)))) (dynLambda!2404 order!3531 lambda!11678))))

(assert (=> b!374871 true))

(declare-fun b!374848 () Bool)

(declare-datatypes ((Unit!6676 0))(
  ( (Unit!6677) )
))
(declare-fun e!230570 () Unit!6676)

(declare-fun Unit!6678 () Unit!6676)

(assert (=> b!374848 (= e!230570 Unit!6678)))

(assert (=> b!374848 false))

(declare-fun b!374850 () Bool)

(declare-fun res!167926 () Bool)

(declare-fun e!230578 () Bool)

(assert (=> b!374850 (=> res!167926 e!230578)))

(declare-datatypes ((Token!1362 0))(
  ( (Token!1363 (value!27372 TokenValue!831) (rule!1454 Rule!1418) (size!3396 Int) (originalCharacters!852 List!4203)) )
))
(declare-datatypes ((List!4205 0))(
  ( (Nil!4195) (Cons!4195 (h!9592 Token!1362) (t!57457 List!4205)) )
))
(declare-fun tokens!465 () List!4205)

(declare-datatypes ((LexerInterface!695 0))(
  ( (LexerInterfaceExt!692 (__x!3150 Int)) (Lexer!693) )
))
(declare-fun thiss!17480 () LexerInterface!695)

(declare-fun rulesProduceIndividualToken!444 (LexerInterface!695 List!4204 Token!1362) Bool)

(assert (=> b!374850 (= res!167926 (not (rulesProduceIndividualToken!444 thiss!17480 rules!1920 (h!9592 tokens!465))))))

(declare-fun b!374851 () Bool)

(declare-fun res!167944 () Bool)

(declare-fun e!230587 () Bool)

(assert (=> b!374851 (=> (not res!167944) (not e!230587))))

(declare-datatypes ((IArray!2883 0))(
  ( (IArray!2884 (innerList!1499 List!4205)) )
))
(declare-datatypes ((Conc!1441 0))(
  ( (Node!1441 (left!3504 Conc!1441) (right!3834 Conc!1441) (csize!3112 Int) (cheight!1652 Int)) (Leaf!2185 (xs!4060 IArray!2883) (csize!3113 Int)) (Empty!1441) )
))
(declare-datatypes ((BalanceConc!2890 0))(
  ( (BalanceConc!2891 (c!73694 Conc!1441)) )
))
(declare-datatypes ((tuple2!4946 0))(
  ( (tuple2!4947 (_1!2689 BalanceConc!2890) (_2!2689 BalanceConc!2888)) )
))
(declare-fun lt!163193 () tuple2!4946)

(declare-fun lt!163203 () Token!1362)

(declare-fun apply!986 (BalanceConc!2890 Int) Token!1362)

(assert (=> b!374851 (= res!167944 (= (apply!986 (_1!2689 lt!163193) 0) lt!163203))))

(declare-fun b!374852 () Bool)

(declare-fun isEmpty!3010 (BalanceConc!2888) Bool)

(assert (=> b!374852 (= e!230587 (isEmpty!3010 (_2!2689 lt!163193)))))

(declare-fun b!374853 () Bool)

(declare-fun e!230569 () Bool)

(declare-fun separatorToken!170 () Token!1362)

(declare-fun lt!163183 () Rule!1418)

(assert (=> b!374853 (= e!230569 (= (rule!1454 separatorToken!170) lt!163183))))

(declare-fun b!374854 () Bool)

(declare-fun e!230572 () Bool)

(declare-fun tp!117233 () Bool)

(declare-fun e!230558 () Bool)

(declare-fun inv!5202 (String!5235) Bool)

(declare-fun inv!5205 (TokenValueInjection!1434) Bool)

(assert (=> b!374854 (= e!230572 (and tp!117233 (inv!5202 (tag!1043 (rule!1454 (h!9592 tokens!465)))) (inv!5205 (transformation!809 (rule!1454 (h!9592 tokens!465)))) e!230558))))

(declare-fun e!230577 () Bool)

(assert (=> b!374855 (= e!230577 (and tp!117235 tp!117234))))

(declare-fun b!374856 () Bool)

(declare-fun e!230591 () Bool)

(declare-fun lt!163178 () tuple2!4946)

(assert (=> b!374856 (= e!230591 (isEmpty!3010 (_2!2689 lt!163178)))))

(declare-fun b!374857 () Bool)

(declare-fun e!230580 () Bool)

(declare-fun e!230573 () Bool)

(declare-fun tp!117237 () Bool)

(assert (=> b!374857 (= e!230580 (and e!230573 tp!117237))))

(declare-fun b!374858 () Bool)

(declare-fun e!230582 () Bool)

(declare-fun e!230585 () Bool)

(assert (=> b!374858 (= e!230582 e!230585)))

(declare-fun res!167942 () Bool)

(assert (=> b!374858 (=> (not res!167942) (not e!230585))))

(declare-fun lt!163214 () BalanceConc!2890)

(declare-fun rulesProduceEachTokenIndividually!487 (LexerInterface!695 List!4204 BalanceConc!2890) Bool)

(assert (=> b!374858 (= res!167942 (rulesProduceEachTokenIndividually!487 thiss!17480 rules!1920 lt!163214))))

(declare-fun seqFromList!983 (List!4205) BalanceConc!2890)

(assert (=> b!374858 (= lt!163214 (seqFromList!983 tokens!465))))

(declare-fun b!374859 () Bool)

(declare-fun e!230583 () Bool)

(assert (=> b!374859 (= e!230583 e!230578)))

(declare-fun res!167924 () Bool)

(assert (=> b!374859 (=> res!167924 e!230578)))

(declare-fun lt!163205 () List!4203)

(declare-fun lt!163216 () List!4203)

(declare-fun lt!163209 () List!4203)

(assert (=> b!374859 (= res!167924 (or (not (= lt!163209 lt!163205)) (not (= lt!163205 lt!163216)) (not (= lt!163209 lt!163216))))))

(declare-fun printList!369 (LexerInterface!695 List!4205) List!4203)

(assert (=> b!374859 (= lt!163205 (printList!369 thiss!17480 (Cons!4195 (h!9592 tokens!465) Nil!4195)))))

(declare-fun lt!163173 () BalanceConc!2888)

(declare-fun list!1813 (BalanceConc!2888) List!4203)

(assert (=> b!374859 (= lt!163209 (list!1813 lt!163173))))

(declare-fun lt!163181 () BalanceConc!2890)

(declare-fun printTailRec!381 (LexerInterface!695 BalanceConc!2890 Int BalanceConc!2888) BalanceConc!2888)

(assert (=> b!374859 (= lt!163173 (printTailRec!381 thiss!17480 lt!163181 0 (BalanceConc!2889 Empty!1440)))))

(declare-fun print!420 (LexerInterface!695 BalanceConc!2890) BalanceConc!2888)

(assert (=> b!374859 (= lt!163173 (print!420 thiss!17480 lt!163181))))

(declare-fun singletonSeq!355 (Token!1362) BalanceConc!2890)

(assert (=> b!374859 (= lt!163181 (singletonSeq!355 (h!9592 tokens!465)))))

(declare-fun b!374860 () Bool)

(declare-fun e!230589 () Bool)

(declare-fun e!230566 () Bool)

(assert (=> b!374860 (= e!230589 e!230566)))

(declare-fun res!167922 () Bool)

(assert (=> b!374860 (=> res!167922 e!230566)))

(declare-fun lt!163172 () Bool)

(assert (=> b!374860 (= res!167922 (not lt!163172))))

(declare-fun e!230593 () Bool)

(assert (=> b!374860 e!230593))

(declare-fun res!167946 () Bool)

(assert (=> b!374860 (=> (not res!167946) (not e!230593))))

(declare-datatypes ((tuple2!4948 0))(
  ( (tuple2!4949 (_1!2690 Token!1362) (_2!2690 List!4203)) )
))
(declare-fun lt!163189 () tuple2!4948)

(assert (=> b!374860 (= res!167946 (= (_1!2690 lt!163189) (h!9592 tokens!465)))))

(declare-datatypes ((Option!1009 0))(
  ( (None!1008) (Some!1008 (v!15151 tuple2!4948)) )
))
(declare-fun lt!163215 () Option!1009)

(declare-fun get!1475 (Option!1009) tuple2!4948)

(assert (=> b!374860 (= lt!163189 (get!1475 lt!163215))))

(declare-fun isDefined!848 (Option!1009) Bool)

(assert (=> b!374860 (isDefined!848 lt!163215)))

(declare-fun maxPrefix!411 (LexerInterface!695 List!4204 List!4203) Option!1009)

(assert (=> b!374860 (= lt!163215 (maxPrefix!411 thiss!17480 rules!1920 lt!163216))))

(declare-fun e!230563 () Bool)

(declare-fun lt!163192 () List!4203)

(declare-fun lt!163196 () List!4203)

(declare-fun b!374861 () Bool)

(declare-fun ++!1174 (List!4203 List!4203) List!4203)

(assert (=> b!374861 (= e!230563 (not (= lt!163196 (++!1174 lt!163216 lt!163192))))))

(declare-fun b!374862 () Bool)

(declare-fun e!230562 () Bool)

(declare-fun lt!163198 () Option!1009)

(declare-fun head!1019 (List!4205) Token!1362)

(assert (=> b!374862 (= e!230562 (= (_1!2690 (get!1475 lt!163198)) (head!1019 tokens!465)))))

(declare-fun b!374863 () Bool)

(declare-fun e!230584 () Bool)

(declare-fun e!230568 () Bool)

(assert (=> b!374863 (= e!230584 (not e!230568))))

(declare-fun res!167932 () Bool)

(assert (=> b!374863 (=> res!167932 e!230568)))

(declare-fun printWithSeparatorTokenWhenNeededRec!368 (LexerInterface!695 List!4204 BalanceConc!2890 Token!1362 Int) BalanceConc!2888)

(assert (=> b!374863 (= res!167932 (not (= lt!163192 (list!1813 (printWithSeparatorTokenWhenNeededRec!368 thiss!17480 rules!1920 (seqFromList!983 (t!57457 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!163191 () List!4203)

(declare-fun lt!163180 () List!4203)

(assert (=> b!374863 (= lt!163191 lt!163180)))

(declare-fun lt!163187 () List!4203)

(assert (=> b!374863 (= lt!163180 (++!1174 lt!163216 lt!163187))))

(declare-fun lt!163184 () List!4203)

(assert (=> b!374863 (= lt!163191 (++!1174 (++!1174 lt!163216 lt!163184) lt!163192))))

(declare-fun lt!163182 () Unit!6676)

(declare-fun lemmaConcatAssociativity!528 (List!4203 List!4203 List!4203) Unit!6676)

(assert (=> b!374863 (= lt!163182 (lemmaConcatAssociativity!528 lt!163216 lt!163184 lt!163192))))

(declare-fun charsOf!452 (Token!1362) BalanceConc!2888)

(assert (=> b!374863 (= lt!163216 (list!1813 (charsOf!452 (h!9592 tokens!465))))))

(assert (=> b!374863 (= lt!163187 (++!1174 lt!163184 lt!163192))))

(declare-fun printWithSeparatorTokenWhenNeededList!376 (LexerInterface!695 List!4204 List!4205 Token!1362) List!4203)

(assert (=> b!374863 (= lt!163192 (printWithSeparatorTokenWhenNeededList!376 thiss!17480 rules!1920 (t!57457 tokens!465) separatorToken!170))))

(assert (=> b!374863 (= lt!163184 (list!1813 (charsOf!452 separatorToken!170)))))

(declare-fun tp!117231 () Bool)

(declare-fun b!374849 () Bool)

(declare-fun e!230579 () Bool)

(assert (=> b!374849 (= e!230573 (and tp!117231 (inv!5202 (tag!1043 (h!9591 rules!1920))) (inv!5205 (transformation!809 (h!9591 rules!1920))) e!230579))))

(declare-fun res!167951 () Bool)

(assert (=> start!37350 (=> (not res!167951) (not e!230582))))

(assert (=> start!37350 (= res!167951 ((_ is Lexer!693) thiss!17480))))

(assert (=> start!37350 e!230582))

(assert (=> start!37350 true))

(assert (=> start!37350 e!230580))

(declare-fun e!230564 () Bool)

(declare-fun inv!5206 (Token!1362) Bool)

(assert (=> start!37350 (and (inv!5206 separatorToken!170) e!230564)))

(declare-fun e!230586 () Bool)

(assert (=> start!37350 e!230586))

(declare-fun b!374864 () Bool)

(declare-fun res!167927 () Bool)

(declare-fun e!230581 () Bool)

(assert (=> b!374864 (=> res!167927 e!230581)))

(declare-fun contains!868 (List!4204 Rule!1418) Bool)

(assert (=> b!374864 (= res!167927 (not (contains!868 rules!1920 (rule!1454 separatorToken!170))))))

(declare-fun b!374865 () Bool)

(declare-fun Unit!6679 () Unit!6676)

(assert (=> b!374865 (= e!230570 Unit!6679)))

(declare-fun b!374866 () Bool)

(declare-fun res!167953 () Bool)

(assert (=> b!374866 (=> (not res!167953) (not e!230593))))

(declare-fun isEmpty!3011 (List!4203) Bool)

(assert (=> b!374866 (= res!167953 (isEmpty!3011 (_2!2690 lt!163189)))))

(declare-fun b!374867 () Bool)

(declare-fun res!167948 () Bool)

(assert (=> b!374867 (=> res!167948 e!230578)))

(declare-fun isEmpty!3012 (BalanceConc!2890) Bool)

(declare-fun lex!487 (LexerInterface!695 List!4204 BalanceConc!2888) tuple2!4946)

(declare-fun seqFromList!984 (List!4203) BalanceConc!2888)

(assert (=> b!374867 (= res!167948 (isEmpty!3012 (_1!2689 (lex!487 thiss!17480 rules!1920 (seqFromList!984 lt!163216)))))))

(declare-fun b!374868 () Bool)

(declare-fun res!167949 () Bool)

(assert (=> b!374868 (=> (not res!167949) (not e!230582))))

(declare-fun isEmpty!3013 (List!4204) Bool)

(assert (=> b!374868 (= res!167949 (not (isEmpty!3013 rules!1920)))))

(declare-fun res!167938 () Bool)

(assert (=> b!374869 (=> (not res!167938) (not e!230585))))

(declare-fun forall!1160 (List!4205 Int) Bool)

(assert (=> b!374869 (= res!167938 (forall!1160 tokens!465 lambda!11677))))

(declare-fun b!374870 () Bool)

(declare-fun res!167937 () Bool)

(assert (=> b!374870 (=> (not res!167937) (not e!230584))))

(declare-fun lt!163197 () List!4203)

(assert (=> b!374870 (= res!167937 (= (list!1813 (seqFromList!984 lt!163196)) lt!163197))))

(assert (=> b!374871 (= e!230578 e!230589)))

(declare-fun res!167943 () Bool)

(assert (=> b!374871 (=> res!167943 e!230589)))

(declare-datatypes ((tuple2!4950 0))(
  ( (tuple2!4951 (_1!2691 Token!1362) (_2!2691 BalanceConc!2888)) )
))
(declare-datatypes ((Option!1010 0))(
  ( (None!1009) (Some!1009 (v!15152 tuple2!4950)) )
))
(declare-fun isDefined!849 (Option!1010) Bool)

(declare-fun maxPrefixZipperSequence!374 (LexerInterface!695 List!4204 BalanceConc!2888) Option!1010)

(assert (=> b!374871 (= res!167943 (not (isDefined!849 (maxPrefixZipperSequence!374 thiss!17480 rules!1920 (seqFromList!984 (originalCharacters!852 (h!9592 tokens!465)))))))))

(declare-fun lt!163213 () Unit!6676)

(declare-fun forallContained!362 (List!4205 Int Token!1362) Unit!6676)

(assert (=> b!374871 (= lt!163213 (forallContained!362 tokens!465 lambda!11678 (h!9592 tokens!465)))))

(assert (=> b!374871 (= lt!163216 (originalCharacters!852 (h!9592 tokens!465)))))

(declare-fun b!374872 () Bool)

(declare-fun res!167935 () Bool)

(assert (=> b!374872 (=> (not res!167935) (not e!230585))))

(assert (=> b!374872 (= res!167935 (rulesProduceIndividualToken!444 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!374873 () Bool)

(declare-fun e!230565 () Bool)

(declare-fun lt!163204 () Rule!1418)

(assert (=> b!374873 (= e!230565 (= (rule!1454 lt!163203) lt!163204))))

(declare-fun e!230567 () Bool)

(declare-fun tp!117239 () Bool)

(declare-fun b!374874 () Bool)

(assert (=> b!374874 (= e!230586 (and (inv!5206 (h!9592 tokens!465)) e!230567 tp!117239))))

(declare-fun b!374875 () Bool)

(assert (=> b!374875 (= e!230585 e!230584)))

(declare-fun res!167939 () Bool)

(assert (=> b!374875 (=> (not res!167939) (not e!230584))))

(assert (=> b!374875 (= res!167939 (= lt!163196 lt!163197))))

(assert (=> b!374875 (= lt!163197 (list!1813 (printWithSeparatorTokenWhenNeededRec!368 thiss!17480 rules!1920 lt!163214 separatorToken!170 0)))))

(assert (=> b!374875 (= lt!163196 (printWithSeparatorTokenWhenNeededList!376 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!374876 () Bool)

(assert (=> b!374876 (= e!230566 e!230581)))

(declare-fun res!167923 () Bool)

(assert (=> b!374876 (=> res!167923 e!230581)))

(declare-fun contains!869 (List!4203 C!2988) Bool)

(declare-fun usedCharacters!110 (Regex!1033) List!4203)

(declare-fun head!1020 (List!4203) C!2988)

(assert (=> b!374876 (= res!167923 (not (contains!869 (usedCharacters!110 (regex!809 (rule!1454 separatorToken!170))) (head!1020 lt!163192))))))

(declare-fun lt!163174 () Unit!6676)

(declare-fun e!230557 () Unit!6676)

(assert (=> b!374876 (= lt!163174 e!230557)))

(declare-fun c!73690 () Bool)

(declare-fun lt!163185 () C!2988)

(assert (=> b!374876 (= c!73690 (not (contains!869 (usedCharacters!110 (regex!809 (rule!1454 lt!163203))) lt!163185)))))

(declare-fun lt!163211 () List!4203)

(assert (=> b!374876 (= lt!163185 (head!1020 lt!163211))))

(declare-fun e!230576 () Bool)

(assert (=> b!374876 e!230576))

(declare-fun res!167928 () Bool)

(assert (=> b!374876 (=> (not res!167928) (not e!230576))))

(declare-datatypes ((Option!1011 0))(
  ( (None!1010) (Some!1010 (v!15153 Rule!1418)) )
))
(declare-fun lt!163176 () Option!1011)

(declare-fun isDefined!850 (Option!1011) Bool)

(assert (=> b!374876 (= res!167928 (isDefined!850 lt!163176))))

(declare-fun getRuleFromTag!168 (LexerInterface!695 List!4204 String!5235) Option!1011)

(assert (=> b!374876 (= lt!163176 (getRuleFromTag!168 thiss!17480 rules!1920 (tag!1043 (rule!1454 lt!163203))))))

(declare-fun lt!163202 () Unit!6676)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!168 (LexerInterface!695 List!4204 List!4203 Token!1362) Unit!6676)

(assert (=> b!374876 (= lt!163202 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!168 thiss!17480 rules!1920 lt!163211 lt!163203))))

(assert (=> b!374876 (= lt!163211 (list!1813 (charsOf!452 lt!163203)))))

(declare-fun lt!163190 () Unit!6676)

(assert (=> b!374876 (= lt!163190 (forallContained!362 tokens!465 lambda!11678 lt!163203))))

(assert (=> b!374876 e!230587))

(declare-fun res!167940 () Bool)

(assert (=> b!374876 (=> (not res!167940) (not e!230587))))

(declare-fun size!3397 (BalanceConc!2890) Int)

(assert (=> b!374876 (= res!167940 (= (size!3397 (_1!2689 lt!163193)) 1))))

(declare-fun lt!163212 () BalanceConc!2888)

(assert (=> b!374876 (= lt!163193 (lex!487 thiss!17480 rules!1920 lt!163212))))

(declare-fun lt!163188 () BalanceConc!2890)

(assert (=> b!374876 (= lt!163212 (printTailRec!381 thiss!17480 lt!163188 0 (BalanceConc!2889 Empty!1440)))))

(assert (=> b!374876 (= lt!163212 (print!420 thiss!17480 lt!163188))))

(assert (=> b!374876 (= lt!163188 (singletonSeq!355 lt!163203))))

(declare-fun e!230560 () Bool)

(assert (=> b!374876 e!230560))

(declare-fun res!167929 () Bool)

(assert (=> b!374876 (=> (not res!167929) (not e!230560))))

(declare-fun lt!163194 () Option!1011)

(assert (=> b!374876 (= res!167929 (isDefined!850 lt!163194))))

(assert (=> b!374876 (= lt!163194 (getRuleFromTag!168 thiss!17480 rules!1920 (tag!1043 (rule!1454 separatorToken!170))))))

(declare-fun lt!163208 () Unit!6676)

(assert (=> b!374876 (= lt!163208 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!168 thiss!17480 rules!1920 lt!163184 separatorToken!170))))

(assert (=> b!374876 e!230591))

(declare-fun res!167945 () Bool)

(assert (=> b!374876 (=> (not res!167945) (not e!230591))))

(assert (=> b!374876 (= res!167945 (= (size!3397 (_1!2689 lt!163178)) 1))))

(declare-fun lt!163199 () BalanceConc!2888)

(assert (=> b!374876 (= lt!163178 (lex!487 thiss!17480 rules!1920 lt!163199))))

(declare-fun lt!163179 () BalanceConc!2890)

(assert (=> b!374876 (= lt!163199 (printTailRec!381 thiss!17480 lt!163179 0 (BalanceConc!2889 Empty!1440)))))

(assert (=> b!374876 (= lt!163199 (print!420 thiss!17480 lt!163179))))

(assert (=> b!374876 (= lt!163179 (singletonSeq!355 separatorToken!170))))

(assert (=> b!374876 (rulesProduceIndividualToken!444 thiss!17480 rules!1920 lt!163203)))

(declare-fun lt!163175 () Unit!6676)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!158 (LexerInterface!695 List!4204 List!4205 Token!1362) Unit!6676)

(assert (=> b!374876 (= lt!163175 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!158 thiss!17480 rules!1920 tokens!465 lt!163203))))

(assert (=> b!374876 (= lt!163203 (head!1019 (t!57457 tokens!465)))))

(declare-fun lt!163200 () Unit!6676)

(assert (=> b!374876 (= lt!163200 e!230570)))

(declare-fun c!73691 () Bool)

(declare-fun isEmpty!3014 (List!4205) Bool)

(assert (=> b!374876 (= c!73691 (isEmpty!3014 (t!57457 tokens!465)))))

(declare-fun lt!163206 () Option!1009)

(assert (=> b!374876 (= lt!163206 (maxPrefix!411 thiss!17480 rules!1920 lt!163187))))

(declare-fun lt!163201 () tuple2!4948)

(assert (=> b!374876 (= lt!163187 (_2!2690 lt!163201))))

(declare-fun lt!163210 () Unit!6676)

(declare-fun lemmaSamePrefixThenSameSuffix!254 (List!4203 List!4203 List!4203 List!4203 List!4203) Unit!6676)

(assert (=> b!374876 (= lt!163210 (lemmaSamePrefixThenSameSuffix!254 lt!163216 lt!163187 lt!163216 (_2!2690 lt!163201) lt!163196))))

(assert (=> b!374876 (= lt!163201 (get!1475 (maxPrefix!411 thiss!17480 rules!1920 lt!163196)))))

(declare-fun isPrefix!469 (List!4203 List!4203) Bool)

(assert (=> b!374876 (isPrefix!469 lt!163216 lt!163180)))

(declare-fun lt!163186 () Unit!6676)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!360 (List!4203 List!4203) Unit!6676)

(assert (=> b!374876 (= lt!163186 (lemmaConcatTwoListThenFirstIsPrefix!360 lt!163216 lt!163187))))

(declare-fun e!230561 () Bool)

(assert (=> b!374876 e!230561))

(declare-fun res!167954 () Bool)

(assert (=> b!374876 (=> res!167954 e!230561)))

(assert (=> b!374876 (= res!167954 (isEmpty!3014 tokens!465))))

(declare-fun lt!163177 () Unit!6676)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!216 (LexerInterface!695 List!4204 List!4205 Token!1362) Unit!6676)

(assert (=> b!374876 (= lt!163177 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!216 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!374877 () Bool)

(declare-fun res!167941 () Bool)

(assert (=> b!374877 (=> (not res!167941) (not e!230585))))

(assert (=> b!374877 (= res!167941 (isSeparator!809 (rule!1454 separatorToken!170)))))

(declare-fun b!374878 () Bool)

(assert (=> b!374878 (= e!230576 e!230565)))

(declare-fun res!167934 () Bool)

(assert (=> b!374878 (=> (not res!167934) (not e!230565))))

(declare-fun matchR!351 (Regex!1033 List!4203) Bool)

(assert (=> b!374878 (= res!167934 (matchR!351 (regex!809 lt!163204) lt!163211))))

(declare-fun get!1476 (Option!1011) Rule!1418)

(assert (=> b!374878 (= lt!163204 (get!1476 lt!163176))))

(declare-fun b!374879 () Bool)

(assert (=> b!374879 (= e!230581 true)))

(declare-fun lt!163195 () Bool)

(assert (=> b!374879 (= lt!163195 (contains!868 rules!1920 (rule!1454 lt!163203)))))

(declare-fun b!374880 () Bool)

(assert (=> b!374880 (= e!230561 e!230562)))

(declare-fun res!167936 () Bool)

(assert (=> b!374880 (=> (not res!167936) (not e!230562))))

(assert (=> b!374880 (= res!167936 (isDefined!848 lt!163198))))

(assert (=> b!374880 (= lt!163198 (maxPrefix!411 thiss!17480 rules!1920 lt!163196))))

(declare-fun b!374881 () Bool)

(declare-fun res!167955 () Bool)

(assert (=> b!374881 (=> (not res!167955) (not e!230585))))

(declare-fun sepAndNonSepRulesDisjointChars!398 (List!4204 List!4204) Bool)

(assert (=> b!374881 (= res!167955 (sepAndNonSepRulesDisjointChars!398 rules!1920 rules!1920))))

(declare-fun b!374882 () Bool)

(declare-fun res!167950 () Bool)

(assert (=> b!374882 (=> (not res!167950) (not e!230582))))

(declare-fun rulesInvariant!661 (LexerInterface!695 List!4204) Bool)

(assert (=> b!374882 (= res!167950 (rulesInvariant!661 thiss!17480 rules!1920))))

(declare-fun b!374883 () Bool)

(assert (=> b!374883 (= e!230560 e!230569)))

(declare-fun res!167925 () Bool)

(assert (=> b!374883 (=> (not res!167925) (not e!230569))))

(assert (=> b!374883 (= res!167925 (matchR!351 (regex!809 lt!163183) lt!163184))))

(assert (=> b!374883 (= lt!163183 (get!1476 lt!163194))))

(declare-fun b!374884 () Bool)

(declare-fun tp!117236 () Bool)

(declare-fun e!230588 () Bool)

(declare-fun inv!21 (TokenValue!831) Bool)

(assert (=> b!374884 (= e!230564 (and (inv!21 (value!27372 separatorToken!170)) e!230588 tp!117236))))

(declare-fun b!374885 () Bool)

(declare-fun res!167931 () Bool)

(assert (=> b!374885 (=> (not res!167931) (not e!230585))))

(assert (=> b!374885 (= res!167931 ((_ is Cons!4195) tokens!465))))

(declare-fun b!374886 () Bool)

(declare-fun e!230559 () Bool)

(assert (=> b!374886 (= e!230559 false)))

(declare-fun b!374887 () Bool)

(declare-fun res!167930 () Bool)

(assert (=> b!374887 (=> (not res!167930) (not e!230591))))

(assert (=> b!374887 (= res!167930 (= (apply!986 (_1!2689 lt!163178) 0) separatorToken!170))))

(assert (=> b!374888 (= e!230579 (and tp!117243 tp!117242))))

(assert (=> b!374889 (= e!230558 (and tp!117238 tp!117232))))

(declare-fun b!374890 () Bool)

(declare-fun Unit!6680 () Unit!6676)

(assert (=> b!374890 (= e!230557 Unit!6680)))

(declare-fun lt!163207 () Unit!6676)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!88 (Regex!1033 List!4203 C!2988) Unit!6676)

(assert (=> b!374890 (= lt!163207 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!88 (regex!809 (rule!1454 lt!163203)) lt!163211 lt!163185))))

(declare-fun res!167947 () Bool)

(assert (=> b!374890 (= res!167947 (not (matchR!351 (regex!809 (rule!1454 lt!163203)) lt!163211)))))

(assert (=> b!374890 (=> (not res!167947) (not e!230559))))

(assert (=> b!374890 e!230559))

(declare-fun b!374891 () Bool)

(assert (=> b!374891 (= e!230593 (matchR!351 (regex!809 (rule!1454 (h!9592 tokens!465))) lt!163216))))

(declare-fun b!374892 () Bool)

(declare-fun tp!117240 () Bool)

(assert (=> b!374892 (= e!230567 (and (inv!21 (value!27372 (h!9592 tokens!465))) e!230572 tp!117240))))

(declare-fun b!374893 () Bool)

(assert (=> b!374893 (= e!230568 e!230583)))

(declare-fun res!167952 () Bool)

(assert (=> b!374893 (=> res!167952 e!230583)))

(assert (=> b!374893 (= res!167952 e!230563)))

(declare-fun res!167933 () Bool)

(assert (=> b!374893 (=> (not res!167933) (not e!230563))))

(assert (=> b!374893 (= res!167933 (not lt!163172))))

(assert (=> b!374893 (= lt!163172 (= lt!163196 lt!163180))))

(declare-fun tp!117241 () Bool)

(declare-fun b!374894 () Bool)

(assert (=> b!374894 (= e!230588 (and tp!117241 (inv!5202 (tag!1043 (rule!1454 separatorToken!170))) (inv!5205 (transformation!809 (rule!1454 separatorToken!170))) e!230577))))

(declare-fun b!374895 () Bool)

(declare-fun Unit!6681 () Unit!6676)

(assert (=> b!374895 (= e!230557 Unit!6681)))

(assert (= (and start!37350 res!167951) b!374868))

(assert (= (and b!374868 res!167949) b!374882))

(assert (= (and b!374882 res!167950) b!374858))

(assert (= (and b!374858 res!167942) b!374872))

(assert (= (and b!374872 res!167935) b!374877))

(assert (= (and b!374877 res!167941) b!374869))

(assert (= (and b!374869 res!167938) b!374881))

(assert (= (and b!374881 res!167955) b!374885))

(assert (= (and b!374885 res!167931) b!374875))

(assert (= (and b!374875 res!167939) b!374870))

(assert (= (and b!374870 res!167937) b!374863))

(assert (= (and b!374863 (not res!167932)) b!374893))

(assert (= (and b!374893 res!167933) b!374861))

(assert (= (and b!374893 (not res!167952)) b!374859))

(assert (= (and b!374859 (not res!167924)) b!374850))

(assert (= (and b!374850 (not res!167926)) b!374867))

(assert (= (and b!374867 (not res!167948)) b!374871))

(assert (= (and b!374871 (not res!167943)) b!374860))

(assert (= (and b!374860 res!167946) b!374866))

(assert (= (and b!374866 res!167953) b!374891))

(assert (= (and b!374860 (not res!167922)) b!374876))

(assert (= (and b!374876 (not res!167954)) b!374880))

(assert (= (and b!374880 res!167936) b!374862))

(assert (= (and b!374876 c!73691) b!374848))

(assert (= (and b!374876 (not c!73691)) b!374865))

(assert (= (and b!374876 res!167945) b!374887))

(assert (= (and b!374887 res!167930) b!374856))

(assert (= (and b!374876 res!167929) b!374883))

(assert (= (and b!374883 res!167925) b!374853))

(assert (= (and b!374876 res!167940) b!374851))

(assert (= (and b!374851 res!167944) b!374852))

(assert (= (and b!374876 res!167928) b!374878))

(assert (= (and b!374878 res!167934) b!374873))

(assert (= (and b!374876 c!73690) b!374890))

(assert (= (and b!374876 (not c!73690)) b!374895))

(assert (= (and b!374890 res!167947) b!374886))

(assert (= (and b!374876 (not res!167923)) b!374864))

(assert (= (and b!374864 (not res!167927)) b!374879))

(assert (= b!374849 b!374888))

(assert (= b!374857 b!374849))

(assert (= (and start!37350 ((_ is Cons!4194) rules!1920)) b!374857))

(assert (= b!374894 b!374855))

(assert (= b!374884 b!374894))

(assert (= start!37350 b!374884))

(assert (= b!374854 b!374889))

(assert (= b!374892 b!374854))

(assert (= b!374874 b!374892))

(assert (= (and start!37350 ((_ is Cons!4195) tokens!465)) b!374874))

(declare-fun m!555927 () Bool)

(assert (=> b!374854 m!555927))

(declare-fun m!555929 () Bool)

(assert (=> b!374854 m!555929))

(declare-fun m!555931 () Bool)

(assert (=> b!374871 m!555931))

(assert (=> b!374871 m!555931))

(declare-fun m!555933 () Bool)

(assert (=> b!374871 m!555933))

(assert (=> b!374871 m!555933))

(declare-fun m!555935 () Bool)

(assert (=> b!374871 m!555935))

(declare-fun m!555937 () Bool)

(assert (=> b!374871 m!555937))

(declare-fun m!555939 () Bool)

(assert (=> b!374850 m!555939))

(declare-fun m!555941 () Bool)

(assert (=> b!374878 m!555941))

(declare-fun m!555943 () Bool)

(assert (=> b!374878 m!555943))

(declare-fun m!555945 () Bool)

(assert (=> b!374856 m!555945))

(declare-fun m!555947 () Bool)

(assert (=> b!374869 m!555947))

(declare-fun m!555949 () Bool)

(assert (=> start!37350 m!555949))

(declare-fun m!555951 () Bool)

(assert (=> b!374875 m!555951))

(assert (=> b!374875 m!555951))

(declare-fun m!555953 () Bool)

(assert (=> b!374875 m!555953))

(declare-fun m!555955 () Bool)

(assert (=> b!374875 m!555955))

(declare-fun m!555957 () Bool)

(assert (=> b!374892 m!555957))

(declare-fun m!555959 () Bool)

(assert (=> b!374859 m!555959))

(declare-fun m!555961 () Bool)

(assert (=> b!374859 m!555961))

(declare-fun m!555963 () Bool)

(assert (=> b!374859 m!555963))

(declare-fun m!555965 () Bool)

(assert (=> b!374859 m!555965))

(declare-fun m!555967 () Bool)

(assert (=> b!374859 m!555967))

(declare-fun m!555969 () Bool)

(assert (=> b!374861 m!555969))

(declare-fun m!555971 () Bool)

(assert (=> b!374891 m!555971))

(declare-fun m!555973 () Bool)

(assert (=> b!374860 m!555973))

(declare-fun m!555975 () Bool)

(assert (=> b!374860 m!555975))

(declare-fun m!555977 () Bool)

(assert (=> b!374860 m!555977))

(declare-fun m!555979 () Bool)

(assert (=> b!374876 m!555979))

(declare-fun m!555981 () Bool)

(assert (=> b!374876 m!555981))

(declare-fun m!555983 () Bool)

(assert (=> b!374876 m!555983))

(declare-fun m!555985 () Bool)

(assert (=> b!374876 m!555985))

(declare-fun m!555987 () Bool)

(assert (=> b!374876 m!555987))

(declare-fun m!555989 () Bool)

(assert (=> b!374876 m!555989))

(declare-fun m!555991 () Bool)

(assert (=> b!374876 m!555991))

(declare-fun m!555993 () Bool)

(assert (=> b!374876 m!555993))

(declare-fun m!555995 () Bool)

(assert (=> b!374876 m!555995))

(declare-fun m!555997 () Bool)

(assert (=> b!374876 m!555997))

(declare-fun m!555999 () Bool)

(assert (=> b!374876 m!555999))

(declare-fun m!556001 () Bool)

(assert (=> b!374876 m!556001))

(declare-fun m!556003 () Bool)

(assert (=> b!374876 m!556003))

(assert (=> b!374876 m!555997))

(declare-fun m!556005 () Bool)

(assert (=> b!374876 m!556005))

(declare-fun m!556007 () Bool)

(assert (=> b!374876 m!556007))

(declare-fun m!556009 () Bool)

(assert (=> b!374876 m!556009))

(assert (=> b!374876 m!555985))

(declare-fun m!556011 () Bool)

(assert (=> b!374876 m!556011))

(declare-fun m!556013 () Bool)

(assert (=> b!374876 m!556013))

(assert (=> b!374876 m!556001))

(declare-fun m!556015 () Bool)

(assert (=> b!374876 m!556015))

(declare-fun m!556017 () Bool)

(assert (=> b!374876 m!556017))

(declare-fun m!556019 () Bool)

(assert (=> b!374876 m!556019))

(declare-fun m!556021 () Bool)

(assert (=> b!374876 m!556021))

(declare-fun m!556023 () Bool)

(assert (=> b!374876 m!556023))

(declare-fun m!556025 () Bool)

(assert (=> b!374876 m!556025))

(declare-fun m!556027 () Bool)

(assert (=> b!374876 m!556027))

(declare-fun m!556029 () Bool)

(assert (=> b!374876 m!556029))

(declare-fun m!556031 () Bool)

(assert (=> b!374876 m!556031))

(declare-fun m!556033 () Bool)

(assert (=> b!374876 m!556033))

(declare-fun m!556035 () Bool)

(assert (=> b!374876 m!556035))

(assert (=> b!374876 m!556013))

(assert (=> b!374876 m!555979))

(declare-fun m!556037 () Bool)

(assert (=> b!374876 m!556037))

(declare-fun m!556039 () Bool)

(assert (=> b!374876 m!556039))

(declare-fun m!556041 () Bool)

(assert (=> b!374876 m!556041))

(declare-fun m!556043 () Bool)

(assert (=> b!374876 m!556043))

(declare-fun m!556045 () Bool)

(assert (=> b!374876 m!556045))

(declare-fun m!556047 () Bool)

(assert (=> b!374876 m!556047))

(declare-fun m!556049 () Bool)

(assert (=> b!374876 m!556049))

(declare-fun m!556051 () Bool)

(assert (=> b!374876 m!556051))

(declare-fun m!556053 () Bool)

(assert (=> b!374862 m!556053))

(declare-fun m!556055 () Bool)

(assert (=> b!374862 m!556055))

(declare-fun m!556057 () Bool)

(assert (=> b!374874 m!556057))

(declare-fun m!556059 () Bool)

(assert (=> b!374870 m!556059))

(assert (=> b!374870 m!556059))

(declare-fun m!556061 () Bool)

(assert (=> b!374870 m!556061))

(declare-fun m!556063 () Bool)

(assert (=> b!374882 m!556063))

(declare-fun m!556065 () Bool)

(assert (=> b!374879 m!556065))

(declare-fun m!556067 () Bool)

(assert (=> b!374868 m!556067))

(declare-fun m!556069 () Bool)

(assert (=> b!374863 m!556069))

(declare-fun m!556071 () Bool)

(assert (=> b!374863 m!556071))

(declare-fun m!556073 () Bool)

(assert (=> b!374863 m!556073))

(assert (=> b!374863 m!556069))

(declare-fun m!556075 () Bool)

(assert (=> b!374863 m!556075))

(declare-fun m!556077 () Bool)

(assert (=> b!374863 m!556077))

(declare-fun m!556079 () Bool)

(assert (=> b!374863 m!556079))

(declare-fun m!556081 () Bool)

(assert (=> b!374863 m!556081))

(declare-fun m!556083 () Bool)

(assert (=> b!374863 m!556083))

(assert (=> b!374863 m!556071))

(declare-fun m!556085 () Bool)

(assert (=> b!374863 m!556085))

(declare-fun m!556087 () Bool)

(assert (=> b!374863 m!556087))

(declare-fun m!556089 () Bool)

(assert (=> b!374863 m!556089))

(assert (=> b!374863 m!556077))

(assert (=> b!374863 m!556087))

(declare-fun m!556091 () Bool)

(assert (=> b!374863 m!556091))

(assert (=> b!374863 m!556085))

(declare-fun m!556093 () Bool)

(assert (=> b!374863 m!556093))

(declare-fun m!556095 () Bool)

(assert (=> b!374867 m!556095))

(assert (=> b!374867 m!556095))

(declare-fun m!556097 () Bool)

(assert (=> b!374867 m!556097))

(declare-fun m!556099 () Bool)

(assert (=> b!374867 m!556099))

(declare-fun m!556101 () Bool)

(assert (=> b!374866 m!556101))

(declare-fun m!556103 () Bool)

(assert (=> b!374884 m!556103))

(declare-fun m!556105 () Bool)

(assert (=> b!374887 m!556105))

(declare-fun m!556107 () Bool)

(assert (=> b!374890 m!556107))

(declare-fun m!556109 () Bool)

(assert (=> b!374890 m!556109))

(declare-fun m!556111 () Bool)

(assert (=> b!374881 m!556111))

(declare-fun m!556113 () Bool)

(assert (=> b!374880 m!556113))

(assert (=> b!374880 m!555997))

(declare-fun m!556115 () Bool)

(assert (=> b!374894 m!556115))

(declare-fun m!556117 () Bool)

(assert (=> b!374894 m!556117))

(declare-fun m!556119 () Bool)

(assert (=> b!374858 m!556119))

(declare-fun m!556121 () Bool)

(assert (=> b!374858 m!556121))

(declare-fun m!556123 () Bool)

(assert (=> b!374883 m!556123))

(declare-fun m!556125 () Bool)

(assert (=> b!374883 m!556125))

(declare-fun m!556127 () Bool)

(assert (=> b!374849 m!556127))

(declare-fun m!556129 () Bool)

(assert (=> b!374849 m!556129))

(declare-fun m!556131 () Bool)

(assert (=> b!374864 m!556131))

(declare-fun m!556133 () Bool)

(assert (=> b!374852 m!556133))

(declare-fun m!556135 () Bool)

(assert (=> b!374872 m!556135))

(declare-fun m!556137 () Bool)

(assert (=> b!374851 m!556137))

(check-sat (not start!37350) (not b!374894) (not b!374866) (not b!374856) (not b_next!11683) (not b!374890) (not b!374850) (not b!374860) (not b!374887) (not b_next!11675) (not b!374862) (not b!374859) (not b!374867) (not b!374882) (not b!374874) (not b!374861) (not b_next!11681) (not b!374880) (not b!374879) (not b!374851) (not b!374869) b_and!37605 (not b!374884) (not b!374878) (not b!374892) (not b_next!11673) (not b!374881) (not b!374852) (not b_next!11677) b_and!37609 (not b!374858) (not b!374863) (not b!374868) (not b!374904) b_and!37615 (not b!374871) (not b!374872) (not b!374875) (not b_next!11679) (not b!374870) (not b!374876) b_and!37613 (not b!374891) b_and!37607 (not b!374864) b_and!37611 (not b!374849) (not b!374854) (not b!374883) (not b!374857))
(check-sat (not b_next!11675) (not b_next!11681) (not b_next!11683) b_and!37605 (not b_next!11673) b_and!37615 (not b_next!11679) b_and!37613 b_and!37607 b_and!37611 (not b_next!11677) b_and!37609)
