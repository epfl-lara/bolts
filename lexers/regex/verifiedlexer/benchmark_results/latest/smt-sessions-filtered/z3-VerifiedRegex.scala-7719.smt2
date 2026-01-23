; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405518 () Bool)

(assert start!405518)

(declare-fun b!4238014 () Bool)

(declare-fun b_free!125383 () Bool)

(declare-fun b_next!126087 () Bool)

(assert (=> b!4238014 (= b_free!125383 (not b_next!126087))))

(declare-fun tp!1298640 () Bool)

(declare-fun b_and!334925 () Bool)

(assert (=> b!4238014 (= tp!1298640 b_and!334925)))

(declare-fun b_free!125385 () Bool)

(declare-fun b_next!126089 () Bool)

(assert (=> b!4238014 (= b_free!125385 (not b_next!126089))))

(declare-fun tp!1298653 () Bool)

(declare-fun b_and!334927 () Bool)

(assert (=> b!4238014 (= tp!1298653 b_and!334927)))

(declare-fun b!4238032 () Bool)

(declare-fun b_free!125387 () Bool)

(declare-fun b_next!126091 () Bool)

(assert (=> b!4238032 (= b_free!125387 (not b_next!126091))))

(declare-fun tp!1298652 () Bool)

(declare-fun b_and!334929 () Bool)

(assert (=> b!4238032 (= tp!1298652 b_and!334929)))

(declare-fun b_free!125389 () Bool)

(declare-fun b_next!126093 () Bool)

(assert (=> b!4238032 (= b_free!125389 (not b_next!126093))))

(declare-fun tp!1298648 () Bool)

(declare-fun b_and!334931 () Bool)

(assert (=> b!4238032 (= tp!1298648 b_and!334931)))

(declare-fun b!4238020 () Bool)

(declare-fun b_free!125391 () Bool)

(declare-fun b_next!126095 () Bool)

(assert (=> b!4238020 (= b_free!125391 (not b_next!126095))))

(declare-fun tp!1298656 () Bool)

(declare-fun b_and!334933 () Bool)

(assert (=> b!4238020 (= tp!1298656 b_and!334933)))

(declare-fun b_free!125393 () Bool)

(declare-fun b_next!126097 () Bool)

(assert (=> b!4238020 (= b_free!125393 (not b_next!126097))))

(declare-fun tp!1298649 () Bool)

(declare-fun b_and!334935 () Bool)

(assert (=> b!4238020 (= tp!1298649 b_and!334935)))

(declare-fun b!4238012 () Bool)

(declare-fun e!2631798 () Bool)

(declare-fun e!2631789 () Bool)

(declare-fun tp!1298645 () Bool)

(assert (=> b!4238012 (= e!2631798 (and e!2631789 tp!1298645))))

(declare-fun b!4238013 () Bool)

(declare-fun e!2631800 () Bool)

(declare-fun tp_is_empty!22645 () Bool)

(declare-fun tp!1298655 () Bool)

(assert (=> b!4238013 (= e!2631800 (and tp_is_empty!22645 tp!1298655))))

(declare-fun e!2631790 () Bool)

(assert (=> b!4238014 (= e!2631790 (and tp!1298640 tp!1298653))))

(declare-fun b!4238015 () Bool)

(declare-fun e!2631783 () Bool)

(declare-fun tp!1298646 () Bool)

(declare-fun e!2631799 () Bool)

(declare-datatypes ((List!46986 0))(
  ( (Nil!46862) (Cons!46862 (h!52282 (_ BitVec 16)) (t!350073 List!46986)) )
))
(declare-datatypes ((TokenValue!8152 0))(
  ( (FloatLiteralValue!16304 (text!57509 List!46986)) (TokenValueExt!8151 (__x!28527 Int)) (Broken!40760 (value!246287 List!46986)) (Object!8275) (End!8152) (Def!8152) (Underscore!8152) (Match!8152) (Else!8152) (Error!8152) (Case!8152) (If!8152) (Extends!8152) (Abstract!8152) (Class!8152) (Val!8152) (DelimiterValue!16304 (del!8212 List!46986)) (KeywordValue!8158 (value!246288 List!46986)) (CommentValue!16304 (value!246289 List!46986)) (WhitespaceValue!16304 (value!246290 List!46986)) (IndentationValue!8152 (value!246291 List!46986)) (String!54689) (Int32!8152) (Broken!40761 (value!246292 List!46986)) (Boolean!8153) (Unit!65954) (OperatorValue!8155 (op!8212 List!46986)) (IdentifierValue!16304 (value!246293 List!46986)) (IdentifierValue!16305 (value!246294 List!46986)) (WhitespaceValue!16305 (value!246295 List!46986)) (True!16304) (False!16304) (Broken!40762 (value!246296 List!46986)) (Broken!40763 (value!246297 List!46986)) (True!16305) (RightBrace!8152) (RightBracket!8152) (Colon!8152) (Null!8152) (Comma!8152) (LeftBracket!8152) (False!16305) (LeftBrace!8152) (ImaginaryLiteralValue!8152 (text!57510 List!46986)) (StringLiteralValue!24456 (value!246298 List!46986)) (EOFValue!8152 (value!246299 List!46986)) (IdentValue!8152 (value!246300 List!46986)) (DelimiterValue!16305 (value!246301 List!46986)) (DedentValue!8152 (value!246302 List!46986)) (NewLineValue!8152 (value!246303 List!46986)) (IntegerValue!24456 (value!246304 (_ BitVec 32)) (text!57511 List!46986)) (IntegerValue!24457 (value!246305 Int) (text!57512 List!46986)) (Times!8152) (Or!8152) (Equal!8152) (Minus!8152) (Broken!40764 (value!246306 List!46986)) (And!8152) (Div!8152) (LessEqual!8152) (Mod!8152) (Concat!20979) (Not!8152) (Plus!8152) (SpaceValue!8152 (value!246307 List!46986)) (IntegerValue!24458 (value!246308 Int) (text!57513 List!46986)) (StringLiteralValue!24457 (text!57514 List!46986)) (FloatLiteralValue!16305 (text!57515 List!46986)) (BytesLiteralValue!8152 (value!246309 List!46986)) (CommentValue!16305 (value!246310 List!46986)) (StringLiteralValue!24458 (value!246311 List!46986)) (ErrorTokenValue!8152 (msg!8213 List!46986)) )
))
(declare-datatypes ((C!25852 0))(
  ( (C!25853 (val!15116 Int)) )
))
(declare-datatypes ((Regex!12827 0))(
  ( (ElementMatch!12827 (c!720150 C!25852)) (Concat!20980 (regOne!26166 Regex!12827) (regTwo!26166 Regex!12827)) (EmptyExpr!12827) (Star!12827 (reg!13156 Regex!12827)) (EmptyLang!12827) (Union!12827 (regOne!26167 Regex!12827) (regTwo!26167 Regex!12827)) )
))
(declare-datatypes ((String!54690 0))(
  ( (String!54691 (value!246312 String)) )
))
(declare-datatypes ((List!46987 0))(
  ( (Nil!46863) (Cons!46863 (h!52283 C!25852) (t!350074 List!46987)) )
))
(declare-datatypes ((IArray!28271 0))(
  ( (IArray!28272 (innerList!14193 List!46987)) )
))
(declare-datatypes ((Conc!14133 0))(
  ( (Node!14133 (left!34832 Conc!14133) (right!35162 Conc!14133) (csize!28496 Int) (cheight!14344 Int)) (Leaf!21853 (xs!17439 IArray!28271) (csize!28497 Int)) (Empty!14133) )
))
(declare-datatypes ((BalanceConc!27860 0))(
  ( (BalanceConc!27861 (c!720151 Conc!14133)) )
))
(declare-datatypes ((TokenValueInjection!15732 0))(
  ( (TokenValueInjection!15733 (toValue!10670 Int) (toChars!10529 Int)) )
))
(declare-datatypes ((Rule!15644 0))(
  ( (Rule!15645 (regex!7922 Regex!12827) (tag!8786 String!54690) (isSeparator!7922 Bool) (transformation!7922 TokenValueInjection!15732)) )
))
(declare-datatypes ((Token!14470 0))(
  ( (Token!14471 (value!246313 TokenValue!8152) (rule!11046 Rule!15644) (size!34329 Int) (originalCharacters!8266 List!46987)) )
))
(declare-datatypes ((List!46988 0))(
  ( (Nil!46864) (Cons!46864 (h!52284 Token!14470) (t!350075 List!46988)) )
))
(declare-fun tokens!581 () List!46988)

(declare-fun inv!21 (TokenValue!8152) Bool)

(assert (=> b!4238015 (= e!2631783 (and (inv!21 (value!246313 (h!52284 tokens!581))) e!2631799 tp!1298646))))

(declare-fun b!4238016 () Bool)

(declare-fun res!1742815 () Bool)

(declare-fun e!2631796 () Bool)

(assert (=> b!4238016 (=> (not res!1742815) (not e!2631796))))

(declare-fun longerInput!51 () List!46987)

(declare-fun shorterInput!51 () List!46987)

(declare-fun size!34330 (List!46987) Int)

(assert (=> b!4238016 (= res!1742815 (> (size!34330 longerInput!51) (size!34330 shorterInput!51)))))

(declare-fun tp!1298644 () Bool)

(declare-fun e!2631791 () Bool)

(declare-fun addTokens!17 () List!46988)

(declare-fun e!2631794 () Bool)

(declare-fun b!4238017 () Bool)

(assert (=> b!4238017 (= e!2631794 (and (inv!21 (value!246313 (h!52284 addTokens!17))) e!2631791 tp!1298644))))

(declare-fun b!4238018 () Bool)

(declare-fun e!2631785 () Bool)

(assert (=> b!4238018 (= e!2631796 e!2631785)))

(declare-fun res!1742820 () Bool)

(assert (=> b!4238018 (=> (not res!1742820) (not e!2631785))))

(declare-datatypes ((tuple2!44438 0))(
  ( (tuple2!44439 (_1!25353 Token!14470) (_2!25353 List!46987)) )
))
(declare-datatypes ((Option!10058 0))(
  ( (None!10057) (Some!10057 (v!41005 tuple2!44438)) )
))
(declare-fun lt!1506071 () Option!10058)

(declare-fun lt!1506072 () Option!10058)

(get-info :version)

(assert (=> b!4238018 (= res!1742820 (and ((_ is Some!10057) lt!1506071) ((_ is Some!10057) lt!1506072)))))

(declare-datatypes ((LexerInterface!7517 0))(
  ( (LexerInterfaceExt!7514 (__x!28528 Int)) (Lexer!7515) )
))
(declare-fun thiss!21540 () LexerInterface!7517)

(declare-datatypes ((List!46989 0))(
  ( (Nil!46865) (Cons!46865 (h!52285 Rule!15644) (t!350076 List!46989)) )
))
(declare-fun rules!2932 () List!46989)

(declare-fun maxPrefix!4475 (LexerInterface!7517 List!46989 List!46987) Option!10058)

(assert (=> b!4238018 (= lt!1506072 (maxPrefix!4475 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> b!4238018 (= lt!1506071 (maxPrefix!4475 thiss!21540 rules!2932 longerInput!51))))

(declare-fun b!4238019 () Bool)

(declare-fun res!1742817 () Bool)

(assert (=> b!4238019 (=> (not res!1742817) (not e!2631796))))

(declare-fun isEmpty!27699 (List!46987) Bool)

(assert (=> b!4238019 (= res!1742817 (not (isEmpty!27699 longerInput!51)))))

(declare-fun e!2631784 () Bool)

(assert (=> b!4238020 (= e!2631784 (and tp!1298656 tp!1298649))))

(declare-fun b!4238021 () Bool)

(declare-fun res!1742816 () Bool)

(assert (=> b!4238021 (=> (not res!1742816) (not e!2631796))))

(declare-fun isEmpty!27700 (List!46989) Bool)

(assert (=> b!4238021 (= res!1742816 (not (isEmpty!27700 rules!2932)))))

(declare-fun b!4238022 () Bool)

(declare-fun res!1742819 () Bool)

(assert (=> b!4238022 (=> (not res!1742819) (not e!2631796))))

(declare-fun isEmpty!27701 (List!46988) Bool)

(assert (=> b!4238022 (= res!1742819 (not (isEmpty!27701 addTokens!17)))))

(declare-fun tp!1298642 () Bool)

(declare-fun b!4238023 () Bool)

(declare-fun e!2631802 () Bool)

(declare-fun inv!61596 (Token!14470) Bool)

(assert (=> b!4238023 (= e!2631802 (and (inv!61596 (h!52284 addTokens!17)) e!2631794 tp!1298642))))

(declare-fun b!4238024 () Bool)

(declare-fun ++!11933 (List!46987 List!46987) List!46987)

(declare-fun list!16895 (BalanceConc!27860) List!46987)

(declare-fun charsOf!5276 (Token!14470) BalanceConc!27860)

(assert (=> b!4238024 (= e!2631785 (not (= (++!11933 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071)))) (_2!25353 (v!41005 lt!1506071))) longerInput!51)))))

(declare-fun tp!1298654 () Bool)

(declare-fun e!2631801 () Bool)

(declare-fun b!4238025 () Bool)

(assert (=> b!4238025 (= e!2631801 (and (inv!61596 (h!52284 tokens!581)) e!2631783 tp!1298654))))

(declare-fun b!4238026 () Bool)

(declare-fun res!1742813 () Bool)

(assert (=> b!4238026 (=> (not res!1742813) (not e!2631796))))

(declare-fun suffix!1262 () List!46987)

(declare-datatypes ((tuple2!44440 0))(
  ( (tuple2!44441 (_1!25354 List!46988) (_2!25354 List!46987)) )
))
(declare-fun lexList!2023 (LexerInterface!7517 List!46989 List!46987) tuple2!44440)

(assert (=> b!4238026 (= res!1742813 (= (lexList!2023 thiss!21540 rules!2932 longerInput!51) (tuple2!44441 tokens!581 suffix!1262)))))

(declare-fun tp!1298643 () Bool)

(declare-fun b!4238027 () Bool)

(declare-fun inv!61593 (String!54690) Bool)

(declare-fun inv!61597 (TokenValueInjection!15732) Bool)

(assert (=> b!4238027 (= e!2631789 (and tp!1298643 (inv!61593 (tag!8786 (h!52285 rules!2932))) (inv!61597 (transformation!7922 (h!52285 rules!2932))) e!2631790))))

(declare-fun tp!1298647 () Bool)

(declare-fun b!4238028 () Bool)

(assert (=> b!4238028 (= e!2631799 (and tp!1298647 (inv!61593 (tag!8786 (rule!11046 (h!52284 tokens!581)))) (inv!61597 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) e!2631784))))

(declare-fun b!4238029 () Bool)

(declare-fun e!2631786 () Bool)

(declare-fun tp!1298641 () Bool)

(assert (=> b!4238029 (= e!2631791 (and tp!1298641 (inv!61593 (tag!8786 (rule!11046 (h!52284 addTokens!17)))) (inv!61597 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) e!2631786))))

(declare-fun b!4238030 () Bool)

(declare-fun res!1742814 () Bool)

(assert (=> b!4238030 (=> (not res!1742814) (not e!2631796))))

(declare-fun rulesInvariant!6628 (LexerInterface!7517 List!46989) Bool)

(assert (=> b!4238030 (= res!1742814 (rulesInvariant!6628 thiss!21540 rules!2932))))

(declare-fun b!4238031 () Bool)

(declare-fun e!2631793 () Bool)

(declare-fun tp!1298651 () Bool)

(assert (=> b!4238031 (= e!2631793 (and tp_is_empty!22645 tp!1298651))))

(assert (=> b!4238032 (= e!2631786 (and tp!1298652 tp!1298648))))

(declare-fun b!4238033 () Bool)

(declare-fun res!1742818 () Bool)

(assert (=> b!4238033 (=> (not res!1742818) (not e!2631796))))

(declare-fun size!34331 (List!46988) Int)

(assert (=> b!4238033 (= res!1742818 (> (size!34331 addTokens!17) 0))))

(declare-fun res!1742821 () Bool)

(assert (=> start!405518 (=> (not res!1742821) (not e!2631796))))

(assert (=> start!405518 (= res!1742821 ((_ is Lexer!7515) thiss!21540))))

(assert (=> start!405518 e!2631796))

(assert (=> start!405518 true))

(assert (=> start!405518 e!2631798))

(assert (=> start!405518 e!2631802))

(declare-fun e!2631795 () Bool)

(assert (=> start!405518 e!2631795))

(assert (=> start!405518 e!2631800))

(assert (=> start!405518 e!2631801))

(assert (=> start!405518 e!2631793))

(declare-fun b!4238034 () Bool)

(declare-fun tp!1298650 () Bool)

(assert (=> b!4238034 (= e!2631795 (and tp_is_empty!22645 tp!1298650))))

(assert (= (and start!405518 res!1742821) b!4238021))

(assert (= (and b!4238021 res!1742816) b!4238030))

(assert (= (and b!4238030 res!1742814) b!4238019))

(assert (= (and b!4238019 res!1742817) b!4238016))

(assert (= (and b!4238016 res!1742815) b!4238026))

(assert (= (and b!4238026 res!1742813) b!4238022))

(assert (= (and b!4238022 res!1742819) b!4238033))

(assert (= (and b!4238033 res!1742818) b!4238018))

(assert (= (and b!4238018 res!1742820) b!4238024))

(assert (= b!4238027 b!4238014))

(assert (= b!4238012 b!4238027))

(assert (= (and start!405518 ((_ is Cons!46865) rules!2932)) b!4238012))

(assert (= b!4238029 b!4238032))

(assert (= b!4238017 b!4238029))

(assert (= b!4238023 b!4238017))

(assert (= (and start!405518 ((_ is Cons!46864) addTokens!17)) b!4238023))

(assert (= (and start!405518 ((_ is Cons!46863) shorterInput!51)) b!4238034))

(assert (= (and start!405518 ((_ is Cons!46863) suffix!1262)) b!4238013))

(assert (= b!4238028 b!4238020))

(assert (= b!4238015 b!4238028))

(assert (= b!4238025 b!4238015))

(assert (= (and start!405518 ((_ is Cons!46864) tokens!581)) b!4238025))

(assert (= (and start!405518 ((_ is Cons!46863) longerInput!51)) b!4238031))

(declare-fun m!4823253 () Bool)

(assert (=> b!4238025 m!4823253))

(declare-fun m!4823255 () Bool)

(assert (=> b!4238024 m!4823255))

(assert (=> b!4238024 m!4823255))

(declare-fun m!4823257 () Bool)

(assert (=> b!4238024 m!4823257))

(assert (=> b!4238024 m!4823257))

(declare-fun m!4823259 () Bool)

(assert (=> b!4238024 m!4823259))

(declare-fun m!4823261 () Bool)

(assert (=> b!4238027 m!4823261))

(declare-fun m!4823263 () Bool)

(assert (=> b!4238027 m!4823263))

(declare-fun m!4823265 () Bool)

(assert (=> b!4238026 m!4823265))

(declare-fun m!4823267 () Bool)

(assert (=> b!4238030 m!4823267))

(declare-fun m!4823269 () Bool)

(assert (=> b!4238018 m!4823269))

(declare-fun m!4823271 () Bool)

(assert (=> b!4238018 m!4823271))

(declare-fun m!4823273 () Bool)

(assert (=> b!4238017 m!4823273))

(declare-fun m!4823275 () Bool)

(assert (=> b!4238021 m!4823275))

(declare-fun m!4823277 () Bool)

(assert (=> b!4238016 m!4823277))

(declare-fun m!4823279 () Bool)

(assert (=> b!4238016 m!4823279))

(declare-fun m!4823281 () Bool)

(assert (=> b!4238033 m!4823281))

(declare-fun m!4823283 () Bool)

(assert (=> b!4238015 m!4823283))

(declare-fun m!4823285 () Bool)

(assert (=> b!4238028 m!4823285))

(declare-fun m!4823287 () Bool)

(assert (=> b!4238028 m!4823287))

(declare-fun m!4823289 () Bool)

(assert (=> b!4238023 m!4823289))

(declare-fun m!4823291 () Bool)

(assert (=> b!4238019 m!4823291))

(declare-fun m!4823293 () Bool)

(assert (=> b!4238022 m!4823293))

(declare-fun m!4823295 () Bool)

(assert (=> b!4238029 m!4823295))

(declare-fun m!4823297 () Bool)

(assert (=> b!4238029 m!4823297))

(check-sat (not b!4238023) (not b_next!126089) (not b!4238016) (not b_next!126093) (not b!4238012) b_and!334935 (not b!4238030) (not b!4238022) (not b!4238025) (not b!4238026) b_and!334931 (not b!4238019) b_and!334927 (not b!4238017) (not b!4238028) (not b!4238034) (not b!4238015) (not b!4238018) (not b!4238033) (not b!4238013) tp_is_empty!22645 (not b!4238021) b_and!334933 (not b_next!126097) b_and!334925 (not b_next!126091) (not b_next!126087) b_and!334929 (not b!4238031) (not b!4238027) (not b!4238029) (not b_next!126095) (not b!4238024))
(check-sat b_and!334927 (not b_next!126089) (not b_next!126093) b_and!334935 (not b_next!126095) b_and!334931 b_and!334933 (not b_next!126097) b_and!334925 (not b_next!126091) b_and!334929 (not b_next!126087))
(get-model)

(declare-fun d!1246720 () Bool)

(assert (=> d!1246720 (= (isEmpty!27699 longerInput!51) ((_ is Nil!46863) longerInput!51))))

(assert (=> b!4238019 d!1246720))

(declare-fun d!1246724 () Bool)

(declare-fun res!1742836 () Bool)

(declare-fun e!2631808 () Bool)

(assert (=> d!1246724 (=> (not res!1742836) (not e!2631808))))

(declare-fun rulesValid!3067 (LexerInterface!7517 List!46989) Bool)

(assert (=> d!1246724 (= res!1742836 (rulesValid!3067 thiss!21540 rules!2932))))

(assert (=> d!1246724 (= (rulesInvariant!6628 thiss!21540 rules!2932) e!2631808)))

(declare-fun b!4238043 () Bool)

(declare-datatypes ((List!46990 0))(
  ( (Nil!46866) (Cons!46866 (h!52286 String!54690) (t!350149 List!46990)) )
))
(declare-fun noDuplicateTag!3228 (LexerInterface!7517 List!46989 List!46990) Bool)

(assert (=> b!4238043 (= e!2631808 (noDuplicateTag!3228 thiss!21540 rules!2932 Nil!46866))))

(assert (= (and d!1246724 res!1742836) b!4238043))

(declare-fun m!4823299 () Bool)

(assert (=> d!1246724 m!4823299))

(declare-fun m!4823301 () Bool)

(assert (=> b!4238043 m!4823301))

(assert (=> b!4238030 d!1246724))

(declare-fun d!1246726 () Bool)

(assert (=> d!1246726 (= (inv!61593 (tag!8786 (rule!11046 (h!52284 tokens!581)))) (= (mod (str.len (value!246312 (tag!8786 (rule!11046 (h!52284 tokens!581))))) 2) 0))))

(assert (=> b!4238028 d!1246726))

(declare-fun d!1246728 () Bool)

(declare-fun res!1742839 () Bool)

(declare-fun e!2631814 () Bool)

(assert (=> d!1246728 (=> (not res!1742839) (not e!2631814))))

(declare-fun semiInverseModEq!3445 (Int Int) Bool)

(assert (=> d!1246728 (= res!1742839 (semiInverseModEq!3445 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toValue!10670 (transformation!7922 (rule!11046 (h!52284 tokens!581))))))))

(assert (=> d!1246728 (= (inv!61597 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) e!2631814)))

(declare-fun b!4238051 () Bool)

(declare-fun equivClasses!3344 (Int Int) Bool)

(assert (=> b!4238051 (= e!2631814 (equivClasses!3344 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toValue!10670 (transformation!7922 (rule!11046 (h!52284 tokens!581))))))))

(assert (= (and d!1246728 res!1742839) b!4238051))

(declare-fun m!4823315 () Bool)

(assert (=> d!1246728 m!4823315))

(declare-fun m!4823317 () Bool)

(assert (=> b!4238051 m!4823317))

(assert (=> b!4238028 d!1246728))

(declare-fun call!293804 () Option!10058)

(declare-fun bm!293799 () Bool)

(declare-fun maxPrefixOneRule!3446 (LexerInterface!7517 Rule!15644 List!46987) Option!10058)

(assert (=> bm!293799 (= call!293804 (maxPrefixOneRule!3446 thiss!21540 (h!52285 rules!2932) shorterInput!51))))

(declare-fun b!4238115 () Bool)

(declare-fun res!1742889 () Bool)

(declare-fun e!2631841 () Bool)

(assert (=> b!4238115 (=> (not res!1742889) (not e!2631841))))

(declare-fun lt!1506105 () Option!10058)

(declare-fun get!15239 (Option!10058) tuple2!44438)

(assert (=> b!4238115 (= res!1742889 (= (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105)))) (originalCharacters!8266 (_1!25353 (get!15239 lt!1506105)))))))

(declare-fun b!4238116 () Bool)

(declare-fun contains!9721 (List!46989 Rule!15644) Bool)

(assert (=> b!4238116 (= e!2631841 (contains!9721 rules!2932 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))))

(declare-fun b!4238117 () Bool)

(declare-fun e!2631842 () Bool)

(assert (=> b!4238117 (= e!2631842 e!2631841)))

(declare-fun res!1742891 () Bool)

(assert (=> b!4238117 (=> (not res!1742891) (not e!2631841))))

(declare-fun isDefined!7436 (Option!10058) Bool)

(assert (=> b!4238117 (= res!1742891 (isDefined!7436 lt!1506105))))

(declare-fun b!4238118 () Bool)

(declare-fun res!1742886 () Bool)

(assert (=> b!4238118 (=> (not res!1742886) (not e!2631841))))

(assert (=> b!4238118 (= res!1742886 (= (++!11933 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105)))) (_2!25353 (get!15239 lt!1506105))) shorterInput!51))))

(declare-fun b!4238119 () Bool)

(declare-fun res!1742890 () Bool)

(assert (=> b!4238119 (=> (not res!1742890) (not e!2631841))))

(declare-fun matchR!6443 (Regex!12827 List!46987) Bool)

(assert (=> b!4238119 (= res!1742890 (matchR!6443 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))) (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105))))))))

(declare-fun b!4238120 () Bool)

(declare-fun e!2631843 () Option!10058)

(declare-fun lt!1506107 () Option!10058)

(declare-fun lt!1506104 () Option!10058)

(assert (=> b!4238120 (= e!2631843 (ite (and ((_ is None!10057) lt!1506107) ((_ is None!10057) lt!1506104)) None!10057 (ite ((_ is None!10057) lt!1506104) lt!1506107 (ite ((_ is None!10057) lt!1506107) lt!1506104 (ite (>= (size!34329 (_1!25353 (v!41005 lt!1506107))) (size!34329 (_1!25353 (v!41005 lt!1506104)))) lt!1506107 lt!1506104)))))))

(assert (=> b!4238120 (= lt!1506107 call!293804)))

(assert (=> b!4238120 (= lt!1506104 (maxPrefix!4475 thiss!21540 (t!350076 rules!2932) shorterInput!51))))

(declare-fun d!1246734 () Bool)

(assert (=> d!1246734 e!2631842))

(declare-fun res!1742887 () Bool)

(assert (=> d!1246734 (=> res!1742887 e!2631842)))

(declare-fun isEmpty!27703 (Option!10058) Bool)

(assert (=> d!1246734 (= res!1742887 (isEmpty!27703 lt!1506105))))

(assert (=> d!1246734 (= lt!1506105 e!2631843)))

(declare-fun c!720160 () Bool)

(assert (=> d!1246734 (= c!720160 (and ((_ is Cons!46865) rules!2932) ((_ is Nil!46865) (t!350076 rules!2932))))))

(declare-datatypes ((Unit!65957 0))(
  ( (Unit!65958) )
))
(declare-fun lt!1506108 () Unit!65957)

(declare-fun lt!1506106 () Unit!65957)

(assert (=> d!1246734 (= lt!1506108 lt!1506106)))

(declare-fun isPrefix!4721 (List!46987 List!46987) Bool)

(assert (=> d!1246734 (isPrefix!4721 shorterInput!51 shorterInput!51)))

(declare-fun lemmaIsPrefixRefl!3118 (List!46987 List!46987) Unit!65957)

(assert (=> d!1246734 (= lt!1506106 (lemmaIsPrefixRefl!3118 shorterInput!51 shorterInput!51))))

(declare-fun rulesValidInductive!2970 (LexerInterface!7517 List!46989) Bool)

(assert (=> d!1246734 (rulesValidInductive!2970 thiss!21540 rules!2932)))

(assert (=> d!1246734 (= (maxPrefix!4475 thiss!21540 rules!2932 shorterInput!51) lt!1506105)))

(declare-fun b!4238114 () Bool)

(assert (=> b!4238114 (= e!2631843 call!293804)))

(declare-fun b!4238121 () Bool)

(declare-fun res!1742888 () Bool)

(assert (=> b!4238121 (=> (not res!1742888) (not e!2631841))))

(assert (=> b!4238121 (= res!1742888 (< (size!34330 (_2!25353 (get!15239 lt!1506105))) (size!34330 shorterInput!51)))))

(declare-fun b!4238122 () Bool)

(declare-fun res!1742885 () Bool)

(assert (=> b!4238122 (=> (not res!1742885) (not e!2631841))))

(declare-fun apply!10748 (TokenValueInjection!15732 BalanceConc!27860) TokenValue!8152)

(declare-fun seqFromList!5808 (List!46987) BalanceConc!27860)

(assert (=> b!4238122 (= res!1742885 (= (value!246313 (_1!25353 (get!15239 lt!1506105))) (apply!10748 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))) (seqFromList!5808 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506105)))))))))

(assert (= (and d!1246734 c!720160) b!4238114))

(assert (= (and d!1246734 (not c!720160)) b!4238120))

(assert (= (or b!4238114 b!4238120) bm!293799))

(assert (= (and d!1246734 (not res!1742887)) b!4238117))

(assert (= (and b!4238117 res!1742891) b!4238115))

(assert (= (and b!4238115 res!1742889) b!4238121))

(assert (= (and b!4238121 res!1742888) b!4238118))

(assert (= (and b!4238118 res!1742886) b!4238122))

(assert (= (and b!4238122 res!1742885) b!4238119))

(assert (= (and b!4238119 res!1742890) b!4238116))

(declare-fun m!4823409 () Bool)

(assert (=> b!4238120 m!4823409))

(declare-fun m!4823413 () Bool)

(assert (=> bm!293799 m!4823413))

(declare-fun m!4823417 () Bool)

(assert (=> b!4238119 m!4823417))

(declare-fun m!4823419 () Bool)

(assert (=> b!4238119 m!4823419))

(assert (=> b!4238119 m!4823419))

(declare-fun m!4823421 () Bool)

(assert (=> b!4238119 m!4823421))

(assert (=> b!4238119 m!4823421))

(declare-fun m!4823423 () Bool)

(assert (=> b!4238119 m!4823423))

(assert (=> b!4238122 m!4823417))

(declare-fun m!4823425 () Bool)

(assert (=> b!4238122 m!4823425))

(assert (=> b!4238122 m!4823425))

(declare-fun m!4823427 () Bool)

(assert (=> b!4238122 m!4823427))

(declare-fun m!4823429 () Bool)

(assert (=> b!4238117 m!4823429))

(assert (=> b!4238115 m!4823417))

(assert (=> b!4238115 m!4823419))

(assert (=> b!4238115 m!4823419))

(assert (=> b!4238115 m!4823421))

(assert (=> b!4238116 m!4823417))

(declare-fun m!4823431 () Bool)

(assert (=> b!4238116 m!4823431))

(assert (=> b!4238121 m!4823417))

(declare-fun m!4823433 () Bool)

(assert (=> b!4238121 m!4823433))

(assert (=> b!4238121 m!4823279))

(declare-fun m!4823435 () Bool)

(assert (=> d!1246734 m!4823435))

(declare-fun m!4823437 () Bool)

(assert (=> d!1246734 m!4823437))

(declare-fun m!4823439 () Bool)

(assert (=> d!1246734 m!4823439))

(declare-fun m!4823441 () Bool)

(assert (=> d!1246734 m!4823441))

(assert (=> b!4238118 m!4823417))

(assert (=> b!4238118 m!4823419))

(assert (=> b!4238118 m!4823419))

(assert (=> b!4238118 m!4823421))

(assert (=> b!4238118 m!4823421))

(declare-fun m!4823447 () Bool)

(assert (=> b!4238118 m!4823447))

(assert (=> b!4238018 d!1246734))

(declare-fun call!293806 () Option!10058)

(declare-fun bm!293801 () Bool)

(assert (=> bm!293801 (= call!293806 (maxPrefixOneRule!3446 thiss!21540 (h!52285 rules!2932) longerInput!51))))

(declare-fun b!4238141 () Bool)

(declare-fun res!1742903 () Bool)

(declare-fun e!2631851 () Bool)

(assert (=> b!4238141 (=> (not res!1742903) (not e!2631851))))

(declare-fun lt!1506119 () Option!10058)

(assert (=> b!4238141 (= res!1742903 (= (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119)))) (originalCharacters!8266 (_1!25353 (get!15239 lt!1506119)))))))

(declare-fun b!4238142 () Bool)

(assert (=> b!4238142 (= e!2631851 (contains!9721 rules!2932 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))))

(declare-fun b!4238143 () Bool)

(declare-fun e!2631852 () Bool)

(assert (=> b!4238143 (= e!2631852 e!2631851)))

(declare-fun res!1742905 () Bool)

(assert (=> b!4238143 (=> (not res!1742905) (not e!2631851))))

(assert (=> b!4238143 (= res!1742905 (isDefined!7436 lt!1506119))))

(declare-fun b!4238144 () Bool)

(declare-fun res!1742900 () Bool)

(assert (=> b!4238144 (=> (not res!1742900) (not e!2631851))))

(assert (=> b!4238144 (= res!1742900 (= (++!11933 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119)))) (_2!25353 (get!15239 lt!1506119))) longerInput!51))))

(declare-fun b!4238145 () Bool)

(declare-fun res!1742904 () Bool)

(assert (=> b!4238145 (=> (not res!1742904) (not e!2631851))))

(assert (=> b!4238145 (= res!1742904 (matchR!6443 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))) (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119))))))))

(declare-fun b!4238146 () Bool)

(declare-fun e!2631853 () Option!10058)

(declare-fun lt!1506121 () Option!10058)

(declare-fun lt!1506118 () Option!10058)

(assert (=> b!4238146 (= e!2631853 (ite (and ((_ is None!10057) lt!1506121) ((_ is None!10057) lt!1506118)) None!10057 (ite ((_ is None!10057) lt!1506118) lt!1506121 (ite ((_ is None!10057) lt!1506121) lt!1506118 (ite (>= (size!34329 (_1!25353 (v!41005 lt!1506121))) (size!34329 (_1!25353 (v!41005 lt!1506118)))) lt!1506121 lt!1506118)))))))

(assert (=> b!4238146 (= lt!1506121 call!293806)))

(assert (=> b!4238146 (= lt!1506118 (maxPrefix!4475 thiss!21540 (t!350076 rules!2932) longerInput!51))))

(declare-fun d!1246758 () Bool)

(assert (=> d!1246758 e!2631852))

(declare-fun res!1742901 () Bool)

(assert (=> d!1246758 (=> res!1742901 e!2631852)))

(assert (=> d!1246758 (= res!1742901 (isEmpty!27703 lt!1506119))))

(assert (=> d!1246758 (= lt!1506119 e!2631853)))

(declare-fun c!720166 () Bool)

(assert (=> d!1246758 (= c!720166 (and ((_ is Cons!46865) rules!2932) ((_ is Nil!46865) (t!350076 rules!2932))))))

(declare-fun lt!1506122 () Unit!65957)

(declare-fun lt!1506120 () Unit!65957)

(assert (=> d!1246758 (= lt!1506122 lt!1506120)))

(assert (=> d!1246758 (isPrefix!4721 longerInput!51 longerInput!51)))

(assert (=> d!1246758 (= lt!1506120 (lemmaIsPrefixRefl!3118 longerInput!51 longerInput!51))))

(assert (=> d!1246758 (rulesValidInductive!2970 thiss!21540 rules!2932)))

