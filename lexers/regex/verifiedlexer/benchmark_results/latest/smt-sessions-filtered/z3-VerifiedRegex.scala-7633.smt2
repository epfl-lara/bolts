; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403350 () Bool)

(assert start!403350)

(declare-fun b!4219453 () Bool)

(declare-fun b_free!123835 () Bool)

(declare-fun b_next!124539 () Bool)

(assert (=> b!4219453 (= b_free!123835 (not b_next!124539))))

(declare-fun tp!1290822 () Bool)

(declare-fun b_and!332805 () Bool)

(assert (=> b!4219453 (= tp!1290822 b_and!332805)))

(declare-fun b_free!123837 () Bool)

(declare-fun b_next!124541 () Bool)

(assert (=> b!4219453 (= b_free!123837 (not b_next!124541))))

(declare-fun tp!1290825 () Bool)

(declare-fun b_and!332807 () Bool)

(assert (=> b!4219453 (= tp!1290825 b_and!332807)))

(declare-fun b!4219475 () Bool)

(declare-fun b_free!123839 () Bool)

(declare-fun b_next!124543 () Bool)

(assert (=> b!4219475 (= b_free!123839 (not b_next!124543))))

(declare-fun tp!1290828 () Bool)

(declare-fun b_and!332809 () Bool)

(assert (=> b!4219475 (= tp!1290828 b_and!332809)))

(declare-fun b_free!123841 () Bool)

(declare-fun b_next!124545 () Bool)

(assert (=> b!4219475 (= b_free!123841 (not b_next!124545))))

(declare-fun tp!1290826 () Bool)

(declare-fun b_and!332811 () Bool)

(assert (=> b!4219475 (= tp!1290826 b_and!332811)))

(declare-fun b!4219461 () Bool)

(declare-fun b_free!123843 () Bool)

(declare-fun b_next!124547 () Bool)

(assert (=> b!4219461 (= b_free!123843 (not b_next!124547))))

(declare-fun tp!1290824 () Bool)

(declare-fun b_and!332813 () Bool)

(assert (=> b!4219461 (= tp!1290824 b_and!332813)))

(declare-fun b_free!123845 () Bool)

(declare-fun b_next!124549 () Bool)

(assert (=> b!4219461 (= b_free!123845 (not b_next!124549))))

(declare-fun tp!1290820 () Bool)

(declare-fun b_and!332815 () Bool)

(assert (=> b!4219461 (= tp!1290820 b_and!332815)))

(declare-fun b!4219469 () Bool)

(declare-fun b_free!123847 () Bool)

(declare-fun b_next!124551 () Bool)

(assert (=> b!4219469 (= b_free!123847 (not b_next!124551))))

(declare-fun tp!1290823 () Bool)

(declare-fun b_and!332817 () Bool)

(assert (=> b!4219469 (= tp!1290823 b_and!332817)))

(declare-fun b_free!123849 () Bool)

(declare-fun b_next!124553 () Bool)

(assert (=> b!4219469 (= b_free!123849 (not b_next!124553))))

(declare-fun tp!1290827 () Bool)

(declare-fun b_and!332819 () Bool)

(assert (=> b!4219469 (= tp!1290827 b_and!332819)))

(declare-fun b!4219450 () Bool)

(declare-fun res!1734152 () Bool)

(declare-fun e!2619494 () Bool)

(assert (=> b!4219450 (=> res!1734152 e!2619494)))

