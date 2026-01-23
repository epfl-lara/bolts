; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396846 () Bool)

(assert start!396846)

(declare-fun b!4163947 () Bool)

(declare-fun b_free!120087 () Bool)

(declare-fun b_next!120791 () Bool)

(assert (=> b!4163947 (= b_free!120087 (not b_next!120791))))

(declare-fun tp!1271304 () Bool)

(declare-fun b_and!324629 () Bool)

(assert (=> b!4163947 (= tp!1271304 b_and!324629)))

(declare-fun b_free!120089 () Bool)

(declare-fun b_next!120793 () Bool)

(assert (=> b!4163947 (= b_free!120089 (not b_next!120793))))

(declare-fun tp!1271310 () Bool)

(declare-fun b_and!324631 () Bool)

(assert (=> b!4163947 (= tp!1271310 b_and!324631)))

(declare-fun b!4163953 () Bool)

(declare-fun b_free!120091 () Bool)

(declare-fun b_next!120795 () Bool)

(assert (=> b!4163953 (= b_free!120091 (not b_next!120795))))

(declare-fun tp!1271307 () Bool)

(declare-fun b_and!324633 () Bool)

(assert (=> b!4163953 (= tp!1271307 b_and!324633)))

(declare-fun b_free!120093 () Bool)

(declare-fun b_next!120797 () Bool)

(assert (=> b!4163953 (= b_free!120093 (not b_next!120797))))

(declare-fun tp!1271305 () Bool)

(declare-fun b_and!324635 () Bool)

(assert (=> b!4163953 (= tp!1271305 b_and!324635)))

(declare-fun b!4163958 () Bool)

(declare-fun b_free!120095 () Bool)

(declare-fun b_next!120799 () Bool)

(assert (=> b!4163958 (= b_free!120095 (not b_next!120799))))

(declare-fun tp!1271312 () Bool)

(declare-fun b_and!324637 () Bool)

(assert (=> b!4163958 (= tp!1271312 b_and!324637)))

(declare-fun b_free!120097 () Bool)

(declare-fun b_next!120801 () Bool)

(assert (=> b!4163958 (= b_free!120097 (not b_next!120801))))

(declare-fun tp!1271309 () Bool)

(declare-fun b_and!324639 () Bool)

(assert (=> b!4163958 (= tp!1271309 b_and!324639)))

(declare-fun b!4163941 () Bool)

(declare-fun res!1705791 () Bool)

(declare-fun e!2584862 () Bool)

(assert (=> b!4163941 (=> (not res!1705791) (not e!2584862))))

