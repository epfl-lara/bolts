; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!402864 () Bool)

(assert start!402864)

(declare-fun b!4215436 () Bool)

(declare-fun b_free!123619 () Bool)

(declare-fun b_next!124323 () Bool)

(assert (=> b!4215436 (= b_free!123619 (not b_next!124323))))

(declare-fun tp!1289438 () Bool)

(declare-fun b_and!332053 () Bool)

(assert (=> b!4215436 (= tp!1289438 b_and!332053)))

(declare-fun b_free!123621 () Bool)

(declare-fun b_next!124325 () Bool)

(assert (=> b!4215436 (= b_free!123621 (not b_next!124325))))

(declare-fun tp!1289435 () Bool)

(declare-fun b_and!332055 () Bool)

(assert (=> b!4215436 (= tp!1289435 b_and!332055)))

(declare-fun b!4215412 () Bool)

(declare-fun b_free!123623 () Bool)

(declare-fun b_next!124327 () Bool)

(assert (=> b!4215412 (= b_free!123623 (not b_next!124327))))

(declare-fun tp!1289452 () Bool)

(declare-fun b_and!332057 () Bool)

(assert (=> b!4215412 (= tp!1289452 b_and!332057)))

(declare-fun b_free!123625 () Bool)

(declare-fun b_next!124329 () Bool)

(assert (=> b!4215412 (= b_free!123625 (not b_next!124329))))

(declare-fun tp!1289442 () Bool)

(declare-fun b_and!332059 () Bool)

(assert (=> b!4215412 (= tp!1289442 b_and!332059)))

(declare-fun b!4215442 () Bool)

(declare-fun b_free!123627 () Bool)

(declare-fun b_next!124331 () Bool)

(assert (=> b!4215442 (= b_free!123627 (not b_next!124331))))

(declare-fun tp!1289445 () Bool)

(declare-fun b_and!332061 () Bool)

(assert (=> b!4215442 (= tp!1289445 b_and!332061)))

(declare-fun b_free!123629 () Bool)

(declare-fun b_next!124333 () Bool)

(assert (=> b!4215442 (= b_free!123629 (not b_next!124333))))

(declare-fun tp!1289436 () Bool)

(declare-fun b_and!332063 () Bool)

(assert (=> b!4215442 (= tp!1289436 b_and!332063)))

(declare-fun b!4215434 () Bool)

(declare-fun b_free!123631 () Bool)

(declare-fun b_next!124335 () Bool)

(assert (=> b!4215434 (= b_free!123631 (not b_next!124335))))

(declare-fun tp!1289448 () Bool)

(declare-fun b_and!332065 () Bool)

(assert (=> b!4215434 (= tp!1289448 b_and!332065)))

(declare-fun b_free!123633 () Bool)

(declare-fun b_next!124337 () Bool)

(assert (=> b!4215434 (= b_free!123633 (not b_next!124337))))

(declare-fun tp!1289446 () Bool)

(declare-fun b_and!332067 () Bool)

(assert (=> b!4215434 (= tp!1289446 b_and!332067)))

(declare-fun b!4215409 () Bool)

(declare-fun res!1732160 () Bool)

(declare-fun e!2617016 () Bool)

(assert (=> b!4215409 (=> res!1732160 e!2617016)))

(declare-datatypes ((LexerInterface!7364 0))(
  ( (LexerInterfaceExt!7361 (__x!28221 Int)) (Lexer!7362) )
))
(declare-fun thiss!26544 () LexerInterface!7364)

(declare-datatypes ((List!46492 0))(
  ( (Nil!46368) (Cons!46368 (h!51788 (_ BitVec 16)) (t!348331 List!46492)) )
))
(declare-datatypes ((TokenValue!7999 0))(
  ( (FloatLiteralValue!15998 (text!56438 List!46492)) (TokenValueExt!7998 (__x!28222 Int)) (Broken!39995 (value!241921 List!46492)) (Object!8122) (End!7999) (Def!7999) (Underscore!7999) (Match!7999) (Else!7999) (Error!7999) (Case!7999) (If!7999) (Extends!7999) (Abstract!7999) (Class!7999) (Val!7999) (DelimiterValue!15998 (del!8059 List!46492)) (KeywordValue!8005 (value!241922 List!46492)) (CommentValue!15998 (value!241923 List!46492)) (WhitespaceValue!15998 (value!241924 List!46492)) (IndentationValue!7999 (value!241925 List!46492)) (String!53866) (Int32!7999) (Broken!39996 (value!241926 List!46492)) (Boolean!8000) (Unit!65507) (OperatorValue!8002 (op!8059 List!46492)) (IdentifierValue!15998 (value!241927 List!46492)) (IdentifierValue!15999 (value!241928 List!46492)) (WhitespaceValue!15999 (value!241929 List!46492)) (True!15998) (False!15998) (Broken!39997 (value!241930 List!46492)) (Broken!39998 (value!241931 List!46492)) (True!15999) (RightBrace!7999) (RightBracket!7999) (Colon!7999) (Null!7999) (Comma!7999) (LeftBracket!7999) (False!15999) (LeftBrace!7999) (ImaginaryLiteralValue!7999 (text!56439 List!46492)) (StringLiteralValue!23997 (value!241932 List!46492)) (EOFValue!7999 (value!241933 List!46492)) (IdentValue!7999 (value!241934 List!46492)) (DelimiterValue!15999 (value!241935 List!46492)) (DedentValue!7999 (value!241936 List!46492)) (NewLineValue!7999 (value!241937 List!46492)) (IntegerValue!23997 (value!241938 (_ BitVec 32)) (text!56440 List!46492)) (IntegerValue!23998 (value!241939 Int) (text!56441 List!46492)) (Times!7999) (Or!7999) (Equal!7999) (Minus!7999) (Broken!39999 (value!241940 List!46492)) (And!7999) (Div!7999) (LessEqual!7999) (Mod!7999) (Concat!20673) (Not!7999) (Plus!7999) (SpaceValue!7999 (value!241941 List!46492)) (IntegerValue!23999 (value!241942 Int) (text!56442 List!46492)) (StringLiteralValue!23998 (text!56443 List!46492)) (FloatLiteralValue!15999 (text!56444 List!46492)) (BytesLiteralValue!7999 (value!241943 List!46492)) (CommentValue!15999 (value!241944 List!46492)) (StringLiteralValue!23999 (value!241945 List!46492)) (ErrorTokenValue!7999 (msg!8060 List!46492)) )
))
(declare-datatypes ((C!25542 0))(
  ( (C!25543 (val!14933 Int)) )
))
(declare-datatypes ((List!46493 0))(
  ( (Nil!46369) (Cons!46369 (h!51789 C!25542) (t!348332 List!46493)) )
))
(declare-datatypes ((IArray!27965 0))(
  ( (IArray!27966 (innerList!14040 List!46493)) )
))
(declare-datatypes ((Regex!12674 0))(
  ( (ElementMatch!12674 (c!717712 C!25542)) (Concat!20674 (regOne!25860 Regex!12674) (regTwo!25860 Regex!12674)) (EmptyExpr!12674) (Star!12674 (reg!13003 Regex!12674)) (EmptyLang!12674) (Union!12674 (regOne!25861 Regex!12674) (regTwo!25861 Regex!12674)) )
))
(declare-datatypes ((String!53867 0))(
  ( (String!53868 (value!241946 String)) )
))
(declare-datatypes ((Conc!13980 0))(
  ( (Node!13980 (left!34504 Conc!13980) (right!34834 Conc!13980) (csize!28190 Int) (cheight!14191 Int)) (Leaf!21609 (xs!17286 IArray!27965) (csize!28191 Int)) (Empty!13980) )
))
(declare-datatypes ((BalanceConc!27554 0))(
  ( (BalanceConc!27555 (c!717713 Conc!13980)) )
))
(declare-datatypes ((TokenValueInjection!15426 0))(
  ( (TokenValueInjection!15427 (toValue!10489 Int) (toChars!10348 Int)) )
))
(declare-datatypes ((Rule!15338 0))(
  ( (Rule!15339 (regex!7769 Regex!12674) (tag!8633 String!53867) (isSeparator!7769 Bool) (transformation!7769 TokenValueInjection!15426)) )
))
(declare-datatypes ((List!46494 0))(
  ( (Nil!46370) (Cons!46370 (h!51790 Rule!15338) (t!348333 List!46494)) )
))
(declare-fun rules!3967 () List!46494)

(declare-fun input!3517 () List!46493)

(declare-datatypes ((Token!14240 0))(
  ( (Token!14241 (value!241947 TokenValue!7999) (rule!10893 Rule!15338) (size!34050 Int) (originalCharacters!8151 List!46493)) )
))
(declare-datatypes ((tuple2!44100 0))(
  ( (tuple2!44101 (_1!25184 Token!14240) (_2!25184 List!46493)) )
))
(declare-datatypes ((Option!9957 0))(
  ( (None!9956) (Some!9956 (v!40836 tuple2!44100)) )
))
(declare-fun lt!1500235 () Option!9957)

(declare-fun maxPrefixOneRule!3359 (LexerInterface!7364 Rule!15338 List!46493) Option!9957)

(assert (=> b!4215409 (= res!1732160 (not (= (maxPrefixOneRule!3359 thiss!26544 (h!51790 rules!3967) input!3517) lt!1500235)))))

(declare-fun b!4215410 () Bool)

(declare-fun e!2617020 () Bool)

(assert (=> b!4215410 (= e!2617016 e!2617020)))

(declare-fun res!1732154 () Bool)

(assert (=> b!4215410 (=> res!1732154 e!2617020)))

(declare-fun lt!1500239 () List!46493)

(assert (=> b!4215410 (= res!1732154 (not (= lt!1500239 input!3517)))))

(declare-fun rulesInvariant!6575 (LexerInterface!7364 List!46494) Bool)

(assert (=> b!4215410 (rulesInvariant!6575 thiss!26544 (t!348333 rules!3967))))

(declare-datatypes ((Unit!65508 0))(
  ( (Unit!65509) )
))
(declare-fun lt!1500233 () Unit!65508)

(declare-fun lemmaInvariantOnRulesThenOnTail!859 (LexerInterface!7364 Rule!15338 List!46494) Unit!65508)

(assert (=> b!4215410 (= lt!1500233 (lemmaInvariantOnRulesThenOnTail!859 thiss!26544 (h!51790 rules!3967) (t!348333 rules!3967)))))

(declare-fun lt!1500241 () List!46493)

(declare-fun isPrefix!4628 (List!46493 List!46493) Bool)

(assert (=> b!4215410 (isPrefix!4628 lt!1500241 lt!1500239)))

(declare-fun lt!1500234 () tuple2!44100)

(declare-fun ++!11843 (List!46493 List!46493) List!46493)

(assert (=> b!4215410 (= lt!1500239 (++!11843 lt!1500241 (_2!25184 lt!1500234)))))

(declare-fun lt!1500237 () Unit!65508)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3083 (List!46493 List!46493) Unit!65508)

(assert (=> b!4215410 (= lt!1500237 (lemmaConcatTwoListThenFirstIsPrefix!3083 lt!1500241 (_2!25184 lt!1500234)))))

(declare-fun list!16772 (BalanceConc!27554) List!46493)

(declare-fun charsOf!5192 (Token!14240) BalanceConc!27554)

(assert (=> b!4215410 (= lt!1500241 (list!16772 (charsOf!5192 (_1!25184 lt!1500234))))))

(declare-fun lt!1500236 () Option!9957)

(declare-fun get!15088 (Option!9957) tuple2!44100)

(assert (=> b!4215410 (= lt!1500234 (get!15088 lt!1500236))))

(declare-fun lt!1500238 () Unit!65508)

(declare-fun e!2617024 () Unit!65508)

(assert (=> b!4215410 (= lt!1500238 e!2617024)))

(declare-fun c!717711 () Bool)

(declare-fun isEmpty!27466 (Option!9957) Bool)

(assert (=> b!4215410 (= c!717711 (isEmpty!27466 lt!1500236))))

(declare-fun maxPrefix!4404 (LexerInterface!7364 List!46494 List!46493) Option!9957)

(assert (=> b!4215410 (= lt!1500236 (maxPrefix!4404 thiss!26544 (t!348333 rules!3967) input!3517))))

(declare-fun b!4215411 () Bool)

(declare-fun tp!1289434 () Bool)

(declare-fun t!8364 () Token!14240)

(declare-fun e!2617015 () Bool)

(declare-fun e!2617013 () Bool)

(declare-fun inv!21 (TokenValue!7999) Bool)

(assert (=> b!4215411 (= e!2617013 (and (inv!21 (value!241947 t!8364)) e!2617015 tp!1289434))))

(declare-fun e!2617008 () Bool)

(assert (=> b!4215412 (= e!2617008 (and tp!1289452 tp!1289442))))

(declare-fun b!4215413 () Bool)

(declare-fun res!1732153 () Bool)

(declare-fun e!2617022 () Bool)

(assert (=> b!4215413 (=> (not res!1732153) (not e!2617022))))

(assert (=> b!4215413 (= res!1732153 (rulesInvariant!6575 thiss!26544 rules!3967))))

(declare-fun b!4215414 () Bool)

(declare-fun res!1732164 () Bool)

(assert (=> b!4215414 (=> (not res!1732164) (not e!2617022))))

(declare-fun p!3001 () List!46493)

(declare-fun suffix!1557 () List!46493)

(assert (=> b!4215414 (= res!1732164 (= (++!11843 p!3001 suffix!1557) input!3517))))

(declare-fun b!4215415 () Bool)

(declare-fun e!2617014 () Bool)

(declare-fun tp_is_empty!22315 () Bool)

(declare-fun tp!1289440 () Bool)

(assert (=> b!4215415 (= e!2617014 (and tp_is_empty!22315 tp!1289440))))

(declare-fun b!4215416 () Bool)

(declare-fun res!1732169 () Bool)

(declare-fun e!2617007 () Bool)

(assert (=> b!4215416 (=> (not res!1732169) (not e!2617007))))

(declare-fun rBis!178 () Rule!15338)

(declare-fun ruleValid!3481 (LexerInterface!7364 Rule!15338) Bool)

(assert (=> b!4215416 (= res!1732169 (ruleValid!3481 thiss!26544 rBis!178))))

(declare-fun b!4215417 () Bool)

(assert (=> b!4215417 (= e!2617007 (not e!2617016))))

(declare-fun res!1732165 () Bool)

(assert (=> b!4215417 (=> res!1732165 e!2617016)))

(declare-fun tBis!41 () Token!14240)

(declare-fun suffixBis!41 () List!46493)

(assert (=> b!4215417 (= res!1732165 (not (= (maxPrefixOneRule!3359 thiss!26544 rBis!178 input!3517) (Some!9956 (tuple2!44101 tBis!41 suffixBis!41)))))))

(assert (=> b!4215417 (isPrefix!4628 input!3517 input!3517)))

(declare-fun lt!1500240 () Unit!65508)

(declare-fun lemmaIsPrefixRefl!3045 (List!46493 List!46493) Unit!65508)

(assert (=> b!4215417 (= lt!1500240 (lemmaIsPrefixRefl!3045 input!3517 input!3517))))

(declare-fun e!2617017 () Bool)

(declare-fun b!4215418 () Bool)

(declare-fun tp!1289443 () Bool)

(declare-fun inv!61004 (String!53867) Bool)

(declare-fun inv!61007 (TokenValueInjection!15426) Bool)

(assert (=> b!4215418 (= e!2617017 (and tp!1289443 (inv!61004 (tag!8633 rBis!178)) (inv!61007 (transformation!7769 rBis!178)) e!2617008))))

(declare-fun b!4215419 () Bool)

(declare-fun res!1732156 () Bool)

(assert (=> b!4215419 (=> res!1732156 e!2617016)))

(assert (=> b!4215419 (= res!1732156 (not (= (rule!10893 tBis!41) rBis!178)))))

(declare-fun b!4215420 () Bool)

(declare-fun e!2617025 () Bool)

(declare-fun tp!1289437 () Bool)

(assert (=> b!4215420 (= e!2617025 (and tp_is_empty!22315 tp!1289437))))

(declare-fun e!2617018 () Bool)

(declare-fun b!4215421 () Bool)

(declare-fun e!2617026 () Bool)

(declare-fun tp!1289444 () Bool)

(assert (=> b!4215421 (= e!2617026 (and tp!1289444 (inv!61004 (tag!8633 (h!51790 rules!3967))) (inv!61007 (transformation!7769 (h!51790 rules!3967))) e!2617018))))

(declare-fun b!4215422 () Bool)

(assert (=> b!4215422 (= e!2617022 e!2617007)))

(declare-fun res!1732161 () Bool)

(assert (=> b!4215422 (=> (not res!1732161) (not e!2617007))))

(assert (=> b!4215422 (= res!1732161 (= (maxPrefix!4404 thiss!26544 rules!3967 input!3517) lt!1500235))))

(assert (=> b!4215422 (= lt!1500235 (Some!9956 (tuple2!44101 t!8364 suffix!1557)))))

(declare-fun b!4215423 () Bool)

(declare-fun res!1732159 () Bool)

(assert (=> b!4215423 (=> (not res!1732159) (not e!2617022))))

(declare-fun isEmpty!27467 (List!46494) Bool)

(assert (=> b!4215423 (= res!1732159 (not (isEmpty!27467 rules!3967)))))

(declare-fun tp!1289433 () Bool)

(declare-fun e!2617010 () Bool)

(declare-fun b!4215424 () Bool)

(assert (=> b!4215424 (= e!2617015 (and tp!1289433 (inv!61004 (tag!8633 (rule!10893 t!8364))) (inv!61007 (transformation!7769 (rule!10893 t!8364))) e!2617010))))

(declare-fun b!4215425 () Bool)

(declare-fun res!1732166 () Bool)

(assert (=> b!4215425 (=> (not res!1732166) (not e!2617022))))

(declare-fun contains!9590 (List!46494 Rule!15338) Bool)

(assert (=> b!4215425 (= res!1732166 (contains!9590 rules!3967 rBis!178))))

(declare-fun b!4215426 () Bool)

(declare-fun e!2617006 () Bool)

(declare-fun tp!1289451 () Bool)

(assert (=> b!4215426 (= e!2617006 (and e!2617026 tp!1289451))))

(declare-fun e!2617005 () Bool)

