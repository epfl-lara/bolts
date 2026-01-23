; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403362 () Bool)

(assert start!403362)

(declare-fun b!4220044 () Bool)

(declare-fun b_free!123931 () Bool)

(declare-fun b_next!124635 () Bool)

(assert (=> b!4220044 (= b_free!123931 (not b_next!124635))))

(declare-fun tp!1291190 () Bool)

(declare-fun b_and!332901 () Bool)

(assert (=> b!4220044 (= tp!1291190 b_and!332901)))

(declare-fun b_free!123933 () Bool)

(declare-fun b_next!124637 () Bool)

(assert (=> b!4220044 (= b_free!123933 (not b_next!124637))))

(declare-fun tp!1291184 () Bool)

(declare-fun b_and!332903 () Bool)

(assert (=> b!4220044 (= tp!1291184 b_and!332903)))

(declare-fun b!4220039 () Bool)

(declare-fun b_free!123935 () Bool)

(declare-fun b_next!124639 () Bool)

(assert (=> b!4220039 (= b_free!123935 (not b_next!124639))))

(declare-fun tp!1291178 () Bool)

(declare-fun b_and!332905 () Bool)

(assert (=> b!4220039 (= tp!1291178 b_and!332905)))

(declare-fun b_free!123937 () Bool)

(declare-fun b_next!124641 () Bool)

(assert (=> b!4220039 (= b_free!123937 (not b_next!124641))))

(declare-fun tp!1291188 () Bool)

(declare-fun b_and!332907 () Bool)

(assert (=> b!4220039 (= tp!1291188 b_and!332907)))

(declare-fun b!4220032 () Bool)

(declare-fun b_free!123939 () Bool)

(declare-fun b_next!124643 () Bool)

(assert (=> b!4220032 (= b_free!123939 (not b_next!124643))))

(declare-fun tp!1291192 () Bool)

(declare-fun b_and!332909 () Bool)

(assert (=> b!4220032 (= tp!1291192 b_and!332909)))

(declare-fun b_free!123941 () Bool)

(declare-fun b_next!124645 () Bool)

(assert (=> b!4220032 (= b_free!123941 (not b_next!124645))))

(declare-fun tp!1291180 () Bool)

(declare-fun b_and!332911 () Bool)

(assert (=> b!4220032 (= tp!1291180 b_and!332911)))

(declare-fun b!4220022 () Bool)

(declare-fun b_free!123943 () Bool)

(declare-fun b_next!124647 () Bool)

(assert (=> b!4220022 (= b_free!123943 (not b_next!124647))))

(declare-fun tp!1291179 () Bool)

(declare-fun b_and!332913 () Bool)

(assert (=> b!4220022 (= tp!1291179 b_and!332913)))

(declare-fun b_free!123945 () Bool)

(declare-fun b_next!124649 () Bool)

(assert (=> b!4220022 (= b_free!123945 (not b_next!124649))))

(declare-fun tp!1291191 () Bool)

(declare-fun b_and!332915 () Bool)

(assert (=> b!4220022 (= tp!1291191 b_and!332915)))

(declare-fun b!4220023 () Bool)

(declare-fun res!1734420 () Bool)

(declare-fun e!2619950 () Bool)

(assert (=> b!4220023 (=> res!1734420 e!2619950)))

