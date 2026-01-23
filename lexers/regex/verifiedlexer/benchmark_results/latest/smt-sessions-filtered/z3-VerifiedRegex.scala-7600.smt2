; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401290 () Bool)

(assert start!401290)

(declare-fun b!4200805 () Bool)

(declare-fun b_free!122595 () Bool)

(declare-fun b_next!123299 () Bool)

(assert (=> b!4200805 (= b_free!122595 (not b_next!123299))))

(declare-fun tp!1283554 () Bool)

(declare-fun b_and!329649 () Bool)

(assert (=> b!4200805 (= tp!1283554 b_and!329649)))

(declare-fun b_free!122597 () Bool)

(declare-fun b_next!123301 () Bool)

(assert (=> b!4200805 (= b_free!122597 (not b_next!123301))))

(declare-fun tp!1283535 () Bool)

(declare-fun b_and!329651 () Bool)

(assert (=> b!4200805 (= tp!1283535 b_and!329651)))

(declare-fun b!4200795 () Bool)

(declare-fun b_free!122599 () Bool)

(declare-fun b_next!123303 () Bool)

(assert (=> b!4200795 (= b_free!122599 (not b_next!123303))))

(declare-fun tp!1283552 () Bool)

(declare-fun b_and!329653 () Bool)

(assert (=> b!4200795 (= tp!1283552 b_and!329653)))

(declare-fun b_free!122601 () Bool)

(declare-fun b_next!123305 () Bool)

(assert (=> b!4200795 (= b_free!122601 (not b_next!123305))))

(declare-fun tp!1283537 () Bool)

(declare-fun b_and!329655 () Bool)

(assert (=> b!4200795 (= tp!1283537 b_and!329655)))

(declare-fun b!4200790 () Bool)

(declare-fun b_free!122603 () Bool)

(declare-fun b_next!123307 () Bool)

(assert (=> b!4200790 (= b_free!122603 (not b_next!123307))))

(declare-fun tp!1283546 () Bool)

(declare-fun b_and!329657 () Bool)

(assert (=> b!4200790 (= tp!1283546 b_and!329657)))

(declare-fun b_free!122605 () Bool)

(declare-fun b_next!123309 () Bool)

(assert (=> b!4200790 (= b_free!122605 (not b_next!123309))))

(declare-fun tp!1283548 () Bool)

(declare-fun b_and!329659 () Bool)

(assert (=> b!4200790 (= tp!1283548 b_and!329659)))

(declare-fun b!4200803 () Bool)

(declare-fun b_free!122607 () Bool)

(declare-fun b_next!123311 () Bool)

(assert (=> b!4200803 (= b_free!122607 (not b_next!123311))))

(declare-fun tp!1283550 () Bool)

(declare-fun b_and!329661 () Bool)

(assert (=> b!4200803 (= tp!1283550 b_and!329661)))

(declare-fun b_free!122609 () Bool)

(declare-fun b_next!123313 () Bool)

(assert (=> b!4200803 (= b_free!122609 (not b_next!123313))))

(declare-fun tp!1283539 () Bool)

(declare-fun b_and!329663 () Bool)

(assert (=> b!4200803 (= tp!1283539 b_and!329663)))

(declare-fun b!4200779 () Bool)

(declare-fun e!2607705 () Bool)

(declare-fun tp_is_empty!22205 () Bool)

(declare-fun tp!1283547 () Bool)

(assert (=> b!4200779 (= e!2607705 (and tp_is_empty!22205 tp!1283547))))

(declare-fun b!4200780 () Bool)

(declare-fun e!2607711 () Bool)

(declare-fun tp!1283545 () Bool)

(assert (=> b!4200780 (= e!2607711 (and tp_is_empty!22205 tp!1283545))))

(declare-fun res!1725150 () Bool)

(declare-fun e!2607700 () Bool)

(assert (=> start!401290 (=> (not res!1725150) (not e!2607700))))

(declare-datatypes ((LexerInterface!7309 0))(
  ( (LexerInterfaceExt!7306 (__x!28111 Int)) (Lexer!7307) )
))
(declare-fun thiss!26544 () LexerInterface!7309)

(get-info :version)

