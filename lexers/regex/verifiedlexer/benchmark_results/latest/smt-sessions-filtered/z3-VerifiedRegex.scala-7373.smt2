; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!391894 () Bool)

(assert start!391894)

(declare-fun b!4129563 () Bool)

(declare-fun b_free!117083 () Bool)

(declare-fun b_next!117787 () Bool)

(assert (=> b!4129563 (= b_free!117083 (not b_next!117787))))

(declare-fun tp!1258443 () Bool)

(declare-fun b_and!319941 () Bool)

(assert (=> b!4129563 (= tp!1258443 b_and!319941)))

(declare-fun b_free!117085 () Bool)

(declare-fun b_next!117789 () Bool)

(assert (=> b!4129563 (= b_free!117085 (not b_next!117789))))

(declare-fun tp!1258446 () Bool)

(declare-fun b_and!319943 () Bool)

(assert (=> b!4129563 (= tp!1258446 b_and!319943)))

(declare-fun b!4129553 () Bool)

(declare-fun b_free!117087 () Bool)

(declare-fun b_next!117791 () Bool)

(assert (=> b!4129553 (= b_free!117087 (not b_next!117791))))

(declare-fun tp!1258440 () Bool)

(declare-fun b_and!319945 () Bool)

(assert (=> b!4129553 (= tp!1258440 b_and!319945)))

(declare-fun b_free!117089 () Bool)

(declare-fun b_next!117793 () Bool)

(assert (=> b!4129553 (= b_free!117089 (not b_next!117793))))

(declare-fun tp!1258438 () Bool)

(declare-fun b_and!319947 () Bool)

(assert (=> b!4129553 (= tp!1258438 b_and!319947)))

(declare-fun b!4129568 () Bool)

(declare-fun b_free!117091 () Bool)

(declare-fun b_next!117795 () Bool)

(assert (=> b!4129568 (= b_free!117091 (not b_next!117795))))

(declare-fun tp!1258445 () Bool)

(declare-fun b_and!319949 () Bool)

(assert (=> b!4129568 (= tp!1258445 b_and!319949)))

(declare-fun b_free!117093 () Bool)

(declare-fun b_next!117797 () Bool)

(assert (=> b!4129568 (= b_free!117093 (not b_next!117797))))

(declare-fun tp!1258439 () Bool)

(declare-fun b_and!319951 () Bool)

(assert (=> b!4129568 (= tp!1258439 b_and!319951)))

(declare-fun b!4129548 () Bool)

(declare-fun e!2562277 () Bool)

(declare-datatypes ((List!44827 0))(
  ( (Nil!44703) (Cons!44703 (h!50123 (_ BitVec 16)) (t!341436 List!44827)) )
))
(declare-datatypes ((TokenValue!7548 0))(
  ( (FloatLiteralValue!15096 (text!53281 List!44827)) (TokenValueExt!7547 (__x!27313 Int)) (Broken!37740 (value!229091 List!44827)) (Object!7671) (End!7548) (Def!7548) (Underscore!7548) (Match!7548) (Else!7548) (Error!7548) (Case!7548) (If!7548) (Extends!7548) (Abstract!7548) (Class!7548) (Val!7548) (DelimiterValue!15096 (del!7608 List!44827)) (KeywordValue!7554 (value!229092 List!44827)) (CommentValue!15096 (value!229093 List!44827)) (WhitespaceValue!15096 (value!229094 List!44827)) (IndentationValue!7548 (value!229095 List!44827)) (String!51489) (Int32!7548) (Broken!37741 (value!229096 List!44827)) (Boolean!7549) (Unit!64036) (OperatorValue!7551 (op!7608 List!44827)) (IdentifierValue!15096 (value!229097 List!44827)) (IdentifierValue!15097 (value!229098 List!44827)) (WhitespaceValue!15097 (value!229099 List!44827)) (True!15096) (False!15096) (Broken!37742 (value!229100 List!44827)) (Broken!37743 (value!229101 List!44827)) (True!15097) (RightBrace!7548) (RightBracket!7548) (Colon!7548) (Null!7548) (Comma!7548) (LeftBracket!7548) (False!15097) (LeftBrace!7548) (ImaginaryLiteralValue!7548 (text!53282 List!44827)) (StringLiteralValue!22644 (value!229102 List!44827)) (EOFValue!7548 (value!229103 List!44827)) (IdentValue!7548 (value!229104 List!44827)) (DelimiterValue!15097 (value!229105 List!44827)) (DedentValue!7548 (value!229106 List!44827)) (NewLineValue!7548 (value!229107 List!44827)) (IntegerValue!22644 (value!229108 (_ BitVec 32)) (text!53283 List!44827)) (IntegerValue!22645 (value!229109 Int) (text!53284 List!44827)) (Times!7548) (Or!7548) (Equal!7548) (Minus!7548) (Broken!37744 (value!229110 List!44827)) (And!7548) (Div!7548) (LessEqual!7548) (Mod!7548) (Concat!19771) (Not!7548) (Plus!7548) (SpaceValue!7548 (value!229111 List!44827)) (IntegerValue!22646 (value!229112 Int) (text!53285 List!44827)) (StringLiteralValue!22645 (text!53286 List!44827)) (FloatLiteralValue!15097 (text!53287 List!44827)) (BytesLiteralValue!7548 (value!229113 List!44827)) (CommentValue!15097 (value!229114 List!44827)) (StringLiteralValue!22646 (value!229115 List!44827)) (ErrorTokenValue!7548 (msg!7609 List!44827)) )
))
(declare-datatypes ((C!24632 0))(
  ( (C!24633 (val!14426 Int)) )
))
(declare-datatypes ((List!44828 0))(
  ( (Nil!44704) (Cons!44704 (h!50124 C!24632) (t!341437 List!44828)) )
))
(declare-datatypes ((IArray!27063 0))(
  ( (IArray!27064 (innerList!13589 List!44828)) )
))
(declare-datatypes ((Conc!13529 0))(
  ( (Node!13529 (left!33474 Conc!13529) (right!33804 Conc!13529) (csize!27288 Int) (cheight!13740 Int)) (Leaf!20903 (xs!16835 IArray!27063) (csize!27289 Int)) (Empty!13529) )
))
(declare-datatypes ((BalanceConc!26652 0))(
  ( (BalanceConc!26653 (c!708640 Conc!13529)) )
))
(declare-datatypes ((String!51490 0))(
  ( (String!51491 (value!229116 String)) )
))
(declare-datatypes ((Regex!12223 0))(
  ( (ElementMatch!12223 (c!708641 C!24632)) (Concat!19772 (regOne!24958 Regex!12223) (regTwo!24958 Regex!12223)) (EmptyExpr!12223) (Star!12223 (reg!12552 Regex!12223)) (EmptyLang!12223) (Union!12223 (regOne!24959 Regex!12223) (regTwo!24959 Regex!12223)) )
))
(declare-datatypes ((TokenValueInjection!14524 0))(
  ( (TokenValueInjection!14525 (toValue!9978 Int) (toChars!9837 Int)) )
))
(declare-datatypes ((Rule!14436 0))(
  ( (Rule!14437 (regex!7318 Regex!12223) (tag!8178 String!51490) (isSeparator!7318 Bool) (transformation!7318 TokenValueInjection!14524)) )
))
(declare-datatypes ((List!44829 0))(
  ( (Nil!44705) (Cons!44705 (h!50125 Rule!14436) (t!341438 List!44829)) )
))
(declare-fun rules!3756 () List!44829)

(declare-fun r!4008 () Rule!14436)

(declare-fun contains!8994 (List!44829 Rule!14436) Bool)

(assert (=> b!4129548 (= e!2562277 (contains!8994 (t!341438 rules!3756) r!4008))))

(declare-fun b!4129549 () Bool)

(declare-fun e!2562283 () Bool)

(declare-fun e!2562270 () Bool)

(assert (=> b!4129549 (= e!2562283 e!2562270)))

(declare-fun res!1688142 () Bool)

(assert (=> b!4129549 (=> (not res!1688142) (not e!2562270))))

(declare-fun input!3238 () List!44828)

(declare-fun p!2912 () List!44828)

(declare-datatypes ((LexerInterface!6907 0))(
  ( (LexerInterfaceExt!6904 (__x!27314 Int)) (Lexer!6905) )
))
(declare-fun thiss!25645 () LexerInterface!6907)

(declare-fun lt!1473010 () BalanceConc!26652)

(declare-datatypes ((Token!13566 0))(
  ( (Token!13567 (value!229117 TokenValue!7548) (rule!10410 Rule!14436) (size!33101 Int) (originalCharacters!7814 List!44828)) )
))
(declare-datatypes ((tuple2!43146 0))(
  ( (tuple2!43147 (_1!24707 Token!13566) (_2!24707 List!44828)) )
))
(declare-datatypes ((Option!9626 0))(
  ( (None!9625) (Some!9625 (v!40229 tuple2!43146)) )
))
(declare-fun maxPrefix!4099 (LexerInterface!6907 List!44829 List!44828) Option!9626)

(declare-fun apply!10391 (TokenValueInjection!14524 BalanceConc!26652) TokenValue!7548)

(declare-fun size!33102 (List!44828) Int)

(declare-fun getSuffix!2582 (List!44828 List!44828) List!44828)

(assert (=> b!4129549 (= res!1688142 (= (maxPrefix!4099 thiss!25645 rules!3756 input!3238) (Some!9625 (tuple2!43147 (Token!13567 (apply!10391 (transformation!7318 r!4008) lt!1473010) r!4008 (size!33102 p!2912) p!2912) (getSuffix!2582 input!3238 p!2912)))))))

(declare-datatypes ((Unit!64037 0))(
  ( (Unit!64038) )
))
(declare-fun lt!1473012 () Unit!64037)

(declare-fun lemmaSemiInverse!2176 (TokenValueInjection!14524 BalanceConc!26652) Unit!64037)

(assert (=> b!4129549 (= lt!1473012 (lemmaSemiInverse!2176 (transformation!7318 r!4008) lt!1473010))))

(declare-fun seqFromList!5435 (List!44828) BalanceConc!26652)

(assert (=> b!4129549 (= lt!1473010 (seqFromList!5435 p!2912))))

(declare-fun b!4129550 () Bool)

