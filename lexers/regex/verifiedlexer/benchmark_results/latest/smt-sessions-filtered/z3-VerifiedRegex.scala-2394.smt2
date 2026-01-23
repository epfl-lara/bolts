; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122134 () Bool)

(assert start!122134)

(declare-fun b!1357461 () Bool)

(declare-fun b_free!33059 () Bool)

(declare-fun b_next!33763 () Bool)

(assert (=> b!1357461 (= b_free!33059 (not b_next!33763))))

(declare-fun tp!391661 () Bool)

(declare-fun b_and!90883 () Bool)

(assert (=> b!1357461 (= tp!391661 b_and!90883)))

(declare-fun b_free!33061 () Bool)

(declare-fun b_next!33765 () Bool)

(assert (=> b!1357461 (= b_free!33061 (not b_next!33765))))

(declare-fun tp!391657 () Bool)

(declare-fun b_and!90885 () Bool)

(assert (=> b!1357461 (= tp!391657 b_and!90885)))

(declare-fun b!1357450 () Bool)

(declare-fun b_free!33063 () Bool)

(declare-fun b_next!33767 () Bool)

(assert (=> b!1357450 (= b_free!33063 (not b_next!33767))))

(declare-fun tp!391654 () Bool)

(declare-fun b_and!90887 () Bool)

(assert (=> b!1357450 (= tp!391654 b_and!90887)))

(declare-fun b_free!33065 () Bool)

(declare-fun b_next!33769 () Bool)

(assert (=> b!1357450 (= b_free!33065 (not b_next!33769))))

(declare-fun tp!391659 () Bool)

(declare-fun b_and!90889 () Bool)

(assert (=> b!1357450 (= tp!391659 b_and!90889)))

(declare-fun b!1357464 () Bool)

(declare-fun b_free!33067 () Bool)

(declare-fun b_next!33771 () Bool)

(assert (=> b!1357464 (= b_free!33067 (not b_next!33771))))

(declare-fun tp!391663 () Bool)

(declare-fun b_and!90891 () Bool)

(assert (=> b!1357464 (= tp!391663 b_and!90891)))

(declare-fun b_free!33069 () Bool)

(declare-fun b_next!33773 () Bool)

(assert (=> b!1357464 (= b_free!33069 (not b_next!33773))))

(declare-fun tp!391655 () Bool)

(declare-fun b_and!90893 () Bool)

(assert (=> b!1357464 (= tp!391655 b_and!90893)))

(declare-fun b!1357440 () Bool)

(assert (=> b!1357440 true))

(assert (=> b!1357440 true))

(declare-fun b!1357435 () Bool)

(assert (=> b!1357435 true))

(declare-fun b!1357457 () Bool)

(assert (=> b!1357457 true))

(declare-fun b!1357434 () Bool)

(declare-fun e!868678 () Bool)

(declare-fun e!868671 () Bool)

(assert (=> b!1357434 (= e!868678 e!868671)))

(declare-fun res!611714 () Bool)

(assert (=> b!1357434 (=> res!611714 e!868671)))

(declare-fun lambda!57485 () Int)

(declare-datatypes ((List!13900 0))(
  ( (Nil!13834) (Cons!13834 (h!19235 (_ BitVec 16)) (t!120439 List!13900)) )
))
(declare-datatypes ((TokenValue!2487 0))(
  ( (FloatLiteralValue!4974 (text!17854 List!13900)) (TokenValueExt!2486 (__x!8803 Int)) (Broken!12435 (value!77921 List!13900)) (Object!2552) (End!2487) (Def!2487) (Underscore!2487) (Match!2487) (Else!2487) (Error!2487) (Case!2487) (If!2487) (Extends!2487) (Abstract!2487) (Class!2487) (Val!2487) (DelimiterValue!4974 (del!2547 List!13900)) (KeywordValue!2493 (value!77922 List!13900)) (CommentValue!4974 (value!77923 List!13900)) (WhitespaceValue!4974 (value!77924 List!13900)) (IndentationValue!2487 (value!77925 List!13900)) (String!16670) (Int32!2487) (Broken!12436 (value!77926 List!13900)) (Boolean!2488) (Unit!19982) (OperatorValue!2490 (op!2547 List!13900)) (IdentifierValue!4974 (value!77927 List!13900)) (IdentifierValue!4975 (value!77928 List!13900)) (WhitespaceValue!4975 (value!77929 List!13900)) (True!4974) (False!4974) (Broken!12437 (value!77930 List!13900)) (Broken!12438 (value!77931 List!13900)) (True!4975) (RightBrace!2487) (RightBracket!2487) (Colon!2487) (Null!2487) (Comma!2487) (LeftBracket!2487) (False!4975) (LeftBrace!2487) (ImaginaryLiteralValue!2487 (text!17855 List!13900)) (StringLiteralValue!7461 (value!77932 List!13900)) (EOFValue!2487 (value!77933 List!13900)) (IdentValue!2487 (value!77934 List!13900)) (DelimiterValue!4975 (value!77935 List!13900)) (DedentValue!2487 (value!77936 List!13900)) (NewLineValue!2487 (value!77937 List!13900)) (IntegerValue!7461 (value!77938 (_ BitVec 32)) (text!17856 List!13900)) (IntegerValue!7462 (value!77939 Int) (text!17857 List!13900)) (Times!2487) (Or!2487) (Equal!2487) (Minus!2487) (Broken!12439 (value!77940 List!13900)) (And!2487) (Div!2487) (LessEqual!2487) (Mod!2487) (Concat!6198) (Not!2487) (Plus!2487) (SpaceValue!2487 (value!77941 List!13900)) (IntegerValue!7463 (value!77942 Int) (text!17858 List!13900)) (StringLiteralValue!7462 (text!17859 List!13900)) (FloatLiteralValue!4975 (text!17860 List!13900)) (BytesLiteralValue!2487 (value!77943 List!13900)) (CommentValue!4975 (value!77944 List!13900)) (StringLiteralValue!7463 (value!77945 List!13900)) (ErrorTokenValue!2487 (msg!2548 List!13900)) )
))
(declare-datatypes ((C!7712 0))(
  ( (C!7713 (val!4416 Int)) )
))
(declare-datatypes ((List!13901 0))(
  ( (Nil!13835) (Cons!13835 (h!19236 C!7712) (t!120440 List!13901)) )
))
(declare-datatypes ((IArray!9117 0))(
  ( (IArray!9118 (innerList!4616 List!13901)) )
))
(declare-datatypes ((Conc!4556 0))(
  ( (Node!4556 (left!11848 Conc!4556) (right!12178 Conc!4556) (csize!9342 Int) (cheight!4767 Int)) (Leaf!6951 (xs!7279 IArray!9117) (csize!9343 Int)) (Empty!4556) )
))
(declare-datatypes ((BalanceConc!9052 0))(
  ( (BalanceConc!9053 (c!222694 Conc!4556)) )
))
(declare-datatypes ((Regex!3711 0))(
  ( (ElementMatch!3711 (c!222695 C!7712)) (Concat!6199 (regOne!7934 Regex!3711) (regTwo!7934 Regex!3711)) (EmptyExpr!3711) (Star!3711 (reg!4040 Regex!3711)) (EmptyLang!3711) (Union!3711 (regOne!7935 Regex!3711) (regTwo!7935 Regex!3711)) )
))
(declare-datatypes ((String!16671 0))(
  ( (String!16672 (value!77946 String)) )
))
(declare-datatypes ((TokenValueInjection!4634 0))(
  ( (TokenValueInjection!4635 (toValue!3652 Int) (toChars!3511 Int)) )
))
(declare-datatypes ((Rule!4594 0))(
  ( (Rule!4595 (regex!2397 Regex!3711) (tag!2659 String!16671) (isSeparator!2397 Bool) (transformation!2397 TokenValueInjection!4634)) )
))
(declare-datatypes ((List!13902 0))(
  ( (Nil!13836) (Cons!13836 (h!19237 Rule!4594) (t!120441 List!13902)) )
))
(declare-fun rules!2550 () List!13902)

(declare-fun lt!449582 () Regex!3711)

(declare-datatypes ((List!13903 0))(
  ( (Nil!13837) (Cons!13837 (h!19238 Regex!3711) (t!120442 List!13903)) )
))
(declare-fun contains!2567 (List!13903 Regex!3711) Bool)

(declare-fun map!3056 (List!13902 Int) List!13903)

(assert (=> b!1357434 (= res!611714 (not (contains!2567 (map!3056 rules!2550 lambda!57485) lt!449582)))))

(declare-fun lambda!57486 () Int)

(declare-fun getWitness!340 (List!13903 Int) Regex!3711)

(assert (=> b!1357434 (= lt!449582 (getWitness!340 (map!3056 rules!2550 lambda!57485) lambda!57486))))

(declare-fun res!611704 () Bool)

(declare-fun e!868693 () Bool)

(assert (=> start!122134 (=> (not res!611704) (not e!868693))))

(declare-datatypes ((LexerInterface!2092 0))(
  ( (LexerInterfaceExt!2089 (__x!8804 Int)) (Lexer!2090) )
))
(declare-fun thiss!19762 () LexerInterface!2092)

(get-info :version)

(assert (=> start!122134 (= res!611704 ((_ is Lexer!2090) thiss!19762))))

(assert (=> start!122134 e!868693))

(assert (=> start!122134 true))

(declare-fun e!868694 () Bool)

(assert (=> start!122134 e!868694))

(declare-datatypes ((Token!4456 0))(
  ( (Token!4457 (value!77947 TokenValue!2487) (rule!4146 Rule!4594) (size!11319 Int) (originalCharacters!3259 List!13901)) )
))
(declare-fun t1!34 () Token!4456)

(declare-fun e!868689 () Bool)

(declare-fun inv!18178 (Token!4456) Bool)

(assert (=> start!122134 (and (inv!18178 t1!34) e!868689)))

(declare-fun t2!34 () Token!4456)

(declare-fun e!868681 () Bool)

(assert (=> start!122134 (and (inv!18178 t2!34) e!868681)))

(declare-fun e!868690 () Bool)

(assert (=> b!1357435 (= e!868690 e!868678)))

(declare-fun res!611717 () Bool)

(assert (=> b!1357435 (=> res!611717 e!868678)))

(declare-fun exists!452 (List!13903 Int) Bool)

(assert (=> b!1357435 (= res!611717 (not (exists!452 (map!3056 rules!2550 lambda!57485) lambda!57486)))))

(declare-fun lt!449590 () List!13903)

(assert (=> b!1357435 (exists!452 lt!449590 lambda!57486)))

(declare-fun lt!449598 () List!13901)

(declare-fun lt!449588 () Regex!3711)

(declare-datatypes ((Unit!19983 0))(
  ( (Unit!19984) )
))
(declare-fun lt!449600 () Unit!19983)

(declare-fun matchRGenUnionSpec!128 (Regex!3711 List!13903 List!13901) Unit!19983)

(assert (=> b!1357435 (= lt!449600 (matchRGenUnionSpec!128 lt!449588 lt!449590 lt!449598))))

(assert (=> b!1357435 (= lt!449590 (map!3056 rules!2550 lambda!57485))))

(declare-fun b!1357436 () Bool)

(declare-fun res!611710 () Bool)

(declare-fun e!868682 () Bool)

(assert (=> b!1357436 (=> res!611710 e!868682)))

(declare-datatypes ((List!13904 0))(
  ( (Nil!13838) (Cons!13838 (h!19239 Token!4456) (t!120443 List!13904)) )
))
(declare-datatypes ((IArray!9119 0))(
  ( (IArray!9120 (innerList!4617 List!13904)) )
))
(declare-datatypes ((Conc!4557 0))(
  ( (Node!4557 (left!11849 Conc!4557) (right!12179 Conc!4557) (csize!9344 Int) (cheight!4768 Int)) (Leaf!6952 (xs!7280 IArray!9119) (csize!9345 Int)) (Empty!4557) )
))
(declare-datatypes ((BalanceConc!9054 0))(
  ( (BalanceConc!9055 (c!222696 Conc!4557)) )
))
(declare-datatypes ((tuple2!13414 0))(
  ( (tuple2!13415 (_1!7593 BalanceConc!9054) (_2!7593 BalanceConc!9052)) )
))
(declare-fun lt!449583 () tuple2!13414)

(declare-fun isEmpty!8300 (BalanceConc!9052) Bool)

(assert (=> b!1357436 (= res!611710 (not (isEmpty!8300 (_2!7593 lt!449583))))))

(declare-fun b!1357437 () Bool)

(declare-fun res!611716 () Bool)

(assert (=> b!1357437 (=> res!611716 e!868682)))

(declare-fun lt!449599 () List!13901)

(declare-datatypes ((tuple2!13416 0))(
  ( (tuple2!13417 (_1!7594 Token!4456) (_2!7594 List!13901)) )
))
(declare-datatypes ((Option!2652 0))(
  ( (None!2651) (Some!2651 (v!21393 tuple2!13416)) )
))
(declare-fun maxPrefix!1074 (LexerInterface!2092 List!13902 List!13901) Option!2652)

(assert (=> b!1357437 (= res!611716 (not (= (maxPrefix!1074 thiss!19762 rules!2550 lt!449599) (Some!2651 (tuple2!13417 t1!34 Nil!13835)))))))

(declare-fun b!1357438 () Bool)

(declare-fun res!611699 () Bool)

(assert (=> b!1357438 (=> (not res!611699) (not e!868693))))

(assert (=> b!1357438 (= res!611699 (not (= (isSeparator!2397 (rule!4146 t1!34)) (isSeparator!2397 (rule!4146 t2!34)))))))

(declare-fun b!1357439 () Bool)

(declare-fun res!611705 () Bool)

(assert (=> b!1357439 (=> res!611705 e!868690)))

(declare-fun lt!449594 () List!13901)

(declare-fun lt!449595 () C!7712)

(declare-fun contains!2568 (List!13901 C!7712) Bool)

(assert (=> b!1357439 (= res!611705 (not (contains!2568 lt!449594 lt!449595)))))

(declare-fun e!868683 () Bool)

(declare-fun e!868674 () Bool)

(assert (=> b!1357440 (= e!868683 (not e!868674))))

(declare-fun res!611700 () Bool)

(assert (=> b!1357440 (=> res!611700 e!868674)))

(declare-fun lambda!57484 () Int)

(declare-fun Exists!863 (Int) Bool)

(assert (=> b!1357440 (= res!611700 (not (Exists!863 lambda!57484)))))

(assert (=> b!1357440 (Exists!863 lambda!57484)))

(declare-fun lt!449597 () Unit!19983)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!181 (Regex!3711 List!13901) Unit!19983)

(assert (=> b!1357440 (= lt!449597 (lemmaPrefixMatchThenExistsStringThatMatches!181 lt!449588 lt!449594))))

(declare-fun b!1357441 () Bool)

(declare-fun e!868687 () Bool)

(declare-fun tp!391656 () Bool)

(declare-fun e!868688 () Bool)

(declare-fun inv!18175 (String!16671) Bool)

(declare-fun inv!18179 (TokenValueInjection!4634) Bool)

(assert (=> b!1357441 (= e!868687 (and tp!391656 (inv!18175 (tag!2659 (rule!4146 t1!34))) (inv!18179 (transformation!2397 (rule!4146 t1!34))) e!868688))))

(declare-fun b!1357442 () Bool)

(declare-fun res!611695 () Bool)

(declare-fun e!868673 () Bool)

(assert (=> b!1357442 (=> (not res!611695) (not e!868673))))

(declare-fun sepAndNonSepRulesDisjointChars!770 (List!13902 List!13902) Bool)

(assert (=> b!1357442 (= res!611695 (sepAndNonSepRulesDisjointChars!770 rules!2550 rules!2550))))

(declare-fun b!1357443 () Bool)

(declare-fun res!611709 () Bool)

(assert (=> b!1357443 (=> (not res!611709) (not e!868693))))

(declare-fun rulesInvariant!1962 (LexerInterface!2092 List!13902) Bool)

(assert (=> b!1357443 (= res!611709 (rulesInvariant!1962 thiss!19762 rules!2550))))

(declare-fun b!1357444 () Bool)

(declare-fun e!868685 () Bool)

(assert (=> b!1357444 (= e!868682 e!868685)))

(declare-fun res!611712 () Bool)

(assert (=> b!1357444 (=> res!611712 e!868685)))

(declare-fun lt!449591 () tuple2!13414)

(declare-fun lt!449586 () List!13904)

(declare-fun list!5306 (BalanceConc!9054) List!13904)

(assert (=> b!1357444 (= res!611712 (not (= (list!5306 (_1!7593 lt!449591)) lt!449586)))))

(assert (=> b!1357444 (= lt!449586 (Cons!13838 t2!34 Nil!13838))))

(declare-fun lt!449584 () BalanceConc!9052)

(declare-fun lex!919 (LexerInterface!2092 List!13902 BalanceConc!9052) tuple2!13414)

(assert (=> b!1357444 (= lt!449591 (lex!919 thiss!19762 rules!2550 lt!449584))))

(declare-fun print!858 (LexerInterface!2092 BalanceConc!9054) BalanceConc!9052)

(declare-fun singletonSeq!1020 (Token!4456) BalanceConc!9054)

(assert (=> b!1357444 (= lt!449584 (print!858 thiss!19762 (singletonSeq!1020 t2!34)))))

(declare-fun e!868677 () Bool)

(declare-fun b!1357445 () Bool)

(declare-fun tp!391660 () Bool)

(declare-fun inv!21 (TokenValue!2487) Bool)

(assert (=> b!1357445 (= e!868681 (and (inv!21 (value!77947 t2!34)) e!868677 tp!391660))))

(declare-fun e!868692 () Bool)

(declare-fun tp!391662 () Bool)

(declare-fun b!1357446 () Bool)

(declare-fun e!868672 () Bool)

(assert (=> b!1357446 (= e!868692 (and tp!391662 (inv!18175 (tag!2659 (h!19237 rules!2550))) (inv!18179 (transformation!2397 (h!19237 rules!2550))) e!868672))))

(declare-fun b!1357447 () Bool)

(declare-fun res!611711 () Bool)

(assert (=> b!1357447 (=> (not res!611711) (not e!868693))))

(declare-fun isEmpty!8301 (List!13902) Bool)

(assert (=> b!1357447 (= res!611711 (not (isEmpty!8301 rules!2550)))))

(declare-fun b!1357448 () Bool)

(declare-fun res!611707 () Bool)

(assert (=> b!1357448 (=> (not res!611707) (not e!868693))))

(declare-fun rulesProduceIndividualToken!1061 (LexerInterface!2092 List!13902 Token!4456) Bool)

(assert (=> b!1357448 (= res!611707 (rulesProduceIndividualToken!1061 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1357449 () Bool)

(assert (=> b!1357449 (= e!868693 e!868673)))

(declare-fun res!611718 () Bool)

(assert (=> b!1357449 (=> (not res!611718) (not e!868673))))

(declare-fun lt!449593 () BalanceConc!9052)

(declare-fun size!11320 (BalanceConc!9052) Int)

(assert (=> b!1357449 (= res!611718 (> (size!11320 lt!449593) 0))))

(declare-fun charsOf!1369 (Token!4456) BalanceConc!9052)

(assert (=> b!1357449 (= lt!449593 (charsOf!1369 t2!34))))

(assert (=> b!1357450 (= e!868672 (and tp!391654 tp!391659))))

(declare-fun b!1357451 () Bool)

(declare-fun res!611706 () Bool)

(assert (=> b!1357451 (=> res!611706 e!868690)))

(assert (=> b!1357451 (= res!611706 (not (contains!2568 lt!449598 lt!449595)))))

(declare-fun b!1357452 () Bool)

(declare-fun res!611708 () Bool)

(assert (=> b!1357452 (=> res!611708 e!868685)))

(assert (=> b!1357452 (= res!611708 (not (isEmpty!8300 (_2!7593 lt!449591))))))

(declare-fun b!1357453 () Bool)

(declare-fun res!611703 () Bool)

(assert (=> b!1357453 (=> (not res!611703) (not e!868673))))

(declare-fun separableTokensPredicate!375 (LexerInterface!2092 Token!4456 Token!4456 List!13902) Bool)

(assert (=> b!1357453 (= res!611703 (not (separableTokensPredicate!375 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1357454 () Bool)

(declare-datatypes ((tuple2!13418 0))(
  ( (tuple2!13419 (_1!7595 List!13904) (_2!7595 List!13901)) )
))
(declare-fun lexList!610 (LexerInterface!2092 List!13902 List!13901) tuple2!13418)

(declare-fun list!5307 (BalanceConc!9052) List!13901)

(assert (=> b!1357454 (= e!868685 (= (lexList!610 thiss!19762 rules!2550 (list!5307 lt!449584)) (tuple2!13419 lt!449586 Nil!13835)))))

(declare-fun b!1357455 () Bool)

(declare-fun res!611698 () Bool)

(assert (=> b!1357455 (=> res!611698 e!868682)))

(declare-fun lt!449596 () BalanceConc!9052)

(declare-fun lt!449585 () List!13904)

(assert (=> b!1357455 (= res!611698 (not (= (lexList!610 thiss!19762 rules!2550 (list!5307 lt!449596)) (tuple2!13419 lt!449585 Nil!13835))))))

(declare-fun tp!391658 () Bool)

(declare-fun b!1357456 () Bool)

(declare-fun e!868675 () Bool)

(assert (=> b!1357456 (= e!868677 (and tp!391658 (inv!18175 (tag!2659 (rule!4146 t2!34))) (inv!18179 (transformation!2397 (rule!4146 t2!34))) e!868675))))

(declare-fun e!868676 () Bool)

(assert (=> b!1357457 (= e!868671 e!868676)))

(declare-fun res!611696 () Bool)

(assert (=> b!1357457 (=> res!611696 e!868676)))

(declare-fun lambda!57487 () Int)

(declare-fun exists!453 (List!13902 Int) Bool)

(assert (=> b!1357457 (= res!611696 (not (exists!453 rules!2550 lambda!57487)))))

(assert (=> b!1357457 (exists!453 rules!2550 lambda!57487)))

(declare-fun lt!449587 () Unit!19983)

(declare-fun lemmaMapContains!116 (List!13902 Int Regex!3711) Unit!19983)

(assert (=> b!1357457 (= lt!449587 (lemmaMapContains!116 rules!2550 lambda!57485 lt!449582))))

(declare-fun b!1357458 () Bool)

(declare-fun res!611715 () Bool)

(assert (=> b!1357458 (=> (not res!611715) (not e!868693))))

(assert (=> b!1357458 (= res!611715 (rulesProduceIndividualToken!1061 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1357459 () Bool)

(declare-fun e!868686 () Bool)

(assert (=> b!1357459 (= e!868686 e!868690)))

(declare-fun res!611701 () Bool)

(assert (=> b!1357459 (=> res!611701 e!868690)))

(declare-fun lt!449592 () C!7712)

(assert (=> b!1357459 (= res!611701 (not (contains!2568 lt!449594 lt!449592)))))

(declare-fun lt!449589 () BalanceConc!9052)

(declare-fun apply!3347 (BalanceConc!9052 Int) C!7712)

(assert (=> b!1357459 (= lt!449592 (apply!3347 lt!449589 0))))

(declare-fun b!1357460 () Bool)

(assert (=> b!1357460 (= e!868673 e!868683)))

(declare-fun res!611697 () Bool)

(assert (=> b!1357460 (=> (not res!611697) (not e!868683))))

(declare-fun prefixMatch!220 (Regex!3711 List!13901) Bool)

(assert (=> b!1357460 (= res!611697 (prefixMatch!220 lt!449588 lt!449594))))

(declare-fun rulesRegex!280 (LexerInterface!2092 List!13902) Regex!3711)

(assert (=> b!1357460 (= lt!449588 (rulesRegex!280 thiss!19762 rules!2550))))

(declare-fun ++!3562 (List!13901 List!13901) List!13901)

(assert (=> b!1357460 (= lt!449594 (++!3562 lt!449599 (Cons!13835 lt!449595 Nil!13835)))))

(assert (=> b!1357460 (= lt!449595 (apply!3347 lt!449593 0))))

(assert (=> b!1357460 (= lt!449599 (list!5307 lt!449589))))

(assert (=> b!1357460 (= lt!449589 (charsOf!1369 t1!34))))

(assert (=> b!1357461 (= e!868688 (and tp!391661 tp!391657))))

(declare-fun b!1357462 () Bool)

(declare-fun res!611694 () Bool)

(assert (=> b!1357462 (=> res!611694 e!868682)))

(declare-fun contains!2569 (List!13902 Rule!4594) Bool)

(assert (=> b!1357462 (= res!611694 (not (contains!2569 rules!2550 (rule!4146 t1!34))))))

(declare-fun b!1357463 () Bool)

(declare-fun tp!391653 () Bool)

(assert (=> b!1357463 (= e!868689 (and (inv!21 (value!77947 t1!34)) e!868687 tp!391653))))

(assert (=> b!1357464 (= e!868675 (and tp!391663 tp!391655))))

(declare-fun b!1357465 () Bool)

(assert (=> b!1357465 (= e!868674 e!868686)))

(declare-fun res!611713 () Bool)

(assert (=> b!1357465 (=> res!611713 e!868686)))

(declare-fun getSuffix!559 (List!13901 List!13901) List!13901)

(assert (=> b!1357465 (= res!611713 (not (= lt!449598 (++!3562 lt!449594 (getSuffix!559 lt!449598 lt!449594)))))))

(declare-fun pickWitness!166 (Int) List!13901)

(assert (=> b!1357465 (= lt!449598 (pickWitness!166 lambda!57484))))

(declare-fun b!1357466 () Bool)

(declare-fun res!611693 () Bool)

(assert (=> b!1357466 (=> res!611693 e!868690)))

(assert (=> b!1357466 (= res!611693 (not (contains!2568 lt!449598 lt!449592)))))

(declare-fun b!1357467 () Bool)

(declare-fun res!611702 () Bool)

(assert (=> b!1357467 (=> res!611702 e!868690)))

(declare-fun matchR!1704 (Regex!3711 List!13901) Bool)

(assert (=> b!1357467 (= res!611702 (not (matchR!1704 lt!449588 lt!449598)))))

(declare-fun b!1357468 () Bool)

(assert (=> b!1357468 (= e!868676 e!868682)))

(declare-fun res!611692 () Bool)

(assert (=> b!1357468 (=> res!611692 e!868682)))

(assert (=> b!1357468 (= res!611692 (not (= (list!5306 (_1!7593 lt!449583)) lt!449585)))))

(assert (=> b!1357468 (= lt!449585 (Cons!13838 t1!34 Nil!13838))))

(assert (=> b!1357468 (= lt!449583 (lex!919 thiss!19762 rules!2550 lt!449596))))

(assert (=> b!1357468 (= lt!449596 (print!858 thiss!19762 (singletonSeq!1020 t1!34)))))

(declare-fun lt!449581 () Rule!4594)

(declare-fun getWitness!341 (List!13902 Int) Rule!4594)

(assert (=> b!1357468 (= lt!449581 (getWitness!341 rules!2550 lambda!57487))))

(declare-fun b!1357469 () Bool)

(declare-fun tp!391664 () Bool)

(assert (=> b!1357469 (= e!868694 (and e!868692 tp!391664))))

(assert (= (and start!122134 res!611704) b!1357447))

(assert (= (and b!1357447 res!611711) b!1357443))

(assert (= (and b!1357443 res!611709) b!1357448))

(assert (= (and b!1357448 res!611707) b!1357458))

(assert (= (and b!1357458 res!611715) b!1357438))

(assert (= (and b!1357438 res!611699) b!1357449))

(assert (= (and b!1357449 res!611718) b!1357442))

(assert (= (and b!1357442 res!611695) b!1357453))

(assert (= (and b!1357453 res!611703) b!1357460))

(assert (= (and b!1357460 res!611697) b!1357440))

(assert (= (and b!1357440 (not res!611700)) b!1357465))

(assert (= (and b!1357465 (not res!611713)) b!1357459))

(assert (= (and b!1357459 (not res!611701)) b!1357466))

(assert (= (and b!1357466 (not res!611693)) b!1357439))

(assert (= (and b!1357439 (not res!611705)) b!1357451))

(assert (= (and b!1357451 (not res!611706)) b!1357467))

(assert (= (and b!1357467 (not res!611702)) b!1357435))

(assert (= (and b!1357435 (not res!611717)) b!1357434))

(assert (= (and b!1357434 (not res!611714)) b!1357457))

(assert (= (and b!1357457 (not res!611696)) b!1357468))

(assert (= (and b!1357468 (not res!611692)) b!1357436))

(assert (= (and b!1357436 (not res!611710)) b!1357455))

(assert (= (and b!1357455 (not res!611698)) b!1357437))

(assert (= (and b!1357437 (not res!611716)) b!1357462))

(assert (= (and b!1357462 (not res!611694)) b!1357444))

(assert (= (and b!1357444 (not res!611712)) b!1357452))

(assert (= (and b!1357452 (not res!611708)) b!1357454))

(assert (= b!1357446 b!1357450))

(assert (= b!1357469 b!1357446))

(assert (= (and start!122134 ((_ is Cons!13836) rules!2550)) b!1357469))

(assert (= b!1357441 b!1357461))

(assert (= b!1357463 b!1357441))

(assert (= start!122134 b!1357463))

(assert (= b!1357456 b!1357464))

(assert (= b!1357445 b!1357456))

(assert (= start!122134 b!1357445))

(declare-fun m!1520115 () Bool)

(assert (=> b!1357437 m!1520115))

(declare-fun m!1520117 () Bool)

(assert (=> b!1357451 m!1520117))

(declare-fun m!1520119 () Bool)

(assert (=> b!1357434 m!1520119))

(assert (=> b!1357434 m!1520119))

(declare-fun m!1520121 () Bool)

(assert (=> b!1357434 m!1520121))

(assert (=> b!1357434 m!1520119))

(assert (=> b!1357434 m!1520119))

(declare-fun m!1520123 () Bool)

(assert (=> b!1357434 m!1520123))

(declare-fun m!1520125 () Bool)

(assert (=> b!1357452 m!1520125))

(declare-fun m!1520127 () Bool)

(assert (=> b!1357448 m!1520127))

(declare-fun m!1520129 () Bool)

(assert (=> b!1357455 m!1520129))

(assert (=> b!1357455 m!1520129))

(declare-fun m!1520131 () Bool)

(assert (=> b!1357455 m!1520131))

(declare-fun m!1520133 () Bool)

(assert (=> b!1357465 m!1520133))

(assert (=> b!1357465 m!1520133))

(declare-fun m!1520135 () Bool)

(assert (=> b!1357465 m!1520135))

(declare-fun m!1520137 () Bool)

(assert (=> b!1357465 m!1520137))

(declare-fun m!1520139 () Bool)

(assert (=> b!1357439 m!1520139))

(declare-fun m!1520141 () Bool)

(assert (=> b!1357460 m!1520141))

(declare-fun m!1520143 () Bool)

(assert (=> b!1357460 m!1520143))

(declare-fun m!1520145 () Bool)

(assert (=> b!1357460 m!1520145))

(declare-fun m!1520147 () Bool)

(assert (=> b!1357460 m!1520147))

(declare-fun m!1520149 () Bool)

(assert (=> b!1357460 m!1520149))

(declare-fun m!1520151 () Bool)

(assert (=> b!1357460 m!1520151))

(declare-fun m!1520153 () Bool)

(assert (=> start!122134 m!1520153))

(declare-fun m!1520155 () Bool)

(assert (=> start!122134 m!1520155))

(declare-fun m!1520157 () Bool)

(assert (=> b!1357467 m!1520157))

(declare-fun m!1520159 () Bool)

(assert (=> b!1357459 m!1520159))

(declare-fun m!1520161 () Bool)

(assert (=> b!1357459 m!1520161))

(declare-fun m!1520163 () Bool)

(assert (=> b!1357453 m!1520163))

(declare-fun m!1520165 () Bool)

(assert (=> b!1357444 m!1520165))

(declare-fun m!1520167 () Bool)

(assert (=> b!1357444 m!1520167))

(declare-fun m!1520169 () Bool)

(assert (=> b!1357444 m!1520169))

(assert (=> b!1357444 m!1520169))

(declare-fun m!1520171 () Bool)

(assert (=> b!1357444 m!1520171))

(assert (=> b!1357435 m!1520119))

(declare-fun m!1520173 () Bool)

(assert (=> b!1357435 m!1520173))

(assert (=> b!1357435 m!1520119))

(assert (=> b!1357435 m!1520119))

(declare-fun m!1520175 () Bool)

(assert (=> b!1357435 m!1520175))

(declare-fun m!1520177 () Bool)

(assert (=> b!1357435 m!1520177))

(declare-fun m!1520179 () Bool)

(assert (=> b!1357462 m!1520179))

(declare-fun m!1520181 () Bool)

(assert (=> b!1357447 m!1520181))

(declare-fun m!1520183 () Bool)

(assert (=> b!1357457 m!1520183))

(assert (=> b!1357457 m!1520183))

(declare-fun m!1520185 () Bool)

(assert (=> b!1357457 m!1520185))

(declare-fun m!1520187 () Bool)

(assert (=> b!1357449 m!1520187))

(declare-fun m!1520189 () Bool)

(assert (=> b!1357449 m!1520189))

(declare-fun m!1520191 () Bool)

(assert (=> b!1357440 m!1520191))

(assert (=> b!1357440 m!1520191))

(declare-fun m!1520193 () Bool)

(assert (=> b!1357440 m!1520193))

(declare-fun m!1520195 () Bool)

(assert (=> b!1357441 m!1520195))

(declare-fun m!1520197 () Bool)

(assert (=> b!1357441 m!1520197))

(declare-fun m!1520199 () Bool)

(assert (=> b!1357443 m!1520199))

(declare-fun m!1520201 () Bool)

(assert (=> b!1357468 m!1520201))

(declare-fun m!1520203 () Bool)

(assert (=> b!1357468 m!1520203))

(declare-fun m!1520205 () Bool)

(assert (=> b!1357468 m!1520205))

(assert (=> b!1357468 m!1520203))

(declare-fun m!1520207 () Bool)

(assert (=> b!1357468 m!1520207))

(declare-fun m!1520209 () Bool)

(assert (=> b!1357468 m!1520209))

(declare-fun m!1520211 () Bool)

(assert (=> b!1357458 m!1520211))

(declare-fun m!1520213 () Bool)

(assert (=> b!1357466 m!1520213))

(declare-fun m!1520215 () Bool)

(assert (=> b!1357446 m!1520215))

(declare-fun m!1520217 () Bool)

(assert (=> b!1357446 m!1520217))

(declare-fun m!1520219 () Bool)

(assert (=> b!1357436 m!1520219))

(declare-fun m!1520221 () Bool)

(assert (=> b!1357463 m!1520221))

(declare-fun m!1520223 () Bool)

(assert (=> b!1357442 m!1520223))

(declare-fun m!1520225 () Bool)

(assert (=> b!1357454 m!1520225))

(assert (=> b!1357454 m!1520225))

(declare-fun m!1520227 () Bool)

(assert (=> b!1357454 m!1520227))

(declare-fun m!1520229 () Bool)

(assert (=> b!1357445 m!1520229))

(declare-fun m!1520231 () Bool)

(assert (=> b!1357456 m!1520231))

(declare-fun m!1520233 () Bool)

(assert (=> b!1357456 m!1520233))

(check-sat (not b!1357467) (not b!1357440) (not b!1357446) (not b!1357466) (not b!1357448) (not b!1357457) (not b!1357469) b_and!90883 (not b!1357447) (not b!1357444) (not b_next!33767) (not b!1357449) (not b_next!33771) (not b!1357437) (not b!1357463) (not start!122134) (not b!1357459) (not b!1357452) (not b!1357435) (not b!1357453) (not b!1357436) (not b!1357445) (not b!1357434) (not b!1357465) (not b_next!33765) (not b!1357442) b_and!90887 b_and!90889 (not b!1357456) (not b!1357455) (not b!1357443) (not b!1357439) b_and!90885 (not b!1357468) (not b!1357441) (not b_next!33763) b_and!90893 (not b_next!33769) (not b!1357451) (not b!1357458) (not b_next!33773) (not b!1357462) b_and!90891 (not b!1357460) (not b!1357454))
(check-sat (not b_next!33767) (not b_next!33771) (not b_next!33765) b_and!90885 b_and!90883 (not b_next!33763) (not b_next!33773) b_and!90891 b_and!90887 b_and!90889 b_and!90893 (not b_next!33769))
(get-model)

(declare-fun d!384639 () Bool)

(assert (=> d!384639 (= (isEmpty!8301 rules!2550) ((_ is Nil!13836) rules!2550))))

(assert (=> b!1357447 d!384639))

(declare-fun d!384641 () Bool)

(declare-fun lt!449653 () Bool)

(declare-fun e!868759 () Bool)

(assert (=> d!384641 (= lt!449653 e!868759)))

(declare-fun res!611778 () Bool)

(assert (=> d!384641 (=> (not res!611778) (not e!868759))))

(assert (=> d!384641 (= res!611778 (= (list!5306 (_1!7593 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t1!34))))) (list!5306 (singletonSeq!1020 t1!34))))))

(declare-fun e!868760 () Bool)

(assert (=> d!384641 (= lt!449653 e!868760)))

(declare-fun res!611779 () Bool)

(assert (=> d!384641 (=> (not res!611779) (not e!868760))))

(declare-fun lt!449652 () tuple2!13414)

(declare-fun size!11326 (BalanceConc!9054) Int)

(assert (=> d!384641 (= res!611779 (= (size!11326 (_1!7593 lt!449652)) 1))))

(assert (=> d!384641 (= lt!449652 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t1!34))))))

(assert (=> d!384641 (not (isEmpty!8301 rules!2550))))

(assert (=> d!384641 (= (rulesProduceIndividualToken!1061 thiss!19762 rules!2550 t1!34) lt!449653)))

(declare-fun b!1357569 () Bool)

(declare-fun res!611780 () Bool)

(assert (=> b!1357569 (=> (not res!611780) (not e!868760))))

(declare-fun apply!3351 (BalanceConc!9054 Int) Token!4456)

(assert (=> b!1357569 (= res!611780 (= (apply!3351 (_1!7593 lt!449652) 0) t1!34))))

(declare-fun b!1357570 () Bool)

(assert (=> b!1357570 (= e!868760 (isEmpty!8300 (_2!7593 lt!449652)))))

(declare-fun b!1357571 () Bool)

(assert (=> b!1357571 (= e!868759 (isEmpty!8300 (_2!7593 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t1!34))))))))

(assert (= (and d!384641 res!611779) b!1357569))

(assert (= (and b!1357569 res!611780) b!1357570))

(assert (= (and d!384641 res!611778) b!1357571))

(declare-fun m!1520377 () Bool)

(assert (=> d!384641 m!1520377))

(assert (=> d!384641 m!1520203))

(declare-fun m!1520379 () Bool)

(assert (=> d!384641 m!1520379))

(assert (=> d!384641 m!1520203))

(assert (=> d!384641 m!1520203))

(assert (=> d!384641 m!1520205))

(assert (=> d!384641 m!1520205))

(declare-fun m!1520381 () Bool)

(assert (=> d!384641 m!1520381))

(assert (=> d!384641 m!1520181))

(declare-fun m!1520383 () Bool)

(assert (=> d!384641 m!1520383))

(declare-fun m!1520385 () Bool)

(assert (=> b!1357569 m!1520385))

(declare-fun m!1520387 () Bool)

(assert (=> b!1357570 m!1520387))

(assert (=> b!1357571 m!1520203))

(assert (=> b!1357571 m!1520203))

(assert (=> b!1357571 m!1520205))

(assert (=> b!1357571 m!1520205))

(assert (=> b!1357571 m!1520381))

(declare-fun m!1520389 () Bool)

(assert (=> b!1357571 m!1520389))

(assert (=> b!1357448 d!384641))

(declare-fun b!1357600 () Bool)

(declare-fun res!611800 () Bool)

(declare-fun e!868778 () Bool)

(assert (=> b!1357600 (=> (not res!611800) (not e!868778))))

(declare-fun call!91264 () Bool)

(assert (=> b!1357600 (= res!611800 (not call!91264))))

(declare-fun b!1357601 () Bool)

(declare-fun e!868776 () Bool)

(declare-fun derivativeStep!948 (Regex!3711 C!7712) Regex!3711)

(declare-fun head!2437 (List!13901) C!7712)

(declare-fun tail!1961 (List!13901) List!13901)

(assert (=> b!1357601 (= e!868776 (matchR!1704 (derivativeStep!948 lt!449588 (head!2437 lt!449598)) (tail!1961 lt!449598)))))

(declare-fun b!1357602 () Bool)

(declare-fun res!611802 () Bool)

(declare-fun e!868777 () Bool)

(assert (=> b!1357602 (=> res!611802 e!868777)))

(assert (=> b!1357602 (= res!611802 e!868778)))

(declare-fun res!611801 () Bool)

(assert (=> b!1357602 (=> (not res!611801) (not e!868778))))

(declare-fun lt!449656 () Bool)

(assert (=> b!1357602 (= res!611801 lt!449656)))

(declare-fun b!1357603 () Bool)

(assert (=> b!1357603 (= e!868778 (= (head!2437 lt!449598) (c!222695 lt!449588)))))

(declare-fun b!1357604 () Bool)

(declare-fun nullable!1190 (Regex!3711) Bool)

(assert (=> b!1357604 (= e!868776 (nullable!1190 lt!449588))))

(declare-fun bm!91259 () Bool)

(declare-fun isEmpty!8306 (List!13901) Bool)

(assert (=> bm!91259 (= call!91264 (isEmpty!8306 lt!449598))))

(declare-fun d!384687 () Bool)

(declare-fun e!868775 () Bool)

(assert (=> d!384687 e!868775))

(declare-fun c!222724 () Bool)

(assert (=> d!384687 (= c!222724 ((_ is EmptyExpr!3711) lt!449588))))

(assert (=> d!384687 (= lt!449656 e!868776)))

(declare-fun c!222725 () Bool)

(assert (=> d!384687 (= c!222725 (isEmpty!8306 lt!449598))))

(declare-fun validRegex!1611 (Regex!3711) Bool)

(assert (=> d!384687 (validRegex!1611 lt!449588)))

(assert (=> d!384687 (= (matchR!1704 lt!449588 lt!449598) lt!449656)))

(declare-fun b!1357605 () Bool)

(declare-fun e!868779 () Bool)

(assert (=> b!1357605 (= e!868779 (not lt!449656))))

(declare-fun b!1357606 () Bool)

(declare-fun e!868780 () Bool)

(assert (=> b!1357606 (= e!868777 e!868780)))

(declare-fun res!611803 () Bool)

(assert (=> b!1357606 (=> (not res!611803) (not e!868780))))

(assert (=> b!1357606 (= res!611803 (not lt!449656))))

(declare-fun b!1357607 () Bool)

(declare-fun e!868781 () Bool)

(assert (=> b!1357607 (= e!868780 e!868781)))

(declare-fun res!611797 () Bool)

(assert (=> b!1357607 (=> res!611797 e!868781)))

(assert (=> b!1357607 (= res!611797 call!91264)))

(declare-fun b!1357608 () Bool)

(declare-fun res!611804 () Bool)

(assert (=> b!1357608 (=> res!611804 e!868777)))

(assert (=> b!1357608 (= res!611804 (not ((_ is ElementMatch!3711) lt!449588)))))

(assert (=> b!1357608 (= e!868779 e!868777)))

(declare-fun b!1357609 () Bool)

(declare-fun res!611798 () Bool)

(assert (=> b!1357609 (=> res!611798 e!868781)))

(assert (=> b!1357609 (= res!611798 (not (isEmpty!8306 (tail!1961 lt!449598))))))

(declare-fun b!1357610 () Bool)

(assert (=> b!1357610 (= e!868781 (not (= (head!2437 lt!449598) (c!222695 lt!449588))))))

(declare-fun b!1357611 () Bool)

(assert (=> b!1357611 (= e!868775 (= lt!449656 call!91264))))

(declare-fun b!1357612 () Bool)

(declare-fun res!611799 () Bool)

(assert (=> b!1357612 (=> (not res!611799) (not e!868778))))

(assert (=> b!1357612 (= res!611799 (isEmpty!8306 (tail!1961 lt!449598)))))

(declare-fun b!1357613 () Bool)

(assert (=> b!1357613 (= e!868775 e!868779)))

(declare-fun c!222723 () Bool)

(assert (=> b!1357613 (= c!222723 ((_ is EmptyLang!3711) lt!449588))))

(assert (= (and d!384687 c!222725) b!1357604))

(assert (= (and d!384687 (not c!222725)) b!1357601))

(assert (= (and d!384687 c!222724) b!1357611))

(assert (= (and d!384687 (not c!222724)) b!1357613))

(assert (= (and b!1357613 c!222723) b!1357605))

(assert (= (and b!1357613 (not c!222723)) b!1357608))

(assert (= (and b!1357608 (not res!611804)) b!1357602))

(assert (= (and b!1357602 res!611801) b!1357600))

(assert (= (and b!1357600 res!611800) b!1357612))

(assert (= (and b!1357612 res!611799) b!1357603))

(assert (= (and b!1357602 (not res!611802)) b!1357606))

(assert (= (and b!1357606 res!611803) b!1357607))

(assert (= (and b!1357607 (not res!611797)) b!1357609))

(assert (= (and b!1357609 (not res!611798)) b!1357610))

(assert (= (or b!1357611 b!1357600 b!1357607) bm!91259))

(declare-fun m!1520391 () Bool)

(assert (=> b!1357603 m!1520391))

(assert (=> b!1357610 m!1520391))

(declare-fun m!1520393 () Bool)

(assert (=> b!1357612 m!1520393))

(assert (=> b!1357612 m!1520393))

(declare-fun m!1520395 () Bool)

(assert (=> b!1357612 m!1520395))

(declare-fun m!1520397 () Bool)

(assert (=> b!1357604 m!1520397))

(declare-fun m!1520399 () Bool)

(assert (=> bm!91259 m!1520399))

(assert (=> b!1357609 m!1520393))

(assert (=> b!1357609 m!1520393))

(assert (=> b!1357609 m!1520395))

(assert (=> b!1357601 m!1520391))

(assert (=> b!1357601 m!1520391))

(declare-fun m!1520401 () Bool)

(assert (=> b!1357601 m!1520401))

(assert (=> b!1357601 m!1520393))

(assert (=> b!1357601 m!1520401))

(assert (=> b!1357601 m!1520393))

(declare-fun m!1520403 () Bool)

(assert (=> b!1357601 m!1520403))

(assert (=> d!384687 m!1520399))

(declare-fun m!1520405 () Bool)

(assert (=> d!384687 m!1520405))

(assert (=> b!1357467 d!384687))

(declare-fun d!384689 () Bool)

(assert (=> d!384689 (= (inv!18175 (tag!2659 (h!19237 rules!2550))) (= (mod (str.len (value!77946 (tag!2659 (h!19237 rules!2550)))) 2) 0))))

(assert (=> b!1357446 d!384689))

(declare-fun d!384691 () Bool)

(declare-fun res!611807 () Bool)

(declare-fun e!868784 () Bool)

(assert (=> d!384691 (=> (not res!611807) (not e!868784))))

(declare-fun semiInverseModEq!920 (Int Int) Bool)

(assert (=> d!384691 (= res!611807 (semiInverseModEq!920 (toChars!3511 (transformation!2397 (h!19237 rules!2550))) (toValue!3652 (transformation!2397 (h!19237 rules!2550)))))))

(assert (=> d!384691 (= (inv!18179 (transformation!2397 (h!19237 rules!2550))) e!868784)))

(declare-fun b!1357616 () Bool)

(declare-fun equivClasses!879 (Int Int) Bool)

(assert (=> b!1357616 (= e!868784 (equivClasses!879 (toChars!3511 (transformation!2397 (h!19237 rules!2550))) (toValue!3652 (transformation!2397 (h!19237 rules!2550)))))))

(assert (= (and d!384691 res!611807) b!1357616))

(declare-fun m!1520407 () Bool)

(assert (=> d!384691 m!1520407))

(declare-fun m!1520409 () Bool)

(assert (=> b!1357616 m!1520409))

(assert (=> b!1357446 d!384691))

(declare-fun d!384693 () Bool)

(declare-fun lt!449659 () BalanceConc!9052)

(declare-fun printList!600 (LexerInterface!2092 List!13904) List!13901)

(assert (=> d!384693 (= (list!5307 lt!449659) (printList!600 thiss!19762 (list!5306 (singletonSeq!1020 t1!34))))))

(declare-fun printTailRec!582 (LexerInterface!2092 BalanceConc!9054 Int BalanceConc!9052) BalanceConc!9052)

(assert (=> d!384693 (= lt!449659 (printTailRec!582 thiss!19762 (singletonSeq!1020 t1!34) 0 (BalanceConc!9053 Empty!4556)))))

(assert (=> d!384693 (= (print!858 thiss!19762 (singletonSeq!1020 t1!34)) lt!449659)))

(declare-fun bs!334038 () Bool)

(assert (= bs!334038 d!384693))

(declare-fun m!1520411 () Bool)

(assert (=> bs!334038 m!1520411))

(assert (=> bs!334038 m!1520203))

(assert (=> bs!334038 m!1520379))

(assert (=> bs!334038 m!1520379))

(declare-fun m!1520413 () Bool)

(assert (=> bs!334038 m!1520413))

(assert (=> bs!334038 m!1520203))

(declare-fun m!1520415 () Bool)

(assert (=> bs!334038 m!1520415))

(assert (=> b!1357468 d!384693))

(declare-fun d!384695 () Bool)

(declare-fun e!868787 () Bool)

(assert (=> d!384695 e!868787))

(declare-fun res!611810 () Bool)

(assert (=> d!384695 (=> (not res!611810) (not e!868787))))

(declare-fun lt!449662 () BalanceConc!9054)

(assert (=> d!384695 (= res!611810 (= (list!5306 lt!449662) (Cons!13838 t1!34 Nil!13838)))))

(declare-fun singleton!438 (Token!4456) BalanceConc!9054)

(assert (=> d!384695 (= lt!449662 (singleton!438 t1!34))))

(assert (=> d!384695 (= (singletonSeq!1020 t1!34) lt!449662)))

(declare-fun b!1357619 () Bool)

(declare-fun isBalanced!1332 (Conc!4557) Bool)

(assert (=> b!1357619 (= e!868787 (isBalanced!1332 (c!222696 lt!449662)))))

(assert (= (and d!384695 res!611810) b!1357619))

(declare-fun m!1520417 () Bool)

(assert (=> d!384695 m!1520417))

(declare-fun m!1520419 () Bool)

(assert (=> d!384695 m!1520419))

(declare-fun m!1520421 () Bool)

(assert (=> b!1357619 m!1520421))

(assert (=> b!1357468 d!384695))

(declare-fun b!1357632 () Bool)

(declare-fun e!868797 () Bool)

(declare-fun dynLambda!6209 (Int Rule!4594) Bool)

(assert (=> b!1357632 (= e!868797 (dynLambda!6209 lambda!57487 (h!19237 rules!2550)))))

(declare-fun d!384697 () Bool)

(declare-fun e!868798 () Bool)

(assert (=> d!384697 e!868798))

(declare-fun res!611815 () Bool)

(assert (=> d!384697 (=> (not res!611815) (not e!868798))))

(declare-fun lt!449667 () Rule!4594)

(assert (=> d!384697 (= res!611815 (dynLambda!6209 lambda!57487 lt!449667))))

(declare-fun e!868796 () Rule!4594)

(assert (=> d!384697 (= lt!449667 e!868796)))

(declare-fun c!222730 () Bool)

(assert (=> d!384697 (= c!222730 e!868797)))

(declare-fun res!611816 () Bool)

(assert (=> d!384697 (=> (not res!611816) (not e!868797))))

(assert (=> d!384697 (= res!611816 ((_ is Cons!13836) rules!2550))))

(assert (=> d!384697 (exists!453 rules!2550 lambda!57487)))

(assert (=> d!384697 (= (getWitness!341 rules!2550 lambda!57487) lt!449667)))

(declare-fun b!1357633 () Bool)

(assert (=> b!1357633 (= e!868798 (contains!2569 rules!2550 lt!449667))))

(declare-fun b!1357634 () Bool)

(declare-fun e!868799 () Rule!4594)

(assert (=> b!1357634 (= e!868799 (getWitness!341 (t!120441 rules!2550) lambda!57487))))

(declare-fun b!1357635 () Bool)

(assert (=> b!1357635 (= e!868796 e!868799)))

(declare-fun c!222731 () Bool)

(assert (=> b!1357635 (= c!222731 ((_ is Cons!13836) rules!2550))))

(declare-fun b!1357636 () Bool)

(assert (=> b!1357636 (= e!868796 (h!19237 rules!2550))))

(declare-fun b!1357637 () Bool)

(declare-fun lt!449668 () Unit!19983)

(declare-fun Unit!19986 () Unit!19983)

(assert (=> b!1357637 (= lt!449668 Unit!19986)))

(assert (=> b!1357637 false))

(declare-fun head!2438 (List!13902) Rule!4594)

(assert (=> b!1357637 (= e!868799 (head!2438 rules!2550))))

(assert (= (and d!384697 res!611816) b!1357632))

(assert (= (and d!384697 c!222730) b!1357636))

(assert (= (and d!384697 (not c!222730)) b!1357635))

(assert (= (and b!1357635 c!222731) b!1357634))

(assert (= (and b!1357635 (not c!222731)) b!1357637))

(assert (= (and d!384697 res!611815) b!1357633))

(declare-fun b_lambda!40917 () Bool)

(assert (=> (not b_lambda!40917) (not b!1357632)))

(declare-fun b_lambda!40919 () Bool)

(assert (=> (not b_lambda!40919) (not d!384697)))

(declare-fun m!1520423 () Bool)

(assert (=> b!1357634 m!1520423))

(declare-fun m!1520425 () Bool)

(assert (=> b!1357633 m!1520425))

(declare-fun m!1520427 () Bool)

(assert (=> b!1357632 m!1520427))

(declare-fun m!1520429 () Bool)

(assert (=> b!1357637 m!1520429))

(declare-fun m!1520431 () Bool)

(assert (=> d!384697 m!1520431))

(assert (=> d!384697 m!1520183))

(assert (=> b!1357468 d!384697))

(declare-fun d!384699 () Bool)

(declare-fun list!5310 (Conc!4557) List!13904)

(assert (=> d!384699 (= (list!5306 (_1!7593 lt!449583)) (list!5310 (c!222696 (_1!7593 lt!449583))))))

(declare-fun bs!334039 () Bool)

(assert (= bs!334039 d!384699))

(declare-fun m!1520433 () Bool)

(assert (=> bs!334039 m!1520433))

(assert (=> b!1357468 d!384699))

(declare-fun b!1357726 () Bool)

(declare-fun e!868853 () Bool)

(declare-fun lt!449707 () tuple2!13414)

(assert (=> b!1357726 (= e!868853 (= (_2!7593 lt!449707) lt!449596))))

(declare-fun b!1357727 () Bool)

(declare-fun e!868854 () Bool)

(declare-fun isEmpty!8307 (BalanceConc!9054) Bool)

(assert (=> b!1357727 (= e!868854 (not (isEmpty!8307 (_1!7593 lt!449707))))))

(declare-fun b!1357728 () Bool)

(declare-fun res!611858 () Bool)

(declare-fun e!868852 () Bool)

(assert (=> b!1357728 (=> (not res!611858) (not e!868852))))

(assert (=> b!1357728 (= res!611858 (= (list!5306 (_1!7593 lt!449707)) (_1!7595 (lexList!610 thiss!19762 rules!2550 (list!5307 lt!449596)))))))

(declare-fun d!384701 () Bool)

(assert (=> d!384701 e!868852))

(declare-fun res!611859 () Bool)

(assert (=> d!384701 (=> (not res!611859) (not e!868852))))

(assert (=> d!384701 (= res!611859 e!868853)))

(declare-fun c!222750 () Bool)

(assert (=> d!384701 (= c!222750 (> (size!11326 (_1!7593 lt!449707)) 0))))

(declare-fun lexTailRecV2!405 (LexerInterface!2092 List!13902 BalanceConc!9052 BalanceConc!9052 BalanceConc!9052 BalanceConc!9054) tuple2!13414)

(assert (=> d!384701 (= lt!449707 (lexTailRecV2!405 thiss!19762 rules!2550 lt!449596 (BalanceConc!9053 Empty!4556) lt!449596 (BalanceConc!9055 Empty!4557)))))

(assert (=> d!384701 (= (lex!919 thiss!19762 rules!2550 lt!449596) lt!449707)))

(declare-fun b!1357729 () Bool)

(assert (=> b!1357729 (= e!868853 e!868854)))

(declare-fun res!611857 () Bool)

(assert (=> b!1357729 (= res!611857 (< (size!11320 (_2!7593 lt!449707)) (size!11320 lt!449596)))))

(assert (=> b!1357729 (=> (not res!611857) (not e!868854))))

(declare-fun b!1357730 () Bool)

(assert (=> b!1357730 (= e!868852 (= (list!5307 (_2!7593 lt!449707)) (_2!7595 (lexList!610 thiss!19762 rules!2550 (list!5307 lt!449596)))))))

(assert (= (and d!384701 c!222750) b!1357729))

(assert (= (and d!384701 (not c!222750)) b!1357726))

(assert (= (and b!1357729 res!611857) b!1357727))

(assert (= (and d!384701 res!611859) b!1357728))

(assert (= (and b!1357728 res!611858) b!1357730))

(declare-fun m!1520573 () Bool)

(assert (=> b!1357728 m!1520573))

(assert (=> b!1357728 m!1520129))

(assert (=> b!1357728 m!1520129))

(assert (=> b!1357728 m!1520131))

(declare-fun m!1520575 () Bool)

(assert (=> b!1357729 m!1520575))

(declare-fun m!1520577 () Bool)

(assert (=> b!1357729 m!1520577))

(declare-fun m!1520579 () Bool)

(assert (=> d!384701 m!1520579))

(declare-fun m!1520583 () Bool)

(assert (=> d!384701 m!1520583))

(declare-fun m!1520585 () Bool)

(assert (=> b!1357727 m!1520585))

(declare-fun m!1520587 () Bool)

(assert (=> b!1357730 m!1520587))

(assert (=> b!1357730 m!1520129))

(assert (=> b!1357730 m!1520129))

(assert (=> b!1357730 m!1520131))

(assert (=> b!1357468 d!384701))

(declare-fun d!384747 () Bool)

(declare-fun lt!449712 () Int)

(declare-fun size!11328 (List!13901) Int)

(assert (=> d!384747 (= lt!449712 (size!11328 (list!5307 lt!449593)))))

(declare-fun size!11329 (Conc!4556) Int)

(assert (=> d!384747 (= lt!449712 (size!11329 (c!222694 lt!449593)))))

(assert (=> d!384747 (= (size!11320 lt!449593) lt!449712)))

(declare-fun bs!334050 () Bool)

(assert (= bs!334050 d!384747))

(declare-fun m!1520589 () Bool)

(assert (=> bs!334050 m!1520589))

(assert (=> bs!334050 m!1520589))

(declare-fun m!1520591 () Bool)

(assert (=> bs!334050 m!1520591))

(declare-fun m!1520593 () Bool)

(assert (=> bs!334050 m!1520593))

(assert (=> b!1357449 d!384747))

(declare-fun d!384749 () Bool)

(declare-fun lt!449716 () BalanceConc!9052)

(assert (=> d!384749 (= (list!5307 lt!449716) (originalCharacters!3259 t2!34))))

(declare-fun dynLambda!6210 (Int TokenValue!2487) BalanceConc!9052)

(assert (=> d!384749 (= lt!449716 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34)))))

(assert (=> d!384749 (= (charsOf!1369 t2!34) lt!449716)))

(declare-fun b_lambda!40927 () Bool)

(assert (=> (not b_lambda!40927) (not d!384749)))

(declare-fun tb!71309 () Bool)

(declare-fun t!120461 () Bool)

(assert (=> (and b!1357461 (= (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (toChars!3511 (transformation!2397 (rule!4146 t2!34)))) t!120461) tb!71309))

(declare-fun b!1357741 () Bool)

(declare-fun e!868863 () Bool)

(declare-fun tp!391671 () Bool)

(declare-fun inv!18182 (Conc!4556) Bool)

(assert (=> b!1357741 (= e!868863 (and (inv!18182 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34)))) tp!391671))))

(declare-fun result!86692 () Bool)

(declare-fun inv!18183 (BalanceConc!9052) Bool)

(assert (=> tb!71309 (= result!86692 (and (inv!18183 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34))) e!868863))))

(assert (= tb!71309 b!1357741))

(declare-fun m!1520601 () Bool)

(assert (=> b!1357741 m!1520601))

(declare-fun m!1520603 () Bool)

(assert (=> tb!71309 m!1520603))

(assert (=> d!384749 t!120461))

(declare-fun b_and!90907 () Bool)

(assert (= b_and!90885 (and (=> t!120461 result!86692) b_and!90907)))

(declare-fun tb!71311 () Bool)

(declare-fun t!120463 () Bool)

(assert (=> (and b!1357450 (= (toChars!3511 (transformation!2397 (h!19237 rules!2550))) (toChars!3511 (transformation!2397 (rule!4146 t2!34)))) t!120463) tb!71311))

(declare-fun result!86696 () Bool)

(assert (= result!86696 result!86692))

(assert (=> d!384749 t!120463))

(declare-fun b_and!90909 () Bool)

(assert (= b_and!90889 (and (=> t!120463 result!86696) b_and!90909)))

(declare-fun t!120465 () Bool)

(declare-fun tb!71313 () Bool)

(assert (=> (and b!1357464 (= (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (toChars!3511 (transformation!2397 (rule!4146 t2!34)))) t!120465) tb!71313))

(declare-fun result!86698 () Bool)

(assert (= result!86698 result!86692))

(assert (=> d!384749 t!120465))

(declare-fun b_and!90911 () Bool)

(assert (= b_and!90893 (and (=> t!120465 result!86698) b_and!90911)))

(declare-fun m!1520605 () Bool)

(assert (=> d!384749 m!1520605))

(declare-fun m!1520607 () Bool)

(assert (=> d!384749 m!1520607))

(assert (=> b!1357449 d!384749))

(declare-fun d!384753 () Bool)

(declare-fun prefixMatchZipperSequence!244 (Regex!3711 BalanceConc!9052) Bool)

(declare-fun ++!3564 (BalanceConc!9052 BalanceConc!9052) BalanceConc!9052)

(declare-fun singletonSeq!1022 (C!7712) BalanceConc!9052)

(assert (=> d!384753 (= (separableTokensPredicate!375 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!244 (rulesRegex!280 thiss!19762 rules!2550) (++!3564 (charsOf!1369 t1!34) (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0))))))))

(declare-fun bs!334051 () Bool)

(assert (= bs!334051 d!384753))

(declare-fun m!1520641 () Bool)

(assert (=> bs!334051 m!1520641))

(declare-fun m!1520643 () Bool)

(assert (=> bs!334051 m!1520643))

(assert (=> bs!334051 m!1520189))

(assert (=> bs!334051 m!1520641))

(assert (=> bs!334051 m!1520189))

(assert (=> bs!334051 m!1520141))

(assert (=> bs!334051 m!1520141))

(assert (=> bs!334051 m!1520643))

(declare-fun m!1520645 () Bool)

(assert (=> bs!334051 m!1520645))

(assert (=> bs!334051 m!1520147))

(assert (=> bs!334051 m!1520645))

(declare-fun m!1520647 () Bool)

(assert (=> bs!334051 m!1520647))

(assert (=> bs!334051 m!1520147))

(assert (=> b!1357453 d!384753))

(declare-fun d!384765 () Bool)

(declare-fun lt!449727 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2000 (List!13901) (InoxSet C!7712))

(assert (=> d!384765 (= lt!449727 (select (content!2000 lt!449598) lt!449595))))

(declare-fun e!868908 () Bool)

(assert (=> d!384765 (= lt!449727 e!868908)))

(declare-fun res!611908 () Bool)

(assert (=> d!384765 (=> (not res!611908) (not e!868908))))

(assert (=> d!384765 (= res!611908 ((_ is Cons!13835) lt!449598))))

(assert (=> d!384765 (= (contains!2568 lt!449598 lt!449595) lt!449727)))

(declare-fun b!1357811 () Bool)

(declare-fun e!868907 () Bool)

(assert (=> b!1357811 (= e!868908 e!868907)))

(declare-fun res!611907 () Bool)

(assert (=> b!1357811 (=> res!611907 e!868907)))

(assert (=> b!1357811 (= res!611907 (= (h!19236 lt!449598) lt!449595))))

(declare-fun b!1357812 () Bool)

(assert (=> b!1357812 (= e!868907 (contains!2568 (t!120440 lt!449598) lt!449595))))

(assert (= (and d!384765 res!611908) b!1357811))

(assert (= (and b!1357811 (not res!611907)) b!1357812))

(declare-fun m!1520649 () Bool)

(assert (=> d!384765 m!1520649))

(declare-fun m!1520651 () Bool)

(assert (=> d!384765 m!1520651))

(declare-fun m!1520653 () Bool)

(assert (=> b!1357812 m!1520653))

(assert (=> b!1357451 d!384765))

(declare-fun d!384767 () Bool)

(declare-fun lt!449730 () Bool)

(assert (=> d!384767 (= lt!449730 (isEmpty!8306 (list!5307 (_2!7593 lt!449591))))))

(declare-fun isEmpty!8308 (Conc!4556) Bool)

(assert (=> d!384767 (= lt!449730 (isEmpty!8308 (c!222694 (_2!7593 lt!449591))))))

(assert (=> d!384767 (= (isEmpty!8300 (_2!7593 lt!449591)) lt!449730)))

(declare-fun bs!334052 () Bool)

(assert (= bs!334052 d!384767))

(declare-fun m!1520655 () Bool)

(assert (=> bs!334052 m!1520655))

(assert (=> bs!334052 m!1520655))

(declare-fun m!1520657 () Bool)

(assert (=> bs!334052 m!1520657))

(declare-fun m!1520659 () Bool)

(assert (=> bs!334052 m!1520659))

(assert (=> b!1357452 d!384767))

(declare-fun b!1357837 () Bool)

(declare-fun e!868924 () Bool)

(declare-fun lt!449738 () tuple2!13418)

(assert (=> b!1357837 (= e!868924 (= (_2!7595 lt!449738) (list!5307 lt!449596)))))

(declare-fun b!1357838 () Bool)

(declare-fun e!868923 () Bool)

(declare-fun isEmpty!8309 (List!13904) Bool)

(assert (=> b!1357838 (= e!868923 (not (isEmpty!8309 (_1!7595 lt!449738))))))

(declare-fun b!1357840 () Bool)

(declare-fun e!868922 () tuple2!13418)

(assert (=> b!1357840 (= e!868922 (tuple2!13419 Nil!13838 (list!5307 lt!449596)))))

(declare-fun b!1357841 () Bool)

(declare-fun lt!449739 () Option!2652)

(declare-fun lt!449740 () tuple2!13418)

(assert (=> b!1357841 (= e!868922 (tuple2!13419 (Cons!13838 (_1!7594 (v!21393 lt!449739)) (_1!7595 lt!449740)) (_2!7595 lt!449740)))))

(assert (=> b!1357841 (= lt!449740 (lexList!610 thiss!19762 rules!2550 (_2!7594 (v!21393 lt!449739))))))

(declare-fun d!384769 () Bool)

(assert (=> d!384769 e!868924))

(declare-fun c!222773 () Bool)

(declare-fun size!11330 (List!13904) Int)

(assert (=> d!384769 (= c!222773 (> (size!11330 (_1!7595 lt!449738)) 0))))

(assert (=> d!384769 (= lt!449738 e!868922)))

(declare-fun c!222772 () Bool)

(assert (=> d!384769 (= c!222772 ((_ is Some!2651) lt!449739))))

(assert (=> d!384769 (= lt!449739 (maxPrefix!1074 thiss!19762 rules!2550 (list!5307 lt!449596)))))

(assert (=> d!384769 (= (lexList!610 thiss!19762 rules!2550 (list!5307 lt!449596)) lt!449738)))

(declare-fun b!1357839 () Bool)

(assert (=> b!1357839 (= e!868924 e!868923)))

(declare-fun res!611919 () Bool)

(assert (=> b!1357839 (= res!611919 (< (size!11328 (_2!7595 lt!449738)) (size!11328 (list!5307 lt!449596))))))

(assert (=> b!1357839 (=> (not res!611919) (not e!868923))))

(assert (= (and d!384769 c!222772) b!1357841))

(assert (= (and d!384769 (not c!222772)) b!1357840))

(assert (= (and d!384769 c!222773) b!1357839))

(assert (= (and d!384769 (not c!222773)) b!1357837))

(assert (= (and b!1357839 res!611919) b!1357838))

(declare-fun m!1520673 () Bool)

(assert (=> b!1357838 m!1520673))

(declare-fun m!1520675 () Bool)

(assert (=> b!1357841 m!1520675))

(declare-fun m!1520677 () Bool)

(assert (=> d!384769 m!1520677))

(assert (=> d!384769 m!1520129))

(declare-fun m!1520679 () Bool)

(assert (=> d!384769 m!1520679))

(declare-fun m!1520681 () Bool)

(assert (=> b!1357839 m!1520681))

(assert (=> b!1357839 m!1520129))

(declare-fun m!1520683 () Bool)

(assert (=> b!1357839 m!1520683))

(assert (=> b!1357455 d!384769))

(declare-fun d!384773 () Bool)

(declare-fun list!5311 (Conc!4556) List!13901)

(assert (=> d!384773 (= (list!5307 lt!449596) (list!5311 (c!222694 lt!449596)))))

(declare-fun bs!334053 () Bool)

(assert (= bs!334053 d!384773))

(declare-fun m!1520685 () Bool)

(assert (=> bs!334053 m!1520685))

(assert (=> b!1357455 d!384773))

(declare-fun lt!449743 () Bool)

(declare-fun d!384775 () Bool)

(declare-fun content!2001 (List!13903) (InoxSet Regex!3711))

(assert (=> d!384775 (= lt!449743 (select (content!2001 (map!3056 rules!2550 lambda!57485)) lt!449582))))

(declare-fun e!868929 () Bool)

(assert (=> d!384775 (= lt!449743 e!868929)))

(declare-fun res!611924 () Bool)

(assert (=> d!384775 (=> (not res!611924) (not e!868929))))

(assert (=> d!384775 (= res!611924 ((_ is Cons!13837) (map!3056 rules!2550 lambda!57485)))))

(assert (=> d!384775 (= (contains!2567 (map!3056 rules!2550 lambda!57485) lt!449582) lt!449743)))

(declare-fun b!1357846 () Bool)

(declare-fun e!868930 () Bool)

(assert (=> b!1357846 (= e!868929 e!868930)))

(declare-fun res!611925 () Bool)

(assert (=> b!1357846 (=> res!611925 e!868930)))

(assert (=> b!1357846 (= res!611925 (= (h!19238 (map!3056 rules!2550 lambda!57485)) lt!449582))))

(declare-fun b!1357847 () Bool)

(assert (=> b!1357847 (= e!868930 (contains!2567 (t!120442 (map!3056 rules!2550 lambda!57485)) lt!449582))))

(assert (= (and d!384775 res!611924) b!1357846))

(assert (= (and b!1357846 (not res!611925)) b!1357847))

(assert (=> d!384775 m!1520119))

(declare-fun m!1520687 () Bool)

(assert (=> d!384775 m!1520687))

(declare-fun m!1520689 () Bool)

(assert (=> d!384775 m!1520689))

(declare-fun m!1520691 () Bool)

(assert (=> b!1357847 m!1520691))

(assert (=> b!1357434 d!384775))

(declare-fun d!384777 () Bool)

(declare-fun lt!449756 () List!13903)

(declare-fun size!11331 (List!13903) Int)

(declare-fun size!11332 (List!13902) Int)

(assert (=> d!384777 (= (size!11331 lt!449756) (size!11332 rules!2550))))

(declare-fun e!868935 () List!13903)

(assert (=> d!384777 (= lt!449756 e!868935)))

(declare-fun c!222778 () Bool)

(assert (=> d!384777 (= c!222778 ((_ is Nil!13836) rules!2550))))

(assert (=> d!384777 (= (map!3056 rules!2550 lambda!57485) lt!449756)))

(declare-fun b!1357856 () Bool)

(assert (=> b!1357856 (= e!868935 Nil!13837)))

(declare-fun b!1357857 () Bool)

(declare-fun $colon$colon!193 (List!13903 Regex!3711) List!13903)

(declare-fun dynLambda!6214 (Int Rule!4594) Regex!3711)

(assert (=> b!1357857 (= e!868935 ($colon$colon!193 (map!3056 (t!120441 rules!2550) lambda!57485) (dynLambda!6214 lambda!57485 (h!19237 rules!2550))))))

(assert (= (and d!384777 c!222778) b!1357856))

(assert (= (and d!384777 (not c!222778)) b!1357857))

(declare-fun b_lambda!40937 () Bool)

(assert (=> (not b_lambda!40937) (not b!1357857)))

(declare-fun m!1520693 () Bool)

(assert (=> d!384777 m!1520693))

(declare-fun m!1520695 () Bool)

(assert (=> d!384777 m!1520695))

(declare-fun m!1520697 () Bool)

(assert (=> b!1357857 m!1520697))

(declare-fun m!1520699 () Bool)

(assert (=> b!1357857 m!1520699))

(assert (=> b!1357857 m!1520697))

(assert (=> b!1357857 m!1520699))

(declare-fun m!1520701 () Bool)

(assert (=> b!1357857 m!1520701))

(assert (=> b!1357434 d!384777))

(declare-fun d!384779 () Bool)

(declare-fun e!868953 () Bool)

(assert (=> d!384779 e!868953))

(declare-fun res!611951 () Bool)

(assert (=> d!384779 (=> (not res!611951) (not e!868953))))

(declare-fun lt!449767 () Regex!3711)

(declare-fun dynLambda!6215 (Int Regex!3711) Bool)

(assert (=> d!384779 (= res!611951 (dynLambda!6215 lambda!57486 lt!449767))))

(declare-fun e!868952 () Regex!3711)

(assert (=> d!384779 (= lt!449767 e!868952)))

(declare-fun c!222784 () Bool)

(declare-fun e!868954 () Bool)

(assert (=> d!384779 (= c!222784 e!868954)))

(declare-fun res!611952 () Bool)

(assert (=> d!384779 (=> (not res!611952) (not e!868954))))

(assert (=> d!384779 (= res!611952 ((_ is Cons!13837) (map!3056 rules!2550 lambda!57485)))))

(assert (=> d!384779 (exists!452 (map!3056 rules!2550 lambda!57485) lambda!57486)))

(assert (=> d!384779 (= (getWitness!340 (map!3056 rules!2550 lambda!57485) lambda!57486) lt!449767)))

(declare-fun b!1357893 () Bool)

(assert (=> b!1357893 (= e!868953 (contains!2567 (map!3056 rules!2550 lambda!57485) lt!449767))))

(declare-fun b!1357894 () Bool)

(declare-fun lt!449766 () Unit!19983)

(declare-fun Unit!19987 () Unit!19983)

(assert (=> b!1357894 (= lt!449766 Unit!19987)))

(assert (=> b!1357894 false))

(declare-fun e!868951 () Regex!3711)

(declare-fun head!2440 (List!13903) Regex!3711)

(assert (=> b!1357894 (= e!868951 (head!2440 (map!3056 rules!2550 lambda!57485)))))

(declare-fun b!1357895 () Bool)

(assert (=> b!1357895 (= e!868954 (dynLambda!6215 lambda!57486 (h!19238 (map!3056 rules!2550 lambda!57485))))))

(declare-fun b!1357896 () Bool)

(assert (=> b!1357896 (= e!868951 (getWitness!340 (t!120442 (map!3056 rules!2550 lambda!57485)) lambda!57486))))

(declare-fun b!1357897 () Bool)

(assert (=> b!1357897 (= e!868952 e!868951)))

(declare-fun c!222785 () Bool)

(assert (=> b!1357897 (= c!222785 ((_ is Cons!13837) (map!3056 rules!2550 lambda!57485)))))

(declare-fun b!1357898 () Bool)

(assert (=> b!1357898 (= e!868952 (h!19238 (map!3056 rules!2550 lambda!57485)))))

(assert (= (and d!384779 res!611952) b!1357895))

(assert (= (and d!384779 c!222784) b!1357898))

(assert (= (and d!384779 (not c!222784)) b!1357897))

(assert (= (and b!1357897 c!222785) b!1357896))

(assert (= (and b!1357897 (not c!222785)) b!1357894))

(assert (= (and d!384779 res!611951) b!1357893))

(declare-fun b_lambda!40939 () Bool)

(assert (=> (not b_lambda!40939) (not d!384779)))

(declare-fun b_lambda!40941 () Bool)

(assert (=> (not b_lambda!40941) (not b!1357895)))

(declare-fun m!1520703 () Bool)

(assert (=> d!384779 m!1520703))

(assert (=> d!384779 m!1520119))

(assert (=> d!384779 m!1520173))

(assert (=> b!1357894 m!1520119))

(declare-fun m!1520705 () Bool)

(assert (=> b!1357894 m!1520705))

(assert (=> b!1357893 m!1520119))

(declare-fun m!1520709 () Bool)

(assert (=> b!1357893 m!1520709))

(declare-fun m!1520713 () Bool)

(assert (=> b!1357895 m!1520713))

(declare-fun m!1520715 () Bool)

(assert (=> b!1357896 m!1520715))

(assert (=> b!1357434 d!384779))

(declare-fun d!384781 () Bool)

(assert (=> d!384781 (= (inv!18175 (tag!2659 (rule!4146 t2!34))) (= (mod (str.len (value!77946 (tag!2659 (rule!4146 t2!34)))) 2) 0))))

(assert (=> b!1357456 d!384781))

(declare-fun d!384783 () Bool)

(declare-fun res!611953 () Bool)

(declare-fun e!868955 () Bool)

(assert (=> d!384783 (=> (not res!611953) (not e!868955))))

(assert (=> d!384783 (= res!611953 (semiInverseModEq!920 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (toValue!3652 (transformation!2397 (rule!4146 t2!34)))))))

(assert (=> d!384783 (= (inv!18179 (transformation!2397 (rule!4146 t2!34))) e!868955)))

(declare-fun b!1357899 () Bool)

(assert (=> b!1357899 (= e!868955 (equivClasses!879 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (toValue!3652 (transformation!2397 (rule!4146 t2!34)))))))

(assert (= (and d!384783 res!611953) b!1357899))

(declare-fun m!1520727 () Bool)

(assert (=> d!384783 m!1520727))

(declare-fun m!1520729 () Bool)

(assert (=> b!1357899 m!1520729))

(assert (=> b!1357456 d!384783))

(declare-fun b!1357900 () Bool)

(declare-fun e!868958 () Bool)

(declare-fun lt!449768 () tuple2!13418)

(assert (=> b!1357900 (= e!868958 (= (_2!7595 lt!449768) (list!5307 lt!449584)))))

(declare-fun b!1357901 () Bool)

(declare-fun e!868957 () Bool)

(assert (=> b!1357901 (= e!868957 (not (isEmpty!8309 (_1!7595 lt!449768))))))

(declare-fun b!1357903 () Bool)

(declare-fun e!868956 () tuple2!13418)

(assert (=> b!1357903 (= e!868956 (tuple2!13419 Nil!13838 (list!5307 lt!449584)))))

(declare-fun b!1357904 () Bool)

(declare-fun lt!449769 () Option!2652)

(declare-fun lt!449770 () tuple2!13418)

(assert (=> b!1357904 (= e!868956 (tuple2!13419 (Cons!13838 (_1!7594 (v!21393 lt!449769)) (_1!7595 lt!449770)) (_2!7595 lt!449770)))))

(assert (=> b!1357904 (= lt!449770 (lexList!610 thiss!19762 rules!2550 (_2!7594 (v!21393 lt!449769))))))

(declare-fun d!384785 () Bool)

(assert (=> d!384785 e!868958))

(declare-fun c!222787 () Bool)

(assert (=> d!384785 (= c!222787 (> (size!11330 (_1!7595 lt!449768)) 0))))

(assert (=> d!384785 (= lt!449768 e!868956)))

(declare-fun c!222786 () Bool)

(assert (=> d!384785 (= c!222786 ((_ is Some!2651) lt!449769))))

(assert (=> d!384785 (= lt!449769 (maxPrefix!1074 thiss!19762 rules!2550 (list!5307 lt!449584)))))

(assert (=> d!384785 (= (lexList!610 thiss!19762 rules!2550 (list!5307 lt!449584)) lt!449768)))

(declare-fun b!1357902 () Bool)

(assert (=> b!1357902 (= e!868958 e!868957)))

(declare-fun res!611954 () Bool)

(assert (=> b!1357902 (= res!611954 (< (size!11328 (_2!7595 lt!449768)) (size!11328 (list!5307 lt!449584))))))

(assert (=> b!1357902 (=> (not res!611954) (not e!868957))))

(assert (= (and d!384785 c!222786) b!1357904))

(assert (= (and d!384785 (not c!222786)) b!1357903))

(assert (= (and d!384785 c!222787) b!1357902))

(assert (= (and d!384785 (not c!222787)) b!1357900))

(assert (= (and b!1357902 res!611954) b!1357901))

(declare-fun m!1520749 () Bool)

(assert (=> b!1357901 m!1520749))

(declare-fun m!1520751 () Bool)

(assert (=> b!1357904 m!1520751))

(declare-fun m!1520753 () Bool)

(assert (=> d!384785 m!1520753))

(assert (=> d!384785 m!1520225))

(declare-fun m!1520755 () Bool)

(assert (=> d!384785 m!1520755))

(declare-fun m!1520757 () Bool)

(assert (=> b!1357902 m!1520757))

(assert (=> b!1357902 m!1520225))

(declare-fun m!1520759 () Bool)

(assert (=> b!1357902 m!1520759))

(assert (=> b!1357454 d!384785))

(declare-fun d!384789 () Bool)

(assert (=> d!384789 (= (list!5307 lt!449584) (list!5311 (c!222694 lt!449584)))))

(declare-fun bs!334054 () Bool)

(assert (= bs!334054 d!384789))

(declare-fun m!1520761 () Bool)

(assert (=> bs!334054 m!1520761))

(assert (=> b!1357454 d!384789))

(declare-fun d!384791 () Bool)

(declare-fun lt!449773 () Bool)

(declare-fun e!868961 () Bool)

(assert (=> d!384791 (= lt!449773 e!868961)))

(declare-fun res!611957 () Bool)

(assert (=> d!384791 (=> (not res!611957) (not e!868961))))

(assert (=> d!384791 (= res!611957 (= (list!5306 (_1!7593 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t2!34))))) (list!5306 (singletonSeq!1020 t2!34))))))

(declare-fun e!868962 () Bool)

(assert (=> d!384791 (= lt!449773 e!868962)))

(declare-fun res!611958 () Bool)

(assert (=> d!384791 (=> (not res!611958) (not e!868962))))

(declare-fun lt!449772 () tuple2!13414)

(assert (=> d!384791 (= res!611958 (= (size!11326 (_1!7593 lt!449772)) 1))))

(assert (=> d!384791 (= lt!449772 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t2!34))))))

(assert (=> d!384791 (not (isEmpty!8301 rules!2550))))

(assert (=> d!384791 (= (rulesProduceIndividualToken!1061 thiss!19762 rules!2550 t2!34) lt!449773)))

(declare-fun b!1357907 () Bool)

(declare-fun res!611959 () Bool)

(assert (=> b!1357907 (=> (not res!611959) (not e!868962))))

(assert (=> b!1357907 (= res!611959 (= (apply!3351 (_1!7593 lt!449772) 0) t2!34))))

(declare-fun b!1357908 () Bool)

(assert (=> b!1357908 (= e!868962 (isEmpty!8300 (_2!7593 lt!449772)))))

(declare-fun b!1357909 () Bool)

(assert (=> b!1357909 (= e!868961 (isEmpty!8300 (_2!7593 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t2!34))))))))

(assert (= (and d!384791 res!611958) b!1357907))

(assert (= (and b!1357907 res!611959) b!1357908))

(assert (= (and d!384791 res!611957) b!1357909))

(declare-fun m!1520769 () Bool)

(assert (=> d!384791 m!1520769))

(assert (=> d!384791 m!1520169))

(declare-fun m!1520771 () Bool)

(assert (=> d!384791 m!1520771))

(assert (=> d!384791 m!1520169))

(assert (=> d!384791 m!1520169))

(assert (=> d!384791 m!1520171))

(assert (=> d!384791 m!1520171))

(declare-fun m!1520773 () Bool)

(assert (=> d!384791 m!1520773))

(assert (=> d!384791 m!1520181))

(declare-fun m!1520775 () Bool)

(assert (=> d!384791 m!1520775))

(declare-fun m!1520777 () Bool)

(assert (=> b!1357907 m!1520777))

(declare-fun m!1520779 () Bool)

(assert (=> b!1357908 m!1520779))

(assert (=> b!1357909 m!1520169))

(assert (=> b!1357909 m!1520169))

(assert (=> b!1357909 m!1520171))

(assert (=> b!1357909 m!1520171))

(assert (=> b!1357909 m!1520773))

(declare-fun m!1520789 () Bool)

(assert (=> b!1357909 m!1520789))

(assert (=> b!1357458 d!384791))

(declare-fun b!1357976 () Bool)

(declare-fun e!868998 () Option!2652)

(declare-fun lt!449791 () Option!2652)

(declare-fun lt!449790 () Option!2652)

(assert (=> b!1357976 (= e!868998 (ite (and ((_ is None!2651) lt!449791) ((_ is None!2651) lt!449790)) None!2651 (ite ((_ is None!2651) lt!449790) lt!449791 (ite ((_ is None!2651) lt!449791) lt!449790 (ite (>= (size!11319 (_1!7594 (v!21393 lt!449791))) (size!11319 (_1!7594 (v!21393 lt!449790)))) lt!449791 lt!449790)))))))

(declare-fun call!91273 () Option!2652)

(assert (=> b!1357976 (= lt!449791 call!91273)))

(assert (=> b!1357976 (= lt!449790 (maxPrefix!1074 thiss!19762 (t!120441 rules!2550) lt!449599))))

(declare-fun b!1357977 () Bool)

(assert (=> b!1357977 (= e!868998 call!91273)))

(declare-fun d!384797 () Bool)

(declare-fun e!868999 () Bool)

(assert (=> d!384797 e!868999))

(declare-fun res!611986 () Bool)

(assert (=> d!384797 (=> res!611986 e!868999)))

(declare-fun lt!449789 () Option!2652)

(declare-fun isEmpty!8310 (Option!2652) Bool)

(assert (=> d!384797 (= res!611986 (isEmpty!8310 lt!449789))))

(assert (=> d!384797 (= lt!449789 e!868998)))

(declare-fun c!222791 () Bool)

(assert (=> d!384797 (= c!222791 (and ((_ is Cons!13836) rules!2550) ((_ is Nil!13836) (t!120441 rules!2550))))))

(declare-fun lt!449787 () Unit!19983)

(declare-fun lt!449788 () Unit!19983)

(assert (=> d!384797 (= lt!449787 lt!449788)))

(declare-fun isPrefix!1120 (List!13901 List!13901) Bool)

(assert (=> d!384797 (isPrefix!1120 lt!449599 lt!449599)))

(declare-fun lemmaIsPrefixRefl!782 (List!13901 List!13901) Unit!19983)

(assert (=> d!384797 (= lt!449788 (lemmaIsPrefixRefl!782 lt!449599 lt!449599))))

(declare-fun rulesValidInductive!761 (LexerInterface!2092 List!13902) Bool)

(assert (=> d!384797 (rulesValidInductive!761 thiss!19762 rules!2550)))

(assert (=> d!384797 (= (maxPrefix!1074 thiss!19762 rules!2550 lt!449599) lt!449789)))

(declare-fun b!1357978 () Bool)

(declare-fun e!868997 () Bool)

(declare-fun get!4332 (Option!2652) tuple2!13416)

(assert (=> b!1357978 (= e!868997 (contains!2569 rules!2550 (rule!4146 (_1!7594 (get!4332 lt!449789)))))))

(declare-fun b!1357979 () Bool)

(assert (=> b!1357979 (= e!868999 e!868997)))

(declare-fun res!611981 () Bool)

(assert (=> b!1357979 (=> (not res!611981) (not e!868997))))

(declare-fun isDefined!2208 (Option!2652) Bool)

(assert (=> b!1357979 (= res!611981 (isDefined!2208 lt!449789))))

(declare-fun b!1357980 () Bool)

(declare-fun res!611987 () Bool)

(assert (=> b!1357980 (=> (not res!611987) (not e!868997))))

(assert (=> b!1357980 (= res!611987 (= (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789)))) (originalCharacters!3259 (_1!7594 (get!4332 lt!449789)))))))

(declare-fun b!1357981 () Bool)

(declare-fun res!611984 () Bool)

(assert (=> b!1357981 (=> (not res!611984) (not e!868997))))

(assert (=> b!1357981 (= res!611984 (= (++!3562 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789)))) (_2!7594 (get!4332 lt!449789))) lt!449599))))

(declare-fun bm!91268 () Bool)

(declare-fun maxPrefixOneRule!608 (LexerInterface!2092 Rule!4594 List!13901) Option!2652)

(assert (=> bm!91268 (= call!91273 (maxPrefixOneRule!608 thiss!19762 (h!19237 rules!2550) lt!449599))))

(declare-fun b!1357982 () Bool)

(declare-fun res!611982 () Bool)

(assert (=> b!1357982 (=> (not res!611982) (not e!868997))))

(assert (=> b!1357982 (= res!611982 (< (size!11328 (_2!7594 (get!4332 lt!449789))) (size!11328 lt!449599)))))

(declare-fun b!1357983 () Bool)

(declare-fun res!611983 () Bool)

(assert (=> b!1357983 (=> (not res!611983) (not e!868997))))

(declare-fun apply!3352 (TokenValueInjection!4634 BalanceConc!9052) TokenValue!2487)

(declare-fun seqFromList!1626 (List!13901) BalanceConc!9052)

(assert (=> b!1357983 (= res!611983 (= (value!77947 (_1!7594 (get!4332 lt!449789))) (apply!3352 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))) (seqFromList!1626 (originalCharacters!3259 (_1!7594 (get!4332 lt!449789)))))))))

(declare-fun b!1357984 () Bool)

(declare-fun res!611985 () Bool)

(assert (=> b!1357984 (=> (not res!611985) (not e!868997))))

(assert (=> b!1357984 (= res!611985 (matchR!1704 (regex!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))) (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789))))))))

(assert (= (and d!384797 c!222791) b!1357977))

(assert (= (and d!384797 (not c!222791)) b!1357976))

(assert (= (or b!1357977 b!1357976) bm!91268))

(assert (= (and d!384797 (not res!611986)) b!1357979))

(assert (= (and b!1357979 res!611981) b!1357980))

(assert (= (and b!1357980 res!611987) b!1357982))

(assert (= (and b!1357982 res!611982) b!1357981))

(assert (= (and b!1357981 res!611984) b!1357983))

(assert (= (and b!1357983 res!611983) b!1357984))

(assert (= (and b!1357984 res!611985) b!1357978))

(declare-fun m!1520825 () Bool)

(assert (=> b!1357983 m!1520825))

(declare-fun m!1520827 () Bool)

(assert (=> b!1357983 m!1520827))

(assert (=> b!1357983 m!1520827))

(declare-fun m!1520829 () Bool)

(assert (=> b!1357983 m!1520829))

(declare-fun m!1520831 () Bool)

(assert (=> b!1357979 m!1520831))

(declare-fun m!1520833 () Bool)

(assert (=> b!1357976 m!1520833))

(assert (=> b!1357984 m!1520825))

(declare-fun m!1520835 () Bool)

(assert (=> b!1357984 m!1520835))

(assert (=> b!1357984 m!1520835))

(declare-fun m!1520837 () Bool)

(assert (=> b!1357984 m!1520837))

(assert (=> b!1357984 m!1520837))

(declare-fun m!1520839 () Bool)

(assert (=> b!1357984 m!1520839))

(assert (=> b!1357978 m!1520825))

(declare-fun m!1520841 () Bool)

(assert (=> b!1357978 m!1520841))

(assert (=> b!1357980 m!1520825))

(assert (=> b!1357980 m!1520835))

(assert (=> b!1357980 m!1520835))

(assert (=> b!1357980 m!1520837))

(declare-fun m!1520843 () Bool)

(assert (=> d!384797 m!1520843))

(declare-fun m!1520845 () Bool)

(assert (=> d!384797 m!1520845))

(declare-fun m!1520847 () Bool)

(assert (=> d!384797 m!1520847))

(declare-fun m!1520849 () Bool)

(assert (=> d!384797 m!1520849))

(assert (=> b!1357981 m!1520825))

(assert (=> b!1357981 m!1520835))

(assert (=> b!1357981 m!1520835))

(assert (=> b!1357981 m!1520837))

(assert (=> b!1357981 m!1520837))

(declare-fun m!1520851 () Bool)

(assert (=> b!1357981 m!1520851))

(assert (=> b!1357982 m!1520825))

(declare-fun m!1520853 () Bool)

(assert (=> b!1357982 m!1520853))

(declare-fun m!1520855 () Bool)

(assert (=> b!1357982 m!1520855))

(declare-fun m!1520857 () Bool)

(assert (=> bm!91268 m!1520857))

(assert (=> b!1357437 d!384797))

(declare-fun bs!334063 () Bool)

(declare-fun d!384815 () Bool)

(assert (= bs!334063 (and d!384815 b!1357435)))

(declare-fun lambda!57512 () Int)

(assert (=> bs!334063 (not (= lambda!57512 lambda!57486))))

(assert (=> d!384815 true))

(declare-fun order!8369 () Int)

(declare-fun dynLambda!6217 (Int Int) Int)

(assert (=> d!384815 (< (dynLambda!6217 order!8369 lambda!57486) (dynLambda!6217 order!8369 lambda!57512))))

(declare-fun forall!3379 (List!13903 Int) Bool)

(assert (=> d!384815 (= (exists!452 (map!3056 rules!2550 lambda!57485) lambda!57486) (not (forall!3379 (map!3056 rules!2550 lambda!57485) lambda!57512)))))

(declare-fun bs!334064 () Bool)

(assert (= bs!334064 d!384815))

(assert (=> bs!334064 m!1520119))

(declare-fun m!1520859 () Bool)

(assert (=> bs!334064 m!1520859))

(assert (=> b!1357435 d!384815))

(assert (=> b!1357435 d!384777))

(declare-fun bs!334065 () Bool)

(declare-fun d!384817 () Bool)

(assert (= bs!334065 (and d!384817 b!1357435)))

(declare-fun lambda!57513 () Int)

(assert (=> bs!334065 (not (= lambda!57513 lambda!57486))))

(declare-fun bs!334066 () Bool)

(assert (= bs!334066 (and d!384817 d!384815)))

(assert (=> bs!334066 (= lambda!57513 lambda!57512)))

(assert (=> d!384817 true))

(assert (=> d!384817 (< (dynLambda!6217 order!8369 lambda!57486) (dynLambda!6217 order!8369 lambda!57513))))

(assert (=> d!384817 (= (exists!452 lt!449590 lambda!57486) (not (forall!3379 lt!449590 lambda!57513)))))

(declare-fun bs!334067 () Bool)

(assert (= bs!334067 d!384817))

(declare-fun m!1520861 () Bool)

(assert (=> bs!334067 m!1520861))

(assert (=> b!1357435 d!384817))

(declare-fun bs!334068 () Bool)

(declare-fun d!384819 () Bool)

(assert (= bs!334068 (and d!384819 b!1357435)))

(declare-fun lambda!57518 () Int)

(assert (=> bs!334068 (not (= lambda!57518 lambda!57486))))

(declare-fun bs!334069 () Bool)

(assert (= bs!334069 (and d!384819 d!384815)))

(assert (=> bs!334069 (not (= lambda!57518 lambda!57512))))

(declare-fun bs!334070 () Bool)

(assert (= bs!334070 (and d!384819 d!384817)))

(assert (=> bs!334070 (not (= lambda!57518 lambda!57513))))

(declare-fun lambda!57519 () Int)

(assert (=> bs!334068 (= lambda!57519 lambda!57486)))

(assert (=> bs!334069 (not (= lambda!57519 lambda!57512))))

(assert (=> bs!334070 (not (= lambda!57519 lambda!57513))))

(declare-fun bs!334071 () Bool)

(assert (= bs!334071 d!384819))

(assert (=> bs!334071 (not (= lambda!57519 lambda!57518))))

(assert (=> d!384819 true))

(assert (=> d!384819 (= (matchR!1704 lt!449588 lt!449598) (exists!452 lt!449590 lambda!57519))))

(declare-fun lt!449794 () Unit!19983)

(declare-fun choose!8357 (Regex!3711 List!13903 List!13901) Unit!19983)

(assert (=> d!384819 (= lt!449794 (choose!8357 lt!449588 lt!449590 lt!449598))))

(assert (=> d!384819 (forall!3379 lt!449590 lambda!57518)))

(assert (=> d!384819 (= (matchRGenUnionSpec!128 lt!449588 lt!449590 lt!449598) lt!449794)))

(assert (=> bs!334071 m!1520157))

(declare-fun m!1520863 () Bool)

(assert (=> bs!334071 m!1520863))

(declare-fun m!1520865 () Bool)

(assert (=> bs!334071 m!1520865))

(declare-fun m!1520867 () Bool)

(assert (=> bs!334071 m!1520867))

(assert (=> b!1357435 d!384819))

(declare-fun bs!334072 () Bool)

(declare-fun d!384821 () Bool)

(assert (= bs!334072 (and d!384821 b!1357457)))

(declare-fun lambda!57522 () Int)

(assert (=> bs!334072 (not (= lambda!57522 lambda!57487))))

(assert (=> d!384821 true))

(declare-fun order!8371 () Int)

(declare-fun dynLambda!6218 (Int Int) Int)

(assert (=> d!384821 (< (dynLambda!6218 order!8371 lambda!57487) (dynLambda!6218 order!8371 lambda!57522))))

(declare-fun forall!3380 (List!13902 Int) Bool)

(assert (=> d!384821 (= (exists!453 rules!2550 lambda!57487) (not (forall!3380 rules!2550 lambda!57522)))))

(declare-fun bs!334073 () Bool)

(assert (= bs!334073 d!384821))

(declare-fun m!1520869 () Bool)

(assert (=> bs!334073 m!1520869))

(assert (=> b!1357457 d!384821))

(declare-fun bs!334074 () Bool)

(declare-fun d!384823 () Bool)

(assert (= bs!334074 (and d!384823 b!1357457)))

(declare-fun lambda!57525 () Int)

(assert (=> bs!334074 (not (= lambda!57525 lambda!57487))))

(declare-fun bs!334075 () Bool)

(assert (= bs!334075 (and d!384823 d!384821)))

(assert (=> bs!334075 (not (= lambda!57525 lambda!57522))))

(assert (=> d!384823 true))

(assert (=> d!384823 true))

(declare-fun order!8373 () Int)

(declare-fun dynLambda!6219 (Int Int) Int)

(assert (=> d!384823 (< (dynLambda!6219 order!8373 lambda!57485) (dynLambda!6218 order!8371 lambda!57525))))

(assert (=> d!384823 (exists!453 rules!2550 lambda!57525)))

(declare-fun lt!449797 () Unit!19983)

(declare-fun choose!8358 (List!13902 Int Regex!3711) Unit!19983)

(assert (=> d!384823 (= lt!449797 (choose!8358 rules!2550 lambda!57485 lt!449582))))

(assert (=> d!384823 (contains!2567 (map!3056 rules!2550 lambda!57485) lt!449582)))

(assert (=> d!384823 (= (lemmaMapContains!116 rules!2550 lambda!57485 lt!449582) lt!449797)))

(declare-fun bs!334076 () Bool)

(assert (= bs!334076 d!384823))

(declare-fun m!1520871 () Bool)

(assert (=> bs!334076 m!1520871))

(declare-fun m!1520873 () Bool)

(assert (=> bs!334076 m!1520873))

(assert (=> bs!334076 m!1520119))

(assert (=> bs!334076 m!1520119))

(assert (=> bs!334076 m!1520121))

(assert (=> b!1357457 d!384823))

(declare-fun d!384825 () Bool)

(declare-fun res!611994 () Bool)

(declare-fun e!869004 () Bool)

(assert (=> d!384825 (=> (not res!611994) (not e!869004))))

(assert (=> d!384825 (= res!611994 (not (isEmpty!8306 (originalCharacters!3259 t1!34))))))

(assert (=> d!384825 (= (inv!18178 t1!34) e!869004)))

(declare-fun b!1357999 () Bool)

(declare-fun res!611995 () Bool)

(assert (=> b!1357999 (=> (not res!611995) (not e!869004))))

(assert (=> b!1357999 (= res!611995 (= (originalCharacters!3259 t1!34) (list!5307 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34)))))))

(declare-fun b!1358000 () Bool)

(assert (=> b!1358000 (= e!869004 (= (size!11319 t1!34) (size!11328 (originalCharacters!3259 t1!34))))))

(assert (= (and d!384825 res!611994) b!1357999))

(assert (= (and b!1357999 res!611995) b!1358000))

(declare-fun b_lambda!40963 () Bool)

(assert (=> (not b_lambda!40963) (not b!1357999)))

(declare-fun t!120471 () Bool)

(declare-fun tb!71319 () Bool)

(assert (=> (and b!1357461 (= (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (toChars!3511 (transformation!2397 (rule!4146 t1!34)))) t!120471) tb!71319))

(declare-fun b!1358001 () Bool)

(declare-fun e!869005 () Bool)

(declare-fun tp!391713 () Bool)

(assert (=> b!1358001 (= e!869005 (and (inv!18182 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34)))) tp!391713))))

(declare-fun result!86710 () Bool)

(assert (=> tb!71319 (= result!86710 (and (inv!18183 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34))) e!869005))))

(assert (= tb!71319 b!1358001))

(declare-fun m!1520875 () Bool)

(assert (=> b!1358001 m!1520875))

(declare-fun m!1520877 () Bool)

(assert (=> tb!71319 m!1520877))

(assert (=> b!1357999 t!120471))

(declare-fun b_and!90929 () Bool)

(assert (= b_and!90907 (and (=> t!120471 result!86710) b_and!90929)))

(declare-fun tb!71321 () Bool)

(declare-fun t!120473 () Bool)

(assert (=> (and b!1357450 (= (toChars!3511 (transformation!2397 (h!19237 rules!2550))) (toChars!3511 (transformation!2397 (rule!4146 t1!34)))) t!120473) tb!71321))

(declare-fun result!86712 () Bool)

(assert (= result!86712 result!86710))

(assert (=> b!1357999 t!120473))

(declare-fun b_and!90931 () Bool)

(assert (= b_and!90909 (and (=> t!120473 result!86712) b_and!90931)))

(declare-fun t!120475 () Bool)

(declare-fun tb!71323 () Bool)

(assert (=> (and b!1357464 (= (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (toChars!3511 (transformation!2397 (rule!4146 t1!34)))) t!120475) tb!71323))

(declare-fun result!86714 () Bool)

(assert (= result!86714 result!86710))

(assert (=> b!1357999 t!120475))

(declare-fun b_and!90933 () Bool)

(assert (= b_and!90911 (and (=> t!120475 result!86714) b_and!90933)))

(declare-fun m!1520879 () Bool)

(assert (=> d!384825 m!1520879))

(declare-fun m!1520881 () Bool)

(assert (=> b!1357999 m!1520881))

(assert (=> b!1357999 m!1520881))

(declare-fun m!1520883 () Bool)

(assert (=> b!1357999 m!1520883))

(declare-fun m!1520885 () Bool)

(assert (=> b!1358000 m!1520885))

(assert (=> start!122134 d!384825))

(declare-fun d!384827 () Bool)

(declare-fun res!611996 () Bool)

(declare-fun e!869006 () Bool)

(assert (=> d!384827 (=> (not res!611996) (not e!869006))))

(assert (=> d!384827 (= res!611996 (not (isEmpty!8306 (originalCharacters!3259 t2!34))))))

(assert (=> d!384827 (= (inv!18178 t2!34) e!869006)))

(declare-fun b!1358002 () Bool)

(declare-fun res!611997 () Bool)

(assert (=> b!1358002 (=> (not res!611997) (not e!869006))))

(assert (=> b!1358002 (= res!611997 (= (originalCharacters!3259 t2!34) (list!5307 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34)))))))

(declare-fun b!1358003 () Bool)

(assert (=> b!1358003 (= e!869006 (= (size!11319 t2!34) (size!11328 (originalCharacters!3259 t2!34))))))

(assert (= (and d!384827 res!611996) b!1358002))

(assert (= (and b!1358002 res!611997) b!1358003))

(declare-fun b_lambda!40965 () Bool)

(assert (=> (not b_lambda!40965) (not b!1358002)))

(assert (=> b!1358002 t!120461))

(declare-fun b_and!90935 () Bool)

(assert (= b_and!90929 (and (=> t!120461 result!86692) b_and!90935)))

(assert (=> b!1358002 t!120463))

(declare-fun b_and!90937 () Bool)

(assert (= b_and!90931 (and (=> t!120463 result!86696) b_and!90937)))

(assert (=> b!1358002 t!120465))

(declare-fun b_and!90939 () Bool)

(assert (= b_and!90933 (and (=> t!120465 result!86698) b_and!90939)))

(declare-fun m!1520887 () Bool)

(assert (=> d!384827 m!1520887))

(assert (=> b!1358002 m!1520607))

(assert (=> b!1358002 m!1520607))

(declare-fun m!1520889 () Bool)

(assert (=> b!1358002 m!1520889))

(declare-fun m!1520891 () Bool)

(assert (=> b!1358003 m!1520891))

(assert (=> start!122134 d!384827))

(declare-fun d!384829 () Bool)

(declare-fun lt!449798 () Bool)

(assert (=> d!384829 (= lt!449798 (isEmpty!8306 (list!5307 (_2!7593 lt!449583))))))

(assert (=> d!384829 (= lt!449798 (isEmpty!8308 (c!222694 (_2!7593 lt!449583))))))

(assert (=> d!384829 (= (isEmpty!8300 (_2!7593 lt!449583)) lt!449798)))

(declare-fun bs!334077 () Bool)

(assert (= bs!334077 d!384829))

(declare-fun m!1520893 () Bool)

(assert (=> bs!334077 m!1520893))

(assert (=> bs!334077 m!1520893))

(declare-fun m!1520895 () Bool)

(assert (=> bs!334077 m!1520895))

(declare-fun m!1520897 () Bool)

(assert (=> bs!334077 m!1520897))

(assert (=> b!1357436 d!384829))

(declare-fun d!384831 () Bool)

(declare-fun lt!449799 () Bool)

(assert (=> d!384831 (= lt!449799 (select (content!2000 lt!449594) lt!449595))))

(declare-fun e!869008 () Bool)

(assert (=> d!384831 (= lt!449799 e!869008)))

(declare-fun res!611999 () Bool)

(assert (=> d!384831 (=> (not res!611999) (not e!869008))))

(assert (=> d!384831 (= res!611999 ((_ is Cons!13835) lt!449594))))

(assert (=> d!384831 (= (contains!2568 lt!449594 lt!449595) lt!449799)))

(declare-fun b!1358004 () Bool)

(declare-fun e!869007 () Bool)

(assert (=> b!1358004 (= e!869008 e!869007)))

(declare-fun res!611998 () Bool)

(assert (=> b!1358004 (=> res!611998 e!869007)))

(assert (=> b!1358004 (= res!611998 (= (h!19236 lt!449594) lt!449595))))

(declare-fun b!1358005 () Bool)

(assert (=> b!1358005 (= e!869007 (contains!2568 (t!120440 lt!449594) lt!449595))))

(assert (= (and d!384831 res!611999) b!1358004))

(assert (= (and b!1358004 (not res!611998)) b!1358005))

(declare-fun m!1520899 () Bool)

(assert (=> d!384831 m!1520899))

(declare-fun m!1520901 () Bool)

(assert (=> d!384831 m!1520901))

(declare-fun m!1520903 () Bool)

(assert (=> b!1358005 m!1520903))

(assert (=> b!1357439 d!384831))

(declare-fun d!384833 () Bool)

(declare-fun choose!8359 (Int) Bool)

(assert (=> d!384833 (= (Exists!863 lambda!57484) (choose!8359 lambda!57484))))

(declare-fun bs!334078 () Bool)

(assert (= bs!334078 d!384833))

(declare-fun m!1520905 () Bool)

(assert (=> bs!334078 m!1520905))

(assert (=> b!1357440 d!384833))

(declare-fun bs!334079 () Bool)

(declare-fun d!384835 () Bool)

(assert (= bs!334079 (and d!384835 b!1357440)))

(declare-fun lambda!57528 () Int)

(assert (=> bs!334079 (= lambda!57528 lambda!57484)))

(assert (=> d!384835 true))

(assert (=> d!384835 true))

(assert (=> d!384835 (Exists!863 lambda!57528)))

(declare-fun lt!449802 () Unit!19983)

(declare-fun choose!8360 (Regex!3711 List!13901) Unit!19983)

(assert (=> d!384835 (= lt!449802 (choose!8360 lt!449588 lt!449594))))

(assert (=> d!384835 (validRegex!1611 lt!449588)))

(assert (=> d!384835 (= (lemmaPrefixMatchThenExistsStringThatMatches!181 lt!449588 lt!449594) lt!449802)))

(declare-fun bs!334080 () Bool)

(assert (= bs!334080 d!384835))

(declare-fun m!1520907 () Bool)

(assert (=> bs!334080 m!1520907))

(declare-fun m!1520909 () Bool)

(assert (=> bs!334080 m!1520909))

(assert (=> bs!334080 m!1520405))

(assert (=> b!1357440 d!384835))

(declare-fun d!384837 () Bool)

(declare-fun lt!449803 () Bool)

(assert (=> d!384837 (= lt!449803 (select (content!2000 lt!449594) lt!449592))))

(declare-fun e!869012 () Bool)

(assert (=> d!384837 (= lt!449803 e!869012)))

(declare-fun res!612003 () Bool)

(assert (=> d!384837 (=> (not res!612003) (not e!869012))))

(assert (=> d!384837 (= res!612003 ((_ is Cons!13835) lt!449594))))

(assert (=> d!384837 (= (contains!2568 lt!449594 lt!449592) lt!449803)))

(declare-fun b!1358008 () Bool)

(declare-fun e!869011 () Bool)

(assert (=> b!1358008 (= e!869012 e!869011)))

(declare-fun res!612002 () Bool)

(assert (=> b!1358008 (=> res!612002 e!869011)))

(assert (=> b!1358008 (= res!612002 (= (h!19236 lt!449594) lt!449592))))

(declare-fun b!1358009 () Bool)

(assert (=> b!1358009 (= e!869011 (contains!2568 (t!120440 lt!449594) lt!449592))))

(assert (= (and d!384837 res!612003) b!1358008))

(assert (= (and b!1358008 (not res!612002)) b!1358009))

(assert (=> d!384837 m!1520899))

(declare-fun m!1520911 () Bool)

(assert (=> d!384837 m!1520911))

(declare-fun m!1520913 () Bool)

(assert (=> b!1358009 m!1520913))

(assert (=> b!1357459 d!384837))

(declare-fun d!384839 () Bool)

(declare-fun lt!449806 () C!7712)

(declare-fun apply!3354 (List!13901 Int) C!7712)

(assert (=> d!384839 (= lt!449806 (apply!3354 (list!5307 lt!449589) 0))))

(declare-fun apply!3355 (Conc!4556 Int) C!7712)

(assert (=> d!384839 (= lt!449806 (apply!3355 (c!222694 lt!449589) 0))))

(declare-fun e!869015 () Bool)

(assert (=> d!384839 e!869015))

(declare-fun res!612006 () Bool)

(assert (=> d!384839 (=> (not res!612006) (not e!869015))))

(assert (=> d!384839 (= res!612006 (<= 0 0))))

(assert (=> d!384839 (= (apply!3347 lt!449589 0) lt!449806)))

(declare-fun b!1358012 () Bool)

(assert (=> b!1358012 (= e!869015 (< 0 (size!11320 lt!449589)))))

(assert (= (and d!384839 res!612006) b!1358012))

(assert (=> d!384839 m!1520145))

(assert (=> d!384839 m!1520145))

(declare-fun m!1520915 () Bool)

(assert (=> d!384839 m!1520915))

(declare-fun m!1520917 () Bool)

(assert (=> d!384839 m!1520917))

(declare-fun m!1520919 () Bool)

(assert (=> b!1358012 m!1520919))

(assert (=> b!1357459 d!384839))

(declare-fun d!384841 () Bool)

(declare-fun c!222794 () Bool)

(assert (=> d!384841 (= c!222794 (isEmpty!8306 lt!449594))))

(declare-fun e!869018 () Bool)

(assert (=> d!384841 (= (prefixMatch!220 lt!449588 lt!449594) e!869018)))

(declare-fun b!1358017 () Bool)

(declare-fun lostCause!325 (Regex!3711) Bool)

(assert (=> b!1358017 (= e!869018 (not (lostCause!325 lt!449588)))))

(declare-fun b!1358018 () Bool)

(assert (=> b!1358018 (= e!869018 (prefixMatch!220 (derivativeStep!948 lt!449588 (head!2437 lt!449594)) (tail!1961 lt!449594)))))

(assert (= (and d!384841 c!222794) b!1358017))

(assert (= (and d!384841 (not c!222794)) b!1358018))

(declare-fun m!1520921 () Bool)

(assert (=> d!384841 m!1520921))

(declare-fun m!1520923 () Bool)

(assert (=> b!1358017 m!1520923))

(declare-fun m!1520925 () Bool)

(assert (=> b!1358018 m!1520925))

(assert (=> b!1358018 m!1520925))

(declare-fun m!1520927 () Bool)

(assert (=> b!1358018 m!1520927))

(declare-fun m!1520929 () Bool)

(assert (=> b!1358018 m!1520929))

(assert (=> b!1358018 m!1520927))

(assert (=> b!1358018 m!1520929))

(declare-fun m!1520931 () Bool)

(assert (=> b!1358018 m!1520931))

(assert (=> b!1357460 d!384841))

(declare-fun d!384843 () Bool)

(assert (=> d!384843 (= (list!5307 lt!449589) (list!5311 (c!222694 lt!449589)))))

(declare-fun bs!334081 () Bool)

(assert (= bs!334081 d!384843))

(declare-fun m!1520933 () Bool)

(assert (=> bs!334081 m!1520933))

(assert (=> b!1357460 d!384843))

(declare-fun b!1358029 () Bool)

(declare-fun res!612011 () Bool)

(declare-fun e!869023 () Bool)

(assert (=> b!1358029 (=> (not res!612011) (not e!869023))))

(declare-fun lt!449809 () List!13901)

(assert (=> b!1358029 (= res!612011 (= (size!11328 lt!449809) (+ (size!11328 lt!449599) (size!11328 (Cons!13835 lt!449595 Nil!13835)))))))

(declare-fun b!1358028 () Bool)

(declare-fun e!869024 () List!13901)

(assert (=> b!1358028 (= e!869024 (Cons!13835 (h!19236 lt!449599) (++!3562 (t!120440 lt!449599) (Cons!13835 lt!449595 Nil!13835))))))

(declare-fun d!384845 () Bool)

(assert (=> d!384845 e!869023))

(declare-fun res!612012 () Bool)

(assert (=> d!384845 (=> (not res!612012) (not e!869023))))

(assert (=> d!384845 (= res!612012 (= (content!2000 lt!449809) ((_ map or) (content!2000 lt!449599) (content!2000 (Cons!13835 lt!449595 Nil!13835)))))))

(assert (=> d!384845 (= lt!449809 e!869024)))

(declare-fun c!222797 () Bool)

(assert (=> d!384845 (= c!222797 ((_ is Nil!13835) lt!449599))))

(assert (=> d!384845 (= (++!3562 lt!449599 (Cons!13835 lt!449595 Nil!13835)) lt!449809)))

(declare-fun b!1358027 () Bool)

(assert (=> b!1358027 (= e!869024 (Cons!13835 lt!449595 Nil!13835))))

(declare-fun b!1358030 () Bool)

(assert (=> b!1358030 (= e!869023 (or (not (= (Cons!13835 lt!449595 Nil!13835) Nil!13835)) (= lt!449809 lt!449599)))))

(assert (= (and d!384845 c!222797) b!1358027))

(assert (= (and d!384845 (not c!222797)) b!1358028))

(assert (= (and d!384845 res!612012) b!1358029))

(assert (= (and b!1358029 res!612011) b!1358030))

(declare-fun m!1520935 () Bool)

(assert (=> b!1358029 m!1520935))

(assert (=> b!1358029 m!1520855))

(declare-fun m!1520937 () Bool)

(assert (=> b!1358029 m!1520937))

(declare-fun m!1520939 () Bool)

(assert (=> b!1358028 m!1520939))

(declare-fun m!1520941 () Bool)

(assert (=> d!384845 m!1520941))

(declare-fun m!1520943 () Bool)

(assert (=> d!384845 m!1520943))

(declare-fun m!1520945 () Bool)

(assert (=> d!384845 m!1520945))

(assert (=> b!1357460 d!384845))

(declare-fun d!384847 () Bool)

(declare-fun lt!449810 () BalanceConc!9052)

(assert (=> d!384847 (= (list!5307 lt!449810) (originalCharacters!3259 t1!34))))

(assert (=> d!384847 (= lt!449810 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34)))))

(assert (=> d!384847 (= (charsOf!1369 t1!34) lt!449810)))

(declare-fun b_lambda!40967 () Bool)

(assert (=> (not b_lambda!40967) (not d!384847)))

(assert (=> d!384847 t!120471))

(declare-fun b_and!90941 () Bool)

(assert (= b_and!90935 (and (=> t!120471 result!86710) b_and!90941)))

(assert (=> d!384847 t!120473))

(declare-fun b_and!90943 () Bool)

(assert (= b_and!90937 (and (=> t!120473 result!86712) b_and!90943)))

(assert (=> d!384847 t!120475))

(declare-fun b_and!90945 () Bool)

(assert (= b_and!90939 (and (=> t!120475 result!86714) b_and!90945)))

(declare-fun m!1520947 () Bool)

(assert (=> d!384847 m!1520947))

(assert (=> d!384847 m!1520881))

(assert (=> b!1357460 d!384847))

(declare-fun d!384849 () Bool)

(declare-fun lt!449811 () C!7712)

(assert (=> d!384849 (= lt!449811 (apply!3354 (list!5307 lt!449593) 0))))

(assert (=> d!384849 (= lt!449811 (apply!3355 (c!222694 lt!449593) 0))))

(declare-fun e!869025 () Bool)

(assert (=> d!384849 e!869025))

(declare-fun res!612013 () Bool)

(assert (=> d!384849 (=> (not res!612013) (not e!869025))))

(assert (=> d!384849 (= res!612013 (<= 0 0))))

(assert (=> d!384849 (= (apply!3347 lt!449593 0) lt!449811)))

(declare-fun b!1358031 () Bool)

(assert (=> b!1358031 (= e!869025 (< 0 (size!11320 lt!449593)))))

(assert (= (and d!384849 res!612013) b!1358031))

(assert (=> d!384849 m!1520589))

(assert (=> d!384849 m!1520589))

(declare-fun m!1520949 () Bool)

(assert (=> d!384849 m!1520949))

(declare-fun m!1520951 () Bool)

(assert (=> d!384849 m!1520951))

(assert (=> b!1358031 m!1520187))

(assert (=> b!1357460 d!384849))

(declare-fun bs!334082 () Bool)

(declare-fun d!384851 () Bool)

(assert (= bs!334082 (and d!384851 b!1357435)))

(declare-fun lambda!57531 () Int)

(assert (=> bs!334082 (= lambda!57531 lambda!57485)))

(declare-fun lt!449814 () Unit!19983)

(declare-fun lemma!119 (List!13902 LexerInterface!2092 List!13902) Unit!19983)

(assert (=> d!384851 (= lt!449814 (lemma!119 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!127 (List!13903) Regex!3711)

(assert (=> d!384851 (= (rulesRegex!280 thiss!19762 rules!2550) (generalisedUnion!127 (map!3056 rules!2550 lambda!57531)))))

(declare-fun bs!334083 () Bool)

(assert (= bs!334083 d!384851))

(declare-fun m!1520953 () Bool)

(assert (=> bs!334083 m!1520953))

(declare-fun m!1520955 () Bool)

(assert (=> bs!334083 m!1520955))

(assert (=> bs!334083 m!1520955))

(declare-fun m!1520957 () Bool)

(assert (=> bs!334083 m!1520957))

(assert (=> b!1357460 d!384851))

(declare-fun b!1358042 () Bool)

(declare-fun e!869034 () Bool)

(declare-fun inv!15 (TokenValue!2487) Bool)

(assert (=> b!1358042 (= e!869034 (inv!15 (value!77947 t1!34)))))

(declare-fun b!1358043 () Bool)

(declare-fun res!612016 () Bool)

(assert (=> b!1358043 (=> res!612016 e!869034)))

(assert (=> b!1358043 (= res!612016 (not ((_ is IntegerValue!7463) (value!77947 t1!34))))))

(declare-fun e!869033 () Bool)

(assert (=> b!1358043 (= e!869033 e!869034)))

(declare-fun d!384853 () Bool)

(declare-fun c!222803 () Bool)

(assert (=> d!384853 (= c!222803 ((_ is IntegerValue!7461) (value!77947 t1!34)))))

(declare-fun e!869032 () Bool)

(assert (=> d!384853 (= (inv!21 (value!77947 t1!34)) e!869032)))

(declare-fun b!1358044 () Bool)

(assert (=> b!1358044 (= e!869032 e!869033)))

(declare-fun c!222802 () Bool)

(assert (=> b!1358044 (= c!222802 ((_ is IntegerValue!7462) (value!77947 t1!34)))))

(declare-fun b!1358045 () Bool)

(declare-fun inv!17 (TokenValue!2487) Bool)

(assert (=> b!1358045 (= e!869033 (inv!17 (value!77947 t1!34)))))

(declare-fun b!1358046 () Bool)

(declare-fun inv!16 (TokenValue!2487) Bool)

(assert (=> b!1358046 (= e!869032 (inv!16 (value!77947 t1!34)))))

(assert (= (and d!384853 c!222803) b!1358046))

(assert (= (and d!384853 (not c!222803)) b!1358044))

(assert (= (and b!1358044 c!222802) b!1358045))

(assert (= (and b!1358044 (not c!222802)) b!1358043))

(assert (= (and b!1358043 (not res!612016)) b!1358042))

(declare-fun m!1520959 () Bool)

(assert (=> b!1358042 m!1520959))

(declare-fun m!1520961 () Bool)

(assert (=> b!1358045 m!1520961))

(declare-fun m!1520963 () Bool)

(assert (=> b!1358046 m!1520963))

(assert (=> b!1357463 d!384853))

(declare-fun d!384855 () Bool)

(declare-fun res!612021 () Bool)

(declare-fun e!869039 () Bool)

(assert (=> d!384855 (=> res!612021 e!869039)))

(assert (=> d!384855 (= res!612021 (not ((_ is Cons!13836) rules!2550)))))

(assert (=> d!384855 (= (sepAndNonSepRulesDisjointChars!770 rules!2550 rules!2550) e!869039)))

(declare-fun b!1358051 () Bool)

(declare-fun e!869040 () Bool)

(assert (=> b!1358051 (= e!869039 e!869040)))

(declare-fun res!612022 () Bool)

(assert (=> b!1358051 (=> (not res!612022) (not e!869040))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!362 (Rule!4594 List!13902) Bool)

(assert (=> b!1358051 (= res!612022 (ruleDisjointCharsFromAllFromOtherType!362 (h!19237 rules!2550) rules!2550))))

(declare-fun b!1358052 () Bool)

(assert (=> b!1358052 (= e!869040 (sepAndNonSepRulesDisjointChars!770 rules!2550 (t!120441 rules!2550)))))

(assert (= (and d!384855 (not res!612021)) b!1358051))

(assert (= (and b!1358051 res!612022) b!1358052))

(declare-fun m!1520965 () Bool)

(assert (=> b!1358051 m!1520965))

(declare-fun m!1520967 () Bool)

(assert (=> b!1358052 m!1520967))

(assert (=> b!1357442 d!384855))

(declare-fun d!384857 () Bool)

(declare-fun lt!449817 () Bool)

(declare-fun content!2003 (List!13902) (InoxSet Rule!4594))

(assert (=> d!384857 (= lt!449817 (select (content!2003 rules!2550) (rule!4146 t1!34)))))

(declare-fun e!869045 () Bool)

(assert (=> d!384857 (= lt!449817 e!869045)))

(declare-fun res!612028 () Bool)

(assert (=> d!384857 (=> (not res!612028) (not e!869045))))

(assert (=> d!384857 (= res!612028 ((_ is Cons!13836) rules!2550))))

(assert (=> d!384857 (= (contains!2569 rules!2550 (rule!4146 t1!34)) lt!449817)))

(declare-fun b!1358057 () Bool)

(declare-fun e!869046 () Bool)

(assert (=> b!1358057 (= e!869045 e!869046)))

(declare-fun res!612027 () Bool)

(assert (=> b!1358057 (=> res!612027 e!869046)))

(assert (=> b!1358057 (= res!612027 (= (h!19237 rules!2550) (rule!4146 t1!34)))))

(declare-fun b!1358058 () Bool)

(assert (=> b!1358058 (= e!869046 (contains!2569 (t!120441 rules!2550) (rule!4146 t1!34)))))

(assert (= (and d!384857 res!612028) b!1358057))

(assert (= (and b!1358057 (not res!612027)) b!1358058))

(declare-fun m!1520969 () Bool)

(assert (=> d!384857 m!1520969))

(declare-fun m!1520971 () Bool)

(assert (=> d!384857 m!1520971))

(declare-fun m!1520973 () Bool)

(assert (=> b!1358058 m!1520973))

(assert (=> b!1357462 d!384857))

(declare-fun d!384859 () Bool)

(assert (=> d!384859 (= (inv!18175 (tag!2659 (rule!4146 t1!34))) (= (mod (str.len (value!77946 (tag!2659 (rule!4146 t1!34)))) 2) 0))))

(assert (=> b!1357441 d!384859))

(declare-fun d!384861 () Bool)

(declare-fun res!612029 () Bool)

(declare-fun e!869047 () Bool)

(assert (=> d!384861 (=> (not res!612029) (not e!869047))))

(assert (=> d!384861 (= res!612029 (semiInverseModEq!920 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (toValue!3652 (transformation!2397 (rule!4146 t1!34)))))))

(assert (=> d!384861 (= (inv!18179 (transformation!2397 (rule!4146 t1!34))) e!869047)))

(declare-fun b!1358059 () Bool)

(assert (=> b!1358059 (= e!869047 (equivClasses!879 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (toValue!3652 (transformation!2397 (rule!4146 t1!34)))))))

(assert (= (and d!384861 res!612029) b!1358059))

(declare-fun m!1520975 () Bool)

(assert (=> d!384861 m!1520975))

(declare-fun m!1520977 () Bool)

(assert (=> b!1358059 m!1520977))

(assert (=> b!1357441 d!384861))

(declare-fun d!384863 () Bool)

(declare-fun lt!449818 () Bool)

(assert (=> d!384863 (= lt!449818 (select (content!2000 lt!449598) lt!449592))))

(declare-fun e!869049 () Bool)

(assert (=> d!384863 (= lt!449818 e!869049)))

(declare-fun res!612031 () Bool)

(assert (=> d!384863 (=> (not res!612031) (not e!869049))))

(assert (=> d!384863 (= res!612031 ((_ is Cons!13835) lt!449598))))

(assert (=> d!384863 (= (contains!2568 lt!449598 lt!449592) lt!449818)))

(declare-fun b!1358060 () Bool)

(declare-fun e!869048 () Bool)

(assert (=> b!1358060 (= e!869049 e!869048)))

(declare-fun res!612030 () Bool)

(assert (=> b!1358060 (=> res!612030 e!869048)))

(assert (=> b!1358060 (= res!612030 (= (h!19236 lt!449598) lt!449592))))

(declare-fun b!1358061 () Bool)

(assert (=> b!1358061 (= e!869048 (contains!2568 (t!120440 lt!449598) lt!449592))))

(assert (= (and d!384863 res!612031) b!1358060))

(assert (= (and b!1358060 (not res!612030)) b!1358061))

(assert (=> d!384863 m!1520649))

(declare-fun m!1520979 () Bool)

(assert (=> d!384863 m!1520979))

(declare-fun m!1520981 () Bool)

(assert (=> b!1358061 m!1520981))

(assert (=> b!1357466 d!384863))

(declare-fun b!1358062 () Bool)

(declare-fun e!869052 () Bool)

(assert (=> b!1358062 (= e!869052 (inv!15 (value!77947 t2!34)))))

(declare-fun b!1358063 () Bool)

(declare-fun res!612032 () Bool)

(assert (=> b!1358063 (=> res!612032 e!869052)))

(assert (=> b!1358063 (= res!612032 (not ((_ is IntegerValue!7463) (value!77947 t2!34))))))

(declare-fun e!869051 () Bool)

(assert (=> b!1358063 (= e!869051 e!869052)))

(declare-fun d!384865 () Bool)

(declare-fun c!222805 () Bool)

(assert (=> d!384865 (= c!222805 ((_ is IntegerValue!7461) (value!77947 t2!34)))))

(declare-fun e!869050 () Bool)

(assert (=> d!384865 (= (inv!21 (value!77947 t2!34)) e!869050)))

(declare-fun b!1358064 () Bool)

(assert (=> b!1358064 (= e!869050 e!869051)))

(declare-fun c!222804 () Bool)

(assert (=> b!1358064 (= c!222804 ((_ is IntegerValue!7462) (value!77947 t2!34)))))

(declare-fun b!1358065 () Bool)

(assert (=> b!1358065 (= e!869051 (inv!17 (value!77947 t2!34)))))

(declare-fun b!1358066 () Bool)

(assert (=> b!1358066 (= e!869050 (inv!16 (value!77947 t2!34)))))

(assert (= (and d!384865 c!222805) b!1358066))

(assert (= (and d!384865 (not c!222805)) b!1358064))

(assert (= (and b!1358064 c!222804) b!1358065))

(assert (= (and b!1358064 (not c!222804)) b!1358063))

(assert (= (and b!1358063 (not res!612032)) b!1358062))

(declare-fun m!1520983 () Bool)

(assert (=> b!1358062 m!1520983))

(declare-fun m!1520985 () Bool)

(assert (=> b!1358065 m!1520985))

(declare-fun m!1520987 () Bool)

(assert (=> b!1358066 m!1520987))

(assert (=> b!1357445 d!384865))

(declare-fun d!384867 () Bool)

(declare-fun res!612035 () Bool)

(declare-fun e!869055 () Bool)

(assert (=> d!384867 (=> (not res!612035) (not e!869055))))

(declare-fun rulesValid!889 (LexerInterface!2092 List!13902) Bool)

(assert (=> d!384867 (= res!612035 (rulesValid!889 thiss!19762 rules!2550))))

(assert (=> d!384867 (= (rulesInvariant!1962 thiss!19762 rules!2550) e!869055)))

(declare-fun b!1358069 () Bool)

(declare-datatypes ((List!13906 0))(
  ( (Nil!13840) (Cons!13840 (h!19241 String!16671) (t!120481 List!13906)) )
))
(declare-fun noDuplicateTag!889 (LexerInterface!2092 List!13902 List!13906) Bool)

(assert (=> b!1358069 (= e!869055 (noDuplicateTag!889 thiss!19762 rules!2550 Nil!13840))))

(assert (= (and d!384867 res!612035) b!1358069))

(declare-fun m!1520989 () Bool)

(assert (=> d!384867 m!1520989))

(declare-fun m!1520991 () Bool)

(assert (=> b!1358069 m!1520991))

(assert (=> b!1357443 d!384867))

(declare-fun b!1358072 () Bool)

(declare-fun res!612036 () Bool)

(declare-fun e!869056 () Bool)

(assert (=> b!1358072 (=> (not res!612036) (not e!869056))))

(declare-fun lt!449819 () List!13901)

(assert (=> b!1358072 (= res!612036 (= (size!11328 lt!449819) (+ (size!11328 lt!449594) (size!11328 (getSuffix!559 lt!449598 lt!449594)))))))

(declare-fun b!1358071 () Bool)

(declare-fun e!869057 () List!13901)

(assert (=> b!1358071 (= e!869057 (Cons!13835 (h!19236 lt!449594) (++!3562 (t!120440 lt!449594) (getSuffix!559 lt!449598 lt!449594))))))

(declare-fun d!384869 () Bool)

(assert (=> d!384869 e!869056))

(declare-fun res!612037 () Bool)

(assert (=> d!384869 (=> (not res!612037) (not e!869056))))

(assert (=> d!384869 (= res!612037 (= (content!2000 lt!449819) ((_ map or) (content!2000 lt!449594) (content!2000 (getSuffix!559 lt!449598 lt!449594)))))))

(assert (=> d!384869 (= lt!449819 e!869057)))

(declare-fun c!222806 () Bool)

(assert (=> d!384869 (= c!222806 ((_ is Nil!13835) lt!449594))))

(assert (=> d!384869 (= (++!3562 lt!449594 (getSuffix!559 lt!449598 lt!449594)) lt!449819)))

(declare-fun b!1358070 () Bool)

(assert (=> b!1358070 (= e!869057 (getSuffix!559 lt!449598 lt!449594))))

(declare-fun b!1358073 () Bool)

(assert (=> b!1358073 (= e!869056 (or (not (= (getSuffix!559 lt!449598 lt!449594) Nil!13835)) (= lt!449819 lt!449594)))))

(assert (= (and d!384869 c!222806) b!1358070))

(assert (= (and d!384869 (not c!222806)) b!1358071))

(assert (= (and d!384869 res!612037) b!1358072))

(assert (= (and b!1358072 res!612036) b!1358073))

(declare-fun m!1520993 () Bool)

(assert (=> b!1358072 m!1520993))

(declare-fun m!1520995 () Bool)

(assert (=> b!1358072 m!1520995))

(assert (=> b!1358072 m!1520133))

(declare-fun m!1520997 () Bool)

(assert (=> b!1358072 m!1520997))

(assert (=> b!1358071 m!1520133))

(declare-fun m!1520999 () Bool)

(assert (=> b!1358071 m!1520999))

(declare-fun m!1521001 () Bool)

(assert (=> d!384869 m!1521001))

(assert (=> d!384869 m!1520899))

(assert (=> d!384869 m!1520133))

(declare-fun m!1521003 () Bool)

(assert (=> d!384869 m!1521003))

(assert (=> b!1357465 d!384869))

(declare-fun d!384871 () Bool)

(declare-fun lt!449822 () List!13901)

(assert (=> d!384871 (= (++!3562 lt!449594 lt!449822) lt!449598)))

(declare-fun e!869060 () List!13901)

(assert (=> d!384871 (= lt!449822 e!869060)))

(declare-fun c!222809 () Bool)

(assert (=> d!384871 (= c!222809 ((_ is Cons!13835) lt!449594))))

(assert (=> d!384871 (>= (size!11328 lt!449598) (size!11328 lt!449594))))

(assert (=> d!384871 (= (getSuffix!559 lt!449598 lt!449594) lt!449822)))

(declare-fun b!1358078 () Bool)

(assert (=> b!1358078 (= e!869060 (getSuffix!559 (tail!1961 lt!449598) (t!120440 lt!449594)))))

(declare-fun b!1358079 () Bool)

(assert (=> b!1358079 (= e!869060 lt!449598)))

(assert (= (and d!384871 c!222809) b!1358078))

(assert (= (and d!384871 (not c!222809)) b!1358079))

(declare-fun m!1521005 () Bool)

(assert (=> d!384871 m!1521005))

(declare-fun m!1521007 () Bool)

(assert (=> d!384871 m!1521007))

(assert (=> d!384871 m!1520995))

(assert (=> b!1358078 m!1520393))

(assert (=> b!1358078 m!1520393))

(declare-fun m!1521009 () Bool)

(assert (=> b!1358078 m!1521009))

(assert (=> b!1357465 d!384871))

(declare-fun d!384873 () Bool)

(declare-fun lt!449825 () List!13901)

(declare-fun dynLambda!6220 (Int List!13901) Bool)

(assert (=> d!384873 (dynLambda!6220 lambda!57484 lt!449825)))

(declare-fun choose!8361 (Int) List!13901)

(assert (=> d!384873 (= lt!449825 (choose!8361 lambda!57484))))

(assert (=> d!384873 (Exists!863 lambda!57484)))

(assert (=> d!384873 (= (pickWitness!166 lambda!57484) lt!449825)))

(declare-fun b_lambda!40969 () Bool)

(assert (=> (not b_lambda!40969) (not d!384873)))

(declare-fun bs!334084 () Bool)

(assert (= bs!334084 d!384873))

(declare-fun m!1521011 () Bool)

(assert (=> bs!334084 m!1521011))

(declare-fun m!1521013 () Bool)

(assert (=> bs!334084 m!1521013))

(assert (=> bs!334084 m!1520191))

(assert (=> b!1357465 d!384873))

(declare-fun d!384875 () Bool)

(assert (=> d!384875 (= (list!5306 (_1!7593 lt!449591)) (list!5310 (c!222696 (_1!7593 lt!449591))))))

(declare-fun bs!334085 () Bool)

(assert (= bs!334085 d!384875))

(declare-fun m!1521015 () Bool)

(assert (=> bs!334085 m!1521015))

(assert (=> b!1357444 d!384875))

(declare-fun b!1358080 () Bool)

(declare-fun e!869062 () Bool)

(declare-fun lt!449826 () tuple2!13414)

(assert (=> b!1358080 (= e!869062 (= (_2!7593 lt!449826) lt!449584))))

(declare-fun b!1358081 () Bool)

(declare-fun e!869063 () Bool)

(assert (=> b!1358081 (= e!869063 (not (isEmpty!8307 (_1!7593 lt!449826))))))

(declare-fun b!1358082 () Bool)

(declare-fun res!612039 () Bool)

(declare-fun e!869061 () Bool)

(assert (=> b!1358082 (=> (not res!612039) (not e!869061))))

(assert (=> b!1358082 (= res!612039 (= (list!5306 (_1!7593 lt!449826)) (_1!7595 (lexList!610 thiss!19762 rules!2550 (list!5307 lt!449584)))))))

(declare-fun d!384877 () Bool)

(assert (=> d!384877 e!869061))

(declare-fun res!612040 () Bool)

(assert (=> d!384877 (=> (not res!612040) (not e!869061))))

(assert (=> d!384877 (= res!612040 e!869062)))

(declare-fun c!222810 () Bool)

(assert (=> d!384877 (= c!222810 (> (size!11326 (_1!7593 lt!449826)) 0))))

(assert (=> d!384877 (= lt!449826 (lexTailRecV2!405 thiss!19762 rules!2550 lt!449584 (BalanceConc!9053 Empty!4556) lt!449584 (BalanceConc!9055 Empty!4557)))))

(assert (=> d!384877 (= (lex!919 thiss!19762 rules!2550 lt!449584) lt!449826)))

(declare-fun b!1358083 () Bool)

(assert (=> b!1358083 (= e!869062 e!869063)))

(declare-fun res!612038 () Bool)

(assert (=> b!1358083 (= res!612038 (< (size!11320 (_2!7593 lt!449826)) (size!11320 lt!449584)))))

(assert (=> b!1358083 (=> (not res!612038) (not e!869063))))

(declare-fun b!1358084 () Bool)

(assert (=> b!1358084 (= e!869061 (= (list!5307 (_2!7593 lt!449826)) (_2!7595 (lexList!610 thiss!19762 rules!2550 (list!5307 lt!449584)))))))

(assert (= (and d!384877 c!222810) b!1358083))

(assert (= (and d!384877 (not c!222810)) b!1358080))

(assert (= (and b!1358083 res!612038) b!1358081))

(assert (= (and d!384877 res!612040) b!1358082))

(assert (= (and b!1358082 res!612039) b!1358084))

(declare-fun m!1521017 () Bool)

(assert (=> b!1358082 m!1521017))

(assert (=> b!1358082 m!1520225))

(assert (=> b!1358082 m!1520225))

(assert (=> b!1358082 m!1520227))

(declare-fun m!1521019 () Bool)

(assert (=> b!1358083 m!1521019))

(declare-fun m!1521021 () Bool)

(assert (=> b!1358083 m!1521021))

(declare-fun m!1521023 () Bool)

(assert (=> d!384877 m!1521023))

(declare-fun m!1521025 () Bool)

(assert (=> d!384877 m!1521025))

(declare-fun m!1521027 () Bool)

(assert (=> b!1358081 m!1521027))

(declare-fun m!1521029 () Bool)

(assert (=> b!1358084 m!1521029))

(assert (=> b!1358084 m!1520225))

(assert (=> b!1358084 m!1520225))

(assert (=> b!1358084 m!1520227))

(assert (=> b!1357444 d!384877))

(declare-fun d!384879 () Bool)

(declare-fun lt!449827 () BalanceConc!9052)

(assert (=> d!384879 (= (list!5307 lt!449827) (printList!600 thiss!19762 (list!5306 (singletonSeq!1020 t2!34))))))

(assert (=> d!384879 (= lt!449827 (printTailRec!582 thiss!19762 (singletonSeq!1020 t2!34) 0 (BalanceConc!9053 Empty!4556)))))

(assert (=> d!384879 (= (print!858 thiss!19762 (singletonSeq!1020 t2!34)) lt!449827)))

(declare-fun bs!334086 () Bool)

(assert (= bs!334086 d!384879))

(declare-fun m!1521031 () Bool)

(assert (=> bs!334086 m!1521031))

(assert (=> bs!334086 m!1520169))

(assert (=> bs!334086 m!1520771))

(assert (=> bs!334086 m!1520771))

(declare-fun m!1521033 () Bool)

(assert (=> bs!334086 m!1521033))

(assert (=> bs!334086 m!1520169))

(declare-fun m!1521035 () Bool)

(assert (=> bs!334086 m!1521035))

(assert (=> b!1357444 d!384879))

(declare-fun d!384881 () Bool)

(declare-fun e!869064 () Bool)

(assert (=> d!384881 e!869064))

(declare-fun res!612041 () Bool)

(assert (=> d!384881 (=> (not res!612041) (not e!869064))))

(declare-fun lt!449828 () BalanceConc!9054)

(assert (=> d!384881 (= res!612041 (= (list!5306 lt!449828) (Cons!13838 t2!34 Nil!13838)))))

(assert (=> d!384881 (= lt!449828 (singleton!438 t2!34))))

(assert (=> d!384881 (= (singletonSeq!1020 t2!34) lt!449828)))

(declare-fun b!1358085 () Bool)

(assert (=> b!1358085 (= e!869064 (isBalanced!1332 (c!222696 lt!449828)))))

(assert (= (and d!384881 res!612041) b!1358085))

(declare-fun m!1521037 () Bool)

(assert (=> d!384881 m!1521037))

(declare-fun m!1521039 () Bool)

(assert (=> d!384881 m!1521039))

(declare-fun m!1521041 () Bool)

(assert (=> b!1358085 m!1521041))

(assert (=> b!1357444 d!384881))

(declare-fun b!1358090 () Bool)

(declare-fun e!869067 () Bool)

(declare-fun tp_is_empty!6731 () Bool)

(declare-fun tp!391716 () Bool)

(assert (=> b!1358090 (= e!869067 (and tp_is_empty!6731 tp!391716))))

(assert (=> b!1357463 (= tp!391653 e!869067)))

(assert (= (and b!1357463 ((_ is Cons!13835) (originalCharacters!3259 t1!34))) b!1358090))

(declare-fun b!1358101 () Bool)

(declare-fun b_free!33075 () Bool)

(declare-fun b_next!33779 () Bool)

(assert (=> b!1358101 (= b_free!33075 (not b_next!33779))))

(declare-fun tp!391727 () Bool)

(declare-fun b_and!90947 () Bool)

(assert (=> b!1358101 (= tp!391727 b_and!90947)))

(declare-fun b_free!33077 () Bool)

(declare-fun b_next!33781 () Bool)

(assert (=> b!1358101 (= b_free!33077 (not b_next!33781))))

(declare-fun t!120478 () Bool)

(declare-fun tb!71325 () Bool)

(assert (=> (and b!1358101 (= (toChars!3511 (transformation!2397 (h!19237 (t!120441 rules!2550)))) (toChars!3511 (transformation!2397 (rule!4146 t2!34)))) t!120478) tb!71325))

(declare-fun result!86720 () Bool)

(assert (= result!86720 result!86692))

(assert (=> d!384749 t!120478))

(declare-fun tb!71327 () Bool)

(declare-fun t!120480 () Bool)

(assert (=> (and b!1358101 (= (toChars!3511 (transformation!2397 (h!19237 (t!120441 rules!2550)))) (toChars!3511 (transformation!2397 (rule!4146 t1!34)))) t!120480) tb!71327))

(declare-fun result!86722 () Bool)

(assert (= result!86722 result!86710))

(assert (=> b!1357999 t!120480))

(assert (=> b!1358002 t!120478))

(assert (=> d!384847 t!120480))

(declare-fun b_and!90949 () Bool)

(declare-fun tp!391725 () Bool)

(assert (=> b!1358101 (= tp!391725 (and (=> t!120478 result!86720) (=> t!120480 result!86722) b_and!90949))))

(declare-fun e!869079 () Bool)

(assert (=> b!1358101 (= e!869079 (and tp!391727 tp!391725))))

(declare-fun e!869076 () Bool)

(declare-fun tp!391726 () Bool)

(declare-fun b!1358100 () Bool)

(assert (=> b!1358100 (= e!869076 (and tp!391726 (inv!18175 (tag!2659 (h!19237 (t!120441 rules!2550)))) (inv!18179 (transformation!2397 (h!19237 (t!120441 rules!2550)))) e!869079))))

(declare-fun b!1358099 () Bool)

(declare-fun e!869077 () Bool)

(declare-fun tp!391728 () Bool)

(assert (=> b!1358099 (= e!869077 (and e!869076 tp!391728))))

(assert (=> b!1357469 (= tp!391664 e!869077)))

(assert (= b!1358100 b!1358101))

(assert (= b!1358099 b!1358100))

(assert (= (and b!1357469 ((_ is Cons!13836) (t!120441 rules!2550))) b!1358099))

(declare-fun m!1521043 () Bool)

(assert (=> b!1358100 m!1521043))

(declare-fun m!1521045 () Bool)

(assert (=> b!1358100 m!1521045))

(declare-fun b!1358112 () Bool)

(declare-fun e!869082 () Bool)

(assert (=> b!1358112 (= e!869082 tp_is_empty!6731)))

(assert (=> b!1357446 (= tp!391662 e!869082)))

(declare-fun b!1358113 () Bool)

(declare-fun tp!391742 () Bool)

(declare-fun tp!391740 () Bool)

(assert (=> b!1358113 (= e!869082 (and tp!391742 tp!391740))))

(declare-fun b!1358114 () Bool)

(declare-fun tp!391743 () Bool)

(assert (=> b!1358114 (= e!869082 tp!391743)))

(declare-fun b!1358115 () Bool)

(declare-fun tp!391741 () Bool)

(declare-fun tp!391739 () Bool)

(assert (=> b!1358115 (= e!869082 (and tp!391741 tp!391739))))

(assert (= (and b!1357446 ((_ is ElementMatch!3711) (regex!2397 (h!19237 rules!2550)))) b!1358112))

(assert (= (and b!1357446 ((_ is Concat!6199) (regex!2397 (h!19237 rules!2550)))) b!1358113))

(assert (= (and b!1357446 ((_ is Star!3711) (regex!2397 (h!19237 rules!2550)))) b!1358114))

(assert (= (and b!1357446 ((_ is Union!3711) (regex!2397 (h!19237 rules!2550)))) b!1358115))

(declare-fun b!1358116 () Bool)

(declare-fun e!869083 () Bool)

(assert (=> b!1358116 (= e!869083 tp_is_empty!6731)))

(assert (=> b!1357441 (= tp!391656 e!869083)))

(declare-fun b!1358117 () Bool)

(declare-fun tp!391747 () Bool)

(declare-fun tp!391745 () Bool)

(assert (=> b!1358117 (= e!869083 (and tp!391747 tp!391745))))

(declare-fun b!1358118 () Bool)

(declare-fun tp!391748 () Bool)

(assert (=> b!1358118 (= e!869083 tp!391748)))

(declare-fun b!1358119 () Bool)

(declare-fun tp!391746 () Bool)

(declare-fun tp!391744 () Bool)

(assert (=> b!1358119 (= e!869083 (and tp!391746 tp!391744))))

(assert (= (and b!1357441 ((_ is ElementMatch!3711) (regex!2397 (rule!4146 t1!34)))) b!1358116))

(assert (= (and b!1357441 ((_ is Concat!6199) (regex!2397 (rule!4146 t1!34)))) b!1358117))

(assert (= (and b!1357441 ((_ is Star!3711) (regex!2397 (rule!4146 t1!34)))) b!1358118))

(assert (= (and b!1357441 ((_ is Union!3711) (regex!2397 (rule!4146 t1!34)))) b!1358119))

(declare-fun b!1358120 () Bool)

(declare-fun e!869084 () Bool)

(declare-fun tp!391749 () Bool)

(assert (=> b!1358120 (= e!869084 (and tp_is_empty!6731 tp!391749))))

(assert (=> b!1357445 (= tp!391660 e!869084)))

(assert (= (and b!1357445 ((_ is Cons!13835) (originalCharacters!3259 t2!34))) b!1358120))

(declare-fun b!1358121 () Bool)

(declare-fun e!869085 () Bool)

(assert (=> b!1358121 (= e!869085 tp_is_empty!6731)))

(assert (=> b!1357456 (= tp!391658 e!869085)))

(declare-fun b!1358122 () Bool)

(declare-fun tp!391753 () Bool)

(declare-fun tp!391751 () Bool)

(assert (=> b!1358122 (= e!869085 (and tp!391753 tp!391751))))

(declare-fun b!1358123 () Bool)

(declare-fun tp!391754 () Bool)

(assert (=> b!1358123 (= e!869085 tp!391754)))

(declare-fun b!1358124 () Bool)

(declare-fun tp!391752 () Bool)

(declare-fun tp!391750 () Bool)

(assert (=> b!1358124 (= e!869085 (and tp!391752 tp!391750))))

(assert (= (and b!1357456 ((_ is ElementMatch!3711) (regex!2397 (rule!4146 t2!34)))) b!1358121))

(assert (= (and b!1357456 ((_ is Concat!6199) (regex!2397 (rule!4146 t2!34)))) b!1358122))

(assert (= (and b!1357456 ((_ is Star!3711) (regex!2397 (rule!4146 t2!34)))) b!1358123))

(assert (= (and b!1357456 ((_ is Union!3711) (regex!2397 (rule!4146 t2!34)))) b!1358124))

(declare-fun b_lambda!40971 () Bool)

(assert (= b_lambda!40919 (or b!1357457 b_lambda!40971)))

(declare-fun bs!334087 () Bool)

(declare-fun d!384883 () Bool)

(assert (= bs!334087 (and d!384883 b!1357457)))

(assert (=> bs!334087 (= (dynLambda!6209 lambda!57487 lt!449667) (= (regex!2397 lt!449667) lt!449582))))

(assert (=> d!384697 d!384883))

(declare-fun b_lambda!40973 () Bool)

(assert (= b_lambda!40969 (or b!1357440 b_lambda!40973)))

(declare-fun bs!334088 () Bool)

(declare-fun d!384885 () Bool)

(assert (= bs!334088 (and d!384885 b!1357440)))

(declare-fun res!612042 () Bool)

(declare-fun e!869086 () Bool)

(assert (=> bs!334088 (=> (not res!612042) (not e!869086))))

(assert (=> bs!334088 (= res!612042 (matchR!1704 lt!449588 lt!449825))))

(assert (=> bs!334088 (= (dynLambda!6220 lambda!57484 lt!449825) e!869086)))

(declare-fun b!1358125 () Bool)

(assert (=> b!1358125 (= e!869086 (isPrefix!1120 lt!449594 lt!449825))))

(assert (= (and bs!334088 res!612042) b!1358125))

(declare-fun m!1521047 () Bool)

(assert (=> bs!334088 m!1521047))

(declare-fun m!1521049 () Bool)

(assert (=> b!1358125 m!1521049))

(assert (=> d!384873 d!384885))

(declare-fun b_lambda!40975 () Bool)

(assert (= b_lambda!40965 (or (and b!1357461 b_free!33061 (= (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (toChars!3511 (transformation!2397 (rule!4146 t2!34))))) (and b!1357450 b_free!33065 (= (toChars!3511 (transformation!2397 (h!19237 rules!2550))) (toChars!3511 (transformation!2397 (rule!4146 t2!34))))) (and b!1357464 b_free!33069) (and b!1358101 b_free!33077 (= (toChars!3511 (transformation!2397 (h!19237 (t!120441 rules!2550)))) (toChars!3511 (transformation!2397 (rule!4146 t2!34))))) b_lambda!40975)))

(declare-fun b_lambda!40977 () Bool)

(assert (= b_lambda!40937 (or b!1357435 b_lambda!40977)))

(declare-fun bs!334089 () Bool)

(declare-fun d!384887 () Bool)

(assert (= bs!334089 (and d!384887 b!1357435)))

(assert (=> bs!334089 (= (dynLambda!6214 lambda!57485 (h!19237 rules!2550)) (regex!2397 (h!19237 rules!2550)))))

(assert (=> b!1357857 d!384887))

(declare-fun b_lambda!40979 () Bool)

(assert (= b_lambda!40967 (or (and b!1357461 b_free!33061) (and b!1357450 b_free!33065 (= (toChars!3511 (transformation!2397 (h!19237 rules!2550))) (toChars!3511 (transformation!2397 (rule!4146 t1!34))))) (and b!1357464 b_free!33069 (= (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (toChars!3511 (transformation!2397 (rule!4146 t1!34))))) (and b!1358101 b_free!33077 (= (toChars!3511 (transformation!2397 (h!19237 (t!120441 rules!2550)))) (toChars!3511 (transformation!2397 (rule!4146 t1!34))))) b_lambda!40979)))

(declare-fun b_lambda!40981 () Bool)

(assert (= b_lambda!40963 (or (and b!1357461 b_free!33061) (and b!1357450 b_free!33065 (= (toChars!3511 (transformation!2397 (h!19237 rules!2550))) (toChars!3511 (transformation!2397 (rule!4146 t1!34))))) (and b!1357464 b_free!33069 (= (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (toChars!3511 (transformation!2397 (rule!4146 t1!34))))) (and b!1358101 b_free!33077 (= (toChars!3511 (transformation!2397 (h!19237 (t!120441 rules!2550)))) (toChars!3511 (transformation!2397 (rule!4146 t1!34))))) b_lambda!40981)))

(declare-fun b_lambda!40983 () Bool)

(assert (= b_lambda!40941 (or b!1357435 b_lambda!40983)))

(declare-fun bs!334090 () Bool)

(declare-fun d!384889 () Bool)

(assert (= bs!334090 (and d!384889 b!1357435)))

(declare-fun res!612043 () Bool)

(declare-fun e!869087 () Bool)

(assert (=> bs!334090 (=> (not res!612043) (not e!869087))))

(assert (=> bs!334090 (= res!612043 (validRegex!1611 (h!19238 (map!3056 rules!2550 lambda!57485))))))

(assert (=> bs!334090 (= (dynLambda!6215 lambda!57486 (h!19238 (map!3056 rules!2550 lambda!57485))) e!869087)))

(declare-fun b!1358126 () Bool)

(assert (=> b!1358126 (= e!869087 (matchR!1704 (h!19238 (map!3056 rules!2550 lambda!57485)) lt!449598))))

(assert (= (and bs!334090 res!612043) b!1358126))

(declare-fun m!1521051 () Bool)

(assert (=> bs!334090 m!1521051))

(declare-fun m!1521053 () Bool)

(assert (=> b!1358126 m!1521053))

(assert (=> b!1357895 d!384889))

(declare-fun b_lambda!40985 () Bool)

(assert (= b_lambda!40917 (or b!1357457 b_lambda!40985)))

(declare-fun bs!334091 () Bool)

(declare-fun d!384891 () Bool)

(assert (= bs!334091 (and d!384891 b!1357457)))

(assert (=> bs!334091 (= (dynLambda!6209 lambda!57487 (h!19237 rules!2550)) (= (regex!2397 (h!19237 rules!2550)) lt!449582))))

(assert (=> b!1357632 d!384891))

(declare-fun b_lambda!40987 () Bool)

(assert (= b_lambda!40927 (or (and b!1357461 b_free!33061 (= (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (toChars!3511 (transformation!2397 (rule!4146 t2!34))))) (and b!1357450 b_free!33065 (= (toChars!3511 (transformation!2397 (h!19237 rules!2550))) (toChars!3511 (transformation!2397 (rule!4146 t2!34))))) (and b!1357464 b_free!33069) (and b!1358101 b_free!33077 (= (toChars!3511 (transformation!2397 (h!19237 (t!120441 rules!2550)))) (toChars!3511 (transformation!2397 (rule!4146 t2!34))))) b_lambda!40987)))

(declare-fun b_lambda!40989 () Bool)

(assert (= b_lambda!40939 (or b!1357435 b_lambda!40989)))

(declare-fun bs!334092 () Bool)

(declare-fun d!384893 () Bool)

(assert (= bs!334092 (and d!384893 b!1357435)))

(declare-fun res!612044 () Bool)

(declare-fun e!869088 () Bool)

(assert (=> bs!334092 (=> (not res!612044) (not e!869088))))

(assert (=> bs!334092 (= res!612044 (validRegex!1611 lt!449767))))

(assert (=> bs!334092 (= (dynLambda!6215 lambda!57486 lt!449767) e!869088)))

(declare-fun b!1358127 () Bool)

(assert (=> b!1358127 (= e!869088 (matchR!1704 lt!449767 lt!449598))))

(assert (= (and bs!334092 res!612044) b!1358127))

(declare-fun m!1521055 () Bool)

(assert (=> bs!334092 m!1521055))

(declare-fun m!1521057 () Bool)

(assert (=> b!1358127 m!1521057))

(assert (=> d!384779 d!384893))

(check-sat (not d!384783) (not b!1358072) (not b_lambda!40973) (not d!384843) (not d!384839) (not b!1357899) (not d!384823) (not b!1357730) (not d!384877) (not b!1357839) (not b_lambda!40979) (not b!1358058) (not b!1358117) (not b!1358081) (not b_lambda!40981) (not b!1357896) (not b!1358042) (not b!1357727) (not b_next!33767) (not b!1357570) (not b!1357812) (not b!1358065) (not b!1357610) (not b!1358083) (not b_next!33771) (not b!1358078) (not d!384827) (not d!384791) (not d!384867) (not d!384849) (not b_lambda!40987) (not b!1358084) (not d!384775) (not b!1357857) (not d!384847) (not b!1358045) (not b!1358005) (not b!1357612) (not b!1357981) (not b!1358051) (not b!1358017) (not b!1358114) (not d!384687) (not b!1357847) (not bs!334090) (not b!1358122) (not d!384833) (not d!384845) (not b!1358061) (not bm!91259) (not b!1357979) (not d!384831) (not d!384765) (not b!1358099) (not d!384701) (not d!384789) (not b!1358085) (not b!1357982) (not b_lambda!40985) (not b!1357841) (not b_next!33781) (not b!1358002) (not b_lambda!40977) (not b!1358082) b_and!90949 (not b!1358090) (not b!1357728) (not d!384769) (not d!384785) (not b!1358100) (not d!384837) (not b!1357601) (not b!1358000) (not b!1357741) tp_is_empty!6731 (not b!1358012) (not b!1357904) (not d!384817) (not b!1357637) (not b!1358066) (not d!384875) (not b!1358118) (not d!384697) (not b!1357633) (not b_next!33765) (not bm!91268) (not b!1358003) (not b!1357901) (not b!1358031) b_and!90887 (not bs!334092) (not b!1357980) (not d!384779) (not d!384797) (not b!1358113) (not d!384773) (not b!1357569) (not b!1358124) (not d!384767) (not b_lambda!40989) (not bs!334088) (not b_lambda!40971) (not d!384879) (not b!1357999) (not b!1357978) (not d!384835) (not d!384871) (not b!1358001) (not d!384819) (not d!384863) (not b_lambda!40983) (not b!1358018) b_and!90941 (not b!1358052) (not b!1357902) (not d!384873) (not b!1358059) (not b!1357908) (not b!1358046) (not d!384821) (not b!1358069) (not d!384695) (not d!384693) (not b!1357894) (not d!384829) (not b!1358125) (not b!1357976) (not b!1358028) (not d!384815) (not d!384881) (not b!1357838) (not b!1358115) (not b!1357907) (not b!1358126) (not b!1358120) (not d!384825) (not b!1357893) (not d!384841) (not b!1358119) (not b!1357619) (not d!384851) b_and!90883 b_and!90947 (not b_next!33779) (not b!1357609) b_and!90945 (not b_next!33763) (not b!1358071) (not d!384869) b_and!90943 (not d!384641) (not d!384861) (not tb!71309) (not tb!71319) (not b_next!33769) (not b!1357909) (not b!1358062) (not b!1357571) (not d!384699) (not b!1357984) (not d!384747) (not d!384749) (not d!384777) (not b!1357729) (not b_lambda!40975) (not b_next!33773) (not b!1358123) (not d!384857) (not b!1357603) (not b!1357604) (not b!1357616) (not b!1358009) (not d!384691) (not b!1357634) (not b!1358029) (not b!1357983) b_and!90891 (not d!384753) (not b!1358127))
(check-sat (not b_next!33767) (not b_next!33771) (not b_next!33765) b_and!90887 b_and!90941 (not b_next!33773) b_and!90891 b_and!90949 (not b_next!33781) b_and!90883 b_and!90947 (not b_next!33779) b_and!90945 (not b_next!33763) b_and!90943 (not b_next!33769))
(get-model)

(declare-fun d!385089 () Bool)

(assert (=> d!385089 (= ($colon$colon!193 (map!3056 (t!120441 rules!2550) lambda!57485) (dynLambda!6214 lambda!57485 (h!19237 rules!2550))) (Cons!13837 (dynLambda!6214 lambda!57485 (h!19237 rules!2550)) (map!3056 (t!120441 rules!2550) lambda!57485)))))

(assert (=> b!1357857 d!385089))

(declare-fun d!385091 () Bool)

(declare-fun lt!449968 () List!13903)

(assert (=> d!385091 (= (size!11331 lt!449968) (size!11332 (t!120441 rules!2550)))))

(declare-fun e!869312 () List!13903)

(assert (=> d!385091 (= lt!449968 e!869312)))

(declare-fun c!222923 () Bool)

(assert (=> d!385091 (= c!222923 ((_ is Nil!13836) (t!120441 rules!2550)))))

(assert (=> d!385091 (= (map!3056 (t!120441 rules!2550) lambda!57485) lt!449968)))

(declare-fun b!1358519 () Bool)

(assert (=> b!1358519 (= e!869312 Nil!13837)))

(declare-fun b!1358520 () Bool)

(assert (=> b!1358520 (= e!869312 ($colon$colon!193 (map!3056 (t!120441 (t!120441 rules!2550)) lambda!57485) (dynLambda!6214 lambda!57485 (h!19237 (t!120441 rules!2550)))))))

(assert (= (and d!385091 c!222923) b!1358519))

(assert (= (and d!385091 (not c!222923)) b!1358520))

(declare-fun b_lambda!41003 () Bool)

(assert (=> (not b_lambda!41003) (not b!1358520)))

(declare-fun m!1521595 () Bool)

(assert (=> d!385091 m!1521595))

(declare-fun m!1521597 () Bool)

(assert (=> d!385091 m!1521597))

(declare-fun m!1521599 () Bool)

(assert (=> b!1358520 m!1521599))

(declare-fun m!1521601 () Bool)

(assert (=> b!1358520 m!1521601))

(assert (=> b!1358520 m!1521599))

(assert (=> b!1358520 m!1521601))

(declare-fun m!1521603 () Bool)

(assert (=> b!1358520 m!1521603))

(assert (=> b!1357857 d!385091))

(declare-fun d!385093 () Bool)

(declare-fun lt!449969 () Bool)

(assert (=> d!385093 (= lt!449969 (select (content!2000 (t!120440 lt!449594)) lt!449592))))

(declare-fun e!869314 () Bool)

(assert (=> d!385093 (= lt!449969 e!869314)))

(declare-fun res!612220 () Bool)

(assert (=> d!385093 (=> (not res!612220) (not e!869314))))

(assert (=> d!385093 (= res!612220 ((_ is Cons!13835) (t!120440 lt!449594)))))

(assert (=> d!385093 (= (contains!2568 (t!120440 lt!449594) lt!449592) lt!449969)))

(declare-fun b!1358521 () Bool)

(declare-fun e!869313 () Bool)

(assert (=> b!1358521 (= e!869314 e!869313)))

(declare-fun res!612219 () Bool)

(assert (=> b!1358521 (=> res!612219 e!869313)))

(assert (=> b!1358521 (= res!612219 (= (h!19236 (t!120440 lt!449594)) lt!449592))))

(declare-fun b!1358522 () Bool)

(assert (=> b!1358522 (= e!869313 (contains!2568 (t!120440 (t!120440 lt!449594)) lt!449592))))

(assert (= (and d!385093 res!612220) b!1358521))

(assert (= (and b!1358521 (not res!612219)) b!1358522))

(declare-fun m!1521605 () Bool)

(assert (=> d!385093 m!1521605))

(declare-fun m!1521607 () Bool)

(assert (=> d!385093 m!1521607))

(declare-fun m!1521609 () Bool)

(assert (=> b!1358522 m!1521609))

(assert (=> b!1358009 d!385093))

(declare-fun d!385095 () Bool)

(assert (=> d!385095 true))

(declare-fun order!8385 () Int)

(declare-fun order!8383 () Int)

(declare-fun lambda!57544 () Int)

(declare-fun dynLambda!6221 (Int Int) Int)

(declare-fun dynLambda!6222 (Int Int) Int)

(assert (=> d!385095 (< (dynLambda!6221 order!8383 (toChars!3511 (transformation!2397 (rule!4146 t2!34)))) (dynLambda!6222 order!8385 lambda!57544))))

(assert (=> d!385095 true))

(declare-fun order!8387 () Int)

(declare-fun dynLambda!6223 (Int Int) Int)

(assert (=> d!385095 (< (dynLambda!6223 order!8387 (toValue!3652 (transformation!2397 (rule!4146 t2!34)))) (dynLambda!6222 order!8385 lambda!57544))))

(declare-fun Forall!532 (Int) Bool)

(assert (=> d!385095 (= (semiInverseModEq!920 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (toValue!3652 (transformation!2397 (rule!4146 t2!34)))) (Forall!532 lambda!57544))))

(declare-fun bs!334131 () Bool)

(assert (= bs!334131 d!385095))

(declare-fun m!1521611 () Bool)

(assert (=> bs!334131 m!1521611))

(assert (=> d!384783 d!385095))

(declare-fun d!385097 () Bool)

(assert (=> d!385097 (= (list!5307 (_2!7593 lt!449826)) (list!5311 (c!222694 (_2!7593 lt!449826))))))

(declare-fun bs!334132 () Bool)

(assert (= bs!334132 d!385097))

(declare-fun m!1521613 () Bool)

(assert (=> bs!334132 m!1521613))

(assert (=> b!1358084 d!385097))

(assert (=> b!1358084 d!384785))

(assert (=> b!1358084 d!384789))

(assert (=> d!384779 d!384815))

(declare-fun b!1358527 () Bool)

(declare-fun res!612224 () Bool)

(declare-fun e!869318 () Bool)

(assert (=> b!1358527 (=> (not res!612224) (not e!869318))))

(declare-fun call!91313 () Bool)

(assert (=> b!1358527 (= res!612224 (not call!91313))))

(declare-fun b!1358528 () Bool)

(declare-fun e!869316 () Bool)

(assert (=> b!1358528 (= e!869316 (matchR!1704 (derivativeStep!948 lt!449767 (head!2437 lt!449598)) (tail!1961 lt!449598)))))

(declare-fun b!1358529 () Bool)

(declare-fun res!612226 () Bool)

(declare-fun e!869317 () Bool)

(assert (=> b!1358529 (=> res!612226 e!869317)))

(assert (=> b!1358529 (= res!612226 e!869318)))

(declare-fun res!612225 () Bool)

(assert (=> b!1358529 (=> (not res!612225) (not e!869318))))

(declare-fun lt!449970 () Bool)

(assert (=> b!1358529 (= res!612225 lt!449970)))

(declare-fun b!1358530 () Bool)

(assert (=> b!1358530 (= e!869318 (= (head!2437 lt!449598) (c!222695 lt!449767)))))

(declare-fun b!1358531 () Bool)

(assert (=> b!1358531 (= e!869316 (nullable!1190 lt!449767))))

(declare-fun bm!91308 () Bool)

(assert (=> bm!91308 (= call!91313 (isEmpty!8306 lt!449598))))

(declare-fun d!385099 () Bool)

(declare-fun e!869315 () Bool)

(assert (=> d!385099 e!869315))

(declare-fun c!222925 () Bool)

(assert (=> d!385099 (= c!222925 ((_ is EmptyExpr!3711) lt!449767))))

(assert (=> d!385099 (= lt!449970 e!869316)))

(declare-fun c!222926 () Bool)

(assert (=> d!385099 (= c!222926 (isEmpty!8306 lt!449598))))

(assert (=> d!385099 (validRegex!1611 lt!449767)))

(assert (=> d!385099 (= (matchR!1704 lt!449767 lt!449598) lt!449970)))

(declare-fun b!1358532 () Bool)

(declare-fun e!869319 () Bool)

(assert (=> b!1358532 (= e!869319 (not lt!449970))))

(declare-fun b!1358533 () Bool)

(declare-fun e!869320 () Bool)

(assert (=> b!1358533 (= e!869317 e!869320)))

(declare-fun res!612227 () Bool)

(assert (=> b!1358533 (=> (not res!612227) (not e!869320))))

(assert (=> b!1358533 (= res!612227 (not lt!449970))))

(declare-fun b!1358534 () Bool)

(declare-fun e!869321 () Bool)

(assert (=> b!1358534 (= e!869320 e!869321)))

(declare-fun res!612221 () Bool)

(assert (=> b!1358534 (=> res!612221 e!869321)))

(assert (=> b!1358534 (= res!612221 call!91313)))

(declare-fun b!1358535 () Bool)

(declare-fun res!612228 () Bool)

(assert (=> b!1358535 (=> res!612228 e!869317)))

(assert (=> b!1358535 (= res!612228 (not ((_ is ElementMatch!3711) lt!449767)))))

(assert (=> b!1358535 (= e!869319 e!869317)))

(declare-fun b!1358536 () Bool)

(declare-fun res!612222 () Bool)

(assert (=> b!1358536 (=> res!612222 e!869321)))

(assert (=> b!1358536 (= res!612222 (not (isEmpty!8306 (tail!1961 lt!449598))))))

(declare-fun b!1358537 () Bool)

(assert (=> b!1358537 (= e!869321 (not (= (head!2437 lt!449598) (c!222695 lt!449767))))))

(declare-fun b!1358538 () Bool)

(assert (=> b!1358538 (= e!869315 (= lt!449970 call!91313))))

(declare-fun b!1358539 () Bool)

(declare-fun res!612223 () Bool)

(assert (=> b!1358539 (=> (not res!612223) (not e!869318))))

(assert (=> b!1358539 (= res!612223 (isEmpty!8306 (tail!1961 lt!449598)))))

(declare-fun b!1358540 () Bool)

(assert (=> b!1358540 (= e!869315 e!869319)))

(declare-fun c!222924 () Bool)

(assert (=> b!1358540 (= c!222924 ((_ is EmptyLang!3711) lt!449767))))

(assert (= (and d!385099 c!222926) b!1358531))

(assert (= (and d!385099 (not c!222926)) b!1358528))

(assert (= (and d!385099 c!222925) b!1358538))

(assert (= (and d!385099 (not c!222925)) b!1358540))

(assert (= (and b!1358540 c!222924) b!1358532))

(assert (= (and b!1358540 (not c!222924)) b!1358535))

(assert (= (and b!1358535 (not res!612228)) b!1358529))

(assert (= (and b!1358529 res!612225) b!1358527))

(assert (= (and b!1358527 res!612224) b!1358539))

(assert (= (and b!1358539 res!612223) b!1358530))

(assert (= (and b!1358529 (not res!612226)) b!1358533))

(assert (= (and b!1358533 res!612227) b!1358534))

(assert (= (and b!1358534 (not res!612221)) b!1358536))

(assert (= (and b!1358536 (not res!612222)) b!1358537))

(assert (= (or b!1358538 b!1358527 b!1358534) bm!91308))

(assert (=> b!1358530 m!1520391))

(assert (=> b!1358537 m!1520391))

(assert (=> b!1358539 m!1520393))

(assert (=> b!1358539 m!1520393))

(assert (=> b!1358539 m!1520395))

(declare-fun m!1521615 () Bool)

(assert (=> b!1358531 m!1521615))

(assert (=> bm!91308 m!1520399))

(assert (=> b!1358536 m!1520393))

(assert (=> b!1358536 m!1520393))

(assert (=> b!1358536 m!1520395))

(assert (=> b!1358528 m!1520391))

(assert (=> b!1358528 m!1520391))

(declare-fun m!1521617 () Bool)

(assert (=> b!1358528 m!1521617))

(assert (=> b!1358528 m!1520393))

(assert (=> b!1358528 m!1521617))

(assert (=> b!1358528 m!1520393))

(declare-fun m!1521619 () Bool)

(assert (=> b!1358528 m!1521619))

(assert (=> d!385099 m!1520399))

(assert (=> d!385099 m!1521055))

(assert (=> b!1358127 d!385099))

(declare-fun d!385101 () Bool)

(declare-fun lt!449971 () List!13901)

(assert (=> d!385101 (= (++!3562 (t!120440 lt!449594) lt!449971) (tail!1961 lt!449598))))

(declare-fun e!869322 () List!13901)

(assert (=> d!385101 (= lt!449971 e!869322)))

(declare-fun c!222927 () Bool)

(assert (=> d!385101 (= c!222927 ((_ is Cons!13835) (t!120440 lt!449594)))))

(assert (=> d!385101 (>= (size!11328 (tail!1961 lt!449598)) (size!11328 (t!120440 lt!449594)))))

(assert (=> d!385101 (= (getSuffix!559 (tail!1961 lt!449598) (t!120440 lt!449594)) lt!449971)))

(declare-fun b!1358541 () Bool)

(assert (=> b!1358541 (= e!869322 (getSuffix!559 (tail!1961 (tail!1961 lt!449598)) (t!120440 (t!120440 lt!449594))))))

(declare-fun b!1358542 () Bool)

(assert (=> b!1358542 (= e!869322 (tail!1961 lt!449598))))

(assert (= (and d!385101 c!222927) b!1358541))

(assert (= (and d!385101 (not c!222927)) b!1358542))

(declare-fun m!1521621 () Bool)

(assert (=> d!385101 m!1521621))

(assert (=> d!385101 m!1520393))

(declare-fun m!1521623 () Bool)

(assert (=> d!385101 m!1521623))

(declare-fun m!1521625 () Bool)

(assert (=> d!385101 m!1521625))

(assert (=> b!1358541 m!1520393))

(declare-fun m!1521627 () Bool)

(assert (=> b!1358541 m!1521627))

(assert (=> b!1358541 m!1521627))

(declare-fun m!1521629 () Bool)

(assert (=> b!1358541 m!1521629))

(assert (=> b!1358078 d!385101))

(declare-fun d!385103 () Bool)

(assert (=> d!385103 (= (tail!1961 lt!449598) (t!120440 lt!449598))))

(assert (=> b!1358078 d!385103))

(declare-fun d!385105 () Bool)

(assert (=> d!385105 (= (list!5306 lt!449662) (list!5310 (c!222696 lt!449662)))))

(declare-fun bs!334133 () Bool)

(assert (= bs!334133 d!385105))

(declare-fun m!1521631 () Bool)

(assert (=> bs!334133 m!1521631))

(assert (=> d!384695 d!385105))

(declare-fun d!385107 () Bool)

(declare-fun e!869325 () Bool)

(assert (=> d!385107 e!869325))

(declare-fun res!612231 () Bool)

(assert (=> d!385107 (=> (not res!612231) (not e!869325))))

(declare-fun lt!449974 () BalanceConc!9054)

(assert (=> d!385107 (= res!612231 (= (list!5306 lt!449974) (Cons!13838 t1!34 Nil!13838)))))

(declare-fun choose!8363 (Token!4456) BalanceConc!9054)

(assert (=> d!385107 (= lt!449974 (choose!8363 t1!34))))

(assert (=> d!385107 (= (singleton!438 t1!34) lt!449974)))

(declare-fun b!1358545 () Bool)

(assert (=> b!1358545 (= e!869325 (isBalanced!1332 (c!222696 lt!449974)))))

(assert (= (and d!385107 res!612231) b!1358545))

(declare-fun m!1521633 () Bool)

(assert (=> d!385107 m!1521633))

(declare-fun m!1521635 () Bool)

(assert (=> d!385107 m!1521635))

(declare-fun m!1521637 () Bool)

(assert (=> b!1358545 m!1521637))

(assert (=> d!384695 d!385107))

(declare-fun b!1358548 () Bool)

(declare-fun res!612232 () Bool)

(declare-fun e!869326 () Bool)

(assert (=> b!1358548 (=> (not res!612232) (not e!869326))))

(declare-fun lt!449975 () List!13901)

(assert (=> b!1358548 (= res!612232 (= (size!11328 lt!449975) (+ (size!11328 (t!120440 lt!449599)) (size!11328 (Cons!13835 lt!449595 Nil!13835)))))))

(declare-fun b!1358547 () Bool)

(declare-fun e!869327 () List!13901)

(assert (=> b!1358547 (= e!869327 (Cons!13835 (h!19236 (t!120440 lt!449599)) (++!3562 (t!120440 (t!120440 lt!449599)) (Cons!13835 lt!449595 Nil!13835))))))

(declare-fun d!385109 () Bool)

(assert (=> d!385109 e!869326))

(declare-fun res!612233 () Bool)

(assert (=> d!385109 (=> (not res!612233) (not e!869326))))

(assert (=> d!385109 (= res!612233 (= (content!2000 lt!449975) ((_ map or) (content!2000 (t!120440 lt!449599)) (content!2000 (Cons!13835 lt!449595 Nil!13835)))))))

(assert (=> d!385109 (= lt!449975 e!869327)))

(declare-fun c!222928 () Bool)

(assert (=> d!385109 (= c!222928 ((_ is Nil!13835) (t!120440 lt!449599)))))

(assert (=> d!385109 (= (++!3562 (t!120440 lt!449599) (Cons!13835 lt!449595 Nil!13835)) lt!449975)))

(declare-fun b!1358546 () Bool)

(assert (=> b!1358546 (= e!869327 (Cons!13835 lt!449595 Nil!13835))))

(declare-fun b!1358549 () Bool)

(assert (=> b!1358549 (= e!869326 (or (not (= (Cons!13835 lt!449595 Nil!13835) Nil!13835)) (= lt!449975 (t!120440 lt!449599))))))

(assert (= (and d!385109 c!222928) b!1358546))

(assert (= (and d!385109 (not c!222928)) b!1358547))

(assert (= (and d!385109 res!612233) b!1358548))

(assert (= (and b!1358548 res!612232) b!1358549))

(declare-fun m!1521639 () Bool)

(assert (=> b!1358548 m!1521639))

(declare-fun m!1521641 () Bool)

(assert (=> b!1358548 m!1521641))

(assert (=> b!1358548 m!1520937))

(declare-fun m!1521643 () Bool)

(assert (=> b!1358547 m!1521643))

(declare-fun m!1521645 () Bool)

(assert (=> d!385109 m!1521645))

(declare-fun m!1521647 () Bool)

(assert (=> d!385109 m!1521647))

(assert (=> d!385109 m!1520945))

(assert (=> b!1358028 d!385109))

(declare-fun d!385111 () Bool)

(declare-fun c!222931 () Bool)

(assert (=> d!385111 (= c!222931 ((_ is Nil!13835) lt!449819))))

(declare-fun e!869330 () (InoxSet C!7712))

(assert (=> d!385111 (= (content!2000 lt!449819) e!869330)))

(declare-fun b!1358554 () Bool)

(assert (=> b!1358554 (= e!869330 ((as const (Array C!7712 Bool)) false))))

(declare-fun b!1358555 () Bool)

(assert (=> b!1358555 (= e!869330 ((_ map or) (store ((as const (Array C!7712 Bool)) false) (h!19236 lt!449819) true) (content!2000 (t!120440 lt!449819))))))

(assert (= (and d!385111 c!222931) b!1358554))

(assert (= (and d!385111 (not c!222931)) b!1358555))

(declare-fun m!1521649 () Bool)

(assert (=> b!1358555 m!1521649))

(declare-fun m!1521651 () Bool)

(assert (=> b!1358555 m!1521651))

(assert (=> d!384869 d!385111))

(declare-fun d!385113 () Bool)

(declare-fun c!222932 () Bool)

(assert (=> d!385113 (= c!222932 ((_ is Nil!13835) lt!449594))))

(declare-fun e!869331 () (InoxSet C!7712))

(assert (=> d!385113 (= (content!2000 lt!449594) e!869331)))

(declare-fun b!1358556 () Bool)

(assert (=> b!1358556 (= e!869331 ((as const (Array C!7712 Bool)) false))))

(declare-fun b!1358557 () Bool)

(assert (=> b!1358557 (= e!869331 ((_ map or) (store ((as const (Array C!7712 Bool)) false) (h!19236 lt!449594) true) (content!2000 (t!120440 lt!449594))))))

(assert (= (and d!385113 c!222932) b!1358556))

(assert (= (and d!385113 (not c!222932)) b!1358557))

(declare-fun m!1521653 () Bool)

(assert (=> b!1358557 m!1521653))

(assert (=> b!1358557 m!1521605))

(assert (=> d!384869 d!385113))

(declare-fun d!385115 () Bool)

(declare-fun c!222933 () Bool)

(assert (=> d!385115 (= c!222933 ((_ is Nil!13835) (getSuffix!559 lt!449598 lt!449594)))))

(declare-fun e!869332 () (InoxSet C!7712))

(assert (=> d!385115 (= (content!2000 (getSuffix!559 lt!449598 lt!449594)) e!869332)))

(declare-fun b!1358558 () Bool)

(assert (=> b!1358558 (= e!869332 ((as const (Array C!7712 Bool)) false))))

(declare-fun b!1358559 () Bool)

(assert (=> b!1358559 (= e!869332 ((_ map or) (store ((as const (Array C!7712 Bool)) false) (h!19236 (getSuffix!559 lt!449598 lt!449594)) true) (content!2000 (t!120440 (getSuffix!559 lt!449598 lt!449594)))))))

(assert (= (and d!385115 c!222933) b!1358558))

(assert (= (and d!385115 (not c!222933)) b!1358559))

(declare-fun m!1521655 () Bool)

(assert (=> b!1358559 m!1521655))

(declare-fun m!1521657 () Bool)

(assert (=> b!1358559 m!1521657))

(assert (=> d!384869 d!385115))

(declare-fun d!385117 () Bool)

(declare-fun lt!449976 () Bool)

(assert (=> d!385117 (= lt!449976 (isEmpty!8306 (list!5307 (_2!7593 lt!449772))))))

(assert (=> d!385117 (= lt!449976 (isEmpty!8308 (c!222694 (_2!7593 lt!449772))))))

(assert (=> d!385117 (= (isEmpty!8300 (_2!7593 lt!449772)) lt!449976)))

(declare-fun bs!334134 () Bool)

(assert (= bs!334134 d!385117))

(declare-fun m!1521659 () Bool)

(assert (=> bs!334134 m!1521659))

(assert (=> bs!334134 m!1521659))

(declare-fun m!1521661 () Bool)

(assert (=> bs!334134 m!1521661))

(declare-fun m!1521663 () Bool)

(assert (=> bs!334134 m!1521663))

(assert (=> b!1357908 d!385117))

(declare-fun b!1358560 () Bool)

(declare-fun e!869335 () Bool)

(declare-fun lt!449977 () tuple2!13418)

(assert (=> b!1358560 (= e!869335 (= (_2!7595 lt!449977) (_2!7594 (v!21393 lt!449739))))))

(declare-fun b!1358561 () Bool)

(declare-fun e!869334 () Bool)

(assert (=> b!1358561 (= e!869334 (not (isEmpty!8309 (_1!7595 lt!449977))))))

(declare-fun b!1358563 () Bool)

(declare-fun e!869333 () tuple2!13418)

(assert (=> b!1358563 (= e!869333 (tuple2!13419 Nil!13838 (_2!7594 (v!21393 lt!449739))))))

(declare-fun b!1358564 () Bool)

(declare-fun lt!449978 () Option!2652)

(declare-fun lt!449979 () tuple2!13418)

(assert (=> b!1358564 (= e!869333 (tuple2!13419 (Cons!13838 (_1!7594 (v!21393 lt!449978)) (_1!7595 lt!449979)) (_2!7595 lt!449979)))))

(assert (=> b!1358564 (= lt!449979 (lexList!610 thiss!19762 rules!2550 (_2!7594 (v!21393 lt!449978))))))

(declare-fun d!385119 () Bool)

(assert (=> d!385119 e!869335))

(declare-fun c!222935 () Bool)

(assert (=> d!385119 (= c!222935 (> (size!11330 (_1!7595 lt!449977)) 0))))

(assert (=> d!385119 (= lt!449977 e!869333)))

(declare-fun c!222934 () Bool)

(assert (=> d!385119 (= c!222934 ((_ is Some!2651) lt!449978))))

(assert (=> d!385119 (= lt!449978 (maxPrefix!1074 thiss!19762 rules!2550 (_2!7594 (v!21393 lt!449739))))))

(assert (=> d!385119 (= (lexList!610 thiss!19762 rules!2550 (_2!7594 (v!21393 lt!449739))) lt!449977)))

(declare-fun b!1358562 () Bool)

(assert (=> b!1358562 (= e!869335 e!869334)))

(declare-fun res!612234 () Bool)

(assert (=> b!1358562 (= res!612234 (< (size!11328 (_2!7595 lt!449977)) (size!11328 (_2!7594 (v!21393 lt!449739)))))))

(assert (=> b!1358562 (=> (not res!612234) (not e!869334))))

(assert (= (and d!385119 c!222934) b!1358564))

(assert (= (and d!385119 (not c!222934)) b!1358563))

(assert (= (and d!385119 c!222935) b!1358562))

(assert (= (and d!385119 (not c!222935)) b!1358560))

(assert (= (and b!1358562 res!612234) b!1358561))

(declare-fun m!1521665 () Bool)

(assert (=> b!1358561 m!1521665))

(declare-fun m!1521667 () Bool)

(assert (=> b!1358564 m!1521667))

(declare-fun m!1521669 () Bool)

(assert (=> d!385119 m!1521669))

(declare-fun m!1521671 () Bool)

(assert (=> d!385119 m!1521671))

(declare-fun m!1521673 () Bool)

(assert (=> b!1358562 m!1521673))

(declare-fun m!1521675 () Bool)

(assert (=> b!1358562 m!1521675))

(assert (=> b!1357841 d!385119))

(declare-fun d!385121 () Bool)

(assert (=> d!385121 (= (isEmpty!8306 (tail!1961 lt!449598)) ((_ is Nil!13835) (tail!1961 lt!449598)))))

(assert (=> b!1357609 d!385121))

(assert (=> b!1357609 d!385103))

(declare-fun d!385123 () Bool)

(assert (=> d!385123 (= (Exists!863 lambda!57528) (choose!8359 lambda!57528))))

(declare-fun bs!334135 () Bool)

(assert (= bs!334135 d!385123))

(declare-fun m!1521677 () Bool)

(assert (=> bs!334135 m!1521677))

(assert (=> d!384835 d!385123))

(declare-fun bs!334136 () Bool)

(declare-fun d!385125 () Bool)

(assert (= bs!334136 (and d!385125 b!1357440)))

(declare-fun lambda!57547 () Int)

(assert (=> bs!334136 (= lambda!57547 lambda!57484)))

(declare-fun bs!334137 () Bool)

(assert (= bs!334137 (and d!385125 d!384835)))

(assert (=> bs!334137 (= lambda!57547 lambda!57528)))

(assert (=> d!385125 true))

(assert (=> d!385125 true))

(assert (=> d!385125 (Exists!863 lambda!57547)))

(assert (=> d!385125 true))

(declare-fun _$103!116 () Unit!19983)

(assert (=> d!385125 (= (choose!8360 lt!449588 lt!449594) _$103!116)))

(declare-fun bs!334138 () Bool)

(assert (= bs!334138 d!385125))

(declare-fun m!1521679 () Bool)

(assert (=> bs!334138 m!1521679))

(assert (=> d!384835 d!385125))

(declare-fun b!1358585 () Bool)

(declare-fun res!612250 () Bool)

(declare-fun e!869352 () Bool)

(assert (=> b!1358585 (=> res!612250 e!869352)))

(assert (=> b!1358585 (= res!612250 (not ((_ is Concat!6199) lt!449588)))))

(declare-fun e!869357 () Bool)

(assert (=> b!1358585 (= e!869357 e!869352)))

(declare-fun b!1358586 () Bool)

(declare-fun res!612251 () Bool)

(declare-fun e!869358 () Bool)

(assert (=> b!1358586 (=> (not res!612251) (not e!869358))))

(declare-fun call!91321 () Bool)

(assert (=> b!1358586 (= res!612251 call!91321)))

(assert (=> b!1358586 (= e!869357 e!869358)))

(declare-fun b!1358587 () Bool)

(declare-fun e!869355 () Bool)

(assert (=> b!1358587 (= e!869355 e!869357)))

(declare-fun c!222940 () Bool)

(assert (=> b!1358587 (= c!222940 ((_ is Union!3711) lt!449588))))

(declare-fun bm!91315 () Bool)

(declare-fun call!91320 () Bool)

(assert (=> bm!91315 (= call!91320 (validRegex!1611 (ite c!222940 (regTwo!7935 lt!449588) (regTwo!7934 lt!449588))))))

(declare-fun b!1358588 () Bool)

(declare-fun e!869354 () Bool)

(assert (=> b!1358588 (= e!869354 e!869355)))

(declare-fun c!222941 () Bool)

(assert (=> b!1358588 (= c!222941 ((_ is Star!3711) lt!449588))))

(declare-fun b!1358589 () Bool)

(declare-fun e!869353 () Bool)

(assert (=> b!1358589 (= e!869355 e!869353)))

(declare-fun res!612248 () Bool)

(assert (=> b!1358589 (= res!612248 (not (nullable!1190 (reg!4040 lt!449588))))))

(assert (=> b!1358589 (=> (not res!612248) (not e!869353))))

(declare-fun b!1358590 () Bool)

(assert (=> b!1358590 (= e!869358 call!91320)))

(declare-fun b!1358591 () Bool)

(declare-fun e!869356 () Bool)

(assert (=> b!1358591 (= e!869352 e!869356)))

(declare-fun res!612249 () Bool)

(assert (=> b!1358591 (=> (not res!612249) (not e!869356))))

(assert (=> b!1358591 (= res!612249 call!91321)))

(declare-fun bm!91316 () Bool)

(declare-fun call!91322 () Bool)

(assert (=> bm!91316 (= call!91321 call!91322)))

(declare-fun bm!91317 () Bool)

(assert (=> bm!91317 (= call!91322 (validRegex!1611 (ite c!222941 (reg!4040 lt!449588) (ite c!222940 (regOne!7935 lt!449588) (regOne!7934 lt!449588)))))))

(declare-fun b!1358592 () Bool)

(assert (=> b!1358592 (= e!869356 call!91320)))

(declare-fun d!385127 () Bool)

(declare-fun res!612247 () Bool)

(assert (=> d!385127 (=> res!612247 e!869354)))

(assert (=> d!385127 (= res!612247 ((_ is ElementMatch!3711) lt!449588))))

(assert (=> d!385127 (= (validRegex!1611 lt!449588) e!869354)))

(declare-fun b!1358593 () Bool)

(assert (=> b!1358593 (= e!869353 call!91322)))

(assert (= (and d!385127 (not res!612247)) b!1358588))

(assert (= (and b!1358588 c!222941) b!1358589))

(assert (= (and b!1358588 (not c!222941)) b!1358587))

(assert (= (and b!1358589 res!612248) b!1358593))

(assert (= (and b!1358587 c!222940) b!1358586))

(assert (= (and b!1358587 (not c!222940)) b!1358585))

(assert (= (and b!1358586 res!612251) b!1358590))

(assert (= (and b!1358585 (not res!612250)) b!1358591))

(assert (= (and b!1358591 res!612249) b!1358592))

(assert (= (or b!1358586 b!1358591) bm!91316))

(assert (= (or b!1358590 b!1358592) bm!91315))

(assert (= (or b!1358593 bm!91316) bm!91317))

(declare-fun m!1521681 () Bool)

(assert (=> bm!91315 m!1521681))

(declare-fun m!1521683 () Bool)

(assert (=> b!1358589 m!1521683))

(declare-fun m!1521685 () Bool)

(assert (=> bm!91317 m!1521685))

(assert (=> d!384835 d!385127))

(declare-fun d!385129 () Bool)

(assert (=> d!385129 (= (isEmpty!8306 lt!449598) ((_ is Nil!13835) lt!449598))))

(assert (=> d!384687 d!385129))

(assert (=> d!384687 d!385127))

(declare-fun d!385131 () Bool)

(declare-fun lt!449980 () Bool)

(assert (=> d!385131 (= lt!449980 (select (content!2003 rules!2550) (rule!4146 (_1!7594 (get!4332 lt!449789)))))))

(declare-fun e!869359 () Bool)

(assert (=> d!385131 (= lt!449980 e!869359)))

(declare-fun res!612253 () Bool)

(assert (=> d!385131 (=> (not res!612253) (not e!869359))))

(assert (=> d!385131 (= res!612253 ((_ is Cons!13836) rules!2550))))

(assert (=> d!385131 (= (contains!2569 rules!2550 (rule!4146 (_1!7594 (get!4332 lt!449789)))) lt!449980)))

(declare-fun b!1358594 () Bool)

(declare-fun e!869360 () Bool)

(assert (=> b!1358594 (= e!869359 e!869360)))

(declare-fun res!612252 () Bool)

(assert (=> b!1358594 (=> res!612252 e!869360)))

(assert (=> b!1358594 (= res!612252 (= (h!19237 rules!2550) (rule!4146 (_1!7594 (get!4332 lt!449789)))))))

(declare-fun b!1358595 () Bool)

(assert (=> b!1358595 (= e!869360 (contains!2569 (t!120441 rules!2550) (rule!4146 (_1!7594 (get!4332 lt!449789)))))))

(assert (= (and d!385131 res!612253) b!1358594))

(assert (= (and b!1358594 (not res!612252)) b!1358595))

(assert (=> d!385131 m!1520969))

(declare-fun m!1521687 () Bool)

(assert (=> d!385131 m!1521687))

(declare-fun m!1521689 () Bool)

(assert (=> b!1358595 m!1521689))

(assert (=> b!1357978 d!385131))

(declare-fun d!385133 () Bool)

(assert (=> d!385133 (= (get!4332 lt!449789) (v!21393 lt!449789))))

(assert (=> b!1357978 d!385133))

(declare-fun d!385135 () Bool)

(declare-fun lt!449993 () Int)

(assert (=> d!385135 (>= lt!449993 0)))

(declare-fun e!869371 () Int)

(assert (=> d!385135 (= lt!449993 e!869371)))

(declare-fun c!222946 () Bool)

(assert (=> d!385135 (= c!222946 ((_ is Nil!13835) (_2!7595 lt!449768)))))

(assert (=> d!385135 (= (size!11328 (_2!7595 lt!449768)) lt!449993)))

(declare-fun b!1358618 () Bool)

(assert (=> b!1358618 (= e!869371 0)))

(declare-fun b!1358619 () Bool)

(assert (=> b!1358619 (= e!869371 (+ 1 (size!11328 (t!120440 (_2!7595 lt!449768)))))))

(assert (= (and d!385135 c!222946) b!1358618))

(assert (= (and d!385135 (not c!222946)) b!1358619))

(declare-fun m!1521691 () Bool)

(assert (=> b!1358619 m!1521691))

(assert (=> b!1357902 d!385135))

(declare-fun d!385137 () Bool)

(declare-fun lt!449994 () Int)

(assert (=> d!385137 (>= lt!449994 0)))

(declare-fun e!869372 () Int)

(assert (=> d!385137 (= lt!449994 e!869372)))

(declare-fun c!222947 () Bool)

(assert (=> d!385137 (= c!222947 ((_ is Nil!13835) (list!5307 lt!449584)))))

(assert (=> d!385137 (= (size!11328 (list!5307 lt!449584)) lt!449994)))

(declare-fun b!1358620 () Bool)

(assert (=> b!1358620 (= e!869372 0)))

(declare-fun b!1358621 () Bool)

(assert (=> b!1358621 (= e!869372 (+ 1 (size!11328 (t!120440 (list!5307 lt!449584)))))))

(assert (= (and d!385137 c!222947) b!1358620))

(assert (= (and d!385137 (not c!222947)) b!1358621))

(declare-fun m!1521693 () Bool)

(assert (=> b!1358621 m!1521693))

(assert (=> b!1357902 d!385137))

(declare-fun d!385139 () Bool)

(declare-fun lt!449995 () Bool)

(assert (=> d!385139 (= lt!449995 (select (content!2000 (t!120440 lt!449594)) lt!449595))))

(declare-fun e!869374 () Bool)

(assert (=> d!385139 (= lt!449995 e!869374)))

(declare-fun res!612269 () Bool)

(assert (=> d!385139 (=> (not res!612269) (not e!869374))))

(assert (=> d!385139 (= res!612269 ((_ is Cons!13835) (t!120440 lt!449594)))))

(assert (=> d!385139 (= (contains!2568 (t!120440 lt!449594) lt!449595) lt!449995)))

(declare-fun b!1358622 () Bool)

(declare-fun e!869373 () Bool)

(assert (=> b!1358622 (= e!869374 e!869373)))

(declare-fun res!612268 () Bool)

(assert (=> b!1358622 (=> res!612268 e!869373)))

(assert (=> b!1358622 (= res!612268 (= (h!19236 (t!120440 lt!449594)) lt!449595))))

(declare-fun b!1358623 () Bool)

(assert (=> b!1358623 (= e!869373 (contains!2568 (t!120440 (t!120440 lt!449594)) lt!449595))))

(assert (= (and d!385139 res!612269) b!1358622))

(assert (= (and b!1358622 (not res!612268)) b!1358623))

(assert (=> d!385139 m!1521605))

(declare-fun m!1521695 () Bool)

(assert (=> d!385139 m!1521695))

(declare-fun m!1521697 () Bool)

(assert (=> b!1358623 m!1521697))

(assert (=> b!1358005 d!385139))

(declare-fun b!1358636 () Bool)

(declare-fun e!869379 () Bool)

(declare-fun e!869380 () Bool)

(assert (=> b!1358636 (= e!869379 e!869380)))

(declare-fun res!612284 () Bool)

(assert (=> b!1358636 (=> (not res!612284) (not e!869380))))

(declare-fun height!654 (Conc!4557) Int)

(assert (=> b!1358636 (= res!612284 (<= (- 1) (- (height!654 (left!11849 (c!222696 lt!449828))) (height!654 (right!12179 (c!222696 lt!449828))))))))

(declare-fun b!1358637 () Bool)

(declare-fun res!612283 () Bool)

(assert (=> b!1358637 (=> (not res!612283) (not e!869380))))

(assert (=> b!1358637 (= res!612283 (isBalanced!1332 (right!12179 (c!222696 lt!449828))))))

(declare-fun d!385141 () Bool)

(declare-fun res!612287 () Bool)

(assert (=> d!385141 (=> res!612287 e!869379)))

(assert (=> d!385141 (= res!612287 (not ((_ is Node!4557) (c!222696 lt!449828))))))

(assert (=> d!385141 (= (isBalanced!1332 (c!222696 lt!449828)) e!869379)))

(declare-fun b!1358638 () Bool)

(declare-fun res!612286 () Bool)

(assert (=> b!1358638 (=> (not res!612286) (not e!869380))))

(assert (=> b!1358638 (= res!612286 (<= (- (height!654 (left!11849 (c!222696 lt!449828))) (height!654 (right!12179 (c!222696 lt!449828)))) 1))))

(declare-fun b!1358639 () Bool)

(declare-fun isEmpty!8313 (Conc!4557) Bool)

(assert (=> b!1358639 (= e!869380 (not (isEmpty!8313 (right!12179 (c!222696 lt!449828)))))))

(declare-fun b!1358640 () Bool)

(declare-fun res!612282 () Bool)

(assert (=> b!1358640 (=> (not res!612282) (not e!869380))))

(assert (=> b!1358640 (= res!612282 (isBalanced!1332 (left!11849 (c!222696 lt!449828))))))

(declare-fun b!1358641 () Bool)

(declare-fun res!612285 () Bool)

(assert (=> b!1358641 (=> (not res!612285) (not e!869380))))

(assert (=> b!1358641 (= res!612285 (not (isEmpty!8313 (left!11849 (c!222696 lt!449828)))))))

(assert (= (and d!385141 (not res!612287)) b!1358636))

(assert (= (and b!1358636 res!612284) b!1358638))

(assert (= (and b!1358638 res!612286) b!1358640))

(assert (= (and b!1358640 res!612282) b!1358637))

(assert (= (and b!1358637 res!612283) b!1358641))

(assert (= (and b!1358641 res!612285) b!1358639))

(declare-fun m!1521699 () Bool)

(assert (=> b!1358639 m!1521699))

(declare-fun m!1521701 () Bool)

(assert (=> b!1358641 m!1521701))

(declare-fun m!1521703 () Bool)

(assert (=> b!1358640 m!1521703))

(declare-fun m!1521705 () Bool)

(assert (=> b!1358638 m!1521705))

(declare-fun m!1521707 () Bool)

(assert (=> b!1358638 m!1521707))

(declare-fun m!1521709 () Bool)

(assert (=> b!1358637 m!1521709))

(assert (=> b!1358636 m!1521705))

(assert (=> b!1358636 m!1521707))

(assert (=> b!1358085 d!385141))

(declare-fun lt!449996 () Bool)

(declare-fun d!385143 () Bool)

(assert (=> d!385143 (= lt!449996 (isEmpty!8306 (list!5307 (_2!7593 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t1!34)))))))))

(assert (=> d!385143 (= lt!449996 (isEmpty!8308 (c!222694 (_2!7593 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t1!34)))))))))

(assert (=> d!385143 (= (isEmpty!8300 (_2!7593 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t1!34))))) lt!449996)))

(declare-fun bs!334139 () Bool)

(assert (= bs!334139 d!385143))

(declare-fun m!1521711 () Bool)

(assert (=> bs!334139 m!1521711))

(assert (=> bs!334139 m!1521711))

(declare-fun m!1521713 () Bool)

(assert (=> bs!334139 m!1521713))

(declare-fun m!1521715 () Bool)

(assert (=> bs!334139 m!1521715))

(assert (=> b!1357571 d!385143))

(declare-fun e!869386 () Bool)

(declare-fun b!1358651 () Bool)

(declare-fun lt!450002 () tuple2!13414)

(assert (=> b!1358651 (= e!869386 (= (_2!7593 lt!450002) (print!858 thiss!19762 (singletonSeq!1020 t1!34))))))

(declare-fun b!1358652 () Bool)

(declare-fun e!869387 () Bool)

(assert (=> b!1358652 (= e!869387 (not (isEmpty!8307 (_1!7593 lt!450002))))))

(declare-fun b!1358653 () Bool)

(declare-fun res!612296 () Bool)

(declare-fun e!869385 () Bool)

(assert (=> b!1358653 (=> (not res!612296) (not e!869385))))

(assert (=> b!1358653 (= res!612296 (= (list!5306 (_1!7593 lt!450002)) (_1!7595 (lexList!610 thiss!19762 rules!2550 (list!5307 (print!858 thiss!19762 (singletonSeq!1020 t1!34)))))))))

(declare-fun d!385145 () Bool)

(assert (=> d!385145 e!869385))

(declare-fun res!612297 () Bool)

(assert (=> d!385145 (=> (not res!612297) (not e!869385))))

(assert (=> d!385145 (= res!612297 e!869386)))

(declare-fun c!222949 () Bool)

(assert (=> d!385145 (= c!222949 (> (size!11326 (_1!7593 lt!450002)) 0))))

(assert (=> d!385145 (= lt!450002 (lexTailRecV2!405 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t1!34)) (BalanceConc!9053 Empty!4556) (print!858 thiss!19762 (singletonSeq!1020 t1!34)) (BalanceConc!9055 Empty!4557)))))

(assert (=> d!385145 (= (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t1!34))) lt!450002)))

(declare-fun b!1358654 () Bool)

(assert (=> b!1358654 (= e!869386 e!869387)))

(declare-fun res!612295 () Bool)

(assert (=> b!1358654 (= res!612295 (< (size!11320 (_2!7593 lt!450002)) (size!11320 (print!858 thiss!19762 (singletonSeq!1020 t1!34)))))))

(assert (=> b!1358654 (=> (not res!612295) (not e!869387))))

(declare-fun b!1358655 () Bool)

(assert (=> b!1358655 (= e!869385 (= (list!5307 (_2!7593 lt!450002)) (_2!7595 (lexList!610 thiss!19762 rules!2550 (list!5307 (print!858 thiss!19762 (singletonSeq!1020 t1!34)))))))))

(assert (= (and d!385145 c!222949) b!1358654))

(assert (= (and d!385145 (not c!222949)) b!1358651))

(assert (= (and b!1358654 res!612295) b!1358652))

(assert (= (and d!385145 res!612297) b!1358653))

(assert (= (and b!1358653 res!612296) b!1358655))

(declare-fun m!1521717 () Bool)

(assert (=> b!1358653 m!1521717))

(assert (=> b!1358653 m!1520205))

(declare-fun m!1521719 () Bool)

(assert (=> b!1358653 m!1521719))

(assert (=> b!1358653 m!1521719))

(declare-fun m!1521721 () Bool)

(assert (=> b!1358653 m!1521721))

(declare-fun m!1521723 () Bool)

(assert (=> b!1358654 m!1521723))

(assert (=> b!1358654 m!1520205))

(declare-fun m!1521725 () Bool)

(assert (=> b!1358654 m!1521725))

(declare-fun m!1521727 () Bool)

(assert (=> d!385145 m!1521727))

(assert (=> d!385145 m!1520205))

(assert (=> d!385145 m!1520205))

(declare-fun m!1521729 () Bool)

(assert (=> d!385145 m!1521729))

(declare-fun m!1521731 () Bool)

(assert (=> b!1358652 m!1521731))

(declare-fun m!1521733 () Bool)

(assert (=> b!1358655 m!1521733))

(assert (=> b!1358655 m!1520205))

(assert (=> b!1358655 m!1521719))

(assert (=> b!1358655 m!1521719))

(assert (=> b!1358655 m!1521721))

(assert (=> b!1357571 d!385145))

(assert (=> b!1357571 d!384693))

(assert (=> b!1357571 d!384695))

(declare-fun b!1358656 () Bool)

(declare-fun e!869389 () Bool)

(assert (=> b!1358656 (= e!869389 (dynLambda!6209 lambda!57487 (h!19237 (t!120441 rules!2550))))))

(declare-fun d!385147 () Bool)

(declare-fun e!869390 () Bool)

(assert (=> d!385147 e!869390))

(declare-fun res!612298 () Bool)

(assert (=> d!385147 (=> (not res!612298) (not e!869390))))

(declare-fun lt!450003 () Rule!4594)

(assert (=> d!385147 (= res!612298 (dynLambda!6209 lambda!57487 lt!450003))))

(declare-fun e!869388 () Rule!4594)

(assert (=> d!385147 (= lt!450003 e!869388)))

(declare-fun c!222950 () Bool)

(assert (=> d!385147 (= c!222950 e!869389)))

(declare-fun res!612299 () Bool)

(assert (=> d!385147 (=> (not res!612299) (not e!869389))))

(assert (=> d!385147 (= res!612299 ((_ is Cons!13836) (t!120441 rules!2550)))))

(assert (=> d!385147 (exists!453 (t!120441 rules!2550) lambda!57487)))

(assert (=> d!385147 (= (getWitness!341 (t!120441 rules!2550) lambda!57487) lt!450003)))

(declare-fun b!1358657 () Bool)

(assert (=> b!1358657 (= e!869390 (contains!2569 (t!120441 rules!2550) lt!450003))))

(declare-fun b!1358658 () Bool)

(declare-fun e!869391 () Rule!4594)

(assert (=> b!1358658 (= e!869391 (getWitness!341 (t!120441 (t!120441 rules!2550)) lambda!57487))))

(declare-fun b!1358659 () Bool)

(assert (=> b!1358659 (= e!869388 e!869391)))

(declare-fun c!222951 () Bool)

(assert (=> b!1358659 (= c!222951 ((_ is Cons!13836) (t!120441 rules!2550)))))

(declare-fun b!1358660 () Bool)

(assert (=> b!1358660 (= e!869388 (h!19237 (t!120441 rules!2550)))))

(declare-fun b!1358661 () Bool)

(declare-fun lt!450004 () Unit!19983)

(declare-fun Unit!19990 () Unit!19983)

(assert (=> b!1358661 (= lt!450004 Unit!19990)))

(assert (=> b!1358661 false))

(assert (=> b!1358661 (= e!869391 (head!2438 (t!120441 rules!2550)))))

(assert (= (and d!385147 res!612299) b!1358656))

(assert (= (and d!385147 c!222950) b!1358660))

(assert (= (and d!385147 (not c!222950)) b!1358659))

(assert (= (and b!1358659 c!222951) b!1358658))

(assert (= (and b!1358659 (not c!222951)) b!1358661))

(assert (= (and d!385147 res!612298) b!1358657))

(declare-fun b_lambda!41005 () Bool)

(assert (=> (not b_lambda!41005) (not b!1358656)))

(declare-fun b_lambda!41007 () Bool)

(assert (=> (not b_lambda!41007) (not d!385147)))

(declare-fun m!1521735 () Bool)

(assert (=> b!1358658 m!1521735))

(declare-fun m!1521737 () Bool)

(assert (=> b!1358657 m!1521737))

(declare-fun m!1521739 () Bool)

(assert (=> b!1358656 m!1521739))

(declare-fun m!1521741 () Bool)

(assert (=> b!1358661 m!1521741))

(declare-fun m!1521743 () Bool)

(assert (=> d!385147 m!1521743))

(declare-fun m!1521745 () Bool)

(assert (=> d!385147 m!1521745))

(assert (=> b!1357634 d!385147))

(declare-fun d!385149 () Bool)

(declare-fun lt!450005 () Int)

(assert (=> d!385149 (>= lt!450005 0)))

(declare-fun e!869392 () Int)

(assert (=> d!385149 (= lt!450005 e!869392)))

(declare-fun c!222952 () Bool)

(assert (=> d!385149 (= c!222952 ((_ is Nil!13835) (_2!7594 (get!4332 lt!449789))))))

(assert (=> d!385149 (= (size!11328 (_2!7594 (get!4332 lt!449789))) lt!450005)))

(declare-fun b!1358662 () Bool)

(assert (=> b!1358662 (= e!869392 0)))

(declare-fun b!1358663 () Bool)

(assert (=> b!1358663 (= e!869392 (+ 1 (size!11328 (t!120440 (_2!7594 (get!4332 lt!449789))))))))

(assert (= (and d!385149 c!222952) b!1358662))

(assert (= (and d!385149 (not c!222952)) b!1358663))

(declare-fun m!1521757 () Bool)

(assert (=> b!1358663 m!1521757))

(assert (=> b!1357982 d!385149))

(assert (=> b!1357982 d!385133))

(declare-fun d!385151 () Bool)

(declare-fun lt!450006 () Int)

(assert (=> d!385151 (>= lt!450006 0)))

(declare-fun e!869393 () Int)

(assert (=> d!385151 (= lt!450006 e!869393)))

(declare-fun c!222953 () Bool)

(assert (=> d!385151 (= c!222953 ((_ is Nil!13835) lt!449599))))

(assert (=> d!385151 (= (size!11328 lt!449599) lt!450006)))

(declare-fun b!1358664 () Bool)

(assert (=> b!1358664 (= e!869393 0)))

(declare-fun b!1358665 () Bool)

(assert (=> b!1358665 (= e!869393 (+ 1 (size!11328 (t!120440 lt!449599))))))

(assert (= (and d!385151 c!222953) b!1358664))

(assert (= (and d!385151 (not c!222953)) b!1358665))

(assert (=> b!1358665 m!1521641))

(assert (=> b!1357982 d!385151))

(declare-fun d!385153 () Bool)

(declare-fun res!612302 () List!13901)

(assert (=> d!385153 (dynLambda!6220 lambda!57484 res!612302)))

(declare-fun e!869396 () Bool)

(assert (=> d!385153 e!869396))

(assert (=> d!385153 (= (choose!8361 lambda!57484) res!612302)))

(declare-fun b!1358668 () Bool)

(declare-fun tp!391758 () Bool)

(assert (=> b!1358668 (= e!869396 (and tp_is_empty!6731 tp!391758))))

(assert (= (and d!385153 ((_ is Cons!13835) res!612302)) b!1358668))

(declare-fun b_lambda!41009 () Bool)

(assert (=> (not b_lambda!41009) (not d!385153)))

(declare-fun m!1521793 () Bool)

(assert (=> d!385153 m!1521793))

(assert (=> d!384873 d!385153))

(assert (=> d!384873 d!384833))

(declare-fun d!385157 () Bool)

(declare-fun lt!450007 () Int)

(assert (=> d!385157 (>= lt!450007 0)))

(declare-fun e!869397 () Int)

(assert (=> d!385157 (= lt!450007 e!869397)))

(declare-fun c!222954 () Bool)

(assert (=> d!385157 (= c!222954 ((_ is Nil!13835) lt!449819))))

(assert (=> d!385157 (= (size!11328 lt!449819) lt!450007)))

(declare-fun b!1358669 () Bool)

(assert (=> b!1358669 (= e!869397 0)))

(declare-fun b!1358670 () Bool)

(assert (=> b!1358670 (= e!869397 (+ 1 (size!11328 (t!120440 lt!449819))))))

(assert (= (and d!385157 c!222954) b!1358669))

(assert (= (and d!385157 (not c!222954)) b!1358670))

(declare-fun m!1521795 () Bool)

(assert (=> b!1358670 m!1521795))

(assert (=> b!1358072 d!385157))

(declare-fun d!385159 () Bool)

(declare-fun lt!450008 () Int)

(assert (=> d!385159 (>= lt!450008 0)))

(declare-fun e!869398 () Int)

(assert (=> d!385159 (= lt!450008 e!869398)))

(declare-fun c!222955 () Bool)

(assert (=> d!385159 (= c!222955 ((_ is Nil!13835) lt!449594))))

(assert (=> d!385159 (= (size!11328 lt!449594) lt!450008)))

(declare-fun b!1358671 () Bool)

(assert (=> b!1358671 (= e!869398 0)))

(declare-fun b!1358672 () Bool)

(assert (=> b!1358672 (= e!869398 (+ 1 (size!11328 (t!120440 lt!449594))))))

(assert (= (and d!385159 c!222955) b!1358671))

(assert (= (and d!385159 (not c!222955)) b!1358672))

(assert (=> b!1358672 m!1521625))

(assert (=> b!1358072 d!385159))

(declare-fun d!385161 () Bool)

(declare-fun lt!450009 () Int)

(assert (=> d!385161 (>= lt!450009 0)))

(declare-fun e!869399 () Int)

(assert (=> d!385161 (= lt!450009 e!869399)))

(declare-fun c!222956 () Bool)

(assert (=> d!385161 (= c!222956 ((_ is Nil!13835) (getSuffix!559 lt!449598 lt!449594)))))

(assert (=> d!385161 (= (size!11328 (getSuffix!559 lt!449598 lt!449594)) lt!450009)))

(declare-fun b!1358673 () Bool)

(assert (=> b!1358673 (= e!869399 0)))

(declare-fun b!1358674 () Bool)

(assert (=> b!1358674 (= e!869399 (+ 1 (size!11328 (t!120440 (getSuffix!559 lt!449598 lt!449594)))))))

(assert (= (and d!385161 c!222956) b!1358673))

(assert (= (and d!385161 (not c!222956)) b!1358674))

(declare-fun m!1521797 () Bool)

(assert (=> b!1358674 m!1521797))

(assert (=> b!1358072 d!385161))

(declare-fun d!385163 () Bool)

(declare-fun c!222957 () Bool)

(assert (=> d!385163 (= c!222957 (isEmpty!8306 (tail!1961 lt!449594)))))

(declare-fun e!869400 () Bool)

(assert (=> d!385163 (= (prefixMatch!220 (derivativeStep!948 lt!449588 (head!2437 lt!449594)) (tail!1961 lt!449594)) e!869400)))

(declare-fun b!1358675 () Bool)

(assert (=> b!1358675 (= e!869400 (not (lostCause!325 (derivativeStep!948 lt!449588 (head!2437 lt!449594)))))))

(declare-fun b!1358676 () Bool)

(assert (=> b!1358676 (= e!869400 (prefixMatch!220 (derivativeStep!948 (derivativeStep!948 lt!449588 (head!2437 lt!449594)) (head!2437 (tail!1961 lt!449594))) (tail!1961 (tail!1961 lt!449594))))))

(assert (= (and d!385163 c!222957) b!1358675))

(assert (= (and d!385163 (not c!222957)) b!1358676))

(assert (=> d!385163 m!1520929))

(declare-fun m!1521799 () Bool)

(assert (=> d!385163 m!1521799))

(assert (=> b!1358675 m!1520927))

(declare-fun m!1521801 () Bool)

(assert (=> b!1358675 m!1521801))

(assert (=> b!1358676 m!1520929))

(declare-fun m!1521803 () Bool)

(assert (=> b!1358676 m!1521803))

(assert (=> b!1358676 m!1520927))

(assert (=> b!1358676 m!1521803))

(declare-fun m!1521805 () Bool)

(assert (=> b!1358676 m!1521805))

(assert (=> b!1358676 m!1520929))

(declare-fun m!1521807 () Bool)

(assert (=> b!1358676 m!1521807))

(assert (=> b!1358676 m!1521805))

(assert (=> b!1358676 m!1521807))

(declare-fun m!1521809 () Bool)

(assert (=> b!1358676 m!1521809))

(assert (=> b!1358018 d!385163))

(declare-fun c!222979 () Bool)

(declare-fun call!91332 () Regex!3711)

(declare-fun c!222977 () Bool)

(declare-fun c!222976 () Bool)

(declare-fun bm!91326 () Bool)

(assert (=> bm!91326 (= call!91332 (derivativeStep!948 (ite c!222979 (regOne!7935 lt!449588) (ite c!222977 (reg!4040 lt!449588) (ite c!222976 (regTwo!7934 lt!449588) (regOne!7934 lt!449588)))) (head!2437 lt!449594)))))

(declare-fun bm!91327 () Bool)

(declare-fun call!91334 () Regex!3711)

(declare-fun call!91333 () Regex!3711)

(assert (=> bm!91327 (= call!91334 call!91333)))

(declare-fun b!1358721 () Bool)

(declare-fun e!869428 () Regex!3711)

(assert (=> b!1358721 (= e!869428 (Union!3711 (Concat!6199 call!91334 (regTwo!7934 lt!449588)) EmptyLang!3711))))

(declare-fun b!1358722 () Bool)

(assert (=> b!1358722 (= c!222976 (nullable!1190 (regOne!7934 lt!449588)))))

(declare-fun e!869430 () Regex!3711)

(assert (=> b!1358722 (= e!869430 e!869428)))

(declare-fun bm!91328 () Bool)

(assert (=> bm!91328 (= call!91333 call!91332)))

(declare-fun b!1358723 () Bool)

(assert (=> b!1358723 (= e!869430 (Concat!6199 call!91333 lt!449588))))

(declare-fun b!1358724 () Bool)

(declare-fun e!869429 () Regex!3711)

(assert (=> b!1358724 (= e!869429 (ite (= (head!2437 lt!449594) (c!222695 lt!449588)) EmptyExpr!3711 EmptyLang!3711))))

(declare-fun b!1358725 () Bool)

(declare-fun e!869431 () Regex!3711)

(assert (=> b!1358725 (= e!869431 e!869430)))

(assert (=> b!1358725 (= c!222977 ((_ is Star!3711) lt!449588))))

(declare-fun call!91331 () Regex!3711)

(declare-fun b!1358726 () Bool)

(assert (=> b!1358726 (= e!869428 (Union!3711 (Concat!6199 call!91331 (regTwo!7934 lt!449588)) call!91334))))

(declare-fun bm!91329 () Bool)

(assert (=> bm!91329 (= call!91331 (derivativeStep!948 (ite c!222979 (regTwo!7935 lt!449588) (regOne!7934 lt!449588)) (head!2437 lt!449594)))))

(declare-fun b!1358728 () Bool)

(declare-fun e!869427 () Regex!3711)

(assert (=> b!1358728 (= e!869427 e!869429)))

(declare-fun c!222978 () Bool)

(assert (=> b!1358728 (= c!222978 ((_ is ElementMatch!3711) lt!449588))))

(declare-fun d!385165 () Bool)

(declare-fun lt!450016 () Regex!3711)

(assert (=> d!385165 (validRegex!1611 lt!450016)))

(assert (=> d!385165 (= lt!450016 e!869427)))

(declare-fun c!222975 () Bool)

(assert (=> d!385165 (= c!222975 (or ((_ is EmptyExpr!3711) lt!449588) ((_ is EmptyLang!3711) lt!449588)))))

(assert (=> d!385165 (validRegex!1611 lt!449588)))

(assert (=> d!385165 (= (derivativeStep!948 lt!449588 (head!2437 lt!449594)) lt!450016)))

(declare-fun b!1358727 () Bool)

(assert (=> b!1358727 (= c!222979 ((_ is Union!3711) lt!449588))))

(assert (=> b!1358727 (= e!869429 e!869431)))

(declare-fun b!1358729 () Bool)

(assert (=> b!1358729 (= e!869427 EmptyLang!3711)))

(declare-fun b!1358730 () Bool)

(assert (=> b!1358730 (= e!869431 (Union!3711 call!91332 call!91331))))

(assert (= (and d!385165 c!222975) b!1358729))

(assert (= (and d!385165 (not c!222975)) b!1358728))

(assert (= (and b!1358728 c!222978) b!1358724))

(assert (= (and b!1358728 (not c!222978)) b!1358727))

(assert (= (and b!1358727 c!222979) b!1358730))

(assert (= (and b!1358727 (not c!222979)) b!1358725))

(assert (= (and b!1358725 c!222977) b!1358723))

(assert (= (and b!1358725 (not c!222977)) b!1358722))

(assert (= (and b!1358722 c!222976) b!1358726))

(assert (= (and b!1358722 (not c!222976)) b!1358721))

(assert (= (or b!1358726 b!1358721) bm!91327))

(assert (= (or b!1358723 bm!91327) bm!91328))

(assert (= (or b!1358730 bm!91328) bm!91326))

(assert (= (or b!1358730 b!1358726) bm!91329))

(assert (=> bm!91326 m!1520925))

(declare-fun m!1521853 () Bool)

(assert (=> bm!91326 m!1521853))

(declare-fun m!1521855 () Bool)

(assert (=> b!1358722 m!1521855))

(assert (=> bm!91329 m!1520925))

(declare-fun m!1521857 () Bool)

(assert (=> bm!91329 m!1521857))

(declare-fun m!1521859 () Bool)

(assert (=> d!385165 m!1521859))

(assert (=> d!385165 m!1520405))

(assert (=> b!1358018 d!385165))

(declare-fun d!385189 () Bool)

(assert (=> d!385189 (= (head!2437 lt!449594) (h!19236 lt!449594))))

(assert (=> b!1358018 d!385189))

(declare-fun d!385191 () Bool)

(assert (=> d!385191 (= (tail!1961 lt!449594) (t!120440 lt!449594))))

(assert (=> b!1358018 d!385191))

(declare-fun d!385193 () Bool)

(declare-fun lt!450021 () Int)

(assert (=> d!385193 (>= lt!450021 0)))

(declare-fun e!869436 () Int)

(assert (=> d!385193 (= lt!450021 e!869436)))

(declare-fun c!222982 () Bool)

(assert (=> d!385193 (= c!222982 ((_ is Nil!13838) (_1!7595 lt!449738)))))

(assert (=> d!385193 (= (size!11330 (_1!7595 lt!449738)) lt!450021)))

(declare-fun b!1358737 () Bool)

(assert (=> b!1358737 (= e!869436 0)))

(declare-fun b!1358738 () Bool)

(assert (=> b!1358738 (= e!869436 (+ 1 (size!11330 (t!120443 (_1!7595 lt!449738)))))))

(assert (= (and d!385193 c!222982) b!1358737))

(assert (= (and d!385193 (not c!222982)) b!1358738))

(declare-fun m!1521861 () Bool)

(assert (=> b!1358738 m!1521861))

(assert (=> d!384769 d!385193))

(declare-fun b!1358739 () Bool)

(declare-fun e!869438 () Option!2652)

(declare-fun lt!450026 () Option!2652)

(declare-fun lt!450025 () Option!2652)

(assert (=> b!1358739 (= e!869438 (ite (and ((_ is None!2651) lt!450026) ((_ is None!2651) lt!450025)) None!2651 (ite ((_ is None!2651) lt!450025) lt!450026 (ite ((_ is None!2651) lt!450026) lt!450025 (ite (>= (size!11319 (_1!7594 (v!21393 lt!450026))) (size!11319 (_1!7594 (v!21393 lt!450025)))) lt!450026 lt!450025)))))))

(declare-fun call!91335 () Option!2652)

(assert (=> b!1358739 (= lt!450026 call!91335)))

(assert (=> b!1358739 (= lt!450025 (maxPrefix!1074 thiss!19762 (t!120441 rules!2550) (list!5307 lt!449596)))))

(declare-fun b!1358740 () Bool)

(assert (=> b!1358740 (= e!869438 call!91335)))

(declare-fun d!385195 () Bool)

(declare-fun e!869439 () Bool)

(assert (=> d!385195 e!869439))

(declare-fun res!612320 () Bool)

(assert (=> d!385195 (=> res!612320 e!869439)))

(declare-fun lt!450024 () Option!2652)

(assert (=> d!385195 (= res!612320 (isEmpty!8310 lt!450024))))

(assert (=> d!385195 (= lt!450024 e!869438)))

(declare-fun c!222983 () Bool)

(assert (=> d!385195 (= c!222983 (and ((_ is Cons!13836) rules!2550) ((_ is Nil!13836) (t!120441 rules!2550))))))

(declare-fun lt!450022 () Unit!19983)

(declare-fun lt!450023 () Unit!19983)

(assert (=> d!385195 (= lt!450022 lt!450023)))

(assert (=> d!385195 (isPrefix!1120 (list!5307 lt!449596) (list!5307 lt!449596))))

(assert (=> d!385195 (= lt!450023 (lemmaIsPrefixRefl!782 (list!5307 lt!449596) (list!5307 lt!449596)))))

(assert (=> d!385195 (rulesValidInductive!761 thiss!19762 rules!2550)))

(assert (=> d!385195 (= (maxPrefix!1074 thiss!19762 rules!2550 (list!5307 lt!449596)) lt!450024)))

(declare-fun b!1358741 () Bool)

(declare-fun e!869437 () Bool)

(assert (=> b!1358741 (= e!869437 (contains!2569 rules!2550 (rule!4146 (_1!7594 (get!4332 lt!450024)))))))

(declare-fun b!1358742 () Bool)

(assert (=> b!1358742 (= e!869439 e!869437)))

(declare-fun res!612315 () Bool)

(assert (=> b!1358742 (=> (not res!612315) (not e!869437))))

(assert (=> b!1358742 (= res!612315 (isDefined!2208 lt!450024))))

(declare-fun b!1358743 () Bool)

(declare-fun res!612321 () Bool)

(assert (=> b!1358743 (=> (not res!612321) (not e!869437))))

(assert (=> b!1358743 (= res!612321 (= (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!450024)))) (originalCharacters!3259 (_1!7594 (get!4332 lt!450024)))))))

(declare-fun b!1358744 () Bool)

(declare-fun res!612318 () Bool)

(assert (=> b!1358744 (=> (not res!612318) (not e!869437))))

(assert (=> b!1358744 (= res!612318 (= (++!3562 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!450024)))) (_2!7594 (get!4332 lt!450024))) (list!5307 lt!449596)))))

(declare-fun bm!91330 () Bool)

(assert (=> bm!91330 (= call!91335 (maxPrefixOneRule!608 thiss!19762 (h!19237 rules!2550) (list!5307 lt!449596)))))

(declare-fun b!1358745 () Bool)

(declare-fun res!612316 () Bool)

(assert (=> b!1358745 (=> (not res!612316) (not e!869437))))

(assert (=> b!1358745 (= res!612316 (< (size!11328 (_2!7594 (get!4332 lt!450024))) (size!11328 (list!5307 lt!449596))))))

(declare-fun b!1358746 () Bool)

(declare-fun res!612317 () Bool)

(assert (=> b!1358746 (=> (not res!612317) (not e!869437))))

(assert (=> b!1358746 (= res!612317 (= (value!77947 (_1!7594 (get!4332 lt!450024))) (apply!3352 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!450024)))) (seqFromList!1626 (originalCharacters!3259 (_1!7594 (get!4332 lt!450024)))))))))

(declare-fun b!1358747 () Bool)

(declare-fun res!612319 () Bool)

(assert (=> b!1358747 (=> (not res!612319) (not e!869437))))

(assert (=> b!1358747 (= res!612319 (matchR!1704 (regex!2397 (rule!4146 (_1!7594 (get!4332 lt!450024)))) (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!450024))))))))

(assert (= (and d!385195 c!222983) b!1358740))

(assert (= (and d!385195 (not c!222983)) b!1358739))

(assert (= (or b!1358740 b!1358739) bm!91330))

(assert (= (and d!385195 (not res!612320)) b!1358742))

(assert (= (and b!1358742 res!612315) b!1358743))

(assert (= (and b!1358743 res!612321) b!1358745))

(assert (= (and b!1358745 res!612316) b!1358744))

(assert (= (and b!1358744 res!612318) b!1358746))

(assert (= (and b!1358746 res!612317) b!1358747))

(assert (= (and b!1358747 res!612319) b!1358741))

(declare-fun m!1521875 () Bool)

(assert (=> b!1358746 m!1521875))

(declare-fun m!1521877 () Bool)

(assert (=> b!1358746 m!1521877))

(assert (=> b!1358746 m!1521877))

(declare-fun m!1521879 () Bool)

(assert (=> b!1358746 m!1521879))

(declare-fun m!1521881 () Bool)

(assert (=> b!1358742 m!1521881))

(assert (=> b!1358739 m!1520129))

(declare-fun m!1521885 () Bool)

(assert (=> b!1358739 m!1521885))

(assert (=> b!1358747 m!1521875))

(declare-fun m!1521889 () Bool)

(assert (=> b!1358747 m!1521889))

(assert (=> b!1358747 m!1521889))

(declare-fun m!1521891 () Bool)

(assert (=> b!1358747 m!1521891))

(assert (=> b!1358747 m!1521891))

(declare-fun m!1521897 () Bool)

(assert (=> b!1358747 m!1521897))

(assert (=> b!1358741 m!1521875))

(declare-fun m!1521899 () Bool)

(assert (=> b!1358741 m!1521899))

(assert (=> b!1358743 m!1521875))

(assert (=> b!1358743 m!1521889))

(assert (=> b!1358743 m!1521889))

(assert (=> b!1358743 m!1521891))

(declare-fun m!1521901 () Bool)

(assert (=> d!385195 m!1521901))

(assert (=> d!385195 m!1520129))

(assert (=> d!385195 m!1520129))

(declare-fun m!1521903 () Bool)

(assert (=> d!385195 m!1521903))

(assert (=> d!385195 m!1520129))

(assert (=> d!385195 m!1520129))

(declare-fun m!1521905 () Bool)

(assert (=> d!385195 m!1521905))

(assert (=> d!385195 m!1520849))

(assert (=> b!1358744 m!1521875))

(assert (=> b!1358744 m!1521889))

(assert (=> b!1358744 m!1521889))

(assert (=> b!1358744 m!1521891))

(assert (=> b!1358744 m!1521891))

(declare-fun m!1521919 () Bool)

(assert (=> b!1358744 m!1521919))

(assert (=> b!1358745 m!1521875))

(declare-fun m!1521921 () Bool)

(assert (=> b!1358745 m!1521921))

(assert (=> b!1358745 m!1520129))

(assert (=> b!1358745 m!1520683))

(assert (=> bm!91330 m!1520129))

(declare-fun m!1521923 () Bool)

(assert (=> bm!91330 m!1521923))

(assert (=> d!384769 d!385195))

(declare-fun d!385209 () Bool)

(assert (=> d!385209 (= (isEmpty!8306 (originalCharacters!3259 t2!34)) ((_ is Nil!13835) (originalCharacters!3259 t2!34)))))

(assert (=> d!384827 d!385209))

(declare-fun d!385211 () Bool)

(assert (=> d!385211 (= (isEmpty!8306 (list!5307 (_2!7593 lt!449583))) ((_ is Nil!13835) (list!5307 (_2!7593 lt!449583))))))

(assert (=> d!384829 d!385211))

(declare-fun d!385213 () Bool)

(assert (=> d!385213 (= (list!5307 (_2!7593 lt!449583)) (list!5311 (c!222694 (_2!7593 lt!449583))))))

(declare-fun bs!334150 () Bool)

(assert (= bs!334150 d!385213))

(declare-fun m!1521925 () Bool)

(assert (=> bs!334150 m!1521925))

(assert (=> d!384829 d!385213))

(declare-fun d!385215 () Bool)

(declare-fun lt!450033 () Bool)

(assert (=> d!385215 (= lt!450033 (isEmpty!8306 (list!5311 (c!222694 (_2!7593 lt!449583)))))))

(assert (=> d!385215 (= lt!450033 (= (size!11329 (c!222694 (_2!7593 lt!449583))) 0))))

(assert (=> d!385215 (= (isEmpty!8308 (c!222694 (_2!7593 lt!449583))) lt!450033)))

(declare-fun bs!334151 () Bool)

(assert (= bs!334151 d!385215))

(assert (=> bs!334151 m!1521925))

(assert (=> bs!334151 m!1521925))

(declare-fun m!1521933 () Bool)

(assert (=> bs!334151 m!1521933))

(declare-fun m!1521935 () Bool)

(assert (=> bs!334151 m!1521935))

(assert (=> d!384829 d!385215))

(declare-fun b!1358763 () Bool)

(declare-fun res!612328 () Bool)

(declare-fun e!869452 () Bool)

(assert (=> b!1358763 (=> (not res!612328) (not e!869452))))

(declare-fun call!91340 () Bool)

(assert (=> b!1358763 (= res!612328 (not call!91340))))

(declare-fun b!1358764 () Bool)

(declare-fun e!869450 () Bool)

(assert (=> b!1358764 (= e!869450 (matchR!1704 (derivativeStep!948 lt!449588 (head!2437 lt!449825)) (tail!1961 lt!449825)))))

(declare-fun b!1358765 () Bool)

(declare-fun res!612330 () Bool)

(declare-fun e!869451 () Bool)

(assert (=> b!1358765 (=> res!612330 e!869451)))

(assert (=> b!1358765 (= res!612330 e!869452)))

(declare-fun res!612329 () Bool)

(assert (=> b!1358765 (=> (not res!612329) (not e!869452))))

(declare-fun lt!450034 () Bool)

(assert (=> b!1358765 (= res!612329 lt!450034)))

(declare-fun b!1358766 () Bool)

(assert (=> b!1358766 (= e!869452 (= (head!2437 lt!449825) (c!222695 lt!449588)))))

(declare-fun b!1358767 () Bool)

(assert (=> b!1358767 (= e!869450 (nullable!1190 lt!449588))))

(declare-fun bm!91335 () Bool)

(assert (=> bm!91335 (= call!91340 (isEmpty!8306 lt!449825))))

(declare-fun d!385223 () Bool)

(declare-fun e!869449 () Bool)

(assert (=> d!385223 e!869449))

(declare-fun c!222991 () Bool)

(assert (=> d!385223 (= c!222991 ((_ is EmptyExpr!3711) lt!449588))))

(assert (=> d!385223 (= lt!450034 e!869450)))

(declare-fun c!222992 () Bool)

(assert (=> d!385223 (= c!222992 (isEmpty!8306 lt!449825))))

(assert (=> d!385223 (validRegex!1611 lt!449588)))

(assert (=> d!385223 (= (matchR!1704 lt!449588 lt!449825) lt!450034)))

(declare-fun b!1358768 () Bool)

(declare-fun e!869453 () Bool)

(assert (=> b!1358768 (= e!869453 (not lt!450034))))

(declare-fun b!1358769 () Bool)

(declare-fun e!869454 () Bool)

(assert (=> b!1358769 (= e!869451 e!869454)))

(declare-fun res!612331 () Bool)

(assert (=> b!1358769 (=> (not res!612331) (not e!869454))))

(assert (=> b!1358769 (= res!612331 (not lt!450034))))

(declare-fun b!1358770 () Bool)

(declare-fun e!869455 () Bool)

(assert (=> b!1358770 (= e!869454 e!869455)))

(declare-fun res!612325 () Bool)

(assert (=> b!1358770 (=> res!612325 e!869455)))

(assert (=> b!1358770 (= res!612325 call!91340)))

(declare-fun b!1358771 () Bool)

(declare-fun res!612332 () Bool)

(assert (=> b!1358771 (=> res!612332 e!869451)))

(assert (=> b!1358771 (= res!612332 (not ((_ is ElementMatch!3711) lt!449588)))))

(assert (=> b!1358771 (= e!869453 e!869451)))

(declare-fun b!1358772 () Bool)

(declare-fun res!612326 () Bool)

(assert (=> b!1358772 (=> res!612326 e!869455)))

(assert (=> b!1358772 (= res!612326 (not (isEmpty!8306 (tail!1961 lt!449825))))))

(declare-fun b!1358773 () Bool)

(assert (=> b!1358773 (= e!869455 (not (= (head!2437 lt!449825) (c!222695 lt!449588))))))

(declare-fun b!1358774 () Bool)

(assert (=> b!1358774 (= e!869449 (= lt!450034 call!91340))))

(declare-fun b!1358775 () Bool)

(declare-fun res!612327 () Bool)

(assert (=> b!1358775 (=> (not res!612327) (not e!869452))))

(assert (=> b!1358775 (= res!612327 (isEmpty!8306 (tail!1961 lt!449825)))))

(declare-fun b!1358776 () Bool)

(assert (=> b!1358776 (= e!869449 e!869453)))

(declare-fun c!222990 () Bool)

(assert (=> b!1358776 (= c!222990 ((_ is EmptyLang!3711) lt!449588))))

(assert (= (and d!385223 c!222992) b!1358767))

(assert (= (and d!385223 (not c!222992)) b!1358764))

(assert (= (and d!385223 c!222991) b!1358774))

(assert (= (and d!385223 (not c!222991)) b!1358776))

(assert (= (and b!1358776 c!222990) b!1358768))

(assert (= (and b!1358776 (not c!222990)) b!1358771))

(assert (= (and b!1358771 (not res!612332)) b!1358765))

(assert (= (and b!1358765 res!612329) b!1358763))

(assert (= (and b!1358763 res!612328) b!1358775))

(assert (= (and b!1358775 res!612327) b!1358766))

(assert (= (and b!1358765 (not res!612330)) b!1358769))

(assert (= (and b!1358769 res!612331) b!1358770))

(assert (= (and b!1358770 (not res!612325)) b!1358772))

(assert (= (and b!1358772 (not res!612326)) b!1358773))

(assert (= (or b!1358774 b!1358763 b!1358770) bm!91335))

(declare-fun m!1521937 () Bool)

(assert (=> b!1358766 m!1521937))

(assert (=> b!1358773 m!1521937))

(declare-fun m!1521939 () Bool)

(assert (=> b!1358775 m!1521939))

(assert (=> b!1358775 m!1521939))

(declare-fun m!1521941 () Bool)

(assert (=> b!1358775 m!1521941))

(assert (=> b!1358767 m!1520397))

(declare-fun m!1521943 () Bool)

(assert (=> bm!91335 m!1521943))

(assert (=> b!1358772 m!1521939))

(assert (=> b!1358772 m!1521939))

(assert (=> b!1358772 m!1521941))

(assert (=> b!1358764 m!1521937))

(assert (=> b!1358764 m!1521937))

(declare-fun m!1521945 () Bool)

(assert (=> b!1358764 m!1521945))

(assert (=> b!1358764 m!1521939))

(assert (=> b!1358764 m!1521945))

(assert (=> b!1358764 m!1521939))

(declare-fun m!1521947 () Bool)

(assert (=> b!1358764 m!1521947))

(assert (=> d!385223 m!1521943))

(assert (=> d!385223 m!1520405))

(assert (=> bs!334088 d!385223))

(declare-fun d!385225 () Bool)

(declare-fun lt!450040 () Int)

(assert (=> d!385225 (>= lt!450040 0)))

(declare-fun e!869467 () Int)

(assert (=> d!385225 (= lt!450040 e!869467)))

(declare-fun c!222995 () Bool)

(assert (=> d!385225 (= c!222995 ((_ is Nil!13837) lt!449756))))

(assert (=> d!385225 (= (size!11331 lt!449756) lt!450040)))

(declare-fun b!1358793 () Bool)

(assert (=> b!1358793 (= e!869467 0)))

(declare-fun b!1358794 () Bool)

(assert (=> b!1358794 (= e!869467 (+ 1 (size!11331 (t!120442 lt!449756))))))

(assert (= (and d!385225 c!222995) b!1358793))

(assert (= (and d!385225 (not c!222995)) b!1358794))

(declare-fun m!1521953 () Bool)

(assert (=> b!1358794 m!1521953))

(assert (=> d!384777 d!385225))

(declare-fun d!385229 () Bool)

(declare-fun lt!450043 () Int)

(assert (=> d!385229 (>= lt!450043 0)))

(declare-fun e!869474 () Int)

(assert (=> d!385229 (= lt!450043 e!869474)))

(declare-fun c!223002 () Bool)

(assert (=> d!385229 (= c!223002 ((_ is Nil!13836) rules!2550))))

(assert (=> d!385229 (= (size!11332 rules!2550) lt!450043)))

(declare-fun b!1358807 () Bool)

(assert (=> b!1358807 (= e!869474 0)))

(declare-fun b!1358808 () Bool)

(assert (=> b!1358808 (= e!869474 (+ 1 (size!11332 (t!120441 rules!2550))))))

(assert (= (and d!385229 c!223002) b!1358807))

(assert (= (and d!385229 (not c!223002)) b!1358808))

(assert (=> b!1358808 m!1521597))

(assert (=> d!384777 d!385229))

(declare-fun d!385231 () Bool)

(declare-fun lt!450044 () Int)

(assert (=> d!385231 (>= lt!450044 0)))

(declare-fun e!869475 () Int)

(assert (=> d!385231 (= lt!450044 e!869475)))

(declare-fun c!223003 () Bool)

(assert (=> d!385231 (= c!223003 ((_ is Nil!13838) (_1!7595 lt!449768)))))

(assert (=> d!385231 (= (size!11330 (_1!7595 lt!449768)) lt!450044)))

(declare-fun b!1358809 () Bool)

(assert (=> b!1358809 (= e!869475 0)))

(declare-fun b!1358810 () Bool)

(assert (=> b!1358810 (= e!869475 (+ 1 (size!11330 (t!120443 (_1!7595 lt!449768)))))))

(assert (= (and d!385231 c!223003) b!1358809))

(assert (= (and d!385231 (not c!223003)) b!1358810))

(declare-fun m!1521955 () Bool)

(assert (=> b!1358810 m!1521955))

(assert (=> d!384785 d!385231))

(declare-fun b!1358811 () Bool)

(declare-fun e!869477 () Option!2652)

(declare-fun lt!450049 () Option!2652)

(declare-fun lt!450048 () Option!2652)

(assert (=> b!1358811 (= e!869477 (ite (and ((_ is None!2651) lt!450049) ((_ is None!2651) lt!450048)) None!2651 (ite ((_ is None!2651) lt!450048) lt!450049 (ite ((_ is None!2651) lt!450049) lt!450048 (ite (>= (size!11319 (_1!7594 (v!21393 lt!450049))) (size!11319 (_1!7594 (v!21393 lt!450048)))) lt!450049 lt!450048)))))))

(declare-fun call!91341 () Option!2652)

(assert (=> b!1358811 (= lt!450049 call!91341)))

(assert (=> b!1358811 (= lt!450048 (maxPrefix!1074 thiss!19762 (t!120441 rules!2550) (list!5307 lt!449584)))))

(declare-fun b!1358812 () Bool)

(assert (=> b!1358812 (= e!869477 call!91341)))

(declare-fun d!385233 () Bool)

(declare-fun e!869478 () Bool)

(assert (=> d!385233 e!869478))

(declare-fun res!612350 () Bool)

(assert (=> d!385233 (=> res!612350 e!869478)))

(declare-fun lt!450047 () Option!2652)

(assert (=> d!385233 (= res!612350 (isEmpty!8310 lt!450047))))

(assert (=> d!385233 (= lt!450047 e!869477)))

(declare-fun c!223004 () Bool)

(assert (=> d!385233 (= c!223004 (and ((_ is Cons!13836) rules!2550) ((_ is Nil!13836) (t!120441 rules!2550))))))

(declare-fun lt!450045 () Unit!19983)

(declare-fun lt!450046 () Unit!19983)

(assert (=> d!385233 (= lt!450045 lt!450046)))

(assert (=> d!385233 (isPrefix!1120 (list!5307 lt!449584) (list!5307 lt!449584))))

(assert (=> d!385233 (= lt!450046 (lemmaIsPrefixRefl!782 (list!5307 lt!449584) (list!5307 lt!449584)))))

(assert (=> d!385233 (rulesValidInductive!761 thiss!19762 rules!2550)))

(assert (=> d!385233 (= (maxPrefix!1074 thiss!19762 rules!2550 (list!5307 lt!449584)) lt!450047)))

(declare-fun b!1358813 () Bool)

(declare-fun e!869476 () Bool)

(assert (=> b!1358813 (= e!869476 (contains!2569 rules!2550 (rule!4146 (_1!7594 (get!4332 lt!450047)))))))

(declare-fun b!1358814 () Bool)

(assert (=> b!1358814 (= e!869478 e!869476)))

(declare-fun res!612345 () Bool)

(assert (=> b!1358814 (=> (not res!612345) (not e!869476))))

(assert (=> b!1358814 (= res!612345 (isDefined!2208 lt!450047))))

(declare-fun b!1358815 () Bool)

(declare-fun res!612351 () Bool)

(assert (=> b!1358815 (=> (not res!612351) (not e!869476))))

(assert (=> b!1358815 (= res!612351 (= (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!450047)))) (originalCharacters!3259 (_1!7594 (get!4332 lt!450047)))))))

(declare-fun b!1358816 () Bool)

(declare-fun res!612348 () Bool)

(assert (=> b!1358816 (=> (not res!612348) (not e!869476))))

(assert (=> b!1358816 (= res!612348 (= (++!3562 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!450047)))) (_2!7594 (get!4332 lt!450047))) (list!5307 lt!449584)))))

(declare-fun bm!91336 () Bool)

(assert (=> bm!91336 (= call!91341 (maxPrefixOneRule!608 thiss!19762 (h!19237 rules!2550) (list!5307 lt!449584)))))

(declare-fun b!1358817 () Bool)

(declare-fun res!612346 () Bool)

(assert (=> b!1358817 (=> (not res!612346) (not e!869476))))

(assert (=> b!1358817 (= res!612346 (< (size!11328 (_2!7594 (get!4332 lt!450047))) (size!11328 (list!5307 lt!449584))))))

(declare-fun b!1358818 () Bool)

(declare-fun res!612347 () Bool)

(assert (=> b!1358818 (=> (not res!612347) (not e!869476))))

(assert (=> b!1358818 (= res!612347 (= (value!77947 (_1!7594 (get!4332 lt!450047))) (apply!3352 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!450047)))) (seqFromList!1626 (originalCharacters!3259 (_1!7594 (get!4332 lt!450047)))))))))

(declare-fun b!1358819 () Bool)

(declare-fun res!612349 () Bool)

(assert (=> b!1358819 (=> (not res!612349) (not e!869476))))

(assert (=> b!1358819 (= res!612349 (matchR!1704 (regex!2397 (rule!4146 (_1!7594 (get!4332 lt!450047)))) (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!450047))))))))

(assert (= (and d!385233 c!223004) b!1358812))

(assert (= (and d!385233 (not c!223004)) b!1358811))

(assert (= (or b!1358812 b!1358811) bm!91336))

(assert (= (and d!385233 (not res!612350)) b!1358814))

(assert (= (and b!1358814 res!612345) b!1358815))

(assert (= (and b!1358815 res!612351) b!1358817))

(assert (= (and b!1358817 res!612346) b!1358816))

(assert (= (and b!1358816 res!612348) b!1358818))

(assert (= (and b!1358818 res!612347) b!1358819))

(assert (= (and b!1358819 res!612349) b!1358813))

(declare-fun m!1521967 () Bool)

(assert (=> b!1358818 m!1521967))

(declare-fun m!1521971 () Bool)

(assert (=> b!1358818 m!1521971))

(assert (=> b!1358818 m!1521971))

(declare-fun m!1521977 () Bool)

(assert (=> b!1358818 m!1521977))

(declare-fun m!1521979 () Bool)

(assert (=> b!1358814 m!1521979))

(assert (=> b!1358811 m!1520225))

(declare-fun m!1521983 () Bool)

(assert (=> b!1358811 m!1521983))

(assert (=> b!1358819 m!1521967))

(declare-fun m!1521985 () Bool)

(assert (=> b!1358819 m!1521985))

(assert (=> b!1358819 m!1521985))

(declare-fun m!1521987 () Bool)

(assert (=> b!1358819 m!1521987))

(assert (=> b!1358819 m!1521987))

(declare-fun m!1521991 () Bool)

(assert (=> b!1358819 m!1521991))

(assert (=> b!1358813 m!1521967))

(declare-fun m!1521993 () Bool)

(assert (=> b!1358813 m!1521993))

(assert (=> b!1358815 m!1521967))

(assert (=> b!1358815 m!1521985))

(assert (=> b!1358815 m!1521985))

(assert (=> b!1358815 m!1521987))

(declare-fun m!1521995 () Bool)

(assert (=> d!385233 m!1521995))

(assert (=> d!385233 m!1520225))

(assert (=> d!385233 m!1520225))

(declare-fun m!1521997 () Bool)

(assert (=> d!385233 m!1521997))

(assert (=> d!385233 m!1520225))

(assert (=> d!385233 m!1520225))

(declare-fun m!1521999 () Bool)

(assert (=> d!385233 m!1521999))

(assert (=> d!385233 m!1520849))

(assert (=> b!1358816 m!1521967))

(assert (=> b!1358816 m!1521985))

(assert (=> b!1358816 m!1521985))

(assert (=> b!1358816 m!1521987))

(assert (=> b!1358816 m!1521987))

(declare-fun m!1522001 () Bool)

(assert (=> b!1358816 m!1522001))

(assert (=> b!1358817 m!1521967))

(declare-fun m!1522003 () Bool)

(assert (=> b!1358817 m!1522003))

(assert (=> b!1358817 m!1520225))

(assert (=> b!1358817 m!1520759))

(assert (=> bm!91336 m!1520225))

(declare-fun m!1522005 () Bool)

(assert (=> bm!91336 m!1522005))

(assert (=> d!384785 d!385233))

(declare-fun d!385243 () Bool)

(declare-fun lt!450057 () Int)

(assert (=> d!385243 (= lt!450057 (size!11328 (list!5307 (_2!7593 lt!449707))))))

(assert (=> d!385243 (= lt!450057 (size!11329 (c!222694 (_2!7593 lt!449707))))))

(assert (=> d!385243 (= (size!11320 (_2!7593 lt!449707)) lt!450057)))

(declare-fun bs!334154 () Bool)

(assert (= bs!334154 d!385243))

(assert (=> bs!334154 m!1520587))

(assert (=> bs!334154 m!1520587))

(declare-fun m!1522007 () Bool)

(assert (=> bs!334154 m!1522007))

(declare-fun m!1522009 () Bool)

(assert (=> bs!334154 m!1522009))

(assert (=> b!1357729 d!385243))

(declare-fun d!385245 () Bool)

(declare-fun lt!450058 () Int)

(assert (=> d!385245 (= lt!450058 (size!11328 (list!5307 lt!449596)))))

(assert (=> d!385245 (= lt!450058 (size!11329 (c!222694 lt!449596)))))

(assert (=> d!385245 (= (size!11320 lt!449596) lt!450058)))

(declare-fun bs!334155 () Bool)

(assert (= bs!334155 d!385245))

(assert (=> bs!334155 m!1520129))

(assert (=> bs!334155 m!1520129))

(assert (=> bs!334155 m!1520683))

(declare-fun m!1522015 () Bool)

(assert (=> bs!334155 m!1522015))

(assert (=> b!1357729 d!385245))

(declare-fun d!385247 () Bool)

(assert (=> d!385247 true))

(assert (=> d!385247 true))

(declare-fun res!612357 () Bool)

(assert (=> d!385247 (= (choose!8359 lambda!57484) res!612357)))

(assert (=> d!384833 d!385247))

(declare-fun d!385251 () Bool)

(assert (=> d!385251 (= (list!5307 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34))) (list!5311 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34)))))))

(declare-fun bs!334156 () Bool)

(assert (= bs!334156 d!385251))

(declare-fun m!1522045 () Bool)

(assert (=> bs!334156 m!1522045))

(assert (=> b!1358002 d!385251))

(declare-fun d!385253 () Bool)

(declare-fun lt!450061 () Bool)

(assert (=> d!385253 (= lt!450061 (isEmpty!8309 (list!5306 (_1!7593 lt!449826))))))

(assert (=> d!385253 (= lt!450061 (isEmpty!8313 (c!222696 (_1!7593 lt!449826))))))

(assert (=> d!385253 (= (isEmpty!8307 (_1!7593 lt!449826)) lt!450061)))

(declare-fun bs!334157 () Bool)

(assert (= bs!334157 d!385253))

(assert (=> bs!334157 m!1521017))

(assert (=> bs!334157 m!1521017))

(declare-fun m!1522049 () Bool)

(assert (=> bs!334157 m!1522049))

(declare-fun m!1522051 () Bool)

(assert (=> bs!334157 m!1522051))

(assert (=> b!1358081 d!385253))

(declare-fun d!385259 () Bool)

(declare-fun lt!450062 () Int)

(assert (=> d!385259 (>= lt!450062 0)))

(declare-fun e!869487 () Int)

(assert (=> d!385259 (= lt!450062 e!869487)))

(declare-fun c!223009 () Bool)

(assert (=> d!385259 (= c!223009 ((_ is Nil!13835) (originalCharacters!3259 t2!34)))))

(assert (=> d!385259 (= (size!11328 (originalCharacters!3259 t2!34)) lt!450062)))

(declare-fun b!1358832 () Bool)

(assert (=> b!1358832 (= e!869487 0)))

(declare-fun b!1358833 () Bool)

(assert (=> b!1358833 (= e!869487 (+ 1 (size!11328 (t!120440 (originalCharacters!3259 t2!34)))))))

(assert (= (and d!385259 c!223009) b!1358832))

(assert (= (and d!385259 (not c!223009)) b!1358833))

(declare-fun m!1522053 () Bool)

(assert (=> b!1358833 m!1522053))

(assert (=> b!1358003 d!385259))

(declare-fun bs!334170 () Bool)

(declare-fun d!385261 () Bool)

(assert (= bs!334170 (and d!385261 b!1357435)))

(declare-fun lambda!57562 () Int)

(assert (=> bs!334170 (= lambda!57562 lambda!57485)))

(declare-fun bs!334172 () Bool)

(assert (= bs!334172 (and d!385261 d!384851)))

(assert (=> bs!334172 (= lambda!57562 lambda!57531)))

(declare-fun lambda!57563 () Int)

(assert (=> bs!334170 (not (= lambda!57563 lambda!57486))))

(declare-fun bs!334175 () Bool)

(assert (= bs!334175 (and d!385261 d!384817)))

(assert (=> bs!334175 (not (= lambda!57563 lambda!57513))))

(declare-fun bs!334176 () Bool)

(assert (= bs!334176 (and d!385261 d!384819)))

(assert (=> bs!334176 (= lambda!57563 lambda!57518)))

(declare-fun bs!334177 () Bool)

(assert (= bs!334177 (and d!385261 d!384815)))

(assert (=> bs!334177 (not (= lambda!57563 lambda!57512))))

(assert (=> bs!334176 (not (= lambda!57563 lambda!57519))))

(assert (=> d!385261 (forall!3379 (map!3056 rules!2550 lambda!57562) lambda!57563)))

(declare-fun lt!450070 () Unit!19983)

(declare-fun e!869490 () Unit!19983)

(assert (=> d!385261 (= lt!450070 e!869490)))

(declare-fun c!223012 () Bool)

(assert (=> d!385261 (= c!223012 ((_ is Nil!13836) rules!2550))))

(assert (=> d!385261 (rulesValidInductive!761 thiss!19762 rules!2550)))

(assert (=> d!385261 (= (lemma!119 rules!2550 thiss!19762 rules!2550) lt!450070)))

(declare-fun b!1358842 () Bool)

(declare-fun Unit!19991 () Unit!19983)

(assert (=> b!1358842 (= e!869490 Unit!19991)))

(declare-fun b!1358843 () Bool)

(declare-fun Unit!19992 () Unit!19983)

(assert (=> b!1358843 (= e!869490 Unit!19992)))

(declare-fun lt!450071 () Unit!19983)

(assert (=> b!1358843 (= lt!450071 (lemma!119 rules!2550 thiss!19762 (t!120441 rules!2550)))))

(assert (= (and d!385261 c!223012) b!1358842))

(assert (= (and d!385261 (not c!223012)) b!1358843))

(declare-fun m!1522069 () Bool)

(assert (=> d!385261 m!1522069))

(assert (=> d!385261 m!1522069))

(declare-fun m!1522071 () Bool)

(assert (=> d!385261 m!1522071))

(assert (=> d!385261 m!1520849))

(declare-fun m!1522073 () Bool)

(assert (=> b!1358843 m!1522073))

(assert (=> d!384851 d!385261))

(declare-fun bs!334179 () Bool)

(declare-fun d!385271 () Bool)

(assert (= bs!334179 (and d!385271 b!1357435)))

(declare-fun lambda!57566 () Int)

(assert (=> bs!334179 (not (= lambda!57566 lambda!57486))))

(declare-fun bs!334180 () Bool)

(assert (= bs!334180 (and d!385271 d!384817)))

(assert (=> bs!334180 (not (= lambda!57566 lambda!57513))))

(declare-fun bs!334181 () Bool)

(assert (= bs!334181 (and d!385271 d!384819)))

(assert (=> bs!334181 (= lambda!57566 lambda!57518)))

(declare-fun bs!334182 () Bool)

(assert (= bs!334182 (and d!385271 d!384815)))

(assert (=> bs!334182 (not (= lambda!57566 lambda!57512))))

(assert (=> bs!334181 (not (= lambda!57566 lambda!57519))))

(declare-fun bs!334183 () Bool)

(assert (= bs!334183 (and d!385271 d!385261)))

(assert (=> bs!334183 (= lambda!57566 lambda!57563)))

(declare-fun b!1358868 () Bool)

(declare-fun e!869508 () Regex!3711)

(assert (=> b!1358868 (= e!869508 (Union!3711 (h!19238 (map!3056 rules!2550 lambda!57531)) (generalisedUnion!127 (t!120442 (map!3056 rules!2550 lambda!57531)))))))

(declare-fun lt!450077 () Regex!3711)

(declare-fun b!1358869 () Bool)

(declare-fun e!869510 () Bool)

(assert (=> b!1358869 (= e!869510 (= lt!450077 (head!2440 (map!3056 rules!2550 lambda!57531))))))

(declare-fun e!869507 () Bool)

(assert (=> d!385271 e!869507))

(declare-fun res!612364 () Bool)

(assert (=> d!385271 (=> (not res!612364) (not e!869507))))

(assert (=> d!385271 (= res!612364 (validRegex!1611 lt!450077))))

(declare-fun e!869509 () Regex!3711)

(assert (=> d!385271 (= lt!450077 e!869509)))

(declare-fun c!223026 () Bool)

(declare-fun e!869505 () Bool)

(assert (=> d!385271 (= c!223026 e!869505)))

(declare-fun res!612363 () Bool)

(assert (=> d!385271 (=> (not res!612363) (not e!869505))))

(assert (=> d!385271 (= res!612363 ((_ is Cons!13837) (map!3056 rules!2550 lambda!57531)))))

(assert (=> d!385271 (forall!3379 (map!3056 rules!2550 lambda!57531) lambda!57566)))

(assert (=> d!385271 (= (generalisedUnion!127 (map!3056 rules!2550 lambda!57531)) lt!450077)))

(declare-fun b!1358870 () Bool)

(assert (=> b!1358870 (= e!869508 EmptyLang!3711)))

(declare-fun b!1358871 () Bool)

(declare-fun isEmpty!8314 (List!13903) Bool)

(assert (=> b!1358871 (= e!869505 (isEmpty!8314 (t!120442 (map!3056 rules!2550 lambda!57531))))))

(declare-fun b!1358872 () Bool)

(declare-fun e!869506 () Bool)

(assert (=> b!1358872 (= e!869506 e!869510)))

(declare-fun c!223024 () Bool)

(declare-fun tail!1964 (List!13903) List!13903)

(assert (=> b!1358872 (= c!223024 (isEmpty!8314 (tail!1964 (map!3056 rules!2550 lambda!57531))))))

(declare-fun b!1358873 () Bool)

(declare-fun isUnion!38 (Regex!3711) Bool)

(assert (=> b!1358873 (= e!869510 (isUnion!38 lt!450077))))

(declare-fun b!1358874 () Bool)

(assert (=> b!1358874 (= e!869509 e!869508)))

(declare-fun c!223025 () Bool)

(assert (=> b!1358874 (= c!223025 ((_ is Cons!13837) (map!3056 rules!2550 lambda!57531)))))

(declare-fun b!1358875 () Bool)

(assert (=> b!1358875 (= e!869509 (h!19238 (map!3056 rules!2550 lambda!57531)))))

(declare-fun b!1358876 () Bool)

(assert (=> b!1358876 (= e!869507 e!869506)))

(declare-fun c!223023 () Bool)

(assert (=> b!1358876 (= c!223023 (isEmpty!8314 (map!3056 rules!2550 lambda!57531)))))

(declare-fun b!1358877 () Bool)

(declare-fun isEmptyLang!38 (Regex!3711) Bool)

(assert (=> b!1358877 (= e!869506 (isEmptyLang!38 lt!450077))))

(assert (= (and d!385271 res!612363) b!1358871))

(assert (= (and d!385271 c!223026) b!1358875))

(assert (= (and d!385271 (not c!223026)) b!1358874))

(assert (= (and b!1358874 c!223025) b!1358868))

(assert (= (and b!1358874 (not c!223025)) b!1358870))

(assert (= (and d!385271 res!612364) b!1358876))

(assert (= (and b!1358876 c!223023) b!1358877))

(assert (= (and b!1358876 (not c!223023)) b!1358872))

(assert (= (and b!1358872 c!223024) b!1358869))

(assert (= (and b!1358872 (not c!223024)) b!1358873))

(assert (=> b!1358876 m!1520955))

(declare-fun m!1522079 () Bool)

(assert (=> b!1358876 m!1522079))

(declare-fun m!1522081 () Bool)

(assert (=> b!1358871 m!1522081))

(declare-fun m!1522083 () Bool)

(assert (=> b!1358877 m!1522083))

(assert (=> b!1358872 m!1520955))

(declare-fun m!1522085 () Bool)

(assert (=> b!1358872 m!1522085))

(assert (=> b!1358872 m!1522085))

(declare-fun m!1522087 () Bool)

(assert (=> b!1358872 m!1522087))

(assert (=> b!1358869 m!1520955))

(declare-fun m!1522089 () Bool)

(assert (=> b!1358869 m!1522089))

(declare-fun m!1522091 () Bool)

(assert (=> d!385271 m!1522091))

(assert (=> d!385271 m!1520955))

(declare-fun m!1522093 () Bool)

(assert (=> d!385271 m!1522093))

(declare-fun m!1522095 () Bool)

(assert (=> b!1358873 m!1522095))

(declare-fun m!1522097 () Bool)

(assert (=> b!1358868 m!1522097))

(assert (=> d!384851 d!385271))

(declare-fun d!385275 () Bool)

(declare-fun lt!450078 () List!13903)

(assert (=> d!385275 (= (size!11331 lt!450078) (size!11332 rules!2550))))

(declare-fun e!869511 () List!13903)

(assert (=> d!385275 (= lt!450078 e!869511)))

(declare-fun c!223027 () Bool)

(assert (=> d!385275 (= c!223027 ((_ is Nil!13836) rules!2550))))

(assert (=> d!385275 (= (map!3056 rules!2550 lambda!57531) lt!450078)))

(declare-fun b!1358878 () Bool)

(assert (=> b!1358878 (= e!869511 Nil!13837)))

(declare-fun b!1358879 () Bool)

(assert (=> b!1358879 (= e!869511 ($colon$colon!193 (map!3056 (t!120441 rules!2550) lambda!57531) (dynLambda!6214 lambda!57531 (h!19237 rules!2550))))))

(assert (= (and d!385275 c!223027) b!1358878))

(assert (= (and d!385275 (not c!223027)) b!1358879))

(declare-fun b_lambda!41013 () Bool)

(assert (=> (not b_lambda!41013) (not b!1358879)))

(declare-fun m!1522099 () Bool)

(assert (=> d!385275 m!1522099))

(assert (=> d!385275 m!1520695))

(declare-fun m!1522101 () Bool)

(assert (=> b!1358879 m!1522101))

(declare-fun m!1522103 () Bool)

(assert (=> b!1358879 m!1522103))

(assert (=> b!1358879 m!1522101))

(assert (=> b!1358879 m!1522103))

(declare-fun m!1522105 () Bool)

(assert (=> b!1358879 m!1522105))

(assert (=> d!384851 d!385275))

(declare-fun b!1358880 () Bool)

(declare-fun res!612368 () Bool)

(declare-fun e!869512 () Bool)

(assert (=> b!1358880 (=> res!612368 e!869512)))

(assert (=> b!1358880 (= res!612368 (not ((_ is Concat!6199) lt!449767)))))

(declare-fun e!869517 () Bool)

(assert (=> b!1358880 (= e!869517 e!869512)))

(declare-fun b!1358881 () Bool)

(declare-fun res!612369 () Bool)

(declare-fun e!869518 () Bool)

(assert (=> b!1358881 (=> (not res!612369) (not e!869518))))

(declare-fun call!91343 () Bool)

(assert (=> b!1358881 (= res!612369 call!91343)))

(assert (=> b!1358881 (= e!869517 e!869518)))

(declare-fun b!1358882 () Bool)

(declare-fun e!869515 () Bool)

(assert (=> b!1358882 (= e!869515 e!869517)))

(declare-fun c!223028 () Bool)

(assert (=> b!1358882 (= c!223028 ((_ is Union!3711) lt!449767))))

(declare-fun bm!91337 () Bool)

(declare-fun call!91342 () Bool)

(assert (=> bm!91337 (= call!91342 (validRegex!1611 (ite c!223028 (regTwo!7935 lt!449767) (regTwo!7934 lt!449767))))))

(declare-fun b!1358883 () Bool)

(declare-fun e!869514 () Bool)

(assert (=> b!1358883 (= e!869514 e!869515)))

(declare-fun c!223029 () Bool)

(assert (=> b!1358883 (= c!223029 ((_ is Star!3711) lt!449767))))

(declare-fun b!1358884 () Bool)

(declare-fun e!869513 () Bool)

(assert (=> b!1358884 (= e!869515 e!869513)))

(declare-fun res!612366 () Bool)

(assert (=> b!1358884 (= res!612366 (not (nullable!1190 (reg!4040 lt!449767))))))

(assert (=> b!1358884 (=> (not res!612366) (not e!869513))))

(declare-fun b!1358885 () Bool)

(assert (=> b!1358885 (= e!869518 call!91342)))

(declare-fun b!1358886 () Bool)

(declare-fun e!869516 () Bool)

(assert (=> b!1358886 (= e!869512 e!869516)))

(declare-fun res!612367 () Bool)

(assert (=> b!1358886 (=> (not res!612367) (not e!869516))))

(assert (=> b!1358886 (= res!612367 call!91343)))

(declare-fun bm!91338 () Bool)

(declare-fun call!91344 () Bool)

(assert (=> bm!91338 (= call!91343 call!91344)))

(declare-fun bm!91339 () Bool)

(assert (=> bm!91339 (= call!91344 (validRegex!1611 (ite c!223029 (reg!4040 lt!449767) (ite c!223028 (regOne!7935 lt!449767) (regOne!7934 lt!449767)))))))

(declare-fun b!1358887 () Bool)

(assert (=> b!1358887 (= e!869516 call!91342)))

(declare-fun d!385277 () Bool)

(declare-fun res!612365 () Bool)

(assert (=> d!385277 (=> res!612365 e!869514)))

(assert (=> d!385277 (= res!612365 ((_ is ElementMatch!3711) lt!449767))))

(assert (=> d!385277 (= (validRegex!1611 lt!449767) e!869514)))

(declare-fun b!1358888 () Bool)

(assert (=> b!1358888 (= e!869513 call!91344)))

(assert (= (and d!385277 (not res!612365)) b!1358883))

(assert (= (and b!1358883 c!223029) b!1358884))

(assert (= (and b!1358883 (not c!223029)) b!1358882))

(assert (= (and b!1358884 res!612366) b!1358888))

(assert (= (and b!1358882 c!223028) b!1358881))

(assert (= (and b!1358882 (not c!223028)) b!1358880))

(assert (= (and b!1358881 res!612369) b!1358885))

(assert (= (and b!1358880 (not res!612368)) b!1358886))

(assert (= (and b!1358886 res!612367) b!1358887))

(assert (= (or b!1358881 b!1358886) bm!91338))

(assert (= (or b!1358885 b!1358887) bm!91337))

(assert (= (or b!1358888 bm!91338) bm!91339))

(declare-fun m!1522107 () Bool)

(assert (=> bm!91337 m!1522107))

(declare-fun m!1522109 () Bool)

(assert (=> b!1358884 m!1522109))

(declare-fun m!1522111 () Bool)

(assert (=> bm!91339 m!1522111))

(assert (=> bs!334092 d!385277))

(declare-fun d!385279 () Bool)

(declare-fun isBalanced!1334 (Conc!4556) Bool)

(assert (=> d!385279 (= (inv!18183 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34))) (isBalanced!1334 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34)))))))

(declare-fun bs!334184 () Bool)

(assert (= bs!334184 d!385279))

(declare-fun m!1522113 () Bool)

(assert (=> bs!334184 m!1522113))

(assert (=> tb!71319 d!385279))

(declare-fun d!385281 () Bool)

(assert (=> d!385281 true))

(declare-fun order!8389 () Int)

(declare-fun lambda!57569 () Int)

(declare-fun dynLambda!6228 (Int Int) Int)

(assert (=> d!385281 (< (dynLambda!6223 order!8387 (toValue!3652 (transformation!2397 (h!19237 rules!2550)))) (dynLambda!6228 order!8389 lambda!57569))))

(declare-fun Forall2!435 (Int) Bool)

(assert (=> d!385281 (= (equivClasses!879 (toChars!3511 (transformation!2397 (h!19237 rules!2550))) (toValue!3652 (transformation!2397 (h!19237 rules!2550)))) (Forall2!435 lambda!57569))))

(declare-fun bs!334185 () Bool)

(assert (= bs!334185 d!385281))

(declare-fun m!1522115 () Bool)

(assert (=> bs!334185 m!1522115))

(assert (=> b!1357616 d!385281))

(declare-fun d!385283 () Bool)

(assert (=> d!385283 (= (isEmpty!8309 (_1!7595 lt!449738)) ((_ is Nil!13838) (_1!7595 lt!449738)))))

(assert (=> b!1357838 d!385283))

(declare-fun d!385285 () Bool)

(declare-fun lt!450079 () Int)

(assert (=> d!385285 (>= lt!450079 0)))

(declare-fun e!869521 () Int)

(assert (=> d!385285 (= lt!450079 e!869521)))

(declare-fun c!223030 () Bool)

(assert (=> d!385285 (= c!223030 ((_ is Nil!13835) lt!449809))))

(assert (=> d!385285 (= (size!11328 lt!449809) lt!450079)))

(declare-fun b!1358893 () Bool)

(assert (=> b!1358893 (= e!869521 0)))

(declare-fun b!1358894 () Bool)

(assert (=> b!1358894 (= e!869521 (+ 1 (size!11328 (t!120440 lt!449809))))))

(assert (= (and d!385285 c!223030) b!1358893))

(assert (= (and d!385285 (not c!223030)) b!1358894))

(declare-fun m!1522117 () Bool)

(assert (=> b!1358894 m!1522117))

(assert (=> b!1358029 d!385285))

(assert (=> b!1358029 d!385151))

(declare-fun d!385287 () Bool)

(declare-fun lt!450080 () Int)

(assert (=> d!385287 (>= lt!450080 0)))

(declare-fun e!869522 () Int)

(assert (=> d!385287 (= lt!450080 e!869522)))

(declare-fun c!223031 () Bool)

(assert (=> d!385287 (= c!223031 ((_ is Nil!13835) (Cons!13835 lt!449595 Nil!13835)))))

(assert (=> d!385287 (= (size!11328 (Cons!13835 lt!449595 Nil!13835)) lt!450080)))

(declare-fun b!1358895 () Bool)

(assert (=> b!1358895 (= e!869522 0)))

(declare-fun b!1358896 () Bool)

(assert (=> b!1358896 (= e!869522 (+ 1 (size!11328 (t!120440 (Cons!13835 lt!449595 Nil!13835)))))))

(assert (= (and d!385287 c!223031) b!1358895))

(assert (= (and d!385287 (not c!223031)) b!1358896))

(declare-fun m!1522119 () Bool)

(assert (=> b!1358896 m!1522119))

(assert (=> b!1358029 d!385287))

(declare-fun d!385289 () Bool)

(declare-fun lt!450081 () Bool)

(assert (=> d!385289 (= lt!450081 (isEmpty!8306 (list!5307 (_2!7593 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t2!34)))))))))

(assert (=> d!385289 (= lt!450081 (isEmpty!8308 (c!222694 (_2!7593 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t2!34)))))))))

(assert (=> d!385289 (= (isEmpty!8300 (_2!7593 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t2!34))))) lt!450081)))

(declare-fun bs!334186 () Bool)

(assert (= bs!334186 d!385289))

(declare-fun m!1522121 () Bool)

(assert (=> bs!334186 m!1522121))

(assert (=> bs!334186 m!1522121))

(declare-fun m!1522123 () Bool)

(assert (=> bs!334186 m!1522123))

(declare-fun m!1522125 () Bool)

(assert (=> bs!334186 m!1522125))

(assert (=> b!1357909 d!385289))

(declare-fun b!1358897 () Bool)

(declare-fun lt!450082 () tuple2!13414)

(declare-fun e!869524 () Bool)

(assert (=> b!1358897 (= e!869524 (= (_2!7593 lt!450082) (print!858 thiss!19762 (singletonSeq!1020 t2!34))))))

(declare-fun b!1358898 () Bool)

(declare-fun e!869525 () Bool)

(assert (=> b!1358898 (= e!869525 (not (isEmpty!8307 (_1!7593 lt!450082))))))

(declare-fun b!1358899 () Bool)

(declare-fun res!612373 () Bool)

(declare-fun e!869523 () Bool)

(assert (=> b!1358899 (=> (not res!612373) (not e!869523))))

(assert (=> b!1358899 (= res!612373 (= (list!5306 (_1!7593 lt!450082)) (_1!7595 (lexList!610 thiss!19762 rules!2550 (list!5307 (print!858 thiss!19762 (singletonSeq!1020 t2!34)))))))))

(declare-fun d!385291 () Bool)

(assert (=> d!385291 e!869523))

(declare-fun res!612374 () Bool)

(assert (=> d!385291 (=> (not res!612374) (not e!869523))))

(assert (=> d!385291 (= res!612374 e!869524)))

(declare-fun c!223032 () Bool)

(assert (=> d!385291 (= c!223032 (> (size!11326 (_1!7593 lt!450082)) 0))))

(assert (=> d!385291 (= lt!450082 (lexTailRecV2!405 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t2!34)) (BalanceConc!9053 Empty!4556) (print!858 thiss!19762 (singletonSeq!1020 t2!34)) (BalanceConc!9055 Empty!4557)))))

(assert (=> d!385291 (= (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t2!34))) lt!450082)))

(declare-fun b!1358900 () Bool)

(assert (=> b!1358900 (= e!869524 e!869525)))

(declare-fun res!612372 () Bool)

(assert (=> b!1358900 (= res!612372 (< (size!11320 (_2!7593 lt!450082)) (size!11320 (print!858 thiss!19762 (singletonSeq!1020 t2!34)))))))

(assert (=> b!1358900 (=> (not res!612372) (not e!869525))))

(declare-fun b!1358901 () Bool)

(assert (=> b!1358901 (= e!869523 (= (list!5307 (_2!7593 lt!450082)) (_2!7595 (lexList!610 thiss!19762 rules!2550 (list!5307 (print!858 thiss!19762 (singletonSeq!1020 t2!34)))))))))

(assert (= (and d!385291 c!223032) b!1358900))

(assert (= (and d!385291 (not c!223032)) b!1358897))

(assert (= (and b!1358900 res!612372) b!1358898))

(assert (= (and d!385291 res!612374) b!1358899))

(assert (= (and b!1358899 res!612373) b!1358901))

(declare-fun m!1522127 () Bool)

(assert (=> b!1358899 m!1522127))

(assert (=> b!1358899 m!1520171))

(declare-fun m!1522129 () Bool)

(assert (=> b!1358899 m!1522129))

(assert (=> b!1358899 m!1522129))

(declare-fun m!1522131 () Bool)

(assert (=> b!1358899 m!1522131))

(declare-fun m!1522133 () Bool)

(assert (=> b!1358900 m!1522133))

(assert (=> b!1358900 m!1520171))

(declare-fun m!1522135 () Bool)

(assert (=> b!1358900 m!1522135))

(declare-fun m!1522137 () Bool)

(assert (=> d!385291 m!1522137))

(assert (=> d!385291 m!1520171))

(assert (=> d!385291 m!1520171))

(declare-fun m!1522139 () Bool)

(assert (=> d!385291 m!1522139))

(declare-fun m!1522141 () Bool)

(assert (=> b!1358898 m!1522141))

(declare-fun m!1522143 () Bool)

(assert (=> b!1358901 m!1522143))

(assert (=> b!1358901 m!1520171))

(assert (=> b!1358901 m!1522129))

(assert (=> b!1358901 m!1522129))

(assert (=> b!1358901 m!1522131))

(assert (=> b!1357909 d!385291))

(assert (=> b!1357909 d!384879))

(assert (=> b!1357909 d!384881))

(assert (=> d!384641 d!385145))

(assert (=> d!384641 d!384693))

(assert (=> d!384641 d!384695))

(declare-fun d!385293 () Bool)

(assert (=> d!385293 (= (list!5306 (_1!7593 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t1!34))))) (list!5310 (c!222696 (_1!7593 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t1!34)))))))))

(declare-fun bs!334187 () Bool)

(assert (= bs!334187 d!385293))

(declare-fun m!1522145 () Bool)

(assert (=> bs!334187 m!1522145))

(assert (=> d!384641 d!385293))

(declare-fun d!385295 () Bool)

(declare-fun lt!450085 () Int)

(assert (=> d!385295 (= lt!450085 (size!11330 (list!5306 (_1!7593 lt!449652))))))

(declare-fun size!11333 (Conc!4557) Int)

(assert (=> d!385295 (= lt!450085 (size!11333 (c!222696 (_1!7593 lt!449652))))))

(assert (=> d!385295 (= (size!11326 (_1!7593 lt!449652)) lt!450085)))

(declare-fun bs!334188 () Bool)

(assert (= bs!334188 d!385295))

(declare-fun m!1522147 () Bool)

(assert (=> bs!334188 m!1522147))

(assert (=> bs!334188 m!1522147))

(declare-fun m!1522149 () Bool)

(assert (=> bs!334188 m!1522149))

(declare-fun m!1522151 () Bool)

(assert (=> bs!334188 m!1522151))

(assert (=> d!384641 d!385295))

(declare-fun d!385297 () Bool)

(assert (=> d!385297 (= (list!5306 (singletonSeq!1020 t1!34)) (list!5310 (c!222696 (singletonSeq!1020 t1!34))))))

(declare-fun bs!334189 () Bool)

(assert (= bs!334189 d!385297))

(declare-fun m!1522153 () Bool)

(assert (=> bs!334189 m!1522153))

(assert (=> d!384641 d!385297))

(assert (=> d!384641 d!384639))

(declare-fun bs!334190 () Bool)

(declare-fun d!385299 () Bool)

(assert (= bs!334190 (and d!385299 d!385281)))

(declare-fun lambda!57570 () Int)

(assert (=> bs!334190 (= (= (toValue!3652 (transformation!2397 (rule!4146 t2!34))) (toValue!3652 (transformation!2397 (h!19237 rules!2550)))) (= lambda!57570 lambda!57569))))

(assert (=> d!385299 true))

(assert (=> d!385299 (< (dynLambda!6223 order!8387 (toValue!3652 (transformation!2397 (rule!4146 t2!34)))) (dynLambda!6228 order!8389 lambda!57570))))

(assert (=> d!385299 (= (equivClasses!879 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (toValue!3652 (transformation!2397 (rule!4146 t2!34)))) (Forall2!435 lambda!57570))))

(declare-fun bs!334191 () Bool)

(assert (= bs!334191 d!385299))

(declare-fun m!1522155 () Bool)

(assert (=> bs!334191 m!1522155))

(assert (=> b!1357899 d!385299))

(declare-fun d!385301 () Bool)

(assert (=> d!385301 (= (head!2437 lt!449598) (h!19236 lt!449598))))

(assert (=> b!1357610 d!385301))

(declare-fun d!385303 () Bool)

(declare-fun c!223035 () Bool)

(assert (=> d!385303 (= c!223035 ((_ is Nil!13837) (map!3056 rules!2550 lambda!57485)))))

(declare-fun e!869528 () (InoxSet Regex!3711))

(assert (=> d!385303 (= (content!2001 (map!3056 rules!2550 lambda!57485)) e!869528)))

(declare-fun b!1358906 () Bool)

(assert (=> b!1358906 (= e!869528 ((as const (Array Regex!3711 Bool)) false))))

(declare-fun b!1358907 () Bool)

(assert (=> b!1358907 (= e!869528 ((_ map or) (store ((as const (Array Regex!3711 Bool)) false) (h!19238 (map!3056 rules!2550 lambda!57485)) true) (content!2001 (t!120442 (map!3056 rules!2550 lambda!57485)))))))

(assert (= (and d!385303 c!223035) b!1358906))

(assert (= (and d!385303 (not c!223035)) b!1358907))

(declare-fun m!1522157 () Bool)

(assert (=> b!1358907 m!1522157))

(declare-fun m!1522159 () Bool)

(assert (=> b!1358907 m!1522159))

(assert (=> d!384775 d!385303))

(declare-fun d!385305 () Bool)

(declare-fun res!612379 () Bool)

(declare-fun e!869533 () Bool)

(assert (=> d!385305 (=> res!612379 e!869533)))

(assert (=> d!385305 (= res!612379 ((_ is Nil!13837) (map!3056 rules!2550 lambda!57485)))))

(assert (=> d!385305 (= (forall!3379 (map!3056 rules!2550 lambda!57485) lambda!57512) e!869533)))

(declare-fun b!1358912 () Bool)

(declare-fun e!869534 () Bool)

(assert (=> b!1358912 (= e!869533 e!869534)))

(declare-fun res!612380 () Bool)

(assert (=> b!1358912 (=> (not res!612380) (not e!869534))))

(assert (=> b!1358912 (= res!612380 (dynLambda!6215 lambda!57512 (h!19238 (map!3056 rules!2550 lambda!57485))))))

(declare-fun b!1358913 () Bool)

(assert (=> b!1358913 (= e!869534 (forall!3379 (t!120442 (map!3056 rules!2550 lambda!57485)) lambda!57512))))

(assert (= (and d!385305 (not res!612379)) b!1358912))

(assert (= (and b!1358912 res!612380) b!1358913))

(declare-fun b_lambda!41015 () Bool)

(assert (=> (not b_lambda!41015) (not b!1358912)))

(declare-fun m!1522161 () Bool)

(assert (=> b!1358912 m!1522161))

(declare-fun m!1522163 () Bool)

(assert (=> b!1358913 m!1522163))

(assert (=> d!384815 d!385305))

(declare-fun d!385307 () Bool)

(assert (=> d!385307 (= (list!5306 lt!449828) (list!5310 (c!222696 lt!449828)))))

(declare-fun bs!334192 () Bool)

(assert (= bs!334192 d!385307))

(declare-fun m!1522165 () Bool)

(assert (=> bs!334192 m!1522165))

(assert (=> d!384881 d!385307))

(declare-fun d!385309 () Bool)

(declare-fun e!869535 () Bool)

(assert (=> d!385309 e!869535))

(declare-fun res!612381 () Bool)

(assert (=> d!385309 (=> (not res!612381) (not e!869535))))

(declare-fun lt!450086 () BalanceConc!9054)

(assert (=> d!385309 (= res!612381 (= (list!5306 lt!450086) (Cons!13838 t2!34 Nil!13838)))))

(assert (=> d!385309 (= lt!450086 (choose!8363 t2!34))))

(assert (=> d!385309 (= (singleton!438 t2!34) lt!450086)))

(declare-fun b!1358914 () Bool)

(assert (=> b!1358914 (= e!869535 (isBalanced!1332 (c!222696 lt!450086)))))

(assert (= (and d!385309 res!612381) b!1358914))

(declare-fun m!1522167 () Bool)

(assert (=> d!385309 m!1522167))

(declare-fun m!1522169 () Bool)

(assert (=> d!385309 m!1522169))

(declare-fun m!1522171 () Bool)

(assert (=> b!1358914 m!1522171))

(assert (=> d!384881 d!385309))

(declare-fun d!385311 () Bool)

(assert (=> d!385311 (= (isDefined!2208 lt!449789) (not (isEmpty!8310 lt!449789)))))

(declare-fun bs!334193 () Bool)

(assert (= bs!334193 d!385311))

(assert (=> bs!334193 m!1520843))

(assert (=> b!1357979 d!385311))

(declare-fun d!385313 () Bool)

(assert (=> d!385313 (= (isEmpty!8310 lt!449789) (not ((_ is Some!2651) lt!449789)))))

(assert (=> d!384797 d!385313))

(declare-fun b!1358926 () Bool)

(declare-fun e!869544 () Bool)

(assert (=> b!1358926 (= e!869544 (>= (size!11328 lt!449599) (size!11328 lt!449599)))))

(declare-fun b!1358925 () Bool)

(declare-fun e!869542 () Bool)

(assert (=> b!1358925 (= e!869542 (isPrefix!1120 (tail!1961 lt!449599) (tail!1961 lt!449599)))))

(declare-fun b!1358923 () Bool)

(declare-fun e!869543 () Bool)

(assert (=> b!1358923 (= e!869543 e!869542)))

(declare-fun res!612392 () Bool)

(assert (=> b!1358923 (=> (not res!612392) (not e!869542))))

(assert (=> b!1358923 (= res!612392 (not ((_ is Nil!13835) lt!449599)))))

(declare-fun d!385315 () Bool)

(assert (=> d!385315 e!869544))

(declare-fun res!612391 () Bool)

(assert (=> d!385315 (=> res!612391 e!869544)))

(declare-fun lt!450089 () Bool)

(assert (=> d!385315 (= res!612391 (not lt!450089))))

(assert (=> d!385315 (= lt!450089 e!869543)))

(declare-fun res!612393 () Bool)

(assert (=> d!385315 (=> res!612393 e!869543)))

(assert (=> d!385315 (= res!612393 ((_ is Nil!13835) lt!449599))))

(assert (=> d!385315 (= (isPrefix!1120 lt!449599 lt!449599) lt!450089)))

(declare-fun b!1358924 () Bool)

(declare-fun res!612390 () Bool)

(assert (=> b!1358924 (=> (not res!612390) (not e!869542))))

(assert (=> b!1358924 (= res!612390 (= (head!2437 lt!449599) (head!2437 lt!449599)))))

(assert (= (and d!385315 (not res!612393)) b!1358923))

(assert (= (and b!1358923 res!612392) b!1358924))

(assert (= (and b!1358924 res!612390) b!1358925))

(assert (= (and d!385315 (not res!612391)) b!1358926))

(assert (=> b!1358926 m!1520855))

(assert (=> b!1358926 m!1520855))

(declare-fun m!1522173 () Bool)

(assert (=> b!1358925 m!1522173))

(assert (=> b!1358925 m!1522173))

(assert (=> b!1358925 m!1522173))

(assert (=> b!1358925 m!1522173))

(declare-fun m!1522175 () Bool)

(assert (=> b!1358925 m!1522175))

(declare-fun m!1522177 () Bool)

(assert (=> b!1358924 m!1522177))

(assert (=> b!1358924 m!1522177))

(assert (=> d!384797 d!385315))

(declare-fun d!385317 () Bool)

(assert (=> d!385317 (isPrefix!1120 lt!449599 lt!449599)))

(declare-fun lt!450092 () Unit!19983)

(declare-fun choose!8364 (List!13901 List!13901) Unit!19983)

(assert (=> d!385317 (= lt!450092 (choose!8364 lt!449599 lt!449599))))

(assert (=> d!385317 (= (lemmaIsPrefixRefl!782 lt!449599 lt!449599) lt!450092)))

(declare-fun bs!334194 () Bool)

(assert (= bs!334194 d!385317))

(assert (=> bs!334194 m!1520845))

(declare-fun m!1522179 () Bool)

(assert (=> bs!334194 m!1522179))

(assert (=> d!384797 d!385317))

(declare-fun bs!334195 () Bool)

(declare-fun d!385319 () Bool)

(assert (= bs!334195 (and d!385319 b!1357457)))

(declare-fun lambda!57573 () Int)

(assert (=> bs!334195 (not (= lambda!57573 lambda!57487))))

(declare-fun bs!334196 () Bool)

(assert (= bs!334196 (and d!385319 d!384821)))

(assert (=> bs!334196 (not (= lambda!57573 lambda!57522))))

(declare-fun bs!334197 () Bool)

(assert (= bs!334197 (and d!385319 d!384823)))

(assert (=> bs!334197 (not (= lambda!57573 lambda!57525))))

(assert (=> d!385319 true))

(declare-fun lt!450095 () Bool)

(assert (=> d!385319 (= lt!450095 (forall!3380 rules!2550 lambda!57573))))

(declare-fun e!869550 () Bool)

(assert (=> d!385319 (= lt!450095 e!869550)))

(declare-fun res!612399 () Bool)

(assert (=> d!385319 (=> res!612399 e!869550)))

(assert (=> d!385319 (= res!612399 (not ((_ is Cons!13836) rules!2550)))))

(assert (=> d!385319 (= (rulesValidInductive!761 thiss!19762 rules!2550) lt!450095)))

(declare-fun b!1358931 () Bool)

(declare-fun e!869549 () Bool)

(assert (=> b!1358931 (= e!869550 e!869549)))

(declare-fun res!612398 () Bool)

(assert (=> b!1358931 (=> (not res!612398) (not e!869549))))

(declare-fun ruleValid!586 (LexerInterface!2092 Rule!4594) Bool)

(assert (=> b!1358931 (= res!612398 (ruleValid!586 thiss!19762 (h!19237 rules!2550)))))

(declare-fun b!1358932 () Bool)

(assert (=> b!1358932 (= e!869549 (rulesValidInductive!761 thiss!19762 (t!120441 rules!2550)))))

(assert (= (and d!385319 (not res!612399)) b!1358931))

(assert (= (and b!1358931 res!612398) b!1358932))

(declare-fun m!1522181 () Bool)

(assert (=> d!385319 m!1522181))

(declare-fun m!1522183 () Bool)

(assert (=> b!1358931 m!1522183))

(declare-fun m!1522185 () Bool)

(assert (=> b!1358932 m!1522185))

(assert (=> d!384797 d!385319))

(declare-fun b!1358935 () Bool)

(declare-fun res!612403 () Bool)

(declare-fun e!869551 () Bool)

(assert (=> b!1358935 (=> res!612403 e!869551)))

(assert (=> b!1358935 (= res!612403 (not ((_ is Concat!6199) (h!19238 (map!3056 rules!2550 lambda!57485)))))))

(declare-fun e!869556 () Bool)

(assert (=> b!1358935 (= e!869556 e!869551)))

(declare-fun b!1358936 () Bool)

(declare-fun res!612404 () Bool)

(declare-fun e!869557 () Bool)

(assert (=> b!1358936 (=> (not res!612404) (not e!869557))))

(declare-fun call!91346 () Bool)

(assert (=> b!1358936 (= res!612404 call!91346)))

(assert (=> b!1358936 (= e!869556 e!869557)))

(declare-fun b!1358937 () Bool)

(declare-fun e!869554 () Bool)

(assert (=> b!1358937 (= e!869554 e!869556)))

(declare-fun c!223036 () Bool)

(assert (=> b!1358937 (= c!223036 ((_ is Union!3711) (h!19238 (map!3056 rules!2550 lambda!57485))))))

(declare-fun bm!91340 () Bool)

(declare-fun call!91345 () Bool)

(assert (=> bm!91340 (= call!91345 (validRegex!1611 (ite c!223036 (regTwo!7935 (h!19238 (map!3056 rules!2550 lambda!57485))) (regTwo!7934 (h!19238 (map!3056 rules!2550 lambda!57485))))))))

(declare-fun b!1358938 () Bool)

(declare-fun e!869553 () Bool)

(assert (=> b!1358938 (= e!869553 e!869554)))

(declare-fun c!223037 () Bool)

(assert (=> b!1358938 (= c!223037 ((_ is Star!3711) (h!19238 (map!3056 rules!2550 lambda!57485))))))

(declare-fun b!1358939 () Bool)

(declare-fun e!869552 () Bool)

(assert (=> b!1358939 (= e!869554 e!869552)))

(declare-fun res!612401 () Bool)

(assert (=> b!1358939 (= res!612401 (not (nullable!1190 (reg!4040 (h!19238 (map!3056 rules!2550 lambda!57485))))))))

(assert (=> b!1358939 (=> (not res!612401) (not e!869552))))

(declare-fun b!1358940 () Bool)

(assert (=> b!1358940 (= e!869557 call!91345)))

(declare-fun b!1358941 () Bool)

(declare-fun e!869555 () Bool)

(assert (=> b!1358941 (= e!869551 e!869555)))

(declare-fun res!612402 () Bool)

(assert (=> b!1358941 (=> (not res!612402) (not e!869555))))

(assert (=> b!1358941 (= res!612402 call!91346)))

(declare-fun bm!91341 () Bool)

(declare-fun call!91347 () Bool)

(assert (=> bm!91341 (= call!91346 call!91347)))

(declare-fun bm!91342 () Bool)

(assert (=> bm!91342 (= call!91347 (validRegex!1611 (ite c!223037 (reg!4040 (h!19238 (map!3056 rules!2550 lambda!57485))) (ite c!223036 (regOne!7935 (h!19238 (map!3056 rules!2550 lambda!57485))) (regOne!7934 (h!19238 (map!3056 rules!2550 lambda!57485)))))))))

(declare-fun b!1358942 () Bool)

(assert (=> b!1358942 (= e!869555 call!91345)))

(declare-fun d!385321 () Bool)

(declare-fun res!612400 () Bool)

(assert (=> d!385321 (=> res!612400 e!869553)))

(assert (=> d!385321 (= res!612400 ((_ is ElementMatch!3711) (h!19238 (map!3056 rules!2550 lambda!57485))))))

(assert (=> d!385321 (= (validRegex!1611 (h!19238 (map!3056 rules!2550 lambda!57485))) e!869553)))

(declare-fun b!1358943 () Bool)

(assert (=> b!1358943 (= e!869552 call!91347)))

(assert (= (and d!385321 (not res!612400)) b!1358938))

(assert (= (and b!1358938 c!223037) b!1358939))

(assert (= (and b!1358938 (not c!223037)) b!1358937))

(assert (= (and b!1358939 res!612401) b!1358943))

(assert (= (and b!1358937 c!223036) b!1358936))

(assert (= (and b!1358937 (not c!223036)) b!1358935))

(assert (= (and b!1358936 res!612404) b!1358940))

(assert (= (and b!1358935 (not res!612403)) b!1358941))

(assert (= (and b!1358941 res!612402) b!1358942))

(assert (= (or b!1358936 b!1358941) bm!91341))

(assert (= (or b!1358940 b!1358942) bm!91340))

(assert (= (or b!1358943 bm!91341) bm!91342))

(declare-fun m!1522187 () Bool)

(assert (=> bm!91340 m!1522187))

(declare-fun m!1522189 () Bool)

(assert (=> b!1358939 m!1522189))

(declare-fun m!1522191 () Bool)

(assert (=> bm!91342 m!1522191))

(assert (=> bs!334090 d!385321))

(declare-fun d!385323 () Bool)

(declare-fun c!223038 () Bool)

(assert (=> d!385323 (= c!223038 ((_ is Nil!13835) lt!449598))))

(declare-fun e!869558 () (InoxSet C!7712))

(assert (=> d!385323 (= (content!2000 lt!449598) e!869558)))

(declare-fun b!1358944 () Bool)

(assert (=> b!1358944 (= e!869558 ((as const (Array C!7712 Bool)) false))))

(declare-fun b!1358945 () Bool)

(assert (=> b!1358945 (= e!869558 ((_ map or) (store ((as const (Array C!7712 Bool)) false) (h!19236 lt!449598) true) (content!2000 (t!120440 lt!449598))))))

(assert (= (and d!385323 c!223038) b!1358944))

(assert (= (and d!385323 (not c!223038)) b!1358945))

(declare-fun m!1522193 () Bool)

(assert (=> b!1358945 m!1522193))

(declare-fun m!1522195 () Bool)

(assert (=> b!1358945 m!1522195))

(assert (=> d!384765 d!385323))

(declare-fun d!385325 () Bool)

(declare-fun lt!450096 () Bool)

(assert (=> d!385325 (= lt!450096 (select (content!2001 (t!120442 (map!3056 rules!2550 lambda!57485))) lt!449582))))

(declare-fun e!869559 () Bool)

(assert (=> d!385325 (= lt!450096 e!869559)))

(declare-fun res!612405 () Bool)

(assert (=> d!385325 (=> (not res!612405) (not e!869559))))

(assert (=> d!385325 (= res!612405 ((_ is Cons!13837) (t!120442 (map!3056 rules!2550 lambda!57485))))))

(assert (=> d!385325 (= (contains!2567 (t!120442 (map!3056 rules!2550 lambda!57485)) lt!449582) lt!450096)))

(declare-fun b!1358946 () Bool)

(declare-fun e!869560 () Bool)

(assert (=> b!1358946 (= e!869559 e!869560)))

(declare-fun res!612406 () Bool)

(assert (=> b!1358946 (=> res!612406 e!869560)))

(assert (=> b!1358946 (= res!612406 (= (h!19238 (t!120442 (map!3056 rules!2550 lambda!57485))) lt!449582))))

(declare-fun b!1358947 () Bool)

(assert (=> b!1358947 (= e!869560 (contains!2567 (t!120442 (t!120442 (map!3056 rules!2550 lambda!57485))) lt!449582))))

(assert (= (and d!385325 res!612405) b!1358946))

(assert (= (and b!1358946 (not res!612406)) b!1358947))

(assert (=> d!385325 m!1522159))

(declare-fun m!1522197 () Bool)

(assert (=> d!385325 m!1522197))

(declare-fun m!1522199 () Bool)

(assert (=> b!1358947 m!1522199))

(assert (=> b!1357847 d!385325))

(declare-fun bs!334198 () Bool)

(declare-fun d!385327 () Bool)

(assert (= bs!334198 (and d!385327 d!385095)))

(declare-fun lambda!57574 () Int)

(assert (=> bs!334198 (= (and (= (toChars!3511 (transformation!2397 (h!19237 rules!2550))) (toChars!3511 (transformation!2397 (rule!4146 t2!34)))) (= (toValue!3652 (transformation!2397 (h!19237 rules!2550))) (toValue!3652 (transformation!2397 (rule!4146 t2!34))))) (= lambda!57574 lambda!57544))))

(assert (=> d!385327 true))

(assert (=> d!385327 (< (dynLambda!6221 order!8383 (toChars!3511 (transformation!2397 (h!19237 rules!2550)))) (dynLambda!6222 order!8385 lambda!57574))))

(assert (=> d!385327 true))

(assert (=> d!385327 (< (dynLambda!6223 order!8387 (toValue!3652 (transformation!2397 (h!19237 rules!2550)))) (dynLambda!6222 order!8385 lambda!57574))))

(assert (=> d!385327 (= (semiInverseModEq!920 (toChars!3511 (transformation!2397 (h!19237 rules!2550))) (toValue!3652 (transformation!2397 (h!19237 rules!2550)))) (Forall!532 lambda!57574))))

(declare-fun bs!334199 () Bool)

(assert (= bs!334199 d!385327))

(declare-fun m!1522201 () Bool)

(assert (=> bs!334199 m!1522201))

(assert (=> d!384691 d!385327))

(declare-fun b!1358948 () Bool)

(declare-fun e!869563 () Bool)

(declare-fun lt!450097 () tuple2!13418)

(assert (=> b!1358948 (= e!869563 (= (_2!7595 lt!450097) (_2!7594 (v!21393 lt!449769))))))

(declare-fun b!1358949 () Bool)

(declare-fun e!869562 () Bool)

(assert (=> b!1358949 (= e!869562 (not (isEmpty!8309 (_1!7595 lt!450097))))))

(declare-fun b!1358951 () Bool)

(declare-fun e!869561 () tuple2!13418)

(assert (=> b!1358951 (= e!869561 (tuple2!13419 Nil!13838 (_2!7594 (v!21393 lt!449769))))))

(declare-fun b!1358952 () Bool)

(declare-fun lt!450098 () Option!2652)

(declare-fun lt!450099 () tuple2!13418)

(assert (=> b!1358952 (= e!869561 (tuple2!13419 (Cons!13838 (_1!7594 (v!21393 lt!450098)) (_1!7595 lt!450099)) (_2!7595 lt!450099)))))

(assert (=> b!1358952 (= lt!450099 (lexList!610 thiss!19762 rules!2550 (_2!7594 (v!21393 lt!450098))))))

(declare-fun d!385329 () Bool)

(assert (=> d!385329 e!869563))

(declare-fun c!223040 () Bool)

(assert (=> d!385329 (= c!223040 (> (size!11330 (_1!7595 lt!450097)) 0))))

(assert (=> d!385329 (= lt!450097 e!869561)))

(declare-fun c!223039 () Bool)

(assert (=> d!385329 (= c!223039 ((_ is Some!2651) lt!450098))))

(assert (=> d!385329 (= lt!450098 (maxPrefix!1074 thiss!19762 rules!2550 (_2!7594 (v!21393 lt!449769))))))

(assert (=> d!385329 (= (lexList!610 thiss!19762 rules!2550 (_2!7594 (v!21393 lt!449769))) lt!450097)))

(declare-fun b!1358950 () Bool)

(assert (=> b!1358950 (= e!869563 e!869562)))

(declare-fun res!612407 () Bool)

(assert (=> b!1358950 (= res!612407 (< (size!11328 (_2!7595 lt!450097)) (size!11328 (_2!7594 (v!21393 lt!449769)))))))

(assert (=> b!1358950 (=> (not res!612407) (not e!869562))))

(assert (= (and d!385329 c!223039) b!1358952))

(assert (= (and d!385329 (not c!223039)) b!1358951))

(assert (= (and d!385329 c!223040) b!1358950))

(assert (= (and d!385329 (not c!223040)) b!1358948))

(assert (= (and b!1358950 res!612407) b!1358949))

(declare-fun m!1522203 () Bool)

(assert (=> b!1358949 m!1522203))

(declare-fun m!1522205 () Bool)

(assert (=> b!1358952 m!1522205))

(declare-fun m!1522207 () Bool)

(assert (=> d!385329 m!1522207))

(declare-fun m!1522209 () Bool)

(assert (=> d!385329 m!1522209))

(declare-fun m!1522211 () Bool)

(assert (=> b!1358950 m!1522211))

(declare-fun m!1522213 () Bool)

(assert (=> b!1358950 m!1522213))

(assert (=> b!1357904 d!385329))

(declare-fun bs!334200 () Bool)

(declare-fun d!385331 () Bool)

(assert (= bs!334200 (and d!385331 d!385281)))

(declare-fun lambda!57575 () Int)

(assert (=> bs!334200 (= (= (toValue!3652 (transformation!2397 (rule!4146 t1!34))) (toValue!3652 (transformation!2397 (h!19237 rules!2550)))) (= lambda!57575 lambda!57569))))

(declare-fun bs!334201 () Bool)

(assert (= bs!334201 (and d!385331 d!385299)))

(assert (=> bs!334201 (= (= (toValue!3652 (transformation!2397 (rule!4146 t1!34))) (toValue!3652 (transformation!2397 (rule!4146 t2!34)))) (= lambda!57575 lambda!57570))))

(assert (=> d!385331 true))

(assert (=> d!385331 (< (dynLambda!6223 order!8387 (toValue!3652 (transformation!2397 (rule!4146 t1!34)))) (dynLambda!6228 order!8389 lambda!57575))))

(assert (=> d!385331 (= (equivClasses!879 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (toValue!3652 (transformation!2397 (rule!4146 t1!34)))) (Forall2!435 lambda!57575))))

(declare-fun bs!334202 () Bool)

(assert (= bs!334202 d!385331))

(declare-fun m!1522215 () Bool)

(assert (=> bs!334202 m!1522215))

(assert (=> b!1358059 d!385331))

(declare-fun d!385333 () Bool)

(declare-fun lt!450100 () Int)

(assert (=> d!385333 (= lt!450100 (size!11328 (list!5307 lt!449589)))))

(assert (=> d!385333 (= lt!450100 (size!11329 (c!222694 lt!449589)))))

(assert (=> d!385333 (= (size!11320 lt!449589) lt!450100)))

(declare-fun bs!334203 () Bool)

(assert (= bs!334203 d!385333))

(assert (=> bs!334203 m!1520145))

(assert (=> bs!334203 m!1520145))

(declare-fun m!1522217 () Bool)

(assert (=> bs!334203 m!1522217))

(declare-fun m!1522219 () Bool)

(assert (=> bs!334203 m!1522219))

(assert (=> b!1358012 d!385333))

(declare-fun d!385335 () Bool)

(declare-fun res!612408 () Bool)

(declare-fun e!869564 () Bool)

(assert (=> d!385335 (=> res!612408 e!869564)))

(assert (=> d!385335 (= res!612408 ((_ is Nil!13837) lt!449590))))

(assert (=> d!385335 (= (forall!3379 lt!449590 lambda!57513) e!869564)))

(declare-fun b!1358953 () Bool)

(declare-fun e!869565 () Bool)

(assert (=> b!1358953 (= e!869564 e!869565)))

(declare-fun res!612409 () Bool)

(assert (=> b!1358953 (=> (not res!612409) (not e!869565))))

(assert (=> b!1358953 (= res!612409 (dynLambda!6215 lambda!57513 (h!19238 lt!449590)))))

(declare-fun b!1358954 () Bool)

(assert (=> b!1358954 (= e!869565 (forall!3379 (t!120442 lt!449590) lambda!57513))))

(assert (= (and d!385335 (not res!612408)) b!1358953))

(assert (= (and b!1358953 res!612409) b!1358954))

(declare-fun b_lambda!41017 () Bool)

(assert (=> (not b_lambda!41017) (not b!1358953)))

(declare-fun m!1522221 () Bool)

(assert (=> b!1358953 m!1522221))

(declare-fun m!1522223 () Bool)

(assert (=> b!1358954 m!1522223))

(assert (=> d!384817 d!385335))

(assert (=> b!1357983 d!385133))

(declare-fun d!385337 () Bool)

(declare-fun dynLambda!6229 (Int BalanceConc!9052) TokenValue!2487)

(assert (=> d!385337 (= (apply!3352 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))) (seqFromList!1626 (originalCharacters!3259 (_1!7594 (get!4332 lt!449789))))) (dynLambda!6229 (toValue!3652 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789))))) (seqFromList!1626 (originalCharacters!3259 (_1!7594 (get!4332 lt!449789))))))))

(declare-fun b_lambda!41019 () Bool)

(assert (=> (not b_lambda!41019) (not d!385337)))

(declare-fun t!120503 () Bool)

(declare-fun tb!71337 () Bool)

(assert (=> (and b!1357461 (= (toValue!3652 (transformation!2397 (rule!4146 t1!34))) (toValue!3652 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))))) t!120503) tb!71337))

(declare-fun result!86734 () Bool)

(assert (=> tb!71337 (= result!86734 (inv!21 (dynLambda!6229 (toValue!3652 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789))))) (seqFromList!1626 (originalCharacters!3259 (_1!7594 (get!4332 lt!449789)))))))))

(declare-fun m!1522225 () Bool)

(assert (=> tb!71337 m!1522225))

(assert (=> d!385337 t!120503))

(declare-fun b_and!90959 () Bool)

(assert (= b_and!90883 (and (=> t!120503 result!86734) b_and!90959)))

(declare-fun t!120505 () Bool)

(declare-fun tb!71339 () Bool)

(assert (=> (and b!1357450 (= (toValue!3652 (transformation!2397 (h!19237 rules!2550))) (toValue!3652 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))))) t!120505) tb!71339))

(declare-fun result!86738 () Bool)

(assert (= result!86738 result!86734))

(assert (=> d!385337 t!120505))

(declare-fun b_and!90961 () Bool)

(assert (= b_and!90887 (and (=> t!120505 result!86738) b_and!90961)))

(declare-fun tb!71341 () Bool)

(declare-fun t!120507 () Bool)

(assert (=> (and b!1357464 (= (toValue!3652 (transformation!2397 (rule!4146 t2!34))) (toValue!3652 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))))) t!120507) tb!71341))

(declare-fun result!86740 () Bool)

(assert (= result!86740 result!86734))

(assert (=> d!385337 t!120507))

(declare-fun b_and!90963 () Bool)

(assert (= b_and!90891 (and (=> t!120507 result!86740) b_and!90963)))

(declare-fun t!120509 () Bool)

(declare-fun tb!71343 () Bool)

(assert (=> (and b!1358101 (= (toValue!3652 (transformation!2397 (h!19237 (t!120441 rules!2550)))) (toValue!3652 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))))) t!120509) tb!71343))

(declare-fun result!86742 () Bool)

(assert (= result!86742 result!86734))

(assert (=> d!385337 t!120509))

(declare-fun b_and!90965 () Bool)

(assert (= b_and!90947 (and (=> t!120509 result!86742) b_and!90965)))

(assert (=> d!385337 m!1520827))

(declare-fun m!1522227 () Bool)

(assert (=> d!385337 m!1522227))

(assert (=> b!1357983 d!385337))

(declare-fun d!385339 () Bool)

(declare-fun fromListB!713 (List!13901) BalanceConc!9052)

(assert (=> d!385339 (= (seqFromList!1626 (originalCharacters!3259 (_1!7594 (get!4332 lt!449789)))) (fromListB!713 (originalCharacters!3259 (_1!7594 (get!4332 lt!449789)))))))

(declare-fun bs!334204 () Bool)

(assert (= bs!334204 d!385339))

(declare-fun m!1522229 () Bool)

(assert (=> bs!334204 m!1522229))

(assert (=> b!1357983 d!385339))

(declare-fun d!385341 () Bool)

(declare-fun c!223043 () Bool)

(assert (=> d!385341 (= c!223043 ((_ is Nil!13836) rules!2550))))

(declare-fun e!869571 () (InoxSet Rule!4594))

(assert (=> d!385341 (= (content!2003 rules!2550) e!869571)))

(declare-fun b!1358961 () Bool)

(assert (=> b!1358961 (= e!869571 ((as const (Array Rule!4594 Bool)) false))))

(declare-fun b!1358962 () Bool)

(assert (=> b!1358962 (= e!869571 ((_ map or) (store ((as const (Array Rule!4594 Bool)) false) (h!19237 rules!2550) true) (content!2003 (t!120441 rules!2550))))))

(assert (= (and d!385341 c!223043) b!1358961))

(assert (= (and d!385341 (not c!223043)) b!1358962))

(declare-fun m!1522231 () Bool)

(assert (=> b!1358962 m!1522231))

(declare-fun m!1522233 () Bool)

(assert (=> b!1358962 m!1522233))

(assert (=> d!384857 d!385341))

(assert (=> d!384837 d!385113))

(declare-fun d!385343 () Bool)

(declare-fun e!869574 () Bool)

(assert (=> d!385343 e!869574))

(declare-fun res!612410 () Bool)

(assert (=> d!385343 (=> (not res!612410) (not e!869574))))

(declare-fun lt!450102 () Regex!3711)

(assert (=> d!385343 (= res!612410 (dynLambda!6215 lambda!57486 lt!450102))))

(declare-fun e!869573 () Regex!3711)

(assert (=> d!385343 (= lt!450102 e!869573)))

(declare-fun c!223044 () Bool)

(declare-fun e!869575 () Bool)

(assert (=> d!385343 (= c!223044 e!869575)))

(declare-fun res!612411 () Bool)

(assert (=> d!385343 (=> (not res!612411) (not e!869575))))

(assert (=> d!385343 (= res!612411 ((_ is Cons!13837) (t!120442 (map!3056 rules!2550 lambda!57485))))))

(assert (=> d!385343 (exists!452 (t!120442 (map!3056 rules!2550 lambda!57485)) lambda!57486)))

(assert (=> d!385343 (= (getWitness!340 (t!120442 (map!3056 rules!2550 lambda!57485)) lambda!57486) lt!450102)))

(declare-fun b!1358963 () Bool)

(assert (=> b!1358963 (= e!869574 (contains!2567 (t!120442 (map!3056 rules!2550 lambda!57485)) lt!450102))))

(declare-fun b!1358964 () Bool)

(declare-fun lt!450101 () Unit!19983)

(declare-fun Unit!19995 () Unit!19983)

(assert (=> b!1358964 (= lt!450101 Unit!19995)))

(assert (=> b!1358964 false))

(declare-fun e!869572 () Regex!3711)

(assert (=> b!1358964 (= e!869572 (head!2440 (t!120442 (map!3056 rules!2550 lambda!57485))))))

(declare-fun b!1358965 () Bool)

(assert (=> b!1358965 (= e!869575 (dynLambda!6215 lambda!57486 (h!19238 (t!120442 (map!3056 rules!2550 lambda!57485)))))))

(declare-fun b!1358966 () Bool)

(assert (=> b!1358966 (= e!869572 (getWitness!340 (t!120442 (t!120442 (map!3056 rules!2550 lambda!57485))) lambda!57486))))

(declare-fun b!1358967 () Bool)

(assert (=> b!1358967 (= e!869573 e!869572)))

(declare-fun c!223045 () Bool)

(assert (=> b!1358967 (= c!223045 ((_ is Cons!13837) (t!120442 (map!3056 rules!2550 lambda!57485))))))

(declare-fun b!1358968 () Bool)

(assert (=> b!1358968 (= e!869573 (h!19238 (t!120442 (map!3056 rules!2550 lambda!57485))))))

(assert (= (and d!385343 res!612411) b!1358965))

(assert (= (and d!385343 c!223044) b!1358968))

(assert (= (and d!385343 (not c!223044)) b!1358967))

(assert (= (and b!1358967 c!223045) b!1358966))

(assert (= (and b!1358967 (not c!223045)) b!1358964))

(assert (= (and d!385343 res!612410) b!1358963))

(declare-fun b_lambda!41021 () Bool)

(assert (=> (not b_lambda!41021) (not d!385343)))

(declare-fun b_lambda!41023 () Bool)

(assert (=> (not b_lambda!41023) (not b!1358965)))

(declare-fun m!1522235 () Bool)

(assert (=> d!385343 m!1522235))

(declare-fun m!1522237 () Bool)

(assert (=> d!385343 m!1522237))

(declare-fun m!1522239 () Bool)

(assert (=> b!1358964 m!1522239))

(declare-fun m!1522241 () Bool)

(assert (=> b!1358963 m!1522241))

(declare-fun m!1522243 () Bool)

(assert (=> b!1358965 m!1522243))

(declare-fun m!1522245 () Bool)

(assert (=> b!1358966 m!1522245))

(assert (=> b!1357896 d!385343))

(declare-fun d!385345 () Bool)

(assert (=> d!385345 (= (list!5307 lt!449716) (list!5311 (c!222694 lt!449716)))))

(declare-fun bs!334205 () Bool)

(assert (= bs!334205 d!385345))

(declare-fun m!1522247 () Bool)

(assert (=> bs!334205 m!1522247))

(assert (=> d!384749 d!385345))

(declare-fun d!385347 () Bool)

(declare-fun charsToBigInt!1 (List!13900) Int)

(assert (=> d!385347 (= (inv!17 (value!77947 t2!34)) (= (charsToBigInt!1 (text!17857 (value!77947 t2!34))) (value!77939 (value!77947 t2!34))))))

(declare-fun bs!334206 () Bool)

(assert (= bs!334206 d!385347))

(declare-fun m!1522249 () Bool)

(assert (=> bs!334206 m!1522249))

(assert (=> b!1358065 d!385347))

(declare-fun d!385349 () Bool)

(declare-fun res!612416 () Bool)

(declare-fun e!869580 () Bool)

(assert (=> d!385349 (=> res!612416 e!869580)))

(assert (=> d!385349 (= res!612416 ((_ is Nil!13836) rules!2550))))

(assert (=> d!385349 (= (forall!3380 rules!2550 lambda!57522) e!869580)))

(declare-fun b!1358973 () Bool)

(declare-fun e!869581 () Bool)

(assert (=> b!1358973 (= e!869580 e!869581)))

(declare-fun res!612417 () Bool)

(assert (=> b!1358973 (=> (not res!612417) (not e!869581))))

(assert (=> b!1358973 (= res!612417 (dynLambda!6209 lambda!57522 (h!19237 rules!2550)))))

(declare-fun b!1358974 () Bool)

(assert (=> b!1358974 (= e!869581 (forall!3380 (t!120441 rules!2550) lambda!57522))))

(assert (= (and d!385349 (not res!612416)) b!1358973))

(assert (= (and b!1358973 res!612417) b!1358974))

(declare-fun b_lambda!41025 () Bool)

(assert (=> (not b_lambda!41025) (not b!1358973)))

(declare-fun m!1522251 () Bool)

(assert (=> b!1358973 m!1522251))

(declare-fun m!1522253 () Bool)

(assert (=> b!1358974 m!1522253))

(assert (=> d!384821 d!385349))

(declare-fun d!385351 () Bool)

(assert (=> d!385351 (= (isEmpty!8306 lt!449594) ((_ is Nil!13835) lt!449594))))

(assert (=> d!384841 d!385351))

(declare-fun d!385353 () Bool)

(declare-fun lt!450103 () Bool)

(assert (=> d!385353 (= lt!450103 (select (content!2003 (t!120441 rules!2550)) (rule!4146 t1!34)))))

(declare-fun e!869582 () Bool)

(assert (=> d!385353 (= lt!450103 e!869582)))

(declare-fun res!612419 () Bool)

(assert (=> d!385353 (=> (not res!612419) (not e!869582))))

(assert (=> d!385353 (= res!612419 ((_ is Cons!13836) (t!120441 rules!2550)))))

(assert (=> d!385353 (= (contains!2569 (t!120441 rules!2550) (rule!4146 t1!34)) lt!450103)))

(declare-fun b!1358975 () Bool)

(declare-fun e!869583 () Bool)

(assert (=> b!1358975 (= e!869582 e!869583)))

(declare-fun res!612418 () Bool)

(assert (=> b!1358975 (=> res!612418 e!869583)))

(assert (=> b!1358975 (= res!612418 (= (h!19237 (t!120441 rules!2550)) (rule!4146 t1!34)))))

(declare-fun b!1358976 () Bool)

(assert (=> b!1358976 (= e!869583 (contains!2569 (t!120441 (t!120441 rules!2550)) (rule!4146 t1!34)))))

(assert (= (and d!385353 res!612419) b!1358975))

(assert (= (and b!1358975 (not res!612418)) b!1358976))

(assert (=> d!385353 m!1522233))

(declare-fun m!1522255 () Bool)

(assert (=> d!385353 m!1522255))

(declare-fun m!1522257 () Bool)

(assert (=> b!1358976 m!1522257))

(assert (=> b!1358058 d!385353))

(declare-fun d!385355 () Bool)

(assert (=> d!385355 (= (list!5307 (_2!7593 lt!449707)) (list!5311 (c!222694 (_2!7593 lt!449707))))))

(declare-fun bs!334207 () Bool)

(assert (= bs!334207 d!385355))

(declare-fun m!1522259 () Bool)

(assert (=> bs!334207 m!1522259))

(assert (=> b!1357730 d!385355))

(assert (=> b!1357730 d!384769))

(assert (=> b!1357730 d!384773))

(assert (=> d!384819 d!384687))

(declare-fun bs!334208 () Bool)

(declare-fun d!385357 () Bool)

(assert (= bs!334208 (and d!385357 b!1357435)))

(declare-fun lambda!57576 () Int)

(assert (=> bs!334208 (not (= lambda!57576 lambda!57486))))

(declare-fun bs!334209 () Bool)

(assert (= bs!334209 (and d!385357 d!384817)))

(assert (=> bs!334209 (= (= lambda!57519 lambda!57486) (= lambda!57576 lambda!57513))))

(declare-fun bs!334210 () Bool)

(assert (= bs!334210 (and d!385357 d!384819)))

(assert (=> bs!334210 (not (= lambda!57576 lambda!57518))))

(declare-fun bs!334211 () Bool)

(assert (= bs!334211 (and d!385357 d!384815)))

(assert (=> bs!334211 (= (= lambda!57519 lambda!57486) (= lambda!57576 lambda!57512))))

(declare-fun bs!334212 () Bool)

(assert (= bs!334212 (and d!385357 d!385271)))

(assert (=> bs!334212 (not (= lambda!57576 lambda!57566))))

(assert (=> bs!334210 (not (= lambda!57576 lambda!57519))))

(declare-fun bs!334213 () Bool)

(assert (= bs!334213 (and d!385357 d!385261)))

(assert (=> bs!334213 (not (= lambda!57576 lambda!57563))))

(assert (=> d!385357 true))

(assert (=> d!385357 (< (dynLambda!6217 order!8369 lambda!57519) (dynLambda!6217 order!8369 lambda!57576))))

(assert (=> d!385357 (= (exists!452 lt!449590 lambda!57519) (not (forall!3379 lt!449590 lambda!57576)))))

(declare-fun bs!334214 () Bool)

(assert (= bs!334214 d!385357))

(declare-fun m!1522261 () Bool)

(assert (=> bs!334214 m!1522261))

(assert (=> d!384819 d!385357))

(declare-fun bs!334215 () Bool)

(declare-fun d!385359 () Bool)

(assert (= bs!334215 (and d!385359 b!1357435)))

(declare-fun lambda!57579 () Int)

(assert (=> bs!334215 (= lambda!57579 lambda!57486)))

(declare-fun bs!334216 () Bool)

(assert (= bs!334216 (and d!385359 d!384817)))

(assert (=> bs!334216 (not (= lambda!57579 lambda!57513))))

(declare-fun bs!334217 () Bool)

(assert (= bs!334217 (and d!385359 d!384815)))

(assert (=> bs!334217 (not (= lambda!57579 lambda!57512))))

(declare-fun bs!334218 () Bool)

(assert (= bs!334218 (and d!385359 d!385271)))

(assert (=> bs!334218 (not (= lambda!57579 lambda!57566))))

(declare-fun bs!334219 () Bool)

(assert (= bs!334219 (and d!385359 d!384819)))

(assert (=> bs!334219 (= lambda!57579 lambda!57519)))

(declare-fun bs!334220 () Bool)

(assert (= bs!334220 (and d!385359 d!385261)))

(assert (=> bs!334220 (not (= lambda!57579 lambda!57563))))

(declare-fun bs!334221 () Bool)

(assert (= bs!334221 (and d!385359 d!385357)))

(assert (=> bs!334221 (not (= lambda!57579 lambda!57576))))

(assert (=> bs!334219 (not (= lambda!57579 lambda!57518))))

(assert (=> d!385359 true))

(assert (=> d!385359 (= (matchR!1704 lt!449588 lt!449598) (exists!452 lt!449590 lambda!57579))))

(assert (=> d!385359 true))

(declare-fun _$85!137 () Unit!19983)

(assert (=> d!385359 (= (choose!8357 lt!449588 lt!449590 lt!449598) _$85!137)))

(declare-fun bs!334222 () Bool)

(assert (= bs!334222 d!385359))

(assert (=> bs!334222 m!1520157))

(declare-fun m!1522263 () Bool)

(assert (=> bs!334222 m!1522263))

(assert (=> d!384819 d!385359))

(declare-fun d!385361 () Bool)

(declare-fun res!612422 () Bool)

(declare-fun e!869586 () Bool)

(assert (=> d!385361 (=> res!612422 e!869586)))

(assert (=> d!385361 (= res!612422 ((_ is Nil!13837) lt!449590))))

(assert (=> d!385361 (= (forall!3379 lt!449590 lambda!57518) e!869586)))

(declare-fun b!1358979 () Bool)

(declare-fun e!869587 () Bool)

(assert (=> b!1358979 (= e!869586 e!869587)))

(declare-fun res!612423 () Bool)

(assert (=> b!1358979 (=> (not res!612423) (not e!869587))))

(assert (=> b!1358979 (= res!612423 (dynLambda!6215 lambda!57518 (h!19238 lt!449590)))))

(declare-fun b!1358980 () Bool)

(assert (=> b!1358980 (= e!869587 (forall!3379 (t!120442 lt!449590) lambda!57518))))

(assert (= (and d!385361 (not res!612422)) b!1358979))

(assert (= (and b!1358979 res!612423) b!1358980))

(declare-fun b_lambda!41027 () Bool)

(assert (=> (not b_lambda!41027) (not b!1358979)))

(declare-fun m!1522265 () Bool)

(assert (=> b!1358979 m!1522265))

(declare-fun m!1522267 () Bool)

(assert (=> b!1358980 m!1522267))

(assert (=> d!384819 d!385361))

(assert (=> b!1357603 d!385301))

(declare-fun b!1358992 () Bool)

(declare-fun e!869593 () List!13901)

(assert (=> b!1358992 (= e!869593 (++!3562 (list!5311 (left!11848 (c!222694 lt!449596))) (list!5311 (right!12178 (c!222694 lt!449596)))))))

(declare-fun d!385363 () Bool)

(declare-fun c!223050 () Bool)

(assert (=> d!385363 (= c!223050 ((_ is Empty!4556) (c!222694 lt!449596)))))

(declare-fun e!869592 () List!13901)

(assert (=> d!385363 (= (list!5311 (c!222694 lt!449596)) e!869592)))

(declare-fun b!1358991 () Bool)

(declare-fun list!5314 (IArray!9117) List!13901)

(assert (=> b!1358991 (= e!869593 (list!5314 (xs!7279 (c!222694 lt!449596))))))

(declare-fun b!1358989 () Bool)

(assert (=> b!1358989 (= e!869592 Nil!13835)))

(declare-fun b!1358990 () Bool)

(assert (=> b!1358990 (= e!869592 e!869593)))

(declare-fun c!223051 () Bool)

(assert (=> b!1358990 (= c!223051 ((_ is Leaf!6951) (c!222694 lt!449596)))))

(assert (= (and d!385363 c!223050) b!1358989))

(assert (= (and d!385363 (not c!223050)) b!1358990))

(assert (= (and b!1358990 c!223051) b!1358991))

(assert (= (and b!1358990 (not c!223051)) b!1358992))

(declare-fun m!1522269 () Bool)

(assert (=> b!1358992 m!1522269))

(declare-fun m!1522271 () Bool)

(assert (=> b!1358992 m!1522271))

(assert (=> b!1358992 m!1522269))

(assert (=> b!1358992 m!1522271))

(declare-fun m!1522273 () Bool)

(assert (=> b!1358992 m!1522273))

(declare-fun m!1522275 () Bool)

(assert (=> b!1358991 m!1522275))

(assert (=> d!384773 d!385363))

(declare-fun d!385365 () Bool)

(assert (=> d!385365 (= (inv!17 (value!77947 t1!34)) (= (charsToBigInt!1 (text!17857 (value!77947 t1!34))) (value!77939 (value!77947 t1!34))))))

(declare-fun bs!334223 () Bool)

(assert (= bs!334223 d!385365))

(declare-fun m!1522277 () Bool)

(assert (=> bs!334223 m!1522277))

(assert (=> b!1358045 d!385365))

(declare-fun d!385367 () Bool)

(declare-fun charsToInt!0 (List!13900) (_ BitVec 32))

(assert (=> d!385367 (= (inv!16 (value!77947 t1!34)) (= (charsToInt!0 (text!17856 (value!77947 t1!34))) (value!77938 (value!77947 t1!34))))))

(declare-fun bs!334224 () Bool)

(assert (= bs!334224 d!385367))

(declare-fun m!1522279 () Bool)

(assert (=> bs!334224 m!1522279))

(assert (=> b!1358046 d!385367))

(declare-fun d!385369 () Bool)

(declare-fun nullableFct!274 (Regex!3711) Bool)

(assert (=> d!385369 (= (nullable!1190 lt!449588) (nullableFct!274 lt!449588))))

(declare-fun bs!334225 () Bool)

(assert (= bs!334225 d!385369))

(declare-fun m!1522281 () Bool)

(assert (=> bs!334225 m!1522281))

(assert (=> b!1357604 d!385369))

(declare-fun d!385371 () Bool)

(assert (=> d!385371 (= (list!5306 (_1!7593 lt!449826)) (list!5310 (c!222696 (_1!7593 lt!449826))))))

(declare-fun bs!334226 () Bool)

(assert (= bs!334226 d!385371))

(declare-fun m!1522283 () Bool)

(assert (=> bs!334226 m!1522283))

(assert (=> b!1358082 d!385371))

(assert (=> b!1358082 d!384785))

(assert (=> b!1358082 d!384789))

(declare-fun d!385373 () Bool)

(assert (=> d!385373 (= (isEmpty!8306 (list!5307 (_2!7593 lt!449591))) ((_ is Nil!13835) (list!5307 (_2!7593 lt!449591))))))

(assert (=> d!384767 d!385373))

(declare-fun d!385375 () Bool)

(assert (=> d!385375 (= (list!5307 (_2!7593 lt!449591)) (list!5311 (c!222694 (_2!7593 lt!449591))))))

(declare-fun bs!334227 () Bool)

(assert (= bs!334227 d!385375))

(declare-fun m!1522285 () Bool)

(assert (=> bs!334227 m!1522285))

(assert (=> d!384767 d!385375))

(declare-fun d!385377 () Bool)

(declare-fun lt!450104 () Bool)

(assert (=> d!385377 (= lt!450104 (isEmpty!8306 (list!5311 (c!222694 (_2!7593 lt!449591)))))))

(assert (=> d!385377 (= lt!450104 (= (size!11329 (c!222694 (_2!7593 lt!449591))) 0))))

(assert (=> d!385377 (= (isEmpty!8308 (c!222694 (_2!7593 lt!449591))) lt!450104)))

(declare-fun bs!334228 () Bool)

(assert (= bs!334228 d!385377))

(assert (=> bs!334228 m!1522285))

(assert (=> bs!334228 m!1522285))

(declare-fun m!1522287 () Bool)

(assert (=> bs!334228 m!1522287))

(declare-fun m!1522289 () Bool)

(assert (=> bs!334228 m!1522289))

(assert (=> d!384767 d!385377))

(declare-fun bs!334229 () Bool)

(declare-fun d!385379 () Bool)

(assert (= bs!334229 (and d!385379 b!1357457)))

(declare-fun lambda!57580 () Int)

(assert (=> bs!334229 (not (= lambda!57580 lambda!57487))))

(declare-fun bs!334230 () Bool)

(assert (= bs!334230 (and d!385379 d!384821)))

(assert (=> bs!334230 (= (= lambda!57525 lambda!57487) (= lambda!57580 lambda!57522))))

(declare-fun bs!334231 () Bool)

(assert (= bs!334231 (and d!385379 d!384823)))

(assert (=> bs!334231 (not (= lambda!57580 lambda!57525))))

(declare-fun bs!334232 () Bool)

(assert (= bs!334232 (and d!385379 d!385319)))

(assert (=> bs!334232 (not (= lambda!57580 lambda!57573))))

(assert (=> d!385379 true))

(assert (=> d!385379 (< (dynLambda!6218 order!8371 lambda!57525) (dynLambda!6218 order!8371 lambda!57580))))

(assert (=> d!385379 (= (exists!453 rules!2550 lambda!57525) (not (forall!3380 rules!2550 lambda!57580)))))

(declare-fun bs!334233 () Bool)

(assert (= bs!334233 d!385379))

(declare-fun m!1522291 () Bool)

(assert (=> bs!334233 m!1522291))

(assert (=> d!384823 d!385379))

(declare-fun bs!334234 () Bool)

(declare-fun d!385381 () Bool)

(assert (= bs!334234 (and d!385381 d!385379)))

(declare-fun lambda!57583 () Int)

(assert (=> bs!334234 (not (= lambda!57583 lambda!57580))))

(declare-fun bs!334235 () Bool)

(assert (= bs!334235 (and d!385381 d!385319)))

(assert (=> bs!334235 (not (= lambda!57583 lambda!57573))))

(declare-fun bs!334236 () Bool)

(assert (= bs!334236 (and d!385381 d!384821)))

(assert (=> bs!334236 (not (= lambda!57583 lambda!57522))))

(declare-fun bs!334237 () Bool)

(assert (= bs!334237 (and d!385381 d!384823)))

(assert (=> bs!334237 (= lambda!57583 lambda!57525)))

(declare-fun bs!334238 () Bool)

(assert (= bs!334238 (and d!385381 b!1357457)))

(assert (=> bs!334238 (not (= lambda!57583 lambda!57487))))

(assert (=> d!385381 true))

(assert (=> d!385381 true))

(assert (=> d!385381 (< (dynLambda!6219 order!8373 lambda!57485) (dynLambda!6218 order!8371 lambda!57583))))

(assert (=> d!385381 (exists!453 rules!2550 lambda!57583)))

(assert (=> d!385381 true))

(declare-fun _$24!94 () Unit!19983)

(assert (=> d!385381 (= (choose!8358 rules!2550 lambda!57485 lt!449582) _$24!94)))

(declare-fun bs!334239 () Bool)

(assert (= bs!334239 d!385381))

(declare-fun m!1522293 () Bool)

(assert (=> bs!334239 m!1522293))

(assert (=> d!384823 d!385381))

(assert (=> d!384823 d!384775))

(assert (=> d!384823 d!384777))

(declare-fun d!385383 () Bool)

(declare-fun lt!450105 () Bool)

(assert (=> d!385383 (= lt!450105 (select (content!2000 (t!120440 lt!449598)) lt!449592))))

(declare-fun e!869595 () Bool)

(assert (=> d!385383 (= lt!450105 e!869595)))

(declare-fun res!612425 () Bool)

(assert (=> d!385383 (=> (not res!612425) (not e!869595))))

(assert (=> d!385383 (= res!612425 ((_ is Cons!13835) (t!120440 lt!449598)))))

(assert (=> d!385383 (= (contains!2568 (t!120440 lt!449598) lt!449592) lt!450105)))

(declare-fun b!1358995 () Bool)

(declare-fun e!869594 () Bool)

(assert (=> b!1358995 (= e!869595 e!869594)))

(declare-fun res!612424 () Bool)

(assert (=> b!1358995 (=> res!612424 e!869594)))

(assert (=> b!1358995 (= res!612424 (= (h!19236 (t!120440 lt!449598)) lt!449592))))

(declare-fun b!1358996 () Bool)

(assert (=> b!1358996 (= e!869594 (contains!2568 (t!120440 (t!120440 lt!449598)) lt!449592))))

(assert (= (and d!385383 res!612425) b!1358995))

(assert (= (and b!1358995 (not res!612424)) b!1358996))

(assert (=> d!385383 m!1522195))

(declare-fun m!1522295 () Bool)

(assert (=> d!385383 m!1522295))

(declare-fun m!1522297 () Bool)

(assert (=> b!1358996 m!1522297))

(assert (=> b!1358061 d!385383))

(declare-fun d!385385 () Bool)

(declare-fun lt!450106 () Int)

(assert (=> d!385385 (>= lt!450106 0)))

(declare-fun e!869596 () Int)

(assert (=> d!385385 (= lt!450106 e!869596)))

(declare-fun c!223052 () Bool)

(assert (=> d!385385 (= c!223052 ((_ is Nil!13835) (_2!7595 lt!449738)))))

(assert (=> d!385385 (= (size!11328 (_2!7595 lt!449738)) lt!450106)))

(declare-fun b!1358997 () Bool)

(assert (=> b!1358997 (= e!869596 0)))

(declare-fun b!1358998 () Bool)

(assert (=> b!1358998 (= e!869596 (+ 1 (size!11328 (t!120440 (_2!7595 lt!449738)))))))

(assert (= (and d!385385 c!223052) b!1358997))

(assert (= (and d!385385 (not c!223052)) b!1358998))

(declare-fun m!1522299 () Bool)

(assert (=> b!1358998 m!1522299))

(assert (=> b!1357839 d!385385))

(declare-fun d!385387 () Bool)

(declare-fun lt!450107 () Int)

(assert (=> d!385387 (>= lt!450107 0)))

(declare-fun e!869597 () Int)

(assert (=> d!385387 (= lt!450107 e!869597)))

(declare-fun c!223053 () Bool)

(assert (=> d!385387 (= c!223053 ((_ is Nil!13835) (list!5307 lt!449596)))))

(assert (=> d!385387 (= (size!11328 (list!5307 lt!449596)) lt!450107)))

(declare-fun b!1358999 () Bool)

(assert (=> b!1358999 (= e!869597 0)))

(declare-fun b!1359000 () Bool)

(assert (=> b!1359000 (= e!869597 (+ 1 (size!11328 (t!120440 (list!5307 lt!449596)))))))

(assert (= (and d!385387 c!223053) b!1358999))

(assert (= (and d!385387 (not c!223053)) b!1359000))

(declare-fun m!1522301 () Bool)

(assert (=> b!1359000 m!1522301))

(assert (=> b!1357839 d!385387))

(declare-fun b!1359001 () Bool)

(declare-fun e!869599 () Option!2652)

(declare-fun lt!450112 () Option!2652)

(declare-fun lt!450111 () Option!2652)

(assert (=> b!1359001 (= e!869599 (ite (and ((_ is None!2651) lt!450112) ((_ is None!2651) lt!450111)) None!2651 (ite ((_ is None!2651) lt!450111) lt!450112 (ite ((_ is None!2651) lt!450112) lt!450111 (ite (>= (size!11319 (_1!7594 (v!21393 lt!450112))) (size!11319 (_1!7594 (v!21393 lt!450111)))) lt!450112 lt!450111)))))))

(declare-fun call!91348 () Option!2652)

(assert (=> b!1359001 (= lt!450112 call!91348)))

(assert (=> b!1359001 (= lt!450111 (maxPrefix!1074 thiss!19762 (t!120441 (t!120441 rules!2550)) lt!449599))))

(declare-fun b!1359002 () Bool)

(assert (=> b!1359002 (= e!869599 call!91348)))

(declare-fun d!385389 () Bool)

(declare-fun e!869600 () Bool)

(assert (=> d!385389 e!869600))

(declare-fun res!612431 () Bool)

(assert (=> d!385389 (=> res!612431 e!869600)))

(declare-fun lt!450110 () Option!2652)

(assert (=> d!385389 (= res!612431 (isEmpty!8310 lt!450110))))

(assert (=> d!385389 (= lt!450110 e!869599)))

(declare-fun c!223054 () Bool)

(assert (=> d!385389 (= c!223054 (and ((_ is Cons!13836) (t!120441 rules!2550)) ((_ is Nil!13836) (t!120441 (t!120441 rules!2550)))))))

(declare-fun lt!450108 () Unit!19983)

(declare-fun lt!450109 () Unit!19983)

(assert (=> d!385389 (= lt!450108 lt!450109)))

(assert (=> d!385389 (isPrefix!1120 lt!449599 lt!449599)))

(assert (=> d!385389 (= lt!450109 (lemmaIsPrefixRefl!782 lt!449599 lt!449599))))

(assert (=> d!385389 (rulesValidInductive!761 thiss!19762 (t!120441 rules!2550))))

(assert (=> d!385389 (= (maxPrefix!1074 thiss!19762 (t!120441 rules!2550) lt!449599) lt!450110)))

(declare-fun b!1359003 () Bool)

(declare-fun e!869598 () Bool)

(assert (=> b!1359003 (= e!869598 (contains!2569 (t!120441 rules!2550) (rule!4146 (_1!7594 (get!4332 lt!450110)))))))

(declare-fun b!1359004 () Bool)

(assert (=> b!1359004 (= e!869600 e!869598)))

(declare-fun res!612426 () Bool)

(assert (=> b!1359004 (=> (not res!612426) (not e!869598))))

(assert (=> b!1359004 (= res!612426 (isDefined!2208 lt!450110))))

(declare-fun b!1359005 () Bool)

(declare-fun res!612432 () Bool)

(assert (=> b!1359005 (=> (not res!612432) (not e!869598))))

(assert (=> b!1359005 (= res!612432 (= (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!450110)))) (originalCharacters!3259 (_1!7594 (get!4332 lt!450110)))))))

(declare-fun b!1359006 () Bool)

(declare-fun res!612429 () Bool)

(assert (=> b!1359006 (=> (not res!612429) (not e!869598))))

(assert (=> b!1359006 (= res!612429 (= (++!3562 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!450110)))) (_2!7594 (get!4332 lt!450110))) lt!449599))))

(declare-fun bm!91343 () Bool)

(assert (=> bm!91343 (= call!91348 (maxPrefixOneRule!608 thiss!19762 (h!19237 (t!120441 rules!2550)) lt!449599))))

(declare-fun b!1359007 () Bool)

(declare-fun res!612427 () Bool)

(assert (=> b!1359007 (=> (not res!612427) (not e!869598))))

(assert (=> b!1359007 (= res!612427 (< (size!11328 (_2!7594 (get!4332 lt!450110))) (size!11328 lt!449599)))))

(declare-fun b!1359008 () Bool)

(declare-fun res!612428 () Bool)

(assert (=> b!1359008 (=> (not res!612428) (not e!869598))))

(assert (=> b!1359008 (= res!612428 (= (value!77947 (_1!7594 (get!4332 lt!450110))) (apply!3352 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!450110)))) (seqFromList!1626 (originalCharacters!3259 (_1!7594 (get!4332 lt!450110)))))))))

(declare-fun b!1359009 () Bool)

(declare-fun res!612430 () Bool)

(assert (=> b!1359009 (=> (not res!612430) (not e!869598))))

(assert (=> b!1359009 (= res!612430 (matchR!1704 (regex!2397 (rule!4146 (_1!7594 (get!4332 lt!450110)))) (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!450110))))))))

(assert (= (and d!385389 c!223054) b!1359002))

(assert (= (and d!385389 (not c!223054)) b!1359001))

(assert (= (or b!1359002 b!1359001) bm!91343))

(assert (= (and d!385389 (not res!612431)) b!1359004))

(assert (= (and b!1359004 res!612426) b!1359005))

(assert (= (and b!1359005 res!612432) b!1359007))

(assert (= (and b!1359007 res!612427) b!1359006))

(assert (= (and b!1359006 res!612429) b!1359008))

(assert (= (and b!1359008 res!612428) b!1359009))

(assert (= (and b!1359009 res!612430) b!1359003))

(declare-fun m!1522303 () Bool)

(assert (=> b!1359008 m!1522303))

(declare-fun m!1522305 () Bool)

(assert (=> b!1359008 m!1522305))

(assert (=> b!1359008 m!1522305))

(declare-fun m!1522307 () Bool)

(assert (=> b!1359008 m!1522307))

(declare-fun m!1522309 () Bool)

(assert (=> b!1359004 m!1522309))

(declare-fun m!1522311 () Bool)

(assert (=> b!1359001 m!1522311))

(assert (=> b!1359009 m!1522303))

(declare-fun m!1522313 () Bool)

(assert (=> b!1359009 m!1522313))

(assert (=> b!1359009 m!1522313))

(declare-fun m!1522315 () Bool)

(assert (=> b!1359009 m!1522315))

(assert (=> b!1359009 m!1522315))

(declare-fun m!1522317 () Bool)

(assert (=> b!1359009 m!1522317))

(assert (=> b!1359003 m!1522303))

(declare-fun m!1522319 () Bool)

(assert (=> b!1359003 m!1522319))

(assert (=> b!1359005 m!1522303))

(assert (=> b!1359005 m!1522313))

(assert (=> b!1359005 m!1522313))

(assert (=> b!1359005 m!1522315))

(declare-fun m!1522321 () Bool)

(assert (=> d!385389 m!1522321))

(assert (=> d!385389 m!1520845))

(assert (=> d!385389 m!1520847))

(assert (=> d!385389 m!1522185))

(assert (=> b!1359006 m!1522303))

(assert (=> b!1359006 m!1522313))

(assert (=> b!1359006 m!1522313))

(assert (=> b!1359006 m!1522315))

(assert (=> b!1359006 m!1522315))

(declare-fun m!1522323 () Bool)

(assert (=> b!1359006 m!1522323))

(assert (=> b!1359007 m!1522303))

(declare-fun m!1522325 () Bool)

(assert (=> b!1359007 m!1522325))

(assert (=> b!1359007 m!1520855))

(declare-fun m!1522327 () Bool)

(assert (=> bm!91343 m!1522327))

(assert (=> b!1357976 d!385389))

(assert (=> d!384831 d!385113))

(declare-fun d!385391 () Bool)

(declare-fun c!223057 () Bool)

(assert (=> d!385391 (= c!223057 ((_ is Node!4556) (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34)))))))

(declare-fun e!869605 () Bool)

(assert (=> d!385391 (= (inv!18182 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34)))) e!869605)))

(declare-fun b!1359016 () Bool)

(declare-fun inv!18186 (Conc!4556) Bool)

(assert (=> b!1359016 (= e!869605 (inv!18186 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34)))))))

(declare-fun b!1359017 () Bool)

(declare-fun e!869606 () Bool)

(assert (=> b!1359017 (= e!869605 e!869606)))

(declare-fun res!612435 () Bool)

(assert (=> b!1359017 (= res!612435 (not ((_ is Leaf!6951) (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34))))))))

(assert (=> b!1359017 (=> res!612435 e!869606)))

(declare-fun b!1359018 () Bool)

(declare-fun inv!18187 (Conc!4556) Bool)

(assert (=> b!1359018 (= e!869606 (inv!18187 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34)))))))

(assert (= (and d!385391 c!223057) b!1359016))

(assert (= (and d!385391 (not c!223057)) b!1359017))

(assert (= (and b!1359017 (not res!612435)) b!1359018))

(declare-fun m!1522329 () Bool)

(assert (=> b!1359016 m!1522329))

(declare-fun m!1522331 () Bool)

(assert (=> b!1359018 m!1522331))

(assert (=> b!1358001 d!385391))

(declare-fun d!385393 () Bool)

(declare-fun e!869609 () Bool)

(assert (=> d!385393 e!869609))

(declare-fun res!612444 () Bool)

(assert (=> d!385393 (=> (not res!612444) (not e!869609))))

(declare-fun appendAssocInst!275 (Conc!4556 Conc!4556) Bool)

(assert (=> d!385393 (= res!612444 (appendAssocInst!275 (c!222694 (charsOf!1369 t1!34)) (c!222694 (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0)))))))

(declare-fun lt!450115 () BalanceConc!9052)

(declare-fun ++!3567 (Conc!4556 Conc!4556) Conc!4556)

(assert (=> d!385393 (= lt!450115 (BalanceConc!9053 (++!3567 (c!222694 (charsOf!1369 t1!34)) (c!222694 (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0))))))))

(assert (=> d!385393 (= (++!3564 (charsOf!1369 t1!34) (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0))) lt!450115)))

(declare-fun b!1359028 () Bool)

(declare-fun res!612447 () Bool)

(assert (=> b!1359028 (=> (not res!612447) (not e!869609))))

(declare-fun height!655 (Conc!4556) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1359028 (= res!612447 (<= (height!655 (++!3567 (c!222694 (charsOf!1369 t1!34)) (c!222694 (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0))))) (+ (max!0 (height!655 (c!222694 (charsOf!1369 t1!34))) (height!655 (c!222694 (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0))))) 1)))))

(declare-fun b!1359030 () Bool)

(assert (=> b!1359030 (= e!869609 (= (list!5307 lt!450115) (++!3562 (list!5307 (charsOf!1369 t1!34)) (list!5307 (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0))))))))

(declare-fun b!1359029 () Bool)

(declare-fun res!612446 () Bool)

(assert (=> b!1359029 (=> (not res!612446) (not e!869609))))

(assert (=> b!1359029 (= res!612446 (>= (height!655 (++!3567 (c!222694 (charsOf!1369 t1!34)) (c!222694 (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0))))) (max!0 (height!655 (c!222694 (charsOf!1369 t1!34))) (height!655 (c!222694 (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0)))))))))

(declare-fun b!1359027 () Bool)

(declare-fun res!612445 () Bool)

(assert (=> b!1359027 (=> (not res!612445) (not e!869609))))

(assert (=> b!1359027 (= res!612445 (isBalanced!1334 (++!3567 (c!222694 (charsOf!1369 t1!34)) (c!222694 (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0))))))))

(assert (= (and d!385393 res!612444) b!1359027))

(assert (= (and b!1359027 res!612445) b!1359028))

(assert (= (and b!1359028 res!612447) b!1359029))

(assert (= (and b!1359029 res!612446) b!1359030))

(declare-fun m!1522333 () Bool)

(assert (=> d!385393 m!1522333))

(declare-fun m!1522335 () Bool)

(assert (=> d!385393 m!1522335))

(declare-fun m!1522337 () Bool)

(assert (=> b!1359030 m!1522337))

(assert (=> b!1359030 m!1520141))

(declare-fun m!1522339 () Bool)

(assert (=> b!1359030 m!1522339))

(assert (=> b!1359030 m!1520643))

(declare-fun m!1522341 () Bool)

(assert (=> b!1359030 m!1522341))

(assert (=> b!1359030 m!1522339))

(assert (=> b!1359030 m!1522341))

(declare-fun m!1522343 () Bool)

(assert (=> b!1359030 m!1522343))

(declare-fun m!1522345 () Bool)

(assert (=> b!1359028 m!1522345))

(declare-fun m!1522347 () Bool)

(assert (=> b!1359028 m!1522347))

(declare-fun m!1522349 () Bool)

(assert (=> b!1359028 m!1522349))

(assert (=> b!1359028 m!1522347))

(assert (=> b!1359028 m!1522335))

(declare-fun m!1522351 () Bool)

(assert (=> b!1359028 m!1522351))

(assert (=> b!1359028 m!1522345))

(assert (=> b!1359028 m!1522335))

(assert (=> b!1359029 m!1522345))

(assert (=> b!1359029 m!1522347))

(assert (=> b!1359029 m!1522349))

(assert (=> b!1359029 m!1522347))

(assert (=> b!1359029 m!1522335))

(assert (=> b!1359029 m!1522351))

(assert (=> b!1359029 m!1522345))

(assert (=> b!1359029 m!1522335))

(assert (=> b!1359027 m!1522335))

(assert (=> b!1359027 m!1522335))

(declare-fun m!1522353 () Bool)

(assert (=> b!1359027 m!1522353))

(assert (=> d!384753 d!385393))

(declare-fun d!385395 () Bool)

(declare-fun lt!450184 () Bool)

(assert (=> d!385395 (= lt!450184 (prefixMatch!220 (rulesRegex!280 thiss!19762 rules!2550) (list!5307 (++!3564 (charsOf!1369 t1!34) (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0))))))))

(declare-datatypes ((Context!1194 0))(
  ( (Context!1195 (exprs!1097 List!13903)) )
))
(declare-fun prefixMatchZipperSequence!246 ((InoxSet Context!1194) BalanceConc!9052 Int) Bool)

(declare-fun focus!88 (Regex!3711) (InoxSet Context!1194))

(assert (=> d!385395 (= lt!450184 (prefixMatchZipperSequence!246 (focus!88 (rulesRegex!280 thiss!19762 rules!2550)) (++!3564 (charsOf!1369 t1!34) (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0))) 0))))

(declare-fun lt!450179 () Unit!19983)

(declare-fun lt!450181 () Unit!19983)

(assert (=> d!385395 (= lt!450179 lt!450181)))

(declare-fun lt!450180 () (InoxSet Context!1194))

(declare-fun lt!450185 () List!13901)

(declare-fun prefixMatchZipper!68 ((InoxSet Context!1194) List!13901) Bool)

(assert (=> d!385395 (= (prefixMatch!220 (rulesRegex!280 thiss!19762 rules!2550) lt!450185) (prefixMatchZipper!68 lt!450180 lt!450185))))

(declare-datatypes ((List!13908 0))(
  ( (Nil!13842) (Cons!13842 (h!19243 Context!1194) (t!120549 List!13908)) )
))
(declare-fun lt!450182 () List!13908)

(declare-fun prefixMatchZipperRegexEquiv!68 ((InoxSet Context!1194) List!13908 Regex!3711 List!13901) Unit!19983)

(assert (=> d!385395 (= lt!450181 (prefixMatchZipperRegexEquiv!68 lt!450180 lt!450182 (rulesRegex!280 thiss!19762 rules!2550) lt!450185))))

(assert (=> d!385395 (= lt!450185 (list!5307 (++!3564 (charsOf!1369 t1!34) (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0)))))))

(declare-fun toList!752 ((InoxSet Context!1194)) List!13908)

(assert (=> d!385395 (= lt!450182 (toList!752 (focus!88 (rulesRegex!280 thiss!19762 rules!2550))))))

(assert (=> d!385395 (= lt!450180 (focus!88 (rulesRegex!280 thiss!19762 rules!2550)))))

(declare-fun lt!450177 () Unit!19983)

(declare-fun lt!450178 () Unit!19983)

(assert (=> d!385395 (= lt!450177 lt!450178)))

(declare-fun lt!450176 () (InoxSet Context!1194))

(declare-fun lt!450183 () Int)

(declare-fun dropList!397 (BalanceConc!9052 Int) List!13901)

(assert (=> d!385395 (= (prefixMatchZipper!68 lt!450176 (dropList!397 (++!3564 (charsOf!1369 t1!34) (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0))) lt!450183)) (prefixMatchZipperSequence!246 lt!450176 (++!3564 (charsOf!1369 t1!34) (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0))) lt!450183))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!68 ((InoxSet Context!1194) BalanceConc!9052 Int) Unit!19983)

(assert (=> d!385395 (= lt!450178 (lemmaprefixMatchZipperSequenceEquivalent!68 lt!450176 (++!3564 (charsOf!1369 t1!34) (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0))) lt!450183))))

(assert (=> d!385395 (= lt!450183 0)))

(assert (=> d!385395 (= lt!450176 (focus!88 (rulesRegex!280 thiss!19762 rules!2550)))))

(assert (=> d!385395 (validRegex!1611 (rulesRegex!280 thiss!19762 rules!2550))))

(assert (=> d!385395 (= (prefixMatchZipperSequence!244 (rulesRegex!280 thiss!19762 rules!2550) (++!3564 (charsOf!1369 t1!34) (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0)))) lt!450184)))

(declare-fun bs!334240 () Bool)

(assert (= bs!334240 d!385395))

(assert (=> bs!334240 m!1520645))

(declare-fun m!1522355 () Bool)

(assert (=> bs!334240 m!1522355))

(declare-fun m!1522357 () Bool)

(assert (=> bs!334240 m!1522357))

(declare-fun m!1522359 () Bool)

(assert (=> bs!334240 m!1522359))

(assert (=> bs!334240 m!1520147))

(declare-fun m!1522361 () Bool)

(assert (=> bs!334240 m!1522361))

(assert (=> bs!334240 m!1520147))

(declare-fun m!1522363 () Bool)

(assert (=> bs!334240 m!1522363))

(assert (=> bs!334240 m!1520147))

(declare-fun m!1522365 () Bool)

(assert (=> bs!334240 m!1522365))

(declare-fun m!1522367 () Bool)

(assert (=> bs!334240 m!1522367))

(assert (=> bs!334240 m!1520645))

(assert (=> bs!334240 m!1522365))

(declare-fun m!1522369 () Bool)

(assert (=> bs!334240 m!1522369))

(declare-fun m!1522371 () Bool)

(assert (=> bs!334240 m!1522371))

(assert (=> bs!334240 m!1520147))

(declare-fun m!1522373 () Bool)

(assert (=> bs!334240 m!1522373))

(assert (=> bs!334240 m!1522369))

(assert (=> bs!334240 m!1520645))

(declare-fun m!1522375 () Bool)

(assert (=> bs!334240 m!1522375))

(assert (=> bs!334240 m!1520645))

(declare-fun m!1522377 () Bool)

(assert (=> bs!334240 m!1522377))

(assert (=> bs!334240 m!1520645))

(assert (=> bs!334240 m!1522357))

(declare-fun m!1522379 () Bool)

(assert (=> bs!334240 m!1522379))

(assert (=> bs!334240 m!1520147))

(assert (=> bs!334240 m!1522369))

(assert (=> d!384753 d!385395))

(declare-fun d!385397 () Bool)

(declare-fun e!869620 () Bool)

(assert (=> d!385397 e!869620))

(declare-fun res!612452 () Bool)

(assert (=> d!385397 (=> (not res!612452) (not e!869620))))

(declare-fun lt!450216 () BalanceConc!9052)

(assert (=> d!385397 (= res!612452 (= (list!5307 lt!450216) (Cons!13835 (apply!3347 (charsOf!1369 t2!34) 0) Nil!13835)))))

(declare-fun singleton!440 (C!7712) BalanceConc!9052)

(assert (=> d!385397 (= lt!450216 (singleton!440 (apply!3347 (charsOf!1369 t2!34) 0)))))

(assert (=> d!385397 (= (singletonSeq!1022 (apply!3347 (charsOf!1369 t2!34) 0)) lt!450216)))

(declare-fun b!1359047 () Bool)

(assert (=> b!1359047 (= e!869620 (isBalanced!1334 (c!222694 lt!450216)))))

(assert (= (and d!385397 res!612452) b!1359047))

(declare-fun m!1522381 () Bool)

(assert (=> d!385397 m!1522381))

(assert (=> d!385397 m!1520641))

(declare-fun m!1522383 () Bool)

(assert (=> d!385397 m!1522383))

(declare-fun m!1522385 () Bool)

(assert (=> b!1359047 m!1522385))

(assert (=> d!384753 d!385397))

(assert (=> d!384753 d!384851))

(declare-fun d!385399 () Bool)

(declare-fun lt!450217 () C!7712)

(assert (=> d!385399 (= lt!450217 (apply!3354 (list!5307 (charsOf!1369 t2!34)) 0))))

(assert (=> d!385399 (= lt!450217 (apply!3355 (c!222694 (charsOf!1369 t2!34)) 0))))

(declare-fun e!869621 () Bool)

(assert (=> d!385399 e!869621))

(declare-fun res!612453 () Bool)

(assert (=> d!385399 (=> (not res!612453) (not e!869621))))

(assert (=> d!385399 (= res!612453 (<= 0 0))))

(assert (=> d!385399 (= (apply!3347 (charsOf!1369 t2!34) 0) lt!450217)))

(declare-fun b!1359048 () Bool)

(assert (=> b!1359048 (= e!869621 (< 0 (size!11320 (charsOf!1369 t2!34))))))

(assert (= (and d!385399 res!612453) b!1359048))

(assert (=> d!385399 m!1520189))

(declare-fun m!1522387 () Bool)

(assert (=> d!385399 m!1522387))

(assert (=> d!385399 m!1522387))

(declare-fun m!1522389 () Bool)

(assert (=> d!385399 m!1522389))

(declare-fun m!1522391 () Bool)

(assert (=> d!385399 m!1522391))

(assert (=> b!1359048 m!1520189))

(declare-fun m!1522393 () Bool)

(assert (=> b!1359048 m!1522393))

(assert (=> d!384753 d!385399))

(assert (=> d!384753 d!384847))

(assert (=> d!384753 d!384749))

(declare-fun bs!334241 () Bool)

(declare-fun d!385401 () Bool)

(assert (= bs!334241 (and d!385401 d!385379)))

(declare-fun lambda!57586 () Int)

(assert (=> bs!334241 (not (= lambda!57586 lambda!57580))))

(declare-fun bs!334242 () Bool)

(assert (= bs!334242 (and d!385401 d!385319)))

(assert (=> bs!334242 (= lambda!57586 lambda!57573)))

(declare-fun bs!334243 () Bool)

(assert (= bs!334243 (and d!385401 d!384821)))

(assert (=> bs!334243 (not (= lambda!57586 lambda!57522))))

(declare-fun bs!334244 () Bool)

(assert (= bs!334244 (and d!385401 d!385381)))

(assert (=> bs!334244 (not (= lambda!57586 lambda!57583))))

(declare-fun bs!334245 () Bool)

(assert (= bs!334245 (and d!385401 d!384823)))

(assert (=> bs!334245 (not (= lambda!57586 lambda!57525))))

(declare-fun bs!334246 () Bool)

(assert (= bs!334246 (and d!385401 b!1357457)))

(assert (=> bs!334246 (not (= lambda!57586 lambda!57487))))

(assert (=> d!385401 true))

(declare-fun lt!450220 () Bool)

(assert (=> d!385401 (= lt!450220 (rulesValidInductive!761 thiss!19762 rules!2550))))

(assert (=> d!385401 (= lt!450220 (forall!3380 rules!2550 lambda!57586))))

(assert (=> d!385401 (= (rulesValid!889 thiss!19762 rules!2550) lt!450220)))

(declare-fun bs!334247 () Bool)

(assert (= bs!334247 d!385401))

(assert (=> bs!334247 m!1520849))

(declare-fun m!1522395 () Bool)

(assert (=> bs!334247 m!1522395))

(assert (=> d!384867 d!385401))

(declare-fun b!1359052 () Bool)

(declare-fun e!869623 () List!13901)

(assert (=> b!1359052 (= e!869623 (++!3562 (list!5311 (left!11848 (c!222694 lt!449589))) (list!5311 (right!12178 (c!222694 lt!449589)))))))

(declare-fun d!385403 () Bool)

(declare-fun c!223067 () Bool)

(assert (=> d!385403 (= c!223067 ((_ is Empty!4556) (c!222694 lt!449589)))))

(declare-fun e!869622 () List!13901)

(assert (=> d!385403 (= (list!5311 (c!222694 lt!449589)) e!869622)))

(declare-fun b!1359051 () Bool)

(assert (=> b!1359051 (= e!869623 (list!5314 (xs!7279 (c!222694 lt!449589))))))

(declare-fun b!1359049 () Bool)

(assert (=> b!1359049 (= e!869622 Nil!13835)))

(declare-fun b!1359050 () Bool)

(assert (=> b!1359050 (= e!869622 e!869623)))

(declare-fun c!223068 () Bool)

(assert (=> b!1359050 (= c!223068 ((_ is Leaf!6951) (c!222694 lt!449589)))))

(assert (= (and d!385403 c!223067) b!1359049))

(assert (= (and d!385403 (not c!223067)) b!1359050))

(assert (= (and b!1359050 c!223068) b!1359051))

(assert (= (and b!1359050 (not c!223068)) b!1359052))

(declare-fun m!1522397 () Bool)

(assert (=> b!1359052 m!1522397))

(declare-fun m!1522399 () Bool)

(assert (=> b!1359052 m!1522399))

(assert (=> b!1359052 m!1522397))

(assert (=> b!1359052 m!1522399))

(declare-fun m!1522401 () Bool)

(assert (=> b!1359052 m!1522401))

(declare-fun m!1522403 () Bool)

(assert (=> b!1359051 m!1522403))

(assert (=> d!384843 d!385403))

(declare-fun d!385405 () Bool)

(declare-fun lt!450224 () C!7712)

(assert (=> d!385405 (contains!2568 (list!5307 lt!449589) lt!450224)))

(declare-fun e!869629 () C!7712)

(assert (=> d!385405 (= lt!450224 e!869629)))

(declare-fun c!223071 () Bool)

(assert (=> d!385405 (= c!223071 (= 0 0))))

(declare-fun e!869628 () Bool)

(assert (=> d!385405 e!869628))

(declare-fun res!612457 () Bool)

(assert (=> d!385405 (=> (not res!612457) (not e!869628))))

(assert (=> d!385405 (= res!612457 (<= 0 0))))

(assert (=> d!385405 (= (apply!3354 (list!5307 lt!449589) 0) lt!450224)))

(declare-fun b!1359059 () Bool)

(assert (=> b!1359059 (= e!869628 (< 0 (size!11328 (list!5307 lt!449589))))))

(declare-fun b!1359060 () Bool)

(assert (=> b!1359060 (= e!869629 (head!2437 (list!5307 lt!449589)))))

(declare-fun b!1359061 () Bool)

(assert (=> b!1359061 (= e!869629 (apply!3354 (tail!1961 (list!5307 lt!449589)) (- 0 1)))))

(assert (= (and d!385405 res!612457) b!1359059))

(assert (= (and d!385405 c!223071) b!1359060))

(assert (= (and d!385405 (not c!223071)) b!1359061))

(assert (=> d!385405 m!1520145))

(declare-fun m!1522405 () Bool)

(assert (=> d!385405 m!1522405))

(assert (=> b!1359059 m!1520145))

(assert (=> b!1359059 m!1522217))

(assert (=> b!1359060 m!1520145))

(declare-fun m!1522407 () Bool)

(assert (=> b!1359060 m!1522407))

(assert (=> b!1359061 m!1520145))

(declare-fun m!1522409 () Bool)

(assert (=> b!1359061 m!1522409))

(assert (=> b!1359061 m!1522409))

(declare-fun m!1522411 () Bool)

(assert (=> b!1359061 m!1522411))

(assert (=> d!384839 d!385405))

(assert (=> d!384839 d!384843))

(declare-fun bm!91347 () Bool)

(declare-fun c!223087 () Bool)

(declare-fun c!223088 () Bool)

(assert (=> bm!91347 (= c!223087 c!223088)))

(declare-fun call!91352 () C!7712)

(declare-fun e!869653 () Int)

(assert (=> bm!91347 (= call!91352 (apply!3355 (ite c!223088 (left!11848 (c!222694 lt!449589)) (right!12178 (c!222694 lt!449589))) e!869653))))

(declare-fun b!1359103 () Bool)

(declare-fun e!869655 () C!7712)

(declare-fun e!869652 () C!7712)

(assert (=> b!1359103 (= e!869655 e!869652)))

(declare-fun lt!450271 () Bool)

(declare-fun appendIndex!161 (List!13901 List!13901 Int) Bool)

(assert (=> b!1359103 (= lt!450271 (appendIndex!161 (list!5311 (left!11848 (c!222694 lt!449589))) (list!5311 (right!12178 (c!222694 lt!449589))) 0))))

(assert (=> b!1359103 (= c!223088 (< 0 (size!11329 (left!11848 (c!222694 lt!449589)))))))

(declare-fun b!1359104 () Bool)

(assert (=> b!1359104 (= e!869652 call!91352)))

(declare-fun b!1359105 () Bool)

(declare-fun apply!3359 (IArray!9117 Int) C!7712)

(assert (=> b!1359105 (= e!869655 (apply!3359 (xs!7279 (c!222694 lt!449589)) 0))))

(declare-fun d!385407 () Bool)

(declare-fun lt!450270 () C!7712)

(assert (=> d!385407 (= lt!450270 (apply!3354 (list!5311 (c!222694 lt!449589)) 0))))

(assert (=> d!385407 (= lt!450270 e!869655)))

(declare-fun c!223086 () Bool)

(assert (=> d!385407 (= c!223086 ((_ is Leaf!6951) (c!222694 lt!449589)))))

(declare-fun e!869654 () Bool)

(assert (=> d!385407 e!869654))

(declare-fun res!612473 () Bool)

(assert (=> d!385407 (=> (not res!612473) (not e!869654))))

(assert (=> d!385407 (= res!612473 (<= 0 0))))

(assert (=> d!385407 (= (apply!3355 (c!222694 lt!449589) 0) lt!450270)))

(declare-fun b!1359106 () Bool)

(assert (=> b!1359106 (= e!869652 call!91352)))

(declare-fun b!1359107 () Bool)

(assert (=> b!1359107 (= e!869653 (- 0 (size!11329 (left!11848 (c!222694 lt!449589)))))))

(declare-fun b!1359108 () Bool)

(assert (=> b!1359108 (= e!869654 (< 0 (size!11329 (c!222694 lt!449589))))))

(declare-fun b!1359109 () Bool)

(assert (=> b!1359109 (= e!869653 0)))

(assert (= (and d!385407 res!612473) b!1359108))

(assert (= (and d!385407 c!223086) b!1359105))

(assert (= (and d!385407 (not c!223086)) b!1359103))

(assert (= (and b!1359103 c!223088) b!1359104))

(assert (= (and b!1359103 (not c!223088)) b!1359106))

(assert (= (or b!1359104 b!1359106) bm!91347))

(assert (= (and bm!91347 c!223087) b!1359109))

(assert (= (and bm!91347 (not c!223087)) b!1359107))

(assert (=> b!1359108 m!1522219))

(assert (=> b!1359103 m!1522397))

(assert (=> b!1359103 m!1522399))

(assert (=> b!1359103 m!1522397))

(assert (=> b!1359103 m!1522399))

(declare-fun m!1522561 () Bool)

(assert (=> b!1359103 m!1522561))

(declare-fun m!1522563 () Bool)

(assert (=> b!1359103 m!1522563))

(assert (=> b!1359107 m!1522563))

(assert (=> d!385407 m!1520933))

(assert (=> d!385407 m!1520933))

(declare-fun m!1522565 () Bool)

(assert (=> d!385407 m!1522565))

(declare-fun m!1522567 () Bool)

(assert (=> bm!91347 m!1522567))

(declare-fun m!1522569 () Bool)

(assert (=> b!1359105 m!1522569))

(assert (=> d!384839 d!385407))

(assert (=> d!384697 d!384821))

(declare-fun b!1359132 () Bool)

(declare-fun e!869673 () Bool)

(declare-fun e!869675 () Bool)

(assert (=> b!1359132 (= e!869673 e!869675)))

(declare-fun res!612483 () Bool)

(assert (=> b!1359132 (= res!612483 (not ((_ is Cons!13836) rules!2550)))))

(assert (=> b!1359132 (=> res!612483 e!869675)))

(declare-fun b!1359133 () Bool)

(declare-fun e!869674 () Bool)

(declare-fun call!91355 () Bool)

(assert (=> b!1359133 (= e!869674 call!91355)))

(declare-fun bm!91350 () Bool)

(assert (=> bm!91350 (= call!91355 (ruleDisjointCharsFromAllFromOtherType!362 (h!19237 rules!2550) (t!120441 rules!2550)))))

(declare-fun b!1359135 () Bool)

(assert (=> b!1359135 (= e!869673 e!869674)))

(declare-fun res!612482 () Bool)

(declare-fun rulesUseDisjointChars!176 (Rule!4594 Rule!4594) Bool)

(assert (=> b!1359135 (= res!612482 (rulesUseDisjointChars!176 (h!19237 rules!2550) (h!19237 rules!2550)))))

(assert (=> b!1359135 (=> (not res!612482) (not e!869674))))

(declare-fun b!1359134 () Bool)

(assert (=> b!1359134 (= e!869675 call!91355)))

(declare-fun d!385427 () Bool)

(declare-fun c!223095 () Bool)

(assert (=> d!385427 (= c!223095 (and ((_ is Cons!13836) rules!2550) (not (= (isSeparator!2397 (h!19237 rules!2550)) (isSeparator!2397 (h!19237 rules!2550))))))))

(assert (=> d!385427 (= (ruleDisjointCharsFromAllFromOtherType!362 (h!19237 rules!2550) rules!2550) e!869673)))

(assert (= (and d!385427 c!223095) b!1359135))

(assert (= (and d!385427 (not c!223095)) b!1359132))

(assert (= (and b!1359135 res!612482) b!1359133))

(assert (= (and b!1359132 (not res!612483)) b!1359134))

(assert (= (or b!1359133 b!1359134) bm!91350))

(declare-fun m!1522589 () Bool)

(assert (=> bm!91350 m!1522589))

(declare-fun m!1522591 () Bool)

(assert (=> b!1359135 m!1522591))

(assert (=> b!1358051 d!385427))

(declare-fun d!385443 () Bool)

(declare-fun lt!450277 () Int)

(assert (=> d!385443 (>= lt!450277 0)))

(declare-fun e!869676 () Int)

(assert (=> d!385443 (= lt!450277 e!869676)))

(declare-fun c!223096 () Bool)

(assert (=> d!385443 (= c!223096 ((_ is Nil!13835) (list!5307 lt!449593)))))

(assert (=> d!385443 (= (size!11328 (list!5307 lt!449593)) lt!450277)))

(declare-fun b!1359136 () Bool)

(assert (=> b!1359136 (= e!869676 0)))

(declare-fun b!1359137 () Bool)

(assert (=> b!1359137 (= e!869676 (+ 1 (size!11328 (t!120440 (list!5307 lt!449593)))))))

(assert (= (and d!385443 c!223096) b!1359136))

(assert (= (and d!385443 (not c!223096)) b!1359137))

(declare-fun m!1522595 () Bool)

(assert (=> b!1359137 m!1522595))

(assert (=> d!384747 d!385443))

(declare-fun d!385447 () Bool)

(assert (=> d!385447 (= (list!5307 lt!449593) (list!5311 (c!222694 lt!449593)))))

(declare-fun bs!334252 () Bool)

(assert (= bs!334252 d!385447))

(declare-fun m!1522597 () Bool)

(assert (=> bs!334252 m!1522597))

(assert (=> d!384747 d!385447))

(declare-fun d!385449 () Bool)

(declare-fun lt!450280 () Int)

(assert (=> d!385449 (= lt!450280 (size!11328 (list!5311 (c!222694 lt!449593))))))

(assert (=> d!385449 (= lt!450280 (ite ((_ is Empty!4556) (c!222694 lt!449593)) 0 (ite ((_ is Leaf!6951) (c!222694 lt!449593)) (csize!9343 (c!222694 lt!449593)) (csize!9342 (c!222694 lt!449593)))))))

(assert (=> d!385449 (= (size!11329 (c!222694 lt!449593)) lt!450280)))

(declare-fun bs!334254 () Bool)

(assert (= bs!334254 d!385449))

(assert (=> bs!334254 m!1522597))

(assert (=> bs!334254 m!1522597))

(declare-fun m!1522601 () Bool)

(assert (=> bs!334254 m!1522601))

(assert (=> d!384747 d!385449))

(declare-fun d!385453 () Bool)

(assert (=> d!385453 (= (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789)))) (list!5311 (c!222694 (charsOf!1369 (_1!7594 (get!4332 lt!449789))))))))

(declare-fun bs!334255 () Bool)

(assert (= bs!334255 d!385453))

(declare-fun m!1522603 () Bool)

(assert (=> bs!334255 m!1522603))

(assert (=> b!1357980 d!385453))

(declare-fun d!385457 () Bool)

(declare-fun lt!450282 () BalanceConc!9052)

(assert (=> d!385457 (= (list!5307 lt!450282) (originalCharacters!3259 (_1!7594 (get!4332 lt!449789))))))

(assert (=> d!385457 (= lt!450282 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789))))) (value!77947 (_1!7594 (get!4332 lt!449789)))))))

(assert (=> d!385457 (= (charsOf!1369 (_1!7594 (get!4332 lt!449789))) lt!450282)))

(declare-fun b_lambda!41037 () Bool)

(assert (=> (not b_lambda!41037) (not d!385457)))

(declare-fun t!120523 () Bool)

(declare-fun tb!71353 () Bool)

(assert (=> (and b!1357461 (= (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (toChars!3511 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))))) t!120523) tb!71353))

(declare-fun b!1359142 () Bool)

(declare-fun e!869680 () Bool)

(declare-fun tp!391762 () Bool)

(assert (=> b!1359142 (= e!869680 (and (inv!18182 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789))))) (value!77947 (_1!7594 (get!4332 lt!449789)))))) tp!391762))))

(declare-fun result!86754 () Bool)

(assert (=> tb!71353 (= result!86754 (and (inv!18183 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789))))) (value!77947 (_1!7594 (get!4332 lt!449789))))) e!869680))))

(assert (= tb!71353 b!1359142))

(declare-fun m!1522611 () Bool)

(assert (=> b!1359142 m!1522611))

(declare-fun m!1522613 () Bool)

(assert (=> tb!71353 m!1522613))

(assert (=> d!385457 t!120523))

(declare-fun b_and!90975 () Bool)

(assert (= b_and!90941 (and (=> t!120523 result!86754) b_and!90975)))

(declare-fun tb!71355 () Bool)

(declare-fun t!120525 () Bool)

(assert (=> (and b!1357450 (= (toChars!3511 (transformation!2397 (h!19237 rules!2550))) (toChars!3511 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))))) t!120525) tb!71355))

(declare-fun result!86756 () Bool)

(assert (= result!86756 result!86754))

(assert (=> d!385457 t!120525))

(declare-fun b_and!90977 () Bool)

(assert (= b_and!90943 (and (=> t!120525 result!86756) b_and!90977)))

(declare-fun tb!71357 () Bool)

(declare-fun t!120527 () Bool)

(assert (=> (and b!1357464 (= (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (toChars!3511 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))))) t!120527) tb!71357))

(declare-fun result!86758 () Bool)

(assert (= result!86758 result!86754))

(assert (=> d!385457 t!120527))

(declare-fun b_and!90979 () Bool)

(assert (= b_and!90945 (and (=> t!120527 result!86758) b_and!90979)))

(declare-fun t!120529 () Bool)

(declare-fun tb!71359 () Bool)

(assert (=> (and b!1358101 (= (toChars!3511 (transformation!2397 (h!19237 (t!120441 rules!2550)))) (toChars!3511 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))))) t!120529) tb!71359))

(declare-fun result!86760 () Bool)

(assert (= result!86760 result!86754))

(assert (=> d!385457 t!120529))

(declare-fun b_and!90981 () Bool)

(assert (= b_and!90949 (and (=> t!120529 result!86760) b_and!90981)))

(declare-fun m!1522615 () Bool)

(assert (=> d!385457 m!1522615))

(declare-fun m!1522617 () Bool)

(assert (=> d!385457 m!1522617))

(assert (=> b!1357980 d!385457))

(assert (=> b!1357980 d!385133))

(declare-fun d!385461 () Bool)

(declare-fun lt!450290 () Token!4456)

(declare-fun apply!3360 (List!13904 Int) Token!4456)

(assert (=> d!385461 (= lt!450290 (apply!3360 (list!5306 (_1!7593 lt!449652)) 0))))

(declare-fun apply!3361 (Conc!4557 Int) Token!4456)

(assert (=> d!385461 (= lt!450290 (apply!3361 (c!222696 (_1!7593 lt!449652)) 0))))

(declare-fun e!869687 () Bool)

(assert (=> d!385461 e!869687))

(declare-fun res!612494 () Bool)

(assert (=> d!385461 (=> (not res!612494) (not e!869687))))

(assert (=> d!385461 (= res!612494 (<= 0 0))))

(assert (=> d!385461 (= (apply!3351 (_1!7593 lt!449652) 0) lt!450290)))

(declare-fun b!1359149 () Bool)

(assert (=> b!1359149 (= e!869687 (< 0 (size!11326 (_1!7593 lt!449652))))))

(assert (= (and d!385461 res!612494) b!1359149))

(assert (=> d!385461 m!1522147))

(assert (=> d!385461 m!1522147))

(declare-fun m!1522621 () Bool)

(assert (=> d!385461 m!1522621))

(declare-fun m!1522623 () Bool)

(assert (=> d!385461 m!1522623))

(assert (=> b!1359149 m!1520377))

(assert (=> b!1357569 d!385461))

(declare-fun d!385465 () Bool)

(declare-fun c!223097 () Bool)

(assert (=> d!385465 (= c!223097 ((_ is Nil!13835) lt!449809))))

(declare-fun e!869690 () (InoxSet C!7712))

(assert (=> d!385465 (= (content!2000 lt!449809) e!869690)))

(declare-fun b!1359152 () Bool)

(assert (=> b!1359152 (= e!869690 ((as const (Array C!7712 Bool)) false))))

(declare-fun b!1359153 () Bool)

(assert (=> b!1359153 (= e!869690 ((_ map or) (store ((as const (Array C!7712 Bool)) false) (h!19236 lt!449809) true) (content!2000 (t!120440 lt!449809))))))

(assert (= (and d!385465 c!223097) b!1359152))

(assert (= (and d!385465 (not c!223097)) b!1359153))

(declare-fun m!1522625 () Bool)

(assert (=> b!1359153 m!1522625))

(declare-fun m!1522627 () Bool)

(assert (=> b!1359153 m!1522627))

(assert (=> d!384845 d!385465))

(declare-fun d!385467 () Bool)

(declare-fun c!223098 () Bool)

(assert (=> d!385467 (= c!223098 ((_ is Nil!13835) lt!449599))))

(declare-fun e!869691 () (InoxSet C!7712))

(assert (=> d!385467 (= (content!2000 lt!449599) e!869691)))

(declare-fun b!1359154 () Bool)

(assert (=> b!1359154 (= e!869691 ((as const (Array C!7712 Bool)) false))))

(declare-fun b!1359155 () Bool)

(assert (=> b!1359155 (= e!869691 ((_ map or) (store ((as const (Array C!7712 Bool)) false) (h!19236 lt!449599) true) (content!2000 (t!120440 lt!449599))))))

(assert (= (and d!385467 c!223098) b!1359154))

(assert (= (and d!385467 (not c!223098)) b!1359155))

(declare-fun m!1522629 () Bool)

(assert (=> b!1359155 m!1522629))

(assert (=> b!1359155 m!1521647))

(assert (=> d!384845 d!385467))

(declare-fun d!385469 () Bool)

(declare-fun c!223099 () Bool)

(assert (=> d!385469 (= c!223099 ((_ is Nil!13835) (Cons!13835 lt!449595 Nil!13835)))))

(declare-fun e!869692 () (InoxSet C!7712))

(assert (=> d!385469 (= (content!2000 (Cons!13835 lt!449595 Nil!13835)) e!869692)))

(declare-fun b!1359156 () Bool)

(assert (=> b!1359156 (= e!869692 ((as const (Array C!7712 Bool)) false))))

(declare-fun b!1359157 () Bool)

(assert (=> b!1359157 (= e!869692 ((_ map or) (store ((as const (Array C!7712 Bool)) false) (h!19236 (Cons!13835 lt!449595 Nil!13835)) true) (content!2000 (t!120440 (Cons!13835 lt!449595 Nil!13835)))))))

(assert (= (and d!385469 c!223099) b!1359156))

(assert (= (and d!385469 (not c!223099)) b!1359157))

(declare-fun m!1522631 () Bool)

(assert (=> b!1359157 m!1522631))

(declare-fun m!1522633 () Bool)

(assert (=> b!1359157 m!1522633))

(assert (=> d!384845 d!385469))

(declare-fun d!385471 () Bool)

(declare-fun c!223104 () Bool)

(assert (=> d!385471 (= c!223104 ((_ is Empty!4557) (c!222696 (_1!7593 lt!449583))))))

(declare-fun e!869697 () List!13904)

(assert (=> d!385471 (= (list!5310 (c!222696 (_1!7593 lt!449583))) e!869697)))

(declare-fun b!1359166 () Bool)

(assert (=> b!1359166 (= e!869697 Nil!13838)))

(declare-fun b!1359168 () Bool)

(declare-fun e!869698 () List!13904)

(declare-fun list!5315 (IArray!9119) List!13904)

(assert (=> b!1359168 (= e!869698 (list!5315 (xs!7280 (c!222696 (_1!7593 lt!449583)))))))

(declare-fun b!1359167 () Bool)

(assert (=> b!1359167 (= e!869697 e!869698)))

(declare-fun c!223105 () Bool)

(assert (=> b!1359167 (= c!223105 ((_ is Leaf!6952) (c!222696 (_1!7593 lt!449583))))))

(declare-fun b!1359169 () Bool)

(declare-fun ++!3568 (List!13904 List!13904) List!13904)

(assert (=> b!1359169 (= e!869698 (++!3568 (list!5310 (left!11849 (c!222696 (_1!7593 lt!449583)))) (list!5310 (right!12179 (c!222696 (_1!7593 lt!449583))))))))

(assert (= (and d!385471 c!223104) b!1359166))

(assert (= (and d!385471 (not c!223104)) b!1359167))

(assert (= (and b!1359167 c!223105) b!1359168))

(assert (= (and b!1359167 (not c!223105)) b!1359169))

(declare-fun m!1522637 () Bool)

(assert (=> b!1359168 m!1522637))

(declare-fun m!1522639 () Bool)

(assert (=> b!1359169 m!1522639))

(declare-fun m!1522641 () Bool)

(assert (=> b!1359169 m!1522641))

(assert (=> b!1359169 m!1522639))

(assert (=> b!1359169 m!1522641))

(declare-fun m!1522643 () Bool)

(assert (=> b!1359169 m!1522643))

(assert (=> d!384699 d!385471))

(declare-fun d!385475 () Bool)

(declare-fun lt!450296 () Bool)

(assert (=> d!385475 (= lt!450296 (select (content!2001 (map!3056 rules!2550 lambda!57485)) lt!449767))))

(declare-fun e!869701 () Bool)

(assert (=> d!385475 (= lt!450296 e!869701)))

(declare-fun res!612497 () Bool)

(assert (=> d!385475 (=> (not res!612497) (not e!869701))))

(assert (=> d!385475 (= res!612497 ((_ is Cons!13837) (map!3056 rules!2550 lambda!57485)))))

(assert (=> d!385475 (= (contains!2567 (map!3056 rules!2550 lambda!57485) lt!449767) lt!450296)))

(declare-fun b!1359174 () Bool)

(declare-fun e!869702 () Bool)

(assert (=> b!1359174 (= e!869701 e!869702)))

(declare-fun res!612498 () Bool)

(assert (=> b!1359174 (=> res!612498 e!869702)))

(assert (=> b!1359174 (= res!612498 (= (h!19238 (map!3056 rules!2550 lambda!57485)) lt!449767))))

(declare-fun b!1359175 () Bool)

(assert (=> b!1359175 (= e!869702 (contains!2567 (t!120442 (map!3056 rules!2550 lambda!57485)) lt!449767))))

(assert (= (and d!385475 res!612497) b!1359174))

(assert (= (and b!1359174 (not res!612498)) b!1359175))

(assert (=> d!385475 m!1520119))

(assert (=> d!385475 m!1520687))

(declare-fun m!1522645 () Bool)

(assert (=> d!385475 m!1522645))

(declare-fun m!1522647 () Bool)

(assert (=> b!1359175 m!1522647))

(assert (=> b!1357893 d!385475))

(declare-fun b!1359176 () Bool)

(declare-fun res!612502 () Bool)

(declare-fun e!869706 () Bool)

(assert (=> b!1359176 (=> (not res!612502) (not e!869706))))

(declare-fun call!91356 () Bool)

(assert (=> b!1359176 (= res!612502 (not call!91356))))

(declare-fun b!1359177 () Bool)

(declare-fun e!869704 () Bool)

(assert (=> b!1359177 (= e!869704 (matchR!1704 (derivativeStep!948 (regex!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))) (head!2437 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789)))))) (tail!1961 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789)))))))))

(declare-fun b!1359178 () Bool)

(declare-fun res!612504 () Bool)

(declare-fun e!869705 () Bool)

(assert (=> b!1359178 (=> res!612504 e!869705)))

(assert (=> b!1359178 (= res!612504 e!869706)))

(declare-fun res!612503 () Bool)

(assert (=> b!1359178 (=> (not res!612503) (not e!869706))))

(declare-fun lt!450297 () Bool)

(assert (=> b!1359178 (= res!612503 lt!450297)))

(declare-fun b!1359179 () Bool)

(assert (=> b!1359179 (= e!869706 (= (head!2437 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789))))) (c!222695 (regex!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))))))))

(declare-fun b!1359180 () Bool)

(assert (=> b!1359180 (= e!869704 (nullable!1190 (regex!2397 (rule!4146 (_1!7594 (get!4332 lt!449789))))))))

(declare-fun bm!91351 () Bool)

(assert (=> bm!91351 (= call!91356 (isEmpty!8306 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789))))))))

(declare-fun d!385477 () Bool)

(declare-fun e!869703 () Bool)

(assert (=> d!385477 e!869703))

(declare-fun c!223109 () Bool)

(assert (=> d!385477 (= c!223109 ((_ is EmptyExpr!3711) (regex!2397 (rule!4146 (_1!7594 (get!4332 lt!449789))))))))

(assert (=> d!385477 (= lt!450297 e!869704)))

(declare-fun c!223110 () Bool)

(assert (=> d!385477 (= c!223110 (isEmpty!8306 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789))))))))

(assert (=> d!385477 (validRegex!1611 (regex!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))))))

(assert (=> d!385477 (= (matchR!1704 (regex!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))) (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789))))) lt!450297)))

(declare-fun b!1359181 () Bool)

(declare-fun e!869707 () Bool)

(assert (=> b!1359181 (= e!869707 (not lt!450297))))

(declare-fun b!1359182 () Bool)

(declare-fun e!869708 () Bool)

(assert (=> b!1359182 (= e!869705 e!869708)))

(declare-fun res!612505 () Bool)

(assert (=> b!1359182 (=> (not res!612505) (not e!869708))))

(assert (=> b!1359182 (= res!612505 (not lt!450297))))

(declare-fun b!1359183 () Bool)

(declare-fun e!869709 () Bool)

(assert (=> b!1359183 (= e!869708 e!869709)))

(declare-fun res!612499 () Bool)

(assert (=> b!1359183 (=> res!612499 e!869709)))

(assert (=> b!1359183 (= res!612499 call!91356)))

(declare-fun b!1359184 () Bool)

(declare-fun res!612506 () Bool)

(assert (=> b!1359184 (=> res!612506 e!869705)))

(assert (=> b!1359184 (= res!612506 (not ((_ is ElementMatch!3711) (regex!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))))))))

(assert (=> b!1359184 (= e!869707 e!869705)))

(declare-fun b!1359185 () Bool)

(declare-fun res!612500 () Bool)

(assert (=> b!1359185 (=> res!612500 e!869709)))

(assert (=> b!1359185 (= res!612500 (not (isEmpty!8306 (tail!1961 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789))))))))))

(declare-fun b!1359186 () Bool)

(assert (=> b!1359186 (= e!869709 (not (= (head!2437 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789))))) (c!222695 (regex!2397 (rule!4146 (_1!7594 (get!4332 lt!449789))))))))))

(declare-fun b!1359187 () Bool)

(assert (=> b!1359187 (= e!869703 (= lt!450297 call!91356))))

(declare-fun b!1359188 () Bool)

(declare-fun res!612501 () Bool)

(assert (=> b!1359188 (=> (not res!612501) (not e!869706))))

(assert (=> b!1359188 (= res!612501 (isEmpty!8306 (tail!1961 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789)))))))))

(declare-fun b!1359189 () Bool)

(assert (=> b!1359189 (= e!869703 e!869707)))

(declare-fun c!223108 () Bool)

(assert (=> b!1359189 (= c!223108 ((_ is EmptyLang!3711) (regex!2397 (rule!4146 (_1!7594 (get!4332 lt!449789))))))))

(assert (= (and d!385477 c!223110) b!1359180))

(assert (= (and d!385477 (not c!223110)) b!1359177))

(assert (= (and d!385477 c!223109) b!1359187))

(assert (= (and d!385477 (not c!223109)) b!1359189))

(assert (= (and b!1359189 c!223108) b!1359181))

(assert (= (and b!1359189 (not c!223108)) b!1359184))

(assert (= (and b!1359184 (not res!612506)) b!1359178))

(assert (= (and b!1359178 res!612503) b!1359176))

(assert (= (and b!1359176 res!612502) b!1359188))

(assert (= (and b!1359188 res!612501) b!1359179))

(assert (= (and b!1359178 (not res!612504)) b!1359182))

(assert (= (and b!1359182 res!612505) b!1359183))

(assert (= (and b!1359183 (not res!612499)) b!1359185))

(assert (= (and b!1359185 (not res!612500)) b!1359186))

(assert (= (or b!1359187 b!1359176 b!1359183) bm!91351))

(assert (=> b!1359179 m!1520837))

(declare-fun m!1522649 () Bool)

(assert (=> b!1359179 m!1522649))

(assert (=> b!1359186 m!1520837))

(assert (=> b!1359186 m!1522649))

(assert (=> b!1359188 m!1520837))

(declare-fun m!1522651 () Bool)

(assert (=> b!1359188 m!1522651))

(assert (=> b!1359188 m!1522651))

(declare-fun m!1522653 () Bool)

(assert (=> b!1359188 m!1522653))

(declare-fun m!1522655 () Bool)

(assert (=> b!1359180 m!1522655))

(assert (=> bm!91351 m!1520837))

(declare-fun m!1522657 () Bool)

(assert (=> bm!91351 m!1522657))

(assert (=> b!1359185 m!1520837))

(assert (=> b!1359185 m!1522651))

(assert (=> b!1359185 m!1522651))

(assert (=> b!1359185 m!1522653))

(assert (=> b!1359177 m!1520837))

(assert (=> b!1359177 m!1522649))

(assert (=> b!1359177 m!1522649))

(declare-fun m!1522659 () Bool)

(assert (=> b!1359177 m!1522659))

(assert (=> b!1359177 m!1520837))

(assert (=> b!1359177 m!1522651))

(assert (=> b!1359177 m!1522659))

(assert (=> b!1359177 m!1522651))

(declare-fun m!1522661 () Bool)

(assert (=> b!1359177 m!1522661))

(assert (=> d!385477 m!1520837))

(assert (=> d!385477 m!1522657))

(declare-fun m!1522663 () Bool)

(assert (=> d!385477 m!1522663))

(assert (=> b!1357984 d!385477))

(assert (=> b!1357984 d!385133))

(assert (=> b!1357984 d!385453))

(assert (=> b!1357984 d!385457))

(declare-fun d!385479 () Bool)

(assert (=> d!385479 (= (list!5307 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34))) (list!5311 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34)))))))

(declare-fun bs!334266 () Bool)

(assert (= bs!334266 d!385479))

(declare-fun m!1522665 () Bool)

(assert (=> bs!334266 m!1522665))

(assert (=> b!1357999 d!385479))

(declare-fun d!385481 () Bool)

(declare-fun lt!450300 () Bool)

(assert (=> d!385481 (= lt!450300 (select (content!2000 (t!120440 lt!449598)) lt!449595))))

(declare-fun e!869712 () Bool)

(assert (=> d!385481 (= lt!450300 e!869712)))

(declare-fun res!612508 () Bool)

(assert (=> d!385481 (=> (not res!612508) (not e!869712))))

(assert (=> d!385481 (= res!612508 ((_ is Cons!13835) (t!120440 lt!449598)))))

(assert (=> d!385481 (= (contains!2568 (t!120440 lt!449598) lt!449595) lt!450300)))

(declare-fun b!1359192 () Bool)

(declare-fun e!869711 () Bool)

(assert (=> b!1359192 (= e!869712 e!869711)))

(declare-fun res!612507 () Bool)

(assert (=> b!1359192 (=> res!612507 e!869711)))

(assert (=> b!1359192 (= res!612507 (= (h!19236 (t!120440 lt!449598)) lt!449595))))

(declare-fun b!1359193 () Bool)

(assert (=> b!1359193 (= e!869711 (contains!2568 (t!120440 (t!120440 lt!449598)) lt!449595))))

(assert (= (and d!385481 res!612508) b!1359192))

(assert (= (and b!1359192 (not res!612507)) b!1359193))

(assert (=> d!385481 m!1522195))

(declare-fun m!1522667 () Bool)

(assert (=> d!385481 m!1522667))

(declare-fun m!1522669 () Bool)

(assert (=> b!1359193 m!1522669))

(assert (=> b!1357812 d!385481))

(declare-fun d!385483 () Bool)

(declare-fun charsToBigInt!0 (List!13900 Int) Int)

(assert (=> d!385483 (= (inv!15 (value!77947 t2!34)) (= (charsToBigInt!0 (text!17858 (value!77947 t2!34)) 0) (value!77942 (value!77947 t2!34))))))

(declare-fun bs!334271 () Bool)

(assert (= bs!334271 d!385483))

(declare-fun m!1522677 () Bool)

(assert (=> bs!334271 m!1522677))

(assert (=> b!1358062 d!385483))

(declare-fun d!385487 () Bool)

(assert (=> d!385487 (= (inv!15 (value!77947 t1!34)) (= (charsToBigInt!0 (text!17858 (value!77947 t1!34)) 0) (value!77942 (value!77947 t1!34))))))

(declare-fun bs!334272 () Bool)

(assert (= bs!334272 d!385487))

(declare-fun m!1522679 () Bool)

(assert (=> bs!334272 m!1522679))

(assert (=> b!1358042 d!385487))

(declare-fun d!385489 () Bool)

(declare-fun lt!450301 () Bool)

(assert (=> d!385489 (= lt!450301 (isEmpty!8309 (list!5306 (_1!7593 lt!449707))))))

(assert (=> d!385489 (= lt!450301 (isEmpty!8313 (c!222696 (_1!7593 lt!449707))))))

(assert (=> d!385489 (= (isEmpty!8307 (_1!7593 lt!449707)) lt!450301)))

(declare-fun bs!334273 () Bool)

(assert (= bs!334273 d!385489))

(assert (=> bs!334273 m!1520573))

(assert (=> bs!334273 m!1520573))

(declare-fun m!1522681 () Bool)

(assert (=> bs!334273 m!1522681))

(declare-fun m!1522683 () Bool)

(assert (=> bs!334273 m!1522683))

(assert (=> b!1357727 d!385489))

(declare-fun d!385491 () Bool)

(declare-fun lt!450302 () Int)

(assert (=> d!385491 (= lt!450302 (size!11330 (list!5306 (_1!7593 lt!449707))))))

(assert (=> d!385491 (= lt!450302 (size!11333 (c!222696 (_1!7593 lt!449707))))))

(assert (=> d!385491 (= (size!11326 (_1!7593 lt!449707)) lt!450302)))

(declare-fun bs!334274 () Bool)

(assert (= bs!334274 d!385491))

(assert (=> bs!334274 m!1520573))

(assert (=> bs!334274 m!1520573))

(declare-fun m!1522685 () Bool)

(assert (=> bs!334274 m!1522685))

(declare-fun m!1522687 () Bool)

(assert (=> bs!334274 m!1522687))

(assert (=> d!384701 d!385491))

(declare-fun d!385493 () Bool)

(declare-fun e!869814 () Bool)

(assert (=> d!385493 e!869814))

(declare-fun res!612550 () Bool)

(assert (=> d!385493 (=> (not res!612550) (not e!869814))))

(declare-fun lt!450450 () tuple2!13414)

(declare-fun lexRec!275 (LexerInterface!2092 List!13902 BalanceConc!9052) tuple2!13414)

(assert (=> d!385493 (= res!612550 (= (list!5306 (_1!7593 lt!450450)) (list!5306 (_1!7593 (lexRec!275 thiss!19762 rules!2550 lt!449596)))))))

(declare-fun e!869816 () tuple2!13414)

(assert (=> d!385493 (= lt!450450 e!869816)))

(declare-fun c!223151 () Bool)

(declare-datatypes ((tuple2!13424 0))(
  ( (tuple2!13425 (_1!7598 Token!4456) (_2!7598 BalanceConc!9052)) )
))
(declare-datatypes ((Option!2654 0))(
  ( (None!2653) (Some!2653 (v!21408 tuple2!13424)) )
))
(declare-fun lt!450460 () Option!2654)

(assert (=> d!385493 (= c!223151 ((_ is Some!2653) lt!450460))))

(declare-fun maxPrefixZipperSequenceV2!220 (LexerInterface!2092 List!13902 BalanceConc!9052 BalanceConc!9052) Option!2654)

(assert (=> d!385493 (= lt!450460 (maxPrefixZipperSequenceV2!220 thiss!19762 rules!2550 lt!449596 lt!449596))))

(declare-fun lt!450454 () Unit!19983)

(declare-fun lt!450442 () Unit!19983)

(assert (=> d!385493 (= lt!450454 lt!450442)))

(declare-fun lt!450430 () List!13901)

(declare-fun lt!450448 () List!13901)

(declare-fun isSuffix!253 (List!13901 List!13901) Bool)

(assert (=> d!385493 (isSuffix!253 lt!450430 (++!3562 lt!450448 lt!450430))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!231 (List!13901 List!13901) Unit!19983)

(assert (=> d!385493 (= lt!450442 (lemmaConcatTwoListThenFSndIsSuffix!231 lt!450448 lt!450430))))

(assert (=> d!385493 (= lt!450430 (list!5307 lt!449596))))

(assert (=> d!385493 (= lt!450448 (list!5307 (BalanceConc!9053 Empty!4556)))))

(assert (=> d!385493 (= (lexTailRecV2!405 thiss!19762 rules!2550 lt!449596 (BalanceConc!9053 Empty!4556) lt!449596 (BalanceConc!9055 Empty!4557)) lt!450450)))

(declare-fun b!1359392 () Bool)

(declare-fun e!869817 () tuple2!13414)

(assert (=> b!1359392 (= e!869817 (tuple2!13415 (BalanceConc!9055 Empty!4557) lt!449596))))

(declare-fun b!1359393 () Bool)

(assert (=> b!1359393 (= e!869816 (tuple2!13415 (BalanceConc!9055 Empty!4557) lt!449596))))

(declare-fun lt!450428 () BalanceConc!9052)

(declare-fun b!1359394 () Bool)

(declare-fun append!398 (BalanceConc!9054 Token!4456) BalanceConc!9054)

(assert (=> b!1359394 (= e!869816 (lexTailRecV2!405 thiss!19762 rules!2550 lt!449596 lt!450428 (_2!7598 (v!21408 lt!450460)) (append!398 (BalanceConc!9055 Empty!4557) (_1!7598 (v!21408 lt!450460)))))))

(declare-fun lt!450456 () tuple2!13414)

(assert (=> b!1359394 (= lt!450456 (lexRec!275 thiss!19762 rules!2550 (_2!7598 (v!21408 lt!450460))))))

(declare-fun lt!450433 () List!13901)

(assert (=> b!1359394 (= lt!450433 (list!5307 (BalanceConc!9053 Empty!4556)))))

(declare-fun lt!450445 () List!13901)

(assert (=> b!1359394 (= lt!450445 (list!5307 (charsOf!1369 (_1!7598 (v!21408 lt!450460)))))))

(declare-fun lt!450435 () List!13901)

(assert (=> b!1359394 (= lt!450435 (list!5307 (_2!7598 (v!21408 lt!450460))))))

(declare-fun lt!450429 () Unit!19983)

(declare-fun lemmaConcatAssociativity!849 (List!13901 List!13901 List!13901) Unit!19983)

(assert (=> b!1359394 (= lt!450429 (lemmaConcatAssociativity!849 lt!450433 lt!450445 lt!450435))))

(assert (=> b!1359394 (= (++!3562 (++!3562 lt!450433 lt!450445) lt!450435) (++!3562 lt!450433 (++!3562 lt!450445 lt!450435)))))

(declare-fun lt!450455 () Unit!19983)

(assert (=> b!1359394 (= lt!450455 lt!450429)))

(declare-fun lt!450457 () Option!2654)

(declare-fun maxPrefixZipperSequence!548 (LexerInterface!2092 List!13902 BalanceConc!9052) Option!2654)

(assert (=> b!1359394 (= lt!450457 (maxPrefixZipperSequence!548 thiss!19762 rules!2550 lt!449596))))

(declare-fun c!223150 () Bool)

(assert (=> b!1359394 (= c!223150 ((_ is Some!2653) lt!450457))))

(assert (=> b!1359394 (= (lexRec!275 thiss!19762 rules!2550 lt!449596) e!869817)))

(declare-fun lt!450447 () Unit!19983)

(declare-fun Unit!19999 () Unit!19983)

(assert (=> b!1359394 (= lt!450447 Unit!19999)))

(declare-fun lt!450432 () List!13904)

(assert (=> b!1359394 (= lt!450432 (list!5306 (BalanceConc!9055 Empty!4557)))))

(declare-fun lt!450443 () List!13904)

(assert (=> b!1359394 (= lt!450443 (Cons!13838 (_1!7598 (v!21408 lt!450460)) Nil!13838))))

(declare-fun lt!450458 () List!13904)

(assert (=> b!1359394 (= lt!450458 (list!5306 (_1!7593 lt!450456)))))

(declare-fun lt!450438 () Unit!19983)

(declare-fun lemmaConcatAssociativity!850 (List!13904 List!13904 List!13904) Unit!19983)

(assert (=> b!1359394 (= lt!450438 (lemmaConcatAssociativity!850 lt!450432 lt!450443 lt!450458))))

(assert (=> b!1359394 (= (++!3568 (++!3568 lt!450432 lt!450443) lt!450458) (++!3568 lt!450432 (++!3568 lt!450443 lt!450458)))))

(declare-fun lt!450427 () Unit!19983)

(assert (=> b!1359394 (= lt!450427 lt!450438)))

(declare-fun lt!450451 () List!13901)

(assert (=> b!1359394 (= lt!450451 (++!3562 (list!5307 (BalanceConc!9053 Empty!4556)) (list!5307 (charsOf!1369 (_1!7598 (v!21408 lt!450460))))))))

(declare-fun lt!450437 () List!13901)

(assert (=> b!1359394 (= lt!450437 (list!5307 (_2!7598 (v!21408 lt!450460))))))

(declare-fun lt!450446 () List!13904)

(assert (=> b!1359394 (= lt!450446 (list!5306 (append!398 (BalanceConc!9055 Empty!4557) (_1!7598 (v!21408 lt!450460)))))))

(declare-fun lt!450441 () Unit!19983)

(declare-fun lemmaLexThenLexPrefix!190 (LexerInterface!2092 List!13902 List!13901 List!13901 List!13904 List!13904 List!13901) Unit!19983)

(assert (=> b!1359394 (= lt!450441 (lemmaLexThenLexPrefix!190 thiss!19762 rules!2550 lt!450451 lt!450437 lt!450446 (list!5306 (_1!7593 lt!450456)) (list!5307 (_2!7593 lt!450456))))))

(assert (=> b!1359394 (= (lexList!610 thiss!19762 rules!2550 lt!450451) (tuple2!13419 lt!450446 Nil!13835))))

(declare-fun lt!450452 () Unit!19983)

(assert (=> b!1359394 (= lt!450452 lt!450441)))

(declare-fun lt!450431 () BalanceConc!9052)

(assert (=> b!1359394 (= lt!450431 (++!3564 (BalanceConc!9053 Empty!4556) (charsOf!1369 (_1!7598 (v!21408 lt!450460)))))))

(declare-fun lt!450449 () Option!2654)

(assert (=> b!1359394 (= lt!450449 (maxPrefixZipperSequence!548 thiss!19762 rules!2550 lt!450431))))

(declare-fun c!223149 () Bool)

(assert (=> b!1359394 (= c!223149 ((_ is Some!2653) lt!450449))))

(declare-fun e!869815 () tuple2!13414)

(assert (=> b!1359394 (= (lexRec!275 thiss!19762 rules!2550 (++!3564 (BalanceConc!9053 Empty!4556) (charsOf!1369 (_1!7598 (v!21408 lt!450460))))) e!869815)))

(declare-fun lt!450444 () Unit!19983)

(declare-fun Unit!20000 () Unit!19983)

(assert (=> b!1359394 (= lt!450444 Unit!20000)))

(assert (=> b!1359394 (= lt!450428 (++!3564 (BalanceConc!9053 Empty!4556) (charsOf!1369 (_1!7598 (v!21408 lt!450460)))))))

(declare-fun lt!450453 () List!13901)

(assert (=> b!1359394 (= lt!450453 (list!5307 lt!450428))))

(declare-fun lt!450434 () List!13901)

(assert (=> b!1359394 (= lt!450434 (list!5307 (_2!7598 (v!21408 lt!450460))))))

(declare-fun lt!450459 () Unit!19983)

(assert (=> b!1359394 (= lt!450459 (lemmaConcatTwoListThenFSndIsSuffix!231 lt!450453 lt!450434))))

(assert (=> b!1359394 (isSuffix!253 lt!450434 (++!3562 lt!450453 lt!450434))))

(declare-fun lt!450436 () Unit!19983)

(assert (=> b!1359394 (= lt!450436 lt!450459)))

(declare-fun b!1359395 () Bool)

(declare-fun lt!450439 () tuple2!13414)

(assert (=> b!1359395 (= lt!450439 (lexRec!275 thiss!19762 rules!2550 (_2!7598 (v!21408 lt!450457))))))

(declare-fun prepend!362 (BalanceConc!9054 Token!4456) BalanceConc!9054)

(assert (=> b!1359395 (= e!869817 (tuple2!13415 (prepend!362 (_1!7593 lt!450439) (_1!7598 (v!21408 lt!450457))) (_2!7593 lt!450439)))))

(declare-fun b!1359396 () Bool)

(assert (=> b!1359396 (= e!869814 (= (list!5307 (_2!7593 lt!450450)) (list!5307 (_2!7593 (lexRec!275 thiss!19762 rules!2550 lt!449596)))))))

(declare-fun lt!450440 () tuple2!13414)

(declare-fun b!1359397 () Bool)

(assert (=> b!1359397 (= lt!450440 (lexRec!275 thiss!19762 rules!2550 (_2!7598 (v!21408 lt!450449))))))

(assert (=> b!1359397 (= e!869815 (tuple2!13415 (prepend!362 (_1!7593 lt!450440) (_1!7598 (v!21408 lt!450449))) (_2!7593 lt!450440)))))

(declare-fun b!1359398 () Bool)

(assert (=> b!1359398 (= e!869815 (tuple2!13415 (BalanceConc!9055 Empty!4557) lt!450431))))

(assert (= (and d!385493 c!223151) b!1359394))

(assert (= (and d!385493 (not c!223151)) b!1359393))

(assert (= (and b!1359394 c!223150) b!1359395))

(assert (= (and b!1359394 (not c!223150)) b!1359392))

(assert (= (and b!1359394 c!223149) b!1359397))

(assert (= (and b!1359394 (not c!223149)) b!1359398))

(assert (= (and d!385493 res!612550) b!1359396))

(declare-fun m!1522981 () Bool)

(assert (=> b!1359394 m!1522981))

(declare-fun m!1522983 () Bool)

(assert (=> b!1359394 m!1522983))

(declare-fun m!1522985 () Bool)

(assert (=> b!1359394 m!1522985))

(declare-fun m!1522987 () Bool)

(assert (=> b!1359394 m!1522987))

(declare-fun m!1522989 () Bool)

(assert (=> b!1359394 m!1522989))

(declare-fun m!1522991 () Bool)

(assert (=> b!1359394 m!1522991))

(declare-fun m!1522993 () Bool)

(assert (=> b!1359394 m!1522993))

(assert (=> b!1359394 m!1522993))

(declare-fun m!1522995 () Bool)

(assert (=> b!1359394 m!1522995))

(declare-fun m!1522997 () Bool)

(assert (=> b!1359394 m!1522997))

(declare-fun m!1522999 () Bool)

(assert (=> b!1359394 m!1522999))

(assert (=> b!1359394 m!1522991))

(declare-fun m!1523001 () Bool)

(assert (=> b!1359394 m!1523001))

(declare-fun m!1523003 () Bool)

(assert (=> b!1359394 m!1523003))

(declare-fun m!1523005 () Bool)

(assert (=> b!1359394 m!1523005))

(declare-fun m!1523007 () Bool)

(assert (=> b!1359394 m!1523007))

(assert (=> b!1359394 m!1522999))

(declare-fun m!1523009 () Bool)

(assert (=> b!1359394 m!1523009))

(declare-fun m!1523011 () Bool)

(assert (=> b!1359394 m!1523011))

(assert (=> b!1359394 m!1523005))

(declare-fun m!1523013 () Bool)

(assert (=> b!1359394 m!1523013))

(declare-fun m!1523015 () Bool)

(assert (=> b!1359394 m!1523015))

(assert (=> b!1359394 m!1522983))

(declare-fun m!1523017 () Bool)

(assert (=> b!1359394 m!1523017))

(declare-fun m!1523019 () Bool)

(assert (=> b!1359394 m!1523019))

(declare-fun m!1523021 () Bool)

(assert (=> b!1359394 m!1523021))

(assert (=> b!1359394 m!1522983))

(declare-fun m!1523023 () Bool)

(assert (=> b!1359394 m!1523023))

(declare-fun m!1523025 () Bool)

(assert (=> b!1359394 m!1523025))

(declare-fun m!1523027 () Bool)

(assert (=> b!1359394 m!1523027))

(declare-fun m!1523029 () Bool)

(assert (=> b!1359394 m!1523029))

(declare-fun m!1523031 () Bool)

(assert (=> b!1359394 m!1523031))

(declare-fun m!1523033 () Bool)

(assert (=> b!1359394 m!1523033))

(declare-fun m!1523035 () Bool)

(assert (=> b!1359394 m!1523035))

(assert (=> b!1359394 m!1523033))

(declare-fun m!1523037 () Bool)

(assert (=> b!1359394 m!1523037))

(assert (=> b!1359394 m!1522987))

(declare-fun m!1523039 () Bool)

(assert (=> b!1359394 m!1523039))

(declare-fun m!1523041 () Bool)

(assert (=> b!1359394 m!1523041))

(assert (=> b!1359394 m!1523029))

(assert (=> b!1359394 m!1523025))

(assert (=> b!1359394 m!1523029))

(assert (=> b!1359394 m!1523009))

(declare-fun m!1523043 () Bool)

(assert (=> b!1359394 m!1523043))

(assert (=> b!1359394 m!1523035))

(assert (=> b!1359394 m!1523015))

(declare-fun m!1523045 () Bool)

(assert (=> b!1359394 m!1523045))

(declare-fun m!1523047 () Bool)

(assert (=> b!1359397 m!1523047))

(declare-fun m!1523049 () Bool)

(assert (=> b!1359397 m!1523049))

(declare-fun m!1523051 () Bool)

(assert (=> d!385493 m!1523051))

(assert (=> d!385493 m!1523051))

(declare-fun m!1523053 () Bool)

(assert (=> d!385493 m!1523053))

(assert (=> d!385493 m!1520129))

(declare-fun m!1523055 () Bool)

(assert (=> d!385493 m!1523055))

(declare-fun m!1523057 () Bool)

(assert (=> d!385493 m!1523057))

(declare-fun m!1523059 () Bool)

(assert (=> d!385493 m!1523059))

(assert (=> d!385493 m!1522999))

(declare-fun m!1523061 () Bool)

(assert (=> d!385493 m!1523061))

(assert (=> d!385493 m!1523021))

(declare-fun m!1523063 () Bool)

(assert (=> b!1359395 m!1523063))

(declare-fun m!1523065 () Bool)

(assert (=> b!1359395 m!1523065))

(declare-fun m!1523067 () Bool)

(assert (=> b!1359396 m!1523067))

(assert (=> b!1359396 m!1523021))

(declare-fun m!1523069 () Bool)

(assert (=> b!1359396 m!1523069))

(assert (=> d!384701 d!385493))

(declare-fun d!385593 () Bool)

(declare-fun res!612555 () Bool)

(declare-fun e!869822 () Bool)

(assert (=> d!385593 (=> res!612555 e!869822)))

(assert (=> d!385593 (= res!612555 ((_ is Nil!13836) rules!2550))))

(assert (=> d!385593 (= (noDuplicateTag!889 thiss!19762 rules!2550 Nil!13840) e!869822)))

(declare-fun b!1359403 () Bool)

(declare-fun e!869823 () Bool)

(assert (=> b!1359403 (= e!869822 e!869823)))

(declare-fun res!612556 () Bool)

(assert (=> b!1359403 (=> (not res!612556) (not e!869823))))

(declare-fun contains!2571 (List!13906 String!16671) Bool)

(assert (=> b!1359403 (= res!612556 (not (contains!2571 Nil!13840 (tag!2659 (h!19237 rules!2550)))))))

(declare-fun b!1359404 () Bool)

(assert (=> b!1359404 (= e!869823 (noDuplicateTag!889 thiss!19762 (t!120441 rules!2550) (Cons!13840 (tag!2659 (h!19237 rules!2550)) Nil!13840)))))

(assert (= (and d!385593 (not res!612555)) b!1359403))

(assert (= (and b!1359403 res!612556) b!1359404))

(declare-fun m!1523071 () Bool)

(assert (=> b!1359403 m!1523071))

(declare-fun m!1523073 () Bool)

(assert (=> b!1359404 m!1523073))

(assert (=> b!1358069 d!385593))

(declare-fun d!385595 () Bool)

(assert (=> d!385595 (= (inv!16 (value!77947 t2!34)) (= (charsToInt!0 (text!17856 (value!77947 t2!34))) (value!77938 (value!77947 t2!34))))))

(declare-fun bs!334315 () Bool)

(assert (= bs!334315 d!385595))

(declare-fun m!1523075 () Bool)

(assert (=> bs!334315 m!1523075))

(assert (=> b!1358066 d!385595))

(declare-fun b!1359405 () Bool)

(declare-fun e!869824 () Bool)

(declare-fun e!869825 () Bool)

(assert (=> b!1359405 (= e!869824 e!869825)))

(declare-fun res!612559 () Bool)

(assert (=> b!1359405 (=> (not res!612559) (not e!869825))))

(assert (=> b!1359405 (= res!612559 (<= (- 1) (- (height!654 (left!11849 (c!222696 lt!449662))) (height!654 (right!12179 (c!222696 lt!449662))))))))

(declare-fun b!1359406 () Bool)

(declare-fun res!612558 () Bool)

(assert (=> b!1359406 (=> (not res!612558) (not e!869825))))

(assert (=> b!1359406 (= res!612558 (isBalanced!1332 (right!12179 (c!222696 lt!449662))))))

(declare-fun d!385597 () Bool)

(declare-fun res!612562 () Bool)

(assert (=> d!385597 (=> res!612562 e!869824)))

(assert (=> d!385597 (= res!612562 (not ((_ is Node!4557) (c!222696 lt!449662))))))

(assert (=> d!385597 (= (isBalanced!1332 (c!222696 lt!449662)) e!869824)))

(declare-fun b!1359407 () Bool)

(declare-fun res!612561 () Bool)

(assert (=> b!1359407 (=> (not res!612561) (not e!869825))))

(assert (=> b!1359407 (= res!612561 (<= (- (height!654 (left!11849 (c!222696 lt!449662))) (height!654 (right!12179 (c!222696 lt!449662)))) 1))))

(declare-fun b!1359408 () Bool)

(assert (=> b!1359408 (= e!869825 (not (isEmpty!8313 (right!12179 (c!222696 lt!449662)))))))

(declare-fun b!1359409 () Bool)

(declare-fun res!612557 () Bool)

(assert (=> b!1359409 (=> (not res!612557) (not e!869825))))

(assert (=> b!1359409 (= res!612557 (isBalanced!1332 (left!11849 (c!222696 lt!449662))))))

(declare-fun b!1359410 () Bool)

(declare-fun res!612560 () Bool)

(assert (=> b!1359410 (=> (not res!612560) (not e!869825))))

(assert (=> b!1359410 (= res!612560 (not (isEmpty!8313 (left!11849 (c!222696 lt!449662)))))))

(assert (= (and d!385597 (not res!612562)) b!1359405))

(assert (= (and b!1359405 res!612559) b!1359407))

(assert (= (and b!1359407 res!612561) b!1359409))

(assert (= (and b!1359409 res!612557) b!1359406))

(assert (= (and b!1359406 res!612558) b!1359410))

(assert (= (and b!1359410 res!612560) b!1359408))

(declare-fun m!1523077 () Bool)

(assert (=> b!1359408 m!1523077))

(declare-fun m!1523079 () Bool)

(assert (=> b!1359410 m!1523079))

(declare-fun m!1523081 () Bool)

(assert (=> b!1359409 m!1523081))

(declare-fun m!1523083 () Bool)

(assert (=> b!1359407 m!1523083))

(declare-fun m!1523085 () Bool)

(assert (=> b!1359407 m!1523085))

(declare-fun m!1523087 () Bool)

(assert (=> b!1359406 m!1523087))

(assert (=> b!1359405 m!1523083))

(assert (=> b!1359405 m!1523085))

(assert (=> b!1357619 d!385597))

(assert (=> bm!91259 d!385129))

(declare-fun d!385599 () Bool)

(declare-fun lt!450461 () Int)

(assert (=> d!385599 (= lt!450461 (size!11328 (list!5307 (_2!7593 lt!449826))))))

(assert (=> d!385599 (= lt!450461 (size!11329 (c!222694 (_2!7593 lt!449826))))))

(assert (=> d!385599 (= (size!11320 (_2!7593 lt!449826)) lt!450461)))

(declare-fun bs!334316 () Bool)

(assert (= bs!334316 d!385599))

(assert (=> bs!334316 m!1521029))

(assert (=> bs!334316 m!1521029))

(declare-fun m!1523089 () Bool)

(assert (=> bs!334316 m!1523089))

(declare-fun m!1523091 () Bool)

(assert (=> bs!334316 m!1523091))

(assert (=> b!1358083 d!385599))

(declare-fun d!385601 () Bool)

(declare-fun lt!450462 () Int)

(assert (=> d!385601 (= lt!450462 (size!11328 (list!5307 lt!449584)))))

(assert (=> d!385601 (= lt!450462 (size!11329 (c!222694 lt!449584)))))

(assert (=> d!385601 (= (size!11320 lt!449584) lt!450462)))

(declare-fun bs!334317 () Bool)

(assert (= bs!334317 d!385601))

(assert (=> bs!334317 m!1520225))

(assert (=> bs!334317 m!1520225))

(assert (=> bs!334317 m!1520759))

(declare-fun m!1523093 () Bool)

(assert (=> bs!334317 m!1523093))

(assert (=> b!1358083 d!385601))

(declare-fun d!385603 () Bool)

(declare-fun lt!450463 () Token!4456)

(assert (=> d!385603 (= lt!450463 (apply!3360 (list!5306 (_1!7593 lt!449772)) 0))))

(assert (=> d!385603 (= lt!450463 (apply!3361 (c!222696 (_1!7593 lt!449772)) 0))))

(declare-fun e!869826 () Bool)

(assert (=> d!385603 e!869826))

(declare-fun res!612563 () Bool)

(assert (=> d!385603 (=> (not res!612563) (not e!869826))))

(assert (=> d!385603 (= res!612563 (<= 0 0))))

(assert (=> d!385603 (= (apply!3351 (_1!7593 lt!449772) 0) lt!450463)))

(declare-fun b!1359411 () Bool)

(assert (=> b!1359411 (= e!869826 (< 0 (size!11326 (_1!7593 lt!449772))))))

(assert (= (and d!385603 res!612563) b!1359411))

(declare-fun m!1523095 () Bool)

(assert (=> d!385603 m!1523095))

(assert (=> d!385603 m!1523095))

(declare-fun m!1523097 () Bool)

(assert (=> d!385603 m!1523097))

(declare-fun m!1523099 () Bool)

(assert (=> d!385603 m!1523099))

(assert (=> b!1359411 m!1520769))

(assert (=> b!1357907 d!385603))

(declare-fun d!385605 () Bool)

(assert (=> d!385605 (= (inv!18183 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34))) (isBalanced!1334 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34)))))))

(declare-fun bs!334318 () Bool)

(assert (= bs!334318 d!385605))

(declare-fun m!1523101 () Bool)

(assert (=> bs!334318 m!1523101))

(assert (=> tb!71309 d!385605))

(declare-fun d!385607 () Bool)

(declare-fun c!223152 () Bool)

(assert (=> d!385607 (= c!223152 ((_ is Empty!4557) (c!222696 (_1!7593 lt!449591))))))

(declare-fun e!869827 () List!13904)

(assert (=> d!385607 (= (list!5310 (c!222696 (_1!7593 lt!449591))) e!869827)))

(declare-fun b!1359412 () Bool)

(assert (=> b!1359412 (= e!869827 Nil!13838)))

(declare-fun b!1359414 () Bool)

(declare-fun e!869828 () List!13904)

(assert (=> b!1359414 (= e!869828 (list!5315 (xs!7280 (c!222696 (_1!7593 lt!449591)))))))

(declare-fun b!1359413 () Bool)

(assert (=> b!1359413 (= e!869827 e!869828)))

(declare-fun c!223153 () Bool)

(assert (=> b!1359413 (= c!223153 ((_ is Leaf!6952) (c!222696 (_1!7593 lt!449591))))))

(declare-fun b!1359415 () Bool)

(assert (=> b!1359415 (= e!869828 (++!3568 (list!5310 (left!11849 (c!222696 (_1!7593 lt!449591)))) (list!5310 (right!12179 (c!222696 (_1!7593 lt!449591))))))))

(assert (= (and d!385607 c!223152) b!1359412))

(assert (= (and d!385607 (not c!223152)) b!1359413))

(assert (= (and b!1359413 c!223153) b!1359414))

(assert (= (and b!1359413 (not c!223153)) b!1359415))

(declare-fun m!1523103 () Bool)

(assert (=> b!1359414 m!1523103))

(declare-fun m!1523105 () Bool)

(assert (=> b!1359415 m!1523105))

(declare-fun m!1523107 () Bool)

(assert (=> b!1359415 m!1523107))

(assert (=> b!1359415 m!1523105))

(assert (=> b!1359415 m!1523107))

(declare-fun m!1523109 () Bool)

(assert (=> b!1359415 m!1523109))

(assert (=> d!384875 d!385607))

(declare-fun b!1359418 () Bool)

(declare-fun res!612564 () Bool)

(declare-fun e!869829 () Bool)

(assert (=> b!1359418 (=> (not res!612564) (not e!869829))))

(declare-fun lt!450464 () List!13901)

(assert (=> b!1359418 (= res!612564 (= (size!11328 lt!450464) (+ (size!11328 lt!449594) (size!11328 lt!449822))))))

(declare-fun b!1359417 () Bool)

(declare-fun e!869830 () List!13901)

(assert (=> b!1359417 (= e!869830 (Cons!13835 (h!19236 lt!449594) (++!3562 (t!120440 lt!449594) lt!449822)))))

(declare-fun d!385609 () Bool)

(assert (=> d!385609 e!869829))

(declare-fun res!612565 () Bool)

(assert (=> d!385609 (=> (not res!612565) (not e!869829))))

(assert (=> d!385609 (= res!612565 (= (content!2000 lt!450464) ((_ map or) (content!2000 lt!449594) (content!2000 lt!449822))))))

(assert (=> d!385609 (= lt!450464 e!869830)))

(declare-fun c!223154 () Bool)

(assert (=> d!385609 (= c!223154 ((_ is Nil!13835) lt!449594))))

(assert (=> d!385609 (= (++!3562 lt!449594 lt!449822) lt!450464)))

(declare-fun b!1359416 () Bool)

(assert (=> b!1359416 (= e!869830 lt!449822)))

(declare-fun b!1359419 () Bool)

(assert (=> b!1359419 (= e!869829 (or (not (= lt!449822 Nil!13835)) (= lt!450464 lt!449594)))))

(assert (= (and d!385609 c!223154) b!1359416))

(assert (= (and d!385609 (not c!223154)) b!1359417))

(assert (= (and d!385609 res!612565) b!1359418))

(assert (= (and b!1359418 res!612564) b!1359419))

(declare-fun m!1523111 () Bool)

(assert (=> b!1359418 m!1523111))

(assert (=> b!1359418 m!1520995))

(declare-fun m!1523113 () Bool)

(assert (=> b!1359418 m!1523113))

(declare-fun m!1523115 () Bool)

(assert (=> b!1359417 m!1523115))

(declare-fun m!1523117 () Bool)

(assert (=> d!385609 m!1523117))

(assert (=> d!385609 m!1520899))

(declare-fun m!1523119 () Bool)

(assert (=> d!385609 m!1523119))

(assert (=> d!384871 d!385609))

(declare-fun d!385611 () Bool)

(declare-fun lt!450465 () Int)

(assert (=> d!385611 (>= lt!450465 0)))

(declare-fun e!869831 () Int)

(assert (=> d!385611 (= lt!450465 e!869831)))

(declare-fun c!223155 () Bool)

(assert (=> d!385611 (= c!223155 ((_ is Nil!13835) lt!449598))))

(assert (=> d!385611 (= (size!11328 lt!449598) lt!450465)))

(declare-fun b!1359420 () Bool)

(assert (=> b!1359420 (= e!869831 0)))

(declare-fun b!1359421 () Bool)

(assert (=> b!1359421 (= e!869831 (+ 1 (size!11328 (t!120440 lt!449598))))))

(assert (= (and d!385611 c!223155) b!1359420))

(assert (= (and d!385611 (not c!223155)) b!1359421))

(declare-fun m!1523121 () Bool)

(assert (=> b!1359421 m!1523121))

(assert (=> d!384871 d!385611))

(assert (=> d!384871 d!385159))

(assert (=> b!1357612 d!385121))

(assert (=> b!1357612 d!385103))

(declare-fun b!1359425 () Bool)

(declare-fun e!869833 () List!13901)

(assert (=> b!1359425 (= e!869833 (++!3562 (list!5311 (left!11848 (c!222694 lt!449584))) (list!5311 (right!12178 (c!222694 lt!449584)))))))

(declare-fun d!385613 () Bool)

(declare-fun c!223156 () Bool)

(assert (=> d!385613 (= c!223156 ((_ is Empty!4556) (c!222694 lt!449584)))))

(declare-fun e!869832 () List!13901)

(assert (=> d!385613 (= (list!5311 (c!222694 lt!449584)) e!869832)))

(declare-fun b!1359424 () Bool)

(assert (=> b!1359424 (= e!869833 (list!5314 (xs!7279 (c!222694 lt!449584))))))

(declare-fun b!1359422 () Bool)

(assert (=> b!1359422 (= e!869832 Nil!13835)))

(declare-fun b!1359423 () Bool)

(assert (=> b!1359423 (= e!869832 e!869833)))

(declare-fun c!223157 () Bool)

(assert (=> b!1359423 (= c!223157 ((_ is Leaf!6951) (c!222694 lt!449584)))))

(assert (= (and d!385613 c!223156) b!1359422))

(assert (= (and d!385613 (not c!223156)) b!1359423))

(assert (= (and b!1359423 c!223157) b!1359424))

(assert (= (and b!1359423 (not c!223157)) b!1359425))

(declare-fun m!1523123 () Bool)

(assert (=> b!1359425 m!1523123))

(declare-fun m!1523125 () Bool)

(assert (=> b!1359425 m!1523125))

(assert (=> b!1359425 m!1523123))

(assert (=> b!1359425 m!1523125))

(declare-fun m!1523127 () Bool)

(assert (=> b!1359425 m!1523127))

(declare-fun m!1523129 () Bool)

(assert (=> b!1359424 m!1523129))

(assert (=> d!384789 d!385613))

(declare-fun bs!334319 () Bool)

(declare-fun d!385615 () Bool)

(assert (= bs!334319 (and d!385615 d!385095)))

(declare-fun lambda!57603 () Int)

(assert (=> bs!334319 (= (and (= (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (toChars!3511 (transformation!2397 (rule!4146 t2!34)))) (= (toValue!3652 (transformation!2397 (rule!4146 t1!34))) (toValue!3652 (transformation!2397 (rule!4146 t2!34))))) (= lambda!57603 lambda!57544))))

(declare-fun bs!334320 () Bool)

(assert (= bs!334320 (and d!385615 d!385327)))

(assert (=> bs!334320 (= (and (= (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (toChars!3511 (transformation!2397 (h!19237 rules!2550)))) (= (toValue!3652 (transformation!2397 (rule!4146 t1!34))) (toValue!3652 (transformation!2397 (h!19237 rules!2550))))) (= lambda!57603 lambda!57574))))

(assert (=> d!385615 true))

(assert (=> d!385615 (< (dynLambda!6221 order!8383 (toChars!3511 (transformation!2397 (rule!4146 t1!34)))) (dynLambda!6222 order!8385 lambda!57603))))

(assert (=> d!385615 true))

(assert (=> d!385615 (< (dynLambda!6223 order!8387 (toValue!3652 (transformation!2397 (rule!4146 t1!34)))) (dynLambda!6222 order!8385 lambda!57603))))

(assert (=> d!385615 (= (semiInverseModEq!920 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (toValue!3652 (transformation!2397 (rule!4146 t1!34)))) (Forall!532 lambda!57603))))

(declare-fun bs!334321 () Bool)

(assert (= bs!334321 d!385615))

(declare-fun m!1523131 () Bool)

(assert (=> bs!334321 m!1523131))

(assert (=> d!384861 d!385615))

(declare-fun d!385617 () Bool)

(assert (=> d!385617 (= (list!5307 lt!449659) (list!5311 (c!222694 lt!449659)))))

(declare-fun bs!334322 () Bool)

(assert (= bs!334322 d!385617))

(declare-fun m!1523133 () Bool)

(assert (=> bs!334322 m!1523133))

(assert (=> d!384693 d!385617))

(declare-fun d!385619 () Bool)

(declare-fun c!223160 () Bool)

(assert (=> d!385619 (= c!223160 ((_ is Cons!13838) (list!5306 (singletonSeq!1020 t1!34))))))

(declare-fun e!869836 () List!13901)

(assert (=> d!385619 (= (printList!600 thiss!19762 (list!5306 (singletonSeq!1020 t1!34))) e!869836)))

(declare-fun b!1359430 () Bool)

(assert (=> b!1359430 (= e!869836 (++!3562 (list!5307 (charsOf!1369 (h!19239 (list!5306 (singletonSeq!1020 t1!34))))) (printList!600 thiss!19762 (t!120443 (list!5306 (singletonSeq!1020 t1!34))))))))

(declare-fun b!1359431 () Bool)

(assert (=> b!1359431 (= e!869836 Nil!13835)))

(assert (= (and d!385619 c!223160) b!1359430))

(assert (= (and d!385619 (not c!223160)) b!1359431))

(declare-fun m!1523135 () Bool)

(assert (=> b!1359430 m!1523135))

(assert (=> b!1359430 m!1523135))

(declare-fun m!1523137 () Bool)

(assert (=> b!1359430 m!1523137))

(declare-fun m!1523139 () Bool)

(assert (=> b!1359430 m!1523139))

(assert (=> b!1359430 m!1523137))

(assert (=> b!1359430 m!1523139))

(declare-fun m!1523141 () Bool)

(assert (=> b!1359430 m!1523141))

(assert (=> d!384693 d!385619))

(assert (=> d!384693 d!385297))

(declare-fun d!385621 () Bool)

(declare-fun lt!450483 () BalanceConc!9052)

(declare-fun printListTailRec!245 (LexerInterface!2092 List!13904 List!13901) List!13901)

(declare-fun dropList!398 (BalanceConc!9054 Int) List!13904)

(assert (=> d!385621 (= (list!5307 lt!450483) (printListTailRec!245 thiss!19762 (dropList!398 (singletonSeq!1020 t1!34) 0) (list!5307 (BalanceConc!9053 Empty!4556))))))

(declare-fun e!869842 () BalanceConc!9052)

(assert (=> d!385621 (= lt!450483 e!869842)))

(declare-fun c!223163 () Bool)

(assert (=> d!385621 (= c!223163 (>= 0 (size!11326 (singletonSeq!1020 t1!34))))))

(declare-fun e!869841 () Bool)

(assert (=> d!385621 e!869841))

(declare-fun res!612568 () Bool)

(assert (=> d!385621 (=> (not res!612568) (not e!869841))))

(assert (=> d!385621 (= res!612568 (>= 0 0))))

(assert (=> d!385621 (= (printTailRec!582 thiss!19762 (singletonSeq!1020 t1!34) 0 (BalanceConc!9053 Empty!4556)) lt!450483)))

(declare-fun b!1359438 () Bool)

(assert (=> b!1359438 (= e!869841 (<= 0 (size!11326 (singletonSeq!1020 t1!34))))))

(declare-fun b!1359439 () Bool)

(assert (=> b!1359439 (= e!869842 (BalanceConc!9053 Empty!4556))))

(declare-fun b!1359440 () Bool)

(assert (=> b!1359440 (= e!869842 (printTailRec!582 thiss!19762 (singletonSeq!1020 t1!34) (+ 0 1) (++!3564 (BalanceConc!9053 Empty!4556) (charsOf!1369 (apply!3351 (singletonSeq!1020 t1!34) 0)))))))

(declare-fun lt!450480 () List!13904)

(assert (=> b!1359440 (= lt!450480 (list!5306 (singletonSeq!1020 t1!34)))))

(declare-fun lt!450484 () Unit!19983)

(declare-fun lemmaDropApply!436 (List!13904 Int) Unit!19983)

(assert (=> b!1359440 (= lt!450484 (lemmaDropApply!436 lt!450480 0))))

(declare-fun head!2443 (List!13904) Token!4456)

(declare-fun drop!679 (List!13904 Int) List!13904)

(assert (=> b!1359440 (= (head!2443 (drop!679 lt!450480 0)) (apply!3360 lt!450480 0))))

(declare-fun lt!450481 () Unit!19983)

(assert (=> b!1359440 (= lt!450481 lt!450484)))

(declare-fun lt!450485 () List!13904)

(assert (=> b!1359440 (= lt!450485 (list!5306 (singletonSeq!1020 t1!34)))))

(declare-fun lt!450486 () Unit!19983)

(declare-fun lemmaDropTail!416 (List!13904 Int) Unit!19983)

(assert (=> b!1359440 (= lt!450486 (lemmaDropTail!416 lt!450485 0))))

(declare-fun tail!1966 (List!13904) List!13904)

(assert (=> b!1359440 (= (tail!1966 (drop!679 lt!450485 0)) (drop!679 lt!450485 (+ 0 1)))))

(declare-fun lt!450482 () Unit!19983)

(assert (=> b!1359440 (= lt!450482 lt!450486)))

(assert (= (and d!385621 res!612568) b!1359438))

(assert (= (and d!385621 c!223163) b!1359439))

(assert (= (and d!385621 (not c!223163)) b!1359440))

(declare-fun m!1523143 () Bool)

(assert (=> d!385621 m!1523143))

(assert (=> d!385621 m!1520203))

(declare-fun m!1523145 () Bool)

(assert (=> d!385621 m!1523145))

(assert (=> d!385621 m!1522999))

(assert (=> d!385621 m!1523145))

(assert (=> d!385621 m!1522999))

(declare-fun m!1523147 () Bool)

(assert (=> d!385621 m!1523147))

(assert (=> d!385621 m!1520203))

(declare-fun m!1523149 () Bool)

(assert (=> d!385621 m!1523149))

(assert (=> b!1359438 m!1520203))

(assert (=> b!1359438 m!1523149))

(declare-fun m!1523151 () Bool)

(assert (=> b!1359440 m!1523151))

(assert (=> b!1359440 m!1520203))

(declare-fun m!1523153 () Bool)

(assert (=> b!1359440 m!1523153))

(declare-fun m!1523155 () Bool)

(assert (=> b!1359440 m!1523155))

(declare-fun m!1523157 () Bool)

(assert (=> b!1359440 m!1523157))

(declare-fun m!1523159 () Bool)

(assert (=> b!1359440 m!1523159))

(declare-fun m!1523161 () Bool)

(assert (=> b!1359440 m!1523161))

(declare-fun m!1523163 () Bool)

(assert (=> b!1359440 m!1523163))

(declare-fun m!1523165 () Bool)

(assert (=> b!1359440 m!1523165))

(assert (=> b!1359440 m!1520203))

(assert (=> b!1359440 m!1520379))

(declare-fun m!1523167 () Bool)

(assert (=> b!1359440 m!1523167))

(assert (=> b!1359440 m!1523157))

(assert (=> b!1359440 m!1523153))

(assert (=> b!1359440 m!1523161))

(assert (=> b!1359440 m!1523151))

(declare-fun m!1523169 () Bool)

(assert (=> b!1359440 m!1523169))

(assert (=> b!1359440 m!1520203))

(assert (=> b!1359440 m!1523163))

(declare-fun m!1523171 () Bool)

(assert (=> b!1359440 m!1523171))

(declare-fun m!1523173 () Bool)

(assert (=> b!1359440 m!1523173))

(assert (=> d!384693 d!385621))

(declare-fun d!385623 () Bool)

(assert (=> d!385623 (= (inv!18175 (tag!2659 (h!19237 (t!120441 rules!2550)))) (= (mod (str.len (value!77946 (tag!2659 (h!19237 (t!120441 rules!2550))))) 2) 0))))

(assert (=> b!1358100 d!385623))

(declare-fun d!385625 () Bool)

(declare-fun res!612569 () Bool)

(declare-fun e!869843 () Bool)

(assert (=> d!385625 (=> (not res!612569) (not e!869843))))

(assert (=> d!385625 (= res!612569 (semiInverseModEq!920 (toChars!3511 (transformation!2397 (h!19237 (t!120441 rules!2550)))) (toValue!3652 (transformation!2397 (h!19237 (t!120441 rules!2550))))))))

(assert (=> d!385625 (= (inv!18179 (transformation!2397 (h!19237 (t!120441 rules!2550)))) e!869843)))

(declare-fun b!1359441 () Bool)

(assert (=> b!1359441 (= e!869843 (equivClasses!879 (toChars!3511 (transformation!2397 (h!19237 (t!120441 rules!2550)))) (toValue!3652 (transformation!2397 (h!19237 (t!120441 rules!2550))))))))

(assert (= (and d!385625 res!612569) b!1359441))

(declare-fun m!1523175 () Bool)

(assert (=> d!385625 m!1523175))

(declare-fun m!1523177 () Bool)

(assert (=> b!1359441 m!1523177))

(assert (=> b!1358100 d!385625))

(declare-fun d!385627 () Bool)

(assert (=> d!385627 (= (isEmpty!8309 (_1!7595 lt!449768)) ((_ is Nil!13838) (_1!7595 lt!449768)))))

(assert (=> b!1357901 d!385627))

(declare-fun d!385629 () Bool)

(declare-fun res!612570 () Bool)

(declare-fun e!869844 () Bool)

(assert (=> d!385629 (=> res!612570 e!869844)))

(assert (=> d!385629 (= res!612570 (not ((_ is Cons!13836) (t!120441 rules!2550))))))

(assert (=> d!385629 (= (sepAndNonSepRulesDisjointChars!770 rules!2550 (t!120441 rules!2550)) e!869844)))

(declare-fun b!1359442 () Bool)

(declare-fun e!869845 () Bool)

(assert (=> b!1359442 (= e!869844 e!869845)))

(declare-fun res!612571 () Bool)

(assert (=> b!1359442 (=> (not res!612571) (not e!869845))))

(assert (=> b!1359442 (= res!612571 (ruleDisjointCharsFromAllFromOtherType!362 (h!19237 (t!120441 rules!2550)) rules!2550))))

(declare-fun b!1359443 () Bool)

(assert (=> b!1359443 (= e!869845 (sepAndNonSepRulesDisjointChars!770 rules!2550 (t!120441 (t!120441 rules!2550))))))

(assert (= (and d!385629 (not res!612570)) b!1359442))

(assert (= (and b!1359442 res!612571) b!1359443))

(declare-fun m!1523179 () Bool)

(assert (=> b!1359442 m!1523179))

(declare-fun m!1523181 () Bool)

(assert (=> b!1359443 m!1523181))

(assert (=> b!1358052 d!385629))

(declare-fun b!1359446 () Bool)

(declare-fun res!612572 () Bool)

(declare-fun e!869846 () Bool)

(assert (=> b!1359446 (=> (not res!612572) (not e!869846))))

(declare-fun lt!450487 () List!13901)

(assert (=> b!1359446 (= res!612572 (= (size!11328 lt!450487) (+ (size!11328 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789))))) (size!11328 (_2!7594 (get!4332 lt!449789))))))))

(declare-fun b!1359445 () Bool)

(declare-fun e!869847 () List!13901)

(assert (=> b!1359445 (= e!869847 (Cons!13835 (h!19236 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789))))) (++!3562 (t!120440 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789))))) (_2!7594 (get!4332 lt!449789)))))))

(declare-fun d!385631 () Bool)

(assert (=> d!385631 e!869846))

(declare-fun res!612573 () Bool)

(assert (=> d!385631 (=> (not res!612573) (not e!869846))))

(assert (=> d!385631 (= res!612573 (= (content!2000 lt!450487) ((_ map or) (content!2000 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789))))) (content!2000 (_2!7594 (get!4332 lt!449789))))))))

(assert (=> d!385631 (= lt!450487 e!869847)))

(declare-fun c!223164 () Bool)

(assert (=> d!385631 (= c!223164 ((_ is Nil!13835) (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789))))))))

(assert (=> d!385631 (= (++!3562 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789)))) (_2!7594 (get!4332 lt!449789))) lt!450487)))

(declare-fun b!1359444 () Bool)

(assert (=> b!1359444 (= e!869847 (_2!7594 (get!4332 lt!449789)))))

(declare-fun b!1359447 () Bool)

(assert (=> b!1359447 (= e!869846 (or (not (= (_2!7594 (get!4332 lt!449789)) Nil!13835)) (= lt!450487 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!449789)))))))))

(assert (= (and d!385631 c!223164) b!1359444))

(assert (= (and d!385631 (not c!223164)) b!1359445))

(assert (= (and d!385631 res!612573) b!1359446))

(assert (= (and b!1359446 res!612572) b!1359447))

(declare-fun m!1523183 () Bool)

(assert (=> b!1359446 m!1523183))

(assert (=> b!1359446 m!1520837))

(declare-fun m!1523185 () Bool)

(assert (=> b!1359446 m!1523185))

(assert (=> b!1359446 m!1520853))

(declare-fun m!1523187 () Bool)

(assert (=> b!1359445 m!1523187))

(declare-fun m!1523189 () Bool)

(assert (=> d!385631 m!1523189))

(assert (=> d!385631 m!1520837))

(declare-fun m!1523191 () Bool)

(assert (=> d!385631 m!1523191))

(declare-fun m!1523193 () Bool)

(assert (=> d!385631 m!1523193))

(assert (=> b!1357981 d!385631))

(assert (=> b!1357981 d!385453))

(assert (=> b!1357981 d!385457))

(assert (=> b!1357981 d!385133))

(declare-fun b!1359466 () Bool)

(declare-fun e!869857 () Option!2652)

(declare-datatypes ((tuple2!13426 0))(
  ( (tuple2!13427 (_1!7599 List!13901) (_2!7599 List!13901)) )
))
(declare-fun lt!450499 () tuple2!13426)

(assert (=> b!1359466 (= e!869857 (Some!2651 (tuple2!13417 (Token!4457 (apply!3352 (transformation!2397 (h!19237 rules!2550)) (seqFromList!1626 (_1!7599 lt!450499))) (h!19237 rules!2550) (size!11320 (seqFromList!1626 (_1!7599 lt!450499))) (_1!7599 lt!450499)) (_2!7599 lt!450499))))))

(declare-fun lt!450498 () Unit!19983)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!260 (Regex!3711 List!13901) Unit!19983)

(assert (=> b!1359466 (= lt!450498 (longestMatchIsAcceptedByMatchOrIsEmpty!260 (regex!2397 (h!19237 rules!2550)) lt!449599))))

(declare-fun res!612588 () Bool)

(declare-fun findLongestMatchInner!276 (Regex!3711 List!13901 Int List!13901 List!13901 Int) tuple2!13426)

(assert (=> b!1359466 (= res!612588 (isEmpty!8306 (_1!7599 (findLongestMatchInner!276 (regex!2397 (h!19237 rules!2550)) Nil!13835 (size!11328 Nil!13835) lt!449599 lt!449599 (size!11328 lt!449599)))))))

(declare-fun e!869859 () Bool)

(assert (=> b!1359466 (=> res!612588 e!869859)))

(assert (=> b!1359466 e!869859))

(declare-fun lt!450501 () Unit!19983)

(assert (=> b!1359466 (= lt!450501 lt!450498)))

(declare-fun lt!450500 () Unit!19983)

(declare-fun lemmaSemiInverse!330 (TokenValueInjection!4634 BalanceConc!9052) Unit!19983)

(assert (=> b!1359466 (= lt!450500 (lemmaSemiInverse!330 (transformation!2397 (h!19237 rules!2550)) (seqFromList!1626 (_1!7599 lt!450499))))))

(declare-fun b!1359467 () Bool)

(declare-fun e!869856 () Bool)

(declare-fun e!869858 () Bool)

(assert (=> b!1359467 (= e!869856 e!869858)))

(declare-fun res!612591 () Bool)

(assert (=> b!1359467 (=> (not res!612591) (not e!869858))))

(declare-fun lt!450502 () Option!2652)

(assert (=> b!1359467 (= res!612591 (matchR!1704 (regex!2397 (h!19237 rules!2550)) (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!450502))))))))

(declare-fun b!1359468 () Bool)

(assert (=> b!1359468 (= e!869857 None!2651)))

(declare-fun d!385633 () Bool)

(assert (=> d!385633 e!869856))

(declare-fun res!612592 () Bool)

(assert (=> d!385633 (=> res!612592 e!869856)))

(assert (=> d!385633 (= res!612592 (isEmpty!8310 lt!450502))))

(assert (=> d!385633 (= lt!450502 e!869857)))

(declare-fun c!223167 () Bool)

(assert (=> d!385633 (= c!223167 (isEmpty!8306 (_1!7599 lt!450499)))))

(declare-fun findLongestMatch!232 (Regex!3711 List!13901) tuple2!13426)

(assert (=> d!385633 (= lt!450499 (findLongestMatch!232 (regex!2397 (h!19237 rules!2550)) lt!449599))))

(assert (=> d!385633 (ruleValid!586 thiss!19762 (h!19237 rules!2550))))

(assert (=> d!385633 (= (maxPrefixOneRule!608 thiss!19762 (h!19237 rules!2550) lt!449599) lt!450502)))

(declare-fun b!1359469 () Bool)

(declare-fun res!612593 () Bool)

(assert (=> b!1359469 (=> (not res!612593) (not e!869858))))

(assert (=> b!1359469 (= res!612593 (= (rule!4146 (_1!7594 (get!4332 lt!450502))) (h!19237 rules!2550)))))

(declare-fun b!1359470 () Bool)

(declare-fun res!612590 () Bool)

(assert (=> b!1359470 (=> (not res!612590) (not e!869858))))

(assert (=> b!1359470 (= res!612590 (< (size!11328 (_2!7594 (get!4332 lt!450502))) (size!11328 lt!449599)))))

(declare-fun b!1359471 () Bool)

(assert (=> b!1359471 (= e!869858 (= (size!11319 (_1!7594 (get!4332 lt!450502))) (size!11328 (originalCharacters!3259 (_1!7594 (get!4332 lt!450502))))))))

(declare-fun b!1359472 () Bool)

(declare-fun res!612589 () Bool)

(assert (=> b!1359472 (=> (not res!612589) (not e!869858))))

(assert (=> b!1359472 (= res!612589 (= (value!77947 (_1!7594 (get!4332 lt!450502))) (apply!3352 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!450502)))) (seqFromList!1626 (originalCharacters!3259 (_1!7594 (get!4332 lt!450502)))))))))

(declare-fun b!1359473 () Bool)

(declare-fun res!612594 () Bool)

(assert (=> b!1359473 (=> (not res!612594) (not e!869858))))

(assert (=> b!1359473 (= res!612594 (= (++!3562 (list!5307 (charsOf!1369 (_1!7594 (get!4332 lt!450502)))) (_2!7594 (get!4332 lt!450502))) lt!449599))))

(declare-fun b!1359474 () Bool)

(assert (=> b!1359474 (= e!869859 (matchR!1704 (regex!2397 (h!19237 rules!2550)) (_1!7599 (findLongestMatchInner!276 (regex!2397 (h!19237 rules!2550)) Nil!13835 (size!11328 Nil!13835) lt!449599 lt!449599 (size!11328 lt!449599)))))))

(assert (= (and d!385633 c!223167) b!1359468))

(assert (= (and d!385633 (not c!223167)) b!1359466))

(assert (= (and b!1359466 (not res!612588)) b!1359474))

(assert (= (and d!385633 (not res!612592)) b!1359467))

(assert (= (and b!1359467 res!612591) b!1359473))

(assert (= (and b!1359473 res!612594) b!1359470))

(assert (= (and b!1359470 res!612590) b!1359469))

(assert (= (and b!1359469 res!612593) b!1359472))

(assert (= (and b!1359472 res!612589) b!1359471))

(declare-fun m!1523195 () Bool)

(assert (=> b!1359469 m!1523195))

(assert (=> b!1359473 m!1523195))

(declare-fun m!1523197 () Bool)

(assert (=> b!1359473 m!1523197))

(assert (=> b!1359473 m!1523197))

(declare-fun m!1523199 () Bool)

(assert (=> b!1359473 m!1523199))

(assert (=> b!1359473 m!1523199))

(declare-fun m!1523201 () Bool)

(assert (=> b!1359473 m!1523201))

(declare-fun m!1523203 () Bool)

(assert (=> b!1359474 m!1523203))

(assert (=> b!1359474 m!1520855))

(assert (=> b!1359474 m!1523203))

(assert (=> b!1359474 m!1520855))

(declare-fun m!1523205 () Bool)

(assert (=> b!1359474 m!1523205))

(declare-fun m!1523207 () Bool)

(assert (=> b!1359474 m!1523207))

(assert (=> b!1359470 m!1523195))

(declare-fun m!1523209 () Bool)

(assert (=> b!1359470 m!1523209))

(assert (=> b!1359470 m!1520855))

(declare-fun m!1523211 () Bool)

(assert (=> d!385633 m!1523211))

(declare-fun m!1523213 () Bool)

(assert (=> d!385633 m!1523213))

(declare-fun m!1523215 () Bool)

(assert (=> d!385633 m!1523215))

(assert (=> d!385633 m!1522183))

(assert (=> b!1359472 m!1523195))

(declare-fun m!1523217 () Bool)

(assert (=> b!1359472 m!1523217))

(assert (=> b!1359472 m!1523217))

(declare-fun m!1523219 () Bool)

(assert (=> b!1359472 m!1523219))

(assert (=> b!1359467 m!1523195))

(assert (=> b!1359467 m!1523197))

(assert (=> b!1359467 m!1523197))

(assert (=> b!1359467 m!1523199))

(assert (=> b!1359467 m!1523199))

(declare-fun m!1523221 () Bool)

(assert (=> b!1359467 m!1523221))

(assert (=> b!1359471 m!1523195))

(declare-fun m!1523223 () Bool)

(assert (=> b!1359471 m!1523223))

(declare-fun m!1523225 () Bool)

(assert (=> b!1359466 m!1523225))

(assert (=> b!1359466 m!1520855))

(assert (=> b!1359466 m!1523203))

(assert (=> b!1359466 m!1523203))

(assert (=> b!1359466 m!1520855))

(assert (=> b!1359466 m!1523205))

(declare-fun m!1523227 () Bool)

(assert (=> b!1359466 m!1523227))

(assert (=> b!1359466 m!1523225))

(declare-fun m!1523229 () Bool)

(assert (=> b!1359466 m!1523229))

(assert (=> b!1359466 m!1523225))

(declare-fun m!1523231 () Bool)

(assert (=> b!1359466 m!1523231))

(declare-fun m!1523233 () Bool)

(assert (=> b!1359466 m!1523233))

(assert (=> b!1359466 m!1523225))

(declare-fun m!1523235 () Bool)

(assert (=> b!1359466 m!1523235))

(assert (=> bm!91268 d!385633))

(declare-fun d!385635 () Bool)

(declare-fun lt!450503 () Int)

(assert (=> d!385635 (= lt!450503 (size!11330 (list!5306 (_1!7593 lt!449826))))))

(assert (=> d!385635 (= lt!450503 (size!11333 (c!222696 (_1!7593 lt!449826))))))

(assert (=> d!385635 (= (size!11326 (_1!7593 lt!449826)) lt!450503)))

(declare-fun bs!334323 () Bool)

(assert (= bs!334323 d!385635))

(assert (=> bs!334323 m!1521017))

(assert (=> bs!334323 m!1521017))

(declare-fun m!1523237 () Bool)

(assert (=> bs!334323 m!1523237))

(declare-fun m!1523239 () Bool)

(assert (=> bs!334323 m!1523239))

(assert (=> d!384877 d!385635))

(declare-fun d!385637 () Bool)

(declare-fun e!869860 () Bool)

(assert (=> d!385637 e!869860))

(declare-fun res!612595 () Bool)

(assert (=> d!385637 (=> (not res!612595) (not e!869860))))

(declare-fun lt!450527 () tuple2!13414)

(assert (=> d!385637 (= res!612595 (= (list!5306 (_1!7593 lt!450527)) (list!5306 (_1!7593 (lexRec!275 thiss!19762 rules!2550 lt!449584)))))))

(declare-fun e!869862 () tuple2!13414)

(assert (=> d!385637 (= lt!450527 e!869862)))

(declare-fun c!223170 () Bool)

(declare-fun lt!450537 () Option!2654)

(assert (=> d!385637 (= c!223170 ((_ is Some!2653) lt!450537))))

(assert (=> d!385637 (= lt!450537 (maxPrefixZipperSequenceV2!220 thiss!19762 rules!2550 lt!449584 lt!449584))))

(declare-fun lt!450531 () Unit!19983)

(declare-fun lt!450519 () Unit!19983)

(assert (=> d!385637 (= lt!450531 lt!450519)))

(declare-fun lt!450507 () List!13901)

(declare-fun lt!450525 () List!13901)

(assert (=> d!385637 (isSuffix!253 lt!450507 (++!3562 lt!450525 lt!450507))))

(assert (=> d!385637 (= lt!450519 (lemmaConcatTwoListThenFSndIsSuffix!231 lt!450525 lt!450507))))

(assert (=> d!385637 (= lt!450507 (list!5307 lt!449584))))

(assert (=> d!385637 (= lt!450525 (list!5307 (BalanceConc!9053 Empty!4556)))))

(assert (=> d!385637 (= (lexTailRecV2!405 thiss!19762 rules!2550 lt!449584 (BalanceConc!9053 Empty!4556) lt!449584 (BalanceConc!9055 Empty!4557)) lt!450527)))

(declare-fun b!1359475 () Bool)

(declare-fun e!869863 () tuple2!13414)

(assert (=> b!1359475 (= e!869863 (tuple2!13415 (BalanceConc!9055 Empty!4557) lt!449584))))

(declare-fun b!1359476 () Bool)

(assert (=> b!1359476 (= e!869862 (tuple2!13415 (BalanceConc!9055 Empty!4557) lt!449584))))

(declare-fun lt!450505 () BalanceConc!9052)

(declare-fun b!1359477 () Bool)

(assert (=> b!1359477 (= e!869862 (lexTailRecV2!405 thiss!19762 rules!2550 lt!449584 lt!450505 (_2!7598 (v!21408 lt!450537)) (append!398 (BalanceConc!9055 Empty!4557) (_1!7598 (v!21408 lt!450537)))))))

(declare-fun lt!450533 () tuple2!13414)

(assert (=> b!1359477 (= lt!450533 (lexRec!275 thiss!19762 rules!2550 (_2!7598 (v!21408 lt!450537))))))

(declare-fun lt!450510 () List!13901)

(assert (=> b!1359477 (= lt!450510 (list!5307 (BalanceConc!9053 Empty!4556)))))

(declare-fun lt!450522 () List!13901)

(assert (=> b!1359477 (= lt!450522 (list!5307 (charsOf!1369 (_1!7598 (v!21408 lt!450537)))))))

(declare-fun lt!450512 () List!13901)

(assert (=> b!1359477 (= lt!450512 (list!5307 (_2!7598 (v!21408 lt!450537))))))

(declare-fun lt!450506 () Unit!19983)

(assert (=> b!1359477 (= lt!450506 (lemmaConcatAssociativity!849 lt!450510 lt!450522 lt!450512))))

(assert (=> b!1359477 (= (++!3562 (++!3562 lt!450510 lt!450522) lt!450512) (++!3562 lt!450510 (++!3562 lt!450522 lt!450512)))))

(declare-fun lt!450532 () Unit!19983)

(assert (=> b!1359477 (= lt!450532 lt!450506)))

(declare-fun lt!450534 () Option!2654)

(assert (=> b!1359477 (= lt!450534 (maxPrefixZipperSequence!548 thiss!19762 rules!2550 lt!449584))))

(declare-fun c!223169 () Bool)

(assert (=> b!1359477 (= c!223169 ((_ is Some!2653) lt!450534))))

(assert (=> b!1359477 (= (lexRec!275 thiss!19762 rules!2550 lt!449584) e!869863)))

(declare-fun lt!450524 () Unit!19983)

(declare-fun Unit!20003 () Unit!19983)

(assert (=> b!1359477 (= lt!450524 Unit!20003)))

(declare-fun lt!450509 () List!13904)

(assert (=> b!1359477 (= lt!450509 (list!5306 (BalanceConc!9055 Empty!4557)))))

(declare-fun lt!450520 () List!13904)

(assert (=> b!1359477 (= lt!450520 (Cons!13838 (_1!7598 (v!21408 lt!450537)) Nil!13838))))

(declare-fun lt!450535 () List!13904)

(assert (=> b!1359477 (= lt!450535 (list!5306 (_1!7593 lt!450533)))))

(declare-fun lt!450515 () Unit!19983)

(assert (=> b!1359477 (= lt!450515 (lemmaConcatAssociativity!850 lt!450509 lt!450520 lt!450535))))

(assert (=> b!1359477 (= (++!3568 (++!3568 lt!450509 lt!450520) lt!450535) (++!3568 lt!450509 (++!3568 lt!450520 lt!450535)))))

(declare-fun lt!450504 () Unit!19983)

(assert (=> b!1359477 (= lt!450504 lt!450515)))

(declare-fun lt!450528 () List!13901)

(assert (=> b!1359477 (= lt!450528 (++!3562 (list!5307 (BalanceConc!9053 Empty!4556)) (list!5307 (charsOf!1369 (_1!7598 (v!21408 lt!450537))))))))

(declare-fun lt!450514 () List!13901)

(assert (=> b!1359477 (= lt!450514 (list!5307 (_2!7598 (v!21408 lt!450537))))))

(declare-fun lt!450523 () List!13904)

(assert (=> b!1359477 (= lt!450523 (list!5306 (append!398 (BalanceConc!9055 Empty!4557) (_1!7598 (v!21408 lt!450537)))))))

(declare-fun lt!450518 () Unit!19983)

(assert (=> b!1359477 (= lt!450518 (lemmaLexThenLexPrefix!190 thiss!19762 rules!2550 lt!450528 lt!450514 lt!450523 (list!5306 (_1!7593 lt!450533)) (list!5307 (_2!7593 lt!450533))))))

(assert (=> b!1359477 (= (lexList!610 thiss!19762 rules!2550 lt!450528) (tuple2!13419 lt!450523 Nil!13835))))

(declare-fun lt!450529 () Unit!19983)

(assert (=> b!1359477 (= lt!450529 lt!450518)))

(declare-fun lt!450508 () BalanceConc!9052)

(assert (=> b!1359477 (= lt!450508 (++!3564 (BalanceConc!9053 Empty!4556) (charsOf!1369 (_1!7598 (v!21408 lt!450537)))))))

(declare-fun lt!450526 () Option!2654)

(assert (=> b!1359477 (= lt!450526 (maxPrefixZipperSequence!548 thiss!19762 rules!2550 lt!450508))))

(declare-fun c!223168 () Bool)

(assert (=> b!1359477 (= c!223168 ((_ is Some!2653) lt!450526))))

(declare-fun e!869861 () tuple2!13414)

(assert (=> b!1359477 (= (lexRec!275 thiss!19762 rules!2550 (++!3564 (BalanceConc!9053 Empty!4556) (charsOf!1369 (_1!7598 (v!21408 lt!450537))))) e!869861)))

(declare-fun lt!450521 () Unit!19983)

(declare-fun Unit!20004 () Unit!19983)

(assert (=> b!1359477 (= lt!450521 Unit!20004)))

(assert (=> b!1359477 (= lt!450505 (++!3564 (BalanceConc!9053 Empty!4556) (charsOf!1369 (_1!7598 (v!21408 lt!450537)))))))

(declare-fun lt!450530 () List!13901)

(assert (=> b!1359477 (= lt!450530 (list!5307 lt!450505))))

(declare-fun lt!450511 () List!13901)

(assert (=> b!1359477 (= lt!450511 (list!5307 (_2!7598 (v!21408 lt!450537))))))

(declare-fun lt!450536 () Unit!19983)

(assert (=> b!1359477 (= lt!450536 (lemmaConcatTwoListThenFSndIsSuffix!231 lt!450530 lt!450511))))

(assert (=> b!1359477 (isSuffix!253 lt!450511 (++!3562 lt!450530 lt!450511))))

(declare-fun lt!450513 () Unit!19983)

(assert (=> b!1359477 (= lt!450513 lt!450536)))

(declare-fun lt!450516 () tuple2!13414)

(declare-fun b!1359478 () Bool)

(assert (=> b!1359478 (= lt!450516 (lexRec!275 thiss!19762 rules!2550 (_2!7598 (v!21408 lt!450534))))))

(assert (=> b!1359478 (= e!869863 (tuple2!13415 (prepend!362 (_1!7593 lt!450516) (_1!7598 (v!21408 lt!450534))) (_2!7593 lt!450516)))))

(declare-fun b!1359479 () Bool)

(assert (=> b!1359479 (= e!869860 (= (list!5307 (_2!7593 lt!450527)) (list!5307 (_2!7593 (lexRec!275 thiss!19762 rules!2550 lt!449584)))))))

(declare-fun b!1359480 () Bool)

(declare-fun lt!450517 () tuple2!13414)

(assert (=> b!1359480 (= lt!450517 (lexRec!275 thiss!19762 rules!2550 (_2!7598 (v!21408 lt!450526))))))

(assert (=> b!1359480 (= e!869861 (tuple2!13415 (prepend!362 (_1!7593 lt!450517) (_1!7598 (v!21408 lt!450526))) (_2!7593 lt!450517)))))

(declare-fun b!1359481 () Bool)

(assert (=> b!1359481 (= e!869861 (tuple2!13415 (BalanceConc!9055 Empty!4557) lt!450508))))

(assert (= (and d!385637 c!223170) b!1359477))

(assert (= (and d!385637 (not c!223170)) b!1359476))

(assert (= (and b!1359477 c!223169) b!1359478))

(assert (= (and b!1359477 (not c!223169)) b!1359475))

(assert (= (and b!1359477 c!223168) b!1359480))

(assert (= (and b!1359477 (not c!223168)) b!1359481))

(assert (= (and d!385637 res!612595) b!1359479))

(declare-fun m!1523241 () Bool)

(assert (=> b!1359477 m!1523241))

(declare-fun m!1523243 () Bool)

(assert (=> b!1359477 m!1523243))

(declare-fun m!1523245 () Bool)

(assert (=> b!1359477 m!1523245))

(declare-fun m!1523247 () Bool)

(assert (=> b!1359477 m!1523247))

(declare-fun m!1523249 () Bool)

(assert (=> b!1359477 m!1523249))

(declare-fun m!1523251 () Bool)

(assert (=> b!1359477 m!1523251))

(declare-fun m!1523253 () Bool)

(assert (=> b!1359477 m!1523253))

(assert (=> b!1359477 m!1523253))

(declare-fun m!1523255 () Bool)

(assert (=> b!1359477 m!1523255))

(assert (=> b!1359477 m!1522997))

(assert (=> b!1359477 m!1522999))

(assert (=> b!1359477 m!1523251))

(declare-fun m!1523257 () Bool)

(assert (=> b!1359477 m!1523257))

(declare-fun m!1523259 () Bool)

(assert (=> b!1359477 m!1523259))

(declare-fun m!1523261 () Bool)

(assert (=> b!1359477 m!1523261))

(declare-fun m!1523263 () Bool)

(assert (=> b!1359477 m!1523263))

(assert (=> b!1359477 m!1522999))

(declare-fun m!1523265 () Bool)

(assert (=> b!1359477 m!1523265))

(declare-fun m!1523267 () Bool)

(assert (=> b!1359477 m!1523267))

(assert (=> b!1359477 m!1523261))

(declare-fun m!1523269 () Bool)

(assert (=> b!1359477 m!1523269))

(declare-fun m!1523271 () Bool)

(assert (=> b!1359477 m!1523271))

(assert (=> b!1359477 m!1523243))

(declare-fun m!1523273 () Bool)

(assert (=> b!1359477 m!1523273))

(declare-fun m!1523275 () Bool)

(assert (=> b!1359477 m!1523275))

(declare-fun m!1523277 () Bool)

(assert (=> b!1359477 m!1523277))

(assert (=> b!1359477 m!1523243))

(declare-fun m!1523279 () Bool)

(assert (=> b!1359477 m!1523279))

(declare-fun m!1523281 () Bool)

(assert (=> b!1359477 m!1523281))

(declare-fun m!1523283 () Bool)

(assert (=> b!1359477 m!1523283))

(declare-fun m!1523285 () Bool)

(assert (=> b!1359477 m!1523285))

(declare-fun m!1523287 () Bool)

(assert (=> b!1359477 m!1523287))

(declare-fun m!1523289 () Bool)

(assert (=> b!1359477 m!1523289))

(declare-fun m!1523291 () Bool)

(assert (=> b!1359477 m!1523291))

(assert (=> b!1359477 m!1523289))

(declare-fun m!1523293 () Bool)

(assert (=> b!1359477 m!1523293))

(assert (=> b!1359477 m!1523247))

(declare-fun m!1523295 () Bool)

(assert (=> b!1359477 m!1523295))

(declare-fun m!1523297 () Bool)

(assert (=> b!1359477 m!1523297))

(assert (=> b!1359477 m!1523285))

(assert (=> b!1359477 m!1523281))

(assert (=> b!1359477 m!1523285))

(assert (=> b!1359477 m!1523265))

(declare-fun m!1523299 () Bool)

(assert (=> b!1359477 m!1523299))

(assert (=> b!1359477 m!1523291))

(assert (=> b!1359477 m!1523271))

(declare-fun m!1523301 () Bool)

(assert (=> b!1359477 m!1523301))

(declare-fun m!1523303 () Bool)

(assert (=> b!1359480 m!1523303))

(declare-fun m!1523305 () Bool)

(assert (=> b!1359480 m!1523305))

(declare-fun m!1523307 () Bool)

(assert (=> d!385637 m!1523307))

(assert (=> d!385637 m!1523307))

(declare-fun m!1523309 () Bool)

(assert (=> d!385637 m!1523309))

(assert (=> d!385637 m!1520225))

(declare-fun m!1523311 () Bool)

(assert (=> d!385637 m!1523311))

(declare-fun m!1523313 () Bool)

(assert (=> d!385637 m!1523313))

(declare-fun m!1523315 () Bool)

(assert (=> d!385637 m!1523315))

(assert (=> d!385637 m!1522999))

(declare-fun m!1523317 () Bool)

(assert (=> d!385637 m!1523317))

(assert (=> d!385637 m!1523277))

(declare-fun m!1523319 () Bool)

(assert (=> b!1359478 m!1523319))

(declare-fun m!1523321 () Bool)

(assert (=> b!1359478 m!1523321))

(declare-fun m!1523323 () Bool)

(assert (=> b!1359479 m!1523323))

(assert (=> b!1359479 m!1523277))

(declare-fun m!1523325 () Bool)

(assert (=> b!1359479 m!1523325))

(assert (=> d!384877 d!385637))

(declare-fun d!385639 () Bool)

(declare-fun lt!450538 () C!7712)

(assert (=> d!385639 (contains!2568 (list!5307 lt!449593) lt!450538)))

(declare-fun e!869865 () C!7712)

(assert (=> d!385639 (= lt!450538 e!869865)))

(declare-fun c!223171 () Bool)

(assert (=> d!385639 (= c!223171 (= 0 0))))

(declare-fun e!869864 () Bool)

(assert (=> d!385639 e!869864))

(declare-fun res!612596 () Bool)

(assert (=> d!385639 (=> (not res!612596) (not e!869864))))

(assert (=> d!385639 (= res!612596 (<= 0 0))))

(assert (=> d!385639 (= (apply!3354 (list!5307 lt!449593) 0) lt!450538)))

(declare-fun b!1359482 () Bool)

(assert (=> b!1359482 (= e!869864 (< 0 (size!11328 (list!5307 lt!449593))))))

(declare-fun b!1359483 () Bool)

(assert (=> b!1359483 (= e!869865 (head!2437 (list!5307 lt!449593)))))

(declare-fun b!1359484 () Bool)

(assert (=> b!1359484 (= e!869865 (apply!3354 (tail!1961 (list!5307 lt!449593)) (- 0 1)))))

(assert (= (and d!385639 res!612596) b!1359482))

(assert (= (and d!385639 c!223171) b!1359483))

(assert (= (and d!385639 (not c!223171)) b!1359484))

(assert (=> d!385639 m!1520589))

(declare-fun m!1523327 () Bool)

(assert (=> d!385639 m!1523327))

(assert (=> b!1359482 m!1520589))

(assert (=> b!1359482 m!1520591))

(assert (=> b!1359483 m!1520589))

(declare-fun m!1523329 () Bool)

(assert (=> b!1359483 m!1523329))

(assert (=> b!1359484 m!1520589))

(declare-fun m!1523331 () Bool)

(assert (=> b!1359484 m!1523331))

(assert (=> b!1359484 m!1523331))

(declare-fun m!1523333 () Bool)

(assert (=> b!1359484 m!1523333))

(assert (=> d!384849 d!385639))

(assert (=> d!384849 d!385447))

(declare-fun bm!91354 () Bool)

(declare-fun c!223173 () Bool)

(declare-fun c!223174 () Bool)

(assert (=> bm!91354 (= c!223173 c!223174)))

(declare-fun e!869867 () Int)

(declare-fun call!91359 () C!7712)

(assert (=> bm!91354 (= call!91359 (apply!3355 (ite c!223174 (left!11848 (c!222694 lt!449593)) (right!12178 (c!222694 lt!449593))) e!869867))))

(declare-fun b!1359485 () Bool)

(declare-fun e!869869 () C!7712)

(declare-fun e!869866 () C!7712)

(assert (=> b!1359485 (= e!869869 e!869866)))

(declare-fun lt!450540 () Bool)

(assert (=> b!1359485 (= lt!450540 (appendIndex!161 (list!5311 (left!11848 (c!222694 lt!449593))) (list!5311 (right!12178 (c!222694 lt!449593))) 0))))

(assert (=> b!1359485 (= c!223174 (< 0 (size!11329 (left!11848 (c!222694 lt!449593)))))))

(declare-fun b!1359486 () Bool)

(assert (=> b!1359486 (= e!869866 call!91359)))

(declare-fun b!1359487 () Bool)

(assert (=> b!1359487 (= e!869869 (apply!3359 (xs!7279 (c!222694 lt!449593)) 0))))

(declare-fun d!385641 () Bool)

(declare-fun lt!450539 () C!7712)

(assert (=> d!385641 (= lt!450539 (apply!3354 (list!5311 (c!222694 lt!449593)) 0))))

(assert (=> d!385641 (= lt!450539 e!869869)))

(declare-fun c!223172 () Bool)

(assert (=> d!385641 (= c!223172 ((_ is Leaf!6951) (c!222694 lt!449593)))))

(declare-fun e!869868 () Bool)

(assert (=> d!385641 e!869868))

(declare-fun res!612597 () Bool)

(assert (=> d!385641 (=> (not res!612597) (not e!869868))))

(assert (=> d!385641 (= res!612597 (<= 0 0))))

(assert (=> d!385641 (= (apply!3355 (c!222694 lt!449593) 0) lt!450539)))

(declare-fun b!1359488 () Bool)

(assert (=> b!1359488 (= e!869866 call!91359)))

(declare-fun b!1359489 () Bool)

(assert (=> b!1359489 (= e!869867 (- 0 (size!11329 (left!11848 (c!222694 lt!449593)))))))

(declare-fun b!1359490 () Bool)

(assert (=> b!1359490 (= e!869868 (< 0 (size!11329 (c!222694 lt!449593))))))

(declare-fun b!1359491 () Bool)

(assert (=> b!1359491 (= e!869867 0)))

(assert (= (and d!385641 res!612597) b!1359490))

(assert (= (and d!385641 c!223172) b!1359487))

(assert (= (and d!385641 (not c!223172)) b!1359485))

(assert (= (and b!1359485 c!223174) b!1359486))

(assert (= (and b!1359485 (not c!223174)) b!1359488))

(assert (= (or b!1359486 b!1359488) bm!91354))

(assert (= (and bm!91354 c!223173) b!1359491))

(assert (= (and bm!91354 (not c!223173)) b!1359489))

(assert (=> b!1359490 m!1520593))

(declare-fun m!1523335 () Bool)

(assert (=> b!1359485 m!1523335))

(declare-fun m!1523337 () Bool)

(assert (=> b!1359485 m!1523337))

(assert (=> b!1359485 m!1523335))

(assert (=> b!1359485 m!1523337))

(declare-fun m!1523339 () Bool)

(assert (=> b!1359485 m!1523339))

(declare-fun m!1523341 () Bool)

(assert (=> b!1359485 m!1523341))

(assert (=> b!1359489 m!1523341))

(assert (=> d!385641 m!1522597))

(assert (=> d!385641 m!1522597))

(declare-fun m!1523343 () Bool)

(assert (=> d!385641 m!1523343))

(declare-fun m!1523345 () Bool)

(assert (=> bm!91354 m!1523345))

(declare-fun m!1523347 () Bool)

(assert (=> b!1359487 m!1523347))

(assert (=> d!384849 d!385641))

(declare-fun b!1359492 () Bool)

(declare-fun res!612601 () Bool)

(declare-fun e!869873 () Bool)

(assert (=> b!1359492 (=> (not res!612601) (not e!869873))))

(declare-fun call!91360 () Bool)

(assert (=> b!1359492 (= res!612601 (not call!91360))))

(declare-fun e!869871 () Bool)

(declare-fun b!1359493 () Bool)

(assert (=> b!1359493 (= e!869871 (matchR!1704 (derivativeStep!948 (h!19238 (map!3056 rules!2550 lambda!57485)) (head!2437 lt!449598)) (tail!1961 lt!449598)))))

(declare-fun b!1359494 () Bool)

(declare-fun res!612603 () Bool)

(declare-fun e!869872 () Bool)

(assert (=> b!1359494 (=> res!612603 e!869872)))

(assert (=> b!1359494 (= res!612603 e!869873)))

(declare-fun res!612602 () Bool)

(assert (=> b!1359494 (=> (not res!612602) (not e!869873))))

(declare-fun lt!450541 () Bool)

(assert (=> b!1359494 (= res!612602 lt!450541)))

(declare-fun b!1359495 () Bool)

(assert (=> b!1359495 (= e!869873 (= (head!2437 lt!449598) (c!222695 (h!19238 (map!3056 rules!2550 lambda!57485)))))))

(declare-fun b!1359496 () Bool)

(assert (=> b!1359496 (= e!869871 (nullable!1190 (h!19238 (map!3056 rules!2550 lambda!57485))))))

(declare-fun bm!91355 () Bool)

(assert (=> bm!91355 (= call!91360 (isEmpty!8306 lt!449598))))

(declare-fun d!385643 () Bool)

(declare-fun e!869870 () Bool)

(assert (=> d!385643 e!869870))

(declare-fun c!223176 () Bool)

(assert (=> d!385643 (= c!223176 ((_ is EmptyExpr!3711) (h!19238 (map!3056 rules!2550 lambda!57485))))))

(assert (=> d!385643 (= lt!450541 e!869871)))

(declare-fun c!223177 () Bool)

(assert (=> d!385643 (= c!223177 (isEmpty!8306 lt!449598))))

(assert (=> d!385643 (validRegex!1611 (h!19238 (map!3056 rules!2550 lambda!57485)))))

(assert (=> d!385643 (= (matchR!1704 (h!19238 (map!3056 rules!2550 lambda!57485)) lt!449598) lt!450541)))

(declare-fun b!1359497 () Bool)

(declare-fun e!869874 () Bool)

(assert (=> b!1359497 (= e!869874 (not lt!450541))))

(declare-fun b!1359498 () Bool)

(declare-fun e!869875 () Bool)

(assert (=> b!1359498 (= e!869872 e!869875)))

(declare-fun res!612604 () Bool)

(assert (=> b!1359498 (=> (not res!612604) (not e!869875))))

(assert (=> b!1359498 (= res!612604 (not lt!450541))))

(declare-fun b!1359499 () Bool)

(declare-fun e!869876 () Bool)

(assert (=> b!1359499 (= e!869875 e!869876)))

(declare-fun res!612598 () Bool)

(assert (=> b!1359499 (=> res!612598 e!869876)))

(assert (=> b!1359499 (= res!612598 call!91360)))

(declare-fun b!1359500 () Bool)

(declare-fun res!612605 () Bool)

(assert (=> b!1359500 (=> res!612605 e!869872)))

(assert (=> b!1359500 (= res!612605 (not ((_ is ElementMatch!3711) (h!19238 (map!3056 rules!2550 lambda!57485)))))))

(assert (=> b!1359500 (= e!869874 e!869872)))

(declare-fun b!1359501 () Bool)

(declare-fun res!612599 () Bool)

(assert (=> b!1359501 (=> res!612599 e!869876)))

(assert (=> b!1359501 (= res!612599 (not (isEmpty!8306 (tail!1961 lt!449598))))))

(declare-fun b!1359502 () Bool)

(assert (=> b!1359502 (= e!869876 (not (= (head!2437 lt!449598) (c!222695 (h!19238 (map!3056 rules!2550 lambda!57485))))))))

(declare-fun b!1359503 () Bool)

(assert (=> b!1359503 (= e!869870 (= lt!450541 call!91360))))

(declare-fun b!1359504 () Bool)

(declare-fun res!612600 () Bool)

(assert (=> b!1359504 (=> (not res!612600) (not e!869873))))

(assert (=> b!1359504 (= res!612600 (isEmpty!8306 (tail!1961 lt!449598)))))

(declare-fun b!1359505 () Bool)

(assert (=> b!1359505 (= e!869870 e!869874)))

(declare-fun c!223175 () Bool)

(assert (=> b!1359505 (= c!223175 ((_ is EmptyLang!3711) (h!19238 (map!3056 rules!2550 lambda!57485))))))

(assert (= (and d!385643 c!223177) b!1359496))

(assert (= (and d!385643 (not c!223177)) b!1359493))

(assert (= (and d!385643 c!223176) b!1359503))

(assert (= (and d!385643 (not c!223176)) b!1359505))

(assert (= (and b!1359505 c!223175) b!1359497))

(assert (= (and b!1359505 (not c!223175)) b!1359500))

(assert (= (and b!1359500 (not res!612605)) b!1359494))

(assert (= (and b!1359494 res!612602) b!1359492))

(assert (= (and b!1359492 res!612601) b!1359504))

(assert (= (and b!1359504 res!612600) b!1359495))

(assert (= (and b!1359494 (not res!612603)) b!1359498))

(assert (= (and b!1359498 res!612604) b!1359499))

(assert (= (and b!1359499 (not res!612598)) b!1359501))

(assert (= (and b!1359501 (not res!612599)) b!1359502))

(assert (= (or b!1359503 b!1359492 b!1359499) bm!91355))

(assert (=> b!1359495 m!1520391))

(assert (=> b!1359502 m!1520391))

(assert (=> b!1359504 m!1520393))

(assert (=> b!1359504 m!1520393))

(assert (=> b!1359504 m!1520395))

(declare-fun m!1523349 () Bool)

(assert (=> b!1359496 m!1523349))

(assert (=> bm!91355 m!1520399))

(assert (=> b!1359501 m!1520393))

(assert (=> b!1359501 m!1520393))

(assert (=> b!1359501 m!1520395))

(assert (=> b!1359493 m!1520391))

(assert (=> b!1359493 m!1520391))

(declare-fun m!1523351 () Bool)

(assert (=> b!1359493 m!1523351))

(assert (=> b!1359493 m!1520393))

(assert (=> b!1359493 m!1523351))

(assert (=> b!1359493 m!1520393))

(declare-fun m!1523353 () Bool)

(assert (=> b!1359493 m!1523353))

(assert (=> d!385643 m!1520399))

(assert (=> d!385643 m!1521051))

(assert (=> b!1358126 d!385643))

(declare-fun b!1359508 () Bool)

(declare-fun res!612606 () Bool)

(declare-fun e!869877 () Bool)

(assert (=> b!1359508 (=> (not res!612606) (not e!869877))))

(declare-fun lt!450542 () List!13901)

(assert (=> b!1359508 (= res!612606 (= (size!11328 lt!450542) (+ (size!11328 (t!120440 lt!449594)) (size!11328 (getSuffix!559 lt!449598 lt!449594)))))))

(declare-fun b!1359507 () Bool)

(declare-fun e!869878 () List!13901)

(assert (=> b!1359507 (= e!869878 (Cons!13835 (h!19236 (t!120440 lt!449594)) (++!3562 (t!120440 (t!120440 lt!449594)) (getSuffix!559 lt!449598 lt!449594))))))

(declare-fun d!385645 () Bool)

(assert (=> d!385645 e!869877))

(declare-fun res!612607 () Bool)

(assert (=> d!385645 (=> (not res!612607) (not e!869877))))

(assert (=> d!385645 (= res!612607 (= (content!2000 lt!450542) ((_ map or) (content!2000 (t!120440 lt!449594)) (content!2000 (getSuffix!559 lt!449598 lt!449594)))))))

(assert (=> d!385645 (= lt!450542 e!869878)))

(declare-fun c!223178 () Bool)

(assert (=> d!385645 (= c!223178 ((_ is Nil!13835) (t!120440 lt!449594)))))

(assert (=> d!385645 (= (++!3562 (t!120440 lt!449594) (getSuffix!559 lt!449598 lt!449594)) lt!450542)))

(declare-fun b!1359506 () Bool)

(assert (=> b!1359506 (= e!869878 (getSuffix!559 lt!449598 lt!449594))))

(declare-fun b!1359509 () Bool)

(assert (=> b!1359509 (= e!869877 (or (not (= (getSuffix!559 lt!449598 lt!449594) Nil!13835)) (= lt!450542 (t!120440 lt!449594))))))

(assert (= (and d!385645 c!223178) b!1359506))

(assert (= (and d!385645 (not c!223178)) b!1359507))

(assert (= (and d!385645 res!612607) b!1359508))

(assert (= (and b!1359508 res!612606) b!1359509))

(declare-fun m!1523355 () Bool)

(assert (=> b!1359508 m!1523355))

(assert (=> b!1359508 m!1521625))

(assert (=> b!1359508 m!1520133))

(assert (=> b!1359508 m!1520997))

(assert (=> b!1359507 m!1520133))

(declare-fun m!1523357 () Bool)

(assert (=> b!1359507 m!1523357))

(declare-fun m!1523359 () Bool)

(assert (=> d!385645 m!1523359))

(assert (=> d!385645 m!1521605))

(assert (=> d!385645 m!1520133))

(assert (=> d!385645 m!1521003))

(assert (=> b!1358071 d!385645))

(declare-fun d!385647 () Bool)

(declare-fun lt!450543 () Int)

(assert (=> d!385647 (= lt!450543 (size!11330 (list!5306 (_1!7593 lt!449772))))))

(assert (=> d!385647 (= lt!450543 (size!11333 (c!222696 (_1!7593 lt!449772))))))

(assert (=> d!385647 (= (size!11326 (_1!7593 lt!449772)) lt!450543)))

(declare-fun bs!334324 () Bool)

(assert (= bs!334324 d!385647))

(assert (=> bs!334324 m!1523095))

(assert (=> bs!334324 m!1523095))

(declare-fun m!1523361 () Bool)

(assert (=> bs!334324 m!1523361))

(declare-fun m!1523363 () Bool)

(assert (=> bs!334324 m!1523363))

(assert (=> d!384791 d!385647))

(declare-fun d!385649 () Bool)

(assert (=> d!385649 (= (list!5306 (_1!7593 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t2!34))))) (list!5310 (c!222696 (_1!7593 (lex!919 thiss!19762 rules!2550 (print!858 thiss!19762 (singletonSeq!1020 t2!34)))))))))

(declare-fun bs!334325 () Bool)

(assert (= bs!334325 d!385649))

(declare-fun m!1523365 () Bool)

(assert (=> bs!334325 m!1523365))

(assert (=> d!384791 d!385649))

(assert (=> d!384791 d!384879))

(assert (=> d!384791 d!384881))

(assert (=> d!384791 d!384639))

(assert (=> d!384791 d!385291))

(declare-fun d!385651 () Bool)

(assert (=> d!385651 (= (list!5306 (singletonSeq!1020 t2!34)) (list!5310 (c!222696 (singletonSeq!1020 t2!34))))))

(declare-fun bs!334326 () Bool)

(assert (= bs!334326 d!385651))

(declare-fun m!1523367 () Bool)

(assert (=> bs!334326 m!1523367))

(assert (=> d!384791 d!385651))

(declare-fun d!385653 () Bool)

(declare-fun lostCauseFct!128 (Regex!3711) Bool)

(assert (=> d!385653 (= (lostCause!325 lt!449588) (lostCauseFct!128 lt!449588))))

(declare-fun bs!334327 () Bool)

(assert (= bs!334327 d!385653))

(declare-fun m!1523369 () Bool)

(assert (=> bs!334327 m!1523369))

(assert (=> b!1358017 d!385653))

(declare-fun d!385655 () Bool)

(declare-fun lt!450544 () Bool)

(assert (=> d!385655 (= lt!450544 (isEmpty!8306 (list!5307 (_2!7593 lt!449652))))))

(assert (=> d!385655 (= lt!450544 (isEmpty!8308 (c!222694 (_2!7593 lt!449652))))))

(assert (=> d!385655 (= (isEmpty!8300 (_2!7593 lt!449652)) lt!450544)))

(declare-fun bs!334328 () Bool)

(assert (= bs!334328 d!385655))

(declare-fun m!1523371 () Bool)

(assert (=> bs!334328 m!1523371))

(assert (=> bs!334328 m!1523371))

(declare-fun m!1523373 () Bool)

(assert (=> bs!334328 m!1523373))

(declare-fun m!1523375 () Bool)

(assert (=> bs!334328 m!1523375))

(assert (=> b!1357570 d!385655))

(declare-fun d!385657 () Bool)

(declare-fun lt!450545 () Bool)

(assert (=> d!385657 (= lt!450545 (select (content!2003 rules!2550) lt!449667))))

(declare-fun e!869879 () Bool)

(assert (=> d!385657 (= lt!450545 e!869879)))

(declare-fun res!612609 () Bool)

(assert (=> d!385657 (=> (not res!612609) (not e!869879))))

(assert (=> d!385657 (= res!612609 ((_ is Cons!13836) rules!2550))))

(assert (=> d!385657 (= (contains!2569 rules!2550 lt!449667) lt!450545)))

(declare-fun b!1359510 () Bool)

(declare-fun e!869880 () Bool)

(assert (=> b!1359510 (= e!869879 e!869880)))

(declare-fun res!612608 () Bool)

(assert (=> b!1359510 (=> res!612608 e!869880)))

(assert (=> b!1359510 (= res!612608 (= (h!19237 rules!2550) lt!449667))))

(declare-fun b!1359511 () Bool)

(assert (=> b!1359511 (= e!869880 (contains!2569 (t!120441 rules!2550) lt!449667))))

(assert (= (and d!385657 res!612609) b!1359510))

(assert (= (and b!1359510 (not res!612608)) b!1359511))

(assert (=> d!385657 m!1520969))

(declare-fun m!1523377 () Bool)

(assert (=> d!385657 m!1523377))

(declare-fun m!1523379 () Bool)

(assert (=> b!1359511 m!1523379))

(assert (=> b!1357633 d!385657))

(declare-fun d!385659 () Bool)

(assert (=> d!385659 (= (head!2440 (map!3056 rules!2550 lambda!57485)) (h!19238 (map!3056 rules!2550 lambda!57485)))))

(assert (=> b!1357894 d!385659))

(assert (=> b!1358031 d!384747))

(declare-fun d!385661 () Bool)

(assert (=> d!385661 (= (isEmpty!8306 (originalCharacters!3259 t1!34)) ((_ is Nil!13835) (originalCharacters!3259 t1!34)))))

(assert (=> d!384825 d!385661))

(declare-fun d!385663 () Bool)

(declare-fun lt!450546 () Int)

(assert (=> d!385663 (>= lt!450546 0)))

(declare-fun e!869881 () Int)

(assert (=> d!385663 (= lt!450546 e!869881)))

(declare-fun c!223179 () Bool)

(assert (=> d!385663 (= c!223179 ((_ is Nil!13835) (originalCharacters!3259 t1!34)))))

(assert (=> d!385663 (= (size!11328 (originalCharacters!3259 t1!34)) lt!450546)))

(declare-fun b!1359512 () Bool)

(assert (=> b!1359512 (= e!869881 0)))

(declare-fun b!1359513 () Bool)

(assert (=> b!1359513 (= e!869881 (+ 1 (size!11328 (t!120440 (originalCharacters!3259 t1!34)))))))

(assert (= (and d!385663 c!223179) b!1359512))

(assert (= (and d!385663 (not c!223179)) b!1359513))

(declare-fun m!1523381 () Bool)

(assert (=> b!1359513 m!1523381))

(assert (=> b!1358000 d!385663))

(declare-fun d!385665 () Bool)

(assert (=> d!385665 (= (head!2438 rules!2550) (h!19237 rules!2550))))

(assert (=> b!1357637 d!385665))

(declare-fun b!1359514 () Bool)

(declare-fun res!612613 () Bool)

(declare-fun e!869885 () Bool)

(assert (=> b!1359514 (=> (not res!612613) (not e!869885))))

(declare-fun call!91361 () Bool)

(assert (=> b!1359514 (= res!612613 (not call!91361))))

(declare-fun b!1359515 () Bool)

(declare-fun e!869883 () Bool)

(assert (=> b!1359515 (= e!869883 (matchR!1704 (derivativeStep!948 (derivativeStep!948 lt!449588 (head!2437 lt!449598)) (head!2437 (tail!1961 lt!449598))) (tail!1961 (tail!1961 lt!449598))))))

(declare-fun b!1359516 () Bool)

(declare-fun res!612615 () Bool)

(declare-fun e!869884 () Bool)

(assert (=> b!1359516 (=> res!612615 e!869884)))

(assert (=> b!1359516 (= res!612615 e!869885)))

(declare-fun res!612614 () Bool)

(assert (=> b!1359516 (=> (not res!612614) (not e!869885))))

(declare-fun lt!450547 () Bool)

(assert (=> b!1359516 (= res!612614 lt!450547)))

(declare-fun b!1359517 () Bool)

(assert (=> b!1359517 (= e!869885 (= (head!2437 (tail!1961 lt!449598)) (c!222695 (derivativeStep!948 lt!449588 (head!2437 lt!449598)))))))

(declare-fun b!1359518 () Bool)

(assert (=> b!1359518 (= e!869883 (nullable!1190 (derivativeStep!948 lt!449588 (head!2437 lt!449598))))))

(declare-fun bm!91356 () Bool)

(assert (=> bm!91356 (= call!91361 (isEmpty!8306 (tail!1961 lt!449598)))))

(declare-fun d!385667 () Bool)

(declare-fun e!869882 () Bool)

(assert (=> d!385667 e!869882))

(declare-fun c!223181 () Bool)

(assert (=> d!385667 (= c!223181 ((_ is EmptyExpr!3711) (derivativeStep!948 lt!449588 (head!2437 lt!449598))))))

(assert (=> d!385667 (= lt!450547 e!869883)))

(declare-fun c!223182 () Bool)

(assert (=> d!385667 (= c!223182 (isEmpty!8306 (tail!1961 lt!449598)))))

(assert (=> d!385667 (validRegex!1611 (derivativeStep!948 lt!449588 (head!2437 lt!449598)))))

(assert (=> d!385667 (= (matchR!1704 (derivativeStep!948 lt!449588 (head!2437 lt!449598)) (tail!1961 lt!449598)) lt!450547)))

(declare-fun b!1359519 () Bool)

(declare-fun e!869886 () Bool)

(assert (=> b!1359519 (= e!869886 (not lt!450547))))

(declare-fun b!1359520 () Bool)

(declare-fun e!869887 () Bool)

(assert (=> b!1359520 (= e!869884 e!869887)))

(declare-fun res!612616 () Bool)

(assert (=> b!1359520 (=> (not res!612616) (not e!869887))))

(assert (=> b!1359520 (= res!612616 (not lt!450547))))

(declare-fun b!1359521 () Bool)

(declare-fun e!869888 () Bool)

(assert (=> b!1359521 (= e!869887 e!869888)))

(declare-fun res!612610 () Bool)

(assert (=> b!1359521 (=> res!612610 e!869888)))

(assert (=> b!1359521 (= res!612610 call!91361)))

(declare-fun b!1359522 () Bool)

(declare-fun res!612617 () Bool)

(assert (=> b!1359522 (=> res!612617 e!869884)))

(assert (=> b!1359522 (= res!612617 (not ((_ is ElementMatch!3711) (derivativeStep!948 lt!449588 (head!2437 lt!449598)))))))

(assert (=> b!1359522 (= e!869886 e!869884)))

(declare-fun b!1359523 () Bool)

(declare-fun res!612611 () Bool)

(assert (=> b!1359523 (=> res!612611 e!869888)))

(assert (=> b!1359523 (= res!612611 (not (isEmpty!8306 (tail!1961 (tail!1961 lt!449598)))))))

(declare-fun b!1359524 () Bool)

(assert (=> b!1359524 (= e!869888 (not (= (head!2437 (tail!1961 lt!449598)) (c!222695 (derivativeStep!948 lt!449588 (head!2437 lt!449598))))))))

(declare-fun b!1359525 () Bool)

(assert (=> b!1359525 (= e!869882 (= lt!450547 call!91361))))

(declare-fun b!1359526 () Bool)

(declare-fun res!612612 () Bool)

(assert (=> b!1359526 (=> (not res!612612) (not e!869885))))

(assert (=> b!1359526 (= res!612612 (isEmpty!8306 (tail!1961 (tail!1961 lt!449598))))))

(declare-fun b!1359527 () Bool)

(assert (=> b!1359527 (= e!869882 e!869886)))

(declare-fun c!223180 () Bool)

(assert (=> b!1359527 (= c!223180 ((_ is EmptyLang!3711) (derivativeStep!948 lt!449588 (head!2437 lt!449598))))))

(assert (= (and d!385667 c!223182) b!1359518))

(assert (= (and d!385667 (not c!223182)) b!1359515))

(assert (= (and d!385667 c!223181) b!1359525))

(assert (= (and d!385667 (not c!223181)) b!1359527))

(assert (= (and b!1359527 c!223180) b!1359519))

(assert (= (and b!1359527 (not c!223180)) b!1359522))

(assert (= (and b!1359522 (not res!612617)) b!1359516))

(assert (= (and b!1359516 res!612614) b!1359514))

(assert (= (and b!1359514 res!612613) b!1359526))

(assert (= (and b!1359526 res!612612) b!1359517))

(assert (= (and b!1359516 (not res!612615)) b!1359520))

(assert (= (and b!1359520 res!612616) b!1359521))

(assert (= (and b!1359521 (not res!612610)) b!1359523))

(assert (= (and b!1359523 (not res!612611)) b!1359524))

(assert (= (or b!1359525 b!1359514 b!1359521) bm!91356))

(assert (=> b!1359517 m!1520393))

(declare-fun m!1523383 () Bool)

(assert (=> b!1359517 m!1523383))

(assert (=> b!1359524 m!1520393))

(assert (=> b!1359524 m!1523383))

(assert (=> b!1359526 m!1520393))

(assert (=> b!1359526 m!1521627))

(assert (=> b!1359526 m!1521627))

(declare-fun m!1523385 () Bool)

(assert (=> b!1359526 m!1523385))

(assert (=> b!1359518 m!1520401))

(declare-fun m!1523387 () Bool)

(assert (=> b!1359518 m!1523387))

(assert (=> bm!91356 m!1520393))

(assert (=> bm!91356 m!1520395))

(assert (=> b!1359523 m!1520393))

(assert (=> b!1359523 m!1521627))

(assert (=> b!1359523 m!1521627))

(assert (=> b!1359523 m!1523385))

(assert (=> b!1359515 m!1520393))

(assert (=> b!1359515 m!1523383))

(assert (=> b!1359515 m!1520401))

(assert (=> b!1359515 m!1523383))

(declare-fun m!1523389 () Bool)

(assert (=> b!1359515 m!1523389))

(assert (=> b!1359515 m!1520393))

(assert (=> b!1359515 m!1521627))

(assert (=> b!1359515 m!1523389))

(assert (=> b!1359515 m!1521627))

(declare-fun m!1523391 () Bool)

(assert (=> b!1359515 m!1523391))

(assert (=> d!385667 m!1520393))

(assert (=> d!385667 m!1520395))

(assert (=> d!385667 m!1520401))

(declare-fun m!1523393 () Bool)

(assert (=> d!385667 m!1523393))

(assert (=> b!1357601 d!385667))

(declare-fun c!223185 () Bool)

(declare-fun bm!91357 () Bool)

(declare-fun c!223187 () Bool)

(declare-fun call!91363 () Regex!3711)

(declare-fun c!223184 () Bool)

(assert (=> bm!91357 (= call!91363 (derivativeStep!948 (ite c!223187 (regOne!7935 lt!449588) (ite c!223185 (reg!4040 lt!449588) (ite c!223184 (regTwo!7934 lt!449588) (regOne!7934 lt!449588)))) (head!2437 lt!449598)))))

(declare-fun bm!91358 () Bool)

(declare-fun call!91365 () Regex!3711)

(declare-fun call!91364 () Regex!3711)

(assert (=> bm!91358 (= call!91365 call!91364)))

(declare-fun b!1359528 () Bool)

(declare-fun e!869890 () Regex!3711)

(assert (=> b!1359528 (= e!869890 (Union!3711 (Concat!6199 call!91365 (regTwo!7934 lt!449588)) EmptyLang!3711))))

(declare-fun b!1359529 () Bool)

(assert (=> b!1359529 (= c!223184 (nullable!1190 (regOne!7934 lt!449588)))))

(declare-fun e!869892 () Regex!3711)

(assert (=> b!1359529 (= e!869892 e!869890)))

(declare-fun bm!91359 () Bool)

(assert (=> bm!91359 (= call!91364 call!91363)))

(declare-fun b!1359530 () Bool)

(assert (=> b!1359530 (= e!869892 (Concat!6199 call!91364 lt!449588))))

(declare-fun b!1359531 () Bool)

(declare-fun e!869891 () Regex!3711)

(assert (=> b!1359531 (= e!869891 (ite (= (head!2437 lt!449598) (c!222695 lt!449588)) EmptyExpr!3711 EmptyLang!3711))))

(declare-fun b!1359532 () Bool)

(declare-fun e!869893 () Regex!3711)

(assert (=> b!1359532 (= e!869893 e!869892)))

(assert (=> b!1359532 (= c!223185 ((_ is Star!3711) lt!449588))))

(declare-fun call!91362 () Regex!3711)

(declare-fun b!1359533 () Bool)

(assert (=> b!1359533 (= e!869890 (Union!3711 (Concat!6199 call!91362 (regTwo!7934 lt!449588)) call!91365))))

(declare-fun bm!91360 () Bool)

(assert (=> bm!91360 (= call!91362 (derivativeStep!948 (ite c!223187 (regTwo!7935 lt!449588) (regOne!7934 lt!449588)) (head!2437 lt!449598)))))

(declare-fun b!1359535 () Bool)

(declare-fun e!869889 () Regex!3711)

(assert (=> b!1359535 (= e!869889 e!869891)))

(declare-fun c!223186 () Bool)

(assert (=> b!1359535 (= c!223186 ((_ is ElementMatch!3711) lt!449588))))

(declare-fun d!385669 () Bool)

(declare-fun lt!450548 () Regex!3711)

(assert (=> d!385669 (validRegex!1611 lt!450548)))

(assert (=> d!385669 (= lt!450548 e!869889)))

(declare-fun c!223183 () Bool)

(assert (=> d!385669 (= c!223183 (or ((_ is EmptyExpr!3711) lt!449588) ((_ is EmptyLang!3711) lt!449588)))))

(assert (=> d!385669 (validRegex!1611 lt!449588)))

(assert (=> d!385669 (= (derivativeStep!948 lt!449588 (head!2437 lt!449598)) lt!450548)))

(declare-fun b!1359534 () Bool)

(assert (=> b!1359534 (= c!223187 ((_ is Union!3711) lt!449588))))

(assert (=> b!1359534 (= e!869891 e!869893)))

(declare-fun b!1359536 () Bool)

(assert (=> b!1359536 (= e!869889 EmptyLang!3711)))

(declare-fun b!1359537 () Bool)

(assert (=> b!1359537 (= e!869893 (Union!3711 call!91363 call!91362))))

(assert (= (and d!385669 c!223183) b!1359536))

(assert (= (and d!385669 (not c!223183)) b!1359535))

(assert (= (and b!1359535 c!223186) b!1359531))

(assert (= (and b!1359535 (not c!223186)) b!1359534))

(assert (= (and b!1359534 c!223187) b!1359537))

(assert (= (and b!1359534 (not c!223187)) b!1359532))

(assert (= (and b!1359532 c!223185) b!1359530))

(assert (= (and b!1359532 (not c!223185)) b!1359529))

(assert (= (and b!1359529 c!223184) b!1359533))

(assert (= (and b!1359529 (not c!223184)) b!1359528))

(assert (= (or b!1359533 b!1359528) bm!91358))

(assert (= (or b!1359530 bm!91358) bm!91359))

(assert (= (or b!1359537 bm!91359) bm!91357))

(assert (= (or b!1359537 b!1359533) bm!91360))

(assert (=> bm!91357 m!1520391))

(declare-fun m!1523395 () Bool)

(assert (=> bm!91357 m!1523395))

(assert (=> b!1359529 m!1521855))

(assert (=> bm!91360 m!1520391))

(declare-fun m!1523397 () Bool)

(assert (=> bm!91360 m!1523397))

(declare-fun m!1523399 () Bool)

(assert (=> d!385669 m!1523399))

(assert (=> d!385669 m!1520405))

(assert (=> b!1357601 d!385669))

(assert (=> b!1357601 d!385301))

(assert (=> b!1357601 d!385103))

(assert (=> d!384863 d!385323))

(declare-fun d!385671 () Bool)

(assert (=> d!385671 (= (list!5307 lt!449827) (list!5311 (c!222694 lt!449827)))))

(declare-fun bs!334329 () Bool)

(assert (= bs!334329 d!385671))

(declare-fun m!1523401 () Bool)

(assert (=> bs!334329 m!1523401))

(assert (=> d!384879 d!385671))

(declare-fun d!385673 () Bool)

(declare-fun c!223188 () Bool)

(assert (=> d!385673 (= c!223188 ((_ is Cons!13838) (list!5306 (singletonSeq!1020 t2!34))))))

(declare-fun e!869894 () List!13901)

(assert (=> d!385673 (= (printList!600 thiss!19762 (list!5306 (singletonSeq!1020 t2!34))) e!869894)))

(declare-fun b!1359538 () Bool)

(assert (=> b!1359538 (= e!869894 (++!3562 (list!5307 (charsOf!1369 (h!19239 (list!5306 (singletonSeq!1020 t2!34))))) (printList!600 thiss!19762 (t!120443 (list!5306 (singletonSeq!1020 t2!34))))))))

(declare-fun b!1359539 () Bool)

(assert (=> b!1359539 (= e!869894 Nil!13835)))

(assert (= (and d!385673 c!223188) b!1359538))

(assert (= (and d!385673 (not c!223188)) b!1359539))

(declare-fun m!1523403 () Bool)

(assert (=> b!1359538 m!1523403))

(assert (=> b!1359538 m!1523403))

(declare-fun m!1523405 () Bool)

(assert (=> b!1359538 m!1523405))

(declare-fun m!1523407 () Bool)

(assert (=> b!1359538 m!1523407))

(assert (=> b!1359538 m!1523405))

(assert (=> b!1359538 m!1523407))

(declare-fun m!1523409 () Bool)

(assert (=> b!1359538 m!1523409))

(assert (=> d!384879 d!385673))

(assert (=> d!384879 d!385651))

(declare-fun d!385675 () Bool)

(declare-fun lt!450552 () BalanceConc!9052)

(assert (=> d!385675 (= (list!5307 lt!450552) (printListTailRec!245 thiss!19762 (dropList!398 (singletonSeq!1020 t2!34) 0) (list!5307 (BalanceConc!9053 Empty!4556))))))

(declare-fun e!869896 () BalanceConc!9052)

(assert (=> d!385675 (= lt!450552 e!869896)))

(declare-fun c!223189 () Bool)

(assert (=> d!385675 (= c!223189 (>= 0 (size!11326 (singletonSeq!1020 t2!34))))))

(declare-fun e!869895 () Bool)

(assert (=> d!385675 e!869895))

(declare-fun res!612618 () Bool)

(assert (=> d!385675 (=> (not res!612618) (not e!869895))))

(assert (=> d!385675 (= res!612618 (>= 0 0))))

(assert (=> d!385675 (= (printTailRec!582 thiss!19762 (singletonSeq!1020 t2!34) 0 (BalanceConc!9053 Empty!4556)) lt!450552)))

(declare-fun b!1359540 () Bool)

(assert (=> b!1359540 (= e!869895 (<= 0 (size!11326 (singletonSeq!1020 t2!34))))))

(declare-fun b!1359541 () Bool)

(assert (=> b!1359541 (= e!869896 (BalanceConc!9053 Empty!4556))))

(declare-fun b!1359542 () Bool)

(assert (=> b!1359542 (= e!869896 (printTailRec!582 thiss!19762 (singletonSeq!1020 t2!34) (+ 0 1) (++!3564 (BalanceConc!9053 Empty!4556) (charsOf!1369 (apply!3351 (singletonSeq!1020 t2!34) 0)))))))

(declare-fun lt!450549 () List!13904)

(assert (=> b!1359542 (= lt!450549 (list!5306 (singletonSeq!1020 t2!34)))))

(declare-fun lt!450553 () Unit!19983)

(assert (=> b!1359542 (= lt!450553 (lemmaDropApply!436 lt!450549 0))))

(assert (=> b!1359542 (= (head!2443 (drop!679 lt!450549 0)) (apply!3360 lt!450549 0))))

(declare-fun lt!450550 () Unit!19983)

(assert (=> b!1359542 (= lt!450550 lt!450553)))

(declare-fun lt!450554 () List!13904)

(assert (=> b!1359542 (= lt!450554 (list!5306 (singletonSeq!1020 t2!34)))))

(declare-fun lt!450555 () Unit!19983)

(assert (=> b!1359542 (= lt!450555 (lemmaDropTail!416 lt!450554 0))))

(assert (=> b!1359542 (= (tail!1966 (drop!679 lt!450554 0)) (drop!679 lt!450554 (+ 0 1)))))

(declare-fun lt!450551 () Unit!19983)

(assert (=> b!1359542 (= lt!450551 lt!450555)))

(assert (= (and d!385675 res!612618) b!1359540))

(assert (= (and d!385675 c!223189) b!1359541))

(assert (= (and d!385675 (not c!223189)) b!1359542))

(declare-fun m!1523411 () Bool)

(assert (=> d!385675 m!1523411))

(assert (=> d!385675 m!1520169))

(declare-fun m!1523413 () Bool)

(assert (=> d!385675 m!1523413))

(assert (=> d!385675 m!1522999))

(assert (=> d!385675 m!1523413))

(assert (=> d!385675 m!1522999))

(declare-fun m!1523415 () Bool)

(assert (=> d!385675 m!1523415))

(assert (=> d!385675 m!1520169))

(declare-fun m!1523417 () Bool)

(assert (=> d!385675 m!1523417))

(assert (=> b!1359540 m!1520169))

(assert (=> b!1359540 m!1523417))

(declare-fun m!1523419 () Bool)

(assert (=> b!1359542 m!1523419))

(assert (=> b!1359542 m!1520169))

(declare-fun m!1523421 () Bool)

(assert (=> b!1359542 m!1523421))

(declare-fun m!1523423 () Bool)

(assert (=> b!1359542 m!1523423))

(declare-fun m!1523425 () Bool)

(assert (=> b!1359542 m!1523425))

(declare-fun m!1523427 () Bool)

(assert (=> b!1359542 m!1523427))

(declare-fun m!1523429 () Bool)

(assert (=> b!1359542 m!1523429))

(declare-fun m!1523431 () Bool)

(assert (=> b!1359542 m!1523431))

(declare-fun m!1523433 () Bool)

(assert (=> b!1359542 m!1523433))

(assert (=> b!1359542 m!1520169))

(assert (=> b!1359542 m!1520771))

(declare-fun m!1523435 () Bool)

(assert (=> b!1359542 m!1523435))

(assert (=> b!1359542 m!1523425))

(assert (=> b!1359542 m!1523421))

(assert (=> b!1359542 m!1523429))

(assert (=> b!1359542 m!1523419))

(declare-fun m!1523437 () Bool)

(assert (=> b!1359542 m!1523437))

(assert (=> b!1359542 m!1520169))

(assert (=> b!1359542 m!1523431))

(declare-fun m!1523439 () Bool)

(assert (=> b!1359542 m!1523439))

(declare-fun m!1523441 () Bool)

(assert (=> b!1359542 m!1523441))

(assert (=> d!384879 d!385675))

(declare-fun d!385677 () Bool)

(assert (=> d!385677 (= (list!5306 (_1!7593 lt!449707)) (list!5310 (c!222696 (_1!7593 lt!449707))))))

(declare-fun bs!334330 () Bool)

(assert (= bs!334330 d!385677))

(declare-fun m!1523443 () Bool)

(assert (=> bs!334330 m!1523443))

(assert (=> b!1357728 d!385677))

(assert (=> b!1357728 d!384769))

(assert (=> b!1357728 d!384773))

(declare-fun d!385679 () Bool)

(assert (=> d!385679 (= (list!5307 lt!449810) (list!5311 (c!222694 lt!449810)))))

(declare-fun bs!334331 () Bool)

(assert (= bs!334331 d!385679))

(declare-fun m!1523445 () Bool)

(assert (=> bs!334331 m!1523445))

(assert (=> d!384847 d!385679))

(declare-fun b!1359546 () Bool)

(declare-fun e!869899 () Bool)

(assert (=> b!1359546 (= e!869899 (>= (size!11328 lt!449825) (size!11328 lt!449594)))))

(declare-fun b!1359545 () Bool)

(declare-fun e!869897 () Bool)

(assert (=> b!1359545 (= e!869897 (isPrefix!1120 (tail!1961 lt!449594) (tail!1961 lt!449825)))))

(declare-fun b!1359543 () Bool)

(declare-fun e!869898 () Bool)

(assert (=> b!1359543 (= e!869898 e!869897)))

(declare-fun res!612621 () Bool)

(assert (=> b!1359543 (=> (not res!612621) (not e!869897))))

(assert (=> b!1359543 (= res!612621 (not ((_ is Nil!13835) lt!449825)))))

(declare-fun d!385681 () Bool)

(assert (=> d!385681 e!869899))

(declare-fun res!612620 () Bool)

(assert (=> d!385681 (=> res!612620 e!869899)))

(declare-fun lt!450556 () Bool)

(assert (=> d!385681 (= res!612620 (not lt!450556))))

(assert (=> d!385681 (= lt!450556 e!869898)))

(declare-fun res!612622 () Bool)

(assert (=> d!385681 (=> res!612622 e!869898)))

(assert (=> d!385681 (= res!612622 ((_ is Nil!13835) lt!449594))))

(assert (=> d!385681 (= (isPrefix!1120 lt!449594 lt!449825) lt!450556)))

(declare-fun b!1359544 () Bool)

(declare-fun res!612619 () Bool)

(assert (=> b!1359544 (=> (not res!612619) (not e!869897))))

(assert (=> b!1359544 (= res!612619 (= (head!2437 lt!449594) (head!2437 lt!449825)))))

(assert (= (and d!385681 (not res!612622)) b!1359543))

(assert (= (and b!1359543 res!612621) b!1359544))

(assert (= (and b!1359544 res!612619) b!1359545))

(assert (= (and d!385681 (not res!612620)) b!1359546))

(declare-fun m!1523447 () Bool)

(assert (=> b!1359546 m!1523447))

(assert (=> b!1359546 m!1520995))

(assert (=> b!1359545 m!1520929))

(assert (=> b!1359545 m!1521939))

(assert (=> b!1359545 m!1520929))

(assert (=> b!1359545 m!1521939))

(declare-fun m!1523449 () Bool)

(assert (=> b!1359545 m!1523449))

(assert (=> b!1359544 m!1520925))

(assert (=> b!1359544 m!1521937))

(assert (=> b!1358125 d!385681))

(declare-fun d!385683 () Bool)

(declare-fun c!223190 () Bool)

(assert (=> d!385683 (= c!223190 ((_ is Node!4556) (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34)))))))

(declare-fun e!869900 () Bool)

(assert (=> d!385683 (= (inv!18182 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34)))) e!869900)))

(declare-fun b!1359547 () Bool)

(assert (=> b!1359547 (= e!869900 (inv!18186 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34)))))))

(declare-fun b!1359548 () Bool)

(declare-fun e!869901 () Bool)

(assert (=> b!1359548 (= e!869900 e!869901)))

(declare-fun res!612623 () Bool)

(assert (=> b!1359548 (= res!612623 (not ((_ is Leaf!6951) (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34))))))))

(assert (=> b!1359548 (=> res!612623 e!869901)))

(declare-fun b!1359549 () Bool)

(assert (=> b!1359549 (= e!869901 (inv!18187 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34)))))))

(assert (= (and d!385683 c!223190) b!1359547))

(assert (= (and d!385683 (not c!223190)) b!1359548))

(assert (= (and b!1359548 (not res!612623)) b!1359549))

(declare-fun m!1523451 () Bool)

(assert (=> b!1359547 m!1523451))

(declare-fun m!1523453 () Bool)

(assert (=> b!1359549 m!1523453))

(assert (=> b!1357741 d!385683))

(declare-fun b!1359550 () Bool)

(declare-fun e!869902 () Bool)

(assert (=> b!1359550 (= e!869902 tp_is_empty!6731)))

(assert (=> b!1358115 (= tp!391741 e!869902)))

(declare-fun b!1359551 () Bool)

(declare-fun tp!391864 () Bool)

(declare-fun tp!391862 () Bool)

(assert (=> b!1359551 (= e!869902 (and tp!391864 tp!391862))))

(declare-fun b!1359552 () Bool)

(declare-fun tp!391865 () Bool)

(assert (=> b!1359552 (= e!869902 tp!391865)))

(declare-fun b!1359553 () Bool)

(declare-fun tp!391863 () Bool)

(declare-fun tp!391861 () Bool)

(assert (=> b!1359553 (= e!869902 (and tp!391863 tp!391861))))

(assert (= (and b!1358115 ((_ is ElementMatch!3711) (regOne!7935 (regex!2397 (h!19237 rules!2550))))) b!1359550))

(assert (= (and b!1358115 ((_ is Concat!6199) (regOne!7935 (regex!2397 (h!19237 rules!2550))))) b!1359551))

(assert (= (and b!1358115 ((_ is Star!3711) (regOne!7935 (regex!2397 (h!19237 rules!2550))))) b!1359552))

(assert (= (and b!1358115 ((_ is Union!3711) (regOne!7935 (regex!2397 (h!19237 rules!2550))))) b!1359553))

(declare-fun b!1359554 () Bool)

(declare-fun e!869903 () Bool)

(assert (=> b!1359554 (= e!869903 tp_is_empty!6731)))

(assert (=> b!1358115 (= tp!391739 e!869903)))

(declare-fun b!1359555 () Bool)

(declare-fun tp!391869 () Bool)

(declare-fun tp!391867 () Bool)

(assert (=> b!1359555 (= e!869903 (and tp!391869 tp!391867))))

(declare-fun b!1359556 () Bool)

(declare-fun tp!391870 () Bool)

(assert (=> b!1359556 (= e!869903 tp!391870)))

(declare-fun b!1359557 () Bool)

(declare-fun tp!391868 () Bool)

(declare-fun tp!391866 () Bool)

(assert (=> b!1359557 (= e!869903 (and tp!391868 tp!391866))))

(assert (= (and b!1358115 ((_ is ElementMatch!3711) (regTwo!7935 (regex!2397 (h!19237 rules!2550))))) b!1359554))

(assert (= (and b!1358115 ((_ is Concat!6199) (regTwo!7935 (regex!2397 (h!19237 rules!2550))))) b!1359555))

(assert (= (and b!1358115 ((_ is Star!3711) (regTwo!7935 (regex!2397 (h!19237 rules!2550))))) b!1359556))

(assert (= (and b!1358115 ((_ is Union!3711) (regTwo!7935 (regex!2397 (h!19237 rules!2550))))) b!1359557))

(declare-fun b!1359558 () Bool)

(declare-fun e!869904 () Bool)

(assert (=> b!1359558 (= e!869904 tp_is_empty!6731)))

(assert (=> b!1358123 (= tp!391754 e!869904)))

(declare-fun b!1359559 () Bool)

(declare-fun tp!391874 () Bool)

(declare-fun tp!391872 () Bool)

(assert (=> b!1359559 (= e!869904 (and tp!391874 tp!391872))))

(declare-fun b!1359560 () Bool)

(declare-fun tp!391875 () Bool)

(assert (=> b!1359560 (= e!869904 tp!391875)))

(declare-fun b!1359561 () Bool)

(declare-fun tp!391873 () Bool)

(declare-fun tp!391871 () Bool)

(assert (=> b!1359561 (= e!869904 (and tp!391873 tp!391871))))

(assert (= (and b!1358123 ((_ is ElementMatch!3711) (reg!4040 (regex!2397 (rule!4146 t2!34))))) b!1359558))

(assert (= (and b!1358123 ((_ is Concat!6199) (reg!4040 (regex!2397 (rule!4146 t2!34))))) b!1359559))

(assert (= (and b!1358123 ((_ is Star!3711) (reg!4040 (regex!2397 (rule!4146 t2!34))))) b!1359560))

(assert (= (and b!1358123 ((_ is Union!3711) (reg!4040 (regex!2397 (rule!4146 t2!34))))) b!1359561))

(declare-fun b!1359562 () Bool)

(declare-fun e!869905 () Bool)

(assert (=> b!1359562 (= e!869905 tp_is_empty!6731)))

(assert (=> b!1358124 (= tp!391752 e!869905)))

(declare-fun b!1359563 () Bool)

(declare-fun tp!391879 () Bool)

(declare-fun tp!391877 () Bool)

(assert (=> b!1359563 (= e!869905 (and tp!391879 tp!391877))))

(declare-fun b!1359564 () Bool)

(declare-fun tp!391880 () Bool)

(assert (=> b!1359564 (= e!869905 tp!391880)))

(declare-fun b!1359565 () Bool)

(declare-fun tp!391878 () Bool)

(declare-fun tp!391876 () Bool)

(assert (=> b!1359565 (= e!869905 (and tp!391878 tp!391876))))

(assert (= (and b!1358124 ((_ is ElementMatch!3711) (regOne!7935 (regex!2397 (rule!4146 t2!34))))) b!1359562))

(assert (= (and b!1358124 ((_ is Concat!6199) (regOne!7935 (regex!2397 (rule!4146 t2!34))))) b!1359563))

(assert (= (and b!1358124 ((_ is Star!3711) (regOne!7935 (regex!2397 (rule!4146 t2!34))))) b!1359564))

(assert (= (and b!1358124 ((_ is Union!3711) (regOne!7935 (regex!2397 (rule!4146 t2!34))))) b!1359565))

(declare-fun b!1359566 () Bool)

(declare-fun e!869906 () Bool)

(assert (=> b!1359566 (= e!869906 tp_is_empty!6731)))

(assert (=> b!1358124 (= tp!391750 e!869906)))

(declare-fun b!1359567 () Bool)

(declare-fun tp!391884 () Bool)

(declare-fun tp!391882 () Bool)

(assert (=> b!1359567 (= e!869906 (and tp!391884 tp!391882))))

(declare-fun b!1359568 () Bool)

(declare-fun tp!391885 () Bool)

(assert (=> b!1359568 (= e!869906 tp!391885)))

(declare-fun b!1359569 () Bool)

(declare-fun tp!391883 () Bool)

(declare-fun tp!391881 () Bool)

(assert (=> b!1359569 (= e!869906 (and tp!391883 tp!391881))))

(assert (= (and b!1358124 ((_ is ElementMatch!3711) (regTwo!7935 (regex!2397 (rule!4146 t2!34))))) b!1359566))

(assert (= (and b!1358124 ((_ is Concat!6199) (regTwo!7935 (regex!2397 (rule!4146 t2!34))))) b!1359567))

(assert (= (and b!1358124 ((_ is Star!3711) (regTwo!7935 (regex!2397 (rule!4146 t2!34))))) b!1359568))

(assert (= (and b!1358124 ((_ is Union!3711) (regTwo!7935 (regex!2397 (rule!4146 t2!34))))) b!1359569))

(declare-fun b!1359570 () Bool)

(declare-fun e!869907 () Bool)

(declare-fun tp!391886 () Bool)

(assert (=> b!1359570 (= e!869907 (and tp_is_empty!6731 tp!391886))))

(assert (=> b!1358120 (= tp!391749 e!869907)))

(assert (= (and b!1358120 ((_ is Cons!13835) (t!120440 (originalCharacters!3259 t2!34)))) b!1359570))

(declare-fun b!1359571 () Bool)

(declare-fun e!869908 () Bool)

(declare-fun tp!391887 () Bool)

(assert (=> b!1359571 (= e!869908 (and tp_is_empty!6731 tp!391887))))

(assert (=> b!1358090 (= tp!391716 e!869908)))

(assert (= (and b!1358090 ((_ is Cons!13835) (t!120440 (originalCharacters!3259 t1!34)))) b!1359571))

(declare-fun e!869914 () Bool)

(declare-fun tp!391896 () Bool)

(declare-fun tp!391894 () Bool)

(declare-fun b!1359580 () Bool)

(assert (=> b!1359580 (= e!869914 (and (inv!18182 (left!11848 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34))))) tp!391896 (inv!18182 (right!12178 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34))))) tp!391894))))

(declare-fun b!1359582 () Bool)

(declare-fun e!869913 () Bool)

(declare-fun tp!391895 () Bool)

(assert (=> b!1359582 (= e!869913 tp!391895)))

(declare-fun b!1359581 () Bool)

(declare-fun inv!18189 (IArray!9117) Bool)

(assert (=> b!1359581 (= e!869914 (and (inv!18189 (xs!7279 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34))))) e!869913))))

(assert (=> b!1358001 (= tp!391713 (and (inv!18182 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34)))) e!869914))))

(assert (= (and b!1358001 ((_ is Node!4556) (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34))))) b!1359580))

(assert (= b!1359581 b!1359582))

(assert (= (and b!1358001 ((_ is Leaf!6951) (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t1!34))) (value!77947 t1!34))))) b!1359581))

(declare-fun m!1523455 () Bool)

(assert (=> b!1359580 m!1523455))

(declare-fun m!1523457 () Bool)

(assert (=> b!1359580 m!1523457))

(declare-fun m!1523459 () Bool)

(assert (=> b!1359581 m!1523459))

(assert (=> b!1358001 m!1520875))

(declare-fun b!1359585 () Bool)

(declare-fun b_free!33083 () Bool)

(declare-fun b_next!33787 () Bool)

(assert (=> b!1359585 (= b_free!33083 (not b_next!33787))))

(declare-fun t!120541 () Bool)

(declare-fun tb!71369 () Bool)

(assert (=> (and b!1359585 (= (toValue!3652 (transformation!2397 (h!19237 (t!120441 (t!120441 rules!2550))))) (toValue!3652 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))))) t!120541) tb!71369))

(declare-fun result!86774 () Bool)

(assert (= result!86774 result!86734))

(assert (=> d!385337 t!120541))

(declare-fun b_and!90987 () Bool)

(declare-fun tp!391899 () Bool)

(assert (=> b!1359585 (= tp!391899 (and (=> t!120541 result!86774) b_and!90987))))

(declare-fun b_free!33085 () Bool)

(declare-fun b_next!33789 () Bool)

(assert (=> b!1359585 (= b_free!33085 (not b_next!33789))))

(declare-fun tb!71371 () Bool)

(declare-fun t!120543 () Bool)

(assert (=> (and b!1359585 (= (toChars!3511 (transformation!2397 (h!19237 (t!120441 (t!120441 rules!2550))))) (toChars!3511 (transformation!2397 (rule!4146 t2!34)))) t!120543) tb!71371))

(declare-fun result!86776 () Bool)

(assert (= result!86776 result!86692))

(assert (=> b!1358002 t!120543))

(assert (=> d!384749 t!120543))

(declare-fun tb!71373 () Bool)

(declare-fun t!120545 () Bool)

(assert (=> (and b!1359585 (= (toChars!3511 (transformation!2397 (h!19237 (t!120441 (t!120441 rules!2550))))) (toChars!3511 (transformation!2397 (rule!4146 t1!34)))) t!120545) tb!71373))

(declare-fun result!86778 () Bool)

(assert (= result!86778 result!86710))

(assert (=> b!1357999 t!120545))

(assert (=> d!384847 t!120545))

(declare-fun t!120547 () Bool)

(declare-fun tb!71375 () Bool)

(assert (=> (and b!1359585 (= (toChars!3511 (transformation!2397 (h!19237 (t!120441 (t!120441 rules!2550))))) (toChars!3511 (transformation!2397 (rule!4146 (_1!7594 (get!4332 lt!449789)))))) t!120547) tb!71375))

(declare-fun result!86780 () Bool)

(assert (= result!86780 result!86754))

(assert (=> d!385457 t!120547))

(declare-fun tp!391897 () Bool)

(declare-fun b_and!90989 () Bool)

(assert (=> b!1359585 (= tp!391897 (and (=> t!120547 result!86780) (=> t!120545 result!86778) (=> t!120543 result!86776) b_and!90989))))

(declare-fun e!869918 () Bool)

(assert (=> b!1359585 (= e!869918 (and tp!391899 tp!391897))))

(declare-fun b!1359584 () Bool)

(declare-fun tp!391898 () Bool)

(declare-fun e!869915 () Bool)

(assert (=> b!1359584 (= e!869915 (and tp!391898 (inv!18175 (tag!2659 (h!19237 (t!120441 (t!120441 rules!2550))))) (inv!18179 (transformation!2397 (h!19237 (t!120441 (t!120441 rules!2550))))) e!869918))))

(declare-fun b!1359583 () Bool)

(declare-fun e!869916 () Bool)

(declare-fun tp!391900 () Bool)

(assert (=> b!1359583 (= e!869916 (and e!869915 tp!391900))))

(assert (=> b!1358099 (= tp!391728 e!869916)))

(assert (= b!1359584 b!1359585))

(assert (= b!1359583 b!1359584))

(assert (= (and b!1358099 ((_ is Cons!13836) (t!120441 (t!120441 rules!2550)))) b!1359583))

(declare-fun m!1523461 () Bool)

(assert (=> b!1359584 m!1523461))

(declare-fun m!1523463 () Bool)

(assert (=> b!1359584 m!1523463))

(declare-fun b!1359586 () Bool)

(declare-fun e!869919 () Bool)

(assert (=> b!1359586 (= e!869919 tp_is_empty!6731)))

(assert (=> b!1358117 (= tp!391747 e!869919)))

(declare-fun b!1359587 () Bool)

(declare-fun tp!391904 () Bool)

(declare-fun tp!391902 () Bool)

(assert (=> b!1359587 (= e!869919 (and tp!391904 tp!391902))))

(declare-fun b!1359588 () Bool)

(declare-fun tp!391905 () Bool)

(assert (=> b!1359588 (= e!869919 tp!391905)))

(declare-fun b!1359589 () Bool)

(declare-fun tp!391903 () Bool)

(declare-fun tp!391901 () Bool)

(assert (=> b!1359589 (= e!869919 (and tp!391903 tp!391901))))

(assert (= (and b!1358117 ((_ is ElementMatch!3711) (regOne!7934 (regex!2397 (rule!4146 t1!34))))) b!1359586))

(assert (= (and b!1358117 ((_ is Concat!6199) (regOne!7934 (regex!2397 (rule!4146 t1!34))))) b!1359587))

(assert (= (and b!1358117 ((_ is Star!3711) (regOne!7934 (regex!2397 (rule!4146 t1!34))))) b!1359588))

(assert (= (and b!1358117 ((_ is Union!3711) (regOne!7934 (regex!2397 (rule!4146 t1!34))))) b!1359589))

(declare-fun b!1359590 () Bool)

(declare-fun e!869920 () Bool)

(assert (=> b!1359590 (= e!869920 tp_is_empty!6731)))

(assert (=> b!1358117 (= tp!391745 e!869920)))

(declare-fun b!1359591 () Bool)

(declare-fun tp!391909 () Bool)

(declare-fun tp!391907 () Bool)

(assert (=> b!1359591 (= e!869920 (and tp!391909 tp!391907))))

(declare-fun b!1359592 () Bool)

(declare-fun tp!391910 () Bool)

(assert (=> b!1359592 (= e!869920 tp!391910)))

(declare-fun b!1359593 () Bool)

(declare-fun tp!391908 () Bool)

(declare-fun tp!391906 () Bool)

(assert (=> b!1359593 (= e!869920 (and tp!391908 tp!391906))))

(assert (= (and b!1358117 ((_ is ElementMatch!3711) (regTwo!7934 (regex!2397 (rule!4146 t1!34))))) b!1359590))

(assert (= (and b!1358117 ((_ is Concat!6199) (regTwo!7934 (regex!2397 (rule!4146 t1!34))))) b!1359591))

(assert (= (and b!1358117 ((_ is Star!3711) (regTwo!7934 (regex!2397 (rule!4146 t1!34))))) b!1359592))

(assert (= (and b!1358117 ((_ is Union!3711) (regTwo!7934 (regex!2397 (rule!4146 t1!34))))) b!1359593))

(declare-fun b!1359594 () Bool)

(declare-fun e!869921 () Bool)

(assert (=> b!1359594 (= e!869921 tp_is_empty!6731)))

(assert (=> b!1358100 (= tp!391726 e!869921)))

(declare-fun b!1359595 () Bool)

(declare-fun tp!391914 () Bool)

(declare-fun tp!391912 () Bool)

(assert (=> b!1359595 (= e!869921 (and tp!391914 tp!391912))))

(declare-fun b!1359596 () Bool)

(declare-fun tp!391915 () Bool)

(assert (=> b!1359596 (= e!869921 tp!391915)))

(declare-fun b!1359597 () Bool)

(declare-fun tp!391913 () Bool)

(declare-fun tp!391911 () Bool)

(assert (=> b!1359597 (= e!869921 (and tp!391913 tp!391911))))

(assert (= (and b!1358100 ((_ is ElementMatch!3711) (regex!2397 (h!19237 (t!120441 rules!2550))))) b!1359594))

(assert (= (and b!1358100 ((_ is Concat!6199) (regex!2397 (h!19237 (t!120441 rules!2550))))) b!1359595))

(assert (= (and b!1358100 ((_ is Star!3711) (regex!2397 (h!19237 (t!120441 rules!2550))))) b!1359596))

(assert (= (and b!1358100 ((_ is Union!3711) (regex!2397 (h!19237 (t!120441 rules!2550))))) b!1359597))

(declare-fun b!1359598 () Bool)

(declare-fun e!869922 () Bool)

(assert (=> b!1359598 (= e!869922 tp_is_empty!6731)))

(assert (=> b!1358113 (= tp!391742 e!869922)))

(declare-fun b!1359599 () Bool)

(declare-fun tp!391919 () Bool)

(declare-fun tp!391917 () Bool)

(assert (=> b!1359599 (= e!869922 (and tp!391919 tp!391917))))

(declare-fun b!1359600 () Bool)

(declare-fun tp!391920 () Bool)

(assert (=> b!1359600 (= e!869922 tp!391920)))

(declare-fun b!1359601 () Bool)

(declare-fun tp!391918 () Bool)

(declare-fun tp!391916 () Bool)

(assert (=> b!1359601 (= e!869922 (and tp!391918 tp!391916))))

(assert (= (and b!1358113 ((_ is ElementMatch!3711) (regOne!7934 (regex!2397 (h!19237 rules!2550))))) b!1359598))

(assert (= (and b!1358113 ((_ is Concat!6199) (regOne!7934 (regex!2397 (h!19237 rules!2550))))) b!1359599))

(assert (= (and b!1358113 ((_ is Star!3711) (regOne!7934 (regex!2397 (h!19237 rules!2550))))) b!1359600))

(assert (= (and b!1358113 ((_ is Union!3711) (regOne!7934 (regex!2397 (h!19237 rules!2550))))) b!1359601))

(declare-fun b!1359602 () Bool)

(declare-fun e!869923 () Bool)

(assert (=> b!1359602 (= e!869923 tp_is_empty!6731)))

(assert (=> b!1358113 (= tp!391740 e!869923)))

(declare-fun b!1359603 () Bool)

(declare-fun tp!391924 () Bool)

(declare-fun tp!391922 () Bool)

(assert (=> b!1359603 (= e!869923 (and tp!391924 tp!391922))))

(declare-fun b!1359604 () Bool)

(declare-fun tp!391925 () Bool)

(assert (=> b!1359604 (= e!869923 tp!391925)))

(declare-fun b!1359605 () Bool)

(declare-fun tp!391923 () Bool)

(declare-fun tp!391921 () Bool)

(assert (=> b!1359605 (= e!869923 (and tp!391923 tp!391921))))

(assert (= (and b!1358113 ((_ is ElementMatch!3711) (regTwo!7934 (regex!2397 (h!19237 rules!2550))))) b!1359602))

(assert (= (and b!1358113 ((_ is Concat!6199) (regTwo!7934 (regex!2397 (h!19237 rules!2550))))) b!1359603))

(assert (= (and b!1358113 ((_ is Star!3711) (regTwo!7934 (regex!2397 (h!19237 rules!2550))))) b!1359604))

(assert (= (and b!1358113 ((_ is Union!3711) (regTwo!7934 (regex!2397 (h!19237 rules!2550))))) b!1359605))

(declare-fun b!1359606 () Bool)

(declare-fun e!869924 () Bool)

(assert (=> b!1359606 (= e!869924 tp_is_empty!6731)))

(assert (=> b!1358118 (= tp!391748 e!869924)))

(declare-fun b!1359607 () Bool)

(declare-fun tp!391929 () Bool)

(declare-fun tp!391927 () Bool)

(assert (=> b!1359607 (= e!869924 (and tp!391929 tp!391927))))

(declare-fun b!1359608 () Bool)

(declare-fun tp!391930 () Bool)

(assert (=> b!1359608 (= e!869924 tp!391930)))

(declare-fun b!1359609 () Bool)

(declare-fun tp!391928 () Bool)

(declare-fun tp!391926 () Bool)

(assert (=> b!1359609 (= e!869924 (and tp!391928 tp!391926))))

(assert (= (and b!1358118 ((_ is ElementMatch!3711) (reg!4040 (regex!2397 (rule!4146 t1!34))))) b!1359606))

(assert (= (and b!1358118 ((_ is Concat!6199) (reg!4040 (regex!2397 (rule!4146 t1!34))))) b!1359607))

(assert (= (and b!1358118 ((_ is Star!3711) (reg!4040 (regex!2397 (rule!4146 t1!34))))) b!1359608))

(assert (= (and b!1358118 ((_ is Union!3711) (reg!4040 (regex!2397 (rule!4146 t1!34))))) b!1359609))

(declare-fun e!869926 () Bool)

(declare-fun tp!391931 () Bool)

(declare-fun b!1359610 () Bool)

(declare-fun tp!391933 () Bool)

(assert (=> b!1359610 (= e!869926 (and (inv!18182 (left!11848 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34))))) tp!391933 (inv!18182 (right!12178 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34))))) tp!391931))))

(declare-fun b!1359612 () Bool)

(declare-fun e!869925 () Bool)

(declare-fun tp!391932 () Bool)

(assert (=> b!1359612 (= e!869925 tp!391932)))

(declare-fun b!1359611 () Bool)

(assert (=> b!1359611 (= e!869926 (and (inv!18189 (xs!7279 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34))))) e!869925))))

(assert (=> b!1357741 (= tp!391671 (and (inv!18182 (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34)))) e!869926))))

(assert (= (and b!1357741 ((_ is Node!4556) (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34))))) b!1359610))

(assert (= b!1359611 b!1359612))

(assert (= (and b!1357741 ((_ is Leaf!6951) (c!222694 (dynLambda!6210 (toChars!3511 (transformation!2397 (rule!4146 t2!34))) (value!77947 t2!34))))) b!1359611))

(declare-fun m!1523465 () Bool)

(assert (=> b!1359610 m!1523465))

(declare-fun m!1523467 () Bool)

(assert (=> b!1359610 m!1523467))

(declare-fun m!1523469 () Bool)

(assert (=> b!1359611 m!1523469))

(assert (=> b!1357741 m!1520601))

(declare-fun b!1359613 () Bool)

(declare-fun e!869927 () Bool)

(assert (=> b!1359613 (= e!869927 tp_is_empty!6731)))

(assert (=> b!1358114 (= tp!391743 e!869927)))

(declare-fun b!1359614 () Bool)

(declare-fun tp!391937 () Bool)

(declare-fun tp!391935 () Bool)

(assert (=> b!1359614 (= e!869927 (and tp!391937 tp!391935))))

(declare-fun b!1359615 () Bool)

(declare-fun tp!391938 () Bool)

(assert (=> b!1359615 (= e!869927 tp!391938)))

(declare-fun b!1359616 () Bool)

(declare-fun tp!391936 () Bool)

(declare-fun tp!391934 () Bool)

(assert (=> b!1359616 (= e!869927 (and tp!391936 tp!391934))))

(assert (= (and b!1358114 ((_ is ElementMatch!3711) (reg!4040 (regex!2397 (h!19237 rules!2550))))) b!1359613))

(assert (= (and b!1358114 ((_ is Concat!6199) (reg!4040 (regex!2397 (h!19237 rules!2550))))) b!1359614))

(assert (= (and b!1358114 ((_ is Star!3711) (reg!4040 (regex!2397 (h!19237 rules!2550))))) b!1359615))

(assert (= (and b!1358114 ((_ is Union!3711) (reg!4040 (regex!2397 (h!19237 rules!2550))))) b!1359616))

(declare-fun b!1359617 () Bool)

(declare-fun e!869928 () Bool)

(assert (=> b!1359617 (= e!869928 tp_is_empty!6731)))

(assert (=> b!1358119 (= tp!391746 e!869928)))

(declare-fun b!1359618 () Bool)

(declare-fun tp!391942 () Bool)

(declare-fun tp!391940 () Bool)

(assert (=> b!1359618 (= e!869928 (and tp!391942 tp!391940))))

(declare-fun b!1359619 () Bool)

(declare-fun tp!391943 () Bool)

(assert (=> b!1359619 (= e!869928 tp!391943)))

(declare-fun b!1359620 () Bool)

(declare-fun tp!391941 () Bool)

(declare-fun tp!391939 () Bool)

(assert (=> b!1359620 (= e!869928 (and tp!391941 tp!391939))))

(assert (= (and b!1358119 ((_ is ElementMatch!3711) (regOne!7935 (regex!2397 (rule!4146 t1!34))))) b!1359617))

(assert (= (and b!1358119 ((_ is Concat!6199) (regOne!7935 (regex!2397 (rule!4146 t1!34))))) b!1359618))

(assert (= (and b!1358119 ((_ is Star!3711) (regOne!7935 (regex!2397 (rule!4146 t1!34))))) b!1359619))

(assert (= (and b!1358119 ((_ is Union!3711) (regOne!7935 (regex!2397 (rule!4146 t1!34))))) b!1359620))

(declare-fun b!1359621 () Bool)

(declare-fun e!869929 () Bool)

(assert (=> b!1359621 (= e!869929 tp_is_empty!6731)))

(assert (=> b!1358119 (= tp!391744 e!869929)))

(declare-fun b!1359622 () Bool)

(declare-fun tp!391947 () Bool)

(declare-fun tp!391945 () Bool)

(assert (=> b!1359622 (= e!869929 (and tp!391947 tp!391945))))

(declare-fun b!1359623 () Bool)

(declare-fun tp!391948 () Bool)

(assert (=> b!1359623 (= e!869929 tp!391948)))

(declare-fun b!1359624 () Bool)

(declare-fun tp!391946 () Bool)

(declare-fun tp!391944 () Bool)

(assert (=> b!1359624 (= e!869929 (and tp!391946 tp!391944))))

(assert (= (and b!1358119 ((_ is ElementMatch!3711) (regTwo!7935 (regex!2397 (rule!4146 t1!34))))) b!1359621))

(assert (= (and b!1358119 ((_ is Concat!6199) (regTwo!7935 (regex!2397 (rule!4146 t1!34))))) b!1359622))

(assert (= (and b!1358119 ((_ is Star!3711) (regTwo!7935 (regex!2397 (rule!4146 t1!34))))) b!1359623))

(assert (= (and b!1358119 ((_ is Union!3711) (regTwo!7935 (regex!2397 (rule!4146 t1!34))))) b!1359624))

(declare-fun b!1359625 () Bool)

(declare-fun e!869930 () Bool)

(assert (=> b!1359625 (= e!869930 tp_is_empty!6731)))

(assert (=> b!1358122 (= tp!391753 e!869930)))

(declare-fun b!1359626 () Bool)

(declare-fun tp!391952 () Bool)

(declare-fun tp!391950 () Bool)

(assert (=> b!1359626 (= e!869930 (and tp!391952 tp!391950))))

(declare-fun b!1359627 () Bool)

(declare-fun tp!391953 () Bool)

(assert (=> b!1359627 (= e!869930 tp!391953)))

(declare-fun b!1359628 () Bool)

(declare-fun tp!391951 () Bool)

(declare-fun tp!391949 () Bool)

(assert (=> b!1359628 (= e!869930 (and tp!391951 tp!391949))))

(assert (= (and b!1358122 ((_ is ElementMatch!3711) (regOne!7934 (regex!2397 (rule!4146 t2!34))))) b!1359625))

(assert (= (and b!1358122 ((_ is Concat!6199) (regOne!7934 (regex!2397 (rule!4146 t2!34))))) b!1359626))

(assert (= (and b!1358122 ((_ is Star!3711) (regOne!7934 (regex!2397 (rule!4146 t2!34))))) b!1359627))

(assert (= (and b!1358122 ((_ is Union!3711) (regOne!7934 (regex!2397 (rule!4146 t2!34))))) b!1359628))

(declare-fun b!1359629 () Bool)

(declare-fun e!869931 () Bool)

(assert (=> b!1359629 (= e!869931 tp_is_empty!6731)))

(assert (=> b!1358122 (= tp!391751 e!869931)))

(declare-fun b!1359630 () Bool)

(declare-fun tp!391957 () Bool)

(declare-fun tp!391955 () Bool)

(assert (=> b!1359630 (= e!869931 (and tp!391957 tp!391955))))

(declare-fun b!1359631 () Bool)

(declare-fun tp!391958 () Bool)

(assert (=> b!1359631 (= e!869931 tp!391958)))

(declare-fun b!1359632 () Bool)

(declare-fun tp!391956 () Bool)

(declare-fun tp!391954 () Bool)

(assert (=> b!1359632 (= e!869931 (and tp!391956 tp!391954))))

(assert (= (and b!1358122 ((_ is ElementMatch!3711) (regTwo!7934 (regex!2397 (rule!4146 t2!34))))) b!1359629))

(assert (= (and b!1358122 ((_ is Concat!6199) (regTwo!7934 (regex!2397 (rule!4146 t2!34))))) b!1359630))

(assert (= (and b!1358122 ((_ is Star!3711) (regTwo!7934 (regex!2397 (rule!4146 t2!34))))) b!1359631))

(assert (= (and b!1358122 ((_ is Union!3711) (regTwo!7934 (regex!2397 (rule!4146 t2!34))))) b!1359632))

(declare-fun b_lambda!41071 () Bool)

(assert (= b_lambda!41015 (or d!384815 b_lambda!41071)))

(declare-fun bs!334332 () Bool)

(declare-fun d!385685 () Bool)

(assert (= bs!334332 (and d!385685 d!384815)))

(assert (=> bs!334332 (= (dynLambda!6215 lambda!57512 (h!19238 (map!3056 rules!2550 lambda!57485))) (not (dynLambda!6215 lambda!57486 (h!19238 (map!3056 rules!2550 lambda!57485)))))))

(declare-fun b_lambda!41093 () Bool)

(assert (=> (not b_lambda!41093) (not bs!334332)))

(assert (=> bs!334332 m!1520713))

(assert (=> b!1358912 d!385685))

(declare-fun b_lambda!41073 () Bool)

(assert (= b_lambda!41021 (or b!1357435 b_lambda!41073)))

(declare-fun bs!334333 () Bool)

(declare-fun d!385687 () Bool)

(assert (= bs!334333 (and d!385687 b!1357435)))

(declare-fun res!612624 () Bool)

(declare-fun e!869932 () Bool)

(assert (=> bs!334333 (=> (not res!612624) (not e!869932))))

(assert (=> bs!334333 (= res!612624 (validRegex!1611 lt!450102))))

(assert (=> bs!334333 (= (dynLambda!6215 lambda!57486 lt!450102) e!869932)))

(declare-fun b!1359633 () Bool)

(assert (=> b!1359633 (= e!869932 (matchR!1704 lt!450102 lt!449598))))

(assert (= (and bs!334333 res!612624) b!1359633))

(declare-fun m!1523471 () Bool)

(assert (=> bs!334333 m!1523471))

(declare-fun m!1523473 () Bool)

(assert (=> b!1359633 m!1523473))

(assert (=> d!385343 d!385687))

(declare-fun b_lambda!41075 () Bool)

(assert (= b_lambda!41027 (or d!384819 b_lambda!41075)))

(declare-fun bs!334334 () Bool)

(declare-fun d!385689 () Bool)

(assert (= bs!334334 (and d!385689 d!384819)))

(assert (=> bs!334334 (= (dynLambda!6215 lambda!57518 (h!19238 lt!449590)) (validRegex!1611 (h!19238 lt!449590)))))

(declare-fun m!1523475 () Bool)

(assert (=> bs!334334 m!1523475))

(assert (=> b!1358979 d!385689))

(declare-fun b_lambda!41077 () Bool)

(assert (= b_lambda!41005 (or b!1357457 b_lambda!41077)))

(declare-fun bs!334335 () Bool)

(declare-fun d!385691 () Bool)

(assert (= bs!334335 (and d!385691 b!1357457)))

(assert (=> bs!334335 (= (dynLambda!6209 lambda!57487 (h!19237 (t!120441 rules!2550))) (= (regex!2397 (h!19237 (t!120441 rules!2550))) lt!449582))))

(assert (=> b!1358656 d!385691))

(declare-fun b_lambda!41079 () Bool)

(assert (= b_lambda!41009 (or b!1357440 b_lambda!41079)))

(declare-fun bs!334336 () Bool)

(declare-fun d!385693 () Bool)

(assert (= bs!334336 (and d!385693 b!1357440)))

(declare-fun res!612625 () Bool)

(declare-fun e!869933 () Bool)

(assert (=> bs!334336 (=> (not res!612625) (not e!869933))))

(assert (=> bs!334336 (= res!612625 (matchR!1704 lt!449588 res!612302))))

(assert (=> bs!334336 (= (dynLambda!6220 lambda!57484 res!612302) e!869933)))

(declare-fun b!1359634 () Bool)

(assert (=> b!1359634 (= e!869933 (isPrefix!1120 lt!449594 res!612302))))

(assert (= (and bs!334336 res!612625) b!1359634))

(declare-fun m!1523477 () Bool)

(assert (=> bs!334336 m!1523477))

(declare-fun m!1523479 () Bool)

(assert (=> b!1359634 m!1523479))

(assert (=> d!385153 d!385693))

(declare-fun b_lambda!41081 () Bool)

(assert (= b_lambda!41007 (or b!1357457 b_lambda!41081)))

(declare-fun bs!334337 () Bool)

(declare-fun d!385695 () Bool)

(assert (= bs!334337 (and d!385695 b!1357457)))

(assert (=> bs!334337 (= (dynLambda!6209 lambda!57487 lt!450003) (= (regex!2397 lt!450003) lt!449582))))

(assert (=> d!385147 d!385695))

(declare-fun b_lambda!41083 () Bool)

(assert (= b_lambda!41013 (or d!384851 b_lambda!41083)))

(declare-fun bs!334338 () Bool)

(declare-fun d!385697 () Bool)

(assert (= bs!334338 (and d!385697 d!384851)))

(assert (=> bs!334338 (= (dynLambda!6214 lambda!57531 (h!19237 rules!2550)) (regex!2397 (h!19237 rules!2550)))))

(assert (=> b!1358879 d!385697))

(declare-fun b_lambda!41085 () Bool)

(assert (= b_lambda!41003 (or b!1357435 b_lambda!41085)))

(declare-fun bs!334339 () Bool)

(declare-fun d!385699 () Bool)

(assert (= bs!334339 (and d!385699 b!1357435)))

(assert (=> bs!334339 (= (dynLambda!6214 lambda!57485 (h!19237 (t!120441 rules!2550))) (regex!2397 (h!19237 (t!120441 rules!2550))))))

(assert (=> b!1358520 d!385699))

(declare-fun b_lambda!41087 () Bool)

(assert (= b_lambda!41023 (or b!1357435 b_lambda!41087)))

(declare-fun bs!334340 () Bool)

(declare-fun d!385701 () Bool)

(assert (= bs!334340 (and d!385701 b!1357435)))

(declare-fun res!612626 () Bool)

(declare-fun e!869934 () Bool)

(assert (=> bs!334340 (=> (not res!612626) (not e!869934))))

(assert (=> bs!334340 (= res!612626 (validRegex!1611 (h!19238 (t!120442 (map!3056 rules!2550 lambda!57485)))))))

(assert (=> bs!334340 (= (dynLambda!6215 lambda!57486 (h!19238 (t!120442 (map!3056 rules!2550 lambda!57485)))) e!869934)))

(declare-fun b!1359635 () Bool)

(assert (=> b!1359635 (= e!869934 (matchR!1704 (h!19238 (t!120442 (map!3056 rules!2550 lambda!57485))) lt!449598))))

(assert (= (and bs!334340 res!612626) b!1359635))

(declare-fun m!1523481 () Bool)

(assert (=> bs!334340 m!1523481))

(declare-fun m!1523483 () Bool)

(assert (=> b!1359635 m!1523483))

(assert (=> b!1358965 d!385701))

(declare-fun b_lambda!41089 () Bool)

(assert (= b_lambda!41025 (or d!384821 b_lambda!41089)))

(declare-fun bs!334341 () Bool)

(declare-fun d!385703 () Bool)

(assert (= bs!334341 (and d!385703 d!384821)))

(assert (=> bs!334341 (= (dynLambda!6209 lambda!57522 (h!19237 rules!2550)) (not (dynLambda!6209 lambda!57487 (h!19237 rules!2550))))))

(declare-fun b_lambda!41095 () Bool)

(assert (=> (not b_lambda!41095) (not bs!334341)))

(assert (=> bs!334341 m!1520427))

(assert (=> b!1358973 d!385703))

(declare-fun b_lambda!41091 () Bool)

(assert (= b_lambda!41017 (or d!384817 b_lambda!41091)))

(declare-fun bs!334342 () Bool)

(declare-fun d!385705 () Bool)

(assert (= bs!334342 (and d!385705 d!384817)))

(assert (=> bs!334342 (= (dynLambda!6215 lambda!57513 (h!19238 lt!449590)) (not (dynLambda!6215 lambda!57486 (h!19238 lt!449590))))))

(declare-fun b_lambda!41097 () Bool)

(assert (=> (not b_lambda!41097) (not bs!334342)))

(declare-fun m!1523485 () Bool)

(assert (=> bs!334342 m!1523485))

(assert (=> b!1358953 d!385705))

(check-sat (not b!1359552) b_and!90977 (not b!1358668) (not b!1358548) (not b!1358623) (not b!1359394) (not b!1359425) (not b!1359185) (not b!1358898) (not bm!91343) (not b_lambda!40973) (not b!1359561) (not b!1359630) (not b!1359029) (not b!1359484) (not b!1359618) (not d!385143) (not d!385449) (not bm!91356) (not b!1359513) (not b!1359605) (not b!1358528) (not b!1358996) (not b_lambda!40979) (not bm!91308) (not b!1359526) (not b!1359564) (not b!1358772) (not b!1359417) (not b!1358868) (not b_lambda!40981) (not b!1359600) (not b!1358652) (not bs!334334) (not b_next!33767) (not b!1359030) (not b_lambda!41085) (not b!1359571) (not d!385395) (not b_lambda!41079) (not d!385299) (not b_lambda!41087) b_and!90987 (not b!1358654) (not d!385091) (not d!385245) (not b!1359635) (not b!1359604) (not bm!91340) (not b!1359524) (not b!1358674) (not b!1358813) (not b!1359186) (not b!1358561) (not b!1358932) (not b_next!33771) (not b!1358926) (not bm!91335) (not d!385311) (not b!1358639) (not b!1358564) (not b!1359007) (not bm!91317) (not d!385493) (not b!1359582) (not b!1358665) (not b!1359580) (not b!1359474) (not b!1359107) (not d!385117) (not b!1358947) (not b!1358722) (not b_lambda!40987) (not b!1359480) (not b!1358636) (not d!385677) (not b!1358670) (not b!1358767) (not bm!91336) (not b!1358562) (not b!1359634) (not d!385307) (not b!1359188) (not d!385647) (not d!385381) (not b!1358658) (not b!1359006) (not b!1358559) (not d!385655) (not b!1359396) (not d!385601) (not b!1358640) (not b!1359061) (not b!1358884) (not d!385105) (not d!385359) (not b!1358810) (not d!385383) (not b!1358894) (not d!385379) (not b!1359403) (not b!1358621) (not b!1359430) (not b!1359490) (not b!1359542) (not b!1358545) (not bm!91354) b_and!90981 (not bm!91315) (not b_lambda!41083) b_and!90975 (not b!1359517) (not d!385405) (not b!1359008) (not d!385317) (not b!1358557) (not d!385331) (not b!1359000) (not b!1359612) (not b!1359599) (not b!1359153) (not b!1359540) (not b_lambda!41081) (not d!385223) (not d!385669) (not b!1358952) (not b!1359593) (not b!1359544) (not d!385639) (not d!385595) (not b!1359592) (not d!385667) (not d!385131) (not b!1358966) (not b!1359633) (not b!1359415) (not b!1359557) (not d!385195) (not d!385641) (not b!1359027) (not b!1359142) (not b!1359051) (not b!1359441) (not d!385097) (not b!1358817) (not b!1359609) (not b!1359495) (not b_lambda!40985) (not d!385369) (not b_next!33781) (not b_lambda!40977) (not d!385109) (not b!1358924) (not b!1358743) (not b!1359472) (not b!1359175) (not d!385243) (not bs!334340) (not d!385491) (not b!1358900) b_and!90961 (not d!385631) (not b!1359137) (not d!385333) (not b!1359009) (not b!1358775) (not b!1359565) (not b!1358964) (not b_lambda!41073) (not b!1359597) (not d!385281) (not d!385163) (not b_lambda!41071) (not b!1359549) (not d!385145) (not b!1359601) (not d!385213) (not b!1357741) (not b!1359149) (not b!1359411) (not b!1359466) (not b!1358962) (not b!1359155) (not d!385253) (not d!385093) (not b!1359180) (not d!385319) (not b!1359518) (not bm!91326) (not b!1359438) tp_is_empty!6731 (not b!1359511) (not b!1359478) (not b!1359632) (not b!1359442) (not d!385487) (not d!385291) (not bm!91330) (not b!1359135) (not b!1358991) (not b!1358637) (not b!1358811) (not b!1358661) (not b!1359611) (not b!1359470) (not b!1359404) (not b!1358764) (not b!1359060) (not b!1358925) (not d!385671) (not d!385617) (not d!385461) (not d!385397) (not b_next!33765) (not bs!334333) (not b!1358974) (not b!1358833) (not b!1358537) (not d!385393) (not b!1359620) (not b!1359547) (not b!1358950) (not d!385275) (not b!1359168) (not d!385165) (not b!1359409) (not bm!91355) (not b!1359410) (not b!1359157) (not b!1359626) (not b!1359624) (not b!1359469) (not d!385375) (not b!1359177) b_and!90965 (not b!1359515) (not d!385483) (not bm!91360) (not b!1358945) (not b!1359467) (not b!1359397) (not b!1358980) (not d!385365) (not d!385399) b_and!90989 (not b!1359482) (not b!1359546) (not bm!91339) (not b!1359508) (not bm!91337) (not b!1358872) (not b_lambda!40989) (not b!1359587) (not b_lambda!40971) (not b!1359405) (not d!385339) (not b_lambda!41095) (not b_next!33789) (not b!1359555) (not b!1359560) (not b!1358873) (not b!1359016) (not b!1358992) (not d!385479) (not b!1358914) (not b!1358001) (not b!1359005) (not b!1358595) (not b!1358672) (not b!1358815) (not b!1359395) (not b!1359418) (not d!385457) (not b_lambda!40983) (not b!1358907) (not b!1359048) (not b!1358638) (not d!385347) (not d!385147) (not b!1359568) (not d!385637) (not b!1358963) (not b!1358675) (not b_lambda!41093) (not d!385345) (not b_lambda!41077) (not bm!91350) (not d!385621) (not b!1359018) (not d!385481) (not d!385675) (not b!1359538) (not b!1359603) (not b!1359193) (not d!385329) (not b!1359477) (not b!1359567) (not b!1359615) (not d!385355) (not b!1358877) (not b!1359563) (not d!385325) (not b!1359622) (not b!1359487) (not b!1358976) (not b!1359556) (not tb!71353) (not b!1359589) (not b!1358744) (not b!1359570) (not b!1358843) (not b!1359595) (not b!1358747) (not b!1359108) (not b!1359001) (not b!1358773) (not b!1359628) (not b!1359559) (not d!385679) (not b!1358931) (not b_lambda!41037) (not b!1359004) (not d!385605) (not d!385327) (not b!1358741) (not b!1359529) (not d!385447) (not b!1359493) (not b!1358745) (not b!1358663) (not b_lambda!41075) (not b!1359631) (not d!385389) (not b!1358522) (not d!385609) (not b!1359485) (not b!1359489) (not d!385357) b_and!90959 (not b!1359569) (not b!1358814) (not bm!91329) (not d!385095) (not b!1359179) (not d!385125) (not b!1358520) (not d!385279) (not d!385271) (not d!385215) (not b!1358954) (not b!1358766) (not d!385653) (not d!385251) (not d!385401) (not b!1359406) (not d!385295) (not b!1358819) (not b!1359614) (not b!1359545) (not b!1359551) (not b_lambda!41089) (not d!385635) (not b_next!33787) (not b_lambda!41091) (not bm!91351) (not d!385649) (not b!1359105) (not bm!91357) (not b!1359446) (not bm!91347) (not b!1359003) (not b!1359502) (not d!385233) (not b!1359623) (not b_next!33779) (not b!1358879) (not b!1358676) (not d!385407) (not d!385119) (not b!1358794) (not b_next!33763) (not b!1358746) (not d!385599) (not b!1358619) (not b!1358547) (not d!385645) (not d!385651) (not bs!334336) (not b!1359627) (not b!1358896) (not d!385371) (not b!1358998) (not b!1359619) (not d!385353) (not b!1359501) (not d!385453) (not b_next!33769) b_and!90979 (not b_lambda!41019) (not b!1359471) (not b!1359504) (not b!1358589) (not b!1359407) (not b!1359421) (not b!1358739) (not b!1359553) (not d!385107) (not d!385261) (not d!385475) (not b!1359596) (not b!1359483) (not d!385343) (not b!1358901) (not b!1359424) (not b!1358657) (not b!1359059) (not b_lambda!41097) (not b!1359607) (not d!385603) (not b!1359408) (not d!385099) b_and!90963 (not b!1358871) (not b!1359507) (not b!1358939) (not d!385101) (not b!1358655) (not b!1359169) (not b!1359028) (not b!1359103) (not d!385123) (not b!1358531) (not d!385377) (not b!1359496) (not bm!91342) (not b_lambda!40975) (not b!1359523) (not b!1359583) (not b!1358541) (not b!1359414) (not b!1358742) (not b!1359052) (not b_next!33773) (not d!385139) (not b!1359610) (not b!1358536) (not b!1359047) (not b!1358738) (not b!1358641) (not b!1359588) (not d!385297) (not d!385657) (not b!1359616) (not b!1359608) (not b!1359581) (not d!385643) (not b!1358539) (not b!1358530) (not d!385625) (not d!385633) (not b!1358899) (not d!385293) (not d!385477) (not d!385367) (not b!1358653) (not b!1358808) (not b!1358949) (not tb!71337) (not b!1358876) (not b!1359440) (not b!1358816) (not b!1359445) (not d!385615) (not b!1359584) (not d!385489) (not b!1359443) (not b!1359591) (not d!385289) (not b!1358913) (not b!1359473) (not d!385309) (not b!1358818) (not b!1358555) (not b!1358869) (not b!1359479))
(check-sat b_and!90977 (not b_next!33771) (not b_next!33781) b_and!90961 (not b_next!33765) b_and!90965 b_and!90989 (not b_next!33789) b_and!90959 (not b_next!33787) b_and!90963 (not b_next!33773) (not b_next!33767) b_and!90987 b_and!90981 b_and!90975 (not b_next!33779) (not b_next!33763) b_and!90979 (not b_next!33769))
