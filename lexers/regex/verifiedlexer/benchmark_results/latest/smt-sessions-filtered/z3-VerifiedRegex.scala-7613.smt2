; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!402010 () Bool)

(assert start!402010)

(declare-fun b!4207533 () Bool)

(declare-fun b_free!123075 () Bool)

(declare-fun b_next!123779 () Bool)

(assert (=> b!4207533 (= b_free!123075 (not b_next!123779))))

(declare-fun tp!1286304 () Bool)

(declare-fun b_and!330813 () Bool)

(assert (=> b!4207533 (= tp!1286304 b_and!330813)))

(declare-fun b_free!123077 () Bool)

(declare-fun b_next!123781 () Bool)

(assert (=> b!4207533 (= b_free!123077 (not b_next!123781))))

(declare-fun tp!1286287 () Bool)

(declare-fun b_and!330815 () Bool)

(assert (=> b!4207533 (= tp!1286287 b_and!330815)))

(declare-fun b!4207548 () Bool)

(declare-fun b_free!123079 () Bool)

(declare-fun b_next!123783 () Bool)

(assert (=> b!4207548 (= b_free!123079 (not b_next!123783))))

(declare-fun tp!1286298 () Bool)

(declare-fun b_and!330817 () Bool)

(assert (=> b!4207548 (= tp!1286298 b_and!330817)))

(declare-fun b_free!123081 () Bool)

(declare-fun b_next!123785 () Bool)

(assert (=> b!4207548 (= b_free!123081 (not b_next!123785))))

(declare-fun tp!1286289 () Bool)

(declare-fun b_and!330819 () Bool)

(assert (=> b!4207548 (= tp!1286289 b_and!330819)))

(declare-fun b!4207551 () Bool)

(declare-fun b_free!123083 () Bool)

(declare-fun b_next!123787 () Bool)

(assert (=> b!4207551 (= b_free!123083 (not b_next!123787))))

(declare-fun tp!1286299 () Bool)

(declare-fun b_and!330821 () Bool)

(assert (=> b!4207551 (= tp!1286299 b_and!330821)))

(declare-fun b_free!123085 () Bool)

(declare-fun b_next!123789 () Bool)

(assert (=> b!4207551 (= b_free!123085 (not b_next!123789))))

(declare-fun tp!1286293 () Bool)

(declare-fun b_and!330823 () Bool)

(assert (=> b!4207551 (= tp!1286293 b_and!330823)))

(declare-fun b!4207553 () Bool)

(declare-fun b_free!123087 () Bool)

(declare-fun b_next!123791 () Bool)

(assert (=> b!4207553 (= b_free!123087 (not b_next!123791))))

(declare-fun tp!1286292 () Bool)

(declare-fun b_and!330825 () Bool)

(assert (=> b!4207553 (= tp!1286292 b_and!330825)))

(declare-fun b_free!123089 () Bool)

(declare-fun b_next!123793 () Bool)

(assert (=> b!4207553 (= b_free!123089 (not b_next!123793))))

(declare-fun tp!1286288 () Bool)

(declare-fun b_and!330827 () Bool)

(assert (=> b!4207553 (= tp!1286288 b_and!330827)))

(declare-fun b!4207531 () Bool)

(declare-fun e!2612026 () Bool)

(declare-fun e!2612022 () Bool)

(declare-datatypes ((List!46389 0))(
  ( (Nil!46265) (Cons!46265 (h!51685 (_ BitVec 16)) (t!347560 List!46389)) )
))
(declare-datatypes ((TokenValue!7970 0))(
  ( (FloatLiteralValue!15940 (text!56235 List!46389)) (TokenValueExt!7969 (__x!28163 Int)) (Broken!39850 (value!241093 List!46389)) (Object!8093) (End!7970) (Def!7970) (Underscore!7970) (Match!7970) (Else!7970) (Error!7970) (Case!7970) (If!7970) (Extends!7970) (Abstract!7970) (Class!7970) (Val!7970) (DelimiterValue!15940 (del!8030 List!46389)) (KeywordValue!7976 (value!241094 List!46389)) (CommentValue!15940 (value!241095 List!46389)) (WhitespaceValue!15940 (value!241096 List!46389)) (IndentationValue!7970 (value!241097 List!46389)) (String!53719) (Int32!7970) (Broken!39851 (value!241098 List!46389)) (Boolean!7971) (Unit!65380) (OperatorValue!7973 (op!8030 List!46389)) (IdentifierValue!15940 (value!241099 List!46389)) (IdentifierValue!15941 (value!241100 List!46389)) (WhitespaceValue!15941 (value!241101 List!46389)) (True!15940) (False!15940) (Broken!39852 (value!241102 List!46389)) (Broken!39853 (value!241103 List!46389)) (True!15941) (RightBrace!7970) (RightBracket!7970) (Colon!7970) (Null!7970) (Comma!7970) (LeftBracket!7970) (False!15941) (LeftBrace!7970) (ImaginaryLiteralValue!7970 (text!56236 List!46389)) (StringLiteralValue!23910 (value!241104 List!46389)) (EOFValue!7970 (value!241105 List!46389)) (IdentValue!7970 (value!241106 List!46389)) (DelimiterValue!15941 (value!241107 List!46389)) (DedentValue!7970 (value!241108 List!46389)) (NewLineValue!7970 (value!241109 List!46389)) (IntegerValue!23910 (value!241110 (_ BitVec 32)) (text!56237 List!46389)) (IntegerValue!23911 (value!241111 Int) (text!56238 List!46389)) (Times!7970) (Or!7970) (Equal!7970) (Minus!7970) (Broken!39854 (value!241112 List!46389)) (And!7970) (Div!7970) (LessEqual!7970) (Mod!7970) (Concat!20615) (Not!7970) (Plus!7970) (SpaceValue!7970 (value!241113 List!46389)) (IntegerValue!23912 (value!241114 Int) (text!56239 List!46389)) (StringLiteralValue!23911 (text!56240 List!46389)) (FloatLiteralValue!15941 (text!56241 List!46389)) (BytesLiteralValue!7970 (value!241115 List!46389)) (CommentValue!15941 (value!241116 List!46389)) (StringLiteralValue!23912 (value!241117 List!46389)) (ErrorTokenValue!7970 (msg!8031 List!46389)) )
))
(declare-datatypes ((C!25484 0))(
  ( (C!25485 (val!14904 Int)) )
))
(declare-datatypes ((List!46390 0))(
  ( (Nil!46266) (Cons!46266 (h!51686 C!25484) (t!347561 List!46390)) )
))
(declare-datatypes ((IArray!27907 0))(
  ( (IArray!27908 (innerList!14011 List!46390)) )
))
(declare-datatypes ((Regex!12645 0))(
  ( (ElementMatch!12645 (c!716928 C!25484)) (Concat!20616 (regOne!25802 Regex!12645) (regTwo!25802 Regex!12645)) (EmptyExpr!12645) (Star!12645 (reg!12974 Regex!12645)) (EmptyLang!12645) (Union!12645 (regOne!25803 Regex!12645) (regTwo!25803 Regex!12645)) )
))
(declare-datatypes ((Conc!13951 0))(
  ( (Node!13951 (left!34444 Conc!13951) (right!34774 Conc!13951) (csize!28132 Int) (cheight!14162 Int)) (Leaf!21565 (xs!17257 IArray!27907) (csize!28133 Int)) (Empty!13951) )
))
(declare-datatypes ((BalanceConc!27496 0))(
  ( (BalanceConc!27497 (c!716929 Conc!13951)) )
))
(declare-datatypes ((String!53720 0))(
  ( (String!53721 (value!241118 String)) )
))
(declare-datatypes ((TokenValueInjection!15368 0))(
  ( (TokenValueInjection!15369 (toValue!10452 Int) (toChars!10311 Int)) )
))
(declare-datatypes ((Rule!15280 0))(
  ( (Rule!15281 (regex!7740 Regex!12645) (tag!8604 String!53720) (isSeparator!7740 Bool) (transformation!7740 TokenValueInjection!15368)) )
))
(declare-datatypes ((Token!14182 0))(
  ( (Token!14183 (value!241119 TokenValue!7970) (rule!10848 Rule!15280) (size!33984 Int) (originalCharacters!8122 List!46390)) )
))
(declare-fun t!8364 () Token!14182)

(declare-fun tp!1286294 () Bool)

(declare-fun inv!60857 (String!53720) Bool)

(declare-fun inv!60860 (TokenValueInjection!15368) Bool)

(assert (=> b!4207531 (= e!2612026 (and tp!1286294 (inv!60857 (tag!8604 (rule!10848 t!8364))) (inv!60860 (transformation!7740 (rule!10848 t!8364))) e!2612022))))

(declare-fun b!4207532 () Bool)

(declare-fun e!2612024 () Bool)

(declare-fun tp!1286302 () Bool)

(declare-fun inv!21 (TokenValue!7970) Bool)

(assert (=> b!4207532 (= e!2612024 (and (inv!21 (value!241119 t!8364)) e!2612026 tp!1286302))))

(declare-fun res!1728325 () Bool)

(declare-fun e!2612028 () Bool)

(assert (=> start!402010 (=> (not res!1728325) (not e!2612028))))

(declare-datatypes ((LexerInterface!7335 0))(
  ( (LexerInterfaceExt!7332 (__x!28164 Int)) (Lexer!7333) )
))
(declare-fun thiss!26544 () LexerInterface!7335)

(get-info :version)

(assert (=> start!402010 (= res!1728325 ((_ is Lexer!7333) thiss!26544))))

(assert (=> start!402010 e!2612028))

(declare-fun tBis!41 () Token!14182)

(declare-fun e!2612034 () Bool)

(declare-fun inv!60861 (Token!14182) Bool)

(assert (=> start!402010 (and (inv!60861 tBis!41) e!2612034)))

(assert (=> start!402010 true))

(declare-fun e!2612030 () Bool)

(assert (=> start!402010 e!2612030))

(declare-fun e!2612023 () Bool)

(assert (=> start!402010 e!2612023))

(declare-fun e!2612032 () Bool)

(assert (=> start!402010 e!2612032))

(declare-fun e!2612025 () Bool)

(assert (=> start!402010 e!2612025))

(assert (=> start!402010 (and (inv!60861 t!8364) e!2612024)))

(declare-fun e!2612029 () Bool)

(assert (=> start!402010 e!2612029))

(declare-fun e!2612015 () Bool)

(assert (=> start!402010 e!2612015))

(declare-fun e!2612019 () Bool)

(assert (=> start!402010 e!2612019))

(declare-fun e!2612014 () Bool)

(assert (=> b!4207533 (= e!2612014 (and tp!1286304 tp!1286287))))

(declare-fun b!4207534 () Bool)

(declare-fun tp_is_empty!22257 () Bool)

(declare-fun tp!1286295 () Bool)

(assert (=> b!4207534 (= e!2612015 (and tp_is_empty!22257 tp!1286295))))

(declare-fun b!4207535 () Bool)

(declare-fun e!2612027 () Bool)

(declare-fun pBis!121 () List!46390)

(declare-fun p!3001 () List!46390)

(declare-fun size!33985 (List!46390) Int)

(assert (=> b!4207535 (= e!2612027 (<= (size!33985 pBis!121) (size!33985 p!3001)))))

(declare-fun e!2612013 () Bool)

(declare-fun b!4207536 () Bool)

(declare-fun tp!1286285 () Bool)

(assert (=> b!4207536 (= e!2612013 (and tp!1286285 (inv!60857 (tag!8604 (rule!10848 tBis!41))) (inv!60860 (transformation!7740 (rule!10848 tBis!41))) e!2612014))))

(declare-fun b!4207537 () Bool)

(declare-fun res!1728327 () Bool)

(assert (=> b!4207537 (=> (not res!1728327) (not e!2612028))))

(declare-datatypes ((List!46391 0))(
  ( (Nil!46267) (Cons!46267 (h!51687 Rule!15280) (t!347562 List!46391)) )
))
(declare-fun rules!3967 () List!46391)

(declare-fun rulesInvariant!6546 (LexerInterface!7335 List!46391) Bool)

(assert (=> b!4207537 (= res!1728327 (rulesInvariant!6546 thiss!26544 rules!3967))))

(declare-fun b!4207538 () Bool)

(declare-fun tp!1286286 () Bool)

(assert (=> b!4207538 (= e!2612029 (and tp_is_empty!22257 tp!1286286))))

(declare-fun b!4207539 () Bool)

(declare-fun e!2612017 () Bool)

(declare-fun tp!1286303 () Bool)

(assert (=> b!4207539 (= e!2612032 (and e!2612017 tp!1286303))))

(declare-fun b!4207540 () Bool)

(declare-fun res!1728334 () Bool)

(assert (=> b!4207540 (=> res!1728334 e!2612027)))

(assert (=> b!4207540 (= res!1728334 (or (not ((_ is Cons!46267) rules!3967)) (not ((_ is Nil!46267) (t!347562 rules!3967)))))))

(declare-fun b!4207541 () Bool)

(declare-fun res!1728331 () Bool)

(assert (=> b!4207541 (=> res!1728331 e!2612027)))

(declare-fun list!16723 (BalanceConc!27496) List!46390)

(declare-fun charsOf!5163 (Token!14182) BalanceConc!27496)

(assert (=> b!4207541 (= res!1728331 (not (= (list!16723 (charsOf!5163 tBis!41)) pBis!121)))))

(declare-fun rBis!178 () Rule!15280)

(declare-fun e!2612011 () Bool)

(declare-fun b!4207542 () Bool)

(declare-fun tp!1286301 () Bool)

(assert (=> b!4207542 (= e!2612030 (and tp!1286301 (inv!60857 (tag!8604 rBis!178)) (inv!60860 (transformation!7740 rBis!178)) e!2612011))))

(declare-fun b!4207543 () Bool)

(declare-fun tp!1286291 () Bool)

(assert (=> b!4207543 (= e!2612023 (and tp_is_empty!22257 tp!1286291))))

(declare-fun b!4207544 () Bool)

(declare-fun tp!1286297 () Bool)

(declare-fun e!2612018 () Bool)

(assert (=> b!4207544 (= e!2612017 (and tp!1286297 (inv!60857 (tag!8604 (h!51687 rules!3967))) (inv!60860 (transformation!7740 (h!51687 rules!3967))) e!2612018))))

(declare-fun b!4207545 () Bool)

(declare-fun res!1728333 () Bool)

(assert (=> b!4207545 (=> (not res!1728333) (not e!2612028))))

(declare-fun input!3517 () List!46390)

(declare-fun isPrefix!4599 (List!46390 List!46390) Bool)

(assert (=> b!4207545 (= res!1728333 (isPrefix!4599 pBis!121 input!3517))))

(declare-fun b!4207546 () Bool)

(declare-fun tp!1286300 () Bool)

(assert (=> b!4207546 (= e!2612019 (and tp_is_empty!22257 tp!1286300))))

(declare-fun b!4207547 () Bool)

(declare-fun res!1728337 () Bool)

(assert (=> b!4207547 (=> (not res!1728337) (not e!2612028))))

(declare-fun contains!9557 (List!46391 Rule!15280) Bool)

(assert (=> b!4207547 (= res!1728337 (contains!9557 rules!3967 rBis!178))))

(assert (=> b!4207548 (= e!2612022 (and tp!1286298 tp!1286289))))

(declare-fun b!4207549 () Bool)

(declare-fun res!1728336 () Bool)

(assert (=> b!4207549 (=> res!1728336 e!2612027)))

(declare-fun suffixBis!41 () List!46390)

(declare-fun ++!11814 (List!46390 List!46390) List!46390)

(assert (=> b!4207549 (= res!1728336 (not (= (++!11814 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4207550 () Bool)

(assert (=> b!4207550 (= e!2612028 (not e!2612027))))

(declare-fun res!1728328 () Bool)

(assert (=> b!4207550 (=> res!1728328 e!2612027)))

(declare-datatypes ((tuple2!44010 0))(
  ( (tuple2!44011 (_1!25139 Token!14182) (_2!25139 List!46390)) )
))
(declare-datatypes ((Option!9928 0))(
  ( (None!9927) (Some!9927 (v!40791 tuple2!44010)) )
))
(declare-fun maxPrefixOneRule!3330 (LexerInterface!7335 Rule!15280 List!46390) Option!9928)

(assert (=> b!4207550 (= res!1728328 (not (= (maxPrefixOneRule!3330 thiss!26544 rBis!178 input!3517) (Some!9927 (tuple2!44011 tBis!41 suffixBis!41)))))))

(assert (=> b!4207550 (isPrefix!4599 input!3517 input!3517)))

(declare-datatypes ((Unit!65381 0))(
  ( (Unit!65382) )
))
(declare-fun lt!1498092 () Unit!65381)

(declare-fun lemmaIsPrefixRefl!3016 (List!46390 List!46390) Unit!65381)

(assert (=> b!4207550 (= lt!1498092 (lemmaIsPrefixRefl!3016 input!3517 input!3517))))

(assert (=> b!4207551 (= e!2612018 (and tp!1286299 tp!1286293))))

(declare-fun b!4207552 () Bool)

(declare-fun res!1728330 () Bool)

(assert (=> b!4207552 (=> res!1728330 e!2612027)))

(assert (=> b!4207552 (= res!1728330 (not (= (rule!10848 tBis!41) rBis!178)))))

(assert (=> b!4207553 (= e!2612011 (and tp!1286292 tp!1286288))))

(declare-fun b!4207554 () Bool)

(declare-fun res!1728326 () Bool)

(assert (=> b!4207554 (=> (not res!1728326) (not e!2612028))))

(assert (=> b!4207554 (= res!1728326 (isPrefix!4599 p!3001 input!3517))))

(declare-fun b!4207555 () Bool)

(declare-fun res!1728324 () Bool)

(assert (=> b!4207555 (=> (not res!1728324) (not e!2612028))))

(declare-fun ruleValid!3452 (LexerInterface!7335 Rule!15280) Bool)

(assert (=> b!4207555 (= res!1728324 (ruleValid!3452 thiss!26544 rBis!178))))

(declare-fun b!4207556 () Bool)

(declare-fun res!1728332 () Bool)

(assert (=> b!4207556 (=> (not res!1728332) (not e!2612028))))

(declare-fun isEmpty!27395 (List!46391) Bool)

(assert (=> b!4207556 (= res!1728332 (not (isEmpty!27395 rules!3967)))))

(declare-fun b!4207557 () Bool)

(declare-fun tp!1286296 () Bool)

(assert (=> b!4207557 (= e!2612025 (and tp_is_empty!22257 tp!1286296))))

(declare-fun tp!1286290 () Bool)

(declare-fun b!4207558 () Bool)

(assert (=> b!4207558 (= e!2612034 (and (inv!21 (value!241119 tBis!41)) e!2612013 tp!1286290))))

(declare-fun b!4207559 () Bool)

(declare-fun res!1728335 () Bool)

(assert (=> b!4207559 (=> (not res!1728335) (not e!2612028))))

(declare-fun suffix!1557 () List!46390)

(declare-fun maxPrefix!4375 (LexerInterface!7335 List!46391 List!46390) Option!9928)

(assert (=> b!4207559 (= res!1728335 (= (maxPrefix!4375 thiss!26544 rules!3967 input!3517) (Some!9927 (tuple2!44011 t!8364 suffix!1557))))))

(declare-fun b!4207560 () Bool)

(declare-fun res!1728329 () Bool)

(assert (=> b!4207560 (=> (not res!1728329) (not e!2612028))))

(assert (=> b!4207560 (= res!1728329 (= (++!11814 p!3001 suffix!1557) input!3517))))

(assert (= (and start!402010 res!1728325) b!4207560))

(assert (= (and b!4207560 res!1728329) b!4207554))

(assert (= (and b!4207554 res!1728326) b!4207545))

(assert (= (and b!4207545 res!1728333) b!4207556))

(assert (= (and b!4207556 res!1728332) b!4207537))

(assert (= (and b!4207537 res!1728327) b!4207547))

(assert (= (and b!4207547 res!1728337) b!4207559))

(assert (= (and b!4207559 res!1728335) b!4207555))

(assert (= (and b!4207555 res!1728324) b!4207550))

(assert (= (and b!4207550 (not res!1728328)) b!4207552))

(assert (= (and b!4207552 (not res!1728330)) b!4207541))

(assert (= (and b!4207541 (not res!1728331)) b!4207549))

(assert (= (and b!4207549 (not res!1728336)) b!4207540))

(assert (= (and b!4207540 (not res!1728334)) b!4207535))

(assert (= b!4207536 b!4207533))

(assert (= b!4207558 b!4207536))

(assert (= start!402010 b!4207558))

(assert (= b!4207542 b!4207553))

(assert (= start!402010 b!4207542))

(assert (= (and start!402010 ((_ is Cons!46266) p!3001)) b!4207543))

(assert (= b!4207544 b!4207551))

(assert (= b!4207539 b!4207544))

(assert (= (and start!402010 ((_ is Cons!46267) rules!3967)) b!4207539))

(assert (= (and start!402010 ((_ is Cons!46266) input!3517)) b!4207557))

(assert (= b!4207531 b!4207548))

(assert (= b!4207532 b!4207531))

(assert (= start!402010 b!4207532))

(assert (= (and start!402010 ((_ is Cons!46266) pBis!121)) b!4207538))

(assert (= (and start!402010 ((_ is Cons!46266) suffix!1557)) b!4207534))

(assert (= (and start!402010 ((_ is Cons!46266) suffixBis!41)) b!4207546))

(declare-fun m!4795507 () Bool)

(assert (=> b!4207542 m!4795507))

(declare-fun m!4795509 () Bool)

(assert (=> b!4207542 m!4795509))

(declare-fun m!4795511 () Bool)

(assert (=> b!4207536 m!4795511))

(declare-fun m!4795513 () Bool)

(assert (=> b!4207536 m!4795513))

(declare-fun m!4795515 () Bool)

(assert (=> b!4207531 m!4795515))

(declare-fun m!4795517 () Bool)

(assert (=> b!4207531 m!4795517))

(declare-fun m!4795519 () Bool)

(assert (=> b!4207549 m!4795519))

(declare-fun m!4795521 () Bool)

(assert (=> b!4207560 m!4795521))

(declare-fun m!4795523 () Bool)

(assert (=> b!4207535 m!4795523))

(declare-fun m!4795525 () Bool)

(assert (=> b!4207535 m!4795525))

(declare-fun m!4795527 () Bool)

(assert (=> b!4207532 m!4795527))

(declare-fun m!4795529 () Bool)

(assert (=> b!4207541 m!4795529))

(assert (=> b!4207541 m!4795529))

(declare-fun m!4795531 () Bool)

(assert (=> b!4207541 m!4795531))

(declare-fun m!4795533 () Bool)

(assert (=> b!4207550 m!4795533))

(declare-fun m!4795535 () Bool)

(assert (=> b!4207550 m!4795535))

(declare-fun m!4795537 () Bool)

(assert (=> b!4207550 m!4795537))

(declare-fun m!4795539 () Bool)

(assert (=> b!4207559 m!4795539))

(declare-fun m!4795541 () Bool)

(assert (=> start!402010 m!4795541))

(declare-fun m!4795543 () Bool)

(assert (=> start!402010 m!4795543))

(declare-fun m!4795545 () Bool)

(assert (=> b!4207554 m!4795545))

(declare-fun m!4795547 () Bool)

(assert (=> b!4207544 m!4795547))

(declare-fun m!4795549 () Bool)

(assert (=> b!4207544 m!4795549))

(declare-fun m!4795551 () Bool)

(assert (=> b!4207547 m!4795551))

(declare-fun m!4795553 () Bool)

(assert (=> b!4207545 m!4795553))

(declare-fun m!4795555 () Bool)

(assert (=> b!4207537 m!4795555))

(declare-fun m!4795557 () Bool)

(assert (=> b!4207558 m!4795557))

(declare-fun m!4795559 () Bool)

(assert (=> b!4207555 m!4795559))

(declare-fun m!4795561 () Bool)

(assert (=> b!4207556 m!4795561))

(check-sat (not b!4207542) b_and!330825 (not b!4207531) (not b_next!123787) (not b_next!123791) (not b!4207557) (not b!4207543) (not b!4207536) (not b_next!123789) (not b!4207550) (not b!4207539) (not b_next!123793) (not b!4207547) b_and!330815 (not b!4207546) (not b!4207555) (not b!4207554) (not b!4207545) (not start!402010) b_and!330813 (not b!4207544) (not b_next!123783) b_and!330827 (not b!4207549) (not b!4207538) b_and!330821 (not b_next!123785) (not b!4207534) (not b!4207558) tp_is_empty!22257 (not b_next!123781) (not b!4207560) (not b_next!123779) (not b!4207541) (not b!4207559) (not b!4207532) (not b!4207556) b_and!330817 (not b!4207535) b_and!330819 (not b!4207537) b_and!330823)
(check-sat b_and!330825 (not b_next!123787) (not b_next!123791) b_and!330813 b_and!330821 (not b_next!123785) (not b_next!123781) (not b_next!123789) (not b_next!123779) (not b_next!123793) b_and!330823 b_and!330815 (not b_next!123783) b_and!330827 b_and!330817 b_and!330819)
(get-model)

(declare-fun b!4207588 () Bool)

(declare-fun e!2612055 () List!46390)

(assert (=> b!4207588 (= e!2612055 (Cons!46266 (h!51686 pBis!121) (++!11814 (t!347561 pBis!121) suffixBis!41)))))

(declare-fun b!4207589 () Bool)

(declare-fun res!1728371 () Bool)

(declare-fun e!2612054 () Bool)

(assert (=> b!4207589 (=> (not res!1728371) (not e!2612054))))

(declare-fun lt!1498098 () List!46390)

(assert (=> b!4207589 (= res!1728371 (= (size!33985 lt!1498098) (+ (size!33985 pBis!121) (size!33985 suffixBis!41))))))

(declare-fun b!4207590 () Bool)

(assert (=> b!4207590 (= e!2612054 (or (not (= suffixBis!41 Nil!46266)) (= lt!1498098 pBis!121)))))

(declare-fun d!1240052 () Bool)

(assert (=> d!1240052 e!2612054))

(declare-fun res!1728370 () Bool)

(assert (=> d!1240052 (=> (not res!1728370) (not e!2612054))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7235 (List!46390) (InoxSet C!25484))

(assert (=> d!1240052 (= res!1728370 (= (content!7235 lt!1498098) ((_ map or) (content!7235 pBis!121) (content!7235 suffixBis!41))))))

(assert (=> d!1240052 (= lt!1498098 e!2612055)))

(declare-fun c!716932 () Bool)

(assert (=> d!1240052 (= c!716932 ((_ is Nil!46266) pBis!121))))

(assert (=> d!1240052 (= (++!11814 pBis!121 suffixBis!41) lt!1498098)))

(declare-fun b!4207587 () Bool)

(assert (=> b!4207587 (= e!2612055 suffixBis!41)))

(assert (= (and d!1240052 c!716932) b!4207587))

(assert (= (and d!1240052 (not c!716932)) b!4207588))

(assert (= (and d!1240052 res!1728370) b!4207589))

(assert (= (and b!4207589 res!1728371) b!4207590))

(declare-fun m!4795583 () Bool)

(assert (=> b!4207588 m!4795583))

(declare-fun m!4795585 () Bool)

(assert (=> b!4207589 m!4795585))

(assert (=> b!4207589 m!4795523))

(declare-fun m!4795587 () Bool)

(assert (=> b!4207589 m!4795587))

(declare-fun m!4795589 () Bool)

(assert (=> d!1240052 m!4795589))

(declare-fun m!4795591 () Bool)

(assert (=> d!1240052 m!4795591))

(declare-fun m!4795593 () Bool)

(assert (=> d!1240052 m!4795593))

(assert (=> b!4207549 d!1240052))

(declare-fun d!1240062 () Bool)

(declare-fun e!2612090 () Bool)

(assert (=> d!1240062 e!2612090))

(declare-fun res!1728400 () Bool)

(assert (=> d!1240062 (=> res!1728400 e!2612090)))

(declare-fun lt!1498120 () Option!9928)

(declare-fun isEmpty!27398 (Option!9928) Bool)

(assert (=> d!1240062 (= res!1728400 (isEmpty!27398 lt!1498120))))

(declare-fun e!2612088 () Option!9928)

(assert (=> d!1240062 (= lt!1498120 e!2612088)))

(declare-fun c!716945 () Bool)

(assert (=> d!1240062 (= c!716945 (and ((_ is Cons!46267) rules!3967) ((_ is Nil!46267) (t!347562 rules!3967))))))

(declare-fun lt!1498122 () Unit!65381)

(declare-fun lt!1498121 () Unit!65381)

(assert (=> d!1240062 (= lt!1498122 lt!1498121)))

(assert (=> d!1240062 (isPrefix!4599 input!3517 input!3517)))

(assert (=> d!1240062 (= lt!1498121 (lemmaIsPrefixRefl!3016 input!3517 input!3517))))

(declare-fun rulesValidInductive!2870 (LexerInterface!7335 List!46391) Bool)

(assert (=> d!1240062 (rulesValidInductive!2870 thiss!26544 rules!3967)))

(assert (=> d!1240062 (= (maxPrefix!4375 thiss!26544 rules!3967 input!3517) lt!1498120)))

(declare-fun b!4207648 () Bool)

(declare-fun res!1728406 () Bool)

(declare-fun e!2612089 () Bool)

(assert (=> b!4207648 (=> (not res!1728406) (not e!2612089))))

(declare-fun get!15048 (Option!9928) tuple2!44010)

(declare-fun apply!10679 (TokenValueInjection!15368 BalanceConc!27496) TokenValue!7970)

(declare-fun seqFromList!5739 (List!46390) BalanceConc!27496)

(assert (=> b!4207648 (= res!1728406 (= (value!241119 (_1!25139 (get!15048 lt!1498120))) (apply!10679 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))) (seqFromList!5739 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498120)))))))))

(declare-fun b!4207649 () Bool)

(declare-fun res!1728401 () Bool)

(assert (=> b!4207649 (=> (not res!1728401) (not e!2612089))))

(declare-fun matchR!6358 (Regex!12645 List!46390) Bool)

(assert (=> b!4207649 (= res!1728401 (matchR!6358 (regex!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))) (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120))))))))

(declare-fun b!4207650 () Bool)

(declare-fun res!1728403 () Bool)

(assert (=> b!4207650 (=> (not res!1728403) (not e!2612089))))

(assert (=> b!4207650 (= res!1728403 (= (++!11814 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120)))) (_2!25139 (get!15048 lt!1498120))) input!3517))))

(declare-fun b!4207651 () Bool)

(assert (=> b!4207651 (= e!2612090 e!2612089)))

(declare-fun res!1728405 () Bool)

(assert (=> b!4207651 (=> (not res!1728405) (not e!2612089))))

(declare-fun isDefined!7380 (Option!9928) Bool)

(assert (=> b!4207651 (= res!1728405 (isDefined!7380 lt!1498120))))

(declare-fun b!4207652 () Bool)

(declare-fun res!1728404 () Bool)

(assert (=> b!4207652 (=> (not res!1728404) (not e!2612089))))

(assert (=> b!4207652 (= res!1728404 (< (size!33985 (_2!25139 (get!15048 lt!1498120))) (size!33985 input!3517)))))

(declare-fun bm!292788 () Bool)

(declare-fun call!292793 () Option!9928)

(assert (=> bm!292788 (= call!292793 (maxPrefixOneRule!3330 thiss!26544 (h!51687 rules!3967) input!3517))))

(declare-fun b!4207653 () Bool)

(assert (=> b!4207653 (= e!2612088 call!292793)))

(declare-fun b!4207654 () Bool)

(assert (=> b!4207654 (= e!2612089 (contains!9557 rules!3967 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))))

(declare-fun b!4207655 () Bool)

(declare-fun lt!1498124 () Option!9928)

(declare-fun lt!1498123 () Option!9928)

(assert (=> b!4207655 (= e!2612088 (ite (and ((_ is None!9927) lt!1498124) ((_ is None!9927) lt!1498123)) None!9927 (ite ((_ is None!9927) lt!1498123) lt!1498124 (ite ((_ is None!9927) lt!1498124) lt!1498123 (ite (>= (size!33984 (_1!25139 (v!40791 lt!1498124))) (size!33984 (_1!25139 (v!40791 lt!1498123)))) lt!1498124 lt!1498123)))))))

(assert (=> b!4207655 (= lt!1498124 call!292793)))

(assert (=> b!4207655 (= lt!1498123 (maxPrefix!4375 thiss!26544 (t!347562 rules!3967) input!3517))))

(declare-fun b!4207656 () Bool)

(declare-fun res!1728402 () Bool)

(assert (=> b!4207656 (=> (not res!1728402) (not e!2612089))))

(assert (=> b!4207656 (= res!1728402 (= (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120)))) (originalCharacters!8122 (_1!25139 (get!15048 lt!1498120)))))))

(assert (= (and d!1240062 c!716945) b!4207653))

(assert (= (and d!1240062 (not c!716945)) b!4207655))

(assert (= (or b!4207653 b!4207655) bm!292788))

(assert (= (and d!1240062 (not res!1728400)) b!4207651))

(assert (= (and b!4207651 res!1728405) b!4207656))

(assert (= (and b!4207656 res!1728402) b!4207652))

(assert (= (and b!4207652 res!1728404) b!4207650))

(assert (= (and b!4207650 res!1728403) b!4207648))

(assert (= (and b!4207648 res!1728406) b!4207649))

(assert (= (and b!4207649 res!1728401) b!4207654))

(declare-fun m!4795631 () Bool)

(assert (=> b!4207650 m!4795631))

(declare-fun m!4795633 () Bool)

(assert (=> b!4207650 m!4795633))

(assert (=> b!4207650 m!4795633))

(declare-fun m!4795635 () Bool)

(assert (=> b!4207650 m!4795635))

(assert (=> b!4207650 m!4795635))

(declare-fun m!4795637 () Bool)

(assert (=> b!4207650 m!4795637))

(declare-fun m!4795639 () Bool)

(assert (=> b!4207651 m!4795639))

(assert (=> b!4207648 m!4795631))

(declare-fun m!4795641 () Bool)

(assert (=> b!4207648 m!4795641))

(assert (=> b!4207648 m!4795641))

(declare-fun m!4795643 () Bool)

(assert (=> b!4207648 m!4795643))

(declare-fun m!4795645 () Bool)

(assert (=> d!1240062 m!4795645))

(assert (=> d!1240062 m!4795535))

(assert (=> d!1240062 m!4795537))

(declare-fun m!4795647 () Bool)

(assert (=> d!1240062 m!4795647))

(assert (=> b!4207652 m!4795631))

(declare-fun m!4795649 () Bool)

(assert (=> b!4207652 m!4795649))

(declare-fun m!4795651 () Bool)

(assert (=> b!4207652 m!4795651))

(assert (=> b!4207656 m!4795631))

(assert (=> b!4207656 m!4795633))

(assert (=> b!4207656 m!4795633))

(assert (=> b!4207656 m!4795635))

(declare-fun m!4795653 () Bool)

(assert (=> b!4207655 m!4795653))

(assert (=> b!4207654 m!4795631))

(declare-fun m!4795655 () Bool)

(assert (=> b!4207654 m!4795655))

(declare-fun m!4795657 () Bool)

(assert (=> bm!292788 m!4795657))

(assert (=> b!4207649 m!4795631))

(assert (=> b!4207649 m!4795633))

(assert (=> b!4207649 m!4795633))

(assert (=> b!4207649 m!4795635))

(assert (=> b!4207649 m!4795635))

(declare-fun m!4795659 () Bool)

(assert (=> b!4207649 m!4795659))

(assert (=> b!4207559 d!1240062))

(declare-fun d!1240084 () Bool)

(declare-fun res!1728430 () Bool)

(declare-fun e!2612105 () Bool)

(assert (=> d!1240084 (=> (not res!1728430) (not e!2612105))))

(declare-fun rulesValid!3028 (LexerInterface!7335 List!46391) Bool)

(assert (=> d!1240084 (= res!1728430 (rulesValid!3028 thiss!26544 rules!3967))))

(assert (=> d!1240084 (= (rulesInvariant!6546 thiss!26544 rules!3967) e!2612105)))

(declare-fun b!4207686 () Bool)

(declare-datatypes ((List!46393 0))(
  ( (Nil!46269) (Cons!46269 (h!51689 String!53720) (t!347604 List!46393)) )
))
(declare-fun noDuplicateTag!3189 (LexerInterface!7335 List!46391 List!46393) Bool)

(assert (=> b!4207686 (= e!2612105 (noDuplicateTag!3189 thiss!26544 rules!3967 Nil!46269))))

(assert (= (and d!1240084 res!1728430) b!4207686))

(declare-fun m!4795665 () Bool)

(assert (=> d!1240084 m!4795665))

(declare-fun m!4795669 () Bool)

(assert (=> b!4207686 m!4795669))

(assert (=> b!4207537 d!1240084))

(declare-fun b!4207701 () Bool)

(declare-fun e!2612117 () Bool)

(declare-fun inv!17 (TokenValue!7970) Bool)

(assert (=> b!4207701 (= e!2612117 (inv!17 (value!241119 tBis!41)))))

(declare-fun b!4207702 () Bool)

(declare-fun res!1728437 () Bool)

(declare-fun e!2612116 () Bool)

(assert (=> b!4207702 (=> res!1728437 e!2612116)))

(assert (=> b!4207702 (= res!1728437 (not ((_ is IntegerValue!23912) (value!241119 tBis!41))))))

(assert (=> b!4207702 (= e!2612117 e!2612116)))

(declare-fun b!4207703 () Bool)

(declare-fun e!2612115 () Bool)

(declare-fun inv!16 (TokenValue!7970) Bool)

(assert (=> b!4207703 (= e!2612115 (inv!16 (value!241119 tBis!41)))))

(declare-fun b!4207704 () Bool)

(declare-fun inv!15 (TokenValue!7970) Bool)

(assert (=> b!4207704 (= e!2612116 (inv!15 (value!241119 tBis!41)))))

(declare-fun b!4207705 () Bool)

(assert (=> b!4207705 (= e!2612115 e!2612117)))

(declare-fun c!716953 () Bool)

(assert (=> b!4207705 (= c!716953 ((_ is IntegerValue!23911) (value!241119 tBis!41)))))

(declare-fun d!1240086 () Bool)

(declare-fun c!716954 () Bool)

(assert (=> d!1240086 (= c!716954 ((_ is IntegerValue!23910) (value!241119 tBis!41)))))

(assert (=> d!1240086 (= (inv!21 (value!241119 tBis!41)) e!2612115)))

(assert (= (and d!1240086 c!716954) b!4207703))

(assert (= (and d!1240086 (not c!716954)) b!4207705))

(assert (= (and b!4207705 c!716953) b!4207701))

(assert (= (and b!4207705 (not c!716953)) b!4207702))

(assert (= (and b!4207702 (not res!1728437)) b!4207704))

(declare-fun m!4795711 () Bool)

(assert (=> b!4207701 m!4795711))

(declare-fun m!4795713 () Bool)

(assert (=> b!4207703 m!4795713))

(declare-fun m!4795715 () Bool)

(assert (=> b!4207704 m!4795715))

(assert (=> b!4207558 d!1240086))

(declare-fun d!1240094 () Bool)

(declare-fun lt!1498146 () Bool)

(declare-fun content!7237 (List!46391) (InoxSet Rule!15280))

(assert (=> d!1240094 (= lt!1498146 (select (content!7237 rules!3967) rBis!178))))

(declare-fun e!2612123 () Bool)

(assert (=> d!1240094 (= lt!1498146 e!2612123)))

(declare-fun res!1728442 () Bool)

(assert (=> d!1240094 (=> (not res!1728442) (not e!2612123))))

(assert (=> d!1240094 (= res!1728442 ((_ is Cons!46267) rules!3967))))

(assert (=> d!1240094 (= (contains!9557 rules!3967 rBis!178) lt!1498146)))

(declare-fun b!4207710 () Bool)

(declare-fun e!2612122 () Bool)

(assert (=> b!4207710 (= e!2612123 e!2612122)))

(declare-fun res!1728443 () Bool)

(assert (=> b!4207710 (=> res!1728443 e!2612122)))

(assert (=> b!4207710 (= res!1728443 (= (h!51687 rules!3967) rBis!178))))

(declare-fun b!4207711 () Bool)

(assert (=> b!4207711 (= e!2612122 (contains!9557 (t!347562 rules!3967) rBis!178))))

(assert (= (and d!1240094 res!1728442) b!4207710))

(assert (= (and b!4207710 (not res!1728443)) b!4207711))

(declare-fun m!4795717 () Bool)

(assert (=> d!1240094 m!4795717))

(declare-fun m!4795719 () Bool)

(assert (=> d!1240094 m!4795719))

(declare-fun m!4795721 () Bool)

(assert (=> b!4207711 m!4795721))

(assert (=> b!4207547 d!1240094))

(declare-fun d!1240096 () Bool)

(assert (=> d!1240096 (= (inv!60857 (tag!8604 (rule!10848 tBis!41))) (= (mod (str.len (value!241118 (tag!8604 (rule!10848 tBis!41)))) 2) 0))))

(assert (=> b!4207536 d!1240096))

(declare-fun d!1240098 () Bool)

(declare-fun res!1728446 () Bool)

(declare-fun e!2612126 () Bool)

(assert (=> d!1240098 (=> (not res!1728446) (not e!2612126))))

(declare-fun semiInverseModEq!3360 (Int Int) Bool)

(assert (=> d!1240098 (= res!1728446 (semiInverseModEq!3360 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (toValue!10452 (transformation!7740 (rule!10848 tBis!41)))))))

(assert (=> d!1240098 (= (inv!60860 (transformation!7740 (rule!10848 tBis!41))) e!2612126)))

(declare-fun b!4207714 () Bool)

(declare-fun equivClasses!3259 (Int Int) Bool)

(assert (=> b!4207714 (= e!2612126 (equivClasses!3259 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (toValue!10452 (transformation!7740 (rule!10848 tBis!41)))))))

(assert (= (and d!1240098 res!1728446) b!4207714))

(declare-fun m!4795723 () Bool)

(assert (=> d!1240098 m!4795723))

(declare-fun m!4795725 () Bool)

(assert (=> b!4207714 m!4795725))

(assert (=> b!4207536 d!1240098))

(declare-fun d!1240100 () Bool)

(declare-fun list!16725 (Conc!13951) List!46390)

(assert (=> d!1240100 (= (list!16723 (charsOf!5163 tBis!41)) (list!16725 (c!716929 (charsOf!5163 tBis!41))))))

(declare-fun bs!597242 () Bool)

(assert (= bs!597242 d!1240100))

(declare-fun m!4795727 () Bool)

(assert (=> bs!597242 m!4795727))

(assert (=> b!4207541 d!1240100))

(declare-fun d!1240102 () Bool)

(declare-fun lt!1498149 () BalanceConc!27496)

(assert (=> d!1240102 (= (list!16723 lt!1498149) (originalCharacters!8122 tBis!41))))

(declare-fun dynLambda!19944 (Int TokenValue!7970) BalanceConc!27496)

(assert (=> d!1240102 (= lt!1498149 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41)))))

(assert (=> d!1240102 (= (charsOf!5163 tBis!41) lt!1498149)))

(declare-fun b_lambda!123897 () Bool)

(assert (=> (not b_lambda!123897) (not d!1240102)))

(declare-fun t!347572 () Bool)

(declare-fun tb!252383 () Bool)

(assert (=> (and b!4207533 (= (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (toChars!10311 (transformation!7740 (rule!10848 tBis!41)))) t!347572) tb!252383))

(declare-fun b!4207723 () Bool)

(declare-fun e!2612131 () Bool)

(declare-fun tp!1286310 () Bool)

(declare-fun inv!60864 (Conc!13951) Bool)

(assert (=> b!4207723 (= e!2612131 (and (inv!60864 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41)))) tp!1286310))))

(declare-fun result!307618 () Bool)

(declare-fun inv!60865 (BalanceConc!27496) Bool)

(assert (=> tb!252383 (= result!307618 (and (inv!60865 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41))) e!2612131))))

(assert (= tb!252383 b!4207723))

(declare-fun m!4795729 () Bool)

(assert (=> b!4207723 m!4795729))

(declare-fun m!4795731 () Bool)

(assert (=> tb!252383 m!4795731))

(assert (=> d!1240102 t!347572))

(declare-fun b_and!330837 () Bool)

(assert (= b_and!330815 (and (=> t!347572 result!307618) b_and!330837)))

(declare-fun t!347574 () Bool)

(declare-fun tb!252385 () Bool)

(assert (=> (and b!4207548 (= (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (toChars!10311 (transformation!7740 (rule!10848 tBis!41)))) t!347574) tb!252385))

(declare-fun result!307622 () Bool)

(assert (= result!307622 result!307618))

(assert (=> d!1240102 t!347574))

(declare-fun b_and!330839 () Bool)

(assert (= b_and!330819 (and (=> t!347574 result!307622) b_and!330839)))

(declare-fun t!347576 () Bool)

(declare-fun tb!252387 () Bool)

(assert (=> (and b!4207551 (= (toChars!10311 (transformation!7740 (h!51687 rules!3967))) (toChars!10311 (transformation!7740 (rule!10848 tBis!41)))) t!347576) tb!252387))

(declare-fun result!307624 () Bool)

(assert (= result!307624 result!307618))

(assert (=> d!1240102 t!347576))

(declare-fun b_and!330841 () Bool)

(assert (= b_and!330823 (and (=> t!347576 result!307624) b_and!330841)))

(declare-fun tb!252389 () Bool)

(declare-fun t!347578 () Bool)

(assert (=> (and b!4207553 (= (toChars!10311 (transformation!7740 rBis!178)) (toChars!10311 (transformation!7740 (rule!10848 tBis!41)))) t!347578) tb!252389))

(declare-fun result!307626 () Bool)

(assert (= result!307626 result!307618))

(assert (=> d!1240102 t!347578))

(declare-fun b_and!330843 () Bool)

(assert (= b_and!330827 (and (=> t!347578 result!307626) b_and!330843)))

(declare-fun m!4795733 () Bool)

(assert (=> d!1240102 m!4795733))

(declare-fun m!4795735 () Bool)

(assert (=> d!1240102 m!4795735))

(assert (=> b!4207541 d!1240102))

(declare-fun d!1240104 () Bool)

(declare-fun e!2612198 () Bool)

(assert (=> d!1240104 e!2612198))

(declare-fun res!1728510 () Bool)

(assert (=> d!1240104 (=> res!1728510 e!2612198)))

(declare-fun lt!1498180 () Option!9928)

(assert (=> d!1240104 (= res!1728510 (isEmpty!27398 lt!1498180))))

(declare-fun e!2612195 () Option!9928)

(assert (=> d!1240104 (= lt!1498180 e!2612195)))

(declare-fun c!716966 () Bool)

(declare-datatypes ((tuple2!44014 0))(
  ( (tuple2!44015 (_1!25141 List!46390) (_2!25141 List!46390)) )
))
(declare-fun lt!1498182 () tuple2!44014)

(declare-fun isEmpty!27399 (List!46390) Bool)

(assert (=> d!1240104 (= c!716966 (isEmpty!27399 (_1!25141 lt!1498182)))))

(declare-fun findLongestMatch!1552 (Regex!12645 List!46390) tuple2!44014)

(assert (=> d!1240104 (= lt!1498182 (findLongestMatch!1552 (regex!7740 rBis!178) input!3517))))

(assert (=> d!1240104 (ruleValid!3452 thiss!26544 rBis!178)))

(assert (=> d!1240104 (= (maxPrefixOneRule!3330 thiss!26544 rBis!178 input!3517) lt!1498180)))

(declare-fun b!4207851 () Bool)

(declare-fun res!1728513 () Bool)

(declare-fun e!2612196 () Bool)

(assert (=> b!4207851 (=> (not res!1728513) (not e!2612196))))

(assert (=> b!4207851 (= res!1728513 (= (value!241119 (_1!25139 (get!15048 lt!1498180))) (apply!10679 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180)))) (seqFromList!5739 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498180)))))))))

(declare-fun b!4207852 () Bool)

(assert (=> b!4207852 (= e!2612198 e!2612196)))

(declare-fun res!1728509 () Bool)

(assert (=> b!4207852 (=> (not res!1728509) (not e!2612196))))

(assert (=> b!4207852 (= res!1728509 (matchR!6358 (regex!7740 rBis!178) (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180))))))))

(declare-fun b!4207853 () Bool)

(assert (=> b!4207853 (= e!2612196 (= (size!33984 (_1!25139 (get!15048 lt!1498180))) (size!33985 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498180))))))))

(declare-fun b!4207854 () Bool)

(declare-fun res!1728508 () Bool)

(assert (=> b!4207854 (=> (not res!1728508) (not e!2612196))))

(assert (=> b!4207854 (= res!1728508 (< (size!33985 (_2!25139 (get!15048 lt!1498180))) (size!33985 input!3517)))))

(declare-fun b!4207855 () Bool)

(declare-fun size!33987 (BalanceConc!27496) Int)

(assert (=> b!4207855 (= e!2612195 (Some!9927 (tuple2!44011 (Token!14183 (apply!10679 (transformation!7740 rBis!178) (seqFromList!5739 (_1!25141 lt!1498182))) rBis!178 (size!33987 (seqFromList!5739 (_1!25141 lt!1498182))) (_1!25141 lt!1498182)) (_2!25141 lt!1498182))))))

(declare-fun lt!1498183 () Unit!65381)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1612 (Regex!12645 List!46390) Unit!65381)

(assert (=> b!4207855 (= lt!1498183 (longestMatchIsAcceptedByMatchOrIsEmpty!1612 (regex!7740 rBis!178) input!3517))))

(declare-fun res!1728512 () Bool)

(declare-fun findLongestMatchInner!1639 (Regex!12645 List!46390 Int List!46390 List!46390 Int) tuple2!44014)

(assert (=> b!4207855 (= res!1728512 (isEmpty!27399 (_1!25141 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517)))))))

(declare-fun e!2612197 () Bool)

(assert (=> b!4207855 (=> res!1728512 e!2612197)))

(assert (=> b!4207855 e!2612197))

(declare-fun lt!1498179 () Unit!65381)

(assert (=> b!4207855 (= lt!1498179 lt!1498183)))

(declare-fun lt!1498181 () Unit!65381)

(declare-fun lemmaSemiInverse!2480 (TokenValueInjection!15368 BalanceConc!27496) Unit!65381)

(assert (=> b!4207855 (= lt!1498181 (lemmaSemiInverse!2480 (transformation!7740 rBis!178) (seqFromList!5739 (_1!25141 lt!1498182))))))

(declare-fun b!4207856 () Bool)

(declare-fun res!1728507 () Bool)

(assert (=> b!4207856 (=> (not res!1728507) (not e!2612196))))

(assert (=> b!4207856 (= res!1728507 (= (rule!10848 (_1!25139 (get!15048 lt!1498180))) rBis!178))))

(declare-fun b!4207857 () Bool)

(assert (=> b!4207857 (= e!2612197 (matchR!6358 (regex!7740 rBis!178) (_1!25141 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517)))))))

(declare-fun b!4207858 () Bool)

(declare-fun res!1728511 () Bool)

(assert (=> b!4207858 (=> (not res!1728511) (not e!2612196))))

(assert (=> b!4207858 (= res!1728511 (= (++!11814 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180)))) (_2!25139 (get!15048 lt!1498180))) input!3517))))

(declare-fun b!4207859 () Bool)

(assert (=> b!4207859 (= e!2612195 None!9927)))

(assert (= (and d!1240104 c!716966) b!4207859))

(assert (= (and d!1240104 (not c!716966)) b!4207855))

(assert (= (and b!4207855 (not res!1728512)) b!4207857))

(assert (= (and d!1240104 (not res!1728510)) b!4207852))

(assert (= (and b!4207852 res!1728509) b!4207858))

(assert (= (and b!4207858 res!1728511) b!4207854))

(assert (= (and b!4207854 res!1728508) b!4207856))

(assert (= (and b!4207856 res!1728507) b!4207851))

(assert (= (and b!4207851 res!1728513) b!4207853))

(declare-fun m!4795829 () Bool)

(assert (=> d!1240104 m!4795829))

(declare-fun m!4795831 () Bool)

(assert (=> d!1240104 m!4795831))

(declare-fun m!4795833 () Bool)

(assert (=> d!1240104 m!4795833))

(assert (=> d!1240104 m!4795559))

(declare-fun m!4795835 () Bool)

(assert (=> b!4207854 m!4795835))

(declare-fun m!4795837 () Bool)

(assert (=> b!4207854 m!4795837))

(assert (=> b!4207854 m!4795651))

(assert (=> b!4207858 m!4795835))

(declare-fun m!4795839 () Bool)

(assert (=> b!4207858 m!4795839))

(assert (=> b!4207858 m!4795839))

(declare-fun m!4795841 () Bool)

(assert (=> b!4207858 m!4795841))

(assert (=> b!4207858 m!4795841))

(declare-fun m!4795843 () Bool)

(assert (=> b!4207858 m!4795843))

(assert (=> b!4207853 m!4795835))

(declare-fun m!4795845 () Bool)

(assert (=> b!4207853 m!4795845))

(assert (=> b!4207856 m!4795835))

(assert (=> b!4207851 m!4795835))

(declare-fun m!4795847 () Bool)

(assert (=> b!4207851 m!4795847))

(assert (=> b!4207851 m!4795847))

(declare-fun m!4795849 () Bool)

(assert (=> b!4207851 m!4795849))

(declare-fun m!4795851 () Bool)

(assert (=> b!4207857 m!4795851))

(assert (=> b!4207857 m!4795651))

(assert (=> b!4207857 m!4795851))

(assert (=> b!4207857 m!4795651))

(declare-fun m!4795853 () Bool)

(assert (=> b!4207857 m!4795853))

(declare-fun m!4795855 () Bool)

(assert (=> b!4207857 m!4795855))

(assert (=> b!4207855 m!4795851))

(assert (=> b!4207855 m!4795651))

(assert (=> b!4207855 m!4795853))

(declare-fun m!4795857 () Bool)

(assert (=> b!4207855 m!4795857))

(declare-fun m!4795859 () Bool)

(assert (=> b!4207855 m!4795859))

(assert (=> b!4207855 m!4795857))

(assert (=> b!4207855 m!4795857))

(declare-fun m!4795861 () Bool)

(assert (=> b!4207855 m!4795861))

(declare-fun m!4795863 () Bool)

(assert (=> b!4207855 m!4795863))

(declare-fun m!4795865 () Bool)

(assert (=> b!4207855 m!4795865))

(assert (=> b!4207855 m!4795857))

(declare-fun m!4795867 () Bool)

(assert (=> b!4207855 m!4795867))

(assert (=> b!4207855 m!4795851))

(assert (=> b!4207855 m!4795651))

(assert (=> b!4207852 m!4795835))

(assert (=> b!4207852 m!4795839))

(assert (=> b!4207852 m!4795839))

(assert (=> b!4207852 m!4795841))

(assert (=> b!4207852 m!4795841))

(declare-fun m!4795869 () Bool)

(assert (=> b!4207852 m!4795869))

(assert (=> b!4207550 d!1240104))

(declare-fun d!1240126 () Bool)

(declare-fun e!2612206 () Bool)

(assert (=> d!1240126 e!2612206))

(declare-fun res!1728523 () Bool)

(assert (=> d!1240126 (=> res!1728523 e!2612206)))

(declare-fun lt!1498186 () Bool)

(assert (=> d!1240126 (= res!1728523 (not lt!1498186))))

(declare-fun e!2612207 () Bool)

(assert (=> d!1240126 (= lt!1498186 e!2612207)))

(declare-fun res!1728524 () Bool)

(assert (=> d!1240126 (=> res!1728524 e!2612207)))

(assert (=> d!1240126 (= res!1728524 ((_ is Nil!46266) input!3517))))

(assert (=> d!1240126 (= (isPrefix!4599 input!3517 input!3517) lt!1498186)))

(declare-fun b!4207869 () Bool)

(declare-fun res!1728522 () Bool)

(declare-fun e!2612205 () Bool)

(assert (=> b!4207869 (=> (not res!1728522) (not e!2612205))))

(declare-fun head!8928 (List!46390) C!25484)

(assert (=> b!4207869 (= res!1728522 (= (head!8928 input!3517) (head!8928 input!3517)))))

(declare-fun b!4207868 () Bool)

(assert (=> b!4207868 (= e!2612207 e!2612205)))

(declare-fun res!1728525 () Bool)

(assert (=> b!4207868 (=> (not res!1728525) (not e!2612205))))

(assert (=> b!4207868 (= res!1728525 (not ((_ is Nil!46266) input!3517)))))

(declare-fun b!4207870 () Bool)

(declare-fun tail!6775 (List!46390) List!46390)

(assert (=> b!4207870 (= e!2612205 (isPrefix!4599 (tail!6775 input!3517) (tail!6775 input!3517)))))

(declare-fun b!4207871 () Bool)

(assert (=> b!4207871 (= e!2612206 (>= (size!33985 input!3517) (size!33985 input!3517)))))

(assert (= (and d!1240126 (not res!1728524)) b!4207868))

(assert (= (and b!4207868 res!1728525) b!4207869))

(assert (= (and b!4207869 res!1728522) b!4207870))

(assert (= (and d!1240126 (not res!1728523)) b!4207871))

(declare-fun m!4795871 () Bool)

(assert (=> b!4207869 m!4795871))

(assert (=> b!4207869 m!4795871))

(declare-fun m!4795873 () Bool)

(assert (=> b!4207870 m!4795873))

(assert (=> b!4207870 m!4795873))

(assert (=> b!4207870 m!4795873))

(assert (=> b!4207870 m!4795873))

(declare-fun m!4795875 () Bool)

(assert (=> b!4207870 m!4795875))

(assert (=> b!4207871 m!4795651))

(assert (=> b!4207871 m!4795651))

(assert (=> b!4207550 d!1240126))

(declare-fun d!1240128 () Bool)

(assert (=> d!1240128 (isPrefix!4599 input!3517 input!3517)))

(declare-fun lt!1498189 () Unit!65381)

(declare-fun choose!25792 (List!46390 List!46390) Unit!65381)

(assert (=> d!1240128 (= lt!1498189 (choose!25792 input!3517 input!3517))))

(assert (=> d!1240128 (= (lemmaIsPrefixRefl!3016 input!3517 input!3517) lt!1498189)))

(declare-fun bs!597243 () Bool)

(assert (= bs!597243 d!1240128))

(assert (=> bs!597243 m!4795535))

(declare-fun m!4795877 () Bool)

(assert (=> bs!597243 m!4795877))

(assert (=> b!4207550 d!1240128))

(declare-fun b!4207873 () Bool)

(declare-fun e!2612209 () List!46390)

(assert (=> b!4207873 (= e!2612209 (Cons!46266 (h!51686 p!3001) (++!11814 (t!347561 p!3001) suffix!1557)))))

(declare-fun b!4207874 () Bool)

(declare-fun res!1728527 () Bool)

(declare-fun e!2612208 () Bool)

(assert (=> b!4207874 (=> (not res!1728527) (not e!2612208))))

(declare-fun lt!1498190 () List!46390)

(assert (=> b!4207874 (= res!1728527 (= (size!33985 lt!1498190) (+ (size!33985 p!3001) (size!33985 suffix!1557))))))

(declare-fun b!4207875 () Bool)

(assert (=> b!4207875 (= e!2612208 (or (not (= suffix!1557 Nil!46266)) (= lt!1498190 p!3001)))))

(declare-fun d!1240130 () Bool)

(assert (=> d!1240130 e!2612208))

(declare-fun res!1728526 () Bool)

(assert (=> d!1240130 (=> (not res!1728526) (not e!2612208))))

(assert (=> d!1240130 (= res!1728526 (= (content!7235 lt!1498190) ((_ map or) (content!7235 p!3001) (content!7235 suffix!1557))))))

(assert (=> d!1240130 (= lt!1498190 e!2612209)))

(declare-fun c!716967 () Bool)

(assert (=> d!1240130 (= c!716967 ((_ is Nil!46266) p!3001))))

(assert (=> d!1240130 (= (++!11814 p!3001 suffix!1557) lt!1498190)))

(declare-fun b!4207872 () Bool)

(assert (=> b!4207872 (= e!2612209 suffix!1557)))

(assert (= (and d!1240130 c!716967) b!4207872))

(assert (= (and d!1240130 (not c!716967)) b!4207873))

(assert (= (and d!1240130 res!1728526) b!4207874))

(assert (= (and b!4207874 res!1728527) b!4207875))

(declare-fun m!4795879 () Bool)

(assert (=> b!4207873 m!4795879))

(declare-fun m!4795881 () Bool)

(assert (=> b!4207874 m!4795881))

(assert (=> b!4207874 m!4795525))

(declare-fun m!4795883 () Bool)

(assert (=> b!4207874 m!4795883))

(declare-fun m!4795885 () Bool)

(assert (=> d!1240130 m!4795885))

(declare-fun m!4795887 () Bool)

(assert (=> d!1240130 m!4795887))

(declare-fun m!4795889 () Bool)

(assert (=> d!1240130 m!4795889))

(assert (=> b!4207560 d!1240130))

(declare-fun d!1240132 () Bool)

(declare-fun e!2612211 () Bool)

(assert (=> d!1240132 e!2612211))

(declare-fun res!1728529 () Bool)

(assert (=> d!1240132 (=> res!1728529 e!2612211)))

(declare-fun lt!1498191 () Bool)

(assert (=> d!1240132 (= res!1728529 (not lt!1498191))))

(declare-fun e!2612212 () Bool)

(assert (=> d!1240132 (= lt!1498191 e!2612212)))

(declare-fun res!1728530 () Bool)

(assert (=> d!1240132 (=> res!1728530 e!2612212)))

(assert (=> d!1240132 (= res!1728530 ((_ is Nil!46266) p!3001))))

(assert (=> d!1240132 (= (isPrefix!4599 p!3001 input!3517) lt!1498191)))

(declare-fun b!4207877 () Bool)

(declare-fun res!1728528 () Bool)

(declare-fun e!2612210 () Bool)

(assert (=> b!4207877 (=> (not res!1728528) (not e!2612210))))

(assert (=> b!4207877 (= res!1728528 (= (head!8928 p!3001) (head!8928 input!3517)))))

(declare-fun b!4207876 () Bool)

(assert (=> b!4207876 (= e!2612212 e!2612210)))

(declare-fun res!1728531 () Bool)

(assert (=> b!4207876 (=> (not res!1728531) (not e!2612210))))

(assert (=> b!4207876 (= res!1728531 (not ((_ is Nil!46266) input!3517)))))

(declare-fun b!4207878 () Bool)

(assert (=> b!4207878 (= e!2612210 (isPrefix!4599 (tail!6775 p!3001) (tail!6775 input!3517)))))

(declare-fun b!4207879 () Bool)

(assert (=> b!4207879 (= e!2612211 (>= (size!33985 input!3517) (size!33985 p!3001)))))

(assert (= (and d!1240132 (not res!1728530)) b!4207876))

(assert (= (and b!4207876 res!1728531) b!4207877))

(assert (= (and b!4207877 res!1728528) b!4207878))

(assert (= (and d!1240132 (not res!1728529)) b!4207879))

(declare-fun m!4795891 () Bool)

(assert (=> b!4207877 m!4795891))

(assert (=> b!4207877 m!4795871))

(declare-fun m!4795893 () Bool)

(assert (=> b!4207878 m!4795893))

(assert (=> b!4207878 m!4795873))

(assert (=> b!4207878 m!4795893))

(assert (=> b!4207878 m!4795873))

(declare-fun m!4795895 () Bool)

(assert (=> b!4207878 m!4795895))

(assert (=> b!4207879 m!4795651))

(assert (=> b!4207879 m!4795525))

(assert (=> b!4207554 d!1240132))

(declare-fun b!4207880 () Bool)

(declare-fun e!2612215 () Bool)

(assert (=> b!4207880 (= e!2612215 (inv!17 (value!241119 t!8364)))))

(declare-fun b!4207881 () Bool)

(declare-fun res!1728532 () Bool)

(declare-fun e!2612214 () Bool)

(assert (=> b!4207881 (=> res!1728532 e!2612214)))

(assert (=> b!4207881 (= res!1728532 (not ((_ is IntegerValue!23912) (value!241119 t!8364))))))

(assert (=> b!4207881 (= e!2612215 e!2612214)))

(declare-fun b!4207882 () Bool)

(declare-fun e!2612213 () Bool)

(assert (=> b!4207882 (= e!2612213 (inv!16 (value!241119 t!8364)))))

(declare-fun b!4207883 () Bool)

(assert (=> b!4207883 (= e!2612214 (inv!15 (value!241119 t!8364)))))

(declare-fun b!4207884 () Bool)

(assert (=> b!4207884 (= e!2612213 e!2612215)))

(declare-fun c!716968 () Bool)

(assert (=> b!4207884 (= c!716968 ((_ is IntegerValue!23911) (value!241119 t!8364)))))

(declare-fun d!1240134 () Bool)

(declare-fun c!716969 () Bool)

(assert (=> d!1240134 (= c!716969 ((_ is IntegerValue!23910) (value!241119 t!8364)))))

(assert (=> d!1240134 (= (inv!21 (value!241119 t!8364)) e!2612213)))

(assert (= (and d!1240134 c!716969) b!4207882))

(assert (= (and d!1240134 (not c!716969)) b!4207884))

(assert (= (and b!4207884 c!716968) b!4207880))

(assert (= (and b!4207884 (not c!716968)) b!4207881))

(assert (= (and b!4207881 (not res!1728532)) b!4207883))

(declare-fun m!4795897 () Bool)

(assert (=> b!4207880 m!4795897))

(declare-fun m!4795899 () Bool)

(assert (=> b!4207882 m!4795899))

(declare-fun m!4795901 () Bool)

(assert (=> b!4207883 m!4795901))

(assert (=> b!4207532 d!1240134))

(declare-fun d!1240136 () Bool)

(assert (=> d!1240136 (= (inv!60857 (tag!8604 rBis!178)) (= (mod (str.len (value!241118 (tag!8604 rBis!178))) 2) 0))))

(assert (=> b!4207542 d!1240136))

(declare-fun d!1240138 () Bool)

(declare-fun res!1728533 () Bool)

(declare-fun e!2612216 () Bool)

(assert (=> d!1240138 (=> (not res!1728533) (not e!2612216))))

(assert (=> d!1240138 (= res!1728533 (semiInverseModEq!3360 (toChars!10311 (transformation!7740 rBis!178)) (toValue!10452 (transformation!7740 rBis!178))))))

(assert (=> d!1240138 (= (inv!60860 (transformation!7740 rBis!178)) e!2612216)))

(declare-fun b!4207885 () Bool)

(assert (=> b!4207885 (= e!2612216 (equivClasses!3259 (toChars!10311 (transformation!7740 rBis!178)) (toValue!10452 (transformation!7740 rBis!178))))))

(assert (= (and d!1240138 res!1728533) b!4207885))

(declare-fun m!4795903 () Bool)

(assert (=> d!1240138 m!4795903))

(declare-fun m!4795905 () Bool)

(assert (=> b!4207885 m!4795905))

(assert (=> b!4207542 d!1240138))

(declare-fun d!1240140 () Bool)

(assert (=> d!1240140 (= (inv!60857 (tag!8604 (rule!10848 t!8364))) (= (mod (str.len (value!241118 (tag!8604 (rule!10848 t!8364)))) 2) 0))))

(assert (=> b!4207531 d!1240140))

(declare-fun d!1240142 () Bool)

(declare-fun res!1728534 () Bool)

(declare-fun e!2612217 () Bool)

(assert (=> d!1240142 (=> (not res!1728534) (not e!2612217))))

(assert (=> d!1240142 (= res!1728534 (semiInverseModEq!3360 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (toValue!10452 (transformation!7740 (rule!10848 t!8364)))))))

(assert (=> d!1240142 (= (inv!60860 (transformation!7740 (rule!10848 t!8364))) e!2612217)))

(declare-fun b!4207886 () Bool)

(assert (=> b!4207886 (= e!2612217 (equivClasses!3259 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (toValue!10452 (transformation!7740 (rule!10848 t!8364)))))))

(assert (= (and d!1240142 res!1728534) b!4207886))

(declare-fun m!4795907 () Bool)

(assert (=> d!1240142 m!4795907))

(declare-fun m!4795909 () Bool)

(assert (=> b!4207886 m!4795909))

(assert (=> b!4207531 d!1240142))

(declare-fun d!1240144 () Bool)

(declare-fun res!1728539 () Bool)

(declare-fun e!2612220 () Bool)

(assert (=> d!1240144 (=> (not res!1728539) (not e!2612220))))

(assert (=> d!1240144 (= res!1728539 (not (isEmpty!27399 (originalCharacters!8122 tBis!41))))))

(assert (=> d!1240144 (= (inv!60861 tBis!41) e!2612220)))

(declare-fun b!4207891 () Bool)

(declare-fun res!1728540 () Bool)

(assert (=> b!4207891 (=> (not res!1728540) (not e!2612220))))

(assert (=> b!4207891 (= res!1728540 (= (originalCharacters!8122 tBis!41) (list!16723 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41)))))))

(declare-fun b!4207892 () Bool)

(assert (=> b!4207892 (= e!2612220 (= (size!33984 tBis!41) (size!33985 (originalCharacters!8122 tBis!41))))))

(assert (= (and d!1240144 res!1728539) b!4207891))

(assert (= (and b!4207891 res!1728540) b!4207892))

(declare-fun b_lambda!123909 () Bool)

(assert (=> (not b_lambda!123909) (not b!4207891)))

(assert (=> b!4207891 t!347572))

(declare-fun b_and!330865 () Bool)

(assert (= b_and!330837 (and (=> t!347572 result!307618) b_and!330865)))

(assert (=> b!4207891 t!347574))

(declare-fun b_and!330867 () Bool)

(assert (= b_and!330839 (and (=> t!347574 result!307622) b_and!330867)))

(assert (=> b!4207891 t!347576))

(declare-fun b_and!330869 () Bool)

(assert (= b_and!330841 (and (=> t!347576 result!307624) b_and!330869)))

(assert (=> b!4207891 t!347578))

(declare-fun b_and!330871 () Bool)

(assert (= b_and!330843 (and (=> t!347578 result!307626) b_and!330871)))

(declare-fun m!4795911 () Bool)

(assert (=> d!1240144 m!4795911))

(assert (=> b!4207891 m!4795735))

(assert (=> b!4207891 m!4795735))

(declare-fun m!4795913 () Bool)

(assert (=> b!4207891 m!4795913))

(declare-fun m!4795915 () Bool)

(assert (=> b!4207892 m!4795915))

(assert (=> start!402010 d!1240144))

(declare-fun d!1240146 () Bool)

(declare-fun res!1728541 () Bool)

(declare-fun e!2612221 () Bool)

(assert (=> d!1240146 (=> (not res!1728541) (not e!2612221))))

(assert (=> d!1240146 (= res!1728541 (not (isEmpty!27399 (originalCharacters!8122 t!8364))))))

(assert (=> d!1240146 (= (inv!60861 t!8364) e!2612221)))

(declare-fun b!4207893 () Bool)

(declare-fun res!1728542 () Bool)

(assert (=> b!4207893 (=> (not res!1728542) (not e!2612221))))

(assert (=> b!4207893 (= res!1728542 (= (originalCharacters!8122 t!8364) (list!16723 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364)))))))

(declare-fun b!4207894 () Bool)

(assert (=> b!4207894 (= e!2612221 (= (size!33984 t!8364) (size!33985 (originalCharacters!8122 t!8364))))))

(assert (= (and d!1240146 res!1728541) b!4207893))

(assert (= (and b!4207893 res!1728542) b!4207894))

(declare-fun b_lambda!123911 () Bool)

(assert (=> (not b_lambda!123911) (not b!4207893)))

(declare-fun tb!252403 () Bool)

(declare-fun t!347593 () Bool)

(assert (=> (and b!4207533 (= (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (toChars!10311 (transformation!7740 (rule!10848 t!8364)))) t!347593) tb!252403))

(declare-fun b!4207895 () Bool)

(declare-fun e!2612222 () Bool)

(declare-fun tp!1286363 () Bool)

(assert (=> b!4207895 (= e!2612222 (and (inv!60864 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364)))) tp!1286363))))

(declare-fun result!307646 () Bool)

(assert (=> tb!252403 (= result!307646 (and (inv!60865 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364))) e!2612222))))

(assert (= tb!252403 b!4207895))

(declare-fun m!4795917 () Bool)

(assert (=> b!4207895 m!4795917))

(declare-fun m!4795919 () Bool)

(assert (=> tb!252403 m!4795919))

(assert (=> b!4207893 t!347593))

(declare-fun b_and!330873 () Bool)

(assert (= b_and!330865 (and (=> t!347593 result!307646) b_and!330873)))

(declare-fun t!347595 () Bool)

(declare-fun tb!252405 () Bool)

(assert (=> (and b!4207548 (= (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (toChars!10311 (transformation!7740 (rule!10848 t!8364)))) t!347595) tb!252405))

(declare-fun result!307648 () Bool)

(assert (= result!307648 result!307646))

(assert (=> b!4207893 t!347595))

(declare-fun b_and!330875 () Bool)

(assert (= b_and!330867 (and (=> t!347595 result!307648) b_and!330875)))

(declare-fun tb!252407 () Bool)

(declare-fun t!347597 () Bool)

(assert (=> (and b!4207551 (= (toChars!10311 (transformation!7740 (h!51687 rules!3967))) (toChars!10311 (transformation!7740 (rule!10848 t!8364)))) t!347597) tb!252407))

(declare-fun result!307650 () Bool)

(assert (= result!307650 result!307646))

(assert (=> b!4207893 t!347597))

(declare-fun b_and!330877 () Bool)

(assert (= b_and!330869 (and (=> t!347597 result!307650) b_and!330877)))

(declare-fun t!347599 () Bool)

(declare-fun tb!252409 () Bool)

(assert (=> (and b!4207553 (= (toChars!10311 (transformation!7740 rBis!178)) (toChars!10311 (transformation!7740 (rule!10848 t!8364)))) t!347599) tb!252409))

(declare-fun result!307652 () Bool)

(assert (= result!307652 result!307646))

(assert (=> b!4207893 t!347599))

(declare-fun b_and!330879 () Bool)

(assert (= b_and!330871 (and (=> t!347599 result!307652) b_and!330879)))

(declare-fun m!4795921 () Bool)

(assert (=> d!1240146 m!4795921))

(declare-fun m!4795923 () Bool)

(assert (=> b!4207893 m!4795923))

(assert (=> b!4207893 m!4795923))

(declare-fun m!4795925 () Bool)

(assert (=> b!4207893 m!4795925))

(declare-fun m!4795927 () Bool)

(assert (=> b!4207894 m!4795927))

(assert (=> start!402010 d!1240146))

(declare-fun d!1240148 () Bool)

(declare-fun lt!1498194 () Int)

(assert (=> d!1240148 (>= lt!1498194 0)))

(declare-fun e!2612225 () Int)

(assert (=> d!1240148 (= lt!1498194 e!2612225)))

(declare-fun c!716972 () Bool)

(assert (=> d!1240148 (= c!716972 ((_ is Nil!46266) pBis!121))))

(assert (=> d!1240148 (= (size!33985 pBis!121) lt!1498194)))

(declare-fun b!4207900 () Bool)

(assert (=> b!4207900 (= e!2612225 0)))

(declare-fun b!4207901 () Bool)

(assert (=> b!4207901 (= e!2612225 (+ 1 (size!33985 (t!347561 pBis!121))))))

(assert (= (and d!1240148 c!716972) b!4207900))

(assert (= (and d!1240148 (not c!716972)) b!4207901))

(declare-fun m!4795929 () Bool)

(assert (=> b!4207901 m!4795929))

(assert (=> b!4207535 d!1240148))

(declare-fun d!1240150 () Bool)

(declare-fun lt!1498195 () Int)

(assert (=> d!1240150 (>= lt!1498195 0)))

(declare-fun e!2612226 () Int)

(assert (=> d!1240150 (= lt!1498195 e!2612226)))

(declare-fun c!716973 () Bool)

(assert (=> d!1240150 (= c!716973 ((_ is Nil!46266) p!3001))))

(assert (=> d!1240150 (= (size!33985 p!3001) lt!1498195)))

(declare-fun b!4207902 () Bool)

(assert (=> b!4207902 (= e!2612226 0)))

(declare-fun b!4207903 () Bool)

(assert (=> b!4207903 (= e!2612226 (+ 1 (size!33985 (t!347561 p!3001))))))

(assert (= (and d!1240150 c!716973) b!4207902))

(assert (= (and d!1240150 (not c!716973)) b!4207903))

(declare-fun m!4795931 () Bool)

(assert (=> b!4207903 m!4795931))

(assert (=> b!4207535 d!1240150))

(declare-fun d!1240152 () Bool)

(assert (=> d!1240152 (= (isEmpty!27395 rules!3967) ((_ is Nil!46267) rules!3967))))

(assert (=> b!4207556 d!1240152))

(declare-fun d!1240154 () Bool)

(declare-fun e!2612228 () Bool)

(assert (=> d!1240154 e!2612228))

(declare-fun res!1728544 () Bool)

(assert (=> d!1240154 (=> res!1728544 e!2612228)))

(declare-fun lt!1498196 () Bool)

(assert (=> d!1240154 (= res!1728544 (not lt!1498196))))

(declare-fun e!2612229 () Bool)

(assert (=> d!1240154 (= lt!1498196 e!2612229)))

(declare-fun res!1728545 () Bool)

(assert (=> d!1240154 (=> res!1728545 e!2612229)))

(assert (=> d!1240154 (= res!1728545 ((_ is Nil!46266) pBis!121))))

(assert (=> d!1240154 (= (isPrefix!4599 pBis!121 input!3517) lt!1498196)))

(declare-fun b!4207905 () Bool)

(declare-fun res!1728543 () Bool)

(declare-fun e!2612227 () Bool)

(assert (=> b!4207905 (=> (not res!1728543) (not e!2612227))))

(assert (=> b!4207905 (= res!1728543 (= (head!8928 pBis!121) (head!8928 input!3517)))))

(declare-fun b!4207904 () Bool)

(assert (=> b!4207904 (= e!2612229 e!2612227)))

(declare-fun res!1728546 () Bool)

(assert (=> b!4207904 (=> (not res!1728546) (not e!2612227))))

(assert (=> b!4207904 (= res!1728546 (not ((_ is Nil!46266) input!3517)))))

(declare-fun b!4207906 () Bool)

(assert (=> b!4207906 (= e!2612227 (isPrefix!4599 (tail!6775 pBis!121) (tail!6775 input!3517)))))

(declare-fun b!4207907 () Bool)

(assert (=> b!4207907 (= e!2612228 (>= (size!33985 input!3517) (size!33985 pBis!121)))))

(assert (= (and d!1240154 (not res!1728545)) b!4207904))

(assert (= (and b!4207904 res!1728546) b!4207905))

(assert (= (and b!4207905 res!1728543) b!4207906))

(assert (= (and d!1240154 (not res!1728544)) b!4207907))

(declare-fun m!4795933 () Bool)

(assert (=> b!4207905 m!4795933))

(assert (=> b!4207905 m!4795871))

(declare-fun m!4795935 () Bool)

(assert (=> b!4207906 m!4795935))

(assert (=> b!4207906 m!4795873))

(assert (=> b!4207906 m!4795935))

(assert (=> b!4207906 m!4795873))

(declare-fun m!4795937 () Bool)

(assert (=> b!4207906 m!4795937))

(assert (=> b!4207907 m!4795651))

(assert (=> b!4207907 m!4795523))

(assert (=> b!4207545 d!1240154))

(declare-fun d!1240156 () Bool)

(declare-fun res!1728551 () Bool)

(declare-fun e!2612232 () Bool)

(assert (=> d!1240156 (=> (not res!1728551) (not e!2612232))))

(declare-fun validRegex!5738 (Regex!12645) Bool)

(assert (=> d!1240156 (= res!1728551 (validRegex!5738 (regex!7740 rBis!178)))))

(assert (=> d!1240156 (= (ruleValid!3452 thiss!26544 rBis!178) e!2612232)))

(declare-fun b!4207912 () Bool)

(declare-fun res!1728552 () Bool)

(assert (=> b!4207912 (=> (not res!1728552) (not e!2612232))))

(declare-fun nullable!4451 (Regex!12645) Bool)

(assert (=> b!4207912 (= res!1728552 (not (nullable!4451 (regex!7740 rBis!178))))))

(declare-fun b!4207913 () Bool)

(assert (=> b!4207913 (= e!2612232 (not (= (tag!8604 rBis!178) (String!53721 ""))))))

(assert (= (and d!1240156 res!1728551) b!4207912))

(assert (= (and b!4207912 res!1728552) b!4207913))

(declare-fun m!4795939 () Bool)

(assert (=> d!1240156 m!4795939))

(declare-fun m!4795941 () Bool)

(assert (=> b!4207912 m!4795941))

(assert (=> b!4207555 d!1240156))

(declare-fun d!1240158 () Bool)

(assert (=> d!1240158 (= (inv!60857 (tag!8604 (h!51687 rules!3967))) (= (mod (str.len (value!241118 (tag!8604 (h!51687 rules!3967)))) 2) 0))))

(assert (=> b!4207544 d!1240158))

(declare-fun d!1240160 () Bool)

(declare-fun res!1728553 () Bool)

(declare-fun e!2612233 () Bool)

(assert (=> d!1240160 (=> (not res!1728553) (not e!2612233))))

(assert (=> d!1240160 (= res!1728553 (semiInverseModEq!3360 (toChars!10311 (transformation!7740 (h!51687 rules!3967))) (toValue!10452 (transformation!7740 (h!51687 rules!3967)))))))

(assert (=> d!1240160 (= (inv!60860 (transformation!7740 (h!51687 rules!3967))) e!2612233)))

(declare-fun b!4207914 () Bool)

(assert (=> b!4207914 (= e!2612233 (equivClasses!3259 (toChars!10311 (transformation!7740 (h!51687 rules!3967))) (toValue!10452 (transformation!7740 (h!51687 rules!3967)))))))

(assert (= (and d!1240160 res!1728553) b!4207914))

(declare-fun m!4795943 () Bool)

(assert (=> d!1240160 m!4795943))

(declare-fun m!4795945 () Bool)

(assert (=> b!4207914 m!4795945))

(assert (=> b!4207544 d!1240160))

(declare-fun b!4207919 () Bool)

(declare-fun e!2612236 () Bool)

(declare-fun tp!1286366 () Bool)

(assert (=> b!4207919 (= e!2612236 (and tp_is_empty!22257 tp!1286366))))

(assert (=> b!4207538 (= tp!1286286 e!2612236)))

(assert (= (and b!4207538 ((_ is Cons!46266) (t!347561 pBis!121))) b!4207919))

(declare-fun b!4207920 () Bool)

(declare-fun e!2612237 () Bool)

(declare-fun tp!1286367 () Bool)

(assert (=> b!4207920 (= e!2612237 (and tp_is_empty!22257 tp!1286367))))

(assert (=> b!4207558 (= tp!1286290 e!2612237)))

(assert (= (and b!4207558 ((_ is Cons!46266) (originalCharacters!8122 tBis!41))) b!4207920))

(declare-fun b!4207934 () Bool)

(declare-fun e!2612240 () Bool)

(declare-fun tp!1286382 () Bool)

(declare-fun tp!1286378 () Bool)

(assert (=> b!4207934 (= e!2612240 (and tp!1286382 tp!1286378))))

(declare-fun b!4207931 () Bool)

(assert (=> b!4207931 (= e!2612240 tp_is_empty!22257)))

(declare-fun b!4207933 () Bool)

(declare-fun tp!1286380 () Bool)

(assert (=> b!4207933 (= e!2612240 tp!1286380)))

(assert (=> b!4207536 (= tp!1286285 e!2612240)))

(declare-fun b!4207932 () Bool)

(declare-fun tp!1286379 () Bool)

(declare-fun tp!1286381 () Bool)

(assert (=> b!4207932 (= e!2612240 (and tp!1286379 tp!1286381))))

(assert (= (and b!4207536 ((_ is ElementMatch!12645) (regex!7740 (rule!10848 tBis!41)))) b!4207931))

(assert (= (and b!4207536 ((_ is Concat!20616) (regex!7740 (rule!10848 tBis!41)))) b!4207932))

(assert (= (and b!4207536 ((_ is Star!12645) (regex!7740 (rule!10848 tBis!41)))) b!4207933))

(assert (= (and b!4207536 ((_ is Union!12645) (regex!7740 (rule!10848 tBis!41)))) b!4207934))

(declare-fun b!4207945 () Bool)

(declare-fun b_free!123095 () Bool)

(declare-fun b_next!123799 () Bool)

(assert (=> b!4207945 (= b_free!123095 (not b_next!123799))))

(declare-fun tp!1286392 () Bool)

(declare-fun b_and!330881 () Bool)

(assert (=> b!4207945 (= tp!1286392 b_and!330881)))

(declare-fun b_free!123097 () Bool)

(declare-fun b_next!123801 () Bool)

(assert (=> b!4207945 (= b_free!123097 (not b_next!123801))))

(declare-fun t!347601 () Bool)

(declare-fun tb!252411 () Bool)

(assert (=> (and b!4207945 (= (toChars!10311 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toChars!10311 (transformation!7740 (rule!10848 tBis!41)))) t!347601) tb!252411))

(declare-fun result!307660 () Bool)

(assert (= result!307660 result!307618))

(assert (=> d!1240102 t!347601))

(assert (=> b!4207891 t!347601))

(declare-fun tb!252413 () Bool)

(declare-fun t!347603 () Bool)

(assert (=> (and b!4207945 (= (toChars!10311 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toChars!10311 (transformation!7740 (rule!10848 t!8364)))) t!347603) tb!252413))

(declare-fun result!307662 () Bool)

(assert (= result!307662 result!307646))

(assert (=> b!4207893 t!347603))

(declare-fun b_and!330883 () Bool)

(declare-fun tp!1286391 () Bool)

(assert (=> b!4207945 (= tp!1286391 (and (=> t!347601 result!307660) (=> t!347603 result!307662) b_and!330883))))

(declare-fun e!2612250 () Bool)

(assert (=> b!4207945 (= e!2612250 (and tp!1286392 tp!1286391))))

(declare-fun b!4207944 () Bool)

(declare-fun tp!1286393 () Bool)

(declare-fun e!2612251 () Bool)

(assert (=> b!4207944 (= e!2612251 (and tp!1286393 (inv!60857 (tag!8604 (h!51687 (t!347562 rules!3967)))) (inv!60860 (transformation!7740 (h!51687 (t!347562 rules!3967)))) e!2612250))))

(declare-fun b!4207943 () Bool)

(declare-fun e!2612249 () Bool)

(declare-fun tp!1286394 () Bool)

(assert (=> b!4207943 (= e!2612249 (and e!2612251 tp!1286394))))

(assert (=> b!4207539 (= tp!1286303 e!2612249)))

(assert (= b!4207944 b!4207945))

(assert (= b!4207943 b!4207944))

(assert (= (and b!4207539 ((_ is Cons!46267) (t!347562 rules!3967))) b!4207943))

(declare-fun m!4795947 () Bool)

(assert (=> b!4207944 m!4795947))

(declare-fun m!4795949 () Bool)

(assert (=> b!4207944 m!4795949))

(declare-fun b!4207946 () Bool)

(declare-fun e!2612253 () Bool)

(declare-fun tp!1286395 () Bool)

(assert (=> b!4207946 (= e!2612253 (and tp_is_empty!22257 tp!1286395))))

(assert (=> b!4207543 (= tp!1286291 e!2612253)))

(assert (= (and b!4207543 ((_ is Cons!46266) (t!347561 p!3001))) b!4207946))

(declare-fun b!4207947 () Bool)

(declare-fun e!2612254 () Bool)

(declare-fun tp!1286396 () Bool)

(assert (=> b!4207947 (= e!2612254 (and tp_is_empty!22257 tp!1286396))))

(assert (=> b!4207532 (= tp!1286302 e!2612254)))

(assert (= (and b!4207532 ((_ is Cons!46266) (originalCharacters!8122 t!8364))) b!4207947))

(declare-fun b!4207951 () Bool)

(declare-fun e!2612255 () Bool)

(declare-fun tp!1286401 () Bool)

(declare-fun tp!1286397 () Bool)

(assert (=> b!4207951 (= e!2612255 (and tp!1286401 tp!1286397))))

(declare-fun b!4207948 () Bool)

(assert (=> b!4207948 (= e!2612255 tp_is_empty!22257)))

(declare-fun b!4207950 () Bool)

(declare-fun tp!1286399 () Bool)

(assert (=> b!4207950 (= e!2612255 tp!1286399)))

(assert (=> b!4207542 (= tp!1286301 e!2612255)))

(declare-fun b!4207949 () Bool)

(declare-fun tp!1286398 () Bool)

(declare-fun tp!1286400 () Bool)

(assert (=> b!4207949 (= e!2612255 (and tp!1286398 tp!1286400))))

(assert (= (and b!4207542 ((_ is ElementMatch!12645) (regex!7740 rBis!178))) b!4207948))

(assert (= (and b!4207542 ((_ is Concat!20616) (regex!7740 rBis!178))) b!4207949))

(assert (= (and b!4207542 ((_ is Star!12645) (regex!7740 rBis!178))) b!4207950))

(assert (= (and b!4207542 ((_ is Union!12645) (regex!7740 rBis!178))) b!4207951))

(declare-fun b!4207955 () Bool)

(declare-fun e!2612256 () Bool)

(declare-fun tp!1286406 () Bool)

(declare-fun tp!1286402 () Bool)

(assert (=> b!4207955 (= e!2612256 (and tp!1286406 tp!1286402))))

(declare-fun b!4207952 () Bool)

(assert (=> b!4207952 (= e!2612256 tp_is_empty!22257)))

(declare-fun b!4207954 () Bool)

(declare-fun tp!1286404 () Bool)

(assert (=> b!4207954 (= e!2612256 tp!1286404)))

(assert (=> b!4207531 (= tp!1286294 e!2612256)))

(declare-fun b!4207953 () Bool)

(declare-fun tp!1286403 () Bool)

(declare-fun tp!1286405 () Bool)

(assert (=> b!4207953 (= e!2612256 (and tp!1286403 tp!1286405))))

(assert (= (and b!4207531 ((_ is ElementMatch!12645) (regex!7740 (rule!10848 t!8364)))) b!4207952))

(assert (= (and b!4207531 ((_ is Concat!20616) (regex!7740 (rule!10848 t!8364)))) b!4207953))

(assert (= (and b!4207531 ((_ is Star!12645) (regex!7740 (rule!10848 t!8364)))) b!4207954))

(assert (= (and b!4207531 ((_ is Union!12645) (regex!7740 (rule!10848 t!8364)))) b!4207955))

(declare-fun b!4207956 () Bool)

(declare-fun e!2612257 () Bool)

(declare-fun tp!1286407 () Bool)

(assert (=> b!4207956 (= e!2612257 (and tp_is_empty!22257 tp!1286407))))

(assert (=> b!4207557 (= tp!1286296 e!2612257)))

(assert (= (and b!4207557 ((_ is Cons!46266) (t!347561 input!3517))) b!4207956))

(declare-fun b!4207957 () Bool)

(declare-fun e!2612258 () Bool)

(declare-fun tp!1286408 () Bool)

(assert (=> b!4207957 (= e!2612258 (and tp_is_empty!22257 tp!1286408))))

(assert (=> b!4207546 (= tp!1286300 e!2612258)))

(assert (= (and b!4207546 ((_ is Cons!46266) (t!347561 suffixBis!41))) b!4207957))

(declare-fun b!4207958 () Bool)

(declare-fun e!2612259 () Bool)

(declare-fun tp!1286409 () Bool)

(assert (=> b!4207958 (= e!2612259 (and tp_is_empty!22257 tp!1286409))))

(assert (=> b!4207534 (= tp!1286295 e!2612259)))

(assert (= (and b!4207534 ((_ is Cons!46266) (t!347561 suffix!1557))) b!4207958))

(declare-fun b!4207962 () Bool)

(declare-fun e!2612260 () Bool)

(declare-fun tp!1286414 () Bool)

(declare-fun tp!1286410 () Bool)

(assert (=> b!4207962 (= e!2612260 (and tp!1286414 tp!1286410))))

(declare-fun b!4207959 () Bool)

(assert (=> b!4207959 (= e!2612260 tp_is_empty!22257)))

(declare-fun b!4207961 () Bool)

(declare-fun tp!1286412 () Bool)

(assert (=> b!4207961 (= e!2612260 tp!1286412)))

(assert (=> b!4207544 (= tp!1286297 e!2612260)))

(declare-fun b!4207960 () Bool)

(declare-fun tp!1286411 () Bool)

(declare-fun tp!1286413 () Bool)

(assert (=> b!4207960 (= e!2612260 (and tp!1286411 tp!1286413))))

(assert (= (and b!4207544 ((_ is ElementMatch!12645) (regex!7740 (h!51687 rules!3967)))) b!4207959))

(assert (= (and b!4207544 ((_ is Concat!20616) (regex!7740 (h!51687 rules!3967)))) b!4207960))

(assert (= (and b!4207544 ((_ is Star!12645) (regex!7740 (h!51687 rules!3967)))) b!4207961))

(assert (= (and b!4207544 ((_ is Union!12645) (regex!7740 (h!51687 rules!3967)))) b!4207962))

(declare-fun b_lambda!123913 () Bool)

(assert (= b_lambda!123909 (or (and b!4207533 b_free!123077) (and b!4207551 b_free!123085 (= (toChars!10311 (transformation!7740 (h!51687 rules!3967))) (toChars!10311 (transformation!7740 (rule!10848 tBis!41))))) (and b!4207553 b_free!123089 (= (toChars!10311 (transformation!7740 rBis!178)) (toChars!10311 (transformation!7740 (rule!10848 tBis!41))))) (and b!4207548 b_free!123081 (= (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (toChars!10311 (transformation!7740 (rule!10848 tBis!41))))) (and b!4207945 b_free!123097 (= (toChars!10311 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toChars!10311 (transformation!7740 (rule!10848 tBis!41))))) b_lambda!123913)))

(declare-fun b_lambda!123915 () Bool)

(assert (= b_lambda!123911 (or (and b!4207553 b_free!123089 (= (toChars!10311 (transformation!7740 rBis!178)) (toChars!10311 (transformation!7740 (rule!10848 t!8364))))) (and b!4207548 b_free!123081) (and b!4207551 b_free!123085 (= (toChars!10311 (transformation!7740 (h!51687 rules!3967))) (toChars!10311 (transformation!7740 (rule!10848 t!8364))))) (and b!4207533 b_free!123077 (= (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (toChars!10311 (transformation!7740 (rule!10848 t!8364))))) (and b!4207945 b_free!123097 (= (toChars!10311 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toChars!10311 (transformation!7740 (rule!10848 t!8364))))) b_lambda!123915)))

(declare-fun b_lambda!123917 () Bool)

(assert (= b_lambda!123897 (or (and b!4207533 b_free!123077) (and b!4207551 b_free!123085 (= (toChars!10311 (transformation!7740 (h!51687 rules!3967))) (toChars!10311 (transformation!7740 (rule!10848 tBis!41))))) (and b!4207553 b_free!123089 (= (toChars!10311 (transformation!7740 rBis!178)) (toChars!10311 (transformation!7740 (rule!10848 tBis!41))))) (and b!4207548 b_free!123081 (= (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (toChars!10311 (transformation!7740 (rule!10848 tBis!41))))) (and b!4207945 b_free!123097 (= (toChars!10311 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toChars!10311 (transformation!7740 (rule!10848 tBis!41))))) b_lambda!123917)))

(check-sat (not d!1240130) (not b!4207891) (not b_next!123785) (not b!4207953) (not b!4207655) (not b!4207851) (not b!4207901) (not b!4207947) (not b!4207711) b_and!330879 (not b!4207944) b_and!330825 (not d!1240146) (not b!4207589) (not d!1240100) (not b!4207883) (not b!4207962) (not bm!292788) b_and!330875 (not b!4207853) (not d!1240102) (not b_next!123787) (not b!4207960) (not b!4207856) (not d!1240144) (not b_next!123791) (not b!4207704) (not tb!252403) (not b!4207919) (not b!4207955) b_and!330877 b_and!330813 (not d!1240104) (not b!4207933) (not b_next!123783) (not b!4207714) (not b_lambda!123917) (not d!1240156) (not b!4207954) (not d!1240062) (not b!4207943) (not d!1240094) (not b!4207946) (not b!4207961) b_and!330821 (not b!4207648) (not b!4207880) (not d!1240128) (not b!4207877) (not b_lambda!123913) (not b!4207878) (not b!4207874) (not b!4207879) (not b!4207701) (not b!4207873) (not b!4207857) (not d!1240160) (not b!4207854) (not b!4207588) (not b!4207654) (not d!1240052) (not d!1240138) tp_is_empty!22257 (not b_next!123781) (not b!4207885) b_and!330873 (not b!4207869) (not b!4207950) (not d!1240142) (not b!4207852) (not b!4207949) (not b!4207895) (not b!4207957) (not b_next!123789) (not b!4207934) (not b!4207886) (not b!4207906) b_and!330881 (not b!4207907) (not b!4207870) (not b_next!123779) (not b!4207871) (not b!4207932) (not b!4207656) (not b!4207894) (not b!4207651) (not tb!252383) (not b!4207956) (not d!1240098) (not b!4207882) (not b!4207723) (not b_next!123799) (not b!4207858) (not d!1240084) (not b_lambda!123915) (not b!4207703) (not b_next!123793) (not b_next!123801) (not b!4207650) b_and!330817 (not b!4207912) (not b!4207951) (not b!4207649) (not b!4207855) (not b!4207893) (not b!4207905) (not b!4207652) (not b!4207903) b_and!330883 (not b!4207686) (not b!4207920) (not b!4207892) (not b!4207958) (not b!4207914))
(check-sat b_and!330879 b_and!330825 b_and!330875 (not b_next!123787) (not b_next!123791) (not b_next!123783) b_and!330821 (not b_next!123785) (not b_next!123789) b_and!330881 (not b_next!123779) (not b_next!123799) b_and!330817 b_and!330883 b_and!330877 b_and!330813 (not b_next!123781) b_and!330873 (not b_next!123793) (not b_next!123801))
(get-model)

(declare-fun d!1240182 () Bool)

(declare-fun c!716987 () Bool)

(assert (=> d!1240182 (= c!716987 ((_ is Node!13951) (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364)))))))

(declare-fun e!2612292 () Bool)

(assert (=> d!1240182 (= (inv!60864 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364)))) e!2612292)))

(declare-fun b!4208021 () Bool)

(declare-fun inv!60866 (Conc!13951) Bool)

(assert (=> b!4208021 (= e!2612292 (inv!60866 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364)))))))

(declare-fun b!4208022 () Bool)

(declare-fun e!2612293 () Bool)

(assert (=> b!4208022 (= e!2612292 e!2612293)))

(declare-fun res!1728590 () Bool)

(assert (=> b!4208022 (= res!1728590 (not ((_ is Leaf!21565) (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364))))))))

(assert (=> b!4208022 (=> res!1728590 e!2612293)))

(declare-fun b!4208023 () Bool)

(declare-fun inv!60867 (Conc!13951) Bool)

(assert (=> b!4208023 (= e!2612293 (inv!60867 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364)))))))

(assert (= (and d!1240182 c!716987) b!4208021))

(assert (= (and d!1240182 (not c!716987)) b!4208022))

(assert (= (and b!4208022 (not res!1728590)) b!4208023))

(declare-fun m!4796003 () Bool)

(assert (=> b!4208021 m!4796003))

(declare-fun m!4796005 () Bool)

(assert (=> b!4208023 m!4796005))

(assert (=> b!4207895 d!1240182))

(declare-fun d!1240184 () Bool)

(assert (=> d!1240184 (= (head!8928 pBis!121) (h!51686 pBis!121))))

(assert (=> b!4207905 d!1240184))

(declare-fun d!1240186 () Bool)

(assert (=> d!1240186 (= (head!8928 input!3517) (h!51686 input!3517))))

(assert (=> b!4207905 d!1240186))

(declare-fun d!1240188 () Bool)

(assert (=> d!1240188 (= (get!15048 lt!1498120) (v!40791 lt!1498120))))

(assert (=> b!4207648 d!1240188))

(declare-fun d!1240190 () Bool)

(declare-fun dynLambda!19948 (Int BalanceConc!27496) TokenValue!7970)

(assert (=> d!1240190 (= (apply!10679 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))) (seqFromList!5739 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498120))))) (dynLambda!19948 (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120))))) (seqFromList!5739 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498120))))))))

(declare-fun b_lambda!123923 () Bool)

(assert (=> (not b_lambda!123923) (not d!1240190)))

(declare-fun t!347626 () Bool)

(declare-fun tb!252435 () Bool)

(assert (=> (and b!4207553 (= (toValue!10452 (transformation!7740 rBis!178)) (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))) t!347626) tb!252435))

(declare-fun result!307684 () Bool)

(assert (=> tb!252435 (= result!307684 (inv!21 (dynLambda!19948 (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120))))) (seqFromList!5739 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498120)))))))))

(declare-fun m!4796007 () Bool)

(assert (=> tb!252435 m!4796007))

(assert (=> d!1240190 t!347626))

(declare-fun b_and!330905 () Bool)

(assert (= b_and!330825 (and (=> t!347626 result!307684) b_and!330905)))

(declare-fun t!347628 () Bool)

(declare-fun tb!252437 () Bool)

(assert (=> (and b!4207533 (= (toValue!10452 (transformation!7740 (rule!10848 tBis!41))) (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))) t!347628) tb!252437))

(declare-fun result!307688 () Bool)

(assert (= result!307688 result!307684))

(assert (=> d!1240190 t!347628))

(declare-fun b_and!330907 () Bool)

(assert (= b_and!330813 (and (=> t!347628 result!307688) b_and!330907)))

(declare-fun t!347630 () Bool)

(declare-fun tb!252439 () Bool)

(assert (=> (and b!4207945 (= (toValue!10452 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))) t!347630) tb!252439))

(declare-fun result!307690 () Bool)

(assert (= result!307690 result!307684))

(assert (=> d!1240190 t!347630))

(declare-fun b_and!330909 () Bool)

(assert (= b_and!330881 (and (=> t!347630 result!307690) b_and!330909)))

(declare-fun tb!252441 () Bool)

(declare-fun t!347632 () Bool)

(assert (=> (and b!4207548 (= (toValue!10452 (transformation!7740 (rule!10848 t!8364))) (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))) t!347632) tb!252441))

(declare-fun result!307692 () Bool)

(assert (= result!307692 result!307684))

(assert (=> d!1240190 t!347632))

(declare-fun b_and!330911 () Bool)

(assert (= b_and!330817 (and (=> t!347632 result!307692) b_and!330911)))

(declare-fun t!347634 () Bool)

(declare-fun tb!252443 () Bool)

(assert (=> (and b!4207551 (= (toValue!10452 (transformation!7740 (h!51687 rules!3967))) (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))) t!347634) tb!252443))

(declare-fun result!307694 () Bool)

(assert (= result!307694 result!307684))

(assert (=> d!1240190 t!347634))

(declare-fun b_and!330913 () Bool)

(assert (= b_and!330821 (and (=> t!347634 result!307694) b_and!330913)))

(assert (=> d!1240190 m!4795641))

(declare-fun m!4796009 () Bool)

(assert (=> d!1240190 m!4796009))

(assert (=> b!4207648 d!1240190))

(declare-fun d!1240192 () Bool)

(declare-fun fromListB!2632 (List!46390) BalanceConc!27496)

(assert (=> d!1240192 (= (seqFromList!5739 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498120)))) (fromListB!2632 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498120)))))))

(declare-fun bs!597246 () Bool)

(assert (= bs!597246 d!1240192))

(declare-fun m!4796011 () Bool)

(assert (=> bs!597246 m!4796011))

(assert (=> b!4207648 d!1240192))

(declare-fun d!1240194 () Bool)

(assert (=> d!1240194 true))

(declare-fun lambda!129703 () Int)

(declare-fun order!24521 () Int)

(declare-fun order!24519 () Int)

(declare-fun dynLambda!19951 (Int Int) Int)

(declare-fun dynLambda!19952 (Int Int) Int)

(assert (=> d!1240194 (< (dynLambda!19951 order!24519 (toChars!10311 (transformation!7740 (rule!10848 t!8364)))) (dynLambda!19952 order!24521 lambda!129703))))

(assert (=> d!1240194 true))

(declare-fun order!24523 () Int)

(declare-fun dynLambda!19953 (Int Int) Int)

(assert (=> d!1240194 (< (dynLambda!19953 order!24523 (toValue!10452 (transformation!7740 (rule!10848 t!8364)))) (dynLambda!19952 order!24521 lambda!129703))))

(declare-fun Forall!1575 (Int) Bool)

(assert (=> d!1240194 (= (semiInverseModEq!3360 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (toValue!10452 (transformation!7740 (rule!10848 t!8364)))) (Forall!1575 lambda!129703))))

(declare-fun bs!597252 () Bool)

(assert (= bs!597252 d!1240194))

(declare-fun m!4796047 () Bool)

(assert (=> bs!597252 m!4796047))

(assert (=> d!1240142 d!1240194))

(declare-fun d!1240220 () Bool)

(declare-fun lt!1498294 () Int)

(assert (=> d!1240220 (>= lt!1498294 0)))

(declare-fun e!2612331 () Int)

(assert (=> d!1240220 (= lt!1498294 e!2612331)))

(declare-fun c!717008 () Bool)

(assert (=> d!1240220 (= c!717008 ((_ is Nil!46266) (t!347561 p!3001)))))

(assert (=> d!1240220 (= (size!33985 (t!347561 p!3001)) lt!1498294)))

(declare-fun b!4208073 () Bool)

(assert (=> b!4208073 (= e!2612331 0)))

(declare-fun b!4208074 () Bool)

(assert (=> b!4208074 (= e!2612331 (+ 1 (size!33985 (t!347561 (t!347561 p!3001)))))))

(assert (= (and d!1240220 c!717008) b!4208073))

(assert (= (and d!1240220 (not c!717008)) b!4208074))

(declare-fun m!4796049 () Bool)

(assert (=> b!4208074 m!4796049))

(assert (=> b!4207903 d!1240220))

(declare-fun d!1240222 () Bool)

(declare-fun lt!1498298 () Int)

(assert (=> d!1240222 (>= lt!1498298 0)))

(declare-fun e!2612332 () Int)

(assert (=> d!1240222 (= lt!1498298 e!2612332)))

(declare-fun c!717009 () Bool)

(assert (=> d!1240222 (= c!717009 ((_ is Nil!46266) (_2!25139 (get!15048 lt!1498120))))))

(assert (=> d!1240222 (= (size!33985 (_2!25139 (get!15048 lt!1498120))) lt!1498298)))

(declare-fun b!4208089 () Bool)

(assert (=> b!4208089 (= e!2612332 0)))

(declare-fun b!4208090 () Bool)

(assert (=> b!4208090 (= e!2612332 (+ 1 (size!33985 (t!347561 (_2!25139 (get!15048 lt!1498120))))))))

(assert (= (and d!1240222 c!717009) b!4208089))

(assert (= (and d!1240222 (not c!717009)) b!4208090))

(declare-fun m!4796051 () Bool)

(assert (=> b!4208090 m!4796051))

(assert (=> b!4207652 d!1240222))

(assert (=> b!4207652 d!1240188))

(declare-fun d!1240224 () Bool)

(declare-fun lt!1498299 () Int)

(assert (=> d!1240224 (>= lt!1498299 0)))

(declare-fun e!2612333 () Int)

(assert (=> d!1240224 (= lt!1498299 e!2612333)))

(declare-fun c!717010 () Bool)

(assert (=> d!1240224 (= c!717010 ((_ is Nil!46266) input!3517))))

(assert (=> d!1240224 (= (size!33985 input!3517) lt!1498299)))

(declare-fun b!4208091 () Bool)

(assert (=> b!4208091 (= e!2612333 0)))

(declare-fun b!4208092 () Bool)

(assert (=> b!4208092 (= e!2612333 (+ 1 (size!33985 (t!347561 input!3517))))))

(assert (= (and d!1240224 c!717010) b!4208091))

(assert (= (and d!1240224 (not c!717010)) b!4208092))

(declare-fun m!4796053 () Bool)

(assert (=> b!4208092 m!4796053))

(assert (=> b!4207652 d!1240224))

(assert (=> b!4207907 d!1240224))

(assert (=> b!4207907 d!1240148))

(declare-fun d!1240226 () Bool)

(assert (=> d!1240226 (= (list!16723 lt!1498149) (list!16725 (c!716929 lt!1498149)))))

(declare-fun bs!597253 () Bool)

(assert (= bs!597253 d!1240226))

(declare-fun m!4796055 () Bool)

(assert (=> bs!597253 m!4796055))

(assert (=> d!1240102 d!1240226))

(declare-fun d!1240228 () Bool)

(declare-fun e!2612335 () Bool)

(assert (=> d!1240228 e!2612335))

(declare-fun res!1728607 () Bool)

(assert (=> d!1240228 (=> res!1728607 e!2612335)))

(declare-fun lt!1498300 () Bool)

(assert (=> d!1240228 (= res!1728607 (not lt!1498300))))

(declare-fun e!2612336 () Bool)

(assert (=> d!1240228 (= lt!1498300 e!2612336)))

(declare-fun res!1728608 () Bool)

(assert (=> d!1240228 (=> res!1728608 e!2612336)))

(assert (=> d!1240228 (= res!1728608 ((_ is Nil!46266) (tail!6775 p!3001)))))

(assert (=> d!1240228 (= (isPrefix!4599 (tail!6775 p!3001) (tail!6775 input!3517)) lt!1498300)))

(declare-fun b!4208094 () Bool)

(declare-fun res!1728606 () Bool)

(declare-fun e!2612334 () Bool)

(assert (=> b!4208094 (=> (not res!1728606) (not e!2612334))))

(assert (=> b!4208094 (= res!1728606 (= (head!8928 (tail!6775 p!3001)) (head!8928 (tail!6775 input!3517))))))

(declare-fun b!4208093 () Bool)

(assert (=> b!4208093 (= e!2612336 e!2612334)))

(declare-fun res!1728609 () Bool)

(assert (=> b!4208093 (=> (not res!1728609) (not e!2612334))))

(assert (=> b!4208093 (= res!1728609 (not ((_ is Nil!46266) (tail!6775 input!3517))))))

(declare-fun b!4208095 () Bool)

(assert (=> b!4208095 (= e!2612334 (isPrefix!4599 (tail!6775 (tail!6775 p!3001)) (tail!6775 (tail!6775 input!3517))))))

(declare-fun b!4208096 () Bool)

(assert (=> b!4208096 (= e!2612335 (>= (size!33985 (tail!6775 input!3517)) (size!33985 (tail!6775 p!3001))))))

(assert (= (and d!1240228 (not res!1728608)) b!4208093))

(assert (= (and b!4208093 res!1728609) b!4208094))

(assert (= (and b!4208094 res!1728606) b!4208095))

(assert (= (and d!1240228 (not res!1728607)) b!4208096))

(assert (=> b!4208094 m!4795893))

(declare-fun m!4796057 () Bool)

(assert (=> b!4208094 m!4796057))

(assert (=> b!4208094 m!4795873))

(declare-fun m!4796059 () Bool)

(assert (=> b!4208094 m!4796059))

(assert (=> b!4208095 m!4795893))

(declare-fun m!4796061 () Bool)

(assert (=> b!4208095 m!4796061))

(assert (=> b!4208095 m!4795873))

(declare-fun m!4796063 () Bool)

(assert (=> b!4208095 m!4796063))

(assert (=> b!4208095 m!4796061))

(assert (=> b!4208095 m!4796063))

(declare-fun m!4796065 () Bool)

(assert (=> b!4208095 m!4796065))

(assert (=> b!4208096 m!4795873))

(declare-fun m!4796067 () Bool)

(assert (=> b!4208096 m!4796067))

(assert (=> b!4208096 m!4795893))

(declare-fun m!4796069 () Bool)

(assert (=> b!4208096 m!4796069))

(assert (=> b!4207878 d!1240228))

(declare-fun d!1240230 () Bool)

(assert (=> d!1240230 (= (tail!6775 p!3001) (t!347561 p!3001))))

(assert (=> b!4207878 d!1240230))

(declare-fun d!1240232 () Bool)

(assert (=> d!1240232 (= (tail!6775 input!3517) (t!347561 input!3517))))

(assert (=> b!4207878 d!1240232))

(declare-fun d!1240234 () Bool)

(declare-fun charsToBigInt!0 (List!46389 Int) Int)

(assert (=> d!1240234 (= (inv!15 (value!241119 t!8364)) (= (charsToBigInt!0 (text!56239 (value!241119 t!8364)) 0) (value!241114 (value!241119 t!8364))))))

(declare-fun bs!597254 () Bool)

(assert (= bs!597254 d!1240234))

(declare-fun m!4796115 () Bool)

(assert (=> bs!597254 m!4796115))

(assert (=> b!4207883 d!1240234))

(declare-fun b!4208100 () Bool)

(declare-fun e!2612338 () List!46390)

(assert (=> b!4208100 (= e!2612338 (Cons!46266 (h!51686 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120))))) (++!11814 (t!347561 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120))))) (_2!25139 (get!15048 lt!1498120)))))))

(declare-fun b!4208101 () Bool)

(declare-fun res!1728611 () Bool)

(declare-fun e!2612337 () Bool)

(assert (=> b!4208101 (=> (not res!1728611) (not e!2612337))))

(declare-fun lt!1498301 () List!46390)

(assert (=> b!4208101 (= res!1728611 (= (size!33985 lt!1498301) (+ (size!33985 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120))))) (size!33985 (_2!25139 (get!15048 lt!1498120))))))))

(declare-fun b!4208102 () Bool)

(assert (=> b!4208102 (= e!2612337 (or (not (= (_2!25139 (get!15048 lt!1498120)) Nil!46266)) (= lt!1498301 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120)))))))))

(declare-fun d!1240238 () Bool)

(assert (=> d!1240238 e!2612337))

(declare-fun res!1728610 () Bool)

(assert (=> d!1240238 (=> (not res!1728610) (not e!2612337))))

(assert (=> d!1240238 (= res!1728610 (= (content!7235 lt!1498301) ((_ map or) (content!7235 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120))))) (content!7235 (_2!25139 (get!15048 lt!1498120))))))))

(assert (=> d!1240238 (= lt!1498301 e!2612338)))

(declare-fun c!717011 () Bool)

(assert (=> d!1240238 (= c!717011 ((_ is Nil!46266) (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120))))))))

(assert (=> d!1240238 (= (++!11814 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120)))) (_2!25139 (get!15048 lt!1498120))) lt!1498301)))

(declare-fun b!4208099 () Bool)

(assert (=> b!4208099 (= e!2612338 (_2!25139 (get!15048 lt!1498120)))))

(assert (= (and d!1240238 c!717011) b!4208099))

(assert (= (and d!1240238 (not c!717011)) b!4208100))

(assert (= (and d!1240238 res!1728610) b!4208101))

(assert (= (and b!4208101 res!1728611) b!4208102))

(declare-fun m!4796119 () Bool)

(assert (=> b!4208100 m!4796119))

(declare-fun m!4796121 () Bool)

(assert (=> b!4208101 m!4796121))

(assert (=> b!4208101 m!4795635))

(declare-fun m!4796123 () Bool)

(assert (=> b!4208101 m!4796123))

(assert (=> b!4208101 m!4795649))

(declare-fun m!4796125 () Bool)

(assert (=> d!1240238 m!4796125))

(assert (=> d!1240238 m!4795635))

(declare-fun m!4796127 () Bool)

(assert (=> d!1240238 m!4796127))

(declare-fun m!4796129 () Bool)

(assert (=> d!1240238 m!4796129))

(assert (=> b!4207650 d!1240238))

(declare-fun d!1240240 () Bool)

(assert (=> d!1240240 (= (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120)))) (list!16725 (c!716929 (charsOf!5163 (_1!25139 (get!15048 lt!1498120))))))))

(declare-fun bs!597255 () Bool)

(assert (= bs!597255 d!1240240))

(declare-fun m!4796131 () Bool)

(assert (=> bs!597255 m!4796131))

(assert (=> b!4207650 d!1240240))

(declare-fun d!1240242 () Bool)

(declare-fun lt!1498302 () BalanceConc!27496)

(assert (=> d!1240242 (= (list!16723 lt!1498302) (originalCharacters!8122 (_1!25139 (get!15048 lt!1498120))))))

(assert (=> d!1240242 (= lt!1498302 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120))))) (value!241119 (_1!25139 (get!15048 lt!1498120)))))))

(assert (=> d!1240242 (= (charsOf!5163 (_1!25139 (get!15048 lt!1498120))) lt!1498302)))

(declare-fun b_lambda!123927 () Bool)

(assert (=> (not b_lambda!123927) (not d!1240242)))

(declare-fun tb!252455 () Bool)

(declare-fun t!347646 () Bool)

(assert (=> (and b!4207533 (= (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))) t!347646) tb!252455))

(declare-fun b!4208103 () Bool)

(declare-fun e!2612342 () Bool)

(declare-fun tp!1286417 () Bool)

(assert (=> b!4208103 (= e!2612342 (and (inv!60864 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120))))) (value!241119 (_1!25139 (get!15048 lt!1498120)))))) tp!1286417))))

(declare-fun result!307708 () Bool)

(assert (=> tb!252455 (= result!307708 (and (inv!60865 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120))))) (value!241119 (_1!25139 (get!15048 lt!1498120))))) e!2612342))))

(assert (= tb!252455 b!4208103))

(declare-fun m!4796135 () Bool)

(assert (=> b!4208103 m!4796135))

(declare-fun m!4796137 () Bool)

(assert (=> tb!252455 m!4796137))

(assert (=> d!1240242 t!347646))

(declare-fun b_and!330925 () Bool)

(assert (= b_and!330873 (and (=> t!347646 result!307708) b_and!330925)))

(declare-fun t!347648 () Bool)

(declare-fun tb!252457 () Bool)

(assert (=> (and b!4207945 (= (toChars!10311 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))) t!347648) tb!252457))

(declare-fun result!307710 () Bool)

(assert (= result!307710 result!307708))

(assert (=> d!1240242 t!347648))

(declare-fun b_and!330927 () Bool)

(assert (= b_and!330883 (and (=> t!347648 result!307710) b_and!330927)))

(declare-fun t!347650 () Bool)

(declare-fun tb!252459 () Bool)

(assert (=> (and b!4207553 (= (toChars!10311 (transformation!7740 rBis!178)) (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))) t!347650) tb!252459))

(declare-fun result!307712 () Bool)

(assert (= result!307712 result!307708))

(assert (=> d!1240242 t!347650))

(declare-fun b_and!330929 () Bool)

(assert (= b_and!330879 (and (=> t!347650 result!307712) b_and!330929)))

(declare-fun tb!252461 () Bool)

(declare-fun t!347652 () Bool)

(assert (=> (and b!4207548 (= (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))) t!347652) tb!252461))

(declare-fun result!307714 () Bool)

(assert (= result!307714 result!307708))

(assert (=> d!1240242 t!347652))

(declare-fun b_and!330931 () Bool)

(assert (= b_and!330875 (and (=> t!347652 result!307714) b_and!330931)))

(declare-fun t!347654 () Bool)

(declare-fun tb!252463 () Bool)

(assert (=> (and b!4207551 (= (toChars!10311 (transformation!7740 (h!51687 rules!3967))) (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))) t!347654) tb!252463))

(declare-fun result!307716 () Bool)

(assert (= result!307716 result!307708))

(assert (=> d!1240242 t!347654))

(declare-fun b_and!330933 () Bool)

(assert (= b_and!330877 (and (=> t!347654 result!307716) b_and!330933)))

(declare-fun m!4796139 () Bool)

(assert (=> d!1240242 m!4796139))

(declare-fun m!4796141 () Bool)

(assert (=> d!1240242 m!4796141))

(assert (=> b!4207650 d!1240242))

(assert (=> b!4207650 d!1240188))

(declare-fun d!1240246 () Bool)

(assert (=> d!1240246 true))

(declare-fun order!24529 () Int)

(declare-fun lambda!129709 () Int)

(declare-fun dynLambda!19954 (Int Int) Int)

(assert (=> d!1240246 (< (dynLambda!19953 order!24523 (toValue!10452 (transformation!7740 rBis!178))) (dynLambda!19954 order!24529 lambda!129709))))

(declare-fun Forall2!1175 (Int) Bool)

(assert (=> d!1240246 (= (equivClasses!3259 (toChars!10311 (transformation!7740 rBis!178)) (toValue!10452 (transformation!7740 rBis!178))) (Forall2!1175 lambda!129709))))

(declare-fun bs!597256 () Bool)

(assert (= bs!597256 d!1240246))

(declare-fun m!4796147 () Bool)

(assert (=> bs!597256 m!4796147))

(assert (=> b!4207885 d!1240246))

(declare-fun b!4208129 () Bool)

(declare-fun e!2612356 () List!46390)

(assert (=> b!4208129 (= e!2612356 (++!11814 (list!16725 (left!34444 (c!716929 (charsOf!5163 tBis!41)))) (list!16725 (right!34774 (c!716929 (charsOf!5163 tBis!41))))))))

(declare-fun b!4208128 () Bool)

(declare-fun list!16726 (IArray!27907) List!46390)

(assert (=> b!4208128 (= e!2612356 (list!16726 (xs!17257 (c!716929 (charsOf!5163 tBis!41)))))))

(declare-fun b!4208126 () Bool)

(declare-fun e!2612355 () List!46390)

(assert (=> b!4208126 (= e!2612355 Nil!46266)))

(declare-fun d!1240248 () Bool)

(declare-fun c!717019 () Bool)

(assert (=> d!1240248 (= c!717019 ((_ is Empty!13951) (c!716929 (charsOf!5163 tBis!41))))))

(assert (=> d!1240248 (= (list!16725 (c!716929 (charsOf!5163 tBis!41))) e!2612355)))

(declare-fun b!4208127 () Bool)

(assert (=> b!4208127 (= e!2612355 e!2612356)))

(declare-fun c!717020 () Bool)

(assert (=> b!4208127 (= c!717020 ((_ is Leaf!21565) (c!716929 (charsOf!5163 tBis!41))))))

(assert (= (and d!1240248 c!717019) b!4208126))

(assert (= (and d!1240248 (not c!717019)) b!4208127))

(assert (= (and b!4208127 c!717020) b!4208128))

(assert (= (and b!4208127 (not c!717020)) b!4208129))

(declare-fun m!4796161 () Bool)

(assert (=> b!4208129 m!4796161))

(declare-fun m!4796163 () Bool)

(assert (=> b!4208129 m!4796163))

(assert (=> b!4208129 m!4796161))

(assert (=> b!4208129 m!4796163))

(declare-fun m!4796165 () Bool)

(assert (=> b!4208129 m!4796165))

(declare-fun m!4796167 () Bool)

(assert (=> b!4208128 m!4796167))

(assert (=> d!1240100 d!1240248))

(declare-fun d!1240258 () Bool)

(assert (=> d!1240258 (= (isEmpty!27398 lt!1498180) (not ((_ is Some!9927) lt!1498180)))))

(assert (=> d!1240104 d!1240258))

(declare-fun d!1240260 () Bool)

(assert (=> d!1240260 (= (isEmpty!27399 (_1!25141 lt!1498182)) ((_ is Nil!46266) (_1!25141 lt!1498182)))))

(assert (=> d!1240104 d!1240260))

(declare-fun d!1240262 () Bool)

(declare-fun lt!1498337 () tuple2!44014)

(assert (=> d!1240262 (= (++!11814 (_1!25141 lt!1498337) (_2!25141 lt!1498337)) input!3517)))

(declare-fun sizeTr!317 (List!46390 Int) Int)

(assert (=> d!1240262 (= lt!1498337 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 0 input!3517 input!3517 (sizeTr!317 input!3517 0)))))

(declare-fun lt!1498333 () Unit!65381)

(declare-fun lt!1498335 () Unit!65381)

(assert (=> d!1240262 (= lt!1498333 lt!1498335)))

(declare-fun lt!1498336 () List!46390)

(declare-fun lt!1498334 () Int)

(assert (=> d!1240262 (= (sizeTr!317 lt!1498336 lt!1498334) (+ (size!33985 lt!1498336) lt!1498334))))

(declare-fun lemmaSizeTrEqualsSize!316 (List!46390 Int) Unit!65381)

(assert (=> d!1240262 (= lt!1498335 (lemmaSizeTrEqualsSize!316 lt!1498336 lt!1498334))))

(assert (=> d!1240262 (= lt!1498334 0)))

(assert (=> d!1240262 (= lt!1498336 Nil!46266)))

(declare-fun lt!1498338 () Unit!65381)

(declare-fun lt!1498339 () Unit!65381)

(assert (=> d!1240262 (= lt!1498338 lt!1498339)))

(declare-fun lt!1498340 () Int)

(assert (=> d!1240262 (= (sizeTr!317 input!3517 lt!1498340) (+ (size!33985 input!3517) lt!1498340))))

(assert (=> d!1240262 (= lt!1498339 (lemmaSizeTrEqualsSize!316 input!3517 lt!1498340))))

(assert (=> d!1240262 (= lt!1498340 0)))

(assert (=> d!1240262 (validRegex!5738 (regex!7740 rBis!178))))

(assert (=> d!1240262 (= (findLongestMatch!1552 (regex!7740 rBis!178) input!3517) lt!1498337)))

(declare-fun bs!597262 () Bool)

(assert (= bs!597262 d!1240262))

(declare-fun m!4796235 () Bool)

(assert (=> bs!597262 m!4796235))

(assert (=> bs!597262 m!4795939))

(declare-fun m!4796237 () Bool)

(assert (=> bs!597262 m!4796237))

(declare-fun m!4796239 () Bool)

(assert (=> bs!597262 m!4796239))

(declare-fun m!4796241 () Bool)

(assert (=> bs!597262 m!4796241))

(assert (=> bs!597262 m!4795651))

(declare-fun m!4796243 () Bool)

(assert (=> bs!597262 m!4796243))

(assert (=> bs!597262 m!4796243))

(declare-fun m!4796245 () Bool)

(assert (=> bs!597262 m!4796245))

(declare-fun m!4796247 () Bool)

(assert (=> bs!597262 m!4796247))

(declare-fun m!4796249 () Bool)

(assert (=> bs!597262 m!4796249))

(assert (=> d!1240104 d!1240262))

(assert (=> d!1240104 d!1240156))

(declare-fun d!1240296 () Bool)

(assert (=> d!1240296 (= (inv!15 (value!241119 tBis!41)) (= (charsToBigInt!0 (text!56239 (value!241119 tBis!41)) 0) (value!241114 (value!241119 tBis!41))))))

(declare-fun bs!597263 () Bool)

(assert (= bs!597263 d!1240296))

(declare-fun m!4796251 () Bool)

(assert (=> bs!597263 m!4796251))

(assert (=> b!4207704 d!1240296))

(declare-fun d!1240298 () Bool)

(declare-fun c!717032 () Bool)

(assert (=> d!1240298 (= c!717032 ((_ is Node!13951) (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41)))))))

(declare-fun e!2612378 () Bool)

(assert (=> d!1240298 (= (inv!60864 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41)))) e!2612378)))

(declare-fun b!4208172 () Bool)

(assert (=> b!4208172 (= e!2612378 (inv!60866 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41)))))))

(declare-fun b!4208173 () Bool)

(declare-fun e!2612379 () Bool)

(assert (=> b!4208173 (= e!2612378 e!2612379)))

(declare-fun res!1728630 () Bool)

(assert (=> b!4208173 (= res!1728630 (not ((_ is Leaf!21565) (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41))))))))

(assert (=> b!4208173 (=> res!1728630 e!2612379)))

(declare-fun b!4208174 () Bool)

(assert (=> b!4208174 (= e!2612379 (inv!60867 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41)))))))

(assert (= (and d!1240298 c!717032) b!4208172))

(assert (= (and d!1240298 (not c!717032)) b!4208173))

(assert (= (and b!4208173 (not res!1728630)) b!4208174))

(declare-fun m!4796253 () Bool)

(assert (=> b!4208172 m!4796253))

(declare-fun m!4796255 () Bool)

(assert (=> b!4208174 m!4796255))

(assert (=> b!4207723 d!1240298))

(declare-fun d!1240300 () Bool)

(assert (=> d!1240300 (= (get!15048 lt!1498180) (v!40791 lt!1498180))))

(assert (=> b!4207853 d!1240300))

(declare-fun d!1240302 () Bool)

(declare-fun lt!1498341 () Int)

(assert (=> d!1240302 (>= lt!1498341 0)))

(declare-fun e!2612380 () Int)

(assert (=> d!1240302 (= lt!1498341 e!2612380)))

(declare-fun c!717033 () Bool)

(assert (=> d!1240302 (= c!717033 ((_ is Nil!46266) (originalCharacters!8122 (_1!25139 (get!15048 lt!1498180)))))))

(assert (=> d!1240302 (= (size!33985 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498180)))) lt!1498341)))

(declare-fun b!4208175 () Bool)

(assert (=> b!4208175 (= e!2612380 0)))

(declare-fun b!4208176 () Bool)

(assert (=> b!4208176 (= e!2612380 (+ 1 (size!33985 (t!347561 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498180)))))))))

(assert (= (and d!1240302 c!717033) b!4208175))

(assert (= (and d!1240302 (not c!717033)) b!4208176))

(declare-fun m!4796257 () Bool)

(assert (=> b!4208176 m!4796257))

(assert (=> b!4207853 d!1240302))

(declare-fun b!4208181 () Bool)

(declare-fun e!2612384 () List!46390)

(assert (=> b!4208181 (= e!2612384 (Cons!46266 (h!51686 (t!347561 p!3001)) (++!11814 (t!347561 (t!347561 p!3001)) suffix!1557)))))

(declare-fun b!4208182 () Bool)

(declare-fun res!1728633 () Bool)

(declare-fun e!2612383 () Bool)

(assert (=> b!4208182 (=> (not res!1728633) (not e!2612383))))

(declare-fun lt!1498342 () List!46390)

(assert (=> b!4208182 (= res!1728633 (= (size!33985 lt!1498342) (+ (size!33985 (t!347561 p!3001)) (size!33985 suffix!1557))))))

(declare-fun b!4208183 () Bool)

(assert (=> b!4208183 (= e!2612383 (or (not (= suffix!1557 Nil!46266)) (= lt!1498342 (t!347561 p!3001))))))

(declare-fun d!1240304 () Bool)

(assert (=> d!1240304 e!2612383))

(declare-fun res!1728632 () Bool)

(assert (=> d!1240304 (=> (not res!1728632) (not e!2612383))))

(assert (=> d!1240304 (= res!1728632 (= (content!7235 lt!1498342) ((_ map or) (content!7235 (t!347561 p!3001)) (content!7235 suffix!1557))))))

(assert (=> d!1240304 (= lt!1498342 e!2612384)))

(declare-fun c!717035 () Bool)

(assert (=> d!1240304 (= c!717035 ((_ is Nil!46266) (t!347561 p!3001)))))

(assert (=> d!1240304 (= (++!11814 (t!347561 p!3001) suffix!1557) lt!1498342)))

(declare-fun b!4208180 () Bool)

(assert (=> b!4208180 (= e!2612384 suffix!1557)))

(assert (= (and d!1240304 c!717035) b!4208180))

(assert (= (and d!1240304 (not c!717035)) b!4208181))

(assert (= (and d!1240304 res!1728632) b!4208182))

(assert (= (and b!4208182 res!1728633) b!4208183))

(declare-fun m!4796263 () Bool)

(assert (=> b!4208181 m!4796263))

(declare-fun m!4796265 () Bool)

(assert (=> b!4208182 m!4796265))

(assert (=> b!4208182 m!4795931))

(assert (=> b!4208182 m!4795883))

(declare-fun m!4796267 () Bool)

(assert (=> d!1240304 m!4796267))

(declare-fun m!4796269 () Bool)

(assert (=> d!1240304 m!4796269))

(assert (=> d!1240304 m!4795889))

(assert (=> b!4207873 d!1240304))

(declare-fun b!4208233 () Bool)

(declare-fun e!2612416 () Bool)

(declare-fun lt!1498371 () Bool)

(declare-fun call!292828 () Bool)

(assert (=> b!4208233 (= e!2612416 (= lt!1498371 call!292828))))

(declare-fun b!4208234 () Bool)

(declare-fun e!2612409 () Bool)

(assert (=> b!4208234 (= e!2612409 (= (head!8928 (_1!25141 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517)))) (c!716928 (regex!7740 rBis!178))))))

(declare-fun b!4208235 () Bool)

(declare-fun e!2612414 () Bool)

(assert (=> b!4208235 (= e!2612414 (nullable!4451 (regex!7740 rBis!178)))))

(declare-fun b!4208236 () Bool)

(declare-fun res!1728668 () Bool)

(assert (=> b!4208236 (=> (not res!1728668) (not e!2612409))))

(assert (=> b!4208236 (= res!1728668 (isEmpty!27399 (tail!6775 (_1!25141 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517))))))))

(declare-fun b!4208237 () Bool)

(declare-fun e!2612415 () Bool)

(declare-fun e!2612408 () Bool)

(assert (=> b!4208237 (= e!2612415 e!2612408)))

(declare-fun res!1728666 () Bool)

(assert (=> b!4208237 (=> (not res!1728666) (not e!2612408))))

(assert (=> b!4208237 (= res!1728666 (not lt!1498371))))

(declare-fun b!4208238 () Bool)

(declare-fun e!2612410 () Bool)

(assert (=> b!4208238 (= e!2612410 (not (= (head!8928 (_1!25141 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517)))) (c!716928 (regex!7740 rBis!178)))))))

(declare-fun bm!292823 () Bool)

(assert (=> bm!292823 (= call!292828 (isEmpty!27399 (_1!25141 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517)))))))

(declare-fun b!4208239 () Bool)

(declare-fun e!2612413 () Bool)

(assert (=> b!4208239 (= e!2612416 e!2612413)))

(declare-fun c!717046 () Bool)

(assert (=> b!4208239 (= c!717046 ((_ is EmptyLang!12645) (regex!7740 rBis!178)))))

(declare-fun b!4208240 () Bool)

(declare-fun res!1728662 () Bool)

(assert (=> b!4208240 (=> (not res!1728662) (not e!2612409))))

(assert (=> b!4208240 (= res!1728662 (not call!292828))))

(declare-fun d!1240308 () Bool)

(assert (=> d!1240308 e!2612416))

(declare-fun c!717048 () Bool)

(assert (=> d!1240308 (= c!717048 ((_ is EmptyExpr!12645) (regex!7740 rBis!178)))))

(assert (=> d!1240308 (= lt!1498371 e!2612414)))

(declare-fun c!717049 () Bool)

(assert (=> d!1240308 (= c!717049 (isEmpty!27399 (_1!25141 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517)))))))

(assert (=> d!1240308 (validRegex!5738 (regex!7740 rBis!178))))

(assert (=> d!1240308 (= (matchR!6358 (regex!7740 rBis!178) (_1!25141 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517)))) lt!1498371)))

(declare-fun b!4208241 () Bool)

(declare-fun derivativeStep!3831 (Regex!12645 C!25484) Regex!12645)

(assert (=> b!4208241 (= e!2612414 (matchR!6358 (derivativeStep!3831 (regex!7740 rBis!178) (head!8928 (_1!25141 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517))))) (tail!6775 (_1!25141 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517))))))))

(declare-fun b!4208242 () Bool)

(assert (=> b!4208242 (= e!2612408 e!2612410)))

(declare-fun res!1728664 () Bool)

(assert (=> b!4208242 (=> res!1728664 e!2612410)))

(assert (=> b!4208242 (= res!1728664 call!292828)))

(declare-fun b!4208243 () Bool)

(declare-fun res!1728667 () Bool)

(assert (=> b!4208243 (=> res!1728667 e!2612415)))

(assert (=> b!4208243 (= res!1728667 (not ((_ is ElementMatch!12645) (regex!7740 rBis!178))))))

(assert (=> b!4208243 (= e!2612413 e!2612415)))

(declare-fun b!4208244 () Bool)

(declare-fun res!1728660 () Bool)

(assert (=> b!4208244 (=> res!1728660 e!2612410)))

(assert (=> b!4208244 (= res!1728660 (not (isEmpty!27399 (tail!6775 (_1!25141 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517)))))))))

(declare-fun b!4208245 () Bool)

(declare-fun res!1728663 () Bool)

(assert (=> b!4208245 (=> res!1728663 e!2612415)))

(assert (=> b!4208245 (= res!1728663 e!2612409)))

(declare-fun res!1728665 () Bool)

(assert (=> b!4208245 (=> (not res!1728665) (not e!2612409))))

(assert (=> b!4208245 (= res!1728665 lt!1498371)))

(declare-fun b!4208246 () Bool)

(assert (=> b!4208246 (= e!2612413 (not lt!1498371))))

(assert (= (and d!1240308 c!717049) b!4208235))

(assert (= (and d!1240308 (not c!717049)) b!4208241))

(assert (= (and d!1240308 c!717048) b!4208233))

(assert (= (and d!1240308 (not c!717048)) b!4208239))

(assert (= (and b!4208239 c!717046) b!4208246))

(assert (= (and b!4208239 (not c!717046)) b!4208243))

(assert (= (and b!4208243 (not res!1728667)) b!4208245))

(assert (= (and b!4208245 res!1728665) b!4208240))

(assert (= (and b!4208240 res!1728662) b!4208236))

(assert (= (and b!4208236 res!1728668) b!4208234))

(assert (= (and b!4208245 (not res!1728663)) b!4208237))

(assert (= (and b!4208237 res!1728666) b!4208242))

(assert (= (and b!4208242 (not res!1728664)) b!4208244))

(assert (= (and b!4208244 (not res!1728660)) b!4208238))

(assert (= (or b!4208233 b!4208240 b!4208242) bm!292823))

(assert (=> bm!292823 m!4795865))

(assert (=> b!4208235 m!4795941))

(declare-fun m!4796313 () Bool)

(assert (=> b!4208244 m!4796313))

(assert (=> b!4208244 m!4796313))

(declare-fun m!4796315 () Bool)

(assert (=> b!4208244 m!4796315))

(declare-fun m!4796317 () Bool)

(assert (=> b!4208238 m!4796317))

(assert (=> d!1240308 m!4795865))

(assert (=> d!1240308 m!4795939))

(assert (=> b!4208241 m!4796317))

(assert (=> b!4208241 m!4796317))

(declare-fun m!4796321 () Bool)

(assert (=> b!4208241 m!4796321))

(assert (=> b!4208241 m!4796313))

(assert (=> b!4208241 m!4796321))

(assert (=> b!4208241 m!4796313))

(declare-fun m!4796325 () Bool)

(assert (=> b!4208241 m!4796325))

(assert (=> b!4208236 m!4796313))

(assert (=> b!4208236 m!4796313))

(assert (=> b!4208236 m!4796315))

(assert (=> b!4208234 m!4796317))

(assert (=> b!4207857 d!1240308))

(declare-fun b!4208493 () Bool)

(declare-fun e!2612548 () Unit!65381)

(declare-fun Unit!65386 () Unit!65381)

(assert (=> b!4208493 (= e!2612548 Unit!65386)))

(declare-fun b!4208494 () Bool)

(declare-fun e!2612546 () tuple2!44014)

(declare-fun call!292855 () tuple2!44014)

(assert (=> b!4208494 (= e!2612546 call!292855)))

(declare-fun bm!292850 () Bool)

(declare-fun call!292862 () C!25484)

(assert (=> bm!292850 (= call!292862 (head!8928 input!3517))))

(declare-fun bm!292851 () Bool)

(declare-fun call!292859 () Unit!65381)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1027 (List!46390 List!46390 List!46390) Unit!65381)

(assert (=> bm!292851 (= call!292859 (lemmaIsPrefixSameLengthThenSameList!1027 input!3517 Nil!46266 input!3517))))

(declare-fun bm!292852 () Bool)

(declare-fun call!292856 () Unit!65381)

(assert (=> bm!292852 (= call!292856 (lemmaIsPrefixRefl!3016 input!3517 input!3517))))

(declare-fun bm!292853 () Bool)

(declare-fun call!292857 () Bool)

(assert (=> bm!292853 (= call!292857 (isPrefix!4599 input!3517 input!3517))))

(declare-fun b!4208495 () Bool)

(declare-fun e!2612549 () Bool)

(declare-fun e!2612547 () Bool)

(assert (=> b!4208495 (= e!2612549 e!2612547)))

(declare-fun res!1728724 () Bool)

(assert (=> b!4208495 (=> res!1728724 e!2612547)))

(declare-fun lt!1498477 () tuple2!44014)

(assert (=> b!4208495 (= res!1728724 (isEmpty!27399 (_1!25141 lt!1498477)))))

(declare-fun b!4208496 () Bool)

(declare-fun e!2612550 () tuple2!44014)

(assert (=> b!4208496 (= e!2612550 (tuple2!44015 Nil!46266 input!3517))))

(declare-fun b!4208497 () Bool)

(assert (=> b!4208497 (= e!2612547 (>= (size!33985 (_1!25141 lt!1498477)) (size!33985 Nil!46266)))))

(declare-fun b!4208498 () Bool)

(declare-fun e!2612551 () tuple2!44014)

(assert (=> b!4208498 (= e!2612551 (tuple2!44015 Nil!46266 input!3517))))

(declare-fun d!1240326 () Bool)

(assert (=> d!1240326 e!2612549))

(declare-fun res!1728723 () Bool)

(assert (=> d!1240326 (=> (not res!1728723) (not e!2612549))))

(assert (=> d!1240326 (= res!1728723 (= (++!11814 (_1!25141 lt!1498477) (_2!25141 lt!1498477)) input!3517))))

(assert (=> d!1240326 (= lt!1498477 e!2612550)))

(declare-fun c!717092 () Bool)

(declare-fun lostCause!1055 (Regex!12645) Bool)

(assert (=> d!1240326 (= c!717092 (lostCause!1055 (regex!7740 rBis!178)))))

(declare-fun lt!1498473 () Unit!65381)

(declare-fun Unit!65387 () Unit!65381)

(assert (=> d!1240326 (= lt!1498473 Unit!65387)))

(declare-fun getSuffix!2856 (List!46390 List!46390) List!46390)

(assert (=> d!1240326 (= (getSuffix!2856 input!3517 Nil!46266) input!3517)))

(declare-fun lt!1498452 () Unit!65381)

(declare-fun lt!1498462 () Unit!65381)

(assert (=> d!1240326 (= lt!1498452 lt!1498462)))

(declare-fun lt!1498469 () List!46390)

(assert (=> d!1240326 (= input!3517 lt!1498469)))

(declare-fun lemmaSamePrefixThenSameSuffix!2272 (List!46390 List!46390 List!46390 List!46390 List!46390) Unit!65381)

(assert (=> d!1240326 (= lt!1498462 (lemmaSamePrefixThenSameSuffix!2272 Nil!46266 input!3517 Nil!46266 lt!1498469 input!3517))))

(assert (=> d!1240326 (= lt!1498469 (getSuffix!2856 input!3517 Nil!46266))))

(declare-fun lt!1498461 () Unit!65381)

(declare-fun lt!1498470 () Unit!65381)

(assert (=> d!1240326 (= lt!1498461 lt!1498470)))

(assert (=> d!1240326 (isPrefix!4599 Nil!46266 (++!11814 Nil!46266 input!3517))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3066 (List!46390 List!46390) Unit!65381)

(assert (=> d!1240326 (= lt!1498470 (lemmaConcatTwoListThenFirstIsPrefix!3066 Nil!46266 input!3517))))

(assert (=> d!1240326 (validRegex!5738 (regex!7740 rBis!178))))

(assert (=> d!1240326 (= (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517)) lt!1498477)))

(declare-fun bm!292854 () Bool)

(declare-fun call!292860 () Bool)

(assert (=> bm!292854 (= call!292860 (nullable!4451 (regex!7740 rBis!178)))))

(declare-fun lt!1498454 () List!46390)

(declare-fun call!292861 () Regex!12645)

(declare-fun bm!292855 () Bool)

(declare-fun call!292858 () List!46390)

(assert (=> bm!292855 (= call!292855 (findLongestMatchInner!1639 call!292861 lt!1498454 (+ (size!33985 Nil!46266) 1) call!292858 input!3517 (size!33985 input!3517)))))

(declare-fun b!4208499 () Bool)

(declare-fun c!717095 () Bool)

(assert (=> b!4208499 (= c!717095 call!292860)))

(declare-fun lt!1498451 () Unit!65381)

(declare-fun lt!1498465 () Unit!65381)

(assert (=> b!4208499 (= lt!1498451 lt!1498465)))

(declare-fun lt!1498464 () C!25484)

(declare-fun lt!1498456 () List!46390)

(assert (=> b!4208499 (= (++!11814 (++!11814 Nil!46266 (Cons!46266 lt!1498464 Nil!46266)) lt!1498456) input!3517)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1299 (List!46390 C!25484 List!46390 List!46390) Unit!65381)

(assert (=> b!4208499 (= lt!1498465 (lemmaMoveElementToOtherListKeepsConcatEq!1299 Nil!46266 lt!1498464 lt!1498456 input!3517))))

(assert (=> b!4208499 (= lt!1498456 (tail!6775 input!3517))))

(assert (=> b!4208499 (= lt!1498464 (head!8928 input!3517))))

(declare-fun lt!1498476 () Unit!65381)

(declare-fun lt!1498474 () Unit!65381)

(assert (=> b!4208499 (= lt!1498476 lt!1498474)))

(assert (=> b!4208499 (isPrefix!4599 (++!11814 Nil!46266 (Cons!46266 (head!8928 (getSuffix!2856 input!3517 Nil!46266)) Nil!46266)) input!3517)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!681 (List!46390 List!46390) Unit!65381)

(assert (=> b!4208499 (= lt!1498474 (lemmaAddHeadSuffixToPrefixStillPrefix!681 Nil!46266 input!3517))))

(declare-fun lt!1498450 () Unit!65381)

(declare-fun lt!1498468 () Unit!65381)

(assert (=> b!4208499 (= lt!1498450 lt!1498468)))

(assert (=> b!4208499 (= lt!1498468 (lemmaAddHeadSuffixToPrefixStillPrefix!681 Nil!46266 input!3517))))

(assert (=> b!4208499 (= lt!1498454 (++!11814 Nil!46266 (Cons!46266 (head!8928 input!3517) Nil!46266)))))

(declare-fun lt!1498466 () Unit!65381)

(assert (=> b!4208499 (= lt!1498466 e!2612548)))

(declare-fun c!717094 () Bool)

(assert (=> b!4208499 (= c!717094 (= (size!33985 Nil!46266) (size!33985 input!3517)))))

(declare-fun lt!1498458 () Unit!65381)

(declare-fun lt!1498455 () Unit!65381)

(assert (=> b!4208499 (= lt!1498458 lt!1498455)))

(assert (=> b!4208499 (<= (size!33985 Nil!46266) (size!33985 input!3517))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!593 (List!46390 List!46390) Unit!65381)

(assert (=> b!4208499 (= lt!1498455 (lemmaIsPrefixThenSmallerEqSize!593 Nil!46266 input!3517))))

(declare-fun e!2612545 () tuple2!44014)

(assert (=> b!4208499 (= e!2612545 e!2612546)))

(declare-fun b!4208500 () Bool)

(declare-fun e!2612544 () tuple2!44014)

(assert (=> b!4208500 (= e!2612544 (tuple2!44015 Nil!46266 Nil!46266))))

(declare-fun b!4208501 () Bool)

(assert (=> b!4208501 (= e!2612550 e!2612545)))

(declare-fun c!717091 () Bool)

(assert (=> b!4208501 (= c!717091 (= (size!33985 Nil!46266) (size!33985 input!3517)))))

(declare-fun b!4208502 () Bool)

(assert (=> b!4208502 (= e!2612546 e!2612551)))

(declare-fun lt!1498475 () tuple2!44014)

(assert (=> b!4208502 (= lt!1498475 call!292855)))

(declare-fun c!717093 () Bool)

(assert (=> b!4208502 (= c!717093 (isEmpty!27399 (_1!25141 lt!1498475)))))

(declare-fun bm!292856 () Bool)

(assert (=> bm!292856 (= call!292858 (tail!6775 input!3517))))

(declare-fun bm!292857 () Bool)

(assert (=> bm!292857 (= call!292861 (derivativeStep!3831 (regex!7740 rBis!178) call!292862))))

(declare-fun b!4208503 () Bool)

(declare-fun c!717096 () Bool)

(assert (=> b!4208503 (= c!717096 call!292860)))

(declare-fun lt!1498472 () Unit!65381)

(declare-fun lt!1498460 () Unit!65381)

(assert (=> b!4208503 (= lt!1498472 lt!1498460)))

(assert (=> b!4208503 (= input!3517 Nil!46266)))

(assert (=> b!4208503 (= lt!1498460 call!292859)))

(declare-fun lt!1498463 () Unit!65381)

(declare-fun lt!1498471 () Unit!65381)

(assert (=> b!4208503 (= lt!1498463 lt!1498471)))

(assert (=> b!4208503 call!292857))

(assert (=> b!4208503 (= lt!1498471 call!292856)))

(assert (=> b!4208503 (= e!2612545 e!2612544)))

(declare-fun b!4208504 () Bool)

(assert (=> b!4208504 (= e!2612544 (tuple2!44015 Nil!46266 input!3517))))

(declare-fun b!4208505 () Bool)

(assert (=> b!4208505 (= e!2612551 lt!1498475)))

(declare-fun b!4208506 () Bool)

(declare-fun Unit!65388 () Unit!65381)

(assert (=> b!4208506 (= e!2612548 Unit!65388)))

(declare-fun lt!1498467 () Unit!65381)

(assert (=> b!4208506 (= lt!1498467 call!292856)))

(assert (=> b!4208506 call!292857))

(declare-fun lt!1498453 () Unit!65381)

(assert (=> b!4208506 (= lt!1498453 lt!1498467)))

(declare-fun lt!1498457 () Unit!65381)

(assert (=> b!4208506 (= lt!1498457 call!292859)))

(assert (=> b!4208506 (= input!3517 Nil!46266)))

(declare-fun lt!1498459 () Unit!65381)

(assert (=> b!4208506 (= lt!1498459 lt!1498457)))

(assert (=> b!4208506 false))

(assert (= (and d!1240326 c!717092) b!4208496))

(assert (= (and d!1240326 (not c!717092)) b!4208501))

(assert (= (and b!4208501 c!717091) b!4208503))

(assert (= (and b!4208501 (not c!717091)) b!4208499))

(assert (= (and b!4208503 c!717096) b!4208500))

(assert (= (and b!4208503 (not c!717096)) b!4208504))

(assert (= (and b!4208499 c!717094) b!4208506))

(assert (= (and b!4208499 (not c!717094)) b!4208493))

(assert (= (and b!4208499 c!717095) b!4208502))

(assert (= (and b!4208499 (not c!717095)) b!4208494))

(assert (= (and b!4208502 c!717093) b!4208498))

(assert (= (and b!4208502 (not c!717093)) b!4208505))

(assert (= (or b!4208502 b!4208494) bm!292850))

(assert (= (or b!4208502 b!4208494) bm!292856))

(assert (= (or b!4208502 b!4208494) bm!292857))

(assert (= (or b!4208502 b!4208494) bm!292855))

(assert (= (or b!4208503 b!4208506) bm!292852))

(assert (= (or b!4208503 b!4208499) bm!292854))

(assert (= (or b!4208503 b!4208506) bm!292853))

(assert (= (or b!4208503 b!4208506) bm!292851))

(assert (= (and d!1240326 res!1728723) b!4208495))

(assert (= (and b!4208495 (not res!1728724)) b!4208497))

(assert (=> bm!292856 m!4795873))

(assert (=> bm!292854 m!4795941))

(assert (=> d!1240326 m!4795939))

(declare-fun m!4796497 () Bool)

(assert (=> d!1240326 m!4796497))

(declare-fun m!4796499 () Bool)

(assert (=> d!1240326 m!4796499))

(declare-fun m!4796501 () Bool)

(assert (=> d!1240326 m!4796501))

(assert (=> d!1240326 m!4796501))

(declare-fun m!4796503 () Bool)

(assert (=> d!1240326 m!4796503))

(declare-fun m!4796505 () Bool)

(assert (=> d!1240326 m!4796505))

(declare-fun m!4796507 () Bool)

(assert (=> d!1240326 m!4796507))

(declare-fun m!4796509 () Bool)

(assert (=> d!1240326 m!4796509))

(declare-fun m!4796511 () Bool)

(assert (=> b!4208502 m!4796511))

(declare-fun m!4796513 () Bool)

(assert (=> bm!292851 m!4796513))

(assert (=> bm!292855 m!4795651))

(declare-fun m!4796515 () Bool)

(assert (=> bm!292855 m!4796515))

(declare-fun m!4796517 () Bool)

(assert (=> b!4208497 m!4796517))

(assert (=> b!4208497 m!4795851))

(declare-fun m!4796519 () Bool)

(assert (=> b!4208495 m!4796519))

(assert (=> bm!292850 m!4795871))

(assert (=> bm!292852 m!4795537))

(assert (=> bm!292853 m!4795535))

(declare-fun m!4796521 () Bool)

(assert (=> bm!292857 m!4796521))

(declare-fun m!4796523 () Bool)

(assert (=> b!4208499 m!4796523))

(assert (=> b!4208499 m!4795651))

(assert (=> b!4208499 m!4796507))

(declare-fun m!4796525 () Bool)

(assert (=> b!4208499 m!4796525))

(declare-fun m!4796527 () Bool)

(assert (=> b!4208499 m!4796527))

(declare-fun m!4796529 () Bool)

(assert (=> b!4208499 m!4796529))

(assert (=> b!4208499 m!4795871))

(assert (=> b!4208499 m!4795873))

(declare-fun m!4796531 () Bool)

(assert (=> b!4208499 m!4796531))

(declare-fun m!4796533 () Bool)

(assert (=> b!4208499 m!4796533))

(declare-fun m!4796535 () Bool)

(assert (=> b!4208499 m!4796535))

(assert (=> b!4208499 m!4796507))

(declare-fun m!4796537 () Bool)

(assert (=> b!4208499 m!4796537))

(assert (=> b!4208499 m!4796537))

(declare-fun m!4796539 () Bool)

(assert (=> b!4208499 m!4796539))

(assert (=> b!4208499 m!4796531))

(assert (=> b!4208499 m!4795851))

(assert (=> b!4207857 d!1240326))

(declare-fun d!1240410 () Bool)

(declare-fun lt!1498478 () Int)

(assert (=> d!1240410 (>= lt!1498478 0)))

(declare-fun e!2612552 () Int)

(assert (=> d!1240410 (= lt!1498478 e!2612552)))

(declare-fun c!717097 () Bool)

(assert (=> d!1240410 (= c!717097 ((_ is Nil!46266) Nil!46266))))

(assert (=> d!1240410 (= (size!33985 Nil!46266) lt!1498478)))

(declare-fun b!4208507 () Bool)

(assert (=> b!4208507 (= e!2612552 0)))

(declare-fun b!4208508 () Bool)

(assert (=> b!4208508 (= e!2612552 (+ 1 (size!33985 (t!347561 Nil!46266))))))

(assert (= (and d!1240410 c!717097) b!4208507))

(assert (= (and d!1240410 (not c!717097)) b!4208508))

(declare-fun m!4796541 () Bool)

(assert (=> b!4208508 m!4796541))

(assert (=> b!4207857 d!1240410))

(assert (=> b!4207857 d!1240224))

(declare-fun bs!597299 () Bool)

(declare-fun d!1240412 () Bool)

(assert (= bs!597299 (and d!1240412 d!1240246)))

(declare-fun lambda!129725 () Int)

(assert (=> bs!597299 (= (= (toValue!10452 (transformation!7740 (h!51687 rules!3967))) (toValue!10452 (transformation!7740 rBis!178))) (= lambda!129725 lambda!129709))))

(assert (=> d!1240412 true))

(assert (=> d!1240412 (< (dynLambda!19953 order!24523 (toValue!10452 (transformation!7740 (h!51687 rules!3967)))) (dynLambda!19954 order!24529 lambda!129725))))

(assert (=> d!1240412 (= (equivClasses!3259 (toChars!10311 (transformation!7740 (h!51687 rules!3967))) (toValue!10452 (transformation!7740 (h!51687 rules!3967)))) (Forall2!1175 lambda!129725))))

(declare-fun bs!597300 () Bool)

(assert (= bs!597300 d!1240412))

(declare-fun m!4796543 () Bool)

(assert (=> bs!597300 m!4796543))

(assert (=> b!4207914 d!1240412))

(declare-fun d!1240414 () Bool)

(declare-fun lt!1498481 () Int)

(assert (=> d!1240414 (= lt!1498481 (size!33985 (list!16723 (seqFromList!5739 (_1!25141 lt!1498182)))))))

(declare-fun size!33989 (Conc!13951) Int)

(assert (=> d!1240414 (= lt!1498481 (size!33989 (c!716929 (seqFromList!5739 (_1!25141 lt!1498182)))))))

(assert (=> d!1240414 (= (size!33987 (seqFromList!5739 (_1!25141 lt!1498182))) lt!1498481)))

(declare-fun bs!597301 () Bool)

(assert (= bs!597301 d!1240414))

(assert (=> bs!597301 m!4795857))

(declare-fun m!4796545 () Bool)

(assert (=> bs!597301 m!4796545))

(assert (=> bs!597301 m!4796545))

(declare-fun m!4796547 () Bool)

(assert (=> bs!597301 m!4796547))

(declare-fun m!4796549 () Bool)

(assert (=> bs!597301 m!4796549))

(assert (=> b!4207855 d!1240414))

(declare-fun bs!597302 () Bool)

(declare-fun d!1240416 () Bool)

(assert (= bs!597302 (and d!1240416 d!1240194)))

(declare-fun lambda!129728 () Int)

(assert (=> bs!597302 (= (and (= (toChars!10311 (transformation!7740 rBis!178)) (toChars!10311 (transformation!7740 (rule!10848 t!8364)))) (= (toValue!10452 (transformation!7740 rBis!178)) (toValue!10452 (transformation!7740 (rule!10848 t!8364))))) (= lambda!129728 lambda!129703))))

(declare-fun b!4208513 () Bool)

(declare-fun e!2612555 () Bool)

(assert (=> b!4208513 (= e!2612555 true)))

(assert (=> d!1240416 e!2612555))

(assert (= d!1240416 b!4208513))

(assert (=> b!4208513 (< (dynLambda!19953 order!24523 (toValue!10452 (transformation!7740 rBis!178))) (dynLambda!19952 order!24521 lambda!129728))))

(assert (=> b!4208513 (< (dynLambda!19951 order!24519 (toChars!10311 (transformation!7740 rBis!178))) (dynLambda!19952 order!24521 lambda!129728))))

(assert (=> d!1240416 (= (list!16723 (dynLambda!19944 (toChars!10311 (transformation!7740 rBis!178)) (dynLambda!19948 (toValue!10452 (transformation!7740 rBis!178)) (seqFromList!5739 (_1!25141 lt!1498182))))) (list!16723 (seqFromList!5739 (_1!25141 lt!1498182))))))

(declare-fun lt!1498484 () Unit!65381)

(declare-fun ForallOf!1083 (Int BalanceConc!27496) Unit!65381)

(assert (=> d!1240416 (= lt!1498484 (ForallOf!1083 lambda!129728 (seqFromList!5739 (_1!25141 lt!1498182))))))

(assert (=> d!1240416 (= (lemmaSemiInverse!2480 (transformation!7740 rBis!178) (seqFromList!5739 (_1!25141 lt!1498182))) lt!1498484)))

(declare-fun b_lambda!123943 () Bool)

(assert (=> (not b_lambda!123943) (not d!1240416)))

(declare-fun t!347704 () Bool)

(declare-fun tb!252511 () Bool)

(assert (=> (and b!4207945 (= (toChars!10311 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toChars!10311 (transformation!7740 rBis!178))) t!347704) tb!252511))

(declare-fun b!4208514 () Bool)

(declare-fun tp!1286547 () Bool)

(declare-fun e!2612556 () Bool)

(assert (=> b!4208514 (= e!2612556 (and (inv!60864 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 rBis!178)) (dynLambda!19948 (toValue!10452 (transformation!7740 rBis!178)) (seqFromList!5739 (_1!25141 lt!1498182)))))) tp!1286547))))

(declare-fun result!307766 () Bool)

(assert (=> tb!252511 (= result!307766 (and (inv!60865 (dynLambda!19944 (toChars!10311 (transformation!7740 rBis!178)) (dynLambda!19948 (toValue!10452 (transformation!7740 rBis!178)) (seqFromList!5739 (_1!25141 lt!1498182))))) e!2612556))))

(assert (= tb!252511 b!4208514))

(declare-fun m!4796551 () Bool)

(assert (=> b!4208514 m!4796551))

(declare-fun m!4796553 () Bool)

(assert (=> tb!252511 m!4796553))

(assert (=> d!1240416 t!347704))

(declare-fun b_and!330979 () Bool)

(assert (= b_and!330927 (and (=> t!347704 result!307766) b_and!330979)))

(declare-fun tb!252513 () Bool)

(declare-fun t!347706 () Bool)

(assert (=> (and b!4207548 (= (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (toChars!10311 (transformation!7740 rBis!178))) t!347706) tb!252513))

(declare-fun result!307768 () Bool)

(assert (= result!307768 result!307766))

(assert (=> d!1240416 t!347706))

(declare-fun b_and!330981 () Bool)

(assert (= b_and!330931 (and (=> t!347706 result!307768) b_and!330981)))

(declare-fun t!347708 () Bool)

(declare-fun tb!252515 () Bool)

(assert (=> (and b!4207553 (= (toChars!10311 (transformation!7740 rBis!178)) (toChars!10311 (transformation!7740 rBis!178))) t!347708) tb!252515))

(declare-fun result!307770 () Bool)

(assert (= result!307770 result!307766))

(assert (=> d!1240416 t!347708))

(declare-fun b_and!330983 () Bool)

(assert (= b_and!330929 (and (=> t!347708 result!307770) b_and!330983)))

(declare-fun tb!252517 () Bool)

(declare-fun t!347710 () Bool)

(assert (=> (and b!4207551 (= (toChars!10311 (transformation!7740 (h!51687 rules!3967))) (toChars!10311 (transformation!7740 rBis!178))) t!347710) tb!252517))

(declare-fun result!307772 () Bool)

(assert (= result!307772 result!307766))

(assert (=> d!1240416 t!347710))

(declare-fun b_and!330985 () Bool)

(assert (= b_and!330933 (and (=> t!347710 result!307772) b_and!330985)))

(declare-fun t!347712 () Bool)

(declare-fun tb!252519 () Bool)

(assert (=> (and b!4207533 (= (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (toChars!10311 (transformation!7740 rBis!178))) t!347712) tb!252519))

(declare-fun result!307774 () Bool)

(assert (= result!307774 result!307766))

(assert (=> d!1240416 t!347712))

(declare-fun b_and!330987 () Bool)

(assert (= b_and!330925 (and (=> t!347712 result!307774) b_and!330987)))

(declare-fun b_lambda!123945 () Bool)

(assert (=> (not b_lambda!123945) (not d!1240416)))

(declare-fun t!347714 () Bool)

(declare-fun tb!252521 () Bool)

(assert (=> (and b!4207551 (= (toValue!10452 (transformation!7740 (h!51687 rules!3967))) (toValue!10452 (transformation!7740 rBis!178))) t!347714) tb!252521))

(declare-fun result!307776 () Bool)

(assert (=> tb!252521 (= result!307776 (inv!21 (dynLambda!19948 (toValue!10452 (transformation!7740 rBis!178)) (seqFromList!5739 (_1!25141 lt!1498182)))))))

(declare-fun m!4796555 () Bool)

(assert (=> tb!252521 m!4796555))

(assert (=> d!1240416 t!347714))

(declare-fun b_and!330989 () Bool)

(assert (= b_and!330913 (and (=> t!347714 result!307776) b_and!330989)))

(declare-fun tb!252523 () Bool)

(declare-fun t!347716 () Bool)

(assert (=> (and b!4207548 (= (toValue!10452 (transformation!7740 (rule!10848 t!8364))) (toValue!10452 (transformation!7740 rBis!178))) t!347716) tb!252523))

(declare-fun result!307778 () Bool)

(assert (= result!307778 result!307776))

(assert (=> d!1240416 t!347716))

(declare-fun b_and!330991 () Bool)

(assert (= b_and!330911 (and (=> t!347716 result!307778) b_and!330991)))

(declare-fun t!347718 () Bool)

(declare-fun tb!252525 () Bool)

(assert (=> (and b!4207553 (= (toValue!10452 (transformation!7740 rBis!178)) (toValue!10452 (transformation!7740 rBis!178))) t!347718) tb!252525))

(declare-fun result!307780 () Bool)

(assert (= result!307780 result!307776))

(assert (=> d!1240416 t!347718))

(declare-fun b_and!330993 () Bool)

(assert (= b_and!330905 (and (=> t!347718 result!307780) b_and!330993)))

(declare-fun t!347720 () Bool)

(declare-fun tb!252527 () Bool)

(assert (=> (and b!4207945 (= (toValue!10452 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toValue!10452 (transformation!7740 rBis!178))) t!347720) tb!252527))

(declare-fun result!307782 () Bool)

(assert (= result!307782 result!307776))

(assert (=> d!1240416 t!347720))

(declare-fun b_and!330995 () Bool)

(assert (= b_and!330909 (and (=> t!347720 result!307782) b_and!330995)))

(declare-fun tb!252529 () Bool)

(declare-fun t!347722 () Bool)

(assert (=> (and b!4207533 (= (toValue!10452 (transformation!7740 (rule!10848 tBis!41))) (toValue!10452 (transformation!7740 rBis!178))) t!347722) tb!252529))

(declare-fun result!307784 () Bool)

(assert (= result!307784 result!307776))

(assert (=> d!1240416 t!347722))

(declare-fun b_and!330997 () Bool)

(assert (= b_and!330907 (and (=> t!347722 result!307784) b_and!330997)))

(assert (=> d!1240416 m!4795857))

(declare-fun m!4796557 () Bool)

(assert (=> d!1240416 m!4796557))

(assert (=> d!1240416 m!4796557))

(declare-fun m!4796559 () Bool)

(assert (=> d!1240416 m!4796559))

(assert (=> d!1240416 m!4796559))

(declare-fun m!4796561 () Bool)

(assert (=> d!1240416 m!4796561))

(assert (=> d!1240416 m!4795857))

(declare-fun m!4796563 () Bool)

(assert (=> d!1240416 m!4796563))

(assert (=> d!1240416 m!4795857))

(assert (=> d!1240416 m!4796545))

(assert (=> b!4207855 d!1240416))

(assert (=> b!4207855 d!1240224))

(declare-fun d!1240418 () Bool)

(declare-fun e!2612560 () Bool)

(assert (=> d!1240418 e!2612560))

(declare-fun res!1728727 () Bool)

(assert (=> d!1240418 (=> res!1728727 e!2612560)))

(assert (=> d!1240418 (= res!1728727 (isEmpty!27399 (_1!25141 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517)))))))

(declare-fun lt!1498487 () Unit!65381)

(declare-fun choose!25794 (Regex!12645 List!46390) Unit!65381)

(assert (=> d!1240418 (= lt!1498487 (choose!25794 (regex!7740 rBis!178) input!3517))))

(assert (=> d!1240418 (validRegex!5738 (regex!7740 rBis!178))))

(assert (=> d!1240418 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1612 (regex!7740 rBis!178) input!3517) lt!1498487)))

(declare-fun b!4208517 () Bool)

(assert (=> b!4208517 (= e!2612560 (matchR!6358 (regex!7740 rBis!178) (_1!25141 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517)))))))

(assert (= (and d!1240418 (not res!1728727)) b!4208517))

(assert (=> d!1240418 m!4795851))

(assert (=> d!1240418 m!4795651))

(assert (=> d!1240418 m!4795853))

(assert (=> d!1240418 m!4795865))

(declare-fun m!4796565 () Bool)

(assert (=> d!1240418 m!4796565))

(assert (=> d!1240418 m!4795851))

(assert (=> d!1240418 m!4795651))

(assert (=> d!1240418 m!4795939))

(assert (=> b!4208517 m!4795851))

(assert (=> b!4208517 m!4795651))

(assert (=> b!4208517 m!4795851))

(assert (=> b!4208517 m!4795651))

(assert (=> b!4208517 m!4795853))

(assert (=> b!4208517 m!4795855))

(assert (=> b!4207855 d!1240418))

(declare-fun d!1240420 () Bool)

(assert (=> d!1240420 (= (isEmpty!27399 (_1!25141 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517)))) ((_ is Nil!46266) (_1!25141 (findLongestMatchInner!1639 (regex!7740 rBis!178) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517)))))))

(assert (=> b!4207855 d!1240420))

(assert (=> b!4207855 d!1240410))

(declare-fun d!1240422 () Bool)

(assert (=> d!1240422 (= (apply!10679 (transformation!7740 rBis!178) (seqFromList!5739 (_1!25141 lt!1498182))) (dynLambda!19948 (toValue!10452 (transformation!7740 rBis!178)) (seqFromList!5739 (_1!25141 lt!1498182))))))

(declare-fun b_lambda!123947 () Bool)

(assert (=> (not b_lambda!123947) (not d!1240422)))

(assert (=> d!1240422 t!347718))

(declare-fun b_and!330999 () Bool)

(assert (= b_and!330993 (and (=> t!347718 result!307780) b_and!330999)))

(assert (=> d!1240422 t!347716))

(declare-fun b_and!331001 () Bool)

(assert (= b_and!330991 (and (=> t!347716 result!307778) b_and!331001)))

(assert (=> d!1240422 t!347720))

(declare-fun b_and!331003 () Bool)

(assert (= b_and!330995 (and (=> t!347720 result!307782) b_and!331003)))

(assert (=> d!1240422 t!347714))

(declare-fun b_and!331005 () Bool)

(assert (= b_and!330989 (and (=> t!347714 result!307776) b_and!331005)))

(assert (=> d!1240422 t!347722))

(declare-fun b_and!331007 () Bool)

(assert (= b_and!330997 (and (=> t!347722 result!307784) b_and!331007)))

(assert (=> d!1240422 m!4795857))

(assert (=> d!1240422 m!4796557))

(assert (=> b!4207855 d!1240422))

(assert (=> b!4207855 d!1240326))

(declare-fun d!1240424 () Bool)

(assert (=> d!1240424 (= (seqFromList!5739 (_1!25141 lt!1498182)) (fromListB!2632 (_1!25141 lt!1498182)))))

(declare-fun bs!597303 () Bool)

(assert (= bs!597303 d!1240424))

(declare-fun m!4796567 () Bool)

(assert (=> bs!597303 m!4796567))

(assert (=> b!4207855 d!1240424))

(declare-fun d!1240426 () Bool)

(declare-fun c!717101 () Bool)

(assert (=> d!1240426 (= c!717101 ((_ is Nil!46266) lt!1498190))))

(declare-fun e!2612563 () (InoxSet C!25484))

(assert (=> d!1240426 (= (content!7235 lt!1498190) e!2612563)))

(declare-fun b!4208522 () Bool)

(assert (=> b!4208522 (= e!2612563 ((as const (Array C!25484 Bool)) false))))

(declare-fun b!4208523 () Bool)

(assert (=> b!4208523 (= e!2612563 ((_ map or) (store ((as const (Array C!25484 Bool)) false) (h!51686 lt!1498190) true) (content!7235 (t!347561 lt!1498190))))))

(assert (= (and d!1240426 c!717101) b!4208522))

(assert (= (and d!1240426 (not c!717101)) b!4208523))

(declare-fun m!4796569 () Bool)

(assert (=> b!4208523 m!4796569))

(declare-fun m!4796571 () Bool)

(assert (=> b!4208523 m!4796571))

(assert (=> d!1240130 d!1240426))

(declare-fun d!1240428 () Bool)

(declare-fun c!717102 () Bool)

(assert (=> d!1240428 (= c!717102 ((_ is Nil!46266) p!3001))))

(declare-fun e!2612564 () (InoxSet C!25484))

(assert (=> d!1240428 (= (content!7235 p!3001) e!2612564)))

(declare-fun b!4208524 () Bool)

(assert (=> b!4208524 (= e!2612564 ((as const (Array C!25484 Bool)) false))))

(declare-fun b!4208525 () Bool)

(assert (=> b!4208525 (= e!2612564 ((_ map or) (store ((as const (Array C!25484 Bool)) false) (h!51686 p!3001) true) (content!7235 (t!347561 p!3001))))))

(assert (= (and d!1240428 c!717102) b!4208524))

(assert (= (and d!1240428 (not c!717102)) b!4208525))

(declare-fun m!4796573 () Bool)

(assert (=> b!4208525 m!4796573))

(assert (=> b!4208525 m!4796269))

(assert (=> d!1240130 d!1240428))

(declare-fun d!1240430 () Bool)

(declare-fun c!717103 () Bool)

(assert (=> d!1240430 (= c!717103 ((_ is Nil!46266) suffix!1557))))

(declare-fun e!2612565 () (InoxSet C!25484))

(assert (=> d!1240430 (= (content!7235 suffix!1557) e!2612565)))

(declare-fun b!4208526 () Bool)

(assert (=> b!4208526 (= e!2612565 ((as const (Array C!25484 Bool)) false))))

(declare-fun b!4208527 () Bool)

(assert (=> b!4208527 (= e!2612565 ((_ map or) (store ((as const (Array C!25484 Bool)) false) (h!51686 suffix!1557) true) (content!7235 (t!347561 suffix!1557))))))

(assert (= (and d!1240430 c!717103) b!4208526))

(assert (= (and d!1240430 (not c!717103)) b!4208527))

(declare-fun m!4796575 () Bool)

(assert (=> b!4208527 m!4796575))

(declare-fun m!4796577 () Bool)

(assert (=> b!4208527 m!4796577))

(assert (=> d!1240130 d!1240430))

(declare-fun bs!597304 () Bool)

(declare-fun d!1240432 () Bool)

(assert (= bs!597304 (and d!1240432 d!1240246)))

(declare-fun lambda!129729 () Int)

(assert (=> bs!597304 (= (= (toValue!10452 (transformation!7740 (rule!10848 tBis!41))) (toValue!10452 (transformation!7740 rBis!178))) (= lambda!129729 lambda!129709))))

(declare-fun bs!597305 () Bool)

(assert (= bs!597305 (and d!1240432 d!1240412)))

(assert (=> bs!597305 (= (= (toValue!10452 (transformation!7740 (rule!10848 tBis!41))) (toValue!10452 (transformation!7740 (h!51687 rules!3967)))) (= lambda!129729 lambda!129725))))

(assert (=> d!1240432 true))

(assert (=> d!1240432 (< (dynLambda!19953 order!24523 (toValue!10452 (transformation!7740 (rule!10848 tBis!41)))) (dynLambda!19954 order!24529 lambda!129729))))

(assert (=> d!1240432 (= (equivClasses!3259 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (toValue!10452 (transformation!7740 (rule!10848 tBis!41)))) (Forall2!1175 lambda!129729))))

(declare-fun bs!597306 () Bool)

(assert (= bs!597306 d!1240432))

(declare-fun m!4796579 () Bool)

(assert (=> bs!597306 m!4796579))

(assert (=> b!4207714 d!1240432))

(declare-fun d!1240434 () Bool)

(assert (=> d!1240434 (= (list!16723 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364))) (list!16725 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364)))))))

(declare-fun bs!597307 () Bool)

(assert (= bs!597307 d!1240434))

(declare-fun m!4796581 () Bool)

(assert (=> bs!597307 m!4796581))

(assert (=> b!4207893 d!1240434))

(declare-fun b!4208529 () Bool)

(declare-fun e!2612567 () List!46390)

(assert (=> b!4208529 (= e!2612567 (Cons!46266 (h!51686 (t!347561 pBis!121)) (++!11814 (t!347561 (t!347561 pBis!121)) suffixBis!41)))))

(declare-fun b!4208530 () Bool)

(declare-fun res!1728729 () Bool)

(declare-fun e!2612566 () Bool)

(assert (=> b!4208530 (=> (not res!1728729) (not e!2612566))))

(declare-fun lt!1498488 () List!46390)

(assert (=> b!4208530 (= res!1728729 (= (size!33985 lt!1498488) (+ (size!33985 (t!347561 pBis!121)) (size!33985 suffixBis!41))))))

(declare-fun b!4208531 () Bool)

(assert (=> b!4208531 (= e!2612566 (or (not (= suffixBis!41 Nil!46266)) (= lt!1498488 (t!347561 pBis!121))))))

(declare-fun d!1240436 () Bool)

(assert (=> d!1240436 e!2612566))

(declare-fun res!1728728 () Bool)

(assert (=> d!1240436 (=> (not res!1728728) (not e!2612566))))

(assert (=> d!1240436 (= res!1728728 (= (content!7235 lt!1498488) ((_ map or) (content!7235 (t!347561 pBis!121)) (content!7235 suffixBis!41))))))

(assert (=> d!1240436 (= lt!1498488 e!2612567)))

(declare-fun c!717104 () Bool)

(assert (=> d!1240436 (= c!717104 ((_ is Nil!46266) (t!347561 pBis!121)))))

(assert (=> d!1240436 (= (++!11814 (t!347561 pBis!121) suffixBis!41) lt!1498488)))

(declare-fun b!4208528 () Bool)

(assert (=> b!4208528 (= e!2612567 suffixBis!41)))

(assert (= (and d!1240436 c!717104) b!4208528))

(assert (= (and d!1240436 (not c!717104)) b!4208529))

(assert (= (and d!1240436 res!1728728) b!4208530))

(assert (= (and b!4208530 res!1728729) b!4208531))

(declare-fun m!4796583 () Bool)

(assert (=> b!4208529 m!4796583))

(declare-fun m!4796585 () Bool)

(assert (=> b!4208530 m!4796585))

(assert (=> b!4208530 m!4795929))

(assert (=> b!4208530 m!4795587))

(declare-fun m!4796587 () Bool)

(assert (=> d!1240436 m!4796587))

(declare-fun m!4796589 () Bool)

(assert (=> d!1240436 m!4796589))

(assert (=> d!1240436 m!4795593))

(assert (=> b!4207588 d!1240436))

(assert (=> b!4207851 d!1240300))

(declare-fun d!1240438 () Bool)

(assert (=> d!1240438 (= (apply!10679 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180)))) (seqFromList!5739 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498180))))) (dynLambda!19948 (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180))))) (seqFromList!5739 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498180))))))))

(declare-fun b_lambda!123949 () Bool)

(assert (=> (not b_lambda!123949) (not d!1240438)))

(declare-fun t!347724 () Bool)

(declare-fun tb!252531 () Bool)

(assert (=> (and b!4207553 (= (toValue!10452 (transformation!7740 rBis!178)) (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180)))))) t!347724) tb!252531))

(declare-fun result!307786 () Bool)

(assert (=> tb!252531 (= result!307786 (inv!21 (dynLambda!19948 (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180))))) (seqFromList!5739 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498180)))))))))

(declare-fun m!4796591 () Bool)

(assert (=> tb!252531 m!4796591))

(assert (=> d!1240438 t!347724))

(declare-fun b_and!331009 () Bool)

(assert (= b_and!330999 (and (=> t!347724 result!307786) b_and!331009)))

(declare-fun t!347726 () Bool)

(declare-fun tb!252533 () Bool)

(assert (=> (and b!4207945 (= (toValue!10452 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180)))))) t!347726) tb!252533))

(declare-fun result!307788 () Bool)

(assert (= result!307788 result!307786))

(assert (=> d!1240438 t!347726))

(declare-fun b_and!331011 () Bool)

(assert (= b_and!331003 (and (=> t!347726 result!307788) b_and!331011)))

(declare-fun tb!252535 () Bool)

(declare-fun t!347728 () Bool)

(assert (=> (and b!4207548 (= (toValue!10452 (transformation!7740 (rule!10848 t!8364))) (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180)))))) t!347728) tb!252535))

(declare-fun result!307790 () Bool)

(assert (= result!307790 result!307786))

(assert (=> d!1240438 t!347728))

(declare-fun b_and!331013 () Bool)

(assert (= b_and!331001 (and (=> t!347728 result!307790) b_and!331013)))

(declare-fun tb!252537 () Bool)

(declare-fun t!347730 () Bool)

(assert (=> (and b!4207533 (= (toValue!10452 (transformation!7740 (rule!10848 tBis!41))) (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180)))))) t!347730) tb!252537))

(declare-fun result!307792 () Bool)

(assert (= result!307792 result!307786))

(assert (=> d!1240438 t!347730))

(declare-fun b_and!331015 () Bool)

(assert (= b_and!331007 (and (=> t!347730 result!307792) b_and!331015)))

(declare-fun tb!252539 () Bool)

(declare-fun t!347732 () Bool)

(assert (=> (and b!4207551 (= (toValue!10452 (transformation!7740 (h!51687 rules!3967))) (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180)))))) t!347732) tb!252539))

(declare-fun result!307794 () Bool)

(assert (= result!307794 result!307786))

(assert (=> d!1240438 t!347732))

(declare-fun b_and!331017 () Bool)

(assert (= b_and!331005 (and (=> t!347732 result!307794) b_and!331017)))

(assert (=> d!1240438 m!4795847))

(declare-fun m!4796593 () Bool)

(assert (=> d!1240438 m!4796593))

(assert (=> b!4207851 d!1240438))

(declare-fun d!1240440 () Bool)

(assert (=> d!1240440 (= (seqFromList!5739 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498180)))) (fromListB!2632 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498180)))))))

(declare-fun bs!597308 () Bool)

(assert (= bs!597308 d!1240440))

(declare-fun m!4796595 () Bool)

(assert (=> bs!597308 m!4796595))

(assert (=> b!4207851 d!1240440))

(declare-fun d!1240442 () Bool)

(assert (=> d!1240442 (= (isEmpty!27399 (originalCharacters!8122 tBis!41)) ((_ is Nil!46266) (originalCharacters!8122 tBis!41)))))

(assert (=> d!1240144 d!1240442))

(declare-fun d!1240444 () Bool)

(declare-fun lt!1498489 () Bool)

(assert (=> d!1240444 (= lt!1498489 (select (content!7237 (t!347562 rules!3967)) rBis!178))))

(declare-fun e!2612570 () Bool)

(assert (=> d!1240444 (= lt!1498489 e!2612570)))

(declare-fun res!1728730 () Bool)

(assert (=> d!1240444 (=> (not res!1728730) (not e!2612570))))

(assert (=> d!1240444 (= res!1728730 ((_ is Cons!46267) (t!347562 rules!3967)))))

(assert (=> d!1240444 (= (contains!9557 (t!347562 rules!3967) rBis!178) lt!1498489)))

(declare-fun b!4208532 () Bool)

(declare-fun e!2612569 () Bool)

(assert (=> b!4208532 (= e!2612570 e!2612569)))

(declare-fun res!1728731 () Bool)

(assert (=> b!4208532 (=> res!1728731 e!2612569)))

(assert (=> b!4208532 (= res!1728731 (= (h!51687 (t!347562 rules!3967)) rBis!178))))

(declare-fun b!4208533 () Bool)

(assert (=> b!4208533 (= e!2612569 (contains!9557 (t!347562 (t!347562 rules!3967)) rBis!178))))

(assert (= (and d!1240444 res!1728730) b!4208532))

(assert (= (and b!4208532 (not res!1728731)) b!4208533))

(declare-fun m!4796597 () Bool)

(assert (=> d!1240444 m!4796597))

(declare-fun m!4796599 () Bool)

(assert (=> d!1240444 m!4796599))

(declare-fun m!4796601 () Bool)

(assert (=> b!4208533 m!4796601))

(assert (=> b!4207711 d!1240444))

(declare-fun d!1240446 () Bool)

(assert (=> d!1240446 (= (isEmpty!27399 (originalCharacters!8122 t!8364)) ((_ is Nil!46266) (originalCharacters!8122 t!8364)))))

(assert (=> d!1240146 d!1240446))

(declare-fun bs!597309 () Bool)

(declare-fun d!1240448 () Bool)

(assert (= bs!597309 (and d!1240448 d!1240246)))

(declare-fun lambda!129730 () Int)

(assert (=> bs!597309 (= (= (toValue!10452 (transformation!7740 (rule!10848 t!8364))) (toValue!10452 (transformation!7740 rBis!178))) (= lambda!129730 lambda!129709))))

(declare-fun bs!597310 () Bool)

(assert (= bs!597310 (and d!1240448 d!1240412)))

(assert (=> bs!597310 (= (= (toValue!10452 (transformation!7740 (rule!10848 t!8364))) (toValue!10452 (transformation!7740 (h!51687 rules!3967)))) (= lambda!129730 lambda!129725))))

(declare-fun bs!597311 () Bool)

(assert (= bs!597311 (and d!1240448 d!1240432)))

(assert (=> bs!597311 (= (= (toValue!10452 (transformation!7740 (rule!10848 t!8364))) (toValue!10452 (transformation!7740 (rule!10848 tBis!41)))) (= lambda!129730 lambda!129729))))

(assert (=> d!1240448 true))

(assert (=> d!1240448 (< (dynLambda!19953 order!24523 (toValue!10452 (transformation!7740 (rule!10848 t!8364)))) (dynLambda!19954 order!24529 lambda!129730))))

(assert (=> d!1240448 (= (equivClasses!3259 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (toValue!10452 (transformation!7740 (rule!10848 t!8364)))) (Forall2!1175 lambda!129730))))

(declare-fun bs!597312 () Bool)

(assert (= bs!597312 d!1240448))

(declare-fun m!4796603 () Bool)

(assert (=> bs!597312 m!4796603))

(assert (=> b!4207886 d!1240448))

(declare-fun d!1240450 () Bool)

(declare-fun e!2612574 () Bool)

(assert (=> d!1240450 e!2612574))

(declare-fun res!1728735 () Bool)

(assert (=> d!1240450 (=> res!1728735 e!2612574)))

(declare-fun lt!1498491 () Option!9928)

(assert (=> d!1240450 (= res!1728735 (isEmpty!27398 lt!1498491))))

(declare-fun e!2612571 () Option!9928)

(assert (=> d!1240450 (= lt!1498491 e!2612571)))

(declare-fun c!717105 () Bool)

(declare-fun lt!1498493 () tuple2!44014)

(assert (=> d!1240450 (= c!717105 (isEmpty!27399 (_1!25141 lt!1498493)))))

(assert (=> d!1240450 (= lt!1498493 (findLongestMatch!1552 (regex!7740 (h!51687 rules!3967)) input!3517))))

(assert (=> d!1240450 (ruleValid!3452 thiss!26544 (h!51687 rules!3967))))

(assert (=> d!1240450 (= (maxPrefixOneRule!3330 thiss!26544 (h!51687 rules!3967) input!3517) lt!1498491)))

(declare-fun b!4208534 () Bool)

(declare-fun res!1728738 () Bool)

(declare-fun e!2612572 () Bool)

(assert (=> b!4208534 (=> (not res!1728738) (not e!2612572))))

(assert (=> b!4208534 (= res!1728738 (= (value!241119 (_1!25139 (get!15048 lt!1498491))) (apply!10679 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498491)))) (seqFromList!5739 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498491)))))))))

(declare-fun b!4208535 () Bool)

(assert (=> b!4208535 (= e!2612574 e!2612572)))

(declare-fun res!1728734 () Bool)

(assert (=> b!4208535 (=> (not res!1728734) (not e!2612572))))

(assert (=> b!4208535 (= res!1728734 (matchR!6358 (regex!7740 (h!51687 rules!3967)) (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498491))))))))

(declare-fun b!4208536 () Bool)

(assert (=> b!4208536 (= e!2612572 (= (size!33984 (_1!25139 (get!15048 lt!1498491))) (size!33985 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498491))))))))

(declare-fun b!4208537 () Bool)

(declare-fun res!1728733 () Bool)

(assert (=> b!4208537 (=> (not res!1728733) (not e!2612572))))

(assert (=> b!4208537 (= res!1728733 (< (size!33985 (_2!25139 (get!15048 lt!1498491))) (size!33985 input!3517)))))

(declare-fun b!4208538 () Bool)

(assert (=> b!4208538 (= e!2612571 (Some!9927 (tuple2!44011 (Token!14183 (apply!10679 (transformation!7740 (h!51687 rules!3967)) (seqFromList!5739 (_1!25141 lt!1498493))) (h!51687 rules!3967) (size!33987 (seqFromList!5739 (_1!25141 lt!1498493))) (_1!25141 lt!1498493)) (_2!25141 lt!1498493))))))

(declare-fun lt!1498494 () Unit!65381)

(assert (=> b!4208538 (= lt!1498494 (longestMatchIsAcceptedByMatchOrIsEmpty!1612 (regex!7740 (h!51687 rules!3967)) input!3517))))

(declare-fun res!1728737 () Bool)

(assert (=> b!4208538 (= res!1728737 (isEmpty!27399 (_1!25141 (findLongestMatchInner!1639 (regex!7740 (h!51687 rules!3967)) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517)))))))

(declare-fun e!2612573 () Bool)

(assert (=> b!4208538 (=> res!1728737 e!2612573)))

(assert (=> b!4208538 e!2612573))

(declare-fun lt!1498490 () Unit!65381)

(assert (=> b!4208538 (= lt!1498490 lt!1498494)))

(declare-fun lt!1498492 () Unit!65381)

(assert (=> b!4208538 (= lt!1498492 (lemmaSemiInverse!2480 (transformation!7740 (h!51687 rules!3967)) (seqFromList!5739 (_1!25141 lt!1498493))))))

(declare-fun b!4208539 () Bool)

(declare-fun res!1728732 () Bool)

(assert (=> b!4208539 (=> (not res!1728732) (not e!2612572))))

(assert (=> b!4208539 (= res!1728732 (= (rule!10848 (_1!25139 (get!15048 lt!1498491))) (h!51687 rules!3967)))))

(declare-fun b!4208540 () Bool)

(assert (=> b!4208540 (= e!2612573 (matchR!6358 (regex!7740 (h!51687 rules!3967)) (_1!25141 (findLongestMatchInner!1639 (regex!7740 (h!51687 rules!3967)) Nil!46266 (size!33985 Nil!46266) input!3517 input!3517 (size!33985 input!3517)))))))

(declare-fun b!4208541 () Bool)

(declare-fun res!1728736 () Bool)

(assert (=> b!4208541 (=> (not res!1728736) (not e!2612572))))

(assert (=> b!4208541 (= res!1728736 (= (++!11814 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498491)))) (_2!25139 (get!15048 lt!1498491))) input!3517))))

(declare-fun b!4208542 () Bool)

(assert (=> b!4208542 (= e!2612571 None!9927)))

(assert (= (and d!1240450 c!717105) b!4208542))

(assert (= (and d!1240450 (not c!717105)) b!4208538))

(assert (= (and b!4208538 (not res!1728737)) b!4208540))

(assert (= (and d!1240450 (not res!1728735)) b!4208535))

(assert (= (and b!4208535 res!1728734) b!4208541))

(assert (= (and b!4208541 res!1728736) b!4208537))

(assert (= (and b!4208537 res!1728733) b!4208539))

(assert (= (and b!4208539 res!1728732) b!4208534))

(assert (= (and b!4208534 res!1728738) b!4208536))

(declare-fun m!4796605 () Bool)

(assert (=> d!1240450 m!4796605))

(declare-fun m!4796607 () Bool)

(assert (=> d!1240450 m!4796607))

(declare-fun m!4796609 () Bool)

(assert (=> d!1240450 m!4796609))

(declare-fun m!4796611 () Bool)

(assert (=> d!1240450 m!4796611))

(declare-fun m!4796613 () Bool)

(assert (=> b!4208537 m!4796613))

(declare-fun m!4796615 () Bool)

(assert (=> b!4208537 m!4796615))

(assert (=> b!4208537 m!4795651))

(assert (=> b!4208541 m!4796613))

(declare-fun m!4796617 () Bool)

(assert (=> b!4208541 m!4796617))

(assert (=> b!4208541 m!4796617))

(declare-fun m!4796619 () Bool)

(assert (=> b!4208541 m!4796619))

(assert (=> b!4208541 m!4796619))

(declare-fun m!4796621 () Bool)

(assert (=> b!4208541 m!4796621))

(assert (=> b!4208536 m!4796613))

(declare-fun m!4796623 () Bool)

(assert (=> b!4208536 m!4796623))

(assert (=> b!4208539 m!4796613))

(assert (=> b!4208534 m!4796613))

(declare-fun m!4796625 () Bool)

(assert (=> b!4208534 m!4796625))

(assert (=> b!4208534 m!4796625))

(declare-fun m!4796627 () Bool)

(assert (=> b!4208534 m!4796627))

(assert (=> b!4208540 m!4795851))

(assert (=> b!4208540 m!4795651))

(assert (=> b!4208540 m!4795851))

(assert (=> b!4208540 m!4795651))

(declare-fun m!4796629 () Bool)

(assert (=> b!4208540 m!4796629))

(declare-fun m!4796631 () Bool)

(assert (=> b!4208540 m!4796631))

(assert (=> b!4208538 m!4795851))

(assert (=> b!4208538 m!4795651))

(assert (=> b!4208538 m!4796629))

(declare-fun m!4796633 () Bool)

(assert (=> b!4208538 m!4796633))

(declare-fun m!4796635 () Bool)

(assert (=> b!4208538 m!4796635))

(assert (=> b!4208538 m!4796633))

(assert (=> b!4208538 m!4796633))

(declare-fun m!4796637 () Bool)

(assert (=> b!4208538 m!4796637))

(declare-fun m!4796639 () Bool)

(assert (=> b!4208538 m!4796639))

(declare-fun m!4796641 () Bool)

(assert (=> b!4208538 m!4796641))

(assert (=> b!4208538 m!4796633))

(declare-fun m!4796643 () Bool)

(assert (=> b!4208538 m!4796643))

(assert (=> b!4208538 m!4795851))

(assert (=> b!4208538 m!4795651))

(assert (=> b!4208535 m!4796613))

(assert (=> b!4208535 m!4796617))

(assert (=> b!4208535 m!4796617))

(assert (=> b!4208535 m!4796619))

(assert (=> b!4208535 m!4796619))

(declare-fun m!4796645 () Bool)

(assert (=> b!4208535 m!4796645))

(assert (=> bm!292788 d!1240450))

(assert (=> b!4207879 d!1240224))

(assert (=> b!4207879 d!1240150))

(assert (=> b!4207656 d!1240240))

(assert (=> b!4207656 d!1240242))

(assert (=> b!4207656 d!1240188))

(declare-fun d!1240452 () Bool)

(declare-fun res!1728743 () Bool)

(declare-fun e!2612579 () Bool)

(assert (=> d!1240452 (=> res!1728743 e!2612579)))

(assert (=> d!1240452 (= res!1728743 ((_ is Nil!46267) rules!3967))))

(assert (=> d!1240452 (= (noDuplicateTag!3189 thiss!26544 rules!3967 Nil!46269) e!2612579)))

(declare-fun b!4208547 () Bool)

(declare-fun e!2612580 () Bool)

(assert (=> b!4208547 (= e!2612579 e!2612580)))

(declare-fun res!1728744 () Bool)

(assert (=> b!4208547 (=> (not res!1728744) (not e!2612580))))

(declare-fun contains!9559 (List!46393 String!53720) Bool)

(assert (=> b!4208547 (= res!1728744 (not (contains!9559 Nil!46269 (tag!8604 (h!51687 rules!3967)))))))

(declare-fun b!4208548 () Bool)

(assert (=> b!4208548 (= e!2612580 (noDuplicateTag!3189 thiss!26544 (t!347562 rules!3967) (Cons!46269 (tag!8604 (h!51687 rules!3967)) Nil!46269)))))

(assert (= (and d!1240452 (not res!1728743)) b!4208547))

(assert (= (and b!4208547 res!1728744) b!4208548))

(declare-fun m!4796647 () Bool)

(assert (=> b!4208547 m!4796647))

(declare-fun m!4796649 () Bool)

(assert (=> b!4208548 m!4796649))

(assert (=> b!4207686 d!1240452))

(declare-fun d!1240454 () Bool)

(declare-fun lt!1498495 () Bool)

(assert (=> d!1240454 (= lt!1498495 (select (content!7237 rules!3967) (rule!10848 (_1!25139 (get!15048 lt!1498120)))))))

(declare-fun e!2612582 () Bool)

(assert (=> d!1240454 (= lt!1498495 e!2612582)))

(declare-fun res!1728745 () Bool)

(assert (=> d!1240454 (=> (not res!1728745) (not e!2612582))))

(assert (=> d!1240454 (= res!1728745 ((_ is Cons!46267) rules!3967))))

(assert (=> d!1240454 (= (contains!9557 rules!3967 (rule!10848 (_1!25139 (get!15048 lt!1498120)))) lt!1498495)))

(declare-fun b!4208549 () Bool)

(declare-fun e!2612581 () Bool)

(assert (=> b!4208549 (= e!2612582 e!2612581)))

(declare-fun res!1728746 () Bool)

(assert (=> b!4208549 (=> res!1728746 e!2612581)))

(assert (=> b!4208549 (= res!1728746 (= (h!51687 rules!3967) (rule!10848 (_1!25139 (get!15048 lt!1498120)))))))

(declare-fun b!4208550 () Bool)

(assert (=> b!4208550 (= e!2612581 (contains!9557 (t!347562 rules!3967) (rule!10848 (_1!25139 (get!15048 lt!1498120)))))))

(assert (= (and d!1240454 res!1728745) b!4208549))

(assert (= (and b!4208549 (not res!1728746)) b!4208550))

(assert (=> d!1240454 m!4795717))

(declare-fun m!4796651 () Bool)

(assert (=> d!1240454 m!4796651))

(declare-fun m!4796653 () Bool)

(assert (=> b!4208550 m!4796653))

(assert (=> b!4207654 d!1240454))

(assert (=> b!4207654 d!1240188))

(declare-fun d!1240456 () Bool)

(declare-fun e!2612584 () Bool)

(assert (=> d!1240456 e!2612584))

(declare-fun res!1728748 () Bool)

(assert (=> d!1240456 (=> res!1728748 e!2612584)))

(declare-fun lt!1498496 () Bool)

(assert (=> d!1240456 (= res!1728748 (not lt!1498496))))

(declare-fun e!2612585 () Bool)

(assert (=> d!1240456 (= lt!1498496 e!2612585)))

(declare-fun res!1728749 () Bool)

(assert (=> d!1240456 (=> res!1728749 e!2612585)))

(assert (=> d!1240456 (= res!1728749 ((_ is Nil!46266) (tail!6775 input!3517)))))

(assert (=> d!1240456 (= (isPrefix!4599 (tail!6775 input!3517) (tail!6775 input!3517)) lt!1498496)))

(declare-fun b!4208552 () Bool)

(declare-fun res!1728747 () Bool)

(declare-fun e!2612583 () Bool)

(assert (=> b!4208552 (=> (not res!1728747) (not e!2612583))))

(assert (=> b!4208552 (= res!1728747 (= (head!8928 (tail!6775 input!3517)) (head!8928 (tail!6775 input!3517))))))

(declare-fun b!4208551 () Bool)

(assert (=> b!4208551 (= e!2612585 e!2612583)))

(declare-fun res!1728750 () Bool)

(assert (=> b!4208551 (=> (not res!1728750) (not e!2612583))))

(assert (=> b!4208551 (= res!1728750 (not ((_ is Nil!46266) (tail!6775 input!3517))))))

(declare-fun b!4208553 () Bool)

(assert (=> b!4208553 (= e!2612583 (isPrefix!4599 (tail!6775 (tail!6775 input!3517)) (tail!6775 (tail!6775 input!3517))))))

(declare-fun b!4208554 () Bool)

(assert (=> b!4208554 (= e!2612584 (>= (size!33985 (tail!6775 input!3517)) (size!33985 (tail!6775 input!3517))))))

(assert (= (and d!1240456 (not res!1728749)) b!4208551))

(assert (= (and b!4208551 res!1728750) b!4208552))

(assert (= (and b!4208552 res!1728747) b!4208553))

(assert (= (and d!1240456 (not res!1728748)) b!4208554))

(assert (=> b!4208552 m!4795873))

(assert (=> b!4208552 m!4796059))

(assert (=> b!4208552 m!4795873))

(assert (=> b!4208552 m!4796059))

(assert (=> b!4208553 m!4795873))

(assert (=> b!4208553 m!4796063))

(assert (=> b!4208553 m!4795873))

(assert (=> b!4208553 m!4796063))

(assert (=> b!4208553 m!4796063))

(assert (=> b!4208553 m!4796063))

(declare-fun m!4796655 () Bool)

(assert (=> b!4208553 m!4796655))

(assert (=> b!4208554 m!4795873))

(assert (=> b!4208554 m!4796067))

(assert (=> b!4208554 m!4795873))

(assert (=> b!4208554 m!4796067))

(assert (=> b!4207870 d!1240456))

(assert (=> b!4207870 d!1240232))

(declare-fun d!1240458 () Bool)

(assert (=> d!1240458 (= (list!16723 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41))) (list!16725 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41)))))))

(declare-fun bs!597313 () Bool)

(assert (= bs!597313 d!1240458))

(declare-fun m!4796657 () Bool)

(assert (=> bs!597313 m!4796657))

(assert (=> b!4207891 d!1240458))

(declare-fun d!1240460 () Bool)

(declare-fun nullableFct!1224 (Regex!12645) Bool)

(assert (=> d!1240460 (= (nullable!4451 (regex!7740 rBis!178)) (nullableFct!1224 (regex!7740 rBis!178)))))

(declare-fun bs!597314 () Bool)

(assert (= bs!597314 d!1240460))

(declare-fun m!4796659 () Bool)

(assert (=> bs!597314 m!4796659))

(assert (=> b!4207912 d!1240460))

(declare-fun b!4208555 () Bool)

(declare-fun e!2612592 () Bool)

(declare-fun lt!1498497 () Bool)

(declare-fun call!292863 () Bool)

(assert (=> b!4208555 (= e!2612592 (= lt!1498497 call!292863))))

(declare-fun b!4208556 () Bool)

(declare-fun e!2612587 () Bool)

(assert (=> b!4208556 (= e!2612587 (= (head!8928 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120))))) (c!716928 (regex!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))))))

(declare-fun b!4208557 () Bool)

(declare-fun e!2612590 () Bool)

(assert (=> b!4208557 (= e!2612590 (nullable!4451 (regex!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120))))))))

(declare-fun b!4208558 () Bool)

(declare-fun res!1728758 () Bool)

(assert (=> b!4208558 (=> (not res!1728758) (not e!2612587))))

(assert (=> b!4208558 (= res!1728758 (isEmpty!27399 (tail!6775 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120)))))))))

(declare-fun b!4208559 () Bool)

(declare-fun e!2612591 () Bool)

(declare-fun e!2612586 () Bool)

(assert (=> b!4208559 (= e!2612591 e!2612586)))

(declare-fun res!1728756 () Bool)

(assert (=> b!4208559 (=> (not res!1728756) (not e!2612586))))

(assert (=> b!4208559 (= res!1728756 (not lt!1498497))))

(declare-fun b!4208560 () Bool)

(declare-fun e!2612588 () Bool)

(assert (=> b!4208560 (= e!2612588 (not (= (head!8928 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120))))) (c!716928 (regex!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120))))))))))

(declare-fun bm!292858 () Bool)

(assert (=> bm!292858 (= call!292863 (isEmpty!27399 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120))))))))

(declare-fun b!4208561 () Bool)

(declare-fun e!2612589 () Bool)

(assert (=> b!4208561 (= e!2612592 e!2612589)))

(declare-fun c!717106 () Bool)

(assert (=> b!4208561 (= c!717106 ((_ is EmptyLang!12645) (regex!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120))))))))

(declare-fun b!4208562 () Bool)

(declare-fun res!1728752 () Bool)

(assert (=> b!4208562 (=> (not res!1728752) (not e!2612587))))

(assert (=> b!4208562 (= res!1728752 (not call!292863))))

(declare-fun d!1240462 () Bool)

(assert (=> d!1240462 e!2612592))

(declare-fun c!717107 () Bool)

(assert (=> d!1240462 (= c!717107 ((_ is EmptyExpr!12645) (regex!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120))))))))

(assert (=> d!1240462 (= lt!1498497 e!2612590)))

(declare-fun c!717108 () Bool)

(assert (=> d!1240462 (= c!717108 (isEmpty!27399 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120))))))))

(assert (=> d!1240462 (validRegex!5738 (regex!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))))

(assert (=> d!1240462 (= (matchR!6358 (regex!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))) (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120))))) lt!1498497)))

(declare-fun b!4208563 () Bool)

(assert (=> b!4208563 (= e!2612590 (matchR!6358 (derivativeStep!3831 (regex!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))) (head!8928 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120)))))) (tail!6775 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120)))))))))

(declare-fun b!4208564 () Bool)

(assert (=> b!4208564 (= e!2612586 e!2612588)))

(declare-fun res!1728754 () Bool)

(assert (=> b!4208564 (=> res!1728754 e!2612588)))

(assert (=> b!4208564 (= res!1728754 call!292863)))

(declare-fun b!4208565 () Bool)

(declare-fun res!1728757 () Bool)

(assert (=> b!4208565 (=> res!1728757 e!2612591)))

(assert (=> b!4208565 (= res!1728757 (not ((_ is ElementMatch!12645) (regex!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))))))

(assert (=> b!4208565 (= e!2612589 e!2612591)))

(declare-fun b!4208566 () Bool)

(declare-fun res!1728751 () Bool)

(assert (=> b!4208566 (=> res!1728751 e!2612588)))

(assert (=> b!4208566 (= res!1728751 (not (isEmpty!27399 (tail!6775 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498120))))))))))

(declare-fun b!4208567 () Bool)

(declare-fun res!1728753 () Bool)

(assert (=> b!4208567 (=> res!1728753 e!2612591)))

(assert (=> b!4208567 (= res!1728753 e!2612587)))

(declare-fun res!1728755 () Bool)

(assert (=> b!4208567 (=> (not res!1728755) (not e!2612587))))

(assert (=> b!4208567 (= res!1728755 lt!1498497)))

(declare-fun b!4208568 () Bool)

(assert (=> b!4208568 (= e!2612589 (not lt!1498497))))

(assert (= (and d!1240462 c!717108) b!4208557))

(assert (= (and d!1240462 (not c!717108)) b!4208563))

(assert (= (and d!1240462 c!717107) b!4208555))

(assert (= (and d!1240462 (not c!717107)) b!4208561))

(assert (= (and b!4208561 c!717106) b!4208568))

(assert (= (and b!4208561 (not c!717106)) b!4208565))

(assert (= (and b!4208565 (not res!1728757)) b!4208567))

(assert (= (and b!4208567 res!1728755) b!4208562))

(assert (= (and b!4208562 res!1728752) b!4208558))

(assert (= (and b!4208558 res!1728758) b!4208556))

(assert (= (and b!4208567 (not res!1728753)) b!4208559))

(assert (= (and b!4208559 res!1728756) b!4208564))

(assert (= (and b!4208564 (not res!1728754)) b!4208566))

(assert (= (and b!4208566 (not res!1728751)) b!4208560))

(assert (= (or b!4208555 b!4208562 b!4208564) bm!292858))

(assert (=> bm!292858 m!4795635))

(declare-fun m!4796661 () Bool)

(assert (=> bm!292858 m!4796661))

(declare-fun m!4796663 () Bool)

(assert (=> b!4208557 m!4796663))

(assert (=> b!4208566 m!4795635))

(declare-fun m!4796665 () Bool)

(assert (=> b!4208566 m!4796665))

(assert (=> b!4208566 m!4796665))

(declare-fun m!4796667 () Bool)

(assert (=> b!4208566 m!4796667))

(assert (=> b!4208560 m!4795635))

(declare-fun m!4796669 () Bool)

(assert (=> b!4208560 m!4796669))

(assert (=> d!1240462 m!4795635))

(assert (=> d!1240462 m!4796661))

(declare-fun m!4796671 () Bool)

(assert (=> d!1240462 m!4796671))

(assert (=> b!4208563 m!4795635))

(assert (=> b!4208563 m!4796669))

(assert (=> b!4208563 m!4796669))

(declare-fun m!4796673 () Bool)

(assert (=> b!4208563 m!4796673))

(assert (=> b!4208563 m!4795635))

(assert (=> b!4208563 m!4796665))

(assert (=> b!4208563 m!4796673))

(assert (=> b!4208563 m!4796665))

(declare-fun m!4796675 () Bool)

(assert (=> b!4208563 m!4796675))

(assert (=> b!4208558 m!4795635))

(assert (=> b!4208558 m!4796665))

(assert (=> b!4208558 m!4796665))

(assert (=> b!4208558 m!4796667))

(assert (=> b!4208556 m!4795635))

(assert (=> b!4208556 m!4796669))

(assert (=> b!4207649 d!1240462))

(assert (=> b!4207649 d!1240188))

(assert (=> b!4207649 d!1240240))

(assert (=> b!4207649 d!1240242))

(declare-fun d!1240464 () Bool)

(declare-fun charsToInt!0 (List!46389) (_ BitVec 32))

(assert (=> d!1240464 (= (inv!16 (value!241119 t!8364)) (= (charsToInt!0 (text!56237 (value!241119 t!8364))) (value!241110 (value!241119 t!8364))))))

(declare-fun bs!597315 () Bool)

(assert (= bs!597315 d!1240464))

(declare-fun m!4796677 () Bool)

(assert (=> bs!597315 m!4796677))

(assert (=> b!4207882 d!1240464))

(declare-fun d!1240466 () Bool)

(declare-fun lt!1498498 () Int)

(assert (=> d!1240466 (>= lt!1498498 0)))

(declare-fun e!2612593 () Int)

(assert (=> d!1240466 (= lt!1498498 e!2612593)))

(declare-fun c!717109 () Bool)

(assert (=> d!1240466 (= c!717109 ((_ is Nil!46266) lt!1498190))))

(assert (=> d!1240466 (= (size!33985 lt!1498190) lt!1498498)))

(declare-fun b!4208569 () Bool)

(assert (=> b!4208569 (= e!2612593 0)))

(declare-fun b!4208570 () Bool)

(assert (=> b!4208570 (= e!2612593 (+ 1 (size!33985 (t!347561 lt!1498190))))))

(assert (= (and d!1240466 c!717109) b!4208569))

(assert (= (and d!1240466 (not c!717109)) b!4208570))

(declare-fun m!4796679 () Bool)

(assert (=> b!4208570 m!4796679))

(assert (=> b!4207874 d!1240466))

(assert (=> b!4207874 d!1240150))

(declare-fun d!1240468 () Bool)

(declare-fun lt!1498499 () Int)

(assert (=> d!1240468 (>= lt!1498499 0)))

(declare-fun e!2612594 () Int)

(assert (=> d!1240468 (= lt!1498499 e!2612594)))

(declare-fun c!717110 () Bool)

(assert (=> d!1240468 (= c!717110 ((_ is Nil!46266) suffix!1557))))

(assert (=> d!1240468 (= (size!33985 suffix!1557) lt!1498499)))

(declare-fun b!4208571 () Bool)

(assert (=> b!4208571 (= e!2612594 0)))

(declare-fun b!4208572 () Bool)

(assert (=> b!4208572 (= e!2612594 (+ 1 (size!33985 (t!347561 suffix!1557))))))

(assert (= (and d!1240468 c!717110) b!4208571))

(assert (= (and d!1240468 (not c!717110)) b!4208572))

(declare-fun m!4796681 () Bool)

(assert (=> b!4208572 m!4796681))

(assert (=> b!4207874 d!1240468))

(declare-fun b!4208574 () Bool)

(declare-fun e!2612596 () List!46390)

(assert (=> b!4208574 (= e!2612596 (Cons!46266 (h!51686 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180))))) (++!11814 (t!347561 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180))))) (_2!25139 (get!15048 lt!1498180)))))))

(declare-fun b!4208575 () Bool)

(declare-fun res!1728760 () Bool)

(declare-fun e!2612595 () Bool)

(assert (=> b!4208575 (=> (not res!1728760) (not e!2612595))))

(declare-fun lt!1498500 () List!46390)

(assert (=> b!4208575 (= res!1728760 (= (size!33985 lt!1498500) (+ (size!33985 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180))))) (size!33985 (_2!25139 (get!15048 lt!1498180))))))))

(declare-fun b!4208576 () Bool)

(assert (=> b!4208576 (= e!2612595 (or (not (= (_2!25139 (get!15048 lt!1498180)) Nil!46266)) (= lt!1498500 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180)))))))))

(declare-fun d!1240470 () Bool)

(assert (=> d!1240470 e!2612595))

(declare-fun res!1728759 () Bool)

(assert (=> d!1240470 (=> (not res!1728759) (not e!2612595))))

(assert (=> d!1240470 (= res!1728759 (= (content!7235 lt!1498500) ((_ map or) (content!7235 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180))))) (content!7235 (_2!25139 (get!15048 lt!1498180))))))))

(assert (=> d!1240470 (= lt!1498500 e!2612596)))

(declare-fun c!717111 () Bool)

(assert (=> d!1240470 (= c!717111 ((_ is Nil!46266) (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180))))))))

(assert (=> d!1240470 (= (++!11814 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180)))) (_2!25139 (get!15048 lt!1498180))) lt!1498500)))

(declare-fun b!4208573 () Bool)

(assert (=> b!4208573 (= e!2612596 (_2!25139 (get!15048 lt!1498180)))))

(assert (= (and d!1240470 c!717111) b!4208573))

(assert (= (and d!1240470 (not c!717111)) b!4208574))

(assert (= (and d!1240470 res!1728759) b!4208575))

(assert (= (and b!4208575 res!1728760) b!4208576))

(declare-fun m!4796683 () Bool)

(assert (=> b!4208574 m!4796683))

(declare-fun m!4796685 () Bool)

(assert (=> b!4208575 m!4796685))

(assert (=> b!4208575 m!4795841))

(declare-fun m!4796687 () Bool)

(assert (=> b!4208575 m!4796687))

(assert (=> b!4208575 m!4795837))

(declare-fun m!4796689 () Bool)

(assert (=> d!1240470 m!4796689))

(assert (=> d!1240470 m!4795841))

(declare-fun m!4796691 () Bool)

(assert (=> d!1240470 m!4796691))

(declare-fun m!4796693 () Bool)

(assert (=> d!1240470 m!4796693))

(assert (=> b!4207858 d!1240470))

(declare-fun d!1240472 () Bool)

(assert (=> d!1240472 (= (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180)))) (list!16725 (c!716929 (charsOf!5163 (_1!25139 (get!15048 lt!1498180))))))))

(declare-fun bs!597316 () Bool)

(assert (= bs!597316 d!1240472))

(declare-fun m!4796695 () Bool)

(assert (=> bs!597316 m!4796695))

(assert (=> b!4207858 d!1240472))

(declare-fun d!1240474 () Bool)

(declare-fun lt!1498501 () BalanceConc!27496)

(assert (=> d!1240474 (= (list!16723 lt!1498501) (originalCharacters!8122 (_1!25139 (get!15048 lt!1498180))))))

(assert (=> d!1240474 (= lt!1498501 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180))))) (value!241119 (_1!25139 (get!15048 lt!1498180)))))))

(assert (=> d!1240474 (= (charsOf!5163 (_1!25139 (get!15048 lt!1498180))) lt!1498501)))

(declare-fun b_lambda!123951 () Bool)

(assert (=> (not b_lambda!123951) (not d!1240474)))

(declare-fun tb!252541 () Bool)

(declare-fun t!347734 () Bool)

(assert (=> (and b!4207548 (= (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180)))))) t!347734) tb!252541))

(declare-fun b!4208577 () Bool)

(declare-fun e!2612597 () Bool)

(declare-fun tp!1286548 () Bool)

(assert (=> b!4208577 (= e!2612597 (and (inv!60864 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180))))) (value!241119 (_1!25139 (get!15048 lt!1498180)))))) tp!1286548))))

(declare-fun result!307796 () Bool)

(assert (=> tb!252541 (= result!307796 (and (inv!60865 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180))))) (value!241119 (_1!25139 (get!15048 lt!1498180))))) e!2612597))))

(assert (= tb!252541 b!4208577))

(declare-fun m!4796697 () Bool)

(assert (=> b!4208577 m!4796697))

(declare-fun m!4796699 () Bool)

(assert (=> tb!252541 m!4796699))

(assert (=> d!1240474 t!347734))

(declare-fun b_and!331019 () Bool)

(assert (= b_and!330981 (and (=> t!347734 result!307796) b_and!331019)))

(declare-fun tb!252543 () Bool)

(declare-fun t!347736 () Bool)

(assert (=> (and b!4207945 (= (toChars!10311 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180)))))) t!347736) tb!252543))

(declare-fun result!307798 () Bool)

(assert (= result!307798 result!307796))

(assert (=> d!1240474 t!347736))

(declare-fun b_and!331021 () Bool)

(assert (= b_and!330979 (and (=> t!347736 result!307798) b_and!331021)))

(declare-fun t!347738 () Bool)

(declare-fun tb!252545 () Bool)

(assert (=> (and b!4207533 (= (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180)))))) t!347738) tb!252545))

(declare-fun result!307800 () Bool)

(assert (= result!307800 result!307796))

(assert (=> d!1240474 t!347738))

(declare-fun b_and!331023 () Bool)

(assert (= b_and!330987 (and (=> t!347738 result!307800) b_and!331023)))

(declare-fun tb!252547 () Bool)

(declare-fun t!347740 () Bool)

(assert (=> (and b!4207551 (= (toChars!10311 (transformation!7740 (h!51687 rules!3967))) (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180)))))) t!347740) tb!252547))

(declare-fun result!307802 () Bool)

(assert (= result!307802 result!307796))

(assert (=> d!1240474 t!347740))

(declare-fun b_and!331025 () Bool)

(assert (= b_and!330985 (and (=> t!347740 result!307802) b_and!331025)))

(declare-fun t!347742 () Bool)

(declare-fun tb!252549 () Bool)

(assert (=> (and b!4207553 (= (toChars!10311 (transformation!7740 rBis!178)) (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180)))))) t!347742) tb!252549))

(declare-fun result!307804 () Bool)

(assert (= result!307804 result!307796))

(assert (=> d!1240474 t!347742))

(declare-fun b_and!331027 () Bool)

(assert (= b_and!330983 (and (=> t!347742 result!307804) b_and!331027)))

(declare-fun m!4796701 () Bool)

(assert (=> d!1240474 m!4796701))

(declare-fun m!4796703 () Bool)

(assert (=> d!1240474 m!4796703))

(assert (=> b!4207858 d!1240474))

(assert (=> b!4207858 d!1240300))

(declare-fun d!1240476 () Bool)

(assert (=> d!1240476 (= (head!8928 p!3001) (h!51686 p!3001))))

(assert (=> b!4207877 d!1240476))

(assert (=> b!4207877 d!1240186))

(declare-fun d!1240478 () Bool)

(assert (=> d!1240478 (= (isDefined!7380 lt!1498120) (not (isEmpty!27398 lt!1498120)))))

(declare-fun bs!597317 () Bool)

(assert (= bs!597317 d!1240478))

(assert (=> bs!597317 m!4795645))

(assert (=> b!4207651 d!1240478))

(declare-fun d!1240480 () Bool)

(declare-fun c!717114 () Bool)

(assert (=> d!1240480 (= c!717114 ((_ is Nil!46267) rules!3967))))

(declare-fun e!2612600 () (InoxSet Rule!15280))

(assert (=> d!1240480 (= (content!7237 rules!3967) e!2612600)))

(declare-fun b!4208582 () Bool)

(assert (=> b!4208582 (= e!2612600 ((as const (Array Rule!15280 Bool)) false))))

(declare-fun b!4208583 () Bool)

(assert (=> b!4208583 (= e!2612600 ((_ map or) (store ((as const (Array Rule!15280 Bool)) false) (h!51687 rules!3967) true) (content!7237 (t!347562 rules!3967))))))

(assert (= (and d!1240480 c!717114) b!4208582))

(assert (= (and d!1240480 (not c!717114)) b!4208583))

(declare-fun m!4796705 () Bool)

(assert (=> b!4208583 m!4796705))

(assert (=> b!4208583 m!4796597))

(assert (=> d!1240094 d!1240480))

(declare-fun d!1240482 () Bool)

(declare-fun e!2612602 () Bool)

(assert (=> d!1240482 e!2612602))

(declare-fun res!1728762 () Bool)

(assert (=> d!1240482 (=> res!1728762 e!2612602)))

(declare-fun lt!1498502 () Bool)

(assert (=> d!1240482 (= res!1728762 (not lt!1498502))))

(declare-fun e!2612603 () Bool)

(assert (=> d!1240482 (= lt!1498502 e!2612603)))

(declare-fun res!1728763 () Bool)

(assert (=> d!1240482 (=> res!1728763 e!2612603)))

(assert (=> d!1240482 (= res!1728763 ((_ is Nil!46266) (tail!6775 pBis!121)))))

(assert (=> d!1240482 (= (isPrefix!4599 (tail!6775 pBis!121) (tail!6775 input!3517)) lt!1498502)))

(declare-fun b!4208585 () Bool)

(declare-fun res!1728761 () Bool)

(declare-fun e!2612601 () Bool)

(assert (=> b!4208585 (=> (not res!1728761) (not e!2612601))))

(assert (=> b!4208585 (= res!1728761 (= (head!8928 (tail!6775 pBis!121)) (head!8928 (tail!6775 input!3517))))))

(declare-fun b!4208584 () Bool)

(assert (=> b!4208584 (= e!2612603 e!2612601)))

(declare-fun res!1728764 () Bool)

(assert (=> b!4208584 (=> (not res!1728764) (not e!2612601))))

(assert (=> b!4208584 (= res!1728764 (not ((_ is Nil!46266) (tail!6775 input!3517))))))

(declare-fun b!4208586 () Bool)

(assert (=> b!4208586 (= e!2612601 (isPrefix!4599 (tail!6775 (tail!6775 pBis!121)) (tail!6775 (tail!6775 input!3517))))))

(declare-fun b!4208587 () Bool)

(assert (=> b!4208587 (= e!2612602 (>= (size!33985 (tail!6775 input!3517)) (size!33985 (tail!6775 pBis!121))))))

(assert (= (and d!1240482 (not res!1728763)) b!4208584))

(assert (= (and b!4208584 res!1728764) b!4208585))

(assert (= (and b!4208585 res!1728761) b!4208586))

(assert (= (and d!1240482 (not res!1728762)) b!4208587))

(assert (=> b!4208585 m!4795935))

(declare-fun m!4796707 () Bool)

(assert (=> b!4208585 m!4796707))

(assert (=> b!4208585 m!4795873))

(assert (=> b!4208585 m!4796059))

(assert (=> b!4208586 m!4795935))

(declare-fun m!4796709 () Bool)

(assert (=> b!4208586 m!4796709))

(assert (=> b!4208586 m!4795873))

(assert (=> b!4208586 m!4796063))

(assert (=> b!4208586 m!4796709))

(assert (=> b!4208586 m!4796063))

(declare-fun m!4796711 () Bool)

(assert (=> b!4208586 m!4796711))

(assert (=> b!4208587 m!4795873))

(assert (=> b!4208587 m!4796067))

(assert (=> b!4208587 m!4795935))

(declare-fun m!4796713 () Bool)

(assert (=> b!4208587 m!4796713))

(assert (=> b!4207906 d!1240482))

(declare-fun d!1240484 () Bool)

(assert (=> d!1240484 (= (tail!6775 pBis!121) (t!347561 pBis!121))))

(assert (=> b!4207906 d!1240484))

(assert (=> b!4207906 d!1240232))

(declare-fun d!1240486 () Bool)

(declare-fun isBalanced!3744 (Conc!13951) Bool)

(assert (=> d!1240486 (= (inv!60865 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364))) (isBalanced!3744 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364)))))))

(declare-fun bs!597318 () Bool)

(assert (= bs!597318 d!1240486))

(declare-fun m!4796715 () Bool)

(assert (=> bs!597318 m!4796715))

(assert (=> tb!252403 d!1240486))

(declare-fun d!1240488 () Bool)

(declare-fun lt!1498503 () Int)

(assert (=> d!1240488 (>= lt!1498503 0)))

(declare-fun e!2612604 () Int)

(assert (=> d!1240488 (= lt!1498503 e!2612604)))

(declare-fun c!717115 () Bool)

(assert (=> d!1240488 (= c!717115 ((_ is Nil!46266) (_2!25139 (get!15048 lt!1498180))))))

(assert (=> d!1240488 (= (size!33985 (_2!25139 (get!15048 lt!1498180))) lt!1498503)))

(declare-fun b!4208588 () Bool)

(assert (=> b!4208588 (= e!2612604 0)))

(declare-fun b!4208589 () Bool)

(assert (=> b!4208589 (= e!2612604 (+ 1 (size!33985 (t!347561 (_2!25139 (get!15048 lt!1498180))))))))

(assert (= (and d!1240488 c!717115) b!4208588))

(assert (= (and d!1240488 (not c!717115)) b!4208589))

(declare-fun m!4796717 () Bool)

(assert (=> b!4208589 m!4796717))

(assert (=> b!4207854 d!1240488))

(assert (=> b!4207854 d!1240300))

(assert (=> b!4207854 d!1240224))

(declare-fun bs!597319 () Bool)

(declare-fun d!1240490 () Bool)

(assert (= bs!597319 (and d!1240490 d!1240194)))

(declare-fun lambda!129731 () Int)

(assert (=> bs!597319 (= (and (= (toChars!10311 (transformation!7740 (h!51687 rules!3967))) (toChars!10311 (transformation!7740 (rule!10848 t!8364)))) (= (toValue!10452 (transformation!7740 (h!51687 rules!3967))) (toValue!10452 (transformation!7740 (rule!10848 t!8364))))) (= lambda!129731 lambda!129703))))

(declare-fun bs!597320 () Bool)

(assert (= bs!597320 (and d!1240490 d!1240416)))

(assert (=> bs!597320 (= (and (= (toChars!10311 (transformation!7740 (h!51687 rules!3967))) (toChars!10311 (transformation!7740 rBis!178))) (= (toValue!10452 (transformation!7740 (h!51687 rules!3967))) (toValue!10452 (transformation!7740 rBis!178)))) (= lambda!129731 lambda!129728))))

(assert (=> d!1240490 true))

(assert (=> d!1240490 (< (dynLambda!19951 order!24519 (toChars!10311 (transformation!7740 (h!51687 rules!3967)))) (dynLambda!19952 order!24521 lambda!129731))))

(assert (=> d!1240490 true))

(assert (=> d!1240490 (< (dynLambda!19953 order!24523 (toValue!10452 (transformation!7740 (h!51687 rules!3967)))) (dynLambda!19952 order!24521 lambda!129731))))

(assert (=> d!1240490 (= (semiInverseModEq!3360 (toChars!10311 (transformation!7740 (h!51687 rules!3967))) (toValue!10452 (transformation!7740 (h!51687 rules!3967)))) (Forall!1575 lambda!129731))))

(declare-fun bs!597321 () Bool)

(assert (= bs!597321 d!1240490))

(declare-fun m!4796719 () Bool)

(assert (=> bs!597321 m!4796719))

(assert (=> d!1240160 d!1240490))

(declare-fun d!1240492 () Bool)

(declare-fun c!717116 () Bool)

(assert (=> d!1240492 (= c!717116 ((_ is Nil!46266) lt!1498098))))

(declare-fun e!2612605 () (InoxSet C!25484))

(assert (=> d!1240492 (= (content!7235 lt!1498098) e!2612605)))

(declare-fun b!4208590 () Bool)

(assert (=> b!4208590 (= e!2612605 ((as const (Array C!25484 Bool)) false))))

(declare-fun b!4208591 () Bool)

(assert (=> b!4208591 (= e!2612605 ((_ map or) (store ((as const (Array C!25484 Bool)) false) (h!51686 lt!1498098) true) (content!7235 (t!347561 lt!1498098))))))

(assert (= (and d!1240492 c!717116) b!4208590))

(assert (= (and d!1240492 (not c!717116)) b!4208591))

(declare-fun m!4796721 () Bool)

(assert (=> b!4208591 m!4796721))

(declare-fun m!4796723 () Bool)

(assert (=> b!4208591 m!4796723))

(assert (=> d!1240052 d!1240492))

(declare-fun d!1240494 () Bool)

(declare-fun c!717117 () Bool)

(assert (=> d!1240494 (= c!717117 ((_ is Nil!46266) pBis!121))))

(declare-fun e!2612606 () (InoxSet C!25484))

(assert (=> d!1240494 (= (content!7235 pBis!121) e!2612606)))

(declare-fun b!4208592 () Bool)

(assert (=> b!4208592 (= e!2612606 ((as const (Array C!25484 Bool)) false))))

(declare-fun b!4208593 () Bool)

(assert (=> b!4208593 (= e!2612606 ((_ map or) (store ((as const (Array C!25484 Bool)) false) (h!51686 pBis!121) true) (content!7235 (t!347561 pBis!121))))))

(assert (= (and d!1240494 c!717117) b!4208592))

(assert (= (and d!1240494 (not c!717117)) b!4208593))

(declare-fun m!4796725 () Bool)

(assert (=> b!4208593 m!4796725))

(assert (=> b!4208593 m!4796589))

(assert (=> d!1240052 d!1240494))

(declare-fun d!1240496 () Bool)

(declare-fun c!717118 () Bool)

(assert (=> d!1240496 (= c!717118 ((_ is Nil!46266) suffixBis!41))))

(declare-fun e!2612607 () (InoxSet C!25484))

(assert (=> d!1240496 (= (content!7235 suffixBis!41) e!2612607)))

(declare-fun b!4208594 () Bool)

(assert (=> b!4208594 (= e!2612607 ((as const (Array C!25484 Bool)) false))))

(declare-fun b!4208595 () Bool)

(assert (=> b!4208595 (= e!2612607 ((_ map or) (store ((as const (Array C!25484 Bool)) false) (h!51686 suffixBis!41) true) (content!7235 (t!347561 suffixBis!41))))))

(assert (= (and d!1240496 c!717118) b!4208594))

(assert (= (and d!1240496 (not c!717118)) b!4208595))

(declare-fun m!4796727 () Bool)

(assert (=> b!4208595 m!4796727))

(declare-fun m!4796729 () Bool)

(assert (=> b!4208595 m!4796729))

(assert (=> d!1240052 d!1240496))

(assert (=> d!1240128 d!1240126))

(declare-fun d!1240498 () Bool)

(assert (=> d!1240498 (isPrefix!4599 input!3517 input!3517)))

(assert (=> d!1240498 true))

(declare-fun _$45!2087 () Unit!65381)

(assert (=> d!1240498 (= (choose!25792 input!3517 input!3517) _$45!2087)))

(declare-fun bs!597322 () Bool)

(assert (= bs!597322 d!1240498))

(assert (=> bs!597322 m!4795535))

(assert (=> d!1240128 d!1240498))

(declare-fun d!1240500 () Bool)

(assert (=> d!1240500 (= (inv!60865 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41))) (isBalanced!3744 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41)))))))

(declare-fun bs!597323 () Bool)

(assert (= bs!597323 d!1240500))

(declare-fun m!4796731 () Bool)

(assert (=> bs!597323 m!4796731))

(assert (=> tb!252383 d!1240500))

(declare-fun d!1240502 () Bool)

(declare-fun lt!1498504 () Int)

(assert (=> d!1240502 (>= lt!1498504 0)))

(declare-fun e!2612608 () Int)

(assert (=> d!1240502 (= lt!1498504 e!2612608)))

(declare-fun c!717119 () Bool)

(assert (=> d!1240502 (= c!717119 ((_ is Nil!46266) (t!347561 pBis!121)))))

(assert (=> d!1240502 (= (size!33985 (t!347561 pBis!121)) lt!1498504)))

(declare-fun b!4208596 () Bool)

(assert (=> b!4208596 (= e!2612608 0)))

(declare-fun b!4208597 () Bool)

(assert (=> b!4208597 (= e!2612608 (+ 1 (size!33985 (t!347561 (t!347561 pBis!121)))))))

(assert (= (and d!1240502 c!717119) b!4208596))

(assert (= (and d!1240502 (not c!717119)) b!4208597))

(declare-fun m!4796733 () Bool)

(assert (=> b!4208597 m!4796733))

(assert (=> b!4207901 d!1240502))

(declare-fun bs!597324 () Bool)

(declare-fun d!1240504 () Bool)

(assert (= bs!597324 (and d!1240504 d!1240194)))

(declare-fun lambda!129732 () Int)

(assert (=> bs!597324 (= (and (= (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (toChars!10311 (transformation!7740 (rule!10848 t!8364)))) (= (toValue!10452 (transformation!7740 (rule!10848 tBis!41))) (toValue!10452 (transformation!7740 (rule!10848 t!8364))))) (= lambda!129732 lambda!129703))))

(declare-fun bs!597325 () Bool)

(assert (= bs!597325 (and d!1240504 d!1240416)))

(assert (=> bs!597325 (= (and (= (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (toChars!10311 (transformation!7740 rBis!178))) (= (toValue!10452 (transformation!7740 (rule!10848 tBis!41))) (toValue!10452 (transformation!7740 rBis!178)))) (= lambda!129732 lambda!129728))))

(declare-fun bs!597326 () Bool)

(assert (= bs!597326 (and d!1240504 d!1240490)))

(assert (=> bs!597326 (= (and (= (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (toChars!10311 (transformation!7740 (h!51687 rules!3967)))) (= (toValue!10452 (transformation!7740 (rule!10848 tBis!41))) (toValue!10452 (transformation!7740 (h!51687 rules!3967))))) (= lambda!129732 lambda!129731))))

(assert (=> d!1240504 true))

(assert (=> d!1240504 (< (dynLambda!19951 order!24519 (toChars!10311 (transformation!7740 (rule!10848 tBis!41)))) (dynLambda!19952 order!24521 lambda!129732))))

(assert (=> d!1240504 true))

(assert (=> d!1240504 (< (dynLambda!19953 order!24523 (toValue!10452 (transformation!7740 (rule!10848 tBis!41)))) (dynLambda!19952 order!24521 lambda!129732))))

(assert (=> d!1240504 (= (semiInverseModEq!3360 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (toValue!10452 (transformation!7740 (rule!10848 tBis!41)))) (Forall!1575 lambda!129732))))

(declare-fun bs!597327 () Bool)

(assert (= bs!597327 d!1240504))

(declare-fun m!4796735 () Bool)

(assert (=> bs!597327 m!4796735))

(assert (=> d!1240098 d!1240504))

(declare-fun d!1240506 () Bool)

(declare-fun charsToBigInt!1 (List!46389) Int)

(assert (=> d!1240506 (= (inv!17 (value!241119 t!8364)) (= (charsToBigInt!1 (text!56238 (value!241119 t!8364))) (value!241111 (value!241119 t!8364))))))

(declare-fun bs!597328 () Bool)

(assert (= bs!597328 d!1240506))

(declare-fun m!4796737 () Bool)

(assert (=> bs!597328 m!4796737))

(assert (=> b!4207880 d!1240506))

(assert (=> b!4207856 d!1240300))

(declare-fun b!4208616 () Bool)

(declare-fun e!2612628 () Bool)

(declare-fun e!2612629 () Bool)

(assert (=> b!4208616 (= e!2612628 e!2612629)))

(declare-fun res!1728777 () Bool)

(assert (=> b!4208616 (= res!1728777 (not (nullable!4451 (reg!12974 (regex!7740 rBis!178)))))))

(assert (=> b!4208616 (=> (not res!1728777) (not e!2612629))))

(declare-fun b!4208617 () Bool)

(declare-fun e!2612626 () Bool)

(assert (=> b!4208617 (= e!2612626 e!2612628)))

(declare-fun c!717124 () Bool)

(assert (=> b!4208617 (= c!717124 ((_ is Star!12645) (regex!7740 rBis!178)))))

(declare-fun d!1240508 () Bool)

(declare-fun res!1728778 () Bool)

(assert (=> d!1240508 (=> res!1728778 e!2612626)))

(assert (=> d!1240508 (= res!1728778 ((_ is ElementMatch!12645) (regex!7740 rBis!178)))))

(assert (=> d!1240508 (= (validRegex!5738 (regex!7740 rBis!178)) e!2612626)))

(declare-fun b!4208618 () Bool)

(declare-fun e!2612623 () Bool)

(declare-fun call!292871 () Bool)

(assert (=> b!4208618 (= e!2612623 call!292871)))

(declare-fun b!4208619 () Bool)

(declare-fun e!2612627 () Bool)

(assert (=> b!4208619 (= e!2612628 e!2612627)))

(declare-fun c!717125 () Bool)

(assert (=> b!4208619 (= c!717125 ((_ is Union!12645) (regex!7740 rBis!178)))))

(declare-fun b!4208620 () Bool)

(declare-fun res!1728776 () Bool)

(declare-fun e!2612624 () Bool)

(assert (=> b!4208620 (=> (not res!1728776) (not e!2612624))))

(declare-fun call!292870 () Bool)

(assert (=> b!4208620 (= res!1728776 call!292870)))

(assert (=> b!4208620 (= e!2612627 e!2612624)))

(declare-fun b!4208621 () Bool)

(declare-fun res!1728779 () Bool)

(declare-fun e!2612625 () Bool)

(assert (=> b!4208621 (=> res!1728779 e!2612625)))

(assert (=> b!4208621 (= res!1728779 (not ((_ is Concat!20616) (regex!7740 rBis!178))))))

(assert (=> b!4208621 (= e!2612627 e!2612625)))

(declare-fun b!4208622 () Bool)

(assert (=> b!4208622 (= e!2612625 e!2612623)))

(declare-fun res!1728775 () Bool)

(assert (=> b!4208622 (=> (not res!1728775) (not e!2612623))))

(assert (=> b!4208622 (= res!1728775 call!292870)))

(declare-fun bm!292865 () Bool)

(declare-fun call!292872 () Bool)

(assert (=> bm!292865 (= call!292871 call!292872)))

(declare-fun b!4208623 () Bool)

(assert (=> b!4208623 (= e!2612624 call!292871)))

(declare-fun bm!292866 () Bool)

(assert (=> bm!292866 (= call!292870 (validRegex!5738 (ite c!717125 (regOne!25803 (regex!7740 rBis!178)) (regOne!25802 (regex!7740 rBis!178)))))))

(declare-fun b!4208624 () Bool)

(assert (=> b!4208624 (= e!2612629 call!292872)))

(declare-fun bm!292867 () Bool)

(assert (=> bm!292867 (= call!292872 (validRegex!5738 (ite c!717124 (reg!12974 (regex!7740 rBis!178)) (ite c!717125 (regTwo!25803 (regex!7740 rBis!178)) (regTwo!25802 (regex!7740 rBis!178))))))))

(assert (= (and d!1240508 (not res!1728778)) b!4208617))

(assert (= (and b!4208617 c!717124) b!4208616))

(assert (= (and b!4208617 (not c!717124)) b!4208619))

(assert (= (and b!4208616 res!1728777) b!4208624))

(assert (= (and b!4208619 c!717125) b!4208620))

(assert (= (and b!4208619 (not c!717125)) b!4208621))

(assert (= (and b!4208620 res!1728776) b!4208623))

(assert (= (and b!4208621 (not res!1728779)) b!4208622))

(assert (= (and b!4208622 res!1728775) b!4208618))

(assert (= (or b!4208623 b!4208618) bm!292865))

(assert (= (or b!4208620 b!4208622) bm!292866))

(assert (= (or b!4208624 bm!292865) bm!292867))

(declare-fun m!4796739 () Bool)

(assert (=> b!4208616 m!4796739))

(declare-fun m!4796741 () Bool)

(assert (=> bm!292866 m!4796741))

(declare-fun m!4796743 () Bool)

(assert (=> bm!292867 m!4796743))

(assert (=> d!1240156 d!1240508))

(declare-fun d!1240510 () Bool)

(declare-fun lt!1498505 () Int)

(assert (=> d!1240510 (>= lt!1498505 0)))

(declare-fun e!2612630 () Int)

(assert (=> d!1240510 (= lt!1498505 e!2612630)))

(declare-fun c!717126 () Bool)

(assert (=> d!1240510 (= c!717126 ((_ is Nil!46266) lt!1498098))))

(assert (=> d!1240510 (= (size!33985 lt!1498098) lt!1498505)))

(declare-fun b!4208625 () Bool)

(assert (=> b!4208625 (= e!2612630 0)))

(declare-fun b!4208626 () Bool)

(assert (=> b!4208626 (= e!2612630 (+ 1 (size!33985 (t!347561 lt!1498098))))))

(assert (= (and d!1240510 c!717126) b!4208625))

(assert (= (and d!1240510 (not c!717126)) b!4208626))

(declare-fun m!4796745 () Bool)

(assert (=> b!4208626 m!4796745))

(assert (=> b!4207589 d!1240510))

(assert (=> b!4207589 d!1240148))

(declare-fun d!1240512 () Bool)

(declare-fun lt!1498506 () Int)

(assert (=> d!1240512 (>= lt!1498506 0)))

(declare-fun e!2612631 () Int)

(assert (=> d!1240512 (= lt!1498506 e!2612631)))

(declare-fun c!717127 () Bool)

(assert (=> d!1240512 (= c!717127 ((_ is Nil!46266) suffixBis!41))))

(assert (=> d!1240512 (= (size!33985 suffixBis!41) lt!1498506)))

(declare-fun b!4208627 () Bool)

(assert (=> b!4208627 (= e!2612631 0)))

(declare-fun b!4208628 () Bool)

(assert (=> b!4208628 (= e!2612631 (+ 1 (size!33985 (t!347561 suffixBis!41))))))

(assert (= (and d!1240512 c!717127) b!4208627))

(assert (= (and d!1240512 (not c!717127)) b!4208628))

(declare-fun m!4796747 () Bool)

(assert (=> b!4208628 m!4796747))

(assert (=> b!4207589 d!1240512))

(declare-fun d!1240514 () Bool)

(declare-fun lt!1498507 () Int)

(assert (=> d!1240514 (>= lt!1498507 0)))

(declare-fun e!2612632 () Int)

(assert (=> d!1240514 (= lt!1498507 e!2612632)))

(declare-fun c!717128 () Bool)

(assert (=> d!1240514 (= c!717128 ((_ is Nil!46266) (originalCharacters!8122 t!8364)))))

(assert (=> d!1240514 (= (size!33985 (originalCharacters!8122 t!8364)) lt!1498507)))

(declare-fun b!4208629 () Bool)

(assert (=> b!4208629 (= e!2612632 0)))

(declare-fun b!4208630 () Bool)

(assert (=> b!4208630 (= e!2612632 (+ 1 (size!33985 (t!347561 (originalCharacters!8122 t!8364)))))))

(assert (= (and d!1240514 c!717128) b!4208629))

(assert (= (and d!1240514 (not c!717128)) b!4208630))

(declare-fun m!4796749 () Bool)

(assert (=> b!4208630 m!4796749))

(assert (=> b!4207894 d!1240514))

(declare-fun d!1240516 () Bool)

(assert (=> d!1240516 (= (inv!16 (value!241119 tBis!41)) (= (charsToInt!0 (text!56237 (value!241119 tBis!41))) (value!241110 (value!241119 tBis!41))))))

(declare-fun bs!597329 () Bool)

(assert (= bs!597329 d!1240516))

(declare-fun m!4796751 () Bool)

(assert (=> bs!597329 m!4796751))

(assert (=> b!4207703 d!1240516))

(declare-fun bs!597330 () Bool)

(declare-fun d!1240518 () Bool)

(assert (= bs!597330 (and d!1240518 d!1240194)))

(declare-fun lambda!129733 () Int)

(assert (=> bs!597330 (= (and (= (toChars!10311 (transformation!7740 rBis!178)) (toChars!10311 (transformation!7740 (rule!10848 t!8364)))) (= (toValue!10452 (transformation!7740 rBis!178)) (toValue!10452 (transformation!7740 (rule!10848 t!8364))))) (= lambda!129733 lambda!129703))))

(declare-fun bs!597331 () Bool)

(assert (= bs!597331 (and d!1240518 d!1240416)))

(assert (=> bs!597331 (= lambda!129733 lambda!129728)))

(declare-fun bs!597332 () Bool)

(assert (= bs!597332 (and d!1240518 d!1240490)))

(assert (=> bs!597332 (= (and (= (toChars!10311 (transformation!7740 rBis!178)) (toChars!10311 (transformation!7740 (h!51687 rules!3967)))) (= (toValue!10452 (transformation!7740 rBis!178)) (toValue!10452 (transformation!7740 (h!51687 rules!3967))))) (= lambda!129733 lambda!129731))))

(declare-fun bs!597333 () Bool)

(assert (= bs!597333 (and d!1240518 d!1240504)))

(assert (=> bs!597333 (= (and (= (toChars!10311 (transformation!7740 rBis!178)) (toChars!10311 (transformation!7740 (rule!10848 tBis!41)))) (= (toValue!10452 (transformation!7740 rBis!178)) (toValue!10452 (transformation!7740 (rule!10848 tBis!41))))) (= lambda!129733 lambda!129732))))

(assert (=> d!1240518 true))

(assert (=> d!1240518 (< (dynLambda!19951 order!24519 (toChars!10311 (transformation!7740 rBis!178))) (dynLambda!19952 order!24521 lambda!129733))))

(assert (=> d!1240518 true))

(assert (=> d!1240518 (< (dynLambda!19953 order!24523 (toValue!10452 (transformation!7740 rBis!178))) (dynLambda!19952 order!24521 lambda!129733))))

(assert (=> d!1240518 (= (semiInverseModEq!3360 (toChars!10311 (transformation!7740 rBis!178)) (toValue!10452 (transformation!7740 rBis!178))) (Forall!1575 lambda!129733))))

(declare-fun bs!597334 () Bool)

(assert (= bs!597334 d!1240518))

(declare-fun m!4796753 () Bool)

(assert (=> bs!597334 m!4796753))

(assert (=> d!1240138 d!1240518))

(declare-fun b!4208631 () Bool)

(declare-fun e!2612639 () Bool)

(declare-fun lt!1498508 () Bool)

(declare-fun call!292873 () Bool)

(assert (=> b!4208631 (= e!2612639 (= lt!1498508 call!292873))))

(declare-fun b!4208632 () Bool)

(declare-fun e!2612634 () Bool)

(assert (=> b!4208632 (= e!2612634 (= (head!8928 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180))))) (c!716928 (regex!7740 rBis!178))))))

(declare-fun b!4208633 () Bool)

(declare-fun e!2612637 () Bool)

(assert (=> b!4208633 (= e!2612637 (nullable!4451 (regex!7740 rBis!178)))))

(declare-fun b!4208634 () Bool)

(declare-fun res!1728787 () Bool)

(assert (=> b!4208634 (=> (not res!1728787) (not e!2612634))))

(assert (=> b!4208634 (= res!1728787 (isEmpty!27399 (tail!6775 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180)))))))))

(declare-fun b!4208635 () Bool)

(declare-fun e!2612638 () Bool)

(declare-fun e!2612633 () Bool)

(assert (=> b!4208635 (= e!2612638 e!2612633)))

(declare-fun res!1728785 () Bool)

(assert (=> b!4208635 (=> (not res!1728785) (not e!2612633))))

(assert (=> b!4208635 (= res!1728785 (not lt!1498508))))

(declare-fun b!4208636 () Bool)

(declare-fun e!2612635 () Bool)

(assert (=> b!4208636 (= e!2612635 (not (= (head!8928 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180))))) (c!716928 (regex!7740 rBis!178)))))))

(declare-fun bm!292868 () Bool)

(assert (=> bm!292868 (= call!292873 (isEmpty!27399 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180))))))))

(declare-fun b!4208637 () Bool)

(declare-fun e!2612636 () Bool)

(assert (=> b!4208637 (= e!2612639 e!2612636)))

(declare-fun c!717129 () Bool)

(assert (=> b!4208637 (= c!717129 ((_ is EmptyLang!12645) (regex!7740 rBis!178)))))

(declare-fun b!4208638 () Bool)

(declare-fun res!1728781 () Bool)

(assert (=> b!4208638 (=> (not res!1728781) (not e!2612634))))

(assert (=> b!4208638 (= res!1728781 (not call!292873))))

(declare-fun d!1240520 () Bool)

(assert (=> d!1240520 e!2612639))

(declare-fun c!717130 () Bool)

(assert (=> d!1240520 (= c!717130 ((_ is EmptyExpr!12645) (regex!7740 rBis!178)))))

(assert (=> d!1240520 (= lt!1498508 e!2612637)))

(declare-fun c!717131 () Bool)

(assert (=> d!1240520 (= c!717131 (isEmpty!27399 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180))))))))

(assert (=> d!1240520 (validRegex!5738 (regex!7740 rBis!178))))

(assert (=> d!1240520 (= (matchR!6358 (regex!7740 rBis!178) (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180))))) lt!1498508)))

(declare-fun b!4208639 () Bool)

(assert (=> b!4208639 (= e!2612637 (matchR!6358 (derivativeStep!3831 (regex!7740 rBis!178) (head!8928 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180)))))) (tail!6775 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180)))))))))

(declare-fun b!4208640 () Bool)

(assert (=> b!4208640 (= e!2612633 e!2612635)))

(declare-fun res!1728783 () Bool)

(assert (=> b!4208640 (=> res!1728783 e!2612635)))

(assert (=> b!4208640 (= res!1728783 call!292873)))

(declare-fun b!4208641 () Bool)

(declare-fun res!1728786 () Bool)

(assert (=> b!4208641 (=> res!1728786 e!2612638)))

(assert (=> b!4208641 (= res!1728786 (not ((_ is ElementMatch!12645) (regex!7740 rBis!178))))))

(assert (=> b!4208641 (= e!2612636 e!2612638)))

(declare-fun b!4208642 () Bool)

(declare-fun res!1728780 () Bool)

(assert (=> b!4208642 (=> res!1728780 e!2612635)))

(assert (=> b!4208642 (= res!1728780 (not (isEmpty!27399 (tail!6775 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498180))))))))))

(declare-fun b!4208643 () Bool)

(declare-fun res!1728782 () Bool)

(assert (=> b!4208643 (=> res!1728782 e!2612638)))

(assert (=> b!4208643 (= res!1728782 e!2612634)))

(declare-fun res!1728784 () Bool)

(assert (=> b!4208643 (=> (not res!1728784) (not e!2612634))))

(assert (=> b!4208643 (= res!1728784 lt!1498508)))

(declare-fun b!4208644 () Bool)

(assert (=> b!4208644 (= e!2612636 (not lt!1498508))))

(assert (= (and d!1240520 c!717131) b!4208633))

(assert (= (and d!1240520 (not c!717131)) b!4208639))

(assert (= (and d!1240520 c!717130) b!4208631))

(assert (= (and d!1240520 (not c!717130)) b!4208637))

(assert (= (and b!4208637 c!717129) b!4208644))

(assert (= (and b!4208637 (not c!717129)) b!4208641))

(assert (= (and b!4208641 (not res!1728786)) b!4208643))

(assert (= (and b!4208643 res!1728784) b!4208638))

(assert (= (and b!4208638 res!1728781) b!4208634))

(assert (= (and b!4208634 res!1728787) b!4208632))

(assert (= (and b!4208643 (not res!1728782)) b!4208635))

(assert (= (and b!4208635 res!1728785) b!4208640))

(assert (= (and b!4208640 (not res!1728783)) b!4208642))

(assert (= (and b!4208642 (not res!1728780)) b!4208636))

(assert (= (or b!4208631 b!4208638 b!4208640) bm!292868))

(assert (=> bm!292868 m!4795841))

(declare-fun m!4796755 () Bool)

(assert (=> bm!292868 m!4796755))

(assert (=> b!4208633 m!4795941))

(assert (=> b!4208642 m!4795841))

(declare-fun m!4796757 () Bool)

(assert (=> b!4208642 m!4796757))

(assert (=> b!4208642 m!4796757))

(declare-fun m!4796759 () Bool)

(assert (=> b!4208642 m!4796759))

(assert (=> b!4208636 m!4795841))

(declare-fun m!4796761 () Bool)

(assert (=> b!4208636 m!4796761))

(assert (=> d!1240520 m!4795841))

(assert (=> d!1240520 m!4796755))

(assert (=> d!1240520 m!4795939))

(assert (=> b!4208639 m!4795841))

(assert (=> b!4208639 m!4796761))

(assert (=> b!4208639 m!4796761))

(declare-fun m!4796763 () Bool)

(assert (=> b!4208639 m!4796763))

(assert (=> b!4208639 m!4795841))

(assert (=> b!4208639 m!4796757))

(assert (=> b!4208639 m!4796763))

(assert (=> b!4208639 m!4796757))

(declare-fun m!4796765 () Bool)

(assert (=> b!4208639 m!4796765))

(assert (=> b!4208634 m!4795841))

(assert (=> b!4208634 m!4796757))

(assert (=> b!4208634 m!4796757))

(assert (=> b!4208634 m!4796759))

(assert (=> b!4208632 m!4795841))

(assert (=> b!4208632 m!4796761))

(assert (=> b!4207852 d!1240520))

(assert (=> b!4207852 d!1240472))

(assert (=> b!4207852 d!1240474))

(assert (=> b!4207852 d!1240300))

(declare-fun d!1240522 () Bool)

(assert (=> d!1240522 (= (inv!17 (value!241119 tBis!41)) (= (charsToBigInt!1 (text!56238 (value!241119 tBis!41))) (value!241111 (value!241119 tBis!41))))))

(declare-fun bs!597335 () Bool)

(assert (= bs!597335 d!1240522))

(declare-fun m!4796767 () Bool)

(assert (=> bs!597335 m!4796767))

(assert (=> b!4207701 d!1240522))

(declare-fun d!1240524 () Bool)

(assert (=> d!1240524 true))

(declare-fun lt!1498511 () Bool)

(assert (=> d!1240524 (= lt!1498511 (rulesValidInductive!2870 thiss!26544 rules!3967))))

(declare-fun lambda!129736 () Int)

(declare-fun forall!8490 (List!46391 Int) Bool)

(assert (=> d!1240524 (= lt!1498511 (forall!8490 rules!3967 lambda!129736))))

(assert (=> d!1240524 (= (rulesValid!3028 thiss!26544 rules!3967) lt!1498511)))

(declare-fun bs!597336 () Bool)

(assert (= bs!597336 d!1240524))

(assert (=> bs!597336 m!4795647))

(declare-fun m!4796769 () Bool)

(assert (=> bs!597336 m!4796769))

(assert (=> d!1240084 d!1240524))

(declare-fun d!1240526 () Bool)

(assert (=> d!1240526 (= (isEmpty!27398 lt!1498120) (not ((_ is Some!9927) lt!1498120)))))

(assert (=> d!1240062 d!1240526))

(assert (=> d!1240062 d!1240126))

(assert (=> d!1240062 d!1240128))

(declare-fun bs!597337 () Bool)

(declare-fun d!1240528 () Bool)

(assert (= bs!597337 (and d!1240528 d!1240524)))

(declare-fun lambda!129739 () Int)

(assert (=> bs!597337 (= lambda!129739 lambda!129736)))

(assert (=> d!1240528 true))

(declare-fun lt!1498514 () Bool)

(assert (=> d!1240528 (= lt!1498514 (forall!8490 rules!3967 lambda!129739))))

(declare-fun e!2612644 () Bool)

(assert (=> d!1240528 (= lt!1498514 e!2612644)))

(declare-fun res!1728793 () Bool)

(assert (=> d!1240528 (=> res!1728793 e!2612644)))

(assert (=> d!1240528 (= res!1728793 (not ((_ is Cons!46267) rules!3967)))))

(assert (=> d!1240528 (= (rulesValidInductive!2870 thiss!26544 rules!3967) lt!1498514)))

(declare-fun b!4208651 () Bool)

(declare-fun e!2612645 () Bool)

(assert (=> b!4208651 (= e!2612644 e!2612645)))

(declare-fun res!1728792 () Bool)

(assert (=> b!4208651 (=> (not res!1728792) (not e!2612645))))

(assert (=> b!4208651 (= res!1728792 (ruleValid!3452 thiss!26544 (h!51687 rules!3967)))))

(declare-fun b!4208652 () Bool)

(assert (=> b!4208652 (= e!2612645 (rulesValidInductive!2870 thiss!26544 (t!347562 rules!3967)))))

(assert (= (and d!1240528 (not res!1728793)) b!4208651))

(assert (= (and b!4208651 res!1728792) b!4208652))

(declare-fun m!4796771 () Bool)

(assert (=> d!1240528 m!4796771))

(assert (=> b!4208651 m!4796611))

(declare-fun m!4796773 () Bool)

(assert (=> b!4208652 m!4796773))

(assert (=> d!1240062 d!1240528))

(assert (=> b!4207871 d!1240224))

(declare-fun d!1240530 () Bool)

(declare-fun lt!1498515 () Int)

(assert (=> d!1240530 (>= lt!1498515 0)))

(declare-fun e!2612646 () Int)

(assert (=> d!1240530 (= lt!1498515 e!2612646)))

(declare-fun c!717132 () Bool)

(assert (=> d!1240530 (= c!717132 ((_ is Nil!46266) (originalCharacters!8122 tBis!41)))))

(assert (=> d!1240530 (= (size!33985 (originalCharacters!8122 tBis!41)) lt!1498515)))

(declare-fun b!4208653 () Bool)

(assert (=> b!4208653 (= e!2612646 0)))

(declare-fun b!4208654 () Bool)

(assert (=> b!4208654 (= e!2612646 (+ 1 (size!33985 (t!347561 (originalCharacters!8122 tBis!41)))))))

(assert (= (and d!1240530 c!717132) b!4208653))

(assert (= (and d!1240530 (not c!717132)) b!4208654))

(declare-fun m!4796775 () Bool)

(assert (=> b!4208654 m!4796775))

(assert (=> b!4207892 d!1240530))

(declare-fun d!1240532 () Bool)

(assert (=> d!1240532 (= (inv!60857 (tag!8604 (h!51687 (t!347562 rules!3967)))) (= (mod (str.len (value!241118 (tag!8604 (h!51687 (t!347562 rules!3967))))) 2) 0))))

(assert (=> b!4207944 d!1240532))

(declare-fun d!1240534 () Bool)

(declare-fun res!1728794 () Bool)

(declare-fun e!2612647 () Bool)

(assert (=> d!1240534 (=> (not res!1728794) (not e!2612647))))

(assert (=> d!1240534 (= res!1728794 (semiInverseModEq!3360 (toChars!10311 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toValue!10452 (transformation!7740 (h!51687 (t!347562 rules!3967))))))))

(assert (=> d!1240534 (= (inv!60860 (transformation!7740 (h!51687 (t!347562 rules!3967)))) e!2612647)))

(declare-fun b!4208655 () Bool)

(assert (=> b!4208655 (= e!2612647 (equivClasses!3259 (toChars!10311 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toValue!10452 (transformation!7740 (h!51687 (t!347562 rules!3967))))))))

(assert (= (and d!1240534 res!1728794) b!4208655))

(declare-fun m!4796777 () Bool)

(assert (=> d!1240534 m!4796777))

(declare-fun m!4796779 () Bool)

(assert (=> b!4208655 m!4796779))

(assert (=> b!4207944 d!1240534))

(declare-fun d!1240536 () Bool)

(declare-fun e!2612650 () Bool)

(assert (=> d!1240536 e!2612650))

(declare-fun res!1728795 () Bool)

(assert (=> d!1240536 (=> res!1728795 e!2612650)))

(declare-fun lt!1498516 () Option!9928)

(assert (=> d!1240536 (= res!1728795 (isEmpty!27398 lt!1498516))))

(declare-fun e!2612648 () Option!9928)

(assert (=> d!1240536 (= lt!1498516 e!2612648)))

(declare-fun c!717133 () Bool)

(assert (=> d!1240536 (= c!717133 (and ((_ is Cons!46267) (t!347562 rules!3967)) ((_ is Nil!46267) (t!347562 (t!347562 rules!3967)))))))

(declare-fun lt!1498518 () Unit!65381)

(declare-fun lt!1498517 () Unit!65381)

(assert (=> d!1240536 (= lt!1498518 lt!1498517)))

(assert (=> d!1240536 (isPrefix!4599 input!3517 input!3517)))

(assert (=> d!1240536 (= lt!1498517 (lemmaIsPrefixRefl!3016 input!3517 input!3517))))

(assert (=> d!1240536 (rulesValidInductive!2870 thiss!26544 (t!347562 rules!3967))))

(assert (=> d!1240536 (= (maxPrefix!4375 thiss!26544 (t!347562 rules!3967) input!3517) lt!1498516)))

(declare-fun b!4208656 () Bool)

(declare-fun res!1728801 () Bool)

(declare-fun e!2612649 () Bool)

(assert (=> b!4208656 (=> (not res!1728801) (not e!2612649))))

(assert (=> b!4208656 (= res!1728801 (= (value!241119 (_1!25139 (get!15048 lt!1498516))) (apply!10679 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498516)))) (seqFromList!5739 (originalCharacters!8122 (_1!25139 (get!15048 lt!1498516)))))))))

(declare-fun b!4208657 () Bool)

(declare-fun res!1728796 () Bool)

(assert (=> b!4208657 (=> (not res!1728796) (not e!2612649))))

(assert (=> b!4208657 (= res!1728796 (matchR!6358 (regex!7740 (rule!10848 (_1!25139 (get!15048 lt!1498516)))) (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498516))))))))

(declare-fun b!4208658 () Bool)

(declare-fun res!1728798 () Bool)

(assert (=> b!4208658 (=> (not res!1728798) (not e!2612649))))

(assert (=> b!4208658 (= res!1728798 (= (++!11814 (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498516)))) (_2!25139 (get!15048 lt!1498516))) input!3517))))

(declare-fun b!4208659 () Bool)

(assert (=> b!4208659 (= e!2612650 e!2612649)))

(declare-fun res!1728800 () Bool)

(assert (=> b!4208659 (=> (not res!1728800) (not e!2612649))))

(assert (=> b!4208659 (= res!1728800 (isDefined!7380 lt!1498516))))

(declare-fun b!4208660 () Bool)

(declare-fun res!1728799 () Bool)

(assert (=> b!4208660 (=> (not res!1728799) (not e!2612649))))

(assert (=> b!4208660 (= res!1728799 (< (size!33985 (_2!25139 (get!15048 lt!1498516))) (size!33985 input!3517)))))

(declare-fun bm!292869 () Bool)

(declare-fun call!292874 () Option!9928)

(assert (=> bm!292869 (= call!292874 (maxPrefixOneRule!3330 thiss!26544 (h!51687 (t!347562 rules!3967)) input!3517))))

(declare-fun b!4208661 () Bool)

(assert (=> b!4208661 (= e!2612648 call!292874)))

(declare-fun b!4208662 () Bool)

(assert (=> b!4208662 (= e!2612649 (contains!9557 (t!347562 rules!3967) (rule!10848 (_1!25139 (get!15048 lt!1498516)))))))

(declare-fun b!4208663 () Bool)

(declare-fun lt!1498520 () Option!9928)

(declare-fun lt!1498519 () Option!9928)

(assert (=> b!4208663 (= e!2612648 (ite (and ((_ is None!9927) lt!1498520) ((_ is None!9927) lt!1498519)) None!9927 (ite ((_ is None!9927) lt!1498519) lt!1498520 (ite ((_ is None!9927) lt!1498520) lt!1498519 (ite (>= (size!33984 (_1!25139 (v!40791 lt!1498520))) (size!33984 (_1!25139 (v!40791 lt!1498519)))) lt!1498520 lt!1498519)))))))

(assert (=> b!4208663 (= lt!1498520 call!292874)))

(assert (=> b!4208663 (= lt!1498519 (maxPrefix!4375 thiss!26544 (t!347562 (t!347562 rules!3967)) input!3517))))

(declare-fun b!4208664 () Bool)

(declare-fun res!1728797 () Bool)

(assert (=> b!4208664 (=> (not res!1728797) (not e!2612649))))

(assert (=> b!4208664 (= res!1728797 (= (list!16723 (charsOf!5163 (_1!25139 (get!15048 lt!1498516)))) (originalCharacters!8122 (_1!25139 (get!15048 lt!1498516)))))))

(assert (= (and d!1240536 c!717133) b!4208661))

(assert (= (and d!1240536 (not c!717133)) b!4208663))

(assert (= (or b!4208661 b!4208663) bm!292869))

(assert (= (and d!1240536 (not res!1728795)) b!4208659))

(assert (= (and b!4208659 res!1728800) b!4208664))

(assert (= (and b!4208664 res!1728797) b!4208660))

(assert (= (and b!4208660 res!1728799) b!4208658))

(assert (= (and b!4208658 res!1728798) b!4208656))

(assert (= (and b!4208656 res!1728801) b!4208657))

(assert (= (and b!4208657 res!1728796) b!4208662))

(declare-fun m!4796781 () Bool)

(assert (=> b!4208658 m!4796781))

(declare-fun m!4796783 () Bool)

(assert (=> b!4208658 m!4796783))

(assert (=> b!4208658 m!4796783))

(declare-fun m!4796785 () Bool)

(assert (=> b!4208658 m!4796785))

(assert (=> b!4208658 m!4796785))

(declare-fun m!4796787 () Bool)

(assert (=> b!4208658 m!4796787))

(declare-fun m!4796789 () Bool)

(assert (=> b!4208659 m!4796789))

(assert (=> b!4208656 m!4796781))

(declare-fun m!4796791 () Bool)

(assert (=> b!4208656 m!4796791))

(assert (=> b!4208656 m!4796791))

(declare-fun m!4796793 () Bool)

(assert (=> b!4208656 m!4796793))

(declare-fun m!4796795 () Bool)

(assert (=> d!1240536 m!4796795))

(assert (=> d!1240536 m!4795535))

(assert (=> d!1240536 m!4795537))

(assert (=> d!1240536 m!4796773))

(assert (=> b!4208660 m!4796781))

(declare-fun m!4796797 () Bool)

(assert (=> b!4208660 m!4796797))

(assert (=> b!4208660 m!4795651))

(assert (=> b!4208664 m!4796781))

(assert (=> b!4208664 m!4796783))

(assert (=> b!4208664 m!4796783))

(assert (=> b!4208664 m!4796785))

(declare-fun m!4796799 () Bool)

(assert (=> b!4208663 m!4796799))

(assert (=> b!4208662 m!4796781))

(declare-fun m!4796801 () Bool)

(assert (=> b!4208662 m!4796801))

(declare-fun m!4796803 () Bool)

(assert (=> bm!292869 m!4796803))

(assert (=> b!4208657 m!4796781))

(assert (=> b!4208657 m!4796783))

(assert (=> b!4208657 m!4796783))

(assert (=> b!4208657 m!4796785))

(assert (=> b!4208657 m!4796785))

(declare-fun m!4796805 () Bool)

(assert (=> b!4208657 m!4796805))

(assert (=> b!4207655 d!1240536))

(assert (=> b!4207869 d!1240186))

(declare-fun b!4208673 () Bool)

(declare-fun tp!1286555 () Bool)

(declare-fun e!2612656 () Bool)

(declare-fun tp!1286556 () Bool)

(assert (=> b!4208673 (= e!2612656 (and (inv!60864 (left!34444 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364))))) tp!1286555 (inv!60864 (right!34774 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364))))) tp!1286556))))

(declare-fun b!4208675 () Bool)

(declare-fun e!2612655 () Bool)

(declare-fun tp!1286557 () Bool)

(assert (=> b!4208675 (= e!2612655 tp!1286557)))

(declare-fun b!4208674 () Bool)

(declare-fun inv!60871 (IArray!27907) Bool)

(assert (=> b!4208674 (= e!2612656 (and (inv!60871 (xs!17257 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364))))) e!2612655))))

(assert (=> b!4207895 (= tp!1286363 (and (inv!60864 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364)))) e!2612656))))

(assert (= (and b!4207895 ((_ is Node!13951) (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364))))) b!4208673))

(assert (= b!4208674 b!4208675))

(assert (= (and b!4207895 ((_ is Leaf!21565) (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (value!241119 t!8364))))) b!4208674))

(declare-fun m!4796807 () Bool)

(assert (=> b!4208673 m!4796807))

(declare-fun m!4796809 () Bool)

(assert (=> b!4208673 m!4796809))

(declare-fun m!4796811 () Bool)

(assert (=> b!4208674 m!4796811))

(assert (=> b!4207895 m!4795917))

(declare-fun b!4208676 () Bool)

(declare-fun e!2612657 () Bool)

(declare-fun tp!1286558 () Bool)

(assert (=> b!4208676 (= e!2612657 (and tp_is_empty!22257 tp!1286558))))

(assert (=> b!4207947 (= tp!1286396 e!2612657)))

(assert (= (and b!4207947 ((_ is Cons!46266) (t!347561 (originalCharacters!8122 t!8364)))) b!4208676))

(declare-fun b!4208677 () Bool)

(declare-fun e!2612658 () Bool)

(declare-fun tp!1286559 () Bool)

(assert (=> b!4208677 (= e!2612658 (and tp_is_empty!22257 tp!1286559))))

(assert (=> b!4207920 (= tp!1286367 e!2612658)))

(assert (= (and b!4207920 ((_ is Cons!46266) (t!347561 (originalCharacters!8122 tBis!41)))) b!4208677))

(declare-fun b!4208681 () Bool)

(declare-fun e!2612659 () Bool)

(declare-fun tp!1286564 () Bool)

(declare-fun tp!1286560 () Bool)

(assert (=> b!4208681 (= e!2612659 (and tp!1286564 tp!1286560))))

(declare-fun b!4208678 () Bool)

(assert (=> b!4208678 (= e!2612659 tp_is_empty!22257)))

(declare-fun b!4208680 () Bool)

(declare-fun tp!1286562 () Bool)

(assert (=> b!4208680 (= e!2612659 tp!1286562)))

(assert (=> b!4207954 (= tp!1286404 e!2612659)))

(declare-fun b!4208679 () Bool)

(declare-fun tp!1286561 () Bool)

(declare-fun tp!1286563 () Bool)

(assert (=> b!4208679 (= e!2612659 (and tp!1286561 tp!1286563))))

(assert (= (and b!4207954 ((_ is ElementMatch!12645) (reg!12974 (regex!7740 (rule!10848 t!8364))))) b!4208678))

(assert (= (and b!4207954 ((_ is Concat!20616) (reg!12974 (regex!7740 (rule!10848 t!8364))))) b!4208679))

(assert (= (and b!4207954 ((_ is Star!12645) (reg!12974 (regex!7740 (rule!10848 t!8364))))) b!4208680))

(assert (= (and b!4207954 ((_ is Union!12645) (reg!12974 (regex!7740 (rule!10848 t!8364))))) b!4208681))

(declare-fun b!4208685 () Bool)

(declare-fun e!2612660 () Bool)

(declare-fun tp!1286569 () Bool)

(declare-fun tp!1286565 () Bool)

(assert (=> b!4208685 (= e!2612660 (and tp!1286569 tp!1286565))))

(declare-fun b!4208682 () Bool)

(assert (=> b!4208682 (= e!2612660 tp_is_empty!22257)))

(declare-fun b!4208684 () Bool)

(declare-fun tp!1286567 () Bool)

(assert (=> b!4208684 (= e!2612660 tp!1286567)))

(assert (=> b!4207955 (= tp!1286406 e!2612660)))

(declare-fun b!4208683 () Bool)

(declare-fun tp!1286566 () Bool)

(declare-fun tp!1286568 () Bool)

(assert (=> b!4208683 (= e!2612660 (and tp!1286566 tp!1286568))))

(assert (= (and b!4207955 ((_ is ElementMatch!12645) (regOne!25803 (regex!7740 (rule!10848 t!8364))))) b!4208682))

(assert (= (and b!4207955 ((_ is Concat!20616) (regOne!25803 (regex!7740 (rule!10848 t!8364))))) b!4208683))

(assert (= (and b!4207955 ((_ is Star!12645) (regOne!25803 (regex!7740 (rule!10848 t!8364))))) b!4208684))

(assert (= (and b!4207955 ((_ is Union!12645) (regOne!25803 (regex!7740 (rule!10848 t!8364))))) b!4208685))

(declare-fun b!4208689 () Bool)

(declare-fun e!2612661 () Bool)

(declare-fun tp!1286574 () Bool)

(declare-fun tp!1286570 () Bool)

(assert (=> b!4208689 (= e!2612661 (and tp!1286574 tp!1286570))))

(declare-fun b!4208686 () Bool)

(assert (=> b!4208686 (= e!2612661 tp_is_empty!22257)))

(declare-fun b!4208688 () Bool)

(declare-fun tp!1286572 () Bool)

(assert (=> b!4208688 (= e!2612661 tp!1286572)))

(assert (=> b!4207955 (= tp!1286402 e!2612661)))

(declare-fun b!4208687 () Bool)

(declare-fun tp!1286571 () Bool)

(declare-fun tp!1286573 () Bool)

(assert (=> b!4208687 (= e!2612661 (and tp!1286571 tp!1286573))))

(assert (= (and b!4207955 ((_ is ElementMatch!12645) (regTwo!25803 (regex!7740 (rule!10848 t!8364))))) b!4208686))

(assert (= (and b!4207955 ((_ is Concat!20616) (regTwo!25803 (regex!7740 (rule!10848 t!8364))))) b!4208687))

(assert (= (and b!4207955 ((_ is Star!12645) (regTwo!25803 (regex!7740 (rule!10848 t!8364))))) b!4208688))

(assert (= (and b!4207955 ((_ is Union!12645) (regTwo!25803 (regex!7740 (rule!10848 t!8364))))) b!4208689))

(declare-fun b!4208690 () Bool)

(declare-fun e!2612662 () Bool)

(declare-fun tp!1286575 () Bool)

(assert (=> b!4208690 (= e!2612662 (and tp_is_empty!22257 tp!1286575))))

(assert (=> b!4207956 (= tp!1286407 e!2612662)))

(assert (= (and b!4207956 ((_ is Cons!46266) (t!347561 (t!347561 input!3517)))) b!4208690))

(declare-fun b!4208691 () Bool)

(declare-fun e!2612663 () Bool)

(declare-fun tp!1286576 () Bool)

(assert (=> b!4208691 (= e!2612663 (and tp_is_empty!22257 tp!1286576))))

(assert (=> b!4207919 (= tp!1286366 e!2612663)))

(assert (= (and b!4207919 ((_ is Cons!46266) (t!347561 (t!347561 pBis!121)))) b!4208691))

(declare-fun e!2612665 () Bool)

(declare-fun b!4208692 () Bool)

(declare-fun tp!1286578 () Bool)

(declare-fun tp!1286577 () Bool)

(assert (=> b!4208692 (= e!2612665 (and (inv!60864 (left!34444 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41))))) tp!1286577 (inv!60864 (right!34774 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41))))) tp!1286578))))

(declare-fun b!4208694 () Bool)

(declare-fun e!2612664 () Bool)

(declare-fun tp!1286579 () Bool)

(assert (=> b!4208694 (= e!2612664 tp!1286579)))

(declare-fun b!4208693 () Bool)

(assert (=> b!4208693 (= e!2612665 (and (inv!60871 (xs!17257 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41))))) e!2612664))))

(assert (=> b!4207723 (= tp!1286310 (and (inv!60864 (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41)))) e!2612665))))

(assert (= (and b!4207723 ((_ is Node!13951) (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41))))) b!4208692))

(assert (= b!4208693 b!4208694))

(assert (= (and b!4207723 ((_ is Leaf!21565) (c!716929 (dynLambda!19944 (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (value!241119 tBis!41))))) b!4208693))

(declare-fun m!4796813 () Bool)

(assert (=> b!4208692 m!4796813))

(declare-fun m!4796815 () Bool)

(assert (=> b!4208692 m!4796815))

(declare-fun m!4796817 () Bool)

(assert (=> b!4208693 m!4796817))

(assert (=> b!4207723 m!4795729))

(declare-fun b!4208698 () Bool)

(declare-fun e!2612666 () Bool)

(declare-fun tp!1286584 () Bool)

(declare-fun tp!1286580 () Bool)

(assert (=> b!4208698 (= e!2612666 (and tp!1286584 tp!1286580))))

(declare-fun b!4208695 () Bool)

(assert (=> b!4208695 (= e!2612666 tp_is_empty!22257)))

(declare-fun b!4208697 () Bool)

(declare-fun tp!1286582 () Bool)

(assert (=> b!4208697 (= e!2612666 tp!1286582)))

(assert (=> b!4207953 (= tp!1286403 e!2612666)))

(declare-fun b!4208696 () Bool)

(declare-fun tp!1286581 () Bool)

(declare-fun tp!1286583 () Bool)

(assert (=> b!4208696 (= e!2612666 (and tp!1286581 tp!1286583))))

(assert (= (and b!4207953 ((_ is ElementMatch!12645) (regOne!25802 (regex!7740 (rule!10848 t!8364))))) b!4208695))

(assert (= (and b!4207953 ((_ is Concat!20616) (regOne!25802 (regex!7740 (rule!10848 t!8364))))) b!4208696))

(assert (= (and b!4207953 ((_ is Star!12645) (regOne!25802 (regex!7740 (rule!10848 t!8364))))) b!4208697))

(assert (= (and b!4207953 ((_ is Union!12645) (regOne!25802 (regex!7740 (rule!10848 t!8364))))) b!4208698))

(declare-fun b!4208702 () Bool)

(declare-fun e!2612667 () Bool)

(declare-fun tp!1286589 () Bool)

(declare-fun tp!1286585 () Bool)

(assert (=> b!4208702 (= e!2612667 (and tp!1286589 tp!1286585))))

(declare-fun b!4208699 () Bool)

(assert (=> b!4208699 (= e!2612667 tp_is_empty!22257)))

(declare-fun b!4208701 () Bool)

(declare-fun tp!1286587 () Bool)

(assert (=> b!4208701 (= e!2612667 tp!1286587)))

(assert (=> b!4207953 (= tp!1286405 e!2612667)))

(declare-fun b!4208700 () Bool)

(declare-fun tp!1286586 () Bool)

(declare-fun tp!1286588 () Bool)

(assert (=> b!4208700 (= e!2612667 (and tp!1286586 tp!1286588))))

(assert (= (and b!4207953 ((_ is ElementMatch!12645) (regTwo!25802 (regex!7740 (rule!10848 t!8364))))) b!4208699))

(assert (= (and b!4207953 ((_ is Concat!20616) (regTwo!25802 (regex!7740 (rule!10848 t!8364))))) b!4208700))

(assert (= (and b!4207953 ((_ is Star!12645) (regTwo!25802 (regex!7740 (rule!10848 t!8364))))) b!4208701))

(assert (= (and b!4207953 ((_ is Union!12645) (regTwo!25802 (regex!7740 (rule!10848 t!8364))))) b!4208702))

(declare-fun b!4208706 () Bool)

(declare-fun e!2612668 () Bool)

(declare-fun tp!1286594 () Bool)

(declare-fun tp!1286590 () Bool)

(assert (=> b!4208706 (= e!2612668 (and tp!1286594 tp!1286590))))

(declare-fun b!4208703 () Bool)

(assert (=> b!4208703 (= e!2612668 tp_is_empty!22257)))

(declare-fun b!4208705 () Bool)

(declare-fun tp!1286592 () Bool)

(assert (=> b!4208705 (= e!2612668 tp!1286592)))

(assert (=> b!4207961 (= tp!1286412 e!2612668)))

(declare-fun b!4208704 () Bool)

(declare-fun tp!1286591 () Bool)

(declare-fun tp!1286593 () Bool)

(assert (=> b!4208704 (= e!2612668 (and tp!1286591 tp!1286593))))

(assert (= (and b!4207961 ((_ is ElementMatch!12645) (reg!12974 (regex!7740 (h!51687 rules!3967))))) b!4208703))

(assert (= (and b!4207961 ((_ is Concat!20616) (reg!12974 (regex!7740 (h!51687 rules!3967))))) b!4208704))

(assert (= (and b!4207961 ((_ is Star!12645) (reg!12974 (regex!7740 (h!51687 rules!3967))))) b!4208705))

(assert (= (and b!4207961 ((_ is Union!12645) (reg!12974 (regex!7740 (h!51687 rules!3967))))) b!4208706))

(declare-fun b!4208710 () Bool)

(declare-fun e!2612669 () Bool)

(declare-fun tp!1286599 () Bool)

(declare-fun tp!1286595 () Bool)

(assert (=> b!4208710 (= e!2612669 (and tp!1286599 tp!1286595))))

(declare-fun b!4208707 () Bool)

(assert (=> b!4208707 (= e!2612669 tp_is_empty!22257)))

(declare-fun b!4208709 () Bool)

(declare-fun tp!1286597 () Bool)

(assert (=> b!4208709 (= e!2612669 tp!1286597)))

(assert (=> b!4207962 (= tp!1286414 e!2612669)))

(declare-fun b!4208708 () Bool)

(declare-fun tp!1286596 () Bool)

(declare-fun tp!1286598 () Bool)

(assert (=> b!4208708 (= e!2612669 (and tp!1286596 tp!1286598))))

(assert (= (and b!4207962 ((_ is ElementMatch!12645) (regOne!25803 (regex!7740 (h!51687 rules!3967))))) b!4208707))

(assert (= (and b!4207962 ((_ is Concat!20616) (regOne!25803 (regex!7740 (h!51687 rules!3967))))) b!4208708))

(assert (= (and b!4207962 ((_ is Star!12645) (regOne!25803 (regex!7740 (h!51687 rules!3967))))) b!4208709))

(assert (= (and b!4207962 ((_ is Union!12645) (regOne!25803 (regex!7740 (h!51687 rules!3967))))) b!4208710))

(declare-fun b!4208714 () Bool)

(declare-fun e!2612670 () Bool)

(declare-fun tp!1286604 () Bool)

(declare-fun tp!1286600 () Bool)

(assert (=> b!4208714 (= e!2612670 (and tp!1286604 tp!1286600))))

(declare-fun b!4208711 () Bool)

(assert (=> b!4208711 (= e!2612670 tp_is_empty!22257)))

(declare-fun b!4208713 () Bool)

(declare-fun tp!1286602 () Bool)

(assert (=> b!4208713 (= e!2612670 tp!1286602)))

(assert (=> b!4207962 (= tp!1286410 e!2612670)))

(declare-fun b!4208712 () Bool)

(declare-fun tp!1286601 () Bool)

(declare-fun tp!1286603 () Bool)

(assert (=> b!4208712 (= e!2612670 (and tp!1286601 tp!1286603))))

(assert (= (and b!4207962 ((_ is ElementMatch!12645) (regTwo!25803 (regex!7740 (h!51687 rules!3967))))) b!4208711))

(assert (= (and b!4207962 ((_ is Concat!20616) (regTwo!25803 (regex!7740 (h!51687 rules!3967))))) b!4208712))

(assert (= (and b!4207962 ((_ is Star!12645) (regTwo!25803 (regex!7740 (h!51687 rules!3967))))) b!4208713))

(assert (= (and b!4207962 ((_ is Union!12645) (regTwo!25803 (regex!7740 (h!51687 rules!3967))))) b!4208714))

(declare-fun b!4208715 () Bool)

(declare-fun e!2612671 () Bool)

(declare-fun tp!1286605 () Bool)

(assert (=> b!4208715 (= e!2612671 (and tp_is_empty!22257 tp!1286605))))

(assert (=> b!4207946 (= tp!1286395 e!2612671)))

(assert (= (and b!4207946 ((_ is Cons!46266) (t!347561 (t!347561 p!3001)))) b!4208715))

(declare-fun b!4208719 () Bool)

(declare-fun e!2612672 () Bool)

(declare-fun tp!1286610 () Bool)

(declare-fun tp!1286606 () Bool)

(assert (=> b!4208719 (= e!2612672 (and tp!1286610 tp!1286606))))

(declare-fun b!4208716 () Bool)

(assert (=> b!4208716 (= e!2612672 tp_is_empty!22257)))

(declare-fun b!4208718 () Bool)

(declare-fun tp!1286608 () Bool)

(assert (=> b!4208718 (= e!2612672 tp!1286608)))

(assert (=> b!4207960 (= tp!1286411 e!2612672)))

(declare-fun b!4208717 () Bool)

(declare-fun tp!1286607 () Bool)

(declare-fun tp!1286609 () Bool)

(assert (=> b!4208717 (= e!2612672 (and tp!1286607 tp!1286609))))

(assert (= (and b!4207960 ((_ is ElementMatch!12645) (regOne!25802 (regex!7740 (h!51687 rules!3967))))) b!4208716))

(assert (= (and b!4207960 ((_ is Concat!20616) (regOne!25802 (regex!7740 (h!51687 rules!3967))))) b!4208717))

(assert (= (and b!4207960 ((_ is Star!12645) (regOne!25802 (regex!7740 (h!51687 rules!3967))))) b!4208718))

(assert (= (and b!4207960 ((_ is Union!12645) (regOne!25802 (regex!7740 (h!51687 rules!3967))))) b!4208719))

(declare-fun b!4208723 () Bool)

(declare-fun e!2612673 () Bool)

(declare-fun tp!1286615 () Bool)

(declare-fun tp!1286611 () Bool)

(assert (=> b!4208723 (= e!2612673 (and tp!1286615 tp!1286611))))

(declare-fun b!4208720 () Bool)

(assert (=> b!4208720 (= e!2612673 tp_is_empty!22257)))

(declare-fun b!4208722 () Bool)

(declare-fun tp!1286613 () Bool)

(assert (=> b!4208722 (= e!2612673 tp!1286613)))

(assert (=> b!4207960 (= tp!1286413 e!2612673)))

(declare-fun b!4208721 () Bool)

(declare-fun tp!1286612 () Bool)

(declare-fun tp!1286614 () Bool)

(assert (=> b!4208721 (= e!2612673 (and tp!1286612 tp!1286614))))

(assert (= (and b!4207960 ((_ is ElementMatch!12645) (regTwo!25802 (regex!7740 (h!51687 rules!3967))))) b!4208720))

(assert (= (and b!4207960 ((_ is Concat!20616) (regTwo!25802 (regex!7740 (h!51687 rules!3967))))) b!4208721))

(assert (= (and b!4207960 ((_ is Star!12645) (regTwo!25802 (regex!7740 (h!51687 rules!3967))))) b!4208722))

(assert (= (and b!4207960 ((_ is Union!12645) (regTwo!25802 (regex!7740 (h!51687 rules!3967))))) b!4208723))

(declare-fun b!4208727 () Bool)

(declare-fun e!2612674 () Bool)

(declare-fun tp!1286620 () Bool)

(declare-fun tp!1286616 () Bool)

(assert (=> b!4208727 (= e!2612674 (and tp!1286620 tp!1286616))))

(declare-fun b!4208724 () Bool)

(assert (=> b!4208724 (= e!2612674 tp_is_empty!22257)))

(declare-fun b!4208726 () Bool)

(declare-fun tp!1286618 () Bool)

(assert (=> b!4208726 (= e!2612674 tp!1286618)))

(assert (=> b!4207951 (= tp!1286401 e!2612674)))

(declare-fun b!4208725 () Bool)

(declare-fun tp!1286617 () Bool)

(declare-fun tp!1286619 () Bool)

(assert (=> b!4208725 (= e!2612674 (and tp!1286617 tp!1286619))))

(assert (= (and b!4207951 ((_ is ElementMatch!12645) (regOne!25803 (regex!7740 rBis!178)))) b!4208724))

(assert (= (and b!4207951 ((_ is Concat!20616) (regOne!25803 (regex!7740 rBis!178)))) b!4208725))

(assert (= (and b!4207951 ((_ is Star!12645) (regOne!25803 (regex!7740 rBis!178)))) b!4208726))

(assert (= (and b!4207951 ((_ is Union!12645) (regOne!25803 (regex!7740 rBis!178)))) b!4208727))

(declare-fun b!4208731 () Bool)

(declare-fun e!2612675 () Bool)

(declare-fun tp!1286625 () Bool)

(declare-fun tp!1286621 () Bool)

(assert (=> b!4208731 (= e!2612675 (and tp!1286625 tp!1286621))))

(declare-fun b!4208728 () Bool)

(assert (=> b!4208728 (= e!2612675 tp_is_empty!22257)))

(declare-fun b!4208730 () Bool)

(declare-fun tp!1286623 () Bool)

(assert (=> b!4208730 (= e!2612675 tp!1286623)))

(assert (=> b!4207951 (= tp!1286397 e!2612675)))

(declare-fun b!4208729 () Bool)

(declare-fun tp!1286622 () Bool)

(declare-fun tp!1286624 () Bool)

(assert (=> b!4208729 (= e!2612675 (and tp!1286622 tp!1286624))))

(assert (= (and b!4207951 ((_ is ElementMatch!12645) (regTwo!25803 (regex!7740 rBis!178)))) b!4208728))

(assert (= (and b!4207951 ((_ is Concat!20616) (regTwo!25803 (regex!7740 rBis!178)))) b!4208729))

(assert (= (and b!4207951 ((_ is Star!12645) (regTwo!25803 (regex!7740 rBis!178)))) b!4208730))

(assert (= (and b!4207951 ((_ is Union!12645) (regTwo!25803 (regex!7740 rBis!178)))) b!4208731))

(declare-fun b!4208735 () Bool)

(declare-fun e!2612676 () Bool)

(declare-fun tp!1286630 () Bool)

(declare-fun tp!1286626 () Bool)

(assert (=> b!4208735 (= e!2612676 (and tp!1286630 tp!1286626))))

(declare-fun b!4208732 () Bool)

(assert (=> b!4208732 (= e!2612676 tp_is_empty!22257)))

(declare-fun b!4208734 () Bool)

(declare-fun tp!1286628 () Bool)

(assert (=> b!4208734 (= e!2612676 tp!1286628)))

(assert (=> b!4207932 (= tp!1286379 e!2612676)))

(declare-fun b!4208733 () Bool)

(declare-fun tp!1286627 () Bool)

(declare-fun tp!1286629 () Bool)

(assert (=> b!4208733 (= e!2612676 (and tp!1286627 tp!1286629))))

(assert (= (and b!4207932 ((_ is ElementMatch!12645) (regOne!25802 (regex!7740 (rule!10848 tBis!41))))) b!4208732))

(assert (= (and b!4207932 ((_ is Concat!20616) (regOne!25802 (regex!7740 (rule!10848 tBis!41))))) b!4208733))

(assert (= (and b!4207932 ((_ is Star!12645) (regOne!25802 (regex!7740 (rule!10848 tBis!41))))) b!4208734))

(assert (= (and b!4207932 ((_ is Union!12645) (regOne!25802 (regex!7740 (rule!10848 tBis!41))))) b!4208735))

(declare-fun b!4208739 () Bool)

(declare-fun e!2612677 () Bool)

(declare-fun tp!1286635 () Bool)

(declare-fun tp!1286631 () Bool)

(assert (=> b!4208739 (= e!2612677 (and tp!1286635 tp!1286631))))

(declare-fun b!4208736 () Bool)

(assert (=> b!4208736 (= e!2612677 tp_is_empty!22257)))

(declare-fun b!4208738 () Bool)

(declare-fun tp!1286633 () Bool)

(assert (=> b!4208738 (= e!2612677 tp!1286633)))

(assert (=> b!4207932 (= tp!1286381 e!2612677)))

(declare-fun b!4208737 () Bool)

(declare-fun tp!1286632 () Bool)

(declare-fun tp!1286634 () Bool)

(assert (=> b!4208737 (= e!2612677 (and tp!1286632 tp!1286634))))

(assert (= (and b!4207932 ((_ is ElementMatch!12645) (regTwo!25802 (regex!7740 (rule!10848 tBis!41))))) b!4208736))

(assert (= (and b!4207932 ((_ is Concat!20616) (regTwo!25802 (regex!7740 (rule!10848 tBis!41))))) b!4208737))

(assert (= (and b!4207932 ((_ is Star!12645) (regTwo!25802 (regex!7740 (rule!10848 tBis!41))))) b!4208738))

(assert (= (and b!4207932 ((_ is Union!12645) (regTwo!25802 (regex!7740 (rule!10848 tBis!41))))) b!4208739))

(declare-fun b!4208740 () Bool)

(declare-fun e!2612678 () Bool)

(declare-fun tp!1286636 () Bool)

(assert (=> b!4208740 (= e!2612678 (and tp_is_empty!22257 tp!1286636))))

(assert (=> b!4207958 (= tp!1286409 e!2612678)))

(assert (= (and b!4207958 ((_ is Cons!46266) (t!347561 (t!347561 suffix!1557)))) b!4208740))

(declare-fun b!4208744 () Bool)

(declare-fun e!2612679 () Bool)

(declare-fun tp!1286641 () Bool)

(declare-fun tp!1286637 () Bool)

(assert (=> b!4208744 (= e!2612679 (and tp!1286641 tp!1286637))))

(declare-fun b!4208741 () Bool)

(assert (=> b!4208741 (= e!2612679 tp_is_empty!22257)))

(declare-fun b!4208743 () Bool)

(declare-fun tp!1286639 () Bool)

(assert (=> b!4208743 (= e!2612679 tp!1286639)))

(assert (=> b!4207950 (= tp!1286399 e!2612679)))

(declare-fun b!4208742 () Bool)

(declare-fun tp!1286638 () Bool)

(declare-fun tp!1286640 () Bool)

(assert (=> b!4208742 (= e!2612679 (and tp!1286638 tp!1286640))))

(assert (= (and b!4207950 ((_ is ElementMatch!12645) (reg!12974 (regex!7740 rBis!178)))) b!4208741))

(assert (= (and b!4207950 ((_ is Concat!20616) (reg!12974 (regex!7740 rBis!178)))) b!4208742))

(assert (= (and b!4207950 ((_ is Star!12645) (reg!12974 (regex!7740 rBis!178)))) b!4208743))

(assert (= (and b!4207950 ((_ is Union!12645) (reg!12974 (regex!7740 rBis!178)))) b!4208744))

(declare-fun b!4208748 () Bool)

(declare-fun e!2612680 () Bool)

(declare-fun tp!1286646 () Bool)

(declare-fun tp!1286642 () Bool)

(assert (=> b!4208748 (= e!2612680 (and tp!1286646 tp!1286642))))

(declare-fun b!4208745 () Bool)

(assert (=> b!4208745 (= e!2612680 tp_is_empty!22257)))

(declare-fun b!4208747 () Bool)

(declare-fun tp!1286644 () Bool)

(assert (=> b!4208747 (= e!2612680 tp!1286644)))

(assert (=> b!4207934 (= tp!1286382 e!2612680)))

(declare-fun b!4208746 () Bool)

(declare-fun tp!1286643 () Bool)

(declare-fun tp!1286645 () Bool)

(assert (=> b!4208746 (= e!2612680 (and tp!1286643 tp!1286645))))

(assert (= (and b!4207934 ((_ is ElementMatch!12645) (regOne!25803 (regex!7740 (rule!10848 tBis!41))))) b!4208745))

(assert (= (and b!4207934 ((_ is Concat!20616) (regOne!25803 (regex!7740 (rule!10848 tBis!41))))) b!4208746))

(assert (= (and b!4207934 ((_ is Star!12645) (regOne!25803 (regex!7740 (rule!10848 tBis!41))))) b!4208747))

(assert (= (and b!4207934 ((_ is Union!12645) (regOne!25803 (regex!7740 (rule!10848 tBis!41))))) b!4208748))

(declare-fun b!4208752 () Bool)

(declare-fun e!2612681 () Bool)

(declare-fun tp!1286651 () Bool)

(declare-fun tp!1286647 () Bool)

(assert (=> b!4208752 (= e!2612681 (and tp!1286651 tp!1286647))))

(declare-fun b!4208749 () Bool)

(assert (=> b!4208749 (= e!2612681 tp_is_empty!22257)))

(declare-fun b!4208751 () Bool)

(declare-fun tp!1286649 () Bool)

(assert (=> b!4208751 (= e!2612681 tp!1286649)))

(assert (=> b!4207934 (= tp!1286378 e!2612681)))

(declare-fun b!4208750 () Bool)

(declare-fun tp!1286648 () Bool)

(declare-fun tp!1286650 () Bool)

(assert (=> b!4208750 (= e!2612681 (and tp!1286648 tp!1286650))))

(assert (= (and b!4207934 ((_ is ElementMatch!12645) (regTwo!25803 (regex!7740 (rule!10848 tBis!41))))) b!4208749))

(assert (= (and b!4207934 ((_ is Concat!20616) (regTwo!25803 (regex!7740 (rule!10848 tBis!41))))) b!4208750))

(assert (= (and b!4207934 ((_ is Star!12645) (regTwo!25803 (regex!7740 (rule!10848 tBis!41))))) b!4208751))

(assert (= (and b!4207934 ((_ is Union!12645) (regTwo!25803 (regex!7740 (rule!10848 tBis!41))))) b!4208752))

(declare-fun b!4208756 () Bool)

(declare-fun e!2612682 () Bool)

(declare-fun tp!1286656 () Bool)

(declare-fun tp!1286652 () Bool)

(assert (=> b!4208756 (= e!2612682 (and tp!1286656 tp!1286652))))

(declare-fun b!4208753 () Bool)

(assert (=> b!4208753 (= e!2612682 tp_is_empty!22257)))

(declare-fun b!4208755 () Bool)

(declare-fun tp!1286654 () Bool)

(assert (=> b!4208755 (= e!2612682 tp!1286654)))

(assert (=> b!4207933 (= tp!1286380 e!2612682)))

(declare-fun b!4208754 () Bool)

(declare-fun tp!1286653 () Bool)

(declare-fun tp!1286655 () Bool)

(assert (=> b!4208754 (= e!2612682 (and tp!1286653 tp!1286655))))

(assert (= (and b!4207933 ((_ is ElementMatch!12645) (reg!12974 (regex!7740 (rule!10848 tBis!41))))) b!4208753))

(assert (= (and b!4207933 ((_ is Concat!20616) (reg!12974 (regex!7740 (rule!10848 tBis!41))))) b!4208754))

(assert (= (and b!4207933 ((_ is Star!12645) (reg!12974 (regex!7740 (rule!10848 tBis!41))))) b!4208755))

(assert (= (and b!4207933 ((_ is Union!12645) (reg!12974 (regex!7740 (rule!10848 tBis!41))))) b!4208756))

(declare-fun b!4208757 () Bool)

(declare-fun e!2612683 () Bool)

(declare-fun tp!1286657 () Bool)

(assert (=> b!4208757 (= e!2612683 (and tp_is_empty!22257 tp!1286657))))

(assert (=> b!4207957 (= tp!1286408 e!2612683)))

(assert (= (and b!4207957 ((_ is Cons!46266) (t!347561 (t!347561 suffixBis!41)))) b!4208757))

(declare-fun b!4208761 () Bool)

(declare-fun e!2612684 () Bool)

(declare-fun tp!1286662 () Bool)

(declare-fun tp!1286658 () Bool)

(assert (=> b!4208761 (= e!2612684 (and tp!1286662 tp!1286658))))

(declare-fun b!4208758 () Bool)

(assert (=> b!4208758 (= e!2612684 tp_is_empty!22257)))

(declare-fun b!4208760 () Bool)

(declare-fun tp!1286660 () Bool)

(assert (=> b!4208760 (= e!2612684 tp!1286660)))

(assert (=> b!4207949 (= tp!1286398 e!2612684)))

(declare-fun b!4208759 () Bool)

(declare-fun tp!1286659 () Bool)

(declare-fun tp!1286661 () Bool)

(assert (=> b!4208759 (= e!2612684 (and tp!1286659 tp!1286661))))

(assert (= (and b!4207949 ((_ is ElementMatch!12645) (regOne!25802 (regex!7740 rBis!178)))) b!4208758))

(assert (= (and b!4207949 ((_ is Concat!20616) (regOne!25802 (regex!7740 rBis!178)))) b!4208759))

(assert (= (and b!4207949 ((_ is Star!12645) (regOne!25802 (regex!7740 rBis!178)))) b!4208760))

(assert (= (and b!4207949 ((_ is Union!12645) (regOne!25802 (regex!7740 rBis!178)))) b!4208761))

(declare-fun b!4208765 () Bool)

(declare-fun e!2612685 () Bool)

(declare-fun tp!1286667 () Bool)

(declare-fun tp!1286663 () Bool)

(assert (=> b!4208765 (= e!2612685 (and tp!1286667 tp!1286663))))

(declare-fun b!4208762 () Bool)

(assert (=> b!4208762 (= e!2612685 tp_is_empty!22257)))

(declare-fun b!4208764 () Bool)

(declare-fun tp!1286665 () Bool)

(assert (=> b!4208764 (= e!2612685 tp!1286665)))

(assert (=> b!4207949 (= tp!1286400 e!2612685)))

(declare-fun b!4208763 () Bool)

(declare-fun tp!1286664 () Bool)

(declare-fun tp!1286666 () Bool)

(assert (=> b!4208763 (= e!2612685 (and tp!1286664 tp!1286666))))

(assert (= (and b!4207949 ((_ is ElementMatch!12645) (regTwo!25802 (regex!7740 rBis!178)))) b!4208762))

(assert (= (and b!4207949 ((_ is Concat!20616) (regTwo!25802 (regex!7740 rBis!178)))) b!4208763))

(assert (= (and b!4207949 ((_ is Star!12645) (regTwo!25802 (regex!7740 rBis!178)))) b!4208764))

(assert (= (and b!4207949 ((_ is Union!12645) (regTwo!25802 (regex!7740 rBis!178)))) b!4208765))

(declare-fun b!4208769 () Bool)

(declare-fun e!2612686 () Bool)

(declare-fun tp!1286672 () Bool)

(declare-fun tp!1286668 () Bool)

(assert (=> b!4208769 (= e!2612686 (and tp!1286672 tp!1286668))))

(declare-fun b!4208766 () Bool)

(assert (=> b!4208766 (= e!2612686 tp_is_empty!22257)))

(declare-fun b!4208768 () Bool)

(declare-fun tp!1286670 () Bool)

(assert (=> b!4208768 (= e!2612686 tp!1286670)))

(assert (=> b!4207944 (= tp!1286393 e!2612686)))

(declare-fun b!4208767 () Bool)

(declare-fun tp!1286669 () Bool)

(declare-fun tp!1286671 () Bool)

(assert (=> b!4208767 (= e!2612686 (and tp!1286669 tp!1286671))))

(assert (= (and b!4207944 ((_ is ElementMatch!12645) (regex!7740 (h!51687 (t!347562 rules!3967))))) b!4208766))

(assert (= (and b!4207944 ((_ is Concat!20616) (regex!7740 (h!51687 (t!347562 rules!3967))))) b!4208767))

(assert (= (and b!4207944 ((_ is Star!12645) (regex!7740 (h!51687 (t!347562 rules!3967))))) b!4208768))

(assert (= (and b!4207944 ((_ is Union!12645) (regex!7740 (h!51687 (t!347562 rules!3967))))) b!4208769))

(declare-fun b!4208772 () Bool)

(declare-fun b_free!123103 () Bool)

(declare-fun b_next!123807 () Bool)

(assert (=> b!4208772 (= b_free!123103 (not b_next!123807))))

(declare-fun t!347744 () Bool)

(declare-fun tb!252551 () Bool)

(assert (=> (and b!4208772 (= (toValue!10452 (transformation!7740 (h!51687 (t!347562 (t!347562 rules!3967))))) (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))) t!347744) tb!252551))

(declare-fun result!307808 () Bool)

(assert (= result!307808 result!307684))

(assert (=> d!1240190 t!347744))

(declare-fun t!347746 () Bool)

(declare-fun tb!252553 () Bool)

(assert (=> (and b!4208772 (= (toValue!10452 (transformation!7740 (h!51687 (t!347562 (t!347562 rules!3967))))) (toValue!10452 (transformation!7740 rBis!178))) t!347746) tb!252553))

(declare-fun result!307810 () Bool)

(assert (= result!307810 result!307776))

(assert (=> d!1240416 t!347746))

(assert (=> d!1240422 t!347746))

(declare-fun tb!252555 () Bool)

(declare-fun t!347748 () Bool)

(assert (=> (and b!4208772 (= (toValue!10452 (transformation!7740 (h!51687 (t!347562 (t!347562 rules!3967))))) (toValue!10452 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180)))))) t!347748) tb!252555))

(declare-fun result!307812 () Bool)

(assert (= result!307812 result!307786))

(assert (=> d!1240438 t!347748))

(declare-fun tp!1286674 () Bool)

(declare-fun b_and!331029 () Bool)

(assert (=> b!4208772 (= tp!1286674 (and (=> t!347744 result!307808) (=> t!347746 result!307810) (=> t!347748 result!307812) b_and!331029))))

(declare-fun b_free!123105 () Bool)

(declare-fun b_next!123809 () Bool)

(assert (=> b!4208772 (= b_free!123105 (not b_next!123809))))

(declare-fun t!347750 () Bool)

(declare-fun tb!252557 () Bool)

(assert (=> (and b!4208772 (= (toChars!10311 (transformation!7740 (h!51687 (t!347562 (t!347562 rules!3967))))) (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498180)))))) t!347750) tb!252557))

(declare-fun result!307814 () Bool)

(assert (= result!307814 result!307796))

(assert (=> d!1240474 t!347750))

(declare-fun tb!252559 () Bool)

(declare-fun t!347752 () Bool)

(assert (=> (and b!4208772 (= (toChars!10311 (transformation!7740 (h!51687 (t!347562 (t!347562 rules!3967))))) (toChars!10311 (transformation!7740 rBis!178))) t!347752) tb!252559))

(declare-fun result!307816 () Bool)

(assert (= result!307816 result!307766))

(assert (=> d!1240416 t!347752))

(declare-fun tb!252561 () Bool)

(declare-fun t!347754 () Bool)

(assert (=> (and b!4208772 (= (toChars!10311 (transformation!7740 (h!51687 (t!347562 (t!347562 rules!3967))))) (toChars!10311 (transformation!7740 (rule!10848 t!8364)))) t!347754) tb!252561))

(declare-fun result!307818 () Bool)

(assert (= result!307818 result!307646))

(assert (=> b!4207893 t!347754))

(declare-fun tb!252563 () Bool)

(declare-fun t!347756 () Bool)

(assert (=> (and b!4208772 (= (toChars!10311 (transformation!7740 (h!51687 (t!347562 (t!347562 rules!3967))))) (toChars!10311 (transformation!7740 (rule!10848 tBis!41)))) t!347756) tb!252563))

(declare-fun result!307820 () Bool)

(assert (= result!307820 result!307618))

(assert (=> b!4207891 t!347756))

(assert (=> d!1240102 t!347756))

(declare-fun t!347758 () Bool)

(declare-fun tb!252565 () Bool)

(assert (=> (and b!4208772 (= (toChars!10311 (transformation!7740 (h!51687 (t!347562 (t!347562 rules!3967))))) (toChars!10311 (transformation!7740 (rule!10848 (_1!25139 (get!15048 lt!1498120)))))) t!347758) tb!252565))

(declare-fun result!307822 () Bool)

(assert (= result!307822 result!307708))

(assert (=> d!1240242 t!347758))

(declare-fun b_and!331031 () Bool)

(declare-fun tp!1286673 () Bool)

(assert (=> b!4208772 (= tp!1286673 (and (=> t!347756 result!307820) (=> t!347758 result!307822) (=> t!347754 result!307818) (=> t!347752 result!307816) (=> t!347750 result!307814) b_and!331031))))

(declare-fun e!2612688 () Bool)

(assert (=> b!4208772 (= e!2612688 (and tp!1286674 tp!1286673))))

(declare-fun b!4208771 () Bool)

(declare-fun e!2612689 () Bool)

(declare-fun tp!1286675 () Bool)

(assert (=> b!4208771 (= e!2612689 (and tp!1286675 (inv!60857 (tag!8604 (h!51687 (t!347562 (t!347562 rules!3967))))) (inv!60860 (transformation!7740 (h!51687 (t!347562 (t!347562 rules!3967))))) e!2612688))))

(declare-fun b!4208770 () Bool)

(declare-fun e!2612687 () Bool)

(declare-fun tp!1286676 () Bool)

(assert (=> b!4208770 (= e!2612687 (and e!2612689 tp!1286676))))

(assert (=> b!4207943 (= tp!1286394 e!2612687)))

(assert (= b!4208771 b!4208772))

(assert (= b!4208770 b!4208771))

(assert (= (and b!4207943 ((_ is Cons!46267) (t!347562 (t!347562 rules!3967)))) b!4208770))

(declare-fun m!4796819 () Bool)

(assert (=> b!4208771 m!4796819))

(declare-fun m!4796821 () Bool)

(assert (=> b!4208771 m!4796821))

(declare-fun b_lambda!123953 () Bool)

(assert (= b_lambda!123947 (or (and b!4207548 b_free!123079 (= (toValue!10452 (transformation!7740 (rule!10848 t!8364))) (toValue!10452 (transformation!7740 rBis!178)))) (and b!4207945 b_free!123095 (= (toValue!10452 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toValue!10452 (transformation!7740 rBis!178)))) (and b!4208772 b_free!123103 (= (toValue!10452 (transformation!7740 (h!51687 (t!347562 (t!347562 rules!3967))))) (toValue!10452 (transformation!7740 rBis!178)))) (and b!4207533 b_free!123075 (= (toValue!10452 (transformation!7740 (rule!10848 tBis!41))) (toValue!10452 (transformation!7740 rBis!178)))) (and b!4207553 b_free!123087) (and b!4207551 b_free!123083 (= (toValue!10452 (transformation!7740 (h!51687 rules!3967))) (toValue!10452 (transformation!7740 rBis!178)))) b_lambda!123953)))

(declare-fun b_lambda!123955 () Bool)

(assert (= b_lambda!123945 (or (and b!4207548 b_free!123079 (= (toValue!10452 (transformation!7740 (rule!10848 t!8364))) (toValue!10452 (transformation!7740 rBis!178)))) (and b!4207945 b_free!123095 (= (toValue!10452 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toValue!10452 (transformation!7740 rBis!178)))) (and b!4208772 b_free!123103 (= (toValue!10452 (transformation!7740 (h!51687 (t!347562 (t!347562 rules!3967))))) (toValue!10452 (transformation!7740 rBis!178)))) (and b!4207533 b_free!123075 (= (toValue!10452 (transformation!7740 (rule!10848 tBis!41))) (toValue!10452 (transformation!7740 rBis!178)))) (and b!4207553 b_free!123087) (and b!4207551 b_free!123083 (= (toValue!10452 (transformation!7740 (h!51687 rules!3967))) (toValue!10452 (transformation!7740 rBis!178)))) b_lambda!123955)))

(declare-fun b_lambda!123957 () Bool)

(assert (= b_lambda!123943 (or (and b!4207945 b_free!123097 (= (toChars!10311 (transformation!7740 (h!51687 (t!347562 rules!3967)))) (toChars!10311 (transformation!7740 rBis!178)))) (and b!4207548 b_free!123081 (= (toChars!10311 (transformation!7740 (rule!10848 t!8364))) (toChars!10311 (transformation!7740 rBis!178)))) (and b!4207551 b_free!123085 (= (toChars!10311 (transformation!7740 (h!51687 rules!3967))) (toChars!10311 (transformation!7740 rBis!178)))) (and b!4207553 b_free!123089) (and b!4207533 b_free!123077 (= (toChars!10311 (transformation!7740 (rule!10848 tBis!41))) (toChars!10311 (transformation!7740 rBis!178)))) (and b!4208772 b_free!123105 (= (toChars!10311 (transformation!7740 (h!51687 (t!347562 (t!347562 rules!3967))))) (toChars!10311 (transformation!7740 rBis!178)))) b_lambda!123957)))

(check-sat (not d!1240440) b_and!331031 (not b!4208556) (not b!4208583) (not b!4208548) (not d!1240498) (not b!4208742) (not b_lambda!123949) (not b!4208570) (not b!4208723) (not d!1240504) (not tb!252455) (not b!4208743) (not tb!252541) (not b!4208765) (not bm!292854) (not d!1240454) (not b!4208673) (not b!4208517) (not b!4208634) (not b!4208537) (not b!4208529) (not b!4208684) b_and!331017 (not b!4208770) (not b!4208681) (not b_lambda!123955) (not d!1240524) (not b!4208585) (not b!4208674) (not b!4208706) (not b!4208597) (not b!4208176) (not b!4208626) (not d!1240234) (not b!4208103) (not b!4208737) (not d!1240500) (not b!4208235) (not b!4208539) (not b!4208560) (not b!4208694) (not b!4208527) (not b!4208572) (not b_next!123787) (not b!4208764) (not b!4208747) (not bm!292850) (not b!4208759) (not b!4208535) (not b!4208757) (not b!4208691) (not b_lambda!123951) (not b!4208660) (not b_next!123791) (not b!4208642) (not d!1240246) (not d!1240506) (not d!1240432) (not b!4208655) (not b!4208709) (not b!4208181) (not b!4208689) (not b!4208651) (not b!4208687) (not b!4208525) (not b_next!123783) (not b!4208664) (not b_lambda!123917) b_and!331013 (not b!4208244) (not b!4208731) (not bm!292858) (not b!4208769) (not b!4208129) (not b!4208754) (not b!4208722) (not b!4208021) (not d!1240444) (not b!4208677) b_and!331025 (not b!4208756) (not b!4208697) (not b!4208236) (not d!1240522) (not b_lambda!123913) (not b!4208616) (not b!4208094) (not b!4208705) (not b!4208704) (not d!1240534) (not b!4208713) (not b!4208735) (not b!4208656) (not b_next!123785) (not b!4208721) (not b!4208172) (not d!1240474) (not b!4208023) (not d!1240520) (not d!1240528) (not b!4208238) (not b!4208586) (not b!4208593) (not b!4208727) (not d!1240448) (not b!4208748) (not d!1240478) (not b!4208761) (not d!1240296) (not d!1240486) b_and!331021 (not b!4208739) (not tb!252531) (not b!4208700) (not b!4208654) (not b_lambda!123957) (not tb!252511) (not b!4208740) (not b!4208547) (not d!1240458) (not b!4208633) tp_is_empty!22257 b_and!331009 (not bm!292823) (not b_next!123781) b_and!331015 (not b!4208552) (not bm!292856) (not b!4208499) (not b!4208090) (not b!4208657) (not b!4208734) (not b!4208652) (not d!1240472) (not b!4208234) (not b!4208751) (not d!1240238) (not b!4208752) b_and!331027 (not d!1240194) (not b_lambda!123953) (not b!4208589) (not bm!292869) (not d!1240424) (not b!4208730) (not b!4208096) (not b!4208712) (not b!4208771) (not b!4208755) (not d!1240434) (not d!1240242) (not bm!292857) (not d!1240414) (not b!4208696) b_and!331019 (not b!4207895) (not b!4208636) (not b_next!123789) (not d!1240516) (not b!4208692) (not d!1240460) (not b!4208591) (not b!4208536) (not b!4208715) (not b_lambda!123923) (not b!4208701) (not b!4208630) (not b!4208639) (not d!1240192) (not tb!252521) (not b!4208557) (not d!1240226) (not b!4208174) (not b!4208523) (not b!4208750) (not b_next!123807) (not b_next!123809) (not b!4208733) (not b!4208729) (not b!4208725) (not b_next!123779) (not b!4208092) (not d!1240536) (not b!4208632) (not b!4208675) (not b!4208538) (not d!1240436) (not b!4208718) (not b!4208679) (not d!1240464) (not b!4208760) (not bm!292851) (not b!4208702) (not b!4208554) (not b!4208628) (not d!1240490) (not b!4208680) (not b!4208738) (not d!1240240) (not b!4208595) (not b!4208074) (not b!4208502) (not b!4208658) (not b!4208744) (not tb!252435) (not b!4208685) (not b!4207723) (not b!4208100) (not b!4208575) (not b!4208698) (not b!4208495) (not b!4208497) (not d!1240450) (not b!4208540) (not d!1240470) (not bm!292855) (not b!4208767) (not b!4208662) (not b_lambda!123927) (not b!4208574) (not b!4208746) (not d!1240304) (not b_next!123799) (not b!4208553) (not b!4208690) b_and!331011 (not b!4208558) b_and!331029 (not b!4208128) (not b!4208663) (not b!4208182) (not b!4208566) (not b!4208719) (not b_lambda!123915) (not bm!292853) b_and!331023 (not b!4208577) (not b!4208717) (not b!4208683) (not bm!292866) (not b!4208563) (not b_next!123793) (not b_next!123801) (not b!4208241) (not b!4208714) (not b!4208708) (not b!4208763) (not d!1240418) (not b!4208710) (not b!4208541) (not b!4208659) (not b!4208095) (not b!4208550) (not d!1240412) (not d!1240518) (not b!4208530) (not b!4208101) (not bm!292867) (not bm!292868) (not b!4208534) (not d!1240416) (not d!1240262) (not b!4208693) (not b!4208514) (not b!4208676) (not b!4208587) (not b!4208768) (not b!4208508) (not bm!292852) (not d!1240462) (not d!1240326) (not b!4208533) (not d!1240308) (not b!4208726) (not b!4208688))
(check-sat b_and!331031 b_and!331017 (not b_next!123787) (not b_next!123791) b_and!331025 (not b_next!123785) b_and!331021 b_and!331009 b_and!331027 b_and!331019 (not b_next!123789) (not b_next!123807) b_and!331023 (not b_next!123783) b_and!331013 (not b_next!123781) b_and!331015 (not b_next!123809) (not b_next!123779) (not b_next!123799) b_and!331011 b_and!331029 (not b_next!123793) (not b_next!123801))
