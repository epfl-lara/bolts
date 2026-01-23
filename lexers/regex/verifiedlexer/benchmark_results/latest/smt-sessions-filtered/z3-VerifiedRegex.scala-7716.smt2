; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405418 () Bool)

(assert start!405418)

(declare-fun b!4236969 () Bool)

(declare-fun b_free!125263 () Bool)

(declare-fun b_next!125967 () Bool)

(assert (=> b!4236969 (= b_free!125263 (not b_next!125967))))

(declare-fun tp!1297959 () Bool)

(declare-fun b_and!334733 () Bool)

(assert (=> b!4236969 (= tp!1297959 b_and!334733)))

(declare-fun b_free!125265 () Bool)

(declare-fun b_next!125969 () Bool)

(assert (=> b!4236969 (= b_free!125265 (not b_next!125969))))

(declare-fun tp!1297956 () Bool)

(declare-fun b_and!334735 () Bool)

(assert (=> b!4236969 (= tp!1297956 b_and!334735)))

(declare-fun b!4236972 () Bool)

(declare-fun b_free!125267 () Bool)

(declare-fun b_next!125971 () Bool)

(assert (=> b!4236972 (= b_free!125267 (not b_next!125971))))

(declare-fun tp!1297960 () Bool)

(declare-fun b_and!334737 () Bool)

(assert (=> b!4236972 (= tp!1297960 b_and!334737)))

(declare-fun b_free!125269 () Bool)

(declare-fun b_next!125973 () Bool)

(assert (=> b!4236972 (= b_free!125269 (not b_next!125973))))

(declare-fun tp!1297958 () Bool)

(declare-fun b_and!334739 () Bool)

(assert (=> b!4236972 (= tp!1297958 b_and!334739)))

(declare-fun b!4236958 () Bool)

(declare-fun b_free!125271 () Bool)

(declare-fun b_next!125975 () Bool)

(assert (=> b!4236958 (= b_free!125271 (not b_next!125975))))

(declare-fun tp!1297953 () Bool)

(declare-fun b_and!334741 () Bool)

(assert (=> b!4236958 (= tp!1297953 b_and!334741)))

(declare-fun b_free!125273 () Bool)

(declare-fun b_next!125977 () Bool)

(assert (=> b!4236958 (= b_free!125273 (not b_next!125977))))

(declare-fun tp!1297955 () Bool)

(declare-fun b_and!334743 () Bool)

(assert (=> b!4236958 (= tp!1297955 b_and!334743)))

(declare-fun b!4236957 () Bool)

(declare-fun e!2631048 () Bool)

(declare-fun e!2631047 () Bool)

(assert (=> b!4236957 (= e!2631048 e!2631047)))

(declare-fun res!1742529 () Bool)

(assert (=> b!4236957 (=> (not res!1742529) (not e!2631047))))

(declare-fun lt!1505959 () Int)

