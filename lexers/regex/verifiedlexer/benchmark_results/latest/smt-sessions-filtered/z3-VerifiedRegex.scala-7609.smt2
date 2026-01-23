; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401834 () Bool)

(assert start!401834)

(declare-fun b!4205957 () Bool)

(declare-fun b_free!122931 () Bool)

(declare-fun b_next!123635 () Bool)

(assert (=> b!4205957 (= b_free!122931 (not b_next!123635))))

(declare-fun tp!1285589 () Bool)

(declare-fun b_and!330557 () Bool)

(assert (=> b!4205957 (= tp!1285589 b_and!330557)))

(declare-fun b_free!122933 () Bool)

(declare-fun b_next!123637 () Bool)

(assert (=> b!4205957 (= b_free!122933 (not b_next!123637))))

(declare-fun tp!1285587 () Bool)

(declare-fun b_and!330559 () Bool)

(assert (=> b!4205957 (= tp!1285587 b_and!330559)))

(declare-fun b!4205937 () Bool)

(declare-fun b_free!122935 () Bool)

(declare-fun b_next!123639 () Bool)

(assert (=> b!4205937 (= b_free!122935 (not b_next!123639))))

(declare-fun tp!1285599 () Bool)

(declare-fun b_and!330561 () Bool)

(assert (=> b!4205937 (= tp!1285599 b_and!330561)))

(declare-fun b_free!122937 () Bool)

(declare-fun b_next!123641 () Bool)

(assert (=> b!4205937 (= b_free!122937 (not b_next!123641))))

(declare-fun tp!1285598 () Bool)

(declare-fun b_and!330563 () Bool)

(assert (=> b!4205937 (= tp!1285598 b_and!330563)))

(declare-fun b!4205964 () Bool)

(declare-fun b_free!122939 () Bool)

(declare-fun b_next!123643 () Bool)

(assert (=> b!4205964 (= b_free!122939 (not b_next!123643))))

(declare-fun tp!1285595 () Bool)

(declare-fun b_and!330565 () Bool)

(assert (=> b!4205964 (= tp!1285595 b_and!330565)))

(declare-fun b_free!122941 () Bool)

(declare-fun b_next!123645 () Bool)

(assert (=> b!4205964 (= b_free!122941 (not b_next!123645))))

(declare-fun tp!1285592 () Bool)

(declare-fun b_and!330567 () Bool)

(assert (=> b!4205964 (= tp!1285592 b_and!330567)))

(declare-fun b!4205935 () Bool)

(declare-fun b_free!122943 () Bool)

(declare-fun b_next!123647 () Bool)

(assert (=> b!4205935 (= b_free!122943 (not b_next!123647))))

(declare-fun tp!1285594 () Bool)

(declare-fun b_and!330569 () Bool)

(assert (=> b!4205935 (= tp!1285594 b_and!330569)))

(declare-fun b_free!122945 () Bool)

(declare-fun b_next!123649 () Bool)

(assert (=> b!4205935 (= b_free!122945 (not b_next!123649))))

(declare-fun tp!1285584 () Bool)

(declare-fun b_and!330571 () Bool)

(assert (=> b!4205935 (= tp!1285584 b_and!330571)))

(declare-fun e!2610946 () Bool)

(declare-fun e!2610944 () Bool)

(declare-fun b!4205934 () Bool)

(declare-fun tp!1285588 () Bool)

(declare-datatypes ((List!46361 0))(
  ( (Nil!46237) (Cons!46237 (h!51657 (_ BitVec 16)) (t!347430 List!46361)) )
))
(declare-datatypes ((TokenValue!7962 0))(
  ( (FloatLiteralValue!15924 (text!56179 List!46361)) (TokenValueExt!7961 (__x!28147 Int)) (Broken!39810 (value!240865 List!46361)) (Object!8085) (End!7962) (Def!7962) (Underscore!7962) (Match!7962) (Else!7962) (Error!7962) (Case!7962) (If!7962) (Extends!7962) (Abstract!7962) (Class!7962) (Val!7962) (DelimiterValue!15924 (del!8022 List!46361)) (KeywordValue!7968 (value!240866 List!46361)) (CommentValue!15924 (value!240867 List!46361)) (WhitespaceValue!15924 (value!240868 List!46361)) (IndentationValue!7962 (value!240869 List!46361)) (String!53679) (Int32!7962) (Broken!39811 (value!240870 List!46361)) (Boolean!7963) (Unit!65350) (OperatorValue!7965 (op!8022 List!46361)) (IdentifierValue!15924 (value!240871 List!46361)) (IdentifierValue!15925 (value!240872 List!46361)) (WhitespaceValue!15925 (value!240873 List!46361)) (True!15924) (False!15924) (Broken!39812 (value!240874 List!46361)) (Broken!39813 (value!240875 List!46361)) (True!15925) (RightBrace!7962) (RightBracket!7962) (Colon!7962) (Null!7962) (Comma!7962) (LeftBracket!7962) (False!15925) (LeftBrace!7962) (ImaginaryLiteralValue!7962 (text!56180 List!46361)) (StringLiteralValue!23886 (value!240876 List!46361)) (EOFValue!7962 (value!240877 List!46361)) (IdentValue!7962 (value!240878 List!46361)) (DelimiterValue!15925 (value!240879 List!46361)) (DedentValue!7962 (value!240880 List!46361)) (NewLineValue!7962 (value!240881 List!46361)) (IntegerValue!23886 (value!240882 (_ BitVec 32)) (text!56181 List!46361)) (IntegerValue!23887 (value!240883 Int) (text!56182 List!46361)) (Times!7962) (Or!7962) (Equal!7962) (Minus!7962) (Broken!39814 (value!240884 List!46361)) (And!7962) (Div!7962) (LessEqual!7962) (Mod!7962) (Concat!20599) (Not!7962) (Plus!7962) (SpaceValue!7962 (value!240885 List!46361)) (IntegerValue!23888 (value!240886 Int) (text!56183 List!46361)) (StringLiteralValue!23887 (text!56184 List!46361)) (FloatLiteralValue!15925 (text!56185 List!46361)) (BytesLiteralValue!7962 (value!240887 List!46361)) (CommentValue!15925 (value!240888 List!46361)) (StringLiteralValue!23888 (value!240889 List!46361)) (ErrorTokenValue!7962 (msg!8023 List!46361)) )
))
(declare-datatypes ((C!25468 0))(
  ( (C!25469 (val!14896 Int)) )
))
(declare-datatypes ((List!46362 0))(
  ( (Nil!46238) (Cons!46238 (h!51658 C!25468) (t!347431 List!46362)) )
))
(declare-datatypes ((IArray!27891 0))(
  ( (IArray!27892 (innerList!14003 List!46362)) )
))
(declare-datatypes ((Regex!12637 0))(
  ( (ElementMatch!12637 (c!716812 C!25468)) (Concat!20600 (regOne!25786 Regex!12637) (regTwo!25786 Regex!12637)) (EmptyExpr!12637) (Star!12637 (reg!12966 Regex!12637)) (EmptyLang!12637) (Union!12637 (regOne!25787 Regex!12637) (regTwo!25787 Regex!12637)) )
))
(declare-datatypes ((Conc!13943 0))(
  ( (Node!13943 (left!34432 Conc!13943) (right!34762 Conc!13943) (csize!28116 Int) (cheight!14154 Int)) (Leaf!21553 (xs!17249 IArray!27891) (csize!28117 Int)) (Empty!13943) )
))
(declare-datatypes ((BalanceConc!27480 0))(
  ( (BalanceConc!27481 (c!716813 Conc!13943)) )
))
(declare-datatypes ((String!53680 0))(
  ( (String!53681 (value!240890 String)) )
))
(declare-datatypes ((TokenValueInjection!15352 0))(
  ( (TokenValueInjection!15353 (toValue!10444 Int) (toChars!10303 Int)) )
))
(declare-datatypes ((Rule!15264 0))(
  ( (Rule!15265 (regex!7732 Regex!12637) (tag!8596 String!53680) (isSeparator!7732 Bool) (transformation!7732 TokenValueInjection!15352)) )
))
(declare-datatypes ((Token!14166 0))(
  ( (Token!14167 (value!240891 TokenValue!7962) (rule!10836 Rule!15264) (size!33968 Int) (originalCharacters!8114 List!46362)) )
))
(declare-fun tBis!41 () Token!14166)

(declare-fun inv!21 (TokenValue!7962) Bool)

(assert (=> b!4205934 (= e!2610944 (and (inv!21 (value!240891 tBis!41)) e!2610946 tp!1285588))))

(declare-fun e!2610958 () Bool)

(assert (=> b!4205935 (= e!2610958 (and tp!1285594 tp!1285584))))

(declare-fun b!4205936 () Bool)

(declare-fun e!2610955 () Bool)

(declare-fun tp_is_empty!22241 () Bool)

(declare-fun tp!1285601 () Bool)

(assert (=> b!4205936 (= e!2610955 (and tp_is_empty!22241 tp!1285601))))

(declare-fun e!2610962 () Bool)

(assert (=> b!4205937 (= e!2610962 (and tp!1285599 tp!1285598))))

(declare-fun b!4205938 () Bool)

(declare-fun res!1727497 () Bool)

(declare-fun e!2610937 () Bool)

(assert (=> b!4205938 (=> (not res!1727497) (not e!2610937))))

(declare-datatypes ((List!46363 0))(
  ( (Nil!46239) (Cons!46239 (h!51659 Rule!15264) (t!347432 List!46363)) )
))
(declare-fun rules!3967 () List!46363)

(declare-fun isEmpty!27380 (List!46363) Bool)

(assert (=> b!4205938 (= res!1727497 (not (isEmpty!27380 rules!3967)))))

(declare-fun b!4205940 () Bool)

(declare-fun res!1727502 () Bool)

(declare-fun e!2610940 () Bool)

(assert (=> b!4205940 (=> res!1727502 e!2610940)))

(declare-fun pBis!121 () List!46362)

(declare-fun list!16711 (BalanceConc!27480) List!46362)

(declare-fun charsOf!5155 (Token!14166) BalanceConc!27480)

(assert (=> b!4205940 (= res!1727502 (not (= (list!16711 (charsOf!5155 tBis!41)) pBis!121)))))

(declare-fun t!8364 () Token!14166)

(declare-fun e!2610941 () Bool)

(declare-fun e!2610942 () Bool)

(declare-fun tp!1285591 () Bool)

(declare-fun b!4205941 () Bool)

(assert (=> b!4205941 (= e!2610942 (and (inv!21 (value!240891 t!8364)) e!2610941 tp!1285591))))

(declare-fun b!4205942 () Bool)

(declare-datatypes ((Unit!65351 0))(
  ( (Unit!65352) )
))
(declare-fun e!2610947 () Unit!65351)

(declare-fun Unit!65353 () Unit!65351)

(assert (=> b!4205942 (= e!2610947 Unit!65353)))

(declare-datatypes ((LexerInterface!7327 0))(
  ( (LexerInterfaceExt!7324 (__x!28148 Int)) (Lexer!7325) )
))
(declare-fun thiss!26544 () LexerInterface!7327)

(declare-fun lt!1497773 () Unit!65351)

(declare-fun input!3517 () List!46362)

(declare-fun rBis!178 () Rule!15264)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!610 (LexerInterface!7327 Rule!15264 List!46363 List!46362) Unit!65351)

(assert (=> b!4205942 (= lt!1497773 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!610 thiss!26544 rBis!178 (t!347432 rules!3967) input!3517))))

(assert (=> b!4205942 false))

(declare-fun b!4205943 () Bool)

(declare-fun res!1727507 () Bool)

(declare-fun e!2610945 () Bool)

(assert (=> b!4205943 (=> (not res!1727507) (not e!2610945))))

(declare-fun ruleValid!3444 (LexerInterface!7327 Rule!15264) Bool)

(assert (=> b!4205943 (= res!1727507 (ruleValid!3444 thiss!26544 rBis!178))))

(declare-fun b!4205944 () Bool)

(declare-fun res!1727500 () Bool)

(assert (=> b!4205944 (=> (not res!1727500) (not e!2610937))))

(declare-fun p!3001 () List!46362)

(declare-fun isPrefix!4591 (List!46362 List!46362) Bool)

(assert (=> b!4205944 (= res!1727500 (isPrefix!4591 p!3001 input!3517))))

(declare-fun b!4205945 () Bool)

(assert (=> b!4205945 (= e!2610937 e!2610945)))

(declare-fun res!1727504 () Bool)

(assert (=> b!4205945 (=> (not res!1727504) (not e!2610945))))

(declare-datatypes ((tuple2!43986 0))(
  ( (tuple2!43987 (_1!25127 Token!14166) (_2!25127 List!46362)) )
))
(declare-datatypes ((Option!9920 0))(
  ( (None!9919) (Some!9919 (v!40779 tuple2!43986)) )
))
(declare-fun lt!1497781 () Option!9920)

(declare-fun maxPrefix!4367 (LexerInterface!7327 List!46363 List!46362) Option!9920)

(assert (=> b!4205945 (= res!1727504 (= (maxPrefix!4367 thiss!26544 rules!3967 input!3517) lt!1497781))))

(declare-fun suffix!1557 () List!46362)

(assert (=> b!4205945 (= lt!1497781 (Some!9919 (tuple2!43987 t!8364 suffix!1557)))))

(declare-fun b!4205946 () Bool)

(declare-fun res!1727494 () Bool)

(assert (=> b!4205946 (=> (not res!1727494) (not e!2610937))))

(declare-fun rulesInvariant!6538 (LexerInterface!7327 List!46363) Bool)

(assert (=> b!4205946 (= res!1727494 (rulesInvariant!6538 thiss!26544 rules!3967))))

(declare-fun b!4205947 () Bool)

(assert (=> b!4205947 (= e!2610945 (not e!2610940))))

(declare-fun res!1727506 () Bool)

(assert (=> b!4205947 (=> res!1727506 e!2610940)))

(declare-fun suffixBis!41 () List!46362)

(declare-fun maxPrefixOneRule!3322 (LexerInterface!7327 Rule!15264 List!46362) Option!9920)

(assert (=> b!4205947 (= res!1727506 (not (= (maxPrefixOneRule!3322 thiss!26544 rBis!178 input!3517) (Some!9919 (tuple2!43987 tBis!41 suffixBis!41)))))))

(assert (=> b!4205947 (isPrefix!4591 input!3517 input!3517)))

(declare-fun lt!1497776 () Unit!65351)

(declare-fun lemmaIsPrefixRefl!3008 (List!46362 List!46362) Unit!65351)

(assert (=> b!4205947 (= lt!1497776 (lemmaIsPrefixRefl!3008 input!3517 input!3517))))

(declare-fun b!4205948 () Bool)

(declare-fun res!1727498 () Bool)

(assert (=> b!4205948 (=> res!1727498 e!2610940)))

(assert (=> b!4205948 (= res!1727498 (not (= (rule!10836 tBis!41) rBis!178)))))

(declare-fun b!4205949 () Bool)

(declare-fun lt!1497779 () Option!9920)

(declare-fun isDefined!7376 (Option!9920) Bool)

(assert (=> b!4205949 (= e!2610940 (isDefined!7376 lt!1497779))))

(declare-fun lt!1497777 () Unit!65351)

(declare-fun lemmaCharactersSize!1501 (Token!14166) Unit!65351)

(assert (=> b!4205949 (= lt!1497777 (lemmaCharactersSize!1501 tBis!41))))

(declare-fun lt!1497778 () Unit!65351)

(assert (=> b!4205949 (= lt!1497778 (lemmaCharactersSize!1501 t!8364))))

(declare-fun lt!1497775 () List!46362)

(declare-fun size!33969 (List!46362) Int)

(assert (=> b!4205949 (<= (size!33969 pBis!121) (size!33969 lt!1497775))))

(declare-fun lt!1497774 () Unit!65351)

(declare-fun lt!1497780 () tuple2!43986)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!32 (LexerInterface!7327 List!46363 List!46362 Token!14166 List!46362 List!46362 List!46362 List!46362 Rule!15264 Token!14166) Unit!65351)

(assert (=> b!4205949 (= lt!1497774 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!32 thiss!26544 (t!347432 rules!3967) lt!1497775 (_1!25127 lt!1497780) input!3517 (_2!25127 lt!1497780) pBis!121 suffixBis!41 rBis!178 tBis!41))))

(assert (=> b!4205949 (rulesInvariant!6538 thiss!26544 (t!347432 rules!3967))))

(declare-fun lt!1497771 () Unit!65351)

(declare-fun lemmaInvariantOnRulesThenOnTail!846 (LexerInterface!7327 Rule!15264 List!46363) Unit!65351)

(assert (=> b!4205949 (= lt!1497771 (lemmaInvariantOnRulesThenOnTail!846 thiss!26544 (h!51659 rules!3967) (t!347432 rules!3967)))))

(declare-fun ++!11806 (List!46362 List!46362) List!46362)

(assert (=> b!4205949 (isPrefix!4591 lt!1497775 (++!11806 lt!1497775 (_2!25127 lt!1497780)))))

(declare-fun lt!1497772 () Unit!65351)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3064 (List!46362 List!46362) Unit!65351)

(assert (=> b!4205949 (= lt!1497772 (lemmaConcatTwoListThenFirstIsPrefix!3064 lt!1497775 (_2!25127 lt!1497780)))))

(assert (=> b!4205949 (= lt!1497775 (list!16711 (charsOf!5155 (_1!25127 lt!1497780))))))

(declare-fun get!15040 (Option!9920) tuple2!43986)

(assert (=> b!4205949 (= lt!1497780 (get!15040 lt!1497779))))

(declare-fun lt!1497782 () Unit!65351)

(assert (=> b!4205949 (= lt!1497782 e!2610947)))

(declare-fun c!716811 () Bool)

(declare-fun isEmpty!27381 (Option!9920) Bool)

(assert (=> b!4205949 (= c!716811 (isEmpty!27381 lt!1497779))))

(assert (=> b!4205949 (= lt!1497779 (maxPrefix!4367 thiss!26544 (t!347432 rules!3967) input!3517))))

(declare-fun b!4205950 () Bool)