(assert (=> d!1246758 (= (maxPrefix!4475 thiss!21540 rules!2932 longerInput!51) lt!1506119)))

(declare-fun b!4238140 () Bool)

(assert (=> b!4238140 (= e!2631853 call!293806)))

(declare-fun b!4238147 () Bool)

(declare-fun res!1742902 () Bool)

(assert (=> b!4238147 (=> (not res!1742902) (not e!2631851))))

(assert (=> b!4238147 (= res!1742902 (< (size!34330 (_2!25353 (get!15239 lt!1506119))) (size!34330 longerInput!51)))))

(declare-fun b!4238148 () Bool)

(declare-fun res!1742899 () Bool)

(assert (=> b!4238148 (=> (not res!1742899) (not e!2631851))))

(assert (=> b!4238148 (= res!1742899 (= (value!246313 (_1!25353 (get!15239 lt!1506119))) (apply!10748 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))) (seqFromList!5808 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506119)))))))))

(assert (= (and d!1246758 c!720166) b!4238140))

(assert (= (and d!1246758 (not c!720166)) b!4238146))

(assert (= (or b!4238140 b!4238146) bm!293801))

(assert (= (and d!1246758 (not res!1742901)) b!4238143))

(assert (= (and b!4238143 res!1742905) b!4238141))

(assert (= (and b!4238141 res!1742903) b!4238147))

(assert (= (and b!4238147 res!1742902) b!4238144))

(assert (= (and b!4238144 res!1742900) b!4238148))

(assert (= (and b!4238148 res!1742899) b!4238145))

(assert (= (and b!4238145 res!1742904) b!4238142))

(declare-fun m!4823449 () Bool)

(assert (=> b!4238146 m!4823449))

(declare-fun m!4823451 () Bool)

(assert (=> bm!293801 m!4823451))

(declare-fun m!4823453 () Bool)

(assert (=> b!4238145 m!4823453))

(declare-fun m!4823455 () Bool)

(assert (=> b!4238145 m!4823455))

(assert (=> b!4238145 m!4823455))

(declare-fun m!4823457 () Bool)

(assert (=> b!4238145 m!4823457))

(assert (=> b!4238145 m!4823457))

(declare-fun m!4823459 () Bool)

(assert (=> b!4238145 m!4823459))

(assert (=> b!4238148 m!4823453))

(declare-fun m!4823461 () Bool)

(assert (=> b!4238148 m!4823461))

(assert (=> b!4238148 m!4823461))

(declare-fun m!4823463 () Bool)

(assert (=> b!4238148 m!4823463))

(declare-fun m!4823465 () Bool)

(assert (=> b!4238143 m!4823465))

(assert (=> b!4238141 m!4823453))

(assert (=> b!4238141 m!4823455))

(assert (=> b!4238141 m!4823455))

(assert (=> b!4238141 m!4823457))

(assert (=> b!4238142 m!4823453))

(declare-fun m!4823467 () Bool)

(assert (=> b!4238142 m!4823467))

(assert (=> b!4238147 m!4823453))

(declare-fun m!4823469 () Bool)

(assert (=> b!4238147 m!4823469))

(assert (=> b!4238147 m!4823277))

(declare-fun m!4823471 () Bool)

(assert (=> d!1246758 m!4823471))

(declare-fun m!4823473 () Bool)

(assert (=> d!1246758 m!4823473))

(declare-fun m!4823475 () Bool)

(assert (=> d!1246758 m!4823475))

(assert (=> d!1246758 m!4823441))

(assert (=> b!4238144 m!4823453))

(assert (=> b!4238144 m!4823455))

(assert (=> b!4238144 m!4823455))

(assert (=> b!4238144 m!4823457))

(assert (=> b!4238144 m!4823457))

(declare-fun m!4823477 () Bool)

(assert (=> b!4238144 m!4823477))

(assert (=> b!4238018 d!1246758))

(declare-fun d!1246760 () Bool)

(assert (=> d!1246760 (= (inv!61593 (tag!8786 (rule!11046 (h!52284 addTokens!17)))) (= (mod (str.len (value!246312 (tag!8786 (rule!11046 (h!52284 addTokens!17))))) 2) 0))))

(assert (=> b!4238029 d!1246760))

(declare-fun d!1246762 () Bool)

(declare-fun res!1742906 () Bool)

(declare-fun e!2631854 () Bool)

(assert (=> d!1246762 (=> (not res!1742906) (not e!2631854))))

(assert (=> d!1246762 (= res!1742906 (semiInverseModEq!3445 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toValue!10670 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))))))

(assert (=> d!1246762 (= (inv!61597 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) e!2631854)))

(declare-fun b!4238149 () Bool)

(assert (=> b!4238149 (= e!2631854 (equivClasses!3344 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toValue!10670 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))))))

(assert (= (and d!1246762 res!1742906) b!4238149))

(declare-fun m!4823479 () Bool)

(assert (=> d!1246762 m!4823479))

(declare-fun m!4823481 () Bool)

(assert (=> b!4238149 m!4823481))

(assert (=> b!4238029 d!1246762))

(declare-fun d!1246764 () Bool)

(declare-fun lt!1506125 () Int)

(assert (=> d!1246764 (>= lt!1506125 0)))

(declare-fun e!2631857 () Int)

(assert (=> d!1246764 (= lt!1506125 e!2631857)))

(declare-fun c!720169 () Bool)

(assert (=> d!1246764 (= c!720169 ((_ is Nil!46863) longerInput!51))))

(assert (=> d!1246764 (= (size!34330 longerInput!51) lt!1506125)))

(declare-fun b!4238154 () Bool)

(assert (=> b!4238154 (= e!2631857 0)))

(declare-fun b!4238155 () Bool)

(assert (=> b!4238155 (= e!2631857 (+ 1 (size!34330 (t!350074 longerInput!51))))))

(assert (= (and d!1246764 c!720169) b!4238154))

(assert (= (and d!1246764 (not c!720169)) b!4238155))

(declare-fun m!4823483 () Bool)

(assert (=> b!4238155 m!4823483))

(assert (=> b!4238016 d!1246764))

(declare-fun d!1246766 () Bool)

(declare-fun lt!1506126 () Int)

(assert (=> d!1246766 (>= lt!1506126 0)))

(declare-fun e!2631858 () Int)

(assert (=> d!1246766 (= lt!1506126 e!2631858)))

(declare-fun c!720170 () Bool)

(assert (=> d!1246766 (= c!720170 ((_ is Nil!46863) shorterInput!51))))

(assert (=> d!1246766 (= (size!34330 shorterInput!51) lt!1506126)))

(declare-fun b!4238156 () Bool)

(assert (=> b!4238156 (= e!2631858 0)))

(declare-fun b!4238157 () Bool)

(assert (=> b!4238157 (= e!2631858 (+ 1 (size!34330 (t!350074 shorterInput!51))))))

(assert (= (and d!1246766 c!720170) b!4238156))

(assert (= (and d!1246766 (not c!720170)) b!4238157))

(declare-fun m!4823485 () Bool)

(assert (=> b!4238157 m!4823485))

(assert (=> b!4238016 d!1246766))

(declare-fun d!1246768 () Bool)

(assert (=> d!1246768 (= (inv!61593 (tag!8786 (h!52285 rules!2932))) (= (mod (str.len (value!246312 (tag!8786 (h!52285 rules!2932)))) 2) 0))))

(assert (=> b!4238027 d!1246768))

(declare-fun d!1246770 () Bool)

(declare-fun res!1742907 () Bool)

(declare-fun e!2631861 () Bool)

(assert (=> d!1246770 (=> (not res!1742907) (not e!2631861))))

(assert (=> d!1246770 (= res!1742907 (semiInverseModEq!3445 (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toValue!10670 (transformation!7922 (h!52285 rules!2932)))))))

(assert (=> d!1246770 (= (inv!61597 (transformation!7922 (h!52285 rules!2932))) e!2631861)))

(declare-fun b!4238164 () Bool)

(assert (=> b!4238164 (= e!2631861 (equivClasses!3344 (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toValue!10670 (transformation!7922 (h!52285 rules!2932)))))))

(assert (= (and d!1246770 res!1742907) b!4238164))

(declare-fun m!4823487 () Bool)

(assert (=> d!1246770 m!4823487))

(declare-fun m!4823489 () Bool)

(assert (=> b!4238164 m!4823489))

(assert (=> b!4238027 d!1246770))

(declare-fun b!4238188 () Bool)

(declare-fun e!2631879 () Bool)

(declare-fun inv!16 (TokenValue!8152) Bool)

(assert (=> b!4238188 (= e!2631879 (inv!16 (value!246313 (h!52284 addTokens!17))))))

(declare-fun b!4238189 () Bool)

(declare-fun res!1742916 () Bool)

(declare-fun e!2631878 () Bool)

(assert (=> b!4238189 (=> res!1742916 e!2631878)))

(assert (=> b!4238189 (= res!1742916 (not ((_ is IntegerValue!24458) (value!246313 (h!52284 addTokens!17)))))))

(declare-fun e!2631880 () Bool)

(assert (=> b!4238189 (= e!2631880 e!2631878)))

(declare-fun b!4238190 () Bool)

(declare-fun inv!15 (TokenValue!8152) Bool)

(assert (=> b!4238190 (= e!2631878 (inv!15 (value!246313 (h!52284 addTokens!17))))))

(declare-fun d!1246772 () Bool)

(declare-fun c!720181 () Bool)

(assert (=> d!1246772 (= c!720181 ((_ is IntegerValue!24456) (value!246313 (h!52284 addTokens!17))))))

(assert (=> d!1246772 (= (inv!21 (value!246313 (h!52284 addTokens!17))) e!2631879)))

(declare-fun b!4238191 () Bool)

(declare-fun inv!17 (TokenValue!8152) Bool)

(assert (=> b!4238191 (= e!2631880 (inv!17 (value!246313 (h!52284 addTokens!17))))))

(declare-fun b!4238192 () Bool)

(assert (=> b!4238192 (= e!2631879 e!2631880)))

(declare-fun c!720182 () Bool)

(assert (=> b!4238192 (= c!720182 ((_ is IntegerValue!24457) (value!246313 (h!52284 addTokens!17))))))

(assert (= (and d!1246772 c!720181) b!4238188))

(assert (= (and d!1246772 (not c!720181)) b!4238192))

(assert (= (and b!4238192 c!720182) b!4238191))

(assert (= (and b!4238192 (not c!720182)) b!4238189))

(assert (= (and b!4238189 (not res!1742916)) b!4238190))

(declare-fun m!4823515 () Bool)

(assert (=> b!4238188 m!4823515))

(declare-fun m!4823517 () Bool)

(assert (=> b!4238190 m!4823517))

(declare-fun m!4823519 () Bool)

(assert (=> b!4238191 m!4823519))

(assert (=> b!4238017 d!1246772))

(declare-fun b!4238197 () Bool)

(declare-fun e!2631884 () Bool)

(assert (=> b!4238197 (= e!2631884 (inv!16 (value!246313 (h!52284 tokens!581))))))

(declare-fun b!4238199 () Bool)

(declare-fun res!1742917 () Bool)

(declare-fun e!2631883 () Bool)

(assert (=> b!4238199 (=> res!1742917 e!2631883)))

(assert (=> b!4238199 (= res!1742917 (not ((_ is IntegerValue!24458) (value!246313 (h!52284 tokens!581)))))))

(declare-fun e!2631885 () Bool)

(assert (=> b!4238199 (= e!2631885 e!2631883)))

(declare-fun b!4238202 () Bool)

(assert (=> b!4238202 (= e!2631883 (inv!15 (value!246313 (h!52284 tokens!581))))))

(declare-fun d!1246784 () Bool)

(declare-fun c!720185 () Bool)

(assert (=> d!1246784 (= c!720185 ((_ is IntegerValue!24456) (value!246313 (h!52284 tokens!581))))))

(assert (=> d!1246784 (= (inv!21 (value!246313 (h!52284 tokens!581))) e!2631884)))

(declare-fun b!4238204 () Bool)

(assert (=> b!4238204 (= e!2631885 (inv!17 (value!246313 (h!52284 tokens!581))))))

(declare-fun b!4238205 () Bool)

(assert (=> b!4238205 (= e!2631884 e!2631885)))

(declare-fun c!720186 () Bool)

(assert (=> b!4238205 (= c!720186 ((_ is IntegerValue!24457) (value!246313 (h!52284 tokens!581))))))

(assert (= (and d!1246784 c!720185) b!4238197))

(assert (= (and d!1246784 (not c!720185)) b!4238205))

(assert (= (and b!4238205 c!720186) b!4238204))

(assert (= (and b!4238205 (not c!720186)) b!4238199))

(assert (= (and b!4238199 (not res!1742917)) b!4238202))

(declare-fun m!4823521 () Bool)

(assert (=> b!4238197 m!4823521))

(declare-fun m!4823523 () Bool)

(assert (=> b!4238202 m!4823523))

(declare-fun m!4823525 () Bool)

(assert (=> b!4238204 m!4823525))

(assert (=> b!4238015 d!1246784))

(declare-fun b!4238297 () Bool)

(declare-fun e!2631956 () Bool)

(declare-fun lt!1506145 () tuple2!44440)

(assert (=> b!4238297 (= e!2631956 (= (_2!25354 lt!1506145) longerInput!51))))

(declare-fun b!4238298 () Bool)

(declare-fun e!2631958 () Bool)

(assert (=> b!4238298 (= e!2631956 e!2631958)))

(declare-fun res!1742927 () Bool)

(assert (=> b!4238298 (= res!1742927 (< (size!34330 (_2!25354 lt!1506145)) (size!34330 longerInput!51)))))

(assert (=> b!4238298 (=> (not res!1742927) (not e!2631958))))

(declare-fun b!4238299 () Bool)

(assert (=> b!4238299 (= e!2631958 (not (isEmpty!27701 (_1!25354 lt!1506145))))))

(declare-fun b!4238300 () Bool)

(declare-fun e!2631957 () tuple2!44440)

(assert (=> b!4238300 (= e!2631957 (tuple2!44441 Nil!46864 longerInput!51))))

(declare-fun b!4238301 () Bool)

(declare-fun lt!1506147 () Option!10058)

(declare-fun lt!1506146 () tuple2!44440)

(assert (=> b!4238301 (= e!2631957 (tuple2!44441 (Cons!46864 (_1!25353 (v!41005 lt!1506147)) (_1!25354 lt!1506146)) (_2!25354 lt!1506146)))))

(assert (=> b!4238301 (= lt!1506146 (lexList!2023 thiss!21540 rules!2932 (_2!25353 (v!41005 lt!1506147))))))

(declare-fun d!1246786 () Bool)

(assert (=> d!1246786 e!2631956))

(declare-fun c!720200 () Bool)

(assert (=> d!1246786 (= c!720200 (> (size!34331 (_1!25354 lt!1506145)) 0))))

(assert (=> d!1246786 (= lt!1506145 e!2631957)))

(declare-fun c!720201 () Bool)

(assert (=> d!1246786 (= c!720201 ((_ is Some!10057) lt!1506147))))

(assert (=> d!1246786 (= lt!1506147 (maxPrefix!4475 thiss!21540 rules!2932 longerInput!51))))

(assert (=> d!1246786 (= (lexList!2023 thiss!21540 rules!2932 longerInput!51) lt!1506145)))

(assert (= (and d!1246786 c!720201) b!4238301))

(assert (= (and d!1246786 (not c!720201)) b!4238300))

(assert (= (and d!1246786 c!720200) b!4238298))

(assert (= (and d!1246786 (not c!720200)) b!4238297))

(assert (= (and b!4238298 res!1742927) b!4238299))

(declare-fun m!4823565 () Bool)

(assert (=> b!4238298 m!4823565))

(assert (=> b!4238298 m!4823277))

(declare-fun m!4823567 () Bool)

(assert (=> b!4238299 m!4823567))

(declare-fun m!4823569 () Bool)

(assert (=> b!4238301 m!4823569))

(declare-fun m!4823571 () Bool)

(assert (=> d!1246786 m!4823571))

(assert (=> d!1246786 m!4823271))

(assert (=> b!4238026 d!1246786))

(declare-fun b!4238310 () Bool)

(declare-fun e!2631964 () List!46987)

(assert (=> b!4238310 (= e!2631964 (_2!25353 (v!41005 lt!1506071)))))

(declare-fun b!4238312 () Bool)

(declare-fun res!1742932 () Bool)

(declare-fun e!2631963 () Bool)

(assert (=> b!4238312 (=> (not res!1742932) (not e!2631963))))

(declare-fun lt!1506150 () List!46987)

(assert (=> b!4238312 (= res!1742932 (= (size!34330 lt!1506150) (+ (size!34330 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))) (size!34330 (_2!25353 (v!41005 lt!1506071))))))))

(declare-fun d!1246796 () Bool)

(assert (=> d!1246796 e!2631963))

(declare-fun res!1742933 () Bool)

(assert (=> d!1246796 (=> (not res!1742933) (not e!2631963))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7365 (List!46987) (InoxSet C!25852))

(assert (=> d!1246796 (= res!1742933 (= (content!7365 lt!1506150) ((_ map or) (content!7365 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))) (content!7365 (_2!25353 (v!41005 lt!1506071))))))))

(assert (=> d!1246796 (= lt!1506150 e!2631964)))

(declare-fun c!720204 () Bool)

(assert (=> d!1246796 (= c!720204 ((_ is Nil!46863) (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))))))

(assert (=> d!1246796 (= (++!11933 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071)))) (_2!25353 (v!41005 lt!1506071))) lt!1506150)))

(declare-fun b!4238311 () Bool)

(assert (=> b!4238311 (= e!2631964 (Cons!46863 (h!52283 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))) (++!11933 (t!350074 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))) (_2!25353 (v!41005 lt!1506071)))))))

(declare-fun b!4238313 () Bool)

(assert (=> b!4238313 (= e!2631963 (or (not (= (_2!25353 (v!41005 lt!1506071)) Nil!46863)) (= lt!1506150 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071)))))))))

(assert (= (and d!1246796 c!720204) b!4238310))

(assert (= (and d!1246796 (not c!720204)) b!4238311))

(assert (= (and d!1246796 res!1742933) b!4238312))

(assert (= (and b!4238312 res!1742932) b!4238313))

(declare-fun m!4823573 () Bool)

(assert (=> b!4238312 m!4823573))

(assert (=> b!4238312 m!4823257))

(declare-fun m!4823575 () Bool)

(assert (=> b!4238312 m!4823575))

(declare-fun m!4823577 () Bool)

(assert (=> b!4238312 m!4823577))

(declare-fun m!4823579 () Bool)

(assert (=> d!1246796 m!4823579))

(assert (=> d!1246796 m!4823257))

(declare-fun m!4823581 () Bool)

(assert (=> d!1246796 m!4823581))

(declare-fun m!4823583 () Bool)

(assert (=> d!1246796 m!4823583))

(declare-fun m!4823585 () Bool)

(assert (=> b!4238311 m!4823585))

(assert (=> b!4238024 d!1246796))

(declare-fun d!1246798 () Bool)

(declare-fun list!16897 (Conc!14133) List!46987)

(assert (=> d!1246798 (= (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071)))) (list!16897 (c!720151 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))))))

(declare-fun bs!598215 () Bool)

(assert (= bs!598215 d!1246798))

(declare-fun m!4823587 () Bool)

(assert (=> bs!598215 m!4823587))

(assert (=> b!4238024 d!1246798))

(declare-fun d!1246800 () Bool)

(declare-fun lt!1506153 () BalanceConc!27860)

(assert (=> d!1246800 (= (list!16895 lt!1506153) (originalCharacters!8266 (_1!25353 (v!41005 lt!1506071))))))

(declare-fun dynLambda!20086 (Int TokenValue!8152) BalanceConc!27860)

(assert (=> d!1246800 (= lt!1506153 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071)))))))

(assert (=> d!1246800 (= (charsOf!5276 (_1!25353 (v!41005 lt!1506071))) lt!1506153)))

(declare-fun b_lambda!124749 () Bool)

(assert (=> (not b_lambda!124749) (not d!1246800)))

(declare-fun t!350114 () Bool)

(declare-fun tb!254315 () Bool)

(assert (=> (and b!4238014 (= (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071)))))) t!350114) tb!254315))

(declare-fun b!4238318 () Bool)

(declare-fun e!2631967 () Bool)

(declare-fun tp!1298728 () Bool)

(declare-fun inv!61600 (Conc!14133) Bool)

(assert (=> b!4238318 (= e!2631967 (and (inv!61600 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071)))))) tp!1298728))))

(declare-fun result!310222 () Bool)

(declare-fun inv!61601 (BalanceConc!27860) Bool)

(assert (=> tb!254315 (= result!310222 (and (inv!61601 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071))))) e!2631967))))

(assert (= tb!254315 b!4238318))

(declare-fun m!4823589 () Bool)

(assert (=> b!4238318 m!4823589))

(declare-fun m!4823591 () Bool)

(assert (=> tb!254315 m!4823591))

(assert (=> d!1246800 t!350114))

(declare-fun b_and!334967 () Bool)

(assert (= b_and!334927 (and (=> t!350114 result!310222) b_and!334967)))

(declare-fun tb!254317 () Bool)

(declare-fun t!350116 () Bool)

(assert (=> (and b!4238032 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071)))))) t!350116) tb!254317))

(declare-fun result!310226 () Bool)

(assert (= result!310226 result!310222))

(assert (=> d!1246800 t!350116))

(declare-fun b_and!334969 () Bool)

(assert (= b_and!334931 (and (=> t!350116 result!310226) b_and!334969)))

(declare-fun tb!254319 () Bool)

(declare-fun t!350118 () Bool)

(assert (=> (and b!4238020 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071)))))) t!350118) tb!254319))

(declare-fun result!310228 () Bool)

(assert (= result!310228 result!310222))

(assert (=> d!1246800 t!350118))

(declare-fun b_and!334971 () Bool)

(assert (= b_and!334935 (and (=> t!350118 result!310228) b_and!334971)))

(declare-fun m!4823593 () Bool)

(assert (=> d!1246800 m!4823593))

(declare-fun m!4823595 () Bool)

(assert (=> d!1246800 m!4823595))

(assert (=> b!4238024 d!1246800))

(declare-fun d!1246802 () Bool)

(declare-fun res!1742938 () Bool)

(declare-fun e!2631970 () Bool)

(assert (=> d!1246802 (=> (not res!1742938) (not e!2631970))))

(assert (=> d!1246802 (= res!1742938 (not (isEmpty!27699 (originalCharacters!8266 (h!52284 tokens!581)))))))

(assert (=> d!1246802 (= (inv!61596 (h!52284 tokens!581)) e!2631970)))

(declare-fun b!4238323 () Bool)

(declare-fun res!1742939 () Bool)

(assert (=> b!4238323 (=> (not res!1742939) (not e!2631970))))

(assert (=> b!4238323 (= res!1742939 (= (originalCharacters!8266 (h!52284 tokens!581)) (list!16895 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581))))))))

(declare-fun b!4238324 () Bool)

(assert (=> b!4238324 (= e!2631970 (= (size!34329 (h!52284 tokens!581)) (size!34330 (originalCharacters!8266 (h!52284 tokens!581)))))))

(assert (= (and d!1246802 res!1742938) b!4238323))

(assert (= (and b!4238323 res!1742939) b!4238324))

(declare-fun b_lambda!124751 () Bool)

(assert (=> (not b_lambda!124751) (not b!4238323)))

(declare-fun tb!254321 () Bool)

(declare-fun t!350120 () Bool)

(assert (=> (and b!4238014 (= (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581))))) t!350120) tb!254321))

(declare-fun b!4238325 () Bool)

(declare-fun e!2631971 () Bool)

(declare-fun tp!1298729 () Bool)

(assert (=> b!4238325 (= e!2631971 (and (inv!61600 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581))))) tp!1298729))))

(declare-fun result!310230 () Bool)

(assert (=> tb!254321 (= result!310230 (and (inv!61601 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581)))) e!2631971))))

(assert (= tb!254321 b!4238325))

(declare-fun m!4823597 () Bool)

(assert (=> b!4238325 m!4823597))

(declare-fun m!4823599 () Bool)

(assert (=> tb!254321 m!4823599))

(assert (=> b!4238323 t!350120))

(declare-fun b_and!334973 () Bool)

(assert (= b_and!334967 (and (=> t!350120 result!310230) b_and!334973)))

(declare-fun t!350122 () Bool)

(declare-fun tb!254323 () Bool)

(assert (=> (and b!4238032 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581))))) t!350122) tb!254323))

(declare-fun result!310232 () Bool)

(assert (= result!310232 result!310230))

(assert (=> b!4238323 t!350122))

(declare-fun b_and!334975 () Bool)

(assert (= b_and!334969 (and (=> t!350122 result!310232) b_and!334975)))

(declare-fun t!350124 () Bool)

(declare-fun tb!254325 () Bool)

(assert (=> (and b!4238020 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581))))) t!350124) tb!254325))

(declare-fun result!310234 () Bool)

(assert (= result!310234 result!310230))

(assert (=> b!4238323 t!350124))

(declare-fun b_and!334977 () Bool)

(assert (= b_and!334971 (and (=> t!350124 result!310234) b_and!334977)))

(declare-fun m!4823601 () Bool)

(assert (=> d!1246802 m!4823601))

(declare-fun m!4823603 () Bool)

(assert (=> b!4238323 m!4823603))

(assert (=> b!4238323 m!4823603))

(declare-fun m!4823605 () Bool)

(assert (=> b!4238323 m!4823605))

(declare-fun m!4823607 () Bool)

(assert (=> b!4238324 m!4823607))

(assert (=> b!4238025 d!1246802))

(declare-fun d!1246804 () Bool)

(declare-fun res!1742940 () Bool)

(declare-fun e!2631972 () Bool)

(assert (=> d!1246804 (=> (not res!1742940) (not e!2631972))))

(assert (=> d!1246804 (= res!1742940 (not (isEmpty!27699 (originalCharacters!8266 (h!52284 addTokens!17)))))))

(assert (=> d!1246804 (= (inv!61596 (h!52284 addTokens!17)) e!2631972)))

(declare-fun b!4238326 () Bool)

(declare-fun res!1742941 () Bool)

(assert (=> b!4238326 (=> (not res!1742941) (not e!2631972))))

(assert (=> b!4238326 (= res!1742941 (= (originalCharacters!8266 (h!52284 addTokens!17)) (list!16895 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17))))))))

(declare-fun b!4238327 () Bool)

(assert (=> b!4238327 (= e!2631972 (= (size!34329 (h!52284 addTokens!17)) (size!34330 (originalCharacters!8266 (h!52284 addTokens!17)))))))

(assert (= (and d!1246804 res!1742940) b!4238326))

(assert (= (and b!4238326 res!1742941) b!4238327))

(declare-fun b_lambda!124753 () Bool)

(assert (=> (not b_lambda!124753) (not b!4238326)))

(declare-fun t!350126 () Bool)

(declare-fun tb!254327 () Bool)

(assert (=> (and b!4238014 (= (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) t!350126) tb!254327))

(declare-fun b!4238328 () Bool)

(declare-fun e!2631973 () Bool)

(declare-fun tp!1298730 () Bool)

(assert (=> b!4238328 (= e!2631973 (and (inv!61600 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17))))) tp!1298730))))

(declare-fun result!310236 () Bool)

(assert (=> tb!254327 (= result!310236 (and (inv!61601 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17)))) e!2631973))))

(assert (= tb!254327 b!4238328))

(declare-fun m!4823609 () Bool)

(assert (=> b!4238328 m!4823609))

(declare-fun m!4823611 () Bool)

(assert (=> tb!254327 m!4823611))

(assert (=> b!4238326 t!350126))

(declare-fun b_and!334979 () Bool)

(assert (= b_and!334973 (and (=> t!350126 result!310236) b_and!334979)))

(declare-fun t!350128 () Bool)

(declare-fun tb!254329 () Bool)

(assert (=> (and b!4238032 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) t!350128) tb!254329))

(declare-fun result!310238 () Bool)

(assert (= result!310238 result!310236))

(assert (=> b!4238326 t!350128))

(declare-fun b_and!334981 () Bool)

(assert (= b_and!334975 (and (=> t!350128 result!310238) b_and!334981)))

(declare-fun t!350130 () Bool)

(declare-fun tb!254331 () Bool)

(assert (=> (and b!4238020 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) t!350130) tb!254331))

(declare-fun result!310240 () Bool)

(assert (= result!310240 result!310236))

(assert (=> b!4238326 t!350130))

(declare-fun b_and!334983 () Bool)

(assert (= b_and!334977 (and (=> t!350130 result!310240) b_and!334983)))

(declare-fun m!4823613 () Bool)

(assert (=> d!1246804 m!4823613))

(declare-fun m!4823615 () Bool)

(assert (=> b!4238326 m!4823615))

(assert (=> b!4238326 m!4823615))

(declare-fun m!4823617 () Bool)

(assert (=> b!4238326 m!4823617))

(declare-fun m!4823619 () Bool)

(assert (=> b!4238327 m!4823619))

(assert (=> b!4238023 d!1246804))

(declare-fun d!1246806 () Bool)

(assert (=> d!1246806 (= (isEmpty!27701 addTokens!17) ((_ is Nil!46864) addTokens!17))))

(assert (=> b!4238022 d!1246806))

(declare-fun d!1246808 () Bool)

(declare-fun lt!1506156 () Int)

(assert (=> d!1246808 (>= lt!1506156 0)))

(declare-fun e!2631976 () Int)

(assert (=> d!1246808 (= lt!1506156 e!2631976)))

(declare-fun c!720207 () Bool)

(assert (=> d!1246808 (= c!720207 ((_ is Nil!46864) addTokens!17))))

(assert (=> d!1246808 (= (size!34331 addTokens!17) lt!1506156)))

(declare-fun b!4238333 () Bool)

(assert (=> b!4238333 (= e!2631976 0)))

(declare-fun b!4238334 () Bool)

(assert (=> b!4238334 (= e!2631976 (+ 1 (size!34331 (t!350075 addTokens!17))))))

(assert (= (and d!1246808 c!720207) b!4238333))

(assert (= (and d!1246808 (not c!720207)) b!4238334))

(declare-fun m!4823621 () Bool)

(assert (=> b!4238334 m!4823621))

(assert (=> b!4238033 d!1246808))

(declare-fun d!1246810 () Bool)

(assert (=> d!1246810 (= (isEmpty!27700 rules!2932) ((_ is Nil!46865) rules!2932))))

(assert (=> b!4238021 d!1246810))

(declare-fun b!4238346 () Bool)

(declare-fun e!2631979 () Bool)

(declare-fun tp!1298745 () Bool)

(declare-fun tp!1298741 () Bool)

(assert (=> b!4238346 (= e!2631979 (and tp!1298745 tp!1298741))))

(declare-fun b!4238348 () Bool)

(declare-fun tp!1298743 () Bool)

(declare-fun tp!1298742 () Bool)

(assert (=> b!4238348 (= e!2631979 (and tp!1298743 tp!1298742))))

(declare-fun b!4238345 () Bool)

(assert (=> b!4238345 (= e!2631979 tp_is_empty!22645)))

(assert (=> b!4238028 (= tp!1298647 e!2631979)))

(declare-fun b!4238347 () Bool)

(declare-fun tp!1298744 () Bool)

(assert (=> b!4238347 (= e!2631979 tp!1298744)))

(assert (= (and b!4238028 ((_ is ElementMatch!12827) (regex!7922 (rule!11046 (h!52284 tokens!581))))) b!4238345))

(assert (= (and b!4238028 ((_ is Concat!20980) (regex!7922 (rule!11046 (h!52284 tokens!581))))) b!4238346))

(assert (= (and b!4238028 ((_ is Star!12827) (regex!7922 (rule!11046 (h!52284 tokens!581))))) b!4238347))

(assert (= (and b!4238028 ((_ is Union!12827) (regex!7922 (rule!11046 (h!52284 tokens!581))))) b!4238348))

(declare-fun b!4238350 () Bool)

(declare-fun e!2631980 () Bool)

(declare-fun tp!1298750 () Bool)

(declare-fun tp!1298746 () Bool)

(assert (=> b!4238350 (= e!2631980 (and tp!1298750 tp!1298746))))

(declare-fun b!4238352 () Bool)

(declare-fun tp!1298748 () Bool)

(declare-fun tp!1298747 () Bool)

(assert (=> b!4238352 (= e!2631980 (and tp!1298748 tp!1298747))))

(declare-fun b!4238349 () Bool)

(assert (=> b!4238349 (= e!2631980 tp_is_empty!22645)))

(assert (=> b!4238029 (= tp!1298641 e!2631980)))

(declare-fun b!4238351 () Bool)

(declare-fun tp!1298749 () Bool)

(assert (=> b!4238351 (= e!2631980 tp!1298749)))

(assert (= (and b!4238029 ((_ is ElementMatch!12827) (regex!7922 (rule!11046 (h!52284 addTokens!17))))) b!4238349))

(assert (= (and b!4238029 ((_ is Concat!20980) (regex!7922 (rule!11046 (h!52284 addTokens!17))))) b!4238350))

(assert (= (and b!4238029 ((_ is Star!12827) (regex!7922 (rule!11046 (h!52284 addTokens!17))))) b!4238351))

(assert (= (and b!4238029 ((_ is Union!12827) (regex!7922 (rule!11046 (h!52284 addTokens!17))))) b!4238352))

(declare-fun b!4238354 () Bool)

(declare-fun e!2631981 () Bool)

(declare-fun tp!1298755 () Bool)

(declare-fun tp!1298751 () Bool)

(assert (=> b!4238354 (= e!2631981 (and tp!1298755 tp!1298751))))

(declare-fun b!4238356 () Bool)

(declare-fun tp!1298753 () Bool)

(declare-fun tp!1298752 () Bool)

(assert (=> b!4238356 (= e!2631981 (and tp!1298753 tp!1298752))))

(declare-fun b!4238353 () Bool)

(assert (=> b!4238353 (= e!2631981 tp_is_empty!22645)))

(assert (=> b!4238027 (= tp!1298643 e!2631981)))

(declare-fun b!4238355 () Bool)

(declare-fun tp!1298754 () Bool)

(assert (=> b!4238355 (= e!2631981 tp!1298754)))

(assert (= (and b!4238027 ((_ is ElementMatch!12827) (regex!7922 (h!52285 rules!2932)))) b!4238353))

(assert (= (and b!4238027 ((_ is Concat!20980) (regex!7922 (h!52285 rules!2932)))) b!4238354))

(assert (= (and b!4238027 ((_ is Star!12827) (regex!7922 (h!52285 rules!2932)))) b!4238355))

(assert (= (and b!4238027 ((_ is Union!12827) (regex!7922 (h!52285 rules!2932)))) b!4238356))

(declare-fun b!4238361 () Bool)

(declare-fun e!2631984 () Bool)

(declare-fun tp!1298758 () Bool)

(assert (=> b!4238361 (= e!2631984 (and tp_is_empty!22645 tp!1298758))))

(assert (=> b!4238017 (= tp!1298644 e!2631984)))

(assert (= (and b!4238017 ((_ is Cons!46863) (originalCharacters!8266 (h!52284 addTokens!17)))) b!4238361))

(declare-fun b!4238362 () Bool)

(declare-fun e!2631985 () Bool)

(declare-fun tp!1298759 () Bool)

(assert (=> b!4238362 (= e!2631985 (and tp_is_empty!22645 tp!1298759))))

(assert (=> b!4238015 (= tp!1298646 e!2631985)))

(assert (= (and b!4238015 ((_ is Cons!46863) (originalCharacters!8266 (h!52284 tokens!581)))) b!4238362))

(declare-fun b!4238376 () Bool)

(declare-fun b_free!125407 () Bool)

(declare-fun b_next!126111 () Bool)

(assert (=> b!4238376 (= b_free!125407 (not b_next!126111))))

(declare-fun tp!1298771 () Bool)

(declare-fun b_and!334985 () Bool)

(assert (=> b!4238376 (= tp!1298771 b_and!334985)))

(declare-fun b_free!125409 () Bool)

(declare-fun b_next!126113 () Bool)

(assert (=> b!4238376 (= b_free!125409 (not b_next!126113))))

(declare-fun t!350132 () Bool)

(declare-fun tb!254333 () Bool)

(assert (=> (and b!4238376 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071)))))) t!350132) tb!254333))

(declare-fun result!310248 () Bool)

(assert (= result!310248 result!310222))

(assert (=> d!1246800 t!350132))

