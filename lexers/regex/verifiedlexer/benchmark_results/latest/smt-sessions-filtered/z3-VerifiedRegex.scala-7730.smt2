; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!406386 () Bool)

(assert start!406386)

(declare-fun b!4245412 () Bool)

(declare-fun b_free!125959 () Bool)

(declare-fun b_next!126663 () Bool)

(assert (=> b!4245412 (= b_free!125959 (not b_next!126663))))

(declare-fun tp!1301936 () Bool)

(declare-fun b_and!336281 () Bool)

(assert (=> b!4245412 (= tp!1301936 b_and!336281)))

(declare-fun b_free!125961 () Bool)

(declare-fun b_next!126665 () Bool)

(assert (=> b!4245412 (= b_free!125961 (not b_next!126665))))

(declare-fun tp!1301943 () Bool)

(declare-fun b_and!336283 () Bool)

(assert (=> b!4245412 (= tp!1301943 b_and!336283)))

(declare-fun b!4245409 () Bool)

(declare-fun b_free!125963 () Bool)

(declare-fun b_next!126667 () Bool)

(assert (=> b!4245409 (= b_free!125963 (not b_next!126667))))

(declare-fun tp!1301948 () Bool)

(declare-fun b_and!336285 () Bool)

(assert (=> b!4245409 (= tp!1301948 b_and!336285)))

(declare-fun b_free!125965 () Bool)

(declare-fun b_next!126669 () Bool)

(assert (=> b!4245409 (= b_free!125965 (not b_next!126669))))

(declare-fun tp!1301947 () Bool)

(declare-fun b_and!336287 () Bool)

(assert (=> b!4245409 (= tp!1301947 b_and!336287)))

(declare-fun b!4245408 () Bool)

(declare-fun b_free!125967 () Bool)

(declare-fun b_next!126671 () Bool)

(assert (=> b!4245408 (= b_free!125967 (not b_next!126671))))

(declare-fun tp!1301945 () Bool)

(declare-fun b_and!336289 () Bool)

(assert (=> b!4245408 (= tp!1301945 b_and!336289)))

(declare-fun b_free!125969 () Bool)

(declare-fun b_next!126673 () Bool)

(assert (=> b!4245408 (= b_free!125969 (not b_next!126673))))

(declare-fun tp!1301933 () Bool)

(declare-fun b_and!336291 () Bool)

(assert (=> b!4245408 (= tp!1301933 b_and!336291)))

(declare-fun b!4245401 () Bool)

(declare-fun e!2636658 () Bool)

(declare-fun e!2636654 () Bool)

(declare-fun tp!1301935 () Bool)

(assert (=> b!4245401 (= e!2636658 (and e!2636654 tp!1301935))))

(declare-fun b!4245402 () Bool)

(declare-fun e!2636657 () Bool)

(declare-fun tp_is_empty!22689 () Bool)

(declare-fun tp!1301942 () Bool)

(assert (=> b!4245402 (= e!2636657 (and tp_is_empty!22689 tp!1301942))))

(declare-fun b!4245403 () Bool)

(declare-fun e!2636665 () Bool)