(declare-datatypes ((List!46551 0))(
  ( (Nil!46427) (Cons!46427 (h!51847 (_ BitVec 16)) (t!348936 List!46551)) )
))
(declare-datatypes ((TokenValue!8016 0))(
  ( (FloatLiteralValue!16032 (text!56557 List!46551)) (TokenValueExt!8015 (__x!28255 Int)) (Broken!40080 (value!242404 List!46551)) (Object!8139) (End!8016) (Def!8016) (Underscore!8016) (Match!8016) (Else!8016) (Error!8016) (Case!8016) (If!8016) (Extends!8016) (Abstract!8016) (Class!8016) (Val!8016) (DelimiterValue!16032 (del!8076 List!46551)) (KeywordValue!8022 (value!242405 List!46551)) (CommentValue!16032 (value!242406 List!46551)) (WhitespaceValue!16032 (value!242407 List!46551)) (IndentationValue!8016 (value!242408 List!46551)) (String!53949) (Int32!8016) (Broken!40081 (value!242409 List!46551)) (Boolean!8017) (Unit!65604) (OperatorValue!8019 (op!8076 List!46551)) (IdentifierValue!16032 (value!242410 List!46551)) (IdentifierValue!16033 (value!242411 List!46551)) (WhitespaceValue!16033 (value!242412 List!46551)) (True!16032) (False!16032) (Broken!40082 (value!242413 List!46551)) (Broken!40083 (value!242414 List!46551)) (True!16033) (RightBrace!8016) (RightBracket!8016) (Colon!8016) (Null!8016) (Comma!8016) (LeftBracket!8016) (False!16033) (LeftBrace!8016) (ImaginaryLiteralValue!8016 (text!56558 List!46551)) (StringLiteralValue!24048 (value!242415 List!46551)) (EOFValue!8016 (value!242416 List!46551)) (IdentValue!8016 (value!242417 List!46551)) (DelimiterValue!16033 (value!242418 List!46551)) (DedentValue!8016 (value!242419 List!46551)) (NewLineValue!8016 (value!242420 List!46551)) (IntegerValue!24048 (value!242421 (_ BitVec 32)) (text!56559 List!46551)) (IntegerValue!24049 (value!242422 Int) (text!56560 List!46551)) (Times!8016) (Or!8016) (Equal!8016) (Minus!8016) (Broken!40084 (value!242423 List!46551)) (And!8016) (Div!8016) (LessEqual!8016) (Mod!8016) (Concat!20707) (Not!8016) (Plus!8016) (SpaceValue!8016 (value!242424 List!46551)) (IntegerValue!24050 (value!242425 Int) (text!56561 List!46551)) (StringLiteralValue!24049 (text!56562 List!46551)) (FloatLiteralValue!16033 (text!56563 List!46551)) (BytesLiteralValue!8016 (value!242426 List!46551)) (CommentValue!16033 (value!242427 List!46551)) (StringLiteralValue!24050 (value!242428 List!46551)) (ErrorTokenValue!8016 (msg!8077 List!46551)) )
))
(declare-datatypes ((C!25576 0))(
  ( (C!25577 (val!14950 Int)) )
))
(declare-datatypes ((List!46552 0))(
  ( (Nil!46428) (Cons!46428 (h!51848 C!25576) (t!348937 List!46552)) )
))
(declare-datatypes ((IArray!27999 0))(
  ( (IArray!28000 (innerList!14057 List!46552)) )
))
(declare-datatypes ((Regex!12691 0))(
  ( (ElementMatch!12691 (c!718212 C!25576)) (Concat!20708 (regOne!25894 Regex!12691) (regTwo!25894 Regex!12691)) (EmptyExpr!12691) (Star!12691 (reg!13020 Regex!12691)) (EmptyLang!12691) (Union!12691 (regOne!25895 Regex!12691) (regTwo!25895 Regex!12691)) )
))
(declare-datatypes ((String!53950 0))(
  ( (String!53951 (value!242429 String)) )
))
(declare-datatypes ((Conc!13997 0))(
  ( (Node!13997 (left!34533 Conc!13997) (right!34863 Conc!13997) (csize!28224 Int) (cheight!14208 Int)) (Leaf!21634 (xs!17303 IArray!27999) (csize!28225 Int)) (Empty!13997) )
))
(declare-datatypes ((BalanceConc!27588 0))(
  ( (BalanceConc!27589 (c!718213 Conc!13997)) )
))
(declare-datatypes ((TokenValueInjection!15460 0))(
  ( (TokenValueInjection!15461 (toValue!10510 Int) (toChars!10369 Int)) )
))
(declare-datatypes ((Rule!15372 0))(
  ( (Rule!15373 (regex!7786 Regex!12691) (tag!8650 String!53950) (isSeparator!7786 Bool) (transformation!7786 TokenValueInjection!15460)) )
))
(declare-datatypes ((Token!14274 0))(
  ( (Token!14275 (value!242430 TokenValue!8016) (rule!10918 Rule!15372) (size!34091 Int) (originalCharacters!8168 List!46552)) )
))
(declare-fun tBis!41 () Token!14274)