(declare-fun b!4215427 () Bool)

(declare-fun e!2617004 () Bool)

(declare-fun tp!1289439 () Bool)

(assert (=> b!4215427 (= e!2617005 (and (inv!21 (value!241947 tBis!41)) e!2617004 tp!1289439))))

(declare-fun b!4215428 () Bool)

(declare-fun e!2617023 () Bool)

(declare-fun tp!1289447 () Bool)

(assert (=> b!4215428 (= e!2617023 (and tp_is_empty!22315 tp!1289447))))

(declare-fun b!4215429 () Bool)

(declare-fun res!1732158 () Bool)

(assert (=> b!4215429 (=> res!1732158 e!2617020)))

(assert (=> b!4215429 (= res!1732158 (not (isPrefix!4628 lt!1500241 input!3517)))))

(declare-fun b!4215430 () Bool)

(declare-fun res!1732163 () Bool)

(assert (=> b!4215430 (=> (not res!1732163) (not e!2617022))))

(declare-fun pBis!121 () List!46493)

(assert (=> b!4215430 (= res!1732163 (isPrefix!4628 pBis!121 input!3517))))

(declare-fun b!4215431 () Bool)

(declare-fun res!1732152 () Bool)

(assert (=> b!4215431 (=> (not res!1732152) (not e!2617022))))

(assert (=> b!4215431 (= res!1732152 (isPrefix!4628 p!3001 input!3517))))

(declare-fun b!4215432 () Bool)

(assert (=> b!4215432 (= e!2617020 (contains!9590 (t!348333 rules!3967) rBis!178))))

(declare-fun b!4215433 () Bool)

(declare-fun e!2617011 () Bool)

(declare-fun tp!1289441 () Bool)

(assert (=> b!4215433 (= e!2617011 (and tp_is_empty!22315 tp!1289441))))

(assert (=> b!4215434 (= e!2617018 (and tp!1289448 tp!1289446))))

(declare-fun tp!1289450 () Bool)

(declare-fun b!4215435 () Bool)

(declare-fun e!2617009 () Bool)

(assert (=> b!4215435 (= e!2617004 (and tp!1289450 (inv!61004 (tag!8633 (rule!10893 tBis!41))) (inv!61007 (transformation!7769 (rule!10893 tBis!41))) e!2617009))))

(assert (=> b!4215436 (= e!2617010 (and tp!1289438 tp!1289435))))

(declare-fun b!4215437 () Bool)

(declare-fun res!1732157 () Bool)

(assert (=> b!4215437 (=> res!1732157 e!2617016)))

(assert (=> b!4215437 (= res!1732157 (or (and (is-Cons!46370 rules!3967) (is-Nil!46370 (t!348333 rules!3967))) (not (is-Cons!46370 rules!3967)) (= (h!51790 rules!3967) rBis!178)))))

(declare-fun b!4215438 () Bool)

(declare-fun res!1732162 () Bool)

(assert (=> b!4215438 (=> res!1732162 e!2617016)))

