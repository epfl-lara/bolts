; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!346222 () Bool)

(assert start!346222)

(declare-fun b!3685341 () Bool)

(declare-fun b_free!97733 () Bool)

(declare-fun b_next!98437 () Bool)

(assert (=> b!3685341 (= b_free!97733 (not b_next!98437))))

(declare-fun tp!1120163 () Bool)

(declare-fun b_and!275415 () Bool)

(assert (=> b!3685341 (= tp!1120163 b_and!275415)))

(declare-fun b_free!97735 () Bool)

(declare-fun b_next!98439 () Bool)

(assert (=> b!3685341 (= b_free!97735 (not b_next!98439))))

(declare-fun tp!1120168 () Bool)

(declare-fun b_and!275417 () Bool)

(assert (=> b!3685341 (= tp!1120168 b_and!275417)))

(declare-fun b!3685331 () Bool)

(declare-fun e!2282097 () Bool)

(declare-fun tp_is_empty!18349 () Bool)

(declare-fun tp!1120166 () Bool)

(assert (=> b!3685331 (= e!2282097 (and tp_is_empty!18349 tp!1120166))))

(declare-fun b!3685332 () Bool)

(declare-fun res!1497466 () Bool)

(declare-fun e!2282096 () Bool)

(assert (=> b!3685332 (=> (not res!1497466) (not e!2282096))))

(declare-datatypes ((LexerInterface!5463 0))(
  ( (LexerInterfaceExt!5460 (__x!24425 Int)) (Lexer!5461) )
))
(declare-fun thiss!25197 () LexerInterface!5463)

