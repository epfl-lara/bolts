; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!56246 () Bool)

(assert start!56246)

(declare-fun b!595935 () Bool)

(declare-fun b_free!16853 () Bool)

(declare-fun b_next!16869 () Bool)

(assert (=> b!595935 (= b_free!16853 (not b_next!16869))))

(declare-fun tp!185817 () Bool)

(declare-fun b_and!58795 () Bool)

(assert (=> b!595935 (= tp!185817 b_and!58795)))

(declare-fun b_free!16855 () Bool)

(declare-fun b_next!16871 () Bool)

(assert (=> b!595935 (= b_free!16855 (not b_next!16871))))

(declare-fun tp!185809 () Bool)

(declare-fun b_and!58797 () Bool)

(assert (=> b!595935 (= tp!185809 b_and!58797)))

(declare-fun b!595936 () Bool)

(declare-fun b_free!16857 () Bool)

(declare-fun b_next!16873 () Bool)

(assert (=> b!595936 (= b_free!16857 (not b_next!16873))))

(declare-fun tp!185813 () Bool)

(declare-fun b_and!58799 () Bool)

(assert (=> b!595936 (= tp!185813 b_and!58799)))

(declare-fun b_free!16859 () Bool)

(declare-fun b_next!16875 () Bool)

(assert (=> b!595936 (= b_free!16859 (not b_next!16875))))

(declare-fun tp!185810 () Bool)

(declare-fun b_and!58801 () Bool)

(assert (=> b!595936 (= tp!185810 b_and!58801)))

(declare-fun b!595920 () Bool)

(declare-fun e!360698 () Bool)

(declare-fun e!360685 () Bool)

(assert (=> b!595920 (= e!360698 e!360685)))

(declare-fun res!257270 () Bool)

(assert (=> b!595920 (=> (not res!257270) (not e!360685))))

(declare-datatypes ((C!3934 0))(
  ( (C!3935 (val!2193 Int)) )
))
(declare-datatypes ((List!5937 0))(
  ( (Nil!5927) (Cons!5927 (h!11328 C!3934) (t!79422 List!5937)) )
))
(declare-fun lt!253122 () List!5937)

(declare-fun lt!253111 () List!5937)

(assert (=> b!595920 (= res!257270 (= lt!253122 lt!253111))))

(declare-fun lt!253116 () List!5937)

(declare-fun suffix!1342 () List!5937)

(declare-fun ++!1660 (List!5937 List!5937) List!5937)

(assert (=> b!595920 (= lt!253122 (++!1660 lt!253116 suffix!1342))))

(declare-fun b!595921 () Bool)

(declare-fun e!360701 () Bool)

(declare-fun e!360687 () Bool)

(assert (=> b!595921 (= e!360701 e!360687)))

(declare-fun res!257272 () Bool)

(assert (=> b!595921 (=> (not res!257272) (not e!360687))))

(declare-datatypes ((String!7725 0))(
  ( (String!7726 (value!38244 String)) )
))
(declare-datatypes ((Regex!1506 0))(
  ( (ElementMatch!1506 (c!110899 C!3934)) (Concat!2702 (regOne!3524 Regex!1506) (regTwo!3524 Regex!1506)) (EmptyExpr!1506) (Star!1506 (reg!1835 Regex!1506)) (EmptyLang!1506) (Union!1506 (regOne!3525 Regex!1506) (regTwo!3525 Regex!1506)) )
))
(declare-datatypes ((List!5938 0))(
  ( (Nil!5928) (Cons!5928 (h!11329 (_ BitVec 16)) (t!79423 List!5938)) )
))
(declare-datatypes ((TokenValue!1196 0))(
  ( (FloatLiteralValue!2392 (text!8817 List!5938)) (TokenValueExt!1195 (__x!4290 Int)) (Broken!5980 (value!38245 List!5938)) (Object!1205) (End!1196) (Def!1196) (Underscore!1196) (Match!1196) (Else!1196) (Error!1196) (Case!1196) (If!1196) (Extends!1196) (Abstract!1196) (Class!1196) (Val!1196) (DelimiterValue!2392 (del!1256 List!5938)) (KeywordValue!1202 (value!38246 List!5938)) (CommentValue!2392 (value!38247 List!5938)) (WhitespaceValue!2392 (value!38248 List!5938)) (IndentationValue!1196 (value!38249 List!5938)) (String!7727) (Int32!1196) (Broken!5981 (value!38250 List!5938)) (Boolean!1197) (Unit!10779) (OperatorValue!1199 (op!1256 List!5938)) (IdentifierValue!2392 (value!38251 List!5938)) (IdentifierValue!2393 (value!38252 List!5938)) (WhitespaceValue!2393 (value!38253 List!5938)) (True!2392) (False!2392) (Broken!5982 (value!38254 List!5938)) (Broken!5983 (value!38255 List!5938)) (True!2393) (RightBrace!1196) (RightBracket!1196) (Colon!1196) (Null!1196) (Comma!1196) (LeftBracket!1196) (False!2393) (LeftBrace!1196) (ImaginaryLiteralValue!1196 (text!8818 List!5938)) (StringLiteralValue!3588 (value!38256 List!5938)) (EOFValue!1196 (value!38257 List!5938)) (IdentValue!1196 (value!38258 List!5938)) (DelimiterValue!2393 (value!38259 List!5938)) (DedentValue!1196 (value!38260 List!5938)) (NewLineValue!1196 (value!38261 List!5938)) (IntegerValue!3588 (value!38262 (_ BitVec 32)) (text!8819 List!5938)) (IntegerValue!3589 (value!38263 Int) (text!8820 List!5938)) (Times!1196) (Or!1196) (Equal!1196) (Minus!1196) (Broken!5984 (value!38264 List!5938)) (And!1196) (Div!1196) (LessEqual!1196) (Mod!1196) (Concat!2703) (Not!1196) (Plus!1196) (SpaceValue!1196 (value!38265 List!5938)) (IntegerValue!3590 (value!38266 Int) (text!8821 List!5938)) (StringLiteralValue!3589 (text!8822 List!5938)) (FloatLiteralValue!2393 (text!8823 List!5938)) (BytesLiteralValue!1196 (value!38267 List!5938)) (CommentValue!2393 (value!38268 List!5938)) (StringLiteralValue!3590 (value!38269 List!5938)) (ErrorTokenValue!1196 (msg!1257 List!5938)) )
))
(declare-datatypes ((IArray!3779 0))(
  ( (IArray!3780 (innerList!1947 List!5937)) )
))
(declare-datatypes ((Conc!1889 0))(
  ( (Node!1889 (left!4788 Conc!1889) (right!5118 Conc!1889) (csize!4008 Int) (cheight!2100 Int)) (Leaf!2983 (xs!4526 IArray!3779) (csize!4009 Int)) (Empty!1889) )
))
(declare-datatypes ((BalanceConc!3786 0))(
  ( (BalanceConc!3787 (c!110900 Conc!1889)) )
))
(declare-datatypes ((TokenValueInjection!2160 0))(
  ( (TokenValueInjection!2161 (toValue!2063 Int) (toChars!1922 Int)) )
))
(declare-datatypes ((Rule!2144 0))(
  ( (Rule!2145 (regex!1172 Regex!1506) (tag!1434 String!7725) (isSeparator!1172 Bool) (transformation!1172 TokenValueInjection!2160)) )
))
(declare-datatypes ((Token!2080 0))(
  ( (Token!2081 (value!38270 TokenValue!1196) (rule!1942 Rule!2144) (size!4678 Int) (originalCharacters!1211 List!5937)) )
))
(declare-fun token!491 () Token!2080)

(declare-datatypes ((tuple2!6838 0))(
  ( (tuple2!6839 (_1!3683 Token!2080) (_2!3683 List!5937)) )
))
(declare-fun lt!253121 () tuple2!6838)

(assert (=> b!595921 (= res!257272 (and (= (_1!3683 lt!253121) token!491) (= (_2!3683 lt!253121) suffix!1342)))))

(declare-datatypes ((Option!1523 0))(
  ( (None!1522) (Some!1522 (v!16409 tuple2!6838)) )
))
(declare-fun lt!253129 () Option!1523)

(declare-fun get!2273 (Option!1523) tuple2!6838)

(assert (=> b!595921 (= lt!253121 (get!2273 lt!253129))))

(declare-fun tp!185818 () Bool)

(declare-fun b!595922 () Bool)

(declare-fun e!360682 () Bool)

(declare-fun e!360702 () Bool)

(declare-fun inv!7511 (String!7725) Bool)

(declare-fun inv!7514 (TokenValueInjection!2160) Bool)

(assert (=> b!595922 (= e!360702 (and tp!185818 (inv!7511 (tag!1434 (rule!1942 token!491))) (inv!7514 (transformation!1172 (rule!1942 token!491))) e!360682))))

(declare-fun b!595923 () Bool)

(declare-fun e!360694 () Bool)

(declare-fun tp_is_empty!3367 () Bool)

(declare-fun tp!185812 () Bool)

(assert (=> b!595923 (= e!360694 (and tp_is_empty!3367 tp!185812))))

(declare-fun lt!253125 () Int)

(declare-fun e!360700 () Bool)

(declare-fun lt!253132 () Option!1523)

(declare-fun lt!253127 () List!5937)

(declare-fun lt!253131 () TokenValue!1196)

(declare-fun b!595925 () Bool)

(declare-fun lt!253123 () List!5937)

(assert (=> b!595925 (= e!360700 (and (= (size!4678 (_1!3683 (v!16409 lt!253132))) lt!253125) (= (originalCharacters!1211 (_1!3683 (v!16409 lt!253132))) lt!253127) (= (v!16409 lt!253132) (tuple2!6839 (Token!2081 lt!253131 (rule!1942 (_1!3683 (v!16409 lt!253132))) lt!253125 lt!253127) lt!253123))))))

(declare-fun b!595926 () Bool)

(declare-fun res!257276 () Bool)

(assert (=> b!595926 (=> (not res!257276) (not e!360700))))

(declare-fun size!4679 (List!5937) Int)

(assert (=> b!595926 (= res!257276 (= (size!4678 (_1!3683 (v!16409 lt!253132))) (size!4679 (originalCharacters!1211 (_1!3683 (v!16409 lt!253132))))))))

(declare-fun b!595927 () Bool)

(declare-fun e!360697 () Bool)

(declare-fun lt!253134 () Int)

(assert (=> b!595927 (= e!360697 (= (size!4678 token!491) lt!253134))))

(declare-fun e!360686 () Bool)

(assert (=> b!595927 e!360686))

(declare-fun res!257271 () Bool)

(assert (=> b!595927 (=> (not res!257271) (not e!360686))))

(declare-fun lt!253133 () List!5937)

(assert (=> b!595927 (= res!257271 (= suffix!1342 lt!253133))))

(declare-datatypes ((Unit!10780 0))(
  ( (Unit!10781) )
))
(declare-fun lt!253135 () Unit!10780)

(declare-fun lemmaSamePrefixThenSameSuffix!513 (List!5937 List!5937 List!5937 List!5937 List!5937) Unit!10780)

(assert (=> b!595927 (= lt!253135 (lemmaSamePrefixThenSameSuffix!513 lt!253116 suffix!1342 lt!253116 lt!253133 lt!253111))))

(declare-fun getSuffix!317 (List!5937 List!5937) List!5937)

(assert (=> b!595927 (= lt!253133 (getSuffix!317 lt!253111 lt!253116))))

(declare-fun b!595928 () Bool)

(declare-fun e!360693 () Bool)

(declare-fun tp!185815 () Bool)

(assert (=> b!595928 (= e!360693 (and tp_is_empty!3367 tp!185815))))

(declare-fun b!595929 () Bool)

(assert (=> b!595929 (= e!360687 e!360698)))

(declare-fun res!257266 () Bool)

(assert (=> b!595929 (=> (not res!257266) (not e!360698))))

(assert (=> b!595929 (= res!257266 (is-Some!1522 lt!253132))))

(declare-datatypes ((List!5939 0))(
  ( (Nil!5929) (Cons!5929 (h!11330 Rule!2144) (t!79424 List!5939)) )
))
(declare-fun rules!3103 () List!5939)

(declare-datatypes ((LexerInterface!1058 0))(
  ( (LexerInterfaceExt!1055 (__x!4291 Int)) (Lexer!1056) )
))
(declare-fun thiss!22590 () LexerInterface!1058)

(declare-fun input!2705 () List!5937)

(declare-fun maxPrefix!756 (LexerInterface!1058 List!5939 List!5937) Option!1523)

(assert (=> b!595929 (= lt!253132 (maxPrefix!756 thiss!22590 rules!3103 input!2705))))

(declare-fun b!595930 () Bool)

(declare-fun res!257263 () Bool)

(assert (=> b!595930 (=> (not res!257263) (not e!360686))))

(declare-fun apply!1425 (TokenValueInjection!2160 BalanceConc!3786) TokenValue!1196)

(declare-fun seqFromList!1348 (List!5937) BalanceConc!3786)

(assert (=> b!595930 (= res!257263 (= (value!38270 token!491) (apply!1425 (transformation!1172 (rule!1942 token!491)) (seqFromList!1348 lt!253116))))))

(declare-fun b!595931 () Bool)

(declare-fun e!360683 () Unit!10780)

(declare-fun Unit!10782 () Unit!10780)

(assert (=> b!595931 (= e!360683 Unit!10782)))

(assert (=> b!595931 false))

(declare-fun b!595932 () Bool)

(declare-fun e!360696 () Bool)

(declare-fun e!360684 () Bool)

(declare-fun tp!185816 () Bool)

(assert (=> b!595932 (= e!360696 (and e!360684 tp!185816))))

(declare-fun b!595933 () Bool)

(declare-fun e!360695 () Bool)

(declare-fun e!360692 () Bool)

(assert (=> b!595933 (= e!360695 e!360692)))

(declare-fun res!257265 () Bool)

(assert (=> b!595933 (=> (not res!257265) (not e!360692))))

(assert (=> b!595933 (= res!257265 (= lt!253116 input!2705))))

(declare-fun list!2483 (BalanceConc!3786) List!5937)

(declare-fun charsOf!801 (Token!2080) BalanceConc!3786)

(assert (=> b!595933 (= lt!253116 (list!2483 (charsOf!801 token!491)))))

(declare-fun b!595934 () Bool)

(declare-fun res!257269 () Bool)

(assert (=> b!595934 (=> (not res!257269) (not e!360695))))

(declare-fun isEmpty!4279 (List!5937) Bool)

(assert (=> b!595934 (= res!257269 (not (isEmpty!4279 input!2705)))))

(assert (=> b!595935 (= e!360682 (and tp!185817 tp!185809))))

(declare-fun res!257267 () Bool)

(assert (=> start!56246 (=> (not res!257267) (not e!360695))))

(assert (=> start!56246 (= res!257267 (is-Lexer!1056 thiss!22590))))