(assert (=> start!401290 (= res!1725150 ((_ is Lexer!7307) thiss!26544))))

(assert (=> start!401290 e!2607700))

(declare-datatypes ((List!46299 0))(
  ( (Nil!46175) (Cons!46175 (h!51595 (_ BitVec 16)) (t!346804 List!46299)) )
))
(declare-datatypes ((TokenValue!7944 0))(
  ( (FloatLiteralValue!15888 (text!56053 List!46299)) (TokenValueExt!7943 (__x!28112 Int)) (Broken!39720 (value!240352 List!46299)) (Object!8067) (End!7944) (Def!7944) (Underscore!7944) (Match!7944) (Else!7944) (Error!7944) (Case!7944) (If!7944) (Extends!7944) (Abstract!7944) (Class!7944) (Val!7944) (DelimiterValue!15888 (del!8004 List!46299)) (KeywordValue!7950 (value!240353 List!46299)) (CommentValue!15888 (value!240354 List!46299)) (WhitespaceValue!15888 (value!240355 List!46299)) (IndentationValue!7944 (value!240356 List!46299)) (String!53589) (Int32!7944) (Broken!39721 (value!240357 List!46299)) (Boolean!7945) (Unit!65264) (OperatorValue!7947 (op!8004 List!46299)) (IdentifierValue!15888 (value!240358 List!46299)) (IdentifierValue!15889 (value!240359 List!46299)) (WhitespaceValue!15889 (value!240360 List!46299)) (True!15888) (False!15888) (Broken!39722 (value!240361 List!46299)) (Broken!39723 (value!240362 List!46299)) (True!15889) (RightBrace!7944) (RightBracket!7944) (Colon!7944) (Null!7944) (Comma!7944) (LeftBracket!7944) (False!15889) (LeftBrace!7944) (ImaginaryLiteralValue!7944 (text!56054 List!46299)) (StringLiteralValue!23832 (value!240363 List!46299)) (EOFValue!7944 (value!240364 List!46299)) (IdentValue!7944 (value!240365 List!46299)) (DelimiterValue!15889 (value!240366 List!46299)) (DedentValue!7944 (value!240367 List!46299)) (NewLineValue!7944 (value!240368 List!46299)) (IntegerValue!23832 (value!240369 (_ BitVec 32)) (text!56055 List!46299)) (IntegerValue!23833 (value!240370 Int) (text!56056 List!46299)) (Times!7944) (Or!7944) (Equal!7944) (Minus!7944) (Broken!39724 (value!240371 List!46299)) (And!7944) (Div!7944) (LessEqual!7944) (Mod!7944) (Concat!20563) (Not!7944) (Plus!7944) (SpaceValue!7944 (value!240372 List!46299)) (IntegerValue!23834 (value!240373 Int) (text!56057 List!46299)) (StringLiteralValue!23833 (text!56058 List!46299)) (FloatLiteralValue!15889 (text!56059 List!46299)) (BytesLiteralValue!7944 (value!240374 List!46299)) (CommentValue!15889 (value!240375 List!46299)) (StringLiteralValue!23834 (value!240376 List!46299)) (ErrorTokenValue!7944 (msg!8005 List!46299)) )
))
(declare-datatypes ((C!25432 0))(
  ( (C!25433 (val!14878 Int)) )
))
(declare-datatypes ((List!46300 0))(
  ( (Nil!46176) (Cons!46176 (h!51596 C!25432) (t!346805 List!46300)) )
))
(declare-datatypes ((IArray!27855 0))(
  ( (IArray!27856 (innerList!13985 List!46300)) )
))
(declare-datatypes ((Regex!12619 0))(
  ( (ElementMatch!12619 (c!716222 C!25432)) (Concat!20564 (regOne!25750 Regex!12619) (regTwo!25750 Regex!12619)) (EmptyExpr!12619) (Star!12619 (reg!12948 Regex!12619)) (EmptyLang!12619) (Union!12619 (regOne!25751 Regex!12619) (regTwo!25751 Regex!12619)) )
))
(declare-datatypes ((Conc!13925 0))(
  ( (Node!13925 (left!34393 Conc!13925) (right!34723 Conc!13925) (csize!28080 Int) (cheight!14136 Int)) (Leaf!21526 (xs!17231 IArray!27855) (csize!28081 Int)) (Empty!13925) )
))
(declare-datatypes ((BalanceConc!27444 0))(
  ( (BalanceConc!27445 (c!716223 Conc!13925)) )
))
(declare-datatypes ((String!53590 0))(
  ( (String!53591 (value!240377 String)) )
))
(declare-datatypes ((TokenValueInjection!15316 0))(
  ( (TokenValueInjection!15317 (toValue!10418 Int) (toChars!10277 Int)) )
))
(declare-datatypes ((Rule!15228 0))(
  ( (Rule!15229 (regex!7714 Regex!12619) (tag!8578 String!53590) (isSeparator!7714 Bool) (transformation!7714 TokenValueInjection!15316)) )
))
(declare-datatypes ((Token!14130 0))(
  ( (Token!14131 (value!240378 TokenValue!7944) (rule!10810 Rule!15228) (size!33929 Int) (originalCharacters!8096 List!46300)) )
))
(declare-fun tBis!41 () Token!14130)