(declare-fun rBis!178 () Rule!15372)

(assert (=> b!4220023 (= res!1734420 (not (= (rule!10918 tBis!41) rBis!178)))))

(declare-fun b!4220024 () Bool)

(declare-fun res!1734413 () Bool)

(assert (=> b!4220024 (=> res!1734413 e!2619950)))

(declare-fun pBis!121 () List!46552)

(declare-fun list!16799 (BalanceConc!27588) List!46552)

(declare-fun charsOf!5209 (Token!14274) BalanceConc!27588)

(assert (=> b!4220024 (= res!1734413 (not (= (list!16799 (charsOf!5209 tBis!41)) pBis!121)))))

(declare-fun b!4220025 () Bool)

(declare-fun res!1734426 () Bool)

(declare-fun e!2619939 () Bool)

(assert (=> b!4220025 (=> (not res!1734426) (not e!2619939))))

(declare-datatypes ((List!46553 0))(
  ( (Nil!46429) (Cons!46429 (h!51849 Rule!15372) (t!348938 List!46553)) )
))
(declare-fun rules!3967 () List!46553)

(declare-fun isEmpty!27505 (List!46553) Bool)

(assert (=> b!4220025 (= res!1734426 (not (isEmpty!27505 rules!3967)))))

(declare-fun b!4220026 () Bool)

(declare-fun res!1734415 () Bool)

(assert (=> b!4220026 (=> res!1734415 e!2619950)))

(declare-fun input!3517 () List!46552)

(declare-fun suffixBis!41 () List!46552)

(declare-fun ++!11860 (List!46552 List!46552) List!46552)

(assert (=> b!4220026 (= res!1734415 (not (= (++!11860 pBis!121 suffixBis!41) input!3517)))))

(declare-fun tp!1291177 () Bool)

(declare-fun e!2619944 () Bool)

(declare-fun e!2619938 () Bool)

(declare-fun b!4220027 () Bool)

(declare-fun inv!21 (TokenValue!8016) Bool)

(assert (=> b!4220027 (= e!2619938 (and (inv!21 (value!242430 tBis!41)) e!2619944 tp!1291177))))

(declare-fun b!4220028 () Bool)

(declare-fun res!1734419 () Bool)

(assert (=> b!4220028 (=> (not res!1734419) (not e!2619939))))

(declare-fun p!3001 () List!46552)

(declare-fun suffix!1557 () List!46552)

(assert (=> b!4220028 (= res!1734419 (= (++!11860 p!3001 suffix!1557) input!3517))))

(declare-fun b!4220029 () Bool)

(declare-fun res!1734421 () Bool)

(assert (=> b!4220029 (=> (not res!1734421) (not e!2619939))))

(declare-datatypes ((LexerInterface!7381 0))(
  ( (LexerInterfaceExt!7378 (__x!28256 Int)) (Lexer!7379) )
))
(declare-fun thiss!26544 () LexerInterface!7381)

(declare-fun rulesInvariant!6592 (LexerInterface!7381 List!46553) Bool)

(assert (=> b!4220029 (= res!1734421 (rulesInvariant!6592 thiss!26544 rules!3967))))

(declare-fun b!4220030 () Bool)

(declare-fun e!2619945 () Bool)

(assert (=> b!4220030 (= e!2619945 (not e!2619950))))