(declare-datatypes ((List!47093 0))(
  ( (Nil!46969) (Cons!46969 (h!52389 (_ BitVec 16)) (t!351662 List!47093)) )
))
(declare-datatypes ((TokenValue!8174 0))(
  ( (FloatLiteralValue!16348 (text!57663 List!47093)) (TokenValueExt!8173 (__x!28571 Int)) (Broken!40870 (value!246914 List!47093)) (Object!8297) (End!8174) (Def!8174) (Underscore!8174) (Match!8174) (Else!8174) (Error!8174) (Case!8174) (If!8174) (Extends!8174) (Abstract!8174) (Class!8174) (Val!8174) (DelimiterValue!16348 (del!8234 List!47093)) (KeywordValue!8180 (value!246915 List!47093)) (CommentValue!16348 (value!246916 List!47093)) (WhitespaceValue!16348 (value!246917 List!47093)) (IndentationValue!8174 (value!246918 List!47093)) (String!54799) (Int32!8174) (Broken!40871 (value!246919 List!47093)) (Boolean!8175) (Unit!66012) (OperatorValue!8177 (op!8234 List!47093)) (IdentifierValue!16348 (value!246920 List!47093)) (IdentifierValue!16349 (value!246921 List!47093)) (WhitespaceValue!16349 (value!246922 List!47093)) (True!16348) (False!16348) (Broken!40872 (value!246923 List!47093)) (Broken!40873 (value!246924 List!47093)) (True!16349) (RightBrace!8174) (RightBracket!8174) (Colon!8174) (Null!8174) (Comma!8174) (LeftBracket!8174) (False!16349) (LeftBrace!8174) (ImaginaryLiteralValue!8174 (text!57664 List!47093)) (StringLiteralValue!24522 (value!246925 List!47093)) (EOFValue!8174 (value!246926 List!47093)) (IdentValue!8174 (value!246927 List!47093)) (DelimiterValue!16349 (value!246928 List!47093)) (DedentValue!8174 (value!246929 List!47093)) (NewLineValue!8174 (value!246930 List!47093)) (IntegerValue!24522 (value!246931 (_ BitVec 32)) (text!57665 List!47093)) (IntegerValue!24523 (value!246932 Int) (text!57666 List!47093)) (Times!8174) (Or!8174) (Equal!8174) (Minus!8174) (Broken!40874 (value!246933 List!47093)) (And!8174) (Div!8174) (LessEqual!8174) (Mod!8174) (Concat!21023) (Not!8174) (Plus!8174) (SpaceValue!8174 (value!246934 List!47093)) (IntegerValue!24524 (value!246935 Int) (text!57667 List!47093)) (StringLiteralValue!24523 (text!57668 List!47093)) (FloatLiteralValue!16349 (text!57669 List!47093)) (BytesLiteralValue!8174 (value!246936 List!47093)) (CommentValue!16349 (value!246937 List!47093)) (StringLiteralValue!24524 (value!246938 List!47093)) (ErrorTokenValue!8174 (msg!8235 List!47093)) )
))
(declare-datatypes ((String!54800 0))(
  ( (String!54801 (value!246939 String)) )
))
(declare-datatypes ((C!25896 0))(
  ( (C!25897 (val!15138 Int)) )
))
(declare-datatypes ((Regex!12849 0))(
  ( (ElementMatch!12849 (c!721166 C!25896)) (Concat!21024 (regOne!26210 Regex!12849) (regTwo!26210 Regex!12849)) (EmptyExpr!12849) (Star!12849 (reg!13178 Regex!12849)) (EmptyLang!12849) (Union!12849 (regOne!26211 Regex!12849) (regTwo!26211 Regex!12849)) )
))
(declare-datatypes ((List!47094 0))(
  ( (Nil!46970) (Cons!46970 (h!52390 C!25896) (t!351663 List!47094)) )
))
(declare-datatypes ((IArray!28315 0))(
  ( (IArray!28316 (innerList!14215 List!47094)) )
))
(declare-datatypes ((Conc!14155 0))(
  ( (Node!14155 (left!34877 Conc!14155) (right!35207 Conc!14155) (csize!28540 Int) (cheight!14366 Int)) (Leaf!21886 (xs!17461 IArray!28315) (csize!28541 Int)) (Empty!14155) )
))
(declare-datatypes ((BalanceConc!27904 0))(
  ( (BalanceConc!27905 (c!721167 Conc!14155)) )
))
(declare-datatypes ((TokenValueInjection!15776 0))(
  ( (TokenValueInjection!15777 (toValue!10704 Int) (toChars!10563 Int)) )
))
(declare-datatypes ((Rule!15688 0))(
  ( (Rule!15689 (regex!7944 Regex!12849) (tag!8808 String!54800) (isSeparator!7944 Bool) (transformation!7944 TokenValueInjection!15776)) )
))
(declare-datatypes ((Token!14514 0))(
  ( (Token!14515 (value!246940 TokenValue!8174) (rule!11074 Rule!15688) (size!34401 Int) (originalCharacters!8288 List!47094)) )
))
(declare-datatypes ((tuple2!44538 0))(
  ( (tuple2!44539 (_1!25403 Token!14514) (_2!25403 List!47094)) )
))
(declare-datatypes ((Option!10080 0))(
  ( (None!10079) (Some!10079 (v!41033 tuple2!44538)) )
))
(declare-fun lt!1507486 () Option!10080)

(declare-fun lt!1507485 () Option!10080)