(declare-datatypes ((List!46960 0))(
  ( (Nil!46836) (Cons!46836 (h!52256 (_ BitVec 16)) (t!349903 List!46960)) )
))
(declare-datatypes ((TokenValue!8146 0))(
  ( (FloatLiteralValue!16292 (text!57467 List!46960)) (TokenValueExt!8145 (__x!28515 Int)) (Broken!40730 (value!246116 List!46960)) (Object!8269) (End!8146) (Def!8146) (Underscore!8146) (Match!8146) (Else!8146) (Error!8146) (Case!8146) (If!8146) (Extends!8146) (Abstract!8146) (Class!8146) (Val!8146) (DelimiterValue!16292 (del!8206 List!46960)) (KeywordValue!8152 (value!246117 List!46960)) (CommentValue!16292 (value!246118 List!46960)) (WhitespaceValue!16292 (value!246119 List!46960)) (IndentationValue!8146 (value!246120 List!46960)) (String!54659) (Int32!8146) (Broken!40731 (value!246121 List!46960)) (Boolean!8147) (Unit!65942) (OperatorValue!8149 (op!8206 List!46960)) (IdentifierValue!16292 (value!246122 List!46960)) (IdentifierValue!16293 (value!246123 List!46960)) (WhitespaceValue!16293 (value!246124 List!46960)) (True!16292) (False!16292) (Broken!40732 (value!246125 List!46960)) (Broken!40733 (value!246126 List!46960)) (True!16293) (RightBrace!8146) (RightBracket!8146) (Colon!8146) (Null!8146) (Comma!8146) (LeftBracket!8146) (False!16293) (LeftBrace!8146) (ImaginaryLiteralValue!8146 (text!57468 List!46960)) (StringLiteralValue!24438 (value!246127 List!46960)) (EOFValue!8146 (value!246128 List!46960)) (IdentValue!8146 (value!246129 List!46960)) (DelimiterValue!16293 (value!246130 List!46960)) (DedentValue!8146 (value!246131 List!46960)) (NewLineValue!8146 (value!246132 List!46960)) (IntegerValue!24438 (value!246133 (_ BitVec 32)) (text!57469 List!46960)) (IntegerValue!24439 (value!246134 Int) (text!57470 List!46960)) (Times!8146) (Or!8146) (Equal!8146) (Minus!8146) (Broken!40734 (value!246135 List!46960)) (And!8146) (Div!8146) (LessEqual!8146) (Mod!8146) (Concat!20967) (Not!8146) (Plus!8146) (SpaceValue!8146 (value!246136 List!46960)) (IntegerValue!24440 (value!246137 Int) (text!57471 List!46960)) (StringLiteralValue!24439 (text!57472 List!46960)) (FloatLiteralValue!16293 (text!57473 List!46960)) (BytesLiteralValue!8146 (value!246138 List!46960)) (CommentValue!16293 (value!246139 List!46960)) (StringLiteralValue!24440 (value!246140 List!46960)) (ErrorTokenValue!8146 (msg!8207 List!46960)) )
))
(declare-datatypes ((C!25840 0))(
  ( (C!25841 (val!15110 Int)) )
))
(declare-datatypes ((Regex!12821 0))(
  ( (ElementMatch!12821 (c!720050 C!25840)) (Concat!20968 (regOne!26154 Regex!12821) (regTwo!26154 Regex!12821)) (EmptyExpr!12821) (Star!12821 (reg!13150 Regex!12821)) (EmptyLang!12821) (Union!12821 (regOne!26155 Regex!12821) (regTwo!26155 Regex!12821)) )
))
(declare-datatypes ((String!54660 0))(
  ( (String!54661 (value!246141 String)) )
))
(declare-datatypes ((List!46961 0))(
  ( (Nil!46837) (Cons!46837 (h!52257 C!25840) (t!349904 List!46961)) )
))
(declare-datatypes ((IArray!28259 0))(
  ( (IArray!28260 (innerList!14187 List!46961)) )
))
(declare-datatypes ((Conc!14127 0))(
  ( (Node!14127 (left!34819 Conc!14127) (right!35149 Conc!14127) (csize!28484 Int) (cheight!14338 Int)) (Leaf!21844 (xs!17433 IArray!28259) (csize!28485 Int)) (Empty!14127) )
))
(declare-datatypes ((BalanceConc!27848 0))(
  ( (BalanceConc!27849 (c!720051 Conc!14127)) )
))
(declare-datatypes ((TokenValueInjection!15720 0))(
  ( (TokenValueInjection!15721 (toValue!10660 Int) (toChars!10519 Int)) )
))
(declare-datatypes ((Rule!15632 0))(
  ( (Rule!15633 (regex!7916 Regex!12821) (tag!8780 String!54660) (isSeparator!7916 Bool) (transformation!7916 TokenValueInjection!15720)) )
))
(declare-datatypes ((Token!14458 0))(
  ( (Token!14459 (value!246142 TokenValue!8146) (rule!11040 Rule!15632) (size!34311 Int) (originalCharacters!8260 List!46961)) )
))
(declare-datatypes ((tuple2!44414 0))(
  ( (tuple2!44415 (_1!25341 Token!14458) (_2!25341 List!46961)) )
))
(declare-datatypes ((Option!10052 0))(
  ( (None!10051) (Some!10051 (v!40999 tuple2!44414)) )
))
(declare-fun lt!1505957 () Option!10052)

(declare-fun size!34312 (List!46961) Int)

(assert (=> b!4236957 (= res!1742529 (> lt!1505959 (size!34312 (_2!25341 (v!40999 lt!1505957)))))))