(declare-fun res!1734418 () Bool)

(assert (=> b!4220030 (=> res!1734418 e!2619950)))

(declare-datatypes ((tuple2!44150 0))(
  ( (tuple2!44151 (_1!25209 Token!14274) (_2!25209 List!46552)) )
))
(declare-datatypes ((Option!9974 0))(
  ( (None!9973) (Some!9973 (v!40861 tuple2!44150)) )
))
(declare-fun maxPrefixOneRule!3376 (LexerInterface!7381 Rule!15372 List!46552) Option!9974)

(assert (=> b!4220030 (= res!1734418 (not (= (maxPrefixOneRule!3376 thiss!26544 rBis!178 input!3517) (Some!9973 (tuple2!44151 tBis!41 suffixBis!41)))))))

(declare-fun isPrefix!4645 (List!46552 List!46552) Bool)

(assert (=> b!4220030 (isPrefix!4645 input!3517 input!3517)))

(declare-datatypes ((Unit!65605 0))(
  ( (Unit!65606) )
))
(declare-fun lt!1501812 () Unit!65605)

(declare-fun lemmaIsPrefixRefl!3062 (List!46552 List!46552) Unit!65605)

(assert (=> b!4220030 (= lt!1501812 (lemmaIsPrefixRefl!3062 input!3517 input!3517))))

(declare-fun e!2619947 () Bool)

(declare-fun e!2619952 () Bool)

(declare-fun tp!1291186 () Bool)

(declare-fun t!8364 () Token!14274)

(declare-fun b!4220031 () Bool)

(assert (=> b!4220031 (= e!2619952 (and (inv!21 (value!242430 t!8364)) e!2619947 tp!1291186))))

(declare-fun e!2619941 () Bool)

(assert (=> b!4220032 (= e!2619941 (and tp!1291192 tp!1291180))))

(declare-fun e!2619959 () Bool)

(assert (=> b!4220022 (= e!2619959 (and tp!1291179 tp!1291191))))

(declare-fun res!1734423 () Bool)

(assert (=> start!403362 (=> (not res!1734423) (not e!2619939))))

(get-info :version)

(assert (=> start!403362 (= res!1734423 ((_ is Lexer!7379) thiss!26544))))

(assert (=> start!403362 e!2619939))

(declare-fun inv!61086 (Token!14274) Bool)

(assert (=> start!403362 (and (inv!61086 tBis!41) e!2619938)))

(assert (=> start!403362 true))

(declare-fun e!2619948 () Bool)

(assert (=> start!403362 e!2619948))

(declare-fun e!2619946 () Bool)

(assert (=> start!403362 e!2619946))

(declare-fun e!2619957 () Bool)

(assert (=> start!403362 e!2619957))

(declare-fun e!2619951 () Bool)

(assert (=> start!403362 e!2619951))

(assert (=> start!403362 (and (inv!61086 t!8364) e!2619952)))

(declare-fun e!2619958 () Bool)

(assert (=> start!403362 e!2619958))

(declare-fun e!2619949 () Bool)

(assert (=> start!403362 e!2619949))

(declare-fun e!2619942 () Bool)

(assert (=> start!403362 e!2619942))

(declare-fun tp!1291193 () Bool)

(declare-fun b!4220033 () Bool)

(declare-fun inv!61083 (String!53950) Bool)

(declare-fun inv!61087 (TokenValueInjection!15460) Bool)

(assert (=> b!4220033 (= e!2619944 (and tp!1291193 (inv!61083 (tag!8650 (rule!10918 tBis!41))) (inv!61087 (transformation!7786 (rule!10918 tBis!41))) e!2619941))))

(declare-fun b!4220034 () Bool)

(declare-fun tp!1291181 () Bool)

(declare-fun e!2619955 () Bool)