(assert (=> b!4215438 (= res!1732162 (not (= (++!11843 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4215439 () Bool)

(declare-fun e!2617003 () Bool)

(declare-fun tp!1289449 () Bool)

(assert (=> b!4215439 (= e!2617003 (and tp_is_empty!22315 tp!1289449))))

(declare-fun b!4215440 () Bool)

(declare-fun Unit!65510 () Unit!65508)

(assert (=> b!4215440 (= e!2617024 Unit!65510)))

(declare-fun b!4215441 () Bool)

(declare-fun res!1732155 () Bool)

(assert (=> b!4215441 (=> res!1732155 e!2617016)))

(assert (=> b!4215441 (= res!1732155 (not (= (list!16772 (charsOf!5192 tBis!41)) pBis!121)))))

(assert (=> b!4215442 (= e!2617009 (and tp!1289445 tp!1289436))))

(declare-fun b!4215443 () Bool)

(declare-fun Unit!65511 () Unit!65508)

(assert (=> b!4215443 (= e!2617024 Unit!65511)))

(declare-fun lt!1500242 () Unit!65508)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!627 (LexerInterface!7364 Rule!15338 List!46494 List!46493) Unit!65508)

(assert (=> b!4215443 (= lt!1500242 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!627 thiss!26544 rBis!178 (t!348333 rules!3967) input!3517))))

(assert (=> b!4215443 false))

(declare-fun res!1732167 () Bool)

(assert (=> start!402864 (=> (not res!1732167) (not e!2617022))))

(assert (=> start!402864 (= res!1732167 (is-Lexer!7362 thiss!26544))))

(assert (=> start!402864 e!2617022))

(declare-fun inv!61008 (Token!14240) Bool)

(assert (=> start!402864 (and (inv!61008 tBis!41) e!2617005)))

(assert (=> start!402864 true))

(assert (=> start!402864 e!2617017))

(assert (=> start!402864 e!2617025))

(assert (=> start!402864 e!2617006))

(assert (=> start!402864 e!2617003))

(assert (=> start!402864 (and (inv!61008 t!8364) e!2617013)))

(assert (=> start!402864 e!2617023))

(assert (=> start!402864 e!2617014))

(assert (=> start!402864 e!2617011))

(declare-fun b!4215444 () Bool)

(declare-fun res!1732168 () Bool)

(assert (=> b!4215444 (=> res!1732168 e!2617020)))

(assert (=> b!4215444 (= res!1732168 (isEmpty!27467 (t!348333 rules!3967)))))

(assert (= (and start!402864 res!1732167) b!4215414))

(assert (= (and b!4215414 res!1732164) b!4215431))

(assert (= (and b!4215431 res!1732152) b!4215430))

(assert (= (and b!4215430 res!1732163) b!4215423))

(assert (= (and b!4215423 res!1732159) b!4215413))

(assert (= (and b!4215413 res!1732153) b!4215425))

(assert (= (and b!4215425 res!1732166) b!4215422))

(assert (= (and b!4215422 res!1732161) b!4215416))

(assert (= (and b!4215416 res!1732169) b!4215417))

(assert (= (and b!4215417 (not res!1732165)) b!4215419))

(assert (= (and b!4215419 (not res!1732156)) b!4215441))

(assert (= (and b!4215441 (not res!1732155)) b!4215438))

(assert (= (and b!4215438 (not res!1732162)) b!4215437))

(assert (= (and b!4215437 (not res!1732157)) b!4215409))

(assert (= (and b!4215409 (not res!1732160)) b!4215410))

(assert (= (and b!4215410 c!717711) b!4215443))

(assert (= (and b!4215410 (not c!717711)) b!4215440))

(assert (= (and b!4215410 (not res!1732154)) b!4215429))

(assert (= (and b!4215429 (not res!1732158)) b!4215444))

(assert (= (and b!4215444 (not res!1732168)) b!4215432))

(assert (= b!4215435 b!4215442))

(assert (= b!4215427 b!4215435))

(assert (= start!402864 b!4215427))

(assert (= b!4215418 b!4215412))

(assert (= start!402864 b!4215418))

(assert (= (and start!402864 (is-Cons!46369 p!3001)) b!4215420))

(assert (= b!4215421 b!4215434))

(assert (= b!4215426 b!4215421))

(assert (= (and start!402864 (is-Cons!46370 rules!3967)) b!4215426))

(assert (= (and start!402864 (is-Cons!46369 input!3517)) b!4215439))

(assert (= b!4215424 b!4215436))

(assert (= b!4215411 b!4215424))

(assert (= start!402864 b!4215411))

(assert (= (and start!402864 (is-Cons!46369 pBis!121)) b!4215428))

(assert (= (and start!402864 (is-Cons!46369 suffix!1557)) b!4215415))

(assert (= (and start!402864 (is-Cons!46369 suffixBis!41)) b!4215433))

(declare-fun m!4803355 () Bool)

(assert (=> b!4215427 m!4803355))

(declare-fun m!4803357 () Bool)

(assert (=> b!4215414 m!4803357))

(declare-fun m!4803359 () Bool)

(assert (=> b!4215441 m!4803359))

(assert (=> b!4215441 m!4803359))

(declare-fun m!4803361 () Bool)

(assert (=> b!4215441 m!4803361))

(declare-fun m!4803363 () Bool)

(assert (=> b!4215432 m!4803363))

(declare-fun m!4803365 () Bool)

(assert (=> b!4215429 m!4803365))

(declare-fun m!4803367 () Bool)

(assert (=> b!4215431 m!4803367))

(declare-fun m!4803369 () Bool)

(assert (=> b!4215425 m!4803369))

(declare-fun m!4803371 () Bool)

(assert (=> start!402864 m!4803371))

(declare-fun m!4803373 () Bool)

(assert (=> start!402864 m!4803373))

(declare-fun m!4803375 () Bool)

(assert (=> b!4215444 m!4803375))

(declare-fun m!4803377 () Bool)

(assert (=> b!4215411 m!4803377))

(declare-fun m!4803379 () Bool)

(assert (=> b!4215418 m!4803379))

(declare-fun m!4803381 () Bool)

(assert (=> b!4215418 m!4803381))

(declare-fun m!4803383 () Bool)

(assert (=> b!4215430 m!4803383))

(declare-fun m!4803385 () Bool)

(assert (=> b!4215423 m!4803385))

(declare-fun m!4803387 () Bool)

(assert (=> b!4215422 m!4803387))

(declare-fun m!4803389 () Bool)

(assert (=> b!4215417 m!4803389))

(declare-fun m!4803391 () Bool)

(assert (=> b!4215417 m!4803391))

(declare-fun m!4803393 () Bool)

(assert (=> b!4215417 m!4803393))

(declare-fun m!4803395 () Bool)

(assert (=> b!4215410 m!4803395))

(declare-fun m!4803397 () Bool)

(assert (=> b!4215410 m!4803397))

(declare-fun m!4803399 () Bool)

(assert (=> b!4215410 m!4803399))

(declare-fun m!4803401 () Bool)

(assert (=> b!4215410 m!4803401))

(declare-fun m!4803403 () Bool)

(assert (=> b!4215410 m!4803403))

(declare-fun m!4803405 () Bool)

(assert (=> b!4215410 m!4803405))

(declare-fun m!4803407 () Bool)

(assert (=> b!4215410 m!4803407))

(declare-fun m!4803409 () Bool)

(assert (=> b!4215410 m!4803409))

(assert (=> b!4215410 m!4803403))

(declare-fun m!4803411 () Bool)

(assert (=> b!4215410 m!4803411))

(declare-fun m!4803413 () Bool)

(assert (=> b!4215410 m!4803413))

(declare-fun m!4803415 () Bool)

(assert (=> b!4215416 m!4803415))

(declare-fun m!4803417 () Bool)

(assert (=> b!4215443 m!4803417))

(declare-fun m!4803419 () Bool)

(assert (=> b!4215413 m!4803419))

(declare-fun m!4803421 () Bool)

(assert (=> b!4215409 m!4803421))

(declare-fun m!4803423 () Bool)

(assert (=> b!4215435 m!4803423))

(declare-fun m!4803425 () Bool)

(assert (=> b!4215435 m!4803425))

(declare-fun m!4803427 () Bool)

(assert (=> b!4215424 m!4803427))

(declare-fun m!4803429 () Bool)

(assert (=> b!4215424 m!4803429))

(declare-fun m!4803431 () Bool)

(assert (=> b!4215421 m!4803431))

(declare-fun m!4803433 () Bool)

(assert (=> b!4215421 m!4803433))

(declare-fun m!4803435 () Bool)

(assert (=> b!4215438 m!4803435))

(push 1)

(assert b_and!332059)

(assert (not b!4215417))

(assert (not b!4215444))

(assert b_and!332061)

(assert (not b_next!124335))

(assert (not b!4215421))

(assert (not b!4215422))

(assert (not b!4215415))

(assert (not b!4215420))

(assert (not b!4215414))

(assert (not b!4215424))

(assert (not b!4215423))

(assert b_and!332057)

(assert (not b_next!124327))

(assert (not b!4215428))

(assert (not b_next!124337))

(assert tp_is_empty!22315)

(assert (not b!4215443))

(assert (not b_next!124333))

(assert (not b!4215416))

(assert (not b_next!124325))

(assert (not b_next!124329))

(assert (not b!4215411))

(assert (not b!4215433))

(assert (not b!4215413))

(assert (not b!4215418))

(assert (not b!4215426))

(assert b_and!332055)

(assert (not b!4215432))

(assert (not b!4215430))

(assert (not b!4215409))

(assert (not b_next!124331))

(assert (not start!402864))

(assert b_and!332053)

(assert b_and!332067)

(assert (not b!4215435))

(assert (not b!4215410))

(assert (not b!4215431))

(assert (not b_next!124323))

(assert b_and!332063)

(assert (not b!4215429))

(assert (not b!4215438))

(assert (not b!4215441))

(assert (not b!4215427))

(assert b_and!332065)

(assert (not b!4215439))

(assert (not b!4215425))

(check-sat)

(pop 1)

(push 1)

(assert b_and!332057)

(assert (not b_next!124327))

(assert (not b_next!124337))

(assert (not b_next!124333))

(assert b_and!332059)

(assert b_and!332055)

(assert (not b_next!124331))

(assert b_and!332053)

(assert b_and!332067)

(assert b_and!332061)

(assert b_and!332065)

(assert (not b_next!124335))

(assert (not b_next!124325))

(assert (not b_next!124329))

(assert (not b_next!124323))

(assert b_and!332063)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4215563 () Bool)

(declare-fun e!2617117 () Bool)

(declare-fun tail!6790 (List!46493) List!46493)

(assert (=> b!4215563 (= e!2617117 (isPrefix!4628 (tail!6790 p!3001) (tail!6790 input!3517)))))

(declare-fun b!4215562 () Bool)

(declare-fun res!1732248 () Bool)

(assert (=> b!4215562 (=> (not res!1732248) (not e!2617117))))

(declare-fun head!8943 (List!46493) C!25542)

(assert (=> b!4215562 (= res!1732248 (= (head!8943 p!3001) (head!8943 input!3517)))))

(declare-fun d!1241849 () Bool)

(declare-fun e!2617118 () Bool)

(assert (=> d!1241849 e!2617118))

(declare-fun res!1732249 () Bool)

(assert (=> d!1241849 (=> res!1732249 e!2617118)))

(declare-fun lt!1500275 () Bool)

(assert (=> d!1241849 (= res!1732249 (not lt!1500275))))

(declare-fun e!2617119 () Bool)

(assert (=> d!1241849 (= lt!1500275 e!2617119)))

(declare-fun res!1732246 () Bool)

(assert (=> d!1241849 (=> res!1732246 e!2617119)))

(assert (=> d!1241849 (= res!1732246 (is-Nil!46369 p!3001))))

(assert (=> d!1241849 (= (isPrefix!4628 p!3001 input!3517) lt!1500275)))

(declare-fun b!4215561 () Bool)

(assert (=> b!4215561 (= e!2617119 e!2617117)))

(declare-fun res!1732247 () Bool)

(assert (=> b!4215561 (=> (not res!1732247) (not e!2617117))))

(assert (=> b!4215561 (= res!1732247 (not (is-Nil!46369 input!3517)))))

(declare-fun b!4215564 () Bool)

(declare-fun size!34052 (List!46493) Int)

(assert (=> b!4215564 (= e!2617118 (>= (size!34052 input!3517) (size!34052 p!3001)))))

(assert (= (and d!1241849 (not res!1732246)) b!4215561))

(assert (= (and b!4215561 res!1732247) b!4215562))

(assert (= (and b!4215562 res!1732248) b!4215563))

(assert (= (and d!1241849 (not res!1732249)) b!4215564))

(declare-fun m!4803519 () Bool)

(assert (=> b!4215563 m!4803519))

(declare-fun m!4803521 () Bool)

(assert (=> b!4215563 m!4803521))

(assert (=> b!4215563 m!4803519))

(assert (=> b!4215563 m!4803521))

(declare-fun m!4803523 () Bool)

(assert (=> b!4215563 m!4803523))

(declare-fun m!4803525 () Bool)

(assert (=> b!4215562 m!4803525))

(declare-fun m!4803527 () Bool)

(assert (=> b!4215562 m!4803527))

(declare-fun m!4803529 () Bool)

(assert (=> b!4215564 m!4803529))

(declare-fun m!4803531 () Bool)

(assert (=> b!4215564 m!4803531))

(assert (=> b!4215431 d!1241849))

(declare-fun b!4215583 () Bool)

(declare-fun e!2617128 () Option!9957)

(declare-fun lt!1500289 () Option!9957)

(declare-fun lt!1500288 () Option!9957)

(assert (=> b!4215583 (= e!2617128 (ite (and (is-None!9956 lt!1500289) (is-None!9956 lt!1500288)) None!9956 (ite (is-None!9956 lt!1500288) lt!1500289 (ite (is-None!9956 lt!1500289) lt!1500288 (ite (>= (size!34050 (_1!25184 (v!40836 lt!1500289))) (size!34050 (_1!25184 (v!40836 lt!1500288)))) lt!1500289 lt!1500288)))))))

(declare-fun call!293009 () Option!9957)

(assert (=> b!4215583 (= lt!1500289 call!293009)))

(assert (=> b!4215583 (= lt!1500288 (maxPrefix!4404 thiss!26544 (t!348333 (t!348333 rules!3967)) input!3517))))

(declare-fun b!4215585 () Bool)

(declare-fun res!1732266 () Bool)

(declare-fun e!2617127 () Bool)

(assert (=> b!4215585 (=> (not res!1732266) (not e!2617127))))

(declare-fun lt!1500290 () Option!9957)

(assert (=> b!4215585 (= res!1732266 (< (size!34052 (_2!25184 (get!15088 lt!1500290))) (size!34052 input!3517)))))

(declare-fun b!4215586 () Bool)

(declare-fun res!1732268 () Bool)

(assert (=> b!4215586 (=> (not res!1732268) (not e!2617127))))

(declare-fun apply!10694 (TokenValueInjection!15426 BalanceConc!27554) TokenValue!7999)

(declare-fun seqFromList!5754 (List!46493) BalanceConc!27554)

(assert (=> b!4215586 (= res!1732268 (= (value!241947 (_1!25184 (get!15088 lt!1500290))) (apply!10694 (transformation!7769 (rule!10893 (_1!25184 (get!15088 lt!1500290)))) (seqFromList!5754 (originalCharacters!8151 (_1!25184 (get!15088 lt!1500290)))))))))

(declare-fun b!4215587 () Bool)

(declare-fun res!1732270 () Bool)

(assert (=> b!4215587 (=> (not res!1732270) (not e!2617127))))

(assert (=> b!4215587 (= res!1732270 (= (++!11843 (list!16772 (charsOf!5192 (_1!25184 (get!15088 lt!1500290)))) (_2!25184 (get!15088 lt!1500290))) input!3517))))

(declare-fun b!4215588 () Bool)

(assert (=> b!4215588 (= e!2617127 (contains!9590 (t!348333 rules!3967) (rule!10893 (_1!25184 (get!15088 lt!1500290)))))))

(declare-fun b!4215589 () Bool)

(declare-fun res!1732267 () Bool)

(assert (=> b!4215589 (=> (not res!1732267) (not e!2617127))))

(assert (=> b!4215589 (= res!1732267 (= (list!16772 (charsOf!5192 (_1!25184 (get!15088 lt!1500290)))) (originalCharacters!8151 (_1!25184 (get!15088 lt!1500290)))))))

(declare-fun b!4215590 () Bool)

(assert (=> b!4215590 (= e!2617128 call!293009)))

(declare-fun b!4215591 () Bool)

(declare-fun e!2617126 () Bool)

(assert (=> b!4215591 (= e!2617126 e!2617127)))

(declare-fun res!1732264 () Bool)

(assert (=> b!4215591 (=> (not res!1732264) (not e!2617127))))

(declare-fun isDefined!7395 (Option!9957) Bool)

(assert (=> b!4215591 (= res!1732264 (isDefined!7395 lt!1500290))))

(declare-fun bm!293004 () Bool)

(assert (=> bm!293004 (= call!293009 (maxPrefixOneRule!3359 thiss!26544 (h!51790 (t!348333 rules!3967)) input!3517))))

(declare-fun d!1241851 () Bool)

(assert (=> d!1241851 e!2617126))

(declare-fun res!1732269 () Bool)

(assert (=> d!1241851 (=> res!1732269 e!2617126)))

(assert (=> d!1241851 (= res!1732269 (isEmpty!27466 lt!1500290))))

(assert (=> d!1241851 (= lt!1500290 e!2617128)))

(declare-fun c!717722 () Bool)

(assert (=> d!1241851 (= c!717722 (and (is-Cons!46370 (t!348333 rules!3967)) (is-Nil!46370 (t!348333 (t!348333 rules!3967)))))))

(declare-fun lt!1500287 () Unit!65508)

(declare-fun lt!1500286 () Unit!65508)

(assert (=> d!1241851 (= lt!1500287 lt!1500286)))

(assert (=> d!1241851 (isPrefix!4628 input!3517 input!3517)))

(assert (=> d!1241851 (= lt!1500286 (lemmaIsPrefixRefl!3045 input!3517 input!3517))))

(declare-fun rulesValidInductive!2885 (LexerInterface!7364 List!46494) Bool)

(assert (=> d!1241851 (rulesValidInductive!2885 thiss!26544 (t!348333 rules!3967))))

(assert (=> d!1241851 (= (maxPrefix!4404 thiss!26544 (t!348333 rules!3967) input!3517) lt!1500290)))

(declare-fun b!4215584 () Bool)

(declare-fun res!1732265 () Bool)

(assert (=> b!4215584 (=> (not res!1732265) (not e!2617127))))

(declare-fun matchR!6373 (Regex!12674 List!46493) Bool)

(assert (=> b!4215584 (= res!1732265 (matchR!6373 (regex!7769 (rule!10893 (_1!25184 (get!15088 lt!1500290)))) (list!16772 (charsOf!5192 (_1!25184 (get!15088 lt!1500290))))))))

(assert (= (and d!1241851 c!717722) b!4215590))

(assert (= (and d!1241851 (not c!717722)) b!4215583))

(assert (= (or b!4215590 b!4215583) bm!293004))

(assert (= (and d!1241851 (not res!1732269)) b!4215591))

(assert (= (and b!4215591 res!1732264) b!4215589))

(assert (= (and b!4215589 res!1732267) b!4215585))

(assert (= (and b!4215585 res!1732266) b!4215587))

(assert (= (and b!4215587 res!1732270) b!4215586))

(assert (= (and b!4215586 res!1732268) b!4215584))

(assert (= (and b!4215584 res!1732265) b!4215588))

(declare-fun m!4803533 () Bool)

(assert (=> bm!293004 m!4803533))

(declare-fun m!4803535 () Bool)

(assert (=> b!4215586 m!4803535))

(declare-fun m!4803537 () Bool)

(assert (=> b!4215586 m!4803537))

(assert (=> b!4215586 m!4803537))

(declare-fun m!4803539 () Bool)

(assert (=> b!4215586 m!4803539))

(assert (=> b!4215588 m!4803535))

(declare-fun m!4803541 () Bool)

(assert (=> b!4215588 m!4803541))

(declare-fun m!4803543 () Bool)

(assert (=> b!4215583 m!4803543))

(assert (=> b!4215587 m!4803535))

(declare-fun m!4803545 () Bool)

(assert (=> b!4215587 m!4803545))

(assert (=> b!4215587 m!4803545))

(declare-fun m!4803547 () Bool)

(assert (=> b!4215587 m!4803547))

(assert (=> b!4215587 m!4803547))

(declare-fun m!4803549 () Bool)

(assert (=> b!4215587 m!4803549))

(assert (=> b!4215584 m!4803535))

(assert (=> b!4215584 m!4803545))

(assert (=> b!4215584 m!4803545))

(assert (=> b!4215584 m!4803547))

(assert (=> b!4215584 m!4803547))

(declare-fun m!4803551 () Bool)

(assert (=> b!4215584 m!4803551))

(declare-fun m!4803553 () Bool)

(assert (=> d!1241851 m!4803553))

(assert (=> d!1241851 m!4803391))

(assert (=> d!1241851 m!4803393))

(declare-fun m!4803555 () Bool)

(assert (=> d!1241851 m!4803555))

(assert (=> b!4215585 m!4803535))

(declare-fun m!4803557 () Bool)

(assert (=> b!4215585 m!4803557))

(assert (=> b!4215585 m!4803529))

(assert (=> b!4215589 m!4803535))

(assert (=> b!4215589 m!4803545))

(assert (=> b!4215589 m!4803545))

(assert (=> b!4215589 m!4803547))

(declare-fun m!4803559 () Bool)

(assert (=> b!4215591 m!4803559))

(assert (=> b!4215410 d!1241851))

(declare-fun d!1241855 () Bool)

(declare-fun res!1732273 () Bool)

(declare-fun e!2617131 () Bool)

(assert (=> d!1241855 (=> (not res!1732273) (not e!2617131))))

(declare-fun rulesValid!3043 (LexerInterface!7364 List!46494) Bool)

(assert (=> d!1241855 (= res!1732273 (rulesValid!3043 thiss!26544 (t!348333 rules!3967)))))

(assert (=> d!1241855 (= (rulesInvariant!6575 thiss!26544 (t!348333 rules!3967)) e!2617131)))

(declare-fun b!4215594 () Bool)

(declare-datatypes ((List!46498 0))(
  ( (Nil!46374) (Cons!46374 (h!51794 String!53867) (t!348367 List!46498)) )
))
(declare-fun noDuplicateTag!3204 (LexerInterface!7364 List!46494 List!46498) Bool)

(assert (=> b!4215594 (= e!2617131 (noDuplicateTag!3204 thiss!26544 (t!348333 rules!3967) Nil!46374))))

(assert (= (and d!1241855 res!1732273) b!4215594))

(declare-fun m!4803561 () Bool)

(assert (=> d!1241855 m!4803561))

(declare-fun m!4803563 () Bool)

(assert (=> b!4215594 m!4803563))

(assert (=> b!4215410 d!1241855))

(declare-fun b!4215597 () Bool)

(declare-fun e!2617132 () Bool)

(assert (=> b!4215597 (= e!2617132 (isPrefix!4628 (tail!6790 lt!1500241) (tail!6790 lt!1500239)))))

(declare-fun b!4215596 () Bool)

(declare-fun res!1732276 () Bool)

(assert (=> b!4215596 (=> (not res!1732276) (not e!2617132))))

(assert (=> b!4215596 (= res!1732276 (= (head!8943 lt!1500241) (head!8943 lt!1500239)))))

(declare-fun d!1241857 () Bool)

(declare-fun e!2617133 () Bool)

(assert (=> d!1241857 e!2617133))

(declare-fun res!1732277 () Bool)

(assert (=> d!1241857 (=> res!1732277 e!2617133)))

(declare-fun lt!1500291 () Bool)

(assert (=> d!1241857 (= res!1732277 (not lt!1500291))))

(declare-fun e!2617134 () Bool)

(assert (=> d!1241857 (= lt!1500291 e!2617134)))

(declare-fun res!1732274 () Bool)

(assert (=> d!1241857 (=> res!1732274 e!2617134)))

(assert (=> d!1241857 (= res!1732274 (is-Nil!46369 lt!1500241))))

(assert (=> d!1241857 (= (isPrefix!4628 lt!1500241 lt!1500239) lt!1500291)))

(declare-fun b!4215595 () Bool)

(assert (=> b!4215595 (= e!2617134 e!2617132)))

(declare-fun res!1732275 () Bool)

(assert (=> b!4215595 (=> (not res!1732275) (not e!2617132))))

(assert (=> b!4215595 (= res!1732275 (not (is-Nil!46369 lt!1500239)))))

(declare-fun b!4215598 () Bool)

(assert (=> b!4215598 (= e!2617133 (>= (size!34052 lt!1500239) (size!34052 lt!1500241)))))

(assert (= (and d!1241857 (not res!1732274)) b!4215595))

(assert (= (and b!4215595 res!1732275) b!4215596))

(assert (= (and b!4215596 res!1732276) b!4215597))

(assert (= (and d!1241857 (not res!1732277)) b!4215598))

(declare-fun m!4803565 () Bool)

(assert (=> b!4215597 m!4803565))

(declare-fun m!4803567 () Bool)

(assert (=> b!4215597 m!4803567))

(assert (=> b!4215597 m!4803565))

(assert (=> b!4215597 m!4803567))

(declare-fun m!4803569 () Bool)

(assert (=> b!4215597 m!4803569))

(declare-fun m!4803571 () Bool)

(assert (=> b!4215596 m!4803571))

(declare-fun m!4803573 () Bool)

(assert (=> b!4215596 m!4803573))

(declare-fun m!4803575 () Bool)

(assert (=> b!4215598 m!4803575))

(declare-fun m!4803577 () Bool)

(assert (=> b!4215598 m!4803577))

(assert (=> b!4215410 d!1241857))

(declare-fun d!1241859 () Bool)

(declare-fun list!16774 (Conc!13980) List!46493)

(assert (=> d!1241859 (= (list!16772 (charsOf!5192 (_1!25184 lt!1500234))) (list!16774 (c!717713 (charsOf!5192 (_1!25184 lt!1500234)))))))

(declare-fun bs!597508 () Bool)

(assert (= bs!597508 d!1241859))

(declare-fun m!4803579 () Bool)

(assert (=> bs!597508 m!4803579))

(assert (=> b!4215410 d!1241859))

(declare-fun d!1241861 () Bool)

(assert (=> d!1241861 (= (isEmpty!27466 lt!1500236) (not (is-Some!9956 lt!1500236)))))

(assert (=> b!4215410 d!1241861))

(declare-fun d!1241863 () Bool)

(assert (=> d!1241863 (rulesInvariant!6575 thiss!26544 (t!348333 rules!3967))))

(declare-fun lt!1500294 () Unit!65508)

(declare-fun choose!25825 (LexerInterface!7364 Rule!15338 List!46494) Unit!65508)

(assert (=> d!1241863 (= lt!1500294 (choose!25825 thiss!26544 (h!51790 rules!3967) (t!348333 rules!3967)))))

(assert (=> d!1241863 (rulesInvariant!6575 thiss!26544 (Cons!46370 (h!51790 rules!3967) (t!348333 rules!3967)))))

(assert (=> d!1241863 (= (lemmaInvariantOnRulesThenOnTail!859 thiss!26544 (h!51790 rules!3967) (t!348333 rules!3967)) lt!1500294)))

(declare-fun bs!597509 () Bool)

(assert (= bs!597509 d!1241863))

(assert (=> bs!597509 m!4803395))

(declare-fun m!4803587 () Bool)

(assert (=> bs!597509 m!4803587))

(declare-fun m!4803589 () Bool)

(assert (=> bs!597509 m!4803589))

(assert (=> b!4215410 d!1241863))

(declare-fun d!1241867 () Bool)

(assert (=> d!1241867 (= (get!15088 lt!1500236) (v!40836 lt!1500236))))

(assert (=> b!4215410 d!1241867))

(declare-fun d!1241869 () Bool)

(declare-fun lt!1500297 () BalanceConc!27554)

(assert (=> d!1241869 (= (list!16772 lt!1500297) (originalCharacters!8151 (_1!25184 lt!1500234)))))

(declare-fun dynLambda!19979 (Int TokenValue!7999) BalanceConc!27554)

(assert (=> d!1241869 (= lt!1500297 (dynLambda!19979 (toChars!10348 (transformation!7769 (rule!10893 (_1!25184 lt!1500234)))) (value!241947 (_1!25184 lt!1500234))))))

(assert (=> d!1241869 (= (charsOf!5192 (_1!25184 lt!1500234)) lt!1500297)))

(declare-fun b_lambda!124175 () Bool)

(assert (=> (not b_lambda!124175) (not d!1241869)))

(declare-fun t!348338 () Bool)

(declare-fun tb!253039 () Bool)

(assert (=> (and b!4215436 (= (toChars!10348 (transformation!7769 (rule!10893 t!8364))) (toChars!10348 (transformation!7769 (rule!10893 (_1!25184 lt!1500234))))) t!348338) tb!253039))

(declare-fun b!4215618 () Bool)

(declare-fun e!2617146 () Bool)

(declare-fun tp!1289515 () Bool)

(declare-fun inv!61011 (Conc!13980) Bool)

(assert (=> b!4215618 (= e!2617146 (and (inv!61011 (c!717713 (dynLambda!19979 (toChars!10348 (transformation!7769 (rule!10893 (_1!25184 lt!1500234)))) (value!241947 (_1!25184 lt!1500234))))) tp!1289515))))

(declare-fun result!308416 () Bool)

(declare-fun inv!61012 (BalanceConc!27554) Bool)

(assert (=> tb!253039 (= result!308416 (and (inv!61012 (dynLambda!19979 (toChars!10348 (transformation!7769 (rule!10893 (_1!25184 lt!1500234)))) (value!241947 (_1!25184 lt!1500234)))) e!2617146))))

(assert (= tb!253039 b!4215618))

(declare-fun m!4803591 () Bool)

(assert (=> b!4215618 m!4803591))

(declare-fun m!4803593 () Bool)

(assert (=> tb!253039 m!4803593))

(assert (=> d!1241869 t!348338))

(declare-fun b_and!332085 () Bool)

(assert (= b_and!332055 (and (=> t!348338 result!308416) b_and!332085)))

(declare-fun tb!253041 () Bool)

(declare-fun t!348340 () Bool)

(assert (=> (and b!4215412 (= (toChars!10348 (transformation!7769 rBis!178)) (toChars!10348 (transformation!7769 (rule!10893 (_1!25184 lt!1500234))))) t!348340) tb!253041))

(declare-fun result!308420 () Bool)

(assert (= result!308420 result!308416))

(assert (=> d!1241869 t!348340))

(declare-fun b_and!332087 () Bool)

(assert (= b_and!332059 (and (=> t!348340 result!308420) b_and!332087)))

(declare-fun tb!253043 () Bool)

(declare-fun t!348342 () Bool)

(assert (=> (and b!4215442 (= (toChars!10348 (transformation!7769 (rule!10893 tBis!41))) (toChars!10348 (transformation!7769 (rule!10893 (_1!25184 lt!1500234))))) t!348342) tb!253043))

(declare-fun result!308422 () Bool)

(assert (= result!308422 result!308416))

(assert (=> d!1241869 t!348342))

(declare-fun b_and!332089 () Bool)

(assert (= b_and!332063 (and (=> t!348342 result!308422) b_and!332089)))

(declare-fun tb!253045 () Bool)

(declare-fun t!348344 () Bool)

(assert (=> (and b!4215434 (= (toChars!10348 (transformation!7769 (h!51790 rules!3967))) (toChars!10348 (transformation!7769 (rule!10893 (_1!25184 lt!1500234))))) t!348344) tb!253045))

(declare-fun result!308424 () Bool)

(assert (= result!308424 result!308416))

(assert (=> d!1241869 t!348344))

(declare-fun b_and!332091 () Bool)

(assert (= b_and!332067 (and (=> t!348344 result!308424) b_and!332091)))

(declare-fun m!4803595 () Bool)

(assert (=> d!1241869 m!4803595))

(declare-fun m!4803597 () Bool)

(assert (=> d!1241869 m!4803597))

(assert (=> b!4215410 d!1241869))

(declare-fun b!4215630 () Bool)

(declare-fun e!2617155 () List!46493)

(assert (=> b!4215630 (= e!2617155 (_2!25184 lt!1500234))))

(declare-fun b!4215631 () Bool)

(assert (=> b!4215631 (= e!2617155 (Cons!46369 (h!51789 lt!1500241) (++!11843 (t!348332 lt!1500241) (_2!25184 lt!1500234))))))

(declare-fun d!1241873 () Bool)

(declare-fun e!2617154 () Bool)

(assert (=> d!1241873 e!2617154))

(declare-fun res!1732289 () Bool)

(assert (=> d!1241873 (=> (not res!1732289) (not e!2617154))))

(declare-fun lt!1500300 () List!46493)

(declare-fun content!7266 (List!46493) (Set C!25542))

(assert (=> d!1241873 (= res!1732289 (= (content!7266 lt!1500300) (set.union (content!7266 lt!1500241) (content!7266 (_2!25184 lt!1500234)))))))

(assert (=> d!1241873 (= lt!1500300 e!2617155)))

(declare-fun c!717731 () Bool)

(assert (=> d!1241873 (= c!717731 (is-Nil!46369 lt!1500241))))

(assert (=> d!1241873 (= (++!11843 lt!1500241 (_2!25184 lt!1500234)) lt!1500300)))

(declare-fun b!4215632 () Bool)

(declare-fun res!1732288 () Bool)

(assert (=> b!4215632 (=> (not res!1732288) (not e!2617154))))

(assert (=> b!4215632 (= res!1732288 (= (size!34052 lt!1500300) (+ (size!34052 lt!1500241) (size!34052 (_2!25184 lt!1500234)))))))

(declare-fun b!4215633 () Bool)

(assert (=> b!4215633 (= e!2617154 (or (not (= (_2!25184 lt!1500234) Nil!46369)) (= lt!1500300 lt!1500241)))))

(assert (= (and d!1241873 c!717731) b!4215630))

(assert (= (and d!1241873 (not c!717731)) b!4215631))

(assert (= (and d!1241873 res!1732289) b!4215632))

(assert (= (and b!4215632 res!1732288) b!4215633))

(declare-fun m!4803603 () Bool)

(assert (=> b!4215631 m!4803603))

(declare-fun m!4803605 () Bool)

(assert (=> d!1241873 m!4803605))

(declare-fun m!4803607 () Bool)

(assert (=> d!1241873 m!4803607))

(declare-fun m!4803609 () Bool)

(assert (=> d!1241873 m!4803609))

(declare-fun m!4803611 () Bool)

(assert (=> b!4215632 m!4803611))

(assert (=> b!4215632 m!4803577))

(declare-fun m!4803613 () Bool)

(assert (=> b!4215632 m!4803613))

(assert (=> b!4215410 d!1241873))

(declare-fun d!1241877 () Bool)

(assert (=> d!1241877 (isPrefix!4628 lt!1500241 (++!11843 lt!1500241 (_2!25184 lt!1500234)))))

(declare-fun lt!1500303 () Unit!65508)

(declare-fun choose!25826 (List!46493 List!46493) Unit!65508)

(assert (=> d!1241877 (= lt!1500303 (choose!25826 lt!1500241 (_2!25184 lt!1500234)))))

(assert (=> d!1241877 (= (lemmaConcatTwoListThenFirstIsPrefix!3083 lt!1500241 (_2!25184 lt!1500234)) lt!1500303)))

(declare-fun bs!597510 () Bool)

(assert (= bs!597510 d!1241877))

(assert (=> bs!597510 m!4803399))

(assert (=> bs!597510 m!4803399))

(declare-fun m!4803615 () Bool)

(assert (=> bs!597510 m!4803615))

(declare-fun m!4803617 () Bool)

(assert (=> bs!597510 m!4803617))

(assert (=> b!4215410 d!1241877))

(declare-fun b!4215644 () Bool)

(declare-fun e!2617163 () Bool)

(declare-fun inv!15 (TokenValue!7999) Bool)

(assert (=> b!4215644 (= e!2617163 (inv!15 (value!241947 t!8364)))))

(declare-fun b!4215645 () Bool)

(declare-fun e!2617164 () Bool)

(declare-fun inv!16 (TokenValue!7999) Bool)

(assert (=> b!4215645 (= e!2617164 (inv!16 (value!241947 t!8364)))))

(declare-fun d!1241879 () Bool)

(declare-fun c!717737 () Bool)

(assert (=> d!1241879 (= c!717737 (is-IntegerValue!23997 (value!241947 t!8364)))))

(assert (=> d!1241879 (= (inv!21 (value!241947 t!8364)) e!2617164)))

(declare-fun b!4215646 () Bool)

(declare-fun res!1732292 () Bool)

(assert (=> b!4215646 (=> res!1732292 e!2617163)))

(assert (=> b!4215646 (= res!1732292 (not (is-IntegerValue!23999 (value!241947 t!8364))))))

(declare-fun e!2617162 () Bool)

(assert (=> b!4215646 (= e!2617162 e!2617163)))

(declare-fun b!4215647 () Bool)

(assert (=> b!4215647 (= e!2617164 e!2617162)))

(declare-fun c!717736 () Bool)

(assert (=> b!4215647 (= c!717736 (is-IntegerValue!23998 (value!241947 t!8364)))))

(declare-fun b!4215648 () Bool)

(declare-fun inv!17 (TokenValue!7999) Bool)

(assert (=> b!4215648 (= e!2617162 (inv!17 (value!241947 t!8364)))))

(assert (= (and d!1241879 c!717737) b!4215645))

(assert (= (and d!1241879 (not c!717737)) b!4215647))

(assert (= (and b!4215647 c!717736) b!4215648))

(assert (= (and b!4215647 (not c!717736)) b!4215646))

(assert (= (and b!4215646 (not res!1732292)) b!4215644))

(declare-fun m!4803619 () Bool)

(assert (=> b!4215644 m!4803619))

(declare-fun m!4803621 () Bool)

(assert (=> b!4215645 m!4803621))

(declare-fun m!4803623 () Bool)

(assert (=> b!4215648 m!4803623))

(assert (=> b!4215411 d!1241879))

(declare-fun d!1241881 () Bool)

(declare-fun lt!1500308 () Bool)

(declare-fun content!7267 (List!46494) (Set Rule!15338))

(assert (=> d!1241881 (= lt!1500308 (set.member rBis!178 (content!7267 (t!348333 rules!3967))))))

(declare-fun e!2617176 () Bool)

(assert (=> d!1241881 (= lt!1500308 e!2617176)))

(declare-fun res!1732306 () Bool)

(assert (=> d!1241881 (=> (not res!1732306) (not e!2617176))))

(assert (=> d!1241881 (= res!1732306 (is-Cons!46370 (t!348333 rules!3967)))))

(assert (=> d!1241881 (= (contains!9590 (t!348333 rules!3967) rBis!178) lt!1500308)))

(declare-fun b!4215661 () Bool)

(declare-fun e!2617175 () Bool)

(assert (=> b!4215661 (= e!2617176 e!2617175)))

(declare-fun res!1732305 () Bool)

(assert (=> b!4215661 (=> res!1732305 e!2617175)))

(assert (=> b!4215661 (= res!1732305 (= (h!51790 (t!348333 rules!3967)) rBis!178))))

(declare-fun b!4215662 () Bool)

(assert (=> b!4215662 (= e!2617175 (contains!9590 (t!348333 (t!348333 rules!3967)) rBis!178))))

(assert (= (and d!1241881 res!1732306) b!4215661))

(assert (= (and b!4215661 (not res!1732305)) b!4215662))

(declare-fun m!4803625 () Bool)

(assert (=> d!1241881 m!4803625))

(declare-fun m!4803627 () Bool)

(assert (=> d!1241881 m!4803627))

(declare-fun m!4803629 () Bool)

(assert (=> b!4215662 m!4803629))

(assert (=> b!4215432 d!1241881))

(declare-fun b!4215665 () Bool)

(declare-fun e!2617177 () Bool)

(assert (=> b!4215665 (= e!2617177 (isPrefix!4628 (tail!6790 lt!1500241) (tail!6790 input!3517)))))

(declare-fun b!4215664 () Bool)

(declare-fun res!1732309 () Bool)

(assert (=> b!4215664 (=> (not res!1732309) (not e!2617177))))

(assert (=> b!4215664 (= res!1732309 (= (head!8943 lt!1500241) (head!8943 input!3517)))))

(declare-fun d!1241883 () Bool)

(declare-fun e!2617178 () Bool)

(assert (=> d!1241883 e!2617178))

(declare-fun res!1732310 () Bool)

(assert (=> d!1241883 (=> res!1732310 e!2617178)))

(declare-fun lt!1500309 () Bool)

(assert (=> d!1241883 (= res!1732310 (not lt!1500309))))

(declare-fun e!2617179 () Bool)

(assert (=> d!1241883 (= lt!1500309 e!2617179)))

(declare-fun res!1732307 () Bool)

(assert (=> d!1241883 (=> res!1732307 e!2617179)))

(assert (=> d!1241883 (= res!1732307 (is-Nil!46369 lt!1500241))))

(assert (=> d!1241883 (= (isPrefix!4628 lt!1500241 input!3517) lt!1500309)))

(declare-fun b!4215663 () Bool)

(assert (=> b!4215663 (= e!2617179 e!2617177)))

(declare-fun res!1732308 () Bool)

(assert (=> b!4215663 (=> (not res!1732308) (not e!2617177))))

(assert (=> b!4215663 (= res!1732308 (not (is-Nil!46369 input!3517)))))

(declare-fun b!4215666 () Bool)

(assert (=> b!4215666 (= e!2617178 (>= (size!34052 input!3517) (size!34052 lt!1500241)))))

(assert (= (and d!1241883 (not res!1732307)) b!4215663))

(assert (= (and b!4215663 res!1732308) b!4215664))

(assert (= (and b!4215664 res!1732309) b!4215665))

(assert (= (and d!1241883 (not res!1732310)) b!4215666))

(assert (=> b!4215665 m!4803565))

(assert (=> b!4215665 m!4803521))

(assert (=> b!4215665 m!4803565))

(assert (=> b!4215665 m!4803521))

(declare-fun m!4803631 () Bool)

(assert (=> b!4215665 m!4803631))

(assert (=> b!4215664 m!4803571))

(assert (=> b!4215664 m!4803527))

(assert (=> b!4215666 m!4803529))

(assert (=> b!4215666 m!4803577))

(assert (=> b!4215429 d!1241883))

(declare-fun b!4215689 () Bool)

(declare-fun res!1732330 () Bool)

(declare-fun e!2617193 () Bool)

(assert (=> b!4215689 (=> (not res!1732330) (not e!2617193))))

(declare-fun lt!1500323 () Option!9957)

(assert (=> b!4215689 (= res!1732330 (= (rule!10893 (_1!25184 (get!15088 lt!1500323))) (h!51790 rules!3967)))))

(declare-fun b!4215691 () Bool)

(declare-fun e!2617192 () Option!9957)

(assert (=> b!4215691 (= e!2617192 None!9956)))

(declare-fun b!4215692 () Bool)

(declare-fun res!1732329 () Bool)

(assert (=> b!4215692 (=> (not res!1732329) (not e!2617193))))

(assert (=> b!4215692 (= res!1732329 (= (value!241947 (_1!25184 (get!15088 lt!1500323))) (apply!10694 (transformation!7769 (rule!10893 (_1!25184 (get!15088 lt!1500323)))) (seqFromList!5754 (originalCharacters!8151 (_1!25184 (get!15088 lt!1500323)))))))))

(declare-fun b!4215693 () Bool)

(declare-datatypes ((tuple2!44104 0))(
  ( (tuple2!44105 (_1!25186 List!46493) (_2!25186 List!46493)) )
))
(declare-fun lt!1500322 () tuple2!44104)

(declare-fun size!34053 (BalanceConc!27554) Int)

(assert (=> b!4215693 (= e!2617192 (Some!9956 (tuple2!44101 (Token!14241 (apply!10694 (transformation!7769 (h!51790 rules!3967)) (seqFromList!5754 (_1!25186 lt!1500322))) (h!51790 rules!3967) (size!34053 (seqFromList!5754 (_1!25186 lt!1500322))) (_1!25186 lt!1500322)) (_2!25186 lt!1500322))))))

(declare-fun lt!1500325 () Unit!65508)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1627 (Regex!12674 List!46493) Unit!65508)

(assert (=> b!4215693 (= lt!1500325 (longestMatchIsAcceptedByMatchOrIsEmpty!1627 (regex!7769 (h!51790 rules!3967)) input!3517))))

(declare-fun res!1732331 () Bool)

(declare-fun isEmpty!27470 (List!46493) Bool)

(declare-fun findLongestMatchInner!1654 (Regex!12674 List!46493 Int List!46493 List!46493 Int) tuple2!44104)

(assert (=> b!4215693 (= res!1732331 (isEmpty!27470 (_1!25186 (findLongestMatchInner!1654 (regex!7769 (h!51790 rules!3967)) Nil!46369 (size!34052 Nil!46369) input!3517 input!3517 (size!34052 input!3517)))))))

(declare-fun e!2617191 () Bool)

(assert (=> b!4215693 (=> res!1732331 e!2617191)))

(assert (=> b!4215693 e!2617191))

(declare-fun lt!1500321 () Unit!65508)

(assert (=> b!4215693 (= lt!1500321 lt!1500325)))

(declare-fun lt!1500324 () Unit!65508)

(declare-fun lemmaSemiInverse!2495 (TokenValueInjection!15426 BalanceConc!27554) Unit!65508)

(assert (=> b!4215693 (= lt!1500324 (lemmaSemiInverse!2495 (transformation!7769 (h!51790 rules!3967)) (seqFromList!5754 (_1!25186 lt!1500322))))))

(declare-fun b!4215694 () Bool)

(assert (=> b!4215694 (= e!2617193 (= (size!34050 (_1!25184 (get!15088 lt!1500323))) (size!34052 (originalCharacters!8151 (_1!25184 (get!15088 lt!1500323))))))))

(declare-fun b!4215695 () Bool)

(assert (=> b!4215695 (= e!2617191 (matchR!6373 (regex!7769 (h!51790 rules!3967)) (_1!25186 (findLongestMatchInner!1654 (regex!7769 (h!51790 rules!3967)) Nil!46369 (size!34052 Nil!46369) input!3517 input!3517 (size!34052 input!3517)))))))

(declare-fun b!4215696 () Bool)

(declare-fun e!2617194 () Bool)

(assert (=> b!4215696 (= e!2617194 e!2617193)))

(declare-fun res!1732334 () Bool)

(assert (=> b!4215696 (=> (not res!1732334) (not e!2617193))))

(assert (=> b!4215696 (= res!1732334 (matchR!6373 (regex!7769 (h!51790 rules!3967)) (list!16772 (charsOf!5192 (_1!25184 (get!15088 lt!1500323))))))))

(declare-fun b!4215697 () Bool)

(declare-fun res!1732333 () Bool)

(assert (=> b!4215697 (=> (not res!1732333) (not e!2617193))))

(assert (=> b!4215697 (= res!1732333 (= (++!11843 (list!16772 (charsOf!5192 (_1!25184 (get!15088 lt!1500323)))) (_2!25184 (get!15088 lt!1500323))) input!3517))))

(declare-fun d!1241885 () Bool)

(assert (=> d!1241885 e!2617194))

(declare-fun res!1732335 () Bool)

(assert (=> d!1241885 (=> res!1732335 e!2617194)))

(assert (=> d!1241885 (= res!1732335 (isEmpty!27466 lt!1500323))))

(assert (=> d!1241885 (= lt!1500323 e!2617192)))

(declare-fun c!717740 () Bool)

(assert (=> d!1241885 (= c!717740 (isEmpty!27470 (_1!25186 lt!1500322)))))

(declare-fun findLongestMatch!1567 (Regex!12674 List!46493) tuple2!44104)

(assert (=> d!1241885 (= lt!1500322 (findLongestMatch!1567 (regex!7769 (h!51790 rules!3967)) input!3517))))

(assert (=> d!1241885 (ruleValid!3481 thiss!26544 (h!51790 rules!3967))))

(assert (=> d!1241885 (= (maxPrefixOneRule!3359 thiss!26544 (h!51790 rules!3967) input!3517) lt!1500323)))

(declare-fun b!4215690 () Bool)

(declare-fun res!1732332 () Bool)

(assert (=> b!4215690 (=> (not res!1732332) (not e!2617193))))

(assert (=> b!4215690 (= res!1732332 (< (size!34052 (_2!25184 (get!15088 lt!1500323))) (size!34052 input!3517)))))

(assert (= (and d!1241885 c!717740) b!4215691))

(assert (= (and d!1241885 (not c!717740)) b!4215693))

(assert (= (and b!4215693 (not res!1732331)) b!4215695))

(assert (= (and d!1241885 (not res!1732335)) b!4215696))

(assert (= (and b!4215696 res!1732334) b!4215697))

(assert (= (and b!4215697 res!1732333) b!4215690))

(assert (= (and b!4215690 res!1732332) b!4215689))

(assert (= (and b!4215689 res!1732330) b!4215692))

(assert (= (and b!4215692 res!1732329) b!4215694))

(declare-fun m!4803647 () Bool)

(assert (=> b!4215697 m!4803647))

(declare-fun m!4803649 () Bool)

(assert (=> b!4215697 m!4803649))

(assert (=> b!4215697 m!4803649))

(declare-fun m!4803651 () Bool)

(assert (=> b!4215697 m!4803651))

(assert (=> b!4215697 m!4803651))

(declare-fun m!4803653 () Bool)

(assert (=> b!4215697 m!4803653))

(declare-fun m!4803655 () Bool)

(assert (=> b!4215693 m!4803655))

(declare-fun m!4803657 () Bool)

(assert (=> b!4215693 m!4803657))

(declare-fun m!4803659 () Bool)

(assert (=> b!4215693 m!4803659))

(assert (=> b!4215693 m!4803659))

(declare-fun m!4803661 () Bool)

(assert (=> b!4215693 m!4803661))

(assert (=> b!4215693 m!4803659))

(declare-fun m!4803663 () Bool)

(assert (=> b!4215693 m!4803663))

(declare-fun m!4803665 () Bool)

(assert (=> b!4215693 m!4803665))

(assert (=> b!4215693 m!4803529))

(declare-fun m!4803667 () Bool)

(assert (=> b!4215693 m!4803667))

(assert (=> b!4215693 m!4803665))

(assert (=> b!4215693 m!4803659))

(declare-fun m!4803669 () Bool)

(assert (=> b!4215693 m!4803669))

(assert (=> b!4215693 m!4803529))

(declare-fun m!4803671 () Bool)

(assert (=> d!1241885 m!4803671))

(declare-fun m!4803673 () Bool)

(assert (=> d!1241885 m!4803673))

(declare-fun m!4803675 () Bool)

(assert (=> d!1241885 m!4803675))

(declare-fun m!4803677 () Bool)

(assert (=> d!1241885 m!4803677))

(assert (=> b!4215695 m!4803665))

(assert (=> b!4215695 m!4803529))

(assert (=> b!4215695 m!4803665))

(assert (=> b!4215695 m!4803529))

(assert (=> b!4215695 m!4803667))

(declare-fun m!4803679 () Bool)

(assert (=> b!4215695 m!4803679))

(assert (=> b!4215696 m!4803647))

(assert (=> b!4215696 m!4803649))

(assert (=> b!4215696 m!4803649))

(assert (=> b!4215696 m!4803651))

(assert (=> b!4215696 m!4803651))

(declare-fun m!4803681 () Bool)

(assert (=> b!4215696 m!4803681))

(assert (=> b!4215694 m!4803647))

(declare-fun m!4803683 () Bool)

(assert (=> b!4215694 m!4803683))

(assert (=> b!4215689 m!4803647))

(assert (=> b!4215692 m!4803647))

(declare-fun m!4803685 () Bool)

(assert (=> b!4215692 m!4803685))

(assert (=> b!4215692 m!4803685))

(declare-fun m!4803687 () Bool)

(assert (=> b!4215692 m!4803687))

(assert (=> b!4215690 m!4803647))

(declare-fun m!4803689 () Bool)

(assert (=> b!4215690 m!4803689))

(assert (=> b!4215690 m!4803529))

(assert (=> b!4215409 d!1241885))

(declare-fun b!4215700 () Bool)

(declare-fun e!2617195 () Bool)

(assert (=> b!4215700 (= e!2617195 (isPrefix!4628 (tail!6790 pBis!121) (tail!6790 input!3517)))))

(declare-fun b!4215699 () Bool)

(declare-fun res!1732338 () Bool)

(assert (=> b!4215699 (=> (not res!1732338) (not e!2617195))))

(assert (=> b!4215699 (= res!1732338 (= (head!8943 pBis!121) (head!8943 input!3517)))))

(declare-fun d!1241889 () Bool)

(declare-fun e!2617196 () Bool)

(assert (=> d!1241889 e!2617196))

(declare-fun res!1732339 () Bool)

(assert (=> d!1241889 (=> res!1732339 e!2617196)))

(declare-fun lt!1500326 () Bool)

(assert (=> d!1241889 (= res!1732339 (not lt!1500326))))

(declare-fun e!2617197 () Bool)

(assert (=> d!1241889 (= lt!1500326 e!2617197)))

(declare-fun res!1732336 () Bool)

(assert (=> d!1241889 (=> res!1732336 e!2617197)))

(assert (=> d!1241889 (= res!1732336 (is-Nil!46369 pBis!121))))

(assert (=> d!1241889 (= (isPrefix!4628 pBis!121 input!3517) lt!1500326)))

(declare-fun b!4215698 () Bool)

(assert (=> b!4215698 (= e!2617197 e!2617195)))

(declare-fun res!1732337 () Bool)

(assert (=> b!4215698 (=> (not res!1732337) (not e!2617195))))

(assert (=> b!4215698 (= res!1732337 (not (is-Nil!46369 input!3517)))))

(declare-fun b!4215701 () Bool)

(assert (=> b!4215701 (= e!2617196 (>= (size!34052 input!3517) (size!34052 pBis!121)))))

(assert (= (and d!1241889 (not res!1732336)) b!4215698))

(assert (= (and b!4215698 res!1732337) b!4215699))

(assert (= (and b!4215699 res!1732338) b!4215700))

(assert (= (and d!1241889 (not res!1732339)) b!4215701))

(declare-fun m!4803691 () Bool)

(assert (=> b!4215700 m!4803691))

(assert (=> b!4215700 m!4803521))

(assert (=> b!4215700 m!4803691))

(assert (=> b!4215700 m!4803521))

(declare-fun m!4803693 () Bool)

(assert (=> b!4215700 m!4803693))

(declare-fun m!4803695 () Bool)

(assert (=> b!4215699 m!4803695))

(assert (=> b!4215699 m!4803527))

(assert (=> b!4215701 m!4803529))

(declare-fun m!4803697 () Bool)

(assert (=> b!4215701 m!4803697))

(assert (=> b!4215430 d!1241889))

(declare-fun d!1241891 () Bool)

(declare-fun res!1732344 () Bool)

(declare-fun e!2617200 () Bool)

(assert (=> d!1241891 (=> (not res!1732344) (not e!2617200))))

(declare-fun validRegex!5752 (Regex!12674) Bool)

(assert (=> d!1241891 (= res!1732344 (validRegex!5752 (regex!7769 rBis!178)))))

(assert (=> d!1241891 (= (ruleValid!3481 thiss!26544 rBis!178) e!2617200)))

(declare-fun b!4215706 () Bool)

(declare-fun res!1732345 () Bool)

(assert (=> b!4215706 (=> (not res!1732345) (not e!2617200))))

(declare-fun nullable!4465 (Regex!12674) Bool)

(assert (=> b!4215706 (= res!1732345 (not (nullable!4465 (regex!7769 rBis!178))))))

(declare-fun b!4215707 () Bool)

(assert (=> b!4215707 (= e!2617200 (not (= (tag!8633 rBis!178) (String!53868 ""))))))

(assert (= (and d!1241891 res!1732344) b!4215706))

(assert (= (and b!4215706 res!1732345) b!4215707))

(declare-fun m!4803699 () Bool)

(assert (=> d!1241891 m!4803699))

(declare-fun m!4803701 () Bool)

(assert (=> b!4215706 m!4803701))

(assert (=> b!4215416 d!1241891))

(declare-fun b!4215708 () Bool)

(declare-fun res!1732347 () Bool)

(declare-fun e!2617203 () Bool)

(assert (=> b!4215708 (=> (not res!1732347) (not e!2617203))))

(declare-fun lt!1500329 () Option!9957)

(assert (=> b!4215708 (= res!1732347 (= (rule!10893 (_1!25184 (get!15088 lt!1500329))) rBis!178))))

(declare-fun b!4215710 () Bool)

(declare-fun e!2617202 () Option!9957)

(assert (=> b!4215710 (= e!2617202 None!9956)))

(declare-fun b!4215711 () Bool)

(declare-fun res!1732346 () Bool)

(assert (=> b!4215711 (=> (not res!1732346) (not e!2617203))))

(assert (=> b!4215711 (= res!1732346 (= (value!241947 (_1!25184 (get!15088 lt!1500329))) (apply!10694 (transformation!7769 (rule!10893 (_1!25184 (get!15088 lt!1500329)))) (seqFromList!5754 (originalCharacters!8151 (_1!25184 (get!15088 lt!1500329)))))))))

(declare-fun b!4215712 () Bool)

(declare-fun lt!1500328 () tuple2!44104)

(assert (=> b!4215712 (= e!2617202 (Some!9956 (tuple2!44101 (Token!14241 (apply!10694 (transformation!7769 rBis!178) (seqFromList!5754 (_1!25186 lt!1500328))) rBis!178 (size!34053 (seqFromList!5754 (_1!25186 lt!1500328))) (_1!25186 lt!1500328)) (_2!25186 lt!1500328))))))

(declare-fun lt!1500331 () Unit!65508)

(assert (=> b!4215712 (= lt!1500331 (longestMatchIsAcceptedByMatchOrIsEmpty!1627 (regex!7769 rBis!178) input!3517))))

(declare-fun res!1732348 () Bool)

(assert (=> b!4215712 (= res!1732348 (isEmpty!27470 (_1!25186 (findLongestMatchInner!1654 (regex!7769 rBis!178) Nil!46369 (size!34052 Nil!46369) input!3517 input!3517 (size!34052 input!3517)))))))

(declare-fun e!2617201 () Bool)

(assert (=> b!4215712 (=> res!1732348 e!2617201)))

(assert (=> b!4215712 e!2617201))

(declare-fun lt!1500327 () Unit!65508)

(assert (=> b!4215712 (= lt!1500327 lt!1500331)))

(declare-fun lt!1500330 () Unit!65508)

(assert (=> b!4215712 (= lt!1500330 (lemmaSemiInverse!2495 (transformation!7769 rBis!178) (seqFromList!5754 (_1!25186 lt!1500328))))))

(declare-fun b!4215713 () Bool)

(assert (=> b!4215713 (= e!2617203 (= (size!34050 (_1!25184 (get!15088 lt!1500329))) (size!34052 (originalCharacters!8151 (_1!25184 (get!15088 lt!1500329))))))))

(declare-fun b!4215714 () Bool)

(assert (=> b!4215714 (= e!2617201 (matchR!6373 (regex!7769 rBis!178) (_1!25186 (findLongestMatchInner!1654 (regex!7769 rBis!178) Nil!46369 (size!34052 Nil!46369) input!3517 input!3517 (size!34052 input!3517)))))))

(declare-fun b!4215715 () Bool)

(declare-fun e!2617204 () Bool)

(assert (=> b!4215715 (= e!2617204 e!2617203)))

(declare-fun res!1732351 () Bool)

(assert (=> b!4215715 (=> (not res!1732351) (not e!2617203))))

(assert (=> b!4215715 (= res!1732351 (matchR!6373 (regex!7769 rBis!178) (list!16772 (charsOf!5192 (_1!25184 (get!15088 lt!1500329))))))))

(declare-fun b!4215716 () Bool)

(declare-fun res!1732350 () Bool)

(assert (=> b!4215716 (=> (not res!1732350) (not e!2617203))))

(assert (=> b!4215716 (= res!1732350 (= (++!11843 (list!16772 (charsOf!5192 (_1!25184 (get!15088 lt!1500329)))) (_2!25184 (get!15088 lt!1500329))) input!3517))))

(declare-fun d!1241893 () Bool)

(assert (=> d!1241893 e!2617204))

(declare-fun res!1732352 () Bool)

(assert (=> d!1241893 (=> res!1732352 e!2617204)))

(assert (=> d!1241893 (= res!1732352 (isEmpty!27466 lt!1500329))))

(assert (=> d!1241893 (= lt!1500329 e!2617202)))

(declare-fun c!717741 () Bool)

(assert (=> d!1241893 (= c!717741 (isEmpty!27470 (_1!25186 lt!1500328)))))

(assert (=> d!1241893 (= lt!1500328 (findLongestMatch!1567 (regex!7769 rBis!178) input!3517))))

(assert (=> d!1241893 (ruleValid!3481 thiss!26544 rBis!178)))

(assert (=> d!1241893 (= (maxPrefixOneRule!3359 thiss!26544 rBis!178 input!3517) lt!1500329)))

(declare-fun b!4215709 () Bool)

(declare-fun res!1732349 () Bool)

(assert (=> b!4215709 (=> (not res!1732349) (not e!2617203))))

(assert (=> b!4215709 (= res!1732349 (< (size!34052 (_2!25184 (get!15088 lt!1500329))) (size!34052 input!3517)))))

(assert (= (and d!1241893 c!717741) b!4215710))

(assert (= (and d!1241893 (not c!717741)) b!4215712))

(assert (= (and b!4215712 (not res!1732348)) b!4215714))

(assert (= (and d!1241893 (not res!1732352)) b!4215715))

(assert (= (and b!4215715 res!1732351) b!4215716))

(assert (= (and b!4215716 res!1732350) b!4215709))

(assert (= (and b!4215709 res!1732349) b!4215708))

(assert (= (and b!4215708 res!1732347) b!4215711))

(assert (= (and b!4215711 res!1732346) b!4215713))

(declare-fun m!4803703 () Bool)

(assert (=> b!4215716 m!4803703))

(declare-fun m!4803705 () Bool)

(assert (=> b!4215716 m!4803705))

(assert (=> b!4215716 m!4803705))

(declare-fun m!4803707 () Bool)

(assert (=> b!4215716 m!4803707))

(assert (=> b!4215716 m!4803707))

(declare-fun m!4803709 () Bool)

(assert (=> b!4215716 m!4803709))

(declare-fun m!4803711 () Bool)

(assert (=> b!4215712 m!4803711))

(declare-fun m!4803713 () Bool)

(assert (=> b!4215712 m!4803713))

(declare-fun m!4803715 () Bool)

(assert (=> b!4215712 m!4803715))

(assert (=> b!4215712 m!4803715))

(declare-fun m!4803717 () Bool)

(assert (=> b!4215712 m!4803717))

(assert (=> b!4215712 m!4803715))

(declare-fun m!4803719 () Bool)

(assert (=> b!4215712 m!4803719))

(assert (=> b!4215712 m!4803665))

(assert (=> b!4215712 m!4803529))

(declare-fun m!4803721 () Bool)

(assert (=> b!4215712 m!4803721))

(assert (=> b!4215712 m!4803665))

(assert (=> b!4215712 m!4803715))

(declare-fun m!4803723 () Bool)

(assert (=> b!4215712 m!4803723))

(assert (=> b!4215712 m!4803529))

(declare-fun m!4803725 () Bool)

(assert (=> d!1241893 m!4803725))

(declare-fun m!4803727 () Bool)

(assert (=> d!1241893 m!4803727))

(declare-fun m!4803729 () Bool)

(assert (=> d!1241893 m!4803729))

(assert (=> d!1241893 m!4803415))

(assert (=> b!4215714 m!4803665))

(assert (=> b!4215714 m!4803529))

(assert (=> b!4215714 m!4803665))

(assert (=> b!4215714 m!4803529))

(assert (=> b!4215714 m!4803721))

(declare-fun m!4803731 () Bool)

(assert (=> b!4215714 m!4803731))

(assert (=> b!4215715 m!4803703))

(assert (=> b!4215715 m!4803705))

(assert (=> b!4215715 m!4803705))

(assert (=> b!4215715 m!4803707))

(assert (=> b!4215715 m!4803707))

(declare-fun m!4803733 () Bool)

(assert (=> b!4215715 m!4803733))

(assert (=> b!4215713 m!4803703))

(declare-fun m!4803735 () Bool)

(assert (=> b!4215713 m!4803735))

(assert (=> b!4215708 m!4803703))

(assert (=> b!4215711 m!4803703))

(declare-fun m!4803737 () Bool)

(assert (=> b!4215711 m!4803737))

(assert (=> b!4215711 m!4803737))

(declare-fun m!4803739 () Bool)

(assert (=> b!4215711 m!4803739))

(assert (=> b!4215709 m!4803703))

(declare-fun m!4803741 () Bool)

(assert (=> b!4215709 m!4803741))

(assert (=> b!4215709 m!4803529))

(assert (=> b!4215417 d!1241893))

(declare-fun b!4215719 () Bool)

(declare-fun e!2617205 () Bool)

(assert (=> b!4215719 (= e!2617205 (isPrefix!4628 (tail!6790 input!3517) (tail!6790 input!3517)))))

(declare-fun b!4215718 () Bool)

(declare-fun res!1732355 () Bool)

(assert (=> b!4215718 (=> (not res!1732355) (not e!2617205))))

(assert (=> b!4215718 (= res!1732355 (= (head!8943 input!3517) (head!8943 input!3517)))))

(declare-fun d!1241895 () Bool)

(declare-fun e!2617206 () Bool)

(assert (=> d!1241895 e!2617206))

(declare-fun res!1732356 () Bool)

(assert (=> d!1241895 (=> res!1732356 e!2617206)))

(declare-fun lt!1500332 () Bool)

(assert (=> d!1241895 (= res!1732356 (not lt!1500332))))

(declare-fun e!2617207 () Bool)

(assert (=> d!1241895 (= lt!1500332 e!2617207)))

(declare-fun res!1732353 () Bool)

(assert (=> d!1241895 (=> res!1732353 e!2617207)))

(assert (=> d!1241895 (= res!1732353 (is-Nil!46369 input!3517))))

(assert (=> d!1241895 (= (isPrefix!4628 input!3517 input!3517) lt!1500332)))

(declare-fun b!4215717 () Bool)

(assert (=> b!4215717 (= e!2617207 e!2617205)))

(declare-fun res!1732354 () Bool)

(assert (=> b!4215717 (=> (not res!1732354) (not e!2617205))))

(assert (=> b!4215717 (= res!1732354 (not (is-Nil!46369 input!3517)))))

(declare-fun b!4215720 () Bool)

(assert (=> b!4215720 (= e!2617206 (>= (size!34052 input!3517) (size!34052 input!3517)))))

(assert (= (and d!1241895 (not res!1732353)) b!4215717))

(assert (= (and b!4215717 res!1732354) b!4215718))

(assert (= (and b!4215718 res!1732355) b!4215719))

(assert (= (and d!1241895 (not res!1732356)) b!4215720))

(assert (=> b!4215719 m!4803521))

(assert (=> b!4215719 m!4803521))

(assert (=> b!4215719 m!4803521))

(assert (=> b!4215719 m!4803521))

(declare-fun m!4803743 () Bool)

(assert (=> b!4215719 m!4803743))

(assert (=> b!4215718 m!4803527))

(assert (=> b!4215718 m!4803527))

(assert (=> b!4215720 m!4803529))

(assert (=> b!4215720 m!4803529))

(assert (=> b!4215417 d!1241895))

(declare-fun d!1241897 () Bool)

(assert (=> d!1241897 (isPrefix!4628 input!3517 input!3517)))

(declare-fun lt!1500335 () Unit!65508)

(declare-fun choose!25827 (List!46493 List!46493) Unit!65508)

(assert (=> d!1241897 (= lt!1500335 (choose!25827 input!3517 input!3517))))

(assert (=> d!1241897 (= (lemmaIsPrefixRefl!3045 input!3517 input!3517) lt!1500335)))

(declare-fun bs!597511 () Bool)

(assert (= bs!597511 d!1241897))

(assert (=> bs!597511 m!4803391))

(declare-fun m!4803745 () Bool)

(assert (=> bs!597511 m!4803745))

(assert (=> b!4215417 d!1241897))

(declare-fun b!4215721 () Bool)

(declare-fun e!2617209 () List!46493)

(assert (=> b!4215721 (= e!2617209 suffixBis!41)))

(declare-fun b!4215722 () Bool)

(assert (=> b!4215722 (= e!2617209 (Cons!46369 (h!51789 pBis!121) (++!11843 (t!348332 pBis!121) suffixBis!41)))))

(declare-fun d!1241899 () Bool)

(declare-fun e!2617208 () Bool)

(assert (=> d!1241899 e!2617208))

(declare-fun res!1732358 () Bool)

(assert (=> d!1241899 (=> (not res!1732358) (not e!2617208))))

(declare-fun lt!1500336 () List!46493)

(assert (=> d!1241899 (= res!1732358 (= (content!7266 lt!1500336) (set.union (content!7266 pBis!121) (content!7266 suffixBis!41))))))

(assert (=> d!1241899 (= lt!1500336 e!2617209)))

(declare-fun c!717742 () Bool)

(assert (=> d!1241899 (= c!717742 (is-Nil!46369 pBis!121))))

(assert (=> d!1241899 (= (++!11843 pBis!121 suffixBis!41) lt!1500336)))

(declare-fun b!4215723 () Bool)

(declare-fun res!1732357 () Bool)

(assert (=> b!4215723 (=> (not res!1732357) (not e!2617208))))

(assert (=> b!4215723 (= res!1732357 (= (size!34052 lt!1500336) (+ (size!34052 pBis!121) (size!34052 suffixBis!41))))))

(declare-fun b!4215724 () Bool)

(assert (=> b!4215724 (= e!2617208 (or (not (= suffixBis!41 Nil!46369)) (= lt!1500336 pBis!121)))))

(assert (= (and d!1241899 c!717742) b!4215721))

(assert (= (and d!1241899 (not c!717742)) b!4215722))

(assert (= (and d!1241899 res!1732358) b!4215723))

(assert (= (and b!4215723 res!1732357) b!4215724))

(declare-fun m!4803747 () Bool)

(assert (=> b!4215722 m!4803747))

(declare-fun m!4803749 () Bool)

(assert (=> d!1241899 m!4803749))

(declare-fun m!4803751 () Bool)

(assert (=> d!1241899 m!4803751))

(declare-fun m!4803753 () Bool)

(assert (=> d!1241899 m!4803753))

(declare-fun m!4803755 () Bool)

(assert (=> b!4215723 m!4803755))

(assert (=> b!4215723 m!4803697))

(declare-fun m!4803757 () Bool)

(assert (=> b!4215723 m!4803757))

(assert (=> b!4215438 d!1241899))

(declare-fun d!1241901 () Bool)

(declare-fun res!1732359 () Bool)

(declare-fun e!2617210 () Bool)

(assert (=> d!1241901 (=> (not res!1732359) (not e!2617210))))

(assert (=> d!1241901 (= res!1732359 (rulesValid!3043 thiss!26544 rules!3967))))

(assert (=> d!1241901 (= (rulesInvariant!6575 thiss!26544 rules!3967) e!2617210)))

(declare-fun b!4215725 () Bool)

(assert (=> b!4215725 (= e!2617210 (noDuplicateTag!3204 thiss!26544 rules!3967 Nil!46374))))

(assert (= (and d!1241901 res!1732359) b!4215725))

(declare-fun m!4803759 () Bool)

(assert (=> d!1241901 m!4803759))

(declare-fun m!4803761 () Bool)

(assert (=> b!4215725 m!4803761))

(assert (=> b!4215413 d!1241901))

(declare-fun d!1241903 () Bool)

(assert (=> d!1241903 (= (inv!61004 (tag!8633 (rule!10893 tBis!41))) (= (mod (str.len (value!241946 (tag!8633 (rule!10893 tBis!41)))) 2) 0))))

(assert (=> b!4215435 d!1241903))

(declare-fun d!1241905 () Bool)

(declare-fun res!1732362 () Bool)

(declare-fun e!2617213 () Bool)

(assert (=> d!1241905 (=> (not res!1732362) (not e!2617213))))

(declare-fun semiInverseModEq!3375 (Int Int) Bool)

(assert (=> d!1241905 (= res!1732362 (semiInverseModEq!3375 (toChars!10348 (transformation!7769 (rule!10893 tBis!41))) (toValue!10489 (transformation!7769 (rule!10893 tBis!41)))))))

(assert (=> d!1241905 (= (inv!61007 (transformation!7769 (rule!10893 tBis!41))) e!2617213)))

(declare-fun b!4215728 () Bool)

(declare-fun equivClasses!3274 (Int Int) Bool)

(assert (=> b!4215728 (= e!2617213 (equivClasses!3274 (toChars!10348 (transformation!7769 (rule!10893 tBis!41))) (toValue!10489 (transformation!7769 (rule!10893 tBis!41)))))))

(assert (= (and d!1241905 res!1732362) b!4215728))

(declare-fun m!4803763 () Bool)

(assert (=> d!1241905 m!4803763))

(declare-fun m!4803765 () Bool)

(assert (=> b!4215728 m!4803765))

(assert (=> b!4215435 d!1241905))

(declare-fun b!4215729 () Bool)

(declare-fun e!2617215 () List!46493)

(assert (=> b!4215729 (= e!2617215 suffix!1557)))

(declare-fun b!4215730 () Bool)

(assert (=> b!4215730 (= e!2617215 (Cons!46369 (h!51789 p!3001) (++!11843 (t!348332 p!3001) suffix!1557)))))

(declare-fun d!1241907 () Bool)

(declare-fun e!2617214 () Bool)

(assert (=> d!1241907 e!2617214))

(declare-fun res!1732364 () Bool)

(assert (=> d!1241907 (=> (not res!1732364) (not e!2617214))))

(declare-fun lt!1500337 () List!46493)

(assert (=> d!1241907 (= res!1732364 (= (content!7266 lt!1500337) (set.union (content!7266 p!3001) (content!7266 suffix!1557))))))

(assert (=> d!1241907 (= lt!1500337 e!2617215)))

(declare-fun c!717743 () Bool)

(assert (=> d!1241907 (= c!717743 (is-Nil!46369 p!3001))))

(assert (=> d!1241907 (= (++!11843 p!3001 suffix!1557) lt!1500337)))

(declare-fun b!4215731 () Bool)

(declare-fun res!1732363 () Bool)

(assert (=> b!4215731 (=> (not res!1732363) (not e!2617214))))

(assert (=> b!4215731 (= res!1732363 (= (size!34052 lt!1500337) (+ (size!34052 p!3001) (size!34052 suffix!1557))))))

(declare-fun b!4215732 () Bool)

(assert (=> b!4215732 (= e!2617214 (or (not (= suffix!1557 Nil!46369)) (= lt!1500337 p!3001)))))

(assert (= (and d!1241907 c!717743) b!4215729))

(assert (= (and d!1241907 (not c!717743)) b!4215730))

(assert (= (and d!1241907 res!1732364) b!4215731))

(assert (= (and b!4215731 res!1732363) b!4215732))

(declare-fun m!4803767 () Bool)

(assert (=> b!4215730 m!4803767))

(declare-fun m!4803769 () Bool)

(assert (=> d!1241907 m!4803769))

(declare-fun m!4803771 () Bool)

(assert (=> d!1241907 m!4803771))

(declare-fun m!4803773 () Bool)

(assert (=> d!1241907 m!4803773))

(declare-fun m!4803775 () Bool)

(assert (=> b!4215731 m!4803775))

(assert (=> b!4215731 m!4803531))

(declare-fun m!4803777 () Bool)

(assert (=> b!4215731 m!4803777))

(assert (=> b!4215414 d!1241907))

(declare-fun d!1241909 () Bool)

(assert (=> d!1241909 (= (inv!61004 (tag!8633 (h!51790 rules!3967))) (= (mod (str.len (value!241946 (tag!8633 (h!51790 rules!3967)))) 2) 0))))

(assert (=> b!4215421 d!1241909))

(declare-fun d!1241911 () Bool)

(declare-fun res!1732365 () Bool)

(declare-fun e!2617216 () Bool)

(assert (=> d!1241911 (=> (not res!1732365) (not e!2617216))))

(assert (=> d!1241911 (= res!1732365 (semiInverseModEq!3375 (toChars!10348 (transformation!7769 (h!51790 rules!3967))) (toValue!10489 (transformation!7769 (h!51790 rules!3967)))))))

(assert (=> d!1241911 (= (inv!61007 (transformation!7769 (h!51790 rules!3967))) e!2617216)))

(declare-fun b!4215733 () Bool)

(assert (=> b!4215733 (= e!2617216 (equivClasses!3274 (toChars!10348 (transformation!7769 (h!51790 rules!3967))) (toValue!10489 (transformation!7769 (h!51790 rules!3967)))))))

(assert (= (and d!1241911 res!1732365) b!4215733))

(declare-fun m!4803779 () Bool)

(assert (=> d!1241911 m!4803779))

(declare-fun m!4803781 () Bool)

(assert (=> b!4215733 m!4803781))

(assert (=> b!4215421 d!1241911))

(declare-fun d!1241913 () Bool)

(assert (=> d!1241913 (isEmpty!27466 (maxPrefixOneRule!3359 thiss!26544 rBis!178 input!3517))))

(declare-fun lt!1500340 () Unit!65508)

(declare-fun choose!25828 (LexerInterface!7364 Rule!15338 List!46494 List!46493) Unit!65508)

(assert (=> d!1241913 (= lt!1500340 (choose!25828 thiss!26544 rBis!178 (t!348333 rules!3967) input!3517))))

(assert (=> d!1241913 (not (isEmpty!27467 (t!348333 rules!3967)))))

(assert (=> d!1241913 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!627 thiss!26544 rBis!178 (t!348333 rules!3967) input!3517) lt!1500340)))

