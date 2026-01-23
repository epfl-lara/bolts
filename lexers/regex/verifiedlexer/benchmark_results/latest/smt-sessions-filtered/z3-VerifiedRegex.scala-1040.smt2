; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52072 () Bool)

(assert start!52072)

(declare-fun b!565105 () Bool)

(declare-fun b_free!15717 () Bool)

(declare-fun b_next!15733 () Bool)

(assert (=> b!565105 (= b_free!15717 (not b_next!15733))))

(declare-fun tp!178302 () Bool)

(declare-fun b_and!55091 () Bool)

(assert (=> b!565105 (= tp!178302 b_and!55091)))

(declare-fun b_free!15719 () Bool)

(declare-fun b_next!15735 () Bool)

(assert (=> b!565105 (= b_free!15719 (not b_next!15735))))

(declare-fun tp!178304 () Bool)

(declare-fun b_and!55093 () Bool)

(assert (=> b!565105 (= tp!178304 b_and!55093)))

(declare-fun b!565100 () Bool)

(declare-fun b_free!15721 () Bool)

(declare-fun b_next!15737 () Bool)

(assert (=> b!565100 (= b_free!15721 (not b_next!15737))))

(declare-fun tp!178301 () Bool)

(declare-fun b_and!55095 () Bool)

(assert (=> b!565100 (= tp!178301 b_and!55095)))

(declare-fun b_free!15723 () Bool)

(declare-fun b_next!15739 () Bool)

(assert (=> b!565100 (= b_free!15723 (not b_next!15739))))

(declare-fun tp!178295 () Bool)

(declare-fun b_and!55097 () Bool)

(assert (=> b!565100 (= tp!178295 b_and!55097)))

(declare-fun e!341403 () Bool)

(declare-fun tp!178296 () Bool)

(declare-fun b!565079 () Bool)

(declare-datatypes ((C!3724 0))(
  ( (C!3725 (val!2088 Int)) )
))
(declare-datatypes ((Regex!1401 0))(
  ( (ElementMatch!1401 (c!106165 C!3724)) (Concat!2492 (regOne!3314 Regex!1401) (regTwo!3314 Regex!1401)) (EmptyExpr!1401) (Star!1401 (reg!1730 Regex!1401)) (EmptyLang!1401) (Union!1401 (regOne!3315 Regex!1401) (regTwo!3315 Regex!1401)) )
))
(declare-datatypes ((List!5568 0))(
  ( (Nil!5558) (Cons!5558 (h!10959 (_ BitVec 16)) (t!76251 List!5568)) )
))
(declare-datatypes ((TokenValue!1091 0))(
  ( (FloatLiteralValue!2182 (text!8082 List!5568)) (TokenValueExt!1090 (__x!4080 Int)) (Broken!5455 (value!35250 List!5568)) (Object!1100) (End!1091) (Def!1091) (Underscore!1091) (Match!1091) (Else!1091) (Error!1091) (Case!1091) (If!1091) (Extends!1091) (Abstract!1091) (Class!1091) (Val!1091) (DelimiterValue!2182 (del!1151 List!5568)) (KeywordValue!1097 (value!35251 List!5568)) (CommentValue!2182 (value!35252 List!5568)) (WhitespaceValue!2182 (value!35253 List!5568)) (IndentationValue!1091 (value!35254 List!5568)) (String!7198) (Int32!1091) (Broken!5456 (value!35255 List!5568)) (Boolean!1092) (Unit!9938) (OperatorValue!1094 (op!1151 List!5568)) (IdentifierValue!2182 (value!35256 List!5568)) (IdentifierValue!2183 (value!35257 List!5568)) (WhitespaceValue!2183 (value!35258 List!5568)) (True!2182) (False!2182) (Broken!5457 (value!35259 List!5568)) (Broken!5458 (value!35260 List!5568)) (True!2183) (RightBrace!1091) (RightBracket!1091) (Colon!1091) (Null!1091) (Comma!1091) (LeftBracket!1091) (False!2183) (LeftBrace!1091) (ImaginaryLiteralValue!1091 (text!8083 List!5568)) (StringLiteralValue!3273 (value!35261 List!5568)) (EOFValue!1091 (value!35262 List!5568)) (IdentValue!1091 (value!35263 List!5568)) (DelimiterValue!2183 (value!35264 List!5568)) (DedentValue!1091 (value!35265 List!5568)) (NewLineValue!1091 (value!35266 List!5568)) (IntegerValue!3273 (value!35267 (_ BitVec 32)) (text!8084 List!5568)) (IntegerValue!3274 (value!35268 Int) (text!8085 List!5568)) (Times!1091) (Or!1091) (Equal!1091) (Minus!1091) (Broken!5459 (value!35269 List!5568)) (And!1091) (Div!1091) (LessEqual!1091) (Mod!1091) (Concat!2493) (Not!1091) (Plus!1091) (SpaceValue!1091 (value!35270 List!5568)) (IntegerValue!3275 (value!35271 Int) (text!8086 List!5568)) (StringLiteralValue!3274 (text!8087 List!5568)) (FloatLiteralValue!2183 (text!8088 List!5568)) (BytesLiteralValue!1091 (value!35272 List!5568)) (CommentValue!2183 (value!35273 List!5568)) (StringLiteralValue!3275 (value!35274 List!5568)) (ErrorTokenValue!1091 (msg!1152 List!5568)) )
))
(declare-datatypes ((String!7199 0))(
  ( (String!7200 (value!35275 String)) )
))
(declare-datatypes ((List!5569 0))(
  ( (Nil!5559) (Cons!5559 (h!10960 C!3724) (t!76252 List!5569)) )
))
(declare-datatypes ((IArray!3569 0))(
  ( (IArray!3570 (innerList!1842 List!5569)) )
))
(declare-datatypes ((Conc!1784 0))(
  ( (Node!1784 (left!4562 Conc!1784) (right!4892 Conc!1784) (csize!3798 Int) (cheight!1995 Int)) (Leaf!2825 (xs!4421 IArray!3569) (csize!3799 Int)) (Empty!1784) )
))
(declare-datatypes ((BalanceConc!3576 0))(
  ( (BalanceConc!3577 (c!106166 Conc!1784)) )
))
(declare-datatypes ((TokenValueInjection!1950 0))(
  ( (TokenValueInjection!1951 (toValue!1922 Int) (toChars!1781 Int)) )
))
(declare-datatypes ((Rule!1934 0))(
  ( (Rule!1935 (regex!1067 Regex!1401) (tag!1329 String!7199) (isSeparator!1067 Bool) (transformation!1067 TokenValueInjection!1950)) )
))
(declare-datatypes ((Token!1870 0))(
  ( (Token!1871 (value!35276 TokenValue!1091) (rule!1803 Rule!1934) (size!4432 Int) (originalCharacters!1106 List!5569)) )
))
(declare-fun token!491 () Token!1870)

