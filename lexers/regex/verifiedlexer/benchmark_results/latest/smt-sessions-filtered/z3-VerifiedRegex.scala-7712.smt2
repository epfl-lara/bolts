; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405242 () Bool)

(assert start!405242)

(declare-fun b!4235320 () Bool)

(declare-fun b_free!125095 () Bool)

(declare-fun b_next!125799 () Bool)

(assert (=> b!4235320 (= b_free!125095 (not b_next!125799))))

(declare-fun tp!1297014 () Bool)

(declare-fun b_and!334445 () Bool)

(assert (=> b!4235320 (= tp!1297014 b_and!334445)))

(declare-fun b_free!125097 () Bool)

(declare-fun b_next!125801 () Bool)

(assert (=> b!4235320 (= b_free!125097 (not b_next!125801))))

(declare-fun tp!1297018 () Bool)

(declare-fun b_and!334447 () Bool)

(assert (=> b!4235320 (= tp!1297018 b_and!334447)))

(declare-fun b!4235327 () Bool)

(declare-fun b_free!125099 () Bool)

(declare-fun b_next!125803 () Bool)

(assert (=> b!4235327 (= b_free!125099 (not b_next!125803))))

(declare-fun tp!1297015 () Bool)

(declare-fun b_and!334449 () Bool)

(assert (=> b!4235327 (= tp!1297015 b_and!334449)))

(declare-fun b_free!125101 () Bool)

(declare-fun b_next!125805 () Bool)

(assert (=> b!4235327 (= b_free!125101 (not b_next!125805))))

(declare-fun tp!1297027 () Bool)

(declare-fun b_and!334451 () Bool)

(assert (=> b!4235327 (= tp!1297027 b_and!334451)))

(declare-fun b!4235311 () Bool)

(declare-fun b_free!125103 () Bool)

(declare-fun b_next!125807 () Bool)

(assert (=> b!4235311 (= b_free!125103 (not b_next!125807))))

(declare-fun tp!1297022 () Bool)

(declare-fun b_and!334453 () Bool)

(assert (=> b!4235311 (= tp!1297022 b_and!334453)))

(declare-fun b_free!125105 () Bool)

(declare-fun b_next!125809 () Bool)

(assert (=> b!4235311 (= b_free!125105 (not b_next!125809))))

(declare-fun tp!1297026 () Bool)

(declare-fun b_and!334455 () Bool)

(assert (=> b!4235311 (= tp!1297026 b_and!334455)))

(declare-fun b!4235307 () Bool)

(declare-fun e!2629893 () Bool)

(declare-fun tp_is_empty!22617 () Bool)

(declare-fun tp!1297029 () Bool)

(assert (=> b!4235307 (= e!2629893 (and tp_is_empty!22617 tp!1297029))))

(declare-fun b!4235308 () Bool)

(declare-fun e!2629897 () Bool)

(declare-fun tp!1297025 () Bool)

(declare-fun e!2629908 () Bool)

(declare-datatypes ((List!46924 0))(
  ( (Nil!46800) (Cons!46800 (h!52220 (_ BitVec 16)) (t!349627 List!46924)) )
))
(declare-datatypes ((TokenValue!8138 0))(
  ( (FloatLiteralValue!16276 (text!57411 List!46924)) (TokenValueExt!8137 (__x!28499 Int)) (Broken!40690 (value!245888 List!46924)) (Object!8261) (End!8138) (Def!8138) (Underscore!8138) (Match!8138) (Else!8138) (Error!8138) (Case!8138) (If!8138) (Extends!8138) (Abstract!8138) (Class!8138) (Val!8138) (DelimiterValue!16276 (del!8198 List!46924)) (KeywordValue!8144 (value!245889 List!46924)) (CommentValue!16276 (value!245890 List!46924)) (WhitespaceValue!16276 (value!245891 List!46924)) (IndentationValue!8138 (value!245892 List!46924)) (String!54619) (Int32!8138) (Broken!40691 (value!245893 List!46924)) (Boolean!8139) (Unit!65924) (OperatorValue!8141 (op!8198 List!46924)) (IdentifierValue!16276 (value!245894 List!46924)) (IdentifierValue!16277 (value!245895 List!46924)) (WhitespaceValue!16277 (value!245896 List!46924)) (True!16276) (False!16276) (Broken!40692 (value!245897 List!46924)) (Broken!40693 (value!245898 List!46924)) (True!16277) (RightBrace!8138) (RightBracket!8138) (Colon!8138) (Null!8138) (Comma!8138) (LeftBracket!8138) (False!16277) (LeftBrace!8138) (ImaginaryLiteralValue!8138 (text!57412 List!46924)) (StringLiteralValue!24414 (value!245899 List!46924)) (EOFValue!8138 (value!245900 List!46924)) (IdentValue!8138 (value!245901 List!46924)) (DelimiterValue!16277 (value!245902 List!46924)) (DedentValue!8138 (value!245903 List!46924)) (NewLineValue!8138 (value!245904 List!46924)) (IntegerValue!24414 (value!245905 (_ BitVec 32)) (text!57413 List!46924)) (IntegerValue!24415 (value!245906 Int) (text!57414 List!46924)) (Times!8138) (Or!8138) (Equal!8138) (Minus!8138) (Broken!40694 (value!245907 List!46924)) (And!8138) (Div!8138) (LessEqual!8138) (Mod!8138) (Concat!20951) (Not!8138) (Plus!8138) (SpaceValue!8138 (value!245908 List!46924)) (IntegerValue!24416 (value!245909 Int) (text!57415 List!46924)) (StringLiteralValue!24415 (text!57416 List!46924)) (FloatLiteralValue!16277 (text!57417 List!46924)) (BytesLiteralValue!8138 (value!245910 List!46924)) (CommentValue!16277 (value!245911 List!46924)) (StringLiteralValue!24416 (value!245912 List!46924)) (ErrorTokenValue!8138 (msg!8199 List!46924)) )
))
(declare-datatypes ((C!25824 0))(
  ( (C!25825 (val!15102 Int)) )
))
(declare-datatypes ((Regex!12813 0))(
  ( (ElementMatch!12813 (c!719886 C!25824)) (Concat!20952 (regOne!26138 Regex!12813) (regTwo!26138 Regex!12813)) (EmptyExpr!12813) (Star!12813 (reg!13142 Regex!12813)) (EmptyLang!12813) (Union!12813 (regOne!26139 Regex!12813) (regTwo!26139 Regex!12813)) )
))
(declare-datatypes ((String!54620 0))(
  ( (String!54621 (value!245913 String)) )
))
(declare-datatypes ((List!46925 0))(
  ( (Nil!46801) (Cons!46801 (h!52221 C!25824) (t!349628 List!46925)) )
))
(declare-datatypes ((IArray!28243 0))(
  ( (IArray!28244 (innerList!14179 List!46925)) )
))
(declare-datatypes ((Conc!14119 0))(
  ( (Node!14119 (left!34803 Conc!14119) (right!35133 Conc!14119) (csize!28468 Int) (cheight!14330 Int)) (Leaf!21832 (xs!17425 IArray!28243) (csize!28469 Int)) (Empty!14119) )
))
(declare-datatypes ((BalanceConc!27832 0))(
  ( (BalanceConc!27833 (c!719887 Conc!14119)) )
))
(declare-datatypes ((TokenValueInjection!15704 0))(
  ( (TokenValueInjection!15705 (toValue!10648 Int) (toChars!10507 Int)) )
))
(declare-datatypes ((Rule!15616 0))(
  ( (Rule!15617 (regex!7908 Regex!12813) (tag!8772 String!54620) (isSeparator!7908 Bool) (transformation!7908 TokenValueInjection!15704)) )
))
(declare-datatypes ((Token!14442 0))(
  ( (Token!14443 (value!245914 TokenValue!8138) (rule!11032 Rule!15616) (size!34287 Int) (originalCharacters!8252 List!46925)) )
))
(declare-datatypes ((List!46926 0))(
  ( (Nil!46802) (Cons!46802 (h!52222 Token!14442) (t!349629 List!46926)) )
))
(declare-fun tokens!581 () List!46926)

(declare-fun inv!21 (TokenValue!8138) Bool)

(assert (=> b!4235308 (= e!2629897 (and (inv!21 (value!245914 (h!52222 tokens!581))) e!2629908 tp!1297025))))

(declare-fun e!2629896 () Bool)

(declare-fun tp!1297023 () Bool)

(declare-fun addTokens!17 () List!46926)

(declare-fun b!4235309 () Bool)

(declare-fun e!2629906 () Bool)

(declare-fun inv!61520 (String!54620) Bool)

(declare-fun inv!61523 (TokenValueInjection!15704) Bool)

(assert (=> b!4235309 (= e!2629896 (and tp!1297023 (inv!61520 (tag!8772 (rule!11032 (h!52222 addTokens!17)))) (inv!61523 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) e!2629906))))

(declare-fun b!4235310 () Bool)

(declare-fun res!1741978 () Bool)

(declare-fun e!2629905 () Bool)

(assert (=> b!4235310 (=> (not res!1741978) (not e!2629905))))

(declare-datatypes ((LexerInterface!7503 0))(
  ( (LexerInterfaceExt!7500 (__x!28500 Int)) (Lexer!7501) )
))
(declare-fun thiss!21540 () LexerInterface!7503)

(declare-datatypes ((List!46927 0))(
  ( (Nil!46803) (Cons!46803 (h!52223 Rule!15616) (t!349630 List!46927)) )
))
(declare-fun rules!2932 () List!46927)

(declare-fun suffix!1262 () List!46925)

(declare-fun longerInput!51 () List!46925)

(declare-datatypes ((tuple2!44384 0))(
  ( (tuple2!44385 (_1!25326 List!46926) (_2!25326 List!46925)) )
))
(declare-fun lexList!2009 (LexerInterface!7503 List!46927 List!46925) tuple2!44384)

(assert (=> b!4235310 (= res!1741978 (= (lexList!2009 thiss!21540 rules!2932 longerInput!51) (tuple2!44385 tokens!581 suffix!1262)))))

(declare-fun e!2629904 () Bool)

(assert (=> b!4235311 (= e!2629904 (and tp!1297022 tp!1297026))))

(declare-fun b!4235312 () Bool)

(declare-fun res!1741981 () Bool)

(assert (=> b!4235312 (=> (not res!1741981) (not e!2629905))))

(declare-fun size!34288 (List!46926) Int)

(assert (=> b!4235312 (= res!1741981 (> (size!34288 addTokens!17) 0))))

(declare-fun b!4235313 () Bool)

(declare-fun res!1741977 () Bool)

(assert (=> b!4235313 (=> (not res!1741977) (not e!2629905))))

(declare-fun isEmpty!27651 (List!46927) Bool)

(assert (=> b!4235313 (= res!1741977 (not (isEmpty!27651 rules!2932)))))

(declare-fun b!4235314 () Bool)

(declare-fun e!2629894 () Bool)

(declare-fun e!2629892 () Bool)

(declare-fun tp!1297028 () Bool)

(assert (=> b!4235314 (= e!2629894 (and e!2629892 tp!1297028))))

(declare-fun b!4235315 () Bool)

(declare-fun rulesValidInductive!2962 (LexerInterface!7503 List!46927) Bool)

(assert (=> b!4235315 (= e!2629905 (not (rulesValidInductive!2962 thiss!21540 rules!2932)))))

(declare-fun res!1741980 () Bool)

(assert (=> start!405242 (=> (not res!1741980) (not e!2629905))))

(get-info :version)

(assert (=> start!405242 (= res!1741980 ((_ is Lexer!7501) thiss!21540))))

(assert (=> start!405242 e!2629905))

(assert (=> start!405242 true))

(assert (=> start!405242 e!2629894))

(declare-fun e!2629890 () Bool)

(assert (=> start!405242 e!2629890))

(assert (=> start!405242 e!2629893))

(declare-fun e!2629901 () Bool)

(assert (=> start!405242 e!2629901))

(declare-fun e!2629907 () Bool)

(assert (=> start!405242 e!2629907))

(declare-fun e!2629899 () Bool)

(assert (=> start!405242 e!2629899))

(declare-fun b!4235316 () Bool)

(declare-fun res!1741979 () Bool)

(assert (=> b!4235316 (=> (not res!1741979) (not e!2629905))))

(declare-fun shorterInput!51 () List!46925)

(declare-fun size!34289 (List!46925) Int)

(assert (=> b!4235316 (= res!1741979 (> (size!34289 longerInput!51) (size!34289 shorterInput!51)))))

(declare-fun b!4235317 () Bool)

(declare-fun res!1741976 () Bool)

(assert (=> b!4235317 (=> (not res!1741976) (not e!2629905))))

(declare-fun rulesInvariant!6614 (LexerInterface!7503 List!46927) Bool)

(assert (=> b!4235317 (= res!1741976 (rulesInvariant!6614 thiss!21540 rules!2932))))

(declare-fun b!4235318 () Bool)

(declare-fun e!2629903 () Bool)

(declare-fun tp!1297017 () Bool)

(declare-fun inv!61524 (Token!14442) Bool)

(assert (=> b!4235318 (= e!2629890 (and (inv!61524 (h!52222 addTokens!17)) e!2629903 tp!1297017))))

(declare-fun tp!1297021 () Bool)

(declare-fun e!2629889 () Bool)

(declare-fun b!4235319 () Bool)

(assert (=> b!4235319 (= e!2629892 (and tp!1297021 (inv!61520 (tag!8772 (h!52223 rules!2932))) (inv!61523 (transformation!7908 (h!52223 rules!2932))) e!2629889))))

(assert (=> b!4235320 (= e!2629889 (and tp!1297014 tp!1297018))))

(declare-fun b!4235321 () Bool)

(declare-fun tp!1297020 () Bool)

(assert (=> b!4235321 (= e!2629899 (and tp_is_empty!22617 tp!1297020))))

(declare-fun b!4235322 () Bool)

(declare-fun tp!1297019 () Bool)

(assert (=> b!4235322 (= e!2629901 (and tp_is_empty!22617 tp!1297019))))

(declare-fun tp!1297024 () Bool)

(declare-fun b!4235323 () Bool)

(assert (=> b!4235323 (= e!2629903 (and (inv!21 (value!245914 (h!52222 addTokens!17))) e!2629896 tp!1297024))))

(declare-fun tp!1297016 () Bool)

(declare-fun b!4235324 () Bool)

(assert (=> b!4235324 (= e!2629907 (and (inv!61524 (h!52222 tokens!581)) e!2629897 tp!1297016))))

(declare-fun b!4235325 () Bool)

(declare-fun res!1741982 () Bool)

(assert (=> b!4235325 (=> (not res!1741982) (not e!2629905))))

(declare-fun isEmpty!27652 (List!46925) Bool)

(assert (=> b!4235325 (= res!1741982 (not (isEmpty!27652 longerInput!51)))))

(declare-fun b!4235326 () Bool)

(declare-fun res!1741975 () Bool)

(assert (=> b!4235326 (=> (not res!1741975) (not e!2629905))))

(declare-fun isEmpty!27653 (List!46926) Bool)

(assert (=> b!4235326 (= res!1741975 (not (isEmpty!27653 addTokens!17)))))

(assert (=> b!4235327 (= e!2629906 (and tp!1297015 tp!1297027))))

(declare-fun b!4235328 () Bool)

(declare-fun tp!1297030 () Bool)

(assert (=> b!4235328 (= e!2629908 (and tp!1297030 (inv!61520 (tag!8772 (rule!11032 (h!52222 tokens!581)))) (inv!61523 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) e!2629904))))

(assert (= (and start!405242 res!1741980) b!4235313))

(assert (= (and b!4235313 res!1741977) b!4235317))

(assert (= (and b!4235317 res!1741976) b!4235325))

(assert (= (and b!4235325 res!1741982) b!4235316))

(assert (= (and b!4235316 res!1741979) b!4235310))

(assert (= (and b!4235310 res!1741978) b!4235326))

(assert (= (and b!4235326 res!1741975) b!4235312))

(assert (= (and b!4235312 res!1741981) b!4235315))

(assert (= b!4235319 b!4235320))

(assert (= b!4235314 b!4235319))

(assert (= (and start!405242 ((_ is Cons!46803) rules!2932)) b!4235314))

(assert (= b!4235309 b!4235327))

(assert (= b!4235323 b!4235309))

(assert (= b!4235318 b!4235323))

(assert (= (and start!405242 ((_ is Cons!46802) addTokens!17)) b!4235318))

(assert (= (and start!405242 ((_ is Cons!46801) shorterInput!51)) b!4235307))

(assert (= (and start!405242 ((_ is Cons!46801) suffix!1262)) b!4235322))

(assert (= b!4235328 b!4235311))

(assert (= b!4235308 b!4235328))

(assert (= b!4235324 b!4235308))

(assert (= (and start!405242 ((_ is Cons!46802) tokens!581)) b!4235324))

(assert (= (and start!405242 ((_ is Cons!46801) longerInput!51)) b!4235321))

(declare-fun m!4821089 () Bool)

(assert (=> b!4235324 m!4821089))

(declare-fun m!4821091 () Bool)

(assert (=> b!4235328 m!4821091))

(declare-fun m!4821093 () Bool)

(assert (=> b!4235328 m!4821093))

(declare-fun m!4821095 () Bool)

(assert (=> b!4235315 m!4821095))

(declare-fun m!4821097 () Bool)

(assert (=> b!4235318 m!4821097))

(declare-fun m!4821099 () Bool)

(assert (=> b!4235317 m!4821099))

(declare-fun m!4821101 () Bool)

(assert (=> b!4235323 m!4821101))

(declare-fun m!4821103 () Bool)

(assert (=> b!4235326 m!4821103))

(declare-fun m!4821105 () Bool)

(assert (=> b!4235325 m!4821105))

(declare-fun m!4821107 () Bool)

(assert (=> b!4235310 m!4821107))

(declare-fun m!4821109 () Bool)

(assert (=> b!4235319 m!4821109))

(declare-fun m!4821111 () Bool)

(assert (=> b!4235319 m!4821111))

(declare-fun m!4821113 () Bool)

(assert (=> b!4235309 m!4821113))

(declare-fun m!4821115 () Bool)

(assert (=> b!4235309 m!4821115))

(declare-fun m!4821117 () Bool)

(assert (=> b!4235313 m!4821117))

(declare-fun m!4821119 () Bool)

(assert (=> b!4235316 m!4821119))

(declare-fun m!4821121 () Bool)

(assert (=> b!4235316 m!4821121))

(declare-fun m!4821123 () Bool)

(assert (=> b!4235308 m!4821123))

(declare-fun m!4821125 () Bool)

(assert (=> b!4235312 m!4821125))

(check-sat (not b!4235309) (not b_next!125809) (not b!4235317) (not b!4235312) (not b!4235318) (not b!4235324) (not b!4235328) b_and!334447 b_and!334449 (not b!4235319) (not b!4235310) (not b!4235316) (not b!4235323) (not b!4235325) b_and!334451 tp_is_empty!22617 (not b!4235313) (not b_next!125803) (not b_next!125801) b_and!334453 (not b!4235314) (not b_next!125807) b_and!334455 b_and!334445 (not b!4235321) (not b!4235308) (not b!4235322) (not b_next!125799) (not b!4235326) (not b!4235315) (not b!4235307) (not b_next!125805))
(check-sat (not b_next!125809) b_and!334451 b_and!334453 (not b_next!125799) b_and!334447 b_and!334449 (not b_next!125805) (not b_next!125803) (not b_next!125801) (not b_next!125807) b_and!334455 b_and!334445)
(get-model)

(declare-fun b!4235350 () Bool)

(declare-fun e!2629921 () tuple2!44384)

(declare-datatypes ((tuple2!44388 0))(
  ( (tuple2!44389 (_1!25328 Token!14442) (_2!25328 List!46925)) )
))
(declare-datatypes ((Option!10046 0))(
  ( (None!10045) (Some!10045 (v!40993 tuple2!44388)) )
))
(declare-fun lt!1505717 () Option!10046)

(declare-fun lt!1505718 () tuple2!44384)

(assert (=> b!4235350 (= e!2629921 (tuple2!44385 (Cons!46802 (_1!25328 (v!40993 lt!1505717)) (_1!25326 lt!1505718)) (_2!25326 lt!1505718)))))

(assert (=> b!4235350 (= lt!1505718 (lexList!2009 thiss!21540 rules!2932 (_2!25328 (v!40993 lt!1505717))))))

(declare-fun b!4235351 () Bool)

(declare-fun e!2629923 () Bool)

(declare-fun e!2629922 () Bool)

(assert (=> b!4235351 (= e!2629923 e!2629922)))

(declare-fun res!1741991 () Bool)

(declare-fun lt!1505719 () tuple2!44384)

(assert (=> b!4235351 (= res!1741991 (< (size!34289 (_2!25326 lt!1505719)) (size!34289 longerInput!51)))))

(assert (=> b!4235351 (=> (not res!1741991) (not e!2629922))))

(declare-fun d!1246109 () Bool)

(assert (=> d!1246109 e!2629923))

(declare-fun c!719893 () Bool)

(assert (=> d!1246109 (= c!719893 (> (size!34288 (_1!25326 lt!1505719)) 0))))

(assert (=> d!1246109 (= lt!1505719 e!2629921)))

(declare-fun c!719892 () Bool)

(assert (=> d!1246109 (= c!719892 ((_ is Some!10045) lt!1505717))))

(declare-fun maxPrefix!4463 (LexerInterface!7503 List!46927 List!46925) Option!10046)

(assert (=> d!1246109 (= lt!1505717 (maxPrefix!4463 thiss!21540 rules!2932 longerInput!51))))

(assert (=> d!1246109 (= (lexList!2009 thiss!21540 rules!2932 longerInput!51) lt!1505719)))

(declare-fun b!4235352 () Bool)

(assert (=> b!4235352 (= e!2629921 (tuple2!44385 Nil!46802 longerInput!51))))

(declare-fun b!4235353 () Bool)

(assert (=> b!4235353 (= e!2629923 (= (_2!25326 lt!1505719) longerInput!51))))