(assert (=> b!4220034 (= e!2619955 (and tp!1291181 (inv!61083 (tag!8650 (h!51849 rules!3967))) (inv!61087 (transformation!7786 (h!51849 rules!3967))) e!2619959))))

(declare-fun b!4220035 () Bool)

(declare-fun res!1734416 () Bool)

(assert (=> b!4220035 (=> (not res!1734416) (not e!2619939))))

(declare-fun contains!9609 (List!46553 Rule!15372) Bool)

(assert (=> b!4220035 (= res!1734416 (contains!9609 rules!3967 rBis!178))))

(declare-fun b!4220036 () Bool)

(declare-fun tp_is_empty!22349 () Bool)

(declare-fun tp!1291187 () Bool)

(assert (=> b!4220036 (= e!2619949 (and tp_is_empty!22349 tp!1291187))))

(declare-fun b!4220037 () Bool)

(assert (=> b!4220037 (= e!2619939 e!2619945)))

(declare-fun res!1734414 () Bool)

(assert (=> b!4220037 (=> (not res!1734414) (not e!2619945))))

(declare-fun lt!1501814 () Option!9974)

(declare-fun maxPrefix!4421 (LexerInterface!7381 List!46553 List!46552) Option!9974)

(assert (=> b!4220037 (= res!1734414 (= (maxPrefix!4421 thiss!26544 rules!3967 input!3517) lt!1501814))))

(assert (=> b!4220037 (= lt!1501814 (Some!9973 (tuple2!44151 t!8364 suffix!1557)))))

(declare-fun e!2619962 () Bool)

(declare-fun tp!1291189 () Bool)

(declare-fun b!4220038 () Bool)

(assert (=> b!4220038 (= e!2619948 (and tp!1291189 (inv!61083 (tag!8650 rBis!178)) (inv!61087 (transformation!7786 rBis!178)) e!2619962))))

(assert (=> b!4220039 (= e!2619962 (and tp!1291178 tp!1291188))))

(declare-fun b!4220040 () Bool)

(declare-fun res!1734424 () Bool)

(assert (=> b!4220040 (=> res!1734424 e!2619950)))

(assert (=> b!4220040 (= res!1734424 (or (and ((_ is Cons!46429) rules!3967) ((_ is Nil!46429) (t!348938 rules!3967))) (not ((_ is Cons!46429) rules!3967)) (= (h!51849 rules!3967) rBis!178)))))

(declare-fun b!4220041 () Bool)

(declare-fun res!1734425 () Bool)

(assert (=> b!4220041 (=> res!1734425 e!2619950)))

(assert (=> b!4220041 (= res!1734425 (= (maxPrefixOneRule!3376 thiss!26544 (h!51849 rules!3967) input!3517) lt!1501814))))

(declare-fun b!4220042 () Bool)

(declare-fun tp!1291183 () Bool)

(assert (=> b!4220042 (= e!2619957 (and e!2619955 tp!1291183))))

(declare-fun b!4220043 () Bool)

(declare-fun tp!1291182 () Bool)

(assert (=> b!4220043 (= e!2619942 (and tp_is_empty!22349 tp!1291182))))

(declare-fun e!2619960 () Bool)

(assert (=> b!4220044 (= e!2619960 (and tp!1291190 tp!1291184))))

(declare-fun b!4220045 () Bool)

(assert (=> b!4220045 (= e!2619950 true)))

(assert (=> b!4220045 (rulesInvariant!6592 thiss!26544 (t!348938 rules!3967))))

(declare-fun lt!1501813 () Unit!65605)

(declare-fun lemmaInvariantOnRulesThenOnTail!874 (LexerInterface!7381 Rule!15372 List!46553) Unit!65605)

(assert (=> b!4220045 (= lt!1501813 (lemmaInvariantOnRulesThenOnTail!874 thiss!26544 (h!51849 rules!3967) (t!348938 rules!3967)))))

(declare-fun b!4220046 () Bool)

(declare-fun tp!1291176 () Bool)