(get-info :version)

(assert (=> b!4245403 (= e!2636665 (and (or (not ((_ is Some!10079) lt!1507486)) (not ((_ is Some!10079) lt!1507485))) (or (not ((_ is Some!10079) lt!1507486)) (not ((_ is None!10079) lt!1507485))) (or (not ((_ is None!10079) lt!1507486)) (not ((_ is Some!10079) lt!1507485))) (or (not ((_ is None!10079) lt!1507486)) (not ((_ is None!10079) lt!1507485)))))))

(declare-datatypes ((LexerInterface!7539 0))(
  ( (LexerInterfaceExt!7536 (__x!28572 Int)) (Lexer!7537) )
))
(declare-fun thiss!21540 () LexerInterface!7539)

(declare-datatypes ((List!47095 0))(
  ( (Nil!46971) (Cons!46971 (h!52391 Rule!15688) (t!351664 List!47095)) )
))
(declare-fun rules!2932 () List!47095)

(declare-fun shorterInput!51 () List!47094)

(declare-fun maxPrefix!4497 (LexerInterface!7539 List!47095 List!47094) Option!10080)

(assert (=> b!4245403 (= lt!1507485 (maxPrefix!4497 thiss!21540 rules!2932 shorterInput!51))))

(declare-fun longerInput!51 () List!47094)

(assert (=> b!4245403 (= lt!1507486 (maxPrefix!4497 thiss!21540 rules!2932 longerInput!51))))

(declare-fun b!4245404 () Bool)

(declare-fun e!2636653 () Bool)

(declare-fun tp!1301937 () Bool)

(declare-fun inv!61728 (String!54800) Bool)

(declare-fun inv!61731 (TokenValueInjection!15776) Bool)

(assert (=> b!4245404 (= e!2636654 (and tp!1301937 (inv!61728 (tag!8808 (h!52391 rules!2932))) (inv!61731 (transformation!7944 (h!52391 rules!2932))) e!2636653))))

(declare-fun e!2636660 () Bool)

(declare-fun e!2636659 () Bool)

(declare-fun b!4245405 () Bool)

(declare-datatypes ((List!47096 0))(
  ( (Nil!46972) (Cons!46972 (h!52392 Token!14514) (t!351665 List!47096)) )
))
(declare-fun tokens!581 () List!47096)

(declare-fun tp!1301938 () Bool)

(assert (=> b!4245405 (= e!2636659 (and tp!1301938 (inv!61728 (tag!8808 (rule!11074 (h!52392 tokens!581)))) (inv!61731 (transformation!7944 (rule!11074 (h!52392 tokens!581)))) e!2636660))))

(declare-fun tp!1301932 () Bool)

(declare-fun e!2636650 () Bool)

(declare-fun b!4245406 () Bool)

(declare-fun inv!21 (TokenValue!8174) Bool)

(assert (=> b!4245406 (= e!2636650 (and (inv!21 (value!246940 (h!52392 tokens!581))) e!2636659 tp!1301932))))

(declare-fun b!4245407 () Bool)

(declare-fun res!1745383 () Bool)

(assert (=> b!4245407 (=> (not res!1745383) (not e!2636665))))

(declare-fun suffix!1262 () List!47094)

(declare-datatypes ((tuple2!44540 0))(
  ( (tuple2!44541 (_1!25404 List!47096) (_2!25404 List!47094)) )
))
(declare-fun lexList!2045 (LexerInterface!7539 List!47095 List!47094) tuple2!44540)

(assert (=> b!4245407 (= res!1745383 (= (lexList!2045 thiss!21540 rules!2932 longerInput!51) (tuple2!44541 tokens!581 suffix!1262)))))

(assert (=> b!4245408 (= e!2636653 (and tp!1301945 tp!1301933))))

(declare-fun e!2636656 () Bool)

(assert (=> b!4245409 (= e!2636656 (and tp!1301948 tp!1301947))))

(declare-fun b!4245410 () Bool)

(declare-fun res!1745384 () Bool)

(assert (=> b!4245410 (=> (not res!1745384) (not e!2636665))))

(declare-fun rulesInvariant!6650 (LexerInterface!7539 List!47095) Bool)

(assert (=> b!4245410 (= res!1745384 (rulesInvariant!6650 thiss!21540 rules!2932))))

