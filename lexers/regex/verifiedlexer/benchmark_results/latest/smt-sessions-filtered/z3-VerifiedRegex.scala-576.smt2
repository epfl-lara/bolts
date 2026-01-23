; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16718 () Bool)

(assert start!16718)

(declare-fun b!156029 () Bool)

(declare-fun b_free!5825 () Bool)

(declare-fun b_next!5825 () Bool)

(assert (=> b!156029 (= b_free!5825 (not b_next!5825))))

(declare-fun tp!80385 () Bool)

(declare-fun b_and!9365 () Bool)

(assert (=> b!156029 (= tp!80385 b_and!9365)))

(declare-fun b_free!5827 () Bool)

(declare-fun b_next!5827 () Bool)

(assert (=> b!156029 (= b_free!5827 (not b_next!5827))))

(declare-fun tp!80379 () Bool)

(declare-fun b_and!9367 () Bool)

(assert (=> b!156029 (= tp!80379 b_and!9367)))

(declare-fun b!156030 () Bool)

(declare-fun b_free!5829 () Bool)

(declare-fun b_next!5829 () Bool)

(assert (=> b!156030 (= b_free!5829 (not b_next!5829))))

(declare-fun tp!80383 () Bool)

(declare-fun b_and!9369 () Bool)

(assert (=> b!156030 (= tp!80383 b_and!9369)))

(declare-fun b_free!5831 () Bool)

(declare-fun b_next!5831 () Bool)

(assert (=> b!156030 (= b_free!5831 (not b_next!5831))))

(declare-fun tp!80388 () Bool)

(declare-fun b_and!9371 () Bool)

(assert (=> b!156030 (= tp!80388 b_and!9371)))

(declare-fun b!156028 () Bool)

(declare-fun b_free!5833 () Bool)

(declare-fun b_next!5833 () Bool)

(assert (=> b!156028 (= b_free!5833 (not b_next!5833))))

(declare-fun tp!80384 () Bool)

(declare-fun b_and!9373 () Bool)

(assert (=> b!156028 (= tp!80384 b_and!9373)))

(declare-fun b_free!5835 () Bool)

(declare-fun b_next!5835 () Bool)

(assert (=> b!156028 (= b_free!5835 (not b_next!5835))))

(declare-fun tp!80391 () Bool)

(declare-fun b_and!9375 () Bool)

(assert (=> b!156028 (= tp!80391 b_and!9375)))

(declare-fun b!156018 () Bool)

(declare-fun res!71160 () Bool)

(declare-fun e!93652 () Bool)

(assert (=> b!156018 (=> (not res!71160) (not e!93652))))

(declare-datatypes ((List!2719 0))(
  ( (Nil!2709) (Cons!2709 (h!8106 (_ BitVec 16)) (t!25383 List!2719)) )
))
(declare-datatypes ((TokenValue!497 0))(
  ( (FloatLiteralValue!994 (text!3924 List!2719)) (TokenValueExt!496 (__x!2481 Int)) (Broken!2485 (value!17827 List!2719)) (Object!506) (End!497) (Def!497) (Underscore!497) (Match!497) (Else!497) (Error!497) (Case!497) (If!497) (Extends!497) (Abstract!497) (Class!497) (Val!497) (DelimiterValue!994 (del!557 List!2719)) (KeywordValue!503 (value!17828 List!2719)) (CommentValue!994 (value!17829 List!2719)) (WhitespaceValue!994 (value!17830 List!2719)) (IndentationValue!497 (value!17831 List!2719)) (String!3564) (Int32!497) (Broken!2486 (value!17832 List!2719)) (Boolean!498) (Unit!2135) (OperatorValue!500 (op!557 List!2719)) (IdentifierValue!994 (value!17833 List!2719)) (IdentifierValue!995 (value!17834 List!2719)) (WhitespaceValue!995 (value!17835 List!2719)) (True!994) (False!994) (Broken!2487 (value!17836 List!2719)) (Broken!2488 (value!17837 List!2719)) (True!995) (RightBrace!497) (RightBracket!497) (Colon!497) (Null!497) (Comma!497) (LeftBracket!497) (False!995) (LeftBrace!497) (ImaginaryLiteralValue!497 (text!3925 List!2719)) (StringLiteralValue!1491 (value!17838 List!2719)) (EOFValue!497 (value!17839 List!2719)) (IdentValue!497 (value!17840 List!2719)) (DelimiterValue!995 (value!17841 List!2719)) (DedentValue!497 (value!17842 List!2719)) (NewLineValue!497 (value!17843 List!2719)) (IntegerValue!1491 (value!17844 (_ BitVec 32)) (text!3926 List!2719)) (IntegerValue!1492 (value!17845 Int) (text!3927 List!2719)) (Times!497) (Or!497) (Equal!497) (Minus!497) (Broken!2489 (value!17846 List!2719)) (And!497) (Div!497) (LessEqual!497) (Mod!497) (Concat!1196) (Not!497) (Plus!497) (SpaceValue!497 (value!17847 List!2719)) (IntegerValue!1493 (value!17848 Int) (text!3928 List!2719)) (StringLiteralValue!1492 (text!3929 List!2719)) (FloatLiteralValue!995 (text!3930 List!2719)) (BytesLiteralValue!497 (value!17849 List!2719)) (CommentValue!995 (value!17850 List!2719)) (StringLiteralValue!1493 (value!17851 List!2719)) (ErrorTokenValue!497 (msg!558 List!2719)) )
))
(declare-datatypes ((C!2320 0))(
  ( (C!2321 (val!1046 Int)) )
))
(declare-datatypes ((List!2720 0))(
  ( (Nil!2710) (Cons!2710 (h!8107 C!2320) (t!25384 List!2720)) )
))
(declare-datatypes ((IArray!1545 0))(
  ( (IArray!1546 (innerList!830 List!2720)) )
))
(declare-datatypes ((Conc!772 0))(
  ( (Node!772 (left!2044 Conc!772) (right!2374 Conc!772) (csize!1774 Int) (cheight!983 Int)) (Leaf!1349 (xs!3367 IArray!1545) (csize!1775 Int)) (Empty!772) )
))
(declare-datatypes ((BalanceConc!1552 0))(
  ( (BalanceConc!1553 (c!31335 Conc!772)) )
))
(declare-datatypes ((TokenValueInjection!766 0))(
  ( (TokenValueInjection!767 (toValue!1118 Int) (toChars!977 Int)) )
))
(declare-datatypes ((String!3565 0))(
  ( (String!3566 (value!17852 String)) )
))
(declare-datatypes ((Regex!699 0))(
  ( (ElementMatch!699 (c!31336 C!2320)) (Concat!1197 (regOne!1910 Regex!699) (regTwo!1910 Regex!699)) (EmptyExpr!699) (Star!699 (reg!1028 Regex!699)) (EmptyLang!699) (Union!699 (regOne!1911 Regex!699) (regTwo!1911 Regex!699)) )
))
(declare-datatypes ((Rule!750 0))(
  ( (Rule!751 (regex!475 Regex!699) (tag!653 String!3565) (isSeparator!475 Bool) (transformation!475 TokenValueInjection!766)) )
))
(declare-datatypes ((Token!694 0))(
  ( (Token!695 (value!17853 TokenValue!497) (rule!982 Rule!750) (size!2286 Int) (originalCharacters!518 List!2720)) )
))
(declare-fun separatorToken!170 () Token!694)

(declare-datatypes ((LexerInterface!361 0))(
  ( (LexerInterfaceExt!358 (__x!2482 Int)) (Lexer!359) )
))
(declare-fun thiss!17480 () LexerInterface!361)

(declare-datatypes ((List!2721 0))(
  ( (Nil!2711) (Cons!2711 (h!8108 Rule!750) (t!25385 List!2721)) )
))
(declare-fun rules!1920 () List!2721)

(declare-fun rulesProduceIndividualToken!110 (LexerInterface!361 List!2721 Token!694) Bool)

(assert (=> b!156018 (= res!71160 (rulesProduceIndividualToken!110 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!156019 () Bool)

(declare-fun e!93650 () Bool)

(assert (=> b!156019 (= e!93652 e!93650)))

(declare-fun res!71162 () Bool)

(assert (=> b!156019 (=> (not res!71162) (not e!93650))))

(declare-fun lt!46186 () List!2720)

(declare-fun lt!46188 () List!2720)

(assert (=> b!156019 (= res!71162 (= lt!46186 lt!46188))))

(declare-datatypes ((List!2722 0))(
  ( (Nil!2712) (Cons!2712 (h!8109 Token!694) (t!25386 List!2722)) )
))
(declare-datatypes ((IArray!1547 0))(
  ( (IArray!1548 (innerList!831 List!2722)) )
))
(declare-datatypes ((Conc!773 0))(
  ( (Node!773 (left!2045 Conc!773) (right!2375 Conc!773) (csize!1776 Int) (cheight!984 Int)) (Leaf!1350 (xs!3368 IArray!1547) (csize!1777 Int)) (Empty!773) )
))
(declare-datatypes ((BalanceConc!1554 0))(
  ( (BalanceConc!1555 (c!31337 Conc!773)) )
))
(declare-fun lt!46190 () BalanceConc!1554)

(declare-fun list!961 (BalanceConc!1552) List!2720)

(declare-fun printWithSeparatorTokenWhenNeededRec!44 (LexerInterface!361 List!2721 BalanceConc!1554 Token!694 Int) BalanceConc!1552)

(assert (=> b!156019 (= lt!46188 (list!961 (printWithSeparatorTokenWhenNeededRec!44 thiss!17480 rules!1920 lt!46190 separatorToken!170 0)))))

(declare-fun tokens!465 () List!2722)

(declare-fun printWithSeparatorTokenWhenNeededList!54 (LexerInterface!361 List!2721 List!2722 Token!694) List!2720)

(assert (=> b!156019 (= lt!46186 (printWithSeparatorTokenWhenNeededList!54 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!156020 () Bool)

(declare-fun res!71166 () Bool)

(declare-fun e!93644 () Bool)

(assert (=> b!156020 (=> (not res!71166) (not e!93644))))

(declare-fun isEmpty!1080 (List!2721) Bool)

(assert (=> b!156020 (= res!71166 (not (isEmpty!1080 rules!1920)))))

(declare-fun tp!80389 () Bool)

(declare-fun b!156021 () Bool)

(declare-fun e!93654 () Bool)

(declare-fun e!93639 () Bool)

(declare-fun inv!3513 (Token!694) Bool)

(assert (=> b!156021 (= e!93654 (and (inv!3513 (h!8109 tokens!465)) e!93639 tp!80389))))

(declare-fun b!156022 () Bool)

(declare-fun res!71163 () Bool)

(assert (=> b!156022 (=> (not res!71163) (not e!93652))))

(declare-fun lambda!4150 () Int)

(declare-fun forall!479 (List!2722 Int) Bool)

(assert (=> b!156022 (= res!71163 (forall!479 tokens!465 lambda!4150))))

(declare-fun b!156023 () Bool)

(declare-fun res!71159 () Bool)

(assert (=> b!156023 (=> (not res!71159) (not e!93652))))

(get-info :version)

(assert (=> b!156023 (= res!71159 ((_ is Cons!2712) tokens!465))))

(declare-fun e!93653 () Bool)

(declare-fun tp!80390 () Bool)

(declare-fun e!93648 () Bool)

(declare-fun b!156024 () Bool)

(declare-fun inv!21 (TokenValue!497) Bool)

(assert (=> b!156024 (= e!93653 (and (inv!21 (value!17853 separatorToken!170)) e!93648 tp!80390))))

(declare-fun b!156025 () Bool)

(declare-fun res!71169 () Bool)

(assert (=> b!156025 (=> (not res!71169) (not e!93644))))

(declare-fun rulesInvariant!327 (LexerInterface!361 List!2721) Bool)

(assert (=> b!156025 (= res!71169 (rulesInvariant!327 thiss!17480 rules!1920))))

(declare-fun res!71167 () Bool)

(assert (=> start!16718 (=> (not res!71167) (not e!93644))))

(assert (=> start!16718 (= res!71167 ((_ is Lexer!359) thiss!17480))))

(assert (=> start!16718 e!93644))

(assert (=> start!16718 true))

(declare-fun e!93643 () Bool)

(assert (=> start!16718 e!93643))

(assert (=> start!16718 (and (inv!3513 separatorToken!170) e!93653)))

(assert (=> start!16718 e!93654))

(declare-fun b!156026 () Bool)

(declare-fun e!93642 () Bool)

(declare-fun tp!80386 () Bool)

(assert (=> b!156026 (= e!93643 (and e!93642 tp!80386))))

(declare-fun b!156027 () Bool)

(declare-fun tp!80381 () Bool)

(declare-fun e!93647 () Bool)

(declare-fun inv!3510 (String!3565) Bool)

(declare-fun inv!3514 (TokenValueInjection!766) Bool)

(assert (=> b!156027 (= e!93648 (and tp!80381 (inv!3510 (tag!653 (rule!982 separatorToken!170))) (inv!3514 (transformation!475 (rule!982 separatorToken!170))) e!93647))))

(declare-fun e!93638 () Bool)

(assert (=> b!156028 (= e!93638 (and tp!80384 tp!80391))))

(assert (=> b!156029 (= e!93647 (and tp!80385 tp!80379))))

(declare-fun e!93641 () Bool)

(assert (=> b!156030 (= e!93641 (and tp!80383 tp!80388))))

(declare-fun tp!80380 () Bool)

(declare-fun b!156031 () Bool)

(declare-fun e!93649 () Bool)

(assert (=> b!156031 (= e!93639 (and (inv!21 (value!17853 (h!8109 tokens!465))) e!93649 tp!80380))))

(declare-fun b!156032 () Bool)

(declare-fun res!71168 () Bool)

(assert (=> b!156032 (=> (not res!71168) (not e!93652))))

(assert (=> b!156032 (= res!71168 (isSeparator!475 (rule!982 separatorToken!170)))))

(declare-fun b!156033 () Bool)

(assert (=> b!156033 (= e!93644 e!93652)))

(declare-fun res!71164 () Bool)

(assert (=> b!156033 (=> (not res!71164) (not e!93652))))

(declare-fun rulesProduceEachTokenIndividually!153 (LexerInterface!361 List!2721 BalanceConc!1554) Bool)

(assert (=> b!156033 (= res!71164 (rulesProduceEachTokenIndividually!153 thiss!17480 rules!1920 lt!46190))))

(declare-fun seqFromList!327 (List!2722) BalanceConc!1554)

(assert (=> b!156033 (= lt!46190 (seqFromList!327 tokens!465))))

(declare-fun b!156034 () Bool)

(declare-fun res!71161 () Bool)

(assert (=> b!156034 (=> (not res!71161) (not e!93650))))

(declare-fun seqFromList!328 (List!2720) BalanceConc!1552)

(assert (=> b!156034 (= res!71161 (= (list!961 (seqFromList!328 lt!46186)) lt!46188))))

(declare-fun b!156035 () Bool)

(declare-fun size!2287 (BalanceConc!1554) Int)

(assert (=> b!156035 (= e!93650 (not (<= 0 (size!2287 (seqFromList!327 (t!25386 tokens!465))))))))

(declare-fun lt!46185 () List!2720)

(declare-fun lt!46183 () List!2720)

(declare-fun lt!46187 () List!2720)

(declare-fun lt!46189 () List!2720)

(declare-fun ++!592 (List!2720 List!2720) List!2720)

(assert (=> b!156035 (= (++!592 (++!592 lt!46185 lt!46189) lt!46187) (++!592 lt!46185 lt!46183))))

(declare-datatypes ((Unit!2136 0))(
  ( (Unit!2137) )
))
(declare-fun lt!46184 () Unit!2136)

(declare-fun lemmaConcatAssociativity!156 (List!2720 List!2720 List!2720) Unit!2136)

(assert (=> b!156035 (= lt!46184 (lemmaConcatAssociativity!156 lt!46185 lt!46189 lt!46187))))

(declare-fun charsOf!130 (Token!694) BalanceConc!1552)

(assert (=> b!156035 (= lt!46185 (list!961 (charsOf!130 (h!8109 tokens!465))))))

(assert (=> b!156035 (= lt!46183 (++!592 lt!46189 lt!46187))))

(assert (=> b!156035 (= lt!46187 (printWithSeparatorTokenWhenNeededList!54 thiss!17480 rules!1920 (t!25386 tokens!465) separatorToken!170))))

(assert (=> b!156035 (= lt!46189 (list!961 (charsOf!130 separatorToken!170)))))

(declare-fun tp!80382 () Bool)

(declare-fun b!156036 () Bool)

(assert (=> b!156036 (= e!93642 (and tp!80382 (inv!3510 (tag!653 (h!8108 rules!1920))) (inv!3514 (transformation!475 (h!8108 rules!1920))) e!93638))))

(declare-fun tp!80387 () Bool)

(declare-fun b!156037 () Bool)

(assert (=> b!156037 (= e!93649 (and tp!80387 (inv!3510 (tag!653 (rule!982 (h!8109 tokens!465)))) (inv!3514 (transformation!475 (rule!982 (h!8109 tokens!465)))) e!93641))))

(declare-fun b!156038 () Bool)

(declare-fun res!71165 () Bool)

(assert (=> b!156038 (=> (not res!71165) (not e!93652))))

(declare-fun sepAndNonSepRulesDisjointChars!64 (List!2721 List!2721) Bool)

(assert (=> b!156038 (= res!71165 (sepAndNonSepRulesDisjointChars!64 rules!1920 rules!1920))))

(assert (= (and start!16718 res!71167) b!156020))

(assert (= (and b!156020 res!71166) b!156025))

(assert (= (and b!156025 res!71169) b!156033))

(assert (= (and b!156033 res!71164) b!156018))

(assert (= (and b!156018 res!71160) b!156032))

(assert (= (and b!156032 res!71168) b!156022))

(assert (= (and b!156022 res!71163) b!156038))

(assert (= (and b!156038 res!71165) b!156023))

(assert (= (and b!156023 res!71159) b!156019))

(assert (= (and b!156019 res!71162) b!156034))

(assert (= (and b!156034 res!71161) b!156035))

(assert (= b!156036 b!156028))

(assert (= b!156026 b!156036))

(assert (= (and start!16718 ((_ is Cons!2711) rules!1920)) b!156026))

(assert (= b!156027 b!156029))

(assert (= b!156024 b!156027))

(assert (= start!16718 b!156024))

(assert (= b!156037 b!156030))

(assert (= b!156031 b!156037))

(assert (= b!156021 b!156031))

(assert (= (and start!16718 ((_ is Cons!2712) tokens!465)) b!156021))

(declare-fun m!142227 () Bool)

(assert (=> b!156019 m!142227))

(assert (=> b!156019 m!142227))

(declare-fun m!142229 () Bool)

(assert (=> b!156019 m!142229))

(declare-fun m!142231 () Bool)

(assert (=> b!156019 m!142231))

(declare-fun m!142233 () Bool)

(assert (=> b!156037 m!142233))

(declare-fun m!142235 () Bool)

(assert (=> b!156037 m!142235))

(declare-fun m!142237 () Bool)

(assert (=> b!156034 m!142237))

(assert (=> b!156034 m!142237))

(declare-fun m!142239 () Bool)

(assert (=> b!156034 m!142239))

(declare-fun m!142241 () Bool)

(assert (=> b!156025 m!142241))

(declare-fun m!142243 () Bool)

(assert (=> b!156033 m!142243))

(declare-fun m!142245 () Bool)

(assert (=> b!156033 m!142245))

(declare-fun m!142247 () Bool)

(assert (=> b!156027 m!142247))

(declare-fun m!142249 () Bool)

(assert (=> b!156027 m!142249))

(declare-fun m!142251 () Bool)

(assert (=> b!156031 m!142251))

(declare-fun m!142253 () Bool)

(assert (=> b!156020 m!142253))

(declare-fun m!142255 () Bool)

(assert (=> b!156024 m!142255))

(declare-fun m!142257 () Bool)

(assert (=> b!156038 m!142257))

(declare-fun m!142259 () Bool)

(assert (=> b!156036 m!142259))

(declare-fun m!142261 () Bool)

(assert (=> b!156036 m!142261))

(declare-fun m!142263 () Bool)

(assert (=> b!156018 m!142263))

(declare-fun m!142265 () Bool)

(assert (=> b!156022 m!142265))

(declare-fun m!142267 () Bool)

(assert (=> start!16718 m!142267))

(declare-fun m!142269 () Bool)

(assert (=> b!156035 m!142269))

(declare-fun m!142271 () Bool)

(assert (=> b!156035 m!142271))

(declare-fun m!142273 () Bool)

(assert (=> b!156035 m!142273))

(declare-fun m!142275 () Bool)

(assert (=> b!156035 m!142275))

(declare-fun m!142277 () Bool)

(assert (=> b!156035 m!142277))

(declare-fun m!142279 () Bool)

(assert (=> b!156035 m!142279))

(assert (=> b!156035 m!142275))

(declare-fun m!142281 () Bool)

(assert (=> b!156035 m!142281))

(declare-fun m!142283 () Bool)

(assert (=> b!156035 m!142283))

(declare-fun m!142285 () Bool)

(assert (=> b!156035 m!142285))

(assert (=> b!156035 m!142273))

(declare-fun m!142287 () Bool)

(assert (=> b!156035 m!142287))

(assert (=> b!156035 m!142283))

(declare-fun m!142289 () Bool)

(assert (=> b!156035 m!142289))

(assert (=> b!156035 m!142269))

(declare-fun m!142291 () Bool)

(assert (=> b!156035 m!142291))

(declare-fun m!142293 () Bool)

(assert (=> b!156021 m!142293))

(check-sat (not b!156034) (not b!156037) (not b!156033) (not b!156019) (not b!156031) (not b_next!5827) (not b_next!5833) (not b_next!5831) b_and!9365 (not b_next!5835) (not b!156027) (not b!156022) (not b!156025) b_and!9375 (not b!156036) (not start!16718) (not b!156026) (not b!156020) (not b!156035) b_and!9373 b_and!9371 (not b!156024) (not b_next!5825) (not b!156038) b_and!9367 b_and!9369 (not b_next!5829) (not b!156021) (not b!156018))
(check-sat b_and!9375 (not b_next!5827) (not b_next!5833) b_and!9373 (not b_next!5831) b_and!9371 (not b_next!5825) b_and!9365 (not b_next!5835) (not b_next!5829) b_and!9367 b_and!9369)
(get-model)

(declare-fun d!37651 () Bool)

(declare-fun res!71199 () Bool)

(declare-fun e!93677 () Bool)

(assert (=> d!37651 (=> res!71199 e!93677)))

(assert (=> d!37651 (= res!71199 ((_ is Nil!2712) tokens!465))))

(assert (=> d!37651 (= (forall!479 tokens!465 lambda!4150) e!93677)))

(declare-fun b!156073 () Bool)

(declare-fun e!93678 () Bool)

(assert (=> b!156073 (= e!93677 e!93678)))

(declare-fun res!71200 () Bool)

(assert (=> b!156073 (=> (not res!71200) (not e!93678))))

(declare-fun dynLambda!959 (Int Token!694) Bool)

(assert (=> b!156073 (= res!71200 (dynLambda!959 lambda!4150 (h!8109 tokens!465)))))

(declare-fun b!156074 () Bool)

(assert (=> b!156074 (= e!93678 (forall!479 (t!25386 tokens!465) lambda!4150))))

(assert (= (and d!37651 (not res!71199)) b!156073))

(assert (= (and b!156073 res!71200) b!156074))

(declare-fun b_lambda!3049 () Bool)

(assert (=> (not b_lambda!3049) (not b!156073)))

(declare-fun m!142347 () Bool)

(assert (=> b!156073 m!142347))

(declare-fun m!142349 () Bool)

(assert (=> b!156074 m!142349))

(assert (=> b!156022 d!37651))

(declare-fun d!37657 () Bool)

(declare-fun res!71205 () Bool)

(declare-fun e!93681 () Bool)

(assert (=> d!37657 (=> (not res!71205) (not e!93681))))

(declare-fun isEmpty!1083 (List!2720) Bool)

(assert (=> d!37657 (= res!71205 (not (isEmpty!1083 (originalCharacters!518 (h!8109 tokens!465)))))))

(assert (=> d!37657 (= (inv!3513 (h!8109 tokens!465)) e!93681)))

(declare-fun b!156079 () Bool)

(declare-fun res!71206 () Bool)

(assert (=> b!156079 (=> (not res!71206) (not e!93681))))

(declare-fun dynLambda!960 (Int TokenValue!497) BalanceConc!1552)

(assert (=> b!156079 (= res!71206 (= (originalCharacters!518 (h!8109 tokens!465)) (list!961 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465))))))))

(declare-fun b!156080 () Bool)

(declare-fun size!2291 (List!2720) Int)

(assert (=> b!156080 (= e!93681 (= (size!2286 (h!8109 tokens!465)) (size!2291 (originalCharacters!518 (h!8109 tokens!465)))))))

(assert (= (and d!37657 res!71205) b!156079))

(assert (= (and b!156079 res!71206) b!156080))

(declare-fun b_lambda!3051 () Bool)

(assert (=> (not b_lambda!3051) (not b!156079)))

(declare-fun tb!5467 () Bool)

(declare-fun t!25394 () Bool)

(assert (=> (and b!156029 (= (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465))))) t!25394) tb!5467))

(declare-fun b!156085 () Bool)

(declare-fun e!93684 () Bool)

(declare-fun tp!80397 () Bool)

(declare-fun inv!3517 (Conc!772) Bool)

(assert (=> b!156085 (= e!93684 (and (inv!3517 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465))))) tp!80397))))

(declare-fun result!7992 () Bool)

(declare-fun inv!3518 (BalanceConc!1552) Bool)

(assert (=> tb!5467 (= result!7992 (and (inv!3518 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465)))) e!93684))))

(assert (= tb!5467 b!156085))

(declare-fun m!142351 () Bool)

(assert (=> b!156085 m!142351))

(declare-fun m!142353 () Bool)

(assert (=> tb!5467 m!142353))

(assert (=> b!156079 t!25394))

(declare-fun b_and!9383 () Bool)

(assert (= b_and!9367 (and (=> t!25394 result!7992) b_and!9383)))

(declare-fun t!25396 () Bool)

(declare-fun tb!5469 () Bool)

(assert (=> (and b!156030 (= (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465))))) t!25396) tb!5469))

(declare-fun result!7996 () Bool)

(assert (= result!7996 result!7992))

(assert (=> b!156079 t!25396))

(declare-fun b_and!9385 () Bool)

(assert (= b_and!9371 (and (=> t!25396 result!7996) b_and!9385)))

(declare-fun tb!5471 () Bool)

(declare-fun t!25398 () Bool)

(assert (=> (and b!156028 (= (toChars!977 (transformation!475 (h!8108 rules!1920))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465))))) t!25398) tb!5471))

(declare-fun result!7998 () Bool)

(assert (= result!7998 result!7992))

(assert (=> b!156079 t!25398))

(declare-fun b_and!9387 () Bool)

(assert (= b_and!9375 (and (=> t!25398 result!7998) b_and!9387)))

(declare-fun m!142355 () Bool)

(assert (=> d!37657 m!142355))

(declare-fun m!142357 () Bool)

(assert (=> b!156079 m!142357))

(assert (=> b!156079 m!142357))

(declare-fun m!142359 () Bool)

(assert (=> b!156079 m!142359))

(declare-fun m!142361 () Bool)

(assert (=> b!156080 m!142361))

(assert (=> b!156021 d!37657))

(declare-fun d!37659 () Bool)

(declare-fun list!964 (Conc!772) List!2720)

(assert (=> d!37659 (= (list!961 (seqFromList!328 lt!46186)) (list!964 (c!31335 (seqFromList!328 lt!46186))))))

(declare-fun bs!14434 () Bool)

(assert (= bs!14434 d!37659))

(declare-fun m!142363 () Bool)

(assert (=> bs!14434 m!142363))

(assert (=> b!156034 d!37659))

(declare-fun d!37661 () Bool)

(declare-fun fromListB!136 (List!2720) BalanceConc!1552)

(assert (=> d!37661 (= (seqFromList!328 lt!46186) (fromListB!136 lt!46186))))

(declare-fun bs!14435 () Bool)

(assert (= bs!14435 d!37661))

(declare-fun m!142365 () Bool)

(assert (=> bs!14435 m!142365))

(assert (=> b!156034 d!37661))

(declare-fun bs!14439 () Bool)

(declare-fun d!37663 () Bool)

(assert (= bs!14439 (and d!37663 b!156022)))

(declare-fun lambda!4158 () Int)

(assert (=> bs!14439 (not (= lambda!4158 lambda!4150))))

(declare-fun b!156180 () Bool)

(declare-fun e!93748 () Bool)

(assert (=> b!156180 (= e!93748 true)))

(declare-fun b!156179 () Bool)

(declare-fun e!93747 () Bool)

(assert (=> b!156179 (= e!93747 e!93748)))

(declare-fun b!156178 () Bool)

(declare-fun e!93746 () Bool)

(assert (=> b!156178 (= e!93746 e!93747)))

(assert (=> d!37663 e!93746))

(assert (= b!156179 b!156180))

(assert (= b!156178 b!156179))

(assert (= (and d!37663 ((_ is Cons!2711) rules!1920)) b!156178))

(declare-fun order!1367 () Int)

(declare-fun order!1365 () Int)

(declare-fun dynLambda!961 (Int Int) Int)

(declare-fun dynLambda!962 (Int Int) Int)

(assert (=> b!156180 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4158))))

(declare-fun order!1369 () Int)

(declare-fun dynLambda!963 (Int Int) Int)

(assert (=> b!156180 (< (dynLambda!963 order!1369 (toChars!977 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4158))))

(assert (=> d!37663 true))

(declare-fun e!93739 () Bool)

(assert (=> d!37663 e!93739))

(declare-fun res!71230 () Bool)

(assert (=> d!37663 (=> (not res!71230) (not e!93739))))

(declare-fun lt!46227 () Bool)

(declare-fun list!965 (BalanceConc!1554) List!2722)

(assert (=> d!37663 (= res!71230 (= lt!46227 (forall!479 (list!965 lt!46190) lambda!4158)))))

(declare-fun forall!481 (BalanceConc!1554 Int) Bool)

(assert (=> d!37663 (= lt!46227 (forall!481 lt!46190 lambda!4158))))

(assert (=> d!37663 (not (isEmpty!1080 rules!1920))))

(assert (=> d!37663 (= (rulesProduceEachTokenIndividually!153 thiss!17480 rules!1920 lt!46190) lt!46227)))

(declare-fun b!156169 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!97 (LexerInterface!361 List!2721 List!2722) Bool)

(assert (=> b!156169 (= e!93739 (= lt!46227 (rulesProduceEachTokenIndividuallyList!97 thiss!17480 rules!1920 (list!965 lt!46190))))))

(assert (= (and d!37663 res!71230) b!156169))

(declare-fun m!142451 () Bool)

(assert (=> d!37663 m!142451))

(assert (=> d!37663 m!142451))

(declare-fun m!142453 () Bool)

(assert (=> d!37663 m!142453))

(declare-fun m!142455 () Bool)

(assert (=> d!37663 m!142455))

(assert (=> d!37663 m!142253))

(assert (=> b!156169 m!142451))

(assert (=> b!156169 m!142451))

(declare-fun m!142457 () Bool)

(assert (=> b!156169 m!142457))

(assert (=> b!156033 d!37663))

(declare-fun d!37693 () Bool)

(declare-fun fromListB!137 (List!2722) BalanceConc!1554)

(assert (=> d!37693 (= (seqFromList!327 tokens!465) (fromListB!137 tokens!465))))

(declare-fun bs!14440 () Bool)

(assert (= bs!14440 d!37693))

(declare-fun m!142459 () Bool)

(assert (=> bs!14440 m!142459))

(assert (=> b!156033 d!37693))

(declare-fun d!37695 () Bool)

(assert (=> d!37695 (= (list!961 (printWithSeparatorTokenWhenNeededRec!44 thiss!17480 rules!1920 lt!46190 separatorToken!170 0)) (list!964 (c!31335 (printWithSeparatorTokenWhenNeededRec!44 thiss!17480 rules!1920 lt!46190 separatorToken!170 0))))))

(declare-fun bs!14441 () Bool)

(assert (= bs!14441 d!37695))

(declare-fun m!142461 () Bool)

(assert (=> bs!14441 m!142461))

(assert (=> b!156019 d!37695))

(declare-fun bs!14448 () Bool)

(declare-fun d!37697 () Bool)

(assert (= bs!14448 (and d!37697 b!156022)))

(declare-fun lambda!4168 () Int)

(assert (=> bs!14448 (= lambda!4168 lambda!4150)))

(declare-fun bs!14449 () Bool)

(assert (= bs!14449 (and d!37697 d!37663)))

(assert (=> bs!14449 (not (= lambda!4168 lambda!4158))))

(declare-fun bs!14450 () Bool)

(declare-fun b!156237 () Bool)

(assert (= bs!14450 (and b!156237 b!156022)))

(declare-fun lambda!4169 () Int)

(assert (=> bs!14450 (not (= lambda!4169 lambda!4150))))

(declare-fun bs!14451 () Bool)

(assert (= bs!14451 (and b!156237 d!37663)))

(assert (=> bs!14451 (= lambda!4169 lambda!4158)))

(declare-fun bs!14452 () Bool)

(assert (= bs!14452 (and b!156237 d!37697)))

(assert (=> bs!14452 (not (= lambda!4169 lambda!4168))))

(declare-fun b!156241 () Bool)

(declare-fun e!93790 () Bool)

(assert (=> b!156241 (= e!93790 true)))

(declare-fun b!156240 () Bool)

(declare-fun e!93789 () Bool)

(assert (=> b!156240 (= e!93789 e!93790)))

(declare-fun b!156239 () Bool)

(declare-fun e!93788 () Bool)

(assert (=> b!156239 (= e!93788 e!93789)))

(assert (=> b!156237 e!93788))

(assert (= b!156240 b!156241))

(assert (= b!156239 b!156240))

(assert (= (and b!156237 ((_ is Cons!2711) rules!1920)) b!156239))

(assert (=> b!156241 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4169))))

(assert (=> b!156241 (< (dynLambda!963 order!1369 (toChars!977 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4169))))

(assert (=> b!156237 true))

(declare-fun b!156228 () Bool)

(declare-fun e!93782 () BalanceConc!1552)

(declare-fun call!6473 () BalanceConc!1552)

(assert (=> b!156228 (= e!93782 call!6473)))

(declare-fun bm!6467 () Bool)

(declare-fun call!6475 () BalanceConc!1552)

(assert (=> bm!6467 (= call!6475 call!6473)))

(declare-fun b!156229 () Bool)

(declare-fun e!93786 () Bool)

(declare-datatypes ((tuple2!2622 0))(
  ( (tuple2!2623 (_1!1527 Token!694) (_2!1527 BalanceConc!1552)) )
))
(declare-datatypes ((Option!258 0))(
  ( (None!257) (Some!257 (v!13650 tuple2!2622)) )
))
(declare-fun lt!46277 () Option!258)

(declare-fun apply!365 (BalanceConc!1554 Int) Token!694)

(assert (=> b!156229 (= e!93786 (= (_1!1527 (v!13650 lt!46277)) (apply!365 lt!46190 0)))))

(declare-fun b!156230 () Bool)

(declare-fun e!93787 () BalanceConc!1552)

(declare-fun call!6474 () BalanceConc!1552)

(declare-fun lt!46272 () BalanceConc!1552)

(declare-fun ++!594 (BalanceConc!1552 BalanceConc!1552) BalanceConc!1552)

(assert (=> b!156230 (= e!93787 (++!594 call!6474 lt!46272))))

(declare-fun b!156231 () Bool)

(declare-fun e!93784 () Bool)

(assert (=> b!156231 (= e!93784 (<= 0 (size!2287 lt!46190)))))

(declare-fun bm!6468 () Bool)

(declare-fun c!31375 () Bool)

(declare-fun c!31377 () Bool)

(assert (=> bm!6468 (= c!31375 c!31377)))

(assert (=> bm!6468 (= call!6474 (++!594 e!93782 (ite c!31377 lt!46272 call!6475)))))

(declare-fun b!156232 () Bool)

(declare-fun e!93785 () BalanceConc!1552)

(assert (=> b!156232 (= e!93785 call!6474)))

(declare-fun bm!6469 () Bool)

(declare-fun call!6472 () Token!694)

(declare-fun call!6476 () Token!694)

(assert (=> bm!6469 (= call!6472 call!6476)))

(declare-fun bm!6470 () Bool)

(declare-fun c!31376 () Bool)

(assert (=> bm!6470 (= call!6473 (charsOf!130 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472))))))

(declare-fun b!156233 () Bool)

(declare-fun e!93783 () Bool)

(assert (=> b!156233 (= e!93783 (not (= (_1!1527 (v!13650 lt!46277)) call!6476)))))

(declare-fun b!156234 () Bool)

(assert (=> b!156234 (= e!93787 (BalanceConc!1553 Empty!772))))

(declare-fun print!100 (LexerInterface!361 BalanceConc!1554) BalanceConc!1552)

(declare-fun singletonSeq!33 (Token!694) BalanceConc!1554)

(declare-fun printTailRec!63 (LexerInterface!361 BalanceConc!1554 Int BalanceConc!1552) BalanceConc!1552)

(assert (=> b!156234 (= (print!100 thiss!17480 (singletonSeq!33 call!6472)) (printTailRec!63 thiss!17480 (singletonSeq!33 call!6472) 0 (BalanceConc!1553 Empty!772)))))

(declare-fun lt!46275 () Unit!2136)

(declare-fun Unit!2142 () Unit!2136)

(assert (=> b!156234 (= lt!46275 Unit!2142)))

(declare-fun lt!46265 () Unit!2136)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!22 (LexerInterface!361 List!2721 List!2720 List!2720) Unit!2136)

(assert (=> b!156234 (= lt!46265 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!22 thiss!17480 rules!1920 (list!961 call!6475) (list!961 lt!46272)))))

(assert (=> b!156234 false))

(declare-fun lt!46278 () Unit!2136)

(declare-fun Unit!2143 () Unit!2136)

(assert (=> b!156234 (= lt!46278 Unit!2143)))

(declare-fun bm!6471 () Bool)

(assert (=> bm!6471 (= call!6476 (apply!365 lt!46190 0))))

(declare-fun b!156236 () Bool)

(declare-fun e!93781 () BalanceConc!1552)

(assert (=> b!156236 (= e!93781 (BalanceConc!1553 Empty!772))))

(assert (=> b!156237 (= e!93781 e!93785)))

(declare-fun lt!46269 () List!2722)

(assert (=> b!156237 (= lt!46269 (list!965 lt!46190))))

(declare-fun lt!46268 () Unit!2136)

(declare-fun lemmaDropApply!114 (List!2722 Int) Unit!2136)

(assert (=> b!156237 (= lt!46268 (lemmaDropApply!114 lt!46269 0))))

(declare-fun head!588 (List!2722) Token!694)

(declare-fun drop!127 (List!2722 Int) List!2722)

(declare-fun apply!366 (List!2722 Int) Token!694)

(assert (=> b!156237 (= (head!588 (drop!127 lt!46269 0)) (apply!366 lt!46269 0))))

(declare-fun lt!46274 () Unit!2136)

(assert (=> b!156237 (= lt!46274 lt!46268)))

(declare-fun lt!46270 () List!2722)

(assert (=> b!156237 (= lt!46270 (list!965 lt!46190))))

(declare-fun lt!46266 () Unit!2136)

(declare-fun lemmaDropTail!106 (List!2722 Int) Unit!2136)

(assert (=> b!156237 (= lt!46266 (lemmaDropTail!106 lt!46270 0))))

(declare-fun tail!328 (List!2722) List!2722)

(assert (=> b!156237 (= (tail!328 (drop!127 lt!46270 0)) (drop!127 lt!46270 (+ 0 1)))))

(declare-fun lt!46273 () Unit!2136)

(assert (=> b!156237 (= lt!46273 lt!46266)))

(declare-fun lt!46271 () Unit!2136)

(declare-fun forallContained!58 (List!2722 Int Token!694) Unit!2136)

(assert (=> b!156237 (= lt!46271 (forallContained!58 (list!965 lt!46190) lambda!4169 (apply!365 lt!46190 0)))))

(assert (=> b!156237 (= lt!46272 (printWithSeparatorTokenWhenNeededRec!44 thiss!17480 rules!1920 lt!46190 separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!74 (LexerInterface!361 List!2721 BalanceConc!1552) Option!258)

(assert (=> b!156237 (= lt!46277 (maxPrefixZipperSequence!74 thiss!17480 rules!1920 (++!594 (charsOf!130 (apply!365 lt!46190 0)) lt!46272)))))

(declare-fun res!71254 () Bool)

(assert (=> b!156237 (= res!71254 ((_ is Some!257) lt!46277))))

(assert (=> b!156237 (=> (not res!71254) (not e!93786))))

(assert (=> b!156237 (= c!31377 e!93786)))

(declare-fun b!156238 () Bool)

(assert (=> b!156238 (= e!93782 (charsOf!130 call!6472))))

(declare-fun lt!46267 () BalanceConc!1552)

(declare-fun dropList!74 (BalanceConc!1554 Int) List!2722)

(assert (=> d!37697 (= (list!961 lt!46267) (printWithSeparatorTokenWhenNeededList!54 thiss!17480 rules!1920 (dropList!74 lt!46190 0) separatorToken!170))))

(assert (=> d!37697 (= lt!46267 e!93781)))

(declare-fun c!31378 () Bool)

(assert (=> d!37697 (= c!31378 (>= 0 (size!2287 lt!46190)))))

(declare-fun lt!46276 () Unit!2136)

(declare-fun lemmaContentSubsetPreservesForall!18 (List!2722 List!2722 Int) Unit!2136)

(assert (=> d!37697 (= lt!46276 (lemmaContentSubsetPreservesForall!18 (list!965 lt!46190) (dropList!74 lt!46190 0) lambda!4168))))

(assert (=> d!37697 e!93784))

(declare-fun res!71255 () Bool)

(assert (=> d!37697 (=> (not res!71255) (not e!93784))))

(assert (=> d!37697 (= res!71255 (>= 0 0))))

(assert (=> d!37697 (= (printWithSeparatorTokenWhenNeededRec!44 thiss!17480 rules!1920 lt!46190 separatorToken!170 0) lt!46267)))

(declare-fun b!156235 () Bool)

(assert (=> b!156235 (= c!31376 e!93783)))

(declare-fun res!71253 () Bool)

(assert (=> b!156235 (=> (not res!71253) (not e!93783))))

(assert (=> b!156235 (= res!71253 ((_ is Some!257) lt!46277))))

(assert (=> b!156235 (= e!93785 e!93787)))

(assert (= (and d!37697 res!71255) b!156231))

(assert (= (and d!37697 c!31378) b!156236))

(assert (= (and d!37697 (not c!31378)) b!156237))

(assert (= (and b!156237 res!71254) b!156229))

(assert (= (and b!156237 c!31377) b!156232))

(assert (= (and b!156237 (not c!31377)) b!156235))

(assert (= (and b!156235 res!71253) b!156233))

(assert (= (and b!156235 c!31376) b!156230))

(assert (= (and b!156235 (not c!31376)) b!156234))

(assert (= (or b!156230 b!156234) bm!6469))

(assert (= (or b!156230 b!156234) bm!6467))

(assert (= (or b!156232 bm!6469 b!156233) bm!6471))

(assert (= (or b!156232 bm!6467) bm!6470))

(assert (= (or b!156232 b!156230) bm!6468))

(assert (= (and bm!6468 c!31375) b!156228))

(assert (= (and bm!6468 (not c!31375)) b!156238))

(declare-fun m!142507 () Bool)

(assert (=> b!156230 m!142507))

(declare-fun m!142509 () Bool)

(assert (=> b!156237 m!142509))

(declare-fun m!142511 () Bool)

(assert (=> b!156237 m!142511))

(declare-fun m!142513 () Bool)

(assert (=> b!156237 m!142513))

(declare-fun m!142515 () Bool)

(assert (=> b!156237 m!142515))

(declare-fun m!142517 () Bool)

(assert (=> b!156237 m!142517))

(declare-fun m!142519 () Bool)

(assert (=> b!156237 m!142519))

(assert (=> b!156237 m!142451))

(declare-fun m!142521 () Bool)

(assert (=> b!156237 m!142521))

(declare-fun m!142523 () Bool)

(assert (=> b!156237 m!142523))

(declare-fun m!142525 () Bool)

(assert (=> b!156237 m!142525))

(declare-fun m!142527 () Bool)

(assert (=> b!156237 m!142527))

(assert (=> b!156237 m!142451))

(assert (=> b!156237 m!142525))

(declare-fun m!142529 () Bool)

(assert (=> b!156237 m!142529))

(assert (=> b!156237 m!142521))

(declare-fun m!142531 () Bool)

(assert (=> b!156237 m!142531))

(declare-fun m!142533 () Bool)

(assert (=> b!156237 m!142533))

(assert (=> b!156237 m!142521))

(assert (=> b!156237 m!142517))

(assert (=> b!156237 m!142531))

(assert (=> b!156237 m!142519))

(declare-fun m!142535 () Bool)

(assert (=> b!156237 m!142535))

(declare-fun m!142537 () Bool)

(assert (=> b!156231 m!142537))

(declare-fun m!142539 () Bool)

(assert (=> b!156234 m!142539))

(declare-fun m!142541 () Bool)

(assert (=> b!156234 m!142541))

(declare-fun m!142543 () Bool)

(assert (=> b!156234 m!142543))

(assert (=> b!156234 m!142539))

(declare-fun m!142545 () Bool)

(assert (=> b!156234 m!142545))

(assert (=> b!156234 m!142545))

(declare-fun m!142547 () Bool)

(assert (=> b!156234 m!142547))

(assert (=> b!156234 m!142545))

(declare-fun m!142549 () Bool)

(assert (=> b!156234 m!142549))

(assert (=> b!156234 m!142541))

(declare-fun m!142551 () Bool)

(assert (=> b!156238 m!142551))

(assert (=> b!156229 m!142521))

(declare-fun m!142553 () Bool)

(assert (=> bm!6468 m!142553))

(declare-fun m!142555 () Bool)

(assert (=> bm!6470 m!142555))

(assert (=> bm!6471 m!142521))

(declare-fun m!142557 () Bool)

(assert (=> d!37697 m!142557))

(declare-fun m!142559 () Bool)

(assert (=> d!37697 m!142559))

(assert (=> d!37697 m!142451))

(assert (=> d!37697 m!142557))

(declare-fun m!142561 () Bool)

(assert (=> d!37697 m!142561))

(declare-fun m!142563 () Bool)

(assert (=> d!37697 m!142563))

(assert (=> d!37697 m!142537))

(assert (=> d!37697 m!142451))

(assert (=> d!37697 m!142557))

(assert (=> b!156019 d!37697))

(declare-fun bs!14466 () Bool)

(declare-fun b!156362 () Bool)

(assert (= bs!14466 (and b!156362 b!156022)))

(declare-fun lambda!4179 () Int)

(assert (=> bs!14466 (not (= lambda!4179 lambda!4150))))

(declare-fun bs!14467 () Bool)

(assert (= bs!14467 (and b!156362 d!37663)))

(assert (=> bs!14467 (= lambda!4179 lambda!4158)))

(declare-fun bs!14468 () Bool)

(assert (= bs!14468 (and b!156362 d!37697)))

(assert (=> bs!14468 (not (= lambda!4179 lambda!4168))))

(declare-fun bs!14469 () Bool)

(assert (= bs!14469 (and b!156362 b!156237)))

(assert (=> bs!14469 (= lambda!4179 lambda!4169)))

(declare-fun b!156366 () Bool)

(declare-fun e!93874 () Bool)

(assert (=> b!156366 (= e!93874 true)))

(declare-fun b!156365 () Bool)

(declare-fun e!93873 () Bool)

(assert (=> b!156365 (= e!93873 e!93874)))

(declare-fun b!156364 () Bool)

(declare-fun e!93872 () Bool)

(assert (=> b!156364 (= e!93872 e!93873)))

(assert (=> b!156362 e!93872))

(assert (= b!156365 b!156366))

(assert (= b!156364 b!156365))

(assert (= (and b!156362 ((_ is Cons!2711) rules!1920)) b!156364))

(assert (=> b!156366 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4179))))

(assert (=> b!156366 (< (dynLambda!963 order!1369 (toChars!977 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4179))))

(assert (=> b!156362 true))

(declare-fun b!156356 () Bool)

(declare-fun e!93870 () List!2720)

(assert (=> b!156356 (= e!93870 Nil!2710)))

(assert (=> b!156356 (= (print!100 thiss!17480 (singletonSeq!33 (h!8109 tokens!465))) (printTailRec!63 thiss!17480 (singletonSeq!33 (h!8109 tokens!465)) 0 (BalanceConc!1553 Empty!772)))))

(declare-fun lt!46342 () Unit!2136)

(declare-fun Unit!2146 () Unit!2136)

(assert (=> b!156356 (= lt!46342 Unit!2146)))

(declare-fun lt!46339 () Unit!2136)

(declare-fun call!6508 () List!2720)

(declare-fun lt!46343 () List!2720)

(assert (=> b!156356 (= lt!46339 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!22 thiss!17480 rules!1920 call!6508 lt!46343))))

(assert (=> b!156356 false))

(declare-fun lt!46344 () Unit!2136)

(declare-fun Unit!2147 () Unit!2136)

(assert (=> b!156356 (= lt!46344 Unit!2147)))

(declare-fun b!156357 () Bool)

(declare-fun e!93871 () BalanceConc!1552)

(declare-fun call!6510 () BalanceConc!1552)

(assert (=> b!156357 (= e!93871 call!6510)))

(declare-fun b!156358 () Bool)

(declare-fun e!93868 () List!2720)

(assert (=> b!156358 (= e!93868 Nil!2710)))

(declare-fun bm!6502 () Bool)

(declare-fun call!6507 () BalanceConc!1552)

(assert (=> bm!6502 (= call!6507 (charsOf!130 (h!8109 tokens!465)))))

(declare-fun b!156359 () Bool)

(declare-fun call!6511 () List!2720)

(assert (=> b!156359 (= e!93870 (++!592 call!6511 lt!46343))))

(declare-fun d!37717 () Bool)

(declare-fun c!31402 () Bool)

(assert (=> d!37717 (= c!31402 ((_ is Cons!2712) tokens!465))))

(assert (=> d!37717 (= (printWithSeparatorTokenWhenNeededList!54 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!93868)))

(declare-fun b!156360 () Bool)

(declare-fun e!93869 () List!2720)

(assert (=> b!156360 (= e!93869 call!6511)))

(declare-fun bm!6503 () Bool)

(assert (=> bm!6503 (= call!6510 call!6507)))

(declare-fun c!31404 () Bool)

(declare-fun bm!6504 () Bool)

(declare-fun call!6509 () List!2720)

(assert (=> bm!6504 (= call!6511 (++!592 call!6509 (ite c!31404 lt!46343 call!6508)))))

(declare-fun b!156361 () Bool)

(assert (=> b!156361 (= e!93871 (charsOf!130 separatorToken!170))))

(declare-fun bm!6505 () Bool)

(assert (=> bm!6505 (= call!6509 (list!961 (ite c!31404 call!6507 call!6510)))))

(assert (=> b!156362 (= e!93868 e!93869)))

(declare-fun lt!46341 () Unit!2136)

(assert (=> b!156362 (= lt!46341 (forallContained!58 tokens!465 lambda!4179 (h!8109 tokens!465)))))

(assert (=> b!156362 (= lt!46343 (printWithSeparatorTokenWhenNeededList!54 thiss!17480 rules!1920 (t!25386 tokens!465) separatorToken!170))))

(declare-datatypes ((tuple2!2624 0))(
  ( (tuple2!2625 (_1!1528 Token!694) (_2!1528 List!2720)) )
))
(declare-datatypes ((Option!259 0))(
  ( (None!258) (Some!258 (v!13651 tuple2!2624)) )
))
(declare-fun lt!46340 () Option!259)

(declare-fun maxPrefix!115 (LexerInterface!361 List!2721 List!2720) Option!259)

(assert (=> b!156362 (= lt!46340 (maxPrefix!115 thiss!17480 rules!1920 (++!592 (list!961 (charsOf!130 (h!8109 tokens!465))) lt!46343)))))

(assert (=> b!156362 (= c!31404 (and ((_ is Some!258) lt!46340) (= (_1!1528 (v!13651 lt!46340)) (h!8109 tokens!465))))))

(declare-fun b!156363 () Bool)

(declare-fun c!31401 () Bool)

(assert (=> b!156363 (= c!31401 (and ((_ is Some!258) lt!46340) (not (= (_1!1528 (v!13651 lt!46340)) (h!8109 tokens!465)))))))

(assert (=> b!156363 (= e!93869 e!93870)))

(declare-fun bm!6506 () Bool)

(assert (=> bm!6506 (= call!6508 (list!961 e!93871))))

(declare-fun c!31403 () Bool)

(assert (=> bm!6506 (= c!31403 c!31401)))

(assert (= (and d!37717 c!31402) b!156362))

(assert (= (and d!37717 (not c!31402)) b!156358))

(assert (= (and b!156362 c!31404) b!156360))

(assert (= (and b!156362 (not c!31404)) b!156363))

(assert (= (and b!156363 c!31401) b!156359))

(assert (= (and b!156363 (not c!31401)) b!156356))

(assert (= (or b!156359 b!156356) bm!6503))

(assert (= (or b!156359 b!156356) bm!6506))

(assert (= (and bm!6506 c!31403) b!156361))

(assert (= (and bm!6506 (not c!31403)) b!156357))

(assert (= (or b!156360 bm!6503) bm!6502))

(assert (= (or b!156360 b!156359) bm!6505))

(assert (= (or b!156360 b!156359) bm!6504))

(declare-fun m!142663 () Bool)

(assert (=> bm!6505 m!142663))

(assert (=> bm!6502 m!142283))

(declare-fun m!142665 () Bool)

(assert (=> b!156362 m!142665))

(assert (=> b!156362 m!142271))

(declare-fun m!142667 () Bool)

(assert (=> b!156362 m!142667))

(declare-fun m!142669 () Bool)

(assert (=> b!156362 m!142669))

(assert (=> b!156362 m!142283))

(assert (=> b!156362 m!142285))

(assert (=> b!156362 m!142285))

(assert (=> b!156362 m!142667))

(assert (=> b!156362 m!142283))

(assert (=> b!156361 m!142275))

(declare-fun m!142671 () Bool)

(assert (=> b!156356 m!142671))

(assert (=> b!156356 m!142671))

(declare-fun m!142673 () Bool)

(assert (=> b!156356 m!142673))

(assert (=> b!156356 m!142671))

(declare-fun m!142675 () Bool)

(assert (=> b!156356 m!142675))

(declare-fun m!142677 () Bool)

(assert (=> b!156356 m!142677))

(declare-fun m!142679 () Bool)

(assert (=> bm!6506 m!142679))

(declare-fun m!142681 () Bool)

(assert (=> b!156359 m!142681))

(declare-fun m!142683 () Bool)

(assert (=> bm!6504 m!142683))

(assert (=> b!156019 d!37717))

(declare-fun d!37725 () Bool)

(declare-fun res!71267 () Bool)

(declare-fun e!93875 () Bool)

(assert (=> d!37725 (=> (not res!71267) (not e!93875))))

(assert (=> d!37725 (= res!71267 (not (isEmpty!1083 (originalCharacters!518 separatorToken!170))))))

(assert (=> d!37725 (= (inv!3513 separatorToken!170) e!93875)))

(declare-fun b!156367 () Bool)

(declare-fun res!71268 () Bool)

(assert (=> b!156367 (=> (not res!71268) (not e!93875))))

(assert (=> b!156367 (= res!71268 (= (originalCharacters!518 separatorToken!170) (list!961 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170)))))))

(declare-fun b!156368 () Bool)

(assert (=> b!156368 (= e!93875 (= (size!2286 separatorToken!170) (size!2291 (originalCharacters!518 separatorToken!170))))))

(assert (= (and d!37725 res!71267) b!156367))

(assert (= (and b!156367 res!71268) b!156368))

(declare-fun b_lambda!3071 () Bool)

(assert (=> (not b_lambda!3071) (not b!156367)))

(declare-fun t!25435 () Bool)

(declare-fun tb!5487 () Bool)

(assert (=> (and b!156029 (= (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toChars!977 (transformation!475 (rule!982 separatorToken!170)))) t!25435) tb!5487))

(declare-fun b!156369 () Bool)

(declare-fun e!93876 () Bool)

(declare-fun tp!80455 () Bool)

(assert (=> b!156369 (= e!93876 (and (inv!3517 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170)))) tp!80455))))

(declare-fun result!8022 () Bool)

(assert (=> tb!5487 (= result!8022 (and (inv!3518 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170))) e!93876))))

(assert (= tb!5487 b!156369))

(declare-fun m!142685 () Bool)

(assert (=> b!156369 m!142685))

(declare-fun m!142687 () Bool)

(assert (=> tb!5487 m!142687))

(assert (=> b!156367 t!25435))

(declare-fun b_and!9415 () Bool)

(assert (= b_and!9383 (and (=> t!25435 result!8022) b_and!9415)))

(declare-fun t!25437 () Bool)

(declare-fun tb!5489 () Bool)

(assert (=> (and b!156030 (= (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toChars!977 (transformation!475 (rule!982 separatorToken!170)))) t!25437) tb!5489))

(declare-fun result!8024 () Bool)

(assert (= result!8024 result!8022))

(assert (=> b!156367 t!25437))

(declare-fun b_and!9417 () Bool)

(assert (= b_and!9385 (and (=> t!25437 result!8024) b_and!9417)))

(declare-fun tb!5491 () Bool)

(declare-fun t!25439 () Bool)

(assert (=> (and b!156028 (= (toChars!977 (transformation!475 (h!8108 rules!1920))) (toChars!977 (transformation!475 (rule!982 separatorToken!170)))) t!25439) tb!5491))

(declare-fun result!8026 () Bool)

(assert (= result!8026 result!8022))

(assert (=> b!156367 t!25439))

(declare-fun b_and!9419 () Bool)

(assert (= b_and!9387 (and (=> t!25439 result!8026) b_and!9419)))

(declare-fun m!142689 () Bool)

(assert (=> d!37725 m!142689))

(declare-fun m!142691 () Bool)

(assert (=> b!156367 m!142691))

(assert (=> b!156367 m!142691))

(declare-fun m!142693 () Bool)

(assert (=> b!156367 m!142693))

(declare-fun m!142695 () Bool)

(assert (=> b!156368 m!142695))

(assert (=> start!16718 d!37725))

(declare-fun d!37727 () Bool)

(declare-fun c!31410 () Bool)

(assert (=> d!37727 (= c!31410 ((_ is IntegerValue!1491) (value!17853 (h!8109 tokens!465))))))

(declare-fun e!93885 () Bool)

(assert (=> d!37727 (= (inv!21 (value!17853 (h!8109 tokens!465))) e!93885)))

(declare-fun b!156380 () Bool)

(declare-fun res!71271 () Bool)

(declare-fun e!93883 () Bool)

(assert (=> b!156380 (=> res!71271 e!93883)))

(assert (=> b!156380 (= res!71271 (not ((_ is IntegerValue!1493) (value!17853 (h!8109 tokens!465)))))))

(declare-fun e!93884 () Bool)

(assert (=> b!156380 (= e!93884 e!93883)))

(declare-fun b!156381 () Bool)

(declare-fun inv!16 (TokenValue!497) Bool)

(assert (=> b!156381 (= e!93885 (inv!16 (value!17853 (h!8109 tokens!465))))))

(declare-fun b!156382 () Bool)

(assert (=> b!156382 (= e!93885 e!93884)))

(declare-fun c!31409 () Bool)

(assert (=> b!156382 (= c!31409 ((_ is IntegerValue!1492) (value!17853 (h!8109 tokens!465))))))

(declare-fun b!156383 () Bool)

(declare-fun inv!17 (TokenValue!497) Bool)

(assert (=> b!156383 (= e!93884 (inv!17 (value!17853 (h!8109 tokens!465))))))

(declare-fun b!156384 () Bool)

(declare-fun inv!15 (TokenValue!497) Bool)

(assert (=> b!156384 (= e!93883 (inv!15 (value!17853 (h!8109 tokens!465))))))

(assert (= (and d!37727 c!31410) b!156381))

(assert (= (and d!37727 (not c!31410)) b!156382))

(assert (= (and b!156382 c!31409) b!156383))

(assert (= (and b!156382 (not c!31409)) b!156380))

(assert (= (and b!156380 (not res!71271)) b!156384))

(declare-fun m!142697 () Bool)

(assert (=> b!156381 m!142697))

(declare-fun m!142699 () Bool)

(assert (=> b!156383 m!142699))

(declare-fun m!142701 () Bool)

(assert (=> b!156384 m!142701))

(assert (=> b!156031 d!37727))

(declare-fun d!37729 () Bool)

(assert (=> d!37729 (= (isEmpty!1080 rules!1920) ((_ is Nil!2711) rules!1920))))

(assert (=> b!156020 d!37729))

(declare-fun d!37731 () Bool)

(declare-fun res!71276 () Bool)

(declare-fun e!93890 () Bool)

(assert (=> d!37731 (=> res!71276 e!93890)))

(assert (=> d!37731 (= res!71276 (not ((_ is Cons!2711) rules!1920)))))

(assert (=> d!37731 (= (sepAndNonSepRulesDisjointChars!64 rules!1920 rules!1920) e!93890)))

(declare-fun b!156389 () Bool)

(declare-fun e!93891 () Bool)

(assert (=> b!156389 (= e!93890 e!93891)))

(declare-fun res!71277 () Bool)

(assert (=> b!156389 (=> (not res!71277) (not e!93891))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!24 (Rule!750 List!2721) Bool)

(assert (=> b!156389 (= res!71277 (ruleDisjointCharsFromAllFromOtherType!24 (h!8108 rules!1920) rules!1920))))

(declare-fun b!156390 () Bool)

(assert (=> b!156390 (= e!93891 (sepAndNonSepRulesDisjointChars!64 rules!1920 (t!25385 rules!1920)))))

(assert (= (and d!37731 (not res!71276)) b!156389))

(assert (= (and b!156389 res!71277) b!156390))

(declare-fun m!142703 () Bool)

(assert (=> b!156389 m!142703))

(declare-fun m!142705 () Bool)

(assert (=> b!156390 m!142705))

(assert (=> b!156038 d!37731))

(declare-fun d!37733 () Bool)

(assert (=> d!37733 (= (inv!3510 (tag!653 (rule!982 separatorToken!170))) (= (mod (str.len (value!17852 (tag!653 (rule!982 separatorToken!170)))) 2) 0))))

(assert (=> b!156027 d!37733))

(declare-fun d!37735 () Bool)

(declare-fun res!71280 () Bool)

(declare-fun e!93894 () Bool)

(assert (=> d!37735 (=> (not res!71280) (not e!93894))))

(declare-fun semiInverseModEq!165 (Int Int) Bool)

(assert (=> d!37735 (= res!71280 (semiInverseModEq!165 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toValue!1118 (transformation!475 (rule!982 separatorToken!170)))))))

(assert (=> d!37735 (= (inv!3514 (transformation!475 (rule!982 separatorToken!170))) e!93894)))

(declare-fun b!156393 () Bool)

(declare-fun equivClasses!148 (Int Int) Bool)

(assert (=> b!156393 (= e!93894 (equivClasses!148 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toValue!1118 (transformation!475 (rule!982 separatorToken!170)))))))

(assert (= (and d!37735 res!71280) b!156393))

(declare-fun m!142707 () Bool)

(assert (=> d!37735 m!142707))

(declare-fun m!142709 () Bool)

(assert (=> b!156393 m!142709))

(assert (=> b!156027 d!37735))

(declare-fun d!37737 () Bool)

(assert (=> d!37737 (= (inv!3510 (tag!653 (rule!982 (h!8109 tokens!465)))) (= (mod (str.len (value!17852 (tag!653 (rule!982 (h!8109 tokens!465))))) 2) 0))))

(assert (=> b!156037 d!37737))

(declare-fun d!37739 () Bool)

(declare-fun res!71281 () Bool)

(declare-fun e!93895 () Bool)

(assert (=> d!37739 (=> (not res!71281) (not e!93895))))

(assert (=> d!37739 (= res!71281 (semiInverseModEq!165 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toValue!1118 (transformation!475 (rule!982 (h!8109 tokens!465))))))))

(assert (=> d!37739 (= (inv!3514 (transformation!475 (rule!982 (h!8109 tokens!465)))) e!93895)))

(declare-fun b!156394 () Bool)

(assert (=> b!156394 (= e!93895 (equivClasses!148 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toValue!1118 (transformation!475 (rule!982 (h!8109 tokens!465))))))))

(assert (= (and d!37739 res!71281) b!156394))

(declare-fun m!142711 () Bool)

(assert (=> d!37739 m!142711))

(declare-fun m!142713 () Bool)

(assert (=> b!156394 m!142713))

(assert (=> b!156037 d!37739))

(declare-fun d!37741 () Bool)

(declare-fun lt!46350 () Bool)

(declare-fun e!93900 () Bool)

(assert (=> d!37741 (= lt!46350 e!93900)))

(declare-fun res!71289 () Bool)

(assert (=> d!37741 (=> (not res!71289) (not e!93900))))

(declare-datatypes ((tuple2!2626 0))(
  ( (tuple2!2627 (_1!1529 BalanceConc!1554) (_2!1529 BalanceConc!1552)) )
))
(declare-fun lex!175 (LexerInterface!361 List!2721 BalanceConc!1552) tuple2!2626)

(assert (=> d!37741 (= res!71289 (= (list!965 (_1!1529 (lex!175 thiss!17480 rules!1920 (print!100 thiss!17480 (singletonSeq!33 separatorToken!170))))) (list!965 (singletonSeq!33 separatorToken!170))))))

(declare-fun e!93901 () Bool)

(assert (=> d!37741 (= lt!46350 e!93901)))

(declare-fun res!71288 () Bool)

(assert (=> d!37741 (=> (not res!71288) (not e!93901))))

(declare-fun lt!46349 () tuple2!2626)

(assert (=> d!37741 (= res!71288 (= (size!2287 (_1!1529 lt!46349)) 1))))

(assert (=> d!37741 (= lt!46349 (lex!175 thiss!17480 rules!1920 (print!100 thiss!17480 (singletonSeq!33 separatorToken!170))))))

(assert (=> d!37741 (not (isEmpty!1080 rules!1920))))

(assert (=> d!37741 (= (rulesProduceIndividualToken!110 thiss!17480 rules!1920 separatorToken!170) lt!46350)))

(declare-fun b!156401 () Bool)

(declare-fun res!71290 () Bool)

(assert (=> b!156401 (=> (not res!71290) (not e!93901))))

(assert (=> b!156401 (= res!71290 (= (apply!365 (_1!1529 lt!46349) 0) separatorToken!170))))

(declare-fun b!156402 () Bool)

(declare-fun isEmpty!1084 (BalanceConc!1552) Bool)

(assert (=> b!156402 (= e!93901 (isEmpty!1084 (_2!1529 lt!46349)))))

(declare-fun b!156403 () Bool)

(assert (=> b!156403 (= e!93900 (isEmpty!1084 (_2!1529 (lex!175 thiss!17480 rules!1920 (print!100 thiss!17480 (singletonSeq!33 separatorToken!170))))))))

(assert (= (and d!37741 res!71288) b!156401))

(assert (= (and b!156401 res!71290) b!156402))

(assert (= (and d!37741 res!71289) b!156403))

(declare-fun m!142715 () Bool)

(assert (=> d!37741 m!142715))

(declare-fun m!142717 () Bool)

(assert (=> d!37741 m!142717))

(declare-fun m!142719 () Bool)

(assert (=> d!37741 m!142719))

(declare-fun m!142721 () Bool)

(assert (=> d!37741 m!142721))

(assert (=> d!37741 m!142717))

(declare-fun m!142723 () Bool)

(assert (=> d!37741 m!142723))

(assert (=> d!37741 m!142717))

(assert (=> d!37741 m!142253))

(assert (=> d!37741 m!142723))

(declare-fun m!142725 () Bool)

(assert (=> d!37741 m!142725))

(declare-fun m!142727 () Bool)

(assert (=> b!156401 m!142727))

(declare-fun m!142729 () Bool)

(assert (=> b!156402 m!142729))

(assert (=> b!156403 m!142717))

(assert (=> b!156403 m!142717))

(assert (=> b!156403 m!142723))

(assert (=> b!156403 m!142723))

(assert (=> b!156403 m!142725))

(declare-fun m!142731 () Bool)

(assert (=> b!156403 m!142731))

(assert (=> b!156018 d!37741))

(declare-fun lt!46353 () List!2720)

(declare-fun b!156415 () Bool)

(declare-fun e!93906 () Bool)

(assert (=> b!156415 (= e!93906 (or (not (= lt!46189 Nil!2710)) (= lt!46353 lt!46185)))))

(declare-fun d!37743 () Bool)

(assert (=> d!37743 e!93906))

(declare-fun res!71295 () Bool)

(assert (=> d!37743 (=> (not res!71295) (not e!93906))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!375 (List!2720) (InoxSet C!2320))

(assert (=> d!37743 (= res!71295 (= (content!375 lt!46353) ((_ map or) (content!375 lt!46185) (content!375 lt!46189))))))

(declare-fun e!93907 () List!2720)

(assert (=> d!37743 (= lt!46353 e!93907)))

(declare-fun c!31413 () Bool)

(assert (=> d!37743 (= c!31413 ((_ is Nil!2710) lt!46185))))

(assert (=> d!37743 (= (++!592 lt!46185 lt!46189) lt!46353)))

(declare-fun b!156414 () Bool)

(declare-fun res!71296 () Bool)

(assert (=> b!156414 (=> (not res!71296) (not e!93906))))

(assert (=> b!156414 (= res!71296 (= (size!2291 lt!46353) (+ (size!2291 lt!46185) (size!2291 lt!46189))))))

(declare-fun b!156413 () Bool)

(assert (=> b!156413 (= e!93907 (Cons!2710 (h!8107 lt!46185) (++!592 (t!25384 lt!46185) lt!46189)))))

(declare-fun b!156412 () Bool)

(assert (=> b!156412 (= e!93907 lt!46189)))

(assert (= (and d!37743 c!31413) b!156412))

(assert (= (and d!37743 (not c!31413)) b!156413))

(assert (= (and d!37743 res!71295) b!156414))

(assert (= (and b!156414 res!71296) b!156415))

(declare-fun m!142733 () Bool)

(assert (=> d!37743 m!142733))

(declare-fun m!142735 () Bool)

(assert (=> d!37743 m!142735))

(declare-fun m!142737 () Bool)

(assert (=> d!37743 m!142737))

(declare-fun m!142739 () Bool)

(assert (=> b!156414 m!142739))

(declare-fun m!142741 () Bool)

(assert (=> b!156414 m!142741))

(declare-fun m!142743 () Bool)

(assert (=> b!156414 m!142743))

(declare-fun m!142745 () Bool)

(assert (=> b!156413 m!142745))

(assert (=> b!156035 d!37743))

(declare-fun d!37745 () Bool)

(assert (=> d!37745 (= (seqFromList!327 (t!25386 tokens!465)) (fromListB!137 (t!25386 tokens!465)))))

(declare-fun bs!14470 () Bool)

(assert (= bs!14470 d!37745))

(declare-fun m!142747 () Bool)

(assert (=> bs!14470 m!142747))

(assert (=> b!156035 d!37745))

(declare-fun d!37747 () Bool)

(assert (=> d!37747 (= (list!961 (charsOf!130 separatorToken!170)) (list!964 (c!31335 (charsOf!130 separatorToken!170))))))

(declare-fun bs!14471 () Bool)

(assert (= bs!14471 d!37747))

(declare-fun m!142749 () Bool)

(assert (=> bs!14471 m!142749))

(assert (=> b!156035 d!37747))

(declare-fun bs!14472 () Bool)

(declare-fun b!156422 () Bool)

(assert (= bs!14472 (and b!156422 d!37663)))

(declare-fun lambda!4180 () Int)

(assert (=> bs!14472 (= lambda!4180 lambda!4158)))

(declare-fun bs!14473 () Bool)

(assert (= bs!14473 (and b!156422 b!156237)))

(assert (=> bs!14473 (= lambda!4180 lambda!4169)))

(declare-fun bs!14474 () Bool)

(assert (= bs!14474 (and b!156422 d!37697)))

(assert (=> bs!14474 (not (= lambda!4180 lambda!4168))))

(declare-fun bs!14475 () Bool)

(assert (= bs!14475 (and b!156422 b!156362)))

(assert (=> bs!14475 (= lambda!4180 lambda!4179)))

(declare-fun bs!14476 () Bool)

(assert (= bs!14476 (and b!156422 b!156022)))

(assert (=> bs!14476 (not (= lambda!4180 lambda!4150))))

(declare-fun b!156426 () Bool)

(declare-fun e!93914 () Bool)

(assert (=> b!156426 (= e!93914 true)))

(declare-fun b!156425 () Bool)

(declare-fun e!93913 () Bool)

(assert (=> b!156425 (= e!93913 e!93914)))

(declare-fun b!156424 () Bool)

(declare-fun e!93912 () Bool)

(assert (=> b!156424 (= e!93912 e!93913)))

(assert (=> b!156422 e!93912))

(assert (= b!156425 b!156426))

(assert (= b!156424 b!156425))

(assert (= (and b!156422 ((_ is Cons!2711) rules!1920)) b!156424))

(assert (=> b!156426 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4180))))

(assert (=> b!156426 (< (dynLambda!963 order!1369 (toChars!977 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4180))))

(assert (=> b!156422 true))

(declare-fun b!156416 () Bool)

(declare-fun e!93910 () List!2720)

(assert (=> b!156416 (= e!93910 Nil!2710)))

(assert (=> b!156416 (= (print!100 thiss!17480 (singletonSeq!33 (h!8109 (t!25386 tokens!465)))) (printTailRec!63 thiss!17480 (singletonSeq!33 (h!8109 (t!25386 tokens!465))) 0 (BalanceConc!1553 Empty!772)))))

(declare-fun lt!46357 () Unit!2136)

(declare-fun Unit!2148 () Unit!2136)

(assert (=> b!156416 (= lt!46357 Unit!2148)))

(declare-fun lt!46354 () Unit!2136)

(declare-fun call!6513 () List!2720)

(declare-fun lt!46358 () List!2720)

(assert (=> b!156416 (= lt!46354 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!22 thiss!17480 rules!1920 call!6513 lt!46358))))

(assert (=> b!156416 false))

(declare-fun lt!46359 () Unit!2136)

(declare-fun Unit!2149 () Unit!2136)

(assert (=> b!156416 (= lt!46359 Unit!2149)))

(declare-fun b!156417 () Bool)

(declare-fun e!93911 () BalanceConc!1552)

(declare-fun call!6515 () BalanceConc!1552)

(assert (=> b!156417 (= e!93911 call!6515)))

(declare-fun b!156418 () Bool)

(declare-fun e!93908 () List!2720)

(assert (=> b!156418 (= e!93908 Nil!2710)))

(declare-fun bm!6507 () Bool)

(declare-fun call!6512 () BalanceConc!1552)

(assert (=> bm!6507 (= call!6512 (charsOf!130 (h!8109 (t!25386 tokens!465))))))

(declare-fun b!156419 () Bool)

(declare-fun call!6516 () List!2720)

(assert (=> b!156419 (= e!93910 (++!592 call!6516 lt!46358))))

(declare-fun d!37749 () Bool)

(declare-fun c!31415 () Bool)

(assert (=> d!37749 (= c!31415 ((_ is Cons!2712) (t!25386 tokens!465)))))

(assert (=> d!37749 (= (printWithSeparatorTokenWhenNeededList!54 thiss!17480 rules!1920 (t!25386 tokens!465) separatorToken!170) e!93908)))

(declare-fun b!156420 () Bool)

(declare-fun e!93909 () List!2720)

(assert (=> b!156420 (= e!93909 call!6516)))

(declare-fun bm!6508 () Bool)

(assert (=> bm!6508 (= call!6515 call!6512)))

(declare-fun call!6514 () List!2720)

(declare-fun c!31417 () Bool)

(declare-fun bm!6509 () Bool)

(assert (=> bm!6509 (= call!6516 (++!592 call!6514 (ite c!31417 lt!46358 call!6513)))))

(declare-fun b!156421 () Bool)

(assert (=> b!156421 (= e!93911 (charsOf!130 separatorToken!170))))

(declare-fun bm!6510 () Bool)

(assert (=> bm!6510 (= call!6514 (list!961 (ite c!31417 call!6512 call!6515)))))

(assert (=> b!156422 (= e!93908 e!93909)))

(declare-fun lt!46356 () Unit!2136)

(assert (=> b!156422 (= lt!46356 (forallContained!58 (t!25386 tokens!465) lambda!4180 (h!8109 (t!25386 tokens!465))))))

(assert (=> b!156422 (= lt!46358 (printWithSeparatorTokenWhenNeededList!54 thiss!17480 rules!1920 (t!25386 (t!25386 tokens!465)) separatorToken!170))))

(declare-fun lt!46355 () Option!259)

(assert (=> b!156422 (= lt!46355 (maxPrefix!115 thiss!17480 rules!1920 (++!592 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465)))) lt!46358)))))

(assert (=> b!156422 (= c!31417 (and ((_ is Some!258) lt!46355) (= (_1!1528 (v!13651 lt!46355)) (h!8109 (t!25386 tokens!465)))))))

(declare-fun b!156423 () Bool)

(declare-fun c!31414 () Bool)

(assert (=> b!156423 (= c!31414 (and ((_ is Some!258) lt!46355) (not (= (_1!1528 (v!13651 lt!46355)) (h!8109 (t!25386 tokens!465))))))))

(assert (=> b!156423 (= e!93909 e!93910)))

(declare-fun bm!6511 () Bool)

(assert (=> bm!6511 (= call!6513 (list!961 e!93911))))

(declare-fun c!31416 () Bool)

(assert (=> bm!6511 (= c!31416 c!31414)))

(assert (= (and d!37749 c!31415) b!156422))

(assert (= (and d!37749 (not c!31415)) b!156418))

(assert (= (and b!156422 c!31417) b!156420))

(assert (= (and b!156422 (not c!31417)) b!156423))

(assert (= (and b!156423 c!31414) b!156419))

(assert (= (and b!156423 (not c!31414)) b!156416))

(assert (= (or b!156419 b!156416) bm!6508))

(assert (= (or b!156419 b!156416) bm!6511))

(assert (= (and bm!6511 c!31416) b!156421))

(assert (= (and bm!6511 (not c!31416)) b!156417))

(assert (= (or b!156420 bm!6508) bm!6507))

(assert (= (or b!156420 b!156419) bm!6510))

(assert (= (or b!156420 b!156419) bm!6509))

(declare-fun m!142751 () Bool)

(assert (=> bm!6510 m!142751))

(declare-fun m!142753 () Bool)

(assert (=> bm!6507 m!142753))

(declare-fun m!142755 () Bool)

(assert (=> b!156422 m!142755))

(declare-fun m!142757 () Bool)

(assert (=> b!156422 m!142757))

(declare-fun m!142759 () Bool)

(assert (=> b!156422 m!142759))

(declare-fun m!142761 () Bool)

(assert (=> b!156422 m!142761))

(assert (=> b!156422 m!142753))

(declare-fun m!142763 () Bool)

(assert (=> b!156422 m!142763))

(assert (=> b!156422 m!142763))

(assert (=> b!156422 m!142759))

(assert (=> b!156422 m!142753))

(assert (=> b!156421 m!142275))

(declare-fun m!142765 () Bool)

(assert (=> b!156416 m!142765))

(assert (=> b!156416 m!142765))

(declare-fun m!142767 () Bool)

(assert (=> b!156416 m!142767))

(assert (=> b!156416 m!142765))

(declare-fun m!142769 () Bool)

(assert (=> b!156416 m!142769))

(declare-fun m!142771 () Bool)

(assert (=> b!156416 m!142771))

(declare-fun m!142773 () Bool)

(assert (=> bm!6511 m!142773))

(declare-fun m!142775 () Bool)

(assert (=> b!156419 m!142775))

(declare-fun m!142777 () Bool)

(assert (=> bm!6509 m!142777))

(assert (=> b!156035 d!37749))

(declare-fun d!37751 () Bool)

(declare-fun lt!46362 () Int)

(declare-fun size!2292 (List!2722) Int)

(assert (=> d!37751 (= lt!46362 (size!2292 (list!965 (seqFromList!327 (t!25386 tokens!465)))))))

(declare-fun size!2293 (Conc!773) Int)

(assert (=> d!37751 (= lt!46362 (size!2293 (c!31337 (seqFromList!327 (t!25386 tokens!465)))))))

(assert (=> d!37751 (= (size!2287 (seqFromList!327 (t!25386 tokens!465))) lt!46362)))

(declare-fun bs!14477 () Bool)

(assert (= bs!14477 d!37751))

(assert (=> bs!14477 m!142269))

(declare-fun m!142779 () Bool)

(assert (=> bs!14477 m!142779))

(assert (=> bs!14477 m!142779))

(declare-fun m!142781 () Bool)

(assert (=> bs!14477 m!142781))

(declare-fun m!142783 () Bool)

(assert (=> bs!14477 m!142783))

(assert (=> b!156035 d!37751))

(declare-fun d!37753 () Bool)

(assert (=> d!37753 (= (list!961 (charsOf!130 (h!8109 tokens!465))) (list!964 (c!31335 (charsOf!130 (h!8109 tokens!465)))))))

(declare-fun bs!14478 () Bool)

(assert (= bs!14478 d!37753))

(declare-fun m!142785 () Bool)

(assert (=> bs!14478 m!142785))

(assert (=> b!156035 d!37753))

(declare-fun d!37755 () Bool)

(declare-fun lt!46365 () BalanceConc!1552)

(assert (=> d!37755 (= (list!961 lt!46365) (originalCharacters!518 (h!8109 tokens!465)))))

(assert (=> d!37755 (= lt!46365 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465))))))

(assert (=> d!37755 (= (charsOf!130 (h!8109 tokens!465)) lt!46365)))

(declare-fun b_lambda!3073 () Bool)

(assert (=> (not b_lambda!3073) (not d!37755)))

(assert (=> d!37755 t!25394))

(declare-fun b_and!9421 () Bool)

(assert (= b_and!9415 (and (=> t!25394 result!7992) b_and!9421)))

(assert (=> d!37755 t!25396))

(declare-fun b_and!9423 () Bool)

(assert (= b_and!9417 (and (=> t!25396 result!7996) b_and!9423)))

(assert (=> d!37755 t!25398))

(declare-fun b_and!9425 () Bool)

(assert (= b_and!9419 (and (=> t!25398 result!7998) b_and!9425)))

(declare-fun m!142787 () Bool)

(assert (=> d!37755 m!142787))

(assert (=> d!37755 m!142357))

(assert (=> b!156035 d!37755))

(declare-fun b!156430 () Bool)

(declare-fun e!93915 () Bool)

(declare-fun lt!46366 () List!2720)

(assert (=> b!156430 (= e!93915 (or (not (= lt!46183 Nil!2710)) (= lt!46366 lt!46185)))))

(declare-fun d!37757 () Bool)

(assert (=> d!37757 e!93915))

(declare-fun res!71297 () Bool)

(assert (=> d!37757 (=> (not res!71297) (not e!93915))))

(assert (=> d!37757 (= res!71297 (= (content!375 lt!46366) ((_ map or) (content!375 lt!46185) (content!375 lt!46183))))))

(declare-fun e!93916 () List!2720)

(assert (=> d!37757 (= lt!46366 e!93916)))

(declare-fun c!31418 () Bool)

(assert (=> d!37757 (= c!31418 ((_ is Nil!2710) lt!46185))))

(assert (=> d!37757 (= (++!592 lt!46185 lt!46183) lt!46366)))

(declare-fun b!156429 () Bool)

(declare-fun res!71298 () Bool)

(assert (=> b!156429 (=> (not res!71298) (not e!93915))))

(assert (=> b!156429 (= res!71298 (= (size!2291 lt!46366) (+ (size!2291 lt!46185) (size!2291 lt!46183))))))

(declare-fun b!156428 () Bool)

(assert (=> b!156428 (= e!93916 (Cons!2710 (h!8107 lt!46185) (++!592 (t!25384 lt!46185) lt!46183)))))

(declare-fun b!156427 () Bool)

(assert (=> b!156427 (= e!93916 lt!46183)))

(assert (= (and d!37757 c!31418) b!156427))

(assert (= (and d!37757 (not c!31418)) b!156428))

(assert (= (and d!37757 res!71297) b!156429))

(assert (= (and b!156429 res!71298) b!156430))

(declare-fun m!142789 () Bool)

(assert (=> d!37757 m!142789))

(assert (=> d!37757 m!142735))

(declare-fun m!142791 () Bool)

(assert (=> d!37757 m!142791))

(declare-fun m!142793 () Bool)

(assert (=> b!156429 m!142793))

(assert (=> b!156429 m!142741))

(declare-fun m!142795 () Bool)

(assert (=> b!156429 m!142795))

(declare-fun m!142797 () Bool)

(assert (=> b!156428 m!142797))

(assert (=> b!156035 d!37757))

(declare-fun d!37759 () Bool)

(declare-fun lt!46367 () BalanceConc!1552)

(assert (=> d!37759 (= (list!961 lt!46367) (originalCharacters!518 separatorToken!170))))

(assert (=> d!37759 (= lt!46367 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170)))))

(assert (=> d!37759 (= (charsOf!130 separatorToken!170) lt!46367)))

(declare-fun b_lambda!3075 () Bool)

(assert (=> (not b_lambda!3075) (not d!37759)))

(assert (=> d!37759 t!25435))

(declare-fun b_and!9427 () Bool)

(assert (= b_and!9421 (and (=> t!25435 result!8022) b_and!9427)))

(assert (=> d!37759 t!25437))

(declare-fun b_and!9429 () Bool)

(assert (= b_and!9423 (and (=> t!25437 result!8024) b_and!9429)))

(assert (=> d!37759 t!25439))

(declare-fun b_and!9431 () Bool)

(assert (= b_and!9425 (and (=> t!25439 result!8026) b_and!9431)))

(declare-fun m!142799 () Bool)

(assert (=> d!37759 m!142799))

(assert (=> d!37759 m!142691))

(assert (=> b!156035 d!37759))

(declare-fun b!156434 () Bool)

(declare-fun e!93917 () Bool)

(declare-fun lt!46368 () List!2720)

(assert (=> b!156434 (= e!93917 (or (not (= lt!46187 Nil!2710)) (= lt!46368 (++!592 lt!46185 lt!46189))))))

(declare-fun d!37761 () Bool)

(assert (=> d!37761 e!93917))

(declare-fun res!71299 () Bool)

(assert (=> d!37761 (=> (not res!71299) (not e!93917))))

(assert (=> d!37761 (= res!71299 (= (content!375 lt!46368) ((_ map or) (content!375 (++!592 lt!46185 lt!46189)) (content!375 lt!46187))))))

(declare-fun e!93918 () List!2720)

(assert (=> d!37761 (= lt!46368 e!93918)))

(declare-fun c!31419 () Bool)

(assert (=> d!37761 (= c!31419 ((_ is Nil!2710) (++!592 lt!46185 lt!46189)))))

(assert (=> d!37761 (= (++!592 (++!592 lt!46185 lt!46189) lt!46187) lt!46368)))

(declare-fun b!156433 () Bool)

(declare-fun res!71300 () Bool)

(assert (=> b!156433 (=> (not res!71300) (not e!93917))))

(assert (=> b!156433 (= res!71300 (= (size!2291 lt!46368) (+ (size!2291 (++!592 lt!46185 lt!46189)) (size!2291 lt!46187))))))

(declare-fun b!156432 () Bool)

(assert (=> b!156432 (= e!93918 (Cons!2710 (h!8107 (++!592 lt!46185 lt!46189)) (++!592 (t!25384 (++!592 lt!46185 lt!46189)) lt!46187)))))

(declare-fun b!156431 () Bool)

(assert (=> b!156431 (= e!93918 lt!46187)))

(assert (= (and d!37761 c!31419) b!156431))

(assert (= (and d!37761 (not c!31419)) b!156432))

(assert (= (and d!37761 res!71299) b!156433))

(assert (= (and b!156433 res!71300) b!156434))

(declare-fun m!142801 () Bool)

(assert (=> d!37761 m!142801))

(assert (=> d!37761 m!142273))

(declare-fun m!142803 () Bool)

(assert (=> d!37761 m!142803))

(declare-fun m!142805 () Bool)

(assert (=> d!37761 m!142805))

(declare-fun m!142807 () Bool)

(assert (=> b!156433 m!142807))

(assert (=> b!156433 m!142273))

(declare-fun m!142809 () Bool)

(assert (=> b!156433 m!142809))

(declare-fun m!142811 () Bool)

(assert (=> b!156433 m!142811))

(declare-fun m!142813 () Bool)

(assert (=> b!156432 m!142813))

(assert (=> b!156035 d!37761))

(declare-fun lt!46369 () List!2720)

(declare-fun e!93919 () Bool)

(declare-fun b!156438 () Bool)

(assert (=> b!156438 (= e!93919 (or (not (= lt!46187 Nil!2710)) (= lt!46369 lt!46189)))))

(declare-fun d!37763 () Bool)

(assert (=> d!37763 e!93919))

(declare-fun res!71301 () Bool)

(assert (=> d!37763 (=> (not res!71301) (not e!93919))))

(assert (=> d!37763 (= res!71301 (= (content!375 lt!46369) ((_ map or) (content!375 lt!46189) (content!375 lt!46187))))))

(declare-fun e!93920 () List!2720)

(assert (=> d!37763 (= lt!46369 e!93920)))

(declare-fun c!31420 () Bool)

(assert (=> d!37763 (= c!31420 ((_ is Nil!2710) lt!46189))))

(assert (=> d!37763 (= (++!592 lt!46189 lt!46187) lt!46369)))

(declare-fun b!156437 () Bool)

(declare-fun res!71302 () Bool)

(assert (=> b!156437 (=> (not res!71302) (not e!93919))))

(assert (=> b!156437 (= res!71302 (= (size!2291 lt!46369) (+ (size!2291 lt!46189) (size!2291 lt!46187))))))

(declare-fun b!156436 () Bool)

(assert (=> b!156436 (= e!93920 (Cons!2710 (h!8107 lt!46189) (++!592 (t!25384 lt!46189) lt!46187)))))

(declare-fun b!156435 () Bool)

(assert (=> b!156435 (= e!93920 lt!46187)))

(assert (= (and d!37763 c!31420) b!156435))

(assert (= (and d!37763 (not c!31420)) b!156436))

(assert (= (and d!37763 res!71301) b!156437))

(assert (= (and b!156437 res!71302) b!156438))

(declare-fun m!142815 () Bool)

(assert (=> d!37763 m!142815))

(assert (=> d!37763 m!142737))

(assert (=> d!37763 m!142805))

(declare-fun m!142817 () Bool)

(assert (=> b!156437 m!142817))

(assert (=> b!156437 m!142743))

(assert (=> b!156437 m!142811))

(declare-fun m!142819 () Bool)

(assert (=> b!156436 m!142819))

(assert (=> b!156035 d!37763))

(declare-fun d!37765 () Bool)

(assert (=> d!37765 (= (++!592 (++!592 lt!46185 lt!46189) lt!46187) (++!592 lt!46185 (++!592 lt!46189 lt!46187)))))

(declare-fun lt!46372 () Unit!2136)

(declare-fun choose!1766 (List!2720 List!2720 List!2720) Unit!2136)

(assert (=> d!37765 (= lt!46372 (choose!1766 lt!46185 lt!46189 lt!46187))))

(assert (=> d!37765 (= (lemmaConcatAssociativity!156 lt!46185 lt!46189 lt!46187) lt!46372)))

(declare-fun bs!14479 () Bool)

(assert (= bs!14479 d!37765))

(assert (=> bs!14479 m!142281))

(declare-fun m!142821 () Bool)

(assert (=> bs!14479 m!142821))

(assert (=> bs!14479 m!142273))

(assert (=> bs!14479 m!142287))

(assert (=> bs!14479 m!142281))

(declare-fun m!142823 () Bool)

(assert (=> bs!14479 m!142823))

(assert (=> bs!14479 m!142273))

(assert (=> b!156035 d!37765))

(declare-fun d!37767 () Bool)

(declare-fun c!31422 () Bool)

(assert (=> d!37767 (= c!31422 ((_ is IntegerValue!1491) (value!17853 separatorToken!170)))))

(declare-fun e!93923 () Bool)

(assert (=> d!37767 (= (inv!21 (value!17853 separatorToken!170)) e!93923)))

(declare-fun b!156439 () Bool)

(declare-fun res!71303 () Bool)

(declare-fun e!93921 () Bool)

(assert (=> b!156439 (=> res!71303 e!93921)))

(assert (=> b!156439 (= res!71303 (not ((_ is IntegerValue!1493) (value!17853 separatorToken!170))))))

(declare-fun e!93922 () Bool)

(assert (=> b!156439 (= e!93922 e!93921)))

(declare-fun b!156440 () Bool)

(assert (=> b!156440 (= e!93923 (inv!16 (value!17853 separatorToken!170)))))

(declare-fun b!156441 () Bool)

(assert (=> b!156441 (= e!93923 e!93922)))

(declare-fun c!31421 () Bool)

(assert (=> b!156441 (= c!31421 ((_ is IntegerValue!1492) (value!17853 separatorToken!170)))))

(declare-fun b!156442 () Bool)

(assert (=> b!156442 (= e!93922 (inv!17 (value!17853 separatorToken!170)))))

(declare-fun b!156443 () Bool)

(assert (=> b!156443 (= e!93921 (inv!15 (value!17853 separatorToken!170)))))

(assert (= (and d!37767 c!31422) b!156440))

(assert (= (and d!37767 (not c!31422)) b!156441))

(assert (= (and b!156441 c!31421) b!156442))

(assert (= (and b!156441 (not c!31421)) b!156439))

(assert (= (and b!156439 (not res!71303)) b!156443))

(declare-fun m!142825 () Bool)

(assert (=> b!156440 m!142825))

(declare-fun m!142827 () Bool)

(assert (=> b!156442 m!142827))

(declare-fun m!142829 () Bool)

(assert (=> b!156443 m!142829))

(assert (=> b!156024 d!37767))

(declare-fun d!37769 () Bool)

(assert (=> d!37769 (= (inv!3510 (tag!653 (h!8108 rules!1920))) (= (mod (str.len (value!17852 (tag!653 (h!8108 rules!1920)))) 2) 0))))

(assert (=> b!156036 d!37769))

(declare-fun d!37771 () Bool)

(declare-fun res!71304 () Bool)

(declare-fun e!93924 () Bool)

(assert (=> d!37771 (=> (not res!71304) (not e!93924))))

(assert (=> d!37771 (= res!71304 (semiInverseModEq!165 (toChars!977 (transformation!475 (h!8108 rules!1920))) (toValue!1118 (transformation!475 (h!8108 rules!1920)))))))

(assert (=> d!37771 (= (inv!3514 (transformation!475 (h!8108 rules!1920))) e!93924)))

(declare-fun b!156444 () Bool)

(assert (=> b!156444 (= e!93924 (equivClasses!148 (toChars!977 (transformation!475 (h!8108 rules!1920))) (toValue!1118 (transformation!475 (h!8108 rules!1920)))))))

(assert (= (and d!37771 res!71304) b!156444))

(declare-fun m!142831 () Bool)

(assert (=> d!37771 m!142831))

(declare-fun m!142833 () Bool)

(assert (=> b!156444 m!142833))

(assert (=> b!156036 d!37771))

(declare-fun d!37773 () Bool)

(declare-fun res!71307 () Bool)

(declare-fun e!93927 () Bool)

(assert (=> d!37773 (=> (not res!71307) (not e!93927))))

(declare-fun rulesValid!131 (LexerInterface!361 List!2721) Bool)

(assert (=> d!37773 (= res!71307 (rulesValid!131 thiss!17480 rules!1920))))

(assert (=> d!37773 (= (rulesInvariant!327 thiss!17480 rules!1920) e!93927)))

(declare-fun b!156447 () Bool)

(declare-datatypes ((List!2724 0))(
  ( (Nil!2714) (Cons!2714 (h!8111 String!3565) (t!25450 List!2724)) )
))
(declare-fun noDuplicateTag!131 (LexerInterface!361 List!2721 List!2724) Bool)

(assert (=> b!156447 (= e!93927 (noDuplicateTag!131 thiss!17480 rules!1920 Nil!2714))))

(assert (= (and d!37773 res!71307) b!156447))

(declare-fun m!142835 () Bool)

(assert (=> d!37773 m!142835))

(declare-fun m!142837 () Bool)

(assert (=> b!156447 m!142837))

(assert (=> b!156025 d!37773))

(declare-fun b!156461 () Bool)

(declare-fun b_free!5845 () Bool)

(declare-fun b_next!5845 () Bool)

(assert (=> b!156461 (= b_free!5845 (not b_next!5845))))

(declare-fun tp!80467 () Bool)

(declare-fun b_and!9433 () Bool)

(assert (=> b!156461 (= tp!80467 b_and!9433)))

(declare-fun b_free!5847 () Bool)

(declare-fun b_next!5847 () Bool)

(assert (=> b!156461 (= b_free!5847 (not b_next!5847))))

(declare-fun t!25442 () Bool)

(declare-fun tb!5493 () Bool)

(assert (=> (and b!156461 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465))))) t!25442) tb!5493))

(declare-fun result!8030 () Bool)

(assert (= result!8030 result!7992))

(assert (=> b!156079 t!25442))

(declare-fun tb!5495 () Bool)

(declare-fun t!25444 () Bool)

(assert (=> (and b!156461 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (toChars!977 (transformation!475 (rule!982 separatorToken!170)))) t!25444) tb!5495))

(declare-fun result!8032 () Bool)

(assert (= result!8032 result!8022))

(assert (=> b!156367 t!25444))

(assert (=> d!37755 t!25442))

(assert (=> d!37759 t!25444))

(declare-fun b_and!9435 () Bool)

(declare-fun tp!80469 () Bool)

(assert (=> b!156461 (= tp!80469 (and (=> t!25442 result!8030) (=> t!25444 result!8032) b_and!9435))))

(declare-fun tp!80468 () Bool)

(declare-fun e!93945 () Bool)

(declare-fun b!156460 () Bool)

(declare-fun e!93943 () Bool)

(assert (=> b!156460 (= e!93945 (and tp!80468 (inv!3510 (tag!653 (rule!982 (h!8109 (t!25386 tokens!465))))) (inv!3514 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) e!93943))))

(declare-fun e!93942 () Bool)

(assert (=> b!156021 (= tp!80389 e!93942)))

(declare-fun tp!80466 () Bool)

(declare-fun b!156459 () Bool)

(declare-fun e!93944 () Bool)

(assert (=> b!156459 (= e!93944 (and (inv!21 (value!17853 (h!8109 (t!25386 tokens!465)))) e!93945 tp!80466))))

(assert (=> b!156461 (= e!93943 (and tp!80467 tp!80469))))

(declare-fun b!156458 () Bool)

(declare-fun tp!80470 () Bool)

(assert (=> b!156458 (= e!93942 (and (inv!3513 (h!8109 (t!25386 tokens!465))) e!93944 tp!80470))))

(assert (= b!156460 b!156461))

(assert (= b!156459 b!156460))

(assert (= b!156458 b!156459))

(assert (= (and b!156021 ((_ is Cons!2712) (t!25386 tokens!465))) b!156458))

(declare-fun m!142839 () Bool)

(assert (=> b!156460 m!142839))

(declare-fun m!142841 () Bool)

(assert (=> b!156460 m!142841))

(declare-fun m!142843 () Bool)

(assert (=> b!156459 m!142843))

(declare-fun m!142845 () Bool)

(assert (=> b!156458 m!142845))

(declare-fun b!156466 () Bool)

(declare-fun e!93948 () Bool)

(declare-fun tp_is_empty!1627 () Bool)

(declare-fun tp!80473 () Bool)

(assert (=> b!156466 (= e!93948 (and tp_is_empty!1627 tp!80473))))

(assert (=> b!156031 (= tp!80380 e!93948)))

(assert (= (and b!156031 ((_ is Cons!2710) (originalCharacters!518 (h!8109 tokens!465)))) b!156466))

(declare-fun b!156478 () Bool)

(declare-fun e!93951 () Bool)

(declare-fun tp!80485 () Bool)

(declare-fun tp!80486 () Bool)

(assert (=> b!156478 (= e!93951 (and tp!80485 tp!80486))))

(assert (=> b!156027 (= tp!80381 e!93951)))

(declare-fun b!156477 () Bool)

(assert (=> b!156477 (= e!93951 tp_is_empty!1627)))

(declare-fun b!156480 () Bool)

(declare-fun tp!80487 () Bool)

(declare-fun tp!80484 () Bool)

(assert (=> b!156480 (= e!93951 (and tp!80487 tp!80484))))

(declare-fun b!156479 () Bool)

(declare-fun tp!80488 () Bool)

(assert (=> b!156479 (= e!93951 tp!80488)))

(assert (= (and b!156027 ((_ is ElementMatch!699) (regex!475 (rule!982 separatorToken!170)))) b!156477))

(assert (= (and b!156027 ((_ is Concat!1197) (regex!475 (rule!982 separatorToken!170)))) b!156478))

(assert (= (and b!156027 ((_ is Star!699) (regex!475 (rule!982 separatorToken!170)))) b!156479))

(assert (= (and b!156027 ((_ is Union!699) (regex!475 (rule!982 separatorToken!170)))) b!156480))

(declare-fun b!156482 () Bool)

(declare-fun e!93952 () Bool)

(declare-fun tp!80490 () Bool)

(declare-fun tp!80491 () Bool)

(assert (=> b!156482 (= e!93952 (and tp!80490 tp!80491))))

(assert (=> b!156037 (= tp!80387 e!93952)))

(declare-fun b!156481 () Bool)

(assert (=> b!156481 (= e!93952 tp_is_empty!1627)))

(declare-fun b!156484 () Bool)

(declare-fun tp!80492 () Bool)

(declare-fun tp!80489 () Bool)

(assert (=> b!156484 (= e!93952 (and tp!80492 tp!80489))))

(declare-fun b!156483 () Bool)

(declare-fun tp!80493 () Bool)

(assert (=> b!156483 (= e!93952 tp!80493)))

(assert (= (and b!156037 ((_ is ElementMatch!699) (regex!475 (rule!982 (h!8109 tokens!465))))) b!156481))

(assert (= (and b!156037 ((_ is Concat!1197) (regex!475 (rule!982 (h!8109 tokens!465))))) b!156482))

(assert (= (and b!156037 ((_ is Star!699) (regex!475 (rule!982 (h!8109 tokens!465))))) b!156483))

(assert (= (and b!156037 ((_ is Union!699) (regex!475 (rule!982 (h!8109 tokens!465))))) b!156484))

(declare-fun b!156485 () Bool)

(declare-fun e!93953 () Bool)

(declare-fun tp!80494 () Bool)

(assert (=> b!156485 (= e!93953 (and tp_is_empty!1627 tp!80494))))

(assert (=> b!156024 (= tp!80390 e!93953)))

(assert (= (and b!156024 ((_ is Cons!2710) (originalCharacters!518 separatorToken!170))) b!156485))

(declare-fun b!156496 () Bool)

(declare-fun b_free!5849 () Bool)

(declare-fun b_next!5849 () Bool)

(assert (=> b!156496 (= b_free!5849 (not b_next!5849))))

(declare-fun tp!80506 () Bool)

(declare-fun b_and!9437 () Bool)

(assert (=> b!156496 (= tp!80506 b_and!9437)))

(declare-fun b_free!5851 () Bool)

(declare-fun b_next!5851 () Bool)

(assert (=> b!156496 (= b_free!5851 (not b_next!5851))))

(declare-fun t!25446 () Bool)

(declare-fun tb!5497 () Bool)

(assert (=> (and b!156496 (= (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920)))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465))))) t!25446) tb!5497))

(declare-fun result!8040 () Bool)

(assert (= result!8040 result!7992))

(assert (=> b!156079 t!25446))

(declare-fun t!25448 () Bool)

(declare-fun tb!5499 () Bool)

(assert (=> (and b!156496 (= (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920)))) (toChars!977 (transformation!475 (rule!982 separatorToken!170)))) t!25448) tb!5499))

(declare-fun result!8042 () Bool)

(assert (= result!8042 result!8022))

(assert (=> b!156367 t!25448))

(assert (=> d!37755 t!25446))

(assert (=> d!37759 t!25448))

(declare-fun b_and!9439 () Bool)

(declare-fun tp!80503 () Bool)

(assert (=> b!156496 (= tp!80503 (and (=> t!25446 result!8040) (=> t!25448 result!8042) b_and!9439))))

(declare-fun e!93963 () Bool)

(assert (=> b!156496 (= e!93963 (and tp!80506 tp!80503))))

(declare-fun tp!80505 () Bool)

(declare-fun e!93962 () Bool)

(declare-fun b!156495 () Bool)

(assert (=> b!156495 (= e!93962 (and tp!80505 (inv!3510 (tag!653 (h!8108 (t!25385 rules!1920)))) (inv!3514 (transformation!475 (h!8108 (t!25385 rules!1920)))) e!93963))))

(declare-fun b!156494 () Bool)

(declare-fun e!93965 () Bool)

(declare-fun tp!80504 () Bool)

(assert (=> b!156494 (= e!93965 (and e!93962 tp!80504))))

(assert (=> b!156026 (= tp!80386 e!93965)))

(assert (= b!156495 b!156496))

(assert (= b!156494 b!156495))

(assert (= (and b!156026 ((_ is Cons!2711) (t!25385 rules!1920))) b!156494))

(declare-fun m!142847 () Bool)

(assert (=> b!156495 m!142847))

(declare-fun m!142849 () Bool)

(assert (=> b!156495 m!142849))

(declare-fun b!156498 () Bool)

(declare-fun e!93966 () Bool)

(declare-fun tp!80508 () Bool)

(declare-fun tp!80509 () Bool)

(assert (=> b!156498 (= e!93966 (and tp!80508 tp!80509))))

(assert (=> b!156036 (= tp!80382 e!93966)))

(declare-fun b!156497 () Bool)

(assert (=> b!156497 (= e!93966 tp_is_empty!1627)))

(declare-fun b!156500 () Bool)

(declare-fun tp!80510 () Bool)

(declare-fun tp!80507 () Bool)

(assert (=> b!156500 (= e!93966 (and tp!80510 tp!80507))))

(declare-fun b!156499 () Bool)

(declare-fun tp!80511 () Bool)

(assert (=> b!156499 (= e!93966 tp!80511)))

(assert (= (and b!156036 ((_ is ElementMatch!699) (regex!475 (h!8108 rules!1920)))) b!156497))

(assert (= (and b!156036 ((_ is Concat!1197) (regex!475 (h!8108 rules!1920)))) b!156498))

(assert (= (and b!156036 ((_ is Star!699) (regex!475 (h!8108 rules!1920)))) b!156499))

(assert (= (and b!156036 ((_ is Union!699) (regex!475 (h!8108 rules!1920)))) b!156500))

(declare-fun b_lambda!3077 () Bool)

(assert (= b_lambda!3049 (or b!156022 b_lambda!3077)))

(declare-fun bs!14480 () Bool)

(declare-fun d!37775 () Bool)

(assert (= bs!14480 (and d!37775 b!156022)))

(assert (=> bs!14480 (= (dynLambda!959 lambda!4150 (h!8109 tokens!465)) (not (isSeparator!475 (rule!982 (h!8109 tokens!465)))))))

(assert (=> b!156073 d!37775))

(declare-fun b_lambda!3079 () Bool)

(assert (= b_lambda!3071 (or (and b!156030 b_free!5831 (= (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toChars!977 (transformation!475 (rule!982 separatorToken!170))))) (and b!156029 b_free!5827) (and b!156461 b_free!5847 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (toChars!977 (transformation!475 (rule!982 separatorToken!170))))) (and b!156028 b_free!5835 (= (toChars!977 (transformation!475 (h!8108 rules!1920))) (toChars!977 (transformation!475 (rule!982 separatorToken!170))))) (and b!156496 b_free!5851 (= (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920)))) (toChars!977 (transformation!475 (rule!982 separatorToken!170))))) b_lambda!3079)))

(declare-fun b_lambda!3081 () Bool)

(assert (= b_lambda!3073 (or (and b!156028 b_free!5835 (= (toChars!977 (transformation!475 (h!8108 rules!1920))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))))) (and b!156461 b_free!5847 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))))) (and b!156496 b_free!5851 (= (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920)))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))))) (and b!156030 b_free!5831) (and b!156029 b_free!5827 (= (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))))) b_lambda!3081)))

(declare-fun b_lambda!3083 () Bool)

(assert (= b_lambda!3075 (or (and b!156030 b_free!5831 (= (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toChars!977 (transformation!475 (rule!982 separatorToken!170))))) (and b!156029 b_free!5827) (and b!156461 b_free!5847 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (toChars!977 (transformation!475 (rule!982 separatorToken!170))))) (and b!156028 b_free!5835 (= (toChars!977 (transformation!475 (h!8108 rules!1920))) (toChars!977 (transformation!475 (rule!982 separatorToken!170))))) (and b!156496 b_free!5851 (= (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920)))) (toChars!977 (transformation!475 (rule!982 separatorToken!170))))) b_lambda!3083)))

(declare-fun b_lambda!3085 () Bool)

(assert (= b_lambda!3051 (or (and b!156028 b_free!5835 (= (toChars!977 (transformation!475 (h!8108 rules!1920))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))))) (and b!156461 b_free!5847 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))))) (and b!156496 b_free!5851 (= (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920)))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))))) (and b!156030 b_free!5831) (and b!156029 b_free!5827 (= (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))))) b_lambda!3085)))

(check-sat (not bm!6502) (not b!156361) (not b!156437) (not b!156238) (not b!156080) (not d!37763) (not d!37773) (not b_next!5851) (not b!156432) b_and!9437 (not b_lambda!3083) (not b!156074) (not b!156429) (not b!156369) (not tb!5467) b_and!9435 (not b!156443) (not d!37739) (not b!156169) (not b_lambda!3081) (not b!156480) (not bm!6506) (not d!37693) (not b!156466) (not d!37735) (not b!156231) (not b!156428) (not b!156394) (not bm!6468) b_and!9429 (not d!37757) (not b_next!5847) (not d!37657) (not b!156364) (not d!37695) (not b!156421) (not b!156356) (not b!156460) (not d!37697) (not bm!6510) (not b!156230) (not d!37755) b_and!9439 (not b!156234) (not b!156229) (not bm!6507) (not b!156367) (not b!156362) (not b!156419) (not d!37765) (not b!156495) (not d!37659) (not b!156479) (not d!37661) (not b_next!5827) (not b!156458) (not d!37759) (not b!156484) (not d!37663) (not b_next!5845) (not b!156459) (not b_next!5849) (not b_lambda!3079) (not b!156416) (not d!37745) (not b!156444) (not b!156403) (not b!156478) (not b_next!5833) b_and!9373 (not d!37751) (not bm!6504) (not b_next!5831) (not b!156178) (not b!156442) (not b!156485) (not b!156500) (not b!156498) (not b!156381) (not b!156368) (not b!156237) (not b!156383) b_and!9433 (not b!156447) (not b!156401) (not b!156239) (not d!37753) (not b!156422) (not b!156085) (not b!156413) (not b!156079) (not b!156433) (not b!156359) (not b!156483) (not b!156414) (not b!156393) (not tb!5487) tp_is_empty!1627 (not b!156440) (not b_lambda!3077) (not bm!6471) (not bm!6511) (not bm!6505) b_and!9431 (not b_next!5825) (not b!156390) (not d!37761) (not b!156402) (not bm!6509) (not d!37741) (not b!156436) (not d!37747) b_and!9365 (not bm!6470) (not d!37725) (not b_next!5835) (not b!156499) (not b!156494) (not b!156384) b_and!9369 (not b_lambda!3085) (not b_next!5829) (not b!156389) (not b!156424) (not d!37771) b_and!9427 (not b!156482) (not d!37743))
(check-sat (not b_next!5851) b_and!9437 b_and!9435 b_and!9429 (not b_next!5847) b_and!9439 (not b_next!5827) (not b_next!5833) b_and!9373 (not b_next!5831) b_and!9433 b_and!9431 (not b_next!5825) b_and!9365 (not b_next!5835) b_and!9369 (not b_next!5845) (not b_next!5849) (not b_next!5829) b_and!9427)
(get-model)

(declare-fun b!156523 () Bool)

(declare-fun e!93979 () List!2720)

(declare-fun e!93980 () List!2720)

(assert (=> b!156523 (= e!93979 e!93980)))

(declare-fun c!31434 () Bool)

(assert (=> b!156523 (= c!31434 ((_ is Leaf!1349) (c!31335 (printWithSeparatorTokenWhenNeededRec!44 thiss!17480 rules!1920 lt!46190 separatorToken!170 0))))))

(declare-fun b!156522 () Bool)

(assert (=> b!156522 (= e!93979 Nil!2710)))

(declare-fun b!156525 () Bool)

(assert (=> b!156525 (= e!93980 (++!592 (list!964 (left!2044 (c!31335 (printWithSeparatorTokenWhenNeededRec!44 thiss!17480 rules!1920 lt!46190 separatorToken!170 0)))) (list!964 (right!2374 (c!31335 (printWithSeparatorTokenWhenNeededRec!44 thiss!17480 rules!1920 lt!46190 separatorToken!170 0))))))))

(declare-fun c!31433 () Bool)

(declare-fun d!37785 () Bool)

(assert (=> d!37785 (= c!31433 ((_ is Empty!772) (c!31335 (printWithSeparatorTokenWhenNeededRec!44 thiss!17480 rules!1920 lt!46190 separatorToken!170 0))))))

(assert (=> d!37785 (= (list!964 (c!31335 (printWithSeparatorTokenWhenNeededRec!44 thiss!17480 rules!1920 lt!46190 separatorToken!170 0))) e!93979)))

(declare-fun b!156524 () Bool)

(declare-fun list!966 (IArray!1545) List!2720)

(assert (=> b!156524 (= e!93980 (list!966 (xs!3367 (c!31335 (printWithSeparatorTokenWhenNeededRec!44 thiss!17480 rules!1920 lt!46190 separatorToken!170 0)))))))

(assert (= (and d!37785 c!31433) b!156522))

(assert (= (and d!37785 (not c!31433)) b!156523))

(assert (= (and b!156523 c!31434) b!156524))

(assert (= (and b!156523 (not c!31434)) b!156525))

(declare-fun m!142871 () Bool)

(assert (=> b!156525 m!142871))

(declare-fun m!142875 () Bool)

(assert (=> b!156525 m!142875))

(assert (=> b!156525 m!142871))

(assert (=> b!156525 m!142875))

(declare-fun m!142877 () Bool)

(assert (=> b!156525 m!142877))

(declare-fun m!142879 () Bool)

(assert (=> b!156524 m!142879))

(assert (=> d!37695 d!37785))

(declare-fun d!37791 () Bool)

(assert (=> d!37791 (= (list!961 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170))) (list!964 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170)))))))

(declare-fun bs!14481 () Bool)

(assert (= bs!14481 d!37791))

(declare-fun m!142885 () Bool)

(assert (=> bs!14481 m!142885))

(assert (=> b!156367 d!37791))

(declare-fun d!37795 () Bool)

(assert (=> d!37795 true))

(declare-fun order!1371 () Int)

(declare-fun lambda!4183 () Int)

(declare-fun dynLambda!964 (Int Int) Int)

(assert (=> d!37795 (< (dynLambda!963 order!1369 (toChars!977 (transformation!475 (h!8108 rules!1920)))) (dynLambda!964 order!1371 lambda!4183))))

(assert (=> d!37795 true))

(assert (=> d!37795 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (h!8108 rules!1920)))) (dynLambda!964 order!1371 lambda!4183))))

(declare-fun Forall!125 (Int) Bool)

(assert (=> d!37795 (= (semiInverseModEq!165 (toChars!977 (transformation!475 (h!8108 rules!1920))) (toValue!1118 (transformation!475 (h!8108 rules!1920)))) (Forall!125 lambda!4183))))

(declare-fun bs!14483 () Bool)

(assert (= bs!14483 d!37795))

(declare-fun m!142895 () Bool)

(assert (=> bs!14483 m!142895))

(assert (=> d!37771 d!37795))

(declare-fun bs!14484 () Bool)

(declare-fun d!37799 () Bool)

(assert (= bs!14484 (and d!37799 d!37795)))

(declare-fun lambda!4184 () Int)

(assert (=> bs!14484 (= (and (= (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toChars!977 (transformation!475 (h!8108 rules!1920)))) (= (toValue!1118 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toValue!1118 (transformation!475 (h!8108 rules!1920))))) (= lambda!4184 lambda!4183))))

(assert (=> d!37799 true))

(assert (=> d!37799 (< (dynLambda!963 order!1369 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465))))) (dynLambda!964 order!1371 lambda!4184))))

(assert (=> d!37799 true))

(assert (=> d!37799 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (rule!982 (h!8109 tokens!465))))) (dynLambda!964 order!1371 lambda!4184))))

(assert (=> d!37799 (= (semiInverseModEq!165 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toValue!1118 (transformation!475 (rule!982 (h!8109 tokens!465))))) (Forall!125 lambda!4184))))

(declare-fun bs!14485 () Bool)

(assert (= bs!14485 d!37799))

(declare-fun m!142899 () Bool)

(assert (=> bs!14485 m!142899))

(assert (=> d!37739 d!37799))

(declare-fun d!37803 () Bool)

(declare-fun lt!46381 () Int)

(assert (=> d!37803 (>= lt!46381 0)))

(declare-fun e!93986 () Int)

(assert (=> d!37803 (= lt!46381 e!93986)))

(declare-fun c!31440 () Bool)

(assert (=> d!37803 (= c!31440 ((_ is Nil!2710) lt!46366))))

(assert (=> d!37803 (= (size!2291 lt!46366) lt!46381)))

(declare-fun b!156540 () Bool)

(assert (=> b!156540 (= e!93986 0)))

(declare-fun b!156541 () Bool)

(assert (=> b!156541 (= e!93986 (+ 1 (size!2291 (t!25384 lt!46366))))))

(assert (= (and d!37803 c!31440) b!156540))

(assert (= (and d!37803 (not c!31440)) b!156541))

(declare-fun m!142901 () Bool)

(assert (=> b!156541 m!142901))

(assert (=> b!156429 d!37803))

(declare-fun d!37805 () Bool)

(declare-fun lt!46382 () Int)

(assert (=> d!37805 (>= lt!46382 0)))

(declare-fun e!93987 () Int)

(assert (=> d!37805 (= lt!46382 e!93987)))

(declare-fun c!31441 () Bool)

(assert (=> d!37805 (= c!31441 ((_ is Nil!2710) lt!46185))))

(assert (=> d!37805 (= (size!2291 lt!46185) lt!46382)))

(declare-fun b!156542 () Bool)

(assert (=> b!156542 (= e!93987 0)))

(declare-fun b!156543 () Bool)

(assert (=> b!156543 (= e!93987 (+ 1 (size!2291 (t!25384 lt!46185))))))

(assert (= (and d!37805 c!31441) b!156542))

(assert (= (and d!37805 (not c!31441)) b!156543))

(declare-fun m!142903 () Bool)

(assert (=> b!156543 m!142903))

(assert (=> b!156429 d!37805))

(declare-fun d!37807 () Bool)

(declare-fun lt!46383 () Int)

(assert (=> d!37807 (>= lt!46383 0)))

(declare-fun e!93988 () Int)

(assert (=> d!37807 (= lt!46383 e!93988)))

(declare-fun c!31442 () Bool)

(assert (=> d!37807 (= c!31442 ((_ is Nil!2710) lt!46183))))

(assert (=> d!37807 (= (size!2291 lt!46183) lt!46383)))

(declare-fun b!156544 () Bool)

(assert (=> b!156544 (= e!93988 0)))

(declare-fun b!156545 () Bool)

(assert (=> b!156545 (= e!93988 (+ 1 (size!2291 (t!25384 lt!46183))))))

(assert (= (and d!37807 c!31442) b!156544))

(assert (= (and d!37807 (not c!31442)) b!156545))

(declare-fun m!142905 () Bool)

(assert (=> b!156545 m!142905))

(assert (=> b!156429 d!37807))

(declare-fun d!37809 () Bool)

(declare-fun lt!46384 () Int)

(assert (=> d!37809 (>= lt!46384 0)))

(declare-fun e!93989 () Int)

(assert (=> d!37809 (= lt!46384 e!93989)))

(declare-fun c!31443 () Bool)

(assert (=> d!37809 (= c!31443 ((_ is Nil!2710) lt!46353))))

(assert (=> d!37809 (= (size!2291 lt!46353) lt!46384)))

(declare-fun b!156546 () Bool)

(assert (=> b!156546 (= e!93989 0)))

(declare-fun b!156547 () Bool)

(assert (=> b!156547 (= e!93989 (+ 1 (size!2291 (t!25384 lt!46353))))))

(assert (= (and d!37809 c!31443) b!156546))

(assert (= (and d!37809 (not c!31443)) b!156547))

(declare-fun m!142907 () Bool)

(assert (=> b!156547 m!142907))

(assert (=> b!156414 d!37809))

(assert (=> b!156414 d!37805))

(declare-fun d!37811 () Bool)

(declare-fun lt!46385 () Int)

(assert (=> d!37811 (>= lt!46385 0)))

(declare-fun e!93990 () Int)

(assert (=> d!37811 (= lt!46385 e!93990)))

(declare-fun c!31444 () Bool)

(assert (=> d!37811 (= c!31444 ((_ is Nil!2710) lt!46189))))

(assert (=> d!37811 (= (size!2291 lt!46189) lt!46385)))

(declare-fun b!156548 () Bool)

(assert (=> b!156548 (= e!93990 0)))

(declare-fun b!156549 () Bool)

(assert (=> b!156549 (= e!93990 (+ 1 (size!2291 (t!25384 lt!46189))))))

(assert (= (and d!37811 c!31444) b!156548))

(assert (= (and d!37811 (not c!31444)) b!156549))

(declare-fun m!142909 () Bool)

(assert (=> b!156549 m!142909))

(assert (=> b!156414 d!37811))

(declare-fun d!37813 () Bool)

(assert (=> d!37813 (= (list!961 (ite c!31404 call!6507 call!6510)) (list!964 (c!31335 (ite c!31404 call!6507 call!6510))))))

(declare-fun bs!14486 () Bool)

(assert (= bs!14486 d!37813))

(declare-fun m!142911 () Bool)

(assert (=> bs!14486 m!142911))

(assert (=> bm!6505 d!37813))

(declare-fun d!37815 () Bool)

(declare-fun res!71318 () Bool)

(declare-fun e!93991 () Bool)

(assert (=> d!37815 (=> res!71318 e!93991)))

(assert (=> d!37815 (= res!71318 ((_ is Nil!2712) (t!25386 tokens!465)))))

(assert (=> d!37815 (= (forall!479 (t!25386 tokens!465) lambda!4150) e!93991)))

(declare-fun b!156550 () Bool)

(declare-fun e!93992 () Bool)

(assert (=> b!156550 (= e!93991 e!93992)))

(declare-fun res!71319 () Bool)

(assert (=> b!156550 (=> (not res!71319) (not e!93992))))

(assert (=> b!156550 (= res!71319 (dynLambda!959 lambda!4150 (h!8109 (t!25386 tokens!465))))))

(declare-fun b!156551 () Bool)

(assert (=> b!156551 (= e!93992 (forall!479 (t!25386 (t!25386 tokens!465)) lambda!4150))))

(assert (= (and d!37815 (not res!71318)) b!156550))

(assert (= (and b!156550 res!71319) b!156551))

(declare-fun b_lambda!3087 () Bool)

(assert (=> (not b_lambda!3087) (not b!156550)))

(declare-fun m!142913 () Bool)

(assert (=> b!156550 m!142913))

(declare-fun m!142915 () Bool)

(assert (=> b!156551 m!142915))

(assert (=> b!156074 d!37815))

(declare-fun d!37817 () Bool)

(declare-fun lt!46386 () BalanceConc!1552)

(assert (=> d!37817 (= (list!961 lt!46386) (originalCharacters!518 (h!8109 (t!25386 tokens!465))))))

(assert (=> d!37817 (= lt!46386 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (value!17853 (h!8109 (t!25386 tokens!465)))))))

(assert (=> d!37817 (= (charsOf!130 (h!8109 (t!25386 tokens!465))) lt!46386)))

(declare-fun b_lambda!3089 () Bool)

(assert (=> (not b_lambda!3089) (not d!37817)))

(declare-fun tb!5501 () Bool)

(declare-fun t!25453 () Bool)

(assert (=> (and b!156028 (= (toChars!977 (transformation!475 (h!8108 rules!1920))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465)))))) t!25453) tb!5501))

(declare-fun b!156552 () Bool)

(declare-fun e!93993 () Bool)

(declare-fun tp!80512 () Bool)

(assert (=> b!156552 (= e!93993 (and (inv!3517 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (value!17853 (h!8109 (t!25386 tokens!465)))))) tp!80512))))

(declare-fun result!8044 () Bool)

(assert (=> tb!5501 (= result!8044 (and (inv!3518 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (value!17853 (h!8109 (t!25386 tokens!465))))) e!93993))))

(assert (= tb!5501 b!156552))

(declare-fun m!142917 () Bool)

(assert (=> b!156552 m!142917))

(declare-fun m!142919 () Bool)

(assert (=> tb!5501 m!142919))

(assert (=> d!37817 t!25453))

(declare-fun b_and!9441 () Bool)

(assert (= b_and!9431 (and (=> t!25453 result!8044) b_and!9441)))

(declare-fun tb!5503 () Bool)

(declare-fun t!25455 () Bool)

(assert (=> (and b!156029 (= (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465)))))) t!25455) tb!5503))

(declare-fun result!8046 () Bool)

(assert (= result!8046 result!8044))

(assert (=> d!37817 t!25455))

(declare-fun b_and!9443 () Bool)

(assert (= b_and!9427 (and (=> t!25455 result!8046) b_and!9443)))

(declare-fun t!25457 () Bool)

(declare-fun tb!5505 () Bool)

(assert (=> (and b!156030 (= (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465)))))) t!25457) tb!5505))

(declare-fun result!8048 () Bool)

(assert (= result!8048 result!8044))

(assert (=> d!37817 t!25457))

(declare-fun b_and!9445 () Bool)

(assert (= b_and!9429 (and (=> t!25457 result!8048) b_and!9445)))

(declare-fun t!25459 () Bool)

(declare-fun tb!5507 () Bool)

(assert (=> (and b!156461 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465)))))) t!25459) tb!5507))

(declare-fun result!8050 () Bool)

(assert (= result!8050 result!8044))

(assert (=> d!37817 t!25459))

(declare-fun b_and!9447 () Bool)

(assert (= b_and!9435 (and (=> t!25459 result!8050) b_and!9447)))

(declare-fun t!25461 () Bool)

(declare-fun tb!5509 () Bool)

(assert (=> (and b!156496 (= (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920)))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465)))))) t!25461) tb!5509))

(declare-fun result!8052 () Bool)

(assert (= result!8052 result!8044))

(assert (=> d!37817 t!25461))

(declare-fun b_and!9449 () Bool)

(assert (= b_and!9439 (and (=> t!25461 result!8052) b_and!9449)))

(declare-fun m!142921 () Bool)

(assert (=> d!37817 m!142921))

(declare-fun m!142923 () Bool)

(assert (=> d!37817 m!142923))

(assert (=> bm!6507 d!37817))

(declare-fun d!37819 () Bool)

(declare-fun c!31447 () Bool)

(assert (=> d!37819 (= c!31447 ((_ is Nil!2710) lt!46353))))

(declare-fun e!93996 () (InoxSet C!2320))

(assert (=> d!37819 (= (content!375 lt!46353) e!93996)))

(declare-fun b!156557 () Bool)

(assert (=> b!156557 (= e!93996 ((as const (Array C!2320 Bool)) false))))

(declare-fun b!156558 () Bool)

(assert (=> b!156558 (= e!93996 ((_ map or) (store ((as const (Array C!2320 Bool)) false) (h!8107 lt!46353) true) (content!375 (t!25384 lt!46353))))))

(assert (= (and d!37819 c!31447) b!156557))

(assert (= (and d!37819 (not c!31447)) b!156558))

(declare-fun m!142925 () Bool)

(assert (=> b!156558 m!142925))

(declare-fun m!142927 () Bool)

(assert (=> b!156558 m!142927))

(assert (=> d!37743 d!37819))

(declare-fun d!37821 () Bool)

(declare-fun c!31448 () Bool)

(assert (=> d!37821 (= c!31448 ((_ is Nil!2710) lt!46185))))

(declare-fun e!93997 () (InoxSet C!2320))

(assert (=> d!37821 (= (content!375 lt!46185) e!93997)))

(declare-fun b!156559 () Bool)

(assert (=> b!156559 (= e!93997 ((as const (Array C!2320 Bool)) false))))

(declare-fun b!156560 () Bool)

(assert (=> b!156560 (= e!93997 ((_ map or) (store ((as const (Array C!2320 Bool)) false) (h!8107 lt!46185) true) (content!375 (t!25384 lt!46185))))))

(assert (= (and d!37821 c!31448) b!156559))

(assert (= (and d!37821 (not c!31448)) b!156560))

(declare-fun m!142929 () Bool)

(assert (=> b!156560 m!142929))

(declare-fun m!142931 () Bool)

(assert (=> b!156560 m!142931))

(assert (=> d!37743 d!37821))

(declare-fun d!37823 () Bool)

(declare-fun c!31449 () Bool)

(assert (=> d!37823 (= c!31449 ((_ is Nil!2710) lt!46189))))

(declare-fun e!93998 () (InoxSet C!2320))

(assert (=> d!37823 (= (content!375 lt!46189) e!93998)))

(declare-fun b!156561 () Bool)

(assert (=> b!156561 (= e!93998 ((as const (Array C!2320 Bool)) false))))

(declare-fun b!156562 () Bool)

(assert (=> b!156562 (= e!93998 ((_ map or) (store ((as const (Array C!2320 Bool)) false) (h!8107 lt!46189) true) (content!375 (t!25384 lt!46189))))))

(assert (= (and d!37823 c!31449) b!156561))

(assert (= (and d!37823 (not c!31449)) b!156562))

(declare-fun m!142933 () Bool)

(assert (=> b!156562 m!142933))

(declare-fun m!142935 () Bool)

(assert (=> b!156562 m!142935))

(assert (=> d!37743 d!37823))

(declare-fun d!37825 () Bool)

(declare-fun c!31450 () Bool)

(assert (=> d!37825 (= c!31450 ((_ is Nil!2710) lt!46369))))

(declare-fun e!93999 () (InoxSet C!2320))

(assert (=> d!37825 (= (content!375 lt!46369) e!93999)))

(declare-fun b!156563 () Bool)

(assert (=> b!156563 (= e!93999 ((as const (Array C!2320 Bool)) false))))

(declare-fun b!156564 () Bool)

(assert (=> b!156564 (= e!93999 ((_ map or) (store ((as const (Array C!2320 Bool)) false) (h!8107 lt!46369) true) (content!375 (t!25384 lt!46369))))))

(assert (= (and d!37825 c!31450) b!156563))

(assert (= (and d!37825 (not c!31450)) b!156564))

(declare-fun m!142937 () Bool)

(assert (=> b!156564 m!142937))

(declare-fun m!142939 () Bool)

(assert (=> b!156564 m!142939))

(assert (=> d!37763 d!37825))

(assert (=> d!37763 d!37823))

(declare-fun d!37827 () Bool)

(declare-fun c!31451 () Bool)

(assert (=> d!37827 (= c!31451 ((_ is Nil!2710) lt!46187))))

(declare-fun e!94000 () (InoxSet C!2320))

(assert (=> d!37827 (= (content!375 lt!46187) e!94000)))

(declare-fun b!156565 () Bool)

(assert (=> b!156565 (= e!94000 ((as const (Array C!2320 Bool)) false))))

(declare-fun b!156566 () Bool)

(assert (=> b!156566 (= e!94000 ((_ map or) (store ((as const (Array C!2320 Bool)) false) (h!8107 lt!46187) true) (content!375 (t!25384 lt!46187))))))

(assert (= (and d!37827 c!31451) b!156565))

(assert (= (and d!37827 (not c!31451)) b!156566))

(declare-fun m!142941 () Bool)

(assert (=> b!156566 m!142941))

(declare-fun m!142943 () Bool)

(assert (=> b!156566 m!142943))

(assert (=> d!37763 d!37827))

(declare-fun d!37829 () Bool)

(declare-fun lt!46389 () Bool)

(assert (=> d!37829 (= lt!46389 (isEmpty!1083 (list!961 (_2!1529 lt!46349))))))

(declare-fun isEmpty!1087 (Conc!772) Bool)

(assert (=> d!37829 (= lt!46389 (isEmpty!1087 (c!31335 (_2!1529 lt!46349))))))

(assert (=> d!37829 (= (isEmpty!1084 (_2!1529 lt!46349)) lt!46389)))

(declare-fun bs!14487 () Bool)

(assert (= bs!14487 d!37829))

(declare-fun m!142945 () Bool)

(assert (=> bs!14487 m!142945))

(assert (=> bs!14487 m!142945))

(declare-fun m!142947 () Bool)

(assert (=> bs!14487 m!142947))

(declare-fun m!142949 () Bool)

(assert (=> bs!14487 m!142949))

(assert (=> b!156402 d!37829))

(declare-fun d!37831 () Bool)

(declare-fun lt!46390 () BalanceConc!1552)

(assert (=> d!37831 (= (list!961 lt!46390) (originalCharacters!518 call!6472))))

(assert (=> d!37831 (= lt!46390 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 call!6472))) (value!17853 call!6472)))))

(assert (=> d!37831 (= (charsOf!130 call!6472) lt!46390)))

(declare-fun b_lambda!3091 () Bool)

(assert (=> (not b_lambda!3091) (not d!37831)))

(declare-fun tb!5511 () Bool)

(declare-fun t!25463 () Bool)

(assert (=> (and b!156496 (= (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920)))) (toChars!977 (transformation!475 (rule!982 call!6472)))) t!25463) tb!5511))

(declare-fun b!156567 () Bool)

(declare-fun e!94001 () Bool)

(declare-fun tp!80513 () Bool)

(assert (=> b!156567 (= e!94001 (and (inv!3517 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 call!6472))) (value!17853 call!6472)))) tp!80513))))

(declare-fun result!8054 () Bool)

(assert (=> tb!5511 (= result!8054 (and (inv!3518 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 call!6472))) (value!17853 call!6472))) e!94001))))

(assert (= tb!5511 b!156567))

(declare-fun m!142951 () Bool)

(assert (=> b!156567 m!142951))

(declare-fun m!142953 () Bool)

(assert (=> tb!5511 m!142953))

(assert (=> d!37831 t!25463))

(declare-fun b_and!9451 () Bool)

(assert (= b_and!9449 (and (=> t!25463 result!8054) b_and!9451)))

(declare-fun t!25465 () Bool)

(declare-fun tb!5513 () Bool)

(assert (=> (and b!156029 (= (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toChars!977 (transformation!475 (rule!982 call!6472)))) t!25465) tb!5513))

(declare-fun result!8056 () Bool)

(assert (= result!8056 result!8054))

(assert (=> d!37831 t!25465))

(declare-fun b_and!9453 () Bool)

(assert (= b_and!9443 (and (=> t!25465 result!8056) b_and!9453)))

(declare-fun tb!5515 () Bool)

(declare-fun t!25467 () Bool)

(assert (=> (and b!156028 (= (toChars!977 (transformation!475 (h!8108 rules!1920))) (toChars!977 (transformation!475 (rule!982 call!6472)))) t!25467) tb!5515))

(declare-fun result!8058 () Bool)

(assert (= result!8058 result!8054))

(assert (=> d!37831 t!25467))

(declare-fun b_and!9455 () Bool)

(assert (= b_and!9441 (and (=> t!25467 result!8058) b_and!9455)))

(declare-fun t!25469 () Bool)

(declare-fun tb!5517 () Bool)

(assert (=> (and b!156030 (= (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toChars!977 (transformation!475 (rule!982 call!6472)))) t!25469) tb!5517))

(declare-fun result!8060 () Bool)

(assert (= result!8060 result!8054))

(assert (=> d!37831 t!25469))

(declare-fun b_and!9457 () Bool)

(assert (= b_and!9445 (and (=> t!25469 result!8060) b_and!9457)))

(declare-fun tb!5519 () Bool)

(declare-fun t!25471 () Bool)

(assert (=> (and b!156461 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (toChars!977 (transformation!475 (rule!982 call!6472)))) t!25471) tb!5519))

(declare-fun result!8062 () Bool)

(assert (= result!8062 result!8054))

(assert (=> d!37831 t!25471))

(declare-fun b_and!9459 () Bool)

(assert (= b_and!9447 (and (=> t!25471 result!8062) b_and!9459)))

(declare-fun m!142955 () Bool)

(assert (=> d!37831 m!142955))

(declare-fun m!142957 () Bool)

(assert (=> d!37831 m!142957))

(assert (=> b!156238 d!37831))

(declare-fun d!37833 () Bool)

(assert (=> d!37833 (= (inv!3510 (tag!653 (h!8108 (t!25385 rules!1920)))) (= (mod (str.len (value!17852 (tag!653 (h!8108 (t!25385 rules!1920))))) 2) 0))))

(assert (=> b!156495 d!37833))

(declare-fun d!37835 () Bool)

(declare-fun res!71320 () Bool)

(declare-fun e!94002 () Bool)

(assert (=> d!37835 (=> (not res!71320) (not e!94002))))

(assert (=> d!37835 (= res!71320 (semiInverseModEq!165 (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920)))) (toValue!1118 (transformation!475 (h!8108 (t!25385 rules!1920))))))))

(assert (=> d!37835 (= (inv!3514 (transformation!475 (h!8108 (t!25385 rules!1920)))) e!94002)))

(declare-fun b!156568 () Bool)

(assert (=> b!156568 (= e!94002 (equivClasses!148 (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920)))) (toValue!1118 (transformation!475 (h!8108 (t!25385 rules!1920))))))))

(assert (= (and d!37835 res!71320) b!156568))

(declare-fun m!142959 () Bool)

(assert (=> d!37835 m!142959))

(declare-fun m!142961 () Bool)

(assert (=> b!156568 m!142961))

(assert (=> b!156495 d!37835))

(declare-fun d!37837 () Bool)

(assert (=> d!37837 (= (list!961 lt!46367) (list!964 (c!31335 lt!46367)))))

(declare-fun bs!14488 () Bool)

(assert (= bs!14488 d!37837))

(declare-fun m!142963 () Bool)

(assert (=> bs!14488 m!142963))

(assert (=> d!37759 d!37837))

(declare-fun d!37839 () Bool)

(assert (=> d!37839 true))

(declare-fun lt!46393 () Bool)

(declare-fun rulesValidInductive!99 (LexerInterface!361 List!2721) Bool)

(assert (=> d!37839 (= lt!46393 (rulesValidInductive!99 thiss!17480 rules!1920))))

(declare-fun lambda!4187 () Int)

(declare-fun forall!482 (List!2721 Int) Bool)

(assert (=> d!37839 (= lt!46393 (forall!482 rules!1920 lambda!4187))))

(assert (=> d!37839 (= (rulesValid!131 thiss!17480 rules!1920) lt!46393)))

(declare-fun bs!14489 () Bool)

(assert (= bs!14489 d!37839))

(declare-fun m!142965 () Bool)

(assert (=> bs!14489 m!142965))

(declare-fun m!142967 () Bool)

(assert (=> bs!14489 m!142967))

(assert (=> d!37773 d!37839))

(declare-fun d!37841 () Bool)

(declare-fun lt!46394 () Int)

(assert (=> d!37841 (>= lt!46394 0)))

(declare-fun e!94003 () Int)

(assert (=> d!37841 (= lt!46394 e!94003)))

(declare-fun c!31452 () Bool)

(assert (=> d!37841 (= c!31452 ((_ is Nil!2710) (originalCharacters!518 (h!8109 tokens!465))))))

(assert (=> d!37841 (= (size!2291 (originalCharacters!518 (h!8109 tokens!465))) lt!46394)))

(declare-fun b!156571 () Bool)

(assert (=> b!156571 (= e!94003 0)))

(declare-fun b!156572 () Bool)

(assert (=> b!156572 (= e!94003 (+ 1 (size!2291 (t!25384 (originalCharacters!518 (h!8109 tokens!465))))))))

(assert (= (and d!37841 c!31452) b!156571))

(assert (= (and d!37841 (not c!31452)) b!156572))

(declare-fun m!142969 () Bool)

(assert (=> b!156572 m!142969))

(assert (=> b!156080 d!37841))

(declare-fun d!37843 () Bool)

(declare-fun res!71321 () Bool)

(declare-fun e!94004 () Bool)

(assert (=> d!37843 (=> res!71321 e!94004)))

(assert (=> d!37843 (= res!71321 (not ((_ is Cons!2711) (t!25385 rules!1920))))))

(assert (=> d!37843 (= (sepAndNonSepRulesDisjointChars!64 rules!1920 (t!25385 rules!1920)) e!94004)))

(declare-fun b!156573 () Bool)

(declare-fun e!94005 () Bool)

(assert (=> b!156573 (= e!94004 e!94005)))

(declare-fun res!71322 () Bool)

(assert (=> b!156573 (=> (not res!71322) (not e!94005))))

(assert (=> b!156573 (= res!71322 (ruleDisjointCharsFromAllFromOtherType!24 (h!8108 (t!25385 rules!1920)) rules!1920))))

(declare-fun b!156574 () Bool)

(assert (=> b!156574 (= e!94005 (sepAndNonSepRulesDisjointChars!64 rules!1920 (t!25385 (t!25385 rules!1920))))))

(assert (= (and d!37843 (not res!71321)) b!156573))

(assert (= (and b!156573 res!71322) b!156574))

(declare-fun m!142971 () Bool)

(assert (=> b!156573 m!142971))

(declare-fun m!142973 () Bool)

(assert (=> b!156574 m!142973))

(assert (=> b!156390 d!37843))

(declare-fun e!94008 () Bool)

(declare-fun lt!46397 () BalanceConc!1552)

(declare-fun b!156586 () Bool)

(assert (=> b!156586 (= e!94008 (= (list!961 lt!46397) (++!592 (list!961 call!6474) (list!961 lt!46272))))))

(declare-fun b!156584 () Bool)

(declare-fun res!71332 () Bool)

(assert (=> b!156584 (=> (not res!71332) (not e!94008))))

(declare-fun height!80 (Conc!772) Int)

(declare-fun ++!596 (Conc!772 Conc!772) Conc!772)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!156584 (= res!71332 (<= (height!80 (++!596 (c!31335 call!6474) (c!31335 lt!46272))) (+ (max!0 (height!80 (c!31335 call!6474)) (height!80 (c!31335 lt!46272))) 1)))))

(declare-fun b!156585 () Bool)

(declare-fun res!71333 () Bool)

(assert (=> b!156585 (=> (not res!71333) (not e!94008))))

(assert (=> b!156585 (= res!71333 (>= (height!80 (++!596 (c!31335 call!6474) (c!31335 lt!46272))) (max!0 (height!80 (c!31335 call!6474)) (height!80 (c!31335 lt!46272)))))))

(declare-fun b!156583 () Bool)

(declare-fun res!71331 () Bool)

(assert (=> b!156583 (=> (not res!71331) (not e!94008))))

(declare-fun isBalanced!215 (Conc!772) Bool)

(assert (=> b!156583 (= res!71331 (isBalanced!215 (++!596 (c!31335 call!6474) (c!31335 lt!46272))))))

(declare-fun d!37845 () Bool)

(assert (=> d!37845 e!94008))

(declare-fun res!71334 () Bool)

(assert (=> d!37845 (=> (not res!71334) (not e!94008))))

(declare-fun appendAssocInst!21 (Conc!772 Conc!772) Bool)

(assert (=> d!37845 (= res!71334 (appendAssocInst!21 (c!31335 call!6474) (c!31335 lt!46272)))))

(assert (=> d!37845 (= lt!46397 (BalanceConc!1553 (++!596 (c!31335 call!6474) (c!31335 lt!46272))))))

(assert (=> d!37845 (= (++!594 call!6474 lt!46272) lt!46397)))

(assert (= (and d!37845 res!71334) b!156583))

(assert (= (and b!156583 res!71331) b!156584))

(assert (= (and b!156584 res!71332) b!156585))

(assert (= (and b!156585 res!71333) b!156586))

(declare-fun m!142975 () Bool)

(assert (=> b!156586 m!142975))

(declare-fun m!142977 () Bool)

(assert (=> b!156586 m!142977))

(assert (=> b!156586 m!142541))

(assert (=> b!156586 m!142977))

(assert (=> b!156586 m!142541))

(declare-fun m!142979 () Bool)

(assert (=> b!156586 m!142979))

(declare-fun m!142981 () Bool)

(assert (=> b!156585 m!142981))

(declare-fun m!142983 () Bool)

(assert (=> b!156585 m!142983))

(declare-fun m!142985 () Bool)

(assert (=> b!156585 m!142985))

(assert (=> b!156585 m!142983))

(declare-fun m!142987 () Bool)

(assert (=> b!156585 m!142987))

(declare-fun m!142989 () Bool)

(assert (=> b!156585 m!142989))

(assert (=> b!156585 m!142987))

(assert (=> b!156585 m!142981))

(declare-fun m!142991 () Bool)

(assert (=> d!37845 m!142991))

(assert (=> d!37845 m!142987))

(assert (=> b!156583 m!142987))

(assert (=> b!156583 m!142987))

(declare-fun m!142993 () Bool)

(assert (=> b!156583 m!142993))

(assert (=> b!156584 m!142981))

(assert (=> b!156584 m!142983))

(assert (=> b!156584 m!142985))

(assert (=> b!156584 m!142983))

(assert (=> b!156584 m!142987))

(assert (=> b!156584 m!142989))

(assert (=> b!156584 m!142987))

(assert (=> b!156584 m!142981))

(assert (=> b!156230 d!37845))

(declare-fun lt!46398 () List!2720)

(declare-fun e!94009 () Bool)

(declare-fun b!156590 () Bool)

(assert (=> b!156590 (= e!94009 (or (not (= lt!46358 Nil!2710)) (= lt!46398 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465)))))))))

(declare-fun d!37847 () Bool)

(assert (=> d!37847 e!94009))

(declare-fun res!71335 () Bool)

(assert (=> d!37847 (=> (not res!71335) (not e!94009))))

(assert (=> d!37847 (= res!71335 (= (content!375 lt!46398) ((_ map or) (content!375 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465))))) (content!375 lt!46358))))))

(declare-fun e!94010 () List!2720)

(assert (=> d!37847 (= lt!46398 e!94010)))

(declare-fun c!31456 () Bool)

(assert (=> d!37847 (= c!31456 ((_ is Nil!2710) (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465))))))))

(assert (=> d!37847 (= (++!592 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465)))) lt!46358) lt!46398)))

(declare-fun b!156589 () Bool)

(declare-fun res!71336 () Bool)

(assert (=> b!156589 (=> (not res!71336) (not e!94009))))

(assert (=> b!156589 (= res!71336 (= (size!2291 lt!46398) (+ (size!2291 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465))))) (size!2291 lt!46358))))))

(declare-fun b!156588 () Bool)

(assert (=> b!156588 (= e!94010 (Cons!2710 (h!8107 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465))))) (++!592 (t!25384 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465))))) lt!46358)))))

(declare-fun b!156587 () Bool)

(assert (=> b!156587 (= e!94010 lt!46358)))

(assert (= (and d!37847 c!31456) b!156587))

(assert (= (and d!37847 (not c!31456)) b!156588))

(assert (= (and d!37847 res!71335) b!156589))

(assert (= (and b!156589 res!71336) b!156590))

(declare-fun m!142995 () Bool)

(assert (=> d!37847 m!142995))

(assert (=> d!37847 m!142763))

(declare-fun m!142997 () Bool)

(assert (=> d!37847 m!142997))

(declare-fun m!142999 () Bool)

(assert (=> d!37847 m!142999))

(declare-fun m!143001 () Bool)

(assert (=> b!156589 m!143001))

(assert (=> b!156589 m!142763))

(declare-fun m!143003 () Bool)

(assert (=> b!156589 m!143003))

(declare-fun m!143005 () Bool)

(assert (=> b!156589 m!143005))

(declare-fun m!143007 () Bool)

(assert (=> b!156588 m!143007))

(assert (=> b!156422 d!37847))

(declare-fun bs!14490 () Bool)

(declare-fun b!156597 () Bool)

(assert (= bs!14490 (and b!156597 d!37663)))

(declare-fun lambda!4188 () Int)

(assert (=> bs!14490 (= lambda!4188 lambda!4158)))

(declare-fun bs!14491 () Bool)

(assert (= bs!14491 (and b!156597 b!156237)))

(assert (=> bs!14491 (= lambda!4188 lambda!4169)))

(declare-fun bs!14492 () Bool)

(assert (= bs!14492 (and b!156597 d!37697)))

(assert (=> bs!14492 (not (= lambda!4188 lambda!4168))))

(declare-fun bs!14493 () Bool)

(assert (= bs!14493 (and b!156597 b!156362)))

(assert (=> bs!14493 (= lambda!4188 lambda!4179)))

(declare-fun bs!14494 () Bool)

(assert (= bs!14494 (and b!156597 b!156022)))

(assert (=> bs!14494 (not (= lambda!4188 lambda!4150))))

(declare-fun bs!14495 () Bool)

(assert (= bs!14495 (and b!156597 b!156422)))

(assert (=> bs!14495 (= lambda!4188 lambda!4180)))

(declare-fun b!156601 () Bool)

(declare-fun e!94017 () Bool)

(assert (=> b!156601 (= e!94017 true)))

(declare-fun b!156600 () Bool)

(declare-fun e!94016 () Bool)

(assert (=> b!156600 (= e!94016 e!94017)))

(declare-fun b!156599 () Bool)

(declare-fun e!94015 () Bool)

(assert (=> b!156599 (= e!94015 e!94016)))

(assert (=> b!156597 e!94015))

(assert (= b!156600 b!156601))

(assert (= b!156599 b!156600))

(assert (= (and b!156597 ((_ is Cons!2711) rules!1920)) b!156599))

(assert (=> b!156601 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4188))))

(assert (=> b!156601 (< (dynLambda!963 order!1369 (toChars!977 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4188))))

(assert (=> b!156597 true))

(declare-fun b!156591 () Bool)

(declare-fun e!94013 () List!2720)

(assert (=> b!156591 (= e!94013 Nil!2710)))

(assert (=> b!156591 (= (print!100 thiss!17480 (singletonSeq!33 (h!8109 (t!25386 (t!25386 tokens!465))))) (printTailRec!63 thiss!17480 (singletonSeq!33 (h!8109 (t!25386 (t!25386 tokens!465)))) 0 (BalanceConc!1553 Empty!772)))))

(declare-fun lt!46402 () Unit!2136)

(declare-fun Unit!2150 () Unit!2136)

(assert (=> b!156591 (= lt!46402 Unit!2150)))

(declare-fun lt!46403 () List!2720)

(declare-fun lt!46399 () Unit!2136)

(declare-fun call!6518 () List!2720)

(assert (=> b!156591 (= lt!46399 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!22 thiss!17480 rules!1920 call!6518 lt!46403))))

(assert (=> b!156591 false))

(declare-fun lt!46404 () Unit!2136)

(declare-fun Unit!2152 () Unit!2136)

(assert (=> b!156591 (= lt!46404 Unit!2152)))

(declare-fun b!156592 () Bool)

(declare-fun e!94014 () BalanceConc!1552)

(declare-fun call!6520 () BalanceConc!1552)

(assert (=> b!156592 (= e!94014 call!6520)))

(declare-fun b!156593 () Bool)

(declare-fun e!94011 () List!2720)

(assert (=> b!156593 (= e!94011 Nil!2710)))

(declare-fun bm!6512 () Bool)

(declare-fun call!6517 () BalanceConc!1552)

(assert (=> bm!6512 (= call!6517 (charsOf!130 (h!8109 (t!25386 (t!25386 tokens!465)))))))

(declare-fun b!156594 () Bool)

(declare-fun call!6521 () List!2720)

(assert (=> b!156594 (= e!94013 (++!592 call!6521 lt!46403))))

(declare-fun d!37849 () Bool)

(declare-fun c!31458 () Bool)

(assert (=> d!37849 (= c!31458 ((_ is Cons!2712) (t!25386 (t!25386 tokens!465))))))

(assert (=> d!37849 (= (printWithSeparatorTokenWhenNeededList!54 thiss!17480 rules!1920 (t!25386 (t!25386 tokens!465)) separatorToken!170) e!94011)))

(declare-fun b!156595 () Bool)

(declare-fun e!94012 () List!2720)

(assert (=> b!156595 (= e!94012 call!6521)))

(declare-fun bm!6513 () Bool)

(assert (=> bm!6513 (= call!6520 call!6517)))

(declare-fun bm!6514 () Bool)

(declare-fun call!6519 () List!2720)

(declare-fun c!31460 () Bool)

(assert (=> bm!6514 (= call!6521 (++!592 call!6519 (ite c!31460 lt!46403 call!6518)))))

(declare-fun b!156596 () Bool)

(assert (=> b!156596 (= e!94014 (charsOf!130 separatorToken!170))))

(declare-fun bm!6515 () Bool)

(assert (=> bm!6515 (= call!6519 (list!961 (ite c!31460 call!6517 call!6520)))))

(assert (=> b!156597 (= e!94011 e!94012)))

(declare-fun lt!46401 () Unit!2136)

(assert (=> b!156597 (= lt!46401 (forallContained!58 (t!25386 (t!25386 tokens!465)) lambda!4188 (h!8109 (t!25386 (t!25386 tokens!465)))))))

(assert (=> b!156597 (= lt!46403 (printWithSeparatorTokenWhenNeededList!54 thiss!17480 rules!1920 (t!25386 (t!25386 (t!25386 tokens!465))) separatorToken!170))))

(declare-fun lt!46400 () Option!259)

(assert (=> b!156597 (= lt!46400 (maxPrefix!115 thiss!17480 rules!1920 (++!592 (list!961 (charsOf!130 (h!8109 (t!25386 (t!25386 tokens!465))))) lt!46403)))))

(assert (=> b!156597 (= c!31460 (and ((_ is Some!258) lt!46400) (= (_1!1528 (v!13651 lt!46400)) (h!8109 (t!25386 (t!25386 tokens!465))))))))

(declare-fun b!156598 () Bool)

(declare-fun c!31457 () Bool)

(assert (=> b!156598 (= c!31457 (and ((_ is Some!258) lt!46400) (not (= (_1!1528 (v!13651 lt!46400)) (h!8109 (t!25386 (t!25386 tokens!465)))))))))

(assert (=> b!156598 (= e!94012 e!94013)))

(declare-fun bm!6516 () Bool)

(assert (=> bm!6516 (= call!6518 (list!961 e!94014))))

(declare-fun c!31459 () Bool)

(assert (=> bm!6516 (= c!31459 c!31457)))

(assert (= (and d!37849 c!31458) b!156597))

(assert (= (and d!37849 (not c!31458)) b!156593))

(assert (= (and b!156597 c!31460) b!156595))

(assert (= (and b!156597 (not c!31460)) b!156598))

(assert (= (and b!156598 c!31457) b!156594))

(assert (= (and b!156598 (not c!31457)) b!156591))

(assert (= (or b!156594 b!156591) bm!6513))

(assert (= (or b!156594 b!156591) bm!6516))

(assert (= (and bm!6516 c!31459) b!156596))

(assert (= (and bm!6516 (not c!31459)) b!156592))

(assert (= (or b!156595 bm!6513) bm!6512))

(assert (= (or b!156595 b!156594) bm!6515))

(assert (= (or b!156595 b!156594) bm!6514))

(declare-fun m!143009 () Bool)

(assert (=> bm!6515 m!143009))

(declare-fun m!143011 () Bool)

(assert (=> bm!6512 m!143011))

(declare-fun m!143013 () Bool)

(assert (=> b!156597 m!143013))

(declare-fun m!143015 () Bool)

(assert (=> b!156597 m!143015))

(declare-fun m!143017 () Bool)

(assert (=> b!156597 m!143017))

(declare-fun m!143019 () Bool)

(assert (=> b!156597 m!143019))

(assert (=> b!156597 m!143011))

(declare-fun m!143021 () Bool)

(assert (=> b!156597 m!143021))

(assert (=> b!156597 m!143021))

(assert (=> b!156597 m!143017))

(assert (=> b!156597 m!143011))

(assert (=> b!156596 m!142275))

(declare-fun m!143023 () Bool)

(assert (=> b!156591 m!143023))

(assert (=> b!156591 m!143023))

(declare-fun m!143025 () Bool)

(assert (=> b!156591 m!143025))

(assert (=> b!156591 m!143023))

(declare-fun m!143027 () Bool)

(assert (=> b!156591 m!143027))

(declare-fun m!143029 () Bool)

(assert (=> b!156591 m!143029))

(declare-fun m!143031 () Bool)

(assert (=> bm!6516 m!143031))

(declare-fun m!143033 () Bool)

(assert (=> b!156594 m!143033))

(declare-fun m!143035 () Bool)

(assert (=> bm!6514 m!143035))

(assert (=> b!156422 d!37849))

(declare-fun b!156620 () Bool)

(declare-fun e!94024 () Option!259)

(declare-fun lt!46415 () Option!259)

(declare-fun lt!46419 () Option!259)

(assert (=> b!156620 (= e!94024 (ite (and ((_ is None!258) lt!46415) ((_ is None!258) lt!46419)) None!258 (ite ((_ is None!258) lt!46419) lt!46415 (ite ((_ is None!258) lt!46415) lt!46419 (ite (>= (size!2286 (_1!1528 (v!13651 lt!46415))) (size!2286 (_1!1528 (v!13651 lt!46419)))) lt!46415 lt!46419)))))))

(declare-fun call!6524 () Option!259)

(assert (=> b!156620 (= lt!46415 call!6524)))

(assert (=> b!156620 (= lt!46419 (maxPrefix!115 thiss!17480 (t!25385 rules!1920) (++!592 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465)))) lt!46358)))))

(declare-fun b!156621 () Bool)

(declare-fun e!94026 () Bool)

(declare-fun lt!46418 () Option!259)

(declare-fun contains!427 (List!2721 Rule!750) Bool)

(declare-fun get!730 (Option!259) tuple2!2624)

(assert (=> b!156621 (= e!94026 (contains!427 rules!1920 (rule!982 (_1!1528 (get!730 lt!46418)))))))

(declare-fun b!156622 () Bool)

(declare-fun e!94025 () Bool)

(assert (=> b!156622 (= e!94025 e!94026)))

(declare-fun res!71357 () Bool)

(assert (=> b!156622 (=> (not res!71357) (not e!94026))))

(declare-fun isDefined!109 (Option!259) Bool)

(assert (=> b!156622 (= res!71357 (isDefined!109 lt!46418))))

(declare-fun b!156623 () Bool)

(declare-fun res!71356 () Bool)

(assert (=> b!156623 (=> (not res!71356) (not e!94026))))

(assert (=> b!156623 (= res!71356 (= (++!592 (list!961 (charsOf!130 (_1!1528 (get!730 lt!46418)))) (_2!1528 (get!730 lt!46418))) (++!592 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465)))) lt!46358)))))

(declare-fun b!156624 () Bool)

(assert (=> b!156624 (= e!94024 call!6524)))

(declare-fun bm!6519 () Bool)

(declare-fun maxPrefixOneRule!58 (LexerInterface!361 Rule!750 List!2720) Option!259)

(assert (=> bm!6519 (= call!6524 (maxPrefixOneRule!58 thiss!17480 (h!8108 rules!1920) (++!592 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465)))) lt!46358)))))

(declare-fun b!156625 () Bool)

(declare-fun res!71351 () Bool)

(assert (=> b!156625 (=> (not res!71351) (not e!94026))))

(declare-fun matchR!70 (Regex!699 List!2720) Bool)

(assert (=> b!156625 (= res!71351 (matchR!70 (regex!475 (rule!982 (_1!1528 (get!730 lt!46418)))) (list!961 (charsOf!130 (_1!1528 (get!730 lt!46418))))))))

(declare-fun b!156626 () Bool)

(declare-fun res!71353 () Bool)

(assert (=> b!156626 (=> (not res!71353) (not e!94026))))

(declare-fun apply!367 (TokenValueInjection!766 BalanceConc!1552) TokenValue!497)

(assert (=> b!156626 (= res!71353 (= (value!17853 (_1!1528 (get!730 lt!46418))) (apply!367 (transformation!475 (rule!982 (_1!1528 (get!730 lt!46418)))) (seqFromList!328 (originalCharacters!518 (_1!1528 (get!730 lt!46418)))))))))

(declare-fun b!156627 () Bool)

(declare-fun res!71355 () Bool)

(assert (=> b!156627 (=> (not res!71355) (not e!94026))))

(assert (=> b!156627 (= res!71355 (< (size!2291 (_2!1528 (get!730 lt!46418))) (size!2291 (++!592 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465)))) lt!46358))))))

(declare-fun b!156628 () Bool)

(declare-fun res!71352 () Bool)

(assert (=> b!156628 (=> (not res!71352) (not e!94026))))

(assert (=> b!156628 (= res!71352 (= (list!961 (charsOf!130 (_1!1528 (get!730 lt!46418)))) (originalCharacters!518 (_1!1528 (get!730 lt!46418)))))))

(declare-fun d!37851 () Bool)

(assert (=> d!37851 e!94025))

(declare-fun res!71354 () Bool)

(assert (=> d!37851 (=> res!71354 e!94025)))

(declare-fun isEmpty!1088 (Option!259) Bool)

(assert (=> d!37851 (= res!71354 (isEmpty!1088 lt!46418))))

(assert (=> d!37851 (= lt!46418 e!94024)))

(declare-fun c!31463 () Bool)

(assert (=> d!37851 (= c!31463 (and ((_ is Cons!2711) rules!1920) ((_ is Nil!2711) (t!25385 rules!1920))))))

(declare-fun lt!46417 () Unit!2136)

(declare-fun lt!46416 () Unit!2136)

(assert (=> d!37851 (= lt!46417 lt!46416)))

(declare-fun isPrefix!214 (List!2720 List!2720) Bool)

(assert (=> d!37851 (isPrefix!214 (++!592 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465)))) lt!46358) (++!592 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465)))) lt!46358))))

(declare-fun lemmaIsPrefixRefl!122 (List!2720 List!2720) Unit!2136)

(assert (=> d!37851 (= lt!46416 (lemmaIsPrefixRefl!122 (++!592 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465)))) lt!46358) (++!592 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465)))) lt!46358)))))

(assert (=> d!37851 (rulesValidInductive!99 thiss!17480 rules!1920)))

(assert (=> d!37851 (= (maxPrefix!115 thiss!17480 rules!1920 (++!592 (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465)))) lt!46358)) lt!46418)))

(assert (= (and d!37851 c!31463) b!156624))

(assert (= (and d!37851 (not c!31463)) b!156620))

(assert (= (or b!156624 b!156620) bm!6519))

(assert (= (and d!37851 (not res!71354)) b!156622))

(assert (= (and b!156622 res!71357) b!156628))

(assert (= (and b!156628 res!71352) b!156627))

(assert (= (and b!156627 res!71355) b!156623))

(assert (= (and b!156623 res!71356) b!156626))

(assert (= (and b!156626 res!71353) b!156625))

(assert (= (and b!156625 res!71351) b!156621))

(declare-fun m!143037 () Bool)

(assert (=> b!156623 m!143037))

(declare-fun m!143039 () Bool)

(assert (=> b!156623 m!143039))

(assert (=> b!156623 m!143039))

(declare-fun m!143041 () Bool)

(assert (=> b!156623 m!143041))

(assert (=> b!156623 m!143041))

(declare-fun m!143043 () Bool)

(assert (=> b!156623 m!143043))

(assert (=> b!156621 m!143037))

(declare-fun m!143045 () Bool)

(assert (=> b!156621 m!143045))

(assert (=> b!156620 m!142759))

(declare-fun m!143047 () Bool)

(assert (=> b!156620 m!143047))

(assert (=> b!156626 m!143037))

(declare-fun m!143049 () Bool)

(assert (=> b!156626 m!143049))

(assert (=> b!156626 m!143049))

(declare-fun m!143051 () Bool)

(assert (=> b!156626 m!143051))

(declare-fun m!143053 () Bool)

(assert (=> d!37851 m!143053))

(assert (=> d!37851 m!142759))

(assert (=> d!37851 m!142759))

(declare-fun m!143055 () Bool)

(assert (=> d!37851 m!143055))

(assert (=> d!37851 m!142759))

(assert (=> d!37851 m!142759))

(declare-fun m!143057 () Bool)

(assert (=> d!37851 m!143057))

(assert (=> d!37851 m!142965))

(assert (=> b!156627 m!143037))

(declare-fun m!143059 () Bool)

(assert (=> b!156627 m!143059))

(assert (=> b!156627 m!142759))

(declare-fun m!143061 () Bool)

(assert (=> b!156627 m!143061))

(assert (=> b!156628 m!143037))

(assert (=> b!156628 m!143039))

(assert (=> b!156628 m!143039))

(assert (=> b!156628 m!143041))

(declare-fun m!143063 () Bool)

(assert (=> b!156622 m!143063))

(assert (=> b!156625 m!143037))

(assert (=> b!156625 m!143039))

(assert (=> b!156625 m!143039))

(assert (=> b!156625 m!143041))

(assert (=> b!156625 m!143041))

(declare-fun m!143065 () Bool)

(assert (=> b!156625 m!143065))

(assert (=> bm!6519 m!142759))

(declare-fun m!143067 () Bool)

(assert (=> bm!6519 m!143067))

(assert (=> b!156422 d!37851))

(declare-fun d!37853 () Bool)

(assert (=> d!37853 (dynLambda!959 lambda!4180 (h!8109 (t!25386 tokens!465)))))

(declare-fun lt!46422 () Unit!2136)

(declare-fun choose!1768 (List!2722 Int Token!694) Unit!2136)

(assert (=> d!37853 (= lt!46422 (choose!1768 (t!25386 tokens!465) lambda!4180 (h!8109 (t!25386 tokens!465))))))

(declare-fun e!94029 () Bool)

(assert (=> d!37853 e!94029))

(declare-fun res!71360 () Bool)

(assert (=> d!37853 (=> (not res!71360) (not e!94029))))

(assert (=> d!37853 (= res!71360 (forall!479 (t!25386 tokens!465) lambda!4180))))

(assert (=> d!37853 (= (forallContained!58 (t!25386 tokens!465) lambda!4180 (h!8109 (t!25386 tokens!465))) lt!46422)))

(declare-fun b!156631 () Bool)

(declare-fun contains!428 (List!2722 Token!694) Bool)

(assert (=> b!156631 (= e!94029 (contains!428 (t!25386 tokens!465) (h!8109 (t!25386 tokens!465))))))

(assert (= (and d!37853 res!71360) b!156631))

(declare-fun b_lambda!3093 () Bool)

(assert (=> (not b_lambda!3093) (not d!37853)))

(declare-fun m!143069 () Bool)

(assert (=> d!37853 m!143069))

(declare-fun m!143071 () Bool)

(assert (=> d!37853 m!143071))

(declare-fun m!143073 () Bool)

(assert (=> d!37853 m!143073))

(declare-fun m!143075 () Bool)

(assert (=> b!156631 m!143075))

(assert (=> b!156422 d!37853))

(declare-fun d!37855 () Bool)

(assert (=> d!37855 (= (list!961 (charsOf!130 (h!8109 (t!25386 tokens!465)))) (list!964 (c!31335 (charsOf!130 (h!8109 (t!25386 tokens!465))))))))

(declare-fun bs!14496 () Bool)

(assert (= bs!14496 d!37855))

(declare-fun m!143077 () Bool)

(assert (=> bs!14496 m!143077))

(assert (=> b!156422 d!37855))

(assert (=> b!156422 d!37817))

(declare-fun d!37857 () Bool)

(declare-fun c!31466 () Bool)

(assert (=> d!37857 (= c!31466 ((_ is Node!772) (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465))))))))

(declare-fun e!94034 () Bool)

(assert (=> d!37857 (= (inv!3517 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465))))) e!94034)))

(declare-fun b!156638 () Bool)

(declare-fun inv!3519 (Conc!772) Bool)

(assert (=> b!156638 (= e!94034 (inv!3519 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465))))))))

(declare-fun b!156639 () Bool)

(declare-fun e!94035 () Bool)

(assert (=> b!156639 (= e!94034 e!94035)))

(declare-fun res!71363 () Bool)

(assert (=> b!156639 (= res!71363 (not ((_ is Leaf!1349) (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465)))))))))

(assert (=> b!156639 (=> res!71363 e!94035)))

(declare-fun b!156640 () Bool)

(declare-fun inv!3520 (Conc!772) Bool)

(assert (=> b!156640 (= e!94035 (inv!3520 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465))))))))

(assert (= (and d!37857 c!31466) b!156638))

(assert (= (and d!37857 (not c!31466)) b!156639))

(assert (= (and b!156639 (not res!71363)) b!156640))

(declare-fun m!143079 () Bool)

(assert (=> b!156638 m!143079))

(declare-fun m!143081 () Bool)

(assert (=> b!156640 m!143081))

(assert (=> b!156085 d!37857))

(declare-fun lt!46423 () Bool)

(declare-fun d!37859 () Bool)

(assert (=> d!37859 (= lt!46423 (isEmpty!1083 (list!961 (_2!1529 (lex!175 thiss!17480 rules!1920 (print!100 thiss!17480 (singletonSeq!33 separatorToken!170)))))))))

(assert (=> d!37859 (= lt!46423 (isEmpty!1087 (c!31335 (_2!1529 (lex!175 thiss!17480 rules!1920 (print!100 thiss!17480 (singletonSeq!33 separatorToken!170)))))))))

(assert (=> d!37859 (= (isEmpty!1084 (_2!1529 (lex!175 thiss!17480 rules!1920 (print!100 thiss!17480 (singletonSeq!33 separatorToken!170))))) lt!46423)))

(declare-fun bs!14497 () Bool)

(assert (= bs!14497 d!37859))

(declare-fun m!143083 () Bool)

(assert (=> bs!14497 m!143083))

(assert (=> bs!14497 m!143083))

(declare-fun m!143085 () Bool)

(assert (=> bs!14497 m!143085))

(declare-fun m!143087 () Bool)

(assert (=> bs!14497 m!143087))

(assert (=> b!156403 d!37859))

(declare-fun lt!46455 () tuple2!2626)

(declare-fun e!94076 () Bool)

(declare-fun b!156714 () Bool)

(assert (=> b!156714 (= e!94076 (= (_2!1529 lt!46455) (print!100 thiss!17480 (singletonSeq!33 separatorToken!170))))))

(declare-fun b!156715 () Bool)

(declare-fun e!94075 () Bool)

(declare-datatypes ((tuple2!2630 0))(
  ( (tuple2!2631 (_1!1531 List!2722) (_2!1531 List!2720)) )
))
(declare-fun lexList!99 (LexerInterface!361 List!2721 List!2720) tuple2!2630)

(assert (=> b!156715 (= e!94075 (= (list!961 (_2!1529 lt!46455)) (_2!1531 (lexList!99 thiss!17480 rules!1920 (list!961 (print!100 thiss!17480 (singletonSeq!33 separatorToken!170)))))))))

(declare-fun d!37861 () Bool)

(assert (=> d!37861 e!94075))

(declare-fun res!71398 () Bool)

(assert (=> d!37861 (=> (not res!71398) (not e!94075))))

(assert (=> d!37861 (= res!71398 e!94076)))

(declare-fun c!31486 () Bool)

(assert (=> d!37861 (= c!31486 (> (size!2287 (_1!1529 lt!46455)) 0))))

(declare-fun lexTailRecV2!86 (LexerInterface!361 List!2721 BalanceConc!1552 BalanceConc!1552 BalanceConc!1552 BalanceConc!1554) tuple2!2626)

(assert (=> d!37861 (= lt!46455 (lexTailRecV2!86 thiss!17480 rules!1920 (print!100 thiss!17480 (singletonSeq!33 separatorToken!170)) (BalanceConc!1553 Empty!772) (print!100 thiss!17480 (singletonSeq!33 separatorToken!170)) (BalanceConc!1555 Empty!773)))))

(assert (=> d!37861 (= (lex!175 thiss!17480 rules!1920 (print!100 thiss!17480 (singletonSeq!33 separatorToken!170))) lt!46455)))

(declare-fun b!156716 () Bool)

(declare-fun res!71399 () Bool)

(assert (=> b!156716 (=> (not res!71399) (not e!94075))))

(assert (=> b!156716 (= res!71399 (= (list!965 (_1!1529 lt!46455)) (_1!1531 (lexList!99 thiss!17480 rules!1920 (list!961 (print!100 thiss!17480 (singletonSeq!33 separatorToken!170)))))))))

(declare-fun b!156717 () Bool)

(declare-fun e!94074 () Bool)

(assert (=> b!156717 (= e!94076 e!94074)))

(declare-fun res!71400 () Bool)

(declare-fun size!2295 (BalanceConc!1552) Int)

(assert (=> b!156717 (= res!71400 (< (size!2295 (_2!1529 lt!46455)) (size!2295 (print!100 thiss!17480 (singletonSeq!33 separatorToken!170)))))))

(assert (=> b!156717 (=> (not res!71400) (not e!94074))))

(declare-fun b!156718 () Bool)

(declare-fun isEmpty!1089 (BalanceConc!1554) Bool)

(assert (=> b!156718 (= e!94074 (not (isEmpty!1089 (_1!1529 lt!46455))))))

(assert (= (and d!37861 c!31486) b!156717))

(assert (= (and d!37861 (not c!31486)) b!156714))

(assert (= (and b!156717 res!71400) b!156718))

(assert (= (and d!37861 res!71398) b!156716))

(assert (= (and b!156716 res!71399) b!156715))

(declare-fun m!143227 () Bool)

(assert (=> b!156717 m!143227))

(assert (=> b!156717 m!142723))

(declare-fun m!143229 () Bool)

(assert (=> b!156717 m!143229))

(declare-fun m!143231 () Bool)

(assert (=> d!37861 m!143231))

(assert (=> d!37861 m!142723))

(assert (=> d!37861 m!142723))

(declare-fun m!143233 () Bool)

(assert (=> d!37861 m!143233))

(declare-fun m!143235 () Bool)

(assert (=> b!156715 m!143235))

(assert (=> b!156715 m!142723))

(declare-fun m!143239 () Bool)

(assert (=> b!156715 m!143239))

(assert (=> b!156715 m!143239))

(declare-fun m!143241 () Bool)

(assert (=> b!156715 m!143241))

(declare-fun m!143243 () Bool)

(assert (=> b!156716 m!143243))

(assert (=> b!156716 m!142723))

(assert (=> b!156716 m!143239))

(assert (=> b!156716 m!143239))

(assert (=> b!156716 m!143241))

(declare-fun m!143247 () Bool)

(assert (=> b!156718 m!143247))

(assert (=> b!156403 d!37861))

(declare-fun d!37913 () Bool)

(declare-fun lt!46461 () BalanceConc!1552)

(declare-fun printList!55 (LexerInterface!361 List!2722) List!2720)

(assert (=> d!37913 (= (list!961 lt!46461) (printList!55 thiss!17480 (list!965 (singletonSeq!33 separatorToken!170))))))

(assert (=> d!37913 (= lt!46461 (printTailRec!63 thiss!17480 (singletonSeq!33 separatorToken!170) 0 (BalanceConc!1553 Empty!772)))))

(assert (=> d!37913 (= (print!100 thiss!17480 (singletonSeq!33 separatorToken!170)) lt!46461)))

(declare-fun bs!14522 () Bool)

(assert (= bs!14522 d!37913))

(declare-fun m!143279 () Bool)

(assert (=> bs!14522 m!143279))

(assert (=> bs!14522 m!142717))

(assert (=> bs!14522 m!142719))

(assert (=> bs!14522 m!142719))

(declare-fun m!143281 () Bool)

(assert (=> bs!14522 m!143281))

(assert (=> bs!14522 m!142717))

(declare-fun m!143283 () Bool)

(assert (=> bs!14522 m!143283))

(assert (=> b!156403 d!37913))

(declare-fun d!37931 () Bool)

(declare-fun e!94098 () Bool)

(assert (=> d!37931 e!94098))

(declare-fun res!71413 () Bool)

(assert (=> d!37931 (=> (not res!71413) (not e!94098))))

(declare-fun lt!46471 () BalanceConc!1554)

(assert (=> d!37931 (= res!71413 (= (list!965 lt!46471) (Cons!2712 separatorToken!170 Nil!2712)))))

(declare-fun singleton!23 (Token!694) BalanceConc!1554)

(assert (=> d!37931 (= lt!46471 (singleton!23 separatorToken!170))))

(assert (=> d!37931 (= (singletonSeq!33 separatorToken!170) lt!46471)))

(declare-fun b!156755 () Bool)

(declare-fun isBalanced!216 (Conc!773) Bool)

(assert (=> b!156755 (= e!94098 (isBalanced!216 (c!31337 lt!46471)))))

(assert (= (and d!37931 res!71413) b!156755))

(declare-fun m!143307 () Bool)

(assert (=> d!37931 m!143307))

(declare-fun m!143309 () Bool)

(assert (=> d!37931 m!143309))

(declare-fun m!143311 () Bool)

(assert (=> b!156755 m!143311))

(assert (=> b!156403 d!37931))

(declare-fun d!37943 () Bool)

(declare-fun e!94103 () Bool)

(assert (=> d!37943 e!94103))

(declare-fun res!71418 () Bool)

(assert (=> d!37943 (=> (not res!71418) (not e!94103))))

(declare-fun lt!46475 () BalanceConc!1552)

(assert (=> d!37943 (= res!71418 (= (list!961 lt!46475) lt!46186))))

(declare-fun fromList!89 (List!2720) Conc!772)

(assert (=> d!37943 (= lt!46475 (BalanceConc!1553 (fromList!89 lt!46186)))))

(assert (=> d!37943 (= (fromListB!136 lt!46186) lt!46475)))

(declare-fun b!156760 () Bool)

(assert (=> b!156760 (= e!94103 (isBalanced!215 (fromList!89 lt!46186)))))

(assert (= (and d!37943 res!71418) b!156760))

(declare-fun m!143321 () Bool)

(assert (=> d!37943 m!143321))

(declare-fun m!143323 () Bool)

(assert (=> d!37943 m!143323))

(assert (=> b!156760 m!143323))

(assert (=> b!156760 m!143323))

(declare-fun m!143325 () Bool)

(assert (=> b!156760 m!143325))

(assert (=> d!37661 d!37943))

(declare-fun lt!46476 () List!2720)

(declare-fun b!156770 () Bool)

(declare-fun e!94108 () Bool)

(assert (=> b!156770 (= e!94108 (or (not (= lt!46187 Nil!2710)) (= lt!46476 (t!25384 (++!592 lt!46185 lt!46189)))))))

(declare-fun d!37951 () Bool)

(assert (=> d!37951 e!94108))

(declare-fun res!71421 () Bool)

(assert (=> d!37951 (=> (not res!71421) (not e!94108))))

(assert (=> d!37951 (= res!71421 (= (content!375 lt!46476) ((_ map or) (content!375 (t!25384 (++!592 lt!46185 lt!46189))) (content!375 lt!46187))))))

(declare-fun e!94109 () List!2720)

(assert (=> d!37951 (= lt!46476 e!94109)))

(declare-fun c!31501 () Bool)

(assert (=> d!37951 (= c!31501 ((_ is Nil!2710) (t!25384 (++!592 lt!46185 lt!46189))))))

(assert (=> d!37951 (= (++!592 (t!25384 (++!592 lt!46185 lt!46189)) lt!46187) lt!46476)))

(declare-fun b!156769 () Bool)

(declare-fun res!71422 () Bool)

(assert (=> b!156769 (=> (not res!71422) (not e!94108))))

(assert (=> b!156769 (= res!71422 (= (size!2291 lt!46476) (+ (size!2291 (t!25384 (++!592 lt!46185 lt!46189))) (size!2291 lt!46187))))))

(declare-fun b!156768 () Bool)

(assert (=> b!156768 (= e!94109 (Cons!2710 (h!8107 (t!25384 (++!592 lt!46185 lt!46189))) (++!592 (t!25384 (t!25384 (++!592 lt!46185 lt!46189))) lt!46187)))))

(declare-fun b!156767 () Bool)

(assert (=> b!156767 (= e!94109 lt!46187)))

(assert (= (and d!37951 c!31501) b!156767))

(assert (= (and d!37951 (not c!31501)) b!156768))

(assert (= (and d!37951 res!71421) b!156769))

(assert (= (and b!156769 res!71422) b!156770))

(declare-fun m!143327 () Bool)

(assert (=> d!37951 m!143327))

(declare-fun m!143329 () Bool)

(assert (=> d!37951 m!143329))

(assert (=> d!37951 m!142805))

(declare-fun m!143331 () Bool)

(assert (=> b!156769 m!143331))

(declare-fun m!143333 () Bool)

(assert (=> b!156769 m!143333))

(assert (=> b!156769 m!142811))

(declare-fun m!143335 () Bool)

(assert (=> b!156768 m!143335))

(assert (=> b!156432 d!37951))

(assert (=> b!156421 d!37759))

(declare-fun d!37953 () Bool)

(assert (=> d!37953 (= (inv!3518 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465)))) (isBalanced!215 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465))))))))

(declare-fun bs!14523 () Bool)

(assert (= bs!14523 d!37953))

(declare-fun m!143351 () Bool)

(assert (=> bs!14523 m!143351))

(assert (=> tb!5467 d!37953))

(declare-fun d!37959 () Bool)

(assert (=> d!37959 (= (inv!3510 (tag!653 (rule!982 (h!8109 (t!25386 tokens!465))))) (= (mod (str.len (value!17852 (tag!653 (rule!982 (h!8109 (t!25386 tokens!465)))))) 2) 0))))

(assert (=> b!156460 d!37959))

(declare-fun d!37961 () Bool)

(declare-fun res!71426 () Bool)

(declare-fun e!94114 () Bool)

(assert (=> d!37961 (=> (not res!71426) (not e!94114))))

(assert (=> d!37961 (= res!71426 (semiInverseModEq!165 (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (toValue!1118 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465)))))))))

(assert (=> d!37961 (= (inv!3514 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) e!94114)))

(declare-fun b!156778 () Bool)

(assert (=> b!156778 (= e!94114 (equivClasses!148 (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (toValue!1118 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465)))))))))

(assert (= (and d!37961 res!71426) b!156778))

(declare-fun m!143353 () Bool)

(assert (=> d!37961 m!143353))

(declare-fun m!143355 () Bool)

(assert (=> b!156778 m!143355))

(assert (=> b!156460 d!37961))

(declare-fun d!37963 () Bool)

(declare-fun lt!46478 () Int)

(assert (=> d!37963 (>= lt!46478 0)))

(declare-fun e!94115 () Int)

(assert (=> d!37963 (= lt!46478 e!94115)))

(declare-fun c!31504 () Bool)

(assert (=> d!37963 (= c!31504 ((_ is Nil!2710) lt!46369))))

(assert (=> d!37963 (= (size!2291 lt!46369) lt!46478)))

(declare-fun b!156779 () Bool)

(assert (=> b!156779 (= e!94115 0)))

(declare-fun b!156780 () Bool)

(assert (=> b!156780 (= e!94115 (+ 1 (size!2291 (t!25384 lt!46369))))))

(assert (= (and d!37963 c!31504) b!156779))

(assert (= (and d!37963 (not c!31504)) b!156780))

(declare-fun m!143357 () Bool)

(assert (=> b!156780 m!143357))

(assert (=> b!156437 d!37963))

(assert (=> b!156437 d!37811))

(declare-fun d!37965 () Bool)

(declare-fun lt!46479 () Int)

(assert (=> d!37965 (>= lt!46479 0)))

(declare-fun e!94116 () Int)

(assert (=> d!37965 (= lt!46479 e!94116)))

(declare-fun c!31505 () Bool)

(assert (=> d!37965 (= c!31505 ((_ is Nil!2710) lt!46187))))

(assert (=> d!37965 (= (size!2291 lt!46187) lt!46479)))

(declare-fun b!156781 () Bool)

(assert (=> b!156781 (= e!94116 0)))

(declare-fun b!156782 () Bool)

(assert (=> b!156782 (= e!94116 (+ 1 (size!2291 (t!25384 lt!46187))))))

(assert (= (and d!37965 c!31505) b!156781))

(assert (= (and d!37965 (not c!31505)) b!156782))

(declare-fun m!143359 () Bool)

(assert (=> b!156782 m!143359))

(assert (=> b!156437 d!37965))

(declare-fun d!37967 () Bool)

(declare-fun charsToInt!0 (List!2719) (_ BitVec 32))

(assert (=> d!37967 (= (inv!16 (value!17853 (h!8109 tokens!465))) (= (charsToInt!0 (text!3926 (value!17853 (h!8109 tokens!465)))) (value!17844 (value!17853 (h!8109 tokens!465)))))))

(declare-fun bs!14524 () Bool)

(assert (= bs!14524 d!37967))

(declare-fun m!143361 () Bool)

(assert (=> bs!14524 m!143361))

(assert (=> b!156381 d!37967))

(declare-fun d!37969 () Bool)

(assert (=> d!37969 (= (isEmpty!1083 (originalCharacters!518 separatorToken!170)) ((_ is Nil!2710) (originalCharacters!518 separatorToken!170)))))

(assert (=> d!37725 d!37969))

(declare-fun d!37971 () Bool)

(declare-fun res!71427 () Bool)

(declare-fun e!94117 () Bool)

(assert (=> d!37971 (=> res!71427 e!94117)))

(assert (=> d!37971 (= res!71427 ((_ is Nil!2712) (list!965 lt!46190)))))

(assert (=> d!37971 (= (forall!479 (list!965 lt!46190) lambda!4158) e!94117)))

(declare-fun b!156783 () Bool)

(declare-fun e!94118 () Bool)

(assert (=> b!156783 (= e!94117 e!94118)))

(declare-fun res!71428 () Bool)

(assert (=> b!156783 (=> (not res!71428) (not e!94118))))

(assert (=> b!156783 (= res!71428 (dynLambda!959 lambda!4158 (h!8109 (list!965 lt!46190))))))

(declare-fun b!156784 () Bool)

(assert (=> b!156784 (= e!94118 (forall!479 (t!25386 (list!965 lt!46190)) lambda!4158))))

(assert (= (and d!37971 (not res!71427)) b!156783))

(assert (= (and b!156783 res!71428) b!156784))

(declare-fun b_lambda!3095 () Bool)

(assert (=> (not b_lambda!3095) (not b!156783)))

(declare-fun m!143363 () Bool)

(assert (=> b!156783 m!143363))

(declare-fun m!143365 () Bool)

(assert (=> b!156784 m!143365))

(assert (=> d!37663 d!37971))

(declare-fun d!37973 () Bool)

(declare-fun list!968 (Conc!773) List!2722)

(assert (=> d!37973 (= (list!965 lt!46190) (list!968 (c!31337 lt!46190)))))

(declare-fun bs!14525 () Bool)

(assert (= bs!14525 d!37973))

(declare-fun m!143367 () Bool)

(assert (=> bs!14525 m!143367))

(assert (=> d!37663 d!37973))

(declare-fun d!37975 () Bool)

(declare-fun lt!46482 () Bool)

(assert (=> d!37975 (= lt!46482 (forall!479 (list!965 lt!46190) lambda!4158))))

(declare-fun forall!483 (Conc!773 Int) Bool)

(assert (=> d!37975 (= lt!46482 (forall!483 (c!31337 lt!46190) lambda!4158))))

(assert (=> d!37975 (= (forall!481 lt!46190 lambda!4158) lt!46482)))

(declare-fun bs!14526 () Bool)

(assert (= bs!14526 d!37975))

(assert (=> bs!14526 m!142451))

(assert (=> bs!14526 m!142451))

(assert (=> bs!14526 m!142453))

(declare-fun m!143369 () Bool)

(assert (=> bs!14526 m!143369))

(assert (=> d!37663 d!37975))

(assert (=> d!37663 d!37729))

(declare-fun d!37977 () Bool)

(declare-fun charsToBigInt!1 (List!2719) Int)

(assert (=> d!37977 (= (inv!17 (value!17853 (h!8109 tokens!465))) (= (charsToBigInt!1 (text!3927 (value!17853 (h!8109 tokens!465)))) (value!17845 (value!17853 (h!8109 tokens!465)))))))

(declare-fun bs!14527 () Bool)

(assert (= bs!14527 d!37977))

(declare-fun m!143371 () Bool)

(assert (=> bs!14527 m!143371))

(assert (=> b!156383 d!37977))

(declare-fun e!94119 () Bool)

(declare-fun lt!46483 () List!2720)

(declare-fun b!156788 () Bool)

(assert (=> b!156788 (= e!94119 (or (not (= (ite c!31404 lt!46343 call!6508) Nil!2710)) (= lt!46483 call!6509)))))

(declare-fun d!37979 () Bool)

(assert (=> d!37979 e!94119))

(declare-fun res!71429 () Bool)

(assert (=> d!37979 (=> (not res!71429) (not e!94119))))

(assert (=> d!37979 (= res!71429 (= (content!375 lt!46483) ((_ map or) (content!375 call!6509) (content!375 (ite c!31404 lt!46343 call!6508)))))))

(declare-fun e!94120 () List!2720)

(assert (=> d!37979 (= lt!46483 e!94120)))

(declare-fun c!31506 () Bool)

(assert (=> d!37979 (= c!31506 ((_ is Nil!2710) call!6509))))

(assert (=> d!37979 (= (++!592 call!6509 (ite c!31404 lt!46343 call!6508)) lt!46483)))

(declare-fun b!156787 () Bool)

(declare-fun res!71430 () Bool)

(assert (=> b!156787 (=> (not res!71430) (not e!94119))))

(assert (=> b!156787 (= res!71430 (= (size!2291 lt!46483) (+ (size!2291 call!6509) (size!2291 (ite c!31404 lt!46343 call!6508)))))))

(declare-fun b!156786 () Bool)

(assert (=> b!156786 (= e!94120 (Cons!2710 (h!8107 call!6509) (++!592 (t!25384 call!6509) (ite c!31404 lt!46343 call!6508))))))

(declare-fun b!156785 () Bool)

(assert (=> b!156785 (= e!94120 (ite c!31404 lt!46343 call!6508))))

(assert (= (and d!37979 c!31506) b!156785))

(assert (= (and d!37979 (not c!31506)) b!156786))

(assert (= (and d!37979 res!71429) b!156787))

(assert (= (and b!156787 res!71430) b!156788))

(declare-fun m!143373 () Bool)

(assert (=> d!37979 m!143373))

(declare-fun m!143375 () Bool)

(assert (=> d!37979 m!143375))

(declare-fun m!143377 () Bool)

(assert (=> d!37979 m!143377))

(declare-fun m!143379 () Bool)

(assert (=> b!156787 m!143379))

(declare-fun m!143381 () Bool)

(assert (=> b!156787 m!143381))

(declare-fun m!143383 () Bool)

(assert (=> b!156787 m!143383))

(declare-fun m!143385 () Bool)

(assert (=> b!156786 m!143385))

(assert (=> bm!6504 d!37979))

(declare-fun d!37981 () Bool)

(declare-fun charsToBigInt!0 (List!2719 Int) Int)

(assert (=> d!37981 (= (inv!15 (value!17853 separatorToken!170)) (= (charsToBigInt!0 (text!3928 (value!17853 separatorToken!170)) 0) (value!17848 (value!17853 separatorToken!170))))))

(declare-fun bs!14528 () Bool)

(assert (= bs!14528 d!37981))

(declare-fun m!143387 () Bool)

(assert (=> bs!14528 m!143387))

(assert (=> b!156443 d!37981))

(declare-fun d!37983 () Bool)

(assert (=> d!37983 (= (list!961 lt!46365) (list!964 (c!31335 lt!46365)))))

(declare-fun bs!14529 () Bool)

(assert (= bs!14529 d!37983))

(declare-fun m!143389 () Bool)

(assert (=> bs!14529 m!143389))

(assert (=> d!37755 d!37983))

(declare-fun d!37985 () Bool)

(declare-fun e!94123 () Bool)

(assert (=> d!37985 e!94123))

(declare-fun res!71433 () Bool)

(assert (=> d!37985 (=> (not res!71433) (not e!94123))))

(declare-fun lt!46486 () BalanceConc!1554)

(assert (=> d!37985 (= res!71433 (= (list!965 lt!46486) tokens!465))))

(declare-fun fromList!90 (List!2722) Conc!773)

(assert (=> d!37985 (= lt!46486 (BalanceConc!1555 (fromList!90 tokens!465)))))

(assert (=> d!37985 (= (fromListB!137 tokens!465) lt!46486)))

(declare-fun b!156791 () Bool)

(assert (=> b!156791 (= e!94123 (isBalanced!216 (fromList!90 tokens!465)))))

(assert (= (and d!37985 res!71433) b!156791))

(declare-fun m!143391 () Bool)

(assert (=> d!37985 m!143391))

(declare-fun m!143393 () Bool)

(assert (=> d!37985 m!143393))

(assert (=> b!156791 m!143393))

(assert (=> b!156791 m!143393))

(declare-fun m!143395 () Bool)

(assert (=> b!156791 m!143395))

(assert (=> d!37693 d!37985))

(declare-fun d!37987 () Bool)

(declare-fun lt!46489 () Int)

(assert (=> d!37987 (>= lt!46489 0)))

(declare-fun e!94126 () Int)

(assert (=> d!37987 (= lt!46489 e!94126)))

(declare-fun c!31510 () Bool)

(assert (=> d!37987 (= c!31510 ((_ is Nil!2712) (list!965 (seqFromList!327 (t!25386 tokens!465)))))))

(assert (=> d!37987 (= (size!2292 (list!965 (seqFromList!327 (t!25386 tokens!465)))) lt!46489)))

(declare-fun b!156796 () Bool)

(assert (=> b!156796 (= e!94126 0)))

(declare-fun b!156797 () Bool)

(assert (=> b!156797 (= e!94126 (+ 1 (size!2292 (t!25386 (list!965 (seqFromList!327 (t!25386 tokens!465)))))))))

(assert (= (and d!37987 c!31510) b!156796))

(assert (= (and d!37987 (not c!31510)) b!156797))

(declare-fun m!143397 () Bool)

(assert (=> b!156797 m!143397))

(assert (=> d!37751 d!37987))

(declare-fun d!37989 () Bool)

(assert (=> d!37989 (= (list!965 (seqFromList!327 (t!25386 tokens!465))) (list!968 (c!31337 (seqFromList!327 (t!25386 tokens!465)))))))

(declare-fun bs!14530 () Bool)

(assert (= bs!14530 d!37989))

(declare-fun m!143399 () Bool)

(assert (=> bs!14530 m!143399))

(assert (=> d!37751 d!37989))

(declare-fun d!37991 () Bool)

(declare-fun lt!46492 () Int)

(assert (=> d!37991 (= lt!46492 (size!2292 (list!968 (c!31337 (seqFromList!327 (t!25386 tokens!465))))))))

(assert (=> d!37991 (= lt!46492 (ite ((_ is Empty!773) (c!31337 (seqFromList!327 (t!25386 tokens!465)))) 0 (ite ((_ is Leaf!1350) (c!31337 (seqFromList!327 (t!25386 tokens!465)))) (csize!1777 (c!31337 (seqFromList!327 (t!25386 tokens!465)))) (csize!1776 (c!31337 (seqFromList!327 (t!25386 tokens!465)))))))))

(assert (=> d!37991 (= (size!2293 (c!31337 (seqFromList!327 (t!25386 tokens!465)))) lt!46492)))

(declare-fun bs!14531 () Bool)

(assert (= bs!14531 d!37991))

(assert (=> bs!14531 m!143399))

(assert (=> bs!14531 m!143399))

(declare-fun m!143401 () Bool)

(assert (=> bs!14531 m!143401))

(assert (=> d!37751 d!37991))

(declare-fun d!37993 () Bool)

(declare-fun res!71434 () Bool)

(declare-fun e!94127 () Bool)

(assert (=> d!37993 (=> (not res!71434) (not e!94127))))

(assert (=> d!37993 (= res!71434 (not (isEmpty!1083 (originalCharacters!518 (h!8109 (t!25386 tokens!465))))))))

(assert (=> d!37993 (= (inv!3513 (h!8109 (t!25386 tokens!465))) e!94127)))

(declare-fun b!156798 () Bool)

(declare-fun res!71435 () Bool)

(assert (=> b!156798 (=> (not res!71435) (not e!94127))))

(assert (=> b!156798 (= res!71435 (= (originalCharacters!518 (h!8109 (t!25386 tokens!465))) (list!961 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (value!17853 (h!8109 (t!25386 tokens!465)))))))))

(declare-fun b!156799 () Bool)

(assert (=> b!156799 (= e!94127 (= (size!2286 (h!8109 (t!25386 tokens!465))) (size!2291 (originalCharacters!518 (h!8109 (t!25386 tokens!465))))))))

(assert (= (and d!37993 res!71434) b!156798))

(assert (= (and b!156798 res!71435) b!156799))

(declare-fun b_lambda!3097 () Bool)

(assert (=> (not b_lambda!3097) (not b!156798)))

(assert (=> b!156798 t!25461))

(declare-fun b_and!9461 () Bool)

(assert (= b_and!9451 (and (=> t!25461 result!8052) b_and!9461)))

(assert (=> b!156798 t!25453))

(declare-fun b_and!9463 () Bool)

(assert (= b_and!9455 (and (=> t!25453 result!8044) b_and!9463)))

(assert (=> b!156798 t!25457))

(declare-fun b_and!9465 () Bool)

(assert (= b_and!9457 (and (=> t!25457 result!8048) b_and!9465)))

(assert (=> b!156798 t!25459))

(declare-fun b_and!9467 () Bool)

(assert (= b_and!9459 (and (=> t!25459 result!8050) b_and!9467)))

(assert (=> b!156798 t!25455))

(declare-fun b_and!9469 () Bool)

(assert (= b_and!9453 (and (=> t!25455 result!8046) b_and!9469)))

(declare-fun m!143403 () Bool)

(assert (=> d!37993 m!143403))

(assert (=> b!156798 m!142923))

(assert (=> b!156798 m!142923))

(declare-fun m!143405 () Bool)

(assert (=> b!156798 m!143405))

(declare-fun m!143407 () Bool)

(assert (=> b!156799 m!143407))

(assert (=> b!156458 d!37993))

(declare-fun b!156803 () Bool)

(declare-fun lt!46493 () BalanceConc!1552)

(declare-fun e!94128 () Bool)

(assert (=> b!156803 (= e!94128 (= (list!961 lt!46493) (++!592 (list!961 e!93782) (list!961 (ite c!31377 lt!46272 call!6475)))))))

(declare-fun b!156801 () Bool)

(declare-fun res!71437 () Bool)

(assert (=> b!156801 (=> (not res!71437) (not e!94128))))

(assert (=> b!156801 (= res!71437 (<= (height!80 (++!596 (c!31335 e!93782) (c!31335 (ite c!31377 lt!46272 call!6475)))) (+ (max!0 (height!80 (c!31335 e!93782)) (height!80 (c!31335 (ite c!31377 lt!46272 call!6475)))) 1)))))

(declare-fun b!156802 () Bool)

(declare-fun res!71438 () Bool)

(assert (=> b!156802 (=> (not res!71438) (not e!94128))))

(assert (=> b!156802 (= res!71438 (>= (height!80 (++!596 (c!31335 e!93782) (c!31335 (ite c!31377 lt!46272 call!6475)))) (max!0 (height!80 (c!31335 e!93782)) (height!80 (c!31335 (ite c!31377 lt!46272 call!6475))))))))

(declare-fun b!156800 () Bool)

(declare-fun res!71436 () Bool)

(assert (=> b!156800 (=> (not res!71436) (not e!94128))))

(assert (=> b!156800 (= res!71436 (isBalanced!215 (++!596 (c!31335 e!93782) (c!31335 (ite c!31377 lt!46272 call!6475)))))))

(declare-fun d!37995 () Bool)

(assert (=> d!37995 e!94128))

(declare-fun res!71439 () Bool)

(assert (=> d!37995 (=> (not res!71439) (not e!94128))))

(assert (=> d!37995 (= res!71439 (appendAssocInst!21 (c!31335 e!93782) (c!31335 (ite c!31377 lt!46272 call!6475))))))

(assert (=> d!37995 (= lt!46493 (BalanceConc!1553 (++!596 (c!31335 e!93782) (c!31335 (ite c!31377 lt!46272 call!6475)))))))

(assert (=> d!37995 (= (++!594 e!93782 (ite c!31377 lt!46272 call!6475)) lt!46493)))

(assert (= (and d!37995 res!71439) b!156800))

(assert (= (and b!156800 res!71436) b!156801))

(assert (= (and b!156801 res!71437) b!156802))

(assert (= (and b!156802 res!71438) b!156803))

(declare-fun m!143409 () Bool)

(assert (=> b!156803 m!143409))

(declare-fun m!143411 () Bool)

(assert (=> b!156803 m!143411))

(declare-fun m!143413 () Bool)

(assert (=> b!156803 m!143413))

(assert (=> b!156803 m!143411))

(assert (=> b!156803 m!143413))

(declare-fun m!143415 () Bool)

(assert (=> b!156803 m!143415))

(declare-fun m!143417 () Bool)

(assert (=> b!156802 m!143417))

(declare-fun m!143419 () Bool)

(assert (=> b!156802 m!143419))

(declare-fun m!143421 () Bool)

(assert (=> b!156802 m!143421))

(assert (=> b!156802 m!143419))

(declare-fun m!143423 () Bool)

(assert (=> b!156802 m!143423))

(declare-fun m!143425 () Bool)

(assert (=> b!156802 m!143425))

(assert (=> b!156802 m!143423))

(assert (=> b!156802 m!143417))

(declare-fun m!143427 () Bool)

(assert (=> d!37995 m!143427))

(assert (=> d!37995 m!143423))

(assert (=> b!156800 m!143423))

(assert (=> b!156800 m!143423))

(declare-fun m!143429 () Bool)

(assert (=> b!156800 m!143429))

(assert (=> b!156801 m!143417))

(assert (=> b!156801 m!143419))

(assert (=> b!156801 m!143421))

(assert (=> b!156801 m!143419))

(assert (=> b!156801 m!143423))

(assert (=> b!156801 m!143425))

(assert (=> b!156801 m!143423))

(assert (=> b!156801 m!143417))

(assert (=> bm!6468 d!37995))

(declare-fun d!37997 () Bool)

(assert (=> d!37997 (= (list!961 e!93911) (list!964 (c!31335 e!93911)))))

(declare-fun bs!14532 () Bool)

(assert (= bs!14532 d!37997))

(declare-fun m!143431 () Bool)

(assert (=> bs!14532 m!143431))

(assert (=> bm!6511 d!37997))

(assert (=> bm!6502 d!37755))

(declare-fun d!37999 () Bool)

(declare-fun e!94129 () Bool)

(assert (=> d!37999 e!94129))

(declare-fun res!71440 () Bool)

(assert (=> d!37999 (=> (not res!71440) (not e!94129))))

(declare-fun lt!46494 () BalanceConc!1554)

(assert (=> d!37999 (= res!71440 (= (list!965 lt!46494) (t!25386 tokens!465)))))

(assert (=> d!37999 (= lt!46494 (BalanceConc!1555 (fromList!90 (t!25386 tokens!465))))))

(assert (=> d!37999 (= (fromListB!137 (t!25386 tokens!465)) lt!46494)))

(declare-fun b!156804 () Bool)

(assert (=> b!156804 (= e!94129 (isBalanced!216 (fromList!90 (t!25386 tokens!465))))))

(assert (= (and d!37999 res!71440) b!156804))

(declare-fun m!143433 () Bool)

(assert (=> d!37999 m!143433))

(declare-fun m!143435 () Bool)

(assert (=> d!37999 m!143435))

(assert (=> b!156804 m!143435))

(assert (=> b!156804 m!143435))

(declare-fun m!143437 () Bool)

(assert (=> b!156804 m!143437))

(assert (=> d!37745 d!37999))

(declare-fun d!38001 () Bool)

(assert (=> d!38001 true))

(declare-fun order!1377 () Int)

(declare-fun lambda!4199 () Int)

(declare-fun dynLambda!967 (Int Int) Int)

(assert (=> d!38001 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (rule!982 separatorToken!170)))) (dynLambda!967 order!1377 lambda!4199))))

(declare-fun Forall2!102 (Int) Bool)

(assert (=> d!38001 (= (equivClasses!148 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toValue!1118 (transformation!475 (rule!982 separatorToken!170)))) (Forall2!102 lambda!4199))))

(declare-fun bs!14533 () Bool)

(assert (= bs!14533 d!38001))

(declare-fun m!143439 () Bool)

(assert (=> bs!14533 m!143439))

(assert (=> b!156393 d!38001))

(declare-fun lt!46505 () List!2720)

(declare-fun e!94138 () Bool)

(declare-fun b!156830 () Bool)

(assert (=> b!156830 (= e!94138 (or (not (= lt!46343 Nil!2710)) (= lt!46505 (list!961 (charsOf!130 (h!8109 tokens!465))))))))

(declare-fun d!38003 () Bool)

(assert (=> d!38003 e!94138))

(declare-fun res!71457 () Bool)

(assert (=> d!38003 (=> (not res!71457) (not e!94138))))

(assert (=> d!38003 (= res!71457 (= (content!375 lt!46505) ((_ map or) (content!375 (list!961 (charsOf!130 (h!8109 tokens!465)))) (content!375 lt!46343))))))

(declare-fun e!94139 () List!2720)

(assert (=> d!38003 (= lt!46505 e!94139)))

(declare-fun c!31513 () Bool)

(assert (=> d!38003 (= c!31513 ((_ is Nil!2710) (list!961 (charsOf!130 (h!8109 tokens!465)))))))

(assert (=> d!38003 (= (++!592 (list!961 (charsOf!130 (h!8109 tokens!465))) lt!46343) lt!46505)))

(declare-fun b!156829 () Bool)

(declare-fun res!71458 () Bool)

(assert (=> b!156829 (=> (not res!71458) (not e!94138))))

(assert (=> b!156829 (= res!71458 (= (size!2291 lt!46505) (+ (size!2291 (list!961 (charsOf!130 (h!8109 tokens!465)))) (size!2291 lt!46343))))))

(declare-fun b!156828 () Bool)

(assert (=> b!156828 (= e!94139 (Cons!2710 (h!8107 (list!961 (charsOf!130 (h!8109 tokens!465)))) (++!592 (t!25384 (list!961 (charsOf!130 (h!8109 tokens!465)))) lt!46343)))))

(declare-fun b!156827 () Bool)

(assert (=> b!156827 (= e!94139 lt!46343)))

(assert (= (and d!38003 c!31513) b!156827))

(assert (= (and d!38003 (not c!31513)) b!156828))

(assert (= (and d!38003 res!71457) b!156829))

(assert (= (and b!156829 res!71458) b!156830))

(declare-fun m!143441 () Bool)

(assert (=> d!38003 m!143441))

(assert (=> d!38003 m!142285))

(declare-fun m!143443 () Bool)

(assert (=> d!38003 m!143443))

(declare-fun m!143445 () Bool)

(assert (=> d!38003 m!143445))

(declare-fun m!143447 () Bool)

(assert (=> b!156829 m!143447))

(assert (=> b!156829 m!142285))

(declare-fun m!143449 () Bool)

(assert (=> b!156829 m!143449))

(declare-fun m!143451 () Bool)

(assert (=> b!156829 m!143451))

(declare-fun m!143453 () Bool)

(assert (=> b!156828 m!143453))

(assert (=> b!156362 d!38003))

(assert (=> b!156362 d!37749))

(declare-fun b!156831 () Bool)

(declare-fun e!94140 () Option!259)

(declare-fun lt!46506 () Option!259)

(declare-fun lt!46510 () Option!259)

(assert (=> b!156831 (= e!94140 (ite (and ((_ is None!258) lt!46506) ((_ is None!258) lt!46510)) None!258 (ite ((_ is None!258) lt!46510) lt!46506 (ite ((_ is None!258) lt!46506) lt!46510 (ite (>= (size!2286 (_1!1528 (v!13651 lt!46506))) (size!2286 (_1!1528 (v!13651 lt!46510)))) lt!46506 lt!46510)))))))

(declare-fun call!6532 () Option!259)

(assert (=> b!156831 (= lt!46506 call!6532)))

(assert (=> b!156831 (= lt!46510 (maxPrefix!115 thiss!17480 (t!25385 rules!1920) (++!592 (list!961 (charsOf!130 (h!8109 tokens!465))) lt!46343)))))

(declare-fun b!156832 () Bool)

(declare-fun e!94142 () Bool)

(declare-fun lt!46509 () Option!259)

(assert (=> b!156832 (= e!94142 (contains!427 rules!1920 (rule!982 (_1!1528 (get!730 lt!46509)))))))

(declare-fun b!156833 () Bool)

(declare-fun e!94141 () Bool)

(assert (=> b!156833 (= e!94141 e!94142)))

(declare-fun res!71465 () Bool)

(assert (=> b!156833 (=> (not res!71465) (not e!94142))))

(assert (=> b!156833 (= res!71465 (isDefined!109 lt!46509))))

(declare-fun b!156834 () Bool)

(declare-fun res!71464 () Bool)

(assert (=> b!156834 (=> (not res!71464) (not e!94142))))

(assert (=> b!156834 (= res!71464 (= (++!592 (list!961 (charsOf!130 (_1!1528 (get!730 lt!46509)))) (_2!1528 (get!730 lt!46509))) (++!592 (list!961 (charsOf!130 (h!8109 tokens!465))) lt!46343)))))

(declare-fun b!156835 () Bool)

(assert (=> b!156835 (= e!94140 call!6532)))

(declare-fun bm!6527 () Bool)

(assert (=> bm!6527 (= call!6532 (maxPrefixOneRule!58 thiss!17480 (h!8108 rules!1920) (++!592 (list!961 (charsOf!130 (h!8109 tokens!465))) lt!46343)))))

(declare-fun b!156836 () Bool)

(declare-fun res!71459 () Bool)

(assert (=> b!156836 (=> (not res!71459) (not e!94142))))

(assert (=> b!156836 (= res!71459 (matchR!70 (regex!475 (rule!982 (_1!1528 (get!730 lt!46509)))) (list!961 (charsOf!130 (_1!1528 (get!730 lt!46509))))))))

(declare-fun b!156837 () Bool)

(declare-fun res!71461 () Bool)

(assert (=> b!156837 (=> (not res!71461) (not e!94142))))

(assert (=> b!156837 (= res!71461 (= (value!17853 (_1!1528 (get!730 lt!46509))) (apply!367 (transformation!475 (rule!982 (_1!1528 (get!730 lt!46509)))) (seqFromList!328 (originalCharacters!518 (_1!1528 (get!730 lt!46509)))))))))

(declare-fun b!156838 () Bool)

(declare-fun res!71463 () Bool)

(assert (=> b!156838 (=> (not res!71463) (not e!94142))))

(assert (=> b!156838 (= res!71463 (< (size!2291 (_2!1528 (get!730 lt!46509))) (size!2291 (++!592 (list!961 (charsOf!130 (h!8109 tokens!465))) lt!46343))))))

(declare-fun b!156839 () Bool)

(declare-fun res!71460 () Bool)

(assert (=> b!156839 (=> (not res!71460) (not e!94142))))

(assert (=> b!156839 (= res!71460 (= (list!961 (charsOf!130 (_1!1528 (get!730 lt!46509)))) (originalCharacters!518 (_1!1528 (get!730 lt!46509)))))))

(declare-fun d!38005 () Bool)

(assert (=> d!38005 e!94141))

(declare-fun res!71462 () Bool)

(assert (=> d!38005 (=> res!71462 e!94141)))

(assert (=> d!38005 (= res!71462 (isEmpty!1088 lt!46509))))

(assert (=> d!38005 (= lt!46509 e!94140)))

(declare-fun c!31514 () Bool)

(assert (=> d!38005 (= c!31514 (and ((_ is Cons!2711) rules!1920) ((_ is Nil!2711) (t!25385 rules!1920))))))

(declare-fun lt!46508 () Unit!2136)

(declare-fun lt!46507 () Unit!2136)

(assert (=> d!38005 (= lt!46508 lt!46507)))

(assert (=> d!38005 (isPrefix!214 (++!592 (list!961 (charsOf!130 (h!8109 tokens!465))) lt!46343) (++!592 (list!961 (charsOf!130 (h!8109 tokens!465))) lt!46343))))

(assert (=> d!38005 (= lt!46507 (lemmaIsPrefixRefl!122 (++!592 (list!961 (charsOf!130 (h!8109 tokens!465))) lt!46343) (++!592 (list!961 (charsOf!130 (h!8109 tokens!465))) lt!46343)))))

(assert (=> d!38005 (rulesValidInductive!99 thiss!17480 rules!1920)))

(assert (=> d!38005 (= (maxPrefix!115 thiss!17480 rules!1920 (++!592 (list!961 (charsOf!130 (h!8109 tokens!465))) lt!46343)) lt!46509)))

(assert (= (and d!38005 c!31514) b!156835))

(assert (= (and d!38005 (not c!31514)) b!156831))

(assert (= (or b!156835 b!156831) bm!6527))

(assert (= (and d!38005 (not res!71462)) b!156833))

(assert (= (and b!156833 res!71465) b!156839))

(assert (= (and b!156839 res!71460) b!156838))

(assert (= (and b!156838 res!71463) b!156834))

(assert (= (and b!156834 res!71464) b!156837))

(assert (= (and b!156837 res!71461) b!156836))

(assert (= (and b!156836 res!71459) b!156832))

(declare-fun m!143455 () Bool)

(assert (=> b!156834 m!143455))

(declare-fun m!143457 () Bool)

(assert (=> b!156834 m!143457))

(assert (=> b!156834 m!143457))

(declare-fun m!143459 () Bool)

(assert (=> b!156834 m!143459))

(assert (=> b!156834 m!143459))

(declare-fun m!143461 () Bool)

(assert (=> b!156834 m!143461))

(assert (=> b!156832 m!143455))

(declare-fun m!143463 () Bool)

(assert (=> b!156832 m!143463))

(assert (=> b!156831 m!142667))

(declare-fun m!143465 () Bool)

(assert (=> b!156831 m!143465))

(assert (=> b!156837 m!143455))

(declare-fun m!143467 () Bool)

(assert (=> b!156837 m!143467))

(assert (=> b!156837 m!143467))

(declare-fun m!143469 () Bool)

(assert (=> b!156837 m!143469))

(declare-fun m!143471 () Bool)

(assert (=> d!38005 m!143471))

(assert (=> d!38005 m!142667))

(assert (=> d!38005 m!142667))

(declare-fun m!143473 () Bool)

(assert (=> d!38005 m!143473))

(assert (=> d!38005 m!142667))

(assert (=> d!38005 m!142667))

(declare-fun m!143475 () Bool)

(assert (=> d!38005 m!143475))

(assert (=> d!38005 m!142965))

(assert (=> b!156838 m!143455))

(declare-fun m!143477 () Bool)

(assert (=> b!156838 m!143477))

(assert (=> b!156838 m!142667))

(declare-fun m!143479 () Bool)

(assert (=> b!156838 m!143479))

(assert (=> b!156839 m!143455))

(assert (=> b!156839 m!143457))

(assert (=> b!156839 m!143457))

(assert (=> b!156839 m!143459))

(declare-fun m!143481 () Bool)

(assert (=> b!156833 m!143481))

(assert (=> b!156836 m!143455))

(assert (=> b!156836 m!143457))

(assert (=> b!156836 m!143457))

(assert (=> b!156836 m!143459))

(assert (=> b!156836 m!143459))

(declare-fun m!143483 () Bool)

(assert (=> b!156836 m!143483))

(assert (=> bm!6527 m!142667))

(declare-fun m!143485 () Bool)

(assert (=> bm!6527 m!143485))

(assert (=> b!156362 d!38005))

(declare-fun d!38007 () Bool)

(assert (=> d!38007 (dynLambda!959 lambda!4179 (h!8109 tokens!465))))

(declare-fun lt!46516 () Unit!2136)

(assert (=> d!38007 (= lt!46516 (choose!1768 tokens!465 lambda!4179 (h!8109 tokens!465)))))

(declare-fun e!94146 () Bool)

(assert (=> d!38007 e!94146))

(declare-fun res!71473 () Bool)

(assert (=> d!38007 (=> (not res!71473) (not e!94146))))

(assert (=> d!38007 (= res!71473 (forall!479 tokens!465 lambda!4179))))

(assert (=> d!38007 (= (forallContained!58 tokens!465 lambda!4179 (h!8109 tokens!465)) lt!46516)))

(declare-fun b!156849 () Bool)

(assert (=> b!156849 (= e!94146 (contains!428 tokens!465 (h!8109 tokens!465)))))

(assert (= (and d!38007 res!71473) b!156849))

(declare-fun b_lambda!3099 () Bool)

(assert (=> (not b_lambda!3099) (not d!38007)))

(declare-fun m!143487 () Bool)

(assert (=> d!38007 m!143487))

(declare-fun m!143489 () Bool)

(assert (=> d!38007 m!143489))

(declare-fun m!143491 () Bool)

(assert (=> d!38007 m!143491))

(declare-fun m!143493 () Bool)

(assert (=> b!156849 m!143493))

(assert (=> b!156362 d!38007))

(assert (=> b!156362 d!37753))

(assert (=> b!156362 d!37755))

(declare-fun d!38009 () Bool)

(assert (=> d!38009 (= (tail!328 (drop!127 lt!46270 0)) (t!25386 (drop!127 lt!46270 0)))))

(assert (=> b!156237 d!38009))

(assert (=> b!156237 d!37973))

(declare-fun b!156882 () Bool)

(declare-fun e!94166 () Int)

(declare-fun call!6541 () Int)

(assert (=> b!156882 (= e!94166 (- call!6541 0))))

(declare-fun b!156883 () Bool)

(declare-fun e!94169 () List!2722)

(declare-fun e!94170 () List!2722)

(assert (=> b!156883 (= e!94169 e!94170)))

(declare-fun c!31529 () Bool)

(assert (=> b!156883 (= c!31529 (<= 0 0))))

(declare-fun b!156885 () Bool)

(assert (=> b!156885 (= e!94169 Nil!2712)))

(declare-fun d!38011 () Bool)

(declare-fun e!94168 () Bool)

(assert (=> d!38011 e!94168))

(declare-fun res!71476 () Bool)

(assert (=> d!38011 (=> (not res!71476) (not e!94168))))

(declare-fun lt!46526 () List!2722)

(declare-fun content!376 (List!2722) (InoxSet Token!694))

(assert (=> d!38011 (= res!71476 (= ((_ map implies) (content!376 lt!46526) (content!376 lt!46270)) ((as const (InoxSet Token!694)) true)))))

(assert (=> d!38011 (= lt!46526 e!94169)))

(declare-fun c!31530 () Bool)

(assert (=> d!38011 (= c!31530 ((_ is Nil!2712) lt!46270))))

(assert (=> d!38011 (= (drop!127 lt!46270 0) lt!46526)))

(declare-fun b!156884 () Bool)

(declare-fun e!94167 () Int)

(assert (=> b!156884 (= e!94167 call!6541)))

(declare-fun bm!6536 () Bool)

(assert (=> bm!6536 (= call!6541 (size!2292 lt!46270))))

(declare-fun b!156886 () Bool)

(assert (=> b!156886 (= e!94166 0)))

(declare-fun b!156887 () Bool)

(assert (=> b!156887 (= e!94168 (= (size!2292 lt!46526) e!94167))))

(declare-fun c!31531 () Bool)

(assert (=> b!156887 (= c!31531 (<= 0 0))))

(declare-fun b!156888 () Bool)

(assert (=> b!156888 (= e!94170 (drop!127 (t!25386 lt!46270) (- 0 1)))))

(declare-fun b!156889 () Bool)

(assert (=> b!156889 (= e!94170 lt!46270)))

(declare-fun b!156890 () Bool)

(assert (=> b!156890 (= e!94167 e!94166)))

(declare-fun c!31532 () Bool)

(assert (=> b!156890 (= c!31532 (>= 0 call!6541))))

(assert (= (and d!38011 c!31530) b!156885))

(assert (= (and d!38011 (not c!31530)) b!156883))

(assert (= (and b!156883 c!31529) b!156889))

(assert (= (and b!156883 (not c!31529)) b!156888))

(assert (= (and d!38011 res!71476) b!156887))

(assert (= (and b!156887 c!31531) b!156884))

(assert (= (and b!156887 (not c!31531)) b!156890))

(assert (= (and b!156890 c!31532) b!156886))

(assert (= (and b!156890 (not c!31532)) b!156882))

(assert (= (or b!156884 b!156890 b!156882) bm!6536))

(declare-fun m!143565 () Bool)

(assert (=> d!38011 m!143565))

(declare-fun m!143567 () Bool)

(assert (=> d!38011 m!143567))

(declare-fun m!143569 () Bool)

(assert (=> bm!6536 m!143569))

(declare-fun m!143571 () Bool)

(assert (=> b!156887 m!143571))

(declare-fun m!143573 () Bool)

(assert (=> b!156888 m!143573))

(assert (=> b!156237 d!38011))

(declare-fun d!38019 () Bool)

(declare-fun lt!46532 () Token!694)

(assert (=> d!38019 (contains!428 lt!46269 lt!46532)))

(declare-fun e!94178 () Token!694)

(assert (=> d!38019 (= lt!46532 e!94178)))

(declare-fun c!31535 () Bool)

(assert (=> d!38019 (= c!31535 (= 0 0))))

(declare-fun e!94179 () Bool)

(assert (=> d!38019 e!94179))

(declare-fun res!71482 () Bool)

(assert (=> d!38019 (=> (not res!71482) (not e!94179))))

(assert (=> d!38019 (= res!71482 (<= 0 0))))

(assert (=> d!38019 (= (apply!366 lt!46269 0) lt!46532)))

(declare-fun b!156900 () Bool)

(assert (=> b!156900 (= e!94179 (< 0 (size!2292 lt!46269)))))

(declare-fun b!156901 () Bool)

(assert (=> b!156901 (= e!94178 (head!588 lt!46269))))

(declare-fun b!156902 () Bool)

(assert (=> b!156902 (= e!94178 (apply!366 (tail!328 lt!46269) (- 0 1)))))

(assert (= (and d!38019 res!71482) b!156900))

(assert (= (and d!38019 c!31535) b!156901))

(assert (= (and d!38019 (not c!31535)) b!156902))

(declare-fun m!143589 () Bool)

(assert (=> d!38019 m!143589))

(declare-fun m!143591 () Bool)

(assert (=> b!156900 m!143591))

(declare-fun m!143593 () Bool)

(assert (=> b!156901 m!143593))

(declare-fun m!143595 () Bool)

(assert (=> b!156902 m!143595))

(assert (=> b!156902 m!143595))

(declare-fun m!143597 () Bool)

(assert (=> b!156902 m!143597))

(assert (=> b!156237 d!38019))

(declare-fun d!38031 () Bool)

(declare-fun lt!46539 () Token!694)

(assert (=> d!38031 (= lt!46539 (apply!366 (list!965 lt!46190) 0))))

(declare-fun apply!370 (Conc!773 Int) Token!694)

(assert (=> d!38031 (= lt!46539 (apply!370 (c!31337 lt!46190) 0))))

(declare-fun e!94185 () Bool)

(assert (=> d!38031 e!94185))

(declare-fun res!71487 () Bool)

(assert (=> d!38031 (=> (not res!71487) (not e!94185))))

(assert (=> d!38031 (= res!71487 (<= 0 0))))

(assert (=> d!38031 (= (apply!365 lt!46190 0) lt!46539)))

(declare-fun b!156913 () Bool)

(assert (=> b!156913 (= e!94185 (< 0 (size!2287 lt!46190)))))

(assert (= (and d!38031 res!71487) b!156913))

(assert (=> d!38031 m!142451))

(assert (=> d!38031 m!142451))

(declare-fun m!143615 () Bool)

(assert (=> d!38031 m!143615))

(declare-fun m!143617 () Bool)

(assert (=> d!38031 m!143617))

(assert (=> b!156913 m!142537))

(assert (=> b!156237 d!38031))

(declare-fun d!38041 () Bool)

(assert (=> d!38041 (dynLambda!959 lambda!4169 (apply!365 lt!46190 0))))

(declare-fun lt!46540 () Unit!2136)

(assert (=> d!38041 (= lt!46540 (choose!1768 (list!965 lt!46190) lambda!4169 (apply!365 lt!46190 0)))))

(declare-fun e!94186 () Bool)

(assert (=> d!38041 e!94186))

(declare-fun res!71488 () Bool)

(assert (=> d!38041 (=> (not res!71488) (not e!94186))))

(assert (=> d!38041 (= res!71488 (forall!479 (list!965 lt!46190) lambda!4169))))

(assert (=> d!38041 (= (forallContained!58 (list!965 lt!46190) lambda!4169 (apply!365 lt!46190 0)) lt!46540)))

(declare-fun b!156914 () Bool)

(assert (=> b!156914 (= e!94186 (contains!428 (list!965 lt!46190) (apply!365 lt!46190 0)))))

(assert (= (and d!38041 res!71488) b!156914))

(declare-fun b_lambda!3105 () Bool)

(assert (=> (not b_lambda!3105) (not d!38041)))

(assert (=> d!38041 m!142521))

(declare-fun m!143619 () Bool)

(assert (=> d!38041 m!143619))

(assert (=> d!38041 m!142451))

(assert (=> d!38041 m!142521))

(declare-fun m!143621 () Bool)

(assert (=> d!38041 m!143621))

(assert (=> d!38041 m!142451))

(declare-fun m!143623 () Bool)

(assert (=> d!38041 m!143623))

(assert (=> b!156914 m!142451))

(assert (=> b!156914 m!142521))

(declare-fun m!143625 () Bool)

(assert (=> b!156914 m!143625))

(assert (=> b!156237 d!38041))

(declare-fun b!156923 () Bool)

(declare-fun e!94191 () Int)

(declare-fun call!6542 () Int)

(assert (=> b!156923 (= e!94191 (- call!6542 0))))

(declare-fun b!156924 () Bool)

(declare-fun e!94194 () List!2722)

(declare-fun e!94195 () List!2722)

(assert (=> b!156924 (= e!94194 e!94195)))

(declare-fun c!31542 () Bool)

(assert (=> b!156924 (= c!31542 (<= 0 0))))

(declare-fun b!156926 () Bool)

(assert (=> b!156926 (= e!94194 Nil!2712)))

(declare-fun d!38043 () Bool)

(declare-fun e!94193 () Bool)

(assert (=> d!38043 e!94193))

(declare-fun res!71489 () Bool)

(assert (=> d!38043 (=> (not res!71489) (not e!94193))))

(declare-fun lt!46541 () List!2722)

(assert (=> d!38043 (= res!71489 (= ((_ map implies) (content!376 lt!46541) (content!376 lt!46269)) ((as const (InoxSet Token!694)) true)))))

(assert (=> d!38043 (= lt!46541 e!94194)))

(declare-fun c!31543 () Bool)

(assert (=> d!38043 (= c!31543 ((_ is Nil!2712) lt!46269))))

(assert (=> d!38043 (= (drop!127 lt!46269 0) lt!46541)))

(declare-fun b!156925 () Bool)

(declare-fun e!94192 () Int)

(assert (=> b!156925 (= e!94192 call!6542)))

(declare-fun bm!6537 () Bool)

(assert (=> bm!6537 (= call!6542 (size!2292 lt!46269))))

(declare-fun b!156927 () Bool)

(assert (=> b!156927 (= e!94191 0)))

(declare-fun b!156928 () Bool)

(assert (=> b!156928 (= e!94193 (= (size!2292 lt!46541) e!94192))))

(declare-fun c!31544 () Bool)

(assert (=> b!156928 (= c!31544 (<= 0 0))))

(declare-fun b!156929 () Bool)

(assert (=> b!156929 (= e!94195 (drop!127 (t!25386 lt!46269) (- 0 1)))))

(declare-fun b!156930 () Bool)

(assert (=> b!156930 (= e!94195 lt!46269)))

(declare-fun b!156931 () Bool)

(assert (=> b!156931 (= e!94192 e!94191)))

(declare-fun c!31545 () Bool)

(assert (=> b!156931 (= c!31545 (>= 0 call!6542))))

(assert (= (and d!38043 c!31543) b!156926))

(assert (= (and d!38043 (not c!31543)) b!156924))

(assert (= (and b!156924 c!31542) b!156930))

(assert (= (and b!156924 (not c!31542)) b!156929))

(assert (= (and d!38043 res!71489) b!156928))

(assert (= (and b!156928 c!31544) b!156925))

(assert (= (and b!156928 (not c!31544)) b!156931))

(assert (= (and b!156931 c!31545) b!156927))

(assert (= (and b!156931 (not c!31545)) b!156923))

(assert (= (or b!156925 b!156931 b!156923) bm!6537))

(declare-fun m!143627 () Bool)

(assert (=> d!38043 m!143627))

(declare-fun m!143629 () Bool)

(assert (=> d!38043 m!143629))

(assert (=> bm!6537 m!143591))

(declare-fun m!143631 () Bool)

(assert (=> b!156928 m!143631))

(declare-fun m!143633 () Bool)

(assert (=> b!156929 m!143633))

(assert (=> b!156237 d!38043))

(declare-fun d!38045 () Bool)

(assert (=> d!38045 (= (head!588 (drop!127 lt!46269 0)) (apply!366 lt!46269 0))))

(declare-fun lt!46551 () Unit!2136)

(declare-fun choose!1770 (List!2722 Int) Unit!2136)

(assert (=> d!38045 (= lt!46551 (choose!1770 lt!46269 0))))

(declare-fun e!94206 () Bool)

(assert (=> d!38045 e!94206))

(declare-fun res!71502 () Bool)

(assert (=> d!38045 (=> (not res!71502) (not e!94206))))

(assert (=> d!38045 (= res!71502 (>= 0 0))))

(assert (=> d!38045 (= (lemmaDropApply!114 lt!46269 0) lt!46551)))

(declare-fun b!156952 () Bool)

(assert (=> b!156952 (= e!94206 (< 0 (size!2292 lt!46269)))))

(assert (= (and d!38045 res!71502) b!156952))

(assert (=> d!38045 m!142531))

(assert (=> d!38045 m!142531))

(assert (=> d!38045 m!142533))

(assert (=> d!38045 m!142509))

(declare-fun m!143665 () Bool)

(assert (=> d!38045 m!143665))

(assert (=> b!156952 m!143591))

(assert (=> b!156237 d!38045))

(declare-fun d!38053 () Bool)

(declare-fun lt!46552 () BalanceConc!1552)

(assert (=> d!38053 (= (list!961 lt!46552) (originalCharacters!518 (apply!365 lt!46190 0)))))

(assert (=> d!38053 (= lt!46552 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (apply!365 lt!46190 0)))) (value!17853 (apply!365 lt!46190 0))))))

(assert (=> d!38053 (= (charsOf!130 (apply!365 lt!46190 0)) lt!46552)))

(declare-fun b_lambda!3109 () Bool)

(assert (=> (not b_lambda!3109) (not d!38053)))

(declare-fun tb!5531 () Bool)

(declare-fun t!25487 () Bool)

(assert (=> (and b!156496 (= (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920)))) (toChars!977 (transformation!475 (rule!982 (apply!365 lt!46190 0))))) t!25487) tb!5531))

(declare-fun b!156953 () Bool)

(declare-fun e!94207 () Bool)

(declare-fun tp!80515 () Bool)

(assert (=> b!156953 (= e!94207 (and (inv!3517 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (apply!365 lt!46190 0)))) (value!17853 (apply!365 lt!46190 0))))) tp!80515))))

(declare-fun result!8074 () Bool)

(assert (=> tb!5531 (= result!8074 (and (inv!3518 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (apply!365 lt!46190 0)))) (value!17853 (apply!365 lt!46190 0)))) e!94207))))

(assert (= tb!5531 b!156953))

(declare-fun m!143671 () Bool)

(assert (=> b!156953 m!143671))

(declare-fun m!143675 () Bool)

(assert (=> tb!5531 m!143675))

(assert (=> d!38053 t!25487))

(declare-fun b_and!9481 () Bool)

(assert (= b_and!9461 (and (=> t!25487 result!8074) b_and!9481)))

(declare-fun tb!5533 () Bool)

(declare-fun t!25489 () Bool)

(assert (=> (and b!156461 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (toChars!977 (transformation!475 (rule!982 (apply!365 lt!46190 0))))) t!25489) tb!5533))

(declare-fun result!8076 () Bool)

(assert (= result!8076 result!8074))

(assert (=> d!38053 t!25489))

(declare-fun b_and!9483 () Bool)

(assert (= b_and!9467 (and (=> t!25489 result!8076) b_and!9483)))

(declare-fun tb!5535 () Bool)

(declare-fun t!25491 () Bool)

(assert (=> (and b!156030 (= (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toChars!977 (transformation!475 (rule!982 (apply!365 lt!46190 0))))) t!25491) tb!5535))

(declare-fun result!8078 () Bool)

(assert (= result!8078 result!8074))

(assert (=> d!38053 t!25491))

(declare-fun b_and!9485 () Bool)

(assert (= b_and!9465 (and (=> t!25491 result!8078) b_and!9485)))

(declare-fun tb!5537 () Bool)

(declare-fun t!25493 () Bool)

(assert (=> (and b!156028 (= (toChars!977 (transformation!475 (h!8108 rules!1920))) (toChars!977 (transformation!475 (rule!982 (apply!365 lt!46190 0))))) t!25493) tb!5537))

(declare-fun result!8080 () Bool)

(assert (= result!8080 result!8074))

(assert (=> d!38053 t!25493))

(declare-fun b_and!9487 () Bool)

(assert (= b_and!9463 (and (=> t!25493 result!8080) b_and!9487)))

(declare-fun t!25495 () Bool)

(declare-fun tb!5539 () Bool)

(assert (=> (and b!156029 (= (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toChars!977 (transformation!475 (rule!982 (apply!365 lt!46190 0))))) t!25495) tb!5539))

(declare-fun result!8082 () Bool)

(assert (= result!8082 result!8074))

(assert (=> d!38053 t!25495))

(declare-fun b_and!9489 () Bool)

(assert (= b_and!9469 (and (=> t!25495 result!8082) b_and!9489)))

(declare-fun m!143691 () Bool)

(assert (=> d!38053 m!143691))

(declare-fun m!143693 () Bool)

(assert (=> d!38053 m!143693))

(assert (=> b!156237 d!38053))

(declare-fun d!38055 () Bool)

(assert (=> d!38055 (= (tail!328 (drop!127 lt!46270 0)) (drop!127 lt!46270 (+ 0 1)))))

(declare-fun lt!46557 () Unit!2136)

(declare-fun choose!1771 (List!2722 Int) Unit!2136)

(assert (=> d!38055 (= lt!46557 (choose!1771 lt!46270 0))))

(declare-fun e!94213 () Bool)

(assert (=> d!38055 e!94213))

(declare-fun res!71506 () Bool)

(assert (=> d!38055 (=> (not res!71506) (not e!94213))))

(assert (=> d!38055 (= res!71506 (>= 0 0))))

(assert (=> d!38055 (= (lemmaDropTail!106 lt!46270 0) lt!46557)))

(declare-fun b!156961 () Bool)

(assert (=> b!156961 (= e!94213 (< 0 (size!2292 lt!46270)))))

(assert (= (and d!38055 res!71506) b!156961))

(assert (=> d!38055 m!142525))

(assert (=> d!38055 m!142525))

(assert (=> d!38055 m!142527))

(assert (=> d!38055 m!142513))

(declare-fun m!143731 () Bool)

(assert (=> d!38055 m!143731))

(assert (=> b!156961 m!143569))

(assert (=> b!156237 d!38055))

(declare-fun b!156962 () Bool)

(declare-fun e!94214 () Int)

(declare-fun call!6544 () Int)

(assert (=> b!156962 (= e!94214 (- call!6544 (+ 0 1)))))

(declare-fun b!156963 () Bool)

(declare-fun e!94217 () List!2722)

(declare-fun e!94218 () List!2722)

(assert (=> b!156963 (= e!94217 e!94218)))

(declare-fun c!31552 () Bool)

(assert (=> b!156963 (= c!31552 (<= (+ 0 1) 0))))

(declare-fun b!156965 () Bool)

(assert (=> b!156965 (= e!94217 Nil!2712)))

(declare-fun d!38069 () Bool)

(declare-fun e!94216 () Bool)

(assert (=> d!38069 e!94216))

(declare-fun res!71507 () Bool)

(assert (=> d!38069 (=> (not res!71507) (not e!94216))))

(declare-fun lt!46558 () List!2722)

(assert (=> d!38069 (= res!71507 (= ((_ map implies) (content!376 lt!46558) (content!376 lt!46270)) ((as const (InoxSet Token!694)) true)))))

(assert (=> d!38069 (= lt!46558 e!94217)))

(declare-fun c!31553 () Bool)

(assert (=> d!38069 (= c!31553 ((_ is Nil!2712) lt!46270))))

(assert (=> d!38069 (= (drop!127 lt!46270 (+ 0 1)) lt!46558)))

(declare-fun b!156964 () Bool)

(declare-fun e!94215 () Int)

(assert (=> b!156964 (= e!94215 call!6544)))

(declare-fun bm!6539 () Bool)

(assert (=> bm!6539 (= call!6544 (size!2292 lt!46270))))

(declare-fun b!156966 () Bool)

(assert (=> b!156966 (= e!94214 0)))

(declare-fun b!156967 () Bool)

(assert (=> b!156967 (= e!94216 (= (size!2292 lt!46558) e!94215))))

(declare-fun c!31554 () Bool)

(assert (=> b!156967 (= c!31554 (<= (+ 0 1) 0))))

(declare-fun b!156968 () Bool)

(assert (=> b!156968 (= e!94218 (drop!127 (t!25386 lt!46270) (- (+ 0 1) 1)))))

(declare-fun b!156969 () Bool)

(assert (=> b!156969 (= e!94218 lt!46270)))

(declare-fun b!156970 () Bool)

(assert (=> b!156970 (= e!94215 e!94214)))

(declare-fun c!31555 () Bool)

(assert (=> b!156970 (= c!31555 (>= (+ 0 1) call!6544))))

(assert (= (and d!38069 c!31553) b!156965))

(assert (= (and d!38069 (not c!31553)) b!156963))

(assert (= (and b!156963 c!31552) b!156969))

(assert (= (and b!156963 (not c!31552)) b!156968))

(assert (= (and d!38069 res!71507) b!156967))

(assert (= (and b!156967 c!31554) b!156964))

(assert (= (and b!156967 (not c!31554)) b!156970))

(assert (= (and b!156970 c!31555) b!156966))

(assert (= (and b!156970 (not c!31555)) b!156962))

(assert (= (or b!156964 b!156970 b!156962) bm!6539))

(declare-fun m!143733 () Bool)

(assert (=> d!38069 m!143733))

(assert (=> d!38069 m!143567))

(assert (=> bm!6539 m!143569))

(declare-fun m!143735 () Bool)

(assert (=> b!156967 m!143735))

(declare-fun m!143737 () Bool)

(assert (=> b!156968 m!143737))

(assert (=> b!156237 d!38069))

(declare-fun d!38071 () Bool)

(assert (=> d!38071 (= (head!588 (drop!127 lt!46269 0)) (h!8109 (drop!127 lt!46269 0)))))

(assert (=> b!156237 d!38071))

(declare-fun bs!14550 () Bool)

(declare-fun d!38073 () Bool)

(assert (= bs!14550 (and d!38073 b!156597)))

(declare-fun lambda!4205 () Int)

(assert (=> bs!14550 (not (= lambda!4205 lambda!4188))))

(declare-fun bs!14551 () Bool)

(assert (= bs!14551 (and d!38073 d!37663)))

(assert (=> bs!14551 (not (= lambda!4205 lambda!4158))))

(declare-fun bs!14552 () Bool)

(assert (= bs!14552 (and d!38073 b!156237)))

(assert (=> bs!14552 (not (= lambda!4205 lambda!4169))))

(declare-fun bs!14553 () Bool)

(assert (= bs!14553 (and d!38073 d!37697)))

(assert (=> bs!14553 (= lambda!4205 lambda!4168)))

(declare-fun bs!14554 () Bool)

(assert (= bs!14554 (and d!38073 b!156362)))

(assert (=> bs!14554 (not (= lambda!4205 lambda!4179))))

(declare-fun bs!14555 () Bool)

(assert (= bs!14555 (and d!38073 b!156022)))

(assert (=> bs!14555 (= lambda!4205 lambda!4150)))

(declare-fun bs!14556 () Bool)

(assert (= bs!14556 (and d!38073 b!156422)))

(assert (=> bs!14556 (not (= lambda!4205 lambda!4180))))

(declare-fun bs!14557 () Bool)

(declare-fun b!156980 () Bool)

(assert (= bs!14557 (and b!156980 b!156597)))

(declare-fun lambda!4206 () Int)

(assert (=> bs!14557 (= lambda!4206 lambda!4188)))

(declare-fun bs!14558 () Bool)

(assert (= bs!14558 (and b!156980 d!38073)))

(assert (=> bs!14558 (not (= lambda!4206 lambda!4205))))

(declare-fun bs!14559 () Bool)

(assert (= bs!14559 (and b!156980 d!37663)))

(assert (=> bs!14559 (= lambda!4206 lambda!4158)))

(declare-fun bs!14560 () Bool)

(assert (= bs!14560 (and b!156980 b!156237)))

(assert (=> bs!14560 (= lambda!4206 lambda!4169)))

(declare-fun bs!14561 () Bool)

(assert (= bs!14561 (and b!156980 d!37697)))

(assert (=> bs!14561 (not (= lambda!4206 lambda!4168))))

(declare-fun bs!14562 () Bool)

(assert (= bs!14562 (and b!156980 b!156362)))

(assert (=> bs!14562 (= lambda!4206 lambda!4179)))

(declare-fun bs!14563 () Bool)

(assert (= bs!14563 (and b!156980 b!156022)))

(assert (=> bs!14563 (not (= lambda!4206 lambda!4150))))

(declare-fun bs!14564 () Bool)

(assert (= bs!14564 (and b!156980 b!156422)))

(assert (=> bs!14564 (= lambda!4206 lambda!4180)))

(declare-fun b!156984 () Bool)

(declare-fun e!94228 () Bool)

(assert (=> b!156984 (= e!94228 true)))

(declare-fun b!156983 () Bool)

(declare-fun e!94227 () Bool)

(assert (=> b!156983 (= e!94227 e!94228)))

(declare-fun b!156982 () Bool)

(declare-fun e!94226 () Bool)

(assert (=> b!156982 (= e!94226 e!94227)))

(assert (=> b!156980 e!94226))

(assert (= b!156983 b!156984))

(assert (= b!156982 b!156983))

(assert (= (and b!156980 ((_ is Cons!2711) rules!1920)) b!156982))

(assert (=> b!156984 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4206))))

(assert (=> b!156984 (< (dynLambda!963 order!1369 (toChars!977 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4206))))

(assert (=> b!156980 true))

(declare-fun b!156971 () Bool)

(declare-fun e!94220 () BalanceConc!1552)

(declare-fun call!6546 () BalanceConc!1552)

(assert (=> b!156971 (= e!94220 call!6546)))

(declare-fun bm!6540 () Bool)

(declare-fun call!6548 () BalanceConc!1552)

(assert (=> bm!6540 (= call!6548 call!6546)))

(declare-fun b!156972 () Bool)

(declare-fun e!94224 () Bool)

(declare-fun lt!46571 () Option!258)

(assert (=> b!156972 (= e!94224 (= (_1!1527 (v!13650 lt!46571)) (apply!365 lt!46190 (+ 0 1))))))

(declare-fun b!156973 () Bool)

(declare-fun e!94225 () BalanceConc!1552)

(declare-fun call!6547 () BalanceConc!1552)

(declare-fun lt!46566 () BalanceConc!1552)

(assert (=> b!156973 (= e!94225 (++!594 call!6547 lt!46566))))

(declare-fun b!156974 () Bool)

(declare-fun e!94222 () Bool)

(assert (=> b!156974 (= e!94222 (<= (+ 0 1) (size!2287 lt!46190)))))

(declare-fun bm!6541 () Bool)

(declare-fun c!31556 () Bool)

(declare-fun c!31558 () Bool)

(assert (=> bm!6541 (= c!31556 c!31558)))

(assert (=> bm!6541 (= call!6547 (++!594 e!94220 (ite c!31558 lt!46566 call!6548)))))

(declare-fun b!156975 () Bool)

(declare-fun e!94223 () BalanceConc!1552)

(assert (=> b!156975 (= e!94223 call!6547)))

(declare-fun bm!6542 () Bool)

(declare-fun call!6545 () Token!694)

(declare-fun call!6549 () Token!694)

(assert (=> bm!6542 (= call!6545 call!6549)))

(declare-fun c!31557 () Bool)

(declare-fun bm!6543 () Bool)

(assert (=> bm!6543 (= call!6546 (charsOf!130 (ite c!31558 call!6549 (ite c!31557 separatorToken!170 call!6545))))))

(declare-fun b!156976 () Bool)

(declare-fun e!94221 () Bool)

(assert (=> b!156976 (= e!94221 (not (= (_1!1527 (v!13650 lt!46571)) call!6549)))))

(declare-fun b!156977 () Bool)

(assert (=> b!156977 (= e!94225 (BalanceConc!1553 Empty!772))))

(assert (=> b!156977 (= (print!100 thiss!17480 (singletonSeq!33 call!6545)) (printTailRec!63 thiss!17480 (singletonSeq!33 call!6545) 0 (BalanceConc!1553 Empty!772)))))

(declare-fun lt!46569 () Unit!2136)

(declare-fun Unit!2158 () Unit!2136)

(assert (=> b!156977 (= lt!46569 Unit!2158)))

(declare-fun lt!46559 () Unit!2136)

(assert (=> b!156977 (= lt!46559 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!22 thiss!17480 rules!1920 (list!961 call!6548) (list!961 lt!46566)))))

(assert (=> b!156977 false))

(declare-fun lt!46572 () Unit!2136)

(declare-fun Unit!2159 () Unit!2136)

(assert (=> b!156977 (= lt!46572 Unit!2159)))

(declare-fun bm!6544 () Bool)

(assert (=> bm!6544 (= call!6549 (apply!365 lt!46190 (+ 0 1)))))

(declare-fun b!156979 () Bool)

(declare-fun e!94219 () BalanceConc!1552)

(assert (=> b!156979 (= e!94219 (BalanceConc!1553 Empty!772))))

(assert (=> b!156980 (= e!94219 e!94223)))

(declare-fun lt!46563 () List!2722)

(assert (=> b!156980 (= lt!46563 (list!965 lt!46190))))

(declare-fun lt!46562 () Unit!2136)

(assert (=> b!156980 (= lt!46562 (lemmaDropApply!114 lt!46563 (+ 0 1)))))

(assert (=> b!156980 (= (head!588 (drop!127 lt!46563 (+ 0 1))) (apply!366 lt!46563 (+ 0 1)))))

(declare-fun lt!46568 () Unit!2136)

(assert (=> b!156980 (= lt!46568 lt!46562)))

(declare-fun lt!46564 () List!2722)

(assert (=> b!156980 (= lt!46564 (list!965 lt!46190))))

(declare-fun lt!46560 () Unit!2136)

(assert (=> b!156980 (= lt!46560 (lemmaDropTail!106 lt!46564 (+ 0 1)))))

(assert (=> b!156980 (= (tail!328 (drop!127 lt!46564 (+ 0 1))) (drop!127 lt!46564 (+ 0 1 1)))))

(declare-fun lt!46567 () Unit!2136)

(assert (=> b!156980 (= lt!46567 lt!46560)))

(declare-fun lt!46565 () Unit!2136)

(assert (=> b!156980 (= lt!46565 (forallContained!58 (list!965 lt!46190) lambda!4206 (apply!365 lt!46190 (+ 0 1))))))

(assert (=> b!156980 (= lt!46566 (printWithSeparatorTokenWhenNeededRec!44 thiss!17480 rules!1920 lt!46190 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!156980 (= lt!46571 (maxPrefixZipperSequence!74 thiss!17480 rules!1920 (++!594 (charsOf!130 (apply!365 lt!46190 (+ 0 1))) lt!46566)))))

(declare-fun res!71509 () Bool)

(assert (=> b!156980 (= res!71509 ((_ is Some!257) lt!46571))))

(assert (=> b!156980 (=> (not res!71509) (not e!94224))))

(assert (=> b!156980 (= c!31558 e!94224)))

(declare-fun b!156981 () Bool)

(assert (=> b!156981 (= e!94220 (charsOf!130 call!6545))))

(declare-fun lt!46561 () BalanceConc!1552)

(assert (=> d!38073 (= (list!961 lt!46561) (printWithSeparatorTokenWhenNeededList!54 thiss!17480 rules!1920 (dropList!74 lt!46190 (+ 0 1)) separatorToken!170))))

(assert (=> d!38073 (= lt!46561 e!94219)))

(declare-fun c!31559 () Bool)

(assert (=> d!38073 (= c!31559 (>= (+ 0 1) (size!2287 lt!46190)))))

(declare-fun lt!46570 () Unit!2136)

(assert (=> d!38073 (= lt!46570 (lemmaContentSubsetPreservesForall!18 (list!965 lt!46190) (dropList!74 lt!46190 (+ 0 1)) lambda!4205))))

(assert (=> d!38073 e!94222))

(declare-fun res!71510 () Bool)

(assert (=> d!38073 (=> (not res!71510) (not e!94222))))

(assert (=> d!38073 (= res!71510 (>= (+ 0 1) 0))))

(assert (=> d!38073 (= (printWithSeparatorTokenWhenNeededRec!44 thiss!17480 rules!1920 lt!46190 separatorToken!170 (+ 0 1)) lt!46561)))

(declare-fun b!156978 () Bool)

(assert (=> b!156978 (= c!31557 e!94221)))

(declare-fun res!71508 () Bool)

(assert (=> b!156978 (=> (not res!71508) (not e!94221))))

(assert (=> b!156978 (= res!71508 ((_ is Some!257) lt!46571))))

(assert (=> b!156978 (= e!94223 e!94225)))

(assert (= (and d!38073 res!71510) b!156974))

(assert (= (and d!38073 c!31559) b!156979))

(assert (= (and d!38073 (not c!31559)) b!156980))

(assert (= (and b!156980 res!71509) b!156972))

(assert (= (and b!156980 c!31558) b!156975))

(assert (= (and b!156980 (not c!31558)) b!156978))

(assert (= (and b!156978 res!71508) b!156976))

(assert (= (and b!156978 c!31557) b!156973))

(assert (= (and b!156978 (not c!31557)) b!156977))

(assert (= (or b!156973 b!156977) bm!6542))

(assert (= (or b!156973 b!156977) bm!6540))

(assert (= (or b!156975 bm!6542 b!156976) bm!6544))

(assert (= (or b!156975 bm!6540) bm!6543))

(assert (= (or b!156975 b!156973) bm!6541))

(assert (= (and bm!6541 c!31556) b!156971))

(assert (= (and bm!6541 (not c!31556)) b!156981))

(declare-fun m!143739 () Bool)

(assert (=> b!156973 m!143739))

(declare-fun m!143741 () Bool)

(assert (=> b!156980 m!143741))

(declare-fun m!143743 () Bool)

(assert (=> b!156980 m!143743))

(declare-fun m!143745 () Bool)

(assert (=> b!156980 m!143745))

(declare-fun m!143747 () Bool)

(assert (=> b!156980 m!143747))

(declare-fun m!143749 () Bool)

(assert (=> b!156980 m!143749))

(declare-fun m!143751 () Bool)

(assert (=> b!156980 m!143751))

(assert (=> b!156980 m!142451))

(declare-fun m!143753 () Bool)

(assert (=> b!156980 m!143753))

(declare-fun m!143755 () Bool)

(assert (=> b!156980 m!143755))

(declare-fun m!143757 () Bool)

(assert (=> b!156980 m!143757))

(declare-fun m!143759 () Bool)

(assert (=> b!156980 m!143759))

(assert (=> b!156980 m!142451))

(assert (=> b!156980 m!143757))

(declare-fun m!143761 () Bool)

(assert (=> b!156980 m!143761))

(assert (=> b!156980 m!143753))

(declare-fun m!143763 () Bool)

(assert (=> b!156980 m!143763))

(declare-fun m!143765 () Bool)

(assert (=> b!156980 m!143765))

(assert (=> b!156980 m!143753))

(assert (=> b!156980 m!143749))

(assert (=> b!156980 m!143763))

(assert (=> b!156980 m!143751))

(declare-fun m!143767 () Bool)

(assert (=> b!156980 m!143767))

(assert (=> b!156974 m!142537))

(declare-fun m!143769 () Bool)

(assert (=> b!156977 m!143769))

(declare-fun m!143771 () Bool)

(assert (=> b!156977 m!143771))

(declare-fun m!143773 () Bool)

(assert (=> b!156977 m!143773))

(assert (=> b!156977 m!143769))

(declare-fun m!143775 () Bool)

(assert (=> b!156977 m!143775))

(assert (=> b!156977 m!143775))

(declare-fun m!143777 () Bool)

(assert (=> b!156977 m!143777))

(assert (=> b!156977 m!143775))

(declare-fun m!143779 () Bool)

(assert (=> b!156977 m!143779))

(assert (=> b!156977 m!143771))

(declare-fun m!143781 () Bool)

(assert (=> b!156981 m!143781))

(assert (=> b!156972 m!143753))

(declare-fun m!143783 () Bool)

(assert (=> bm!6541 m!143783))

(declare-fun m!143785 () Bool)

(assert (=> bm!6543 m!143785))

(assert (=> bm!6544 m!143753))

(declare-fun m!143787 () Bool)

(assert (=> d!38073 m!143787))

(declare-fun m!143789 () Bool)

(assert (=> d!38073 m!143789))

(assert (=> d!38073 m!142451))

(assert (=> d!38073 m!143787))

(declare-fun m!143791 () Bool)

(assert (=> d!38073 m!143791))

(declare-fun m!143793 () Bool)

(assert (=> d!38073 m!143793))

(assert (=> d!38073 m!142537))

(assert (=> d!38073 m!142451))

(assert (=> d!38073 m!143787))

(assert (=> b!156237 d!38073))

(declare-fun e!94229 () Bool)

(declare-fun lt!46573 () BalanceConc!1552)

(declare-fun b!156988 () Bool)

(assert (=> b!156988 (= e!94229 (= (list!961 lt!46573) (++!592 (list!961 (charsOf!130 (apply!365 lt!46190 0))) (list!961 lt!46272))))))

(declare-fun b!156986 () Bool)

(declare-fun res!71512 () Bool)

(assert (=> b!156986 (=> (not res!71512) (not e!94229))))

(assert (=> b!156986 (= res!71512 (<= (height!80 (++!596 (c!31335 (charsOf!130 (apply!365 lt!46190 0))) (c!31335 lt!46272))) (+ (max!0 (height!80 (c!31335 (charsOf!130 (apply!365 lt!46190 0)))) (height!80 (c!31335 lt!46272))) 1)))))

(declare-fun b!156987 () Bool)

(declare-fun res!71513 () Bool)

(assert (=> b!156987 (=> (not res!71513) (not e!94229))))

(assert (=> b!156987 (= res!71513 (>= (height!80 (++!596 (c!31335 (charsOf!130 (apply!365 lt!46190 0))) (c!31335 lt!46272))) (max!0 (height!80 (c!31335 (charsOf!130 (apply!365 lt!46190 0)))) (height!80 (c!31335 lt!46272)))))))

(declare-fun b!156985 () Bool)

(declare-fun res!71511 () Bool)

(assert (=> b!156985 (=> (not res!71511) (not e!94229))))

(assert (=> b!156985 (= res!71511 (isBalanced!215 (++!596 (c!31335 (charsOf!130 (apply!365 lt!46190 0))) (c!31335 lt!46272))))))

(declare-fun d!38075 () Bool)

(assert (=> d!38075 e!94229))

(declare-fun res!71514 () Bool)

(assert (=> d!38075 (=> (not res!71514) (not e!94229))))

(assert (=> d!38075 (= res!71514 (appendAssocInst!21 (c!31335 (charsOf!130 (apply!365 lt!46190 0))) (c!31335 lt!46272)))))

(assert (=> d!38075 (= lt!46573 (BalanceConc!1553 (++!596 (c!31335 (charsOf!130 (apply!365 lt!46190 0))) (c!31335 lt!46272))))))

(assert (=> d!38075 (= (++!594 (charsOf!130 (apply!365 lt!46190 0)) lt!46272) lt!46573)))

(assert (= (and d!38075 res!71514) b!156985))

(assert (= (and b!156985 res!71511) b!156986))

(assert (= (and b!156986 res!71512) b!156987))

(assert (= (and b!156987 res!71513) b!156988))

(declare-fun m!143795 () Bool)

(assert (=> b!156988 m!143795))

(assert (=> b!156988 m!142517))

(declare-fun m!143797 () Bool)

(assert (=> b!156988 m!143797))

(assert (=> b!156988 m!142541))

(assert (=> b!156988 m!143797))

(assert (=> b!156988 m!142541))

(declare-fun m!143799 () Bool)

(assert (=> b!156988 m!143799))

(declare-fun m!143801 () Bool)

(assert (=> b!156987 m!143801))

(assert (=> b!156987 m!142983))

(declare-fun m!143803 () Bool)

(assert (=> b!156987 m!143803))

(assert (=> b!156987 m!142983))

(declare-fun m!143805 () Bool)

(assert (=> b!156987 m!143805))

(declare-fun m!143807 () Bool)

(assert (=> b!156987 m!143807))

(assert (=> b!156987 m!143805))

(assert (=> b!156987 m!143801))

(declare-fun m!143809 () Bool)

(assert (=> d!38075 m!143809))

(assert (=> d!38075 m!143805))

(assert (=> b!156985 m!143805))

(assert (=> b!156985 m!143805))

(declare-fun m!143811 () Bool)

(assert (=> b!156985 m!143811))

(assert (=> b!156986 m!143801))

(assert (=> b!156986 m!142983))

(assert (=> b!156986 m!143803))

(assert (=> b!156986 m!142983))

(assert (=> b!156986 m!143805))

(assert (=> b!156986 m!143807))

(assert (=> b!156986 m!143805))

(assert (=> b!156986 m!143801))

(assert (=> b!156237 d!38075))

(declare-fun b!157014 () Bool)

(declare-fun e!94248 () Bool)

(declare-fun e!94252 () Bool)

(assert (=> b!157014 (= e!94248 e!94252)))

(declare-fun res!71534 () Bool)

(assert (=> b!157014 (=> (not res!71534) (not e!94252))))

(declare-fun lt!46610 () Option!258)

(declare-fun get!733 (Option!258) tuple2!2622)

(assert (=> b!157014 (= res!71534 (= (_1!1527 (get!733 lt!46610)) (_1!1528 (get!730 (maxPrefix!115 thiss!17480 rules!1920 (list!961 (++!594 (charsOf!130 (apply!365 lt!46190 0)) lt!46272)))))))))

(declare-fun b!157015 () Bool)

(declare-fun e!94253 () Option!258)

(declare-fun call!6552 () Option!258)

(assert (=> b!157015 (= e!94253 call!6552)))

(declare-fun b!157016 () Bool)

(declare-fun res!71535 () Bool)

(declare-fun e!94250 () Bool)

(assert (=> b!157016 (=> (not res!71535) (not e!94250))))

(declare-fun e!94249 () Bool)

(assert (=> b!157016 (= res!71535 e!94249)))

(declare-fun res!71533 () Bool)

(assert (=> b!157016 (=> res!71533 e!94249)))

(declare-fun isDefined!112 (Option!258) Bool)

(assert (=> b!157016 (= res!71533 (not (isDefined!112 lt!46610)))))

(declare-fun d!38077 () Bool)

(assert (=> d!38077 e!94250))

(declare-fun res!71532 () Bool)

(assert (=> d!38077 (=> (not res!71532) (not e!94250))))

(declare-fun maxPrefixZipper!26 (LexerInterface!361 List!2721 List!2720) Option!259)

(assert (=> d!38077 (= res!71532 (= (isDefined!112 lt!46610) (isDefined!109 (maxPrefixZipper!26 thiss!17480 rules!1920 (list!961 (++!594 (charsOf!130 (apply!365 lt!46190 0)) lt!46272))))))))

(assert (=> d!38077 (= lt!46610 e!94253)))

(declare-fun c!31565 () Bool)

(assert (=> d!38077 (= c!31565 (and ((_ is Cons!2711) rules!1920) ((_ is Nil!2711) (t!25385 rules!1920))))))

(declare-fun lt!46611 () Unit!2136)

(declare-fun lt!46613 () Unit!2136)

(assert (=> d!38077 (= lt!46611 lt!46613)))

(declare-fun lt!46615 () List!2720)

(declare-fun lt!46614 () List!2720)

(assert (=> d!38077 (isPrefix!214 lt!46615 lt!46614)))

(assert (=> d!38077 (= lt!46613 (lemmaIsPrefixRefl!122 lt!46615 lt!46614))))

(assert (=> d!38077 (= lt!46614 (list!961 (++!594 (charsOf!130 (apply!365 lt!46190 0)) lt!46272)))))

(assert (=> d!38077 (= lt!46615 (list!961 (++!594 (charsOf!130 (apply!365 lt!46190 0)) lt!46272)))))

(assert (=> d!38077 (rulesValidInductive!99 thiss!17480 rules!1920)))

(assert (=> d!38077 (= (maxPrefixZipperSequence!74 thiss!17480 rules!1920 (++!594 (charsOf!130 (apply!365 lt!46190 0)) lt!46272)) lt!46610)))

(declare-fun b!157017 () Bool)

(assert (=> b!157017 (= e!94250 e!94248)))

(declare-fun res!71531 () Bool)

(assert (=> b!157017 (=> res!71531 e!94248)))

(assert (=> b!157017 (= res!71531 (not (isDefined!112 lt!46610)))))

(declare-fun bm!6547 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!27 (LexerInterface!361 Rule!750 BalanceConc!1552) Option!258)

(assert (=> bm!6547 (= call!6552 (maxPrefixOneRuleZipperSequence!27 thiss!17480 (h!8108 rules!1920) (++!594 (charsOf!130 (apply!365 lt!46190 0)) lt!46272)))))

(declare-fun b!157018 () Bool)

(declare-fun lt!46609 () Option!258)

(declare-fun lt!46612 () Option!258)

(assert (=> b!157018 (= e!94253 (ite (and ((_ is None!257) lt!46609) ((_ is None!257) lt!46612)) None!257 (ite ((_ is None!257) lt!46612) lt!46609 (ite ((_ is None!257) lt!46609) lt!46612 (ite (>= (size!2286 (_1!1527 (v!13650 lt!46609))) (size!2286 (_1!1527 (v!13650 lt!46612)))) lt!46609 lt!46612)))))))

(assert (=> b!157018 (= lt!46609 call!6552)))

(assert (=> b!157018 (= lt!46612 (maxPrefixZipperSequence!74 thiss!17480 (t!25385 rules!1920) (++!594 (charsOf!130 (apply!365 lt!46190 0)) lt!46272)))))

(declare-fun b!157019 () Bool)

(declare-fun e!94251 () Bool)

(assert (=> b!157019 (= e!94249 e!94251)))

(declare-fun res!71530 () Bool)

(assert (=> b!157019 (=> (not res!71530) (not e!94251))))

(assert (=> b!157019 (= res!71530 (= (_1!1527 (get!733 lt!46610)) (_1!1528 (get!730 (maxPrefixZipper!26 thiss!17480 rules!1920 (list!961 (++!594 (charsOf!130 (apply!365 lt!46190 0)) lt!46272)))))))))

(declare-fun b!157020 () Bool)

(assert (=> b!157020 (= e!94252 (= (list!961 (_2!1527 (get!733 lt!46610))) (_2!1528 (get!730 (maxPrefix!115 thiss!17480 rules!1920 (list!961 (++!594 (charsOf!130 (apply!365 lt!46190 0)) lt!46272)))))))))

(declare-fun b!157021 () Bool)

(assert (=> b!157021 (= e!94251 (= (list!961 (_2!1527 (get!733 lt!46610))) (_2!1528 (get!730 (maxPrefixZipper!26 thiss!17480 rules!1920 (list!961 (++!594 (charsOf!130 (apply!365 lt!46190 0)) lt!46272)))))))))

(assert (= (and d!38077 c!31565) b!157015))

(assert (= (and d!38077 (not c!31565)) b!157018))

(assert (= (or b!157015 b!157018) bm!6547))

(assert (= (and d!38077 res!71532) b!157016))

(assert (= (and b!157016 (not res!71533)) b!157019))

(assert (= (and b!157019 res!71530) b!157021))

(assert (= (and b!157016 res!71535) b!157017))

(assert (= (and b!157017 (not res!71531)) b!157014))

(assert (= (and b!157014 res!71534) b!157020))

(declare-fun m!143847 () Bool)

(assert (=> b!157014 m!143847))

(assert (=> b!157014 m!142519))

(declare-fun m!143849 () Bool)

(assert (=> b!157014 m!143849))

(assert (=> b!157014 m!143849))

(declare-fun m!143851 () Bool)

(assert (=> b!157014 m!143851))

(assert (=> b!157014 m!143851))

(declare-fun m!143853 () Bool)

(assert (=> b!157014 m!143853))

(assert (=> bm!6547 m!142519))

(declare-fun m!143855 () Bool)

(assert (=> bm!6547 m!143855))

(declare-fun m!143857 () Bool)

(assert (=> d!38077 m!143857))

(assert (=> d!38077 m!143849))

(declare-fun m!143859 () Bool)

(assert (=> d!38077 m!143859))

(assert (=> d!38077 m!142519))

(assert (=> d!38077 m!143849))

(declare-fun m!143861 () Bool)

(assert (=> d!38077 m!143861))

(declare-fun m!143863 () Bool)

(assert (=> d!38077 m!143863))

(assert (=> d!38077 m!142965))

(assert (=> d!38077 m!143859))

(declare-fun m!143865 () Bool)

(assert (=> d!38077 m!143865))

(assert (=> b!157020 m!143849))

(assert (=> b!157020 m!143851))

(assert (=> b!157020 m!142519))

(assert (=> b!157020 m!143849))

(assert (=> b!157020 m!143847))

(assert (=> b!157020 m!143851))

(assert (=> b!157020 m!143853))

(declare-fun m!143867 () Bool)

(assert (=> b!157020 m!143867))

(assert (=> b!157016 m!143861))

(assert (=> b!157021 m!143859))

(declare-fun m!143869 () Bool)

(assert (=> b!157021 m!143869))

(assert (=> b!157021 m!143849))

(assert (=> b!157021 m!143859))

(assert (=> b!157021 m!142519))

(assert (=> b!157021 m!143849))

(assert (=> b!157021 m!143847))

(assert (=> b!157021 m!143867))

(assert (=> b!157019 m!143847))

(assert (=> b!157019 m!142519))

(assert (=> b!157019 m!143849))

(assert (=> b!157019 m!143849))

(assert (=> b!157019 m!143859))

(assert (=> b!157019 m!143859))

(assert (=> b!157019 m!143869))

(assert (=> b!157017 m!143861))

(assert (=> b!157018 m!142519))

(declare-fun m!143871 () Bool)

(assert (=> b!157018 m!143871))

(assert (=> b!156237 d!38077))

(declare-fun bs!14565 () Bool)

(declare-fun d!38081 () Bool)

(assert (= bs!14565 (and d!38081 d!37795)))

(declare-fun lambda!4207 () Int)

(assert (=> bs!14565 (= (and (= (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toChars!977 (transformation!475 (h!8108 rules!1920)))) (= (toValue!1118 (transformation!475 (rule!982 separatorToken!170))) (toValue!1118 (transformation!475 (h!8108 rules!1920))))) (= lambda!4207 lambda!4183))))

(declare-fun bs!14566 () Bool)

(assert (= bs!14566 (and d!38081 d!37799)))

(assert (=> bs!14566 (= (and (= (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465))))) (= (toValue!1118 (transformation!475 (rule!982 separatorToken!170))) (toValue!1118 (transformation!475 (rule!982 (h!8109 tokens!465)))))) (= lambda!4207 lambda!4184))))

(assert (=> d!38081 true))

(assert (=> d!38081 (< (dynLambda!963 order!1369 (toChars!977 (transformation!475 (rule!982 separatorToken!170)))) (dynLambda!964 order!1371 lambda!4207))))

(assert (=> d!38081 true))

(assert (=> d!38081 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (rule!982 separatorToken!170)))) (dynLambda!964 order!1371 lambda!4207))))

(assert (=> d!38081 (= (semiInverseModEq!165 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toValue!1118 (transformation!475 (rule!982 separatorToken!170)))) (Forall!125 lambda!4207))))

(declare-fun bs!14567 () Bool)

(assert (= bs!14567 d!38081))

(declare-fun m!143873 () Bool)

(assert (=> bs!14567 m!143873))

(assert (=> d!37735 d!38081))

(declare-fun d!38083 () Bool)

(declare-fun lt!46616 () Int)

(assert (=> d!38083 (>= lt!46616 0)))

(declare-fun e!94254 () Int)

(assert (=> d!38083 (= lt!46616 e!94254)))

(declare-fun c!31566 () Bool)

(assert (=> d!38083 (= c!31566 ((_ is Nil!2710) (originalCharacters!518 separatorToken!170)))))

(assert (=> d!38083 (= (size!2291 (originalCharacters!518 separatorToken!170)) lt!46616)))

(declare-fun b!157022 () Bool)

(assert (=> b!157022 (= e!94254 0)))

(declare-fun b!157023 () Bool)

(assert (=> b!157023 (= e!94254 (+ 1 (size!2291 (t!25384 (originalCharacters!518 separatorToken!170)))))))

(assert (= (and d!38083 c!31566) b!157022))

(assert (= (and d!38083 (not c!31566)) b!157023))

(declare-fun m!143875 () Bool)

(assert (=> b!157023 m!143875))

(assert (=> b!156368 d!38083))

(declare-fun d!38085 () Bool)

(assert (=> d!38085 (= (list!961 e!93871) (list!964 (c!31335 e!93871)))))

(declare-fun bs!14568 () Bool)

(assert (= bs!14568 d!38085))

(declare-fun m!143877 () Bool)

(assert (=> bs!14568 m!143877))

(assert (=> bm!6506 d!38085))

(declare-fun b!157025 () Bool)

(declare-fun e!94255 () List!2720)

(declare-fun e!94256 () List!2720)

(assert (=> b!157025 (= e!94255 e!94256)))

(declare-fun c!31568 () Bool)

(assert (=> b!157025 (= c!31568 ((_ is Leaf!1349) (c!31335 (seqFromList!328 lt!46186))))))

(declare-fun b!157024 () Bool)

(assert (=> b!157024 (= e!94255 Nil!2710)))

(declare-fun b!157027 () Bool)

(assert (=> b!157027 (= e!94256 (++!592 (list!964 (left!2044 (c!31335 (seqFromList!328 lt!46186)))) (list!964 (right!2374 (c!31335 (seqFromList!328 lt!46186))))))))

(declare-fun d!38087 () Bool)

(declare-fun c!31567 () Bool)

(assert (=> d!38087 (= c!31567 ((_ is Empty!772) (c!31335 (seqFromList!328 lt!46186))))))

(assert (=> d!38087 (= (list!964 (c!31335 (seqFromList!328 lt!46186))) e!94255)))

(declare-fun b!157026 () Bool)

(assert (=> b!157026 (= e!94256 (list!966 (xs!3367 (c!31335 (seqFromList!328 lt!46186)))))))

(assert (= (and d!38087 c!31567) b!157024))

(assert (= (and d!38087 (not c!31567)) b!157025))

(assert (= (and b!157025 c!31568) b!157026))

(assert (= (and b!157025 (not c!31568)) b!157027))

(declare-fun m!143879 () Bool)

(assert (=> b!157027 m!143879))

(declare-fun m!143881 () Bool)

(assert (=> b!157027 m!143881))

(assert (=> b!157027 m!143879))

(assert (=> b!157027 m!143881))

(declare-fun m!143883 () Bool)

(assert (=> b!157027 m!143883))

(declare-fun m!143885 () Bool)

(assert (=> b!157026 m!143885))

(assert (=> d!37659 d!38087))

(declare-fun d!38089 () Bool)

(declare-fun c!31569 () Bool)

(assert (=> d!38089 (= c!31569 ((_ is Nil!2710) lt!46368))))

(declare-fun e!94257 () (InoxSet C!2320))

(assert (=> d!38089 (= (content!375 lt!46368) e!94257)))

(declare-fun b!157028 () Bool)

(assert (=> b!157028 (= e!94257 ((as const (Array C!2320 Bool)) false))))

(declare-fun b!157029 () Bool)

(assert (=> b!157029 (= e!94257 ((_ map or) (store ((as const (Array C!2320 Bool)) false) (h!8107 lt!46368) true) (content!375 (t!25384 lt!46368))))))

(assert (= (and d!38089 c!31569) b!157028))

(assert (= (and d!38089 (not c!31569)) b!157029))

(declare-fun m!143887 () Bool)

(assert (=> b!157029 m!143887))

(declare-fun m!143889 () Bool)

(assert (=> b!157029 m!143889))

(assert (=> d!37761 d!38089))

(declare-fun d!38091 () Bool)

(declare-fun c!31570 () Bool)

(assert (=> d!38091 (= c!31570 ((_ is Nil!2710) (++!592 lt!46185 lt!46189)))))

(declare-fun e!94258 () (InoxSet C!2320))

(assert (=> d!38091 (= (content!375 (++!592 lt!46185 lt!46189)) e!94258)))

(declare-fun b!157030 () Bool)

(assert (=> b!157030 (= e!94258 ((as const (Array C!2320 Bool)) false))))

(declare-fun b!157031 () Bool)

(assert (=> b!157031 (= e!94258 ((_ map or) (store ((as const (Array C!2320 Bool)) false) (h!8107 (++!592 lt!46185 lt!46189)) true) (content!375 (t!25384 (++!592 lt!46185 lt!46189)))))))

(assert (= (and d!38091 c!31570) b!157030))

(assert (= (and d!38091 (not c!31570)) b!157031))

(declare-fun m!143891 () Bool)

(assert (=> b!157031 m!143891))

(assert (=> b!157031 m!143329))

(assert (=> d!37761 d!38091))

(assert (=> d!37761 d!37827))

(declare-fun d!38093 () Bool)

(declare-fun lt!46617 () BalanceConc!1552)

(assert (=> d!38093 (= (list!961 lt!46617) (printList!55 thiss!17480 (list!965 (singletonSeq!33 (h!8109 (t!25386 tokens!465))))))))

(assert (=> d!38093 (= lt!46617 (printTailRec!63 thiss!17480 (singletonSeq!33 (h!8109 (t!25386 tokens!465))) 0 (BalanceConc!1553 Empty!772)))))

(assert (=> d!38093 (= (print!100 thiss!17480 (singletonSeq!33 (h!8109 (t!25386 tokens!465)))) lt!46617)))

(declare-fun bs!14569 () Bool)

(assert (= bs!14569 d!38093))

(declare-fun m!143893 () Bool)

(assert (=> bs!14569 m!143893))

(assert (=> bs!14569 m!142765))

(declare-fun m!143895 () Bool)

(assert (=> bs!14569 m!143895))

(assert (=> bs!14569 m!143895))

(declare-fun m!143897 () Bool)

(assert (=> bs!14569 m!143897))

(assert (=> bs!14569 m!142765))

(assert (=> bs!14569 m!142769))

(assert (=> b!156416 d!38093))

(declare-fun d!38095 () Bool)

(declare-fun e!94259 () Bool)

(assert (=> d!38095 e!94259))

(declare-fun res!71536 () Bool)

(assert (=> d!38095 (=> (not res!71536) (not e!94259))))

(declare-fun lt!46618 () BalanceConc!1554)

(assert (=> d!38095 (= res!71536 (= (list!965 lt!46618) (Cons!2712 (h!8109 (t!25386 tokens!465)) Nil!2712)))))

(assert (=> d!38095 (= lt!46618 (singleton!23 (h!8109 (t!25386 tokens!465))))))

(assert (=> d!38095 (= (singletonSeq!33 (h!8109 (t!25386 tokens!465))) lt!46618)))

(declare-fun b!157032 () Bool)

(assert (=> b!157032 (= e!94259 (isBalanced!216 (c!31337 lt!46618)))))

(assert (= (and d!38095 res!71536) b!157032))

(declare-fun m!143899 () Bool)

(assert (=> d!38095 m!143899))

(declare-fun m!143901 () Bool)

(assert (=> d!38095 m!143901))

(declare-fun m!143903 () Bool)

(assert (=> b!157032 m!143903))

(assert (=> b!156416 d!38095))

(declare-fun d!38097 () Bool)

(declare-fun lt!46636 () BalanceConc!1552)

(declare-fun printListTailRec!42 (LexerInterface!361 List!2722 List!2720) List!2720)

(assert (=> d!38097 (= (list!961 lt!46636) (printListTailRec!42 thiss!17480 (dropList!74 (singletonSeq!33 (h!8109 (t!25386 tokens!465))) 0) (list!961 (BalanceConc!1553 Empty!772))))))

(declare-fun e!94264 () BalanceConc!1552)

(assert (=> d!38097 (= lt!46636 e!94264)))

(declare-fun c!31573 () Bool)

(assert (=> d!38097 (= c!31573 (>= 0 (size!2287 (singletonSeq!33 (h!8109 (t!25386 tokens!465))))))))

(declare-fun e!94265 () Bool)

(assert (=> d!38097 e!94265))

(declare-fun res!71539 () Bool)

(assert (=> d!38097 (=> (not res!71539) (not e!94265))))

(assert (=> d!38097 (= res!71539 (>= 0 0))))

(assert (=> d!38097 (= (printTailRec!63 thiss!17480 (singletonSeq!33 (h!8109 (t!25386 tokens!465))) 0 (BalanceConc!1553 Empty!772)) lt!46636)))

(declare-fun b!157039 () Bool)

(assert (=> b!157039 (= e!94265 (<= 0 (size!2287 (singletonSeq!33 (h!8109 (t!25386 tokens!465))))))))

(declare-fun b!157040 () Bool)

(assert (=> b!157040 (= e!94264 (BalanceConc!1553 Empty!772))))

(declare-fun b!157041 () Bool)

(assert (=> b!157041 (= e!94264 (printTailRec!63 thiss!17480 (singletonSeq!33 (h!8109 (t!25386 tokens!465))) (+ 0 1) (++!594 (BalanceConc!1553 Empty!772) (charsOf!130 (apply!365 (singletonSeq!33 (h!8109 (t!25386 tokens!465))) 0)))))))

(declare-fun lt!46634 () List!2722)

(assert (=> b!157041 (= lt!46634 (list!965 (singletonSeq!33 (h!8109 (t!25386 tokens!465)))))))

(declare-fun lt!46638 () Unit!2136)

(assert (=> b!157041 (= lt!46638 (lemmaDropApply!114 lt!46634 0))))

(assert (=> b!157041 (= (head!588 (drop!127 lt!46634 0)) (apply!366 lt!46634 0))))

(declare-fun lt!46635 () Unit!2136)

(assert (=> b!157041 (= lt!46635 lt!46638)))

(declare-fun lt!46633 () List!2722)

(assert (=> b!157041 (= lt!46633 (list!965 (singletonSeq!33 (h!8109 (t!25386 tokens!465)))))))

(declare-fun lt!46637 () Unit!2136)

(assert (=> b!157041 (= lt!46637 (lemmaDropTail!106 lt!46633 0))))

(assert (=> b!157041 (= (tail!328 (drop!127 lt!46633 0)) (drop!127 lt!46633 (+ 0 1)))))

(declare-fun lt!46639 () Unit!2136)

(assert (=> b!157041 (= lt!46639 lt!46637)))

(assert (= (and d!38097 res!71539) b!157039))

(assert (= (and d!38097 c!31573) b!157040))

(assert (= (and d!38097 (not c!31573)) b!157041))

(declare-fun m!143905 () Bool)

(assert (=> d!38097 m!143905))

(declare-fun m!143907 () Bool)

(assert (=> d!38097 m!143907))

(declare-fun m!143909 () Bool)

(assert (=> d!38097 m!143909))

(declare-fun m!143911 () Bool)

(assert (=> d!38097 m!143911))

(assert (=> d!38097 m!143909))

(assert (=> d!38097 m!142765))

(assert (=> d!38097 m!143907))

(assert (=> d!38097 m!142765))

(declare-fun m!143913 () Bool)

(assert (=> d!38097 m!143913))

(assert (=> b!157039 m!142765))

(assert (=> b!157039 m!143913))

(assert (=> b!157041 m!142765))

(assert (=> b!157041 m!143895))

(declare-fun m!143915 () Bool)

(assert (=> b!157041 m!143915))

(assert (=> b!157041 m!142765))

(declare-fun m!143917 () Bool)

(assert (=> b!157041 m!143917))

(declare-fun m!143919 () Bool)

(assert (=> b!157041 m!143919))

(declare-fun m!143921 () Bool)

(assert (=> b!157041 m!143921))

(declare-fun m!143923 () Bool)

(assert (=> b!157041 m!143923))

(declare-fun m!143925 () Bool)

(assert (=> b!157041 m!143925))

(declare-fun m!143927 () Bool)

(assert (=> b!157041 m!143927))

(assert (=> b!157041 m!143925))

(declare-fun m!143929 () Bool)

(assert (=> b!157041 m!143929))

(assert (=> b!157041 m!142765))

(declare-fun m!143931 () Bool)

(assert (=> b!157041 m!143931))

(declare-fun m!143933 () Bool)

(assert (=> b!157041 m!143933))

(declare-fun m!143935 () Bool)

(assert (=> b!157041 m!143935))

(assert (=> b!157041 m!143931))

(assert (=> b!157041 m!143919))

(assert (=> b!157041 m!143917))

(assert (=> b!157041 m!143935))

(declare-fun m!143937 () Bool)

(assert (=> b!157041 m!143937))

(assert (=> b!156416 d!38097))

(declare-fun b!157106 () Bool)

(declare-fun e!94301 () Unit!2136)

(declare-fun Unit!2162 () Unit!2136)

(assert (=> b!157106 (= e!94301 Unit!2162)))

(declare-fun b!157103 () Bool)

(declare-fun res!71572 () Bool)

(declare-fun e!94302 () Bool)

(assert (=> b!157103 (=> (not res!71572) (not e!94302))))

(declare-fun lt!46765 () Token!694)

(declare-datatypes ((Option!261 0))(
  ( (None!260) (Some!260 (v!13657 Rule!750)) )
))
(declare-fun get!734 (Option!261) Rule!750)

(declare-fun getRuleFromTag!14 (LexerInterface!361 List!2721 String!3565) Option!261)

(assert (=> b!157103 (= res!71572 (matchR!70 (regex!475 (get!734 (getRuleFromTag!14 thiss!17480 rules!1920 (tag!653 (rule!982 lt!46765))))) (list!961 (charsOf!130 lt!46765))))))

(declare-fun d!38099 () Bool)

(assert (=> d!38099 (isDefined!109 (maxPrefix!115 thiss!17480 rules!1920 (++!592 call!6513 lt!46358)))))

(declare-fun lt!46771 () Unit!2136)

(assert (=> d!38099 (= lt!46771 e!94301)))

(declare-fun c!31589 () Bool)

(assert (=> d!38099 (= c!31589 (isEmpty!1088 (maxPrefix!115 thiss!17480 rules!1920 (++!592 call!6513 lt!46358))))))

(declare-fun lt!46761 () Unit!2136)

(declare-fun lt!46772 () Unit!2136)

(assert (=> d!38099 (= lt!46761 lt!46772)))

(assert (=> d!38099 e!94302))

(declare-fun res!71571 () Bool)

(assert (=> d!38099 (=> (not res!71571) (not e!94302))))

(declare-fun isDefined!113 (Option!261) Bool)

(assert (=> d!38099 (= res!71571 (isDefined!113 (getRuleFromTag!14 thiss!17480 rules!1920 (tag!653 (rule!982 lt!46765)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!14 (LexerInterface!361 List!2721 List!2720 Token!694) Unit!2136)

(assert (=> d!38099 (= lt!46772 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!14 thiss!17480 rules!1920 call!6513 lt!46765))))

(declare-fun lt!46766 () Unit!2136)

(declare-fun lt!46759 () Unit!2136)

(assert (=> d!38099 (= lt!46766 lt!46759)))

(declare-fun lt!46767 () List!2720)

(assert (=> d!38099 (isPrefix!214 lt!46767 (++!592 call!6513 lt!46358))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!14 (List!2720 List!2720 List!2720) Unit!2136)

(assert (=> d!38099 (= lt!46759 (lemmaPrefixStaysPrefixWhenAddingToSuffix!14 lt!46767 call!6513 lt!46358))))

(assert (=> d!38099 (= lt!46767 (list!961 (charsOf!130 lt!46765)))))

(declare-fun lt!46763 () Unit!2136)

(declare-fun lt!46773 () Unit!2136)

(assert (=> d!38099 (= lt!46763 lt!46773)))

(declare-fun lt!46768 () List!2720)

(declare-fun lt!46762 () List!2720)

(assert (=> d!38099 (isPrefix!214 lt!46768 (++!592 lt!46768 lt!46762))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!118 (List!2720 List!2720) Unit!2136)

(assert (=> d!38099 (= lt!46773 (lemmaConcatTwoListThenFirstIsPrefix!118 lt!46768 lt!46762))))

(assert (=> d!38099 (= lt!46762 (_2!1528 (get!730 (maxPrefix!115 thiss!17480 rules!1920 call!6513))))))

(assert (=> d!38099 (= lt!46768 (list!961 (charsOf!130 lt!46765)))))

(assert (=> d!38099 (= lt!46765 (head!588 (list!965 (_1!1529 (lex!175 thiss!17480 rules!1920 (seqFromList!328 call!6513))))))))

(assert (=> d!38099 (not (isEmpty!1080 rules!1920))))

(assert (=> d!38099 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!22 thiss!17480 rules!1920 call!6513 lt!46358) lt!46771)))

(declare-fun b!157104 () Bool)

(assert (=> b!157104 (= e!94302 (= (rule!982 lt!46765) (get!734 (getRuleFromTag!14 thiss!17480 rules!1920 (tag!653 (rule!982 lt!46765))))))))

(declare-fun b!157105 () Bool)

(declare-fun Unit!2163 () Unit!2136)

(assert (=> b!157105 (= e!94301 Unit!2163)))

(declare-fun lt!46764 () List!2720)

(assert (=> b!157105 (= lt!46764 (++!592 call!6513 lt!46358))))

(declare-fun lt!46758 () Unit!2136)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!14 (LexerInterface!361 Rule!750 List!2721 List!2720) Unit!2136)

(assert (=> b!157105 (= lt!46758 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!14 thiss!17480 (rule!982 lt!46765) rules!1920 lt!46764))))

(assert (=> b!157105 (isEmpty!1088 (maxPrefixOneRule!58 thiss!17480 (rule!982 lt!46765) lt!46764))))

(declare-fun lt!46770 () Unit!2136)

(assert (=> b!157105 (= lt!46770 lt!46758)))

(declare-fun lt!46760 () List!2720)

(assert (=> b!157105 (= lt!46760 (list!961 (charsOf!130 lt!46765)))))

(declare-fun lt!46774 () Unit!2136)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!14 (LexerInterface!361 Rule!750 List!2720 List!2720) Unit!2136)

(assert (=> b!157105 (= lt!46774 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!14 thiss!17480 (rule!982 lt!46765) lt!46760 (++!592 call!6513 lt!46358)))))

(assert (=> b!157105 (not (matchR!70 (regex!475 (rule!982 lt!46765)) lt!46760))))

(declare-fun lt!46769 () Unit!2136)

(assert (=> b!157105 (= lt!46769 lt!46774)))

(assert (=> b!157105 false))

(assert (= (and d!38099 res!71571) b!157103))

(assert (= (and b!157103 res!71572) b!157104))

(assert (= (and d!38099 c!31589) b!157105))

(assert (= (and d!38099 (not c!31589)) b!157106))

(declare-fun m!144153 () Bool)

(assert (=> b!157103 m!144153))

(declare-fun m!144155 () Bool)

(assert (=> b!157103 m!144155))

(declare-fun m!144157 () Bool)

(assert (=> b!157103 m!144157))

(declare-fun m!144159 () Bool)

(assert (=> b!157103 m!144159))

(assert (=> b!157103 m!144157))

(declare-fun m!144161 () Bool)

(assert (=> b!157103 m!144161))

(assert (=> b!157103 m!144161))

(assert (=> b!157103 m!144153))

(assert (=> d!38099 m!142253))

(declare-fun m!144163 () Bool)

(assert (=> d!38099 m!144163))

(declare-fun m!144165 () Bool)

(assert (=> d!38099 m!144165))

(declare-fun m!144167 () Bool)

(assert (=> d!38099 m!144167))

(declare-fun m!144169 () Bool)

(assert (=> d!38099 m!144169))

(declare-fun m!144171 () Bool)

(assert (=> d!38099 m!144171))

(assert (=> d!38099 m!144169))

(assert (=> d!38099 m!144157))

(declare-fun m!144173 () Bool)

(assert (=> d!38099 m!144173))

(assert (=> d!38099 m!144165))

(declare-fun m!144175 () Bool)

(assert (=> d!38099 m!144175))

(declare-fun m!144177 () Bool)

(assert (=> d!38099 m!144177))

(declare-fun m!144179 () Bool)

(assert (=> d!38099 m!144179))

(assert (=> d!38099 m!144161))

(assert (=> d!38099 m!144153))

(assert (=> d!38099 m!144173))

(assert (=> d!38099 m!144173))

(declare-fun m!144181 () Bool)

(assert (=> d!38099 m!144181))

(assert (=> d!38099 m!144157))

(declare-fun m!144183 () Bool)

(assert (=> d!38099 m!144183))

(declare-fun m!144185 () Bool)

(assert (=> d!38099 m!144185))

(declare-fun m!144187 () Bool)

(assert (=> d!38099 m!144187))

(assert (=> d!38099 m!144177))

(declare-fun m!144189 () Bool)

(assert (=> d!38099 m!144189))

(assert (=> d!38099 m!144165))

(declare-fun m!144191 () Bool)

(assert (=> d!38099 m!144191))

(assert (=> d!38099 m!144161))

(assert (=> d!38099 m!144175))

(declare-fun m!144193 () Bool)

(assert (=> d!38099 m!144193))

(assert (=> d!38099 m!144163))

(declare-fun m!144195 () Bool)

(assert (=> d!38099 m!144195))

(assert (=> b!157104 m!144157))

(assert (=> b!157104 m!144157))

(assert (=> b!157104 m!144159))

(declare-fun m!144197 () Bool)

(assert (=> b!157105 m!144197))

(declare-fun m!144199 () Bool)

(assert (=> b!157105 m!144199))

(declare-fun m!144201 () Bool)

(assert (=> b!157105 m!144201))

(assert (=> b!157105 m!144197))

(declare-fun m!144203 () Bool)

(assert (=> b!157105 m!144203))

(assert (=> b!157105 m!144161))

(assert (=> b!157105 m!144173))

(declare-fun m!144205 () Bool)

(assert (=> b!157105 m!144205))

(assert (=> b!157105 m!144161))

(assert (=> b!157105 m!144153))

(assert (=> b!157105 m!144173))

(assert (=> b!156416 d!38099))

(declare-fun bs!14601 () Bool)

(declare-fun d!38137 () Bool)

(assert (= bs!14601 (and d!38137 b!156597)))

(declare-fun lambda!4214 () Int)

(assert (=> bs!14601 (= lambda!4214 lambda!4188)))

(declare-fun bs!14602 () Bool)

(assert (= bs!14602 (and d!38137 d!38073)))

(assert (=> bs!14602 (not (= lambda!4214 lambda!4205))))

(declare-fun bs!14603 () Bool)

(assert (= bs!14603 (and d!38137 d!37663)))

(assert (=> bs!14603 (= lambda!4214 lambda!4158)))

(declare-fun bs!14604 () Bool)

(assert (= bs!14604 (and d!38137 b!156980)))

(assert (=> bs!14604 (= lambda!4214 lambda!4206)))

(declare-fun bs!14605 () Bool)

(assert (= bs!14605 (and d!38137 b!156237)))

(assert (=> bs!14605 (= lambda!4214 lambda!4169)))

(declare-fun bs!14606 () Bool)

(assert (= bs!14606 (and d!38137 d!37697)))

(assert (=> bs!14606 (not (= lambda!4214 lambda!4168))))

(declare-fun bs!14607 () Bool)

(assert (= bs!14607 (and d!38137 b!156362)))

(assert (=> bs!14607 (= lambda!4214 lambda!4179)))

(declare-fun bs!14608 () Bool)

(assert (= bs!14608 (and d!38137 b!156022)))

(assert (=> bs!14608 (not (= lambda!4214 lambda!4150))))

(declare-fun bs!14609 () Bool)

(assert (= bs!14609 (and d!38137 b!156422)))

(assert (=> bs!14609 (= lambda!4214 lambda!4180)))

(declare-fun b!157228 () Bool)

(declare-fun e!94385 () Bool)

(assert (=> b!157228 (= e!94385 true)))

(declare-fun b!157227 () Bool)

(declare-fun e!94384 () Bool)

(assert (=> b!157227 (= e!94384 e!94385)))

(declare-fun b!157226 () Bool)

(declare-fun e!94383 () Bool)

(assert (=> b!157226 (= e!94383 e!94384)))

(assert (=> d!38137 e!94383))

(assert (= b!157227 b!157228))

(assert (= b!157226 b!157227))

(assert (= (and d!38137 ((_ is Cons!2711) rules!1920)) b!157226))

(assert (=> b!157228 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4214))))

(assert (=> b!157228 (< (dynLambda!963 order!1369 (toChars!977 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4214))))

(assert (=> d!38137 true))

(declare-fun lt!46833 () Bool)

(assert (=> d!38137 (= lt!46833 (forall!479 (list!965 lt!46190) lambda!4214))))

(declare-fun e!94381 () Bool)

(assert (=> d!38137 (= lt!46833 e!94381)))

(declare-fun res!71619 () Bool)

(assert (=> d!38137 (=> res!71619 e!94381)))

(assert (=> d!38137 (= res!71619 (not ((_ is Cons!2712) (list!965 lt!46190))))))

(assert (=> d!38137 (not (isEmpty!1080 rules!1920))))

(assert (=> d!38137 (= (rulesProduceEachTokenIndividuallyList!97 thiss!17480 rules!1920 (list!965 lt!46190)) lt!46833)))

(declare-fun b!157224 () Bool)

(declare-fun e!94382 () Bool)

(assert (=> b!157224 (= e!94381 e!94382)))

(declare-fun res!71620 () Bool)

(assert (=> b!157224 (=> (not res!71620) (not e!94382))))

(assert (=> b!157224 (= res!71620 (rulesProduceIndividualToken!110 thiss!17480 rules!1920 (h!8109 (list!965 lt!46190))))))

(declare-fun b!157225 () Bool)

(assert (=> b!157225 (= e!94382 (rulesProduceEachTokenIndividuallyList!97 thiss!17480 rules!1920 (t!25386 (list!965 lt!46190))))))

(assert (= (and d!38137 (not res!71619)) b!157224))

(assert (= (and b!157224 res!71620) b!157225))

(assert (=> d!38137 m!142451))

(declare-fun m!144391 () Bool)

(assert (=> d!38137 m!144391))

(assert (=> d!38137 m!142253))

(declare-fun m!144393 () Bool)

(assert (=> b!157224 m!144393))

(declare-fun m!144395 () Bool)

(assert (=> b!157225 m!144395))

(assert (=> b!156169 d!38137))

(assert (=> b!156169 d!37973))

(declare-fun d!38185 () Bool)

(declare-fun e!94386 () Bool)

(assert (=> d!38185 e!94386))

(declare-fun res!71621 () Bool)

(assert (=> d!38185 (=> (not res!71621) (not e!94386))))

(declare-fun lt!46834 () BalanceConc!1554)

(assert (=> d!38185 (= res!71621 (= (list!965 lt!46834) (Cons!2712 call!6472 Nil!2712)))))

(assert (=> d!38185 (= lt!46834 (singleton!23 call!6472))))

(assert (=> d!38185 (= (singletonSeq!33 call!6472) lt!46834)))

(declare-fun b!157229 () Bool)

(assert (=> b!157229 (= e!94386 (isBalanced!216 (c!31337 lt!46834)))))

(assert (= (and d!38185 res!71621) b!157229))

(declare-fun m!144397 () Bool)

(assert (=> d!38185 m!144397))

(declare-fun m!144399 () Bool)

(assert (=> d!38185 m!144399))

(declare-fun m!144401 () Bool)

(assert (=> b!157229 m!144401))

(assert (=> b!156234 d!38185))

(declare-fun d!38187 () Bool)

(declare-fun lt!46835 () BalanceConc!1552)

(assert (=> d!38187 (= (list!961 lt!46835) (printList!55 thiss!17480 (list!965 (singletonSeq!33 call!6472))))))

(assert (=> d!38187 (= lt!46835 (printTailRec!63 thiss!17480 (singletonSeq!33 call!6472) 0 (BalanceConc!1553 Empty!772)))))

(assert (=> d!38187 (= (print!100 thiss!17480 (singletonSeq!33 call!6472)) lt!46835)))

(declare-fun bs!14610 () Bool)

(assert (= bs!14610 d!38187))

(declare-fun m!144403 () Bool)

(assert (=> bs!14610 m!144403))

(assert (=> bs!14610 m!142545))

(declare-fun m!144405 () Bool)

(assert (=> bs!14610 m!144405))

(assert (=> bs!14610 m!144405))

(declare-fun m!144407 () Bool)

(assert (=> bs!14610 m!144407))

(assert (=> bs!14610 m!142545))

(assert (=> bs!14610 m!142547))

(assert (=> b!156234 d!38187))

(declare-fun d!38189 () Bool)

(assert (=> d!38189 (= (list!961 call!6475) (list!964 (c!31335 call!6475)))))

(declare-fun bs!14611 () Bool)

(assert (= bs!14611 d!38189))

(declare-fun m!144409 () Bool)

(assert (=> bs!14611 m!144409))

(assert (=> b!156234 d!38189))

(declare-fun b!157233 () Bool)

(declare-fun e!94387 () Unit!2136)

(declare-fun Unit!2164 () Unit!2136)

(assert (=> b!157233 (= e!94387 Unit!2164)))

(declare-fun b!157230 () Bool)

(declare-fun res!71623 () Bool)

(declare-fun e!94388 () Bool)

(assert (=> b!157230 (=> (not res!71623) (not e!94388))))

(declare-fun lt!46843 () Token!694)

(assert (=> b!157230 (= res!71623 (matchR!70 (regex!475 (get!734 (getRuleFromTag!14 thiss!17480 rules!1920 (tag!653 (rule!982 lt!46843))))) (list!961 (charsOf!130 lt!46843))))))

(declare-fun d!38191 () Bool)

(assert (=> d!38191 (isDefined!109 (maxPrefix!115 thiss!17480 rules!1920 (++!592 (list!961 call!6475) (list!961 lt!46272))))))

(declare-fun lt!46849 () Unit!2136)

(assert (=> d!38191 (= lt!46849 e!94387)))

(declare-fun c!31623 () Bool)

(assert (=> d!38191 (= c!31623 (isEmpty!1088 (maxPrefix!115 thiss!17480 rules!1920 (++!592 (list!961 call!6475) (list!961 lt!46272)))))))

(declare-fun lt!46839 () Unit!2136)

(declare-fun lt!46850 () Unit!2136)

(assert (=> d!38191 (= lt!46839 lt!46850)))

(assert (=> d!38191 e!94388))

(declare-fun res!71622 () Bool)

(assert (=> d!38191 (=> (not res!71622) (not e!94388))))

(assert (=> d!38191 (= res!71622 (isDefined!113 (getRuleFromTag!14 thiss!17480 rules!1920 (tag!653 (rule!982 lt!46843)))))))

(assert (=> d!38191 (= lt!46850 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!14 thiss!17480 rules!1920 (list!961 call!6475) lt!46843))))

(declare-fun lt!46844 () Unit!2136)

(declare-fun lt!46837 () Unit!2136)

(assert (=> d!38191 (= lt!46844 lt!46837)))

(declare-fun lt!46845 () List!2720)

(assert (=> d!38191 (isPrefix!214 lt!46845 (++!592 (list!961 call!6475) (list!961 lt!46272)))))

(assert (=> d!38191 (= lt!46837 (lemmaPrefixStaysPrefixWhenAddingToSuffix!14 lt!46845 (list!961 call!6475) (list!961 lt!46272)))))

(assert (=> d!38191 (= lt!46845 (list!961 (charsOf!130 lt!46843)))))

(declare-fun lt!46841 () Unit!2136)

(declare-fun lt!46851 () Unit!2136)

(assert (=> d!38191 (= lt!46841 lt!46851)))

(declare-fun lt!46846 () List!2720)

(declare-fun lt!46840 () List!2720)

(assert (=> d!38191 (isPrefix!214 lt!46846 (++!592 lt!46846 lt!46840))))

(assert (=> d!38191 (= lt!46851 (lemmaConcatTwoListThenFirstIsPrefix!118 lt!46846 lt!46840))))

(assert (=> d!38191 (= lt!46840 (_2!1528 (get!730 (maxPrefix!115 thiss!17480 rules!1920 (list!961 call!6475)))))))

(assert (=> d!38191 (= lt!46846 (list!961 (charsOf!130 lt!46843)))))

(assert (=> d!38191 (= lt!46843 (head!588 (list!965 (_1!1529 (lex!175 thiss!17480 rules!1920 (seqFromList!328 (list!961 call!6475)))))))))

(assert (=> d!38191 (not (isEmpty!1080 rules!1920))))

(assert (=> d!38191 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!22 thiss!17480 rules!1920 (list!961 call!6475) (list!961 lt!46272)) lt!46849)))

(declare-fun b!157231 () Bool)

(assert (=> b!157231 (= e!94388 (= (rule!982 lt!46843) (get!734 (getRuleFromTag!14 thiss!17480 rules!1920 (tag!653 (rule!982 lt!46843))))))))

(declare-fun b!157232 () Bool)

(declare-fun Unit!2165 () Unit!2136)

(assert (=> b!157232 (= e!94387 Unit!2165)))

(declare-fun lt!46842 () List!2720)

(assert (=> b!157232 (= lt!46842 (++!592 (list!961 call!6475) (list!961 lt!46272)))))

(declare-fun lt!46836 () Unit!2136)

(assert (=> b!157232 (= lt!46836 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!14 thiss!17480 (rule!982 lt!46843) rules!1920 lt!46842))))

(assert (=> b!157232 (isEmpty!1088 (maxPrefixOneRule!58 thiss!17480 (rule!982 lt!46843) lt!46842))))

(declare-fun lt!46848 () Unit!2136)

(assert (=> b!157232 (= lt!46848 lt!46836)))

(declare-fun lt!46838 () List!2720)

(assert (=> b!157232 (= lt!46838 (list!961 (charsOf!130 lt!46843)))))

(declare-fun lt!46852 () Unit!2136)

(assert (=> b!157232 (= lt!46852 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!14 thiss!17480 (rule!982 lt!46843) lt!46838 (++!592 (list!961 call!6475) (list!961 lt!46272))))))

(assert (=> b!157232 (not (matchR!70 (regex!475 (rule!982 lt!46843)) lt!46838))))

(declare-fun lt!46847 () Unit!2136)

(assert (=> b!157232 (= lt!46847 lt!46852)))

(assert (=> b!157232 false))

(assert (= (and d!38191 res!71622) b!157230))

(assert (= (and b!157230 res!71623) b!157231))

(assert (= (and d!38191 c!31623) b!157232))

(assert (= (and d!38191 (not c!31623)) b!157233))

(declare-fun m!144411 () Bool)

(assert (=> b!157230 m!144411))

(declare-fun m!144413 () Bool)

(assert (=> b!157230 m!144413))

(declare-fun m!144415 () Bool)

(assert (=> b!157230 m!144415))

(declare-fun m!144417 () Bool)

(assert (=> b!157230 m!144417))

(assert (=> b!157230 m!144415))

(declare-fun m!144419 () Bool)

(assert (=> b!157230 m!144419))

(assert (=> b!157230 m!144419))

(assert (=> b!157230 m!144411))

(assert (=> d!38191 m!142253))

(declare-fun m!144421 () Bool)

(assert (=> d!38191 m!144421))

(declare-fun m!144423 () Bool)

(assert (=> d!38191 m!144423))

(declare-fun m!144425 () Bool)

(assert (=> d!38191 m!144425))

(declare-fun m!144427 () Bool)

(assert (=> d!38191 m!144427))

(declare-fun m!144429 () Bool)

(assert (=> d!38191 m!144429))

(assert (=> d!38191 m!142539))

(assert (=> d!38191 m!144427))

(assert (=> d!38191 m!144415))

(declare-fun m!144431 () Bool)

(assert (=> d!38191 m!144431))

(assert (=> d!38191 m!144423))

(assert (=> d!38191 m!142539))

(declare-fun m!144433 () Bool)

(assert (=> d!38191 m!144433))

(declare-fun m!144435 () Bool)

(assert (=> d!38191 m!144435))

(assert (=> d!38191 m!142539))

(declare-fun m!144437 () Bool)

(assert (=> d!38191 m!144437))

(assert (=> d!38191 m!144419))

(assert (=> d!38191 m!144411))

(assert (=> d!38191 m!142539))

(assert (=> d!38191 m!142541))

(assert (=> d!38191 m!144431))

(assert (=> d!38191 m!144431))

(declare-fun m!144439 () Bool)

(assert (=> d!38191 m!144439))

(assert (=> d!38191 m!144415))

(declare-fun m!144441 () Bool)

(assert (=> d!38191 m!144441))

(declare-fun m!144443 () Bool)

(assert (=> d!38191 m!144443))

(assert (=> d!38191 m!142539))

(assert (=> d!38191 m!142541))

(declare-fun m!144445 () Bool)

(assert (=> d!38191 m!144445))

(assert (=> d!38191 m!144435))

(declare-fun m!144447 () Bool)

(assert (=> d!38191 m!144447))

(assert (=> d!38191 m!144423))

(declare-fun m!144449 () Bool)

(assert (=> d!38191 m!144449))

(assert (=> d!38191 m!144419))

(assert (=> d!38191 m!144433))

(declare-fun m!144451 () Bool)

(assert (=> d!38191 m!144451))

(assert (=> d!38191 m!144421))

(declare-fun m!144453 () Bool)

(assert (=> d!38191 m!144453))

(assert (=> b!157231 m!144415))

(assert (=> b!157231 m!144415))

(assert (=> b!157231 m!144417))

(declare-fun m!144455 () Bool)

(assert (=> b!157232 m!144455))

(declare-fun m!144457 () Bool)

(assert (=> b!157232 m!144457))

(declare-fun m!144459 () Bool)

(assert (=> b!157232 m!144459))

(assert (=> b!157232 m!144455))

(declare-fun m!144461 () Bool)

(assert (=> b!157232 m!144461))

(assert (=> b!157232 m!144419))

(assert (=> b!157232 m!144431))

(declare-fun m!144463 () Bool)

(assert (=> b!157232 m!144463))

(assert (=> b!157232 m!144419))

(assert (=> b!157232 m!144411))

(assert (=> b!157232 m!142539))

(assert (=> b!157232 m!142541))

(assert (=> b!157232 m!144431))

(assert (=> b!156234 d!38191))

(declare-fun d!38193 () Bool)

(assert (=> d!38193 (= (list!961 lt!46272) (list!964 (c!31335 lt!46272)))))

(declare-fun bs!14612 () Bool)

(assert (= bs!14612 d!38193))

(declare-fun m!144465 () Bool)

(assert (=> bs!14612 m!144465))

(assert (=> b!156234 d!38193))

(declare-fun d!38195 () Bool)

(declare-fun lt!46856 () BalanceConc!1552)

(assert (=> d!38195 (= (list!961 lt!46856) (printListTailRec!42 thiss!17480 (dropList!74 (singletonSeq!33 call!6472) 0) (list!961 (BalanceConc!1553 Empty!772))))))

(declare-fun e!94389 () BalanceConc!1552)

(assert (=> d!38195 (= lt!46856 e!94389)))

(declare-fun c!31624 () Bool)

(assert (=> d!38195 (= c!31624 (>= 0 (size!2287 (singletonSeq!33 call!6472))))))

(declare-fun e!94390 () Bool)

(assert (=> d!38195 e!94390))

(declare-fun res!71624 () Bool)

(assert (=> d!38195 (=> (not res!71624) (not e!94390))))

(assert (=> d!38195 (= res!71624 (>= 0 0))))

(assert (=> d!38195 (= (printTailRec!63 thiss!17480 (singletonSeq!33 call!6472) 0 (BalanceConc!1553 Empty!772)) lt!46856)))

(declare-fun b!157234 () Bool)

(assert (=> b!157234 (= e!94390 (<= 0 (size!2287 (singletonSeq!33 call!6472))))))

(declare-fun b!157235 () Bool)

(assert (=> b!157235 (= e!94389 (BalanceConc!1553 Empty!772))))

(declare-fun b!157236 () Bool)

(assert (=> b!157236 (= e!94389 (printTailRec!63 thiss!17480 (singletonSeq!33 call!6472) (+ 0 1) (++!594 (BalanceConc!1553 Empty!772) (charsOf!130 (apply!365 (singletonSeq!33 call!6472) 0)))))))

(declare-fun lt!46854 () List!2722)

(assert (=> b!157236 (= lt!46854 (list!965 (singletonSeq!33 call!6472)))))

(declare-fun lt!46858 () Unit!2136)

(assert (=> b!157236 (= lt!46858 (lemmaDropApply!114 lt!46854 0))))

(assert (=> b!157236 (= (head!588 (drop!127 lt!46854 0)) (apply!366 lt!46854 0))))

(declare-fun lt!46855 () Unit!2136)

(assert (=> b!157236 (= lt!46855 lt!46858)))

(declare-fun lt!46853 () List!2722)

(assert (=> b!157236 (= lt!46853 (list!965 (singletonSeq!33 call!6472)))))

(declare-fun lt!46857 () Unit!2136)

(assert (=> b!157236 (= lt!46857 (lemmaDropTail!106 lt!46853 0))))

(assert (=> b!157236 (= (tail!328 (drop!127 lt!46853 0)) (drop!127 lt!46853 (+ 0 1)))))

(declare-fun lt!46859 () Unit!2136)

(assert (=> b!157236 (= lt!46859 lt!46857)))

(assert (= (and d!38195 res!71624) b!157234))

(assert (= (and d!38195 c!31624) b!157235))

(assert (= (and d!38195 (not c!31624)) b!157236))

(declare-fun m!144467 () Bool)

(assert (=> d!38195 m!144467))

(declare-fun m!144469 () Bool)

(assert (=> d!38195 m!144469))

(assert (=> d!38195 m!143909))

(declare-fun m!144471 () Bool)

(assert (=> d!38195 m!144471))

(assert (=> d!38195 m!143909))

(assert (=> d!38195 m!142545))

(assert (=> d!38195 m!144469))

(assert (=> d!38195 m!142545))

(declare-fun m!144473 () Bool)

(assert (=> d!38195 m!144473))

(assert (=> b!157234 m!142545))

(assert (=> b!157234 m!144473))

(assert (=> b!157236 m!142545))

(assert (=> b!157236 m!144405))

(declare-fun m!144475 () Bool)

(assert (=> b!157236 m!144475))

(assert (=> b!157236 m!142545))

(declare-fun m!144477 () Bool)

(assert (=> b!157236 m!144477))

(declare-fun m!144479 () Bool)

(assert (=> b!157236 m!144479))

(declare-fun m!144481 () Bool)

(assert (=> b!157236 m!144481))

(declare-fun m!144483 () Bool)

(assert (=> b!157236 m!144483))

(declare-fun m!144485 () Bool)

(assert (=> b!157236 m!144485))

(declare-fun m!144487 () Bool)

(assert (=> b!157236 m!144487))

(assert (=> b!157236 m!144485))

(declare-fun m!144489 () Bool)

(assert (=> b!157236 m!144489))

(assert (=> b!157236 m!142545))

(declare-fun m!144491 () Bool)

(assert (=> b!157236 m!144491))

(declare-fun m!144493 () Bool)

(assert (=> b!157236 m!144493))

(declare-fun m!144495 () Bool)

(assert (=> b!157236 m!144495))

(assert (=> b!157236 m!144491))

(assert (=> b!157236 m!144479))

(assert (=> b!157236 m!144477))

(assert (=> b!157236 m!144495))

(declare-fun m!144497 () Bool)

(assert (=> b!157236 m!144497))

(assert (=> b!156234 d!38195))

(declare-fun d!38197 () Bool)

(assert (=> d!38197 (= (inv!15 (value!17853 (h!8109 tokens!465))) (= (charsToBigInt!0 (text!3928 (value!17853 (h!8109 tokens!465))) 0) (value!17848 (value!17853 (h!8109 tokens!465)))))))

(declare-fun bs!14613 () Bool)

(assert (= bs!14613 d!38197))

(declare-fun m!144499 () Bool)

(assert (=> bs!14613 m!144499))

(assert (=> b!156384 d!38197))

(assert (=> b!156361 d!37759))

(declare-fun b!157238 () Bool)

(declare-fun e!94391 () List!2720)

(declare-fun e!94392 () List!2720)

(assert (=> b!157238 (= e!94391 e!94392)))

(declare-fun c!31626 () Bool)

(assert (=> b!157238 (= c!31626 ((_ is Leaf!1349) (c!31335 (charsOf!130 separatorToken!170))))))

(declare-fun b!157237 () Bool)

(assert (=> b!157237 (= e!94391 Nil!2710)))

(declare-fun b!157240 () Bool)

(assert (=> b!157240 (= e!94392 (++!592 (list!964 (left!2044 (c!31335 (charsOf!130 separatorToken!170)))) (list!964 (right!2374 (c!31335 (charsOf!130 separatorToken!170))))))))

(declare-fun d!38199 () Bool)

(declare-fun c!31625 () Bool)

(assert (=> d!38199 (= c!31625 ((_ is Empty!772) (c!31335 (charsOf!130 separatorToken!170))))))

(assert (=> d!38199 (= (list!964 (c!31335 (charsOf!130 separatorToken!170))) e!94391)))

(declare-fun b!157239 () Bool)

(assert (=> b!157239 (= e!94392 (list!966 (xs!3367 (c!31335 (charsOf!130 separatorToken!170)))))))

(assert (= (and d!38199 c!31625) b!157237))

(assert (= (and d!38199 (not c!31625)) b!157238))

(assert (= (and b!157238 c!31626) b!157239))

(assert (= (and b!157238 (not c!31626)) b!157240))

(declare-fun m!144501 () Bool)

(assert (=> b!157240 m!144501))

(declare-fun m!144503 () Bool)

(assert (=> b!157240 m!144503))

(assert (=> b!157240 m!144501))

(assert (=> b!157240 m!144503))

(declare-fun m!144505 () Bool)

(assert (=> b!157240 m!144505))

(declare-fun m!144507 () Bool)

(assert (=> b!157239 m!144507))

(assert (=> d!37747 d!38199))

(assert (=> bm!6471 d!38031))

(declare-fun d!38201 () Bool)

(declare-fun lt!46860 () Token!694)

(assert (=> d!38201 (= lt!46860 (apply!366 (list!965 (_1!1529 lt!46349)) 0))))

(assert (=> d!38201 (= lt!46860 (apply!370 (c!31337 (_1!1529 lt!46349)) 0))))

(declare-fun e!94393 () Bool)

(assert (=> d!38201 e!94393))

(declare-fun res!71625 () Bool)

(assert (=> d!38201 (=> (not res!71625) (not e!94393))))

(assert (=> d!38201 (= res!71625 (<= 0 0))))

(assert (=> d!38201 (= (apply!365 (_1!1529 lt!46349) 0) lt!46860)))

(declare-fun b!157241 () Bool)

(assert (=> b!157241 (= e!94393 (< 0 (size!2287 (_1!1529 lt!46349))))))

(assert (= (and d!38201 res!71625) b!157241))

(declare-fun m!144509 () Bool)

(assert (=> d!38201 m!144509))

(assert (=> d!38201 m!144509))

(declare-fun m!144511 () Bool)

(assert (=> d!38201 m!144511))

(declare-fun m!144513 () Bool)

(assert (=> d!38201 m!144513))

(assert (=> b!157241 m!142715))

(assert (=> b!156401 d!38201))

(declare-fun b!157245 () Bool)

(declare-fun lt!46861 () List!2720)

(declare-fun e!94394 () Bool)

(assert (=> b!157245 (= e!94394 (or (not (= lt!46358 Nil!2710)) (= lt!46861 call!6516)))))

(declare-fun d!38203 () Bool)

(assert (=> d!38203 e!94394))

(declare-fun res!71626 () Bool)

(assert (=> d!38203 (=> (not res!71626) (not e!94394))))

(assert (=> d!38203 (= res!71626 (= (content!375 lt!46861) ((_ map or) (content!375 call!6516) (content!375 lt!46358))))))

(declare-fun e!94395 () List!2720)

(assert (=> d!38203 (= lt!46861 e!94395)))

(declare-fun c!31627 () Bool)

(assert (=> d!38203 (= c!31627 ((_ is Nil!2710) call!6516))))

(assert (=> d!38203 (= (++!592 call!6516 lt!46358) lt!46861)))

(declare-fun b!157244 () Bool)

(declare-fun res!71627 () Bool)

(assert (=> b!157244 (=> (not res!71627) (not e!94394))))

(assert (=> b!157244 (= res!71627 (= (size!2291 lt!46861) (+ (size!2291 call!6516) (size!2291 lt!46358))))))

(declare-fun b!157243 () Bool)

(assert (=> b!157243 (= e!94395 (Cons!2710 (h!8107 call!6516) (++!592 (t!25384 call!6516) lt!46358)))))

(declare-fun b!157242 () Bool)

(assert (=> b!157242 (= e!94395 lt!46358)))

(assert (= (and d!38203 c!31627) b!157242))

(assert (= (and d!38203 (not c!31627)) b!157243))

(assert (= (and d!38203 res!71626) b!157244))

(assert (= (and b!157244 res!71627) b!157245))

(declare-fun m!144515 () Bool)

(assert (=> d!38203 m!144515))

(declare-fun m!144517 () Bool)

(assert (=> d!38203 m!144517))

(assert (=> d!38203 m!142999))

(declare-fun m!144519 () Bool)

(assert (=> b!157244 m!144519))

(declare-fun m!144521 () Bool)

(assert (=> b!157244 m!144521))

(assert (=> b!157244 m!143005))

(declare-fun m!144523 () Bool)

(assert (=> b!157243 m!144523))

(assert (=> b!156419 d!38203))

(declare-fun d!38205 () Bool)

(assert (=> d!38205 (= (inv!3518 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170))) (isBalanced!215 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170)))))))

(declare-fun bs!14614 () Bool)

(assert (= bs!14614 d!38205))

(declare-fun m!144525 () Bool)

(assert (=> bs!14614 m!144525))

(assert (=> tb!5487 d!38205))

(assert (=> d!37765 d!37743))

(assert (=> d!37765 d!37761))

(assert (=> d!37765 d!37763))

(declare-fun d!38207 () Bool)

(assert (=> d!38207 (= (++!592 (++!592 lt!46185 lt!46189) lt!46187) (++!592 lt!46185 (++!592 lt!46189 lt!46187)))))

(assert (=> d!38207 true))

(declare-fun _$52!570 () Unit!2136)

(assert (=> d!38207 (= (choose!1766 lt!46185 lt!46189 lt!46187) _$52!570)))

(declare-fun bs!14615 () Bool)

(assert (= bs!14615 d!38207))

(assert (=> bs!14615 m!142273))

(assert (=> bs!14615 m!142273))

(assert (=> bs!14615 m!142287))

(assert (=> bs!14615 m!142281))

(assert (=> bs!14615 m!142281))

(assert (=> bs!14615 m!142823))

(assert (=> d!37765 d!38207))

(declare-fun lt!46862 () List!2720)

(declare-fun e!94396 () Bool)

(declare-fun b!157249 () Bool)

(assert (=> b!157249 (= e!94396 (or (not (= (++!592 lt!46189 lt!46187) Nil!2710)) (= lt!46862 lt!46185)))))

(declare-fun d!38209 () Bool)

(assert (=> d!38209 e!94396))

(declare-fun res!71628 () Bool)

(assert (=> d!38209 (=> (not res!71628) (not e!94396))))

(assert (=> d!38209 (= res!71628 (= (content!375 lt!46862) ((_ map or) (content!375 lt!46185) (content!375 (++!592 lt!46189 lt!46187)))))))

(declare-fun e!94397 () List!2720)

(assert (=> d!38209 (= lt!46862 e!94397)))

(declare-fun c!31628 () Bool)

(assert (=> d!38209 (= c!31628 ((_ is Nil!2710) lt!46185))))

(assert (=> d!38209 (= (++!592 lt!46185 (++!592 lt!46189 lt!46187)) lt!46862)))

(declare-fun b!157248 () Bool)

(declare-fun res!71629 () Bool)

(assert (=> b!157248 (=> (not res!71629) (not e!94396))))

(assert (=> b!157248 (= res!71629 (= (size!2291 lt!46862) (+ (size!2291 lt!46185) (size!2291 (++!592 lt!46189 lt!46187)))))))

(declare-fun b!157247 () Bool)

(assert (=> b!157247 (= e!94397 (Cons!2710 (h!8107 lt!46185) (++!592 (t!25384 lt!46185) (++!592 lt!46189 lt!46187))))))

(declare-fun b!157246 () Bool)

(assert (=> b!157246 (= e!94397 (++!592 lt!46189 lt!46187))))

(assert (= (and d!38209 c!31628) b!157246))

(assert (= (and d!38209 (not c!31628)) b!157247))

(assert (= (and d!38209 res!71628) b!157248))

(assert (= (and b!157248 res!71629) b!157249))

(declare-fun m!144527 () Bool)

(assert (=> d!38209 m!144527))

(assert (=> d!38209 m!142735))

(assert (=> d!38209 m!142281))

(declare-fun m!144529 () Bool)

(assert (=> d!38209 m!144529))

(declare-fun m!144531 () Bool)

(assert (=> b!157248 m!144531))

(assert (=> b!157248 m!142741))

(assert (=> b!157248 m!142281))

(declare-fun m!144533 () Bool)

(assert (=> b!157248 m!144533))

(assert (=> b!157247 m!142281))

(declare-fun m!144535 () Bool)

(assert (=> b!157247 m!144535))

(assert (=> d!37765 d!38209))

(assert (=> d!37697 d!37973))

(declare-fun d!38211 () Bool)

(declare-fun lt!46863 () Int)

(assert (=> d!38211 (= lt!46863 (size!2292 (list!965 lt!46190)))))

(assert (=> d!38211 (= lt!46863 (size!2293 (c!31337 lt!46190)))))

(assert (=> d!38211 (= (size!2287 lt!46190) lt!46863)))

(declare-fun bs!14616 () Bool)

(assert (= bs!14616 d!38211))

(assert (=> bs!14616 m!142451))

(assert (=> bs!14616 m!142451))

(declare-fun m!144537 () Bool)

(assert (=> bs!14616 m!144537))

(declare-fun m!144539 () Bool)

(assert (=> bs!14616 m!144539))

(assert (=> d!37697 d!38211))

(declare-fun d!38213 () Bool)

(assert (=> d!38213 (= (dropList!74 lt!46190 0) (drop!127 (list!968 (c!31337 lt!46190)) 0))))

(declare-fun bs!14617 () Bool)

(assert (= bs!14617 d!38213))

(assert (=> bs!14617 m!143367))

(assert (=> bs!14617 m!143367))

(declare-fun m!144541 () Bool)

(assert (=> bs!14617 m!144541))

(assert (=> d!37697 d!38213))

(declare-fun bs!14618 () Bool)

(declare-fun b!157256 () Bool)

(assert (= bs!14618 (and b!157256 b!156597)))

(declare-fun lambda!4215 () Int)

(assert (=> bs!14618 (= lambda!4215 lambda!4188)))

(declare-fun bs!14619 () Bool)

(assert (= bs!14619 (and b!157256 d!38073)))

(assert (=> bs!14619 (not (= lambda!4215 lambda!4205))))

(declare-fun bs!14620 () Bool)

(assert (= bs!14620 (and b!157256 d!37663)))

(assert (=> bs!14620 (= lambda!4215 lambda!4158)))

(declare-fun bs!14621 () Bool)

(assert (= bs!14621 (and b!157256 b!156980)))

(assert (=> bs!14621 (= lambda!4215 lambda!4206)))

(declare-fun bs!14622 () Bool)

(assert (= bs!14622 (and b!157256 b!156237)))

(assert (=> bs!14622 (= lambda!4215 lambda!4169)))

(declare-fun bs!14623 () Bool)

(assert (= bs!14623 (and b!157256 d!37697)))

(assert (=> bs!14623 (not (= lambda!4215 lambda!4168))))

(declare-fun bs!14624 () Bool)

(assert (= bs!14624 (and b!157256 b!156022)))

(assert (=> bs!14624 (not (= lambda!4215 lambda!4150))))

(declare-fun bs!14625 () Bool)

(assert (= bs!14625 (and b!157256 b!156422)))

(assert (=> bs!14625 (= lambda!4215 lambda!4180)))

(declare-fun bs!14626 () Bool)

(assert (= bs!14626 (and b!157256 b!156362)))

(assert (=> bs!14626 (= lambda!4215 lambda!4179)))

(declare-fun bs!14627 () Bool)

(assert (= bs!14627 (and b!157256 d!38137)))

(assert (=> bs!14627 (= lambda!4215 lambda!4214)))

(declare-fun b!157260 () Bool)

(declare-fun e!94404 () Bool)

(assert (=> b!157260 (= e!94404 true)))

(declare-fun b!157259 () Bool)

(declare-fun e!94403 () Bool)

(assert (=> b!157259 (= e!94403 e!94404)))

(declare-fun b!157258 () Bool)

(declare-fun e!94402 () Bool)

(assert (=> b!157258 (= e!94402 e!94403)))

(assert (=> b!157256 e!94402))

(assert (= b!157259 b!157260))

(assert (= b!157258 b!157259))

(assert (= (and b!157256 ((_ is Cons!2711) rules!1920)) b!157258))

(assert (=> b!157260 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4215))))

(assert (=> b!157260 (< (dynLambda!963 order!1369 (toChars!977 (transformation!475 (h!8108 rules!1920)))) (dynLambda!962 order!1367 lambda!4215))))

(assert (=> b!157256 true))

(declare-fun b!157250 () Bool)

(declare-fun e!94400 () List!2720)

(assert (=> b!157250 (= e!94400 Nil!2710)))

(assert (=> b!157250 (= (print!100 thiss!17480 (singletonSeq!33 (h!8109 (dropList!74 lt!46190 0)))) (printTailRec!63 thiss!17480 (singletonSeq!33 (h!8109 (dropList!74 lt!46190 0))) 0 (BalanceConc!1553 Empty!772)))))

(declare-fun lt!46867 () Unit!2136)

(declare-fun Unit!2168 () Unit!2136)

(assert (=> b!157250 (= lt!46867 Unit!2168)))

(declare-fun lt!46864 () Unit!2136)

(declare-fun call!6570 () List!2720)

(declare-fun lt!46868 () List!2720)

(assert (=> b!157250 (= lt!46864 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!22 thiss!17480 rules!1920 call!6570 lt!46868))))

(assert (=> b!157250 false))

(declare-fun lt!46869 () Unit!2136)

(declare-fun Unit!2169 () Unit!2136)

(assert (=> b!157250 (= lt!46869 Unit!2169)))

(declare-fun b!157251 () Bool)

(declare-fun e!94401 () BalanceConc!1552)

(declare-fun call!6572 () BalanceConc!1552)

(assert (=> b!157251 (= e!94401 call!6572)))

(declare-fun b!157252 () Bool)

(declare-fun e!94398 () List!2720)

(assert (=> b!157252 (= e!94398 Nil!2710)))

(declare-fun bm!6564 () Bool)

(declare-fun call!6569 () BalanceConc!1552)

(assert (=> bm!6564 (= call!6569 (charsOf!130 (h!8109 (dropList!74 lt!46190 0))))))

(declare-fun b!157253 () Bool)

(declare-fun call!6573 () List!2720)

(assert (=> b!157253 (= e!94400 (++!592 call!6573 lt!46868))))

(declare-fun d!38215 () Bool)

(declare-fun c!31630 () Bool)

(assert (=> d!38215 (= c!31630 ((_ is Cons!2712) (dropList!74 lt!46190 0)))))

(assert (=> d!38215 (= (printWithSeparatorTokenWhenNeededList!54 thiss!17480 rules!1920 (dropList!74 lt!46190 0) separatorToken!170) e!94398)))

(declare-fun b!157254 () Bool)

(declare-fun e!94399 () List!2720)

(assert (=> b!157254 (= e!94399 call!6573)))

(declare-fun bm!6565 () Bool)

(assert (=> bm!6565 (= call!6572 call!6569)))

(declare-fun c!31632 () Bool)

(declare-fun bm!6566 () Bool)

(declare-fun call!6571 () List!2720)

(assert (=> bm!6566 (= call!6573 (++!592 call!6571 (ite c!31632 lt!46868 call!6570)))))

(declare-fun b!157255 () Bool)

(assert (=> b!157255 (= e!94401 (charsOf!130 separatorToken!170))))

(declare-fun bm!6567 () Bool)

(assert (=> bm!6567 (= call!6571 (list!961 (ite c!31632 call!6569 call!6572)))))

(assert (=> b!157256 (= e!94398 e!94399)))

(declare-fun lt!46866 () Unit!2136)

(assert (=> b!157256 (= lt!46866 (forallContained!58 (dropList!74 lt!46190 0) lambda!4215 (h!8109 (dropList!74 lt!46190 0))))))

(assert (=> b!157256 (= lt!46868 (printWithSeparatorTokenWhenNeededList!54 thiss!17480 rules!1920 (t!25386 (dropList!74 lt!46190 0)) separatorToken!170))))

(declare-fun lt!46865 () Option!259)

(assert (=> b!157256 (= lt!46865 (maxPrefix!115 thiss!17480 rules!1920 (++!592 (list!961 (charsOf!130 (h!8109 (dropList!74 lt!46190 0)))) lt!46868)))))

(assert (=> b!157256 (= c!31632 (and ((_ is Some!258) lt!46865) (= (_1!1528 (v!13651 lt!46865)) (h!8109 (dropList!74 lt!46190 0)))))))

(declare-fun b!157257 () Bool)

(declare-fun c!31629 () Bool)

(assert (=> b!157257 (= c!31629 (and ((_ is Some!258) lt!46865) (not (= (_1!1528 (v!13651 lt!46865)) (h!8109 (dropList!74 lt!46190 0))))))))

(assert (=> b!157257 (= e!94399 e!94400)))

(declare-fun bm!6568 () Bool)

(assert (=> bm!6568 (= call!6570 (list!961 e!94401))))

(declare-fun c!31631 () Bool)

(assert (=> bm!6568 (= c!31631 c!31629)))

(assert (= (and d!38215 c!31630) b!157256))

(assert (= (and d!38215 (not c!31630)) b!157252))

(assert (= (and b!157256 c!31632) b!157254))

(assert (= (and b!157256 (not c!31632)) b!157257))

(assert (= (and b!157257 c!31629) b!157253))

(assert (= (and b!157257 (not c!31629)) b!157250))

(assert (= (or b!157253 b!157250) bm!6565))

(assert (= (or b!157253 b!157250) bm!6568))

(assert (= (and bm!6568 c!31631) b!157255))

(assert (= (and bm!6568 (not c!31631)) b!157251))

(assert (= (or b!157254 bm!6565) bm!6564))

(assert (= (or b!157254 b!157253) bm!6567))

(assert (= (or b!157254 b!157253) bm!6566))

(declare-fun m!144543 () Bool)

(assert (=> bm!6567 m!144543))

(declare-fun m!144545 () Bool)

(assert (=> bm!6564 m!144545))

(assert (=> b!157256 m!142557))

(declare-fun m!144547 () Bool)

(assert (=> b!157256 m!144547))

(declare-fun m!144549 () Bool)

(assert (=> b!157256 m!144549))

(declare-fun m!144551 () Bool)

(assert (=> b!157256 m!144551))

(declare-fun m!144553 () Bool)

(assert (=> b!157256 m!144553))

(assert (=> b!157256 m!144545))

(declare-fun m!144555 () Bool)

(assert (=> b!157256 m!144555))

(assert (=> b!157256 m!144555))

(assert (=> b!157256 m!144551))

(assert (=> b!157256 m!144545))

(assert (=> b!157255 m!142275))

(declare-fun m!144557 () Bool)

(assert (=> b!157250 m!144557))

(assert (=> b!157250 m!144557))

(declare-fun m!144559 () Bool)

(assert (=> b!157250 m!144559))

(assert (=> b!157250 m!144557))

(declare-fun m!144561 () Bool)

(assert (=> b!157250 m!144561))

(declare-fun m!144563 () Bool)

(assert (=> b!157250 m!144563))

(declare-fun m!144565 () Bool)

(assert (=> bm!6568 m!144565))

(declare-fun m!144567 () Bool)

(assert (=> b!157253 m!144567))

(declare-fun m!144569 () Bool)

(assert (=> bm!6566 m!144569))

(assert (=> d!37697 d!38215))

(declare-fun d!38217 () Bool)

(assert (=> d!38217 (= (list!961 lt!46267) (list!964 (c!31335 lt!46267)))))

(declare-fun bs!14628 () Bool)

(assert (= bs!14628 d!38217))

(declare-fun m!144571 () Bool)

(assert (=> bs!14628 m!144571))

(assert (=> d!37697 d!38217))

(declare-fun d!38219 () Bool)

(assert (=> d!38219 (forall!479 (dropList!74 lt!46190 0) lambda!4168)))

(declare-fun lt!46872 () Unit!2136)

(declare-fun choose!1774 (List!2722 List!2722 Int) Unit!2136)

(assert (=> d!38219 (= lt!46872 (choose!1774 (list!965 lt!46190) (dropList!74 lt!46190 0) lambda!4168))))

(assert (=> d!38219 (forall!479 (list!965 lt!46190) lambda!4168)))

(assert (=> d!38219 (= (lemmaContentSubsetPreservesForall!18 (list!965 lt!46190) (dropList!74 lt!46190 0) lambda!4168) lt!46872)))

(declare-fun bs!14629 () Bool)

(assert (= bs!14629 d!38219))

(assert (=> bs!14629 m!142557))

(declare-fun m!144573 () Bool)

(assert (=> bs!14629 m!144573))

(assert (=> bs!14629 m!142451))

(assert (=> bs!14629 m!142557))

(declare-fun m!144575 () Bool)

(assert (=> bs!14629 m!144575))

(assert (=> bs!14629 m!142451))

(declare-fun m!144577 () Bool)

(assert (=> bs!14629 m!144577))

(assert (=> d!37697 d!38219))

(declare-fun d!38221 () Bool)

(declare-fun res!71634 () Bool)

(declare-fun e!94409 () Bool)

(assert (=> d!38221 (=> res!71634 e!94409)))

(assert (=> d!38221 (= res!71634 ((_ is Nil!2711) rules!1920))))

(assert (=> d!38221 (= (noDuplicateTag!131 thiss!17480 rules!1920 Nil!2714) e!94409)))

(declare-fun b!157265 () Bool)

(declare-fun e!94410 () Bool)

(assert (=> b!157265 (= e!94409 e!94410)))

(declare-fun res!71635 () Bool)

(assert (=> b!157265 (=> (not res!71635) (not e!94410))))

(declare-fun contains!431 (List!2724 String!3565) Bool)

(assert (=> b!157265 (= res!71635 (not (contains!431 Nil!2714 (tag!653 (h!8108 rules!1920)))))))

(declare-fun b!157266 () Bool)

(assert (=> b!157266 (= e!94410 (noDuplicateTag!131 thiss!17480 (t!25385 rules!1920) (Cons!2714 (tag!653 (h!8108 rules!1920)) Nil!2714)))))

(assert (= (and d!38221 (not res!71634)) b!157265))

(assert (= (and b!157265 res!71635) b!157266))

(declare-fun m!144579 () Bool)

(assert (=> b!157265 m!144579))

(declare-fun m!144581 () Bool)

(assert (=> b!157266 m!144581))

(assert (=> b!156447 d!38221))

(declare-fun bs!14630 () Bool)

(declare-fun d!38223 () Bool)

(assert (= bs!14630 (and d!38223 d!38001)))

(declare-fun lambda!4216 () Int)

(assert (=> bs!14630 (= (= (toValue!1118 (transformation!475 (h!8108 rules!1920))) (toValue!1118 (transformation!475 (rule!982 separatorToken!170)))) (= lambda!4216 lambda!4199))))

(assert (=> d!38223 true))

(assert (=> d!38223 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (h!8108 rules!1920)))) (dynLambda!967 order!1377 lambda!4216))))

(assert (=> d!38223 (= (equivClasses!148 (toChars!977 (transformation!475 (h!8108 rules!1920))) (toValue!1118 (transformation!475 (h!8108 rules!1920)))) (Forall2!102 lambda!4216))))

(declare-fun bs!14631 () Bool)

(assert (= bs!14631 d!38223))

(declare-fun m!144583 () Bool)

(assert (=> bs!14631 m!144583))

(assert (=> b!156444 d!38223))

(declare-fun bs!14632 () Bool)

(declare-fun d!38225 () Bool)

(assert (= bs!14632 (and d!38225 d!38001)))

(declare-fun lambda!4217 () Int)

(assert (=> bs!14632 (= (= (toValue!1118 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toValue!1118 (transformation!475 (rule!982 separatorToken!170)))) (= lambda!4217 lambda!4199))))

(declare-fun bs!14633 () Bool)

(assert (= bs!14633 (and d!38225 d!38223)))

(assert (=> bs!14633 (= (= (toValue!1118 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toValue!1118 (transformation!475 (h!8108 rules!1920)))) (= lambda!4217 lambda!4216))))

(assert (=> d!38225 true))

(assert (=> d!38225 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (rule!982 (h!8109 tokens!465))))) (dynLambda!967 order!1377 lambda!4217))))

(assert (=> d!38225 (= (equivClasses!148 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toValue!1118 (transformation!475 (rule!982 (h!8109 tokens!465))))) (Forall2!102 lambda!4217))))

(declare-fun bs!14634 () Bool)

(assert (= bs!14634 d!38225))

(declare-fun m!144585 () Bool)

(assert (=> bs!14634 m!144585))

(assert (=> b!156394 d!38225))

(assert (=> b!156229 d!38031))

(declare-fun b!157275 () Bool)

(declare-fun e!94419 () Bool)

(declare-fun e!94418 () Bool)

(assert (=> b!157275 (= e!94419 e!94418)))

(declare-fun res!71640 () Bool)

(assert (=> b!157275 (= res!71640 (not ((_ is Cons!2711) rules!1920)))))

(assert (=> b!157275 (=> res!71640 e!94418)))

(declare-fun b!157276 () Bool)

(declare-fun e!94417 () Bool)

(assert (=> b!157276 (= e!94419 e!94417)))

(declare-fun res!71641 () Bool)

(declare-fun rulesUseDisjointChars!16 (Rule!750 Rule!750) Bool)

(assert (=> b!157276 (= res!71641 (rulesUseDisjointChars!16 (h!8108 rules!1920) (h!8108 rules!1920)))))

(assert (=> b!157276 (=> (not res!71641) (not e!94417))))

(declare-fun b!157277 () Bool)

(declare-fun call!6576 () Bool)

(assert (=> b!157277 (= e!94417 call!6576)))

(declare-fun bm!6571 () Bool)

(assert (=> bm!6571 (= call!6576 (ruleDisjointCharsFromAllFromOtherType!24 (h!8108 rules!1920) (t!25385 rules!1920)))))

(declare-fun b!157278 () Bool)

(assert (=> b!157278 (= e!94418 call!6576)))

(declare-fun d!38227 () Bool)

(declare-fun c!31635 () Bool)

(assert (=> d!38227 (= c!31635 (and ((_ is Cons!2711) rules!1920) (not (= (isSeparator!475 (h!8108 rules!1920)) (isSeparator!475 (h!8108 rules!1920))))))))

(assert (=> d!38227 (= (ruleDisjointCharsFromAllFromOtherType!24 (h!8108 rules!1920) rules!1920) e!94419)))

(assert (= (and d!38227 c!31635) b!157276))

(assert (= (and d!38227 (not c!31635)) b!157275))

(assert (= (and b!157276 res!71641) b!157277))

(assert (= (and b!157275 (not res!71640)) b!157278))

(assert (= (or b!157277 b!157278) bm!6571))

(declare-fun m!144587 () Bool)

(assert (=> b!157276 m!144587))

(declare-fun m!144589 () Bool)

(assert (=> bm!6571 m!144589))

(assert (=> b!156389 d!38227))

(declare-fun d!38229 () Bool)

(declare-fun lt!46873 () Int)

(assert (=> d!38229 (>= lt!46873 0)))

(declare-fun e!94420 () Int)

(assert (=> d!38229 (= lt!46873 e!94420)))

(declare-fun c!31636 () Bool)

(assert (=> d!38229 (= c!31636 ((_ is Nil!2710) lt!46368))))

(assert (=> d!38229 (= (size!2291 lt!46368) lt!46873)))

(declare-fun b!157279 () Bool)

(assert (=> b!157279 (= e!94420 0)))

(declare-fun b!157280 () Bool)

(assert (=> b!157280 (= e!94420 (+ 1 (size!2291 (t!25384 lt!46368))))))

(assert (= (and d!38229 c!31636) b!157279))

(assert (= (and d!38229 (not c!31636)) b!157280))

(declare-fun m!144591 () Bool)

(assert (=> b!157280 m!144591))

(assert (=> b!156433 d!38229))

(declare-fun d!38231 () Bool)

(declare-fun lt!46874 () Int)

(assert (=> d!38231 (>= lt!46874 0)))

(declare-fun e!94421 () Int)

(assert (=> d!38231 (= lt!46874 e!94421)))

(declare-fun c!31637 () Bool)

(assert (=> d!38231 (= c!31637 ((_ is Nil!2710) (++!592 lt!46185 lt!46189)))))

(assert (=> d!38231 (= (size!2291 (++!592 lt!46185 lt!46189)) lt!46874)))

(declare-fun b!157281 () Bool)

(assert (=> b!157281 (= e!94421 0)))

(declare-fun b!157282 () Bool)

(assert (=> b!157282 (= e!94421 (+ 1 (size!2291 (t!25384 (++!592 lt!46185 lt!46189)))))))

(assert (= (and d!38231 c!31637) b!157281))

(assert (= (and d!38231 (not c!31637)) b!157282))

(assert (=> b!157282 m!143333))

(assert (=> b!156433 d!38231))

(assert (=> b!156433 d!37965))

(declare-fun d!38233 () Bool)

(assert (=> d!38233 (= (list!961 (ite c!31417 call!6512 call!6515)) (list!964 (c!31335 (ite c!31417 call!6512 call!6515))))))

(declare-fun bs!14635 () Bool)

(assert (= bs!14635 d!38233))

(declare-fun m!144593 () Bool)

(assert (=> bs!14635 m!144593))

(assert (=> bm!6510 d!38233))

(declare-fun d!38235 () Bool)

(declare-fun lt!46875 () BalanceConc!1552)

(assert (=> d!38235 (= (list!961 lt!46875) (printList!55 thiss!17480 (list!965 (singletonSeq!33 (h!8109 tokens!465)))))))

(assert (=> d!38235 (= lt!46875 (printTailRec!63 thiss!17480 (singletonSeq!33 (h!8109 tokens!465)) 0 (BalanceConc!1553 Empty!772)))))

(assert (=> d!38235 (= (print!100 thiss!17480 (singletonSeq!33 (h!8109 tokens!465))) lt!46875)))

(declare-fun bs!14636 () Bool)

(assert (= bs!14636 d!38235))

(declare-fun m!144595 () Bool)

(assert (=> bs!14636 m!144595))

(assert (=> bs!14636 m!142671))

(declare-fun m!144597 () Bool)

(assert (=> bs!14636 m!144597))

(assert (=> bs!14636 m!144597))

(declare-fun m!144599 () Bool)

(assert (=> bs!14636 m!144599))

(assert (=> bs!14636 m!142671))

(assert (=> bs!14636 m!142675))

(assert (=> b!156356 d!38235))

(declare-fun d!38237 () Bool)

(declare-fun e!94422 () Bool)

(assert (=> d!38237 e!94422))

(declare-fun res!71642 () Bool)

(assert (=> d!38237 (=> (not res!71642) (not e!94422))))

(declare-fun lt!46876 () BalanceConc!1554)

(assert (=> d!38237 (= res!71642 (= (list!965 lt!46876) (Cons!2712 (h!8109 tokens!465) Nil!2712)))))

(assert (=> d!38237 (= lt!46876 (singleton!23 (h!8109 tokens!465)))))

(assert (=> d!38237 (= (singletonSeq!33 (h!8109 tokens!465)) lt!46876)))

(declare-fun b!157283 () Bool)

(assert (=> b!157283 (= e!94422 (isBalanced!216 (c!31337 lt!46876)))))

(assert (= (and d!38237 res!71642) b!157283))

(declare-fun m!144601 () Bool)

(assert (=> d!38237 m!144601))

(declare-fun m!144603 () Bool)

(assert (=> d!38237 m!144603))

(declare-fun m!144605 () Bool)

(assert (=> b!157283 m!144605))

(assert (=> b!156356 d!38237))

(declare-fun d!38239 () Bool)

(declare-fun lt!46880 () BalanceConc!1552)

(assert (=> d!38239 (= (list!961 lt!46880) (printListTailRec!42 thiss!17480 (dropList!74 (singletonSeq!33 (h!8109 tokens!465)) 0) (list!961 (BalanceConc!1553 Empty!772))))))

(declare-fun e!94423 () BalanceConc!1552)

(assert (=> d!38239 (= lt!46880 e!94423)))

(declare-fun c!31638 () Bool)

(assert (=> d!38239 (= c!31638 (>= 0 (size!2287 (singletonSeq!33 (h!8109 tokens!465)))))))

(declare-fun e!94424 () Bool)

(assert (=> d!38239 e!94424))

(declare-fun res!71643 () Bool)

(assert (=> d!38239 (=> (not res!71643) (not e!94424))))

(assert (=> d!38239 (= res!71643 (>= 0 0))))

(assert (=> d!38239 (= (printTailRec!63 thiss!17480 (singletonSeq!33 (h!8109 tokens!465)) 0 (BalanceConc!1553 Empty!772)) lt!46880)))

(declare-fun b!157284 () Bool)

(assert (=> b!157284 (= e!94424 (<= 0 (size!2287 (singletonSeq!33 (h!8109 tokens!465)))))))

(declare-fun b!157285 () Bool)

(assert (=> b!157285 (= e!94423 (BalanceConc!1553 Empty!772))))

(declare-fun b!157286 () Bool)

(assert (=> b!157286 (= e!94423 (printTailRec!63 thiss!17480 (singletonSeq!33 (h!8109 tokens!465)) (+ 0 1) (++!594 (BalanceConc!1553 Empty!772) (charsOf!130 (apply!365 (singletonSeq!33 (h!8109 tokens!465)) 0)))))))

(declare-fun lt!46878 () List!2722)

(assert (=> b!157286 (= lt!46878 (list!965 (singletonSeq!33 (h!8109 tokens!465))))))

(declare-fun lt!46882 () Unit!2136)

(assert (=> b!157286 (= lt!46882 (lemmaDropApply!114 lt!46878 0))))

(assert (=> b!157286 (= (head!588 (drop!127 lt!46878 0)) (apply!366 lt!46878 0))))

(declare-fun lt!46879 () Unit!2136)

(assert (=> b!157286 (= lt!46879 lt!46882)))

(declare-fun lt!46877 () List!2722)

(assert (=> b!157286 (= lt!46877 (list!965 (singletonSeq!33 (h!8109 tokens!465))))))

(declare-fun lt!46881 () Unit!2136)

(assert (=> b!157286 (= lt!46881 (lemmaDropTail!106 lt!46877 0))))

(assert (=> b!157286 (= (tail!328 (drop!127 lt!46877 0)) (drop!127 lt!46877 (+ 0 1)))))

(declare-fun lt!46883 () Unit!2136)

(assert (=> b!157286 (= lt!46883 lt!46881)))

(assert (= (and d!38239 res!71643) b!157284))

(assert (= (and d!38239 c!31638) b!157285))

(assert (= (and d!38239 (not c!31638)) b!157286))

(declare-fun m!144607 () Bool)

(assert (=> d!38239 m!144607))

(declare-fun m!144609 () Bool)

(assert (=> d!38239 m!144609))

(assert (=> d!38239 m!143909))

(declare-fun m!144611 () Bool)

(assert (=> d!38239 m!144611))

(assert (=> d!38239 m!143909))

(assert (=> d!38239 m!142671))

(assert (=> d!38239 m!144609))

(assert (=> d!38239 m!142671))

(declare-fun m!144613 () Bool)

(assert (=> d!38239 m!144613))

(assert (=> b!157284 m!142671))

(assert (=> b!157284 m!144613))

(assert (=> b!157286 m!142671))

(assert (=> b!157286 m!144597))

(declare-fun m!144615 () Bool)

(assert (=> b!157286 m!144615))

(assert (=> b!157286 m!142671))

(declare-fun m!144617 () Bool)

(assert (=> b!157286 m!144617))

(declare-fun m!144619 () Bool)

(assert (=> b!157286 m!144619))

(declare-fun m!144621 () Bool)

(assert (=> b!157286 m!144621))

(declare-fun m!144623 () Bool)

(assert (=> b!157286 m!144623))

(declare-fun m!144625 () Bool)

(assert (=> b!157286 m!144625))

(declare-fun m!144627 () Bool)

(assert (=> b!157286 m!144627))

(assert (=> b!157286 m!144625))

(declare-fun m!144629 () Bool)

(assert (=> b!157286 m!144629))

(assert (=> b!157286 m!142671))

(declare-fun m!144631 () Bool)

(assert (=> b!157286 m!144631))

(declare-fun m!144633 () Bool)

(assert (=> b!157286 m!144633))

(declare-fun m!144635 () Bool)

(assert (=> b!157286 m!144635))

(assert (=> b!157286 m!144631))

(assert (=> b!157286 m!144619))

(assert (=> b!157286 m!144617))

(assert (=> b!157286 m!144635))

(declare-fun m!144637 () Bool)

(assert (=> b!157286 m!144637))

(assert (=> b!156356 d!38239))

(declare-fun b!157290 () Bool)

(declare-fun e!94425 () Unit!2136)

(declare-fun Unit!2170 () Unit!2136)

(assert (=> b!157290 (= e!94425 Unit!2170)))

(declare-fun b!157287 () Bool)

(declare-fun res!71645 () Bool)

(declare-fun e!94426 () Bool)

(assert (=> b!157287 (=> (not res!71645) (not e!94426))))

(declare-fun lt!46891 () Token!694)

(assert (=> b!157287 (= res!71645 (matchR!70 (regex!475 (get!734 (getRuleFromTag!14 thiss!17480 rules!1920 (tag!653 (rule!982 lt!46891))))) (list!961 (charsOf!130 lt!46891))))))

(declare-fun d!38241 () Bool)

(assert (=> d!38241 (isDefined!109 (maxPrefix!115 thiss!17480 rules!1920 (++!592 call!6508 lt!46343)))))

(declare-fun lt!46897 () Unit!2136)

(assert (=> d!38241 (= lt!46897 e!94425)))

(declare-fun c!31639 () Bool)

(assert (=> d!38241 (= c!31639 (isEmpty!1088 (maxPrefix!115 thiss!17480 rules!1920 (++!592 call!6508 lt!46343))))))

(declare-fun lt!46887 () Unit!2136)

(declare-fun lt!46898 () Unit!2136)

(assert (=> d!38241 (= lt!46887 lt!46898)))

(assert (=> d!38241 e!94426))

(declare-fun res!71644 () Bool)

(assert (=> d!38241 (=> (not res!71644) (not e!94426))))

(assert (=> d!38241 (= res!71644 (isDefined!113 (getRuleFromTag!14 thiss!17480 rules!1920 (tag!653 (rule!982 lt!46891)))))))

(assert (=> d!38241 (= lt!46898 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!14 thiss!17480 rules!1920 call!6508 lt!46891))))

(declare-fun lt!46892 () Unit!2136)

(declare-fun lt!46885 () Unit!2136)

(assert (=> d!38241 (= lt!46892 lt!46885)))

(declare-fun lt!46893 () List!2720)

(assert (=> d!38241 (isPrefix!214 lt!46893 (++!592 call!6508 lt!46343))))

(assert (=> d!38241 (= lt!46885 (lemmaPrefixStaysPrefixWhenAddingToSuffix!14 lt!46893 call!6508 lt!46343))))

(assert (=> d!38241 (= lt!46893 (list!961 (charsOf!130 lt!46891)))))

(declare-fun lt!46889 () Unit!2136)

(declare-fun lt!46899 () Unit!2136)

(assert (=> d!38241 (= lt!46889 lt!46899)))

(declare-fun lt!46894 () List!2720)

(declare-fun lt!46888 () List!2720)

(assert (=> d!38241 (isPrefix!214 lt!46894 (++!592 lt!46894 lt!46888))))

(assert (=> d!38241 (= lt!46899 (lemmaConcatTwoListThenFirstIsPrefix!118 lt!46894 lt!46888))))

(assert (=> d!38241 (= lt!46888 (_2!1528 (get!730 (maxPrefix!115 thiss!17480 rules!1920 call!6508))))))

(assert (=> d!38241 (= lt!46894 (list!961 (charsOf!130 lt!46891)))))

(assert (=> d!38241 (= lt!46891 (head!588 (list!965 (_1!1529 (lex!175 thiss!17480 rules!1920 (seqFromList!328 call!6508))))))))

(assert (=> d!38241 (not (isEmpty!1080 rules!1920))))

(assert (=> d!38241 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!22 thiss!17480 rules!1920 call!6508 lt!46343) lt!46897)))

(declare-fun b!157288 () Bool)

(assert (=> b!157288 (= e!94426 (= (rule!982 lt!46891) (get!734 (getRuleFromTag!14 thiss!17480 rules!1920 (tag!653 (rule!982 lt!46891))))))))

(declare-fun b!157289 () Bool)

(declare-fun Unit!2171 () Unit!2136)

(assert (=> b!157289 (= e!94425 Unit!2171)))

(declare-fun lt!46890 () List!2720)

(assert (=> b!157289 (= lt!46890 (++!592 call!6508 lt!46343))))

(declare-fun lt!46884 () Unit!2136)

(assert (=> b!157289 (= lt!46884 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!14 thiss!17480 (rule!982 lt!46891) rules!1920 lt!46890))))

(assert (=> b!157289 (isEmpty!1088 (maxPrefixOneRule!58 thiss!17480 (rule!982 lt!46891) lt!46890))))

(declare-fun lt!46896 () Unit!2136)

(assert (=> b!157289 (= lt!46896 lt!46884)))

(declare-fun lt!46886 () List!2720)

(assert (=> b!157289 (= lt!46886 (list!961 (charsOf!130 lt!46891)))))

(declare-fun lt!46900 () Unit!2136)

(assert (=> b!157289 (= lt!46900 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!14 thiss!17480 (rule!982 lt!46891) lt!46886 (++!592 call!6508 lt!46343)))))

(assert (=> b!157289 (not (matchR!70 (regex!475 (rule!982 lt!46891)) lt!46886))))

(declare-fun lt!46895 () Unit!2136)

(assert (=> b!157289 (= lt!46895 lt!46900)))

(assert (=> b!157289 false))

(assert (= (and d!38241 res!71644) b!157287))

(assert (= (and b!157287 res!71645) b!157288))

(assert (= (and d!38241 c!31639) b!157289))

(assert (= (and d!38241 (not c!31639)) b!157290))

(declare-fun m!144639 () Bool)

(assert (=> b!157287 m!144639))

(declare-fun m!144641 () Bool)

(assert (=> b!157287 m!144641))

(declare-fun m!144643 () Bool)

(assert (=> b!157287 m!144643))

(declare-fun m!144645 () Bool)

(assert (=> b!157287 m!144645))

(assert (=> b!157287 m!144643))

(declare-fun m!144647 () Bool)

(assert (=> b!157287 m!144647))

(assert (=> b!157287 m!144647))

(assert (=> b!157287 m!144639))

(assert (=> d!38241 m!142253))

(declare-fun m!144649 () Bool)

(assert (=> d!38241 m!144649))

(declare-fun m!144651 () Bool)

(assert (=> d!38241 m!144651))

(declare-fun m!144653 () Bool)

(assert (=> d!38241 m!144653))

(declare-fun m!144655 () Bool)

(assert (=> d!38241 m!144655))

(declare-fun m!144657 () Bool)

(assert (=> d!38241 m!144657))

(assert (=> d!38241 m!144655))

(assert (=> d!38241 m!144643))

(declare-fun m!144659 () Bool)

(assert (=> d!38241 m!144659))

(assert (=> d!38241 m!144651))

(declare-fun m!144661 () Bool)

(assert (=> d!38241 m!144661))

(declare-fun m!144663 () Bool)

(assert (=> d!38241 m!144663))

(declare-fun m!144665 () Bool)

(assert (=> d!38241 m!144665))

(assert (=> d!38241 m!144647))

(assert (=> d!38241 m!144639))

(assert (=> d!38241 m!144659))

(assert (=> d!38241 m!144659))

(declare-fun m!144667 () Bool)

(assert (=> d!38241 m!144667))

(assert (=> d!38241 m!144643))

(declare-fun m!144669 () Bool)

(assert (=> d!38241 m!144669))

(declare-fun m!144671 () Bool)

(assert (=> d!38241 m!144671))

(declare-fun m!144673 () Bool)

(assert (=> d!38241 m!144673))

(assert (=> d!38241 m!144663))

(declare-fun m!144675 () Bool)

(assert (=> d!38241 m!144675))

(assert (=> d!38241 m!144651))

(declare-fun m!144677 () Bool)

(assert (=> d!38241 m!144677))

(assert (=> d!38241 m!144647))

(assert (=> d!38241 m!144661))

(declare-fun m!144679 () Bool)

(assert (=> d!38241 m!144679))

(assert (=> d!38241 m!144649))

(declare-fun m!144681 () Bool)

(assert (=> d!38241 m!144681))

(assert (=> b!157288 m!144643))

(assert (=> b!157288 m!144643))

(assert (=> b!157288 m!144645))

(declare-fun m!144683 () Bool)

(assert (=> b!157289 m!144683))

(declare-fun m!144685 () Bool)

(assert (=> b!157289 m!144685))

(declare-fun m!144687 () Bool)

(assert (=> b!157289 m!144687))

(assert (=> b!157289 m!144683))

(declare-fun m!144689 () Bool)

(assert (=> b!157289 m!144689))

(assert (=> b!157289 m!144647))

(assert (=> b!157289 m!144659))

(declare-fun m!144691 () Bool)

(assert (=> b!157289 m!144691))

(assert (=> b!157289 m!144647))

(assert (=> b!157289 m!144639))

(assert (=> b!157289 m!144659))

(assert (=> b!156356 d!38241))

(assert (=> d!37741 d!37931))

(declare-fun d!38243 () Bool)

(assert (=> d!38243 (= (list!965 (_1!1529 (lex!175 thiss!17480 rules!1920 (print!100 thiss!17480 (singletonSeq!33 separatorToken!170))))) (list!968 (c!31337 (_1!1529 (lex!175 thiss!17480 rules!1920 (print!100 thiss!17480 (singletonSeq!33 separatorToken!170)))))))))

(declare-fun bs!14637 () Bool)

(assert (= bs!14637 d!38243))

(declare-fun m!144693 () Bool)

(assert (=> bs!14637 m!144693))

(assert (=> d!37741 d!38243))

(assert (=> d!37741 d!37861))

(declare-fun d!38245 () Bool)

(assert (=> d!38245 (= (list!965 (singletonSeq!33 separatorToken!170)) (list!968 (c!31337 (singletonSeq!33 separatorToken!170))))))

(declare-fun bs!14638 () Bool)

(assert (= bs!14638 d!38245))

(declare-fun m!144695 () Bool)

(assert (=> bs!14638 m!144695))

(assert (=> d!37741 d!38245))

(assert (=> d!37741 d!37913))

(assert (=> d!37741 d!37729))

(declare-fun d!38247 () Bool)

(declare-fun lt!46901 () Int)

(assert (=> d!38247 (= lt!46901 (size!2292 (list!965 (_1!1529 lt!46349))))))

(assert (=> d!38247 (= lt!46901 (size!2293 (c!31337 (_1!1529 lt!46349))))))

(assert (=> d!38247 (= (size!2287 (_1!1529 lt!46349)) lt!46901)))

(declare-fun bs!14639 () Bool)

(assert (= bs!14639 d!38247))

(assert (=> bs!14639 m!144509))

(assert (=> bs!14639 m!144509))

(declare-fun m!144697 () Bool)

(assert (=> bs!14639 m!144697))

(declare-fun m!144699 () Bool)

(assert (=> bs!14639 m!144699))

(assert (=> d!37741 d!38247))

(declare-fun d!38249 () Bool)

(assert (=> d!38249 (= (inv!17 (value!17853 separatorToken!170)) (= (charsToBigInt!1 (text!3927 (value!17853 separatorToken!170))) (value!17845 (value!17853 separatorToken!170))))))

(declare-fun bs!14640 () Bool)

(assert (= bs!14640 d!38249))

(declare-fun m!144701 () Bool)

(assert (=> bs!14640 m!144701))

(assert (=> b!156442 d!38249))

(declare-fun d!38251 () Bool)

(declare-fun c!31640 () Bool)

(assert (=> d!38251 (= c!31640 ((_ is Node!772) (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170)))))))

(declare-fun e!94427 () Bool)

(assert (=> d!38251 (= (inv!3517 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170)))) e!94427)))

(declare-fun b!157291 () Bool)

(assert (=> b!157291 (= e!94427 (inv!3519 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170)))))))

(declare-fun b!157292 () Bool)

(declare-fun e!94428 () Bool)

(assert (=> b!157292 (= e!94427 e!94428)))

(declare-fun res!71646 () Bool)

(assert (=> b!157292 (= res!71646 (not ((_ is Leaf!1349) (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170))))))))

(assert (=> b!157292 (=> res!71646 e!94428)))

(declare-fun b!157293 () Bool)

(assert (=> b!157293 (= e!94428 (inv!3520 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170)))))))

(assert (= (and d!38251 c!31640) b!157291))

(assert (= (and d!38251 (not c!31640)) b!157292))

(assert (= (and b!157292 (not res!71646)) b!157293))

(declare-fun m!144703 () Bool)

(assert (=> b!157291 m!144703))

(declare-fun m!144705 () Bool)

(assert (=> b!157293 m!144705))

(assert (=> b!156369 d!38251))

(assert (=> b!156231 d!38211))

(declare-fun b!157295 () Bool)

(declare-fun e!94429 () List!2720)

(declare-fun e!94430 () List!2720)

(assert (=> b!157295 (= e!94429 e!94430)))

(declare-fun c!31642 () Bool)

(assert (=> b!157295 (= c!31642 ((_ is Leaf!1349) (c!31335 (charsOf!130 (h!8109 tokens!465)))))))

(declare-fun b!157294 () Bool)

(assert (=> b!157294 (= e!94429 Nil!2710)))

(declare-fun b!157297 () Bool)

(assert (=> b!157297 (= e!94430 (++!592 (list!964 (left!2044 (c!31335 (charsOf!130 (h!8109 tokens!465))))) (list!964 (right!2374 (c!31335 (charsOf!130 (h!8109 tokens!465)))))))))

(declare-fun d!38253 () Bool)

(declare-fun c!31641 () Bool)

(assert (=> d!38253 (= c!31641 ((_ is Empty!772) (c!31335 (charsOf!130 (h!8109 tokens!465)))))))

(assert (=> d!38253 (= (list!964 (c!31335 (charsOf!130 (h!8109 tokens!465)))) e!94429)))

(declare-fun b!157296 () Bool)

(assert (=> b!157296 (= e!94430 (list!966 (xs!3367 (c!31335 (charsOf!130 (h!8109 tokens!465))))))))

(assert (= (and d!38253 c!31641) b!157294))

(assert (= (and d!38253 (not c!31641)) b!157295))

(assert (= (and b!157295 c!31642) b!157296))

(assert (= (and b!157295 (not c!31642)) b!157297))

(declare-fun m!144707 () Bool)

(assert (=> b!157297 m!144707))

(declare-fun m!144709 () Bool)

(assert (=> b!157297 m!144709))

(assert (=> b!157297 m!144707))

(assert (=> b!157297 m!144709))

(declare-fun m!144711 () Bool)

(assert (=> b!157297 m!144711))

(declare-fun m!144713 () Bool)

(assert (=> b!157296 m!144713))

(assert (=> d!37753 d!38253))

(declare-fun b!157301 () Bool)

(declare-fun lt!46902 () List!2720)

(declare-fun e!94431 () Bool)

(assert (=> b!157301 (= e!94431 (or (not (= (ite c!31417 lt!46358 call!6513) Nil!2710)) (= lt!46902 call!6514)))))

(declare-fun d!38255 () Bool)

(assert (=> d!38255 e!94431))

(declare-fun res!71647 () Bool)

(assert (=> d!38255 (=> (not res!71647) (not e!94431))))

(assert (=> d!38255 (= res!71647 (= (content!375 lt!46902) ((_ map or) (content!375 call!6514) (content!375 (ite c!31417 lt!46358 call!6513)))))))

(declare-fun e!94432 () List!2720)

(assert (=> d!38255 (= lt!46902 e!94432)))

(declare-fun c!31643 () Bool)

(assert (=> d!38255 (= c!31643 ((_ is Nil!2710) call!6514))))

(assert (=> d!38255 (= (++!592 call!6514 (ite c!31417 lt!46358 call!6513)) lt!46902)))

(declare-fun b!157300 () Bool)

(declare-fun res!71648 () Bool)

(assert (=> b!157300 (=> (not res!71648) (not e!94431))))

(assert (=> b!157300 (= res!71648 (= (size!2291 lt!46902) (+ (size!2291 call!6514) (size!2291 (ite c!31417 lt!46358 call!6513)))))))

(declare-fun b!157299 () Bool)

(assert (=> b!157299 (= e!94432 (Cons!2710 (h!8107 call!6514) (++!592 (t!25384 call!6514) (ite c!31417 lt!46358 call!6513))))))

(declare-fun b!157298 () Bool)

(assert (=> b!157298 (= e!94432 (ite c!31417 lt!46358 call!6513))))

(assert (= (and d!38255 c!31643) b!157298))

(assert (= (and d!38255 (not c!31643)) b!157299))

(assert (= (and d!38255 res!71647) b!157300))

(assert (= (and b!157300 res!71648) b!157301))

(declare-fun m!144715 () Bool)

(assert (=> d!38255 m!144715))

(declare-fun m!144717 () Bool)

(assert (=> d!38255 m!144717))

(declare-fun m!144719 () Bool)

(assert (=> d!38255 m!144719))

(declare-fun m!144721 () Bool)

(assert (=> b!157300 m!144721))

(declare-fun m!144723 () Bool)

(assert (=> b!157300 m!144723))

(declare-fun m!144725 () Bool)

(assert (=> b!157300 m!144725))

(declare-fun m!144727 () Bool)

(assert (=> b!157299 m!144727))

(assert (=> bm!6509 d!38255))

(declare-fun d!38257 () Bool)

(declare-fun c!31644 () Bool)

(assert (=> d!38257 (= c!31644 ((_ is Nil!2710) lt!46366))))

(declare-fun e!94437 () (InoxSet C!2320))

(assert (=> d!38257 (= (content!375 lt!46366) e!94437)))

(declare-fun b!157306 () Bool)

(assert (=> b!157306 (= e!94437 ((as const (Array C!2320 Bool)) false))))

(declare-fun b!157307 () Bool)

(assert (=> b!157307 (= e!94437 ((_ map or) (store ((as const (Array C!2320 Bool)) false) (h!8107 lt!46366) true) (content!375 (t!25384 lt!46366))))))

(assert (= (and d!38257 c!31644) b!157306))

(assert (= (and d!38257 (not c!31644)) b!157307))

(declare-fun m!144729 () Bool)

(assert (=> b!157307 m!144729))

(declare-fun m!144731 () Bool)

(assert (=> b!157307 m!144731))

(assert (=> d!37757 d!38257))

(assert (=> d!37757 d!37821))

(declare-fun d!38259 () Bool)

(declare-fun c!31645 () Bool)

(assert (=> d!38259 (= c!31645 ((_ is Nil!2710) lt!46183))))

(declare-fun e!94438 () (InoxSet C!2320))

(assert (=> d!38259 (= (content!375 lt!46183) e!94438)))

(declare-fun b!157308 () Bool)

(assert (=> b!157308 (= e!94438 ((as const (Array C!2320 Bool)) false))))

(declare-fun b!157309 () Bool)

(assert (=> b!157309 (= e!94438 ((_ map or) (store ((as const (Array C!2320 Bool)) false) (h!8107 lt!46183) true) (content!375 (t!25384 lt!46183))))))

(assert (= (and d!38259 c!31645) b!157308))

(assert (= (and d!38259 (not c!31645)) b!157309))

(declare-fun m!144733 () Bool)

(assert (=> b!157309 m!144733))

(declare-fun m!144735 () Bool)

(assert (=> b!157309 m!144735))

(assert (=> d!37757 d!38259))

(declare-fun d!38261 () Bool)

(assert (=> d!38261 (= (list!961 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465)))) (list!964 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465))))))))

(declare-fun bs!14641 () Bool)

(assert (= bs!14641 d!38261))

(declare-fun m!144737 () Bool)

(assert (=> bs!14641 m!144737))

(assert (=> b!156079 d!38261))

(declare-fun d!38263 () Bool)

(assert (=> d!38263 (= (inv!16 (value!17853 separatorToken!170)) (= (charsToInt!0 (text!3926 (value!17853 separatorToken!170))) (value!17844 (value!17853 separatorToken!170))))))

(declare-fun bs!14642 () Bool)

(assert (= bs!14642 d!38263))

(declare-fun m!144739 () Bool)

(assert (=> bs!14642 m!144739))

(assert (=> b!156440 d!38263))

(declare-fun lt!46905 () BalanceConc!1552)

(declare-fun d!38265 () Bool)

(assert (=> d!38265 (= (list!961 lt!46905) (originalCharacters!518 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472))))))

(assert (=> d!38265 (= lt!46905 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472))))) (value!17853 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472)))))))

(assert (=> d!38265 (= (charsOf!130 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472))) lt!46905)))

(declare-fun b_lambda!3121 () Bool)

(assert (=> (not b_lambda!3121) (not d!38265)))

(declare-fun t!25521 () Bool)

(declare-fun tb!5561 () Bool)

(assert (=> (and b!156028 (= (toChars!977 (transformation!475 (h!8108 rules!1920))) (toChars!977 (transformation!475 (rule!982 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472)))))) t!25521) tb!5561))

(declare-fun e!94439 () Bool)

(declare-fun tp!80518 () Bool)

(declare-fun b!157310 () Bool)

(assert (=> b!157310 (= e!94439 (and (inv!3517 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472))))) (value!17853 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472)))))) tp!80518))))

(declare-fun result!8104 () Bool)

(assert (=> tb!5561 (= result!8104 (and (inv!3518 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472))))) (value!17853 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472))))) e!94439))))

(assert (= tb!5561 b!157310))

(declare-fun m!144741 () Bool)

(assert (=> b!157310 m!144741))

(declare-fun m!144743 () Bool)

(assert (=> tb!5561 m!144743))

(assert (=> d!38265 t!25521))

(declare-fun b_and!9521 () Bool)

(assert (= b_and!9487 (and (=> t!25521 result!8104) b_and!9521)))

(declare-fun t!25523 () Bool)

(declare-fun tb!5563 () Bool)

(assert (=> (and b!156030 (= (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toChars!977 (transformation!475 (rule!982 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472)))))) t!25523) tb!5563))

(declare-fun result!8106 () Bool)

(assert (= result!8106 result!8104))

(assert (=> d!38265 t!25523))

(declare-fun b_and!9523 () Bool)

(assert (= b_and!9485 (and (=> t!25523 result!8106) b_and!9523)))

(declare-fun t!25525 () Bool)

(declare-fun tb!5565 () Bool)

(assert (=> (and b!156461 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))) (toChars!977 (transformation!475 (rule!982 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472)))))) t!25525) tb!5565))

(declare-fun result!8108 () Bool)

(assert (= result!8108 result!8104))

(assert (=> d!38265 t!25525))

(declare-fun b_and!9525 () Bool)

(assert (= b_and!9483 (and (=> t!25525 result!8108) b_and!9525)))

(declare-fun t!25527 () Bool)

(declare-fun tb!5567 () Bool)

(assert (=> (and b!156496 (= (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920)))) (toChars!977 (transformation!475 (rule!982 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472)))))) t!25527) tb!5567))

(declare-fun result!8110 () Bool)

(assert (= result!8110 result!8104))

(assert (=> d!38265 t!25527))

(declare-fun b_and!9527 () Bool)

(assert (= b_and!9481 (and (=> t!25527 result!8110) b_and!9527)))

(declare-fun tb!5569 () Bool)

(declare-fun t!25529 () Bool)

(assert (=> (and b!156029 (= (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toChars!977 (transformation!475 (rule!982 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472)))))) t!25529) tb!5569))

(declare-fun result!8112 () Bool)

(assert (= result!8112 result!8104))

(assert (=> d!38265 t!25529))

(declare-fun b_and!9529 () Bool)

(assert (= b_and!9489 (and (=> t!25529 result!8112) b_and!9529)))

(declare-fun m!144745 () Bool)

(assert (=> d!38265 m!144745))

(declare-fun m!144747 () Bool)

(assert (=> d!38265 m!144747))

(assert (=> bm!6470 d!38265))

(declare-fun b!157314 () Bool)

(declare-fun e!94440 () Bool)

(declare-fun lt!46906 () List!2720)

(assert (=> b!157314 (= e!94440 (or (not (= lt!46183 Nil!2710)) (= lt!46906 (t!25384 lt!46185))))))

(declare-fun d!38267 () Bool)

(assert (=> d!38267 e!94440))

(declare-fun res!71653 () Bool)

(assert (=> d!38267 (=> (not res!71653) (not e!94440))))

(assert (=> d!38267 (= res!71653 (= (content!375 lt!46906) ((_ map or) (content!375 (t!25384 lt!46185)) (content!375 lt!46183))))))

(declare-fun e!94441 () List!2720)

(assert (=> d!38267 (= lt!46906 e!94441)))

(declare-fun c!31646 () Bool)

(assert (=> d!38267 (= c!31646 ((_ is Nil!2710) (t!25384 lt!46185)))))

(assert (=> d!38267 (= (++!592 (t!25384 lt!46185) lt!46183) lt!46906)))

(declare-fun b!157313 () Bool)

(declare-fun res!71654 () Bool)

(assert (=> b!157313 (=> (not res!71654) (not e!94440))))

(assert (=> b!157313 (= res!71654 (= (size!2291 lt!46906) (+ (size!2291 (t!25384 lt!46185)) (size!2291 lt!46183))))))

(declare-fun b!157312 () Bool)

(assert (=> b!157312 (= e!94441 (Cons!2710 (h!8107 (t!25384 lt!46185)) (++!592 (t!25384 (t!25384 lt!46185)) lt!46183)))))

(declare-fun b!157311 () Bool)

(assert (=> b!157311 (= e!94441 lt!46183)))

(assert (= (and d!38267 c!31646) b!157311))

(assert (= (and d!38267 (not c!31646)) b!157312))

(assert (= (and d!38267 res!71653) b!157313))

(assert (= (and b!157313 res!71654) b!157314))

(declare-fun m!144749 () Bool)

(assert (=> d!38267 m!144749))

(assert (=> d!38267 m!142931))

(assert (=> d!38267 m!142791))

(declare-fun m!144751 () Bool)

(assert (=> b!157313 m!144751))

(assert (=> b!157313 m!142903))

(assert (=> b!157313 m!142795))

(declare-fun m!144753 () Bool)

(assert (=> b!157312 m!144753))

(assert (=> b!156428 d!38267))

(declare-fun lt!46907 () List!2720)

(declare-fun b!157318 () Bool)

(declare-fun e!94442 () Bool)

(assert (=> b!157318 (= e!94442 (or (not (= lt!46189 Nil!2710)) (= lt!46907 (t!25384 lt!46185))))))

(declare-fun d!38269 () Bool)

(assert (=> d!38269 e!94442))

(declare-fun res!71655 () Bool)

(assert (=> d!38269 (=> (not res!71655) (not e!94442))))

(assert (=> d!38269 (= res!71655 (= (content!375 lt!46907) ((_ map or) (content!375 (t!25384 lt!46185)) (content!375 lt!46189))))))

(declare-fun e!94443 () List!2720)

(assert (=> d!38269 (= lt!46907 e!94443)))

(declare-fun c!31647 () Bool)

(assert (=> d!38269 (= c!31647 ((_ is Nil!2710) (t!25384 lt!46185)))))

(assert (=> d!38269 (= (++!592 (t!25384 lt!46185) lt!46189) lt!46907)))

(declare-fun b!157317 () Bool)

(declare-fun res!71656 () Bool)

(assert (=> b!157317 (=> (not res!71656) (not e!94442))))

(assert (=> b!157317 (= res!71656 (= (size!2291 lt!46907) (+ (size!2291 (t!25384 lt!46185)) (size!2291 lt!46189))))))

(declare-fun b!157316 () Bool)

(assert (=> b!157316 (= e!94443 (Cons!2710 (h!8107 (t!25384 lt!46185)) (++!592 (t!25384 (t!25384 lt!46185)) lt!46189)))))

(declare-fun b!157315 () Bool)

(assert (=> b!157315 (= e!94443 lt!46189)))

(assert (= (and d!38269 c!31647) b!157315))

(assert (= (and d!38269 (not c!31647)) b!157316))

(assert (= (and d!38269 res!71655) b!157317))

(assert (= (and b!157317 res!71656) b!157318))

(declare-fun m!144755 () Bool)

(assert (=> d!38269 m!144755))

(assert (=> d!38269 m!142931))

(assert (=> d!38269 m!142737))

(declare-fun m!144757 () Bool)

(assert (=> b!157317 m!144757))

(assert (=> b!157317 m!142903))

(assert (=> b!157317 m!142743))

(declare-fun m!144759 () Bool)

(assert (=> b!157316 m!144759))

(assert (=> b!156413 d!38269))

(declare-fun d!38271 () Bool)

(assert (=> d!38271 (= (isEmpty!1083 (originalCharacters!518 (h!8109 tokens!465))) ((_ is Nil!2710) (originalCharacters!518 (h!8109 tokens!465))))))

(assert (=> d!37657 d!38271))

(declare-fun d!38273 () Bool)

(declare-fun c!31649 () Bool)

(assert (=> d!38273 (= c!31649 ((_ is IntegerValue!1491) (value!17853 (h!8109 (t!25386 tokens!465)))))))

(declare-fun e!94446 () Bool)

(assert (=> d!38273 (= (inv!21 (value!17853 (h!8109 (t!25386 tokens!465)))) e!94446)))

(declare-fun b!157319 () Bool)

(declare-fun res!71657 () Bool)

(declare-fun e!94444 () Bool)

(assert (=> b!157319 (=> res!71657 e!94444)))

(assert (=> b!157319 (= res!71657 (not ((_ is IntegerValue!1493) (value!17853 (h!8109 (t!25386 tokens!465))))))))

(declare-fun e!94445 () Bool)

(assert (=> b!157319 (= e!94445 e!94444)))

(declare-fun b!157320 () Bool)

(assert (=> b!157320 (= e!94446 (inv!16 (value!17853 (h!8109 (t!25386 tokens!465)))))))

(declare-fun b!157321 () Bool)

(assert (=> b!157321 (= e!94446 e!94445)))

(declare-fun c!31648 () Bool)

(assert (=> b!157321 (= c!31648 ((_ is IntegerValue!1492) (value!17853 (h!8109 (t!25386 tokens!465)))))))

(declare-fun b!157322 () Bool)

(assert (=> b!157322 (= e!94445 (inv!17 (value!17853 (h!8109 (t!25386 tokens!465)))))))

(declare-fun b!157323 () Bool)

(assert (=> b!157323 (= e!94444 (inv!15 (value!17853 (h!8109 (t!25386 tokens!465)))))))

(assert (= (and d!38273 c!31649) b!157320))

(assert (= (and d!38273 (not c!31649)) b!157321))

(assert (= (and b!157321 c!31648) b!157322))

(assert (= (and b!157321 (not c!31648)) b!157319))

(assert (= (and b!157319 (not res!71657)) b!157323))

(declare-fun m!144761 () Bool)

(assert (=> b!157320 m!144761))

(declare-fun m!144763 () Bool)

(assert (=> b!157322 m!144763))

(declare-fun m!144765 () Bool)

(assert (=> b!157323 m!144765))

(assert (=> b!156459 d!38273))

(declare-fun lt!46908 () List!2720)

(declare-fun b!157327 () Bool)

(declare-fun e!94447 () Bool)

(assert (=> b!157327 (= e!94447 (or (not (= lt!46187 Nil!2710)) (= lt!46908 (t!25384 lt!46189))))))

(declare-fun d!38275 () Bool)

(assert (=> d!38275 e!94447))

(declare-fun res!71658 () Bool)

(assert (=> d!38275 (=> (not res!71658) (not e!94447))))

(assert (=> d!38275 (= res!71658 (= (content!375 lt!46908) ((_ map or) (content!375 (t!25384 lt!46189)) (content!375 lt!46187))))))

(declare-fun e!94448 () List!2720)

(assert (=> d!38275 (= lt!46908 e!94448)))

(declare-fun c!31650 () Bool)

(assert (=> d!38275 (= c!31650 ((_ is Nil!2710) (t!25384 lt!46189)))))

(assert (=> d!38275 (= (++!592 (t!25384 lt!46189) lt!46187) lt!46908)))

(declare-fun b!157326 () Bool)

(declare-fun res!71659 () Bool)

(assert (=> b!157326 (=> (not res!71659) (not e!94447))))

(assert (=> b!157326 (= res!71659 (= (size!2291 lt!46908) (+ (size!2291 (t!25384 lt!46189)) (size!2291 lt!46187))))))

(declare-fun b!157325 () Bool)

(assert (=> b!157325 (= e!94448 (Cons!2710 (h!8107 (t!25384 lt!46189)) (++!592 (t!25384 (t!25384 lt!46189)) lt!46187)))))

(declare-fun b!157324 () Bool)

(assert (=> b!157324 (= e!94448 lt!46187)))

(assert (= (and d!38275 c!31650) b!157324))

(assert (= (and d!38275 (not c!31650)) b!157325))

(assert (= (and d!38275 res!71658) b!157326))

(assert (= (and b!157326 res!71659) b!157327))

(declare-fun m!144767 () Bool)

(assert (=> d!38275 m!144767))

(assert (=> d!38275 m!142935))

(assert (=> d!38275 m!142805))

(declare-fun m!144769 () Bool)

(assert (=> b!157326 m!144769))

(assert (=> b!157326 m!142909))

(assert (=> b!157326 m!142811))

(declare-fun m!144771 () Bool)

(assert (=> b!157325 m!144771))

(assert (=> b!156436 d!38275))

(declare-fun b!157333 () Bool)

(declare-fun lt!46910 () List!2720)

(declare-fun e!94451 () Bool)

(assert (=> b!157333 (= e!94451 (or (not (= lt!46343 Nil!2710)) (= lt!46910 call!6511)))))

(declare-fun d!38277 () Bool)

(assert (=> d!38277 e!94451))

(declare-fun res!71662 () Bool)

(assert (=> d!38277 (=> (not res!71662) (not e!94451))))

(assert (=> d!38277 (= res!71662 (= (content!375 lt!46910) ((_ map or) (content!375 call!6511) (content!375 lt!46343))))))

(declare-fun e!94452 () List!2720)

(assert (=> d!38277 (= lt!46910 e!94452)))

(declare-fun c!31651 () Bool)

(assert (=> d!38277 (= c!31651 ((_ is Nil!2710) call!6511))))

(assert (=> d!38277 (= (++!592 call!6511 lt!46343) lt!46910)))

(declare-fun b!157332 () Bool)

(declare-fun res!71663 () Bool)

(assert (=> b!157332 (=> (not res!71663) (not e!94451))))

(assert (=> b!157332 (= res!71663 (= (size!2291 lt!46910) (+ (size!2291 call!6511) (size!2291 lt!46343))))))

(declare-fun b!157331 () Bool)

(assert (=> b!157331 (= e!94452 (Cons!2710 (h!8107 call!6511) (++!592 (t!25384 call!6511) lt!46343)))))

(declare-fun b!157330 () Bool)

(assert (=> b!157330 (= e!94452 lt!46343)))

(assert (= (and d!38277 c!31651) b!157330))

(assert (= (and d!38277 (not c!31651)) b!157331))

(assert (= (and d!38277 res!71662) b!157332))

(assert (= (and b!157332 res!71663) b!157333))

(declare-fun m!144773 () Bool)

(assert (=> d!38277 m!144773))

(declare-fun m!144775 () Bool)

(assert (=> d!38277 m!144775))

(assert (=> d!38277 m!143445))

(declare-fun m!144777 () Bool)

(assert (=> b!157332 m!144777))

(declare-fun m!144779 () Bool)

(assert (=> b!157332 m!144779))

(assert (=> b!157332 m!143451))

(declare-fun m!144781 () Bool)

(assert (=> b!157331 m!144781))

(assert (=> b!156359 d!38277))

(declare-fun b!157338 () Bool)

(declare-fun e!94456 () Bool)

(declare-fun tp!80520 () Bool)

(declare-fun tp!80521 () Bool)

(assert (=> b!157338 (= e!94456 (and tp!80520 tp!80521))))

(assert (=> b!156499 (= tp!80511 e!94456)))

(declare-fun b!157337 () Bool)

(assert (=> b!157337 (= e!94456 tp_is_empty!1627)))

(declare-fun b!157340 () Bool)

(declare-fun tp!80522 () Bool)

(declare-fun tp!80519 () Bool)

(assert (=> b!157340 (= e!94456 (and tp!80522 tp!80519))))

(declare-fun b!157339 () Bool)

(declare-fun tp!80523 () Bool)

(assert (=> b!157339 (= e!94456 tp!80523)))

(assert (= (and b!156499 ((_ is ElementMatch!699) (reg!1028 (regex!475 (h!8108 rules!1920))))) b!157337))

(assert (= (and b!156499 ((_ is Concat!1197) (reg!1028 (regex!475 (h!8108 rules!1920))))) b!157338))

(assert (= (and b!156499 ((_ is Star!699) (reg!1028 (regex!475 (h!8108 rules!1920))))) b!157339))

(assert (= (and b!156499 ((_ is Union!699) (reg!1028 (regex!475 (h!8108 rules!1920))))) b!157340))

(declare-fun b!157342 () Bool)

(declare-fun e!94457 () Bool)

(declare-fun tp!80525 () Bool)

(declare-fun tp!80526 () Bool)

(assert (=> b!157342 (= e!94457 (and tp!80525 tp!80526))))

(assert (=> b!156500 (= tp!80510 e!94457)))

(declare-fun b!157341 () Bool)

(assert (=> b!157341 (= e!94457 tp_is_empty!1627)))

(declare-fun b!157344 () Bool)

(declare-fun tp!80527 () Bool)

(declare-fun tp!80524 () Bool)

(assert (=> b!157344 (= e!94457 (and tp!80527 tp!80524))))

(declare-fun b!157343 () Bool)

(declare-fun tp!80528 () Bool)

(assert (=> b!157343 (= e!94457 tp!80528)))

(assert (= (and b!156500 ((_ is ElementMatch!699) (regOne!1911 (regex!475 (h!8108 rules!1920))))) b!157341))

(assert (= (and b!156500 ((_ is Concat!1197) (regOne!1911 (regex!475 (h!8108 rules!1920))))) b!157342))

(assert (= (and b!156500 ((_ is Star!699) (regOne!1911 (regex!475 (h!8108 rules!1920))))) b!157343))

(assert (= (and b!156500 ((_ is Union!699) (regOne!1911 (regex!475 (h!8108 rules!1920))))) b!157344))

(declare-fun b!157346 () Bool)

(declare-fun e!94458 () Bool)

(declare-fun tp!80530 () Bool)

(declare-fun tp!80531 () Bool)

(assert (=> b!157346 (= e!94458 (and tp!80530 tp!80531))))

(assert (=> b!156500 (= tp!80507 e!94458)))

(declare-fun b!157345 () Bool)

(assert (=> b!157345 (= e!94458 tp_is_empty!1627)))

(declare-fun b!157348 () Bool)

(declare-fun tp!80532 () Bool)

(declare-fun tp!80529 () Bool)

(assert (=> b!157348 (= e!94458 (and tp!80532 tp!80529))))

(declare-fun b!157347 () Bool)

(declare-fun tp!80533 () Bool)

(assert (=> b!157347 (= e!94458 tp!80533)))

(assert (= (and b!156500 ((_ is ElementMatch!699) (regTwo!1911 (regex!475 (h!8108 rules!1920))))) b!157345))

(assert (= (and b!156500 ((_ is Concat!1197) (regTwo!1911 (regex!475 (h!8108 rules!1920))))) b!157346))

(assert (= (and b!156500 ((_ is Star!699) (regTwo!1911 (regex!475 (h!8108 rules!1920))))) b!157347))

(assert (= (and b!156500 ((_ is Union!699) (regTwo!1911 (regex!475 (h!8108 rules!1920))))) b!157348))

(declare-fun b!157349 () Bool)

(declare-fun e!94459 () Bool)

(declare-fun tp!80534 () Bool)

(assert (=> b!157349 (= e!94459 (and tp_is_empty!1627 tp!80534))))

(assert (=> b!156466 (= tp!80473 e!94459)))

(assert (= (and b!156466 ((_ is Cons!2710) (t!25384 (originalCharacters!518 (h!8109 tokens!465))))) b!157349))

(declare-fun b!157352 () Bool)

(declare-fun e!94462 () Bool)

(assert (=> b!157352 (= e!94462 true)))

(declare-fun b!157351 () Bool)

(declare-fun e!94461 () Bool)

(assert (=> b!157351 (= e!94461 e!94462)))

(declare-fun b!157350 () Bool)

(declare-fun e!94460 () Bool)

(assert (=> b!157350 (= e!94460 e!94461)))

(assert (=> b!156424 e!94460))

(assert (= b!157351 b!157352))

(assert (= b!157350 b!157351))

(assert (= (and b!156424 ((_ is Cons!2711) (t!25385 rules!1920))) b!157350))

(assert (=> b!157352 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (h!8108 (t!25385 rules!1920))))) (dynLambda!962 order!1367 lambda!4180))))

(assert (=> b!157352 (< (dynLambda!963 order!1369 (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920))))) (dynLambda!962 order!1367 lambda!4180))))

(declare-fun b!157354 () Bool)

(declare-fun e!94463 () Bool)

(declare-fun tp!80536 () Bool)

(declare-fun tp!80537 () Bool)

(assert (=> b!157354 (= e!94463 (and tp!80536 tp!80537))))

(assert (=> b!156498 (= tp!80508 e!94463)))

(declare-fun b!157353 () Bool)

(assert (=> b!157353 (= e!94463 tp_is_empty!1627)))

(declare-fun b!157356 () Bool)

(declare-fun tp!80538 () Bool)

(declare-fun tp!80535 () Bool)

(assert (=> b!157356 (= e!94463 (and tp!80538 tp!80535))))

(declare-fun b!157355 () Bool)

(declare-fun tp!80539 () Bool)

(assert (=> b!157355 (= e!94463 tp!80539)))

(assert (= (and b!156498 ((_ is ElementMatch!699) (regOne!1910 (regex!475 (h!8108 rules!1920))))) b!157353))

(assert (= (and b!156498 ((_ is Concat!1197) (regOne!1910 (regex!475 (h!8108 rules!1920))))) b!157354))

(assert (= (and b!156498 ((_ is Star!699) (regOne!1910 (regex!475 (h!8108 rules!1920))))) b!157355))

(assert (= (and b!156498 ((_ is Union!699) (regOne!1910 (regex!475 (h!8108 rules!1920))))) b!157356))

(declare-fun b!157358 () Bool)

(declare-fun e!94464 () Bool)

(declare-fun tp!80541 () Bool)

(declare-fun tp!80542 () Bool)

(assert (=> b!157358 (= e!94464 (and tp!80541 tp!80542))))

(assert (=> b!156498 (= tp!80509 e!94464)))

(declare-fun b!157357 () Bool)

(assert (=> b!157357 (= e!94464 tp_is_empty!1627)))

(declare-fun b!157360 () Bool)

(declare-fun tp!80543 () Bool)

(declare-fun tp!80540 () Bool)

(assert (=> b!157360 (= e!94464 (and tp!80543 tp!80540))))

(declare-fun b!157359 () Bool)

(declare-fun tp!80544 () Bool)

(assert (=> b!157359 (= e!94464 tp!80544)))

(assert (= (and b!156498 ((_ is ElementMatch!699) (regTwo!1910 (regex!475 (h!8108 rules!1920))))) b!157357))

(assert (= (and b!156498 ((_ is Concat!1197) (regTwo!1910 (regex!475 (h!8108 rules!1920))))) b!157358))

(assert (= (and b!156498 ((_ is Star!699) (regTwo!1910 (regex!475 (h!8108 rules!1920))))) b!157359))

(assert (= (and b!156498 ((_ is Union!699) (regTwo!1910 (regex!475 (h!8108 rules!1920))))) b!157360))

(declare-fun b!157366 () Bool)

(declare-fun e!94466 () Bool)

(declare-fun tp!80546 () Bool)

(declare-fun tp!80547 () Bool)

(assert (=> b!157366 (= e!94466 (and tp!80546 tp!80547))))

(assert (=> b!156483 (= tp!80493 e!94466)))

(declare-fun b!157365 () Bool)

(assert (=> b!157365 (= e!94466 tp_is_empty!1627)))

(declare-fun b!157368 () Bool)

(declare-fun tp!80548 () Bool)

(declare-fun tp!80545 () Bool)

(assert (=> b!157368 (= e!94466 (and tp!80548 tp!80545))))

(declare-fun b!157367 () Bool)

(declare-fun tp!80549 () Bool)

(assert (=> b!157367 (= e!94466 tp!80549)))

(assert (= (and b!156483 ((_ is ElementMatch!699) (reg!1028 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157365))

(assert (= (and b!156483 ((_ is Concat!1197) (reg!1028 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157366))

(assert (= (and b!156483 ((_ is Star!699) (reg!1028 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157367))

(assert (= (and b!156483 ((_ is Union!699) (reg!1028 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157368))

(declare-fun b!157370 () Bool)

(declare-fun e!94467 () Bool)

(declare-fun tp!80551 () Bool)

(declare-fun tp!80552 () Bool)

(assert (=> b!157370 (= e!94467 (and tp!80551 tp!80552))))

(assert (=> b!156484 (= tp!80492 e!94467)))

(declare-fun b!157369 () Bool)

(assert (=> b!157369 (= e!94467 tp_is_empty!1627)))

(declare-fun b!157372 () Bool)

(declare-fun tp!80553 () Bool)

(declare-fun tp!80550 () Bool)

(assert (=> b!157372 (= e!94467 (and tp!80553 tp!80550))))

(declare-fun b!157371 () Bool)

(declare-fun tp!80554 () Bool)

(assert (=> b!157371 (= e!94467 tp!80554)))

(assert (= (and b!156484 ((_ is ElementMatch!699) (regOne!1911 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157369))

(assert (= (and b!156484 ((_ is Concat!1197) (regOne!1911 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157370))

(assert (= (and b!156484 ((_ is Star!699) (regOne!1911 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157371))

(assert (= (and b!156484 ((_ is Union!699) (regOne!1911 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157372))

(declare-fun b!157374 () Bool)

(declare-fun e!94468 () Bool)

(declare-fun tp!80556 () Bool)

(declare-fun tp!80557 () Bool)

(assert (=> b!157374 (= e!94468 (and tp!80556 tp!80557))))

(assert (=> b!156484 (= tp!80489 e!94468)))

(declare-fun b!157373 () Bool)

(assert (=> b!157373 (= e!94468 tp_is_empty!1627)))

(declare-fun b!157376 () Bool)

(declare-fun tp!80558 () Bool)

(declare-fun tp!80555 () Bool)

(assert (=> b!157376 (= e!94468 (and tp!80558 tp!80555))))

(declare-fun b!157375 () Bool)

(declare-fun tp!80559 () Bool)

(assert (=> b!157375 (= e!94468 tp!80559)))

(assert (= (and b!156484 ((_ is ElementMatch!699) (regTwo!1911 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157373))

(assert (= (and b!156484 ((_ is Concat!1197) (regTwo!1911 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157374))

(assert (= (and b!156484 ((_ is Star!699) (regTwo!1911 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157375))

(assert (= (and b!156484 ((_ is Union!699) (regTwo!1911 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157376))

(declare-fun b!157379 () Bool)

(declare-fun e!94471 () Bool)

(assert (=> b!157379 (= e!94471 true)))

(declare-fun b!157378 () Bool)

(declare-fun e!94470 () Bool)

(assert (=> b!157378 (= e!94470 e!94471)))

(declare-fun b!157377 () Bool)

(declare-fun e!94469 () Bool)

(assert (=> b!157377 (= e!94469 e!94470)))

(assert (=> b!156364 e!94469))

(assert (= b!157378 b!157379))

(assert (= b!157377 b!157378))

(assert (= (and b!156364 ((_ is Cons!2711) (t!25385 rules!1920))) b!157377))

(assert (=> b!157379 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (h!8108 (t!25385 rules!1920))))) (dynLambda!962 order!1367 lambda!4179))))

(assert (=> b!157379 (< (dynLambda!963 order!1369 (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920))))) (dynLambda!962 order!1367 lambda!4179))))

(declare-fun b!157382 () Bool)

(declare-fun b_free!5853 () Bool)

(declare-fun b_next!5853 () Bool)

(assert (=> b!157382 (= b_free!5853 (not b_next!5853))))

(declare-fun tp!80563 () Bool)

(declare-fun b_and!9531 () Bool)

(assert (=> b!157382 (= tp!80563 b_and!9531)))

(declare-fun b_free!5855 () Bool)

(declare-fun b_next!5855 () Bool)

(assert (=> b!157382 (= b_free!5855 (not b_next!5855))))

(declare-fun tb!5571 () Bool)

(declare-fun t!25531 () Bool)

(assert (=> (and b!157382 (= (toChars!977 (transformation!475 (h!8108 (t!25385 (t!25385 rules!1920))))) (toChars!977 (transformation!475 (rule!982 separatorToken!170)))) t!25531) tb!5571))

(declare-fun result!8114 () Bool)

(assert (= result!8114 result!8022))

(assert (=> b!156367 t!25531))

(declare-fun tb!5573 () Bool)

(declare-fun t!25533 () Bool)

(assert (=> (and b!157382 (= (toChars!977 (transformation!475 (h!8108 (t!25385 (t!25385 rules!1920))))) (toChars!977 (transformation!475 (rule!982 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472)))))) t!25533) tb!5573))

(declare-fun result!8116 () Bool)

(assert (= result!8116 result!8104))

(assert (=> d!38265 t!25533))

(declare-fun t!25535 () Bool)

(declare-fun tb!5575 () Bool)

(assert (=> (and b!157382 (= (toChars!977 (transformation!475 (h!8108 (t!25385 (t!25385 rules!1920))))) (toChars!977 (transformation!475 (rule!982 call!6472)))) t!25535) tb!5575))

(declare-fun result!8118 () Bool)

(assert (= result!8118 result!8054))

(assert (=> d!37831 t!25535))

(declare-fun t!25537 () Bool)

(declare-fun tb!5577 () Bool)

(assert (=> (and b!157382 (= (toChars!977 (transformation!475 (h!8108 (t!25385 (t!25385 rules!1920))))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465)))))) t!25537) tb!5577))

(declare-fun result!8120 () Bool)

(assert (= result!8120 result!8044))

(assert (=> d!37817 t!25537))

(assert (=> d!37759 t!25531))

(declare-fun tb!5579 () Bool)

(declare-fun t!25539 () Bool)

(assert (=> (and b!157382 (= (toChars!977 (transformation!475 (h!8108 (t!25385 (t!25385 rules!1920))))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465))))) t!25539) tb!5579))

(declare-fun result!8122 () Bool)

(assert (= result!8122 result!7992))

(assert (=> b!156079 t!25539))

(declare-fun tb!5581 () Bool)

(declare-fun t!25541 () Bool)

(assert (=> (and b!157382 (= (toChars!977 (transformation!475 (h!8108 (t!25385 (t!25385 rules!1920))))) (toChars!977 (transformation!475 (rule!982 (apply!365 lt!46190 0))))) t!25541) tb!5581))

(declare-fun result!8124 () Bool)

(assert (= result!8124 result!8074))

(assert (=> d!38053 t!25541))

(assert (=> b!156798 t!25537))

(assert (=> d!37755 t!25539))

(declare-fun b_and!9533 () Bool)

(declare-fun tp!80560 () Bool)

(assert (=> b!157382 (= tp!80560 (and (=> t!25539 result!8122) (=> t!25531 result!8114) (=> t!25537 result!8120) (=> t!25541 result!8124) (=> t!25533 result!8116) (=> t!25535 result!8118) b_and!9533))))

(declare-fun e!94473 () Bool)

(assert (=> b!157382 (= e!94473 (and tp!80563 tp!80560))))

(declare-fun e!94472 () Bool)

(declare-fun b!157381 () Bool)

(declare-fun tp!80562 () Bool)

(assert (=> b!157381 (= e!94472 (and tp!80562 (inv!3510 (tag!653 (h!8108 (t!25385 (t!25385 rules!1920))))) (inv!3514 (transformation!475 (h!8108 (t!25385 (t!25385 rules!1920))))) e!94473))))

(declare-fun b!157380 () Bool)

(declare-fun e!94475 () Bool)

(declare-fun tp!80561 () Bool)

(assert (=> b!157380 (= e!94475 (and e!94472 tp!80561))))

(assert (=> b!156494 (= tp!80504 e!94475)))

(assert (= b!157381 b!157382))

(assert (= b!157380 b!157381))

(assert (= (and b!156494 ((_ is Cons!2711) (t!25385 (t!25385 rules!1920)))) b!157380))

(declare-fun m!144823 () Bool)

(assert (=> b!157381 m!144823))

(declare-fun m!144825 () Bool)

(assert (=> b!157381 m!144825))

(declare-fun b!157388 () Bool)

(declare-fun e!94478 () Bool)

(declare-fun tp!80565 () Bool)

(declare-fun tp!80566 () Bool)

(assert (=> b!157388 (= e!94478 (and tp!80565 tp!80566))))

(assert (=> b!156482 (= tp!80490 e!94478)))

(declare-fun b!157387 () Bool)

(assert (=> b!157387 (= e!94478 tp_is_empty!1627)))

(declare-fun b!157390 () Bool)

(declare-fun tp!80567 () Bool)

(declare-fun tp!80564 () Bool)

(assert (=> b!157390 (= e!94478 (and tp!80567 tp!80564))))

(declare-fun b!157389 () Bool)

(declare-fun tp!80568 () Bool)

(assert (=> b!157389 (= e!94478 tp!80568)))

(assert (= (and b!156482 ((_ is ElementMatch!699) (regOne!1910 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157387))

(assert (= (and b!156482 ((_ is Concat!1197) (regOne!1910 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157388))

(assert (= (and b!156482 ((_ is Star!699) (regOne!1910 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157389))

(assert (= (and b!156482 ((_ is Union!699) (regOne!1910 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157390))

(declare-fun b!157392 () Bool)

(declare-fun e!94479 () Bool)

(declare-fun tp!80570 () Bool)

(declare-fun tp!80571 () Bool)

(assert (=> b!157392 (= e!94479 (and tp!80570 tp!80571))))

(assert (=> b!156482 (= tp!80491 e!94479)))

(declare-fun b!157391 () Bool)

(assert (=> b!157391 (= e!94479 tp_is_empty!1627)))

(declare-fun b!157394 () Bool)

(declare-fun tp!80572 () Bool)

(declare-fun tp!80569 () Bool)

(assert (=> b!157394 (= e!94479 (and tp!80572 tp!80569))))

(declare-fun b!157393 () Bool)

(declare-fun tp!80573 () Bool)

(assert (=> b!157393 (= e!94479 tp!80573)))

(assert (= (and b!156482 ((_ is ElementMatch!699) (regTwo!1910 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157391))

(assert (= (and b!156482 ((_ is Concat!1197) (regTwo!1910 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157392))

(assert (= (and b!156482 ((_ is Star!699) (regTwo!1910 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157393))

(assert (= (and b!156482 ((_ is Union!699) (regTwo!1910 (regex!475 (rule!982 (h!8109 tokens!465)))))) b!157394))

(declare-fun b!157396 () Bool)

(declare-fun e!94480 () Bool)

(declare-fun tp!80575 () Bool)

(declare-fun tp!80576 () Bool)

(assert (=> b!157396 (= e!94480 (and tp!80575 tp!80576))))

(assert (=> b!156495 (= tp!80505 e!94480)))

(declare-fun b!157395 () Bool)

(assert (=> b!157395 (= e!94480 tp_is_empty!1627)))

(declare-fun b!157398 () Bool)

(declare-fun tp!80577 () Bool)

(declare-fun tp!80574 () Bool)

(assert (=> b!157398 (= e!94480 (and tp!80577 tp!80574))))

(declare-fun b!157397 () Bool)

(declare-fun tp!80578 () Bool)

(assert (=> b!157397 (= e!94480 tp!80578)))

(assert (= (and b!156495 ((_ is ElementMatch!699) (regex!475 (h!8108 (t!25385 rules!1920))))) b!157395))

(assert (= (and b!156495 ((_ is Concat!1197) (regex!475 (h!8108 (t!25385 rules!1920))))) b!157396))

(assert (= (and b!156495 ((_ is Star!699) (regex!475 (h!8108 (t!25385 rules!1920))))) b!157397))

(assert (= (and b!156495 ((_ is Union!699) (regex!475 (h!8108 (t!25385 rules!1920))))) b!157398))

(declare-fun b!157401 () Bool)

(declare-fun e!94483 () Bool)

(assert (=> b!157401 (= e!94483 true)))

(declare-fun b!157400 () Bool)

(declare-fun e!94482 () Bool)

(assert (=> b!157400 (= e!94482 e!94483)))

(declare-fun b!157399 () Bool)

(declare-fun e!94481 () Bool)

(assert (=> b!157399 (= e!94481 e!94482)))

(assert (=> b!156239 e!94481))

(assert (= b!157400 b!157401))

(assert (= b!157399 b!157400))

(assert (= (and b!156239 ((_ is Cons!2711) (t!25385 rules!1920))) b!157399))

(assert (=> b!157401 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (h!8108 (t!25385 rules!1920))))) (dynLambda!962 order!1367 lambda!4169))))

(assert (=> b!157401 (< (dynLambda!963 order!1369 (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920))))) (dynLambda!962 order!1367 lambda!4169))))

(declare-fun tp!80586 () Bool)

(declare-fun b!157414 () Bool)

(declare-fun e!94493 () Bool)

(declare-fun tp!80587 () Bool)

(assert (=> b!157414 (= e!94493 (and (inv!3517 (left!2044 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170))))) tp!80586 (inv!3517 (right!2374 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170))))) tp!80587))))

(declare-fun b!157416 () Bool)

(declare-fun e!94492 () Bool)

(declare-fun tp!80585 () Bool)

(assert (=> b!157416 (= e!94492 tp!80585)))

(declare-fun b!157415 () Bool)

(declare-fun inv!3523 (IArray!1545) Bool)

(assert (=> b!157415 (= e!94493 (and (inv!3523 (xs!3367 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170))))) e!94492))))

(assert (=> b!156369 (= tp!80455 (and (inv!3517 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170)))) e!94493))))

(assert (= (and b!156369 ((_ is Node!772) (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170))))) b!157414))

(assert (= b!157415 b!157416))

(assert (= (and b!156369 ((_ is Leaf!1349) (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (value!17853 separatorToken!170))))) b!157415))

(declare-fun m!144827 () Bool)

(assert (=> b!157414 m!144827))

(declare-fun m!144829 () Bool)

(assert (=> b!157414 m!144829))

(declare-fun m!144831 () Bool)

(assert (=> b!157415 m!144831))

(assert (=> b!156369 m!142685))

(declare-fun tp!80590 () Bool)

(declare-fun e!94497 () Bool)

(declare-fun tp!80589 () Bool)

(declare-fun b!157419 () Bool)

(assert (=> b!157419 (= e!94497 (and (inv!3517 (left!2044 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465)))))) tp!80589 (inv!3517 (right!2374 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465)))))) tp!80590))))

(declare-fun b!157421 () Bool)

(declare-fun e!94496 () Bool)

(declare-fun tp!80588 () Bool)

(assert (=> b!157421 (= e!94496 tp!80588)))

(declare-fun b!157420 () Bool)

(assert (=> b!157420 (= e!94497 (and (inv!3523 (xs!3367 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465)))))) e!94496))))

(assert (=> b!156085 (= tp!80397 (and (inv!3517 (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465))))) e!94497))))

(assert (= (and b!156085 ((_ is Node!772) (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465)))))) b!157419))

(assert (= b!157420 b!157421))

(assert (= (and b!156085 ((_ is Leaf!1349) (c!31335 (dynLambda!960 (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (value!17853 (h!8109 tokens!465)))))) b!157420))

(declare-fun m!144837 () Bool)

(assert (=> b!157419 m!144837))

(declare-fun m!144839 () Bool)

(assert (=> b!157419 m!144839))

(declare-fun m!144841 () Bool)

(assert (=> b!157420 m!144841))

(assert (=> b!156085 m!142351))

(declare-fun b!157422 () Bool)

(declare-fun e!94498 () Bool)

(declare-fun tp!80591 () Bool)

(assert (=> b!157422 (= e!94498 (and tp_is_empty!1627 tp!80591))))

(assert (=> b!156485 (= tp!80494 e!94498)))

(assert (= (and b!156485 ((_ is Cons!2710) (t!25384 (originalCharacters!518 separatorToken!170)))) b!157422))

(declare-fun b!157424 () Bool)

(declare-fun e!94499 () Bool)

(declare-fun tp!80593 () Bool)

(declare-fun tp!80594 () Bool)

(assert (=> b!157424 (= e!94499 (and tp!80593 tp!80594))))

(assert (=> b!156460 (= tp!80468 e!94499)))

(declare-fun b!157423 () Bool)

(assert (=> b!157423 (= e!94499 tp_is_empty!1627)))

(declare-fun b!157426 () Bool)

(declare-fun tp!80595 () Bool)

(declare-fun tp!80592 () Bool)

(assert (=> b!157426 (= e!94499 (and tp!80595 tp!80592))))

(declare-fun b!157425 () Bool)

(declare-fun tp!80596 () Bool)

(assert (=> b!157425 (= e!94499 tp!80596)))

(assert (= (and b!156460 ((_ is ElementMatch!699) (regex!475 (rule!982 (h!8109 (t!25386 tokens!465)))))) b!157423))

(assert (= (and b!156460 ((_ is Concat!1197) (regex!475 (rule!982 (h!8109 (t!25386 tokens!465)))))) b!157424))

(assert (= (and b!156460 ((_ is Star!699) (regex!475 (rule!982 (h!8109 (t!25386 tokens!465)))))) b!157425))

(assert (= (and b!156460 ((_ is Union!699) (regex!475 (rule!982 (h!8109 (t!25386 tokens!465)))))) b!157426))

(declare-fun b!157428 () Bool)

(declare-fun e!94500 () Bool)

(declare-fun tp!80598 () Bool)

(declare-fun tp!80599 () Bool)

(assert (=> b!157428 (= e!94500 (and tp!80598 tp!80599))))

(assert (=> b!156479 (= tp!80488 e!94500)))

(declare-fun b!157427 () Bool)

(assert (=> b!157427 (= e!94500 tp_is_empty!1627)))

(declare-fun b!157430 () Bool)

(declare-fun tp!80600 () Bool)

(declare-fun tp!80597 () Bool)

(assert (=> b!157430 (= e!94500 (and tp!80600 tp!80597))))

(declare-fun b!157429 () Bool)

(declare-fun tp!80601 () Bool)

(assert (=> b!157429 (= e!94500 tp!80601)))

(assert (= (and b!156479 ((_ is ElementMatch!699) (reg!1028 (regex!475 (rule!982 separatorToken!170))))) b!157427))

(assert (= (and b!156479 ((_ is Concat!1197) (reg!1028 (regex!475 (rule!982 separatorToken!170))))) b!157428))

(assert (= (and b!156479 ((_ is Star!699) (reg!1028 (regex!475 (rule!982 separatorToken!170))))) b!157429))

(assert (= (and b!156479 ((_ is Union!699) (reg!1028 (regex!475 (rule!982 separatorToken!170))))) b!157430))

(declare-fun b!157432 () Bool)

(declare-fun e!94501 () Bool)

(declare-fun tp!80603 () Bool)

(declare-fun tp!80604 () Bool)

(assert (=> b!157432 (= e!94501 (and tp!80603 tp!80604))))

(assert (=> b!156480 (= tp!80487 e!94501)))

(declare-fun b!157431 () Bool)

(assert (=> b!157431 (= e!94501 tp_is_empty!1627)))

(declare-fun b!157434 () Bool)

(declare-fun tp!80605 () Bool)

(declare-fun tp!80602 () Bool)

(assert (=> b!157434 (= e!94501 (and tp!80605 tp!80602))))

(declare-fun b!157433 () Bool)

(declare-fun tp!80606 () Bool)

(assert (=> b!157433 (= e!94501 tp!80606)))

(assert (= (and b!156480 ((_ is ElementMatch!699) (regOne!1911 (regex!475 (rule!982 separatorToken!170))))) b!157431))

(assert (= (and b!156480 ((_ is Concat!1197) (regOne!1911 (regex!475 (rule!982 separatorToken!170))))) b!157432))

(assert (= (and b!156480 ((_ is Star!699) (regOne!1911 (regex!475 (rule!982 separatorToken!170))))) b!157433))

(assert (= (and b!156480 ((_ is Union!699) (regOne!1911 (regex!475 (rule!982 separatorToken!170))))) b!157434))

(declare-fun b!157436 () Bool)

(declare-fun e!94502 () Bool)

(declare-fun tp!80608 () Bool)

(declare-fun tp!80609 () Bool)

(assert (=> b!157436 (= e!94502 (and tp!80608 tp!80609))))

(assert (=> b!156480 (= tp!80484 e!94502)))

(declare-fun b!157435 () Bool)

(assert (=> b!157435 (= e!94502 tp_is_empty!1627)))

(declare-fun b!157438 () Bool)

(declare-fun tp!80610 () Bool)

(declare-fun tp!80607 () Bool)

(assert (=> b!157438 (= e!94502 (and tp!80610 tp!80607))))

(declare-fun b!157437 () Bool)

(declare-fun tp!80611 () Bool)

(assert (=> b!157437 (= e!94502 tp!80611)))

(assert (= (and b!156480 ((_ is ElementMatch!699) (regTwo!1911 (regex!475 (rule!982 separatorToken!170))))) b!157435))

(assert (= (and b!156480 ((_ is Concat!1197) (regTwo!1911 (regex!475 (rule!982 separatorToken!170))))) b!157436))

(assert (= (and b!156480 ((_ is Star!699) (regTwo!1911 (regex!475 (rule!982 separatorToken!170))))) b!157437))

(assert (= (and b!156480 ((_ is Union!699) (regTwo!1911 (regex!475 (rule!982 separatorToken!170))))) b!157438))

(declare-fun b!157442 () Bool)

(declare-fun b_free!5857 () Bool)

(declare-fun b_next!5857 () Bool)

(assert (=> b!157442 (= b_free!5857 (not b_next!5857))))

(declare-fun tp!80613 () Bool)

(declare-fun b_and!9535 () Bool)

(assert (=> b!157442 (= tp!80613 b_and!9535)))

(declare-fun b_free!5859 () Bool)

(declare-fun b_next!5859 () Bool)

(assert (=> b!157442 (= b_free!5859 (not b_next!5859))))

(declare-fun t!25543 () Bool)

(declare-fun tb!5583 () Bool)

(assert (=> (and b!157442 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 (t!25386 tokens!465)))))) (toChars!977 (transformation!475 (rule!982 separatorToken!170)))) t!25543) tb!5583))

(declare-fun result!8128 () Bool)

(assert (= result!8128 result!8022))

(assert (=> b!156367 t!25543))

(declare-fun t!25545 () Bool)

(declare-fun tb!5585 () Bool)

(assert (=> (and b!157442 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 (t!25386 tokens!465)))))) (toChars!977 (transformation!475 (rule!982 (ite c!31377 call!6476 (ite c!31376 separatorToken!170 call!6472)))))) t!25545) tb!5585))

(declare-fun result!8130 () Bool)

(assert (= result!8130 result!8104))

(assert (=> d!38265 t!25545))

(declare-fun tb!5587 () Bool)

(declare-fun t!25547 () Bool)

(assert (=> (and b!157442 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 (t!25386 tokens!465)))))) (toChars!977 (transformation!475 (rule!982 call!6472)))) t!25547) tb!5587))

(declare-fun result!8132 () Bool)

(assert (= result!8132 result!8054))

(assert (=> d!37831 t!25547))

(declare-fun t!25549 () Bool)

(declare-fun tb!5589 () Bool)

(assert (=> (and b!157442 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 (t!25386 tokens!465)))))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465)))))) t!25549) tb!5589))

(declare-fun result!8134 () Bool)

(assert (= result!8134 result!8044))

(assert (=> d!37817 t!25549))

(assert (=> d!37759 t!25543))

(declare-fun t!25551 () Bool)

(declare-fun tb!5591 () Bool)

(assert (=> (and b!157442 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 (t!25386 tokens!465)))))) (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465))))) t!25551) tb!5591))

(declare-fun result!8136 () Bool)

(assert (= result!8136 result!7992))

(assert (=> b!156079 t!25551))

(declare-fun t!25553 () Bool)

(declare-fun tb!5593 () Bool)

(assert (=> (and b!157442 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 (t!25386 tokens!465)))))) (toChars!977 (transformation!475 (rule!982 (apply!365 lt!46190 0))))) t!25553) tb!5593))

(declare-fun result!8138 () Bool)

(assert (= result!8138 result!8074))

(assert (=> d!38053 t!25553))

(assert (=> b!156798 t!25549))

(assert (=> d!37755 t!25551))

(declare-fun tp!80615 () Bool)

(declare-fun b_and!9537 () Bool)

(assert (=> b!157442 (= tp!80615 (and (=> t!25543 result!8128) (=> t!25553 result!8138) (=> t!25549 result!8134) (=> t!25545 result!8130) (=> t!25547 result!8132) (=> t!25551 result!8136) b_and!9537))))

(declare-fun b!157441 () Bool)

(declare-fun e!94508 () Bool)

(declare-fun tp!80614 () Bool)

(declare-fun e!94506 () Bool)

(assert (=> b!157441 (= e!94508 (and tp!80614 (inv!3510 (tag!653 (rule!982 (h!8109 (t!25386 (t!25386 tokens!465)))))) (inv!3514 (transformation!475 (rule!982 (h!8109 (t!25386 (t!25386 tokens!465)))))) e!94506))))

(declare-fun e!94505 () Bool)

(assert (=> b!156458 (= tp!80470 e!94505)))

(declare-fun b!157440 () Bool)

(declare-fun tp!80612 () Bool)

(declare-fun e!94507 () Bool)

(assert (=> b!157440 (= e!94507 (and (inv!21 (value!17853 (h!8109 (t!25386 (t!25386 tokens!465))))) e!94508 tp!80612))))

(assert (=> b!157442 (= e!94506 (and tp!80613 tp!80615))))

(declare-fun tp!80616 () Bool)

(declare-fun b!157439 () Bool)

(assert (=> b!157439 (= e!94505 (and (inv!3513 (h!8109 (t!25386 (t!25386 tokens!465)))) e!94507 tp!80616))))

(assert (= b!157441 b!157442))

(assert (= b!157440 b!157441))

(assert (= b!157439 b!157440))

(assert (= (and b!156458 ((_ is Cons!2712) (t!25386 (t!25386 tokens!465)))) b!157439))

(declare-fun m!144845 () Bool)

(assert (=> b!157441 m!144845))

(declare-fun m!144847 () Bool)

(assert (=> b!157441 m!144847))

(declare-fun m!144849 () Bool)

(assert (=> b!157440 m!144849))

(declare-fun m!144851 () Bool)

(assert (=> b!157439 m!144851))

(declare-fun b!157443 () Bool)

(declare-fun e!94509 () Bool)

(declare-fun tp!80617 () Bool)

(assert (=> b!157443 (= e!94509 (and tp_is_empty!1627 tp!80617))))

(assert (=> b!156459 (= tp!80466 e!94509)))

(assert (= (and b!156459 ((_ is Cons!2710) (originalCharacters!518 (h!8109 (t!25386 tokens!465))))) b!157443))

(declare-fun b!157446 () Bool)

(declare-fun e!94512 () Bool)

(assert (=> b!157446 (= e!94512 true)))

(declare-fun b!157445 () Bool)

(declare-fun e!94511 () Bool)

(assert (=> b!157445 (= e!94511 e!94512)))

(declare-fun b!157444 () Bool)

(declare-fun e!94510 () Bool)

(assert (=> b!157444 (= e!94510 e!94511)))

(assert (=> b!156178 e!94510))

(assert (= b!157445 b!157446))

(assert (= b!157444 b!157445))

(assert (= (and b!156178 ((_ is Cons!2711) (t!25385 rules!1920))) b!157444))

(assert (=> b!157446 (< (dynLambda!961 order!1365 (toValue!1118 (transformation!475 (h!8108 (t!25385 rules!1920))))) (dynLambda!962 order!1367 lambda!4158))))

(assert (=> b!157446 (< (dynLambda!963 order!1369 (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920))))) (dynLambda!962 order!1367 lambda!4158))))

(declare-fun b!157450 () Bool)

(declare-fun e!94515 () Bool)

(declare-fun tp!80619 () Bool)

(declare-fun tp!80620 () Bool)

(assert (=> b!157450 (= e!94515 (and tp!80619 tp!80620))))

(assert (=> b!156478 (= tp!80485 e!94515)))

(declare-fun b!157449 () Bool)

(assert (=> b!157449 (= e!94515 tp_is_empty!1627)))

(declare-fun b!157452 () Bool)

(declare-fun tp!80621 () Bool)

(declare-fun tp!80618 () Bool)

(assert (=> b!157452 (= e!94515 (and tp!80621 tp!80618))))

(declare-fun b!157451 () Bool)

(declare-fun tp!80622 () Bool)

(assert (=> b!157451 (= e!94515 tp!80622)))

(assert (= (and b!156478 ((_ is ElementMatch!699) (regOne!1910 (regex!475 (rule!982 separatorToken!170))))) b!157449))

(assert (= (and b!156478 ((_ is Concat!1197) (regOne!1910 (regex!475 (rule!982 separatorToken!170))))) b!157450))

(assert (= (and b!156478 ((_ is Star!699) (regOne!1910 (regex!475 (rule!982 separatorToken!170))))) b!157451))

(assert (= (and b!156478 ((_ is Union!699) (regOne!1910 (regex!475 (rule!982 separatorToken!170))))) b!157452))

(declare-fun b!157454 () Bool)

(declare-fun e!94516 () Bool)

(declare-fun tp!80624 () Bool)

(declare-fun tp!80625 () Bool)

(assert (=> b!157454 (= e!94516 (and tp!80624 tp!80625))))

(assert (=> b!156478 (= tp!80486 e!94516)))

(declare-fun b!157453 () Bool)

(assert (=> b!157453 (= e!94516 tp_is_empty!1627)))

(declare-fun b!157456 () Bool)

(declare-fun tp!80626 () Bool)

(declare-fun tp!80623 () Bool)

(assert (=> b!157456 (= e!94516 (and tp!80626 tp!80623))))

(declare-fun b!157455 () Bool)

(declare-fun tp!80627 () Bool)

(assert (=> b!157455 (= e!94516 tp!80627)))

(assert (= (and b!156478 ((_ is ElementMatch!699) (regTwo!1910 (regex!475 (rule!982 separatorToken!170))))) b!157453))

(assert (= (and b!156478 ((_ is Concat!1197) (regTwo!1910 (regex!475 (rule!982 separatorToken!170))))) b!157454))

(assert (= (and b!156478 ((_ is Star!699) (regTwo!1910 (regex!475 (rule!982 separatorToken!170))))) b!157455))

(assert (= (and b!156478 ((_ is Union!699) (regTwo!1910 (regex!475 (rule!982 separatorToken!170))))) b!157456))

(declare-fun b_lambda!3123 () Bool)

(assert (= b_lambda!3097 (or (and b!157442 b_free!5859 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 (t!25386 tokens!465)))))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))))) (and b!156461 b_free!5847) (and b!156028 b_free!5835 (= (toChars!977 (transformation!475 (h!8108 rules!1920))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))))) (and b!156029 b_free!5827 (= (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))))) (and b!157382 b_free!5855 (= (toChars!977 (transformation!475 (h!8108 (t!25385 (t!25385 rules!1920))))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))))) (and b!156496 b_free!5851 (= (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920)))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))))) (and b!156030 b_free!5831 (= (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))))) b_lambda!3123)))

(declare-fun b_lambda!3125 () Bool)

(assert (= b_lambda!3089 (or (and b!157442 b_free!5859 (= (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 (t!25386 tokens!465)))))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))))) (and b!156461 b_free!5847) (and b!156028 b_free!5835 (= (toChars!977 (transformation!475 (h!8108 rules!1920))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))))) (and b!156029 b_free!5827 (= (toChars!977 (transformation!475 (rule!982 separatorToken!170))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))))) (and b!157382 b_free!5855 (= (toChars!977 (transformation!475 (h!8108 (t!25385 (t!25385 rules!1920))))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))))) (and b!156496 b_free!5851 (= (toChars!977 (transformation!475 (h!8108 (t!25385 rules!1920)))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))))) (and b!156030 b_free!5831 (= (toChars!977 (transformation!475 (rule!982 (h!8109 tokens!465)))) (toChars!977 (transformation!475 (rule!982 (h!8109 (t!25386 tokens!465))))))) b_lambda!3125)))

(declare-fun b_lambda!3127 () Bool)

(assert (= b_lambda!3087 (or b!156022 b_lambda!3127)))

(declare-fun bs!14656 () Bool)

(declare-fun d!38295 () Bool)

(assert (= bs!14656 (and d!38295 b!156022)))

(assert (=> bs!14656 (= (dynLambda!959 lambda!4150 (h!8109 (t!25386 tokens!465))) (not (isSeparator!475 (rule!982 (h!8109 (t!25386 tokens!465))))))))

(assert (=> b!156550 d!38295))

(declare-fun b_lambda!3129 () Bool)

(assert (= b_lambda!3099 (or b!156362 b_lambda!3129)))

(declare-fun bs!14657 () Bool)

(declare-fun d!38297 () Bool)

(assert (= bs!14657 (and d!38297 b!156362)))

(assert (=> bs!14657 (= (dynLambda!959 lambda!4179 (h!8109 tokens!465)) (rulesProduceIndividualToken!110 thiss!17480 rules!1920 (h!8109 tokens!465)))))

(declare-fun m!144859 () Bool)

(assert (=> bs!14657 m!144859))

(assert (=> d!38007 d!38297))

(declare-fun b_lambda!3131 () Bool)

(assert (= b_lambda!3095 (or d!37663 b_lambda!3131)))

(declare-fun bs!14658 () Bool)

(declare-fun d!38299 () Bool)

(assert (= bs!14658 (and d!38299 d!37663)))

(assert (=> bs!14658 (= (dynLambda!959 lambda!4158 (h!8109 (list!965 lt!46190))) (rulesProduceIndividualToken!110 thiss!17480 rules!1920 (h!8109 (list!965 lt!46190))))))

(assert (=> bs!14658 m!144393))

(assert (=> b!156783 d!38299))

(declare-fun b_lambda!3133 () Bool)

(assert (= b_lambda!3105 (or b!156237 b_lambda!3133)))

(declare-fun bs!14659 () Bool)

(declare-fun d!38301 () Bool)

(assert (= bs!14659 (and d!38301 b!156237)))

(assert (=> bs!14659 (= (dynLambda!959 lambda!4169 (apply!365 lt!46190 0)) (rulesProduceIndividualToken!110 thiss!17480 rules!1920 (apply!365 lt!46190 0)))))

(assert (=> bs!14659 m!142521))

(declare-fun m!144861 () Bool)

(assert (=> bs!14659 m!144861))

(assert (=> d!38041 d!38301))

(declare-fun b_lambda!3135 () Bool)

(assert (= b_lambda!3093 (or b!156422 b_lambda!3135)))

(declare-fun bs!14660 () Bool)

(declare-fun d!38303 () Bool)

(assert (= bs!14660 (and d!38303 b!156422)))

(assert (=> bs!14660 (= (dynLambda!959 lambda!4180 (h!8109 (t!25386 tokens!465))) (rulesProduceIndividualToken!110 thiss!17480 rules!1920 (h!8109 (t!25386 tokens!465))))))

(declare-fun m!144863 () Bool)

(assert (=> bs!14660 m!144863))

(assert (=> d!37853 d!38303))

(check-sat (not b!156625) (not b!156798) (not b!156986) (not b!157104) (not bm!6544) (not d!37795) (not b!156558) (not b!157366) (not d!38235) (not b!157247) (not b!156628) (not b!157243) (not d!37997) (not bm!6543) (not b!156622) (not bs!14660) (not b!156982) (not b!157394) (not b_next!5851) (not d!38137) (not d!37943) (not b_lambda!3127) (not d!38081) (not b!157377) (not tb!5501) (not d!38275) (not b!157415) (not b!157300) (not d!38267) (not b!156804) b_and!9437 (not b_lambda!3083) (not d!37967) (not b!157356) (not bs!14657) (not b!156547) (not b_lambda!3131) (not b!157354) (not b!156524) (not d!37845) (not b!157440) (not b!157310) (not b!157282) (not b!156369) (not bm!6519) (not d!38187) (not b_lambda!3081) (not d!37851) (not b!156620) (not d!38001) (not bm!6568) (not b!157248) (not b!157226) (not b!157389) (not d!37839) (not b!157422) (not d!37989) (not b!156988) (not b!156901) (not b!156574) (not d!38099) (not b!157316) (not b!157372) (not d!38277) (not b!157392) b_and!9521 b_and!9525 (not b!157232) (not b!156791) (not d!37979) (not b!157450) (not tb!5531) (not b!157339) (not b!156591) (not b!157241) (not b!157265) (not b!157441) (not b!157019) (not d!38075) (not d!37853) (not b!156829) (not b_next!5847) (not b!157297) (not d!37993) (not d!38055) (not b!156833) (not d!38019) (not b!157338) (not d!37985) (not b!157344) (not bm!6567) (not b!156627) (not b!157343) (not b!156800) (not b!157016) (not d!38211) (not d!38233) (not b_next!5853) (not b!156972) (not b!156832) (not bm!6515) (not b!156784) (not b!156913) (not b_lambda!3121) (not b!157027) (not b!156596) (not b!157234) (not b!156543) (not b!157368) (not b!156568) (not b!157250) (not d!38045) (not b!157018) (not b!156973) (not d!37831) (not b_next!5857) (not b_lambda!3091) (not d!38073) (not b!157452) (not b!157230) (not d!37999) (not b!156980) (not b!157433) (not b!157103) (not b!156961) (not b!157451) (not d!38205) (not d!38043) (not d!37991) (not bm!6514) (not b!157296) (not b!156717) (not bm!6512) (not d!38193) (not b!156985) (not b!156545) (not b_next!5855) (not d!37861) (not b!156549) (not b_next!5827) (not b!157231) (not b!157236) (not d!37799) (not b!156778) (not b!157425) (not d!38195) b_and!9537 (not b!156828) (not b!156562) (not b!157375) (not d!37829) (not b!156586) (not b_next!5845) (not b!157283) (not b!156573) (not d!38223) (not b!157455) (not b_next!5849) (not b!157419) (not b!157032) (not b!156974) (not d!37835) (not b!156626) (not b!156566) (not b!156952) (not d!38245) (not b!156623) (not b_lambda!3079) (not b!156780) (not d!38263) (not b!157443) (not b!157258) (not b!156585) (not b!156599) (not b_lambda!3125) (not d!37817) (not d!38269) (not b!157276) (not b!156589) (not b!156953) (not d!38219) (not b!156900) (not d!38189) (not b!157350) (not b!157307) (not d!38069) (not b!157414) (not b!157023) (not d!37961) (not b!157309) (not d!38085) (not d!38237) (not b!157444) (not b!157289) (not d!38243) (not b!156786) (not b!157313) (not b!157456) (not d!38097) (not b_next!5833) (not b!157031) (not b!157349) (not b!157421) (not d!37931) (not b!156887) (not b!157367) (not d!37977) (not b!156594) b_and!9373 (not b!156929) (not b!157284) (not b!157347) (not d!38265) (not b!157039) (not b!156567) (not d!38261) (not b!156928) (not b!157342) (not b!156803) (not b!157399) (not b!156914) (not b!157380) (not d!38249) (not d!37913) (not b!156834) (not d!37953) (not b!156782) (not b!157021) (not b!157299) (not b!156560) (not b_next!5831) (not d!38255) (not b!156967) (not b!157320) (not d!37855) (not d!38185) (not b_next!5859) (not b!157429) (not b!156799) (not d!38077) (not b!157420) b_and!9527 (not b!156968) (not d!38225) (not d!37791) (not d!38041) (not d!38201) (not b!157348) (not b!157340) (not b!157322) (not b!157358) (not b!156541) (not d!38209) (not b!157280) (not b!156597) (not d!38239) (not b!157244) (not b!157229) (not b!156768) (not b!157426) b_and!9433 (not b!157240) (not d!37847) (not b!157288) (not d!38217) (not b!157017) (not b!157454) (not b!156525) (not b!156802) (not b!157398) (not d!38247) (not b!156621) (not b!157020) (not bm!6536) (not b!157041) b_and!9523 (not b!157390) (not b!156755) (not b!156787) (not b!157331) (not b_lambda!3133) (not d!38011) (not d!37859) (not b!156085) (not d!38191) (not d!38003) (not b!156552) (not b!156631) (not b!157371) (not b!157428) b_and!9533 (not d!38197) (not b!156769) (not d!37973) (not b!157370) (not b!157256) (not b!156837) (not b!157424) (not b!157396) (not b!156987) (not b!157291) (not b!157326) (not bm!6571) (not b!157286) (not b!156888) tp_is_empty!1627 (not b!157432) (not b!156572) (not b!157325) (not b!157014) (not b_lambda!3109) (not bs!14658) (not b_lambda!3077) (not d!38053) (not b!157253) (not b!157437) (not b!156797) (not d!38007) (not d!38005) (not b_lambda!3123) (not b!157374) b_and!9529 (not b!157393) (not b!157287) (not b_next!5825) (not b!156839) (not b!157381) (not b!156718) (not d!37837) (not d!38031) (not tb!5561) (not b!157255) (not b!157397) (not b!157360) (not bm!6541) (not d!38213) (not b!156584) (not d!38241) (not b!157332) (not b!156638) (not b!157416) (not b!156551) b_and!9535 (not b!156715) (not d!38203) (not b!157224) (not b!157376) (not bm!6516) b_and!9365 (not b!157026) (not b!156981) (not b_next!5835) (not bm!6539) (not bs!14659) (not b!156838) (not bm!6527) (not b!157439) (not b!157438) (not bm!6537) (not b!157293) (not b!156760) (not b!157359) (not d!38093) (not b!157312) (not b!157266) (not b!156902) (not b!157346) (not b!157317) (not b_lambda!3135) (not b_lambda!3085) (not b!157225) (not b!157430) b_and!9369 (not b_lambda!3129) (not b!156588) (not d!38207) (not b!156849) (not bm!6547) (not b!157434) (not b!157355) (not bm!6566) (not b_next!5829) (not b!156716) (not tb!5511) (not b!156836) (not b!157323) (not d!37951) b_and!9531 (not b!157105) (not b!156801) (not d!37981) (not d!38095) (not b!156640) (not d!37813) (not b!156583) (not d!37995) (not d!37975) (not b!157436) (not b!156564) (not b!156977) (not b!157388) (not b!156831) (not bm!6564) (not b!157029) (not b!157239) (not d!37983))
(check-sat (not b_next!5851) b_and!9437 (not b_next!5847) (not b_next!5853) (not b_next!5857) (not b_next!5833) b_and!9373 (not b_next!5831) (not b_next!5859) b_and!9527 b_and!9433 b_and!9523 b_and!9533 b_and!9529 (not b_next!5825) (not b_next!5835) b_and!9369 b_and!9521 b_and!9525 (not b_next!5855) (not b_next!5827) b_and!9537 (not b_next!5845) (not b_next!5849) b_and!9535 b_and!9365 (not b_next!5829) b_and!9531)
