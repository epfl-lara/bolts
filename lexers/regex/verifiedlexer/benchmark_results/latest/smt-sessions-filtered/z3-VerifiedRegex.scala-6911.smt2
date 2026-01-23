; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!364160 () Bool)

(assert start!364160)

(declare-fun b!3879478 () Bool)

(declare-fun b_free!105037 () Bool)

(declare-fun b_next!105741 () Bool)

(assert (=> b!3879478 (= b_free!105037 (not b_next!105741))))

(declare-fun tp!1176104 () Bool)

(declare-fun b_and!290931 () Bool)

(assert (=> b!3879478 (= tp!1176104 b_and!290931)))

(declare-fun b_free!105039 () Bool)

(declare-fun b_next!105743 () Bool)

(assert (=> b!3879478 (= b_free!105039 (not b_next!105743))))

(declare-fun tp!1176113 () Bool)

(declare-fun b_and!290933 () Bool)

(assert (=> b!3879478 (= tp!1176113 b_and!290933)))

(declare-fun b!3879481 () Bool)

(declare-fun b_free!105041 () Bool)

(declare-fun b_next!105745 () Bool)

(assert (=> b!3879481 (= b_free!105041 (not b_next!105745))))

(declare-fun tp!1176108 () Bool)

(declare-fun b_and!290935 () Bool)

(assert (=> b!3879481 (= tp!1176108 b_and!290935)))

(declare-fun b_free!105043 () Bool)

(declare-fun b_next!105747 () Bool)

(assert (=> b!3879481 (= b_free!105043 (not b_next!105747))))

(declare-fun tp!1176106 () Bool)

(declare-fun b_and!290937 () Bool)

(assert (=> b!3879481 (= tp!1176106 b_and!290937)))

(declare-fun b!3879476 () Bool)

(declare-fun b_free!105045 () Bool)

(declare-fun b_next!105749 () Bool)

(assert (=> b!3879476 (= b_free!105045 (not b_next!105749))))

(declare-fun tp!1176116 () Bool)

(declare-fun b_and!290939 () Bool)

(assert (=> b!3879476 (= tp!1176116 b_and!290939)))

(declare-fun b_free!105047 () Bool)

(declare-fun b_next!105751 () Bool)

(assert (=> b!3879476 (= b_free!105047 (not b_next!105751))))

(declare-fun tp!1176110 () Bool)

(declare-fun b_and!290941 () Bool)

(assert (=> b!3879476 (= tp!1176110 b_and!290941)))

(declare-fun b!3879469 () Bool)

(declare-fun res!1572076 () Bool)

(declare-fun e!2400499 () Bool)

(assert (=> b!3879469 (=> (not res!1572076) (not e!2400499))))

(declare-datatypes ((C!22816 0))(
  ( (C!22817 (val!13502 Int)) )
))
(declare-datatypes ((List!41384 0))(
  ( (Nil!41260) (Cons!41260 (h!46680 C!22816) (t!315123 List!41384)) )
))
(declare-fun prefix!426 () List!41384)

(declare-fun isEmpty!24502 (List!41384) Bool)

(assert (=> b!3879469 (= res!1572076 (not (isEmpty!24502 prefix!426)))))

(declare-fun e!2400504 () Bool)