(declare-datatypes ((List!39066 0))(
  ( (Nil!38942) (Cons!38942 (h!44362 (_ BitVec 16)) (t!301041 List!39066)) )
))
(declare-datatypes ((TokenValue!6104 0))(
  ( (FloatLiteralValue!12208 (text!43173 List!39066)) (TokenValueExt!6103 (__x!24426 Int)) (Broken!30520 (value!187843 List!39066)) (Object!6227) (End!6104) (Def!6104) (Underscore!6104) (Match!6104) (Else!6104) (Error!6104) (Case!6104) (If!6104) (Extends!6104) (Abstract!6104) (Class!6104) (Val!6104) (DelimiterValue!12208 (del!6164 List!39066)) (KeywordValue!6110 (value!187844 List!39066)) (CommentValue!12208 (value!187845 List!39066)) (WhitespaceValue!12208 (value!187846 List!39066)) (IndentationValue!6104 (value!187847 List!39066)) (String!43853) (Int32!6104) (Broken!30521 (value!187848 List!39066)) (Boolean!6105) (Unit!57017) (OperatorValue!6107 (op!6164 List!39066)) (IdentifierValue!12208 (value!187849 List!39066)) (IdentifierValue!12209 (value!187850 List!39066)) (WhitespaceValue!12209 (value!187851 List!39066)) (True!12208) (False!12208) (Broken!30522 (value!187852 List!39066)) (Broken!30523 (value!187853 List!39066)) (True!12209) (RightBrace!6104) (RightBracket!6104) (Colon!6104) (Null!6104) (Comma!6104) (LeftBracket!6104) (False!12209) (LeftBrace!6104) (ImaginaryLiteralValue!6104 (text!43174 List!39066)) (StringLiteralValue!18312 (value!187854 List!39066)) (EOFValue!6104 (value!187855 List!39066)) (IdentValue!6104 (value!187856 List!39066)) (DelimiterValue!12209 (value!187857 List!39066)) (DedentValue!6104 (value!187858 List!39066)) (NewLineValue!6104 (value!187859 List!39066)) (IntegerValue!18312 (value!187860 (_ BitVec 32)) (text!43175 List!39066)) (IntegerValue!18313 (value!187861 Int) (text!43176 List!39066)) (Times!6104) (Or!6104) (Equal!6104) (Minus!6104) (Broken!30524 (value!187862 List!39066)) (And!6104) (Div!6104) (LessEqual!6104) (Mod!6104) (Concat!16737) (Not!6104) (Plus!6104) (SpaceValue!6104 (value!187863 List!39066)) (IntegerValue!18314 (value!187864 Int) (text!43177 List!39066)) (StringLiteralValue!18313 (text!43178 List!39066)) (FloatLiteralValue!12209 (text!43179 List!39066)) (BytesLiteralValue!6104 (value!187865 List!39066)) (CommentValue!12209 (value!187866 List!39066)) (StringLiteralValue!18314 (value!187867 List!39066)) (ErrorTokenValue!6104 (msg!6165 List!39066)) )
))
(declare-datatypes ((C!21452 0))(
  ( (C!21453 (val!12774 Int)) )
))
(declare-datatypes ((List!39067 0))(
  ( (Nil!38943) (Cons!38943 (h!44363 C!21452) (t!301042 List!39067)) )
))
(declare-datatypes ((IArray!23881 0))(
  ( (IArray!23882 (innerList!11998 List!39067)) )
))
(declare-datatypes ((Regex!10633 0))(
  ( (ElementMatch!10633 (c!637473 C!21452)) (Concat!16738 (regOne!21778 Regex!10633) (regTwo!21778 Regex!10633)) (EmptyExpr!10633) (Star!10633 (reg!10962 Regex!10633)) (EmptyLang!10633) (Union!10633 (regOne!21779 Regex!10633) (regTwo!21779 Regex!10633)) )
))
(declare-datatypes ((String!43854 0))(
  ( (String!43855 (value!187868 String)) )
))
(declare-datatypes ((Conc!11938 0))(
  ( (Node!11938 (left!30381 Conc!11938) (right!30711 Conc!11938) (csize!24106 Int) (cheight!12149 Int)) (Leaf!18486 (xs!15140 IArray!23881) (csize!24107 Int)) (Empty!11938) )
))
(declare-datatypes ((BalanceConc!23490 0))(
  ( (BalanceConc!23491 (c!637474 Conc!11938)) )
))
(declare-datatypes ((TokenValueInjection!11636 0))(
  ( (TokenValueInjection!11637 (toValue!8182 Int) (toChars!8041 Int)) )
))
(declare-datatypes ((Rule!11548 0))(
  ( (Rule!11549 (regex!5874 Regex!10633) (tag!6684 String!43854) (isSeparator!5874 Bool) (transformation!5874 TokenValueInjection!11636)) )
))
(declare-datatypes ((List!39068 0))(
  ( (Nil!38944) (Cons!38944 (h!44364 Rule!11548) (t!301043 List!39068)) )
))
(declare-fun rules!3568 () List!39068)

(declare-fun rulesInvariant!4860 (LexerInterface!5463 List!39068) Bool)

(assert (=> b!3685332 (= res!1497466 (rulesInvariant!4860 thiss!25197 rules!3568))))

(declare-fun b!3685333 () Bool)

(declare-fun e!2282093 () Bool)

(declare-fun e!2282101 () Bool)

(assert (=> b!3685333 (= e!2282093 e!2282101)))

(declare-fun res!1497465 () Bool)

(assert (=> b!3685333 (=> (not res!1497465) (not e!2282101))))

(declare-fun lt!1289517 () Rule!11548)

(declare-fun lt!1289524 () List!39067)

(declare-fun matchR!5188 (Regex!10633 List!39067) Bool)

(assert (=> b!3685333 (= res!1497465 (matchR!5188 (regex!5874 lt!1289517) lt!1289524))))

(declare-datatypes ((Option!8359 0))(
  ( (None!8358) (Some!8358 (v!38304 Rule!11548)) )
))
(declare-fun lt!1289522 () Option!8359)

(declare-fun get!12897 (Option!8359) Rule!11548)

(assert (=> b!3685333 (= lt!1289517 (get!12897 lt!1289522))))

(declare-fun b!3685334 () Bool)

(declare-fun e!2282095 () Bool)

(assert (=> b!3685334 (= e!2282095 true)))

(declare-fun lt!1289520 () Bool)