(declare-fun bs!597512 () Bool)

(assert (= bs!597512 d!1241913))

(assert (=> bs!597512 m!4803389))

(assert (=> bs!597512 m!4803389))

(declare-fun m!4803783 () Bool)

(assert (=> bs!597512 m!4803783))

(declare-fun m!4803785 () Bool)

(assert (=> bs!597512 m!4803785))

(assert (=> bs!597512 m!4803375))

(assert (=> b!4215443 d!1241913))

(declare-fun b!4215734 () Bool)

(declare-fun e!2617219 () Option!9957)

(declare-fun lt!1500344 () Option!9957)

(declare-fun lt!1500343 () Option!9957)

(assert (=> b!4215734 (= e!2617219 (ite (and (is-None!9956 lt!1500344) (is-None!9956 lt!1500343)) None!9956 (ite (is-None!9956 lt!1500343) lt!1500344 (ite (is-None!9956 lt!1500344) lt!1500343 (ite (>= (size!34050 (_1!25184 (v!40836 lt!1500344))) (size!34050 (_1!25184 (v!40836 lt!1500343)))) lt!1500344 lt!1500343)))))))

(declare-fun call!293010 () Option!9957)

(assert (=> b!4215734 (= lt!1500344 call!293010)))

(assert (=> b!4215734 (= lt!1500343 (maxPrefix!4404 thiss!26544 (t!348333 rules!3967) input!3517))))