(declare-fun b!4235354 () Bool)

(assert (=> b!4235354 (= e!2629922 (not (isEmpty!27653 (_1!25326 lt!1505719))))))

(assert (= (and d!1246109 c!719892) b!4235350))

(assert (= (and d!1246109 (not c!719892)) b!4235352))

(assert (= (and d!1246109 c!719893) b!4235351))

(assert (= (and d!1246109 (not c!719893)) b!4235353))

(assert (= (and b!4235351 res!1741991) b!4235354))

(declare-fun m!4821139 () Bool)

(assert (=> b!4235350 m!4821139))

(declare-fun m!4821141 () Bool)

(assert (=> b!4235351 m!4821141))

(assert (=> b!4235351 m!4821119))

(declare-fun m!4821143 () Bool)

(assert (=> d!1246109 m!4821143))

(declare-fun m!4821145 () Bool)

(assert (=> d!1246109 m!4821145))

(declare-fun m!4821147 () Bool)

(assert (=> b!4235354 m!4821147))

(assert (=> b!4235310 d!1246109))

(declare-fun d!1246117 () Bool)

(assert (=> d!1246117 (= (inv!61520 (tag!8772 (h!52223 rules!2932))) (= (mod (str.len (value!245913 (tag!8772 (h!52223 rules!2932)))) 2) 0))))

(assert (=> b!4235319 d!1246117))

(declare-fun d!1246119 () Bool)

(declare-fun res!1741997 () Bool)

(declare-fun e!2629935 () Bool)

(assert (=> d!1246119 (=> (not res!1741997) (not e!2629935))))

(declare-fun semiInverseModEq!3439 (Int Int) Bool)

(assert (=> d!1246119 (= res!1741997 (semiInverseModEq!3439 (toChars!10507 (transformation!7908 (h!52223 rules!2932))) (toValue!10648 (transformation!7908 (h!52223 rules!2932)))))))

(assert (=> d!1246119 (= (inv!61523 (transformation!7908 (h!52223 rules!2932))) e!2629935)))

(declare-fun b!4235372 () Bool)

(declare-fun equivClasses!3338 (Int Int) Bool)

(assert (=> b!4235372 (= e!2629935 (equivClasses!3338 (toChars!10507 (transformation!7908 (h!52223 rules!2932))) (toValue!10648 (transformation!7908 (h!52223 rules!2932)))))))

(assert (= (and d!1246119 res!1741997) b!4235372))

(declare-fun m!4821159 () Bool)

(assert (=> d!1246119 m!4821159))

(declare-fun m!4821161 () Bool)

(assert (=> b!4235372 m!4821161))

(assert (=> b!4235319 d!1246119))

(declare-fun d!1246125 () Bool)

(assert (=> d!1246125 (= (inv!61520 (tag!8772 (rule!11032 (h!52222 addTokens!17)))) (= (mod (str.len (value!245913 (tag!8772 (rule!11032 (h!52222 addTokens!17))))) 2) 0))))

(assert (=> b!4235309 d!1246125))

(declare-fun d!1246127 () Bool)

(declare-fun res!1741998 () Bool)

(declare-fun e!2629936 () Bool)

(assert (=> d!1246127 (=> (not res!1741998) (not e!2629936))))

(assert (=> d!1246127 (= res!1741998 (semiInverseModEq!3439 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))))))

(assert (=> d!1246127 (= (inv!61523 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) e!2629936)))

(declare-fun b!4235375 () Bool)

(assert (=> b!4235375 (= e!2629936 (equivClasses!3338 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))))))

(assert (= (and d!1246127 res!1741998) b!4235375))

(declare-fun m!4821163 () Bool)

(assert (=> d!1246127 m!4821163))

(declare-fun m!4821165 () Bool)

(assert (=> b!4235375 m!4821165))

(assert (=> b!4235309 d!1246127))

(declare-fun d!1246129 () Bool)

(declare-fun res!1742007 () Bool)

(declare-fun e!2629946 () Bool)

(assert (=> d!1246129 (=> (not res!1742007) (not e!2629946))))

(assert (=> d!1246129 (= res!1742007 (not (isEmpty!27652 (originalCharacters!8252 (h!52222 addTokens!17)))))))

(assert (=> d!1246129 (= (inv!61524 (h!52222 addTokens!17)) e!2629946)))

(declare-fun b!4235388 () Bool)

(declare-fun res!1742008 () Bool)

(assert (=> b!4235388 (=> (not res!1742008) (not e!2629946))))

(declare-fun list!16879 (BalanceConc!27832) List!46925)

(declare-fun dynLambda!20062 (Int TokenValue!8138) BalanceConc!27832)

(assert (=> b!4235388 (= res!1742008 (= (originalCharacters!8252 (h!52222 addTokens!17)) (list!16879 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17))))))))

(declare-fun b!4235389 () Bool)

(assert (=> b!4235389 (= e!2629946 (= (size!34287 (h!52222 addTokens!17)) (size!34289 (originalCharacters!8252 (h!52222 addTokens!17)))))))

(assert (= (and d!1246129 res!1742007) b!4235388))

(assert (= (and b!4235388 res!1742008) b!4235389))

(declare-fun b_lambda!124645 () Bool)

(assert (=> (not b_lambda!124645) (not b!4235388)))

(declare-fun tb!253901 () Bool)

(declare-fun t!349638 () Bool)

(assert (=> (and b!4235320 (= (toChars!10507 (transformation!7908 (h!52223 rules!2932))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) t!349638) tb!253901))

(declare-fun b!4235394 () Bool)

(declare-fun e!2629949 () Bool)

(declare-fun tp!1297036 () Bool)

(declare-fun inv!61527 (Conc!14119) Bool)

(assert (=> b!4235394 (= e!2629949 (and (inv!61527 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17))))) tp!1297036))))

(declare-fun result!309732 () Bool)

(declare-fun inv!61528 (BalanceConc!27832) Bool)

(assert (=> tb!253901 (= result!309732 (and (inv!61528 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17)))) e!2629949))))

(assert (= tb!253901 b!4235394))

(declare-fun m!4821169 () Bool)

(assert (=> b!4235394 m!4821169))

(declare-fun m!4821171 () Bool)

(assert (=> tb!253901 m!4821171))

(assert (=> b!4235388 t!349638))

(declare-fun b_and!334463 () Bool)

(assert (= b_and!334447 (and (=> t!349638 result!309732) b_and!334463)))

(declare-fun t!349640 () Bool)

(declare-fun tb!253903 () Bool)

(assert (=> (and b!4235327 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) t!349640) tb!253903))

(declare-fun result!309736 () Bool)

(assert (= result!309736 result!309732))

(assert (=> b!4235388 t!349640))

(declare-fun b_and!334465 () Bool)

(assert (= b_and!334451 (and (=> t!349640 result!309736) b_and!334465)))

(declare-fun t!349642 () Bool)

(declare-fun tb!253905 () Bool)

(assert (=> (and b!4235311 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) t!349642) tb!253905))

(declare-fun result!309738 () Bool)

(assert (= result!309738 result!309732))

(assert (=> b!4235388 t!349642))

(declare-fun b_and!334467 () Bool)

(assert (= b_and!334455 (and (=> t!349642 result!309738) b_and!334467)))

(declare-fun m!4821173 () Bool)

(assert (=> d!1246129 m!4821173))

(declare-fun m!4821175 () Bool)

(assert (=> b!4235388 m!4821175))

(assert (=> b!4235388 m!4821175))

(declare-fun m!4821177 () Bool)

(assert (=> b!4235388 m!4821177))

(declare-fun m!4821179 () Bool)

(assert (=> b!4235389 m!4821179))

(assert (=> b!4235318 d!1246129))

(declare-fun b!4235405 () Bool)

(declare-fun res!1742011 () Bool)

(declare-fun e!2629958 () Bool)

(assert (=> b!4235405 (=> res!1742011 e!2629958)))

(assert (=> b!4235405 (= res!1742011 (not ((_ is IntegerValue!24416) (value!245914 (h!52222 tokens!581)))))))

(declare-fun e!2629957 () Bool)

(assert (=> b!4235405 (= e!2629957 e!2629958)))

(declare-fun b!4235406 () Bool)

(declare-fun inv!17 (TokenValue!8138) Bool)

(assert (=> b!4235406 (= e!2629957 (inv!17 (value!245914 (h!52222 tokens!581))))))

(declare-fun d!1246133 () Bool)

(declare-fun c!719908 () Bool)

(assert (=> d!1246133 (= c!719908 ((_ is IntegerValue!24414) (value!245914 (h!52222 tokens!581))))))

(declare-fun e!2629956 () Bool)

(assert (=> d!1246133 (= (inv!21 (value!245914 (h!52222 tokens!581))) e!2629956)))

(declare-fun b!4235407 () Bool)

(declare-fun inv!16 (TokenValue!8138) Bool)

(assert (=> b!4235407 (= e!2629956 (inv!16 (value!245914 (h!52222 tokens!581))))))

(declare-fun b!4235408 () Bool)

(declare-fun inv!15 (TokenValue!8138) Bool)

(assert (=> b!4235408 (= e!2629958 (inv!15 (value!245914 (h!52222 tokens!581))))))

(declare-fun b!4235409 () Bool)

(assert (=> b!4235409 (= e!2629956 e!2629957)))

(declare-fun c!719907 () Bool)

(assert (=> b!4235409 (= c!719907 ((_ is IntegerValue!24415) (value!245914 (h!52222 tokens!581))))))

(assert (= (and d!1246133 c!719908) b!4235407))

(assert (= (and d!1246133 (not c!719908)) b!4235409))

(assert (= (and b!4235409 c!719907) b!4235406))

(assert (= (and b!4235409 (not c!719907)) b!4235405))

(assert (= (and b!4235405 (not res!1742011)) b!4235408))

(declare-fun m!4821181 () Bool)

(assert (=> b!4235406 m!4821181))

(declare-fun m!4821183 () Bool)

(assert (=> b!4235407 m!4821183))

(declare-fun m!4821185 () Bool)

(assert (=> b!4235408 m!4821185))

(assert (=> b!4235308 d!1246133))

(declare-fun d!1246135 () Bool)

(declare-fun res!1742014 () Bool)

(declare-fun e!2629961 () Bool)

(assert (=> d!1246135 (=> (not res!1742014) (not e!2629961))))

(declare-fun rulesValid!3062 (LexerInterface!7503 List!46927) Bool)

(assert (=> d!1246135 (= res!1742014 (rulesValid!3062 thiss!21540 rules!2932))))

(assert (=> d!1246135 (= (rulesInvariant!6614 thiss!21540 rules!2932) e!2629961)))

(declare-fun b!4235412 () Bool)

(declare-datatypes ((List!46929 0))(
  ( (Nil!46805) (Cons!46805 (h!52225 String!54620) (t!349680 List!46929)) )
))
(declare-fun noDuplicateTag!3223 (LexerInterface!7503 List!46927 List!46929) Bool)

(assert (=> b!4235412 (= e!2629961 (noDuplicateTag!3223 thiss!21540 rules!2932 Nil!46805))))

(assert (= (and d!1246135 res!1742014) b!4235412))

(declare-fun m!4821187 () Bool)

(assert (=> d!1246135 m!4821187))

(declare-fun m!4821189 () Bool)

(assert (=> b!4235412 m!4821189))

(assert (=> b!4235317 d!1246135))

(declare-fun d!1246137 () Bool)

(assert (=> d!1246137 (= (inv!61520 (tag!8772 (rule!11032 (h!52222 tokens!581)))) (= (mod (str.len (value!245913 (tag!8772 (rule!11032 (h!52222 tokens!581))))) 2) 0))))

(assert (=> b!4235328 d!1246137))

(declare-fun d!1246139 () Bool)

(declare-fun res!1742015 () Bool)

(declare-fun e!2629962 () Bool)

(assert (=> d!1246139 (=> (not res!1742015) (not e!2629962))))

(assert (=> d!1246139 (= res!1742015 (semiInverseModEq!3439 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 tokens!581))))))))

(assert (=> d!1246139 (= (inv!61523 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) e!2629962)))

(declare-fun b!4235413 () Bool)

(assert (=> b!4235413 (= e!2629962 (equivClasses!3338 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 tokens!581))))))))

(assert (= (and d!1246139 res!1742015) b!4235413))

(declare-fun m!4821191 () Bool)

(assert (=> d!1246139 m!4821191))

(declare-fun m!4821193 () Bool)

(assert (=> b!4235413 m!4821193))

(assert (=> b!4235328 d!1246139))

(declare-fun d!1246141 () Bool)

(assert (=> d!1246141 true))

(declare-fun lt!1505741 () Bool)

(declare-fun lambda!130025 () Int)

(declare-fun forall!8530 (List!46927 Int) Bool)

(assert (=> d!1246141 (= lt!1505741 (forall!8530 rules!2932 lambda!130025))))

(declare-fun e!2630044 () Bool)

(assert (=> d!1246141 (= lt!1505741 e!2630044)))

(declare-fun res!1742036 () Bool)

(assert (=> d!1246141 (=> res!1742036 e!2630044)))

(assert (=> d!1246141 (= res!1742036 (not ((_ is Cons!46803) rules!2932)))))

(assert (=> d!1246141 (= (rulesValidInductive!2962 thiss!21540 rules!2932) lt!1505741)))

(declare-fun b!4235521 () Bool)

(declare-fun e!2630043 () Bool)

(assert (=> b!4235521 (= e!2630044 e!2630043)))

(declare-fun res!1742037 () Bool)

(assert (=> b!4235521 (=> (not res!1742037) (not e!2630043))))

(declare-fun ruleValid!3596 (LexerInterface!7503 Rule!15616) Bool)

(assert (=> b!4235521 (= res!1742037 (ruleValid!3596 thiss!21540 (h!52223 rules!2932)))))

(declare-fun b!4235522 () Bool)

(assert (=> b!4235522 (= e!2630043 (rulesValidInductive!2962 thiss!21540 (t!349630 rules!2932)))))

(assert (= (and d!1246141 (not res!1742036)) b!4235521))

(assert (= (and b!4235521 res!1742037) b!4235522))

(declare-fun m!4821265 () Bool)

(assert (=> d!1246141 m!4821265))

(declare-fun m!4821267 () Bool)

(assert (=> b!4235521 m!4821267))

(declare-fun m!4821269 () Bool)

(assert (=> b!4235522 m!4821269))

(assert (=> b!4235315 d!1246141))

(declare-fun d!1246169 () Bool)

(assert (=> d!1246169 (= (isEmpty!27653 addTokens!17) ((_ is Nil!46802) addTokens!17))))

(assert (=> b!4235326 d!1246169))

(declare-fun d!1246171 () Bool)

(declare-fun lt!1505744 () Int)

(assert (=> d!1246171 (>= lt!1505744 0)))

(declare-fun e!2630047 () Int)

(assert (=> d!1246171 (= lt!1505744 e!2630047)))

(declare-fun c!719923 () Bool)

(assert (=> d!1246171 (= c!719923 ((_ is Nil!46801) longerInput!51))))

(assert (=> d!1246171 (= (size!34289 longerInput!51) lt!1505744)))

(declare-fun b!4235529 () Bool)

(assert (=> b!4235529 (= e!2630047 0)))

(declare-fun b!4235530 () Bool)

(assert (=> b!4235530 (= e!2630047 (+ 1 (size!34289 (t!349628 longerInput!51))))))

(assert (= (and d!1246171 c!719923) b!4235529))

(assert (= (and d!1246171 (not c!719923)) b!4235530))

(declare-fun m!4821271 () Bool)

(assert (=> b!4235530 m!4821271))

(assert (=> b!4235316 d!1246171))

(declare-fun d!1246173 () Bool)

(declare-fun lt!1505745 () Int)

(assert (=> d!1246173 (>= lt!1505745 0)))

(declare-fun e!2630048 () Int)

(assert (=> d!1246173 (= lt!1505745 e!2630048)))

(declare-fun c!719924 () Bool)

(assert (=> d!1246173 (= c!719924 ((_ is Nil!46801) shorterInput!51))))

(assert (=> d!1246173 (= (size!34289 shorterInput!51) lt!1505745)))

(declare-fun b!4235531 () Bool)

(assert (=> b!4235531 (= e!2630048 0)))

(declare-fun b!4235532 () Bool)

(assert (=> b!4235532 (= e!2630048 (+ 1 (size!34289 (t!349628 shorterInput!51))))))

(assert (= (and d!1246173 c!719924) b!4235531))

(assert (= (and d!1246173 (not c!719924)) b!4235532))

(declare-fun m!4821273 () Bool)

(assert (=> b!4235532 m!4821273))

(assert (=> b!4235316 d!1246173))

(declare-fun d!1246175 () Bool)

(assert (=> d!1246175 (= (isEmpty!27652 longerInput!51) ((_ is Nil!46801) longerInput!51))))

(assert (=> b!4235325 d!1246175))

(declare-fun b!4235533 () Bool)

(declare-fun res!1742038 () Bool)

(declare-fun e!2630051 () Bool)

(assert (=> b!4235533 (=> res!1742038 e!2630051)))

(assert (=> b!4235533 (= res!1742038 (not ((_ is IntegerValue!24416) (value!245914 (h!52222 addTokens!17)))))))

(declare-fun e!2630050 () Bool)

(assert (=> b!4235533 (= e!2630050 e!2630051)))

(declare-fun b!4235534 () Bool)

(assert (=> b!4235534 (= e!2630050 (inv!17 (value!245914 (h!52222 addTokens!17))))))

(declare-fun d!1246177 () Bool)

(declare-fun c!719926 () Bool)

(assert (=> d!1246177 (= c!719926 ((_ is IntegerValue!24414) (value!245914 (h!52222 addTokens!17))))))

(declare-fun e!2630049 () Bool)

(assert (=> d!1246177 (= (inv!21 (value!245914 (h!52222 addTokens!17))) e!2630049)))

(declare-fun b!4235535 () Bool)

(assert (=> b!4235535 (= e!2630049 (inv!16 (value!245914 (h!52222 addTokens!17))))))

(declare-fun b!4235536 () Bool)

(assert (=> b!4235536 (= e!2630051 (inv!15 (value!245914 (h!52222 addTokens!17))))))

(declare-fun b!4235537 () Bool)

(assert (=> b!4235537 (= e!2630049 e!2630050)))

(declare-fun c!719925 () Bool)

(assert (=> b!4235537 (= c!719925 ((_ is IntegerValue!24415) (value!245914 (h!52222 addTokens!17))))))

(assert (= (and d!1246177 c!719926) b!4235535))

(assert (= (and d!1246177 (not c!719926)) b!4235537))

(assert (= (and b!4235537 c!719925) b!4235534))

(assert (= (and b!4235537 (not c!719925)) b!4235533))

(assert (= (and b!4235533 (not res!1742038)) b!4235536))

(declare-fun m!4821275 () Bool)

(assert (=> b!4235534 m!4821275))

(declare-fun m!4821277 () Bool)

(assert (=> b!4235535 m!4821277))

(declare-fun m!4821279 () Bool)

(assert (=> b!4235536 m!4821279))

(assert (=> b!4235323 d!1246177))

(declare-fun d!1246179 () Bool)

(assert (=> d!1246179 (= (isEmpty!27651 rules!2932) ((_ is Nil!46803) rules!2932))))

(assert (=> b!4235313 d!1246179))

(declare-fun d!1246181 () Bool)

(declare-fun res!1742039 () Bool)

(declare-fun e!2630052 () Bool)

(assert (=> d!1246181 (=> (not res!1742039) (not e!2630052))))

(assert (=> d!1246181 (= res!1742039 (not (isEmpty!27652 (originalCharacters!8252 (h!52222 tokens!581)))))))

(assert (=> d!1246181 (= (inv!61524 (h!52222 tokens!581)) e!2630052)))

(declare-fun b!4235538 () Bool)

(declare-fun res!1742040 () Bool)

(assert (=> b!4235538 (=> (not res!1742040) (not e!2630052))))

(assert (=> b!4235538 (= res!1742040 (= (originalCharacters!8252 (h!52222 tokens!581)) (list!16879 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581))))))))

(declare-fun b!4235539 () Bool)

(assert (=> b!4235539 (= e!2630052 (= (size!34287 (h!52222 tokens!581)) (size!34289 (originalCharacters!8252 (h!52222 tokens!581)))))))

(assert (= (and d!1246181 res!1742039) b!4235538))

(assert (= (and b!4235538 res!1742040) b!4235539))

(declare-fun b_lambda!124653 () Bool)

(assert (=> (not b_lambda!124653) (not b!4235538)))

(declare-fun t!349663 () Bool)

(declare-fun tb!253925 () Bool)

(assert (=> (and b!4235320 (= (toChars!10507 (transformation!7908 (h!52223 rules!2932))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) t!349663) tb!253925))

(declare-fun b!4235540 () Bool)

(declare-fun e!2630053 () Bool)

(declare-fun tp!1297102 () Bool)

(assert (=> b!4235540 (= e!2630053 (and (inv!61527 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581))))) tp!1297102))))

(declare-fun result!309766 () Bool)

(assert (=> tb!253925 (= result!309766 (and (inv!61528 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581)))) e!2630053))))

(assert (= tb!253925 b!4235540))

(declare-fun m!4821281 () Bool)

(assert (=> b!4235540 m!4821281))

(declare-fun m!4821283 () Bool)

(assert (=> tb!253925 m!4821283))

(assert (=> b!4235538 t!349663))

(declare-fun b_and!334487 () Bool)

(assert (= b_and!334463 (and (=> t!349663 result!309766) b_and!334487)))

(declare-fun tb!253927 () Bool)

(declare-fun t!349665 () Bool)

(assert (=> (and b!4235327 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) t!349665) tb!253927))

(declare-fun result!309768 () Bool)

(assert (= result!309768 result!309766))

(assert (=> b!4235538 t!349665))

(declare-fun b_and!334489 () Bool)

(assert (= b_and!334465 (and (=> t!349665 result!309768) b_and!334489)))

(declare-fun t!349667 () Bool)