(declare-fun rulesValidInductive!2096 (LexerInterface!5463 List!39068) Bool)

(assert (=> b!3685334 (= lt!1289520 (rulesValidInductive!2096 thiss!25197 rules!3568))))

(declare-fun b!3685335 () Bool)

(declare-fun res!1497464 () Bool)

(assert (=> b!3685335 (=> (not res!1497464) (not e!2282096))))

(declare-fun isEmpty!23153 (List!39068) Bool)

(assert (=> b!3685335 (= res!1497464 (not (isEmpty!23153 rules!3568)))))

(declare-fun b!3685336 () Bool)

(declare-datatypes ((Token!11114 0))(
  ( (Token!11115 (value!187869 TokenValue!6104) (rule!8716 Rule!11548) (size!29770 Int) (originalCharacters!6588 List!39067)) )
))
(declare-fun lt!1289518 () Token!11114)

(assert (=> b!3685336 (= e!2282101 (= (rule!8716 lt!1289518) lt!1289517))))

(declare-fun b!3685337 () Bool)

(declare-fun e!2282094 () Bool)

(assert (=> b!3685337 (= e!2282096 e!2282094)))

(declare-fun res!1497462 () Bool)

(assert (=> b!3685337 (=> (not res!1497462) (not e!2282094))))

(declare-datatypes ((List!39069 0))(
  ( (Nil!38945) (Cons!38945 (h!44365 Token!11114) (t!301044 List!39069)) )
))
(declare-datatypes ((IArray!23883 0))(
  ( (IArray!23884 (innerList!11999 List!39069)) )
))
(declare-datatypes ((Conc!11939 0))(
  ( (Node!11939 (left!30382 Conc!11939) (right!30712 Conc!11939) (csize!24108 Int) (cheight!12150 Int)) (Leaf!18487 (xs!15141 IArray!23883) (csize!24109 Int)) (Empty!11939) )
))
(declare-datatypes ((BalanceConc!23492 0))(
  ( (BalanceConc!23493 (c!637475 Conc!11939)) )
))
(declare-datatypes ((tuple2!38824 0))(
  ( (tuple2!38825 (_1!22546 BalanceConc!23492) (_2!22546 BalanceConc!23490)) )
))
(declare-fun lt!1289523 () tuple2!38824)

(declare-fun isEmpty!23154 (BalanceConc!23492) Bool)

(assert (=> b!3685337 (= res!1497462 (not (isEmpty!23154 (_1!22546 lt!1289523))))))

(declare-fun input!3129 () List!39067)

(declare-fun lex!2604 (LexerInterface!5463 List!39068 BalanceConc!23490) tuple2!38824)

(declare-fun seqFromList!4423 (List!39067) BalanceConc!23490)

(assert (=> b!3685337 (= lt!1289523 (lex!2604 thiss!25197 rules!3568 (seqFromList!4423 input!3129)))))

(declare-fun b!3685338 () Bool)

(declare-fun e!2282102 () Bool)

(declare-fun tp!1120164 () Bool)

(assert (=> b!3685338 (= e!2282102 (and tp_is_empty!18349 tp!1120164))))

(declare-fun b!3685339 () Bool)

(declare-fun e!2282098 () Bool)

(declare-fun e!2282092 () Bool)

(declare-fun tp!1120167 () Bool)

(assert (=> b!3685339 (= e!2282098 (and e!2282092 tp!1120167))))

(declare-fun res!1497468 () Bool)

(assert (=> start!346222 (=> (not res!1497468) (not e!2282096))))

(get-info :version)

(assert (=> start!346222 (= res!1497468 ((_ is Lexer!5461) thiss!25197))))

(assert (=> start!346222 e!2282096))

(assert (=> start!346222 true))

(assert (=> start!346222 e!2282098))

(assert (=> start!346222 e!2282102))

(assert (=> start!346222 e!2282097))

(declare-fun b!3685340 () Bool)

(assert (=> b!3685340 (= e!2282094 (not e!2282095))))

