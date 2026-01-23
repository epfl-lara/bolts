; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179218 () Bool)

(assert start!179218)

(declare-fun b!1812825 () Bool)

(declare-fun b_free!49943 () Bool)

(declare-fun b_next!50647 () Bool)

(assert (=> b!1812825 (= b_free!49943 (not b_next!50647))))

(declare-fun tp!512095 () Bool)

(declare-fun b_and!140011 () Bool)

(assert (=> b!1812825 (= tp!512095 b_and!140011)))

(declare-fun b_free!49945 () Bool)

(declare-fun b_next!50649 () Bool)

(assert (=> b!1812825 (= b_free!49945 (not b_next!50649))))

(declare-fun tp!512091 () Bool)

(declare-fun b_and!140013 () Bool)

(assert (=> b!1812825 (= tp!512091 b_and!140013)))

(declare-fun b!1812816 () Bool)

(declare-fun b_free!49947 () Bool)

(declare-fun b_next!50651 () Bool)

(assert (=> b!1812816 (= b_free!49947 (not b_next!50651))))

(declare-fun tp!512100 () Bool)

(declare-fun b_and!140015 () Bool)

(assert (=> b!1812816 (= tp!512100 b_and!140015)))

(declare-fun b_free!49949 () Bool)

(declare-fun b_next!50653 () Bool)

(assert (=> b!1812816 (= b_free!49949 (not b_next!50653))))

(declare-fun tp!512102 () Bool)

(declare-fun b_and!140017 () Bool)

(assert (=> b!1812816 (= tp!512102 b_and!140017)))

(declare-fun b!1812812 () Bool)

(declare-fun b_free!49951 () Bool)

(declare-fun b_next!50655 () Bool)

(assert (=> b!1812812 (= b_free!49951 (not b_next!50655))))

(declare-fun tp!512092 () Bool)

(declare-fun b_and!140019 () Bool)

(assert (=> b!1812812 (= tp!512092 b_and!140019)))

(declare-fun b_free!49953 () Bool)

(declare-fun b_next!50657 () Bool)

(assert (=> b!1812812 (= b_free!49953 (not b_next!50657))))

(declare-fun tp!512096 () Bool)

(declare-fun b_and!140021 () Bool)

(assert (=> b!1812812 (= tp!512096 b_and!140021)))

(declare-fun b!1812854 () Bool)

(declare-fun e!1158123 () Bool)

(assert (=> b!1812854 (= e!1158123 true)))

(declare-fun b!1812853 () Bool)

(declare-fun e!1158122 () Bool)

(assert (=> b!1812853 (= e!1158122 e!1158123)))

(declare-fun b!1812852 () Bool)

(declare-fun e!1158121 () Bool)

(assert (=> b!1812852 (= e!1158121 e!1158122)))

(declare-fun b!1812839 () Bool)

(assert (=> b!1812839 e!1158121))

(assert (= b!1812853 b!1812854))

(assert (= b!1812852 b!1812853))

(assert (= b!1812839 b!1812852))

(declare-fun order!12899 () Int)

(declare-fun order!12901 () Int)

(declare-fun lambda!71012 () Int)

(declare-datatypes ((List!19845 0))(
  ( (Nil!19775) (Cons!19775 (h!25176 (_ BitVec 16)) (t!169250 List!19845)) )
))
(declare-datatypes ((TokenValue!3641 0))(
  ( (FloatLiteralValue!7282 (text!25932 List!19845)) (TokenValueExt!3640 (__x!12584 Int)) (Broken!18205 (value!110850 List!19845)) (Object!3710) (End!3641) (Def!3641) (Underscore!3641) (Match!3641) (Else!3641) (Error!3641) (Case!3641) (If!3641) (Extends!3641) (Abstract!3641) (Class!3641) (Val!3641) (DelimiterValue!7282 (del!3701 List!19845)) (KeywordValue!3647 (value!110851 List!19845)) (CommentValue!7282 (value!110852 List!19845)) (WhitespaceValue!7282 (value!110853 List!19845)) (IndentationValue!3641 (value!110854 List!19845)) (String!22536) (Int32!3641) (Broken!18206 (value!110855 List!19845)) (Boolean!3642) (Unit!34394) (OperatorValue!3644 (op!3701 List!19845)) (IdentifierValue!7282 (value!110856 List!19845)) (IdentifierValue!7283 (value!110857 List!19845)) (WhitespaceValue!7283 (value!110858 List!19845)) (True!7282) (False!7282) (Broken!18207 (value!110859 List!19845)) (Broken!18208 (value!110860 List!19845)) (True!7283) (RightBrace!3641) (RightBracket!3641) (Colon!3641) (Null!3641) (Comma!3641) (LeftBracket!3641) (False!7283) (LeftBrace!3641) (ImaginaryLiteralValue!3641 (text!25933 List!19845)) (StringLiteralValue!10923 (value!110861 List!19845)) (EOFValue!3641 (value!110862 List!19845)) (IdentValue!3641 (value!110863 List!19845)) (DelimiterValue!7283 (value!110864 List!19845)) (DedentValue!3641 (value!110865 List!19845)) (NewLineValue!3641 (value!110866 List!19845)) (IntegerValue!10923 (value!110867 (_ BitVec 32)) (text!25934 List!19845)) (IntegerValue!10924 (value!110868 Int) (text!25935 List!19845)) (Times!3641) (Or!3641) (Equal!3641) (Minus!3641) (Broken!18209 (value!110869 List!19845)) (And!3641) (Div!3641) (LessEqual!3641) (Mod!3641) (Concat!8520) (Not!3641) (Plus!3641) (SpaceValue!3641 (value!110870 List!19845)) (IntegerValue!10925 (value!110871 Int) (text!25936 List!19845)) (StringLiteralValue!10924 (text!25937 List!19845)) (FloatLiteralValue!7283 (text!25938 List!19845)) (BytesLiteralValue!3641 (value!110872 List!19845)) (CommentValue!7283 (value!110873 List!19845)) (StringLiteralValue!10925 (value!110874 List!19845)) (ErrorTokenValue!3641 (msg!3702 List!19845)) )
))
(declare-datatypes ((C!9932 0))(
  ( (C!9933 (val!5562 Int)) )
))
(declare-datatypes ((List!19846 0))(
  ( (Nil!19776) (Cons!19776 (h!25177 C!9932) (t!169251 List!19846)) )
))
(declare-datatypes ((IArray!13163 0))(
  ( (IArray!13164 (innerList!6639 List!19846)) )
))
(declare-datatypes ((Conc!6579 0))(
  ( (Node!6579 (left!15868 Conc!6579) (right!16198 Conc!6579) (csize!13388 Int) (cheight!6790 Int)) (Leaf!9575 (xs!9455 IArray!13163) (csize!13389 Int)) (Empty!6579) )
))
(declare-datatypes ((BalanceConc!13102 0))(
  ( (BalanceConc!13103 (c!296134 Conc!6579)) )
))
(declare-datatypes ((TokenValueInjection!6942 0))(
  ( (TokenValueInjection!6943 (toValue!5082 Int) (toChars!4941 Int)) )
))
(declare-datatypes ((Regex!4879 0))(
  ( (ElementMatch!4879 (c!296135 C!9932)) (Concat!8521 (regOne!10270 Regex!4879) (regTwo!10270 Regex!4879)) (EmptyExpr!4879) (Star!4879 (reg!5208 Regex!4879)) (EmptyLang!4879) (Union!4879 (regOne!10271 Regex!4879) (regTwo!10271 Regex!4879)) )
))
(declare-datatypes ((String!22537 0))(
  ( (String!22538 (value!110875 String)) )
))
(declare-datatypes ((Rule!6902 0))(
  ( (Rule!6903 (regex!3551 Regex!4879) (tag!3961 String!22537) (isSeparator!3551 Bool) (transformation!3551 TokenValueInjection!6942)) )
))
(declare-datatypes ((Token!6668 0))(
  ( (Token!6669 (value!110876 TokenValue!3641) (rule!5657 Rule!6902) (size!15722 Int) (originalCharacters!4365 List!19846)) )
))
(declare-datatypes ((tuple2!19358 0))(
  ( (tuple2!19359 (_1!11081 Token!6668) (_2!11081 List!19846)) )
))
(declare-fun lt!703931 () tuple2!19358)

(declare-fun dynLambda!9833 (Int Int) Int)

(declare-fun dynLambda!9834 (Int Int) Int)

(assert (=> b!1812854 (< (dynLambda!9833 order!12899 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) (dynLambda!9834 order!12901 lambda!71012))))

(declare-fun order!12903 () Int)

(declare-fun dynLambda!9835 (Int Int) Int)

(assert (=> b!1812854 (< (dynLambda!9835 order!12903 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) (dynLambda!9834 order!12901 lambda!71012))))

(declare-fun b!1812801 () Bool)

(declare-fun e!1158084 () Bool)

(declare-fun lt!703934 () Rule!6902)

(assert (=> b!1812801 (= e!1158084 (= (rule!5657 (_1!11081 lt!703931)) lt!703934))))

(declare-fun e!1158114 () Bool)

(declare-fun token!523 () Token!6668)

(declare-fun b!1812802 () Bool)

(declare-fun tp!512097 () Bool)

(declare-fun e!1158097 () Bool)

(declare-fun inv!21 (TokenValue!3641) Bool)

(assert (=> b!1812802 (= e!1158114 (and (inv!21 (value!110876 token!523)) e!1158097 tp!512097))))

(declare-fun b!1812803 () Bool)

(declare-fun res!814948 () Bool)

(declare-fun e!1158094 () Bool)

(assert (=> b!1812803 (=> (not res!814948) (not e!1158094))))

(declare-fun lt!703905 () tuple2!19358)

(declare-fun isEmpty!12514 (List!19846) Bool)

(assert (=> b!1812803 (= res!814948 (isEmpty!12514 (_2!11081 lt!703905)))))

(declare-fun b!1812804 () Bool)

(declare-fun e!1158108 () Bool)

(declare-datatypes ((List!19847 0))(
  ( (Nil!19777) (Cons!19777 (h!25178 Rule!6902) (t!169252 List!19847)) )
))
(declare-fun rules!3447 () List!19847)

(declare-fun contains!3585 (List!19847 Rule!6902) Bool)

(assert (=> b!1812804 (= e!1158108 (contains!3585 rules!3447 (rule!5657 (_1!11081 lt!703931))))))

(declare-fun b!1812805 () Bool)

(declare-fun e!1158113 () Bool)

(declare-fun e!1158096 () Bool)

(assert (=> b!1812805 (= e!1158113 e!1158096)))

(declare-fun res!814933 () Bool)

(assert (=> b!1812805 (=> res!814933 e!1158096)))

(declare-fun lt!703925 () Int)

(declare-fun lt!703928 () Int)

(assert (=> b!1812805 (= res!814933 (not (= lt!703925 lt!703928)))))

(declare-datatypes ((Unit!34395 0))(
  ( (Unit!34396) )
))
(declare-fun lt!703902 () Unit!34395)

(declare-fun e!1158095 () Unit!34395)

(assert (=> b!1812805 (= lt!703902 e!1158095)))

(declare-fun c!296130 () Bool)

(assert (=> b!1812805 (= c!296130 (< lt!703925 lt!703928))))

(declare-fun b!1812806 () Bool)

(declare-fun e!1158085 () Bool)

(assert (=> b!1812806 (= e!1158085 false)))

(declare-fun b!1812807 () Bool)

(declare-fun e!1158102 () Bool)

(declare-fun e!1158103 () Bool)

(declare-fun tp!512099 () Bool)

(assert (=> b!1812807 (= e!1158102 (and e!1158103 tp!512099))))

(declare-fun b!1812808 () Bool)

(declare-fun res!814926 () Bool)

(assert (=> b!1812808 (=> (not res!814926) (not e!1158094))))

(declare-fun rule!422 () Rule!6902)

(assert (=> b!1812808 (= res!814926 (= (rule!5657 token!523) rule!422))))

(declare-fun b!1812809 () Bool)

(declare-fun res!814928 () Bool)

(declare-fun e!1158101 () Bool)

(assert (=> b!1812809 (=> res!814928 e!1158101)))

(declare-fun lt!703908 () BalanceConc!13102)

(declare-fun dynLambda!9836 (Int TokenValue!3641) BalanceConc!13102)

(assert (=> b!1812809 (= res!814928 (not (= lt!703908 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931))))))))

(declare-fun b!1812810 () Bool)

(declare-fun e!1158099 () Bool)

(declare-fun tp_is_empty!8001 () Bool)

(declare-fun tp!512093 () Bool)

(assert (=> b!1812810 (= e!1158099 (and tp_is_empty!8001 tp!512093))))

(declare-fun b!1812811 () Bool)

(declare-fun Unit!34397 () Unit!34395)

(assert (=> b!1812811 (= e!1158095 Unit!34397)))

(declare-fun lt!703900 () List!19846)

(declare-fun lt!703911 () Unit!34395)

(declare-fun lt!703945 () List!19846)

(declare-datatypes ((LexerInterface!3180 0))(
  ( (LexerInterfaceExt!3177 (__x!12585 Int)) (Lexer!3178) )
))
(declare-fun thiss!24550 () LexerInterface!3180)

(declare-fun lt!703906 () List!19846)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!260 (LexerInterface!3180 List!19847 Rule!6902 List!19846 List!19846 List!19846 Rule!6902) Unit!34395)

(assert (=> b!1812811 (= lt!703911 (lemmaMaxPrefixOutputsMaxPrefix!260 thiss!24550 rules!3447 (rule!5657 (_1!11081 lt!703931)) lt!703945 lt!703906 lt!703900 rule!422))))

(assert (=> b!1812811 false))

(declare-fun e!1158089 () Bool)

(assert (=> b!1812812 (= e!1158089 (and tp!512092 tp!512096))))

(declare-fun b!1812813 () Bool)

(declare-fun e!1158098 () Unit!34395)

(declare-fun Unit!34398 () Unit!34395)

(assert (=> b!1812813 (= e!1158098 Unit!34398)))

(declare-fun b!1812814 () Bool)

(declare-fun e!1158112 () Bool)

(assert (=> b!1812814 (= e!1158112 e!1158113)))

(declare-fun res!814944 () Bool)

(assert (=> b!1812814 (=> res!814944 e!1158113)))

(declare-fun lt!703939 () Bool)

(assert (=> b!1812814 (= res!814944 lt!703939)))

(declare-fun lt!703938 () Unit!34395)

(assert (=> b!1812814 (= lt!703938 e!1158098)))

(declare-fun c!296131 () Bool)

(assert (=> b!1812814 (= c!296131 lt!703939)))

(assert (=> b!1812814 (= lt!703939 (> lt!703925 lt!703928))))

(declare-fun lt!703917 () BalanceConc!13102)

(declare-fun size!15723 (BalanceConc!13102) Int)

(assert (=> b!1812814 (= lt!703928 (size!15723 lt!703917))))

(declare-fun lt!703927 () Regex!4879)

(declare-fun matchR!2352 (Regex!4879 List!19846) Bool)

(assert (=> b!1812814 (matchR!2352 lt!703927 lt!703900)))

(declare-fun lt!703926 () Unit!34395)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!258 (LexerInterface!3180 List!19847 List!19846 Token!6668 Rule!6902 List!19846) Unit!34395)

(assert (=> b!1812814 (= lt!703926 (lemmaMaxPrefixThenMatchesRulesRegex!258 thiss!24550 rules!3447 lt!703900 token!523 rule!422 Nil!19776))))

(declare-fun b!1812815 () Bool)

(declare-fun Unit!34399 () Unit!34395)

(assert (=> b!1812815 (= e!1158098 Unit!34399)))

(declare-fun lt!703920 () Unit!34395)

(assert (=> b!1812815 (= lt!703920 (lemmaMaxPrefixThenMatchesRulesRegex!258 thiss!24550 rules!3447 lt!703906 (_1!11081 lt!703931) (rule!5657 (_1!11081 lt!703931)) (_2!11081 lt!703931)))))

(assert (=> b!1812815 (matchR!2352 lt!703927 lt!703945)))

(declare-fun lt!703912 () List!19846)

(declare-fun getSuffix!958 (List!19846 List!19846) List!19846)

(assert (=> b!1812815 (= lt!703912 (getSuffix!958 lt!703906 lt!703900))))

(declare-fun suffix!1421 () List!19846)

(declare-fun lt!703918 () Unit!34395)

(declare-fun lemmaSamePrefixThenSameSuffix!902 (List!19846 List!19846 List!19846 List!19846 List!19846) Unit!34395)

(assert (=> b!1812815 (= lt!703918 (lemmaSamePrefixThenSameSuffix!902 lt!703900 suffix!1421 lt!703900 lt!703912 lt!703906))))

(assert (=> b!1812815 (= suffix!1421 lt!703912)))

(declare-fun lt!703907 () Unit!34395)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!327 (List!19846 List!19846) Unit!34395)

(assert (=> b!1812815 (= lt!703907 (lemmaAddHeadSuffixToPrefixStillPrefix!327 lt!703900 lt!703906))))

(declare-fun isPrefix!1791 (List!19846 List!19846) Bool)

(declare-fun ++!5381 (List!19846 List!19846) List!19846)

(declare-fun head!4214 (List!19846) C!9932)

(assert (=> b!1812815 (isPrefix!1791 (++!5381 lt!703900 (Cons!19776 (head!4214 lt!703912) Nil!19776)) lt!703906)))

(declare-fun lt!703930 () List!19846)

(declare-fun lt!703929 () Unit!34395)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!199 (List!19846 List!19846 List!19846) Unit!34395)

(assert (=> b!1812815 (= lt!703929 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!199 lt!703945 lt!703930 lt!703906))))

(assert (=> b!1812815 (isPrefix!1791 lt!703930 lt!703945)))

(declare-fun lt!703924 () Unit!34395)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!190 (Regex!4879 List!19846 List!19846) Unit!34395)

(assert (=> b!1812815 (= lt!703924 (lemmaNotPrefixMatchThenCannotMatchLonger!190 lt!703927 lt!703930 lt!703945))))

(assert (=> b!1812815 false))

(declare-fun e!1158088 () Bool)

(assert (=> b!1812816 (= e!1158088 (and tp!512100 tp!512102))))

(declare-fun b!1812817 () Bool)

(declare-fun res!814939 () Bool)

(declare-fun e!1158080 () Bool)

(assert (=> b!1812817 (=> (not res!814939) (not e!1158080))))

(declare-fun isEmpty!12515 (List!19847) Bool)

(assert (=> b!1812817 (= res!814939 (not (isEmpty!12515 rules!3447)))))

(declare-fun b!1812818 () Bool)

(declare-fun e!1158100 () Bool)

(assert (=> b!1812818 (= e!1158080 e!1158100)))

(declare-fun res!814938 () Bool)

(assert (=> b!1812818 (=> (not res!814938) (not e!1158100))))

(declare-datatypes ((Option!4128 0))(
  ( (None!4127) (Some!4127 (v!25646 tuple2!19358)) )
))
(declare-fun lt!703916 () Option!4128)

(declare-fun isDefined!3469 (Option!4128) Bool)

(assert (=> b!1812818 (= res!814938 (isDefined!3469 lt!703916))))

(declare-fun maxPrefix!1734 (LexerInterface!3180 List!19847 List!19846) Option!4128)

(assert (=> b!1812818 (= lt!703916 (maxPrefix!1734 thiss!24550 rules!3447 lt!703900))))

(declare-fun list!8051 (BalanceConc!13102) List!19846)

(assert (=> b!1812818 (= lt!703900 (list!8051 lt!703917))))

(declare-fun charsOf!2200 (Token!6668) BalanceConc!13102)

(assert (=> b!1812818 (= lt!703917 (charsOf!2200 token!523))))

(declare-fun b!1812819 () Bool)

(declare-fun res!814946 () Bool)

(declare-fun e!1158105 () Bool)

(assert (=> b!1812819 (=> res!814946 e!1158105)))

(assert (=> b!1812819 (= res!814946 (not (matchR!2352 (regex!3551 (rule!5657 (_1!11081 lt!703931))) lt!703945)))))

(declare-fun b!1812820 () Bool)

(declare-fun tp!512098 () Bool)

(declare-fun inv!25775 (String!22537) Bool)

(declare-fun inv!25780 (TokenValueInjection!6942) Bool)

(assert (=> b!1812820 (= e!1158097 (and tp!512098 (inv!25775 (tag!3961 (rule!5657 token!523))) (inv!25780 (transformation!3551 (rule!5657 token!523))) e!1158089))))

(declare-fun b!1812821 () Bool)

(declare-fun res!814940 () Bool)

(declare-fun e!1158086 () Bool)

(assert (=> b!1812821 (=> res!814940 e!1158086)))

(assert (=> b!1812821 (= res!814940 (isEmpty!12514 suffix!1421))))

(declare-fun res!814947 () Bool)

(assert (=> start!179218 (=> (not res!814947) (not e!1158080))))

(get-info :version)

(assert (=> start!179218 (= res!814947 ((_ is Lexer!3178) thiss!24550))))

(assert (=> start!179218 e!1158080))

(assert (=> start!179218 e!1158099))

(declare-fun e!1158083 () Bool)

(assert (=> start!179218 e!1158083))

(assert (=> start!179218 true))

(declare-fun inv!25781 (Token!6668) Bool)

(assert (=> start!179218 (and (inv!25781 token!523) e!1158114)))

(assert (=> start!179218 e!1158102))

(declare-fun b!1812822 () Bool)

(declare-fun e!1158081 () Bool)

(assert (=> b!1812822 (= e!1158081 e!1158112)))

(declare-fun res!814950 () Bool)

(assert (=> b!1812822 (=> res!814950 e!1158112)))

(declare-fun lt!703946 () Option!4128)

(declare-fun lt!703915 () List!19846)

(assert (=> b!1812822 (= res!814950 (or (not (= lt!703915 (_2!11081 lt!703931))) (not (= lt!703946 (Some!4127 (tuple2!19359 (_1!11081 lt!703931) lt!703915))))))))

(assert (=> b!1812822 (= (_2!11081 lt!703931) lt!703915)))

(declare-fun lt!703937 () Unit!34395)

(assert (=> b!1812822 (= lt!703937 (lemmaSamePrefixThenSameSuffix!902 lt!703945 (_2!11081 lt!703931) lt!703945 lt!703915 lt!703906))))

(assert (=> b!1812822 (= lt!703915 (getSuffix!958 lt!703906 lt!703945))))

(declare-fun lt!703932 () TokenValue!3641)

(declare-fun lt!703914 () Int)

(assert (=> b!1812822 (= lt!703946 (Some!4127 (tuple2!19359 (Token!6669 lt!703932 (rule!5657 (_1!11081 lt!703931)) lt!703914 lt!703945) (_2!11081 lt!703931))))))

(declare-fun maxPrefixOneRule!1103 (LexerInterface!3180 Rule!6902 List!19846) Option!4128)

(assert (=> b!1812822 (= lt!703946 (maxPrefixOneRule!1103 thiss!24550 (rule!5657 (_1!11081 lt!703931)) lt!703906))))

(declare-fun size!15724 (List!19846) Int)

(assert (=> b!1812822 (= lt!703914 (size!15724 lt!703945))))

(declare-fun apply!5351 (TokenValueInjection!6942 BalanceConc!13102) TokenValue!3641)

(declare-fun seqFromList!2520 (List!19846) BalanceConc!13102)

(assert (=> b!1812822 (= lt!703932 (apply!5351 (transformation!3551 (rule!5657 (_1!11081 lt!703931))) (seqFromList!2520 lt!703945)))))

(declare-fun lt!703936 () Unit!34395)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!481 (LexerInterface!3180 List!19847 List!19846 List!19846 List!19846 Rule!6902) Unit!34395)

(assert (=> b!1812822 (= lt!703936 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!481 thiss!24550 rules!3447 lt!703945 lt!703906 (_2!11081 lt!703931) (rule!5657 (_1!11081 lt!703931))))))

(declare-fun b!1812823 () Bool)

(assert (=> b!1812823 (= e!1158094 (not e!1158086))))

(declare-fun res!814930 () Bool)

(assert (=> b!1812823 (=> res!814930 e!1158086)))

(assert (=> b!1812823 (= res!814930 (not (matchR!2352 (regex!3551 rule!422) lt!703900)))))

(declare-fun ruleValid!1049 (LexerInterface!3180 Rule!6902) Bool)

(assert (=> b!1812823 (ruleValid!1049 thiss!24550 rule!422)))

(declare-fun lt!703935 () Unit!34395)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!572 (LexerInterface!3180 Rule!6902 List!19847) Unit!34395)

(assert (=> b!1812823 (= lt!703935 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!572 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1812824 () Bool)

(declare-fun e!1158091 () Unit!34395)

(declare-fun Unit!34400 () Unit!34395)

(assert (=> b!1812824 (= e!1158091 Unit!34400)))

(declare-fun lt!703904 () Unit!34395)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!172 (LexerInterface!3180 List!19847 Rule!6902 List!19846 List!19846 Rule!6902) Unit!34395)

(assert (=> b!1812824 (= lt!703904 (lemmaMaxPrefNoSmallerRuleMatches!172 thiss!24550 rules!3447 (rule!5657 (_1!11081 lt!703931)) lt!703945 lt!703906 (rule!5657 token!523)))))

(declare-fun res!814949 () Bool)

(assert (=> b!1812824 (= res!814949 (not (matchR!2352 (regex!3551 (rule!5657 token!523)) lt!703945)))))

(declare-fun e!1158106 () Bool)

(assert (=> b!1812824 (=> (not res!814949) (not e!1158106))))

(assert (=> b!1812824 e!1158106))

(declare-fun e!1158092 () Bool)

(assert (=> b!1812825 (= e!1158092 (and tp!512095 tp!512091))))

(declare-fun b!1812826 () Bool)

(assert (=> b!1812826 (= e!1158100 e!1158094)))

(declare-fun res!814925 () Bool)

(assert (=> b!1812826 (=> (not res!814925) (not e!1158094))))

(assert (=> b!1812826 (= res!814925 (= (_1!11081 lt!703905) token!523))))

(declare-fun get!6119 (Option!4128) tuple2!19358)

(assert (=> b!1812826 (= lt!703905 (get!6119 lt!703916))))

(declare-fun b!1812827 () Bool)

(declare-fun e!1158109 () Unit!34395)

(declare-fun Unit!34401 () Unit!34395)

(assert (=> b!1812827 (= e!1158109 Unit!34401)))

(declare-fun b!1812828 () Bool)

(declare-fun e!1158082 () Bool)

(assert (=> b!1812828 (= e!1158082 e!1158084)))

(declare-fun res!814936 () Bool)

(assert (=> b!1812828 (=> (not res!814936) (not e!1158084))))

(assert (=> b!1812828 (= res!814936 (matchR!2352 (regex!3551 lt!703934) (list!8051 (charsOf!2200 (_1!11081 lt!703931)))))))

(declare-datatypes ((Option!4129 0))(
  ( (None!4128) (Some!4128 (v!25647 Rule!6902)) )
))
(declare-fun lt!703940 () Option!4129)

(declare-fun get!6120 (Option!4129) Rule!6902)

(assert (=> b!1812828 (= lt!703934 (get!6120 lt!703940))))

(declare-fun b!1812829 () Bool)

(declare-fun Unit!34402 () Unit!34395)

(assert (=> b!1812829 (= e!1158109 Unit!34402)))

(declare-fun lt!703944 () Unit!34395)

(assert (=> b!1812829 (= lt!703944 (lemmaMaxPrefNoSmallerRuleMatches!172 thiss!24550 rules!3447 (rule!5657 token!523) lt!703900 lt!703900 (rule!5657 (_1!11081 lt!703931))))))

(declare-fun res!814929 () Bool)

(assert (=> b!1812829 (= res!814929 (not (matchR!2352 (regex!3551 (rule!5657 (_1!11081 lt!703931))) lt!703900)))))

(assert (=> b!1812829 (=> (not res!814929) (not e!1158085))))

(assert (=> b!1812829 e!1158085))

(declare-fun b!1812830 () Bool)

(declare-fun e!1158093 () Bool)

(assert (=> b!1812830 (= e!1158093 e!1158101)))

(declare-fun res!814932 () Bool)

(assert (=> b!1812830 (=> res!814932 e!1158101)))

(declare-fun dynLambda!9837 (Int BalanceConc!13102) TokenValue!3641)

(assert (=> b!1812830 (= res!814932 (not (= (list!8051 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908))) lt!703945)))))

(declare-fun lt!703942 () Unit!34395)

(declare-fun lemmaSemiInverse!689 (TokenValueInjection!6942 BalanceConc!13102) Unit!34395)

(assert (=> b!1812830 (= lt!703942 (lemmaSemiInverse!689 (transformation!3551 (rule!5657 (_1!11081 lt!703931))) lt!703908))))

(declare-fun b!1812831 () Bool)

(assert (=> b!1812831 (= e!1158106 false)))

(declare-fun b!1812832 () Bool)

(assert (=> b!1812832 (= e!1158101 e!1158081)))

(declare-fun res!814945 () Bool)

(assert (=> b!1812832 (=> res!814945 e!1158081)))

(declare-fun lt!703923 () Option!4128)

(declare-fun lt!703922 () TokenValue!3641)

(assert (=> b!1812832 (= res!814945 (not (= lt!703923 (Some!4127 (tuple2!19359 (Token!6669 lt!703922 (rule!5657 (_1!11081 lt!703931)) lt!703925 lt!703945) (_2!11081 lt!703931))))))))

(assert (=> b!1812832 (= lt!703925 (size!15723 lt!703908))))

(assert (=> b!1812832 (= lt!703922 (apply!5351 (transformation!3551 (rule!5657 (_1!11081 lt!703931))) lt!703908))))

(declare-fun lt!703921 () Unit!34395)

(declare-fun lemmaCharactersSize!609 (Token!6668) Unit!34395)

(assert (=> b!1812832 (= lt!703921 (lemmaCharactersSize!609 (_1!11081 lt!703931)))))

(declare-fun lt!703933 () Unit!34395)

(declare-fun lemmaEqSameImage!462 (TokenValueInjection!6942 BalanceConc!13102 BalanceConc!13102) Unit!34395)

(assert (=> b!1812832 (= lt!703933 (lemmaEqSameImage!462 (transformation!3551 (rule!5657 (_1!11081 lt!703931))) lt!703908 (seqFromList!2520 (originalCharacters!4365 (_1!11081 lt!703931)))))))

(declare-fun b!1812833 () Bool)

(declare-fun e!1158111 () Bool)

(assert (=> b!1812833 (= e!1158086 e!1158111)))

(declare-fun res!814934 () Bool)

(assert (=> b!1812833 (=> res!814934 e!1158111)))

(declare-fun prefixMatch!762 (Regex!4879 List!19846) Bool)

(assert (=> b!1812833 (= res!814934 (prefixMatch!762 lt!703927 lt!703930))))

(assert (=> b!1812833 (= lt!703930 (++!5381 lt!703900 (Cons!19776 (head!4214 suffix!1421) Nil!19776)))))

(declare-fun rulesRegex!907 (LexerInterface!3180 List!19847) Regex!4879)

(assert (=> b!1812833 (= lt!703927 (rulesRegex!907 thiss!24550 rules!3447))))

(declare-fun b!1812834 () Bool)

(declare-fun tp!512101 () Bool)

(assert (=> b!1812834 (= e!1158083 (and tp!512101 (inv!25775 (tag!3961 rule!422)) (inv!25780 (transformation!3551 rule!422)) e!1158092))))

(declare-fun b!1812835 () Bool)

(declare-fun Unit!34403 () Unit!34395)

(assert (=> b!1812835 (= e!1158095 Unit!34403)))

(declare-fun tp!512094 () Bool)

(declare-fun b!1812836 () Bool)

(assert (=> b!1812836 (= e!1158103 (and tp!512094 (inv!25775 (tag!3961 (h!25178 rules!3447))) (inv!25780 (transformation!3551 (h!25178 rules!3447))) e!1158088))))

(declare-fun b!1812837 () Bool)

(declare-fun res!814943 () Bool)

(assert (=> b!1812837 (=> (not res!814943) (not e!1158080))))

(declare-fun rulesInvariant!2849 (LexerInterface!3180 List!19847) Bool)

(assert (=> b!1812837 (= res!814943 (rulesInvariant!2849 thiss!24550 rules!3447))))

(declare-fun b!1812838 () Bool)

(declare-fun res!814941 () Bool)

(assert (=> b!1812838 (=> (not res!814941) (not e!1158080))))

(assert (=> b!1812838 (= res!814941 (contains!3585 rules!3447 rule!422))))

(assert (=> b!1812839 (= e!1158105 e!1158093)))

(declare-fun res!814935 () Bool)

(assert (=> b!1812839 (=> res!814935 e!1158093)))

(declare-fun Forall!918 (Int) Bool)

(assert (=> b!1812839 (= res!814935 (not (Forall!918 lambda!71012)))))

(declare-fun lt!703910 () Unit!34395)