(declare-fun e!2607710 () Bool)

(declare-fun inv!60733 (Token!14130) Bool)

(assert (=> start!401290 (and (inv!60733 tBis!41) e!2607710)))

(assert (=> start!401290 true))

(declare-fun e!2607702 () Bool)

(assert (=> start!401290 e!2607702))

(declare-fun e!2607695 () Bool)

(assert (=> start!401290 e!2607695))

(declare-fun e!2607696 () Bool)

(assert (=> start!401290 e!2607696))

(assert (=> start!401290 e!2607711))

(declare-fun t!8364 () Token!14130)

(declare-fun e!2607697 () Bool)

(assert (=> start!401290 (and (inv!60733 t!8364) e!2607697)))

(declare-fun e!2607714 () Bool)

(assert (=> start!401290 e!2607714))

(declare-fun e!2607698 () Bool)

(assert (=> start!401290 e!2607698))

(assert (=> start!401290 e!2607705))

(declare-fun b!4200781 () Bool)

(declare-fun e!2607716 () Bool)

(assert (=> b!4200781 (= e!2607700 (not e!2607716))))

(declare-fun res!1725155 () Bool)

(assert (=> b!4200781 (=> res!1725155 e!2607716)))

(declare-fun rBis!178 () Rule!15228)

(declare-fun input!3517 () List!46300)

(declare-fun suffixBis!41 () List!46300)

(declare-datatypes ((tuple2!43934 0))(
  ( (tuple2!43935 (_1!25101 Token!14130) (_2!25101 List!46300)) )
))
(declare-datatypes ((Option!9902 0))(
  ( (None!9901) (Some!9901 (v!40753 tuple2!43934)) )
))
(declare-fun maxPrefixOneRule!3304 (LexerInterface!7309 Rule!15228 List!46300) Option!9902)

(assert (=> b!4200781 (= res!1725155 (not (= (maxPrefixOneRule!3304 thiss!26544 rBis!178 input!3517) (Some!9901 (tuple2!43935 tBis!41 suffixBis!41)))))))

(declare-fun isPrefix!4573 (List!46300 List!46300) Bool)

(assert (=> b!4200781 (isPrefix!4573 input!3517 input!3517)))

(declare-datatypes ((Unit!65265 0))(
  ( (Unit!65266) )
))
(declare-fun lt!1496323 () Unit!65265)

(declare-fun lemmaIsPrefixRefl!2990 (List!46300 List!46300) Unit!65265)

(assert (=> b!4200781 (= lt!1496323 (lemmaIsPrefixRefl!2990 input!3517 input!3517))))

(declare-fun b!4200782 () Bool)

(declare-fun res!1725153 () Bool)

(assert (=> b!4200782 (=> (not res!1725153) (not e!2607700))))

(declare-datatypes ((List!46301 0))(
  ( (Nil!46177) (Cons!46177 (h!51597 Rule!15228) (t!346806 List!46301)) )
))
(declare-fun rules!3967 () List!46301)

(declare-fun contains!9527 (List!46301 Rule!15228) Bool)

(assert (=> b!4200782 (= res!1725153 (contains!9527 rules!3967 rBis!178))))