(declare-datatypes ((C!25068 0))(
  ( (C!25069 (val!14696 Int)) )
))
(declare-datatypes ((List!45681 0))(
  ( (Nil!45557) (Cons!45557 (h!50977 C!25068) (t!343864 List!45681)) )
))
(declare-datatypes ((IArray!27495 0))(
  ( (IArray!27496 (innerList!13805 List!45681)) )
))
(declare-datatypes ((Conc!13745 0))(
  ( (Node!13745 (left!33970 Conc!13745) (right!34300 Conc!13745) (csize!27720 Int) (cheight!13956 Int)) (Leaf!21255 (xs!17051 IArray!27495) (csize!27721 Int)) (Empty!13745) )
))
(declare-datatypes ((List!45682 0))(
  ( (Nil!45558) (Cons!45558 (h!50978 (_ BitVec 16)) (t!343865 List!45682)) )
))
(declare-datatypes ((BalanceConc!27084 0))(
  ( (BalanceConc!27085 (c!712210 Conc!13745)) )
))
(declare-datatypes ((TokenValue!7764 0))(
  ( (FloatLiteralValue!15528 (text!54793 List!45682)) (TokenValueExt!7763 (__x!27749 Int)) (Broken!38820 (value!235241 List!45682)) (Object!7887) (End!7764) (Def!7764) (Underscore!7764) (Match!7764) (Else!7764) (Error!7764) (Case!7764) (If!7764) (Extends!7764) (Abstract!7764) (Class!7764) (Val!7764) (DelimiterValue!15528 (del!7824 List!45682)) (KeywordValue!7770 (value!235242 List!45682)) (CommentValue!15528 (value!235243 List!45682)) (WhitespaceValue!15528 (value!235244 List!45682)) (IndentationValue!7764 (value!235245 List!45682)) (String!52685) (Int32!7764) (Broken!38821 (value!235246 List!45682)) (Boolean!7765) (Unit!64650) (OperatorValue!7767 (op!7824 List!45682)) (IdentifierValue!15528 (value!235247 List!45682)) (IdentifierValue!15529 (value!235248 List!45682)) (WhitespaceValue!15529 (value!235249 List!45682)) (True!15528) (False!15528) (Broken!38822 (value!235250 List!45682)) (Broken!38823 (value!235251 List!45682)) (True!15529) (RightBrace!7764) (RightBracket!7764) (Colon!7764) (Null!7764) (Comma!7764) (LeftBracket!7764) (False!15529) (LeftBrace!7764) (ImaginaryLiteralValue!7764 (text!54794 List!45682)) (StringLiteralValue!23292 (value!235252 List!45682)) (EOFValue!7764 (value!235253 List!45682)) (IdentValue!7764 (value!235254 List!45682)) (DelimiterValue!15529 (value!235255 List!45682)) (DedentValue!7764 (value!235256 List!45682)) (NewLineValue!7764 (value!235257 List!45682)) (IntegerValue!23292 (value!235258 (_ BitVec 32)) (text!54795 List!45682)) (IntegerValue!23293 (value!235259 Int) (text!54796 List!45682)) (Times!7764) (Or!7764) (Equal!7764) (Minus!7764) (Broken!38824 (value!235260 List!45682)) (And!7764) (Div!7764) (LessEqual!7764) (Mod!7764) (Concat!20203) (Not!7764) (Plus!7764) (SpaceValue!7764 (value!235261 List!45682)) (IntegerValue!23294 (value!235262 Int) (text!54797 List!45682)) (StringLiteralValue!23293 (text!54798 List!45682)) (FloatLiteralValue!15529 (text!54799 List!45682)) (BytesLiteralValue!7764 (value!235263 List!45682)) (CommentValue!15529 (value!235264 List!45682)) (StringLiteralValue!23294 (value!235265 List!45682)) (ErrorTokenValue!7764 (msg!7825 List!45682)) )
))
(declare-datatypes ((TokenValueInjection!14956 0))(
  ( (TokenValueInjection!14957 (toValue!10202 Int) (toChars!10061 Int)) )
))
(declare-datatypes ((String!52686 0))(
  ( (String!52687 (value!235266 String)) )
))
(declare-datatypes ((Regex!12439 0))(
  ( (ElementMatch!12439 (c!712211 C!25068)) (Concat!20204 (regOne!25390 Regex!12439) (regTwo!25390 Regex!12439)) (EmptyExpr!12439) (Star!12439 (reg!12768 Regex!12439)) (EmptyLang!12439) (Union!12439 (regOne!25391 Regex!12439) (regTwo!25391 Regex!12439)) )
))
(declare-datatypes ((Rule!14868 0))(
  ( (Rule!14869 (regex!7534 Regex!12439) (tag!8398 String!52686) (isSeparator!7534 Bool) (transformation!7534 TokenValueInjection!14956)) )
))
(declare-datatypes ((List!45683 0))(
  ( (Nil!45559) (Cons!45559 (h!50979 Rule!14868) (t!343866 List!45683)) )
))
(declare-fun rules!3820 () List!45683)

(declare-fun rBis!161 () Rule!14868)

(declare-fun contains!9329 (List!45683 Rule!14868) Bool)

(assert (=> b!4163941 (= res!1705791 (contains!9329 rules!3820 rBis!161))))

(declare-fun b!4163942 () Bool)

(declare-fun e!2584874 () Bool)

(declare-fun tp_is_empty!21841 () Bool)

(declare-fun tp!1271303 () Bool)

(assert (=> b!4163942 (= e!2584874 (and tp_is_empty!21841 tp!1271303))))

(declare-fun b!4163943 () Bool)

(declare-fun res!1705788 () Bool)

(assert (=> b!4163943 (=> (not res!1705788) (not e!2584862))))

(declare-fun r!4097 () Rule!14868)

(assert (=> b!4163943 (= res!1705788 (contains!9329 rules!3820 r!4097))))

(declare-fun b!4163944 () Bool)

(declare-fun res!1705789 () Bool)

(assert (=> b!4163944 (=> (not res!1705789) (not e!2584862))))

(declare-fun p!2942 () List!45681)

(declare-fun input!3316 () List!45681)

(declare-fun isPrefix!4391 (List!45681 List!45681) Bool)

