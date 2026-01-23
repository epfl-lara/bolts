; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120378 () Bool)

(assert start!120378)

(declare-fun b!1345116 () Bool)

(declare-fun b_free!32867 () Bool)

(declare-fun b_next!33571 () Bool)

(assert (=> b!1345116 (= b_free!32867 (not b_next!33571))))

(declare-fun tp!389359 () Bool)

(declare-fun b_and!90147 () Bool)

(assert (=> b!1345116 (= tp!389359 b_and!90147)))

(declare-fun b_free!32869 () Bool)

(declare-fun b_next!33573 () Bool)

(assert (=> b!1345116 (= b_free!32869 (not b_next!33573))))

(declare-fun tp!389364 () Bool)

(declare-fun b_and!90149 () Bool)

(assert (=> b!1345116 (= tp!389364 b_and!90149)))

(declare-fun b!1345115 () Bool)

(declare-fun b_free!32871 () Bool)

(declare-fun b_next!33575 () Bool)

(assert (=> b!1345115 (= b_free!32871 (not b_next!33575))))

(declare-fun tp!389360 () Bool)

(declare-fun b_and!90151 () Bool)

(assert (=> b!1345115 (= tp!389360 b_and!90151)))

(declare-fun b_free!32873 () Bool)

(declare-fun b_next!33577 () Bool)

(assert (=> b!1345115 (= b_free!32873 (not b_next!33577))))

(declare-fun tp!389355 () Bool)

(declare-fun b_and!90153 () Bool)

(assert (=> b!1345115 (= tp!389355 b_and!90153)))

(declare-fun b!1345127 () Bool)

(declare-fun b_free!32875 () Bool)

(declare-fun b_next!33579 () Bool)

(assert (=> b!1345127 (= b_free!32875 (not b_next!33579))))

(declare-fun tp!389361 () Bool)

(declare-fun b_and!90155 () Bool)

(assert (=> b!1345127 (= tp!389361 b_and!90155)))

(declare-fun b_free!32877 () Bool)

(declare-fun b_next!33581 () Bool)

(assert (=> b!1345127 (= b_free!32877 (not b_next!33581))))

(declare-fun tp!389362 () Bool)

(declare-fun b_and!90157 () Bool)

(assert (=> b!1345127 (= tp!389362 b_and!90157)))

(declare-fun b!1345119 () Bool)

(assert (=> b!1345119 true))

(assert (=> b!1345119 true))

(declare-fun b!1345137 () Bool)

(assert (=> b!1345137 true))

(declare-fun b!1345128 () Bool)

(assert (=> b!1345128 true))

(declare-fun b!1345109 () Bool)

(declare-fun res!606360 () Bool)

(declare-fun e!861514 () Bool)

(assert (=> b!1345109 (=> (not res!606360) (not e!861514))))

(declare-datatypes ((LexerInterface!2082 0))(
  ( (LexerInterfaceExt!2079 (__x!8783 Int)) (Lexer!2080) )
))
(declare-fun thiss!19762 () LexerInterface!2082)

(declare-datatypes ((List!13834 0))(
  ( (Nil!13768) (Cons!13768 (h!19169 (_ BitVec 16)) (t!119739 List!13834)) )
))
(declare-datatypes ((TokenValue!2477 0))(
  ( (FloatLiteralValue!4954 (text!17784 List!13834)) (TokenValueExt!2476 (__x!8784 Int)) (Broken!12385 (value!77636 List!13834)) (Object!2542) (End!2477) (Def!2477) (Underscore!2477) (Match!2477) (Else!2477) (Error!2477) (Case!2477) (If!2477) (Extends!2477) (Abstract!2477) (Class!2477) (Val!2477) (DelimiterValue!4954 (del!2537 List!13834)) (KeywordValue!2483 (value!77637 List!13834)) (CommentValue!4954 (value!77638 List!13834)) (WhitespaceValue!4954 (value!77639 List!13834)) (IndentationValue!2477 (value!77640 List!13834)) (String!16620) (Int32!2477) (Broken!12386 (value!77641 List!13834)) (Boolean!2478) (Unit!19870) (OperatorValue!2480 (op!2537 List!13834)) (IdentifierValue!4954 (value!77642 List!13834)) (IdentifierValue!4955 (value!77643 List!13834)) (WhitespaceValue!4955 (value!77644 List!13834)) (True!4954) (False!4954) (Broken!12387 (value!77645 List!13834)) (Broken!12388 (value!77646 List!13834)) (True!4955) (RightBrace!2477) (RightBracket!2477) (Colon!2477) (Null!2477) (Comma!2477) (LeftBracket!2477) (False!4955) (LeftBrace!2477) (ImaginaryLiteralValue!2477 (text!17785 List!13834)) (StringLiteralValue!7431 (value!77647 List!13834)) (EOFValue!2477 (value!77648 List!13834)) (IdentValue!2477 (value!77649 List!13834)) (DelimiterValue!4955 (value!77650 List!13834)) (DedentValue!2477 (value!77651 List!13834)) (NewLineValue!2477 (value!77652 List!13834)) (IntegerValue!7431 (value!77653 (_ BitVec 32)) (text!17786 List!13834)) (IntegerValue!7432 (value!77654 Int) (text!17787 List!13834)) (Times!2477) (Or!2477) (Equal!2477) (Minus!2477) (Broken!12389 (value!77655 List!13834)) (And!2477) (Div!2477) (LessEqual!2477) (Mod!2477) (Concat!6178) (Not!2477) (Plus!2477) (SpaceValue!2477 (value!77656 List!13834)) (IntegerValue!7433 (value!77657 Int) (text!17788 List!13834)) (StringLiteralValue!7432 (text!17789 List!13834)) (FloatLiteralValue!4955 (text!17790 List!13834)) (BytesLiteralValue!2477 (value!77658 List!13834)) (CommentValue!4955 (value!77659 List!13834)) (StringLiteralValue!7433 (value!77660 List!13834)) (ErrorTokenValue!2477 (msg!2538 List!13834)) )
))
(declare-datatypes ((String!16621 0))(
  ( (String!16622 (value!77661 String)) )
))
(declare-datatypes ((C!7692 0))(
  ( (C!7693 (val!4406 Int)) )
))
(declare-datatypes ((List!13835 0))(
  ( (Nil!13769) (Cons!13769 (h!19170 C!7692) (t!119740 List!13835)) )
))
(declare-datatypes ((IArray!9077 0))(
  ( (IArray!9078 (innerList!4596 List!13835)) )
))
(declare-datatypes ((Conc!4536 0))(
  ( (Node!4536 (left!11803 Conc!4536) (right!12133 Conc!4536) (csize!9302 Int) (cheight!4747 Int)) (Leaf!6926 (xs!7255 IArray!9077) (csize!9303 Int)) (Empty!4536) )
))
(declare-datatypes ((BalanceConc!9012 0))(
  ( (BalanceConc!9013 (c!220190 Conc!4536)) )
))
(declare-datatypes ((Regex!3701 0))(
  ( (ElementMatch!3701 (c!220191 C!7692)) (Concat!6179 (regOne!7914 Regex!3701) (regTwo!7914 Regex!3701)) (EmptyExpr!3701) (Star!3701 (reg!4030 Regex!3701)) (EmptyLang!3701) (Union!3701 (regOne!7915 Regex!3701) (regTwo!7915 Regex!3701)) )
))
(declare-datatypes ((TokenValueInjection!4614 0))(
  ( (TokenValueInjection!4615 (toValue!3630 Int) (toChars!3489 Int)) )
))
(declare-datatypes ((Rule!4574 0))(
  ( (Rule!4575 (regex!2387 Regex!3701) (tag!2649 String!16621) (isSeparator!2387 Bool) (transformation!2387 TokenValueInjection!4614)) )
))
(declare-datatypes ((List!13836 0))(
  ( (Nil!13770) (Cons!13770 (h!19171 Rule!4574) (t!119741 List!13836)) )
))
(declare-fun rules!2550 () List!13836)

(declare-datatypes ((Token!4436 0))(
  ( (Token!4437 (value!77662 TokenValue!2477) (rule!4132 Rule!4574) (size!11231 Int) (originalCharacters!3249 List!13835)) )
))
(declare-fun t2!34 () Token!4436)

(declare-fun rulesProduceIndividualToken!1051 (LexerInterface!2082 List!13836 Token!4436) Bool)

(assert (=> b!1345109 (= res!606360 (rulesProduceIndividualToken!1051 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1345110 () Bool)

(declare-fun lt!444976 () BalanceConc!9012)

(declare-fun e!861507 () Bool)

(declare-datatypes ((List!13837 0))(
  ( (Nil!13771) (Cons!13771 (h!19172 Token!4436) (t!119742 List!13837)) )
))
(declare-fun lt!444981 () List!13837)

(declare-datatypes ((tuple2!13332 0))(
  ( (tuple2!13333 (_1!7552 List!13837) (_2!7552 List!13835)) )
))
(declare-fun lexList!600 (LexerInterface!2082 List!13836 List!13835) tuple2!13332)

(declare-fun list!5254 (BalanceConc!9012) List!13835)

(assert (=> b!1345110 (= e!861507 (= (lexList!600 thiss!19762 rules!2550 (list!5254 lt!444976)) (tuple2!13333 lt!444981 Nil!13769)))))

(declare-fun b!1345111 () Bool)

(declare-fun res!606362 () Bool)

(declare-fun e!861494 () Bool)

(assert (=> b!1345111 (=> res!606362 e!861494)))

(declare-fun lt!444985 () Regex!3701)

(declare-fun lt!444989 () List!13835)

(declare-fun matchR!1694 (Regex!3701 List!13835) Bool)

(assert (=> b!1345111 (= res!606362 (not (matchR!1694 lt!444985 lt!444989)))))

(declare-fun res!606364 () Bool)

(assert (=> start!120378 (=> (not res!606364) (not e!861514))))

(get-info :version)

(assert (=> start!120378 (= res!606364 ((_ is Lexer!2080) thiss!19762))))

(assert (=> start!120378 e!861514))

(assert (=> start!120378 true))

(declare-fun e!861511 () Bool)

(assert (=> start!120378 e!861511))

(declare-fun t1!34 () Token!4436)

(declare-fun e!861506 () Bool)

(declare-fun inv!18101 (Token!4436) Bool)

(assert (=> start!120378 (and (inv!18101 t1!34) e!861506)))

(declare-fun e!861508 () Bool)

(assert (=> start!120378 (and (inv!18101 t2!34) e!861508)))

(declare-fun e!861498 () Bool)

(declare-fun e!861503 () Bool)

(declare-fun b!1345112 () Bool)

(declare-fun tp!389356 () Bool)

(declare-fun inv!18098 (String!16621) Bool)

(declare-fun inv!18102 (TokenValueInjection!4614) Bool)

(assert (=> b!1345112 (= e!861498 (and tp!389356 (inv!18098 (tag!2649 (rule!4132 t2!34))) (inv!18102 (transformation!2387 (rule!4132 t2!34))) e!861503))))

(declare-fun b!1345113 () Bool)

(declare-fun e!861509 () Bool)

(declare-fun e!861491 () Bool)

(assert (=> b!1345113 (= e!861509 e!861491)))

(declare-fun res!606354 () Bool)

(assert (=> b!1345113 (=> res!606354 e!861491)))

(declare-fun lt!444982 () Regex!3701)

(declare-fun lambda!56699 () Int)

(declare-datatypes ((List!13838 0))(
  ( (Nil!13772) (Cons!13772 (h!19173 Regex!3701) (t!119743 List!13838)) )
))
(declare-fun contains!2528 (List!13838 Regex!3701) Bool)

(declare-fun map!3041 (List!13836 Int) List!13838)

(assert (=> b!1345113 (= res!606354 (not (contains!2528 (map!3041 rules!2550 lambda!56699) lt!444982)))))

(declare-fun lambda!56700 () Int)

(declare-fun getWitness!320 (List!13838 Int) Regex!3701)

(assert (=> b!1345113 (= lt!444982 (getWitness!320 (map!3041 rules!2550 lambda!56699) lambda!56700))))

(declare-fun tp!389358 () Bool)

(declare-fun b!1345114 () Bool)

(declare-fun inv!21 (TokenValue!2477) Bool)

(assert (=> b!1345114 (= e!861508 (and (inv!21 (value!77662 t2!34)) e!861498 tp!389358))))

(declare-fun e!861501 () Bool)

(assert (=> b!1345115 (= e!861501 (and tp!389360 tp!389355))))

(assert (=> b!1345116 (= e!861503 (and tp!389359 tp!389364))))

(declare-fun b!1345117 () Bool)

(declare-fun e!861495 () Bool)

(declare-fun tp!389366 () Bool)

(assert (=> b!1345117 (= e!861495 (and tp!389366 (inv!18098 (tag!2649 (rule!4132 t1!34))) (inv!18102 (transformation!2387 (rule!4132 t1!34))) e!861501))))

(declare-fun b!1345118 () Bool)

(declare-fun res!606347 () Bool)

(assert (=> b!1345118 (=> res!606347 e!861494)))

(declare-fun lt!444988 () List!13835)

(declare-fun lt!444978 () C!7692)

(declare-fun contains!2529 (List!13835 C!7692) Bool)

(assert (=> b!1345118 (= res!606347 (not (contains!2529 lt!444988 lt!444978)))))

(declare-fun e!861505 () Bool)

(declare-fun e!861504 () Bool)

(assert (=> b!1345119 (= e!861505 (not e!861504))))

(declare-fun res!606343 () Bool)

(assert (=> b!1345119 (=> res!606343 e!861504)))

(declare-fun lambda!56698 () Int)

(declare-fun Exists!853 (Int) Bool)

(assert (=> b!1345119 (= res!606343 (not (Exists!853 lambda!56698)))))

(assert (=> b!1345119 (Exists!853 lambda!56698)))

(declare-datatypes ((Unit!19871 0))(
  ( (Unit!19872) )
))
(declare-fun lt!444974 () Unit!19871)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!171 (Regex!3701 List!13835) Unit!19871)

(assert (=> b!1345119 (= lt!444974 (lemmaPrefixMatchThenExistsStringThatMatches!171 lt!444985 lt!444988))))

(declare-fun b!1345120 () Bool)

(declare-fun e!861497 () Bool)

(declare-fun tp!389365 () Bool)

(assert (=> b!1345120 (= e!861511 (and e!861497 tp!389365))))

(declare-fun b!1345121 () Bool)

(declare-fun res!606361 () Bool)

(assert (=> b!1345121 (=> (not res!606361) (not e!861514))))

(assert (=> b!1345121 (= res!606361 (not (= (isSeparator!2387 (rule!4132 t1!34)) (isSeparator!2387 (rule!4132 t2!34)))))))

(declare-fun b!1345122 () Bool)

(declare-fun e!861493 () Bool)

(assert (=> b!1345122 (= e!861504 e!861493)))

(declare-fun res!606349 () Bool)

(assert (=> b!1345122 (=> res!606349 e!861493)))

(declare-fun ++!3530 (List!13835 List!13835) List!13835)

(declare-fun getSuffix!549 (List!13835 List!13835) List!13835)

(assert (=> b!1345122 (= res!606349 (not (= lt!444989 (++!3530 lt!444988 (getSuffix!549 lt!444989 lt!444988)))))))

(declare-fun pickWitness!156 (Int) List!13835)

(assert (=> b!1345122 (= lt!444989 (pickWitness!156 lambda!56698))))

(declare-fun b!1345123 () Bool)

(declare-fun res!606352 () Bool)

(assert (=> b!1345123 (=> (not res!606352) (not e!861514))))

(assert (=> b!1345123 (= res!606352 (rulesProduceIndividualToken!1051 thiss!19762 rules!2550 t1!34))))

(declare-fun tp!389363 () Bool)

(declare-fun b!1345124 () Bool)

(declare-fun e!861499 () Bool)

(assert (=> b!1345124 (= e!861497 (and tp!389363 (inv!18098 (tag!2649 (h!19171 rules!2550))) (inv!18102 (transformation!2387 (h!19171 rules!2550))) e!861499))))

(declare-fun b!1345125 () Bool)

(declare-fun res!606346 () Bool)

(assert (=> b!1345125 (=> res!606346 e!861507)))

(declare-datatypes ((IArray!9079 0))(
  ( (IArray!9080 (innerList!4597 List!13837)) )
))
(declare-datatypes ((Conc!4537 0))(
  ( (Node!4537 (left!11804 Conc!4537) (right!12134 Conc!4537) (csize!9304 Int) (cheight!4748 Int)) (Leaf!6927 (xs!7256 IArray!9079) (csize!9305 Int)) (Empty!4537) )
))
(declare-datatypes ((BalanceConc!9014 0))(
  ( (BalanceConc!9015 (c!220192 Conc!4537)) )
))
(declare-datatypes ((tuple2!13334 0))(
  ( (tuple2!13335 (_1!7553 BalanceConc!9014) (_2!7553 BalanceConc!9012)) )
))
(declare-fun lt!444980 () tuple2!13334)

(declare-fun isEmpty!8216 (BalanceConc!9012) Bool)

(assert (=> b!1345125 (= res!606346 (not (isEmpty!8216 (_2!7553 lt!444980))))))

(declare-fun b!1345126 () Bool)

(declare-fun res!606350 () Bool)

(assert (=> b!1345126 (=> res!606350 e!861494)))

(declare-fun lt!444975 () C!7692)

(assert (=> b!1345126 (= res!606350 (not (contains!2529 lt!444989 lt!444975)))))

(assert (=> b!1345127 (= e!861499 (and tp!389361 tp!389362))))

(declare-fun e!861492 () Bool)

(assert (=> b!1345128 (= e!861491 e!861492)))

(declare-fun res!606344 () Bool)

(assert (=> b!1345128 (=> res!606344 e!861492)))

(declare-fun lambda!56701 () Int)

(declare-fun exists!432 (List!13836 Int) Bool)

(assert (=> b!1345128 (= res!606344 (not (exists!432 rules!2550 lambda!56701)))))

(assert (=> b!1345128 (exists!432 rules!2550 lambda!56701)))

(declare-fun lt!444987 () Unit!19871)

(declare-fun lemmaMapContains!106 (List!13836 Int Regex!3701) Unit!19871)

(assert (=> b!1345128 (= lt!444987 (lemmaMapContains!106 rules!2550 lambda!56699 lt!444982))))

(declare-fun b!1345129 () Bool)

(assert (=> b!1345129 (= e!861492 e!861507)))

(declare-fun res!606363 () Bool)

(assert (=> b!1345129 (=> res!606363 e!861507)))

(declare-fun list!5255 (BalanceConc!9014) List!13837)

(assert (=> b!1345129 (= res!606363 (not (= (list!5255 (_1!7553 lt!444980)) lt!444981)))))

(assert (=> b!1345129 (= lt!444981 (Cons!13771 t1!34 Nil!13771))))

(declare-fun lex!909 (LexerInterface!2082 List!13836 BalanceConc!9012) tuple2!13334)

(assert (=> b!1345129 (= lt!444980 (lex!909 thiss!19762 rules!2550 lt!444976))))

(declare-fun print!848 (LexerInterface!2082 BalanceConc!9014) BalanceConc!9012)

(declare-fun singletonSeq!1000 (Token!4436) BalanceConc!9014)

(assert (=> b!1345129 (= lt!444976 (print!848 thiss!19762 (singletonSeq!1000 t1!34)))))

(declare-fun lt!444986 () Rule!4574)

(declare-fun getWitness!321 (List!13836 Int) Rule!4574)

(assert (=> b!1345129 (= lt!444986 (getWitness!321 rules!2550 lambda!56701))))

(declare-fun b!1345130 () Bool)

(declare-fun res!606355 () Bool)

(assert (=> b!1345130 (=> (not res!606355) (not e!861514))))

(declare-fun rulesInvariant!1952 (LexerInterface!2082 List!13836) Bool)

(assert (=> b!1345130 (= res!606355 (rulesInvariant!1952 thiss!19762 rules!2550))))

(declare-fun b!1345131 () Bool)

(declare-fun res!606357 () Bool)

(assert (=> b!1345131 (=> (not res!606357) (not e!861514))))

(declare-fun isEmpty!8217 (List!13836) Bool)

(assert (=> b!1345131 (= res!606357 (not (isEmpty!8217 rules!2550)))))

(declare-fun b!1345132 () Bool)

(assert (=> b!1345132 (= e!861493 e!861494)))

(declare-fun res!606348 () Bool)

(assert (=> b!1345132 (=> res!606348 e!861494)))

(assert (=> b!1345132 (= res!606348 (not (contains!2529 lt!444988 lt!444975)))))

(declare-fun lt!444983 () BalanceConc!9012)

(declare-fun apply!3277 (BalanceConc!9012 Int) C!7692)

(assert (=> b!1345132 (= lt!444975 (apply!3277 lt!444983 0))))

(declare-fun b!1345133 () Bool)

(declare-fun res!606353 () Bool)

(declare-fun e!861502 () Bool)

(assert (=> b!1345133 (=> (not res!606353) (not e!861502))))

(declare-fun sepAndNonSepRulesDisjointChars!760 (List!13836 List!13836) Bool)

(assert (=> b!1345133 (= res!606353 (sepAndNonSepRulesDisjointChars!760 rules!2550 rules!2550))))

(declare-fun b!1345134 () Bool)

(assert (=> b!1345134 (= e!861502 e!861505)))

(declare-fun res!606359 () Bool)

(assert (=> b!1345134 (=> (not res!606359) (not e!861505))))

(declare-fun prefixMatch!210 (Regex!3701 List!13835) Bool)

(assert (=> b!1345134 (= res!606359 (prefixMatch!210 lt!444985 lt!444988))))

(declare-fun rulesRegex!270 (LexerInterface!2082 List!13836) Regex!3701)

(assert (=> b!1345134 (= lt!444985 (rulesRegex!270 thiss!19762 rules!2550))))

(declare-fun lt!444984 () List!13835)

(assert (=> b!1345134 (= lt!444988 (++!3530 lt!444984 (Cons!13769 lt!444978 Nil!13769)))))

(declare-fun lt!444979 () BalanceConc!9012)

(assert (=> b!1345134 (= lt!444978 (apply!3277 lt!444979 0))))

(assert (=> b!1345134 (= lt!444984 (list!5254 lt!444983))))

(declare-fun charsOf!1359 (Token!4436) BalanceConc!9012)

(assert (=> b!1345134 (= lt!444983 (charsOf!1359 t1!34))))

(declare-fun b!1345135 () Bool)

(declare-fun tp!389357 () Bool)

(assert (=> b!1345135 (= e!861506 (and (inv!21 (value!77662 t1!34)) e!861495 tp!389357))))

(declare-fun b!1345136 () Bool)

(declare-fun res!606356 () Bool)

(assert (=> b!1345136 (=> res!606356 e!861494)))

(assert (=> b!1345136 (= res!606356 (not (contains!2529 lt!444989 lt!444978)))))

(assert (=> b!1345137 (= e!861494 e!861509)))

(declare-fun res!606358 () Bool)

(assert (=> b!1345137 (=> res!606358 e!861509)))

(declare-fun exists!433 (List!13838 Int) Bool)

(assert (=> b!1345137 (= res!606358 (not (exists!433 (map!3041 rules!2550 lambda!56699) lambda!56700)))))

(declare-fun lt!444977 () List!13838)

(assert (=> b!1345137 (exists!433 lt!444977 lambda!56700)))

(declare-fun lt!444990 () Unit!19871)

(declare-fun matchRGenUnionSpec!118 (Regex!3701 List!13838 List!13835) Unit!19871)

(assert (=> b!1345137 (= lt!444990 (matchRGenUnionSpec!118 lt!444985 lt!444977 lt!444989))))

(assert (=> b!1345137 (= lt!444977 (map!3041 rules!2550 lambda!56699))))

(declare-fun b!1345138 () Bool)

(assert (=> b!1345138 (= e!861514 e!861502)))

(declare-fun res!606345 () Bool)

(assert (=> b!1345138 (=> (not res!606345) (not e!861502))))

(declare-fun size!11232 (BalanceConc!9012) Int)

(assert (=> b!1345138 (= res!606345 (> (size!11232 lt!444979) 0))))

(assert (=> b!1345138 (= lt!444979 (charsOf!1359 t2!34))))

(declare-fun b!1345139 () Bool)

(declare-fun res!606351 () Bool)

(assert (=> b!1345139 (=> (not res!606351) (not e!861502))))

(declare-fun separableTokensPredicate!365 (LexerInterface!2082 Token!4436 Token!4436 List!13836) Bool)

(assert (=> b!1345139 (= res!606351 (not (separableTokensPredicate!365 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (= (and start!120378 res!606364) b!1345131))

(assert (= (and b!1345131 res!606357) b!1345130))

(assert (= (and b!1345130 res!606355) b!1345123))

(assert (= (and b!1345123 res!606352) b!1345109))

(assert (= (and b!1345109 res!606360) b!1345121))

(assert (= (and b!1345121 res!606361) b!1345138))

(assert (= (and b!1345138 res!606345) b!1345133))

(assert (= (and b!1345133 res!606353) b!1345139))

(assert (= (and b!1345139 res!606351) b!1345134))

(assert (= (and b!1345134 res!606359) b!1345119))

(assert (= (and b!1345119 (not res!606343)) b!1345122))

(assert (= (and b!1345122 (not res!606349)) b!1345132))

(assert (= (and b!1345132 (not res!606348)) b!1345126))

(assert (= (and b!1345126 (not res!606350)) b!1345118))

(assert (= (and b!1345118 (not res!606347)) b!1345136))

(assert (= (and b!1345136 (not res!606356)) b!1345111))

(assert (= (and b!1345111 (not res!606362)) b!1345137))

(assert (= (and b!1345137 (not res!606358)) b!1345113))

(assert (= (and b!1345113 (not res!606354)) b!1345128))

(assert (= (and b!1345128 (not res!606344)) b!1345129))

(assert (= (and b!1345129 (not res!606363)) b!1345125))

(assert (= (and b!1345125 (not res!606346)) b!1345110))

(assert (= b!1345124 b!1345127))

(assert (= b!1345120 b!1345124))

(assert (= (and start!120378 ((_ is Cons!13770) rules!2550)) b!1345120))

(assert (= b!1345117 b!1345115))

(assert (= b!1345135 b!1345117))

(assert (= start!120378 b!1345135))

(assert (= b!1345112 b!1345116))

(assert (= b!1345114 b!1345112))

(assert (= start!120378 b!1345114))

(declare-fun m!1503821 () Bool)

(assert (=> b!1345123 m!1503821))

(declare-fun m!1503823 () Bool)

(assert (=> start!120378 m!1503823))

(declare-fun m!1503825 () Bool)

(assert (=> start!120378 m!1503825))

(declare-fun m!1503827 () Bool)

(assert (=> b!1345139 m!1503827))

(declare-fun m!1503829 () Bool)

(assert (=> b!1345125 m!1503829))

(declare-fun m!1503831 () Bool)

(assert (=> b!1345129 m!1503831))

(declare-fun m!1503833 () Bool)

(assert (=> b!1345129 m!1503833))

(assert (=> b!1345129 m!1503831))

(declare-fun m!1503835 () Bool)

(assert (=> b!1345129 m!1503835))

(declare-fun m!1503837 () Bool)

(assert (=> b!1345129 m!1503837))

(declare-fun m!1503839 () Bool)

(assert (=> b!1345129 m!1503839))

(declare-fun m!1503841 () Bool)

(assert (=> b!1345138 m!1503841))

(declare-fun m!1503843 () Bool)

(assert (=> b!1345138 m!1503843))

(declare-fun m!1503845 () Bool)

(assert (=> b!1345137 m!1503845))

(declare-fun m!1503847 () Bool)

(assert (=> b!1345137 m!1503847))

(declare-fun m!1503849 () Bool)

(assert (=> b!1345137 m!1503849))

(assert (=> b!1345137 m!1503845))

(assert (=> b!1345137 m!1503845))

(declare-fun m!1503851 () Bool)

(assert (=> b!1345137 m!1503851))

(declare-fun m!1503853 () Bool)

(assert (=> b!1345124 m!1503853))

(declare-fun m!1503855 () Bool)

(assert (=> b!1345124 m!1503855))

(declare-fun m!1503857 () Bool)

(assert (=> b!1345132 m!1503857))

(declare-fun m!1503859 () Bool)

(assert (=> b!1345132 m!1503859))

(declare-fun m!1503861 () Bool)

(assert (=> b!1345118 m!1503861))

(assert (=> b!1345113 m!1503845))

(assert (=> b!1345113 m!1503845))

(declare-fun m!1503863 () Bool)

(assert (=> b!1345113 m!1503863))

(assert (=> b!1345113 m!1503845))

(assert (=> b!1345113 m!1503845))

(declare-fun m!1503865 () Bool)

(assert (=> b!1345113 m!1503865))

(declare-fun m!1503867 () Bool)

(assert (=> b!1345135 m!1503867))

(declare-fun m!1503869 () Bool)

(assert (=> b!1345109 m!1503869))

(declare-fun m!1503871 () Bool)

(assert (=> b!1345128 m!1503871))

(assert (=> b!1345128 m!1503871))

(declare-fun m!1503873 () Bool)

(assert (=> b!1345128 m!1503873))

(declare-fun m!1503875 () Bool)

(assert (=> b!1345114 m!1503875))

(declare-fun m!1503877 () Bool)

(assert (=> b!1345126 m!1503877))

(declare-fun m!1503879 () Bool)

(assert (=> b!1345122 m!1503879))

(assert (=> b!1345122 m!1503879))

(declare-fun m!1503881 () Bool)

(assert (=> b!1345122 m!1503881))

(declare-fun m!1503883 () Bool)

(assert (=> b!1345122 m!1503883))

(declare-fun m!1503885 () Bool)

(assert (=> b!1345133 m!1503885))

(declare-fun m!1503887 () Bool)

(assert (=> b!1345117 m!1503887))

(declare-fun m!1503889 () Bool)

(assert (=> b!1345117 m!1503889))

(declare-fun m!1503891 () Bool)

(assert (=> b!1345119 m!1503891))

(assert (=> b!1345119 m!1503891))

(declare-fun m!1503893 () Bool)

(assert (=> b!1345119 m!1503893))

(declare-fun m!1503895 () Bool)

(assert (=> b!1345136 m!1503895))

(declare-fun m!1503897 () Bool)

(assert (=> b!1345130 m!1503897))

(declare-fun m!1503899 () Bool)

(assert (=> b!1345134 m!1503899))

(declare-fun m!1503901 () Bool)

(assert (=> b!1345134 m!1503901))

(declare-fun m!1503903 () Bool)

(assert (=> b!1345134 m!1503903))

(declare-fun m!1503905 () Bool)

(assert (=> b!1345134 m!1503905))

(declare-fun m!1503907 () Bool)

(assert (=> b!1345134 m!1503907))

(declare-fun m!1503909 () Bool)

(assert (=> b!1345134 m!1503909))

(declare-fun m!1503911 () Bool)

(assert (=> b!1345131 m!1503911))

(declare-fun m!1503913 () Bool)

(assert (=> b!1345111 m!1503913))

(declare-fun m!1503915 () Bool)

(assert (=> b!1345112 m!1503915))

(declare-fun m!1503917 () Bool)

(assert (=> b!1345112 m!1503917))

(declare-fun m!1503919 () Bool)

(assert (=> b!1345110 m!1503919))

(assert (=> b!1345110 m!1503919))

(declare-fun m!1503921 () Bool)

(assert (=> b!1345110 m!1503921))

(check-sat (not b!1345124) (not b!1345125) b_and!90153 (not b!1345117) (not b!1345122) (not b!1345114) (not b_next!33571) (not b!1345135) (not b!1345139) (not b!1345132) (not b!1345112) (not b!1345111) b_and!90149 b_and!90147 b_and!90157 (not b_next!33573) (not b!1345131) (not b!1345133) (not b!1345118) (not b!1345120) (not b_next!33575) (not b!1345110) (not b!1345138) (not b!1345128) (not b!1345123) (not b!1345113) (not b!1345129) (not b!1345109) (not start!120378) (not b!1345126) (not b_next!33581) (not b!1345119) (not b!1345130) b_and!90151 (not b_next!33579) (not b!1345136) (not b!1345134) (not b_next!33577) (not b!1345137) b_and!90155)
(check-sat (not b_next!33575) b_and!90153 (not b_next!33581) (not b_next!33571) b_and!90149 b_and!90147 b_and!90157 (not b_next!33573) b_and!90151 (not b_next!33579) (not b_next!33577) b_and!90155)
(get-model)

(declare-fun b!1345194 () Bool)

(declare-fun e!861548 () Bool)

(declare-fun e!861550 () Bool)

(assert (=> b!1345194 (= e!861548 e!861550)))

(declare-fun c!220204 () Bool)

(assert (=> b!1345194 (= c!220204 ((_ is IntegerValue!7432) (value!77662 t1!34)))))

(declare-fun b!1345195 () Bool)

(declare-fun res!606399 () Bool)

(declare-fun e!861549 () Bool)

(assert (=> b!1345195 (=> res!606399 e!861549)))

(assert (=> b!1345195 (= res!606399 (not ((_ is IntegerValue!7433) (value!77662 t1!34))))))

(assert (=> b!1345195 (= e!861550 e!861549)))

(declare-fun b!1345196 () Bool)

(declare-fun inv!16 (TokenValue!2477) Bool)

(assert (=> b!1345196 (= e!861548 (inv!16 (value!77662 t1!34)))))

(declare-fun b!1345197 () Bool)

(declare-fun inv!15 (TokenValue!2477) Bool)

(assert (=> b!1345197 (= e!861549 (inv!15 (value!77662 t1!34)))))

(declare-fun d!379410 () Bool)

(declare-fun c!220203 () Bool)

(assert (=> d!379410 (= c!220203 ((_ is IntegerValue!7431) (value!77662 t1!34)))))

(assert (=> d!379410 (= (inv!21 (value!77662 t1!34)) e!861548)))

(declare-fun b!1345198 () Bool)

(declare-fun inv!17 (TokenValue!2477) Bool)

(assert (=> b!1345198 (= e!861550 (inv!17 (value!77662 t1!34)))))

(assert (= (and d!379410 c!220203) b!1345196))

(assert (= (and d!379410 (not c!220203)) b!1345194))

(assert (= (and b!1345194 c!220204) b!1345198))

(assert (= (and b!1345194 (not c!220204)) b!1345195))

(assert (= (and b!1345195 (not res!606399)) b!1345197))

(declare-fun m!1503957 () Bool)

(assert (=> b!1345196 m!1503957))

(declare-fun m!1503959 () Bool)

(assert (=> b!1345197 m!1503959))

(declare-fun m!1503961 () Bool)

(assert (=> b!1345198 m!1503961))

(assert (=> b!1345135 d!379410))

(declare-fun b!1345201 () Bool)

(declare-fun e!861553 () Bool)

(declare-fun e!861555 () Bool)

(assert (=> b!1345201 (= e!861553 e!861555)))

(declare-fun c!220206 () Bool)

(assert (=> b!1345201 (= c!220206 ((_ is IntegerValue!7432) (value!77662 t2!34)))))

(declare-fun b!1345202 () Bool)

(declare-fun res!606402 () Bool)

(declare-fun e!861554 () Bool)

(assert (=> b!1345202 (=> res!606402 e!861554)))

(assert (=> b!1345202 (= res!606402 (not ((_ is IntegerValue!7433) (value!77662 t2!34))))))

(assert (=> b!1345202 (= e!861555 e!861554)))

(declare-fun b!1345203 () Bool)

(assert (=> b!1345203 (= e!861553 (inv!16 (value!77662 t2!34)))))

(declare-fun b!1345204 () Bool)

(assert (=> b!1345204 (= e!861554 (inv!15 (value!77662 t2!34)))))

(declare-fun d!379420 () Bool)

(declare-fun c!220205 () Bool)

(assert (=> d!379420 (= c!220205 ((_ is IntegerValue!7431) (value!77662 t2!34)))))

(assert (=> d!379420 (= (inv!21 (value!77662 t2!34)) e!861553)))

(declare-fun b!1345205 () Bool)

(assert (=> b!1345205 (= e!861555 (inv!17 (value!77662 t2!34)))))

(assert (= (and d!379420 c!220205) b!1345203))

(assert (= (and d!379420 (not c!220205)) b!1345201))

(assert (= (and b!1345201 c!220206) b!1345205))

(assert (= (and b!1345201 (not c!220206)) b!1345202))

(assert (= (and b!1345202 (not res!606402)) b!1345204))

(declare-fun m!1503967 () Bool)

(assert (=> b!1345203 m!1503967))

(declare-fun m!1503969 () Bool)

(assert (=> b!1345204 m!1503969))

(declare-fun m!1503971 () Bool)

(assert (=> b!1345205 m!1503971))

(assert (=> b!1345114 d!379420))

(declare-fun d!379424 () Bool)

(declare-fun lt!445005 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1964 (List!13835) (InoxSet C!7692))

(assert (=> d!379424 (= lt!445005 (select (content!1964 lt!444989) lt!444978))))

(declare-fun e!861567 () Bool)

(assert (=> d!379424 (= lt!445005 e!861567)))

(declare-fun res!606414 () Bool)

(assert (=> d!379424 (=> (not res!606414) (not e!861567))))

(assert (=> d!379424 (= res!606414 ((_ is Cons!13769) lt!444989))))

(assert (=> d!379424 (= (contains!2529 lt!444989 lt!444978) lt!445005)))

(declare-fun b!1345223 () Bool)

(declare-fun e!861568 () Bool)

(assert (=> b!1345223 (= e!861567 e!861568)))

(declare-fun res!606415 () Bool)

(assert (=> b!1345223 (=> res!606415 e!861568)))

(assert (=> b!1345223 (= res!606415 (= (h!19170 lt!444989) lt!444978))))

(declare-fun b!1345224 () Bool)

(assert (=> b!1345224 (= e!861568 (contains!2529 (t!119740 lt!444989) lt!444978))))

(assert (= (and d!379424 res!606414) b!1345223))

(assert (= (and b!1345223 (not res!606415)) b!1345224))

(declare-fun m!1503987 () Bool)

(assert (=> d!379424 m!1503987))

(declare-fun m!1503989 () Bool)

(assert (=> d!379424 m!1503989))

(declare-fun m!1503991 () Bool)

(assert (=> b!1345224 m!1503991))

(assert (=> b!1345136 d!379424))

(declare-fun d!379428 () Bool)

(declare-fun lt!445020 () C!7692)

(declare-fun apply!3281 (List!13835 Int) C!7692)

(assert (=> d!379428 (= lt!445020 (apply!3281 (list!5254 lt!444979) 0))))

(declare-fun apply!3282 (Conc!4536 Int) C!7692)

(assert (=> d!379428 (= lt!445020 (apply!3282 (c!220190 lt!444979) 0))))

(declare-fun e!861583 () Bool)

(assert (=> d!379428 e!861583))

(declare-fun res!606424 () Bool)

(assert (=> d!379428 (=> (not res!606424) (not e!861583))))

(assert (=> d!379428 (= res!606424 (<= 0 0))))

(assert (=> d!379428 (= (apply!3277 lt!444979 0) lt!445020)))

(declare-fun b!1345245 () Bool)

(assert (=> b!1345245 (= e!861583 (< 0 (size!11232 lt!444979)))))

(assert (= (and d!379428 res!606424) b!1345245))

(declare-fun m!1504021 () Bool)

(assert (=> d!379428 m!1504021))

(assert (=> d!379428 m!1504021))

(declare-fun m!1504023 () Bool)

(assert (=> d!379428 m!1504023))

(declare-fun m!1504025 () Bool)

(assert (=> d!379428 m!1504025))

(assert (=> b!1345245 m!1503841))

(assert (=> b!1345134 d!379428))

(declare-fun d!379438 () Bool)

(declare-fun c!220224 () Bool)

(declare-fun isEmpty!8221 (List!13835) Bool)

(assert (=> d!379438 (= c!220224 (isEmpty!8221 lt!444988))))

(declare-fun e!861606 () Bool)

(assert (=> d!379438 (= (prefixMatch!210 lt!444985 lt!444988) e!861606)))

(declare-fun b!1345282 () Bool)

(declare-fun lostCause!315 (Regex!3701) Bool)

(assert (=> b!1345282 (= e!861606 (not (lostCause!315 lt!444985)))))

(declare-fun b!1345283 () Bool)

(declare-fun derivativeStep!939 (Regex!3701 C!7692) Regex!3701)

(declare-fun head!2403 (List!13835) C!7692)

(declare-fun tail!1940 (List!13835) List!13835)

(assert (=> b!1345283 (= e!861606 (prefixMatch!210 (derivativeStep!939 lt!444985 (head!2403 lt!444988)) (tail!1940 lt!444988)))))

(assert (= (and d!379438 c!220224) b!1345282))

(assert (= (and d!379438 (not c!220224)) b!1345283))

(declare-fun m!1504061 () Bool)

(assert (=> d!379438 m!1504061))

(declare-fun m!1504063 () Bool)

(assert (=> b!1345282 m!1504063))

(declare-fun m!1504065 () Bool)

(assert (=> b!1345283 m!1504065))

(assert (=> b!1345283 m!1504065))

(declare-fun m!1504067 () Bool)

(assert (=> b!1345283 m!1504067))

(declare-fun m!1504069 () Bool)

(assert (=> b!1345283 m!1504069))

(assert (=> b!1345283 m!1504067))

(assert (=> b!1345283 m!1504069))

(declare-fun m!1504071 () Bool)

(assert (=> b!1345283 m!1504071))

(assert (=> b!1345134 d!379438))

(declare-fun d!379446 () Bool)

(declare-fun lt!445031 () BalanceConc!9012)

(assert (=> d!379446 (= (list!5254 lt!445031) (originalCharacters!3249 t1!34))))

(declare-fun dynLambda!6102 (Int TokenValue!2477) BalanceConc!9012)

(assert (=> d!379446 (= lt!445031 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34)))))

(assert (=> d!379446 (= (charsOf!1359 t1!34) lt!445031)))

(declare-fun b_lambda!39955 () Bool)

(assert (=> (not b_lambda!39955) (not d!379446)))

(declare-fun tb!70765 () Bool)

(declare-fun t!119758 () Bool)

(assert (=> (and b!1345116 (= (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (toChars!3489 (transformation!2387 (rule!4132 t1!34)))) t!119758) tb!70765))

(declare-fun b!1345319 () Bool)

(declare-fun e!861625 () Bool)

(declare-fun tp!389373 () Bool)

(declare-fun inv!18105 (Conc!4536) Bool)

(assert (=> b!1345319 (= e!861625 (and (inv!18105 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34)))) tp!389373))))

(declare-fun result!86048 () Bool)

(declare-fun inv!18106 (BalanceConc!9012) Bool)

(assert (=> tb!70765 (= result!86048 (and (inv!18106 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34))) e!861625))))

(assert (= tb!70765 b!1345319))

(declare-fun m!1504087 () Bool)

(assert (=> b!1345319 m!1504087))

(declare-fun m!1504089 () Bool)

(assert (=> tb!70765 m!1504089))

(assert (=> d!379446 t!119758))

(declare-fun b_and!90171 () Bool)

(assert (= b_and!90149 (and (=> t!119758 result!86048) b_and!90171)))

(declare-fun t!119760 () Bool)

(declare-fun tb!70767 () Bool)

(assert (=> (and b!1345115 (= (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (toChars!3489 (transformation!2387 (rule!4132 t1!34)))) t!119760) tb!70767))

(declare-fun result!86052 () Bool)

(assert (= result!86052 result!86048))

(assert (=> d!379446 t!119760))

(declare-fun b_and!90173 () Bool)

(assert (= b_and!90153 (and (=> t!119760 result!86052) b_and!90173)))

(declare-fun t!119762 () Bool)

(declare-fun tb!70769 () Bool)

(assert (=> (and b!1345127 (= (toChars!3489 (transformation!2387 (h!19171 rules!2550))) (toChars!3489 (transformation!2387 (rule!4132 t1!34)))) t!119762) tb!70769))

(declare-fun result!86054 () Bool)

(assert (= result!86054 result!86048))

(assert (=> d!379446 t!119762))

(declare-fun b_and!90175 () Bool)

(assert (= b_and!90157 (and (=> t!119762 result!86054) b_and!90175)))

(declare-fun m!1504091 () Bool)

(assert (=> d!379446 m!1504091))

(declare-fun m!1504093 () Bool)

(assert (=> d!379446 m!1504093))

(assert (=> b!1345134 d!379446))

(declare-fun bs!332588 () Bool)

(declare-fun d!379450 () Bool)

(assert (= bs!332588 (and d!379450 b!1345137)))

(declare-fun lambda!56704 () Int)

(assert (=> bs!332588 (= lambda!56704 lambda!56699)))

(declare-fun lt!445037 () Unit!19871)

(declare-fun lemma!109 (List!13836 LexerInterface!2082 List!13836) Unit!19871)

(assert (=> d!379450 (= lt!445037 (lemma!109 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!117 (List!13838) Regex!3701)

(assert (=> d!379450 (= (rulesRegex!270 thiss!19762 rules!2550) (generalisedUnion!117 (map!3041 rules!2550 lambda!56704)))))

(declare-fun bs!332589 () Bool)

(assert (= bs!332589 d!379450))

(declare-fun m!1504109 () Bool)

(assert (=> bs!332589 m!1504109))

(declare-fun m!1504111 () Bool)

(assert (=> bs!332589 m!1504111))

(assert (=> bs!332589 m!1504111))

(declare-fun m!1504113 () Bool)

(assert (=> bs!332589 m!1504113))

(assert (=> b!1345134 d!379450))

(declare-fun d!379454 () Bool)

(declare-fun list!5258 (Conc!4536) List!13835)

(assert (=> d!379454 (= (list!5254 lt!444983) (list!5258 (c!220190 lt!444983)))))

(declare-fun bs!332590 () Bool)

(assert (= bs!332590 d!379454))

(declare-fun m!1504115 () Bool)

(assert (=> bs!332590 m!1504115))

(assert (=> b!1345134 d!379454))

(declare-fun b!1345343 () Bool)

(declare-fun e!861637 () List!13835)

(assert (=> b!1345343 (= e!861637 (Cons!13769 (h!19170 lt!444984) (++!3530 (t!119740 lt!444984) (Cons!13769 lt!444978 Nil!13769))))))

(declare-fun b!1345342 () Bool)

(assert (=> b!1345342 (= e!861637 (Cons!13769 lt!444978 Nil!13769))))

(declare-fun d!379456 () Bool)

(declare-fun e!861638 () Bool)

(assert (=> d!379456 e!861638))

(declare-fun res!606470 () Bool)

(assert (=> d!379456 (=> (not res!606470) (not e!861638))))

(declare-fun lt!445040 () List!13835)

(assert (=> d!379456 (= res!606470 (= (content!1964 lt!445040) ((_ map or) (content!1964 lt!444984) (content!1964 (Cons!13769 lt!444978 Nil!13769)))))))

(assert (=> d!379456 (= lt!445040 e!861637)))

(declare-fun c!220236 () Bool)

(assert (=> d!379456 (= c!220236 ((_ is Nil!13769) lt!444984))))

(assert (=> d!379456 (= (++!3530 lt!444984 (Cons!13769 lt!444978 Nil!13769)) lt!445040)))

(declare-fun b!1345344 () Bool)

(declare-fun res!606471 () Bool)

(assert (=> b!1345344 (=> (not res!606471) (not e!861638))))

(declare-fun size!11239 (List!13835) Int)

(assert (=> b!1345344 (= res!606471 (= (size!11239 lt!445040) (+ (size!11239 lt!444984) (size!11239 (Cons!13769 lt!444978 Nil!13769)))))))

(declare-fun b!1345345 () Bool)

(assert (=> b!1345345 (= e!861638 (or (not (= (Cons!13769 lt!444978 Nil!13769) Nil!13769)) (= lt!445040 lt!444984)))))

(assert (= (and d!379456 c!220236) b!1345342))

(assert (= (and d!379456 (not c!220236)) b!1345343))

(assert (= (and d!379456 res!606470) b!1345344))

(assert (= (and b!1345344 res!606471) b!1345345))

(declare-fun m!1504125 () Bool)

(assert (=> b!1345343 m!1504125))

(declare-fun m!1504127 () Bool)

(assert (=> d!379456 m!1504127))

(declare-fun m!1504129 () Bool)

(assert (=> d!379456 m!1504129))

(declare-fun m!1504131 () Bool)

(assert (=> d!379456 m!1504131))

(declare-fun m!1504133 () Bool)

(assert (=> b!1345344 m!1504133))

(declare-fun m!1504135 () Bool)

(assert (=> b!1345344 m!1504135))

(declare-fun m!1504137 () Bool)

(assert (=> b!1345344 m!1504137))

(assert (=> b!1345134 d!379456))

(declare-fun d!379460 () Bool)

(declare-fun lt!445043 () Bool)

(declare-fun content!1965 (List!13838) (InoxSet Regex!3701))

(assert (=> d!379460 (= lt!445043 (select (content!1965 (map!3041 rules!2550 lambda!56699)) lt!444982))))

(declare-fun e!861644 () Bool)

(assert (=> d!379460 (= lt!445043 e!861644)))

(declare-fun res!606477 () Bool)

(assert (=> d!379460 (=> (not res!606477) (not e!861644))))

(assert (=> d!379460 (= res!606477 ((_ is Cons!13772) (map!3041 rules!2550 lambda!56699)))))

(assert (=> d!379460 (= (contains!2528 (map!3041 rules!2550 lambda!56699) lt!444982) lt!445043)))

(declare-fun b!1345350 () Bool)

(declare-fun e!861643 () Bool)

(assert (=> b!1345350 (= e!861644 e!861643)))

(declare-fun res!606476 () Bool)

(assert (=> b!1345350 (=> res!606476 e!861643)))

(assert (=> b!1345350 (= res!606476 (= (h!19173 (map!3041 rules!2550 lambda!56699)) lt!444982))))

(declare-fun b!1345351 () Bool)

(assert (=> b!1345351 (= e!861643 (contains!2528 (t!119743 (map!3041 rules!2550 lambda!56699)) lt!444982))))

(assert (= (and d!379460 res!606477) b!1345350))

(assert (= (and b!1345350 (not res!606476)) b!1345351))

(assert (=> d!379460 m!1503845))

(declare-fun m!1504139 () Bool)

(assert (=> d!379460 m!1504139))

(declare-fun m!1504141 () Bool)

(assert (=> d!379460 m!1504141))

(declare-fun m!1504143 () Bool)

(assert (=> b!1345351 m!1504143))

(assert (=> b!1345113 d!379460))

(declare-fun d!379462 () Bool)

(declare-fun lt!445052 () List!13838)

(declare-fun size!11240 (List!13838) Int)

(declare-fun size!11241 (List!13836) Int)

(assert (=> d!379462 (= (size!11240 lt!445052) (size!11241 rules!2550))))

(declare-fun e!861653 () List!13838)

(assert (=> d!379462 (= lt!445052 e!861653)))

(declare-fun c!220243 () Bool)

(assert (=> d!379462 (= c!220243 ((_ is Nil!13770) rules!2550))))

(assert (=> d!379462 (= (map!3041 rules!2550 lambda!56699) lt!445052)))

(declare-fun b!1345366 () Bool)

(assert (=> b!1345366 (= e!861653 Nil!13772)))

(declare-fun b!1345367 () Bool)

(declare-fun $colon$colon!183 (List!13838 Regex!3701) List!13838)

(declare-fun dynLambda!6104 (Int Rule!4574) Regex!3701)

(assert (=> b!1345367 (= e!861653 ($colon$colon!183 (map!3041 (t!119741 rules!2550) lambda!56699) (dynLambda!6104 lambda!56699 (h!19171 rules!2550))))))

(assert (= (and d!379462 c!220243) b!1345366))

(assert (= (and d!379462 (not c!220243)) b!1345367))

(declare-fun b_lambda!39957 () Bool)

(assert (=> (not b_lambda!39957) (not b!1345367)))

(declare-fun m!1504145 () Bool)

(assert (=> d!379462 m!1504145))

(declare-fun m!1504147 () Bool)

(assert (=> d!379462 m!1504147))

(declare-fun m!1504149 () Bool)

(assert (=> b!1345367 m!1504149))

(declare-fun m!1504151 () Bool)

(assert (=> b!1345367 m!1504151))

(assert (=> b!1345367 m!1504149))

(assert (=> b!1345367 m!1504151))

(declare-fun m!1504153 () Bool)

(assert (=> b!1345367 m!1504153))

(assert (=> b!1345113 d!379462))

(declare-fun d!379464 () Bool)

(declare-fun e!861668 () Bool)

(assert (=> d!379464 e!861668))

(declare-fun res!606486 () Bool)

(assert (=> d!379464 (=> (not res!606486) (not e!861668))))

(declare-fun lt!445061 () Regex!3701)

(declare-fun dynLambda!6105 (Int Regex!3701) Bool)

(assert (=> d!379464 (= res!606486 (dynLambda!6105 lambda!56700 lt!445061))))

(declare-fun e!861667 () Regex!3701)

(assert (=> d!379464 (= lt!445061 e!861667)))

(declare-fun c!220250 () Bool)

(declare-fun e!861665 () Bool)

(assert (=> d!379464 (= c!220250 e!861665)))

(declare-fun res!606485 () Bool)

(assert (=> d!379464 (=> (not res!606485) (not e!861665))))

(assert (=> d!379464 (= res!606485 ((_ is Cons!13772) (map!3041 rules!2550 lambda!56699)))))

(assert (=> d!379464 (exists!433 (map!3041 rules!2550 lambda!56699) lambda!56700)))

(assert (=> d!379464 (= (getWitness!320 (map!3041 rules!2550 lambda!56699) lambda!56700) lt!445061)))

(declare-fun b!1345385 () Bool)

(declare-fun lt!445060 () Unit!19871)

(declare-fun Unit!19875 () Unit!19871)

(assert (=> b!1345385 (= lt!445060 Unit!19875)))

(assert (=> b!1345385 false))

(declare-fun e!861666 () Regex!3701)

(declare-fun head!2404 (List!13838) Regex!3701)

(assert (=> b!1345385 (= e!861666 (head!2404 (map!3041 rules!2550 lambda!56699)))))

(declare-fun b!1345386 () Bool)

(assert (=> b!1345386 (= e!861665 (dynLambda!6105 lambda!56700 (h!19173 (map!3041 rules!2550 lambda!56699))))))

(declare-fun b!1345387 () Bool)

(assert (=> b!1345387 (= e!861667 (h!19173 (map!3041 rules!2550 lambda!56699)))))

(declare-fun b!1345388 () Bool)

(assert (=> b!1345388 (= e!861666 (getWitness!320 (t!119743 (map!3041 rules!2550 lambda!56699)) lambda!56700))))

(declare-fun b!1345389 () Bool)

(assert (=> b!1345389 (= e!861668 (contains!2528 (map!3041 rules!2550 lambda!56699) lt!445061))))

(declare-fun b!1345390 () Bool)

(assert (=> b!1345390 (= e!861667 e!861666)))

(declare-fun c!220251 () Bool)

(assert (=> b!1345390 (= c!220251 ((_ is Cons!13772) (map!3041 rules!2550 lambda!56699)))))

(assert (= (and d!379464 res!606485) b!1345386))

(assert (= (and d!379464 c!220250) b!1345387))

(assert (= (and d!379464 (not c!220250)) b!1345390))

(assert (= (and b!1345390 c!220251) b!1345388))

(assert (= (and b!1345390 (not c!220251)) b!1345385))

(assert (= (and d!379464 res!606486) b!1345389))

(declare-fun b_lambda!39959 () Bool)

(assert (=> (not b_lambda!39959) (not d!379464)))

(declare-fun b_lambda!39961 () Bool)

(assert (=> (not b_lambda!39961) (not b!1345386)))

(assert (=> b!1345385 m!1503845))

(declare-fun m!1504169 () Bool)

(assert (=> b!1345385 m!1504169))

(declare-fun m!1504171 () Bool)

(assert (=> d!379464 m!1504171))

(assert (=> d!379464 m!1503845))

(assert (=> d!379464 m!1503847))

(declare-fun m!1504173 () Bool)

(assert (=> b!1345388 m!1504173))

(assert (=> b!1345389 m!1503845))

(declare-fun m!1504175 () Bool)

(assert (=> b!1345389 m!1504175))

(declare-fun m!1504177 () Bool)

(assert (=> b!1345386 m!1504177))

(assert (=> b!1345113 d!379464))

(declare-fun b!1345419 () Bool)

(declare-fun res!606506 () Bool)

(declare-fun e!861687 () Bool)

(assert (=> b!1345419 (=> (not res!606506) (not e!861687))))

(assert (=> b!1345419 (= res!606506 (isEmpty!8221 (tail!1940 lt!444989)))))

(declare-fun b!1345420 () Bool)

(declare-fun e!861684 () Bool)

(declare-fun lt!445064 () Bool)

(declare-fun call!90523 () Bool)

(assert (=> b!1345420 (= e!861684 (= lt!445064 call!90523))))

(declare-fun b!1345421 () Bool)

(declare-fun e!861689 () Bool)

(assert (=> b!1345421 (= e!861689 (matchR!1694 (derivativeStep!939 lt!444985 (head!2403 lt!444989)) (tail!1940 lt!444989)))))

(declare-fun b!1345422 () Bool)

(declare-fun res!606503 () Bool)

(assert (=> b!1345422 (=> (not res!606503) (not e!861687))))

(assert (=> b!1345422 (= res!606503 (not call!90523))))

(declare-fun bm!90518 () Bool)

(assert (=> bm!90518 (= call!90523 (isEmpty!8221 lt!444989))))

(declare-fun b!1345423 () Bool)

(declare-fun e!861685 () Bool)

(assert (=> b!1345423 (= e!861684 e!861685)))

(declare-fun c!220258 () Bool)

(assert (=> b!1345423 (= c!220258 ((_ is EmptyLang!3701) lt!444985))))

(declare-fun b!1345424 () Bool)

(declare-fun res!606505 () Bool)

(declare-fun e!861683 () Bool)

(assert (=> b!1345424 (=> res!606505 e!861683)))

(assert (=> b!1345424 (= res!606505 (not (isEmpty!8221 (tail!1940 lt!444989))))))

(declare-fun b!1345425 () Bool)

(declare-fun res!606509 () Bool)

(declare-fun e!861688 () Bool)

(assert (=> b!1345425 (=> res!606509 e!861688)))

(assert (=> b!1345425 (= res!606509 e!861687)))

(declare-fun res!606510 () Bool)

(assert (=> b!1345425 (=> (not res!606510) (not e!861687))))

(assert (=> b!1345425 (= res!606510 lt!445064)))

(declare-fun d!379470 () Bool)

(assert (=> d!379470 e!861684))

(declare-fun c!220260 () Bool)

(assert (=> d!379470 (= c!220260 ((_ is EmptyExpr!3701) lt!444985))))

(assert (=> d!379470 (= lt!445064 e!861689)))

(declare-fun c!220259 () Bool)

(assert (=> d!379470 (= c!220259 (isEmpty!8221 lt!444989))))

(declare-fun validRegex!1601 (Regex!3701) Bool)

(assert (=> d!379470 (validRegex!1601 lt!444985)))

(assert (=> d!379470 (= (matchR!1694 lt!444985 lt!444989) lt!445064)))

(declare-fun b!1345426 () Bool)

(declare-fun e!861686 () Bool)

(assert (=> b!1345426 (= e!861686 e!861683)))

(declare-fun res!606508 () Bool)

(assert (=> b!1345426 (=> res!606508 e!861683)))

(assert (=> b!1345426 (= res!606508 call!90523)))

(declare-fun b!1345427 () Bool)

(assert (=> b!1345427 (= e!861683 (not (= (head!2403 lt!444989) (c!220191 lt!444985))))))

(declare-fun b!1345428 () Bool)

(declare-fun nullable!1181 (Regex!3701) Bool)

(assert (=> b!1345428 (= e!861689 (nullable!1181 lt!444985))))

(declare-fun b!1345429 () Bool)

(assert (=> b!1345429 (= e!861685 (not lt!445064))))

(declare-fun b!1345430 () Bool)

(declare-fun res!606507 () Bool)

(assert (=> b!1345430 (=> res!606507 e!861688)))

(assert (=> b!1345430 (= res!606507 (not ((_ is ElementMatch!3701) lt!444985)))))

(assert (=> b!1345430 (= e!861685 e!861688)))

(declare-fun b!1345431 () Bool)

(assert (=> b!1345431 (= e!861688 e!861686)))

(declare-fun res!606504 () Bool)

(assert (=> b!1345431 (=> (not res!606504) (not e!861686))))

(assert (=> b!1345431 (= res!606504 (not lt!445064))))

(declare-fun b!1345432 () Bool)

(assert (=> b!1345432 (= e!861687 (= (head!2403 lt!444989) (c!220191 lt!444985)))))

(assert (= (and d!379470 c!220259) b!1345428))

(assert (= (and d!379470 (not c!220259)) b!1345421))

(assert (= (and d!379470 c!220260) b!1345420))

(assert (= (and d!379470 (not c!220260)) b!1345423))

(assert (= (and b!1345423 c!220258) b!1345429))

(assert (= (and b!1345423 (not c!220258)) b!1345430))

(assert (= (and b!1345430 (not res!606507)) b!1345425))

(assert (= (and b!1345425 res!606510) b!1345422))

(assert (= (and b!1345422 res!606503) b!1345419))

(assert (= (and b!1345419 res!606506) b!1345432))

(assert (= (and b!1345425 (not res!606509)) b!1345431))

(assert (= (and b!1345431 res!606504) b!1345426))

(assert (= (and b!1345426 (not res!606508)) b!1345424))

(assert (= (and b!1345424 (not res!606505)) b!1345427))

(assert (= (or b!1345420 b!1345422 b!1345426) bm!90518))

(declare-fun m!1504179 () Bool)

(assert (=> bm!90518 m!1504179))

(assert (=> d!379470 m!1504179))

(declare-fun m!1504181 () Bool)

(assert (=> d!379470 m!1504181))

(declare-fun m!1504183 () Bool)

(assert (=> b!1345427 m!1504183))

(declare-fun m!1504185 () Bool)

(assert (=> b!1345424 m!1504185))

(assert (=> b!1345424 m!1504185))

(declare-fun m!1504187 () Bool)

(assert (=> b!1345424 m!1504187))

(assert (=> b!1345421 m!1504183))

(assert (=> b!1345421 m!1504183))

(declare-fun m!1504189 () Bool)

(assert (=> b!1345421 m!1504189))

(assert (=> b!1345421 m!1504185))

(assert (=> b!1345421 m!1504189))

(assert (=> b!1345421 m!1504185))

(declare-fun m!1504191 () Bool)

(assert (=> b!1345421 m!1504191))

(declare-fun m!1504193 () Bool)

(assert (=> b!1345428 m!1504193))

(assert (=> b!1345419 m!1504185))

(assert (=> b!1345419 m!1504185))

(assert (=> b!1345419 m!1504187))

(assert (=> b!1345432 m!1504183))

(assert (=> b!1345111 d!379470))

(declare-fun d!379472 () Bool)

(declare-fun res!606515 () Bool)

(declare-fun e!861694 () Bool)

(assert (=> d!379472 (=> res!606515 e!861694)))

(assert (=> d!379472 (= res!606515 (not ((_ is Cons!13770) rules!2550)))))

(assert (=> d!379472 (= (sepAndNonSepRulesDisjointChars!760 rules!2550 rules!2550) e!861694)))

(declare-fun b!1345437 () Bool)

(declare-fun e!861695 () Bool)

(assert (=> b!1345437 (= e!861694 e!861695)))

(declare-fun res!606516 () Bool)

(assert (=> b!1345437 (=> (not res!606516) (not e!861695))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!352 (Rule!4574 List!13836) Bool)

(assert (=> b!1345437 (= res!606516 (ruleDisjointCharsFromAllFromOtherType!352 (h!19171 rules!2550) rules!2550))))

(declare-fun b!1345438 () Bool)

(assert (=> b!1345438 (= e!861695 (sepAndNonSepRulesDisjointChars!760 rules!2550 (t!119741 rules!2550)))))

(assert (= (and d!379472 (not res!606515)) b!1345437))

(assert (= (and b!1345437 res!606516) b!1345438))

(declare-fun m!1504195 () Bool)

(assert (=> b!1345437 m!1504195))

(declare-fun m!1504197 () Bool)

(assert (=> b!1345438 m!1504197))

(assert (=> b!1345133 d!379472))

(declare-fun d!379474 () Bool)

(assert (=> d!379474 (= (inv!18098 (tag!2649 (rule!4132 t2!34))) (= (mod (str.len (value!77661 (tag!2649 (rule!4132 t2!34)))) 2) 0))))

(assert (=> b!1345112 d!379474))

(declare-fun d!379476 () Bool)

(declare-fun res!606519 () Bool)

(declare-fun e!861698 () Bool)

(assert (=> d!379476 (=> (not res!606519) (not e!861698))))

(declare-fun semiInverseModEq!910 (Int Int) Bool)

(assert (=> d!379476 (= res!606519 (semiInverseModEq!910 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (toValue!3630 (transformation!2387 (rule!4132 t2!34)))))))

(assert (=> d!379476 (= (inv!18102 (transformation!2387 (rule!4132 t2!34))) e!861698)))

(declare-fun b!1345441 () Bool)

(declare-fun equivClasses!869 (Int Int) Bool)

(assert (=> b!1345441 (= e!861698 (equivClasses!869 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (toValue!3630 (transformation!2387 (rule!4132 t2!34)))))))

(assert (= (and d!379476 res!606519) b!1345441))

(declare-fun m!1504199 () Bool)

(assert (=> d!379476 m!1504199))

(declare-fun m!1504201 () Bool)

(assert (=> b!1345441 m!1504201))

(assert (=> b!1345112 d!379476))

(declare-fun d!379478 () Bool)

(assert (=> d!379478 (= (isEmpty!8217 rules!2550) ((_ is Nil!13770) rules!2550))))

(assert (=> b!1345131 d!379478))

(declare-fun b!1345462 () Bool)

(declare-fun e!861711 () tuple2!13332)

(assert (=> b!1345462 (= e!861711 (tuple2!13333 Nil!13771 (list!5254 lt!444976)))))

(declare-fun d!379480 () Bool)

(declare-fun e!861713 () Bool)

(assert (=> d!379480 e!861713))

(declare-fun c!220268 () Bool)

(declare-fun lt!445073 () tuple2!13332)

(declare-fun size!11242 (List!13837) Int)

(assert (=> d!379480 (= c!220268 (> (size!11242 (_1!7552 lt!445073)) 0))))

(assert (=> d!379480 (= lt!445073 e!861711)))

(declare-fun c!220267 () Bool)

(declare-datatypes ((tuple2!13338 0))(
  ( (tuple2!13339 (_1!7555 Token!4436) (_2!7555 List!13835)) )
))
(declare-datatypes ((Option!2634 0))(
  ( (None!2633) (Some!2633 (v!21316 tuple2!13338)) )
))
(declare-fun lt!445074 () Option!2634)

(assert (=> d!379480 (= c!220267 ((_ is Some!2633) lt!445074))))

(declare-fun maxPrefix!1064 (LexerInterface!2082 List!13836 List!13835) Option!2634)

(assert (=> d!379480 (= lt!445074 (maxPrefix!1064 thiss!19762 rules!2550 (list!5254 lt!444976)))))

(assert (=> d!379480 (= (lexList!600 thiss!19762 rules!2550 (list!5254 lt!444976)) lt!445073)))

(declare-fun b!1345463 () Bool)

(declare-fun e!861712 () Bool)

(declare-fun isEmpty!8223 (List!13837) Bool)

(assert (=> b!1345463 (= e!861712 (not (isEmpty!8223 (_1!7552 lt!445073))))))

(declare-fun b!1345464 () Bool)

(declare-fun lt!445075 () tuple2!13332)

(assert (=> b!1345464 (= e!861711 (tuple2!13333 (Cons!13771 (_1!7555 (v!21316 lt!445074)) (_1!7552 lt!445075)) (_2!7552 lt!445075)))))

(assert (=> b!1345464 (= lt!445075 (lexList!600 thiss!19762 rules!2550 (_2!7555 (v!21316 lt!445074))))))

(declare-fun b!1345465 () Bool)

(assert (=> b!1345465 (= e!861713 (= (_2!7552 lt!445073) (list!5254 lt!444976)))))

(declare-fun b!1345466 () Bool)

(assert (=> b!1345466 (= e!861713 e!861712)))

(declare-fun res!606528 () Bool)

(assert (=> b!1345466 (= res!606528 (< (size!11239 (_2!7552 lt!445073)) (size!11239 (list!5254 lt!444976))))))

(assert (=> b!1345466 (=> (not res!606528) (not e!861712))))

(assert (= (and d!379480 c!220267) b!1345464))

(assert (= (and d!379480 (not c!220267)) b!1345462))

(assert (= (and d!379480 c!220268) b!1345466))

(assert (= (and d!379480 (not c!220268)) b!1345465))

(assert (= (and b!1345466 res!606528) b!1345463))

(declare-fun m!1504203 () Bool)

(assert (=> d!379480 m!1504203))

(assert (=> d!379480 m!1503919))

(declare-fun m!1504205 () Bool)

(assert (=> d!379480 m!1504205))

(declare-fun m!1504207 () Bool)

(assert (=> b!1345463 m!1504207))

(declare-fun m!1504209 () Bool)

(assert (=> b!1345464 m!1504209))

(declare-fun m!1504211 () Bool)

(assert (=> b!1345466 m!1504211))

(assert (=> b!1345466 m!1503919))

(declare-fun m!1504213 () Bool)

(assert (=> b!1345466 m!1504213))

(assert (=> b!1345110 d!379480))

(declare-fun d!379482 () Bool)

(assert (=> d!379482 (= (list!5254 lt!444976) (list!5258 (c!220190 lt!444976)))))

(declare-fun bs!332593 () Bool)

(assert (= bs!332593 d!379482))

(declare-fun m!1504215 () Bool)

(assert (=> bs!332593 m!1504215))

(assert (=> b!1345110 d!379482))

(declare-fun d!379484 () Bool)

(declare-fun lt!445076 () Bool)

(assert (=> d!379484 (= lt!445076 (select (content!1964 lt!444988) lt!444975))))

(declare-fun e!861714 () Bool)

(assert (=> d!379484 (= lt!445076 e!861714)))

(declare-fun res!606529 () Bool)

(assert (=> d!379484 (=> (not res!606529) (not e!861714))))

(assert (=> d!379484 (= res!606529 ((_ is Cons!13769) lt!444988))))

(assert (=> d!379484 (= (contains!2529 lt!444988 lt!444975) lt!445076)))

(declare-fun b!1345467 () Bool)

(declare-fun e!861715 () Bool)

(assert (=> b!1345467 (= e!861714 e!861715)))

(declare-fun res!606530 () Bool)

(assert (=> b!1345467 (=> res!606530 e!861715)))

(assert (=> b!1345467 (= res!606530 (= (h!19170 lt!444988) lt!444975))))

(declare-fun b!1345468 () Bool)

(assert (=> b!1345468 (= e!861715 (contains!2529 (t!119740 lt!444988) lt!444975))))

(assert (= (and d!379484 res!606529) b!1345467))

(assert (= (and b!1345467 (not res!606530)) b!1345468))

(declare-fun m!1504217 () Bool)

(assert (=> d!379484 m!1504217))

(declare-fun m!1504219 () Bool)

(assert (=> d!379484 m!1504219))

(declare-fun m!1504221 () Bool)

(assert (=> b!1345468 m!1504221))

(assert (=> b!1345132 d!379484))

(declare-fun d!379486 () Bool)

(declare-fun lt!445077 () C!7692)

(assert (=> d!379486 (= lt!445077 (apply!3281 (list!5254 lt!444983) 0))))

(assert (=> d!379486 (= lt!445077 (apply!3282 (c!220190 lt!444983) 0))))

(declare-fun e!861716 () Bool)

(assert (=> d!379486 e!861716))

(declare-fun res!606531 () Bool)

(assert (=> d!379486 (=> (not res!606531) (not e!861716))))

(assert (=> d!379486 (= res!606531 (<= 0 0))))

(assert (=> d!379486 (= (apply!3277 lt!444983 0) lt!445077)))

(declare-fun b!1345469 () Bool)

(assert (=> b!1345469 (= e!861716 (< 0 (size!11232 lt!444983)))))

(assert (= (and d!379486 res!606531) b!1345469))

(assert (=> d!379486 m!1503903))

(assert (=> d!379486 m!1503903))

(declare-fun m!1504223 () Bool)

(assert (=> d!379486 m!1504223))

(declare-fun m!1504225 () Bool)

(assert (=> d!379486 m!1504225))

(declare-fun m!1504227 () Bool)

(assert (=> b!1345469 m!1504227))

(assert (=> b!1345132 d!379486))

(declare-fun d!379488 () Bool)

(declare-fun choose!8269 (Int) Bool)

(assert (=> d!379488 (= (Exists!853 lambda!56698) (choose!8269 lambda!56698))))

(declare-fun bs!332594 () Bool)

(assert (= bs!332594 d!379488))

(declare-fun m!1504229 () Bool)

(assert (=> bs!332594 m!1504229))

(assert (=> b!1345119 d!379488))

(declare-fun bs!332595 () Bool)

(declare-fun d!379490 () Bool)

(assert (= bs!332595 (and d!379490 b!1345119)))

(declare-fun lambda!56707 () Int)

(assert (=> bs!332595 (= lambda!56707 lambda!56698)))

(assert (=> d!379490 true))

(assert (=> d!379490 true))

(assert (=> d!379490 (Exists!853 lambda!56707)))

(declare-fun lt!445081 () Unit!19871)

(declare-fun choose!8270 (Regex!3701 List!13835) Unit!19871)

(assert (=> d!379490 (= lt!445081 (choose!8270 lt!444985 lt!444988))))

(assert (=> d!379490 (validRegex!1601 lt!444985)))

(assert (=> d!379490 (= (lemmaPrefixMatchThenExistsStringThatMatches!171 lt!444985 lt!444988) lt!445081)))

(declare-fun bs!332596 () Bool)

(assert (= bs!332596 d!379490))

(declare-fun m!1504245 () Bool)

(assert (=> bs!332596 m!1504245))

(declare-fun m!1504247 () Bool)

(assert (=> bs!332596 m!1504247))

(assert (=> bs!332596 m!1504181))

(assert (=> b!1345119 d!379490))

(declare-fun d!379494 () Bool)

(declare-fun prefixMatchZipperSequence!228 (Regex!3701 BalanceConc!9012) Bool)

(declare-fun ++!3532 (BalanceConc!9012 BalanceConc!9012) BalanceConc!9012)

(declare-fun singletonSeq!1002 (C!7692) BalanceConc!9012)

(assert (=> d!379494 (= (separableTokensPredicate!365 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!228 (rulesRegex!270 thiss!19762 rules!2550) (++!3532 (charsOf!1359 t1!34) (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0))))))))

(declare-fun bs!332599 () Bool)

(assert (= bs!332599 d!379494))

(assert (=> bs!332599 m!1503905))

(declare-fun m!1504273 () Bool)

(assert (=> bs!332599 m!1504273))

(declare-fun m!1504275 () Bool)

(assert (=> bs!332599 m!1504275))

(declare-fun m!1504277 () Bool)

(assert (=> bs!332599 m!1504277))

(declare-fun m!1504279 () Bool)

(assert (=> bs!332599 m!1504279))

(assert (=> bs!332599 m!1503899))

(assert (=> bs!332599 m!1504279))

(assert (=> bs!332599 m!1504273))

(assert (=> bs!332599 m!1503899))

(assert (=> bs!332599 m!1503905))

(assert (=> bs!332599 m!1503843))

(assert (=> bs!332599 m!1504277))

(assert (=> bs!332599 m!1503843))

(assert (=> b!1345139 d!379494))

(declare-fun d!379504 () Bool)

(declare-fun lt!445094 () Bool)

(assert (=> d!379504 (= lt!445094 (select (content!1964 lt!444988) lt!444978))))

(declare-fun e!861737 () Bool)

(assert (=> d!379504 (= lt!445094 e!861737)))

(declare-fun res!606546 () Bool)

(assert (=> d!379504 (=> (not res!606546) (not e!861737))))

(assert (=> d!379504 (= res!606546 ((_ is Cons!13769) lt!444988))))

(assert (=> d!379504 (= (contains!2529 lt!444988 lt!444978) lt!445094)))

(declare-fun b!1345498 () Bool)

(declare-fun e!861738 () Bool)

(assert (=> b!1345498 (= e!861737 e!861738)))

(declare-fun res!606547 () Bool)

(assert (=> b!1345498 (=> res!606547 e!861738)))

(assert (=> b!1345498 (= res!606547 (= (h!19170 lt!444988) lt!444978))))

(declare-fun b!1345499 () Bool)

(assert (=> b!1345499 (= e!861738 (contains!2529 (t!119740 lt!444988) lt!444978))))

(assert (= (and d!379504 res!606546) b!1345498))

(assert (= (and b!1345498 (not res!606547)) b!1345499))

(assert (=> d!379504 m!1504217))

(declare-fun m!1504281 () Bool)

(assert (=> d!379504 m!1504281))

(declare-fun m!1504283 () Bool)

(assert (=> b!1345499 m!1504283))

(assert (=> b!1345118 d!379504))

(declare-fun d!379506 () Bool)

(declare-fun lt!445100 () Int)

(assert (=> d!379506 (= lt!445100 (size!11239 (list!5254 lt!444979)))))

(declare-fun size!11243 (Conc!4536) Int)

(assert (=> d!379506 (= lt!445100 (size!11243 (c!220190 lt!444979)))))

(assert (=> d!379506 (= (size!11232 lt!444979) lt!445100)))

(declare-fun bs!332601 () Bool)

(assert (= bs!332601 d!379506))

(assert (=> bs!332601 m!1504021))

(assert (=> bs!332601 m!1504021))

(declare-fun m!1504291 () Bool)

(assert (=> bs!332601 m!1504291))

(declare-fun m!1504293 () Bool)

(assert (=> bs!332601 m!1504293))

(assert (=> b!1345138 d!379506))

(declare-fun d!379510 () Bool)

(declare-fun lt!445103 () BalanceConc!9012)

(assert (=> d!379510 (= (list!5254 lt!445103) (originalCharacters!3249 t2!34))))

(assert (=> d!379510 (= lt!445103 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34)))))

(assert (=> d!379510 (= (charsOf!1359 t2!34) lt!445103)))

(declare-fun b_lambda!39967 () Bool)

(assert (=> (not b_lambda!39967) (not d!379510)))

(declare-fun t!119765 () Bool)

(declare-fun tb!70771 () Bool)

(assert (=> (and b!1345116 (= (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (toChars!3489 (transformation!2387 (rule!4132 t2!34)))) t!119765) tb!70771))

(declare-fun b!1345500 () Bool)

(declare-fun e!861739 () Bool)

(declare-fun tp!389374 () Bool)

(assert (=> b!1345500 (= e!861739 (and (inv!18105 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34)))) tp!389374))))

(declare-fun result!86056 () Bool)

(assert (=> tb!70771 (= result!86056 (and (inv!18106 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34))) e!861739))))

(assert (= tb!70771 b!1345500))

(declare-fun m!1504295 () Bool)

(assert (=> b!1345500 m!1504295))

(declare-fun m!1504297 () Bool)

(assert (=> tb!70771 m!1504297))

(assert (=> d!379510 t!119765))

(declare-fun b_and!90177 () Bool)

(assert (= b_and!90171 (and (=> t!119765 result!86056) b_and!90177)))

(declare-fun tb!70773 () Bool)

(declare-fun t!119767 () Bool)

(assert (=> (and b!1345115 (= (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (toChars!3489 (transformation!2387 (rule!4132 t2!34)))) t!119767) tb!70773))

(declare-fun result!86058 () Bool)

(assert (= result!86058 result!86056))

(assert (=> d!379510 t!119767))

(declare-fun b_and!90179 () Bool)

(assert (= b_and!90173 (and (=> t!119767 result!86058) b_and!90179)))

(declare-fun tb!70775 () Bool)

(declare-fun t!119769 () Bool)

(assert (=> (and b!1345127 (= (toChars!3489 (transformation!2387 (h!19171 rules!2550))) (toChars!3489 (transformation!2387 (rule!4132 t2!34)))) t!119769) tb!70775))

(declare-fun result!86060 () Bool)

(assert (= result!86060 result!86056))

(assert (=> d!379510 t!119769))

(declare-fun b_and!90185 () Bool)

(assert (= b_and!90175 (and (=> t!119769 result!86060) b_and!90185)))

(declare-fun m!1504299 () Bool)

(assert (=> d!379510 m!1504299))

(declare-fun m!1504303 () Bool)

(assert (=> d!379510 m!1504303))

(assert (=> b!1345138 d!379510))

(declare-fun d!379512 () Bool)

(assert (=> d!379512 (= (inv!18098 (tag!2649 (rule!4132 t1!34))) (= (mod (str.len (value!77661 (tag!2649 (rule!4132 t1!34)))) 2) 0))))

(assert (=> b!1345117 d!379512))

(declare-fun d!379516 () Bool)

(declare-fun res!606548 () Bool)

(declare-fun e!861740 () Bool)

(assert (=> d!379516 (=> (not res!606548) (not e!861740))))

(assert (=> d!379516 (= res!606548 (semiInverseModEq!910 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (toValue!3630 (transformation!2387 (rule!4132 t1!34)))))))

(assert (=> d!379516 (= (inv!18102 (transformation!2387 (rule!4132 t1!34))) e!861740)))

(declare-fun b!1345501 () Bool)

(assert (=> b!1345501 (= e!861740 (equivClasses!869 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (toValue!3630 (transformation!2387 (rule!4132 t1!34)))))))

(assert (= (and d!379516 res!606548) b!1345501))

(declare-fun m!1504305 () Bool)

(assert (=> d!379516 m!1504305))

(declare-fun m!1504307 () Bool)

(assert (=> b!1345501 m!1504307))

(assert (=> b!1345117 d!379516))

(assert (=> b!1345137 d!379462))

(declare-fun bs!332602 () Bool)

(declare-fun d!379518 () Bool)

(assert (= bs!332602 (and d!379518 b!1345137)))

(declare-fun lambda!56710 () Int)

(assert (=> bs!332602 (not (= lambda!56710 lambda!56700))))

(assert (=> d!379518 true))

(declare-fun order!8251 () Int)

(declare-fun dynLambda!6106 (Int Int) Int)

(assert (=> d!379518 (< (dynLambda!6106 order!8251 lambda!56700) (dynLambda!6106 order!8251 lambda!56710))))

(declare-fun forall!3357 (List!13838 Int) Bool)

(assert (=> d!379518 (= (exists!433 (map!3041 rules!2550 lambda!56699) lambda!56700) (not (forall!3357 (map!3041 rules!2550 lambda!56699) lambda!56710)))))

(declare-fun bs!332603 () Bool)

(assert (= bs!332603 d!379518))

(assert (=> bs!332603 m!1503845))

(declare-fun m!1504309 () Bool)

(assert (=> bs!332603 m!1504309))

(assert (=> b!1345137 d!379518))

(declare-fun bs!332604 () Bool)

(declare-fun d!379522 () Bool)

(assert (= bs!332604 (and d!379522 b!1345137)))

(declare-fun lambda!56711 () Int)

(assert (=> bs!332604 (not (= lambda!56711 lambda!56700))))

(declare-fun bs!332605 () Bool)

(assert (= bs!332605 (and d!379522 d!379518)))

(assert (=> bs!332605 (= lambda!56711 lambda!56710)))

(assert (=> d!379522 true))

(assert (=> d!379522 (< (dynLambda!6106 order!8251 lambda!56700) (dynLambda!6106 order!8251 lambda!56711))))

(assert (=> d!379522 (= (exists!433 lt!444977 lambda!56700) (not (forall!3357 lt!444977 lambda!56711)))))

(declare-fun bs!332606 () Bool)

(assert (= bs!332606 d!379522))

(declare-fun m!1504311 () Bool)

(assert (=> bs!332606 m!1504311))

(assert (=> b!1345137 d!379522))

(declare-fun bs!332608 () Bool)

(declare-fun d!379524 () Bool)

(assert (= bs!332608 (and d!379524 b!1345137)))

(declare-fun lambda!56716 () Int)

(assert (=> bs!332608 (not (= lambda!56716 lambda!56700))))

(declare-fun bs!332609 () Bool)

(assert (= bs!332609 (and d!379524 d!379518)))

(assert (=> bs!332609 (not (= lambda!56716 lambda!56710))))

(declare-fun bs!332610 () Bool)

(assert (= bs!332610 (and d!379524 d!379522)))

(assert (=> bs!332610 (not (= lambda!56716 lambda!56711))))

(declare-fun lambda!56717 () Int)

(assert (=> bs!332608 (= lambda!56717 lambda!56700)))

(assert (=> bs!332609 (not (= lambda!56717 lambda!56710))))

(assert (=> bs!332610 (not (= lambda!56717 lambda!56711))))

(declare-fun bs!332611 () Bool)

(assert (= bs!332611 d!379524))

(assert (=> bs!332611 (not (= lambda!56717 lambda!56716))))

(assert (=> d!379524 true))

(assert (=> d!379524 (= (matchR!1694 lt!444985 lt!444989) (exists!433 lt!444977 lambda!56717))))

(declare-fun lt!445112 () Unit!19871)

(declare-fun choose!8271 (Regex!3701 List!13838 List!13835) Unit!19871)

(assert (=> d!379524 (= lt!445112 (choose!8271 lt!444985 lt!444977 lt!444989))))

(assert (=> d!379524 (forall!3357 lt!444977 lambda!56716)))

(assert (=> d!379524 (= (matchRGenUnionSpec!118 lt!444985 lt!444977 lt!444989) lt!445112)))

(assert (=> bs!332611 m!1503913))

(declare-fun m!1504335 () Bool)

(assert (=> bs!332611 m!1504335))

(declare-fun m!1504337 () Bool)

(assert (=> bs!332611 m!1504337))

(declare-fun m!1504339 () Bool)

(assert (=> bs!332611 m!1504339))

(assert (=> b!1345137 d!379524))

(declare-fun d!379534 () Bool)

(declare-fun lt!445118 () Bool)

(assert (=> d!379534 (= lt!445118 (isEmpty!8221 (list!5254 (_2!7553 lt!444980))))))

(declare-fun isEmpty!8224 (Conc!4536) Bool)

(assert (=> d!379534 (= lt!445118 (isEmpty!8224 (c!220190 (_2!7553 lt!444980))))))

(assert (=> d!379534 (= (isEmpty!8216 (_2!7553 lt!444980)) lt!445118)))

(declare-fun bs!332614 () Bool)

(assert (= bs!332614 d!379534))

(declare-fun m!1504347 () Bool)

(assert (=> bs!332614 m!1504347))

(assert (=> bs!332614 m!1504347))

(declare-fun m!1504349 () Bool)

(assert (=> bs!332614 m!1504349))

(declare-fun m!1504351 () Bool)

(assert (=> bs!332614 m!1504351))

(assert (=> b!1345125 d!379534))

(declare-fun d!379538 () Bool)

(declare-fun lt!445139 () Bool)

(declare-fun e!861799 () Bool)

(assert (=> d!379538 (= lt!445139 e!861799)))

(declare-fun res!606583 () Bool)

(assert (=> d!379538 (=> (not res!606583) (not e!861799))))

(assert (=> d!379538 (= res!606583 (= (list!5255 (_1!7553 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t1!34))))) (list!5255 (singletonSeq!1000 t1!34))))))

(declare-fun e!861798 () Bool)

(assert (=> d!379538 (= lt!445139 e!861798)))

(declare-fun res!606584 () Bool)

(assert (=> d!379538 (=> (not res!606584) (not e!861798))))

(declare-fun lt!445140 () tuple2!13334)

(declare-fun size!11244 (BalanceConc!9014) Int)

(assert (=> d!379538 (= res!606584 (= (size!11244 (_1!7553 lt!445140)) 1))))

(assert (=> d!379538 (= lt!445140 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t1!34))))))

(assert (=> d!379538 (not (isEmpty!8217 rules!2550))))

(assert (=> d!379538 (= (rulesProduceIndividualToken!1051 thiss!19762 rules!2550 t1!34) lt!445139)))

(declare-fun b!1345596 () Bool)

(declare-fun res!606582 () Bool)

(assert (=> b!1345596 (=> (not res!606582) (not e!861798))))

(declare-fun apply!3283 (BalanceConc!9014 Int) Token!4436)

(assert (=> b!1345596 (= res!606582 (= (apply!3283 (_1!7553 lt!445140) 0) t1!34))))

(declare-fun b!1345597 () Bool)

(assert (=> b!1345597 (= e!861798 (isEmpty!8216 (_2!7553 lt!445140)))))

(declare-fun b!1345598 () Bool)

(assert (=> b!1345598 (= e!861799 (isEmpty!8216 (_2!7553 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t1!34))))))))

(assert (= (and d!379538 res!606584) b!1345596))

(assert (= (and b!1345596 res!606582) b!1345597))

(assert (= (and d!379538 res!606583) b!1345598))

(assert (=> d!379538 m!1503831))

(assert (=> d!379538 m!1503833))

(assert (=> d!379538 m!1503831))

(assert (=> d!379538 m!1503911))

(declare-fun m!1504445 () Bool)

(assert (=> d!379538 m!1504445))

(assert (=> d!379538 m!1503833))

(declare-fun m!1504447 () Bool)

(assert (=> d!379538 m!1504447))

(declare-fun m!1504449 () Bool)

(assert (=> d!379538 m!1504449))

(assert (=> d!379538 m!1503831))

(declare-fun m!1504451 () Bool)

(assert (=> d!379538 m!1504451))

(declare-fun m!1504453 () Bool)

(assert (=> b!1345596 m!1504453))

(declare-fun m!1504455 () Bool)

(assert (=> b!1345597 m!1504455))

(assert (=> b!1345598 m!1503831))

(assert (=> b!1345598 m!1503831))

(assert (=> b!1345598 m!1503833))

(assert (=> b!1345598 m!1503833))

(assert (=> b!1345598 m!1504447))

(declare-fun m!1504457 () Bool)

(assert (=> b!1345598 m!1504457))

(assert (=> b!1345123 d!379538))

(declare-fun d!379588 () Bool)

(assert (=> d!379588 (= (inv!18098 (tag!2649 (h!19171 rules!2550))) (= (mod (str.len (value!77661 (tag!2649 (h!19171 rules!2550)))) 2) 0))))

(assert (=> b!1345124 d!379588))

(declare-fun d!379590 () Bool)

(declare-fun res!606585 () Bool)

(declare-fun e!861800 () Bool)

(assert (=> d!379590 (=> (not res!606585) (not e!861800))))

(assert (=> d!379590 (= res!606585 (semiInverseModEq!910 (toChars!3489 (transformation!2387 (h!19171 rules!2550))) (toValue!3630 (transformation!2387 (h!19171 rules!2550)))))))

(assert (=> d!379590 (= (inv!18102 (transformation!2387 (h!19171 rules!2550))) e!861800)))

(declare-fun b!1345599 () Bool)

(assert (=> b!1345599 (= e!861800 (equivClasses!869 (toChars!3489 (transformation!2387 (h!19171 rules!2550))) (toValue!3630 (transformation!2387 (h!19171 rules!2550)))))))

(assert (= (and d!379590 res!606585) b!1345599))

(declare-fun m!1504459 () Bool)

(assert (=> d!379590 m!1504459))

(declare-fun m!1504461 () Bool)

(assert (=> b!1345599 m!1504461))

(assert (=> b!1345124 d!379590))

(declare-fun b!1345601 () Bool)

(declare-fun e!861801 () List!13835)

(assert (=> b!1345601 (= e!861801 (Cons!13769 (h!19170 lt!444988) (++!3530 (t!119740 lt!444988) (getSuffix!549 lt!444989 lt!444988))))))

(declare-fun b!1345600 () Bool)

(assert (=> b!1345600 (= e!861801 (getSuffix!549 lt!444989 lt!444988))))

(declare-fun d!379592 () Bool)

(declare-fun e!861802 () Bool)

(assert (=> d!379592 e!861802))

(declare-fun res!606586 () Bool)

(assert (=> d!379592 (=> (not res!606586) (not e!861802))))

(declare-fun lt!445141 () List!13835)

(assert (=> d!379592 (= res!606586 (= (content!1964 lt!445141) ((_ map or) (content!1964 lt!444988) (content!1964 (getSuffix!549 lt!444989 lt!444988)))))))

(assert (=> d!379592 (= lt!445141 e!861801)))

(declare-fun c!220282 () Bool)

(assert (=> d!379592 (= c!220282 ((_ is Nil!13769) lt!444988))))

(assert (=> d!379592 (= (++!3530 lt!444988 (getSuffix!549 lt!444989 lt!444988)) lt!445141)))

(declare-fun b!1345602 () Bool)

(declare-fun res!606587 () Bool)

(assert (=> b!1345602 (=> (not res!606587) (not e!861802))))

(assert (=> b!1345602 (= res!606587 (= (size!11239 lt!445141) (+ (size!11239 lt!444988) (size!11239 (getSuffix!549 lt!444989 lt!444988)))))))

(declare-fun b!1345603 () Bool)

(assert (=> b!1345603 (= e!861802 (or (not (= (getSuffix!549 lt!444989 lt!444988) Nil!13769)) (= lt!445141 lt!444988)))))

(assert (= (and d!379592 c!220282) b!1345600))

(assert (= (and d!379592 (not c!220282)) b!1345601))

(assert (= (and d!379592 res!606586) b!1345602))

(assert (= (and b!1345602 res!606587) b!1345603))

(assert (=> b!1345601 m!1503879))

(declare-fun m!1504463 () Bool)

(assert (=> b!1345601 m!1504463))

(declare-fun m!1504465 () Bool)

(assert (=> d!379592 m!1504465))

(assert (=> d!379592 m!1504217))

(assert (=> d!379592 m!1503879))

(declare-fun m!1504467 () Bool)

(assert (=> d!379592 m!1504467))

(declare-fun m!1504469 () Bool)

(assert (=> b!1345602 m!1504469))

(declare-fun m!1504471 () Bool)

(assert (=> b!1345602 m!1504471))

(assert (=> b!1345602 m!1503879))

(declare-fun m!1504473 () Bool)

(assert (=> b!1345602 m!1504473))

(assert (=> b!1345122 d!379592))

(declare-fun d!379594 () Bool)

(declare-fun lt!445144 () List!13835)

(assert (=> d!379594 (= (++!3530 lt!444988 lt!445144) lt!444989)))

(declare-fun e!861805 () List!13835)

(assert (=> d!379594 (= lt!445144 e!861805)))

(declare-fun c!220285 () Bool)

(assert (=> d!379594 (= c!220285 ((_ is Cons!13769) lt!444988))))

(assert (=> d!379594 (>= (size!11239 lt!444989) (size!11239 lt!444988))))

(assert (=> d!379594 (= (getSuffix!549 lt!444989 lt!444988) lt!445144)))

(declare-fun b!1345608 () Bool)

(assert (=> b!1345608 (= e!861805 (getSuffix!549 (tail!1940 lt!444989) (t!119740 lt!444988)))))

(declare-fun b!1345609 () Bool)

(assert (=> b!1345609 (= e!861805 lt!444989)))

(assert (= (and d!379594 c!220285) b!1345608))

(assert (= (and d!379594 (not c!220285)) b!1345609))

(declare-fun m!1504475 () Bool)

(assert (=> d!379594 m!1504475))

(declare-fun m!1504477 () Bool)

(assert (=> d!379594 m!1504477))

(assert (=> d!379594 m!1504471))

(assert (=> b!1345608 m!1504185))

(assert (=> b!1345608 m!1504185))

(declare-fun m!1504479 () Bool)

(assert (=> b!1345608 m!1504479))

(assert (=> b!1345122 d!379594))

(declare-fun d!379596 () Bool)

(declare-fun lt!445147 () List!13835)

(declare-fun dynLambda!6107 (Int List!13835) Bool)

(assert (=> d!379596 (dynLambda!6107 lambda!56698 lt!445147)))

(declare-fun choose!8272 (Int) List!13835)

(assert (=> d!379596 (= lt!445147 (choose!8272 lambda!56698))))

(assert (=> d!379596 (Exists!853 lambda!56698)))

(assert (=> d!379596 (= (pickWitness!156 lambda!56698) lt!445147)))

(declare-fun b_lambda!39993 () Bool)

(assert (=> (not b_lambda!39993) (not d!379596)))

(declare-fun bs!332639 () Bool)

(assert (= bs!332639 d!379596))

(declare-fun m!1504481 () Bool)

(assert (=> bs!332639 m!1504481))

(declare-fun m!1504483 () Bool)

(assert (=> bs!332639 m!1504483))

(assert (=> bs!332639 m!1503891))

(assert (=> b!1345122 d!379596))

(declare-fun d!379598 () Bool)

(declare-fun res!606590 () Bool)

(declare-fun e!861808 () Bool)

(assert (=> d!379598 (=> (not res!606590) (not e!861808))))

(declare-fun rulesValid!879 (LexerInterface!2082 List!13836) Bool)

(assert (=> d!379598 (= res!606590 (rulesValid!879 thiss!19762 rules!2550))))

(assert (=> d!379598 (= (rulesInvariant!1952 thiss!19762 rules!2550) e!861808)))

(declare-fun b!1345612 () Bool)

(declare-datatypes ((List!13840 0))(
  ( (Nil!13774) (Cons!13774 (h!19175 String!16621) (t!119781 List!13840)) )
))
(declare-fun noDuplicateTag!879 (LexerInterface!2082 List!13836 List!13840) Bool)

(assert (=> b!1345612 (= e!861808 (noDuplicateTag!879 thiss!19762 rules!2550 Nil!13774))))

(assert (= (and d!379598 res!606590) b!1345612))

(declare-fun m!1504485 () Bool)

(assert (=> d!379598 m!1504485))

(declare-fun m!1504487 () Bool)

(assert (=> b!1345612 m!1504487))

(assert (=> b!1345130 d!379598))

(declare-fun d!379600 () Bool)

(declare-fun lt!445148 () Bool)

(declare-fun e!861810 () Bool)

(assert (=> d!379600 (= lt!445148 e!861810)))

(declare-fun res!606592 () Bool)

(assert (=> d!379600 (=> (not res!606592) (not e!861810))))

(assert (=> d!379600 (= res!606592 (= (list!5255 (_1!7553 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t2!34))))) (list!5255 (singletonSeq!1000 t2!34))))))

(declare-fun e!861809 () Bool)

(assert (=> d!379600 (= lt!445148 e!861809)))

(declare-fun res!606593 () Bool)

(assert (=> d!379600 (=> (not res!606593) (not e!861809))))

(declare-fun lt!445149 () tuple2!13334)

(assert (=> d!379600 (= res!606593 (= (size!11244 (_1!7553 lt!445149)) 1))))

(assert (=> d!379600 (= lt!445149 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t2!34))))))

(assert (=> d!379600 (not (isEmpty!8217 rules!2550))))

(assert (=> d!379600 (= (rulesProduceIndividualToken!1051 thiss!19762 rules!2550 t2!34) lt!445148)))

(declare-fun b!1345613 () Bool)

(declare-fun res!606591 () Bool)

(assert (=> b!1345613 (=> (not res!606591) (not e!861809))))

(assert (=> b!1345613 (= res!606591 (= (apply!3283 (_1!7553 lt!445149) 0) t2!34))))

(declare-fun b!1345614 () Bool)

(assert (=> b!1345614 (= e!861809 (isEmpty!8216 (_2!7553 lt!445149)))))

(declare-fun b!1345615 () Bool)

(assert (=> b!1345615 (= e!861810 (isEmpty!8216 (_2!7553 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t2!34))))))))

(assert (= (and d!379600 res!606593) b!1345613))

(assert (= (and b!1345613 res!606591) b!1345614))

(assert (= (and d!379600 res!606592) b!1345615))

(declare-fun m!1504489 () Bool)

(assert (=> d!379600 m!1504489))

(declare-fun m!1504491 () Bool)

(assert (=> d!379600 m!1504491))

(assert (=> d!379600 m!1504489))

(assert (=> d!379600 m!1503911))

(declare-fun m!1504493 () Bool)

(assert (=> d!379600 m!1504493))

(assert (=> d!379600 m!1504491))

(declare-fun m!1504495 () Bool)

(assert (=> d!379600 m!1504495))

(declare-fun m!1504497 () Bool)

(assert (=> d!379600 m!1504497))

(assert (=> d!379600 m!1504489))

(declare-fun m!1504499 () Bool)

(assert (=> d!379600 m!1504499))

(declare-fun m!1504501 () Bool)

(assert (=> b!1345613 m!1504501))

(declare-fun m!1504503 () Bool)

(assert (=> b!1345614 m!1504503))

(assert (=> b!1345615 m!1504489))

(assert (=> b!1345615 m!1504489))

(assert (=> b!1345615 m!1504491))

(assert (=> b!1345615 m!1504491))

(assert (=> b!1345615 m!1504495))

(declare-fun m!1504505 () Bool)

(assert (=> b!1345615 m!1504505))

(assert (=> b!1345109 d!379600))

(declare-fun b!1345626 () Bool)

(declare-fun e!861817 () Bool)

(declare-fun lt!445152 () tuple2!13334)

(assert (=> b!1345626 (= e!861817 (= (list!5254 (_2!7553 lt!445152)) (_2!7552 (lexList!600 thiss!19762 rules!2550 (list!5254 lt!444976)))))))

(declare-fun d!379602 () Bool)

(assert (=> d!379602 e!861817))

(declare-fun res!606601 () Bool)

(assert (=> d!379602 (=> (not res!606601) (not e!861817))))

(declare-fun e!861819 () Bool)

(assert (=> d!379602 (= res!606601 e!861819)))

(declare-fun c!220288 () Bool)

(assert (=> d!379602 (= c!220288 (> (size!11244 (_1!7553 lt!445152)) 0))))

(declare-fun lexTailRecV2!395 (LexerInterface!2082 List!13836 BalanceConc!9012 BalanceConc!9012 BalanceConc!9012 BalanceConc!9014) tuple2!13334)

(assert (=> d!379602 (= lt!445152 (lexTailRecV2!395 thiss!19762 rules!2550 lt!444976 (BalanceConc!9013 Empty!4536) lt!444976 (BalanceConc!9015 Empty!4537)))))

(assert (=> d!379602 (= (lex!909 thiss!19762 rules!2550 lt!444976) lt!445152)))

(declare-fun b!1345627 () Bool)

(declare-fun e!861818 () Bool)

(assert (=> b!1345627 (= e!861819 e!861818)))

(declare-fun res!606602 () Bool)

(assert (=> b!1345627 (= res!606602 (< (size!11232 (_2!7553 lt!445152)) (size!11232 lt!444976)))))

(assert (=> b!1345627 (=> (not res!606602) (not e!861818))))

(declare-fun b!1345628 () Bool)

(assert (=> b!1345628 (= e!861819 (= (_2!7553 lt!445152) lt!444976))))

(declare-fun b!1345629 () Bool)

(declare-fun res!606600 () Bool)

(assert (=> b!1345629 (=> (not res!606600) (not e!861817))))

(assert (=> b!1345629 (= res!606600 (= (list!5255 (_1!7553 lt!445152)) (_1!7552 (lexList!600 thiss!19762 rules!2550 (list!5254 lt!444976)))))))

(declare-fun b!1345630 () Bool)

(declare-fun isEmpty!8225 (BalanceConc!9014) Bool)

(assert (=> b!1345630 (= e!861818 (not (isEmpty!8225 (_1!7553 lt!445152))))))

(assert (= (and d!379602 c!220288) b!1345627))

(assert (= (and d!379602 (not c!220288)) b!1345628))

(assert (= (and b!1345627 res!606602) b!1345630))

(assert (= (and d!379602 res!606601) b!1345629))

(assert (= (and b!1345629 res!606600) b!1345626))

(declare-fun m!1504507 () Bool)

(assert (=> b!1345627 m!1504507))

(declare-fun m!1504509 () Bool)

(assert (=> b!1345627 m!1504509))

(declare-fun m!1504511 () Bool)

(assert (=> b!1345629 m!1504511))

(assert (=> b!1345629 m!1503919))

(assert (=> b!1345629 m!1503919))

(assert (=> b!1345629 m!1503921))

(declare-fun m!1504513 () Bool)

(assert (=> b!1345626 m!1504513))

(assert (=> b!1345626 m!1503919))

(assert (=> b!1345626 m!1503919))

(assert (=> b!1345626 m!1503921))

(declare-fun m!1504515 () Bool)

(assert (=> b!1345630 m!1504515))

(declare-fun m!1504517 () Bool)

(assert (=> d!379602 m!1504517))

(declare-fun m!1504519 () Bool)

(assert (=> d!379602 m!1504519))

(assert (=> b!1345129 d!379602))

(declare-fun d!379604 () Bool)

(declare-fun lt!445155 () BalanceConc!9012)

(declare-fun printList!590 (LexerInterface!2082 List!13837) List!13835)

(assert (=> d!379604 (= (list!5254 lt!445155) (printList!590 thiss!19762 (list!5255 (singletonSeq!1000 t1!34))))))

(declare-fun printTailRec!572 (LexerInterface!2082 BalanceConc!9014 Int BalanceConc!9012) BalanceConc!9012)

(assert (=> d!379604 (= lt!445155 (printTailRec!572 thiss!19762 (singletonSeq!1000 t1!34) 0 (BalanceConc!9013 Empty!4536)))))

(assert (=> d!379604 (= (print!848 thiss!19762 (singletonSeq!1000 t1!34)) lt!445155)))

(declare-fun bs!332640 () Bool)

(assert (= bs!332640 d!379604))

(declare-fun m!1504521 () Bool)

(assert (=> bs!332640 m!1504521))

(assert (=> bs!332640 m!1503831))

(assert (=> bs!332640 m!1504451))

(assert (=> bs!332640 m!1504451))

(declare-fun m!1504523 () Bool)

(assert (=> bs!332640 m!1504523))

(assert (=> bs!332640 m!1503831))

(declare-fun m!1504525 () Bool)

(assert (=> bs!332640 m!1504525))

(assert (=> b!1345129 d!379604))

(declare-fun b!1345643 () Bool)

(declare-fun e!861830 () Rule!4574)

(assert (=> b!1345643 (= e!861830 (h!19171 rules!2550))))

(declare-fun b!1345644 () Bool)

(declare-fun e!861828 () Bool)

(declare-fun dynLambda!6108 (Int Rule!4574) Bool)

(assert (=> b!1345644 (= e!861828 (dynLambda!6108 lambda!56701 (h!19171 rules!2550)))))

(declare-fun d!379606 () Bool)

(declare-fun e!861829 () Bool)

(assert (=> d!379606 e!861829))

(declare-fun res!606608 () Bool)

(assert (=> d!379606 (=> (not res!606608) (not e!861829))))

(declare-fun lt!445161 () Rule!4574)

(assert (=> d!379606 (= res!606608 (dynLambda!6108 lambda!56701 lt!445161))))

(assert (=> d!379606 (= lt!445161 e!861830)))

(declare-fun c!220293 () Bool)

(assert (=> d!379606 (= c!220293 e!861828)))

(declare-fun res!606607 () Bool)

(assert (=> d!379606 (=> (not res!606607) (not e!861828))))

(assert (=> d!379606 (= res!606607 ((_ is Cons!13770) rules!2550))))

(assert (=> d!379606 (exists!432 rules!2550 lambda!56701)))

(assert (=> d!379606 (= (getWitness!321 rules!2550 lambda!56701) lt!445161)))

(declare-fun b!1345645 () Bool)

(declare-fun contains!2531 (List!13836 Rule!4574) Bool)

(assert (=> b!1345645 (= e!861829 (contains!2531 rules!2550 lt!445161))))

(declare-fun b!1345646 () Bool)

(declare-fun e!861831 () Rule!4574)

(assert (=> b!1345646 (= e!861830 e!861831)))

(declare-fun c!220294 () Bool)

(assert (=> b!1345646 (= c!220294 ((_ is Cons!13770) rules!2550))))

(declare-fun b!1345647 () Bool)

(declare-fun lt!445160 () Unit!19871)

(declare-fun Unit!19876 () Unit!19871)

(assert (=> b!1345647 (= lt!445160 Unit!19876)))

(assert (=> b!1345647 false))

(declare-fun head!2405 (List!13836) Rule!4574)

(assert (=> b!1345647 (= e!861831 (head!2405 rules!2550))))

(declare-fun b!1345648 () Bool)

(assert (=> b!1345648 (= e!861831 (getWitness!321 (t!119741 rules!2550) lambda!56701))))

(assert (= (and d!379606 res!606607) b!1345644))

(assert (= (and d!379606 c!220293) b!1345643))

(assert (= (and d!379606 (not c!220293)) b!1345646))

(assert (= (and b!1345646 c!220294) b!1345648))

(assert (= (and b!1345646 (not c!220294)) b!1345647))

(assert (= (and d!379606 res!606608) b!1345645))

(declare-fun b_lambda!39995 () Bool)

(assert (=> (not b_lambda!39995) (not b!1345644)))

(declare-fun b_lambda!39997 () Bool)

(assert (=> (not b_lambda!39997) (not d!379606)))

(declare-fun m!1504527 () Bool)

(assert (=> b!1345645 m!1504527))

(declare-fun m!1504529 () Bool)

(assert (=> d!379606 m!1504529))

(assert (=> d!379606 m!1503871))

(declare-fun m!1504531 () Bool)

(assert (=> b!1345647 m!1504531))

(declare-fun m!1504533 () Bool)

(assert (=> b!1345644 m!1504533))

(declare-fun m!1504535 () Bool)

(assert (=> b!1345648 m!1504535))

(assert (=> b!1345129 d!379606))

(declare-fun d!379608 () Bool)

(declare-fun e!861834 () Bool)

(assert (=> d!379608 e!861834))

(declare-fun res!606611 () Bool)

(assert (=> d!379608 (=> (not res!606611) (not e!861834))))

(declare-fun lt!445164 () BalanceConc!9014)

(assert (=> d!379608 (= res!606611 (= (list!5255 lt!445164) (Cons!13771 t1!34 Nil!13771)))))

(declare-fun singleton!422 (Token!4436) BalanceConc!9014)

(assert (=> d!379608 (= lt!445164 (singleton!422 t1!34))))

(assert (=> d!379608 (= (singletonSeq!1000 t1!34) lt!445164)))

(declare-fun b!1345651 () Bool)

(declare-fun isBalanced!1316 (Conc!4537) Bool)

(assert (=> b!1345651 (= e!861834 (isBalanced!1316 (c!220192 lt!445164)))))

(assert (= (and d!379608 res!606611) b!1345651))

(declare-fun m!1504537 () Bool)

(assert (=> d!379608 m!1504537))

(declare-fun m!1504539 () Bool)

(assert (=> d!379608 m!1504539))

(declare-fun m!1504541 () Bool)

(assert (=> b!1345651 m!1504541))

(assert (=> b!1345129 d!379608))

(declare-fun d!379610 () Bool)

(declare-fun list!5259 (Conc!4537) List!13837)

(assert (=> d!379610 (= (list!5255 (_1!7553 lt!444980)) (list!5259 (c!220192 (_1!7553 lt!444980))))))

(declare-fun bs!332641 () Bool)

(assert (= bs!332641 d!379610))

(declare-fun m!1504543 () Bool)

(assert (=> bs!332641 m!1504543))

(assert (=> b!1345129 d!379610))

(declare-fun bs!332642 () Bool)

(declare-fun d!379612 () Bool)

(assert (= bs!332642 (and d!379612 b!1345128)))

(declare-fun lambda!56742 () Int)

(assert (=> bs!332642 (not (= lambda!56742 lambda!56701))))

(assert (=> d!379612 true))

(declare-fun order!8259 () Int)

(declare-fun dynLambda!6109 (Int Int) Int)

(assert (=> d!379612 (< (dynLambda!6109 order!8259 lambda!56701) (dynLambda!6109 order!8259 lambda!56742))))

(declare-fun forall!3358 (List!13836 Int) Bool)

(assert (=> d!379612 (= (exists!432 rules!2550 lambda!56701) (not (forall!3358 rules!2550 lambda!56742)))))

(declare-fun bs!332643 () Bool)

(assert (= bs!332643 d!379612))

(declare-fun m!1504545 () Bool)

(assert (=> bs!332643 m!1504545))

(assert (=> b!1345128 d!379612))

(declare-fun bs!332644 () Bool)

(declare-fun d!379614 () Bool)

(assert (= bs!332644 (and d!379614 b!1345128)))

(declare-fun lambda!56745 () Int)

(assert (=> bs!332644 (not (= lambda!56745 lambda!56701))))

(declare-fun bs!332645 () Bool)

(assert (= bs!332645 (and d!379614 d!379612)))

(assert (=> bs!332645 (not (= lambda!56745 lambda!56742))))

(assert (=> d!379614 true))

(assert (=> d!379614 true))

(declare-fun order!8261 () Int)

(declare-fun dynLambda!6110 (Int Int) Int)

(assert (=> d!379614 (< (dynLambda!6110 order!8261 lambda!56699) (dynLambda!6109 order!8259 lambda!56745))))

(assert (=> d!379614 (exists!432 rules!2550 lambda!56745)))

(declare-fun lt!445167 () Unit!19871)

(declare-fun choose!8273 (List!13836 Int Regex!3701) Unit!19871)

(assert (=> d!379614 (= lt!445167 (choose!8273 rules!2550 lambda!56699 lt!444982))))

(assert (=> d!379614 (contains!2528 (map!3041 rules!2550 lambda!56699) lt!444982)))

(assert (=> d!379614 (= (lemmaMapContains!106 rules!2550 lambda!56699 lt!444982) lt!445167)))

(declare-fun bs!332646 () Bool)

(assert (= bs!332646 d!379614))

(declare-fun m!1504547 () Bool)

(assert (=> bs!332646 m!1504547))

(declare-fun m!1504549 () Bool)

(assert (=> bs!332646 m!1504549))

(assert (=> bs!332646 m!1503845))

(assert (=> bs!332646 m!1503845))

(assert (=> bs!332646 m!1503863))

(assert (=> b!1345128 d!379614))

(declare-fun d!379616 () Bool)

(declare-fun lt!445168 () Bool)

(assert (=> d!379616 (= lt!445168 (select (content!1964 lt!444989) lt!444975))))

(declare-fun e!861835 () Bool)

(assert (=> d!379616 (= lt!445168 e!861835)))

(declare-fun res!606612 () Bool)

(assert (=> d!379616 (=> (not res!606612) (not e!861835))))

(assert (=> d!379616 (= res!606612 ((_ is Cons!13769) lt!444989))))

(assert (=> d!379616 (= (contains!2529 lt!444989 lt!444975) lt!445168)))

(declare-fun b!1345658 () Bool)

(declare-fun e!861836 () Bool)

(assert (=> b!1345658 (= e!861835 e!861836)))

(declare-fun res!606613 () Bool)

(assert (=> b!1345658 (=> res!606613 e!861836)))

(assert (=> b!1345658 (= res!606613 (= (h!19170 lt!444989) lt!444975))))

(declare-fun b!1345659 () Bool)

(assert (=> b!1345659 (= e!861836 (contains!2529 (t!119740 lt!444989) lt!444975))))

(assert (= (and d!379616 res!606612) b!1345658))

(assert (= (and b!1345658 (not res!606613)) b!1345659))

(assert (=> d!379616 m!1503987))

(declare-fun m!1504551 () Bool)

(assert (=> d!379616 m!1504551))

(declare-fun m!1504553 () Bool)

(assert (=> b!1345659 m!1504553))

(assert (=> b!1345126 d!379616))

(declare-fun d!379618 () Bool)

(declare-fun res!606618 () Bool)

(declare-fun e!861839 () Bool)

(assert (=> d!379618 (=> (not res!606618) (not e!861839))))

(assert (=> d!379618 (= res!606618 (not (isEmpty!8221 (originalCharacters!3249 t1!34))))))

(assert (=> d!379618 (= (inv!18101 t1!34) e!861839)))

(declare-fun b!1345664 () Bool)

(declare-fun res!606619 () Bool)

(assert (=> b!1345664 (=> (not res!606619) (not e!861839))))

(assert (=> b!1345664 (= res!606619 (= (originalCharacters!3249 t1!34) (list!5254 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34)))))))

(declare-fun b!1345665 () Bool)

(assert (=> b!1345665 (= e!861839 (= (size!11231 t1!34) (size!11239 (originalCharacters!3249 t1!34))))))

(assert (= (and d!379618 res!606618) b!1345664))

(assert (= (and b!1345664 res!606619) b!1345665))

(declare-fun b_lambda!39999 () Bool)

(assert (=> (not b_lambda!39999) (not b!1345664)))

(assert (=> b!1345664 t!119758))

(declare-fun b_and!90199 () Bool)

(assert (= b_and!90177 (and (=> t!119758 result!86048) b_and!90199)))

(assert (=> b!1345664 t!119760))

(declare-fun b_and!90201 () Bool)

(assert (= b_and!90179 (and (=> t!119760 result!86052) b_and!90201)))

(assert (=> b!1345664 t!119762))

(declare-fun b_and!90203 () Bool)

(assert (= b_and!90185 (and (=> t!119762 result!86054) b_and!90203)))

(declare-fun m!1504555 () Bool)

(assert (=> d!379618 m!1504555))

(assert (=> b!1345664 m!1504093))

(assert (=> b!1345664 m!1504093))

(declare-fun m!1504557 () Bool)

(assert (=> b!1345664 m!1504557))

(declare-fun m!1504559 () Bool)

(assert (=> b!1345665 m!1504559))

(assert (=> start!120378 d!379618))

(declare-fun d!379620 () Bool)

(declare-fun res!606620 () Bool)

(declare-fun e!861840 () Bool)

(assert (=> d!379620 (=> (not res!606620) (not e!861840))))

(assert (=> d!379620 (= res!606620 (not (isEmpty!8221 (originalCharacters!3249 t2!34))))))

(assert (=> d!379620 (= (inv!18101 t2!34) e!861840)))

(declare-fun b!1345666 () Bool)

(declare-fun res!606621 () Bool)

(assert (=> b!1345666 (=> (not res!606621) (not e!861840))))

(assert (=> b!1345666 (= res!606621 (= (originalCharacters!3249 t2!34) (list!5254 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34)))))))

(declare-fun b!1345667 () Bool)

(assert (=> b!1345667 (= e!861840 (= (size!11231 t2!34) (size!11239 (originalCharacters!3249 t2!34))))))

(assert (= (and d!379620 res!606620) b!1345666))

(assert (= (and b!1345666 res!606621) b!1345667))

(declare-fun b_lambda!40001 () Bool)

(assert (=> (not b_lambda!40001) (not b!1345666)))

(assert (=> b!1345666 t!119765))

(declare-fun b_and!90205 () Bool)

(assert (= b_and!90199 (and (=> t!119765 result!86056) b_and!90205)))

(assert (=> b!1345666 t!119767))

(declare-fun b_and!90207 () Bool)

(assert (= b_and!90201 (and (=> t!119767 result!86058) b_and!90207)))

(assert (=> b!1345666 t!119769))

(declare-fun b_and!90209 () Bool)

(assert (= b_and!90203 (and (=> t!119769 result!86060) b_and!90209)))

(declare-fun m!1504561 () Bool)

(assert (=> d!379620 m!1504561))

(assert (=> b!1345666 m!1504303))

(assert (=> b!1345666 m!1504303))

(declare-fun m!1504563 () Bool)

(assert (=> b!1345666 m!1504563))

(declare-fun m!1504565 () Bool)

(assert (=> b!1345667 m!1504565))

(assert (=> start!120378 d!379620))

(declare-fun b!1345672 () Bool)

(declare-fun e!861843 () Bool)

(declare-fun tp_is_empty!6711 () Bool)

(declare-fun tp!389418 () Bool)

(assert (=> b!1345672 (= e!861843 (and tp_is_empty!6711 tp!389418))))

(assert (=> b!1345135 (= tp!389357 e!861843)))

(assert (= (and b!1345135 ((_ is Cons!13769) (originalCharacters!3249 t1!34))) b!1345672))

(declare-fun b!1345673 () Bool)

(declare-fun e!861844 () Bool)

(declare-fun tp!389419 () Bool)

(assert (=> b!1345673 (= e!861844 (and tp_is_empty!6711 tp!389419))))

(assert (=> b!1345114 (= tp!389358 e!861844)))

(assert (= (and b!1345114 ((_ is Cons!13769) (originalCharacters!3249 t2!34))) b!1345673))

(declare-fun b!1345684 () Bool)

(declare-fun b_free!32883 () Bool)

(declare-fun b_next!33587 () Bool)

(assert (=> b!1345684 (= b_free!32883 (not b_next!33587))))

(declare-fun tp!389431 () Bool)

(declare-fun b_and!90211 () Bool)

(assert (=> b!1345684 (= tp!389431 b_and!90211)))

(declare-fun b_free!32885 () Bool)

(declare-fun b_next!33589 () Bool)

(assert (=> b!1345684 (= b_free!32885 (not b_next!33589))))

(declare-fun t!119777 () Bool)

(declare-fun tb!70781 () Bool)

(assert (=> (and b!1345684 (= (toChars!3489 (transformation!2387 (h!19171 (t!119741 rules!2550)))) (toChars!3489 (transformation!2387 (rule!4132 t1!34)))) t!119777) tb!70781))

(declare-fun result!86076 () Bool)

(assert (= result!86076 result!86048))

(assert (=> d!379446 t!119777))

(declare-fun tb!70783 () Bool)

(declare-fun t!119779 () Bool)

(assert (=> (and b!1345684 (= (toChars!3489 (transformation!2387 (h!19171 (t!119741 rules!2550)))) (toChars!3489 (transformation!2387 (rule!4132 t2!34)))) t!119779) tb!70783))

(declare-fun result!86078 () Bool)

(assert (= result!86078 result!86056))

(assert (=> d!379510 t!119779))

(assert (=> b!1345664 t!119777))

(assert (=> b!1345666 t!119779))

(declare-fun tp!389428 () Bool)

(declare-fun b_and!90213 () Bool)

(assert (=> b!1345684 (= tp!389428 (and (=> t!119777 result!86076) (=> t!119779 result!86078) b_and!90213))))

(declare-fun e!861856 () Bool)

(assert (=> b!1345684 (= e!861856 (and tp!389431 tp!389428))))

(declare-fun e!861855 () Bool)

(declare-fun tp!389429 () Bool)

(declare-fun b!1345683 () Bool)

(assert (=> b!1345683 (= e!861855 (and tp!389429 (inv!18098 (tag!2649 (h!19171 (t!119741 rules!2550)))) (inv!18102 (transformation!2387 (h!19171 (t!119741 rules!2550)))) e!861856))))

(declare-fun b!1345682 () Bool)

(declare-fun e!861853 () Bool)

(declare-fun tp!389430 () Bool)

(assert (=> b!1345682 (= e!861853 (and e!861855 tp!389430))))

(assert (=> b!1345120 (= tp!389365 e!861853)))

(assert (= b!1345683 b!1345684))

(assert (= b!1345682 b!1345683))

(assert (= (and b!1345120 ((_ is Cons!13770) (t!119741 rules!2550))) b!1345682))

(declare-fun m!1504567 () Bool)

(assert (=> b!1345683 m!1504567))

(declare-fun m!1504569 () Bool)

(assert (=> b!1345683 m!1504569))

(declare-fun b!1345696 () Bool)

(declare-fun e!861859 () Bool)

(declare-fun tp!389444 () Bool)

(declare-fun tp!389446 () Bool)

(assert (=> b!1345696 (= e!861859 (and tp!389444 tp!389446))))

(declare-fun b!1345695 () Bool)

(assert (=> b!1345695 (= e!861859 tp_is_empty!6711)))

(declare-fun b!1345698 () Bool)

(declare-fun tp!389443 () Bool)

(declare-fun tp!389445 () Bool)

(assert (=> b!1345698 (= e!861859 (and tp!389443 tp!389445))))

(declare-fun b!1345697 () Bool)

(declare-fun tp!389442 () Bool)

(assert (=> b!1345697 (= e!861859 tp!389442)))

(assert (=> b!1345124 (= tp!389363 e!861859)))

(assert (= (and b!1345124 ((_ is ElementMatch!3701) (regex!2387 (h!19171 rules!2550)))) b!1345695))

(assert (= (and b!1345124 ((_ is Concat!6179) (regex!2387 (h!19171 rules!2550)))) b!1345696))

(assert (= (and b!1345124 ((_ is Star!3701) (regex!2387 (h!19171 rules!2550)))) b!1345697))

(assert (= (and b!1345124 ((_ is Union!3701) (regex!2387 (h!19171 rules!2550)))) b!1345698))

(declare-fun b!1345700 () Bool)

(declare-fun e!861860 () Bool)

(declare-fun tp!389449 () Bool)

(declare-fun tp!389451 () Bool)

(assert (=> b!1345700 (= e!861860 (and tp!389449 tp!389451))))

(declare-fun b!1345699 () Bool)

(assert (=> b!1345699 (= e!861860 tp_is_empty!6711)))

(declare-fun b!1345702 () Bool)

(declare-fun tp!389448 () Bool)

(declare-fun tp!389450 () Bool)

(assert (=> b!1345702 (= e!861860 (and tp!389448 tp!389450))))

(declare-fun b!1345701 () Bool)

(declare-fun tp!389447 () Bool)

(assert (=> b!1345701 (= e!861860 tp!389447)))

(assert (=> b!1345117 (= tp!389366 e!861860)))

(assert (= (and b!1345117 ((_ is ElementMatch!3701) (regex!2387 (rule!4132 t1!34)))) b!1345699))

(assert (= (and b!1345117 ((_ is Concat!6179) (regex!2387 (rule!4132 t1!34)))) b!1345700))

(assert (= (and b!1345117 ((_ is Star!3701) (regex!2387 (rule!4132 t1!34)))) b!1345701))

(assert (= (and b!1345117 ((_ is Union!3701) (regex!2387 (rule!4132 t1!34)))) b!1345702))

(declare-fun b!1345704 () Bool)

(declare-fun e!861861 () Bool)

(declare-fun tp!389454 () Bool)

(declare-fun tp!389456 () Bool)

(assert (=> b!1345704 (= e!861861 (and tp!389454 tp!389456))))

(declare-fun b!1345703 () Bool)

(assert (=> b!1345703 (= e!861861 tp_is_empty!6711)))

(declare-fun b!1345706 () Bool)

(declare-fun tp!389453 () Bool)

(declare-fun tp!389455 () Bool)

(assert (=> b!1345706 (= e!861861 (and tp!389453 tp!389455))))

(declare-fun b!1345705 () Bool)

(declare-fun tp!389452 () Bool)

(assert (=> b!1345705 (= e!861861 tp!389452)))

(assert (=> b!1345112 (= tp!389356 e!861861)))

(assert (= (and b!1345112 ((_ is ElementMatch!3701) (regex!2387 (rule!4132 t2!34)))) b!1345703))

(assert (= (and b!1345112 ((_ is Concat!6179) (regex!2387 (rule!4132 t2!34)))) b!1345704))

(assert (= (and b!1345112 ((_ is Star!3701) (regex!2387 (rule!4132 t2!34)))) b!1345705))

(assert (= (and b!1345112 ((_ is Union!3701) (regex!2387 (rule!4132 t2!34)))) b!1345706))

(declare-fun b_lambda!40003 () Bool)

(assert (= b_lambda!39955 (or (and b!1345116 b_free!32869 (= (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (toChars!3489 (transformation!2387 (rule!4132 t1!34))))) (and b!1345115 b_free!32873) (and b!1345127 b_free!32877 (= (toChars!3489 (transformation!2387 (h!19171 rules!2550))) (toChars!3489 (transformation!2387 (rule!4132 t1!34))))) (and b!1345684 b_free!32885 (= (toChars!3489 (transformation!2387 (h!19171 (t!119741 rules!2550)))) (toChars!3489 (transformation!2387 (rule!4132 t1!34))))) b_lambda!40003)))

(declare-fun b_lambda!40005 () Bool)

(assert (= b_lambda!39959 (or b!1345137 b_lambda!40005)))

(declare-fun bs!332647 () Bool)

(declare-fun d!379622 () Bool)

(assert (= bs!332647 (and d!379622 b!1345137)))

(declare-fun res!606622 () Bool)

(declare-fun e!861862 () Bool)

(assert (=> bs!332647 (=> (not res!606622) (not e!861862))))

(assert (=> bs!332647 (= res!606622 (validRegex!1601 lt!445061))))

(assert (=> bs!332647 (= (dynLambda!6105 lambda!56700 lt!445061) e!861862)))

(declare-fun b!1345707 () Bool)

(assert (=> b!1345707 (= e!861862 (matchR!1694 lt!445061 lt!444989))))

(assert (= (and bs!332647 res!606622) b!1345707))

(declare-fun m!1504571 () Bool)

(assert (=> bs!332647 m!1504571))

(declare-fun m!1504573 () Bool)

(assert (=> b!1345707 m!1504573))

(assert (=> d!379464 d!379622))

(declare-fun b_lambda!40007 () Bool)

(assert (= b_lambda!40001 (or (and b!1345116 b_free!32869) (and b!1345115 b_free!32873 (= (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (toChars!3489 (transformation!2387 (rule!4132 t2!34))))) (and b!1345127 b_free!32877 (= (toChars!3489 (transformation!2387 (h!19171 rules!2550))) (toChars!3489 (transformation!2387 (rule!4132 t2!34))))) (and b!1345684 b_free!32885 (= (toChars!3489 (transformation!2387 (h!19171 (t!119741 rules!2550)))) (toChars!3489 (transformation!2387 (rule!4132 t2!34))))) b_lambda!40007)))

(declare-fun b_lambda!40009 () Bool)

(assert (= b_lambda!39997 (or b!1345128 b_lambda!40009)))

(declare-fun bs!332648 () Bool)

(declare-fun d!379624 () Bool)

(assert (= bs!332648 (and d!379624 b!1345128)))

(assert (=> bs!332648 (= (dynLambda!6108 lambda!56701 lt!445161) (= (regex!2387 lt!445161) lt!444982))))

(assert (=> d!379606 d!379624))

(declare-fun b_lambda!40011 () Bool)

(assert (= b_lambda!39957 (or b!1345137 b_lambda!40011)))

(declare-fun bs!332649 () Bool)

(declare-fun d!379626 () Bool)

(assert (= bs!332649 (and d!379626 b!1345137)))

(assert (=> bs!332649 (= (dynLambda!6104 lambda!56699 (h!19171 rules!2550)) (regex!2387 (h!19171 rules!2550)))))

(assert (=> b!1345367 d!379626))

(declare-fun b_lambda!40013 () Bool)

(assert (= b_lambda!39967 (or (and b!1345116 b_free!32869) (and b!1345115 b_free!32873 (= (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (toChars!3489 (transformation!2387 (rule!4132 t2!34))))) (and b!1345127 b_free!32877 (= (toChars!3489 (transformation!2387 (h!19171 rules!2550))) (toChars!3489 (transformation!2387 (rule!4132 t2!34))))) (and b!1345684 b_free!32885 (= (toChars!3489 (transformation!2387 (h!19171 (t!119741 rules!2550)))) (toChars!3489 (transformation!2387 (rule!4132 t2!34))))) b_lambda!40013)))

(declare-fun b_lambda!40015 () Bool)

(assert (= b_lambda!39999 (or (and b!1345116 b_free!32869 (= (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (toChars!3489 (transformation!2387 (rule!4132 t1!34))))) (and b!1345115 b_free!32873) (and b!1345127 b_free!32877 (= (toChars!3489 (transformation!2387 (h!19171 rules!2550))) (toChars!3489 (transformation!2387 (rule!4132 t1!34))))) (and b!1345684 b_free!32885 (= (toChars!3489 (transformation!2387 (h!19171 (t!119741 rules!2550)))) (toChars!3489 (transformation!2387 (rule!4132 t1!34))))) b_lambda!40015)))

(declare-fun b_lambda!40017 () Bool)

(assert (= b_lambda!39993 (or b!1345119 b_lambda!40017)))

(declare-fun bs!332650 () Bool)

(declare-fun d!379628 () Bool)

(assert (= bs!332650 (and d!379628 b!1345119)))

(declare-fun res!606623 () Bool)

(declare-fun e!861863 () Bool)

(assert (=> bs!332650 (=> (not res!606623) (not e!861863))))

(assert (=> bs!332650 (= res!606623 (matchR!1694 lt!444985 lt!445147))))

(assert (=> bs!332650 (= (dynLambda!6107 lambda!56698 lt!445147) e!861863)))

(declare-fun b!1345708 () Bool)

(declare-fun isPrefix!1111 (List!13835 List!13835) Bool)

(assert (=> b!1345708 (= e!861863 (isPrefix!1111 lt!444988 lt!445147))))

(assert (= (and bs!332650 res!606623) b!1345708))

(declare-fun m!1504575 () Bool)

(assert (=> bs!332650 m!1504575))

(declare-fun m!1504577 () Bool)

(assert (=> b!1345708 m!1504577))

(assert (=> d!379596 d!379628))

(declare-fun b_lambda!40019 () Bool)

(assert (= b_lambda!39961 (or b!1345137 b_lambda!40019)))

(declare-fun bs!332651 () Bool)

(declare-fun d!379630 () Bool)

(assert (= bs!332651 (and d!379630 b!1345137)))

(declare-fun res!606624 () Bool)

(declare-fun e!861864 () Bool)

(assert (=> bs!332651 (=> (not res!606624) (not e!861864))))

(assert (=> bs!332651 (= res!606624 (validRegex!1601 (h!19173 (map!3041 rules!2550 lambda!56699))))))

(assert (=> bs!332651 (= (dynLambda!6105 lambda!56700 (h!19173 (map!3041 rules!2550 lambda!56699))) e!861864)))

(declare-fun b!1345709 () Bool)

(assert (=> b!1345709 (= e!861864 (matchR!1694 (h!19173 (map!3041 rules!2550 lambda!56699)) lt!444989))))

(assert (= (and bs!332651 res!606624) b!1345709))

(declare-fun m!1504579 () Bool)

(assert (=> bs!332651 m!1504579))

(declare-fun m!1504581 () Bool)

(assert (=> b!1345709 m!1504581))

(assert (=> b!1345386 d!379630))

(declare-fun b_lambda!40021 () Bool)

(assert (= b_lambda!39995 (or b!1345128 b_lambda!40021)))

(declare-fun bs!332652 () Bool)

(declare-fun d!379632 () Bool)

(assert (= bs!332652 (and d!379632 b!1345128)))

(assert (=> bs!332652 (= (dynLambda!6108 lambda!56701 (h!19171 rules!2550)) (= (regex!2387 (h!19171 rules!2550)) lt!444982))))

(assert (=> b!1345644 d!379632))

(check-sat (not b!1345344) b_and!90209 (not b!1345385) (not b!1345428) (not b_lambda!40005) (not b!1345367) (not b!1345708) (not b!1345647) (not b_next!33573) (not b!1345203) (not d!379590) (not d!379476) (not b!1345597) b_and!90205 (not b!1345659) (not b!1345424) (not b!1345614) (not bs!332650) (not b!1345224) (not b!1345204) (not d!379538) (not b!1345501) (not d!379616) (not b!1345700) (not d!379610) (not b!1345665) (not b!1345343) (not b!1345198) (not b!1345283) (not b_next!33575) (not b_lambda!40021) (not d!379618) b_and!90211 (not d!379490) (not d!379594) (not d!379484) (not b!1345706) (not b!1345197) (not b_lambda!40019) (not b!1345602) (not b_lambda!40007) (not d!379460) (not d!379450) (not b!1345389) (not d!379486) (not d!379606) (not d!379428) (not b_lambda!40003) (not b!1345432) (not b!1345601) (not bm!90518) (not bs!332651) tp_is_empty!6711 (not b!1345499) (not b!1345696) (not d!379614) (not d!379462) (not d!379510) (not d!379506) (not d!379456) (not b!1345666) (not b!1345709) (not b!1345466) (not bs!332647) (not d!379604) (not b!1345664) b_and!90207 (not b_next!33589) (not b!1345421) (not b!1345205) (not b!1345648) (not d!379516) (not b!1345427) (not tb!70771) (not b!1345438) (not b!1345707) (not d!379504) (not d!379612) (not b!1345596) (not b_next!33581) (not d!379522) (not d!379620) (not b!1345613) (not d!379480) (not d!379446) (not b!1345469) (not b!1345441) (not b!1345388) (not b_lambda!40017) (not b!1345629) (not b_lambda!40009) (not b_next!33571) (not d!379482) (not tb!70765) (not b!1345682) (not b_lambda!40011) (not b!1345419) (not b!1345697) (not b_lambda!40013) (not d!379524) (not b!1345612) (not b!1345245) (not b!1345615) (not b!1345319) (not d!379488) b_and!90151 (not b_next!33579) (not b!1345705) (not b!1345626) (not d!379494) (not d!379600) (not b!1345196) (not b!1345464) (not b!1345468) (not b!1345437) (not b_next!33587) (not b!1345702) (not d!379438) (not d!379596) (not b!1345667) (not d!379592) (not d!379534) (not b!1345608) (not d!379454) (not b!1345598) (not b!1345630) (not b!1345282) (not b!1345599) (not b!1345683) (not b!1345704) (not d!379602) (not b!1345627) (not d!379464) (not b!1345351) (not b!1345672) (not b!1345701) (not b!1345698) (not d!379598) (not b!1345673) (not d!379518) (not d!379470) b_and!90213 (not b!1345645) (not d!379608) (not b_next!33577) b_and!90155 b_and!90147 (not b_lambda!40015) (not b!1345463) (not b!1345651) (not d!379424) (not b!1345500))
(check-sat b_and!90205 (not b_next!33575) b_and!90211 b_and!90207 (not b_next!33589) (not b_next!33581) (not b_next!33571) (not b_next!33587) b_and!90213 b_and!90147 b_and!90209 (not b_next!33573) b_and!90151 (not b_next!33579) (not b_next!33577) b_and!90155)
(get-model)

(declare-fun d!379880 () Bool)

(declare-fun lt!445281 () Bool)

(assert (=> d!379880 (= lt!445281 (select (content!1964 (t!119740 lt!444988)) lt!444978))))

(declare-fun e!862113 () Bool)

(assert (=> d!379880 (= lt!445281 e!862113)))

(declare-fun res!606789 () Bool)

(assert (=> d!379880 (=> (not res!606789) (not e!862113))))

(assert (=> d!379880 (= res!606789 ((_ is Cons!13769) (t!119740 lt!444988)))))

(assert (=> d!379880 (= (contains!2529 (t!119740 lt!444988) lt!444978) lt!445281)))

(declare-fun b!1346115 () Bool)

(declare-fun e!862114 () Bool)

(assert (=> b!1346115 (= e!862113 e!862114)))

(declare-fun res!606790 () Bool)

(assert (=> b!1346115 (=> res!606790 e!862114)))

(assert (=> b!1346115 (= res!606790 (= (h!19170 (t!119740 lt!444988)) lt!444978))))

(declare-fun b!1346116 () Bool)

(assert (=> b!1346116 (= e!862114 (contains!2529 (t!119740 (t!119740 lt!444988)) lt!444978))))

(assert (= (and d!379880 res!606789) b!1346115))

(assert (= (and b!1346115 (not res!606790)) b!1346116))

(declare-fun m!1505129 () Bool)

(assert (=> d!379880 m!1505129))

(declare-fun m!1505131 () Bool)

(assert (=> d!379880 m!1505131))

(declare-fun m!1505133 () Bool)

(assert (=> b!1346116 m!1505133))

(assert (=> b!1345499 d!379880))

(declare-fun d!379882 () Bool)

(declare-fun lt!445282 () Int)

(assert (=> d!379882 (= lt!445282 (size!11239 (list!5254 lt!444983)))))

(assert (=> d!379882 (= lt!445282 (size!11243 (c!220190 lt!444983)))))

(assert (=> d!379882 (= (size!11232 lt!444983) lt!445282)))

(declare-fun bs!332732 () Bool)

(assert (= bs!332732 d!379882))

(assert (=> bs!332732 m!1503903))

(assert (=> bs!332732 m!1503903))

(declare-fun m!1505135 () Bool)

(assert (=> bs!332732 m!1505135))

(declare-fun m!1505137 () Bool)

(assert (=> bs!332732 m!1505137))

(assert (=> b!1345469 d!379882))

(declare-fun d!379884 () Bool)

(declare-fun lt!445283 () Bool)

(assert (=> d!379884 (= lt!445283 (select (content!1964 (t!119740 lt!444989)) lt!444975))))

(declare-fun e!862115 () Bool)

(assert (=> d!379884 (= lt!445283 e!862115)))

(declare-fun res!606791 () Bool)

(assert (=> d!379884 (=> (not res!606791) (not e!862115))))

(assert (=> d!379884 (= res!606791 ((_ is Cons!13769) (t!119740 lt!444989)))))

(assert (=> d!379884 (= (contains!2529 (t!119740 lt!444989) lt!444975) lt!445283)))

(declare-fun b!1346117 () Bool)

(declare-fun e!862116 () Bool)

(assert (=> b!1346117 (= e!862115 e!862116)))

(declare-fun res!606792 () Bool)

(assert (=> b!1346117 (=> res!606792 e!862116)))

(assert (=> b!1346117 (= res!606792 (= (h!19170 (t!119740 lt!444989)) lt!444975))))

(declare-fun b!1346118 () Bool)

(assert (=> b!1346118 (= e!862116 (contains!2529 (t!119740 (t!119740 lt!444989)) lt!444975))))

(assert (= (and d!379884 res!606791) b!1346117))

(assert (= (and b!1346117 (not res!606792)) b!1346118))

(declare-fun m!1505139 () Bool)

(assert (=> d!379884 m!1505139))

(declare-fun m!1505141 () Bool)

(assert (=> d!379884 m!1505141))

(declare-fun m!1505143 () Bool)

(assert (=> b!1346118 m!1505143))

(assert (=> b!1345659 d!379884))

(declare-fun b!1346137 () Bool)

(declare-fun e!862137 () Bool)

(declare-fun e!862131 () Bool)

(assert (=> b!1346137 (= e!862137 e!862131)))

(declare-fun c!220420 () Bool)

(assert (=> b!1346137 (= c!220420 ((_ is Star!3701) (h!19173 (map!3041 rules!2550 lambda!56699))))))

(declare-fun b!1346138 () Bool)

(declare-fun e!862133 () Bool)

(assert (=> b!1346138 (= e!862131 e!862133)))

(declare-fun res!606803 () Bool)

(assert (=> b!1346138 (= res!606803 (not (nullable!1181 (reg!4030 (h!19173 (map!3041 rules!2550 lambda!56699))))))))

(assert (=> b!1346138 (=> (not res!606803) (not e!862133))))

(declare-fun b!1346139 () Bool)

(declare-fun res!606805 () Bool)

(declare-fun e!862135 () Bool)

(assert (=> b!1346139 (=> (not res!606805) (not e!862135))))

(declare-fun call!90563 () Bool)

(assert (=> b!1346139 (= res!606805 call!90563)))

(declare-fun e!862136 () Bool)

(assert (=> b!1346139 (= e!862136 e!862135)))

(declare-fun bm!90558 () Bool)

(declare-fun call!90565 () Bool)

(declare-fun call!90564 () Bool)

(assert (=> bm!90558 (= call!90565 call!90564)))

(declare-fun b!1346140 () Bool)

(declare-fun e!862134 () Bool)

(assert (=> b!1346140 (= e!862134 call!90565)))

(declare-fun d!379886 () Bool)

(declare-fun res!606807 () Bool)

(assert (=> d!379886 (=> res!606807 e!862137)))

(assert (=> d!379886 (= res!606807 ((_ is ElementMatch!3701) (h!19173 (map!3041 rules!2550 lambda!56699))))))

(assert (=> d!379886 (= (validRegex!1601 (h!19173 (map!3041 rules!2550 lambda!56699))) e!862137)))

(declare-fun b!1346141 () Bool)

(assert (=> b!1346141 (= e!862135 call!90565)))

(declare-fun b!1346142 () Bool)

(assert (=> b!1346142 (= e!862133 call!90564)))

(declare-fun b!1346143 () Bool)

(assert (=> b!1346143 (= e!862131 e!862136)))

(declare-fun c!220421 () Bool)

(assert (=> b!1346143 (= c!220421 ((_ is Union!3701) (h!19173 (map!3041 rules!2550 lambda!56699))))))

(declare-fun bm!90559 () Bool)

(assert (=> bm!90559 (= call!90563 (validRegex!1601 (ite c!220421 (regOne!7915 (h!19173 (map!3041 rules!2550 lambda!56699))) (regOne!7914 (h!19173 (map!3041 rules!2550 lambda!56699))))))))

(declare-fun bm!90560 () Bool)

(assert (=> bm!90560 (= call!90564 (validRegex!1601 (ite c!220420 (reg!4030 (h!19173 (map!3041 rules!2550 lambda!56699))) (ite c!220421 (regTwo!7915 (h!19173 (map!3041 rules!2550 lambda!56699))) (regTwo!7914 (h!19173 (map!3041 rules!2550 lambda!56699)))))))))

(declare-fun b!1346144 () Bool)

(declare-fun res!606804 () Bool)

(declare-fun e!862132 () Bool)

(assert (=> b!1346144 (=> res!606804 e!862132)))

(assert (=> b!1346144 (= res!606804 (not ((_ is Concat!6179) (h!19173 (map!3041 rules!2550 lambda!56699)))))))

(assert (=> b!1346144 (= e!862136 e!862132)))

(declare-fun b!1346145 () Bool)

(assert (=> b!1346145 (= e!862132 e!862134)))

(declare-fun res!606806 () Bool)

(assert (=> b!1346145 (=> (not res!606806) (not e!862134))))

(assert (=> b!1346145 (= res!606806 call!90563)))

(assert (= (and d!379886 (not res!606807)) b!1346137))

(assert (= (and b!1346137 c!220420) b!1346138))

(assert (= (and b!1346137 (not c!220420)) b!1346143))

(assert (= (and b!1346138 res!606803) b!1346142))

(assert (= (and b!1346143 c!220421) b!1346139))

(assert (= (and b!1346143 (not c!220421)) b!1346144))

(assert (= (and b!1346139 res!606805) b!1346141))

(assert (= (and b!1346144 (not res!606804)) b!1346145))

(assert (= (and b!1346145 res!606806) b!1346140))

(assert (= (or b!1346139 b!1346145) bm!90559))

(assert (= (or b!1346141 b!1346140) bm!90558))

(assert (= (or b!1346142 bm!90558) bm!90560))

(declare-fun m!1505145 () Bool)

(assert (=> b!1346138 m!1505145))

(declare-fun m!1505147 () Bool)

(assert (=> bm!90559 m!1505147))

(declare-fun m!1505149 () Bool)

(assert (=> bm!90560 m!1505149))

(assert (=> bs!332651 d!379886))

(declare-fun d!379888 () Bool)

(declare-fun lt!445286 () C!7692)

(assert (=> d!379888 (contains!2529 (list!5254 lt!444983) lt!445286)))

(declare-fun e!862142 () C!7692)

(assert (=> d!379888 (= lt!445286 e!862142)))

(declare-fun c!220424 () Bool)

(assert (=> d!379888 (= c!220424 (= 0 0))))

(declare-fun e!862143 () Bool)

(assert (=> d!379888 e!862143))

(declare-fun res!606810 () Bool)

(assert (=> d!379888 (=> (not res!606810) (not e!862143))))

(assert (=> d!379888 (= res!606810 (<= 0 0))))

(assert (=> d!379888 (= (apply!3281 (list!5254 lt!444983) 0) lt!445286)))

(declare-fun b!1346152 () Bool)

(assert (=> b!1346152 (= e!862143 (< 0 (size!11239 (list!5254 lt!444983))))))

(declare-fun b!1346153 () Bool)

(assert (=> b!1346153 (= e!862142 (head!2403 (list!5254 lt!444983)))))

(declare-fun b!1346154 () Bool)

(assert (=> b!1346154 (= e!862142 (apply!3281 (tail!1940 (list!5254 lt!444983)) (- 0 1)))))

(assert (= (and d!379888 res!606810) b!1346152))

(assert (= (and d!379888 c!220424) b!1346153))

(assert (= (and d!379888 (not c!220424)) b!1346154))

(assert (=> d!379888 m!1503903))

(declare-fun m!1505151 () Bool)

(assert (=> d!379888 m!1505151))

(assert (=> b!1346152 m!1503903))

(assert (=> b!1346152 m!1505135))

(assert (=> b!1346153 m!1503903))

(declare-fun m!1505153 () Bool)

(assert (=> b!1346153 m!1505153))

(assert (=> b!1346154 m!1503903))

(declare-fun m!1505155 () Bool)

(assert (=> b!1346154 m!1505155))

(assert (=> b!1346154 m!1505155))

(declare-fun m!1505157 () Bool)

(assert (=> b!1346154 m!1505157))

(assert (=> d!379486 d!379888))

(assert (=> d!379486 d!379454))

(declare-fun b!1346169 () Bool)

(declare-fun e!862152 () C!7692)

(declare-fun apply!3287 (IArray!9077 Int) C!7692)

(assert (=> b!1346169 (= e!862152 (apply!3287 (xs!7255 (c!220190 lt!444983)) 0))))

(declare-fun d!379890 () Bool)

(declare-fun lt!445292 () C!7692)

(assert (=> d!379890 (= lt!445292 (apply!3281 (list!5258 (c!220190 lt!444983)) 0))))

(assert (=> d!379890 (= lt!445292 e!862152)))

(declare-fun c!220431 () Bool)

(assert (=> d!379890 (= c!220431 ((_ is Leaf!6926) (c!220190 lt!444983)))))

(declare-fun e!862155 () Bool)

(assert (=> d!379890 e!862155))

(declare-fun res!606813 () Bool)

(assert (=> d!379890 (=> (not res!606813) (not e!862155))))

(assert (=> d!379890 (= res!606813 (<= 0 0))))

(assert (=> d!379890 (= (apply!3282 (c!220190 lt!444983) 0) lt!445292)))

(declare-fun b!1346170 () Bool)

(assert (=> b!1346170 (= e!862155 (< 0 (size!11243 (c!220190 lt!444983))))))

(declare-fun b!1346171 () Bool)

(declare-fun e!862153 () C!7692)

(declare-fun call!90568 () C!7692)

(assert (=> b!1346171 (= e!862153 call!90568)))

(declare-fun bm!90563 () Bool)

(declare-fun c!220432 () Bool)

(declare-fun c!220433 () Bool)

(assert (=> bm!90563 (= c!220432 c!220433)))

(declare-fun e!862154 () Int)

(assert (=> bm!90563 (= call!90568 (apply!3282 (ite c!220433 (left!11803 (c!220190 lt!444983)) (right!12133 (c!220190 lt!444983))) e!862154))))

(declare-fun b!1346172 () Bool)

(assert (=> b!1346172 (= e!862154 0)))

(declare-fun b!1346173 () Bool)

(assert (=> b!1346173 (= e!862154 (- 0 (size!11243 (left!11803 (c!220190 lt!444983)))))))

(declare-fun b!1346174 () Bool)

(assert (=> b!1346174 (= e!862153 call!90568)))

(declare-fun b!1346175 () Bool)

(assert (=> b!1346175 (= e!862152 e!862153)))

(declare-fun lt!445291 () Bool)

(declare-fun appendIndex!153 (List!13835 List!13835 Int) Bool)

(assert (=> b!1346175 (= lt!445291 (appendIndex!153 (list!5258 (left!11803 (c!220190 lt!444983))) (list!5258 (right!12133 (c!220190 lt!444983))) 0))))

(assert (=> b!1346175 (= c!220433 (< 0 (size!11243 (left!11803 (c!220190 lt!444983)))))))

(assert (= (and d!379890 res!606813) b!1346170))

(assert (= (and d!379890 c!220431) b!1346169))

(assert (= (and d!379890 (not c!220431)) b!1346175))

(assert (= (and b!1346175 c!220433) b!1346171))

(assert (= (and b!1346175 (not c!220433)) b!1346174))

(assert (= (or b!1346171 b!1346174) bm!90563))

(assert (= (and bm!90563 c!220432) b!1346172))

(assert (= (and bm!90563 (not c!220432)) b!1346173))

(declare-fun m!1505159 () Bool)

(assert (=> b!1346175 m!1505159))

(declare-fun m!1505161 () Bool)

(assert (=> b!1346175 m!1505161))

(assert (=> b!1346175 m!1505159))

(assert (=> b!1346175 m!1505161))

(declare-fun m!1505163 () Bool)

(assert (=> b!1346175 m!1505163))

(declare-fun m!1505165 () Bool)

(assert (=> b!1346175 m!1505165))

(assert (=> b!1346173 m!1505165))

(assert (=> d!379890 m!1504115))

(assert (=> d!379890 m!1504115))

(declare-fun m!1505167 () Bool)

(assert (=> d!379890 m!1505167))

(declare-fun m!1505169 () Bool)

(assert (=> b!1346169 m!1505169))

(declare-fun m!1505171 () Bool)

(assert (=> bm!90563 m!1505171))

(assert (=> b!1346170 m!1505137))

(assert (=> d!379486 d!379890))

(declare-fun d!379892 () Bool)

(declare-fun res!606818 () Bool)

(declare-fun e!862160 () Bool)

(assert (=> d!379892 (=> res!606818 e!862160)))

(assert (=> d!379892 (= res!606818 ((_ is Nil!13770) rules!2550))))

(assert (=> d!379892 (= (noDuplicateTag!879 thiss!19762 rules!2550 Nil!13774) e!862160)))

(declare-fun b!1346180 () Bool)

(declare-fun e!862161 () Bool)

(assert (=> b!1346180 (= e!862160 e!862161)))

(declare-fun res!606819 () Bool)

(assert (=> b!1346180 (=> (not res!606819) (not e!862161))))

(declare-fun contains!2532 (List!13840 String!16621) Bool)

(assert (=> b!1346180 (= res!606819 (not (contains!2532 Nil!13774 (tag!2649 (h!19171 rules!2550)))))))

(declare-fun b!1346181 () Bool)

(assert (=> b!1346181 (= e!862161 (noDuplicateTag!879 thiss!19762 (t!119741 rules!2550) (Cons!13774 (tag!2649 (h!19171 rules!2550)) Nil!13774)))))

(assert (= (and d!379892 (not res!606818)) b!1346180))

(assert (= (and b!1346180 res!606819) b!1346181))

(declare-fun m!1505173 () Bool)

(assert (=> b!1346180 m!1505173))

(declare-fun m!1505175 () Bool)

(assert (=> b!1346181 m!1505175))

(assert (=> b!1345612 d!379892))

(assert (=> d!379464 d!379518))

(declare-fun d!379894 () Bool)

(declare-fun lt!445295 () Int)

(assert (=> d!379894 (>= lt!445295 0)))

(declare-fun e!862164 () Int)

(assert (=> d!379894 (= lt!445295 e!862164)))

(declare-fun c!220436 () Bool)

(assert (=> d!379894 (= c!220436 ((_ is Nil!13769) (_2!7552 lt!445073)))))

(assert (=> d!379894 (= (size!11239 (_2!7552 lt!445073)) lt!445295)))

(declare-fun b!1346186 () Bool)

(assert (=> b!1346186 (= e!862164 0)))

(declare-fun b!1346187 () Bool)

(assert (=> b!1346187 (= e!862164 (+ 1 (size!11239 (t!119740 (_2!7552 lt!445073)))))))

(assert (= (and d!379894 c!220436) b!1346186))

(assert (= (and d!379894 (not c!220436)) b!1346187))

(declare-fun m!1505177 () Bool)

(assert (=> b!1346187 m!1505177))

(assert (=> b!1345466 d!379894))

(declare-fun d!379896 () Bool)

(declare-fun lt!445296 () Int)

(assert (=> d!379896 (>= lt!445296 0)))

(declare-fun e!862165 () Int)

(assert (=> d!379896 (= lt!445296 e!862165)))

(declare-fun c!220437 () Bool)

(assert (=> d!379896 (= c!220437 ((_ is Nil!13769) (list!5254 lt!444976)))))

(assert (=> d!379896 (= (size!11239 (list!5254 lt!444976)) lt!445296)))

(declare-fun b!1346188 () Bool)

(assert (=> b!1346188 (= e!862165 0)))

(declare-fun b!1346189 () Bool)

(assert (=> b!1346189 (= e!862165 (+ 1 (size!11239 (t!119740 (list!5254 lt!444976)))))))

(assert (= (and d!379896 c!220437) b!1346188))

(assert (= (and d!379896 (not c!220437)) b!1346189))

(declare-fun m!1505179 () Bool)

(assert (=> b!1346189 m!1505179))

(assert (=> b!1345466 d!379896))

(declare-fun d!379898 () Bool)

(declare-fun isBalanced!1317 (Conc!4536) Bool)

(assert (=> d!379898 (= (inv!18106 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34))) (isBalanced!1317 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34)))))))

(declare-fun bs!332733 () Bool)

(assert (= bs!332733 d!379898))

(declare-fun m!1505181 () Bool)

(assert (=> bs!332733 m!1505181))

(assert (=> tb!70771 d!379898))

(declare-fun d!379900 () Bool)

(assert (=> d!379900 (= (list!5254 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34))) (list!5258 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34)))))))

(declare-fun bs!332734 () Bool)

(assert (= bs!332734 d!379900))

(declare-fun m!1505183 () Bool)

(assert (=> bs!332734 m!1505183))

(assert (=> b!1345664 d!379900))

(declare-fun d!379902 () Bool)

(assert (=> d!379902 true))

(declare-fun lambda!56777 () Int)

(declare-fun order!8273 () Int)

(declare-fun order!8271 () Int)

(declare-fun dynLambda!6115 (Int Int) Int)

(declare-fun dynLambda!6116 (Int Int) Int)

(assert (=> d!379902 (< (dynLambda!6115 order!8271 (toChars!3489 (transformation!2387 (rule!4132 t2!34)))) (dynLambda!6116 order!8273 lambda!56777))))

(assert (=> d!379902 true))

(declare-fun order!8275 () Int)

(declare-fun dynLambda!6117 (Int Int) Int)

(assert (=> d!379902 (< (dynLambda!6117 order!8275 (toValue!3630 (transformation!2387 (rule!4132 t2!34)))) (dynLambda!6116 order!8273 lambda!56777))))

(declare-fun Forall!527 (Int) Bool)

(assert (=> d!379902 (= (semiInverseModEq!910 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (toValue!3630 (transformation!2387 (rule!4132 t2!34)))) (Forall!527 lambda!56777))))

(declare-fun bs!332735 () Bool)

(assert (= bs!332735 d!379902))

(declare-fun m!1505185 () Bool)

(assert (=> bs!332735 m!1505185))

(assert (=> d!379476 d!379902))

(declare-fun bs!332736 () Bool)

(declare-fun d!379904 () Bool)

(assert (= bs!332736 (and d!379904 b!1345128)))

(declare-fun lambda!56780 () Int)

(assert (=> bs!332736 (not (= lambda!56780 lambda!56701))))

(declare-fun bs!332737 () Bool)

(assert (= bs!332737 (and d!379904 d!379612)))

(assert (=> bs!332737 (not (= lambda!56780 lambda!56742))))

(declare-fun bs!332738 () Bool)

(assert (= bs!332738 (and d!379904 d!379614)))

(assert (=> bs!332738 (not (= lambda!56780 lambda!56745))))

(assert (=> d!379904 true))

(declare-fun lt!445299 () Bool)

(declare-fun rulesValidInductive!751 (LexerInterface!2082 List!13836) Bool)

(assert (=> d!379904 (= lt!445299 (rulesValidInductive!751 thiss!19762 rules!2550))))

(assert (=> d!379904 (= lt!445299 (forall!3358 rules!2550 lambda!56780))))

(assert (=> d!379904 (= (rulesValid!879 thiss!19762 rules!2550) lt!445299)))

(declare-fun bs!332739 () Bool)

(assert (= bs!332739 d!379904))

(declare-fun m!1505187 () Bool)

(assert (=> bs!332739 m!1505187))

(declare-fun m!1505189 () Bool)

(assert (=> bs!332739 m!1505189))

(assert (=> d!379598 d!379904))

(declare-fun bs!332740 () Bool)

(declare-fun d!379906 () Bool)

(assert (= bs!332740 (and d!379906 b!1345128)))

(declare-fun lambda!56781 () Int)

(assert (=> bs!332740 (not (= lambda!56781 lambda!56701))))

(declare-fun bs!332741 () Bool)

(assert (= bs!332741 (and d!379906 d!379612)))

(assert (=> bs!332741 (= (= lambda!56745 lambda!56701) (= lambda!56781 lambda!56742))))

(declare-fun bs!332742 () Bool)

(assert (= bs!332742 (and d!379906 d!379614)))

(assert (=> bs!332742 (not (= lambda!56781 lambda!56745))))

(declare-fun bs!332743 () Bool)

(assert (= bs!332743 (and d!379906 d!379904)))

(assert (=> bs!332743 (not (= lambda!56781 lambda!56780))))

(assert (=> d!379906 true))

(assert (=> d!379906 (< (dynLambda!6109 order!8259 lambda!56745) (dynLambda!6109 order!8259 lambda!56781))))

(assert (=> d!379906 (= (exists!432 rules!2550 lambda!56745) (not (forall!3358 rules!2550 lambda!56781)))))

(declare-fun bs!332744 () Bool)

(assert (= bs!332744 d!379906))

(declare-fun m!1505191 () Bool)

(assert (=> bs!332744 m!1505191))

(assert (=> d!379614 d!379906))

(declare-fun bs!332745 () Bool)

(declare-fun d!379908 () Bool)

(assert (= bs!332745 (and d!379908 d!379614)))

(declare-fun lambda!56784 () Int)

(assert (=> bs!332745 (= lambda!56784 lambda!56745)))

(declare-fun bs!332746 () Bool)

(assert (= bs!332746 (and d!379908 d!379612)))

(assert (=> bs!332746 (not (= lambda!56784 lambda!56742))))

(declare-fun bs!332747 () Bool)

(assert (= bs!332747 (and d!379908 d!379906)))

(assert (=> bs!332747 (not (= lambda!56784 lambda!56781))))

(declare-fun bs!332748 () Bool)

(assert (= bs!332748 (and d!379908 d!379904)))

(assert (=> bs!332748 (not (= lambda!56784 lambda!56780))))

(declare-fun bs!332749 () Bool)

(assert (= bs!332749 (and d!379908 b!1345128)))

(assert (=> bs!332749 (not (= lambda!56784 lambda!56701))))

(assert (=> d!379908 true))

(assert (=> d!379908 true))

(assert (=> d!379908 (< (dynLambda!6110 order!8261 lambda!56699) (dynLambda!6109 order!8259 lambda!56784))))

(assert (=> d!379908 (exists!432 rules!2550 lambda!56784)))

(assert (=> d!379908 true))

(declare-fun _$24!76 () Unit!19871)

(assert (=> d!379908 (= (choose!8273 rules!2550 lambda!56699 lt!444982) _$24!76)))

(declare-fun bs!332750 () Bool)

(assert (= bs!332750 d!379908))

(declare-fun m!1505193 () Bool)

(assert (=> bs!332750 m!1505193))

(assert (=> d!379614 d!379908))

(assert (=> d!379614 d!379460))

(assert (=> d!379614 d!379462))

(declare-fun d!379910 () Bool)

(declare-fun lt!445300 () C!7692)

(assert (=> d!379910 (contains!2529 (list!5254 lt!444979) lt!445300)))

(declare-fun e!862166 () C!7692)

(assert (=> d!379910 (= lt!445300 e!862166)))

(declare-fun c!220438 () Bool)

(assert (=> d!379910 (= c!220438 (= 0 0))))

(declare-fun e!862167 () Bool)

(assert (=> d!379910 e!862167))

(declare-fun res!606820 () Bool)

(assert (=> d!379910 (=> (not res!606820) (not e!862167))))

(assert (=> d!379910 (= res!606820 (<= 0 0))))

(assert (=> d!379910 (= (apply!3281 (list!5254 lt!444979) 0) lt!445300)))

(declare-fun b!1346198 () Bool)

(assert (=> b!1346198 (= e!862167 (< 0 (size!11239 (list!5254 lt!444979))))))

(declare-fun b!1346199 () Bool)

(assert (=> b!1346199 (= e!862166 (head!2403 (list!5254 lt!444979)))))

(declare-fun b!1346200 () Bool)

(assert (=> b!1346200 (= e!862166 (apply!3281 (tail!1940 (list!5254 lt!444979)) (- 0 1)))))

(assert (= (and d!379910 res!606820) b!1346198))

(assert (= (and d!379910 c!220438) b!1346199))

(assert (= (and d!379910 (not c!220438)) b!1346200))

(assert (=> d!379910 m!1504021))

(declare-fun m!1505195 () Bool)

(assert (=> d!379910 m!1505195))

(assert (=> b!1346198 m!1504021))

(assert (=> b!1346198 m!1504291))

(assert (=> b!1346199 m!1504021))

(declare-fun m!1505197 () Bool)

(assert (=> b!1346199 m!1505197))

(assert (=> b!1346200 m!1504021))

(declare-fun m!1505199 () Bool)

(assert (=> b!1346200 m!1505199))

(assert (=> b!1346200 m!1505199))

(declare-fun m!1505201 () Bool)

(assert (=> b!1346200 m!1505201))

(assert (=> d!379428 d!379910))

(declare-fun d!379912 () Bool)

(assert (=> d!379912 (= (list!5254 lt!444979) (list!5258 (c!220190 lt!444979)))))

(declare-fun bs!332751 () Bool)

(assert (= bs!332751 d!379912))

(declare-fun m!1505203 () Bool)

(assert (=> bs!332751 m!1505203))

(assert (=> d!379428 d!379912))

(declare-fun b!1346201 () Bool)

(declare-fun e!862168 () C!7692)

(assert (=> b!1346201 (= e!862168 (apply!3287 (xs!7255 (c!220190 lt!444979)) 0))))

(declare-fun d!379914 () Bool)

(declare-fun lt!445302 () C!7692)

(assert (=> d!379914 (= lt!445302 (apply!3281 (list!5258 (c!220190 lt!444979)) 0))))

(assert (=> d!379914 (= lt!445302 e!862168)))

(declare-fun c!220439 () Bool)

(assert (=> d!379914 (= c!220439 ((_ is Leaf!6926) (c!220190 lt!444979)))))

(declare-fun e!862171 () Bool)

(assert (=> d!379914 e!862171))

(declare-fun res!606821 () Bool)

(assert (=> d!379914 (=> (not res!606821) (not e!862171))))

(assert (=> d!379914 (= res!606821 (<= 0 0))))

(assert (=> d!379914 (= (apply!3282 (c!220190 lt!444979) 0) lt!445302)))

(declare-fun b!1346202 () Bool)

(assert (=> b!1346202 (= e!862171 (< 0 (size!11243 (c!220190 lt!444979))))))

(declare-fun b!1346203 () Bool)

(declare-fun e!862169 () C!7692)

(declare-fun call!90569 () C!7692)

(assert (=> b!1346203 (= e!862169 call!90569)))

(declare-fun bm!90564 () Bool)

(declare-fun c!220440 () Bool)

(declare-fun c!220441 () Bool)

(assert (=> bm!90564 (= c!220440 c!220441)))

(declare-fun e!862170 () Int)

(assert (=> bm!90564 (= call!90569 (apply!3282 (ite c!220441 (left!11803 (c!220190 lt!444979)) (right!12133 (c!220190 lt!444979))) e!862170))))

(declare-fun b!1346204 () Bool)

(assert (=> b!1346204 (= e!862170 0)))

(declare-fun b!1346205 () Bool)

(assert (=> b!1346205 (= e!862170 (- 0 (size!11243 (left!11803 (c!220190 lt!444979)))))))

(declare-fun b!1346206 () Bool)

(assert (=> b!1346206 (= e!862169 call!90569)))

(declare-fun b!1346207 () Bool)

(assert (=> b!1346207 (= e!862168 e!862169)))

(declare-fun lt!445301 () Bool)

(assert (=> b!1346207 (= lt!445301 (appendIndex!153 (list!5258 (left!11803 (c!220190 lt!444979))) (list!5258 (right!12133 (c!220190 lt!444979))) 0))))

(assert (=> b!1346207 (= c!220441 (< 0 (size!11243 (left!11803 (c!220190 lt!444979)))))))

(assert (= (and d!379914 res!606821) b!1346202))

(assert (= (and d!379914 c!220439) b!1346201))

(assert (= (and d!379914 (not c!220439)) b!1346207))

(assert (= (and b!1346207 c!220441) b!1346203))

(assert (= (and b!1346207 (not c!220441)) b!1346206))

(assert (= (or b!1346203 b!1346206) bm!90564))

(assert (= (and bm!90564 c!220440) b!1346204))

(assert (= (and bm!90564 (not c!220440)) b!1346205))

(declare-fun m!1505205 () Bool)

(assert (=> b!1346207 m!1505205))

(declare-fun m!1505207 () Bool)

(assert (=> b!1346207 m!1505207))

(assert (=> b!1346207 m!1505205))

(assert (=> b!1346207 m!1505207))

(declare-fun m!1505209 () Bool)

(assert (=> b!1346207 m!1505209))

(declare-fun m!1505211 () Bool)

(assert (=> b!1346207 m!1505211))

(assert (=> b!1346205 m!1505211))

(assert (=> d!379914 m!1505203))

(assert (=> d!379914 m!1505203))

(declare-fun m!1505213 () Bool)

(assert (=> d!379914 m!1505213))

(declare-fun m!1505215 () Bool)

(assert (=> b!1346201 m!1505215))

(declare-fun m!1505217 () Bool)

(assert (=> bm!90564 m!1505217))

(assert (=> b!1346202 m!1504293))

(assert (=> d!379428 d!379914))

(declare-fun d!379916 () Bool)

(declare-fun lt!445303 () List!13835)

(assert (=> d!379916 (= (++!3530 (t!119740 lt!444988) lt!445303) (tail!1940 lt!444989))))

(declare-fun e!862172 () List!13835)

(assert (=> d!379916 (= lt!445303 e!862172)))

(declare-fun c!220442 () Bool)

(assert (=> d!379916 (= c!220442 ((_ is Cons!13769) (t!119740 lt!444988)))))

(assert (=> d!379916 (>= (size!11239 (tail!1940 lt!444989)) (size!11239 (t!119740 lt!444988)))))

(assert (=> d!379916 (= (getSuffix!549 (tail!1940 lt!444989) (t!119740 lt!444988)) lt!445303)))

(declare-fun b!1346208 () Bool)

(assert (=> b!1346208 (= e!862172 (getSuffix!549 (tail!1940 (tail!1940 lt!444989)) (t!119740 (t!119740 lt!444988))))))

(declare-fun b!1346209 () Bool)

(assert (=> b!1346209 (= e!862172 (tail!1940 lt!444989))))

(assert (= (and d!379916 c!220442) b!1346208))

(assert (= (and d!379916 (not c!220442)) b!1346209))

(declare-fun m!1505219 () Bool)

(assert (=> d!379916 m!1505219))

(assert (=> d!379916 m!1504185))

(declare-fun m!1505221 () Bool)

(assert (=> d!379916 m!1505221))

(declare-fun m!1505223 () Bool)

(assert (=> d!379916 m!1505223))

(assert (=> b!1346208 m!1504185))

(declare-fun m!1505225 () Bool)

(assert (=> b!1346208 m!1505225))

(assert (=> b!1346208 m!1505225))

(declare-fun m!1505227 () Bool)

(assert (=> b!1346208 m!1505227))

(assert (=> b!1345608 d!379916))

(declare-fun d!379918 () Bool)

(assert (=> d!379918 (= (tail!1940 lt!444989) (t!119740 lt!444989))))

(assert (=> b!1345608 d!379918))

(declare-fun d!379920 () Bool)

(declare-fun lostCauseFct!122 (Regex!3701) Bool)

(assert (=> d!379920 (= (lostCause!315 lt!444985) (lostCauseFct!122 lt!444985))))

(declare-fun bs!332752 () Bool)

(assert (= bs!332752 d!379920))

(declare-fun m!1505229 () Bool)

(assert (=> bs!332752 m!1505229))

(assert (=> b!1345282 d!379920))

(declare-fun b!1346211 () Bool)

(declare-fun e!862173 () List!13835)

(assert (=> b!1346211 (= e!862173 (Cons!13769 (h!19170 (t!119740 lt!444984)) (++!3530 (t!119740 (t!119740 lt!444984)) (Cons!13769 lt!444978 Nil!13769))))))

(declare-fun b!1346210 () Bool)

(assert (=> b!1346210 (= e!862173 (Cons!13769 lt!444978 Nil!13769))))

(declare-fun d!379922 () Bool)

(declare-fun e!862174 () Bool)

(assert (=> d!379922 e!862174))

(declare-fun res!606822 () Bool)

(assert (=> d!379922 (=> (not res!606822) (not e!862174))))

(declare-fun lt!445304 () List!13835)

(assert (=> d!379922 (= res!606822 (= (content!1964 lt!445304) ((_ map or) (content!1964 (t!119740 lt!444984)) (content!1964 (Cons!13769 lt!444978 Nil!13769)))))))

(assert (=> d!379922 (= lt!445304 e!862173)))

(declare-fun c!220443 () Bool)

(assert (=> d!379922 (= c!220443 ((_ is Nil!13769) (t!119740 lt!444984)))))

(assert (=> d!379922 (= (++!3530 (t!119740 lt!444984) (Cons!13769 lt!444978 Nil!13769)) lt!445304)))

(declare-fun b!1346212 () Bool)

(declare-fun res!606823 () Bool)

(assert (=> b!1346212 (=> (not res!606823) (not e!862174))))

(assert (=> b!1346212 (= res!606823 (= (size!11239 lt!445304) (+ (size!11239 (t!119740 lt!444984)) (size!11239 (Cons!13769 lt!444978 Nil!13769)))))))

(declare-fun b!1346213 () Bool)

(assert (=> b!1346213 (= e!862174 (or (not (= (Cons!13769 lt!444978 Nil!13769) Nil!13769)) (= lt!445304 (t!119740 lt!444984))))))

(assert (= (and d!379922 c!220443) b!1346210))

(assert (= (and d!379922 (not c!220443)) b!1346211))

(assert (= (and d!379922 res!606822) b!1346212))

(assert (= (and b!1346212 res!606823) b!1346213))

(declare-fun m!1505231 () Bool)

(assert (=> b!1346211 m!1505231))

(declare-fun m!1505233 () Bool)

(assert (=> d!379922 m!1505233))

(declare-fun m!1505235 () Bool)

(assert (=> d!379922 m!1505235))

(assert (=> d!379922 m!1504131))

(declare-fun m!1505237 () Bool)

(assert (=> b!1346212 m!1505237))

(declare-fun m!1505239 () Bool)

(assert (=> b!1346212 m!1505239))

(assert (=> b!1346212 m!1504137))

(assert (=> b!1345343 d!379922))

(declare-fun d!379924 () Bool)

(declare-fun lt!445305 () Bool)

(assert (=> d!379924 (= lt!445305 (select (content!1964 (t!119740 lt!444988)) lt!444975))))

(declare-fun e!862175 () Bool)

(assert (=> d!379924 (= lt!445305 e!862175)))

(declare-fun res!606824 () Bool)

(assert (=> d!379924 (=> (not res!606824) (not e!862175))))

(assert (=> d!379924 (= res!606824 ((_ is Cons!13769) (t!119740 lt!444988)))))

(assert (=> d!379924 (= (contains!2529 (t!119740 lt!444988) lt!444975) lt!445305)))

(declare-fun b!1346214 () Bool)

(declare-fun e!862176 () Bool)

(assert (=> b!1346214 (= e!862175 e!862176)))

(declare-fun res!606825 () Bool)

(assert (=> b!1346214 (=> res!606825 e!862176)))

(assert (=> b!1346214 (= res!606825 (= (h!19170 (t!119740 lt!444988)) lt!444975))))

(declare-fun b!1346215 () Bool)

(assert (=> b!1346215 (= e!862176 (contains!2529 (t!119740 (t!119740 lt!444988)) lt!444975))))

(assert (= (and d!379924 res!606824) b!1346214))

(assert (= (and b!1346214 (not res!606825)) b!1346215))

(assert (=> d!379924 m!1505129))

(declare-fun m!1505241 () Bool)

(assert (=> d!379924 m!1505241))

(declare-fun m!1505243 () Bool)

(assert (=> b!1346215 m!1505243))

(assert (=> b!1345468 d!379924))

(declare-fun d!379926 () Bool)

(declare-fun charsToBigInt!1 (List!13834) Int)

(assert (=> d!379926 (= (inv!17 (value!77662 t1!34)) (= (charsToBigInt!1 (text!17787 (value!77662 t1!34))) (value!77654 (value!77662 t1!34))))))

(declare-fun bs!332753 () Bool)

(assert (= bs!332753 d!379926))

(declare-fun m!1505245 () Bool)

(assert (=> bs!332753 m!1505245))

(assert (=> b!1345198 d!379926))

(declare-fun d!379928 () Bool)

(declare-fun res!606828 () List!13835)

(assert (=> d!379928 (dynLambda!6107 lambda!56698 res!606828)))

(declare-fun e!862179 () Bool)

(assert (=> d!379928 e!862179))

(assert (=> d!379928 (= (choose!8272 lambda!56698) res!606828)))

(declare-fun b!1346218 () Bool)

(declare-fun tp!389462 () Bool)

(assert (=> b!1346218 (= e!862179 (and tp_is_empty!6711 tp!389462))))

(assert (= (and d!379928 ((_ is Cons!13769) res!606828)) b!1346218))

(declare-fun b_lambda!40043 () Bool)

(assert (=> (not b_lambda!40043) (not d!379928)))

(declare-fun m!1505247 () Bool)

(assert (=> d!379928 m!1505247))

(assert (=> d!379596 d!379928))

(assert (=> d!379596 d!379488))

(declare-fun bs!332754 () Bool)

(declare-fun d!379930 () Bool)

(assert (= bs!332754 (and d!379930 b!1345137)))

(declare-fun lambda!56789 () Int)

(assert (=> bs!332754 (= lambda!56789 lambda!56699)))

(declare-fun bs!332755 () Bool)

(assert (= bs!332755 (and d!379930 d!379450)))

(assert (=> bs!332755 (= lambda!56789 lambda!56704)))

(declare-fun bs!332756 () Bool)

(assert (= bs!332756 (and d!379930 d!379522)))

(declare-fun lambda!56790 () Int)

(assert (=> bs!332756 (not (= lambda!56790 lambda!56711))))

(declare-fun bs!332757 () Bool)

(assert (= bs!332757 (and d!379930 d!379524)))

(assert (=> bs!332757 (= lambda!56790 lambda!56716)))

(declare-fun bs!332758 () Bool)

(assert (= bs!332758 (and d!379930 d!379518)))

(assert (=> bs!332758 (not (= lambda!56790 lambda!56710))))

(assert (=> bs!332757 (not (= lambda!56790 lambda!56717))))

(assert (=> bs!332754 (not (= lambda!56790 lambda!56700))))

(assert (=> d!379930 (forall!3357 (map!3041 rules!2550 lambda!56789) lambda!56790)))

(declare-fun lt!445310 () Unit!19871)

(declare-fun e!862182 () Unit!19871)

(assert (=> d!379930 (= lt!445310 e!862182)))

(declare-fun c!220446 () Bool)

(assert (=> d!379930 (= c!220446 ((_ is Nil!13770) rules!2550))))

(assert (=> d!379930 (rulesValidInductive!751 thiss!19762 rules!2550)))

(assert (=> d!379930 (= (lemma!109 rules!2550 thiss!19762 rules!2550) lt!445310)))

(declare-fun b!1346223 () Bool)

(declare-fun Unit!19879 () Unit!19871)

(assert (=> b!1346223 (= e!862182 Unit!19879)))

(declare-fun b!1346224 () Bool)

(declare-fun Unit!19880 () Unit!19871)

(assert (=> b!1346224 (= e!862182 Unit!19880)))

(declare-fun lt!445311 () Unit!19871)

(assert (=> b!1346224 (= lt!445311 (lemma!109 rules!2550 thiss!19762 (t!119741 rules!2550)))))

(assert (= (and d!379930 c!220446) b!1346223))

(assert (= (and d!379930 (not c!220446)) b!1346224))

(declare-fun m!1505249 () Bool)

(assert (=> d!379930 m!1505249))

(assert (=> d!379930 m!1505249))

(declare-fun m!1505251 () Bool)

(assert (=> d!379930 m!1505251))

(assert (=> d!379930 m!1505187))

(declare-fun m!1505253 () Bool)

(assert (=> b!1346224 m!1505253))

(assert (=> d!379450 d!379930))

(declare-fun bs!332759 () Bool)

(declare-fun d!379932 () Bool)

(assert (= bs!332759 (and d!379932 d!379930)))

(declare-fun lambda!56793 () Int)

(assert (=> bs!332759 (= lambda!56793 lambda!56790)))

(declare-fun bs!332760 () Bool)

(assert (= bs!332760 (and d!379932 d!379522)))

(assert (=> bs!332760 (not (= lambda!56793 lambda!56711))))

(declare-fun bs!332761 () Bool)

(assert (= bs!332761 (and d!379932 d!379524)))

(assert (=> bs!332761 (= lambda!56793 lambda!56716)))

(declare-fun bs!332762 () Bool)

(assert (= bs!332762 (and d!379932 d!379518)))

(assert (=> bs!332762 (not (= lambda!56793 lambda!56710))))

(assert (=> bs!332761 (not (= lambda!56793 lambda!56717))))

(declare-fun bs!332763 () Bool)

(assert (= bs!332763 (and d!379932 b!1345137)))

(assert (=> bs!332763 (not (= lambda!56793 lambda!56700))))

(declare-fun e!862200 () Bool)

(assert (=> d!379932 e!862200))

(declare-fun res!606833 () Bool)

(assert (=> d!379932 (=> (not res!606833) (not e!862200))))

(declare-fun lt!445314 () Regex!3701)

(assert (=> d!379932 (= res!606833 (validRegex!1601 lt!445314))))

(declare-fun e!862198 () Regex!3701)

(assert (=> d!379932 (= lt!445314 e!862198)))

(declare-fun c!220455 () Bool)

(declare-fun e!862195 () Bool)

(assert (=> d!379932 (= c!220455 e!862195)))

(declare-fun res!606834 () Bool)

(assert (=> d!379932 (=> (not res!606834) (not e!862195))))

(assert (=> d!379932 (= res!606834 ((_ is Cons!13772) (map!3041 rules!2550 lambda!56704)))))

(assert (=> d!379932 (forall!3357 (map!3041 rules!2550 lambda!56704) lambda!56793)))

(assert (=> d!379932 (= (generalisedUnion!117 (map!3041 rules!2550 lambda!56704)) lt!445314)))

(declare-fun b!1346245 () Bool)

(declare-fun e!862197 () Regex!3701)

(assert (=> b!1346245 (= e!862198 e!862197)))

(declare-fun c!220457 () Bool)

(assert (=> b!1346245 (= c!220457 ((_ is Cons!13772) (map!3041 rules!2550 lambda!56704)))))

(declare-fun b!1346246 () Bool)

(declare-fun e!862199 () Bool)

(declare-fun isEmptyLang!32 (Regex!3701) Bool)

(assert (=> b!1346246 (= e!862199 (isEmptyLang!32 lt!445314))))

(declare-fun b!1346247 () Bool)

(declare-fun isEmpty!8227 (List!13838) Bool)

(assert (=> b!1346247 (= e!862195 (isEmpty!8227 (t!119743 (map!3041 rules!2550 lambda!56704))))))

(declare-fun b!1346248 () Bool)

(assert (=> b!1346248 (= e!862198 (h!19173 (map!3041 rules!2550 lambda!56704)))))

(declare-fun b!1346249 () Bool)

(assert (=> b!1346249 (= e!862200 e!862199)))

(declare-fun c!220458 () Bool)

(assert (=> b!1346249 (= c!220458 (isEmpty!8227 (map!3041 rules!2550 lambda!56704)))))

(declare-fun b!1346250 () Bool)

(assert (=> b!1346250 (= e!862197 (Union!3701 (h!19173 (map!3041 rules!2550 lambda!56704)) (generalisedUnion!117 (t!119743 (map!3041 rules!2550 lambda!56704)))))))

(declare-fun b!1346251 () Bool)

(assert (=> b!1346251 (= e!862197 EmptyLang!3701)))

(declare-fun b!1346252 () Bool)

(declare-fun e!862196 () Bool)

(declare-fun isUnion!32 (Regex!3701) Bool)

(assert (=> b!1346252 (= e!862196 (isUnion!32 lt!445314))))

(declare-fun b!1346253 () Bool)

(assert (=> b!1346253 (= e!862199 e!862196)))

(declare-fun c!220456 () Bool)

(declare-fun tail!1942 (List!13838) List!13838)

(assert (=> b!1346253 (= c!220456 (isEmpty!8227 (tail!1942 (map!3041 rules!2550 lambda!56704))))))

(declare-fun b!1346254 () Bool)

(assert (=> b!1346254 (= e!862196 (= lt!445314 (head!2404 (map!3041 rules!2550 lambda!56704))))))

(assert (= (and d!379932 res!606834) b!1346247))

(assert (= (and d!379932 c!220455) b!1346248))

(assert (= (and d!379932 (not c!220455)) b!1346245))

(assert (= (and b!1346245 c!220457) b!1346250))

(assert (= (and b!1346245 (not c!220457)) b!1346251))

(assert (= (and d!379932 res!606833) b!1346249))

(assert (= (and b!1346249 c!220458) b!1346246))

(assert (= (and b!1346249 (not c!220458)) b!1346253))

(assert (= (and b!1346253 c!220456) b!1346254))

(assert (= (and b!1346253 (not c!220456)) b!1346252))

(assert (=> b!1346253 m!1504111))

(declare-fun m!1505255 () Bool)

(assert (=> b!1346253 m!1505255))

(assert (=> b!1346253 m!1505255))

(declare-fun m!1505257 () Bool)

(assert (=> b!1346253 m!1505257))

(declare-fun m!1505259 () Bool)

(assert (=> b!1346252 m!1505259))

(assert (=> b!1346254 m!1504111))

(declare-fun m!1505261 () Bool)

(assert (=> b!1346254 m!1505261))

(declare-fun m!1505263 () Bool)

(assert (=> b!1346247 m!1505263))

(declare-fun m!1505265 () Bool)

(assert (=> d!379932 m!1505265))

(assert (=> d!379932 m!1504111))

(declare-fun m!1505267 () Bool)

(assert (=> d!379932 m!1505267))

(declare-fun m!1505269 () Bool)

(assert (=> b!1346246 m!1505269))

(declare-fun m!1505271 () Bool)

(assert (=> b!1346250 m!1505271))

(assert (=> b!1346249 m!1504111))

(declare-fun m!1505273 () Bool)

(assert (=> b!1346249 m!1505273))

(assert (=> d!379450 d!379932))

(declare-fun d!379934 () Bool)

(declare-fun lt!445315 () List!13838)

(assert (=> d!379934 (= (size!11240 lt!445315) (size!11241 rules!2550))))

(declare-fun e!862201 () List!13838)

(assert (=> d!379934 (= lt!445315 e!862201)))

(declare-fun c!220459 () Bool)

(assert (=> d!379934 (= c!220459 ((_ is Nil!13770) rules!2550))))

(assert (=> d!379934 (= (map!3041 rules!2550 lambda!56704) lt!445315)))

(declare-fun b!1346255 () Bool)

(assert (=> b!1346255 (= e!862201 Nil!13772)))

(declare-fun b!1346256 () Bool)

(assert (=> b!1346256 (= e!862201 ($colon$colon!183 (map!3041 (t!119741 rules!2550) lambda!56704) (dynLambda!6104 lambda!56704 (h!19171 rules!2550))))))

(assert (= (and d!379934 c!220459) b!1346255))

(assert (= (and d!379934 (not c!220459)) b!1346256))

(declare-fun b_lambda!40045 () Bool)

(assert (=> (not b_lambda!40045) (not b!1346256)))

(declare-fun m!1505275 () Bool)

(assert (=> d!379934 m!1505275))

(assert (=> d!379934 m!1504147))

(declare-fun m!1505277 () Bool)

(assert (=> b!1346256 m!1505277))

(declare-fun m!1505279 () Bool)

(assert (=> b!1346256 m!1505279))

(assert (=> b!1346256 m!1505277))

(assert (=> b!1346256 m!1505279))

(declare-fun m!1505281 () Bool)

(assert (=> b!1346256 m!1505281))

(assert (=> d!379450 d!379934))

(declare-fun b!1346268 () Bool)

(declare-fun e!862207 () List!13837)

(declare-fun ++!3533 (List!13837 List!13837) List!13837)

(assert (=> b!1346268 (= e!862207 (++!3533 (list!5259 (left!11804 (c!220192 (_1!7553 lt!444980)))) (list!5259 (right!12134 (c!220192 (_1!7553 lt!444980))))))))

(declare-fun b!1346266 () Bool)

(declare-fun e!862206 () List!13837)

(assert (=> b!1346266 (= e!862206 e!862207)))

(declare-fun c!220465 () Bool)

(assert (=> b!1346266 (= c!220465 ((_ is Leaf!6927) (c!220192 (_1!7553 lt!444980))))))

(declare-fun d!379936 () Bool)

(declare-fun c!220464 () Bool)

(assert (=> d!379936 (= c!220464 ((_ is Empty!4537) (c!220192 (_1!7553 lt!444980))))))

(assert (=> d!379936 (= (list!5259 (c!220192 (_1!7553 lt!444980))) e!862206)))

(declare-fun b!1346267 () Bool)

(declare-fun list!5261 (IArray!9079) List!13837)

(assert (=> b!1346267 (= e!862207 (list!5261 (xs!7256 (c!220192 (_1!7553 lt!444980)))))))

(declare-fun b!1346265 () Bool)

(assert (=> b!1346265 (= e!862206 Nil!13771)))

(assert (= (and d!379936 c!220464) b!1346265))

(assert (= (and d!379936 (not c!220464)) b!1346266))

(assert (= (and b!1346266 c!220465) b!1346267))

(assert (= (and b!1346266 (not c!220465)) b!1346268))

(declare-fun m!1505283 () Bool)

(assert (=> b!1346268 m!1505283))

(declare-fun m!1505285 () Bool)

(assert (=> b!1346268 m!1505285))

(assert (=> b!1346268 m!1505283))

(assert (=> b!1346268 m!1505285))

(declare-fun m!1505287 () Bool)

(assert (=> b!1346268 m!1505287))

(declare-fun m!1505289 () Bool)

(assert (=> b!1346267 m!1505289))

(assert (=> d!379610 d!379936))

(declare-fun d!379938 () Bool)

(assert (=> d!379938 (= (head!2405 rules!2550) (h!19171 rules!2550))))

(assert (=> b!1345647 d!379938))

(declare-fun d!379940 () Bool)

(declare-fun c!220474 () Bool)

(assert (=> d!379940 (= c!220474 ((_ is Node!4536) (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34)))))))

(declare-fun e!862218 () Bool)

(assert (=> d!379940 (= (inv!18105 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34)))) e!862218)))

(declare-fun b!1346287 () Bool)

(declare-fun inv!18109 (Conc!4536) Bool)

(assert (=> b!1346287 (= e!862218 (inv!18109 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34)))))))

(declare-fun b!1346288 () Bool)

(declare-fun e!862219 () Bool)

(assert (=> b!1346288 (= e!862218 e!862219)))

(declare-fun res!606837 () Bool)

(assert (=> b!1346288 (= res!606837 (not ((_ is Leaf!6926) (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34))))))))

(assert (=> b!1346288 (=> res!606837 e!862219)))

(declare-fun b!1346289 () Bool)

(declare-fun inv!18110 (Conc!4536) Bool)

(assert (=> b!1346289 (= e!862219 (inv!18110 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34)))))))

(assert (= (and d!379940 c!220474) b!1346287))

(assert (= (and d!379940 (not c!220474)) b!1346288))

(assert (= (and b!1346288 (not res!606837)) b!1346289))

(declare-fun m!1505291 () Bool)

(assert (=> b!1346287 m!1505291))

(declare-fun m!1505293 () Bool)

(assert (=> b!1346289 m!1505293))

(assert (=> b!1345500 d!379940))

(declare-fun b!1346300 () Bool)

(declare-fun e!862230 () Bool)

(declare-fun e!862229 () Bool)

(assert (=> b!1346300 (= e!862230 e!862229)))

(declare-fun res!606845 () Bool)

(declare-fun rulesUseDisjointChars!169 (Rule!4574 Rule!4574) Bool)

(assert (=> b!1346300 (= res!606845 (rulesUseDisjointChars!169 (h!19171 rules!2550) (h!19171 rules!2550)))))

(assert (=> b!1346300 (=> (not res!606845) (not e!862229))))

(declare-fun b!1346301 () Bool)

(declare-fun e!862228 () Bool)

(assert (=> b!1346301 (= e!862230 e!862228)))

(declare-fun res!606844 () Bool)

(assert (=> b!1346301 (= res!606844 (not ((_ is Cons!13770) rules!2550)))))

(assert (=> b!1346301 (=> res!606844 e!862228)))

(declare-fun d!379942 () Bool)

(declare-fun c!220477 () Bool)

(assert (=> d!379942 (= c!220477 (and ((_ is Cons!13770) rules!2550) (not (= (isSeparator!2387 (h!19171 rules!2550)) (isSeparator!2387 (h!19171 rules!2550))))))))

(assert (=> d!379942 (= (ruleDisjointCharsFromAllFromOtherType!352 (h!19171 rules!2550) rules!2550) e!862230)))

(declare-fun b!1346302 () Bool)

(declare-fun call!90572 () Bool)

(assert (=> b!1346302 (= e!862229 call!90572)))

(declare-fun bm!90567 () Bool)

(assert (=> bm!90567 (= call!90572 (ruleDisjointCharsFromAllFromOtherType!352 (h!19171 rules!2550) (t!119741 rules!2550)))))

(declare-fun b!1346303 () Bool)

(assert (=> b!1346303 (= e!862228 call!90572)))

(assert (= (and d!379942 c!220477) b!1346300))

(assert (= (and d!379942 (not c!220477)) b!1346301))

(assert (= (and b!1346300 res!606845) b!1346302))

(assert (= (and b!1346301 (not res!606844)) b!1346303))

(assert (= (or b!1346302 b!1346303) bm!90567))

(declare-fun m!1505295 () Bool)

(assert (=> b!1346300 m!1505295))

(declare-fun m!1505297 () Bool)

(assert (=> bm!90567 m!1505297))

(assert (=> b!1345437 d!379942))

(declare-fun d!379944 () Bool)

(declare-fun res!606850 () Bool)

(declare-fun e!862235 () Bool)

(assert (=> d!379944 (=> res!606850 e!862235)))

(assert (=> d!379944 (= res!606850 ((_ is Nil!13770) rules!2550))))

(assert (=> d!379944 (= (forall!3358 rules!2550 lambda!56742) e!862235)))

(declare-fun b!1346308 () Bool)

(declare-fun e!862236 () Bool)

(assert (=> b!1346308 (= e!862235 e!862236)))

(declare-fun res!606851 () Bool)

(assert (=> b!1346308 (=> (not res!606851) (not e!862236))))

(assert (=> b!1346308 (= res!606851 (dynLambda!6108 lambda!56742 (h!19171 rules!2550)))))

(declare-fun b!1346309 () Bool)

(assert (=> b!1346309 (= e!862236 (forall!3358 (t!119741 rules!2550) lambda!56742))))

(assert (= (and d!379944 (not res!606850)) b!1346308))

(assert (= (and b!1346308 res!606851) b!1346309))

(declare-fun b_lambda!40047 () Bool)

(assert (=> (not b_lambda!40047) (not b!1346308)))

(declare-fun m!1505299 () Bool)

(assert (=> b!1346308 m!1505299))

(declare-fun m!1505301 () Bool)

(assert (=> b!1346309 m!1505301))

(assert (=> d!379612 d!379944))

(declare-fun d!379946 () Bool)

(assert (=> d!379946 true))

(declare-fun lambda!56796 () Int)

(declare-fun order!8277 () Int)

(declare-fun dynLambda!6118 (Int Int) Int)

(assert (=> d!379946 (< (dynLambda!6117 order!8275 (toValue!3630 (transformation!2387 (h!19171 rules!2550)))) (dynLambda!6118 order!8277 lambda!56796))))

(declare-fun Forall2!429 (Int) Bool)

(assert (=> d!379946 (= (equivClasses!869 (toChars!3489 (transformation!2387 (h!19171 rules!2550))) (toValue!3630 (transformation!2387 (h!19171 rules!2550)))) (Forall2!429 lambda!56796))))

(declare-fun bs!332764 () Bool)

(assert (= bs!332764 d!379946))

(declare-fun m!1505303 () Bool)

(assert (=> bs!332764 m!1505303))

(assert (=> b!1345599 d!379946))

(declare-fun bs!332765 () Bool)

(declare-fun d!379948 () Bool)

(assert (= bs!332765 (and d!379948 d!379946)))

(declare-fun lambda!56797 () Int)

(assert (=> bs!332765 (= (= (toValue!3630 (transformation!2387 (rule!4132 t1!34))) (toValue!3630 (transformation!2387 (h!19171 rules!2550)))) (= lambda!56797 lambda!56796))))

(assert (=> d!379948 true))

(assert (=> d!379948 (< (dynLambda!6117 order!8275 (toValue!3630 (transformation!2387 (rule!4132 t1!34)))) (dynLambda!6118 order!8277 lambda!56797))))

(assert (=> d!379948 (= (equivClasses!869 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (toValue!3630 (transformation!2387 (rule!4132 t1!34)))) (Forall2!429 lambda!56797))))

(declare-fun bs!332766 () Bool)

(assert (= bs!332766 d!379948))

(declare-fun m!1505305 () Bool)

(assert (=> bs!332766 m!1505305))

(assert (=> b!1345501 d!379948))

(declare-fun d!379950 () Bool)

(declare-fun lt!445420 () Int)

(assert (=> d!379950 (= lt!445420 (size!11242 (list!5255 (_1!7553 lt!445152))))))

(declare-fun size!11246 (Conc!4537) Int)

(assert (=> d!379950 (= lt!445420 (size!11246 (c!220192 (_1!7553 lt!445152))))))

(assert (=> d!379950 (= (size!11244 (_1!7553 lt!445152)) lt!445420)))

(declare-fun bs!332767 () Bool)

(assert (= bs!332767 d!379950))

(assert (=> bs!332767 m!1504511))

(assert (=> bs!332767 m!1504511))

(declare-fun m!1505389 () Bool)

(assert (=> bs!332767 m!1505389))

(declare-fun m!1505391 () Bool)

(assert (=> bs!332767 m!1505391))

(assert (=> d!379602 d!379950))

(declare-fun d!379952 () Bool)

(declare-fun e!862357 () Bool)

(assert (=> d!379952 e!862357))

(declare-fun res!606933 () Bool)

(assert (=> d!379952 (=> (not res!606933) (not e!862357))))

(declare-fun lt!445562 () tuple2!13334)

(declare-fun lexRec!268 (LexerInterface!2082 List!13836 BalanceConc!9012) tuple2!13334)

(assert (=> d!379952 (= res!606933 (= (list!5255 (_1!7553 lt!445562)) (list!5255 (_1!7553 (lexRec!268 thiss!19762 rules!2550 lt!444976)))))))

(declare-fun e!862360 () tuple2!13334)

(assert (=> d!379952 (= lt!445562 e!862360)))

(declare-fun c!220524 () Bool)

(declare-datatypes ((tuple2!13340 0))(
  ( (tuple2!13341 (_1!7556 Token!4436) (_2!7556 BalanceConc!9012)) )
))
(declare-datatypes ((Option!2635 0))(
  ( (None!2634) (Some!2634 (v!21324 tuple2!13340)) )
))
(declare-fun lt!445586 () Option!2635)

(assert (=> d!379952 (= c!220524 ((_ is Some!2634) lt!445586))))

(declare-fun maxPrefixZipperSequenceV2!213 (LexerInterface!2082 List!13836 BalanceConc!9012 BalanceConc!9012) Option!2635)

(assert (=> d!379952 (= lt!445586 (maxPrefixZipperSequenceV2!213 thiss!19762 rules!2550 lt!444976 lt!444976))))

(declare-fun lt!445574 () Unit!19871)

(declare-fun lt!445577 () Unit!19871)

(assert (=> d!379952 (= lt!445574 lt!445577)))

(declare-fun lt!445591 () List!13835)

(declare-fun lt!445585 () List!13835)

(declare-fun isSuffix!246 (List!13835 List!13835) Bool)

(assert (=> d!379952 (isSuffix!246 lt!445591 (++!3530 lt!445585 lt!445591))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!224 (List!13835 List!13835) Unit!19871)

(assert (=> d!379952 (= lt!445577 (lemmaConcatTwoListThenFSndIsSuffix!224 lt!445585 lt!445591))))

(assert (=> d!379952 (= lt!445591 (list!5254 lt!444976))))

(assert (=> d!379952 (= lt!445585 (list!5254 (BalanceConc!9013 Empty!4536)))))

(assert (=> d!379952 (= (lexTailRecV2!395 thiss!19762 rules!2550 lt!444976 (BalanceConc!9013 Empty!4536) lt!444976 (BalanceConc!9015 Empty!4537)) lt!445562)))

(declare-fun b!1346560 () Bool)

(declare-fun lt!445563 () tuple2!13334)

(declare-fun lt!445576 () Option!2635)

(assert (=> b!1346560 (= lt!445563 (lexRec!268 thiss!19762 rules!2550 (_2!7556 (v!21324 lt!445576))))))

(declare-fun e!862358 () tuple2!13334)

(declare-fun prepend!353 (BalanceConc!9014 Token!4436) BalanceConc!9014)

(assert (=> b!1346560 (= e!862358 (tuple2!13335 (prepend!353 (_1!7553 lt!445563) (_1!7556 (v!21324 lt!445576))) (_2!7553 lt!445563)))))

(declare-fun b!1346561 () Bool)

(declare-fun lt!445589 () BalanceConc!9012)

(assert (=> b!1346561 (= e!862358 (tuple2!13335 (BalanceConc!9015 Empty!4537) lt!445589))))

(declare-fun b!1346562 () Bool)

(assert (=> b!1346562 (= e!862357 (= (list!5254 (_2!7553 lt!445562)) (list!5254 (_2!7553 (lexRec!268 thiss!19762 rules!2550 lt!444976)))))))

(declare-fun b!1346563 () Bool)

(assert (=> b!1346563 (= e!862360 (tuple2!13335 (BalanceConc!9015 Empty!4537) lt!444976))))

(declare-fun lt!445588 () tuple2!13334)

(declare-fun lt!445567 () Option!2635)

(declare-fun b!1346564 () Bool)

(assert (=> b!1346564 (= lt!445588 (lexRec!268 thiss!19762 rules!2550 (_2!7556 (v!21324 lt!445567))))))

(declare-fun e!862359 () tuple2!13334)

(assert (=> b!1346564 (= e!862359 (tuple2!13335 (prepend!353 (_1!7553 lt!445588) (_1!7556 (v!21324 lt!445567))) (_2!7553 lt!445588)))))

(declare-fun b!1346565 () Bool)

(assert (=> b!1346565 (= e!862359 (tuple2!13335 (BalanceConc!9015 Empty!4537) lt!444976))))

(declare-fun b!1346566 () Bool)

(declare-fun lt!445595 () BalanceConc!9012)

(declare-fun append!389 (BalanceConc!9014 Token!4436) BalanceConc!9014)

(assert (=> b!1346566 (= e!862360 (lexTailRecV2!395 thiss!19762 rules!2550 lt!444976 lt!445595 (_2!7556 (v!21324 lt!445586)) (append!389 (BalanceConc!9015 Empty!4537) (_1!7556 (v!21324 lt!445586)))))))

(declare-fun lt!445572 () tuple2!13334)

(assert (=> b!1346566 (= lt!445572 (lexRec!268 thiss!19762 rules!2550 (_2!7556 (v!21324 lt!445586))))))

(declare-fun lt!445582 () List!13835)

(assert (=> b!1346566 (= lt!445582 (list!5254 (BalanceConc!9013 Empty!4536)))))

(declare-fun lt!445579 () List!13835)

(assert (=> b!1346566 (= lt!445579 (list!5254 (charsOf!1359 (_1!7556 (v!21324 lt!445586)))))))

(declare-fun lt!445566 () List!13835)

(assert (=> b!1346566 (= lt!445566 (list!5254 (_2!7556 (v!21324 lt!445586))))))

(declare-fun lt!445590 () Unit!19871)

(declare-fun lemmaConcatAssociativity!835 (List!13835 List!13835 List!13835) Unit!19871)

(assert (=> b!1346566 (= lt!445590 (lemmaConcatAssociativity!835 lt!445582 lt!445579 lt!445566))))

(assert (=> b!1346566 (= (++!3530 (++!3530 lt!445582 lt!445579) lt!445566) (++!3530 lt!445582 (++!3530 lt!445579 lt!445566)))))

(declare-fun lt!445568 () Unit!19871)

(assert (=> b!1346566 (= lt!445568 lt!445590)))

(declare-fun maxPrefixZipperSequence!541 (LexerInterface!2082 List!13836 BalanceConc!9012) Option!2635)

(assert (=> b!1346566 (= lt!445567 (maxPrefixZipperSequence!541 thiss!19762 rules!2550 lt!444976))))

(declare-fun c!220522 () Bool)

(assert (=> b!1346566 (= c!220522 ((_ is Some!2634) lt!445567))))

(assert (=> b!1346566 (= (lexRec!268 thiss!19762 rules!2550 lt!444976) e!862359)))

(declare-fun lt!445580 () Unit!19871)

(declare-fun Unit!19883 () Unit!19871)

(assert (=> b!1346566 (= lt!445580 Unit!19883)))

(declare-fun lt!445573 () List!13837)

(assert (=> b!1346566 (= lt!445573 (list!5255 (BalanceConc!9015 Empty!4537)))))

(declare-fun lt!445581 () List!13837)

(assert (=> b!1346566 (= lt!445581 (Cons!13771 (_1!7556 (v!21324 lt!445586)) Nil!13771))))

(declare-fun lt!445571 () List!13837)

(assert (=> b!1346566 (= lt!445571 (list!5255 (_1!7553 lt!445572)))))

(declare-fun lt!445592 () Unit!19871)

(declare-fun lemmaConcatAssociativity!836 (List!13837 List!13837 List!13837) Unit!19871)

(assert (=> b!1346566 (= lt!445592 (lemmaConcatAssociativity!836 lt!445573 lt!445581 lt!445571))))

(assert (=> b!1346566 (= (++!3533 (++!3533 lt!445573 lt!445581) lt!445571) (++!3533 lt!445573 (++!3533 lt!445581 lt!445571)))))

(declare-fun lt!445578 () Unit!19871)

(assert (=> b!1346566 (= lt!445578 lt!445592)))

(declare-fun lt!445584 () List!13835)

(assert (=> b!1346566 (= lt!445584 (++!3530 (list!5254 (BalanceConc!9013 Empty!4536)) (list!5254 (charsOf!1359 (_1!7556 (v!21324 lt!445586))))))))

(declare-fun lt!445565 () List!13835)

(assert (=> b!1346566 (= lt!445565 (list!5254 (_2!7556 (v!21324 lt!445586))))))

(declare-fun lt!445593 () List!13837)

(assert (=> b!1346566 (= lt!445593 (list!5255 (append!389 (BalanceConc!9015 Empty!4537) (_1!7556 (v!21324 lt!445586)))))))

(declare-fun lt!445570 () Unit!19871)

(declare-fun lemmaLexThenLexPrefix!183 (LexerInterface!2082 List!13836 List!13835 List!13835 List!13837 List!13837 List!13835) Unit!19871)

(assert (=> b!1346566 (= lt!445570 (lemmaLexThenLexPrefix!183 thiss!19762 rules!2550 lt!445584 lt!445565 lt!445593 (list!5255 (_1!7553 lt!445572)) (list!5254 (_2!7553 lt!445572))))))

(assert (=> b!1346566 (= (lexList!600 thiss!19762 rules!2550 lt!445584) (tuple2!13333 lt!445593 Nil!13769))))

(declare-fun lt!445569 () Unit!19871)

(assert (=> b!1346566 (= lt!445569 lt!445570)))

(assert (=> b!1346566 (= lt!445589 (++!3532 (BalanceConc!9013 Empty!4536) (charsOf!1359 (_1!7556 (v!21324 lt!445586)))))))

(assert (=> b!1346566 (= lt!445576 (maxPrefixZipperSequence!541 thiss!19762 rules!2550 lt!445589))))

(declare-fun c!220523 () Bool)

(assert (=> b!1346566 (= c!220523 ((_ is Some!2634) lt!445576))))

(assert (=> b!1346566 (= (lexRec!268 thiss!19762 rules!2550 (++!3532 (BalanceConc!9013 Empty!4536) (charsOf!1359 (_1!7556 (v!21324 lt!445586))))) e!862358)))

(declare-fun lt!445575 () Unit!19871)

(declare-fun Unit!19884 () Unit!19871)

(assert (=> b!1346566 (= lt!445575 Unit!19884)))

(assert (=> b!1346566 (= lt!445595 (++!3532 (BalanceConc!9013 Empty!4536) (charsOf!1359 (_1!7556 (v!21324 lt!445586)))))))

(declare-fun lt!445587 () List!13835)

(assert (=> b!1346566 (= lt!445587 (list!5254 lt!445595))))

(declare-fun lt!445564 () List!13835)

(assert (=> b!1346566 (= lt!445564 (list!5254 (_2!7556 (v!21324 lt!445586))))))

(declare-fun lt!445583 () Unit!19871)

(assert (=> b!1346566 (= lt!445583 (lemmaConcatTwoListThenFSndIsSuffix!224 lt!445587 lt!445564))))

(assert (=> b!1346566 (isSuffix!246 lt!445564 (++!3530 lt!445587 lt!445564))))

(declare-fun lt!445594 () Unit!19871)

(assert (=> b!1346566 (= lt!445594 lt!445583)))

(assert (= (and d!379952 c!220524) b!1346566))

(assert (= (and d!379952 (not c!220524)) b!1346563))

(assert (= (and b!1346566 c!220522) b!1346564))

(assert (= (and b!1346566 (not c!220522)) b!1346565))

(assert (= (and b!1346566 c!220523) b!1346560))

(assert (= (and b!1346566 (not c!220523)) b!1346561))

(assert (= (and d!379952 res!606933) b!1346562))

(declare-fun m!1505619 () Bool)

(assert (=> b!1346562 m!1505619))

(declare-fun m!1505621 () Bool)

(assert (=> b!1346562 m!1505621))

(declare-fun m!1505623 () Bool)

(assert (=> b!1346562 m!1505623))

(declare-fun m!1505625 () Bool)

(assert (=> b!1346566 m!1505625))

(declare-fun m!1505627 () Bool)

(assert (=> b!1346566 m!1505627))

(assert (=> b!1346566 m!1505625))

(declare-fun m!1505629 () Bool)

(assert (=> b!1346566 m!1505629))

(declare-fun m!1505631 () Bool)

(assert (=> b!1346566 m!1505631))

(declare-fun m!1505633 () Bool)

(assert (=> b!1346566 m!1505633))

(declare-fun m!1505635 () Bool)

(assert (=> b!1346566 m!1505635))

(declare-fun m!1505637 () Bool)

(assert (=> b!1346566 m!1505637))

(declare-fun m!1505639 () Bool)

(assert (=> b!1346566 m!1505639))

(declare-fun m!1505641 () Bool)

(assert (=> b!1346566 m!1505641))

(declare-fun m!1505643 () Bool)

(assert (=> b!1346566 m!1505643))

(assert (=> b!1346566 m!1505621))

(declare-fun m!1505645 () Bool)

(assert (=> b!1346566 m!1505645))

(declare-fun m!1505647 () Bool)

(assert (=> b!1346566 m!1505647))

(declare-fun m!1505649 () Bool)

(assert (=> b!1346566 m!1505649))

(declare-fun m!1505651 () Bool)

(assert (=> b!1346566 m!1505651))

(declare-fun m!1505653 () Bool)

(assert (=> b!1346566 m!1505653))

(declare-fun m!1505655 () Bool)

(assert (=> b!1346566 m!1505655))

(declare-fun m!1505657 () Bool)

(assert (=> b!1346566 m!1505657))

(declare-fun m!1505659 () Bool)

(assert (=> b!1346566 m!1505659))

(declare-fun m!1505661 () Bool)

(assert (=> b!1346566 m!1505661))

(assert (=> b!1346566 m!1505625))

(assert (=> b!1346566 m!1505637))

(assert (=> b!1346566 m!1505655))

(declare-fun m!1505663 () Bool)

(assert (=> b!1346566 m!1505663))

(assert (=> b!1346566 m!1505651))

(declare-fun m!1505665 () Bool)

(assert (=> b!1346566 m!1505665))

(declare-fun m!1505667 () Bool)

(assert (=> b!1346566 m!1505667))

(declare-fun m!1505669 () Bool)

(assert (=> b!1346566 m!1505669))

(declare-fun m!1505671 () Bool)

(assert (=> b!1346566 m!1505671))

(assert (=> b!1346566 m!1505657))

(declare-fun m!1505673 () Bool)

(assert (=> b!1346566 m!1505673))

(assert (=> b!1346566 m!1505671))

(assert (=> b!1346566 m!1505655))

(assert (=> b!1346566 m!1505635))

(declare-fun m!1505675 () Bool)

(assert (=> b!1346566 m!1505675))

(assert (=> b!1346566 m!1505659))

(declare-fun m!1505677 () Bool)

(assert (=> b!1346566 m!1505677))

(assert (=> b!1346566 m!1505641))

(declare-fun m!1505679 () Bool)

(assert (=> b!1346566 m!1505679))

(assert (=> b!1346566 m!1505631))

(declare-fun m!1505681 () Bool)

(assert (=> b!1346566 m!1505681))

(assert (=> b!1346566 m!1505649))

(declare-fun m!1505683 () Bool)

(assert (=> b!1346566 m!1505683))

(declare-fun m!1505685 () Bool)

(assert (=> b!1346566 m!1505685))

(assert (=> b!1346566 m!1505663))

(declare-fun m!1505687 () Bool)

(assert (=> b!1346566 m!1505687))

(declare-fun m!1505689 () Bool)

(assert (=> b!1346564 m!1505689))

(declare-fun m!1505691 () Bool)

(assert (=> b!1346564 m!1505691))

(declare-fun m!1505693 () Bool)

(assert (=> d!379952 m!1505693))

(assert (=> d!379952 m!1505621))

(assert (=> d!379952 m!1505671))

(declare-fun m!1505695 () Bool)

(assert (=> d!379952 m!1505695))

(assert (=> d!379952 m!1503919))

(declare-fun m!1505697 () Bool)

(assert (=> d!379952 m!1505697))

(declare-fun m!1505699 () Bool)

(assert (=> d!379952 m!1505699))

(declare-fun m!1505701 () Bool)

(assert (=> d!379952 m!1505701))

(declare-fun m!1505703 () Bool)

(assert (=> d!379952 m!1505703))

(assert (=> d!379952 m!1505699))

(declare-fun m!1505705 () Bool)

(assert (=> b!1346560 m!1505705))

(declare-fun m!1505707 () Bool)

(assert (=> b!1346560 m!1505707))

(assert (=> d!379602 d!379952))

(declare-fun d!380034 () Bool)

(assert (=> d!380034 (= (list!5254 lt!445031) (list!5258 (c!220190 lt!445031)))))

(declare-fun bs!332795 () Bool)

(assert (= bs!332795 d!380034))

(declare-fun m!1505709 () Bool)

(assert (=> bs!332795 m!1505709))

(assert (=> d!379446 d!380034))

(declare-fun d!380036 () Bool)

(declare-fun lt!445596 () Int)

(assert (=> d!380036 (= lt!445596 (size!11239 (list!5254 (_2!7553 lt!445152))))))

(assert (=> d!380036 (= lt!445596 (size!11243 (c!220190 (_2!7553 lt!445152))))))

(assert (=> d!380036 (= (size!11232 (_2!7553 lt!445152)) lt!445596)))

(declare-fun bs!332796 () Bool)

(assert (= bs!332796 d!380036))

(assert (=> bs!332796 m!1504513))

(assert (=> bs!332796 m!1504513))

(declare-fun m!1505711 () Bool)

(assert (=> bs!332796 m!1505711))

(declare-fun m!1505713 () Bool)

(assert (=> bs!332796 m!1505713))

(assert (=> b!1345627 d!380036))

(declare-fun d!380038 () Bool)

(declare-fun lt!445597 () Int)

(assert (=> d!380038 (= lt!445597 (size!11239 (list!5254 lt!444976)))))

(assert (=> d!380038 (= lt!445597 (size!11243 (c!220190 lt!444976)))))

(assert (=> d!380038 (= (size!11232 lt!444976) lt!445597)))

(declare-fun bs!332797 () Bool)

(assert (= bs!332797 d!380038))

(assert (=> bs!332797 m!1503919))

(assert (=> bs!332797 m!1503919))

(assert (=> bs!332797 m!1504213))

(declare-fun m!1505715 () Bool)

(assert (=> bs!332797 m!1505715))

(assert (=> b!1345627 d!380038))

(declare-fun d!380040 () Bool)

(assert (=> d!380040 (= (isEmpty!8221 (list!5254 (_2!7553 lt!444980))) ((_ is Nil!13769) (list!5254 (_2!7553 lt!444980))))))

(assert (=> d!379534 d!380040))

(declare-fun d!380042 () Bool)

(assert (=> d!380042 (= (list!5254 (_2!7553 lt!444980)) (list!5258 (c!220190 (_2!7553 lt!444980))))))

(declare-fun bs!332798 () Bool)

(assert (= bs!332798 d!380042))

(declare-fun m!1505717 () Bool)

(assert (=> bs!332798 m!1505717))

(assert (=> d!379534 d!380042))

(declare-fun d!380044 () Bool)

(declare-fun lt!445600 () Bool)

(assert (=> d!380044 (= lt!445600 (isEmpty!8221 (list!5258 (c!220190 (_2!7553 lt!444980)))))))

(assert (=> d!380044 (= lt!445600 (= (size!11243 (c!220190 (_2!7553 lt!444980))) 0))))

(assert (=> d!380044 (= (isEmpty!8224 (c!220190 (_2!7553 lt!444980))) lt!445600)))

(declare-fun bs!332799 () Bool)

(assert (= bs!332799 d!380044))

(assert (=> bs!332799 m!1505717))

(assert (=> bs!332799 m!1505717))

(declare-fun m!1505719 () Bool)

(assert (=> bs!332799 m!1505719))

(declare-fun m!1505721 () Bool)

(assert (=> bs!332799 m!1505721))

(assert (=> d!379534 d!380044))

(declare-fun d!380046 () Bool)

(declare-fun lt!445601 () Bool)

(assert (=> d!380046 (= lt!445601 (select (content!1965 (map!3041 rules!2550 lambda!56699)) lt!445061))))

(declare-fun e!862362 () Bool)

(assert (=> d!380046 (= lt!445601 e!862362)))

(declare-fun res!606935 () Bool)

(assert (=> d!380046 (=> (not res!606935) (not e!862362))))

(assert (=> d!380046 (= res!606935 ((_ is Cons!13772) (map!3041 rules!2550 lambda!56699)))))

(assert (=> d!380046 (= (contains!2528 (map!3041 rules!2550 lambda!56699) lt!445061) lt!445601)))

(declare-fun b!1346567 () Bool)

(declare-fun e!862361 () Bool)

(assert (=> b!1346567 (= e!862362 e!862361)))

(declare-fun res!606934 () Bool)

(assert (=> b!1346567 (=> res!606934 e!862361)))

(assert (=> b!1346567 (= res!606934 (= (h!19173 (map!3041 rules!2550 lambda!56699)) lt!445061))))

(declare-fun b!1346568 () Bool)

(assert (=> b!1346568 (= e!862361 (contains!2528 (t!119743 (map!3041 rules!2550 lambda!56699)) lt!445061))))

(assert (= (and d!380046 res!606935) b!1346567))

(assert (= (and b!1346567 (not res!606934)) b!1346568))

(assert (=> d!380046 m!1503845))

(assert (=> d!380046 m!1504139))

(declare-fun m!1505723 () Bool)

(assert (=> d!380046 m!1505723))

(declare-fun m!1505725 () Bool)

(assert (=> b!1346568 m!1505725))

(assert (=> b!1345389 d!380046))

(declare-fun b!1346569 () Bool)

(declare-fun e!862369 () Bool)

(declare-fun e!862363 () Bool)

(assert (=> b!1346569 (= e!862369 e!862363)))

(declare-fun c!220525 () Bool)

(assert (=> b!1346569 (= c!220525 ((_ is Star!3701) lt!445061))))

(declare-fun b!1346570 () Bool)

(declare-fun e!862365 () Bool)

(assert (=> b!1346570 (= e!862363 e!862365)))

(declare-fun res!606936 () Bool)

(assert (=> b!1346570 (= res!606936 (not (nullable!1181 (reg!4030 lt!445061))))))

(assert (=> b!1346570 (=> (not res!606936) (not e!862365))))

(declare-fun b!1346571 () Bool)

(declare-fun res!606938 () Bool)

(declare-fun e!862367 () Bool)

(assert (=> b!1346571 (=> (not res!606938) (not e!862367))))

(declare-fun call!90585 () Bool)

(assert (=> b!1346571 (= res!606938 call!90585)))

(declare-fun e!862368 () Bool)

(assert (=> b!1346571 (= e!862368 e!862367)))

(declare-fun bm!90580 () Bool)

(declare-fun call!90587 () Bool)

(declare-fun call!90586 () Bool)

(assert (=> bm!90580 (= call!90587 call!90586)))

(declare-fun b!1346572 () Bool)

(declare-fun e!862366 () Bool)

(assert (=> b!1346572 (= e!862366 call!90587)))

(declare-fun d!380048 () Bool)

(declare-fun res!606940 () Bool)

(assert (=> d!380048 (=> res!606940 e!862369)))

(assert (=> d!380048 (= res!606940 ((_ is ElementMatch!3701) lt!445061))))

(assert (=> d!380048 (= (validRegex!1601 lt!445061) e!862369)))

(declare-fun b!1346573 () Bool)

(assert (=> b!1346573 (= e!862367 call!90587)))

(declare-fun b!1346574 () Bool)

(assert (=> b!1346574 (= e!862365 call!90586)))

(declare-fun b!1346575 () Bool)

(assert (=> b!1346575 (= e!862363 e!862368)))

(declare-fun c!220526 () Bool)

(assert (=> b!1346575 (= c!220526 ((_ is Union!3701) lt!445061))))

(declare-fun bm!90581 () Bool)

(assert (=> bm!90581 (= call!90585 (validRegex!1601 (ite c!220526 (regOne!7915 lt!445061) (regOne!7914 lt!445061))))))

(declare-fun bm!90582 () Bool)

(assert (=> bm!90582 (= call!90586 (validRegex!1601 (ite c!220525 (reg!4030 lt!445061) (ite c!220526 (regTwo!7915 lt!445061) (regTwo!7914 lt!445061)))))))

(declare-fun b!1346576 () Bool)

(declare-fun res!606937 () Bool)

(declare-fun e!862364 () Bool)

(assert (=> b!1346576 (=> res!606937 e!862364)))

(assert (=> b!1346576 (= res!606937 (not ((_ is Concat!6179) lt!445061)))))

(assert (=> b!1346576 (= e!862368 e!862364)))

(declare-fun b!1346577 () Bool)

(assert (=> b!1346577 (= e!862364 e!862366)))

(declare-fun res!606939 () Bool)

(assert (=> b!1346577 (=> (not res!606939) (not e!862366))))

(assert (=> b!1346577 (= res!606939 call!90585)))

(assert (= (and d!380048 (not res!606940)) b!1346569))

(assert (= (and b!1346569 c!220525) b!1346570))

(assert (= (and b!1346569 (not c!220525)) b!1346575))

(assert (= (and b!1346570 res!606936) b!1346574))

(assert (= (and b!1346575 c!220526) b!1346571))

(assert (= (and b!1346575 (not c!220526)) b!1346576))

(assert (= (and b!1346571 res!606938) b!1346573))

(assert (= (and b!1346576 (not res!606937)) b!1346577))

(assert (= (and b!1346577 res!606939) b!1346572))

(assert (= (or b!1346571 b!1346577) bm!90581))

(assert (= (or b!1346573 b!1346572) bm!90580))

(assert (= (or b!1346574 bm!90580) bm!90582))

(declare-fun m!1505727 () Bool)

(assert (=> b!1346570 m!1505727))

(declare-fun m!1505729 () Bool)

(assert (=> bm!90581 m!1505729))

(declare-fun m!1505731 () Bool)

(assert (=> bm!90582 m!1505731))

(assert (=> bs!332647 d!380048))

(declare-fun bs!332800 () Bool)

(declare-fun d!380050 () Bool)

(assert (= bs!332800 (and d!380050 d!379946)))

(declare-fun lambda!56802 () Int)

(assert (=> bs!332800 (= (= (toValue!3630 (transformation!2387 (rule!4132 t2!34))) (toValue!3630 (transformation!2387 (h!19171 rules!2550)))) (= lambda!56802 lambda!56796))))

(declare-fun bs!332801 () Bool)

(assert (= bs!332801 (and d!380050 d!379948)))

(assert (=> bs!332801 (= (= (toValue!3630 (transformation!2387 (rule!4132 t2!34))) (toValue!3630 (transformation!2387 (rule!4132 t1!34)))) (= lambda!56802 lambda!56797))))

(assert (=> d!380050 true))

(assert (=> d!380050 (< (dynLambda!6117 order!8275 (toValue!3630 (transformation!2387 (rule!4132 t2!34)))) (dynLambda!6118 order!8277 lambda!56802))))

(assert (=> d!380050 (= (equivClasses!869 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (toValue!3630 (transformation!2387 (rule!4132 t2!34)))) (Forall2!429 lambda!56802))))

(declare-fun bs!332802 () Bool)

(assert (= bs!332802 d!380050))

(declare-fun m!1505733 () Bool)

(assert (=> bs!332802 m!1505733))

(assert (=> b!1345441 d!380050))

(declare-fun d!380052 () Bool)

(assert (=> d!380052 (= (head!2404 (map!3041 rules!2550 lambda!56699)) (h!19173 (map!3041 rules!2550 lambda!56699)))))

(assert (=> b!1345385 d!380052))

(declare-fun d!380054 () Bool)

(assert (=> d!380054 (= (head!2403 lt!444989) (h!19170 lt!444989))))

(assert (=> b!1345432 d!380054))

(declare-fun d!380056 () Bool)

(declare-fun lt!445604 () Bool)

(declare-fun content!1966 (List!13836) (InoxSet Rule!4574))

(assert (=> d!380056 (= lt!445604 (select (content!1966 rules!2550) lt!445161))))

(declare-fun e!862374 () Bool)

(assert (=> d!380056 (= lt!445604 e!862374)))

(declare-fun res!606945 () Bool)

(assert (=> d!380056 (=> (not res!606945) (not e!862374))))

(assert (=> d!380056 (= res!606945 ((_ is Cons!13770) rules!2550))))

(assert (=> d!380056 (= (contains!2531 rules!2550 lt!445161) lt!445604)))

(declare-fun b!1346582 () Bool)

(declare-fun e!862375 () Bool)

(assert (=> b!1346582 (= e!862374 e!862375)))

(declare-fun res!606946 () Bool)

(assert (=> b!1346582 (=> res!606946 e!862375)))

(assert (=> b!1346582 (= res!606946 (= (h!19171 rules!2550) lt!445161))))

(declare-fun b!1346583 () Bool)

(assert (=> b!1346583 (= e!862375 (contains!2531 (t!119741 rules!2550) lt!445161))))

(assert (= (and d!380056 res!606945) b!1346582))

(assert (= (and b!1346582 (not res!606946)) b!1346583))

(declare-fun m!1505735 () Bool)

(assert (=> d!380056 m!1505735))

(declare-fun m!1505737 () Bool)

(assert (=> d!380056 m!1505737))

(declare-fun m!1505739 () Bool)

(assert (=> b!1346583 m!1505739))

(assert (=> b!1345645 d!380056))

(declare-fun d!380058 () Bool)

(assert (=> d!380058 (= ($colon$colon!183 (map!3041 (t!119741 rules!2550) lambda!56699) (dynLambda!6104 lambda!56699 (h!19171 rules!2550))) (Cons!13772 (dynLambda!6104 lambda!56699 (h!19171 rules!2550)) (map!3041 (t!119741 rules!2550) lambda!56699)))))

(assert (=> b!1345367 d!380058))

(declare-fun d!380060 () Bool)

(declare-fun lt!445605 () List!13838)

(assert (=> d!380060 (= (size!11240 lt!445605) (size!11241 (t!119741 rules!2550)))))

(declare-fun e!862376 () List!13838)

(assert (=> d!380060 (= lt!445605 e!862376)))

(declare-fun c!220527 () Bool)

(assert (=> d!380060 (= c!220527 ((_ is Nil!13770) (t!119741 rules!2550)))))

(assert (=> d!380060 (= (map!3041 (t!119741 rules!2550) lambda!56699) lt!445605)))

(declare-fun b!1346584 () Bool)

(assert (=> b!1346584 (= e!862376 Nil!13772)))

(declare-fun b!1346585 () Bool)

(assert (=> b!1346585 (= e!862376 ($colon$colon!183 (map!3041 (t!119741 (t!119741 rules!2550)) lambda!56699) (dynLambda!6104 lambda!56699 (h!19171 (t!119741 rules!2550)))))))

(assert (= (and d!380060 c!220527) b!1346584))

(assert (= (and d!380060 (not c!220527)) b!1346585))

(declare-fun b_lambda!40079 () Bool)

(assert (=> (not b_lambda!40079) (not b!1346585)))

(declare-fun m!1505741 () Bool)

(assert (=> d!380060 m!1505741))

(declare-fun m!1505743 () Bool)

(assert (=> d!380060 m!1505743))

(declare-fun m!1505745 () Bool)

(assert (=> b!1346585 m!1505745))

(declare-fun m!1505747 () Bool)

(assert (=> b!1346585 m!1505747))

(assert (=> b!1346585 m!1505745))

(assert (=> b!1346585 m!1505747))

(declare-fun m!1505749 () Bool)

(assert (=> b!1346585 m!1505749))

(assert (=> b!1345367 d!380060))

(declare-fun d!380062 () Bool)

(declare-fun lt!445606 () Bool)

(assert (=> d!380062 (= lt!445606 (select (content!1964 (t!119740 lt!444989)) lt!444978))))

(declare-fun e!862377 () Bool)

(assert (=> d!380062 (= lt!445606 e!862377)))

(declare-fun res!606947 () Bool)

(assert (=> d!380062 (=> (not res!606947) (not e!862377))))

(assert (=> d!380062 (= res!606947 ((_ is Cons!13769) (t!119740 lt!444989)))))

(assert (=> d!380062 (= (contains!2529 (t!119740 lt!444989) lt!444978) lt!445606)))

(declare-fun b!1346586 () Bool)

(declare-fun e!862378 () Bool)

(assert (=> b!1346586 (= e!862377 e!862378)))

(declare-fun res!606948 () Bool)

(assert (=> b!1346586 (=> res!606948 e!862378)))

(assert (=> b!1346586 (= res!606948 (= (h!19170 (t!119740 lt!444989)) lt!444978))))

(declare-fun b!1346587 () Bool)

(assert (=> b!1346587 (= e!862378 (contains!2529 (t!119740 (t!119740 lt!444989)) lt!444978))))

(assert (= (and d!380062 res!606947) b!1346586))

(assert (= (and b!1346586 (not res!606948)) b!1346587))

(assert (=> d!380062 m!1505139))

(declare-fun m!1505751 () Bool)

(assert (=> d!380062 m!1505751))

(declare-fun m!1505753 () Bool)

(assert (=> b!1346587 m!1505753))

(assert (=> b!1345224 d!380062))

(declare-fun b!1346588 () Bool)

(declare-fun res!606952 () Bool)

(declare-fun e!862383 () Bool)

(assert (=> b!1346588 (=> (not res!606952) (not e!862383))))

(assert (=> b!1346588 (= res!606952 (isEmpty!8221 (tail!1940 lt!444989)))))

(declare-fun b!1346589 () Bool)

(declare-fun e!862380 () Bool)

(declare-fun lt!445607 () Bool)

(declare-fun call!90588 () Bool)

(assert (=> b!1346589 (= e!862380 (= lt!445607 call!90588))))

(declare-fun e!862385 () Bool)

(declare-fun b!1346590 () Bool)

(assert (=> b!1346590 (= e!862385 (matchR!1694 (derivativeStep!939 (h!19173 (map!3041 rules!2550 lambda!56699)) (head!2403 lt!444989)) (tail!1940 lt!444989)))))

(declare-fun b!1346591 () Bool)

(declare-fun res!606949 () Bool)

(assert (=> b!1346591 (=> (not res!606949) (not e!862383))))

(assert (=> b!1346591 (= res!606949 (not call!90588))))

(declare-fun bm!90583 () Bool)

(assert (=> bm!90583 (= call!90588 (isEmpty!8221 lt!444989))))

(declare-fun b!1346592 () Bool)

(declare-fun e!862381 () Bool)

(assert (=> b!1346592 (= e!862380 e!862381)))

(declare-fun c!220528 () Bool)

(assert (=> b!1346592 (= c!220528 ((_ is EmptyLang!3701) (h!19173 (map!3041 rules!2550 lambda!56699))))))

(declare-fun b!1346593 () Bool)

(declare-fun res!606951 () Bool)

(declare-fun e!862379 () Bool)

(assert (=> b!1346593 (=> res!606951 e!862379)))

(assert (=> b!1346593 (= res!606951 (not (isEmpty!8221 (tail!1940 lt!444989))))))

(declare-fun b!1346594 () Bool)

(declare-fun res!606955 () Bool)

(declare-fun e!862384 () Bool)

(assert (=> b!1346594 (=> res!606955 e!862384)))

(assert (=> b!1346594 (= res!606955 e!862383)))

(declare-fun res!606956 () Bool)

(assert (=> b!1346594 (=> (not res!606956) (not e!862383))))

(assert (=> b!1346594 (= res!606956 lt!445607)))

(declare-fun d!380064 () Bool)

(assert (=> d!380064 e!862380))

(declare-fun c!220530 () Bool)

(assert (=> d!380064 (= c!220530 ((_ is EmptyExpr!3701) (h!19173 (map!3041 rules!2550 lambda!56699))))))

(assert (=> d!380064 (= lt!445607 e!862385)))

(declare-fun c!220529 () Bool)

(assert (=> d!380064 (= c!220529 (isEmpty!8221 lt!444989))))

(assert (=> d!380064 (validRegex!1601 (h!19173 (map!3041 rules!2550 lambda!56699)))))

(assert (=> d!380064 (= (matchR!1694 (h!19173 (map!3041 rules!2550 lambda!56699)) lt!444989) lt!445607)))

(declare-fun b!1346595 () Bool)

(declare-fun e!862382 () Bool)

(assert (=> b!1346595 (= e!862382 e!862379)))

(declare-fun res!606954 () Bool)

(assert (=> b!1346595 (=> res!606954 e!862379)))

(assert (=> b!1346595 (= res!606954 call!90588)))

(declare-fun b!1346596 () Bool)

(assert (=> b!1346596 (= e!862379 (not (= (head!2403 lt!444989) (c!220191 (h!19173 (map!3041 rules!2550 lambda!56699))))))))

(declare-fun b!1346597 () Bool)

(assert (=> b!1346597 (= e!862385 (nullable!1181 (h!19173 (map!3041 rules!2550 lambda!56699))))))

(declare-fun b!1346598 () Bool)

(assert (=> b!1346598 (= e!862381 (not lt!445607))))

(declare-fun b!1346599 () Bool)

(declare-fun res!606953 () Bool)

(assert (=> b!1346599 (=> res!606953 e!862384)))

(assert (=> b!1346599 (= res!606953 (not ((_ is ElementMatch!3701) (h!19173 (map!3041 rules!2550 lambda!56699)))))))

(assert (=> b!1346599 (= e!862381 e!862384)))

(declare-fun b!1346600 () Bool)

(assert (=> b!1346600 (= e!862384 e!862382)))

(declare-fun res!606950 () Bool)

(assert (=> b!1346600 (=> (not res!606950) (not e!862382))))

(assert (=> b!1346600 (= res!606950 (not lt!445607))))

(declare-fun b!1346601 () Bool)

(assert (=> b!1346601 (= e!862383 (= (head!2403 lt!444989) (c!220191 (h!19173 (map!3041 rules!2550 lambda!56699)))))))

(assert (= (and d!380064 c!220529) b!1346597))

(assert (= (and d!380064 (not c!220529)) b!1346590))

(assert (= (and d!380064 c!220530) b!1346589))

(assert (= (and d!380064 (not c!220530)) b!1346592))

(assert (= (and b!1346592 c!220528) b!1346598))

(assert (= (and b!1346592 (not c!220528)) b!1346599))

(assert (= (and b!1346599 (not res!606953)) b!1346594))

(assert (= (and b!1346594 res!606956) b!1346591))

(assert (= (and b!1346591 res!606949) b!1346588))

(assert (= (and b!1346588 res!606952) b!1346601))

(assert (= (and b!1346594 (not res!606955)) b!1346600))

(assert (= (and b!1346600 res!606950) b!1346595))

(assert (= (and b!1346595 (not res!606954)) b!1346593))

(assert (= (and b!1346593 (not res!606951)) b!1346596))

(assert (= (or b!1346589 b!1346591 b!1346595) bm!90583))

(assert (=> bm!90583 m!1504179))

(assert (=> d!380064 m!1504179))

(assert (=> d!380064 m!1504579))

(assert (=> b!1346596 m!1504183))

(assert (=> b!1346593 m!1504185))

(assert (=> b!1346593 m!1504185))

(assert (=> b!1346593 m!1504187))

(assert (=> b!1346590 m!1504183))

(assert (=> b!1346590 m!1504183))

(declare-fun m!1505755 () Bool)

(assert (=> b!1346590 m!1505755))

(assert (=> b!1346590 m!1504185))

(assert (=> b!1346590 m!1505755))

(assert (=> b!1346590 m!1504185))

(declare-fun m!1505757 () Bool)

(assert (=> b!1346590 m!1505757))

(declare-fun m!1505759 () Bool)

(assert (=> b!1346597 m!1505759))

(assert (=> b!1346588 m!1504185))

(assert (=> b!1346588 m!1504185))

(assert (=> b!1346588 m!1504187))

(assert (=> b!1346601 m!1504183))

(assert (=> b!1345709 d!380064))

(declare-fun d!380066 () Bool)

(declare-fun c!220533 () Bool)

(assert (=> d!380066 (= c!220533 ((_ is Nil!13769) lt!444989))))

(declare-fun e!862388 () (InoxSet C!7692))

(assert (=> d!380066 (= (content!1964 lt!444989) e!862388)))

(declare-fun b!1346606 () Bool)

(assert (=> b!1346606 (= e!862388 ((as const (Array C!7692 Bool)) false))))

(declare-fun b!1346607 () Bool)

(assert (=> b!1346607 (= e!862388 ((_ map or) (store ((as const (Array C!7692 Bool)) false) (h!19170 lt!444989) true) (content!1964 (t!119740 lt!444989))))))

(assert (= (and d!380066 c!220533) b!1346606))

(assert (= (and d!380066 (not c!220533)) b!1346607))

(declare-fun m!1505761 () Bool)

(assert (=> b!1346607 m!1505761))

(assert (=> b!1346607 m!1505139))

(assert (=> d!379424 d!380066))

(declare-fun d!380068 () Bool)

(assert (=> d!380068 (= (isEmpty!8221 (tail!1940 lt!444989)) ((_ is Nil!13769) (tail!1940 lt!444989)))))

(assert (=> b!1345424 d!380068))

(assert (=> b!1345424 d!379918))

(declare-fun b!1346608 () Bool)

(declare-fun res!606960 () Bool)

(declare-fun e!862393 () Bool)

(assert (=> b!1346608 (=> (not res!606960) (not e!862393))))

(assert (=> b!1346608 (= res!606960 (isEmpty!8221 (tail!1940 (tail!1940 lt!444989))))))

(declare-fun b!1346609 () Bool)

(declare-fun e!862390 () Bool)

(declare-fun lt!445608 () Bool)

(declare-fun call!90589 () Bool)

(assert (=> b!1346609 (= e!862390 (= lt!445608 call!90589))))

(declare-fun b!1346610 () Bool)

(declare-fun e!862395 () Bool)

(assert (=> b!1346610 (= e!862395 (matchR!1694 (derivativeStep!939 (derivativeStep!939 lt!444985 (head!2403 lt!444989)) (head!2403 (tail!1940 lt!444989))) (tail!1940 (tail!1940 lt!444989))))))

(declare-fun b!1346611 () Bool)

(declare-fun res!606957 () Bool)

(assert (=> b!1346611 (=> (not res!606957) (not e!862393))))

(assert (=> b!1346611 (= res!606957 (not call!90589))))

(declare-fun bm!90584 () Bool)

(assert (=> bm!90584 (= call!90589 (isEmpty!8221 (tail!1940 lt!444989)))))

(declare-fun b!1346612 () Bool)

(declare-fun e!862391 () Bool)

(assert (=> b!1346612 (= e!862390 e!862391)))

(declare-fun c!220534 () Bool)

(assert (=> b!1346612 (= c!220534 ((_ is EmptyLang!3701) (derivativeStep!939 lt!444985 (head!2403 lt!444989))))))

(declare-fun b!1346613 () Bool)

(declare-fun res!606959 () Bool)

(declare-fun e!862389 () Bool)

(assert (=> b!1346613 (=> res!606959 e!862389)))

(assert (=> b!1346613 (= res!606959 (not (isEmpty!8221 (tail!1940 (tail!1940 lt!444989)))))))

(declare-fun b!1346614 () Bool)

(declare-fun res!606963 () Bool)

(declare-fun e!862394 () Bool)

(assert (=> b!1346614 (=> res!606963 e!862394)))

(assert (=> b!1346614 (= res!606963 e!862393)))

(declare-fun res!606964 () Bool)

(assert (=> b!1346614 (=> (not res!606964) (not e!862393))))

(assert (=> b!1346614 (= res!606964 lt!445608)))

(declare-fun d!380070 () Bool)

(assert (=> d!380070 e!862390))

(declare-fun c!220536 () Bool)

(assert (=> d!380070 (= c!220536 ((_ is EmptyExpr!3701) (derivativeStep!939 lt!444985 (head!2403 lt!444989))))))

(assert (=> d!380070 (= lt!445608 e!862395)))

(declare-fun c!220535 () Bool)

(assert (=> d!380070 (= c!220535 (isEmpty!8221 (tail!1940 lt!444989)))))

(assert (=> d!380070 (validRegex!1601 (derivativeStep!939 lt!444985 (head!2403 lt!444989)))))

(assert (=> d!380070 (= (matchR!1694 (derivativeStep!939 lt!444985 (head!2403 lt!444989)) (tail!1940 lt!444989)) lt!445608)))

(declare-fun b!1346615 () Bool)

(declare-fun e!862392 () Bool)

(assert (=> b!1346615 (= e!862392 e!862389)))

(declare-fun res!606962 () Bool)

(assert (=> b!1346615 (=> res!606962 e!862389)))

(assert (=> b!1346615 (= res!606962 call!90589)))

(declare-fun b!1346616 () Bool)

(assert (=> b!1346616 (= e!862389 (not (= (head!2403 (tail!1940 lt!444989)) (c!220191 (derivativeStep!939 lt!444985 (head!2403 lt!444989))))))))

(declare-fun b!1346617 () Bool)

(assert (=> b!1346617 (= e!862395 (nullable!1181 (derivativeStep!939 lt!444985 (head!2403 lt!444989))))))

(declare-fun b!1346618 () Bool)

(assert (=> b!1346618 (= e!862391 (not lt!445608))))

(declare-fun b!1346619 () Bool)

(declare-fun res!606961 () Bool)

(assert (=> b!1346619 (=> res!606961 e!862394)))

(assert (=> b!1346619 (= res!606961 (not ((_ is ElementMatch!3701) (derivativeStep!939 lt!444985 (head!2403 lt!444989)))))))

(assert (=> b!1346619 (= e!862391 e!862394)))

(declare-fun b!1346620 () Bool)

(assert (=> b!1346620 (= e!862394 e!862392)))

(declare-fun res!606958 () Bool)

(assert (=> b!1346620 (=> (not res!606958) (not e!862392))))

(assert (=> b!1346620 (= res!606958 (not lt!445608))))

(declare-fun b!1346621 () Bool)

(assert (=> b!1346621 (= e!862393 (= (head!2403 (tail!1940 lt!444989)) (c!220191 (derivativeStep!939 lt!444985 (head!2403 lt!444989)))))))

(assert (= (and d!380070 c!220535) b!1346617))

(assert (= (and d!380070 (not c!220535)) b!1346610))

(assert (= (and d!380070 c!220536) b!1346609))

(assert (= (and d!380070 (not c!220536)) b!1346612))

(assert (= (and b!1346612 c!220534) b!1346618))

(assert (= (and b!1346612 (not c!220534)) b!1346619))

(assert (= (and b!1346619 (not res!606961)) b!1346614))

(assert (= (and b!1346614 res!606964) b!1346611))

(assert (= (and b!1346611 res!606957) b!1346608))

(assert (= (and b!1346608 res!606960) b!1346621))

(assert (= (and b!1346614 (not res!606963)) b!1346620))

(assert (= (and b!1346620 res!606958) b!1346615))

(assert (= (and b!1346615 (not res!606962)) b!1346613))

(assert (= (and b!1346613 (not res!606959)) b!1346616))

(assert (= (or b!1346609 b!1346611 b!1346615) bm!90584))

(assert (=> bm!90584 m!1504185))

(assert (=> bm!90584 m!1504187))

(assert (=> d!380070 m!1504185))

(assert (=> d!380070 m!1504187))

(assert (=> d!380070 m!1504189))

(declare-fun m!1505763 () Bool)

(assert (=> d!380070 m!1505763))

(assert (=> b!1346616 m!1504185))

(declare-fun m!1505765 () Bool)

(assert (=> b!1346616 m!1505765))

(assert (=> b!1346613 m!1504185))

(assert (=> b!1346613 m!1505225))

(assert (=> b!1346613 m!1505225))

(declare-fun m!1505767 () Bool)

(assert (=> b!1346613 m!1505767))

(assert (=> b!1346610 m!1504185))

(assert (=> b!1346610 m!1505765))

(assert (=> b!1346610 m!1504189))

(assert (=> b!1346610 m!1505765))

(declare-fun m!1505769 () Bool)

(assert (=> b!1346610 m!1505769))

(assert (=> b!1346610 m!1504185))

(assert (=> b!1346610 m!1505225))

(assert (=> b!1346610 m!1505769))

(assert (=> b!1346610 m!1505225))

(declare-fun m!1505771 () Bool)

(assert (=> b!1346610 m!1505771))

(assert (=> b!1346617 m!1504189))

(declare-fun m!1505773 () Bool)

(assert (=> b!1346617 m!1505773))

(assert (=> b!1346608 m!1504185))

(assert (=> b!1346608 m!1505225))

(assert (=> b!1346608 m!1505225))

(assert (=> b!1346608 m!1505767))

(assert (=> b!1346621 m!1504185))

(assert (=> b!1346621 m!1505765))

(assert (=> b!1345421 d!380070))

(declare-fun d!380072 () Bool)

(declare-fun lt!445611 () Regex!3701)

(assert (=> d!380072 (validRegex!1601 lt!445611)))

(declare-fun e!862408 () Regex!3701)

(assert (=> d!380072 (= lt!445611 e!862408)))

(declare-fun c!220548 () Bool)

(assert (=> d!380072 (= c!220548 (or ((_ is EmptyExpr!3701) lt!444985) ((_ is EmptyLang!3701) lt!444985)))))

(assert (=> d!380072 (validRegex!1601 lt!444985)))

(assert (=> d!380072 (= (derivativeStep!939 lt!444985 (head!2403 lt!444989)) lt!445611)))

(declare-fun call!90598 () Regex!3701)

(declare-fun bm!90593 () Bool)

(declare-fun c!220547 () Bool)

(declare-fun c!220550 () Bool)

(assert (=> bm!90593 (= call!90598 (derivativeStep!939 (ite c!220547 (regTwo!7915 lt!444985) (ite c!220550 (reg!4030 lt!444985) (regOne!7914 lt!444985))) (head!2403 lt!444989)))))

(declare-fun call!90599 () Regex!3701)

(declare-fun bm!90594 () Bool)

(declare-fun c!220549 () Bool)

(assert (=> bm!90594 (= call!90599 (derivativeStep!939 (ite c!220547 (regOne!7915 lt!444985) (ite c!220549 (regTwo!7914 lt!444985) (regOne!7914 lt!444985))) (head!2403 lt!444989)))))

(declare-fun b!1346642 () Bool)

(declare-fun e!862410 () Regex!3701)

(assert (=> b!1346642 (= e!862408 e!862410)))

(declare-fun c!220551 () Bool)

(assert (=> b!1346642 (= c!220551 ((_ is ElementMatch!3701) lt!444985))))

(declare-fun call!90600 () Regex!3701)

(declare-fun call!90601 () Regex!3701)

(declare-fun e!862406 () Regex!3701)

(declare-fun b!1346643 () Bool)

(assert (=> b!1346643 (= e!862406 (Union!3701 (Concat!6179 call!90600 (regTwo!7914 lt!444985)) call!90601))))

(declare-fun b!1346644 () Bool)

(assert (=> b!1346644 (= c!220547 ((_ is Union!3701) lt!444985))))

(declare-fun e!862407 () Regex!3701)

(assert (=> b!1346644 (= e!862410 e!862407)))

(declare-fun b!1346645 () Bool)

(assert (=> b!1346645 (= e!862410 (ite (= (head!2403 lt!444989) (c!220191 lt!444985)) EmptyExpr!3701 EmptyLang!3701))))

(declare-fun b!1346646 () Bool)

(assert (=> b!1346646 (= e!862408 EmptyLang!3701)))

(declare-fun bm!90595 () Bool)

(assert (=> bm!90595 (= call!90601 call!90599)))

(declare-fun b!1346647 () Bool)

(declare-fun e!862409 () Regex!3701)

(assert (=> b!1346647 (= e!862409 (Concat!6179 call!90600 lt!444985))))

(declare-fun b!1346648 () Bool)

(assert (=> b!1346648 (= e!862406 (Union!3701 (Concat!6179 call!90601 (regTwo!7914 lt!444985)) EmptyLang!3701))))

(declare-fun b!1346649 () Bool)

(assert (=> b!1346649 (= e!862407 (Union!3701 call!90599 call!90598))))

(declare-fun bm!90596 () Bool)

(assert (=> bm!90596 (= call!90600 call!90598)))

(declare-fun b!1346650 () Bool)

(assert (=> b!1346650 (= e!862407 e!862409)))

(assert (=> b!1346650 (= c!220550 ((_ is Star!3701) lt!444985))))

(declare-fun b!1346651 () Bool)

(assert (=> b!1346651 (= c!220549 (nullable!1181 (regOne!7914 lt!444985)))))

(assert (=> b!1346651 (= e!862409 e!862406)))

(assert (= (and d!380072 c!220548) b!1346646))

(assert (= (and d!380072 (not c!220548)) b!1346642))

(assert (= (and b!1346642 c!220551) b!1346645))

(assert (= (and b!1346642 (not c!220551)) b!1346644))

(assert (= (and b!1346644 c!220547) b!1346649))

(assert (= (and b!1346644 (not c!220547)) b!1346650))

(assert (= (and b!1346650 c!220550) b!1346647))

(assert (= (and b!1346650 (not c!220550)) b!1346651))

(assert (= (and b!1346651 c!220549) b!1346643))

(assert (= (and b!1346651 (not c!220549)) b!1346648))

(assert (= (or b!1346643 b!1346648) bm!90595))

(assert (= (or b!1346647 b!1346643) bm!90596))

(assert (= (or b!1346649 bm!90595) bm!90594))

(assert (= (or b!1346649 bm!90596) bm!90593))

(declare-fun m!1505775 () Bool)

(assert (=> d!380072 m!1505775))

(assert (=> d!380072 m!1504181))

(assert (=> bm!90593 m!1504183))

(declare-fun m!1505777 () Bool)

(assert (=> bm!90593 m!1505777))

(assert (=> bm!90594 m!1504183))

(declare-fun m!1505779 () Bool)

(assert (=> bm!90594 m!1505779))

(declare-fun m!1505781 () Bool)

(assert (=> b!1346651 m!1505781))

(assert (=> b!1345421 d!380072))

(assert (=> b!1345421 d!380054))

(assert (=> b!1345421 d!379918))

(declare-fun d!380074 () Bool)

(assert (=> d!380074 (= (Exists!853 lambda!56707) (choose!8269 lambda!56707))))

(declare-fun bs!332803 () Bool)

(assert (= bs!332803 d!380074))

(declare-fun m!1505783 () Bool)

(assert (=> bs!332803 m!1505783))

(assert (=> d!379490 d!380074))

(declare-fun bs!332804 () Bool)

(declare-fun d!380076 () Bool)

(assert (= bs!332804 (and d!380076 b!1345119)))

(declare-fun lambda!56805 () Int)

(assert (=> bs!332804 (= lambda!56805 lambda!56698)))

(declare-fun bs!332805 () Bool)

(assert (= bs!332805 (and d!380076 d!379490)))

(assert (=> bs!332805 (= lambda!56805 lambda!56707)))

(assert (=> d!380076 true))

(assert (=> d!380076 true))

(assert (=> d!380076 (Exists!853 lambda!56805)))

(assert (=> d!380076 true))

(declare-fun _$103!101 () Unit!19871)

(assert (=> d!380076 (= (choose!8270 lt!444985 lt!444988) _$103!101)))

(declare-fun bs!332806 () Bool)

(assert (= bs!332806 d!380076))

(declare-fun m!1505785 () Bool)

(assert (=> bs!332806 m!1505785))

(assert (=> d!379490 d!380076))

(declare-fun b!1346654 () Bool)

(declare-fun e!862419 () Bool)

(declare-fun e!862413 () Bool)

(assert (=> b!1346654 (= e!862419 e!862413)))

(declare-fun c!220552 () Bool)

(assert (=> b!1346654 (= c!220552 ((_ is Star!3701) lt!444985))))

(declare-fun b!1346655 () Bool)

(declare-fun e!862415 () Bool)

(assert (=> b!1346655 (= e!862413 e!862415)))

(declare-fun res!606967 () Bool)

(assert (=> b!1346655 (= res!606967 (not (nullable!1181 (reg!4030 lt!444985))))))

(assert (=> b!1346655 (=> (not res!606967) (not e!862415))))

(declare-fun b!1346656 () Bool)

(declare-fun res!606969 () Bool)

(declare-fun e!862417 () Bool)

(assert (=> b!1346656 (=> (not res!606969) (not e!862417))))

(declare-fun call!90602 () Bool)

(assert (=> b!1346656 (= res!606969 call!90602)))

(declare-fun e!862418 () Bool)

(assert (=> b!1346656 (= e!862418 e!862417)))

(declare-fun bm!90597 () Bool)

(declare-fun call!90604 () Bool)

(declare-fun call!90603 () Bool)

(assert (=> bm!90597 (= call!90604 call!90603)))

(declare-fun b!1346657 () Bool)

(declare-fun e!862416 () Bool)

(assert (=> b!1346657 (= e!862416 call!90604)))

(declare-fun d!380078 () Bool)

(declare-fun res!606971 () Bool)

(assert (=> d!380078 (=> res!606971 e!862419)))

(assert (=> d!380078 (= res!606971 ((_ is ElementMatch!3701) lt!444985))))

(assert (=> d!380078 (= (validRegex!1601 lt!444985) e!862419)))

(declare-fun b!1346658 () Bool)

(assert (=> b!1346658 (= e!862417 call!90604)))

(declare-fun b!1346659 () Bool)

(assert (=> b!1346659 (= e!862415 call!90603)))

(declare-fun b!1346660 () Bool)

(assert (=> b!1346660 (= e!862413 e!862418)))

(declare-fun c!220553 () Bool)

(assert (=> b!1346660 (= c!220553 ((_ is Union!3701) lt!444985))))

(declare-fun bm!90598 () Bool)

(assert (=> bm!90598 (= call!90602 (validRegex!1601 (ite c!220553 (regOne!7915 lt!444985) (regOne!7914 lt!444985))))))

(declare-fun bm!90599 () Bool)

(assert (=> bm!90599 (= call!90603 (validRegex!1601 (ite c!220552 (reg!4030 lt!444985) (ite c!220553 (regTwo!7915 lt!444985) (regTwo!7914 lt!444985)))))))

(declare-fun b!1346661 () Bool)

(declare-fun res!606968 () Bool)

(declare-fun e!862414 () Bool)

(assert (=> b!1346661 (=> res!606968 e!862414)))

(assert (=> b!1346661 (= res!606968 (not ((_ is Concat!6179) lt!444985)))))

(assert (=> b!1346661 (= e!862418 e!862414)))

(declare-fun b!1346662 () Bool)

(assert (=> b!1346662 (= e!862414 e!862416)))

(declare-fun res!606970 () Bool)

(assert (=> b!1346662 (=> (not res!606970) (not e!862416))))

(assert (=> b!1346662 (= res!606970 call!90602)))

(assert (= (and d!380078 (not res!606971)) b!1346654))

(assert (= (and b!1346654 c!220552) b!1346655))

(assert (= (and b!1346654 (not c!220552)) b!1346660))

(assert (= (and b!1346655 res!606967) b!1346659))

(assert (= (and b!1346660 c!220553) b!1346656))

(assert (= (and b!1346660 (not c!220553)) b!1346661))

(assert (= (and b!1346656 res!606969) b!1346658))

(assert (= (and b!1346661 (not res!606968)) b!1346662))

(assert (= (and b!1346662 res!606970) b!1346657))

(assert (= (or b!1346656 b!1346662) bm!90598))

(assert (= (or b!1346658 b!1346657) bm!90597))

(assert (= (or b!1346659 bm!90597) bm!90599))

(declare-fun m!1505787 () Bool)

(assert (=> b!1346655 m!1505787))

(declare-fun m!1505789 () Bool)

(assert (=> bm!90598 m!1505789))

(declare-fun m!1505791 () Bool)

(assert (=> bm!90599 m!1505791))

(assert (=> d!379490 d!380078))

(declare-fun d!380080 () Bool)

(declare-fun res!606976 () Bool)

(declare-fun e!862424 () Bool)

(assert (=> d!380080 (=> res!606976 e!862424)))

(assert (=> d!380080 (= res!606976 ((_ is Nil!13772) lt!444977))))

(assert (=> d!380080 (= (forall!3357 lt!444977 lambda!56711) e!862424)))

(declare-fun b!1346667 () Bool)

(declare-fun e!862425 () Bool)

(assert (=> b!1346667 (= e!862424 e!862425)))

(declare-fun res!606977 () Bool)

(assert (=> b!1346667 (=> (not res!606977) (not e!862425))))

(assert (=> b!1346667 (= res!606977 (dynLambda!6105 lambda!56711 (h!19173 lt!444977)))))

(declare-fun b!1346668 () Bool)

(assert (=> b!1346668 (= e!862425 (forall!3357 (t!119743 lt!444977) lambda!56711))))

(assert (= (and d!380080 (not res!606976)) b!1346667))

(assert (= (and b!1346667 res!606977) b!1346668))

(declare-fun b_lambda!40081 () Bool)

(assert (=> (not b_lambda!40081) (not b!1346667)))

(declare-fun m!1505793 () Bool)

(assert (=> b!1346667 m!1505793))

(declare-fun m!1505795 () Bool)

(assert (=> b!1346668 m!1505795))

(assert (=> d!379522 d!380080))

(declare-fun d!380082 () Bool)

(declare-fun charsToBigInt!0 (List!13834 Int) Int)

(assert (=> d!380082 (= (inv!15 (value!77662 t1!34)) (= (charsToBigInt!0 (text!17788 (value!77662 t1!34)) 0) (value!77657 (value!77662 t1!34))))))

(declare-fun bs!332807 () Bool)

(assert (= bs!332807 d!380082))

(declare-fun m!1505797 () Bool)

(assert (=> bs!332807 m!1505797))

(assert (=> b!1345197 d!380082))

(declare-fun d!380084 () Bool)

(declare-fun nullableFct!269 (Regex!3701) Bool)

(assert (=> d!380084 (= (nullable!1181 lt!444985) (nullableFct!269 lt!444985))))

(declare-fun bs!332808 () Bool)

(assert (= bs!332808 d!380084))

(declare-fun m!1505799 () Bool)

(assert (=> bs!332808 m!1505799))

(assert (=> b!1345428 d!380084))

(assert (=> d!379524 d!379470))

(declare-fun bs!332809 () Bool)

(declare-fun d!380086 () Bool)

(assert (= bs!332809 (and d!380086 d!379930)))

(declare-fun lambda!56806 () Int)

(assert (=> bs!332809 (not (= lambda!56806 lambda!56790))))

(declare-fun bs!332810 () Bool)

(assert (= bs!332810 (and d!380086 d!379522)))

(assert (=> bs!332810 (= (= lambda!56717 lambda!56700) (= lambda!56806 lambda!56711))))

(declare-fun bs!332811 () Bool)

(assert (= bs!332811 (and d!380086 d!379524)))

(assert (=> bs!332811 (not (= lambda!56806 lambda!56716))))

(declare-fun bs!332812 () Bool)

(assert (= bs!332812 (and d!380086 d!379932)))

(assert (=> bs!332812 (not (= lambda!56806 lambda!56793))))

(declare-fun bs!332813 () Bool)

(assert (= bs!332813 (and d!380086 d!379518)))

(assert (=> bs!332813 (= (= lambda!56717 lambda!56700) (= lambda!56806 lambda!56710))))

(assert (=> bs!332811 (not (= lambda!56806 lambda!56717))))

(declare-fun bs!332814 () Bool)

(assert (= bs!332814 (and d!380086 b!1345137)))

(assert (=> bs!332814 (not (= lambda!56806 lambda!56700))))

(assert (=> d!380086 true))

(assert (=> d!380086 (< (dynLambda!6106 order!8251 lambda!56717) (dynLambda!6106 order!8251 lambda!56806))))

(assert (=> d!380086 (= (exists!433 lt!444977 lambda!56717) (not (forall!3357 lt!444977 lambda!56806)))))

(declare-fun bs!332815 () Bool)

(assert (= bs!332815 d!380086))

(declare-fun m!1505801 () Bool)

(assert (=> bs!332815 m!1505801))

(assert (=> d!379524 d!380086))

(declare-fun bs!332816 () Bool)

(declare-fun d!380088 () Bool)

(assert (= bs!332816 (and d!380088 d!379930)))

(declare-fun lambda!56809 () Int)

(assert (=> bs!332816 (not (= lambda!56809 lambda!56790))))

(declare-fun bs!332817 () Bool)

(assert (= bs!332817 (and d!380088 d!379524)))

(assert (=> bs!332817 (not (= lambda!56809 lambda!56716))))

(declare-fun bs!332818 () Bool)

(assert (= bs!332818 (and d!380088 d!379932)))

(assert (=> bs!332818 (not (= lambda!56809 lambda!56793))))

(declare-fun bs!332819 () Bool)

(assert (= bs!332819 (and d!380088 d!379518)))

(assert (=> bs!332819 (not (= lambda!56809 lambda!56710))))

(assert (=> bs!332817 (= lambda!56809 lambda!56717)))

(declare-fun bs!332820 () Bool)

(assert (= bs!332820 (and d!380088 b!1345137)))

(assert (=> bs!332820 (= lambda!56809 lambda!56700)))

(declare-fun bs!332821 () Bool)

(assert (= bs!332821 (and d!380088 d!380086)))

(assert (=> bs!332821 (not (= lambda!56809 lambda!56806))))

(declare-fun bs!332822 () Bool)

(assert (= bs!332822 (and d!380088 d!379522)))

(assert (=> bs!332822 (not (= lambda!56809 lambda!56711))))

(assert (=> d!380088 true))

(assert (=> d!380088 (= (matchR!1694 lt!444985 lt!444989) (exists!433 lt!444977 lambda!56809))))

(assert (=> d!380088 true))

(declare-fun _$85!119 () Unit!19871)

(assert (=> d!380088 (= (choose!8271 lt!444985 lt!444977 lt!444989) _$85!119)))

(declare-fun bs!332823 () Bool)

(assert (= bs!332823 d!380088))

(assert (=> bs!332823 m!1503913))

(declare-fun m!1505803 () Bool)

(assert (=> bs!332823 m!1505803))

(assert (=> d!379524 d!380088))

(declare-fun d!380090 () Bool)

(declare-fun res!606980 () Bool)

(declare-fun e!862428 () Bool)

(assert (=> d!380090 (=> res!606980 e!862428)))

(assert (=> d!380090 (= res!606980 ((_ is Nil!13772) lt!444977))))

(assert (=> d!380090 (= (forall!3357 lt!444977 lambda!56716) e!862428)))

(declare-fun b!1346671 () Bool)

(declare-fun e!862429 () Bool)

(assert (=> b!1346671 (= e!862428 e!862429)))

(declare-fun res!606981 () Bool)

(assert (=> b!1346671 (=> (not res!606981) (not e!862429))))

(assert (=> b!1346671 (= res!606981 (dynLambda!6105 lambda!56716 (h!19173 lt!444977)))))

(declare-fun b!1346672 () Bool)

(assert (=> b!1346672 (= e!862429 (forall!3357 (t!119743 lt!444977) lambda!56716))))

(assert (= (and d!380090 (not res!606980)) b!1346671))

(assert (= (and b!1346671 res!606981) b!1346672))

(declare-fun b_lambda!40083 () Bool)

(assert (=> (not b_lambda!40083) (not b!1346671)))

(declare-fun m!1505805 () Bool)

(assert (=> b!1346671 m!1505805))

(declare-fun m!1505807 () Bool)

(assert (=> b!1346672 m!1505807))

(assert (=> d!379524 d!380090))

(declare-fun d!380092 () Bool)

(declare-fun lt!445612 () Bool)

(assert (=> d!380092 (= lt!445612 (isEmpty!8221 (list!5254 (_2!7553 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t1!34)))))))))

(assert (=> d!380092 (= lt!445612 (isEmpty!8224 (c!220190 (_2!7553 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t1!34)))))))))

(assert (=> d!380092 (= (isEmpty!8216 (_2!7553 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t1!34))))) lt!445612)))

(declare-fun bs!332824 () Bool)

(assert (= bs!332824 d!380092))

(declare-fun m!1505809 () Bool)

(assert (=> bs!332824 m!1505809))

(assert (=> bs!332824 m!1505809))

(declare-fun m!1505811 () Bool)

(assert (=> bs!332824 m!1505811))

(declare-fun m!1505813 () Bool)

(assert (=> bs!332824 m!1505813))

(assert (=> b!1345598 d!380092))

(declare-fun b!1346673 () Bool)

(declare-fun lt!445613 () tuple2!13334)

(declare-fun e!862430 () Bool)

(assert (=> b!1346673 (= e!862430 (= (list!5254 (_2!7553 lt!445613)) (_2!7552 (lexList!600 thiss!19762 rules!2550 (list!5254 (print!848 thiss!19762 (singletonSeq!1000 t1!34)))))))))

(declare-fun d!380094 () Bool)

(assert (=> d!380094 e!862430))

(declare-fun res!606983 () Bool)

(assert (=> d!380094 (=> (not res!606983) (not e!862430))))

(declare-fun e!862432 () Bool)

(assert (=> d!380094 (= res!606983 e!862432)))

(declare-fun c!220554 () Bool)

(assert (=> d!380094 (= c!220554 (> (size!11244 (_1!7553 lt!445613)) 0))))

(assert (=> d!380094 (= lt!445613 (lexTailRecV2!395 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t1!34)) (BalanceConc!9013 Empty!4536) (print!848 thiss!19762 (singletonSeq!1000 t1!34)) (BalanceConc!9015 Empty!4537)))))

(assert (=> d!380094 (= (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t1!34))) lt!445613)))

(declare-fun b!1346674 () Bool)

(declare-fun e!862431 () Bool)

(assert (=> b!1346674 (= e!862432 e!862431)))

(declare-fun res!606984 () Bool)

(assert (=> b!1346674 (= res!606984 (< (size!11232 (_2!7553 lt!445613)) (size!11232 (print!848 thiss!19762 (singletonSeq!1000 t1!34)))))))

(assert (=> b!1346674 (=> (not res!606984) (not e!862431))))

(declare-fun b!1346675 () Bool)

(assert (=> b!1346675 (= e!862432 (= (_2!7553 lt!445613) (print!848 thiss!19762 (singletonSeq!1000 t1!34))))))

(declare-fun b!1346676 () Bool)

(declare-fun res!606982 () Bool)

(assert (=> b!1346676 (=> (not res!606982) (not e!862430))))

(assert (=> b!1346676 (= res!606982 (= (list!5255 (_1!7553 lt!445613)) (_1!7552 (lexList!600 thiss!19762 rules!2550 (list!5254 (print!848 thiss!19762 (singletonSeq!1000 t1!34)))))))))

(declare-fun b!1346677 () Bool)

(assert (=> b!1346677 (= e!862431 (not (isEmpty!8225 (_1!7553 lt!445613))))))

(assert (= (and d!380094 c!220554) b!1346674))

(assert (= (and d!380094 (not c!220554)) b!1346675))

(assert (= (and b!1346674 res!606984) b!1346677))

(assert (= (and d!380094 res!606983) b!1346676))

(assert (= (and b!1346676 res!606982) b!1346673))

(declare-fun m!1505815 () Bool)

(assert (=> b!1346674 m!1505815))

(assert (=> b!1346674 m!1503833))

(declare-fun m!1505817 () Bool)

(assert (=> b!1346674 m!1505817))

(declare-fun m!1505819 () Bool)

(assert (=> b!1346676 m!1505819))

(assert (=> b!1346676 m!1503833))

(declare-fun m!1505821 () Bool)

(assert (=> b!1346676 m!1505821))

(assert (=> b!1346676 m!1505821))

(declare-fun m!1505823 () Bool)

(assert (=> b!1346676 m!1505823))

(declare-fun m!1505825 () Bool)

(assert (=> b!1346673 m!1505825))

(assert (=> b!1346673 m!1503833))

(assert (=> b!1346673 m!1505821))

(assert (=> b!1346673 m!1505821))

(assert (=> b!1346673 m!1505823))

(declare-fun m!1505827 () Bool)

(assert (=> b!1346677 m!1505827))

(declare-fun m!1505829 () Bool)

(assert (=> d!380094 m!1505829))

(assert (=> d!380094 m!1503833))

(assert (=> d!380094 m!1503833))

(declare-fun m!1505831 () Bool)

(assert (=> d!380094 m!1505831))

(assert (=> b!1345598 d!380094))

(assert (=> b!1345598 d!379604))

(assert (=> b!1345598 d!379608))

(declare-fun d!380096 () Bool)

(assert (=> d!380096 (= (isEmpty!8221 lt!444989) ((_ is Nil!13769) lt!444989))))

(assert (=> d!379470 d!380096))

(assert (=> d!379470 d!380078))

(declare-fun d!380098 () Bool)

(assert (=> d!380098 (= (inv!17 (value!77662 t2!34)) (= (charsToBigInt!1 (text!17787 (value!77662 t2!34))) (value!77654 (value!77662 t2!34))))))

(declare-fun bs!332825 () Bool)

(assert (= bs!332825 d!380098))

(declare-fun m!1505833 () Bool)

(assert (=> bs!332825 m!1505833))

(assert (=> b!1345205 d!380098))

(declare-fun d!380100 () Bool)

(assert (=> d!380100 (= (inv!18106 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34))) (isBalanced!1317 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34)))))))

(declare-fun bs!332826 () Bool)

(assert (= bs!332826 d!380100))

(declare-fun m!1505835 () Bool)

(assert (=> bs!332826 m!1505835))

(assert (=> tb!70765 d!380100))

(declare-fun d!380102 () Bool)

(assert (=> d!380102 (= (isEmpty!8221 lt!444988) ((_ is Nil!13769) lt!444988))))

(assert (=> d!379438 d!380102))

(declare-fun lt!445614 () Bool)

(declare-fun d!380104 () Bool)

(assert (=> d!380104 (= lt!445614 (isEmpty!8221 (list!5254 (_2!7553 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t2!34)))))))))

(assert (=> d!380104 (= lt!445614 (isEmpty!8224 (c!220190 (_2!7553 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t2!34)))))))))

(assert (=> d!380104 (= (isEmpty!8216 (_2!7553 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t2!34))))) lt!445614)))

(declare-fun bs!332827 () Bool)

(assert (= bs!332827 d!380104))

(declare-fun m!1505837 () Bool)

(assert (=> bs!332827 m!1505837))

(assert (=> bs!332827 m!1505837))

(declare-fun m!1505839 () Bool)

(assert (=> bs!332827 m!1505839))

(declare-fun m!1505841 () Bool)

(assert (=> bs!332827 m!1505841))

(assert (=> b!1345615 d!380104))

(declare-fun b!1346678 () Bool)

(declare-fun lt!445615 () tuple2!13334)

(declare-fun e!862433 () Bool)

(assert (=> b!1346678 (= e!862433 (= (list!5254 (_2!7553 lt!445615)) (_2!7552 (lexList!600 thiss!19762 rules!2550 (list!5254 (print!848 thiss!19762 (singletonSeq!1000 t2!34)))))))))

(declare-fun d!380106 () Bool)

(assert (=> d!380106 e!862433))

(declare-fun res!606986 () Bool)

(assert (=> d!380106 (=> (not res!606986) (not e!862433))))

(declare-fun e!862435 () Bool)

(assert (=> d!380106 (= res!606986 e!862435)))

(declare-fun c!220555 () Bool)

(assert (=> d!380106 (= c!220555 (> (size!11244 (_1!7553 lt!445615)) 0))))

(assert (=> d!380106 (= lt!445615 (lexTailRecV2!395 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t2!34)) (BalanceConc!9013 Empty!4536) (print!848 thiss!19762 (singletonSeq!1000 t2!34)) (BalanceConc!9015 Empty!4537)))))

(assert (=> d!380106 (= (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t2!34))) lt!445615)))

(declare-fun b!1346679 () Bool)

(declare-fun e!862434 () Bool)

(assert (=> b!1346679 (= e!862435 e!862434)))

(declare-fun res!606987 () Bool)

(assert (=> b!1346679 (= res!606987 (< (size!11232 (_2!7553 lt!445615)) (size!11232 (print!848 thiss!19762 (singletonSeq!1000 t2!34)))))))

(assert (=> b!1346679 (=> (not res!606987) (not e!862434))))

(declare-fun b!1346680 () Bool)

(assert (=> b!1346680 (= e!862435 (= (_2!7553 lt!445615) (print!848 thiss!19762 (singletonSeq!1000 t2!34))))))

(declare-fun b!1346681 () Bool)

(declare-fun res!606985 () Bool)

(assert (=> b!1346681 (=> (not res!606985) (not e!862433))))

(assert (=> b!1346681 (= res!606985 (= (list!5255 (_1!7553 lt!445615)) (_1!7552 (lexList!600 thiss!19762 rules!2550 (list!5254 (print!848 thiss!19762 (singletonSeq!1000 t2!34)))))))))

(declare-fun b!1346682 () Bool)

(assert (=> b!1346682 (= e!862434 (not (isEmpty!8225 (_1!7553 lt!445615))))))

(assert (= (and d!380106 c!220555) b!1346679))

(assert (= (and d!380106 (not c!220555)) b!1346680))

(assert (= (and b!1346679 res!606987) b!1346682))

(assert (= (and d!380106 res!606986) b!1346681))

(assert (= (and b!1346681 res!606985) b!1346678))

(declare-fun m!1505843 () Bool)

(assert (=> b!1346679 m!1505843))

(assert (=> b!1346679 m!1504491))

(declare-fun m!1505845 () Bool)

(assert (=> b!1346679 m!1505845))

(declare-fun m!1505847 () Bool)

(assert (=> b!1346681 m!1505847))

(assert (=> b!1346681 m!1504491))

(declare-fun m!1505849 () Bool)

(assert (=> b!1346681 m!1505849))

(assert (=> b!1346681 m!1505849))

(declare-fun m!1505851 () Bool)

(assert (=> b!1346681 m!1505851))

(declare-fun m!1505853 () Bool)

(assert (=> b!1346678 m!1505853))

(assert (=> b!1346678 m!1504491))

(assert (=> b!1346678 m!1505849))

(assert (=> b!1346678 m!1505849))

(assert (=> b!1346678 m!1505851))

(declare-fun m!1505855 () Bool)

(assert (=> b!1346682 m!1505855))

(declare-fun m!1505857 () Bool)

(assert (=> d!380106 m!1505857))

(assert (=> d!380106 m!1504491))

(assert (=> d!380106 m!1504491))

(declare-fun m!1505859 () Bool)

(assert (=> d!380106 m!1505859))

(assert (=> b!1345615 d!380106))

(declare-fun d!380108 () Bool)

(declare-fun lt!445616 () BalanceConc!9012)

(assert (=> d!380108 (= (list!5254 lt!445616) (printList!590 thiss!19762 (list!5255 (singletonSeq!1000 t2!34))))))

(assert (=> d!380108 (= lt!445616 (printTailRec!572 thiss!19762 (singletonSeq!1000 t2!34) 0 (BalanceConc!9013 Empty!4536)))))

(assert (=> d!380108 (= (print!848 thiss!19762 (singletonSeq!1000 t2!34)) lt!445616)))

(declare-fun bs!332828 () Bool)

(assert (= bs!332828 d!380108))

(declare-fun m!1505861 () Bool)

(assert (=> bs!332828 m!1505861))

(assert (=> bs!332828 m!1504489))

(assert (=> bs!332828 m!1504499))

(assert (=> bs!332828 m!1504499))

(declare-fun m!1505863 () Bool)

(assert (=> bs!332828 m!1505863))

(assert (=> bs!332828 m!1504489))

(declare-fun m!1505865 () Bool)

(assert (=> bs!332828 m!1505865))

(assert (=> b!1345615 d!380108))

(declare-fun d!380110 () Bool)

(declare-fun e!862436 () Bool)

(assert (=> d!380110 e!862436))

(declare-fun res!606988 () Bool)

(assert (=> d!380110 (=> (not res!606988) (not e!862436))))

(declare-fun lt!445617 () BalanceConc!9014)

(assert (=> d!380110 (= res!606988 (= (list!5255 lt!445617) (Cons!13771 t2!34 Nil!13771)))))

(assert (=> d!380110 (= lt!445617 (singleton!422 t2!34))))

(assert (=> d!380110 (= (singletonSeq!1000 t2!34) lt!445617)))

(declare-fun b!1346683 () Bool)

(assert (=> b!1346683 (= e!862436 (isBalanced!1316 (c!220192 lt!445617)))))

(assert (= (and d!380110 res!606988) b!1346683))

(declare-fun m!1505867 () Bool)

(assert (=> d!380110 m!1505867))

(declare-fun m!1505869 () Bool)

(assert (=> d!380110 m!1505869))

(declare-fun m!1505871 () Bool)

(assert (=> b!1346683 m!1505871))

(assert (=> b!1345615 d!380110))

(declare-fun b!1346684 () Bool)

(declare-fun res!606992 () Bool)

(declare-fun e!862441 () Bool)

(assert (=> b!1346684 (=> (not res!606992) (not e!862441))))

(assert (=> b!1346684 (= res!606992 (isEmpty!8221 (tail!1940 lt!444989)))))

(declare-fun b!1346685 () Bool)

(declare-fun e!862438 () Bool)

(declare-fun lt!445618 () Bool)

(declare-fun call!90605 () Bool)

(assert (=> b!1346685 (= e!862438 (= lt!445618 call!90605))))

(declare-fun b!1346686 () Bool)

(declare-fun e!862443 () Bool)

(assert (=> b!1346686 (= e!862443 (matchR!1694 (derivativeStep!939 lt!445061 (head!2403 lt!444989)) (tail!1940 lt!444989)))))

(declare-fun b!1346687 () Bool)

(declare-fun res!606989 () Bool)

(assert (=> b!1346687 (=> (not res!606989) (not e!862441))))

(assert (=> b!1346687 (= res!606989 (not call!90605))))

(declare-fun bm!90600 () Bool)

(assert (=> bm!90600 (= call!90605 (isEmpty!8221 lt!444989))))

(declare-fun b!1346688 () Bool)

(declare-fun e!862439 () Bool)

(assert (=> b!1346688 (= e!862438 e!862439)))

(declare-fun c!220556 () Bool)

(assert (=> b!1346688 (= c!220556 ((_ is EmptyLang!3701) lt!445061))))

(declare-fun b!1346689 () Bool)

(declare-fun res!606991 () Bool)

(declare-fun e!862437 () Bool)

(assert (=> b!1346689 (=> res!606991 e!862437)))

(assert (=> b!1346689 (= res!606991 (not (isEmpty!8221 (tail!1940 lt!444989))))))

(declare-fun b!1346690 () Bool)

(declare-fun res!606995 () Bool)

(declare-fun e!862442 () Bool)

(assert (=> b!1346690 (=> res!606995 e!862442)))

(assert (=> b!1346690 (= res!606995 e!862441)))

(declare-fun res!606996 () Bool)

(assert (=> b!1346690 (=> (not res!606996) (not e!862441))))

(assert (=> b!1346690 (= res!606996 lt!445618)))

(declare-fun d!380112 () Bool)

(assert (=> d!380112 e!862438))

(declare-fun c!220558 () Bool)

(assert (=> d!380112 (= c!220558 ((_ is EmptyExpr!3701) lt!445061))))

(assert (=> d!380112 (= lt!445618 e!862443)))

(declare-fun c!220557 () Bool)

(assert (=> d!380112 (= c!220557 (isEmpty!8221 lt!444989))))

(assert (=> d!380112 (validRegex!1601 lt!445061)))

(assert (=> d!380112 (= (matchR!1694 lt!445061 lt!444989) lt!445618)))

(declare-fun b!1346691 () Bool)

(declare-fun e!862440 () Bool)

(assert (=> b!1346691 (= e!862440 e!862437)))

(declare-fun res!606994 () Bool)

(assert (=> b!1346691 (=> res!606994 e!862437)))

(assert (=> b!1346691 (= res!606994 call!90605)))

(declare-fun b!1346692 () Bool)

(assert (=> b!1346692 (= e!862437 (not (= (head!2403 lt!444989) (c!220191 lt!445061))))))

(declare-fun b!1346693 () Bool)

(assert (=> b!1346693 (= e!862443 (nullable!1181 lt!445061))))

(declare-fun b!1346694 () Bool)

(assert (=> b!1346694 (= e!862439 (not lt!445618))))

(declare-fun b!1346695 () Bool)

(declare-fun res!606993 () Bool)

(assert (=> b!1346695 (=> res!606993 e!862442)))

(assert (=> b!1346695 (= res!606993 (not ((_ is ElementMatch!3701) lt!445061)))))

(assert (=> b!1346695 (= e!862439 e!862442)))

(declare-fun b!1346696 () Bool)

(assert (=> b!1346696 (= e!862442 e!862440)))

(declare-fun res!606990 () Bool)

(assert (=> b!1346696 (=> (not res!606990) (not e!862440))))

(assert (=> b!1346696 (= res!606990 (not lt!445618))))

(declare-fun b!1346697 () Bool)

(assert (=> b!1346697 (= e!862441 (= (head!2403 lt!444989) (c!220191 lt!445061)))))

(assert (= (and d!380112 c!220557) b!1346693))

(assert (= (and d!380112 (not c!220557)) b!1346686))

(assert (= (and d!380112 c!220558) b!1346685))

(assert (= (and d!380112 (not c!220558)) b!1346688))

(assert (= (and b!1346688 c!220556) b!1346694))

(assert (= (and b!1346688 (not c!220556)) b!1346695))

(assert (= (and b!1346695 (not res!606993)) b!1346690))

(assert (= (and b!1346690 res!606996) b!1346687))

(assert (= (and b!1346687 res!606989) b!1346684))

(assert (= (and b!1346684 res!606992) b!1346697))

(assert (= (and b!1346690 (not res!606995)) b!1346696))

(assert (= (and b!1346696 res!606990) b!1346691))

(assert (= (and b!1346691 (not res!606994)) b!1346689))

(assert (= (and b!1346689 (not res!606991)) b!1346692))

(assert (= (or b!1346685 b!1346687 b!1346691) bm!90600))

(assert (=> bm!90600 m!1504179))

(assert (=> d!380112 m!1504179))

(assert (=> d!380112 m!1504571))

(assert (=> b!1346692 m!1504183))

(assert (=> b!1346689 m!1504185))

(assert (=> b!1346689 m!1504185))

(assert (=> b!1346689 m!1504187))

(assert (=> b!1346686 m!1504183))

(assert (=> b!1346686 m!1504183))

(declare-fun m!1505873 () Bool)

(assert (=> b!1346686 m!1505873))

(assert (=> b!1346686 m!1504185))

(assert (=> b!1346686 m!1505873))

(assert (=> b!1346686 m!1504185))

(declare-fun m!1505875 () Bool)

(assert (=> b!1346686 m!1505875))

(declare-fun m!1505877 () Bool)

(assert (=> b!1346693 m!1505877))

(assert (=> b!1346684 m!1504185))

(assert (=> b!1346684 m!1504185))

(assert (=> b!1346684 m!1504187))

(assert (=> b!1346697 m!1504183))

(assert (=> b!1345707 d!380112))

(declare-fun d!380114 () Bool)

(declare-fun e!862447 () Bool)

(assert (=> d!380114 e!862447))

(declare-fun res!606998 () Bool)

(assert (=> d!380114 (=> (not res!606998) (not e!862447))))

(declare-fun lt!445620 () Regex!3701)

(assert (=> d!380114 (= res!606998 (dynLambda!6105 lambda!56700 lt!445620))))

(declare-fun e!862446 () Regex!3701)

(assert (=> d!380114 (= lt!445620 e!862446)))

(declare-fun c!220559 () Bool)

(declare-fun e!862444 () Bool)

(assert (=> d!380114 (= c!220559 e!862444)))

(declare-fun res!606997 () Bool)

(assert (=> d!380114 (=> (not res!606997) (not e!862444))))

(assert (=> d!380114 (= res!606997 ((_ is Cons!13772) (t!119743 (map!3041 rules!2550 lambda!56699))))))

(assert (=> d!380114 (exists!433 (t!119743 (map!3041 rules!2550 lambda!56699)) lambda!56700)))

(assert (=> d!380114 (= (getWitness!320 (t!119743 (map!3041 rules!2550 lambda!56699)) lambda!56700) lt!445620)))

(declare-fun b!1346698 () Bool)

(declare-fun lt!445619 () Unit!19871)

(declare-fun Unit!19887 () Unit!19871)

(assert (=> b!1346698 (= lt!445619 Unit!19887)))

(assert (=> b!1346698 false))

(declare-fun e!862445 () Regex!3701)

(assert (=> b!1346698 (= e!862445 (head!2404 (t!119743 (map!3041 rules!2550 lambda!56699))))))

(declare-fun b!1346699 () Bool)

(assert (=> b!1346699 (= e!862444 (dynLambda!6105 lambda!56700 (h!19173 (t!119743 (map!3041 rules!2550 lambda!56699)))))))

(declare-fun b!1346700 () Bool)

(assert (=> b!1346700 (= e!862446 (h!19173 (t!119743 (map!3041 rules!2550 lambda!56699))))))

(declare-fun b!1346701 () Bool)

(assert (=> b!1346701 (= e!862445 (getWitness!320 (t!119743 (t!119743 (map!3041 rules!2550 lambda!56699))) lambda!56700))))

(declare-fun b!1346702 () Bool)

(assert (=> b!1346702 (= e!862447 (contains!2528 (t!119743 (map!3041 rules!2550 lambda!56699)) lt!445620))))

(declare-fun b!1346703 () Bool)

(assert (=> b!1346703 (= e!862446 e!862445)))

(declare-fun c!220560 () Bool)

(assert (=> b!1346703 (= c!220560 ((_ is Cons!13772) (t!119743 (map!3041 rules!2550 lambda!56699))))))

(assert (= (and d!380114 res!606997) b!1346699))

(assert (= (and d!380114 c!220559) b!1346700))

(assert (= (and d!380114 (not c!220559)) b!1346703))

(assert (= (and b!1346703 c!220560) b!1346701))

(assert (= (and b!1346703 (not c!220560)) b!1346698))

(assert (= (and d!380114 res!606998) b!1346702))

(declare-fun b_lambda!40085 () Bool)

(assert (=> (not b_lambda!40085) (not d!380114)))

(declare-fun b_lambda!40087 () Bool)

(assert (=> (not b_lambda!40087) (not b!1346699)))

(declare-fun m!1505879 () Bool)

(assert (=> b!1346698 m!1505879))

(declare-fun m!1505881 () Bool)

(assert (=> d!380114 m!1505881))

(declare-fun m!1505883 () Bool)

(assert (=> d!380114 m!1505883))

(declare-fun m!1505885 () Bool)

(assert (=> b!1346701 m!1505885))

(declare-fun m!1505887 () Bool)

(assert (=> b!1346702 m!1505887))

(declare-fun m!1505889 () Bool)

(assert (=> b!1346699 m!1505889))

(assert (=> b!1345388 d!380114))

(declare-fun d!380116 () Bool)

(declare-fun c!220561 () Bool)

(assert (=> d!380116 (= c!220561 ((_ is Nil!13769) lt!445141))))

(declare-fun e!862448 () (InoxSet C!7692))

(assert (=> d!380116 (= (content!1964 lt!445141) e!862448)))

(declare-fun b!1346704 () Bool)

(assert (=> b!1346704 (= e!862448 ((as const (Array C!7692 Bool)) false))))

(declare-fun b!1346705 () Bool)

(assert (=> b!1346705 (= e!862448 ((_ map or) (store ((as const (Array C!7692 Bool)) false) (h!19170 lt!445141) true) (content!1964 (t!119740 lt!445141))))))

(assert (= (and d!380116 c!220561) b!1346704))

(assert (= (and d!380116 (not c!220561)) b!1346705))

(declare-fun m!1505891 () Bool)

(assert (=> b!1346705 m!1505891))

(declare-fun m!1505893 () Bool)

(assert (=> b!1346705 m!1505893))

(assert (=> d!379592 d!380116))

(declare-fun d!380118 () Bool)

(declare-fun c!220562 () Bool)

(assert (=> d!380118 (= c!220562 ((_ is Nil!13769) lt!444988))))

(declare-fun e!862449 () (InoxSet C!7692))

(assert (=> d!380118 (= (content!1964 lt!444988) e!862449)))

(declare-fun b!1346706 () Bool)

(assert (=> b!1346706 (= e!862449 ((as const (Array C!7692 Bool)) false))))

(declare-fun b!1346707 () Bool)

(assert (=> b!1346707 (= e!862449 ((_ map or) (store ((as const (Array C!7692 Bool)) false) (h!19170 lt!444988) true) (content!1964 (t!119740 lt!444988))))))

(assert (= (and d!380118 c!220562) b!1346706))

(assert (= (and d!380118 (not c!220562)) b!1346707))

(declare-fun m!1505895 () Bool)

(assert (=> b!1346707 m!1505895))

(assert (=> b!1346707 m!1505129))

(assert (=> d!379592 d!380118))

(declare-fun d!380120 () Bool)

(declare-fun c!220563 () Bool)

(assert (=> d!380120 (= c!220563 ((_ is Nil!13769) (getSuffix!549 lt!444989 lt!444988)))))

(declare-fun e!862450 () (InoxSet C!7692))

(assert (=> d!380120 (= (content!1964 (getSuffix!549 lt!444989 lt!444988)) e!862450)))

(declare-fun b!1346708 () Bool)

(assert (=> b!1346708 (= e!862450 ((as const (Array C!7692 Bool)) false))))

(declare-fun b!1346709 () Bool)

(assert (=> b!1346709 (= e!862450 ((_ map or) (store ((as const (Array C!7692 Bool)) false) (h!19170 (getSuffix!549 lt!444989 lt!444988)) true) (content!1964 (t!119740 (getSuffix!549 lt!444989 lt!444988)))))))

(assert (= (and d!380120 c!220563) b!1346708))

(assert (= (and d!380120 (not c!220563)) b!1346709))

(declare-fun m!1505897 () Bool)

(assert (=> b!1346709 m!1505897))

(declare-fun m!1505899 () Bool)

(assert (=> b!1346709 m!1505899))

(assert (=> d!379592 d!380120))

(declare-fun d!380122 () Bool)

(declare-fun c!220564 () Bool)

(assert (=> d!380122 (= c!220564 ((_ is Node!4536) (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34)))))))

(declare-fun e!862451 () Bool)

(assert (=> d!380122 (= (inv!18105 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34)))) e!862451)))

(declare-fun b!1346710 () Bool)

(assert (=> b!1346710 (= e!862451 (inv!18109 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34)))))))

(declare-fun b!1346711 () Bool)

(declare-fun e!862452 () Bool)

(assert (=> b!1346711 (= e!862451 e!862452)))

(declare-fun res!606999 () Bool)

(assert (=> b!1346711 (= res!606999 (not ((_ is Leaf!6926) (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34))))))))

(assert (=> b!1346711 (=> res!606999 e!862452)))

(declare-fun b!1346712 () Bool)

(assert (=> b!1346712 (= e!862452 (inv!18110 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34)))))))

(assert (= (and d!380122 c!220564) b!1346710))

(assert (= (and d!380122 (not c!220564)) b!1346711))

(assert (= (and b!1346711 (not res!606999)) b!1346712))

(declare-fun m!1505901 () Bool)

(assert (=> b!1346710 m!1505901))

(declare-fun m!1505903 () Bool)

(assert (=> b!1346712 m!1505903))

(assert (=> b!1345319 d!380122))

(declare-fun d!380124 () Bool)

(assert (=> d!380124 (= (list!5254 lt!445155) (list!5258 (c!220190 lt!445155)))))

(declare-fun bs!332829 () Bool)

(assert (= bs!332829 d!380124))

(declare-fun m!1505905 () Bool)

(assert (=> bs!332829 m!1505905))

(assert (=> d!379604 d!380124))

(declare-fun d!380126 () Bool)

(declare-fun c!220567 () Bool)

(assert (=> d!380126 (= c!220567 ((_ is Cons!13771) (list!5255 (singletonSeq!1000 t1!34))))))

(declare-fun e!862455 () List!13835)

(assert (=> d!380126 (= (printList!590 thiss!19762 (list!5255 (singletonSeq!1000 t1!34))) e!862455)))

(declare-fun b!1346717 () Bool)

(assert (=> b!1346717 (= e!862455 (++!3530 (list!5254 (charsOf!1359 (h!19172 (list!5255 (singletonSeq!1000 t1!34))))) (printList!590 thiss!19762 (t!119742 (list!5255 (singletonSeq!1000 t1!34))))))))

(declare-fun b!1346718 () Bool)

(assert (=> b!1346718 (= e!862455 Nil!13769)))

(assert (= (and d!380126 c!220567) b!1346717))

(assert (= (and d!380126 (not c!220567)) b!1346718))

(declare-fun m!1505907 () Bool)

(assert (=> b!1346717 m!1505907))

(assert (=> b!1346717 m!1505907))

(declare-fun m!1505909 () Bool)

(assert (=> b!1346717 m!1505909))

(declare-fun m!1505911 () Bool)

(assert (=> b!1346717 m!1505911))

(assert (=> b!1346717 m!1505909))

(assert (=> b!1346717 m!1505911))

(declare-fun m!1505913 () Bool)

(assert (=> b!1346717 m!1505913))

(assert (=> d!379604 d!380126))

(declare-fun d!380128 () Bool)

(assert (=> d!380128 (= (list!5255 (singletonSeq!1000 t1!34)) (list!5259 (c!220192 (singletonSeq!1000 t1!34))))))

(declare-fun bs!332830 () Bool)

(assert (= bs!332830 d!380128))

(declare-fun m!1505915 () Bool)

(assert (=> bs!332830 m!1505915))

(assert (=> d!379604 d!380128))

(declare-fun d!380130 () Bool)

(declare-fun lt!445636 () BalanceConc!9012)

(declare-fun printListTailRec!239 (LexerInterface!2082 List!13837 List!13835) List!13835)

(declare-fun dropList!385 (BalanceConc!9014 Int) List!13837)

(assert (=> d!380130 (= (list!5254 lt!445636) (printListTailRec!239 thiss!19762 (dropList!385 (singletonSeq!1000 t1!34) 0) (list!5254 (BalanceConc!9013 Empty!4536))))))

(declare-fun e!862460 () BalanceConc!9012)

(assert (=> d!380130 (= lt!445636 e!862460)))

(declare-fun c!220570 () Bool)

(assert (=> d!380130 (= c!220570 (>= 0 (size!11244 (singletonSeq!1000 t1!34))))))

(declare-fun e!862461 () Bool)

(assert (=> d!380130 e!862461))

(declare-fun res!607002 () Bool)

(assert (=> d!380130 (=> (not res!607002) (not e!862461))))

(assert (=> d!380130 (= res!607002 (>= 0 0))))

(assert (=> d!380130 (= (printTailRec!572 thiss!19762 (singletonSeq!1000 t1!34) 0 (BalanceConc!9013 Empty!4536)) lt!445636)))

(declare-fun b!1346725 () Bool)

(assert (=> b!1346725 (= e!862461 (<= 0 (size!11244 (singletonSeq!1000 t1!34))))))

(declare-fun b!1346726 () Bool)

(assert (=> b!1346726 (= e!862460 (BalanceConc!9013 Empty!4536))))

(declare-fun b!1346727 () Bool)

(assert (=> b!1346727 (= e!862460 (printTailRec!572 thiss!19762 (singletonSeq!1000 t1!34) (+ 0 1) (++!3532 (BalanceConc!9013 Empty!4536) (charsOf!1359 (apply!3283 (singletonSeq!1000 t1!34) 0)))))))

(declare-fun lt!445640 () List!13837)

(assert (=> b!1346727 (= lt!445640 (list!5255 (singletonSeq!1000 t1!34)))))

(declare-fun lt!445635 () Unit!19871)

(declare-fun lemmaDropApply!430 (List!13837 Int) Unit!19871)

(assert (=> b!1346727 (= lt!445635 (lemmaDropApply!430 lt!445640 0))))

(declare-fun head!2407 (List!13837) Token!4436)

(declare-fun drop!671 (List!13837 Int) List!13837)

(declare-fun apply!3289 (List!13837 Int) Token!4436)

(assert (=> b!1346727 (= (head!2407 (drop!671 lt!445640 0)) (apply!3289 lt!445640 0))))

(declare-fun lt!445637 () Unit!19871)

(assert (=> b!1346727 (= lt!445637 lt!445635)))

(declare-fun lt!445639 () List!13837)

(assert (=> b!1346727 (= lt!445639 (list!5255 (singletonSeq!1000 t1!34)))))

(declare-fun lt!445641 () Unit!19871)

(declare-fun lemmaDropTail!410 (List!13837 Int) Unit!19871)

(assert (=> b!1346727 (= lt!445641 (lemmaDropTail!410 lt!445639 0))))

(declare-fun tail!1944 (List!13837) List!13837)

(assert (=> b!1346727 (= (tail!1944 (drop!671 lt!445639 0)) (drop!671 lt!445639 (+ 0 1)))))

(declare-fun lt!445638 () Unit!19871)

(assert (=> b!1346727 (= lt!445638 lt!445641)))

(assert (= (and d!380130 res!607002) b!1346725))

(assert (= (and d!380130 c!220570) b!1346726))

(assert (= (and d!380130 (not c!220570)) b!1346727))

(assert (=> d!380130 m!1505671))

(declare-fun m!1505917 () Bool)

(assert (=> d!380130 m!1505917))

(assert (=> d!380130 m!1505671))

(declare-fun m!1505919 () Bool)

(assert (=> d!380130 m!1505919))

(assert (=> d!380130 m!1503831))

(assert (=> d!380130 m!1505917))

(assert (=> d!380130 m!1503831))

(declare-fun m!1505921 () Bool)

(assert (=> d!380130 m!1505921))

(declare-fun m!1505923 () Bool)

(assert (=> d!380130 m!1505923))

(assert (=> b!1346725 m!1503831))

(assert (=> b!1346725 m!1505921))

(declare-fun m!1505925 () Bool)

(assert (=> b!1346727 m!1505925))

(declare-fun m!1505927 () Bool)

(assert (=> b!1346727 m!1505927))

(declare-fun m!1505929 () Bool)

(assert (=> b!1346727 m!1505929))

(declare-fun m!1505931 () Bool)

(assert (=> b!1346727 m!1505931))

(declare-fun m!1505933 () Bool)

(assert (=> b!1346727 m!1505933))

(assert (=> b!1346727 m!1505925))

(declare-fun m!1505935 () Bool)

(assert (=> b!1346727 m!1505935))

(declare-fun m!1505937 () Bool)

(assert (=> b!1346727 m!1505937))

(declare-fun m!1505939 () Bool)

(assert (=> b!1346727 m!1505939))

(assert (=> b!1346727 m!1505935))

(declare-fun m!1505941 () Bool)

(assert (=> b!1346727 m!1505941))

(assert (=> b!1346727 m!1505937))

(declare-fun m!1505943 () Bool)

(assert (=> b!1346727 m!1505943))

(declare-fun m!1505945 () Bool)

(assert (=> b!1346727 m!1505945))

(assert (=> b!1346727 m!1503831))

(assert (=> b!1346727 m!1505933))

(assert (=> b!1346727 m!1503831))

(assert (=> b!1346727 m!1504451))

(assert (=> b!1346727 m!1503831))

(assert (=> b!1346727 m!1505927))

(declare-fun m!1505947 () Bool)

(assert (=> b!1346727 m!1505947))

(assert (=> d!379604 d!380130))

(assert (=> d!379606 d!379612))

(declare-fun d!380132 () Bool)

(assert (=> d!380132 true))

(assert (=> d!380132 true))

(declare-fun res!607005 () Bool)

(assert (=> d!380132 (= (choose!8269 lambda!56698) res!607005)))

(assert (=> d!379488 d!380132))

(declare-fun d!380134 () Bool)

(assert (=> d!380134 (= (list!5254 (_2!7553 lt!445152)) (list!5258 (c!220190 (_2!7553 lt!445152))))))

(declare-fun bs!332831 () Bool)

(assert (= bs!332831 d!380134))

(declare-fun m!1505949 () Bool)

(assert (=> bs!332831 m!1505949))

(assert (=> b!1345626 d!380134))

(assert (=> b!1345626 d!379480))

(assert (=> b!1345626 d!379482))

(declare-fun d!380136 () Bool)

(assert (=> d!380136 (= (list!5255 lt!445164) (list!5259 (c!220192 lt!445164)))))

(declare-fun bs!332832 () Bool)

(assert (= bs!332832 d!380136))

(declare-fun m!1505951 () Bool)

(assert (=> bs!332832 m!1505951))

(assert (=> d!379608 d!380136))

(declare-fun d!380138 () Bool)

(declare-fun e!862464 () Bool)

(assert (=> d!380138 e!862464))

(declare-fun res!607008 () Bool)

(assert (=> d!380138 (=> (not res!607008) (not e!862464))))

(declare-fun lt!445644 () BalanceConc!9014)

(assert (=> d!380138 (= res!607008 (= (list!5255 lt!445644) (Cons!13771 t1!34 Nil!13771)))))

(declare-fun choose!8275 (Token!4436) BalanceConc!9014)

(assert (=> d!380138 (= lt!445644 (choose!8275 t1!34))))

(assert (=> d!380138 (= (singleton!422 t1!34) lt!445644)))

(declare-fun b!1346730 () Bool)

(assert (=> b!1346730 (= e!862464 (isBalanced!1316 (c!220192 lt!445644)))))

(assert (= (and d!380138 res!607008) b!1346730))

(declare-fun m!1505953 () Bool)

(assert (=> d!380138 m!1505953))

(declare-fun m!1505955 () Bool)

(assert (=> d!380138 m!1505955))

(declare-fun m!1505957 () Bool)

(assert (=> b!1346730 m!1505957))

(assert (=> d!379608 d!380138))

(declare-fun d!380140 () Bool)

(declare-fun c!220573 () Bool)

(assert (=> d!380140 (= c!220573 ((_ is Nil!13772) (map!3041 rules!2550 lambda!56699)))))

(declare-fun e!862467 () (InoxSet Regex!3701))

(assert (=> d!380140 (= (content!1965 (map!3041 rules!2550 lambda!56699)) e!862467)))

(declare-fun b!1346735 () Bool)

(assert (=> b!1346735 (= e!862467 ((as const (Array Regex!3701 Bool)) false))))

(declare-fun b!1346736 () Bool)

(assert (=> b!1346736 (= e!862467 ((_ map or) (store ((as const (Array Regex!3701 Bool)) false) (h!19173 (map!3041 rules!2550 lambda!56699)) true) (content!1965 (t!119743 (map!3041 rules!2550 lambda!56699)))))))

(assert (= (and d!380140 c!220573) b!1346735))

(assert (= (and d!380140 (not c!220573)) b!1346736))

(declare-fun m!1505959 () Bool)

(assert (=> b!1346736 m!1505959))

(declare-fun m!1505961 () Bool)

(assert (=> b!1346736 m!1505961))

(assert (=> d!379460 d!380140))

(assert (=> b!1345419 d!380068))

(assert (=> b!1345419 d!379918))

(declare-fun d!380142 () Bool)

(declare-fun lt!445645 () Int)

(assert (=> d!380142 (>= lt!445645 0)))

(declare-fun e!862468 () Int)

(assert (=> d!380142 (= lt!445645 e!862468)))

(declare-fun c!220574 () Bool)

(assert (=> d!380142 (= c!220574 ((_ is Nil!13769) (originalCharacters!3249 t2!34)))))

(assert (=> d!380142 (= (size!11239 (originalCharacters!3249 t2!34)) lt!445645)))

(declare-fun b!1346737 () Bool)

(assert (=> b!1346737 (= e!862468 0)))

(declare-fun b!1346738 () Bool)

(assert (=> b!1346738 (= e!862468 (+ 1 (size!11239 (t!119740 (originalCharacters!3249 t2!34)))))))

(assert (= (and d!380142 c!220574) b!1346737))

(assert (= (and d!380142 (not c!220574)) b!1346738))

(declare-fun m!1505963 () Bool)

(assert (=> b!1346738 m!1505963))

(assert (=> b!1345667 d!380142))

(assert (=> d!379484 d!380118))

(declare-fun d!380144 () Bool)

(declare-fun lt!445648 () Bool)

(assert (=> d!380144 (= lt!445648 (isEmpty!8223 (list!5255 (_1!7553 lt!445152))))))

(declare-fun isEmpty!8230 (Conc!4537) Bool)

(assert (=> d!380144 (= lt!445648 (isEmpty!8230 (c!220192 (_1!7553 lt!445152))))))

(assert (=> d!380144 (= (isEmpty!8225 (_1!7553 lt!445152)) lt!445648)))

(declare-fun bs!332833 () Bool)

(assert (= bs!332833 d!380144))

(assert (=> bs!332833 m!1504511))

(assert (=> bs!332833 m!1504511))

(declare-fun m!1505965 () Bool)

(assert (=> bs!332833 m!1505965))

(declare-fun m!1505967 () Bool)

(assert (=> bs!332833 m!1505967))

(assert (=> b!1345630 d!380144))

(declare-fun b!1346739 () Bool)

(declare-fun e!862469 () tuple2!13332)

(assert (=> b!1346739 (= e!862469 (tuple2!13333 Nil!13771 (_2!7555 (v!21316 lt!445074))))))

(declare-fun d!380146 () Bool)

(declare-fun e!862471 () Bool)

(assert (=> d!380146 e!862471))

(declare-fun c!220576 () Bool)

(declare-fun lt!445649 () tuple2!13332)

(assert (=> d!380146 (= c!220576 (> (size!11242 (_1!7552 lt!445649)) 0))))

(assert (=> d!380146 (= lt!445649 e!862469)))

(declare-fun c!220575 () Bool)

(declare-fun lt!445650 () Option!2634)

(assert (=> d!380146 (= c!220575 ((_ is Some!2633) lt!445650))))

(assert (=> d!380146 (= lt!445650 (maxPrefix!1064 thiss!19762 rules!2550 (_2!7555 (v!21316 lt!445074))))))

(assert (=> d!380146 (= (lexList!600 thiss!19762 rules!2550 (_2!7555 (v!21316 lt!445074))) lt!445649)))

(declare-fun b!1346740 () Bool)

(declare-fun e!862470 () Bool)

(assert (=> b!1346740 (= e!862470 (not (isEmpty!8223 (_1!7552 lt!445649))))))

(declare-fun b!1346741 () Bool)

(declare-fun lt!445651 () tuple2!13332)

(assert (=> b!1346741 (= e!862469 (tuple2!13333 (Cons!13771 (_1!7555 (v!21316 lt!445650)) (_1!7552 lt!445651)) (_2!7552 lt!445651)))))

(assert (=> b!1346741 (= lt!445651 (lexList!600 thiss!19762 rules!2550 (_2!7555 (v!21316 lt!445650))))))

(declare-fun b!1346742 () Bool)

(assert (=> b!1346742 (= e!862471 (= (_2!7552 lt!445649) (_2!7555 (v!21316 lt!445074))))))

(declare-fun b!1346743 () Bool)

(assert (=> b!1346743 (= e!862471 e!862470)))

(declare-fun res!607009 () Bool)

(assert (=> b!1346743 (= res!607009 (< (size!11239 (_2!7552 lt!445649)) (size!11239 (_2!7555 (v!21316 lt!445074)))))))

(assert (=> b!1346743 (=> (not res!607009) (not e!862470))))

(assert (= (and d!380146 c!220575) b!1346741))

(assert (= (and d!380146 (not c!220575)) b!1346739))

(assert (= (and d!380146 c!220576) b!1346743))

(assert (= (and d!380146 (not c!220576)) b!1346742))

(assert (= (and b!1346743 res!607009) b!1346740))

(declare-fun m!1505969 () Bool)

(assert (=> d!380146 m!1505969))

(declare-fun m!1505971 () Bool)

(assert (=> d!380146 m!1505971))

(declare-fun m!1505973 () Bool)

(assert (=> b!1346740 m!1505973))

(declare-fun m!1505975 () Bool)

(assert (=> b!1346741 m!1505975))

(declare-fun m!1505977 () Bool)

(assert (=> b!1346743 m!1505977))

(declare-fun m!1505979 () Bool)

(assert (=> b!1346743 m!1505979))

(assert (=> b!1345464 d!380146))

(declare-fun d!380148 () Bool)

(assert (=> d!380148 (= (list!5255 (_1!7553 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t2!34))))) (list!5259 (c!220192 (_1!7553 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t2!34)))))))))

(declare-fun bs!332834 () Bool)

(assert (= bs!332834 d!380148))

(declare-fun m!1505981 () Bool)

(assert (=> bs!332834 m!1505981))

(assert (=> d!379600 d!380148))

(declare-fun d!380150 () Bool)

(declare-fun lt!445652 () Int)

(assert (=> d!380150 (= lt!445652 (size!11242 (list!5255 (_1!7553 lt!445149))))))

(assert (=> d!380150 (= lt!445652 (size!11246 (c!220192 (_1!7553 lt!445149))))))

(assert (=> d!380150 (= (size!11244 (_1!7553 lt!445149)) lt!445652)))

(declare-fun bs!332835 () Bool)

(assert (= bs!332835 d!380150))

(declare-fun m!1505983 () Bool)

(assert (=> bs!332835 m!1505983))

(assert (=> bs!332835 m!1505983))

(declare-fun m!1505985 () Bool)

(assert (=> bs!332835 m!1505985))

(declare-fun m!1505987 () Bool)

(assert (=> bs!332835 m!1505987))

(assert (=> d!379600 d!380150))

(assert (=> d!379600 d!380108))

(assert (=> d!379600 d!380110))

(assert (=> d!379600 d!379478))

(assert (=> d!379600 d!380106))

(declare-fun d!380152 () Bool)

(assert (=> d!380152 (= (list!5255 (singletonSeq!1000 t2!34)) (list!5259 (c!220192 (singletonSeq!1000 t2!34))))))

(declare-fun bs!332836 () Bool)

(assert (= bs!332836 d!380152))

(declare-fun m!1505989 () Bool)

(assert (=> bs!332836 m!1505989))

(assert (=> d!379600 d!380152))

(declare-fun d!380154 () Bool)

(declare-fun c!220577 () Bool)

(assert (=> d!380154 (= c!220577 ((_ is Nil!13769) lt!445040))))

(declare-fun e!862472 () (InoxSet C!7692))

(assert (=> d!380154 (= (content!1964 lt!445040) e!862472)))

(declare-fun b!1346744 () Bool)

(assert (=> b!1346744 (= e!862472 ((as const (Array C!7692 Bool)) false))))

(declare-fun b!1346745 () Bool)

(assert (=> b!1346745 (= e!862472 ((_ map or) (store ((as const (Array C!7692 Bool)) false) (h!19170 lt!445040) true) (content!1964 (t!119740 lt!445040))))))

(assert (= (and d!380154 c!220577) b!1346744))

(assert (= (and d!380154 (not c!220577)) b!1346745))

(declare-fun m!1505991 () Bool)

(assert (=> b!1346745 m!1505991))

(declare-fun m!1505993 () Bool)

(assert (=> b!1346745 m!1505993))

(assert (=> d!379456 d!380154))

(declare-fun d!380156 () Bool)

(declare-fun c!220578 () Bool)

(assert (=> d!380156 (= c!220578 ((_ is Nil!13769) lt!444984))))

(declare-fun e!862473 () (InoxSet C!7692))

(assert (=> d!380156 (= (content!1964 lt!444984) e!862473)))

(declare-fun b!1346746 () Bool)

(assert (=> b!1346746 (= e!862473 ((as const (Array C!7692 Bool)) false))))

(declare-fun b!1346747 () Bool)

(assert (=> b!1346747 (= e!862473 ((_ map or) (store ((as const (Array C!7692 Bool)) false) (h!19170 lt!444984) true) (content!1964 (t!119740 lt!444984))))))

(assert (= (and d!380156 c!220578) b!1346746))

(assert (= (and d!380156 (not c!220578)) b!1346747))

(declare-fun m!1505995 () Bool)

(assert (=> b!1346747 m!1505995))

(assert (=> b!1346747 m!1505235))

(assert (=> d!379456 d!380156))

(declare-fun d!380158 () Bool)

(declare-fun c!220579 () Bool)

(assert (=> d!380158 (= c!220579 ((_ is Nil!13769) (Cons!13769 lt!444978 Nil!13769)))))

(declare-fun e!862474 () (InoxSet C!7692))

(assert (=> d!380158 (= (content!1964 (Cons!13769 lt!444978 Nil!13769)) e!862474)))

(declare-fun b!1346748 () Bool)

(assert (=> b!1346748 (= e!862474 ((as const (Array C!7692 Bool)) false))))

(declare-fun b!1346749 () Bool)

(assert (=> b!1346749 (= e!862474 ((_ map or) (store ((as const (Array C!7692 Bool)) false) (h!19170 (Cons!13769 lt!444978 Nil!13769)) true) (content!1964 (t!119740 (Cons!13769 lt!444978 Nil!13769)))))))

(assert (= (and d!380158 c!220579) b!1346748))

(assert (= (and d!380158 (not c!220579)) b!1346749))

(declare-fun m!1505997 () Bool)

(assert (=> b!1346749 m!1505997))

(declare-fun m!1505999 () Bool)

(assert (=> b!1346749 m!1505999))

(assert (=> d!379456 d!380158))

(declare-fun d!380160 () Bool)

(declare-fun lt!445653 () Int)

(assert (=> d!380160 (>= lt!445653 0)))

(declare-fun e!862475 () Int)

(assert (=> d!380160 (= lt!445653 e!862475)))

(declare-fun c!220580 () Bool)

(assert (=> d!380160 (= c!220580 ((_ is Nil!13769) lt!445141))))

(assert (=> d!380160 (= (size!11239 lt!445141) lt!445653)))

(declare-fun b!1346750 () Bool)

(assert (=> b!1346750 (= e!862475 0)))

(declare-fun b!1346751 () Bool)

(assert (=> b!1346751 (= e!862475 (+ 1 (size!11239 (t!119740 lt!445141))))))

(assert (= (and d!380160 c!220580) b!1346750))

(assert (= (and d!380160 (not c!220580)) b!1346751))

(declare-fun m!1506001 () Bool)

(assert (=> b!1346751 m!1506001))

(assert (=> b!1345602 d!380160))

(declare-fun d!380162 () Bool)

(declare-fun lt!445654 () Int)

(assert (=> d!380162 (>= lt!445654 0)))

(declare-fun e!862476 () Int)

(assert (=> d!380162 (= lt!445654 e!862476)))

(declare-fun c!220581 () Bool)

(assert (=> d!380162 (= c!220581 ((_ is Nil!13769) lt!444988))))

(assert (=> d!380162 (= (size!11239 lt!444988) lt!445654)))

(declare-fun b!1346752 () Bool)

(assert (=> b!1346752 (= e!862476 0)))

(declare-fun b!1346753 () Bool)

(assert (=> b!1346753 (= e!862476 (+ 1 (size!11239 (t!119740 lt!444988))))))

(assert (= (and d!380162 c!220581) b!1346752))

(assert (= (and d!380162 (not c!220581)) b!1346753))

(assert (=> b!1346753 m!1505223))

(assert (=> b!1345602 d!380162))

(declare-fun d!380164 () Bool)

(declare-fun lt!445655 () Int)

(assert (=> d!380164 (>= lt!445655 0)))

(declare-fun e!862477 () Int)

(assert (=> d!380164 (= lt!445655 e!862477)))

(declare-fun c!220582 () Bool)

(assert (=> d!380164 (= c!220582 ((_ is Nil!13769) (getSuffix!549 lt!444989 lt!444988)))))

(assert (=> d!380164 (= (size!11239 (getSuffix!549 lt!444989 lt!444988)) lt!445655)))

(declare-fun b!1346754 () Bool)

(assert (=> b!1346754 (= e!862477 0)))

(declare-fun b!1346755 () Bool)

(assert (=> b!1346755 (= e!862477 (+ 1 (size!11239 (t!119740 (getSuffix!549 lt!444989 lt!444988)))))))

(assert (= (and d!380164 c!220582) b!1346754))

(assert (= (and d!380164 (not c!220582)) b!1346755))

(declare-fun m!1506003 () Bool)

(assert (=> b!1346755 m!1506003))

(assert (=> b!1345602 d!380164))

(declare-fun d!380166 () Bool)

(declare-fun charsToInt!0 (List!13834) (_ BitVec 32))

(assert (=> d!380166 (= (inv!16 (value!77662 t1!34)) (= (charsToInt!0 (text!17786 (value!77662 t1!34))) (value!77653 (value!77662 t1!34))))))

(declare-fun bs!332837 () Bool)

(assert (= bs!332837 d!380166))

(declare-fun m!1506005 () Bool)

(assert (=> bs!332837 m!1506005))

(assert (=> b!1345196 d!380166))

(assert (=> b!1345245 d!379506))

(declare-fun d!380168 () Bool)

(declare-fun lt!445656 () Bool)

(assert (=> d!380168 (= lt!445656 (isEmpty!8221 (list!5254 (_2!7553 lt!445140))))))

(assert (=> d!380168 (= lt!445656 (isEmpty!8224 (c!220190 (_2!7553 lt!445140))))))

(assert (=> d!380168 (= (isEmpty!8216 (_2!7553 lt!445140)) lt!445656)))

(declare-fun bs!332838 () Bool)

(assert (= bs!332838 d!380168))

(declare-fun m!1506007 () Bool)

(assert (=> bs!332838 m!1506007))

(assert (=> bs!332838 m!1506007))

(declare-fun m!1506009 () Bool)

(assert (=> bs!332838 m!1506009))

(declare-fun m!1506011 () Bool)

(assert (=> bs!332838 m!1506011))

(assert (=> b!1345597 d!380168))

(declare-fun d!380170 () Bool)

(assert (=> d!380170 (= (inv!15 (value!77662 t2!34)) (= (charsToBigInt!0 (text!17788 (value!77662 t2!34)) 0) (value!77657 (value!77662 t2!34))))))

(declare-fun bs!332839 () Bool)

(assert (= bs!332839 d!380170))

(declare-fun m!1506013 () Bool)

(assert (=> bs!332839 m!1506013))

(assert (=> b!1345204 d!380170))

(declare-fun b!1346766 () Bool)

(declare-fun e!862483 () List!13835)

(declare-fun list!5263 (IArray!9077) List!13835)

(assert (=> b!1346766 (= e!862483 (list!5263 (xs!7255 (c!220190 lt!444983))))))

(declare-fun b!1346765 () Bool)

(declare-fun e!862482 () List!13835)

(assert (=> b!1346765 (= e!862482 e!862483)))

(declare-fun c!220588 () Bool)

(assert (=> b!1346765 (= c!220588 ((_ is Leaf!6926) (c!220190 lt!444983)))))

(declare-fun d!380172 () Bool)

(declare-fun c!220587 () Bool)

(assert (=> d!380172 (= c!220587 ((_ is Empty!4536) (c!220190 lt!444983)))))

(assert (=> d!380172 (= (list!5258 (c!220190 lt!444983)) e!862482)))

(declare-fun b!1346764 () Bool)

(assert (=> b!1346764 (= e!862482 Nil!13769)))

(declare-fun b!1346767 () Bool)

(assert (=> b!1346767 (= e!862483 (++!3530 (list!5258 (left!11803 (c!220190 lt!444983))) (list!5258 (right!12133 (c!220190 lt!444983)))))))

(assert (= (and d!380172 c!220587) b!1346764))

(assert (= (and d!380172 (not c!220587)) b!1346765))

(assert (= (and b!1346765 c!220588) b!1346766))

(assert (= (and b!1346765 (not c!220588)) b!1346767))

(declare-fun m!1506015 () Bool)

(assert (=> b!1346766 m!1506015))

(assert (=> b!1346767 m!1505159))

(assert (=> b!1346767 m!1505161))

(assert (=> b!1346767 m!1505159))

(assert (=> b!1346767 m!1505161))

(declare-fun m!1506017 () Bool)

(assert (=> b!1346767 m!1506017))

(assert (=> d!379454 d!380172))

(declare-fun b!1346768 () Bool)

(declare-fun res!607013 () Bool)

(declare-fun e!862488 () Bool)

(assert (=> b!1346768 (=> (not res!607013) (not e!862488))))

(assert (=> b!1346768 (= res!607013 (isEmpty!8221 (tail!1940 lt!445147)))))

(declare-fun b!1346769 () Bool)

(declare-fun e!862485 () Bool)

(declare-fun lt!445657 () Bool)

(declare-fun call!90606 () Bool)

(assert (=> b!1346769 (= e!862485 (= lt!445657 call!90606))))

(declare-fun b!1346770 () Bool)

(declare-fun e!862490 () Bool)

(assert (=> b!1346770 (= e!862490 (matchR!1694 (derivativeStep!939 lt!444985 (head!2403 lt!445147)) (tail!1940 lt!445147)))))

(declare-fun b!1346771 () Bool)

(declare-fun res!607010 () Bool)

(assert (=> b!1346771 (=> (not res!607010) (not e!862488))))

(assert (=> b!1346771 (= res!607010 (not call!90606))))

(declare-fun bm!90601 () Bool)

(assert (=> bm!90601 (= call!90606 (isEmpty!8221 lt!445147))))

(declare-fun b!1346772 () Bool)

(declare-fun e!862486 () Bool)

(assert (=> b!1346772 (= e!862485 e!862486)))

(declare-fun c!220589 () Bool)

(assert (=> b!1346772 (= c!220589 ((_ is EmptyLang!3701) lt!444985))))

(declare-fun b!1346773 () Bool)

(declare-fun res!607012 () Bool)

(declare-fun e!862484 () Bool)

(assert (=> b!1346773 (=> res!607012 e!862484)))

(assert (=> b!1346773 (= res!607012 (not (isEmpty!8221 (tail!1940 lt!445147))))))

(declare-fun b!1346774 () Bool)

(declare-fun res!607016 () Bool)

(declare-fun e!862489 () Bool)

(assert (=> b!1346774 (=> res!607016 e!862489)))

(assert (=> b!1346774 (= res!607016 e!862488)))

(declare-fun res!607017 () Bool)

(assert (=> b!1346774 (=> (not res!607017) (not e!862488))))

(assert (=> b!1346774 (= res!607017 lt!445657)))

(declare-fun d!380174 () Bool)

(assert (=> d!380174 e!862485))

(declare-fun c!220591 () Bool)

(assert (=> d!380174 (= c!220591 ((_ is EmptyExpr!3701) lt!444985))))

(assert (=> d!380174 (= lt!445657 e!862490)))

(declare-fun c!220590 () Bool)

(assert (=> d!380174 (= c!220590 (isEmpty!8221 lt!445147))))

(assert (=> d!380174 (validRegex!1601 lt!444985)))

(assert (=> d!380174 (= (matchR!1694 lt!444985 lt!445147) lt!445657)))

(declare-fun b!1346775 () Bool)

(declare-fun e!862487 () Bool)

(assert (=> b!1346775 (= e!862487 e!862484)))

(declare-fun res!607015 () Bool)

(assert (=> b!1346775 (=> res!607015 e!862484)))

(assert (=> b!1346775 (= res!607015 call!90606)))

(declare-fun b!1346776 () Bool)

(assert (=> b!1346776 (= e!862484 (not (= (head!2403 lt!445147) (c!220191 lt!444985))))))

(declare-fun b!1346777 () Bool)

(assert (=> b!1346777 (= e!862490 (nullable!1181 lt!444985))))

(declare-fun b!1346778 () Bool)

(assert (=> b!1346778 (= e!862486 (not lt!445657))))

(declare-fun b!1346779 () Bool)

(declare-fun res!607014 () Bool)

(assert (=> b!1346779 (=> res!607014 e!862489)))

(assert (=> b!1346779 (= res!607014 (not ((_ is ElementMatch!3701) lt!444985)))))

(assert (=> b!1346779 (= e!862486 e!862489)))

(declare-fun b!1346780 () Bool)

(assert (=> b!1346780 (= e!862489 e!862487)))

(declare-fun res!607011 () Bool)

(assert (=> b!1346780 (=> (not res!607011) (not e!862487))))

(assert (=> b!1346780 (= res!607011 (not lt!445657))))

(declare-fun b!1346781 () Bool)

(assert (=> b!1346781 (= e!862488 (= (head!2403 lt!445147) (c!220191 lt!444985)))))

(assert (= (and d!380174 c!220590) b!1346777))

(assert (= (and d!380174 (not c!220590)) b!1346770))

(assert (= (and d!380174 c!220591) b!1346769))

(assert (= (and d!380174 (not c!220591)) b!1346772))

(assert (= (and b!1346772 c!220589) b!1346778))

(assert (= (and b!1346772 (not c!220589)) b!1346779))

(assert (= (and b!1346779 (not res!607014)) b!1346774))

(assert (= (and b!1346774 res!607017) b!1346771))

(assert (= (and b!1346771 res!607010) b!1346768))

(assert (= (and b!1346768 res!607013) b!1346781))

(assert (= (and b!1346774 (not res!607016)) b!1346780))

(assert (= (and b!1346780 res!607011) b!1346775))

(assert (= (and b!1346775 (not res!607015)) b!1346773))

(assert (= (and b!1346773 (not res!607012)) b!1346776))

(assert (= (or b!1346769 b!1346771 b!1346775) bm!90601))

(declare-fun m!1506019 () Bool)

(assert (=> bm!90601 m!1506019))

(assert (=> d!380174 m!1506019))

(assert (=> d!380174 m!1504181))

(declare-fun m!1506021 () Bool)

(assert (=> b!1346776 m!1506021))

(declare-fun m!1506023 () Bool)

(assert (=> b!1346773 m!1506023))

(assert (=> b!1346773 m!1506023))

(declare-fun m!1506025 () Bool)

(assert (=> b!1346773 m!1506025))

(assert (=> b!1346770 m!1506021))

(assert (=> b!1346770 m!1506021))

(declare-fun m!1506027 () Bool)

(assert (=> b!1346770 m!1506027))

(assert (=> b!1346770 m!1506023))

(assert (=> b!1346770 m!1506027))

(assert (=> b!1346770 m!1506023))

(declare-fun m!1506029 () Bool)

(assert (=> b!1346770 m!1506029))

(assert (=> b!1346777 m!1504193))

(assert (=> b!1346768 m!1506023))

(assert (=> b!1346768 m!1506023))

(assert (=> b!1346768 m!1506025))

(assert (=> b!1346781 m!1506021))

(assert (=> bs!332650 d!380174))

(declare-fun d!380176 () Bool)

(declare-fun lt!445658 () Bool)

(assert (=> d!380176 (= lt!445658 (isEmpty!8221 (list!5254 (_2!7553 lt!445149))))))

(assert (=> d!380176 (= lt!445658 (isEmpty!8224 (c!220190 (_2!7553 lt!445149))))))

(assert (=> d!380176 (= (isEmpty!8216 (_2!7553 lt!445149)) lt!445658)))

(declare-fun bs!332840 () Bool)

(assert (= bs!332840 d!380176))

(declare-fun m!1506031 () Bool)

(assert (=> bs!332840 m!1506031))

(assert (=> bs!332840 m!1506031))

(declare-fun m!1506033 () Bool)

(assert (=> bs!332840 m!1506033))

(declare-fun m!1506035 () Bool)

(assert (=> bs!332840 m!1506035))

(assert (=> b!1345614 d!380176))

(assert (=> b!1345427 d!380054))

(declare-fun d!380178 () Bool)

(assert (=> d!380178 (= (inv!18098 (tag!2649 (h!19171 (t!119741 rules!2550)))) (= (mod (str.len (value!77661 (tag!2649 (h!19171 (t!119741 rules!2550))))) 2) 0))))

(assert (=> b!1345683 d!380178))

(declare-fun d!380180 () Bool)

(declare-fun res!607018 () Bool)

(declare-fun e!862491 () Bool)

(assert (=> d!380180 (=> (not res!607018) (not e!862491))))

(assert (=> d!380180 (= res!607018 (semiInverseModEq!910 (toChars!3489 (transformation!2387 (h!19171 (t!119741 rules!2550)))) (toValue!3630 (transformation!2387 (h!19171 (t!119741 rules!2550))))))))

(assert (=> d!380180 (= (inv!18102 (transformation!2387 (h!19171 (t!119741 rules!2550)))) e!862491)))

(declare-fun b!1346782 () Bool)

(assert (=> b!1346782 (= e!862491 (equivClasses!869 (toChars!3489 (transformation!2387 (h!19171 (t!119741 rules!2550)))) (toValue!3630 (transformation!2387 (h!19171 (t!119741 rules!2550))))))))

(assert (= (and d!380180 res!607018) b!1346782))

(declare-fun m!1506037 () Bool)

(assert (=> d!380180 m!1506037))

(declare-fun m!1506039 () Bool)

(assert (=> b!1346782 m!1506039))

(assert (=> b!1345683 d!380180))

(declare-fun b!1346795 () Bool)

(declare-fun res!607035 () Bool)

(declare-fun e!862496 () Bool)

(assert (=> b!1346795 (=> (not res!607035) (not e!862496))))

(declare-fun height!642 (Conc!4537) Int)

(assert (=> b!1346795 (= res!607035 (<= (- (height!642 (left!11804 (c!220192 lt!445164))) (height!642 (right!12134 (c!220192 lt!445164)))) 1))))

(declare-fun b!1346796 () Bool)

(declare-fun res!607031 () Bool)

(assert (=> b!1346796 (=> (not res!607031) (not e!862496))))

(assert (=> b!1346796 (= res!607031 (isBalanced!1316 (left!11804 (c!220192 lt!445164))))))

(declare-fun b!1346797 () Bool)

(declare-fun res!607033 () Bool)

(assert (=> b!1346797 (=> (not res!607033) (not e!862496))))

(assert (=> b!1346797 (= res!607033 (isBalanced!1316 (right!12134 (c!220192 lt!445164))))))

(declare-fun b!1346798 () Bool)

(declare-fun e!862497 () Bool)

(assert (=> b!1346798 (= e!862497 e!862496)))

(declare-fun res!607032 () Bool)

(assert (=> b!1346798 (=> (not res!607032) (not e!862496))))

(assert (=> b!1346798 (= res!607032 (<= (- 1) (- (height!642 (left!11804 (c!220192 lt!445164))) (height!642 (right!12134 (c!220192 lt!445164))))))))

(declare-fun b!1346799 () Bool)

(assert (=> b!1346799 (= e!862496 (not (isEmpty!8230 (right!12134 (c!220192 lt!445164)))))))

(declare-fun d!380182 () Bool)

(declare-fun res!607036 () Bool)

(assert (=> d!380182 (=> res!607036 e!862497)))

(assert (=> d!380182 (= res!607036 (not ((_ is Node!4537) (c!220192 lt!445164))))))

(assert (=> d!380182 (= (isBalanced!1316 (c!220192 lt!445164)) e!862497)))

(declare-fun b!1346800 () Bool)

(declare-fun res!607034 () Bool)

(assert (=> b!1346800 (=> (not res!607034) (not e!862496))))

(assert (=> b!1346800 (= res!607034 (not (isEmpty!8230 (left!11804 (c!220192 lt!445164)))))))

(assert (= (and d!380182 (not res!607036)) b!1346798))

(assert (= (and b!1346798 res!607032) b!1346795))

(assert (= (and b!1346795 res!607035) b!1346796))

(assert (= (and b!1346796 res!607031) b!1346797))

(assert (= (and b!1346797 res!607033) b!1346800))

(assert (= (and b!1346800 res!607034) b!1346799))

(declare-fun m!1506041 () Bool)

(assert (=> b!1346795 m!1506041))

(declare-fun m!1506043 () Bool)

(assert (=> b!1346795 m!1506043))

(declare-fun m!1506045 () Bool)

(assert (=> b!1346800 m!1506045))

(assert (=> b!1346798 m!1506041))

(assert (=> b!1346798 m!1506043))

(declare-fun m!1506047 () Bool)

(assert (=> b!1346799 m!1506047))

(declare-fun m!1506049 () Bool)

(assert (=> b!1346796 m!1506049))

(declare-fun m!1506051 () Bool)

(assert (=> b!1346797 m!1506051))

(assert (=> b!1345651 d!380182))

(declare-fun d!380184 () Bool)

(declare-fun res!607037 () Bool)

(declare-fun e!862498 () Bool)

(assert (=> d!380184 (=> res!607037 e!862498)))

(assert (=> d!380184 (= res!607037 ((_ is Nil!13772) (map!3041 rules!2550 lambda!56699)))))

(assert (=> d!380184 (= (forall!3357 (map!3041 rules!2550 lambda!56699) lambda!56710) e!862498)))

(declare-fun b!1346801 () Bool)

(declare-fun e!862499 () Bool)

(assert (=> b!1346801 (= e!862498 e!862499)))

(declare-fun res!607038 () Bool)

(assert (=> b!1346801 (=> (not res!607038) (not e!862499))))

(assert (=> b!1346801 (= res!607038 (dynLambda!6105 lambda!56710 (h!19173 (map!3041 rules!2550 lambda!56699))))))

(declare-fun b!1346802 () Bool)

(assert (=> b!1346802 (= e!862499 (forall!3357 (t!119743 (map!3041 rules!2550 lambda!56699)) lambda!56710))))

(assert (= (and d!380184 (not res!607037)) b!1346801))

(assert (= (and b!1346801 res!607038) b!1346802))

(declare-fun b_lambda!40089 () Bool)

(assert (=> (not b_lambda!40089) (not b!1346801)))

(declare-fun m!1506053 () Bool)

(assert (=> b!1346801 m!1506053))

(declare-fun m!1506055 () Bool)

(assert (=> b!1346802 m!1506055))

(assert (=> d!379518 d!380184))

(declare-fun d!380186 () Bool)

(assert (=> d!380186 (= (list!5255 (_1!7553 lt!445152)) (list!5259 (c!220192 (_1!7553 lt!445152))))))

(declare-fun bs!332841 () Bool)

(assert (= bs!332841 d!380186))

(declare-fun m!1506057 () Bool)

(assert (=> bs!332841 m!1506057))

(assert (=> b!1345629 d!380186))

(assert (=> b!1345629 d!379480))

(assert (=> b!1345629 d!379482))

(declare-fun d!380188 () Bool)

(assert (=> d!380188 (= (isEmpty!8221 (originalCharacters!3249 t2!34)) ((_ is Nil!13769) (originalCharacters!3249 t2!34)))))

(assert (=> d!379620 d!380188))

(declare-fun d!380190 () Bool)

(assert (=> d!380190 (= (list!5254 lt!445103) (list!5258 (c!220190 lt!445103)))))

(declare-fun bs!332842 () Bool)

(assert (= bs!332842 d!380190))

(declare-fun m!1506059 () Bool)

(assert (=> bs!332842 m!1506059))

(assert (=> d!379510 d!380190))

(declare-fun d!380192 () Bool)

(declare-fun lt!445661 () Int)

(assert (=> d!380192 (>= lt!445661 0)))

(declare-fun e!862502 () Int)

(assert (=> d!380192 (= lt!445661 e!862502)))

(declare-fun c!220594 () Bool)

(assert (=> d!380192 (= c!220594 ((_ is Nil!13772) lt!445052))))

(assert (=> d!380192 (= (size!11240 lt!445052) lt!445661)))

(declare-fun b!1346807 () Bool)

(assert (=> b!1346807 (= e!862502 0)))

(declare-fun b!1346808 () Bool)

(assert (=> b!1346808 (= e!862502 (+ 1 (size!11240 (t!119743 lt!445052))))))

(assert (= (and d!380192 c!220594) b!1346807))

(assert (= (and d!380192 (not c!220594)) b!1346808))

(declare-fun m!1506061 () Bool)

(assert (=> b!1346808 m!1506061))

(assert (=> d!379462 d!380192))

(declare-fun d!380194 () Bool)

(declare-fun lt!445664 () Int)

(assert (=> d!380194 (>= lt!445664 0)))

(declare-fun e!862505 () Int)

(assert (=> d!380194 (= lt!445664 e!862505)))

(declare-fun c!220597 () Bool)

(assert (=> d!380194 (= c!220597 ((_ is Nil!13770) rules!2550))))

(assert (=> d!380194 (= (size!11241 rules!2550) lt!445664)))

(declare-fun b!1346813 () Bool)

(assert (=> b!1346813 (= e!862505 0)))

(declare-fun b!1346814 () Bool)

(assert (=> b!1346814 (= e!862505 (+ 1 (size!11241 (t!119741 rules!2550))))))

(assert (= (and d!380194 c!220597) b!1346813))

(assert (= (and d!380194 (not c!220597)) b!1346814))

(assert (=> b!1346814 m!1505743))

(assert (=> d!379462 d!380194))

(declare-fun b!1346817 () Bool)

(declare-fun e!862507 () List!13835)

(assert (=> b!1346817 (= e!862507 (list!5263 (xs!7255 (c!220190 lt!444976))))))

(declare-fun b!1346816 () Bool)

(declare-fun e!862506 () List!13835)

(assert (=> b!1346816 (= e!862506 e!862507)))

(declare-fun c!220599 () Bool)

(assert (=> b!1346816 (= c!220599 ((_ is Leaf!6926) (c!220190 lt!444976)))))

(declare-fun d!380196 () Bool)

(declare-fun c!220598 () Bool)

(assert (=> d!380196 (= c!220598 ((_ is Empty!4536) (c!220190 lt!444976)))))

(assert (=> d!380196 (= (list!5258 (c!220190 lt!444976)) e!862506)))

(declare-fun b!1346815 () Bool)

(assert (=> b!1346815 (= e!862506 Nil!13769)))

(declare-fun b!1346818 () Bool)

(assert (=> b!1346818 (= e!862507 (++!3530 (list!5258 (left!11803 (c!220190 lt!444976))) (list!5258 (right!12133 (c!220190 lt!444976)))))))

(assert (= (and d!380196 c!220598) b!1346815))

(assert (= (and d!380196 (not c!220598)) b!1346816))

(assert (= (and b!1346816 c!220599) b!1346817))

(assert (= (and b!1346816 (not c!220599)) b!1346818))

(declare-fun m!1506063 () Bool)

(assert (=> b!1346817 m!1506063))

(declare-fun m!1506065 () Bool)

(assert (=> b!1346818 m!1506065))

(declare-fun m!1506067 () Bool)

(assert (=> b!1346818 m!1506067))

(assert (=> b!1346818 m!1506065))

(assert (=> b!1346818 m!1506067))

(declare-fun m!1506069 () Bool)

(assert (=> b!1346818 m!1506069))

(assert (=> d!379482 d!380196))

(declare-fun d!380198 () Bool)

(assert (=> d!380198 (= (list!5254 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34))) (list!5258 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34)))))))

(declare-fun bs!332843 () Bool)

(assert (= bs!332843 d!380198))

(declare-fun m!1506071 () Bool)

(assert (=> bs!332843 m!1506071))

(assert (=> b!1345666 d!380198))

(declare-fun d!380200 () Bool)

(declare-fun lt!445665 () Int)

(assert (=> d!380200 (>= lt!445665 0)))

(declare-fun e!862508 () Int)

(assert (=> d!380200 (= lt!445665 e!862508)))

(declare-fun c!220600 () Bool)

(assert (=> d!380200 (= c!220600 ((_ is Nil!13769) (originalCharacters!3249 t1!34)))))

(assert (=> d!380200 (= (size!11239 (originalCharacters!3249 t1!34)) lt!445665)))

(declare-fun b!1346819 () Bool)

(assert (=> b!1346819 (= e!862508 0)))

(declare-fun b!1346820 () Bool)

(assert (=> b!1346820 (= e!862508 (+ 1 (size!11239 (t!119740 (originalCharacters!3249 t1!34)))))))

(assert (= (and d!380200 c!220600) b!1346819))

(assert (= (and d!380200 (not c!220600)) b!1346820))

(declare-fun m!1506073 () Bool)

(assert (=> b!1346820 m!1506073))

(assert (=> b!1345665 d!380200))

(assert (=> d!379538 d!380094))

(assert (=> d!379538 d!379604))

(assert (=> d!379538 d!379608))

(declare-fun d!380202 () Bool)

(assert (=> d!380202 (= (list!5255 (_1!7553 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t1!34))))) (list!5259 (c!220192 (_1!7553 (lex!909 thiss!19762 rules!2550 (print!848 thiss!19762 (singletonSeq!1000 t1!34)))))))))

(declare-fun bs!332844 () Bool)

(assert (= bs!332844 d!380202))

(declare-fun m!1506075 () Bool)

(assert (=> bs!332844 m!1506075))

(assert (=> d!379538 d!380202))

(declare-fun d!380204 () Bool)

(declare-fun lt!445666 () Int)

(assert (=> d!380204 (= lt!445666 (size!11242 (list!5255 (_1!7553 lt!445140))))))

(assert (=> d!380204 (= lt!445666 (size!11246 (c!220192 (_1!7553 lt!445140))))))

(assert (=> d!380204 (= (size!11244 (_1!7553 lt!445140)) lt!445666)))

(declare-fun bs!332845 () Bool)

(assert (= bs!332845 d!380204))

(declare-fun m!1506077 () Bool)

(assert (=> bs!332845 m!1506077))

(assert (=> bs!332845 m!1506077))

(declare-fun m!1506079 () Bool)

(assert (=> bs!332845 m!1506079))

(declare-fun m!1506081 () Bool)

(assert (=> bs!332845 m!1506081))

(assert (=> d!379538 d!380204))

(assert (=> d!379538 d!380128))

(assert (=> d!379538 d!379478))

(declare-fun d!380206 () Bool)

(declare-fun c!220601 () Bool)

(assert (=> d!380206 (= c!220601 (isEmpty!8221 (tail!1940 lt!444988)))))

(declare-fun e!862509 () Bool)

(assert (=> d!380206 (= (prefixMatch!210 (derivativeStep!939 lt!444985 (head!2403 lt!444988)) (tail!1940 lt!444988)) e!862509)))

(declare-fun b!1346821 () Bool)

(assert (=> b!1346821 (= e!862509 (not (lostCause!315 (derivativeStep!939 lt!444985 (head!2403 lt!444988)))))))

(declare-fun b!1346822 () Bool)

(assert (=> b!1346822 (= e!862509 (prefixMatch!210 (derivativeStep!939 (derivativeStep!939 lt!444985 (head!2403 lt!444988)) (head!2403 (tail!1940 lt!444988))) (tail!1940 (tail!1940 lt!444988))))))

(assert (= (and d!380206 c!220601) b!1346821))

(assert (= (and d!380206 (not c!220601)) b!1346822))

(assert (=> d!380206 m!1504069))

(declare-fun m!1506083 () Bool)

(assert (=> d!380206 m!1506083))

(assert (=> b!1346821 m!1504067))

(declare-fun m!1506085 () Bool)

(assert (=> b!1346821 m!1506085))

(assert (=> b!1346822 m!1504069))

(declare-fun m!1506087 () Bool)

(assert (=> b!1346822 m!1506087))

(assert (=> b!1346822 m!1504067))

(assert (=> b!1346822 m!1506087))

(declare-fun m!1506089 () Bool)

(assert (=> b!1346822 m!1506089))

(assert (=> b!1346822 m!1504069))

(declare-fun m!1506091 () Bool)

(assert (=> b!1346822 m!1506091))

(assert (=> b!1346822 m!1506089))

(assert (=> b!1346822 m!1506091))

(declare-fun m!1506093 () Bool)

(assert (=> b!1346822 m!1506093))

(assert (=> b!1345283 d!380206))

(declare-fun d!380208 () Bool)

(declare-fun lt!445667 () Regex!3701)

(assert (=> d!380208 (validRegex!1601 lt!445667)))

(declare-fun e!862512 () Regex!3701)

(assert (=> d!380208 (= lt!445667 e!862512)))

(declare-fun c!220603 () Bool)

(assert (=> d!380208 (= c!220603 (or ((_ is EmptyExpr!3701) lt!444985) ((_ is EmptyLang!3701) lt!444985)))))

(assert (=> d!380208 (validRegex!1601 lt!444985)))

(assert (=> d!380208 (= (derivativeStep!939 lt!444985 (head!2403 lt!444988)) lt!445667)))

(declare-fun call!90607 () Regex!3701)

(declare-fun c!220602 () Bool)

(declare-fun c!220605 () Bool)

(declare-fun bm!90602 () Bool)

(assert (=> bm!90602 (= call!90607 (derivativeStep!939 (ite c!220602 (regTwo!7915 lt!444985) (ite c!220605 (reg!4030 lt!444985) (regOne!7914 lt!444985))) (head!2403 lt!444988)))))

(declare-fun bm!90603 () Bool)

(declare-fun call!90608 () Regex!3701)

(declare-fun c!220604 () Bool)

(assert (=> bm!90603 (= call!90608 (derivativeStep!939 (ite c!220602 (regOne!7915 lt!444985) (ite c!220604 (regTwo!7914 lt!444985) (regOne!7914 lt!444985))) (head!2403 lt!444988)))))

(declare-fun b!1346823 () Bool)

(declare-fun e!862514 () Regex!3701)

(assert (=> b!1346823 (= e!862512 e!862514)))

(declare-fun c!220606 () Bool)

(assert (=> b!1346823 (= c!220606 ((_ is ElementMatch!3701) lt!444985))))

(declare-fun b!1346824 () Bool)

(declare-fun e!862510 () Regex!3701)

(declare-fun call!90610 () Regex!3701)

(declare-fun call!90609 () Regex!3701)

(assert (=> b!1346824 (= e!862510 (Union!3701 (Concat!6179 call!90609 (regTwo!7914 lt!444985)) call!90610))))

(declare-fun b!1346825 () Bool)

(assert (=> b!1346825 (= c!220602 ((_ is Union!3701) lt!444985))))

(declare-fun e!862511 () Regex!3701)

(assert (=> b!1346825 (= e!862514 e!862511)))

(declare-fun b!1346826 () Bool)

(assert (=> b!1346826 (= e!862514 (ite (= (head!2403 lt!444988) (c!220191 lt!444985)) EmptyExpr!3701 EmptyLang!3701))))

(declare-fun b!1346827 () Bool)

(assert (=> b!1346827 (= e!862512 EmptyLang!3701)))

(declare-fun bm!90604 () Bool)

(assert (=> bm!90604 (= call!90610 call!90608)))

(declare-fun b!1346828 () Bool)

(declare-fun e!862513 () Regex!3701)

(assert (=> b!1346828 (= e!862513 (Concat!6179 call!90609 lt!444985))))

(declare-fun b!1346829 () Bool)

(assert (=> b!1346829 (= e!862510 (Union!3701 (Concat!6179 call!90610 (regTwo!7914 lt!444985)) EmptyLang!3701))))

(declare-fun b!1346830 () Bool)

(assert (=> b!1346830 (= e!862511 (Union!3701 call!90608 call!90607))))

(declare-fun bm!90605 () Bool)

(assert (=> bm!90605 (= call!90609 call!90607)))

(declare-fun b!1346831 () Bool)

(assert (=> b!1346831 (= e!862511 e!862513)))

(assert (=> b!1346831 (= c!220605 ((_ is Star!3701) lt!444985))))

(declare-fun b!1346832 () Bool)

(assert (=> b!1346832 (= c!220604 (nullable!1181 (regOne!7914 lt!444985)))))

(assert (=> b!1346832 (= e!862513 e!862510)))

(assert (= (and d!380208 c!220603) b!1346827))

(assert (= (and d!380208 (not c!220603)) b!1346823))

(assert (= (and b!1346823 c!220606) b!1346826))

(assert (= (and b!1346823 (not c!220606)) b!1346825))

(assert (= (and b!1346825 c!220602) b!1346830))

(assert (= (and b!1346825 (not c!220602)) b!1346831))

(assert (= (and b!1346831 c!220605) b!1346828))

(assert (= (and b!1346831 (not c!220605)) b!1346832))

(assert (= (and b!1346832 c!220604) b!1346824))

(assert (= (and b!1346832 (not c!220604)) b!1346829))

(assert (= (or b!1346824 b!1346829) bm!90604))

(assert (= (or b!1346828 b!1346824) bm!90605))

(assert (= (or b!1346830 bm!90604) bm!90603))

(assert (= (or b!1346830 bm!90605) bm!90602))

(declare-fun m!1506095 () Bool)

(assert (=> d!380208 m!1506095))

(assert (=> d!380208 m!1504181))

(assert (=> bm!90602 m!1504065))

(declare-fun m!1506097 () Bool)

(assert (=> bm!90602 m!1506097))

(assert (=> bm!90603 m!1504065))

(declare-fun m!1506099 () Bool)

(assert (=> bm!90603 m!1506099))

(assert (=> b!1346832 m!1505781))

(assert (=> b!1345283 d!380208))

(declare-fun d!380210 () Bool)

(assert (=> d!380210 (= (head!2403 lt!444988) (h!19170 lt!444988))))

(assert (=> b!1345283 d!380210))

(declare-fun d!380212 () Bool)

(assert (=> d!380212 (= (tail!1940 lt!444988) (t!119740 lt!444988))))

(assert (=> b!1345283 d!380212))

(declare-fun d!380214 () Bool)

(assert (=> d!380214 (= (isEmpty!8223 (_1!7552 lt!445073)) ((_ is Nil!13771) (_1!7552 lt!445073)))))

(assert (=> b!1345463 d!380214))

(declare-fun b!1346834 () Bool)

(declare-fun e!862515 () List!13835)

(assert (=> b!1346834 (= e!862515 (Cons!13769 (h!19170 lt!444988) (++!3530 (t!119740 lt!444988) lt!445144)))))

(declare-fun b!1346833 () Bool)

(assert (=> b!1346833 (= e!862515 lt!445144)))

(declare-fun d!380216 () Bool)

(declare-fun e!862516 () Bool)

(assert (=> d!380216 e!862516))

(declare-fun res!607039 () Bool)

(assert (=> d!380216 (=> (not res!607039) (not e!862516))))

(declare-fun lt!445668 () List!13835)

(assert (=> d!380216 (= res!607039 (= (content!1964 lt!445668) ((_ map or) (content!1964 lt!444988) (content!1964 lt!445144))))))

(assert (=> d!380216 (= lt!445668 e!862515)))

(declare-fun c!220607 () Bool)

(assert (=> d!380216 (= c!220607 ((_ is Nil!13769) lt!444988))))

(assert (=> d!380216 (= (++!3530 lt!444988 lt!445144) lt!445668)))

(declare-fun b!1346835 () Bool)

(declare-fun res!607040 () Bool)

(assert (=> b!1346835 (=> (not res!607040) (not e!862516))))

(assert (=> b!1346835 (= res!607040 (= (size!11239 lt!445668) (+ (size!11239 lt!444988) (size!11239 lt!445144))))))

(declare-fun b!1346836 () Bool)

(assert (=> b!1346836 (= e!862516 (or (not (= lt!445144 Nil!13769)) (= lt!445668 lt!444988)))))

(assert (= (and d!380216 c!220607) b!1346833))

(assert (= (and d!380216 (not c!220607)) b!1346834))

(assert (= (and d!380216 res!607039) b!1346835))

(assert (= (and b!1346835 res!607040) b!1346836))

(declare-fun m!1506101 () Bool)

(assert (=> b!1346834 m!1506101))

(declare-fun m!1506103 () Bool)

(assert (=> d!380216 m!1506103))

(assert (=> d!380216 m!1504217))

(declare-fun m!1506105 () Bool)

(assert (=> d!380216 m!1506105))

(declare-fun m!1506107 () Bool)

(assert (=> b!1346835 m!1506107))

(assert (=> b!1346835 m!1504471))

(declare-fun m!1506109 () Bool)

(assert (=> b!1346835 m!1506109))

(assert (=> d!379594 d!380216))

(declare-fun d!380218 () Bool)

(declare-fun lt!445669 () Int)

(assert (=> d!380218 (>= lt!445669 0)))

(declare-fun e!862517 () Int)

(assert (=> d!380218 (= lt!445669 e!862517)))

(declare-fun c!220608 () Bool)

(assert (=> d!380218 (= c!220608 ((_ is Nil!13769) lt!444989))))

(assert (=> d!380218 (= (size!11239 lt!444989) lt!445669)))

(declare-fun b!1346837 () Bool)

(assert (=> b!1346837 (= e!862517 0)))

(declare-fun b!1346838 () Bool)

(assert (=> b!1346838 (= e!862517 (+ 1 (size!11239 (t!119740 lt!444989))))))

(assert (= (and d!380218 c!220608) b!1346837))

(assert (= (and d!380218 (not c!220608)) b!1346838))

(declare-fun m!1506111 () Bool)

(assert (=> b!1346838 m!1506111))

(assert (=> d!379594 d!380218))

(assert (=> d!379594 d!380162))

(declare-fun d!380220 () Bool)

(declare-fun lt!445670 () Int)

(assert (=> d!380220 (>= lt!445670 0)))

(declare-fun e!862518 () Int)

(assert (=> d!380220 (= lt!445670 e!862518)))

(declare-fun c!220609 () Bool)

(assert (=> d!380220 (= c!220609 ((_ is Nil!13769) lt!445040))))

(assert (=> d!380220 (= (size!11239 lt!445040) lt!445670)))

(declare-fun b!1346839 () Bool)

(assert (=> b!1346839 (= e!862518 0)))

(declare-fun b!1346840 () Bool)

(assert (=> b!1346840 (= e!862518 (+ 1 (size!11239 (t!119740 lt!445040))))))

(assert (= (and d!380220 c!220609) b!1346839))

(assert (= (and d!380220 (not c!220609)) b!1346840))

(declare-fun m!1506113 () Bool)

(assert (=> b!1346840 m!1506113))

(assert (=> b!1345344 d!380220))

(declare-fun d!380222 () Bool)

(declare-fun lt!445671 () Int)

(assert (=> d!380222 (>= lt!445671 0)))

(declare-fun e!862519 () Int)

(assert (=> d!380222 (= lt!445671 e!862519)))

(declare-fun c!220610 () Bool)

(assert (=> d!380222 (= c!220610 ((_ is Nil!13769) lt!444984))))

(assert (=> d!380222 (= (size!11239 lt!444984) lt!445671)))

(declare-fun b!1346841 () Bool)

(assert (=> b!1346841 (= e!862519 0)))

(declare-fun b!1346842 () Bool)

(assert (=> b!1346842 (= e!862519 (+ 1 (size!11239 (t!119740 lt!444984))))))

(assert (= (and d!380222 c!220610) b!1346841))

(assert (= (and d!380222 (not c!220610)) b!1346842))

(assert (=> b!1346842 m!1505239))

(assert (=> b!1345344 d!380222))

(declare-fun d!380224 () Bool)

(declare-fun lt!445672 () Int)

(assert (=> d!380224 (>= lt!445672 0)))

(declare-fun e!862520 () Int)

(assert (=> d!380224 (= lt!445672 e!862520)))

(declare-fun c!220611 () Bool)

(assert (=> d!380224 (= c!220611 ((_ is Nil!13769) (Cons!13769 lt!444978 Nil!13769)))))

(assert (=> d!380224 (= (size!11239 (Cons!13769 lt!444978 Nil!13769)) lt!445672)))

(declare-fun b!1346843 () Bool)

(assert (=> b!1346843 (= e!862520 0)))

(declare-fun b!1346844 () Bool)

(assert (=> b!1346844 (= e!862520 (+ 1 (size!11239 (t!119740 (Cons!13769 lt!444978 Nil!13769)))))))

(assert (= (and d!380224 c!220611) b!1346843))

(assert (= (and d!380224 (not c!220611)) b!1346844))

(declare-fun m!1506115 () Bool)

(assert (=> b!1346844 m!1506115))

(assert (=> b!1345344 d!380224))

(declare-fun bs!332846 () Bool)

(declare-fun d!380226 () Bool)

(assert (= bs!332846 (and d!380226 d!379902)))

(declare-fun lambda!56810 () Int)

(assert (=> bs!332846 (= (and (= (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (toChars!3489 (transformation!2387 (rule!4132 t2!34)))) (= (toValue!3630 (transformation!2387 (rule!4132 t1!34))) (toValue!3630 (transformation!2387 (rule!4132 t2!34))))) (= lambda!56810 lambda!56777))))

(assert (=> d!380226 true))

(assert (=> d!380226 (< (dynLambda!6115 order!8271 (toChars!3489 (transformation!2387 (rule!4132 t1!34)))) (dynLambda!6116 order!8273 lambda!56810))))

(assert (=> d!380226 true))

(assert (=> d!380226 (< (dynLambda!6117 order!8275 (toValue!3630 (transformation!2387 (rule!4132 t1!34)))) (dynLambda!6116 order!8273 lambda!56810))))

(assert (=> d!380226 (= (semiInverseModEq!910 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (toValue!3630 (transformation!2387 (rule!4132 t1!34)))) (Forall!527 lambda!56810))))

(declare-fun bs!332847 () Bool)

(assert (= bs!332847 d!380226))

(declare-fun m!1506117 () Bool)

(assert (=> bs!332847 m!1506117))

(assert (=> d!379516 d!380226))

(assert (=> bm!90518 d!380096))

(declare-fun lt!445673 () Bool)

(declare-fun d!380228 () Bool)

(assert (=> d!380228 (= lt!445673 (select (content!1965 (t!119743 (map!3041 rules!2550 lambda!56699))) lt!444982))))

(declare-fun e!862522 () Bool)

(assert (=> d!380228 (= lt!445673 e!862522)))

(declare-fun res!607042 () Bool)

(assert (=> d!380228 (=> (not res!607042) (not e!862522))))

(assert (=> d!380228 (= res!607042 ((_ is Cons!13772) (t!119743 (map!3041 rules!2550 lambda!56699))))))

(assert (=> d!380228 (= (contains!2528 (t!119743 (map!3041 rules!2550 lambda!56699)) lt!444982) lt!445673)))

(declare-fun b!1346845 () Bool)

(declare-fun e!862521 () Bool)

(assert (=> b!1346845 (= e!862522 e!862521)))

(declare-fun res!607041 () Bool)

(assert (=> b!1346845 (=> res!607041 e!862521)))

(assert (=> b!1346845 (= res!607041 (= (h!19173 (t!119743 (map!3041 rules!2550 lambda!56699))) lt!444982))))

(declare-fun b!1346846 () Bool)

(assert (=> b!1346846 (= e!862521 (contains!2528 (t!119743 (t!119743 (map!3041 rules!2550 lambda!56699))) lt!444982))))

(assert (= (and d!380228 res!607042) b!1346845))

(assert (= (and b!1346845 (not res!607041)) b!1346846))

(assert (=> d!380228 m!1505961))

(declare-fun m!1506119 () Bool)

(assert (=> d!380228 m!1506119))

(declare-fun m!1506121 () Bool)

(assert (=> b!1346846 m!1506121))

(assert (=> b!1345351 d!380228))

(declare-fun d!380230 () Bool)

(declare-fun lt!445676 () Token!4436)

(assert (=> d!380230 (= lt!445676 (apply!3289 (list!5255 (_1!7553 lt!445149)) 0))))

(declare-fun apply!3290 (Conc!4537 Int) Token!4436)

(assert (=> d!380230 (= lt!445676 (apply!3290 (c!220192 (_1!7553 lt!445149)) 0))))

(declare-fun e!862525 () Bool)

(assert (=> d!380230 e!862525))

(declare-fun res!607045 () Bool)

(assert (=> d!380230 (=> (not res!607045) (not e!862525))))

(assert (=> d!380230 (= res!607045 (<= 0 0))))

(assert (=> d!380230 (= (apply!3283 (_1!7553 lt!445149) 0) lt!445676)))

(declare-fun b!1346849 () Bool)

(assert (=> b!1346849 (= e!862525 (< 0 (size!11244 (_1!7553 lt!445149))))))

(assert (= (and d!380230 res!607045) b!1346849))

(assert (=> d!380230 m!1505983))

(assert (=> d!380230 m!1505983))

(declare-fun m!1506123 () Bool)

(assert (=> d!380230 m!1506123))

(declare-fun m!1506125 () Bool)

(assert (=> d!380230 m!1506125))

(assert (=> b!1346849 m!1504497))

(assert (=> b!1345613 d!380230))

(declare-fun d!380232 () Bool)

(assert (=> d!380232 (= (isEmpty!8221 (originalCharacters!3249 t1!34)) ((_ is Nil!13769) (originalCharacters!3249 t1!34)))))

(assert (=> d!379618 d!380232))

(declare-fun d!380234 () Bool)

(declare-fun lt!445677 () Int)

(assert (=> d!380234 (>= lt!445677 0)))

(declare-fun e!862526 () Int)

(assert (=> d!380234 (= lt!445677 e!862526)))

(declare-fun c!220612 () Bool)

(assert (=> d!380234 (= c!220612 ((_ is Nil!13769) (list!5254 lt!444979)))))

(assert (=> d!380234 (= (size!11239 (list!5254 lt!444979)) lt!445677)))

(declare-fun b!1346850 () Bool)

(assert (=> b!1346850 (= e!862526 0)))

(declare-fun b!1346851 () Bool)

(assert (=> b!1346851 (= e!862526 (+ 1 (size!11239 (t!119740 (list!5254 lt!444979)))))))

(assert (= (and d!380234 c!220612) b!1346850))

(assert (= (and d!380234 (not c!220612)) b!1346851))

(declare-fun m!1506127 () Bool)

(assert (=> b!1346851 m!1506127))

(assert (=> d!379506 d!380234))

(assert (=> d!379506 d!379912))

(declare-fun d!380236 () Bool)

(declare-fun lt!445680 () Int)

(assert (=> d!380236 (= lt!445680 (size!11239 (list!5258 (c!220190 lt!444979))))))

(assert (=> d!380236 (= lt!445680 (ite ((_ is Empty!4536) (c!220190 lt!444979)) 0 (ite ((_ is Leaf!6926) (c!220190 lt!444979)) (csize!9303 (c!220190 lt!444979)) (csize!9302 (c!220190 lt!444979)))))))

(assert (=> d!380236 (= (size!11243 (c!220190 lt!444979)) lt!445680)))

(declare-fun bs!332848 () Bool)

(assert (= bs!332848 d!380236))

(assert (=> bs!332848 m!1505203))

(assert (=> bs!332848 m!1505203))

(declare-fun m!1506129 () Bool)

(assert (=> bs!332848 m!1506129))

(assert (=> d!379506 d!380236))

(declare-fun e!862529 () Bool)

(declare-fun lt!445683 () BalanceConc!9012)

(declare-fun b!1346863 () Bool)

(assert (=> b!1346863 (= e!862529 (= (list!5254 lt!445683) (++!3530 (list!5254 (charsOf!1359 t1!34)) (list!5254 (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0))))))))

(declare-fun d!380238 () Bool)

(assert (=> d!380238 e!862529))

(declare-fun res!607056 () Bool)

(assert (=> d!380238 (=> (not res!607056) (not e!862529))))

(declare-fun appendAssocInst!269 (Conc!4536 Conc!4536) Bool)

(assert (=> d!380238 (= res!607056 (appendAssocInst!269 (c!220190 (charsOf!1359 t1!34)) (c!220190 (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0)))))))

(declare-fun ++!3536 (Conc!4536 Conc!4536) Conc!4536)

(assert (=> d!380238 (= lt!445683 (BalanceConc!9013 (++!3536 (c!220190 (charsOf!1359 t1!34)) (c!220190 (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0))))))))

(assert (=> d!380238 (= (++!3532 (charsOf!1359 t1!34) (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0))) lt!445683)))

(declare-fun b!1346862 () Bool)

(declare-fun res!607054 () Bool)

(assert (=> b!1346862 (=> (not res!607054) (not e!862529))))

(declare-fun height!643 (Conc!4536) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1346862 (= res!607054 (>= (height!643 (++!3536 (c!220190 (charsOf!1359 t1!34)) (c!220190 (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0))))) (max!0 (height!643 (c!220190 (charsOf!1359 t1!34))) (height!643 (c!220190 (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0)))))))))

(declare-fun b!1346861 () Bool)

(declare-fun res!607055 () Bool)

(assert (=> b!1346861 (=> (not res!607055) (not e!862529))))

(assert (=> b!1346861 (= res!607055 (<= (height!643 (++!3536 (c!220190 (charsOf!1359 t1!34)) (c!220190 (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0))))) (+ (max!0 (height!643 (c!220190 (charsOf!1359 t1!34))) (height!643 (c!220190 (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0))))) 1)))))

(declare-fun b!1346860 () Bool)

(declare-fun res!607057 () Bool)

(assert (=> b!1346860 (=> (not res!607057) (not e!862529))))

(assert (=> b!1346860 (= res!607057 (isBalanced!1317 (++!3536 (c!220190 (charsOf!1359 t1!34)) (c!220190 (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0))))))))

(assert (= (and d!380238 res!607056) b!1346860))

(assert (= (and b!1346860 res!607057) b!1346861))

(assert (= (and b!1346861 res!607055) b!1346862))

(assert (= (and b!1346862 res!607054) b!1346863))

(declare-fun m!1506131 () Bool)

(assert (=> b!1346862 m!1506131))

(declare-fun m!1506133 () Bool)

(assert (=> b!1346862 m!1506133))

(declare-fun m!1506135 () Bool)

(assert (=> b!1346862 m!1506135))

(declare-fun m!1506137 () Bool)

(assert (=> b!1346862 m!1506137))

(declare-fun m!1506139 () Bool)

(assert (=> b!1346862 m!1506139))

(assert (=> b!1346862 m!1506131))

(assert (=> b!1346862 m!1506137))

(assert (=> b!1346862 m!1506133))

(assert (=> b!1346861 m!1506131))

(assert (=> b!1346861 m!1506133))

(assert (=> b!1346861 m!1506135))

(assert (=> b!1346861 m!1506137))

(assert (=> b!1346861 m!1506139))

(assert (=> b!1346861 m!1506131))

(assert (=> b!1346861 m!1506137))

(assert (=> b!1346861 m!1506133))

(declare-fun m!1506141 () Bool)

(assert (=> b!1346863 m!1506141))

(assert (=> b!1346863 m!1503899))

(declare-fun m!1506143 () Bool)

(assert (=> b!1346863 m!1506143))

(assert (=> b!1346863 m!1504279))

(declare-fun m!1506145 () Bool)

(assert (=> b!1346863 m!1506145))

(assert (=> b!1346863 m!1506143))

(assert (=> b!1346863 m!1506145))

(declare-fun m!1506147 () Bool)

(assert (=> b!1346863 m!1506147))

(declare-fun m!1506149 () Bool)

(assert (=> d!380238 m!1506149))

(assert (=> d!380238 m!1506137))

(assert (=> b!1346860 m!1506137))

(assert (=> b!1346860 m!1506137))

(declare-fun m!1506151 () Bool)

(assert (=> b!1346860 m!1506151))

(assert (=> d!379494 d!380238))

(declare-fun lt!445709 () Bool)

(declare-fun d!380240 () Bool)

(assert (=> d!380240 (= lt!445709 (prefixMatch!210 (rulesRegex!270 thiss!19762 rules!2550) (list!5254 (++!3532 (charsOf!1359 t1!34) (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0))))))))

(declare-datatypes ((Context!1182 0))(
  ( (Context!1183 (exprs!1091 List!13838)) )
))
(declare-fun prefixMatchZipperSequence!230 ((InoxSet Context!1182) BalanceConc!9012 Int) Bool)

(declare-fun focus!82 (Regex!3701) (InoxSet Context!1182))

(assert (=> d!380240 (= lt!445709 (prefixMatchZipperSequence!230 (focus!82 (rulesRegex!270 thiss!19762 rules!2550)) (++!3532 (charsOf!1359 t1!34) (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0))) 0))))

(declare-fun lt!445706 () Unit!19871)

(declare-fun lt!445704 () Unit!19871)

(assert (=> d!380240 (= lt!445706 lt!445704)))

(declare-fun lt!445713 () List!13835)

(declare-fun lt!445712 () (InoxSet Context!1182))

(declare-fun prefixMatchZipper!62 ((InoxSet Context!1182) List!13835) Bool)

(assert (=> d!380240 (= (prefixMatch!210 (rulesRegex!270 thiss!19762 rules!2550) lt!445713) (prefixMatchZipper!62 lt!445712 lt!445713))))

(declare-datatypes ((List!13842 0))(
  ( (Nil!13776) (Cons!13776 (h!19177 Context!1182) (t!119809 List!13842)) )
))
(declare-fun lt!445705 () List!13842)

(declare-fun prefixMatchZipperRegexEquiv!62 ((InoxSet Context!1182) List!13842 Regex!3701 List!13835) Unit!19871)

(assert (=> d!380240 (= lt!445704 (prefixMatchZipperRegexEquiv!62 lt!445712 lt!445705 (rulesRegex!270 thiss!19762 rules!2550) lt!445713))))

(assert (=> d!380240 (= lt!445713 (list!5254 (++!3532 (charsOf!1359 t1!34) (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0)))))))

(declare-fun toList!746 ((InoxSet Context!1182)) List!13842)

(assert (=> d!380240 (= lt!445705 (toList!746 (focus!82 (rulesRegex!270 thiss!19762 rules!2550))))))

(assert (=> d!380240 (= lt!445712 (focus!82 (rulesRegex!270 thiss!19762 rules!2550)))))

(declare-fun lt!445707 () Unit!19871)

(declare-fun lt!445711 () Unit!19871)

(assert (=> d!380240 (= lt!445707 lt!445711)))

(declare-fun lt!445708 () Int)

(declare-fun lt!445710 () (InoxSet Context!1182))

(declare-fun dropList!386 (BalanceConc!9012 Int) List!13835)

(assert (=> d!380240 (= (prefixMatchZipper!62 lt!445710 (dropList!386 (++!3532 (charsOf!1359 t1!34) (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0))) lt!445708)) (prefixMatchZipperSequence!230 lt!445710 (++!3532 (charsOf!1359 t1!34) (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0))) lt!445708))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!62 ((InoxSet Context!1182) BalanceConc!9012 Int) Unit!19871)

(assert (=> d!380240 (= lt!445711 (lemmaprefixMatchZipperSequenceEquivalent!62 lt!445710 (++!3532 (charsOf!1359 t1!34) (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0))) lt!445708))))

(assert (=> d!380240 (= lt!445708 0)))

(assert (=> d!380240 (= lt!445710 (focus!82 (rulesRegex!270 thiss!19762 rules!2550)))))

(assert (=> d!380240 (validRegex!1601 (rulesRegex!270 thiss!19762 rules!2550))))

(assert (=> d!380240 (= (prefixMatchZipperSequence!228 (rulesRegex!270 thiss!19762 rules!2550) (++!3532 (charsOf!1359 t1!34) (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0)))) lt!445709)))

(declare-fun bs!332849 () Bool)

(assert (= bs!332849 d!380240))

(assert (=> bs!332849 m!1503905))

(declare-fun m!1506153 () Bool)

(assert (=> bs!332849 m!1506153))

(declare-fun m!1506155 () Bool)

(assert (=> bs!332849 m!1506155))

(declare-fun m!1506157 () Bool)

(assert (=> bs!332849 m!1506157))

(assert (=> bs!332849 m!1504273))

(declare-fun m!1506159 () Bool)

(assert (=> bs!332849 m!1506159))

(assert (=> bs!332849 m!1503905))

(declare-fun m!1506161 () Bool)

(assert (=> bs!332849 m!1506161))

(assert (=> bs!332849 m!1503905))

(declare-fun m!1506163 () Bool)

(assert (=> bs!332849 m!1506163))

(assert (=> bs!332849 m!1503905))

(declare-fun m!1506165 () Bool)

(assert (=> bs!332849 m!1506165))

(assert (=> bs!332849 m!1504273))

(assert (=> bs!332849 m!1506153))

(assert (=> bs!332849 m!1504273))

(declare-fun m!1506167 () Bool)

(assert (=> bs!332849 m!1506167))

(assert (=> bs!332849 m!1504273))

(declare-fun m!1506169 () Bool)

(assert (=> bs!332849 m!1506169))

(assert (=> bs!332849 m!1504273))

(declare-fun m!1506171 () Bool)

(assert (=> bs!332849 m!1506171))

(assert (=> bs!332849 m!1506167))

(declare-fun m!1506173 () Bool)

(assert (=> bs!332849 m!1506173))

(assert (=> bs!332849 m!1503905))

(assert (=> bs!332849 m!1506157))

(assert (=> bs!332849 m!1506157))

(declare-fun m!1506175 () Bool)

(assert (=> bs!332849 m!1506175))

(declare-fun m!1506177 () Bool)

(assert (=> bs!332849 m!1506177))

(assert (=> d!379494 d!380240))

(declare-fun d!380242 () Bool)

(declare-fun e!862532 () Bool)

(assert (=> d!380242 e!862532))

(declare-fun res!607060 () Bool)

(assert (=> d!380242 (=> (not res!607060) (not e!862532))))

(declare-fun lt!445716 () BalanceConc!9012)

(assert (=> d!380242 (= res!607060 (= (list!5254 lt!445716) (Cons!13769 (apply!3277 (charsOf!1359 t2!34) 0) Nil!13769)))))

(declare-fun singleton!424 (C!7692) BalanceConc!9012)

(assert (=> d!380242 (= lt!445716 (singleton!424 (apply!3277 (charsOf!1359 t2!34) 0)))))

(assert (=> d!380242 (= (singletonSeq!1002 (apply!3277 (charsOf!1359 t2!34) 0)) lt!445716)))

(declare-fun b!1346866 () Bool)

(assert (=> b!1346866 (= e!862532 (isBalanced!1317 (c!220190 lt!445716)))))

(assert (= (and d!380242 res!607060) b!1346866))

(declare-fun m!1506179 () Bool)

(assert (=> d!380242 m!1506179))

(assert (=> d!380242 m!1504277))

(declare-fun m!1506181 () Bool)

(assert (=> d!380242 m!1506181))

(declare-fun m!1506183 () Bool)

(assert (=> b!1346866 m!1506183))

(assert (=> d!379494 d!380242))

(assert (=> d!379494 d!379450))

(declare-fun d!380244 () Bool)

(declare-fun lt!445717 () C!7692)

(assert (=> d!380244 (= lt!445717 (apply!3281 (list!5254 (charsOf!1359 t2!34)) 0))))

(assert (=> d!380244 (= lt!445717 (apply!3282 (c!220190 (charsOf!1359 t2!34)) 0))))

(declare-fun e!862533 () Bool)

(assert (=> d!380244 e!862533))

(declare-fun res!607061 () Bool)

(assert (=> d!380244 (=> (not res!607061) (not e!862533))))

(assert (=> d!380244 (= res!607061 (<= 0 0))))

(assert (=> d!380244 (= (apply!3277 (charsOf!1359 t2!34) 0) lt!445717)))

(declare-fun b!1346867 () Bool)

(assert (=> b!1346867 (= e!862533 (< 0 (size!11232 (charsOf!1359 t2!34))))))

(assert (= (and d!380244 res!607061) b!1346867))

(assert (=> d!380244 m!1503843))

(declare-fun m!1506185 () Bool)

(assert (=> d!380244 m!1506185))

(assert (=> d!380244 m!1506185))

(declare-fun m!1506187 () Bool)

(assert (=> d!380244 m!1506187))

(declare-fun m!1506189 () Bool)

(assert (=> d!380244 m!1506189))

(assert (=> b!1346867 m!1503843))

(declare-fun m!1506191 () Bool)

(assert (=> b!1346867 m!1506191))

(assert (=> d!379494 d!380244))

(assert (=> d!379494 d!379446))

(assert (=> d!379494 d!379510))

(declare-fun d!380246 () Bool)

(declare-fun lt!445720 () Int)

(assert (=> d!380246 (>= lt!445720 0)))

(declare-fun e!862536 () Int)

(assert (=> d!380246 (= lt!445720 e!862536)))

(declare-fun c!220618 () Bool)

(assert (=> d!380246 (= c!220618 ((_ is Nil!13771) (_1!7552 lt!445073)))))

(assert (=> d!380246 (= (size!11242 (_1!7552 lt!445073)) lt!445720)))

(declare-fun b!1346872 () Bool)

(assert (=> b!1346872 (= e!862536 0)))

(declare-fun b!1346873 () Bool)

(assert (=> b!1346873 (= e!862536 (+ 1 (size!11242 (t!119742 (_1!7552 lt!445073)))))))

(assert (= (and d!380246 c!220618) b!1346872))

(assert (= (and d!380246 (not c!220618)) b!1346873))

(declare-fun m!1506193 () Bool)

(assert (=> b!1346873 m!1506193))

(assert (=> d!379480 d!380246))

(declare-fun b!1346892 () Bool)

(declare-fun res!607078 () Bool)

(declare-fun e!862545 () Bool)

(assert (=> b!1346892 (=> (not res!607078) (not e!862545))))

(declare-fun lt!445733 () Option!2634)

(declare-fun get!4316 (Option!2634) tuple2!13338)

(assert (=> b!1346892 (= res!607078 (< (size!11239 (_2!7555 (get!4316 lt!445733))) (size!11239 (list!5254 lt!444976))))))

(declare-fun call!90613 () Option!2634)

(declare-fun bm!90608 () Bool)

(declare-fun maxPrefixOneRule!599 (LexerInterface!2082 Rule!4574 List!13835) Option!2634)

(assert (=> bm!90608 (= call!90613 (maxPrefixOneRule!599 thiss!19762 (h!19171 rules!2550) (list!5254 lt!444976)))))

(declare-fun b!1346893 () Bool)

(assert (=> b!1346893 (= e!862545 (contains!2531 rules!2550 (rule!4132 (_1!7555 (get!4316 lt!445733)))))))

(declare-fun b!1346894 () Bool)

(declare-fun res!607081 () Bool)

(assert (=> b!1346894 (=> (not res!607081) (not e!862545))))

(assert (=> b!1346894 (= res!607081 (matchR!1694 (regex!2387 (rule!4132 (_1!7555 (get!4316 lt!445733)))) (list!5254 (charsOf!1359 (_1!7555 (get!4316 lt!445733))))))))

(declare-fun b!1346895 () Bool)

(declare-fun res!607080 () Bool)

(assert (=> b!1346895 (=> (not res!607080) (not e!862545))))

(assert (=> b!1346895 (= res!607080 (= (list!5254 (charsOf!1359 (_1!7555 (get!4316 lt!445733)))) (originalCharacters!3249 (_1!7555 (get!4316 lt!445733)))))))

(declare-fun b!1346897 () Bool)

(declare-fun res!607077 () Bool)

(assert (=> b!1346897 (=> (not res!607077) (not e!862545))))

(assert (=> b!1346897 (= res!607077 (= (++!3530 (list!5254 (charsOf!1359 (_1!7555 (get!4316 lt!445733)))) (_2!7555 (get!4316 lt!445733))) (list!5254 lt!444976)))))

(declare-fun b!1346898 () Bool)

(declare-fun e!862543 () Option!2634)

(assert (=> b!1346898 (= e!862543 call!90613)))

(declare-fun b!1346896 () Bool)

(declare-fun lt!445732 () Option!2634)

(declare-fun lt!445731 () Option!2634)

(assert (=> b!1346896 (= e!862543 (ite (and ((_ is None!2633) lt!445732) ((_ is None!2633) lt!445731)) None!2633 (ite ((_ is None!2633) lt!445731) lt!445732 (ite ((_ is None!2633) lt!445732) lt!445731 (ite (>= (size!11231 (_1!7555 (v!21316 lt!445732))) (size!11231 (_1!7555 (v!21316 lt!445731)))) lt!445732 lt!445731)))))))

(assert (=> b!1346896 (= lt!445732 call!90613)))

(assert (=> b!1346896 (= lt!445731 (maxPrefix!1064 thiss!19762 (t!119741 rules!2550) (list!5254 lt!444976)))))

(declare-fun d!380248 () Bool)

(declare-fun e!862544 () Bool)

(assert (=> d!380248 e!862544))

(declare-fun res!607076 () Bool)

(assert (=> d!380248 (=> res!607076 e!862544)))

(declare-fun isEmpty!8231 (Option!2634) Bool)

(assert (=> d!380248 (= res!607076 (isEmpty!8231 lt!445733))))

(assert (=> d!380248 (= lt!445733 e!862543)))

(declare-fun c!220621 () Bool)

(assert (=> d!380248 (= c!220621 (and ((_ is Cons!13770) rules!2550) ((_ is Nil!13770) (t!119741 rules!2550))))))

(declare-fun lt!445735 () Unit!19871)

(declare-fun lt!445734 () Unit!19871)

(assert (=> d!380248 (= lt!445735 lt!445734)))

(assert (=> d!380248 (isPrefix!1111 (list!5254 lt!444976) (list!5254 lt!444976))))

(declare-fun lemmaIsPrefixRefl!773 (List!13835 List!13835) Unit!19871)

(assert (=> d!380248 (= lt!445734 (lemmaIsPrefixRefl!773 (list!5254 lt!444976) (list!5254 lt!444976)))))

(assert (=> d!380248 (rulesValidInductive!751 thiss!19762 rules!2550)))

(assert (=> d!380248 (= (maxPrefix!1064 thiss!19762 rules!2550 (list!5254 lt!444976)) lt!445733)))

(declare-fun b!1346899 () Bool)

(declare-fun res!607079 () Bool)

(assert (=> b!1346899 (=> (not res!607079) (not e!862545))))

(declare-fun apply!3291 (TokenValueInjection!4614 BalanceConc!9012) TokenValue!2477)

(declare-fun seqFromList!1617 (List!13835) BalanceConc!9012)

(assert (=> b!1346899 (= res!607079 (= (value!77662 (_1!7555 (get!4316 lt!445733))) (apply!3291 (transformation!2387 (rule!4132 (_1!7555 (get!4316 lt!445733)))) (seqFromList!1617 (originalCharacters!3249 (_1!7555 (get!4316 lt!445733)))))))))

(declare-fun b!1346900 () Bool)

(assert (=> b!1346900 (= e!862544 e!862545)))

(declare-fun res!607082 () Bool)

(assert (=> b!1346900 (=> (not res!607082) (not e!862545))))

(declare-fun isDefined!2197 (Option!2634) Bool)

(assert (=> b!1346900 (= res!607082 (isDefined!2197 lt!445733))))

(assert (= (and d!380248 c!220621) b!1346898))

(assert (= (and d!380248 (not c!220621)) b!1346896))

(assert (= (or b!1346898 b!1346896) bm!90608))

(assert (= (and d!380248 (not res!607076)) b!1346900))

(assert (= (and b!1346900 res!607082) b!1346895))

(assert (= (and b!1346895 res!607080) b!1346892))

(assert (= (and b!1346892 res!607078) b!1346897))

(assert (= (and b!1346897 res!607077) b!1346899))

(assert (= (and b!1346899 res!607079) b!1346894))

(assert (= (and b!1346894 res!607081) b!1346893))

(declare-fun m!1506195 () Bool)

(assert (=> b!1346892 m!1506195))

(declare-fun m!1506197 () Bool)

(assert (=> b!1346892 m!1506197))

(assert (=> b!1346892 m!1503919))

(assert (=> b!1346892 m!1504213))

(assert (=> b!1346896 m!1503919))

(declare-fun m!1506199 () Bool)

(assert (=> b!1346896 m!1506199))

(assert (=> bm!90608 m!1503919))

(declare-fun m!1506201 () Bool)

(assert (=> bm!90608 m!1506201))

(assert (=> b!1346893 m!1506195))

(declare-fun m!1506203 () Bool)

(assert (=> b!1346893 m!1506203))

(assert (=> b!1346897 m!1506195))

(declare-fun m!1506205 () Bool)

(assert (=> b!1346897 m!1506205))

(assert (=> b!1346897 m!1506205))

(declare-fun m!1506207 () Bool)

(assert (=> b!1346897 m!1506207))

(assert (=> b!1346897 m!1506207))

(declare-fun m!1506209 () Bool)

(assert (=> b!1346897 m!1506209))

(declare-fun m!1506211 () Bool)

(assert (=> b!1346900 m!1506211))

(assert (=> b!1346894 m!1506195))

(assert (=> b!1346894 m!1506205))

(assert (=> b!1346894 m!1506205))

(assert (=> b!1346894 m!1506207))

(assert (=> b!1346894 m!1506207))

(declare-fun m!1506213 () Bool)

(assert (=> b!1346894 m!1506213))

(assert (=> b!1346895 m!1506195))

(assert (=> b!1346895 m!1506205))

(assert (=> b!1346895 m!1506205))

(assert (=> b!1346895 m!1506207))

(declare-fun m!1506215 () Bool)

(assert (=> d!380248 m!1506215))

(assert (=> d!380248 m!1503919))

(assert (=> d!380248 m!1503919))

(declare-fun m!1506217 () Bool)

(assert (=> d!380248 m!1506217))

(assert (=> d!380248 m!1503919))

(assert (=> d!380248 m!1503919))

(declare-fun m!1506219 () Bool)

(assert (=> d!380248 m!1506219))

(assert (=> d!380248 m!1505187))

(assert (=> b!1346899 m!1506195))

(declare-fun m!1506221 () Bool)

(assert (=> b!1346899 m!1506221))

(assert (=> b!1346899 m!1506221))

(declare-fun m!1506223 () Bool)

(assert (=> b!1346899 m!1506223))

(assert (=> d!379480 d!380248))

(declare-fun b!1346902 () Bool)

(declare-fun e!862546 () List!13835)

(assert (=> b!1346902 (= e!862546 (Cons!13769 (h!19170 (t!119740 lt!444988)) (++!3530 (t!119740 (t!119740 lt!444988)) (getSuffix!549 lt!444989 lt!444988))))))

(declare-fun b!1346901 () Bool)

(assert (=> b!1346901 (= e!862546 (getSuffix!549 lt!444989 lt!444988))))

(declare-fun d!380250 () Bool)

(declare-fun e!862547 () Bool)

(assert (=> d!380250 e!862547))

(declare-fun res!607083 () Bool)

(assert (=> d!380250 (=> (not res!607083) (not e!862547))))

(declare-fun lt!445736 () List!13835)

(assert (=> d!380250 (= res!607083 (= (content!1964 lt!445736) ((_ map or) (content!1964 (t!119740 lt!444988)) (content!1964 (getSuffix!549 lt!444989 lt!444988)))))))

(assert (=> d!380250 (= lt!445736 e!862546)))

(declare-fun c!220622 () Bool)

(assert (=> d!380250 (= c!220622 ((_ is Nil!13769) (t!119740 lt!444988)))))

(assert (=> d!380250 (= (++!3530 (t!119740 lt!444988) (getSuffix!549 lt!444989 lt!444988)) lt!445736)))

(declare-fun b!1346903 () Bool)

(declare-fun res!607084 () Bool)

(assert (=> b!1346903 (=> (not res!607084) (not e!862547))))

(assert (=> b!1346903 (= res!607084 (= (size!11239 lt!445736) (+ (size!11239 (t!119740 lt!444988)) (size!11239 (getSuffix!549 lt!444989 lt!444988)))))))

(declare-fun b!1346904 () Bool)

(assert (=> b!1346904 (= e!862547 (or (not (= (getSuffix!549 lt!444989 lt!444988) Nil!13769)) (= lt!445736 (t!119740 lt!444988))))))

(assert (= (and d!380250 c!220622) b!1346901))

(assert (= (and d!380250 (not c!220622)) b!1346902))

(assert (= (and d!380250 res!607083) b!1346903))

(assert (= (and b!1346903 res!607084) b!1346904))

(assert (=> b!1346902 m!1503879))

(declare-fun m!1506225 () Bool)

(assert (=> b!1346902 m!1506225))

(declare-fun m!1506227 () Bool)

(assert (=> d!380250 m!1506227))

(assert (=> d!380250 m!1505129))

(assert (=> d!380250 m!1503879))

(assert (=> d!380250 m!1504467))

(declare-fun m!1506229 () Bool)

(assert (=> b!1346903 m!1506229))

(assert (=> b!1346903 m!1505223))

(assert (=> b!1346903 m!1503879))

(assert (=> b!1346903 m!1504473))

(assert (=> b!1345601 d!380250))

(declare-fun b!1346905 () Bool)

(declare-fun e!862550 () Rule!4574)

(assert (=> b!1346905 (= e!862550 (h!19171 (t!119741 rules!2550)))))

(declare-fun b!1346906 () Bool)

(declare-fun e!862548 () Bool)

(assert (=> b!1346906 (= e!862548 (dynLambda!6108 lambda!56701 (h!19171 (t!119741 rules!2550))))))

(declare-fun d!380252 () Bool)

(declare-fun e!862549 () Bool)

(assert (=> d!380252 e!862549))

(declare-fun res!607086 () Bool)

(assert (=> d!380252 (=> (not res!607086) (not e!862549))))

(declare-fun lt!445738 () Rule!4574)

(assert (=> d!380252 (= res!607086 (dynLambda!6108 lambda!56701 lt!445738))))

(assert (=> d!380252 (= lt!445738 e!862550)))

(declare-fun c!220623 () Bool)

(assert (=> d!380252 (= c!220623 e!862548)))

(declare-fun res!607085 () Bool)

(assert (=> d!380252 (=> (not res!607085) (not e!862548))))

(assert (=> d!380252 (= res!607085 ((_ is Cons!13770) (t!119741 rules!2550)))))

(assert (=> d!380252 (exists!432 (t!119741 rules!2550) lambda!56701)))

(assert (=> d!380252 (= (getWitness!321 (t!119741 rules!2550) lambda!56701) lt!445738)))

(declare-fun b!1346907 () Bool)

(assert (=> b!1346907 (= e!862549 (contains!2531 (t!119741 rules!2550) lt!445738))))

(declare-fun b!1346908 () Bool)

(declare-fun e!862551 () Rule!4574)

(assert (=> b!1346908 (= e!862550 e!862551)))

(declare-fun c!220624 () Bool)

(assert (=> b!1346908 (= c!220624 ((_ is Cons!13770) (t!119741 rules!2550)))))

(declare-fun b!1346909 () Bool)

(declare-fun lt!445737 () Unit!19871)

(declare-fun Unit!19888 () Unit!19871)

(assert (=> b!1346909 (= lt!445737 Unit!19888)))

(assert (=> b!1346909 false))

(assert (=> b!1346909 (= e!862551 (head!2405 (t!119741 rules!2550)))))

(declare-fun b!1346910 () Bool)

(assert (=> b!1346910 (= e!862551 (getWitness!321 (t!119741 (t!119741 rules!2550)) lambda!56701))))

(assert (= (and d!380252 res!607085) b!1346906))

(assert (= (and d!380252 c!220623) b!1346905))

(assert (= (and d!380252 (not c!220623)) b!1346908))

(assert (= (and b!1346908 c!220624) b!1346910))

(assert (= (and b!1346908 (not c!220624)) b!1346909))

(assert (= (and d!380252 res!607086) b!1346907))

(declare-fun b_lambda!40091 () Bool)

(assert (=> (not b_lambda!40091) (not b!1346906)))

(declare-fun b_lambda!40093 () Bool)

(assert (=> (not b_lambda!40093) (not d!380252)))

(declare-fun m!1506231 () Bool)

(assert (=> b!1346907 m!1506231))

(declare-fun m!1506233 () Bool)

(assert (=> d!380252 m!1506233))

(declare-fun m!1506235 () Bool)

(assert (=> d!380252 m!1506235))

(declare-fun m!1506237 () Bool)

(assert (=> b!1346909 m!1506237))

(declare-fun m!1506239 () Bool)

(assert (=> b!1346906 m!1506239))

(declare-fun m!1506241 () Bool)

(assert (=> b!1346910 m!1506241))

(assert (=> b!1345648 d!380252))

(assert (=> d!379616 d!380066))

(declare-fun b!1346921 () Bool)

(declare-fun e!862560 () Bool)

(assert (=> b!1346921 (= e!862560 (isPrefix!1111 (tail!1940 lt!444988) (tail!1940 lt!445147)))))

(declare-fun b!1346919 () Bool)

(declare-fun e!862558 () Bool)

(assert (=> b!1346919 (= e!862558 e!862560)))

(declare-fun res!607095 () Bool)

(assert (=> b!1346919 (=> (not res!607095) (not e!862560))))

(assert (=> b!1346919 (= res!607095 (not ((_ is Nil!13769) lt!445147)))))

(declare-fun b!1346920 () Bool)

(declare-fun res!607097 () Bool)

(assert (=> b!1346920 (=> (not res!607097) (not e!862560))))

(assert (=> b!1346920 (= res!607097 (= (head!2403 lt!444988) (head!2403 lt!445147)))))

(declare-fun b!1346922 () Bool)

(declare-fun e!862559 () Bool)

(assert (=> b!1346922 (= e!862559 (>= (size!11239 lt!445147) (size!11239 lt!444988)))))

(declare-fun d!380254 () Bool)

(assert (=> d!380254 e!862559))

(declare-fun res!607098 () Bool)

(assert (=> d!380254 (=> res!607098 e!862559)))

(declare-fun lt!445741 () Bool)

(assert (=> d!380254 (= res!607098 (not lt!445741))))

(assert (=> d!380254 (= lt!445741 e!862558)))

(declare-fun res!607096 () Bool)

(assert (=> d!380254 (=> res!607096 e!862558)))

(assert (=> d!380254 (= res!607096 ((_ is Nil!13769) lt!444988))))

(assert (=> d!380254 (= (isPrefix!1111 lt!444988 lt!445147) lt!445741)))

(assert (= (and d!380254 (not res!607096)) b!1346919))

(assert (= (and b!1346919 res!607095) b!1346920))

(assert (= (and b!1346920 res!607097) b!1346921))

(assert (= (and d!380254 (not res!607098)) b!1346922))

(assert (=> b!1346921 m!1504069))

(assert (=> b!1346921 m!1506023))

(assert (=> b!1346921 m!1504069))

(assert (=> b!1346921 m!1506023))

(declare-fun m!1506243 () Bool)

(assert (=> b!1346921 m!1506243))

(assert (=> b!1346920 m!1504065))

(assert (=> b!1346920 m!1506021))

(declare-fun m!1506245 () Bool)

(assert (=> b!1346922 m!1506245))

(assert (=> b!1346922 m!1504471))

(assert (=> b!1345708 d!380254))

(assert (=> d!379504 d!380118))

(declare-fun d!380256 () Bool)

(declare-fun res!607099 () Bool)

(declare-fun e!862561 () Bool)

(assert (=> d!380256 (=> res!607099 e!862561)))

(assert (=> d!380256 (= res!607099 (not ((_ is Cons!13770) (t!119741 rules!2550))))))

(assert (=> d!380256 (= (sepAndNonSepRulesDisjointChars!760 rules!2550 (t!119741 rules!2550)) e!862561)))

(declare-fun b!1346923 () Bool)

(declare-fun e!862562 () Bool)

(assert (=> b!1346923 (= e!862561 e!862562)))

(declare-fun res!607100 () Bool)

(assert (=> b!1346923 (=> (not res!607100) (not e!862562))))

(assert (=> b!1346923 (= res!607100 (ruleDisjointCharsFromAllFromOtherType!352 (h!19171 (t!119741 rules!2550)) rules!2550))))

(declare-fun b!1346924 () Bool)

(assert (=> b!1346924 (= e!862562 (sepAndNonSepRulesDisjointChars!760 rules!2550 (t!119741 (t!119741 rules!2550))))))

(assert (= (and d!380256 (not res!607099)) b!1346923))

(assert (= (and b!1346923 res!607100) b!1346924))

(declare-fun m!1506247 () Bool)

(assert (=> b!1346923 m!1506247))

(declare-fun m!1506249 () Bool)

(assert (=> b!1346924 m!1506249))

(assert (=> b!1345438 d!380256))

(declare-fun d!380258 () Bool)

(declare-fun lt!445742 () Token!4436)

(assert (=> d!380258 (= lt!445742 (apply!3289 (list!5255 (_1!7553 lt!445140)) 0))))

(assert (=> d!380258 (= lt!445742 (apply!3290 (c!220192 (_1!7553 lt!445140)) 0))))

(declare-fun e!862563 () Bool)

(assert (=> d!380258 e!862563))

(declare-fun res!607101 () Bool)

(assert (=> d!380258 (=> (not res!607101) (not e!862563))))

(assert (=> d!380258 (= res!607101 (<= 0 0))))

(assert (=> d!380258 (= (apply!3283 (_1!7553 lt!445140) 0) lt!445742)))

(declare-fun b!1346925 () Bool)

(assert (=> b!1346925 (= e!862563 (< 0 (size!11244 (_1!7553 lt!445140))))))

(assert (= (and d!380258 res!607101) b!1346925))

(assert (=> d!380258 m!1506077))

(assert (=> d!380258 m!1506077))

(declare-fun m!1506251 () Bool)

(assert (=> d!380258 m!1506251))

(declare-fun m!1506253 () Bool)

(assert (=> d!380258 m!1506253))

(assert (=> b!1346925 m!1504449))

(assert (=> b!1345596 d!380258))

(declare-fun d!380260 () Bool)

(assert (=> d!380260 (= (inv!16 (value!77662 t2!34)) (= (charsToInt!0 (text!17786 (value!77662 t2!34))) (value!77653 (value!77662 t2!34))))))

(declare-fun bs!332850 () Bool)

(assert (= bs!332850 d!380260))

(declare-fun m!1506255 () Bool)

(assert (=> bs!332850 m!1506255))

(assert (=> b!1345203 d!380260))

(declare-fun bs!332851 () Bool)

(declare-fun d!380262 () Bool)

(assert (= bs!332851 (and d!380262 d!379902)))

(declare-fun lambda!56811 () Int)

(assert (=> bs!332851 (= (and (= (toChars!3489 (transformation!2387 (h!19171 rules!2550))) (toChars!3489 (transformation!2387 (rule!4132 t2!34)))) (= (toValue!3630 (transformation!2387 (h!19171 rules!2550))) (toValue!3630 (transformation!2387 (rule!4132 t2!34))))) (= lambda!56811 lambda!56777))))

(declare-fun bs!332852 () Bool)

(assert (= bs!332852 (and d!380262 d!380226)))

(assert (=> bs!332852 (= (and (= (toChars!3489 (transformation!2387 (h!19171 rules!2550))) (toChars!3489 (transformation!2387 (rule!4132 t1!34)))) (= (toValue!3630 (transformation!2387 (h!19171 rules!2550))) (toValue!3630 (transformation!2387 (rule!4132 t1!34))))) (= lambda!56811 lambda!56810))))

(assert (=> d!380262 true))

(assert (=> d!380262 (< (dynLambda!6115 order!8271 (toChars!3489 (transformation!2387 (h!19171 rules!2550)))) (dynLambda!6116 order!8273 lambda!56811))))

(assert (=> d!380262 true))

(assert (=> d!380262 (< (dynLambda!6117 order!8275 (toValue!3630 (transformation!2387 (h!19171 rules!2550)))) (dynLambda!6116 order!8273 lambda!56811))))

(assert (=> d!380262 (= (semiInverseModEq!910 (toChars!3489 (transformation!2387 (h!19171 rules!2550))) (toValue!3630 (transformation!2387 (h!19171 rules!2550)))) (Forall!527 lambda!56811))))

(declare-fun bs!332853 () Bool)

(assert (= bs!332853 d!380262))

(declare-fun m!1506257 () Bool)

(assert (=> bs!332853 m!1506257))

(assert (=> d!379590 d!380262))

(declare-fun e!862569 () Bool)

(declare-fun b!1346934 () Bool)

(declare-fun tp!389568 () Bool)

(declare-fun tp!389567 () Bool)

(assert (=> b!1346934 (= e!862569 (and (inv!18105 (left!11803 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34))))) tp!389567 (inv!18105 (right!12133 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34))))) tp!389568))))

(declare-fun b!1346936 () Bool)

(declare-fun e!862568 () Bool)

(declare-fun tp!389569 () Bool)

(assert (=> b!1346936 (= e!862568 tp!389569)))

(declare-fun b!1346935 () Bool)

(declare-fun inv!18112 (IArray!9077) Bool)

(assert (=> b!1346935 (= e!862569 (and (inv!18112 (xs!7255 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34))))) e!862568))))

(assert (=> b!1345319 (= tp!389373 (and (inv!18105 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34)))) e!862569))))

(assert (= (and b!1345319 ((_ is Node!4536) (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34))))) b!1346934))

(assert (= b!1346935 b!1346936))

(assert (= (and b!1345319 ((_ is Leaf!6926) (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t1!34))) (value!77662 t1!34))))) b!1346935))

(declare-fun m!1506259 () Bool)

(assert (=> b!1346934 m!1506259))

(declare-fun m!1506261 () Bool)

(assert (=> b!1346934 m!1506261))

(declare-fun m!1506263 () Bool)

(assert (=> b!1346935 m!1506263))

(assert (=> b!1345319 m!1504087))

(declare-fun b!1346937 () Bool)

(declare-fun e!862570 () Bool)

(declare-fun tp!389570 () Bool)

(assert (=> b!1346937 (= e!862570 (and tp_is_empty!6711 tp!389570))))

(assert (=> b!1345673 (= tp!389419 e!862570)))

(assert (= (and b!1345673 ((_ is Cons!13769) (t!119740 (originalCharacters!3249 t2!34)))) b!1346937))

(declare-fun tp!389571 () Bool)

(declare-fun e!862572 () Bool)

(declare-fun b!1346938 () Bool)

(declare-fun tp!389572 () Bool)

(assert (=> b!1346938 (= e!862572 (and (inv!18105 (left!11803 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34))))) tp!389571 (inv!18105 (right!12133 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34))))) tp!389572))))

(declare-fun b!1346940 () Bool)

(declare-fun e!862571 () Bool)

(declare-fun tp!389573 () Bool)

(assert (=> b!1346940 (= e!862571 tp!389573)))

(declare-fun b!1346939 () Bool)

(assert (=> b!1346939 (= e!862572 (and (inv!18112 (xs!7255 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34))))) e!862571))))

(assert (=> b!1345500 (= tp!389374 (and (inv!18105 (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34)))) e!862572))))

(assert (= (and b!1345500 ((_ is Node!4536) (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34))))) b!1346938))

(assert (= b!1346939 b!1346940))

(assert (= (and b!1345500 ((_ is Leaf!6926) (c!220190 (dynLambda!6102 (toChars!3489 (transformation!2387 (rule!4132 t2!34))) (value!77662 t2!34))))) b!1346939))

(declare-fun m!1506265 () Bool)

(assert (=> b!1346938 m!1506265))

(declare-fun m!1506267 () Bool)

(assert (=> b!1346938 m!1506267))

(declare-fun m!1506269 () Bool)

(assert (=> b!1346939 m!1506269))

(assert (=> b!1345500 m!1504295))

(declare-fun b!1346942 () Bool)

(declare-fun e!862573 () Bool)

(declare-fun tp!389576 () Bool)

(declare-fun tp!389578 () Bool)

(assert (=> b!1346942 (= e!862573 (and tp!389576 tp!389578))))

(declare-fun b!1346941 () Bool)

(assert (=> b!1346941 (= e!862573 tp_is_empty!6711)))

(declare-fun b!1346944 () Bool)

(declare-fun tp!389575 () Bool)

(declare-fun tp!389577 () Bool)

(assert (=> b!1346944 (= e!862573 (and tp!389575 tp!389577))))

(declare-fun b!1346943 () Bool)

(declare-fun tp!389574 () Bool)

(assert (=> b!1346943 (= e!862573 tp!389574)))

(assert (=> b!1345706 (= tp!389453 e!862573)))

(assert (= (and b!1345706 ((_ is ElementMatch!3701) (regOne!7915 (regex!2387 (rule!4132 t2!34))))) b!1346941))

(assert (= (and b!1345706 ((_ is Concat!6179) (regOne!7915 (regex!2387 (rule!4132 t2!34))))) b!1346942))

(assert (= (and b!1345706 ((_ is Star!3701) (regOne!7915 (regex!2387 (rule!4132 t2!34))))) b!1346943))

(assert (= (and b!1345706 ((_ is Union!3701) (regOne!7915 (regex!2387 (rule!4132 t2!34))))) b!1346944))

(declare-fun b!1346946 () Bool)

(declare-fun e!862574 () Bool)

(declare-fun tp!389581 () Bool)

(declare-fun tp!389583 () Bool)

(assert (=> b!1346946 (= e!862574 (and tp!389581 tp!389583))))

(declare-fun b!1346945 () Bool)

(assert (=> b!1346945 (= e!862574 tp_is_empty!6711)))

(declare-fun b!1346948 () Bool)

(declare-fun tp!389580 () Bool)

(declare-fun tp!389582 () Bool)

(assert (=> b!1346948 (= e!862574 (and tp!389580 tp!389582))))

(declare-fun b!1346947 () Bool)

(declare-fun tp!389579 () Bool)

(assert (=> b!1346947 (= e!862574 tp!389579)))

(assert (=> b!1345706 (= tp!389455 e!862574)))

(assert (= (and b!1345706 ((_ is ElementMatch!3701) (regTwo!7915 (regex!2387 (rule!4132 t2!34))))) b!1346945))

(assert (= (and b!1345706 ((_ is Concat!6179) (regTwo!7915 (regex!2387 (rule!4132 t2!34))))) b!1346946))

(assert (= (and b!1345706 ((_ is Star!3701) (regTwo!7915 (regex!2387 (rule!4132 t2!34))))) b!1346947))

(assert (= (and b!1345706 ((_ is Union!3701) (regTwo!7915 (regex!2387 (rule!4132 t2!34))))) b!1346948))

(declare-fun b!1346950 () Bool)

(declare-fun e!862575 () Bool)

(declare-fun tp!389586 () Bool)

(declare-fun tp!389588 () Bool)

(assert (=> b!1346950 (= e!862575 (and tp!389586 tp!389588))))

(declare-fun b!1346949 () Bool)

(assert (=> b!1346949 (= e!862575 tp_is_empty!6711)))

(declare-fun b!1346952 () Bool)

(declare-fun tp!389585 () Bool)

(declare-fun tp!389587 () Bool)

(assert (=> b!1346952 (= e!862575 (and tp!389585 tp!389587))))

(declare-fun b!1346951 () Bool)

(declare-fun tp!389584 () Bool)

(assert (=> b!1346951 (= e!862575 tp!389584)))

(assert (=> b!1345698 (= tp!389443 e!862575)))

(assert (= (and b!1345698 ((_ is ElementMatch!3701) (regOne!7915 (regex!2387 (h!19171 rules!2550))))) b!1346949))

(assert (= (and b!1345698 ((_ is Concat!6179) (regOne!7915 (regex!2387 (h!19171 rules!2550))))) b!1346950))

(assert (= (and b!1345698 ((_ is Star!3701) (regOne!7915 (regex!2387 (h!19171 rules!2550))))) b!1346951))

(assert (= (and b!1345698 ((_ is Union!3701) (regOne!7915 (regex!2387 (h!19171 rules!2550))))) b!1346952))

(declare-fun b!1346954 () Bool)

(declare-fun e!862576 () Bool)

(declare-fun tp!389591 () Bool)

(declare-fun tp!389593 () Bool)

(assert (=> b!1346954 (= e!862576 (and tp!389591 tp!389593))))

(declare-fun b!1346953 () Bool)

(assert (=> b!1346953 (= e!862576 tp_is_empty!6711)))

(declare-fun b!1346956 () Bool)

(declare-fun tp!389590 () Bool)

(declare-fun tp!389592 () Bool)

(assert (=> b!1346956 (= e!862576 (and tp!389590 tp!389592))))

(declare-fun b!1346955 () Bool)

(declare-fun tp!389589 () Bool)

(assert (=> b!1346955 (= e!862576 tp!389589)))

(assert (=> b!1345698 (= tp!389445 e!862576)))

(assert (= (and b!1345698 ((_ is ElementMatch!3701) (regTwo!7915 (regex!2387 (h!19171 rules!2550))))) b!1346953))

(assert (= (and b!1345698 ((_ is Concat!6179) (regTwo!7915 (regex!2387 (h!19171 rules!2550))))) b!1346954))

(assert (= (and b!1345698 ((_ is Star!3701) (regTwo!7915 (regex!2387 (h!19171 rules!2550))))) b!1346955))

(assert (= (and b!1345698 ((_ is Union!3701) (regTwo!7915 (regex!2387 (h!19171 rules!2550))))) b!1346956))

(declare-fun b!1346958 () Bool)

(declare-fun e!862577 () Bool)

(declare-fun tp!389596 () Bool)

(declare-fun tp!389598 () Bool)

(assert (=> b!1346958 (= e!862577 (and tp!389596 tp!389598))))

(declare-fun b!1346957 () Bool)

(assert (=> b!1346957 (= e!862577 tp_is_empty!6711)))

(declare-fun b!1346960 () Bool)

(declare-fun tp!389595 () Bool)

(declare-fun tp!389597 () Bool)

(assert (=> b!1346960 (= e!862577 (and tp!389595 tp!389597))))

(declare-fun b!1346959 () Bool)

(declare-fun tp!389594 () Bool)

(assert (=> b!1346959 (= e!862577 tp!389594)))

(assert (=> b!1345702 (= tp!389448 e!862577)))

(assert (= (and b!1345702 ((_ is ElementMatch!3701) (regOne!7915 (regex!2387 (rule!4132 t1!34))))) b!1346957))

(assert (= (and b!1345702 ((_ is Concat!6179) (regOne!7915 (regex!2387 (rule!4132 t1!34))))) b!1346958))

(assert (= (and b!1345702 ((_ is Star!3701) (regOne!7915 (regex!2387 (rule!4132 t1!34))))) b!1346959))

(assert (= (and b!1345702 ((_ is Union!3701) (regOne!7915 (regex!2387 (rule!4132 t1!34))))) b!1346960))

(declare-fun b!1346962 () Bool)

(declare-fun e!862578 () Bool)

(declare-fun tp!389601 () Bool)

(declare-fun tp!389603 () Bool)

(assert (=> b!1346962 (= e!862578 (and tp!389601 tp!389603))))

(declare-fun b!1346961 () Bool)

(assert (=> b!1346961 (= e!862578 tp_is_empty!6711)))

(declare-fun b!1346964 () Bool)

(declare-fun tp!389600 () Bool)

(declare-fun tp!389602 () Bool)

(assert (=> b!1346964 (= e!862578 (and tp!389600 tp!389602))))

(declare-fun b!1346963 () Bool)

(declare-fun tp!389599 () Bool)

(assert (=> b!1346963 (= e!862578 tp!389599)))

(assert (=> b!1345702 (= tp!389450 e!862578)))

(assert (= (and b!1345702 ((_ is ElementMatch!3701) (regTwo!7915 (regex!2387 (rule!4132 t1!34))))) b!1346961))

(assert (= (and b!1345702 ((_ is Concat!6179) (regTwo!7915 (regex!2387 (rule!4132 t1!34))))) b!1346962))

(assert (= (and b!1345702 ((_ is Star!3701) (regTwo!7915 (regex!2387 (rule!4132 t1!34))))) b!1346963))

(assert (= (and b!1345702 ((_ is Union!3701) (regTwo!7915 (regex!2387 (rule!4132 t1!34))))) b!1346964))

(declare-fun b!1346965 () Bool)

(declare-fun e!862579 () Bool)

(declare-fun tp!389604 () Bool)

(assert (=> b!1346965 (= e!862579 (and tp_is_empty!6711 tp!389604))))

(assert (=> b!1345672 (= tp!389418 e!862579)))

(assert (= (and b!1345672 ((_ is Cons!13769) (t!119740 (originalCharacters!3249 t1!34)))) b!1346965))

(declare-fun b!1346967 () Bool)

(declare-fun e!862580 () Bool)

(declare-fun tp!389607 () Bool)

(declare-fun tp!389609 () Bool)

(assert (=> b!1346967 (= e!862580 (and tp!389607 tp!389609))))

(declare-fun b!1346966 () Bool)

(assert (=> b!1346966 (= e!862580 tp_is_empty!6711)))

(declare-fun b!1346969 () Bool)

(declare-fun tp!389606 () Bool)

(declare-fun tp!389608 () Bool)

(assert (=> b!1346969 (= e!862580 (and tp!389606 tp!389608))))

(declare-fun b!1346968 () Bool)

(declare-fun tp!389605 () Bool)

(assert (=> b!1346968 (= e!862580 tp!389605)))

(assert (=> b!1345704 (= tp!389454 e!862580)))

(assert (= (and b!1345704 ((_ is ElementMatch!3701) (regOne!7914 (regex!2387 (rule!4132 t2!34))))) b!1346966))

(assert (= (and b!1345704 ((_ is Concat!6179) (regOne!7914 (regex!2387 (rule!4132 t2!34))))) b!1346967))

(assert (= (and b!1345704 ((_ is Star!3701) (regOne!7914 (regex!2387 (rule!4132 t2!34))))) b!1346968))

(assert (= (and b!1345704 ((_ is Union!3701) (regOne!7914 (regex!2387 (rule!4132 t2!34))))) b!1346969))

(declare-fun b!1346971 () Bool)

(declare-fun e!862581 () Bool)

(declare-fun tp!389612 () Bool)

(declare-fun tp!389614 () Bool)

(assert (=> b!1346971 (= e!862581 (and tp!389612 tp!389614))))

(declare-fun b!1346970 () Bool)

(assert (=> b!1346970 (= e!862581 tp_is_empty!6711)))

(declare-fun b!1346973 () Bool)

(declare-fun tp!389611 () Bool)

(declare-fun tp!389613 () Bool)

(assert (=> b!1346973 (= e!862581 (and tp!389611 tp!389613))))

(declare-fun b!1346972 () Bool)

(declare-fun tp!389610 () Bool)

(assert (=> b!1346972 (= e!862581 tp!389610)))

(assert (=> b!1345704 (= tp!389456 e!862581)))

(assert (= (and b!1345704 ((_ is ElementMatch!3701) (regTwo!7914 (regex!2387 (rule!4132 t2!34))))) b!1346970))

(assert (= (and b!1345704 ((_ is Concat!6179) (regTwo!7914 (regex!2387 (rule!4132 t2!34))))) b!1346971))

(assert (= (and b!1345704 ((_ is Star!3701) (regTwo!7914 (regex!2387 (rule!4132 t2!34))))) b!1346972))

(assert (= (and b!1345704 ((_ is Union!3701) (regTwo!7914 (regex!2387 (rule!4132 t2!34))))) b!1346973))

(declare-fun b!1346976 () Bool)

(declare-fun b_free!32891 () Bool)

(declare-fun b_next!33595 () Bool)

(assert (=> b!1346976 (= b_free!32891 (not b_next!33595))))

(declare-fun tp!389618 () Bool)

(declare-fun b_and!90219 () Bool)

(assert (=> b!1346976 (= tp!389618 b_and!90219)))

(declare-fun b_free!32893 () Bool)

(declare-fun b_next!33597 () Bool)

(assert (=> b!1346976 (= b_free!32893 (not b_next!33597))))

(declare-fun tb!70789 () Bool)

(declare-fun t!119805 () Bool)

(assert (=> (and b!1346976 (= (toChars!3489 (transformation!2387 (h!19171 (t!119741 (t!119741 rules!2550))))) (toChars!3489 (transformation!2387 (rule!4132 t1!34)))) t!119805) tb!70789))

(declare-fun result!86090 () Bool)

(assert (= result!86090 result!86048))

(assert (=> d!379446 t!119805))

(declare-fun tb!70791 () Bool)

(declare-fun t!119807 () Bool)

(assert (=> (and b!1346976 (= (toChars!3489 (transformation!2387 (h!19171 (t!119741 (t!119741 rules!2550))))) (toChars!3489 (transformation!2387 (rule!4132 t2!34)))) t!119807) tb!70791))

(declare-fun result!86092 () Bool)

(assert (= result!86092 result!86056))

(assert (=> d!379510 t!119807))

(assert (=> b!1345664 t!119805))

(assert (=> b!1345666 t!119807))

(declare-fun tp!389615 () Bool)

(declare-fun b_and!90221 () Bool)

(assert (=> b!1346976 (= tp!389615 (and (=> t!119805 result!86090) (=> t!119807 result!86092) b_and!90221))))

(declare-fun e!862585 () Bool)

(assert (=> b!1346976 (= e!862585 (and tp!389618 tp!389615))))

(declare-fun b!1346975 () Bool)

(declare-fun tp!389616 () Bool)

(declare-fun e!862584 () Bool)

(assert (=> b!1346975 (= e!862584 (and tp!389616 (inv!18098 (tag!2649 (h!19171 (t!119741 (t!119741 rules!2550))))) (inv!18102 (transformation!2387 (h!19171 (t!119741 (t!119741 rules!2550))))) e!862585))))

(declare-fun b!1346974 () Bool)

(declare-fun e!862582 () Bool)

(declare-fun tp!389617 () Bool)

(assert (=> b!1346974 (= e!862582 (and e!862584 tp!389617))))

(assert (=> b!1345682 (= tp!389430 e!862582)))

(assert (= b!1346975 b!1346976))

(assert (= b!1346974 b!1346975))

(assert (= (and b!1345682 ((_ is Cons!13770) (t!119741 (t!119741 rules!2550)))) b!1346974))

(declare-fun m!1506271 () Bool)

(assert (=> b!1346975 m!1506271))

(declare-fun m!1506273 () Bool)

(assert (=> b!1346975 m!1506273))

(declare-fun b!1346978 () Bool)

(declare-fun e!862586 () Bool)

(declare-fun tp!389621 () Bool)

(declare-fun tp!389623 () Bool)

(assert (=> b!1346978 (= e!862586 (and tp!389621 tp!389623))))

(declare-fun b!1346977 () Bool)

(assert (=> b!1346977 (= e!862586 tp_is_empty!6711)))

(declare-fun b!1346980 () Bool)

(declare-fun tp!389620 () Bool)

(declare-fun tp!389622 () Bool)

(assert (=> b!1346980 (= e!862586 (and tp!389620 tp!389622))))

(declare-fun b!1346979 () Bool)

(declare-fun tp!389619 () Bool)

(assert (=> b!1346979 (= e!862586 tp!389619)))

(assert (=> b!1345696 (= tp!389444 e!862586)))

(assert (= (and b!1345696 ((_ is ElementMatch!3701) (regOne!7914 (regex!2387 (h!19171 rules!2550))))) b!1346977))

(assert (= (and b!1345696 ((_ is Concat!6179) (regOne!7914 (regex!2387 (h!19171 rules!2550))))) b!1346978))

(assert (= (and b!1345696 ((_ is Star!3701) (regOne!7914 (regex!2387 (h!19171 rules!2550))))) b!1346979))

(assert (= (and b!1345696 ((_ is Union!3701) (regOne!7914 (regex!2387 (h!19171 rules!2550))))) b!1346980))

(declare-fun b!1346982 () Bool)

(declare-fun e!862587 () Bool)

(declare-fun tp!389626 () Bool)

(declare-fun tp!389628 () Bool)

(assert (=> b!1346982 (= e!862587 (and tp!389626 tp!389628))))

(declare-fun b!1346981 () Bool)

(assert (=> b!1346981 (= e!862587 tp_is_empty!6711)))

(declare-fun b!1346984 () Bool)

(declare-fun tp!389625 () Bool)

(declare-fun tp!389627 () Bool)

(assert (=> b!1346984 (= e!862587 (and tp!389625 tp!389627))))

(declare-fun b!1346983 () Bool)

(declare-fun tp!389624 () Bool)

(assert (=> b!1346983 (= e!862587 tp!389624)))

(assert (=> b!1345696 (= tp!389446 e!862587)))

(assert (= (and b!1345696 ((_ is ElementMatch!3701) (regTwo!7914 (regex!2387 (h!19171 rules!2550))))) b!1346981))

(assert (= (and b!1345696 ((_ is Concat!6179) (regTwo!7914 (regex!2387 (h!19171 rules!2550))))) b!1346982))

(assert (= (and b!1345696 ((_ is Star!3701) (regTwo!7914 (regex!2387 (h!19171 rules!2550))))) b!1346983))

(assert (= (and b!1345696 ((_ is Union!3701) (regTwo!7914 (regex!2387 (h!19171 rules!2550))))) b!1346984))

(declare-fun b!1346986 () Bool)

(declare-fun e!862588 () Bool)

(declare-fun tp!389631 () Bool)

(declare-fun tp!389633 () Bool)

(assert (=> b!1346986 (= e!862588 (and tp!389631 tp!389633))))

(declare-fun b!1346985 () Bool)

(assert (=> b!1346985 (= e!862588 tp_is_empty!6711)))

(declare-fun b!1346988 () Bool)

(declare-fun tp!389630 () Bool)

(declare-fun tp!389632 () Bool)

(assert (=> b!1346988 (= e!862588 (and tp!389630 tp!389632))))

(declare-fun b!1346987 () Bool)

(declare-fun tp!389629 () Bool)

(assert (=> b!1346987 (= e!862588 tp!389629)))

(assert (=> b!1345700 (= tp!389449 e!862588)))

(assert (= (and b!1345700 ((_ is ElementMatch!3701) (regOne!7914 (regex!2387 (rule!4132 t1!34))))) b!1346985))

(assert (= (and b!1345700 ((_ is Concat!6179) (regOne!7914 (regex!2387 (rule!4132 t1!34))))) b!1346986))

(assert (= (and b!1345700 ((_ is Star!3701) (regOne!7914 (regex!2387 (rule!4132 t1!34))))) b!1346987))

(assert (= (and b!1345700 ((_ is Union!3701) (regOne!7914 (regex!2387 (rule!4132 t1!34))))) b!1346988))

(declare-fun b!1346990 () Bool)

(declare-fun e!862589 () Bool)

(declare-fun tp!389636 () Bool)

(declare-fun tp!389638 () Bool)

(assert (=> b!1346990 (= e!862589 (and tp!389636 tp!389638))))

(declare-fun b!1346989 () Bool)

(assert (=> b!1346989 (= e!862589 tp_is_empty!6711)))

(declare-fun b!1346992 () Bool)

(declare-fun tp!389635 () Bool)

(declare-fun tp!389637 () Bool)

(assert (=> b!1346992 (= e!862589 (and tp!389635 tp!389637))))

(declare-fun b!1346991 () Bool)

(declare-fun tp!389634 () Bool)

(assert (=> b!1346991 (= e!862589 tp!389634)))

(assert (=> b!1345700 (= tp!389451 e!862589)))

(assert (= (and b!1345700 ((_ is ElementMatch!3701) (regTwo!7914 (regex!2387 (rule!4132 t1!34))))) b!1346989))

(assert (= (and b!1345700 ((_ is Concat!6179) (regTwo!7914 (regex!2387 (rule!4132 t1!34))))) b!1346990))

(assert (= (and b!1345700 ((_ is Star!3701) (regTwo!7914 (regex!2387 (rule!4132 t1!34))))) b!1346991))

(assert (= (and b!1345700 ((_ is Union!3701) (regTwo!7914 (regex!2387 (rule!4132 t1!34))))) b!1346992))

(declare-fun b!1346994 () Bool)

(declare-fun e!862590 () Bool)

(declare-fun tp!389641 () Bool)

(declare-fun tp!389643 () Bool)

(assert (=> b!1346994 (= e!862590 (and tp!389641 tp!389643))))

(declare-fun b!1346993 () Bool)

(assert (=> b!1346993 (= e!862590 tp_is_empty!6711)))

(declare-fun b!1346996 () Bool)

(declare-fun tp!389640 () Bool)

(declare-fun tp!389642 () Bool)

(assert (=> b!1346996 (= e!862590 (and tp!389640 tp!389642))))

(declare-fun b!1346995 () Bool)

(declare-fun tp!389639 () Bool)

(assert (=> b!1346995 (= e!862590 tp!389639)))

(assert (=> b!1345705 (= tp!389452 e!862590)))

(assert (= (and b!1345705 ((_ is ElementMatch!3701) (reg!4030 (regex!2387 (rule!4132 t2!34))))) b!1346993))

(assert (= (and b!1345705 ((_ is Concat!6179) (reg!4030 (regex!2387 (rule!4132 t2!34))))) b!1346994))

(assert (= (and b!1345705 ((_ is Star!3701) (reg!4030 (regex!2387 (rule!4132 t2!34))))) b!1346995))

(assert (= (and b!1345705 ((_ is Union!3701) (reg!4030 (regex!2387 (rule!4132 t2!34))))) b!1346996))

(declare-fun b!1346998 () Bool)

(declare-fun e!862591 () Bool)

(declare-fun tp!389646 () Bool)

(declare-fun tp!389648 () Bool)

(assert (=> b!1346998 (= e!862591 (and tp!389646 tp!389648))))

(declare-fun b!1346997 () Bool)

(assert (=> b!1346997 (= e!862591 tp_is_empty!6711)))

(declare-fun b!1347000 () Bool)

(declare-fun tp!389645 () Bool)

(declare-fun tp!389647 () Bool)

(assert (=> b!1347000 (= e!862591 (and tp!389645 tp!389647))))

(declare-fun b!1346999 () Bool)

(declare-fun tp!389644 () Bool)

(assert (=> b!1346999 (= e!862591 tp!389644)))

(assert (=> b!1345683 (= tp!389429 e!862591)))

(assert (= (and b!1345683 ((_ is ElementMatch!3701) (regex!2387 (h!19171 (t!119741 rules!2550))))) b!1346997))

(assert (= (and b!1345683 ((_ is Concat!6179) (regex!2387 (h!19171 (t!119741 rules!2550))))) b!1346998))

(assert (= (and b!1345683 ((_ is Star!3701) (regex!2387 (h!19171 (t!119741 rules!2550))))) b!1346999))

(assert (= (and b!1345683 ((_ is Union!3701) (regex!2387 (h!19171 (t!119741 rules!2550))))) b!1347000))

(declare-fun b!1347002 () Bool)

(declare-fun e!862592 () Bool)

(declare-fun tp!389651 () Bool)

(declare-fun tp!389653 () Bool)

(assert (=> b!1347002 (= e!862592 (and tp!389651 tp!389653))))

(declare-fun b!1347001 () Bool)

(assert (=> b!1347001 (= e!862592 tp_is_empty!6711)))

(declare-fun b!1347004 () Bool)

(declare-fun tp!389650 () Bool)

(declare-fun tp!389652 () Bool)

(assert (=> b!1347004 (= e!862592 (and tp!389650 tp!389652))))

(declare-fun b!1347003 () Bool)

(declare-fun tp!389649 () Bool)

(assert (=> b!1347003 (= e!862592 tp!389649)))

(assert (=> b!1345697 (= tp!389442 e!862592)))

(assert (= (and b!1345697 ((_ is ElementMatch!3701) (reg!4030 (regex!2387 (h!19171 rules!2550))))) b!1347001))

(assert (= (and b!1345697 ((_ is Concat!6179) (reg!4030 (regex!2387 (h!19171 rules!2550))))) b!1347002))

(assert (= (and b!1345697 ((_ is Star!3701) (reg!4030 (regex!2387 (h!19171 rules!2550))))) b!1347003))

(assert (= (and b!1345697 ((_ is Union!3701) (reg!4030 (regex!2387 (h!19171 rules!2550))))) b!1347004))

(declare-fun b!1347006 () Bool)

(declare-fun e!862593 () Bool)

(declare-fun tp!389656 () Bool)

(declare-fun tp!389658 () Bool)

(assert (=> b!1347006 (= e!862593 (and tp!389656 tp!389658))))

(declare-fun b!1347005 () Bool)

(assert (=> b!1347005 (= e!862593 tp_is_empty!6711)))

(declare-fun b!1347008 () Bool)

(declare-fun tp!389655 () Bool)

(declare-fun tp!389657 () Bool)

(assert (=> b!1347008 (= e!862593 (and tp!389655 tp!389657))))

(declare-fun b!1347007 () Bool)

(declare-fun tp!389654 () Bool)

(assert (=> b!1347007 (= e!862593 tp!389654)))

(assert (=> b!1345701 (= tp!389447 e!862593)))

(assert (= (and b!1345701 ((_ is ElementMatch!3701) (reg!4030 (regex!2387 (rule!4132 t1!34))))) b!1347005))

(assert (= (and b!1345701 ((_ is Concat!6179) (reg!4030 (regex!2387 (rule!4132 t1!34))))) b!1347006))

(assert (= (and b!1345701 ((_ is Star!3701) (reg!4030 (regex!2387 (rule!4132 t1!34))))) b!1347007))

(assert (= (and b!1345701 ((_ is Union!3701) (reg!4030 (regex!2387 (rule!4132 t1!34))))) b!1347008))

(declare-fun b_lambda!40095 () Bool)

(assert (= b_lambda!40093 (or b!1345128 b_lambda!40095)))

(declare-fun bs!332854 () Bool)

(declare-fun d!380264 () Bool)

(assert (= bs!332854 (and d!380264 b!1345128)))

(assert (=> bs!332854 (= (dynLambda!6108 lambda!56701 lt!445738) (= (regex!2387 lt!445738) lt!444982))))

(assert (=> d!380252 d!380264))

(declare-fun b_lambda!40097 () Bool)

(assert (= b_lambda!40087 (or b!1345137 b_lambda!40097)))

(declare-fun bs!332855 () Bool)

(declare-fun d!380266 () Bool)

(assert (= bs!332855 (and d!380266 b!1345137)))

(declare-fun res!607102 () Bool)

(declare-fun e!862594 () Bool)

(assert (=> bs!332855 (=> (not res!607102) (not e!862594))))

(assert (=> bs!332855 (= res!607102 (validRegex!1601 (h!19173 (t!119743 (map!3041 rules!2550 lambda!56699)))))))

(assert (=> bs!332855 (= (dynLambda!6105 lambda!56700 (h!19173 (t!119743 (map!3041 rules!2550 lambda!56699)))) e!862594)))

(declare-fun b!1347009 () Bool)

(assert (=> b!1347009 (= e!862594 (matchR!1694 (h!19173 (t!119743 (map!3041 rules!2550 lambda!56699))) lt!444989))))

(assert (= (and bs!332855 res!607102) b!1347009))

(declare-fun m!1506275 () Bool)

(assert (=> bs!332855 m!1506275))

(declare-fun m!1506277 () Bool)

(assert (=> b!1347009 m!1506277))

(assert (=> b!1346699 d!380266))

(declare-fun b_lambda!40099 () Bool)

(assert (= b_lambda!40081 (or d!379522 b_lambda!40099)))

(declare-fun bs!332856 () Bool)

(declare-fun d!380268 () Bool)

(assert (= bs!332856 (and d!380268 d!379522)))

(assert (=> bs!332856 (= (dynLambda!6105 lambda!56711 (h!19173 lt!444977)) (not (dynLambda!6105 lambda!56700 (h!19173 lt!444977))))))

(declare-fun b_lambda!40117 () Bool)

(assert (=> (not b_lambda!40117) (not bs!332856)))

(declare-fun m!1506279 () Bool)

(assert (=> bs!332856 m!1506279))

(assert (=> b!1346667 d!380268))

(declare-fun b_lambda!40101 () Bool)

(assert (= b_lambda!40043 (or b!1345119 b_lambda!40101)))

(declare-fun bs!332857 () Bool)

(declare-fun d!380270 () Bool)

(assert (= bs!332857 (and d!380270 b!1345119)))

(declare-fun res!607103 () Bool)

(declare-fun e!862595 () Bool)

(assert (=> bs!332857 (=> (not res!607103) (not e!862595))))

(assert (=> bs!332857 (= res!607103 (matchR!1694 lt!444985 res!606828))))

(assert (=> bs!332857 (= (dynLambda!6107 lambda!56698 res!606828) e!862595)))

(declare-fun b!1347010 () Bool)

(assert (=> b!1347010 (= e!862595 (isPrefix!1111 lt!444988 res!606828))))

(assert (= (and bs!332857 res!607103) b!1347010))

(declare-fun m!1506281 () Bool)

(assert (=> bs!332857 m!1506281))

(declare-fun m!1506283 () Bool)

(assert (=> b!1347010 m!1506283))

(assert (=> d!379928 d!380270))

(declare-fun b_lambda!40103 () Bool)

(assert (= b_lambda!40085 (or b!1345137 b_lambda!40103)))

(declare-fun bs!332858 () Bool)

(declare-fun d!380272 () Bool)

(assert (= bs!332858 (and d!380272 b!1345137)))

(declare-fun res!607104 () Bool)

(declare-fun e!862596 () Bool)

(assert (=> bs!332858 (=> (not res!607104) (not e!862596))))

(assert (=> bs!332858 (= res!607104 (validRegex!1601 lt!445620))))

(assert (=> bs!332858 (= (dynLambda!6105 lambda!56700 lt!445620) e!862596)))

(declare-fun b!1347011 () Bool)

(assert (=> b!1347011 (= e!862596 (matchR!1694 lt!445620 lt!444989))))

(assert (= (and bs!332858 res!607104) b!1347011))

(declare-fun m!1506285 () Bool)

(assert (=> bs!332858 m!1506285))

(declare-fun m!1506287 () Bool)

(assert (=> b!1347011 m!1506287))

(assert (=> d!380114 d!380272))

(declare-fun b_lambda!40105 () Bool)

(assert (= b_lambda!40047 (or d!379612 b_lambda!40105)))

(declare-fun bs!332859 () Bool)

(declare-fun d!380274 () Bool)

(assert (= bs!332859 (and d!380274 d!379612)))

(assert (=> bs!332859 (= (dynLambda!6108 lambda!56742 (h!19171 rules!2550)) (not (dynLambda!6108 lambda!56701 (h!19171 rules!2550))))))

(declare-fun b_lambda!40119 () Bool)

(assert (=> (not b_lambda!40119) (not bs!332859)))

(assert (=> bs!332859 m!1504533))

(assert (=> b!1346308 d!380274))

(declare-fun b_lambda!40107 () Bool)

(assert (= b_lambda!40091 (or b!1345128 b_lambda!40107)))

(declare-fun bs!332860 () Bool)

(declare-fun d!380276 () Bool)

(assert (= bs!332860 (and d!380276 b!1345128)))

(assert (=> bs!332860 (= (dynLambda!6108 lambda!56701 (h!19171 (t!119741 rules!2550))) (= (regex!2387 (h!19171 (t!119741 rules!2550))) lt!444982))))

(assert (=> b!1346906 d!380276))

(declare-fun b_lambda!40109 () Bool)

(assert (= b_lambda!40079 (or b!1345137 b_lambda!40109)))

(declare-fun bs!332861 () Bool)

(declare-fun d!380278 () Bool)

(assert (= bs!332861 (and d!380278 b!1345137)))

(assert (=> bs!332861 (= (dynLambda!6104 lambda!56699 (h!19171 (t!119741 rules!2550))) (regex!2387 (h!19171 (t!119741 rules!2550))))))

(assert (=> b!1346585 d!380278))

(declare-fun b_lambda!40111 () Bool)

(assert (= b_lambda!40083 (or d!379524 b_lambda!40111)))

(declare-fun bs!332862 () Bool)

(declare-fun d!380280 () Bool)

(assert (= bs!332862 (and d!380280 d!379524)))

(assert (=> bs!332862 (= (dynLambda!6105 lambda!56716 (h!19173 lt!444977)) (validRegex!1601 (h!19173 lt!444977)))))

(declare-fun m!1506289 () Bool)

(assert (=> bs!332862 m!1506289))

(assert (=> b!1346671 d!380280))

(declare-fun b_lambda!40113 () Bool)

(assert (= b_lambda!40045 (or d!379450 b_lambda!40113)))

(declare-fun bs!332863 () Bool)

(declare-fun d!380282 () Bool)

(assert (= bs!332863 (and d!380282 d!379450)))

(assert (=> bs!332863 (= (dynLambda!6104 lambda!56704 (h!19171 rules!2550)) (regex!2387 (h!19171 rules!2550)))))

(assert (=> b!1346256 d!380282))

(declare-fun b_lambda!40115 () Bool)

(assert (= b_lambda!40089 (or d!379518 b_lambda!40115)))

(declare-fun bs!332864 () Bool)

(declare-fun d!380284 () Bool)

(assert (= bs!332864 (and d!380284 d!379518)))

(assert (=> bs!332864 (= (dynLambda!6105 lambda!56710 (h!19173 (map!3041 rules!2550 lambda!56699))) (not (dynLambda!6105 lambda!56700 (h!19173 (map!3041 rules!2550 lambda!56699)))))))

(declare-fun b_lambda!40121 () Bool)

(assert (=> (not b_lambda!40121) (not bs!332864)))

(assert (=> bs!332864 m!1504177))

(assert (=> b!1346801 d!380284))

(check-sat (not b!1346170) (not b!1346954) (not b!1346607) (not d!380034) (not b!1346753) (not d!380042) (not d!379880) (not d!380128) (not b!1346751) (not b!1346738) (not b!1346822) (not b!1346740) (not d!380036) (not bm!90600) (not b!1346118) (not b_lambda!40101) (not b!1346896) (not b!1346897) (not d!380190) (not d!380064) (not d!380208) (not b_lambda!40005) (not b!1346902) (not b!1346564) (not b_lambda!40121) (not b!1346978) (not b_lambda!40117) (not b!1346745) b_and!90209 (not b!1346655) (not b_next!33573) (not b_lambda!40115) (not b!1347009) (not b!1346958) (not bs!332862) (not b!1346990) (not b!1346287) (not b!1346994) (not b!1346693) (not b!1346601) (not d!380198) (not b!1346201) (not b!1346709) (not b!1346796) (not d!380166) (not b!1346570) (not b_lambda!40107) (not d!379930) (not b!1346975) b_and!90205 (not b!1346849) (not b!1346973) (not b!1346962) (not d!379902) (not b!1346583) (not b!1346808) (not d!379900) (not d!380062) (not d!380240) (not b!1346942) (not b!1346935) b_and!90219 (not b!1346844) (not b!1346247) (not d!380204) (not b!1346562) (not b!1346934) (not b!1346834) (not b!1346712) (not b!1346590) (not b!1346596) (not b!1346959) (not bm!90599) (not b!1346863) (not d!380228) (not b!1346955) (not b!1346189) (not b!1346747) (not b_next!33575) (not b_lambda!40021) (not b!1346821) (not b!1346741) (not b!1346950) (not bm!90584) (not b!1346943) (not b!1346677) b_and!90211 (not b!1346846) (not b!1347003) (not b!1346861) (not b!1346782) (not b!1346207) (not b!1346215) (not b!1346253) (not d!380130) (not b_lambda!40105) (not b!1346588) (not d!380248) (not b_lambda!40095) (not d!380106) (not b!1346802) (not bm!90602) (not b_lambda!40113) (not b!1346743) (not b!1346842) (not d!380252) (not b!1346894) (not b!1346175) (not b_lambda!40019) (not b!1346679) (not b!1346998) (not b!1346907) (not b_lambda!40007) (not b_lambda!40099) (not d!379906) (not d!380202) (not b!1346208) (not d!379914) (not b!1346799) (not b!1346781) (not d!380072) (not b!1346940) (not d!380138) (not b!1346777) (not b!1346814) (not b!1346909) (not d!380250) (not b!1346698) (not bm!90563) (not b!1346965) (not bm!90598) (not b!1346289) (not b!1346198) (not b_lambda!40003) (not d!380098) (not b!1346996) (not d!380094) (not d!379904) (not b!1346937) (not d!380110) (not b!1346616) (not d!379882) (not b!1346893) (not d!380242) (not b!1346187) (not b!1346560) (not b!1346668) (not b!1346710) (not d!379916) (not b!1346767) (not b!1346224) (not bm!90603) tp_is_empty!6711 (not d!380084) (not b!1346972) (not b!1346736) (not d!380100) (not b!1346984) (not b!1346963) (not d!380070) (not b!1346952) (not b_lambda!40109) (not d!380056) (not b!1346256) (not b!1346835) (not d!380074) (not d!379922) (not d!380136) (not b!1346944) (not d!380238) (not b!1346252) (not b!1346987) (not b!1346969) (not b!1346568) (not d!380144) (not d!380176) (not d!379920) (not b_lambda!40103) (not d!380168) (not b!1346205) (not d!379950) (not b!1346946) (not b!1346766) (not b!1346832) (not d!379932) (not b!1346651) (not b!1346717) (not b!1346900) (not b!1346924) (not b!1346218) (not d!380092) (not b!1347006) b_and!90207 (not b!1346674) (not d!380124) (not b!1346681) (not d!379946) (not b!1346903) (not b!1346689) (not b!1346254) (not b!1346920) (not bm!90601) (not b!1346923) (not b_next!33597) (not b_next!33589) (not bm!90559) (not b!1346951) (not b!1346986) (not b!1346181) (not b!1346910) (not b!1346153) (not b!1346268) (not b!1346138) (not b!1346968) (not b!1346974) (not d!380060) (not b!1346866) (not b!1346621) (not d!380260) (not d!379884) (not b!1346300) (not d!380236) (not b!1346250) (not b_next!33581) (not d!380226) (not b!1346683) (not d!380244) (not bm!90567) (not b!1346597) (not b!1346925) (not b!1346776) (not d!379952) (not b!1346980) (not d!379910) (not d!380076) (not b!1346991) (not b!1346979) (not d!379912) (not b!1346678) (not b!1346995) (not b_lambda!40017) (not b!1346948) (not b!1346211) (not b!1346988) (not b!1346212) (not d!380152) (not b!1346682) (not d!380150) (not b_lambda!40009) (not b_next!33571) (not b!1346800) (not b_lambda!40097) (not b_lambda!40011) (not d!380086) (not b!1346947) (not d!380170) (not d!380044) (not d!380088) (not b!1347004) (not b!1346798) (not b!1346971) (not b_lambda!40013) (not b!1346939) (not b!1346152) (not d!380216) (not d!380180) (not b!1346202) (not d!379908) (not b!1346936) (not d!380186) (not b!1346566) (not b!1345319) (not d!379926) (not b!1346964) (not d!380258) (not d!380108) (not bs!332855) (not b!1346267) b_and!90151 (not b_next!33579) (not b!1346797) (not d!380206) (not b!1346702) (not bm!90593) (not d!379890) (not b!1346684) (not bm!90594) (not d!379898) (not b!1346613) (not b!1346817) (not b!1346982) (not d!380262) (not b!1346169) (not b!1346773) (not b!1346676) (not b!1346921) (not d!380230) (not d!380082) (not b!1346697) (not bs!332858) (not d!380134) (not b!1346686) (not b!1346727) (not b!1346587) (not b_next!33587) (not d!380114) (not bm!90608) (not b!1346851) (not b!1346818) (not b!1347007) (not b!1346199) (not d!379924) (not d!379934) (not b!1347011) (not b_lambda!40119) (not b!1346673) (not b!1346116) (not b!1346967) (not b!1347000) (not b!1346309) (not bm!90564) (not b!1346840) (not b!1346705) (not bm!90581) (not b!1346707) (not b!1346983) (not d!380174) (not b!1346899) (not b!1347010) (not b!1346755) (not bm!90560) (not b!1346246) b_and!90221 (not bm!90583) (not d!380112) (not d!380146) (not b!1346795) (not b!1346960) (not b!1346749) (not b!1346593) (not b_next!33595) (not b!1346610) (not b!1346895) (not b!1346730) (not d!380104) (not b!1346180) (not b!1346768) (not b!1346725) (not b!1346892) (not b!1346838) (not b!1346938) (not d!380148) (not b!1346922) (not d!380050) (not b!1346672) b_and!90213 (not bm!90582) (not b!1346200) (not b!1346173) (not b!1346860) (not b!1346867) (not d!379948) (not b!1346956) (not b!1346701) (not b!1346617) (not b_next!33577) (not b!1346873) (not b!1346999) (not d!380038) (not b_lambda!40111) b_and!90155 (not b!1346608) (not b!1346770) (not b!1346992) (not d!379888) (not b!1346692) (not b!1347002) (not b!1346249) (not b!1346862) b_and!90147 (not b_lambda!40015) (not b!1346585) (not b!1346820) (not bs!332857) (not b!1346154) (not b!1345500) (not b!1347008) (not d!380046))
(check-sat (not b_next!33575) b_and!90211 b_and!90207 (not b_next!33581) (not b_next!33571) (not b_next!33587) b_and!90221 (not b_next!33595) b_and!90213 b_and!90147 b_and!90209 (not b_next!33573) b_and!90205 b_and!90219 (not b_next!33589) (not b_next!33597) b_and!90151 (not b_next!33579) (not b_next!33577) b_and!90155)