(declare-fun tb!253929 () Bool)

(assert (=> (and b!4235311 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) t!349667) tb!253929))

(declare-fun result!309770 () Bool)

(assert (= result!309770 result!309766))

(assert (=> b!4235538 t!349667))

(declare-fun b_and!334491 () Bool)

(assert (= b_and!334467 (and (=> t!349667 result!309770) b_and!334491)))

(declare-fun m!4821285 () Bool)

(assert (=> d!1246181 m!4821285))

(declare-fun m!4821287 () Bool)

(assert (=> b!4235538 m!4821287))

(assert (=> b!4235538 m!4821287))

(declare-fun m!4821289 () Bool)

(assert (=> b!4235538 m!4821289))

(declare-fun m!4821291 () Bool)

(assert (=> b!4235539 m!4821291))

(assert (=> b!4235324 d!1246181))

(declare-fun d!1246183 () Bool)

(declare-fun lt!1505748 () Int)

(assert (=> d!1246183 (>= lt!1505748 0)))

(declare-fun e!2630056 () Int)

(assert (=> d!1246183 (= lt!1505748 e!2630056)))

(declare-fun c!719929 () Bool)

(assert (=> d!1246183 (= c!719929 ((_ is Nil!46802) addTokens!17))))

(assert (=> d!1246183 (= (size!34288 addTokens!17) lt!1505748)))

(declare-fun b!4235545 () Bool)

(assert (=> b!4235545 (= e!2630056 0)))

(declare-fun b!4235546 () Bool)

(assert (=> b!4235546 (= e!2630056 (+ 1 (size!34288 (t!349629 addTokens!17))))))

(assert (= (and d!1246183 c!719929) b!4235545))

(assert (= (and d!1246183 (not c!719929)) b!4235546))

(declare-fun m!4821293 () Bool)

(assert (=> b!4235546 m!4821293))

(assert (=> b!4235312 d!1246183))

(declare-fun b!4235551 () Bool)

(declare-fun e!2630059 () Bool)

(declare-fun tp!1297105 () Bool)

(assert (=> b!4235551 (= e!2630059 (and tp_is_empty!22617 tp!1297105))))

(assert (=> b!4235321 (= tp!1297020 e!2630059)))

(assert (= (and b!4235321 ((_ is Cons!46801) (t!349628 longerInput!51))) b!4235551))

(declare-fun b!4235565 () Bool)

(declare-fun e!2630062 () Bool)

(declare-fun tp!1297120 () Bool)

(declare-fun tp!1297117 () Bool)

(assert (=> b!4235565 (= e!2630062 (and tp!1297120 tp!1297117))))

(declare-fun b!4235562 () Bool)

(assert (=> b!4235562 (= e!2630062 tp_is_empty!22617)))

(assert (=> b!4235319 (= tp!1297021 e!2630062)))

(declare-fun b!4235563 () Bool)

(declare-fun tp!1297119 () Bool)

(declare-fun tp!1297116 () Bool)

(assert (=> b!4235563 (= e!2630062 (and tp!1297119 tp!1297116))))

(declare-fun b!4235564 () Bool)

(declare-fun tp!1297118 () Bool)

(assert (=> b!4235564 (= e!2630062 tp!1297118)))

(assert (= (and b!4235319 ((_ is ElementMatch!12813) (regex!7908 (h!52223 rules!2932)))) b!4235562))

(assert (= (and b!4235319 ((_ is Concat!20952) (regex!7908 (h!52223 rules!2932)))) b!4235563))

(assert (= (and b!4235319 ((_ is Star!12813) (regex!7908 (h!52223 rules!2932)))) b!4235564))

(assert (= (and b!4235319 ((_ is Union!12813) (regex!7908 (h!52223 rules!2932)))) b!4235565))

(declare-fun b!4235569 () Bool)

(declare-fun e!2630063 () Bool)

(declare-fun tp!1297125 () Bool)

(declare-fun tp!1297122 () Bool)

(assert (=> b!4235569 (= e!2630063 (and tp!1297125 tp!1297122))))

(declare-fun b!4235566 () Bool)

(assert (=> b!4235566 (= e!2630063 tp_is_empty!22617)))

(assert (=> b!4235309 (= tp!1297023 e!2630063)))

(declare-fun b!4235567 () Bool)

(declare-fun tp!1297124 () Bool)

(declare-fun tp!1297121 () Bool)

(assert (=> b!4235567 (= e!2630063 (and tp!1297124 tp!1297121))))

(declare-fun b!4235568 () Bool)

(declare-fun tp!1297123 () Bool)

(assert (=> b!4235568 (= e!2630063 tp!1297123)))

(assert (= (and b!4235309 ((_ is ElementMatch!12813) (regex!7908 (rule!11032 (h!52222 addTokens!17))))) b!4235566))

(assert (= (and b!4235309 ((_ is Concat!20952) (regex!7908 (rule!11032 (h!52222 addTokens!17))))) b!4235567))

(assert (= (and b!4235309 ((_ is Star!12813) (regex!7908 (rule!11032 (h!52222 addTokens!17))))) b!4235568))

(assert (= (and b!4235309 ((_ is Union!12813) (regex!7908 (rule!11032 (h!52222 addTokens!17))))) b!4235569))

(declare-fun b!4235570 () Bool)

(declare-fun e!2630064 () Bool)

(declare-fun tp!1297126 () Bool)

(assert (=> b!4235570 (= e!2630064 (and tp_is_empty!22617 tp!1297126))))

(assert (=> b!4235307 (= tp!1297029 e!2630064)))

(assert (= (and b!4235307 ((_ is Cons!46801) (t!349628 shorterInput!51))) b!4235570))

(declare-fun b!4235584 () Bool)

(declare-fun b_free!125119 () Bool)

(declare-fun b_next!125823 () Bool)

(assert (=> b!4235584 (= b_free!125119 (not b_next!125823))))

(declare-fun tp!1297141 () Bool)

(declare-fun b_and!334493 () Bool)

(assert (=> b!4235584 (= tp!1297141 b_and!334493)))

(declare-fun b_free!125121 () Bool)

(declare-fun b_next!125825 () Bool)

(assert (=> b!4235584 (= b_free!125121 (not b_next!125825))))

(declare-fun t!349669 () Bool)

(declare-fun tb!253931 () Bool)

(assert (=> (and b!4235584 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) t!349669) tb!253931))

(declare-fun result!309778 () Bool)

(assert (= result!309778 result!309732))

(assert (=> b!4235388 t!349669))

(declare-fun tb!253933 () Bool)

(declare-fun t!349671 () Bool)

(assert (=> (and b!4235584 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) t!349671) tb!253933))

(declare-fun result!309780 () Bool)

(assert (= result!309780 result!309766))

(assert (=> b!4235538 t!349671))

(declare-fun tp!1297140 () Bool)

(declare-fun b_and!334495 () Bool)

(assert (=> b!4235584 (= tp!1297140 (and (=> t!349669 result!309778) (=> t!349671 result!309780) b_and!334495))))

(declare-fun b!4235583 () Bool)

(declare-fun tp!1297138 () Bool)

(declare-fun e!2630077 () Bool)

(declare-fun e!2630081 () Bool)

(assert (=> b!4235583 (= e!2630081 (and tp!1297138 (inv!61520 (tag!8772 (rule!11032 (h!52222 (t!349629 addTokens!17))))) (inv!61523 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))) e!2630077))))

(declare-fun e!2630082 () Bool)

(declare-fun tp!1297137 () Bool)

(declare-fun e!2630079 () Bool)

(declare-fun b!4235581 () Bool)

(assert (=> b!4235581 (= e!2630079 (and (inv!61524 (h!52222 (t!349629 addTokens!17))) e!2630082 tp!1297137))))

(declare-fun tp!1297139 () Bool)

(declare-fun b!4235582 () Bool)

(assert (=> b!4235582 (= e!2630082 (and (inv!21 (value!245914 (h!52222 (t!349629 addTokens!17)))) e!2630081 tp!1297139))))

(assert (=> b!4235318 (= tp!1297017 e!2630079)))

(assert (=> b!4235584 (= e!2630077 (and tp!1297141 tp!1297140))))

(assert (= b!4235583 b!4235584))

(assert (= b!4235582 b!4235583))

(assert (= b!4235581 b!4235582))

(assert (= (and b!4235318 ((_ is Cons!46802) (t!349629 addTokens!17))) b!4235581))

(declare-fun m!4821295 () Bool)

(assert (=> b!4235583 m!4821295))

(declare-fun m!4821297 () Bool)

(assert (=> b!4235583 m!4821297))

(declare-fun m!4821299 () Bool)

(assert (=> b!4235581 m!4821299))

(declare-fun m!4821301 () Bool)

(assert (=> b!4235582 m!4821301))

(declare-fun b!4235585 () Bool)

(declare-fun e!2630083 () Bool)

(declare-fun tp!1297142 () Bool)

(assert (=> b!4235585 (= e!2630083 (and tp_is_empty!22617 tp!1297142))))

(assert (=> b!4235308 (= tp!1297025 e!2630083)))

(assert (= (and b!4235308 ((_ is Cons!46801) (originalCharacters!8252 (h!52222 tokens!581)))) b!4235585))

(declare-fun b!4235589 () Bool)

(declare-fun e!2630084 () Bool)

(declare-fun tp!1297147 () Bool)

(declare-fun tp!1297144 () Bool)

(assert (=> b!4235589 (= e!2630084 (and tp!1297147 tp!1297144))))

(declare-fun b!4235586 () Bool)

(assert (=> b!4235586 (= e!2630084 tp_is_empty!22617)))

(assert (=> b!4235328 (= tp!1297030 e!2630084)))

(declare-fun b!4235587 () Bool)

(declare-fun tp!1297146 () Bool)

(declare-fun tp!1297143 () Bool)

(assert (=> b!4235587 (= e!2630084 (and tp!1297146 tp!1297143))))

(declare-fun b!4235588 () Bool)

(declare-fun tp!1297145 () Bool)

(assert (=> b!4235588 (= e!2630084 tp!1297145)))

(assert (= (and b!4235328 ((_ is ElementMatch!12813) (regex!7908 (rule!11032 (h!52222 tokens!581))))) b!4235586))

(assert (= (and b!4235328 ((_ is Concat!20952) (regex!7908 (rule!11032 (h!52222 tokens!581))))) b!4235587))

(assert (= (and b!4235328 ((_ is Star!12813) (regex!7908 (rule!11032 (h!52222 tokens!581))))) b!4235588))

(assert (= (and b!4235328 ((_ is Union!12813) (regex!7908 (rule!11032 (h!52222 tokens!581))))) b!4235589))

(declare-fun b!4235600 () Bool)

(declare-fun b_free!125123 () Bool)

(declare-fun b_next!125827 () Bool)

(assert (=> b!4235600 (= b_free!125123 (not b_next!125827))))

(declare-fun tp!1297156 () Bool)

(declare-fun b_and!334497 () Bool)

(assert (=> b!4235600 (= tp!1297156 b_and!334497)))

(declare-fun b_free!125125 () Bool)

(declare-fun b_next!125829 () Bool)

(assert (=> b!4235600 (= b_free!125125 (not b_next!125829))))

(declare-fun t!349673 () Bool)

(declare-fun tb!253935 () Bool)

(assert (=> (and b!4235600 (= (toChars!10507 (transformation!7908 (h!52223 (t!349630 rules!2932)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) t!349673) tb!253935))

(declare-fun result!309784 () Bool)

(assert (= result!309784 result!309732))

(assert (=> b!4235388 t!349673))

(declare-fun t!349675 () Bool)

(declare-fun tb!253937 () Bool)

(assert (=> (and b!4235600 (= (toChars!10507 (transformation!7908 (h!52223 (t!349630 rules!2932)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) t!349675) tb!253937))

(declare-fun result!309786 () Bool)

(assert (= result!309786 result!309766))

(assert (=> b!4235538 t!349675))

(declare-fun tp!1297159 () Bool)

(declare-fun b_and!334499 () Bool)

(assert (=> b!4235600 (= tp!1297159 (and (=> t!349673 result!309784) (=> t!349675 result!309786) b_and!334499))))

(declare-fun e!2630096 () Bool)

(assert (=> b!4235600 (= e!2630096 (and tp!1297156 tp!1297159))))

(declare-fun tp!1297158 () Bool)

(declare-fun e!2630095 () Bool)

(declare-fun b!4235599 () Bool)

(assert (=> b!4235599 (= e!2630095 (and tp!1297158 (inv!61520 (tag!8772 (h!52223 (t!349630 rules!2932)))) (inv!61523 (transformation!7908 (h!52223 (t!349630 rules!2932)))) e!2630096))))

(declare-fun b!4235598 () Bool)

(declare-fun e!2630093 () Bool)

(declare-fun tp!1297157 () Bool)

(assert (=> b!4235598 (= e!2630093 (and e!2630095 tp!1297157))))

(assert (=> b!4235314 (= tp!1297028 e!2630093)))

(assert (= b!4235599 b!4235600))

(assert (= b!4235598 b!4235599))

(assert (= (and b!4235314 ((_ is Cons!46803) (t!349630 rules!2932))) b!4235598))

(declare-fun m!4821303 () Bool)

(assert (=> b!4235599 m!4821303))

(declare-fun m!4821305 () Bool)

(assert (=> b!4235599 m!4821305))

(declare-fun b!4235601 () Bool)

(declare-fun e!2630097 () Bool)

(declare-fun tp!1297160 () Bool)

(assert (=> b!4235601 (= e!2630097 (and tp_is_empty!22617 tp!1297160))))

(assert (=> b!4235323 (= tp!1297024 e!2630097)))

(assert (= (and b!4235323 ((_ is Cons!46801) (originalCharacters!8252 (h!52222 addTokens!17)))) b!4235601))

(declare-fun b!4235605 () Bool)

(declare-fun b_free!125127 () Bool)

(declare-fun b_next!125831 () Bool)

(assert (=> b!4235605 (= b_free!125127 (not b_next!125831))))

(declare-fun tp!1297165 () Bool)

(declare-fun b_and!334501 () Bool)

(assert (=> b!4235605 (= tp!1297165 b_and!334501)))

(declare-fun b_free!125129 () Bool)

(declare-fun b_next!125833 () Bool)

(assert (=> b!4235605 (= b_free!125129 (not b_next!125833))))

(declare-fun t!349677 () Bool)

(declare-fun tb!253939 () Bool)

(assert (=> (and b!4235605 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) t!349677) tb!253939))

(declare-fun result!309788 () Bool)

(assert (= result!309788 result!309732))

(assert (=> b!4235388 t!349677))

(declare-fun t!349679 () Bool)

(declare-fun tb!253941 () Bool)

(assert (=> (and b!4235605 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) t!349679) tb!253941))

(declare-fun result!309790 () Bool)

(assert (= result!309790 result!309766))

(assert (=> b!4235538 t!349679))

(declare-fun b_and!334503 () Bool)

(declare-fun tp!1297164 () Bool)

(assert (=> b!4235605 (= tp!1297164 (and (=> t!349677 result!309788) (=> t!349679 result!309790) b_and!334503))))

(declare-fun e!2630098 () Bool)

(declare-fun tp!1297162 () Bool)

(declare-fun e!2630102 () Bool)

(declare-fun b!4235604 () Bool)

(assert (=> b!4235604 (= e!2630102 (and tp!1297162 (inv!61520 (tag!8772 (rule!11032 (h!52222 (t!349629 tokens!581))))) (inv!61523 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))) e!2630098))))

(declare-fun b!4235602 () Bool)

(declare-fun e!2630103 () Bool)

(declare-fun tp!1297161 () Bool)

(declare-fun e!2630100 () Bool)

(assert (=> b!4235602 (= e!2630100 (and (inv!61524 (h!52222 (t!349629 tokens!581))) e!2630103 tp!1297161))))

(declare-fun tp!1297163 () Bool)

(declare-fun b!4235603 () Bool)

(assert (=> b!4235603 (= e!2630103 (and (inv!21 (value!245914 (h!52222 (t!349629 tokens!581)))) e!2630102 tp!1297163))))

(assert (=> b!4235324 (= tp!1297016 e!2630100)))

(assert (=> b!4235605 (= e!2630098 (and tp!1297165 tp!1297164))))

(assert (= b!4235604 b!4235605))

(assert (= b!4235603 b!4235604))

(assert (= b!4235602 b!4235603))

(assert (= (and b!4235324 ((_ is Cons!46802) (t!349629 tokens!581))) b!4235602))

(declare-fun m!4821307 () Bool)

(assert (=> b!4235604 m!4821307))

(declare-fun m!4821309 () Bool)

(assert (=> b!4235604 m!4821309))

(declare-fun m!4821311 () Bool)

(assert (=> b!4235602 m!4821311))

(declare-fun m!4821313 () Bool)

(assert (=> b!4235603 m!4821313))

(declare-fun b!4235606 () Bool)

(declare-fun e!2630104 () Bool)

(declare-fun tp!1297166 () Bool)

(assert (=> b!4235606 (= e!2630104 (and tp_is_empty!22617 tp!1297166))))

(assert (=> b!4235322 (= tp!1297019 e!2630104)))

(assert (= (and b!4235322 ((_ is Cons!46801) (t!349628 suffix!1262))) b!4235606))

(declare-fun b_lambda!124655 () Bool)

(assert (= b_lambda!124653 (or (and b!4235605 b_free!125129 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))))) (and b!4235311 b_free!125105) (and b!4235600 b_free!125125 (= (toChars!10507 (transformation!7908 (h!52223 (t!349630 rules!2932)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))))) (and b!4235584 b_free!125121 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))))) (and b!4235327 b_free!125101 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))))) (and b!4235320 b_free!125097 (= (toChars!10507 (transformation!7908 (h!52223 rules!2932))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))))) b_lambda!124655)))

(declare-fun b_lambda!124657 () Bool)

(assert (= b_lambda!124645 (or (and b!4235311 b_free!125105 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))))) (and b!4235605 b_free!125129 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))))) (and b!4235320 b_free!125097 (= (toChars!10507 (transformation!7908 (h!52223 rules!2932))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))))) (and b!4235600 b_free!125125 (= (toChars!10507 (transformation!7908 (h!52223 (t!349630 rules!2932)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))))) (and b!4235584 b_free!125121 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))))) (and b!4235327 b_free!125101) b_lambda!124657)))

(check-sat (not tb!253925) (not d!1246119) (not b!4235602) b_and!334495 (not d!1246127) (not b_next!125829) (not b!4235568) (not b!4235581) (not d!1246141) (not b!4235589) (not b!4235388) (not b!4235551) (not b_next!125833) (not b_next!125823) (not b_lambda!124655) (not b!4235408) (not b_next!125809) (not b!4235567) b_and!334503 (not b!4235532) (not b!4235582) (not b!4235539) (not b!4235389) (not b!4235540) (not b!4235372) (not tb!253901) (not b!4235603) (not b!4235583) (not b!4235407) (not b!4235406) (not b!4235412) (not b!4235394) b_and!334487 (not d!1246129) (not d!1246139) tp_is_empty!22617 (not b!4235585) (not b!4235522) b_and!334491 (not b_next!125803) (not b_next!125801) (not b!4235598) b_and!334489 (not b!4235534) b_and!334493 (not b!4235564) (not d!1246181) (not b!4235536) b_and!334453 (not d!1246109) b_and!334499 (not b!4235570) (not b_next!125827) (not b!4235375) (not b!4235521) (not b!4235604) (not d!1246135) (not b!4235563) (not b!4235606) (not b_next!125807) (not b!4235599) b_and!334445 (not b_next!125831) (not b!4235601) (not b!4235569) (not b_next!125799) (not b!4235351) (not b!4235588) (not b!4235535) (not b!4235587) (not b!4235538) b_and!334497 b_and!334449 (not b!4235546) (not b!4235354) (not b_next!125825) b_and!334501 (not b!4235350) (not b_lambda!124657) (not b!4235565) (not b!4235530) (not b!4235413) (not b_next!125805))
(check-sat (not b_next!125829) b_and!334487 b_and!334491 (not b_next!125831) (not b_next!125799) b_and!334495 (not b_next!125825) b_and!334501 (not b_next!125805) (not b_next!125833) (not b_next!125823) (not b_next!125809) b_and!334503 (not b_next!125803) (not b_next!125801) b_and!334489 b_and!334493 (not b_next!125827) b_and!334453 b_and!334499 (not b_next!125807) b_and!334445 b_and!334497 b_and!334449)
(get-model)

(declare-fun d!1246197 () Bool)

(declare-fun lt!1505750 () Int)

(assert (=> d!1246197 (>= lt!1505750 0)))

(declare-fun e!2630116 () Int)

(assert (=> d!1246197 (= lt!1505750 e!2630116)))

(declare-fun c!719936 () Bool)

(assert (=> d!1246197 (= c!719936 ((_ is Nil!46801) (_2!25326 lt!1505719)))))

(assert (=> d!1246197 (= (size!34289 (_2!25326 lt!1505719)) lt!1505750)))

(declare-fun b!4235624 () Bool)

(assert (=> b!4235624 (= e!2630116 0)))

(declare-fun b!4235625 () Bool)

(assert (=> b!4235625 (= e!2630116 (+ 1 (size!34289 (t!349628 (_2!25326 lt!1505719)))))))

(assert (= (and d!1246197 c!719936) b!4235624))

(assert (= (and d!1246197 (not c!719936)) b!4235625))

(declare-fun m!4821331 () Bool)

(assert (=> b!4235625 m!4821331))

(assert (=> b!4235351 d!1246197))

(assert (=> b!4235351 d!1246171))

(declare-fun b!4235626 () Bool)

(declare-fun res!1742053 () Bool)

(declare-fun e!2630119 () Bool)

(assert (=> b!4235626 (=> res!1742053 e!2630119)))

(assert (=> b!4235626 (= res!1742053 (not ((_ is IntegerValue!24416) (value!245914 (h!52222 (t!349629 addTokens!17))))))))

(declare-fun e!2630118 () Bool)