(assert (=> start!56246 e!360695))

(assert (=> start!56246 e!360694))

(assert (=> start!56246 e!360696))

(declare-fun e!360691 () Bool)

(declare-fun inv!7515 (Token!2080) Bool)

(assert (=> start!56246 (and (inv!7515 token!491) e!360691)))

(assert (=> start!56246 true))

(assert (=> start!56246 e!360693))

(declare-fun b!595924 () Bool)

(declare-fun Unit!10783 () Unit!10780)

(assert (=> b!595924 (= e!360683 Unit!10783)))

(declare-fun e!360689 () Bool)

(assert (=> b!595936 (= e!360689 (and tp!185813 tp!185810))))

(declare-fun tp!185814 () Bool)

(declare-fun b!595937 () Bool)

(assert (=> b!595937 (= e!360684 (and tp!185814 (inv!7511 (tag!1434 (h!11330 rules!3103))) (inv!7514 (transformation!1172 (h!11330 rules!3103))) e!360689))))

(declare-fun b!595938 () Bool)

(declare-fun res!257273 () Bool)

(assert (=> b!595938 (=> (not res!257273) (not e!360695))))

(declare-fun rulesInvariant!1021 (LexerInterface!1058 List!5939) Bool)

(assert (=> b!595938 (= res!257273 (rulesInvariant!1021 thiss!22590 rules!3103))))

(declare-fun b!595939 () Bool)

(assert (=> b!595939 (= e!360686 (= (size!4678 token!491) (size!4679 (originalCharacters!1211 token!491))))))

(declare-fun b!595940 () Bool)

(assert (=> b!595940 (= e!360692 e!360701)))

(declare-fun res!257268 () Bool)

(assert (=> b!595940 (=> (not res!257268) (not e!360701))))

(declare-fun isDefined!1334 (Option!1523) Bool)

(assert (=> b!595940 (= res!257268 (isDefined!1334 lt!253129))))

(assert (=> b!595940 (= lt!253129 (maxPrefix!756 thiss!22590 rules!3103 lt!253111))))

(assert (=> b!595940 (= lt!253111 (++!1660 input!2705 suffix!1342))))

(declare-fun b!595941 () Bool)

(assert (=> b!595941 (= e!360685 (not e!360697))))

(declare-fun res!257274 () Bool)

(assert (=> b!595941 (=> res!257274 e!360697)))

(declare-fun isPrefix!800 (List!5937 List!5937) Bool)

(assert (=> b!595941 (= res!257274 (not (isPrefix!800 input!2705 lt!253122)))))

(assert (=> b!595941 (isPrefix!800 lt!253116 lt!253122)))

(declare-fun lt!253126 () Unit!10780)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!645 (List!5937 List!5937) Unit!10780)

(assert (=> b!595941 (= lt!253126 (lemmaConcatTwoListThenFirstIsPrefix!645 lt!253116 suffix!1342))))

(assert (=> b!595941 (isPrefix!800 input!2705 lt!253111)))

(declare-fun lt!253117 () Unit!10780)

(assert (=> b!595941 (= lt!253117 (lemmaConcatTwoListThenFirstIsPrefix!645 input!2705 suffix!1342))))

(assert (=> b!595941 e!360700))

(declare-fun res!257275 () Bool)

(assert (=> b!595941 (=> (not res!257275) (not e!360700))))

(assert (=> b!595941 (= res!257275 (= (value!38270 (_1!3683 (v!16409 lt!253132))) lt!253131))))

(assert (=> b!595941 (= lt!253131 (apply!1425 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132)))) (seqFromList!1348 lt!253127)))))

(declare-fun lt!253120 () Unit!10780)

(declare-fun lemmaInv!280 (TokenValueInjection!2160) Unit!10780)

(assert (=> b!595941 (= lt!253120 (lemmaInv!280 (transformation!1172 (rule!1942 token!491))))))

(declare-fun lt!253128 () Unit!10780)

(assert (=> b!595941 (= lt!253128 (lemmaInv!280 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132))))))))

(declare-fun ruleValid!370 (LexerInterface!1058 Rule!2144) Bool)

(assert (=> b!595941 (ruleValid!370 thiss!22590 (rule!1942 token!491))))

(declare-fun lt!253118 () Unit!10780)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!217 (LexerInterface!1058 Rule!2144 List!5939) Unit!10780)

(assert (=> b!595941 (= lt!253118 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!217 thiss!22590 (rule!1942 token!491) rules!3103))))

(assert (=> b!595941 (ruleValid!370 thiss!22590 (rule!1942 (_1!3683 (v!16409 lt!253132))))))

(declare-fun lt!253124 () Unit!10780)

(assert (=> b!595941 (= lt!253124 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!217 thiss!22590 (rule!1942 (_1!3683 (v!16409 lt!253132))) rules!3103))))

(assert (=> b!595941 (isPrefix!800 input!2705 input!2705)))

(declare-fun lt!253119 () Unit!10780)

(declare-fun lemmaIsPrefixRefl!536 (List!5937 List!5937) Unit!10780)

(assert (=> b!595941 (= lt!253119 (lemmaIsPrefixRefl!536 input!2705 input!2705))))

(assert (=> b!595941 (= (_2!3683 (v!16409 lt!253132)) lt!253123)))

(declare-fun lt!253113 () Unit!10780)

(assert (=> b!595941 (= lt!253113 (lemmaSamePrefixThenSameSuffix!513 lt!253127 (_2!3683 (v!16409 lt!253132)) lt!253127 lt!253123 input!2705))))

(assert (=> b!595941 (= lt!253123 (getSuffix!317 input!2705 lt!253127))))

(assert (=> b!595941 (isPrefix!800 lt!253127 (++!1660 lt!253127 (_2!3683 (v!16409 lt!253132))))))

(declare-fun lt!253130 () Unit!10780)

(assert (=> b!595941 (= lt!253130 (lemmaConcatTwoListThenFirstIsPrefix!645 lt!253127 (_2!3683 (v!16409 lt!253132))))))

(declare-fun lt!253112 () Unit!10780)

(declare-fun lemmaCharactersSize!231 (Token!2080) Unit!10780)

(assert (=> b!595941 (= lt!253112 (lemmaCharactersSize!231 token!491))))

(declare-fun lt!253136 () Unit!10780)

(assert (=> b!595941 (= lt!253136 (lemmaCharactersSize!231 (_1!3683 (v!16409 lt!253132))))))

(declare-fun lt!253114 () Unit!10780)

(assert (=> b!595941 (= lt!253114 e!360683)))

(declare-fun c!110898 () Bool)

(assert (=> b!595941 (= c!110898 (> lt!253125 lt!253134))))

(assert (=> b!595941 (= lt!253134 (size!4679 lt!253116))))

(assert (=> b!595941 (= lt!253125 (size!4679 lt!253127))))

(assert (=> b!595941 (= lt!253127 (list!2483 (charsOf!801 (_1!3683 (v!16409 lt!253132)))))))

(assert (=> b!595941 (= lt!253132 (Some!1522 (v!16409 lt!253132)))))

(declare-fun lt!253115 () Unit!10780)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!245 (List!5937 List!5937 List!5937 List!5937) Unit!10780)

(assert (=> b!595941 (= lt!253115 (lemmaConcatSameAndSameSizesThenSameLists!245 lt!253116 suffix!1342 input!2705 suffix!1342))))

(declare-fun tp!185811 () Bool)

(declare-fun b!595942 () Bool)

(declare-fun inv!21 (TokenValue!1196) Bool)

(assert (=> b!595942 (= e!360691 (and (inv!21 (value!38270 token!491)) e!360702 tp!185811))))

(declare-fun b!595943 () Bool)

(declare-fun res!257264 () Bool)

(assert (=> b!595943 (=> (not res!257264) (not e!360695))))

(declare-fun isEmpty!4280 (List!5939) Bool)

(assert (=> b!595943 (= res!257264 (not (isEmpty!4280 rules!3103)))))

(assert (= (and start!56246 res!257267) b!595943))

(assert (= (and b!595943 res!257264) b!595938))

(assert (= (and b!595938 res!257273) b!595934))

(assert (= (and b!595934 res!257269) b!595933))

(assert (= (and b!595933 res!257265) b!595940))

(assert (= (and b!595940 res!257268) b!595921))

(assert (= (and b!595921 res!257272) b!595929))

(assert (= (and b!595929 res!257266) b!595920))

(assert (= (and b!595920 res!257270) b!595941))

(assert (= (and b!595941 c!110898) b!595931))

(assert (= (and b!595941 (not c!110898)) b!595924))

(assert (= (and b!595941 res!257275) b!595926))

(assert (= (and b!595926 res!257276) b!595925))

(assert (= (and b!595941 (not res!257274)) b!595927))

(assert (= (and b!595927 res!257271) b!595930))

(assert (= (and b!595930 res!257263) b!595939))

(assert (= (and start!56246 (is-Cons!5927 suffix!1342)) b!595923))

(assert (= b!595937 b!595936))

(assert (= b!595932 b!595937))

(assert (= (and start!56246 (is-Cons!5929 rules!3103)) b!595932))

(assert (= b!595922 b!595935))

(assert (= b!595942 b!595922))

(assert (= start!56246 b!595942))

(assert (= (and start!56246 (is-Cons!5927 input!2705)) b!595928))

(declare-fun m!858597 () Bool)

(assert (=> b!595943 m!858597))

(declare-fun m!858599 () Bool)

(assert (=> b!595930 m!858599))

(assert (=> b!595930 m!858599))

(declare-fun m!858601 () Bool)

(assert (=> b!595930 m!858601))

(declare-fun m!858603 () Bool)

(assert (=> b!595941 m!858603))

(declare-fun m!858605 () Bool)

(assert (=> b!595941 m!858605))

(declare-fun m!858607 () Bool)

(assert (=> b!595941 m!858607))

(declare-fun m!858609 () Bool)

(assert (=> b!595941 m!858609))

(assert (=> b!595941 m!858603))

(declare-fun m!858611 () Bool)

(assert (=> b!595941 m!858611))

(declare-fun m!858613 () Bool)

(assert (=> b!595941 m!858613))

(declare-fun m!858615 () Bool)

(assert (=> b!595941 m!858615))

(declare-fun m!858617 () Bool)

(assert (=> b!595941 m!858617))

(declare-fun m!858619 () Bool)

(assert (=> b!595941 m!858619))

(declare-fun m!858621 () Bool)

(assert (=> b!595941 m!858621))

(declare-fun m!858623 () Bool)

(assert (=> b!595941 m!858623))

(declare-fun m!858625 () Bool)

(assert (=> b!595941 m!858625))

(declare-fun m!858627 () Bool)

(assert (=> b!595941 m!858627))

(declare-fun m!858629 () Bool)

(assert (=> b!595941 m!858629))

(declare-fun m!858631 () Bool)

(assert (=> b!595941 m!858631))

(declare-fun m!858633 () Bool)

(assert (=> b!595941 m!858633))

(declare-fun m!858635 () Bool)

(assert (=> b!595941 m!858635))

(declare-fun m!858637 () Bool)

(assert (=> b!595941 m!858637))

(declare-fun m!858639 () Bool)

(assert (=> b!595941 m!858639))

(declare-fun m!858641 () Bool)

(assert (=> b!595941 m!858641))

(declare-fun m!858643 () Bool)

(assert (=> b!595941 m!858643))

(assert (=> b!595941 m!858643))

(declare-fun m!858645 () Bool)

(assert (=> b!595941 m!858645))

(declare-fun m!858647 () Bool)

(assert (=> b!595941 m!858647))

(declare-fun m!858649 () Bool)

(assert (=> b!595941 m!858649))

(assert (=> b!595941 m!858633))

(declare-fun m!858651 () Bool)

(assert (=> b!595941 m!858651))

(declare-fun m!858653 () Bool)

(assert (=> b!595941 m!858653))

(declare-fun m!858655 () Bool)

(assert (=> b!595941 m!858655))

(declare-fun m!858657 () Bool)

(assert (=> b!595939 m!858657))

(declare-fun m!858659 () Bool)

(assert (=> b!595933 m!858659))

(assert (=> b!595933 m!858659))

(declare-fun m!858661 () Bool)

(assert (=> b!595933 m!858661))

(declare-fun m!858663 () Bool)

(assert (=> b!595942 m!858663))

(declare-fun m!858665 () Bool)

(assert (=> b!595934 m!858665))

(declare-fun m!858667 () Bool)

(assert (=> b!595922 m!858667))

(declare-fun m!858669 () Bool)

(assert (=> b!595922 m!858669))

(declare-fun m!858671 () Bool)

(assert (=> b!595927 m!858671))

(declare-fun m!858673 () Bool)

(assert (=> b!595927 m!858673))

(declare-fun m!858675 () Bool)

(assert (=> b!595929 m!858675))

(declare-fun m!858677 () Bool)

(assert (=> start!56246 m!858677))

(declare-fun m!858679 () Bool)

(assert (=> b!595921 m!858679))

(declare-fun m!858681 () Bool)

(assert (=> b!595926 m!858681))

(declare-fun m!858683 () Bool)

(assert (=> b!595920 m!858683))

(declare-fun m!858685 () Bool)

(assert (=> b!595940 m!858685))

(declare-fun m!858687 () Bool)

(assert (=> b!595940 m!858687))

(declare-fun m!858689 () Bool)

(assert (=> b!595940 m!858689))

(declare-fun m!858691 () Bool)

(assert (=> b!595937 m!858691))

(declare-fun m!858693 () Bool)

(assert (=> b!595937 m!858693))

(declare-fun m!858695 () Bool)

(assert (=> b!595938 m!858695))

(push 1)

(assert (not b!595921))

(assert (not b!595942))

(assert (not b!595920))

(assert (not b!595930))

(assert b_and!58801)

(assert b_and!58795)

(assert (not b!595932))

(assert (not b_next!16871))

(assert (not b!595922))

(assert (not b!595939))

(assert (not b!595934))

(assert (not b_next!16869))

(assert tp_is_empty!3367)

(assert (not b!595938))

(assert (not b!595937))

(assert (not b!595933))

(assert (not b!595926))

(assert (not b_next!16873))

(assert (not b!595929))

(assert (not b_next!16875))

(assert (not b!595940))

(assert (not b!595941))

(assert (not b!595928))

(assert (not b!595927))

(assert b_and!58797)

(assert (not b!595943))

(assert (not b!595923))

(assert (not start!56246))

(assert b_and!58799)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58801)

(assert b_and!58795)

(assert (not b_next!16871))

(assert (not b_next!16873))

(assert (not b_next!16875))

(assert (not b_next!16869))

(assert b_and!58797)

(assert b_and!58799)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!209552 () Bool)

(assert (=> d!209552 (= suffix!1342 lt!253133)))

(declare-fun lt!253223 () Unit!10780)

(declare-fun choose!4327 (List!5937 List!5937 List!5937 List!5937 List!5937) Unit!10780)

