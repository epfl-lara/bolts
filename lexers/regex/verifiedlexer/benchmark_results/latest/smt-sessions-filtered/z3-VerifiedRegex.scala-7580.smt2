; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!400154 () Bool)

(assert start!400154)

(declare-fun b!4192115 () Bool)

(declare-fun b_free!122079 () Bool)

(declare-fun b_next!122783 () Bool)

(assert (=> b!4192115 (= b_free!122079 (not b_next!122783))))

(declare-fun tp!1280869 () Bool)

(declare-fun b_and!328505 () Bool)

(assert (=> b!4192115 (= tp!1280869 b_and!328505)))

(declare-fun b_free!122081 () Bool)

(declare-fun b_next!122785 () Bool)

(assert (=> b!4192115 (= b_free!122081 (not b_next!122785))))

(declare-fun tp!1280874 () Bool)

(declare-fun b_and!328507 () Bool)

(assert (=> b!4192115 (= tp!1280874 b_and!328507)))

(declare-fun b!4192106 () Bool)

(declare-fun b_free!122083 () Bool)

(declare-fun b_next!122787 () Bool)

(assert (=> b!4192106 (= b_free!122083 (not b_next!122787))))

(declare-fun tp!1280875 () Bool)

(declare-fun b_and!328509 () Bool)

(assert (=> b!4192106 (= tp!1280875 b_and!328509)))

(declare-fun b_free!122085 () Bool)

(declare-fun b_next!122789 () Bool)

(assert (=> b!4192106 (= b_free!122085 (not b_next!122789))))

(declare-fun tp!1280873 () Bool)

(declare-fun b_and!328511 () Bool)

(assert (=> b!4192106 (= tp!1280873 b_and!328511)))

(declare-fun b!4192116 () Bool)

(declare-fun b_free!122087 () Bool)

(declare-fun b_next!122791 () Bool)

(assert (=> b!4192116 (= b_free!122087 (not b_next!122791))))

(declare-fun tp!1280867 () Bool)

(declare-fun b_and!328513 () Bool)

(assert (=> b!4192116 (= tp!1280867 b_and!328513)))

(declare-fun b_free!122089 () Bool)

(declare-fun b_next!122793 () Bool)

(assert (=> b!4192116 (= b_free!122089 (not b_next!122793))))

(declare-fun tp!1280866 () Bool)

(declare-fun b_and!328515 () Bool)

(assert (=> b!4192116 (= tp!1280866 b_and!328515)))

(declare-fun b!4192104 () Bool)

(declare-fun res!1720582 () Bool)

(declare-fun e!2602316 () Bool)

(assert (=> b!4192104 (=> (not res!1720582) (not e!2602316))))