(declare-datatypes ((List!46962 0))(
  ( (Nil!46838) (Cons!46838 (h!52258 Token!14458) (t!349905 List!46962)) )
))
(declare-fun lt!1505958 () List!46962)

(declare-fun addTokens!17 () List!46962)

(declare-fun tail!6836 (List!46962) List!46962)

(assert (=> b!4236957 (= lt!1505958 (tail!6836 addTokens!17))))

(declare-fun e!2631054 () Bool)

(assert (=> b!4236958 (= e!2631054 (and tp!1297953 tp!1297955))))

(declare-fun b!4236959 () Bool)

(declare-fun res!1742537 () Bool)

(declare-fun e!2631049 () Bool)

(assert (=> b!4236959 (=> (not res!1742537) (not e!2631049))))

(declare-fun longerInput!51 () List!46961)

(declare-fun isEmpty!27679 (List!46961) Bool)

(assert (=> b!4236959 (= res!1742537 (not (isEmpty!27679 longerInput!51)))))

(declare-fun tp!1297952 () Bool)

(declare-fun e!2631046 () Bool)

(declare-fun b!4236960 () Bool)

(declare-fun e!2631044 () Bool)

(declare-fun inv!61565 (Token!14458) Bool)

(assert (=> b!4236960 (= e!2631044 (and (inv!61565 (h!52258 addTokens!17)) e!2631046 tp!1297952))))

(declare-fun b!4236961 () Bool)

(declare-datatypes ((List!46963 0))(
  ( (Nil!46839) (Cons!46839 (h!52259 Rule!15632) (t!349906 List!46963)) )
))
(declare-fun rules!2932 () List!46963)

(declare-fun e!2631039 () Bool)

(declare-fun tp!1297961 () Bool)

(declare-fun inv!61562 (String!54660) Bool)

(declare-fun inv!61566 (TokenValueInjection!15720) Bool)

(assert (=> b!4236961 (= e!2631039 (and tp!1297961 (inv!61562 (tag!8780 (h!52259 rules!2932))) (inv!61566 (transformation!7916 (h!52259 rules!2932))) e!2631054))))

(declare-fun res!1742536 () Bool)

(assert (=> start!405418 (=> (not res!1742536) (not e!2631049))))

(declare-datatypes ((LexerInterface!7511 0))(
  ( (LexerInterfaceExt!7508 (__x!28516 Int)) (Lexer!7509) )
))
(declare-fun thiss!21540 () LexerInterface!7511)

(get-info :version)

(assert (=> start!405418 (= res!1742536 ((_ is Lexer!7509) thiss!21540))))

(assert (=> start!405418 e!2631049))

(assert (=> start!405418 true))

(declare-fun e!2631036 () Bool)

(assert (=> start!405418 e!2631036))

(assert (=> start!405418 e!2631044))

(declare-fun e!2631053 () Bool)

(assert (=> start!405418 e!2631053))

(declare-fun e!2631037 () Bool)

(assert (=> start!405418 e!2631037))

(declare-fun e!2631042 () Bool)

(assert (=> start!405418 e!2631042))

(declare-fun e!2631040 () Bool)

(assert (=> start!405418 e!2631040))

(declare-fun b!4236962 () Bool)

(declare-fun res!1742531 () Bool)

(declare-fun e!2631050 () Bool)

(assert (=> b!4236962 (=> (not res!1742531) (not e!2631050))))

(declare-fun size!34313 (List!46962) Int)

(assert (=> b!4236962 (= res!1742531 (> (size!34313 addTokens!17) 0))))

(declare-fun e!2631056 () Bool)

(declare-fun b!4236963 () Bool)

(declare-fun tp!1297950 () Bool)

(declare-fun tokens!581 () List!46962)

(assert (=> b!4236963 (= e!2631042 (and (inv!61565 (h!52258 tokens!581)) e!2631056 tp!1297950))))

(declare-fun b!4236964 () Bool)

(declare-fun res!1742535 () Bool)

(assert (=> b!4236964 (=> (not res!1742535) (not e!2631049))))

(declare-fun isEmpty!27680 (List!46963) Bool)

(assert (=> b!4236964 (= res!1742535 (not (isEmpty!27680 rules!2932)))))

(declare-fun b!4236965 () Bool)

(declare-fun tp_is_empty!22633 () Bool)

(declare-fun tp!1297963 () Bool)

