; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384488 () Bool)

(assert start!384488)

(declare-fun b!4073191 () Bool)

(declare-fun b_free!113393 () Bool)

(declare-fun b_next!114097 () Bool)

(assert (=> b!4073191 (= b_free!113393 (not b_next!114097))))

(declare-fun tp!1232814 () Bool)

(declare-fun b_and!313043 () Bool)

(assert (=> b!4073191 (= tp!1232814 b_and!313043)))

(declare-fun b_free!113395 () Bool)

(declare-fun b_next!114099 () Bool)

(assert (=> b!4073191 (= b_free!113395 (not b_next!114099))))

(declare-fun tp!1232817 () Bool)

(declare-fun b_and!313045 () Bool)

(assert (=> b!4073191 (= tp!1232817 b_and!313045)))

(declare-fun b!4073178 () Bool)

(declare-fun b_free!113397 () Bool)

(declare-fun b_next!114101 () Bool)

(assert (=> b!4073178 (= b_free!113397 (not b_next!114101))))

(declare-fun tp!1232815 () Bool)

(declare-fun b_and!313047 () Bool)

(assert (=> b!4073178 (= tp!1232815 b_and!313047)))

(declare-fun b_free!113399 () Bool)

(declare-fun b_next!114103 () Bool)

(assert (=> b!4073178 (= b_free!113399 (not b_next!114103))))

(declare-fun tp!1232813 () Bool)

(declare-fun b_and!313049 () Bool)

(assert (=> b!4073178 (= tp!1232813 b_and!313049)))

(declare-fun b!4073175 () Bool)

(declare-fun res!1663283 () Bool)

(declare-fun e!2528014 () Bool)

(assert (=> b!4073175 (=> res!1663283 e!2528014)))