(assert (=> b!4235626 (= e!2630118 e!2630119)))

(declare-fun b!4235627 () Bool)

(assert (=> b!4235627 (= e!2630118 (inv!17 (value!245914 (h!52222 (t!349629 addTokens!17)))))))

(declare-fun d!1246199 () Bool)

(declare-fun c!719938 () Bool)

(assert (=> d!1246199 (= c!719938 ((_ is IntegerValue!24414) (value!245914 (h!52222 (t!349629 addTokens!17)))))))

(declare-fun e!2630117 () Bool)

(assert (=> d!1246199 (= (inv!21 (value!245914 (h!52222 (t!349629 addTokens!17)))) e!2630117)))

(declare-fun b!4235628 () Bool)

(assert (=> b!4235628 (= e!2630117 (inv!16 (value!245914 (h!52222 (t!349629 addTokens!17)))))))

(declare-fun b!4235629 () Bool)

(assert (=> b!4235629 (= e!2630119 (inv!15 (value!245914 (h!52222 (t!349629 addTokens!17)))))))

(declare-fun b!4235630 () Bool)

(assert (=> b!4235630 (= e!2630117 e!2630118)))

(declare-fun c!719937 () Bool)

(assert (=> b!4235630 (= c!719937 ((_ is IntegerValue!24415) (value!245914 (h!52222 (t!349629 addTokens!17)))))))

(assert (= (and d!1246199 c!719938) b!4235628))

(assert (= (and d!1246199 (not c!719938)) b!4235630))

(assert (= (and b!4235630 c!719937) b!4235627))

(assert (= (and b!4235630 (not c!719937)) b!4235626))

(assert (= (and b!4235626 (not res!1742053)) b!4235629))

(declare-fun m!4821333 () Bool)

(assert (=> b!4235627 m!4821333))

(declare-fun m!4821335 () Bool)

(assert (=> b!4235628 m!4821335))

(declare-fun m!4821337 () Bool)

(assert (=> b!4235629 m!4821337))

(assert (=> b!4235582 d!1246199))

(declare-fun d!1246201 () Bool)

(assert (=> d!1246201 (= (inv!61520 (tag!8772 (h!52223 (t!349630 rules!2932)))) (= (mod (str.len (value!245913 (tag!8772 (h!52223 (t!349630 rules!2932))))) 2) 0))))

(assert (=> b!4235599 d!1246201))

(declare-fun d!1246203 () Bool)

(declare-fun res!1742054 () Bool)

(declare-fun e!2630120 () Bool)

(assert (=> d!1246203 (=> (not res!1742054) (not e!2630120))))

(assert (=> d!1246203 (= res!1742054 (semiInverseModEq!3439 (toChars!10507 (transformation!7908 (h!52223 (t!349630 rules!2932)))) (toValue!10648 (transformation!7908 (h!52223 (t!349630 rules!2932))))))))

(assert (=> d!1246203 (= (inv!61523 (transformation!7908 (h!52223 (t!349630 rules!2932)))) e!2630120)))

(declare-fun b!4235631 () Bool)

(assert (=> b!4235631 (= e!2630120 (equivClasses!3338 (toChars!10507 (transformation!7908 (h!52223 (t!349630 rules!2932)))) (toValue!10648 (transformation!7908 (h!52223 (t!349630 rules!2932))))))))

(assert (= (and d!1246203 res!1742054) b!4235631))

(declare-fun m!4821339 () Bool)

(assert (=> d!1246203 m!4821339))

(declare-fun m!4821341 () Bool)

(assert (=> b!4235631 m!4821341))

(assert (=> b!4235599 d!1246203))

(declare-fun d!1246205 () Bool)

(declare-fun lt!1505751 () Int)

(assert (=> d!1246205 (>= lt!1505751 0)))

(declare-fun e!2630121 () Int)

(assert (=> d!1246205 (= lt!1505751 e!2630121)))

(declare-fun c!719939 () Bool)

(assert (=> d!1246205 (= c!719939 ((_ is Nil!46801) (t!349628 shorterInput!51)))))

(assert (=> d!1246205 (= (size!34289 (t!349628 shorterInput!51)) lt!1505751)))

(declare-fun b!4235632 () Bool)

(assert (=> b!4235632 (= e!2630121 0)))

(declare-fun b!4235633 () Bool)

(assert (=> b!4235633 (= e!2630121 (+ 1 (size!34289 (t!349628 (t!349628 shorterInput!51)))))))

(assert (= (and d!1246205 c!719939) b!4235632))

(assert (= (and d!1246205 (not c!719939)) b!4235633))

(declare-fun m!4821343 () Bool)

(assert (=> b!4235633 m!4821343))

(assert (=> b!4235532 d!1246205))

(declare-fun b!4235634 () Bool)

(declare-fun e!2630122 () tuple2!44384)

(declare-fun lt!1505752 () Option!10046)

(declare-fun lt!1505753 () tuple2!44384)

(assert (=> b!4235634 (= e!2630122 (tuple2!44385 (Cons!46802 (_1!25328 (v!40993 lt!1505752)) (_1!25326 lt!1505753)) (_2!25326 lt!1505753)))))

(assert (=> b!4235634 (= lt!1505753 (lexList!2009 thiss!21540 rules!2932 (_2!25328 (v!40993 lt!1505752))))))

(declare-fun b!4235635 () Bool)

(declare-fun e!2630124 () Bool)

(declare-fun e!2630123 () Bool)

(assert (=> b!4235635 (= e!2630124 e!2630123)))

(declare-fun res!1742055 () Bool)

(declare-fun lt!1505754 () tuple2!44384)

(assert (=> b!4235635 (= res!1742055 (< (size!34289 (_2!25326 lt!1505754)) (size!34289 (_2!25328 (v!40993 lt!1505717)))))))

(assert (=> b!4235635 (=> (not res!1742055) (not e!2630123))))

(declare-fun d!1246207 () Bool)

(assert (=> d!1246207 e!2630124))

(declare-fun c!719941 () Bool)

(assert (=> d!1246207 (= c!719941 (> (size!34288 (_1!25326 lt!1505754)) 0))))

(assert (=> d!1246207 (= lt!1505754 e!2630122)))

(declare-fun c!719940 () Bool)

(assert (=> d!1246207 (= c!719940 ((_ is Some!10045) lt!1505752))))

(assert (=> d!1246207 (= lt!1505752 (maxPrefix!4463 thiss!21540 rules!2932 (_2!25328 (v!40993 lt!1505717))))))

(assert (=> d!1246207 (= (lexList!2009 thiss!21540 rules!2932 (_2!25328 (v!40993 lt!1505717))) lt!1505754)))

(declare-fun b!4235636 () Bool)

(assert (=> b!4235636 (= e!2630122 (tuple2!44385 Nil!46802 (_2!25328 (v!40993 lt!1505717))))))

(declare-fun b!4235637 () Bool)

(assert (=> b!4235637 (= e!2630124 (= (_2!25326 lt!1505754) (_2!25328 (v!40993 lt!1505717))))))

(declare-fun b!4235638 () Bool)

(assert (=> b!4235638 (= e!2630123 (not (isEmpty!27653 (_1!25326 lt!1505754))))))

(assert (= (and d!1246207 c!719940) b!4235634))

(assert (= (and d!1246207 (not c!719940)) b!4235636))

(assert (= (and d!1246207 c!719941) b!4235635))

(assert (= (and d!1246207 (not c!719941)) b!4235637))

(assert (= (and b!4235635 res!1742055) b!4235638))

(declare-fun m!4821345 () Bool)

(assert (=> b!4235634 m!4821345))

(declare-fun m!4821347 () Bool)

(assert (=> b!4235635 m!4821347))

(declare-fun m!4821349 () Bool)

(assert (=> b!4235635 m!4821349))

(declare-fun m!4821351 () Bool)

(assert (=> d!1246207 m!4821351))

(declare-fun m!4821353 () Bool)

(assert (=> d!1246207 m!4821353))

(declare-fun m!4821355 () Bool)

(assert (=> b!4235638 m!4821355))

(assert (=> b!4235350 d!1246207))

(declare-fun d!1246209 () Bool)

(assert (=> d!1246209 (= (inv!61520 (tag!8772 (rule!11032 (h!52222 (t!349629 addTokens!17))))) (= (mod (str.len (value!245913 (tag!8772 (rule!11032 (h!52222 (t!349629 addTokens!17)))))) 2) 0))))

(assert (=> b!4235583 d!1246209))

(declare-fun d!1246211 () Bool)

(declare-fun res!1742056 () Bool)

(declare-fun e!2630125 () Bool)

(assert (=> d!1246211 (=> (not res!1742056) (not e!2630125))))

(assert (=> d!1246211 (= res!1742056 (semiInverseModEq!3439 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17)))))))))

(assert (=> d!1246211 (= (inv!61523 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))) e!2630125)))

(declare-fun b!4235639 () Bool)

(assert (=> b!4235639 (= e!2630125 (equivClasses!3338 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17)))))))))

(assert (= (and d!1246211 res!1742056) b!4235639))

(declare-fun m!4821357 () Bool)

(assert (=> d!1246211 m!4821357))

(declare-fun m!4821359 () Bool)

(assert (=> b!4235639 m!4821359))

(assert (=> b!4235583 d!1246211))

(declare-fun d!1246213 () Bool)

(declare-fun res!1742057 () Bool)

(declare-fun e!2630126 () Bool)

(assert (=> d!1246213 (=> (not res!1742057) (not e!2630126))))

(assert (=> d!1246213 (= res!1742057 (not (isEmpty!27652 (originalCharacters!8252 (h!52222 (t!349629 tokens!581))))))))

(assert (=> d!1246213 (= (inv!61524 (h!52222 (t!349629 tokens!581))) e!2630126)))

(declare-fun b!4235640 () Bool)

(declare-fun res!1742058 () Bool)

(assert (=> b!4235640 (=> (not res!1742058) (not e!2630126))))

(assert (=> b!4235640 (= res!1742058 (= (originalCharacters!8252 (h!52222 (t!349629 tokens!581))) (list!16879 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))) (value!245914 (h!52222 (t!349629 tokens!581)))))))))

(declare-fun b!4235641 () Bool)

(assert (=> b!4235641 (= e!2630126 (= (size!34287 (h!52222 (t!349629 tokens!581))) (size!34289 (originalCharacters!8252 (h!52222 (t!349629 tokens!581))))))))

(assert (= (and d!1246213 res!1742057) b!4235640))

(assert (= (and b!4235640 res!1742058) b!4235641))

(declare-fun b_lambda!124659 () Bool)

(assert (=> (not b_lambda!124659) (not b!4235640)))

(declare-fun t!349682 () Bool)

(declare-fun tb!253943 () Bool)

(assert (=> (and b!4235605 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581)))))) t!349682) tb!253943))

(declare-fun b!4235642 () Bool)

(declare-fun e!2630127 () Bool)

(declare-fun tp!1297167 () Bool)

(assert (=> b!4235642 (= e!2630127 (and (inv!61527 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))) (value!245914 (h!52222 (t!349629 tokens!581)))))) tp!1297167))))

(declare-fun result!309792 () Bool)

(assert (=> tb!253943 (= result!309792 (and (inv!61528 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))) (value!245914 (h!52222 (t!349629 tokens!581))))) e!2630127))))

(assert (= tb!253943 b!4235642))

(declare-fun m!4821361 () Bool)

(assert (=> b!4235642 m!4821361))

(declare-fun m!4821363 () Bool)

(assert (=> tb!253943 m!4821363))

(assert (=> b!4235640 t!349682))

(declare-fun b_and!334505 () Bool)

(assert (= b_and!334503 (and (=> t!349682 result!309792) b_and!334505)))

(declare-fun tb!253945 () Bool)

(declare-fun t!349684 () Bool)

(assert (=> (and b!4235600 (= (toChars!10507 (transformation!7908 (h!52223 (t!349630 rules!2932)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581)))))) t!349684) tb!253945))

(declare-fun result!309794 () Bool)

(assert (= result!309794 result!309792))

(assert (=> b!4235640 t!349684))

(declare-fun b_and!334507 () Bool)

(assert (= b_and!334499 (and (=> t!349684 result!309794) b_and!334507)))

(declare-fun t!349686 () Bool)

(declare-fun tb!253947 () Bool)

(assert (=> (and b!4235327 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581)))))) t!349686) tb!253947))

(declare-fun result!309796 () Bool)

(assert (= result!309796 result!309792))

(assert (=> b!4235640 t!349686))

(declare-fun b_and!334509 () Bool)

(assert (= b_and!334489 (and (=> t!349686 result!309796) b_and!334509)))

(declare-fun tb!253949 () Bool)

(declare-fun t!349688 () Bool)

(assert (=> (and b!4235584 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581)))))) t!349688) tb!253949))

(declare-fun result!309798 () Bool)

(assert (= result!309798 result!309792))

(assert (=> b!4235640 t!349688))

(declare-fun b_and!334511 () Bool)

(assert (= b_and!334495 (and (=> t!349688 result!309798) b_and!334511)))

(declare-fun t!349690 () Bool)

(declare-fun tb!253951 () Bool)

(assert (=> (and b!4235320 (= (toChars!10507 (transformation!7908 (h!52223 rules!2932))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581)))))) t!349690) tb!253951))

(declare-fun result!309800 () Bool)

(assert (= result!309800 result!309792))

(assert (=> b!4235640 t!349690))

(declare-fun b_and!334513 () Bool)

(assert (= b_and!334487 (and (=> t!349690 result!309800) b_and!334513)))

(declare-fun t!349692 () Bool)

(declare-fun tb!253953 () Bool)

(assert (=> (and b!4235311 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581)))))) t!349692) tb!253953))

(declare-fun result!309802 () Bool)

(assert (= result!309802 result!309792))

(assert (=> b!4235640 t!349692))

(declare-fun b_and!334515 () Bool)

(assert (= b_and!334491 (and (=> t!349692 result!309802) b_and!334515)))

(declare-fun m!4821365 () Bool)

(assert (=> d!1246213 m!4821365))

(declare-fun m!4821367 () Bool)

(assert (=> b!4235640 m!4821367))

(assert (=> b!4235640 m!4821367))

(declare-fun m!4821369 () Bool)

(assert (=> b!4235640 m!4821369))

(declare-fun m!4821371 () Bool)

(assert (=> b!4235641 m!4821371))

(assert (=> b!4235602 d!1246213))

(declare-fun d!1246215 () Bool)

(declare-fun isBalanced!3751 (Conc!14119) Bool)

(assert (=> d!1246215 (= (inv!61528 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581)))) (isBalanced!3751 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581))))))))

(declare-fun bs!598096 () Bool)

(assert (= bs!598096 d!1246215))

(declare-fun m!4821373 () Bool)

(assert (=> bs!598096 m!4821373))

(assert (=> tb!253925 d!1246215))

(declare-fun d!1246217 () Bool)

(assert (=> d!1246217 true))

(declare-fun order!24627 () Int)

(declare-fun order!24629 () Int)

(declare-fun lambda!130028 () Int)

(declare-fun dynLambda!20063 (Int Int) Int)

(declare-fun dynLambda!20064 (Int Int) Int)

(assert (=> d!1246217 (< (dynLambda!20063 order!24627 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) (dynLambda!20064 order!24629 lambda!130028))))

(assert (=> d!1246217 true))

(declare-fun order!24631 () Int)

(declare-fun dynLambda!20065 (Int Int) Int)

(assert (=> d!1246217 (< (dynLambda!20065 order!24631 (toValue!10648 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) (dynLambda!20064 order!24629 lambda!130028))))

(declare-fun Forall!1589 (Int) Bool)

(assert (=> d!1246217 (= (semiInverseModEq!3439 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) (Forall!1589 lambda!130028))))

(declare-fun bs!598097 () Bool)

(assert (= bs!598097 d!1246217))

(declare-fun m!4821375 () Bool)

(assert (=> bs!598097 m!4821375))

(assert (=> d!1246127 d!1246217))

(declare-fun d!1246219 () Bool)

(assert (=> d!1246219 true))

(declare-fun lambda!130031 () Int)

(declare-fun order!24633 () Int)

(declare-fun dynLambda!20066 (Int Int) Int)

(assert (=> d!1246219 (< (dynLambda!20065 order!24631 (toValue!10648 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) (dynLambda!20066 order!24633 lambda!130031))))

(declare-fun Forall2!1188 (Int) Bool)

(assert (=> d!1246219 (= (equivClasses!3338 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) (Forall2!1188 lambda!130031))))

(declare-fun bs!598098 () Bool)

(assert (= bs!598098 d!1246219))

(declare-fun m!4821377 () Bool)

(assert (=> bs!598098 m!4821377))

(assert (=> b!4235413 d!1246219))

(declare-fun d!1246221 () Bool)

(declare-fun charsToBigInt!0 (List!46924 Int) Int)

(assert (=> d!1246221 (= (inv!15 (value!245914 (h!52222 addTokens!17))) (= (charsToBigInt!0 (text!57415 (value!245914 (h!52222 addTokens!17))) 0) (value!245909 (value!245914 (h!52222 addTokens!17)))))))

(declare-fun bs!598099 () Bool)

(assert (= bs!598099 d!1246221))

(declare-fun m!4821379 () Bool)

(assert (=> bs!598099 m!4821379))

(assert (=> b!4235536 d!1246221))

(declare-fun d!1246223 () Bool)

(assert (=> d!1246223 (= (isEmpty!27652 (originalCharacters!8252 (h!52222 addTokens!17))) ((_ is Nil!46801) (originalCharacters!8252 (h!52222 addTokens!17))))))

(assert (=> d!1246129 d!1246223))

(declare-fun d!1246225 () Bool)

(declare-fun res!1742061 () Bool)

(declare-fun e!2630130 () Bool)

(assert (=> d!1246225 (=> (not res!1742061) (not e!2630130))))

(assert (=> d!1246225 (= res!1742061 (not (isEmpty!27652 (originalCharacters!8252 (h!52222 (t!349629 addTokens!17))))))))

(assert (=> d!1246225 (= (inv!61524 (h!52222 (t!349629 addTokens!17))) e!2630130)))

(declare-fun b!4235651 () Bool)

(declare-fun res!1742062 () Bool)

(assert (=> b!4235651 (=> (not res!1742062) (not e!2630130))))

(assert (=> b!4235651 (= res!1742062 (= (originalCharacters!8252 (h!52222 (t!349629 addTokens!17))) (list!16879 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))) (value!245914 (h!52222 (t!349629 addTokens!17)))))))))

(declare-fun b!4235652 () Bool)

(assert (=> b!4235652 (= e!2630130 (= (size!34287 (h!52222 (t!349629 addTokens!17))) (size!34289 (originalCharacters!8252 (h!52222 (t!349629 addTokens!17))))))))

(assert (= (and d!1246225 res!1742061) b!4235651))

(assert (= (and b!4235651 res!1742062) b!4235652))

(declare-fun b_lambda!124661 () Bool)

(assert (=> (not b_lambda!124661) (not b!4235651)))

(declare-fun t!349694 () Bool)

(declare-fun tb!253955 () Bool)

(assert (=> (and b!4235320 (= (toChars!10507 (transformation!7908 (h!52223 rules!2932))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17)))))) t!349694) tb!253955))

(declare-fun b!4235653 () Bool)

(declare-fun e!2630131 () Bool)

(declare-fun tp!1297168 () Bool)

(assert (=> b!4235653 (= e!2630131 (and (inv!61527 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))) (value!245914 (h!52222 (t!349629 addTokens!17)))))) tp!1297168))))

(declare-fun result!309804 () Bool)

(assert (=> tb!253955 (= result!309804 (and (inv!61528 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))) (value!245914 (h!52222 (t!349629 addTokens!17))))) e!2630131))))

(assert (= tb!253955 b!4235653))

(declare-fun m!4821381 () Bool)

(assert (=> b!4235653 m!4821381))

(declare-fun m!4821383 () Bool)

(assert (=> tb!253955 m!4821383))

(assert (=> b!4235651 t!349694))

(declare-fun b_and!334517 () Bool)

(assert (= b_and!334513 (and (=> t!349694 result!309804) b_and!334517)))

(declare-fun t!349696 () Bool)

(declare-fun tb!253957 () Bool)

(assert (=> (and b!4235584 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17)))))) t!349696) tb!253957))

(declare-fun result!309806 () Bool)

(assert (= result!309806 result!309804))

(assert (=> b!4235651 t!349696))

(declare-fun b_and!334519 () Bool)

(assert (= b_and!334511 (and (=> t!349696 result!309806) b_and!334519)))

(declare-fun t!349698 () Bool)

(declare-fun tb!253959 () Bool)

(assert (=> (and b!4235311 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17)))))) t!349698) tb!253959))

(declare-fun result!309808 () Bool)

(assert (= result!309808 result!309804))

(assert (=> b!4235651 t!349698))

(declare-fun b_and!334521 () Bool)

(assert (= b_and!334515 (and (=> t!349698 result!309808) b_and!334521)))

(declare-fun tb!253961 () Bool)

(declare-fun t!349700 () Bool)

(assert (=> (and b!4235605 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17)))))) t!349700) tb!253961))

(declare-fun result!309810 () Bool)

(assert (= result!309810 result!309804))

(assert (=> b!4235651 t!349700))

(declare-fun b_and!334523 () Bool)

(assert (= b_and!334505 (and (=> t!349700 result!309810) b_and!334523)))

(declare-fun tb!253963 () Bool)

(declare-fun t!349702 () Bool)

(assert (=> (and b!4235600 (= (toChars!10507 (transformation!7908 (h!52223 (t!349630 rules!2932)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17)))))) t!349702) tb!253963))

(declare-fun result!309812 () Bool)

(assert (= result!309812 result!309804))

(assert (=> b!4235651 t!349702))

(declare-fun b_and!334525 () Bool)

(assert (= b_and!334507 (and (=> t!349702 result!309812) b_and!334525)))

(declare-fun t!349704 () Bool)

(declare-fun tb!253965 () Bool)

(assert (=> (and b!4235327 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17)))))) t!349704) tb!253965))

