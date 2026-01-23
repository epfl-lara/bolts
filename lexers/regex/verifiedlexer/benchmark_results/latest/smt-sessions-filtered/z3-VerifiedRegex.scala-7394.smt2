; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!393210 () Bool)

(assert start!393210)

(declare-fun b!4138210 () Bool)

(declare-fun b_free!117707 () Bool)

(declare-fun b_next!118411 () Bool)

(assert (=> b!4138210 (= b_free!117707 (not b_next!118411))))

(declare-fun tp!1261390 () Bool)

(declare-fun b_and!321193 () Bool)

(assert (=> b!4138210 (= tp!1261390 b_and!321193)))

(declare-fun b_free!117709 () Bool)

(declare-fun b_next!118413 () Bool)

(assert (=> b!4138210 (= b_free!117709 (not b_next!118413))))

(declare-fun tp!1261392 () Bool)

(declare-fun b_and!321195 () Bool)

(assert (=> b!4138210 (= tp!1261392 b_and!321195)))

(declare-fun b!4138227 () Bool)

(declare-fun b_free!117711 () Bool)

(declare-fun b_next!118415 () Bool)

(assert (=> b!4138227 (= b_free!117711 (not b_next!118415))))

(declare-fun tp!1261399 () Bool)

(declare-fun b_and!321197 () Bool)

(assert (=> b!4138227 (= tp!1261399 b_and!321197)))

(declare-fun b_free!117713 () Bool)

(declare-fun b_next!118417 () Bool)

(assert (=> b!4138227 (= b_free!117713 (not b_next!118417))))

(declare-fun tp!1261396 () Bool)

(declare-fun b_and!321199 () Bool)

(assert (=> b!4138227 (= tp!1261396 b_and!321199)))

(declare-fun b!4138213 () Bool)

(declare-fun b_free!117715 () Bool)

(declare-fun b_next!118419 () Bool)

(assert (=> b!4138213 (= b_free!117715 (not b_next!118419))))

(declare-fun tp!1261400 () Bool)

(declare-fun b_and!321201 () Bool)

(assert (=> b!4138213 (= tp!1261400 b_and!321201)))

(declare-fun b_free!117717 () Bool)

(declare-fun b_next!118421 () Bool)

(assert (=> b!4138213 (= b_free!117717 (not b_next!118421))))

(declare-fun tp!1261397 () Bool)

(declare-fun b_and!321203 () Bool)

(assert (=> b!4138213 (= tp!1261397 b_and!321203)))

(declare-fun b!4138209 () Bool)

(declare-fun res!1692568 () Bool)

(declare-fun e!2567614 () Bool)

(assert (=> b!4138209 (=> (not res!1692568) (not e!2567614))))