(declare-fun t!350134 () Bool)

(declare-fun tb!254335 () Bool)

(assert (=> (and b!4238376 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581))))) t!350134) tb!254335))

(declare-fun result!310250 () Bool)

(assert (= result!310250 result!310230))

(assert (=> b!4238323 t!350134))

(declare-fun t!350136 () Bool)

(declare-fun tb!254337 () Bool)

(assert (=> (and b!4238376 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) t!350136) tb!254337))

(declare-fun result!310252 () Bool)

(assert (= result!310252 result!310236))

(assert (=> b!4238326 t!350136))

(declare-fun tp!1298772 () Bool)

(declare-fun b_and!334987 () Bool)

(assert (=> b!4238376 (= tp!1298772 (and (=> t!350132 result!310248) (=> t!350134 result!310250) (=> t!350136 result!310252) b_and!334987))))

(declare-fun e!2631998 () Bool)

(declare-fun tp!1298773 () Bool)

(declare-fun b!4238373 () Bool)

(declare-fun e!2632000 () Bool)

(assert (=> b!4238373 (= e!2632000 (and (inv!61596 (h!52284 (t!350075 tokens!581))) e!2631998 tp!1298773))))

(declare-fun e!2632002 () Bool)

(assert (=> b!4238376 (= e!2632002 (and tp!1298771 tp!1298772))))

(declare-fun e!2632003 () Bool)

(declare-fun b!4238374 () Bool)

(declare-fun tp!1298770 () Bool)

(assert (=> b!4238374 (= e!2631998 (and (inv!21 (value!246313 (h!52284 (t!350075 tokens!581)))) e!2632003 tp!1298770))))

(declare-fun b!4238375 () Bool)

(declare-fun tp!1298774 () Bool)

(assert (=> b!4238375 (= e!2632003 (and tp!1298774 (inv!61593 (tag!8786 (rule!11046 (h!52284 (t!350075 tokens!581))))) (inv!61597 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) e!2632002))))

(assert (=> b!4238025 (= tp!1298654 e!2632000)))

(assert (= b!4238375 b!4238376))

(assert (= b!4238374 b!4238375))

(assert (= b!4238373 b!4238374))

(assert (= (and b!4238025 ((_ is Cons!46864) (t!350075 tokens!581))) b!4238373))

(declare-fun m!4823623 () Bool)

(assert (=> b!4238373 m!4823623))

(declare-fun m!4823625 () Bool)

(assert (=> b!4238374 m!4823625))

(declare-fun m!4823627 () Bool)

(assert (=> b!4238375 m!4823627))

(declare-fun m!4823629 () Bool)

(assert (=> b!4238375 m!4823629))

(declare-fun b!4238387 () Bool)

(declare-fun b_free!125411 () Bool)

(declare-fun b_next!126115 () Bool)

(assert (=> b!4238387 (= b_free!125411 (not b_next!126115))))

(declare-fun tp!1298783 () Bool)

(declare-fun b_and!334989 () Bool)

(assert (=> b!4238387 (= tp!1298783 b_and!334989)))

(declare-fun b_free!125413 () Bool)

(declare-fun b_next!126117 () Bool)

(assert (=> b!4238387 (= b_free!125413 (not b_next!126117))))

(declare-fun t!350138 () Bool)

(declare-fun tb!254339 () Bool)

(assert (=> (and b!4238387 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071)))))) t!350138) tb!254339))

(declare-fun result!310256 () Bool)

(assert (= result!310256 result!310222))

(assert (=> d!1246800 t!350138))

(declare-fun tb!254341 () Bool)

(declare-fun t!350140 () Bool)

(assert (=> (and b!4238387 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581))))) t!350140) tb!254341))

(declare-fun result!310258 () Bool)

(assert (= result!310258 result!310230))

(assert (=> b!4238323 t!350140))

(declare-fun t!350142 () Bool)

(declare-fun tb!254343 () Bool)

(assert (=> (and b!4238387 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) t!350142) tb!254343))

(declare-fun result!310260 () Bool)

(assert (= result!310260 result!310236))

(assert (=> b!4238326 t!350142))

(declare-fun tp!1298786 () Bool)

(declare-fun b_and!334991 () Bool)

(assert (=> b!4238387 (= tp!1298786 (and (=> t!350138 result!310256) (=> t!350140 result!310258) (=> t!350142 result!310260) b_and!334991))))

(declare-fun e!2632012 () Bool)

(assert (=> b!4238387 (= e!2632012 (and tp!1298783 tp!1298786))))

(declare-fun tp!1298784 () Bool)

(declare-fun b!4238386 () Bool)

(declare-fun e!2632014 () Bool)

(assert (=> b!4238386 (= e!2632014 (and tp!1298784 (inv!61593 (tag!8786 (h!52285 (t!350076 rules!2932)))) (inv!61597 (transformation!7922 (h!52285 (t!350076 rules!2932)))) e!2632012))))

(declare-fun b!4238385 () Bool)

(declare-fun e!2632015 () Bool)

(declare-fun tp!1298785 () Bool)

(assert (=> b!4238385 (= e!2632015 (and e!2632014 tp!1298785))))

(assert (=> b!4238012 (= tp!1298645 e!2632015)))

(assert (= b!4238386 b!4238387))

(assert (= b!4238385 b!4238386))

(assert (= (and b!4238012 ((_ is Cons!46865) (t!350076 rules!2932))) b!4238385))

(declare-fun m!4823631 () Bool)

(assert (=> b!4238386 m!4823631))

(declare-fun m!4823633 () Bool)

(assert (=> b!4238386 m!4823633))

(declare-fun b!4238391 () Bool)

(declare-fun b_free!125415 () Bool)

(declare-fun b_next!126119 () Bool)

(assert (=> b!4238391 (= b_free!125415 (not b_next!126119))))

(declare-fun tp!1298788 () Bool)

(declare-fun b_and!334993 () Bool)

(assert (=> b!4238391 (= tp!1298788 b_and!334993)))

(declare-fun b_free!125417 () Bool)

(declare-fun b_next!126121 () Bool)

(assert (=> b!4238391 (= b_free!125417 (not b_next!126121))))

(declare-fun t!350144 () Bool)

(declare-fun tb!254345 () Bool)

(assert (=> (and b!4238391 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071)))))) t!350144) tb!254345))

(declare-fun result!310262 () Bool)

(assert (= result!310262 result!310222))

(assert (=> d!1246800 t!350144))

(declare-fun t!350146 () Bool)

(declare-fun tb!254347 () Bool)

(assert (=> (and b!4238391 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581))))) t!350146) tb!254347))

(declare-fun result!310264 () Bool)

(assert (= result!310264 result!310230))

(assert (=> b!4238323 t!350146))

(declare-fun t!350148 () Bool)

(declare-fun tb!254349 () Bool)

(assert (=> (and b!4238391 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) t!350148) tb!254349))

(declare-fun result!310266 () Bool)

(assert (= result!310266 result!310236))

(assert (=> b!4238326 t!350148))

(declare-fun b_and!334995 () Bool)

(declare-fun tp!1298789 () Bool)

(assert (=> b!4238391 (= tp!1298789 (and (=> t!350144 result!310262) (=> t!350146 result!310264) (=> t!350148 result!310266) b_and!334995))))

(declare-fun e!2632018 () Bool)

(declare-fun b!4238388 () Bool)

(declare-fun tp!1298790 () Bool)

(declare-fun e!2632016 () Bool)

(assert (=> b!4238388 (= e!2632018 (and (inv!61596 (h!52284 (t!350075 addTokens!17))) e!2632016 tp!1298790))))

(declare-fun e!2632020 () Bool)

(assert (=> b!4238391 (= e!2632020 (and tp!1298788 tp!1298789))))

(declare-fun e!2632021 () Bool)

(declare-fun b!4238389 () Bool)

(declare-fun tp!1298787 () Bool)

(assert (=> b!4238389 (= e!2632016 (and (inv!21 (value!246313 (h!52284 (t!350075 addTokens!17)))) e!2632021 tp!1298787))))

(declare-fun tp!1298791 () Bool)

(declare-fun b!4238390 () Bool)

(assert (=> b!4238390 (= e!2632021 (and tp!1298791 (inv!61593 (tag!8786 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (inv!61597 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) e!2632020))))

(assert (=> b!4238023 (= tp!1298642 e!2632018)))

(assert (= b!4238390 b!4238391))

(assert (= b!4238389 b!4238390))

(assert (= b!4238388 b!4238389))

(assert (= (and b!4238023 ((_ is Cons!46864) (t!350075 addTokens!17))) b!4238388))

(declare-fun m!4823635 () Bool)

(assert (=> b!4238388 m!4823635))

(declare-fun m!4823637 () Bool)

(assert (=> b!4238389 m!4823637))

(declare-fun m!4823639 () Bool)

(assert (=> b!4238390 m!4823639))

(declare-fun m!4823641 () Bool)

(assert (=> b!4238390 m!4823641))

(declare-fun b!4238392 () Bool)

(declare-fun e!2632022 () Bool)

(declare-fun tp!1298792 () Bool)

(assert (=> b!4238392 (= e!2632022 (and tp_is_empty!22645 tp!1298792))))

(assert (=> b!4238034 (= tp!1298650 e!2632022)))

(assert (= (and b!4238034 ((_ is Cons!46863) (t!350074 shorterInput!51))) b!4238392))

(declare-fun b!4238393 () Bool)

(declare-fun e!2632023 () Bool)

(declare-fun tp!1298793 () Bool)

(assert (=> b!4238393 (= e!2632023 (and tp_is_empty!22645 tp!1298793))))

(assert (=> b!4238013 (= tp!1298655 e!2632023)))

(assert (= (and b!4238013 ((_ is Cons!46863) (t!350074 suffix!1262))) b!4238393))

(declare-fun b!4238394 () Bool)

(declare-fun e!2632024 () Bool)

(declare-fun tp!1298794 () Bool)

(assert (=> b!4238394 (= e!2632024 (and tp_is_empty!22645 tp!1298794))))

(assert (=> b!4238031 (= tp!1298651 e!2632024)))

(assert (= (and b!4238031 ((_ is Cons!46863) (t!350074 longerInput!51))) b!4238394))

(declare-fun b_lambda!124755 () Bool)

(assert (= b_lambda!124753 (or (and b!4238387 b_free!125413 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))))) (and b!4238020 b_free!125393 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))))) (and b!4238376 b_free!125409 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))))) (and b!4238032 b_free!125389) (and b!4238391 b_free!125417 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))))) (and b!4238014 b_free!125385 (= (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))))) b_lambda!124755)))

(declare-fun b_lambda!124757 () Bool)

(assert (= b_lambda!124751 (or (and b!4238032 b_free!125389 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))))) (and b!4238387 b_free!125413 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))))) (and b!4238376 b_free!125409 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))))) (and b!4238391 b_free!125417 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))))) (and b!4238020 b_free!125393) (and b!4238014 b_free!125385 (= (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))))) b_lambda!124757)))

(check-sat (not b!4238346) (not b!4238149) (not b_next!126117) (not b!4238351) b_and!334985 (not bm!293801) (not b!4238202) (not d!1246770) (not b!4238301) (not b!4238327) (not b!4238299) (not b!4238188) (not b!4238155) (not b!4238191) (not b!4238350) (not b!4238386) (not b_next!126089) (not b!4238375) (not d!1246724) b_and!334981 (not b!4238142) (not b_lambda!124755) (not b!4238143) (not b_next!126093) b_and!334989 (not d!1246800) (not bm!293799) (not b!4238347) (not b_next!126113) (not b!4238389) (not b_next!126111) (not b!4238121) (not b!4238354) (not b!4238141) (not b!4238361) (not d!1246786) (not b!4238326) (not b!4238394) (not b!4238362) (not b!4238352) (not tb!254321) (not d!1246762) (not b!4238204) (not b_next!126121) (not b!4238373) (not d!1246798) (not b!4238388) (not b!4238197) (not b!4238323) (not b!4238318) (not b!4238051) (not b!4238190) (not tb!254327) (not b!4238148) (not b!4238348) (not b!4238145) (not tb!254315) (not b!4238385) (not b!4238325) (not b!4238116) (not b!4238298) (not b!4238374) (not b!4238115) b_and!334983 (not b!4238392) (not b!4238144) (not b!4238120) (not b!4238146) b_and!334987 (not b_lambda!124757) (not b!4238334) (not b!4238147) (not b!4238164) (not b!4238157) (not b!4238393) (not b!4238356) b_and!334995 (not b!4238117) (not b!4238390) (not d!1246804) (not b!4238312) (not b!4238311) (not b!4238043) (not b_next!126115) tp_is_empty!22645 (not d!1246802) b_and!334979 b_and!334933 (not b_next!126097) (not b_lambda!124749) (not b!4238328) (not b!4238119) (not b!4238324) b_and!334993 (not b!4238118) (not b_next!126119) (not b!4238122) b_and!334991 (not d!1246728) b_and!334925 (not b_next!126091) (not d!1246796) (not b!4238355) b_and!334929 (not b_next!126087) (not d!1246758) (not d!1246734) (not b_next!126095))
(check-sat b_and!334985 (not b_next!126089) b_and!334981 (not b_next!126117) (not b_next!126121) b_and!334983 b_and!334987 b_and!334995 (not b_next!126115) (not b_next!126095) (not b_next!126093) b_and!334989 (not b_next!126113) (not b_next!126111) b_and!334979 b_and!334933 (not b_next!126097) b_and!334993 (not b_next!126119) b_and!334991 b_and!334925 (not b_next!126091) b_and!334929 (not b_next!126087))
(get-model)

(declare-fun d!1246816 () Bool)

(assert (=> d!1246816 true))

(declare-fun lambda!130093 () Int)

(declare-fun order!24667 () Int)

(declare-fun order!24669 () Int)

(declare-fun dynLambda!20089 (Int Int) Int)

(declare-fun dynLambda!20090 (Int Int) Int)

(assert (=> d!1246816 (< (dynLambda!20089 order!24667 (toChars!10529 (transformation!7922 (h!52285 rules!2932)))) (dynLambda!20090 order!24669 lambda!130093))))

(assert (=> d!1246816 true))

(declare-fun order!24671 () Int)

(declare-fun dynLambda!20091 (Int Int) Int)

(assert (=> d!1246816 (< (dynLambda!20091 order!24671 (toValue!10670 (transformation!7922 (h!52285 rules!2932)))) (dynLambda!20090 order!24669 lambda!130093))))

(declare-fun Forall!1593 (Int) Bool)

(assert (=> d!1246816 (= (semiInverseModEq!3445 (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toValue!10670 (transformation!7922 (h!52285 rules!2932)))) (Forall!1593 lambda!130093))))

(declare-fun bs!598231 () Bool)

(assert (= bs!598231 d!1246816))

(declare-fun m!4823929 () Bool)

(assert (=> bs!598231 m!4823929))

(assert (=> d!1246770 d!1246816))

(declare-fun d!1246916 () Bool)

(assert (=> d!1246916 (= (list!16895 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581)))) (list!16897 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581))))))))

(declare-fun bs!598232 () Bool)

(assert (= bs!598232 d!1246916))

(declare-fun m!4823931 () Bool)

(assert (=> bs!598232 m!4823931))

(assert (=> b!4238323 d!1246916))

(declare-fun d!1246918 () Bool)

(assert (=> d!1246918 (= (list!16895 lt!1506153) (list!16897 (c!720151 lt!1506153)))))

(declare-fun bs!598233 () Bool)

(assert (= bs!598233 d!1246918))

(declare-fun m!4823933 () Bool)

(assert (=> bs!598233 m!4823933))

(assert (=> d!1246800 d!1246918))

(declare-fun d!1246920 () Bool)

(assert (=> d!1246920 true))

(declare-fun lt!1506217 () Bool)

(assert (=> d!1246920 (= lt!1506217 (rulesValidInductive!2970 thiss!21540 rules!2932))))

(declare-fun lambda!130096 () Int)

(declare-fun forall!8533 (List!46989 Int) Bool)

(assert (=> d!1246920 (= lt!1506217 (forall!8533 rules!2932 lambda!130096))))

(assert (=> d!1246920 (= (rulesValid!3067 thiss!21540 rules!2932) lt!1506217)))

(declare-fun bs!598235 () Bool)

(assert (= bs!598235 d!1246920))

(assert (=> bs!598235 m!4823441))

(declare-fun m!4823951 () Bool)

(assert (=> bs!598235 m!4823951))

(assert (=> d!1246724 d!1246920))

(declare-fun d!1246926 () Bool)

(declare-fun lt!1506218 () Int)

(assert (=> d!1246926 (>= lt!1506218 0)))

(declare-fun e!2632147 () Int)

(assert (=> d!1246926 (= lt!1506218 e!2632147)))

(declare-fun c!720252 () Bool)

(assert (=> d!1246926 (= c!720252 ((_ is Nil!46863) lt!1506150))))

(assert (=> d!1246926 (= (size!34330 lt!1506150) lt!1506218)))

(declare-fun b!4238619 () Bool)

(assert (=> b!4238619 (= e!2632147 0)))

(declare-fun b!4238620 () Bool)

(assert (=> b!4238620 (= e!2632147 (+ 1 (size!34330 (t!350074 lt!1506150))))))

(assert (= (and d!1246926 c!720252) b!4238619))

(assert (= (and d!1246926 (not c!720252)) b!4238620))

(declare-fun m!4823953 () Bool)

(assert (=> b!4238620 m!4823953))

(assert (=> b!4238312 d!1246926))

(declare-fun d!1246928 () Bool)

(declare-fun lt!1506219 () Int)

(assert (=> d!1246928 (>= lt!1506219 0)))

(declare-fun e!2632148 () Int)

(assert (=> d!1246928 (= lt!1506219 e!2632148)))

(declare-fun c!720253 () Bool)

(assert (=> d!1246928 (= c!720253 ((_ is Nil!46863) (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))))))

(assert (=> d!1246928 (= (size!34330 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))) lt!1506219)))

(declare-fun b!4238621 () Bool)

(assert (=> b!4238621 (= e!2632148 0)))

(declare-fun b!4238622 () Bool)

(assert (=> b!4238622 (= e!2632148 (+ 1 (size!34330 (t!350074 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))))))))

(assert (= (and d!1246928 c!720253) b!4238621))

(assert (= (and d!1246928 (not c!720253)) b!4238622))

(declare-fun m!4823955 () Bool)

(assert (=> b!4238622 m!4823955))

(assert (=> b!4238312 d!1246928))

(declare-fun d!1246930 () Bool)

(declare-fun lt!1506220 () Int)

(assert (=> d!1246930 (>= lt!1506220 0)))

(declare-fun e!2632149 () Int)

(assert (=> d!1246930 (= lt!1506220 e!2632149)))

(declare-fun c!720254 () Bool)

(assert (=> d!1246930 (= c!720254 ((_ is Nil!46863) (_2!25353 (v!41005 lt!1506071))))))

(assert (=> d!1246930 (= (size!34330 (_2!25353 (v!41005 lt!1506071))) lt!1506220)))

(declare-fun b!4238623 () Bool)

(assert (=> b!4238623 (= e!2632149 0)))

(declare-fun b!4238624 () Bool)

(assert (=> b!4238624 (= e!2632149 (+ 1 (size!34330 (t!350074 (_2!25353 (v!41005 lt!1506071))))))))

(assert (= (and d!1246930 c!720254) b!4238623))

(assert (= (and d!1246930 (not c!720254)) b!4238624))

(declare-fun m!4823959 () Bool)

(assert (=> b!4238624 m!4823959))

(assert (=> b!4238312 d!1246930))

(declare-fun b!4238667 () Bool)

(declare-fun res!1743098 () Bool)

(declare-fun e!2632173 () Bool)

(assert (=> b!4238667 (=> res!1743098 e!2632173)))

(declare-fun tail!6838 (List!46987) List!46987)

(assert (=> b!4238667 (= res!1743098 (not (isEmpty!27699 (tail!6838 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105))))))))))

(declare-fun b!4238668 () Bool)

(declare-fun e!2632175 () Bool)

(declare-fun nullable!4516 (Regex!12827) Bool)

(assert (=> b!4238668 (= e!2632175 (nullable!4516 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105))))))))

(declare-fun b!4238669 () Bool)

(declare-fun res!1743095 () Bool)

(declare-fun e!2632174 () Bool)

(assert (=> b!4238669 (=> (not res!1743095) (not e!2632174))))

(assert (=> b!4238669 (= res!1743095 (isEmpty!27699 (tail!6838 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105)))))))))

(declare-fun b!4238670 () Bool)

(declare-fun e!2632178 () Bool)

(declare-fun e!2632176 () Bool)

(assert (=> b!4238670 (= e!2632178 e!2632176)))

(declare-fun c!720265 () Bool)

(assert (=> b!4238670 (= c!720265 ((_ is EmptyLang!12827) (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105))))))))

(declare-fun bm!293810 () Bool)

(declare-fun call!293815 () Bool)

(assert (=> bm!293810 (= call!293815 (isEmpty!27699 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105))))))))

(declare-fun b!4238671 () Bool)

(declare-fun res!1743099 () Bool)

(assert (=> b!4238671 (=> (not res!1743099) (not e!2632174))))

(assert (=> b!4238671 (= res!1743099 (not call!293815))))

(declare-fun b!4238672 () Bool)

(declare-fun res!1743093 () Bool)

(declare-fun e!2632177 () Bool)

(assert (=> b!4238672 (=> res!1743093 e!2632177)))

(assert (=> b!4238672 (= res!1743093 (not ((_ is ElementMatch!12827) (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))))))

(assert (=> b!4238672 (= e!2632176 e!2632177)))

(declare-fun b!4238673 () Bool)

(declare-fun head!8985 (List!46987) C!25852)

(assert (=> b!4238673 (= e!2632174 (= (head!8985 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105))))) (c!720150 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))))))

(declare-fun b!4238674 () Bool)

(assert (=> b!4238674 (= e!2632173 (not (= (head!8985 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105))))) (c!720150 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105))))))))))

(declare-fun b!4238675 () Bool)

(declare-fun lt!1506228 () Bool)

(assert (=> b!4238675 (= e!2632176 (not lt!1506228))))

(declare-fun b!4238677 () Bool)

(declare-fun res!1743094 () Bool)

(assert (=> b!4238677 (=> res!1743094 e!2632177)))

(assert (=> b!4238677 (= res!1743094 e!2632174)))

(declare-fun res!1743097 () Bool)

(assert (=> b!4238677 (=> (not res!1743097) (not e!2632174))))

(assert (=> b!4238677 (= res!1743097 lt!1506228)))

(declare-fun b!4238678 () Bool)

(declare-fun e!2632172 () Bool)

(assert (=> b!4238678 (= e!2632172 e!2632173)))

(declare-fun res!1743100 () Bool)

(assert (=> b!4238678 (=> res!1743100 e!2632173)))

(assert (=> b!4238678 (= res!1743100 call!293815)))

(declare-fun b!4238679 () Bool)

(assert (=> b!4238679 (= e!2632177 e!2632172)))

(declare-fun res!1743096 () Bool)

(assert (=> b!4238679 (=> (not res!1743096) (not e!2632172))))

(assert (=> b!4238679 (= res!1743096 (not lt!1506228))))

(declare-fun b!4238680 () Bool)

(assert (=> b!4238680 (= e!2632178 (= lt!1506228 call!293815))))

(declare-fun d!1246934 () Bool)

(assert (=> d!1246934 e!2632178))

(declare-fun c!720264 () Bool)

(assert (=> d!1246934 (= c!720264 ((_ is EmptyExpr!12827) (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105))))))))

(assert (=> d!1246934 (= lt!1506228 e!2632175)))

(declare-fun c!720266 () Bool)

(assert (=> d!1246934 (= c!720266 (isEmpty!27699 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105))))))))

(declare-fun validRegex!5823 (Regex!12827) Bool)

(assert (=> d!1246934 (validRegex!5823 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))))

(assert (=> d!1246934 (= (matchR!6443 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))) (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105))))) lt!1506228)))

(declare-fun b!4238676 () Bool)

(declare-fun derivativeStep!3847 (Regex!12827 C!25852) Regex!12827)

(assert (=> b!4238676 (= e!2632175 (matchR!6443 (derivativeStep!3847 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))) (head!8985 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105)))))) (tail!6838 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105)))))))))

(assert (= (and d!1246934 c!720266) b!4238668))

(assert (= (and d!1246934 (not c!720266)) b!4238676))

(assert (= (and d!1246934 c!720264) b!4238680))

(assert (= (and d!1246934 (not c!720264)) b!4238670))

(assert (= (and b!4238670 c!720265) b!4238675))

(assert (= (and b!4238670 (not c!720265)) b!4238672))

(assert (= (and b!4238672 (not res!1743093)) b!4238677))

(assert (= (and b!4238677 res!1743097) b!4238671))

(assert (= (and b!4238671 res!1743099) b!4238669))

(assert (= (and b!4238669 res!1743095) b!4238673))

(assert (= (and b!4238677 (not res!1743094)) b!4238679))

(assert (= (and b!4238679 res!1743096) b!4238678))

(assert (= (and b!4238678 (not res!1743100)) b!4238667))

(assert (= (and b!4238667 (not res!1743098)) b!4238674))

(assert (= (or b!4238680 b!4238671 b!4238678) bm!293810))

(assert (=> d!1246934 m!4823421))

(declare-fun m!4824033 () Bool)

(assert (=> d!1246934 m!4824033))

(declare-fun m!4824035 () Bool)

(assert (=> d!1246934 m!4824035))

(assert (=> bm!293810 m!4823421))

(assert (=> bm!293810 m!4824033))

(assert (=> b!4238667 m!4823421))

(declare-fun m!4824039 () Bool)

(assert (=> b!4238667 m!4824039))

(assert (=> b!4238667 m!4824039))

(declare-fun m!4824041 () Bool)

(assert (=> b!4238667 m!4824041))

(assert (=> b!4238674 m!4823421))

(declare-fun m!4824043 () Bool)

(assert (=> b!4238674 m!4824043))

(declare-fun m!4824045 () Bool)

(assert (=> b!4238668 m!4824045))

(assert (=> b!4238669 m!4823421))

(assert (=> b!4238669 m!4824039))

(assert (=> b!4238669 m!4824039))

(assert (=> b!4238669 m!4824041))

(assert (=> b!4238676 m!4823421))

(assert (=> b!4238676 m!4824043))

(assert (=> b!4238676 m!4824043))

(declare-fun m!4824047 () Bool)

(assert (=> b!4238676 m!4824047))

(assert (=> b!4238676 m!4823421))

(assert (=> b!4238676 m!4824039))

(assert (=> b!4238676 m!4824047))

(assert (=> b!4238676 m!4824039))

(declare-fun m!4824049 () Bool)

(assert (=> b!4238676 m!4824049))

(assert (=> b!4238673 m!4823421))

(assert (=> b!4238673 m!4824043))

(assert (=> b!4238119 d!1246934))

(declare-fun d!1246968 () Bool)

(assert (=> d!1246968 (= (get!15239 lt!1506105) (v!41005 lt!1506105))))

(assert (=> b!4238119 d!1246968))

(declare-fun d!1246972 () Bool)

(assert (=> d!1246972 (= (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105)))) (list!16897 (c!720151 (charsOf!5276 (_1!25353 (get!15239 lt!1506105))))))))

(declare-fun bs!598247 () Bool)

(assert (= bs!598247 d!1246972))

(declare-fun m!4824057 () Bool)

(assert (=> bs!598247 m!4824057))

(assert (=> b!4238119 d!1246972))

(declare-fun d!1246976 () Bool)

(declare-fun lt!1506232 () BalanceConc!27860)

(assert (=> d!1246976 (= (list!16895 lt!1506232) (originalCharacters!8266 (_1!25353 (get!15239 lt!1506105))))))

(assert (=> d!1246976 (= lt!1506232 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105))))) (value!246313 (_1!25353 (get!15239 lt!1506105)))))))

(assert (=> d!1246976 (= (charsOf!5276 (_1!25353 (get!15239 lt!1506105))) lt!1506232)))

(declare-fun b_lambda!124769 () Bool)

(assert (=> (not b_lambda!124769) (not d!1246976)))

(declare-fun t!350213 () Bool)

(declare-fun tb!254411 () Bool)

(assert (=> (and b!4238020 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350213) tb!254411))

(declare-fun b!4238693 () Bool)

(declare-fun e!2632186 () Bool)

(declare-fun tp!1298798 () Bool)

(assert (=> b!4238693 (= e!2632186 (and (inv!61600 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105))))) (value!246313 (_1!25353 (get!15239 lt!1506105)))))) tp!1298798))))

(declare-fun result!310330 () Bool)

(assert (=> tb!254411 (= result!310330 (and (inv!61601 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105))))) (value!246313 (_1!25353 (get!15239 lt!1506105))))) e!2632186))))

(assert (= tb!254411 b!4238693))

(declare-fun m!4824061 () Bool)

(assert (=> b!4238693 m!4824061))

(declare-fun m!4824065 () Bool)

(assert (=> tb!254411 m!4824065))

(assert (=> d!1246976 t!350213))

(declare-fun b_and!335057 () Bool)

(assert (= b_and!334983 (and (=> t!350213 result!310330) b_and!335057)))

(declare-fun t!350215 () Bool)

(declare-fun tb!254413 () Bool)

(assert (=> (and b!4238376 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350215) tb!254413))

(declare-fun result!310332 () Bool)

(assert (= result!310332 result!310330))

(assert (=> d!1246976 t!350215))

(declare-fun b_and!335059 () Bool)

(assert (= b_and!334987 (and (=> t!350215 result!310332) b_and!335059)))

(declare-fun t!350217 () Bool)

(declare-fun tb!254415 () Bool)

(assert (=> (and b!4238032 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350217) tb!254415))

(declare-fun result!310334 () Bool)

(assert (= result!310334 result!310330))

(assert (=> d!1246976 t!350217))

(declare-fun b_and!335061 () Bool)

(assert (= b_and!334981 (and (=> t!350217 result!310334) b_and!335061)))

(declare-fun t!350219 () Bool)

(declare-fun tb!254417 () Bool)

(assert (=> (and b!4238391 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350219) tb!254417))

(declare-fun result!310336 () Bool)

(assert (= result!310336 result!310330))

(assert (=> d!1246976 t!350219))

(declare-fun b_and!335063 () Bool)

(assert (= b_and!334995 (and (=> t!350219 result!310336) b_and!335063)))

(declare-fun tb!254419 () Bool)

(declare-fun t!350221 () Bool)

(assert (=> (and b!4238387 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350221) tb!254419))

(declare-fun result!310338 () Bool)

(assert (= result!310338 result!310330))

(assert (=> d!1246976 t!350221))

(declare-fun b_and!335065 () Bool)

(assert (= b_and!334991 (and (=> t!350221 result!310338) b_and!335065)))

(declare-fun tb!254421 () Bool)

(declare-fun t!350223 () Bool)

(assert (=> (and b!4238014 (= (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350223) tb!254421))

(declare-fun result!310340 () Bool)

(assert (= result!310340 result!310330))

(assert (=> d!1246976 t!350223))

(declare-fun b_and!335067 () Bool)

(assert (= b_and!334979 (and (=> t!350223 result!310340) b_and!335067)))

(declare-fun m!4824069 () Bool)

(assert (=> d!1246976 m!4824069))

(declare-fun m!4824071 () Bool)

(assert (=> d!1246976 m!4824071))

(assert (=> b!4238119 d!1246976))

(declare-fun d!1246984 () Bool)

(declare-fun c!720277 () Bool)

(assert (=> d!1246984 (= c!720277 ((_ is Node!14133) (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17))))))))

(declare-fun e!2632199 () Bool)

(assert (=> d!1246984 (= (inv!61600 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17))))) e!2632199)))

(declare-fun b!4238713 () Bool)

(declare-fun inv!61604 (Conc!14133) Bool)

(assert (=> b!4238713 (= e!2632199 (inv!61604 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17))))))))

(declare-fun b!4238714 () Bool)

(declare-fun e!2632200 () Bool)

(assert (=> b!4238714 (= e!2632199 e!2632200)))

(declare-fun res!1743111 () Bool)

(assert (=> b!4238714 (= res!1743111 (not ((_ is Leaf!21853) (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17)))))))))

(assert (=> b!4238714 (=> res!1743111 e!2632200)))

(declare-fun b!4238715 () Bool)

(declare-fun inv!61605 (Conc!14133) Bool)

(assert (=> b!4238715 (= e!2632200 (inv!61605 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17))))))))

(assert (= (and d!1246984 c!720277) b!4238713))

(assert (= (and d!1246984 (not c!720277)) b!4238714))

(assert (= (and b!4238714 (not res!1743111)) b!4238715))

(declare-fun m!4824099 () Bool)

(assert (=> b!4238713 m!4824099))

(declare-fun m!4824101 () Bool)

(assert (=> b!4238715 m!4824101))

(assert (=> b!4238328 d!1246984))

(declare-fun d!1247002 () Bool)

(declare-fun lt!1506238 () Int)

(assert (=> d!1247002 (>= lt!1506238 0)))

(declare-fun e!2632201 () Int)

(assert (=> d!1247002 (= lt!1506238 e!2632201)))

(declare-fun c!720278 () Bool)

(assert (=> d!1247002 (= c!720278 ((_ is Nil!46863) (_2!25353 (get!15239 lt!1506105))))))

(assert (=> d!1247002 (= (size!34330 (_2!25353 (get!15239 lt!1506105))) lt!1506238)))

(declare-fun b!4238716 () Bool)

(assert (=> b!4238716 (= e!2632201 0)))

(declare-fun b!4238717 () Bool)

(assert (=> b!4238717 (= e!2632201 (+ 1 (size!34330 (t!350074 (_2!25353 (get!15239 lt!1506105))))))))

(assert (= (and d!1247002 c!720278) b!4238716))

(assert (= (and d!1247002 (not c!720278)) b!4238717))

(declare-fun m!4824103 () Bool)

(assert (=> b!4238717 m!4824103))

(assert (=> b!4238121 d!1247002))

(assert (=> b!4238121 d!1246968))

(assert (=> b!4238121 d!1246766))

(declare-fun d!1247004 () Bool)

(declare-fun charsToBigInt!0 (List!46986 Int) Int)

(assert (=> d!1247004 (= (inv!15 (value!246313 (h!52284 addTokens!17))) (= (charsToBigInt!0 (text!57513 (value!246313 (h!52284 addTokens!17))) 0) (value!246308 (value!246313 (h!52284 addTokens!17)))))))

(declare-fun bs!598255 () Bool)

(assert (= bs!598255 d!1247004))

(declare-fun m!4824107 () Bool)

(assert (=> bs!598255 m!4824107))

(assert (=> b!4238190 d!1247004))

(declare-fun d!1247006 () Bool)

(assert (=> d!1247006 (= (isDefined!7436 lt!1506105) (not (isEmpty!27703 lt!1506105)))))

(declare-fun bs!598256 () Bool)

(assert (= bs!598256 d!1247006))

(assert (=> bs!598256 m!4823435))

(assert (=> b!4238117 d!1247006))

(declare-fun b!4238735 () Bool)

(declare-fun e!2632213 () Bool)

(assert (=> b!4238735 (= e!2632213 (inv!16 (value!246313 (h!52284 (t!350075 tokens!581)))))))

(declare-fun b!4238736 () Bool)

(declare-fun res!1743112 () Bool)

(declare-fun e!2632212 () Bool)

(assert (=> b!4238736 (=> res!1743112 e!2632212)))

(assert (=> b!4238736 (= res!1743112 (not ((_ is IntegerValue!24458) (value!246313 (h!52284 (t!350075 tokens!581))))))))

(declare-fun e!2632214 () Bool)

(assert (=> b!4238736 (= e!2632214 e!2632212)))

(declare-fun b!4238737 () Bool)

(assert (=> b!4238737 (= e!2632212 (inv!15 (value!246313 (h!52284 (t!350075 tokens!581)))))))

(declare-fun d!1247008 () Bool)

(declare-fun c!720279 () Bool)

(assert (=> d!1247008 (= c!720279 ((_ is IntegerValue!24456) (value!246313 (h!52284 (t!350075 tokens!581)))))))

(assert (=> d!1247008 (= (inv!21 (value!246313 (h!52284 (t!350075 tokens!581)))) e!2632213)))

(declare-fun b!4238738 () Bool)

(assert (=> b!4238738 (= e!2632214 (inv!17 (value!246313 (h!52284 (t!350075 tokens!581)))))))