(declare-datatypes ((List!43669 0))(
  ( (Nil!43545) (Cons!43545 (h!48965 (_ BitVec 16)) (t!337172 List!43669)) )
))
(declare-datatypes ((TokenValue!7234 0))(
  ( (FloatLiteralValue!14468 (text!51083 List!43669)) (TokenValueExt!7233 (__x!26685 Int)) (Broken!36170 (value!220240 List!43669)) (Object!7357) (End!7234) (Def!7234) (Underscore!7234) (Match!7234) (Else!7234) (Error!7234) (Case!7234) (If!7234) (Extends!7234) (Abstract!7234) (Class!7234) (Val!7234) (DelimiterValue!14468 (del!7294 List!43669)) (KeywordValue!7240 (value!220241 List!43669)) (CommentValue!14468 (value!220242 List!43669)) (WhitespaceValue!14468 (value!220243 List!43669)) (IndentationValue!7234 (value!220244 List!43669)) (String!49919) (Int32!7234) (Broken!36171 (value!220245 List!43669)) (Boolean!7235) (Unit!63096) (OperatorValue!7237 (op!7294 List!43669)) (IdentifierValue!14468 (value!220246 List!43669)) (IdentifierValue!14469 (value!220247 List!43669)) (WhitespaceValue!14469 (value!220248 List!43669)) (True!14468) (False!14468) (Broken!36172 (value!220249 List!43669)) (Broken!36173 (value!220250 List!43669)) (True!14469) (RightBrace!7234) (RightBracket!7234) (Colon!7234) (Null!7234) (Comma!7234) (LeftBracket!7234) (False!14469) (LeftBrace!7234) (ImaginaryLiteralValue!7234 (text!51084 List!43669)) (StringLiteralValue!21702 (value!220251 List!43669)) (EOFValue!7234 (value!220252 List!43669)) (IdentValue!7234 (value!220253 List!43669)) (DelimiterValue!14469 (value!220254 List!43669)) (DedentValue!7234 (value!220255 List!43669)) (NewLineValue!7234 (value!220256 List!43669)) (IntegerValue!21702 (value!220257 (_ BitVec 32)) (text!51085 List!43669)) (IntegerValue!21703 (value!220258 Int) (text!51086 List!43669)) (Times!7234) (Or!7234) (Equal!7234) (Minus!7234) (Broken!36174 (value!220259 List!43669)) (And!7234) (Div!7234) (LessEqual!7234) (Mod!7234) (Concat!19143) (Not!7234) (Plus!7234) (SpaceValue!7234 (value!220260 List!43669)) (IntegerValue!21704 (value!220261 Int) (text!51087 List!43669)) (StringLiteralValue!21703 (text!51088 List!43669)) (FloatLiteralValue!14469 (text!51089 List!43669)) (BytesLiteralValue!7234 (value!220262 List!43669)) (CommentValue!14469 (value!220263 List!43669)) (StringLiteralValue!21704 (value!220264 List!43669)) (ErrorTokenValue!7234 (msg!7295 List!43669)) )
))
(declare-datatypes ((C!24004 0))(
  ( (C!24005 (val!14112 Int)) )
))
(declare-datatypes ((Regex!11909 0))(
  ( (ElementMatch!11909 (c!702904 C!24004)) (Concat!19144 (regOne!24330 Regex!11909) (regTwo!24330 Regex!11909)) (EmptyExpr!11909) (Star!11909 (reg!12238 Regex!11909)) (EmptyLang!11909) (Union!11909 (regOne!24331 Regex!11909) (regTwo!24331 Regex!11909)) )
))
(declare-datatypes ((String!49920 0))(
  ( (String!49921 (value!220265 String)) )
))
(declare-datatypes ((List!43670 0))(
  ( (Nil!43546) (Cons!43546 (h!48966 C!24004) (t!337173 List!43670)) )
))
(declare-datatypes ((IArray!26435 0))(
  ( (IArray!26436 (innerList!13275 List!43670)) )
))
(declare-datatypes ((Conc!13215 0))(
  ( (Node!13215 (left!32739 Conc!13215) (right!33069 Conc!13215) (csize!26660 Int) (cheight!13426 Int)) (Leaf!20432 (xs!16521 IArray!26435) (csize!26661 Int)) (Empty!13215) )
))
(declare-datatypes ((BalanceConc!26024 0))(
  ( (BalanceConc!26025 (c!702905 Conc!13215)) )
))
(declare-datatypes ((TokenValueInjection!13896 0))(
  ( (TokenValueInjection!13897 (toValue!9568 Int) (toChars!9427 Int)) )
))
(declare-datatypes ((Rule!13808 0))(
  ( (Rule!13809 (regex!7004 Regex!11909) (tag!7864 String!49920) (isSeparator!7004 Bool) (transformation!7004 TokenValueInjection!13896)) )
))
(declare-datatypes ((List!43671 0))(
  ( (Nil!43547) (Cons!43547 (h!48967 Rule!13808) (t!337174 List!43671)) )
))
(declare-fun rules!3870 () List!43671)

(declare-fun r!4213 () Rule!13808)

(get-info :version)

(assert (=> b!4073175 (= res!1663283 (or (not ((_ is Cons!43547) rules!3870)) (not (= (h!48967 rules!3870) r!4213))))))

(declare-fun b!4073176 () Bool)

(declare-fun e!2528002 () Bool)

(declare-fun e!2528007 () Bool)

(assert (=> b!4073176 (= e!2528002 e!2528007)))

(declare-fun res!1663278 () Bool)

(assert (=> b!4073176 (=> (not res!1663278) (not e!2528007))))

(declare-datatypes ((LexerInterface!6593 0))(
  ( (LexerInterfaceExt!6590 (__x!26686 Int)) (Lexer!6591) )
))
(declare-fun thiss!26199 () LexerInterface!6593)

(declare-fun suffix!1518 () List!43670)

(declare-fun input!3411 () List!43670)

(declare-fun lt!1457820 () BalanceConc!26024)

(declare-fun p!2988 () List!43670)