(declare-fun lemmaInv!750 (TokenValueInjection!6942) Unit!34395)

(assert (=> b!1812839 (= lt!703910 (lemmaInv!750 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))))))

(declare-fun b!1812840 () Bool)

(assert (=> b!1812840 (= e!1158111 e!1158105)))

(declare-fun res!814937 () Bool)

(assert (=> b!1812840 (=> res!814937 e!1158105)))

(assert (=> b!1812840 (= res!814937 (not (isPrefix!1791 lt!703945 lt!703906)))))

(assert (=> b!1812840 (isPrefix!1791 lt!703945 (++!5381 lt!703945 (_2!11081 lt!703931)))))

(declare-fun lt!703943 () Unit!34395)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1300 (List!19846 List!19846) Unit!34395)

(assert (=> b!1812840 (= lt!703943 (lemmaConcatTwoListThenFirstIsPrefix!1300 lt!703945 (_2!11081 lt!703931)))))

(assert (=> b!1812840 (= lt!703945 (list!8051 lt!703908))))

(assert (=> b!1812840 (= lt!703908 (charsOf!2200 (_1!11081 lt!703931)))))

(assert (=> b!1812840 e!1158082))

(declare-fun res!814942 () Bool)

(assert (=> b!1812840 (=> (not res!814942) (not e!1158082))))

(declare-fun isDefined!3470 (Option!4129) Bool)

(assert (=> b!1812840 (= res!814942 (isDefined!3470 lt!703940))))

(declare-fun getRuleFromTag!599 (LexerInterface!3180 List!19847 String!22537) Option!4129)

(assert (=> b!1812840 (= lt!703940 (getRuleFromTag!599 thiss!24550 rules!3447 (tag!3961 (rule!5657 (_1!11081 lt!703931)))))))

(declare-fun lt!703941 () Unit!34395)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!599 (LexerInterface!3180 List!19847 List!19846 Token!6668) Unit!34395)

(assert (=> b!1812840 (= lt!703941 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!599 thiss!24550 rules!3447 lt!703906 (_1!11081 lt!703931)))))

(assert (=> b!1812840 (= lt!703931 (get!6119 lt!703923))))

(declare-fun lt!703909 () Unit!34395)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!702 (LexerInterface!3180 List!19847 List!19846 List!19846) Unit!34395)

(assert (=> b!1812840 (= lt!703909 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!702 thiss!24550 rules!3447 lt!703900 suffix!1421))))

(assert (=> b!1812840 (= lt!703923 (maxPrefix!1734 thiss!24550 rules!3447 lt!703906))))

(assert (=> b!1812840 (isPrefix!1791 lt!703900 lt!703906)))

(declare-fun lt!703899 () Unit!34395)

(assert (=> b!1812840 (= lt!703899 (lemmaConcatTwoListThenFirstIsPrefix!1300 lt!703900 suffix!1421))))

(assert (=> b!1812840 (= lt!703906 (++!5381 lt!703900 suffix!1421))))

(declare-fun b!1812841 () Bool)

(declare-fun e!1158090 () Bool)

(assert (=> b!1812841 (= e!1158090 e!1158108)))

(declare-fun res!814927 () Bool)

(assert (=> b!1812841 (=> res!814927 e!1158108)))

(declare-fun lt!703919 () Int)

(declare-fun lt!703948 () Int)

(assert (=> b!1812841 (= res!814927 (not (= lt!703919 lt!703948)))))

(declare-fun lt!703901 () Unit!34395)

(assert (=> b!1812841 (= lt!703901 e!1158109)))

(declare-fun c!296132 () Bool)

(assert (=> b!1812841 (= c!296132 (< lt!703919 lt!703948))))

(declare-fun lt!703947 () Unit!34395)

(assert (=> b!1812841 (= lt!703947 e!1158091)))

(declare-fun c!296133 () Bool)

(assert (=> b!1812841 (= c!296133 (< lt!703948 lt!703919))))

(declare-fun getIndex!216 (List!19847 Rule!6902) Int)

(assert (=> b!1812841 (= lt!703919 (getIndex!216 rules!3447 (rule!5657 (_1!11081 lt!703931))))))

(assert (=> b!1812841 (= lt!703948 (getIndex!216 rules!3447 (rule!5657 token!523)))))

(declare-fun b!1812842 () Bool)

(declare-fun Unit!34404 () Unit!34395)

(assert (=> b!1812842 (= e!1158091 Unit!34404)))

(declare-fun b!1812843 () Bool)

(assert (=> b!1812843 (= e!1158096 e!1158090)))

(declare-fun res!814931 () Bool)

(assert (=> b!1812843 (=> res!814931 e!1158090)))

(assert (=> b!1812843 (= res!814931 (= (rule!5657 (_1!11081 lt!703931)) (rule!5657 token!523)))))

(assert (=> b!1812843 (= suffix!1421 (_2!11081 lt!703931))))

(declare-fun lt!703913 () Unit!34395)

(assert (=> b!1812843 (= lt!703913 (lemmaSamePrefixThenSameSuffix!902 lt!703900 suffix!1421 lt!703900 (_2!11081 lt!703931) lt!703906))))

(assert (=> b!1812843 (= lt!703945 lt!703900)))

(declare-fun lt!703903 () Unit!34395)

(declare-fun lemmaIsPrefixSameLengthThenSameList!287 (List!19846 List!19846 List!19846) Unit!34395)

(assert (=> b!1812843 (= lt!703903 (lemmaIsPrefixSameLengthThenSameList!287 lt!703945 lt!703900 lt!703906))))

(assert (= (and start!179218 res!814947) b!1812817))

(assert (= (and b!1812817 res!814939) b!1812837))

(assert (= (and b!1812837 res!814943) b!1812838))

(assert (= (and b!1812838 res!814941) b!1812818))

(assert (= (and b!1812818 res!814938) b!1812826))

(assert (= (and b!1812826 res!814925) b!1812803))

(assert (= (and b!1812803 res!814948) b!1812808))

(assert (= (and b!1812808 res!814926) b!1812823))

(assert (= (and b!1812823 (not res!814930)) b!1812821))

(assert (= (and b!1812821 (not res!814940)) b!1812833))

(assert (= (and b!1812833 (not res!814934)) b!1812840))

(assert (= (and b!1812840 res!814942) b!1812828))

(assert (= (and b!1812828 res!814936) b!1812801))

(assert (= (and b!1812840 (not res!814937)) b!1812819))

(assert (= (and b!1812819 (not res!814946)) b!1812839))

(assert (= (and b!1812839 (not res!814935)) b!1812830))

(assert (= (and b!1812830 (not res!814932)) b!1812809))

(assert (= (and b!1812809 (not res!814928)) b!1812832))

(assert (= (and b!1812832 (not res!814945)) b!1812822))

(assert (= (and b!1812822 (not res!814950)) b!1812814))

(assert (= (and b!1812814 c!296131) b!1812815))

(assert (= (and b!1812814 (not c!296131)) b!1812813))

(assert (= (and b!1812814 (not res!814944)) b!1812805))

(assert (= (and b!1812805 c!296130) b!1812811))

(assert (= (and b!1812805 (not c!296130)) b!1812835))

(assert (= (and b!1812805 (not res!814933)) b!1812843))

(assert (= (and b!1812843 (not res!814931)) b!1812841))

(assert (= (and b!1812841 c!296133) b!1812824))

(assert (= (and b!1812841 (not c!296133)) b!1812842))

(assert (= (and b!1812824 res!814949) b!1812831))

(assert (= (and b!1812841 c!296132) b!1812829))

(assert (= (and b!1812841 (not c!296132)) b!1812827))

(assert (= (and b!1812829 res!814929) b!1812806))

(assert (= (and b!1812841 (not res!814927)) b!1812804))

(assert (= (and start!179218 ((_ is Cons!19776) suffix!1421)) b!1812810))

(assert (= b!1812834 b!1812825))

(assert (= start!179218 b!1812834))

(assert (= b!1812820 b!1812812))

(assert (= b!1812802 b!1812820))

(assert (= start!179218 b!1812802))

(assert (= b!1812836 b!1812816))

(assert (= b!1812807 b!1812836))

(assert (= (and start!179218 ((_ is Cons!19777) rules!3447)) b!1812807))

(declare-fun b_lambda!59763 () Bool)

(assert (=> (not b_lambda!59763) (not b!1812809)))

(declare-fun t!169233 () Bool)

(declare-fun tb!110779 () Bool)

(assert (=> (and b!1812825 (= (toChars!4941 (transformation!3551 rule!422)) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169233) tb!110779))

(declare-fun b!1812859 () Bool)

(declare-fun e!1158126 () Bool)

(declare-fun tp!512105 () Bool)

(declare-fun inv!25782 (Conc!6579) Bool)

(assert (=> b!1812859 (= e!1158126 (and (inv!25782 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931))))) tp!512105))))

(declare-fun result!133022 () Bool)

(declare-fun inv!25783 (BalanceConc!13102) Bool)

(assert (=> tb!110779 (= result!133022 (and (inv!25783 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931)))) e!1158126))))

(assert (= tb!110779 b!1812859))

(declare-fun m!2241897 () Bool)

(assert (=> b!1812859 m!2241897))

(declare-fun m!2241899 () Bool)

(assert (=> tb!110779 m!2241899))

(assert (=> b!1812809 t!169233))

(declare-fun b_and!140023 () Bool)

(assert (= b_and!140013 (and (=> t!169233 result!133022) b_and!140023)))

(declare-fun t!169235 () Bool)

(declare-fun tb!110781 () Bool)

(assert (=> (and b!1812816 (= (toChars!4941 (transformation!3551 (h!25178 rules!3447))) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169235) tb!110781))

(declare-fun result!133026 () Bool)

(assert (= result!133026 result!133022))

(assert (=> b!1812809 t!169235))

(declare-fun b_and!140025 () Bool)

(assert (= b_and!140017 (and (=> t!169235 result!133026) b_and!140025)))

(declare-fun tb!110783 () Bool)

(declare-fun t!169237 () Bool)

(assert (=> (and b!1812812 (= (toChars!4941 (transformation!3551 (rule!5657 token!523))) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169237) tb!110783))

(declare-fun result!133028 () Bool)

(assert (= result!133028 result!133022))

(assert (=> b!1812809 t!169237))

(declare-fun b_and!140027 () Bool)

(assert (= b_and!140021 (and (=> t!169237 result!133028) b_and!140027)))

(declare-fun b_lambda!59765 () Bool)

(assert (=> (not b_lambda!59765) (not b!1812830)))

(declare-fun tb!110785 () Bool)

(declare-fun t!169239 () Bool)

(assert (=> (and b!1812825 (= (toChars!4941 (transformation!3551 rule!422)) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169239) tb!110785))

(declare-fun e!1158127 () Bool)

(declare-fun tp!512106 () Bool)

(declare-fun b!1812860 () Bool)

(assert (=> b!1812860 (= e!1158127 (and (inv!25782 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908)))) tp!512106))))

(declare-fun result!133030 () Bool)

(assert (=> tb!110785 (= result!133030 (and (inv!25783 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908))) e!1158127))))

(assert (= tb!110785 b!1812860))

(declare-fun m!2241901 () Bool)

(assert (=> b!1812860 m!2241901))

(declare-fun m!2241903 () Bool)

(assert (=> tb!110785 m!2241903))

(assert (=> b!1812830 t!169239))

(declare-fun b_and!140029 () Bool)

(assert (= b_and!140023 (and (=> t!169239 result!133030) b_and!140029)))

(declare-fun tb!110787 () Bool)

(declare-fun t!169241 () Bool)

(assert (=> (and b!1812816 (= (toChars!4941 (transformation!3551 (h!25178 rules!3447))) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169241) tb!110787))

(declare-fun result!133032 () Bool)

(assert (= result!133032 result!133030))

(assert (=> b!1812830 t!169241))

(declare-fun b_and!140031 () Bool)

(assert (= b_and!140025 (and (=> t!169241 result!133032) b_and!140031)))

(declare-fun t!169243 () Bool)

(declare-fun tb!110789 () Bool)

(assert (=> (and b!1812812 (= (toChars!4941 (transformation!3551 (rule!5657 token!523))) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169243) tb!110789))

(declare-fun result!133034 () Bool)

(assert (= result!133034 result!133030))

(assert (=> b!1812830 t!169243))

(declare-fun b_and!140033 () Bool)

(assert (= b_and!140027 (and (=> t!169243 result!133034) b_and!140033)))

(declare-fun b_lambda!59767 () Bool)

(assert (=> (not b_lambda!59767) (not b!1812830)))

(declare-fun t!169245 () Bool)

(declare-fun tb!110791 () Bool)

(assert (=> (and b!1812825 (= (toValue!5082 (transformation!3551 rule!422)) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169245) tb!110791))

(declare-fun result!133036 () Bool)

(assert (=> tb!110791 (= result!133036 (inv!21 (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908)))))

(declare-fun m!2241905 () Bool)

(assert (=> tb!110791 m!2241905))

(assert (=> b!1812830 t!169245))

(declare-fun b_and!140035 () Bool)

(assert (= b_and!140011 (and (=> t!169245 result!133036) b_and!140035)))

(declare-fun tb!110793 () Bool)

(declare-fun t!169247 () Bool)

(assert (=> (and b!1812816 (= (toValue!5082 (transformation!3551 (h!25178 rules!3447))) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169247) tb!110793))

(declare-fun result!133040 () Bool)

(assert (= result!133040 result!133036))

(assert (=> b!1812830 t!169247))

(declare-fun b_and!140037 () Bool)

(assert (= b_and!140015 (and (=> t!169247 result!133040) b_and!140037)))

(declare-fun tb!110795 () Bool)

(declare-fun t!169249 () Bool)

(assert (=> (and b!1812812 (= (toValue!5082 (transformation!3551 (rule!5657 token!523))) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169249) tb!110795))

(declare-fun result!133042 () Bool)

(assert (= result!133042 result!133036))

(assert (=> b!1812830 t!169249))

(declare-fun b_and!140039 () Bool)

(assert (= b_and!140019 (and (=> t!169249 result!133042) b_and!140039)))

(declare-fun m!2241907 () Bool)

(assert (=> b!1812817 m!2241907))

(declare-fun m!2241909 () Bool)

(assert (=> b!1812821 m!2241909))

(declare-fun m!2241911 () Bool)

(assert (=> b!1812833 m!2241911))

(declare-fun m!2241913 () Bool)

(assert (=> b!1812833 m!2241913))

(declare-fun m!2241915 () Bool)

(assert (=> b!1812833 m!2241915))

(declare-fun m!2241917 () Bool)

(assert (=> b!1812833 m!2241917))

(declare-fun m!2241919 () Bool)

(assert (=> b!1812815 m!2241919))

(declare-fun m!2241921 () Bool)

(assert (=> b!1812815 m!2241921))

(declare-fun m!2241923 () Bool)

(assert (=> b!1812815 m!2241923))

(declare-fun m!2241925 () Bool)

(assert (=> b!1812815 m!2241925))

(assert (=> b!1812815 m!2241921))

(declare-fun m!2241927 () Bool)

(assert (=> b!1812815 m!2241927))

(declare-fun m!2241929 () Bool)

(assert (=> b!1812815 m!2241929))

(declare-fun m!2241931 () Bool)

(assert (=> b!1812815 m!2241931))

(declare-fun m!2241933 () Bool)

(assert (=> b!1812815 m!2241933))

(declare-fun m!2241935 () Bool)

(assert (=> b!1812815 m!2241935))

(declare-fun m!2241937 () Bool)

(assert (=> b!1812815 m!2241937))

(declare-fun m!2241939 () Bool)

(assert (=> b!1812815 m!2241939))

(declare-fun m!2241941 () Bool)

(assert (=> b!1812822 m!2241941))

(declare-fun m!2241943 () Bool)

(assert (=> b!1812822 m!2241943))

(declare-fun m!2241945 () Bool)

(assert (=> b!1812822 m!2241945))

(declare-fun m!2241947 () Bool)

(assert (=> b!1812822 m!2241947))

(assert (=> b!1812822 m!2241941))

(declare-fun m!2241949 () Bool)

(assert (=> b!1812822 m!2241949))

(declare-fun m!2241951 () Bool)

(assert (=> b!1812822 m!2241951))

(declare-fun m!2241953 () Bool)

(assert (=> b!1812822 m!2241953))

(declare-fun m!2241955 () Bool)

(assert (=> b!1812836 m!2241955))

(declare-fun m!2241957 () Bool)

(assert (=> b!1812836 m!2241957))

(declare-fun m!2241959 () Bool)

(assert (=> b!1812809 m!2241959))

(declare-fun m!2241961 () Bool)

(assert (=> b!1812803 m!2241961))

(declare-fun m!2241963 () Bool)

(assert (=> b!1812840 m!2241963))

(declare-fun m!2241965 () Bool)

(assert (=> b!1812840 m!2241965))

(declare-fun m!2241967 () Bool)

(assert (=> b!1812840 m!2241967))

(declare-fun m!2241969 () Bool)

(assert (=> b!1812840 m!2241969))

(declare-fun m!2241971 () Bool)

(assert (=> b!1812840 m!2241971))

(declare-fun m!2241973 () Bool)

(assert (=> b!1812840 m!2241973))

(declare-fun m!2241975 () Bool)

(assert (=> b!1812840 m!2241975))

(declare-fun m!2241977 () Bool)

(assert (=> b!1812840 m!2241977))

(declare-fun m!2241979 () Bool)

(assert (=> b!1812840 m!2241979))

(declare-fun m!2241981 () Bool)

(assert (=> b!1812840 m!2241981))

(declare-fun m!2241983 () Bool)

(assert (=> b!1812840 m!2241983))

(declare-fun m!2241985 () Bool)

(assert (=> b!1812840 m!2241985))

(declare-fun m!2241987 () Bool)

(assert (=> b!1812840 m!2241987))

(declare-fun m!2241989 () Bool)

(assert (=> b!1812840 m!2241989))

(declare-fun m!2241991 () Bool)

(assert (=> b!1812840 m!2241991))

(assert (=> b!1812840 m!2241989))

(declare-fun m!2241993 () Bool)

(assert (=> b!1812824 m!2241993))

(declare-fun m!2241995 () Bool)

(assert (=> b!1812824 m!2241995))

(declare-fun m!2241997 () Bool)

(assert (=> b!1812818 m!2241997))

(declare-fun m!2241999 () Bool)

(assert (=> b!1812818 m!2241999))

(declare-fun m!2242001 () Bool)

(assert (=> b!1812818 m!2242001))

(declare-fun m!2242003 () Bool)

(assert (=> b!1812818 m!2242003))

(declare-fun m!2242005 () Bool)

(assert (=> b!1812804 m!2242005))

(declare-fun m!2242007 () Bool)

(assert (=> b!1812841 m!2242007))

(declare-fun m!2242009 () Bool)

(assert (=> b!1812841 m!2242009))

(assert (=> b!1812828 m!2241973))

(assert (=> b!1812828 m!2241973))

(declare-fun m!2242011 () Bool)

(assert (=> b!1812828 m!2242011))

(assert (=> b!1812828 m!2242011))

(declare-fun m!2242013 () Bool)

(assert (=> b!1812828 m!2242013))

(declare-fun m!2242015 () Bool)

(assert (=> b!1812828 m!2242015))

(declare-fun m!2242017 () Bool)

(assert (=> b!1812814 m!2242017))

(declare-fun m!2242019 () Bool)

(assert (=> b!1812814 m!2242019))

(declare-fun m!2242021 () Bool)

(assert (=> b!1812814 m!2242021))

(declare-fun m!2242023 () Bool)

(assert (=> b!1812830 m!2242023))

(assert (=> b!1812830 m!2242023))

(declare-fun m!2242025 () Bool)

(assert (=> b!1812830 m!2242025))

(assert (=> b!1812830 m!2242025))

(declare-fun m!2242027 () Bool)

(assert (=> b!1812830 m!2242027))

(declare-fun m!2242029 () Bool)

(assert (=> b!1812830 m!2242029))

(declare-fun m!2242031 () Bool)

(assert (=> b!1812826 m!2242031))

(declare-fun m!2242033 () Bool)

(assert (=> b!1812837 m!2242033))

(declare-fun m!2242035 () Bool)

(assert (=> b!1812834 m!2242035))

(declare-fun m!2242037 () Bool)

(assert (=> b!1812834 m!2242037))

(declare-fun m!2242039 () Bool)

(assert (=> b!1812820 m!2242039))

(declare-fun m!2242041 () Bool)

(assert (=> b!1812820 m!2242041))

(declare-fun m!2242043 () Bool)

(assert (=> b!1812819 m!2242043))

(declare-fun m!2242045 () Bool)

(assert (=> b!1812832 m!2242045))

(declare-fun m!2242047 () Bool)

(assert (=> b!1812832 m!2242047))

(declare-fun m!2242049 () Bool)

(assert (=> b!1812832 m!2242049))

(assert (=> b!1812832 m!2242049))

(declare-fun m!2242051 () Bool)

(assert (=> b!1812832 m!2242051))

(declare-fun m!2242053 () Bool)

(assert (=> b!1812832 m!2242053))

(declare-fun m!2242055 () Bool)

(assert (=> b!1812843 m!2242055))

(declare-fun m!2242057 () Bool)

(assert (=> b!1812843 m!2242057))

(declare-fun m!2242059 () Bool)

(assert (=> b!1812802 m!2242059))

(declare-fun m!2242061 () Bool)

(assert (=> b!1812823 m!2242061))

(declare-fun m!2242063 () Bool)

(assert (=> b!1812823 m!2242063))

(declare-fun m!2242065 () Bool)

(assert (=> b!1812823 m!2242065))

(declare-fun m!2242067 () Bool)

(assert (=> b!1812839 m!2242067))

(declare-fun m!2242069 () Bool)

(assert (=> b!1812839 m!2242069))

(declare-fun m!2242071 () Bool)

(assert (=> start!179218 m!2242071))

(declare-fun m!2242073 () Bool)

(assert (=> b!1812829 m!2242073))

(declare-fun m!2242075 () Bool)

(assert (=> b!1812829 m!2242075))

(declare-fun m!2242077 () Bool)

(assert (=> b!1812811 m!2242077))

(declare-fun m!2242079 () Bool)

(assert (=> b!1812838 m!2242079))

(check-sat b_and!140031 (not b!1812832) (not b_lambda!59763) (not b_next!50655) (not b!1812811) (not b!1812820) (not b!1812824) (not b_next!50657) (not start!179218) (not b!1812843) (not b!1812823) (not b!1812822) (not b!1812833) (not b!1812802) (not b_lambda!59767) (not tb!110785) (not b_next!50653) (not b_next!50647) (not b!1812819) (not b!1812829) (not b!1812834) (not b!1812807) (not b!1812840) (not b!1812814) b_and!140035 b_and!140029 (not b!1812818) (not b!1812860) (not tb!110779) (not b!1812815) (not b!1812821) b_and!140033 b_and!140039 (not b_next!50649) (not b!1812830) (not b_lambda!59765) (not b!1812837) (not b!1812836) (not b_next!50651) (not b!1812810) (not tb!110791) (not b!1812803) (not b!1812839) (not b!1812841) tp_is_empty!8001 (not b!1812804) (not b!1812817) b_and!140037 (not b!1812828) (not b!1812859) (not b!1812826) (not b!1812838))
(check-sat (not b_next!50657) b_and!140031 (not b_next!50653) (not b_next!50647) b_and!140035 (not b_next!50655) b_and!140029 (not b_next!50649) (not b_next!50651) b_and!140037 b_and!140033 b_and!140039)
(get-model)

(declare-fun b!1812942 () Bool)

(declare-fun e!1158180 () Bool)

(declare-fun e!1158179 () Bool)

(assert (=> b!1812942 (= e!1158180 e!1158179)))

(declare-fun c!296155 () Bool)

(assert (=> b!1812942 (= c!296155 ((_ is IntegerValue!10924) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908)))))

(declare-fun b!1812943 () Bool)

(declare-fun inv!17 (TokenValue!3641) Bool)

(assert (=> b!1812943 (= e!1158179 (inv!17 (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908)))))

(declare-fun b!1812944 () Bool)

(declare-fun res!814992 () Bool)

(declare-fun e!1158181 () Bool)

(assert (=> b!1812944 (=> res!814992 e!1158181)))

(assert (=> b!1812944 (= res!814992 (not ((_ is IntegerValue!10925) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908))))))

(assert (=> b!1812944 (= e!1158179 e!1158181)))

(declare-fun d!556248 () Bool)

(declare-fun c!296156 () Bool)

(assert (=> d!556248 (= c!296156 ((_ is IntegerValue!10923) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908)))))

(assert (=> d!556248 (= (inv!21 (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908)) e!1158180)))

(declare-fun b!1812945 () Bool)

(declare-fun inv!16 (TokenValue!3641) Bool)

(assert (=> b!1812945 (= e!1158180 (inv!16 (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908)))))

(declare-fun b!1812946 () Bool)

(declare-fun inv!15 (TokenValue!3641) Bool)

(assert (=> b!1812946 (= e!1158181 (inv!15 (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908)))))

(assert (= (and d!556248 c!296156) b!1812945))

(assert (= (and d!556248 (not c!296156)) b!1812942))

(assert (= (and b!1812942 c!296155) b!1812943))

(assert (= (and b!1812942 (not c!296155)) b!1812944))

(assert (= (and b!1812944 (not res!814992)) b!1812946))

(declare-fun m!2242125 () Bool)

(assert (=> b!1812943 m!2242125))

(declare-fun m!2242127 () Bool)

(assert (=> b!1812945 m!2242127))

(declare-fun m!2242129 () Bool)

(assert (=> b!1812946 m!2242129))

(assert (=> tb!110791 d!556248))

(declare-fun d!556262 () Bool)

(assert (=> d!556262 (= (inv!25775 (tag!3961 rule!422)) (= (mod (str.len (value!110875 (tag!3961 rule!422))) 2) 0))))

(assert (=> b!1812834 d!556262))

(declare-fun d!556264 () Bool)

(declare-fun res!814995 () Bool)

(declare-fun e!1158184 () Bool)

(assert (=> d!556264 (=> (not res!814995) (not e!1158184))))

(declare-fun semiInverseModEq!1420 (Int Int) Bool)

(assert (=> d!556264 (= res!814995 (semiInverseModEq!1420 (toChars!4941 (transformation!3551 rule!422)) (toValue!5082 (transformation!3551 rule!422))))))

(assert (=> d!556264 (= (inv!25780 (transformation!3551 rule!422)) e!1158184)))

(declare-fun b!1812949 () Bool)

(declare-fun equivClasses!1361 (Int Int) Bool)

(assert (=> b!1812949 (= e!1158184 (equivClasses!1361 (toChars!4941 (transformation!3551 rule!422)) (toValue!5082 (transformation!3551 rule!422))))))

(assert (= (and d!556264 res!814995) b!1812949))

(declare-fun m!2242131 () Bool)

(assert (=> d!556264 m!2242131))

(declare-fun m!2242133 () Bool)

(assert (=> b!1812949 m!2242133))

(assert (=> b!1812834 d!556264))

(declare-fun d!556266 () Bool)

(declare-fun lt!703970 () Int)

(assert (=> d!556266 (= lt!703970 (size!15724 (list!8051 lt!703917)))))

(declare-fun size!15725 (Conc!6579) Int)

(assert (=> d!556266 (= lt!703970 (size!15725 (c!296134 lt!703917)))))

(assert (=> d!556266 (= (size!15723 lt!703917) lt!703970)))

(declare-fun bs!407053 () Bool)

(assert (= bs!407053 d!556266))

(assert (=> bs!407053 m!2242001))

(assert (=> bs!407053 m!2242001))

(declare-fun m!2242141 () Bool)

(assert (=> bs!407053 m!2242141))

(declare-fun m!2242143 () Bool)

(assert (=> bs!407053 m!2242143))

(assert (=> b!1812814 d!556266))

(declare-fun b!1812985 () Bool)

(declare-fun e!1158205 () Bool)

(assert (=> b!1812985 (= e!1158205 (not (= (head!4214 lt!703900) (c!296135 lt!703927))))))

(declare-fun b!1812986 () Bool)

(declare-fun e!1158203 () Bool)

(assert (=> b!1812986 (= e!1158203 e!1158205)))

(declare-fun res!815019 () Bool)

(assert (=> b!1812986 (=> res!815019 e!1158205)))

(declare-fun call!114146 () Bool)

(assert (=> b!1812986 (= res!815019 call!114146)))

(declare-fun b!1812987 () Bool)

(declare-fun res!815013 () Bool)

(assert (=> b!1812987 (=> res!815013 e!1158205)))

(declare-fun tail!2683 (List!19846) List!19846)

(assert (=> b!1812987 (= res!815013 (not (isEmpty!12514 (tail!2683 lt!703900))))))

(declare-fun b!1812988 () Bool)

(declare-fun e!1158204 () Bool)

(declare-fun derivativeStep!1274 (Regex!4879 C!9932) Regex!4879)

(assert (=> b!1812988 (= e!1158204 (matchR!2352 (derivativeStep!1274 lt!703927 (head!4214 lt!703900)) (tail!2683 lt!703900)))))

(declare-fun bm!114141 () Bool)

(assert (=> bm!114141 (= call!114146 (isEmpty!12514 lt!703900))))

(declare-fun b!1812989 () Bool)

(declare-fun e!1158206 () Bool)

(declare-fun lt!703976 () Bool)

(assert (=> b!1812989 (= e!1158206 (= lt!703976 call!114146))))

(declare-fun b!1812990 () Bool)

(declare-fun e!1158207 () Bool)

(assert (=> b!1812990 (= e!1158206 e!1158207)))

(declare-fun c!296167 () Bool)

(assert (=> b!1812990 (= c!296167 ((_ is EmptyLang!4879) lt!703927))))

(declare-fun b!1812991 () Bool)

(declare-fun nullable!1505 (Regex!4879) Bool)

(assert (=> b!1812991 (= e!1158204 (nullable!1505 lt!703927))))

(declare-fun b!1812984 () Bool)

(declare-fun res!815016 () Bool)

(declare-fun e!1158209 () Bool)

(assert (=> b!1812984 (=> (not res!815016) (not e!1158209))))

(assert (=> b!1812984 (= res!815016 (isEmpty!12514 (tail!2683 lt!703900)))))

(declare-fun d!556272 () Bool)

(assert (=> d!556272 e!1158206))

(declare-fun c!296168 () Bool)

(assert (=> d!556272 (= c!296168 ((_ is EmptyExpr!4879) lt!703927))))

(assert (=> d!556272 (= lt!703976 e!1158204)))

(declare-fun c!296166 () Bool)

(assert (=> d!556272 (= c!296166 (isEmpty!12514 lt!703900))))

(declare-fun validRegex!1979 (Regex!4879) Bool)

(assert (=> d!556272 (validRegex!1979 lt!703927)))

(assert (=> d!556272 (= (matchR!2352 lt!703927 lt!703900) lt!703976)))

(declare-fun b!1812992 () Bool)

(assert (=> b!1812992 (= e!1158209 (= (head!4214 lt!703900) (c!296135 lt!703927)))))

(declare-fun b!1812993 () Bool)

(declare-fun e!1158208 () Bool)

(assert (=> b!1812993 (= e!1158208 e!1158203)))

(declare-fun res!815017 () Bool)

(assert (=> b!1812993 (=> (not res!815017) (not e!1158203))))

(assert (=> b!1812993 (= res!815017 (not lt!703976))))

(declare-fun b!1812994 () Bool)

(assert (=> b!1812994 (= e!1158207 (not lt!703976))))

(declare-fun b!1812995 () Bool)

(declare-fun res!815014 () Bool)

(assert (=> b!1812995 (=> res!815014 e!1158208)))

(assert (=> b!1812995 (= res!815014 e!1158209)))

(declare-fun res!815018 () Bool)

(assert (=> b!1812995 (=> (not res!815018) (not e!1158209))))

(assert (=> b!1812995 (= res!815018 lt!703976)))

(declare-fun b!1812996 () Bool)

(declare-fun res!815012 () Bool)

(assert (=> b!1812996 (=> (not res!815012) (not e!1158209))))

(assert (=> b!1812996 (= res!815012 (not call!114146))))

(declare-fun b!1812997 () Bool)

(declare-fun res!815015 () Bool)

(assert (=> b!1812997 (=> res!815015 e!1158208)))

(assert (=> b!1812997 (= res!815015 (not ((_ is ElementMatch!4879) lt!703927)))))

(assert (=> b!1812997 (= e!1158207 e!1158208)))

(assert (= (and d!556272 c!296166) b!1812991))

(assert (= (and d!556272 (not c!296166)) b!1812988))

(assert (= (and d!556272 c!296168) b!1812989))

(assert (= (and d!556272 (not c!296168)) b!1812990))

(assert (= (and b!1812990 c!296167) b!1812994))

(assert (= (and b!1812990 (not c!296167)) b!1812997))

(assert (= (and b!1812997 (not res!815015)) b!1812995))

(assert (= (and b!1812995 res!815018) b!1812996))

(assert (= (and b!1812996 res!815012) b!1812984))

(assert (= (and b!1812984 res!815016) b!1812992))

(assert (= (and b!1812995 (not res!815014)) b!1812993))

(assert (= (and b!1812993 res!815017) b!1812986))

(assert (= (and b!1812986 (not res!815019)) b!1812987))

(assert (= (and b!1812987 (not res!815013)) b!1812985))

(assert (= (or b!1812989 b!1812986 b!1812996) bm!114141))

(declare-fun m!2242155 () Bool)

(assert (=> d!556272 m!2242155))

(declare-fun m!2242157 () Bool)

(assert (=> d!556272 m!2242157))

(declare-fun m!2242159 () Bool)

(assert (=> b!1812988 m!2242159))

(assert (=> b!1812988 m!2242159))

(declare-fun m!2242161 () Bool)

(assert (=> b!1812988 m!2242161))

(declare-fun m!2242163 () Bool)

(assert (=> b!1812988 m!2242163))

(assert (=> b!1812988 m!2242161))

(assert (=> b!1812988 m!2242163))

(declare-fun m!2242165 () Bool)

(assert (=> b!1812988 m!2242165))

(assert (=> bm!114141 m!2242155))

(assert (=> b!1812987 m!2242163))

(assert (=> b!1812987 m!2242163))

(declare-fun m!2242167 () Bool)

(assert (=> b!1812987 m!2242167))

(declare-fun m!2242169 () Bool)

(assert (=> b!1812991 m!2242169))

(assert (=> b!1812985 m!2242159))

(assert (=> b!1812992 m!2242159))

(assert (=> b!1812984 m!2242163))

(assert (=> b!1812984 m!2242163))

(assert (=> b!1812984 m!2242167))

(assert (=> b!1812814 d!556272))

(declare-fun d!556278 () Bool)

(assert (=> d!556278 (matchR!2352 (rulesRegex!907 thiss!24550 rules!3447) (list!8051 (charsOf!2200 token!523)))))

(declare-fun lt!703979 () Unit!34395)

(declare-fun choose!11400 (LexerInterface!3180 List!19847 List!19846 Token!6668 Rule!6902 List!19846) Unit!34395)

(assert (=> d!556278 (= lt!703979 (choose!11400 thiss!24550 rules!3447 lt!703900 token!523 rule!422 Nil!19776))))

(assert (=> d!556278 (not (isEmpty!12515 rules!3447))))

(assert (=> d!556278 (= (lemmaMaxPrefixThenMatchesRulesRegex!258 thiss!24550 rules!3447 lt!703900 token!523 rule!422 Nil!19776) lt!703979)))

(declare-fun bs!407055 () Bool)

(assert (= bs!407055 d!556278))

(assert (=> bs!407055 m!2241917))

(assert (=> bs!407055 m!2241907))

(assert (=> bs!407055 m!2241917))

(declare-fun m!2242171 () Bool)

(assert (=> bs!407055 m!2242171))

(declare-fun m!2242173 () Bool)

(assert (=> bs!407055 m!2242173))

(declare-fun m!2242175 () Bool)

(assert (=> bs!407055 m!2242175))

(assert (=> bs!407055 m!2242003))

(assert (=> bs!407055 m!2242003))

(assert (=> bs!407055 m!2242171))

(assert (=> b!1812814 d!556278))

(declare-fun d!556280 () Bool)

(declare-fun fromListB!1154 (List!19846) BalanceConc!13102)

(assert (=> d!556280 (= (seqFromList!2520 (originalCharacters!4365 (_1!11081 lt!703931))) (fromListB!1154 (originalCharacters!4365 (_1!11081 lt!703931))))))

(declare-fun bs!407056 () Bool)

(assert (= bs!407056 d!556280))

(declare-fun m!2242177 () Bool)

(assert (=> bs!407056 m!2242177))

(assert (=> b!1812832 d!556280))

(declare-fun d!556282 () Bool)

(assert (=> d!556282 (= (apply!5351 (transformation!3551 (rule!5657 (_1!11081 lt!703931))) lt!703908) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908))))

(declare-fun b_lambda!59771 () Bool)

(assert (=> (not b_lambda!59771) (not d!556282)))

(assert (=> d!556282 t!169245))

(declare-fun b_and!140047 () Bool)

(assert (= b_and!140035 (and (=> t!169245 result!133036) b_and!140047)))

(assert (=> d!556282 t!169247))

(declare-fun b_and!140049 () Bool)

(assert (= b_and!140037 (and (=> t!169247 result!133040) b_and!140049)))

(assert (=> d!556282 t!169249))

(declare-fun b_and!140051 () Bool)

(assert (= b_and!140039 (and (=> t!169249 result!133042) b_and!140051)))

(assert (=> d!556282 m!2242023))

(assert (=> b!1812832 d!556282))

(declare-fun d!556284 () Bool)

(assert (=> d!556284 (= (size!15722 (_1!11081 lt!703931)) (size!15724 (originalCharacters!4365 (_1!11081 lt!703931))))))

(declare-fun Unit!34406 () Unit!34395)

(assert (=> d!556284 (= (lemmaCharactersSize!609 (_1!11081 lt!703931)) Unit!34406)))

(declare-fun bs!407057 () Bool)

(assert (= bs!407057 d!556284))

(declare-fun m!2242179 () Bool)

(assert (=> bs!407057 m!2242179))

(assert (=> b!1812832 d!556284))

(declare-fun d!556286 () Bool)

(declare-fun lt!703980 () Int)

(assert (=> d!556286 (= lt!703980 (size!15724 (list!8051 lt!703908)))))

(assert (=> d!556286 (= lt!703980 (size!15725 (c!296134 lt!703908)))))

(assert (=> d!556286 (= (size!15723 lt!703908) lt!703980)))

(declare-fun bs!407058 () Bool)

(assert (= bs!407058 d!556286))

(assert (=> bs!407058 m!2241985))

(assert (=> bs!407058 m!2241985))

(declare-fun m!2242181 () Bool)

(assert (=> bs!407058 m!2242181))

(declare-fun m!2242183 () Bool)

(assert (=> bs!407058 m!2242183))

(assert (=> b!1812832 d!556286))

(declare-fun b!1813031 () Bool)

(declare-fun e!1158226 () Bool)

(assert (=> b!1813031 (= e!1158226 true)))

(declare-fun d!556288 () Bool)

(assert (=> d!556288 e!1158226))

(assert (= d!556288 b!1813031))

(declare-fun lambda!71015 () Int)

(declare-fun order!12905 () Int)

(declare-fun dynLambda!9838 (Int Int) Int)

(assert (=> b!1813031 (< (dynLambda!9833 order!12899 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) (dynLambda!9838 order!12905 lambda!71015))))

(assert (=> b!1813031 (< (dynLambda!9835 order!12903 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) (dynLambda!9838 order!12905 lambda!71015))))

(assert (=> d!556288 (= (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (seqFromList!2520 (originalCharacters!4365 (_1!11081 lt!703931)))))))

(declare-fun lt!703993 () Unit!34395)

(declare-fun Forall2of!164 (Int BalanceConc!13102 BalanceConc!13102) Unit!34395)

(assert (=> d!556288 (= lt!703993 (Forall2of!164 lambda!71015 lt!703908 (seqFromList!2520 (originalCharacters!4365 (_1!11081 lt!703931)))))))

(assert (=> d!556288 (= (list!8051 lt!703908) (list!8051 (seqFromList!2520 (originalCharacters!4365 (_1!11081 lt!703931)))))))

(assert (=> d!556288 (= (lemmaEqSameImage!462 (transformation!3551 (rule!5657 (_1!11081 lt!703931))) lt!703908 (seqFromList!2520 (originalCharacters!4365 (_1!11081 lt!703931)))) lt!703993)))

(declare-fun b_lambda!59773 () Bool)

(assert (=> (not b_lambda!59773) (not d!556288)))

(assert (=> d!556288 t!169245))

(declare-fun b_and!140053 () Bool)

(assert (= b_and!140047 (and (=> t!169245 result!133036) b_and!140053)))

(assert (=> d!556288 t!169247))

(declare-fun b_and!140055 () Bool)

(assert (= b_and!140049 (and (=> t!169247 result!133040) b_and!140055)))

(assert (=> d!556288 t!169249))

(declare-fun b_and!140057 () Bool)

(assert (= b_and!140051 (and (=> t!169249 result!133042) b_and!140057)))

(declare-fun b_lambda!59775 () Bool)

(assert (=> (not b_lambda!59775) (not d!556288)))

(declare-fun t!169260 () Bool)

(declare-fun tb!110803 () Bool)

(assert (=> (and b!1812825 (= (toValue!5082 (transformation!3551 rule!422)) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169260) tb!110803))

(declare-fun result!133050 () Bool)

(assert (=> tb!110803 (= result!133050 (inv!21 (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (seqFromList!2520 (originalCharacters!4365 (_1!11081 lt!703931))))))))

(declare-fun m!2242189 () Bool)

(assert (=> tb!110803 m!2242189))

(assert (=> d!556288 t!169260))

(declare-fun b_and!140059 () Bool)

(assert (= b_and!140053 (and (=> t!169260 result!133050) b_and!140059)))

(declare-fun tb!110805 () Bool)

(declare-fun t!169262 () Bool)

(assert (=> (and b!1812816 (= (toValue!5082 (transformation!3551 (h!25178 rules!3447))) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169262) tb!110805))

(declare-fun result!133052 () Bool)

(assert (= result!133052 result!133050))

(assert (=> d!556288 t!169262))

(declare-fun b_and!140061 () Bool)

(assert (= b_and!140055 (and (=> t!169262 result!133052) b_and!140061)))

(declare-fun t!169264 () Bool)

(declare-fun tb!110807 () Bool)

(assert (=> (and b!1812812 (= (toValue!5082 (transformation!3551 (rule!5657 token!523))) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169264) tb!110807))

(declare-fun result!133054 () Bool)

(assert (= result!133054 result!133050))

(assert (=> d!556288 t!169264))

(declare-fun b_and!140063 () Bool)

(assert (= b_and!140057 (and (=> t!169264 result!133054) b_and!140063)))

(assert (=> d!556288 m!2242049))

(declare-fun m!2242207 () Bool)

(assert (=> d!556288 m!2242207))

(assert (=> d!556288 m!2242049))

(declare-fun m!2242211 () Bool)

(assert (=> d!556288 m!2242211))

(assert (=> d!556288 m!2241985))

(assert (=> d!556288 m!2242023))

(assert (=> d!556288 m!2242049))

(declare-fun m!2242215 () Bool)

(assert (=> d!556288 m!2242215))

(assert (=> b!1812832 d!556288))

(declare-fun d!556290 () Bool)

(declare-fun res!815047 () Bool)

(declare-fun e!1158230 () Bool)

(assert (=> d!556290 (=> (not res!815047) (not e!1158230))))

(assert (=> d!556290 (= res!815047 (not (isEmpty!12514 (originalCharacters!4365 token!523))))))

(assert (=> d!556290 (= (inv!25781 token!523) e!1158230)))

(declare-fun b!1813036 () Bool)

(declare-fun res!815048 () Bool)

(assert (=> b!1813036 (=> (not res!815048) (not e!1158230))))

(assert (=> b!1813036 (= res!815048 (= (originalCharacters!4365 token!523) (list!8051 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 token!523))) (value!110876 token!523)))))))