(declare-fun e!2610938 () Bool)

(declare-fun tp!1285602 () Bool)

(assert (=> b!4205950 (= e!2610938 (and tp_is_empty!22241 tp!1285602))))

(declare-fun b!4205951 () Bool)

(declare-fun e!2610949 () Bool)

(declare-fun e!2610959 () Bool)

(declare-fun tp!1285600 () Bool)

(assert (=> b!4205951 (= e!2610949 (and e!2610959 tp!1285600))))

(declare-fun b!4205952 () Bool)

(declare-fun tp!1285585 () Bool)

(declare-fun inv!60821 (String!53680) Bool)

(declare-fun inv!60824 (TokenValueInjection!15352) Bool)

(assert (=> b!4205952 (= e!2610959 (and tp!1285585 (inv!60821 (tag!8596 (h!51659 rules!3967))) (inv!60824 (transformation!7732 (h!51659 rules!3967))) e!2610962))))

(declare-fun b!4205953 () Bool)

(declare-fun res!1727503 () Bool)

(assert (=> b!4205953 (=> res!1727503 e!2610940)))

(get-info :version)

(assert (=> b!4205953 (= res!1727503 (or (and ((_ is Cons!46239) rules!3967) ((_ is Nil!46239) (t!347432 rules!3967))) (not ((_ is Cons!46239) rules!3967)) (= (h!51659 rules!3967) rBis!178)))))

(declare-fun b!4205954 () Bool)

(declare-fun e!2610956 () Bool)

(declare-fun tp!1285597 () Bool)

(assert (=> b!4205954 (= e!2610956 (and tp_is_empty!22241 tp!1285597))))

(declare-fun b!4205955 () Bool)

(declare-fun res!1727496 () Bool)

(assert (=> b!4205955 (=> (not res!1727496) (not e!2610937))))

(assert (=> b!4205955 (= res!1727496 (isPrefix!4591 pBis!121 input!3517))))

(declare-fun e!2610948 () Bool)

(declare-fun tp!1285593 () Bool)

(declare-fun b!4205956 () Bool)

(assert (=> b!4205956 (= e!2610946 (and tp!1285593 (inv!60821 (tag!8596 (rule!10836 tBis!41))) (inv!60824 (transformation!7732 (rule!10836 tBis!41))) e!2610948))))

(declare-fun res!1727505 () Bool)

(assert (=> start!401834 (=> (not res!1727505) (not e!2610937))))

(assert (=> start!401834 (= res!1727505 ((_ is Lexer!7325) thiss!26544))))

(assert (=> start!401834 e!2610937))

(declare-fun inv!60825 (Token!14166) Bool)

(assert (=> start!401834 (and (inv!60825 tBis!41) e!2610944)))

(assert (=> start!401834 true))

(declare-fun e!2610943 () Bool)

(assert (=> start!401834 e!2610943))

(declare-fun e!2610951 () Bool)

(assert (=> start!401834 e!2610951))

(assert (=> start!401834 e!2610949))

(assert (=> start!401834 e!2610955))

(assert (=> start!401834 (and (inv!60825 t!8364) e!2610942)))

(assert (=> start!401834 e!2610938))

(assert (=> start!401834 e!2610956))

(declare-fun e!2610954 () Bool)

(assert (=> start!401834 e!2610954))

(declare-fun tp!1285590 () Bool)

(declare-fun b!4205939 () Bool)

(assert (=> b!4205939 (= e!2610941 (and tp!1285590 (inv!60821 (tag!8596 (rule!10836 t!8364))) (inv!60824 (transformation!7732 (rule!10836 t!8364))) e!2610958))))

(assert (=> b!4205957 (= e!2610948 (and tp!1285589 tp!1285587))))

(declare-fun b!4205958 () Bool)

(declare-fun res!1727501 () Bool)

(assert (=> b!4205958 (=> res!1727501 e!2610940)))

(assert (=> b!4205958 (= res!1727501 (not (= (maxPrefixOneRule!3322 thiss!26544 (h!51659 rules!3967) input!3517) lt!1497781)))))

(declare-fun tp!1285586 () Bool)

(declare-fun b!4205959 () Bool)

(declare-fun e!2610953 () Bool)

(assert (=> b!4205959 (= e!2610943 (and tp!1285586 (inv!60821 (tag!8596 rBis!178)) (inv!60824 (transformation!7732 rBis!178)) e!2610953))))

(declare-fun b!4205960 () Bool)

(declare-fun tp!1285583 () Bool)

(assert (=> b!4205960 (= e!2610954 (and tp_is_empty!22241 tp!1285583))))

(declare-fun b!4205961 () Bool)

(declare-fun tp!1285596 () Bool)

(assert (=> b!4205961 (= e!2610951 (and tp_is_empty!22241 tp!1285596))))

(declare-fun b!4205962 () Bool)

(declare-fun res!1727493 () Bool)

(assert (=> b!4205962 (=> res!1727493 e!2610940)))