(declare-datatypes ((List!46533 0))(
  ( (Nil!46409) (Cons!46409 (h!51829 (_ BitVec 16)) (t!348918 List!46533)) )
))
(declare-datatypes ((TokenValue!8010 0))(
  ( (FloatLiteralValue!16020 (text!56515 List!46533)) (TokenValueExt!8009 (__x!28243 Int)) (Broken!40050 (value!242233 List!46533)) (Object!8133) (End!8010) (Def!8010) (Underscore!8010) (Match!8010) (Else!8010) (Error!8010) (Case!8010) (If!8010) (Extends!8010) (Abstract!8010) (Class!8010) (Val!8010) (DelimiterValue!16020 (del!8070 List!46533)) (KeywordValue!8016 (value!242234 List!46533)) (CommentValue!16020 (value!242235 List!46533)) (WhitespaceValue!16020 (value!242236 List!46533)) (IndentationValue!8010 (value!242237 List!46533)) (String!53919) (Int32!8010) (Broken!40051 (value!242238 List!46533)) (Boolean!8011) (Unit!65580) (OperatorValue!8013 (op!8070 List!46533)) (IdentifierValue!16020 (value!242239 List!46533)) (IdentifierValue!16021 (value!242240 List!46533)) (WhitespaceValue!16021 (value!242241 List!46533)) (True!16020) (False!16020) (Broken!40052 (value!242242 List!46533)) (Broken!40053 (value!242243 List!46533)) (True!16021) (RightBrace!8010) (RightBracket!8010) (Colon!8010) (Null!8010) (Comma!8010) (LeftBracket!8010) (False!16021) (LeftBrace!8010) (ImaginaryLiteralValue!8010 (text!56516 List!46533)) (StringLiteralValue!24030 (value!242244 List!46533)) (EOFValue!8010 (value!242245 List!46533)) (IdentValue!8010 (value!242246 List!46533)) (DelimiterValue!16021 (value!242247 List!46533)) (DedentValue!8010 (value!242248 List!46533)) (NewLineValue!8010 (value!242249 List!46533)) (IntegerValue!24030 (value!242250 (_ BitVec 32)) (text!56517 List!46533)) (IntegerValue!24031 (value!242251 Int) (text!56518 List!46533)) (Times!8010) (Or!8010) (Equal!8010) (Minus!8010) (Broken!40054 (value!242252 List!46533)) (And!8010) (Div!8010) (LessEqual!8010) (Mod!8010) (Concat!20695) (Not!8010) (Plus!8010) (SpaceValue!8010 (value!242253 List!46533)) (IntegerValue!24032 (value!242254 Int) (text!56519 List!46533)) (StringLiteralValue!24031 (text!56520 List!46533)) (FloatLiteralValue!16021 (text!56521 List!46533)) (BytesLiteralValue!8010 (value!242255 List!46533)) (CommentValue!16021 (value!242256 List!46533)) (StringLiteralValue!24032 (value!242257 List!46533)) (ErrorTokenValue!8010 (msg!8071 List!46533)) )
))
(declare-datatypes ((C!25564 0))(
  ( (C!25565 (val!14944 Int)) )
))
(declare-datatypes ((Regex!12685 0))(
  ( (ElementMatch!12685 (c!718188 C!25564)) (Concat!20696 (regOne!25882 Regex!12685) (regTwo!25882 Regex!12685)) (EmptyExpr!12685) (Star!12685 (reg!13014 Regex!12685)) (EmptyLang!12685) (Union!12685 (regOne!25883 Regex!12685) (regTwo!25883 Regex!12685)) )
))
(declare-datatypes ((List!46534 0))(
  ( (Nil!46410) (Cons!46410 (h!51830 C!25564) (t!348919 List!46534)) )
))
(declare-datatypes ((IArray!27987 0))(
  ( (IArray!27988 (innerList!14051 List!46534)) )
))
(declare-datatypes ((Conc!13991 0))(
  ( (Node!13991 (left!34524 Conc!13991) (right!34854 Conc!13991) (csize!28212 Int) (cheight!14202 Int)) (Leaf!21625 (xs!17297 IArray!27987) (csize!28213 Int)) (Empty!13991) )
))
(declare-datatypes ((BalanceConc!27576 0))(
  ( (BalanceConc!27577 (c!718189 Conc!13991)) )
))
(declare-datatypes ((String!53920 0))(
  ( (String!53921 (value!242258 String)) )
))
(declare-datatypes ((TokenValueInjection!15448 0))(
  ( (TokenValueInjection!15449 (toValue!10504 Int) (toChars!10363 Int)) )
))
(declare-datatypes ((Rule!15360 0))(
  ( (Rule!15361 (regex!7780 Regex!12685) (tag!8644 String!53920) (isSeparator!7780 Bool) (transformation!7780 TokenValueInjection!15448)) )
))
(declare-datatypes ((Token!14262 0))(
  ( (Token!14263 (value!242259 TokenValue!8010) (rule!10912 Rule!15360) (size!34082 Int) (originalCharacters!8162 List!46534)) )
))
(declare-fun tBis!41 () Token!14262)