(declare-fun b!1813037 () Bool)

(assert (=> b!1813037 (= e!1158230 (= (size!15722 token!523) (size!15724 (originalCharacters!4365 token!523))))))

(assert (= (and d!556290 res!815047) b!1813036))

(assert (= (and b!1813036 res!815048) b!1813037))

(declare-fun b_lambda!59777 () Bool)

(assert (=> (not b_lambda!59777) (not b!1813036)))

(declare-fun tb!110809 () Bool)

(declare-fun t!169266 () Bool)

(assert (=> (and b!1812825 (= (toChars!4941 (transformation!3551 rule!422)) (toChars!4941 (transformation!3551 (rule!5657 token!523)))) t!169266) tb!110809))

(declare-fun b!1813038 () Bool)

(declare-fun e!1158231 () Bool)

(declare-fun tp!512107 () Bool)

(assert (=> b!1813038 (= e!1158231 (and (inv!25782 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 token!523))) (value!110876 token!523)))) tp!512107))))

(declare-fun result!133056 () Bool)

(assert (=> tb!110809 (= result!133056 (and (inv!25783 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 token!523))) (value!110876 token!523))) e!1158231))))

(assert (= tb!110809 b!1813038))

(declare-fun m!2242237 () Bool)

(assert (=> b!1813038 m!2242237))

(declare-fun m!2242239 () Bool)

(assert (=> tb!110809 m!2242239))

(assert (=> b!1813036 t!169266))

(declare-fun b_and!140065 () Bool)

(assert (= b_and!140029 (and (=> t!169266 result!133056) b_and!140065)))

(declare-fun t!169268 () Bool)

(declare-fun tb!110811 () Bool)

(assert (=> (and b!1812816 (= (toChars!4941 (transformation!3551 (h!25178 rules!3447))) (toChars!4941 (transformation!3551 (rule!5657 token!523)))) t!169268) tb!110811))

(declare-fun result!133058 () Bool)

(assert (= result!133058 result!133056))

(assert (=> b!1813036 t!169268))

(declare-fun b_and!140067 () Bool)

(assert (= b_and!140031 (and (=> t!169268 result!133058) b_and!140067)))

(declare-fun t!169270 () Bool)

(declare-fun tb!110813 () Bool)

(assert (=> (and b!1812812 (= (toChars!4941 (transformation!3551 (rule!5657 token!523))) (toChars!4941 (transformation!3551 (rule!5657 token!523)))) t!169270) tb!110813))

(declare-fun result!133060 () Bool)

(assert (= result!133060 result!133056))

(assert (=> b!1813036 t!169270))

(declare-fun b_and!140069 () Bool)

(assert (= b_and!140033 (and (=> t!169270 result!133060) b_and!140069)))

(declare-fun m!2242241 () Bool)

(assert (=> d!556290 m!2242241))

(declare-fun m!2242243 () Bool)

(assert (=> b!1813036 m!2242243))

(assert (=> b!1813036 m!2242243))

(declare-fun m!2242245 () Bool)

(assert (=> b!1813036 m!2242245))

(declare-fun m!2242247 () Bool)

(assert (=> b!1813037 m!2242247))

(assert (=> start!179218 d!556290))

(declare-fun d!556294 () Bool)

(assert (=> d!556294 (not (matchR!2352 (regex!3551 rule!422) lt!703900))))

(declare-fun lt!704001 () Unit!34395)

(declare-fun choose!11401 (LexerInterface!3180 List!19847 Rule!6902 List!19846 List!19846 List!19846 Rule!6902) Unit!34395)

(assert (=> d!556294 (= lt!704001 (choose!11401 thiss!24550 rules!3447 (rule!5657 (_1!11081 lt!703931)) lt!703945 lt!703906 lt!703900 rule!422))))

(assert (=> d!556294 (isPrefix!1791 lt!703945 lt!703906)))

(assert (=> d!556294 (= (lemmaMaxPrefixOutputsMaxPrefix!260 thiss!24550 rules!3447 (rule!5657 (_1!11081 lt!703931)) lt!703945 lt!703906 lt!703900 rule!422) lt!704001)))

(declare-fun bs!407059 () Bool)

(assert (= bs!407059 d!556294))

(assert (=> bs!407059 m!2242061))

(declare-fun m!2242261 () Bool)

(assert (=> bs!407059 m!2242261))

(assert (=> bs!407059 m!2241981))

(assert (=> b!1812811 d!556294))

(declare-fun d!556298 () Bool)

(declare-fun c!296180 () Bool)

(assert (=> d!556298 (= c!296180 (isEmpty!12514 lt!703930))))

(declare-fun e!1158243 () Bool)

(assert (=> d!556298 (= (prefixMatch!762 lt!703927 lt!703930) e!1158243)))

(declare-fun b!1813061 () Bool)

(declare-fun lostCause!615 (Regex!4879) Bool)

(assert (=> b!1813061 (= e!1158243 (not (lostCause!615 lt!703927)))))

(declare-fun b!1813062 () Bool)

(assert (=> b!1813062 (= e!1158243 (prefixMatch!762 (derivativeStep!1274 lt!703927 (head!4214 lt!703930)) (tail!2683 lt!703930)))))

(assert (= (and d!556298 c!296180) b!1813061))

(assert (= (and d!556298 (not c!296180)) b!1813062))

(declare-fun m!2242277 () Bool)

(assert (=> d!556298 m!2242277))

(declare-fun m!2242279 () Bool)

(assert (=> b!1813061 m!2242279))

(declare-fun m!2242281 () Bool)

(assert (=> b!1813062 m!2242281))

(assert (=> b!1813062 m!2242281))

(declare-fun m!2242283 () Bool)

(assert (=> b!1813062 m!2242283))

(declare-fun m!2242285 () Bool)

(assert (=> b!1813062 m!2242285))

(assert (=> b!1813062 m!2242283))

(assert (=> b!1813062 m!2242285))

(declare-fun m!2242287 () Bool)

(assert (=> b!1813062 m!2242287))

(assert (=> b!1812833 d!556298))

(declare-fun b!1813071 () Bool)

(declare-fun e!1158248 () List!19846)

(assert (=> b!1813071 (= e!1158248 (Cons!19776 (head!4214 suffix!1421) Nil!19776))))

(declare-fun b!1813074 () Bool)

(declare-fun lt!704010 () List!19846)

(declare-fun e!1158249 () Bool)

(assert (=> b!1813074 (= e!1158249 (or (not (= (Cons!19776 (head!4214 suffix!1421) Nil!19776) Nil!19776)) (= lt!704010 lt!703900)))))

(declare-fun b!1813073 () Bool)

(declare-fun res!815060 () Bool)

(assert (=> b!1813073 (=> (not res!815060) (not e!1158249))))

(assert (=> b!1813073 (= res!815060 (= (size!15724 lt!704010) (+ (size!15724 lt!703900) (size!15724 (Cons!19776 (head!4214 suffix!1421) Nil!19776)))))))

(declare-fun d!556304 () Bool)

(assert (=> d!556304 e!1158249))

(declare-fun res!815059 () Bool)

(assert (=> d!556304 (=> (not res!815059) (not e!1158249))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2890 (List!19846) (InoxSet C!9932))

(assert (=> d!556304 (= res!815059 (= (content!2890 lt!704010) ((_ map or) (content!2890 lt!703900) (content!2890 (Cons!19776 (head!4214 suffix!1421) Nil!19776)))))))

(assert (=> d!556304 (= lt!704010 e!1158248)))

(declare-fun c!296183 () Bool)

(assert (=> d!556304 (= c!296183 ((_ is Nil!19776) lt!703900))))

(assert (=> d!556304 (= (++!5381 lt!703900 (Cons!19776 (head!4214 suffix!1421) Nil!19776)) lt!704010)))

(declare-fun b!1813072 () Bool)

(assert (=> b!1813072 (= e!1158248 (Cons!19776 (h!25177 lt!703900) (++!5381 (t!169251 lt!703900) (Cons!19776 (head!4214 suffix!1421) Nil!19776))))))

(assert (= (and d!556304 c!296183) b!1813071))

(assert (= (and d!556304 (not c!296183)) b!1813072))

(assert (= (and d!556304 res!815059) b!1813073))

(assert (= (and b!1813073 res!815060) b!1813074))

(declare-fun m!2242297 () Bool)

(assert (=> b!1813073 m!2242297))

(declare-fun m!2242299 () Bool)

(assert (=> b!1813073 m!2242299))

(declare-fun m!2242301 () Bool)

(assert (=> b!1813073 m!2242301))

(declare-fun m!2242303 () Bool)

(assert (=> d!556304 m!2242303))

(declare-fun m!2242305 () Bool)

(assert (=> d!556304 m!2242305))

(declare-fun m!2242307 () Bool)

(assert (=> d!556304 m!2242307))

(declare-fun m!2242309 () Bool)

(assert (=> b!1813072 m!2242309))

(assert (=> b!1812833 d!556304))

(declare-fun d!556310 () Bool)

(assert (=> d!556310 (= (head!4214 suffix!1421) (h!25177 suffix!1421))))

(assert (=> b!1812833 d!556310))

(declare-fun d!556312 () Bool)

(declare-fun lt!704013 () Unit!34395)

(declare-fun lemma!428 (List!19847 LexerInterface!3180 List!19847) Unit!34395)

(assert (=> d!556312 (= lt!704013 (lemma!428 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!71021 () Int)

(declare-datatypes ((List!19849 0))(
  ( (Nil!19779) (Cons!19779 (h!25180 Regex!4879) (t!169314 List!19849)) )
))
(declare-fun generalisedUnion!436 (List!19849) Regex!4879)

(declare-fun map!4083 (List!19847 Int) List!19849)

(assert (=> d!556312 (= (rulesRegex!907 thiss!24550 rules!3447) (generalisedUnion!436 (map!4083 rules!3447 lambda!71021)))))

(declare-fun bs!407062 () Bool)

(assert (= bs!407062 d!556312))

(declare-fun m!2242311 () Bool)

(assert (=> bs!407062 m!2242311))

(declare-fun m!2242313 () Bool)

(assert (=> bs!407062 m!2242313))

(assert (=> bs!407062 m!2242313))

(declare-fun m!2242315 () Bool)

(assert (=> bs!407062 m!2242315))

(assert (=> b!1812833 d!556312))

(declare-fun d!556314 () Bool)

(declare-fun choose!11404 (Int) Bool)

(assert (=> d!556314 (= (Forall!918 lambda!71012) (choose!11404 lambda!71012))))

(declare-fun bs!407063 () Bool)

(assert (= bs!407063 d!556314))

(declare-fun m!2242317 () Bool)

(assert (=> bs!407063 m!2242317))

(assert (=> b!1812839 d!556314))

(declare-fun d!556316 () Bool)

(declare-fun e!1158252 () Bool)

(assert (=> d!556316 e!1158252))

(declare-fun res!815063 () Bool)

(assert (=> d!556316 (=> (not res!815063) (not e!1158252))))

(assert (=> d!556316 (= res!815063 (semiInverseModEq!1420 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))))))

(declare-fun Unit!34407 () Unit!34395)

(assert (=> d!556316 (= (lemmaInv!750 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) Unit!34407)))

(declare-fun b!1813077 () Bool)

(assert (=> b!1813077 (= e!1158252 (equivClasses!1361 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))))))

(assert (= (and d!556316 res!815063) b!1813077))

(declare-fun m!2242319 () Bool)

(assert (=> d!556316 m!2242319))

(declare-fun m!2242321 () Bool)

(assert (=> b!1813077 m!2242321))

(assert (=> b!1812839 d!556316))

(declare-fun d!556318 () Bool)

(declare-fun isEmpty!12517 (Option!4128) Bool)

(assert (=> d!556318 (= (isDefined!3469 lt!703916) (not (isEmpty!12517 lt!703916)))))

(declare-fun bs!407064 () Bool)

(assert (= bs!407064 d!556318))

(declare-fun m!2242323 () Bool)

(assert (=> bs!407064 m!2242323))

(assert (=> b!1812818 d!556318))

(declare-fun d!556320 () Bool)

(declare-fun e!1158269 () Bool)

(assert (=> d!556320 e!1158269))

(declare-fun res!815104 () Bool)

(assert (=> d!556320 (=> res!815104 e!1158269)))

(declare-fun lt!704046 () Option!4128)

(assert (=> d!556320 (= res!815104 (isEmpty!12517 lt!704046))))

(declare-fun e!1158271 () Option!4128)

(assert (=> d!556320 (= lt!704046 e!1158271)))

(declare-fun c!296189 () Bool)

(assert (=> d!556320 (= c!296189 (and ((_ is Cons!19777) rules!3447) ((_ is Nil!19777) (t!169252 rules!3447))))))

(declare-fun lt!704045 () Unit!34395)

(declare-fun lt!704048 () Unit!34395)

(assert (=> d!556320 (= lt!704045 lt!704048)))

(assert (=> d!556320 (isPrefix!1791 lt!703900 lt!703900)))

(declare-fun lemmaIsPrefixRefl!1174 (List!19846 List!19846) Unit!34395)

(assert (=> d!556320 (= lt!704048 (lemmaIsPrefixRefl!1174 lt!703900 lt!703900))))

(declare-fun rulesValidInductive!1210 (LexerInterface!3180 List!19847) Bool)

(assert (=> d!556320 (rulesValidInductive!1210 thiss!24550 rules!3447)))

(assert (=> d!556320 (= (maxPrefix!1734 thiss!24550 rules!3447 lt!703900) lt!704046)))

(declare-fun b!1813124 () Bool)

(declare-fun res!815105 () Bool)

(declare-fun e!1158270 () Bool)

(assert (=> b!1813124 (=> (not res!815105) (not e!1158270))))

(assert (=> b!1813124 (= res!815105 (= (++!5381 (list!8051 (charsOf!2200 (_1!11081 (get!6119 lt!704046)))) (_2!11081 (get!6119 lt!704046))) lt!703900))))

(declare-fun b!1813125 () Bool)

(assert (=> b!1813125 (= e!1158269 e!1158270)))

(declare-fun res!815102 () Bool)

(assert (=> b!1813125 (=> (not res!815102) (not e!1158270))))

(assert (=> b!1813125 (= res!815102 (isDefined!3469 lt!704046))))

(declare-fun b!1813126 () Bool)

(declare-fun lt!704047 () Option!4128)

(declare-fun lt!704049 () Option!4128)

(assert (=> b!1813126 (= e!1158271 (ite (and ((_ is None!4127) lt!704047) ((_ is None!4127) lt!704049)) None!4127 (ite ((_ is None!4127) lt!704049) lt!704047 (ite ((_ is None!4127) lt!704047) lt!704049 (ite (>= (size!15722 (_1!11081 (v!25646 lt!704047))) (size!15722 (_1!11081 (v!25646 lt!704049)))) lt!704047 lt!704049)))))))

(declare-fun call!114152 () Option!4128)

(assert (=> b!1813126 (= lt!704047 call!114152)))

(assert (=> b!1813126 (= lt!704049 (maxPrefix!1734 thiss!24550 (t!169252 rules!3447) lt!703900))))

(declare-fun b!1813127 () Bool)

(declare-fun res!815103 () Bool)

(assert (=> b!1813127 (=> (not res!815103) (not e!1158270))))

(assert (=> b!1813127 (= res!815103 (= (list!8051 (charsOf!2200 (_1!11081 (get!6119 lt!704046)))) (originalCharacters!4365 (_1!11081 (get!6119 lt!704046)))))))

(declare-fun b!1813128 () Bool)

(declare-fun res!815101 () Bool)

(assert (=> b!1813128 (=> (not res!815101) (not e!1158270))))

(assert (=> b!1813128 (= res!815101 (matchR!2352 (regex!3551 (rule!5657 (_1!11081 (get!6119 lt!704046)))) (list!8051 (charsOf!2200 (_1!11081 (get!6119 lt!704046))))))))

(declare-fun b!1813129 () Bool)

(declare-fun res!815100 () Bool)

(assert (=> b!1813129 (=> (not res!815100) (not e!1158270))))

(assert (=> b!1813129 (= res!815100 (= (value!110876 (_1!11081 (get!6119 lt!704046))) (apply!5351 (transformation!3551 (rule!5657 (_1!11081 (get!6119 lt!704046)))) (seqFromList!2520 (originalCharacters!4365 (_1!11081 (get!6119 lt!704046)))))))))

(declare-fun b!1813130 () Bool)

(assert (=> b!1813130 (= e!1158270 (contains!3585 rules!3447 (rule!5657 (_1!11081 (get!6119 lt!704046)))))))

(declare-fun bm!114147 () Bool)

(assert (=> bm!114147 (= call!114152 (maxPrefixOneRule!1103 thiss!24550 (h!25178 rules!3447) lt!703900))))

(declare-fun b!1813131 () Bool)

(declare-fun res!815099 () Bool)

(assert (=> b!1813131 (=> (not res!815099) (not e!1158270))))

(assert (=> b!1813131 (= res!815099 (< (size!15724 (_2!11081 (get!6119 lt!704046))) (size!15724 lt!703900)))))

(declare-fun b!1813132 () Bool)

(assert (=> b!1813132 (= e!1158271 call!114152)))

(assert (= (and d!556320 c!296189) b!1813132))

(assert (= (and d!556320 (not c!296189)) b!1813126))

(assert (= (or b!1813132 b!1813126) bm!114147))

(assert (= (and d!556320 (not res!815104)) b!1813125))

(assert (= (and b!1813125 res!815102) b!1813127))

(assert (= (and b!1813127 res!815103) b!1813131))

(assert (= (and b!1813131 res!815099) b!1813124))

(assert (= (and b!1813124 res!815105) b!1813129))

(assert (= (and b!1813129 res!815100) b!1813128))

(assert (= (and b!1813128 res!815101) b!1813130))

(declare-fun m!2242369 () Bool)

(assert (=> b!1813131 m!2242369))

(declare-fun m!2242371 () Bool)

(assert (=> b!1813131 m!2242371))

(assert (=> b!1813131 m!2242299))

(assert (=> b!1813129 m!2242369))

(declare-fun m!2242373 () Bool)

(assert (=> b!1813129 m!2242373))

(assert (=> b!1813129 m!2242373))

(declare-fun m!2242375 () Bool)

(assert (=> b!1813129 m!2242375))

(declare-fun m!2242377 () Bool)

(assert (=> bm!114147 m!2242377))

(assert (=> b!1813127 m!2242369))

(declare-fun m!2242379 () Bool)

(assert (=> b!1813127 m!2242379))

(assert (=> b!1813127 m!2242379))

(declare-fun m!2242381 () Bool)

(assert (=> b!1813127 m!2242381))

(assert (=> b!1813124 m!2242369))

(assert (=> b!1813124 m!2242379))

(assert (=> b!1813124 m!2242379))

(assert (=> b!1813124 m!2242381))

(assert (=> b!1813124 m!2242381))

(declare-fun m!2242383 () Bool)

(assert (=> b!1813124 m!2242383))

(declare-fun m!2242385 () Bool)

(assert (=> b!1813125 m!2242385))

(assert (=> b!1813128 m!2242369))

(assert (=> b!1813128 m!2242379))

(assert (=> b!1813128 m!2242379))

(assert (=> b!1813128 m!2242381))

(assert (=> b!1813128 m!2242381))

(declare-fun m!2242387 () Bool)

(assert (=> b!1813128 m!2242387))

(assert (=> b!1813130 m!2242369))

(declare-fun m!2242389 () Bool)

(assert (=> b!1813130 m!2242389))

(declare-fun m!2242391 () Bool)

(assert (=> b!1813126 m!2242391))

(declare-fun m!2242393 () Bool)

(assert (=> d!556320 m!2242393))

(declare-fun m!2242395 () Bool)

(assert (=> d!556320 m!2242395))

(declare-fun m!2242397 () Bool)

(assert (=> d!556320 m!2242397))

(declare-fun m!2242399 () Bool)

(assert (=> d!556320 m!2242399))

(assert (=> b!1812818 d!556320))

(declare-fun d!556330 () Bool)

(declare-fun list!8053 (Conc!6579) List!19846)

(assert (=> d!556330 (= (list!8051 lt!703917) (list!8053 (c!296134 lt!703917)))))

(declare-fun bs!407067 () Bool)

(assert (= bs!407067 d!556330))

(declare-fun m!2242407 () Bool)

(assert (=> bs!407067 m!2242407))

(assert (=> b!1812818 d!556330))

(declare-fun d!556334 () Bool)

(declare-fun lt!704052 () BalanceConc!13102)

(assert (=> d!556334 (= (list!8051 lt!704052) (originalCharacters!4365 token!523))))

(assert (=> d!556334 (= lt!704052 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 token!523))) (value!110876 token!523)))))

(assert (=> d!556334 (= (charsOf!2200 token!523) lt!704052)))

(declare-fun b_lambda!59783 () Bool)

(assert (=> (not b_lambda!59783) (not d!556334)))

(assert (=> d!556334 t!169266))

(declare-fun b_and!140083 () Bool)

(assert (= b_and!140065 (and (=> t!169266 result!133056) b_and!140083)))

(assert (=> d!556334 t!169268))

(declare-fun b_and!140085 () Bool)

(assert (= b_and!140067 (and (=> t!169268 result!133058) b_and!140085)))

(assert (=> d!556334 t!169270))

(declare-fun b_and!140087 () Bool)

(assert (= b_and!140069 (and (=> t!169270 result!133060) b_and!140087)))

(declare-fun m!2242409 () Bool)

(assert (=> d!556334 m!2242409))

(assert (=> d!556334 m!2242243))

(assert (=> b!1812818 d!556334))

(declare-fun d!556336 () Bool)

(declare-fun lt!704055 () BalanceConc!13102)

(assert (=> d!556336 (= (list!8051 lt!704055) (originalCharacters!4365 (_1!11081 lt!703931)))))