(declare-fun b!4215736 () Bool)

(declare-fun res!1732368 () Bool)

(declare-fun e!2617218 () Bool)

(assert (=> b!4215736 (=> (not res!1732368) (not e!2617218))))

(declare-fun lt!1500345 () Option!9957)

(assert (=> b!4215736 (= res!1732368 (< (size!34052 (_2!25184 (get!15088 lt!1500345))) (size!34052 input!3517)))))

(declare-fun b!4215737 () Bool)

(declare-fun res!1732370 () Bool)

(assert (=> b!4215737 (=> (not res!1732370) (not e!2617218))))

(assert (=> b!4215737 (= res!1732370 (= (value!241947 (_1!25184 (get!15088 lt!1500345))) (apply!10694 (transformation!7769 (rule!10893 (_1!25184 (get!15088 lt!1500345)))) (seqFromList!5754 (originalCharacters!8151 (_1!25184 (get!15088 lt!1500345)))))))))

(declare-fun b!4215738 () Bool)

(declare-fun res!1732372 () Bool)

(assert (=> b!4215738 (=> (not res!1732372) (not e!2617218))))

(assert (=> b!4215738 (= res!1732372 (= (++!11843 (list!16772 (charsOf!5192 (_1!25184 (get!15088 lt!1500345)))) (_2!25184 (get!15088 lt!1500345))) input!3517))))