(assert (=> d!209552 (= lt!253223 (choose!4327 lt!253116 suffix!1342 lt!253116 lt!253133 lt!253111))))

(assert (=> d!209552 (isPrefix!800 lt!253116 lt!253111)))

(assert (=> d!209552 (= (lemmaSamePrefixThenSameSuffix!513 lt!253116 suffix!1342 lt!253116 lt!253133 lt!253111) lt!253223)))

(declare-fun bs!70618 () Bool)

(assert (= bs!70618 d!209552))

(declare-fun m!858815 () Bool)

(assert (=> bs!70618 m!858815))

(declare-fun m!858817 () Bool)

(assert (=> bs!70618 m!858817))

(assert (=> b!595927 d!209552))

(declare-fun d!209556 () Bool)

(declare-fun lt!253226 () List!5937)

(assert (=> d!209556 (= (++!1660 lt!253116 lt!253226) lt!253111)))

(declare-fun e!360777 () List!5937)

(assert (=> d!209556 (= lt!253226 e!360777)))

(declare-fun c!110912 () Bool)

(assert (=> d!209556 (= c!110912 (is-Cons!5927 lt!253116))))

(assert (=> d!209556 (>= (size!4679 lt!253111) (size!4679 lt!253116))))

(assert (=> d!209556 (= (getSuffix!317 lt!253111 lt!253116) lt!253226)))

(declare-fun b!596033 () Bool)

(declare-fun tail!792 (List!5937) List!5937)

(assert (=> b!596033 (= e!360777 (getSuffix!317 (tail!792 lt!253111) (t!79422 lt!253116)))))

(declare-fun b!596034 () Bool)

(assert (=> b!596034 (= e!360777 lt!253111)))

(assert (= (and d!209556 c!110912) b!596033))

(assert (= (and d!209556 (not c!110912)) b!596034))

(declare-fun m!858819 () Bool)

(assert (=> d!209556 m!858819))

(declare-fun m!858821 () Bool)

(assert (=> d!209556 m!858821))

(assert (=> d!209556 m!858649))

(declare-fun m!858823 () Bool)

(assert (=> b!596033 m!858823))

(assert (=> b!596033 m!858823))

(declare-fun m!858825 () Bool)

(assert (=> b!596033 m!858825))

(assert (=> b!595927 d!209556))

(declare-fun d!209558 () Bool)

(declare-fun res!257329 () Bool)

(declare-fun e!360780 () Bool)

(assert (=> d!209558 (=> (not res!257329) (not e!360780))))

(declare-fun rulesValid!428 (LexerInterface!1058 List!5939) Bool)

(assert (=> d!209558 (= res!257329 (rulesValid!428 thiss!22590 rules!3103))))

(assert (=> d!209558 (= (rulesInvariant!1021 thiss!22590 rules!3103) e!360780)))

(declare-fun b!596037 () Bool)

(declare-datatypes ((List!5943 0))(
  ( (Nil!5933) (Cons!5933 (h!11334 String!7725) (t!79460 List!5943)) )
))
(declare-fun noDuplicateTag!428 (LexerInterface!1058 List!5939 List!5943) Bool)

(assert (=> b!596037 (= e!360780 (noDuplicateTag!428 thiss!22590 rules!3103 Nil!5933))))

(assert (= (and d!209558 res!257329) b!596037))

(declare-fun m!858827 () Bool)

(assert (=> d!209558 m!858827))

(declare-fun m!858829 () Bool)

(assert (=> b!596037 m!858829))

(assert (=> b!595938 d!209558))

(declare-fun d!209560 () Bool)

(declare-fun lt!253229 () Int)

(assert (=> d!209560 (>= lt!253229 0)))

(declare-fun e!360783 () Int)

(assert (=> d!209560 (= lt!253229 e!360783)))

(declare-fun c!110915 () Bool)

(assert (=> d!209560 (= c!110915 (is-Nil!5927 (originalCharacters!1211 (_1!3683 (v!16409 lt!253132)))))))

(assert (=> d!209560 (= (size!4679 (originalCharacters!1211 (_1!3683 (v!16409 lt!253132)))) lt!253229)))

(declare-fun b!596042 () Bool)

(assert (=> b!596042 (= e!360783 0)))

(declare-fun b!596043 () Bool)

(assert (=> b!596043 (= e!360783 (+ 1 (size!4679 (t!79422 (originalCharacters!1211 (_1!3683 (v!16409 lt!253132)))))))))

(assert (= (and d!209560 c!110915) b!596042))

(assert (= (and d!209560 (not c!110915)) b!596043))

(declare-fun m!858831 () Bool)

(assert (=> b!596043 m!858831))

(assert (=> b!595926 d!209560))

(declare-fun d!209562 () Bool)

(assert (=> d!209562 (= (inv!7511 (tag!1434 (h!11330 rules!3103))) (= (mod (str.len (value!38244 (tag!1434 (h!11330 rules!3103)))) 2) 0))))

(assert (=> b!595937 d!209562))

(declare-fun d!209564 () Bool)

(declare-fun res!257332 () Bool)

(declare-fun e!360786 () Bool)

(assert (=> d!209564 (=> (not res!257332) (not e!360786))))

(declare-fun semiInverseModEq!464 (Int Int) Bool)

(assert (=> d!209564 (= res!257332 (semiInverseModEq!464 (toChars!1922 (transformation!1172 (h!11330 rules!3103))) (toValue!2063 (transformation!1172 (h!11330 rules!3103)))))))

(assert (=> d!209564 (= (inv!7514 (transformation!1172 (h!11330 rules!3103))) e!360786)))

(declare-fun b!596046 () Bool)

(declare-fun equivClasses!447 (Int Int) Bool)

(assert (=> b!596046 (= e!360786 (equivClasses!447 (toChars!1922 (transformation!1172 (h!11330 rules!3103))) (toValue!2063 (transformation!1172 (h!11330 rules!3103)))))))

(assert (= (and d!209564 res!257332) b!596046))

(declare-fun m!858833 () Bool)

(assert (=> d!209564 m!858833))

(declare-fun m!858835 () Bool)

(assert (=> b!596046 m!858835))

(assert (=> b!595937 d!209564))

(declare-fun d!209566 () Bool)

(declare-fun dynLambda!3437 (Int BalanceConc!3786) TokenValue!1196)

(assert (=> d!209566 (= (apply!1425 (transformation!1172 (rule!1942 token!491)) (seqFromList!1348 lt!253116)) (dynLambda!3437 (toValue!2063 (transformation!1172 (rule!1942 token!491))) (seqFromList!1348 lt!253116)))))

(declare-fun b_lambda!23485 () Bool)

(assert (=> (not b_lambda!23485) (not d!209566)))

(declare-fun t!79437 () Bool)

(declare-fun tb!52031 () Bool)

(assert (=> (and b!595935 (= (toValue!2063 (transformation!1172 (rule!1942 token!491))) (toValue!2063 (transformation!1172 (rule!1942 token!491)))) t!79437) tb!52031))

(declare-fun result!58458 () Bool)

(assert (=> tb!52031 (= result!58458 (inv!21 (dynLambda!3437 (toValue!2063 (transformation!1172 (rule!1942 token!491))) (seqFromList!1348 lt!253116))))))

(declare-fun m!858837 () Bool)

(assert (=> tb!52031 m!858837))

(assert (=> d!209566 t!79437))

(declare-fun b_and!58819 () Bool)

(assert (= b_and!58795 (and (=> t!79437 result!58458) b_and!58819)))

(declare-fun tb!52033 () Bool)

(declare-fun t!79439 () Bool)

(assert (=> (and b!595936 (= (toValue!2063 (transformation!1172 (h!11330 rules!3103))) (toValue!2063 (transformation!1172 (rule!1942 token!491)))) t!79439) tb!52033))

(declare-fun result!58462 () Bool)

(assert (= result!58462 result!58458))

(assert (=> d!209566 t!79439))

(declare-fun b_and!58821 () Bool)

(assert (= b_and!58799 (and (=> t!79439 result!58462) b_and!58821)))

(assert (=> d!209566 m!858599))

(declare-fun m!858839 () Bool)

(assert (=> d!209566 m!858839))

(assert (=> b!595930 d!209566))

(declare-fun d!209568 () Bool)

(declare-fun fromListB!591 (List!5937) BalanceConc!3786)

(assert (=> d!209568 (= (seqFromList!1348 lt!253116) (fromListB!591 lt!253116))))

(declare-fun bs!70619 () Bool)

(assert (= bs!70619 d!209568))

(declare-fun m!858841 () Bool)

(assert (=> bs!70619 m!858841))

(assert (=> b!595930 d!209568))

(declare-fun d!209570 () Bool)

(declare-fun lt!253232 () BalanceConc!3786)

(assert (=> d!209570 (= (list!2483 lt!253232) (originalCharacters!1211 (_1!3683 (v!16409 lt!253132))))))

(declare-fun dynLambda!3438 (Int TokenValue!1196) BalanceConc!3786)

(assert (=> d!209570 (= lt!253232 (dynLambda!3438 (toChars!1922 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132))))) (value!38270 (_1!3683 (v!16409 lt!253132)))))))

(assert (=> d!209570 (= (charsOf!801 (_1!3683 (v!16409 lt!253132))) lt!253232)))

(declare-fun b_lambda!23487 () Bool)

(assert (=> (not b_lambda!23487) (not d!209570)))

(declare-fun tb!52035 () Bool)

(declare-fun t!79441 () Bool)

(assert (=> (and b!595935 (= (toChars!1922 (transformation!1172 (rule!1942 token!491))) (toChars!1922 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132)))))) t!79441) tb!52035))

(declare-fun b!596053 () Bool)

(declare-fun e!360792 () Bool)

(declare-fun tp!185854 () Bool)

(declare-fun inv!7518 (Conc!1889) Bool)

(assert (=> b!596053 (= e!360792 (and (inv!7518 (c!110900 (dynLambda!3438 (toChars!1922 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132))))) (value!38270 (_1!3683 (v!16409 lt!253132)))))) tp!185854))))

(declare-fun result!58464 () Bool)

(declare-fun inv!7519 (BalanceConc!3786) Bool)

(assert (=> tb!52035 (= result!58464 (and (inv!7519 (dynLambda!3438 (toChars!1922 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132))))) (value!38270 (_1!3683 (v!16409 lt!253132))))) e!360792))))

(assert (= tb!52035 b!596053))

(declare-fun m!858843 () Bool)

(assert (=> b!596053 m!858843))

(declare-fun m!858845 () Bool)

(assert (=> tb!52035 m!858845))

(assert (=> d!209570 t!79441))

(declare-fun b_and!58823 () Bool)

(assert (= b_and!58797 (and (=> t!79441 result!58464) b_and!58823)))

(declare-fun t!79443 () Bool)

(declare-fun tb!52037 () Bool)

(assert (=> (and b!595936 (= (toChars!1922 (transformation!1172 (h!11330 rules!3103))) (toChars!1922 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132)))))) t!79443) tb!52037))

(declare-fun result!58468 () Bool)

(assert (= result!58468 result!58464))

(assert (=> d!209570 t!79443))

(declare-fun b_and!58825 () Bool)

(assert (= b_and!58801 (and (=> t!79443 result!58468) b_and!58825)))

(declare-fun m!858847 () Bool)

(assert (=> d!209570 m!858847))

(declare-fun m!858849 () Bool)

(assert (=> d!209570 m!858849))

(assert (=> b!595941 d!209570))

(declare-fun d!209572 () Bool)

(assert (=> d!209572 (isPrefix!800 lt!253127 (++!1660 lt!253127 (_2!3683 (v!16409 lt!253132))))))

(declare-fun lt!253235 () Unit!10780)

(declare-fun choose!4328 (List!5937 List!5937) Unit!10780)

(assert (=> d!209572 (= lt!253235 (choose!4328 lt!253127 (_2!3683 (v!16409 lt!253132))))))

(assert (=> d!209572 (= (lemmaConcatTwoListThenFirstIsPrefix!645 lt!253127 (_2!3683 (v!16409 lt!253132))) lt!253235)))

(declare-fun bs!70620 () Bool)

(assert (= bs!70620 d!209572))

(assert (=> bs!70620 m!858603))

(assert (=> bs!70620 m!858603))

(assert (=> bs!70620 m!858611))

(declare-fun m!858851 () Bool)

(assert (=> bs!70620 m!858851))

(assert (=> b!595941 d!209572))

(declare-fun d!209574 () Bool)

(declare-fun res!257337 () Bool)

(declare-fun e!360795 () Bool)

(assert (=> d!209574 (=> (not res!257337) (not e!360795))))

(declare-fun validRegex!517 (Regex!1506) Bool)

(assert (=> d!209574 (= res!257337 (validRegex!517 (regex!1172 (rule!1942 (_1!3683 (v!16409 lt!253132))))))))

(assert (=> d!209574 (= (ruleValid!370 thiss!22590 (rule!1942 (_1!3683 (v!16409 lt!253132)))) e!360795)))

(declare-fun b!596058 () Bool)

(declare-fun res!257338 () Bool)

(assert (=> b!596058 (=> (not res!257338) (not e!360795))))

(declare-fun nullable!422 (Regex!1506) Bool)

(assert (=> b!596058 (= res!257338 (not (nullable!422 (regex!1172 (rule!1942 (_1!3683 (v!16409 lt!253132)))))))))

(declare-fun b!596059 () Bool)

(assert (=> b!596059 (= e!360795 (not (= (tag!1434 (rule!1942 (_1!3683 (v!16409 lt!253132)))) (String!7726 ""))))))

(assert (= (and d!209574 res!257337) b!596058))

(assert (= (and b!596058 res!257338) b!596059))

(declare-fun m!858853 () Bool)

(assert (=> d!209574 m!858853))

(declare-fun m!858855 () Bool)

(assert (=> b!596058 m!858855))

(assert (=> b!595941 d!209574))

(declare-fun b!596070 () Bool)

(declare-fun e!360803 () Bool)

(assert (=> b!596070 (= e!360803 (isPrefix!800 (tail!792 input!2705) (tail!792 input!2705)))))

(declare-fun b!596071 () Bool)

(declare-fun e!360804 () Bool)

(assert (=> b!596071 (= e!360804 (>= (size!4679 input!2705) (size!4679 input!2705)))))

(declare-fun d!209576 () Bool)

(assert (=> d!209576 e!360804))

(declare-fun res!257350 () Bool)

(assert (=> d!209576 (=> res!257350 e!360804)))

(declare-fun lt!253238 () Bool)

(assert (=> d!209576 (= res!257350 (not lt!253238))))

(declare-fun e!360802 () Bool)

(assert (=> d!209576 (= lt!253238 e!360802)))

(declare-fun res!257349 () Bool)

(assert (=> d!209576 (=> res!257349 e!360802)))

(assert (=> d!209576 (= res!257349 (is-Nil!5927 input!2705))))