(assert (=> b!4163944 (= res!1705789 (isPrefix!4391 p!2942 input!3316))))

(declare-fun b!4163945 () Bool)

(declare-fun e!2584870 () Bool)

(assert (=> b!4163945 (= e!2584870 true)))

(declare-fun lt!1483589 () Bool)

(declare-datatypes ((LexerInterface!7127 0))(
  ( (LexerInterfaceExt!7124 (__x!27750 Int)) (Lexer!7125) )
))
(declare-fun thiss!25889 () LexerInterface!7127)

(declare-fun rulesValidInductive!2776 (LexerInterface!7127 List!45683) Bool)

(assert (=> b!4163945 (= lt!1483589 (rulesValidInductive!2776 thiss!25889 rules!3820))))

(declare-fun b!4163946 () Bool)

(declare-fun res!1705796 () Bool)

(assert (=> b!4163946 (=> (not res!1705796) (not e!2584862))))

(declare-fun pBis!100 () List!45681)

(assert (=> b!4163946 (= res!1705796 (isPrefix!4391 pBis!100 input!3316))))

(declare-fun e!2584875 () Bool)

(assert (=> b!4163947 (= e!2584875 (and tp!1271304 tp!1271310))))

(declare-fun tp!1271308 () Bool)

(declare-fun e!2584869 () Bool)

(declare-fun b!4163948 () Bool)

(declare-fun inv!60078 (String!52686) Bool)

(declare-fun inv!60080 (TokenValueInjection!14956) Bool)

(assert (=> b!4163948 (= e!2584869 (and tp!1271308 (inv!60078 (tag!8398 r!4097)) (inv!60080 (transformation!7534 r!4097)) e!2584875))))

(declare-fun b!4163949 () Bool)

(declare-fun e!2584863 () Bool)

(declare-fun tp!1271313 () Bool)

(assert (=> b!4163949 (= e!2584863 (and tp_is_empty!21841 tp!1271313))))

(declare-fun tp!1271311 () Bool)

(declare-fun e!2584871 () Bool)

(declare-fun e!2584866 () Bool)

(declare-fun b!4163951 () Bool)

(assert (=> b!4163951 (= e!2584866 (and tp!1271311 (inv!60078 (tag!8398 (h!50979 rules!3820))) (inv!60080 (transformation!7534 (h!50979 rules!3820))) e!2584871))))

(declare-fun b!4163952 () Bool)

(declare-fun e!2584867 () Bool)

(assert (=> b!4163952 (= e!2584867 e!2584870)))

(declare-fun res!1705792 () Bool)

(assert (=> b!4163952 (=> res!1705792 e!2584870)))

(declare-fun lt!1483586 () Int)

(declare-fun lt!1483590 () TokenValue!7764)

(declare-datatypes ((Token!13814 0))(
  ( (Token!13815 (value!235267 TokenValue!7764) (rule!10586 Rule!14868) (size!33475 Int) (originalCharacters!7938 List!45681)) )
))
(declare-datatypes ((tuple2!43494 0))(
  ( (tuple2!43495 (_1!24881 Token!13814) (_2!24881 List!45681)) )
))
(declare-datatypes ((Option!9748 0))(
  ( (None!9747) (Some!9747 (v!40523 tuple2!43494)) )
))
(declare-fun maxPrefixOneRule!3156 (LexerInterface!7127 Rule!14868 List!45681) Option!9748)

(declare-fun getSuffix!2704 (List!45681 List!45681) List!45681)

(assert (=> b!4163952 (= res!1705792 (not (= (maxPrefixOneRule!3156 thiss!25889 r!4097 input!3316) (Some!9747 (tuple2!43495 (Token!13815 lt!1483590 r!4097 lt!1483586 p!2942) (getSuffix!2704 input!3316 p!2942))))))))

(declare-fun size!33476 (List!45681) Int)

(assert (=> b!4163952 (= lt!1483586 (size!33476 p!2942))))

(declare-fun lt!1483587 () BalanceConc!27084)

(declare-fun apply!10515 (TokenValueInjection!14956 BalanceConc!27084) TokenValue!7764)

(assert (=> b!4163952 (= lt!1483590 (apply!10515 (transformation!7534 r!4097) lt!1483587))))

(assert (=> b!4163952 (isPrefix!4391 input!3316 input!3316)))

(declare-datatypes ((Unit!64651 0))(
  ( (Unit!64652) )
))
(declare-fun lt!1483584 () Unit!64651)