(declare-fun b!4238739 () Bool)

(assert (=> b!4238739 (= e!2632213 e!2632214)))

(declare-fun c!720280 () Bool)

(assert (=> b!4238739 (= c!720280 ((_ is IntegerValue!24457) (value!246313 (h!52284 (t!350075 tokens!581)))))))

(assert (= (and d!1247008 c!720279) b!4238735))

(assert (= (and d!1247008 (not c!720279)) b!4238739))

(assert (= (and b!4238739 c!720280) b!4238738))

(assert (= (and b!4238739 (not c!720280)) b!4238736))

(assert (= (and b!4238736 (not res!1743112)) b!4238737))

(declare-fun m!4824109 () Bool)

(assert (=> b!4238735 m!4824109))

(declare-fun m!4824111 () Bool)

(assert (=> b!4238737 m!4824111))

(declare-fun m!4824113 () Bool)

(assert (=> b!4238738 m!4824113))

(assert (=> b!4238374 d!1247008))

(declare-fun d!1247010 () Bool)

(assert (=> d!1247010 (= (isEmpty!27701 (_1!25354 lt!1506145)) ((_ is Nil!46864) (_1!25354 lt!1506145)))))

(assert (=> b!4238299 d!1247010))

(declare-fun d!1247012 () Bool)

(declare-fun charsToInt!0 (List!46986) (_ BitVec 32))

(assert (=> d!1247012 (= (inv!16 (value!246313 (h!52284 addTokens!17))) (= (charsToInt!0 (text!57511 (value!246313 (h!52284 addTokens!17)))) (value!246304 (value!246313 (h!52284 addTokens!17)))))))

(declare-fun bs!598257 () Bool)

(assert (= bs!598257 d!1247012))

(declare-fun m!4824123 () Bool)

(assert (=> bs!598257 m!4824123))

(assert (=> b!4238188 d!1247012))

(declare-fun b!4238748 () Bool)

(declare-fun e!2632219 () Bool)

(declare-fun lt!1506240 () tuple2!44440)

(assert (=> b!4238748 (= e!2632219 (= (_2!25354 lt!1506240) (_2!25353 (v!41005 lt!1506147))))))

(declare-fun b!4238749 () Bool)

(declare-fun e!2632221 () Bool)

(assert (=> b!4238749 (= e!2632219 e!2632221)))

(declare-fun res!1743113 () Bool)

(assert (=> b!4238749 (= res!1743113 (< (size!34330 (_2!25354 lt!1506240)) (size!34330 (_2!25353 (v!41005 lt!1506147)))))))

(assert (=> b!4238749 (=> (not res!1743113) (not e!2632221))))

(declare-fun b!4238750 () Bool)

(assert (=> b!4238750 (= e!2632221 (not (isEmpty!27701 (_1!25354 lt!1506240))))))

(declare-fun b!4238751 () Bool)

(declare-fun e!2632220 () tuple2!44440)

(assert (=> b!4238751 (= e!2632220 (tuple2!44441 Nil!46864 (_2!25353 (v!41005 lt!1506147))))))

(declare-fun b!4238752 () Bool)

(declare-fun lt!1506242 () Option!10058)

(declare-fun lt!1506241 () tuple2!44440)

(assert (=> b!4238752 (= e!2632220 (tuple2!44441 (Cons!46864 (_1!25353 (v!41005 lt!1506242)) (_1!25354 lt!1506241)) (_2!25354 lt!1506241)))))

(assert (=> b!4238752 (= lt!1506241 (lexList!2023 thiss!21540 rules!2932 (_2!25353 (v!41005 lt!1506242))))))

(declare-fun d!1247014 () Bool)

(assert (=> d!1247014 e!2632219))

(declare-fun c!720281 () Bool)

(assert (=> d!1247014 (= c!720281 (> (size!34331 (_1!25354 lt!1506240)) 0))))

(assert (=> d!1247014 (= lt!1506240 e!2632220)))

(declare-fun c!720282 () Bool)

(assert (=> d!1247014 (= c!720282 ((_ is Some!10057) lt!1506242))))

(assert (=> d!1247014 (= lt!1506242 (maxPrefix!4475 thiss!21540 rules!2932 (_2!25353 (v!41005 lt!1506147))))))

(assert (=> d!1247014 (= (lexList!2023 thiss!21540 rules!2932 (_2!25353 (v!41005 lt!1506147))) lt!1506240)))

(assert (= (and d!1247014 c!720282) b!4238752))

(assert (= (and d!1247014 (not c!720282)) b!4238751))

(assert (= (and d!1247014 c!720281) b!4238749))

(assert (= (and d!1247014 (not c!720281)) b!4238748))

(assert (= (and b!4238749 res!1743113) b!4238750))

(declare-fun m!4824125 () Bool)

(assert (=> b!4238749 m!4824125))

(declare-fun m!4824127 () Bool)

(assert (=> b!4238749 m!4824127))

(declare-fun m!4824129 () Bool)

(assert (=> b!4238750 m!4824129))

(declare-fun m!4824131 () Bool)

(assert (=> b!4238752 m!4824131))

(declare-fun m!4824133 () Bool)

(assert (=> d!1247014 m!4824133))

(declare-fun m!4824135 () Bool)

(assert (=> d!1247014 m!4824135))

(assert (=> b!4238301 d!1247014))

(declare-fun d!1247016 () Bool)

(assert (=> d!1247016 (= (isEmpty!27699 (originalCharacters!8266 (h!52284 tokens!581))) ((_ is Nil!46863) (originalCharacters!8266 (h!52284 tokens!581))))))

(assert (=> d!1246802 d!1247016))

(declare-fun b!4238756 () Bool)

(declare-fun e!2632225 () Bool)

(assert (=> b!4238756 (= e!2632225 (inv!16 (value!246313 (h!52284 (t!350075 addTokens!17)))))))

(declare-fun b!4238757 () Bool)

(declare-fun res!1743114 () Bool)

(declare-fun e!2632224 () Bool)

(assert (=> b!4238757 (=> res!1743114 e!2632224)))

(assert (=> b!4238757 (= res!1743114 (not ((_ is IntegerValue!24458) (value!246313 (h!52284 (t!350075 addTokens!17))))))))

(declare-fun e!2632226 () Bool)

(assert (=> b!4238757 (= e!2632226 e!2632224)))

(declare-fun b!4238758 () Bool)

(assert (=> b!4238758 (= e!2632224 (inv!15 (value!246313 (h!52284 (t!350075 addTokens!17)))))))

(declare-fun d!1247018 () Bool)

(declare-fun c!720283 () Bool)

(assert (=> d!1247018 (= c!720283 ((_ is IntegerValue!24456) (value!246313 (h!52284 (t!350075 addTokens!17)))))))

(assert (=> d!1247018 (= (inv!21 (value!246313 (h!52284 (t!350075 addTokens!17)))) e!2632225)))

(declare-fun b!4238759 () Bool)

(assert (=> b!4238759 (= e!2632226 (inv!17 (value!246313 (h!52284 (t!350075 addTokens!17)))))))

(declare-fun b!4238760 () Bool)

(assert (=> b!4238760 (= e!2632225 e!2632226)))

(declare-fun c!720284 () Bool)

(assert (=> b!4238760 (= c!720284 ((_ is IntegerValue!24457) (value!246313 (h!52284 (t!350075 addTokens!17)))))))

(assert (= (and d!1247018 c!720283) b!4238756))

(assert (= (and d!1247018 (not c!720283)) b!4238760))

(assert (= (and b!4238760 c!720284) b!4238759))

(assert (= (and b!4238760 (not c!720284)) b!4238757))

(assert (= (and b!4238757 (not res!1743114)) b!4238758))

(declare-fun m!4824137 () Bool)

(assert (=> b!4238756 m!4824137))

(declare-fun m!4824139 () Bool)

(assert (=> b!4238758 m!4824139))

(declare-fun m!4824141 () Bool)

(assert (=> b!4238759 m!4824141))

(assert (=> b!4238389 d!1247018))

(declare-fun d!1247020 () Bool)

(declare-fun lt!1506243 () Int)

(assert (=> d!1247020 (>= lt!1506243 0)))

(declare-fun e!2632227 () Int)

(assert (=> d!1247020 (= lt!1506243 e!2632227)))

(declare-fun c!720285 () Bool)

(assert (=> d!1247020 (= c!720285 ((_ is Nil!46863) (_2!25353 (get!15239 lt!1506119))))))

(assert (=> d!1247020 (= (size!34330 (_2!25353 (get!15239 lt!1506119))) lt!1506243)))

(declare-fun b!4238761 () Bool)

(assert (=> b!4238761 (= e!2632227 0)))

(declare-fun b!4238762 () Bool)

(assert (=> b!4238762 (= e!2632227 (+ 1 (size!34330 (t!350074 (_2!25353 (get!15239 lt!1506119))))))))

(assert (= (and d!1247020 c!720285) b!4238761))

(assert (= (and d!1247020 (not c!720285)) b!4238762))

(declare-fun m!4824149 () Bool)

(assert (=> b!4238762 m!4824149))

(assert (=> b!4238147 d!1247020))

(declare-fun d!1247022 () Bool)

(assert (=> d!1247022 (= (get!15239 lt!1506119) (v!41005 lt!1506119))))

(assert (=> b!4238147 d!1247022))

(assert (=> b!4238147 d!1246764))

(declare-fun d!1247024 () Bool)

(declare-fun c!720290 () Bool)

(assert (=> d!1247024 (= c!720290 ((_ is Empty!14133) (c!720151 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))))))

(declare-fun e!2632251 () List!46987)

(assert (=> d!1247024 (= (list!16897 (c!720151 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))) e!2632251)))

(declare-fun b!4238814 () Bool)

(declare-fun e!2632252 () List!46987)

(assert (=> b!4238814 (= e!2632251 e!2632252)))

(declare-fun c!720291 () Bool)

(assert (=> b!4238814 (= c!720291 ((_ is Leaf!21853) (c!720151 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))))))

(declare-fun b!4238813 () Bool)

(assert (=> b!4238813 (= e!2632251 Nil!46863)))

(declare-fun b!4238815 () Bool)

(declare-fun list!16899 (IArray!28271) List!46987)

(assert (=> b!4238815 (= e!2632252 (list!16899 (xs!17439 (c!720151 (charsOf!5276 (_1!25353 (v!41005 lt!1506071)))))))))

(declare-fun b!4238816 () Bool)

(assert (=> b!4238816 (= e!2632252 (++!11933 (list!16897 (left!34832 (c!720151 (charsOf!5276 (_1!25353 (v!41005 lt!1506071)))))) (list!16897 (right!35162 (c!720151 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))))))))

(assert (= (and d!1247024 c!720290) b!4238813))

(assert (= (and d!1247024 (not c!720290)) b!4238814))

(assert (= (and b!4238814 c!720291) b!4238815))

(assert (= (and b!4238814 (not c!720291)) b!4238816))

(declare-fun m!4824157 () Bool)

(assert (=> b!4238815 m!4824157))

(declare-fun m!4824159 () Bool)

(assert (=> b!4238816 m!4824159))

(declare-fun m!4824161 () Bool)

(assert (=> b!4238816 m!4824161))

(assert (=> b!4238816 m!4824159))

(assert (=> b!4238816 m!4824161))

(declare-fun m!4824163 () Bool)

(assert (=> b!4238816 m!4824163))

(assert (=> d!1246798 d!1247024))

(assert (=> b!4238115 d!1246972))

(assert (=> b!4238115 d!1246976))

(assert (=> b!4238115 d!1246968))

(declare-fun b!4238818 () Bool)

(declare-fun res!1743120 () Bool)

(declare-fun e!2632254 () Bool)

(assert (=> b!4238818 (=> res!1743120 e!2632254)))

(assert (=> b!4238818 (= res!1743120 (not (isEmpty!27699 (tail!6838 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119))))))))))

(declare-fun b!4238819 () Bool)

(declare-fun e!2632257 () Bool)

(assert (=> b!4238819 (= e!2632257 (nullable!4516 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119))))))))

(declare-fun b!4238820 () Bool)

(declare-fun res!1743117 () Bool)

(declare-fun e!2632255 () Bool)

(assert (=> b!4238820 (=> (not res!1743117) (not e!2632255))))

(assert (=> b!4238820 (= res!1743117 (isEmpty!27699 (tail!6838 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119)))))))))

(declare-fun b!4238821 () Bool)

(declare-fun e!2632260 () Bool)

(declare-fun e!2632258 () Bool)

(assert (=> b!4238821 (= e!2632260 e!2632258)))

(declare-fun c!720293 () Bool)

(assert (=> b!4238821 (= c!720293 ((_ is EmptyLang!12827) (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119))))))))

(declare-fun bm!293811 () Bool)

(declare-fun call!293816 () Bool)

(assert (=> bm!293811 (= call!293816 (isEmpty!27699 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119))))))))

(declare-fun b!4238822 () Bool)

(declare-fun res!1743121 () Bool)

(assert (=> b!4238822 (=> (not res!1743121) (not e!2632255))))

(assert (=> b!4238822 (= res!1743121 (not call!293816))))

(declare-fun b!4238823 () Bool)

(declare-fun res!1743115 () Bool)

(declare-fun e!2632259 () Bool)

(assert (=> b!4238823 (=> res!1743115 e!2632259)))

(assert (=> b!4238823 (= res!1743115 (not ((_ is ElementMatch!12827) (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))))))

(assert (=> b!4238823 (= e!2632258 e!2632259)))

(declare-fun b!4238824 () Bool)

(assert (=> b!4238824 (= e!2632255 (= (head!8985 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119))))) (c!720150 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))))))

(declare-fun b!4238825 () Bool)

(assert (=> b!4238825 (= e!2632254 (not (= (head!8985 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119))))) (c!720150 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119))))))))))

(declare-fun b!4238826 () Bool)

(declare-fun lt!1506244 () Bool)

(assert (=> b!4238826 (= e!2632258 (not lt!1506244))))

(declare-fun b!4238828 () Bool)

(declare-fun res!1743116 () Bool)

(assert (=> b!4238828 (=> res!1743116 e!2632259)))

(assert (=> b!4238828 (= res!1743116 e!2632255)))

(declare-fun res!1743119 () Bool)

(assert (=> b!4238828 (=> (not res!1743119) (not e!2632255))))

(assert (=> b!4238828 (= res!1743119 lt!1506244)))

(declare-fun b!4238829 () Bool)

(declare-fun e!2632253 () Bool)

(assert (=> b!4238829 (= e!2632253 e!2632254)))

(declare-fun res!1743122 () Bool)

(assert (=> b!4238829 (=> res!1743122 e!2632254)))

(assert (=> b!4238829 (= res!1743122 call!293816)))

(declare-fun b!4238830 () Bool)

(assert (=> b!4238830 (= e!2632259 e!2632253)))

(declare-fun res!1743118 () Bool)

(assert (=> b!4238830 (=> (not res!1743118) (not e!2632253))))

(assert (=> b!4238830 (= res!1743118 (not lt!1506244))))

(declare-fun b!4238831 () Bool)

(assert (=> b!4238831 (= e!2632260 (= lt!1506244 call!293816))))

(declare-fun d!1247026 () Bool)

(assert (=> d!1247026 e!2632260))

(declare-fun c!720292 () Bool)

(assert (=> d!1247026 (= c!720292 ((_ is EmptyExpr!12827) (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119))))))))

(assert (=> d!1247026 (= lt!1506244 e!2632257)))

(declare-fun c!720294 () Bool)

(assert (=> d!1247026 (= c!720294 (isEmpty!27699 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119))))))))

(assert (=> d!1247026 (validRegex!5823 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))))

(assert (=> d!1247026 (= (matchR!6443 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))) (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119))))) lt!1506244)))

(declare-fun b!4238827 () Bool)

(assert (=> b!4238827 (= e!2632257 (matchR!6443 (derivativeStep!3847 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))) (head!8985 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119)))))) (tail!6838 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119)))))))))

(assert (= (and d!1247026 c!720294) b!4238819))

(assert (= (and d!1247026 (not c!720294)) b!4238827))

(assert (= (and d!1247026 c!720292) b!4238831))

(assert (= (and d!1247026 (not c!720292)) b!4238821))

(assert (= (and b!4238821 c!720293) b!4238826))

(assert (= (and b!4238821 (not c!720293)) b!4238823))

(assert (= (and b!4238823 (not res!1743115)) b!4238828))

(assert (= (and b!4238828 res!1743119) b!4238822))

(assert (= (and b!4238822 res!1743121) b!4238820))

(assert (= (and b!4238820 res!1743117) b!4238824))

(assert (= (and b!4238828 (not res!1743116)) b!4238830))

(assert (= (and b!4238830 res!1743118) b!4238829))

(assert (= (and b!4238829 (not res!1743122)) b!4238818))

(assert (= (and b!4238818 (not res!1743120)) b!4238825))

(assert (= (or b!4238831 b!4238822 b!4238829) bm!293811))

(assert (=> d!1247026 m!4823457))

(declare-fun m!4824173 () Bool)

(assert (=> d!1247026 m!4824173))

(declare-fun m!4824175 () Bool)

(assert (=> d!1247026 m!4824175))

(assert (=> bm!293811 m!4823457))

(assert (=> bm!293811 m!4824173))

(assert (=> b!4238818 m!4823457))

(declare-fun m!4824177 () Bool)

(assert (=> b!4238818 m!4824177))

(assert (=> b!4238818 m!4824177))

(declare-fun m!4824179 () Bool)

(assert (=> b!4238818 m!4824179))

(assert (=> b!4238825 m!4823457))

(declare-fun m!4824185 () Bool)

(assert (=> b!4238825 m!4824185))

(declare-fun m!4824189 () Bool)

(assert (=> b!4238819 m!4824189))

(assert (=> b!4238820 m!4823457))

(assert (=> b!4238820 m!4824177))

(assert (=> b!4238820 m!4824177))

(assert (=> b!4238820 m!4824179))

(assert (=> b!4238827 m!4823457))

(assert (=> b!4238827 m!4824185))

(assert (=> b!4238827 m!4824185))

(declare-fun m!4824191 () Bool)

(assert (=> b!4238827 m!4824191))

(assert (=> b!4238827 m!4823457))

(assert (=> b!4238827 m!4824177))

(assert (=> b!4238827 m!4824191))

(assert (=> b!4238827 m!4824177))

(declare-fun m!4824193 () Bool)

(assert (=> b!4238827 m!4824193))

(assert (=> b!4238824 m!4823457))

(assert (=> b!4238824 m!4824185))

(assert (=> b!4238145 d!1247026))

(assert (=> b!4238145 d!1247022))

(declare-fun d!1247028 () Bool)

(assert (=> d!1247028 (= (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119)))) (list!16897 (c!720151 (charsOf!5276 (_1!25353 (get!15239 lt!1506119))))))))

(declare-fun bs!598258 () Bool)

(assert (= bs!598258 d!1247028))

(declare-fun m!4824195 () Bool)

(assert (=> bs!598258 m!4824195))

(assert (=> b!4238145 d!1247028))

(declare-fun d!1247030 () Bool)

(declare-fun lt!1506245 () BalanceConc!27860)

(assert (=> d!1247030 (= (list!16895 lt!1506245) (originalCharacters!8266 (_1!25353 (get!15239 lt!1506119))))))

(assert (=> d!1247030 (= lt!1506245 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119))))) (value!246313 (_1!25353 (get!15239 lt!1506119)))))))

(assert (=> d!1247030 (= (charsOf!5276 (_1!25353 (get!15239 lt!1506119))) lt!1506245)))

(declare-fun b_lambda!124773 () Bool)

(assert (=> (not b_lambda!124773) (not d!1247030)))

(declare-fun tb!254475 () Bool)

(declare-fun t!350278 () Bool)

(assert (=> (and b!4238020 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350278) tb!254475))

(declare-fun b!4238868 () Bool)

(declare-fun e!2632276 () Bool)

(declare-fun tp!1298926 () Bool)

(assert (=> b!4238868 (= e!2632276 (and (inv!61600 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119))))) (value!246313 (_1!25353 (get!15239 lt!1506119)))))) tp!1298926))))

(declare-fun result!310396 () Bool)

(assert (=> tb!254475 (= result!310396 (and (inv!61601 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119))))) (value!246313 (_1!25353 (get!15239 lt!1506119))))) e!2632276))))

(assert (= tb!254475 b!4238868))

(declare-fun m!4824197 () Bool)

(assert (=> b!4238868 m!4824197))

(declare-fun m!4824199 () Bool)

(assert (=> tb!254475 m!4824199))

(assert (=> d!1247030 t!350278))

(declare-fun b_and!335093 () Bool)

(assert (= b_and!335057 (and (=> t!350278 result!310396) b_and!335093)))

(declare-fun tb!254485 () Bool)

(declare-fun t!350288 () Bool)

(assert (=> (and b!4238391 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350288) tb!254485))

(declare-fun result!310406 () Bool)

(assert (= result!310406 result!310396))

(assert (=> d!1247030 t!350288))

(declare-fun b_and!335095 () Bool)

(assert (= b_and!335063 (and (=> t!350288 result!310406) b_and!335095)))

(declare-fun tb!254491 () Bool)

(declare-fun t!350294 () Bool)

(assert (=> (and b!4238032 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350294) tb!254491))

(declare-fun result!310410 () Bool)

(assert (= result!310410 result!310396))

(assert (=> d!1247030 t!350294))

(declare-fun b_and!335097 () Bool)

(assert (= b_and!335061 (and (=> t!350294 result!310410) b_and!335097)))

(declare-fun t!350296 () Bool)

(declare-fun tb!254493 () Bool)

(assert (=> (and b!4238014 (= (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350296) tb!254493))

(declare-fun result!310414 () Bool)

(assert (= result!310414 result!310396))

(assert (=> d!1247030 t!350296))

(declare-fun b_and!335099 () Bool)

(assert (= b_and!335067 (and (=> t!350296 result!310414) b_and!335099)))

(declare-fun t!350300 () Bool)

(declare-fun tb!254497 () Bool)

(assert (=> (and b!4238376 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350300) tb!254497))

(declare-fun result!310418 () Bool)

(assert (= result!310418 result!310396))

(assert (=> d!1247030 t!350300))

(declare-fun b_and!335101 () Bool)

(assert (= b_and!335059 (and (=> t!350300 result!310418) b_and!335101)))

(declare-fun tb!254499 () Bool)

(declare-fun t!350302 () Bool)

(assert (=> (and b!4238387 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350302) tb!254499))

(declare-fun result!310420 () Bool)

(assert (= result!310420 result!310396))

(assert (=> d!1247030 t!350302))

(declare-fun b_and!335103 () Bool)

(assert (= b_and!335065 (and (=> t!350302 result!310420) b_and!335103)))

(declare-fun m!4824201 () Bool)

(assert (=> d!1247030 m!4824201))

(declare-fun m!4824203 () Bool)

(assert (=> d!1247030 m!4824203))

(assert (=> b!4238145 d!1247030))

(declare-fun d!1247032 () Bool)

(assert (=> d!1247032 (= (isEmpty!27703 lt!1506105) (not ((_ is Some!10057) lt!1506105)))))

(assert (=> d!1246734 d!1247032))

(declare-fun d!1247034 () Bool)

(declare-fun e!2632283 () Bool)

(assert (=> d!1247034 e!2632283))

(declare-fun res!1743134 () Bool)

(assert (=> d!1247034 (=> res!1743134 e!2632283)))

(declare-fun lt!1506248 () Bool)

(assert (=> d!1247034 (= res!1743134 (not lt!1506248))))

(declare-fun e!2632284 () Bool)

(assert (=> d!1247034 (= lt!1506248 e!2632284)))

(declare-fun res!1743131 () Bool)

(assert (=> d!1247034 (=> res!1743131 e!2632284)))

(assert (=> d!1247034 (= res!1743131 ((_ is Nil!46863) shorterInput!51))))

(assert (=> d!1247034 (= (isPrefix!4721 shorterInput!51 shorterInput!51) lt!1506248)))

(declare-fun b!4238879 () Bool)

(declare-fun e!2632285 () Bool)

(assert (=> b!4238879 (= e!2632285 (isPrefix!4721 (tail!6838 shorterInput!51) (tail!6838 shorterInput!51)))))

(declare-fun b!4238880 () Bool)

(assert (=> b!4238880 (= e!2632283 (>= (size!34330 shorterInput!51) (size!34330 shorterInput!51)))))

(declare-fun b!4238877 () Bool)

(assert (=> b!4238877 (= e!2632284 e!2632285)))

(declare-fun res!1743133 () Bool)

(assert (=> b!4238877 (=> (not res!1743133) (not e!2632285))))

(assert (=> b!4238877 (= res!1743133 (not ((_ is Nil!46863) shorterInput!51)))))

(declare-fun b!4238878 () Bool)

(declare-fun res!1743132 () Bool)

(assert (=> b!4238878 (=> (not res!1743132) (not e!2632285))))

(assert (=> b!4238878 (= res!1743132 (= (head!8985 shorterInput!51) (head!8985 shorterInput!51)))))

(assert (= (and d!1247034 (not res!1743131)) b!4238877))

(assert (= (and b!4238877 res!1743133) b!4238878))

(assert (= (and b!4238878 res!1743132) b!4238879))

(assert (= (and d!1247034 (not res!1743134)) b!4238880))

(declare-fun m!4824209 () Bool)

(assert (=> b!4238879 m!4824209))

(assert (=> b!4238879 m!4824209))

(assert (=> b!4238879 m!4824209))

(assert (=> b!4238879 m!4824209))

(declare-fun m!4824211 () Bool)

(assert (=> b!4238879 m!4824211))

(assert (=> b!4238880 m!4823279))

(assert (=> b!4238880 m!4823279))

(declare-fun m!4824213 () Bool)

(assert (=> b!4238878 m!4824213))

(assert (=> b!4238878 m!4824213))

(assert (=> d!1246734 d!1247034))

(declare-fun d!1247036 () Bool)

(assert (=> d!1247036 (isPrefix!4721 shorterInput!51 shorterInput!51)))

(declare-fun lt!1506251 () Unit!65957)

(declare-fun choose!25943 (List!46987 List!46987) Unit!65957)

(assert (=> d!1247036 (= lt!1506251 (choose!25943 shorterInput!51 shorterInput!51))))

(assert (=> d!1247036 (= (lemmaIsPrefixRefl!3118 shorterInput!51 shorterInput!51) lt!1506251)))

(declare-fun bs!598259 () Bool)

(assert (= bs!598259 d!1247036))

(assert (=> bs!598259 m!4823437))

(declare-fun m!4824215 () Bool)

(assert (=> bs!598259 m!4824215))

(assert (=> d!1246734 d!1247036))

(declare-fun bs!598260 () Bool)

(declare-fun d!1247038 () Bool)

(assert (= bs!598260 (and d!1247038 d!1246920)))

(declare-fun lambda!130104 () Int)

(assert (=> bs!598260 (= lambda!130104 lambda!130096)))

(assert (=> d!1247038 true))

(declare-fun lt!1506254 () Bool)

(assert (=> d!1247038 (= lt!1506254 (forall!8533 rules!2932 lambda!130104))))

(declare-fun e!2632290 () Bool)

(assert (=> d!1247038 (= lt!1506254 e!2632290)))

(declare-fun res!1743139 () Bool)

(assert (=> d!1247038 (=> res!1743139 e!2632290)))

(assert (=> d!1247038 (= res!1743139 (not ((_ is Cons!46865) rules!2932)))))

(assert (=> d!1247038 (= (rulesValidInductive!2970 thiss!21540 rules!2932) lt!1506254)))

(declare-fun b!4238885 () Bool)

(declare-fun e!2632291 () Bool)

(assert (=> b!4238885 (= e!2632290 e!2632291)))

(declare-fun res!1743140 () Bool)

(assert (=> b!4238885 (=> (not res!1743140) (not e!2632291))))

(declare-fun ruleValid!3598 (LexerInterface!7517 Rule!15644) Bool)

(assert (=> b!4238885 (= res!1743140 (ruleValid!3598 thiss!21540 (h!52285 rules!2932)))))

(declare-fun b!4238886 () Bool)

(assert (=> b!4238886 (= e!2632291 (rulesValidInductive!2970 thiss!21540 (t!350076 rules!2932)))))

(assert (= (and d!1247038 (not res!1743139)) b!4238885))

(assert (= (and b!4238885 res!1743140) b!4238886))

(declare-fun m!4824217 () Bool)

(assert (=> d!1247038 m!4824217))

(declare-fun m!4824219 () Bool)

(assert (=> b!4238885 m!4824219))

(declare-fun m!4824221 () Bool)

(assert (=> b!4238886 m!4824221))

(assert (=> d!1246734 d!1247038))

(declare-fun b!4238905 () Bool)

(declare-fun e!2632302 () Bool)

(declare-fun lt!1506269 () Option!10058)

(assert (=> b!4238905 (= e!2632302 (= (size!34329 (_1!25353 (get!15239 lt!1506269))) (size!34330 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506269))))))))

(declare-fun b!4238906 () Bool)

(declare-fun res!1743156 () Bool)

(assert (=> b!4238906 (=> (not res!1743156) (not e!2632302))))

(assert (=> b!4238906 (= res!1743156 (< (size!34330 (_2!25353 (get!15239 lt!1506269))) (size!34330 shorterInput!51)))))

(declare-fun b!4238907 () Bool)

(declare-fun e!2632301 () Option!10058)

(declare-datatypes ((tuple2!44444 0))(
  ( (tuple2!44445 (_1!25356 List!46987) (_2!25356 List!46987)) )
))
(declare-fun lt!1506268 () tuple2!44444)

(declare-fun size!34333 (BalanceConc!27860) Int)

(assert (=> b!4238907 (= e!2632301 (Some!10057 (tuple2!44439 (Token!14471 (apply!10748 (transformation!7922 (h!52285 rules!2932)) (seqFromList!5808 (_1!25356 lt!1506268))) (h!52285 rules!2932) (size!34333 (seqFromList!5808 (_1!25356 lt!1506268))) (_1!25356 lt!1506268)) (_2!25356 lt!1506268))))))

(declare-fun lt!1506265 () Unit!65957)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1665 (Regex!12827 List!46987) Unit!65957)

(assert (=> b!4238907 (= lt!1506265 (longestMatchIsAcceptedByMatchOrIsEmpty!1665 (regex!7922 (h!52285 rules!2932)) shorterInput!51))))

(declare-fun res!1743159 () Bool)

(declare-fun findLongestMatchInner!1702 (Regex!12827 List!46987 Int List!46987 List!46987 Int) tuple2!44444)

(assert (=> b!4238907 (= res!1743159 (isEmpty!27699 (_1!25356 (findLongestMatchInner!1702 (regex!7922 (h!52285 rules!2932)) Nil!46863 (size!34330 Nil!46863) shorterInput!51 shorterInput!51 (size!34330 shorterInput!51)))))))

(declare-fun e!2632303 () Bool)

(assert (=> b!4238907 (=> res!1743159 e!2632303)))

(assert (=> b!4238907 e!2632303))

(declare-fun lt!1506266 () Unit!65957)

(assert (=> b!4238907 (= lt!1506266 lt!1506265)))

(declare-fun lt!1506267 () Unit!65957)

(declare-fun lemmaSemiInverse!2533 (TokenValueInjection!15732 BalanceConc!27860) Unit!65957)

(assert (=> b!4238907 (= lt!1506267 (lemmaSemiInverse!2533 (transformation!7922 (h!52285 rules!2932)) (seqFromList!5808 (_1!25356 lt!1506268))))))

(declare-fun b!4238908 () Bool)

(assert (=> b!4238908 (= e!2632301 None!10057)))

(declare-fun b!4238909 () Bool)

(assert (=> b!4238909 (= e!2632303 (matchR!6443 (regex!7922 (h!52285 rules!2932)) (_1!25356 (findLongestMatchInner!1702 (regex!7922 (h!52285 rules!2932)) Nil!46863 (size!34330 Nil!46863) shorterInput!51 shorterInput!51 (size!34330 shorterInput!51)))))))

(declare-fun d!1247040 () Bool)

(declare-fun e!2632300 () Bool)

(assert (=> d!1247040 e!2632300))

(declare-fun res!1743158 () Bool)

(assert (=> d!1247040 (=> res!1743158 e!2632300)))

(assert (=> d!1247040 (= res!1743158 (isEmpty!27703 lt!1506269))))

(assert (=> d!1247040 (= lt!1506269 e!2632301)))

(declare-fun c!720297 () Bool)

(assert (=> d!1247040 (= c!720297 (isEmpty!27699 (_1!25356 lt!1506268)))))

(declare-fun findLongestMatch!1605 (Regex!12827 List!46987) tuple2!44444)

(assert (=> d!1247040 (= lt!1506268 (findLongestMatch!1605 (regex!7922 (h!52285 rules!2932)) shorterInput!51))))

(assert (=> d!1247040 (ruleValid!3598 thiss!21540 (h!52285 rules!2932))))

(assert (=> d!1247040 (= (maxPrefixOneRule!3446 thiss!21540 (h!52285 rules!2932) shorterInput!51) lt!1506269)))

(declare-fun b!4238910 () Bool)

(declare-fun res!1743161 () Bool)

(assert (=> b!4238910 (=> (not res!1743161) (not e!2632302))))

(assert (=> b!4238910 (= res!1743161 (= (value!246313 (_1!25353 (get!15239 lt!1506269))) (apply!10748 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506269)))) (seqFromList!5808 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506269)))))))))

(declare-fun b!4238911 () Bool)

(declare-fun res!1743155 () Bool)

(assert (=> b!4238911 (=> (not res!1743155) (not e!2632302))))

(assert (=> b!4238911 (= res!1743155 (= (rule!11046 (_1!25353 (get!15239 lt!1506269))) (h!52285 rules!2932)))))

(declare-fun b!4238912 () Bool)

(declare-fun res!1743160 () Bool)

(assert (=> b!4238912 (=> (not res!1743160) (not e!2632302))))

(assert (=> b!4238912 (= res!1743160 (= (++!11933 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506269)))) (_2!25353 (get!15239 lt!1506269))) shorterInput!51))))

(declare-fun b!4238913 () Bool)

(assert (=> b!4238913 (= e!2632300 e!2632302)))

(declare-fun res!1743157 () Bool)

(assert (=> b!4238913 (=> (not res!1743157) (not e!2632302))))

(assert (=> b!4238913 (= res!1743157 (matchR!6443 (regex!7922 (h!52285 rules!2932)) (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506269))))))))

(assert (= (and d!1247040 c!720297) b!4238908))

(assert (= (and d!1247040 (not c!720297)) b!4238907))

(assert (= (and b!4238907 (not res!1743159)) b!4238909))

(assert (= (and d!1247040 (not res!1743158)) b!4238913))

(assert (= (and b!4238913 res!1743157) b!4238912))

(assert (= (and b!4238912 res!1743160) b!4238906))

(assert (= (and b!4238906 res!1743156) b!4238911))

(assert (= (and b!4238911 res!1743155) b!4238910))

(assert (= (and b!4238910 res!1743161) b!4238905))

(declare-fun m!4824223 () Bool)

(assert (=> b!4238907 m!4824223))

(declare-fun m!4824225 () Bool)

(assert (=> b!4238907 m!4824225))

(declare-fun m!4824227 () Bool)

(assert (=> b!4238907 m!4824227))

(assert (=> b!4238907 m!4824227))

(declare-fun m!4824229 () Bool)

(assert (=> b!4238907 m!4824229))

(declare-fun m!4824231 () Bool)

(assert (=> b!4238907 m!4824231))

(assert (=> b!4238907 m!4823279))

(declare-fun m!4824233 () Bool)

(assert (=> b!4238907 m!4824233))

(assert (=> b!4238907 m!4823279))

(assert (=> b!4238907 m!4824227))

(declare-fun m!4824235 () Bool)

(assert (=> b!4238907 m!4824235))

(assert (=> b!4238907 m!4824227))

(declare-fun m!4824237 () Bool)

(assert (=> b!4238907 m!4824237))

(assert (=> b!4238907 m!4824231))

(declare-fun m!4824239 () Bool)

(assert (=> b!4238911 m!4824239))

(assert (=> b!4238905 m!4824239))

(declare-fun m!4824241 () Bool)

(assert (=> b!4238905 m!4824241))

(assert (=> b!4238910 m!4824239))

(declare-fun m!4824243 () Bool)

(assert (=> b!4238910 m!4824243))

