; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!391890 () Bool)

(assert start!391890)

(declare-fun b!4129437 () Bool)

(declare-fun b_free!117059 () Bool)

(declare-fun b_next!117763 () Bool)

(assert (=> b!4129437 (= b_free!117059 (not b_next!117763))))

(declare-fun tp!1258370 () Bool)

(declare-fun b_and!319917 () Bool)

(assert (=> b!4129437 (= tp!1258370 b_and!319917)))

(declare-fun b_free!117061 () Bool)

(declare-fun b_next!117765 () Bool)

(assert (=> b!4129437 (= b_free!117061 (not b_next!117765))))

(declare-fun tp!1258372 () Bool)

(declare-fun b_and!319919 () Bool)

(assert (=> b!4129437 (= tp!1258372 b_and!319919)))

(declare-fun b!4129423 () Bool)

(declare-fun b_free!117063 () Bool)

(declare-fun b_next!117767 () Bool)

(assert (=> b!4129423 (= b_free!117063 (not b_next!117767))))

(declare-fun tp!1258368 () Bool)

(declare-fun b_and!319921 () Bool)

(assert (=> b!4129423 (= tp!1258368 b_and!319921)))

(declare-fun b_free!117065 () Bool)

(declare-fun b_next!117769 () Bool)

(assert (=> b!4129423 (= b_free!117065 (not b_next!117769))))

(declare-fun tp!1258365 () Bool)

(declare-fun b_and!319923 () Bool)

(assert (=> b!4129423 (= tp!1258365 b_and!319923)))

(declare-fun b!4129439 () Bool)

(declare-fun b_free!117067 () Bool)

(declare-fun b_next!117771 () Bool)

(assert (=> b!4129439 (= b_free!117067 (not b_next!117771))))

(declare-fun tp!1258369 () Bool)

(declare-fun b_and!319925 () Bool)

(assert (=> b!4129439 (= tp!1258369 b_and!319925)))

(declare-fun b_free!117069 () Bool)

(declare-fun b_next!117773 () Bool)

(assert (=> b!4129439 (= b_free!117069 (not b_next!117773))))

(declare-fun tp!1258373 () Bool)

(declare-fun b_and!319927 () Bool)

(assert (=> b!4129439 (= tp!1258373 b_and!319927)))

(declare-fun b!4129422 () Bool)

(declare-fun res!1688066 () Bool)

(declare-fun e!2562193 () Bool)

(assert (=> b!4129422 (=> (not res!1688066) (not e!2562193))))