(declare-fun b!4215739 () Bool)

(assert (=> b!4215739 (= e!2617218 (contains!9590 rules!3967 (rule!10893 (_1!25184 (get!15088 lt!1500345)))))))

(declare-fun b!4215740 () Bool)

(declare-fun res!1732369 () Bool)

(assert (=> b!4215740 (=> (not res!1732369) (not e!2617218))))

(assert (=> b!4215740 (= res!1732369 (= (list!16772 (charsOf!5192 (_1!25184 (get!15088 lt!1500345)))) (originalCharacters!8151 (_1!25184 (get!15088 lt!1500345)))))))

(declare-fun b!4215741 () Bool)

(assert (=> b!4215741 (= e!2617219 call!293010)))

(declare-fun b!4215742 () Bool)

(declare-fun e!2617217 () Bool)

(assert (=> b!4215742 (= e!2617217 e!2617218)))

(declare-fun res!1732366 () Bool)

(assert (=> b!4215742 (=> (not res!1732366) (not e!2617218))))

(assert (=> b!4215742 (= res!1732366 (isDefined!7395 lt!1500345))))

(declare-fun bm!293005 () Bool)

(assert (=> bm!293005 (= call!293010 (maxPrefixOneRule!3359 thiss!26544 (h!51790 rules!3967) input!3517))))

(declare-fun d!1241915 () Bool)

(assert (=> d!1241915 e!2617217))

(declare-fun res!1732371 () Bool)

(assert (=> d!1241915 (=> res!1732371 e!2617217)))

(assert (=> d!1241915 (= res!1732371 (isEmpty!27466 lt!1500345))))

(assert (=> d!1241915 (= lt!1500345 e!2617219)))

(declare-fun c!717744 () Bool)

(assert (=> d!1241915 (= c!717744 (and (is-Cons!46370 rules!3967) (is-Nil!46370 (t!348333 rules!3967))))))

(declare-fun lt!1500342 () Unit!65508)

(declare-fun lt!1500341 () Unit!65508)

(assert (=> d!1241915 (= lt!1500342 lt!1500341)))

(assert (=> d!1241915 (isPrefix!4628 input!3517 input!3517)))

(assert (=> d!1241915 (= lt!1500341 (lemmaIsPrefixRefl!3045 input!3517 input!3517))))

(assert (=> d!1241915 (rulesValidInductive!2885 thiss!26544 rules!3967)))

(assert (=> d!1241915 (= (maxPrefix!4404 thiss!26544 rules!3967 input!3517) lt!1500345)))

(declare-fun b!4215735 () Bool)

(declare-fun res!1732367 () Bool)

(assert (=> b!4215735 (=> (not res!1732367) (not e!2617218))))

(assert (=> b!4215735 (= res!1732367 (matchR!6373 (regex!7769 (rule!10893 (_1!25184 (get!15088 lt!1500345)))) (list!16772 (charsOf!5192 (_1!25184 (get!15088 lt!1500345))))))))

(assert (= (and d!1241915 c!717744) b!4215741))

(assert (= (and d!1241915 (not c!717744)) b!4215734))

(assert (= (or b!4215741 b!4215734) bm!293005))

(assert (= (and d!1241915 (not res!1732371)) b!4215742))

(assert (= (and b!4215742 res!1732366) b!4215740))

(assert (= (and b!4215740 res!1732369) b!4215736))

(assert (= (and b!4215736 res!1732368) b!4215738))

(assert (= (and b!4215738 res!1732372) b!4215737))

(assert (= (and b!4215737 res!1732370) b!4215735))

(assert (= (and b!4215735 res!1732367) b!4215739))

(assert (=> bm!293005 m!4803421))

(declare-fun m!4803787 () Bool)

(assert (=> b!4215737 m!4803787))

(declare-fun m!4803789 () Bool)

(assert (=> b!4215737 m!4803789))

(assert (=> b!4215737 m!4803789))

(declare-fun m!4803791 () Bool)

(assert (=> b!4215737 m!4803791))

(assert (=> b!4215739 m!4803787))

(declare-fun m!4803793 () Bool)

(assert (=> b!4215739 m!4803793))

(assert (=> b!4215734 m!4803413))

(assert (=> b!4215738 m!4803787))

(declare-fun m!4803795 () Bool)

(assert (=> b!4215738 m!4803795))

(assert (=> b!4215738 m!4803795))

(declare-fun m!4803797 () Bool)

(assert (=> b!4215738 m!4803797))

(assert (=> b!4215738 m!4803797))

(declare-fun m!4803799 () Bool)

(assert (=> b!4215738 m!4803799))

(assert (=> b!4215735 m!4803787))

(assert (=> b!4215735 m!4803795))

(assert (=> b!4215735 m!4803795))

(assert (=> b!4215735 m!4803797))

(assert (=> b!4215735 m!4803797))

(declare-fun m!4803801 () Bool)

(assert (=> b!4215735 m!4803801))

(declare-fun m!4803803 () Bool)

(assert (=> d!1241915 m!4803803))

(assert (=> d!1241915 m!4803391))

(assert (=> d!1241915 m!4803393))

(declare-fun m!4803805 () Bool)

(assert (=> d!1241915 m!4803805))

(assert (=> b!4215736 m!4803787))

(declare-fun m!4803807 () Bool)

(assert (=> b!4215736 m!4803807))

(assert (=> b!4215736 m!4803529))

(assert (=> b!4215740 m!4803787))

(assert (=> b!4215740 m!4803795))

(assert (=> b!4215740 m!4803795))

(assert (=> b!4215740 m!4803797))

(declare-fun m!4803809 () Bool)

(assert (=> b!4215742 m!4803809))

(assert (=> b!4215422 d!1241915))

(declare-fun d!1241917 () Bool)

(assert (=> d!1241917 (= (inv!61004 (tag!8633 rBis!178)) (= (mod (str.len (value!241946 (tag!8633 rBis!178))) 2) 0))))

(assert (=> b!4215418 d!1241917))

(declare-fun d!1241919 () Bool)

(declare-fun res!1732373 () Bool)

(declare-fun e!2617220 () Bool)

(assert (=> d!1241919 (=> (not res!1732373) (not e!2617220))))

(assert (=> d!1241919 (= res!1732373 (semiInverseModEq!3375 (toChars!10348 (transformation!7769 rBis!178)) (toValue!10489 (transformation!7769 rBis!178))))))

(assert (=> d!1241919 (= (inv!61007 (transformation!7769 rBis!178)) e!2617220)))

(declare-fun b!4215743 () Bool)

(assert (=> b!4215743 (= e!2617220 (equivClasses!3274 (toChars!10348 (transformation!7769 rBis!178)) (toValue!10489 (transformation!7769 rBis!178))))))

(assert (= (and d!1241919 res!1732373) b!4215743))

(declare-fun m!4803811 () Bool)

(assert (=> d!1241919 m!4803811))

(declare-fun m!4803813 () Bool)

(assert (=> b!4215743 m!4803813))