(declare-datatypes ((List!41385 0))(
  ( (Nil!41261) (Cons!41261 (h!46681 (_ BitVec 16)) (t!315124 List!41385)) )
))
(declare-datatypes ((TokenValue!6640 0))(
  ( (FloatLiteralValue!13280 (text!46925 List!41385)) (TokenValueExt!6639 (__x!25497 Int)) (Broken!33200 (value!203293 List!41385)) (Object!6763) (End!6640) (Def!6640) (Underscore!6640) (Match!6640) (Else!6640) (Error!6640) (Case!6640) (If!6640) (Extends!6640) (Abstract!6640) (Class!6640) (Val!6640) (DelimiterValue!13280 (del!6700 List!41385)) (KeywordValue!6646 (value!203294 List!41385)) (CommentValue!13280 (value!203295 List!41385)) (WhitespaceValue!13280 (value!203296 List!41385)) (IndentationValue!6640 (value!203297 List!41385)) (String!46917) (Int32!6640) (Broken!33201 (value!203298 List!41385)) (Boolean!6641) (Unit!59341) (OperatorValue!6643 (op!6700 List!41385)) (IdentifierValue!13280 (value!203299 List!41385)) (IdentifierValue!13281 (value!203300 List!41385)) (WhitespaceValue!13281 (value!203301 List!41385)) (True!13280) (False!13280) (Broken!33202 (value!203302 List!41385)) (Broken!33203 (value!203303 List!41385)) (True!13281) (RightBrace!6640) (RightBracket!6640) (Colon!6640) (Null!6640) (Comma!6640) (LeftBracket!6640) (False!13281) (LeftBrace!6640) (ImaginaryLiteralValue!6640 (text!46926 List!41385)) (StringLiteralValue!19920 (value!203304 List!41385)) (EOFValue!6640 (value!203305 List!41385)) (IdentValue!6640 (value!203306 List!41385)) (DelimiterValue!13281 (value!203307 List!41385)) (DedentValue!6640 (value!203308 List!41385)) (NewLineValue!6640 (value!203309 List!41385)) (IntegerValue!19920 (value!203310 (_ BitVec 32)) (text!46927 List!41385)) (IntegerValue!19921 (value!203311 Int) (text!46928 List!41385)) (Times!6640) (Or!6640) (Equal!6640) (Minus!6640) (Broken!33204 (value!203312 List!41385)) (And!6640) (Div!6640) (LessEqual!6640) (Mod!6640) (Concat!17955) (Not!6640) (Plus!6640) (SpaceValue!6640 (value!203313 List!41385)) (IntegerValue!19922 (value!203314 Int) (text!46929 List!41385)) (StringLiteralValue!19921 (text!46930 List!41385)) (FloatLiteralValue!13281 (text!46931 List!41385)) (BytesLiteralValue!6640 (value!203315 List!41385)) (CommentValue!13281 (value!203316 List!41385)) (StringLiteralValue!19922 (value!203317 List!41385)) (ErrorTokenValue!6640 (msg!6701 List!41385)) )
))
(declare-datatypes ((Regex!11315 0))(
  ( (ElementMatch!11315 (c!674832 C!22816)) (Concat!17956 (regOne!23142 Regex!11315) (regTwo!23142 Regex!11315)) (EmptyExpr!11315) (Star!11315 (reg!11644 Regex!11315)) (EmptyLang!11315) (Union!11315 (regOne!23143 Regex!11315) (regTwo!23143 Regex!11315)) )
))
(declare-datatypes ((String!46918 0))(
  ( (String!46919 (value!203318 String)) )
))
(declare-datatypes ((IArray!25247 0))(
  ( (IArray!25248 (innerList!12681 List!41384)) )
))
(declare-datatypes ((Conc!12621 0))(
  ( (Node!12621 (left!31652 Conc!12621) (right!31982 Conc!12621) (csize!25472 Int) (cheight!12832 Int)) (Leaf!19533 (xs!15927 IArray!25247) (csize!25473 Int)) (Empty!12621) )
))
(declare-datatypes ((BalanceConc!24836 0))(
  ( (BalanceConc!24837 (c!674833 Conc!12621)) )
))
(declare-datatypes ((TokenValueInjection!12708 0))(
  ( (TokenValueInjection!12709 (toValue!8838 Int) (toChars!8697 Int)) )
))
(declare-datatypes ((Rule!12620 0))(
  ( (Rule!12621 (regex!6410 Regex!11315) (tag!7270 String!46918) (isSeparator!6410 Bool) (transformation!6410 TokenValueInjection!12708)) )
))
(declare-datatypes ((Token!11958 0))(
  ( (Token!11959 (value!203319 TokenValue!6640) (rule!9308 Rule!12620) (size!30992 Int) (originalCharacters!7010 List!41384)) )
))
(declare-datatypes ((List!41386 0))(
  ( (Nil!41262) (Cons!41262 (h!46682 Token!11958) (t!315125 List!41386)) )
))
(declare-fun suffixTokens!72 () List!41386)

(declare-fun e!2400486 () Bool)

(declare-fun b!3879470 () Bool)

(declare-fun tp!1176109 () Bool)