(declare-fun b!4245411 () Bool)

(declare-fun res!1745390 () Bool)

(assert (=> b!4245411 (=> (not res!1745390) (not e!2636665))))

(declare-fun isEmpty!27781 (List!47095) Bool)

(assert (=> b!4245411 (= res!1745390 (not (isEmpty!27781 rules!2932)))))

(assert (=> b!4245412 (= e!2636660 (and tp!1301936 tp!1301943))))

(declare-fun res!1745385 () Bool)

(assert (=> start!406386 (=> (not res!1745385) (not e!2636665))))

(assert (=> start!406386 (= res!1745385 ((_ is Lexer!7537) thiss!21540))))

(assert (=> start!406386 e!2636665))

(assert (=> start!406386 true))

(assert (=> start!406386 e!2636658))

(declare-fun e!2636663 () Bool)

(assert (=> start!406386 e!2636663))

(assert (=> start!406386 e!2636657))

(declare-fun e!2636648 () Bool)

(assert (=> start!406386 e!2636648))

(declare-fun e!2636664 () Bool)

(assert (=> start!406386 e!2636664))

(declare-fun e!2636651 () Bool)

(assert (=> start!406386 e!2636651))

(declare-fun tp!1301934 () Bool)

(declare-fun b!4245413 () Bool)

(declare-fun inv!61732 (Token!14514) Bool)

(assert (=> b!4245413 (= e!2636664 (and (inv!61732 (h!52392 tokens!581)) e!2636650 tp!1301934))))

(declare-fun b!4245414 () Bool)

(declare-fun tp!1301941 () Bool)

(assert (=> b!4245414 (= e!2636648 (and tp_is_empty!22689 tp!1301941))))

(declare-fun b!4245415 () Bool)

(declare-fun tp!1301946 () Bool)

(assert (=> b!4245415 (= e!2636651 (and tp_is_empty!22689 tp!1301946))))

(declare-fun e!2636655 () Bool)

(declare-fun addTokens!17 () List!47096)

(declare-fun b!4245416 () Bool)

(declare-fun tp!1301940 () Bool)

(assert (=> b!4245416 (= e!2636655 (and tp!1301940 (inv!61728 (tag!8808 (rule!11074 (h!52392 addTokens!17)))) (inv!61731 (transformation!7944 (rule!11074 (h!52392 addTokens!17)))) e!2636656))))

(declare-fun b!4245417 () Bool)

(declare-fun tp!1301939 () Bool)

(declare-fun e!2636661 () Bool)

(assert (=> b!4245417 (= e!2636661 (and (inv!21 (value!246940 (h!52392 addTokens!17))) e!2636655 tp!1301939))))

(declare-fun b!4245418 () Bool)

(declare-fun res!1745389 () Bool)

(assert (=> b!4245418 (=> (not res!1745389) (not e!2636665))))

(declare-fun isEmpty!27782 (List!47094) Bool)

(assert (=> b!4245418 (= res!1745389 (not (isEmpty!27782 longerInput!51)))))

(declare-fun b!4245419 () Bool)

(declare-fun res!1745386 () Bool)

(assert (=> b!4245419 (=> (not res!1745386) (not e!2636665))))

(declare-fun isEmpty!27783 (List!47096) Bool)

(assert (=> b!4245419 (= res!1745386 (not (isEmpty!27783 addTokens!17)))))

(declare-fun b!4245420 () Bool)

(declare-fun tp!1301944 () Bool)

(assert (=> b!4245420 (= e!2636663 (and (inv!61732 (h!52392 addTokens!17)) e!2636661 tp!1301944))))

(declare-fun b!4245421 () Bool)

(declare-fun res!1745388 () Bool)

(assert (=> b!4245421 (=> (not res!1745388) (not e!2636665))))

(declare-fun size!34402 (List!47094) Int)

(assert (=> b!4245421 (= res!1745388 (> (size!34402 longerInput!51) (size!34402 shorterInput!51)))))

(declare-fun b!4245422 () Bool)

(declare-fun res!1745387 () Bool)

(assert (=> b!4245422 (=> (not res!1745387) (not e!2636665))))

(declare-fun size!34403 (List!47096) Int)

(assert (=> b!4245422 (= res!1745387 (> (size!34403 addTokens!17) 0))))

