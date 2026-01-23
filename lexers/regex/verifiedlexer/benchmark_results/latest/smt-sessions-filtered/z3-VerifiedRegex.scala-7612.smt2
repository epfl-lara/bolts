; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401942 () Bool)

(assert start!401942)

(declare-fun b!4206971 () Bool)

(declare-fun b_free!123035 () Bool)

(declare-fun b_next!123739 () Bool)

(assert (=> b!4206971 (= b_free!123035 (not b_next!123739))))

(declare-fun tp!1286059 () Bool)

(declare-fun b_and!330725 () Bool)

(assert (=> b!4206971 (= tp!1286059 b_and!330725)))

(declare-fun b_free!123037 () Bool)

(declare-fun b_next!123741 () Bool)

(assert (=> b!4206971 (= b_free!123037 (not b_next!123741))))

(declare-fun tp!1286058 () Bool)

(declare-fun b_and!330727 () Bool)

(assert (=> b!4206971 (= tp!1286058 b_and!330727)))

(declare-fun b!4206955 () Bool)

(declare-fun b_free!123039 () Bool)

(declare-fun b_next!123743 () Bool)

(assert (=> b!4206955 (= b_free!123039 (not b_next!123743))))

(declare-fun tp!1286067 () Bool)

(declare-fun b_and!330729 () Bool)

(assert (=> b!4206955 (= tp!1286067 b_and!330729)))

(declare-fun b_free!123041 () Bool)

(declare-fun b_next!123745 () Bool)

(assert (=> b!4206955 (= b_free!123041 (not b_next!123745))))

(declare-fun tp!1286071 () Bool)

(declare-fun b_and!330731 () Bool)

(assert (=> b!4206955 (= tp!1286071 b_and!330731)))

(declare-fun b!4206980 () Bool)

(declare-fun b_free!123043 () Bool)

(declare-fun b_next!123747 () Bool)

(assert (=> b!4206980 (= b_free!123043 (not b_next!123747))))

(declare-fun tp!1286065 () Bool)

(declare-fun b_and!330733 () Bool)

(assert (=> b!4206980 (= tp!1286065 b_and!330733)))

(declare-fun b_free!123045 () Bool)

(declare-fun b_next!123749 () Bool)

(assert (=> b!4206980 (= b_free!123045 (not b_next!123749))))

(declare-fun tp!1286074 () Bool)

(declare-fun b_and!330735 () Bool)

(assert (=> b!4206980 (= tp!1286074 b_and!330735)))

(declare-fun b!4206981 () Bool)

(declare-fun b_free!123047 () Bool)

(declare-fun b_next!123751 () Bool)

(assert (=> b!4206981 (= b_free!123047 (not b_next!123751))))

(declare-fun tp!1286063 () Bool)

(declare-fun b_and!330737 () Bool)

(assert (=> b!4206981 (= tp!1286063 b_and!330737)))

(declare-fun b_free!123049 () Bool)

(declare-fun b_next!123753 () Bool)

(assert (=> b!4206981 (= b_free!123049 (not b_next!123753))))

(declare-fun tp!1286070 () Bool)

(declare-fun b_and!330739 () Bool)

(assert (=> b!4206981 (= tp!1286070 b_and!330739)))

(declare-fun b!4206954 () Bool)

(declare-fun e!2611647 () Bool)

(declare-fun tp_is_empty!22253 () Bool)

(declare-fun tp!1286066 () Bool)

(assert (=> b!4206954 (= e!2611647 (and tp_is_empty!22253 tp!1286066))))

(declare-fun e!2611654 () Bool)

(assert (=> b!4206955 (= e!2611654 (and tp!1286067 tp!1286071))))

(declare-fun b!4206956 () Bool)

(declare-fun res!1728027 () Bool)

(declare-fun e!2611656 () Bool)

(assert (=> b!4206956 (=> (not res!1728027) (not e!2611656))))

(declare-datatypes ((C!25480 0))(
  ( (C!25481 (val!14902 Int)) )
))
(declare-datatypes ((List!46381 0))(
  ( (Nil!46257) (Cons!46257 (h!51677 C!25480) (t!347512 List!46381)) )
))
(declare-fun p!3001 () List!46381)

(declare-fun input!3517 () List!46381)

(declare-fun isPrefix!4597 (List!46381 List!46381) Bool)

(assert (=> b!4206956 (= res!1728027 (isPrefix!4597 p!3001 input!3517))))

(declare-fun b!4206957 () Bool)

(declare-fun res!1728032 () Bool)

(declare-fun e!2611650 () Bool)

(assert (=> b!4206957 (=> res!1728032 e!2611650)))

(declare-datatypes ((List!46382 0))(
  ( (Nil!46258) (Cons!46258 (h!51678 (_ BitVec 16)) (t!347513 List!46382)) )
))
(declare-datatypes ((TokenValue!7968 0))(
  ( (FloatLiteralValue!15936 (text!56221 List!46382)) (TokenValueExt!7967 (__x!28159 Int)) (Broken!39840 (value!241036 List!46382)) (Object!8091) (End!7968) (Def!7968) (Underscore!7968) (Match!7968) (Else!7968) (Error!7968) (Case!7968) (If!7968) (Extends!7968) (Abstract!7968) (Class!7968) (Val!7968) (DelimiterValue!15936 (del!8028 List!46382)) (KeywordValue!7974 (value!241037 List!46382)) (CommentValue!15936 (value!241038 List!46382)) (WhitespaceValue!15936 (value!241039 List!46382)) (IndentationValue!7968 (value!241040 List!46382)) (String!53709) (Int32!7968) (Broken!39841 (value!241041 List!46382)) (Boolean!7969) (Unit!65374) (OperatorValue!7971 (op!8028 List!46382)) (IdentifierValue!15936 (value!241042 List!46382)) (IdentifierValue!15937 (value!241043 List!46382)) (WhitespaceValue!15937 (value!241044 List!46382)) (True!15936) (False!15936) (Broken!39842 (value!241045 List!46382)) (Broken!39843 (value!241046 List!46382)) (True!15937) (RightBrace!7968) (RightBracket!7968) (Colon!7968) (Null!7968) (Comma!7968) (LeftBracket!7968) (False!15937) (LeftBrace!7968) (ImaginaryLiteralValue!7968 (text!56222 List!46382)) (StringLiteralValue!23904 (value!241047 List!46382)) (EOFValue!7968 (value!241048 List!46382)) (IdentValue!7968 (value!241049 List!46382)) (DelimiterValue!15937 (value!241050 List!46382)) (DedentValue!7968 (value!241051 List!46382)) (NewLineValue!7968 (value!241052 List!46382)) (IntegerValue!23904 (value!241053 (_ BitVec 32)) (text!56223 List!46382)) (IntegerValue!23905 (value!241054 Int) (text!56224 List!46382)) (Times!7968) (Or!7968) (Equal!7968) (Minus!7968) (Broken!39844 (value!241055 List!46382)) (And!7968) (Div!7968) (LessEqual!7968) (Mod!7968) (Concat!20611) (Not!7968) (Plus!7968) (SpaceValue!7968 (value!241056 List!46382)) (IntegerValue!23906 (value!241057 Int) (text!56225 List!46382)) (StringLiteralValue!23905 (text!56226 List!46382)) (FloatLiteralValue!15937 (text!56227 List!46382)) (BytesLiteralValue!7968 (value!241058 List!46382)) (CommentValue!15937 (value!241059 List!46382)) (StringLiteralValue!23906 (value!241060 List!46382)) (ErrorTokenValue!7968 (msg!8029 List!46382)) )
))
(declare-datatypes ((IArray!27903 0))(
  ( (IArray!27904 (innerList!14009 List!46381)) )
))
(declare-datatypes ((Regex!12643 0))(
  ( (ElementMatch!12643 (c!716880 C!25480)) (Concat!20612 (regOne!25798 Regex!12643) (regTwo!25798 Regex!12643)) (EmptyExpr!12643) (Star!12643 (reg!12972 Regex!12643)) (EmptyLang!12643) (Union!12643 (regOne!25799 Regex!12643) (regTwo!25799 Regex!12643)) )
))
(declare-datatypes ((Conc!13949 0))(
  ( (Node!13949 (left!34441 Conc!13949) (right!34771 Conc!13949) (csize!28128 Int) (cheight!14160 Int)) (Leaf!21562 (xs!17255 IArray!27903) (csize!28129 Int)) (Empty!13949) )
))
(declare-datatypes ((BalanceConc!27492 0))(
  ( (BalanceConc!27493 (c!716881 Conc!13949)) )
))
(declare-datatypes ((String!53710 0))(
  ( (String!53711 (value!241061 String)) )
))
(declare-datatypes ((TokenValueInjection!15364 0))(
  ( (TokenValueInjection!15365 (toValue!10450 Int) (toChars!10309 Int)) )
))
(declare-datatypes ((Rule!15276 0))(
  ( (Rule!15277 (regex!7738 Regex!12643) (tag!8602 String!53710) (isSeparator!7738 Bool) (transformation!7738 TokenValueInjection!15364)) )
))
(declare-datatypes ((Token!14178 0))(
  ( (Token!14179 (value!241062 TokenValue!7968) (rule!10844 Rule!15276) (size!33977 Int) (originalCharacters!8120 List!46381)) )
))
(declare-fun tBis!41 () Token!14178)

(declare-fun pBis!121 () List!46381)

(declare-fun list!16719 (BalanceConc!27492) List!46381)

(declare-fun charsOf!5161 (Token!14178) BalanceConc!27492)

(assert (=> b!4206957 (= res!1728032 (not (= (list!16719 (charsOf!5161 tBis!41)) pBis!121)))))

(declare-fun b!4206958 () Bool)

(declare-datatypes ((List!46383 0))(
  ( (Nil!46259) (Cons!46259 (h!51679 Rule!15276) (t!347514 List!46383)) )
))
(declare-fun rules!3967 () List!46383)

(declare-fun ListPrimitiveSize!297 (List!46383) Int)

(assert (=> b!4206958 (= e!2611650 (>= (ListPrimitiveSize!297 rules!3967) 0))))

(declare-fun b!4206959 () Bool)

(declare-fun res!1728038 () Bool)

(assert (=> b!4206959 (=> (not res!1728038) (not e!2611656))))

(declare-datatypes ((LexerInterface!7333 0))(
  ( (LexerInterfaceExt!7330 (__x!28160 Int)) (Lexer!7331) )
))
(declare-fun thiss!26544 () LexerInterface!7333)

(declare-fun t!8364 () Token!14178)

(declare-fun suffix!1557 () List!46381)

(declare-datatypes ((tuple2!44002 0))(
  ( (tuple2!44003 (_1!25135 Token!14178) (_2!25135 List!46381)) )
))
(declare-datatypes ((Option!9926 0))(
  ( (None!9925) (Some!9925 (v!40787 tuple2!44002)) )
))
(declare-fun maxPrefix!4373 (LexerInterface!7333 List!46383 List!46381) Option!9926)

(assert (=> b!4206959 (= res!1728038 (= (maxPrefix!4373 thiss!26544 rules!3967 input!3517) (Some!9925 (tuple2!44003 t!8364 suffix!1557))))))

(declare-fun b!4206960 () Bool)

(declare-fun e!2611646 () Bool)

(declare-fun tp!1286072 () Bool)

(assert (=> b!4206960 (= e!2611646 (and tp_is_empty!22253 tp!1286072))))

(declare-fun b!4206961 () Bool)

(declare-fun res!1728033 () Bool)

(assert (=> b!4206961 (=> (not res!1728033) (not e!2611656))))

(assert (=> b!4206961 (= res!1728033 (isPrefix!4597 pBis!121 input!3517))))

(declare-fun e!2611660 () Bool)

(declare-fun tp!1286062 () Bool)

(declare-fun e!2611644 () Bool)

(declare-fun b!4206962 () Bool)

(declare-fun inv!60846 (String!53710) Bool)

(declare-fun inv!60849 (TokenValueInjection!15364) Bool)

(assert (=> b!4206962 (= e!2611660 (and tp!1286062 (inv!60846 (tag!8602 (h!51679 rules!3967))) (inv!60849 (transformation!7738 (h!51679 rules!3967))) e!2611644))))

(declare-fun b!4206963 () Bool)

(declare-fun res!1728031 () Bool)

(assert (=> b!4206963 (=> (not res!1728031) (not e!2611656))))

(declare-fun rulesInvariant!6544 (LexerInterface!7333 List!46383) Bool)

(assert (=> b!4206963 (= res!1728031 (rulesInvariant!6544 thiss!26544 rules!3967))))

(declare-fun res!1728029 () Bool)

(assert (=> start!401942 (=> (not res!1728029) (not e!2611656))))

(get-info :version)

(assert (=> start!401942 (= res!1728029 ((_ is Lexer!7331) thiss!26544))))