(assert (=> b!4205962 (= res!1727493 (not (= (++!11806 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4205963 () Bool)

(declare-fun Unit!65354 () Unit!65351)

(assert (=> b!4205963 (= e!2610947 Unit!65354)))

(assert (=> b!4205964 (= e!2610953 (and tp!1285595 tp!1285592))))

(declare-fun b!4205965 () Bool)

(declare-fun res!1727499 () Bool)

(assert (=> b!4205965 (=> (not res!1727499) (not e!2610937))))

(declare-fun contains!9549 (List!46363 Rule!15264) Bool)

(assert (=> b!4205965 (= res!1727499 (contains!9549 rules!3967 rBis!178))))

(declare-fun b!4205966 () Bool)

(declare-fun res!1727495 () Bool)

(assert (=> b!4205966 (=> (not res!1727495) (not e!2610937))))

(assert (=> b!4205966 (= res!1727495 (= (++!11806 p!3001 suffix!1557) input!3517))))

(assert (= (and start!401834 res!1727505) b!4205966))

(assert (= (and b!4205966 res!1727495) b!4205944))

(assert (= (and b!4205944 res!1727500) b!4205955))

(assert (= (and b!4205955 res!1727496) b!4205938))

(assert (= (and b!4205938 res!1727497) b!4205946))

(assert (= (and b!4205946 res!1727494) b!4205965))

(assert (= (and b!4205965 res!1727499) b!4205945))

(assert (= (and b!4205945 res!1727504) b!4205943))

(assert (= (and b!4205943 res!1727507) b!4205947))

(assert (= (and b!4205947 (not res!1727506)) b!4205948))

(assert (= (and b!4205948 (not res!1727498)) b!4205940))

(assert (= (and b!4205940 (not res!1727502)) b!4205962))

(assert (= (and b!4205962 (not res!1727493)) b!4205953))

(assert (= (and b!4205953 (not res!1727503)) b!4205958))

(assert (= (and b!4205958 (not res!1727501)) b!4205949))

(assert (= (and b!4205949 c!716811) b!4205942))

(assert (= (and b!4205949 (not c!716811)) b!4205963))

(assert (= b!4205956 b!4205957))

(assert (= b!4205934 b!4205956))

(assert (= start!401834 b!4205934))

(assert (= b!4205959 b!4205964))

(assert (= start!401834 b!4205959))

(assert (= (and start!401834 ((_ is Cons!46238) p!3001)) b!4205961))

(assert (= b!4205952 b!4205937))

(assert (= b!4205951 b!4205952))

(assert (= (and start!401834 ((_ is Cons!46239) rules!3967)) b!4205951))

(assert (= (and start!401834 ((_ is Cons!46238) input!3517)) b!4205936))

(assert (= b!4205939 b!4205935))

(assert (= b!4205941 b!4205939))

(assert (= start!401834 b!4205941))

(assert (= (and start!401834 ((_ is Cons!46238) pBis!121)) b!4205950))

(assert (= (and start!401834 ((_ is Cons!46238) suffix!1557)) b!4205954))

(assert (= (and start!401834 ((_ is Cons!46238) suffixBis!41)) b!4205960))

(declare-fun m!4793995 () Bool)

(assert (=> b!4205956 m!4793995))

(declare-fun m!4793997 () Bool)

(assert (=> b!4205956 m!4793997))

(declare-fun m!4793999 () Bool)

(assert (=> b!4205945 m!4793999))

(declare-fun m!4794001 () Bool)

(assert (=> b!4205966 m!4794001))

(declare-fun m!4794003 () Bool)

(assert (=> b!4205959 m!4794003))

(declare-fun m!4794005 () Bool)

(assert (=> b!4205959 m!4794005))

(declare-fun m!4794007 () Bool)

(assert (=> start!401834 m!4794007))

(declare-fun m!4794009 () Bool)

(assert (=> start!401834 m!4794009))

(declare-fun m!4794011 () Bool)

(assert (=> b!4205942 m!4794011))

(declare-fun m!4794013 () Bool)

(assert (=> b!4205949 m!4794013))

(declare-fun m!4794015 () Bool)

(assert (=> b!4205949 m!4794015))

(declare-fun m!4794017 () Bool)

(assert (=> b!4205949 m!4794017))

(declare-fun m!4794019 () Bool)

(assert (=> b!4205949 m!4794019))

(declare-fun m!4794021 () Bool)

(assert (=> b!4205949 m!4794021))

(declare-fun m!4794023 () Bool)

(assert (=> b!4205949 m!4794023))

(declare-fun m!4794025 () Bool)

(assert (=> b!4205949 m!4794025))

(assert (=> b!4205949 m!4794019))

(declare-fun m!4794027 () Bool)

(assert (=> b!4205949 m!4794027))

(declare-fun m!4794029 () Bool)

(assert (=> b!4205949 m!4794029))

(declare-fun m!4794031 () Bool)

(assert (=> b!4205949 m!4794031))

(declare-fun m!4794033 () Bool)

(assert (=> b!4205949 m!4794033))

(declare-fun m!4794035 () Bool)

(assert (=> b!4205949 m!4794035))

(declare-fun m!4794037 () Bool)

(assert (=> b!4205949 m!4794037))

(declare-fun m!4794039 () Bool)

(assert (=> b!4205949 m!4794039))

(declare-fun m!4794041 () Bool)

(assert (=> b!4205949 m!4794041))

(assert (=> b!4205949 m!4794035))

(declare-fun m!4794043 () Bool)

(assert (=> b!4205949 m!4794043))

(declare-fun m!4794045 () Bool)

(assert (=> b!4205955 m!4794045))

(declare-fun m!4794047 () Bool)

(assert (=> b!4205946 m!4794047))

(declare-fun m!4794049 () Bool)

(assert (=> b!4205939 m!4794049))

(declare-fun m!4794051 () Bool)

(assert (=> b!4205939 m!4794051))

(declare-fun m!4794053 () Bool)

(assert (=> b!4205965 m!4794053))

(declare-fun m!4794055 () Bool)

(assert (=> b!4205938 m!4794055))

(declare-fun m!4794057 () Bool)

(assert (=> b!4205944 m!4794057))

(declare-fun m!4794059 () Bool)

(assert (=> b!4205962 m!4794059))

(declare-fun m!4794061 () Bool)

(assert (=> b!4205934 m!4794061))

(declare-fun m!4794063 () Bool)

(assert (=> b!4205958 m!4794063))

(declare-fun m!4794065 () Bool)

(assert (=> b!4205943 m!4794065))

(declare-fun m!4794067 () Bool)

(assert (=> b!4205947 m!4794067))

(declare-fun m!4794069 () Bool)

(assert (=> b!4205947 m!4794069))

(declare-fun m!4794071 () Bool)

(assert (=> b!4205947 m!4794071))

(declare-fun m!4794073 () Bool)

(assert (=> b!4205940 m!4794073))

(assert (=> b!4205940 m!4794073))

(declare-fun m!4794075 () Bool)

(assert (=> b!4205940 m!4794075))

(declare-fun m!4794077 () Bool)

(assert (=> b!4205952 m!4794077))

(declare-fun m!4794079 () Bool)

(assert (=> b!4205952 m!4794079))

(declare-fun m!4794081 () Bool)

(assert (=> b!4205941 m!4794081))

(check-sat (not b!4205945) (not b!4205956) (not b!4205961) (not b_next!123647) (not b!4205965) b_and!330571 (not b_next!123643) (not b!4205958) (not b!4205941) (not b!4205942) (not b!4205947) (not b_next!123649) (not b!4205950) (not b_next!123639) (not b!4205940) (not b_next!123645) b_and!330557 b_and!330559 (not b!4205943) (not b!4205946) b_and!330565 tp_is_empty!22241 b_and!330563 (not b!4205966) (not b!4205954) (not b!4205960) (not b!4205939) (not start!401834) (not b!4205949) (not b!4205959) (not b_next!123637) (not b!4205934) (not b!4205962) (not b_next!123641) (not b!4205936) (not b!4205944) (not b!4205955) (not b!4205938) b_and!330561 (not b!4205951) (not b_next!123635) b_and!330569 b_and!330567 (not b!4205952))
(check-sat (not b_next!123639) (not b_next!123647) b_and!330571 b_and!330565 b_and!330563 (not b_next!123643) (not b_next!123637) (not b_next!123641) (not b_next!123649) b_and!330561 b_and!330567 (not b_next!123645) b_and!330557 b_and!330559 (not b_next!123635) b_and!330569)
(get-model)

(declare-fun d!1239766 () Bool)

(assert (=> d!1239766 (isEmpty!27381 (maxPrefixOneRule!3322 thiss!26544 rBis!178 input!3517))))

(declare-fun lt!1497810 () Unit!65351)

(declare-fun choose!25781 (LexerInterface!7327 Rule!15264 List!46363 List!46362) Unit!65351)

(assert (=> d!1239766 (= lt!1497810 (choose!25781 thiss!26544 rBis!178 (t!347432 rules!3967) input!3517))))

(assert (=> d!1239766 (not (isEmpty!27380 (t!347432 rules!3967)))))

(assert (=> d!1239766 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!610 thiss!26544 rBis!178 (t!347432 rules!3967) input!3517) lt!1497810)))

(declare-fun bs!597208 () Bool)

(assert (= bs!597208 d!1239766))

(assert (=> bs!597208 m!4794067))

(assert (=> bs!597208 m!4794067))

(declare-fun m!4794109 () Bool)

(assert (=> bs!597208 m!4794109))

(declare-fun m!4794111 () Bool)

(assert (=> bs!597208 m!4794111))

(declare-fun m!4794113 () Bool)

(assert (=> bs!597208 m!4794113))

(assert (=> b!4205942 d!1239766))

(declare-fun d!1239768 () Bool)

(declare-fun res!1727568 () Bool)

(declare-fun e!2610986 () Bool)

(assert (=> d!1239768 (=> (not res!1727568) (not e!2610986))))

(declare-fun validRegex!5733 (Regex!12637) Bool)

(assert (=> d!1239768 (= res!1727568 (validRegex!5733 (regex!7732 rBis!178)))))

(assert (=> d!1239768 (= (ruleValid!3444 thiss!26544 rBis!178) e!2610986)))

(declare-fun b!4206025 () Bool)

(declare-fun res!1727569 () Bool)

(assert (=> b!4206025 (=> (not res!1727569) (not e!2610986))))

(declare-fun nullable!4446 (Regex!12637) Bool)

(assert (=> b!4206025 (= res!1727569 (not (nullable!4446 (regex!7732 rBis!178))))))

(declare-fun b!4206026 () Bool)

(assert (=> b!4206026 (= e!2610986 (not (= (tag!8596 rBis!178) (String!53681 ""))))))

(assert (= (and d!1239768 res!1727568) b!4206025))

(assert (= (and b!4206025 res!1727569) b!4206026))

(declare-fun m!4794115 () Bool)

(assert (=> d!1239768 m!4794115))

(declare-fun m!4794117 () Bool)

(assert (=> b!4206025 m!4794117))

(assert (=> b!4205943 d!1239768))

(declare-fun d!1239770 () Bool)

(declare-fun lt!1497823 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7228 (List!46363) (InoxSet Rule!15264))

(assert (=> d!1239770 (= lt!1497823 (select (content!7228 rules!3967) rBis!178))))

(declare-fun e!2610996 () Bool)

(assert (=> d!1239770 (= lt!1497823 e!2610996)))

(declare-fun res!1727581 () Bool)

(assert (=> d!1239770 (=> (not res!1727581) (not e!2610996))))

(assert (=> d!1239770 (= res!1727581 ((_ is Cons!46239) rules!3967))))

(assert (=> d!1239770 (= (contains!9549 rules!3967 rBis!178) lt!1497823)))

(declare-fun b!4206040 () Bool)

(declare-fun e!2610995 () Bool)

(assert (=> b!4206040 (= e!2610996 e!2610995)))

(declare-fun res!1727582 () Bool)

(assert (=> b!4206040 (=> res!1727582 e!2610995)))

(assert (=> b!4206040 (= res!1727582 (= (h!51659 rules!3967) rBis!178))))

(declare-fun b!4206041 () Bool)

(assert (=> b!4206041 (= e!2610995 (contains!9549 (t!347432 rules!3967) rBis!178))))

(assert (= (and d!1239770 res!1727581) b!4206040))

(assert (= (and b!4206040 (not res!1727582)) b!4206041))

(declare-fun m!4794203 () Bool)

(assert (=> d!1239770 m!4794203))

(declare-fun m!4794205 () Bool)

(assert (=> d!1239770 m!4794205))

(declare-fun m!4794207 () Bool)

(assert (=> b!4206041 m!4794207))

(assert (=> b!4205965 d!1239770))

(declare-fun b!4206070 () Bool)

(declare-fun e!2611016 () Bool)

(declare-fun e!2611018 () Bool)

(assert (=> b!4206070 (= e!2611016 e!2611018)))

(declare-fun res!1727610 () Bool)

(assert (=> b!4206070 (=> (not res!1727610) (not e!2611018))))

(assert (=> b!4206070 (= res!1727610 (not ((_ is Nil!46238) input!3517)))))

(declare-fun b!4206072 () Bool)

(declare-fun tail!6771 (List!46362) List!46362)

(assert (=> b!4206072 (= e!2611018 (isPrefix!4591 (tail!6771 p!3001) (tail!6771 input!3517)))))

(declare-fun b!4206071 () Bool)

(declare-fun res!1727609 () Bool)

(assert (=> b!4206071 (=> (not res!1727609) (not e!2611018))))

(declare-fun head!8924 (List!46362) C!25468)

(assert (=> b!4206071 (= res!1727609 (= (head!8924 p!3001) (head!8924 input!3517)))))

(declare-fun b!4206073 () Bool)

(declare-fun e!2611017 () Bool)

(assert (=> b!4206073 (= e!2611017 (>= (size!33969 input!3517) (size!33969 p!3001)))))

(declare-fun d!1239776 () Bool)

(assert (=> d!1239776 e!2611017))

(declare-fun res!1727607 () Bool)

(assert (=> d!1239776 (=> res!1727607 e!2611017)))

(declare-fun lt!1497834 () Bool)

(assert (=> d!1239776 (= res!1727607 (not lt!1497834))))

(assert (=> d!1239776 (= lt!1497834 e!2611016)))

(declare-fun res!1727608 () Bool)

(assert (=> d!1239776 (=> res!1727608 e!2611016)))

(assert (=> d!1239776 (= res!1727608 ((_ is Nil!46238) p!3001))))

(assert (=> d!1239776 (= (isPrefix!4591 p!3001 input!3517) lt!1497834)))

(assert (= (and d!1239776 (not res!1727608)) b!4206070))

(assert (= (and b!4206070 res!1727610) b!4206071))

(assert (= (and b!4206071 res!1727609) b!4206072))

(assert (= (and d!1239776 (not res!1727607)) b!4206073))

(declare-fun m!4794229 () Bool)

(assert (=> b!4206072 m!4794229))

(declare-fun m!4794231 () Bool)

(assert (=> b!4206072 m!4794231))

(assert (=> b!4206072 m!4794229))

(assert (=> b!4206072 m!4794231))

(declare-fun m!4794233 () Bool)

(assert (=> b!4206072 m!4794233))

(declare-fun m!4794235 () Bool)

(assert (=> b!4206071 m!4794235))

(declare-fun m!4794237 () Bool)

(assert (=> b!4206071 m!4794237))

(declare-fun m!4794239 () Bool)

(assert (=> b!4206073 m!4794239))

(declare-fun m!4794241 () Bool)

(assert (=> b!4206073 m!4794241))

(assert (=> b!4205944 d!1239776))

(declare-fun b!4206078 () Bool)

(declare-fun e!2611021 () Bool)

(declare-fun e!2611023 () Bool)

(assert (=> b!4206078 (= e!2611021 e!2611023)))

(declare-fun res!1727616 () Bool)

(assert (=> b!4206078 (=> (not res!1727616) (not e!2611023))))

(assert (=> b!4206078 (= res!1727616 (not ((_ is Nil!46238) input!3517)))))

(declare-fun b!4206080 () Bool)

(assert (=> b!4206080 (= e!2611023 (isPrefix!4591 (tail!6771 pBis!121) (tail!6771 input!3517)))))

(declare-fun b!4206079 () Bool)

(declare-fun res!1727615 () Bool)

(assert (=> b!4206079 (=> (not res!1727615) (not e!2611023))))

(assert (=> b!4206079 (= res!1727615 (= (head!8924 pBis!121) (head!8924 input!3517)))))

(declare-fun b!4206081 () Bool)

(declare-fun e!2611022 () Bool)

(assert (=> b!4206081 (= e!2611022 (>= (size!33969 input!3517) (size!33969 pBis!121)))))

(declare-fun d!1239784 () Bool)

(assert (=> d!1239784 e!2611022))

(declare-fun res!1727613 () Bool)

(assert (=> d!1239784 (=> res!1727613 e!2611022)))

(declare-fun lt!1497836 () Bool)

(assert (=> d!1239784 (= res!1727613 (not lt!1497836))))

(assert (=> d!1239784 (= lt!1497836 e!2611021)))

(declare-fun res!1727614 () Bool)

(assert (=> d!1239784 (=> res!1727614 e!2611021)))

(assert (=> d!1239784 (= res!1727614 ((_ is Nil!46238) pBis!121))))

(assert (=> d!1239784 (= (isPrefix!4591 pBis!121 input!3517) lt!1497836)))

(assert (= (and d!1239784 (not res!1727614)) b!4206078))

(assert (= (and b!4206078 res!1727616) b!4206079))

(assert (= (and b!4206079 res!1727615) b!4206080))

(assert (= (and d!1239784 (not res!1727613)) b!4206081))

(declare-fun m!4794243 () Bool)

(assert (=> b!4206080 m!4794243))

(assert (=> b!4206080 m!4794231))

(assert (=> b!4206080 m!4794243))

(assert (=> b!4206080 m!4794231))

(declare-fun m!4794245 () Bool)

(assert (=> b!4206080 m!4794245))

(declare-fun m!4794247 () Bool)

(assert (=> b!4206079 m!4794247))

(assert (=> b!4206079 m!4794237))

(assert (=> b!4206081 m!4794239))

(assert (=> b!4206081 m!4794033))

(assert (=> b!4205955 d!1239784))

(declare-fun e!2611040 () Bool)

(declare-fun b!4206108 () Bool)

(declare-fun lt!1497843 () List!46362)

(assert (=> b!4206108 (= e!2611040 (or (not (= suffix!1557 Nil!46238)) (= lt!1497843 p!3001)))))

(declare-fun d!1239788 () Bool)

(assert (=> d!1239788 e!2611040))

(declare-fun res!1727629 () Bool)

(assert (=> d!1239788 (=> (not res!1727629) (not e!2611040))))

(declare-fun content!7229 (List!46362) (InoxSet C!25468))

(assert (=> d!1239788 (= res!1727629 (= (content!7229 lt!1497843) ((_ map or) (content!7229 p!3001) (content!7229 suffix!1557))))))

(declare-fun e!2611039 () List!46362)

(assert (=> d!1239788 (= lt!1497843 e!2611039)))

(declare-fun c!716827 () Bool)

(assert (=> d!1239788 (= c!716827 ((_ is Nil!46238) p!3001))))

(assert (=> d!1239788 (= (++!11806 p!3001 suffix!1557) lt!1497843)))

(declare-fun b!4206106 () Bool)

(assert (=> b!4206106 (= e!2611039 (Cons!46238 (h!51658 p!3001) (++!11806 (t!347431 p!3001) suffix!1557)))))

(declare-fun b!4206105 () Bool)

(assert (=> b!4206105 (= e!2611039 suffix!1557)))

(declare-fun b!4206107 () Bool)

(declare-fun res!1727630 () Bool)

(assert (=> b!4206107 (=> (not res!1727630) (not e!2611040))))

(assert (=> b!4206107 (= res!1727630 (= (size!33969 lt!1497843) (+ (size!33969 p!3001) (size!33969 suffix!1557))))))

(assert (= (and d!1239788 c!716827) b!4206105))

(assert (= (and d!1239788 (not c!716827)) b!4206106))

(assert (= (and d!1239788 res!1727629) b!4206107))

(assert (= (and b!4206107 res!1727630) b!4206108))

(declare-fun m!4794289 () Bool)

(assert (=> d!1239788 m!4794289))

(declare-fun m!4794291 () Bool)

(assert (=> d!1239788 m!4794291))

(declare-fun m!4794293 () Bool)

(assert (=> d!1239788 m!4794293))

(declare-fun m!4794295 () Bool)

(assert (=> b!4206106 m!4794295))

(declare-fun m!4794297 () Bool)

(assert (=> b!4206107 m!4794297))

(assert (=> b!4206107 m!4794241))

(declare-fun m!4794299 () Bool)

(assert (=> b!4206107 m!4794299))

(assert (=> b!4205966 d!1239788))

(declare-fun b!4206119 () Bool)

(declare-fun e!2611049 () Bool)

(declare-fun inv!15 (TokenValue!7962) Bool)

(assert (=> b!4206119 (= e!2611049 (inv!15 (value!240891 tBis!41)))))

(declare-fun b!4206120 () Bool)

(declare-fun res!1727633 () Bool)

(assert (=> b!4206120 (=> res!1727633 e!2611049)))

(assert (=> b!4206120 (= res!1727633 (not ((_ is IntegerValue!23888) (value!240891 tBis!41))))))

(declare-fun e!2611048 () Bool)

(assert (=> b!4206120 (= e!2611048 e!2611049)))

(declare-fun b!4206121 () Bool)

(declare-fun e!2611047 () Bool)

(assert (=> b!4206121 (= e!2611047 e!2611048)))

(declare-fun c!716833 () Bool)

(assert (=> b!4206121 (= c!716833 ((_ is IntegerValue!23887) (value!240891 tBis!41)))))

(declare-fun b!4206122 () Bool)

(declare-fun inv!17 (TokenValue!7962) Bool)

(assert (=> b!4206122 (= e!2611048 (inv!17 (value!240891 tBis!41)))))

(declare-fun d!1239810 () Bool)

(declare-fun c!716832 () Bool)

(assert (=> d!1239810 (= c!716832 ((_ is IntegerValue!23886) (value!240891 tBis!41)))))

(assert (=> d!1239810 (= (inv!21 (value!240891 tBis!41)) e!2611047)))

(declare-fun b!4206123 () Bool)

(declare-fun inv!16 (TokenValue!7962) Bool)

(assert (=> b!4206123 (= e!2611047 (inv!16 (value!240891 tBis!41)))))

(assert (= (and d!1239810 c!716832) b!4206123))

(assert (= (and d!1239810 (not c!716832)) b!4206121))

(assert (= (and b!4206121 c!716833) b!4206122))

(assert (= (and b!4206121 (not c!716833)) b!4206120))

(assert (= (and b!4206120 (not res!1727633)) b!4206119))

(declare-fun m!4794301 () Bool)

(assert (=> b!4206119 m!4794301))

(declare-fun m!4794303 () Bool)

(assert (=> b!4206122 m!4794303))

(declare-fun m!4794305 () Bool)

(assert (=> b!4206123 m!4794305))

(assert (=> b!4205934 d!1239810))

(declare-fun d!1239812 () Bool)

(declare-fun e!2611134 () Bool)

(assert (=> d!1239812 e!2611134))

(declare-fun res!1727697 () Bool)

(assert (=> d!1239812 (=> res!1727697 e!2611134)))

(declare-fun lt!1497883 () Option!9920)

(assert (=> d!1239812 (= res!1727697 (isEmpty!27381 lt!1497883))))

(declare-fun e!2611132 () Option!9920)

(assert (=> d!1239812 (= lt!1497883 e!2611132)))

(declare-fun c!716850 () Bool)

(assert (=> d!1239812 (= c!716850 (and ((_ is Cons!46239) rules!3967) ((_ is Nil!46239) (t!347432 rules!3967))))))

(declare-fun lt!1497885 () Unit!65351)

(declare-fun lt!1497884 () Unit!65351)

(assert (=> d!1239812 (= lt!1497885 lt!1497884)))

(assert (=> d!1239812 (isPrefix!4591 input!3517 input!3517)))

(assert (=> d!1239812 (= lt!1497884 (lemmaIsPrefixRefl!3008 input!3517 input!3517))))

(declare-fun rulesValidInductive!2866 (LexerInterface!7327 List!46363) Bool)

(assert (=> d!1239812 (rulesValidInductive!2866 thiss!26544 rules!3967)))

(assert (=> d!1239812 (= (maxPrefix!4367 thiss!26544 rules!3967 input!3517) lt!1497883)))

(declare-fun call!292783 () Option!9920)

(declare-fun bm!292778 () Bool)

(assert (=> bm!292778 (= call!292783 (maxPrefixOneRule!3322 thiss!26544 (h!51659 rules!3967) input!3517))))

(declare-fun b!4206269 () Bool)

(declare-fun res!1727700 () Bool)

(declare-fun e!2611133 () Bool)

(assert (=> b!4206269 (=> (not res!1727700) (not e!2611133))))

(assert (=> b!4206269 (= res!1727700 (= (list!16711 (charsOf!5155 (_1!25127 (get!15040 lt!1497883)))) (originalCharacters!8114 (_1!25127 (get!15040 lt!1497883)))))))

(declare-fun b!4206270 () Bool)

(assert (=> b!4206270 (= e!2611133 (contains!9549 rules!3967 (rule!10836 (_1!25127 (get!15040 lt!1497883)))))))

(declare-fun b!4206271 () Bool)

(declare-fun res!1727701 () Bool)

(assert (=> b!4206271 (=> (not res!1727701) (not e!2611133))))

(assert (=> b!4206271 (= res!1727701 (= (++!11806 (list!16711 (charsOf!5155 (_1!25127 (get!15040 lt!1497883)))) (_2!25127 (get!15040 lt!1497883))) input!3517))))

(declare-fun b!4206272 () Bool)

(assert (=> b!4206272 (= e!2611132 call!292783)))

(declare-fun b!4206273 () Bool)

(declare-fun res!1727699 () Bool)

(assert (=> b!4206273 (=> (not res!1727699) (not e!2611133))))

(declare-fun apply!10675 (TokenValueInjection!15352 BalanceConc!27480) TokenValue!7962)

(declare-fun seqFromList!5735 (List!46362) BalanceConc!27480)

(assert (=> b!4206273 (= res!1727699 (= (value!240891 (_1!25127 (get!15040 lt!1497883))) (apply!10675 (transformation!7732 (rule!10836 (_1!25127 (get!15040 lt!1497883)))) (seqFromList!5735 (originalCharacters!8114 (_1!25127 (get!15040 lt!1497883)))))))))

(declare-fun b!4206274 () Bool)

(assert (=> b!4206274 (= e!2611134 e!2611133)))

(declare-fun res!1727702 () Bool)

(assert (=> b!4206274 (=> (not res!1727702) (not e!2611133))))

(assert (=> b!4206274 (= res!1727702 (isDefined!7376 lt!1497883))))

(declare-fun b!4206275 () Bool)

(declare-fun lt!1497887 () Option!9920)

(declare-fun lt!1497886 () Option!9920)

(assert (=> b!4206275 (= e!2611132 (ite (and ((_ is None!9919) lt!1497887) ((_ is None!9919) lt!1497886)) None!9919 (ite ((_ is None!9919) lt!1497886) lt!1497887 (ite ((_ is None!9919) lt!1497887) lt!1497886 (ite (>= (size!33968 (_1!25127 (v!40779 lt!1497887))) (size!33968 (_1!25127 (v!40779 lt!1497886)))) lt!1497887 lt!1497886)))))))

(assert (=> b!4206275 (= lt!1497887 call!292783)))

(assert (=> b!4206275 (= lt!1497886 (maxPrefix!4367 thiss!26544 (t!347432 rules!3967) input!3517))))

(declare-fun b!4206276 () Bool)

(declare-fun res!1727703 () Bool)

(assert (=> b!4206276 (=> (not res!1727703) (not e!2611133))))

(declare-fun matchR!6354 (Regex!12637 List!46362) Bool)

(assert (=> b!4206276 (= res!1727703 (matchR!6354 (regex!7732 (rule!10836 (_1!25127 (get!15040 lt!1497883)))) (list!16711 (charsOf!5155 (_1!25127 (get!15040 lt!1497883))))))))

(declare-fun b!4206277 () Bool)

(declare-fun res!1727698 () Bool)

(assert (=> b!4206277 (=> (not res!1727698) (not e!2611133))))

(assert (=> b!4206277 (= res!1727698 (< (size!33969 (_2!25127 (get!15040 lt!1497883))) (size!33969 input!3517)))))

(assert (= (and d!1239812 c!716850) b!4206272))

(assert (= (and d!1239812 (not c!716850)) b!4206275))

(assert (= (or b!4206272 b!4206275) bm!292778))

(assert (= (and d!1239812 (not res!1727697)) b!4206274))

(assert (= (and b!4206274 res!1727702) b!4206269))

(assert (= (and b!4206269 res!1727700) b!4206277))

(assert (= (and b!4206277 res!1727698) b!4206271))

(assert (= (and b!4206271 res!1727701) b!4206273))

(assert (= (and b!4206273 res!1727699) b!4206276))

(assert (= (and b!4206276 res!1727703) b!4206270))

(declare-fun m!4794451 () Bool)

(assert (=> d!1239812 m!4794451))

(assert (=> d!1239812 m!4794069))

(assert (=> d!1239812 m!4794071))

(declare-fun m!4794453 () Bool)

(assert (=> d!1239812 m!4794453))

(assert (=> bm!292778 m!4794063))

(declare-fun m!4794455 () Bool)

(assert (=> b!4206271 m!4794455))

(declare-fun m!4794457 () Bool)

(assert (=> b!4206271 m!4794457))

(assert (=> b!4206271 m!4794457))

(declare-fun m!4794459 () Bool)

(assert (=> b!4206271 m!4794459))

(assert (=> b!4206271 m!4794459))

(declare-fun m!4794461 () Bool)

(assert (=> b!4206271 m!4794461))

(assert (=> b!4206275 m!4794013))

(assert (=> b!4206270 m!4794455))

(declare-fun m!4794463 () Bool)

(assert (=> b!4206270 m!4794463))

(assert (=> b!4206277 m!4794455))

(declare-fun m!4794465 () Bool)

(assert (=> b!4206277 m!4794465))

(assert (=> b!4206277 m!4794239))

(declare-fun m!4794467 () Bool)

(assert (=> b!4206274 m!4794467))

(assert (=> b!4206276 m!4794455))

(assert (=> b!4206276 m!4794457))

(assert (=> b!4206276 m!4794457))

(assert (=> b!4206276 m!4794459))

(assert (=> b!4206276 m!4794459))

(declare-fun m!4794469 () Bool)

(assert (=> b!4206276 m!4794469))

(assert (=> b!4206269 m!4794455))

(assert (=> b!4206269 m!4794457))

(assert (=> b!4206269 m!4794457))

(assert (=> b!4206269 m!4794459))

(assert (=> b!4206273 m!4794455))

(declare-fun m!4794471 () Bool)

(assert (=> b!4206273 m!4794471))

(assert (=> b!4206273 m!4794471))

(declare-fun m!4794473 () Bool)

(assert (=> b!4206273 m!4794473))

(assert (=> b!4205945 d!1239812))

(declare-fun d!1239866 () Bool)

(assert (=> d!1239866 (= (inv!60821 (tag!8596 (rule!10836 tBis!41))) (= (mod (str.len (value!240890 (tag!8596 (rule!10836 tBis!41)))) 2) 0))))

(assert (=> b!4205956 d!1239866))

(declare-fun d!1239868 () Bool)

(declare-fun res!1727706 () Bool)

(declare-fun e!2611137 () Bool)

(assert (=> d!1239868 (=> (not res!1727706) (not e!2611137))))

(declare-fun semiInverseModEq!3356 (Int Int) Bool)

(assert (=> d!1239868 (= res!1727706 (semiInverseModEq!3356 (toChars!10303 (transformation!7732 (rule!10836 tBis!41))) (toValue!10444 (transformation!7732 (rule!10836 tBis!41)))))))

(assert (=> d!1239868 (= (inv!60824 (transformation!7732 (rule!10836 tBis!41))) e!2611137)))

(declare-fun b!4206280 () Bool)

(declare-fun equivClasses!3255 (Int Int) Bool)

(assert (=> b!4206280 (= e!2611137 (equivClasses!3255 (toChars!10303 (transformation!7732 (rule!10836 tBis!41))) (toValue!10444 (transformation!7732 (rule!10836 tBis!41)))))))

(assert (= (and d!1239868 res!1727706) b!4206280))

(declare-fun m!4794475 () Bool)

(assert (=> d!1239868 m!4794475))

(declare-fun m!4794477 () Bool)

(assert (=> b!4206280 m!4794477))

(assert (=> b!4205956 d!1239868))

(declare-fun d!1239870 () Bool)

(declare-fun res!1727709 () Bool)

(declare-fun e!2611140 () Bool)

(assert (=> d!1239870 (=> (not res!1727709) (not e!2611140))))

(declare-fun rulesValid!3024 (LexerInterface!7327 List!46363) Bool)

(assert (=> d!1239870 (= res!1727709 (rulesValid!3024 thiss!26544 rules!3967))))

(assert (=> d!1239870 (= (rulesInvariant!6538 thiss!26544 rules!3967) e!2611140)))

(declare-fun b!4206283 () Bool)

(declare-datatypes ((List!46365 0))(
  ( (Nil!46241) (Cons!46241 (h!51661 String!53680) (t!347496 List!46365)) )
))
(declare-fun noDuplicateTag!3185 (LexerInterface!7327 List!46363 List!46365) Bool)

(assert (=> b!4206283 (= e!2611140 (noDuplicateTag!3185 thiss!26544 rules!3967 Nil!46241))))

(assert (= (and d!1239870 res!1727709) b!4206283))

(declare-fun m!4794479 () Bool)

(assert (=> d!1239870 m!4794479))

(declare-fun m!4794481 () Bool)

(assert (=> b!4206283 m!4794481))

(assert (=> b!4205946 d!1239870))

(declare-fun b!4206302 () Bool)

(declare-fun res!1727727 () Bool)

(declare-fun e!2611152 () Bool)

(assert (=> b!4206302 (=> (not res!1727727) (not e!2611152))))

(declare-fun lt!1497898 () Option!9920)

(assert (=> b!4206302 (= res!1727727 (= (rule!10836 (_1!25127 (get!15040 lt!1497898))) rBis!178))))

(declare-fun b!4206303 () Bool)

(declare-fun e!2611149 () Bool)

(assert (=> b!4206303 (= e!2611149 e!2611152)))

(declare-fun res!1727724 () Bool)

(assert (=> b!4206303 (=> (not res!1727724) (not e!2611152))))

(assert (=> b!4206303 (= res!1727724 (matchR!6354 (regex!7732 rBis!178) (list!16711 (charsOf!5155 (_1!25127 (get!15040 lt!1497898))))))))

(declare-fun b!4206304 () Bool)

(declare-fun res!1727726 () Bool)

(assert (=> b!4206304 (=> (not res!1727726) (not e!2611152))))

(assert (=> b!4206304 (= res!1727726 (= (value!240891 (_1!25127 (get!15040 lt!1497898))) (apply!10675 (transformation!7732 (rule!10836 (_1!25127 (get!15040 lt!1497898)))) (seqFromList!5735 (originalCharacters!8114 (_1!25127 (get!15040 lt!1497898)))))))))

(declare-fun b!4206305 () Bool)

(declare-fun e!2611151 () Option!9920)

(declare-datatypes ((tuple2!43990 0))(
  ( (tuple2!43991 (_1!25129 List!46362) (_2!25129 List!46362)) )
))
(declare-fun lt!1497902 () tuple2!43990)

(declare-fun size!33971 (BalanceConc!27480) Int)

(assert (=> b!4206305 (= e!2611151 (Some!9919 (tuple2!43987 (Token!14167 (apply!10675 (transformation!7732 rBis!178) (seqFromList!5735 (_1!25129 lt!1497902))) rBis!178 (size!33971 (seqFromList!5735 (_1!25129 lt!1497902))) (_1!25129 lt!1497902)) (_2!25129 lt!1497902))))))

(declare-fun lt!1497899 () Unit!65351)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1608 (Regex!12637 List!46362) Unit!65351)

(assert (=> b!4206305 (= lt!1497899 (longestMatchIsAcceptedByMatchOrIsEmpty!1608 (regex!7732 rBis!178) input!3517))))

(declare-fun res!1727730 () Bool)

(declare-fun isEmpty!27383 (List!46362) Bool)

(declare-fun findLongestMatchInner!1635 (Regex!12637 List!46362 Int List!46362 List!46362 Int) tuple2!43990)

(assert (=> b!4206305 (= res!1727730 (isEmpty!27383 (_1!25129 (findLongestMatchInner!1635 (regex!7732 rBis!178) Nil!46238 (size!33969 Nil!46238) input!3517 input!3517 (size!33969 input!3517)))))))

(declare-fun e!2611150 () Bool)

(assert (=> b!4206305 (=> res!1727730 e!2611150)))

(assert (=> b!4206305 e!2611150))

(declare-fun lt!1497901 () Unit!65351)

(assert (=> b!4206305 (= lt!1497901 lt!1497899)))

(declare-fun lt!1497900 () Unit!65351)

(declare-fun lemmaSemiInverse!2476 (TokenValueInjection!15352 BalanceConc!27480) Unit!65351)

(assert (=> b!4206305 (= lt!1497900 (lemmaSemiInverse!2476 (transformation!7732 rBis!178) (seqFromList!5735 (_1!25129 lt!1497902))))))

(declare-fun b!4206306 () Bool)

(assert (=> b!4206306 (= e!2611150 (matchR!6354 (regex!7732 rBis!178) (_1!25129 (findLongestMatchInner!1635 (regex!7732 rBis!178) Nil!46238 (size!33969 Nil!46238) input!3517 input!3517 (size!33969 input!3517)))))))

(declare-fun b!4206307 () Bool)

(declare-fun res!1727725 () Bool)

(assert (=> b!4206307 (=> (not res!1727725) (not e!2611152))))

(assert (=> b!4206307 (= res!1727725 (= (++!11806 (list!16711 (charsOf!5155 (_1!25127 (get!15040 lt!1497898)))) (_2!25127 (get!15040 lt!1497898))) input!3517))))

(declare-fun d!1239872 () Bool)

(assert (=> d!1239872 e!2611149))

(declare-fun res!1727729 () Bool)

(assert (=> d!1239872 (=> res!1727729 e!2611149)))

(assert (=> d!1239872 (= res!1727729 (isEmpty!27381 lt!1497898))))

(assert (=> d!1239872 (= lt!1497898 e!2611151)))

(declare-fun c!716853 () Bool)

(assert (=> d!1239872 (= c!716853 (isEmpty!27383 (_1!25129 lt!1497902)))))

(declare-fun findLongestMatch!1548 (Regex!12637 List!46362) tuple2!43990)

(assert (=> d!1239872 (= lt!1497902 (findLongestMatch!1548 (regex!7732 rBis!178) input!3517))))

(assert (=> d!1239872 (ruleValid!3444 thiss!26544 rBis!178)))

(assert (=> d!1239872 (= (maxPrefixOneRule!3322 thiss!26544 rBis!178 input!3517) lt!1497898)))

(declare-fun b!4206308 () Bool)

(declare-fun res!1727728 () Bool)

(assert (=> b!4206308 (=> (not res!1727728) (not e!2611152))))

(assert (=> b!4206308 (= res!1727728 (< (size!33969 (_2!25127 (get!15040 lt!1497898))) (size!33969 input!3517)))))

(declare-fun b!4206309 () Bool)

(assert (=> b!4206309 (= e!2611152 (= (size!33968 (_1!25127 (get!15040 lt!1497898))) (size!33969 (originalCharacters!8114 (_1!25127 (get!15040 lt!1497898))))))))

(declare-fun b!4206310 () Bool)

(assert (=> b!4206310 (= e!2611151 None!9919)))

(assert (= (and d!1239872 c!716853) b!4206310))

(assert (= (and d!1239872 (not c!716853)) b!4206305))

(assert (= (and b!4206305 (not res!1727730)) b!4206306))

(assert (= (and d!1239872 (not res!1727729)) b!4206303))

(assert (= (and b!4206303 res!1727724) b!4206307))

(assert (= (and b!4206307 res!1727725) b!4206308))

(assert (= (and b!4206308 res!1727728) b!4206302))

(assert (= (and b!4206302 res!1727727) b!4206304))

(assert (= (and b!4206304 res!1727726) b!4206309))

(declare-fun m!4794483 () Bool)

(assert (=> d!1239872 m!4794483))

(declare-fun m!4794485 () Bool)

(assert (=> d!1239872 m!4794485))

(declare-fun m!4794487 () Bool)

(assert (=> d!1239872 m!4794487))

(assert (=> d!1239872 m!4794065))

(assert (=> b!4206305 m!4794239))

(declare-fun m!4794489 () Bool)

(assert (=> b!4206305 m!4794489))

(assert (=> b!4206305 m!4794239))

(declare-fun m!4794491 () Bool)

(assert (=> b!4206305 m!4794491))

(declare-fun m!4794493 () Bool)

(assert (=> b!4206305 m!4794493))

(declare-fun m!4794495 () Bool)

(assert (=> b!4206305 m!4794495))

(assert (=> b!4206305 m!4794493))

(declare-fun m!4794497 () Bool)

(assert (=> b!4206305 m!4794497))

(declare-fun m!4794499 () Bool)

(assert (=> b!4206305 m!4794499))

(assert (=> b!4206305 m!4794489))

(assert (=> b!4206305 m!4794493))

(declare-fun m!4794501 () Bool)

(assert (=> b!4206305 m!4794501))

(assert (=> b!4206305 m!4794493))

(declare-fun m!4794503 () Bool)

(assert (=> b!4206305 m!4794503))

(declare-fun m!4794505 () Bool)

(assert (=> b!4206307 m!4794505))

(declare-fun m!4794507 () Bool)

(assert (=> b!4206307 m!4794507))

(assert (=> b!4206307 m!4794507))

(declare-fun m!4794509 () Bool)

(assert (=> b!4206307 m!4794509))

(assert (=> b!4206307 m!4794509))

(declare-fun m!4794511 () Bool)

(assert (=> b!4206307 m!4794511))

(assert (=> b!4206306 m!4794489))

(assert (=> b!4206306 m!4794239))

(assert (=> b!4206306 m!4794489))

(assert (=> b!4206306 m!4794239))

(assert (=> b!4206306 m!4794491))

(declare-fun m!4794513 () Bool)

(assert (=> b!4206306 m!4794513))

(assert (=> b!4206303 m!4794505))

(assert (=> b!4206303 m!4794507))

(assert (=> b!4206303 m!4794507))

(assert (=> b!4206303 m!4794509))

(assert (=> b!4206303 m!4794509))

(declare-fun m!4794515 () Bool)

(assert (=> b!4206303 m!4794515))

(assert (=> b!4206309 m!4794505))

(declare-fun m!4794517 () Bool)

(assert (=> b!4206309 m!4794517))

(assert (=> b!4206308 m!4794505))

(declare-fun m!4794519 () Bool)

(assert (=> b!4206308 m!4794519))

(assert (=> b!4206308 m!4794239))

(assert (=> b!4206302 m!4794505))

(assert (=> b!4206304 m!4794505))

(declare-fun m!4794521 () Bool)

(assert (=> b!4206304 m!4794521))

(assert (=> b!4206304 m!4794521))

(declare-fun m!4794523 () Bool)

(assert (=> b!4206304 m!4794523))

(assert (=> b!4205947 d!1239872))

(declare-fun b!4206311 () Bool)

(declare-fun e!2611153 () Bool)

(declare-fun e!2611155 () Bool)

(assert (=> b!4206311 (= e!2611153 e!2611155)))

(declare-fun res!1727734 () Bool)

(assert (=> b!4206311 (=> (not res!1727734) (not e!2611155))))

(assert (=> b!4206311 (= res!1727734 (not ((_ is Nil!46238) input!3517)))))

(declare-fun b!4206313 () Bool)

(assert (=> b!4206313 (= e!2611155 (isPrefix!4591 (tail!6771 input!3517) (tail!6771 input!3517)))))

(declare-fun b!4206312 () Bool)

(declare-fun res!1727733 () Bool)

(assert (=> b!4206312 (=> (not res!1727733) (not e!2611155))))

(assert (=> b!4206312 (= res!1727733 (= (head!8924 input!3517) (head!8924 input!3517)))))

(declare-fun b!4206314 () Bool)

(declare-fun e!2611154 () Bool)

(assert (=> b!4206314 (= e!2611154 (>= (size!33969 input!3517) (size!33969 input!3517)))))

(declare-fun d!1239874 () Bool)

(assert (=> d!1239874 e!2611154))

(declare-fun res!1727731 () Bool)

(assert (=> d!1239874 (=> res!1727731 e!2611154)))

(declare-fun lt!1497903 () Bool)

(assert (=> d!1239874 (= res!1727731 (not lt!1497903))))

(assert (=> d!1239874 (= lt!1497903 e!2611153)))

(declare-fun res!1727732 () Bool)

(assert (=> d!1239874 (=> res!1727732 e!2611153)))

(assert (=> d!1239874 (= res!1727732 ((_ is Nil!46238) input!3517))))

(assert (=> d!1239874 (= (isPrefix!4591 input!3517 input!3517) lt!1497903)))

(assert (= (and d!1239874 (not res!1727732)) b!4206311))

(assert (= (and b!4206311 res!1727734) b!4206312))

(assert (= (and b!4206312 res!1727733) b!4206313))

(assert (= (and d!1239874 (not res!1727731)) b!4206314))

(assert (=> b!4206313 m!4794231))

(assert (=> b!4206313 m!4794231))

(assert (=> b!4206313 m!4794231))

(assert (=> b!4206313 m!4794231))

(declare-fun m!4794525 () Bool)

(assert (=> b!4206313 m!4794525))

(assert (=> b!4206312 m!4794237))

(assert (=> b!4206312 m!4794237))

(assert (=> b!4206314 m!4794239))

(assert (=> b!4206314 m!4794239))

(assert (=> b!4205947 d!1239874))

(declare-fun d!1239876 () Bool)

(assert (=> d!1239876 (isPrefix!4591 input!3517 input!3517)))

(declare-fun lt!1497906 () Unit!65351)

(declare-fun choose!25785 (List!46362 List!46362) Unit!65351)

(assert (=> d!1239876 (= lt!1497906 (choose!25785 input!3517 input!3517))))

(assert (=> d!1239876 (= (lemmaIsPrefixRefl!3008 input!3517 input!3517) lt!1497906)))

(declare-fun bs!597219 () Bool)

(assert (= bs!597219 d!1239876))

(assert (=> bs!597219 m!4794069))

(declare-fun m!4794527 () Bool)

(assert (=> bs!597219 m!4794527))

(assert (=> b!4205947 d!1239876))

(declare-fun b!4206315 () Bool)

(declare-fun res!1727738 () Bool)

(declare-fun e!2611159 () Bool)

(assert (=> b!4206315 (=> (not res!1727738) (not e!2611159))))

(declare-fun lt!1497907 () Option!9920)

(assert (=> b!4206315 (= res!1727738 (= (rule!10836 (_1!25127 (get!15040 lt!1497907))) (h!51659 rules!3967)))))

(declare-fun b!4206316 () Bool)

(declare-fun e!2611156 () Bool)

(assert (=> b!4206316 (= e!2611156 e!2611159)))

(declare-fun res!1727735 () Bool)

(assert (=> b!4206316 (=> (not res!1727735) (not e!2611159))))

(assert (=> b!4206316 (= res!1727735 (matchR!6354 (regex!7732 (h!51659 rules!3967)) (list!16711 (charsOf!5155 (_1!25127 (get!15040 lt!1497907))))))))

(declare-fun b!4206317 () Bool)

(declare-fun res!1727737 () Bool)

(assert (=> b!4206317 (=> (not res!1727737) (not e!2611159))))

(assert (=> b!4206317 (= res!1727737 (= (value!240891 (_1!25127 (get!15040 lt!1497907))) (apply!10675 (transformation!7732 (rule!10836 (_1!25127 (get!15040 lt!1497907)))) (seqFromList!5735 (originalCharacters!8114 (_1!25127 (get!15040 lt!1497907)))))))))

(declare-fun b!4206318 () Bool)

(declare-fun e!2611158 () Option!9920)

(declare-fun lt!1497911 () tuple2!43990)

(assert (=> b!4206318 (= e!2611158 (Some!9919 (tuple2!43987 (Token!14167 (apply!10675 (transformation!7732 (h!51659 rules!3967)) (seqFromList!5735 (_1!25129 lt!1497911))) (h!51659 rules!3967) (size!33971 (seqFromList!5735 (_1!25129 lt!1497911))) (_1!25129 lt!1497911)) (_2!25129 lt!1497911))))))

(declare-fun lt!1497908 () Unit!65351)

(assert (=> b!4206318 (= lt!1497908 (longestMatchIsAcceptedByMatchOrIsEmpty!1608 (regex!7732 (h!51659 rules!3967)) input!3517))))

(declare-fun res!1727741 () Bool)

(assert (=> b!4206318 (= res!1727741 (isEmpty!27383 (_1!25129 (findLongestMatchInner!1635 (regex!7732 (h!51659 rules!3967)) Nil!46238 (size!33969 Nil!46238) input!3517 input!3517 (size!33969 input!3517)))))))

(declare-fun e!2611157 () Bool)

(assert (=> b!4206318 (=> res!1727741 e!2611157)))

(assert (=> b!4206318 e!2611157))

(declare-fun lt!1497910 () Unit!65351)

(assert (=> b!4206318 (= lt!1497910 lt!1497908)))

(declare-fun lt!1497909 () Unit!65351)

(assert (=> b!4206318 (= lt!1497909 (lemmaSemiInverse!2476 (transformation!7732 (h!51659 rules!3967)) (seqFromList!5735 (_1!25129 lt!1497911))))))

(declare-fun b!4206319 () Bool)

(assert (=> b!4206319 (= e!2611157 (matchR!6354 (regex!7732 (h!51659 rules!3967)) (_1!25129 (findLongestMatchInner!1635 (regex!7732 (h!51659 rules!3967)) Nil!46238 (size!33969 Nil!46238) input!3517 input!3517 (size!33969 input!3517)))))))

(declare-fun b!4206320 () Bool)

(declare-fun res!1727736 () Bool)

(assert (=> b!4206320 (=> (not res!1727736) (not e!2611159))))

(assert (=> b!4206320 (= res!1727736 (= (++!11806 (list!16711 (charsOf!5155 (_1!25127 (get!15040 lt!1497907)))) (_2!25127 (get!15040 lt!1497907))) input!3517))))

(declare-fun d!1239878 () Bool)

(assert (=> d!1239878 e!2611156))

(declare-fun res!1727740 () Bool)

(assert (=> d!1239878 (=> res!1727740 e!2611156)))

(assert (=> d!1239878 (= res!1727740 (isEmpty!27381 lt!1497907))))

(assert (=> d!1239878 (= lt!1497907 e!2611158)))

(declare-fun c!716854 () Bool)

(assert (=> d!1239878 (= c!716854 (isEmpty!27383 (_1!25129 lt!1497911)))))

(assert (=> d!1239878 (= lt!1497911 (findLongestMatch!1548 (regex!7732 (h!51659 rules!3967)) input!3517))))

(assert (=> d!1239878 (ruleValid!3444 thiss!26544 (h!51659 rules!3967))))

(assert (=> d!1239878 (= (maxPrefixOneRule!3322 thiss!26544 (h!51659 rules!3967) input!3517) lt!1497907)))

(declare-fun b!4206321 () Bool)

(declare-fun res!1727739 () Bool)

(assert (=> b!4206321 (=> (not res!1727739) (not e!2611159))))

(assert (=> b!4206321 (= res!1727739 (< (size!33969 (_2!25127 (get!15040 lt!1497907))) (size!33969 input!3517)))))

(declare-fun b!4206322 () Bool)

(assert (=> b!4206322 (= e!2611159 (= (size!33968 (_1!25127 (get!15040 lt!1497907))) (size!33969 (originalCharacters!8114 (_1!25127 (get!15040 lt!1497907))))))))

(declare-fun b!4206323 () Bool)

(assert (=> b!4206323 (= e!2611158 None!9919)))

(assert (= (and d!1239878 c!716854) b!4206323))

(assert (= (and d!1239878 (not c!716854)) b!4206318))

(assert (= (and b!4206318 (not res!1727741)) b!4206319))

(assert (= (and d!1239878 (not res!1727740)) b!4206316))

(assert (= (and b!4206316 res!1727735) b!4206320))

(assert (= (and b!4206320 res!1727736) b!4206321))

(assert (= (and b!4206321 res!1727739) b!4206315))

(assert (= (and b!4206315 res!1727738) b!4206317))

(assert (= (and b!4206317 res!1727737) b!4206322))

(declare-fun m!4794529 () Bool)

(assert (=> d!1239878 m!4794529))

(declare-fun m!4794531 () Bool)

(assert (=> d!1239878 m!4794531))

(declare-fun m!4794533 () Bool)

(assert (=> d!1239878 m!4794533))

(declare-fun m!4794535 () Bool)

(assert (=> d!1239878 m!4794535))

(assert (=> b!4206318 m!4794239))

(assert (=> b!4206318 m!4794489))

(assert (=> b!4206318 m!4794239))

(declare-fun m!4794537 () Bool)

(assert (=> b!4206318 m!4794537))

(declare-fun m!4794539 () Bool)

(assert (=> b!4206318 m!4794539))

(declare-fun m!4794541 () Bool)

(assert (=> b!4206318 m!4794541))

(assert (=> b!4206318 m!4794539))

(declare-fun m!4794543 () Bool)

(assert (=> b!4206318 m!4794543))

(declare-fun m!4794545 () Bool)

(assert (=> b!4206318 m!4794545))

(assert (=> b!4206318 m!4794489))

(assert (=> b!4206318 m!4794539))

(declare-fun m!4794547 () Bool)

(assert (=> b!4206318 m!4794547))

(assert (=> b!4206318 m!4794539))

(declare-fun m!4794549 () Bool)

(assert (=> b!4206318 m!4794549))

(declare-fun m!4794551 () Bool)

(assert (=> b!4206320 m!4794551))

(declare-fun m!4794553 () Bool)

(assert (=> b!4206320 m!4794553))

(assert (=> b!4206320 m!4794553))

(declare-fun m!4794555 () Bool)

(assert (=> b!4206320 m!4794555))

(assert (=> b!4206320 m!4794555))

(declare-fun m!4794557 () Bool)

(assert (=> b!4206320 m!4794557))

(assert (=> b!4206319 m!4794489))

(assert (=> b!4206319 m!4794239))

(assert (=> b!4206319 m!4794489))

(assert (=> b!4206319 m!4794239))

(assert (=> b!4206319 m!4794537))

(declare-fun m!4794559 () Bool)

(assert (=> b!4206319 m!4794559))

(assert (=> b!4206316 m!4794551))

(assert (=> b!4206316 m!4794553))

(assert (=> b!4206316 m!4794553))

(assert (=> b!4206316 m!4794555))

(assert (=> b!4206316 m!4794555))

(declare-fun m!4794561 () Bool)

(assert (=> b!4206316 m!4794561))

(assert (=> b!4206322 m!4794551))

(declare-fun m!4794563 () Bool)

(assert (=> b!4206322 m!4794563))

(assert (=> b!4206321 m!4794551))

(declare-fun m!4794565 () Bool)

(assert (=> b!4206321 m!4794565))

(assert (=> b!4206321 m!4794239))

(assert (=> b!4206315 m!4794551))

(assert (=> b!4206317 m!4794551))

(declare-fun m!4794567 () Bool)

(assert (=> b!4206317 m!4794567))

(assert (=> b!4206317 m!4794567))

(declare-fun m!4794569 () Bool)

(assert (=> b!4206317 m!4794569))

(assert (=> b!4205958 d!1239878))

(declare-fun d!1239880 () Bool)

(assert (=> d!1239880 (= (inv!60821 (tag!8596 rBis!178)) (= (mod (str.len (value!240890 (tag!8596 rBis!178))) 2) 0))))

(assert (=> b!4205959 d!1239880))

(declare-fun d!1239882 () Bool)

(declare-fun res!1727742 () Bool)

(declare-fun e!2611160 () Bool)

(assert (=> d!1239882 (=> (not res!1727742) (not e!2611160))))

(assert (=> d!1239882 (= res!1727742 (semiInverseModEq!3356 (toChars!10303 (transformation!7732 rBis!178)) (toValue!10444 (transformation!7732 rBis!178))))))

(assert (=> d!1239882 (= (inv!60824 (transformation!7732 rBis!178)) e!2611160)))

(declare-fun b!4206324 () Bool)

(assert (=> b!4206324 (= e!2611160 (equivClasses!3255 (toChars!10303 (transformation!7732 rBis!178)) (toValue!10444 (transformation!7732 rBis!178))))))

(assert (= (and d!1239882 res!1727742) b!4206324))

(declare-fun m!4794571 () Bool)

(assert (=> d!1239882 m!4794571))

(declare-fun m!4794573 () Bool)

(assert (=> b!4206324 m!4794573))

(assert (=> b!4205959 d!1239882))

(declare-fun d!1239884 () Bool)

(assert (=> d!1239884 (= (isEmpty!27380 rules!3967) ((_ is Nil!46239) rules!3967))))

(assert (=> b!4205938 d!1239884))

(declare-fun d!1239886 () Bool)

(assert (=> d!1239886 (= (isDefined!7376 lt!1497779) (not (isEmpty!27381 lt!1497779)))))

(declare-fun bs!597220 () Bool)

(assert (= bs!597220 d!1239886))

(assert (=> bs!597220 m!4794031))

(assert (=> b!4205949 d!1239886))

(declare-fun d!1239888 () Bool)

(declare-fun e!2611163 () Bool)

(assert (=> d!1239888 e!2611163))

(declare-fun res!1727743 () Bool)

(assert (=> d!1239888 (=> res!1727743 e!2611163)))

(declare-fun lt!1497912 () Option!9920)

(assert (=> d!1239888 (= res!1727743 (isEmpty!27381 lt!1497912))))

(declare-fun e!2611161 () Option!9920)

(assert (=> d!1239888 (= lt!1497912 e!2611161)))

(declare-fun c!716855 () Bool)

(assert (=> d!1239888 (= c!716855 (and ((_ is Cons!46239) (t!347432 rules!3967)) ((_ is Nil!46239) (t!347432 (t!347432 rules!3967)))))))

(declare-fun lt!1497914 () Unit!65351)

(declare-fun lt!1497913 () Unit!65351)

(assert (=> d!1239888 (= lt!1497914 lt!1497913)))

(assert (=> d!1239888 (isPrefix!4591 input!3517 input!3517)))

(assert (=> d!1239888 (= lt!1497913 (lemmaIsPrefixRefl!3008 input!3517 input!3517))))

(assert (=> d!1239888 (rulesValidInductive!2866 thiss!26544 (t!347432 rules!3967))))

(assert (=> d!1239888 (= (maxPrefix!4367 thiss!26544 (t!347432 rules!3967) input!3517) lt!1497912)))

(declare-fun call!292784 () Option!9920)

(declare-fun bm!292779 () Bool)

(assert (=> bm!292779 (= call!292784 (maxPrefixOneRule!3322 thiss!26544 (h!51659 (t!347432 rules!3967)) input!3517))))

(declare-fun b!4206325 () Bool)

(declare-fun res!1727746 () Bool)

(declare-fun e!2611162 () Bool)

(assert (=> b!4206325 (=> (not res!1727746) (not e!2611162))))

(assert (=> b!4206325 (= res!1727746 (= (list!16711 (charsOf!5155 (_1!25127 (get!15040 lt!1497912)))) (originalCharacters!8114 (_1!25127 (get!15040 lt!1497912)))))))

(declare-fun b!4206326 () Bool)

(assert (=> b!4206326 (= e!2611162 (contains!9549 (t!347432 rules!3967) (rule!10836 (_1!25127 (get!15040 lt!1497912)))))))

(declare-fun b!4206327 () Bool)

(declare-fun res!1727747 () Bool)

(assert (=> b!4206327 (=> (not res!1727747) (not e!2611162))))

(assert (=> b!4206327 (= res!1727747 (= (++!11806 (list!16711 (charsOf!5155 (_1!25127 (get!15040 lt!1497912)))) (_2!25127 (get!15040 lt!1497912))) input!3517))))

(declare-fun b!4206328 () Bool)

(assert (=> b!4206328 (= e!2611161 call!292784)))

(declare-fun b!4206329 () Bool)

(declare-fun res!1727745 () Bool)

(assert (=> b!4206329 (=> (not res!1727745) (not e!2611162))))

(assert (=> b!4206329 (= res!1727745 (= (value!240891 (_1!25127 (get!15040 lt!1497912))) (apply!10675 (transformation!7732 (rule!10836 (_1!25127 (get!15040 lt!1497912)))) (seqFromList!5735 (originalCharacters!8114 (_1!25127 (get!15040 lt!1497912)))))))))

(declare-fun b!4206330 () Bool)

(assert (=> b!4206330 (= e!2611163 e!2611162)))

(declare-fun res!1727748 () Bool)

(assert (=> b!4206330 (=> (not res!1727748) (not e!2611162))))

(assert (=> b!4206330 (= res!1727748 (isDefined!7376 lt!1497912))))

(declare-fun b!4206331 () Bool)

(declare-fun lt!1497916 () Option!9920)

(declare-fun lt!1497915 () Option!9920)

(assert (=> b!4206331 (= e!2611161 (ite (and ((_ is None!9919) lt!1497916) ((_ is None!9919) lt!1497915)) None!9919 (ite ((_ is None!9919) lt!1497915) lt!1497916 (ite ((_ is None!9919) lt!1497916) lt!1497915 (ite (>= (size!33968 (_1!25127 (v!40779 lt!1497916))) (size!33968 (_1!25127 (v!40779 lt!1497915)))) lt!1497916 lt!1497915)))))))

(assert (=> b!4206331 (= lt!1497916 call!292784)))

(assert (=> b!4206331 (= lt!1497915 (maxPrefix!4367 thiss!26544 (t!347432 (t!347432 rules!3967)) input!3517))))

(declare-fun b!4206332 () Bool)

(declare-fun res!1727749 () Bool)

(assert (=> b!4206332 (=> (not res!1727749) (not e!2611162))))

(assert (=> b!4206332 (= res!1727749 (matchR!6354 (regex!7732 (rule!10836 (_1!25127 (get!15040 lt!1497912)))) (list!16711 (charsOf!5155 (_1!25127 (get!15040 lt!1497912))))))))

(declare-fun b!4206333 () Bool)

(declare-fun res!1727744 () Bool)

(assert (=> b!4206333 (=> (not res!1727744) (not e!2611162))))

(assert (=> b!4206333 (= res!1727744 (< (size!33969 (_2!25127 (get!15040 lt!1497912))) (size!33969 input!3517)))))

(assert (= (and d!1239888 c!716855) b!4206328))

(assert (= (and d!1239888 (not c!716855)) b!4206331))

(assert (= (or b!4206328 b!4206331) bm!292779))

(assert (= (and d!1239888 (not res!1727743)) b!4206330))

(assert (= (and b!4206330 res!1727748) b!4206325))

(assert (= (and b!4206325 res!1727746) b!4206333))

(assert (= (and b!4206333 res!1727744) b!4206327))

(assert (= (and b!4206327 res!1727747) b!4206329))

(assert (= (and b!4206329 res!1727745) b!4206332))

(assert (= (and b!4206332 res!1727749) b!4206326))

(declare-fun m!4794575 () Bool)

(assert (=> d!1239888 m!4794575))

(assert (=> d!1239888 m!4794069))

(assert (=> d!1239888 m!4794071))

(declare-fun m!4794577 () Bool)

(assert (=> d!1239888 m!4794577))

(declare-fun m!4794579 () Bool)

(assert (=> bm!292779 m!4794579))

(declare-fun m!4794581 () Bool)

(assert (=> b!4206327 m!4794581))

(declare-fun m!4794583 () Bool)

(assert (=> b!4206327 m!4794583))

(assert (=> b!4206327 m!4794583))

(declare-fun m!4794585 () Bool)

(assert (=> b!4206327 m!4794585))

(assert (=> b!4206327 m!4794585))

(declare-fun m!4794587 () Bool)

(assert (=> b!4206327 m!4794587))

(declare-fun m!4794589 () Bool)

(assert (=> b!4206331 m!4794589))

(assert (=> b!4206326 m!4794581))

(declare-fun m!4794591 () Bool)

(assert (=> b!4206326 m!4794591))

(assert (=> b!4206333 m!4794581))

(declare-fun m!4794593 () Bool)

(assert (=> b!4206333 m!4794593))

(assert (=> b!4206333 m!4794239))

(declare-fun m!4794595 () Bool)

(assert (=> b!4206330 m!4794595))

(assert (=> b!4206332 m!4794581))

(assert (=> b!4206332 m!4794583))

(assert (=> b!4206332 m!4794583))

(assert (=> b!4206332 m!4794585))

(assert (=> b!4206332 m!4794585))

(declare-fun m!4794597 () Bool)

(assert (=> b!4206332 m!4794597))

(assert (=> b!4206325 m!4794581))

(assert (=> b!4206325 m!4794583))

(assert (=> b!4206325 m!4794583))

(assert (=> b!4206325 m!4794585))

(assert (=> b!4206329 m!4794581))

(declare-fun m!4794599 () Bool)

(assert (=> b!4206329 m!4794599))

(assert (=> b!4206329 m!4794599))

(declare-fun m!4794601 () Bool)

(assert (=> b!4206329 m!4794601))

(assert (=> b!4205949 d!1239888))

(declare-fun d!1239890 () Bool)

(assert (=> d!1239890 (rulesInvariant!6538 thiss!26544 (t!347432 rules!3967))))

(declare-fun lt!1497919 () Unit!65351)

(declare-fun choose!25786 (LexerInterface!7327 Rule!15264 List!46363) Unit!65351)

(assert (=> d!1239890 (= lt!1497919 (choose!25786 thiss!26544 (h!51659 rules!3967) (t!347432 rules!3967)))))

(assert (=> d!1239890 (rulesInvariant!6538 thiss!26544 (Cons!46239 (h!51659 rules!3967) (t!347432 rules!3967)))))

(assert (=> d!1239890 (= (lemmaInvariantOnRulesThenOnTail!846 thiss!26544 (h!51659 rules!3967) (t!347432 rules!3967)) lt!1497919)))

(declare-fun bs!597221 () Bool)

(assert (= bs!597221 d!1239890))

(assert (=> bs!597221 m!4794015))

(declare-fun m!4794603 () Bool)

(assert (=> bs!597221 m!4794603))

(declare-fun m!4794605 () Bool)

(assert (=> bs!597221 m!4794605))

(assert (=> b!4205949 d!1239890))

(declare-fun d!1239892 () Bool)

(assert (=> d!1239892 (= (size!33968 tBis!41) (size!33969 (originalCharacters!8114 tBis!41)))))

(declare-fun Unit!65357 () Unit!65351)

(assert (=> d!1239892 (= (lemmaCharactersSize!1501 tBis!41) Unit!65357)))

(declare-fun bs!597222 () Bool)

(assert (= bs!597222 d!1239892))

(declare-fun m!4794607 () Bool)

(assert (=> bs!597222 m!4794607))

(assert (=> b!4205949 d!1239892))

(declare-fun d!1239894 () Bool)

(assert (=> d!1239894 (= (isEmpty!27381 lt!1497779) (not ((_ is Some!9919) lt!1497779)))))

(assert (=> b!4205949 d!1239894))

(declare-fun d!1239896 () Bool)

(assert (=> d!1239896 (= (size!33968 t!8364) (size!33969 (originalCharacters!8114 t!8364)))))

(declare-fun Unit!65358 () Unit!65351)

(assert (=> d!1239896 (= (lemmaCharactersSize!1501 t!8364) Unit!65358)))

(declare-fun bs!597223 () Bool)

(assert (= bs!597223 d!1239896))

(declare-fun m!4794609 () Bool)

(assert (=> bs!597223 m!4794609))

(assert (=> b!4205949 d!1239896))

(declare-fun d!1239898 () Bool)

(assert (=> d!1239898 (isPrefix!4591 lt!1497775 (++!11806 lt!1497775 (_2!25127 lt!1497780)))))

(declare-fun lt!1497922 () Unit!65351)

(declare-fun choose!25787 (List!46362 List!46362) Unit!65351)

(assert (=> d!1239898 (= lt!1497922 (choose!25787 lt!1497775 (_2!25127 lt!1497780)))))

(assert (=> d!1239898 (= (lemmaConcatTwoListThenFirstIsPrefix!3064 lt!1497775 (_2!25127 lt!1497780)) lt!1497922)))

(declare-fun bs!597224 () Bool)

(assert (= bs!597224 d!1239898))

(assert (=> bs!597224 m!4794035))

(assert (=> bs!597224 m!4794035))

(assert (=> bs!597224 m!4794037))

(declare-fun m!4794611 () Bool)

(assert (=> bs!597224 m!4794611))

(assert (=> b!4205949 d!1239898))

(declare-fun d!1239900 () Bool)

(declare-fun list!16713 (Conc!13943) List!46362)

(assert (=> d!1239900 (= (list!16711 (charsOf!5155 (_1!25127 lt!1497780))) (list!16713 (c!716813 (charsOf!5155 (_1!25127 lt!1497780)))))))

(declare-fun bs!597225 () Bool)

(assert (= bs!597225 d!1239900))

(declare-fun m!4794613 () Bool)

(assert (=> bs!597225 m!4794613))

(assert (=> b!4205949 d!1239900))

(declare-fun d!1239902 () Bool)

(declare-fun lt!1497925 () Int)

(assert (=> d!1239902 (>= lt!1497925 0)))

(declare-fun e!2611166 () Int)

(assert (=> d!1239902 (= lt!1497925 e!2611166)))

(declare-fun c!716858 () Bool)

(assert (=> d!1239902 (= c!716858 ((_ is Nil!46238) lt!1497775))))

(assert (=> d!1239902 (= (size!33969 lt!1497775) lt!1497925)))

(declare-fun b!4206338 () Bool)

(assert (=> b!4206338 (= e!2611166 0)))

(declare-fun b!4206339 () Bool)

(assert (=> b!4206339 (= e!2611166 (+ 1 (size!33969 (t!347431 lt!1497775))))))

(assert (= (and d!1239902 c!716858) b!4206338))

(assert (= (and d!1239902 (not c!716858)) b!4206339))

(declare-fun m!4794615 () Bool)

(assert (=> b!4206339 m!4794615))

(assert (=> b!4205949 d!1239902))

(declare-fun d!1239904 () Bool)

(declare-fun lt!1497926 () Int)

(assert (=> d!1239904 (>= lt!1497926 0)))

(declare-fun e!2611167 () Int)

(assert (=> d!1239904 (= lt!1497926 e!2611167)))

(declare-fun c!716859 () Bool)

(assert (=> d!1239904 (= c!716859 ((_ is Nil!46238) pBis!121))))

(assert (=> d!1239904 (= (size!33969 pBis!121) lt!1497926)))

(declare-fun b!4206340 () Bool)

(assert (=> b!4206340 (= e!2611167 0)))

(declare-fun b!4206341 () Bool)

(assert (=> b!4206341 (= e!2611167 (+ 1 (size!33969 (t!347431 pBis!121))))))

(assert (= (and d!1239904 c!716859) b!4206340))

(assert (= (and d!1239904 (not c!716859)) b!4206341))

(declare-fun m!4794617 () Bool)

(assert (=> b!4206341 m!4794617))

(assert (=> b!4205949 d!1239904))

(declare-fun d!1239906 () Bool)

(declare-fun res!1727750 () Bool)

(declare-fun e!2611168 () Bool)

(assert (=> d!1239906 (=> (not res!1727750) (not e!2611168))))

(assert (=> d!1239906 (= res!1727750 (rulesValid!3024 thiss!26544 (t!347432 rules!3967)))))

(assert (=> d!1239906 (= (rulesInvariant!6538 thiss!26544 (t!347432 rules!3967)) e!2611168)))

(declare-fun b!4206342 () Bool)

(assert (=> b!4206342 (= e!2611168 (noDuplicateTag!3185 thiss!26544 (t!347432 rules!3967) Nil!46241))))

(assert (= (and d!1239906 res!1727750) b!4206342))

(declare-fun m!4794619 () Bool)

(assert (=> d!1239906 m!4794619))

(declare-fun m!4794621 () Bool)

(assert (=> b!4206342 m!4794621))

(assert (=> b!4205949 d!1239906))

(declare-fun b!4206343 () Bool)

(declare-fun e!2611169 () Bool)

(declare-fun e!2611171 () Bool)

(assert (=> b!4206343 (= e!2611169 e!2611171)))

(declare-fun res!1727754 () Bool)

(assert (=> b!4206343 (=> (not res!1727754) (not e!2611171))))

(assert (=> b!4206343 (= res!1727754 (not ((_ is Nil!46238) (++!11806 lt!1497775 (_2!25127 lt!1497780)))))))

(declare-fun b!4206345 () Bool)

(assert (=> b!4206345 (= e!2611171 (isPrefix!4591 (tail!6771 lt!1497775) (tail!6771 (++!11806 lt!1497775 (_2!25127 lt!1497780)))))))

(declare-fun b!4206344 () Bool)

(declare-fun res!1727753 () Bool)

(assert (=> b!4206344 (=> (not res!1727753) (not e!2611171))))

(assert (=> b!4206344 (= res!1727753 (= (head!8924 lt!1497775) (head!8924 (++!11806 lt!1497775 (_2!25127 lt!1497780)))))))

(declare-fun b!4206346 () Bool)

(declare-fun e!2611170 () Bool)

(assert (=> b!4206346 (= e!2611170 (>= (size!33969 (++!11806 lt!1497775 (_2!25127 lt!1497780))) (size!33969 lt!1497775)))))

(declare-fun d!1239908 () Bool)

(assert (=> d!1239908 e!2611170))

(declare-fun res!1727751 () Bool)

(assert (=> d!1239908 (=> res!1727751 e!2611170)))

(declare-fun lt!1497927 () Bool)

(assert (=> d!1239908 (= res!1727751 (not lt!1497927))))

(assert (=> d!1239908 (= lt!1497927 e!2611169)))

(declare-fun res!1727752 () Bool)

(assert (=> d!1239908 (=> res!1727752 e!2611169)))

(assert (=> d!1239908 (= res!1727752 ((_ is Nil!46238) lt!1497775))))

(assert (=> d!1239908 (= (isPrefix!4591 lt!1497775 (++!11806 lt!1497775 (_2!25127 lt!1497780))) lt!1497927)))

(assert (= (and d!1239908 (not res!1727752)) b!4206343))

(assert (= (and b!4206343 res!1727754) b!4206344))

(assert (= (and b!4206344 res!1727753) b!4206345))

(assert (= (and d!1239908 (not res!1727751)) b!4206346))

(declare-fun m!4794623 () Bool)

(assert (=> b!4206345 m!4794623))

(assert (=> b!4206345 m!4794035))

(declare-fun m!4794625 () Bool)

(assert (=> b!4206345 m!4794625))

(assert (=> b!4206345 m!4794623))

(assert (=> b!4206345 m!4794625))

(declare-fun m!4794627 () Bool)

(assert (=> b!4206345 m!4794627))

(declare-fun m!4794629 () Bool)

(assert (=> b!4206344 m!4794629))

(assert (=> b!4206344 m!4794035))

(declare-fun m!4794631 () Bool)

(assert (=> b!4206344 m!4794631))

(assert (=> b!4206346 m!4794035))

(declare-fun m!4794633 () Bool)

(assert (=> b!4206346 m!4794633))

(assert (=> b!4206346 m!4794023))

(assert (=> b!4205949 d!1239908))

(declare-fun d!1239910 () Bool)

(assert (=> d!1239910 (= (get!15040 lt!1497779) (v!40779 lt!1497779))))

(assert (=> b!4205949 d!1239910))

(declare-fun b!4206350 () Bool)

(declare-fun e!2611173 () Bool)

(declare-fun lt!1497928 () List!46362)

(assert (=> b!4206350 (= e!2611173 (or (not (= (_2!25127 lt!1497780) Nil!46238)) (= lt!1497928 lt!1497775)))))

(declare-fun d!1239912 () Bool)

(assert (=> d!1239912 e!2611173))

(declare-fun res!1727755 () Bool)

(assert (=> d!1239912 (=> (not res!1727755) (not e!2611173))))

(assert (=> d!1239912 (= res!1727755 (= (content!7229 lt!1497928) ((_ map or) (content!7229 lt!1497775) (content!7229 (_2!25127 lt!1497780)))))))

(declare-fun e!2611172 () List!46362)

(assert (=> d!1239912 (= lt!1497928 e!2611172)))

(declare-fun c!716860 () Bool)

(assert (=> d!1239912 (= c!716860 ((_ is Nil!46238) lt!1497775))))

(assert (=> d!1239912 (= (++!11806 lt!1497775 (_2!25127 lt!1497780)) lt!1497928)))

(declare-fun b!4206348 () Bool)

(assert (=> b!4206348 (= e!2611172 (Cons!46238 (h!51658 lt!1497775) (++!11806 (t!347431 lt!1497775) (_2!25127 lt!1497780))))))

(declare-fun b!4206347 () Bool)

(assert (=> b!4206347 (= e!2611172 (_2!25127 lt!1497780))))

(declare-fun b!4206349 () Bool)

(declare-fun res!1727756 () Bool)

(assert (=> b!4206349 (=> (not res!1727756) (not e!2611173))))

(assert (=> b!4206349 (= res!1727756 (= (size!33969 lt!1497928) (+ (size!33969 lt!1497775) (size!33969 (_2!25127 lt!1497780)))))))

(assert (= (and d!1239912 c!716860) b!4206347))

(assert (= (and d!1239912 (not c!716860)) b!4206348))

(assert (= (and d!1239912 res!1727755) b!4206349))

(assert (= (and b!4206349 res!1727756) b!4206350))

(declare-fun m!4794635 () Bool)

(assert (=> d!1239912 m!4794635))

(declare-fun m!4794637 () Bool)

(assert (=> d!1239912 m!4794637))

(declare-fun m!4794639 () Bool)

(assert (=> d!1239912 m!4794639))

(declare-fun m!4794641 () Bool)

(assert (=> b!4206348 m!4794641))

(declare-fun m!4794643 () Bool)

(assert (=> b!4206349 m!4794643))

(assert (=> b!4206349 m!4794023))

(declare-fun m!4794645 () Bool)

(assert (=> b!4206349 m!4794645))

(assert (=> b!4205949 d!1239912))

(declare-fun d!1239914 () Bool)

(declare-fun lt!1497931 () BalanceConc!27480)

(assert (=> d!1239914 (= (list!16711 lt!1497931) (originalCharacters!8114 (_1!25127 lt!1497780)))))

(declare-fun dynLambda!19940 (Int TokenValue!7962) BalanceConc!27480)

(assert (=> d!1239914 (= lt!1497931 (dynLambda!19940 (toChars!10303 (transformation!7732 (rule!10836 (_1!25127 lt!1497780)))) (value!240891 (_1!25127 lt!1497780))))))

(assert (=> d!1239914 (= (charsOf!5155 (_1!25127 lt!1497780)) lt!1497931)))

(declare-fun b_lambda!123857 () Bool)

(assert (=> (not b_lambda!123857) (not d!1239914)))

(declare-fun t!347465 () Bool)

(declare-fun tb!252305 () Bool)

(assert (=> (and b!4205957 (= (toChars!10303 (transformation!7732 (rule!10836 tBis!41))) (toChars!10303 (transformation!7732 (rule!10836 (_1!25127 lt!1497780))))) t!347465) tb!252305))

(declare-fun b!4206355 () Bool)

(declare-fun e!2611176 () Bool)

(declare-fun tp!1285661 () Bool)

(declare-fun inv!60828 (Conc!13943) Bool)

(assert (=> b!4206355 (= e!2611176 (and (inv!60828 (c!716813 (dynLambda!19940 (toChars!10303 (transformation!7732 (rule!10836 (_1!25127 lt!1497780)))) (value!240891 (_1!25127 lt!1497780))))) tp!1285661))))

(declare-fun result!307514 () Bool)

(declare-fun inv!60829 (BalanceConc!27480) Bool)

(assert (=> tb!252305 (= result!307514 (and (inv!60829 (dynLambda!19940 (toChars!10303 (transformation!7732 (rule!10836 (_1!25127 lt!1497780)))) (value!240891 (_1!25127 lt!1497780)))) e!2611176))))

(assert (= tb!252305 b!4206355))

(declare-fun m!4794647 () Bool)

(assert (=> b!4206355 m!4794647))

(declare-fun m!4794649 () Bool)

(assert (=> tb!252305 m!4794649))

(assert (=> d!1239914 t!347465))

(declare-fun b_and!330609 () Bool)

(assert (= b_and!330559 (and (=> t!347465 result!307514) b_and!330609)))

(declare-fun t!347467 () Bool)

(declare-fun tb!252307 () Bool)

(assert (=> (and b!4205937 (= (toChars!10303 (transformation!7732 (h!51659 rules!3967))) (toChars!10303 (transformation!7732 (rule!10836 (_1!25127 lt!1497780))))) t!347467) tb!252307))

(declare-fun result!307518 () Bool)

(assert (= result!307518 result!307514))

(assert (=> d!1239914 t!347467))

(declare-fun b_and!330611 () Bool)

(assert (= b_and!330563 (and (=> t!347467 result!307518) b_and!330611)))

(declare-fun t!347469 () Bool)

(declare-fun tb!252309 () Bool)

(assert (=> (and b!4205964 (= (toChars!10303 (transformation!7732 rBis!178)) (toChars!10303 (transformation!7732 (rule!10836 (_1!25127 lt!1497780))))) t!347469) tb!252309))

(declare-fun result!307520 () Bool)

(assert (= result!307520 result!307514))

(assert (=> d!1239914 t!347469))

(declare-fun b_and!330613 () Bool)

(assert (= b_and!330567 (and (=> t!347469 result!307520) b_and!330613)))

(declare-fun t!347471 () Bool)

(declare-fun tb!252311 () Bool)

(assert (=> (and b!4205935 (= (toChars!10303 (transformation!7732 (rule!10836 t!8364))) (toChars!10303 (transformation!7732 (rule!10836 (_1!25127 lt!1497780))))) t!347471) tb!252311))

(declare-fun result!307522 () Bool)

(assert (= result!307522 result!307514))

(assert (=> d!1239914 t!347471))

(declare-fun b_and!330615 () Bool)

(assert (= b_and!330571 (and (=> t!347471 result!307522) b_and!330615)))

(declare-fun m!4794651 () Bool)

(assert (=> d!1239914 m!4794651))

(declare-fun m!4794653 () Bool)

(assert (=> d!1239914 m!4794653))

(assert (=> b!4205949 d!1239914))

(declare-fun d!1239916 () Bool)

(assert (=> d!1239916 (<= (size!33969 pBis!121) (size!33969 lt!1497775))))

(declare-fun lt!1497934 () Unit!65351)

(declare-fun choose!25788 (LexerInterface!7327 List!46363 List!46362 Token!14166 List!46362 List!46362 List!46362 List!46362 Rule!15264 Token!14166) Unit!65351)

(assert (=> d!1239916 (= lt!1497934 (choose!25788 thiss!26544 (t!347432 rules!3967) lt!1497775 (_1!25127 lt!1497780) input!3517 (_2!25127 lt!1497780) pBis!121 suffixBis!41 rBis!178 tBis!41))))

(assert (=> d!1239916 (= (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!32 thiss!26544 (t!347432 rules!3967) lt!1497775 (_1!25127 lt!1497780) input!3517 (_2!25127 lt!1497780) pBis!121 suffixBis!41 rBis!178 tBis!41) lt!1497934)))

(declare-fun bs!597226 () Bool)

(assert (= bs!597226 d!1239916))

(assert (=> bs!597226 m!4794033))

(assert (=> bs!597226 m!4794023))

(declare-fun m!4794655 () Bool)

(assert (=> bs!597226 m!4794655))

(assert (=> b!4205949 d!1239916))

(declare-fun d!1239918 () Bool)

(assert (=> d!1239918 (= (inv!60821 (tag!8596 (rule!10836 t!8364))) (= (mod (str.len (value!240890 (tag!8596 (rule!10836 t!8364)))) 2) 0))))

(assert (=> b!4205939 d!1239918))

(declare-fun d!1239920 () Bool)

(declare-fun res!1727757 () Bool)

(declare-fun e!2611177 () Bool)

(assert (=> d!1239920 (=> (not res!1727757) (not e!2611177))))

(assert (=> d!1239920 (= res!1727757 (semiInverseModEq!3356 (toChars!10303 (transformation!7732 (rule!10836 t!8364))) (toValue!10444 (transformation!7732 (rule!10836 t!8364)))))))

(assert (=> d!1239920 (= (inv!60824 (transformation!7732 (rule!10836 t!8364))) e!2611177)))

(declare-fun b!4206356 () Bool)

(assert (=> b!4206356 (= e!2611177 (equivClasses!3255 (toChars!10303 (transformation!7732 (rule!10836 t!8364))) (toValue!10444 (transformation!7732 (rule!10836 t!8364)))))))

(assert (= (and d!1239920 res!1727757) b!4206356))

(declare-fun m!4794657 () Bool)

(assert (=> d!1239920 m!4794657))

(declare-fun m!4794659 () Bool)

(assert (=> b!4206356 m!4794659))

(assert (=> b!4205939 d!1239920))

(declare-fun d!1239922 () Bool)

(assert (=> d!1239922 (= (list!16711 (charsOf!5155 tBis!41)) (list!16713 (c!716813 (charsOf!5155 tBis!41))))))

(declare-fun bs!597227 () Bool)

(assert (= bs!597227 d!1239922))

(declare-fun m!4794661 () Bool)

(assert (=> bs!597227 m!4794661))

(assert (=> b!4205940 d!1239922))

(declare-fun d!1239924 () Bool)

(declare-fun lt!1497935 () BalanceConc!27480)

(assert (=> d!1239924 (= (list!16711 lt!1497935) (originalCharacters!8114 tBis!41))))

(assert (=> d!1239924 (= lt!1497935 (dynLambda!19940 (toChars!10303 (transformation!7732 (rule!10836 tBis!41))) (value!240891 tBis!41)))))

(assert (=> d!1239924 (= (charsOf!5155 tBis!41) lt!1497935)))

(declare-fun b_lambda!123859 () Bool)

(assert (=> (not b_lambda!123859) (not d!1239924)))

(declare-fun t!347474 () Bool)

(declare-fun tb!252313 () Bool)

(assert (=> (and b!4205957 (= (toChars!10303 (transformation!7732 (rule!10836 tBis!41))) (toChars!10303 (transformation!7732 (rule!10836 tBis!41)))) t!347474) tb!252313))

(declare-fun b!4206357 () Bool)

(declare-fun e!2611178 () Bool)

(declare-fun tp!1285662 () Bool)

(assert (=> b!4206357 (= e!2611178 (and (inv!60828 (c!716813 (dynLambda!19940 (toChars!10303 (transformation!7732 (rule!10836 tBis!41))) (value!240891 tBis!41)))) tp!1285662))))

(declare-fun result!307524 () Bool)

(assert (=> tb!252313 (= result!307524 (and (inv!60829 (dynLambda!19940 (toChars!10303 (transformation!7732 (rule!10836 tBis!41))) (value!240891 tBis!41))) e!2611178))))

(assert (= tb!252313 b!4206357))

(declare-fun m!4794663 () Bool)

(assert (=> b!4206357 m!4794663))

(declare-fun m!4794665 () Bool)

(assert (=> tb!252313 m!4794665))

(assert (=> d!1239924 t!347474))

(declare-fun b_and!330617 () Bool)

(assert (= b_and!330609 (and (=> t!347474 result!307524) b_and!330617)))

(declare-fun tb!252315 () Bool)

(declare-fun t!347476 () Bool)

(assert (=> (and b!4205937 (= (toChars!10303 (transformation!7732 (h!51659 rules!3967))) (toChars!10303 (transformation!7732 (rule!10836 tBis!41)))) t!347476) tb!252315))

(declare-fun result!307526 () Bool)

(assert (= result!307526 result!307524))

(assert (=> d!1239924 t!347476))

(declare-fun b_and!330619 () Bool)

(assert (= b_and!330611 (and (=> t!347476 result!307526) b_and!330619)))

(declare-fun tb!252317 () Bool)

(declare-fun t!347478 () Bool)

(assert (=> (and b!4205964 (= (toChars!10303 (transformation!7732 rBis!178)) (toChars!10303 (transformation!7732 (rule!10836 tBis!41)))) t!347478) tb!252317))

(declare-fun result!307528 () Bool)

(assert (= result!307528 result!307524))

(assert (=> d!1239924 t!347478))

(declare-fun b_and!330621 () Bool)

(assert (= b_and!330613 (and (=> t!347478 result!307528) b_and!330621)))

(declare-fun t!347480 () Bool)

(declare-fun tb!252319 () Bool)

(assert (=> (and b!4205935 (= (toChars!10303 (transformation!7732 (rule!10836 t!8364))) (toChars!10303 (transformation!7732 (rule!10836 tBis!41)))) t!347480) tb!252319))

(declare-fun result!307530 () Bool)

(assert (= result!307530 result!307524))

(assert (=> d!1239924 t!347480))

(declare-fun b_and!330623 () Bool)

(assert (= b_and!330615 (and (=> t!347480 result!307530) b_and!330623)))

(declare-fun m!4794667 () Bool)

(assert (=> d!1239924 m!4794667))

(declare-fun m!4794669 () Bool)

(assert (=> d!1239924 m!4794669))

(assert (=> b!4205940 d!1239924))

(declare-fun d!1239926 () Bool)

(declare-fun res!1727762 () Bool)

(declare-fun e!2611181 () Bool)

(assert (=> d!1239926 (=> (not res!1727762) (not e!2611181))))

(assert (=> d!1239926 (= res!1727762 (not (isEmpty!27383 (originalCharacters!8114 tBis!41))))))

(assert (=> d!1239926 (= (inv!60825 tBis!41) e!2611181)))

(declare-fun b!4206362 () Bool)

(declare-fun res!1727763 () Bool)

(assert (=> b!4206362 (=> (not res!1727763) (not e!2611181))))

(assert (=> b!4206362 (= res!1727763 (= (originalCharacters!8114 tBis!41) (list!16711 (dynLambda!19940 (toChars!10303 (transformation!7732 (rule!10836 tBis!41))) (value!240891 tBis!41)))))))

(declare-fun b!4206363 () Bool)

(assert (=> b!4206363 (= e!2611181 (= (size!33968 tBis!41) (size!33969 (originalCharacters!8114 tBis!41))))))

(assert (= (and d!1239926 res!1727762) b!4206362))

(assert (= (and b!4206362 res!1727763) b!4206363))

(declare-fun b_lambda!123861 () Bool)

(assert (=> (not b_lambda!123861) (not b!4206362)))

(assert (=> b!4206362 t!347474))

(declare-fun b_and!330625 () Bool)

(assert (= b_and!330617 (and (=> t!347474 result!307524) b_and!330625)))

(assert (=> b!4206362 t!347476))

(declare-fun b_and!330627 () Bool)

(assert (= b_and!330619 (and (=> t!347476 result!307526) b_and!330627)))

(assert (=> b!4206362 t!347478))

(declare-fun b_and!330629 () Bool)

(assert (= b_and!330621 (and (=> t!347478 result!307528) b_and!330629)))

(assert (=> b!4206362 t!347480))

(declare-fun b_and!330631 () Bool)

(assert (= b_and!330623 (and (=> t!347480 result!307530) b_and!330631)))

(declare-fun m!4794671 () Bool)

(assert (=> d!1239926 m!4794671))

(assert (=> b!4206362 m!4794669))

(assert (=> b!4206362 m!4794669))

(declare-fun m!4794673 () Bool)

(assert (=> b!4206362 m!4794673))

(assert (=> b!4206363 m!4794607))

(assert (=> start!401834 d!1239926))

(declare-fun d!1239928 () Bool)

(declare-fun res!1727764 () Bool)

(declare-fun e!2611182 () Bool)

(assert (=> d!1239928 (=> (not res!1727764) (not e!2611182))))

(assert (=> d!1239928 (= res!1727764 (not (isEmpty!27383 (originalCharacters!8114 t!8364))))))

(assert (=> d!1239928 (= (inv!60825 t!8364) e!2611182)))

(declare-fun b!4206364 () Bool)

(declare-fun res!1727765 () Bool)

(assert (=> b!4206364 (=> (not res!1727765) (not e!2611182))))

(assert (=> b!4206364 (= res!1727765 (= (originalCharacters!8114 t!8364) (list!16711 (dynLambda!19940 (toChars!10303 (transformation!7732 (rule!10836 t!8364))) (value!240891 t!8364)))))))

(declare-fun b!4206365 () Bool)

(assert (=> b!4206365 (= e!2611182 (= (size!33968 t!8364) (size!33969 (originalCharacters!8114 t!8364))))))

(assert (= (and d!1239928 res!1727764) b!4206364))

(assert (= (and b!4206364 res!1727765) b!4206365))

(declare-fun b_lambda!123863 () Bool)

(assert (=> (not b_lambda!123863) (not b!4206364)))

(declare-fun tb!252321 () Bool)

(declare-fun t!347482 () Bool)

(assert (=> (and b!4205957 (= (toChars!10303 (transformation!7732 (rule!10836 tBis!41))) (toChars!10303 (transformation!7732 (rule!10836 t!8364)))) t!347482) tb!252321))

(declare-fun b!4206366 () Bool)

(declare-fun e!2611183 () Bool)

(declare-fun tp!1285663 () Bool)

(assert (=> b!4206366 (= e!2611183 (and (inv!60828 (c!716813 (dynLambda!19940 (toChars!10303 (transformation!7732 (rule!10836 t!8364))) (value!240891 t!8364)))) tp!1285663))))

(declare-fun result!307532 () Bool)

(assert (=> tb!252321 (= result!307532 (and (inv!60829 (dynLambda!19940 (toChars!10303 (transformation!7732 (rule!10836 t!8364))) (value!240891 t!8364))) e!2611183))))

(assert (= tb!252321 b!4206366))

(declare-fun m!4794675 () Bool)

(assert (=> b!4206366 m!4794675))

(declare-fun m!4794677 () Bool)

(assert (=> tb!252321 m!4794677))

(assert (=> b!4206364 t!347482))

(declare-fun b_and!330633 () Bool)

(assert (= b_and!330625 (and (=> t!347482 result!307532) b_and!330633)))

(declare-fun tb!252323 () Bool)

(declare-fun t!347484 () Bool)

(assert (=> (and b!4205937 (= (toChars!10303 (transformation!7732 (h!51659 rules!3967))) (toChars!10303 (transformation!7732 (rule!10836 t!8364)))) t!347484) tb!252323))

(declare-fun result!307534 () Bool)

(assert (= result!307534 result!307532))

(assert (=> b!4206364 t!347484))

(declare-fun b_and!330635 () Bool)

(assert (= b_and!330627 (and (=> t!347484 result!307534) b_and!330635)))

(declare-fun t!347486 () Bool)

(declare-fun tb!252325 () Bool)

(assert (=> (and b!4205964 (= (toChars!10303 (transformation!7732 rBis!178)) (toChars!10303 (transformation!7732 (rule!10836 t!8364)))) t!347486) tb!252325))

(declare-fun result!307536 () Bool)

(assert (= result!307536 result!307532))

(assert (=> b!4206364 t!347486))

(declare-fun b_and!330637 () Bool)

(assert (= b_and!330629 (and (=> t!347486 result!307536) b_and!330637)))

(declare-fun t!347488 () Bool)

(declare-fun tb!252327 () Bool)

(assert (=> (and b!4205935 (= (toChars!10303 (transformation!7732 (rule!10836 t!8364))) (toChars!10303 (transformation!7732 (rule!10836 t!8364)))) t!347488) tb!252327))

(declare-fun result!307538 () Bool)

(assert (= result!307538 result!307532))

(assert (=> b!4206364 t!347488))

(declare-fun b_and!330639 () Bool)

(assert (= b_and!330631 (and (=> t!347488 result!307538) b_and!330639)))

(declare-fun m!4794679 () Bool)

(assert (=> d!1239928 m!4794679))

(declare-fun m!4794681 () Bool)

(assert (=> b!4206364 m!4794681))

(assert (=> b!4206364 m!4794681))

(declare-fun m!4794683 () Bool)

(assert (=> b!4206364 m!4794683))

(assert (=> b!4206365 m!4794609))

(assert (=> start!401834 d!1239928))

(declare-fun e!2611185 () Bool)

(declare-fun lt!1497936 () List!46362)

(declare-fun b!4206370 () Bool)

(assert (=> b!4206370 (= e!2611185 (or (not (= suffixBis!41 Nil!46238)) (= lt!1497936 pBis!121)))))

(declare-fun d!1239930 () Bool)

(assert (=> d!1239930 e!2611185))

(declare-fun res!1727766 () Bool)

(assert (=> d!1239930 (=> (not res!1727766) (not e!2611185))))

(assert (=> d!1239930 (= res!1727766 (= (content!7229 lt!1497936) ((_ map or) (content!7229 pBis!121) (content!7229 suffixBis!41))))))

(declare-fun e!2611184 () List!46362)

(assert (=> d!1239930 (= lt!1497936 e!2611184)))

(declare-fun c!716861 () Bool)

(assert (=> d!1239930 (= c!716861 ((_ is Nil!46238) pBis!121))))

(assert (=> d!1239930 (= (++!11806 pBis!121 suffixBis!41) lt!1497936)))

(declare-fun b!4206368 () Bool)

(assert (=> b!4206368 (= e!2611184 (Cons!46238 (h!51658 pBis!121) (++!11806 (t!347431 pBis!121) suffixBis!41)))))

(declare-fun b!4206367 () Bool)

(assert (=> b!4206367 (= e!2611184 suffixBis!41)))

(declare-fun b!4206369 () Bool)

(declare-fun res!1727767 () Bool)

(assert (=> b!4206369 (=> (not res!1727767) (not e!2611185))))

(assert (=> b!4206369 (= res!1727767 (= (size!33969 lt!1497936) (+ (size!33969 pBis!121) (size!33969 suffixBis!41))))))

(assert (= (and d!1239930 c!716861) b!4206367))

(assert (= (and d!1239930 (not c!716861)) b!4206368))

(assert (= (and d!1239930 res!1727766) b!4206369))

(assert (= (and b!4206369 res!1727767) b!4206370))

(declare-fun m!4794685 () Bool)

(assert (=> d!1239930 m!4794685))

(declare-fun m!4794687 () Bool)

(assert (=> d!1239930 m!4794687))

(declare-fun m!4794689 () Bool)

(assert (=> d!1239930 m!4794689))

(declare-fun m!4794691 () Bool)

(assert (=> b!4206368 m!4794691))

(declare-fun m!4794693 () Bool)

(assert (=> b!4206369 m!4794693))

(assert (=> b!4206369 m!4794033))

(declare-fun m!4794695 () Bool)

(assert (=> b!4206369 m!4794695))

(assert (=> b!4205962 d!1239930))

(declare-fun b!4206371 () Bool)

(declare-fun e!2611188 () Bool)

(assert (=> b!4206371 (= e!2611188 (inv!15 (value!240891 t!8364)))))

(declare-fun b!4206372 () Bool)

(declare-fun res!1727768 () Bool)

(assert (=> b!4206372 (=> res!1727768 e!2611188)))

(assert (=> b!4206372 (= res!1727768 (not ((_ is IntegerValue!23888) (value!240891 t!8364))))))

(declare-fun e!2611187 () Bool)

(assert (=> b!4206372 (= e!2611187 e!2611188)))

(declare-fun b!4206373 () Bool)

(declare-fun e!2611186 () Bool)

(assert (=> b!4206373 (= e!2611186 e!2611187)))

(declare-fun c!716863 () Bool)

(assert (=> b!4206373 (= c!716863 ((_ is IntegerValue!23887) (value!240891 t!8364)))))

(declare-fun b!4206374 () Bool)

(assert (=> b!4206374 (= e!2611187 (inv!17 (value!240891 t!8364)))))

(declare-fun d!1239932 () Bool)

(declare-fun c!716862 () Bool)

(assert (=> d!1239932 (= c!716862 ((_ is IntegerValue!23886) (value!240891 t!8364)))))

(assert (=> d!1239932 (= (inv!21 (value!240891 t!8364)) e!2611186)))

(declare-fun b!4206375 () Bool)

(assert (=> b!4206375 (= e!2611186 (inv!16 (value!240891 t!8364)))))

(assert (= (and d!1239932 c!716862) b!4206375))

(assert (= (and d!1239932 (not c!716862)) b!4206373))

(assert (= (and b!4206373 c!716863) b!4206374))

(assert (= (and b!4206373 (not c!716863)) b!4206372))

(assert (= (and b!4206372 (not res!1727768)) b!4206371))

(declare-fun m!4794697 () Bool)

(assert (=> b!4206371 m!4794697))

(declare-fun m!4794699 () Bool)

(assert (=> b!4206374 m!4794699))

(declare-fun m!4794701 () Bool)

(assert (=> b!4206375 m!4794701))

(assert (=> b!4205941 d!1239932))

(declare-fun d!1239934 () Bool)

(assert (=> d!1239934 (= (inv!60821 (tag!8596 (h!51659 rules!3967))) (= (mod (str.len (value!240890 (tag!8596 (h!51659 rules!3967)))) 2) 0))))

(assert (=> b!4205952 d!1239934))

(declare-fun d!1239936 () Bool)

(declare-fun res!1727769 () Bool)

(declare-fun e!2611189 () Bool)

(assert (=> d!1239936 (=> (not res!1727769) (not e!2611189))))

(assert (=> d!1239936 (= res!1727769 (semiInverseModEq!3356 (toChars!10303 (transformation!7732 (h!51659 rules!3967))) (toValue!10444 (transformation!7732 (h!51659 rules!3967)))))))

(assert (=> d!1239936 (= (inv!60824 (transformation!7732 (h!51659 rules!3967))) e!2611189)))

(declare-fun b!4206376 () Bool)

(assert (=> b!4206376 (= e!2611189 (equivClasses!3255 (toChars!10303 (transformation!7732 (h!51659 rules!3967))) (toValue!10444 (transformation!7732 (h!51659 rules!3967)))))))

(assert (= (and d!1239936 res!1727769) b!4206376))

(declare-fun m!4794703 () Bool)

(assert (=> d!1239936 m!4794703))

(declare-fun m!4794705 () Bool)

(assert (=> b!4206376 m!4794705))

(assert (=> b!4205952 d!1239936))

(declare-fun b!4206381 () Bool)

(declare-fun e!2611192 () Bool)

(declare-fun tp!1285666 () Bool)

(assert (=> b!4206381 (= e!2611192 (and tp_is_empty!22241 tp!1285666))))

(assert (=> b!4205954 (= tp!1285597 e!2611192)))

(assert (= (and b!4205954 ((_ is Cons!46238) (t!347431 suffix!1557))) b!4206381))

(declare-fun b!4206382 () Bool)

(declare-fun e!2611193 () Bool)

(declare-fun tp!1285667 () Bool)

(assert (=> b!4206382 (= e!2611193 (and tp_is_empty!22241 tp!1285667))))

(assert (=> b!4205934 (= tp!1285588 e!2611193)))

(assert (= (and b!4205934 ((_ is Cons!46238) (originalCharacters!8114 tBis!41))) b!4206382))

(declare-fun e!2611196 () Bool)

(assert (=> b!4205956 (= tp!1285593 e!2611196)))

(declare-fun b!4206394 () Bool)

(declare-fun tp!1285682 () Bool)

(declare-fun tp!1285679 () Bool)

(assert (=> b!4206394 (= e!2611196 (and tp!1285682 tp!1285679))))

(declare-fun b!4206393 () Bool)

(assert (=> b!4206393 (= e!2611196 tp_is_empty!22241)))

(declare-fun b!4206396 () Bool)

(declare-fun tp!1285678 () Bool)

(declare-fun tp!1285681 () Bool)

(assert (=> b!4206396 (= e!2611196 (and tp!1285678 tp!1285681))))

(declare-fun b!4206395 () Bool)

(declare-fun tp!1285680 () Bool)

(assert (=> b!4206395 (= e!2611196 tp!1285680)))

(assert (= (and b!4205956 ((_ is ElementMatch!12637) (regex!7732 (rule!10836 tBis!41)))) b!4206393))

(assert (= (and b!4205956 ((_ is Concat!20600) (regex!7732 (rule!10836 tBis!41)))) b!4206394))

(assert (= (and b!4205956 ((_ is Star!12637) (regex!7732 (rule!10836 tBis!41)))) b!4206395))

(assert (= (and b!4205956 ((_ is Union!12637) (regex!7732 (rule!10836 tBis!41)))) b!4206396))

(declare-fun b!4206397 () Bool)

(declare-fun e!2611197 () Bool)

(declare-fun tp!1285683 () Bool)

(assert (=> b!4206397 (= e!2611197 (and tp_is_empty!22241 tp!1285683))))

(assert (=> b!4205936 (= tp!1285601 e!2611197)))

(assert (= (and b!4205936 ((_ is Cons!46238) (t!347431 input!3517))) b!4206397))

(declare-fun e!2611198 () Bool)

(assert (=> b!4205959 (= tp!1285586 e!2611198)))

(declare-fun b!4206399 () Bool)

(declare-fun tp!1285688 () Bool)

(declare-fun tp!1285685 () Bool)

(assert (=> b!4206399 (= e!2611198 (and tp!1285688 tp!1285685))))

(declare-fun b!4206398 () Bool)

(assert (=> b!4206398 (= e!2611198 tp_is_empty!22241)))

(declare-fun b!4206401 () Bool)

(declare-fun tp!1285684 () Bool)

(declare-fun tp!1285687 () Bool)

(assert (=> b!4206401 (= e!2611198 (and tp!1285684 tp!1285687))))

(declare-fun b!4206400 () Bool)

(declare-fun tp!1285686 () Bool)

(assert (=> b!4206400 (= e!2611198 tp!1285686)))

(assert (= (and b!4205959 ((_ is ElementMatch!12637) (regex!7732 rBis!178))) b!4206398))

(assert (= (and b!4205959 ((_ is Concat!20600) (regex!7732 rBis!178))) b!4206399))

(assert (= (and b!4205959 ((_ is Star!12637) (regex!7732 rBis!178))) b!4206400))

(assert (= (and b!4205959 ((_ is Union!12637) (regex!7732 rBis!178))) b!4206401))

(declare-fun b!4206402 () Bool)

(declare-fun e!2611199 () Bool)

(declare-fun tp!1285689 () Bool)

(assert (=> b!4206402 (= e!2611199 (and tp_is_empty!22241 tp!1285689))))

(assert (=> b!4205960 (= tp!1285583 e!2611199)))

(assert (= (and b!4205960 ((_ is Cons!46238) (t!347431 suffixBis!41))) b!4206402))

(declare-fun e!2611200 () Bool)

(assert (=> b!4205939 (= tp!1285590 e!2611200)))

(declare-fun b!4206404 () Bool)

(declare-fun tp!1285694 () Bool)

(declare-fun tp!1285691 () Bool)

(assert (=> b!4206404 (= e!2611200 (and tp!1285694 tp!1285691))))

(declare-fun b!4206403 () Bool)

(assert (=> b!4206403 (= e!2611200 tp_is_empty!22241)))

(declare-fun b!4206406 () Bool)

(declare-fun tp!1285690 () Bool)

(declare-fun tp!1285693 () Bool)

(assert (=> b!4206406 (= e!2611200 (and tp!1285690 tp!1285693))))

(declare-fun b!4206405 () Bool)

(declare-fun tp!1285692 () Bool)

(assert (=> b!4206405 (= e!2611200 tp!1285692)))

(assert (= (and b!4205939 ((_ is ElementMatch!12637) (regex!7732 (rule!10836 t!8364)))) b!4206403))

(assert (= (and b!4205939 ((_ is Concat!20600) (regex!7732 (rule!10836 t!8364)))) b!4206404))

(assert (= (and b!4205939 ((_ is Star!12637) (regex!7732 (rule!10836 t!8364)))) b!4206405))

(assert (= (and b!4205939 ((_ is Union!12637) (regex!7732 (rule!10836 t!8364)))) b!4206406))

(declare-fun b!4206407 () Bool)

(declare-fun e!2611201 () Bool)

(declare-fun tp!1285695 () Bool)

(assert (=> b!4206407 (= e!2611201 (and tp_is_empty!22241 tp!1285695))))

(assert (=> b!4205950 (= tp!1285602 e!2611201)))

(assert (= (and b!4205950 ((_ is Cons!46238) (t!347431 pBis!121))) b!4206407))

(declare-fun b!4206408 () Bool)

(declare-fun e!2611202 () Bool)

(declare-fun tp!1285696 () Bool)

(assert (=> b!4206408 (= e!2611202 (and tp_is_empty!22241 tp!1285696))))

(assert (=> b!4205961 (= tp!1285596 e!2611202)))

(assert (= (and b!4205961 ((_ is Cons!46238) (t!347431 p!3001))) b!4206408))

(declare-fun b!4206419 () Bool)

(declare-fun b_free!122951 () Bool)

(declare-fun b_next!123655 () Bool)

(assert (=> b!4206419 (= b_free!122951 (not b_next!123655))))

(declare-fun tp!1285708 () Bool)

(declare-fun b_and!330641 () Bool)

(assert (=> b!4206419 (= tp!1285708 b_and!330641)))

(declare-fun b_free!122953 () Bool)

(declare-fun b_next!123657 () Bool)

(assert (=> b!4206419 (= b_free!122953 (not b_next!123657))))

(declare-fun tb!252329 () Bool)

(declare-fun t!347490 () Bool)

(assert (=> (and b!4206419 (= (toChars!10303 (transformation!7732 (h!51659 (t!347432 rules!3967)))) (toChars!10303 (transformation!7732 (rule!10836 (_1!25127 lt!1497780))))) t!347490) tb!252329))

(declare-fun result!307546 () Bool)

(assert (= result!307546 result!307514))

(assert (=> d!1239914 t!347490))

(declare-fun t!347492 () Bool)

(declare-fun tb!252331 () Bool)

(assert (=> (and b!4206419 (= (toChars!10303 (transformation!7732 (h!51659 (t!347432 rules!3967)))) (toChars!10303 (transformation!7732 (rule!10836 tBis!41)))) t!347492) tb!252331))

(declare-fun result!307548 () Bool)

(assert (= result!307548 result!307524))

(assert (=> d!1239924 t!347492))

(assert (=> b!4206362 t!347492))

(declare-fun t!347494 () Bool)

(declare-fun tb!252333 () Bool)

(assert (=> (and b!4206419 (= (toChars!10303 (transformation!7732 (h!51659 (t!347432 rules!3967)))) (toChars!10303 (transformation!7732 (rule!10836 t!8364)))) t!347494) tb!252333))

(declare-fun result!307550 () Bool)

(assert (= result!307550 result!307532))

(assert (=> b!4206364 t!347494))

(declare-fun b_and!330643 () Bool)

(declare-fun tp!1285705 () Bool)

(assert (=> b!4206419 (= tp!1285705 (and (=> t!347490 result!307546) (=> t!347492 result!307548) (=> t!347494 result!307550) b_and!330643))))

(declare-fun e!2611211 () Bool)

(assert (=> b!4206419 (= e!2611211 (and tp!1285708 tp!1285705))))

(declare-fun b!4206418 () Bool)

(declare-fun e!2611214 () Bool)

(declare-fun tp!1285706 () Bool)

(assert (=> b!4206418 (= e!2611214 (and tp!1285706 (inv!60821 (tag!8596 (h!51659 (t!347432 rules!3967)))) (inv!60824 (transformation!7732 (h!51659 (t!347432 rules!3967)))) e!2611211))))

(declare-fun b!4206417 () Bool)

(declare-fun e!2611213 () Bool)

(declare-fun tp!1285707 () Bool)

(assert (=> b!4206417 (= e!2611213 (and e!2611214 tp!1285707))))

(assert (=> b!4205951 (= tp!1285600 e!2611213)))

(assert (= b!4206418 b!4206419))

(assert (= b!4206417 b!4206418))

(assert (= (and b!4205951 ((_ is Cons!46239) (t!347432 rules!3967))) b!4206417))

(declare-fun m!4794707 () Bool)

(assert (=> b!4206418 m!4794707))

(declare-fun m!4794709 () Bool)

(assert (=> b!4206418 m!4794709))

(declare-fun b!4206420 () Bool)

(declare-fun e!2611215 () Bool)

(declare-fun tp!1285709 () Bool)

(assert (=> b!4206420 (= e!2611215 (and tp_is_empty!22241 tp!1285709))))

(assert (=> b!4205941 (= tp!1285591 e!2611215)))

(assert (= (and b!4205941 ((_ is Cons!46238) (originalCharacters!8114 t!8364))) b!4206420))

(declare-fun e!2611216 () Bool)

(assert (=> b!4205952 (= tp!1285585 e!2611216)))

(declare-fun b!4206422 () Bool)

(declare-fun tp!1285714 () Bool)

(declare-fun tp!1285711 () Bool)

(assert (=> b!4206422 (= e!2611216 (and tp!1285714 tp!1285711))))

(declare-fun b!4206421 () Bool)

(assert (=> b!4206421 (= e!2611216 tp_is_empty!22241)))

(declare-fun b!4206424 () Bool)

(declare-fun tp!1285710 () Bool)

(declare-fun tp!1285713 () Bool)

(assert (=> b!4206424 (= e!2611216 (and tp!1285710 tp!1285713))))

(declare-fun b!4206423 () Bool)

(declare-fun tp!1285712 () Bool)

(assert (=> b!4206423 (= e!2611216 tp!1285712)))

(assert (= (and b!4205952 ((_ is ElementMatch!12637) (regex!7732 (h!51659 rules!3967)))) b!4206421))

(assert (= (and b!4205952 ((_ is Concat!20600) (regex!7732 (h!51659 rules!3967)))) b!4206422))

(assert (= (and b!4205952 ((_ is Star!12637) (regex!7732 (h!51659 rules!3967)))) b!4206423))

(assert (= (and b!4205952 ((_ is Union!12637) (regex!7732 (h!51659 rules!3967)))) b!4206424))

(declare-fun b_lambda!123865 () Bool)

(assert (= b_lambda!123863 (or (and b!4205964 b_free!122941 (= (toChars!10303 (transformation!7732 rBis!178)) (toChars!10303 (transformation!7732 (rule!10836 t!8364))))) (and b!4205957 b_free!122933 (= (toChars!10303 (transformation!7732 (rule!10836 tBis!41))) (toChars!10303 (transformation!7732 (rule!10836 t!8364))))) (and b!4206419 b_free!122953 (= (toChars!10303 (transformation!7732 (h!51659 (t!347432 rules!3967)))) (toChars!10303 (transformation!7732 (rule!10836 t!8364))))) (and b!4205935 b_free!122945) (and b!4205937 b_free!122937 (= (toChars!10303 (transformation!7732 (h!51659 rules!3967))) (toChars!10303 (transformation!7732 (rule!10836 t!8364))))) b_lambda!123865)))

(declare-fun b_lambda!123867 () Bool)

(assert (= b_lambda!123861 (or (and b!4206419 b_free!122953 (= (toChars!10303 (transformation!7732 (h!51659 (t!347432 rules!3967)))) (toChars!10303 (transformation!7732 (rule!10836 tBis!41))))) (and b!4205964 b_free!122941 (= (toChars!10303 (transformation!7732 rBis!178)) (toChars!10303 (transformation!7732 (rule!10836 tBis!41))))) (and b!4205937 b_free!122937 (= (toChars!10303 (transformation!7732 (h!51659 rules!3967))) (toChars!10303 (transformation!7732 (rule!10836 tBis!41))))) (and b!4205935 b_free!122945 (= (toChars!10303 (transformation!7732 (rule!10836 t!8364))) (toChars!10303 (transformation!7732 (rule!10836 tBis!41))))) (and b!4205957 b_free!122933) b_lambda!123867)))

(declare-fun b_lambda!123869 () Bool)

(assert (= b_lambda!123859 (or (and b!4206419 b_free!122953 (= (toChars!10303 (transformation!7732 (h!51659 (t!347432 rules!3967)))) (toChars!10303 (transformation!7732 (rule!10836 tBis!41))))) (and b!4205964 b_free!122941 (= (toChars!10303 (transformation!7732 rBis!178)) (toChars!10303 (transformation!7732 (rule!10836 tBis!41))))) (and b!4205937 b_free!122937 (= (toChars!10303 (transformation!7732 (h!51659 rules!3967))) (toChars!10303 (transformation!7732 (rule!10836 tBis!41))))) (and b!4205935 b_free!122945 (= (toChars!10303 (transformation!7732 (rule!10836 t!8364))) (toChars!10303 (transformation!7732 (rule!10836 tBis!41))))) (and b!4205957 b_free!122933) b_lambda!123869)))

(check-sat (not b!4206406) (not b!4206306) (not b!4206396) (not b!4206073) (not d!1239922) (not b!4206107) (not b!4206346) (not b_lambda!123869) (not b!4206280) (not b!4206122) (not b!4206357) (not b!4206364) (not b!4206275) (not b_next!123657) (not b!4206424) (not b!4206374) (not d!1239892) (not b!4206420) (not b_next!123639) (not b!4206313) (not d!1239890) (not b!4206273) (not b!4206119) (not d!1239928) (not b!4206274) (not b_next!123645) (not b!4206324) (not b!4206315) (not b!4206345) (not d!1239886) (not b!4206349) b_and!330557 (not d!1239766) b_and!330641 (not d!1239896) (not b!4206407) b_and!330643 (not b_next!123647) (not b_next!123655) (not b!4206305) (not b!4206071) (not b!4206362) (not d!1239878) (not d!1239914) (not b!4206344) (not b!4206318) (not b!4206309) (not b!4206319) (not tb!252313) (not b!4206303) (not b!4206371) b_and!330565 (not d!1239898) (not b!4206312) (not d!1239924) (not b!4206355) (not b!4206348) tp_is_empty!22241 (not b!4206401) (not b!4206402) (not b!4206321) (not b!4206417) (not d!1239882) (not b!4206327) (not b!4206316) (not d!1239872) (not b!4206365) (not d!1239868) (not b!4206283) (not b!4206325) (not d!1239888) (not b_next!123643) (not b_lambda!123865) (not b!4206072) (not b!4206326) (not d!1239788) (not b!4206270) (not d!1239876) (not b!4206106) (not b!4206333) (not b!4206331) (not b!4206123) (not b_next!123637) (not b!4206080) (not b!4206330) (not bm!292778) (not b!4206276) (not b!4206363) (not d!1239906) (not b!4206269) (not b!4206397) (not b!4206277) (not b!4206322) (not b!4206341) (not b!4206314) (not b_next!123641) (not tb!252321) (not d!1239812) (not d!1239930) (not b!4206423) (not b!4206317) (not b!4206339) (not d!1239920) (not d!1239916) (not b!4206405) (not b!4206302) (not b_lambda!123857) b_and!330633 (not b!4206395) (not b!4206079) (not d!1239900) (not bm!292779) (not b!4206369) (not b!4206271) (not b!4206304) (not b!4206394) (not b!4206382) (not b_next!123649) (not b!4206041) (not b!4206368) (not b!4206332) (not b!4206408) (not b!4206329) (not b!4206418) (not b!4206400) (not b_lambda!123867) (not d!1239768) (not d!1239936) b_and!330635 (not b!4206308) (not d!1239912) (not b!4206376) b_and!330561 (not b!4206375) (not b!4206404) (not d!1239926) (not b!4206320) (not b_next!123635) (not b!4206381) (not b!4206025) (not d!1239870) (not b!4206422) (not b!4206342) b_and!330637 (not b!4206081) (not b!4206356) b_and!330569 (not b!4206307) (not b!4206366) (not d!1239770) b_and!330639 (not b!4206399) (not tb!252305))
(check-sat (not b_next!123657) (not b_next!123639) b_and!330641 b_and!330565 (not b_next!123643) (not b_next!123637) (not b_next!123641) b_and!330633 (not b_next!123649) b_and!330635 b_and!330561 b_and!330639 (not b_next!123645) b_and!330557 b_and!330643 (not b_next!123647) (not b_next!123655) (not b_next!123635) b_and!330569 b_and!330637)