(declare-datatypes ((List!44980 0))(
  ( (Nil!44856) (Cons!44856 (h!50276 (_ BitVec 16)) (t!342161 List!44980)) )
))
(declare-datatypes ((TokenValue!7590 0))(
  ( (FloatLiteralValue!15180 (text!53575 List!44980)) (TokenValueExt!7589 (__x!27397 Int)) (Broken!37950 (value!230288 List!44980)) (Object!7713) (End!7590) (Def!7590) (Underscore!7590) (Match!7590) (Else!7590) (Error!7590) (Case!7590) (If!7590) (Extends!7590) (Abstract!7590) (Class!7590) (Val!7590) (DelimiterValue!15180 (del!7650 List!44980)) (KeywordValue!7596 (value!230289 List!44980)) (CommentValue!15180 (value!230290 List!44980)) (WhitespaceValue!15180 (value!230291 List!44980)) (IndentationValue!7590 (value!230292 List!44980)) (String!51699) (Int32!7590) (Broken!37951 (value!230293 List!44980)) (Boolean!7591) (Unit!64162) (OperatorValue!7593 (op!7650 List!44980)) (IdentifierValue!15180 (value!230294 List!44980)) (IdentifierValue!15181 (value!230295 List!44980)) (WhitespaceValue!15181 (value!230296 List!44980)) (True!15180) (False!15180) (Broken!37952 (value!230297 List!44980)) (Broken!37953 (value!230298 List!44980)) (True!15181) (RightBrace!7590) (RightBracket!7590) (Colon!7590) (Null!7590) (Comma!7590) (LeftBracket!7590) (False!15181) (LeftBrace!7590) (ImaginaryLiteralValue!7590 (text!53576 List!44980)) (StringLiteralValue!22770 (value!230299 List!44980)) (EOFValue!7590 (value!230300 List!44980)) (IdentValue!7590 (value!230301 List!44980)) (DelimiterValue!15181 (value!230302 List!44980)) (DedentValue!7590 (value!230303 List!44980)) (NewLineValue!7590 (value!230304 List!44980)) (IntegerValue!22770 (value!230305 (_ BitVec 32)) (text!53577 List!44980)) (IntegerValue!22771 (value!230306 Int) (text!53578 List!44980)) (Times!7590) (Or!7590) (Equal!7590) (Minus!7590) (Broken!37954 (value!230307 List!44980)) (And!7590) (Div!7590) (LessEqual!7590) (Mod!7590) (Concat!19855) (Not!7590) (Plus!7590) (SpaceValue!7590 (value!230308 List!44980)) (IntegerValue!22772 (value!230309 Int) (text!53579 List!44980)) (StringLiteralValue!22771 (text!53580 List!44980)) (FloatLiteralValue!15181 (text!53581 List!44980)) (BytesLiteralValue!7590 (value!230310 List!44980)) (CommentValue!15181 (value!230311 List!44980)) (StringLiteralValue!22772 (value!230312 List!44980)) (ErrorTokenValue!7590 (msg!7651 List!44980)) )
))
(declare-datatypes ((C!24716 0))(
  ( (C!24717 (val!14468 Int)) )
))
(declare-datatypes ((List!44981 0))(
  ( (Nil!44857) (Cons!44857 (h!50277 C!24716) (t!342162 List!44981)) )
))
(declare-datatypes ((IArray!27147 0))(
  ( (IArray!27148 (innerList!13631 List!44981)) )
))
(declare-datatypes ((Conc!13571 0))(
  ( (Node!13571 (left!33593 Conc!13571) (right!33923 Conc!13571) (csize!27372 Int) (cheight!13782 Int)) (Leaf!20966 (xs!16877 IArray!27147) (csize!27373 Int)) (Empty!13571) )
))
(declare-datatypes ((BalanceConc!26736 0))(
  ( (BalanceConc!26737 (c!709584 Conc!13571)) )
))
(declare-datatypes ((TokenValueInjection!14608 0))(
  ( (TokenValueInjection!14609 (toValue!10024 Int) (toChars!9883 Int)) )
))
(declare-datatypes ((Regex!12265 0))(
  ( (ElementMatch!12265 (c!709585 C!24716)) (Concat!19856 (regOne!25042 Regex!12265) (regTwo!25042 Regex!12265)) (EmptyExpr!12265) (Star!12265 (reg!12594 Regex!12265)) (EmptyLang!12265) (Union!12265 (regOne!25043 Regex!12265) (regTwo!25043 Regex!12265)) )
))
(declare-datatypes ((String!51700 0))(
  ( (String!51701 (value!230313 String)) )
))
(declare-datatypes ((Rule!14520 0))(
  ( (Rule!14521 (regex!7360 Regex!12265) (tag!8220 String!51700) (isSeparator!7360 Bool) (transformation!7360 TokenValueInjection!14608)) )
))
(declare-datatypes ((List!44982 0))(
  ( (Nil!44858) (Cons!44858 (h!50278 Rule!14520) (t!342163 List!44982)) )
))
(declare-fun rules!3756 () List!44982)

(declare-fun isEmpty!26733 (List!44982) Bool)

(assert (=> b!4138209 (= res!1692568 (not (isEmpty!26733 rules!3756)))))

(declare-fun e!2567616 () Bool)