(assert (=> b!4238910 m!4824243))

(declare-fun m!4824245 () Bool)

(assert (=> b!4238910 m!4824245))

(assert (=> b!4238912 m!4824239))

(declare-fun m!4824247 () Bool)

(assert (=> b!4238912 m!4824247))

(assert (=> b!4238912 m!4824247))

(declare-fun m!4824249 () Bool)

(assert (=> b!4238912 m!4824249))

(assert (=> b!4238912 m!4824249))

(declare-fun m!4824251 () Bool)

(assert (=> b!4238912 m!4824251))

(declare-fun m!4824253 () Bool)

(assert (=> d!1247040 m!4824253))

(declare-fun m!4824255 () Bool)

(assert (=> d!1247040 m!4824255))

(declare-fun m!4824257 () Bool)

(assert (=> d!1247040 m!4824257))

(assert (=> d!1247040 m!4824219))

(assert (=> b!4238913 m!4824239))

(assert (=> b!4238913 m!4824247))

(assert (=> b!4238913 m!4824247))

(assert (=> b!4238913 m!4824249))

(assert (=> b!4238913 m!4824249))

(declare-fun m!4824259 () Bool)

(assert (=> b!4238913 m!4824259))

(assert (=> b!4238906 m!4824239))

(declare-fun m!4824261 () Bool)

(assert (=> b!4238906 m!4824261))

(assert (=> b!4238906 m!4823279))

(assert (=> b!4238909 m!4824231))

(assert (=> b!4238909 m!4823279))

(assert (=> b!4238909 m!4824231))

(assert (=> b!4238909 m!4823279))

(assert (=> b!4238909 m!4824233))

(declare-fun m!4824263 () Bool)

(assert (=> b!4238909 m!4824263))

(assert (=> bm!293799 d!1247040))

(declare-fun d!1247042 () Bool)

(assert (=> d!1247042 true))

(declare-fun order!24673 () Int)

(declare-fun lambda!130107 () Int)

(declare-fun dynLambda!20095 (Int Int) Int)

(assert (=> d!1247042 (< (dynLambda!20091 order!24671 (toValue!10670 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) (dynLambda!20095 order!24673 lambda!130107))))

(declare-fun Forall2!1193 (Int) Bool)

(assert (=> d!1247042 (= (equivClasses!3344 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toValue!10670 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) (Forall2!1193 lambda!130107))))

(declare-fun bs!598261 () Bool)

(assert (= bs!598261 d!1247042))

(declare-fun m!4824265 () Bool)

(assert (=> bs!598261 m!4824265))

(assert (=> b!4238149 d!1247042))

(declare-fun d!1247044 () Bool)

(assert (=> d!1247044 (= (inv!61593 (tag!8786 (h!52285 (t!350076 rules!2932)))) (= (mod (str.len (value!246312 (tag!8786 (h!52285 (t!350076 rules!2932))))) 2) 0))))

(assert (=> b!4238386 d!1247044))

(declare-fun d!1247046 () Bool)

(declare-fun res!1743164 () Bool)

(declare-fun e!2632306 () Bool)

(assert (=> d!1247046 (=> (not res!1743164) (not e!2632306))))

(assert (=> d!1247046 (= res!1743164 (semiInverseModEq!3445 (toChars!10529 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toValue!10670 (transformation!7922 (h!52285 (t!350076 rules!2932))))))))

(assert (=> d!1247046 (= (inv!61597 (transformation!7922 (h!52285 (t!350076 rules!2932)))) e!2632306)))

(declare-fun b!4238918 () Bool)

(assert (=> b!4238918 (= e!2632306 (equivClasses!3344 (toChars!10529 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toValue!10670 (transformation!7922 (h!52285 (t!350076 rules!2932))))))))

(assert (= (and d!1247046 res!1743164) b!4238918))

(declare-fun m!4824267 () Bool)

(assert (=> d!1247046 m!4824267))

(declare-fun m!4824269 () Bool)

(assert (=> b!4238918 m!4824269))

(assert (=> b!4238386 d!1247046))

(declare-fun d!1247048 () Bool)

(declare-fun lt!1506270 () Int)

(assert (=> d!1247048 (>= lt!1506270 0)))

(declare-fun e!2632307 () Int)

(assert (=> d!1247048 (= lt!1506270 e!2632307)))

(declare-fun c!720298 () Bool)

(assert (=> d!1247048 (= c!720298 ((_ is Nil!46863) (t!350074 shorterInput!51)))))

(assert (=> d!1247048 (= (size!34330 (t!350074 shorterInput!51)) lt!1506270)))

(declare-fun b!4238919 () Bool)

(assert (=> b!4238919 (= e!2632307 0)))

(declare-fun b!4238920 () Bool)

(assert (=> b!4238920 (= e!2632307 (+ 1 (size!34330 (t!350074 (t!350074 shorterInput!51)))))))

(assert (= (and d!1247048 c!720298) b!4238919))

(assert (= (and d!1247048 (not c!720298)) b!4238920))

(declare-fun m!4824271 () Bool)

(assert (=> b!4238920 m!4824271))

(assert (=> b!4238157 d!1247048))

(declare-fun bs!598262 () Bool)

(declare-fun d!1247050 () Bool)

(assert (= bs!598262 (and d!1247050 d!1247042)))

(declare-fun lambda!130108 () Int)

(assert (=> bs!598262 (= (= (toValue!10670 (transformation!7922 (h!52285 rules!2932))) (toValue!10670 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) (= lambda!130108 lambda!130107))))

(assert (=> d!1247050 true))

(assert (=> d!1247050 (< (dynLambda!20091 order!24671 (toValue!10670 (transformation!7922 (h!52285 rules!2932)))) (dynLambda!20095 order!24673 lambda!130108))))

(assert (=> d!1247050 (= (equivClasses!3344 (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toValue!10670 (transformation!7922 (h!52285 rules!2932)))) (Forall2!1193 lambda!130108))))

(declare-fun bs!598263 () Bool)

(assert (= bs!598263 d!1247050))

(declare-fun m!4824273 () Bool)

(assert (=> bs!598263 m!4824273))

(assert (=> b!4238164 d!1247050))

(declare-fun d!1247052 () Bool)

(assert (=> d!1247052 (= (isDefined!7436 lt!1506119) (not (isEmpty!27703 lt!1506119)))))

(declare-fun bs!598264 () Bool)

(assert (= bs!598264 d!1247052))

(assert (=> bs!598264 m!4823471))

(assert (=> b!4238143 d!1247052))

(declare-fun b!4238921 () Bool)

(declare-fun e!2632310 () Bool)

(declare-fun lt!1506275 () Option!10058)

(assert (=> b!4238921 (= e!2632310 (= (size!34329 (_1!25353 (get!15239 lt!1506275))) (size!34330 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506275))))))))

(declare-fun b!4238922 () Bool)

(declare-fun res!1743166 () Bool)

(assert (=> b!4238922 (=> (not res!1743166) (not e!2632310))))

(assert (=> b!4238922 (= res!1743166 (< (size!34330 (_2!25353 (get!15239 lt!1506275))) (size!34330 longerInput!51)))))

(declare-fun b!4238923 () Bool)

(declare-fun e!2632309 () Option!10058)

(declare-fun lt!1506274 () tuple2!44444)

(assert (=> b!4238923 (= e!2632309 (Some!10057 (tuple2!44439 (Token!14471 (apply!10748 (transformation!7922 (h!52285 rules!2932)) (seqFromList!5808 (_1!25356 lt!1506274))) (h!52285 rules!2932) (size!34333 (seqFromList!5808 (_1!25356 lt!1506274))) (_1!25356 lt!1506274)) (_2!25356 lt!1506274))))))

(declare-fun lt!1506271 () Unit!65957)

(assert (=> b!4238923 (= lt!1506271 (longestMatchIsAcceptedByMatchOrIsEmpty!1665 (regex!7922 (h!52285 rules!2932)) longerInput!51))))

(declare-fun res!1743169 () Bool)

(assert (=> b!4238923 (= res!1743169 (isEmpty!27699 (_1!25356 (findLongestMatchInner!1702 (regex!7922 (h!52285 rules!2932)) Nil!46863 (size!34330 Nil!46863) longerInput!51 longerInput!51 (size!34330 longerInput!51)))))))

(declare-fun e!2632311 () Bool)

(assert (=> b!4238923 (=> res!1743169 e!2632311)))

(assert (=> b!4238923 e!2632311))

(declare-fun lt!1506272 () Unit!65957)

(assert (=> b!4238923 (= lt!1506272 lt!1506271)))

(declare-fun lt!1506273 () Unit!65957)

(assert (=> b!4238923 (= lt!1506273 (lemmaSemiInverse!2533 (transformation!7922 (h!52285 rules!2932)) (seqFromList!5808 (_1!25356 lt!1506274))))))

(declare-fun b!4238924 () Bool)

(assert (=> b!4238924 (= e!2632309 None!10057)))

(declare-fun b!4238925 () Bool)

(assert (=> b!4238925 (= e!2632311 (matchR!6443 (regex!7922 (h!52285 rules!2932)) (_1!25356 (findLongestMatchInner!1702 (regex!7922 (h!52285 rules!2932)) Nil!46863 (size!34330 Nil!46863) longerInput!51 longerInput!51 (size!34330 longerInput!51)))))))

(declare-fun d!1247054 () Bool)

(declare-fun e!2632308 () Bool)

(assert (=> d!1247054 e!2632308))

(declare-fun res!1743168 () Bool)

(assert (=> d!1247054 (=> res!1743168 e!2632308)))

(assert (=> d!1247054 (= res!1743168 (isEmpty!27703 lt!1506275))))

(assert (=> d!1247054 (= lt!1506275 e!2632309)))

(declare-fun c!720299 () Bool)

(assert (=> d!1247054 (= c!720299 (isEmpty!27699 (_1!25356 lt!1506274)))))

(assert (=> d!1247054 (= lt!1506274 (findLongestMatch!1605 (regex!7922 (h!52285 rules!2932)) longerInput!51))))

(assert (=> d!1247054 (ruleValid!3598 thiss!21540 (h!52285 rules!2932))))

(assert (=> d!1247054 (= (maxPrefixOneRule!3446 thiss!21540 (h!52285 rules!2932) longerInput!51) lt!1506275)))

(declare-fun b!4238926 () Bool)

(declare-fun res!1743171 () Bool)

(assert (=> b!4238926 (=> (not res!1743171) (not e!2632310))))

(assert (=> b!4238926 (= res!1743171 (= (value!246313 (_1!25353 (get!15239 lt!1506275))) (apply!10748 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506275)))) (seqFromList!5808 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506275)))))))))

(declare-fun b!4238927 () Bool)

(declare-fun res!1743165 () Bool)

(assert (=> b!4238927 (=> (not res!1743165) (not e!2632310))))

(assert (=> b!4238927 (= res!1743165 (= (rule!11046 (_1!25353 (get!15239 lt!1506275))) (h!52285 rules!2932)))))

(declare-fun b!4238928 () Bool)

(declare-fun res!1743170 () Bool)

(assert (=> b!4238928 (=> (not res!1743170) (not e!2632310))))

(assert (=> b!4238928 (= res!1743170 (= (++!11933 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506275)))) (_2!25353 (get!15239 lt!1506275))) longerInput!51))))

(declare-fun b!4238929 () Bool)

(assert (=> b!4238929 (= e!2632308 e!2632310)))

(declare-fun res!1743167 () Bool)

(assert (=> b!4238929 (=> (not res!1743167) (not e!2632310))))

(assert (=> b!4238929 (= res!1743167 (matchR!6443 (regex!7922 (h!52285 rules!2932)) (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506275))))))))

(assert (= (and d!1247054 c!720299) b!4238924))

(assert (= (and d!1247054 (not c!720299)) b!4238923))

(assert (= (and b!4238923 (not res!1743169)) b!4238925))

(assert (= (and d!1247054 (not res!1743168)) b!4238929))

(assert (= (and b!4238929 res!1743167) b!4238928))

(assert (= (and b!4238928 res!1743170) b!4238922))

(assert (= (and b!4238922 res!1743166) b!4238927))

(assert (= (and b!4238927 res!1743165) b!4238926))

(assert (= (and b!4238926 res!1743171) b!4238921))

(declare-fun m!4824275 () Bool)

(assert (=> b!4238923 m!4824275))

(declare-fun m!4824277 () Bool)

(assert (=> b!4238923 m!4824277))

(declare-fun m!4824279 () Bool)

(assert (=> b!4238923 m!4824279))

(assert (=> b!4238923 m!4824279))

(declare-fun m!4824281 () Bool)

(assert (=> b!4238923 m!4824281))

(assert (=> b!4238923 m!4824231))

(assert (=> b!4238923 m!4823277))

(declare-fun m!4824283 () Bool)

(assert (=> b!4238923 m!4824283))

(assert (=> b!4238923 m!4823277))

(assert (=> b!4238923 m!4824279))

(declare-fun m!4824285 () Bool)

(assert (=> b!4238923 m!4824285))

(assert (=> b!4238923 m!4824279))

(declare-fun m!4824287 () Bool)

(assert (=> b!4238923 m!4824287))

(assert (=> b!4238923 m!4824231))

(declare-fun m!4824289 () Bool)

(assert (=> b!4238927 m!4824289))

(assert (=> b!4238921 m!4824289))

(declare-fun m!4824291 () Bool)

(assert (=> b!4238921 m!4824291))

(assert (=> b!4238926 m!4824289))

(declare-fun m!4824293 () Bool)

(assert (=> b!4238926 m!4824293))

(assert (=> b!4238926 m!4824293))

(declare-fun m!4824295 () Bool)

(assert (=> b!4238926 m!4824295))

(assert (=> b!4238928 m!4824289))

(declare-fun m!4824297 () Bool)

(assert (=> b!4238928 m!4824297))

(assert (=> b!4238928 m!4824297))

(declare-fun m!4824299 () Bool)

(assert (=> b!4238928 m!4824299))

(assert (=> b!4238928 m!4824299))

(declare-fun m!4824301 () Bool)

(assert (=> b!4238928 m!4824301))

(declare-fun m!4824303 () Bool)

(assert (=> d!1247054 m!4824303))

(declare-fun m!4824305 () Bool)

(assert (=> d!1247054 m!4824305))

(declare-fun m!4824307 () Bool)

(assert (=> d!1247054 m!4824307))

(assert (=> d!1247054 m!4824219))

(assert (=> b!4238929 m!4824289))

(assert (=> b!4238929 m!4824297))

(assert (=> b!4238929 m!4824297))

(assert (=> b!4238929 m!4824299))

(assert (=> b!4238929 m!4824299))

(declare-fun m!4824309 () Bool)

(assert (=> b!4238929 m!4824309))

(assert (=> b!4238922 m!4824289))

(declare-fun m!4824311 () Bool)

(assert (=> b!4238922 m!4824311))

(assert (=> b!4238922 m!4823277))

(assert (=> b!4238925 m!4824231))

(assert (=> b!4238925 m!4823277))

(assert (=> b!4238925 m!4824231))

(assert (=> b!4238925 m!4823277))

(assert (=> b!4238925 m!4824283))

(declare-fun m!4824313 () Bool)

(assert (=> b!4238925 m!4824313))

(assert (=> bm!293801 d!1247054))

(declare-fun bs!598265 () Bool)

(declare-fun d!1247056 () Bool)

(assert (= bs!598265 (and d!1247056 d!1247042)))

(declare-fun lambda!130109 () Int)

(assert (=> bs!598265 (= (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toValue!10670 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) (= lambda!130109 lambda!130107))))

(declare-fun bs!598266 () Bool)

(assert (= bs!598266 (and d!1247056 d!1247050)))

(assert (=> bs!598266 (= (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toValue!10670 (transformation!7922 (h!52285 rules!2932)))) (= lambda!130109 lambda!130108))))

(assert (=> d!1247056 true))

(assert (=> d!1247056 (< (dynLambda!20091 order!24671 (toValue!10670 (transformation!7922 (rule!11046 (h!52284 tokens!581))))) (dynLambda!20095 order!24673 lambda!130109))))

(assert (=> d!1247056 (= (equivClasses!3344 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toValue!10670 (transformation!7922 (rule!11046 (h!52284 tokens!581))))) (Forall2!1193 lambda!130109))))

(declare-fun bs!598267 () Bool)

(assert (= bs!598267 d!1247056))

(declare-fun m!4824315 () Bool)

(assert (=> bs!598267 m!4824315))

(assert (=> b!4238051 d!1247056))

(declare-fun d!1247058 () Bool)

(assert (=> d!1247058 (= (inv!16 (value!246313 (h!52284 tokens!581))) (= (charsToInt!0 (text!57511 (value!246313 (h!52284 tokens!581)))) (value!246304 (value!246313 (h!52284 tokens!581)))))))

(declare-fun bs!598268 () Bool)

(assert (= bs!598268 d!1247058))

(declare-fun m!4824317 () Bool)

(assert (=> bs!598268 m!4824317))

(assert (=> b!4238197 d!1247058))

(assert (=> b!4238141 d!1247028))

(assert (=> b!4238141 d!1247030))

(assert (=> b!4238141 d!1247022))

(declare-fun d!1247060 () Bool)

(declare-fun isBalanced!3756 (Conc!14133) Bool)

(assert (=> d!1247060 (= (inv!61601 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581)))) (isBalanced!3756 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581))))))))

(declare-fun bs!598269 () Bool)

(assert (= bs!598269 d!1247060))

(declare-fun m!4824319 () Bool)

(assert (=> bs!598269 m!4824319))

(assert (=> tb!254321 d!1247060))

(declare-fun d!1247062 () Bool)

(assert (=> d!1247062 (= (list!16895 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17)))) (list!16897 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17))))))))

(declare-fun bs!598270 () Bool)

(assert (= bs!598270 d!1247062))

(declare-fun m!4824321 () Bool)

(assert (=> bs!598270 m!4824321))

(assert (=> b!4238326 d!1247062))

(declare-fun d!1247064 () Bool)

(assert (=> d!1247064 (= (isEmpty!27699 (originalCharacters!8266 (h!52284 addTokens!17))) ((_ is Nil!46863) (originalCharacters!8266 (h!52284 addTokens!17))))))

(assert (=> d!1246804 d!1247064))

(assert (=> b!4238122 d!1246968))

(declare-fun d!1247066 () Bool)

(declare-fun dynLambda!20096 (Int BalanceConc!27860) TokenValue!8152)

(assert (=> d!1247066 (= (apply!10748 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))) (seqFromList!5808 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506105))))) (dynLambda!20096 (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105))))) (seqFromList!5808 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506105))))))))

(declare-fun b_lambda!124781 () Bool)

(assert (=> (not b_lambda!124781) (not d!1247066)))

(declare-fun tb!254501 () Bool)

(declare-fun t!350304 () Bool)

(assert (=> (and b!4238391 (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350304) tb!254501))

(declare-fun result!310422 () Bool)

(assert (=> tb!254501 (= result!310422 (inv!21 (dynLambda!20096 (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105))))) (seqFromList!5808 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506105)))))))))

(declare-fun m!4824323 () Bool)

(assert (=> tb!254501 m!4824323))

(assert (=> d!1247066 t!350304))

(declare-fun b_and!335105 () Bool)

(assert (= b_and!334993 (and (=> t!350304 result!310422) b_and!335105)))

(declare-fun t!350306 () Bool)

(declare-fun tb!254503 () Bool)

(assert (=> (and b!4238014 (= (toValue!10670 (transformation!7922 (h!52285 rules!2932))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350306) tb!254503))

(declare-fun result!310426 () Bool)

(assert (= result!310426 result!310422))

(assert (=> d!1247066 t!350306))

(declare-fun b_and!335107 () Bool)

(assert (= b_and!334925 (and (=> t!350306 result!310426) b_and!335107)))

(declare-fun tb!254505 () Bool)

(declare-fun t!350308 () Bool)

(assert (=> (and b!4238032 (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350308) tb!254505))

(declare-fun result!310428 () Bool)

(assert (= result!310428 result!310422))

(assert (=> d!1247066 t!350308))

(declare-fun b_and!335109 () Bool)

(assert (= b_and!334929 (and (=> t!350308 result!310428) b_and!335109)))

(declare-fun t!350310 () Bool)

(declare-fun tb!254507 () Bool)

(assert (=> (and b!4238020 (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350310) tb!254507))

(declare-fun result!310430 () Bool)

(assert (= result!310430 result!310422))

(assert (=> d!1247066 t!350310))

(declare-fun b_and!335111 () Bool)

(assert (= b_and!334933 (and (=> t!350310 result!310430) b_and!335111)))

(declare-fun t!350312 () Bool)

(declare-fun tb!254509 () Bool)

(assert (=> (and b!4238387 (= (toValue!10670 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350312) tb!254509))

(declare-fun result!310432 () Bool)

(assert (= result!310432 result!310422))

(assert (=> d!1247066 t!350312))

(declare-fun b_and!335113 () Bool)

(assert (= b_and!334989 (and (=> t!350312 result!310432) b_and!335113)))

(declare-fun tb!254511 () Bool)

(declare-fun t!350314 () Bool)

(assert (=> (and b!4238376 (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350314) tb!254511))

(declare-fun result!310434 () Bool)

(assert (= result!310434 result!310422))

(assert (=> d!1247066 t!350314))

(declare-fun b_and!335115 () Bool)

(assert (= b_and!334985 (and (=> t!350314 result!310434) b_and!335115)))

(assert (=> d!1247066 m!4823425))

(declare-fun m!4824325 () Bool)

(assert (=> d!1247066 m!4824325))

(assert (=> b!4238122 d!1247066))

(declare-fun d!1247068 () Bool)

(declare-fun fromListB!2646 (List!46987) BalanceConc!27860)

(assert (=> d!1247068 (= (seqFromList!5808 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506105)))) (fromListB!2646 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506105)))))))

(declare-fun bs!598271 () Bool)

(assert (= bs!598271 d!1247068))

(declare-fun m!4824327 () Bool)

(assert (=> bs!598271 m!4824327))

(assert (=> b!4238122 d!1247068))

(declare-fun d!1247070 () Bool)

(declare-fun lt!1506276 () Int)

(assert (=> d!1247070 (>= lt!1506276 0)))

(declare-fun e!2632315 () Int)

(assert (=> d!1247070 (= lt!1506276 e!2632315)))

(declare-fun c!720300 () Bool)

(assert (=> d!1247070 (= c!720300 ((_ is Nil!46863) (originalCharacters!8266 (h!52284 tokens!581))))))

(assert (=> d!1247070 (= (size!34330 (originalCharacters!8266 (h!52284 tokens!581))) lt!1506276)))

(declare-fun b!4238932 () Bool)

(assert (=> b!4238932 (= e!2632315 0)))

(declare-fun b!4238933 () Bool)

(assert (=> b!4238933 (= e!2632315 (+ 1 (size!34330 (t!350074 (originalCharacters!8266 (h!52284 tokens!581))))))))

(assert (= (and d!1247070 c!720300) b!4238932))

(assert (= (and d!1247070 (not c!720300)) b!4238933))

(declare-fun m!4824329 () Bool)

(assert (=> b!4238933 m!4824329))

(assert (=> b!4238324 d!1247070))

(declare-fun call!293817 () Option!10058)

(declare-fun bm!293812 () Bool)

(assert (=> bm!293812 (= call!293817 (maxPrefixOneRule!3446 thiss!21540 (h!52285 (t!350076 rules!2932)) shorterInput!51))))

(declare-fun b!4238935 () Bool)

(declare-fun res!1743176 () Bool)

(declare-fun e!2632316 () Bool)

(assert (=> b!4238935 (=> (not res!1743176) (not e!2632316))))

(declare-fun lt!1506278 () Option!10058)

(assert (=> b!4238935 (= res!1743176 (= (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506278)))) (originalCharacters!8266 (_1!25353 (get!15239 lt!1506278)))))))

(declare-fun b!4238936 () Bool)

(assert (=> b!4238936 (= e!2632316 (contains!9721 (t!350076 rules!2932) (rule!11046 (_1!25353 (get!15239 lt!1506278)))))))

(declare-fun b!4238937 () Bool)

(declare-fun e!2632317 () Bool)

(assert (=> b!4238937 (= e!2632317 e!2632316)))

(declare-fun res!1743178 () Bool)

(assert (=> b!4238937 (=> (not res!1743178) (not e!2632316))))

(assert (=> b!4238937 (= res!1743178 (isDefined!7436 lt!1506278))))

(declare-fun b!4238938 () Bool)

(declare-fun res!1743173 () Bool)

(assert (=> b!4238938 (=> (not res!1743173) (not e!2632316))))

(assert (=> b!4238938 (= res!1743173 (= (++!11933 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506278)))) (_2!25353 (get!15239 lt!1506278))) shorterInput!51))))

(declare-fun b!4238939 () Bool)

(declare-fun res!1743177 () Bool)

(assert (=> b!4238939 (=> (not res!1743177) (not e!2632316))))

(assert (=> b!4238939 (= res!1743177 (matchR!6443 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506278)))) (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506278))))))))

(declare-fun b!4238940 () Bool)

(declare-fun e!2632318 () Option!10058)

(declare-fun lt!1506280 () Option!10058)

(declare-fun lt!1506277 () Option!10058)

(assert (=> b!4238940 (= e!2632318 (ite (and ((_ is None!10057) lt!1506280) ((_ is None!10057) lt!1506277)) None!10057 (ite ((_ is None!10057) lt!1506277) lt!1506280 (ite ((_ is None!10057) lt!1506280) lt!1506277 (ite (>= (size!34329 (_1!25353 (v!41005 lt!1506280))) (size!34329 (_1!25353 (v!41005 lt!1506277)))) lt!1506280 lt!1506277)))))))

(assert (=> b!4238940 (= lt!1506280 call!293817)))

(assert (=> b!4238940 (= lt!1506277 (maxPrefix!4475 thiss!21540 (t!350076 (t!350076 rules!2932)) shorterInput!51))))

(declare-fun d!1247072 () Bool)

(assert (=> d!1247072 e!2632317))

(declare-fun res!1743174 () Bool)

(assert (=> d!1247072 (=> res!1743174 e!2632317)))

(assert (=> d!1247072 (= res!1743174 (isEmpty!27703 lt!1506278))))

(assert (=> d!1247072 (= lt!1506278 e!2632318)))

(declare-fun c!720301 () Bool)

(assert (=> d!1247072 (= c!720301 (and ((_ is Cons!46865) (t!350076 rules!2932)) ((_ is Nil!46865) (t!350076 (t!350076 rules!2932)))))))

(declare-fun lt!1506281 () Unit!65957)

(declare-fun lt!1506279 () Unit!65957)

(assert (=> d!1247072 (= lt!1506281 lt!1506279)))

(assert (=> d!1247072 (isPrefix!4721 shorterInput!51 shorterInput!51)))

(assert (=> d!1247072 (= lt!1506279 (lemmaIsPrefixRefl!3118 shorterInput!51 shorterInput!51))))

(assert (=> d!1247072 (rulesValidInductive!2970 thiss!21540 (t!350076 rules!2932))))

(assert (=> d!1247072 (= (maxPrefix!4475 thiss!21540 (t!350076 rules!2932) shorterInput!51) lt!1506278)))

(declare-fun b!4238934 () Bool)

(assert (=> b!4238934 (= e!2632318 call!293817)))

(declare-fun b!4238941 () Bool)

(declare-fun res!1743175 () Bool)

(assert (=> b!4238941 (=> (not res!1743175) (not e!2632316))))

(assert (=> b!4238941 (= res!1743175 (< (size!34330 (_2!25353 (get!15239 lt!1506278))) (size!34330 shorterInput!51)))))

(declare-fun b!4238942 () Bool)

(declare-fun res!1743172 () Bool)

(assert (=> b!4238942 (=> (not res!1743172) (not e!2632316))))

(assert (=> b!4238942 (= res!1743172 (= (value!246313 (_1!25353 (get!15239 lt!1506278))) (apply!10748 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506278)))) (seqFromList!5808 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506278)))))))))

(assert (= (and d!1247072 c!720301) b!4238934))

(assert (= (and d!1247072 (not c!720301)) b!4238940))

(assert (= (or b!4238934 b!4238940) bm!293812))

(assert (= (and d!1247072 (not res!1743174)) b!4238937))

(assert (= (and b!4238937 res!1743178) b!4238935))

(assert (= (and b!4238935 res!1743176) b!4238941))

(assert (= (and b!4238941 res!1743175) b!4238938))

(assert (= (and b!4238938 res!1743173) b!4238942))

(assert (= (and b!4238942 res!1743172) b!4238939))

(assert (= (and b!4238939 res!1743177) b!4238936))

(declare-fun m!4824331 () Bool)

(assert (=> b!4238940 m!4824331))

(declare-fun m!4824333 () Bool)

(assert (=> bm!293812 m!4824333))

(declare-fun m!4824335 () Bool)

(assert (=> b!4238939 m!4824335))

(declare-fun m!4824337 () Bool)

(assert (=> b!4238939 m!4824337))

(assert (=> b!4238939 m!4824337))

(declare-fun m!4824339 () Bool)

(assert (=> b!4238939 m!4824339))

(assert (=> b!4238939 m!4824339))

(declare-fun m!4824341 () Bool)

(assert (=> b!4238939 m!4824341))

(assert (=> b!4238942 m!4824335))

(declare-fun m!4824343 () Bool)

(assert (=> b!4238942 m!4824343))

(assert (=> b!4238942 m!4824343))

(declare-fun m!4824345 () Bool)

(assert (=> b!4238942 m!4824345))

(declare-fun m!4824347 () Bool)

(assert (=> b!4238937 m!4824347))

(assert (=> b!4238935 m!4824335))

(assert (=> b!4238935 m!4824337))

(assert (=> b!4238935 m!4824337))

(assert (=> b!4238935 m!4824339))

(assert (=> b!4238936 m!4824335))

(declare-fun m!4824349 () Bool)

(assert (=> b!4238936 m!4824349))

(assert (=> b!4238941 m!4824335))

(declare-fun m!4824351 () Bool)

(assert (=> b!4238941 m!4824351))

(assert (=> b!4238941 m!4823279))

(declare-fun m!4824353 () Bool)

(assert (=> d!1247072 m!4824353))

(assert (=> d!1247072 m!4823437))

(assert (=> d!1247072 m!4823439))

(assert (=> d!1247072 m!4824221))

(assert (=> b!4238938 m!4824335))

(assert (=> b!4238938 m!4824337))

(assert (=> b!4238938 m!4824337))

(assert (=> b!4238938 m!4824339))

(assert (=> b!4238938 m!4824339))

(declare-fun m!4824355 () Bool)

(assert (=> b!4238938 m!4824355))

(assert (=> b!4238120 d!1247072))

(declare-fun b!4238943 () Bool)

(declare-fun e!2632320 () List!46987)

(assert (=> b!4238943 (= e!2632320 (_2!25353 (v!41005 lt!1506071)))))

(declare-fun b!4238945 () Bool)

(declare-fun res!1743179 () Bool)

(declare-fun e!2632319 () Bool)

(assert (=> b!4238945 (=> (not res!1743179) (not e!2632319))))

(declare-fun lt!1506282 () List!46987)

(assert (=> b!4238945 (= res!1743179 (= (size!34330 lt!1506282) (+ (size!34330 (t!350074 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071)))))) (size!34330 (_2!25353 (v!41005 lt!1506071))))))))

(declare-fun d!1247074 () Bool)

(assert (=> d!1247074 e!2632319))

(declare-fun res!1743180 () Bool)

(assert (=> d!1247074 (=> (not res!1743180) (not e!2632319))))

(assert (=> d!1247074 (= res!1743180 (= (content!7365 lt!1506282) ((_ map or) (content!7365 (t!350074 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071)))))) (content!7365 (_2!25353 (v!41005 lt!1506071))))))))

(assert (=> d!1247074 (= lt!1506282 e!2632320)))

(declare-fun c!720302 () Bool)

(assert (=> d!1247074 (= c!720302 ((_ is Nil!46863) (t!350074 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071)))))))))

(assert (=> d!1247074 (= (++!11933 (t!350074 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))) (_2!25353 (v!41005 lt!1506071))) lt!1506282)))

(declare-fun b!4238944 () Bool)

(assert (=> b!4238944 (= e!2632320 (Cons!46863 (h!52283 (t!350074 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071)))))) (++!11933 (t!350074 (t!350074 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071)))))) (_2!25353 (v!41005 lt!1506071)))))))

(declare-fun b!4238946 () Bool)

(assert (=> b!4238946 (= e!2632319 (or (not (= (_2!25353 (v!41005 lt!1506071)) Nil!46863)) (= lt!1506282 (t!350074 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))))))))

(assert (= (and d!1247074 c!720302) b!4238943))

(assert (= (and d!1247074 (not c!720302)) b!4238944))

(assert (= (and d!1247074 res!1743180) b!4238945))

(assert (= (and b!4238945 res!1743179) b!4238946))

(declare-fun m!4824357 () Bool)

(assert (=> b!4238945 m!4824357))

(assert (=> b!4238945 m!4823955))

(assert (=> b!4238945 m!4823577))

(declare-fun m!4824359 () Bool)

(assert (=> d!1247074 m!4824359))

(declare-fun m!4824361 () Bool)

(assert (=> d!1247074 m!4824361))

(assert (=> d!1247074 m!4823583))

(declare-fun m!4824363 () Bool)

(assert (=> b!4238944 m!4824363))

(assert (=> b!4238311 d!1247074))

(declare-fun d!1247076 () Bool)

(declare-fun charsToBigInt!1 (List!46986) Int)

(assert (=> d!1247076 (= (inv!17 (value!246313 (h!52284 addTokens!17))) (= (charsToBigInt!1 (text!57512 (value!246313 (h!52284 addTokens!17)))) (value!246305 (value!246313 (h!52284 addTokens!17)))))))

(declare-fun bs!598272 () Bool)

(assert (= bs!598272 d!1247076))

(declare-fun m!4824365 () Bool)

(assert (=> bs!598272 m!4824365))

(assert (=> b!4238191 d!1247076))

(declare-fun d!1247078 () Bool)

(assert (=> d!1247078 (= (inv!61593 (tag!8786 (rule!11046 (h!52284 (t!350075 tokens!581))))) (= (mod (str.len (value!246312 (tag!8786 (rule!11046 (h!52284 (t!350075 tokens!581)))))) 2) 0))))

(assert (=> b!4238375 d!1247078))

(declare-fun d!1247080 () Bool)

(declare-fun res!1743181 () Bool)

(declare-fun e!2632321 () Bool)

(assert (=> d!1247080 (=> (not res!1743181) (not e!2632321))))

(assert (=> d!1247080 (= res!1743181 (semiInverseModEq!3445 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (toValue!10670 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581)))))))))

(assert (=> d!1247080 (= (inv!61597 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) e!2632321)))

(declare-fun b!4238947 () Bool)

(assert (=> b!4238947 (= e!2632321 (equivClasses!3344 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (toValue!10670 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581)))))))))

(assert (= (and d!1247080 res!1743181) b!4238947))

(declare-fun m!4824367 () Bool)

(assert (=> d!1247080 m!4824367))

(declare-fun m!4824369 () Bool)

(assert (=> b!4238947 m!4824369))

(assert (=> b!4238375 d!1247080))

(declare-fun d!1247082 () Bool)

(assert (=> d!1247082 (= (inv!61601 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071))))) (isBalanced!3756 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071)))))))))

(declare-fun bs!598273 () Bool)

(assert (= bs!598273 d!1247082))

(declare-fun m!4824371 () Bool)

(assert (=> bs!598273 m!4824371))

(assert (=> tb!254315 d!1247082))

(declare-fun b!4238948 () Bool)

(declare-fun e!2632323 () List!46987)

(assert (=> b!4238948 (= e!2632323 (_2!25353 (get!15239 lt!1506105)))))

(declare-fun b!4238950 () Bool)

(declare-fun res!1743182 () Bool)

(declare-fun e!2632322 () Bool)

(assert (=> b!4238950 (=> (not res!1743182) (not e!2632322))))

(declare-fun lt!1506283 () List!46987)

(assert (=> b!4238950 (= res!1743182 (= (size!34330 lt!1506283) (+ (size!34330 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105))))) (size!34330 (_2!25353 (get!15239 lt!1506105))))))))

(declare-fun d!1247084 () Bool)

(assert (=> d!1247084 e!2632322))

(declare-fun res!1743183 () Bool)