(assert (=> b!4236965 (= e!2631037 (and tp_is_empty!22633 tp!1297963))))

(declare-fun b!4236966 () Bool)

(declare-fun res!1742530 () Bool)

(assert (=> b!4236966 (=> (not res!1742530) (not e!2631049))))

(declare-fun rulesInvariant!6622 (LexerInterface!7511 List!46963) Bool)

(assert (=> b!4236966 (= res!1742530 (rulesInvariant!6622 thiss!21540 rules!2932))))

(declare-fun tp!1297949 () Bool)

(declare-fun e!2631055 () Bool)

(declare-fun e!2631045 () Bool)

(declare-fun b!4236967 () Bool)

(assert (=> b!4236967 (= e!2631045 (and tp!1297949 (inv!61562 (tag!8780 (rule!11040 (h!52258 addTokens!17)))) (inv!61566 (transformation!7916 (rule!11040 (h!52258 addTokens!17)))) e!2631055))))

(declare-fun b!4236968 () Bool)

(declare-fun tp!1297957 () Bool)

(assert (=> b!4236968 (= e!2631036 (and e!2631039 tp!1297957))))

(declare-fun e!2631051 () Bool)

(assert (=> b!4236969 (= e!2631051 (and tp!1297959 tp!1297956))))

(declare-fun b!4236970 () Bool)

(declare-fun res!1742526 () Bool)

(assert (=> b!4236970 (=> (not res!1742526) (not e!2631050))))

(declare-fun isEmpty!27681 (List!46962) Bool)

(assert (=> b!4236970 (= res!1742526 (not (isEmpty!27681 addTokens!17)))))

(declare-fun b!4236971 () Bool)

(assert (=> b!4236971 (= e!2631050 e!2631048)))

(declare-fun res!1742532 () Bool)

(assert (=> b!4236971 (=> (not res!1742532) (not e!2631048))))

(declare-fun lt!1505956 () Option!10052)

(assert (=> b!4236971 (= res!1742532 (and ((_ is Some!10051) lt!1505956) ((_ is Some!10051) lt!1505957)))))

(declare-fun shorterInput!51 () List!46961)

(declare-fun maxPrefix!4469 (LexerInterface!7511 List!46963 List!46961) Option!10052)