(declare-datatypes ((List!46165 0))(
  ( (Nil!46041) (Cons!46041 (h!51461 (_ BitVec 16)) (t!346048 List!46165)) )
))
(declare-datatypes ((TokenValue!7906 0))(
  ( (FloatLiteralValue!15812 (text!55787 List!46165)) (TokenValueExt!7905 (__x!28033 Int)) (Broken!39530 (value!239272 List!46165)) (Object!8029) (End!7906) (Def!7906) (Underscore!7906) (Match!7906) (Else!7906) (Error!7906) (Case!7906) (If!7906) (Extends!7906) (Abstract!7906) (Class!7906) (Val!7906) (DelimiterValue!15812 (del!7966 List!46165)) (KeywordValue!7912 (value!239273 List!46165)) (CommentValue!15812 (value!239274 List!46165)) (WhitespaceValue!15812 (value!239275 List!46165)) (IndentationValue!7906 (value!239276 List!46165)) (String!53395) (Int32!7906) (Broken!39531 (value!239277 List!46165)) (Boolean!7907) (Unit!65118) (OperatorValue!7909 (op!7966 List!46165)) (IdentifierValue!15812 (value!239278 List!46165)) (IdentifierValue!15813 (value!239279 List!46165)) (WhitespaceValue!15813 (value!239280 List!46165)) (True!15812) (False!15812) (Broken!39532 (value!239281 List!46165)) (Broken!39533 (value!239282 List!46165)) (True!15813) (RightBrace!7906) (RightBracket!7906) (Colon!7906) (Null!7906) (Comma!7906) (LeftBracket!7906) (False!15813) (LeftBrace!7906) (ImaginaryLiteralValue!7906 (text!55788 List!46165)) (StringLiteralValue!23718 (value!239283 List!46165)) (EOFValue!7906 (value!239284 List!46165)) (IdentValue!7906 (value!239285 List!46165)) (DelimiterValue!15813 (value!239286 List!46165)) (DedentValue!7906 (value!239287 List!46165)) (NewLineValue!7906 (value!239288 List!46165)) (IntegerValue!23718 (value!239289 (_ BitVec 32)) (text!55789 List!46165)) (IntegerValue!23719 (value!239290 Int) (text!55790 List!46165)) (Times!7906) (Or!7906) (Equal!7906) (Minus!7906) (Broken!39534 (value!239291 List!46165)) (And!7906) (Div!7906) (LessEqual!7906) (Mod!7906) (Concat!20487) (Not!7906) (Plus!7906) (SpaceValue!7906 (value!239292 List!46165)) (IntegerValue!23720 (value!239293 Int) (text!55791 List!46165)) (StringLiteralValue!23719 (text!55792 List!46165)) (FloatLiteralValue!15813 (text!55793 List!46165)) (BytesLiteralValue!7906 (value!239294 List!46165)) (CommentValue!15813 (value!239295 List!46165)) (StringLiteralValue!23720 (value!239296 List!46165)) (ErrorTokenValue!7906 (msg!7967 List!46165)) )
))
(declare-datatypes ((C!25352 0))(
  ( (C!25353 (val!14838 Int)) )
))
(declare-datatypes ((List!46166 0))(
  ( (Nil!46042) (Cons!46042 (h!51462 C!25352) (t!346049 List!46166)) )
))
(declare-datatypes ((IArray!27779 0))(
  ( (IArray!27780 (innerList!13947 List!46166)) )
))
(declare-datatypes ((Conc!13887 0))(
  ( (Node!13887 (left!34299 Conc!13887) (right!34629 Conc!13887) (csize!28004 Int) (cheight!14098 Int)) (Leaf!21468 (xs!17193 IArray!27779) (csize!28005 Int)) (Empty!13887) )
))
(declare-datatypes ((BalanceConc!27368 0))(
  ( (BalanceConc!27369 (c!715222 Conc!13887)) )
))
(declare-datatypes ((Regex!12581 0))(
  ( (ElementMatch!12581 (c!715223 C!25352)) (Concat!20488 (regOne!25674 Regex!12581) (regTwo!25674 Regex!12581)) (EmptyExpr!12581) (Star!12581 (reg!12910 Regex!12581)) (EmptyLang!12581) (Union!12581 (regOne!25675 Regex!12581) (regTwo!25675 Regex!12581)) )
))
(declare-datatypes ((String!53396 0))(
  ( (String!53397 (value!239297 String)) )
))
(declare-datatypes ((TokenValueInjection!15240 0))(
  ( (TokenValueInjection!15241 (toValue!10372 Int) (toChars!10231 Int)) )
))
(declare-datatypes ((Rule!15152 0))(
  ( (Rule!15153 (regex!7676 Regex!12581) (tag!8540 String!53396) (isSeparator!7676 Bool) (transformation!7676 TokenValueInjection!15240)) )
))
(declare-fun r!4142 () Rule!15152)

(declare-fun p!2959 () List!46166)

(declare-fun matchR!6320 (Regex!12581 List!46166) Bool)

(assert (=> b!4192104 (= res!1720582 (matchR!6320 (regex!7676 r!4142) p!2959))))

(declare-fun b!4192105 () Bool)

(declare-fun res!1720574 () Bool)

(declare-fun e!2602299 () Bool)

(assert (=> b!4192105 (=> res!1720574 e!2602299)))

(declare-fun lt!1493099 () BalanceConc!27368)

(declare-fun lt!1493106 () Int)