(declare-fun res!1497467 () Bool)

(assert (=> b!3685340 (=> res!1497467 e!2282095)))

(assert (=> b!3685340 (= res!1497467 (not (matchR!5188 (regex!5874 (rule!8716 lt!1289518)) lt!1289524)))))

(assert (=> b!3685340 e!2282093))

(declare-fun res!1497463 () Bool)

(assert (=> b!3685340 (=> (not res!1497463) (not e!2282093))))

(declare-fun isDefined!6575 (Option!8359) Bool)

(assert (=> b!3685340 (= res!1497463 (isDefined!6575 lt!1289522))))

(declare-fun getRuleFromTag!1462 (LexerInterface!5463 List!39068 String!43854) Option!8359)

(assert (=> b!3685340 (= lt!1289522 (getRuleFromTag!1462 thiss!25197 rules!3568 (tag!6684 (rule!8716 lt!1289518))))))

(declare-datatypes ((Unit!57018 0))(
  ( (Unit!57019) )
))
(declare-fun lt!1289515 () Unit!57018)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1462 (LexerInterface!5463 List!39068 List!39067 Token!11114) Unit!57018)

(assert (=> b!3685340 (= lt!1289515 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1462 thiss!25197 rules!3568 input!3129 lt!1289518))))

(declare-fun suffix!1448 () List!39067)

(declare-fun isPrefix!3227 (List!39067 List!39067) Bool)

(declare-fun ++!9693 (List!39067 List!39067) List!39067)

(assert (=> b!3685340 (isPrefix!3227 lt!1289524 (++!9693 input!3129 suffix!1448))))

(declare-fun lt!1289519 () Unit!57018)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!558 (List!39067 List!39067 List!39067) Unit!57018)

(assert (=> b!3685340 (= lt!1289519 (lemmaPrefixStaysPrefixWhenAddingToSuffix!558 lt!1289524 input!3129 suffix!1448))))

(declare-datatypes ((tuple2!38826 0))(
  ( (tuple2!38827 (_1!22547 Token!11114) (_2!22547 List!39067)) )
))
(declare-fun lt!1289521 () tuple2!38826)

(assert (=> b!3685340 (isPrefix!3227 lt!1289524 (++!9693 lt!1289524 (_2!22547 lt!1289521)))))

(declare-fun lt!1289516 () Unit!57018)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2144 (List!39067 List!39067) Unit!57018)

(assert (=> b!3685340 (= lt!1289516 (lemmaConcatTwoListThenFirstIsPrefix!2144 lt!1289524 (_2!22547 lt!1289521)))))

(declare-datatypes ((Option!8360 0))(
  ( (None!8359) (Some!8359 (v!38305 tuple2!38826)) )
))
(declare-fun get!12898 (Option!8360) tuple2!38826)

(declare-fun maxPrefix!2991 (LexerInterface!5463 List!39068 List!39067) Option!8360)