(declare-datatypes ((List!44821 0))(
  ( (Nil!44697) (Cons!44697 (h!50117 (_ BitVec 16)) (t!341430 List!44821)) )
))
(declare-datatypes ((TokenValue!7546 0))(
  ( (FloatLiteralValue!15092 (text!53267 List!44821)) (TokenValueExt!7545 (__x!27309 Int)) (Broken!37730 (value!229034 List!44821)) (Object!7669) (End!7546) (Def!7546) (Underscore!7546) (Match!7546) (Else!7546) (Error!7546) (Case!7546) (If!7546) (Extends!7546) (Abstract!7546) (Class!7546) (Val!7546) (DelimiterValue!15092 (del!7606 List!44821)) (KeywordValue!7552 (value!229035 List!44821)) (CommentValue!15092 (value!229036 List!44821)) (WhitespaceValue!15092 (value!229037 List!44821)) (IndentationValue!7546 (value!229038 List!44821)) (String!51479) (Int32!7546) (Broken!37731 (value!229039 List!44821)) (Boolean!7547) (Unit!64030) (OperatorValue!7549 (op!7606 List!44821)) (IdentifierValue!15092 (value!229040 List!44821)) (IdentifierValue!15093 (value!229041 List!44821)) (WhitespaceValue!15093 (value!229042 List!44821)) (True!15092) (False!15092) (Broken!37732 (value!229043 List!44821)) (Broken!37733 (value!229044 List!44821)) (True!15093) (RightBrace!7546) (RightBracket!7546) (Colon!7546) (Null!7546) (Comma!7546) (LeftBracket!7546) (False!15093) (LeftBrace!7546) (ImaginaryLiteralValue!7546 (text!53268 List!44821)) (StringLiteralValue!22638 (value!229045 List!44821)) (EOFValue!7546 (value!229046 List!44821)) (IdentValue!7546 (value!229047 List!44821)) (DelimiterValue!15093 (value!229048 List!44821)) (DedentValue!7546 (value!229049 List!44821)) (NewLineValue!7546 (value!229050 List!44821)) (IntegerValue!22638 (value!229051 (_ BitVec 32)) (text!53269 List!44821)) (IntegerValue!22639 (value!229052 Int) (text!53270 List!44821)) (Times!7546) (Or!7546) (Equal!7546) (Minus!7546) (Broken!37734 (value!229053 List!44821)) (And!7546) (Div!7546) (LessEqual!7546) (Mod!7546) (Concat!19767) (Not!7546) (Plus!7546) (SpaceValue!7546 (value!229054 List!44821)) (IntegerValue!22640 (value!229055 Int) (text!53271 List!44821)) (StringLiteralValue!22639 (text!53272 List!44821)) (FloatLiteralValue!15093 (text!53273 List!44821)) (BytesLiteralValue!7546 (value!229056 List!44821)) (CommentValue!15093 (value!229057 List!44821)) (StringLiteralValue!22640 (value!229058 List!44821)) (ErrorTokenValue!7546 (msg!7607 List!44821)) )
))
(declare-datatypes ((C!24628 0))(
  ( (C!24629 (val!14424 Int)) )
))
(declare-datatypes ((List!44822 0))(
  ( (Nil!44698) (Cons!44698 (h!50118 C!24628) (t!341431 List!44822)) )
))
(declare-datatypes ((IArray!27059 0))(
  ( (IArray!27060 (innerList!13587 List!44822)) )
))
(declare-datatypes ((Conc!13527 0))(
  ( (Node!13527 (left!33471 Conc!13527) (right!33801 Conc!13527) (csize!27284 Int) (cheight!13738 Int)) (Leaf!20900 (xs!16833 IArray!27059) (csize!27285 Int)) (Empty!13527) )
))
(declare-datatypes ((BalanceConc!26648 0))(
  ( (BalanceConc!26649 (c!708634 Conc!13527)) )
))
(declare-datatypes ((Regex!12221 0))(
  ( (ElementMatch!12221 (c!708635 C!24628)) (Concat!19768 (regOne!24954 Regex!12221) (regTwo!24954 Regex!12221)) (EmptyExpr!12221) (Star!12221 (reg!12550 Regex!12221)) (EmptyLang!12221) (Union!12221 (regOne!24955 Regex!12221) (regTwo!24955 Regex!12221)) )
))
(declare-datatypes ((String!51480 0))(
  ( (String!51481 (value!229059 String)) )
))
(declare-datatypes ((TokenValueInjection!14520 0))(
  ( (TokenValueInjection!14521 (toValue!9976 Int) (toChars!9835 Int)) )
))
(declare-datatypes ((Rule!14432 0))(
  ( (Rule!14433 (regex!7316 Regex!12221) (tag!8176 String!51480) (isSeparator!7316 Bool) (transformation!7316 TokenValueInjection!14520)) )
))
(declare-datatypes ((List!44823 0))(
  ( (Nil!44699) (Cons!44699 (h!50119 Rule!14432) (t!341432 List!44823)) )
))
(declare-fun rules!3756 () List!44823)

(declare-fun r!4008 () Rule!14432)

(declare-fun contains!8992 (List!44823 Rule!14432) Bool)

(assert (=> b!4129422 (= res!1688066 (contains!8992 rules!3756 r!4008))))

(declare-fun e!2562181 () Bool)

(assert (=> b!4129423 (= e!2562181 (and tp!1258368 tp!1258365))))

(declare-fun b!4129424 () Bool)

(declare-fun res!1688067 () Bool)

(assert (=> b!4129424 (=> (not res!1688067) (not e!2562193))))

(declare-datatypes ((LexerInterface!6905 0))(
  ( (LexerInterfaceExt!6902 (__x!27310 Int)) (Lexer!6903) )
))
(declare-fun thiss!25645 () LexerInterface!6905)

(declare-fun rulesInvariant!6202 (LexerInterface!6905 List!44823) Bool)

(assert (=> b!4129424 (= res!1688067 (rulesInvariant!6202 thiss!25645 rules!3756))))

(declare-fun b!4129426 () Bool)

(declare-fun e!2562190 () Bool)

(declare-fun rBis!149 () Rule!14432)

(declare-fun validRegex!5498 (Regex!12221) Bool)

(assert (=> b!4129426 (= e!2562190 (validRegex!5498 (regex!7316 rBis!149)))))