(declare-fun e!341411 () Bool)

(declare-fun inv!21 (TokenValue!1091) Bool)

(assert (=> b!565079 (= e!341411 (and (inv!21 (value!35276 token!491)) e!341403 tp!178296))))

(declare-fun b!565080 () Bool)

(declare-fun e!341405 () Bool)

(declare-fun e!341406 () Bool)

(assert (=> b!565080 (= e!341405 e!341406)))

(declare-fun res!241987 () Bool)

(assert (=> b!565080 (=> (not res!241987) (not e!341406))))

(declare-datatypes ((tuple2!6560 0))(
  ( (tuple2!6561 (_1!3544 Token!1870) (_2!3544 List!5569)) )
))
(declare-datatypes ((Option!1418 0))(
  ( (None!1417) (Some!1417 (v!16262 tuple2!6560)) )
))
(declare-fun lt!237828 () Option!1418)

(declare-fun isDefined!1229 (Option!1418) Bool)

(assert (=> b!565080 (= res!241987 (isDefined!1229 lt!237828))))

(declare-fun b!565081 () Bool)

(declare-fun res!241999 () Bool)

(declare-fun e!341407 () Bool)

(assert (=> b!565081 (=> res!241999 e!341407)))

(declare-fun lt!237818 () List!5569)

(declare-fun input!2705 () List!5569)

(declare-fun isPrefix!701 (List!5569 List!5569) Bool)

(assert (=> b!565081 (= res!241999 (not (isPrefix!701 lt!237818 input!2705)))))

(declare-fun lt!237821 () Int)

(declare-fun e!341413 () Bool)

(declare-fun b!565082 () Bool)

(declare-fun lt!237815 () TokenValue!1091)

(declare-fun lt!237833 () List!5569)

(declare-fun lt!237826 () tuple2!6560)

(declare-fun lt!237831 () List!5569)

(assert (=> b!565082 (= e!341413 (and (= (size!4432 (_1!3544 (v!16262 lt!237828))) lt!237821) (= (originalCharacters!1106 (_1!3544 (v!16262 lt!237828))) lt!237831) (= lt!237826 (tuple2!6561 (Token!1871 lt!237815 (rule!1803 (_1!3544 (v!16262 lt!237828))) lt!237821 lt!237831) lt!237833))))))

(declare-fun b!565083 () Bool)