(declare-fun pBis!121 () List!46534)

(declare-fun list!16793 (BalanceConc!27576) List!46534)

(declare-fun charsOf!5203 (Token!14262) BalanceConc!27576)

(assert (=> b!4219450 (= res!1734152 (not (= (list!16793 (charsOf!5203 tBis!41)) pBis!121)))))

(declare-datatypes ((List!46535 0))(
  ( (Nil!46411) (Cons!46411 (h!51831 Rule!15360) (t!348920 List!46535)) )
))
(declare-fun rules!3967 () List!46535)

(declare-fun b!4219452 () Bool)

(declare-fun tp!1290815 () Bool)

(declare-fun e!2619483 () Bool)

(declare-fun e!2619482 () Bool)

(declare-fun inv!61062 (String!53920) Bool)

(declare-fun inv!61065 (TokenValueInjection!15448) Bool)

(assert (=> b!4219452 (= e!2619483 (and tp!1290815 (inv!61062 (tag!8644 (h!51831 rules!3967))) (inv!61065 (transformation!7780 (h!51831 rules!3967))) e!2619482))))

(declare-fun e!2619489 () Bool)

(assert (=> b!4219453 (= e!2619489 (and tp!1290822 tp!1290825))))

(declare-fun b!4219454 () Bool)

(declare-fun e!2619493 () Bool)

(declare-fun tp_is_empty!22337 () Bool)

(declare-fun tp!1290816 () Bool)

(assert (=> b!4219454 (= e!2619493 (and tp_is_empty!22337 tp!1290816))))

(declare-fun b!4219455 () Bool)

(declare-fun e!2619506 () Bool)

(declare-fun e!2619500 () Bool)

(assert (=> b!4219455 (= e!2619506 e!2619500)))

(declare-fun res!1734148 () Bool)

(assert (=> b!4219455 (=> (not res!1734148) (not e!2619500))))

(declare-datatypes ((LexerInterface!7375 0))(
  ( (LexerInterfaceExt!7372 (__x!28244 Int)) (Lexer!7373) )
))
(declare-fun thiss!26544 () LexerInterface!7375)

(declare-fun input!3517 () List!46534)

(declare-datatypes ((tuple2!44138 0))(
  ( (tuple2!44139 (_1!25203 Token!14262) (_2!25203 List!46534)) )
))
(declare-datatypes ((Option!9968 0))(
  ( (None!9967) (Some!9967 (v!40855 tuple2!44138)) )
))
(declare-fun lt!1501682 () Option!9968)

(declare-fun maxPrefix!4415 (LexerInterface!7375 List!46535 List!46534) Option!9968)

(assert (=> b!4219455 (= res!1734148 (= (maxPrefix!4415 thiss!26544 rules!3967 input!3517) lt!1501682))))

(declare-fun t!8364 () Token!14262)

(declare-fun suffix!1557 () List!46534)

(assert (=> b!4219455 (= lt!1501682 (Some!9967 (tuple2!44139 t!8364 suffix!1557)))))

(declare-fun b!4219456 () Bool)

(declare-fun res!1734154 () Bool)

(assert (=> b!4219456 (=> (not res!1734154) (not e!2619506))))

(declare-fun isPrefix!4639 (List!46534 List!46534) Bool)

(assert (=> b!4219456 (= res!1734154 (isPrefix!4639 pBis!121 input!3517))))

(declare-fun b!4219457 () Bool)

(declare-fun e!2619504 () Bool)

(declare-fun tp!1290817 () Bool)

(assert (=> b!4219457 (= e!2619504 (and tp_is_empty!22337 tp!1290817))))

(declare-fun e!2619502 () Bool)

(declare-fun b!4219458 () Bool)

(declare-fun tp!1290832 () Bool)