(assert (=> d!1247084 (=> (not res!1743183) (not e!2632322))))

(assert (=> d!1247084 (= res!1743183 (= (content!7365 lt!1506283) ((_ map or) (content!7365 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105))))) (content!7365 (_2!25353 (get!15239 lt!1506105))))))))

(assert (=> d!1247084 (= lt!1506283 e!2632323)))

(declare-fun c!720303 () Bool)

(assert (=> d!1247084 (= c!720303 ((_ is Nil!46863) (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105))))))))

(assert (=> d!1247084 (= (++!11933 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105)))) (_2!25353 (get!15239 lt!1506105))) lt!1506283)))

(declare-fun b!4238949 () Bool)

(assert (=> b!4238949 (= e!2632323 (Cons!46863 (h!52283 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105))))) (++!11933 (t!350074 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105))))) (_2!25353 (get!15239 lt!1506105)))))))

(declare-fun b!4238951 () Bool)

(assert (=> b!4238951 (= e!2632322 (or (not (= (_2!25353 (get!15239 lt!1506105)) Nil!46863)) (= lt!1506283 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506105)))))))))

(assert (= (and d!1247084 c!720303) b!4238948))

(assert (= (and d!1247084 (not c!720303)) b!4238949))

(assert (= (and d!1247084 res!1743183) b!4238950))

(assert (= (and b!4238950 res!1743182) b!4238951))

(declare-fun m!4824373 () Bool)

(assert (=> b!4238950 m!4824373))

(assert (=> b!4238950 m!4823421))

(declare-fun m!4824375 () Bool)

(assert (=> b!4238950 m!4824375))

(assert (=> b!4238950 m!4823433))

(declare-fun m!4824377 () Bool)

(assert (=> d!1247084 m!4824377))

(assert (=> d!1247084 m!4823421))

(declare-fun m!4824379 () Bool)

(assert (=> d!1247084 m!4824379))

(declare-fun m!4824381 () Bool)

(assert (=> d!1247084 m!4824381))

(declare-fun m!4824383 () Bool)

(assert (=> b!4238949 m!4824383))

(assert (=> b!4238118 d!1247084))

(assert (=> b!4238118 d!1246972))

(assert (=> b!4238118 d!1246976))

(assert (=> b!4238118 d!1246968))

(declare-fun bs!598274 () Bool)

(declare-fun d!1247086 () Bool)

(assert (= bs!598274 (and d!1247086 d!1246816)))

(declare-fun lambda!130110 () Int)

(assert (=> bs!598274 (= (and (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toChars!10529 (transformation!7922 (h!52285 rules!2932)))) (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toValue!10670 (transformation!7922 (h!52285 rules!2932))))) (= lambda!130110 lambda!130093))))

(assert (=> d!1247086 true))

(assert (=> d!1247086 (< (dynLambda!20089 order!24667 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581))))) (dynLambda!20090 order!24669 lambda!130110))))

(assert (=> d!1247086 true))

(assert (=> d!1247086 (< (dynLambda!20091 order!24671 (toValue!10670 (transformation!7922 (rule!11046 (h!52284 tokens!581))))) (dynLambda!20090 order!24669 lambda!130110))))

(assert (=> d!1247086 (= (semiInverseModEq!3445 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toValue!10670 (transformation!7922 (rule!11046 (h!52284 tokens!581))))) (Forall!1593 lambda!130110))))

(declare-fun bs!598275 () Bool)

(assert (= bs!598275 d!1247086))

(declare-fun m!4824385 () Bool)

(assert (=> bs!598275 m!4824385))

(assert (=> d!1246728 d!1247086))

(declare-fun d!1247088 () Bool)

(assert (=> d!1247088 (= (inv!17 (value!246313 (h!52284 tokens!581))) (= (charsToBigInt!1 (text!57512 (value!246313 (h!52284 tokens!581)))) (value!246305 (value!246313 (h!52284 tokens!581)))))))

(declare-fun bs!598276 () Bool)

(assert (= bs!598276 d!1247088))

(declare-fun m!4824387 () Bool)

(assert (=> bs!598276 m!4824387))

(assert (=> b!4238204 d!1247088))

(declare-fun d!1247090 () Bool)

(assert (=> d!1247090 (= (inv!61601 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17)))) (isBalanced!3756 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17))))))))

(declare-fun bs!598277 () Bool)

(assert (= bs!598277 d!1247090))

(declare-fun m!4824389 () Bool)

(assert (=> bs!598277 m!4824389))

(assert (=> tb!254327 d!1247090))

(declare-fun d!1247092 () Bool)

(declare-fun lt!1506286 () Bool)

(declare-fun content!7367 (List!46989) (InoxSet Rule!15644))

(assert (=> d!1247092 (= lt!1506286 (select (content!7367 rules!2932) (rule!11046 (_1!25353 (get!15239 lt!1506105)))))))

(declare-fun e!2632329 () Bool)

(assert (=> d!1247092 (= lt!1506286 e!2632329)))

(declare-fun res!1743188 () Bool)

(assert (=> d!1247092 (=> (not res!1743188) (not e!2632329))))

(assert (=> d!1247092 (= res!1743188 ((_ is Cons!46865) rules!2932))))

(assert (=> d!1247092 (= (contains!9721 rules!2932 (rule!11046 (_1!25353 (get!15239 lt!1506105)))) lt!1506286)))

(declare-fun b!4238956 () Bool)

(declare-fun e!2632328 () Bool)

(assert (=> b!4238956 (= e!2632329 e!2632328)))

(declare-fun res!1743189 () Bool)

(assert (=> b!4238956 (=> res!1743189 e!2632328)))

(assert (=> b!4238956 (= res!1743189 (= (h!52285 rules!2932) (rule!11046 (_1!25353 (get!15239 lt!1506105)))))))

(declare-fun b!4238957 () Bool)

(assert (=> b!4238957 (= e!2632328 (contains!9721 (t!350076 rules!2932) (rule!11046 (_1!25353 (get!15239 lt!1506105)))))))

(assert (= (and d!1247092 res!1743188) b!4238956))

(assert (= (and b!4238956 (not res!1743189)) b!4238957))

(declare-fun m!4824391 () Bool)

(assert (=> d!1247092 m!4824391))

(declare-fun m!4824393 () Bool)

(assert (=> d!1247092 m!4824393))

(declare-fun m!4824395 () Bool)

(assert (=> b!4238957 m!4824395))

(assert (=> b!4238116 d!1247092))

(assert (=> b!4238116 d!1246968))

(declare-fun d!1247094 () Bool)

(declare-fun lt!1506287 () Int)

(assert (=> d!1247094 (>= lt!1506287 0)))

(declare-fun e!2632330 () Int)

(assert (=> d!1247094 (= lt!1506287 e!2632330)))

(declare-fun c!720304 () Bool)

(assert (=> d!1247094 (= c!720304 ((_ is Nil!46863) (_2!25354 lt!1506145)))))

(assert (=> d!1247094 (= (size!34330 (_2!25354 lt!1506145)) lt!1506287)))

(declare-fun b!4238958 () Bool)

(assert (=> b!4238958 (= e!2632330 0)))

(declare-fun b!4238959 () Bool)

(assert (=> b!4238959 (= e!2632330 (+ 1 (size!34330 (t!350074 (_2!25354 lt!1506145)))))))

(assert (= (and d!1247094 c!720304) b!4238958))

(assert (= (and d!1247094 (not c!720304)) b!4238959))

(declare-fun m!4824397 () Bool)

(assert (=> b!4238959 m!4824397))

(assert (=> b!4238298 d!1247094))

(assert (=> b!4238298 d!1246764))

(assert (=> b!4238148 d!1247022))

(declare-fun d!1247096 () Bool)

(assert (=> d!1247096 (= (apply!10748 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))) (seqFromList!5808 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506119))))) (dynLambda!20096 (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119))))) (seqFromList!5808 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506119))))))))

(declare-fun b_lambda!124783 () Bool)

(assert (=> (not b_lambda!124783) (not d!1247096)))

(declare-fun tb!254513 () Bool)

(declare-fun t!350316 () Bool)

(assert (=> (and b!4238020 (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350316) tb!254513))

(declare-fun result!310436 () Bool)

(assert (=> tb!254513 (= result!310436 (inv!21 (dynLambda!20096 (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119))))) (seqFromList!5808 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506119)))))))))

(declare-fun m!4824399 () Bool)

(assert (=> tb!254513 m!4824399))

(assert (=> d!1247096 t!350316))

(declare-fun b_and!335117 () Bool)

(assert (= b_and!335111 (and (=> t!350316 result!310436) b_and!335117)))

(declare-fun t!350318 () Bool)

(declare-fun tb!254515 () Bool)

(assert (=> (and b!4238032 (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350318) tb!254515))

(declare-fun result!310438 () Bool)

(assert (= result!310438 result!310436))

(assert (=> d!1247096 t!350318))

(declare-fun b_and!335119 () Bool)

(assert (= b_and!335109 (and (=> t!350318 result!310438) b_and!335119)))

(declare-fun t!350320 () Bool)

(declare-fun tb!254517 () Bool)

(assert (=> (and b!4238376 (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350320) tb!254517))

(declare-fun result!310440 () Bool)

(assert (= result!310440 result!310436))

(assert (=> d!1247096 t!350320))

(declare-fun b_and!335121 () Bool)

(assert (= b_and!335115 (and (=> t!350320 result!310440) b_and!335121)))

(declare-fun t!350322 () Bool)

(declare-fun tb!254519 () Bool)

(assert (=> (and b!4238391 (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350322) tb!254519))

(declare-fun result!310442 () Bool)

(assert (= result!310442 result!310436))

(assert (=> d!1247096 t!350322))

(declare-fun b_and!335123 () Bool)

(assert (= b_and!335105 (and (=> t!350322 result!310442) b_and!335123)))

(declare-fun tb!254521 () Bool)

(declare-fun t!350324 () Bool)

(assert (=> (and b!4238014 (= (toValue!10670 (transformation!7922 (h!52285 rules!2932))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350324) tb!254521))

(declare-fun result!310444 () Bool)

(assert (= result!310444 result!310436))

(assert (=> d!1247096 t!350324))

(declare-fun b_and!335125 () Bool)

(assert (= b_and!335107 (and (=> t!350324 result!310444) b_and!335125)))

(declare-fun t!350326 () Bool)

(declare-fun tb!254523 () Bool)

(assert (=> (and b!4238387 (= (toValue!10670 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350326) tb!254523))

(declare-fun result!310446 () Bool)

(assert (= result!310446 result!310436))

(assert (=> d!1247096 t!350326))

(declare-fun b_and!335127 () Bool)

(assert (= b_and!335113 (and (=> t!350326 result!310446) b_and!335127)))

(assert (=> d!1247096 m!4823461))

(declare-fun m!4824401 () Bool)

(assert (=> d!1247096 m!4824401))

(assert (=> b!4238148 d!1247096))

(declare-fun d!1247098 () Bool)

(assert (=> d!1247098 (= (seqFromList!5808 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506119)))) (fromListB!2646 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506119)))))))

(declare-fun bs!598278 () Bool)

(assert (= bs!598278 d!1247098))

(declare-fun m!4824403 () Bool)

(assert (=> bs!598278 m!4824403))

(assert (=> b!4238148 d!1247098))

(declare-fun d!1247100 () Bool)

(assert (=> d!1247100 (= (inv!61593 (tag!8786 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (= (mod (str.len (value!246312 (tag!8786 (rule!11046 (h!52284 (t!350075 addTokens!17)))))) 2) 0))))

(assert (=> b!4238390 d!1247100))

(declare-fun d!1247102 () Bool)

(declare-fun res!1743190 () Bool)

(declare-fun e!2632332 () Bool)

(assert (=> d!1247102 (=> (not res!1743190) (not e!2632332))))

(assert (=> d!1247102 (= res!1743190 (semiInverseModEq!3445 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (toValue!10670 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17)))))))))

(assert (=> d!1247102 (= (inv!61597 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) e!2632332)))

(declare-fun b!4238960 () Bool)

(assert (=> b!4238960 (= e!2632332 (equivClasses!3344 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (toValue!10670 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17)))))))))

(assert (= (and d!1247102 res!1743190) b!4238960))

(declare-fun m!4824405 () Bool)

(assert (=> d!1247102 m!4824405))

(declare-fun m!4824407 () Bool)

(assert (=> b!4238960 m!4824407))

(assert (=> b!4238390 d!1247102))

(declare-fun d!1247104 () Bool)

(declare-fun res!1743191 () Bool)

(declare-fun e!2632333 () Bool)

(assert (=> d!1247104 (=> (not res!1743191) (not e!2632333))))

(assert (=> d!1247104 (= res!1743191 (not (isEmpty!27699 (originalCharacters!8266 (h!52284 (t!350075 tokens!581))))))))

(assert (=> d!1247104 (= (inv!61596 (h!52284 (t!350075 tokens!581))) e!2632333)))

(declare-fun b!4238961 () Bool)

(declare-fun res!1743192 () Bool)

(assert (=> b!4238961 (=> (not res!1743192) (not e!2632333))))

(assert (=> b!4238961 (= res!1743192 (= (originalCharacters!8266 (h!52284 (t!350075 tokens!581))) (list!16895 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (value!246313 (h!52284 (t!350075 tokens!581)))))))))

(declare-fun b!4238962 () Bool)

(assert (=> b!4238962 (= e!2632333 (= (size!34329 (h!52284 (t!350075 tokens!581))) (size!34330 (originalCharacters!8266 (h!52284 (t!350075 tokens!581))))))))

(assert (= (and d!1247104 res!1743191) b!4238961))

(assert (= (and b!4238961 res!1743192) b!4238962))

(declare-fun b_lambda!124785 () Bool)

(assert (=> (not b_lambda!124785) (not b!4238961)))

(declare-fun t!350328 () Bool)

(declare-fun tb!254525 () Bool)

(assert (=> (and b!4238032 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581)))))) t!350328) tb!254525))

(declare-fun b!4238963 () Bool)

(declare-fun e!2632334 () Bool)

(declare-fun tp!1298927 () Bool)

(assert (=> b!4238963 (= e!2632334 (and (inv!61600 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (value!246313 (h!52284 (t!350075 tokens!581)))))) tp!1298927))))

(declare-fun result!310448 () Bool)

(assert (=> tb!254525 (= result!310448 (and (inv!61601 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (value!246313 (h!52284 (t!350075 tokens!581))))) e!2632334))))

(assert (= tb!254525 b!4238963))

(declare-fun m!4824409 () Bool)

(assert (=> b!4238963 m!4824409))

(declare-fun m!4824411 () Bool)

(assert (=> tb!254525 m!4824411))

(assert (=> b!4238961 t!350328))

(declare-fun b_and!335129 () Bool)

(assert (= b_and!335097 (and (=> t!350328 result!310448) b_and!335129)))

(declare-fun t!350330 () Bool)

(declare-fun tb!254527 () Bool)

(assert (=> (and b!4238376 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581)))))) t!350330) tb!254527))

(declare-fun result!310450 () Bool)

(assert (= result!310450 result!310448))

(assert (=> b!4238961 t!350330))

(declare-fun b_and!335131 () Bool)

(assert (= b_and!335101 (and (=> t!350330 result!310450) b_and!335131)))

(declare-fun t!350332 () Bool)

(declare-fun tb!254529 () Bool)

(assert (=> (and b!4238020 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581)))))) t!350332) tb!254529))

(declare-fun result!310452 () Bool)

(assert (= result!310452 result!310448))

(assert (=> b!4238961 t!350332))

(declare-fun b_and!335133 () Bool)

(assert (= b_and!335093 (and (=> t!350332 result!310452) b_and!335133)))

(declare-fun t!350334 () Bool)

(declare-fun tb!254531 () Bool)

(assert (=> (and b!4238391 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581)))))) t!350334) tb!254531))

(declare-fun result!310454 () Bool)

(assert (= result!310454 result!310448))

(assert (=> b!4238961 t!350334))

(declare-fun b_and!335135 () Bool)

(assert (= b_and!335095 (and (=> t!350334 result!310454) b_and!335135)))

(declare-fun t!350336 () Bool)

(declare-fun tb!254533 () Bool)

(assert (=> (and b!4238387 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581)))))) t!350336) tb!254533))

(declare-fun result!310456 () Bool)

(assert (= result!310456 result!310448))

(assert (=> b!4238961 t!350336))

(declare-fun b_and!335137 () Bool)

(assert (= b_and!335103 (and (=> t!350336 result!310456) b_and!335137)))

(declare-fun tb!254535 () Bool)

(declare-fun t!350338 () Bool)

(assert (=> (and b!4238014 (= (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581)))))) t!350338) tb!254535))

(declare-fun result!310458 () Bool)

(assert (= result!310458 result!310448))

(assert (=> b!4238961 t!350338))

(declare-fun b_and!335139 () Bool)

(assert (= b_and!335099 (and (=> t!350338 result!310458) b_and!335139)))

(declare-fun m!4824413 () Bool)

(assert (=> d!1247104 m!4824413))

(declare-fun m!4824415 () Bool)

(assert (=> b!4238961 m!4824415))

(assert (=> b!4238961 m!4824415))

(declare-fun m!4824417 () Bool)

(assert (=> b!4238961 m!4824417))

(declare-fun m!4824419 () Bool)

(assert (=> b!4238962 m!4824419))

(assert (=> b!4238373 d!1247104))

(declare-fun d!1247106 () Bool)

(declare-fun lt!1506288 () Int)

(assert (=> d!1247106 (>= lt!1506288 0)))

(declare-fun e!2632335 () Int)

(assert (=> d!1247106 (= lt!1506288 e!2632335)))

(declare-fun c!720305 () Bool)

(assert (=> d!1247106 (= c!720305 ((_ is Nil!46863) (t!350074 longerInput!51)))))

(assert (=> d!1247106 (= (size!34330 (t!350074 longerInput!51)) lt!1506288)))

(declare-fun b!4238964 () Bool)

(assert (=> b!4238964 (= e!2632335 0)))

(declare-fun b!4238965 () Bool)

(assert (=> b!4238965 (= e!2632335 (+ 1 (size!34330 (t!350074 (t!350074 longerInput!51)))))))

(assert (= (and d!1247106 c!720305) b!4238964))

(assert (= (and d!1247106 (not c!720305)) b!4238965))

(declare-fun m!4824421 () Bool)

(assert (=> b!4238965 m!4824421))

(assert (=> b!4238155 d!1247106))

(declare-fun d!1247108 () Bool)

(declare-fun c!720306 () Bool)

(assert (=> d!1247108 (= c!720306 ((_ is Node!14133) (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071)))))))))

(declare-fun e!2632336 () Bool)

(assert (=> d!1247108 (= (inv!61600 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071)))))) e!2632336)))

(declare-fun b!4238966 () Bool)

(assert (=> b!4238966 (= e!2632336 (inv!61604 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071)))))))))

(declare-fun b!4238967 () Bool)

(declare-fun e!2632337 () Bool)

(assert (=> b!4238967 (= e!2632336 e!2632337)))

(declare-fun res!1743193 () Bool)

(assert (=> b!4238967 (= res!1743193 (not ((_ is Leaf!21853) (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071))))))))))

(assert (=> b!4238967 (=> res!1743193 e!2632337)))

(declare-fun b!4238968 () Bool)

(assert (=> b!4238968 (= e!2632337 (inv!61605 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071)))))))))

(assert (= (and d!1247108 c!720306) b!4238966))

(assert (= (and d!1247108 (not c!720306)) b!4238967))

(assert (= (and b!4238967 (not res!1743193)) b!4238968))

(declare-fun m!4824423 () Bool)

(assert (=> b!4238966 m!4824423))

(declare-fun m!4824425 () Bool)

(assert (=> b!4238968 m!4824425))

(assert (=> b!4238318 d!1247108))

(declare-fun b!4238969 () Bool)

(declare-fun e!2632339 () List!46987)

(assert (=> b!4238969 (= e!2632339 (_2!25353 (get!15239 lt!1506119)))))

(declare-fun b!4238971 () Bool)

(declare-fun res!1743194 () Bool)

(declare-fun e!2632338 () Bool)

(assert (=> b!4238971 (=> (not res!1743194) (not e!2632338))))

(declare-fun lt!1506289 () List!46987)

(assert (=> b!4238971 (= res!1743194 (= (size!34330 lt!1506289) (+ (size!34330 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119))))) (size!34330 (_2!25353 (get!15239 lt!1506119))))))))

(declare-fun d!1247110 () Bool)

(assert (=> d!1247110 e!2632338))

(declare-fun res!1743195 () Bool)

(assert (=> d!1247110 (=> (not res!1743195) (not e!2632338))))

(assert (=> d!1247110 (= res!1743195 (= (content!7365 lt!1506289) ((_ map or) (content!7365 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119))))) (content!7365 (_2!25353 (get!15239 lt!1506119))))))))

(assert (=> d!1247110 (= lt!1506289 e!2632339)))

(declare-fun c!720307 () Bool)

(assert (=> d!1247110 (= c!720307 ((_ is Nil!46863) (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119))))))))

(assert (=> d!1247110 (= (++!11933 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119)))) (_2!25353 (get!15239 lt!1506119))) lt!1506289)))

(declare-fun b!4238970 () Bool)

(assert (=> b!4238970 (= e!2632339 (Cons!46863 (h!52283 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119))))) (++!11933 (t!350074 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119))))) (_2!25353 (get!15239 lt!1506119)))))))

(declare-fun b!4238972 () Bool)

(assert (=> b!4238972 (= e!2632338 (or (not (= (_2!25353 (get!15239 lt!1506119)) Nil!46863)) (= lt!1506289 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506119)))))))))

(assert (= (and d!1247110 c!720307) b!4238969))

(assert (= (and d!1247110 (not c!720307)) b!4238970))

(assert (= (and d!1247110 res!1743195) b!4238971))

(assert (= (and b!4238971 res!1743194) b!4238972))

(declare-fun m!4824427 () Bool)

(assert (=> b!4238971 m!4824427))

(assert (=> b!4238971 m!4823457))

(declare-fun m!4824429 () Bool)

(assert (=> b!4238971 m!4824429))

(assert (=> b!4238971 m!4823469))

(declare-fun m!4824431 () Bool)

(assert (=> d!1247110 m!4824431))

(assert (=> d!1247110 m!4823457))

(declare-fun m!4824433 () Bool)

(assert (=> d!1247110 m!4824433))

(declare-fun m!4824435 () Bool)

(assert (=> d!1247110 m!4824435))

(declare-fun m!4824437 () Bool)

(assert (=> b!4238970 m!4824437))

(assert (=> b!4238144 d!1247110))

(assert (=> b!4238144 d!1247028))

(assert (=> b!4238144 d!1247030))

(assert (=> b!4238144 d!1247022))

(declare-fun d!1247112 () Bool)

(declare-fun c!720308 () Bool)

(assert (=> d!1247112 (= c!720308 ((_ is Node!14133) (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581))))))))

(declare-fun e!2632340 () Bool)

(assert (=> d!1247112 (= (inv!61600 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581))))) e!2632340)))

(declare-fun b!4238973 () Bool)

(assert (=> b!4238973 (= e!2632340 (inv!61604 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581))))))))

(declare-fun b!4238974 () Bool)

(declare-fun e!2632341 () Bool)

(assert (=> b!4238974 (= e!2632340 e!2632341)))

(declare-fun res!1743196 () Bool)

(assert (=> b!4238974 (= res!1743196 (not ((_ is Leaf!21853) (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581)))))))))

(assert (=> b!4238974 (=> res!1743196 e!2632341)))

(declare-fun b!4238975 () Bool)

(assert (=> b!4238975 (= e!2632341 (inv!61605 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581))))))))

(assert (= (and d!1247112 c!720308) b!4238973))

(assert (= (and d!1247112 (not c!720308)) b!4238974))

(assert (= (and b!4238974 (not res!1743196)) b!4238975))

(declare-fun m!4824439 () Bool)

(assert (=> b!4238973 m!4824439))

(declare-fun m!4824441 () Bool)

(assert (=> b!4238975 m!4824441))

(assert (=> b!4238325 d!1247112))

(declare-fun bm!293813 () Bool)

(declare-fun call!293818 () Option!10058)

(assert (=> bm!293813 (= call!293818 (maxPrefixOneRule!3446 thiss!21540 (h!52285 (t!350076 rules!2932)) longerInput!51))))

(declare-fun b!4238977 () Bool)

(declare-fun res!1743201 () Bool)

(declare-fun e!2632342 () Bool)

(assert (=> b!4238977 (=> (not res!1743201) (not e!2632342))))

(declare-fun lt!1506291 () Option!10058)

(assert (=> b!4238977 (= res!1743201 (= (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506291)))) (originalCharacters!8266 (_1!25353 (get!15239 lt!1506291)))))))

(declare-fun b!4238978 () Bool)

(assert (=> b!4238978 (= e!2632342 (contains!9721 (t!350076 rules!2932) (rule!11046 (_1!25353 (get!15239 lt!1506291)))))))

(declare-fun b!4238979 () Bool)

(declare-fun e!2632343 () Bool)

(assert (=> b!4238979 (= e!2632343 e!2632342)))

(declare-fun res!1743203 () Bool)

(assert (=> b!4238979 (=> (not res!1743203) (not e!2632342))))

(assert (=> b!4238979 (= res!1743203 (isDefined!7436 lt!1506291))))

(declare-fun b!4238980 () Bool)

(declare-fun res!1743198 () Bool)

(assert (=> b!4238980 (=> (not res!1743198) (not e!2632342))))

(assert (=> b!4238980 (= res!1743198 (= (++!11933 (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506291)))) (_2!25353 (get!15239 lt!1506291))) longerInput!51))))

(declare-fun b!4238981 () Bool)

(declare-fun res!1743202 () Bool)

(assert (=> b!4238981 (=> (not res!1743202) (not e!2632342))))

(assert (=> b!4238981 (= res!1743202 (matchR!6443 (regex!7922 (rule!11046 (_1!25353 (get!15239 lt!1506291)))) (list!16895 (charsOf!5276 (_1!25353 (get!15239 lt!1506291))))))))

(declare-fun b!4238982 () Bool)

(declare-fun e!2632344 () Option!10058)

(declare-fun lt!1506293 () Option!10058)

(declare-fun lt!1506290 () Option!10058)

(assert (=> b!4238982 (= e!2632344 (ite (and ((_ is None!10057) lt!1506293) ((_ is None!10057) lt!1506290)) None!10057 (ite ((_ is None!10057) lt!1506290) lt!1506293 (ite ((_ is None!10057) lt!1506293) lt!1506290 (ite (>= (size!34329 (_1!25353 (v!41005 lt!1506293))) (size!34329 (_1!25353 (v!41005 lt!1506290)))) lt!1506293 lt!1506290)))))))

(assert (=> b!4238982 (= lt!1506293 call!293818)))

(assert (=> b!4238982 (= lt!1506290 (maxPrefix!4475 thiss!21540 (t!350076 (t!350076 rules!2932)) longerInput!51))))

(declare-fun d!1247114 () Bool)

(assert (=> d!1247114 e!2632343))

(declare-fun res!1743199 () Bool)

(assert (=> d!1247114 (=> res!1743199 e!2632343)))

(assert (=> d!1247114 (= res!1743199 (isEmpty!27703 lt!1506291))))

(assert (=> d!1247114 (= lt!1506291 e!2632344)))

(declare-fun c!720309 () Bool)

(assert (=> d!1247114 (= c!720309 (and ((_ is Cons!46865) (t!350076 rules!2932)) ((_ is Nil!46865) (t!350076 (t!350076 rules!2932)))))))

(declare-fun lt!1506294 () Unit!65957)

(declare-fun lt!1506292 () Unit!65957)

(assert (=> d!1247114 (= lt!1506294 lt!1506292)))

(assert (=> d!1247114 (isPrefix!4721 longerInput!51 longerInput!51)))

(assert (=> d!1247114 (= lt!1506292 (lemmaIsPrefixRefl!3118 longerInput!51 longerInput!51))))

(assert (=> d!1247114 (rulesValidInductive!2970 thiss!21540 (t!350076 rules!2932))))

(assert (=> d!1247114 (= (maxPrefix!4475 thiss!21540 (t!350076 rules!2932) longerInput!51) lt!1506291)))

(declare-fun b!4238976 () Bool)

(assert (=> b!4238976 (= e!2632344 call!293818)))

(declare-fun b!4238983 () Bool)

(declare-fun res!1743200 () Bool)

(assert (=> b!4238983 (=> (not res!1743200) (not e!2632342))))

(assert (=> b!4238983 (= res!1743200 (< (size!34330 (_2!25353 (get!15239 lt!1506291))) (size!34330 longerInput!51)))))

(declare-fun b!4238984 () Bool)

(declare-fun res!1743197 () Bool)

(assert (=> b!4238984 (=> (not res!1743197) (not e!2632342))))

(assert (=> b!4238984 (= res!1743197 (= (value!246313 (_1!25353 (get!15239 lt!1506291))) (apply!10748 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506291)))) (seqFromList!5808 (originalCharacters!8266 (_1!25353 (get!15239 lt!1506291)))))))))

(assert (= (and d!1247114 c!720309) b!4238976))

(assert (= (and d!1247114 (not c!720309)) b!4238982))

(assert (= (or b!4238976 b!4238982) bm!293813))

(assert (= (and d!1247114 (not res!1743199)) b!4238979))

(assert (= (and b!4238979 res!1743203) b!4238977))

(assert (= (and b!4238977 res!1743201) b!4238983))

(assert (= (and b!4238983 res!1743200) b!4238980))

(assert (= (and b!4238980 res!1743198) b!4238984))

(assert (= (and b!4238984 res!1743197) b!4238981))

(assert (= (and b!4238981 res!1743202) b!4238978))

(declare-fun m!4824443 () Bool)

(assert (=> b!4238982 m!4824443))

(declare-fun m!4824445 () Bool)

(assert (=> bm!293813 m!4824445))

(declare-fun m!4824447 () Bool)

(assert (=> b!4238981 m!4824447))

(declare-fun m!4824449 () Bool)

(assert (=> b!4238981 m!4824449))

(assert (=> b!4238981 m!4824449))

(declare-fun m!4824451 () Bool)

(assert (=> b!4238981 m!4824451))

(assert (=> b!4238981 m!4824451))

(declare-fun m!4824453 () Bool)

(assert (=> b!4238981 m!4824453))

(assert (=> b!4238984 m!4824447))

(declare-fun m!4824455 () Bool)

(assert (=> b!4238984 m!4824455))

(assert (=> b!4238984 m!4824455))

(declare-fun m!4824457 () Bool)

(assert (=> b!4238984 m!4824457))

(declare-fun m!4824459 () Bool)

(assert (=> b!4238979 m!4824459))

(assert (=> b!4238977 m!4824447))

(assert (=> b!4238977 m!4824449))

(assert (=> b!4238977 m!4824449))

(assert (=> b!4238977 m!4824451))

(assert (=> b!4238978 m!4824447))

(declare-fun m!4824461 () Bool)

(assert (=> b!4238978 m!4824461))

(assert (=> b!4238983 m!4824447))

(declare-fun m!4824463 () Bool)

(assert (=> b!4238983 m!4824463))

(assert (=> b!4238983 m!4823277))

(declare-fun m!4824465 () Bool)

(assert (=> d!1247114 m!4824465))

(assert (=> d!1247114 m!4823473))

(assert (=> d!1247114 m!4823475))

(assert (=> d!1247114 m!4824221))

(assert (=> b!4238980 m!4824447))

(assert (=> b!4238980 m!4824449))

(assert (=> b!4238980 m!4824449))

(assert (=> b!4238980 m!4824451))

(assert (=> b!4238980 m!4824451))

(declare-fun m!4824467 () Bool)

(assert (=> b!4238980 m!4824467))

(assert (=> b!4238146 d!1247114))

(declare-fun d!1247116 () Bool)

(declare-fun res!1743204 () Bool)

(declare-fun e!2632345 () Bool)

(assert (=> d!1247116 (=> (not res!1743204) (not e!2632345))))

(assert (=> d!1247116 (= res!1743204 (not (isEmpty!27699 (originalCharacters!8266 (h!52284 (t!350075 addTokens!17))))))))

(assert (=> d!1247116 (= (inv!61596 (h!52284 (t!350075 addTokens!17))) e!2632345)))

(declare-fun b!4238985 () Bool)

(declare-fun res!1743205 () Bool)

(assert (=> b!4238985 (=> (not res!1743205) (not e!2632345))))

(assert (=> b!4238985 (= res!1743205 (= (originalCharacters!8266 (h!52284 (t!350075 addTokens!17))) (list!16895 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (value!246313 (h!52284 (t!350075 addTokens!17)))))))))

(declare-fun b!4238986 () Bool)

(assert (=> b!4238986 (= e!2632345 (= (size!34329 (h!52284 (t!350075 addTokens!17))) (size!34330 (originalCharacters!8266 (h!52284 (t!350075 addTokens!17))))))))

(assert (= (and d!1247116 res!1743204) b!4238985))

(assert (= (and b!4238985 res!1743205) b!4238986))

(declare-fun b_lambda!124787 () Bool)

(assert (=> (not b_lambda!124787) (not b!4238985)))

(declare-fun t!350340 () Bool)

(declare-fun tb!254537 () Bool)

(assert (=> (and b!4238020 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17)))))) t!350340) tb!254537))

(declare-fun b!4238987 () Bool)

(declare-fun e!2632346 () Bool)

(declare-fun tp!1298928 () Bool)

(assert (=> b!4238987 (= e!2632346 (and (inv!61600 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (value!246313 (h!52284 (t!350075 addTokens!17)))))) tp!1298928))))

(declare-fun result!310460 () Bool)

(assert (=> tb!254537 (= result!310460 (and (inv!61601 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (value!246313 (h!52284 (t!350075 addTokens!17))))) e!2632346))))

(assert (= tb!254537 b!4238987))

(declare-fun m!4824469 () Bool)

(assert (=> b!4238987 m!4824469))

(declare-fun m!4824471 () Bool)

(assert (=> tb!254537 m!4824471))

(assert (=> b!4238985 t!350340))

(declare-fun b_and!335141 () Bool)

(assert (= b_and!335133 (and (=> t!350340 result!310460) b_and!335141)))

(declare-fun tb!254539 () Bool)

(declare-fun t!350342 () Bool)

(assert (=> (and b!4238376 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17)))))) t!350342) tb!254539))

(declare-fun result!310462 () Bool)

(assert (= result!310462 result!310460))

(assert (=> b!4238985 t!350342))

(declare-fun b_and!335143 () Bool)

(assert (= b_and!335131 (and (=> t!350342 result!310462) b_and!335143)))

(declare-fun t!350344 () Bool)

(declare-fun tb!254541 () Bool)

(assert (=> (and b!4238391 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17)))))) t!350344) tb!254541))

(declare-fun result!310464 () Bool)

(assert (= result!310464 result!310460))

(assert (=> b!4238985 t!350344))

(declare-fun b_and!335145 () Bool)

(assert (= b_and!335135 (and (=> t!350344 result!310464) b_and!335145)))

(declare-fun t!350346 () Bool)

(declare-fun tb!254543 () Bool)

(assert (=> (and b!4238032 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17)))))) t!350346) tb!254543))

(declare-fun result!310466 () Bool)

(assert (= result!310466 result!310460))

(assert (=> b!4238985 t!350346))

(declare-fun b_and!335147 () Bool)

(assert (= b_and!335129 (and (=> t!350346 result!310466) b_and!335147)))

(declare-fun t!350348 () Bool)

(declare-fun tb!254545 () Bool)

(assert (=> (and b!4238387 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17)))))) t!350348) tb!254545))

(declare-fun result!310468 () Bool)

(assert (= result!310468 result!310460))

(assert (=> b!4238985 t!350348))

(declare-fun b_and!335149 () Bool)

(assert (= b_and!335137 (and (=> t!350348 result!310468) b_and!335149)))

(declare-fun t!350350 () Bool)

(declare-fun tb!254547 () Bool)

(assert (=> (and b!4238014 (= (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17)))))) t!350350) tb!254547))

(declare-fun result!310470 () Bool)

(assert (= result!310470 result!310460))

(assert (=> b!4238985 t!350350))

(declare-fun b_and!335151 () Bool)

(assert (= b_and!335139 (and (=> t!350350 result!310470) b_and!335151)))

(declare-fun m!4824473 () Bool)

(assert (=> d!1247116 m!4824473))

(declare-fun m!4824475 () Bool)