(declare-datatypes ((Token!13134 0))(
  ( (Token!13135 (value!220266 TokenValue!7234) (rule!10108 Rule!13808) (size!32539 Int) (originalCharacters!7598 List!43670)) )
))
(declare-datatypes ((tuple2!42550 0))(
  ( (tuple2!42551 (_1!24409 Token!13134) (_2!24409 List!43670)) )
))
(declare-datatypes ((Option!9412 0))(
  ( (None!9411) (Some!9411 (v!39849 tuple2!42550)) )
))
(declare-fun maxPrefix!3885 (LexerInterface!6593 List!43671 List!43670) Option!9412)

(declare-fun apply!10187 (TokenValueInjection!13896 BalanceConc!26024) TokenValue!7234)

(declare-fun size!32540 (List!43670) Int)

(assert (=> b!4073176 (= res!1663278 (= (maxPrefix!3885 thiss!26199 rules!3870 input!3411) (Some!9411 (tuple2!42551 (Token!13135 (apply!10187 (transformation!7004 r!4213) lt!1457820) r!4213 (size!32540 p!2988) p!2988) suffix!1518))))))

(declare-datatypes ((Unit!63097 0))(
  ( (Unit!63098) )
))
(declare-fun lt!1457818 () Unit!63097)

(declare-fun lemmaSemiInverse!1971 (TokenValueInjection!13896 BalanceConc!26024) Unit!63097)

(assert (=> b!4073176 (= lt!1457818 (lemmaSemiInverse!1971 (transformation!7004 r!4213) lt!1457820))))

(declare-fun seqFromList!5221 (List!43670) BalanceConc!26024)

(assert (=> b!4073176 (= lt!1457820 (seqFromList!5221 p!2988))))

(declare-fun b!4073177 () Bool)

(declare-fun e!2528003 () Bool)

(declare-fun tp_is_empty!20821 () Bool)

(declare-fun tp!1232822 () Bool)

(assert (=> b!4073177 (= e!2528003 (and tp_is_empty!20821 tp!1232822))))

(declare-fun e!2528012 () Bool)

(assert (=> b!4073178 (= e!2528012 (and tp!1232815 tp!1232813))))

(declare-fun b!4073179 () Bool)

(declare-fun e!2528008 () Bool)

(declare-fun e!2528010 () Bool)

(declare-fun tp!1232821 () Bool)

(assert (=> b!4073179 (= e!2528008 (and e!2528010 tp!1232821))))

(declare-fun b!4073180 () Bool)

(declare-fun res!1663279 () Bool)

(assert (=> b!4073180 (=> (not res!1663279) (not e!2528002))))

(declare-fun contains!8671 (List!43671 Rule!13808) Bool)

(assert (=> b!4073180 (= res!1663279 (contains!8671 rules!3870 r!4213))))

(declare-fun b!4073181 () Bool)

(declare-fun e!2528006 () Bool)

(assert (=> b!4073181 (= e!2528006 true)))

(declare-fun lt!1457821 () Option!9412)

(declare-fun maxPrefixOneRule!2891 (LexerInterface!6593 Rule!13808 List!43670) Option!9412)

(assert (=> b!4073181 (= lt!1457821 (maxPrefixOneRule!2891 thiss!26199 r!4213 input!3411))))

(declare-fun b!4073182 () Bool)

(declare-fun e!2528013 () Bool)

(declare-fun tp!1232819 () Bool)

(assert (=> b!4073182 (= e!2528013 (and tp_is_empty!20821 tp!1232819))))

(declare-fun e!2528004 () Bool)

(declare-fun b!4073184 () Bool)

(declare-fun tp!1232816 () Bool)

(declare-fun inv!58198 (String!49920) Bool)

(declare-fun inv!58200 (TokenValueInjection!13896) Bool)

(assert (=> b!4073184 (= e!2528010 (and tp!1232816 (inv!58198 (tag!7864 (h!48967 rules!3870))) (inv!58200 (transformation!7004 (h!48967 rules!3870))) e!2528004))))

(declare-fun b!4073185 () Bool)

(declare-fun res!1663285 () Bool)

(assert (=> b!4073185 (=> (not res!1663285) (not e!2528002))))

(declare-fun ++!11410 (List!43670 List!43670) List!43670)