(assert (=> b!4138210 (= e!2567616 (and tp!1261390 tp!1261392))))

(declare-fun b!4138211 () Bool)

(declare-fun res!1692571 () Bool)

(declare-fun e!2567605 () Bool)

(assert (=> b!4138211 (=> res!1692571 e!2567605)))

(declare-fun lt!1475539 () List!44981)

(declare-fun input!3238 () List!44981)

(declare-fun isPrefix!4295 (List!44981 List!44981) Bool)

(assert (=> b!4138211 (= res!1692571 (not (isPrefix!4295 lt!1475539 input!3238)))))

(declare-fun b!4138212 () Bool)

(declare-fun e!2567608 () Bool)

(assert (=> b!4138212 (= e!2567614 e!2567608)))

(declare-fun res!1692569 () Bool)

(assert (=> b!4138212 (=> (not res!1692569) (not e!2567608))))

(declare-fun lt!1475540 () Int)

(declare-fun lt!1475535 () List!44981)

(declare-fun p!2912 () List!44981)

(declare-datatypes ((LexerInterface!6949 0))(
  ( (LexerInterfaceExt!6946 (__x!27398 Int)) (Lexer!6947) )
))
(declare-fun thiss!25645 () LexerInterface!6949)

(declare-fun lt!1475548 () TokenValue!7590)

(declare-fun r!4008 () Rule!14520)

(declare-datatypes ((Token!13650 0))(
  ( (Token!13651 (value!230314 TokenValue!7590) (rule!10464 Rule!14520) (size!33214 Int) (originalCharacters!7856 List!44981)) )
))
(declare-datatypes ((tuple2!43250 0))(
  ( (tuple2!43251 (_1!24759 Token!13650) (_2!24759 List!44981)) )
))
(declare-datatypes ((Option!9666 0))(
  ( (None!9665) (Some!9665 (v!40297 tuple2!43250)) )
))
(declare-fun maxPrefix!4139 (LexerInterface!6949 List!44982 List!44981) Option!9666)

(assert (=> b!4138212 (= res!1692569 (= (maxPrefix!4139 thiss!25645 rules!3756 input!3238) (Some!9665 (tuple2!43251 (Token!13651 lt!1475548 r!4008 lt!1475540 p!2912) lt!1475535))))))

(declare-fun getSuffix!2622 (List!44981 List!44981) List!44981)

(assert (=> b!4138212 (= lt!1475535 (getSuffix!2622 input!3238 p!2912))))

(declare-fun size!33215 (List!44981) Int)

(assert (=> b!4138212 (= lt!1475540 (size!33215 p!2912))))

(declare-fun lt!1475542 () BalanceConc!26736)

(declare-fun apply!10433 (TokenValueInjection!14608 BalanceConc!26736) TokenValue!7590)

(assert (=> b!4138212 (= lt!1475548 (apply!10433 (transformation!7360 r!4008) lt!1475542))))

(declare-datatypes ((Unit!64163 0))(
  ( (Unit!64164) )
))
(declare-fun lt!1475543 () Unit!64163)

(declare-fun lemmaSemiInverse!2218 (TokenValueInjection!14608 BalanceConc!26736) Unit!64163)

(assert (=> b!4138212 (= lt!1475543 (lemmaSemiInverse!2218 (transformation!7360 r!4008) lt!1475542))))

(declare-fun seqFromList!5477 (List!44981) BalanceConc!26736)

(assert (=> b!4138212 (= lt!1475542 (seqFromList!5477 p!2912))))

(declare-fun e!2567610 () Bool)

(assert (=> b!4138213 (= e!2567610 (and tp!1261400 tp!1261397))))

(declare-fun b!4138214 () Bool)

(declare-fun res!1692565 () Bool)

(assert (=> b!4138214 (=> (not res!1692565) (not e!2567614))))

(assert (=> b!4138214 (= res!1692565 (isPrefix!4295 p!2912 input!3238))))

(declare-fun b!4138215 () Bool)