(declare-fun e!341409 () Bool)

(declare-fun e!341418 () Bool)

(assert (=> b!565083 (= e!341409 (not e!341418))))

(declare-fun res!242001 () Bool)

(assert (=> b!565083 (=> res!242001 e!341418)))

(declare-fun lt!237813 () List!5569)

(assert (=> b!565083 (= res!242001 (not (isPrefix!701 input!2705 lt!237813)))))

(assert (=> b!565083 (isPrefix!701 lt!237818 lt!237813)))

(declare-datatypes ((Unit!9939 0))(
  ( (Unit!9940) )
))
(declare-fun lt!237819 () Unit!9939)

(declare-fun suffix!1342 () List!5569)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!548 (List!5569 List!5569) Unit!9939)

(assert (=> b!565083 (= lt!237819 (lemmaConcatTwoListThenFirstIsPrefix!548 lt!237818 suffix!1342))))

(declare-fun lt!237824 () List!5569)

(assert (=> b!565083 (isPrefix!701 input!2705 lt!237824)))

(declare-fun lt!237836 () Unit!9939)

(assert (=> b!565083 (= lt!237836 (lemmaConcatTwoListThenFirstIsPrefix!548 input!2705 suffix!1342))))

(assert (=> b!565083 e!341413))

(declare-fun res!241996 () Bool)

(assert (=> b!565083 (=> (not res!241996) (not e!341413))))

(assert (=> b!565083 (= res!241996 (= (value!35276 (_1!3544 (v!16262 lt!237828))) lt!237815))))

(declare-fun apply!1332 (TokenValueInjection!1950 BalanceConc!3576) TokenValue!1091)

(declare-fun seqFromList!1255 (List!5569) BalanceConc!3576)

(assert (=> b!565083 (= lt!237815 (apply!1332 (transformation!1067 (rule!1803 (_1!3544 (v!16262 lt!237828)))) (seqFromList!1255 lt!237831)))))

(declare-fun lt!237812 () Unit!9939)

(declare-fun lemmaInv!203 (TokenValueInjection!1950) Unit!9939)

(assert (=> b!565083 (= lt!237812 (lemmaInv!203 (transformation!1067 (rule!1803 token!491))))))

(declare-fun lt!237811 () Unit!9939)

(assert (=> b!565083 (= lt!237811 (lemmaInv!203 (transformation!1067 (rule!1803 (_1!3544 (v!16262 lt!237828))))))))

(declare-datatypes ((LexerInterface!953 0))(
  ( (LexerInterfaceExt!950 (__x!4081 Int)) (Lexer!951) )
))
(declare-fun thiss!22590 () LexerInterface!953)

(declare-fun ruleValid!277 (LexerInterface!953 Rule!1934) Bool)

(assert (=> b!565083 (ruleValid!277 thiss!22590 (rule!1803 token!491))))

(declare-datatypes ((List!5570 0))(
  ( (Nil!5560) (Cons!5560 (h!10961 Rule!1934) (t!76253 List!5570)) )
))
(declare-fun rules!3103 () List!5570)

(declare-fun lt!237809 () Unit!9939)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!134 (LexerInterface!953 Rule!1934 List!5570) Unit!9939)

(assert (=> b!565083 (= lt!237809 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!134 thiss!22590 (rule!1803 token!491) rules!3103))))

(assert (=> b!565083 (ruleValid!277 thiss!22590 (rule!1803 (_1!3544 (v!16262 lt!237828))))))

(declare-fun lt!237814 () Unit!9939)

(assert (=> b!565083 (= lt!237814 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!134 thiss!22590 (rule!1803 (_1!3544 (v!16262 lt!237828))) rules!3103))))

(assert (=> b!565083 (isPrefix!701 input!2705 input!2705)))

(declare-fun lt!237827 () Unit!9939)

(declare-fun lemmaIsPrefixRefl!439 (List!5569 List!5569) Unit!9939)

(assert (=> b!565083 (= lt!237827 (lemmaIsPrefixRefl!439 input!2705 input!2705))))

(assert (=> b!565083 (= (_2!3544 (v!16262 lt!237828)) lt!237833)))

(declare-fun lt!237834 () Unit!9939)

(declare-fun lemmaSamePrefixThenSameSuffix!424 (List!5569 List!5569 List!5569 List!5569 List!5569) Unit!9939)

(assert (=> b!565083 (= lt!237834 (lemmaSamePrefixThenSameSuffix!424 lt!237831 (_2!3544 (v!16262 lt!237828)) lt!237831 lt!237833 input!2705))))

(declare-fun getSuffix!220 (List!5569 List!5569) List!5569)