(assert (=> d!209576 (= (isPrefix!800 input!2705 input!2705) lt!253238)))

(declare-fun b!596068 () Bool)

(assert (=> b!596068 (= e!360802 e!360803)))

(declare-fun res!257347 () Bool)

(assert (=> b!596068 (=> (not res!257347) (not e!360803))))

(assert (=> b!596068 (= res!257347 (not (is-Nil!5927 input!2705)))))

(declare-fun b!596069 () Bool)

(declare-fun res!257348 () Bool)

(assert (=> b!596069 (=> (not res!257348) (not e!360803))))

(declare-fun head!1263 (List!5937) C!3934)

(assert (=> b!596069 (= res!257348 (= (head!1263 input!2705) (head!1263 input!2705)))))

(assert (= (and d!209576 (not res!257349)) b!596068))

(assert (= (and b!596068 res!257347) b!596069))

(assert (= (and b!596069 res!257348) b!596070))

(assert (= (and d!209576 (not res!257350)) b!596071))

(declare-fun m!858857 () Bool)

(assert (=> b!596070 m!858857))

(assert (=> b!596070 m!858857))

(assert (=> b!596070 m!858857))

(assert (=> b!596070 m!858857))

(declare-fun m!858859 () Bool)

(assert (=> b!596070 m!858859))

(declare-fun m!858861 () Bool)

(assert (=> b!596071 m!858861))

(assert (=> b!596071 m!858861))

(declare-fun m!858863 () Bool)

(assert (=> b!596069 m!858863))

(assert (=> b!596069 m!858863))

(assert (=> b!595941 d!209576))

(declare-fun d!209578 () Bool)

(declare-fun res!257351 () Bool)

(declare-fun e!360805 () Bool)

(assert (=> d!209578 (=> (not res!257351) (not e!360805))))

(assert (=> d!209578 (= res!257351 (validRegex!517 (regex!1172 (rule!1942 token!491))))))

(assert (=> d!209578 (= (ruleValid!370 thiss!22590 (rule!1942 token!491)) e!360805)))

(declare-fun b!596072 () Bool)

(declare-fun res!257352 () Bool)

(assert (=> b!596072 (=> (not res!257352) (not e!360805))))

(assert (=> b!596072 (= res!257352 (not (nullable!422 (regex!1172 (rule!1942 token!491)))))))

(declare-fun b!596073 () Bool)

(assert (=> b!596073 (= e!360805 (not (= (tag!1434 (rule!1942 token!491)) (String!7726 ""))))))

(assert (= (and d!209578 res!257351) b!596072))

(assert (= (and b!596072 res!257352) b!596073))

(declare-fun m!858865 () Bool)

(assert (=> d!209578 m!858865))

(declare-fun m!858867 () Bool)

(assert (=> b!596072 m!858867))

(assert (=> b!595941 d!209578))

(declare-fun d!209580 () Bool)

(declare-fun lt!253239 () Int)

(assert (=> d!209580 (>= lt!253239 0)))

(declare-fun e!360806 () Int)

(assert (=> d!209580 (= lt!253239 e!360806)))

(declare-fun c!110916 () Bool)

(assert (=> d!209580 (= c!110916 (is-Nil!5927 lt!253116))))

(assert (=> d!209580 (= (size!4679 lt!253116) lt!253239)))

(declare-fun b!596074 () Bool)

(assert (=> b!596074 (= e!360806 0)))

(declare-fun b!596075 () Bool)

(assert (=> b!596075 (= e!360806 (+ 1 (size!4679 (t!79422 lt!253116))))))

(assert (= (and d!209580 c!110916) b!596074))

(assert (= (and d!209580 (not c!110916)) b!596075))

(declare-fun m!858869 () Bool)

(assert (=> b!596075 m!858869))

(assert (=> b!595941 d!209580))

(declare-fun d!209582 () Bool)

(assert (=> d!209582 (= (seqFromList!1348 lt!253127) (fromListB!591 lt!253127))))

(declare-fun bs!70621 () Bool)

(assert (= bs!70621 d!209582))

(declare-fun m!858871 () Bool)

(assert (=> bs!70621 m!858871))

(assert (=> b!595941 d!209582))

(declare-fun d!209584 () Bool)

(assert (=> d!209584 (isPrefix!800 input!2705 input!2705)))

(declare-fun lt!253242 () Unit!10780)

(declare-fun choose!4329 (List!5937 List!5937) Unit!10780)

(assert (=> d!209584 (= lt!253242 (choose!4329 input!2705 input!2705))))

(assert (=> d!209584 (= (lemmaIsPrefixRefl!536 input!2705 input!2705) lt!253242)))

(declare-fun bs!70622 () Bool)

(assert (= bs!70622 d!209584))

(assert (=> bs!70622 m!858629))

(declare-fun m!858873 () Bool)

(assert (=> bs!70622 m!858873))

(assert (=> b!595941 d!209584))

(declare-fun d!209586 () Bool)

(declare-fun e!360809 () Bool)

(assert (=> d!209586 e!360809))

(declare-fun res!257355 () Bool)

(assert (=> d!209586 (=> (not res!257355) (not e!360809))))

(assert (=> d!209586 (= res!257355 (semiInverseModEq!464 (toChars!1922 (transformation!1172 (rule!1942 token!491))) (toValue!2063 (transformation!1172 (rule!1942 token!491)))))))

(declare-fun Unit!10789 () Unit!10780)

(assert (=> d!209586 (= (lemmaInv!280 (transformation!1172 (rule!1942 token!491))) Unit!10789)))

(declare-fun b!596078 () Bool)

(assert (=> b!596078 (= e!360809 (equivClasses!447 (toChars!1922 (transformation!1172 (rule!1942 token!491))) (toValue!2063 (transformation!1172 (rule!1942 token!491)))))))

(assert (= (and d!209586 res!257355) b!596078))

(declare-fun m!858875 () Bool)

(assert (=> d!209586 m!858875))

(declare-fun m!858877 () Bool)

(assert (=> b!596078 m!858877))

(assert (=> b!595941 d!209586))

(declare-fun d!209588 () Bool)

(assert (=> d!209588 (= (size!4678 token!491) (size!4679 (originalCharacters!1211 token!491)))))

(declare-fun Unit!10790 () Unit!10780)

(assert (=> d!209588 (= (lemmaCharactersSize!231 token!491) Unit!10790)))

(declare-fun bs!70623 () Bool)

(assert (= bs!70623 d!209588))

(assert (=> bs!70623 m!858657))

(assert (=> b!595941 d!209588))

(declare-fun d!209590 () Bool)

(assert (=> d!209590 (and (= lt!253116 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!253245 () Unit!10780)

(declare-fun choose!4330 (List!5937 List!5937 List!5937 List!5937) Unit!10780)

(assert (=> d!209590 (= lt!253245 (choose!4330 lt!253116 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!209590 (= (++!1660 lt!253116 suffix!1342) (++!1660 input!2705 suffix!1342))))

(assert (=> d!209590 (= (lemmaConcatSameAndSameSizesThenSameLists!245 lt!253116 suffix!1342 input!2705 suffix!1342) lt!253245)))

(declare-fun bs!70624 () Bool)

(assert (= bs!70624 d!209590))

(declare-fun m!858879 () Bool)

(assert (=> bs!70624 m!858879))

(assert (=> bs!70624 m!858683))

(assert (=> bs!70624 m!858689))

(assert (=> b!595941 d!209590))

(declare-fun b!596081 () Bool)

(declare-fun e!360811 () Bool)

(assert (=> b!596081 (= e!360811 (isPrefix!800 (tail!792 lt!253127) (tail!792 (++!1660 lt!253127 (_2!3683 (v!16409 lt!253132))))))))

(declare-fun b!596082 () Bool)

(declare-fun e!360812 () Bool)

(assert (=> b!596082 (= e!360812 (>= (size!4679 (++!1660 lt!253127 (_2!3683 (v!16409 lt!253132)))) (size!4679 lt!253127)))))

(declare-fun d!209592 () Bool)

(assert (=> d!209592 e!360812))

(declare-fun res!257359 () Bool)

(assert (=> d!209592 (=> res!257359 e!360812)))

(declare-fun lt!253246 () Bool)

(assert (=> d!209592 (= res!257359 (not lt!253246))))

(declare-fun e!360810 () Bool)

(assert (=> d!209592 (= lt!253246 e!360810)))

(declare-fun res!257358 () Bool)

(assert (=> d!209592 (=> res!257358 e!360810)))

(assert (=> d!209592 (= res!257358 (is-Nil!5927 lt!253127))))

(assert (=> d!209592 (= (isPrefix!800 lt!253127 (++!1660 lt!253127 (_2!3683 (v!16409 lt!253132)))) lt!253246)))

(declare-fun b!596079 () Bool)

(assert (=> b!596079 (= e!360810 e!360811)))

(declare-fun res!257356 () Bool)

(assert (=> b!596079 (=> (not res!257356) (not e!360811))))

(assert (=> b!596079 (= res!257356 (not (is-Nil!5927 (++!1660 lt!253127 (_2!3683 (v!16409 lt!253132))))))))

(declare-fun b!596080 () Bool)

(declare-fun res!257357 () Bool)

(assert (=> b!596080 (=> (not res!257357) (not e!360811))))

(assert (=> b!596080 (= res!257357 (= (head!1263 lt!253127) (head!1263 (++!1660 lt!253127 (_2!3683 (v!16409 lt!253132))))))))

(assert (= (and d!209592 (not res!257358)) b!596079))

(assert (= (and b!596079 res!257356) b!596080))

(assert (= (and b!596080 res!257357) b!596081))

(assert (= (and d!209592 (not res!257359)) b!596082))

(declare-fun m!858881 () Bool)

(assert (=> b!596081 m!858881))

(assert (=> b!596081 m!858603))

(declare-fun m!858883 () Bool)

(assert (=> b!596081 m!858883))

(assert (=> b!596081 m!858881))

(assert (=> b!596081 m!858883))

(declare-fun m!858885 () Bool)

(assert (=> b!596081 m!858885))

(assert (=> b!596082 m!858603))

(declare-fun m!858887 () Bool)

(assert (=> b!596082 m!858887))

(assert (=> b!596082 m!858653))

(declare-fun m!858889 () Bool)

(assert (=> b!596080 m!858889))

(assert (=> b!596080 m!858603))

(declare-fun m!858891 () Bool)

(assert (=> b!596080 m!858891))

(assert (=> b!595941 d!209592))

(declare-fun b!596091 () Bool)

(declare-fun e!360817 () List!5937)

(assert (=> b!596091 (= e!360817 (_2!3683 (v!16409 lt!253132)))))

(declare-fun lt!253249 () List!5937)

(declare-fun e!360818 () Bool)

(declare-fun b!596094 () Bool)

(assert (=> b!596094 (= e!360818 (or (not (= (_2!3683 (v!16409 lt!253132)) Nil!5927)) (= lt!253249 lt!253127)))))

(declare-fun b!596092 () Bool)

(assert (=> b!596092 (= e!360817 (Cons!5927 (h!11328 lt!253127) (++!1660 (t!79422 lt!253127) (_2!3683 (v!16409 lt!253132)))))))

(declare-fun d!209594 () Bool)

(assert (=> d!209594 e!360818))

(declare-fun res!257365 () Bool)

(assert (=> d!209594 (=> (not res!257365) (not e!360818))))

(declare-fun content!1066 (List!5937) (Set C!3934))

(assert (=> d!209594 (= res!257365 (= (content!1066 lt!253249) (set.union (content!1066 lt!253127) (content!1066 (_2!3683 (v!16409 lt!253132))))))))

(assert (=> d!209594 (= lt!253249 e!360817)))

(declare-fun c!110919 () Bool)

(assert (=> d!209594 (= c!110919 (is-Nil!5927 lt!253127))))

(assert (=> d!209594 (= (++!1660 lt!253127 (_2!3683 (v!16409 lt!253132))) lt!253249)))

(declare-fun b!596093 () Bool)

(declare-fun res!257364 () Bool)

(assert (=> b!596093 (=> (not res!257364) (not e!360818))))

(assert (=> b!596093 (= res!257364 (= (size!4679 lt!253249) (+ (size!4679 lt!253127) (size!4679 (_2!3683 (v!16409 lt!253132))))))))

(assert (= (and d!209594 c!110919) b!596091))

(assert (= (and d!209594 (not c!110919)) b!596092))

(assert (= (and d!209594 res!257365) b!596093))

(assert (= (and b!596093 res!257364) b!596094))

(declare-fun m!858893 () Bool)

(assert (=> b!596092 m!858893))

(declare-fun m!858895 () Bool)

(assert (=> d!209594 m!858895))

(declare-fun m!858897 () Bool)

(assert (=> d!209594 m!858897))

(declare-fun m!858899 () Bool)

(assert (=> d!209594 m!858899))

(declare-fun m!858901 () Bool)

(assert (=> b!596093 m!858901))

(assert (=> b!596093 m!858653))

(declare-fun m!858903 () Bool)

(assert (=> b!596093 m!858903))

(assert (=> b!595941 d!209594))

(declare-fun d!209596 () Bool)

(declare-fun list!2485 (Conc!1889) List!5937)

(assert (=> d!209596 (= (list!2483 (charsOf!801 (_1!3683 (v!16409 lt!253132)))) (list!2485 (c!110900 (charsOf!801 (_1!3683 (v!16409 lt!253132))))))))

(declare-fun bs!70625 () Bool)

(assert (= bs!70625 d!209596))

(declare-fun m!858905 () Bool)

(assert (=> bs!70625 m!858905))

(assert (=> b!595941 d!209596))

(declare-fun d!209598 () Bool)

(assert (=> d!209598 (isPrefix!800 lt!253116 (++!1660 lt!253116 suffix!1342))))

(declare-fun lt!253250 () Unit!10780)

(assert (=> d!209598 (= lt!253250 (choose!4328 lt!253116 suffix!1342))))

(assert (=> d!209598 (= (lemmaConcatTwoListThenFirstIsPrefix!645 lt!253116 suffix!1342) lt!253250)))

(declare-fun bs!70626 () Bool)

(assert (= bs!70626 d!209598))

(assert (=> bs!70626 m!858683))

(assert (=> bs!70626 m!858683))

(declare-fun m!858907 () Bool)

(assert (=> bs!70626 m!858907))

(declare-fun m!858909 () Bool)

(assert (=> bs!70626 m!858909))

(assert (=> b!595941 d!209598))

(declare-fun b!596097 () Bool)

(declare-fun e!360820 () Bool)

(assert (=> b!596097 (= e!360820 (isPrefix!800 (tail!792 input!2705) (tail!792 lt!253122)))))

(declare-fun b!596098 () Bool)

(declare-fun e!360821 () Bool)

(assert (=> b!596098 (= e!360821 (>= (size!4679 lt!253122) (size!4679 input!2705)))))

(declare-fun d!209600 () Bool)

(assert (=> d!209600 e!360821))

(declare-fun res!257369 () Bool)

(assert (=> d!209600 (=> res!257369 e!360821)))

(declare-fun lt!253251 () Bool)

(assert (=> d!209600 (= res!257369 (not lt!253251))))

(declare-fun e!360819 () Bool)

(assert (=> d!209600 (= lt!253251 e!360819)))

(declare-fun res!257368 () Bool)

(assert (=> d!209600 (=> res!257368 e!360819)))

(assert (=> d!209600 (= res!257368 (is-Nil!5927 input!2705))))

(assert (=> d!209600 (= (isPrefix!800 input!2705 lt!253122) lt!253251)))

(declare-fun b!596095 () Bool)

(assert (=> b!596095 (= e!360819 e!360820)))

(declare-fun res!257366 () Bool)

(assert (=> b!596095 (=> (not res!257366) (not e!360820))))

(assert (=> b!596095 (= res!257366 (not (is-Nil!5927 lt!253122)))))

(declare-fun b!596096 () Bool)

(declare-fun res!257367 () Bool)

(assert (=> b!596096 (=> (not res!257367) (not e!360820))))

(assert (=> b!596096 (= res!257367 (= (head!1263 input!2705) (head!1263 lt!253122)))))

(assert (= (and d!209600 (not res!257368)) b!596095))

(assert (= (and b!596095 res!257366) b!596096))

(assert (= (and b!596096 res!257367) b!596097))

(assert (= (and d!209600 (not res!257369)) b!596098))

(assert (=> b!596097 m!858857))

(declare-fun m!858911 () Bool)

(assert (=> b!596097 m!858911))

(assert (=> b!596097 m!858857))

(assert (=> b!596097 m!858911))

(declare-fun m!858913 () Bool)

(assert (=> b!596097 m!858913))

(declare-fun m!858915 () Bool)

(assert (=> b!596098 m!858915))

(assert (=> b!596098 m!858861))

(assert (=> b!596096 m!858863))

(declare-fun m!858917 () Bool)

(assert (=> b!596096 m!858917))

(assert (=> b!595941 d!209600))

(declare-fun d!209602 () Bool)

(assert (=> d!209602 (= (size!4678 (_1!3683 (v!16409 lt!253132))) (size!4679 (originalCharacters!1211 (_1!3683 (v!16409 lt!253132)))))))

(declare-fun Unit!10791 () Unit!10780)

(assert (=> d!209602 (= (lemmaCharactersSize!231 (_1!3683 (v!16409 lt!253132))) Unit!10791)))

(declare-fun bs!70627 () Bool)

(assert (= bs!70627 d!209602))

(assert (=> bs!70627 m!858681))

(assert (=> b!595941 d!209602))

(declare-fun d!209604 () Bool)

(declare-fun lt!253252 () List!5937)

(assert (=> d!209604 (= (++!1660 lt!253127 lt!253252) input!2705)))

(declare-fun e!360822 () List!5937)

(assert (=> d!209604 (= lt!253252 e!360822)))

(declare-fun c!110920 () Bool)

(assert (=> d!209604 (= c!110920 (is-Cons!5927 lt!253127))))

(assert (=> d!209604 (>= (size!4679 input!2705) (size!4679 lt!253127))))

(assert (=> d!209604 (= (getSuffix!317 input!2705 lt!253127) lt!253252)))

(declare-fun b!596099 () Bool)

(assert (=> b!596099 (= e!360822 (getSuffix!317 (tail!792 input!2705) (t!79422 lt!253127)))))

(declare-fun b!596100 () Bool)

(assert (=> b!596100 (= e!360822 input!2705)))

(assert (= (and d!209604 c!110920) b!596099))

(assert (= (and d!209604 (not c!110920)) b!596100))

(declare-fun m!858919 () Bool)

(assert (=> d!209604 m!858919))

(assert (=> d!209604 m!858861))

(assert (=> d!209604 m!858653))

(assert (=> b!596099 m!858857))

(assert (=> b!596099 m!858857))

(declare-fun m!858921 () Bool)

(assert (=> b!596099 m!858921))

(assert (=> b!595941 d!209604))

(declare-fun d!209606 () Bool)

(assert (=> d!209606 (= (_2!3683 (v!16409 lt!253132)) lt!253123)))

(declare-fun lt!253253 () Unit!10780)

(assert (=> d!209606 (= lt!253253 (choose!4327 lt!253127 (_2!3683 (v!16409 lt!253132)) lt!253127 lt!253123 input!2705))))

(assert (=> d!209606 (isPrefix!800 lt!253127 input!2705)))

(assert (=> d!209606 (= (lemmaSamePrefixThenSameSuffix!513 lt!253127 (_2!3683 (v!16409 lt!253132)) lt!253127 lt!253123 input!2705) lt!253253)))

(declare-fun bs!70628 () Bool)

(assert (= bs!70628 d!209606))

(declare-fun m!858923 () Bool)

(assert (=> bs!70628 m!858923))

(declare-fun m!858925 () Bool)

(assert (=> bs!70628 m!858925))

(assert (=> b!595941 d!209606))

(declare-fun d!209608 () Bool)

(assert (=> d!209608 (ruleValid!370 thiss!22590 (rule!1942 (_1!3683 (v!16409 lt!253132))))))

(declare-fun lt!253256 () Unit!10780)

(declare-fun choose!4331 (LexerInterface!1058 Rule!2144 List!5939) Unit!10780)

(assert (=> d!209608 (= lt!253256 (choose!4331 thiss!22590 (rule!1942 (_1!3683 (v!16409 lt!253132))) rules!3103))))

(declare-fun contains!1390 (List!5939 Rule!2144) Bool)

(assert (=> d!209608 (contains!1390 rules!3103 (rule!1942 (_1!3683 (v!16409 lt!253132))))))

(assert (=> d!209608 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!217 thiss!22590 (rule!1942 (_1!3683 (v!16409 lt!253132))) rules!3103) lt!253256)))

(declare-fun bs!70629 () Bool)

(assert (= bs!70629 d!209608))

(assert (=> bs!70629 m!858627))

(declare-fun m!858927 () Bool)

(assert (=> bs!70629 m!858927))

(declare-fun m!858929 () Bool)

(assert (=> bs!70629 m!858929))

(assert (=> b!595941 d!209608))

(declare-fun d!209610 () Bool)

(assert (=> d!209610 (= (apply!1425 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132)))) (seqFromList!1348 lt!253127)) (dynLambda!3437 (toValue!2063 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132))))) (seqFromList!1348 lt!253127)))))