(assert (=> start!401942 e!2611656))

(declare-fun e!2611648 () Bool)

(declare-fun inv!60850 (Token!14178) Bool)

(assert (=> start!401942 (and (inv!60850 tBis!41) e!2611648)))

(assert (=> start!401942 true))

(declare-fun e!2611655 () Bool)

(assert (=> start!401942 e!2611655))

(assert (=> start!401942 e!2611646))

(declare-fun e!2611663 () Bool)

(assert (=> start!401942 e!2611663))

(declare-fun e!2611657 () Bool)

(assert (=> start!401942 e!2611657))

(declare-fun e!2611666 () Bool)

(assert (=> start!401942 (and (inv!60850 t!8364) e!2611666)))

(declare-fun e!2611653 () Bool)

(assert (=> start!401942 e!2611653))

(assert (=> start!401942 e!2611647))

(declare-fun e!2611661 () Bool)

(assert (=> start!401942 e!2611661))

(declare-fun rBis!178 () Rule!15276)

(declare-fun e!2611643 () Bool)

(declare-fun tp!1286055 () Bool)

(declare-fun b!4206964 () Bool)

(assert (=> b!4206964 (= e!2611655 (and tp!1286055 (inv!60846 (tag!8602 rBis!178)) (inv!60849 (transformation!7738 rBis!178)) e!2611643))))

(declare-fun b!4206965 () Bool)

(declare-fun res!1728036 () Bool)

(assert (=> b!4206965 (=> (not res!1728036) (not e!2611656))))

(declare-fun ++!11812 (List!46381 List!46381) List!46381)

(assert (=> b!4206965 (= res!1728036 (= (++!11812 p!3001 suffix!1557) input!3517))))

(declare-fun e!2611651 () Bool)

(declare-fun b!4206966 () Bool)

(declare-fun tp!1286061 () Bool)

(declare-fun inv!21 (TokenValue!7968) Bool)

(assert (=> b!4206966 (= e!2611666 (and (inv!21 (value!241062 t!8364)) e!2611651 tp!1286061))))

(declare-fun b!4206967 () Bool)

(declare-fun tp!1286068 () Bool)

(assert (=> b!4206967 (= e!2611661 (and tp_is_empty!22253 tp!1286068))))

(declare-fun b!4206968 () Bool)

(declare-fun tp!1286064 () Bool)

(assert (=> b!4206968 (= e!2611653 (and tp_is_empty!22253 tp!1286064))))

(declare-fun b!4206969 () Bool)

(declare-fun tp!1286060 () Bool)

(assert (=> b!4206969 (= e!2611663 (and e!2611660 tp!1286060))))

(declare-fun b!4206970 () Bool)

(declare-fun res!1728030 () Bool)

(assert (=> b!4206970 (=> res!1728030 e!2611650)))

(assert (=> b!4206970 (= res!1728030 (not (= (rule!10844 tBis!41) rBis!178)))))

(declare-fun e!2611664 () Bool)

(assert (=> b!4206971 (= e!2611664 (and tp!1286059 tp!1286058))))

(declare-fun b!4206972 () Bool)

(declare-fun res!1728037 () Bool)

(assert (=> b!4206972 (=> (not res!1728037) (not e!2611656))))

(declare-fun isEmpty!27389 (List!46383) Bool)

(assert (=> b!4206972 (= res!1728037 (not (isEmpty!27389 rules!3967)))))

(declare-fun b!4206973 () Bool)

(declare-fun tp!1286056 () Bool)

(assert (=> b!4206973 (= e!2611657 (and tp_is_empty!22253 tp!1286056))))

(declare-fun b!4206974 () Bool)

(declare-fun e!2611645 () Bool)

(declare-fun tp!1286069 () Bool)

(assert (=> b!4206974 (= e!2611648 (and (inv!21 (value!241062 tBis!41)) e!2611645 tp!1286069))))

(declare-fun b!4206975 () Bool)

(declare-fun res!1728039 () Bool)

(assert (=> b!4206975 (=> (not res!1728039) (not e!2611656))))

(declare-fun contains!9555 (List!46383 Rule!15276) Bool)

(assert (=> b!4206975 (= res!1728039 (contains!9555 rules!3967 rBis!178))))

(declare-fun b!4206976 () Bool)

(declare-fun res!1728034 () Bool)

(assert (=> b!4206976 (=> (not res!1728034) (not e!2611656))))

(declare-fun ruleValid!3450 (LexerInterface!7333 Rule!15276) Bool)

(assert (=> b!4206976 (= res!1728034 (ruleValid!3450 thiss!26544 rBis!178))))

(declare-fun b!4206977 () Bool)

(declare-fun res!1728035 () Bool)

(assert (=> b!4206977 (=> res!1728035 e!2611650)))

(declare-fun suffixBis!41 () List!46381)