(assert (=> b!565083 (= lt!237833 (getSuffix!220 input!2705 lt!237831))))

(declare-fun lt!237829 () List!5569)

(assert (=> b!565083 (isPrefix!701 lt!237831 lt!237829)))

(declare-fun ++!1555 (List!5569 List!5569) List!5569)

(assert (=> b!565083 (= lt!237829 (++!1555 lt!237831 (_2!3544 (v!16262 lt!237828))))))

(declare-fun lt!237822 () Unit!9939)

(assert (=> b!565083 (= lt!237822 (lemmaConcatTwoListThenFirstIsPrefix!548 lt!237831 (_2!3544 (v!16262 lt!237828))))))

(declare-fun lt!237837 () Unit!9939)

(declare-fun lemmaCharactersSize!134 (Token!1870) Unit!9939)

(assert (=> b!565083 (= lt!237837 (lemmaCharactersSize!134 token!491))))

(declare-fun lt!237816 () Unit!9939)

(assert (=> b!565083 (= lt!237816 (lemmaCharactersSize!134 (_1!3544 (v!16262 lt!237828))))))

(declare-fun lt!237838 () Unit!9939)

(declare-fun e!341420 () Unit!9939)

(assert (=> b!565083 (= lt!237838 e!341420)))

(declare-fun c!106164 () Bool)

(declare-fun lt!237830 () Int)

(assert (=> b!565083 (= c!106164 (> lt!237821 lt!237830))))

(declare-fun size!4433 (List!5569) Int)

(assert (=> b!565083 (= lt!237830 (size!4433 lt!237818))))

(assert (=> b!565083 (= lt!237821 (size!4433 lt!237831))))

(declare-fun list!2307 (BalanceConc!3576) List!5569)

(declare-fun charsOf!696 (Token!1870) BalanceConc!3576)

(assert (=> b!565083 (= lt!237831 (list!2307 (charsOf!696 (_1!3544 (v!16262 lt!237828)))))))

(assert (=> b!565083 (= lt!237828 (Some!1417 lt!237826))))

(assert (=> b!565083 (= lt!237826 (tuple2!6561 (_1!3544 (v!16262 lt!237828)) (_2!3544 (v!16262 lt!237828))))))

(declare-fun lt!237820 () Unit!9939)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!144 (List!5569 List!5569 List!5569 List!5569) Unit!9939)