(declare-fun b_lambda!23489 () Bool)

(assert (=> (not b_lambda!23489) (not d!209610)))

(declare-fun t!79445 () Bool)

(declare-fun tb!52039 () Bool)

(assert (=> (and b!595935 (= (toValue!2063 (transformation!1172 (rule!1942 token!491))) (toValue!2063 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132)))))) t!79445) tb!52039))

(declare-fun result!58470 () Bool)

(assert (=> tb!52039 (= result!58470 (inv!21 (dynLambda!3437 (toValue!2063 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132))))) (seqFromList!1348 lt!253127))))))

(declare-fun m!858931 () Bool)

(assert (=> tb!52039 m!858931))

(assert (=> d!209610 t!79445))

(declare-fun b_and!58827 () Bool)

(assert (= b_and!58819 (and (=> t!79445 result!58470) b_and!58827)))

(declare-fun tb!52041 () Bool)

(declare-fun t!79447 () Bool)

(assert (=> (and b!595936 (= (toValue!2063 (transformation!1172 (h!11330 rules!3103))) (toValue!2063 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132)))))) t!79447) tb!52041))

(declare-fun result!58472 () Bool)

(assert (= result!58472 result!58470))

(assert (=> d!209610 t!79447))

(declare-fun b_and!58829 () Bool)

(assert (= b_and!58821 (and (=> t!79447 result!58472) b_and!58829)))

(assert (=> d!209610 m!858633))

(declare-fun m!858933 () Bool)

(assert (=> d!209610 m!858933))

(assert (=> b!595941 d!209610))

(declare-fun d!209612 () Bool)

(assert (=> d!209612 (ruleValid!370 thiss!22590 (rule!1942 token!491))))

(declare-fun lt!253257 () Unit!10780)

(assert (=> d!209612 (= lt!253257 (choose!4331 thiss!22590 (rule!1942 token!491) rules!3103))))

(assert (=> d!209612 (contains!1390 rules!3103 (rule!1942 token!491))))

(assert (=> d!209612 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!217 thiss!22590 (rule!1942 token!491) rules!3103) lt!253257)))

(declare-fun bs!70630 () Bool)

(assert (= bs!70630 d!209612))

(assert (=> bs!70630 m!858607))

(declare-fun m!858935 () Bool)

(assert (=> bs!70630 m!858935))

(declare-fun m!858937 () Bool)

(assert (=> bs!70630 m!858937))

(assert (=> b!595941 d!209612))

(declare-fun d!209614 () Bool)

(assert (=> d!209614 (isPrefix!800 input!2705 (++!1660 input!2705 suffix!1342))))

(declare-fun lt!253258 () Unit!10780)

(assert (=> d!209614 (= lt!253258 (choose!4328 input!2705 suffix!1342))))

(assert (=> d!209614 (= (lemmaConcatTwoListThenFirstIsPrefix!645 input!2705 suffix!1342) lt!253258)))

(declare-fun bs!70631 () Bool)

(assert (= bs!70631 d!209614))

(assert (=> bs!70631 m!858689))

(assert (=> bs!70631 m!858689))

(declare-fun m!858939 () Bool)

(assert (=> bs!70631 m!858939))

(declare-fun m!858941 () Bool)

(assert (=> bs!70631 m!858941))

(assert (=> b!595941 d!209614))

(declare-fun b!596103 () Bool)

(declare-fun e!360825 () Bool)

(assert (=> b!596103 (= e!360825 (isPrefix!800 (tail!792 lt!253116) (tail!792 lt!253122)))))

(declare-fun b!596104 () Bool)

(declare-fun e!360826 () Bool)

(assert (=> b!596104 (= e!360826 (>= (size!4679 lt!253122) (size!4679 lt!253116)))))

(declare-fun d!209616 () Bool)

(assert (=> d!209616 e!360826))

(declare-fun res!257373 () Bool)

(assert (=> d!209616 (=> res!257373 e!360826)))

(declare-fun lt!253259 () Bool)

(assert (=> d!209616 (= res!257373 (not lt!253259))))

(declare-fun e!360824 () Bool)

(assert (=> d!209616 (= lt!253259 e!360824)))

(declare-fun res!257372 () Bool)

(assert (=> d!209616 (=> res!257372 e!360824)))

(assert (=> d!209616 (= res!257372 (is-Nil!5927 lt!253116))))

(assert (=> d!209616 (= (isPrefix!800 lt!253116 lt!253122) lt!253259)))

(declare-fun b!596101 () Bool)

(assert (=> b!596101 (= e!360824 e!360825)))

(declare-fun res!257370 () Bool)

(assert (=> b!596101 (=> (not res!257370) (not e!360825))))

(assert (=> b!596101 (= res!257370 (not (is-Nil!5927 lt!253122)))))

(declare-fun b!596102 () Bool)

(declare-fun res!257371 () Bool)

(assert (=> b!596102 (=> (not res!257371) (not e!360825))))

(assert (=> b!596102 (= res!257371 (= (head!1263 lt!253116) (head!1263 lt!253122)))))

(assert (= (and d!209616 (not res!257372)) b!596101))

(assert (= (and b!596101 res!257370) b!596102))

(assert (= (and b!596102 res!257371) b!596103))

(assert (= (and d!209616 (not res!257373)) b!596104))

(declare-fun m!858943 () Bool)

(assert (=> b!596103 m!858943))

(assert (=> b!596103 m!858911))

(assert (=> b!596103 m!858943))

(assert (=> b!596103 m!858911))

(declare-fun m!858945 () Bool)

(assert (=> b!596103 m!858945))

(assert (=> b!596104 m!858915))

(assert (=> b!596104 m!858649))

(declare-fun m!858947 () Bool)

(assert (=> b!596102 m!858947))

(assert (=> b!596102 m!858917))

(assert (=> b!595941 d!209616))

(declare-fun d!209618 () Bool)

(declare-fun e!360827 () Bool)

(assert (=> d!209618 e!360827))

(declare-fun res!257374 () Bool)

(assert (=> d!209618 (=> (not res!257374) (not e!360827))))

(assert (=> d!209618 (= res!257374 (semiInverseModEq!464 (toChars!1922 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132))))) (toValue!2063 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132)))))))))

(declare-fun Unit!10792 () Unit!10780)

(assert (=> d!209618 (= (lemmaInv!280 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132))))) Unit!10792)))

(declare-fun b!596105 () Bool)

(assert (=> b!596105 (= e!360827 (equivClasses!447 (toChars!1922 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132))))) (toValue!2063 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132)))))))))

(assert (= (and d!209618 res!257374) b!596105))

(declare-fun m!858949 () Bool)

(assert (=> d!209618 m!858949))

(declare-fun m!858951 () Bool)

(assert (=> b!596105 m!858951))

(assert (=> b!595941 d!209618))

(declare-fun d!209620 () Bool)

(declare-fun lt!253260 () Int)

(assert (=> d!209620 (>= lt!253260 0)))

(declare-fun e!360828 () Int)

(assert (=> d!209620 (= lt!253260 e!360828)))

(declare-fun c!110921 () Bool)

(assert (=> d!209620 (= c!110921 (is-Nil!5927 lt!253127))))

(assert (=> d!209620 (= (size!4679 lt!253127) lt!253260)))

(declare-fun b!596106 () Bool)

(assert (=> b!596106 (= e!360828 0)))

(declare-fun b!596107 () Bool)

(assert (=> b!596107 (= e!360828 (+ 1 (size!4679 (t!79422 lt!253127))))))

(assert (= (and d!209620 c!110921) b!596106))

(assert (= (and d!209620 (not c!110921)) b!596107))

(declare-fun m!858953 () Bool)

(assert (=> b!596107 m!858953))

(assert (=> b!595941 d!209620))

(declare-fun b!596110 () Bool)

(declare-fun e!360830 () Bool)

(assert (=> b!596110 (= e!360830 (isPrefix!800 (tail!792 input!2705) (tail!792 lt!253111)))))

(declare-fun b!596111 () Bool)

(declare-fun e!360831 () Bool)

(assert (=> b!596111 (= e!360831 (>= (size!4679 lt!253111) (size!4679 input!2705)))))

(declare-fun d!209622 () Bool)

(assert (=> d!209622 e!360831))

(declare-fun res!257378 () Bool)

(assert (=> d!209622 (=> res!257378 e!360831)))

(declare-fun lt!253261 () Bool)

(assert (=> d!209622 (= res!257378 (not lt!253261))))

(declare-fun e!360829 () Bool)

(assert (=> d!209622 (= lt!253261 e!360829)))