(assert (=> b!4215418 d!1241919))

(declare-fun d!1241921 () Bool)

(assert (=> d!1241921 (= (list!16772 (charsOf!5192 tBis!41)) (list!16774 (c!717713 (charsOf!5192 tBis!41))))))

(declare-fun bs!597513 () Bool)

(assert (= bs!597513 d!1241921))

(declare-fun m!4803815 () Bool)

(assert (=> bs!597513 m!4803815))

(assert (=> b!4215441 d!1241921))

(declare-fun d!1241923 () Bool)

(declare-fun lt!1500346 () BalanceConc!27554)

(assert (=> d!1241923 (= (list!16772 lt!1500346) (originalCharacters!8151 tBis!41))))

(assert (=> d!1241923 (= lt!1500346 (dynLambda!19979 (toChars!10348 (transformation!7769 (rule!10893 tBis!41))) (value!241947 tBis!41)))))

(assert (=> d!1241923 (= (charsOf!5192 tBis!41) lt!1500346)))

(declare-fun b_lambda!124177 () Bool)

(assert (=> (not b_lambda!124177) (not d!1241923)))

(declare-fun t!348346 () Bool)

(declare-fun tb!253047 () Bool)

(assert (=> (and b!4215436 (= (toChars!10348 (transformation!7769 (rule!10893 t!8364))) (toChars!10348 (transformation!7769 (rule!10893 tBis!41)))) t!348346) tb!253047))

(declare-fun b!4215744 () Bool)

(declare-fun e!2617221 () Bool)

(declare-fun tp!1289516 () Bool)

(assert (=> b!4215744 (= e!2617221 (and (inv!61011 (c!717713 (dynLambda!19979 (toChars!10348 (transformation!7769 (rule!10893 tBis!41))) (value!241947 tBis!41)))) tp!1289516))))

(declare-fun result!308426 () Bool)

(assert (=> tb!253047 (= result!308426 (and (inv!61012 (dynLambda!19979 (toChars!10348 (transformation!7769 (rule!10893 tBis!41))) (value!241947 tBis!41))) e!2617221))))

(assert (= tb!253047 b!4215744))

(declare-fun m!4803817 () Bool)

(assert (=> b!4215744 m!4803817))

(declare-fun m!4803819 () Bool)

(assert (=> tb!253047 m!4803819))

(assert (=> d!1241923 t!348346))

(declare-fun b_and!332093 () Bool)

(assert (= b_and!332085 (and (=> t!348346 result!308426) b_and!332093)))

(declare-fun t!348348 () Bool)

(declare-fun tb!253049 () Bool)

(assert (=> (and b!4215412 (= (toChars!10348 (transformation!7769 rBis!178)) (toChars!10348 (transformation!7769 (rule!10893 tBis!41)))) t!348348) tb!253049))

(declare-fun result!308428 () Bool)

(assert (= result!308428 result!308426))

(assert (=> d!1241923 t!348348))

(declare-fun b_and!332095 () Bool)

(assert (= b_and!332087 (and (=> t!348348 result!308428) b_and!332095)))

(declare-fun t!348350 () Bool)

(declare-fun tb!253051 () Bool)

(assert (=> (and b!4215442 (= (toChars!10348 (transformation!7769 (rule!10893 tBis!41))) (toChars!10348 (transformation!7769 (rule!10893 tBis!41)))) t!348350) tb!253051))

(declare-fun result!308430 () Bool)

(assert (= result!308430 result!308426))

(assert (=> d!1241923 t!348350))

(declare-fun b_and!332097 () Bool)

(assert (= b_and!332089 (and (=> t!348350 result!308430) b_and!332097)))

(declare-fun tb!253053 () Bool)

(declare-fun t!348352 () Bool)

(assert (=> (and b!4215434 (= (toChars!10348 (transformation!7769 (h!51790 rules!3967))) (toChars!10348 (transformation!7769 (rule!10893 tBis!41)))) t!348352) tb!253053))

(declare-fun result!308432 () Bool)

(assert (= result!308432 result!308426))

(assert (=> d!1241923 t!348352))

(declare-fun b_and!332099 () Bool)

(assert (= b_and!332091 (and (=> t!348352 result!308432) b_and!332099)))

(declare-fun m!4803821 () Bool)

(assert (=> d!1241923 m!4803821))

(declare-fun m!4803823 () Bool)

(assert (=> d!1241923 m!4803823))

(assert (=> b!4215441 d!1241923))

(declare-fun b!4215745 () Bool)

(declare-fun e!2617223 () Bool)

(assert (=> b!4215745 (= e!2617223 (inv!15 (value!241947 tBis!41)))))

(declare-fun b!4215746 () Bool)

(declare-fun e!2617224 () Bool)

(assert (=> b!4215746 (= e!2617224 (inv!16 (value!241947 tBis!41)))))

(declare-fun d!1241925 () Bool)

(declare-fun c!717746 () Bool)

(assert (=> d!1241925 (= c!717746 (is-IntegerValue!23997 (value!241947 tBis!41)))))

(assert (=> d!1241925 (= (inv!21 (value!241947 tBis!41)) e!2617224)))

(declare-fun b!4215747 () Bool)

(declare-fun res!1732374 () Bool)

(assert (=> b!4215747 (=> res!1732374 e!2617223)))

(assert (=> b!4215747 (= res!1732374 (not (is-IntegerValue!23999 (value!241947 tBis!41))))))

(declare-fun e!2617222 () Bool)

(assert (=> b!4215747 (= e!2617222 e!2617223)))

(declare-fun b!4215748 () Bool)

(assert (=> b!4215748 (= e!2617224 e!2617222)))

(declare-fun c!717745 () Bool)

(assert (=> b!4215748 (= c!717745 (is-IntegerValue!23998 (value!241947 tBis!41)))))

(declare-fun b!4215749 () Bool)

(assert (=> b!4215749 (= e!2617222 (inv!17 (value!241947 tBis!41)))))

(assert (= (and d!1241925 c!717746) b!4215746))

(assert (= (and d!1241925 (not c!717746)) b!4215748))

(assert (= (and b!4215748 c!717745) b!4215749))

(assert (= (and b!4215748 (not c!717745)) b!4215747))

(assert (= (and b!4215747 (not res!1732374)) b!4215745))

(declare-fun m!4803825 () Bool)

(assert (=> b!4215745 m!4803825))

(declare-fun m!4803827 () Bool)

(assert (=> b!4215746 m!4803827))

(declare-fun m!4803829 () Bool)

(assert (=> b!4215749 m!4803829))

(assert (=> b!4215427 d!1241925))

(declare-fun d!1241927 () Bool)

(assert (=> d!1241927 (= (isEmpty!27467 rules!3967) (is-Nil!46370 rules!3967))))

(assert (=> b!4215423 d!1241927))

(declare-fun d!1241929 () Bool)

(assert (=> d!1241929 (= (isEmpty!27467 (t!348333 rules!3967)) (is-Nil!46370 (t!348333 rules!3967)))))

(assert (=> b!4215444 d!1241929))

(declare-fun d!1241931 () Bool)

(declare-fun res!1732379 () Bool)

(declare-fun e!2617227 () Bool)

(assert (=> d!1241931 (=> (not res!1732379) (not e!2617227))))

(assert (=> d!1241931 (= res!1732379 (not (isEmpty!27470 (originalCharacters!8151 tBis!41))))))

(assert (=> d!1241931 (= (inv!61008 tBis!41) e!2617227)))

(declare-fun b!4215754 () Bool)

(declare-fun res!1732380 () Bool)

(assert (=> b!4215754 (=> (not res!1732380) (not e!2617227))))

(assert (=> b!4215754 (= res!1732380 (= (originalCharacters!8151 tBis!41) (list!16772 (dynLambda!19979 (toChars!10348 (transformation!7769 (rule!10893 tBis!41))) (value!241947 tBis!41)))))))

(declare-fun b!4215755 () Bool)

(assert (=> b!4215755 (= e!2617227 (= (size!34050 tBis!41) (size!34052 (originalCharacters!8151 tBis!41))))))

(assert (= (and d!1241931 res!1732379) b!4215754))

(assert (= (and b!4215754 res!1732380) b!4215755))

(declare-fun b_lambda!124179 () Bool)

(assert (=> (not b_lambda!124179) (not b!4215754)))

(assert (=> b!4215754 t!348346))

(declare-fun b_and!332101 () Bool)

(assert (= b_and!332093 (and (=> t!348346 result!308426) b_and!332101)))

(assert (=> b!4215754 t!348348))

(declare-fun b_and!332103 () Bool)

(assert (= b_and!332095 (and (=> t!348348 result!308428) b_and!332103)))

(assert (=> b!4215754 t!348350))

(declare-fun b_and!332105 () Bool)

(assert (= b_and!332097 (and (=> t!348350 result!308430) b_and!332105)))

(assert (=> b!4215754 t!348352))

(declare-fun b_and!332107 () Bool)

(assert (= b_and!332099 (and (=> t!348352 result!308432) b_and!332107)))

(declare-fun m!4803831 () Bool)

(assert (=> d!1241931 m!4803831))

(assert (=> b!4215754 m!4803823))

(assert (=> b!4215754 m!4803823))

(declare-fun m!4803833 () Bool)

(assert (=> b!4215754 m!4803833))

(declare-fun m!4803835 () Bool)

(assert (=> b!4215755 m!4803835))

(assert (=> start!402864 d!1241931))

(declare-fun d!1241933 () Bool)

(declare-fun res!1732381 () Bool)

(declare-fun e!2617228 () Bool)

(assert (=> d!1241933 (=> (not res!1732381) (not e!2617228))))

(assert (=> d!1241933 (= res!1732381 (not (isEmpty!27470 (originalCharacters!8151 t!8364))))))

(assert (=> d!1241933 (= (inv!61008 t!8364) e!2617228)))

(declare-fun b!4215756 () Bool)

(declare-fun res!1732382 () Bool)

(assert (=> b!4215756 (=> (not res!1732382) (not e!2617228))))

(assert (=> b!4215756 (= res!1732382 (= (originalCharacters!8151 t!8364) (list!16772 (dynLambda!19979 (toChars!10348 (transformation!7769 (rule!10893 t!8364))) (value!241947 t!8364)))))))

(declare-fun b!4215757 () Bool)

(assert (=> b!4215757 (= e!2617228 (= (size!34050 t!8364) (size!34052 (originalCharacters!8151 t!8364))))))

(assert (= (and d!1241933 res!1732381) b!4215756))

(assert (= (and b!4215756 res!1732382) b!4215757))

(declare-fun b_lambda!124181 () Bool)

(assert (=> (not b_lambda!124181) (not b!4215756)))

(declare-fun t!348354 () Bool)

(declare-fun tb!253055 () Bool)

(assert (=> (and b!4215436 (= (toChars!10348 (transformation!7769 (rule!10893 t!8364))) (toChars!10348 (transformation!7769 (rule!10893 t!8364)))) t!348354) tb!253055))

(declare-fun b!4215758 () Bool)

(declare-fun e!2617229 () Bool)

(declare-fun tp!1289517 () Bool)

(assert (=> b!4215758 (= e!2617229 (and (inv!61011 (c!717713 (dynLambda!19979 (toChars!10348 (transformation!7769 (rule!10893 t!8364))) (value!241947 t!8364)))) tp!1289517))))

(declare-fun result!308434 () Bool)

(assert (=> tb!253055 (= result!308434 (and (inv!61012 (dynLambda!19979 (toChars!10348 (transformation!7769 (rule!10893 t!8364))) (value!241947 t!8364))) e!2617229))))

(assert (= tb!253055 b!4215758))

(declare-fun m!4803837 () Bool)

(assert (=> b!4215758 m!4803837))

(declare-fun m!4803839 () Bool)

(assert (=> tb!253055 m!4803839))

(assert (=> b!4215756 t!348354))

(declare-fun b_and!332109 () Bool)

(assert (= b_and!332101 (and (=> t!348354 result!308434) b_and!332109)))

(declare-fun t!348356 () Bool)

(declare-fun tb!253057 () Bool)

(assert (=> (and b!4215412 (= (toChars!10348 (transformation!7769 rBis!178)) (toChars!10348 (transformation!7769 (rule!10893 t!8364)))) t!348356) tb!253057))

(declare-fun result!308436 () Bool)

(assert (= result!308436 result!308434))

(assert (=> b!4215756 t!348356))

(declare-fun b_and!332111 () Bool)

(assert (= b_and!332103 (and (=> t!348356 result!308436) b_and!332111)))

(declare-fun t!348358 () Bool)

(declare-fun tb!253059 () Bool)

(assert (=> (and b!4215442 (= (toChars!10348 (transformation!7769 (rule!10893 tBis!41))) (toChars!10348 (transformation!7769 (rule!10893 t!8364)))) t!348358) tb!253059))

(declare-fun result!308438 () Bool)

(assert (= result!308438 result!308434))

(assert (=> b!4215756 t!348358))

(declare-fun b_and!332113 () Bool)

(assert (= b_and!332105 (and (=> t!348358 result!308438) b_and!332113)))

(declare-fun tb!253061 () Bool)

(declare-fun t!348360 () Bool)

(assert (=> (and b!4215434 (= (toChars!10348 (transformation!7769 (h!51790 rules!3967))) (toChars!10348 (transformation!7769 (rule!10893 t!8364)))) t!348360) tb!253061))

(declare-fun result!308440 () Bool)

(assert (= result!308440 result!308434))

(assert (=> b!4215756 t!348360))

(declare-fun b_and!332115 () Bool)

(assert (= b_and!332107 (and (=> t!348360 result!308440) b_and!332115)))

(declare-fun m!4803841 () Bool)

(assert (=> d!1241933 m!4803841))

(declare-fun m!4803843 () Bool)

(assert (=> b!4215756 m!4803843))

(assert (=> b!4215756 m!4803843))

(declare-fun m!4803845 () Bool)

(assert (=> b!4215756 m!4803845))

(declare-fun m!4803847 () Bool)

(assert (=> b!4215757 m!4803847))

(assert (=> start!402864 d!1241933))

(declare-fun d!1241935 () Bool)

(assert (=> d!1241935 (= (inv!61004 (tag!8633 (rule!10893 t!8364))) (= (mod (str.len (value!241946 (tag!8633 (rule!10893 t!8364)))) 2) 0))))

(assert (=> b!4215424 d!1241935))

(declare-fun d!1241937 () Bool)

(declare-fun res!1732383 () Bool)

(declare-fun e!2617230 () Bool)

(assert (=> d!1241937 (=> (not res!1732383) (not e!2617230))))

(assert (=> d!1241937 (= res!1732383 (semiInverseModEq!3375 (toChars!10348 (transformation!7769 (rule!10893 t!8364))) (toValue!10489 (transformation!7769 (rule!10893 t!8364)))))))

(assert (=> d!1241937 (= (inv!61007 (transformation!7769 (rule!10893 t!8364))) e!2617230)))

(declare-fun b!4215759 () Bool)

(assert (=> b!4215759 (= e!2617230 (equivClasses!3274 (toChars!10348 (transformation!7769 (rule!10893 t!8364))) (toValue!10489 (transformation!7769 (rule!10893 t!8364)))))))

(assert (= (and d!1241937 res!1732383) b!4215759))

(declare-fun m!4803849 () Bool)

(assert (=> d!1241937 m!4803849))

(declare-fun m!4803851 () Bool)

(assert (=> b!4215759 m!4803851))

(assert (=> b!4215424 d!1241937))

(declare-fun d!1241939 () Bool)

(declare-fun lt!1500347 () Bool)

(assert (=> d!1241939 (= lt!1500347 (set.member rBis!178 (content!7267 rules!3967)))))

(declare-fun e!2617232 () Bool)

(assert (=> d!1241939 (= lt!1500347 e!2617232)))

(declare-fun res!1732385 () Bool)

(assert (=> d!1241939 (=> (not res!1732385) (not e!2617232))))

(assert (=> d!1241939 (= res!1732385 (is-Cons!46370 rules!3967))))

(assert (=> d!1241939 (= (contains!9590 rules!3967 rBis!178) lt!1500347)))

(declare-fun b!4215760 () Bool)

(declare-fun e!2617231 () Bool)

(assert (=> b!4215760 (= e!2617232 e!2617231)))

(declare-fun res!1732384 () Bool)

(assert (=> b!4215760 (=> res!1732384 e!2617231)))

(assert (=> b!4215760 (= res!1732384 (= (h!51790 rules!3967) rBis!178))))

(declare-fun b!4215761 () Bool)

(assert (=> b!4215761 (= e!2617231 (contains!9590 (t!348333 rules!3967) rBis!178))))

(assert (= (and d!1241939 res!1732385) b!4215760))

(assert (= (and b!4215760 (not res!1732384)) b!4215761))

(declare-fun m!4803853 () Bool)

(assert (=> d!1241939 m!4803853))

(declare-fun m!4803855 () Bool)

(assert (=> d!1241939 m!4803855))

(assert (=> b!4215761 m!4803363))

(assert (=> b!4215425 d!1241939))

(declare-fun b!4215766 () Bool)

(declare-fun e!2617235 () Bool)

(declare-fun tp!1289520 () Bool)

(assert (=> b!4215766 (= e!2617235 (and tp_is_empty!22315 tp!1289520))))

(assert (=> b!4215420 (= tp!1289437 e!2617235)))

(assert (= (and b!4215420 (is-Cons!46369 (t!348332 p!3001))) b!4215766))

(declare-fun b!4215777 () Bool)

(declare-fun e!2617238 () Bool)

(assert (=> b!4215777 (= e!2617238 tp_is_empty!22315)))

(declare-fun b!4215779 () Bool)

(declare-fun tp!1289535 () Bool)

(assert (=> b!4215779 (= e!2617238 tp!1289535)))

(declare-fun b!4215780 () Bool)

(declare-fun tp!1289533 () Bool)

(declare-fun tp!1289534 () Bool)

(assert (=> b!4215780 (= e!2617238 (and tp!1289533 tp!1289534))))

(assert (=> b!4215421 (= tp!1289444 e!2617238)))

(declare-fun b!4215778 () Bool)

(declare-fun tp!1289531 () Bool)

(declare-fun tp!1289532 () Bool)

(assert (=> b!4215778 (= e!2617238 (and tp!1289531 tp!1289532))))