(assert (=> b!4238985 m!4824475))

(assert (=> b!4238985 m!4824475))

(declare-fun m!4824477 () Bool)

(assert (=> b!4238985 m!4824477))

(declare-fun m!4824479 () Bool)

(assert (=> b!4238986 m!4824479))

(assert (=> b!4238388 d!1247116))

(declare-fun d!1247118 () Bool)

(declare-fun lt!1506295 () Int)

(assert (=> d!1247118 (>= lt!1506295 0)))

(declare-fun e!2632347 () Int)

(assert (=> d!1247118 (= lt!1506295 e!2632347)))

(declare-fun c!720310 () Bool)

(assert (=> d!1247118 (= c!720310 ((_ is Nil!46864) (t!350075 addTokens!17)))))

(assert (=> d!1247118 (= (size!34331 (t!350075 addTokens!17)) lt!1506295)))

(declare-fun b!4238988 () Bool)

(assert (=> b!4238988 (= e!2632347 0)))

(declare-fun b!4238989 () Bool)

(assert (=> b!4238989 (= e!2632347 (+ 1 (size!34331 (t!350075 (t!350075 addTokens!17)))))))

(assert (= (and d!1247118 c!720310) b!4238988))

(assert (= (and d!1247118 (not c!720310)) b!4238989))

(declare-fun m!4824481 () Bool)

(assert (=> b!4238989 m!4824481))

(assert (=> b!4238334 d!1247118))

(declare-fun d!1247120 () Bool)

(assert (=> d!1247120 (= (inv!15 (value!246313 (h!52284 tokens!581))) (= (charsToBigInt!0 (text!57513 (value!246313 (h!52284 tokens!581))) 0) (value!246308 (value!246313 (h!52284 tokens!581)))))))

(declare-fun bs!598279 () Bool)

(assert (= bs!598279 d!1247120))

(declare-fun m!4824483 () Bool)

(assert (=> bs!598279 m!4824483))

(assert (=> b!4238202 d!1247120))

(declare-fun d!1247122 () Bool)

(assert (=> d!1247122 (= (isEmpty!27703 lt!1506119) (not ((_ is Some!10057) lt!1506119)))))

(assert (=> d!1246758 d!1247122))

(declare-fun d!1247124 () Bool)

(declare-fun e!2632348 () Bool)

(assert (=> d!1247124 e!2632348))

(declare-fun res!1743209 () Bool)

(assert (=> d!1247124 (=> res!1743209 e!2632348)))

(declare-fun lt!1506296 () Bool)

(assert (=> d!1247124 (= res!1743209 (not lt!1506296))))

(declare-fun e!2632349 () Bool)

(assert (=> d!1247124 (= lt!1506296 e!2632349)))

(declare-fun res!1743206 () Bool)

(assert (=> d!1247124 (=> res!1743206 e!2632349)))

(assert (=> d!1247124 (= res!1743206 ((_ is Nil!46863) longerInput!51))))

(assert (=> d!1247124 (= (isPrefix!4721 longerInput!51 longerInput!51) lt!1506296)))

(declare-fun b!4238992 () Bool)

(declare-fun e!2632350 () Bool)

(assert (=> b!4238992 (= e!2632350 (isPrefix!4721 (tail!6838 longerInput!51) (tail!6838 longerInput!51)))))

(declare-fun b!4238993 () Bool)

(assert (=> b!4238993 (= e!2632348 (>= (size!34330 longerInput!51) (size!34330 longerInput!51)))))

(declare-fun b!4238990 () Bool)

(assert (=> b!4238990 (= e!2632349 e!2632350)))

(declare-fun res!1743208 () Bool)

(assert (=> b!4238990 (=> (not res!1743208) (not e!2632350))))

(assert (=> b!4238990 (= res!1743208 (not ((_ is Nil!46863) longerInput!51)))))

(declare-fun b!4238991 () Bool)

(declare-fun res!1743207 () Bool)

(assert (=> b!4238991 (=> (not res!1743207) (not e!2632350))))

(assert (=> b!4238991 (= res!1743207 (= (head!8985 longerInput!51) (head!8985 longerInput!51)))))

(assert (= (and d!1247124 (not res!1743206)) b!4238990))

(assert (= (and b!4238990 res!1743208) b!4238991))

(assert (= (and b!4238991 res!1743207) b!4238992))

(assert (= (and d!1247124 (not res!1743209)) b!4238993))

(declare-fun m!4824485 () Bool)

(assert (=> b!4238992 m!4824485))

(assert (=> b!4238992 m!4824485))

(assert (=> b!4238992 m!4824485))

(assert (=> b!4238992 m!4824485))

(declare-fun m!4824487 () Bool)

(assert (=> b!4238992 m!4824487))

(assert (=> b!4238993 m!4823277))

(assert (=> b!4238993 m!4823277))

(declare-fun m!4824489 () Bool)

(assert (=> b!4238991 m!4824489))

(assert (=> b!4238991 m!4824489))

(assert (=> d!1246758 d!1247124))

(declare-fun d!1247126 () Bool)

(assert (=> d!1247126 (isPrefix!4721 longerInput!51 longerInput!51)))

(declare-fun lt!1506297 () Unit!65957)

(assert (=> d!1247126 (= lt!1506297 (choose!25943 longerInput!51 longerInput!51))))

(assert (=> d!1247126 (= (lemmaIsPrefixRefl!3118 longerInput!51 longerInput!51) lt!1506297)))

(declare-fun bs!598280 () Bool)

(assert (= bs!598280 d!1247126))

(assert (=> bs!598280 m!4823473))

(declare-fun m!4824491 () Bool)

(assert (=> bs!598280 m!4824491))

(assert (=> d!1246758 d!1247126))

(assert (=> d!1246758 d!1247038))

(declare-fun d!1247128 () Bool)

(declare-fun lt!1506298 () Bool)

(assert (=> d!1247128 (= lt!1506298 (select (content!7367 rules!2932) (rule!11046 (_1!25353 (get!15239 lt!1506119)))))))

(declare-fun e!2632352 () Bool)

(assert (=> d!1247128 (= lt!1506298 e!2632352)))

(declare-fun res!1743210 () Bool)

(assert (=> d!1247128 (=> (not res!1743210) (not e!2632352))))

(assert (=> d!1247128 (= res!1743210 ((_ is Cons!46865) rules!2932))))

(assert (=> d!1247128 (= (contains!9721 rules!2932 (rule!11046 (_1!25353 (get!15239 lt!1506119)))) lt!1506298)))

(declare-fun b!4238994 () Bool)

(declare-fun e!2632351 () Bool)

(assert (=> b!4238994 (= e!2632352 e!2632351)))

(declare-fun res!1743211 () Bool)

(assert (=> b!4238994 (=> res!1743211 e!2632351)))

(assert (=> b!4238994 (= res!1743211 (= (h!52285 rules!2932) (rule!11046 (_1!25353 (get!15239 lt!1506119)))))))

(declare-fun b!4238995 () Bool)

(assert (=> b!4238995 (= e!2632351 (contains!9721 (t!350076 rules!2932) (rule!11046 (_1!25353 (get!15239 lt!1506119)))))))

(assert (= (and d!1247128 res!1743210) b!4238994))

(assert (= (and b!4238994 (not res!1743211)) b!4238995))

(assert (=> d!1247128 m!4824391))

(declare-fun m!4824493 () Bool)

(assert (=> d!1247128 m!4824493))

(declare-fun m!4824495 () Bool)

(assert (=> b!4238995 m!4824495))

(assert (=> b!4238142 d!1247128))

(assert (=> b!4238142 d!1247022))

(declare-fun d!1247130 () Bool)

(declare-fun lt!1506299 () Int)

(assert (=> d!1247130 (>= lt!1506299 0)))

(declare-fun e!2632353 () Int)

(assert (=> d!1247130 (= lt!1506299 e!2632353)))

(declare-fun c!720311 () Bool)

(assert (=> d!1247130 (= c!720311 ((_ is Nil!46863) (originalCharacters!8266 (h!52284 addTokens!17))))))

(assert (=> d!1247130 (= (size!34330 (originalCharacters!8266 (h!52284 addTokens!17))) lt!1506299)))

(declare-fun b!4238996 () Bool)

(assert (=> b!4238996 (= e!2632353 0)))

(declare-fun b!4238997 () Bool)

(assert (=> b!4238997 (= e!2632353 (+ 1 (size!34330 (t!350074 (originalCharacters!8266 (h!52284 addTokens!17))))))))

(assert (= (and d!1247130 c!720311) b!4238996))

(assert (= (and d!1247130 (not c!720311)) b!4238997))

(declare-fun m!4824497 () Bool)

(assert (=> b!4238997 m!4824497))

(assert (=> b!4238327 d!1247130))

(declare-fun d!1247132 () Bool)

(declare-fun lt!1506300 () Int)

(assert (=> d!1247132 (>= lt!1506300 0)))

(declare-fun e!2632354 () Int)

(assert (=> d!1247132 (= lt!1506300 e!2632354)))

(declare-fun c!720312 () Bool)

(assert (=> d!1247132 (= c!720312 ((_ is Nil!46864) (_1!25354 lt!1506145)))))

(assert (=> d!1247132 (= (size!34331 (_1!25354 lt!1506145)) lt!1506300)))

(declare-fun b!4238998 () Bool)

(assert (=> b!4238998 (= e!2632354 0)))

(declare-fun b!4238999 () Bool)

(assert (=> b!4238999 (= e!2632354 (+ 1 (size!34331 (t!350075 (_1!25354 lt!1506145)))))))

(assert (= (and d!1247132 c!720312) b!4238998))

(assert (= (and d!1247132 (not c!720312)) b!4238999))

(declare-fun m!4824499 () Bool)

(assert (=> b!4238999 m!4824499))

(assert (=> d!1246786 d!1247132))

(assert (=> d!1246786 d!1246758))

(declare-fun bs!598281 () Bool)

(declare-fun d!1247134 () Bool)

(assert (= bs!598281 (and d!1247134 d!1246816)))

(declare-fun lambda!130111 () Int)

(assert (=> bs!598281 (= (and (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toChars!10529 (transformation!7922 (h!52285 rules!2932)))) (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toValue!10670 (transformation!7922 (h!52285 rules!2932))))) (= lambda!130111 lambda!130093))))

(declare-fun bs!598282 () Bool)

(assert (= bs!598282 (and d!1247134 d!1247086)))

(assert (=> bs!598282 (= (and (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581))))) (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toValue!10670 (transformation!7922 (rule!11046 (h!52284 tokens!581)))))) (= lambda!130111 lambda!130110))))

(assert (=> d!1247134 true))

(assert (=> d!1247134 (< (dynLambda!20089 order!24667 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) (dynLambda!20090 order!24669 lambda!130111))))

(assert (=> d!1247134 true))

(assert (=> d!1247134 (< (dynLambda!20091 order!24671 (toValue!10670 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) (dynLambda!20090 order!24669 lambda!130111))))

(assert (=> d!1247134 (= (semiInverseModEq!3445 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toValue!10670 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) (Forall!1593 lambda!130111))))

(declare-fun bs!598283 () Bool)

(assert (= bs!598283 d!1247134))

(declare-fun m!4824501 () Bool)

(assert (=> bs!598283 m!4824501))

(assert (=> d!1246762 d!1247134))

(declare-fun d!1247136 () Bool)

(declare-fun res!1743216 () Bool)

(declare-fun e!2632359 () Bool)

(assert (=> d!1247136 (=> res!1743216 e!2632359)))

(assert (=> d!1247136 (= res!1743216 ((_ is Nil!46865) rules!2932))))

(assert (=> d!1247136 (= (noDuplicateTag!3228 thiss!21540 rules!2932 Nil!46866) e!2632359)))

(declare-fun b!4239004 () Bool)

(declare-fun e!2632360 () Bool)

(assert (=> b!4239004 (= e!2632359 e!2632360)))

(declare-fun res!1743217 () Bool)

(assert (=> b!4239004 (=> (not res!1743217) (not e!2632360))))

(declare-fun contains!9723 (List!46990 String!54690) Bool)

(assert (=> b!4239004 (= res!1743217 (not (contains!9723 Nil!46866 (tag!8786 (h!52285 rules!2932)))))))

(declare-fun b!4239005 () Bool)

(assert (=> b!4239005 (= e!2632360 (noDuplicateTag!3228 thiss!21540 (t!350076 rules!2932) (Cons!46866 (tag!8786 (h!52285 rules!2932)) Nil!46866)))))

(assert (= (and d!1247136 (not res!1743216)) b!4239004))

(assert (= (and b!4239004 res!1743217) b!4239005))

(declare-fun m!4824503 () Bool)

(assert (=> b!4239004 m!4824503))

(declare-fun m!4824505 () Bool)

(assert (=> b!4239005 m!4824505))

(assert (=> b!4238043 d!1247136))

(declare-fun d!1247138 () Bool)

(declare-fun c!720315 () Bool)

(assert (=> d!1247138 (= c!720315 ((_ is Nil!46863) lt!1506150))))

(declare-fun e!2632363 () (InoxSet C!25852))

(assert (=> d!1247138 (= (content!7365 lt!1506150) e!2632363)))

(declare-fun b!4239010 () Bool)

(assert (=> b!4239010 (= e!2632363 ((as const (Array C!25852 Bool)) false))))

(declare-fun b!4239011 () Bool)

(assert (=> b!4239011 (= e!2632363 ((_ map or) (store ((as const (Array C!25852 Bool)) false) (h!52283 lt!1506150) true) (content!7365 (t!350074 lt!1506150))))))

(assert (= (and d!1247138 c!720315) b!4239010))

(assert (= (and d!1247138 (not c!720315)) b!4239011))

(declare-fun m!4824507 () Bool)

(assert (=> b!4239011 m!4824507))

(declare-fun m!4824509 () Bool)

(assert (=> b!4239011 m!4824509))

(assert (=> d!1246796 d!1247138))

(declare-fun d!1247140 () Bool)

(declare-fun c!720316 () Bool)

(assert (=> d!1247140 (= c!720316 ((_ is Nil!46863) (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))))))

(declare-fun e!2632364 () (InoxSet C!25852))

(assert (=> d!1247140 (= (content!7365 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))) e!2632364)))

(declare-fun b!4239012 () Bool)

(assert (=> b!4239012 (= e!2632364 ((as const (Array C!25852 Bool)) false))))

(declare-fun b!4239013 () Bool)

(assert (=> b!4239013 (= e!2632364 ((_ map or) (store ((as const (Array C!25852 Bool)) false) (h!52283 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))) true) (content!7365 (t!350074 (list!16895 (charsOf!5276 (_1!25353 (v!41005 lt!1506071))))))))))

(assert (= (and d!1247140 c!720316) b!4239012))

(assert (= (and d!1247140 (not c!720316)) b!4239013))

(declare-fun m!4824511 () Bool)

(assert (=> b!4239013 m!4824511))

(assert (=> b!4239013 m!4824361))

(assert (=> d!1246796 d!1247140))

(declare-fun d!1247142 () Bool)

(declare-fun c!720317 () Bool)

(assert (=> d!1247142 (= c!720317 ((_ is Nil!46863) (_2!25353 (v!41005 lt!1506071))))))

(declare-fun e!2632365 () (InoxSet C!25852))

(assert (=> d!1247142 (= (content!7365 (_2!25353 (v!41005 lt!1506071))) e!2632365)))

(declare-fun b!4239014 () Bool)

(assert (=> b!4239014 (= e!2632365 ((as const (Array C!25852 Bool)) false))))

(declare-fun b!4239015 () Bool)

(assert (=> b!4239015 (= e!2632365 ((_ map or) (store ((as const (Array C!25852 Bool)) false) (h!52283 (_2!25353 (v!41005 lt!1506071))) true) (content!7365 (t!350074 (_2!25353 (v!41005 lt!1506071))))))))

(assert (= (and d!1247142 c!720317) b!4239014))

(assert (= (and d!1247142 (not c!720317)) b!4239015))

(declare-fun m!4824513 () Bool)

(assert (=> b!4239015 m!4824513))

(declare-fun m!4824515 () Bool)

(assert (=> b!4239015 m!4824515))

(assert (=> d!1246796 d!1247142))

(declare-fun b!4239017 () Bool)

(declare-fun e!2632366 () Bool)

(declare-fun tp!1298933 () Bool)

(declare-fun tp!1298929 () Bool)

(assert (=> b!4239017 (= e!2632366 (and tp!1298933 tp!1298929))))

(declare-fun b!4239019 () Bool)

(declare-fun tp!1298931 () Bool)

(declare-fun tp!1298930 () Bool)

(assert (=> b!4239019 (= e!2632366 (and tp!1298931 tp!1298930))))

(declare-fun b!4239016 () Bool)

(assert (=> b!4239016 (= e!2632366 tp_is_empty!22645)))

(assert (=> b!4238352 (= tp!1298748 e!2632366)))

(declare-fun b!4239018 () Bool)

(declare-fun tp!1298932 () Bool)

(assert (=> b!4239018 (= e!2632366 tp!1298932)))

(assert (= (and b!4238352 ((_ is ElementMatch!12827) (regOne!26167 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239016))

(assert (= (and b!4238352 ((_ is Concat!20980) (regOne!26167 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239017))

(assert (= (and b!4238352 ((_ is Star!12827) (regOne!26167 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239018))

(assert (= (and b!4238352 ((_ is Union!12827) (regOne!26167 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239019))

(declare-fun b!4239021 () Bool)

(declare-fun e!2632367 () Bool)

(declare-fun tp!1298938 () Bool)

(declare-fun tp!1298934 () Bool)

(assert (=> b!4239021 (= e!2632367 (and tp!1298938 tp!1298934))))

(declare-fun b!4239023 () Bool)

(declare-fun tp!1298936 () Bool)

(declare-fun tp!1298935 () Bool)

(assert (=> b!4239023 (= e!2632367 (and tp!1298936 tp!1298935))))

(declare-fun b!4239020 () Bool)

(assert (=> b!4239020 (= e!2632367 tp_is_empty!22645)))

(assert (=> b!4238352 (= tp!1298747 e!2632367)))

(declare-fun b!4239022 () Bool)

(declare-fun tp!1298937 () Bool)

(assert (=> b!4239022 (= e!2632367 tp!1298937)))

(assert (= (and b!4238352 ((_ is ElementMatch!12827) (regTwo!26167 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239020))

(assert (= (and b!4238352 ((_ is Concat!20980) (regTwo!26167 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239021))

(assert (= (and b!4238352 ((_ is Star!12827) (regTwo!26167 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239022))

(assert (= (and b!4238352 ((_ is Union!12827) (regTwo!26167 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239023))

(declare-fun b!4239025 () Bool)

(declare-fun e!2632368 () Bool)

(declare-fun tp!1298943 () Bool)

(declare-fun tp!1298939 () Bool)

(assert (=> b!4239025 (= e!2632368 (and tp!1298943 tp!1298939))))

(declare-fun b!4239027 () Bool)

(declare-fun tp!1298941 () Bool)

(declare-fun tp!1298940 () Bool)

(assert (=> b!4239027 (= e!2632368 (and tp!1298941 tp!1298940))))

(declare-fun b!4239024 () Bool)

(assert (=> b!4239024 (= e!2632368 tp_is_empty!22645)))

(assert (=> b!4238350 (= tp!1298750 e!2632368)))

(declare-fun b!4239026 () Bool)

(declare-fun tp!1298942 () Bool)

(assert (=> b!4239026 (= e!2632368 tp!1298942)))

(assert (= (and b!4238350 ((_ is ElementMatch!12827) (regOne!26166 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239024))

(assert (= (and b!4238350 ((_ is Concat!20980) (regOne!26166 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239025))

(assert (= (and b!4238350 ((_ is Star!12827) (regOne!26166 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239026))

(assert (= (and b!4238350 ((_ is Union!12827) (regOne!26166 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239027))

(declare-fun b!4239029 () Bool)

(declare-fun e!2632369 () Bool)

(declare-fun tp!1298948 () Bool)

(declare-fun tp!1298944 () Bool)

(assert (=> b!4239029 (= e!2632369 (and tp!1298948 tp!1298944))))

(declare-fun b!4239031 () Bool)

(declare-fun tp!1298946 () Bool)

(declare-fun tp!1298945 () Bool)

(assert (=> b!4239031 (= e!2632369 (and tp!1298946 tp!1298945))))

(declare-fun b!4239028 () Bool)

(assert (=> b!4239028 (= e!2632369 tp_is_empty!22645)))

(assert (=> b!4238350 (= tp!1298746 e!2632369)))

(declare-fun b!4239030 () Bool)

(declare-fun tp!1298947 () Bool)

(assert (=> b!4239030 (= e!2632369 tp!1298947)))

(assert (= (and b!4238350 ((_ is ElementMatch!12827) (regTwo!26166 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239028))

(assert (= (and b!4238350 ((_ is Concat!20980) (regTwo!26166 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239029))

(assert (= (and b!4238350 ((_ is Star!12827) (regTwo!26166 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239030))

(assert (= (and b!4238350 ((_ is Union!12827) (regTwo!26166 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239031))

(declare-fun b!4239033 () Bool)

(declare-fun e!2632370 () Bool)

(declare-fun tp!1298953 () Bool)

(declare-fun tp!1298949 () Bool)

(assert (=> b!4239033 (= e!2632370 (and tp!1298953 tp!1298949))))

(declare-fun b!4239035 () Bool)

(declare-fun tp!1298951 () Bool)

(declare-fun tp!1298950 () Bool)

(assert (=> b!4239035 (= e!2632370 (and tp!1298951 tp!1298950))))

(declare-fun b!4239032 () Bool)

(assert (=> b!4239032 (= e!2632370 tp_is_empty!22645)))

(assert (=> b!4238351 (= tp!1298749 e!2632370)))

(declare-fun b!4239034 () Bool)

(declare-fun tp!1298952 () Bool)

(assert (=> b!4239034 (= e!2632370 tp!1298952)))

(assert (= (and b!4238351 ((_ is ElementMatch!12827) (reg!13156 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239032))

(assert (= (and b!4238351 ((_ is Concat!20980) (reg!13156 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239033))

(assert (= (and b!4238351 ((_ is Star!12827) (reg!13156 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239034))

(assert (= (and b!4238351 ((_ is Union!12827) (reg!13156 (regex!7922 (rule!11046 (h!52284 addTokens!17)))))) b!4239035))

(declare-fun b!4239044 () Bool)

(declare-fun tp!1298960 () Bool)

(declare-fun tp!1298962 () Bool)

(declare-fun e!2632375 () Bool)

(assert (=> b!4239044 (= e!2632375 (and (inv!61600 (left!34832 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17)))))) tp!1298960 (inv!61600 (right!35162 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17)))))) tp!1298962))))

(declare-fun b!4239046 () Bool)

(declare-fun e!2632376 () Bool)

(declare-fun tp!1298961 () Bool)

(assert (=> b!4239046 (= e!2632376 tp!1298961)))

(declare-fun b!4239045 () Bool)

(declare-fun inv!61607 (IArray!28271) Bool)

(assert (=> b!4239045 (= e!2632375 (and (inv!61607 (xs!17439 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17)))))) e!2632376))))

(assert (=> b!4238328 (= tp!1298730 (and (inv!61600 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17))))) e!2632375))))

(assert (= (and b!4238328 ((_ is Node!14133) (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17)))))) b!4239044))

(assert (= b!4239045 b!4239046))

(assert (= (and b!4238328 ((_ is Leaf!21853) (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (value!246313 (h!52284 addTokens!17)))))) b!4239045))

(declare-fun m!4824517 () Bool)

(assert (=> b!4239044 m!4824517))

(declare-fun m!4824519 () Bool)

(assert (=> b!4239044 m!4824519))

(declare-fun m!4824521 () Bool)

(assert (=> b!4239045 m!4824521))

(assert (=> b!4238328 m!4823609))

(declare-fun b!4239047 () Bool)

(declare-fun e!2632377 () Bool)

(declare-fun tp!1298963 () Bool)

(assert (=> b!4239047 (= e!2632377 (and tp_is_empty!22645 tp!1298963))))

(assert (=> b!4238394 (= tp!1298794 e!2632377)))

(assert (= (and b!4238394 ((_ is Cons!46863) (t!350074 (t!350074 longerInput!51)))) b!4239047))

(declare-fun b!4239049 () Bool)

(declare-fun e!2632378 () Bool)

(declare-fun tp!1298968 () Bool)

(declare-fun tp!1298964 () Bool)

(assert (=> b!4239049 (= e!2632378 (and tp!1298968 tp!1298964))))

(declare-fun b!4239051 () Bool)

(declare-fun tp!1298966 () Bool)

(declare-fun tp!1298965 () Bool)

(assert (=> b!4239051 (= e!2632378 (and tp!1298966 tp!1298965))))

(declare-fun b!4239048 () Bool)

(assert (=> b!4239048 (= e!2632378 tp_is_empty!22645)))

(assert (=> b!4238375 (= tp!1298774 e!2632378)))

(declare-fun b!4239050 () Bool)

(declare-fun tp!1298967 () Bool)

(assert (=> b!4239050 (= e!2632378 tp!1298967)))

(assert (= (and b!4238375 ((_ is ElementMatch!12827) (regex!7922 (rule!11046 (h!52284 (t!350075 tokens!581)))))) b!4239048))

(assert (= (and b!4238375 ((_ is Concat!20980) (regex!7922 (rule!11046 (h!52284 (t!350075 tokens!581)))))) b!4239049))

(assert (= (and b!4238375 ((_ is Star!12827) (regex!7922 (rule!11046 (h!52284 (t!350075 tokens!581)))))) b!4239050))

(assert (= (and b!4238375 ((_ is Union!12827) (regex!7922 (rule!11046 (h!52284 (t!350075 tokens!581)))))) b!4239051))

(declare-fun b!4239052 () Bool)

(declare-fun e!2632379 () Bool)

(declare-fun tp!1298969 () Bool)

(assert (=> b!4239052 (= e!2632379 (and tp_is_empty!22645 tp!1298969))))

(assert (=> b!4238374 (= tp!1298770 e!2632379)))

(assert (= (and b!4238374 ((_ is Cons!46863) (originalCharacters!8266 (h!52284 (t!350075 tokens!581))))) b!4239052))

(declare-fun b!4239053 () Bool)

(declare-fun e!2632380 () Bool)

(declare-fun tp!1298970 () Bool)

(assert (=> b!4239053 (= e!2632380 (and tp_is_empty!22645 tp!1298970))))

(assert (=> b!4238393 (= tp!1298793 e!2632380)))

(assert (= (and b!4238393 ((_ is Cons!46863) (t!350074 (t!350074 suffix!1262)))) b!4239053))

(declare-fun b!4239054 () Bool)

(declare-fun e!2632381 () Bool)

(declare-fun tp!1298971 () Bool)

(assert (=> b!4239054 (= e!2632381 (and tp_is_empty!22645 tp!1298971))))

(assert (=> b!4238389 (= tp!1298787 e!2632381)))

(assert (= (and b!4238389 ((_ is Cons!46863) (originalCharacters!8266 (h!52284 (t!350075 addTokens!17))))) b!4239054))

(declare-fun b!4239055 () Bool)

(declare-fun e!2632382 () Bool)

(declare-fun tp!1298972 () Bool)

(assert (=> b!4239055 (= e!2632382 (and tp_is_empty!22645 tp!1298972))))

(assert (=> b!4238392 (= tp!1298792 e!2632382)))

(assert (= (and b!4238392 ((_ is Cons!46863) (t!350074 (t!350074 shorterInput!51)))) b!4239055))

(declare-fun b!4239057 () Bool)

(declare-fun e!2632383 () Bool)

(declare-fun tp!1298977 () Bool)

(declare-fun tp!1298973 () Bool)

(assert (=> b!4239057 (= e!2632383 (and tp!1298977 tp!1298973))))

(declare-fun b!4239059 () Bool)

(declare-fun tp!1298975 () Bool)

(declare-fun tp!1298974 () Bool)

(assert (=> b!4239059 (= e!2632383 (and tp!1298975 tp!1298974))))

(declare-fun b!4239056 () Bool)

(assert (=> b!4239056 (= e!2632383 tp_is_empty!22645)))

(assert (=> b!4238348 (= tp!1298743 e!2632383)))

(declare-fun b!4239058 () Bool)

(declare-fun tp!1298976 () Bool)

(assert (=> b!4239058 (= e!2632383 tp!1298976)))

(assert (= (and b!4238348 ((_ is ElementMatch!12827) (regOne!26167 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239056))

(assert (= (and b!4238348 ((_ is Concat!20980) (regOne!26167 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239057))

(assert (= (and b!4238348 ((_ is Star!12827) (regOne!26167 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239058))

(assert (= (and b!4238348 ((_ is Union!12827) (regOne!26167 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239059))

(declare-fun b!4239061 () Bool)

(declare-fun e!2632384 () Bool)

(declare-fun tp!1298982 () Bool)

(declare-fun tp!1298978 () Bool)

(assert (=> b!4239061 (= e!2632384 (and tp!1298982 tp!1298978))))

(declare-fun b!4239063 () Bool)

(declare-fun tp!1298980 () Bool)

(declare-fun tp!1298979 () Bool)

(assert (=> b!4239063 (= e!2632384 (and tp!1298980 tp!1298979))))

(declare-fun b!4239060 () Bool)

(assert (=> b!4239060 (= e!2632384 tp_is_empty!22645)))

(assert (=> b!4238348 (= tp!1298742 e!2632384)))

(declare-fun b!4239062 () Bool)

(declare-fun tp!1298981 () Bool)

(assert (=> b!4239062 (= e!2632384 tp!1298981)))

(assert (= (and b!4238348 ((_ is ElementMatch!12827) (regTwo!26167 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239060))

(assert (= (and b!4238348 ((_ is Concat!20980) (regTwo!26167 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239061))

(assert (= (and b!4238348 ((_ is Star!12827) (regTwo!26167 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239062))

(assert (= (and b!4238348 ((_ is Union!12827) (regTwo!26167 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239063))

(declare-fun b!4239065 () Bool)

(declare-fun e!2632385 () Bool)

(declare-fun tp!1298987 () Bool)

(declare-fun tp!1298983 () Bool)

(assert (=> b!4239065 (= e!2632385 (and tp!1298987 tp!1298983))))

(declare-fun b!4239067 () Bool)

(declare-fun tp!1298985 () Bool)

(declare-fun tp!1298984 () Bool)

(assert (=> b!4239067 (= e!2632385 (and tp!1298985 tp!1298984))))

(declare-fun b!4239064 () Bool)

(assert (=> b!4239064 (= e!2632385 tp_is_empty!22645)))

(assert (=> b!4238347 (= tp!1298744 e!2632385)))

(declare-fun b!4239066 () Bool)

(declare-fun tp!1298986 () Bool)

(assert (=> b!4239066 (= e!2632385 tp!1298986)))

(assert (= (and b!4238347 ((_ is ElementMatch!12827) (reg!13156 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239064))

(assert (= (and b!4238347 ((_ is Concat!20980) (reg!13156 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239065))

(assert (= (and b!4238347 ((_ is Star!12827) (reg!13156 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239066))

(assert (= (and b!4238347 ((_ is Union!12827) (reg!13156 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239067))

(declare-fun b!4239069 () Bool)

(declare-fun e!2632386 () Bool)

(declare-fun tp!1298992 () Bool)

(declare-fun tp!1298988 () Bool)

(assert (=> b!4239069 (= e!2632386 (and tp!1298992 tp!1298988))))

(declare-fun b!4239071 () Bool)

(declare-fun tp!1298990 () Bool)

(declare-fun tp!1298989 () Bool)

(assert (=> b!4239071 (= e!2632386 (and tp!1298990 tp!1298989))))

(declare-fun b!4239068 () Bool)

(assert (=> b!4239068 (= e!2632386 tp_is_empty!22645)))

(assert (=> b!4238390 (= tp!1298791 e!2632386)))

(declare-fun b!4239070 () Bool)

(declare-fun tp!1298991 () Bool)

(assert (=> b!4239070 (= e!2632386 tp!1298991)))

(assert (= (and b!4238390 ((_ is ElementMatch!12827) (regex!7922 (rule!11046 (h!52284 (t!350075 addTokens!17)))))) b!4239068))

(assert (= (and b!4238390 ((_ is Concat!20980) (regex!7922 (rule!11046 (h!52284 (t!350075 addTokens!17)))))) b!4239069))

(assert (= (and b!4238390 ((_ is Star!12827) (regex!7922 (rule!11046 (h!52284 (t!350075 addTokens!17)))))) b!4239070))

(assert (= (and b!4238390 ((_ is Union!12827) (regex!7922 (rule!11046 (h!52284 (t!350075 addTokens!17)))))) b!4239071))

(declare-fun b!4239075 () Bool)

(declare-fun b_free!125431 () Bool)

(declare-fun b_next!126135 () Bool)

(assert (=> b!4239075 (= b_free!125431 (not b_next!126135))))

(declare-fun tb!254549 () Bool)

(declare-fun t!350352 () Bool)

(assert (=> (and b!4239075 (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 tokens!581)))))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350352) tb!254549))

(declare-fun result!310474 () Bool)

(assert (= result!310474 result!310422))

(assert (=> d!1247066 t!350352))

(declare-fun t!350354 () Bool)

(declare-fun tb!254551 () Bool)

(assert (=> (and b!4239075 (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 tokens!581)))))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350354) tb!254551))

(declare-fun result!310476 () Bool)

(assert (= result!310476 result!310436))

(assert (=> d!1247096 t!350354))

(declare-fun tp!1298994 () Bool)

(declare-fun b_and!335153 () Bool)

(assert (=> b!4239075 (= tp!1298994 (and (=> t!350352 result!310474) (=> t!350354 result!310476) b_and!335153))))

(declare-fun b_free!125433 () Bool)

(declare-fun b_next!126137 () Bool)

(assert (=> b!4239075 (= b_free!125433 (not b_next!126137))))

(declare-fun tb!254553 () Bool)

(declare-fun t!350356 () Bool)

(assert (=> (and b!4239075 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 tokens!581)))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17)))))) t!350356) tb!254553))

(declare-fun result!310478 () Bool)

(assert (= result!310478 result!310460))

(assert (=> b!4238985 t!350356))

(declare-fun t!350358 () Bool)

(declare-fun tb!254555 () Bool)

(assert (=> (and b!4239075 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 tokens!581)))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350358) tb!254555))

(declare-fun result!310480 () Bool)

(assert (= result!310480 result!310396))

(assert (=> d!1247030 t!350358))

(declare-fun t!350360 () Bool)

(declare-fun tb!254557 () Bool)

(assert (=> (and b!4239075 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 tokens!581)))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071)))))) t!350360) tb!254557))

(declare-fun result!310482 () Bool)

(assert (= result!310482 result!310222))

(assert (=> d!1246800 t!350360))

(declare-fun t!350362 () Bool)

(declare-fun tb!254559 () Bool)

(assert (=> (and b!4239075 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 tokens!581)))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581))))) t!350362) tb!254559))

(declare-fun result!310484 () Bool)

(assert (= result!310484 result!310230))

(assert (=> b!4238323 t!350362))

(declare-fun tb!254561 () Bool)

(declare-fun t!350364 () Bool)

(assert (=> (and b!4239075 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 tokens!581)))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350364) tb!254561))

(declare-fun result!310486 () Bool)

(assert (= result!310486 result!310330))

(assert (=> d!1246976 t!350364))

(declare-fun t!350366 () Bool)

(declare-fun tb!254563 () Bool)

(assert (=> (and b!4239075 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 tokens!581)))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) t!350366) tb!254563))

(declare-fun result!310488 () Bool)

(assert (= result!310488 result!310236))

(assert (=> b!4238326 t!350366))

(declare-fun t!350368 () Bool)

(declare-fun tb!254565 () Bool)

(assert (=> (and b!4239075 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 tokens!581)))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581)))))) t!350368) tb!254565))

(declare-fun result!310490 () Bool)

(assert (= result!310490 result!310448))

(assert (=> b!4238961 t!350368))

(declare-fun tp!1298995 () Bool)

(declare-fun b_and!335155 () Bool)

(assert (=> b!4239075 (= tp!1298995 (and (=> t!350356 result!310478) (=> t!350364 result!310486) (=> t!350368 result!310490) (=> t!350358 result!310480) (=> t!350362 result!310484) (=> t!350360 result!310482) (=> t!350366 result!310488) b_and!335155))))

(declare-fun e!2632389 () Bool)

(declare-fun e!2632387 () Bool)

(declare-fun b!4239072 () Bool)

(declare-fun tp!1298996 () Bool)

(assert (=> b!4239072 (= e!2632389 (and (inv!61596 (h!52284 (t!350075 (t!350075 tokens!581)))) e!2632387 tp!1298996))))

(declare-fun e!2632391 () Bool)

(assert (=> b!4239075 (= e!2632391 (and tp!1298994 tp!1298995))))

(declare-fun e!2632392 () Bool)

(declare-fun tp!1298993 () Bool)

(declare-fun b!4239073 () Bool)

(assert (=> b!4239073 (= e!2632387 (and (inv!21 (value!246313 (h!52284 (t!350075 (t!350075 tokens!581))))) e!2632392 tp!1298993))))

(declare-fun b!4239074 () Bool)

(declare-fun tp!1298997 () Bool)

(assert (=> b!4239074 (= e!2632392 (and tp!1298997 (inv!61593 (tag!8786 (rule!11046 (h!52284 (t!350075 (t!350075 tokens!581)))))) (inv!61597 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 tokens!581)))))) e!2632391))))

(assert (=> b!4238373 (= tp!1298773 e!2632389)))

(assert (= b!4239074 b!4239075))

(assert (= b!4239073 b!4239074))

(assert (= b!4239072 b!4239073))

(assert (= (and b!4238373 ((_ is Cons!46864) (t!350075 (t!350075 tokens!581)))) b!4239072))

(declare-fun m!4824523 () Bool)

(assert (=> b!4239072 m!4824523))

(declare-fun m!4824525 () Bool)

(assert (=> b!4239073 m!4824525))

(declare-fun m!4824527 () Bool)

(assert (=> b!4239074 m!4824527))

(declare-fun m!4824529 () Bool)

(assert (=> b!4239074 m!4824529))

(declare-fun e!2632393 () Bool)

(declare-fun tp!1299000 () Bool)

(declare-fun tp!1298998 () Bool)

(declare-fun b!4239076 () Bool)

(assert (=> b!4239076 (= e!2632393 (and (inv!61600 (left!34832 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071))))))) tp!1298998 (inv!61600 (right!35162 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071))))))) tp!1299000))))

(declare-fun b!4239078 () Bool)

(declare-fun e!2632394 () Bool)

(declare-fun tp!1298999 () Bool)

(assert (=> b!4239078 (= e!2632394 tp!1298999)))

(declare-fun b!4239077 () Bool)

(assert (=> b!4239077 (= e!2632393 (and (inv!61607 (xs!17439 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071))))))) e!2632394))))