(assert (=> b!4220046 (= e!2619947 (and tp!1291176 (inv!61083 (tag!8650 (rule!10918 t!8364))) (inv!61087 (transformation!7786 (rule!10918 t!8364))) e!2619960))))

(declare-fun b!4220047 () Bool)

(declare-fun res!1734412 () Bool)

(assert (=> b!4220047 (=> (not res!1734412) (not e!2619939))))

(assert (=> b!4220047 (= res!1734412 (isPrefix!4645 pBis!121 input!3517))))

(declare-fun b!4220048 () Bool)

(declare-fun res!1734422 () Bool)

(assert (=> b!4220048 (=> (not res!1734422) (not e!2619945))))

(declare-fun ruleValid!3498 (LexerInterface!7381 Rule!15372) Bool)

(assert (=> b!4220048 (= res!1734422 (ruleValid!3498 thiss!26544 rBis!178))))

(declare-fun b!4220049 () Bool)

(declare-fun tp!1291194 () Bool)

(assert (=> b!4220049 (= e!2619946 (and tp_is_empty!22349 tp!1291194))))

(declare-fun b!4220050 () Bool)

(declare-fun tp!1291175 () Bool)

(assert (=> b!4220050 (= e!2619951 (and tp_is_empty!22349 tp!1291175))))

(declare-fun b!4220051 () Bool)

(declare-fun tp!1291185 () Bool)

(assert (=> b!4220051 (= e!2619958 (and tp_is_empty!22349 tp!1291185))))

(declare-fun b!4220052 () Bool)

(declare-fun res!1734417 () Bool)

(assert (=> b!4220052 (=> (not res!1734417) (not e!2619939))))

(assert (=> b!4220052 (= res!1734417 (isPrefix!4645 p!3001 input!3517))))

(assert (= (and start!403362 res!1734423) b!4220028))

(assert (= (and b!4220028 res!1734419) b!4220052))

(assert (= (and b!4220052 res!1734417) b!4220047))

(assert (= (and b!4220047 res!1734412) b!4220025))

(assert (= (and b!4220025 res!1734426) b!4220029))

(assert (= (and b!4220029 res!1734421) b!4220035))

(assert (= (and b!4220035 res!1734416) b!4220037))

(assert (= (and b!4220037 res!1734414) b!4220048))

(assert (= (and b!4220048 res!1734422) b!4220030))

(assert (= (and b!4220030 (not res!1734418)) b!4220023))

(assert (= (and b!4220023 (not res!1734420)) b!4220024))

(assert (= (and b!4220024 (not res!1734413)) b!4220026))

(assert (= (and b!4220026 (not res!1734415)) b!4220040))

(assert (= (and b!4220040 (not res!1734424)) b!4220041))

(assert (= (and b!4220041 (not res!1734425)) b!4220045))

(assert (= b!4220033 b!4220032))

(assert (= b!4220027 b!4220033))

(assert (= start!403362 b!4220027))

(assert (= b!4220038 b!4220039))

(assert (= start!403362 b!4220038))

(assert (= (and start!403362 ((_ is Cons!46428) p!3001)) b!4220049))

(assert (= b!4220034 b!4220022))

(assert (= b!4220042 b!4220034))

(assert (= (and start!403362 ((_ is Cons!46429) rules!3967)) b!4220042))

(assert (= (and start!403362 ((_ is Cons!46428) input!3517)) b!4220050))

(assert (= b!4220046 b!4220044))

(assert (= b!4220031 b!4220046))

(assert (= start!403362 b!4220031))

(assert (= (and start!403362 ((_ is Cons!46428) pBis!121)) b!4220051))

(assert (= (and start!403362 ((_ is Cons!46428) suffix!1557)) b!4220036))

(assert (= (and start!403362 ((_ is Cons!46428) suffixBis!41)) b!4220043))

(declare-fun m!4808645 () Bool)

(assert (=> b!4220041 m!4808645))