(declare-fun size!33829 (BalanceConc!27368) Int)

(assert (=> b!4192105 (= res!1720574 (< (size!33829 lt!1493099) lt!1493106))))

(declare-fun e!2602306 () Bool)

(assert (=> b!4192106 (= e!2602306 (and tp!1280875 tp!1280873))))

(declare-fun e!2602301 () Bool)

(declare-fun e!2602300 () Bool)

(declare-fun tp!1280870 () Bool)

(declare-fun b!4192107 () Bool)

(declare-fun inv!60590 (String!53396) Bool)

(declare-fun inv!60592 (TokenValueInjection!15240) Bool)

(assert (=> b!4192107 (= e!2602301 (and tp!1280870 (inv!60590 (tag!8540 r!4142)) (inv!60592 (transformation!7676 r!4142)) e!2602300))))

(declare-fun b!4192108 () Bool)

(declare-fun e!2602305 () Bool)

(declare-fun tp_is_empty!22125 () Bool)

(declare-fun tp!1280868 () Bool)

(assert (=> b!4192108 (= e!2602305 (and tp_is_empty!22125 tp!1280868))))

(declare-fun b!4192109 () Bool)

(declare-fun rBis!167 () Rule!15152)

(declare-fun tp!1280865 () Bool)

(declare-fun e!2602307 () Bool)

(declare-fun e!2602315 () Bool)

(assert (=> b!4192109 (= e!2602315 (and tp!1280865 (inv!60590 (tag!8540 rBis!167)) (inv!60592 (transformation!7676 rBis!167)) e!2602307))))

(declare-fun b!4192110 () Bool)

(declare-fun res!1720584 () Bool)

(assert (=> b!4192110 (=> (not res!1720584) (not e!2602316))))

(declare-fun pBis!107 () List!46166)

(declare-fun input!3342 () List!46166)

(declare-fun isPrefix!4533 (List!46166 List!46166) Bool)

(assert (=> b!4192110 (= res!1720584 (isPrefix!4533 pBis!107 input!3342))))

(declare-fun b!4192111 () Bool)

(declare-fun res!1720586 () Bool)

(assert (=> b!4192111 (=> (not res!1720586) (not e!2602316))))

(declare-datatypes ((LexerInterface!7269 0))(
  ( (LexerInterfaceExt!7266 (__x!28034 Int)) (Lexer!7267) )
))
(declare-fun thiss!25986 () LexerInterface!7269)

(declare-datatypes ((List!46167 0))(
  ( (Nil!46043) (Cons!46043 (h!51463 Rule!15152) (t!346050 List!46167)) )
))
(declare-fun rules!3843 () List!46167)

(declare-fun rulesInvariant!6482 (LexerInterface!7269 List!46167) Bool)

(assert (=> b!4192111 (= res!1720586 (rulesInvariant!6482 thiss!25986 rules!3843))))

(declare-fun b!4192112 () Bool)

(declare-fun res!1720589 () Bool)

(declare-fun e!2602313 () Bool)

(assert (=> b!4192112 (=> res!1720589 e!2602313)))

(declare-datatypes ((Token!14066 0))(
  ( (Token!14067 (value!239298 TokenValue!7906) (rule!10762 Rule!15152) (size!33830 Int) (originalCharacters!8064 List!46166)) )
))
(declare-datatypes ((tuple2!43838 0))(
  ( (tuple2!43839 (_1!25053 Token!14066) (_2!25053 List!46166)) )
))
(declare-datatypes ((Option!9870 0))(
  ( (None!9869) (Some!9869 (v!40703 tuple2!43838)) )
))
(declare-fun lt!1493108 () Option!9870)

(declare-fun maxPrefix!4317 (LexerInterface!7269 List!46167 List!46166) Option!9870)

(assert (=> b!4192112 (= res!1720589 (not (= (maxPrefix!4317 thiss!25986 rules!3843 input!3342) lt!1493108)))))

(declare-fun b!4192113 () Bool)

(declare-fun e!2602309 () Bool)