(declare-fun res!257377 () Bool)

(assert (=> d!209622 (=> res!257377 e!360829)))

(assert (=> d!209622 (= res!257377 (is-Nil!5927 input!2705))))

(assert (=> d!209622 (= (isPrefix!800 input!2705 lt!253111) lt!253261)))

(declare-fun b!596108 () Bool)

(assert (=> b!596108 (= e!360829 e!360830)))

(declare-fun res!257375 () Bool)

(assert (=> b!596108 (=> (not res!257375) (not e!360830))))

(assert (=> b!596108 (= res!257375 (not (is-Nil!5927 lt!253111)))))

(declare-fun b!596109 () Bool)

(declare-fun res!257376 () Bool)

(assert (=> b!596109 (=> (not res!257376) (not e!360830))))

(assert (=> b!596109 (= res!257376 (= (head!1263 input!2705) (head!1263 lt!253111)))))

(assert (= (and d!209622 (not res!257377)) b!596108))

(assert (= (and b!596108 res!257375) b!596109))

(assert (= (and b!596109 res!257376) b!596110))

(assert (= (and d!209622 (not res!257378)) b!596111))

(assert (=> b!596110 m!858857))

(assert (=> b!596110 m!858823))

(assert (=> b!596110 m!858857))

(assert (=> b!596110 m!858823))

(declare-fun m!858955 () Bool)

(assert (=> b!596110 m!858955))

(assert (=> b!596111 m!858821))

(assert (=> b!596111 m!858861))

(assert (=> b!596109 m!858863))

(declare-fun m!858957 () Bool)

(assert (=> b!596109 m!858957))

(assert (=> b!595941 d!209622))

(declare-fun b!596112 () Bool)

(declare-fun e!360832 () List!5937)

(assert (=> b!596112 (= e!360832 suffix!1342)))

(declare-fun e!360833 () Bool)

(declare-fun b!596115 () Bool)

(declare-fun lt!253262 () List!5937)

(assert (=> b!596115 (= e!360833 (or (not (= suffix!1342 Nil!5927)) (= lt!253262 lt!253116)))))

(declare-fun b!596113 () Bool)

(assert (=> b!596113 (= e!360832 (Cons!5927 (h!11328 lt!253116) (++!1660 (t!79422 lt!253116) suffix!1342)))))

(declare-fun d!209624 () Bool)

(assert (=> d!209624 e!360833))

(declare-fun res!257380 () Bool)

(assert (=> d!209624 (=> (not res!257380) (not e!360833))))

(assert (=> d!209624 (= res!257380 (= (content!1066 lt!253262) (set.union (content!1066 lt!253116) (content!1066 suffix!1342))))))

(assert (=> d!209624 (= lt!253262 e!360832)))

(declare-fun c!110922 () Bool)

(assert (=> d!209624 (= c!110922 (is-Nil!5927 lt!253116))))

(assert (=> d!209624 (= (++!1660 lt!253116 suffix!1342) lt!253262)))

(declare-fun b!596114 () Bool)

(declare-fun res!257379 () Bool)

(assert (=> b!596114 (=> (not res!257379) (not e!360833))))

(assert (=> b!596114 (= res!257379 (= (size!4679 lt!253262) (+ (size!4679 lt!253116) (size!4679 suffix!1342))))))

(assert (= (and d!209624 c!110922) b!596112))

(assert (= (and d!209624 (not c!110922)) b!596113))

(assert (= (and d!209624 res!257380) b!596114))

(assert (= (and b!596114 res!257379) b!596115))

(declare-fun m!858959 () Bool)

(assert (=> b!596113 m!858959))

(declare-fun m!858961 () Bool)

(assert (=> d!209624 m!858961))

(declare-fun m!858963 () Bool)

(assert (=> d!209624 m!858963))

(declare-fun m!858965 () Bool)

(assert (=> d!209624 m!858965))

(declare-fun m!858967 () Bool)

(assert (=> b!596114 m!858967))

(assert (=> b!596114 m!858649))

(declare-fun m!858969 () Bool)

(assert (=> b!596114 m!858969))

(assert (=> b!595920 d!209624))

(declare-fun d!209626 () Bool)

(declare-fun lt!253263 () Int)

(assert (=> d!209626 (>= lt!253263 0)))

(declare-fun e!360834 () Int)

(assert (=> d!209626 (= lt!253263 e!360834)))

(declare-fun c!110923 () Bool)

(assert (=> d!209626 (= c!110923 (is-Nil!5927 (originalCharacters!1211 token!491)))))

(assert (=> d!209626 (= (size!4679 (originalCharacters!1211 token!491)) lt!253263)))

(declare-fun b!596116 () Bool)

(assert (=> b!596116 (= e!360834 0)))

(declare-fun b!596117 () Bool)

(assert (=> b!596117 (= e!360834 (+ 1 (size!4679 (t!79422 (originalCharacters!1211 token!491)))))))

(assert (= (and d!209626 c!110923) b!596116))

(assert (= (and d!209626 (not c!110923)) b!596117))

(declare-fun m!858971 () Bool)

(assert (=> b!596117 m!858971))

(assert (=> b!595939 d!209626))

(declare-fun b!596163 () Bool)

(declare-fun res!257422 () Bool)

(declare-fun e!360851 () Bool)

(assert (=> b!596163 (=> (not res!257422) (not e!360851))))

(declare-fun lt!253294 () Option!1523)

(assert (=> b!596163 (= res!257422 (= (list!2483 (charsOf!801 (_1!3683 (get!2273 lt!253294)))) (originalCharacters!1211 (_1!3683 (get!2273 lt!253294)))))))

(declare-fun bm!40406 () Bool)

(declare-fun call!40411 () Option!1523)

(declare-fun maxPrefixOneRule!430 (LexerInterface!1058 Rule!2144 List!5937) Option!1523)

(assert (=> bm!40406 (= call!40411 (maxPrefixOneRule!430 thiss!22590 (h!11330 rules!3103) input!2705))))

(declare-fun b!596164 () Bool)

(declare-fun e!360852 () Option!1523)

(declare-fun lt!253292 () Option!1523)

(declare-fun lt!253293 () Option!1523)

(assert (=> b!596164 (= e!360852 (ite (and (is-None!1522 lt!253292) (is-None!1522 lt!253293)) None!1522 (ite (is-None!1522 lt!253293) lt!253292 (ite (is-None!1522 lt!253292) lt!253293 (ite (>= (size!4678 (_1!3683 (v!16409 lt!253292))) (size!4678 (_1!3683 (v!16409 lt!253293)))) lt!253292 lt!253293)))))))

(assert (=> b!596164 (= lt!253292 call!40411)))

(assert (=> b!596164 (= lt!253293 (maxPrefix!756 thiss!22590 (t!79424 rules!3103) input!2705))))

(declare-fun b!596165 () Bool)

(assert (=> b!596165 (= e!360852 call!40411)))

(declare-fun b!596166 () Bool)

(declare-fun res!257421 () Bool)

(assert (=> b!596166 (=> (not res!257421) (not e!360851))))

(assert (=> b!596166 (= res!257421 (< (size!4679 (_2!3683 (get!2273 lt!253294))) (size!4679 input!2705)))))

(declare-fun b!596167 () Bool)

(declare-fun res!257417 () Bool)

(assert (=> b!596167 (=> (not res!257417) (not e!360851))))

(assert (=> b!596167 (= res!257417 (= (value!38270 (_1!3683 (get!2273 lt!253294))) (apply!1425 (transformation!1172 (rule!1942 (_1!3683 (get!2273 lt!253294)))) (seqFromList!1348 (originalCharacters!1211 (_1!3683 (get!2273 lt!253294)))))))))

(declare-fun b!596168 () Bool)

(declare-fun res!257416 () Bool)

(assert (=> b!596168 (=> (not res!257416) (not e!360851))))

(assert (=> b!596168 (= res!257416 (= (++!1660 (list!2483 (charsOf!801 (_1!3683 (get!2273 lt!253294)))) (_2!3683 (get!2273 lt!253294))) input!2705))))

(declare-fun b!596169 () Bool)

(declare-fun res!257418 () Bool)

(assert (=> b!596169 (=> (not res!257418) (not e!360851))))

(declare-fun matchR!626 (Regex!1506 List!5937) Bool)

(assert (=> b!596169 (= res!257418 (matchR!626 (regex!1172 (rule!1942 (_1!3683 (get!2273 lt!253294)))) (list!2483 (charsOf!801 (_1!3683 (get!2273 lt!253294))))))))

(declare-fun d!209628 () Bool)

(declare-fun e!360850 () Bool)

(assert (=> d!209628 e!360850))

(declare-fun res!257419 () Bool)

(assert (=> d!209628 (=> res!257419 e!360850)))

(declare-fun isEmpty!4284 (Option!1523) Bool)

(assert (=> d!209628 (= res!257419 (isEmpty!4284 lt!253294))))

(assert (=> d!209628 (= lt!253294 e!360852)))

(declare-fun c!110929 () Bool)

(assert (=> d!209628 (= c!110929 (and (is-Cons!5929 rules!3103) (is-Nil!5929 (t!79424 rules!3103))))))

(declare-fun lt!253295 () Unit!10780)

(declare-fun lt!253291 () Unit!10780)

(assert (=> d!209628 (= lt!253295 lt!253291)))

(assert (=> d!209628 (isPrefix!800 input!2705 input!2705)))

(assert (=> d!209628 (= lt!253291 (lemmaIsPrefixRefl!536 input!2705 input!2705))))

(declare-fun rulesValidInductive!434 (LexerInterface!1058 List!5939) Bool)

(assert (=> d!209628 (rulesValidInductive!434 thiss!22590 rules!3103)))

(assert (=> d!209628 (= (maxPrefix!756 thiss!22590 rules!3103 input!2705) lt!253294)))

(declare-fun b!596170 () Bool)

(assert (=> b!596170 (= e!360851 (contains!1390 rules!3103 (rule!1942 (_1!3683 (get!2273 lt!253294)))))))

(declare-fun b!596171 () Bool)

(assert (=> b!596171 (= e!360850 e!360851)))

(declare-fun res!257420 () Bool)

(assert (=> b!596171 (=> (not res!257420) (not e!360851))))

(assert (=> b!596171 (= res!257420 (isDefined!1334 lt!253294))))

(assert (= (and d!209628 c!110929) b!596165))

(assert (= (and d!209628 (not c!110929)) b!596164))

(assert (= (or b!596165 b!596164) bm!40406))

(assert (= (and d!209628 (not res!257419)) b!596171))

(assert (= (and b!596171 res!257420) b!596163))

(assert (= (and b!596163 res!257422) b!596166))

(assert (= (and b!596166 res!257421) b!596168))

(assert (= (and b!596168 res!257416) b!596167))

(assert (= (and b!596167 res!257417) b!596169))

(assert (= (and b!596169 res!257418) b!596170))

(declare-fun m!859007 () Bool)

(assert (=> b!596171 m!859007))

(declare-fun m!859009 () Bool)

(assert (=> b!596163 m!859009))

(declare-fun m!859011 () Bool)

(assert (=> b!596163 m!859011))

(assert (=> b!596163 m!859011))

(declare-fun m!859013 () Bool)

(assert (=> b!596163 m!859013))

(assert (=> b!596169 m!859009))

(assert (=> b!596169 m!859011))

(assert (=> b!596169 m!859011))

(assert (=> b!596169 m!859013))

(assert (=> b!596169 m!859013))

(declare-fun m!859015 () Bool)

(assert (=> b!596169 m!859015))

(assert (=> b!596167 m!859009))

(declare-fun m!859017 () Bool)

(assert (=> b!596167 m!859017))

(assert (=> b!596167 m!859017))

(declare-fun m!859019 () Bool)

(assert (=> b!596167 m!859019))

(declare-fun m!859021 () Bool)

(assert (=> bm!40406 m!859021))

(assert (=> b!596166 m!859009))

(declare-fun m!859023 () Bool)

(assert (=> b!596166 m!859023))

(assert (=> b!596166 m!858861))

(assert (=> b!596168 m!859009))

(assert (=> b!596168 m!859011))

(assert (=> b!596168 m!859011))

(assert (=> b!596168 m!859013))

(assert (=> b!596168 m!859013))

(declare-fun m!859025 () Bool)

(assert (=> b!596168 m!859025))

(declare-fun m!859027 () Bool)

(assert (=> d!209628 m!859027))

(assert (=> d!209628 m!858629))

(assert (=> d!209628 m!858651))

(declare-fun m!859029 () Bool)

(assert (=> d!209628 m!859029))

(declare-fun m!859031 () Bool)

(assert (=> b!596164 m!859031))

(assert (=> b!596170 m!859009))

(declare-fun m!859033 () Bool)

(assert (=> b!596170 m!859033))

(assert (=> b!595929 d!209628))

(declare-fun d!209634 () Bool)

(assert (=> d!209634 (= (isDefined!1334 lt!253129) (not (isEmpty!4284 lt!253129)))))

(declare-fun bs!70633 () Bool)

(assert (= bs!70633 d!209634))

(declare-fun m!859035 () Bool)

(assert (=> bs!70633 m!859035))

(assert (=> b!595940 d!209634))

(declare-fun b!596172 () Bool)

(declare-fun res!257429 () Bool)

(declare-fun e!360854 () Bool)

(assert (=> b!596172 (=> (not res!257429) (not e!360854))))

(declare-fun lt!253300 () Option!1523)

(assert (=> b!596172 (= res!257429 (= (list!2483 (charsOf!801 (_1!3683 (get!2273 lt!253300)))) (originalCharacters!1211 (_1!3683 (get!2273 lt!253300)))))))

(declare-fun bm!40407 () Bool)

(declare-fun call!40412 () Option!1523)

(assert (=> bm!40407 (= call!40412 (maxPrefixOneRule!430 thiss!22590 (h!11330 rules!3103) lt!253111))))

(declare-fun b!596173 () Bool)

(declare-fun e!360855 () Option!1523)

(declare-fun lt!253298 () Option!1523)

(declare-fun lt!253299 () Option!1523)

(assert (=> b!596173 (= e!360855 (ite (and (is-None!1522 lt!253298) (is-None!1522 lt!253299)) None!1522 (ite (is-None!1522 lt!253299) lt!253298 (ite (is-None!1522 lt!253298) lt!253299 (ite (>= (size!4678 (_1!3683 (v!16409 lt!253298))) (size!4678 (_1!3683 (v!16409 lt!253299)))) lt!253298 lt!253299)))))))

(assert (=> b!596173 (= lt!253298 call!40412)))

(assert (=> b!596173 (= lt!253299 (maxPrefix!756 thiss!22590 (t!79424 rules!3103) lt!253111))))

(declare-fun b!596174 () Bool)

(assert (=> b!596174 (= e!360855 call!40412)))

(declare-fun b!596175 () Bool)

(declare-fun res!257428 () Bool)