(assert (=> b!4219458 (= e!2619502 (and tp!1290832 (inv!61062 (tag!8644 (rule!10912 t!8364))) (inv!61065 (transformation!7780 (rule!10912 t!8364))) e!2619489))))

(declare-fun tp!1290834 () Bool)

(declare-fun b!4219459 () Bool)

(declare-fun e!2619505 () Bool)

(declare-fun inv!21 (TokenValue!8010) Bool)

(assert (=> b!4219459 (= e!2619505 (and (inv!21 (value!242259 t!8364)) e!2619502 tp!1290834))))

(declare-fun b!4219451 () Bool)

(declare-fun tp!1290821 () Bool)

(declare-fun e!2619485 () Bool)

(declare-fun e!2619487 () Bool)

(assert (=> b!4219451 (= e!2619485 (and (inv!21 (value!242259 tBis!41)) e!2619487 tp!1290821))))

(declare-fun res!1734145 () Bool)

(assert (=> start!403350 (=> (not res!1734145) (not e!2619506))))

(get-info :version)

(assert (=> start!403350 (= res!1734145 ((_ is Lexer!7373) thiss!26544))))

(assert (=> start!403350 e!2619506))

(declare-fun inv!61066 (Token!14262) Bool)

(assert (=> start!403350 (and (inv!61066 tBis!41) e!2619485)))

(assert (=> start!403350 true))

(declare-fun e!2619499 () Bool)

(assert (=> start!403350 e!2619499))

(assert (=> start!403350 e!2619504))

(declare-fun e!2619490 () Bool)

(assert (=> start!403350 e!2619490))

(declare-fun e!2619501 () Bool)

(assert (=> start!403350 e!2619501))

(assert (=> start!403350 (and (inv!61066 t!8364) e!2619505)))

(declare-fun e!2619486 () Bool)

(assert (=> start!403350 e!2619486))

(declare-fun e!2619498 () Bool)

(assert (=> start!403350 e!2619498))

(assert (=> start!403350 e!2619493))

(declare-fun b!4219460 () Bool)

(declare-fun lt!1501679 () Int)

(declare-fun lt!1501689 () Int)

(assert (=> b!4219460 (= e!2619494 (<= lt!1501679 lt!1501689))))

(declare-fun lt!1501680 () Int)

(assert (=> b!4219460 (<= lt!1501680 lt!1501689)))

(declare-fun p!3001 () List!46534)

(declare-fun size!34083 (List!46534) Int)

(assert (=> b!4219460 (= lt!1501689 (size!34083 p!3001))))

(declare-datatypes ((Unit!65581 0))(
  ( (Unit!65582) )
))
(declare-fun lt!1501685 () Unit!65581)

(declare-fun lt!1501693 () tuple2!44138)

(declare-fun lemmaCharactersSize!1507 (Token!14262) Unit!65581)

(assert (=> b!4219460 (= lt!1501685 (lemmaCharactersSize!1507 (_1!25203 lt!1501693)))))

(declare-fun lt!1501692 () Unit!65581)

(assert (=> b!4219460 (= lt!1501692 (lemmaCharactersSize!1507 tBis!41))))

(declare-fun lt!1501683 () Unit!65581)

(assert (=> b!4219460 (= lt!1501683 (lemmaCharactersSize!1507 t!8364))))

(assert (=> b!4219460 (<= lt!1501679 lt!1501680)))

(declare-fun lt!1501691 () List!46534)

(assert (=> b!4219460 (= lt!1501680 (size!34083 lt!1501691))))

(assert (=> b!4219460 (= lt!1501679 (size!34083 pBis!121))))

(declare-fun rBis!178 () Rule!15360)

(declare-fun lt!1501688 () Unit!65581)

(declare-fun suffixBis!41 () List!46534)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!38 (LexerInterface!7375 List!46535 List!46534 Token!14262 List!46534 List!46534 List!46534 List!46534 Rule!15360 Token!14262) Unit!65581)

(assert (=> b!4219460 (= lt!1501688 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!38 thiss!26544 (t!348920 rules!3967) lt!1501691 (_1!25203 lt!1501693) input!3517 (_2!25203 lt!1501693) pBis!121 suffixBis!41 rBis!178 tBis!41))))