(declare-fun b!4200783 () Bool)

(declare-fun res!1725149 () Bool)

(assert (=> b!4200783 (=> (not res!1725149) (not e!2607700))))

(declare-fun pBis!121 () List!46300)

(assert (=> b!4200783 (= res!1725149 (isPrefix!4573 pBis!121 input!3517))))

(declare-fun e!2607715 () Bool)

(declare-fun e!2607706 () Bool)

(declare-fun b!4200784 () Bool)

(declare-fun tp!1283541 () Bool)

(declare-fun inv!60730 (String!53590) Bool)

(declare-fun inv!60734 (TokenValueInjection!15316) Bool)

(assert (=> b!4200784 (= e!2607715 (and tp!1283541 (inv!60730 (tag!8578 (rule!10810 t!8364))) (inv!60734 (transformation!7714 (rule!10810 t!8364))) e!2607706))))

(declare-fun b!4200785 () Bool)

(declare-fun res!1725156 () Bool)

(assert (=> b!4200785 (=> res!1725156 e!2607716)))

(declare-fun list!16681 (BalanceConc!27444) List!46300)

(declare-fun charsOf!5137 (Token!14130) BalanceConc!27444)

(assert (=> b!4200785 (= res!1725156 (not (= (list!16681 (charsOf!5137 tBis!41)) pBis!121)))))

(declare-fun b!4200786 () Bool)

(declare-fun res!1725152 () Bool)

(assert (=> b!4200786 (=> (not res!1725152) (not e!2607700))))

(declare-fun p!3001 () List!46300)

(declare-fun suffix!1557 () List!46300)

(declare-fun ++!11788 (List!46300 List!46300) List!46300)

(assert (=> b!4200786 (= res!1725152 (= (++!11788 p!3001 suffix!1557) input!3517))))

(declare-fun b!4200787 () Bool)

(declare-fun tp!1283542 () Bool)

(assert (=> b!4200787 (= e!2607714 (and tp_is_empty!22205 tp!1283542))))

(declare-fun e!2607709 () Bool)

(declare-fun b!4200788 () Bool)

(declare-fun tp!1283536 () Bool)

(declare-fun e!2607701 () Bool)

(assert (=> b!4200788 (= e!2607701 (and tp!1283536 (inv!60730 (tag!8578 (h!51597 rules!3967))) (inv!60734 (transformation!7714 (h!51597 rules!3967))) e!2607709))))

(declare-fun b!4200789 () Bool)

(declare-fun e!2607693 () Bool)

(declare-fun tp!1283551 () Bool)

(assert (=> b!4200789 (= e!2607702 (and tp!1283551 (inv!60730 (tag!8578 rBis!178)) (inv!60734 (transformation!7714 rBis!178)) e!2607693))))

(declare-fun e!2607713 () Bool)

(assert (=> b!4200790 (= e!2607713 (and tp!1283546 tp!1283548))))

(declare-fun e!2607712 () Bool)

(declare-fun tp!1283538 () Bool)

(declare-fun b!4200791 () Bool)

(assert (=> b!4200791 (= e!2607712 (and tp!1283538 (inv!60730 (tag!8578 (rule!10810 tBis!41))) (inv!60734 (transformation!7714 (rule!10810 tBis!41))) e!2607713))))

(declare-fun b!4200792 () Bool)

(declare-fun res!1725157 () Bool)

(assert (=> b!4200792 (=> (not res!1725157) (not e!2607700))))

(declare-fun maxPrefix!4349 (LexerInterface!7309 List!46301 List!46300) Option!9902)

(assert (=> b!4200792 (= res!1725157 (= (maxPrefix!4349 thiss!26544 rules!3967 input!3517) (Some!9901 (tuple2!43935 t!8364 suffix!1557))))))

(declare-fun b!4200793 () Bool)

(declare-fun tp!1283549 () Bool)

(assert (=> b!4200793 (= e!2607696 (and e!2607701 tp!1283549))))

(declare-fun tp!1283553 () Bool)

(declare-fun b!4200794 () Bool)

(declare-fun inv!21 (TokenValue!7944) Bool)

(assert (=> b!4200794 (= e!2607710 (and (inv!21 (value!240378 tBis!41)) e!2607712 tp!1283553))))