(declare-fun res!1688139 () Bool)

(assert (=> b!4129550 (=> (not res!1688139) (not e!2562283))))

(declare-fun rBis!149 () Rule!14436)

(assert (=> b!4129550 (= res!1688139 (contains!8994 rules!3756 rBis!149))))

(declare-fun b!4129551 () Bool)

(declare-fun res!1688132 () Bool)

(assert (=> b!4129551 (=> (not res!1688132) (not e!2562270))))

(declare-fun getIndex!666 (List!44829 Rule!14436) Int)

(assert (=> b!4129551 (= res!1688132 (< (getIndex!666 rules!3756 rBis!149) (getIndex!666 rules!3756 r!4008)))))

(declare-fun tp!1258444 () Bool)

(declare-fun e!2562276 () Bool)

(declare-fun e!2562275 () Bool)

(declare-fun b!4129552 () Bool)

(declare-fun inv!59292 (String!51490) Bool)

(declare-fun inv!59294 (TokenValueInjection!14524) Bool)

(assert (=> b!4129552 (= e!2562275 (and tp!1258444 (inv!59292 (tag!8178 (h!50125 rules!3756))) (inv!59294 (transformation!7318 (h!50125 rules!3756))) e!2562276))))

(declare-fun b!4129554 () Bool)

(assert (=> b!4129554 (= e!2562270 (not e!2562277))))

(declare-fun res!1688135 () Bool)

(assert (=> b!4129554 (=> res!1688135 e!2562277)))

(get-info :version)

(assert (=> b!4129554 (= res!1688135 (or (and ((_ is Cons!44705) rules!3756) (= (h!50125 rules!3756) rBis!149)) (not ((_ is Cons!44705) rules!3756)) (= (h!50125 rules!3756) rBis!149)))))

(declare-fun lt!1473009 () Unit!64037)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2170 (LexerInterface!6907 Rule!14436 List!44829) Unit!64037)