(assert (=> d!556336 (= lt!704055 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931))))))

(assert (=> d!556336 (= (charsOf!2200 (_1!11081 lt!703931)) lt!704055)))

(declare-fun b_lambda!59785 () Bool)

(assert (=> (not b_lambda!59785) (not d!556336)))

(assert (=> d!556336 t!169233))

(declare-fun b_and!140089 () Bool)

(assert (= b_and!140083 (and (=> t!169233 result!133022) b_and!140089)))

(assert (=> d!556336 t!169235))

(declare-fun b_and!140091 () Bool)

(assert (= b_and!140085 (and (=> t!169235 result!133026) b_and!140091)))

(assert (=> d!556336 t!169237))

(declare-fun b_and!140093 () Bool)

(assert (= b_and!140087 (and (=> t!169237 result!133028) b_and!140093)))

(declare-fun m!2242411 () Bool)

(assert (=> d!556336 m!2242411))

(assert (=> d!556336 m!2241959))

(assert (=> b!1812840 d!556336))

(declare-fun b!1813173 () Bool)

(declare-fun e!1158295 () Bool)

(assert (=> b!1813173 (= e!1158295 (isPrefix!1791 (tail!2683 lt!703900) (tail!2683 lt!703906)))))

(declare-fun b!1813171 () Bool)

(declare-fun e!1158294 () Bool)

(assert (=> b!1813171 (= e!1158294 e!1158295)))

(declare-fun res!815130 () Bool)

(assert (=> b!1813171 (=> (not res!815130) (not e!1158295))))

(assert (=> b!1813171 (= res!815130 (not ((_ is Nil!19776) lt!703906)))))

(declare-fun b!1813174 () Bool)

(declare-fun e!1158296 () Bool)

(assert (=> b!1813174 (= e!1158296 (>= (size!15724 lt!703906) (size!15724 lt!703900)))))

(declare-fun b!1813172 () Bool)

(declare-fun res!815131 () Bool)

(assert (=> b!1813172 (=> (not res!815131) (not e!1158295))))

(assert (=> b!1813172 (= res!815131 (= (head!4214 lt!703900) (head!4214 lt!703906)))))

(declare-fun d!556338 () Bool)

(assert (=> d!556338 e!1158296))

(declare-fun res!815133 () Bool)

(assert (=> d!556338 (=> res!815133 e!1158296)))

(declare-fun lt!704060 () Bool)

(assert (=> d!556338 (= res!815133 (not lt!704060))))

(assert (=> d!556338 (= lt!704060 e!1158294)))

(declare-fun res!815132 () Bool)

(assert (=> d!556338 (=> res!815132 e!1158294)))

(assert (=> d!556338 (= res!815132 ((_ is Nil!19776) lt!703900))))

(assert (=> d!556338 (= (isPrefix!1791 lt!703900 lt!703906) lt!704060)))

(assert (= (and d!556338 (not res!815132)) b!1813171))

(assert (= (and b!1813171 res!815130) b!1813172))

(assert (= (and b!1813172 res!815131) b!1813173))

(assert (= (and d!556338 (not res!815133)) b!1813174))

(assert (=> b!1813173 m!2242163))

(declare-fun m!2242427 () Bool)

(assert (=> b!1813173 m!2242427))

(assert (=> b!1813173 m!2242163))

(assert (=> b!1813173 m!2242427))

(declare-fun m!2242429 () Bool)

(assert (=> b!1813173 m!2242429))

(declare-fun m!2242431 () Bool)

(assert (=> b!1813174 m!2242431))

(assert (=> b!1813174 m!2242299))

(assert (=> b!1813172 m!2242159))

(declare-fun m!2242433 () Bool)

(assert (=> b!1813172 m!2242433))

(assert (=> b!1812840 d!556338))

(declare-fun b!1813175 () Bool)

(declare-fun e!1158297 () List!19846)

(assert (=> b!1813175 (= e!1158297 suffix!1421)))

(declare-fun b!1813178 () Bool)

(declare-fun e!1158298 () Bool)

(declare-fun lt!704061 () List!19846)

(assert (=> b!1813178 (= e!1158298 (or (not (= suffix!1421 Nil!19776)) (= lt!704061 lt!703900)))))

(declare-fun b!1813177 () Bool)

(declare-fun res!815135 () Bool)

(assert (=> b!1813177 (=> (not res!815135) (not e!1158298))))

(assert (=> b!1813177 (= res!815135 (= (size!15724 lt!704061) (+ (size!15724 lt!703900) (size!15724 suffix!1421))))))

(declare-fun d!556344 () Bool)

(assert (=> d!556344 e!1158298))

(declare-fun res!815134 () Bool)

(assert (=> d!556344 (=> (not res!815134) (not e!1158298))))

(assert (=> d!556344 (= res!815134 (= (content!2890 lt!704061) ((_ map or) (content!2890 lt!703900) (content!2890 suffix!1421))))))

(assert (=> d!556344 (= lt!704061 e!1158297)))

(declare-fun c!296197 () Bool)

(assert (=> d!556344 (= c!296197 ((_ is Nil!19776) lt!703900))))

(assert (=> d!556344 (= (++!5381 lt!703900 suffix!1421) lt!704061)))

(declare-fun b!1813176 () Bool)

(assert (=> b!1813176 (= e!1158297 (Cons!19776 (h!25177 lt!703900) (++!5381 (t!169251 lt!703900) suffix!1421)))))

(assert (= (and d!556344 c!296197) b!1813175))

(assert (= (and d!556344 (not c!296197)) b!1813176))

(assert (= (and d!556344 res!815134) b!1813177))

(assert (= (and b!1813177 res!815135) b!1813178))

(declare-fun m!2242435 () Bool)

(assert (=> b!1813177 m!2242435))

(assert (=> b!1813177 m!2242299))

(declare-fun m!2242437 () Bool)

(assert (=> b!1813177 m!2242437))

(declare-fun m!2242439 () Bool)

(assert (=> d!556344 m!2242439))

(assert (=> d!556344 m!2242305))

(declare-fun m!2242441 () Bool)

(assert (=> d!556344 m!2242441))

(declare-fun m!2242443 () Bool)

(assert (=> b!1813176 m!2242443))

(assert (=> b!1812840 d!556344))

(declare-fun d!556346 () Bool)

(declare-fun e!1158320 () Bool)

(assert (=> d!556346 e!1158320))

(declare-fun res!815161 () Bool)

(assert (=> d!556346 (=> (not res!815161) (not e!1158320))))

(assert (=> d!556346 (= res!815161 (isDefined!3470 (getRuleFromTag!599 thiss!24550 rules!3447 (tag!3961 (rule!5657 (_1!11081 lt!703931))))))))

(declare-fun lt!704070 () Unit!34395)

(declare-fun choose!11405 (LexerInterface!3180 List!19847 List!19846 Token!6668) Unit!34395)

(assert (=> d!556346 (= lt!704070 (choose!11405 thiss!24550 rules!3447 lt!703906 (_1!11081 lt!703931)))))

(assert (=> d!556346 (rulesInvariant!2849 thiss!24550 rules!3447)))

(assert (=> d!556346 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!599 thiss!24550 rules!3447 lt!703906 (_1!11081 lt!703931)) lt!704070)))

(declare-fun b!1813214 () Bool)

(declare-fun res!815162 () Bool)

(assert (=> b!1813214 (=> (not res!815162) (not e!1158320))))

(assert (=> b!1813214 (= res!815162 (matchR!2352 (regex!3551 (get!6120 (getRuleFromTag!599 thiss!24550 rules!3447 (tag!3961 (rule!5657 (_1!11081 lt!703931)))))) (list!8051 (charsOf!2200 (_1!11081 lt!703931)))))))

(declare-fun b!1813215 () Bool)

(assert (=> b!1813215 (= e!1158320 (= (rule!5657 (_1!11081 lt!703931)) (get!6120 (getRuleFromTag!599 thiss!24550 rules!3447 (tag!3961 (rule!5657 (_1!11081 lt!703931)))))))))

(assert (= (and d!556346 res!815161) b!1813214))

(assert (= (and b!1813214 res!815162) b!1813215))

(assert (=> d!556346 m!2241975))

(assert (=> d!556346 m!2241975))

(declare-fun m!2242465 () Bool)

(assert (=> d!556346 m!2242465))

(declare-fun m!2242467 () Bool)

(assert (=> d!556346 m!2242467))

(assert (=> d!556346 m!2242033))

(assert (=> b!1813214 m!2241973))

(assert (=> b!1813214 m!2241975))

(declare-fun m!2242469 () Bool)

(assert (=> b!1813214 m!2242469))

(assert (=> b!1813214 m!2242011))

(declare-fun m!2242471 () Bool)

(assert (=> b!1813214 m!2242471))

(assert (=> b!1813214 m!2241975))

(assert (=> b!1813214 m!2241973))

(assert (=> b!1813214 m!2242011))

(assert (=> b!1813215 m!2241975))

(assert (=> b!1813215 m!2241975))

(assert (=> b!1813215 m!2242469))

(assert (=> b!1812840 d!556346))

(declare-fun b!1813218 () Bool)

(declare-fun e!1158322 () Bool)

(assert (=> b!1813218 (= e!1158322 (isPrefix!1791 (tail!2683 lt!703945) (tail!2683 (++!5381 lt!703945 (_2!11081 lt!703931)))))))

(declare-fun b!1813216 () Bool)

(declare-fun e!1158321 () Bool)

(assert (=> b!1813216 (= e!1158321 e!1158322)))

(declare-fun res!815163 () Bool)

(assert (=> b!1813216 (=> (not res!815163) (not e!1158322))))

(assert (=> b!1813216 (= res!815163 (not ((_ is Nil!19776) (++!5381 lt!703945 (_2!11081 lt!703931)))))))

(declare-fun b!1813219 () Bool)

(declare-fun e!1158323 () Bool)

(assert (=> b!1813219 (= e!1158323 (>= (size!15724 (++!5381 lt!703945 (_2!11081 lt!703931))) (size!15724 lt!703945)))))

(declare-fun b!1813217 () Bool)

(declare-fun res!815164 () Bool)

(assert (=> b!1813217 (=> (not res!815164) (not e!1158322))))

(assert (=> b!1813217 (= res!815164 (= (head!4214 lt!703945) (head!4214 (++!5381 lt!703945 (_2!11081 lt!703931)))))))

(declare-fun d!556358 () Bool)

(assert (=> d!556358 e!1158323))

(declare-fun res!815166 () Bool)

(assert (=> d!556358 (=> res!815166 e!1158323)))

(declare-fun lt!704072 () Bool)

(assert (=> d!556358 (= res!815166 (not lt!704072))))

(assert (=> d!556358 (= lt!704072 e!1158321)))

(declare-fun res!815165 () Bool)

(assert (=> d!556358 (=> res!815165 e!1158321)))

(assert (=> d!556358 (= res!815165 ((_ is Nil!19776) lt!703945))))

(assert (=> d!556358 (= (isPrefix!1791 lt!703945 (++!5381 lt!703945 (_2!11081 lt!703931))) lt!704072)))

(assert (= (and d!556358 (not res!815165)) b!1813216))

(assert (= (and b!1813216 res!815163) b!1813217))

(assert (= (and b!1813217 res!815164) b!1813218))

(assert (= (and d!556358 (not res!815166)) b!1813219))

(declare-fun m!2242473 () Bool)

(assert (=> b!1813218 m!2242473))

(assert (=> b!1813218 m!2241989))

(declare-fun m!2242475 () Bool)

(assert (=> b!1813218 m!2242475))

(assert (=> b!1813218 m!2242473))

(assert (=> b!1813218 m!2242475))

(declare-fun m!2242477 () Bool)

(assert (=> b!1813218 m!2242477))

(assert (=> b!1813219 m!2241989))

(declare-fun m!2242479 () Bool)

(assert (=> b!1813219 m!2242479))

(assert (=> b!1813219 m!2241953))

(declare-fun m!2242481 () Bool)

(assert (=> b!1813217 m!2242481))

(assert (=> b!1813217 m!2241989))

(declare-fun m!2242483 () Bool)

(assert (=> b!1813217 m!2242483))

(assert (=> b!1812840 d!556358))

(declare-fun d!556360 () Bool)

(assert (=> d!556360 (= (list!8051 lt!703908) (list!8053 (c!296134 lt!703908)))))

(declare-fun bs!407070 () Bool)

(assert (= bs!407070 d!556360))

(declare-fun m!2242485 () Bool)

(assert (=> bs!407070 m!2242485))

(assert (=> b!1812840 d!556360))

(declare-fun d!556362 () Bool)

(declare-fun e!1158324 () Bool)

(assert (=> d!556362 e!1158324))

(declare-fun res!815172 () Bool)

(assert (=> d!556362 (=> res!815172 e!1158324)))

(declare-fun lt!704074 () Option!4128)

(assert (=> d!556362 (= res!815172 (isEmpty!12517 lt!704074))))

(declare-fun e!1158326 () Option!4128)

(assert (=> d!556362 (= lt!704074 e!1158326)))

(declare-fun c!296203 () Bool)

(assert (=> d!556362 (= c!296203 (and ((_ is Cons!19777) rules!3447) ((_ is Nil!19777) (t!169252 rules!3447))))))

(declare-fun lt!704073 () Unit!34395)

(declare-fun lt!704076 () Unit!34395)

(assert (=> d!556362 (= lt!704073 lt!704076)))

(assert (=> d!556362 (isPrefix!1791 lt!703906 lt!703906)))

(assert (=> d!556362 (= lt!704076 (lemmaIsPrefixRefl!1174 lt!703906 lt!703906))))

(assert (=> d!556362 (rulesValidInductive!1210 thiss!24550 rules!3447)))

(assert (=> d!556362 (= (maxPrefix!1734 thiss!24550 rules!3447 lt!703906) lt!704074)))

(declare-fun b!1813220 () Bool)

(declare-fun res!815173 () Bool)

(declare-fun e!1158325 () Bool)

(assert (=> b!1813220 (=> (not res!815173) (not e!1158325))))

(assert (=> b!1813220 (= res!815173 (= (++!5381 (list!8051 (charsOf!2200 (_1!11081 (get!6119 lt!704074)))) (_2!11081 (get!6119 lt!704074))) lt!703906))))

(declare-fun b!1813221 () Bool)

(assert (=> b!1813221 (= e!1158324 e!1158325)))

(declare-fun res!815170 () Bool)

(assert (=> b!1813221 (=> (not res!815170) (not e!1158325))))

(assert (=> b!1813221 (= res!815170 (isDefined!3469 lt!704074))))

(declare-fun b!1813222 () Bool)

(declare-fun lt!704075 () Option!4128)

(declare-fun lt!704077 () Option!4128)

(assert (=> b!1813222 (= e!1158326 (ite (and ((_ is None!4127) lt!704075) ((_ is None!4127) lt!704077)) None!4127 (ite ((_ is None!4127) lt!704077) lt!704075 (ite ((_ is None!4127) lt!704075) lt!704077 (ite (>= (size!15722 (_1!11081 (v!25646 lt!704075))) (size!15722 (_1!11081 (v!25646 lt!704077)))) lt!704075 lt!704077)))))))

(declare-fun call!114155 () Option!4128)

(assert (=> b!1813222 (= lt!704075 call!114155)))

(assert (=> b!1813222 (= lt!704077 (maxPrefix!1734 thiss!24550 (t!169252 rules!3447) lt!703906))))

(declare-fun b!1813223 () Bool)

(declare-fun res!815171 () Bool)

(assert (=> b!1813223 (=> (not res!815171) (not e!1158325))))

(assert (=> b!1813223 (= res!815171 (= (list!8051 (charsOf!2200 (_1!11081 (get!6119 lt!704074)))) (originalCharacters!4365 (_1!11081 (get!6119 lt!704074)))))))

(declare-fun b!1813224 () Bool)

(declare-fun res!815169 () Bool)

(assert (=> b!1813224 (=> (not res!815169) (not e!1158325))))

(assert (=> b!1813224 (= res!815169 (matchR!2352 (regex!3551 (rule!5657 (_1!11081 (get!6119 lt!704074)))) (list!8051 (charsOf!2200 (_1!11081 (get!6119 lt!704074))))))))

(declare-fun b!1813225 () Bool)

(declare-fun res!815168 () Bool)

(assert (=> b!1813225 (=> (not res!815168) (not e!1158325))))

(assert (=> b!1813225 (= res!815168 (= (value!110876 (_1!11081 (get!6119 lt!704074))) (apply!5351 (transformation!3551 (rule!5657 (_1!11081 (get!6119 lt!704074)))) (seqFromList!2520 (originalCharacters!4365 (_1!11081 (get!6119 lt!704074)))))))))

(declare-fun b!1813226 () Bool)

(assert (=> b!1813226 (= e!1158325 (contains!3585 rules!3447 (rule!5657 (_1!11081 (get!6119 lt!704074)))))))

(declare-fun bm!114150 () Bool)

(assert (=> bm!114150 (= call!114155 (maxPrefixOneRule!1103 thiss!24550 (h!25178 rules!3447) lt!703906))))

(declare-fun b!1813227 () Bool)

(declare-fun res!815167 () Bool)

(assert (=> b!1813227 (=> (not res!815167) (not e!1158325))))

(assert (=> b!1813227 (= res!815167 (< (size!15724 (_2!11081 (get!6119 lt!704074))) (size!15724 lt!703906)))))

(declare-fun b!1813228 () Bool)

(assert (=> b!1813228 (= e!1158326 call!114155)))

(assert (= (and d!556362 c!296203) b!1813228))

(assert (= (and d!556362 (not c!296203)) b!1813222))

(assert (= (or b!1813228 b!1813222) bm!114150))

(assert (= (and d!556362 (not res!815172)) b!1813221))

(assert (= (and b!1813221 res!815170) b!1813223))

(assert (= (and b!1813223 res!815171) b!1813227))

(assert (= (and b!1813227 res!815167) b!1813220))

(assert (= (and b!1813220 res!815173) b!1813225))

(assert (= (and b!1813225 res!815168) b!1813224))

(assert (= (and b!1813224 res!815169) b!1813226))

(declare-fun m!2242487 () Bool)

(assert (=> b!1813227 m!2242487))

(declare-fun m!2242489 () Bool)

(assert (=> b!1813227 m!2242489))

(assert (=> b!1813227 m!2242431))

(assert (=> b!1813225 m!2242487))

(declare-fun m!2242491 () Bool)

(assert (=> b!1813225 m!2242491))

(assert (=> b!1813225 m!2242491))

(declare-fun m!2242493 () Bool)

(assert (=> b!1813225 m!2242493))

(declare-fun m!2242495 () Bool)

(assert (=> bm!114150 m!2242495))

(assert (=> b!1813223 m!2242487))

(declare-fun m!2242497 () Bool)

(assert (=> b!1813223 m!2242497))

(assert (=> b!1813223 m!2242497))

(declare-fun m!2242499 () Bool)

(assert (=> b!1813223 m!2242499))

(assert (=> b!1813220 m!2242487))

(assert (=> b!1813220 m!2242497))

(assert (=> b!1813220 m!2242497))

(assert (=> b!1813220 m!2242499))

(assert (=> b!1813220 m!2242499))

(declare-fun m!2242501 () Bool)

(assert (=> b!1813220 m!2242501))

(declare-fun m!2242503 () Bool)

(assert (=> b!1813221 m!2242503))

(assert (=> b!1813224 m!2242487))

(assert (=> b!1813224 m!2242497))

(assert (=> b!1813224 m!2242497))

(assert (=> b!1813224 m!2242499))

(assert (=> b!1813224 m!2242499))

(declare-fun m!2242505 () Bool)

(assert (=> b!1813224 m!2242505))

(assert (=> b!1813226 m!2242487))

(declare-fun m!2242507 () Bool)

(assert (=> b!1813226 m!2242507))

(declare-fun m!2242509 () Bool)

(assert (=> b!1813222 m!2242509))

(declare-fun m!2242511 () Bool)

(assert (=> d!556362 m!2242511))

(declare-fun m!2242513 () Bool)

(assert (=> d!556362 m!2242513))

(declare-fun m!2242515 () Bool)

(assert (=> d!556362 m!2242515))

(assert (=> d!556362 m!2242399))

(assert (=> b!1812840 d!556362))

(declare-fun d!556364 () Bool)

(declare-fun isEmpty!12518 (Option!4129) Bool)

(assert (=> d!556364 (= (isDefined!3470 lt!703940) (not (isEmpty!12518 lt!703940)))))

(declare-fun bs!407071 () Bool)

(assert (= bs!407071 d!556364))

(declare-fun m!2242517 () Bool)

(assert (=> bs!407071 m!2242517))

(assert (=> b!1812840 d!556364))

(declare-fun d!556366 () Bool)

(assert (=> d!556366 (= (get!6119 lt!703923) (v!25646 lt!703923))))

(assert (=> b!1812840 d!556366))

(declare-fun b!1813229 () Bool)

(declare-fun e!1158327 () List!19846)

(assert (=> b!1813229 (= e!1158327 (_2!11081 lt!703931))))

(declare-fun e!1158328 () Bool)

(declare-fun b!1813232 () Bool)

(declare-fun lt!704081 () List!19846)

(assert (=> b!1813232 (= e!1158328 (or (not (= (_2!11081 lt!703931) Nil!19776)) (= lt!704081 lt!703945)))))

(declare-fun b!1813231 () Bool)

(declare-fun res!815175 () Bool)

(assert (=> b!1813231 (=> (not res!815175) (not e!1158328))))

(assert (=> b!1813231 (= res!815175 (= (size!15724 lt!704081) (+ (size!15724 lt!703945) (size!15724 (_2!11081 lt!703931)))))))

(declare-fun d!556370 () Bool)

(assert (=> d!556370 e!1158328))

(declare-fun res!815174 () Bool)

(assert (=> d!556370 (=> (not res!815174) (not e!1158328))))

(assert (=> d!556370 (= res!815174 (= (content!2890 lt!704081) ((_ map or) (content!2890 lt!703945) (content!2890 (_2!11081 lt!703931)))))))

(assert (=> d!556370 (= lt!704081 e!1158327)))

(declare-fun c!296204 () Bool)

(assert (=> d!556370 (= c!296204 ((_ is Nil!19776) lt!703945))))

(assert (=> d!556370 (= (++!5381 lt!703945 (_2!11081 lt!703931)) lt!704081)))

(declare-fun b!1813230 () Bool)

(assert (=> b!1813230 (= e!1158327 (Cons!19776 (h!25177 lt!703945) (++!5381 (t!169251 lt!703945) (_2!11081 lt!703931))))))

(assert (= (and d!556370 c!296204) b!1813229))

(assert (= (and d!556370 (not c!296204)) b!1813230))

(assert (= (and d!556370 res!815174) b!1813231))

(assert (= (and b!1813231 res!815175) b!1813232))

(declare-fun m!2242523 () Bool)

(assert (=> b!1813231 m!2242523))

(assert (=> b!1813231 m!2241953))

(declare-fun m!2242525 () Bool)

(assert (=> b!1813231 m!2242525))

(declare-fun m!2242527 () Bool)

(assert (=> d!556370 m!2242527))

(declare-fun m!2242529 () Bool)

(assert (=> d!556370 m!2242529))

(declare-fun m!2242531 () Bool)

(assert (=> d!556370 m!2242531))

(declare-fun m!2242533 () Bool)

(assert (=> b!1813230 m!2242533))

(assert (=> b!1812840 d!556370))

(declare-fun d!556372 () Bool)

(assert (=> d!556372 (isPrefix!1791 lt!703945 (++!5381 lt!703945 (_2!11081 lt!703931)))))

(declare-fun lt!704086 () Unit!34395)

(declare-fun choose!11410 (List!19846 List!19846) Unit!34395)

(assert (=> d!556372 (= lt!704086 (choose!11410 lt!703945 (_2!11081 lt!703931)))))

(assert (=> d!556372 (= (lemmaConcatTwoListThenFirstIsPrefix!1300 lt!703945 (_2!11081 lt!703931)) lt!704086)))

(declare-fun bs!407073 () Bool)

(assert (= bs!407073 d!556372))

(assert (=> bs!407073 m!2241989))

(assert (=> bs!407073 m!2241989))

(assert (=> bs!407073 m!2241991))

(declare-fun m!2242535 () Bool)

(assert (=> bs!407073 m!2242535))

(assert (=> b!1812840 d!556372))

(declare-fun d!556374 () Bool)

(assert (=> d!556374 (isPrefix!1791 lt!703900 (++!5381 lt!703900 suffix!1421))))

(declare-fun lt!704088 () Unit!34395)

(assert (=> d!556374 (= lt!704088 (choose!11410 lt!703900 suffix!1421))))

(assert (=> d!556374 (= (lemmaConcatTwoListThenFirstIsPrefix!1300 lt!703900 suffix!1421) lt!704088)))

(declare-fun bs!407075 () Bool)

(assert (= bs!407075 d!556374))

(assert (=> bs!407075 m!2241969))

(assert (=> bs!407075 m!2241969))

(declare-fun m!2242539 () Bool)

(assert (=> bs!407075 m!2242539))

(declare-fun m!2242541 () Bool)

(assert (=> bs!407075 m!2242541))

(assert (=> b!1812840 d!556374))

(declare-fun b!1813271 () Bool)

(declare-fun e!1158354 () Bool)

(declare-fun e!1158353 () Bool)

(assert (=> b!1813271 (= e!1158354 e!1158353)))

(declare-fun res!815187 () Bool)

(assert (=> b!1813271 (=> (not res!815187) (not e!1158353))))

(declare-fun lt!704108 () Option!4129)

(assert (=> b!1813271 (= res!815187 (contains!3585 rules!3447 (get!6120 lt!704108)))))

(declare-fun d!556378 () Bool)

(assert (=> d!556378 e!1158354))

(declare-fun res!815186 () Bool)

(assert (=> d!556378 (=> res!815186 e!1158354)))

(assert (=> d!556378 (= res!815186 (isEmpty!12518 lt!704108))))

(declare-fun e!1158352 () Option!4129)

(assert (=> d!556378 (= lt!704108 e!1158352)))

(declare-fun c!296219 () Bool)

(assert (=> d!556378 (= c!296219 (and ((_ is Cons!19777) rules!3447) (= (tag!3961 (h!25178 rules!3447)) (tag!3961 (rule!5657 (_1!11081 lt!703931))))))))

(assert (=> d!556378 (rulesInvariant!2849 thiss!24550 rules!3447)))

(assert (=> d!556378 (= (getRuleFromTag!599 thiss!24550 rules!3447 (tag!3961 (rule!5657 (_1!11081 lt!703931)))) lt!704108)))

(declare-fun b!1813272 () Bool)

(assert (=> b!1813272 (= e!1158352 (Some!4128 (h!25178 rules!3447)))))

(declare-fun b!1813273 () Bool)

(declare-fun e!1158355 () Option!4129)

(assert (=> b!1813273 (= e!1158352 e!1158355)))

(declare-fun c!296220 () Bool)

(assert (=> b!1813273 (= c!296220 (and ((_ is Cons!19777) rules!3447) (not (= (tag!3961 (h!25178 rules!3447)) (tag!3961 (rule!5657 (_1!11081 lt!703931)))))))))

(declare-fun b!1813274 () Bool)

(assert (=> b!1813274 (= e!1158353 (= (tag!3961 (get!6120 lt!704108)) (tag!3961 (rule!5657 (_1!11081 lt!703931)))))))

(declare-fun b!1813275 () Bool)

(declare-fun lt!704106 () Unit!34395)

(declare-fun lt!704107 () Unit!34395)

(assert (=> b!1813275 (= lt!704106 lt!704107)))

(assert (=> b!1813275 (rulesInvariant!2849 thiss!24550 (t!169252 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!233 (LexerInterface!3180 Rule!6902 List!19847) Unit!34395)

(assert (=> b!1813275 (= lt!704107 (lemmaInvariantOnRulesThenOnTail!233 thiss!24550 (h!25178 rules!3447) (t!169252 rules!3447)))))

(assert (=> b!1813275 (= e!1158355 (getRuleFromTag!599 thiss!24550 (t!169252 rules!3447) (tag!3961 (rule!5657 (_1!11081 lt!703931)))))))

(declare-fun b!1813276 () Bool)

(assert (=> b!1813276 (= e!1158355 None!4128)))

(assert (= (and d!556378 c!296219) b!1813272))

(assert (= (and d!556378 (not c!296219)) b!1813273))

(assert (= (and b!1813273 c!296220) b!1813275))

(assert (= (and b!1813273 (not c!296220)) b!1813276))

(assert (= (and d!556378 (not res!815186)) b!1813271))

(assert (= (and b!1813271 res!815187) b!1813274))

(declare-fun m!2242589 () Bool)

(assert (=> b!1813271 m!2242589))

(assert (=> b!1813271 m!2242589))

(declare-fun m!2242591 () Bool)

(assert (=> b!1813271 m!2242591))

(declare-fun m!2242593 () Bool)

(assert (=> d!556378 m!2242593))

(assert (=> d!556378 m!2242033))

(assert (=> b!1813274 m!2242589))

(declare-fun m!2242595 () Bool)

(assert (=> b!1813275 m!2242595))

(declare-fun m!2242597 () Bool)

(assert (=> b!1813275 m!2242597))

(declare-fun m!2242599 () Bool)

(assert (=> b!1813275 m!2242599))

(assert (=> b!1812840 d!556378))

(declare-fun b!1813284 () Bool)

(declare-fun e!1158360 () Bool)

(assert (=> b!1813284 (= e!1158360 (isPrefix!1791 (tail!2683 lt!703945) (tail!2683 lt!703906)))))

(declare-fun b!1813282 () Bool)

(declare-fun e!1158359 () Bool)

(assert (=> b!1813282 (= e!1158359 e!1158360)))

(declare-fun res!815189 () Bool)

(assert (=> b!1813282 (=> (not res!815189) (not e!1158360))))

(assert (=> b!1813282 (= res!815189 (not ((_ is Nil!19776) lt!703906)))))

(declare-fun b!1813285 () Bool)

(declare-fun e!1158361 () Bool)

(assert (=> b!1813285 (= e!1158361 (>= (size!15724 lt!703906) (size!15724 lt!703945)))))

(declare-fun b!1813283 () Bool)

(declare-fun res!815190 () Bool)

(assert (=> b!1813283 (=> (not res!815190) (not e!1158360))))

(assert (=> b!1813283 (= res!815190 (= (head!4214 lt!703945) (head!4214 lt!703906)))))

(declare-fun d!556396 () Bool)

(assert (=> d!556396 e!1158361))

(declare-fun res!815192 () Bool)

(assert (=> d!556396 (=> res!815192 e!1158361)))

(declare-fun lt!704109 () Bool)

(assert (=> d!556396 (= res!815192 (not lt!704109))))

(assert (=> d!556396 (= lt!704109 e!1158359)))

(declare-fun res!815191 () Bool)

(assert (=> d!556396 (=> res!815191 e!1158359)))

(assert (=> d!556396 (= res!815191 ((_ is Nil!19776) lt!703945))))

(assert (=> d!556396 (= (isPrefix!1791 lt!703945 lt!703906) lt!704109)))

(assert (= (and d!556396 (not res!815191)) b!1813282))

(assert (= (and b!1813282 res!815189) b!1813283))

(assert (= (and b!1813283 res!815190) b!1813284))

(assert (= (and d!556396 (not res!815192)) b!1813285))

(assert (=> b!1813284 m!2242473))

(assert (=> b!1813284 m!2242427))

(assert (=> b!1813284 m!2242473))

(assert (=> b!1813284 m!2242427))

(declare-fun m!2242601 () Bool)

(assert (=> b!1813284 m!2242601))

(assert (=> b!1813285 m!2242431))

(assert (=> b!1813285 m!2241953))

(assert (=> b!1813283 m!2242481))

(assert (=> b!1813283 m!2242433))

(assert (=> b!1812840 d!556396))

(declare-fun b!1813358 () Bool)

(declare-fun res!815241 () Bool)

(declare-fun e!1158405 () Bool)

(assert (=> b!1813358 (=> (not res!815241) (not e!1158405))))

(declare-fun lt!704184 () Token!6668)

(assert (=> b!1813358 (= res!815241 (matchR!2352 (regex!3551 (get!6120 (getRuleFromTag!599 thiss!24550 rules!3447 (tag!3961 (rule!5657 lt!704184))))) (list!8051 (charsOf!2200 lt!704184))))))

(declare-fun d!556398 () Bool)

(assert (=> d!556398 (isDefined!3469 (maxPrefix!1734 thiss!24550 rules!3447 (++!5381 lt!703900 suffix!1421)))))

(declare-fun lt!704185 () Unit!34395)

(declare-fun e!1158406 () Unit!34395)

(assert (=> d!556398 (= lt!704185 e!1158406)))

(declare-fun c!296235 () Bool)

(assert (=> d!556398 (= c!296235 (isEmpty!12517 (maxPrefix!1734 thiss!24550 rules!3447 (++!5381 lt!703900 suffix!1421))))))

(declare-fun lt!704177 () Unit!34395)

(declare-fun lt!704174 () Unit!34395)

(assert (=> d!556398 (= lt!704177 lt!704174)))

(assert (=> d!556398 e!1158405))

(declare-fun res!815242 () Bool)

(assert (=> d!556398 (=> (not res!815242) (not e!1158405))))

(assert (=> d!556398 (= res!815242 (isDefined!3470 (getRuleFromTag!599 thiss!24550 rules!3447 (tag!3961 (rule!5657 lt!704184)))))))

(assert (=> d!556398 (= lt!704174 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!599 thiss!24550 rules!3447 lt!703900 lt!704184))))

(declare-fun lt!704186 () Unit!34395)

(declare-fun lt!704172 () Unit!34395)

(assert (=> d!556398 (= lt!704186 lt!704172)))

(declare-fun lt!704187 () List!19846)

(assert (=> d!556398 (isPrefix!1791 lt!704187 (++!5381 lt!703900 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!354 (List!19846 List!19846 List!19846) Unit!34395)

(assert (=> d!556398 (= lt!704172 (lemmaPrefixStaysPrefixWhenAddingToSuffix!354 lt!704187 lt!703900 suffix!1421))))

(assert (=> d!556398 (= lt!704187 (list!8051 (charsOf!2200 lt!704184)))))

(declare-fun lt!704173 () Unit!34395)

(declare-fun lt!704180 () Unit!34395)

(assert (=> d!556398 (= lt!704173 lt!704180)))

(declare-fun lt!704175 () List!19846)

(declare-fun lt!704179 () List!19846)

(assert (=> d!556398 (isPrefix!1791 lt!704175 (++!5381 lt!704175 lt!704179))))

(assert (=> d!556398 (= lt!704180 (lemmaConcatTwoListThenFirstIsPrefix!1300 lt!704175 lt!704179))))

(assert (=> d!556398 (= lt!704179 (_2!11081 (get!6119 (maxPrefix!1734 thiss!24550 rules!3447 lt!703900))))))

(assert (=> d!556398 (= lt!704175 (list!8051 (charsOf!2200 lt!704184)))))

(declare-datatypes ((List!19850 0))(
  ( (Nil!19780) (Cons!19780 (h!25181 Token!6668) (t!169315 List!19850)) )
))
(declare-fun head!4215 (List!19850) Token!6668)

(declare-datatypes ((IArray!13165 0))(
  ( (IArray!13166 (innerList!6640 List!19850)) )
))
(declare-datatypes ((Conc!6580 0))(
  ( (Node!6580 (left!15869 Conc!6580) (right!16199 Conc!6580) (csize!13390 Int) (cheight!6791 Int)) (Leaf!9576 (xs!9456 IArray!13165) (csize!13391 Int)) (Empty!6580) )
))
(declare-datatypes ((BalanceConc!13104 0))(
  ( (BalanceConc!13105 (c!296296 Conc!6580)) )
))
(declare-fun list!8054 (BalanceConc!13104) List!19850)

(declare-datatypes ((tuple2!19362 0))(
  ( (tuple2!19363 (_1!11083 BalanceConc!13104) (_2!11083 BalanceConc!13102)) )
))
(declare-fun lex!1493 (LexerInterface!3180 List!19847 BalanceConc!13102) tuple2!19362)

(assert (=> d!556398 (= lt!704184 (head!4215 (list!8054 (_1!11083 (lex!1493 thiss!24550 rules!3447 (seqFromList!2520 lt!703900))))))))

(assert (=> d!556398 (not (isEmpty!12515 rules!3447))))

(assert (=> d!556398 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!702 thiss!24550 rules!3447 lt!703900 suffix!1421) lt!704185)))

(declare-fun b!1813359 () Bool)

(assert (=> b!1813359 (= e!1158405 (= (rule!5657 lt!704184) (get!6120 (getRuleFromTag!599 thiss!24550 rules!3447 (tag!3961 (rule!5657 lt!704184))))))))

(declare-fun b!1813360 () Bool)

(declare-fun Unit!34408 () Unit!34395)

(assert (=> b!1813360 (= e!1158406 Unit!34408)))

(declare-fun lt!704178 () List!19846)

(assert (=> b!1813360 (= lt!704178 (++!5381 lt!703900 suffix!1421))))

(declare-fun lt!704181 () Unit!34395)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!362 (LexerInterface!3180 Rule!6902 List!19847 List!19846) Unit!34395)

(assert (=> b!1813360 (= lt!704181 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!362 thiss!24550 (rule!5657 lt!704184) rules!3447 lt!704178))))

(assert (=> b!1813360 (isEmpty!12517 (maxPrefixOneRule!1103 thiss!24550 (rule!5657 lt!704184) lt!704178))))

(declare-fun lt!704183 () Unit!34395)

(assert (=> b!1813360 (= lt!704183 lt!704181)))

(declare-fun lt!704171 () List!19846)

(assert (=> b!1813360 (= lt!704171 (list!8051 (charsOf!2200 lt!704184)))))

(declare-fun lt!704182 () Unit!34395)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!358 (LexerInterface!3180 Rule!6902 List!19846 List!19846) Unit!34395)