(declare-fun lemmaIsPrefixRefl!2830 (List!45681 List!45681) Unit!64651)

(assert (=> b!4163952 (= lt!1483584 (lemmaIsPrefixRefl!2830 input!3316 input!3316))))

(declare-fun lt!1483585 () Unit!64651)

(declare-fun lemmaSemiInverse!2308 (TokenValueInjection!14956 BalanceConc!27084) Unit!64651)

(assert (=> b!4163952 (= lt!1483585 (lemmaSemiInverse!2308 (transformation!7534 r!4097) lt!1483587))))

(declare-fun seqFromList!5567 (List!45681) BalanceConc!27084)

(assert (=> b!4163952 (= lt!1483587 (seqFromList!5567 p!2942))))

(declare-fun e!2584861 () Bool)

(assert (=> b!4163953 (= e!2584861 (and tp!1271307 tp!1271305))))

(declare-fun b!4163954 () Bool)

(declare-fun e!2584876 () Bool)

(declare-fun tp!1271314 () Bool)

(assert (=> b!4163954 (= e!2584876 (and e!2584866 tp!1271314))))

(declare-fun b!4163955 () Bool)

(declare-fun res!1705794 () Bool)

(assert (=> b!4163955 (=> res!1705794 e!2584870)))

(assert (=> b!4163955 (= res!1705794 (<= (size!33476 pBis!100) lt!1483586))))

(declare-fun b!4163956 () Bool)

(declare-fun res!1705793 () Bool)

(assert (=> b!4163956 (=> (not res!1705793) (not e!2584862))))

(declare-fun rulesInvariant!6340 (LexerInterface!7127 List!45683) Bool)

(assert (=> b!4163956 (= res!1705793 (rulesInvariant!6340 thiss!25889 rules!3820))))

(declare-fun b!4163957 () Bool)

(assert (=> b!4163957 (= e!2584862 (not e!2584867))))

(declare-fun res!1705787 () Bool)

(assert (=> b!4163957 (=> res!1705787 e!2584867)))

(declare-fun matchR!6184 (Regex!12439 List!45681) Bool)

(assert (=> b!4163957 (= res!1705787 (not (matchR!6184 (regex!7534 r!4097) p!2942)))))

(declare-fun ruleValid!3258 (LexerInterface!7127 Rule!14868) Bool)

(assert (=> b!4163957 (ruleValid!3258 thiss!25889 r!4097)))

(declare-fun lt!1483588 () Unit!64651)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2298 (LexerInterface!7127 Rule!14868 List!45683) Unit!64651)

(assert (=> b!4163957 (= lt!1483588 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2298 thiss!25889 r!4097 rules!3820))))

(declare-fun b!4163950 () Bool)

(declare-fun res!1705795 () Bool)

(assert (=> b!4163950 (=> (not res!1705795) (not e!2584862))))

(declare-fun isEmpty!26971 (List!45683) Bool)

(assert (=> b!4163950 (= res!1705795 (not (isEmpty!26971 rules!3820)))))

(declare-fun res!1705790 () Bool)

(assert (=> start!396846 (=> (not res!1705790) (not e!2584862))))

(get-info :version)

(assert (=> start!396846 (= res!1705790 ((_ is Lexer!7125) thiss!25889))))

(assert (=> start!396846 e!2584862))

(declare-fun e!2584865 () Bool)

(assert (=> start!396846 e!2584865))

(assert (=> start!396846 e!2584876))

(assert (=> start!396846 e!2584863))

(assert (=> start!396846 e!2584874))

(assert (=> start!396846 true))

(declare-fun e!2584864 () Bool)

(assert (=> start!396846 e!2584864))

(assert (=> start!396846 e!2584869))

(assert (=> b!4163958 (= e!2584871 (and tp!1271312 tp!1271309))))

(declare-fun tp!1271306 () Bool)

(declare-fun b!4163959 () Bool)

(assert (=> b!4163959 (= e!2584864 (and tp!1271306 (inv!60078 (tag!8398 rBis!161)) (inv!60080 (transformation!7534 rBis!161)) e!2584861))))

(declare-fun b!4163960 () Bool)

(declare-fun tp!1271302 () Bool)

(assert (=> b!4163960 (= e!2584865 (and tp_is_empty!21841 tp!1271302))))

(assert (= (and start!396846 res!1705790) b!4163944))

(assert (= (and b!4163944 res!1705789) b!4163946))