(assert (=> b!596175 (=> (not res!257428) (not e!360854))))

(assert (=> b!596175 (= res!257428 (< (size!4679 (_2!3683 (get!2273 lt!253300))) (size!4679 lt!253111)))))

(declare-fun b!596176 () Bool)

(declare-fun res!257424 () Bool)

(assert (=> b!596176 (=> (not res!257424) (not e!360854))))

(assert (=> b!596176 (= res!257424 (= (value!38270 (_1!3683 (get!2273 lt!253300))) (apply!1425 (transformation!1172 (rule!1942 (_1!3683 (get!2273 lt!253300)))) (seqFromList!1348 (originalCharacters!1211 (_1!3683 (get!2273 lt!253300)))))))))

(declare-fun b!596177 () Bool)

(declare-fun res!257423 () Bool)

(assert (=> b!596177 (=> (not res!257423) (not e!360854))))

(assert (=> b!596177 (= res!257423 (= (++!1660 (list!2483 (charsOf!801 (_1!3683 (get!2273 lt!253300)))) (_2!3683 (get!2273 lt!253300))) lt!253111))))

(declare-fun b!596178 () Bool)

(declare-fun res!257425 () Bool)

(assert (=> b!596178 (=> (not res!257425) (not e!360854))))

(assert (=> b!596178 (= res!257425 (matchR!626 (regex!1172 (rule!1942 (_1!3683 (get!2273 lt!253300)))) (list!2483 (charsOf!801 (_1!3683 (get!2273 lt!253300))))))))

(declare-fun d!209636 () Bool)

(declare-fun e!360853 () Bool)

(assert (=> d!209636 e!360853))

(declare-fun res!257426 () Bool)

(assert (=> d!209636 (=> res!257426 e!360853)))

(assert (=> d!209636 (= res!257426 (isEmpty!4284 lt!253300))))

(assert (=> d!209636 (= lt!253300 e!360855)))

(declare-fun c!110930 () Bool)

(assert (=> d!209636 (= c!110930 (and (is-Cons!5929 rules!3103) (is-Nil!5929 (t!79424 rules!3103))))))

(declare-fun lt!253301 () Unit!10780)

(declare-fun lt!253297 () Unit!10780)

(assert (=> d!209636 (= lt!253301 lt!253297)))

(assert (=> d!209636 (isPrefix!800 lt!253111 lt!253111)))

(assert (=> d!209636 (= lt!253297 (lemmaIsPrefixRefl!536 lt!253111 lt!253111))))

(assert (=> d!209636 (rulesValidInductive!434 thiss!22590 rules!3103)))

(assert (=> d!209636 (= (maxPrefix!756 thiss!22590 rules!3103 lt!253111) lt!253300)))

(declare-fun b!596179 () Bool)

(assert (=> b!596179 (= e!360854 (contains!1390 rules!3103 (rule!1942 (_1!3683 (get!2273 lt!253300)))))))

(declare-fun b!596180 () Bool)

(assert (=> b!596180 (= e!360853 e!360854)))

(declare-fun res!257427 () Bool)

(assert (=> b!596180 (=> (not res!257427) (not e!360854))))

(assert (=> b!596180 (= res!257427 (isDefined!1334 lt!253300))))

(assert (= (and d!209636 c!110930) b!596174))

(assert (= (and d!209636 (not c!110930)) b!596173))

(assert (= (or b!596174 b!596173) bm!40407))

(assert (= (and d!209636 (not res!257426)) b!596180))

(assert (= (and b!596180 res!257427) b!596172))

(assert (= (and b!596172 res!257429) b!596175))

(assert (= (and b!596175 res!257428) b!596177))

(assert (= (and b!596177 res!257423) b!596176))

(assert (= (and b!596176 res!257424) b!596178))

(assert (= (and b!596178 res!257425) b!596179))

(declare-fun m!859037 () Bool)

(assert (=> b!596180 m!859037))

(declare-fun m!859039 () Bool)

(assert (=> b!596172 m!859039))

(declare-fun m!859041 () Bool)

(assert (=> b!596172 m!859041))

(assert (=> b!596172 m!859041))

(declare-fun m!859043 () Bool)

(assert (=> b!596172 m!859043))

(assert (=> b!596178 m!859039))

(assert (=> b!596178 m!859041))

(assert (=> b!596178 m!859041))

(assert (=> b!596178 m!859043))

(assert (=> b!596178 m!859043))

(declare-fun m!859045 () Bool)

(assert (=> b!596178 m!859045))

(assert (=> b!596176 m!859039))

(declare-fun m!859047 () Bool)

(assert (=> b!596176 m!859047))

(assert (=> b!596176 m!859047))

(declare-fun m!859049 () Bool)

(assert (=> b!596176 m!859049))

(declare-fun m!859051 () Bool)

(assert (=> bm!40407 m!859051))

(assert (=> b!596175 m!859039))

(declare-fun m!859053 () Bool)

(assert (=> b!596175 m!859053))

(assert (=> b!596175 m!858821))

(assert (=> b!596177 m!859039))

(assert (=> b!596177 m!859041))

(assert (=> b!596177 m!859041))

(assert (=> b!596177 m!859043))

(assert (=> b!596177 m!859043))

(declare-fun m!859055 () Bool)

(assert (=> b!596177 m!859055))

(declare-fun m!859057 () Bool)

(assert (=> d!209636 m!859057))

(declare-fun m!859059 () Bool)

(assert (=> d!209636 m!859059))

(declare-fun m!859061 () Bool)

(assert (=> d!209636 m!859061))

(assert (=> d!209636 m!859029))

(declare-fun m!859063 () Bool)

(assert (=> b!596173 m!859063))

(assert (=> b!596179 m!859039))

(declare-fun m!859065 () Bool)

(assert (=> b!596179 m!859065))

(assert (=> b!595940 d!209636))

(declare-fun b!596185 () Bool)

(declare-fun e!360858 () List!5937)

(assert (=> b!596185 (= e!360858 suffix!1342)))

(declare-fun e!360859 () Bool)

(declare-fun lt!253304 () List!5937)

(declare-fun b!596188 () Bool)

(assert (=> b!596188 (= e!360859 (or (not (= suffix!1342 Nil!5927)) (= lt!253304 input!2705)))))

(declare-fun b!596186 () Bool)

(assert (=> b!596186 (= e!360858 (Cons!5927 (h!11328 input!2705) (++!1660 (t!79422 input!2705) suffix!1342)))))

(declare-fun d!209638 () Bool)

(assert (=> d!209638 e!360859))

(declare-fun res!257431 () Bool)

(assert (=> d!209638 (=> (not res!257431) (not e!360859))))

(assert (=> d!209638 (= res!257431 (= (content!1066 lt!253304) (set.union (content!1066 input!2705) (content!1066 suffix!1342))))))

(assert (=> d!209638 (= lt!253304 e!360858)))

(declare-fun c!110933 () Bool)

(assert (=> d!209638 (= c!110933 (is-Nil!5927 input!2705))))

(assert (=> d!209638 (= (++!1660 input!2705 suffix!1342) lt!253304)))

(declare-fun b!596187 () Bool)

(declare-fun res!257430 () Bool)

(assert (=> b!596187 (=> (not res!257430) (not e!360859))))

(assert (=> b!596187 (= res!257430 (= (size!4679 lt!253304) (+ (size!4679 input!2705) (size!4679 suffix!1342))))))

(assert (= (and d!209638 c!110933) b!596185))

(assert (= (and d!209638 (not c!110933)) b!596186))

(assert (= (and d!209638 res!257431) b!596187))

(assert (= (and b!596187 res!257430) b!596188))

(declare-fun m!859067 () Bool)

(assert (=> b!596186 m!859067))

(declare-fun m!859069 () Bool)

(assert (=> d!209638 m!859069))

(declare-fun m!859071 () Bool)

(assert (=> d!209638 m!859071))

(assert (=> d!209638 m!858965))

(declare-fun m!859073 () Bool)

(assert (=> b!596187 m!859073))

(assert (=> b!596187 m!858861))

(assert (=> b!596187 m!858969))

(assert (=> b!595940 d!209638))

(declare-fun d!209640 () Bool)

(declare-fun res!257436 () Bool)

(declare-fun e!360864 () Bool)

(assert (=> d!209640 (=> (not res!257436) (not e!360864))))

(assert (=> d!209640 (= res!257436 (not (isEmpty!4279 (originalCharacters!1211 token!491))))))

(assert (=> d!209640 (= (inv!7515 token!491) e!360864)))

(declare-fun b!596197 () Bool)

(declare-fun res!257437 () Bool)

(assert (=> b!596197 (=> (not res!257437) (not e!360864))))

(assert (=> b!596197 (= res!257437 (= (originalCharacters!1211 token!491) (list!2483 (dynLambda!3438 (toChars!1922 (transformation!1172 (rule!1942 token!491))) (value!38270 token!491)))))))

(declare-fun b!596198 () Bool)

(assert (=> b!596198 (= e!360864 (= (size!4678 token!491) (size!4679 (originalCharacters!1211 token!491))))))

(assert (= (and d!209640 res!257436) b!596197))

(assert (= (and b!596197 res!257437) b!596198))

(declare-fun b_lambda!23491 () Bool)

(assert (=> (not b_lambda!23491) (not b!596197)))

(declare-fun t!79449 () Bool)

(declare-fun tb!52043 () Bool)

(assert (=> (and b!595935 (= (toChars!1922 (transformation!1172 (rule!1942 token!491))) (toChars!1922 (transformation!1172 (rule!1942 token!491)))) t!79449) tb!52043))

(declare-fun b!596199 () Bool)

(declare-fun e!360865 () Bool)

(declare-fun tp!185855 () Bool)

(assert (=> b!596199 (= e!360865 (and (inv!7518 (c!110900 (dynLambda!3438 (toChars!1922 (transformation!1172 (rule!1942 token!491))) (value!38270 token!491)))) tp!185855))))

(declare-fun result!58474 () Bool)

(assert (=> tb!52043 (= result!58474 (and (inv!7519 (dynLambda!3438 (toChars!1922 (transformation!1172 (rule!1942 token!491))) (value!38270 token!491))) e!360865))))

(assert (= tb!52043 b!596199))

(declare-fun m!859085 () Bool)

(assert (=> b!596199 m!859085))

(declare-fun m!859087 () Bool)

(assert (=> tb!52043 m!859087))

(assert (=> b!596197 t!79449))

(declare-fun b_and!58831 () Bool)

(assert (= b_and!58823 (and (=> t!79449 result!58474) b_and!58831)))

(declare-fun t!79451 () Bool)

(declare-fun tb!52045 () Bool)

(assert (=> (and b!595936 (= (toChars!1922 (transformation!1172 (h!11330 rules!3103))) (toChars!1922 (transformation!1172 (rule!1942 token!491)))) t!79451) tb!52045))

(declare-fun result!58476 () Bool)

(assert (= result!58476 result!58474))

(assert (=> b!596197 t!79451))

(declare-fun b_and!58833 () Bool)

(assert (= b_and!58825 (and (=> t!79451 result!58476) b_and!58833)))

(declare-fun m!859089 () Bool)

(assert (=> d!209640 m!859089))

(declare-fun m!859091 () Bool)

(assert (=> b!596197 m!859091))

(assert (=> b!596197 m!859091))

(declare-fun m!859093 () Bool)

(assert (=> b!596197 m!859093))

(assert (=> b!596198 m!858657))

(assert (=> start!56246 d!209640))

(declare-fun d!209646 () Bool)

(assert (=> d!209646 (= (isEmpty!4280 rules!3103) (is-Nil!5929 rules!3103))))

(assert (=> b!595943 d!209646))

(declare-fun d!209648 () Bool)

(assert (=> d!209648 (= (inv!7511 (tag!1434 (rule!1942 token!491))) (= (mod (str.len (value!38244 (tag!1434 (rule!1942 token!491)))) 2) 0))))

(assert (=> b!595922 d!209648))

(declare-fun d!209650 () Bool)

(declare-fun res!257438 () Bool)

(declare-fun e!360866 () Bool)

(assert (=> d!209650 (=> (not res!257438) (not e!360866))))

(assert (=> d!209650 (= res!257438 (semiInverseModEq!464 (toChars!1922 (transformation!1172 (rule!1942 token!491))) (toValue!2063 (transformation!1172 (rule!1942 token!491)))))))

(assert (=> d!209650 (= (inv!7514 (transformation!1172 (rule!1942 token!491))) e!360866)))

(declare-fun b!596200 () Bool)

(assert (=> b!596200 (= e!360866 (equivClasses!447 (toChars!1922 (transformation!1172 (rule!1942 token!491))) (toValue!2063 (transformation!1172 (rule!1942 token!491)))))))

(assert (= (and d!209650 res!257438) b!596200))

(assert (=> d!209650 m!858875))

(assert (=> b!596200 m!858877))

(assert (=> b!595922 d!209650))

(declare-fun d!209652 () Bool)

(assert (=> d!209652 (= (list!2483 (charsOf!801 token!491)) (list!2485 (c!110900 (charsOf!801 token!491))))))

(declare-fun bs!70634 () Bool)

(assert (= bs!70634 d!209652))

(declare-fun m!859095 () Bool)

(assert (=> bs!70634 m!859095))

(assert (=> b!595933 d!209652))

(declare-fun d!209654 () Bool)

(declare-fun lt!253307 () BalanceConc!3786)

(assert (=> d!209654 (= (list!2483 lt!253307) (originalCharacters!1211 token!491))))

(assert (=> d!209654 (= lt!253307 (dynLambda!3438 (toChars!1922 (transformation!1172 (rule!1942 token!491))) (value!38270 token!491)))))

(assert (=> d!209654 (= (charsOf!801 token!491) lt!253307)))

(declare-fun b_lambda!23493 () Bool)

(assert (=> (not b_lambda!23493) (not d!209654)))

(assert (=> d!209654 t!79449))

(declare-fun b_and!58835 () Bool)

(assert (= b_and!58831 (and (=> t!79449 result!58474) b_and!58835)))

(assert (=> d!209654 t!79451))

(declare-fun b_and!58837 () Bool)

(assert (= b_and!58833 (and (=> t!79451 result!58476) b_and!58837)))

(declare-fun m!859097 () Bool)

(assert (=> d!209654 m!859097))

(assert (=> d!209654 m!859091))

(assert (=> b!595933 d!209654))

(declare-fun b!596226 () Bool)

(declare-fun e!360883 () Bool)

(declare-fun inv!17 (TokenValue!1196) Bool)

(assert (=> b!596226 (= e!360883 (inv!17 (value!38270 token!491)))))

(declare-fun b!596227 () Bool)

(declare-fun e!360882 () Bool)

(declare-fun inv!16 (TokenValue!1196) Bool)

(assert (=> b!596227 (= e!360882 (inv!16 (value!38270 token!491)))))

(declare-fun b!596228 () Bool)

(declare-fun e!360884 () Bool)