(assert (=> b!4192113 (= e!2602316 (not e!2602309))))

(declare-fun res!1720576 () Bool)

(assert (=> b!4192113 (=> res!1720576 e!2602309)))

(declare-fun maxPrefixOneRule!3278 (LexerInterface!7269 Rule!15152 List!46166) Option!9870)

(assert (=> b!4192113 (= res!1720576 (not (= (maxPrefixOneRule!3278 thiss!25986 r!4142 input!3342) lt!1493108)))))

(declare-fun lt!1493103 () Int)

(declare-fun lt!1493098 () TokenValue!7906)

(declare-fun getSuffix!2826 (List!46166 List!46166) List!46166)

(assert (=> b!4192113 (= lt!1493108 (Some!9869 (tuple2!43839 (Token!14067 lt!1493098 r!4142 lt!1493103 p!2959) (getSuffix!2826 input!3342 p!2959))))))

(declare-fun size!33831 (List!46166) Int)

(assert (=> b!4192113 (= lt!1493103 (size!33831 p!2959))))

(declare-fun lt!1493101 () BalanceConc!27368)

(declare-fun apply!10641 (TokenValueInjection!15240 BalanceConc!27368) TokenValue!7906)

(assert (=> b!4192113 (= lt!1493098 (apply!10641 (transformation!7676 r!4142) lt!1493101))))

(assert (=> b!4192113 (isPrefix!4533 input!3342 input!3342)))

(declare-datatypes ((Unit!65119 0))(
  ( (Unit!65120) )
))
(declare-fun lt!1493104 () Unit!65119)

(declare-fun lemmaIsPrefixRefl!2962 (List!46166 List!46166) Unit!65119)

(assert (=> b!4192113 (= lt!1493104 (lemmaIsPrefixRefl!2962 input!3342 input!3342))))

(declare-fun lt!1493105 () Unit!65119)

(declare-fun lemmaSemiInverse!2442 (TokenValueInjection!15240 BalanceConc!27368) Unit!65119)

(assert (=> b!4192113 (= lt!1493105 (lemmaSemiInverse!2442 (transformation!7676 r!4142) lt!1493101))))

(declare-fun seqFromList!5701 (List!46166) BalanceConc!27368)

(assert (=> b!4192113 (= lt!1493101 (seqFromList!5701 p!2959))))

(declare-fun b!4192114 () Bool)

(declare-fun e!2602303 () Bool)

(assert (=> b!4192114 (= e!2602303 e!2602299)))

(declare-fun res!1720587 () Bool)

(assert (=> b!4192114 (=> res!1720587 e!2602299)))

(declare-fun lt!1493094 () List!46166)

(assert (=> b!4192114 (= res!1720587 (= lt!1493094 pBis!107))))

(declare-fun lt!1493095 () tuple2!43838)

(declare-fun ++!11748 (List!46166 List!46166) List!46166)

(assert (=> b!4192114 (isPrefix!4533 lt!1493094 (++!11748 lt!1493094 (_2!25053 lt!1493095)))))

(declare-fun lt!1493102 () Unit!65119)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3030 (List!46166 List!46166) Unit!65119)

(assert (=> b!4192114 (= lt!1493102 (lemmaConcatTwoListThenFirstIsPrefix!3030 lt!1493094 (_2!25053 lt!1493095)))))

(declare-fun list!16638 (BalanceConc!27368) List!46166)

(assert (=> b!4192114 (= lt!1493094 (list!16638 lt!1493099))))

(declare-fun charsOf!5111 (Token!14066) BalanceConc!27368)

(assert (=> b!4192114 (= lt!1493099 (charsOf!5111 (_1!25053 lt!1493095)))))

(declare-fun lt!1493096 () Option!9870)

(declare-fun get!14973 (Option!9870) tuple2!43838)

(assert (=> b!4192114 (= lt!1493095 (get!14973 lt!1493096))))

(assert (=> b!4192115 (= e!2602300 (and tp!1280869 tp!1280874))))

(assert (=> b!4192116 (= e!2602307 (and tp!1280867 tp!1280866))))

(declare-fun b!4192117 () Bool)