(assert (=> b!4129554 (= lt!1473009 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2170 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3126 (LexerInterface!6907 Rule!14436) Bool)

(assert (=> b!4129554 (ruleValid!3126 thiss!25645 rBis!149)))

(declare-fun lt!1473011 () Unit!64037)

(assert (=> b!4129554 (= lt!1473011 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2170 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4129555 () Bool)

(declare-fun e!2562271 () Bool)

(declare-fun tp_is_empty!21369 () Bool)

(declare-fun tp!1258436 () Bool)

(assert (=> b!4129555 (= e!2562271 (and tp_is_empty!21369 tp!1258436))))

(declare-fun tp!1258437 () Bool)

(declare-fun e!2562274 () Bool)

(declare-fun e!2562272 () Bool)

(declare-fun b!4129556 () Bool)

(assert (=> b!4129556 (= e!2562272 (and tp!1258437 (inv!59292 (tag!8178 r!4008)) (inv!59294 (transformation!7318 r!4008)) e!2562274))))

(declare-fun b!4129557 () Bool)

(declare-fun res!1688137 () Bool)

(assert (=> b!4129557 (=> (not res!1688137) (not e!2562283))))

(assert (=> b!4129557 (= res!1688137 (contains!8994 rules!3756 r!4008))))

(declare-fun b!4129558 () Bool)

(declare-fun res!1688136 () Bool)

(assert (=> b!4129558 (=> (not res!1688136) (not e!2562283))))

(declare-fun rulesInvariant!6204 (LexerInterface!6907 List!44829) Bool)

(assert (=> b!4129558 (= res!1688136 (rulesInvariant!6204 thiss!25645 rules!3756))))

(declare-fun b!4129559 () Bool)

(declare-fun res!1688134 () Bool)

(assert (=> b!4129559 (=> (not res!1688134) (not e!2562283))))

(declare-fun isEmpty!26615 (List!44829) Bool)

(assert (=> b!4129559 (= res!1688134 (not (isEmpty!26615 rules!3756)))))

(assert (=> b!4129553 (= e!2562276 (and tp!1258440 tp!1258438))))

(declare-fun res!1688131 () Bool)

(assert (=> start!391894 (=> (not res!1688131) (not e!2562283))))

(assert (=> start!391894 (= res!1688131 ((_ is Lexer!6905) thiss!25645))))

(assert (=> start!391894 e!2562283))

(declare-fun e!2562273 () Bool)

(assert (=> start!391894 e!2562273))

(declare-fun e!2562282 () Bool)

(assert (=> start!391894 e!2562282))

(assert (=> start!391894 true))

(assert (=> start!391894 e!2562272))

(assert (=> start!391894 e!2562271))

(declare-fun e!2562281 () Bool)

(assert (=> start!391894 e!2562281))

(declare-fun b!4129560 () Bool)

(declare-fun res!1688140 () Bool)

(assert (=> b!4129560 (=> (not res!1688140) (not e!2562270))))

(assert (=> b!4129560 (= res!1688140 (ruleValid!3126 thiss!25645 r!4008))))

(declare-fun b!4129561 () Bool)

(declare-fun res!1688133 () Bool)

(assert (=> b!4129561 (=> (not res!1688133) (not e!2562270))))

(declare-fun matchR!6054 (Regex!12223 List!44828) Bool)

(assert (=> b!4129561 (= res!1688133 (matchR!6054 (regex!7318 r!4008) p!2912))))

(declare-fun b!4129562 () Bool)

(declare-fun res!1688141 () Bool)

(assert (=> b!4129562 (=> (not res!1688141) (not e!2562283))))

(declare-fun isEmpty!26616 (List!44828) Bool)

(assert (=> b!4129562 (= res!1688141 (not (isEmpty!26616 p!2912)))))

(declare-fun e!2562279 () Bool)

(assert (=> b!4129563 (= e!2562279 (and tp!1258443 tp!1258446))))

(declare-fun tp!1258435 () Bool)

(declare-fun b!4129564 () Bool)

(assert (=> b!4129564 (= e!2562281 (and tp!1258435 (inv!59292 (tag!8178 rBis!149)) (inv!59294 (transformation!7318 rBis!149)) e!2562279))))

(declare-fun b!4129565 () Bool)

(declare-fun tp!1258442 () Bool)

(assert (=> b!4129565 (= e!2562282 (and tp_is_empty!21369 tp!1258442))))

(declare-fun b!4129566 () Bool)

(declare-fun res!1688138 () Bool)

(assert (=> b!4129566 (=> (not res!1688138) (not e!2562283))))

(declare-fun isPrefix!4253 (List!44828 List!44828) Bool)

(assert (=> b!4129566 (= res!1688138 (isPrefix!4253 p!2912 input!3238))))

(declare-fun b!4129567 () Bool)

(declare-fun tp!1258441 () Bool)

(assert (=> b!4129567 (= e!2562273 (and e!2562275 tp!1258441))))

(assert (=> b!4129568 (= e!2562274 (and tp!1258445 tp!1258439))))

(assert (= (and start!391894 res!1688131) b!4129566))

(assert (= (and b!4129566 res!1688138) b!4129559))

(assert (= (and b!4129559 res!1688134) b!4129558))

(assert (= (and b!4129558 res!1688136) b!4129557))

(assert (= (and b!4129557 res!1688137) b!4129550))

(assert (= (and b!4129550 res!1688139) b!4129562))

(assert (= (and b!4129562 res!1688141) b!4129549))

(assert (= (and b!4129549 res!1688142) b!4129561))

(assert (= (and b!4129561 res!1688133) b!4129551))

(assert (= (and b!4129551 res!1688132) b!4129560))

(assert (= (and b!4129560 res!1688140) b!4129554))

(assert (= (and b!4129554 (not res!1688135)) b!4129548))

(assert (= b!4129552 b!4129553))

(assert (= b!4129567 b!4129552))

(assert (= (and start!391894 ((_ is Cons!44705) rules!3756)) b!4129567))

(assert (= (and start!391894 ((_ is Cons!44704) p!2912)) b!4129565))

(assert (= b!4129556 b!4129568))

(assert (= start!391894 b!4129556))

(assert (= (and start!391894 ((_ is Cons!44704) input!3238)) b!4129555))

(assert (= b!4129564 b!4129563))

(assert (= start!391894 b!4129564))

(declare-fun m!4727625 () Bool)

(assert (=> b!4129559 m!4727625))

(declare-fun m!4727627 () Bool)

(assert (=> b!4129557 m!4727627))

(declare-fun m!4727629 () Bool)

(assert (=> b!4129560 m!4727629))

(declare-fun m!4727631 () Bool)

(assert (=> b!4129548 m!4727631))

(declare-fun m!4727633 () Bool)

(assert (=> b!4129554 m!4727633))

(declare-fun m!4727635 () Bool)

(assert (=> b!4129554 m!4727635))

(declare-fun m!4727637 () Bool)

(assert (=> b!4129554 m!4727637))

(declare-fun m!4727639 () Bool)

(assert (=> b!4129558 m!4727639))

(declare-fun m!4727641 () Bool)

(assert (=> b!4129556 m!4727641))

(declare-fun m!4727643 () Bool)

(assert (=> b!4129556 m!4727643))

(declare-fun m!4727645 () Bool)

(assert (=> b!4129551 m!4727645))

(declare-fun m!4727647 () Bool)

(assert (=> b!4129551 m!4727647))

(declare-fun m!4727649 () Bool)

(assert (=> b!4129549 m!4727649))

(declare-fun m!4727651 () Bool)

(assert (=> b!4129549 m!4727651))

(declare-fun m!4727653 () Bool)

(assert (=> b!4129549 m!4727653))

(declare-fun m!4727655 () Bool)

(assert (=> b!4129549 m!4727655))

(declare-fun m!4727657 () Bool)

(assert (=> b!4129549 m!4727657))

(declare-fun m!4727659 () Bool)

(assert (=> b!4129549 m!4727659))

(declare-fun m!4727661 () Bool)

(assert (=> b!4129550 m!4727661))

(declare-fun m!4727663 () Bool)

(assert (=> b!4129564 m!4727663))

(declare-fun m!4727665 () Bool)

(assert (=> b!4129564 m!4727665))

(declare-fun m!4727667 () Bool)

(assert (=> b!4129562 m!4727667))

(declare-fun m!4727669 () Bool)

(assert (=> b!4129552 m!4727669))

(declare-fun m!4727671 () Bool)

(assert (=> b!4129552 m!4727671))

(declare-fun m!4727673 () Bool)

(assert (=> b!4129561 m!4727673))

(declare-fun m!4727675 () Bool)

(assert (=> b!4129566 m!4727675))

(check-sat (not b!4129558) (not b_next!117791) (not b!4129551) (not b!4129550) (not b!4129567) (not b!4129564) (not b_next!117787) (not b_next!117797) (not b_next!117793) b_and!319949 (not b!4129559) b_and!319941 (not b!4129557) tp_is_empty!21369 (not b!4129556) (not b!4129560) b_and!319947 (not b_next!117789) (not b!4129552) (not b!4129555) (not b!4129562) (not b_next!117795) (not b!4129565) b_and!319943 (not b!4129561) (not b!4129549) (not b!4129566) b_and!319951 b_and!319945 (not b!4129554) (not b!4129548))
(check-sat (not b_next!117791) (not b_next!117795) (not b_next!117787) (not b_next!117797) (not b_next!117793) b_and!319949 b_and!319943 b_and!319941 b_and!319947 (not b_next!117789) b_and!319951 b_and!319945)
(get-model)

(declare-fun d!1223554 () Bool)

(assert (=> d!1223554 (ruleValid!3126 thiss!25645 r!4008)))

(declare-fun lt!1473020 () Unit!64037)

(declare-fun choose!25248 (LexerInterface!6907 Rule!14436 List!44829) Unit!64037)

(assert (=> d!1223554 (= lt!1473020 (choose!25248 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1223554 (contains!8994 rules!3756 r!4008)))

(assert (=> d!1223554 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2170 thiss!25645 r!4008 rules!3756) lt!1473020)))

(declare-fun bs!594982 () Bool)

(assert (= bs!594982 d!1223554))

(assert (=> bs!594982 m!4727629))

(declare-fun m!4727689 () Bool)

(assert (=> bs!594982 m!4727689))

(assert (=> bs!594982 m!4727627))

(assert (=> b!4129554 d!1223554))

(declare-fun d!1223558 () Bool)

(declare-fun res!1688169 () Bool)

(declare-fun e!2562296 () Bool)

(assert (=> d!1223558 (=> (not res!1688169) (not e!2562296))))

(declare-fun validRegex!5499 (Regex!12223) Bool)

(assert (=> d!1223558 (= res!1688169 (validRegex!5499 (regex!7318 rBis!149)))))

(assert (=> d!1223558 (= (ruleValid!3126 thiss!25645 rBis!149) e!2562296)))

(declare-fun b!4129585 () Bool)

(declare-fun res!1688170 () Bool)

(assert (=> b!4129585 (=> (not res!1688170) (not e!2562296))))

(declare-fun nullable!4291 (Regex!12223) Bool)

(assert (=> b!4129585 (= res!1688170 (not (nullable!4291 (regex!7318 rBis!149))))))

(declare-fun b!4129586 () Bool)

(assert (=> b!4129586 (= e!2562296 (not (= (tag!8178 rBis!149) (String!51491 ""))))))

(assert (= (and d!1223558 res!1688169) b!4129585))

(assert (= (and b!4129585 res!1688170) b!4129586))

(declare-fun m!4727691 () Bool)

(assert (=> d!1223558 m!4727691))

(declare-fun m!4727693 () Bool)

(assert (=> b!4129585 m!4727693))

(assert (=> b!4129554 d!1223558))

(declare-fun d!1223560 () Bool)

(assert (=> d!1223560 (ruleValid!3126 thiss!25645 rBis!149)))

(declare-fun lt!1473021 () Unit!64037)

(assert (=> d!1223560 (= lt!1473021 (choose!25248 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1223560 (contains!8994 rules!3756 rBis!149)))

(assert (=> d!1223560 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2170 thiss!25645 rBis!149 rules!3756) lt!1473021)))

(declare-fun bs!594983 () Bool)

(assert (= bs!594983 d!1223560))

(assert (=> bs!594983 m!4727635))

(declare-fun m!4727695 () Bool)

(assert (=> bs!594983 m!4727695))

(assert (=> bs!594983 m!4727661))

(assert (=> b!4129554 d!1223560))

(declare-fun d!1223562 () Bool)

(assert (=> d!1223562 (= (inv!59292 (tag!8178 r!4008)) (= (mod (str.len (value!229116 (tag!8178 r!4008))) 2) 0))))

(assert (=> b!4129556 d!1223562))

(declare-fun d!1223564 () Bool)

(declare-fun res!1688173 () Bool)

(declare-fun e!2562299 () Bool)

(assert (=> d!1223564 (=> (not res!1688173) (not e!2562299))))

(declare-fun semiInverseModEq!3152 (Int Int) Bool)

(assert (=> d!1223564 (= res!1688173 (semiInverseModEq!3152 (toChars!9837 (transformation!7318 r!4008)) (toValue!9978 (transformation!7318 r!4008))))))

(assert (=> d!1223564 (= (inv!59294 (transformation!7318 r!4008)) e!2562299)))

(declare-fun b!4129589 () Bool)

(declare-fun equivClasses!3051 (Int Int) Bool)

(assert (=> b!4129589 (= e!2562299 (equivClasses!3051 (toChars!9837 (transformation!7318 r!4008)) (toValue!9978 (transformation!7318 r!4008))))))

(assert (= (and d!1223564 res!1688173) b!4129589))

(declare-fun m!4727697 () Bool)

(assert (=> d!1223564 m!4727697))

(declare-fun m!4727699 () Bool)

(assert (=> b!4129589 m!4727699))

(assert (=> b!4129556 d!1223564))

(declare-fun b!4129601 () Bool)

(declare-fun e!2562306 () Bool)

(assert (=> b!4129601 (= e!2562306 (>= (size!33102 input!3238) (size!33102 p!2912)))))

(declare-fun b!4129598 () Bool)

(declare-fun e!2562307 () Bool)

(declare-fun e!2562308 () Bool)

(assert (=> b!4129598 (= e!2562307 e!2562308)))

(declare-fun res!1688185 () Bool)

(assert (=> b!4129598 (=> (not res!1688185) (not e!2562308))))

(assert (=> b!4129598 (= res!1688185 (not ((_ is Nil!44704) input!3238)))))

(declare-fun b!4129599 () Bool)

(declare-fun res!1688184 () Bool)

(assert (=> b!4129599 (=> (not res!1688184) (not e!2562308))))

(declare-fun head!8700 (List!44828) C!24632)

(assert (=> b!4129599 (= res!1688184 (= (head!8700 p!2912) (head!8700 input!3238)))))

(declare-fun b!4129600 () Bool)

(declare-fun tail!6473 (List!44828) List!44828)

(assert (=> b!4129600 (= e!2562308 (isPrefix!4253 (tail!6473 p!2912) (tail!6473 input!3238)))))

(declare-fun d!1223566 () Bool)

(assert (=> d!1223566 e!2562306))

(declare-fun res!1688183 () Bool)

(assert (=> d!1223566 (=> res!1688183 e!2562306)))

(declare-fun lt!1473024 () Bool)

(assert (=> d!1223566 (= res!1688183 (not lt!1473024))))

(assert (=> d!1223566 (= lt!1473024 e!2562307)))

(declare-fun res!1688182 () Bool)

(assert (=> d!1223566 (=> res!1688182 e!2562307)))

(assert (=> d!1223566 (= res!1688182 ((_ is Nil!44704) p!2912))))

(assert (=> d!1223566 (= (isPrefix!4253 p!2912 input!3238) lt!1473024)))

(assert (= (and d!1223566 (not res!1688182)) b!4129598))

(assert (= (and b!4129598 res!1688185) b!4129599))

(assert (= (and b!4129599 res!1688184) b!4129600))

(assert (= (and d!1223566 (not res!1688183)) b!4129601))

(declare-fun m!4727701 () Bool)

(assert (=> b!4129601 m!4727701))

(assert (=> b!4129601 m!4727651))

(declare-fun m!4727703 () Bool)

(assert (=> b!4129599 m!4727703))

(declare-fun m!4727705 () Bool)

(assert (=> b!4129599 m!4727705))

(declare-fun m!4727707 () Bool)

(assert (=> b!4129600 m!4727707))

(declare-fun m!4727709 () Bool)

(assert (=> b!4129600 m!4727709))

(assert (=> b!4129600 m!4727707))

(assert (=> b!4129600 m!4727709))

(declare-fun m!4727711 () Bool)

(assert (=> b!4129600 m!4727711))

(assert (=> b!4129566 d!1223566))

(declare-fun d!1223568 () Bool)

(declare-fun lt!1473027 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6893 (List!44829) (InoxSet Rule!14436))

(assert (=> d!1223568 (= lt!1473027 (select (content!6893 rules!3756) r!4008))))

(declare-fun e!2562314 () Bool)

(assert (=> d!1223568 (= lt!1473027 e!2562314)))

(declare-fun res!1688191 () Bool)

(assert (=> d!1223568 (=> (not res!1688191) (not e!2562314))))

(assert (=> d!1223568 (= res!1688191 ((_ is Cons!44705) rules!3756))))

(assert (=> d!1223568 (= (contains!8994 rules!3756 r!4008) lt!1473027)))

(declare-fun b!4129606 () Bool)

(declare-fun e!2562313 () Bool)

(assert (=> b!4129606 (= e!2562314 e!2562313)))

(declare-fun res!1688190 () Bool)

(assert (=> b!4129606 (=> res!1688190 e!2562313)))

(assert (=> b!4129606 (= res!1688190 (= (h!50125 rules!3756) r!4008))))

(declare-fun b!4129607 () Bool)

(assert (=> b!4129607 (= e!2562313 (contains!8994 (t!341438 rules!3756) r!4008))))

(assert (= (and d!1223568 res!1688191) b!4129606))

(assert (= (and b!4129606 (not res!1688190)) b!4129607))

(declare-fun m!4727713 () Bool)

(assert (=> d!1223568 m!4727713))

(declare-fun m!4727715 () Bool)

(assert (=> d!1223568 m!4727715))

(assert (=> b!4129607 m!4727631))

(assert (=> b!4129557 d!1223568))

(declare-fun d!1223570 () Bool)

(assert (=> d!1223570 (= (isEmpty!26615 rules!3756) ((_ is Nil!44705) rules!3756))))

(assert (=> b!4129559 d!1223570))

(declare-fun d!1223572 () Bool)

(declare-fun lt!1473028 () Bool)

(assert (=> d!1223572 (= lt!1473028 (select (content!6893 (t!341438 rules!3756)) r!4008))))

(declare-fun e!2562316 () Bool)

(assert (=> d!1223572 (= lt!1473028 e!2562316)))

(declare-fun res!1688193 () Bool)

(assert (=> d!1223572 (=> (not res!1688193) (not e!2562316))))

(assert (=> d!1223572 (= res!1688193 ((_ is Cons!44705) (t!341438 rules!3756)))))

(assert (=> d!1223572 (= (contains!8994 (t!341438 rules!3756) r!4008) lt!1473028)))

(declare-fun b!4129608 () Bool)

(declare-fun e!2562315 () Bool)

(assert (=> b!4129608 (= e!2562316 e!2562315)))

(declare-fun res!1688192 () Bool)

(assert (=> b!4129608 (=> res!1688192 e!2562315)))

(assert (=> b!4129608 (= res!1688192 (= (h!50125 (t!341438 rules!3756)) r!4008))))

(declare-fun b!4129609 () Bool)

(assert (=> b!4129609 (= e!2562315 (contains!8994 (t!341438 (t!341438 rules!3756)) r!4008))))

(assert (= (and d!1223572 res!1688193) b!4129608))

(assert (= (and b!4129608 (not res!1688192)) b!4129609))

(declare-fun m!4727717 () Bool)

(assert (=> d!1223572 m!4727717))

(declare-fun m!4727719 () Bool)

(assert (=> d!1223572 m!4727719))

(declare-fun m!4727721 () Bool)

(assert (=> b!4129609 m!4727721))

(assert (=> b!4129548 d!1223572))

(declare-fun d!1223574 () Bool)

(declare-fun res!1688196 () Bool)

(declare-fun e!2562319 () Bool)

(assert (=> d!1223574 (=> (not res!1688196) (not e!2562319))))

(declare-fun rulesValid!2867 (LexerInterface!6907 List!44829) Bool)

(assert (=> d!1223574 (= res!1688196 (rulesValid!2867 thiss!25645 rules!3756))))

(assert (=> d!1223574 (= (rulesInvariant!6204 thiss!25645 rules!3756) e!2562319)))

(declare-fun b!4129612 () Bool)

(declare-datatypes ((List!44830 0))(
  ( (Nil!44706) (Cons!44706 (h!50126 String!51490) (t!341471 List!44830)) )
))
(declare-fun noDuplicateTag!2950 (LexerInterface!6907 List!44829 List!44830) Bool)

(assert (=> b!4129612 (= e!2562319 (noDuplicateTag!2950 thiss!25645 rules!3756 Nil!44706))))

(assert (= (and d!1223574 res!1688196) b!4129612))

(declare-fun m!4727723 () Bool)

(assert (=> d!1223574 m!4727723))

(declare-fun m!4727725 () Bool)

(assert (=> b!4129612 m!4727725))

(assert (=> b!4129558 d!1223574))

(declare-fun d!1223576 () Bool)

(declare-fun res!1688197 () Bool)

(declare-fun e!2562320 () Bool)

(assert (=> d!1223576 (=> (not res!1688197) (not e!2562320))))

(assert (=> d!1223576 (= res!1688197 (validRegex!5499 (regex!7318 r!4008)))))

(assert (=> d!1223576 (= (ruleValid!3126 thiss!25645 r!4008) e!2562320)))

(declare-fun b!4129613 () Bool)

(declare-fun res!1688198 () Bool)

(assert (=> b!4129613 (=> (not res!1688198) (not e!2562320))))

(assert (=> b!4129613 (= res!1688198 (not (nullable!4291 (regex!7318 r!4008))))))

(declare-fun b!4129614 () Bool)

(assert (=> b!4129614 (= e!2562320 (not (= (tag!8178 r!4008) (String!51491 ""))))))

(assert (= (and d!1223576 res!1688197) b!4129613))

(assert (= (and b!4129613 res!1688198) b!4129614))

(declare-fun m!4727727 () Bool)

(assert (=> d!1223576 m!4727727))

(declare-fun m!4727729 () Bool)

(assert (=> b!4129613 m!4727729))

(assert (=> b!4129560 d!1223576))

(declare-fun b!4129700 () Bool)

(declare-fun e!2562370 () Bool)

(assert (=> b!4129700 (= e!2562370 true)))

(declare-fun d!1223578 () Bool)

(assert (=> d!1223578 e!2562370))

(assert (= d!1223578 b!4129700))

(declare-fun lambda!128809 () Int)

(declare-fun order!23557 () Int)

(declare-fun order!23559 () Int)

(declare-fun dynLambda!19139 (Int Int) Int)

(declare-fun dynLambda!19140 (Int Int) Int)

(assert (=> b!4129700 (< (dynLambda!19139 order!23557 (toValue!9978 (transformation!7318 r!4008))) (dynLambda!19140 order!23559 lambda!128809))))

(declare-fun order!23561 () Int)

(declare-fun dynLambda!19141 (Int Int) Int)

(assert (=> b!4129700 (< (dynLambda!19141 order!23561 (toChars!9837 (transformation!7318 r!4008))) (dynLambda!19140 order!23559 lambda!128809))))

(declare-fun list!16383 (BalanceConc!26652) List!44828)

(declare-fun dynLambda!19142 (Int TokenValue!7548) BalanceConc!26652)

(declare-fun dynLambda!19143 (Int BalanceConc!26652) TokenValue!7548)

(assert (=> d!1223578 (= (list!16383 (dynLambda!19142 (toChars!9837 (transformation!7318 r!4008)) (dynLambda!19143 (toValue!9978 (transformation!7318 r!4008)) lt!1473010))) (list!16383 lt!1473010))))

(declare-fun lt!1473060 () Unit!64037)

(declare-fun ForallOf!936 (Int BalanceConc!26652) Unit!64037)

(assert (=> d!1223578 (= lt!1473060 (ForallOf!936 lambda!128809 lt!1473010))))

(assert (=> d!1223578 (= (lemmaSemiInverse!2176 (transformation!7318 r!4008) lt!1473010) lt!1473060)))

(declare-fun b_lambda!121249 () Bool)

(assert (=> (not b_lambda!121249) (not d!1223578)))

(declare-fun tb!247843 () Bool)

(declare-fun t!341452 () Bool)

(assert (=> (and b!4129563 (= (toChars!9837 (transformation!7318 rBis!149)) (toChars!9837 (transformation!7318 r!4008))) t!341452) tb!247843))

(declare-fun tp!1258452 () Bool)

(declare-fun b!4129705 () Bool)

(declare-fun e!2562373 () Bool)

(declare-fun inv!59297 (Conc!13529) Bool)

(assert (=> b!4129705 (= e!2562373 (and (inv!59297 (c!708640 (dynLambda!19142 (toChars!9837 (transformation!7318 r!4008)) (dynLambda!19143 (toValue!9978 (transformation!7318 r!4008)) lt!1473010)))) tp!1258452))))

(declare-fun result!301180 () Bool)

(declare-fun inv!59298 (BalanceConc!26652) Bool)

(assert (=> tb!247843 (= result!301180 (and (inv!59298 (dynLambda!19142 (toChars!9837 (transformation!7318 r!4008)) (dynLambda!19143 (toValue!9978 (transformation!7318 r!4008)) lt!1473010))) e!2562373))))

(assert (= tb!247843 b!4129705))

(declare-fun m!4727813 () Bool)

(assert (=> b!4129705 m!4727813))

(declare-fun m!4727815 () Bool)

(assert (=> tb!247843 m!4727815))

(assert (=> d!1223578 t!341452))

(declare-fun b_and!319971 () Bool)

(assert (= b_and!319943 (and (=> t!341452 result!301180) b_and!319971)))

(declare-fun t!341454 () Bool)

(declare-fun tb!247845 () Bool)

(assert (=> (and b!4129553 (= (toChars!9837 (transformation!7318 (h!50125 rules!3756))) (toChars!9837 (transformation!7318 r!4008))) t!341454) tb!247845))

(declare-fun result!301184 () Bool)

(assert (= result!301184 result!301180))

(assert (=> d!1223578 t!341454))

(declare-fun b_and!319973 () Bool)

(assert (= b_and!319947 (and (=> t!341454 result!301184) b_and!319973)))

(declare-fun t!341456 () Bool)

(declare-fun tb!247847 () Bool)

(assert (=> (and b!4129568 (= (toChars!9837 (transformation!7318 r!4008)) (toChars!9837 (transformation!7318 r!4008))) t!341456) tb!247847))

(declare-fun result!301186 () Bool)

(assert (= result!301186 result!301180))

(assert (=> d!1223578 t!341456))

(declare-fun b_and!319975 () Bool)

(assert (= b_and!319951 (and (=> t!341456 result!301186) b_and!319975)))

(declare-fun b_lambda!121251 () Bool)

(assert (=> (not b_lambda!121251) (not d!1223578)))

(declare-fun t!341458 () Bool)

(declare-fun tb!247849 () Bool)

(assert (=> (and b!4129563 (= (toValue!9978 (transformation!7318 rBis!149)) (toValue!9978 (transformation!7318 r!4008))) t!341458) tb!247849))

(declare-fun result!301188 () Bool)

(declare-fun inv!21 (TokenValue!7548) Bool)

(assert (=> tb!247849 (= result!301188 (inv!21 (dynLambda!19143 (toValue!9978 (transformation!7318 r!4008)) lt!1473010)))))

(declare-fun m!4727817 () Bool)

(assert (=> tb!247849 m!4727817))

(assert (=> d!1223578 t!341458))

(declare-fun b_and!319977 () Bool)

(assert (= b_and!319941 (and (=> t!341458 result!301188) b_and!319977)))

(declare-fun tb!247851 () Bool)

(declare-fun t!341460 () Bool)

(assert (=> (and b!4129553 (= (toValue!9978 (transformation!7318 (h!50125 rules!3756))) (toValue!9978 (transformation!7318 r!4008))) t!341460) tb!247851))

(declare-fun result!301192 () Bool)

(assert (= result!301192 result!301188))

(assert (=> d!1223578 t!341460))

(declare-fun b_and!319979 () Bool)

(assert (= b_and!319945 (and (=> t!341460 result!301192) b_and!319979)))

(declare-fun t!341462 () Bool)

(declare-fun tb!247853 () Bool)

(assert (=> (and b!4129568 (= (toValue!9978 (transformation!7318 r!4008)) (toValue!9978 (transformation!7318 r!4008))) t!341462) tb!247853))

(declare-fun result!301194 () Bool)

(assert (= result!301194 result!301188))

(assert (=> d!1223578 t!341462))

(declare-fun b_and!319981 () Bool)

(assert (= b_and!319949 (and (=> t!341462 result!301194) b_and!319981)))

(declare-fun m!4727819 () Bool)

(assert (=> d!1223578 m!4727819))

(declare-fun m!4727821 () Bool)

(assert (=> d!1223578 m!4727821))

(declare-fun m!4727823 () Bool)

(assert (=> d!1223578 m!4727823))

(assert (=> d!1223578 m!4727823))

(assert (=> d!1223578 m!4727819))

(declare-fun m!4727825 () Bool)

(assert (=> d!1223578 m!4727825))

(declare-fun m!4727827 () Bool)

(assert (=> d!1223578 m!4727827))

(assert (=> b!4129549 d!1223578))

(declare-fun d!1223614 () Bool)

(declare-fun lt!1473065 () List!44828)

(declare-fun ++!11574 (List!44828 List!44828) List!44828)

(assert (=> d!1223614 (= (++!11574 p!2912 lt!1473065) input!3238)))

(declare-fun e!2562393 () List!44828)

(assert (=> d!1223614 (= lt!1473065 e!2562393)))

(declare-fun c!708669 () Bool)

(assert (=> d!1223614 (= c!708669 ((_ is Cons!44704) p!2912))))

(assert (=> d!1223614 (>= (size!33102 input!3238) (size!33102 p!2912))))

(assert (=> d!1223614 (= (getSuffix!2582 input!3238 p!2912) lt!1473065)))

(declare-fun b!4129740 () Bool)

(assert (=> b!4129740 (= e!2562393 (getSuffix!2582 (tail!6473 input!3238) (t!341437 p!2912)))))

(declare-fun b!4129741 () Bool)

(assert (=> b!4129741 (= e!2562393 input!3238)))

(assert (= (and d!1223614 c!708669) b!4129740))

(assert (= (and d!1223614 (not c!708669)) b!4129741))

(declare-fun m!4727829 () Bool)

(assert (=> d!1223614 m!4727829))

(assert (=> d!1223614 m!4727701))

(assert (=> d!1223614 m!4727651))

(assert (=> b!4129740 m!4727709))

(assert (=> b!4129740 m!4727709))

(declare-fun m!4727831 () Bool)

(assert (=> b!4129740 m!4727831))

(assert (=> b!4129549 d!1223614))

(declare-fun b!4129825 () Bool)

(declare-fun res!1688287 () Bool)

(declare-fun e!2562438 () Bool)

(assert (=> b!4129825 (=> (not res!1688287) (not e!2562438))))

(declare-fun lt!1473083 () Option!9626)

(declare-fun get!14583 (Option!9626) tuple2!43146)

(declare-fun charsOf!4928 (Token!13566) BalanceConc!26652)

(assert (=> b!4129825 (= res!1688287 (matchR!6054 (regex!7318 (rule!10410 (_1!24707 (get!14583 lt!1473083)))) (list!16383 (charsOf!4928 (_1!24707 (get!14583 lt!1473083))))))))

(declare-fun b!4129826 () Bool)

(declare-fun e!2562437 () Option!9626)

(declare-fun lt!1473084 () Option!9626)

(declare-fun lt!1473087 () Option!9626)

(assert (=> b!4129826 (= e!2562437 (ite (and ((_ is None!9625) lt!1473084) ((_ is None!9625) lt!1473087)) None!9625 (ite ((_ is None!9625) lt!1473087) lt!1473084 (ite ((_ is None!9625) lt!1473084) lt!1473087 (ite (>= (size!33101 (_1!24707 (v!40229 lt!1473084))) (size!33101 (_1!24707 (v!40229 lt!1473087)))) lt!1473084 lt!1473087)))))))

(declare-fun call!290317 () Option!9626)

(assert (=> b!4129826 (= lt!1473084 call!290317)))

(assert (=> b!4129826 (= lt!1473087 (maxPrefix!4099 thiss!25645 (t!341438 rules!3756) input!3238))))

(declare-fun b!4129827 () Bool)

(declare-fun res!1688284 () Bool)

(assert (=> b!4129827 (=> (not res!1688284) (not e!2562438))))

(assert (=> b!4129827 (= res!1688284 (= (list!16383 (charsOf!4928 (_1!24707 (get!14583 lt!1473083)))) (originalCharacters!7814 (_1!24707 (get!14583 lt!1473083)))))))

(declare-fun b!4129828 () Bool)

(assert (=> b!4129828 (= e!2562437 call!290317)))

(declare-fun b!4129829 () Bool)

(declare-fun e!2562436 () Bool)

(assert (=> b!4129829 (= e!2562436 e!2562438)))

(declare-fun res!1688286 () Bool)

(assert (=> b!4129829 (=> (not res!1688286) (not e!2562438))))

(declare-fun isDefined!7247 (Option!9626) Bool)

(assert (=> b!4129829 (= res!1688286 (isDefined!7247 lt!1473083))))

(declare-fun b!4129830 () Bool)

(declare-fun res!1688290 () Bool)

(assert (=> b!4129830 (=> (not res!1688290) (not e!2562438))))

(assert (=> b!4129830 (= res!1688290 (= (value!229117 (_1!24707 (get!14583 lt!1473083))) (apply!10391 (transformation!7318 (rule!10410 (_1!24707 (get!14583 lt!1473083)))) (seqFromList!5435 (originalCharacters!7814 (_1!24707 (get!14583 lt!1473083)))))))))

(declare-fun b!4129831 () Bool)

(declare-fun res!1688289 () Bool)

(assert (=> b!4129831 (=> (not res!1688289) (not e!2562438))))

(assert (=> b!4129831 (= res!1688289 (= (++!11574 (list!16383 (charsOf!4928 (_1!24707 (get!14583 lt!1473083)))) (_2!24707 (get!14583 lt!1473083))) input!3238))))

(declare-fun d!1223616 () Bool)

(assert (=> d!1223616 e!2562436))

(declare-fun res!1688288 () Bool)

(assert (=> d!1223616 (=> res!1688288 e!2562436)))

(declare-fun isEmpty!26618 (Option!9626) Bool)

(assert (=> d!1223616 (= res!1688288 (isEmpty!26618 lt!1473083))))

(assert (=> d!1223616 (= lt!1473083 e!2562437)))

(declare-fun c!708675 () Bool)

(assert (=> d!1223616 (= c!708675 (and ((_ is Cons!44705) rules!3756) ((_ is Nil!44705) (t!341438 rules!3756))))))

(declare-fun lt!1473086 () Unit!64037)

(declare-fun lt!1473085 () Unit!64037)

(assert (=> d!1223616 (= lt!1473086 lt!1473085)))

(assert (=> d!1223616 (isPrefix!4253 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2753 (List!44828 List!44828) Unit!64037)

(assert (=> d!1223616 (= lt!1473085 (lemmaIsPrefixRefl!2753 input!3238 input!3238))))

(declare-fun rulesValidInductive!2704 (LexerInterface!6907 List!44829) Bool)

(assert (=> d!1223616 (rulesValidInductive!2704 thiss!25645 rules!3756)))

(assert (=> d!1223616 (= (maxPrefix!4099 thiss!25645 rules!3756 input!3238) lt!1473083)))

(declare-fun b!4129832 () Bool)

(assert (=> b!4129832 (= e!2562438 (contains!8994 rules!3756 (rule!10410 (_1!24707 (get!14583 lt!1473083)))))))

(declare-fun bm!290312 () Bool)

(declare-fun maxPrefixOneRule!3045 (LexerInterface!6907 Rule!14436 List!44828) Option!9626)

(assert (=> bm!290312 (= call!290317 (maxPrefixOneRule!3045 thiss!25645 (h!50125 rules!3756) input!3238))))

(declare-fun b!4129833 () Bool)

(declare-fun res!1688285 () Bool)

(assert (=> b!4129833 (=> (not res!1688285) (not e!2562438))))

(assert (=> b!4129833 (= res!1688285 (< (size!33102 (_2!24707 (get!14583 lt!1473083))) (size!33102 input!3238)))))

(assert (= (and d!1223616 c!708675) b!4129828))

(assert (= (and d!1223616 (not c!708675)) b!4129826))

(assert (= (or b!4129828 b!4129826) bm!290312))

(assert (= (and d!1223616 (not res!1688288)) b!4129829))

(assert (= (and b!4129829 res!1688286) b!4129827))

(assert (= (and b!4129827 res!1688284) b!4129833))

(assert (= (and b!4129833 res!1688285) b!4129831))

(assert (= (and b!4129831 res!1688289) b!4129830))

(assert (= (and b!4129830 res!1688290) b!4129825))

(assert (= (and b!4129825 res!1688287) b!4129832))

(declare-fun m!4727863 () Bool)

(assert (=> b!4129829 m!4727863))

(declare-fun m!4727865 () Bool)

(assert (=> d!1223616 m!4727865))

(declare-fun m!4727867 () Bool)

(assert (=> d!1223616 m!4727867))

(declare-fun m!4727869 () Bool)

(assert (=> d!1223616 m!4727869))

(declare-fun m!4727871 () Bool)

(assert (=> d!1223616 m!4727871))

(declare-fun m!4727873 () Bool)

(assert (=> bm!290312 m!4727873))

(declare-fun m!4727875 () Bool)

(assert (=> b!4129827 m!4727875))

(declare-fun m!4727877 () Bool)

(assert (=> b!4129827 m!4727877))

(assert (=> b!4129827 m!4727877))

(declare-fun m!4727879 () Bool)

(assert (=> b!4129827 m!4727879))

(assert (=> b!4129833 m!4727875))

(declare-fun m!4727881 () Bool)

(assert (=> b!4129833 m!4727881))

(assert (=> b!4129833 m!4727701))

(assert (=> b!4129832 m!4727875))

(declare-fun m!4727883 () Bool)

(assert (=> b!4129832 m!4727883))

(assert (=> b!4129831 m!4727875))

(assert (=> b!4129831 m!4727877))

(assert (=> b!4129831 m!4727877))

(assert (=> b!4129831 m!4727879))

(assert (=> b!4129831 m!4727879))

(declare-fun m!4727885 () Bool)

(assert (=> b!4129831 m!4727885))

(assert (=> b!4129825 m!4727875))

(assert (=> b!4129825 m!4727877))

(assert (=> b!4129825 m!4727877))

(assert (=> b!4129825 m!4727879))

(assert (=> b!4129825 m!4727879))

(declare-fun m!4727887 () Bool)

(assert (=> b!4129825 m!4727887))

(assert (=> b!4129830 m!4727875))

(declare-fun m!4727889 () Bool)

(assert (=> b!4129830 m!4727889))

(assert (=> b!4129830 m!4727889))

(declare-fun m!4727891 () Bool)

(assert (=> b!4129830 m!4727891))

(declare-fun m!4727893 () Bool)

(assert (=> b!4129826 m!4727893))

(assert (=> b!4129549 d!1223616))

(declare-fun d!1223630 () Bool)

(declare-fun fromListB!2486 (List!44828) BalanceConc!26652)

(assert (=> d!1223630 (= (seqFromList!5435 p!2912) (fromListB!2486 p!2912))))

(declare-fun bs!594987 () Bool)

(assert (= bs!594987 d!1223630))

(declare-fun m!4727895 () Bool)

(assert (=> bs!594987 m!4727895))

(assert (=> b!4129549 d!1223630))

(declare-fun d!1223632 () Bool)

(declare-fun lt!1473090 () Int)

(assert (=> d!1223632 (>= lt!1473090 0)))

(declare-fun e!2562441 () Int)

(assert (=> d!1223632 (= lt!1473090 e!2562441)))

(declare-fun c!708678 () Bool)

(assert (=> d!1223632 (= c!708678 ((_ is Nil!44704) p!2912))))

(assert (=> d!1223632 (= (size!33102 p!2912) lt!1473090)))

(declare-fun b!4129838 () Bool)

(assert (=> b!4129838 (= e!2562441 0)))

(declare-fun b!4129839 () Bool)

(assert (=> b!4129839 (= e!2562441 (+ 1 (size!33102 (t!341437 p!2912))))))

(assert (= (and d!1223632 c!708678) b!4129838))

(assert (= (and d!1223632 (not c!708678)) b!4129839))

(declare-fun m!4727897 () Bool)

(assert (=> b!4129839 m!4727897))

(assert (=> b!4129549 d!1223632))

(declare-fun d!1223634 () Bool)

(assert (=> d!1223634 (= (apply!10391 (transformation!7318 r!4008) lt!1473010) (dynLambda!19143 (toValue!9978 (transformation!7318 r!4008)) lt!1473010))))

(declare-fun b_lambda!121259 () Bool)

(assert (=> (not b_lambda!121259) (not d!1223634)))

(assert (=> d!1223634 t!341458))

(declare-fun b_and!319987 () Bool)

(assert (= b_and!319977 (and (=> t!341458 result!301188) b_and!319987)))

(assert (=> d!1223634 t!341460))

(declare-fun b_and!319989 () Bool)

(assert (= b_and!319979 (and (=> t!341460 result!301192) b_and!319989)))

(assert (=> d!1223634 t!341462))

(declare-fun b_and!319991 () Bool)

(assert (= b_and!319981 (and (=> t!341462 result!301194) b_and!319991)))

(assert (=> d!1223634 m!4727823))

(assert (=> b!4129549 d!1223634))

(declare-fun b!4129848 () Bool)

(declare-fun e!2562448 () Int)

(assert (=> b!4129848 (= e!2562448 0)))

(declare-fun b!4129851 () Bool)

(declare-fun e!2562447 () Int)

(assert (=> b!4129851 (= e!2562447 (- 1))))

(declare-fun b!4129849 () Bool)

(assert (=> b!4129849 (= e!2562448 e!2562447)))

(declare-fun c!708683 () Bool)

(assert (=> b!4129849 (= c!708683 (and ((_ is Cons!44705) rules!3756) (not (= (h!50125 rules!3756) rBis!149))))))

(declare-fun b!4129850 () Bool)

(assert (=> b!4129850 (= e!2562447 (+ 1 (getIndex!666 (t!341438 rules!3756) rBis!149)))))

(declare-fun d!1223636 () Bool)

(declare-fun lt!1473093 () Int)

(assert (=> d!1223636 (>= lt!1473093 0)))

(assert (=> d!1223636 (= lt!1473093 e!2562448)))

(declare-fun c!708684 () Bool)

(assert (=> d!1223636 (= c!708684 (and ((_ is Cons!44705) rules!3756) (= (h!50125 rules!3756) rBis!149)))))

(assert (=> d!1223636 (contains!8994 rules!3756 rBis!149)))

(assert (=> d!1223636 (= (getIndex!666 rules!3756 rBis!149) lt!1473093)))

(assert (= (and d!1223636 c!708684) b!4129848))

(assert (= (and d!1223636 (not c!708684)) b!4129849))

(assert (= (and b!4129849 c!708683) b!4129850))

(assert (= (and b!4129849 (not c!708683)) b!4129851))

(declare-fun m!4727899 () Bool)

(assert (=> b!4129850 m!4727899))

(assert (=> d!1223636 m!4727661))

(assert (=> b!4129551 d!1223636))

(declare-fun b!4129852 () Bool)

(declare-fun e!2562450 () Int)

(assert (=> b!4129852 (= e!2562450 0)))

(declare-fun b!4129855 () Bool)

(declare-fun e!2562449 () Int)

(assert (=> b!4129855 (= e!2562449 (- 1))))

(declare-fun b!4129853 () Bool)

(assert (=> b!4129853 (= e!2562450 e!2562449)))

(declare-fun c!708685 () Bool)

(assert (=> b!4129853 (= c!708685 (and ((_ is Cons!44705) rules!3756) (not (= (h!50125 rules!3756) r!4008))))))

(declare-fun b!4129854 () Bool)

(assert (=> b!4129854 (= e!2562449 (+ 1 (getIndex!666 (t!341438 rules!3756) r!4008)))))

(declare-fun d!1223638 () Bool)

(declare-fun lt!1473094 () Int)

(assert (=> d!1223638 (>= lt!1473094 0)))

(assert (=> d!1223638 (= lt!1473094 e!2562450)))

(declare-fun c!708686 () Bool)

(assert (=> d!1223638 (= c!708686 (and ((_ is Cons!44705) rules!3756) (= (h!50125 rules!3756) r!4008)))))

(assert (=> d!1223638 (contains!8994 rules!3756 r!4008)))

(assert (=> d!1223638 (= (getIndex!666 rules!3756 r!4008) lt!1473094)))

(assert (= (and d!1223638 c!708686) b!4129852))

(assert (= (and d!1223638 (not c!708686)) b!4129853))

(assert (= (and b!4129853 c!708685) b!4129854))

(assert (= (and b!4129853 (not c!708685)) b!4129855))

(declare-fun m!4727901 () Bool)

(assert (=> b!4129854 m!4727901))

(assert (=> d!1223638 m!4727627))

(assert (=> b!4129551 d!1223638))

(declare-fun b!4129884 () Bool)

(declare-fun e!2562466 () Bool)

(declare-fun lt!1473097 () Bool)

(declare-fun call!290320 () Bool)

(assert (=> b!4129884 (= e!2562466 (= lt!1473097 call!290320))))

(declare-fun b!4129885 () Bool)

(declare-fun e!2562469 () Bool)

(declare-fun e!2562470 () Bool)

(assert (=> b!4129885 (= e!2562469 e!2562470)))

(declare-fun res!1688312 () Bool)

(assert (=> b!4129885 (=> (not res!1688312) (not e!2562470))))

(assert (=> b!4129885 (= res!1688312 (not lt!1473097))))

(declare-fun b!4129886 () Bool)

(declare-fun res!1688307 () Bool)

(declare-fun e!2562465 () Bool)

(assert (=> b!4129886 (=> (not res!1688307) (not e!2562465))))

(assert (=> b!4129886 (= res!1688307 (isEmpty!26616 (tail!6473 p!2912)))))

(declare-fun b!4129887 () Bool)

(declare-fun e!2562467 () Bool)

(assert (=> b!4129887 (= e!2562467 (nullable!4291 (regex!7318 r!4008)))))

(declare-fun b!4129888 () Bool)

(declare-fun e!2562471 () Bool)

(assert (=> b!4129888 (= e!2562471 (not (= (head!8700 p!2912) (c!708641 (regex!7318 r!4008)))))))

(declare-fun b!4129889 () Bool)

(declare-fun res!1688310 () Bool)

(assert (=> b!4129889 (=> res!1688310 e!2562471)))

(assert (=> b!4129889 (= res!1688310 (not (isEmpty!26616 (tail!6473 p!2912))))))

(declare-fun b!4129890 () Bool)

(declare-fun res!1688311 () Bool)

(assert (=> b!4129890 (=> (not res!1688311) (not e!2562465))))

(assert (=> b!4129890 (= res!1688311 (not call!290320))))

(declare-fun bm!290315 () Bool)

(assert (=> bm!290315 (= call!290320 (isEmpty!26616 p!2912))))

(declare-fun b!4129891 () Bool)

(assert (=> b!4129891 (= e!2562465 (= (head!8700 p!2912) (c!708641 (regex!7318 r!4008))))))

(declare-fun b!4129893 () Bool)

(declare-fun res!1688314 () Bool)

(assert (=> b!4129893 (=> res!1688314 e!2562469)))

(assert (=> b!4129893 (= res!1688314 e!2562465)))

(declare-fun res!1688313 () Bool)

(assert (=> b!4129893 (=> (not res!1688313) (not e!2562465))))

(assert (=> b!4129893 (= res!1688313 lt!1473097)))

(declare-fun b!4129894 () Bool)

(declare-fun e!2562468 () Bool)

(assert (=> b!4129894 (= e!2562468 (not lt!1473097))))

(declare-fun b!4129895 () Bool)

(assert (=> b!4129895 (= e!2562470 e!2562471)))

(declare-fun res!1688309 () Bool)

(assert (=> b!4129895 (=> res!1688309 e!2562471)))

(assert (=> b!4129895 (= res!1688309 call!290320)))

(declare-fun d!1223640 () Bool)

(assert (=> d!1223640 e!2562466))

(declare-fun c!708693 () Bool)

(assert (=> d!1223640 (= c!708693 ((_ is EmptyExpr!12223) (regex!7318 r!4008)))))

(assert (=> d!1223640 (= lt!1473097 e!2562467)))

(declare-fun c!708695 () Bool)

(assert (=> d!1223640 (= c!708695 (isEmpty!26616 p!2912))))

(assert (=> d!1223640 (validRegex!5499 (regex!7318 r!4008))))

(assert (=> d!1223640 (= (matchR!6054 (regex!7318 r!4008) p!2912) lt!1473097)))

(declare-fun b!4129892 () Bool)

(declare-fun derivativeStep!3687 (Regex!12223 C!24632) Regex!12223)

(assert (=> b!4129892 (= e!2562467 (matchR!6054 (derivativeStep!3687 (regex!7318 r!4008) (head!8700 p!2912)) (tail!6473 p!2912)))))

(declare-fun b!4129896 () Bool)

(declare-fun res!1688308 () Bool)

(assert (=> b!4129896 (=> res!1688308 e!2562469)))

(assert (=> b!4129896 (= res!1688308 (not ((_ is ElementMatch!12223) (regex!7318 r!4008))))))

(assert (=> b!4129896 (= e!2562468 e!2562469)))

(declare-fun b!4129897 () Bool)

(assert (=> b!4129897 (= e!2562466 e!2562468)))

(declare-fun c!708694 () Bool)

(assert (=> b!4129897 (= c!708694 ((_ is EmptyLang!12223) (regex!7318 r!4008)))))

(assert (= (and d!1223640 c!708695) b!4129887))

(assert (= (and d!1223640 (not c!708695)) b!4129892))

(assert (= (and d!1223640 c!708693) b!4129884))

(assert (= (and d!1223640 (not c!708693)) b!4129897))

(assert (= (and b!4129897 c!708694) b!4129894))

(assert (= (and b!4129897 (not c!708694)) b!4129896))

(assert (= (and b!4129896 (not res!1688308)) b!4129893))

(assert (= (and b!4129893 res!1688313) b!4129890))

(assert (= (and b!4129890 res!1688311) b!4129886))

(assert (= (and b!4129886 res!1688307) b!4129891))

(assert (= (and b!4129893 (not res!1688314)) b!4129885))

(assert (= (and b!4129885 res!1688312) b!4129895))

(assert (= (and b!4129895 (not res!1688309)) b!4129889))

(assert (= (and b!4129889 (not res!1688310)) b!4129888))

(assert (= (or b!4129884 b!4129890 b!4129895) bm!290315))

(assert (=> b!4129892 m!4727703))

(assert (=> b!4129892 m!4727703))

(declare-fun m!4727903 () Bool)

(assert (=> b!4129892 m!4727903))

(assert (=> b!4129892 m!4727707))

(assert (=> b!4129892 m!4727903))

(assert (=> b!4129892 m!4727707))

(declare-fun m!4727905 () Bool)

(assert (=> b!4129892 m!4727905))

(assert (=> b!4129891 m!4727703))

(assert (=> d!1223640 m!4727667))

(assert (=> d!1223640 m!4727727))

(assert (=> b!4129886 m!4727707))

(assert (=> b!4129886 m!4727707))

(declare-fun m!4727907 () Bool)

(assert (=> b!4129886 m!4727907))

(assert (=> bm!290315 m!4727667))

(assert (=> b!4129887 m!4727729))

(assert (=> b!4129888 m!4727703))

(assert (=> b!4129889 m!4727707))

(assert (=> b!4129889 m!4727707))

(assert (=> b!4129889 m!4727907))

(assert (=> b!4129561 d!1223640))

(declare-fun d!1223642 () Bool)

(declare-fun lt!1473098 () Bool)

(assert (=> d!1223642 (= lt!1473098 (select (content!6893 rules!3756) rBis!149))))

(declare-fun e!2562473 () Bool)

(assert (=> d!1223642 (= lt!1473098 e!2562473)))

(declare-fun res!1688316 () Bool)

(assert (=> d!1223642 (=> (not res!1688316) (not e!2562473))))

(assert (=> d!1223642 (= res!1688316 ((_ is Cons!44705) rules!3756))))

(assert (=> d!1223642 (= (contains!8994 rules!3756 rBis!149) lt!1473098)))

(declare-fun b!4129898 () Bool)

(declare-fun e!2562472 () Bool)

(assert (=> b!4129898 (= e!2562473 e!2562472)))

(declare-fun res!1688315 () Bool)

(assert (=> b!4129898 (=> res!1688315 e!2562472)))

(assert (=> b!4129898 (= res!1688315 (= (h!50125 rules!3756) rBis!149))))

(declare-fun b!4129899 () Bool)

(assert (=> b!4129899 (= e!2562472 (contains!8994 (t!341438 rules!3756) rBis!149))))

(assert (= (and d!1223642 res!1688316) b!4129898))

(assert (= (and b!4129898 (not res!1688315)) b!4129899))

(assert (=> d!1223642 m!4727713))

(declare-fun m!4727909 () Bool)

(assert (=> d!1223642 m!4727909))

(declare-fun m!4727911 () Bool)

(assert (=> b!4129899 m!4727911))

(assert (=> b!4129550 d!1223642))

(declare-fun d!1223644 () Bool)

(assert (=> d!1223644 (= (inv!59292 (tag!8178 (h!50125 rules!3756))) (= (mod (str.len (value!229116 (tag!8178 (h!50125 rules!3756)))) 2) 0))))

(assert (=> b!4129552 d!1223644))

(declare-fun d!1223646 () Bool)

(declare-fun res!1688317 () Bool)

(declare-fun e!2562474 () Bool)

(assert (=> d!1223646 (=> (not res!1688317) (not e!2562474))))

(assert (=> d!1223646 (= res!1688317 (semiInverseModEq!3152 (toChars!9837 (transformation!7318 (h!50125 rules!3756))) (toValue!9978 (transformation!7318 (h!50125 rules!3756)))))))

(assert (=> d!1223646 (= (inv!59294 (transformation!7318 (h!50125 rules!3756))) e!2562474)))

(declare-fun b!4129900 () Bool)

(assert (=> b!4129900 (= e!2562474 (equivClasses!3051 (toChars!9837 (transformation!7318 (h!50125 rules!3756))) (toValue!9978 (transformation!7318 (h!50125 rules!3756)))))))

(assert (= (and d!1223646 res!1688317) b!4129900))

(declare-fun m!4727913 () Bool)

(assert (=> d!1223646 m!4727913))

(declare-fun m!4727915 () Bool)

(assert (=> b!4129900 m!4727915))

(assert (=> b!4129552 d!1223646))

(declare-fun d!1223648 () Bool)

(assert (=> d!1223648 (= (isEmpty!26616 p!2912) ((_ is Nil!44704) p!2912))))

(assert (=> b!4129562 d!1223648))

(declare-fun d!1223650 () Bool)

(assert (=> d!1223650 (= (inv!59292 (tag!8178 rBis!149)) (= (mod (str.len (value!229116 (tag!8178 rBis!149))) 2) 0))))

(assert (=> b!4129564 d!1223650))

(declare-fun d!1223652 () Bool)

(declare-fun res!1688318 () Bool)

(declare-fun e!2562475 () Bool)

(assert (=> d!1223652 (=> (not res!1688318) (not e!2562475))))

(assert (=> d!1223652 (= res!1688318 (semiInverseModEq!3152 (toChars!9837 (transformation!7318 rBis!149)) (toValue!9978 (transformation!7318 rBis!149))))))

(assert (=> d!1223652 (= (inv!59294 (transformation!7318 rBis!149)) e!2562475)))

(declare-fun b!4129901 () Bool)

(assert (=> b!4129901 (= e!2562475 (equivClasses!3051 (toChars!9837 (transformation!7318 rBis!149)) (toValue!9978 (transformation!7318 rBis!149))))))

(assert (= (and d!1223652 res!1688318) b!4129901))

(declare-fun m!4727917 () Bool)

(assert (=> d!1223652 m!4727917))

(declare-fun m!4727919 () Bool)

(assert (=> b!4129901 m!4727919))

(assert (=> b!4129564 d!1223652))

(declare-fun b!4129906 () Bool)

(declare-fun e!2562478 () Bool)

(declare-fun tp!1258496 () Bool)

(assert (=> b!4129906 (= e!2562478 (and tp_is_empty!21369 tp!1258496))))

(assert (=> b!4129555 (= tp!1258436 e!2562478)))

(assert (= (and b!4129555 ((_ is Cons!44704) (t!341437 input!3238))) b!4129906))

(declare-fun b!4129907 () Bool)

(declare-fun e!2562479 () Bool)

(declare-fun tp!1258497 () Bool)

(assert (=> b!4129907 (= e!2562479 (and tp_is_empty!21369 tp!1258497))))

(assert (=> b!4129565 (= tp!1258442 e!2562479)))

(assert (= (and b!4129565 ((_ is Cons!44704) (t!341437 p!2912))) b!4129907))

(declare-fun b!4129918 () Bool)

(declare-fun b_free!117099 () Bool)

(declare-fun b_next!117803 () Bool)

(assert (=> b!4129918 (= b_free!117099 (not b_next!117803))))

(declare-fun t!341468 () Bool)

(declare-fun tb!247859 () Bool)

(assert (=> (and b!4129918 (= (toValue!9978 (transformation!7318 (h!50125 (t!341438 rules!3756)))) (toValue!9978 (transformation!7318 r!4008))) t!341468) tb!247859))

(declare-fun result!301210 () Bool)

(assert (= result!301210 result!301188))

(assert (=> d!1223578 t!341468))

(assert (=> d!1223634 t!341468))

(declare-fun b_and!319993 () Bool)

(declare-fun tp!1258508 () Bool)

(assert (=> b!4129918 (= tp!1258508 (and (=> t!341468 result!301210) b_and!319993))))

(declare-fun b_free!117101 () Bool)

(declare-fun b_next!117805 () Bool)

(assert (=> b!4129918 (= b_free!117101 (not b_next!117805))))

(declare-fun t!341470 () Bool)

(declare-fun tb!247861 () Bool)

(assert (=> (and b!4129918 (= (toChars!9837 (transformation!7318 (h!50125 (t!341438 rules!3756)))) (toChars!9837 (transformation!7318 r!4008))) t!341470) tb!247861))

(declare-fun result!301212 () Bool)

(assert (= result!301212 result!301180))

(assert (=> d!1223578 t!341470))

(declare-fun tp!1258509 () Bool)

(declare-fun b_and!319995 () Bool)

(assert (=> b!4129918 (= tp!1258509 (and (=> t!341470 result!301212) b_and!319995))))

(declare-fun e!2562491 () Bool)

(assert (=> b!4129918 (= e!2562491 (and tp!1258508 tp!1258509))))

(declare-fun tp!1258507 () Bool)

(declare-fun b!4129917 () Bool)

(declare-fun e!2562488 () Bool)

(assert (=> b!4129917 (= e!2562488 (and tp!1258507 (inv!59292 (tag!8178 (h!50125 (t!341438 rules!3756)))) (inv!59294 (transformation!7318 (h!50125 (t!341438 rules!3756)))) e!2562491))))

(declare-fun b!4129916 () Bool)

(declare-fun e!2562490 () Bool)

(declare-fun tp!1258506 () Bool)

(assert (=> b!4129916 (= e!2562490 (and e!2562488 tp!1258506))))

(assert (=> b!4129567 (= tp!1258441 e!2562490)))

(assert (= b!4129917 b!4129918))

(assert (= b!4129916 b!4129917))

(assert (= (and b!4129567 ((_ is Cons!44705) (t!341438 rules!3756))) b!4129916))

(declare-fun m!4727921 () Bool)

(assert (=> b!4129917 m!4727921))

(declare-fun m!4727923 () Bool)

(assert (=> b!4129917 m!4727923))

(declare-fun b!4129932 () Bool)

(declare-fun e!2562494 () Bool)

(declare-fun tp!1258524 () Bool)

(declare-fun tp!1258523 () Bool)

(assert (=> b!4129932 (= e!2562494 (and tp!1258524 tp!1258523))))

(assert (=> b!4129556 (= tp!1258437 e!2562494)))

(declare-fun b!4129930 () Bool)

(declare-fun tp!1258521 () Bool)

(declare-fun tp!1258520 () Bool)

(assert (=> b!4129930 (= e!2562494 (and tp!1258521 tp!1258520))))

(declare-fun b!4129931 () Bool)

(declare-fun tp!1258522 () Bool)

(assert (=> b!4129931 (= e!2562494 tp!1258522)))

(declare-fun b!4129929 () Bool)

(assert (=> b!4129929 (= e!2562494 tp_is_empty!21369)))

(assert (= (and b!4129556 ((_ is ElementMatch!12223) (regex!7318 r!4008))) b!4129929))

(assert (= (and b!4129556 ((_ is Concat!19772) (regex!7318 r!4008))) b!4129930))

(assert (= (and b!4129556 ((_ is Star!12223) (regex!7318 r!4008))) b!4129931))

(assert (= (and b!4129556 ((_ is Union!12223) (regex!7318 r!4008))) b!4129932))

(declare-fun b!4129936 () Bool)

(declare-fun e!2562495 () Bool)

(declare-fun tp!1258529 () Bool)

(declare-fun tp!1258528 () Bool)

(assert (=> b!4129936 (= e!2562495 (and tp!1258529 tp!1258528))))

(assert (=> b!4129552 (= tp!1258444 e!2562495)))

(declare-fun b!4129934 () Bool)

(declare-fun tp!1258526 () Bool)

(declare-fun tp!1258525 () Bool)

(assert (=> b!4129934 (= e!2562495 (and tp!1258526 tp!1258525))))

(declare-fun b!4129935 () Bool)

(declare-fun tp!1258527 () Bool)

(assert (=> b!4129935 (= e!2562495 tp!1258527)))

(declare-fun b!4129933 () Bool)

(assert (=> b!4129933 (= e!2562495 tp_is_empty!21369)))

(assert (= (and b!4129552 ((_ is ElementMatch!12223) (regex!7318 (h!50125 rules!3756)))) b!4129933))

(assert (= (and b!4129552 ((_ is Concat!19772) (regex!7318 (h!50125 rules!3756)))) b!4129934))

(assert (= (and b!4129552 ((_ is Star!12223) (regex!7318 (h!50125 rules!3756)))) b!4129935))

(assert (= (and b!4129552 ((_ is Union!12223) (regex!7318 (h!50125 rules!3756)))) b!4129936))

(declare-fun b!4129940 () Bool)

(declare-fun e!2562496 () Bool)

(declare-fun tp!1258534 () Bool)

(declare-fun tp!1258533 () Bool)

(assert (=> b!4129940 (= e!2562496 (and tp!1258534 tp!1258533))))

(assert (=> b!4129564 (= tp!1258435 e!2562496)))

(declare-fun b!4129938 () Bool)

(declare-fun tp!1258531 () Bool)

(declare-fun tp!1258530 () Bool)

(assert (=> b!4129938 (= e!2562496 (and tp!1258531 tp!1258530))))

(declare-fun b!4129939 () Bool)

(declare-fun tp!1258532 () Bool)

(assert (=> b!4129939 (= e!2562496 tp!1258532)))

(declare-fun b!4129937 () Bool)

(assert (=> b!4129937 (= e!2562496 tp_is_empty!21369)))

(assert (= (and b!4129564 ((_ is ElementMatch!12223) (regex!7318 rBis!149))) b!4129937))

(assert (= (and b!4129564 ((_ is Concat!19772) (regex!7318 rBis!149))) b!4129938))

(assert (= (and b!4129564 ((_ is Star!12223) (regex!7318 rBis!149))) b!4129939))

(assert (= (and b!4129564 ((_ is Union!12223) (regex!7318 rBis!149))) b!4129940))

(declare-fun b_lambda!121261 () Bool)

(assert (= b_lambda!121259 (or (and b!4129563 b_free!117083 (= (toValue!9978 (transformation!7318 rBis!149)) (toValue!9978 (transformation!7318 r!4008)))) (and b!4129553 b_free!117087 (= (toValue!9978 (transformation!7318 (h!50125 rules!3756))) (toValue!9978 (transformation!7318 r!4008)))) (and b!4129568 b_free!117091) (and b!4129918 b_free!117099 (= (toValue!9978 (transformation!7318 (h!50125 (t!341438 rules!3756)))) (toValue!9978 (transformation!7318 r!4008)))) b_lambda!121261)))

(declare-fun b_lambda!121263 () Bool)

(assert (= b_lambda!121251 (or (and b!4129563 b_free!117083 (= (toValue!9978 (transformation!7318 rBis!149)) (toValue!9978 (transformation!7318 r!4008)))) (and b!4129553 b_free!117087 (= (toValue!9978 (transformation!7318 (h!50125 rules!3756))) (toValue!9978 (transformation!7318 r!4008)))) (and b!4129568 b_free!117091) (and b!4129918 b_free!117099 (= (toValue!9978 (transformation!7318 (h!50125 (t!341438 rules!3756)))) (toValue!9978 (transformation!7318 r!4008)))) b_lambda!121263)))

(declare-fun b_lambda!121265 () Bool)

(assert (= b_lambda!121249 (or (and b!4129563 b_free!117085 (= (toChars!9837 (transformation!7318 rBis!149)) (toChars!9837 (transformation!7318 r!4008)))) (and b!4129553 b_free!117089 (= (toChars!9837 (transformation!7318 (h!50125 rules!3756))) (toChars!9837 (transformation!7318 r!4008)))) (and b!4129568 b_free!117093) (and b!4129918 b_free!117101 (= (toChars!9837 (transformation!7318 (h!50125 (t!341438 rules!3756)))) (toChars!9837 (transformation!7318 r!4008)))) b_lambda!121265)))

(check-sat (not b!4129892) (not b_next!117789) (not b!4129899) (not b_next!117791) (not d!1223568) b_and!319989 (not b!4129939) (not b!4129888) (not b!4129901) (not d!1223564) b_and!319975 (not b_lambda!121265) (not b!4129830) (not b_lambda!121263) (not b!4129932) (not b!4129886) (not b!4129609) (not d!1223554) (not d!1223560) b_and!319991 (not b!4129940) (not b!4129599) (not b!4129740) (not b!4129916) (not d!1223574) (not b!4129887) (not b!4129889) b_and!319987 (not d!1223646) (not d!1223614) (not b!4129832) (not b_next!117795) (not d!1223638) (not d!1223572) (not b!4129938) (not b!4129589) (not b!4129891) (not b!4129601) (not b!4129900) (not b!4129705) (not bm!290312) (not b!4129936) (not b!4129600) (not d!1223576) (not b!4129827) (not b!4129931) b_and!319993 (not b_next!117787) (not b!4129839) (not d!1223616) (not b_next!117805) (not tb!247843) (not d!1223652) (not b_next!117797) (not b!4129585) (not b_next!117793) (not b!4129826) (not b!4129930) (not b_lambda!121261) (not b!4129854) (not b!4129825) (not d!1223578) b_and!319973 (not b!4129907) (not d!1223642) (not d!1223558) (not b!4129935) (not d!1223630) (not b!4129917) (not b!4129906) (not b!4129613) (not tb!247849) (not d!1223636) (not d!1223640) (not b!4129831) (not b!4129607) b_and!319971 (not bm!290315) (not b_next!117803) tp_is_empty!21369 (not b!4129612) (not b!4129934) (not b!4129850) (not b!4129833) (not b!4129829) b_and!319995)
(check-sat b_and!319975 (not b_next!117789) (not b_next!117791) b_and!319991 b_and!319987 (not b_next!117795) b_and!319993 (not b_next!117787) (not b_next!117805) (not b_next!117797) (not b_next!117793) b_and!319973 b_and!319989 b_and!319995 b_and!319971 (not b_next!117803))