(declare-fun inv!15 (TokenValue!1196) Bool)

(assert (=> b!596228 (= e!360884 (inv!15 (value!38270 token!491)))))

(declare-fun d!209656 () Bool)

(declare-fun c!110946 () Bool)

(assert (=> d!209656 (= c!110946 (is-IntegerValue!3588 (value!38270 token!491)))))

(assert (=> d!209656 (= (inv!21 (value!38270 token!491)) e!360882)))

(declare-fun b!596229 () Bool)

(declare-fun res!257444 () Bool)

(assert (=> b!596229 (=> res!257444 e!360884)))

(assert (=> b!596229 (= res!257444 (not (is-IntegerValue!3590 (value!38270 token!491))))))

(assert (=> b!596229 (= e!360883 e!360884)))

(declare-fun b!596230 () Bool)

(assert (=> b!596230 (= e!360882 e!360883)))

(declare-fun c!110947 () Bool)

(assert (=> b!596230 (= c!110947 (is-IntegerValue!3589 (value!38270 token!491)))))

(assert (= (and d!209656 c!110946) b!596227))

(assert (= (and d!209656 (not c!110946)) b!596230))

(assert (= (and b!596230 c!110947) b!596226))

(assert (= (and b!596230 (not c!110947)) b!596229))

(assert (= (and b!596229 (not res!257444)) b!596228))

(declare-fun m!859105 () Bool)

(assert (=> b!596226 m!859105))

(declare-fun m!859107 () Bool)

(assert (=> b!596227 m!859107))

(declare-fun m!859109 () Bool)

(assert (=> b!596228 m!859109))

(assert (=> b!595942 d!209656))

(declare-fun d!209660 () Bool)

(assert (=> d!209660 (= (get!2273 lt!253129) (v!16409 lt!253129))))

(assert (=> b!595921 d!209660))

(declare-fun d!209664 () Bool)

(assert (=> d!209664 (= (isEmpty!4279 input!2705) (is-Nil!5927 input!2705))))

(assert (=> b!595934 d!209664))

(declare-fun b!596242 () Bool)

(declare-fun e!360887 () Bool)

(declare-fun tp!185867 () Bool)

(declare-fun tp!185870 () Bool)

(assert (=> b!596242 (= e!360887 (and tp!185867 tp!185870))))

(assert (=> b!595922 (= tp!185818 e!360887)))

(declare-fun b!596244 () Bool)

(declare-fun tp!185869 () Bool)

(declare-fun tp!185866 () Bool)

(assert (=> b!596244 (= e!360887 (and tp!185869 tp!185866))))

(declare-fun b!596243 () Bool)

(declare-fun tp!185868 () Bool)

(assert (=> b!596243 (= e!360887 tp!185868)))

(declare-fun b!596241 () Bool)

(assert (=> b!596241 (= e!360887 tp_is_empty!3367)))

(assert (= (and b!595922 (is-ElementMatch!1506 (regex!1172 (rule!1942 token!491)))) b!596241))

(assert (= (and b!595922 (is-Concat!2702 (regex!1172 (rule!1942 token!491)))) b!596242))

(assert (= (and b!595922 (is-Star!1506 (regex!1172 (rule!1942 token!491)))) b!596243))

(assert (= (and b!595922 (is-Union!1506 (regex!1172 (rule!1942 token!491)))) b!596244))

(declare-fun b!596249 () Bool)

(declare-fun e!360890 () Bool)

(declare-fun tp!185873 () Bool)

(assert (=> b!596249 (= e!360890 (and tp_is_empty!3367 tp!185873))))

(assert (=> b!595928 (= tp!185815 e!360890)))

(assert (= (and b!595928 (is-Cons!5927 (t!79422 input!2705))) b!596249))

(declare-fun b!596250 () Bool)

(declare-fun e!360891 () Bool)

(declare-fun tp!185874 () Bool)

(assert (=> b!596250 (= e!360891 (and tp_is_empty!3367 tp!185874))))

(assert (=> b!595942 (= tp!185811 e!360891)))

(assert (= (and b!595942 (is-Cons!5927 (originalCharacters!1211 token!491))) b!596250))

(declare-fun b!596252 () Bool)

(declare-fun e!360892 () Bool)

(declare-fun tp!185876 () Bool)

(declare-fun tp!185879 () Bool)

(assert (=> b!596252 (= e!360892 (and tp!185876 tp!185879))))

(assert (=> b!595937 (= tp!185814 e!360892)))

(declare-fun b!596254 () Bool)

(declare-fun tp!185878 () Bool)

(declare-fun tp!185875 () Bool)

(assert (=> b!596254 (= e!360892 (and tp!185878 tp!185875))))

(declare-fun b!596253 () Bool)

(declare-fun tp!185877 () Bool)

(assert (=> b!596253 (= e!360892 tp!185877)))

(declare-fun b!596251 () Bool)

(assert (=> b!596251 (= e!360892 tp_is_empty!3367)))

(assert (= (and b!595937 (is-ElementMatch!1506 (regex!1172 (h!11330 rules!3103)))) b!596251))

(assert (= (and b!595937 (is-Concat!2702 (regex!1172 (h!11330 rules!3103)))) b!596252))

(assert (= (and b!595937 (is-Star!1506 (regex!1172 (h!11330 rules!3103)))) b!596253))

(assert (= (and b!595937 (is-Union!1506 (regex!1172 (h!11330 rules!3103)))) b!596254))

(declare-fun b!596268 () Bool)

(declare-fun b_free!16869 () Bool)

(declare-fun b_next!16885 () Bool)

(assert (=> b!596268 (= b_free!16869 (not b_next!16885))))

(declare-fun tb!52047 () Bool)

(declare-fun t!79453 () Bool)

(assert (=> (and b!596268 (= (toValue!2063 (transformation!1172 (h!11330 (t!79424 rules!3103)))) (toValue!2063 (transformation!1172 (rule!1942 token!491)))) t!79453) tb!52047))

(declare-fun result!58484 () Bool)

(assert (= result!58484 result!58458))

(assert (=> d!209566 t!79453))

(declare-fun t!79455 () Bool)

(declare-fun tb!52049 () Bool)

(assert (=> (and b!596268 (= (toValue!2063 (transformation!1172 (h!11330 (t!79424 rules!3103)))) (toValue!2063 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132)))))) t!79455) tb!52049))

(declare-fun result!58486 () Bool)

(assert (= result!58486 result!58470))

(assert (=> d!209610 t!79455))

(declare-fun b_and!58839 () Bool)

(declare-fun tp!185888 () Bool)

(assert (=> b!596268 (= tp!185888 (and (=> t!79453 result!58484) (=> t!79455 result!58486) b_and!58839))))

(declare-fun b_free!16871 () Bool)

(declare-fun b_next!16887 () Bool)

(assert (=> b!596268 (= b_free!16871 (not b_next!16887))))

(declare-fun t!79457 () Bool)

(declare-fun tb!52051 () Bool)

(assert (=> (and b!596268 (= (toChars!1922 (transformation!1172 (h!11330 (t!79424 rules!3103)))) (toChars!1922 (transformation!1172 (rule!1942 (_1!3683 (v!16409 lt!253132)))))) t!79457) tb!52051))

(declare-fun result!58488 () Bool)

(assert (= result!58488 result!58464))

(assert (=> d!209570 t!79457))

(declare-fun tb!52053 () Bool)

(declare-fun t!79459 () Bool)

(assert (=> (and b!596268 (= (toChars!1922 (transformation!1172 (h!11330 (t!79424 rules!3103)))) (toChars!1922 (transformation!1172 (rule!1942 token!491)))) t!79459) tb!52053))

(declare-fun result!58490 () Bool)

(assert (= result!58490 result!58474))

(assert (=> b!596197 t!79459))

(assert (=> d!209654 t!79459))

(declare-fun b_and!58841 () Bool)

(declare-fun tp!185891 () Bool)

(assert (=> b!596268 (= tp!185891 (and (=> t!79457 result!58488) (=> t!79459 result!58490) b_and!58841))))

(declare-fun e!360907 () Bool)

(assert (=> b!596268 (= e!360907 (and tp!185888 tp!185891))))

(declare-fun tp!185889 () Bool)

(declare-fun e!360906 () Bool)

(declare-fun b!596267 () Bool)

(assert (=> b!596267 (= e!360906 (and tp!185889 (inv!7511 (tag!1434 (h!11330 (t!79424 rules!3103)))) (inv!7514 (transformation!1172 (h!11330 (t!79424 rules!3103)))) e!360907))))

(declare-fun b!596266 () Bool)

(declare-fun e!360905 () Bool)

(declare-fun tp!185890 () Bool)

(assert (=> b!596266 (= e!360905 (and e!360906 tp!185890))))

(assert (=> b!595932 (= tp!185816 e!360905)))

(assert (= b!596267 b!596268))

(assert (= b!596266 b!596267))

(assert (= (and b!595932 (is-Cons!5929 (t!79424 rules!3103))) b!596266))

(declare-fun m!859115 () Bool)

(assert (=> b!596267 m!859115))

(declare-fun m!859117 () Bool)

(assert (=> b!596267 m!859117))

(declare-fun b!596269 () Bool)

(declare-fun e!360908 () Bool)

(declare-fun tp!185892 () Bool)

(assert (=> b!596269 (= e!360908 (and tp_is_empty!3367 tp!185892))))

(assert (=> b!595923 (= tp!185812 e!360908)))

(assert (= (and b!595923 (is-Cons!5927 (t!79422 suffix!1342))) b!596269))

(declare-fun b_lambda!23495 () Bool)

(assert (= b_lambda!23493 (or (and b!595935 b_free!16855) (and b!595936 b_free!16859 (= (toChars!1922 (transformation!1172 (h!11330 rules!3103))) (toChars!1922 (transformation!1172 (rule!1942 token!491))))) (and b!596268 b_free!16871 (= (toChars!1922 (transformation!1172 (h!11330 (t!79424 rules!3103)))) (toChars!1922 (transformation!1172 (rule!1942 token!491))))) b_lambda!23495)))

(declare-fun b_lambda!23497 () Bool)

(assert (= b_lambda!23491 (or (and b!595935 b_free!16855) (and b!595936 b_free!16859 (= (toChars!1922 (transformation!1172 (h!11330 rules!3103))) (toChars!1922 (transformation!1172 (rule!1942 token!491))))) (and b!596268 b_free!16871 (= (toChars!1922 (transformation!1172 (h!11330 (t!79424 rules!3103)))) (toChars!1922 (transformation!1172 (rule!1942 token!491))))) b_lambda!23497)))

(declare-fun b_lambda!23499 () Bool)

(assert (= b_lambda!23485 (or (and b!595935 b_free!16853) (and b!595936 b_free!16857 (= (toValue!2063 (transformation!1172 (h!11330 rules!3103))) (toValue!2063 (transformation!1172 (rule!1942 token!491))))) (and b!596268 b_free!16869 (= (toValue!2063 (transformation!1172 (h!11330 (t!79424 rules!3103)))) (toValue!2063 (transformation!1172 (rule!1942 token!491))))) b_lambda!23499)))

(push 1)

(assert (not b!596082))

(assert (not b!596043))

(assert (not b_lambda!23499))

(assert (not b!596175))

(assert (not tb!52031))

(assert (not b!596253))

(assert (not b!596200))

(assert (not d!209614))

(assert (not b!596102))

(assert (not b!596071))

(assert (not d!209572))

(assert (not b!596166))

(assert (not b!596187))

(assert (not b!596227))

(assert (not b_next!16887))

(assert (not tb!52039))

(assert (not b!596075))

(assert (not b!596111))

(assert (not d!209604))

(assert (not d!209558))

(assert (not d!209556))

(assert (not d!209590))

(assert (not b!596096))

(assert (not b_lambda!23489))

(assert (not b!596243))

(assert (not d!209608))

(assert (not b!596069))

(assert (not b_next!16885))

(assert (not b!596250))

(assert (not b!596104))

(assert (not d!209612))

(assert (not b!596078))

(assert (not b!596110))

(assert (not b_next!16871))

(assert (not b!596053))

(assert (not b!596197))

(assert (not b_lambda!23497))

(assert (not b!596107))

(assert (not b!596242))

(assert (not tb!52035))

(assert (not bm!40407))

(assert (not d!209650))

(assert (not b!596058))

(assert (not b!596114))

(assert (not b!596244))

(assert (not d!209568))

(assert (not b!596098))

(assert (not b!596099))

(assert (not b!596167))

(assert (not b!596113))

(assert (not b_next!16873))

(assert (not b!596103))

(assert (not d!209638))

(assert (not b!596249))

(assert (not d!209588))

(assert (not b!596092))

(assert b_and!58839)

(assert (not b!596037))

(assert (not b_next!16875))

(assert (not b!596109))

(assert (not b!596199))

(assert (not b!596046))

(assert (not b_next!16869))

(assert (not b!596266))

(assert (not d!209578))

(assert (not b!596269))

(assert (not tb!52043))

(assert (not d!209634))

(assert (not b!596105))

(assert (not b!596117))

(assert (not b!596180))

(assert (not b!596070))

(assert b_and!58841)

(assert (not d!209574))

(assert b_and!58827)

(assert (not b!596093))

(assert (not b!596254))

(assert (not b!596228))

(assert (not bm!40406))

(assert (not b!596179))

(assert (not b!596177))

(assert b_and!58835)

(assert (not d!209598))

(assert tp_is_empty!3367)

(assert b_and!58837)

(assert (not b!596173))

(assert (not b!596169))

(assert (not d!209564))

(assert (not d!209570))

(assert (not d!209596))

(assert (not b!596171))

(assert b_and!58829)

(assert (not d!209584))

(assert (not b!596081))

(assert (not b!596172))

(assert (not b!596226))

(assert (not d!209652))

(assert (not b!596097))

(assert (not d!209654))

(assert (not b!596168))

(assert (not b!596033))

(assert (not b!596198))

(assert (not b!596080))

(assert (not b_lambda!23495))

(assert (not b!596072))

(assert (not d!209606))

(assert (not b!596267))

(assert (not d!209618))

(assert (not d!209602))

(assert (not b!596163))

(assert (not d!209552))

(assert (not b!596178))

(assert (not d!209582))

(assert (not d!209628))

(assert (not d!209586))

(assert (not b!596176))

(assert (not b!596170))

(assert (not d!209640))

(assert (not d!209636))

(assert (not b!596164))

(assert (not d!209624))

(assert (not d!209594))

(assert (not b!596186))

(assert (not b!596252))

(assert (not b_lambda!23487))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!16887))

(assert (not b_next!16885))

(assert (not b_next!16871))

(assert (not b_next!16873))

(assert (not b_next!16869))

(assert b_and!58829)

(assert (not b_next!16875))

(assert b_and!58839)

(assert b_and!58841)

(assert b_and!58827)

(assert b_and!58835)

(assert b_and!58837)

(check-sat)

(pop 1)