(assert (=> b!4073185 (= res!1663285 (= input!3411 (++!11410 p!2988 suffix!1518)))))

(declare-fun tp!1232820 () Bool)

(declare-fun b!4073186 () Bool)

(declare-fun e!2528009 () Bool)

(assert (=> b!4073186 (= e!2528009 (and tp!1232820 (inv!58198 (tag!7864 r!4213)) (inv!58200 (transformation!7004 r!4213)) e!2528012))))

(declare-fun b!4073187 () Bool)

(declare-fun res!1663280 () Bool)

(assert (=> b!4073187 (=> (not res!1663280) (not e!2528002))))

(declare-fun isEmpty!25986 (List!43671) Bool)

(assert (=> b!4073187 (= res!1663280 (not (isEmpty!25986 rules!3870)))))

(declare-fun b!4073188 () Bool)

(declare-fun res!1663282 () Bool)

(assert (=> b!4073188 (=> (not res!1663282) (not e!2528002))))

(declare-fun rulesInvariant!5936 (LexerInterface!6593 List!43671) Bool)

(assert (=> b!4073188 (= res!1663282 (rulesInvariant!5936 thiss!26199 rules!3870))))

(declare-fun b!4073189 () Bool)

(assert (=> b!4073189 (= e!2528014 e!2528006)))

(declare-fun res!1663277 () Bool)

(assert (=> b!4073189 (=> res!1663277 e!2528006)))

(assert (=> b!4073189 (= res!1663277 (not (isEmpty!25986 (t!337174 rules!3870))))))

(assert (=> b!4073189 (rulesInvariant!5936 thiss!26199 (t!337174 rules!3870))))

(declare-fun lt!1457817 () Unit!63097)

(declare-fun lemmaInvariantOnRulesThenOnTail!724 (LexerInterface!6593 Rule!13808 List!43671) Unit!63097)

(assert (=> b!4073189 (= lt!1457817 (lemmaInvariantOnRulesThenOnTail!724 thiss!26199 (h!48967 rules!3870) (t!337174 rules!3870)))))

(declare-fun b!4073190 () Bool)

(assert (=> b!4073190 (= e!2528007 (not e!2528014))))

(declare-fun res!1663286 () Bool)

(assert (=> b!4073190 (=> res!1663286 e!2528014)))

(declare-fun matchR!5854 (Regex!11909 List!43670) Bool)

(assert (=> b!4073190 (= res!1663286 (not (matchR!5854 (regex!7004 r!4213) p!2988)))))

(declare-fun ruleValid!2928 (LexerInterface!6593 Rule!13808) Bool)

(assert (=> b!4073190 (ruleValid!2928 thiss!26199 r!4213)))

(declare-fun lt!1457819 () Unit!63097)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1996 (LexerInterface!6593 Rule!13808 List!43671) Unit!63097)

(assert (=> b!4073190 (= lt!1457819 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1996 thiss!26199 r!4213 rules!3870))))

(assert (=> b!4073191 (= e!2528004 (and tp!1232814 tp!1232817))))

(declare-fun b!4073192 () Bool)

(declare-fun res!1663281 () Bool)

(assert (=> b!4073192 (=> (not res!1663281) (not e!2528002))))

(declare-fun isEmpty!25987 (List!43670) Bool)

(assert (=> b!4073192 (= res!1663281 (not (isEmpty!25987 p!2988)))))

(declare-fun b!4073183 () Bool)

(declare-fun e!2528005 () Bool)

(declare-fun tp!1232818 () Bool)

(assert (=> b!4073183 (= e!2528005 (and tp_is_empty!20821 tp!1232818))))

(declare-fun res!1663284 () Bool)

(assert (=> start!384488 (=> (not res!1663284) (not e!2528002))))

(assert (=> start!384488 (= res!1663284 ((_ is Lexer!6591) thiss!26199))))

(assert (=> start!384488 e!2528002))

(assert (=> start!384488 true))

(assert (=> start!384488 e!2528005))

(assert (=> start!384488 e!2528008))