(declare-fun result!309814 () Bool)

(assert (= result!309814 result!309804))

(assert (=> b!4235651 t!349704))

(declare-fun b_and!334527 () Bool)

(assert (= b_and!334509 (and (=> t!349704 result!309814) b_and!334527)))

(declare-fun m!4821385 () Bool)

(assert (=> d!1246225 m!4821385))

(declare-fun m!4821387 () Bool)

(assert (=> b!4235651 m!4821387))

(assert (=> b!4235651 m!4821387))

(declare-fun m!4821389 () Bool)

(assert (=> b!4235651 m!4821389))

(declare-fun m!4821391 () Bool)

(assert (=> b!4235652 m!4821391))

(assert (=> b!4235581 d!1246225))

(declare-fun d!1246227 () Bool)

(declare-fun charsToBigInt!1 (List!46924) Int)

(assert (=> d!1246227 (= (inv!17 (value!245914 (h!52222 tokens!581))) (= (charsToBigInt!1 (text!57414 (value!245914 (h!52222 tokens!581)))) (value!245906 (value!245914 (h!52222 tokens!581)))))))

(declare-fun bs!598100 () Bool)

(assert (= bs!598100 d!1246227))

(declare-fun m!4821393 () Bool)

(assert (=> bs!598100 m!4821393))

(assert (=> b!4235406 d!1246227))

(declare-fun d!1246229 () Bool)

(declare-fun c!719944 () Bool)

(assert (=> d!1246229 (= c!719944 ((_ is Node!14119) (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581))))))))

(declare-fun e!2630136 () Bool)

(assert (=> d!1246229 (= (inv!61527 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581))))) e!2630136)))

(declare-fun b!4235660 () Bool)

(declare-fun inv!61531 (Conc!14119) Bool)

(assert (=> b!4235660 (= e!2630136 (inv!61531 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581))))))))

(declare-fun b!4235661 () Bool)

(declare-fun e!2630137 () Bool)

(assert (=> b!4235661 (= e!2630136 e!2630137)))

(declare-fun res!1742065 () Bool)

(assert (=> b!4235661 (= res!1742065 (not ((_ is Leaf!21832) (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581)))))))))

(assert (=> b!4235661 (=> res!1742065 e!2630137)))

(declare-fun b!4235662 () Bool)

(declare-fun inv!61532 (Conc!14119) Bool)

(assert (=> b!4235662 (= e!2630137 (inv!61532 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581))))))))

(assert (= (and d!1246229 c!719944) b!4235660))

(assert (= (and d!1246229 (not c!719944)) b!4235661))

(assert (= (and b!4235661 (not res!1742065)) b!4235662))

(declare-fun m!4821395 () Bool)

(assert (=> b!4235660 m!4821395))

(declare-fun m!4821397 () Bool)

(assert (=> b!4235662 m!4821397))

(assert (=> b!4235540 d!1246229))

(declare-fun d!1246231 () Bool)

(declare-fun charsToInt!0 (List!46924) (_ BitVec 32))

(assert (=> d!1246231 (= (inv!16 (value!245914 (h!52222 tokens!581))) (= (charsToInt!0 (text!57413 (value!245914 (h!52222 tokens!581)))) (value!245905 (value!245914 (h!52222 tokens!581)))))))

(declare-fun bs!598101 () Bool)

(assert (= bs!598101 d!1246231))

(declare-fun m!4821399 () Bool)

(assert (=> bs!598101 m!4821399))

(assert (=> b!4235407 d!1246231))

(declare-fun d!1246233 () Bool)

(declare-fun lt!1505755 () Int)

(assert (=> d!1246233 (>= lt!1505755 0)))

(declare-fun e!2630138 () Int)

(assert (=> d!1246233 (= lt!1505755 e!2630138)))

(declare-fun c!719945 () Bool)

(assert (=> d!1246233 (= c!719945 ((_ is Nil!46802) (_1!25326 lt!1505719)))))

(assert (=> d!1246233 (= (size!34288 (_1!25326 lt!1505719)) lt!1505755)))

(declare-fun b!4235663 () Bool)

(assert (=> b!4235663 (= e!2630138 0)))

(declare-fun b!4235664 () Bool)

(assert (=> b!4235664 (= e!2630138 (+ 1 (size!34288 (t!349629 (_1!25326 lt!1505719)))))))

(assert (= (and d!1246233 c!719945) b!4235663))

(assert (= (and d!1246233 (not c!719945)) b!4235664))

(declare-fun m!4821401 () Bool)

(assert (=> b!4235664 m!4821401))

(assert (=> d!1246109 d!1246233))

(declare-fun b!4235717 () Bool)

(declare-fun e!2630158 () Option!10046)

(declare-fun lt!1505783 () Option!10046)

(declare-fun lt!1505782 () Option!10046)

(assert (=> b!4235717 (= e!2630158 (ite (and ((_ is None!10045) lt!1505783) ((_ is None!10045) lt!1505782)) None!10045 (ite ((_ is None!10045) lt!1505782) lt!1505783 (ite ((_ is None!10045) lt!1505783) lt!1505782 (ite (>= (size!34287 (_1!25328 (v!40993 lt!1505783))) (size!34287 (_1!25328 (v!40993 lt!1505782)))) lt!1505783 lt!1505782)))))))

(declare-fun call!293784 () Option!10046)

(assert (=> b!4235717 (= lt!1505783 call!293784)))

(assert (=> b!4235717 (= lt!1505782 (maxPrefix!4463 thiss!21540 (t!349630 rules!2932) longerInput!51))))

(declare-fun b!4235718 () Bool)

(declare-fun res!1742107 () Bool)

(declare-fun e!2630160 () Bool)

(assert (=> b!4235718 (=> (not res!1742107) (not e!2630160))))

(declare-fun lt!1505785 () Option!10046)

(declare-fun ++!11921 (List!46925 List!46925) List!46925)

(declare-fun charsOf!5266 (Token!14442) BalanceConc!27832)

(declare-fun get!15226 (Option!10046) tuple2!44388)

(assert (=> b!4235718 (= res!1742107 (= (++!11921 (list!16879 (charsOf!5266 (_1!25328 (get!15226 lt!1505785)))) (_2!25328 (get!15226 lt!1505785))) longerInput!51))))

(declare-fun b!4235719 () Bool)

(assert (=> b!4235719 (= e!2630158 call!293784)))

(declare-fun b!4235720 () Bool)

(declare-fun contains!9711 (List!46927 Rule!15616) Bool)

(assert (=> b!4235720 (= e!2630160 (contains!9711 rules!2932 (rule!11032 (_1!25328 (get!15226 lt!1505785)))))))

(declare-fun b!4235721 () Bool)

(declare-fun res!1742108 () Bool)

(assert (=> b!4235721 (=> (not res!1742108) (not e!2630160))))

(declare-fun apply!10742 (TokenValueInjection!15704 BalanceConc!27832) TokenValue!8138)

(declare-fun seqFromList!5802 (List!46925) BalanceConc!27832)

(assert (=> b!4235721 (= res!1742108 (= (value!245914 (_1!25328 (get!15226 lt!1505785))) (apply!10742 (transformation!7908 (rule!11032 (_1!25328 (get!15226 lt!1505785)))) (seqFromList!5802 (originalCharacters!8252 (_1!25328 (get!15226 lt!1505785)))))))))

(declare-fun b!4235722 () Bool)

(declare-fun e!2630159 () Bool)

(assert (=> b!4235722 (= e!2630159 e!2630160)))

(declare-fun res!1742111 () Bool)

(assert (=> b!4235722 (=> (not res!1742111) (not e!2630160))))

(declare-fun isDefined!7430 (Option!10046) Bool)

(assert (=> b!4235722 (= res!1742111 (isDefined!7430 lt!1505785))))

(declare-fun d!1246235 () Bool)

(assert (=> d!1246235 e!2630159))

(declare-fun res!1742110 () Bool)

(assert (=> d!1246235 (=> res!1742110 e!2630159)))

(declare-fun isEmpty!27655 (Option!10046) Bool)

(assert (=> d!1246235 (= res!1742110 (isEmpty!27655 lt!1505785))))

(assert (=> d!1246235 (= lt!1505785 e!2630158)))

(declare-fun c!719951 () Bool)

(assert (=> d!1246235 (= c!719951 (and ((_ is Cons!46803) rules!2932) ((_ is Nil!46803) (t!349630 rules!2932))))))

(declare-datatypes ((Unit!65927 0))(
  ( (Unit!65928) )
))
(declare-fun lt!1505781 () Unit!65927)

(declare-fun lt!1505784 () Unit!65927)

(assert (=> d!1246235 (= lt!1505781 lt!1505784)))

(declare-fun isPrefix!4715 (List!46925 List!46925) Bool)

(assert (=> d!1246235 (isPrefix!4715 longerInput!51 longerInput!51)))

(declare-fun lemmaIsPrefixRefl!3112 (List!46925 List!46925) Unit!65927)

(assert (=> d!1246235 (= lt!1505784 (lemmaIsPrefixRefl!3112 longerInput!51 longerInput!51))))

(assert (=> d!1246235 (rulesValidInductive!2962 thiss!21540 rules!2932)))

(assert (=> d!1246235 (= (maxPrefix!4463 thiss!21540 rules!2932 longerInput!51) lt!1505785)))

(declare-fun b!4235723 () Bool)

(declare-fun res!1742106 () Bool)

(assert (=> b!4235723 (=> (not res!1742106) (not e!2630160))))

(declare-fun matchR!6437 (Regex!12813 List!46925) Bool)

(assert (=> b!4235723 (= res!1742106 (matchR!6437 (regex!7908 (rule!11032 (_1!25328 (get!15226 lt!1505785)))) (list!16879 (charsOf!5266 (_1!25328 (get!15226 lt!1505785))))))))

(declare-fun b!4235724 () Bool)

(declare-fun res!1742105 () Bool)

(assert (=> b!4235724 (=> (not res!1742105) (not e!2630160))))

(assert (=> b!4235724 (= res!1742105 (< (size!34289 (_2!25328 (get!15226 lt!1505785))) (size!34289 longerInput!51)))))

(declare-fun b!4235725 () Bool)

(declare-fun res!1742109 () Bool)

(assert (=> b!4235725 (=> (not res!1742109) (not e!2630160))))

(assert (=> b!4235725 (= res!1742109 (= (list!16879 (charsOf!5266 (_1!25328 (get!15226 lt!1505785)))) (originalCharacters!8252 (_1!25328 (get!15226 lt!1505785)))))))

(declare-fun bm!293779 () Bool)

(declare-fun maxPrefixOneRule!3440 (LexerInterface!7503 Rule!15616 List!46925) Option!10046)

(assert (=> bm!293779 (= call!293784 (maxPrefixOneRule!3440 thiss!21540 (h!52223 rules!2932) longerInput!51))))

(assert (= (and d!1246235 c!719951) b!4235719))

(assert (= (and d!1246235 (not c!719951)) b!4235717))

(assert (= (or b!4235719 b!4235717) bm!293779))

(assert (= (and d!1246235 (not res!1742110)) b!4235722))

(assert (= (and b!4235722 res!1742111) b!4235725))

(assert (= (and b!4235725 res!1742109) b!4235724))

(assert (= (and b!4235724 res!1742105) b!4235718))

(assert (= (and b!4235718 res!1742107) b!4235721))

(assert (= (and b!4235721 res!1742108) b!4235723))

(assert (= (and b!4235723 res!1742106) b!4235720))

(declare-fun m!4821457 () Bool)

(assert (=> b!4235721 m!4821457))

(declare-fun m!4821459 () Bool)

(assert (=> b!4235721 m!4821459))

(assert (=> b!4235721 m!4821459))

(declare-fun m!4821461 () Bool)

(assert (=> b!4235721 m!4821461))

(declare-fun m!4821463 () Bool)

(assert (=> b!4235717 m!4821463))

(declare-fun m!4821465 () Bool)

(assert (=> d!1246235 m!4821465))

(declare-fun m!4821467 () Bool)

(assert (=> d!1246235 m!4821467))

(declare-fun m!4821469 () Bool)

(assert (=> d!1246235 m!4821469))

(assert (=> d!1246235 m!4821095))

(assert (=> b!4235720 m!4821457))

(declare-fun m!4821471 () Bool)

(assert (=> b!4235720 m!4821471))

(declare-fun m!4821473 () Bool)

(assert (=> b!4235722 m!4821473))

(declare-fun m!4821475 () Bool)

(assert (=> bm!293779 m!4821475))

(assert (=> b!4235718 m!4821457))

(declare-fun m!4821477 () Bool)

(assert (=> b!4235718 m!4821477))

(assert (=> b!4235718 m!4821477))

(declare-fun m!4821479 () Bool)

(assert (=> b!4235718 m!4821479))

(assert (=> b!4235718 m!4821479))

(declare-fun m!4821481 () Bool)

(assert (=> b!4235718 m!4821481))

(assert (=> b!4235723 m!4821457))

(assert (=> b!4235723 m!4821477))

(assert (=> b!4235723 m!4821477))

(assert (=> b!4235723 m!4821479))

(assert (=> b!4235723 m!4821479))

(declare-fun m!4821483 () Bool)

(assert (=> b!4235723 m!4821483))

(assert (=> b!4235725 m!4821457))

(assert (=> b!4235725 m!4821477))

(assert (=> b!4235725 m!4821477))

(assert (=> b!4235725 m!4821479))

(assert (=> b!4235724 m!4821457))

(declare-fun m!4821485 () Bool)

(assert (=> b!4235724 m!4821485))

(assert (=> b!4235724 m!4821119))

(assert (=> d!1246109 d!1246235))

(declare-fun d!1246257 () Bool)

(declare-fun c!719954 () Bool)

(assert (=> d!1246257 (= c!719954 ((_ is Node!14119) (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17))))))))

(declare-fun e!2630164 () Bool)

(assert (=> d!1246257 (= (inv!61527 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17))))) e!2630164)))

(declare-fun b!4235731 () Bool)

(assert (=> b!4235731 (= e!2630164 (inv!61531 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17))))))))

(declare-fun b!4235732 () Bool)

(declare-fun e!2630165 () Bool)

(assert (=> b!4235732 (= e!2630164 e!2630165)))

(declare-fun res!1742113 () Bool)

(assert (=> b!4235732 (= res!1742113 (not ((_ is Leaf!21832) (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17)))))))))

(assert (=> b!4235732 (=> res!1742113 e!2630165)))

(declare-fun b!4235733 () Bool)

(assert (=> b!4235733 (= e!2630165 (inv!61532 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17))))))))

(assert (= (and d!1246257 c!719954) b!4235731))

(assert (= (and d!1246257 (not c!719954)) b!4235732))

(assert (= (and b!4235732 (not res!1742113)) b!4235733))

(declare-fun m!4821487 () Bool)

(assert (=> b!4235731 m!4821487))

(declare-fun m!4821489 () Bool)

(assert (=> b!4235733 m!4821489))

(assert (=> b!4235394 d!1246257))

(declare-fun d!1246259 () Bool)

(declare-fun lt!1505787 () Int)

(assert (=> d!1246259 (>= lt!1505787 0)))

(declare-fun e!2630166 () Int)

(assert (=> d!1246259 (= lt!1505787 e!2630166)))

(declare-fun c!719955 () Bool)

(assert (=> d!1246259 (= c!719955 ((_ is Nil!46801) (originalCharacters!8252 (h!52222 addTokens!17))))))

(assert (=> d!1246259 (= (size!34289 (originalCharacters!8252 (h!52222 addTokens!17))) lt!1505787)))

(declare-fun b!4235734 () Bool)

(assert (=> b!4235734 (= e!2630166 0)))

(declare-fun b!4235735 () Bool)

(assert (=> b!4235735 (= e!2630166 (+ 1 (size!34289 (t!349628 (originalCharacters!8252 (h!52222 addTokens!17))))))))

(assert (= (and d!1246259 c!719955) b!4235734))

(assert (= (and d!1246259 (not c!719955)) b!4235735))

(declare-fun m!4821491 () Bool)

(assert (=> b!4235735 m!4821491))

(assert (=> b!4235389 d!1246259))

(declare-fun d!1246261 () Bool)

(assert (=> d!1246261 (= (inv!61520 (tag!8772 (rule!11032 (h!52222 (t!349629 tokens!581))))) (= (mod (str.len (value!245913 (tag!8772 (rule!11032 (h!52222 (t!349629 tokens!581)))))) 2) 0))))

(assert (=> b!4235604 d!1246261))

(declare-fun d!1246263 () Bool)

(declare-fun res!1742114 () Bool)

(declare-fun e!2630167 () Bool)

(assert (=> d!1246263 (=> (not res!1742114) (not e!2630167))))

(assert (=> d!1246263 (= res!1742114 (semiInverseModEq!3439 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581)))))))))

(assert (=> d!1246263 (= (inv!61523 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))) e!2630167)))

(declare-fun b!4235738 () Bool)

(assert (=> b!4235738 (= e!2630167 (equivClasses!3338 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581)))))))))

(assert (= (and d!1246263 res!1742114) b!4235738))

(declare-fun m!4821493 () Bool)

(assert (=> d!1246263 m!4821493))

(declare-fun m!4821495 () Bool)

(assert (=> b!4235738 m!4821495))

(assert (=> b!4235604 d!1246263))

(declare-fun d!1246265 () Bool)

(assert (=> d!1246265 (= (isEmpty!27653 (_1!25326 lt!1505719)) ((_ is Nil!46802) (_1!25326 lt!1505719)))))

(assert (=> b!4235354 d!1246265))

(declare-fun d!1246267 () Bool)

(declare-fun res!1742120 () Bool)

(declare-fun e!2630175 () Bool)

(assert (=> d!1246267 (=> res!1742120 e!2630175)))

(assert (=> d!1246267 (= res!1742120 ((_ is Nil!46803) rules!2932))))

(assert (=> d!1246267 (= (forall!8530 rules!2932 lambda!130025) e!2630175)))

(declare-fun b!4235750 () Bool)

(declare-fun e!2630176 () Bool)

(assert (=> b!4235750 (= e!2630175 e!2630176)))

(declare-fun res!1742121 () Bool)

(assert (=> b!4235750 (=> (not res!1742121) (not e!2630176))))

(declare-fun dynLambda!20071 (Int Rule!15616) Bool)

(assert (=> b!4235750 (= res!1742121 (dynLambda!20071 lambda!130025 (h!52223 rules!2932)))))

(declare-fun b!4235751 () Bool)

(assert (=> b!4235751 (= e!2630176 (forall!8530 (t!349630 rules!2932) lambda!130025))))

(assert (= (and d!1246267 (not res!1742120)) b!4235750))

(assert (= (and b!4235750 res!1742121) b!4235751))

(declare-fun b_lambda!124665 () Bool)

(assert (=> (not b_lambda!124665) (not b!4235750)))

(declare-fun m!4821509 () Bool)

(assert (=> b!4235750 m!4821509))

(declare-fun m!4821511 () Bool)

(assert (=> b!4235751 m!4821511))

(assert (=> d!1246141 d!1246267))

(declare-fun b!4235757 () Bool)

(declare-fun res!1742123 () Bool)

(declare-fun e!2630182 () Bool)

(assert (=> b!4235757 (=> res!1742123 e!2630182)))

(assert (=> b!4235757 (= res!1742123 (not ((_ is IntegerValue!24416) (value!245914 (h!52222 (t!349629 tokens!581))))))))

(declare-fun e!2630181 () Bool)

(assert (=> b!4235757 (= e!2630181 e!2630182)))

(declare-fun b!4235758 () Bool)

(assert (=> b!4235758 (= e!2630181 (inv!17 (value!245914 (h!52222 (t!349629 tokens!581)))))))

(declare-fun d!1246281 () Bool)

(declare-fun c!719961 () Bool)

(assert (=> d!1246281 (= c!719961 ((_ is IntegerValue!24414) (value!245914 (h!52222 (t!349629 tokens!581)))))))

(declare-fun e!2630180 () Bool)

(assert (=> d!1246281 (= (inv!21 (value!245914 (h!52222 (t!349629 tokens!581)))) e!2630180)))

(declare-fun b!4235759 () Bool)

(assert (=> b!4235759 (= e!2630180 (inv!16 (value!245914 (h!52222 (t!349629 tokens!581)))))))

(declare-fun b!4235760 () Bool)

(assert (=> b!4235760 (= e!2630182 (inv!15 (value!245914 (h!52222 (t!349629 tokens!581)))))))

(declare-fun b!4235761 () Bool)

(assert (=> b!4235761 (= e!2630180 e!2630181)))

(declare-fun c!719960 () Bool)

(assert (=> b!4235761 (= c!719960 ((_ is IntegerValue!24415) (value!245914 (h!52222 (t!349629 tokens!581)))))))

(assert (= (and d!1246281 c!719961) b!4235759))

(assert (= (and d!1246281 (not c!719961)) b!4235761))

(assert (= (and b!4235761 c!719960) b!4235758))

(assert (= (and b!4235761 (not c!719960)) b!4235757))

(assert (= (and b!4235757 (not res!1742123)) b!4235760))

(declare-fun m!4821513 () Bool)

(assert (=> b!4235758 m!4821513))

(declare-fun m!4821515 () Bool)

(assert (=> b!4235759 m!4821515))

(declare-fun m!4821517 () Bool)

(assert (=> b!4235760 m!4821517))

(assert (=> b!4235603 d!1246281))

(declare-fun d!1246283 () Bool)

(declare-fun list!16881 (Conc!14119) List!46925)

(assert (=> d!1246283 (= (list!16879 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17)))) (list!16881 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17))))))))

(declare-fun bs!598108 () Bool)

(assert (= bs!598108 d!1246283))

(declare-fun m!4821531 () Bool)

(assert (=> bs!598108 m!4821531))

(assert (=> b!4235388 d!1246283))

(declare-fun bs!598110 () Bool)

(declare-fun d!1246287 () Bool)

(assert (= bs!598110 (and d!1246287 d!1246217)))

(declare-fun lambda!130039 () Int)