(assert (=> b!1813360 (= lt!704182 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!358 thiss!24550 (rule!5657 lt!704184) lt!704171 (++!5381 lt!703900 suffix!1421)))))

(assert (=> b!1813360 (not (matchR!2352 (regex!3551 (rule!5657 lt!704184)) lt!704171))))

(declare-fun lt!704176 () Unit!34395)

(assert (=> b!1813360 (= lt!704176 lt!704182)))

(assert (=> b!1813360 false))

(declare-fun b!1813361 () Bool)

(declare-fun Unit!34409 () Unit!34395)

(assert (=> b!1813361 (= e!1158406 Unit!34409)))

(assert (= (and d!556398 res!815242) b!1813358))

(assert (= (and b!1813358 res!815241) b!1813359))

(assert (= (and d!556398 c!296235) b!1813360))

(assert (= (and d!556398 (not c!296235)) b!1813361))

(declare-fun m!2242687 () Bool)

(assert (=> b!1813358 m!2242687))

(declare-fun m!2242689 () Bool)

(assert (=> b!1813358 m!2242689))

(declare-fun m!2242691 () Bool)

(assert (=> b!1813358 m!2242691))

(declare-fun m!2242693 () Bool)

(assert (=> b!1813358 m!2242693))

(assert (=> b!1813358 m!2242691))

(declare-fun m!2242695 () Bool)

(assert (=> b!1813358 m!2242695))

(assert (=> b!1813358 m!2242687))

(assert (=> b!1813358 m!2242695))

(declare-fun m!2242697 () Bool)

(assert (=> d!556398 m!2242697))

(assert (=> d!556398 m!2241907))

(declare-fun m!2242699 () Bool)

(assert (=> d!556398 m!2242699))

(declare-fun m!2242701 () Bool)

(assert (=> d!556398 m!2242701))

(declare-fun m!2242703 () Bool)

(assert (=> d!556398 m!2242703))

(assert (=> d!556398 m!2242699))

(declare-fun m!2242705 () Bool)

(assert (=> d!556398 m!2242705))

(assert (=> d!556398 m!2241969))

(declare-fun m!2242707 () Bool)

(assert (=> d!556398 m!2242707))

(declare-fun m!2242709 () Bool)

(assert (=> d!556398 m!2242709))

(declare-fun m!2242711 () Bool)

(assert (=> d!556398 m!2242711))

(declare-fun m!2242713 () Bool)

(assert (=> d!556398 m!2242713))

(assert (=> d!556398 m!2242707))

(declare-fun m!2242715 () Bool)

(assert (=> d!556398 m!2242715))

(assert (=> d!556398 m!2242695))

(assert (=> d!556398 m!2242687))

(declare-fun m!2242717 () Bool)

(assert (=> d!556398 m!2242717))

(assert (=> d!556398 m!2242707))

(declare-fun m!2242719 () Bool)

(assert (=> d!556398 m!2242719))

(assert (=> d!556398 m!2242695))

(assert (=> d!556398 m!2242711))

(assert (=> d!556398 m!2241969))

(assert (=> d!556398 m!2242701))

(assert (=> d!556398 m!2242691))

(assert (=> d!556398 m!2241969))

(declare-fun m!2242721 () Bool)

(assert (=> d!556398 m!2242721))

(assert (=> d!556398 m!2242691))

(declare-fun m!2242723 () Bool)

(assert (=> d!556398 m!2242723))

(assert (=> d!556398 m!2241999))

(assert (=> d!556398 m!2241999))

(declare-fun m!2242725 () Bool)

(assert (=> d!556398 m!2242725))

(assert (=> b!1813359 m!2242691))

(assert (=> b!1813359 m!2242691))

(assert (=> b!1813359 m!2242693))

(assert (=> b!1813360 m!2241969))

(declare-fun m!2242727 () Bool)

(assert (=> b!1813360 m!2242727))

(assert (=> b!1813360 m!2241969))

(declare-fun m!2242729 () Bool)

(assert (=> b!1813360 m!2242729))

(assert (=> b!1813360 m!2242695))

(assert (=> b!1813360 m!2242687))

(declare-fun m!2242731 () Bool)

(assert (=> b!1813360 m!2242731))

(assert (=> b!1813360 m!2242695))

(declare-fun m!2242733 () Bool)

(assert (=> b!1813360 m!2242733))

(declare-fun m!2242735 () Bool)

(assert (=> b!1813360 m!2242735))

(assert (=> b!1813360 m!2242733))

(assert (=> b!1812840 d!556398))

(declare-fun b!1813363 () Bool)

(declare-fun e!1158409 () Bool)

(assert (=> b!1813363 (= e!1158409 (not (= (head!4214 lt!703945) (c!296135 (regex!3551 (rule!5657 (_1!11081 lt!703931)))))))))

(declare-fun b!1813364 () Bool)

(declare-fun e!1158407 () Bool)

(assert (=> b!1813364 (= e!1158407 e!1158409)))

(declare-fun res!815250 () Bool)

(assert (=> b!1813364 (=> res!815250 e!1158409)))

(declare-fun call!114158 () Bool)

(assert (=> b!1813364 (= res!815250 call!114158)))

(declare-fun b!1813365 () Bool)

(declare-fun res!815244 () Bool)

(assert (=> b!1813365 (=> res!815244 e!1158409)))

(assert (=> b!1813365 (= res!815244 (not (isEmpty!12514 (tail!2683 lt!703945))))))

(declare-fun b!1813366 () Bool)

(declare-fun e!1158408 () Bool)

(assert (=> b!1813366 (= e!1158408 (matchR!2352 (derivativeStep!1274 (regex!3551 (rule!5657 (_1!11081 lt!703931))) (head!4214 lt!703945)) (tail!2683 lt!703945)))))

(declare-fun bm!114153 () Bool)

(assert (=> bm!114153 (= call!114158 (isEmpty!12514 lt!703945))))

(declare-fun b!1813367 () Bool)

(declare-fun e!1158410 () Bool)

(declare-fun lt!704188 () Bool)

(assert (=> b!1813367 (= e!1158410 (= lt!704188 call!114158))))

(declare-fun b!1813368 () Bool)

(declare-fun e!1158411 () Bool)

(assert (=> b!1813368 (= e!1158410 e!1158411)))

(declare-fun c!296237 () Bool)

(assert (=> b!1813368 (= c!296237 ((_ is EmptyLang!4879) (regex!3551 (rule!5657 (_1!11081 lt!703931)))))))

(declare-fun b!1813369 () Bool)

(assert (=> b!1813369 (= e!1158408 (nullable!1505 (regex!3551 (rule!5657 (_1!11081 lt!703931)))))))

(declare-fun b!1813362 () Bool)

(declare-fun res!815247 () Bool)

(declare-fun e!1158413 () Bool)

(assert (=> b!1813362 (=> (not res!815247) (not e!1158413))))

(assert (=> b!1813362 (= res!815247 (isEmpty!12514 (tail!2683 lt!703945)))))

(declare-fun d!556430 () Bool)

(assert (=> d!556430 e!1158410))

(declare-fun c!296238 () Bool)

(assert (=> d!556430 (= c!296238 ((_ is EmptyExpr!4879) (regex!3551 (rule!5657 (_1!11081 lt!703931)))))))

(assert (=> d!556430 (= lt!704188 e!1158408)))

(declare-fun c!296236 () Bool)

(assert (=> d!556430 (= c!296236 (isEmpty!12514 lt!703945))))

(assert (=> d!556430 (validRegex!1979 (regex!3551 (rule!5657 (_1!11081 lt!703931))))))

(assert (=> d!556430 (= (matchR!2352 (regex!3551 (rule!5657 (_1!11081 lt!703931))) lt!703945) lt!704188)))

(declare-fun b!1813370 () Bool)

(assert (=> b!1813370 (= e!1158413 (= (head!4214 lt!703945) (c!296135 (regex!3551 (rule!5657 (_1!11081 lt!703931))))))))

(declare-fun b!1813371 () Bool)

(declare-fun e!1158412 () Bool)

(assert (=> b!1813371 (= e!1158412 e!1158407)))

(declare-fun res!815248 () Bool)

(assert (=> b!1813371 (=> (not res!815248) (not e!1158407))))

(assert (=> b!1813371 (= res!815248 (not lt!704188))))

(declare-fun b!1813372 () Bool)

(assert (=> b!1813372 (= e!1158411 (not lt!704188))))

(declare-fun b!1813373 () Bool)

(declare-fun res!815245 () Bool)

(assert (=> b!1813373 (=> res!815245 e!1158412)))

(assert (=> b!1813373 (= res!815245 e!1158413)))

(declare-fun res!815249 () Bool)

(assert (=> b!1813373 (=> (not res!815249) (not e!1158413))))

(assert (=> b!1813373 (= res!815249 lt!704188)))

(declare-fun b!1813374 () Bool)

(declare-fun res!815243 () Bool)

(assert (=> b!1813374 (=> (not res!815243) (not e!1158413))))

(assert (=> b!1813374 (= res!815243 (not call!114158))))

(declare-fun b!1813375 () Bool)

(declare-fun res!815246 () Bool)

(assert (=> b!1813375 (=> res!815246 e!1158412)))

(assert (=> b!1813375 (= res!815246 (not ((_ is ElementMatch!4879) (regex!3551 (rule!5657 (_1!11081 lt!703931))))))))

(assert (=> b!1813375 (= e!1158411 e!1158412)))

(assert (= (and d!556430 c!296236) b!1813369))

(assert (= (and d!556430 (not c!296236)) b!1813366))

(assert (= (and d!556430 c!296238) b!1813367))

(assert (= (and d!556430 (not c!296238)) b!1813368))

(assert (= (and b!1813368 c!296237) b!1813372))

(assert (= (and b!1813368 (not c!296237)) b!1813375))

(assert (= (and b!1813375 (not res!815246)) b!1813373))

(assert (= (and b!1813373 res!815249) b!1813374))

(assert (= (and b!1813374 res!815243) b!1813362))

(assert (= (and b!1813362 res!815247) b!1813370))

(assert (= (and b!1813373 (not res!815245)) b!1813371))

(assert (= (and b!1813371 res!815248) b!1813364))

(assert (= (and b!1813364 (not res!815250)) b!1813365))

(assert (= (and b!1813365 (not res!815244)) b!1813363))

(assert (= (or b!1813367 b!1813364 b!1813374) bm!114153))

(declare-fun m!2242737 () Bool)

(assert (=> d!556430 m!2242737))

(declare-fun m!2242739 () Bool)

(assert (=> d!556430 m!2242739))

(assert (=> b!1813366 m!2242481))

(assert (=> b!1813366 m!2242481))

(declare-fun m!2242741 () Bool)

(assert (=> b!1813366 m!2242741))

(assert (=> b!1813366 m!2242473))

(assert (=> b!1813366 m!2242741))

(assert (=> b!1813366 m!2242473))

(declare-fun m!2242743 () Bool)

(assert (=> b!1813366 m!2242743))

(assert (=> bm!114153 m!2242737))

(assert (=> b!1813365 m!2242473))

(assert (=> b!1813365 m!2242473))

(declare-fun m!2242745 () Bool)

(assert (=> b!1813365 m!2242745))

(declare-fun m!2242747 () Bool)

(assert (=> b!1813369 m!2242747))

(assert (=> b!1813363 m!2242481))

(assert (=> b!1813370 m!2242481))

(assert (=> b!1813362 m!2242473))

(assert (=> b!1813362 m!2242473))

(assert (=> b!1813362 m!2242745))

(assert (=> b!1812819 d!556430))

(declare-fun d!556432 () Bool)

(declare-fun isBalanced!2059 (Conc!6579) Bool)

(assert (=> d!556432 (= (inv!25783 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931)))) (isBalanced!2059 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931))))))))

(declare-fun bs!407083 () Bool)

(assert (= bs!407083 d!556432))

(declare-fun m!2242749 () Bool)

(assert (=> bs!407083 m!2242749))

(assert (=> tb!110779 d!556432))

(declare-fun b!1813384 () Bool)

(declare-fun e!1158420 () Int)

(assert (=> b!1813384 (= e!1158420 0)))

(declare-fun b!1813387 () Bool)

(declare-fun e!1158419 () Int)

(assert (=> b!1813387 (= e!1158419 (- 1))))

(declare-fun b!1813385 () Bool)

(assert (=> b!1813385 (= e!1158420 e!1158419)))

(declare-fun c!296243 () Bool)

(assert (=> b!1813385 (= c!296243 (and ((_ is Cons!19777) rules!3447) (not (= (h!25178 rules!3447) (rule!5657 (_1!11081 lt!703931))))))))

(declare-fun d!556434 () Bool)

(declare-fun lt!704191 () Int)

(assert (=> d!556434 (>= lt!704191 0)))

(assert (=> d!556434 (= lt!704191 e!1158420)))

(declare-fun c!296244 () Bool)

(assert (=> d!556434 (= c!296244 (and ((_ is Cons!19777) rules!3447) (= (h!25178 rules!3447) (rule!5657 (_1!11081 lt!703931)))))))

(assert (=> d!556434 (contains!3585 rules!3447 (rule!5657 (_1!11081 lt!703931)))))

(assert (=> d!556434 (= (getIndex!216 rules!3447 (rule!5657 (_1!11081 lt!703931))) lt!704191)))

(declare-fun b!1813386 () Bool)

(assert (=> b!1813386 (= e!1158419 (+ 1 (getIndex!216 (t!169252 rules!3447) (rule!5657 (_1!11081 lt!703931)))))))

(assert (= (and d!556434 c!296244) b!1813384))

(assert (= (and d!556434 (not c!296244)) b!1813385))

(assert (= (and b!1813385 c!296243) b!1813386))

(assert (= (and b!1813385 (not c!296243)) b!1813387))

(assert (=> d!556434 m!2242005))

(declare-fun m!2242751 () Bool)

(assert (=> b!1813386 m!2242751))

(assert (=> b!1812841 d!556434))

(declare-fun b!1813388 () Bool)

(declare-fun e!1158422 () Int)

(assert (=> b!1813388 (= e!1158422 0)))

(declare-fun b!1813391 () Bool)

(declare-fun e!1158421 () Int)

(assert (=> b!1813391 (= e!1158421 (- 1))))

(declare-fun b!1813389 () Bool)

(assert (=> b!1813389 (= e!1158422 e!1158421)))

(declare-fun c!296245 () Bool)

(assert (=> b!1813389 (= c!296245 (and ((_ is Cons!19777) rules!3447) (not (= (h!25178 rules!3447) (rule!5657 token!523)))))))

(declare-fun d!556436 () Bool)

(declare-fun lt!704192 () Int)

(assert (=> d!556436 (>= lt!704192 0)))

(assert (=> d!556436 (= lt!704192 e!1158422)))

(declare-fun c!296246 () Bool)

(assert (=> d!556436 (= c!296246 (and ((_ is Cons!19777) rules!3447) (= (h!25178 rules!3447) (rule!5657 token!523))))))

(assert (=> d!556436 (contains!3585 rules!3447 (rule!5657 token!523))))

(assert (=> d!556436 (= (getIndex!216 rules!3447 (rule!5657 token!523)) lt!704192)))

(declare-fun b!1813390 () Bool)

(assert (=> b!1813390 (= e!1158421 (+ 1 (getIndex!216 (t!169252 rules!3447) (rule!5657 token!523))))))

(assert (= (and d!556436 c!296246) b!1813388))

(assert (= (and d!556436 (not c!296246)) b!1813389))

(assert (= (and b!1813389 c!296245) b!1813390))

(assert (= (and b!1813389 (not c!296245)) b!1813391))

(declare-fun m!2242753 () Bool)

(assert (=> d!556436 m!2242753))

(declare-fun m!2242755 () Bool)

(assert (=> b!1813390 m!2242755))

(assert (=> b!1812841 d!556436))

(declare-fun d!556438 () Bool)

(assert (=> d!556438 (= (inv!25775 (tag!3961 (h!25178 rules!3447))) (= (mod (str.len (value!110875 (tag!3961 (h!25178 rules!3447)))) 2) 0))))

(assert (=> b!1812836 d!556438))

(declare-fun d!556440 () Bool)

(declare-fun res!815251 () Bool)

(declare-fun e!1158423 () Bool)

(assert (=> d!556440 (=> (not res!815251) (not e!1158423))))

(assert (=> d!556440 (= res!815251 (semiInverseModEq!1420 (toChars!4941 (transformation!3551 (h!25178 rules!3447))) (toValue!5082 (transformation!3551 (h!25178 rules!3447)))))))

(assert (=> d!556440 (= (inv!25780 (transformation!3551 (h!25178 rules!3447))) e!1158423)))

(declare-fun b!1813392 () Bool)

(assert (=> b!1813392 (= e!1158423 (equivClasses!1361 (toChars!4941 (transformation!3551 (h!25178 rules!3447))) (toValue!5082 (transformation!3551 (h!25178 rules!3447)))))))

(assert (= (and d!556440 res!815251) b!1813392))

(declare-fun m!2242757 () Bool)

(assert (=> d!556440 m!2242757))

(declare-fun m!2242759 () Bool)

(assert (=> b!1813392 m!2242759))

(assert (=> b!1812836 d!556440))

(declare-fun b!1813394 () Bool)

(declare-fun e!1158426 () Bool)

(assert (=> b!1813394 (= e!1158426 (not (= (head!4214 lt!703945) (c!296135 lt!703927))))))

(declare-fun b!1813395 () Bool)

(declare-fun e!1158424 () Bool)

(assert (=> b!1813395 (= e!1158424 e!1158426)))

(declare-fun res!815259 () Bool)

(assert (=> b!1813395 (=> res!815259 e!1158426)))

(declare-fun call!114159 () Bool)

(assert (=> b!1813395 (= res!815259 call!114159)))

(declare-fun b!1813396 () Bool)

(declare-fun res!815253 () Bool)

(assert (=> b!1813396 (=> res!815253 e!1158426)))

(assert (=> b!1813396 (= res!815253 (not (isEmpty!12514 (tail!2683 lt!703945))))))

(declare-fun b!1813397 () Bool)

(declare-fun e!1158425 () Bool)

(assert (=> b!1813397 (= e!1158425 (matchR!2352 (derivativeStep!1274 lt!703927 (head!4214 lt!703945)) (tail!2683 lt!703945)))))

(declare-fun bm!114154 () Bool)

(assert (=> bm!114154 (= call!114159 (isEmpty!12514 lt!703945))))

(declare-fun b!1813398 () Bool)

(declare-fun e!1158427 () Bool)

(declare-fun lt!704193 () Bool)

(assert (=> b!1813398 (= e!1158427 (= lt!704193 call!114159))))

(declare-fun b!1813399 () Bool)

(declare-fun e!1158428 () Bool)

(assert (=> b!1813399 (= e!1158427 e!1158428)))

(declare-fun c!296248 () Bool)

(assert (=> b!1813399 (= c!296248 ((_ is EmptyLang!4879) lt!703927))))

(declare-fun b!1813400 () Bool)

(assert (=> b!1813400 (= e!1158425 (nullable!1505 lt!703927))))

(declare-fun b!1813393 () Bool)

(declare-fun res!815256 () Bool)

(declare-fun e!1158430 () Bool)

(assert (=> b!1813393 (=> (not res!815256) (not e!1158430))))

(assert (=> b!1813393 (= res!815256 (isEmpty!12514 (tail!2683 lt!703945)))))

(declare-fun d!556442 () Bool)

(assert (=> d!556442 e!1158427))

(declare-fun c!296249 () Bool)

(assert (=> d!556442 (= c!296249 ((_ is EmptyExpr!4879) lt!703927))))

(assert (=> d!556442 (= lt!704193 e!1158425)))

(declare-fun c!296247 () Bool)

(assert (=> d!556442 (= c!296247 (isEmpty!12514 lt!703945))))

(assert (=> d!556442 (validRegex!1979 lt!703927)))

(assert (=> d!556442 (= (matchR!2352 lt!703927 lt!703945) lt!704193)))

(declare-fun b!1813401 () Bool)

(assert (=> b!1813401 (= e!1158430 (= (head!4214 lt!703945) (c!296135 lt!703927)))))

(declare-fun b!1813402 () Bool)

(declare-fun e!1158429 () Bool)

(assert (=> b!1813402 (= e!1158429 e!1158424)))

(declare-fun res!815257 () Bool)

(assert (=> b!1813402 (=> (not res!815257) (not e!1158424))))

(assert (=> b!1813402 (= res!815257 (not lt!704193))))

(declare-fun b!1813403 () Bool)

(assert (=> b!1813403 (= e!1158428 (not lt!704193))))

(declare-fun b!1813404 () Bool)

(declare-fun res!815254 () Bool)

(assert (=> b!1813404 (=> res!815254 e!1158429)))

(assert (=> b!1813404 (= res!815254 e!1158430)))

(declare-fun res!815258 () Bool)

(assert (=> b!1813404 (=> (not res!815258) (not e!1158430))))

(assert (=> b!1813404 (= res!815258 lt!704193)))

(declare-fun b!1813405 () Bool)

(declare-fun res!815252 () Bool)

(assert (=> b!1813405 (=> (not res!815252) (not e!1158430))))

(assert (=> b!1813405 (= res!815252 (not call!114159))))

(declare-fun b!1813406 () Bool)

(declare-fun res!815255 () Bool)

(assert (=> b!1813406 (=> res!815255 e!1158429)))

(assert (=> b!1813406 (= res!815255 (not ((_ is ElementMatch!4879) lt!703927)))))

(assert (=> b!1813406 (= e!1158428 e!1158429)))

(assert (= (and d!556442 c!296247) b!1813400))

(assert (= (and d!556442 (not c!296247)) b!1813397))

(assert (= (and d!556442 c!296249) b!1813398))

(assert (= (and d!556442 (not c!296249)) b!1813399))

(assert (= (and b!1813399 c!296248) b!1813403))

(assert (= (and b!1813399 (not c!296248)) b!1813406))

(assert (= (and b!1813406 (not res!815255)) b!1813404))

(assert (= (and b!1813404 res!815258) b!1813405))

(assert (= (and b!1813405 res!815252) b!1813393))

(assert (= (and b!1813393 res!815256) b!1813401))

(assert (= (and b!1813404 (not res!815254)) b!1813402))

(assert (= (and b!1813402 res!815257) b!1813395))

(assert (= (and b!1813395 (not res!815259)) b!1813396))

(assert (= (and b!1813396 (not res!815253)) b!1813394))

(assert (= (or b!1813398 b!1813395 b!1813405) bm!114154))

(assert (=> d!556442 m!2242737))

(assert (=> d!556442 m!2242157))

(assert (=> b!1813397 m!2242481))

(assert (=> b!1813397 m!2242481))

(declare-fun m!2242761 () Bool)

(assert (=> b!1813397 m!2242761))

(assert (=> b!1813397 m!2242473))

(assert (=> b!1813397 m!2242761))

(assert (=> b!1813397 m!2242473))

(declare-fun m!2242763 () Bool)

(assert (=> b!1813397 m!2242763))

(assert (=> bm!114154 m!2242737))

(assert (=> b!1813396 m!2242473))

(assert (=> b!1813396 m!2242473))

(assert (=> b!1813396 m!2242745))

(assert (=> b!1813400 m!2242169))

(assert (=> b!1813394 m!2242481))

(assert (=> b!1813401 m!2242481))

(assert (=> b!1813393 m!2242473))

(assert (=> b!1813393 m!2242473))

(assert (=> b!1813393 m!2242745))

(assert (=> b!1812815 d!556442))

(declare-fun d!556444 () Bool)

(assert (=> d!556444 (isPrefix!1791 (++!5381 lt!703900 (Cons!19776 (head!4214 (getSuffix!958 lt!703906 lt!703900)) Nil!19776)) lt!703906)))

(declare-fun lt!704196 () Unit!34395)

(declare-fun choose!11413 (List!19846 List!19846) Unit!34395)

(assert (=> d!556444 (= lt!704196 (choose!11413 lt!703900 lt!703906))))

(assert (=> d!556444 (isPrefix!1791 lt!703900 lt!703906)))

(assert (=> d!556444 (= (lemmaAddHeadSuffixToPrefixStillPrefix!327 lt!703900 lt!703906) lt!704196)))

(declare-fun bs!407084 () Bool)

(assert (= bs!407084 d!556444))

(declare-fun m!2242765 () Bool)

(assert (=> bs!407084 m!2242765))

(declare-fun m!2242767 () Bool)

(assert (=> bs!407084 m!2242767))

(assert (=> bs!407084 m!2241963))

(assert (=> bs!407084 m!2241937))

(assert (=> bs!407084 m!2242765))

(declare-fun m!2242769 () Bool)

(assert (=> bs!407084 m!2242769))

(assert (=> bs!407084 m!2241937))

(declare-fun m!2242771 () Bool)

(assert (=> bs!407084 m!2242771))

(assert (=> b!1812815 d!556444))

(declare-fun b!1813409 () Bool)

(declare-fun e!1158432 () Bool)

(assert (=> b!1813409 (= e!1158432 (isPrefix!1791 (tail!2683 lt!703930) (tail!2683 lt!703945)))))

(declare-fun b!1813407 () Bool)

(declare-fun e!1158431 () Bool)

(assert (=> b!1813407 (= e!1158431 e!1158432)))

(declare-fun res!815260 () Bool)

(assert (=> b!1813407 (=> (not res!815260) (not e!1158432))))

(assert (=> b!1813407 (= res!815260 (not ((_ is Nil!19776) lt!703945)))))

(declare-fun b!1813410 () Bool)

(declare-fun e!1158433 () Bool)

(assert (=> b!1813410 (= e!1158433 (>= (size!15724 lt!703945) (size!15724 lt!703930)))))

(declare-fun b!1813408 () Bool)

(declare-fun res!815261 () Bool)

(assert (=> b!1813408 (=> (not res!815261) (not e!1158432))))

(assert (=> b!1813408 (= res!815261 (= (head!4214 lt!703930) (head!4214 lt!703945)))))

(declare-fun d!556446 () Bool)

(assert (=> d!556446 e!1158433))

(declare-fun res!815263 () Bool)

(assert (=> d!556446 (=> res!815263 e!1158433)))

(declare-fun lt!704197 () Bool)

(assert (=> d!556446 (= res!815263 (not lt!704197))))

(assert (=> d!556446 (= lt!704197 e!1158431)))

(declare-fun res!815262 () Bool)

(assert (=> d!556446 (=> res!815262 e!1158431)))

(assert (=> d!556446 (= res!815262 ((_ is Nil!19776) lt!703930))))

(assert (=> d!556446 (= (isPrefix!1791 lt!703930 lt!703945) lt!704197)))

(assert (= (and d!556446 (not res!815262)) b!1813407))

(assert (= (and b!1813407 res!815260) b!1813408))

(assert (= (and b!1813408 res!815261) b!1813409))

(assert (= (and d!556446 (not res!815263)) b!1813410))

(assert (=> b!1813409 m!2242285))

(assert (=> b!1813409 m!2242473))

(assert (=> b!1813409 m!2242285))

(assert (=> b!1813409 m!2242473))

(declare-fun m!2242773 () Bool)

(assert (=> b!1813409 m!2242773))

(assert (=> b!1813410 m!2241953))

(declare-fun m!2242775 () Bool)

(assert (=> b!1813410 m!2242775))

(assert (=> b!1813408 m!2242281))

(assert (=> b!1813408 m!2242481))

(assert (=> b!1812815 d!556446))

(declare-fun d!556448 () Bool)

(assert (=> d!556448 (= suffix!1421 lt!703912)))

(declare-fun lt!704200 () Unit!34395)

(declare-fun choose!11414 (List!19846 List!19846 List!19846 List!19846 List!19846) Unit!34395)

(assert (=> d!556448 (= lt!704200 (choose!11414 lt!703900 suffix!1421 lt!703900 lt!703912 lt!703906))))

(assert (=> d!556448 (isPrefix!1791 lt!703900 lt!703906)))