(declare-fun tp!1258367 () Bool)

(declare-fun e!2562189 () Bool)

(declare-fun e!2562184 () Bool)

(declare-fun b!4129427 () Bool)

(declare-fun inv!59287 (String!51480) Bool)

(declare-fun inv!59289 (TokenValueInjection!14520) Bool)

(assert (=> b!4129427 (= e!2562189 (and tp!1258367 (inv!59287 (tag!8176 (h!50119 rules!3756))) (inv!59289 (transformation!7316 (h!50119 rules!3756))) e!2562184))))

(declare-fun b!4129428 () Bool)

(declare-fun res!1688068 () Bool)

(declare-fun e!2562188 () Bool)

(assert (=> b!4129428 (=> (not res!1688068) (not e!2562188))))

(declare-fun getIndex!664 (List!44823 Rule!14432) Int)

(assert (=> b!4129428 (= res!1688068 (< (getIndex!664 rules!3756 rBis!149) (getIndex!664 rules!3756 r!4008)))))

(declare-fun b!4129429 () Bool)

(declare-fun res!1688063 () Bool)

(assert (=> b!4129429 (=> (not res!1688063) (not e!2562188))))

(declare-fun p!2912 () List!44822)

(declare-fun matchR!6052 (Regex!12221 List!44822) Bool)

(assert (=> b!4129429 (= res!1688063 (matchR!6052 (regex!7316 r!4008) p!2912))))

(declare-fun b!4129430 () Bool)

(declare-fun res!1688070 () Bool)

(assert (=> b!4129430 (=> (not res!1688070) (not e!2562193))))

(declare-fun isEmpty!26611 (List!44822) Bool)

(assert (=> b!4129430 (= res!1688070 (not (isEmpty!26611 p!2912)))))

(declare-fun b!4129431 () Bool)

(declare-fun res!1688069 () Bool)

(assert (=> b!4129431 (=> (not res!1688069) (not e!2562193))))

(declare-fun isEmpty!26612 (List!44823) Bool)

(assert (=> b!4129431 (= res!1688069 (not (isEmpty!26612 rules!3756)))))

(declare-fun b!4129432 () Bool)

(declare-fun tp!1258374 () Bool)

(declare-fun e!2562187 () Bool)

(assert (=> b!4129432 (= e!2562187 (and tp!1258374 (inv!59287 (tag!8176 r!4008)) (inv!59289 (transformation!7316 r!4008)) e!2562181))))

(declare-fun b!4129433 () Bool)

(declare-fun e!2562180 () Bool)

(declare-fun tp_is_empty!21365 () Bool)

(declare-fun tp!1258371 () Bool)

(assert (=> b!4129433 (= e!2562180 (and tp_is_empty!21365 tp!1258371))))

(declare-fun b!4129434 () Bool)

(declare-fun e!2562182 () Bool)

(declare-fun tp!1258366 () Bool)

(assert (=> b!4129434 (= e!2562182 (and tp_is_empty!21365 tp!1258366))))

(declare-fun b!4129435 () Bool)

(declare-fun e!2562186 () Bool)

(declare-fun tp!1258363 () Bool)

(assert (=> b!4129435 (= e!2562186 (and e!2562189 tp!1258363))))

(declare-fun b!4129436 () Bool)

(declare-fun res!1688061 () Bool)

(assert (=> b!4129436 (=> (not res!1688061) (not e!2562193))))

(declare-fun input!3238 () List!44822)

(declare-fun isPrefix!4251 (List!44822 List!44822) Bool)

(assert (=> b!4129436 (= res!1688061 (isPrefix!4251 p!2912 input!3238))))

(declare-fun b!4129425 () Bool)

(declare-fun res!1688060 () Bool)

(assert (=> b!4129425 (=> (not res!1688060) (not e!2562193))))

(assert (=> b!4129425 (= res!1688060 (contains!8992 rules!3756 rBis!149))))

(declare-fun res!1688059 () Bool)

(assert (=> start!391890 (=> (not res!1688059) (not e!2562193))))

(get-info :version)

(assert (=> start!391890 (= res!1688059 ((_ is Lexer!6903) thiss!25645))))

(assert (=> start!391890 e!2562193))

(assert (=> start!391890 e!2562186))

(assert (=> start!391890 e!2562182))

(assert (=> start!391890 true))

(assert (=> start!391890 e!2562187))

(assert (=> start!391890 e!2562180))