(declare-fun inv!21 (TokenValue!6640) Bool)

(assert (=> b!3879470 (= e!2400486 (and (inv!21 (value!203319 (h!46682 suffixTokens!72))) e!2400504 tp!1176109))))

(declare-fun e!2400491 () Bool)

(declare-fun tp!1176107 () Bool)

(declare-fun b!3879471 () Bool)

(declare-fun prefixTokens!80 () List!41386)

(declare-fun e!2400489 () Bool)

(declare-fun inv!55415 (Token!11958) Bool)

(assert (=> b!3879471 (= e!2400489 (and (inv!55415 (h!46682 prefixTokens!80)) e!2400491 tp!1176107))))

(declare-fun b!3879473 () Bool)

(declare-fun res!1572077 () Bool)

(declare-fun e!2400487 () Bool)

(assert (=> b!3879473 (=> (not res!1572077) (not e!2400487))))

(declare-datatypes ((LexerInterface!5999 0))(
  ( (LexerInterfaceExt!5996 (__x!25498 Int)) (Lexer!5997) )
))
(declare-fun thiss!20629 () LexerInterface!5999)

(declare-fun lt!1353799 () List!41384)

(declare-datatypes ((List!41387 0))(
  ( (Nil!41263) (Cons!41263 (h!46683 Rule!12620) (t!315126 List!41387)) )
))
(declare-fun rules!2768 () List!41387)

(get-info :version)

(declare-datatypes ((tuple2!40494 0))(
  ( (tuple2!40495 (_1!23381 Token!11958) (_2!23381 List!41384)) )
))
(declare-datatypes ((Option!8828 0))(
  ( (None!8827) (Some!8827 (v!39125 tuple2!40494)) )
))
(declare-fun maxPrefix!3303 (LexerInterface!5999 List!41387 List!41384) Option!8828)

(assert (=> b!3879473 (= res!1572077 (not ((_ is Some!8827) (maxPrefix!3303 thiss!20629 rules!2768 lt!1353799))))))

(declare-fun b!3879474 () Bool)

(declare-fun e!2400500 () Bool)

(declare-fun tp!1176115 () Bool)

(assert (=> b!3879474 (= e!2400491 (and (inv!21 (value!203319 (h!46682 prefixTokens!80))) e!2400500 tp!1176115))))

(declare-fun b!3879475 () Bool)

(declare-fun res!1572078 () Bool)

(assert (=> b!3879475 (=> (not res!1572078) (not e!2400499))))

(declare-fun isEmpty!24503 (List!41387) Bool)

(assert (=> b!3879475 (= res!1572078 (not (isEmpty!24503 rules!2768)))))

(declare-fun e!2400495 () Bool)

(assert (=> b!3879476 (= e!2400495 (and tp!1176116 tp!1176110))))

(declare-fun b!3879477 () Bool)

(assert (=> b!3879477 (= e!2400499 e!2400487)))

(declare-fun res!1572073 () Bool)

(assert (=> b!3879477 (=> (not res!1572073) (not e!2400487))))

(declare-fun suffixResult!91 () List!41384)

(declare-datatypes ((tuple2!40496 0))(
  ( (tuple2!40497 (_1!23382 List!41386) (_2!23382 List!41384)) )
))
(declare-fun lexList!1767 (LexerInterface!5999 List!41387 List!41384) tuple2!40496)

(declare-fun ++!10577 (List!41386 List!41386) List!41386)