(assert (=> bs!598110 (= (and (= (toChars!10507 (transformation!7908 (h!52223 rules!2932))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) (= (toValue!10648 (transformation!7908 (h!52223 rules!2932))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))))) (= lambda!130039 lambda!130028))))

(assert (=> d!1246287 true))

(assert (=> d!1246287 (< (dynLambda!20063 order!24627 (toChars!10507 (transformation!7908 (h!52223 rules!2932)))) (dynLambda!20064 order!24629 lambda!130039))))

(assert (=> d!1246287 true))

(assert (=> d!1246287 (< (dynLambda!20065 order!24631 (toValue!10648 (transformation!7908 (h!52223 rules!2932)))) (dynLambda!20064 order!24629 lambda!130039))))

(assert (=> d!1246287 (= (semiInverseModEq!3439 (toChars!10507 (transformation!7908 (h!52223 rules!2932))) (toValue!10648 (transformation!7908 (h!52223 rules!2932)))) (Forall!1589 lambda!130039))))

(declare-fun bs!598111 () Bool)

(assert (= bs!598111 d!1246287))

(declare-fun m!4821535 () Bool)

(assert (=> bs!598111 m!4821535))

(assert (=> d!1246119 d!1246287))

(declare-fun d!1246291 () Bool)

(assert (=> d!1246291 (= (isEmpty!27652 (originalCharacters!8252 (h!52222 tokens!581))) ((_ is Nil!46801) (originalCharacters!8252 (h!52222 tokens!581))))))

(assert (=> d!1246181 d!1246291))

(declare-fun bs!598113 () Bool)

(declare-fun d!1246293 () Bool)

(assert (= bs!598113 (and d!1246293 d!1246219)))

(declare-fun lambda!130040 () Int)

(assert (=> bs!598113 (= (= (toValue!10648 (transformation!7908 (h!52223 rules!2932))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) (= lambda!130040 lambda!130031))))

(assert (=> d!1246293 true))

(assert (=> d!1246293 (< (dynLambda!20065 order!24631 (toValue!10648 (transformation!7908 (h!52223 rules!2932)))) (dynLambda!20066 order!24633 lambda!130040))))

(assert (=> d!1246293 (= (equivClasses!3338 (toChars!10507 (transformation!7908 (h!52223 rules!2932))) (toValue!10648 (transformation!7908 (h!52223 rules!2932)))) (Forall2!1188 lambda!130040))))

(declare-fun bs!598114 () Bool)

(assert (= bs!598114 d!1246293))

(declare-fun m!4821543 () Bool)

(assert (=> bs!598114 m!4821543))

(assert (=> b!4235372 d!1246293))

(declare-fun bs!598116 () Bool)

(declare-fun d!1246299 () Bool)

(assert (= bs!598116 (and d!1246299 d!1246141)))

(declare-fun lambda!130041 () Int)

(assert (=> bs!598116 (= lambda!130041 lambda!130025)))

(assert (=> d!1246299 true))

(declare-fun lt!1505795 () Bool)

(assert (=> d!1246299 (= lt!1505795 (forall!8530 (t!349630 rules!2932) lambda!130041))))

(declare-fun e!2630186 () Bool)

(assert (=> d!1246299 (= lt!1505795 e!2630186)))

(declare-fun res!1742124 () Bool)

(assert (=> d!1246299 (=> res!1742124 e!2630186)))

(assert (=> d!1246299 (= res!1742124 (not ((_ is Cons!46803) (t!349630 rules!2932))))))

(assert (=> d!1246299 (= (rulesValidInductive!2962 thiss!21540 (t!349630 rules!2932)) lt!1505795)))

(declare-fun b!4235766 () Bool)

(declare-fun e!2630185 () Bool)

(assert (=> b!4235766 (= e!2630186 e!2630185)))

(declare-fun res!1742125 () Bool)

(assert (=> b!4235766 (=> (not res!1742125) (not e!2630185))))

(assert (=> b!4235766 (= res!1742125 (ruleValid!3596 thiss!21540 (h!52223 (t!349630 rules!2932))))))

(declare-fun b!4235767 () Bool)

(assert (=> b!4235767 (= e!2630185 (rulesValidInductive!2962 thiss!21540 (t!349630 (t!349630 rules!2932))))))

(assert (= (and d!1246299 (not res!1742124)) b!4235766))

(assert (= (and b!4235766 res!1742125) b!4235767))

(declare-fun m!4821547 () Bool)

(assert (=> d!1246299 m!4821547))

(declare-fun m!4821549 () Bool)

(assert (=> b!4235766 m!4821549))

(declare-fun m!4821551 () Bool)

(assert (=> b!4235767 m!4821551))

(assert (=> b!4235522 d!1246299))

(declare-fun d!1246305 () Bool)

(declare-fun lt!1505796 () Int)

(assert (=> d!1246305 (>= lt!1505796 0)))

(declare-fun e!2630187 () Int)

(assert (=> d!1246305 (= lt!1505796 e!2630187)))

(declare-fun c!719964 () Bool)

(assert (=> d!1246305 (= c!719964 ((_ is Nil!46801) (t!349628 longerInput!51)))))

(assert (=> d!1246305 (= (size!34289 (t!349628 longerInput!51)) lt!1505796)))

(declare-fun b!4235768 () Bool)

(assert (=> b!4235768 (= e!2630187 0)))

(declare-fun b!4235769 () Bool)

(assert (=> b!4235769 (= e!2630187 (+ 1 (size!34289 (t!349628 (t!349628 longerInput!51)))))))

(assert (= (and d!1246305 c!719964) b!4235768))

(assert (= (and d!1246305 (not c!719964)) b!4235769))

(declare-fun m!4821553 () Bool)

(assert (=> b!4235769 m!4821553))

(assert (=> b!4235530 d!1246305))

(declare-fun d!1246307 () Bool)

(declare-fun res!1742130 () Bool)

(declare-fun e!2630190 () Bool)

(assert (=> d!1246307 (=> (not res!1742130) (not e!2630190))))

(declare-fun validRegex!5820 (Regex!12813) Bool)

(assert (=> d!1246307 (= res!1742130 (validRegex!5820 (regex!7908 (h!52223 rules!2932))))))

(assert (=> d!1246307 (= (ruleValid!3596 thiss!21540 (h!52223 rules!2932)) e!2630190)))

(declare-fun b!4235774 () Bool)

(declare-fun res!1742131 () Bool)

(assert (=> b!4235774 (=> (not res!1742131) (not e!2630190))))

(declare-fun nullable!4513 (Regex!12813) Bool)

(assert (=> b!4235774 (= res!1742131 (not (nullable!4513 (regex!7908 (h!52223 rules!2932)))))))

(declare-fun b!4235775 () Bool)

(assert (=> b!4235775 (= e!2630190 (not (= (tag!8772 (h!52223 rules!2932)) (String!54621 ""))))))

(assert (= (and d!1246307 res!1742130) b!4235774))

(assert (= (and b!4235774 res!1742131) b!4235775))

(declare-fun m!4821557 () Bool)

(assert (=> d!1246307 m!4821557))

(declare-fun m!4821559 () Bool)

(assert (=> b!4235774 m!4821559))

(assert (=> b!4235521 d!1246307))

(declare-fun d!1246311 () Bool)

(declare-fun res!1742146 () Bool)

(declare-fun e!2630205 () Bool)

(assert (=> d!1246311 (=> res!1742146 e!2630205)))

(assert (=> d!1246311 (= res!1742146 ((_ is Nil!46803) rules!2932))))

(assert (=> d!1246311 (= (noDuplicateTag!3223 thiss!21540 rules!2932 Nil!46805) e!2630205)))

(declare-fun b!4235790 () Bool)

(declare-fun e!2630206 () Bool)

(assert (=> b!4235790 (= e!2630205 e!2630206)))

(declare-fun res!1742147 () Bool)

(assert (=> b!4235790 (=> (not res!1742147) (not e!2630206))))

(declare-fun contains!9713 (List!46929 String!54620) Bool)

(assert (=> b!4235790 (= res!1742147 (not (contains!9713 Nil!46805 (tag!8772 (h!52223 rules!2932)))))))

(declare-fun b!4235791 () Bool)

(assert (=> b!4235791 (= e!2630206 (noDuplicateTag!3223 thiss!21540 (t!349630 rules!2932) (Cons!46805 (tag!8772 (h!52223 rules!2932)) Nil!46805)))))

(assert (= (and d!1246311 (not res!1742146)) b!4235790))

(assert (= (and b!4235790 res!1742147) b!4235791))

(declare-fun m!4821567 () Bool)

(assert (=> b!4235790 m!4821567))

(declare-fun m!4821569 () Bool)

(assert (=> b!4235791 m!4821569))

(assert (=> b!4235412 d!1246311))

(declare-fun d!1246317 () Bool)

(assert (=> d!1246317 (= (inv!61528 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17)))) (isBalanced!3751 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17))))))))

(declare-fun bs!598119 () Bool)

(assert (= bs!598119 d!1246317))

(declare-fun m!4821571 () Bool)

(assert (=> bs!598119 m!4821571))

(assert (=> tb!253901 d!1246317))

(declare-fun d!1246319 () Bool)

(assert (=> d!1246319 (= (inv!15 (value!245914 (h!52222 tokens!581))) (= (charsToBigInt!0 (text!57415 (value!245914 (h!52222 tokens!581))) 0) (value!245909 (value!245914 (h!52222 tokens!581)))))))

(declare-fun bs!598120 () Bool)

(assert (= bs!598120 d!1246319))

(declare-fun m!4821573 () Bool)

(assert (=> bs!598120 m!4821573))

(assert (=> b!4235408 d!1246319))

(declare-fun bs!598121 () Bool)

(declare-fun d!1246321 () Bool)

(assert (= bs!598121 (and d!1246321 d!1246219)))

(declare-fun lambda!130042 () Int)

(assert (=> bs!598121 (= (= (toValue!10648 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) (= lambda!130042 lambda!130031))))

(declare-fun bs!598122 () Bool)

(assert (= bs!598122 (and d!1246321 d!1246293)))

(assert (=> bs!598122 (= (= (toValue!10648 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (toValue!10648 (transformation!7908 (h!52223 rules!2932)))) (= lambda!130042 lambda!130040))))

(assert (=> d!1246321 true))

(assert (=> d!1246321 (< (dynLambda!20065 order!24631 (toValue!10648 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) (dynLambda!20066 order!24633 lambda!130042))))

(assert (=> d!1246321 (= (equivClasses!3338 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) (Forall2!1188 lambda!130042))))

(declare-fun bs!598123 () Bool)

(assert (= bs!598123 d!1246321))

(declare-fun m!4821579 () Bool)

(assert (=> bs!598123 m!4821579))

(assert (=> b!4235375 d!1246321))

(declare-fun bs!598125 () Bool)

(declare-fun d!1246325 () Bool)

(assert (= bs!598125 (and d!1246325 d!1246217)))

(declare-fun lambda!130044 () Int)

(assert (=> bs!598125 (= (and (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) (= (toValue!10648 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))))) (= lambda!130044 lambda!130028))))

(declare-fun bs!598127 () Bool)

(assert (= bs!598127 (and d!1246325 d!1246287)))

(assert (=> bs!598127 (= (and (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (toChars!10507 (transformation!7908 (h!52223 rules!2932)))) (= (toValue!10648 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (toValue!10648 (transformation!7908 (h!52223 rules!2932))))) (= lambda!130044 lambda!130039))))

(assert (=> d!1246325 true))

(assert (=> d!1246325 (< (dynLambda!20063 order!24627 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) (dynLambda!20064 order!24629 lambda!130044))))

(assert (=> d!1246325 true))

(assert (=> d!1246325 (< (dynLambda!20065 order!24631 (toValue!10648 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) (dynLambda!20064 order!24629 lambda!130044))))

(assert (=> d!1246325 (= (semiInverseModEq!3439 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (toValue!10648 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) (Forall!1589 lambda!130044))))

(declare-fun bs!598128 () Bool)

(assert (= bs!598128 d!1246325))

(declare-fun m!4821583 () Bool)

(assert (=> bs!598128 m!4821583))

(assert (=> d!1246139 d!1246325))

(declare-fun d!1246329 () Bool)

(assert (=> d!1246329 (= (inv!17 (value!245914 (h!52222 addTokens!17))) (= (charsToBigInt!1 (text!57414 (value!245914 (h!52222 addTokens!17)))) (value!245906 (value!245914 (h!52222 addTokens!17)))))))

(declare-fun bs!598129 () Bool)

(assert (= bs!598129 d!1246329))

(declare-fun m!4821587 () Bool)

(assert (=> bs!598129 m!4821587))

(assert (=> b!4235534 d!1246329))

(declare-fun bs!598133 () Bool)

(declare-fun d!1246333 () Bool)

(assert (= bs!598133 (and d!1246333 d!1246141)))

(declare-fun lambda!130048 () Int)

(assert (=> bs!598133 (= lambda!130048 lambda!130025)))

(declare-fun bs!598134 () Bool)

(assert (= bs!598134 (and d!1246333 d!1246299)))

(assert (=> bs!598134 (= lambda!130048 lambda!130041)))

(assert (=> d!1246333 true))

(declare-fun lt!1505801 () Bool)

(assert (=> d!1246333 (= lt!1505801 (rulesValidInductive!2962 thiss!21540 rules!2932))))

(assert (=> d!1246333 (= lt!1505801 (forall!8530 rules!2932 lambda!130048))))

(assert (=> d!1246333 (= (rulesValid!3062 thiss!21540 rules!2932) lt!1505801)))

(declare-fun bs!598136 () Bool)

(assert (= bs!598136 d!1246333))

(assert (=> bs!598136 m!4821095))

(declare-fun m!4821617 () Bool)

(assert (=> bs!598136 m!4821617))

(assert (=> d!1246135 d!1246333))

(declare-fun d!1246349 () Bool)

(declare-fun lt!1505802 () Int)

(assert (=> d!1246349 (>= lt!1505802 0)))

(declare-fun e!2630215 () Int)

(assert (=> d!1246349 (= lt!1505802 e!2630215)))

(declare-fun c!719966 () Bool)

(assert (=> d!1246349 (= c!719966 ((_ is Nil!46801) (originalCharacters!8252 (h!52222 tokens!581))))))

(assert (=> d!1246349 (= (size!34289 (originalCharacters!8252 (h!52222 tokens!581))) lt!1505802)))

(declare-fun b!4235802 () Bool)

(assert (=> b!4235802 (= e!2630215 0)))

(declare-fun b!4235803 () Bool)

(assert (=> b!4235803 (= e!2630215 (+ 1 (size!34289 (t!349628 (originalCharacters!8252 (h!52222 tokens!581))))))))

(assert (= (and d!1246349 c!719966) b!4235802))

(assert (= (and d!1246349 (not c!719966)) b!4235803))

(declare-fun m!4821619 () Bool)

(assert (=> b!4235803 m!4821619))

(assert (=> b!4235539 d!1246349))

(declare-fun d!1246351 () Bool)

(assert (=> d!1246351 (= (inv!16 (value!245914 (h!52222 addTokens!17))) (= (charsToInt!0 (text!57413 (value!245914 (h!52222 addTokens!17)))) (value!245905 (value!245914 (h!52222 addTokens!17)))))))

(declare-fun bs!598137 () Bool)

(assert (= bs!598137 d!1246351))

(declare-fun m!4821621 () Bool)

(assert (=> bs!598137 m!4821621))

(assert (=> b!4235535 d!1246351))

(declare-fun d!1246353 () Bool)

(declare-fun lt!1505803 () Int)

(assert (=> d!1246353 (>= lt!1505803 0)))

(declare-fun e!2630216 () Int)

(assert (=> d!1246353 (= lt!1505803 e!2630216)))

(declare-fun c!719967 () Bool)

(assert (=> d!1246353 (= c!719967 ((_ is Nil!46802) (t!349629 addTokens!17)))))

(assert (=> d!1246353 (= (size!34288 (t!349629 addTokens!17)) lt!1505803)))

(declare-fun b!4235804 () Bool)

(assert (=> b!4235804 (= e!2630216 0)))

(declare-fun b!4235805 () Bool)

(assert (=> b!4235805 (= e!2630216 (+ 1 (size!34288 (t!349629 (t!349629 addTokens!17)))))))

(assert (= (and d!1246353 c!719967) b!4235804))

(assert (= (and d!1246353 (not c!719967)) b!4235805))

(declare-fun m!4821623 () Bool)

(assert (=> b!4235805 m!4821623))

(assert (=> b!4235546 d!1246353))

(declare-fun d!1246355 () Bool)

(assert (=> d!1246355 (= (list!16879 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581)))) (list!16881 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581))))))))

(declare-fun bs!598138 () Bool)

(assert (= bs!598138 d!1246355))

(declare-fun m!4821625 () Bool)

(assert (=> bs!598138 m!4821625))

(assert (=> b!4235538 d!1246355))

(declare-fun b!4235809 () Bool)

(declare-fun e!2630217 () Bool)

(declare-fun tp!1297175 () Bool)

(declare-fun tp!1297172 () Bool)

(assert (=> b!4235809 (= e!2630217 (and tp!1297175 tp!1297172))))

(declare-fun b!4235806 () Bool)

(assert (=> b!4235806 (= e!2630217 tp_is_empty!22617)))

(assert (=> b!4235563 (= tp!1297119 e!2630217)))

(declare-fun b!4235807 () Bool)

(declare-fun tp!1297174 () Bool)

(declare-fun tp!1297171 () Bool)

(assert (=> b!4235807 (= e!2630217 (and tp!1297174 tp!1297171))))

(declare-fun b!4235808 () Bool)

(declare-fun tp!1297173 () Bool)

(assert (=> b!4235808 (= e!2630217 tp!1297173)))

(assert (= (and b!4235563 ((_ is ElementMatch!12813) (regOne!26138 (regex!7908 (h!52223 rules!2932))))) b!4235806))

(assert (= (and b!4235563 ((_ is Concat!20952) (regOne!26138 (regex!7908 (h!52223 rules!2932))))) b!4235807))

(assert (= (and b!4235563 ((_ is Star!12813) (regOne!26138 (regex!7908 (h!52223 rules!2932))))) b!4235808))

(assert (= (and b!4235563 ((_ is Union!12813) (regOne!26138 (regex!7908 (h!52223 rules!2932))))) b!4235809))

(declare-fun b!4235813 () Bool)

(declare-fun e!2630218 () Bool)

(declare-fun tp!1297180 () Bool)

(declare-fun tp!1297177 () Bool)

(assert (=> b!4235813 (= e!2630218 (and tp!1297180 tp!1297177))))

(declare-fun b!4235810 () Bool)

(assert (=> b!4235810 (= e!2630218 tp_is_empty!22617)))

(assert (=> b!4235563 (= tp!1297116 e!2630218)))

(declare-fun b!4235811 () Bool)

(declare-fun tp!1297179 () Bool)

(declare-fun tp!1297176 () Bool)

(assert (=> b!4235811 (= e!2630218 (and tp!1297179 tp!1297176))))

(declare-fun b!4235812 () Bool)

(declare-fun tp!1297178 () Bool)

(assert (=> b!4235812 (= e!2630218 tp!1297178)))

(assert (= (and b!4235563 ((_ is ElementMatch!12813) (regTwo!26138 (regex!7908 (h!52223 rules!2932))))) b!4235810))

(assert (= (and b!4235563 ((_ is Concat!20952) (regTwo!26138 (regex!7908 (h!52223 rules!2932))))) b!4235811))

(assert (= (and b!4235563 ((_ is Star!12813) (regTwo!26138 (regex!7908 (h!52223 rules!2932))))) b!4235812))

(assert (= (and b!4235563 ((_ is Union!12813) (regTwo!26138 (regex!7908 (h!52223 rules!2932))))) b!4235813))

(declare-fun b!4235814 () Bool)

(declare-fun e!2630219 () Bool)

(declare-fun tp!1297181 () Bool)

(assert (=> b!4235814 (= e!2630219 (and tp_is_empty!22617 tp!1297181))))

(assert (=> b!4235582 (= tp!1297139 e!2630219)))

(assert (= (and b!4235582 ((_ is Cons!46801) (originalCharacters!8252 (h!52222 (t!349629 addTokens!17))))) b!4235814))

(declare-fun b!4235818 () Bool)

(declare-fun e!2630220 () Bool)

(declare-fun tp!1297186 () Bool)

(declare-fun tp!1297183 () Bool)

(assert (=> b!4235818 (= e!2630220 (and tp!1297186 tp!1297183))))

(declare-fun b!4235815 () Bool)

(assert (=> b!4235815 (= e!2630220 tp_is_empty!22617)))

(assert (=> b!4235599 (= tp!1297158 e!2630220)))

(declare-fun b!4235816 () Bool)

(declare-fun tp!1297185 () Bool)

(declare-fun tp!1297182 () Bool)

(assert (=> b!4235816 (= e!2630220 (and tp!1297185 tp!1297182))))

(declare-fun b!4235817 () Bool)

(declare-fun tp!1297184 () Bool)

(assert (=> b!4235817 (= e!2630220 tp!1297184)))

(assert (= (and b!4235599 ((_ is ElementMatch!12813) (regex!7908 (h!52223 (t!349630 rules!2932))))) b!4235815))

(assert (= (and b!4235599 ((_ is Concat!20952) (regex!7908 (h!52223 (t!349630 rules!2932))))) b!4235816))

(assert (= (and b!4235599 ((_ is Star!12813) (regex!7908 (h!52223 (t!349630 rules!2932))))) b!4235817))

(assert (= (and b!4235599 ((_ is Union!12813) (regex!7908 (h!52223 (t!349630 rules!2932))))) b!4235818))

(declare-fun b!4235822 () Bool)

(declare-fun e!2630221 () Bool)

(declare-fun tp!1297191 () Bool)

(declare-fun tp!1297188 () Bool)

(assert (=> b!4235822 (= e!2630221 (and tp!1297191 tp!1297188))))

(declare-fun b!4235819 () Bool)