(assert (=> b!4238318 (= tp!1298728 (and (inv!61600 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071)))))) e!2632393))))

(assert (= (and b!4238318 ((_ is Node!14133) (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071))))))) b!4239076))

(assert (= b!4239077 b!4239078))

(assert (= (and b!4238318 ((_ is Leaf!21853) (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))) (value!246313 (_1!25353 (v!41005 lt!1506071))))))) b!4239077))

(declare-fun m!4824531 () Bool)

(assert (=> b!4239076 m!4824531))

(declare-fun m!4824533 () Bool)

(assert (=> b!4239076 m!4824533))

(declare-fun m!4824535 () Bool)

(assert (=> b!4239077 m!4824535))

(assert (=> b!4238318 m!4823589))

(declare-fun b!4239080 () Bool)

(declare-fun e!2632395 () Bool)

(declare-fun tp!1299005 () Bool)

(declare-fun tp!1299001 () Bool)

(assert (=> b!4239080 (= e!2632395 (and tp!1299005 tp!1299001))))

(declare-fun b!4239082 () Bool)

(declare-fun tp!1299003 () Bool)

(declare-fun tp!1299002 () Bool)

(assert (=> b!4239082 (= e!2632395 (and tp!1299003 tp!1299002))))

(declare-fun b!4239079 () Bool)

(assert (=> b!4239079 (= e!2632395 tp_is_empty!22645)))

(assert (=> b!4238354 (= tp!1298755 e!2632395)))

(declare-fun b!4239081 () Bool)

(declare-fun tp!1299004 () Bool)

(assert (=> b!4239081 (= e!2632395 tp!1299004)))

(assert (= (and b!4238354 ((_ is ElementMatch!12827) (regOne!26166 (regex!7922 (h!52285 rules!2932))))) b!4239079))

(assert (= (and b!4238354 ((_ is Concat!20980) (regOne!26166 (regex!7922 (h!52285 rules!2932))))) b!4239080))

(assert (= (and b!4238354 ((_ is Star!12827) (regOne!26166 (regex!7922 (h!52285 rules!2932))))) b!4239081))

(assert (= (and b!4238354 ((_ is Union!12827) (regOne!26166 (regex!7922 (h!52285 rules!2932))))) b!4239082))

(declare-fun b!4239084 () Bool)

(declare-fun e!2632396 () Bool)

(declare-fun tp!1299010 () Bool)

(declare-fun tp!1299006 () Bool)

(assert (=> b!4239084 (= e!2632396 (and tp!1299010 tp!1299006))))

(declare-fun b!4239086 () Bool)

(declare-fun tp!1299008 () Bool)

(declare-fun tp!1299007 () Bool)

(assert (=> b!4239086 (= e!2632396 (and tp!1299008 tp!1299007))))

(declare-fun b!4239083 () Bool)

(assert (=> b!4239083 (= e!2632396 tp_is_empty!22645)))

(assert (=> b!4238354 (= tp!1298751 e!2632396)))

(declare-fun b!4239085 () Bool)

(declare-fun tp!1299009 () Bool)

(assert (=> b!4239085 (= e!2632396 tp!1299009)))

(assert (= (and b!4238354 ((_ is ElementMatch!12827) (regTwo!26166 (regex!7922 (h!52285 rules!2932))))) b!4239083))

(assert (= (and b!4238354 ((_ is Concat!20980) (regTwo!26166 (regex!7922 (h!52285 rules!2932))))) b!4239084))

(assert (= (and b!4238354 ((_ is Star!12827) (regTwo!26166 (regex!7922 (h!52285 rules!2932))))) b!4239085))

(assert (= (and b!4238354 ((_ is Union!12827) (regTwo!26166 (regex!7922 (h!52285 rules!2932))))) b!4239086))

(declare-fun b!4239087 () Bool)

(declare-fun e!2632397 () Bool)

(declare-fun tp!1299013 () Bool)

(declare-fun tp!1299011 () Bool)

(assert (=> b!4239087 (= e!2632397 (and (inv!61600 (left!34832 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581)))))) tp!1299011 (inv!61600 (right!35162 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581)))))) tp!1299013))))

(declare-fun b!4239089 () Bool)

(declare-fun e!2632398 () Bool)

(declare-fun tp!1299012 () Bool)

(assert (=> b!4239089 (= e!2632398 tp!1299012)))

(declare-fun b!4239088 () Bool)

(assert (=> b!4239088 (= e!2632397 (and (inv!61607 (xs!17439 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581)))))) e!2632398))))

(assert (=> b!4238325 (= tp!1298729 (and (inv!61600 (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581))))) e!2632397))))

(assert (= (and b!4238325 ((_ is Node!14133) (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581)))))) b!4239087))

(assert (= b!4239088 b!4239089))

(assert (= (and b!4238325 ((_ is Leaf!21853) (c!720151 (dynLambda!20086 (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (value!246313 (h!52284 tokens!581)))))) b!4239088))

(declare-fun m!4824537 () Bool)

(assert (=> b!4239087 m!4824537))

(declare-fun m!4824539 () Bool)

(assert (=> b!4239087 m!4824539))

(declare-fun m!4824541 () Bool)

(assert (=> b!4239088 m!4824541))

(assert (=> b!4238325 m!4823597))

(declare-fun b!4239093 () Bool)

(declare-fun b_free!125435 () Bool)

(declare-fun b_next!126139 () Bool)

(assert (=> b!4239093 (= b_free!125435 (not b_next!126139))))

(declare-fun t!350370 () Bool)

(declare-fun tb!254567 () Bool)

(assert (=> (and b!4239093 (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 addTokens!17)))))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350370) tb!254567))

(declare-fun result!310492 () Bool)

(assert (= result!310492 result!310422))

(assert (=> d!1247066 t!350370))

(declare-fun tb!254569 () Bool)

(declare-fun t!350372 () Bool)

(assert (=> (and b!4239093 (= (toValue!10670 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 addTokens!17)))))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350372) tb!254569))

(declare-fun result!310494 () Bool)

(assert (= result!310494 result!310436))

(assert (=> d!1247096 t!350372))

(declare-fun b_and!335157 () Bool)

(declare-fun tp!1299015 () Bool)

(assert (=> b!4239093 (= tp!1299015 (and (=> t!350370 result!310492) (=> t!350372 result!310494) b_and!335157))))

(declare-fun b_free!125437 () Bool)

(declare-fun b_next!126141 () Bool)

(assert (=> b!4239093 (= b_free!125437 (not b_next!126141))))

(declare-fun t!350374 () Bool)

(declare-fun tb!254571 () Bool)

(assert (=> (and b!4239093 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 addTokens!17)))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17)))))) t!350374) tb!254571))

(declare-fun result!310496 () Bool)

(assert (= result!310496 result!310460))

(assert (=> b!4238985 t!350374))

(declare-fun t!350376 () Bool)

(declare-fun tb!254573 () Bool)

(assert (=> (and b!4239093 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 addTokens!17)))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350376) tb!254573))

(declare-fun result!310498 () Bool)

(assert (= result!310498 result!310396))

(assert (=> d!1247030 t!350376))

(declare-fun t!350378 () Bool)

(declare-fun tb!254575 () Bool)

(assert (=> (and b!4239093 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 addTokens!17)))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071)))))) t!350378) tb!254575))

(declare-fun result!310500 () Bool)

(assert (= result!310500 result!310222))

(assert (=> d!1246800 t!350378))

(declare-fun t!350380 () Bool)

(declare-fun tb!254577 () Bool)

(assert (=> (and b!4239093 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 addTokens!17)))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581))))) t!350380) tb!254577))

(declare-fun result!310502 () Bool)

(assert (= result!310502 result!310230))

(assert (=> b!4238323 t!350380))

(declare-fun tb!254579 () Bool)

(declare-fun t!350382 () Bool)

(assert (=> (and b!4239093 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 addTokens!17)))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350382) tb!254579))

(declare-fun result!310504 () Bool)

(assert (= result!310504 result!310330))

(assert (=> d!1246976 t!350382))

(declare-fun t!350384 () Bool)

(declare-fun tb!254581 () Bool)

(assert (=> (and b!4239093 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 addTokens!17)))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) t!350384) tb!254581))

(declare-fun result!310506 () Bool)

(assert (= result!310506 result!310236))

(assert (=> b!4238326 t!350384))

(declare-fun t!350386 () Bool)

(declare-fun tb!254583 () Bool)

(assert (=> (and b!4239093 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 addTokens!17)))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581)))))) t!350386) tb!254583))

(declare-fun result!310508 () Bool)

(assert (= result!310508 result!310448))

(assert (=> b!4238961 t!350386))

(declare-fun b_and!335159 () Bool)

(declare-fun tp!1299016 () Bool)

(assert (=> b!4239093 (= tp!1299016 (and (=> t!350376 result!310498) (=> t!350386 result!310508) (=> t!350382 result!310504) (=> t!350384 result!310506) (=> t!350380 result!310502) (=> t!350374 result!310496) (=> t!350378 result!310500) b_and!335159))))

(declare-fun b!4239090 () Bool)

(declare-fun e!2632401 () Bool)

(declare-fun e!2632399 () Bool)

(declare-fun tp!1299017 () Bool)

(assert (=> b!4239090 (= e!2632401 (and (inv!61596 (h!52284 (t!350075 (t!350075 addTokens!17)))) e!2632399 tp!1299017))))

(declare-fun e!2632403 () Bool)

(assert (=> b!4239093 (= e!2632403 (and tp!1299015 tp!1299016))))

(declare-fun tp!1299014 () Bool)

(declare-fun b!4239091 () Bool)

(declare-fun e!2632404 () Bool)

(assert (=> b!4239091 (= e!2632399 (and (inv!21 (value!246313 (h!52284 (t!350075 (t!350075 addTokens!17))))) e!2632404 tp!1299014))))

(declare-fun tp!1299018 () Bool)

(declare-fun b!4239092 () Bool)

(assert (=> b!4239092 (= e!2632404 (and tp!1299018 (inv!61593 (tag!8786 (rule!11046 (h!52284 (t!350075 (t!350075 addTokens!17)))))) (inv!61597 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 addTokens!17)))))) e!2632403))))

(assert (=> b!4238388 (= tp!1298790 e!2632401)))

(assert (= b!4239092 b!4239093))

(assert (= b!4239091 b!4239092))

(assert (= b!4239090 b!4239091))

(assert (= (and b!4238388 ((_ is Cons!46864) (t!350075 (t!350075 addTokens!17)))) b!4239090))

(declare-fun m!4824543 () Bool)

(assert (=> b!4239090 m!4824543))

(declare-fun m!4824545 () Bool)

(assert (=> b!4239091 m!4824545))

(declare-fun m!4824547 () Bool)

(assert (=> b!4239092 m!4824547))

(declare-fun m!4824549 () Bool)

(assert (=> b!4239092 m!4824549))

(declare-fun b!4239095 () Bool)

(declare-fun e!2632405 () Bool)

(declare-fun tp!1299023 () Bool)

(declare-fun tp!1299019 () Bool)

(assert (=> b!4239095 (= e!2632405 (and tp!1299023 tp!1299019))))

(declare-fun b!4239097 () Bool)

(declare-fun tp!1299021 () Bool)

(declare-fun tp!1299020 () Bool)

(assert (=> b!4239097 (= e!2632405 (and tp!1299021 tp!1299020))))

(declare-fun b!4239094 () Bool)

(assert (=> b!4239094 (= e!2632405 tp_is_empty!22645)))

(assert (=> b!4238356 (= tp!1298753 e!2632405)))

(declare-fun b!4239096 () Bool)

(declare-fun tp!1299022 () Bool)

(assert (=> b!4239096 (= e!2632405 tp!1299022)))

(assert (= (and b!4238356 ((_ is ElementMatch!12827) (regOne!26167 (regex!7922 (h!52285 rules!2932))))) b!4239094))

(assert (= (and b!4238356 ((_ is Concat!20980) (regOne!26167 (regex!7922 (h!52285 rules!2932))))) b!4239095))

(assert (= (and b!4238356 ((_ is Star!12827) (regOne!26167 (regex!7922 (h!52285 rules!2932))))) b!4239096))

(assert (= (and b!4238356 ((_ is Union!12827) (regOne!26167 (regex!7922 (h!52285 rules!2932))))) b!4239097))

(declare-fun b!4239099 () Bool)

(declare-fun e!2632406 () Bool)

(declare-fun tp!1299028 () Bool)

(declare-fun tp!1299024 () Bool)

(assert (=> b!4239099 (= e!2632406 (and tp!1299028 tp!1299024))))

(declare-fun b!4239101 () Bool)

(declare-fun tp!1299026 () Bool)

(declare-fun tp!1299025 () Bool)

(assert (=> b!4239101 (= e!2632406 (and tp!1299026 tp!1299025))))

(declare-fun b!4239098 () Bool)

(assert (=> b!4239098 (= e!2632406 tp_is_empty!22645)))

(assert (=> b!4238356 (= tp!1298752 e!2632406)))

(declare-fun b!4239100 () Bool)

(declare-fun tp!1299027 () Bool)

(assert (=> b!4239100 (= e!2632406 tp!1299027)))

(assert (= (and b!4238356 ((_ is ElementMatch!12827) (regTwo!26167 (regex!7922 (h!52285 rules!2932))))) b!4239098))

(assert (= (and b!4238356 ((_ is Concat!20980) (regTwo!26167 (regex!7922 (h!52285 rules!2932))))) b!4239099))

(assert (= (and b!4238356 ((_ is Star!12827) (regTwo!26167 (regex!7922 (h!52285 rules!2932))))) b!4239100))

(assert (= (and b!4238356 ((_ is Union!12827) (regTwo!26167 (regex!7922 (h!52285 rules!2932))))) b!4239101))

(declare-fun b!4239103 () Bool)

(declare-fun e!2632407 () Bool)

(declare-fun tp!1299033 () Bool)

(declare-fun tp!1299029 () Bool)

(assert (=> b!4239103 (= e!2632407 (and tp!1299033 tp!1299029))))

(declare-fun b!4239105 () Bool)

(declare-fun tp!1299031 () Bool)

(declare-fun tp!1299030 () Bool)

(assert (=> b!4239105 (= e!2632407 (and tp!1299031 tp!1299030))))

(declare-fun b!4239102 () Bool)

(assert (=> b!4239102 (= e!2632407 tp_is_empty!22645)))

(assert (=> b!4238355 (= tp!1298754 e!2632407)))

(declare-fun b!4239104 () Bool)

(declare-fun tp!1299032 () Bool)

(assert (=> b!4239104 (= e!2632407 tp!1299032)))

(assert (= (and b!4238355 ((_ is ElementMatch!12827) (reg!13156 (regex!7922 (h!52285 rules!2932))))) b!4239102))

(assert (= (and b!4238355 ((_ is Concat!20980) (reg!13156 (regex!7922 (h!52285 rules!2932))))) b!4239103))

(assert (= (and b!4238355 ((_ is Star!12827) (reg!13156 (regex!7922 (h!52285 rules!2932))))) b!4239104))

(assert (= (and b!4238355 ((_ is Union!12827) (reg!13156 (regex!7922 (h!52285 rules!2932))))) b!4239105))

(declare-fun b!4239107 () Bool)

(declare-fun e!2632408 () Bool)

(declare-fun tp!1299038 () Bool)

(declare-fun tp!1299034 () Bool)

(assert (=> b!4239107 (= e!2632408 (and tp!1299038 tp!1299034))))

(declare-fun b!4239109 () Bool)

(declare-fun tp!1299036 () Bool)

(declare-fun tp!1299035 () Bool)

(assert (=> b!4239109 (= e!2632408 (and tp!1299036 tp!1299035))))

(declare-fun b!4239106 () Bool)

(assert (=> b!4239106 (= e!2632408 tp_is_empty!22645)))

(assert (=> b!4238346 (= tp!1298745 e!2632408)))

(declare-fun b!4239108 () Bool)

(declare-fun tp!1299037 () Bool)

(assert (=> b!4239108 (= e!2632408 tp!1299037)))

(assert (= (and b!4238346 ((_ is ElementMatch!12827) (regOne!26166 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239106))

(assert (= (and b!4238346 ((_ is Concat!20980) (regOne!26166 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239107))

(assert (= (and b!4238346 ((_ is Star!12827) (regOne!26166 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239108))

(assert (= (and b!4238346 ((_ is Union!12827) (regOne!26166 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239109))

(declare-fun b!4239111 () Bool)

(declare-fun e!2632409 () Bool)

(declare-fun tp!1299043 () Bool)

(declare-fun tp!1299039 () Bool)

(assert (=> b!4239111 (= e!2632409 (and tp!1299043 tp!1299039))))

(declare-fun b!4239113 () Bool)

(declare-fun tp!1299041 () Bool)

(declare-fun tp!1299040 () Bool)

(assert (=> b!4239113 (= e!2632409 (and tp!1299041 tp!1299040))))

(declare-fun b!4239110 () Bool)

(assert (=> b!4239110 (= e!2632409 tp_is_empty!22645)))

(assert (=> b!4238346 (= tp!1298741 e!2632409)))

(declare-fun b!4239112 () Bool)

(declare-fun tp!1299042 () Bool)

(assert (=> b!4239112 (= e!2632409 tp!1299042)))

(assert (= (and b!4238346 ((_ is ElementMatch!12827) (regTwo!26166 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239110))

(assert (= (and b!4238346 ((_ is Concat!20980) (regTwo!26166 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239111))

(assert (= (and b!4238346 ((_ is Star!12827) (regTwo!26166 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239112))

(assert (= (and b!4238346 ((_ is Union!12827) (regTwo!26166 (regex!7922 (rule!11046 (h!52284 tokens!581)))))) b!4239113))

(declare-fun b!4239115 () Bool)

(declare-fun e!2632410 () Bool)

(declare-fun tp!1299048 () Bool)

(declare-fun tp!1299044 () Bool)

(assert (=> b!4239115 (= e!2632410 (and tp!1299048 tp!1299044))))

(declare-fun b!4239117 () Bool)

(declare-fun tp!1299046 () Bool)

(declare-fun tp!1299045 () Bool)

(assert (=> b!4239117 (= e!2632410 (and tp!1299046 tp!1299045))))

(declare-fun b!4239114 () Bool)

(assert (=> b!4239114 (= e!2632410 tp_is_empty!22645)))

(assert (=> b!4238386 (= tp!1298784 e!2632410)))

(declare-fun b!4239116 () Bool)

(declare-fun tp!1299047 () Bool)

(assert (=> b!4239116 (= e!2632410 tp!1299047)))

(assert (= (and b!4238386 ((_ is ElementMatch!12827) (regex!7922 (h!52285 (t!350076 rules!2932))))) b!4239114))

(assert (= (and b!4238386 ((_ is Concat!20980) (regex!7922 (h!52285 (t!350076 rules!2932))))) b!4239115))

(assert (= (and b!4238386 ((_ is Star!12827) (regex!7922 (h!52285 (t!350076 rules!2932))))) b!4239116))

(assert (= (and b!4238386 ((_ is Union!12827) (regex!7922 (h!52285 (t!350076 rules!2932))))) b!4239117))

(declare-fun b!4239118 () Bool)

(declare-fun e!2632411 () Bool)

(declare-fun tp!1299049 () Bool)

(assert (=> b!4239118 (= e!2632411 (and tp_is_empty!22645 tp!1299049))))

(assert (=> b!4238362 (= tp!1298759 e!2632411)))

(assert (= (and b!4238362 ((_ is Cons!46863) (t!350074 (originalCharacters!8266 (h!52284 tokens!581))))) b!4239118))

(declare-fun b!4239121 () Bool)

(declare-fun b_free!125439 () Bool)

(declare-fun b_next!126143 () Bool)

(assert (=> b!4239121 (= b_free!125439 (not b_next!126143))))

(declare-fun tb!254585 () Bool)

(declare-fun t!350388 () Bool)

(assert (=> (and b!4239121 (= (toValue!10670 (transformation!7922 (h!52285 (t!350076 (t!350076 rules!2932))))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350388) tb!254585))

(declare-fun result!310510 () Bool)

(assert (= result!310510 result!310422))

(assert (=> d!1247066 t!350388))

(declare-fun tb!254587 () Bool)

(declare-fun t!350390 () Bool)

(assert (=> (and b!4239121 (= (toValue!10670 (transformation!7922 (h!52285 (t!350076 (t!350076 rules!2932))))) (toValue!10670 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350390) tb!254587))

(declare-fun result!310512 () Bool)

(assert (= result!310512 result!310436))

(assert (=> d!1247096 t!350390))

(declare-fun tp!1299050 () Bool)

(declare-fun b_and!335161 () Bool)

(assert (=> b!4239121 (= tp!1299050 (and (=> t!350388 result!310510) (=> t!350390 result!310512) b_and!335161))))

(declare-fun b_free!125441 () Bool)

(declare-fun b_next!126145 () Bool)

(assert (=> b!4239121 (= b_free!125441 (not b_next!126145))))

(declare-fun tb!254589 () Bool)

(declare-fun t!350392 () Bool)

(assert (=> (and b!4239121 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 (t!350076 rules!2932))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17)))))) t!350392) tb!254589))

(declare-fun result!310514 () Bool)

(assert (= result!310514 result!310460))

(assert (=> b!4238985 t!350392))

(declare-fun t!350394 () Bool)

(declare-fun tb!254591 () Bool)

(assert (=> (and b!4239121 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 (t!350076 rules!2932))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506119)))))) t!350394) tb!254591))

(declare-fun result!310516 () Bool)

(assert (= result!310516 result!310396))

(assert (=> d!1247030 t!350394))

(declare-fun t!350396 () Bool)

(declare-fun tb!254593 () Bool)

(assert (=> (and b!4239121 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 (t!350076 rules!2932))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071)))))) t!350396) tb!254593))

(declare-fun result!310518 () Bool)

(assert (= result!310518 result!310222))

(assert (=> d!1246800 t!350396))

(declare-fun tb!254595 () Bool)

(declare-fun t!350398 () Bool)

(assert (=> (and b!4239121 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 (t!350076 rules!2932))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581))))) t!350398) tb!254595))

(declare-fun result!310520 () Bool)

(assert (= result!310520 result!310230))

(assert (=> b!4238323 t!350398))

(declare-fun tb!254597 () Bool)

(declare-fun t!350400 () Bool)

(assert (=> (and b!4239121 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 (t!350076 rules!2932))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (get!15239 lt!1506105)))))) t!350400) tb!254597))

(declare-fun result!310522 () Bool)

(assert (= result!310522 result!310330))

(assert (=> d!1246976 t!350400))

(declare-fun tb!254599 () Bool)

(declare-fun t!350402 () Bool)

(assert (=> (and b!4239121 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 (t!350076 rules!2932))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17))))) t!350402) tb!254599))

(declare-fun result!310524 () Bool)

(assert (= result!310524 result!310236))

(assert (=> b!4238326 t!350402))

(declare-fun tb!254601 () Bool)

(declare-fun t!350404 () Bool)

(assert (=> (and b!4239121 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 (t!350076 rules!2932))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581)))))) t!350404) tb!254601))

(declare-fun result!310526 () Bool)

(assert (= result!310526 result!310448))

(assert (=> b!4238961 t!350404))

(declare-fun b_and!335163 () Bool)

(declare-fun tp!1299053 () Bool)

(assert (=> b!4239121 (= tp!1299053 (and (=> t!350400 result!310522) (=> t!350402 result!310524) (=> t!350396 result!310518) (=> t!350394 result!310516) (=> t!350404 result!310526) (=> t!350398 result!310520) (=> t!350392 result!310514) b_and!335163))))

(declare-fun e!2632412 () Bool)

(assert (=> b!4239121 (= e!2632412 (and tp!1299050 tp!1299053))))

(declare-fun e!2632414 () Bool)

(declare-fun tp!1299051 () Bool)

(declare-fun b!4239120 () Bool)

(assert (=> b!4239120 (= e!2632414 (and tp!1299051 (inv!61593 (tag!8786 (h!52285 (t!350076 (t!350076 rules!2932))))) (inv!61597 (transformation!7922 (h!52285 (t!350076 (t!350076 rules!2932))))) e!2632412))))

(declare-fun b!4239119 () Bool)

(declare-fun e!2632415 () Bool)

(declare-fun tp!1299052 () Bool)

(assert (=> b!4239119 (= e!2632415 (and e!2632414 tp!1299052))))

(assert (=> b!4238385 (= tp!1298785 e!2632415)))

(assert (= b!4239120 b!4239121))

(assert (= b!4239119 b!4239120))

(assert (= (and b!4238385 ((_ is Cons!46865) (t!350076 (t!350076 rules!2932)))) b!4239119))

(declare-fun m!4824551 () Bool)

(assert (=> b!4239120 m!4824551))

(declare-fun m!4824553 () Bool)

(assert (=> b!4239120 m!4824553))

(declare-fun b!4239122 () Bool)

(declare-fun e!2632416 () Bool)

(declare-fun tp!1299054 () Bool)

(assert (=> b!4239122 (= e!2632416 (and tp_is_empty!22645 tp!1299054))))

(assert (=> b!4238361 (= tp!1298758 e!2632416)))

(assert (= (and b!4238361 ((_ is Cons!46863) (t!350074 (originalCharacters!8266 (h!52284 addTokens!17))))) b!4239122))

(declare-fun b_lambda!124789 () Bool)

(assert (= b_lambda!124785 (or (and b!4239075 b_free!125433 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 tokens!581)))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))))) (and b!4238387 b_free!125413 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))))) (and b!4239121 b_free!125441 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 (t!350076 rules!2932))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))))) (and b!4239093 b_free!125437 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 addTokens!17)))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))))) (and b!4238032 b_free!125389 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))))) (and b!4238391 b_free!125417 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))))) (and b!4238014 b_free!125385 (= (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))))) (and b!4238376 b_free!125409) (and b!4238020 b_free!125393 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))))) b_lambda!124789)))

(declare-fun b_lambda!124791 () Bool)

(assert (= b_lambda!124787 (or (and b!4238391 b_free!125417) (and b!4238020 b_free!125393 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))))) (and b!4238032 b_free!125389 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))))) (and b!4239093 b_free!125437 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 addTokens!17)))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))))) (and b!4238387 b_free!125413 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))))) (and b!4238376 b_free!125409 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))))) (and b!4239075 b_free!125433 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 tokens!581)))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))))) (and b!4238014 b_free!125385 (= (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))))) (and b!4239121 b_free!125441 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 (t!350076 rules!2932))))) (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))))) b_lambda!124791)))

(declare-fun b_lambda!124793 () Bool)

(assert (= b_lambda!124749 (or (and b!4239121 b_free!125441 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 (t!350076 rules!2932))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))))) (and b!4238391 b_free!125417 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 addTokens!17))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))))) (and b!4238376 b_free!125409 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 tokens!581))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))))) (and b!4238387 b_free!125413 (= (toChars!10529 (transformation!7922 (h!52285 (t!350076 rules!2932)))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))))) (and b!4238032 b_free!125389 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 addTokens!17)))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))))) (and b!4239075 b_free!125433 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 tokens!581)))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))))) (and b!4238014 b_free!125385 (= (toChars!10529 (transformation!7922 (h!52285 rules!2932))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))))) (and b!4239093 b_free!125437 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 (t!350075 (t!350075 addTokens!17)))))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))))) (and b!4238020 b_free!125393 (= (toChars!10529 (transformation!7922 (rule!11046 (h!52284 tokens!581)))) (toChars!10529 (transformation!7922 (rule!11046 (_1!25353 (v!41005 lt!1506071))))))) b_lambda!124793)))

(check-sat (not b!4238912) b_and!335155 (not d!1247116) (not b!4238759) (not d!1247036) (not d!1247038) (not b!4238676) b_and!335147 (not b!4239029) (not d!1247090) (not d!1247040) (not b!4239055) (not b!4239073) (not b!4238749) (not b!4238935) (not b!4238674) (not d!1246816) (not b!4238959) (not b!4238827) (not b!4239034) (not tb!254537) (not d!1247082) (not b!4239018) b_and!335141 (not b!4238929) (not d!1247120) (not b!4239049) (not b!4239063) (not b!4239027) (not b!4238962) (not b!4238947) (not d!1247114) (not b!4239022) (not b!4238667) (not b_lambda!124783) (not b!4239118) (not b_next!126143) b_and!335151 (not b!4238942) b_and!335127 (not b!4238945) b_and!335119 (not b!4239084) (not b_next!126089) (not d!1246920) (not b_next!126139) (not b!4238820) (not b_next!126137) (not b!4238668) (not b!4239052) (not tb!254475) (not b!4238717) (not b!4238960) (not b!4238738) (not b!4239120) (not b!4238968) (not b_lambda!124769) b_and!335149 (not b!4239085) (not b!4239087) (not b_lambda!124755) (not d!1247072) (not b!4239092) (not b!4239107) b_and!335121 (not b!4238937) (not d!1247042) (not b_next!126093) (not d!1247060) (not d!1247014) (not b!4239074) (not b!4238993) (not d!1247030) b_and!335143 (not b!4238987) (not b!4239070) (not b!4238816) (not b!4239015) (not b!4238926) (not b_lambda!124793) (not b!4239066) (not b_next!126111) (not b_next!126113) (not b!4238907) (not b!4238737) (not b!4238886) (not b!4238868) (not b!4238992) (not b!4239062) (not b!4239053) (not b!4238913) (not b!4239035) (not b_lambda!124781) (not bm!293812) (not d!1247092) (not b!4238921) (not b!4239050) (not b!4238669) (not b_next!126135) b_and!335163 (not b!4238982) (not d!1247006) (not b!4239078) (not d!1247052) (not b!4239088) (not b!4239076) b_and!335145 (not d!1247104) (not b!4238922) (not b!4238966) (not d!1247026) (not b!4239089) (not b!4238752) (not b_next!126145) (not b!4238762) (not b!4238622) (not b!4238918) (not b!4238978) (not b_next!126117) (not b!4239100) (not b!4238715) (not b!4239061) (not d!1247050) (not b!4238973) b_and!335159 (not b!4238818) (not b!4239047) (not b!4238995) (not b!4238970) (not b!4239101) (not b_next!126121) (not b!4238975) (not b!4238878) (not d!1247102) (not b!4239096) b_and!335161 (not bm!293813) (not b!4239122) (not b!4239031) (not b!4239082) (not b!4239119) (not b!4238965) (not bm!293810) (not d!1247080) (not d!1247086) (not b!4239086) (not b!4238927) (not d!1246918) b_and!335157 (not b!4238819) (not b!4239057) (not b_lambda!124773) (not d!1246916) (not b!4239046) (not b!4238673) (not b!4239097) b_and!335117 (not b!4239017) (not b!4239111) (not b!4238318) (not b_lambda!124789) (not b!4238933) (not d!1247046) (not b!4239026) (not b!4239072) (not b!4238941) (not b!4239104) (not b!4238624) (not b!4239044) (not d!1246976) (not b!4238950) (not b!4238910) (not d!1247054) (not d!1247056) (not b!4239105) (not b!4239116) (not b!4239091) (not b!4239045) (not b!4239004) (not b!4239115) (not b!4238735) (not d!1247084) (not b!4238756) (not b!4238949) (not b!4239013) (not b!4238985) (not b!4238909) (not b!4238936) (not b!4238906) (not b!4239109) (not b!4238325) (not b!4238991) (not b!4239069) (not d!1247068) (not b!4238693) (not b!4238980) (not b_lambda!124757) (not b!4239090) (not b!4238981) (not b!4238928) (not b!4239059) (not d!1247058) (not d!1247076) (not b!4238940) (not b!4238880) (not d!1247110) (not d!1247074) (not d!1247128) (not bm!293811) (not tb!254525) (not b!4238979) (not b!4238925) b_and!335125 (not b!4239021) (not b!4239023) (not b!4238961) (not b!4239103) (not b!4239030) (not d!1247134) (not b!4239019) (not d!1246934) (not b!4239011) (not b!4238713) (not b!4238923) (not d!1247028) (not d!1247062) (not b!4239095) (not b!4239077) (not b_next!126115) (not b!4238939) (not b!4238824) (not b_lambda!124791) (not b!4238986) (not b!4238920) tp_is_empty!22645 (not tb!254513) (not d!1247088) (not b!4238963) (not b!4239099) (not tb!254411) (not b!4238328) (not b!4239071) (not b!4239058) (not b!4239051) (not b_next!126097) (not b!4239054) (not d!1246972) (not b!4238911) (not b_next!126141) (not d!1247126) (not b!4238938) (not b!4238957) (not tb!254501) (not b!4238989) (not b_next!126119) (not d!1247012) (not b!4239113) (not b!4238999) (not b!4239112) (not b!4239080) (not b!4238984) (not b!4239005) (not b_next!126091) (not b!4238620) (not b!4239025) (not b!4238825) (not b!4238997) b_and!335123 (not b!4238815) (not b!4238758) (not b!4238879) (not b!4238983) (not b!4239108) (not b!4238971) (not b!4238977) (not b!4239067) (not b_next!126087) (not b!4239117) (not d!1247004) (not b!4238750) (not b_next!126095) (not b!4239033) (not b!4238944) (not b!4238905) (not b!4239065) (not b!4238885) (not d!1247098) (not b!4239081) b_and!335153)
(check-sat b_and!335155 b_and!335147 b_and!335141 (not b_next!126093) b_and!335157 b_and!335117 b_and!335125 (not b_next!126115) (not b_next!126097) (not b_next!126091) b_and!335123 (not b_next!126087) (not b_next!126095) b_and!335153 (not b_next!126139) (not b_next!126143) (not b_next!126137) b_and!335151 b_and!335127 b_and!335119 (not b_next!126089) b_and!335149 b_and!335121 b_and!335143 (not b_next!126113) (not b_next!126111) (not b_next!126135) b_and!335163 b_and!335145 (not b_next!126145) b_and!335159 (not b_next!126117) (not b_next!126121) b_and!335161 (not b_next!126141) (not b_next!126119))