(assert (=> b!4200795 (= e!2607706 (and tp!1283552 tp!1283537))))

(declare-fun b!4200796 () Bool)

(declare-fun res!1725154 () Bool)

(assert (=> b!4200796 (=> (not res!1725154) (not e!2607700))))

(declare-fun rulesInvariant!6520 (LexerInterface!7309 List!46301) Bool)

(assert (=> b!4200796 (= res!1725154 (rulesInvariant!6520 thiss!26544 rules!3967))))

(declare-fun b!4200797 () Bool)

(declare-fun res!1725160 () Bool)

(assert (=> b!4200797 (=> (not res!1725160) (not e!2607700))))

(declare-fun isEmpty!27339 (List!46301) Bool)

(assert (=> b!4200797 (= res!1725160 (not (isEmpty!27339 rules!3967)))))

(declare-fun tp!1283544 () Bool)

(declare-fun b!4200798 () Bool)

(assert (=> b!4200798 (= e!2607697 (and (inv!21 (value!240378 t!8364)) e!2607715 tp!1283544))))

(declare-fun b!4200799 () Bool)

(declare-fun res!1725158 () Bool)

(assert (=> b!4200799 (=> (not res!1725158) (not e!2607700))))

(assert (=> b!4200799 (= res!1725158 (isPrefix!4573 p!3001 input!3517))))

(declare-fun b!4200800 () Bool)

(assert (=> b!4200800 (= e!2607716 true)))

(declare-fun lt!1496324 () List!46300)

(assert (=> b!4200800 (= lt!1496324 (++!11788 pBis!121 suffixBis!41))))

(declare-fun b!4200801 () Bool)

(declare-fun res!1725151 () Bool)

(assert (=> b!4200801 (=> res!1725151 e!2607716)))

(assert (=> b!4200801 (= res!1725151 (not (= (rule!10810 tBis!41) rBis!178)))))

(declare-fun b!4200802 () Bool)

(declare-fun tp!1283540 () Bool)

(assert (=> b!4200802 (= e!2607695 (and tp_is_empty!22205 tp!1283540))))

(assert (=> b!4200803 (= e!2607693 (and tp!1283550 tp!1283539))))

(declare-fun b!4200804 () Bool)

(declare-fun res!1725159 () Bool)

(assert (=> b!4200804 (=> (not res!1725159) (not e!2607700))))

(declare-fun ruleValid!3426 (LexerInterface!7309 Rule!15228) Bool)

(assert (=> b!4200804 (= res!1725159 (ruleValid!3426 thiss!26544 rBis!178))))

(assert (=> b!4200805 (= e!2607709 (and tp!1283554 tp!1283535))))

(declare-fun b!4200806 () Bool)

(declare-fun tp!1283543 () Bool)

(assert (=> b!4200806 (= e!2607698 (and tp_is_empty!22205 tp!1283543))))

(assert (= (and start!401290 res!1725150) b!4200786))

(assert (= (and b!4200786 res!1725152) b!4200799))

(assert (= (and b!4200799 res!1725158) b!4200783))

(assert (= (and b!4200783 res!1725149) b!4200797))

(assert (= (and b!4200797 res!1725160) b!4200796))

(assert (= (and b!4200796 res!1725154) b!4200782))

(assert (= (and b!4200782 res!1725153) b!4200792))

(assert (= (and b!4200792 res!1725157) b!4200804))

(assert (= (and b!4200804 res!1725159) b!4200781))

(assert (= (and b!4200781 (not res!1725155)) b!4200801))

(assert (= (and b!4200801 (not res!1725151)) b!4200785))

(assert (= (and b!4200785 (not res!1725156)) b!4200800))

(assert (= b!4200791 b!4200790))

(assert (= b!4200794 b!4200791))

(assert (= start!401290 b!4200794))

(assert (= b!4200789 b!4200803))

(assert (= start!401290 b!4200789))

(assert (= (and start!401290 ((_ is Cons!46176) p!3001)) b!4200802))

(assert (= b!4200788 b!4200805))

(assert (= b!4200793 b!4200788))

(assert (= (and start!401290 ((_ is Cons!46177) rules!3967)) b!4200793))