(assert (=> b!4235819 (= e!2630221 tp_is_empty!22617)))

(assert (=> b!4235564 (= tp!1297118 e!2630221)))

(declare-fun b!4235820 () Bool)

(declare-fun tp!1297190 () Bool)

(declare-fun tp!1297187 () Bool)

(assert (=> b!4235820 (= e!2630221 (and tp!1297190 tp!1297187))))

(declare-fun b!4235821 () Bool)

(declare-fun tp!1297189 () Bool)

(assert (=> b!4235821 (= e!2630221 tp!1297189)))

(assert (= (and b!4235564 ((_ is ElementMatch!12813) (reg!13142 (regex!7908 (h!52223 rules!2932))))) b!4235819))

(assert (= (and b!4235564 ((_ is Concat!20952) (reg!13142 (regex!7908 (h!52223 rules!2932))))) b!4235820))

(assert (= (and b!4235564 ((_ is Star!12813) (reg!13142 (regex!7908 (h!52223 rules!2932))))) b!4235821))

(assert (= (and b!4235564 ((_ is Union!12813) (reg!13142 (regex!7908 (h!52223 rules!2932))))) b!4235822))

(declare-fun b!4235826 () Bool)

(declare-fun e!2630222 () Bool)

(declare-fun tp!1297196 () Bool)

(declare-fun tp!1297193 () Bool)

(assert (=> b!4235826 (= e!2630222 (and tp!1297196 tp!1297193))))

(declare-fun b!4235823 () Bool)

(assert (=> b!4235823 (= e!2630222 tp_is_empty!22617)))

(assert (=> b!4235583 (= tp!1297138 e!2630222)))

(declare-fun b!4235824 () Bool)

(declare-fun tp!1297195 () Bool)

(declare-fun tp!1297192 () Bool)

(assert (=> b!4235824 (= e!2630222 (and tp!1297195 tp!1297192))))

(declare-fun b!4235825 () Bool)

(declare-fun tp!1297194 () Bool)

(assert (=> b!4235825 (= e!2630222 tp!1297194)))

(assert (= (and b!4235583 ((_ is ElementMatch!12813) (regex!7908 (rule!11032 (h!52222 (t!349629 addTokens!17)))))) b!4235823))

(assert (= (and b!4235583 ((_ is Concat!20952) (regex!7908 (rule!11032 (h!52222 (t!349629 addTokens!17)))))) b!4235824))

(assert (= (and b!4235583 ((_ is Star!12813) (regex!7908 (rule!11032 (h!52222 (t!349629 addTokens!17)))))) b!4235825))

(assert (= (and b!4235583 ((_ is Union!12813) (regex!7908 (rule!11032 (h!52222 (t!349629 addTokens!17)))))) b!4235826))

(declare-fun b!4235830 () Bool)

(declare-fun b_free!125131 () Bool)

(declare-fun b_next!125835 () Bool)

(assert (=> b!4235830 (= b_free!125131 (not b_next!125835))))

(declare-fun tp!1297201 () Bool)

(declare-fun b_and!334553 () Bool)

(assert (=> b!4235830 (= tp!1297201 b_and!334553)))

(declare-fun b_free!125133 () Bool)

(declare-fun b_next!125837 () Bool)

(assert (=> b!4235830 (= b_free!125133 (not b_next!125837))))

(declare-fun t!349730 () Bool)

(declare-fun tb!253991 () Bool)

(assert (=> (and b!4235830 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 (t!349629 tokens!581)))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) t!349730) tb!253991))

(declare-fun result!309840 () Bool)

(assert (= result!309840 result!309732))

(assert (=> b!4235388 t!349730))

(declare-fun t!349732 () Bool)

(declare-fun tb!253993 () Bool)

(assert (=> (and b!4235830 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 (t!349629 tokens!581)))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) t!349732) tb!253993))

(declare-fun result!309842 () Bool)

(assert (= result!309842 result!309766))

(assert (=> b!4235538 t!349732))

(declare-fun t!349734 () Bool)

(declare-fun tb!253995 () Bool)

(assert (=> (and b!4235830 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 (t!349629 tokens!581)))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581)))))) t!349734) tb!253995))

(declare-fun result!309844 () Bool)

(assert (= result!309844 result!309792))

(assert (=> b!4235640 t!349734))

(declare-fun tb!253997 () Bool)

(declare-fun t!349736 () Bool)

(assert (=> (and b!4235830 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 (t!349629 tokens!581)))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17)))))) t!349736) tb!253997))

(declare-fun result!309846 () Bool)

(assert (= result!309846 result!309804))

(assert (=> b!4235651 t!349736))

(declare-fun b_and!334555 () Bool)

(declare-fun tp!1297200 () Bool)

(assert (=> b!4235830 (= tp!1297200 (and (=> t!349730 result!309840) (=> t!349732 result!309842) (=> t!349734 result!309844) (=> t!349736 result!309846) b_and!334555))))

(declare-fun tp!1297198 () Bool)

(declare-fun e!2630223 () Bool)

(declare-fun e!2630227 () Bool)

(declare-fun b!4235829 () Bool)

(assert (=> b!4235829 (= e!2630227 (and tp!1297198 (inv!61520 (tag!8772 (rule!11032 (h!52222 (t!349629 (t!349629 tokens!581)))))) (inv!61523 (transformation!7908 (rule!11032 (h!52222 (t!349629 (t!349629 tokens!581)))))) e!2630223))))

(declare-fun e!2630228 () Bool)

(declare-fun e!2630225 () Bool)

(declare-fun b!4235827 () Bool)

(declare-fun tp!1297197 () Bool)

(assert (=> b!4235827 (= e!2630225 (and (inv!61524 (h!52222 (t!349629 (t!349629 tokens!581)))) e!2630228 tp!1297197))))

(declare-fun b!4235828 () Bool)

(declare-fun tp!1297199 () Bool)

(assert (=> b!4235828 (= e!2630228 (and (inv!21 (value!245914 (h!52222 (t!349629 (t!349629 tokens!581))))) e!2630227 tp!1297199))))

(assert (=> b!4235602 (= tp!1297161 e!2630225)))

(assert (=> b!4235830 (= e!2630223 (and tp!1297201 tp!1297200))))

(assert (= b!4235829 b!4235830))

(assert (= b!4235828 b!4235829))

(assert (= b!4235827 b!4235828))

(assert (= (and b!4235602 ((_ is Cons!46802) (t!349629 (t!349629 tokens!581)))) b!4235827))

(declare-fun m!4821629 () Bool)

(assert (=> b!4235829 m!4821629))

(declare-fun m!4821631 () Bool)

(assert (=> b!4235829 m!4821631))

(declare-fun m!4821633 () Bool)

(assert (=> b!4235827 m!4821633))

(declare-fun m!4821635 () Bool)

(assert (=> b!4235828 m!4821635))

(declare-fun b!4235834 () Bool)

(declare-fun b_free!125135 () Bool)

(declare-fun b_next!125839 () Bool)

(assert (=> b!4235834 (= b_free!125135 (not b_next!125839))))

(declare-fun tp!1297206 () Bool)

(declare-fun b_and!334557 () Bool)

(assert (=> b!4235834 (= tp!1297206 b_and!334557)))

(declare-fun b_free!125137 () Bool)

(declare-fun b_next!125841 () Bool)

(assert (=> b!4235834 (= b_free!125137 (not b_next!125841))))

(declare-fun t!349738 () Bool)

(declare-fun tb!253999 () Bool)

(assert (=> (and b!4235834 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 (t!349629 addTokens!17)))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) t!349738) tb!253999))

(declare-fun result!309848 () Bool)

(assert (= result!309848 result!309732))

(assert (=> b!4235388 t!349738))

(declare-fun tb!254001 () Bool)

(declare-fun t!349740 () Bool)

(assert (=> (and b!4235834 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 (t!349629 addTokens!17)))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) t!349740) tb!254001))

(declare-fun result!309850 () Bool)

(assert (= result!309850 result!309766))

(assert (=> b!4235538 t!349740))

(declare-fun tb!254003 () Bool)

(declare-fun t!349742 () Bool)

(assert (=> (and b!4235834 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 (t!349629 addTokens!17)))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581)))))) t!349742) tb!254003))

(declare-fun result!309852 () Bool)

(assert (= result!309852 result!309792))

(assert (=> b!4235640 t!349742))

(declare-fun t!349744 () Bool)

(declare-fun tb!254005 () Bool)

(assert (=> (and b!4235834 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 (t!349629 addTokens!17)))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17)))))) t!349744) tb!254005))

(declare-fun result!309854 () Bool)

(assert (= result!309854 result!309804))

(assert (=> b!4235651 t!349744))

(declare-fun b_and!334559 () Bool)

(declare-fun tp!1297205 () Bool)

(assert (=> b!4235834 (= tp!1297205 (and (=> t!349738 result!309848) (=> t!349740 result!309850) (=> t!349742 result!309852) (=> t!349744 result!309854) b_and!334559))))

(declare-fun tp!1297203 () Bool)

(declare-fun b!4235833 () Bool)

(declare-fun e!2630233 () Bool)

(declare-fun e!2630229 () Bool)

(assert (=> b!4235833 (= e!2630233 (and tp!1297203 (inv!61520 (tag!8772 (rule!11032 (h!52222 (t!349629 (t!349629 addTokens!17)))))) (inv!61523 (transformation!7908 (rule!11032 (h!52222 (t!349629 (t!349629 addTokens!17)))))) e!2630229))))

(declare-fun e!2630234 () Bool)

(declare-fun tp!1297202 () Bool)

(declare-fun e!2630231 () Bool)

(declare-fun b!4235831 () Bool)

(assert (=> b!4235831 (= e!2630231 (and (inv!61524 (h!52222 (t!349629 (t!349629 addTokens!17)))) e!2630234 tp!1297202))))

(declare-fun tp!1297204 () Bool)

(declare-fun b!4235832 () Bool)

(assert (=> b!4235832 (= e!2630234 (and (inv!21 (value!245914 (h!52222 (t!349629 (t!349629 addTokens!17))))) e!2630233 tp!1297204))))

(assert (=> b!4235581 (= tp!1297137 e!2630231)))

(assert (=> b!4235834 (= e!2630229 (and tp!1297206 tp!1297205))))

(assert (= b!4235833 b!4235834))

(assert (= b!4235832 b!4235833))

(assert (= b!4235831 b!4235832))

(assert (= (and b!4235581 ((_ is Cons!46802) (t!349629 (t!349629 addTokens!17)))) b!4235831))

(declare-fun m!4821637 () Bool)

(assert (=> b!4235833 m!4821637))

(declare-fun m!4821639 () Bool)

(assert (=> b!4235833 m!4821639))

(declare-fun m!4821641 () Bool)

(assert (=> b!4235831 m!4821641))

(declare-fun m!4821643 () Bool)

(assert (=> b!4235832 m!4821643))

(declare-fun b!4235841 () Bool)

(declare-fun b_free!125139 () Bool)

(declare-fun b_next!125843 () Bool)

(assert (=> b!4235841 (= b_free!125139 (not b_next!125843))))

(declare-fun tp!1297207 () Bool)

(declare-fun b_and!334561 () Bool)

(assert (=> b!4235841 (= tp!1297207 b_and!334561)))

(declare-fun b_free!125141 () Bool)

(declare-fun b_next!125845 () Bool)

(assert (=> b!4235841 (= b_free!125141 (not b_next!125845))))

(declare-fun t!349746 () Bool)

(declare-fun tb!254007 () Bool)

(assert (=> (and b!4235841 (= (toChars!10507 (transformation!7908 (h!52223 (t!349630 (t!349630 rules!2932))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17))))) t!349746) tb!254007))

(declare-fun result!309856 () Bool)

(assert (= result!309856 result!309732))

(assert (=> b!4235388 t!349746))

(declare-fun t!349748 () Bool)

(declare-fun tb!254009 () Bool)

(assert (=> (and b!4235841 (= (toChars!10507 (transformation!7908 (h!52223 (t!349630 (t!349630 rules!2932))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581))))) t!349748) tb!254009))

(declare-fun result!309858 () Bool)

(assert (= result!309858 result!309766))

(assert (=> b!4235538 t!349748))

(declare-fun t!349750 () Bool)

(declare-fun tb!254011 () Bool)

(assert (=> (and b!4235841 (= (toChars!10507 (transformation!7908 (h!52223 (t!349630 (t!349630 rules!2932))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581)))))) t!349750) tb!254011))

(declare-fun result!309860 () Bool)

(assert (= result!309860 result!309792))

(assert (=> b!4235640 t!349750))

(declare-fun t!349752 () Bool)

(declare-fun tb!254013 () Bool)

(assert (=> (and b!4235841 (= (toChars!10507 (transformation!7908 (h!52223 (t!349630 (t!349630 rules!2932))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17)))))) t!349752) tb!254013))

(declare-fun result!309862 () Bool)

(assert (= result!309862 result!309804))

(assert (=> b!4235651 t!349752))

(declare-fun b_and!334563 () Bool)

(declare-fun tp!1297210 () Bool)

(assert (=> b!4235841 (= tp!1297210 (and (=> t!349746 result!309856) (=> t!349748 result!309858) (=> t!349750 result!309860) (=> t!349752 result!309862) b_and!334563))))

(declare-fun e!2630240 () Bool)

(assert (=> b!4235841 (= e!2630240 (and tp!1297207 tp!1297210))))

(declare-fun e!2630239 () Bool)

(declare-fun tp!1297209 () Bool)

(declare-fun b!4235840 () Bool)

(assert (=> b!4235840 (= e!2630239 (and tp!1297209 (inv!61520 (tag!8772 (h!52223 (t!349630 (t!349630 rules!2932))))) (inv!61523 (transformation!7908 (h!52223 (t!349630 (t!349630 rules!2932))))) e!2630240))))

(declare-fun b!4235839 () Bool)

(declare-fun e!2630237 () Bool)

(declare-fun tp!1297208 () Bool)

(assert (=> b!4235839 (= e!2630237 (and e!2630239 tp!1297208))))

(assert (=> b!4235598 (= tp!1297157 e!2630237)))

(assert (= b!4235840 b!4235841))

(assert (= b!4235839 b!4235840))

(assert (= (and b!4235598 ((_ is Cons!46803) (t!349630 (t!349630 rules!2932)))) b!4235839))

(declare-fun m!4821645 () Bool)

(assert (=> b!4235840 m!4821645))

(declare-fun m!4821647 () Bool)

(assert (=> b!4235840 m!4821647))

(declare-fun tp!1297217 () Bool)

(declare-fun e!2630250 () Bool)

(declare-fun b!4235857 () Bool)

(declare-fun tp!1297219 () Bool)

(assert (=> b!4235857 (= e!2630250 (and (inv!61527 (left!34803 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581)))))) tp!1297217 (inv!61527 (right!35133 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581)))))) tp!1297219))))

(declare-fun b!4235859 () Bool)

(declare-fun e!2630249 () Bool)

(declare-fun tp!1297218 () Bool)

(assert (=> b!4235859 (= e!2630249 tp!1297218)))

(declare-fun b!4235858 () Bool)

(declare-fun inv!61534 (IArray!28243) Bool)

(assert (=> b!4235858 (= e!2630250 (and (inv!61534 (xs!17425 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581)))))) e!2630249))))

(assert (=> b!4235540 (= tp!1297102 (and (inv!61527 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581))))) e!2630250))))

(assert (= (and b!4235540 ((_ is Node!14119) (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581)))))) b!4235857))

(assert (= b!4235858 b!4235859))

(assert (= (and b!4235540 ((_ is Leaf!21832) (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (value!245914 (h!52222 tokens!581)))))) b!4235858))

(declare-fun m!4821661 () Bool)

(assert (=> b!4235857 m!4821661))

(declare-fun m!4821663 () Bool)

(assert (=> b!4235857 m!4821663))

(declare-fun m!4821665 () Bool)

(assert (=> b!4235858 m!4821665))

(assert (=> b!4235540 m!4821281))

(declare-fun tp!1297220 () Bool)

(declare-fun tp!1297222 () Bool)

(declare-fun e!2630252 () Bool)

(declare-fun b!4235860 () Bool)

(assert (=> b!4235860 (= e!2630252 (and (inv!61527 (left!34803 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17)))))) tp!1297220 (inv!61527 (right!35133 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17)))))) tp!1297222))))

(declare-fun b!4235862 () Bool)

(declare-fun e!2630251 () Bool)

(declare-fun tp!1297221 () Bool)

(assert (=> b!4235862 (= e!2630251 tp!1297221)))

(declare-fun b!4235861 () Bool)

(assert (=> b!4235861 (= e!2630252 (and (inv!61534 (xs!17425 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17)))))) e!2630251))))

(assert (=> b!4235394 (= tp!1297036 (and (inv!61527 (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17))))) e!2630252))))

(assert (= (and b!4235394 ((_ is Node!14119) (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17)))))) b!4235860))

(assert (= b!4235861 b!4235862))