(assert (=> start!384488 e!2528013))

(assert (=> start!384488 e!2528003))

(assert (=> start!384488 e!2528009))

(assert (= (and start!384488 res!1663284) b!4073187))

(assert (= (and b!4073187 res!1663280) b!4073188))

(assert (= (and b!4073188 res!1663282) b!4073180))

(assert (= (and b!4073180 res!1663279) b!4073185))

(assert (= (and b!4073185 res!1663285) b!4073192))

(assert (= (and b!4073192 res!1663281) b!4073176))

(assert (= (and b!4073176 res!1663278) b!4073190))

(assert (= (and b!4073190 (not res!1663286)) b!4073175))

(assert (= (and b!4073175 (not res!1663283)) b!4073189))

(assert (= (and b!4073189 (not res!1663277)) b!4073181))

(assert (= (and start!384488 ((_ is Cons!43546) suffix!1518)) b!4073183))

(assert (= b!4073184 b!4073191))

(assert (= b!4073179 b!4073184))

(assert (= (and start!384488 ((_ is Cons!43547) rules!3870)) b!4073179))

(assert (= (and start!384488 ((_ is Cons!43546) p!2988)) b!4073182))

(assert (= (and start!384488 ((_ is Cons!43546) input!3411)) b!4073177))

(assert (= b!4073186 b!4073178))

(assert (= start!384488 b!4073186))

(declare-fun m!4682003 () Bool)

(assert (=> b!4073184 m!4682003))

(declare-fun m!4682005 () Bool)

(assert (=> b!4073184 m!4682005))

(declare-fun m!4682007 () Bool)

(assert (=> b!4073180 m!4682007))

(declare-fun m!4682009 () Bool)

(assert (=> b!4073187 m!4682009))

(declare-fun m!4682011 () Bool)

(assert (=> b!4073185 m!4682011))

(declare-fun m!4682013 () Bool)

(assert (=> b!4073181 m!4682013))

(declare-fun m!4682015 () Bool)

(assert (=> b!4073176 m!4682015))

(declare-fun m!4682017 () Bool)

(assert (=> b!4073176 m!4682017))

(declare-fun m!4682019 () Bool)

(assert (=> b!4073176 m!4682019))

(declare-fun m!4682021 () Bool)

(assert (=> b!4073176 m!4682021))

(declare-fun m!4682023 () Bool)

(assert (=> b!4073176 m!4682023))

(declare-fun m!4682025 () Bool)

(assert (=> b!4073192 m!4682025))

(declare-fun m!4682027 () Bool)

(assert (=> b!4073189 m!4682027))

(declare-fun m!4682029 () Bool)

(assert (=> b!4073189 m!4682029))

(declare-fun m!4682031 () Bool)

(assert (=> b!4073189 m!4682031))

(declare-fun m!4682033 () Bool)

(assert (=> b!4073186 m!4682033))

(declare-fun m!4682035 () Bool)

(assert (=> b!4073186 m!4682035))

(declare-fun m!4682037 () Bool)

(assert (=> b!4073188 m!4682037))

(declare-fun m!4682039 () Bool)

(assert (=> b!4073190 m!4682039))

(declare-fun m!4682041 () Bool)

(assert (=> b!4073190 m!4682041))

(declare-fun m!4682043 () Bool)

(assert (=> b!4073190 m!4682043))

(check-sat b_and!313043 (not b!4073190) (not b!4073179) (not b!4073187) (not b_next!114101) b_and!313045 (not b!4073176) (not b!4073192) (not b!4073188) (not b!4073177) (not b!4073183) tp_is_empty!20821 b_and!313047 (not b!4073181) (not b_next!114097) (not b!4073186) (not b!4073189) (not b_next!114103) (not b!4073182) (not b!4073185) b_and!313049 (not b!4073180) (not b!4073184) (not b_next!114099))
(check-sat b_and!313043 (not b_next!114097) (not b_next!114101) b_and!313045 (not b_next!114103) b_and!313049 (not b_next!114099) b_and!313047)