(assert (=> b!3879477 (= res!1572073 (= (lexList!1767 thiss!20629 rules!2768 lt!1353799) (tuple2!40497 (++!10577 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun suffix!1176 () List!41384)

(declare-fun ++!10578 (List!41384 List!41384) List!41384)

(assert (=> b!3879477 (= lt!1353799 (++!10578 prefix!426 suffix!1176))))

(declare-fun e!2400490 () Bool)

(assert (=> b!3879478 (= e!2400490 (and tp!1176104 tp!1176113))))

(declare-fun b!3879479 () Bool)

(declare-fun e!2400493 () Bool)

(declare-fun tp_is_empty!19601 () Bool)

(declare-fun tp!1176114 () Bool)

(assert (=> b!3879479 (= e!2400493 (and tp_is_empty!19601 tp!1176114))))

(declare-fun b!3879480 () Bool)

(declare-fun res!1572072 () Bool)

(assert (=> b!3879480 (=> (not res!1572072) (not e!2400499))))

(declare-fun isEmpty!24504 (List!41386) Bool)

(assert (=> b!3879480 (= res!1572072 (not (isEmpty!24504 prefixTokens!80)))))

(declare-fun e!2400497 () Bool)

(assert (=> b!3879481 (= e!2400497 (and tp!1176108 tp!1176106))))

(declare-fun b!3879482 () Bool)

(declare-fun e!2400503 () Bool)

(declare-fun tp!1176105 () Bool)

(declare-fun inv!55412 (String!46918) Bool)

(declare-fun inv!55416 (TokenValueInjection!12708) Bool)

(assert (=> b!3879482 (= e!2400503 (and tp!1176105 (inv!55412 (tag!7270 (h!46683 rules!2768))) (inv!55416 (transformation!6410 (h!46683 rules!2768))) e!2400495))))

(declare-fun b!3879483 () Bool)

(declare-fun tp!1176120 () Bool)

(assert (=> b!3879483 (= e!2400500 (and tp!1176120 (inv!55412 (tag!7270 (rule!9308 (h!46682 prefixTokens!80)))) (inv!55416 (transformation!6410 (rule!9308 (h!46682 prefixTokens!80)))) e!2400497))))

(declare-fun b!3879484 () Bool)

(declare-fun res!1572074 () Bool)

(assert (=> b!3879484 (=> (not res!1572074) (not e!2400487))))

(assert (=> b!3879484 (= res!1572074 (= (lexList!1767 thiss!20629 rules!2768 suffix!1176) (tuple2!40497 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3879485 () Bool)

(declare-fun e!2400496 () Bool)

(declare-fun tp!1176111 () Bool)

(assert (=> b!3879485 (= e!2400496 (and tp_is_empty!19601 tp!1176111))))

(declare-fun b!3879486 () Bool)

(assert (=> b!3879486 (= e!2400487 (not true))))

(assert (=> b!3879486 false))

(declare-fun res!1572075 () Bool)

(assert (=> start!364160 (=> (not res!1572075) (not e!2400499))))

(assert (=> start!364160 (= res!1572075 ((_ is Lexer!5997) thiss!20629))))

(assert (=> start!364160 e!2400499))

(assert (=> start!364160 e!2400493))

(assert (=> start!364160 true))

(declare-fun e!2400492 () Bool)

(assert (=> start!364160 e!2400492))

(declare-fun e!2400502 () Bool)

(assert (=> start!364160 e!2400502))

(assert (=> start!364160 e!2400489))

(declare-fun e!2400484 () Bool)

(assert (=> start!364160 e!2400484))

(assert (=> start!364160 e!2400496))

(declare-fun b!3879472 () Bool)

(declare-fun tp!1176119 () Bool)

(assert (=> b!3879472 (= e!2400502 (and e!2400503 tp!1176119))))

(declare-fun tp!1176118 () Bool)

(declare-fun b!3879487 () Bool)

(assert (=> b!3879487 (= e!2400504 (and tp!1176118 (inv!55412 (tag!7270 (rule!9308 (h!46682 suffixTokens!72)))) (inv!55416 (transformation!6410 (rule!9308 (h!46682 suffixTokens!72)))) e!2400490))))

(declare-fun tp!1176117 () Bool)

(declare-fun b!3879488 () Bool)

(assert (=> b!3879488 (= e!2400484 (and (inv!55415 (h!46682 suffixTokens!72)) e!2400486 tp!1176117))))

(declare-fun b!3879489 () Bool)

(declare-fun res!1572079 () Bool)

(assert (=> b!3879489 (=> (not res!1572079) (not e!2400499))))

(declare-fun rulesInvariant!5342 (LexerInterface!5999 List!41387) Bool)

(assert (=> b!3879489 (= res!1572079 (rulesInvariant!5342 thiss!20629 rules!2768))))

(declare-fun b!3879490 () Bool)

(declare-fun tp!1176112 () Bool)

(assert (=> b!3879490 (= e!2400492 (and tp_is_empty!19601 tp!1176112))))

(assert (= (and start!364160 res!1572075) b!3879475))

(assert (= (and b!3879475 res!1572078) b!3879489))

(assert (= (and b!3879489 res!1572079) b!3879480))

(assert (= (and b!3879480 res!1572072) b!3879469))

(assert (= (and b!3879469 res!1572076) b!3879477))

(assert (= (and b!3879477 res!1572073) b!3879484))

(assert (= (and b!3879484 res!1572074) b!3879473))

(assert (= (and b!3879473 res!1572077) b!3879486))

(assert (= (and start!364160 ((_ is Cons!41260) suffixResult!91)) b!3879479))

(assert (= (and start!364160 ((_ is Cons!41260) suffix!1176)) b!3879490))

(assert (= b!3879482 b!3879476))

(assert (= b!3879472 b!3879482))

(assert (= (and start!364160 ((_ is Cons!41263) rules!2768)) b!3879472))

(assert (= b!3879483 b!3879481))

(assert (= b!3879474 b!3879483))

(assert (= b!3879471 b!3879474))

(assert (= (and start!364160 ((_ is Cons!41262) prefixTokens!80)) b!3879471))

(assert (= b!3879487 b!3879478))

(assert (= b!3879470 b!3879487))

(assert (= b!3879488 b!3879470))

(assert (= (and start!364160 ((_ is Cons!41262) suffixTokens!72)) b!3879488))

(assert (= (and start!364160 ((_ is Cons!41260) prefix!426)) b!3879485))

(declare-fun m!4437975 () Bool)

(assert (=> b!3879484 m!4437975))

(declare-fun m!4437977 () Bool)

(assert (=> b!3879487 m!4437977))

(declare-fun m!4437979 () Bool)

(assert (=> b!3879487 m!4437979))

(declare-fun m!4437981 () Bool)

(assert (=> b!3879483 m!4437981))

(declare-fun m!4437983 () Bool)

(assert (=> b!3879483 m!4437983))

(declare-fun m!4437985 () Bool)

(assert (=> b!3879470 m!4437985))

(declare-fun m!4437987 () Bool)

(assert (=> b!3879489 m!4437987))

(declare-fun m!4437989 () Bool)

(assert (=> b!3879469 m!4437989))

(declare-fun m!4437991 () Bool)

(assert (=> b!3879477 m!4437991))

(declare-fun m!4437993 () Bool)

(assert (=> b!3879477 m!4437993))

(declare-fun m!4437995 () Bool)

(assert (=> b!3879477 m!4437995))

(declare-fun m!4437997 () Bool)

(assert (=> b!3879482 m!4437997))

(declare-fun m!4437999 () Bool)

(assert (=> b!3879482 m!4437999))

(declare-fun m!4438001 () Bool)

(assert (=> b!3879480 m!4438001))

(declare-fun m!4438003 () Bool)

(assert (=> b!3879471 m!4438003))

(declare-fun m!4438005 () Bool)

(assert (=> b!3879475 m!4438005))

(declare-fun m!4438007 () Bool)

(assert (=> b!3879474 m!4438007))

(declare-fun m!4438009 () Bool)

(assert (=> b!3879488 m!4438009))

(declare-fun m!4438011 () Bool)

(assert (=> b!3879473 m!4438011))

(check-sat (not b!3879484) (not b!3879482) (not b!3879485) (not b_next!105743) (not b!3879490) (not b!3879475) (not b_next!105745) b_and!290935 (not b!3879483) b_and!290939 (not b!3879489) (not b!3879480) (not b!3879470) (not b!3879472) (not b!3879479) (not b!3879471) (not b!3879469) b_and!290941 (not b!3879474) (not b!3879473) (not b!3879488) b_and!290933 b_and!290931 (not b_next!105741) tp_is_empty!19601 (not b_next!105751) (not b_next!105747) (not b_next!105749) (not b!3879487) b_and!290937 (not b!3879477))
(check-sat (not b_next!105743) (not b_next!105745) b_and!290935 b_and!290939 (not b_next!105749) b_and!290937 b_and!290941 b_and!290933 b_and!290931 (not b_next!105741) (not b_next!105751) (not b_next!105747))