(assert (=> b!565083 (= lt!237820 (lemmaConcatSameAndSameSizesThenSameLists!144 lt!237818 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!565084 () Bool)

(declare-fun res!241991 () Bool)

(declare-fun e!341412 () Bool)

(assert (=> b!565084 (=> (not res!241991) (not e!341412))))

(declare-fun rulesInvariant!916 (LexerInterface!953 List!5570) Bool)

(assert (=> b!565084 (= res!241991 (rulesInvariant!916 thiss!22590 rules!3103))))

(declare-fun b!565085 () Bool)

(declare-fun e!341423 () Bool)

(declare-fun tp_is_empty!3157 () Bool)

(declare-fun tp!178300 () Bool)

(assert (=> b!565085 (= e!341423 (and tp_is_empty!3157 tp!178300))))

(declare-fun b!565086 () Bool)

(declare-fun get!2115 (Option!1418) tuple2!6560)

(assert (=> b!565086 (= e!341406 (= (_1!3544 (get!2115 lt!237828)) (_1!3544 (v!16262 lt!237828))))))

(declare-fun b!565087 () Bool)

(declare-fun e!341415 () Bool)

(declare-fun e!341404 () Bool)

(declare-fun tp!178299 () Bool)

(declare-fun inv!6983 (String!7199) Bool)

(declare-fun inv!6986 (TokenValueInjection!1950) Bool)

(assert (=> b!565087 (= e!341415 (and tp!178299 (inv!6983 (tag!1329 (h!10961 rules!3103))) (inv!6986 (transformation!1067 (h!10961 rules!3103))) e!341404))))

(declare-fun b!565088 () Bool)

(declare-fun e!341400 () Bool)

(assert (=> b!565088 (= e!341400 e!341405)))

(declare-fun res!241998 () Bool)

(assert (=> b!565088 (=> res!241998 e!341405)))

(assert (=> b!565088 (= res!241998 (>= lt!237821 lt!237830))))

(declare-fun b!565089 () Bool)

(declare-fun e!341414 () Bool)

(declare-fun e!341408 () Bool)

(assert (=> b!565089 (= e!341414 e!341408)))

(declare-fun res!242000 () Bool)

(assert (=> b!565089 (=> (not res!242000) (not e!341408))))

(declare-fun lt!237810 () Option!1418)

(assert (=> b!565089 (= res!242000 (isDefined!1229 lt!237810))))

(declare-fun maxPrefix!651 (LexerInterface!953 List!5570 List!5569) Option!1418)

(assert (=> b!565089 (= lt!237810 (maxPrefix!651 thiss!22590 rules!3103 lt!237824))))

(assert (=> b!565089 (= lt!237824 (++!1555 input!2705 suffix!1342))))

(declare-fun b!565090 () Bool)

(declare-fun e!341421 () Bool)

(assert (=> b!565090 (= e!341408 e!341421)))

(declare-fun res!241984 () Bool)

(assert (=> b!565090 (=> (not res!241984) (not e!341421))))

(declare-fun lt!237825 () tuple2!6560)

(assert (=> b!565090 (= res!241984 (and (= (_1!3544 lt!237825) token!491) (= (_2!3544 lt!237825) suffix!1342)))))

(assert (=> b!565090 (= lt!237825 (get!2115 lt!237810))))

(declare-fun b!565091 () Bool)

(assert (=> b!565091 (= e!341407 true)))

(declare-fun lt!237835 () Bool)

(assert (=> b!565091 (= lt!237835 (isPrefix!701 lt!237831 input!2705))))

(declare-fun tp!178298 () Bool)

(declare-fun e!341401 () Bool)

(declare-fun b!565092 () Bool)

(assert (=> b!565092 (= e!341403 (and tp!178298 (inv!6983 (tag!1329 (rule!1803 token!491))) (inv!6986 (transformation!1067 (rule!1803 token!491))) e!341401))))

(declare-fun b!565093 () Bool)

(declare-fun res!241983 () Bool)

(assert (=> b!565093 (=> res!241983 e!341407)))

(declare-fun contains!1301 (List!5570 Rule!1934) Bool)

(assert (=> b!565093 (= res!241983 (not (contains!1301 rules!3103 (rule!1803 token!491))))))

(declare-fun b!565094 () Bool)

(declare-fun e!341422 () Bool)

(assert (=> b!565094 (= e!341422 e!341409)))

(declare-fun res!241980 () Bool)

(assert (=> b!565094 (=> (not res!241980) (not e!341409))))

(assert (=> b!565094 (= res!241980 (= lt!237813 lt!237824))))

(assert (=> b!565094 (= lt!237813 (++!1555 lt!237818 suffix!1342))))

(declare-fun b!565095 () Bool)

(declare-fun res!241982 () Bool)

(assert (=> b!565095 (=> res!241982 e!341407)))

(assert (=> b!565095 (= res!241982 (not (= lt!237829 input!2705)))))

(declare-fun lt!237832 () TokenValue!1091)

(declare-fun lt!237808 () List!5569)

(declare-fun b!565096 () Bool)

(declare-fun e!341402 () Bool)

(assert (=> b!565096 (= e!341402 (and (= (size!4432 token!491) lt!237830) (= (originalCharacters!1106 token!491) lt!237818) (= (tuple2!6561 token!491 suffix!1342) (tuple2!6561 (Token!1871 lt!237832 (rule!1803 token!491) lt!237830 lt!237818) lt!237808))))))

(declare-fun b!565097 () Bool)

(declare-fun res!241994 () Bool)

(assert (=> b!565097 (=> res!241994 e!341407)))

(declare-fun matchR!548 (Regex!1401 List!5569) Bool)

(assert (=> b!565097 (= res!241994 (not (matchR!548 (regex!1067 (rule!1803 token!491)) input!2705)))))

(declare-fun b!565098 () Bool)

(assert (=> b!565098 (= e!341418 e!341407)))

(declare-fun res!241986 () Bool)

(assert (=> b!565098 (=> res!241986 e!341407)))

(assert (=> b!565098 (= res!241986 (>= lt!237821 lt!237830))))

(assert (=> b!565098 e!341400))

(declare-fun res!241992 () Bool)

(assert (=> b!565098 (=> (not res!241992) (not e!341400))))

(declare-fun maxPrefixOneRule!352 (LexerInterface!953 Rule!1934 List!5569) Option!1418)

(assert (=> b!565098 (= res!241992 (= (maxPrefixOneRule!352 thiss!22590 (rule!1803 token!491) lt!237824) (Some!1417 (tuple2!6561 (Token!1871 lt!237832 (rule!1803 token!491) lt!237830 lt!237818) suffix!1342))))))

(declare-fun lt!237823 () Unit!9939)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!102 (LexerInterface!953 List!5570 List!5569 List!5569 List!5569 Rule!1934) Unit!9939)

(assert (=> b!565098 (= lt!237823 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!102 thiss!22590 rules!3103 lt!237818 lt!237824 suffix!1342 (rule!1803 token!491)))))

(assert (=> b!565098 (= (maxPrefixOneRule!352 thiss!22590 (rule!1803 (_1!3544 (v!16262 lt!237828))) input!2705) (Some!1417 (tuple2!6561 (Token!1871 lt!237815 (rule!1803 (_1!3544 (v!16262 lt!237828))) lt!237821 lt!237831) (_2!3544 (v!16262 lt!237828)))))))

(declare-fun lt!237807 () Unit!9939)

(assert (=> b!565098 (= lt!237807 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!102 thiss!22590 rules!3103 lt!237831 input!2705 (_2!3544 (v!16262 lt!237828)) (rule!1803 (_1!3544 (v!16262 lt!237828)))))))