(assert (= (and start!401290 ((_ is Cons!46176) input!3517)) b!4200780))

(assert (= b!4200784 b!4200795))

(assert (= b!4200798 b!4200784))

(assert (= start!401290 b!4200798))

(assert (= (and start!401290 ((_ is Cons!46176) pBis!121)) b!4200787))

(assert (= (and start!401290 ((_ is Cons!46176) suffix!1557)) b!4200806))

(assert (= (and start!401290 ((_ is Cons!46176) suffixBis!41)) b!4200779))

(declare-fun m!4789027 () Bool)

(assert (=> b!4200786 m!4789027))

(declare-fun m!4789029 () Bool)

(assert (=> b!4200782 m!4789029))

(declare-fun m!4789031 () Bool)

(assert (=> b!4200799 m!4789031))

(declare-fun m!4789033 () Bool)

(assert (=> b!4200804 m!4789033))

(declare-fun m!4789035 () Bool)

(assert (=> b!4200789 m!4789035))

(declare-fun m!4789037 () Bool)

(assert (=> b!4200789 m!4789037))

(declare-fun m!4789039 () Bool)

(assert (=> b!4200781 m!4789039))

(declare-fun m!4789041 () Bool)

(assert (=> b!4200781 m!4789041))

(declare-fun m!4789043 () Bool)

(assert (=> b!4200781 m!4789043))

(declare-fun m!4789045 () Bool)

(assert (=> b!4200788 m!4789045))

(declare-fun m!4789047 () Bool)

(assert (=> b!4200788 m!4789047))

(declare-fun m!4789049 () Bool)

(assert (=> b!4200794 m!4789049))

(declare-fun m!4789051 () Bool)

(assert (=> b!4200797 m!4789051))

(declare-fun m!4789053 () Bool)

(assert (=> b!4200784 m!4789053))

(declare-fun m!4789055 () Bool)

(assert (=> b!4200784 m!4789055))

(declare-fun m!4789057 () Bool)

(assert (=> b!4200785 m!4789057))

(assert (=> b!4200785 m!4789057))

(declare-fun m!4789059 () Bool)

(assert (=> b!4200785 m!4789059))

(declare-fun m!4789061 () Bool)

(assert (=> b!4200798 m!4789061))

(declare-fun m!4789063 () Bool)

(assert (=> b!4200796 m!4789063))

(declare-fun m!4789065 () Bool)

(assert (=> b!4200792 m!4789065))

(declare-fun m!4789067 () Bool)

(assert (=> b!4200791 m!4789067))

(declare-fun m!4789069 () Bool)

(assert (=> b!4200791 m!4789069))

(declare-fun m!4789071 () Bool)

(assert (=> start!401290 m!4789071))

(declare-fun m!4789073 () Bool)

(assert (=> start!401290 m!4789073))

(declare-fun m!4789075 () Bool)

(assert (=> b!4200783 m!4789075))

(declare-fun m!4789077 () Bool)

(assert (=> b!4200800 m!4789077))

(check-sat (not b_next!123299) (not b!4200806) (not b!4200785) (not b_next!123309) (not b_next!123303) tp_is_empty!22205 (not b!4200789) (not b!4200799) (not b_next!123311) (not b_next!123313) (not start!401290) (not b!4200797) (not b!4200804) (not b!4200781) (not b!4200802) (not b!4200783) (not b_next!123305) (not b_next!123307) (not b!4200779) (not b!4200782) b_and!329651 (not b!4200786) (not b!4200787) (not b!4200792) (not b!4200791) (not b!4200793) (not b!4200784) (not b!4200798) b_and!329653 b_and!329649 (not b!4200780) b_and!329657 b_and!329661 (not b!4200796) b_and!329655 (not b!4200794) b_and!329659 (not b!4200800) b_and!329663 (not b_next!123301) (not b!4200788))
(check-sat (not b_next!123299) (not b_next!123309) (not b_next!123303) b_and!329651 b_and!329653 (not b_next!123311) (not b_next!123313) b_and!329659 (not b_next!123305) (not b_next!123307) b_and!329649 b_and!329657 b_and!329661 b_and!329655 b_and!329663 (not b_next!123301))