(declare-fun rulesInvariant!6586 (LexerInterface!7375 List!46535) Bool)

(assert (=> b!4219460 (rulesInvariant!6586 thiss!26544 (t!348920 rules!3967))))

(declare-fun lt!1501684 () Unit!65581)

(declare-fun lemmaInvariantOnRulesThenOnTail!870 (LexerInterface!7375 Rule!15360 List!46535) Unit!65581)

(assert (=> b!4219460 (= lt!1501684 (lemmaInvariantOnRulesThenOnTail!870 thiss!26544 (h!51831 rules!3967) (t!348920 rules!3967)))))

(declare-fun ++!11854 (List!46534 List!46534) List!46534)

(assert (=> b!4219460 (isPrefix!4639 lt!1501691 (++!11854 lt!1501691 (_2!25203 lt!1501693)))))

(declare-fun lt!1501694 () Unit!65581)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3094 (List!46534 List!46534) Unit!65581)

(assert (=> b!4219460 (= lt!1501694 (lemmaConcatTwoListThenFirstIsPrefix!3094 lt!1501691 (_2!25203 lt!1501693)))))

(assert (=> b!4219460 (= lt!1501691 (list!16793 (charsOf!5203 (_1!25203 lt!1501693))))))

(declare-fun lt!1501687 () Option!9968)

(declare-fun get!15104 (Option!9968) tuple2!44138)

(assert (=> b!4219460 (= lt!1501693 (get!15104 lt!1501687))))

(declare-fun lt!1501690 () Unit!65581)

(declare-fun e!2619503 () Unit!65581)

(assert (=> b!4219460 (= lt!1501690 e!2619503)))

(declare-fun c!718187 () Bool)

(declare-fun isEmpty!27496 (Option!9968) Bool)

(assert (=> b!4219460 (= c!718187 (isEmpty!27496 lt!1501687))))

(assert (=> b!4219460 (= lt!1501687 (maxPrefix!4415 thiss!26544 (t!348920 rules!3967) input!3517))))

(declare-fun e!2619491 () Bool)

(assert (=> b!4219461 (= e!2619491 (and tp!1290824 tp!1290820))))

(declare-fun b!4219462 () Bool)

(declare-fun res!1734147 () Bool)

(assert (=> b!4219462 (=> (not res!1734147) (not e!2619506))))

(assert (=> b!4219462 (= res!1734147 (rulesInvariant!6586 thiss!26544 rules!3967))))

(declare-fun b!4219463 () Bool)

(declare-fun Unit!65583 () Unit!65581)

(assert (=> b!4219463 (= e!2619503 Unit!65583)))

(declare-fun b!4219464 () Bool)

(declare-fun res!1734146 () Bool)

(assert (=> b!4219464 (=> res!1734146 e!2619494)))

(assert (=> b!4219464 (= res!1734146 (not (= (rule!10912 tBis!41) rBis!178)))))

(declare-fun b!4219465 () Bool)

(declare-fun res!1734149 () Bool)

(assert (=> b!4219465 (=> res!1734149 e!2619494)))

(declare-fun maxPrefixOneRule!3370 (LexerInterface!7375 Rule!15360 List!46534) Option!9968)

(assert (=> b!4219465 (= res!1734149 (not (= (maxPrefixOneRule!3370 thiss!26544 (h!51831 rules!3967) input!3517) lt!1501682)))))

(declare-fun b!4219466 () Bool)

(declare-fun res!1734142 () Bool)

(assert (=> b!4219466 (=> (not res!1734142) (not e!2619506))))

(assert (=> b!4219466 (= res!1734142 (= (++!11854 p!3001 suffix!1557) input!3517))))

(declare-fun b!4219467 () Bool)

(declare-fun res!1734151 () Bool)

(assert (=> b!4219467 (=> (not res!1734151) (not e!2619500))))

(declare-fun ruleValid!3492 (LexerInterface!7375 Rule!15360) Bool)

(assert (=> b!4219467 (= res!1734151 (ruleValid!3492 thiss!26544 rBis!178))))

(declare-fun b!4219468 () Bool)