(assert (=> b!4206977 (= res!1728035 (not (= (++!11812 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4206978 () Bool)

(declare-fun tp!1286073 () Bool)

(assert (=> b!4206978 (= e!2611645 (and tp!1286073 (inv!60846 (tag!8602 (rule!10844 tBis!41))) (inv!60849 (transformation!7738 (rule!10844 tBis!41))) e!2611664))))

(declare-fun b!4206979 () Bool)

(assert (=> b!4206979 (= e!2611656 (not e!2611650))))

(declare-fun res!1728028 () Bool)

(assert (=> b!4206979 (=> res!1728028 e!2611650)))

(declare-fun maxPrefixOneRule!3328 (LexerInterface!7333 Rule!15276 List!46381) Option!9926)

(assert (=> b!4206979 (= res!1728028 (not (= (maxPrefixOneRule!3328 thiss!26544 rBis!178 input!3517) (Some!9925 (tuple2!44003 tBis!41 suffixBis!41)))))))

(assert (=> b!4206979 (isPrefix!4597 input!3517 input!3517)))

(declare-datatypes ((Unit!65375 0))(
  ( (Unit!65376) )
))
(declare-fun lt!1497984 () Unit!65375)

(declare-fun lemmaIsPrefixRefl!3014 (List!46381 List!46381) Unit!65375)

(assert (=> b!4206979 (= lt!1497984 (lemmaIsPrefixRefl!3014 input!3517 input!3517))))

(assert (=> b!4206980 (= e!2611643 (and tp!1286065 tp!1286074))))

(assert (=> b!4206981 (= e!2611644 (and tp!1286063 tp!1286070))))

(declare-fun b!4206982 () Bool)

(declare-fun tp!1286057 () Bool)

(assert (=> b!4206982 (= e!2611651 (and tp!1286057 (inv!60846 (tag!8602 (rule!10844 t!8364))) (inv!60849 (transformation!7738 (rule!10844 t!8364))) e!2611654))))

(assert (= (and start!401942 res!1728029) b!4206965))

(assert (= (and b!4206965 res!1728036) b!4206956))

(assert (= (and b!4206956 res!1728027) b!4206961))

(assert (= (and b!4206961 res!1728033) b!4206972))

(assert (= (and b!4206972 res!1728037) b!4206963))

(assert (= (and b!4206963 res!1728031) b!4206975))

(assert (= (and b!4206975 res!1728039) b!4206959))

(assert (= (and b!4206959 res!1728038) b!4206976))

(assert (= (and b!4206976 res!1728034) b!4206979))

(assert (= (and b!4206979 (not res!1728028)) b!4206970))

(assert (= (and b!4206970 (not res!1728030)) b!4206957))

(assert (= (and b!4206957 (not res!1728032)) b!4206977))

(assert (= (and b!4206977 (not res!1728035)) b!4206958))

(assert (= b!4206978 b!4206971))

(assert (= b!4206974 b!4206978))

(assert (= start!401942 b!4206974))

(assert (= b!4206964 b!4206980))

(assert (= start!401942 b!4206964))

(assert (= (and start!401942 ((_ is Cons!46257) p!3001)) b!4206960))

(assert (= b!4206962 b!4206981))

(assert (= b!4206969 b!4206962))

(assert (= (and start!401942 ((_ is Cons!46259) rules!3967)) b!4206969))

(assert (= (and start!401942 ((_ is Cons!46257) input!3517)) b!4206973))

(assert (= b!4206982 b!4206955))

(assert (= b!4206966 b!4206982))

(assert (= start!401942 b!4206966))

(assert (= (and start!401942 ((_ is Cons!46257) pBis!121)) b!4206968))

(assert (= (and start!401942 ((_ is Cons!46257) suffix!1557)) b!4206954))

(assert (= (and start!401942 ((_ is Cons!46257) suffixBis!41)) b!4206967))

(declare-fun m!4795005 () Bool)

(assert (=> b!4206977 m!4795005))

(declare-fun m!4795007 () Bool)

(assert (=> b!4206958 m!4795007))

(declare-fun m!4795009 () Bool)

(assert (=> b!4206957 m!4795009))

(assert (=> b!4206957 m!4795009))

(declare-fun m!4795011 () Bool)

(assert (=> b!4206957 m!4795011))

(declare-fun m!4795013 () Bool)

(assert (=> b!4206965 m!4795013))

(declare-fun m!4795015 () Bool)

(assert (=> b!4206978 m!4795015))

(declare-fun m!4795017 () Bool)

(assert (=> b!4206978 m!4795017))

(declare-fun m!4795019 () Bool)

(assert (=> b!4206961 m!4795019))

(declare-fun m!4795021 () Bool)

(assert (=> b!4206976 m!4795021))

(declare-fun m!4795023 () Bool)

(assert (=> b!4206982 m!4795023))

(declare-fun m!4795025 () Bool)

(assert (=> b!4206982 m!4795025))

(declare-fun m!4795027 () Bool)

(assert (=> b!4206956 m!4795027))

(declare-fun m!4795029 () Bool)

(assert (=> b!4206975 m!4795029))

(declare-fun m!4795031 () Bool)

(assert (=> b!4206972 m!4795031))

(declare-fun m!4795033 () Bool)

(assert (=> b!4206966 m!4795033))

(declare-fun m!4795035 () Bool)

(assert (=> b!4206959 m!4795035))

(declare-fun m!4795037 () Bool)

(assert (=> b!4206964 m!4795037))

(declare-fun m!4795039 () Bool)

(assert (=> b!4206964 m!4795039))

(declare-fun m!4795041 () Bool)

(assert (=> b!4206962 m!4795041))

(declare-fun m!4795043 () Bool)

(assert (=> b!4206962 m!4795043))

(declare-fun m!4795045 () Bool)

(assert (=> b!4206974 m!4795045))

(declare-fun m!4795047 () Bool)

(assert (=> b!4206979 m!4795047))

(declare-fun m!4795049 () Bool)

(assert (=> b!4206979 m!4795049))

(declare-fun m!4795051 () Bool)

(assert (=> b!4206979 m!4795051))

(declare-fun m!4795053 () Bool)

(assert (=> b!4206963 m!4795053))

(declare-fun m!4795055 () Bool)

(assert (=> start!401942 m!4795055))

(declare-fun m!4795057 () Bool)

(assert (=> start!401942 m!4795057))

(check-sat b_and!330733 (not b!4206982) (not b_next!123745) (not b!4206956) (not b!4206965) b_and!330739 (not b_next!123753) b_and!330729 (not b!4206960) (not b!4206964) (not b_next!123747) (not b!4206959) (not b!4206962) (not b!4206978) (not b!4206968) (not b_next!123743) (not b!4206975) (not start!401942) (not b!4206966) tp_is_empty!22253 (not b!4206979) (not b_next!123751) (not b_next!123749) (not b!4206961) (not b!4206974) b_and!330737 (not b!4206958) (not b!4206963) b_and!330735 b_and!330731 b_and!330725 (not b!4206972) (not b!4206969) (not b_next!123741) (not b!4206967) (not b!4206977) (not b!4206957) (not b!4206976) (not b_next!123739) (not b!4206954) b_and!330727 (not b!4206973))
(check-sat (not b_next!123747) (not b_next!123743) b_and!330733 (not b_next!123745) (not b_next!123751) b_and!330739 (not b_next!123749) b_and!330737 (not b_next!123753) b_and!330729 b_and!330725 (not b_next!123741) (not b_next!123739) b_and!330727 b_and!330735 b_and!330731)
(get-model)

(declare-fun d!1239941 () Bool)

(assert (=> d!1239941 (= (inv!60846 (tag!8602 (h!51679 rules!3967))) (= (mod (str.len (value!241061 (tag!8602 (h!51679 rules!3967)))) 2) 0))))

(assert (=> b!4206962 d!1239941))

(declare-fun d!1239943 () Bool)

(declare-fun res!1728046 () Bool)

(declare-fun e!2611669 () Bool)

(assert (=> d!1239943 (=> (not res!1728046) (not e!2611669))))

(declare-fun semiInverseModEq!3358 (Int Int) Bool)

(assert (=> d!1239943 (= res!1728046 (semiInverseModEq!3358 (toChars!10309 (transformation!7738 (h!51679 rules!3967))) (toValue!10450 (transformation!7738 (h!51679 rules!3967)))))))

(assert (=> d!1239943 (= (inv!60849 (transformation!7738 (h!51679 rules!3967))) e!2611669)))

(declare-fun b!4206985 () Bool)

(declare-fun equivClasses!3257 (Int Int) Bool)

(assert (=> b!4206985 (= e!2611669 (equivClasses!3257 (toChars!10309 (transformation!7738 (h!51679 rules!3967))) (toValue!10450 (transformation!7738 (h!51679 rules!3967)))))))

(assert (= (and d!1239943 res!1728046) b!4206985))

(declare-fun m!4795059 () Bool)

(assert (=> d!1239943 m!4795059))

(declare-fun m!4795061 () Bool)

(assert (=> b!4206985 m!4795061))

(assert (=> b!4206962 d!1239943))

(declare-fun b!4206996 () Bool)

(declare-fun e!2611676 () Bool)

(declare-fun tail!6773 (List!46381) List!46381)

(assert (=> b!4206996 (= e!2611676 (isPrefix!4597 (tail!6773 pBis!121) (tail!6773 input!3517)))))

(declare-fun d!1239945 () Bool)

(declare-fun e!2611677 () Bool)

(assert (=> d!1239945 e!2611677))

(declare-fun res!1728061 () Bool)

(assert (=> d!1239945 (=> res!1728061 e!2611677)))

(declare-fun lt!1497987 () Bool)

(assert (=> d!1239945 (= res!1728061 (not lt!1497987))))

(declare-fun e!2611678 () Bool)

(assert (=> d!1239945 (= lt!1497987 e!2611678)))

(declare-fun res!1728060 () Bool)

(assert (=> d!1239945 (=> res!1728060 e!2611678)))

(assert (=> d!1239945 (= res!1728060 ((_ is Nil!46257) pBis!121))))

(assert (=> d!1239945 (= (isPrefix!4597 pBis!121 input!3517) lt!1497987)))

(declare-fun b!4206994 () Bool)

(assert (=> b!4206994 (= e!2611678 e!2611676)))

(declare-fun res!1728059 () Bool)

(assert (=> b!4206994 (=> (not res!1728059) (not e!2611676))))

(assert (=> b!4206994 (= res!1728059 (not ((_ is Nil!46257) input!3517)))))

(declare-fun b!4206995 () Bool)

(declare-fun res!1728062 () Bool)

(assert (=> b!4206995 (=> (not res!1728062) (not e!2611676))))

(declare-fun head!8926 (List!46381) C!25480)

(assert (=> b!4206995 (= res!1728062 (= (head!8926 pBis!121) (head!8926 input!3517)))))

(declare-fun b!4206997 () Bool)

(declare-fun size!33980 (List!46381) Int)

(assert (=> b!4206997 (= e!2611677 (>= (size!33980 input!3517) (size!33980 pBis!121)))))

(assert (= (and d!1239945 (not res!1728060)) b!4206994))

(assert (= (and b!4206994 res!1728059) b!4206995))

(assert (= (and b!4206995 res!1728062) b!4206996))

(assert (= (and d!1239945 (not res!1728061)) b!4206997))

(declare-fun m!4795063 () Bool)

(assert (=> b!4206996 m!4795063))

(declare-fun m!4795065 () Bool)

(assert (=> b!4206996 m!4795065))

(assert (=> b!4206996 m!4795063))

(assert (=> b!4206996 m!4795065))

(declare-fun m!4795067 () Bool)

(assert (=> b!4206996 m!4795067))

(declare-fun m!4795069 () Bool)

(assert (=> b!4206995 m!4795069))

(declare-fun m!4795071 () Bool)

(assert (=> b!4206995 m!4795071))

(declare-fun m!4795073 () Bool)

(assert (=> b!4206997 m!4795073))

(declare-fun m!4795075 () Bool)

(assert (=> b!4206997 m!4795075))

(assert (=> b!4206961 d!1239945))

(declare-fun d!1239947 () Bool)

(assert (=> d!1239947 (= (isEmpty!27389 rules!3967) ((_ is Nil!46259) rules!3967))))

(assert (=> b!4206972 d!1239947))

(declare-fun d!1239949 () Bool)

(declare-fun res!1728065 () Bool)

(declare-fun e!2611681 () Bool)

(assert (=> d!1239949 (=> (not res!1728065) (not e!2611681))))

(declare-fun rulesValid!3025 (LexerInterface!7333 List!46383) Bool)

(assert (=> d!1239949 (= res!1728065 (rulesValid!3025 thiss!26544 rules!3967))))

(assert (=> d!1239949 (= (rulesInvariant!6544 thiss!26544 rules!3967) e!2611681)))

(declare-fun b!4207000 () Bool)

(declare-datatypes ((List!46384 0))(
  ( (Nil!46260) (Cons!46260 (h!51680 String!53710) (t!347555 List!46384)) )
))
(declare-fun noDuplicateTag!3186 (LexerInterface!7333 List!46383 List!46384) Bool)

(assert (=> b!4207000 (= e!2611681 (noDuplicateTag!3186 thiss!26544 rules!3967 Nil!46260))))

(assert (= (and d!1239949 res!1728065) b!4207000))

(declare-fun m!4795077 () Bool)

(assert (=> d!1239949 m!4795077))

(declare-fun m!4795079 () Bool)

(assert (=> b!4207000 m!4795079))

(assert (=> b!4206963 d!1239949))

(declare-fun b!4207014 () Bool)

(declare-fun res!1728071 () Bool)

(declare-fun e!2611693 () Bool)

(assert (=> b!4207014 (=> res!1728071 e!2611693)))

(assert (=> b!4207014 (= res!1728071 (not ((_ is IntegerValue!23906) (value!241062 tBis!41))))))

(declare-fun e!2611692 () Bool)

(assert (=> b!4207014 (= e!2611692 e!2611693)))

(declare-fun b!4207015 () Bool)

(declare-fun inv!17 (TokenValue!7968) Bool)

(assert (=> b!4207015 (= e!2611692 (inv!17 (value!241062 tBis!41)))))

(declare-fun d!1239955 () Bool)

(declare-fun c!716886 () Bool)

(assert (=> d!1239955 (= c!716886 ((_ is IntegerValue!23904) (value!241062 tBis!41)))))

(declare-fun e!2611691 () Bool)

(assert (=> d!1239955 (= (inv!21 (value!241062 tBis!41)) e!2611691)))

(declare-fun b!4207016 () Bool)

(declare-fun inv!15 (TokenValue!7968) Bool)

(assert (=> b!4207016 (= e!2611693 (inv!15 (value!241062 tBis!41)))))

(declare-fun b!4207017 () Bool)

(declare-fun inv!16 (TokenValue!7968) Bool)

(assert (=> b!4207017 (= e!2611691 (inv!16 (value!241062 tBis!41)))))

(declare-fun b!4207018 () Bool)

(assert (=> b!4207018 (= e!2611691 e!2611692)))

(declare-fun c!716887 () Bool)

(assert (=> b!4207018 (= c!716887 ((_ is IntegerValue!23905) (value!241062 tBis!41)))))

(assert (= (and d!1239955 c!716886) b!4207017))

(assert (= (and d!1239955 (not c!716886)) b!4207018))

(assert (= (and b!4207018 c!716887) b!4207015))

(assert (= (and b!4207018 (not c!716887)) b!4207014))

(assert (= (and b!4207014 (not res!1728071)) b!4207016))

(declare-fun m!4795085 () Bool)

(assert (=> b!4207015 m!4795085))

(declare-fun m!4795087 () Bool)

(assert (=> b!4207016 m!4795087))

(declare-fun m!4795089 () Bool)

(assert (=> b!4207017 m!4795089))

(assert (=> b!4206974 d!1239955))

(declare-fun d!1239959 () Bool)

(declare-fun res!1728084 () Bool)

(declare-fun e!2611702 () Bool)

(assert (=> d!1239959 (=> (not res!1728084) (not e!2611702))))

(declare-fun isEmpty!27392 (List!46381) Bool)

(assert (=> d!1239959 (= res!1728084 (not (isEmpty!27392 (originalCharacters!8120 tBis!41))))))

(assert (=> d!1239959 (= (inv!60850 tBis!41) e!2611702)))

(declare-fun b!4207031 () Bool)

(declare-fun res!1728085 () Bool)

(assert (=> b!4207031 (=> (not res!1728085) (not e!2611702))))

(declare-fun dynLambda!19941 (Int TokenValue!7968) BalanceConc!27492)

(assert (=> b!4207031 (= res!1728085 (= (originalCharacters!8120 tBis!41) (list!16719 (dynLambda!19941 (toChars!10309 (transformation!7738 (rule!10844 tBis!41))) (value!241062 tBis!41)))))))

(declare-fun b!4207032 () Bool)

(assert (=> b!4207032 (= e!2611702 (= (size!33977 tBis!41) (size!33980 (originalCharacters!8120 tBis!41))))))

(assert (= (and d!1239959 res!1728084) b!4207031))

(assert (= (and b!4207031 res!1728085) b!4207032))

(declare-fun b_lambda!123871 () Bool)

(assert (=> (not b_lambda!123871) (not b!4207031)))

(declare-fun t!347516 () Bool)

(declare-fun tb!252335 () Bool)

(assert (=> (and b!4206971 (= (toChars!10309 (transformation!7738 (rule!10844 tBis!41))) (toChars!10309 (transformation!7738 (rule!10844 tBis!41)))) t!347516) tb!252335))

(declare-fun b!4207041 () Bool)

(declare-fun e!2611708 () Bool)

(declare-fun tp!1286077 () Bool)

(declare-fun inv!60851 (Conc!13949) Bool)

(assert (=> b!4207041 (= e!2611708 (and (inv!60851 (c!716881 (dynLambda!19941 (toChars!10309 (transformation!7738 (rule!10844 tBis!41))) (value!241062 tBis!41)))) tp!1286077))))

(declare-fun result!307552 () Bool)

(declare-fun inv!60852 (BalanceConc!27492) Bool)

(assert (=> tb!252335 (= result!307552 (and (inv!60852 (dynLambda!19941 (toChars!10309 (transformation!7738 (rule!10844 tBis!41))) (value!241062 tBis!41))) e!2611708))))

(assert (= tb!252335 b!4207041))

(declare-fun m!4795091 () Bool)

(assert (=> b!4207041 m!4795091))

(declare-fun m!4795093 () Bool)

(assert (=> tb!252335 m!4795093))

(assert (=> b!4207031 t!347516))

(declare-fun b_and!330741 () Bool)

(assert (= b_and!330727 (and (=> t!347516 result!307552) b_and!330741)))

(declare-fun t!347518 () Bool)

(declare-fun tb!252337 () Bool)

(assert (=> (and b!4206955 (= (toChars!10309 (transformation!7738 (rule!10844 t!8364))) (toChars!10309 (transformation!7738 (rule!10844 tBis!41)))) t!347518) tb!252337))

(declare-fun result!307556 () Bool)

(assert (= result!307556 result!307552))

(assert (=> b!4207031 t!347518))

(declare-fun b_and!330743 () Bool)

(assert (= b_and!330731 (and (=> t!347518 result!307556) b_and!330743)))

(declare-fun t!347520 () Bool)

(declare-fun tb!252339 () Bool)

(assert (=> (and b!4206980 (= (toChars!10309 (transformation!7738 rBis!178)) (toChars!10309 (transformation!7738 (rule!10844 tBis!41)))) t!347520) tb!252339))

(declare-fun result!307558 () Bool)

(assert (= result!307558 result!307552))

(assert (=> b!4207031 t!347520))

(declare-fun b_and!330745 () Bool)

(assert (= b_and!330735 (and (=> t!347520 result!307558) b_and!330745)))

(declare-fun t!347522 () Bool)

(declare-fun tb!252341 () Bool)

(assert (=> (and b!4206981 (= (toChars!10309 (transformation!7738 (h!51679 rules!3967))) (toChars!10309 (transformation!7738 (rule!10844 tBis!41)))) t!347522) tb!252341))

(declare-fun result!307560 () Bool)

(assert (= result!307560 result!307552))

(assert (=> b!4207031 t!347522))

(declare-fun b_and!330747 () Bool)

(assert (= b_and!330739 (and (=> t!347522 result!307560) b_and!330747)))

(declare-fun m!4795109 () Bool)

(assert (=> d!1239959 m!4795109))

(declare-fun m!4795111 () Bool)

(assert (=> b!4207031 m!4795111))

(assert (=> b!4207031 m!4795111))

(declare-fun m!4795113 () Bool)

(assert (=> b!4207031 m!4795113))

(declare-fun m!4795115 () Bool)

(assert (=> b!4207032 m!4795115))

(assert (=> start!401942 d!1239959))

(declare-fun d!1239963 () Bool)

(declare-fun res!1728090 () Bool)

(declare-fun e!2611709 () Bool)

(assert (=> d!1239963 (=> (not res!1728090) (not e!2611709))))

(assert (=> d!1239963 (= res!1728090 (not (isEmpty!27392 (originalCharacters!8120 t!8364))))))

(assert (=> d!1239963 (= (inv!60850 t!8364) e!2611709)))

(declare-fun b!4207042 () Bool)

(declare-fun res!1728091 () Bool)

(assert (=> b!4207042 (=> (not res!1728091) (not e!2611709))))

(assert (=> b!4207042 (= res!1728091 (= (originalCharacters!8120 t!8364) (list!16719 (dynLambda!19941 (toChars!10309 (transformation!7738 (rule!10844 t!8364))) (value!241062 t!8364)))))))

(declare-fun b!4207043 () Bool)

(assert (=> b!4207043 (= e!2611709 (= (size!33977 t!8364) (size!33980 (originalCharacters!8120 t!8364))))))

(assert (= (and d!1239963 res!1728090) b!4207042))

(assert (= (and b!4207042 res!1728091) b!4207043))

(declare-fun b_lambda!123873 () Bool)

(assert (=> (not b_lambda!123873) (not b!4207042)))

(declare-fun t!347524 () Bool)

(declare-fun tb!252343 () Bool)

(assert (=> (and b!4206971 (= (toChars!10309 (transformation!7738 (rule!10844 tBis!41))) (toChars!10309 (transformation!7738 (rule!10844 t!8364)))) t!347524) tb!252343))

(declare-fun b!4207044 () Bool)

(declare-fun e!2611710 () Bool)

(declare-fun tp!1286078 () Bool)

(assert (=> b!4207044 (= e!2611710 (and (inv!60851 (c!716881 (dynLambda!19941 (toChars!10309 (transformation!7738 (rule!10844 t!8364))) (value!241062 t!8364)))) tp!1286078))))

(declare-fun result!307562 () Bool)

(assert (=> tb!252343 (= result!307562 (and (inv!60852 (dynLambda!19941 (toChars!10309 (transformation!7738 (rule!10844 t!8364))) (value!241062 t!8364))) e!2611710))))

(assert (= tb!252343 b!4207044))

(declare-fun m!4795117 () Bool)

(assert (=> b!4207044 m!4795117))

(declare-fun m!4795119 () Bool)

(assert (=> tb!252343 m!4795119))

(assert (=> b!4207042 t!347524))

(declare-fun b_and!330749 () Bool)

(assert (= b_and!330741 (and (=> t!347524 result!307562) b_and!330749)))

(declare-fun t!347526 () Bool)

(declare-fun tb!252345 () Bool)

(assert (=> (and b!4206955 (= (toChars!10309 (transformation!7738 (rule!10844 t!8364))) (toChars!10309 (transformation!7738 (rule!10844 t!8364)))) t!347526) tb!252345))

(declare-fun result!307564 () Bool)

(assert (= result!307564 result!307562))

(assert (=> b!4207042 t!347526))

(declare-fun b_and!330751 () Bool)

(assert (= b_and!330743 (and (=> t!347526 result!307564) b_and!330751)))

(declare-fun tb!252347 () Bool)

(declare-fun t!347528 () Bool)

(assert (=> (and b!4206980 (= (toChars!10309 (transformation!7738 rBis!178)) (toChars!10309 (transformation!7738 (rule!10844 t!8364)))) t!347528) tb!252347))

(declare-fun result!307566 () Bool)

(assert (= result!307566 result!307562))

(assert (=> b!4207042 t!347528))

(declare-fun b_and!330753 () Bool)

(assert (= b_and!330745 (and (=> t!347528 result!307566) b_and!330753)))

(declare-fun tb!252349 () Bool)

(declare-fun t!347530 () Bool)

(assert (=> (and b!4206981 (= (toChars!10309 (transformation!7738 (h!51679 rules!3967))) (toChars!10309 (transformation!7738 (rule!10844 t!8364)))) t!347530) tb!252349))

(declare-fun result!307568 () Bool)

(assert (= result!307568 result!307562))

(assert (=> b!4207042 t!347530))

(declare-fun b_and!330755 () Bool)

(assert (= b_and!330747 (and (=> t!347530 result!307568) b_and!330755)))

(declare-fun m!4795121 () Bool)

(assert (=> d!1239963 m!4795121))

(declare-fun m!4795123 () Bool)

(assert (=> b!4207042 m!4795123))

(assert (=> b!4207042 m!4795123))

(declare-fun m!4795125 () Bool)

(assert (=> b!4207042 m!4795125))

(declare-fun m!4795127 () Bool)

(assert (=> b!4207043 m!4795127))

(assert (=> start!401942 d!1239963))

(declare-fun bm!292782 () Bool)

(declare-fun call!292787 () Option!9926)

(assert (=> bm!292782 (= call!292787 (maxPrefixOneRule!3328 thiss!26544 (h!51679 rules!3967) input!3517))))

(declare-fun b!4207096 () Bool)

(declare-fun res!1728124 () Bool)

(declare-fun e!2611735 () Bool)

(assert (=> b!4207096 (=> (not res!1728124) (not e!2611735))))

(declare-fun lt!1498006 () Option!9926)

(declare-fun matchR!6356 (Regex!12643 List!46381) Bool)

(declare-fun get!15045 (Option!9926) tuple2!44002)

(assert (=> b!4207096 (= res!1728124 (matchR!6356 (regex!7738 (rule!10844 (_1!25135 (get!15045 lt!1498006)))) (list!16719 (charsOf!5161 (_1!25135 (get!15045 lt!1498006))))))))

(declare-fun d!1239965 () Bool)

(declare-fun e!2611736 () Bool)

(assert (=> d!1239965 e!2611736))

(declare-fun res!1728122 () Bool)

(assert (=> d!1239965 (=> res!1728122 e!2611736)))

(declare-fun isEmpty!27393 (Option!9926) Bool)

(assert (=> d!1239965 (= res!1728122 (isEmpty!27393 lt!1498006))))

(declare-fun e!2611737 () Option!9926)

(assert (=> d!1239965 (= lt!1498006 e!2611737)))

(declare-fun c!716899 () Bool)

(assert (=> d!1239965 (= c!716899 (and ((_ is Cons!46259) rules!3967) ((_ is Nil!46259) (t!347514 rules!3967))))))

(declare-fun lt!1498007 () Unit!65375)

(declare-fun lt!1498005 () Unit!65375)

(assert (=> d!1239965 (= lt!1498007 lt!1498005)))

(assert (=> d!1239965 (isPrefix!4597 input!3517 input!3517)))

(assert (=> d!1239965 (= lt!1498005 (lemmaIsPrefixRefl!3014 input!3517 input!3517))))

(declare-fun rulesValidInductive!2867 (LexerInterface!7333 List!46383) Bool)

(assert (=> d!1239965 (rulesValidInductive!2867 thiss!26544 rules!3967)))

(assert (=> d!1239965 (= (maxPrefix!4373 thiss!26544 rules!3967 input!3517) lt!1498006)))

(declare-fun b!4207097 () Bool)

(declare-fun res!1728123 () Bool)

(assert (=> b!4207097 (=> (not res!1728123) (not e!2611735))))

(assert (=> b!4207097 (= res!1728123 (< (size!33980 (_2!25135 (get!15045 lt!1498006))) (size!33980 input!3517)))))

(declare-fun b!4207098 () Bool)

(assert (=> b!4207098 (= e!2611736 e!2611735)))

(declare-fun res!1728125 () Bool)

(assert (=> b!4207098 (=> (not res!1728125) (not e!2611735))))

(declare-fun isDefined!7377 (Option!9926) Bool)

(assert (=> b!4207098 (= res!1728125 (isDefined!7377 lt!1498006))))

(declare-fun b!4207099 () Bool)

(assert (=> b!4207099 (= e!2611735 (contains!9555 rules!3967 (rule!10844 (_1!25135 (get!15045 lt!1498006)))))))

(declare-fun b!4207100 () Bool)

(declare-fun res!1728126 () Bool)

(assert (=> b!4207100 (=> (not res!1728126) (not e!2611735))))

(declare-fun apply!10677 (TokenValueInjection!15364 BalanceConc!27492) TokenValue!7968)

(declare-fun seqFromList!5737 (List!46381) BalanceConc!27492)

(assert (=> b!4207100 (= res!1728126 (= (value!241062 (_1!25135 (get!15045 lt!1498006))) (apply!10677 (transformation!7738 (rule!10844 (_1!25135 (get!15045 lt!1498006)))) (seqFromList!5737 (originalCharacters!8120 (_1!25135 (get!15045 lt!1498006)))))))))

(declare-fun b!4207101 () Bool)

(declare-fun lt!1498008 () Option!9926)

(declare-fun lt!1498004 () Option!9926)

(assert (=> b!4207101 (= e!2611737 (ite (and ((_ is None!9925) lt!1498008) ((_ is None!9925) lt!1498004)) None!9925 (ite ((_ is None!9925) lt!1498004) lt!1498008 (ite ((_ is None!9925) lt!1498008) lt!1498004 (ite (>= (size!33977 (_1!25135 (v!40787 lt!1498008))) (size!33977 (_1!25135 (v!40787 lt!1498004)))) lt!1498008 lt!1498004)))))))

(assert (=> b!4207101 (= lt!1498008 call!292787)))

(assert (=> b!4207101 (= lt!1498004 (maxPrefix!4373 thiss!26544 (t!347514 rules!3967) input!3517))))

(declare-fun b!4207102 () Bool)

(assert (=> b!4207102 (= e!2611737 call!292787)))

(declare-fun b!4207103 () Bool)

(declare-fun res!1728127 () Bool)

(assert (=> b!4207103 (=> (not res!1728127) (not e!2611735))))

(assert (=> b!4207103 (= res!1728127 (= (++!11812 (list!16719 (charsOf!5161 (_1!25135 (get!15045 lt!1498006)))) (_2!25135 (get!15045 lt!1498006))) input!3517))))

(declare-fun b!4207104 () Bool)

(declare-fun res!1728121 () Bool)

(assert (=> b!4207104 (=> (not res!1728121) (not e!2611735))))

(assert (=> b!4207104 (= res!1728121 (= (list!16719 (charsOf!5161 (_1!25135 (get!15045 lt!1498006)))) (originalCharacters!8120 (_1!25135 (get!15045 lt!1498006)))))))

(assert (= (and d!1239965 c!716899) b!4207102))

(assert (= (and d!1239965 (not c!716899)) b!4207101))

(assert (= (or b!4207102 b!4207101) bm!292782))

(assert (= (and d!1239965 (not res!1728122)) b!4207098))

(assert (= (and b!4207098 res!1728125) b!4207104))

(assert (= (and b!4207104 res!1728121) b!4207097))

(assert (= (and b!4207097 res!1728123) b!4207103))

(assert (= (and b!4207103 res!1728127) b!4207100))

(assert (= (and b!4207100 res!1728126) b!4207096))

(assert (= (and b!4207096 res!1728124) b!4207099))

(declare-fun m!4795153 () Bool)

(assert (=> b!4207098 m!4795153))

(declare-fun m!4795155 () Bool)

(assert (=> bm!292782 m!4795155))

(declare-fun m!4795157 () Bool)

(assert (=> d!1239965 m!4795157))

(assert (=> d!1239965 m!4795049))

(assert (=> d!1239965 m!4795051))

(declare-fun m!4795159 () Bool)

(assert (=> d!1239965 m!4795159))

(declare-fun m!4795161 () Bool)

(assert (=> b!4207096 m!4795161))

(declare-fun m!4795163 () Bool)

(assert (=> b!4207096 m!4795163))

(assert (=> b!4207096 m!4795163))

(declare-fun m!4795165 () Bool)

(assert (=> b!4207096 m!4795165))

(assert (=> b!4207096 m!4795165))

(declare-fun m!4795167 () Bool)

(assert (=> b!4207096 m!4795167))

(assert (=> b!4207103 m!4795161))

(assert (=> b!4207103 m!4795163))

(assert (=> b!4207103 m!4795163))

(assert (=> b!4207103 m!4795165))

(assert (=> b!4207103 m!4795165))

(declare-fun m!4795169 () Bool)

(assert (=> b!4207103 m!4795169))

(assert (=> b!4207099 m!4795161))

(declare-fun m!4795171 () Bool)

(assert (=> b!4207099 m!4795171))

(declare-fun m!4795173 () Bool)

(assert (=> b!4207101 m!4795173))

(assert (=> b!4207104 m!4795161))

(assert (=> b!4207104 m!4795163))

(assert (=> b!4207104 m!4795163))

(assert (=> b!4207104 m!4795165))

(assert (=> b!4207097 m!4795161))

(declare-fun m!4795175 () Bool)

(assert (=> b!4207097 m!4795175))

(assert (=> b!4207097 m!4795073))

(assert (=> b!4207100 m!4795161))

(declare-fun m!4795177 () Bool)

(assert (=> b!4207100 m!4795177))

(assert (=> b!4207100 m!4795177))

(declare-fun m!4795179 () Bool)

(assert (=> b!4207100 m!4795179))

(assert (=> b!4206959 d!1239965))

(declare-fun d!1239973 () Bool)

(assert (=> d!1239973 (= (inv!60846 (tag!8602 (rule!10844 t!8364))) (= (mod (str.len (value!241061 (tag!8602 (rule!10844 t!8364)))) 2) 0))))

(assert (=> b!4206982 d!1239973))

(declare-fun d!1239975 () Bool)

(declare-fun res!1728128 () Bool)

(declare-fun e!2611738 () Bool)

(assert (=> d!1239975 (=> (not res!1728128) (not e!2611738))))

(assert (=> d!1239975 (= res!1728128 (semiInverseModEq!3358 (toChars!10309 (transformation!7738 (rule!10844 t!8364))) (toValue!10450 (transformation!7738 (rule!10844 t!8364)))))))

(assert (=> d!1239975 (= (inv!60849 (transformation!7738 (rule!10844 t!8364))) e!2611738)))

(declare-fun b!4207105 () Bool)

(assert (=> b!4207105 (= e!2611738 (equivClasses!3257 (toChars!10309 (transformation!7738 (rule!10844 t!8364))) (toValue!10450 (transformation!7738 (rule!10844 t!8364)))))))

(assert (= (and d!1239975 res!1728128) b!4207105))

(declare-fun m!4795181 () Bool)

(assert (=> d!1239975 m!4795181))

(declare-fun m!4795183 () Bool)

(assert (=> b!4207105 m!4795183))

(assert (=> b!4206982 d!1239975))

(declare-fun d!1239977 () Bool)

(assert (=> d!1239977 (= (inv!60846 (tag!8602 (rule!10844 tBis!41))) (= (mod (str.len (value!241061 (tag!8602 (rule!10844 tBis!41)))) 2) 0))))

(assert (=> b!4206978 d!1239977))

(declare-fun d!1239979 () Bool)

(declare-fun res!1728129 () Bool)

(declare-fun e!2611739 () Bool)

(assert (=> d!1239979 (=> (not res!1728129) (not e!2611739))))

(assert (=> d!1239979 (= res!1728129 (semiInverseModEq!3358 (toChars!10309 (transformation!7738 (rule!10844 tBis!41))) (toValue!10450 (transformation!7738 (rule!10844 tBis!41)))))))

(assert (=> d!1239979 (= (inv!60849 (transformation!7738 (rule!10844 tBis!41))) e!2611739)))

(declare-fun b!4207106 () Bool)

(assert (=> b!4207106 (= e!2611739 (equivClasses!3257 (toChars!10309 (transformation!7738 (rule!10844 tBis!41))) (toValue!10450 (transformation!7738 (rule!10844 tBis!41)))))))

(assert (= (and d!1239979 res!1728129) b!4207106))

(declare-fun m!4795185 () Bool)

(assert (=> d!1239979 m!4795185))

(declare-fun m!4795187 () Bool)

(assert (=> b!4207106 m!4795187))

(assert (=> b!4206978 d!1239979))

(declare-fun b!4207117 () Bool)

(declare-fun res!1728135 () Bool)

(declare-fun e!2611745 () Bool)

(assert (=> b!4207117 (=> (not res!1728135) (not e!2611745))))

(declare-fun lt!1498011 () List!46381)

(assert (=> b!4207117 (= res!1728135 (= (size!33980 lt!1498011) (+ (size!33980 pBis!121) (size!33980 suffixBis!41))))))

(declare-fun b!4207118 () Bool)

(assert (=> b!4207118 (= e!2611745 (or (not (= suffixBis!41 Nil!46257)) (= lt!1498011 pBis!121)))))

(declare-fun d!1239981 () Bool)

(assert (=> d!1239981 e!2611745))

(declare-fun res!1728134 () Bool)

(assert (=> d!1239981 (=> (not res!1728134) (not e!2611745))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7232 (List!46381) (InoxSet C!25480))

(assert (=> d!1239981 (= res!1728134 (= (content!7232 lt!1498011) ((_ map or) (content!7232 pBis!121) (content!7232 suffixBis!41))))))

(declare-fun e!2611744 () List!46381)

(assert (=> d!1239981 (= lt!1498011 e!2611744)))

(declare-fun c!716902 () Bool)

(assert (=> d!1239981 (= c!716902 ((_ is Nil!46257) pBis!121))))

(assert (=> d!1239981 (= (++!11812 pBis!121 suffixBis!41) lt!1498011)))

(declare-fun b!4207115 () Bool)

(assert (=> b!4207115 (= e!2611744 suffixBis!41)))

(declare-fun b!4207116 () Bool)

(assert (=> b!4207116 (= e!2611744 (Cons!46257 (h!51677 pBis!121) (++!11812 (t!347512 pBis!121) suffixBis!41)))))

(assert (= (and d!1239981 c!716902) b!4207115))

(assert (= (and d!1239981 (not c!716902)) b!4207116))

(assert (= (and d!1239981 res!1728134) b!4207117))

(assert (= (and b!4207117 res!1728135) b!4207118))

(declare-fun m!4795189 () Bool)

(assert (=> b!4207117 m!4795189))

(assert (=> b!4207117 m!4795075))

(declare-fun m!4795191 () Bool)

(assert (=> b!4207117 m!4795191))

(declare-fun m!4795193 () Bool)

(assert (=> d!1239981 m!4795193))

(declare-fun m!4795195 () Bool)

(assert (=> d!1239981 m!4795195))

(declare-fun m!4795197 () Bool)

(assert (=> d!1239981 m!4795197))

(declare-fun m!4795199 () Bool)

(assert (=> b!4207116 m!4795199))

(assert (=> b!4206977 d!1239981))

(declare-fun b!4207127 () Bool)

(declare-fun e!2611750 () Bool)

(assert (=> b!4207127 (= e!2611750 (isPrefix!4597 (tail!6773 p!3001) (tail!6773 input!3517)))))

(declare-fun d!1239983 () Bool)

(declare-fun e!2611751 () Bool)

(assert (=> d!1239983 e!2611751))

(declare-fun res!1728140 () Bool)

(assert (=> d!1239983 (=> res!1728140 e!2611751)))

(declare-fun lt!1498022 () Bool)

(assert (=> d!1239983 (= res!1728140 (not lt!1498022))))

(declare-fun e!2611752 () Bool)

(assert (=> d!1239983 (= lt!1498022 e!2611752)))

(declare-fun res!1728139 () Bool)

(assert (=> d!1239983 (=> res!1728139 e!2611752)))

(assert (=> d!1239983 (= res!1728139 ((_ is Nil!46257) p!3001))))

(assert (=> d!1239983 (= (isPrefix!4597 p!3001 input!3517) lt!1498022)))

(declare-fun b!4207125 () Bool)

(assert (=> b!4207125 (= e!2611752 e!2611750)))

(declare-fun res!1728138 () Bool)

(assert (=> b!4207125 (=> (not res!1728138) (not e!2611750))))

(assert (=> b!4207125 (= res!1728138 (not ((_ is Nil!46257) input!3517)))))

(declare-fun b!4207126 () Bool)

(declare-fun res!1728141 () Bool)

(assert (=> b!4207126 (=> (not res!1728141) (not e!2611750))))

(assert (=> b!4207126 (= res!1728141 (= (head!8926 p!3001) (head!8926 input!3517)))))

(declare-fun b!4207128 () Bool)

(assert (=> b!4207128 (= e!2611751 (>= (size!33980 input!3517) (size!33980 p!3001)))))

(assert (= (and d!1239983 (not res!1728139)) b!4207125))

(assert (= (and b!4207125 res!1728138) b!4207126))

(assert (= (and b!4207126 res!1728141) b!4207127))

(assert (= (and d!1239983 (not res!1728140)) b!4207128))

(declare-fun m!4795201 () Bool)

(assert (=> b!4207127 m!4795201))

(assert (=> b!4207127 m!4795065))

(assert (=> b!4207127 m!4795201))

(assert (=> b!4207127 m!4795065))

(declare-fun m!4795203 () Bool)

(assert (=> b!4207127 m!4795203))

(declare-fun m!4795205 () Bool)

(assert (=> b!4207126 m!4795205))

(assert (=> b!4207126 m!4795071))

(assert (=> b!4207128 m!4795073))

(declare-fun m!4795207 () Bool)

(assert (=> b!4207128 m!4795207))

(assert (=> b!4206956 d!1239983))

(declare-fun b!4207292 () Bool)

(declare-fun res!1728227 () Bool)

(declare-fun e!2611842 () Bool)

(assert (=> b!4207292 (=> (not res!1728227) (not e!2611842))))

(declare-fun lt!1498069 () Option!9926)

(assert (=> b!4207292 (= res!1728227 (< (size!33980 (_2!25135 (get!15045 lt!1498069))) (size!33980 input!3517)))))

(declare-fun b!4207293 () Bool)

(declare-fun res!1728228 () Bool)

(assert (=> b!4207293 (=> (not res!1728228) (not e!2611842))))

(assert (=> b!4207293 (= res!1728228 (= (rule!10844 (_1!25135 (get!15045 lt!1498069))) rBis!178))))

(declare-fun b!4207294 () Bool)

(declare-fun e!2611839 () Option!9926)

(declare-datatypes ((tuple2!44006 0))(
  ( (tuple2!44007 (_1!25137 List!46381) (_2!25137 List!46381)) )
))
(declare-fun lt!1498071 () tuple2!44006)

(declare-fun size!33981 (BalanceConc!27492) Int)

(assert (=> b!4207294 (= e!2611839 (Some!9925 (tuple2!44003 (Token!14179 (apply!10677 (transformation!7738 rBis!178) (seqFromList!5737 (_1!25137 lt!1498071))) rBis!178 (size!33981 (seqFromList!5737 (_1!25137 lt!1498071))) (_1!25137 lt!1498071)) (_2!25137 lt!1498071))))))

(declare-fun lt!1498068 () Unit!65375)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1610 (Regex!12643 List!46381) Unit!65375)

(assert (=> b!4207294 (= lt!1498068 (longestMatchIsAcceptedByMatchOrIsEmpty!1610 (regex!7738 rBis!178) input!3517))))

(declare-fun res!1728232 () Bool)

(declare-fun findLongestMatchInner!1637 (Regex!12643 List!46381 Int List!46381 List!46381 Int) tuple2!44006)

(assert (=> b!4207294 (= res!1728232 (isEmpty!27392 (_1!25137 (findLongestMatchInner!1637 (regex!7738 rBis!178) Nil!46257 (size!33980 Nil!46257) input!3517 input!3517 (size!33980 input!3517)))))))

(declare-fun e!2611840 () Bool)

(assert (=> b!4207294 (=> res!1728232 e!2611840)))

(assert (=> b!4207294 e!2611840))

(declare-fun lt!1498072 () Unit!65375)

(assert (=> b!4207294 (= lt!1498072 lt!1498068)))

(declare-fun lt!1498070 () Unit!65375)

(declare-fun lemmaSemiInverse!2478 (TokenValueInjection!15364 BalanceConc!27492) Unit!65375)

(assert (=> b!4207294 (= lt!1498070 (lemmaSemiInverse!2478 (transformation!7738 rBis!178) (seqFromList!5737 (_1!25137 lt!1498071))))))

(declare-fun d!1239985 () Bool)

(declare-fun e!2611841 () Bool)

(assert (=> d!1239985 e!2611841))

(declare-fun res!1728233 () Bool)

(assert (=> d!1239985 (=> res!1728233 e!2611841)))

(assert (=> d!1239985 (= res!1728233 (isEmpty!27393 lt!1498069))))

(assert (=> d!1239985 (= lt!1498069 e!2611839)))

(declare-fun c!716917 () Bool)

(assert (=> d!1239985 (= c!716917 (isEmpty!27392 (_1!25137 lt!1498071)))))

(declare-fun findLongestMatch!1550 (Regex!12643 List!46381) tuple2!44006)

(assert (=> d!1239985 (= lt!1498071 (findLongestMatch!1550 (regex!7738 rBis!178) input!3517))))

(assert (=> d!1239985 (ruleValid!3450 thiss!26544 rBis!178)))

(assert (=> d!1239985 (= (maxPrefixOneRule!3328 thiss!26544 rBis!178 input!3517) lt!1498069)))

(declare-fun b!4207295 () Bool)

(assert (=> b!4207295 (= e!2611839 None!9925)))

(declare-fun b!4207296 () Bool)

(declare-fun res!1728230 () Bool)

(assert (=> b!4207296 (=> (not res!1728230) (not e!2611842))))

(assert (=> b!4207296 (= res!1728230 (= (value!241062 (_1!25135 (get!15045 lt!1498069))) (apply!10677 (transformation!7738 (rule!10844 (_1!25135 (get!15045 lt!1498069)))) (seqFromList!5737 (originalCharacters!8120 (_1!25135 (get!15045 lt!1498069)))))))))

(declare-fun b!4207297 () Bool)

(declare-fun res!1728229 () Bool)

(assert (=> b!4207297 (=> (not res!1728229) (not e!2611842))))

(assert (=> b!4207297 (= res!1728229 (= (++!11812 (list!16719 (charsOf!5161 (_1!25135 (get!15045 lt!1498069)))) (_2!25135 (get!15045 lt!1498069))) input!3517))))

(declare-fun b!4207298 () Bool)

(assert (=> b!4207298 (= e!2611841 e!2611842)))

(declare-fun res!1728231 () Bool)

(assert (=> b!4207298 (=> (not res!1728231) (not e!2611842))))

(assert (=> b!4207298 (= res!1728231 (matchR!6356 (regex!7738 rBis!178) (list!16719 (charsOf!5161 (_1!25135 (get!15045 lt!1498069))))))))

(declare-fun b!4207299 () Bool)

(assert (=> b!4207299 (= e!2611840 (matchR!6356 (regex!7738 rBis!178) (_1!25137 (findLongestMatchInner!1637 (regex!7738 rBis!178) Nil!46257 (size!33980 Nil!46257) input!3517 input!3517 (size!33980 input!3517)))))))

(declare-fun b!4207300 () Bool)

(assert (=> b!4207300 (= e!2611842 (= (size!33977 (_1!25135 (get!15045 lt!1498069))) (size!33980 (originalCharacters!8120 (_1!25135 (get!15045 lt!1498069))))))))

(assert (= (and d!1239985 c!716917) b!4207295))

(assert (= (and d!1239985 (not c!716917)) b!4207294))

(assert (= (and b!4207294 (not res!1728232)) b!4207299))

(assert (= (and d!1239985 (not res!1728233)) b!4207298))

(assert (= (and b!4207298 res!1728231) b!4207297))

(assert (= (and b!4207297 res!1728229) b!4207292))

(assert (= (and b!4207292 res!1728227) b!4207293))

(assert (= (and b!4207293 res!1728228) b!4207296))

(assert (= (and b!4207296 res!1728230) b!4207300))

(declare-fun m!4795363 () Bool)

(assert (=> b!4207297 m!4795363))

(declare-fun m!4795365 () Bool)

(assert (=> b!4207297 m!4795365))

(assert (=> b!4207297 m!4795365))

(declare-fun m!4795367 () Bool)

(assert (=> b!4207297 m!4795367))

(assert (=> b!4207297 m!4795367))

(declare-fun m!4795369 () Bool)

(assert (=> b!4207297 m!4795369))

(assert (=> b!4207296 m!4795363))

(declare-fun m!4795371 () Bool)

(assert (=> b!4207296 m!4795371))

(assert (=> b!4207296 m!4795371))

(declare-fun m!4795373 () Bool)

(assert (=> b!4207296 m!4795373))

(assert (=> b!4207292 m!4795363))

(declare-fun m!4795375 () Bool)

(assert (=> b!4207292 m!4795375))

(assert (=> b!4207292 m!4795073))

(declare-fun m!4795377 () Bool)

(assert (=> b!4207299 m!4795377))

(assert (=> b!4207299 m!4795073))

(assert (=> b!4207299 m!4795377))

(assert (=> b!4207299 m!4795073))

(declare-fun m!4795379 () Bool)

(assert (=> b!4207299 m!4795379))

(declare-fun m!4795381 () Bool)

(assert (=> b!4207299 m!4795381))

(declare-fun m!4795383 () Bool)

(assert (=> b!4207294 m!4795383))

(assert (=> b!4207294 m!4795383))

(declare-fun m!4795385 () Bool)

(assert (=> b!4207294 m!4795385))

(declare-fun m!4795387 () Bool)

(assert (=> b!4207294 m!4795387))

(assert (=> b!4207294 m!4795383))

(declare-fun m!4795389 () Bool)

(assert (=> b!4207294 m!4795389))

(assert (=> b!4207294 m!4795073))

(assert (=> b!4207294 m!4795383))

(declare-fun m!4795391 () Bool)

(assert (=> b!4207294 m!4795391))

(declare-fun m!4795393 () Bool)

(assert (=> b!4207294 m!4795393))

(assert (=> b!4207294 m!4795377))

(assert (=> b!4207294 m!4795377))

(assert (=> b!4207294 m!4795073))

(assert (=> b!4207294 m!4795379))

(assert (=> b!4207300 m!4795363))

(declare-fun m!4795395 () Bool)

(assert (=> b!4207300 m!4795395))

(declare-fun m!4795397 () Bool)

(assert (=> d!1239985 m!4795397))

(declare-fun m!4795399 () Bool)

(assert (=> d!1239985 m!4795399))

(declare-fun m!4795401 () Bool)

(assert (=> d!1239985 m!4795401))

(assert (=> d!1239985 m!4795021))

(assert (=> b!4207293 m!4795363))

(assert (=> b!4207298 m!4795363))

(assert (=> b!4207298 m!4795365))

(assert (=> b!4207298 m!4795365))

(assert (=> b!4207298 m!4795367))

(assert (=> b!4207298 m!4795367))

(declare-fun m!4795403 () Bool)

(assert (=> b!4207298 m!4795403))

(assert (=> b!4206979 d!1239985))

(declare-fun b!4207303 () Bool)

(declare-fun e!2611843 () Bool)

(assert (=> b!4207303 (= e!2611843 (isPrefix!4597 (tail!6773 input!3517) (tail!6773 input!3517)))))

(declare-fun d!1240027 () Bool)

(declare-fun e!2611844 () Bool)

(assert (=> d!1240027 e!2611844))

(declare-fun res!1728236 () Bool)

(assert (=> d!1240027 (=> res!1728236 e!2611844)))

(declare-fun lt!1498073 () Bool)

(assert (=> d!1240027 (= res!1728236 (not lt!1498073))))

(declare-fun e!2611845 () Bool)

(assert (=> d!1240027 (= lt!1498073 e!2611845)))

(declare-fun res!1728235 () Bool)

(assert (=> d!1240027 (=> res!1728235 e!2611845)))

(assert (=> d!1240027 (= res!1728235 ((_ is Nil!46257) input!3517))))

(assert (=> d!1240027 (= (isPrefix!4597 input!3517 input!3517) lt!1498073)))

(declare-fun b!4207301 () Bool)

(assert (=> b!4207301 (= e!2611845 e!2611843)))

(declare-fun res!1728234 () Bool)

(assert (=> b!4207301 (=> (not res!1728234) (not e!2611843))))

(assert (=> b!4207301 (= res!1728234 (not ((_ is Nil!46257) input!3517)))))

(declare-fun b!4207302 () Bool)

(declare-fun res!1728237 () Bool)

(assert (=> b!4207302 (=> (not res!1728237) (not e!2611843))))

(assert (=> b!4207302 (= res!1728237 (= (head!8926 input!3517) (head!8926 input!3517)))))

(declare-fun b!4207304 () Bool)

(assert (=> b!4207304 (= e!2611844 (>= (size!33980 input!3517) (size!33980 input!3517)))))

(assert (= (and d!1240027 (not res!1728235)) b!4207301))

(assert (= (and b!4207301 res!1728234) b!4207302))

(assert (= (and b!4207302 res!1728237) b!4207303))

(assert (= (and d!1240027 (not res!1728236)) b!4207304))

(assert (=> b!4207303 m!4795065))

(assert (=> b!4207303 m!4795065))

(assert (=> b!4207303 m!4795065))

(assert (=> b!4207303 m!4795065))

(declare-fun m!4795405 () Bool)

(assert (=> b!4207303 m!4795405))

(assert (=> b!4207302 m!4795071))

(assert (=> b!4207302 m!4795071))

(assert (=> b!4207304 m!4795073))

(assert (=> b!4207304 m!4795073))

(assert (=> b!4206979 d!1240027))

(declare-fun d!1240029 () Bool)

(assert (=> d!1240029 (isPrefix!4597 input!3517 input!3517)))

(declare-fun lt!1498076 () Unit!65375)

(declare-fun choose!25790 (List!46381 List!46381) Unit!65375)

(assert (=> d!1240029 (= lt!1498076 (choose!25790 input!3517 input!3517))))

(assert (=> d!1240029 (= (lemmaIsPrefixRefl!3014 input!3517 input!3517) lt!1498076)))

(declare-fun bs!597236 () Bool)

(assert (= bs!597236 d!1240029))

(assert (=> bs!597236 m!4795049))

(declare-fun m!4795407 () Bool)

(assert (=> bs!597236 m!4795407))

(assert (=> b!4206979 d!1240029))

(declare-fun d!1240031 () Bool)

(declare-fun lt!1498079 () Int)

(assert (=> d!1240031 (>= lt!1498079 0)))

(declare-fun e!2611848 () Int)

(assert (=> d!1240031 (= lt!1498079 e!2611848)))

(declare-fun c!716920 () Bool)

(assert (=> d!1240031 (= c!716920 ((_ is Nil!46259) rules!3967))))

(assert (=> d!1240031 (= (ListPrimitiveSize!297 rules!3967) lt!1498079)))

(declare-fun b!4207309 () Bool)

(assert (=> b!4207309 (= e!2611848 0)))

(declare-fun b!4207310 () Bool)

(assert (=> b!4207310 (= e!2611848 (+ 1 (ListPrimitiveSize!297 (t!347514 rules!3967))))))

(assert (= (and d!1240031 c!716920) b!4207309))

(assert (= (and d!1240031 (not c!716920)) b!4207310))

(declare-fun m!4795409 () Bool)

(assert (=> b!4207310 m!4795409))

(assert (=> b!4206958 d!1240031))

(declare-fun d!1240033 () Bool)

(declare-fun list!16721 (Conc!13949) List!46381)

(assert (=> d!1240033 (= (list!16719 (charsOf!5161 tBis!41)) (list!16721 (c!716881 (charsOf!5161 tBis!41))))))

(declare-fun bs!597237 () Bool)

(assert (= bs!597237 d!1240033))

(declare-fun m!4795411 () Bool)

(assert (=> bs!597237 m!4795411))

(assert (=> b!4206957 d!1240033))

(declare-fun d!1240035 () Bool)

(declare-fun lt!1498082 () BalanceConc!27492)

(assert (=> d!1240035 (= (list!16719 lt!1498082) (originalCharacters!8120 tBis!41))))

(assert (=> d!1240035 (= lt!1498082 (dynLambda!19941 (toChars!10309 (transformation!7738 (rule!10844 tBis!41))) (value!241062 tBis!41)))))

(assert (=> d!1240035 (= (charsOf!5161 tBis!41) lt!1498082)))

(declare-fun b_lambda!123887 () Bool)

(assert (=> (not b_lambda!123887) (not d!1240035)))

(assert (=> d!1240035 t!347516))

(declare-fun b_and!330785 () Bool)

(assert (= b_and!330749 (and (=> t!347516 result!307552) b_and!330785)))

(assert (=> d!1240035 t!347518))

(declare-fun b_and!330787 () Bool)

(assert (= b_and!330751 (and (=> t!347518 result!307556) b_and!330787)))

(assert (=> d!1240035 t!347520))

(declare-fun b_and!330789 () Bool)

(assert (= b_and!330753 (and (=> t!347520 result!307558) b_and!330789)))

(assert (=> d!1240035 t!347522))

(declare-fun b_and!330791 () Bool)

(assert (= b_and!330755 (and (=> t!347522 result!307560) b_and!330791)))

(declare-fun m!4795413 () Bool)

(assert (=> d!1240035 m!4795413))

(assert (=> d!1240035 m!4795111))

(assert (=> b!4206957 d!1240035))

(declare-fun d!1240037 () Bool)

(declare-fun lt!1498085 () Bool)

(declare-fun content!7233 (List!46383) (InoxSet Rule!15276))

(assert (=> d!1240037 (= lt!1498085 (select (content!7233 rules!3967) rBis!178))))

(declare-fun e!2611853 () Bool)

(assert (=> d!1240037 (= lt!1498085 e!2611853)))

(declare-fun res!1728242 () Bool)

(assert (=> d!1240037 (=> (not res!1728242) (not e!2611853))))

(assert (=> d!1240037 (= res!1728242 ((_ is Cons!46259) rules!3967))))

(assert (=> d!1240037 (= (contains!9555 rules!3967 rBis!178) lt!1498085)))

(declare-fun b!4207315 () Bool)

(declare-fun e!2611854 () Bool)

(assert (=> b!4207315 (= e!2611853 e!2611854)))

(declare-fun res!1728243 () Bool)

(assert (=> b!4207315 (=> res!1728243 e!2611854)))

(assert (=> b!4207315 (= res!1728243 (= (h!51679 rules!3967) rBis!178))))

(declare-fun b!4207316 () Bool)

(assert (=> b!4207316 (= e!2611854 (contains!9555 (t!347514 rules!3967) rBis!178))))

(assert (= (and d!1240037 res!1728242) b!4207315))

(assert (= (and b!4207315 (not res!1728243)) b!4207316))

(declare-fun m!4795415 () Bool)

(assert (=> d!1240037 m!4795415))

(declare-fun m!4795417 () Bool)

(assert (=> d!1240037 m!4795417))

(declare-fun m!4795419 () Bool)

(assert (=> b!4207316 m!4795419))

(assert (=> b!4206975 d!1240037))

(declare-fun d!1240039 () Bool)

(assert (=> d!1240039 (= (inv!60846 (tag!8602 rBis!178)) (= (mod (str.len (value!241061 (tag!8602 rBis!178))) 2) 0))))

(assert (=> b!4206964 d!1240039))

(declare-fun d!1240041 () Bool)

(declare-fun res!1728244 () Bool)

(declare-fun e!2611855 () Bool)

(assert (=> d!1240041 (=> (not res!1728244) (not e!2611855))))

(assert (=> d!1240041 (= res!1728244 (semiInverseModEq!3358 (toChars!10309 (transformation!7738 rBis!178)) (toValue!10450 (transformation!7738 rBis!178))))))

(assert (=> d!1240041 (= (inv!60849 (transformation!7738 rBis!178)) e!2611855)))

(declare-fun b!4207317 () Bool)

(assert (=> b!4207317 (= e!2611855 (equivClasses!3257 (toChars!10309 (transformation!7738 rBis!178)) (toValue!10450 (transformation!7738 rBis!178))))))

(assert (= (and d!1240041 res!1728244) b!4207317))

(declare-fun m!4795421 () Bool)

(assert (=> d!1240041 m!4795421))

(declare-fun m!4795423 () Bool)

(assert (=> b!4207317 m!4795423))

(assert (=> b!4206964 d!1240041))

(declare-fun b!4207318 () Bool)

(declare-fun res!1728245 () Bool)

(declare-fun e!2611858 () Bool)

(assert (=> b!4207318 (=> res!1728245 e!2611858)))

(assert (=> b!4207318 (= res!1728245 (not ((_ is IntegerValue!23906) (value!241062 t!8364))))))

(declare-fun e!2611857 () Bool)

(assert (=> b!4207318 (= e!2611857 e!2611858)))

(declare-fun b!4207319 () Bool)

(assert (=> b!4207319 (= e!2611857 (inv!17 (value!241062 t!8364)))))

(declare-fun d!1240043 () Bool)

(declare-fun c!716921 () Bool)

(assert (=> d!1240043 (= c!716921 ((_ is IntegerValue!23904) (value!241062 t!8364)))))

(declare-fun e!2611856 () Bool)

(assert (=> d!1240043 (= (inv!21 (value!241062 t!8364)) e!2611856)))

(declare-fun b!4207320 () Bool)

(assert (=> b!4207320 (= e!2611858 (inv!15 (value!241062 t!8364)))))

(declare-fun b!4207321 () Bool)

(assert (=> b!4207321 (= e!2611856 (inv!16 (value!241062 t!8364)))))

(declare-fun b!4207322 () Bool)

(assert (=> b!4207322 (= e!2611856 e!2611857)))

(declare-fun c!716922 () Bool)

(assert (=> b!4207322 (= c!716922 ((_ is IntegerValue!23905) (value!241062 t!8364)))))

(assert (= (and d!1240043 c!716921) b!4207321))

(assert (= (and d!1240043 (not c!716921)) b!4207322))

(assert (= (and b!4207322 c!716922) b!4207319))

(assert (= (and b!4207322 (not c!716922)) b!4207318))

(assert (= (and b!4207318 (not res!1728245)) b!4207320))

(declare-fun m!4795425 () Bool)

(assert (=> b!4207319 m!4795425))

(declare-fun m!4795427 () Bool)

(assert (=> b!4207320 m!4795427))

(declare-fun m!4795429 () Bool)

(assert (=> b!4207321 m!4795429))

(assert (=> b!4206966 d!1240043))

(declare-fun b!4207325 () Bool)

(declare-fun res!1728247 () Bool)

(declare-fun e!2611860 () Bool)

(assert (=> b!4207325 (=> (not res!1728247) (not e!2611860))))

(declare-fun lt!1498086 () List!46381)

(assert (=> b!4207325 (= res!1728247 (= (size!33980 lt!1498086) (+ (size!33980 p!3001) (size!33980 suffix!1557))))))

(declare-fun b!4207326 () Bool)

(assert (=> b!4207326 (= e!2611860 (or (not (= suffix!1557 Nil!46257)) (= lt!1498086 p!3001)))))

(declare-fun d!1240045 () Bool)

(assert (=> d!1240045 e!2611860))

(declare-fun res!1728246 () Bool)

(assert (=> d!1240045 (=> (not res!1728246) (not e!2611860))))

(assert (=> d!1240045 (= res!1728246 (= (content!7232 lt!1498086) ((_ map or) (content!7232 p!3001) (content!7232 suffix!1557))))))

(declare-fun e!2611859 () List!46381)

(assert (=> d!1240045 (= lt!1498086 e!2611859)))

(declare-fun c!716923 () Bool)

(assert (=> d!1240045 (= c!716923 ((_ is Nil!46257) p!3001))))

(assert (=> d!1240045 (= (++!11812 p!3001 suffix!1557) lt!1498086)))

(declare-fun b!4207323 () Bool)

(assert (=> b!4207323 (= e!2611859 suffix!1557)))

(declare-fun b!4207324 () Bool)

(assert (=> b!4207324 (= e!2611859 (Cons!46257 (h!51677 p!3001) (++!11812 (t!347512 p!3001) suffix!1557)))))

(assert (= (and d!1240045 c!716923) b!4207323))

(assert (= (and d!1240045 (not c!716923)) b!4207324))

(assert (= (and d!1240045 res!1728246) b!4207325))

(assert (= (and b!4207325 res!1728247) b!4207326))

(declare-fun m!4795431 () Bool)

(assert (=> b!4207325 m!4795431))

(assert (=> b!4207325 m!4795207))

(declare-fun m!4795433 () Bool)

(assert (=> b!4207325 m!4795433))

(declare-fun m!4795435 () Bool)

(assert (=> d!1240045 m!4795435))

(declare-fun m!4795437 () Bool)

(assert (=> d!1240045 m!4795437))

(declare-fun m!4795439 () Bool)

(assert (=> d!1240045 m!4795439))

(declare-fun m!4795441 () Bool)

(assert (=> b!4207324 m!4795441))

(assert (=> b!4206965 d!1240045))

(declare-fun d!1240047 () Bool)

(declare-fun res!1728252 () Bool)

(declare-fun e!2611863 () Bool)

(assert (=> d!1240047 (=> (not res!1728252) (not e!2611863))))

(declare-fun validRegex!5736 (Regex!12643) Bool)

(assert (=> d!1240047 (= res!1728252 (validRegex!5736 (regex!7738 rBis!178)))))

(assert (=> d!1240047 (= (ruleValid!3450 thiss!26544 rBis!178) e!2611863)))

(declare-fun b!4207331 () Bool)

(declare-fun res!1728253 () Bool)

(assert (=> b!4207331 (=> (not res!1728253) (not e!2611863))))

(declare-fun nullable!4449 (Regex!12643) Bool)

(assert (=> b!4207331 (= res!1728253 (not (nullable!4449 (regex!7738 rBis!178))))))

(declare-fun b!4207332 () Bool)

(assert (=> b!4207332 (= e!2611863 (not (= (tag!8602 rBis!178) (String!53711 ""))))))

(assert (= (and d!1240047 res!1728252) b!4207331))

(assert (= (and b!4207331 res!1728253) b!4207332))

(declare-fun m!4795443 () Bool)

(assert (=> d!1240047 m!4795443))

(declare-fun m!4795445 () Bool)

(assert (=> b!4207331 m!4795445))

(assert (=> b!4206976 d!1240047))

(declare-fun b!4207346 () Bool)

(declare-fun e!2611866 () Bool)

(declare-fun tp!1286145 () Bool)

(declare-fun tp!1286144 () Bool)

(assert (=> b!4207346 (= e!2611866 (and tp!1286145 tp!1286144))))

(assert (=> b!4206962 (= tp!1286062 e!2611866)))

(declare-fun b!4207344 () Bool)

(declare-fun tp!1286146 () Bool)

(declare-fun tp!1286148 () Bool)

(assert (=> b!4207344 (= e!2611866 (and tp!1286146 tp!1286148))))

(declare-fun b!4207345 () Bool)

(declare-fun tp!1286147 () Bool)

(assert (=> b!4207345 (= e!2611866 tp!1286147)))

(declare-fun b!4207343 () Bool)

(assert (=> b!4207343 (= e!2611866 tp_is_empty!22253)))

(assert (= (and b!4206962 ((_ is ElementMatch!12643) (regex!7738 (h!51679 rules!3967)))) b!4207343))

(assert (= (and b!4206962 ((_ is Concat!20612) (regex!7738 (h!51679 rules!3967)))) b!4207344))

(assert (= (and b!4206962 ((_ is Star!12643) (regex!7738 (h!51679 rules!3967)))) b!4207345))

(assert (= (and b!4206962 ((_ is Union!12643) (regex!7738 (h!51679 rules!3967)))) b!4207346))

(declare-fun b!4207351 () Bool)

(declare-fun e!2611869 () Bool)

(declare-fun tp!1286151 () Bool)

(assert (=> b!4207351 (= e!2611869 (and tp_is_empty!22253 tp!1286151))))

(assert (=> b!4206974 (= tp!1286069 e!2611869)))

(assert (= (and b!4206974 ((_ is Cons!46257) (originalCharacters!8120 tBis!41))) b!4207351))

(declare-fun b!4207352 () Bool)

(declare-fun e!2611870 () Bool)

(declare-fun tp!1286152 () Bool)

(assert (=> b!4207352 (= e!2611870 (and tp_is_empty!22253 tp!1286152))))

(assert (=> b!4206973 (= tp!1286056 e!2611870)))

(assert (= (and b!4206973 ((_ is Cons!46257) (t!347512 input!3517))) b!4207352))

(declare-fun b!4207363 () Bool)

(declare-fun b_free!123055 () Bool)

(declare-fun b_next!123759 () Bool)

(assert (=> b!4207363 (= b_free!123055 (not b_next!123759))))

(declare-fun tp!1286162 () Bool)

(declare-fun b_and!330793 () Bool)

(assert (=> b!4207363 (= tp!1286162 b_and!330793)))

(declare-fun b_free!123057 () Bool)

(declare-fun b_next!123761 () Bool)

(assert (=> b!4207363 (= b_free!123057 (not b_next!123761))))

(declare-fun t!347552 () Bool)

(declare-fun tb!252371 () Bool)

(assert (=> (and b!4207363 (= (toChars!10309 (transformation!7738 (h!51679 (t!347514 rules!3967)))) (toChars!10309 (transformation!7738 (rule!10844 tBis!41)))) t!347552) tb!252371))

(declare-fun result!307604 () Bool)

(assert (= result!307604 result!307552))

(assert (=> b!4207031 t!347552))

(declare-fun tb!252373 () Bool)

(declare-fun t!347554 () Bool)

(assert (=> (and b!4207363 (= (toChars!10309 (transformation!7738 (h!51679 (t!347514 rules!3967)))) (toChars!10309 (transformation!7738 (rule!10844 t!8364)))) t!347554) tb!252373))

(declare-fun result!307606 () Bool)

(assert (= result!307606 result!307562))

(assert (=> b!4207042 t!347554))

(assert (=> d!1240035 t!347552))

(declare-fun tp!1286164 () Bool)

(declare-fun b_and!330795 () Bool)

(assert (=> b!4207363 (= tp!1286164 (and (=> t!347552 result!307604) (=> t!347554 result!307606) b_and!330795))))

(declare-fun e!2611882 () Bool)

(assert (=> b!4207363 (= e!2611882 (and tp!1286162 tp!1286164))))

(declare-fun b!4207362 () Bool)

(declare-fun e!2611880 () Bool)

(declare-fun tp!1286163 () Bool)

(assert (=> b!4207362 (= e!2611880 (and tp!1286163 (inv!60846 (tag!8602 (h!51679 (t!347514 rules!3967)))) (inv!60849 (transformation!7738 (h!51679 (t!347514 rules!3967)))) e!2611882))))

(declare-fun b!4207361 () Bool)

(declare-fun e!2611881 () Bool)

(declare-fun tp!1286161 () Bool)

(assert (=> b!4207361 (= e!2611881 (and e!2611880 tp!1286161))))

(assert (=> b!4206969 (= tp!1286060 e!2611881)))

(assert (= b!4207362 b!4207363))

(assert (= b!4207361 b!4207362))

(assert (= (and b!4206969 ((_ is Cons!46259) (t!347514 rules!3967))) b!4207361))

(declare-fun m!4795447 () Bool)

(assert (=> b!4207362 m!4795447))

(declare-fun m!4795449 () Bool)

(assert (=> b!4207362 m!4795449))

(declare-fun b!4207367 () Bool)

(declare-fun e!2611883 () Bool)

(declare-fun tp!1286166 () Bool)

(declare-fun tp!1286165 () Bool)

(assert (=> b!4207367 (= e!2611883 (and tp!1286166 tp!1286165))))

(assert (=> b!4206982 (= tp!1286057 e!2611883)))

(declare-fun b!4207365 () Bool)

(declare-fun tp!1286167 () Bool)

(declare-fun tp!1286169 () Bool)

(assert (=> b!4207365 (= e!2611883 (and tp!1286167 tp!1286169))))

(declare-fun b!4207366 () Bool)

(declare-fun tp!1286168 () Bool)

(assert (=> b!4207366 (= e!2611883 tp!1286168)))

(declare-fun b!4207364 () Bool)

(assert (=> b!4207364 (= e!2611883 tp_is_empty!22253)))

(assert (= (and b!4206982 ((_ is ElementMatch!12643) (regex!7738 (rule!10844 t!8364)))) b!4207364))

(assert (= (and b!4206982 ((_ is Concat!20612) (regex!7738 (rule!10844 t!8364)))) b!4207365))

(assert (= (and b!4206982 ((_ is Star!12643) (regex!7738 (rule!10844 t!8364)))) b!4207366))

(assert (= (and b!4206982 ((_ is Union!12643) (regex!7738 (rule!10844 t!8364)))) b!4207367))

(declare-fun b!4207368 () Bool)

(declare-fun e!2611884 () Bool)

(declare-fun tp!1286170 () Bool)

(assert (=> b!4207368 (= e!2611884 (and tp_is_empty!22253 tp!1286170))))

(assert (=> b!4206960 (= tp!1286072 e!2611884)))

(assert (= (and b!4206960 ((_ is Cons!46257) (t!347512 p!3001))) b!4207368))

(declare-fun b!4207369 () Bool)

(declare-fun e!2611885 () Bool)

(declare-fun tp!1286171 () Bool)

(assert (=> b!4207369 (= e!2611885 (and tp_is_empty!22253 tp!1286171))))

(assert (=> b!4206967 (= tp!1286068 e!2611885)))

(assert (= (and b!4206967 ((_ is Cons!46257) (t!347512 suffixBis!41))) b!4207369))

(declare-fun b!4207373 () Bool)

(declare-fun e!2611886 () Bool)

(declare-fun tp!1286173 () Bool)

(declare-fun tp!1286172 () Bool)

(assert (=> b!4207373 (= e!2611886 (and tp!1286173 tp!1286172))))

(assert (=> b!4206978 (= tp!1286073 e!2611886)))

(declare-fun b!4207371 () Bool)

(declare-fun tp!1286174 () Bool)

(declare-fun tp!1286176 () Bool)

(assert (=> b!4207371 (= e!2611886 (and tp!1286174 tp!1286176))))

(declare-fun b!4207372 () Bool)

(declare-fun tp!1286175 () Bool)

(assert (=> b!4207372 (= e!2611886 tp!1286175)))

(declare-fun b!4207370 () Bool)

(assert (=> b!4207370 (= e!2611886 tp_is_empty!22253)))

(assert (= (and b!4206978 ((_ is ElementMatch!12643) (regex!7738 (rule!10844 tBis!41)))) b!4207370))

(assert (= (and b!4206978 ((_ is Concat!20612) (regex!7738 (rule!10844 tBis!41)))) b!4207371))

(assert (= (and b!4206978 ((_ is Star!12643) (regex!7738 (rule!10844 tBis!41)))) b!4207372))

(assert (= (and b!4206978 ((_ is Union!12643) (regex!7738 (rule!10844 tBis!41)))) b!4207373))

(declare-fun b!4207374 () Bool)

(declare-fun e!2611887 () Bool)

(declare-fun tp!1286177 () Bool)

(assert (=> b!4207374 (= e!2611887 (and tp_is_empty!22253 tp!1286177))))

(assert (=> b!4206968 (= tp!1286064 e!2611887)))

(assert (= (and b!4206968 ((_ is Cons!46257) (t!347512 pBis!121))) b!4207374))

(declare-fun b!4207375 () Bool)

(declare-fun e!2611888 () Bool)

(declare-fun tp!1286178 () Bool)

(assert (=> b!4207375 (= e!2611888 (and tp_is_empty!22253 tp!1286178))))

(assert (=> b!4206954 (= tp!1286066 e!2611888)))

(assert (= (and b!4206954 ((_ is Cons!46257) (t!347512 suffix!1557))) b!4207375))

(declare-fun b!4207379 () Bool)

(declare-fun e!2611889 () Bool)

(declare-fun tp!1286180 () Bool)

(declare-fun tp!1286179 () Bool)

(assert (=> b!4207379 (= e!2611889 (and tp!1286180 tp!1286179))))

(assert (=> b!4206964 (= tp!1286055 e!2611889)))

(declare-fun b!4207377 () Bool)

(declare-fun tp!1286181 () Bool)

(declare-fun tp!1286183 () Bool)

(assert (=> b!4207377 (= e!2611889 (and tp!1286181 tp!1286183))))

(declare-fun b!4207378 () Bool)

(declare-fun tp!1286182 () Bool)

(assert (=> b!4207378 (= e!2611889 tp!1286182)))

(declare-fun b!4207376 () Bool)

(assert (=> b!4207376 (= e!2611889 tp_is_empty!22253)))

(assert (= (and b!4206964 ((_ is ElementMatch!12643) (regex!7738 rBis!178))) b!4207376))

(assert (= (and b!4206964 ((_ is Concat!20612) (regex!7738 rBis!178))) b!4207377))

(assert (= (and b!4206964 ((_ is Star!12643) (regex!7738 rBis!178))) b!4207378))

(assert (= (and b!4206964 ((_ is Union!12643) (regex!7738 rBis!178))) b!4207379))

(declare-fun b!4207380 () Bool)

(declare-fun e!2611890 () Bool)

(declare-fun tp!1286184 () Bool)

(assert (=> b!4207380 (= e!2611890 (and tp_is_empty!22253 tp!1286184))))

(assert (=> b!4206966 (= tp!1286061 e!2611890)))

(assert (= (and b!4206966 ((_ is Cons!46257) (originalCharacters!8120 t!8364))) b!4207380))

(declare-fun b_lambda!123889 () Bool)

(assert (= b_lambda!123873 (or (and b!4207363 b_free!123057 (= (toChars!10309 (transformation!7738 (h!51679 (t!347514 rules!3967)))) (toChars!10309 (transformation!7738 (rule!10844 t!8364))))) (and b!4206980 b_free!123045 (= (toChars!10309 (transformation!7738 rBis!178)) (toChars!10309 (transformation!7738 (rule!10844 t!8364))))) (and b!4206971 b_free!123037 (= (toChars!10309 (transformation!7738 (rule!10844 tBis!41))) (toChars!10309 (transformation!7738 (rule!10844 t!8364))))) (and b!4206981 b_free!123049 (= (toChars!10309 (transformation!7738 (h!51679 rules!3967))) (toChars!10309 (transformation!7738 (rule!10844 t!8364))))) (and b!4206955 b_free!123041) b_lambda!123889)))

(declare-fun b_lambda!123891 () Bool)

(assert (= b_lambda!123887 (or (and b!4206980 b_free!123045 (= (toChars!10309 (transformation!7738 rBis!178)) (toChars!10309 (transformation!7738 (rule!10844 tBis!41))))) (and b!4206955 b_free!123041 (= (toChars!10309 (transformation!7738 (rule!10844 t!8364))) (toChars!10309 (transformation!7738 (rule!10844 tBis!41))))) (and b!4207363 b_free!123057 (= (toChars!10309 (transformation!7738 (h!51679 (t!347514 rules!3967)))) (toChars!10309 (transformation!7738 (rule!10844 tBis!41))))) (and b!4206971 b_free!123037) (and b!4206981 b_free!123049 (= (toChars!10309 (transformation!7738 (h!51679 rules!3967))) (toChars!10309 (transformation!7738 (rule!10844 tBis!41))))) b_lambda!123891)))

(declare-fun b_lambda!123893 () Bool)

(assert (= b_lambda!123871 (or (and b!4206980 b_free!123045 (= (toChars!10309 (transformation!7738 rBis!178)) (toChars!10309 (transformation!7738 (rule!10844 tBis!41))))) (and b!4206955 b_free!123041 (= (toChars!10309 (transformation!7738 (rule!10844 t!8364))) (toChars!10309 (transformation!7738 (rule!10844 tBis!41))))) (and b!4207363 b_free!123057 (= (toChars!10309 (transformation!7738 (h!51679 (t!347514 rules!3967)))) (toChars!10309 (transformation!7738 (rule!10844 tBis!41))))) (and b!4206971 b_free!123037) (and b!4206981 b_free!123049 (= (toChars!10309 (transformation!7738 (h!51679 rules!3967))) (toChars!10309 (transformation!7738 (rule!10844 tBis!41))))) b_lambda!123893)))

(check-sat (not d!1240033) (not b!4207296) b_and!330737 (not b_lambda!123891) (not b_next!123747) (not b!4207378) (not b!4206997) (not b!4207031) (not b!4207044) (not b!4207367) (not b!4206996) (not b!4206995) (not b!4207017) (not b!4207100) (not b_next!123743) (not b!4207015) (not b!4207352) (not b!4207366) b_and!330733 (not d!1239975) (not b!4207126) (not b!4207096) (not b!4207316) (not d!1239965) (not b!4207344) (not d!1240041) (not b!4207319) (not b!4207325) tp_is_empty!22253 (not b!4207293) (not b!4207106) (not b!4207317) (not b_next!123745) b_and!330787 (not b!4207043) (not b!4207297) (not b!4207379) (not b!4207098) (not b!4207361) (not b!4207373) (not b!4207016) (not d!1240045) (not b_next!123759) (not b!4207101) (not d!1240029) (not b!4207371) (not d!1240035) (not b!4207351) (not b!4207032) (not b_next!123751) (not b!4207310) (not bm!292782) (not d!1239949) (not b!4207345) (not d!1240047) b_and!330793 (not b!4207300) (not b!4207128) (not b!4207377) (not d!1239963) (not b!4207321) (not b!4207294) (not b_next!123761) b_and!330789 (not b_next!123749) (not b!4207374) (not d!1240037) (not b_next!123753) (not tb!252343) (not b!4207302) (not b!4207042) (not b!4207320) (not d!1239959) b_and!330729 (not b!4207369) (not b_lambda!123889) (not b!4207041) (not b!4207324) (not b!4207105) b_and!330725 (not b!4207299) (not b_next!123741) (not b!4207000) (not d!1239979) (not tb!252335) (not b!4207099) (not b!4207346) (not d!1239981) (not b!4207097) b_and!330791 (not b!4207362) (not b!4207375) (not b!4207298) (not b!4207331) (not d!1239943) (not d!1239985) (not b!4207303) (not b!4207103) (not b!4207368) (not b!4207117) (not b!4207372) (not b_lambda!123893) (not b!4207292) (not b!4207127) (not b!4207304) (not b!4207116) (not b!4207380) (not b_next!123739) b_and!330795 b_and!330785 (not b!4206985) (not b!4207365) (not b!4207104))
(check-sat (not b_next!123747) (not b_next!123743) b_and!330733 (not b_next!123759) (not b_next!123751) b_and!330793 (not b_next!123761) b_and!330737 (not b_next!123753) b_and!330729 b_and!330725 (not b_next!123741) b_and!330791 (not b_next!123745) b_and!330787 b_and!330789 (not b_next!123749) (not b_next!123739) b_and!330795 b_and!330785)