(assert (=> b!565098 e!341402))

(declare-fun res!241997 () Bool)

(assert (=> b!565098 (=> (not res!241997) (not e!341402))))

(assert (=> b!565098 (= res!241997 (= (value!35276 token!491) lt!237832))))

(assert (=> b!565098 (= lt!237832 (apply!1332 (transformation!1067 (rule!1803 token!491)) (seqFromList!1255 lt!237818)))))

(assert (=> b!565098 (= suffix!1342 lt!237808)))

(declare-fun lt!237817 () Unit!9939)

(assert (=> b!565098 (= lt!237817 (lemmaSamePrefixThenSameSuffix!424 lt!237818 suffix!1342 lt!237818 lt!237808 lt!237824))))

(assert (=> b!565098 (= lt!237808 (getSuffix!220 lt!237824 lt!237818))))

(declare-fun res!242002 () Bool)

(assert (=> start!52072 (=> (not res!242002) (not e!341412))))

(get-info :version)

(assert (=> start!52072 (= res!242002 ((_ is Lexer!951) thiss!22590))))

(assert (=> start!52072 e!341412))

(assert (=> start!52072 e!341423))

(declare-fun e!341399 () Bool)

(assert (=> start!52072 e!341399))

(declare-fun inv!6987 (Token!1870) Bool)

(assert (=> start!52072 (and (inv!6987 token!491) e!341411)))

(assert (=> start!52072 true))

(declare-fun e!341410 () Bool)

(assert (=> start!52072 e!341410))

(declare-fun b!565099 () Bool)

(assert (=> b!565099 (= e!341421 e!341422)))

(declare-fun res!241990 () Bool)

(assert (=> b!565099 (=> (not res!241990) (not e!341422))))

(assert (=> b!565099 (= res!241990 ((_ is Some!1417) lt!237828))))

(assert (=> b!565099 (= lt!237828 (maxPrefix!651 thiss!22590 rules!3103 input!2705))))

(assert (=> b!565100 (= e!341404 (and tp!178301 tp!178295))))

(declare-fun b!565101 () Bool)

(declare-fun res!241993 () Bool)

(assert (=> b!565101 (=> (not res!241993) (not e!341413))))

(assert (=> b!565101 (= res!241993 (= (size!4432 (_1!3544 (v!16262 lt!237828))) (size!4433 (originalCharacters!1106 (_1!3544 (v!16262 lt!237828))))))))

(declare-fun b!565102 () Bool)

(declare-fun res!241995 () Bool)

(assert (=> b!565102 (=> (not res!241995) (not e!341412))))

(declare-fun isEmpty!4013 (List!5570) Bool)

(assert (=> b!565102 (= res!241995 (not (isEmpty!4013 rules!3103)))))

(declare-fun b!565103 () Bool)

(declare-fun tp!178303 () Bool)

(assert (=> b!565103 (= e!341399 (and e!341415 tp!178303))))

(declare-fun b!565104 () Bool)

(declare-fun Unit!9941 () Unit!9939)

(assert (=> b!565104 (= e!341420 Unit!9941)))

(assert (=> b!565105 (= e!341401 (and tp!178302 tp!178304))))

(declare-fun b!565106 () Bool)

(assert (=> b!565106 (= e!341412 e!341414)))

(declare-fun res!241988 () Bool)

(assert (=> b!565106 (=> (not res!241988) (not e!341414))))

(assert (=> b!565106 (= res!241988 (= lt!237818 input!2705))))

(assert (=> b!565106 (= lt!237818 (list!2307 (charsOf!696 token!491)))))

(declare-fun b!565107 () Bool)

(declare-fun Unit!9942 () Unit!9939)

(assert (=> b!565107 (= e!341420 Unit!9942)))

(assert (=> b!565107 false))

(declare-fun b!565108 () Bool)