(declare-fun e!2602314 () Bool)

(declare-fun tp!1280876 () Bool)

(assert (=> b!4192117 (= e!2602314 (and tp_is_empty!22125 tp!1280876))))

(declare-fun b!4192118 () Bool)

(assert (=> b!4192118 (= e!2602313 e!2602303)))

(declare-fun res!1720581 () Bool)

(assert (=> b!4192118 (=> res!1720581 e!2602303)))

(declare-fun isEmpty!27260 (Option!9870) Bool)

(assert (=> b!4192118 (= res!1720581 (isEmpty!27260 lt!1493096))))

(assert (=> b!4192118 (= lt!1493096 (maxPrefixOneRule!3278 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1493097 () Unit!65119)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2400 (LexerInterface!7269 Rule!15152 List!46167) Unit!65119)

(assert (=> b!4192118 (= lt!1493097 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2400 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4192118 (<= lt!1493106 (size!33831 input!3342))))

(declare-fun lt!1493107 () Unit!65119)

(declare-fun lemmaIsPrefixThenSmallerEqSize!563 (List!46166 List!46166) Unit!65119)

(assert (=> b!4192118 (= lt!1493107 (lemmaIsPrefixThenSmallerEqSize!563 pBis!107 input!3342))))

(declare-fun b!4192119 () Bool)

(declare-fun e!2602308 () Bool)

(declare-fun e!2602312 () Bool)

(declare-fun tp!1280872 () Bool)

(assert (=> b!4192119 (= e!2602308 (and e!2602312 tp!1280872))))

(declare-fun b!4192120 () Bool)

(declare-fun res!1720575 () Bool)

(assert (=> b!4192120 (=> (not res!1720575) (not e!2602316))))

(declare-fun contains!9485 (List!46167 Rule!15152) Bool)

(assert (=> b!4192120 (= res!1720575 (contains!9485 rules!3843 rBis!167))))

(declare-fun b!4192121 () Bool)

(assert (=> b!4192121 (= e!2602299 true)))

(declare-fun lt!1493100 () Int)

(assert (=> b!4192121 (= lt!1493100 (size!33831 lt!1493094))))

(declare-fun b!4192122 () Bool)

(assert (=> b!4192122 (= e!2602309 e!2602313)))

(declare-fun res!1720578 () Bool)

(assert (=> b!4192122 (=> res!1720578 e!2602313)))

(assert (=> b!4192122 (= res!1720578 (<= lt!1493106 lt!1493103))))

(assert (=> b!4192122 (= lt!1493106 (size!33831 pBis!107))))

(declare-fun b!4192123 () Bool)

(declare-fun res!1720579 () Bool)

(assert (=> b!4192123 (=> (not res!1720579) (not e!2602316))))

(declare-fun ruleValid!3394 (LexerInterface!7269 Rule!15152) Bool)

(assert (=> b!4192123 (= res!1720579 (ruleValid!3394 thiss!25986 r!4142))))

(declare-fun b!4192124 () Bool)

(declare-fun res!1720583 () Bool)

(assert (=> b!4192124 (=> (not res!1720583) (not e!2602316))))

(assert (=> b!4192124 (= res!1720583 (isPrefix!4533 p!2959 input!3342))))

(declare-fun b!4192125 () Bool)

(declare-fun res!1720590 () Bool)

(assert (=> b!4192125 (=> res!1720590 e!2602313)))

(assert (=> b!4192125 (= res!1720590 (not (ruleValid!3394 thiss!25986 rBis!167)))))

(declare-fun tp!1280864 () Bool)

(declare-fun b!4192126 () Bool)

(assert (=> b!4192126 (= e!2602312 (and tp!1280864 (inv!60590 (tag!8540 (h!51463 rules!3843))) (inv!60592 (transformation!7676 (h!51463 rules!3843))) e!2602306))))

(declare-fun b!4192127 () Bool)

(declare-fun res!1720577 () Bool)

(assert (=> b!4192127 (=> (not res!1720577) (not e!2602316))))

(declare-fun validRegex!5698 (Regex!12581) Bool)

(assert (=> b!4192127 (= res!1720577 (validRegex!5698 (regex!7676 r!4142)))))

(declare-fun b!4192128 () Bool)

(declare-fun res!1720580 () Bool)

(assert (=> b!4192128 (=> (not res!1720580) (not e!2602316))))

(declare-fun isEmpty!27261 (List!46167) Bool)

(assert (=> b!4192128 (= res!1720580 (not (isEmpty!27261 rules!3843)))))

(declare-fun res!1720588 () Bool)

(assert (=> start!400154 (=> (not res!1720588) (not e!2602316))))

(get-info :version)

(assert (=> start!400154 (= res!1720588 ((_ is Lexer!7267) thiss!25986))))

(assert (=> start!400154 e!2602316))

(assert (=> start!400154 true))

(assert (=> start!400154 e!2602315))

(assert (=> start!400154 e!2602301))

(assert (=> start!400154 e!2602308))

(assert (=> start!400154 e!2602305))

(assert (=> start!400154 e!2602314))

(declare-fun e!2602311 () Bool)

(assert (=> start!400154 e!2602311))

(declare-fun b!4192129 () Bool)

(declare-fun tp!1280871 () Bool)

(assert (=> b!4192129 (= e!2602311 (and tp_is_empty!22125 tp!1280871))))

(declare-fun b!4192130 () Bool)

(declare-fun res!1720585 () Bool)

(assert (=> b!4192130 (=> (not res!1720585) (not e!2602316))))

(assert (=> b!4192130 (= res!1720585 (contains!9485 rules!3843 r!4142))))

(assert (= (and start!400154 res!1720588) b!4192124))

(assert (= (and b!4192124 res!1720583) b!4192110))

(assert (= (and b!4192110 res!1720584) b!4192128))

(assert (= (and b!4192128 res!1720580) b!4192111))

(assert (= (and b!4192111 res!1720586) b!4192130))

(assert (= (and b!4192130 res!1720585) b!4192120))

(assert (= (and b!4192120 res!1720575) b!4192127))

(assert (= (and b!4192127 res!1720577) b!4192104))

(assert (= (and b!4192104 res!1720582) b!4192123))

(assert (= (and b!4192123 res!1720579) b!4192113))

(assert (= (and b!4192113 (not res!1720576)) b!4192122))

(assert (= (and b!4192122 (not res!1720578)) b!4192125))

(assert (= (and b!4192125 (not res!1720590)) b!4192112))

(assert (= (and b!4192112 (not res!1720589)) b!4192118))

(assert (= (and b!4192118 (not res!1720581)) b!4192114))

(assert (= (and b!4192114 (not res!1720587)) b!4192105))

(assert (= (and b!4192105 (not res!1720574)) b!4192121))

(assert (= b!4192109 b!4192116))

(assert (= start!400154 b!4192109))

(assert (= b!4192107 b!4192115))

(assert (= start!400154 b!4192107))

(assert (= b!4192126 b!4192106))

(assert (= b!4192119 b!4192126))

(assert (= (and start!400154 ((_ is Cons!46043) rules!3843)) b!4192119))

(assert (= (and start!400154 ((_ is Cons!46042) input!3342)) b!4192108))

(assert (= (and start!400154 ((_ is Cons!46042) pBis!107)) b!4192117))

(assert (= (and start!400154 ((_ is Cons!46042) p!2959)) b!4192129))

(declare-fun m!4780781 () Bool)

(assert (=> b!4192107 m!4780781))

(declare-fun m!4780783 () Bool)

(assert (=> b!4192107 m!4780783))

(declare-fun m!4780785 () Bool)

(assert (=> b!4192111 m!4780785))

(declare-fun m!4780787 () Bool)

(assert (=> b!4192122 m!4780787))

(declare-fun m!4780789 () Bool)

(assert (=> b!4192123 m!4780789))

(declare-fun m!4780791 () Bool)

(assert (=> b!4192126 m!4780791))

(declare-fun m!4780793 () Bool)

(assert (=> b!4192126 m!4780793))

(declare-fun m!4780795 () Bool)

(assert (=> b!4192124 m!4780795))

(declare-fun m!4780797 () Bool)

(assert (=> b!4192128 m!4780797))

(declare-fun m!4780799 () Bool)

(assert (=> b!4192127 m!4780799))

(declare-fun m!4780801 () Bool)

(assert (=> b!4192105 m!4780801))

(declare-fun m!4780803 () Bool)

(assert (=> b!4192125 m!4780803))

(declare-fun m!4780805 () Bool)

(assert (=> b!4192120 m!4780805))

(declare-fun m!4780807 () Bool)

(assert (=> b!4192112 m!4780807))

(declare-fun m!4780809 () Bool)

(assert (=> b!4192130 m!4780809))

(declare-fun m!4780811 () Bool)

(assert (=> b!4192118 m!4780811))

(declare-fun m!4780813 () Bool)

(assert (=> b!4192118 m!4780813))

(declare-fun m!4780815 () Bool)

(assert (=> b!4192118 m!4780815))

(declare-fun m!4780817 () Bool)

(assert (=> b!4192118 m!4780817))

(declare-fun m!4780819 () Bool)

(assert (=> b!4192118 m!4780819))

(declare-fun m!4780821 () Bool)

(assert (=> b!4192110 m!4780821))

(declare-fun m!4780823 () Bool)

(assert (=> b!4192121 m!4780823))

(declare-fun m!4780825 () Bool)

(assert (=> b!4192114 m!4780825))

(declare-fun m!4780827 () Bool)

(assert (=> b!4192114 m!4780827))

(declare-fun m!4780829 () Bool)

(assert (=> b!4192114 m!4780829))

(declare-fun m!4780831 () Bool)

(assert (=> b!4192114 m!4780831))

(assert (=> b!4192114 m!4780831))

(declare-fun m!4780833 () Bool)

(assert (=> b!4192114 m!4780833))

(declare-fun m!4780835 () Bool)

(assert (=> b!4192114 m!4780835))

(declare-fun m!4780837 () Bool)

(assert (=> b!4192109 m!4780837))

(declare-fun m!4780839 () Bool)

(assert (=> b!4192109 m!4780839))

(declare-fun m!4780841 () Bool)

(assert (=> b!4192104 m!4780841))

(declare-fun m!4780843 () Bool)

(assert (=> b!4192113 m!4780843))

(declare-fun m!4780845 () Bool)

(assert (=> b!4192113 m!4780845))

(declare-fun m!4780847 () Bool)

(assert (=> b!4192113 m!4780847))

(declare-fun m!4780849 () Bool)

(assert (=> b!4192113 m!4780849))

(declare-fun m!4780851 () Bool)

(assert (=> b!4192113 m!4780851))

(declare-fun m!4780853 () Bool)

(assert (=> b!4192113 m!4780853))

(declare-fun m!4780855 () Bool)

(assert (=> b!4192113 m!4780855))

(declare-fun m!4780857 () Bool)

(assert (=> b!4192113 m!4780857))

(check-sat (not b_next!122793) b_and!328515 (not b_next!122791) (not b!4192121) (not b!4192107) tp_is_empty!22125 b_and!328511 (not b!4192111) b_and!328507 (not b!4192113) (not b!4192120) (not b!4192104) b_and!328513 (not b!4192117) (not b!4192129) b_and!328509 (not b!4192108) (not b_next!122783) (not b!4192118) (not b!4192124) (not b!4192126) (not b!4192125) (not b!4192122) (not b_next!122785) (not b!4192127) (not b!4192109) (not b!4192110) (not b!4192114) (not b!4192123) (not b_next!122789) (not b!4192128) (not b!4192105) (not b_next!122787) b_and!328505 (not b!4192112) (not b!4192130) (not b!4192119))
(check-sat (not b_next!122793) b_and!328515 (not b_next!122791) (not b_next!122785) b_and!328511 b_and!328507 (not b_next!122789) b_and!328513 b_and!328509 (not b_next!122783) (not b_next!122787) b_and!328505)