(assert (=> b!4236971 (= lt!1505957 (maxPrefix!4469 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> b!4236971 (= lt!1505956 (maxPrefix!4469 thiss!21540 rules!2932 longerInput!51))))

(assert (=> b!4236972 (= e!2631055 (and tp!1297960 tp!1297958))))

(declare-fun b!4236973 () Bool)

(declare-fun tp!1297962 () Bool)

(assert (=> b!4236973 (= e!2631040 (and tp_is_empty!22633 tp!1297962))))

(declare-fun b!4236974 () Bool)

(declare-fun e!2631038 () Bool)

(declare-fun tp!1297951 () Bool)

(assert (=> b!4236974 (= e!2631038 (and tp!1297951 (inv!61562 (tag!8780 (rule!11040 (h!52258 tokens!581)))) (inv!61566 (transformation!7916 (rule!11040 (h!52258 tokens!581)))) e!2631051))))

(declare-fun b!4236975 () Bool)

(declare-fun res!1742527 () Bool)

(assert (=> b!4236975 (=> (not res!1742527) (not e!2631050))))

(declare-fun suffix!1262 () List!46961)

(declare-datatypes ((tuple2!44416 0))(
  ( (tuple2!44417 (_1!25342 List!46962) (_2!25342 List!46961)) )
))
(declare-fun lexList!2017 (LexerInterface!7511 List!46963 List!46961) tuple2!44416)

(assert (=> b!4236975 (= res!1742527 (= (lexList!2017 thiss!21540 rules!2932 longerInput!51) (tuple2!44417 tokens!581 suffix!1262)))))

(declare-fun b!4236976 () Bool)

(declare-fun res!1742534 () Bool)

(assert (=> b!4236976 (=> (not res!1742534) (not e!2631048))))

(declare-fun ++!11928 (List!46961 List!46961) List!46961)

(declare-fun list!16889 (BalanceConc!27848) List!46961)

(declare-fun charsOf!5272 (Token!14458) BalanceConc!27848)

(assert (=> b!4236976 (= res!1742534 (= (++!11928 (list!16889 (charsOf!5272 (_1!25341 (v!40999 lt!1505957)))) (_2!25341 (v!40999 lt!1505957))) shorterInput!51))))

(declare-fun b!4236977 () Bool)

(declare-fun tp!1297948 () Bool)

(declare-fun inv!21 (TokenValue!8146) Bool)

(assert (=> b!4236977 (= e!2631056 (and (inv!21 (value!246142 (h!52258 tokens!581))) e!2631038 tp!1297948))))

(declare-fun tp!1297954 () Bool)

(declare-fun b!4236978 () Bool)

(assert (=> b!4236978 (= e!2631046 (and (inv!21 (value!246142 (h!52258 addTokens!17))) e!2631045 tp!1297954))))

(declare-fun b!4236979 () Bool)

(assert (=> b!4236979 (= e!2631049 e!2631050)))

(declare-fun res!1742528 () Bool)

(assert (=> b!4236979 (=> (not res!1742528) (not e!2631050))))

(assert (=> b!4236979 (= res!1742528 (> lt!1505959 (size!34312 shorterInput!51)))))

(assert (=> b!4236979 (= lt!1505959 (size!34312 longerInput!51))))

(declare-fun b!4236980 () Bool)

(declare-fun tp!1297964 () Bool)

(assert (=> b!4236980 (= e!2631053 (and tp_is_empty!22633 tp!1297964))))

(declare-fun b!4236981 () Bool)

(assert (=> b!4236981 (= e!2631047 (not true))))

(declare-fun ++!11929 (List!46962 List!46962) List!46962)

(assert (=> b!4236981 (not (= (lexList!2017 thiss!21540 rules!2932 (_2!25341 (v!40999 lt!1505957))) (tuple2!44417 (++!11929 lt!1505958 tokens!581) suffix!1262)))))

(declare-datatypes ((Unit!65943 0))(
  ( (Unit!65944) )
))
(declare-fun lt!1505960 () Unit!65943)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!170 (LexerInterface!7511 List!46963 List!46961 List!46961 List!46962 List!46961 List!46962) Unit!65943)

(assert (=> b!4236981 (= lt!1505960 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!170 thiss!21540 rules!2932 longerInput!51 (_2!25341 (v!40999 lt!1505957)) tokens!581 suffix!1262 lt!1505958))))

(declare-fun b!4236982 () Bool)

(declare-fun res!1742533 () Bool)

(assert (=> b!4236982 (=> (not res!1742533) (not e!2631048))))

(assert (=> b!4236982 (= res!1742533 (= (++!11928 (list!16889 (charsOf!5272 (_1!25341 (v!40999 lt!1505956)))) (_2!25341 (v!40999 lt!1505956))) longerInput!51))))

(assert (= (and start!405418 res!1742536) b!4236964))

(assert (= (and b!4236964 res!1742535) b!4236966))

(assert (= (and b!4236966 res!1742530) b!4236959))

(assert (= (and b!4236959 res!1742537) b!4236979))

(assert (= (and b!4236979 res!1742528) b!4236975))

(assert (= (and b!4236975 res!1742527) b!4236970))

(assert (= (and b!4236970 res!1742526) b!4236962))

(assert (= (and b!4236962 res!1742531) b!4236971))

(assert (= (and b!4236971 res!1742532) b!4236982))

(assert (= (and b!4236982 res!1742533) b!4236976))

(assert (= (and b!4236976 res!1742534) b!4236957))

(assert (= (and b!4236957 res!1742529) b!4236981))

(assert (= b!4236961 b!4236958))

(assert (= b!4236968 b!4236961))

(assert (= (and start!405418 ((_ is Cons!46839) rules!2932)) b!4236968))

(assert (= b!4236967 b!4236972))

(assert (= b!4236978 b!4236967))

(assert (= b!4236960 b!4236978))

(assert (= (and start!405418 ((_ is Cons!46838) addTokens!17)) b!4236960))

(assert (= (and start!405418 ((_ is Cons!46837) shorterInput!51)) b!4236980))

(assert (= (and start!405418 ((_ is Cons!46837) suffix!1262)) b!4236965))

(assert (= b!4236974 b!4236969))

(assert (= b!4236977 b!4236974))

(assert (= b!4236963 b!4236977))