(assert (= (and b!4163946 res!1705796) b!4163950))

(assert (= (and b!4163950 res!1705795) b!4163956))

(assert (= (and b!4163956 res!1705793) b!4163943))

(assert (= (and b!4163943 res!1705788) b!4163941))

(assert (= (and b!4163941 res!1705791) b!4163957))

(assert (= (and b!4163957 (not res!1705787)) b!4163952))

(assert (= (and b!4163952 (not res!1705792)) b!4163955))

(assert (= (and b!4163955 (not res!1705794)) b!4163945))

(assert (= (and start!396846 ((_ is Cons!45557) pBis!100)) b!4163960))

(assert (= b!4163951 b!4163958))

(assert (= b!4163954 b!4163951))

(assert (= (and start!396846 ((_ is Cons!45559) rules!3820)) b!4163954))

(assert (= (and start!396846 ((_ is Cons!45557) p!2942)) b!4163949))

(assert (= (and start!396846 ((_ is Cons!45557) input!3316)) b!4163942))

(assert (= b!4163959 b!4163953))

(assert (= start!396846 b!4163959))

(assert (= b!4163948 b!4163947))

(assert (= start!396846 b!4163948))

(declare-fun m!4756241 () Bool)

(assert (=> b!4163948 m!4756241))

(declare-fun m!4756243 () Bool)

(assert (=> b!4163948 m!4756243))

(declare-fun m!4756245 () Bool)

(assert (=> b!4163959 m!4756245))

(declare-fun m!4756247 () Bool)

(assert (=> b!4163959 m!4756247))

(declare-fun m!4756249 () Bool)

(assert (=> b!4163941 m!4756249))

(declare-fun m!4756251 () Bool)

(assert (=> b!4163956 m!4756251))

(declare-fun m!4756253 () Bool)

(assert (=> b!4163951 m!4756253))

(declare-fun m!4756255 () Bool)

(assert (=> b!4163951 m!4756255))

(declare-fun m!4756257 () Bool)

(assert (=> b!4163946 m!4756257))

(declare-fun m!4756259 () Bool)

(assert (=> b!4163957 m!4756259))

(declare-fun m!4756261 () Bool)

(assert (=> b!4163957 m!4756261))

(declare-fun m!4756263 () Bool)

(assert (=> b!4163957 m!4756263))

(declare-fun m!4756265 () Bool)

(assert (=> b!4163944 m!4756265))

(declare-fun m!4756267 () Bool)

(assert (=> b!4163950 m!4756267))

(declare-fun m!4756269 () Bool)

(assert (=> b!4163945 m!4756269))

(declare-fun m!4756271 () Bool)

(assert (=> b!4163955 m!4756271))

(declare-fun m!4756273 () Bool)

(assert (=> b!4163943 m!4756273))

(declare-fun m!4756275 () Bool)

(assert (=> b!4163952 m!4756275))

(declare-fun m!4756277 () Bool)

(assert (=> b!4163952 m!4756277))

(declare-fun m!4756279 () Bool)

(assert (=> b!4163952 m!4756279))

(declare-fun m!4756281 () Bool)

(assert (=> b!4163952 m!4756281))

(declare-fun m!4756283 () Bool)

(assert (=> b!4163952 m!4756283))

(declare-fun m!4756285 () Bool)

(assert (=> b!4163952 m!4756285))

(declare-fun m!4756287 () Bool)

(assert (=> b!4163952 m!4756287))

(declare-fun m!4756289 () Bool)

(assert (=> b!4163952 m!4756289))

(check-sat b_and!324631 (not b!4163954) (not b!4163955) (not b!4163941) (not b_next!120795) (not b!4163946) (not b!4163952) (not b!4163949) b_and!324629 (not b!4163960) b_and!324633 (not b!4163951) (not b!4163942) (not b_next!120793) (not b_next!120799) (not b!4163956) (not b_next!120801) b_and!324635 (not b!4163959) tp_is_empty!21841 b_and!324639 (not b!4163957) (not b_next!120797) (not b!4163944) (not b!4163950) (not b!4163943) (not b!4163945) (not b!4163948) b_and!324637 (not b_next!120791))
(check-sat b_and!324629 b_and!324631 b_and!324633 (not b_next!120793) (not b_next!120799) b_and!324639 (not b_next!120795) (not b_next!120797) (not b_next!120801) b_and!324635 b_and!324637 (not b_next!120791))