(declare-fun m!4808647 () Bool)

(assert (=> b!4220026 m!4808647))

(declare-fun m!4808649 () Bool)

(assert (=> b!4220029 m!4808649))

(declare-fun m!4808651 () Bool)

(assert (=> b!4220030 m!4808651))

(declare-fun m!4808653 () Bool)

(assert (=> b!4220030 m!4808653))

(declare-fun m!4808655 () Bool)

(assert (=> b!4220030 m!4808655))

(declare-fun m!4808657 () Bool)

(assert (=> b!4220024 m!4808657))

(assert (=> b!4220024 m!4808657))

(declare-fun m!4808659 () Bool)

(assert (=> b!4220024 m!4808659))

(declare-fun m!4808661 () Bool)

(assert (=> b!4220045 m!4808661))

(declare-fun m!4808663 () Bool)

(assert (=> b!4220045 m!4808663))

(declare-fun m!4808665 () Bool)

(assert (=> b!4220031 m!4808665))

(declare-fun m!4808667 () Bool)

(assert (=> b!4220047 m!4808667))

(declare-fun m!4808669 () Bool)

(assert (=> b!4220048 m!4808669))

(declare-fun m!4808671 () Bool)

(assert (=> b!4220034 m!4808671))

(declare-fun m!4808673 () Bool)

(assert (=> b!4220034 m!4808673))

(declare-fun m!4808675 () Bool)

(assert (=> b!4220046 m!4808675))

(declare-fun m!4808677 () Bool)

(assert (=> b!4220046 m!4808677))

(declare-fun m!4808679 () Bool)

(assert (=> b!4220025 m!4808679))

(declare-fun m!4808681 () Bool)

(assert (=> b!4220033 m!4808681))

(declare-fun m!4808683 () Bool)

(assert (=> b!4220033 m!4808683))

(declare-fun m!4808685 () Bool)

(assert (=> b!4220052 m!4808685))

(declare-fun m!4808687 () Bool)

(assert (=> b!4220028 m!4808687))

(declare-fun m!4808689 () Bool)

(assert (=> b!4220038 m!4808689))

(declare-fun m!4808691 () Bool)

(assert (=> b!4220038 m!4808691))

(declare-fun m!4808693 () Bool)

(assert (=> b!4220037 m!4808693))

(declare-fun m!4808695 () Bool)

(assert (=> start!403362 m!4808695))

(declare-fun m!4808697 () Bool)

(assert (=> start!403362 m!4808697))

(declare-fun m!4808699 () Bool)

(assert (=> b!4220035 m!4808699))

(declare-fun m!4808701 () Bool)

(assert (=> b!4220027 m!4808701))

(check-sat (not b!4220036) b_and!332901 (not b!4220051) (not b!4220046) b_and!332915 (not b!4220024) (not b!4220035) (not b!4220037) (not b_next!124645) (not b!4220043) (not b!4220027) (not start!403362) (not b!4220033) b_and!332905 (not b!4220034) (not b!4220048) b_and!332907 tp_is_empty!22349 (not b_next!124643) (not b!4220028) (not b_next!124637) b_and!332903 b_and!332913 (not b!4220049) (not b!4220047) b_and!332909 (not b_next!124635) (not b_next!124641) (not b!4220045) (not b!4220026) (not b!4220042) (not b_next!124639) (not b!4220030) b_and!332911 (not b_next!124649) (not b!4220050) (not b!4220025) (not b!4220052) (not b_next!124647) (not b!4220038) (not b!4220031) (not b!4220041) (not b!4220029))
(check-sat b_and!332901 (not b_next!124637) b_and!332915 (not b_next!124641) (not b_next!124645) (not b_next!124639) (not b_next!124647) b_and!332905 b_and!332907 (not b_next!124643) b_and!332903 b_and!332913 b_and!332909 (not b_next!124635) b_and!332911 (not b_next!124649))