(declare-fun e!2562194 () Bool)

(assert (=> start!391890 e!2562194))

(assert (=> b!4129437 (= e!2562184 (and tp!1258370 tp!1258372))))

(declare-fun b!4129438 () Bool)

(declare-fun res!1688062 () Bool)

(assert (=> b!4129438 (=> (not res!1688062) (not e!2562188))))

(declare-fun ruleValid!3124 (LexerInterface!6905 Rule!14432) Bool)

(assert (=> b!4129438 (= res!1688062 (ruleValid!3124 thiss!25645 r!4008))))

(declare-fun e!2562191 () Bool)

(assert (=> b!4129439 (= e!2562191 (and tp!1258369 tp!1258373))))

(declare-fun tp!1258364 () Bool)

(declare-fun b!4129440 () Bool)

(assert (=> b!4129440 (= e!2562194 (and tp!1258364 (inv!59287 (tag!8176 rBis!149)) (inv!59289 (transformation!7316 rBis!149)) e!2562191))))

(declare-fun b!4129441 () Bool)

(assert (=> b!4129441 (= e!2562193 e!2562188)))

(declare-fun res!1688065 () Bool)

(assert (=> b!4129441 (=> (not res!1688065) (not e!2562188))))

(declare-fun lt!1472987 () BalanceConc!26648)

(declare-datatypes ((Token!13562 0))(
  ( (Token!13563 (value!229060 TokenValue!7546) (rule!10408 Rule!14432) (size!33097 Int) (originalCharacters!7812 List!44822)) )
))
(declare-datatypes ((tuple2!43142 0))(
  ( (tuple2!43143 (_1!24705 Token!13562) (_2!24705 List!44822)) )
))
(declare-datatypes ((Option!9624 0))(
  ( (None!9623) (Some!9623 (v!40227 tuple2!43142)) )
))
(declare-fun maxPrefix!4097 (LexerInterface!6905 List!44823 List!44822) Option!9624)

(declare-fun apply!10389 (TokenValueInjection!14520 BalanceConc!26648) TokenValue!7546)

(declare-fun size!33098 (List!44822) Int)

(declare-fun getSuffix!2580 (List!44822 List!44822) List!44822)

(assert (=> b!4129441 (= res!1688065 (= (maxPrefix!4097 thiss!25645 rules!3756 input!3238) (Some!9623 (tuple2!43143 (Token!13563 (apply!10389 (transformation!7316 r!4008) lt!1472987) r!4008 (size!33098 p!2912) p!2912) (getSuffix!2580 input!3238 p!2912)))))))

(declare-datatypes ((Unit!64031 0))(
  ( (Unit!64032) )
))
(declare-fun lt!1472988 () Unit!64031)

(declare-fun lemmaSemiInverse!2174 (TokenValueInjection!14520 BalanceConc!26648) Unit!64031)

(assert (=> b!4129441 (= lt!1472988 (lemmaSemiInverse!2174 (transformation!7316 r!4008) lt!1472987))))

(declare-fun seqFromList!5433 (List!44822) BalanceConc!26648)

(assert (=> b!4129441 (= lt!1472987 (seqFromList!5433 p!2912))))

(declare-fun b!4129442 () Bool)

(assert (=> b!4129442 (= e!2562188 (not e!2562190))))

(declare-fun res!1688064 () Bool)

(assert (=> b!4129442 (=> res!1688064 e!2562190)))

(assert (=> b!4129442 (= res!1688064 (or (and ((_ is Cons!44699) rules!3756) (= (h!50119 rules!3756) rBis!149)) (and ((_ is Cons!44699) rules!3756) (not (= (h!50119 rules!3756) rBis!149))) ((_ is Nil!44699) rules!3756)))))

(declare-fun lt!1472985 () Unit!64031)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2168 (LexerInterface!6905 Rule!14432 List!44823) Unit!64031)

(assert (=> b!4129442 (= lt!1472985 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2168 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4129442 (ruleValid!3124 thiss!25645 rBis!149)))

(declare-fun lt!1472986 () Unit!64031)

(assert (=> b!4129442 (= lt!1472986 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2168 thiss!25645 rBis!149 rules!3756))))

(assert (= (and start!391890 res!1688059) b!4129436))

(assert (= (and b!4129436 res!1688061) b!4129431))

(assert (= (and b!4129431 res!1688069) b!4129424))

(assert (= (and b!4129424 res!1688067) b!4129422))