(declare-fun res!241985 () Bool)

(assert (=> b!565108 (=> res!241985 e!341407)))

(assert (=> b!565108 (= res!241985 (not (= (getSuffix!220 input!2705 input!2705) Nil!5559)))))

(declare-fun b!565109 () Bool)

(declare-fun res!241989 () Bool)

(assert (=> b!565109 (=> (not res!241989) (not e!341412))))

(declare-fun isEmpty!4014 (List!5569) Bool)

(assert (=> b!565109 (= res!241989 (not (isEmpty!4014 input!2705)))))

(declare-fun b!565110 () Bool)

(declare-fun res!241981 () Bool)

(assert (=> b!565110 (=> (not res!241981) (not e!341402))))

(assert (=> b!565110 (= res!241981 (= (size!4432 token!491) (size!4433 (originalCharacters!1106 token!491))))))

(declare-fun b!565111 () Bool)

(declare-fun tp!178297 () Bool)

(assert (=> b!565111 (= e!341410 (and tp_is_empty!3157 tp!178297))))

(assert (= (and start!52072 res!242002) b!565102))

(assert (= (and b!565102 res!241995) b!565084))

(assert (= (and b!565084 res!241991) b!565109))

(assert (= (and b!565109 res!241989) b!565106))

(assert (= (and b!565106 res!241988) b!565089))

(assert (= (and b!565089 res!242000) b!565090))

(assert (= (and b!565090 res!241984) b!565099))

(assert (= (and b!565099 res!241990) b!565094))

(assert (= (and b!565094 res!241980) b!565083))

(assert (= (and b!565083 c!106164) b!565107))

(assert (= (and b!565083 (not c!106164)) b!565104))

(assert (= (and b!565083 res!241996) b!565101))

(assert (= (and b!565101 res!241993) b!565082))

(assert (= (and b!565083 (not res!242001)) b!565098))

(assert (= (and b!565098 res!241997) b!565110))

(assert (= (and b!565110 res!241981) b!565096))

(assert (= (and b!565098 res!241992) b!565088))

(assert (= (and b!565088 (not res!241998)) b!565080))

(assert (= (and b!565080 res!241987) b!565086))

(assert (= (and b!565098 (not res!241986)) b!565093))

(assert (= (and b!565093 (not res!241983)) b!565097))

(assert (= (and b!565097 (not res!241994)) b!565081))

(assert (= (and b!565081 (not res!241999)) b!565108))

(assert (= (and b!565108 (not res!241985)) b!565095))

(assert (= (and b!565095 (not res!241982)) b!565091))

(assert (= (and start!52072 ((_ is Cons!5559) suffix!1342)) b!565085))

(assert (= b!565087 b!565100))

(assert (= b!565103 b!565087))

(assert (= (and start!52072 ((_ is Cons!5560) rules!3103)) b!565103))

(assert (= b!565092 b!565105))

(assert (= b!565079 b!565092))

(assert (= start!52072 b!565079))

(assert (= (and start!52072 ((_ is Cons!5559) input!2705)) b!565111))

(declare-fun m!818423 () Bool)

(assert (=> b!565081 m!818423))

(declare-fun m!818425 () Bool)

(assert (=> b!565079 m!818425))

(declare-fun m!818427 () Bool)

(assert (=> b!565101 m!818427))

(declare-fun m!818429 () Bool)

(assert (=> b!565089 m!818429))

(declare-fun m!818431 () Bool)

(assert (=> b!565089 m!818431))

(declare-fun m!818433 () Bool)

(assert (=> b!565089 m!818433))

(declare-fun m!818435 () Bool)

(assert (=> b!565110 m!818435))

(declare-fun m!818437 () Bool)

(assert (=> b!565083 m!818437))

(declare-fun m!818439 () Bool)

(assert (=> b!565083 m!818439))

(declare-fun m!818441 () Bool)

(assert (=> b!565083 m!818441))

(declare-fun m!818443 () Bool)

(assert (=> b!565083 m!818443))

(declare-fun m!818445 () Bool)

(assert (=> b!565083 m!818445))

(declare-fun m!818447 () Bool)

(assert (=> b!565083 m!818447))

(declare-fun m!818449 () Bool)

(assert (=> b!565083 m!818449))

(declare-fun m!818451 () Bool)

(assert (=> b!565083 m!818451))

(declare-fun m!818453 () Bool)

(assert (=> b!565083 m!818453))

(declare-fun m!818455 () Bool)

(assert (=> b!565083 m!818455))

(assert (=> b!565083 m!818445))

(declare-fun m!818457 () Bool)

(assert (=> b!565083 m!818457))