(assert (= (and b!4215421 (is-ElementMatch!12674 (regex!7769 (h!51790 rules!3967)))) b!4215777))

(assert (= (and b!4215421 (is-Concat!20674 (regex!7769 (h!51790 rules!3967)))) b!4215778))

(assert (= (and b!4215421 (is-Star!12674 (regex!7769 (h!51790 rules!3967)))) b!4215779))

(assert (= (and b!4215421 (is-Union!12674 (regex!7769 (h!51790 rules!3967)))) b!4215780))

(declare-fun b!4215781 () Bool)

(declare-fun e!2617239 () Bool)

(declare-fun tp!1289536 () Bool)

(assert (=> b!4215781 (= e!2617239 (and tp_is_empty!22315 tp!1289536))))

(assert (=> b!4215411 (= tp!1289434 e!2617239)))

(assert (= (and b!4215411 (is-Cons!46369 (originalCharacters!8151 t!8364))) b!4215781))

(declare-fun b!4215782 () Bool)

(declare-fun e!2617240 () Bool)

(declare-fun tp!1289537 () Bool)

(assert (=> b!4215782 (= e!2617240 (and tp_is_empty!22315 tp!1289537))))

(assert (=> b!4215433 (= tp!1289441 e!2617240)))

(assert (= (and b!4215433 (is-Cons!46369 (t!348332 suffixBis!41))) b!4215782))

(declare-fun b!4215783 () Bool)

(declare-fun e!2617241 () Bool)

(declare-fun tp!1289538 () Bool)

(assert (=> b!4215783 (= e!2617241 (and tp_is_empty!22315 tp!1289538))))

(assert (=> b!4215439 (= tp!1289449 e!2617241)))

(assert (= (and b!4215439 (is-Cons!46369 (t!348332 input!3517))) b!4215783))

(declare-fun b!4215786 () Bool)

(declare-fun e!2617242 () Bool)

(declare-fun tp!1289539 () Bool)

(assert (=> b!4215786 (= e!2617242 (and tp_is_empty!22315 tp!1289539))))

(assert (=> b!4215428 (= tp!1289447 e!2617242)))

(assert (= (and b!4215428 (is-Cons!46369 (t!348332 pBis!121))) b!4215786))

(declare-fun b!4215787 () Bool)

(declare-fun e!2617243 () Bool)

(assert (=> b!4215787 (= e!2617243 tp_is_empty!22315)))

(declare-fun b!4215789 () Bool)

(declare-fun tp!1289544 () Bool)

(assert (=> b!4215789 (= e!2617243 tp!1289544)))

(declare-fun b!4215790 () Bool)

(declare-fun tp!1289542 () Bool)

(declare-fun tp!1289543 () Bool)

(assert (=> b!4215790 (= e!2617243 (and tp!1289542 tp!1289543))))

(assert (=> b!4215418 (= tp!1289443 e!2617243)))

(declare-fun b!4215788 () Bool)

(declare-fun tp!1289540 () Bool)

(declare-fun tp!1289541 () Bool)

(assert (=> b!4215788 (= e!2617243 (and tp!1289540 tp!1289541))))

(assert (= (and b!4215418 (is-ElementMatch!12674 (regex!7769 rBis!178))) b!4215787))

(assert (= (and b!4215418 (is-Concat!20674 (regex!7769 rBis!178))) b!4215788))

(assert (= (and b!4215418 (is-Star!12674 (regex!7769 rBis!178))) b!4215789))

(assert (= (and b!4215418 (is-Union!12674 (regex!7769 rBis!178))) b!4215790))

(declare-fun b!4215793 () Bool)

(declare-fun e!2617246 () Bool)

(declare-fun tp!1289545 () Bool)

(assert (=> b!4215793 (= e!2617246 (and tp_is_empty!22315 tp!1289545))))

(assert (=> b!4215415 (= tp!1289440 e!2617246)))

(assert (= (and b!4215415 (is-Cons!46369 (t!348332 suffix!1557))) b!4215793))

(declare-fun b!4215806 () Bool)

(declare-fun b_free!123651 () Bool)

(declare-fun b_next!124355 () Bool)

(assert (=> b!4215806 (= b_free!123651 (not b_next!124355))))

(declare-fun tp!1289556 () Bool)

(declare-fun b_and!332117 () Bool)

(assert (=> b!4215806 (= tp!1289556 b_and!332117)))

(declare-fun b_free!123653 () Bool)

(declare-fun b_next!124357 () Bool)

(assert (=> b!4215806 (= b_free!123653 (not b_next!124357))))

(declare-fun tb!253063 () Bool)

(declare-fun t!348362 () Bool)

(assert (=> (and b!4215806 (= (toChars!10348 (transformation!7769 (h!51790 (t!348333 rules!3967)))) (toChars!10348 (transformation!7769 (rule!10893 (_1!25184 lt!1500234))))) t!348362) tb!253063))

(declare-fun result!308448 () Bool)

(assert (= result!308448 result!308416))

(assert (=> d!1241869 t!348362))

(declare-fun t!348364 () Bool)

(declare-fun tb!253065 () Bool)

(assert (=> (and b!4215806 (= (toChars!10348 (transformation!7769 (h!51790 (t!348333 rules!3967)))) (toChars!10348 (transformation!7769 (rule!10893 tBis!41)))) t!348364) tb!253065))

(declare-fun result!308450 () Bool)

(assert (= result!308450 result!308426))

(assert (=> d!1241923 t!348364))

(assert (=> b!4215754 t!348364))

(declare-fun t!348366 () Bool)

(declare-fun tb!253067 () Bool)

(assert (=> (and b!4215806 (= (toChars!10348 (transformation!7769 (h!51790 (t!348333 rules!3967)))) (toChars!10348 (transformation!7769 (rule!10893 t!8364)))) t!348366) tb!253067))

(declare-fun result!308452 () Bool)

(assert (= result!308452 result!308434))

(assert (=> b!4215756 t!348366))

(declare-fun tp!1289557 () Bool)

(declare-fun b_and!332119 () Bool)

(assert (=> b!4215806 (= tp!1289557 (and (=> t!348362 result!308448) (=> t!348364 result!308450) (=> t!348366 result!308452) b_and!332119))))

(declare-fun e!2617257 () Bool)

(assert (=> b!4215806 (= e!2617257 (and tp!1289556 tp!1289557))))

(declare-fun b!4215805 () Bool)

(declare-fun e!2617260 () Bool)

(declare-fun tp!1289555 () Bool)

(assert (=> b!4215805 (= e!2617260 (and tp!1289555 (inv!61004 (tag!8633 (h!51790 (t!348333 rules!3967)))) (inv!61007 (transformation!7769 (h!51790 (t!348333 rules!3967)))) e!2617257))))

(declare-fun b!4215804 () Bool)

(declare-fun e!2617259 () Bool)

(declare-fun tp!1289554 () Bool)

(assert (=> b!4215804 (= e!2617259 (and e!2617260 tp!1289554))))

(assert (=> b!4215426 (= tp!1289451 e!2617259)))

(assert (= b!4215805 b!4215806))

(assert (= b!4215804 b!4215805))

(assert (= (and b!4215426 (is-Cons!46370 (t!348333 rules!3967))) b!4215804))

(declare-fun m!4803857 () Bool)

(assert (=> b!4215805 m!4803857))

(declare-fun m!4803859 () Bool)

(assert (=> b!4215805 m!4803859))

(declare-fun b!4215819 () Bool)

(declare-fun e!2617265 () Bool)

(declare-fun tp!1289558 () Bool)

(assert (=> b!4215819 (= e!2617265 (and tp_is_empty!22315 tp!1289558))))

(assert (=> b!4215427 (= tp!1289439 e!2617265)))

(assert (= (and b!4215427 (is-Cons!46369 (originalCharacters!8151 tBis!41))) b!4215819))

(declare-fun b!4215820 () Bool)

(declare-fun e!2617266 () Bool)

(assert (=> b!4215820 (= e!2617266 tp_is_empty!22315)))

(declare-fun b!4215822 () Bool)

(declare-fun tp!1289563 () Bool)

(assert (=> b!4215822 (= e!2617266 tp!1289563)))

(declare-fun b!4215823 () Bool)

(declare-fun tp!1289561 () Bool)

(declare-fun tp!1289562 () Bool)

(assert (=> b!4215823 (= e!2617266 (and tp!1289561 tp!1289562))))

(assert (=> b!4215435 (= tp!1289450 e!2617266)))

(declare-fun b!4215821 () Bool)

(declare-fun tp!1289559 () Bool)

(declare-fun tp!1289560 () Bool)

(assert (=> b!4215821 (= e!2617266 (and tp!1289559 tp!1289560))))

(assert (= (and b!4215435 (is-ElementMatch!12674 (regex!7769 (rule!10893 tBis!41)))) b!4215820))

(assert (= (and b!4215435 (is-Concat!20674 (regex!7769 (rule!10893 tBis!41)))) b!4215821))

(assert (= (and b!4215435 (is-Star!12674 (regex!7769 (rule!10893 tBis!41)))) b!4215822))

(assert (= (and b!4215435 (is-Union!12674 (regex!7769 (rule!10893 tBis!41)))) b!4215823))

(declare-fun b!4215824 () Bool)

(declare-fun e!2617267 () Bool)

(assert (=> b!4215824 (= e!2617267 tp_is_empty!22315)))

(declare-fun b!4215826 () Bool)

(declare-fun tp!1289568 () Bool)

(assert (=> b!4215826 (= e!2617267 tp!1289568)))

(declare-fun b!4215827 () Bool)

(declare-fun tp!1289566 () Bool)

(declare-fun tp!1289567 () Bool)

(assert (=> b!4215827 (= e!2617267 (and tp!1289566 tp!1289567))))

(assert (=> b!4215424 (= tp!1289433 e!2617267)))

(declare-fun b!4215825 () Bool)

(declare-fun tp!1289564 () Bool)

(declare-fun tp!1289565 () Bool)

(assert (=> b!4215825 (= e!2617267 (and tp!1289564 tp!1289565))))

(assert (= (and b!4215424 (is-ElementMatch!12674 (regex!7769 (rule!10893 t!8364)))) b!4215824))

(assert (= (and b!4215424 (is-Concat!20674 (regex!7769 (rule!10893 t!8364)))) b!4215825))

(assert (= (and b!4215424 (is-Star!12674 (regex!7769 (rule!10893 t!8364)))) b!4215826))

(assert (= (and b!4215424 (is-Union!12674 (regex!7769 (rule!10893 t!8364)))) b!4215827))

(declare-fun b_lambda!124183 () Bool)

(assert (= b_lambda!124181 (or (and b!4215412 b_free!123625 (= (toChars!10348 (transformation!7769 rBis!178)) (toChars!10348 (transformation!7769 (rule!10893 t!8364))))) (and b!4215442 b_free!123629 (= (toChars!10348 (transformation!7769 (rule!10893 tBis!41))) (toChars!10348 (transformation!7769 (rule!10893 t!8364))))) (and b!4215806 b_free!123653 (= (toChars!10348 (transformation!7769 (h!51790 (t!348333 rules!3967)))) (toChars!10348 (transformation!7769 (rule!10893 t!8364))))) (and b!4215434 b_free!123633 (= (toChars!10348 (transformation!7769 (h!51790 rules!3967))) (toChars!10348 (transformation!7769 (rule!10893 t!8364))))) (and b!4215436 b_free!123621) b_lambda!124183)))

(declare-fun b_lambda!124185 () Bool)

(assert (= b_lambda!124179 (or (and b!4215436 b_free!123621 (= (toChars!10348 (transformation!7769 (rule!10893 t!8364))) (toChars!10348 (transformation!7769 (rule!10893 tBis!41))))) (and b!4215442 b_free!123629) (and b!4215806 b_free!123653 (= (toChars!10348 (transformation!7769 (h!51790 (t!348333 rules!3967)))) (toChars!10348 (transformation!7769 (rule!10893 tBis!41))))) (and b!4215434 b_free!123633 (= (toChars!10348 (transformation!7769 (h!51790 rules!3967))) (toChars!10348 (transformation!7769 (rule!10893 tBis!41))))) (and b!4215412 b_free!123625 (= (toChars!10348 (transformation!7769 rBis!178)) (toChars!10348 (transformation!7769 (rule!10893 tBis!41))))) b_lambda!124185)))

(declare-fun b_lambda!124187 () Bool)

(assert (= b_lambda!124177 (or (and b!4215436 b_free!123621 (= (toChars!10348 (transformation!7769 (rule!10893 t!8364))) (toChars!10348 (transformation!7769 (rule!10893 tBis!41))))) (and b!4215442 b_free!123629) (and b!4215806 b_free!123653 (= (toChars!10348 (transformation!7769 (h!51790 (t!348333 rules!3967)))) (toChars!10348 (transformation!7769 (rule!10893 tBis!41))))) (and b!4215434 b_free!123633 (= (toChars!10348 (transformation!7769 (h!51790 rules!3967))) (toChars!10348 (transformation!7769 (rule!10893 tBis!41))))) (and b!4215412 b_free!123625 (= (toChars!10348 (transformation!7769 rBis!178)) (toChars!10348 (transformation!7769 (rule!10893 tBis!41))))) b_lambda!124187)))

(push 1)

(assert (not b!4215805))

(assert (not d!1241897))

(assert (not b!4215713))

(assert (not b!4215786))

(assert (not d!1241893))

(assert b_and!332117)

(assert (not b!4215719))

(assert (not b!4215591))

(assert (not b!4215694))

(assert (not b!4215788))

(assert (not d!1241863))

(assert (not d!1241919))

(assert (not b!4215598))

(assert (not b!4215562))

(assert (not b!4215701))

(assert (not tb!253055))

(assert (not d!1241851))

(assert (not b!4215564))

(assert (not b!4215588))

(assert b_and!332057)

(assert (not b_next!124327))

(assert (not b_next!124357))

(assert (not d!1241885))

(assert (not b_next!124337))

(assert tp_is_empty!22315)

(assert (not b!4215632))

(assert (not b!4215715))

(assert (not d!1241859))

(assert (not b!4215690))

(assert (not b!4215783))

(assert (not b_next!124333))

(assert (not b!4215589))

(assert (not b!4215739))

(assert (not b!4215736))

(assert (not b!4215826))

(assert (not b!4215720))

(assert (not b_next!124325))

(assert b_and!332119)

(assert (not d!1241907))

(assert (not b_next!124329))

(assert (not b!4215756))

(assert (not d!1241933))

(assert (not b!4215585))

(assert (not b!4215804))

(assert (not b!4215692))

(assert (not b!4215745))

(assert (not b_lambda!124175))

(assert (not tb!253047))

(assert (not b!4215734))

(assert (not d!1241881))

(assert (not b!4215631))

(assert (not b!4215725))

(assert (not b!4215563))

(assert (not b!4215782))

(assert (not d!1241901))

(assert (not b!4215761))

(assert (not b!4215664))

(assert b_and!332115)

(assert (not b!4215757))

(assert (not b!4215723))

(assert (not b!4215587))

(assert b_and!332109)

(assert (not b_lambda!124185))

(assert (not b!4215596))

(assert (not b!4215823))

(assert (not d!1241873))

(assert (not b!4215711))

(assert (not d!1241915))

(assert (not b!4215696))

(assert (not tb!253039))

(assert (not b_next!124331))

(assert (not b!4215755))

(assert (not b!4215708))

(assert (not b!4215781))

(assert (not d!1241923))

(assert (not b!4215733))

(assert b_and!332053)

(assert (not b!4215697))

(assert (not b!4215597))

(assert (not d!1241921))

(assert (not b!4215738))

(assert (not b!4215780))

(assert (not d!1241931))

(assert (not b!4215740))

(assert (not b!4215662))

(assert (not b!4215594))

(assert (not b!4215706))

(assert (not b!4215709))

(assert (not d!1241899))

(assert (not b!4215693))

(assert (not b!4215749))

(assert (not b!4215743))

(assert (not b!4215779))

(assert (not b_lambda!124187))

(assert (not b!4215722))

(assert (not d!1241869))

(assert (not b!4215718))

(assert (not d!1241905))

(assert (not b!4215758))

(assert (not b!4215699))

(assert (not bm!293004))

(assert (not b!4215583))

(assert (not b!4215825))

(assert (not b!4215821))

(assert (not d!1241939))

(assert (not b!4215712))

(assert (not b!4215586))

(assert (not b!4215618))

(assert (not b!4215714))

(assert (not b_next!124323))

(assert (not b!4215819))

(assert (not b!4215728))

(assert (not d!1241877))

(assert (not b!4215644))

(assert (not b!4215759))

(assert (not b!4215789))

(assert b_and!332061)

(assert (not b!4215689))

(assert (not b!4215731))

(assert (not d!1241855))

(assert (not b!4215584))

(assert (not b!4215754))

(assert (not b!4215822))

(assert b_and!332113)

(assert (not b!4215645))

(assert (not b!4215735))

(assert (not b!4215716))

(assert (not d!1241913))

(assert b_and!332065)

(assert (not b!4215737))

(assert (not b!4215827))

(assert (not b_lambda!124183))

(assert (not b!4215790))

(assert (not b!4215665))

(assert (not b!4215778))

(assert (not b!4215744))

(assert (not b!4215648))

(assert (not b_next!124335))

(assert (not b!4215742))

(assert (not b!4215730))

(assert (not b_next!124355))

(assert (not b!4215746))

(assert (not b!4215766))

(assert (not b!4215695))

(assert b_and!332111)

(assert (not d!1241937))

(assert (not d!1241891))

(assert (not d!1241911))

(assert (not b!4215666))

(assert (not b!4215700))

(assert (not bm!293005))

(assert (not b!4215793))

(check-sat)

(pop 1)

(push 1)

(assert b_and!332117)

(assert b_and!332057)

(assert (not b_next!124337))

(assert (not b_next!124333))

(assert b_and!332115)

(assert b_and!332109)

(assert (not b_next!124331))

(assert b_and!332053)

(assert (not b_next!124323))

(assert b_and!332061)

(assert b_and!332113)

(assert b_and!332065)

(assert b_and!332111)

(assert (not b_next!124327))

(assert (not b_next!124357))

(assert (not b_next!124325))

(assert b_and!332119)

(assert (not b_next!124329))

(assert (not b_next!124335))

(assert (not b_next!124355))

(check-sat)

(pop 1)