(assert (= (and b!4129422 res!1688066) b!4129425))

(assert (= (and b!4129425 res!1688060) b!4129430))

(assert (= (and b!4129430 res!1688070) b!4129441))

(assert (= (and b!4129441 res!1688065) b!4129429))

(assert (= (and b!4129429 res!1688063) b!4129428))

(assert (= (and b!4129428 res!1688068) b!4129438))

(assert (= (and b!4129438 res!1688062) b!4129442))

(assert (= (and b!4129442 (not res!1688064)) b!4129426))

(assert (= b!4129427 b!4129437))

(assert (= b!4129435 b!4129427))

(assert (= (and start!391890 ((_ is Cons!44699) rules!3756)) b!4129435))

(assert (= (and start!391890 ((_ is Cons!44698) p!2912)) b!4129434))

(assert (= b!4129432 b!4129423))

(assert (= start!391890 b!4129432))

(assert (= (and start!391890 ((_ is Cons!44698) input!3238)) b!4129433))

(assert (= b!4129440 b!4129439))

(assert (= start!391890 b!4129440))

(declare-fun m!4727521 () Bool)

(assert (=> b!4129432 m!4727521))

(declare-fun m!4727523 () Bool)

(assert (=> b!4129432 m!4727523))

(declare-fun m!4727525 () Bool)

(assert (=> b!4129438 m!4727525))

(declare-fun m!4727527 () Bool)

(assert (=> b!4129424 m!4727527))

(declare-fun m!4727529 () Bool)

(assert (=> b!4129431 m!4727529))

(declare-fun m!4727531 () Bool)

(assert (=> b!4129442 m!4727531))

(declare-fun m!4727533 () Bool)

(assert (=> b!4129442 m!4727533))

(declare-fun m!4727535 () Bool)

(assert (=> b!4129442 m!4727535))

(declare-fun m!4727537 () Bool)

(assert (=> b!4129425 m!4727537))

(declare-fun m!4727539 () Bool)

(assert (=> b!4129436 m!4727539))

(declare-fun m!4727541 () Bool)

(assert (=> b!4129429 m!4727541))

(declare-fun m!4727543 () Bool)

(assert (=> b!4129422 m!4727543))

(declare-fun m!4727545 () Bool)

(assert (=> b!4129428 m!4727545))

(declare-fun m!4727547 () Bool)

(assert (=> b!4129428 m!4727547))

(declare-fun m!4727549 () Bool)

(assert (=> b!4129426 m!4727549))

(declare-fun m!4727551 () Bool)

(assert (=> b!4129440 m!4727551))

(declare-fun m!4727553 () Bool)

(assert (=> b!4129440 m!4727553))

(declare-fun m!4727555 () Bool)

(assert (=> b!4129430 m!4727555))

(declare-fun m!4727557 () Bool)

(assert (=> b!4129441 m!4727557))

(declare-fun m!4727559 () Bool)

(assert (=> b!4129441 m!4727559))

(declare-fun m!4727561 () Bool)

(assert (=> b!4129441 m!4727561))

(declare-fun m!4727563 () Bool)

(assert (=> b!4129441 m!4727563))

(declare-fun m!4727565 () Bool)

(assert (=> b!4129441 m!4727565))

(declare-fun m!4727567 () Bool)

(assert (=> b!4129441 m!4727567))

(declare-fun m!4727569 () Bool)

(assert (=> b!4129427 m!4727569))

(declare-fun m!4727571 () Bool)

(assert (=> b!4129427 m!4727571))

(check-sat b_and!319919 (not b!4129436) (not b_next!117767) (not b!4129432) (not b!4129430) (not b!4129426) (not b!4129425) b_and!319917 b_and!319927 (not b!4129438) (not b!4129427) (not b!4129424) (not b!4129428) (not b!4129431) (not b!4129441) (not b!4129434) (not b_next!117769) b_and!319921 b_and!319923 (not b!4129429) (not b!4129433) (not b!4129440) (not b!4129422) (not b!4129442) (not b!4129435) (not b_next!117765) tp_is_empty!21365 (not b_next!117773) (not b_next!117771) b_and!319925 (not b_next!117763))
(check-sat b_and!319919 (not b_next!117767) b_and!319923 (not b_next!117765) b_and!319917 b_and!319927 (not b_next!117769) b_and!319921 (not b_next!117773) (not b_next!117771) b_and!319925 (not b_next!117763))