(assert (= (and start!406386 res!1745385) b!4245411))

(assert (= (and b!4245411 res!1745390) b!4245410))

(assert (= (and b!4245410 res!1745384) b!4245418))

(assert (= (and b!4245418 res!1745389) b!4245421))

(assert (= (and b!4245421 res!1745388) b!4245407))

(assert (= (and b!4245407 res!1745383) b!4245419))

(assert (= (and b!4245419 res!1745386) b!4245422))

(assert (= (and b!4245422 res!1745387) b!4245403))

(assert (= b!4245404 b!4245408))

(assert (= b!4245401 b!4245404))

(assert (= (and start!406386 ((_ is Cons!46971) rules!2932)) b!4245401))

(assert (= b!4245416 b!4245409))

(assert (= b!4245417 b!4245416))

(assert (= b!4245420 b!4245417))

(assert (= (and start!406386 ((_ is Cons!46972) addTokens!17)) b!4245420))

(assert (= (and start!406386 ((_ is Cons!46970) shorterInput!51)) b!4245402))

(assert (= (and start!406386 ((_ is Cons!46970) suffix!1262)) b!4245414))

(assert (= b!4245405 b!4245412))

(assert (= b!4245406 b!4245405))

(assert (= b!4245413 b!4245406))

(assert (= (and start!406386 ((_ is Cons!46972) tokens!581)) b!4245413))

(assert (= (and start!406386 ((_ is Cons!46970) longerInput!51)) b!4245415))

(declare-fun m!4830643 () Bool)

(assert (=> b!4245404 m!4830643))

(declare-fun m!4830645 () Bool)

(assert (=> b!4245404 m!4830645))

(declare-fun m!4830647 () Bool)

(assert (=> b!4245403 m!4830647))

(declare-fun m!4830649 () Bool)

(assert (=> b!4245403 m!4830649))

(declare-fun m!4830651 () Bool)

(assert (=> b!4245419 m!4830651))

(declare-fun m!4830653 () Bool)

(assert (=> b!4245417 m!4830653))

(declare-fun m!4830655 () Bool)

(assert (=> b!4245405 m!4830655))

(declare-fun m!4830657 () Bool)

(assert (=> b!4245405 m!4830657))

(declare-fun m!4830659 () Bool)

(assert (=> b!4245420 m!4830659))

(declare-fun m!4830661 () Bool)

(assert (=> b!4245422 m!4830661))

(declare-fun m!4830663 () Bool)

(assert (=> b!4245410 m!4830663))

(declare-fun m!4830665 () Bool)

(assert (=> b!4245418 m!4830665))

(declare-fun m!4830667 () Bool)

(assert (=> b!4245416 m!4830667))

(declare-fun m!4830669 () Bool)

(assert (=> b!4245416 m!4830669))

(declare-fun m!4830671 () Bool)

(assert (=> b!4245406 m!4830671))

(declare-fun m!4830673 () Bool)

(assert (=> b!4245407 m!4830673))

(declare-fun m!4830675 () Bool)

(assert (=> b!4245421 m!4830675))

(declare-fun m!4830677 () Bool)

(assert (=> b!4245421 m!4830677))

(declare-fun m!4830679 () Bool)

(assert (=> b!4245411 m!4830679))

(declare-fun m!4830681 () Bool)

(assert (=> b!4245413 m!4830681))

(check-sat (not b_next!126665) b_and!336285 (not b!4245422) (not b!4245410) (not b!4245413) (not b!4245419) (not b!4245421) (not b!4245407) b_and!336287 b_and!336283 (not b_next!126671) (not b_next!126673) b_and!336289 (not b!4245403) (not b_next!126669) (not b_next!126667) (not b_next!126663) (not b!4245414) (not b!4245404) (not b!4245411) tp_is_empty!22689 b_and!336281 (not b!4245415) (not b!4245420) (not b!4245418) b_and!336291 (not b!4245401) (not b!4245416) (not b!4245406) (not b!4245417) (not b!4245405) (not b!4245402))
(check-sat (not b_next!126665) b_and!336281 b_and!336285 b_and!336291 b_and!336287 b_and!336283 (not b_next!126671) (not b_next!126673) b_and!336289 (not b_next!126669) (not b_next!126667) (not b_next!126663))