(assert (= (and b!4235394 ((_ is Leaf!21832) (c!719887 (dynLambda!20062 (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (value!245914 (h!52222 addTokens!17)))))) b!4235861))

(declare-fun m!4821667 () Bool)

(assert (=> b!4235860 m!4821667))

(declare-fun m!4821669 () Bool)

(assert (=> b!4235860 m!4821669))

(declare-fun m!4821671 () Bool)

(assert (=> b!4235861 m!4821671))

(assert (=> b!4235394 m!4821169))

(declare-fun b!4235866 () Bool)

(declare-fun e!2630253 () Bool)

(declare-fun tp!1297227 () Bool)

(declare-fun tp!1297224 () Bool)

(assert (=> b!4235866 (= e!2630253 (and tp!1297227 tp!1297224))))

(declare-fun b!4235863 () Bool)

(assert (=> b!4235863 (= e!2630253 tp_is_empty!22617)))

(assert (=> b!4235604 (= tp!1297162 e!2630253)))

(declare-fun b!4235864 () Bool)

(declare-fun tp!1297226 () Bool)

(declare-fun tp!1297223 () Bool)

(assert (=> b!4235864 (= e!2630253 (and tp!1297226 tp!1297223))))

(declare-fun b!4235865 () Bool)

(declare-fun tp!1297225 () Bool)

(assert (=> b!4235865 (= e!2630253 tp!1297225)))

(assert (= (and b!4235604 ((_ is ElementMatch!12813) (regex!7908 (rule!11032 (h!52222 (t!349629 tokens!581)))))) b!4235863))

(assert (= (and b!4235604 ((_ is Concat!20952) (regex!7908 (rule!11032 (h!52222 (t!349629 tokens!581)))))) b!4235864))

(assert (= (and b!4235604 ((_ is Star!12813) (regex!7908 (rule!11032 (h!52222 (t!349629 tokens!581)))))) b!4235865))

(assert (= (and b!4235604 ((_ is Union!12813) (regex!7908 (rule!11032 (h!52222 (t!349629 tokens!581)))))) b!4235866))

(declare-fun b!4235870 () Bool)

(declare-fun e!2630254 () Bool)

(declare-fun tp!1297232 () Bool)

(declare-fun tp!1297229 () Bool)

(assert (=> b!4235870 (= e!2630254 (and tp!1297232 tp!1297229))))

(declare-fun b!4235867 () Bool)

(assert (=> b!4235867 (= e!2630254 tp_is_empty!22617)))

(assert (=> b!4235587 (= tp!1297146 e!2630254)))

(declare-fun b!4235868 () Bool)

(declare-fun tp!1297231 () Bool)

(declare-fun tp!1297228 () Bool)

(assert (=> b!4235868 (= e!2630254 (and tp!1297231 tp!1297228))))

(declare-fun b!4235869 () Bool)

(declare-fun tp!1297230 () Bool)

(assert (=> b!4235869 (= e!2630254 tp!1297230)))

(assert (= (and b!4235587 ((_ is ElementMatch!12813) (regOne!26138 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235867))

(assert (= (and b!4235587 ((_ is Concat!20952) (regOne!26138 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235868))

(assert (= (and b!4235587 ((_ is Star!12813) (regOne!26138 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235869))

(assert (= (and b!4235587 ((_ is Union!12813) (regOne!26138 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235870))

(declare-fun b!4235874 () Bool)

(declare-fun e!2630255 () Bool)

(declare-fun tp!1297237 () Bool)

(declare-fun tp!1297234 () Bool)

(assert (=> b!4235874 (= e!2630255 (and tp!1297237 tp!1297234))))

(declare-fun b!4235871 () Bool)

(assert (=> b!4235871 (= e!2630255 tp_is_empty!22617)))

(assert (=> b!4235587 (= tp!1297143 e!2630255)))

(declare-fun b!4235872 () Bool)

(declare-fun tp!1297236 () Bool)

(declare-fun tp!1297233 () Bool)

(assert (=> b!4235872 (= e!2630255 (and tp!1297236 tp!1297233))))

(declare-fun b!4235873 () Bool)

(declare-fun tp!1297235 () Bool)

(assert (=> b!4235873 (= e!2630255 tp!1297235)))

(assert (= (and b!4235587 ((_ is ElementMatch!12813) (regTwo!26138 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235871))

(assert (= (and b!4235587 ((_ is Concat!20952) (regTwo!26138 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235872))

(assert (= (and b!4235587 ((_ is Star!12813) (regTwo!26138 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235873))

(assert (= (and b!4235587 ((_ is Union!12813) (regTwo!26138 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235874))

(declare-fun b!4235882 () Bool)

(declare-fun e!2630258 () Bool)

(declare-fun tp!1297246 () Bool)

(declare-fun tp!1297241 () Bool)

(assert (=> b!4235882 (= e!2630258 (and tp!1297246 tp!1297241))))

(declare-fun b!4235879 () Bool)

(assert (=> b!4235879 (= e!2630258 tp_is_empty!22617)))

(assert (=> b!4235565 (= tp!1297120 e!2630258)))

(declare-fun b!4235880 () Bool)

(declare-fun tp!1297245 () Bool)

(declare-fun tp!1297240 () Bool)

(assert (=> b!4235880 (= e!2630258 (and tp!1297245 tp!1297240))))

(declare-fun b!4235881 () Bool)

(declare-fun tp!1297244 () Bool)

(assert (=> b!4235881 (= e!2630258 tp!1297244)))

(assert (= (and b!4235565 ((_ is ElementMatch!12813) (regOne!26139 (regex!7908 (h!52223 rules!2932))))) b!4235879))

(assert (= (and b!4235565 ((_ is Concat!20952) (regOne!26139 (regex!7908 (h!52223 rules!2932))))) b!4235880))

(assert (= (and b!4235565 ((_ is Star!12813) (regOne!26139 (regex!7908 (h!52223 rules!2932))))) b!4235881))

(assert (= (and b!4235565 ((_ is Union!12813) (regOne!26139 (regex!7908 (h!52223 rules!2932))))) b!4235882))

(declare-fun b!4235890 () Bool)

(declare-fun e!2630261 () Bool)

(declare-fun tp!1297253 () Bool)

(declare-fun tp!1297248 () Bool)

(assert (=> b!4235890 (= e!2630261 (and tp!1297253 tp!1297248))))

(declare-fun b!4235887 () Bool)

(assert (=> b!4235887 (= e!2630261 tp_is_empty!22617)))

(assert (=> b!4235565 (= tp!1297117 e!2630261)))

(declare-fun b!4235888 () Bool)

(declare-fun tp!1297252 () Bool)

(declare-fun tp!1297247 () Bool)

(assert (=> b!4235888 (= e!2630261 (and tp!1297252 tp!1297247))))

(declare-fun b!4235889 () Bool)

(declare-fun tp!1297251 () Bool)

(assert (=> b!4235889 (= e!2630261 tp!1297251)))

(assert (= (and b!4235565 ((_ is ElementMatch!12813) (regTwo!26139 (regex!7908 (h!52223 rules!2932))))) b!4235887))

(assert (= (and b!4235565 ((_ is Concat!20952) (regTwo!26139 (regex!7908 (h!52223 rules!2932))))) b!4235888))

(assert (= (and b!4235565 ((_ is Star!12813) (regTwo!26139 (regex!7908 (h!52223 rules!2932))))) b!4235889))

(assert (= (and b!4235565 ((_ is Union!12813) (regTwo!26139 (regex!7908 (h!52223 rules!2932))))) b!4235890))

(declare-fun b!4235891 () Bool)

(declare-fun e!2630262 () Bool)

(declare-fun tp!1297254 () Bool)

(assert (=> b!4235891 (= e!2630262 (and tp_is_empty!22617 tp!1297254))))

(assert (=> b!4235603 (= tp!1297163 e!2630262)))

(assert (= (and b!4235603 ((_ is Cons!46801) (originalCharacters!8252 (h!52222 (t!349629 tokens!581))))) b!4235891))

(declare-fun b!4235895 () Bool)

(declare-fun e!2630263 () Bool)

(declare-fun tp!1297259 () Bool)

(declare-fun tp!1297256 () Bool)

(assert (=> b!4235895 (= e!2630263 (and tp!1297259 tp!1297256))))

(declare-fun b!4235892 () Bool)

(assert (=> b!4235892 (= e!2630263 tp_is_empty!22617)))

(assert (=> b!4235589 (= tp!1297147 e!2630263)))

(declare-fun b!4235893 () Bool)

(declare-fun tp!1297258 () Bool)

(declare-fun tp!1297255 () Bool)

(assert (=> b!4235893 (= e!2630263 (and tp!1297258 tp!1297255))))

(declare-fun b!4235894 () Bool)

(declare-fun tp!1297257 () Bool)

(assert (=> b!4235894 (= e!2630263 tp!1297257)))

(assert (= (and b!4235589 ((_ is ElementMatch!12813) (regOne!26139 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235892))

(assert (= (and b!4235589 ((_ is Concat!20952) (regOne!26139 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235893))

(assert (= (and b!4235589 ((_ is Star!12813) (regOne!26139 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235894))

(assert (= (and b!4235589 ((_ is Union!12813) (regOne!26139 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235895))

(declare-fun b!4235899 () Bool)

(declare-fun e!2630264 () Bool)

(declare-fun tp!1297264 () Bool)

(declare-fun tp!1297261 () Bool)

(assert (=> b!4235899 (= e!2630264 (and tp!1297264 tp!1297261))))

(declare-fun b!4235896 () Bool)

(assert (=> b!4235896 (= e!2630264 tp_is_empty!22617)))

(assert (=> b!4235589 (= tp!1297144 e!2630264)))

(declare-fun b!4235897 () Bool)

(declare-fun tp!1297263 () Bool)

(declare-fun tp!1297260 () Bool)

(assert (=> b!4235897 (= e!2630264 (and tp!1297263 tp!1297260))))

(declare-fun b!4235898 () Bool)

(declare-fun tp!1297262 () Bool)

(assert (=> b!4235898 (= e!2630264 tp!1297262)))

(assert (= (and b!4235589 ((_ is ElementMatch!12813) (regTwo!26139 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235896))

(assert (= (and b!4235589 ((_ is Concat!20952) (regTwo!26139 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235897))

(assert (= (and b!4235589 ((_ is Star!12813) (regTwo!26139 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235898))

(assert (= (and b!4235589 ((_ is Union!12813) (regTwo!26139 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235899))

(declare-fun b!4235903 () Bool)

(declare-fun e!2630265 () Bool)

(declare-fun tp!1297269 () Bool)

(declare-fun tp!1297266 () Bool)

(assert (=> b!4235903 (= e!2630265 (and tp!1297269 tp!1297266))))

(declare-fun b!4235900 () Bool)

(assert (=> b!4235900 (= e!2630265 tp_is_empty!22617)))

(assert (=> b!4235588 (= tp!1297145 e!2630265)))

(declare-fun b!4235901 () Bool)

(declare-fun tp!1297268 () Bool)

(declare-fun tp!1297265 () Bool)

(assert (=> b!4235901 (= e!2630265 (and tp!1297268 tp!1297265))))

(declare-fun b!4235902 () Bool)

(declare-fun tp!1297267 () Bool)

(assert (=> b!4235902 (= e!2630265 tp!1297267)))

(assert (= (and b!4235588 ((_ is ElementMatch!12813) (reg!13142 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235900))

(assert (= (and b!4235588 ((_ is Concat!20952) (reg!13142 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235901))

(assert (= (and b!4235588 ((_ is Star!12813) (reg!13142 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235902))

(assert (= (and b!4235588 ((_ is Union!12813) (reg!13142 (regex!7908 (rule!11032 (h!52222 tokens!581)))))) b!4235903))

(declare-fun b!4235907 () Bool)

(declare-fun e!2630266 () Bool)

(declare-fun tp!1297274 () Bool)

(declare-fun tp!1297271 () Bool)

(assert (=> b!4235907 (= e!2630266 (and tp!1297274 tp!1297271))))

(declare-fun b!4235904 () Bool)

(assert (=> b!4235904 (= e!2630266 tp_is_empty!22617)))

(assert (=> b!4235568 (= tp!1297123 e!2630266)))

(declare-fun b!4235905 () Bool)

(declare-fun tp!1297273 () Bool)

(declare-fun tp!1297270 () Bool)

(assert (=> b!4235905 (= e!2630266 (and tp!1297273 tp!1297270))))

(declare-fun b!4235906 () Bool)

(declare-fun tp!1297272 () Bool)

(assert (=> b!4235906 (= e!2630266 tp!1297272)))

(assert (= (and b!4235568 ((_ is ElementMatch!12813) (reg!13142 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235904))

(assert (= (and b!4235568 ((_ is Concat!20952) (reg!13142 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235905))

(assert (= (and b!4235568 ((_ is Star!12813) (reg!13142 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235906))

(assert (= (and b!4235568 ((_ is Union!12813) (reg!13142 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235907))

(declare-fun b!4235911 () Bool)

(declare-fun e!2630269 () Bool)

(declare-fun tp!1297278 () Bool)

(assert (=> b!4235911 (= e!2630269 (and tp_is_empty!22617 tp!1297278))))

(assert (=> b!4235601 (= tp!1297160 e!2630269)))

(assert (= (and b!4235601 ((_ is Cons!46801) (t!349628 (originalCharacters!8252 (h!52222 addTokens!17))))) b!4235911))

(declare-fun b!4235915 () Bool)

(declare-fun e!2630270 () Bool)

(declare-fun tp!1297283 () Bool)

(declare-fun tp!1297280 () Bool)

(assert (=> b!4235915 (= e!2630270 (and tp!1297283 tp!1297280))))

(declare-fun b!4235912 () Bool)

(assert (=> b!4235912 (= e!2630270 tp_is_empty!22617)))

(assert (=> b!4235567 (= tp!1297124 e!2630270)))

(declare-fun b!4235913 () Bool)

(declare-fun tp!1297282 () Bool)

(declare-fun tp!1297279 () Bool)

(assert (=> b!4235913 (= e!2630270 (and tp!1297282 tp!1297279))))

(declare-fun b!4235914 () Bool)

(declare-fun tp!1297281 () Bool)

(assert (=> b!4235914 (= e!2630270 tp!1297281)))

(assert (= (and b!4235567 ((_ is ElementMatch!12813) (regOne!26138 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235912))

(assert (= (and b!4235567 ((_ is Concat!20952) (regOne!26138 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235913))

(assert (= (and b!4235567 ((_ is Star!12813) (regOne!26138 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235914))

(assert (= (and b!4235567 ((_ is Union!12813) (regOne!26138 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235915))

(declare-fun b!4235919 () Bool)

(declare-fun e!2630271 () Bool)

(declare-fun tp!1297288 () Bool)

(declare-fun tp!1297285 () Bool)

(assert (=> b!4235919 (= e!2630271 (and tp!1297288 tp!1297285))))

(declare-fun b!4235916 () Bool)

(assert (=> b!4235916 (= e!2630271 tp_is_empty!22617)))

(assert (=> b!4235567 (= tp!1297121 e!2630271)))

(declare-fun b!4235917 () Bool)

(declare-fun tp!1297287 () Bool)

(declare-fun tp!1297284 () Bool)

(assert (=> b!4235917 (= e!2630271 (and tp!1297287 tp!1297284))))

(declare-fun b!4235918 () Bool)

(declare-fun tp!1297286 () Bool)

(assert (=> b!4235918 (= e!2630271 tp!1297286)))

(assert (= (and b!4235567 ((_ is ElementMatch!12813) (regTwo!26138 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235916))

(assert (= (and b!4235567 ((_ is Concat!20952) (regTwo!26138 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235917))

(assert (= (and b!4235567 ((_ is Star!12813) (regTwo!26138 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235918))

(assert (= (and b!4235567 ((_ is Union!12813) (regTwo!26138 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235919))

(declare-fun b!4235927 () Bool)

(declare-fun e!2630273 () Bool)

(declare-fun tp!1297298 () Bool)

(declare-fun tp!1297295 () Bool)

(assert (=> b!4235927 (= e!2630273 (and tp!1297298 tp!1297295))))

(declare-fun b!4235924 () Bool)

(assert (=> b!4235924 (= e!2630273 tp_is_empty!22617)))

(assert (=> b!4235569 (= tp!1297125 e!2630273)))

(declare-fun b!4235925 () Bool)

(declare-fun tp!1297297 () Bool)

(declare-fun tp!1297294 () Bool)

(assert (=> b!4235925 (= e!2630273 (and tp!1297297 tp!1297294))))

(declare-fun b!4235926 () Bool)

(declare-fun tp!1297296 () Bool)

(assert (=> b!4235926 (= e!2630273 tp!1297296)))

(assert (= (and b!4235569 ((_ is ElementMatch!12813) (regOne!26139 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235924))

(assert (= (and b!4235569 ((_ is Concat!20952) (regOne!26139 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235925))

(assert (= (and b!4235569 ((_ is Star!12813) (regOne!26139 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235926))

(assert (= (and b!4235569 ((_ is Union!12813) (regOne!26139 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235927))

(declare-fun b!4235932 () Bool)

(declare-fun e!2630274 () Bool)

(declare-fun tp!1297303 () Bool)

(declare-fun tp!1297300 () Bool)

(assert (=> b!4235932 (= e!2630274 (and tp!1297303 tp!1297300))))

(declare-fun b!4235928 () Bool)

(assert (=> b!4235928 (= e!2630274 tp_is_empty!22617)))

(assert (=> b!4235569 (= tp!1297122 e!2630274)))

(declare-fun b!4235929 () Bool)

(declare-fun tp!1297302 () Bool)

(declare-fun tp!1297299 () Bool)

(assert (=> b!4235929 (= e!2630274 (and tp!1297302 tp!1297299))))

(declare-fun b!4235930 () Bool)

(declare-fun tp!1297301 () Bool)

(assert (=> b!4235930 (= e!2630274 tp!1297301)))

(assert (= (and b!4235569 ((_ is ElementMatch!12813) (regTwo!26139 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235928))

(assert (= (and b!4235569 ((_ is Concat!20952) (regTwo!26139 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235929))

(assert (= (and b!4235569 ((_ is Star!12813) (regTwo!26139 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235930))

(assert (= (and b!4235569 ((_ is Union!12813) (regTwo!26139 (regex!7908 (rule!11032 (h!52222 addTokens!17)))))) b!4235932))

(declare-fun b!4235937 () Bool)

(declare-fun e!2630278 () Bool)

(declare-fun tp!1297311 () Bool)

(assert (=> b!4235937 (= e!2630278 (and tp_is_empty!22617 tp!1297311))))

(assert (=> b!4235551 (= tp!1297105 e!2630278)))

(assert (= (and b!4235551 ((_ is Cons!46801) (t!349628 (t!349628 longerInput!51)))) b!4235937))

(declare-fun b!4235939 () Bool)

(declare-fun e!2630279 () Bool)

(declare-fun tp!1297312 () Bool)

(assert (=> b!4235939 (= e!2630279 (and tp_is_empty!22617 tp!1297312))))

(assert (=> b!4235585 (= tp!1297142 e!2630279)))

(assert (= (and b!4235585 ((_ is Cons!46801) (t!349628 (originalCharacters!8252 (h!52222 tokens!581))))) b!4235939))

(declare-fun b!4235940 () Bool)

(declare-fun e!2630280 () Bool)

(declare-fun tp!1297313 () Bool)

(assert (=> b!4235940 (= e!2630280 (and tp_is_empty!22617 tp!1297313))))

(assert (=> b!4235606 (= tp!1297166 e!2630280)))

(assert (= (and b!4235606 ((_ is Cons!46801) (t!349628 (t!349628 suffix!1262)))) b!4235940))

(declare-fun b!4235945 () Bool)

(declare-fun e!2630282 () Bool)

(declare-fun tp!1297319 () Bool)

(assert (=> b!4235945 (= e!2630282 (and tp_is_empty!22617 tp!1297319))))

(assert (=> b!4235570 (= tp!1297126 e!2630282)))

(assert (= (and b!4235570 ((_ is Cons!46801) (t!349628 (t!349628 shorterInput!51)))) b!4235945))

(declare-fun b_lambda!124671 () Bool)

(assert (= b_lambda!124661 (or (and b!4235600 b_free!125125 (= (toChars!10507 (transformation!7908 (h!52223 (t!349630 rules!2932)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))))) (and b!4235830 b_free!125133 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 (t!349629 tokens!581)))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))))) (and b!4235320 b_free!125097 (= (toChars!10507 (transformation!7908 (h!52223 rules!2932))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))))) (and b!4235311 b_free!125105 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))))) (and b!4235834 b_free!125137 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 (t!349629 addTokens!17)))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))))) (and b!4235327 b_free!125101 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))))) (and b!4235841 b_free!125141 (= (toChars!10507 (transformation!7908 (h!52223 (t!349630 (t!349630 rules!2932))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))))) (and b!4235584 b_free!125121) (and b!4235605 b_free!125129 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))))) b_lambda!124671)))

(declare-fun b_lambda!124673 () Bool)

(assert (= b_lambda!124665 (or d!1246141 b_lambda!124673)))

(declare-fun bs!598148 () Bool)

(declare-fun d!1246365 () Bool)

(assert (= bs!598148 (and d!1246365 d!1246141)))

(assert (=> bs!598148 (= (dynLambda!20071 lambda!130025 (h!52223 rules!2932)) (ruleValid!3596 thiss!21540 (h!52223 rules!2932)))))

(assert (=> bs!598148 m!4821267))

(assert (=> b!4235750 d!1246365))

(declare-fun b_lambda!124675 () Bool)

(assert (= b_lambda!124659 (or (and b!4235830 b_free!125133 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 (t!349629 tokens!581)))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))))) (and b!4235320 b_free!125097 (= (toChars!10507 (transformation!7908 (h!52223 rules!2932))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))))) (and b!4235605 b_free!125129) (and b!4235600 b_free!125125 (= (toChars!10507 (transformation!7908 (h!52223 (t!349630 rules!2932)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))))) (and b!4235311 b_free!125105 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 tokens!581)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))))) (and b!4235834 b_free!125137 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 (t!349629 addTokens!17)))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))))) (and b!4235841 b_free!125141 (= (toChars!10507 (transformation!7908 (h!52223 (t!349630 (t!349630 rules!2932))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))))) (and b!4235584 b_free!125121 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 addTokens!17))))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))))) (and b!4235327 b_free!125101 (= (toChars!10507 (transformation!7908 (rule!11032 (h!52222 addTokens!17)))) (toChars!10507 (transformation!7908 (rule!11032 (h!52222 (t!349629 tokens!581))))))) b_lambda!124675)))

(check-sat (not b!4235864) (not d!1246351) (not b_next!125829) (not b!4235769) b_and!334561 (not b!4235893) (not b!4235811) (not b!4235889) (not b!4235873) (not b!4235919) (not b!4235717) (not b_next!125823) (not b_lambda!124655) (not b!4235890) (not bm!293779) (not b!4235861) (not b!4235901) (not b!4235629) (not d!1246215) (not b_next!125833) (not b_next!125809) (not d!1246355) (not b!4235638) (not b!4235926) b_and!334563 (not b!4235660) b_and!334555 (not b!4235865) (not d!1246217) (not b!4235814) (not b!4235882) (not b!4235827) (not b!4235540) (not b!4235791) (not b!4235940) (not d!1246207) (not d!1246219) (not b!4235824) (not b!4235859) b_and!334527 (not b!4235759) (not b!4235903) (not b!4235857) (not b!4235828) b_and!334525 (not b!4235766) (not b!4235803) (not d!1246333) (not tb!253955) (not b!4235937) b_and!334553 (not b!4235939) (not b_lambda!124673) (not d!1246293) (not b!4235831) (not b!4235906) (not b!4235760) (not d!1246235) (not b!4235818) (not b!4235812) (not d!1246299) (not b!4235722) (not b!4235870) (not b!4235758) (not d!1246263) (not b!4235929) (not b!4235634) (not d!1246283) b_and!334557 (not b!4235394) (not d!1246213) (not b!4235872) (not b!4235925) (not b!4235832) tp_is_empty!22617 (not d!1246203) (not d!1246211) (not b_next!125841) (not b!4235833) (not b!4235731) (not b!4235628) (not b_next!125803) (not b_next!125801) (not b!4235902) (not d!1246231) (not b!4235751) (not b!4235866) (not b_next!125837) (not b!4235840) b_and!334493 (not b!4235869) (not b!4235898) (not b_next!125835) (not d!1246307) (not d!1246325) (not b!4235839) (not b!4235720) (not b!4235891) (not b!4235641) (not b_lambda!124675) (not b!4235767) (not b!4235735) (not b!4235932) (not b_next!125827) b_and!334453 (not b!4235930) (not b!4235627) (not b!4235905) (not b!4235631) b_and!334517 (not b!4235913) (not b!4235826) (not b!4235918) (not b!4235625) (not b!4235881) (not b!4235790) (not b!4235907) b_and!334445 (not b!4235653) (not b!4235899) (not b_next!125807) (not b!4235725) (not b!4235639) (not b!4235662) b_and!334519 (not d!1246329) (not b!4235652) (not b!4235642) (not b_next!125839) (not b!4235880) (not b_next!125831) (not b!4235915) (not b!4235635) (not b!4235807) (not b!4235894) (not b!4235718) (not b!4235817) (not b!4235721) (not b!4235651) (not b!4235640) (not b_next!125799) (not b!4235809) (not b!4235664) (not b!4235868) (not b!4235895) (not tb!253943) (not b!4235723) (not b!4235774) b_and!334559 (not b!4235821) (not b!4235633) b_and!334497 (not b!4235816) b_and!334449 (not b!4235805) (not b!4235724) (not b_next!125843) b_and!334523 (not b!4235874) (not b!4235822) (not b!4235829) (not b_next!125825) (not b!4235738) (not b!4235914) (not d!1246317) (not b_lambda!124671) (not b!4235733) b_and!334501 (not b!4235897) (not b!4235860) (not b_lambda!124657) (not d!1246287) (not bs!598148) (not b!4235820) (not b!4235927) (not b!4235825) (not b!4235888) (not d!1246227) (not b!4235808) (not d!1246225) (not b!4235911) (not b!4235813) (not b!4235917) (not b!4235858) (not d!1246319) (not d!1246221) (not b!4235862) (not b!4235945) b_and!334521 (not d!1246321) (not b_next!125805) (not b_next!125845))
(check-sat b_and!334553 b_and!334557 (not b_next!125841) (not b_next!125835) b_and!334517 b_and!334519 (not b_next!125799) b_and!334559 (not b_next!125825) b_and!334501 (not b_next!125829) b_and!334561 (not b_next!125833) (not b_next!125823) (not b_next!125809) b_and!334563 b_and!334555 b_and!334525 b_and!334527 (not b_next!125803) (not b_next!125801) b_and!334493 (not b_next!125837) (not b_next!125827) b_and!334453 (not b_next!125807) b_and!334445 (not b_next!125839) (not b_next!125831) b_and!334497 b_and!334449 b_and!334523 (not b_next!125843) b_and!334521 (not b_next!125805) (not b_next!125845))