(assert (=> d!556448 (= (lemmaSamePrefixThenSameSuffix!902 lt!703900 suffix!1421 lt!703900 lt!703912 lt!703906) lt!704200)))

(declare-fun bs!407085 () Bool)

(assert (= bs!407085 d!556448))

(declare-fun m!2242777 () Bool)

(assert (=> bs!407085 m!2242777))

(assert (=> bs!407085 m!2241963))

(assert (=> b!1812815 d!556448))

(declare-fun d!556450 () Bool)

(assert (=> d!556450 (= (head!4214 lt!703912) (h!25177 lt!703912))))

(assert (=> b!1812815 d!556450))

(declare-fun d!556452 () Bool)

(declare-fun lt!704237 () List!19846)

(assert (=> d!556452 (= (++!5381 lt!703900 lt!704237) lt!703906)))

(declare-fun e!1158440 () List!19846)

(assert (=> d!556452 (= lt!704237 e!1158440)))

(declare-fun c!296254 () Bool)

(assert (=> d!556452 (= c!296254 ((_ is Cons!19776) lt!703900))))

(assert (=> d!556452 (>= (size!15724 lt!703906) (size!15724 lt!703900))))

(assert (=> d!556452 (= (getSuffix!958 lt!703906 lt!703900) lt!704237)))

(declare-fun b!1813423 () Bool)

(assert (=> b!1813423 (= e!1158440 (getSuffix!958 (tail!2683 lt!703906) (t!169251 lt!703900)))))

(declare-fun b!1813424 () Bool)

(assert (=> b!1813424 (= e!1158440 lt!703906)))

(assert (= (and d!556452 c!296254) b!1813423))

(assert (= (and d!556452 (not c!296254)) b!1813424))

(declare-fun m!2242779 () Bool)

(assert (=> d!556452 m!2242779))

(assert (=> d!556452 m!2242431))

(assert (=> d!556452 m!2242299))

(assert (=> b!1813423 m!2242427))

(assert (=> b!1813423 m!2242427))

(declare-fun m!2242781 () Bool)

(assert (=> b!1813423 m!2242781))

(assert (=> b!1812815 d!556452))

(declare-fun b!1813425 () Bool)

(declare-fun e!1158441 () List!19846)

(assert (=> b!1813425 (= e!1158441 (Cons!19776 (head!4214 lt!703912) Nil!19776))))

(declare-fun lt!704238 () List!19846)

(declare-fun e!1158442 () Bool)

(declare-fun b!1813428 () Bool)

(assert (=> b!1813428 (= e!1158442 (or (not (= (Cons!19776 (head!4214 lt!703912) Nil!19776) Nil!19776)) (= lt!704238 lt!703900)))))

(declare-fun b!1813427 () Bool)

(declare-fun res!815269 () Bool)

(assert (=> b!1813427 (=> (not res!815269) (not e!1158442))))

(assert (=> b!1813427 (= res!815269 (= (size!15724 lt!704238) (+ (size!15724 lt!703900) (size!15724 (Cons!19776 (head!4214 lt!703912) Nil!19776)))))))

(declare-fun d!556454 () Bool)

(assert (=> d!556454 e!1158442))

(declare-fun res!815268 () Bool)

(assert (=> d!556454 (=> (not res!815268) (not e!1158442))))

(assert (=> d!556454 (= res!815268 (= (content!2890 lt!704238) ((_ map or) (content!2890 lt!703900) (content!2890 (Cons!19776 (head!4214 lt!703912) Nil!19776)))))))

(assert (=> d!556454 (= lt!704238 e!1158441)))

(declare-fun c!296255 () Bool)

(assert (=> d!556454 (= c!296255 ((_ is Nil!19776) lt!703900))))

(assert (=> d!556454 (= (++!5381 lt!703900 (Cons!19776 (head!4214 lt!703912) Nil!19776)) lt!704238)))

(declare-fun b!1813426 () Bool)

(assert (=> b!1813426 (= e!1158441 (Cons!19776 (h!25177 lt!703900) (++!5381 (t!169251 lt!703900) (Cons!19776 (head!4214 lt!703912) Nil!19776))))))

(assert (= (and d!556454 c!296255) b!1813425))

(assert (= (and d!556454 (not c!296255)) b!1813426))

(assert (= (and d!556454 res!815268) b!1813427))

(assert (= (and b!1813427 res!815269) b!1813428))

(declare-fun m!2242783 () Bool)

(assert (=> b!1813427 m!2242783))

(assert (=> b!1813427 m!2242299))

(declare-fun m!2242785 () Bool)

(assert (=> b!1813427 m!2242785))

(declare-fun m!2242787 () Bool)

(assert (=> d!556454 m!2242787))

(assert (=> d!556454 m!2242305))

(declare-fun m!2242789 () Bool)

(assert (=> d!556454 m!2242789))

(declare-fun m!2242791 () Bool)

(assert (=> b!1813426 m!2242791))

(assert (=> b!1812815 d!556454))

(declare-fun d!556456 () Bool)

(assert (=> d!556456 (isPrefix!1791 lt!703930 lt!703945)))

(declare-fun lt!704241 () Unit!34395)

(declare-fun choose!11415 (List!19846 List!19846 List!19846) Unit!34395)

(assert (=> d!556456 (= lt!704241 (choose!11415 lt!703945 lt!703930 lt!703906))))

(assert (=> d!556456 (isPrefix!1791 lt!703945 lt!703906)))

(assert (=> d!556456 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!199 lt!703945 lt!703930 lt!703906) lt!704241)))

(declare-fun bs!407086 () Bool)

(assert (= bs!407086 d!556456))

(assert (=> bs!407086 m!2241931))

(declare-fun m!2242793 () Bool)

(assert (=> bs!407086 m!2242793))

(assert (=> bs!407086 m!2241981))

(assert (=> b!1812815 d!556456))

(declare-fun d!556458 () Bool)

(assert (=> d!556458 (matchR!2352 (rulesRegex!907 thiss!24550 rules!3447) (list!8051 (charsOf!2200 (_1!11081 lt!703931))))))

(declare-fun lt!704242 () Unit!34395)

(assert (=> d!556458 (= lt!704242 (choose!11400 thiss!24550 rules!3447 lt!703906 (_1!11081 lt!703931) (rule!5657 (_1!11081 lt!703931)) (_2!11081 lt!703931)))))

(assert (=> d!556458 (not (isEmpty!12515 rules!3447))))

(assert (=> d!556458 (= (lemmaMaxPrefixThenMatchesRulesRegex!258 thiss!24550 rules!3447 lt!703906 (_1!11081 lt!703931) (rule!5657 (_1!11081 lt!703931)) (_2!11081 lt!703931)) lt!704242)))

(declare-fun bs!407087 () Bool)

(assert (= bs!407087 d!556458))

(assert (=> bs!407087 m!2241917))

(assert (=> bs!407087 m!2241907))

(assert (=> bs!407087 m!2241917))

(assert (=> bs!407087 m!2242011))

(declare-fun m!2242795 () Bool)

(assert (=> bs!407087 m!2242795))

(declare-fun m!2242797 () Bool)

(assert (=> bs!407087 m!2242797))

(assert (=> bs!407087 m!2241973))

(assert (=> bs!407087 m!2241973))

(assert (=> bs!407087 m!2242011))

(assert (=> b!1812815 d!556458))

(declare-fun d!556460 () Bool)

(assert (=> d!556460 (not (matchR!2352 lt!703927 lt!703945))))

(declare-fun lt!704262 () Unit!34395)

(declare-fun choose!11416 (Regex!4879 List!19846 List!19846) Unit!34395)

(assert (=> d!556460 (= lt!704262 (choose!11416 lt!703927 lt!703930 lt!703945))))

(assert (=> d!556460 (validRegex!1979 lt!703927)))

(assert (=> d!556460 (= (lemmaNotPrefixMatchThenCannotMatchLonger!190 lt!703927 lt!703930 lt!703945) lt!704262)))

(declare-fun bs!407088 () Bool)

(assert (= bs!407088 d!556460))

(assert (=> bs!407088 m!2241919))

(declare-fun m!2242799 () Bool)

(assert (=> bs!407088 m!2242799))

(assert (=> bs!407088 m!2242157))

(assert (=> b!1812815 d!556460))

(declare-fun b!1813435 () Bool)

(declare-fun e!1158446 () Bool)

(assert (=> b!1813435 (= e!1158446 (isPrefix!1791 (tail!2683 (++!5381 lt!703900 (Cons!19776 (head!4214 lt!703912) Nil!19776))) (tail!2683 lt!703906)))))

(declare-fun b!1813433 () Bool)

(declare-fun e!1158445 () Bool)

(assert (=> b!1813433 (= e!1158445 e!1158446)))

(declare-fun res!815272 () Bool)

(assert (=> b!1813433 (=> (not res!815272) (not e!1158446))))

(assert (=> b!1813433 (= res!815272 (not ((_ is Nil!19776) lt!703906)))))

(declare-fun e!1158447 () Bool)

(declare-fun b!1813436 () Bool)

(assert (=> b!1813436 (= e!1158447 (>= (size!15724 lt!703906) (size!15724 (++!5381 lt!703900 (Cons!19776 (head!4214 lt!703912) Nil!19776)))))))

(declare-fun b!1813434 () Bool)

(declare-fun res!815273 () Bool)

(assert (=> b!1813434 (=> (not res!815273) (not e!1158446))))

(assert (=> b!1813434 (= res!815273 (= (head!4214 (++!5381 lt!703900 (Cons!19776 (head!4214 lt!703912) Nil!19776))) (head!4214 lt!703906)))))

(declare-fun d!556462 () Bool)

(assert (=> d!556462 e!1158447))

(declare-fun res!815275 () Bool)

(assert (=> d!556462 (=> res!815275 e!1158447)))

(declare-fun lt!704263 () Bool)

(assert (=> d!556462 (= res!815275 (not lt!704263))))

(assert (=> d!556462 (= lt!704263 e!1158445)))

(declare-fun res!815274 () Bool)

(assert (=> d!556462 (=> res!815274 e!1158445)))

(assert (=> d!556462 (= res!815274 ((_ is Nil!19776) (++!5381 lt!703900 (Cons!19776 (head!4214 lt!703912) Nil!19776))))))

(assert (=> d!556462 (= (isPrefix!1791 (++!5381 lt!703900 (Cons!19776 (head!4214 lt!703912) Nil!19776)) lt!703906) lt!704263)))

(assert (= (and d!556462 (not res!815274)) b!1813433))

(assert (= (and b!1813433 res!815272) b!1813434))

(assert (= (and b!1813434 res!815273) b!1813435))

(assert (= (and d!556462 (not res!815275)) b!1813436))

(assert (=> b!1813435 m!2241921))

(declare-fun m!2242815 () Bool)

(assert (=> b!1813435 m!2242815))

(assert (=> b!1813435 m!2242427))

(assert (=> b!1813435 m!2242815))

(assert (=> b!1813435 m!2242427))

(declare-fun m!2242821 () Bool)

(assert (=> b!1813435 m!2242821))

(assert (=> b!1813436 m!2242431))

(assert (=> b!1813436 m!2241921))

(declare-fun m!2242825 () Bool)

(assert (=> b!1813436 m!2242825))

(assert (=> b!1813434 m!2241921))

(declare-fun m!2242829 () Bool)

(assert (=> b!1813434 m!2242829))

(assert (=> b!1813434 m!2242433))

(assert (=> b!1812815 d!556462))

(declare-fun d!556464 () Bool)

(declare-fun c!296260 () Bool)

(assert (=> d!556464 (= c!296260 ((_ is Node!6579) (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931))))))))

(declare-fun e!1158454 () Bool)

(assert (=> d!556464 (= (inv!25782 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931))))) e!1158454)))

(declare-fun b!1813447 () Bool)

(declare-fun inv!25786 (Conc!6579) Bool)

(assert (=> b!1813447 (= e!1158454 (inv!25786 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931))))))))

(declare-fun b!1813448 () Bool)

(declare-fun e!1158455 () Bool)

(assert (=> b!1813448 (= e!1158454 e!1158455)))

(declare-fun res!815280 () Bool)

(assert (=> b!1813448 (= res!815280 (not ((_ is Leaf!9575) (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931)))))))))

(assert (=> b!1813448 (=> res!815280 e!1158455)))

(declare-fun b!1813449 () Bool)

(declare-fun inv!25787 (Conc!6579) Bool)

(assert (=> b!1813449 (= e!1158455 (inv!25787 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931))))))))

(assert (= (and d!556464 c!296260) b!1813447))

(assert (= (and d!556464 (not c!296260)) b!1813448))

(assert (= (and b!1813448 (not res!815280)) b!1813449))

(declare-fun m!2242869 () Bool)

(assert (=> b!1813447 m!2242869))

(declare-fun m!2242871 () Bool)

(assert (=> b!1813449 m!2242871))

(assert (=> b!1812859 d!556464))

(declare-fun d!556470 () Bool)

(declare-fun res!815283 () Bool)

(declare-fun e!1158458 () Bool)

(assert (=> d!556470 (=> (not res!815283) (not e!1158458))))

(declare-fun rulesValid!1345 (LexerInterface!3180 List!19847) Bool)

(assert (=> d!556470 (= res!815283 (rulesValid!1345 thiss!24550 rules!3447))))

(assert (=> d!556470 (= (rulesInvariant!2849 thiss!24550 rules!3447) e!1158458)))

(declare-fun b!1813452 () Bool)

(declare-datatypes ((List!19852 0))(
  ( (Nil!19782) (Cons!19782 (h!25183 String!22537) (t!169317 List!19852)) )
))
(declare-fun noDuplicateTag!1345 (LexerInterface!3180 List!19847 List!19852) Bool)

(assert (=> b!1813452 (= e!1158458 (noDuplicateTag!1345 thiss!24550 rules!3447 Nil!19782))))

(assert (= (and d!556470 res!815283) b!1813452))

(declare-fun m!2242873 () Bool)

(assert (=> d!556470 m!2242873))

(declare-fun m!2242875 () Bool)

(assert (=> b!1813452 m!2242875))

(assert (=> b!1812837 d!556470))

(declare-fun d!556472 () Bool)

(declare-fun lt!704269 () Bool)

(declare-fun content!2891 (List!19847) (InoxSet Rule!6902))

(assert (=> d!556472 (= lt!704269 (select (content!2891 rules!3447) rule!422))))

(declare-fun e!1158465 () Bool)

(assert (=> d!556472 (= lt!704269 e!1158465)))

(declare-fun res!815293 () Bool)

(assert (=> d!556472 (=> (not res!815293) (not e!1158465))))

(assert (=> d!556472 (= res!815293 ((_ is Cons!19777) rules!3447))))

(assert (=> d!556472 (= (contains!3585 rules!3447 rule!422) lt!704269)))

(declare-fun b!1813461 () Bool)

(declare-fun e!1158466 () Bool)

(assert (=> b!1813461 (= e!1158465 e!1158466)))

(declare-fun res!815292 () Bool)

(assert (=> b!1813461 (=> res!815292 e!1158466)))

(assert (=> b!1813461 (= res!815292 (= (h!25178 rules!3447) rule!422))))

(declare-fun b!1813462 () Bool)

(assert (=> b!1813462 (= e!1158466 (contains!3585 (t!169252 rules!3447) rule!422))))

(assert (= (and d!556472 res!815293) b!1813461))

(assert (= (and b!1813461 (not res!815292)) b!1813462))

(declare-fun m!2242877 () Bool)

(assert (=> d!556472 m!2242877))

(declare-fun m!2242879 () Bool)

(assert (=> d!556472 m!2242879))

(declare-fun m!2242881 () Bool)

(assert (=> b!1813462 m!2242881))

(assert (=> b!1812838 d!556472))

(declare-fun d!556474 () Bool)

(assert (=> d!556474 (= (isEmpty!12515 rules!3447) ((_ is Nil!19777) rules!3447))))

(assert (=> b!1812817 d!556474))

(declare-fun b!1813464 () Bool)

(declare-fun e!1158469 () Bool)

(assert (=> b!1813464 (= e!1158469 (not (= (head!4214 lt!703900) (c!296135 (regex!3551 rule!422)))))))

(declare-fun b!1813465 () Bool)

(declare-fun e!1158467 () Bool)

(assert (=> b!1813465 (= e!1158467 e!1158469)))

(declare-fun res!815301 () Bool)

(assert (=> b!1813465 (=> res!815301 e!1158469)))

(declare-fun call!114160 () Bool)

(assert (=> b!1813465 (= res!815301 call!114160)))

(declare-fun b!1813466 () Bool)

(declare-fun res!815295 () Bool)

(assert (=> b!1813466 (=> res!815295 e!1158469)))

(assert (=> b!1813466 (= res!815295 (not (isEmpty!12514 (tail!2683 lt!703900))))))

(declare-fun b!1813467 () Bool)

(declare-fun e!1158468 () Bool)

(assert (=> b!1813467 (= e!1158468 (matchR!2352 (derivativeStep!1274 (regex!3551 rule!422) (head!4214 lt!703900)) (tail!2683 lt!703900)))))

(declare-fun bm!114155 () Bool)

(assert (=> bm!114155 (= call!114160 (isEmpty!12514 lt!703900))))

(declare-fun b!1813468 () Bool)

(declare-fun e!1158470 () Bool)

(declare-fun lt!704270 () Bool)

(assert (=> b!1813468 (= e!1158470 (= lt!704270 call!114160))))

(declare-fun b!1813469 () Bool)

(declare-fun e!1158471 () Bool)

(assert (=> b!1813469 (= e!1158470 e!1158471)))

(declare-fun c!296262 () Bool)

(assert (=> b!1813469 (= c!296262 ((_ is EmptyLang!4879) (regex!3551 rule!422)))))

(declare-fun b!1813470 () Bool)

(assert (=> b!1813470 (= e!1158468 (nullable!1505 (regex!3551 rule!422)))))

(declare-fun b!1813463 () Bool)

(declare-fun res!815298 () Bool)

(declare-fun e!1158473 () Bool)

(assert (=> b!1813463 (=> (not res!815298) (not e!1158473))))

(assert (=> b!1813463 (= res!815298 (isEmpty!12514 (tail!2683 lt!703900)))))

(declare-fun d!556476 () Bool)

(assert (=> d!556476 e!1158470))

(declare-fun c!296263 () Bool)

(assert (=> d!556476 (= c!296263 ((_ is EmptyExpr!4879) (regex!3551 rule!422)))))

(assert (=> d!556476 (= lt!704270 e!1158468)))

(declare-fun c!296261 () Bool)

(assert (=> d!556476 (= c!296261 (isEmpty!12514 lt!703900))))

(assert (=> d!556476 (validRegex!1979 (regex!3551 rule!422))))

(assert (=> d!556476 (= (matchR!2352 (regex!3551 rule!422) lt!703900) lt!704270)))

(declare-fun b!1813471 () Bool)

(assert (=> b!1813471 (= e!1158473 (= (head!4214 lt!703900) (c!296135 (regex!3551 rule!422))))))

(declare-fun b!1813472 () Bool)

(declare-fun e!1158472 () Bool)

(assert (=> b!1813472 (= e!1158472 e!1158467)))

(declare-fun res!815299 () Bool)

(assert (=> b!1813472 (=> (not res!815299) (not e!1158467))))

(assert (=> b!1813472 (= res!815299 (not lt!704270))))

(declare-fun b!1813473 () Bool)

(assert (=> b!1813473 (= e!1158471 (not lt!704270))))

(declare-fun b!1813474 () Bool)

(declare-fun res!815296 () Bool)

(assert (=> b!1813474 (=> res!815296 e!1158472)))

(assert (=> b!1813474 (= res!815296 e!1158473)))

(declare-fun res!815300 () Bool)

(assert (=> b!1813474 (=> (not res!815300) (not e!1158473))))

(assert (=> b!1813474 (= res!815300 lt!704270)))

(declare-fun b!1813475 () Bool)

(declare-fun res!815294 () Bool)

(assert (=> b!1813475 (=> (not res!815294) (not e!1158473))))

(assert (=> b!1813475 (= res!815294 (not call!114160))))

(declare-fun b!1813476 () Bool)

(declare-fun res!815297 () Bool)

(assert (=> b!1813476 (=> res!815297 e!1158472)))

(assert (=> b!1813476 (= res!815297 (not ((_ is ElementMatch!4879) (regex!3551 rule!422))))))

(assert (=> b!1813476 (= e!1158471 e!1158472)))

(assert (= (and d!556476 c!296261) b!1813470))

(assert (= (and d!556476 (not c!296261)) b!1813467))

(assert (= (and d!556476 c!296263) b!1813468))

(assert (= (and d!556476 (not c!296263)) b!1813469))

(assert (= (and b!1813469 c!296262) b!1813473))

(assert (= (and b!1813469 (not c!296262)) b!1813476))

(assert (= (and b!1813476 (not res!815297)) b!1813474))

(assert (= (and b!1813474 res!815300) b!1813475))

(assert (= (and b!1813475 res!815294) b!1813463))

(assert (= (and b!1813463 res!815298) b!1813471))

(assert (= (and b!1813474 (not res!815296)) b!1813472))

(assert (= (and b!1813472 res!815299) b!1813465))

(assert (= (and b!1813465 (not res!815301)) b!1813466))

(assert (= (and b!1813466 (not res!815295)) b!1813464))

(assert (= (or b!1813468 b!1813465 b!1813475) bm!114155))

(assert (=> d!556476 m!2242155))

(declare-fun m!2242887 () Bool)

(assert (=> d!556476 m!2242887))

(assert (=> b!1813467 m!2242159))

(assert (=> b!1813467 m!2242159))

(declare-fun m!2242889 () Bool)

(assert (=> b!1813467 m!2242889))

(assert (=> b!1813467 m!2242163))

(assert (=> b!1813467 m!2242889))

(assert (=> b!1813467 m!2242163))

(declare-fun m!2242893 () Bool)

(assert (=> b!1813467 m!2242893))

(assert (=> bm!114155 m!2242155))

(assert (=> b!1813466 m!2242163))

(assert (=> b!1813466 m!2242163))

(assert (=> b!1813466 m!2242167))

(declare-fun m!2242897 () Bool)

(assert (=> b!1813470 m!2242897))

(assert (=> b!1813464 m!2242159))

(assert (=> b!1813471 m!2242159))

(assert (=> b!1813463 m!2242163))

(assert (=> b!1813463 m!2242163))

(assert (=> b!1813463 m!2242167))

(assert (=> b!1812823 d!556476))

(declare-fun d!556480 () Bool)

(declare-fun res!815310 () Bool)

(declare-fun e!1158479 () Bool)

(assert (=> d!556480 (=> (not res!815310) (not e!1158479))))

(assert (=> d!556480 (= res!815310 (validRegex!1979 (regex!3551 rule!422)))))

(assert (=> d!556480 (= (ruleValid!1049 thiss!24550 rule!422) e!1158479)))

(declare-fun b!1813487 () Bool)

(declare-fun res!815311 () Bool)

(assert (=> b!1813487 (=> (not res!815311) (not e!1158479))))

(assert (=> b!1813487 (= res!815311 (not (nullable!1505 (regex!3551 rule!422))))))

(declare-fun b!1813488 () Bool)

(assert (=> b!1813488 (= e!1158479 (not (= (tag!3961 rule!422) (String!22538 ""))))))

(assert (= (and d!556480 res!815310) b!1813487))

(assert (= (and b!1813487 res!815311) b!1813488))

(assert (=> d!556480 m!2242887))

(assert (=> b!1813487 m!2242897))

(assert (=> b!1812823 d!556480))

(declare-fun d!556486 () Bool)

(assert (=> d!556486 (ruleValid!1049 thiss!24550 rule!422)))

(declare-fun lt!704279 () Unit!34395)

(declare-fun choose!11417 (LexerInterface!3180 Rule!6902 List!19847) Unit!34395)

(assert (=> d!556486 (= lt!704279 (choose!11417 thiss!24550 rule!422 rules!3447))))

(assert (=> d!556486 (contains!3585 rules!3447 rule!422)))

(assert (=> d!556486 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!572 thiss!24550 rule!422 rules!3447) lt!704279)))

(declare-fun bs!407090 () Bool)

(assert (= bs!407090 d!556486))

(assert (=> bs!407090 m!2242063))

(declare-fun m!2242919 () Bool)

(assert (=> bs!407090 m!2242919))

(assert (=> bs!407090 m!2242079))

(assert (=> b!1812823 d!556486))

(declare-fun b!1813503 () Bool)

(declare-fun e!1158488 () Bool)

(declare-fun e!1158487 () Bool)

(assert (=> b!1813503 (= e!1158488 e!1158487)))

(declare-fun c!296268 () Bool)

(assert (=> b!1813503 (= c!296268 ((_ is IntegerValue!10924) (value!110876 token!523)))))

(declare-fun b!1813504 () Bool)

(assert (=> b!1813504 (= e!1158487 (inv!17 (value!110876 token!523)))))

(declare-fun b!1813505 () Bool)

(declare-fun res!815320 () Bool)

(declare-fun e!1158489 () Bool)

(assert (=> b!1813505 (=> res!815320 e!1158489)))

(assert (=> b!1813505 (= res!815320 (not ((_ is IntegerValue!10925) (value!110876 token!523))))))

(assert (=> b!1813505 (= e!1158487 e!1158489)))

(declare-fun d!556492 () Bool)

(declare-fun c!296269 () Bool)

(assert (=> d!556492 (= c!296269 ((_ is IntegerValue!10923) (value!110876 token!523)))))

(assert (=> d!556492 (= (inv!21 (value!110876 token!523)) e!1158488)))

(declare-fun b!1813506 () Bool)

(assert (=> b!1813506 (= e!1158488 (inv!16 (value!110876 token!523)))))

(declare-fun b!1813507 () Bool)

(assert (=> b!1813507 (= e!1158489 (inv!15 (value!110876 token!523)))))

(assert (= (and d!556492 c!296269) b!1813506))

(assert (= (and d!556492 (not c!296269)) b!1813503))

(assert (= (and b!1813503 c!296268) b!1813504))

(assert (= (and b!1813503 (not c!296268)) b!1813505))

(assert (= (and b!1813505 (not res!815320)) b!1813507))

(declare-fun m!2242921 () Bool)

(assert (=> b!1813504 m!2242921))

(declare-fun m!2242925 () Bool)

(assert (=> b!1813506 m!2242925))

(declare-fun m!2242927 () Bool)

(assert (=> b!1813507 m!2242927))

(assert (=> b!1812802 d!556492))

(declare-fun d!556494 () Bool)

(assert (=> d!556494 (not (matchR!2352 (regex!3551 (rule!5657 token!523)) lt!703945))))

(declare-fun lt!704286 () Unit!34395)

(declare-fun choose!11419 (LexerInterface!3180 List!19847 Rule!6902 List!19846 List!19846 Rule!6902) Unit!34395)

(assert (=> d!556494 (= lt!704286 (choose!11419 thiss!24550 rules!3447 (rule!5657 (_1!11081 lt!703931)) lt!703945 lt!703906 (rule!5657 token!523)))))

(assert (=> d!556494 (isPrefix!1791 lt!703945 lt!703906)))

(assert (=> d!556494 (= (lemmaMaxPrefNoSmallerRuleMatches!172 thiss!24550 rules!3447 (rule!5657 (_1!11081 lt!703931)) lt!703945 lt!703906 (rule!5657 token!523)) lt!704286)))

(declare-fun bs!407093 () Bool)

(assert (= bs!407093 d!556494))

(assert (=> bs!407093 m!2241995))

(declare-fun m!2242943 () Bool)

(assert (=> bs!407093 m!2242943))

(assert (=> bs!407093 m!2241981))

(assert (=> b!1812824 d!556494))

(declare-fun b!1813537 () Bool)

(declare-fun e!1158506 () Bool)

(assert (=> b!1813537 (= e!1158506 (not (= (head!4214 lt!703945) (c!296135 (regex!3551 (rule!5657 token!523))))))))

(declare-fun b!1813538 () Bool)

(declare-fun e!1158504 () Bool)

(assert (=> b!1813538 (= e!1158504 e!1158506)))

(declare-fun res!815344 () Bool)

(assert (=> b!1813538 (=> res!815344 e!1158506)))

(declare-fun call!114164 () Bool)

(assert (=> b!1813538 (= res!815344 call!114164)))

(declare-fun b!1813539 () Bool)

(declare-fun res!815338 () Bool)

(assert (=> b!1813539 (=> res!815338 e!1158506)))

(assert (=> b!1813539 (= res!815338 (not (isEmpty!12514 (tail!2683 lt!703945))))))

(declare-fun b!1813540 () Bool)

(declare-fun e!1158505 () Bool)

(assert (=> b!1813540 (= e!1158505 (matchR!2352 (derivativeStep!1274 (regex!3551 (rule!5657 token!523)) (head!4214 lt!703945)) (tail!2683 lt!703945)))))

(declare-fun bm!114159 () Bool)

(assert (=> bm!114159 (= call!114164 (isEmpty!12514 lt!703945))))

(declare-fun b!1813541 () Bool)

(declare-fun e!1158507 () Bool)

(declare-fun lt!704287 () Bool)

(assert (=> b!1813541 (= e!1158507 (= lt!704287 call!114164))))

(declare-fun b!1813542 () Bool)

(declare-fun e!1158508 () Bool)

(assert (=> b!1813542 (= e!1158507 e!1158508)))

(declare-fun c!296277 () Bool)

(assert (=> b!1813542 (= c!296277 ((_ is EmptyLang!4879) (regex!3551 (rule!5657 token!523))))))

(declare-fun b!1813543 () Bool)

(assert (=> b!1813543 (= e!1158505 (nullable!1505 (regex!3551 (rule!5657 token!523))))))

(declare-fun b!1813536 () Bool)

(declare-fun res!815341 () Bool)

(declare-fun e!1158510 () Bool)

(assert (=> b!1813536 (=> (not res!815341) (not e!1158510))))

(assert (=> b!1813536 (= res!815341 (isEmpty!12514 (tail!2683 lt!703945)))))

(declare-fun d!556502 () Bool)

(assert (=> d!556502 e!1158507))

(declare-fun c!296278 () Bool)

(assert (=> d!556502 (= c!296278 ((_ is EmptyExpr!4879) (regex!3551 (rule!5657 token!523))))))

(assert (=> d!556502 (= lt!704287 e!1158505)))

(declare-fun c!296276 () Bool)

(assert (=> d!556502 (= c!296276 (isEmpty!12514 lt!703945))))

(assert (=> d!556502 (validRegex!1979 (regex!3551 (rule!5657 token!523)))))

(assert (=> d!556502 (= (matchR!2352 (regex!3551 (rule!5657 token!523)) lt!703945) lt!704287)))

(declare-fun b!1813544 () Bool)

(assert (=> b!1813544 (= e!1158510 (= (head!4214 lt!703945) (c!296135 (regex!3551 (rule!5657 token!523)))))))

(declare-fun b!1813545 () Bool)

(declare-fun e!1158509 () Bool)

(assert (=> b!1813545 (= e!1158509 e!1158504)))

(declare-fun res!815342 () Bool)

(assert (=> b!1813545 (=> (not res!815342) (not e!1158504))))

(assert (=> b!1813545 (= res!815342 (not lt!704287))))

(declare-fun b!1813546 () Bool)

(assert (=> b!1813546 (= e!1158508 (not lt!704287))))

(declare-fun b!1813547 () Bool)

(declare-fun res!815339 () Bool)

(assert (=> b!1813547 (=> res!815339 e!1158509)))

(assert (=> b!1813547 (= res!815339 e!1158510)))

(declare-fun res!815343 () Bool)

(assert (=> b!1813547 (=> (not res!815343) (not e!1158510))))

(assert (=> b!1813547 (= res!815343 lt!704287)))

(declare-fun b!1813548 () Bool)

(declare-fun res!815337 () Bool)

(assert (=> b!1813548 (=> (not res!815337) (not e!1158510))))

(assert (=> b!1813548 (= res!815337 (not call!114164))))

(declare-fun b!1813549 () Bool)

(declare-fun res!815340 () Bool)

(assert (=> b!1813549 (=> res!815340 e!1158509)))

(assert (=> b!1813549 (= res!815340 (not ((_ is ElementMatch!4879) (regex!3551 (rule!5657 token!523)))))))

(assert (=> b!1813549 (= e!1158508 e!1158509)))

(assert (= (and d!556502 c!296276) b!1813543))

(assert (= (and d!556502 (not c!296276)) b!1813540))

(assert (= (and d!556502 c!296278) b!1813541))

(assert (= (and d!556502 (not c!296278)) b!1813542))

(assert (= (and b!1813542 c!296277) b!1813546))

(assert (= (and b!1813542 (not c!296277)) b!1813549))

(assert (= (and b!1813549 (not res!815340)) b!1813547))

(assert (= (and b!1813547 res!815343) b!1813548))

(assert (= (and b!1813548 res!815337) b!1813536))

(assert (= (and b!1813536 res!815341) b!1813544))

(assert (= (and b!1813547 (not res!815339)) b!1813545))