(declare-fun tp!1290833 () Bool)

(assert (=> b!4219468 (= e!2619490 (and e!2619483 tp!1290833))))

(assert (=> b!4219469 (= e!2619482 (and tp!1290823 tp!1290827))))

(declare-fun b!4219470 () Bool)

(declare-fun res!1734150 () Bool)

(assert (=> b!4219470 (=> (not res!1734150) (not e!2619506))))

(assert (=> b!4219470 (= res!1734150 (isPrefix!4639 p!3001 input!3517))))

(declare-fun b!4219471 () Bool)

(assert (=> b!4219471 (= e!2619500 (not e!2619494))))

(declare-fun res!1734144 () Bool)

(assert (=> b!4219471 (=> res!1734144 e!2619494)))

(assert (=> b!4219471 (= res!1734144 (not (= (maxPrefixOneRule!3370 thiss!26544 rBis!178 input!3517) (Some!9967 (tuple2!44139 tBis!41 suffixBis!41)))))))

(assert (=> b!4219471 (isPrefix!4639 input!3517 input!3517)))

(declare-fun lt!1501681 () Unit!65581)

(declare-fun lemmaIsPrefixRefl!3056 (List!46534 List!46534) Unit!65581)

(assert (=> b!4219471 (= lt!1501681 (lemmaIsPrefixRefl!3056 input!3517 input!3517))))

(declare-fun e!2619496 () Bool)

(declare-fun tp!1290831 () Bool)

(declare-fun b!4219472 () Bool)

(assert (=> b!4219472 (= e!2619499 (and tp!1290831 (inv!61062 (tag!8644 rBis!178)) (inv!61065 (transformation!7780 rBis!178)) e!2619496))))

(declare-fun b!4219473 () Bool)

(declare-fun res!1734156 () Bool)

(assert (=> b!4219473 (=> (not res!1734156) (not e!2619506))))

(declare-fun isEmpty!27497 (List!46535) Bool)

(assert (=> b!4219473 (= res!1734156 (not (isEmpty!27497 rules!3967)))))

(declare-fun tp!1290819 () Bool)

(declare-fun b!4219474 () Bool)

(assert (=> b!4219474 (= e!2619487 (and tp!1290819 (inv!61062 (tag!8644 (rule!10912 tBis!41))) (inv!61065 (transformation!7780 (rule!10912 tBis!41))) e!2619491))))

(assert (=> b!4219475 (= e!2619496 (and tp!1290828 tp!1290826))))

(declare-fun b!4219476 () Bool)

(declare-fun tp!1290829 () Bool)

(assert (=> b!4219476 (= e!2619486 (and tp_is_empty!22337 tp!1290829))))

(declare-fun b!4219477 () Bool)

(declare-fun res!1734153 () Bool)

(assert (=> b!4219477 (=> (not res!1734153) (not e!2619506))))

(declare-fun contains!9603 (List!46535 Rule!15360) Bool)

(assert (=> b!4219477 (= res!1734153 (contains!9603 rules!3967 rBis!178))))

(declare-fun b!4219478 () Bool)

(declare-fun res!1734155 () Bool)

(assert (=> b!4219478 (=> res!1734155 e!2619494)))