(declare-fun e!2567606 () Bool)

(declare-fun tp!1261389 () Bool)

(declare-fun inv!59463 (String!51700) Bool)

(declare-fun inv!59465 (TokenValueInjection!14608) Bool)

(assert (=> b!4138215 (= e!2567606 (and tp!1261389 (inv!59463 (tag!8220 (h!50278 rules!3756))) (inv!59465 (transformation!7360 (h!50278 rules!3756))) e!2567610))))

(declare-fun b!4138216 () Bool)

(declare-fun e!2567607 () Bool)

(declare-fun tp_is_empty!21453 () Bool)

(declare-fun tp!1261391 () Bool)

(assert (=> b!4138216 (= e!2567607 (and tp_is_empty!21453 tp!1261391))))

(declare-fun b!4138217 () Bool)

(declare-fun res!1692570 () Bool)

(assert (=> b!4138217 (=> (not res!1692570) (not e!2567608))))

(declare-fun matchR!6094 (Regex!12265 List!44981) Bool)

(assert (=> b!4138217 (= res!1692570 (matchR!6094 (regex!7360 r!4008) p!2912))))

(declare-fun b!4138218 () Bool)

(declare-fun e!2567604 () Bool)

(assert (=> b!4138218 (= e!2567604 e!2567605)))

(declare-fun res!1692561 () Bool)

(assert (=> b!4138218 (=> res!1692561 e!2567605)))

(declare-fun ++!11604 (List!44981 List!44981) List!44981)

(assert (=> b!4138218 (= res!1692561 (not (= (++!11604 p!2912 lt!1475535) input!3238)))))

(declare-fun lt!1475536 () List!44981)

(assert (=> b!4138218 (= lt!1475536 (getSuffix!2622 input!3238 lt!1475539))))

(declare-fun lt!1475538 () BalanceConc!26736)

(declare-fun list!16427 (BalanceConc!26736) List!44981)

(assert (=> b!4138218 (= lt!1475539 (list!16427 lt!1475538))))

(declare-fun b!4138219 () Bool)

(assert (=> b!4138219 (= e!2567605 true)))

(assert (=> b!4138219 (isPrefix!4295 input!3238 input!3238)))

(declare-fun lt!1475546 () Unit!64163)

(declare-fun lemmaIsPrefixRefl!2778 (List!44981 List!44981) Unit!64163)

(assert (=> b!4138219 (= lt!1475546 (lemmaIsPrefixRefl!2778 input!3238 input!3238))))

(declare-fun b!4138220 () Bool)

(declare-fun e!2567601 () Bool)

(declare-fun e!2567603 () Bool)

(assert (=> b!4138220 (= e!2567601 e!2567603)))

(declare-fun res!1692575 () Bool)

(assert (=> b!4138220 (=> res!1692575 e!2567603)))

(declare-fun lt!1475537 () Option!9666)

(declare-fun isEmpty!26734 (Option!9666) Bool)

(assert (=> b!4138220 (= res!1692575 (isEmpty!26734 lt!1475537))))

(declare-fun rBis!149 () Rule!14520)

(declare-fun maxPrefixOneRule!3078 (LexerInterface!6949 Rule!14520 List!44981) Option!9666)