(assert (= (and b!1813545 res!815342) b!1813538))

(assert (= (and b!1813538 (not res!815344)) b!1813539))

(assert (= (and b!1813539 (not res!815338)) b!1813537))

(assert (= (or b!1813541 b!1813538 b!1813548) bm!114159))

(assert (=> d!556502 m!2242737))

(declare-fun m!2242963 () Bool)

(assert (=> d!556502 m!2242963))

(assert (=> b!1813540 m!2242481))

(assert (=> b!1813540 m!2242481))

(declare-fun m!2242965 () Bool)

(assert (=> b!1813540 m!2242965))

(assert (=> b!1813540 m!2242473))

(assert (=> b!1813540 m!2242965))

(assert (=> b!1813540 m!2242473))

(declare-fun m!2242967 () Bool)

(assert (=> b!1813540 m!2242967))

(assert (=> bm!114159 m!2242737))

(assert (=> b!1813539 m!2242473))

(assert (=> b!1813539 m!2242473))

(assert (=> b!1813539 m!2242745))

(declare-fun m!2242969 () Bool)

(assert (=> b!1813543 m!2242969))

(assert (=> b!1813537 m!2242481))

(assert (=> b!1813544 m!2242481))

(assert (=> b!1813536 m!2242473))

(assert (=> b!1813536 m!2242473))

(assert (=> b!1813536 m!2242745))

(assert (=> b!1812824 d!556502))

(declare-fun d!556508 () Bool)

(assert (=> d!556508 (= (isEmpty!12514 (_2!11081 lt!703905)) ((_ is Nil!19776) (_2!11081 lt!703905)))))

(assert (=> b!1812803 d!556508))

(declare-fun d!556514 () Bool)

(assert (=> d!556514 (= (inv!25775 (tag!3961 (rule!5657 token!523))) (= (mod (str.len (value!110875 (tag!3961 (rule!5657 token!523)))) 2) 0))))

(assert (=> b!1812820 d!556514))

(declare-fun d!556518 () Bool)

(declare-fun res!815346 () Bool)

(declare-fun e!1158513 () Bool)

(assert (=> d!556518 (=> (not res!815346) (not e!1158513))))

(assert (=> d!556518 (= res!815346 (semiInverseModEq!1420 (toChars!4941 (transformation!3551 (rule!5657 token!523))) (toValue!5082 (transformation!3551 (rule!5657 token!523)))))))

(assert (=> d!556518 (= (inv!25780 (transformation!3551 (rule!5657 token!523))) e!1158513)))

(declare-fun b!1813553 () Bool)

(assert (=> b!1813553 (= e!1158513 (equivClasses!1361 (toChars!4941 (transformation!3551 (rule!5657 token!523))) (toValue!5082 (transformation!3551 (rule!5657 token!523)))))))

(assert (= (and d!556518 res!815346) b!1813553))

(declare-fun m!2242975 () Bool)

(assert (=> d!556518 m!2242975))

(declare-fun m!2242977 () Bool)

(assert (=> b!1813553 m!2242977))

(assert (=> b!1812820 d!556518))

(declare-fun d!556520 () Bool)

(assert (=> d!556520 (= (isEmpty!12514 suffix!1421) ((_ is Nil!19776) suffix!1421))))

(assert (=> b!1812821 d!556520))

(declare-fun d!556522 () Bool)

(assert (=> d!556522 (= (inv!25783 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908))) (isBalanced!2059 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908)))))))

(declare-fun bs!407095 () Bool)

(assert (= bs!407095 d!556522))

(declare-fun m!2242979 () Bool)

(assert (=> bs!407095 m!2242979))

(assert (=> tb!110785 d!556522))

(declare-fun d!556526 () Bool)

(assert (=> d!556526 (= suffix!1421 (_2!11081 lt!703931))))

(declare-fun lt!704288 () Unit!34395)

(assert (=> d!556526 (= lt!704288 (choose!11414 lt!703900 suffix!1421 lt!703900 (_2!11081 lt!703931) lt!703906))))

(assert (=> d!556526 (isPrefix!1791 lt!703900 lt!703906)))

(assert (=> d!556526 (= (lemmaSamePrefixThenSameSuffix!902 lt!703900 suffix!1421 lt!703900 (_2!11081 lt!703931) lt!703906) lt!704288)))

(declare-fun bs!407096 () Bool)

(assert (= bs!407096 d!556526))

(declare-fun m!2242981 () Bool)

(assert (=> bs!407096 m!2242981))

(assert (=> bs!407096 m!2241963))

(assert (=> b!1812843 d!556526))

(declare-fun d!556528 () Bool)

(assert (=> d!556528 (= lt!703945 lt!703900)))

(declare-fun lt!704291 () Unit!34395)

(declare-fun choose!11420 (List!19846 List!19846 List!19846) Unit!34395)

(assert (=> d!556528 (= lt!704291 (choose!11420 lt!703945 lt!703900 lt!703906))))

(assert (=> d!556528 (isPrefix!1791 lt!703945 lt!703906)))

(assert (=> d!556528 (= (lemmaIsPrefixSameLengthThenSameList!287 lt!703945 lt!703900 lt!703906) lt!704291)))

(declare-fun bs!407098 () Bool)

(assert (= bs!407098 d!556528))

(declare-fun m!2242989 () Bool)

(assert (=> bs!407098 m!2242989))

(assert (=> bs!407098 m!2241981))

(assert (=> b!1812843 d!556528))

(declare-fun d!556538 () Bool)

(assert (=> d!556538 (= (seqFromList!2520 lt!703945) (fromListB!1154 lt!703945))))

(declare-fun bs!407100 () Bool)

(assert (= bs!407100 d!556538))

(declare-fun m!2242993 () Bool)

(assert (=> bs!407100 m!2242993))

(assert (=> b!1812822 d!556538))

(declare-fun d!556542 () Bool)

(declare-fun lt!704292 () List!19846)

(assert (=> d!556542 (= (++!5381 lt!703945 lt!704292) lt!703906)))

(declare-fun e!1158515 () List!19846)

(assert (=> d!556542 (= lt!704292 e!1158515)))

(declare-fun c!296280 () Bool)

(assert (=> d!556542 (= c!296280 ((_ is Cons!19776) lt!703945))))

(assert (=> d!556542 (>= (size!15724 lt!703906) (size!15724 lt!703945))))

(assert (=> d!556542 (= (getSuffix!958 lt!703906 lt!703945) lt!704292)))

(declare-fun b!1813555 () Bool)

(assert (=> b!1813555 (= e!1158515 (getSuffix!958 (tail!2683 lt!703906) (t!169251 lt!703945)))))

(declare-fun b!1813556 () Bool)

(assert (=> b!1813556 (= e!1158515 lt!703906)))

(assert (= (and d!556542 c!296280) b!1813555))

(assert (= (and d!556542 (not c!296280)) b!1813556))

(declare-fun m!2242995 () Bool)

(assert (=> d!556542 m!2242995))

(assert (=> d!556542 m!2242431))

(assert (=> d!556542 m!2241953))

(assert (=> b!1813555 m!2242427))

(assert (=> b!1813555 m!2242427))

(declare-fun m!2242997 () Bool)

(assert (=> b!1813555 m!2242997))

(assert (=> b!1812822 d!556542))

(declare-fun d!556544 () Bool)

(assert (=> d!556544 (= (_2!11081 lt!703931) lt!703915)))

(declare-fun lt!704293 () Unit!34395)

(assert (=> d!556544 (= lt!704293 (choose!11414 lt!703945 (_2!11081 lt!703931) lt!703945 lt!703915 lt!703906))))

(assert (=> d!556544 (isPrefix!1791 lt!703945 lt!703906)))

(assert (=> d!556544 (= (lemmaSamePrefixThenSameSuffix!902 lt!703945 (_2!11081 lt!703931) lt!703945 lt!703915 lt!703906) lt!704293)))

(declare-fun bs!407101 () Bool)

(assert (= bs!407101 d!556544))

(declare-fun m!2242999 () Bool)

(assert (=> bs!407101 m!2242999))

(assert (=> bs!407101 m!2241981))

(assert (=> b!1812822 d!556544))

(declare-fun d!556546 () Bool)

(declare-fun e!1158566 () Bool)

(assert (=> d!556546 e!1158566))

(declare-fun res!815366 () Bool)

(assert (=> d!556546 (=> res!815366 e!1158566)))

(declare-fun lt!704313 () Option!4128)

(assert (=> d!556546 (= res!815366 (isEmpty!12517 lt!704313))))

(declare-fun e!1158563 () Option!4128)

(assert (=> d!556546 (= lt!704313 e!1158563)))

(declare-fun c!296284 () Bool)

(declare-datatypes ((tuple2!19366 0))(
  ( (tuple2!19367 (_1!11085 List!19846) (_2!11085 List!19846)) )
))
(declare-fun lt!704314 () tuple2!19366)

(assert (=> d!556546 (= c!296284 (isEmpty!12514 (_1!11085 lt!704314)))))

(declare-fun findLongestMatch!410 (Regex!4879 List!19846) tuple2!19366)

(assert (=> d!556546 (= lt!704314 (findLongestMatch!410 (regex!3551 (rule!5657 (_1!11081 lt!703931))) lt!703906))))

(assert (=> d!556546 (ruleValid!1049 thiss!24550 (rule!5657 (_1!11081 lt!703931)))))

(assert (=> d!556546 (= (maxPrefixOneRule!1103 thiss!24550 (rule!5657 (_1!11081 lt!703931)) lt!703906) lt!704313)))

(declare-fun b!1813641 () Bool)

(declare-fun res!815367 () Bool)

(declare-fun e!1158565 () Bool)

(assert (=> b!1813641 (=> (not res!815367) (not e!1158565))))

(assert (=> b!1813641 (= res!815367 (< (size!15724 (_2!11081 (get!6119 lt!704313))) (size!15724 lt!703906)))))

(declare-fun b!1813642 () Bool)

(declare-fun res!815365 () Bool)

(assert (=> b!1813642 (=> (not res!815365) (not e!1158565))))

(assert (=> b!1813642 (= res!815365 (= (rule!5657 (_1!11081 (get!6119 lt!704313))) (rule!5657 (_1!11081 lt!703931))))))

(declare-fun b!1813643 () Bool)

(declare-fun e!1158564 () Bool)

(declare-fun findLongestMatchInner!483 (Regex!4879 List!19846 Int List!19846 List!19846 Int) tuple2!19366)

(assert (=> b!1813643 (= e!1158564 (matchR!2352 (regex!3551 (rule!5657 (_1!11081 lt!703931))) (_1!11085 (findLongestMatchInner!483 (regex!3551 (rule!5657 (_1!11081 lt!703931))) Nil!19776 (size!15724 Nil!19776) lt!703906 lt!703906 (size!15724 lt!703906)))))))

(declare-fun b!1813644 () Bool)

(declare-fun res!815368 () Bool)

(assert (=> b!1813644 (=> (not res!815368) (not e!1158565))))

(assert (=> b!1813644 (= res!815368 (= (++!5381 (list!8051 (charsOf!2200 (_1!11081 (get!6119 lt!704313)))) (_2!11081 (get!6119 lt!704313))) lt!703906))))

(declare-fun b!1813645 () Bool)

(assert (=> b!1813645 (= e!1158565 (= (size!15722 (_1!11081 (get!6119 lt!704313))) (size!15724 (originalCharacters!4365 (_1!11081 (get!6119 lt!704313))))))))

(declare-fun b!1813646 () Bool)

(assert (=> b!1813646 (= e!1158566 e!1158565)))

(declare-fun res!815369 () Bool)

(assert (=> b!1813646 (=> (not res!815369) (not e!1158565))))

(assert (=> b!1813646 (= res!815369 (matchR!2352 (regex!3551 (rule!5657 (_1!11081 lt!703931))) (list!8051 (charsOf!2200 (_1!11081 (get!6119 lt!704313))))))))

(declare-fun b!1813647 () Bool)

(declare-fun res!815370 () Bool)

(assert (=> b!1813647 (=> (not res!815370) (not e!1158565))))

(assert (=> b!1813647 (= res!815370 (= (value!110876 (_1!11081 (get!6119 lt!704313))) (apply!5351 (transformation!3551 (rule!5657 (_1!11081 (get!6119 lt!704313)))) (seqFromList!2520 (originalCharacters!4365 (_1!11081 (get!6119 lt!704313)))))))))

(declare-fun b!1813648 () Bool)

(assert (=> b!1813648 (= e!1158563 None!4127)))

(declare-fun b!1813649 () Bool)

(assert (=> b!1813649 (= e!1158563 (Some!4127 (tuple2!19359 (Token!6669 (apply!5351 (transformation!3551 (rule!5657 (_1!11081 lt!703931))) (seqFromList!2520 (_1!11085 lt!704314))) (rule!5657 (_1!11081 lt!703931)) (size!15723 (seqFromList!2520 (_1!11085 lt!704314))) (_1!11085 lt!704314)) (_2!11085 lt!704314))))))

(declare-fun lt!704315 () Unit!34395)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!467 (Regex!4879 List!19846) Unit!34395)

(assert (=> b!1813649 (= lt!704315 (longestMatchIsAcceptedByMatchOrIsEmpty!467 (regex!3551 (rule!5657 (_1!11081 lt!703931))) lt!703906))))

(declare-fun res!815371 () Bool)

(assert (=> b!1813649 (= res!815371 (isEmpty!12514 (_1!11085 (findLongestMatchInner!483 (regex!3551 (rule!5657 (_1!11081 lt!703931))) Nil!19776 (size!15724 Nil!19776) lt!703906 lt!703906 (size!15724 lt!703906)))))))

(assert (=> b!1813649 (=> res!815371 e!1158564)))

(assert (=> b!1813649 e!1158564))

(declare-fun lt!704312 () Unit!34395)

(assert (=> b!1813649 (= lt!704312 lt!704315)))

(declare-fun lt!704311 () Unit!34395)

(assert (=> b!1813649 (= lt!704311 (lemmaSemiInverse!689 (transformation!3551 (rule!5657 (_1!11081 lt!703931))) (seqFromList!2520 (_1!11085 lt!704314))))))

(assert (= (and d!556546 c!296284) b!1813648))

(assert (= (and d!556546 (not c!296284)) b!1813649))

(assert (= (and b!1813649 (not res!815371)) b!1813643))

(assert (= (and d!556546 (not res!815366)) b!1813646))

(assert (= (and b!1813646 res!815369) b!1813644))

(assert (= (and b!1813644 res!815368) b!1813641))

(assert (= (and b!1813641 res!815367) b!1813642))

(assert (= (and b!1813642 res!815365) b!1813647))

(assert (= (and b!1813647 res!815370) b!1813645))

(declare-fun m!2243041 () Bool)

(assert (=> b!1813647 m!2243041))

(declare-fun m!2243043 () Bool)

(assert (=> b!1813647 m!2243043))

(assert (=> b!1813647 m!2243043))

(declare-fun m!2243045 () Bool)

(assert (=> b!1813647 m!2243045))

(assert (=> b!1813646 m!2243041))

(declare-fun m!2243047 () Bool)

(assert (=> b!1813646 m!2243047))

(assert (=> b!1813646 m!2243047))

(declare-fun m!2243049 () Bool)

(assert (=> b!1813646 m!2243049))

(assert (=> b!1813646 m!2243049))

(declare-fun m!2243051 () Bool)

(assert (=> b!1813646 m!2243051))

(assert (=> b!1813645 m!2243041))

(declare-fun m!2243053 () Bool)

(assert (=> b!1813645 m!2243053))

(assert (=> b!1813641 m!2243041))

(declare-fun m!2243055 () Bool)

(assert (=> b!1813641 m!2243055))

(assert (=> b!1813641 m!2242431))

(declare-fun m!2243057 () Bool)

(assert (=> d!556546 m!2243057))

(declare-fun m!2243059 () Bool)

(assert (=> d!556546 m!2243059))

(declare-fun m!2243061 () Bool)

(assert (=> d!556546 m!2243061))

(declare-fun m!2243063 () Bool)

(assert (=> d!556546 m!2243063))

(assert (=> b!1813644 m!2243041))

(assert (=> b!1813644 m!2243047))

(assert (=> b!1813644 m!2243047))

(assert (=> b!1813644 m!2243049))

(assert (=> b!1813644 m!2243049))

(declare-fun m!2243065 () Bool)

(assert (=> b!1813644 m!2243065))

(declare-fun m!2243067 () Bool)

(assert (=> b!1813649 m!2243067))

(declare-fun m!2243069 () Bool)

(assert (=> b!1813649 m!2243069))

(declare-fun m!2243071 () Bool)

(assert (=> b!1813649 m!2243071))

(assert (=> b!1813649 m!2243069))

(declare-fun m!2243073 () Bool)

(assert (=> b!1813649 m!2243073))

(assert (=> b!1813649 m!2242431))

(assert (=> b!1813649 m!2243069))

(declare-fun m!2243075 () Bool)

(assert (=> b!1813649 m!2243075))

(declare-fun m!2243077 () Bool)

(assert (=> b!1813649 m!2243077))

(declare-fun m!2243079 () Bool)

(assert (=> b!1813649 m!2243079))

(assert (=> b!1813649 m!2243069))

(assert (=> b!1813649 m!2243067))

(assert (=> b!1813649 m!2242431))

(declare-fun m!2243081 () Bool)

(assert (=> b!1813649 m!2243081))

(assert (=> b!1813642 m!2243041))

(assert (=> b!1813643 m!2243067))

(assert (=> b!1813643 m!2242431))

(assert (=> b!1813643 m!2243067))

(assert (=> b!1813643 m!2242431))

(assert (=> b!1813643 m!2243081))

(declare-fun m!2243083 () Bool)

(assert (=> b!1813643 m!2243083))

(assert (=> b!1812822 d!556546))

(declare-fun d!556564 () Bool)

(assert (=> d!556564 (= (apply!5351 (transformation!3551 (rule!5657 (_1!11081 lt!703931))) (seqFromList!2520 lt!703945)) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (seqFromList!2520 lt!703945)))))

(declare-fun b_lambda!59809 () Bool)

(assert (=> (not b_lambda!59809) (not d!556564)))

(declare-fun t!169296 () Bool)

(declare-fun tb!110839 () Bool)

(assert (=> (and b!1812825 (= (toValue!5082 (transformation!3551 rule!422)) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169296) tb!110839))

(declare-fun result!133094 () Bool)

(assert (=> tb!110839 (= result!133094 (inv!21 (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (seqFromList!2520 lt!703945))))))

(declare-fun m!2243085 () Bool)

(assert (=> tb!110839 m!2243085))

(assert (=> d!556564 t!169296))

(declare-fun b_and!140135 () Bool)

(assert (= b_and!140059 (and (=> t!169296 result!133094) b_and!140135)))

(declare-fun t!169298 () Bool)

(declare-fun tb!110841 () Bool)

(assert (=> (and b!1812816 (= (toValue!5082 (transformation!3551 (h!25178 rules!3447))) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169298) tb!110841))

(declare-fun result!133096 () Bool)

(assert (= result!133096 result!133094))

(assert (=> d!556564 t!169298))

(declare-fun b_and!140137 () Bool)

(assert (= b_and!140061 (and (=> t!169298 result!133096) b_and!140137)))

(declare-fun tb!110843 () Bool)

(declare-fun t!169300 () Bool)

(assert (=> (and b!1812812 (= (toValue!5082 (transformation!3551 (rule!5657 token!523))) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169300) tb!110843))

(declare-fun result!133098 () Bool)

(assert (= result!133098 result!133094))

(assert (=> d!556564 t!169300))

(declare-fun b_and!140139 () Bool)

(assert (= b_and!140063 (and (=> t!169300 result!133098) b_and!140139)))

(assert (=> d!556564 m!2241941))

(declare-fun m!2243087 () Bool)

(assert (=> d!556564 m!2243087))

(assert (=> b!1812822 d!556564))

(declare-fun d!556566 () Bool)

(assert (=> d!556566 (= (maxPrefixOneRule!1103 thiss!24550 (rule!5657 (_1!11081 lt!703931)) lt!703906) (Some!4127 (tuple2!19359 (Token!6669 (apply!5351 (transformation!3551 (rule!5657 (_1!11081 lt!703931))) (seqFromList!2520 lt!703945)) (rule!5657 (_1!11081 lt!703931)) (size!15724 lt!703945) lt!703945) (_2!11081 lt!703931))))))

(declare-fun lt!704318 () Unit!34395)

(declare-fun choose!11421 (LexerInterface!3180 List!19847 List!19846 List!19846 List!19846 Rule!6902) Unit!34395)

(assert (=> d!556566 (= lt!704318 (choose!11421 thiss!24550 rules!3447 lt!703945 lt!703906 (_2!11081 lt!703931) (rule!5657 (_1!11081 lt!703931))))))

(assert (=> d!556566 (not (isEmpty!12515 rules!3447))))

(assert (=> d!556566 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!481 thiss!24550 rules!3447 lt!703945 lt!703906 (_2!11081 lt!703931) (rule!5657 (_1!11081 lt!703931))) lt!704318)))

(declare-fun bs!407107 () Bool)

(assert (= bs!407107 d!556566))

(assert (=> bs!407107 m!2241953))

(assert (=> bs!407107 m!2241941))

(assert (=> bs!407107 m!2241907))

(assert (=> bs!407107 m!2241949))

(declare-fun m!2243089 () Bool)

(assert (=> bs!407107 m!2243089))

(assert (=> bs!407107 m!2241941))

(assert (=> bs!407107 m!2241943))

(assert (=> b!1812822 d!556566))

(declare-fun d!556568 () Bool)

(declare-fun lt!704321 () Int)

(assert (=> d!556568 (>= lt!704321 0)))

(declare-fun e!1158570 () Int)

(assert (=> d!556568 (= lt!704321 e!1158570)))

(declare-fun c!296287 () Bool)

(assert (=> d!556568 (= c!296287 ((_ is Nil!19776) lt!703945))))

(assert (=> d!556568 (= (size!15724 lt!703945) lt!704321)))

(declare-fun b!1813654 () Bool)

(assert (=> b!1813654 (= e!1158570 0)))

(declare-fun b!1813655 () Bool)

(assert (=> b!1813655 (= e!1158570 (+ 1 (size!15724 (t!169251 lt!703945))))))

(assert (= (and d!556568 c!296287) b!1813654))

(assert (= (and d!556568 (not c!296287)) b!1813655))

(declare-fun m!2243091 () Bool)

(assert (=> b!1813655 m!2243091))

(assert (=> b!1812822 d!556568))

(declare-fun b!1813657 () Bool)

(declare-fun e!1158573 () Bool)

(assert (=> b!1813657 (= e!1158573 (not (= (head!4214 (list!8051 (charsOf!2200 (_1!11081 lt!703931)))) (c!296135 (regex!3551 lt!703934)))))))

(declare-fun b!1813658 () Bool)

(declare-fun e!1158571 () Bool)

(assert (=> b!1813658 (= e!1158571 e!1158573)))

(declare-fun res!815379 () Bool)

(assert (=> b!1813658 (=> res!815379 e!1158573)))

(declare-fun call!114165 () Bool)

(assert (=> b!1813658 (= res!815379 call!114165)))

(declare-fun b!1813659 () Bool)

(declare-fun res!815373 () Bool)

(assert (=> b!1813659 (=> res!815373 e!1158573)))

(assert (=> b!1813659 (= res!815373 (not (isEmpty!12514 (tail!2683 (list!8051 (charsOf!2200 (_1!11081 lt!703931)))))))))

(declare-fun b!1813660 () Bool)

(declare-fun e!1158572 () Bool)

(assert (=> b!1813660 (= e!1158572 (matchR!2352 (derivativeStep!1274 (regex!3551 lt!703934) (head!4214 (list!8051 (charsOf!2200 (_1!11081 lt!703931))))) (tail!2683 (list!8051 (charsOf!2200 (_1!11081 lt!703931))))))))

(declare-fun bm!114160 () Bool)

(assert (=> bm!114160 (= call!114165 (isEmpty!12514 (list!8051 (charsOf!2200 (_1!11081 lt!703931)))))))

(declare-fun b!1813661 () Bool)

(declare-fun e!1158574 () Bool)

(declare-fun lt!704322 () Bool)

(assert (=> b!1813661 (= e!1158574 (= lt!704322 call!114165))))

(declare-fun b!1813662 () Bool)

(declare-fun e!1158575 () Bool)

(assert (=> b!1813662 (= e!1158574 e!1158575)))

(declare-fun c!296289 () Bool)

(assert (=> b!1813662 (= c!296289 ((_ is EmptyLang!4879) (regex!3551 lt!703934)))))

(declare-fun b!1813663 () Bool)

(assert (=> b!1813663 (= e!1158572 (nullable!1505 (regex!3551 lt!703934)))))

(declare-fun b!1813656 () Bool)

(declare-fun res!815376 () Bool)

(declare-fun e!1158577 () Bool)

(assert (=> b!1813656 (=> (not res!815376) (not e!1158577))))

(assert (=> b!1813656 (= res!815376 (isEmpty!12514 (tail!2683 (list!8051 (charsOf!2200 (_1!11081 lt!703931))))))))

(declare-fun d!556570 () Bool)

(assert (=> d!556570 e!1158574))

(declare-fun c!296290 () Bool)

(assert (=> d!556570 (= c!296290 ((_ is EmptyExpr!4879) (regex!3551 lt!703934)))))

(assert (=> d!556570 (= lt!704322 e!1158572)))

(declare-fun c!296288 () Bool)

(assert (=> d!556570 (= c!296288 (isEmpty!12514 (list!8051 (charsOf!2200 (_1!11081 lt!703931)))))))

(assert (=> d!556570 (validRegex!1979 (regex!3551 lt!703934))))

(assert (=> d!556570 (= (matchR!2352 (regex!3551 lt!703934) (list!8051 (charsOf!2200 (_1!11081 lt!703931)))) lt!704322)))

(declare-fun b!1813664 () Bool)

(assert (=> b!1813664 (= e!1158577 (= (head!4214 (list!8051 (charsOf!2200 (_1!11081 lt!703931)))) (c!296135 (regex!3551 lt!703934))))))

(declare-fun b!1813665 () Bool)

(declare-fun e!1158576 () Bool)

(assert (=> b!1813665 (= e!1158576 e!1158571)))

(declare-fun res!815377 () Bool)

(assert (=> b!1813665 (=> (not res!815377) (not e!1158571))))

(assert (=> b!1813665 (= res!815377 (not lt!704322))))

(declare-fun b!1813666 () Bool)

(assert (=> b!1813666 (= e!1158575 (not lt!704322))))

(declare-fun b!1813667 () Bool)

(declare-fun res!815374 () Bool)

(assert (=> b!1813667 (=> res!815374 e!1158576)))

(assert (=> b!1813667 (= res!815374 e!1158577)))

(declare-fun res!815378 () Bool)

(assert (=> b!1813667 (=> (not res!815378) (not e!1158577))))

(assert (=> b!1813667 (= res!815378 lt!704322)))

(declare-fun b!1813668 () Bool)

(declare-fun res!815372 () Bool)

(assert (=> b!1813668 (=> (not res!815372) (not e!1158577))))

(assert (=> b!1813668 (= res!815372 (not call!114165))))

(declare-fun b!1813669 () Bool)

(declare-fun res!815375 () Bool)

(assert (=> b!1813669 (=> res!815375 e!1158576)))

(assert (=> b!1813669 (= res!815375 (not ((_ is ElementMatch!4879) (regex!3551 lt!703934))))))

(assert (=> b!1813669 (= e!1158575 e!1158576)))

(assert (= (and d!556570 c!296288) b!1813663))

(assert (= (and d!556570 (not c!296288)) b!1813660))

(assert (= (and d!556570 c!296290) b!1813661))

(assert (= (and d!556570 (not c!296290)) b!1813662))

(assert (= (and b!1813662 c!296289) b!1813666))

(assert (= (and b!1813662 (not c!296289)) b!1813669))

(assert (= (and b!1813669 (not res!815375)) b!1813667))

(assert (= (and b!1813667 res!815378) b!1813668))

(assert (= (and b!1813668 res!815372) b!1813656))

(assert (= (and b!1813656 res!815376) b!1813664))

(assert (= (and b!1813667 (not res!815374)) b!1813665))

(assert (= (and b!1813665 res!815377) b!1813658))

(assert (= (and b!1813658 (not res!815379)) b!1813659))

(assert (= (and b!1813659 (not res!815373)) b!1813657))

(assert (= (or b!1813661 b!1813658 b!1813668) bm!114160))

(assert (=> d!556570 m!2242011))

(declare-fun m!2243093 () Bool)

(assert (=> d!556570 m!2243093))

(declare-fun m!2243095 () Bool)

(assert (=> d!556570 m!2243095))

(assert (=> b!1813660 m!2242011))

(declare-fun m!2243097 () Bool)

(assert (=> b!1813660 m!2243097))

(assert (=> b!1813660 m!2243097))

(declare-fun m!2243099 () Bool)

(assert (=> b!1813660 m!2243099))

(assert (=> b!1813660 m!2242011))

(declare-fun m!2243101 () Bool)

(assert (=> b!1813660 m!2243101))

(assert (=> b!1813660 m!2243099))

(assert (=> b!1813660 m!2243101))

(declare-fun m!2243103 () Bool)

(assert (=> b!1813660 m!2243103))

(assert (=> bm!114160 m!2242011))

(assert (=> bm!114160 m!2243093))

(assert (=> b!1813659 m!2242011))

(assert (=> b!1813659 m!2243101))

(assert (=> b!1813659 m!2243101))

(declare-fun m!2243105 () Bool)

(assert (=> b!1813659 m!2243105))

(declare-fun m!2243107 () Bool)

(assert (=> b!1813663 m!2243107))

(assert (=> b!1813657 m!2242011))

(assert (=> b!1813657 m!2243097))

(assert (=> b!1813664 m!2242011))

(assert (=> b!1813664 m!2243097))

(assert (=> b!1813656 m!2242011))

(assert (=> b!1813656 m!2243101))

(assert (=> b!1813656 m!2243101))

(assert (=> b!1813656 m!2243105))

(assert (=> b!1812828 d!556570))

(declare-fun d!556572 () Bool)

(assert (=> d!556572 (= (list!8051 (charsOf!2200 (_1!11081 lt!703931))) (list!8053 (c!296134 (charsOf!2200 (_1!11081 lt!703931)))))))

(declare-fun bs!407108 () Bool)

(assert (= bs!407108 d!556572))

(declare-fun m!2243109 () Bool)

(assert (=> bs!407108 m!2243109))

(assert (=> b!1812828 d!556572))

(assert (=> b!1812828 d!556336))

(declare-fun d!556574 () Bool)

(assert (=> d!556574 (= (get!6120 lt!703940) (v!25647 lt!703940))))

(assert (=> b!1812828 d!556574))

(declare-fun d!556576 () Bool)

(assert (=> d!556576 (not (matchR!2352 (regex!3551 (rule!5657 (_1!11081 lt!703931))) lt!703900))))

(declare-fun lt!704323 () Unit!34395)

(assert (=> d!556576 (= lt!704323 (choose!11419 thiss!24550 rules!3447 (rule!5657 token!523) lt!703900 lt!703900 (rule!5657 (_1!11081 lt!703931))))))

(assert (=> d!556576 (isPrefix!1791 lt!703900 lt!703900)))

(assert (=> d!556576 (= (lemmaMaxPrefNoSmallerRuleMatches!172 thiss!24550 rules!3447 (rule!5657 token!523) lt!703900 lt!703900 (rule!5657 (_1!11081 lt!703931))) lt!704323)))

(declare-fun bs!407109 () Bool)

(assert (= bs!407109 d!556576))

(assert (=> bs!407109 m!2242075))

(declare-fun m!2243111 () Bool)

(assert (=> bs!407109 m!2243111))

(assert (=> bs!407109 m!2242395))

(assert (=> b!1812829 d!556576))

(declare-fun b!1813671 () Bool)

(declare-fun e!1158580 () Bool)

(assert (=> b!1813671 (= e!1158580 (not (= (head!4214 lt!703900) (c!296135 (regex!3551 (rule!5657 (_1!11081 lt!703931)))))))))

(declare-fun b!1813672 () Bool)

(declare-fun e!1158578 () Bool)

(assert (=> b!1813672 (= e!1158578 e!1158580)))

(declare-fun res!815387 () Bool)

(assert (=> b!1813672 (=> res!815387 e!1158580)))

(declare-fun call!114166 () Bool)

(assert (=> b!1813672 (= res!815387 call!114166)))

(declare-fun b!1813673 () Bool)

(declare-fun res!815381 () Bool)

(assert (=> b!1813673 (=> res!815381 e!1158580)))

(assert (=> b!1813673 (= res!815381 (not (isEmpty!12514 (tail!2683 lt!703900))))))

(declare-fun b!1813674 () Bool)

(declare-fun e!1158579 () Bool)

(assert (=> b!1813674 (= e!1158579 (matchR!2352 (derivativeStep!1274 (regex!3551 (rule!5657 (_1!11081 lt!703931))) (head!4214 lt!703900)) (tail!2683 lt!703900)))))

(declare-fun bm!114161 () Bool)

(assert (=> bm!114161 (= call!114166 (isEmpty!12514 lt!703900))))

(declare-fun b!1813675 () Bool)

(declare-fun e!1158581 () Bool)

(declare-fun lt!704324 () Bool)

(assert (=> b!1813675 (= e!1158581 (= lt!704324 call!114166))))

(declare-fun b!1813676 () Bool)

(declare-fun e!1158582 () Bool)

(assert (=> b!1813676 (= e!1158581 e!1158582)))

(declare-fun c!296292 () Bool)

(assert (=> b!1813676 (= c!296292 ((_ is EmptyLang!4879) (regex!3551 (rule!5657 (_1!11081 lt!703931)))))))

(declare-fun b!1813677 () Bool)

(assert (=> b!1813677 (= e!1158579 (nullable!1505 (regex!3551 (rule!5657 (_1!11081 lt!703931)))))))

(declare-fun b!1813670 () Bool)

(declare-fun res!815384 () Bool)

(declare-fun e!1158584 () Bool)

(assert (=> b!1813670 (=> (not res!815384) (not e!1158584))))

(assert (=> b!1813670 (= res!815384 (isEmpty!12514 (tail!2683 lt!703900)))))

(declare-fun d!556578 () Bool)

(assert (=> d!556578 e!1158581))

(declare-fun c!296293 () Bool)

(assert (=> d!556578 (= c!296293 ((_ is EmptyExpr!4879) (regex!3551 (rule!5657 (_1!11081 lt!703931)))))))

(assert (=> d!556578 (= lt!704324 e!1158579)))

(declare-fun c!296291 () Bool)

(assert (=> d!556578 (= c!296291 (isEmpty!12514 lt!703900))))

(assert (=> d!556578 (validRegex!1979 (regex!3551 (rule!5657 (_1!11081 lt!703931))))))

(assert (=> d!556578 (= (matchR!2352 (regex!3551 (rule!5657 (_1!11081 lt!703931))) lt!703900) lt!704324)))

(declare-fun b!1813678 () Bool)

(assert (=> b!1813678 (= e!1158584 (= (head!4214 lt!703900) (c!296135 (regex!3551 (rule!5657 (_1!11081 lt!703931))))))))

(declare-fun b!1813679 () Bool)

(declare-fun e!1158583 () Bool)

(assert (=> b!1813679 (= e!1158583 e!1158578)))

(declare-fun res!815385 () Bool)

(assert (=> b!1813679 (=> (not res!815385) (not e!1158578))))

(assert (=> b!1813679 (= res!815385 (not lt!704324))))

(declare-fun b!1813680 () Bool)

(assert (=> b!1813680 (= e!1158582 (not lt!704324))))

(declare-fun b!1813681 () Bool)

(declare-fun res!815382 () Bool)

(assert (=> b!1813681 (=> res!815382 e!1158583)))

(assert (=> b!1813681 (= res!815382 e!1158584)))

(declare-fun res!815386 () Bool)

(assert (=> b!1813681 (=> (not res!815386) (not e!1158584))))

(assert (=> b!1813681 (= res!815386 lt!704324)))

(declare-fun b!1813682 () Bool)

(declare-fun res!815380 () Bool)

(assert (=> b!1813682 (=> (not res!815380) (not e!1158584))))

(assert (=> b!1813682 (= res!815380 (not call!114166))))

(declare-fun b!1813683 () Bool)

(declare-fun res!815383 () Bool)

(assert (=> b!1813683 (=> res!815383 e!1158583)))

(assert (=> b!1813683 (= res!815383 (not ((_ is ElementMatch!4879) (regex!3551 (rule!5657 (_1!11081 lt!703931))))))))

(assert (=> b!1813683 (= e!1158582 e!1158583)))

(assert (= (and d!556578 c!296291) b!1813677))

(assert (= (and d!556578 (not c!296291)) b!1813674))

(assert (= (and d!556578 c!296293) b!1813675))

(assert (= (and d!556578 (not c!296293)) b!1813676))

(assert (= (and b!1813676 c!296292) b!1813680))

(assert (= (and b!1813676 (not c!296292)) b!1813683))

(assert (= (and b!1813683 (not res!815383)) b!1813681))

(assert (= (and b!1813681 res!815386) b!1813682))

(assert (= (and b!1813682 res!815380) b!1813670))

(assert (= (and b!1813670 res!815384) b!1813678))

(assert (= (and b!1813681 (not res!815382)) b!1813679))

(assert (= (and b!1813679 res!815385) b!1813672))

(assert (= (and b!1813672 (not res!815387)) b!1813673))

(assert (= (and b!1813673 (not res!815381)) b!1813671))

(assert (= (or b!1813675 b!1813672 b!1813682) bm!114161))

(assert (=> d!556578 m!2242155))

(assert (=> d!556578 m!2242739))

(assert (=> b!1813674 m!2242159))

(assert (=> b!1813674 m!2242159))

(declare-fun m!2243113 () Bool)

(assert (=> b!1813674 m!2243113))

(assert (=> b!1813674 m!2242163))

(assert (=> b!1813674 m!2243113))

(assert (=> b!1813674 m!2242163))

(declare-fun m!2243115 () Bool)

(assert (=> b!1813674 m!2243115))

(assert (=> bm!114161 m!2242155))

(assert (=> b!1813673 m!2242163))

(assert (=> b!1813673 m!2242163))

(assert (=> b!1813673 m!2242167))

(assert (=> b!1813677 m!2242747))

(assert (=> b!1813671 m!2242159))

(assert (=> b!1813678 m!2242159))

(assert (=> b!1813670 m!2242163))

(assert (=> b!1813670 m!2242163))

(assert (=> b!1813670 m!2242167))

(assert (=> b!1812829 d!556578))

(declare-fun d!556580 () Bool)

(assert (=> d!556580 (= (list!8051 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908))) (list!8053 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908)))))))