(assert (= (and start!405418 ((_ is Cons!46838) tokens!581)) b!4236963))

(assert (= (and start!405418 ((_ is Cons!46837) longerInput!51)) b!4236973))

(declare-fun m!4822449 () Bool)

(assert (=> b!4236982 m!4822449))

(assert (=> b!4236982 m!4822449))

(declare-fun m!4822451 () Bool)

(assert (=> b!4236982 m!4822451))

(assert (=> b!4236982 m!4822451))

(declare-fun m!4822453 () Bool)

(assert (=> b!4236982 m!4822453))

(declare-fun m!4822455 () Bool)

(assert (=> b!4236966 m!4822455))

(declare-fun m!4822457 () Bool)

(assert (=> b!4236959 m!4822457))

(declare-fun m!4822459 () Bool)

(assert (=> b!4236977 m!4822459))

(declare-fun m!4822461 () Bool)

(assert (=> b!4236964 m!4822461))

(declare-fun m!4822463 () Bool)

(assert (=> b!4236967 m!4822463))

(declare-fun m!4822465 () Bool)

(assert (=> b!4236967 m!4822465))

(declare-fun m!4822467 () Bool)

(assert (=> b!4236981 m!4822467))

(declare-fun m!4822469 () Bool)

(assert (=> b!4236981 m!4822469))

(declare-fun m!4822471 () Bool)

(assert (=> b!4236981 m!4822471))

(declare-fun m!4822473 () Bool)

(assert (=> b!4236979 m!4822473))

(declare-fun m!4822475 () Bool)

(assert (=> b!4236979 m!4822475))

(declare-fun m!4822477 () Bool)

(assert (=> b!4236961 m!4822477))

(declare-fun m!4822479 () Bool)

(assert (=> b!4236961 m!4822479))

(declare-fun m!4822481 () Bool)

(assert (=> b!4236974 m!4822481))

(declare-fun m!4822483 () Bool)

(assert (=> b!4236974 m!4822483))

(declare-fun m!4822485 () Bool)

(assert (=> b!4236962 m!4822485))

(declare-fun m!4822487 () Bool)

(assert (=> b!4236975 m!4822487))

(declare-fun m!4822489 () Bool)

(assert (=> b!4236970 m!4822489))

(declare-fun m!4822491 () Bool)

(assert (=> b!4236960 m!4822491))

(declare-fun m!4822493 () Bool)

(assert (=> b!4236978 m!4822493))

(declare-fun m!4822495 () Bool)

(assert (=> b!4236971 m!4822495))

(declare-fun m!4822497 () Bool)

(assert (=> b!4236971 m!4822497))

(declare-fun m!4822499 () Bool)

(assert (=> b!4236957 m!4822499))

(declare-fun m!4822501 () Bool)

(assert (=> b!4236957 m!4822501))

(declare-fun m!4822503 () Bool)

(assert (=> b!4236976 m!4822503))

(assert (=> b!4236976 m!4822503))

(declare-fun m!4822505 () Bool)

(assert (=> b!4236976 m!4822505))

(assert (=> b!4236976 m!4822505))

(declare-fun m!4822507 () Bool)

(assert (=> b!4236976 m!4822507))

(declare-fun m!4822509 () Bool)

(assert (=> b!4236963 m!4822509))

(check-sat (not b!4236977) (not b!4236979) (not b!4236966) tp_is_empty!22633 (not b!4236964) (not b_next!125973) (not b!4236974) (not b!4236968) b_and!334737 (not b!4236965) (not b!4236960) b_and!334735 (not b_next!125967) (not b!4236976) (not b!4236967) (not b!4236980) b_and!334739 (not b!4236961) (not b_next!125977) b_and!334741 (not b!4236962) (not b_next!125975) (not b_next!125969) (not b!4236981) b_and!334733 (not b!4236970) (not b!4236975) (not b!4236971) (not b!4236959) (not b!4236963) (not b!4236982) (not b!4236978) b_and!334743 (not b!4236973) (not b_next!125971) (not b!4236957))
(check-sat b_and!334739 (not b_next!125973) (not b_next!125975) b_and!334737 b_and!334735 (not b_next!125967) b_and!334743 (not b_next!125971) (not b_next!125977) b_and!334741 (not b_next!125969) b_and!334733)