(assert (=> b!4138220 (= lt!1475537 (maxPrefixOneRule!3078 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4138220 (not (= rBis!149 r!4008))))

(declare-fun lt!1475544 () Unit!64163)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!58 (LexerInterface!6949 List!44982 Rule!14520 Rule!14520) Unit!64163)

(assert (=> b!4138220 (= lt!1475544 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!58 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9040 (List!44982 Rule!14520) Bool)

(declare-fun tail!6525 (List!44982) List!44982)

(assert (=> b!4138220 (contains!9040 (tail!6525 rules!3756) r!4008)))

(declare-fun lt!1475545 () Unit!64163)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!64 (List!44982 Rule!14520 Rule!14520) Unit!64163)

(assert (=> b!4138220 (= lt!1475545 (lemmaGetIndexBiggerAndHeadEqThenTailContains!64 rules!3756 rBis!149 r!4008))))

(declare-fun e!2567611 () Bool)

(declare-fun b!4138221 () Bool)

(declare-fun tp!1261398 () Bool)

(assert (=> b!4138221 (= e!2567611 (and tp!1261398 (inv!59463 (tag!8220 rBis!149)) (inv!59465 (transformation!7360 rBis!149)) e!2567616))))

(declare-fun res!1692573 () Bool)

(assert (=> start!393210 (=> (not res!1692573) (not e!2567614))))

(get-info :version)

(assert (=> start!393210 (= res!1692573 ((_ is Lexer!6947) thiss!25645))))

(assert (=> start!393210 e!2567614))

(declare-fun e!2567609 () Bool)

(assert (=> start!393210 e!2567609))

(assert (=> start!393210 e!2567607))

(assert (=> start!393210 true))

(declare-fun e!2567615 () Bool)

(assert (=> start!393210 e!2567615))

(declare-fun e!2567599 () Bool)

(assert (=> start!393210 e!2567599))

(assert (=> start!393210 e!2567611))

(declare-fun b!4138208 () Bool)

(declare-fun res!1692566 () Bool)

(assert (=> b!4138208 (=> (not res!1692566) (not e!2567608))))

(declare-fun getIndex!706 (List!44982 Rule!14520) Int)

(assert (=> b!4138208 (= res!1692566 (< (getIndex!706 rules!3756 rBis!149) (getIndex!706 rules!3756 r!4008)))))

(declare-fun b!4138222 () Bool)

(assert (=> b!4138222 (= e!2567603 e!2567604)))

(declare-fun res!1692567 () Bool)

(assert (=> b!4138222 (=> res!1692567 e!2567604)))

(declare-fun size!33216 (BalanceConc!26736) Int)

(assert (=> b!4138222 (= res!1692567 (<= (size!33216 lt!1475538) lt!1475540))))

(declare-fun charsOf!4959 (Token!13650) BalanceConc!26736)

(declare-fun get!14635 (Option!9666) tuple2!43250)

(assert (=> b!4138222 (= lt!1475538 (charsOf!4959 (_1!24759 (get!14635 lt!1475537))))))

(declare-fun b!4138223 () Bool)

(declare-fun res!1692574 () Bool)

(assert (=> b!4138223 (=> (not res!1692574) (not e!2567614))))

(declare-fun isEmpty!26735 (List!44981) Bool)

(assert (=> b!4138223 (= res!1692574 (not (isEmpty!26735 p!2912)))))

(declare-fun b!4138224 () Bool)

(declare-fun res!1692576 () Bool)

(assert (=> b!4138224 (=> (not res!1692576) (not e!2567614))))

(declare-fun rulesInvariant!6246 (LexerInterface!6949 List!44982) Bool)

(assert (=> b!4138224 (= res!1692576 (rulesInvariant!6246 thiss!25645 rules!3756))))

(declare-fun b!4138225 () Bool)

(declare-fun tp!1261394 () Bool)

(assert (=> b!4138225 (= e!2567599 (and tp_is_empty!21453 tp!1261394))))

(declare-fun b!4138226 () Bool)

(declare-fun res!1692563 () Bool)

(assert (=> b!4138226 (=> (not res!1692563) (not e!2567608))))

(declare-fun ruleValid!3166 (LexerInterface!6949 Rule!14520) Bool)

(assert (=> b!4138226 (= res!1692563 (ruleValid!3166 thiss!25645 r!4008))))

(declare-fun e!2567600 () Bool)

(assert (=> b!4138227 (= e!2567600 (and tp!1261399 tp!1261396))))

(declare-fun b!4138228 () Bool)

(declare-fun tp!1261395 () Bool)

(assert (=> b!4138228 (= e!2567615 (and tp!1261395 (inv!59463 (tag!8220 r!4008)) (inv!59465 (transformation!7360 r!4008)) e!2567600))))

(declare-fun b!4138229 () Bool)

(declare-fun res!1692572 () Bool)

(assert (=> b!4138229 (=> (not res!1692572) (not e!2567614))))

(assert (=> b!4138229 (= res!1692572 (contains!9040 rules!3756 r!4008))))

(declare-fun b!4138230 () Bool)

(declare-fun tp!1261393 () Bool)

(assert (=> b!4138230 (= e!2567609 (and e!2567606 tp!1261393))))

(declare-fun b!4138231 () Bool)

(declare-fun res!1692564 () Bool)

(assert (=> b!4138231 (=> (not res!1692564) (not e!2567614))))

(assert (=> b!4138231 (= res!1692564 (contains!9040 rules!3756 rBis!149))))

(declare-fun b!4138232 () Bool)

(assert (=> b!4138232 (= e!2567608 (not e!2567601))))

(declare-fun res!1692562 () Bool)

(assert (=> b!4138232 (=> res!1692562 e!2567601)))

(assert (=> b!4138232 (= res!1692562 (or (not ((_ is Cons!44858) rules!3756)) (not (= (h!50278 rules!3756) rBis!149))))))

(declare-fun lt!1475541 () Unit!64163)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2206 (LexerInterface!6949 Rule!14520 List!44982) Unit!64163)

(assert (=> b!4138232 (= lt!1475541 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2206 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4138232 (ruleValid!3166 thiss!25645 rBis!149)))

(declare-fun lt!1475547 () Unit!64163)

(assert (=> b!4138232 (= lt!1475547 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2206 thiss!25645 rBis!149 rules!3756))))

(assert (= (and start!393210 res!1692573) b!4138214))

(assert (= (and b!4138214 res!1692565) b!4138209))

(assert (= (and b!4138209 res!1692568) b!4138224))

(assert (= (and b!4138224 res!1692576) b!4138229))

(assert (= (and b!4138229 res!1692572) b!4138231))

(assert (= (and b!4138231 res!1692564) b!4138223))

(assert (= (and b!4138223 res!1692574) b!4138212))

(assert (= (and b!4138212 res!1692569) b!4138217))

(assert (= (and b!4138217 res!1692570) b!4138208))

(assert (= (and b!4138208 res!1692566) b!4138226))

(assert (= (and b!4138226 res!1692563) b!4138232))

(assert (= (and b!4138232 (not res!1692562)) b!4138220))

(assert (= (and b!4138220 (not res!1692575)) b!4138222))

(assert (= (and b!4138222 (not res!1692567)) b!4138218))

(assert (= (and b!4138218 (not res!1692561)) b!4138211))

(assert (= (and b!4138211 (not res!1692571)) b!4138219))

(assert (= b!4138215 b!4138213))

(assert (= b!4138230 b!4138215))

(assert (= (and start!393210 ((_ is Cons!44858) rules!3756)) b!4138230))

(assert (= (and start!393210 ((_ is Cons!44857) p!2912)) b!4138216))

(assert (= b!4138228 b!4138227))

(assert (= start!393210 b!4138228))

(assert (= (and start!393210 ((_ is Cons!44857) input!3238)) b!4138225))

(assert (= b!4138221 b!4138210))

(assert (= start!393210 b!4138221))

(declare-fun m!4734685 () Bool)

(assert (=> b!4138228 m!4734685))

(declare-fun m!4734687 () Bool)

(assert (=> b!4138228 m!4734687))

(declare-fun m!4734689 () Bool)

(assert (=> b!4138208 m!4734689))

(declare-fun m!4734691 () Bool)

(assert (=> b!4138208 m!4734691))

(declare-fun m!4734693 () Bool)

(assert (=> b!4138224 m!4734693))

(declare-fun m!4734695 () Bool)

(assert (=> b!4138214 m!4734695))

(declare-fun m!4734697 () Bool)

(assert (=> b!4138215 m!4734697))

(declare-fun m!4734699 () Bool)

(assert (=> b!4138215 m!4734699))

(declare-fun m!4734701 () Bool)

(assert (=> b!4138221 m!4734701))

(declare-fun m!4734703 () Bool)

(assert (=> b!4138221 m!4734703))

(declare-fun m!4734705 () Bool)

(assert (=> b!4138211 m!4734705))

(declare-fun m!4734707 () Bool)

(assert (=> b!4138226 m!4734707))

(declare-fun m!4734709 () Bool)

(assert (=> b!4138229 m!4734709))

(declare-fun m!4734711 () Bool)

(assert (=> b!4138209 m!4734711))

(declare-fun m!4734713 () Bool)

(assert (=> b!4138217 m!4734713))

(declare-fun m!4734715 () Bool)

(assert (=> b!4138223 m!4734715))

(declare-fun m!4734717 () Bool)

(assert (=> b!4138219 m!4734717))

(declare-fun m!4734719 () Bool)

(assert (=> b!4138219 m!4734719))

(declare-fun m!4734721 () Bool)

(assert (=> b!4138231 m!4734721))

(declare-fun m!4734723 () Bool)

(assert (=> b!4138220 m!4734723))

(declare-fun m!4734725 () Bool)

(assert (=> b!4138220 m!4734725))

(declare-fun m!4734727 () Bool)

(assert (=> b!4138220 m!4734727))

(assert (=> b!4138220 m!4734723))

(declare-fun m!4734729 () Bool)

(assert (=> b!4138220 m!4734729))

(declare-fun m!4734731 () Bool)

(assert (=> b!4138220 m!4734731))

(declare-fun m!4734733 () Bool)

(assert (=> b!4138220 m!4734733))

(declare-fun m!4734735 () Bool)

(assert (=> b!4138222 m!4734735))

(declare-fun m!4734737 () Bool)

(assert (=> b!4138222 m!4734737))

(declare-fun m!4734739 () Bool)

(assert (=> b!4138222 m!4734739))

(declare-fun m!4734741 () Bool)

(assert (=> b!4138218 m!4734741))

(declare-fun m!4734743 () Bool)

(assert (=> b!4138218 m!4734743))

(declare-fun m!4734745 () Bool)

(assert (=> b!4138218 m!4734745))

(declare-fun m!4734747 () Bool)

(assert (=> b!4138212 m!4734747))

(declare-fun m!4734749 () Bool)

(assert (=> b!4138212 m!4734749))

(declare-fun m!4734751 () Bool)

(assert (=> b!4138212 m!4734751))

(declare-fun m!4734753 () Bool)

(assert (=> b!4138212 m!4734753))

(declare-fun m!4734755 () Bool)

(assert (=> b!4138212 m!4734755))

(declare-fun m!4734757 () Bool)

(assert (=> b!4138212 m!4734757))

(declare-fun m!4734759 () Bool)

(assert (=> b!4138232 m!4734759))

(declare-fun m!4734761 () Bool)

(assert (=> b!4138232 m!4734761))

(declare-fun m!4734763 () Bool)

(assert (=> b!4138232 m!4734763))

(check-sat (not b_next!118415) (not b!4138214) b_and!321199 (not b!4138225) (not b!4138215) (not b!4138217) (not b!4138211) (not b!4138222) (not b_next!118417) b_and!321195 (not b_next!118421) (not b_next!118411) (not b!4138226) b_and!321197 b_and!321193 (not b_next!118419) (not b!4138231) (not b!4138230) (not b!4138224) (not b!4138209) (not b!4138220) tp_is_empty!21453 (not b!4138208) (not b!4138216) (not b!4138232) b_and!321201 (not b!4138219) (not b!4138212) (not b!4138228) (not b!4138229) (not b!4138221) (not b!4138223) (not b!4138218) (not b_next!118413) b_and!321203)
(check-sat (not b_next!118415) b_and!321199 (not b_next!118411) b_and!321201 (not b_next!118417) b_and!321195 (not b_next!118421) b_and!321197 b_and!321193 (not b_next!118419) (not b_next!118413) b_and!321203)