(assert (=> b!4219478 (= res!1734155 (not (= (++!11854 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4219479 () Bool)

(declare-fun tp!1290818 () Bool)

(assert (=> b!4219479 (= e!2619498 (and tp_is_empty!22337 tp!1290818))))

(declare-fun b!4219480 () Bool)

(declare-fun res!1734143 () Bool)

(assert (=> b!4219480 (=> res!1734143 e!2619494)))

(assert (=> b!4219480 (= res!1734143 (or (and ((_ is Cons!46411) rules!3967) ((_ is Nil!46411) (t!348920 rules!3967))) (not ((_ is Cons!46411) rules!3967)) (= (h!51831 rules!3967) rBis!178)))))

(declare-fun b!4219481 () Bool)

(declare-fun tp!1290830 () Bool)

(assert (=> b!4219481 (= e!2619501 (and tp_is_empty!22337 tp!1290830))))

(declare-fun b!4219482 () Bool)

(declare-fun Unit!65584 () Unit!65581)

(assert (=> b!4219482 (= e!2619503 Unit!65584)))

(declare-fun lt!1501686 () Unit!65581)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!638 (LexerInterface!7375 Rule!15360 List!46535 List!46534) Unit!65581)

(assert (=> b!4219482 (= lt!1501686 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!638 thiss!26544 rBis!178 (t!348920 rules!3967) input!3517))))

(assert (=> b!4219482 false))

(assert (= (and start!403350 res!1734145) b!4219466))

(assert (= (and b!4219466 res!1734142) b!4219470))

(assert (= (and b!4219470 res!1734150) b!4219456))

(assert (= (and b!4219456 res!1734154) b!4219473))

(assert (= (and b!4219473 res!1734156) b!4219462))

(assert (= (and b!4219462 res!1734147) b!4219477))

(assert (= (and b!4219477 res!1734153) b!4219455))

(assert (= (and b!4219455 res!1734148) b!4219467))

(assert (= (and b!4219467 res!1734151) b!4219471))

(assert (= (and b!4219471 (not res!1734144)) b!4219464))

(assert (= (and b!4219464 (not res!1734146)) b!4219450))

(assert (= (and b!4219450 (not res!1734152)) b!4219478))

(assert (= (and b!4219478 (not res!1734155)) b!4219480))

(assert (= (and b!4219480 (not res!1734143)) b!4219465))

(assert (= (and b!4219465 (not res!1734149)) b!4219460))

(assert (= (and b!4219460 c!718187) b!4219482))

(assert (= (and b!4219460 (not c!718187)) b!4219463))

(assert (= b!4219474 b!4219461))

(assert (= b!4219451 b!4219474))

(assert (= start!403350 b!4219451))

(assert (= b!4219472 b!4219475))

(assert (= start!403350 b!4219472))

(assert (= (and start!403350 ((_ is Cons!46410) p!3001)) b!4219457))

(assert (= b!4219452 b!4219469))

(assert (= b!4219468 b!4219452))

(assert (= (and start!403350 ((_ is Cons!46411) rules!3967)) b!4219468))

(assert (= (and start!403350 ((_ is Cons!46410) input!3517)) b!4219481))

(assert (= b!4219458 b!4219453))

(assert (= b!4219459 b!4219458))

(assert (= start!403350 b!4219459))

(assert (= (and start!403350 ((_ is Cons!46410) pBis!121)) b!4219476))

(assert (= (and start!403350 ((_ is Cons!46410) suffix!1557)) b!4219479))

(assert (= (and start!403350 ((_ is Cons!46410) suffixBis!41)) b!4219454))

(declare-fun m!4808205 () Bool)

(assert (=> b!4219473 m!4808205))

(declare-fun m!4808207 () Bool)

(assert (=> b!4219455 m!4808207))

(declare-fun m!4808209 () Bool)

(assert (=> b!4219471 m!4808209))

(declare-fun m!4808211 () Bool)

(assert (=> b!4219471 m!4808211))

(declare-fun m!4808213 () Bool)

(assert (=> b!4219471 m!4808213))

(declare-fun m!4808215 () Bool)

(assert (=> b!4219450 m!4808215))

(assert (=> b!4219450 m!4808215))

(declare-fun m!4808217 () Bool)

(assert (=> b!4219450 m!4808217))

(declare-fun m!4808219 () Bool)

(assert (=> b!4219474 m!4808219))

(declare-fun m!4808221 () Bool)

(assert (=> b!4219474 m!4808221))

(declare-fun m!4808223 () Bool)

(assert (=> b!4219451 m!4808223))

(declare-fun m!4808225 () Bool)

(assert (=> b!4219470 m!4808225))

(declare-fun m!4808227 () Bool)

(assert (=> b!4219466 m!4808227))

(declare-fun m!4808229 () Bool)

(assert (=> b!4219477 m!4808229))

(declare-fun m!4808231 () Bool)

(assert (=> b!4219452 m!4808231))

(declare-fun m!4808233 () Bool)

(assert (=> b!4219452 m!4808233))

(declare-fun m!4808235 () Bool)

(assert (=> start!403350 m!4808235))

(declare-fun m!4808237 () Bool)

(assert (=> start!403350 m!4808237))

(declare-fun m!4808239 () Bool)

(assert (=> b!4219482 m!4808239))

(declare-fun m!4808241 () Bool)

(assert (=> b!4219459 m!4808241))

(declare-fun m!4808243 () Bool)

(assert (=> b!4219478 m!4808243))

(declare-fun m!4808245 () Bool)

(assert (=> b!4219460 m!4808245))

(declare-fun m!4808247 () Bool)

(assert (=> b!4219460 m!4808247))

(declare-fun m!4808249 () Bool)

(assert (=> b!4219460 m!4808249))

(declare-fun m!4808251 () Bool)

(assert (=> b!4219460 m!4808251))

(declare-fun m!4808253 () Bool)

(assert (=> b!4219460 m!4808253))

(declare-fun m!4808255 () Bool)

(assert (=> b!4219460 m!4808255))

(declare-fun m!4808257 () Bool)

(assert (=> b!4219460 m!4808257))

(declare-fun m!4808259 () Bool)

(assert (=> b!4219460 m!4808259))

(declare-fun m!4808261 () Bool)

(assert (=> b!4219460 m!4808261))

(declare-fun m!4808263 () Bool)

(assert (=> b!4219460 m!4808263))

(declare-fun m!4808265 () Bool)

(assert (=> b!4219460 m!4808265))

(declare-fun m!4808267 () Bool)

(assert (=> b!4219460 m!4808267))

(assert (=> b!4219460 m!4808263))

(declare-fun m!4808269 () Bool)

(assert (=> b!4219460 m!4808269))

(declare-fun m!4808271 () Bool)

(assert (=> b!4219460 m!4808271))

(assert (=> b!4219460 m!4808269))

(declare-fun m!4808273 () Bool)

(assert (=> b!4219460 m!4808273))

(declare-fun m!4808275 () Bool)

(assert (=> b!4219460 m!4808275))

(declare-fun m!4808277 () Bool)

(assert (=> b!4219460 m!4808277))

(declare-fun m!4808279 () Bool)

(assert (=> b!4219465 m!4808279))

(declare-fun m!4808281 () Bool)

(assert (=> b!4219456 m!4808281))

(declare-fun m!4808283 () Bool)

(assert (=> b!4219472 m!4808283))

(declare-fun m!4808285 () Bool)

(assert (=> b!4219472 m!4808285))

(declare-fun m!4808287 () Bool)

(assert (=> b!4219462 m!4808287))

(declare-fun m!4808289 () Bool)

(assert (=> b!4219467 m!4808289))

(declare-fun m!4808291 () Bool)

(assert (=> b!4219458 m!4808291))

(declare-fun m!4808293 () Bool)

(assert (=> b!4219458 m!4808293))

(check-sat (not b_next!124545) (not b_next!124543) (not b!4219477) (not b!4219465) (not b!4219452) (not b!4219482) b_and!332805 (not b!4219459) (not b!4219470) (not b_next!124541) (not b!4219468) (not b!4219466) b_and!332811 (not b!4219451) (not b_next!124553) (not b!4219450) (not b!4219467) b_and!332813 (not b!4219479) (not b!4219457) (not b!4219476) b_and!332809 b_and!332817 (not b!4219471) (not b!4219456) (not b!4219474) (not b!4219473) (not b!4219472) (not b!4219455) (not b_next!124547) (not b!4219458) (not b_next!124539) (not start!403350) b_and!332807 (not b_next!124551) (not b_next!124549) (not b!4219481) tp_is_empty!22337 (not b!4219460) (not b!4219462) (not b!4219454) (not b!4219478) b_and!332819 b_and!332815)
(check-sat (not b_next!124545) (not b_next!124541) (not b_next!124543) b_and!332811 (not b_next!124553) b_and!332813 (not b_next!124547) b_and!332805 (not b_next!124539) (not b_next!124549) b_and!332809 b_and!332817 b_and!332807 (not b_next!124551) b_and!332819 b_and!332815)