(declare-fun bs!407110 () Bool)

(assert (= bs!407110 d!556580))

(declare-fun m!2243117 () Bool)

(assert (=> bs!407110 m!2243117))

(assert (=> b!1812830 d!556580))

(declare-fun bs!407111 () Bool)

(declare-fun d!556582 () Bool)

(assert (= bs!407111 (and d!556582 b!1812839)))

(declare-fun lambda!71030 () Int)

(assert (=> bs!407111 (= lambda!71030 lambda!71012)))

(declare-fun b!1813688 () Bool)

(declare-fun e!1158587 () Bool)

(assert (=> b!1813688 (= e!1158587 true)))

(assert (=> d!556582 e!1158587))

(assert (= d!556582 b!1813688))

(assert (=> b!1813688 (< (dynLambda!9833 order!12899 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) (dynLambda!9834 order!12901 lambda!71030))))

(assert (=> b!1813688 (< (dynLambda!9835 order!12903 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) (dynLambda!9834 order!12901 lambda!71030))))

(assert (=> d!556582 (= (list!8051 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908))) (list!8051 lt!703908))))

(declare-fun lt!704327 () Unit!34395)

(declare-fun ForallOf!357 (Int BalanceConc!13102) Unit!34395)

(assert (=> d!556582 (= lt!704327 (ForallOf!357 lambda!71030 lt!703908))))

(assert (=> d!556582 (= (lemmaSemiInverse!689 (transformation!3551 (rule!5657 (_1!11081 lt!703931))) lt!703908) lt!704327)))

(declare-fun b_lambda!59811 () Bool)

(assert (=> (not b_lambda!59811) (not d!556582)))

(assert (=> d!556582 t!169239))

(declare-fun b_and!140141 () Bool)

(assert (= b_and!140089 (and (=> t!169239 result!133030) b_and!140141)))

(assert (=> d!556582 t!169241))

(declare-fun b_and!140143 () Bool)

(assert (= b_and!140091 (and (=> t!169241 result!133032) b_and!140143)))

(assert (=> d!556582 t!169243))

(declare-fun b_and!140145 () Bool)

(assert (= b_and!140093 (and (=> t!169243 result!133034) b_and!140145)))

(declare-fun b_lambda!59813 () Bool)

(assert (=> (not b_lambda!59813) (not d!556582)))

(assert (=> d!556582 t!169245))

(declare-fun b_and!140147 () Bool)

(assert (= b_and!140135 (and (=> t!169245 result!133036) b_and!140147)))

(assert (=> d!556582 t!169247))

(declare-fun b_and!140149 () Bool)

(assert (= b_and!140137 (and (=> t!169247 result!133040) b_and!140149)))

(assert (=> d!556582 t!169249))

(declare-fun b_and!140151 () Bool)

(assert (= b_and!140139 (and (=> t!169249 result!133042) b_and!140151)))

(assert (=> d!556582 m!2242023))

(assert (=> d!556582 m!2242025))

(assert (=> d!556582 m!2242023))

(assert (=> d!556582 m!2242025))

(assert (=> d!556582 m!2242027))

(assert (=> d!556582 m!2241985))

(declare-fun m!2243119 () Bool)

(assert (=> d!556582 m!2243119))

(assert (=> b!1812830 d!556582))

(declare-fun d!556584 () Bool)

(declare-fun lt!704328 () Bool)

(assert (=> d!556584 (= lt!704328 (select (content!2891 rules!3447) (rule!5657 (_1!11081 lt!703931))))))

(declare-fun e!1158588 () Bool)

(assert (=> d!556584 (= lt!704328 e!1158588)))

(declare-fun res!815389 () Bool)

(assert (=> d!556584 (=> (not res!815389) (not e!1158588))))

(assert (=> d!556584 (= res!815389 ((_ is Cons!19777) rules!3447))))

(assert (=> d!556584 (= (contains!3585 rules!3447 (rule!5657 (_1!11081 lt!703931))) lt!704328)))

(declare-fun b!1813689 () Bool)

(declare-fun e!1158589 () Bool)

(assert (=> b!1813689 (= e!1158588 e!1158589)))

(declare-fun res!815388 () Bool)

(assert (=> b!1813689 (=> res!815388 e!1158589)))

(assert (=> b!1813689 (= res!815388 (= (h!25178 rules!3447) (rule!5657 (_1!11081 lt!703931))))))

(declare-fun b!1813690 () Bool)

(assert (=> b!1813690 (= e!1158589 (contains!3585 (t!169252 rules!3447) (rule!5657 (_1!11081 lt!703931))))))

(assert (= (and d!556584 res!815389) b!1813689))

(assert (= (and b!1813689 (not res!815388)) b!1813690))

(assert (=> d!556584 m!2242877))

(declare-fun m!2243121 () Bool)

(assert (=> d!556584 m!2243121))

(declare-fun m!2243123 () Bool)

(assert (=> b!1813690 m!2243123))

(assert (=> b!1812804 d!556584))

(declare-fun d!556586 () Bool)

(assert (=> d!556586 (= (get!6119 lt!703916) (v!25646 lt!703916))))

(assert (=> b!1812826 d!556586))

(declare-fun d!556588 () Bool)

(declare-fun c!296295 () Bool)

(assert (=> d!556588 (= c!296295 ((_ is Node!6579) (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908)))))))

(declare-fun e!1158590 () Bool)

(assert (=> d!556588 (= (inv!25782 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908)))) e!1158590)))

(declare-fun b!1813691 () Bool)

(assert (=> b!1813691 (= e!1158590 (inv!25786 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908)))))))

(declare-fun b!1813692 () Bool)

(declare-fun e!1158591 () Bool)

(assert (=> b!1813692 (= e!1158590 e!1158591)))

(declare-fun res!815390 () Bool)

(assert (=> b!1813692 (= res!815390 (not ((_ is Leaf!9575) (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908))))))))

(assert (=> b!1813692 (=> res!815390 e!1158591)))

(declare-fun b!1813693 () Bool)

(assert (=> b!1813693 (= e!1158591 (inv!25787 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908)))))))

(assert (= (and d!556588 c!296295) b!1813691))

(assert (= (and d!556588 (not c!296295)) b!1813692))

(assert (= (and b!1813692 (not res!815390)) b!1813693))

(declare-fun m!2243125 () Bool)

(assert (=> b!1813691 m!2243125))

(declare-fun m!2243127 () Bool)

(assert (=> b!1813693 m!2243127))

(assert (=> b!1812860 d!556588))

(declare-fun b!1813704 () Bool)

(declare-fun b_free!49959 () Bool)

(declare-fun b_next!50663 () Bool)

(assert (=> b!1813704 (= b_free!49959 (not b_next!50663))))

(declare-fun t!169302 () Bool)

(declare-fun tb!110845 () Bool)

(assert (=> (and b!1813704 (= (toValue!5082 (transformation!3551 (h!25178 (t!169252 rules!3447)))) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169302) tb!110845))

(declare-fun result!133102 () Bool)

(assert (= result!133102 result!133036))

(assert (=> d!556288 t!169302))

(assert (=> b!1812830 t!169302))

(assert (=> d!556582 t!169302))

(declare-fun t!169304 () Bool)

(declare-fun tb!110847 () Bool)

(assert (=> (and b!1813704 (= (toValue!5082 (transformation!3551 (h!25178 (t!169252 rules!3447)))) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169304) tb!110847))

(declare-fun result!133104 () Bool)

(assert (= result!133104 result!133094))

(assert (=> d!556564 t!169304))

(declare-fun t!169306 () Bool)

(declare-fun tb!110849 () Bool)

(assert (=> (and b!1813704 (= (toValue!5082 (transformation!3551 (h!25178 (t!169252 rules!3447)))) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169306) tb!110849))

(declare-fun result!133106 () Bool)

(assert (= result!133106 result!133050))

(assert (=> d!556288 t!169306))

(assert (=> d!556282 t!169302))

(declare-fun tp!512173 () Bool)

(declare-fun b_and!140153 () Bool)

(assert (=> b!1813704 (= tp!512173 (and (=> t!169302 result!133102) (=> t!169304 result!133104) (=> t!169306 result!133106) b_and!140153))))

(declare-fun b_free!49961 () Bool)

(declare-fun b_next!50665 () Bool)

(assert (=> b!1813704 (= b_free!49961 (not b_next!50665))))

(declare-fun t!169308 () Bool)

(declare-fun tb!110851 () Bool)

(assert (=> (and b!1813704 (= (toChars!4941 (transformation!3551 (h!25178 (t!169252 rules!3447)))) (toChars!4941 (transformation!3551 (rule!5657 token!523)))) t!169308) tb!110851))

(declare-fun result!133108 () Bool)

(assert (= result!133108 result!133056))

(assert (=> b!1813036 t!169308))

(declare-fun tb!110853 () Bool)

(declare-fun t!169310 () Bool)

(assert (=> (and b!1813704 (= (toChars!4941 (transformation!3551 (h!25178 (t!169252 rules!3447)))) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169310) tb!110853))

(declare-fun result!133110 () Bool)

(assert (= result!133110 result!133022))

(assert (=> b!1812809 t!169310))

(declare-fun tb!110855 () Bool)

(declare-fun t!169312 () Bool)

(assert (=> (and b!1813704 (= (toChars!4941 (transformation!3551 (h!25178 (t!169252 rules!3447)))) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931))))) t!169312) tb!110855))

(declare-fun result!133112 () Bool)

(assert (= result!133112 result!133030))

(assert (=> d!556582 t!169312))

(assert (=> b!1812830 t!169312))

(assert (=> d!556334 t!169308))

(assert (=> d!556336 t!169310))

(declare-fun b_and!140155 () Bool)

(declare-fun tp!512170 () Bool)

(assert (=> b!1813704 (= tp!512170 (and (=> t!169312 result!133112) (=> t!169310 result!133110) (=> t!169308 result!133108) b_and!140155))))

(declare-fun e!1158601 () Bool)

(assert (=> b!1813704 (= e!1158601 (and tp!512173 tp!512170))))

(declare-fun b!1813703 () Bool)

(declare-fun e!1158603 () Bool)

(declare-fun tp!512171 () Bool)

(assert (=> b!1813703 (= e!1158603 (and tp!512171 (inv!25775 (tag!3961 (h!25178 (t!169252 rules!3447)))) (inv!25780 (transformation!3551 (h!25178 (t!169252 rules!3447)))) e!1158601))))

(declare-fun b!1813702 () Bool)

(declare-fun e!1158600 () Bool)

(declare-fun tp!512172 () Bool)

(assert (=> b!1813702 (= e!1158600 (and e!1158603 tp!512172))))

(assert (=> b!1812807 (= tp!512099 e!1158600)))

(assert (= b!1813703 b!1813704))

(assert (= b!1813702 b!1813703))

(assert (= (and b!1812807 ((_ is Cons!19777) (t!169252 rules!3447))) b!1813702))

(declare-fun m!2243129 () Bool)

(assert (=> b!1813703 m!2243129))

(declare-fun m!2243131 () Bool)

(assert (=> b!1813703 m!2243131))

(declare-fun b!1813709 () Bool)

(declare-fun e!1158606 () Bool)

(declare-fun tp!512176 () Bool)

(assert (=> b!1813709 (= e!1158606 (and tp_is_empty!8001 tp!512176))))

(assert (=> b!1812802 (= tp!512097 e!1158606)))

(assert (= (and b!1812802 ((_ is Cons!19776) (originalCharacters!4365 token!523))) b!1813709))

(declare-fun b!1813723 () Bool)

(declare-fun e!1158609 () Bool)

(declare-fun tp!512190 () Bool)

(declare-fun tp!512187 () Bool)

(assert (=> b!1813723 (= e!1158609 (and tp!512190 tp!512187))))

(assert (=> b!1812834 (= tp!512101 e!1158609)))

(declare-fun b!1813720 () Bool)

(assert (=> b!1813720 (= e!1158609 tp_is_empty!8001)))

(declare-fun b!1813721 () Bool)

(declare-fun tp!512189 () Bool)

(declare-fun tp!512188 () Bool)

(assert (=> b!1813721 (= e!1158609 (and tp!512189 tp!512188))))

(declare-fun b!1813722 () Bool)

(declare-fun tp!512191 () Bool)

(assert (=> b!1813722 (= e!1158609 tp!512191)))

(assert (= (and b!1812834 ((_ is ElementMatch!4879) (regex!3551 rule!422))) b!1813720))

(assert (= (and b!1812834 ((_ is Concat!8521) (regex!3551 rule!422))) b!1813721))

(assert (= (and b!1812834 ((_ is Star!4879) (regex!3551 rule!422))) b!1813722))

(assert (= (and b!1812834 ((_ is Union!4879) (regex!3551 rule!422))) b!1813723))

(declare-fun b!1813727 () Bool)

(declare-fun e!1158610 () Bool)

(declare-fun tp!512195 () Bool)

(declare-fun tp!512192 () Bool)

(assert (=> b!1813727 (= e!1158610 (and tp!512195 tp!512192))))

(assert (=> b!1812836 (= tp!512094 e!1158610)))

(declare-fun b!1813724 () Bool)

(assert (=> b!1813724 (= e!1158610 tp_is_empty!8001)))

(declare-fun b!1813725 () Bool)

(declare-fun tp!512194 () Bool)

(declare-fun tp!512193 () Bool)

(assert (=> b!1813725 (= e!1158610 (and tp!512194 tp!512193))))

(declare-fun b!1813726 () Bool)

(declare-fun tp!512196 () Bool)

(assert (=> b!1813726 (= e!1158610 tp!512196)))

(assert (= (and b!1812836 ((_ is ElementMatch!4879) (regex!3551 (h!25178 rules!3447)))) b!1813724))

(assert (= (and b!1812836 ((_ is Concat!8521) (regex!3551 (h!25178 rules!3447)))) b!1813725))

(assert (= (and b!1812836 ((_ is Star!4879) (regex!3551 (h!25178 rules!3447)))) b!1813726))

(assert (= (and b!1812836 ((_ is Union!4879) (regex!3551 (h!25178 rules!3447)))) b!1813727))

(declare-fun b!1813731 () Bool)

(declare-fun e!1158611 () Bool)

(declare-fun tp!512200 () Bool)

(declare-fun tp!512197 () Bool)

(assert (=> b!1813731 (= e!1158611 (and tp!512200 tp!512197))))

(assert (=> b!1812820 (= tp!512098 e!1158611)))

(declare-fun b!1813728 () Bool)

(assert (=> b!1813728 (= e!1158611 tp_is_empty!8001)))

(declare-fun b!1813729 () Bool)

(declare-fun tp!512199 () Bool)

(declare-fun tp!512198 () Bool)

(assert (=> b!1813729 (= e!1158611 (and tp!512199 tp!512198))))

(declare-fun b!1813730 () Bool)

(declare-fun tp!512201 () Bool)

(assert (=> b!1813730 (= e!1158611 tp!512201)))

(assert (= (and b!1812820 ((_ is ElementMatch!4879) (regex!3551 (rule!5657 token!523)))) b!1813728))

(assert (= (and b!1812820 ((_ is Concat!8521) (regex!3551 (rule!5657 token!523)))) b!1813729))

(assert (= (and b!1812820 ((_ is Star!4879) (regex!3551 (rule!5657 token!523)))) b!1813730))

(assert (= (and b!1812820 ((_ is Union!4879) (regex!3551 (rule!5657 token!523)))) b!1813731))

(declare-fun e!1158617 () Bool)

(declare-fun b!1813740 () Bool)

(declare-fun tp!512208 () Bool)

(declare-fun tp!512209 () Bool)

(assert (=> b!1813740 (= e!1158617 (and (inv!25782 (left!15868 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931)))))) tp!512208 (inv!25782 (right!16198 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931)))))) tp!512209))))

(declare-fun b!1813742 () Bool)

(declare-fun e!1158616 () Bool)

(declare-fun tp!512210 () Bool)

(assert (=> b!1813742 (= e!1158616 tp!512210)))

(declare-fun b!1813741 () Bool)

(declare-fun inv!25789 (IArray!13163) Bool)

(assert (=> b!1813741 (= e!1158617 (and (inv!25789 (xs!9455 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931)))))) e!1158616))))

(assert (=> b!1812859 (= tp!512105 (and (inv!25782 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931))))) e!1158617))))

(assert (= (and b!1812859 ((_ is Node!6579) (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931)))))) b!1813740))

(assert (= b!1813741 b!1813742))

(assert (= (and b!1812859 ((_ is Leaf!9575) (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (value!110876 (_1!11081 lt!703931)))))) b!1813741))

(declare-fun m!2243133 () Bool)

(assert (=> b!1813740 m!2243133))

(declare-fun m!2243135 () Bool)

(assert (=> b!1813740 m!2243135))

(declare-fun m!2243137 () Bool)

(assert (=> b!1813741 m!2243137))

(assert (=> b!1812859 m!2241897))

(declare-fun b!1813743 () Bool)

(declare-fun e!1158618 () Bool)

(declare-fun tp!512211 () Bool)

(assert (=> b!1813743 (= e!1158618 (and tp_is_empty!8001 tp!512211))))

(assert (=> b!1812810 (= tp!512093 e!1158618)))

(assert (= (and b!1812810 ((_ is Cons!19776) (t!169251 suffix!1421))) b!1813743))

(declare-fun tp!512212 () Bool)

(declare-fun e!1158620 () Bool)

(declare-fun tp!512213 () Bool)

(declare-fun b!1813744 () Bool)

(assert (=> b!1813744 (= e!1158620 (and (inv!25782 (left!15868 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908))))) tp!512212 (inv!25782 (right!16198 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908))))) tp!512213))))

(declare-fun b!1813746 () Bool)

(declare-fun e!1158619 () Bool)

(declare-fun tp!512214 () Bool)

(assert (=> b!1813746 (= e!1158619 tp!512214)))

(declare-fun b!1813745 () Bool)

(assert (=> b!1813745 (= e!1158620 (and (inv!25789 (xs!9455 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908))))) e!1158619))))

(assert (=> b!1812860 (= tp!512106 (and (inv!25782 (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908)))) e!1158620))))

(assert (= (and b!1812860 ((_ is Node!6579) (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908))))) b!1813744))

(assert (= b!1813745 b!1813746))

(assert (= (and b!1812860 ((_ is Leaf!9575) (c!296134 (dynLambda!9836 (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) (dynLambda!9837 (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))) lt!703908))))) b!1813745))

(declare-fun m!2243139 () Bool)

(assert (=> b!1813744 m!2243139))

(declare-fun m!2243141 () Bool)

(assert (=> b!1813744 m!2243141))

(declare-fun m!2243143 () Bool)

(assert (=> b!1813745 m!2243143))

(assert (=> b!1812860 m!2241901))

(declare-fun b_lambda!59815 () Bool)

(assert (= b_lambda!59783 (or (and b!1812825 b_free!49945 (= (toChars!4941 (transformation!3551 rule!422)) (toChars!4941 (transformation!3551 (rule!5657 token!523))))) (and b!1812816 b_free!49949 (= (toChars!4941 (transformation!3551 (h!25178 rules!3447))) (toChars!4941 (transformation!3551 (rule!5657 token!523))))) (and b!1812812 b_free!49953) (and b!1813704 b_free!49961 (= (toChars!4941 (transformation!3551 (h!25178 (t!169252 rules!3447)))) (toChars!4941 (transformation!3551 (rule!5657 token!523))))) b_lambda!59815)))

(declare-fun b_lambda!59817 () Bool)

(assert (= b_lambda!59763 (or (and b!1812825 b_free!49945 (= (toChars!4941 (transformation!3551 rule!422)) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))))) (and b!1812816 b_free!49949 (= (toChars!4941 (transformation!3551 (h!25178 rules!3447))) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))))) (and b!1812812 b_free!49953 (= (toChars!4941 (transformation!3551 (rule!5657 token!523))) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))))) (and b!1813704 b_free!49961 (= (toChars!4941 (transformation!3551 (h!25178 (t!169252 rules!3447)))) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))))) b_lambda!59817)))

(declare-fun b_lambda!59819 () Bool)

(assert (= b_lambda!59767 (or (and b!1812825 b_free!49943 (= (toValue!5082 (transformation!3551 rule!422)) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))))) (and b!1812816 b_free!49947 (= (toValue!5082 (transformation!3551 (h!25178 rules!3447))) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))))) (and b!1812812 b_free!49951 (= (toValue!5082 (transformation!3551 (rule!5657 token!523))) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))))) (and b!1813704 b_free!49959 (= (toValue!5082 (transformation!3551 (h!25178 (t!169252 rules!3447)))) (toValue!5082 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))))) b_lambda!59819)))

(declare-fun b_lambda!59821 () Bool)

(assert (= b_lambda!59765 (or (and b!1812825 b_free!49945 (= (toChars!4941 (transformation!3551 rule!422)) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))))) (and b!1812816 b_free!49949 (= (toChars!4941 (transformation!3551 (h!25178 rules!3447))) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))))) (and b!1812812 b_free!49953 (= (toChars!4941 (transformation!3551 (rule!5657 token!523))) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))))) (and b!1813704 b_free!49961 (= (toChars!4941 (transformation!3551 (h!25178 (t!169252 rules!3447)))) (toChars!4941 (transformation!3551 (rule!5657 (_1!11081 lt!703931)))))) b_lambda!59821)))

(declare-fun b_lambda!59823 () Bool)

(assert (= b_lambda!59777 (or (and b!1812825 b_free!49945 (= (toChars!4941 (transformation!3551 rule!422)) (toChars!4941 (transformation!3551 (rule!5657 token!523))))) (and b!1812816 b_free!49949 (= (toChars!4941 (transformation!3551 (h!25178 rules!3447))) (toChars!4941 (transformation!3551 (rule!5657 token!523))))) (and b!1812812 b_free!49953) (and b!1813704 b_free!49961 (= (toChars!4941 (transformation!3551 (h!25178 (t!169252 rules!3447)))) (toChars!4941 (transformation!3551 (rule!5657 token!523))))) b_lambda!59823)))

(check-sat (not b!1813401) (not b!1813641) (not bm!114153) (not d!556272) (not b!1813275) (not bm!114155) (not b_next!50657) (not b!1813410) (not d!556454) (not b_lambda!59815) (not b!1813673) (not b!1813536) (not b!1813740) b_and!140141 (not b!1813129) (not b!1813649) (not b!1812945) b_and!140155 (not b_lambda!59775) (not b!1813221) (not d!556374) (not tb!110803) (not d!556480) (not b!1813663) (not b!1813130) (not d!556320) (not b!1813471) (not b!1813390) (not b!1813462) (not b!1812988) (not d!556528) (not bm!114161) (not d!556346) (not b!1813274) (not d!556460) (not b!1813370) (not b!1813745) (not b!1813742) (not b!1813177) (not b!1813124) (not b!1813127) (not b!1812943) (not b!1813126) (not bm!114159) (not b!1813452) (not b!1813702) (not tb!110839) (not b!1813464) (not b_lambda!59813) (not b!1813128) (not b!1813434) (not d!556452) (not b!1813394) (not b!1813539) (not d!556572) (not b!1813670) (not b!1813664) (not d!556456) (not b!1813655) (not b!1813393) (not b!1813678) (not d!556526) (not b!1813409) (not b!1813722) (not bm!114141) (not b!1813435) (not b!1813423) (not b!1813397) (not b!1813125) (not b!1813227) (not b!1813447) (not d!556316) (not b!1813271) (not d!556576) (not d!556288) b_and!140147 (not b!1813709) (not d!556314) (not b!1813544) (not d!556298) (not b!1813467) (not b!1813408) (not b_next!50653) (not d!556444) (not b!1813077) (not d!556546) (not b!1813543) (not b!1813656) (not d!556566) (not b_next!50665) (not b!1813540) (not d!556448) (not b!1813036) (not b!1813426) (not b!1813359) (not b_lambda!59817) (not b!1813730) (not b_next!50647) (not d!556360) (not d!556458) (not b_lambda!59821) (not b!1813400) (not b!1813220) (not d!556372) (not b_lambda!59773) (not b!1813386) (not b!1813647) (not b!1813506) (not b!1813224) (not d!556544) (not b!1812946) (not b!1813173) (not b!1813466) (not b_lambda!59823) (not b!1813176) (not b!1813690) (not d!556442) (not d!556582) (not d!556518) (not b!1813223) b_and!140149 b_and!140153 (not b_lambda!59811) (not b!1813741) (not d!556440) (not b!1813487) (not b!1813643) (not d!556264) (not b!1813362) (not d!556290) (not b!1813284) (not d!556472) (not d!556362) (not d!556580) b_and!140143 (not b!1813555) (not b!1813037) (not b!1813436) (not d!556476) (not b!1813218) (not b_lambda!59785) (not b_next!50655) (not b_next!50663) (not d!556486) (not b!1813283) (not d!556312) (not d!556436) (not b!1813225) (not b!1812860) (not b!1813174) (not b!1813746) (not d!556398) (not d!556294) (not b!1812987) (not b!1813072) (not d!556522) (not b!1813285) (not b!1813038) (not b!1813427) (not b!1813721) (not d!556266) (not d!556502) (not d!556542) (not d!556286) (not b!1813507) (not b!1813231) (not b!1813062) (not b!1813645) (not b!1812984) (not b!1813660) (not b!1813646) (not b!1813744) (not b!1813553) (not d!556284) (not b!1813729) (not b!1813644) (not tb!110809) (not d!556578) (not b!1813674) (not b_next!50649) (not b!1813358) (not d!556334) (not b!1813727) (not d!556278) (not b!1813360) (not b!1813726) (not b!1813449) (not b!1813365) b_and!140145 (not bm!114154) (not b!1813657) (not b!1813691) (not d!556470) (not d!556330) (not b!1813671) (not b!1813061) (not b!1813363) (not b!1813131) (not b!1813725) (not b!1813659) b_and!140151 (not b!1813073) (not b!1813230) (not b!1813226) (not b!1813172) (not b!1813219) (not b_next!50651) (not b!1813723) (not d!556378) (not b!1813392) (not d!556280) (not b!1813217) (not b!1813693) (not b!1813366) (not d!556434) (not b_lambda!59809) (not b!1813703) (not b!1812992) (not b!1812985) (not d!556318) (not b!1813463) (not d!556494) (not b!1813743) tp_is_empty!8001 (not d!556430) (not b!1813537) (not b!1813470) (not b!1813369) (not b!1813215) (not b_lambda!59771) (not bm!114147) (not d!556584) (not b!1813677) (not d!556432) (not b!1813642) (not b!1813222) (not d!556344) (not b!1813214) (not bm!114160) (not d!556364) (not b!1813396) (not d!556538) (not d!556570) (not b!1812859) (not d!556304) (not b!1812991) (not b_lambda!59819) (not bm!114150) (not d!556370) (not b!1812949) (not b!1813731) (not b!1813504) (not d!556336))
(check-sat (not b_next!50657) b_and!140141 b_and!140155 b_and!140147 (not b_next!50653) (not b_next!50665) (not b_next!50647) b_and!140149 b_and!140153 b_and!140143 (not b_next!50655) (not b_next!50663) (not b_next!50649) b_and!140145 b_and!140151 (not b_next!50651))