(declare-fun m!818459 () Bool)

(assert (=> b!565083 m!818459))

(declare-fun m!818461 () Bool)

(assert (=> b!565083 m!818461))

(declare-fun m!818463 () Bool)

(assert (=> b!565083 m!818463))

(declare-fun m!818465 () Bool)

(assert (=> b!565083 m!818465))

(declare-fun m!818467 () Bool)

(assert (=> b!565083 m!818467))

(declare-fun m!818469 () Bool)

(assert (=> b!565083 m!818469))

(declare-fun m!818471 () Bool)

(assert (=> b!565083 m!818471))

(declare-fun m!818473 () Bool)

(assert (=> b!565083 m!818473))

(assert (=> b!565083 m!818441))

(declare-fun m!818475 () Bool)

(assert (=> b!565083 m!818475))

(declare-fun m!818477 () Bool)

(assert (=> b!565083 m!818477))

(declare-fun m!818479 () Bool)

(assert (=> b!565083 m!818479))

(declare-fun m!818481 () Bool)

(assert (=> b!565083 m!818481))

(declare-fun m!818483 () Bool)

(assert (=> b!565083 m!818483))

(declare-fun m!818485 () Bool)

(assert (=> b!565083 m!818485))

(declare-fun m!818487 () Bool)

(assert (=> b!565083 m!818487))

(declare-fun m!818489 () Bool)

(assert (=> b!565083 m!818489))

(declare-fun m!818491 () Bool)

(assert (=> b!565109 m!818491))

(declare-fun m!818493 () Bool)

(assert (=> b!565097 m!818493))

(declare-fun m!818495 () Bool)

(assert (=> b!565106 m!818495))

(assert (=> b!565106 m!818495))

(declare-fun m!818497 () Bool)

(assert (=> b!565106 m!818497))

(declare-fun m!818499 () Bool)

(assert (=> b!565099 m!818499))

(declare-fun m!818501 () Bool)

(assert (=> b!565098 m!818501))

(declare-fun m!818503 () Bool)

(assert (=> b!565098 m!818503))

(declare-fun m!818505 () Bool)

(assert (=> b!565098 m!818505))

(declare-fun m!818507 () Bool)

(assert (=> b!565098 m!818507))

(declare-fun m!818509 () Bool)

(assert (=> b!565098 m!818509))

(declare-fun m!818511 () Bool)

(assert (=> b!565098 m!818511))

(declare-fun m!818513 () Bool)

(assert (=> b!565098 m!818513))

(assert (=> b!565098 m!818513))

(declare-fun m!818515 () Bool)

(assert (=> b!565098 m!818515))

(declare-fun m!818517 () Bool)

(assert (=> b!565093 m!818517))

(declare-fun m!818519 () Bool)

(assert (=> b!565086 m!818519))

(declare-fun m!818521 () Bool)

(assert (=> start!52072 m!818521))

(declare-fun m!818523 () Bool)

(assert (=> b!565094 m!818523))

(declare-fun m!818525 () Bool)

(assert (=> b!565087 m!818525))

(declare-fun m!818527 () Bool)

(assert (=> b!565087 m!818527))

(declare-fun m!818529 () Bool)

(assert (=> b!565084 m!818529))

(declare-fun m!818531 () Bool)

(assert (=> b!565092 m!818531))

(declare-fun m!818533 () Bool)

(assert (=> b!565092 m!818533))

(declare-fun m!818535 () Bool)

(assert (=> b!565102 m!818535))

(declare-fun m!818537 () Bool)

(assert (=> b!565090 m!818537))

(declare-fun m!818539 () Bool)

(assert (=> b!565091 m!818539))

(declare-fun m!818541 () Bool)

(assert (=> b!565108 m!818541))

(declare-fun m!818543 () Bool)

(assert (=> b!565080 m!818543))

(check-sat (not b!565086) (not b!565083) (not b!565103) (not b!565098) b_and!55091 (not b!565081) (not b!565079) (not b!565111) (not b!565108) (not b!565087) (not b!565094) (not b!565093) (not b_next!15733) (not b!565097) (not b!565080) (not b_next!15737) (not b!565091) b_and!55095 (not b!565099) (not b!565110) (not b!565092) b_and!55097 (not b!565084) (not b_next!15735) (not b_next!15739) b_and!55093 (not b!565106) (not b!565085) (not b!565089) (not b!565090) (not b!565101) (not start!52072) (not b!565102) tp_is_empty!3157 (not b!565109))
(check-sat (not b_next!15733) b_and!55097 b_and!55091 b_and!55093 b_and!55095 (not b_next!15737) (not b_next!15735) (not b_next!15739))