(assert (=> b!3685340 (= lt!1289521 (get!12898 (maxPrefix!2991 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14512 (BalanceConc!23490) List!39067)

(declare-fun charsOf!3885 (Token!11114) BalanceConc!23490)

(assert (=> b!3685340 (= lt!1289524 (list!14512 (charsOf!3885 lt!1289518)))))

(declare-fun head!7932 (List!39069) Token!11114)

(declare-fun list!14513 (BalanceConc!23492) List!39069)

(assert (=> b!3685340 (= lt!1289518 (head!7932 (list!14513 (_1!22546 lt!1289523))))))

(declare-fun e!2282100 () Bool)

(assert (=> b!3685341 (= e!2282100 (and tp!1120163 tp!1120168))))

(declare-fun tp!1120165 () Bool)

(declare-fun b!3685342 () Bool)

(declare-fun inv!52423 (String!43854) Bool)

(declare-fun inv!52425 (TokenValueInjection!11636) Bool)

(assert (=> b!3685342 (= e!2282092 (and tp!1120165 (inv!52423 (tag!6684 (h!44364 rules!3568))) (inv!52425 (transformation!5874 (h!44364 rules!3568))) e!2282100))))

(assert (= (and start!346222 res!1497468) b!3685335))

(assert (= (and b!3685335 res!1497464) b!3685332))

(assert (= (and b!3685332 res!1497466) b!3685337))

(assert (= (and b!3685337 res!1497462) b!3685340))

(assert (= (and b!3685340 res!1497463) b!3685333))

(assert (= (and b!3685333 res!1497465) b!3685336))

(assert (= (and b!3685340 (not res!1497467)) b!3685334))

(assert (= b!3685342 b!3685341))

(assert (= b!3685339 b!3685342))

(assert (= (and start!346222 ((_ is Cons!38944) rules!3568)) b!3685339))

(assert (= (and start!346222 ((_ is Cons!38943) suffix!1448)) b!3685338))

(assert (= (and start!346222 ((_ is Cons!38943) input!3129)) b!3685331))

(declare-fun m!4196685 () Bool)

(assert (=> b!3685333 m!4196685))

(declare-fun m!4196687 () Bool)

(assert (=> b!3685333 m!4196687))

(declare-fun m!4196689 () Bool)

(assert (=> b!3685332 m!4196689))

(declare-fun m!4196691 () Bool)

(assert (=> b!3685337 m!4196691))

(declare-fun m!4196693 () Bool)

(assert (=> b!3685337 m!4196693))

(assert (=> b!3685337 m!4196693))

(declare-fun m!4196695 () Bool)

(assert (=> b!3685337 m!4196695))

(declare-fun m!4196697 () Bool)

(assert (=> b!3685342 m!4196697))

(declare-fun m!4196699 () Bool)

(assert (=> b!3685342 m!4196699))

(declare-fun m!4196701 () Bool)

(assert (=> b!3685340 m!4196701))

(declare-fun m!4196703 () Bool)

(assert (=> b!3685340 m!4196703))

(declare-fun m!4196705 () Bool)

(assert (=> b!3685340 m!4196705))

(declare-fun m!4196707 () Bool)

(assert (=> b!3685340 m!4196707))

(declare-fun m!4196709 () Bool)

(assert (=> b!3685340 m!4196709))

(declare-fun m!4196711 () Bool)

(assert (=> b!3685340 m!4196711))

(declare-fun m!4196713 () Bool)

(assert (=> b!3685340 m!4196713))

(declare-fun m!4196715 () Bool)

(assert (=> b!3685340 m!4196715))

(declare-fun m!4196717 () Bool)

(assert (=> b!3685340 m!4196717))

(declare-fun m!4196719 () Bool)

(assert (=> b!3685340 m!4196719))

(assert (=> b!3685340 m!4196713))

(declare-fun m!4196721 () Bool)

(assert (=> b!3685340 m!4196721))

(declare-fun m!4196723 () Bool)

(assert (=> b!3685340 m!4196723))

(assert (=> b!3685340 m!4196709))

(assert (=> b!3685340 m!4196719))

(declare-fun m!4196725 () Bool)

(assert (=> b!3685340 m!4196725))

(assert (=> b!3685340 m!4196723))

(declare-fun m!4196727 () Bool)

(assert (=> b!3685340 m!4196727))

(declare-fun m!4196729 () Bool)

(assert (=> b!3685340 m!4196729))

(declare-fun m!4196731 () Bool)

(assert (=> b!3685340 m!4196731))

(assert (=> b!3685340 m!4196729))

(declare-fun m!4196733 () Bool)

(assert (=> b!3685334 m!4196733))

(declare-fun m!4196735 () Bool)

(assert (=> b!3685335 m!4196735))

(check-sat b_and!275415 (not b!3685333) (not b_next!98439) (not b!3685342) tp_is_empty!18349 (not b!3685338) (not b_next!98437) (not b!3685331) (not b!3685335) (not b!3685340) (not b!3685334) b_and!275417 (not b!3685339) (not b!3685332) (not b!3685337))
(check-sat b_and!275415 b_and!275417 (not b_next!98439) (not b_next!98437))
