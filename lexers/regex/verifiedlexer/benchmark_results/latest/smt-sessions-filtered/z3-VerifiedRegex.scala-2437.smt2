; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128242 () Bool)

(assert start!128242)

(declare-fun b!1406582 () Bool)

(declare-fun b_free!34355 () Bool)

(declare-fun b_next!35059 () Bool)

(assert (=> b!1406582 (= b_free!34355 (not b_next!35059))))

(declare-fun tp!399568 () Bool)

(declare-fun b_and!94179 () Bool)

(assert (=> b!1406582 (= tp!399568 b_and!94179)))

(declare-fun b_free!34357 () Bool)

(declare-fun b_next!35061 () Bool)

(assert (=> b!1406582 (= b_free!34357 (not b_next!35061))))

(declare-fun tp!399566 () Bool)

(declare-fun b_and!94181 () Bool)

(assert (=> b!1406582 (= tp!399566 b_and!94181)))

(declare-fun b!1406576 () Bool)

(declare-fun b_free!34359 () Bool)

(declare-fun b_next!35063 () Bool)

(assert (=> b!1406576 (= b_free!34359 (not b_next!35063))))

(declare-fun tp!399563 () Bool)

(declare-fun b_and!94183 () Bool)

(assert (=> b!1406576 (= tp!399563 b_and!94183)))

(declare-fun b_free!34361 () Bool)

(declare-fun b_next!35065 () Bool)

(assert (=> b!1406576 (= b_free!34361 (not b_next!35065))))

(declare-fun tp!399567 () Bool)

(declare-fun b_and!94185 () Bool)

(assert (=> b!1406576 (= tp!399567 b_and!94185)))

(declare-fun b!1406600 () Bool)

(declare-fun b_free!34363 () Bool)

(declare-fun b_next!35067 () Bool)

(assert (=> b!1406600 (= b_free!34363 (not b_next!35067))))

(declare-fun tp!399560 () Bool)

(declare-fun b_and!94187 () Bool)

(assert (=> b!1406600 (= tp!399560 b_and!94187)))

(declare-fun b_free!34365 () Bool)

(declare-fun b_next!35069 () Bool)

(assert (=> b!1406600 (= b_free!34365 (not b_next!35069))))

(declare-fun tp!399564 () Bool)

(declare-fun b_and!94189 () Bool)

(assert (=> b!1406600 (= tp!399564 b_and!94189)))

(declare-fun b!1406581 () Bool)

(assert (=> b!1406581 true))

(assert (=> b!1406581 true))

(declare-fun b!1406604 () Bool)

(assert (=> b!1406604 true))

(declare-fun b!1406592 () Bool)

(assert (=> b!1406592 true))

(declare-fun bs!338538 () Bool)

(declare-fun b!1406588 () Bool)

(assert (= bs!338538 (and b!1406588 b!1406592)))

(declare-fun lambda!62141 () Int)

(declare-fun lambda!62140 () Int)

(assert (=> bs!338538 (not (= lambda!62141 lambda!62140))))

(assert (=> b!1406588 true))

(declare-fun b!1406561 () Bool)

(declare-fun res!636887 () Bool)

(declare-fun e!897947 () Bool)

(assert (=> b!1406561 (=> res!636887 e!897947)))

(declare-datatypes ((List!14392 0))(
  ( (Nil!14326) (Cons!14326 (h!19727 (_ BitVec 16)) (t!123061 List!14392)) )
))
(declare-datatypes ((TokenValue!2573 0))(
  ( (FloatLiteralValue!5146 (text!18456 List!14392)) (TokenValueExt!2572 (__x!8975 Int)) (Broken!12865 (value!80372 List!14392)) (Object!2638) (End!2573) (Def!2573) (Underscore!2573) (Match!2573) (Else!2573) (Error!2573) (Case!2573) (If!2573) (Extends!2573) (Abstract!2573) (Class!2573) (Val!2573) (DelimiterValue!5146 (del!2633 List!14392)) (KeywordValue!2579 (value!80373 List!14392)) (CommentValue!5146 (value!80374 List!14392)) (WhitespaceValue!5146 (value!80375 List!14392)) (IndentationValue!2573 (value!80376 List!14392)) (String!17100) (Int32!2573) (Broken!12866 (value!80377 List!14392)) (Boolean!2574) (Unit!20692) (OperatorValue!2576 (op!2633 List!14392)) (IdentifierValue!5146 (value!80378 List!14392)) (IdentifierValue!5147 (value!80379 List!14392)) (WhitespaceValue!5147 (value!80380 List!14392)) (True!5146) (False!5146) (Broken!12867 (value!80381 List!14392)) (Broken!12868 (value!80382 List!14392)) (True!5147) (RightBrace!2573) (RightBracket!2573) (Colon!2573) (Null!2573) (Comma!2573) (LeftBracket!2573) (False!5147) (LeftBrace!2573) (ImaginaryLiteralValue!2573 (text!18457 List!14392)) (StringLiteralValue!7719 (value!80383 List!14392)) (EOFValue!2573 (value!80384 List!14392)) (IdentValue!2573 (value!80385 List!14392)) (DelimiterValue!5147 (value!80386 List!14392)) (DedentValue!2573 (value!80387 List!14392)) (NewLineValue!2573 (value!80388 List!14392)) (IntegerValue!7719 (value!80389 (_ BitVec 32)) (text!18458 List!14392)) (IntegerValue!7720 (value!80390 Int) (text!18459 List!14392)) (Times!2573) (Or!2573) (Equal!2573) (Minus!2573) (Broken!12869 (value!80391 List!14392)) (And!2573) (Div!2573) (LessEqual!2573) (Mod!2573) (Concat!6370) (Not!2573) (Plus!2573) (SpaceValue!2573 (value!80392 List!14392)) (IntegerValue!7721 (value!80393 Int) (text!18460 List!14392)) (StringLiteralValue!7720 (text!18461 List!14392)) (FloatLiteralValue!5147 (text!18462 List!14392)) (BytesLiteralValue!2573 (value!80394 List!14392)) (CommentValue!5147 (value!80395 List!14392)) (StringLiteralValue!7721 (value!80396 List!14392)) (ErrorTokenValue!2573 (msg!2634 List!14392)) )
))
(declare-datatypes ((C!7884 0))(
  ( (C!7885 (val!4502 Int)) )
))
(declare-datatypes ((List!14393 0))(
  ( (Nil!14327) (Cons!14327 (h!19728 C!7884) (t!123062 List!14393)) )
))
(declare-datatypes ((IArray!9457 0))(
  ( (IArray!9458 (innerList!4786 List!14393)) )
))
(declare-datatypes ((Conc!4726 0))(
  ( (Node!4726 (left!12233 Conc!4726) (right!12563 Conc!4726) (csize!9682 Int) (cheight!4937 Int)) (Leaf!7164 (xs!7453 IArray!9457) (csize!9683 Int)) (Empty!4726) )
))
(declare-datatypes ((BalanceConc!9392 0))(
  ( (BalanceConc!9393 (c!231228 Conc!4726)) )
))
(declare-datatypes ((Regex!3797 0))(
  ( (ElementMatch!3797 (c!231229 C!7884)) (Concat!6371 (regOne!8106 Regex!3797) (regTwo!8106 Regex!3797)) (EmptyExpr!3797) (Star!3797 (reg!4126 Regex!3797)) (EmptyLang!3797) (Union!3797 (regOne!8107 Regex!3797) (regTwo!8107 Regex!3797)) )
))
(declare-datatypes ((String!17101 0))(
  ( (String!17102 (value!80397 String)) )
))
(declare-datatypes ((TokenValueInjection!4806 0))(
  ( (TokenValueInjection!4807 (toValue!3774 Int) (toChars!3633 Int)) )
))
(declare-datatypes ((Rule!4766 0))(
  ( (Rule!4767 (regex!2483 Regex!3797) (tag!2745 String!17101) (isSeparator!2483 Bool) (transformation!2483 TokenValueInjection!4806)) )
))
(declare-datatypes ((List!14394 0))(
  ( (Nil!14328) (Cons!14328 (h!19729 Rule!4766) (t!123063 List!14394)) )
))
(declare-fun rules!2550 () List!14394)

(declare-datatypes ((Token!4628 0))(
  ( (Token!4629 (value!80398 TokenValue!2573) (rule!4246 Rule!4766) (size!11785 Int) (originalCharacters!3345 List!14393)) )
))
(declare-fun t2!34 () Token!4628)

(declare-fun contains!2831 (List!14394 Rule!4766) Bool)

(assert (=> b!1406561 (= res!636887 (not (contains!2831 rules!2550 (rule!4246 t2!34))))))

(declare-fun b!1406562 () Bool)

(declare-fun e!897946 () Bool)

(assert (=> b!1406562 (= e!897946 e!897947)))

(declare-fun res!636874 () Bool)

(assert (=> b!1406562 (=> res!636874 e!897947)))

(declare-datatypes ((LexerInterface!2178 0))(
  ( (LexerInterfaceExt!2175 (__x!8976 Int)) (Lexer!2176) )
))
(declare-fun thiss!19762 () LexerInterface!2178)

(declare-fun lt!469494 () List!14393)

(declare-datatypes ((tuple2!13958 0))(
  ( (tuple2!13959 (_1!7865 Token!4628) (_2!7865 List!14393)) )
))
(declare-datatypes ((Option!2746 0))(
  ( (None!2745) (Some!2745 (v!21705 tuple2!13958)) )
))
(declare-fun maxPrefix!1152 (LexerInterface!2178 List!14394 List!14393) Option!2746)

(assert (=> b!1406562 (= res!636874 (not (= (maxPrefix!1152 thiss!19762 rules!2550 lt!469494) (Some!2745 (tuple2!13959 t2!34 Nil!14327)))))))

(declare-fun lt!469506 () BalanceConc!9392)

(declare-fun list!5597 (BalanceConc!9392) List!14393)

(assert (=> b!1406562 (= lt!469494 (list!5597 lt!469506))))

(declare-fun b!1406563 () Bool)

(declare-fun res!636903 () Bool)

(declare-fun e!897959 () Bool)

(assert (=> b!1406563 (=> res!636903 e!897959)))

(declare-datatypes ((List!14395 0))(
  ( (Nil!14329) (Cons!14329 (h!19730 Token!4628) (t!123064 List!14395)) )
))
(declare-fun lt!469509 () List!14395)

(declare-fun lt!469492 () BalanceConc!9392)

(declare-datatypes ((tuple2!13960 0))(
  ( (tuple2!13961 (_1!7866 List!14395) (_2!7866 List!14393)) )
))
(declare-fun lexList!692 (LexerInterface!2178 List!14394 List!14393) tuple2!13960)

(assert (=> b!1406563 (= res!636903 (not (= (lexList!692 thiss!19762 rules!2550 (list!5597 lt!469492)) (tuple2!13961 lt!469509 Nil!14327))))))

(declare-fun b!1406564 () Bool)

(declare-fun res!636894 () Bool)

(declare-fun e!897950 () Bool)

(assert (=> b!1406564 (=> res!636894 e!897950)))

(declare-fun lt!469490 () List!14393)

(declare-fun lt!469489 () C!7884)

(declare-fun contains!2832 (List!14393 C!7884) Bool)

(assert (=> b!1406564 (= res!636894 (not (contains!2832 lt!469490 lt!469489)))))

(declare-fun b!1406565 () Bool)

(declare-fun e!897967 () Bool)

(declare-fun e!897958 () Bool)

(assert (=> b!1406565 (= e!897967 e!897958)))

(declare-fun res!636881 () Bool)

(assert (=> b!1406565 (=> res!636881 e!897958)))

(declare-fun lt!469515 () Bool)

(assert (=> b!1406565 (= res!636881 lt!469515)))

(declare-datatypes ((Unit!20693 0))(
  ( (Unit!20694) )
))
(declare-fun lt!469497 () Unit!20693)

(declare-fun e!897973 () Unit!20693)

(assert (=> b!1406565 (= lt!469497 e!897973)))

(declare-fun c!231226 () Bool)

(assert (=> b!1406565 (= c!231226 lt!469515)))

(declare-fun usedCharacters!294 (Regex!3797) List!14393)

(assert (=> b!1406565 (= lt!469515 (not (contains!2832 (usedCharacters!294 (regex!2483 (rule!4246 t2!34))) lt!469489)))))

(declare-fun b!1406566 () Bool)

(declare-fun e!897943 () Bool)

(declare-fun e!897948 () Bool)

(assert (=> b!1406566 (= e!897943 e!897948)))

(declare-fun res!636884 () Bool)

(assert (=> b!1406566 (=> (not res!636884) (not e!897948))))

(declare-fun lt!469505 () Regex!3797)

(declare-fun prefixMatch!306 (Regex!3797 List!14393) Bool)

(assert (=> b!1406566 (= res!636884 (prefixMatch!306 lt!469505 lt!469490))))

(declare-fun rulesRegex!366 (LexerInterface!2178 List!14394) Regex!3797)

(assert (=> b!1406566 (= lt!469505 (rulesRegex!366 thiss!19762 rules!2550))))

(declare-fun lt!469503 () List!14393)

(declare-fun ++!3726 (List!14393 List!14393) List!14393)

(assert (=> b!1406566 (= lt!469490 (++!3726 lt!469503 (Cons!14327 lt!469489 Nil!14327)))))

(declare-fun apply!3667 (BalanceConc!9392 Int) C!7884)

(assert (=> b!1406566 (= lt!469489 (apply!3667 lt!469506 0))))

(declare-fun lt!469488 () BalanceConc!9392)

(assert (=> b!1406566 (= lt!469503 (list!5597 lt!469488))))

(declare-fun t1!34 () Token!4628)

(declare-fun charsOf!1455 (Token!4628) BalanceConc!9392)

(assert (=> b!1406566 (= lt!469488 (charsOf!1455 t1!34))))

(declare-fun b!1406567 () Bool)

(declare-fun res!636901 () Bool)

(assert (=> b!1406567 (=> res!636901 e!897950)))

(declare-fun lt!469500 () List!14393)

(declare-fun matchR!1788 (Regex!3797 List!14393) Bool)

(assert (=> b!1406567 (= res!636901 (not (matchR!1788 lt!469505 lt!469500)))))

(declare-fun res!636908 () Bool)

(declare-fun e!897960 () Bool)

(assert (=> start!128242 (=> (not res!636908) (not e!897960))))

(get-info :version)

(assert (=> start!128242 (= res!636908 ((_ is Lexer!2176) thiss!19762))))

(assert (=> start!128242 e!897960))

(assert (=> start!128242 true))

(declare-fun e!897968 () Bool)

(assert (=> start!128242 e!897968))

(declare-fun e!897963 () Bool)

(declare-fun inv!18625 (Token!4628) Bool)

(assert (=> start!128242 (and (inv!18625 t1!34) e!897963)))

(declare-fun e!897962 () Bool)

(assert (=> start!128242 (and (inv!18625 t2!34) e!897962)))

(declare-fun b!1406568 () Bool)

(declare-fun e!897956 () Bool)

(declare-fun tp!399561 () Bool)

(declare-fun inv!21 (TokenValue!2573) Bool)

(assert (=> b!1406568 (= e!897963 (and (inv!21 (value!80398 t1!34)) e!897956 tp!399561))))

(declare-fun b!1406569 () Bool)

(assert (=> b!1406569 (= e!897959 e!897946)))

(declare-fun res!636902 () Bool)

(assert (=> b!1406569 (=> res!636902 e!897946)))

(declare-datatypes ((IArray!9459 0))(
  ( (IArray!9460 (innerList!4787 List!14395)) )
))
(declare-datatypes ((Conc!4727 0))(
  ( (Node!4727 (left!12234 Conc!4727) (right!12564 Conc!4727) (csize!9684 Int) (cheight!4938 Int)) (Leaf!7165 (xs!7454 IArray!9459) (csize!9685 Int)) (Empty!4727) )
))
(declare-datatypes ((BalanceConc!9394 0))(
  ( (BalanceConc!9395 (c!231230 Conc!4727)) )
))
(declare-datatypes ((tuple2!13962 0))(
  ( (tuple2!13963 (_1!7867 BalanceConc!9394) (_2!7867 BalanceConc!9392)) )
))
(declare-fun lt!469516 () tuple2!13962)

(declare-fun lt!469487 () List!14395)

(declare-fun list!5598 (BalanceConc!9394) List!14395)

(assert (=> b!1406569 (= res!636902 (not (= (list!5598 (_1!7867 lt!469516)) lt!469487)))))

(assert (=> b!1406569 (= lt!469487 (Cons!14329 t2!34 Nil!14329))))

(declare-fun lt!469498 () BalanceConc!9392)

(declare-fun lex!1003 (LexerInterface!2178 List!14394 BalanceConc!9392) tuple2!13962)

(assert (=> b!1406569 (= lt!469516 (lex!1003 thiss!19762 rules!2550 lt!469498))))

(declare-fun print!942 (LexerInterface!2178 BalanceConc!9394) BalanceConc!9392)

(declare-fun singletonSeq!1150 (Token!4628) BalanceConc!9394)

(assert (=> b!1406569 (= lt!469498 (print!942 thiss!19762 (singletonSeq!1150 t2!34)))))

(declare-fun b!1406570 () Bool)

(declare-fun res!636896 () Bool)

(assert (=> b!1406570 (=> res!636896 e!897959)))

(assert (=> b!1406570 (= res!636896 (not (= (maxPrefix!1152 thiss!19762 rules!2550 lt!469503) (Some!2745 (tuple2!13959 t1!34 Nil!14327)))))))

(declare-fun b!1406571 () Bool)

(declare-fun e!897954 () Bool)

(declare-fun e!897969 () Bool)

(declare-fun tp!399565 () Bool)

(declare-fun inv!18622 (String!17101) Bool)

(declare-fun inv!18626 (TokenValueInjection!4806) Bool)

(assert (=> b!1406571 (= e!897954 (and tp!399565 (inv!18622 (tag!2745 (h!19729 rules!2550))) (inv!18626 (transformation!2483 (h!19729 rules!2550))) e!897969))))

(declare-fun b!1406572 () Bool)

(declare-fun Unit!20695 () Unit!20693)

(assert (=> b!1406572 (= e!897973 Unit!20695)))

(declare-fun b!1406573 () Bool)

(declare-fun e!897957 () Bool)

(assert (=> b!1406573 (= e!897957 e!897959)))

(declare-fun res!636886 () Bool)

(assert (=> b!1406573 (=> res!636886 e!897959)))

(declare-fun lt!469512 () tuple2!13962)

(assert (=> b!1406573 (= res!636886 (not (= (list!5598 (_1!7867 lt!469512)) lt!469509)))))

(assert (=> b!1406573 (= lt!469509 (Cons!14329 t1!34 Nil!14329))))

(assert (=> b!1406573 (= lt!469512 (lex!1003 thiss!19762 rules!2550 lt!469492))))

(assert (=> b!1406573 (= lt!469492 (print!942 thiss!19762 (singletonSeq!1150 t1!34)))))

(declare-fun lt!469511 () Rule!4766)

(declare-fun getWitness!498 (List!14394 Int) Rule!4766)

(assert (=> b!1406573 (= lt!469511 (getWitness!498 rules!2550 lambda!62140))))

(declare-fun b!1406574 () Bool)

(declare-fun res!636905 () Bool)

(assert (=> b!1406574 (=> res!636905 e!897950)))

(declare-fun lt!469510 () C!7884)

(assert (=> b!1406574 (= res!636905 (not (contains!2832 lt!469500 lt!469510)))))

(declare-fun b!1406575 () Bool)

(declare-fun res!636883 () Bool)

(assert (=> b!1406575 (=> res!636883 e!897946)))

(assert (=> b!1406575 (= res!636883 (not (= (lexList!692 thiss!19762 rules!2550 (list!5597 lt!469498)) (tuple2!13961 lt!469487 Nil!14327))))))

(assert (=> b!1406576 (= e!897969 (and tp!399563 tp!399567))))

(declare-fun b!1406577 () Bool)

(declare-fun e!897971 () Bool)

(assert (=> b!1406577 (= e!897971 e!897967)))

(declare-fun res!636877 () Bool)

(assert (=> b!1406577 (=> res!636877 e!897967)))

(declare-fun lt!469507 () Bool)

(assert (=> b!1406577 (= res!636877 lt!469507)))

(declare-fun lt!469504 () Unit!20693)

(declare-fun e!897952 () Unit!20693)

(assert (=> b!1406577 (= lt!469504 e!897952)))

(declare-fun c!231227 () Bool)

(assert (=> b!1406577 (= c!231227 lt!469507)))

(assert (=> b!1406577 (= lt!469507 (not (contains!2832 (usedCharacters!294 (regex!2483 (rule!4246 t1!34))) lt!469510)))))

(declare-fun b!1406578 () Bool)

(declare-fun e!897964 () Bool)

(assert (=> b!1406578 (= e!897958 e!897964)))

(declare-fun res!636880 () Bool)

(assert (=> b!1406578 (=> res!636880 e!897964)))

(assert (=> b!1406578 (= res!636880 (or (isSeparator!2483 lt!469511) (isSeparator!2483 (rule!4246 t1!34))))))

(declare-fun lt!469493 () Regex!3797)

(assert (=> b!1406578 (= (regex!2483 lt!469511) lt!469493)))

(declare-fun tp!399562 () Bool)

(declare-fun e!897944 () Bool)

(declare-fun b!1406579 () Bool)

(assert (=> b!1406579 (= e!897962 (and (inv!21 (value!80398 t2!34)) e!897944 tp!399562))))

(declare-fun b!1406580 () Bool)

(declare-fun res!636889 () Bool)

(assert (=> b!1406580 (=> res!636889 e!897946)))

(declare-fun isEmpty!8720 (BalanceConc!9392) Bool)

(assert (=> b!1406580 (= res!636889 (not (isEmpty!8720 (_2!7867 lt!469516))))))

(declare-fun e!897972 () Bool)

(assert (=> b!1406581 (= e!897948 (not e!897972))))

(declare-fun res!636879 () Bool)

(assert (=> b!1406581 (=> res!636879 e!897972)))

(declare-fun lambda!62137 () Int)

(declare-fun Exists!947 (Int) Bool)

(assert (=> b!1406581 (= res!636879 (not (Exists!947 lambda!62137)))))

(assert (=> b!1406581 (Exists!947 lambda!62137)))

(declare-fun lt!469499 () Unit!20693)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!265 (Regex!3797 List!14393) Unit!20693)

(assert (=> b!1406581 (= lt!469499 (lemmaPrefixMatchThenExistsStringThatMatches!265 lt!469505 lt!469490))))

(declare-fun e!897953 () Bool)

(assert (=> b!1406582 (= e!897953 (and tp!399568 tp!399566))))

(declare-fun tp!399559 () Bool)

(declare-fun b!1406583 () Bool)

(assert (=> b!1406583 (= e!897944 (and tp!399559 (inv!18622 (tag!2745 (rule!4246 t2!34))) (inv!18626 (transformation!2483 (rule!4246 t2!34))) e!897953))))

(declare-fun b!1406584 () Bool)

(declare-fun res!636890 () Bool)

(assert (=> b!1406584 (=> (not res!636890) (not e!897960))))

(declare-fun rulesInvariant!2048 (LexerInterface!2178 List!14394) Bool)

(assert (=> b!1406584 (= res!636890 (rulesInvariant!2048 thiss!19762 rules!2550))))

(declare-fun b!1406585 () Bool)

(declare-fun res!636907 () Bool)

(assert (=> b!1406585 (=> (not res!636907) (not e!897960))))

(declare-fun isEmpty!8721 (List!14394) Bool)

(assert (=> b!1406585 (= res!636907 (not (isEmpty!8721 rules!2550)))))

(declare-fun b!1406586 () Bool)

(declare-fun res!636882 () Bool)

(assert (=> b!1406586 (=> (not res!636882) (not e!897960))))

(declare-fun rulesProduceIndividualToken!1147 (LexerInterface!2178 List!14394 Token!4628) Bool)

(assert (=> b!1406586 (= res!636882 (rulesProduceIndividualToken!1147 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1406587 () Bool)

(declare-fun tp!399558 () Bool)

(assert (=> b!1406587 (= e!897968 (and e!897954 tp!399558))))

(assert (=> b!1406588 (= e!897947 e!897971)))

(declare-fun res!636873 () Bool)

(assert (=> b!1406588 (=> res!636873 e!897971)))

(assert (=> b!1406588 (= res!636873 (not (matchR!1788 (regex!2483 (rule!4246 t1!34)) lt!469503)))))

(declare-fun lt!469495 () Unit!20693)

(declare-fun forallContained!678 (List!14394 Int Rule!4766) Unit!20693)

(assert (=> b!1406588 (= lt!469495 (forallContained!678 rules!2550 lambda!62141 (rule!4246 t2!34)))))

(declare-fun lt!469514 () Unit!20693)

(assert (=> b!1406588 (= lt!469514 (forallContained!678 rules!2550 lambda!62141 (rule!4246 t1!34)))))

(declare-fun lt!469502 () Unit!20693)

(assert (=> b!1406588 (= lt!469502 (forallContained!678 rules!2550 lambda!62141 lt!469511))))

(declare-fun b!1406589 () Bool)

(declare-fun res!636878 () Bool)

(assert (=> b!1406589 (=> (not res!636878) (not e!897943))))

(declare-fun sepAndNonSepRulesDisjointChars!856 (List!14394 List!14394) Bool)

(assert (=> b!1406589 (= res!636878 (sepAndNonSepRulesDisjointChars!856 rules!2550 rules!2550))))

(declare-fun b!1406590 () Bool)

(declare-fun e!897970 () Bool)

(declare-fun e!897974 () Bool)

(assert (=> b!1406590 (= e!897970 e!897974)))

(declare-fun res!636895 () Bool)

(assert (=> b!1406590 (=> res!636895 e!897974)))

(declare-fun lambda!62138 () Int)

(declare-datatypes ((List!14396 0))(
  ( (Nil!14330) (Cons!14330 (h!19731 Regex!3797) (t!123065 List!14396)) )
))
(declare-fun contains!2833 (List!14396 Regex!3797) Bool)

(declare-fun map!3185 (List!14394 Int) List!14396)

(assert (=> b!1406590 (= res!636895 (not (contains!2833 (map!3185 rules!2550 lambda!62138) lt!469493)))))

(declare-fun lambda!62139 () Int)

(declare-fun getWitness!499 (List!14396 Int) Regex!3797)

(assert (=> b!1406590 (= lt!469493 (getWitness!499 (map!3185 rules!2550 lambda!62138) lambda!62139))))

(declare-fun b!1406591 () Bool)

(assert (=> b!1406591 (= e!897960 e!897943)))

(declare-fun res!636893 () Bool)

(assert (=> b!1406591 (=> (not res!636893) (not e!897943))))

(declare-fun size!11786 (BalanceConc!9392) Int)

(assert (=> b!1406591 (= res!636893 (> (size!11786 lt!469506) 0))))

(assert (=> b!1406591 (= lt!469506 (charsOf!1455 t2!34))))

(assert (=> b!1406592 (= e!897974 e!897957)))

(declare-fun res!636885 () Bool)

(assert (=> b!1406592 (=> res!636885 e!897957)))

(declare-fun exists!610 (List!14394 Int) Bool)

(assert (=> b!1406592 (= res!636885 (not (exists!610 rules!2550 lambda!62140)))))

(assert (=> b!1406592 (exists!610 rules!2550 lambda!62140)))

(declare-fun lt!469486 () Unit!20693)

(declare-fun lemmaMapContains!194 (List!14394 Int Regex!3797) Unit!20693)

(assert (=> b!1406592 (= lt!469486 (lemmaMapContains!194 rules!2550 lambda!62138 lt!469493))))

(declare-fun b!1406593 () Bool)

(declare-fun e!897945 () Bool)

(assert (=> b!1406593 (= e!897945 e!897950)))

(declare-fun res!636899 () Bool)

(assert (=> b!1406593 (=> res!636899 e!897950)))

(assert (=> b!1406593 (= res!636899 (not (contains!2832 lt!469490 lt!469510)))))

(assert (=> b!1406593 (= lt!469510 (apply!3667 lt!469488 0))))

(declare-fun b!1406594 () Bool)

(declare-fun res!636876 () Bool)

(assert (=> b!1406594 (=> res!636876 e!897950)))

(assert (=> b!1406594 (= res!636876 (not (contains!2832 lt!469500 lt!469489)))))

(declare-fun b!1406595 () Bool)

(declare-fun res!636898 () Bool)

(assert (=> b!1406595 (=> res!636898 e!897959)))

(assert (=> b!1406595 (= res!636898 (not (contains!2831 rules!2550 (rule!4246 t1!34))))))

(declare-fun b!1406596 () Bool)

(declare-fun res!636875 () Bool)

(assert (=> b!1406596 (=> (not res!636875) (not e!897960))))

(assert (=> b!1406596 (= res!636875 (not (= (isSeparator!2483 (rule!4246 t1!34)) (isSeparator!2483 (rule!4246 t2!34)))))))

(declare-fun e!897955 () Bool)

(declare-fun tp!399557 () Bool)

(declare-fun b!1406597 () Bool)

(assert (=> b!1406597 (= e!897956 (and tp!399557 (inv!18622 (tag!2745 (rule!4246 t1!34))) (inv!18626 (transformation!2483 (rule!4246 t1!34))) e!897955))))

(declare-fun b!1406598 () Bool)

(declare-fun Unit!20696 () Unit!20693)

(assert (=> b!1406598 (= e!897952 Unit!20696)))

(declare-fun b!1406599 () Bool)

(declare-fun res!636892 () Bool)

(assert (=> b!1406599 (=> (not res!636892) (not e!897960))))

(assert (=> b!1406599 (= res!636892 (rulesProduceIndividualToken!1147 thiss!19762 rules!2550 t2!34))))

(assert (=> b!1406600 (= e!897955 (and tp!399560 tp!399564))))

(declare-fun b!1406601 () Bool)

(declare-fun res!636891 () Bool)

(assert (=> b!1406601 (=> res!636891 e!897959)))

(assert (=> b!1406601 (= res!636891 (not (isEmpty!8720 (_2!7867 lt!469512))))))

(declare-fun b!1406602 () Bool)

(declare-fun Unit!20697 () Unit!20693)

(assert (=> b!1406602 (= e!897952 Unit!20697)))

(declare-fun lt!469491 () Unit!20693)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!228 (Regex!3797 List!14393 C!7884) Unit!20693)

(declare-fun head!2621 (List!14393) C!7884)

(assert (=> b!1406602 (= lt!469491 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!228 (regex!2483 (rule!4246 t1!34)) lt!469503 (head!2621 lt!469503)))))

(assert (=> b!1406602 false))

(declare-fun b!1406603 () Bool)

(declare-fun Unit!20698 () Unit!20693)

(assert (=> b!1406603 (= e!897973 Unit!20698)))

(declare-fun lt!469508 () Unit!20693)

(assert (=> b!1406603 (= lt!469508 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!228 (regex!2483 (rule!4246 t2!34)) lt!469494 (head!2621 lt!469494)))))

(assert (=> b!1406603 false))

(assert (=> b!1406604 (= e!897950 e!897970)))

(declare-fun res!636900 () Bool)

(assert (=> b!1406604 (=> res!636900 e!897970)))

(declare-fun exists!611 (List!14396 Int) Bool)

(assert (=> b!1406604 (= res!636900 (not (exists!611 (map!3185 rules!2550 lambda!62138) lambda!62139)))))

(declare-fun lt!469501 () List!14396)

(assert (=> b!1406604 (exists!611 lt!469501 lambda!62139)))

(declare-fun lt!469485 () Unit!20693)

(declare-fun matchRGenUnionSpec!208 (Regex!3797 List!14396 List!14393) Unit!20693)

(assert (=> b!1406604 (= lt!469485 (matchRGenUnionSpec!208 lt!469505 lt!469501 lt!469500))))

(assert (=> b!1406604 (= lt!469501 (map!3185 rules!2550 lambda!62138))))

(declare-fun b!1406605 () Bool)

(assert (=> b!1406605 (= e!897964 false)))

(assert (=> b!1406605 (not (matchR!1788 lt!469493 lt!469500))))

(declare-fun lt!469513 () Unit!20693)

(assert (=> b!1406605 (= lt!469513 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!228 lt!469493 lt!469500 lt!469489))))

(assert (=> b!1406605 (not (contains!2832 (usedCharacters!294 (regex!2483 lt!469511)) lt!469489))))

(declare-fun lt!469496 () Unit!20693)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!30 (LexerInterface!2178 List!14394 List!14394 Rule!4766 Rule!4766 C!7884) Unit!20693)

(assert (=> b!1406605 (= lt!469496 (lemmaNonSepRuleNotContainsCharContainedInASepRule!30 thiss!19762 rules!2550 rules!2550 lt!469511 (rule!4246 t2!34) lt!469489))))

(declare-fun b!1406606 () Bool)

(declare-fun res!636897 () Bool)

(assert (=> b!1406606 (=> res!636897 e!897947)))

(assert (=> b!1406606 (= res!636897 (not (contains!2831 rules!2550 lt!469511)))))

(declare-fun b!1406607 () Bool)

(declare-fun res!636906 () Bool)

(assert (=> b!1406607 (=> (not res!636906) (not e!897943))))

(declare-fun separableTokensPredicate!461 (LexerInterface!2178 Token!4628 Token!4628 List!14394) Bool)

(assert (=> b!1406607 (= res!636906 (not (separableTokensPredicate!461 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1406608 () Bool)

(assert (=> b!1406608 (= e!897972 e!897945)))

(declare-fun res!636904 () Bool)

(assert (=> b!1406608 (=> res!636904 e!897945)))

(declare-fun getSuffix!643 (List!14393 List!14393) List!14393)

(assert (=> b!1406608 (= res!636904 (not (= lt!469500 (++!3726 lt!469490 (getSuffix!643 lt!469500 lt!469490)))))))

(declare-fun pickWitness!250 (Int) List!14393)

(assert (=> b!1406608 (= lt!469500 (pickWitness!250 lambda!62137))))

(declare-fun b!1406609 () Bool)

(declare-fun res!636888 () Bool)

(assert (=> b!1406609 (=> res!636888 e!897971)))

(assert (=> b!1406609 (= res!636888 (not (matchR!1788 (regex!2483 (rule!4246 t2!34)) lt!469494)))))

(assert (= (and start!128242 res!636908) b!1406585))

(assert (= (and b!1406585 res!636907) b!1406584))

(assert (= (and b!1406584 res!636890) b!1406586))

(assert (= (and b!1406586 res!636882) b!1406599))

(assert (= (and b!1406599 res!636892) b!1406596))

(assert (= (and b!1406596 res!636875) b!1406591))

(assert (= (and b!1406591 res!636893) b!1406589))

(assert (= (and b!1406589 res!636878) b!1406607))

(assert (= (and b!1406607 res!636906) b!1406566))

(assert (= (and b!1406566 res!636884) b!1406581))

(assert (= (and b!1406581 (not res!636879)) b!1406608))

(assert (= (and b!1406608 (not res!636904)) b!1406593))

(assert (= (and b!1406593 (not res!636899)) b!1406574))

(assert (= (and b!1406574 (not res!636905)) b!1406564))

(assert (= (and b!1406564 (not res!636894)) b!1406594))

(assert (= (and b!1406594 (not res!636876)) b!1406567))

(assert (= (and b!1406567 (not res!636901)) b!1406604))

(assert (= (and b!1406604 (not res!636900)) b!1406590))

(assert (= (and b!1406590 (not res!636895)) b!1406592))

(assert (= (and b!1406592 (not res!636885)) b!1406573))

(assert (= (and b!1406573 (not res!636886)) b!1406601))

(assert (= (and b!1406601 (not res!636891)) b!1406563))

(assert (= (and b!1406563 (not res!636903)) b!1406570))

(assert (= (and b!1406570 (not res!636896)) b!1406595))

(assert (= (and b!1406595 (not res!636898)) b!1406569))

(assert (= (and b!1406569 (not res!636902)) b!1406580))

(assert (= (and b!1406580 (not res!636889)) b!1406575))

(assert (= (and b!1406575 (not res!636883)) b!1406562))

(assert (= (and b!1406562 (not res!636874)) b!1406561))

(assert (= (and b!1406561 (not res!636887)) b!1406606))

(assert (= (and b!1406606 (not res!636897)) b!1406588))

(assert (= (and b!1406588 (not res!636873)) b!1406609))

(assert (= (and b!1406609 (not res!636888)) b!1406577))

(assert (= (and b!1406577 c!231227) b!1406602))

(assert (= (and b!1406577 (not c!231227)) b!1406598))

(assert (= (and b!1406577 (not res!636877)) b!1406565))

(assert (= (and b!1406565 c!231226) b!1406603))

(assert (= (and b!1406565 (not c!231226)) b!1406572))

(assert (= (and b!1406565 (not res!636881)) b!1406578))

(assert (= (and b!1406578 (not res!636880)) b!1406605))

(assert (= b!1406571 b!1406576))

(assert (= b!1406587 b!1406571))

(assert (= (and start!128242 ((_ is Cons!14328) rules!2550)) b!1406587))

(assert (= b!1406597 b!1406600))

(assert (= b!1406568 b!1406597))

(assert (= start!128242 b!1406568))

(assert (= b!1406583 b!1406582))

(assert (= b!1406579 b!1406583))

(assert (= start!128242 b!1406579))

(declare-fun m!1584083 () Bool)

(assert (=> b!1406579 m!1584083))

(declare-fun m!1584085 () Bool)

(assert (=> b!1406592 m!1584085))

(assert (=> b!1406592 m!1584085))

(declare-fun m!1584087 () Bool)

(assert (=> b!1406592 m!1584087))

(declare-fun m!1584089 () Bool)

(assert (=> b!1406563 m!1584089))

(assert (=> b!1406563 m!1584089))

(declare-fun m!1584091 () Bool)

(assert (=> b!1406563 m!1584091))

(declare-fun m!1584093 () Bool)

(assert (=> b!1406601 m!1584093))

(declare-fun m!1584095 () Bool)

(assert (=> b!1406608 m!1584095))

(assert (=> b!1406608 m!1584095))

(declare-fun m!1584097 () Bool)

(assert (=> b!1406608 m!1584097))

(declare-fun m!1584099 () Bool)

(assert (=> b!1406608 m!1584099))

(declare-fun m!1584101 () Bool)

(assert (=> b!1406574 m!1584101))

(declare-fun m!1584103 () Bool)

(assert (=> b!1406573 m!1584103))

(declare-fun m!1584105 () Bool)

(assert (=> b!1406573 m!1584105))

(assert (=> b!1406573 m!1584103))

(declare-fun m!1584107 () Bool)

(assert (=> b!1406573 m!1584107))

(declare-fun m!1584109 () Bool)

(assert (=> b!1406573 m!1584109))

(declare-fun m!1584111 () Bool)

(assert (=> b!1406573 m!1584111))

(declare-fun m!1584113 () Bool)

(assert (=> b!1406591 m!1584113))

(declare-fun m!1584115 () Bool)

(assert (=> b!1406591 m!1584115))

(declare-fun m!1584117 () Bool)

(assert (=> b!1406570 m!1584117))

(declare-fun m!1584119 () Bool)

(assert (=> b!1406594 m!1584119))

(declare-fun m!1584121 () Bool)

(assert (=> b!1406609 m!1584121))

(declare-fun m!1584123 () Bool)

(assert (=> b!1406565 m!1584123))

(assert (=> b!1406565 m!1584123))

(declare-fun m!1584125 () Bool)

(assert (=> b!1406565 m!1584125))

(declare-fun m!1584127 () Bool)

(assert (=> b!1406581 m!1584127))

(assert (=> b!1406581 m!1584127))

(declare-fun m!1584129 () Bool)

(assert (=> b!1406581 m!1584129))

(declare-fun m!1584131 () Bool)

(assert (=> b!1406567 m!1584131))

(declare-fun m!1584133 () Bool)

(assert (=> b!1406569 m!1584133))

(declare-fun m!1584135 () Bool)

(assert (=> b!1406569 m!1584135))

(declare-fun m!1584137 () Bool)

(assert (=> b!1406569 m!1584137))

(assert (=> b!1406569 m!1584137))

(declare-fun m!1584139 () Bool)

(assert (=> b!1406569 m!1584139))

(declare-fun m!1584141 () Bool)

(assert (=> b!1406571 m!1584141))

(declare-fun m!1584143 () Bool)

(assert (=> b!1406571 m!1584143))

(declare-fun m!1584145 () Bool)

(assert (=> b!1406595 m!1584145))

(declare-fun m!1584147 () Bool)

(assert (=> b!1406577 m!1584147))

(assert (=> b!1406577 m!1584147))

(declare-fun m!1584149 () Bool)

(assert (=> b!1406577 m!1584149))

(declare-fun m!1584151 () Bool)

(assert (=> start!128242 m!1584151))

(declare-fun m!1584153 () Bool)

(assert (=> start!128242 m!1584153))

(declare-fun m!1584155 () Bool)

(assert (=> b!1406603 m!1584155))

(assert (=> b!1406603 m!1584155))

(declare-fun m!1584157 () Bool)

(assert (=> b!1406603 m!1584157))

(declare-fun m!1584159 () Bool)

(assert (=> b!1406589 m!1584159))

(declare-fun m!1584161 () Bool)

(assert (=> b!1406588 m!1584161))

(declare-fun m!1584163 () Bool)

(assert (=> b!1406588 m!1584163))

(declare-fun m!1584165 () Bool)

(assert (=> b!1406588 m!1584165))

(declare-fun m!1584167 () Bool)

(assert (=> b!1406588 m!1584167))

(declare-fun m!1584169 () Bool)

(assert (=> b!1406566 m!1584169))

(declare-fun m!1584171 () Bool)

(assert (=> b!1406566 m!1584171))

(declare-fun m!1584173 () Bool)

(assert (=> b!1406566 m!1584173))

(declare-fun m!1584175 () Bool)

(assert (=> b!1406566 m!1584175))

(declare-fun m!1584177 () Bool)

(assert (=> b!1406566 m!1584177))

(declare-fun m!1584179 () Bool)

(assert (=> b!1406566 m!1584179))

(declare-fun m!1584181 () Bool)

(assert (=> b!1406597 m!1584181))

(declare-fun m!1584183 () Bool)

(assert (=> b!1406597 m!1584183))

(declare-fun m!1584185 () Bool)

(assert (=> b!1406606 m!1584185))

(declare-fun m!1584187 () Bool)

(assert (=> b!1406590 m!1584187))

(assert (=> b!1406590 m!1584187))

(declare-fun m!1584189 () Bool)

(assert (=> b!1406590 m!1584189))

(assert (=> b!1406590 m!1584187))

(assert (=> b!1406590 m!1584187))

(declare-fun m!1584191 () Bool)

(assert (=> b!1406590 m!1584191))

(declare-fun m!1584193 () Bool)

(assert (=> b!1406599 m!1584193))

(declare-fun m!1584195 () Bool)

(assert (=> b!1406605 m!1584195))

(declare-fun m!1584197 () Bool)

(assert (=> b!1406605 m!1584197))

(declare-fun m!1584199 () Bool)

(assert (=> b!1406605 m!1584199))

(assert (=> b!1406605 m!1584195))

(declare-fun m!1584201 () Bool)

(assert (=> b!1406605 m!1584201))

(declare-fun m!1584203 () Bool)

(assert (=> b!1406605 m!1584203))

(declare-fun m!1584205 () Bool)

(assert (=> b!1406593 m!1584205))

(declare-fun m!1584207 () Bool)

(assert (=> b!1406593 m!1584207))

(assert (=> b!1406604 m!1584187))

(declare-fun m!1584209 () Bool)

(assert (=> b!1406604 m!1584209))

(assert (=> b!1406604 m!1584187))

(assert (=> b!1406604 m!1584187))

(declare-fun m!1584211 () Bool)

(assert (=> b!1406604 m!1584211))

(declare-fun m!1584213 () Bool)

(assert (=> b!1406604 m!1584213))

(declare-fun m!1584215 () Bool)

(assert (=> b!1406584 m!1584215))

(declare-fun m!1584217 () Bool)

(assert (=> b!1406607 m!1584217))

(declare-fun m!1584219 () Bool)

(assert (=> b!1406575 m!1584219))

(assert (=> b!1406575 m!1584219))

(declare-fun m!1584221 () Bool)

(assert (=> b!1406575 m!1584221))

(declare-fun m!1584223 () Bool)

(assert (=> b!1406562 m!1584223))

(declare-fun m!1584225 () Bool)

(assert (=> b!1406562 m!1584225))

(declare-fun m!1584227 () Bool)

(assert (=> b!1406586 m!1584227))

(declare-fun m!1584229 () Bool)

(assert (=> b!1406580 m!1584229))

(declare-fun m!1584231 () Bool)

(assert (=> b!1406568 m!1584231))

(declare-fun m!1584233 () Bool)

(assert (=> b!1406564 m!1584233))

(declare-fun m!1584235 () Bool)

(assert (=> b!1406583 m!1584235))

(declare-fun m!1584237 () Bool)

(assert (=> b!1406583 m!1584237))

(declare-fun m!1584239 () Bool)

(assert (=> b!1406602 m!1584239))

(assert (=> b!1406602 m!1584239))

(declare-fun m!1584241 () Bool)

(assert (=> b!1406602 m!1584241))

(declare-fun m!1584243 () Bool)

(assert (=> b!1406561 m!1584243))

(declare-fun m!1584245 () Bool)

(assert (=> b!1406585 m!1584245))

(check-sat (not b!1406586) (not b!1406588) (not b!1406580) (not b!1406587) (not b!1406602) b_and!94189 (not b!1406573) (not b!1406569) (not b!1406609) (not b_next!35067) (not b!1406584) (not b!1406601) (not b!1406574) (not b!1406562) (not b!1406607) (not b!1406585) (not b!1406563) (not b_next!35065) (not b!1406566) (not b!1406568) (not b_next!35063) (not b!1406589) (not b!1406581) (not b!1406561) (not start!128242) b_and!94181 (not b!1406599) (not b_next!35061) b_and!94187 (not b!1406564) (not b!1406583) (not b!1406570) b_and!94183 (not b!1406597) (not b!1406608) (not b!1406592) (not b!1406593) b_and!94179 (not b!1406606) (not b!1406590) (not b!1406603) (not b!1406579) (not b_next!35059) (not b!1406605) (not b!1406595) (not b!1406575) (not b!1406591) (not b!1406571) (not b!1406604) b_and!94185 (not b_next!35069) (not b!1406577) (not b!1406567) (not b!1406594) (not b!1406565))
(check-sat (not b_next!35065) (not b_next!35063) b_and!94189 (not b_next!35067) b_and!94187 b_and!94183 b_and!94179 (not b_next!35059) b_and!94181 (not b_next!35061) b_and!94185 (not b_next!35069))
(get-model)

(declare-fun d!401648 () Bool)

(assert (=> d!401648 (not (contains!2832 (usedCharacters!294 (regex!2483 lt!469511)) lt!469489))))

(declare-fun lt!469537 () Unit!20693)

(declare-fun choose!8692 (LexerInterface!2178 List!14394 List!14394 Rule!4766 Rule!4766 C!7884) Unit!20693)

(assert (=> d!401648 (= lt!469537 (choose!8692 thiss!19762 rules!2550 rules!2550 lt!469511 (rule!4246 t2!34) lt!469489))))

(assert (=> d!401648 (rulesInvariant!2048 thiss!19762 rules!2550)))

(assert (=> d!401648 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!30 thiss!19762 rules!2550 rules!2550 lt!469511 (rule!4246 t2!34) lt!469489) lt!469537)))

(declare-fun bs!338542 () Bool)

(assert (= bs!338542 d!401648))

(assert (=> bs!338542 m!1584195))

(assert (=> bs!338542 m!1584195))

(assert (=> bs!338542 m!1584197))

(declare-fun m!1584285 () Bool)

(assert (=> bs!338542 m!1584285))

(assert (=> bs!338542 m!1584215))

(assert (=> b!1406605 d!401648))

(declare-fun d!401650 () Bool)

(declare-fun e!898022 () Bool)

(assert (=> d!401650 e!898022))

(declare-fun c!231248 () Bool)

(assert (=> d!401650 (= c!231248 ((_ is EmptyExpr!3797) lt!469493))))

(declare-fun lt!469546 () Bool)

(declare-fun e!898029 () Bool)

(assert (=> d!401650 (= lt!469546 e!898029)))

(declare-fun c!231247 () Bool)

(declare-fun isEmpty!8727 (List!14393) Bool)

(assert (=> d!401650 (= c!231247 (isEmpty!8727 lt!469500))))

(declare-fun validRegex!1665 (Regex!3797) Bool)

(assert (=> d!401650 (validRegex!1665 lt!469493)))

(assert (=> d!401650 (= (matchR!1788 lt!469493 lt!469500) lt!469546)))

(declare-fun b!1406695 () Bool)

(declare-fun res!636967 () Bool)

(declare-fun e!898026 () Bool)

(assert (=> b!1406695 (=> res!636967 e!898026)))

(declare-fun e!898023 () Bool)

(assert (=> b!1406695 (= res!636967 e!898023)))

(declare-fun res!636969 () Bool)

(assert (=> b!1406695 (=> (not res!636969) (not e!898023))))

(assert (=> b!1406695 (= res!636969 lt!469546)))

(declare-fun b!1406696 () Bool)

(declare-fun res!636972 () Bool)

(assert (=> b!1406696 (=> (not res!636972) (not e!898023))))

(declare-fun call!93716 () Bool)

(assert (=> b!1406696 (= res!636972 (not call!93716))))

(declare-fun b!1406697 () Bool)

(declare-fun e!898030 () Bool)

(assert (=> b!1406697 (= e!898030 (not (= (head!2621 lt!469500) (c!231229 lt!469493))))))

(declare-fun b!1406698 () Bool)

(assert (=> b!1406698 (= e!898022 (= lt!469546 call!93716))))

(declare-fun b!1406699 () Bool)

(declare-fun derivativeStep!995 (Regex!3797 C!7884) Regex!3797)

(declare-fun tail!2042 (List!14393) List!14393)

(assert (=> b!1406699 (= e!898029 (matchR!1788 (derivativeStep!995 lt!469493 (head!2621 lt!469500)) (tail!2042 lt!469500)))))

(declare-fun b!1406700 () Bool)

(declare-fun res!636970 () Bool)

(assert (=> b!1406700 (=> res!636970 e!898030)))

(assert (=> b!1406700 (= res!636970 (not (isEmpty!8727 (tail!2042 lt!469500))))))

(declare-fun b!1406701 () Bool)

(declare-fun nullable!1237 (Regex!3797) Bool)

(assert (=> b!1406701 (= e!898029 (nullable!1237 lt!469493))))

(declare-fun b!1406702 () Bool)

(declare-fun res!636966 () Bool)

(assert (=> b!1406702 (=> res!636966 e!898026)))

(assert (=> b!1406702 (= res!636966 (not ((_ is ElementMatch!3797) lt!469493)))))

(declare-fun e!898027 () Bool)

(assert (=> b!1406702 (= e!898027 e!898026)))

(declare-fun b!1406703 () Bool)

(assert (=> b!1406703 (= e!898023 (= (head!2621 lt!469500) (c!231229 lt!469493)))))

(declare-fun bm!93711 () Bool)

(assert (=> bm!93711 (= call!93716 (isEmpty!8727 lt!469500))))

(declare-fun b!1406704 () Bool)

(assert (=> b!1406704 (= e!898027 (not lt!469546))))

(declare-fun b!1406705 () Bool)

(declare-fun e!898028 () Bool)

(assert (=> b!1406705 (= e!898026 e!898028)))

(declare-fun res!636971 () Bool)

(assert (=> b!1406705 (=> (not res!636971) (not e!898028))))

(assert (=> b!1406705 (= res!636971 (not lt!469546))))

(declare-fun b!1406706 () Bool)

(assert (=> b!1406706 (= e!898022 e!898027)))

(declare-fun c!231249 () Bool)

(assert (=> b!1406706 (= c!231249 ((_ is EmptyLang!3797) lt!469493))))

(declare-fun b!1406707 () Bool)

(declare-fun res!636963 () Bool)

(assert (=> b!1406707 (=> (not res!636963) (not e!898023))))

(assert (=> b!1406707 (= res!636963 (isEmpty!8727 (tail!2042 lt!469500)))))

(declare-fun b!1406710 () Bool)

(assert (=> b!1406710 (= e!898028 e!898030)))

(declare-fun res!636968 () Bool)

(assert (=> b!1406710 (=> res!636968 e!898030)))

(assert (=> b!1406710 (= res!636968 call!93716)))

(assert (= (and d!401650 c!231247) b!1406701))

(assert (= (and d!401650 (not c!231247)) b!1406699))

(assert (= (and d!401650 c!231248) b!1406698))

(assert (= (and d!401650 (not c!231248)) b!1406706))

(assert (= (and b!1406706 c!231249) b!1406704))

(assert (= (and b!1406706 (not c!231249)) b!1406702))

(assert (= (and b!1406702 (not res!636966)) b!1406695))

(assert (= (and b!1406695 res!636969) b!1406696))

(assert (= (and b!1406696 res!636972) b!1406707))

(assert (= (and b!1406707 res!636963) b!1406703))

(assert (= (and b!1406695 (not res!636967)) b!1406705))

(assert (= (and b!1406705 res!636971) b!1406710))

(assert (= (and b!1406710 (not res!636968)) b!1406700))

(assert (= (and b!1406700 (not res!636970)) b!1406697))

(assert (= (or b!1406698 b!1406696 b!1406710) bm!93711))

(declare-fun m!1584307 () Bool)

(assert (=> bm!93711 m!1584307))

(declare-fun m!1584309 () Bool)

(assert (=> b!1406699 m!1584309))

(assert (=> b!1406699 m!1584309))

(declare-fun m!1584311 () Bool)

(assert (=> b!1406699 m!1584311))

(declare-fun m!1584313 () Bool)

(assert (=> b!1406699 m!1584313))

(assert (=> b!1406699 m!1584311))

(assert (=> b!1406699 m!1584313))

(declare-fun m!1584315 () Bool)

(assert (=> b!1406699 m!1584315))

(assert (=> b!1406703 m!1584309))

(assert (=> d!401650 m!1584307))

(declare-fun m!1584317 () Bool)

(assert (=> d!401650 m!1584317))

(declare-fun m!1584319 () Bool)

(assert (=> b!1406701 m!1584319))

(assert (=> b!1406697 m!1584309))

(assert (=> b!1406707 m!1584313))

(assert (=> b!1406707 m!1584313))

(declare-fun m!1584321 () Bool)

(assert (=> b!1406707 m!1584321))

(assert (=> b!1406700 m!1584313))

(assert (=> b!1406700 m!1584313))

(assert (=> b!1406700 m!1584321))

(assert (=> b!1406605 d!401650))

(declare-fun b!1406729 () Bool)

(declare-fun e!898044 () List!14393)

(declare-fun call!93725 () List!14393)

(assert (=> b!1406729 (= e!898044 call!93725)))

(declare-fun b!1406730 () Bool)

(declare-fun e!898045 () List!14393)

(declare-fun call!93727 () List!14393)

(assert (=> b!1406730 (= e!898045 call!93727)))

(declare-fun b!1406731 () Bool)

(declare-fun c!231260 () Bool)

(assert (=> b!1406731 (= c!231260 ((_ is Star!3797) (regex!2483 lt!469511)))))

(declare-fun e!898043 () List!14393)

(assert (=> b!1406731 (= e!898043 e!898044)))

(declare-fun bm!93720 () Bool)

(declare-fun call!93728 () List!14393)

(declare-fun c!231262 () Bool)

(assert (=> bm!93720 (= call!93728 (usedCharacters!294 (ite c!231262 (regOne!8107 (regex!2483 lt!469511)) (regTwo!8106 (regex!2483 lt!469511)))))))

(declare-fun b!1406732 () Bool)

(declare-fun e!898046 () List!14393)

(assert (=> b!1406732 (= e!898046 Nil!14327)))

(declare-fun b!1406733 () Bool)

(assert (=> b!1406733 (= e!898044 e!898045)))

(assert (=> b!1406733 (= c!231262 ((_ is Union!3797) (regex!2483 lt!469511)))))

(declare-fun b!1406734 () Bool)

(assert (=> b!1406734 (= e!898045 call!93727)))

(declare-fun d!401656 () Bool)

(declare-fun c!231261 () Bool)

(assert (=> d!401656 (= c!231261 (or ((_ is EmptyExpr!3797) (regex!2483 lt!469511)) ((_ is EmptyLang!3797) (regex!2483 lt!469511))))))

(assert (=> d!401656 (= (usedCharacters!294 (regex!2483 lt!469511)) e!898046)))

(declare-fun bm!93721 () Bool)

(declare-fun call!93726 () List!14393)

(assert (=> bm!93721 (= call!93727 (++!3726 (ite c!231262 call!93728 call!93726) (ite c!231262 call!93726 call!93728)))))

(declare-fun bm!93722 () Bool)

(assert (=> bm!93722 (= call!93725 (usedCharacters!294 (ite c!231260 (reg!4126 (regex!2483 lt!469511)) (ite c!231262 (regTwo!8107 (regex!2483 lt!469511)) (regOne!8106 (regex!2483 lt!469511))))))))

(declare-fun b!1406735 () Bool)

(assert (=> b!1406735 (= e!898046 e!898043)))

(declare-fun c!231259 () Bool)

(assert (=> b!1406735 (= c!231259 ((_ is ElementMatch!3797) (regex!2483 lt!469511)))))

(declare-fun bm!93723 () Bool)

(assert (=> bm!93723 (= call!93726 call!93725)))

(declare-fun b!1406736 () Bool)

(assert (=> b!1406736 (= e!898043 (Cons!14327 (c!231229 (regex!2483 lt!469511)) Nil!14327))))

(assert (= (and d!401656 c!231261) b!1406732))

(assert (= (and d!401656 (not c!231261)) b!1406735))

(assert (= (and b!1406735 c!231259) b!1406736))

(assert (= (and b!1406735 (not c!231259)) b!1406731))

(assert (= (and b!1406731 c!231260) b!1406729))

(assert (= (and b!1406731 (not c!231260)) b!1406733))

(assert (= (and b!1406733 c!231262) b!1406734))

(assert (= (and b!1406733 (not c!231262)) b!1406730))

(assert (= (or b!1406734 b!1406730) bm!93720))

(assert (= (or b!1406734 b!1406730) bm!93723))

(assert (= (or b!1406734 b!1406730) bm!93721))

(assert (= (or b!1406729 bm!93723) bm!93722))

(declare-fun m!1584331 () Bool)

(assert (=> bm!93720 m!1584331))

(declare-fun m!1584333 () Bool)

(assert (=> bm!93721 m!1584333))

(declare-fun m!1584335 () Bool)

(assert (=> bm!93722 m!1584335))

(assert (=> b!1406605 d!401656))

(declare-fun d!401664 () Bool)

(assert (=> d!401664 (not (matchR!1788 lt!469493 lt!469500))))

(declare-fun lt!469552 () Unit!20693)

(declare-fun choose!8694 (Regex!3797 List!14393 C!7884) Unit!20693)

(assert (=> d!401664 (= lt!469552 (choose!8694 lt!469493 lt!469500 lt!469489))))

(assert (=> d!401664 (validRegex!1665 lt!469493)))

(assert (=> d!401664 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!228 lt!469493 lt!469500 lt!469489) lt!469552)))

(declare-fun bs!338544 () Bool)

(assert (= bs!338544 d!401664))

(assert (=> bs!338544 m!1584203))

(declare-fun m!1584337 () Bool)

(assert (=> bs!338544 m!1584337))

(assert (=> bs!338544 m!1584317))

(assert (=> b!1406605 d!401664))

(declare-fun d!401666 () Bool)

(declare-fun lt!469555 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2131 (List!14393) (InoxSet C!7884))

(assert (=> d!401666 (= lt!469555 (select (content!2131 (usedCharacters!294 (regex!2483 lt!469511))) lt!469489))))

(declare-fun e!898052 () Bool)

(assert (=> d!401666 (= lt!469555 e!898052)))

(declare-fun res!636981 () Bool)

(assert (=> d!401666 (=> (not res!636981) (not e!898052))))

(assert (=> d!401666 (= res!636981 ((_ is Cons!14327) (usedCharacters!294 (regex!2483 lt!469511))))))

(assert (=> d!401666 (= (contains!2832 (usedCharacters!294 (regex!2483 lt!469511)) lt!469489) lt!469555)))

(declare-fun b!1406741 () Bool)

(declare-fun e!898051 () Bool)

(assert (=> b!1406741 (= e!898052 e!898051)))

(declare-fun res!636982 () Bool)

(assert (=> b!1406741 (=> res!636982 e!898051)))

(assert (=> b!1406741 (= res!636982 (= (h!19728 (usedCharacters!294 (regex!2483 lt!469511))) lt!469489))))

(declare-fun b!1406742 () Bool)

(assert (=> b!1406742 (= e!898051 (contains!2832 (t!123062 (usedCharacters!294 (regex!2483 lt!469511))) lt!469489))))

(assert (= (and d!401666 res!636981) b!1406741))

(assert (= (and b!1406741 (not res!636982)) b!1406742))

(assert (=> d!401666 m!1584195))

(declare-fun m!1584339 () Bool)

(assert (=> d!401666 m!1584339))

(declare-fun m!1584341 () Bool)

(assert (=> d!401666 m!1584341))

(declare-fun m!1584343 () Bool)

(assert (=> b!1406742 m!1584343))

(assert (=> b!1406605 d!401666))

(declare-fun d!401668 () Bool)

(declare-fun res!636985 () Bool)

(declare-fun e!898055 () Bool)

(assert (=> d!401668 (=> (not res!636985) (not e!898055))))

(declare-fun rulesValid!934 (LexerInterface!2178 List!14394) Bool)

(assert (=> d!401668 (= res!636985 (rulesValid!934 thiss!19762 rules!2550))))

(assert (=> d!401668 (= (rulesInvariant!2048 thiss!19762 rules!2550) e!898055)))

(declare-fun b!1406745 () Bool)

(declare-datatypes ((List!14397 0))(
  ( (Nil!14331) (Cons!14331 (h!19732 String!17101) (t!123102 List!14397)) )
))
(declare-fun noDuplicateTag!934 (LexerInterface!2178 List!14394 List!14397) Bool)

(assert (=> b!1406745 (= e!898055 (noDuplicateTag!934 thiss!19762 rules!2550 Nil!14331))))

(assert (= (and d!401668 res!636985) b!1406745))

(declare-fun m!1584345 () Bool)

(assert (=> d!401668 m!1584345))

(declare-fun m!1584347 () Bool)

(assert (=> b!1406745 m!1584347))

(assert (=> b!1406584 d!401668))

(declare-fun d!401670 () Bool)

(assert (=> d!401670 (= (inv!18622 (tag!2745 (rule!4246 t2!34))) (= (mod (str.len (value!80397 (tag!2745 (rule!4246 t2!34)))) 2) 0))))

(assert (=> b!1406583 d!401670))

(declare-fun d!401672 () Bool)

(declare-fun res!636990 () Bool)

(declare-fun e!898064 () Bool)

(assert (=> d!401672 (=> (not res!636990) (not e!898064))))

(declare-fun semiInverseModEq!966 (Int Int) Bool)

(assert (=> d!401672 (= res!636990 (semiInverseModEq!966 (toChars!3633 (transformation!2483 (rule!4246 t2!34))) (toValue!3774 (transformation!2483 (rule!4246 t2!34)))))))

(assert (=> d!401672 (= (inv!18626 (transformation!2483 (rule!4246 t2!34))) e!898064)))

(declare-fun b!1406758 () Bool)

(declare-fun equivClasses!925 (Int Int) Bool)

(assert (=> b!1406758 (= e!898064 (equivClasses!925 (toChars!3633 (transformation!2483 (rule!4246 t2!34))) (toValue!3774 (transformation!2483 (rule!4246 t2!34)))))))

(assert (= (and d!401672 res!636990) b!1406758))

(declare-fun m!1584349 () Bool)

(assert (=> d!401672 m!1584349))

(declare-fun m!1584351 () Bool)

(assert (=> b!1406758 m!1584351))

(assert (=> b!1406583 d!401672))

(declare-fun b!1406800 () Bool)

(declare-fun e!898080 () Bool)

(declare-fun lt!469585 () Option!2746)

(declare-fun get!4418 (Option!2746) tuple2!13958)

(assert (=> b!1406800 (= e!898080 (contains!2831 rules!2550 (rule!4246 (_1!7865 (get!4418 lt!469585)))))))

(declare-fun b!1406801 () Bool)

(declare-fun e!898082 () Bool)

(assert (=> b!1406801 (= e!898082 e!898080)))

(declare-fun res!637024 () Bool)

(assert (=> b!1406801 (=> (not res!637024) (not e!898080))))

(declare-fun isDefined!2251 (Option!2746) Bool)

(assert (=> b!1406801 (= res!637024 (isDefined!2251 lt!469585))))

(declare-fun b!1406802 () Bool)

(declare-fun res!637023 () Bool)

(assert (=> b!1406802 (=> (not res!637023) (not e!898080))))

(declare-fun apply!3672 (TokenValueInjection!4806 BalanceConc!9392) TokenValue!2573)

(declare-fun seqFromList!1667 (List!14393) BalanceConc!9392)

(assert (=> b!1406802 (= res!637023 (= (value!80398 (_1!7865 (get!4418 lt!469585))) (apply!3672 (transformation!2483 (rule!4246 (_1!7865 (get!4418 lt!469585)))) (seqFromList!1667 (originalCharacters!3345 (_1!7865 (get!4418 lt!469585)))))))))

(declare-fun call!93733 () Option!2746)

(declare-fun bm!93728 () Bool)

(declare-fun maxPrefixOneRule!649 (LexerInterface!2178 Rule!4766 List!14393) Option!2746)

(assert (=> bm!93728 (= call!93733 (maxPrefixOneRule!649 thiss!19762 (h!19729 rules!2550) lt!469494))))

(declare-fun b!1406803 () Bool)

(declare-fun res!637026 () Bool)

(assert (=> b!1406803 (=> (not res!637026) (not e!898080))))

(assert (=> b!1406803 (= res!637026 (matchR!1788 (regex!2483 (rule!4246 (_1!7865 (get!4418 lt!469585)))) (list!5597 (charsOf!1455 (_1!7865 (get!4418 lt!469585))))))))

(declare-fun b!1406804 () Bool)

(declare-fun e!898081 () Option!2746)

(declare-fun lt!469586 () Option!2746)

(declare-fun lt!469588 () Option!2746)

(assert (=> b!1406804 (= e!898081 (ite (and ((_ is None!2745) lt!469586) ((_ is None!2745) lt!469588)) None!2745 (ite ((_ is None!2745) lt!469588) lt!469586 (ite ((_ is None!2745) lt!469586) lt!469588 (ite (>= (size!11785 (_1!7865 (v!21705 lt!469586))) (size!11785 (_1!7865 (v!21705 lt!469588)))) lt!469586 lt!469588)))))))

(assert (=> b!1406804 (= lt!469586 call!93733)))

(assert (=> b!1406804 (= lt!469588 (maxPrefix!1152 thiss!19762 (t!123063 rules!2550) lt!469494))))

(declare-fun b!1406806 () Bool)

(declare-fun res!637020 () Bool)

(assert (=> b!1406806 (=> (not res!637020) (not e!898080))))

(declare-fun size!11790 (List!14393) Int)

(assert (=> b!1406806 (= res!637020 (< (size!11790 (_2!7865 (get!4418 lt!469585))) (size!11790 lt!469494)))))

(declare-fun b!1406807 () Bool)

(declare-fun res!637022 () Bool)

(assert (=> b!1406807 (=> (not res!637022) (not e!898080))))

(assert (=> b!1406807 (= res!637022 (= (++!3726 (list!5597 (charsOf!1455 (_1!7865 (get!4418 lt!469585)))) (_2!7865 (get!4418 lt!469585))) lt!469494))))

(declare-fun b!1406808 () Bool)

(declare-fun res!637025 () Bool)

(assert (=> b!1406808 (=> (not res!637025) (not e!898080))))

(assert (=> b!1406808 (= res!637025 (= (list!5597 (charsOf!1455 (_1!7865 (get!4418 lt!469585)))) (originalCharacters!3345 (_1!7865 (get!4418 lt!469585)))))))

(declare-fun b!1406805 () Bool)

(assert (=> b!1406805 (= e!898081 call!93733)))

(declare-fun d!401674 () Bool)

(assert (=> d!401674 e!898082))

(declare-fun res!637021 () Bool)

(assert (=> d!401674 (=> res!637021 e!898082)))

(declare-fun isEmpty!8728 (Option!2746) Bool)

(assert (=> d!401674 (= res!637021 (isEmpty!8728 lt!469585))))

(assert (=> d!401674 (= lt!469585 e!898081)))

(declare-fun c!231274 () Bool)

(assert (=> d!401674 (= c!231274 (and ((_ is Cons!14328) rules!2550) ((_ is Nil!14328) (t!123063 rules!2550))))))

(declare-fun lt!469587 () Unit!20693)

(declare-fun lt!469589 () Unit!20693)

(assert (=> d!401674 (= lt!469587 lt!469589)))

(declare-fun isPrefix!1164 (List!14393 List!14393) Bool)

(assert (=> d!401674 (isPrefix!1164 lt!469494 lt!469494)))

(declare-fun lemmaIsPrefixRefl!823 (List!14393 List!14393) Unit!20693)

(assert (=> d!401674 (= lt!469589 (lemmaIsPrefixRefl!823 lt!469494 lt!469494))))

(declare-fun rulesValidInductive!806 (LexerInterface!2178 List!14394) Bool)

(assert (=> d!401674 (rulesValidInductive!806 thiss!19762 rules!2550)))

(assert (=> d!401674 (= (maxPrefix!1152 thiss!19762 rules!2550 lt!469494) lt!469585)))

(assert (= (and d!401674 c!231274) b!1406805))

(assert (= (and d!401674 (not c!231274)) b!1406804))

(assert (= (or b!1406805 b!1406804) bm!93728))

(assert (= (and d!401674 (not res!637021)) b!1406801))

(assert (= (and b!1406801 res!637024) b!1406808))

(assert (= (and b!1406808 res!637025) b!1406806))

(assert (= (and b!1406806 res!637020) b!1406807))

(assert (= (and b!1406807 res!637022) b!1406802))

(assert (= (and b!1406802 res!637023) b!1406803))

(assert (= (and b!1406803 res!637026) b!1406800))

(declare-fun m!1584367 () Bool)

(assert (=> b!1406808 m!1584367))

(declare-fun m!1584369 () Bool)

(assert (=> b!1406808 m!1584369))

(assert (=> b!1406808 m!1584369))

(declare-fun m!1584371 () Bool)

(assert (=> b!1406808 m!1584371))

(declare-fun m!1584373 () Bool)

(assert (=> b!1406804 m!1584373))

(assert (=> b!1406802 m!1584367))

(declare-fun m!1584375 () Bool)

(assert (=> b!1406802 m!1584375))

(assert (=> b!1406802 m!1584375))

(declare-fun m!1584377 () Bool)

(assert (=> b!1406802 m!1584377))

(assert (=> b!1406807 m!1584367))

(assert (=> b!1406807 m!1584369))

(assert (=> b!1406807 m!1584369))

(assert (=> b!1406807 m!1584371))

(assert (=> b!1406807 m!1584371))

(declare-fun m!1584379 () Bool)

(assert (=> b!1406807 m!1584379))

(declare-fun m!1584381 () Bool)

(assert (=> d!401674 m!1584381))

(declare-fun m!1584383 () Bool)

(assert (=> d!401674 m!1584383))

(declare-fun m!1584385 () Bool)

(assert (=> d!401674 m!1584385))

(declare-fun m!1584387 () Bool)

(assert (=> d!401674 m!1584387))

(declare-fun m!1584389 () Bool)

(assert (=> bm!93728 m!1584389))

(declare-fun m!1584391 () Bool)

(assert (=> b!1406801 m!1584391))

(assert (=> b!1406800 m!1584367))

(declare-fun m!1584393 () Bool)

(assert (=> b!1406800 m!1584393))

(assert (=> b!1406806 m!1584367))

(declare-fun m!1584395 () Bool)

(assert (=> b!1406806 m!1584395))

(declare-fun m!1584397 () Bool)

(assert (=> b!1406806 m!1584397))

(assert (=> b!1406803 m!1584367))

(assert (=> b!1406803 m!1584369))

(assert (=> b!1406803 m!1584369))

(assert (=> b!1406803 m!1584371))

(assert (=> b!1406803 m!1584371))

(declare-fun m!1584399 () Bool)

(assert (=> b!1406803 m!1584399))

(assert (=> b!1406562 d!401674))

(declare-fun d!401680 () Bool)

(declare-fun list!5601 (Conc!4726) List!14393)

(assert (=> d!401680 (= (list!5597 lt!469506) (list!5601 (c!231228 lt!469506)))))

(declare-fun bs!338546 () Bool)

(assert (= bs!338546 d!401680))

(declare-fun m!1584401 () Bool)

(assert (=> bs!338546 m!1584401))

(assert (=> b!1406562 d!401680))

(declare-fun d!401682 () Bool)

(declare-fun lt!469597 () Bool)

(declare-fun content!2132 (List!14394) (InoxSet Rule!4766))

(assert (=> d!401682 (= lt!469597 (select (content!2132 rules!2550) (rule!4246 t2!34)))))

(declare-fun e!898091 () Bool)

(assert (=> d!401682 (= lt!469597 e!898091)))

(declare-fun res!637039 () Bool)

(assert (=> d!401682 (=> (not res!637039) (not e!898091))))

(assert (=> d!401682 (= res!637039 ((_ is Cons!14328) rules!2550))))

(assert (=> d!401682 (= (contains!2831 rules!2550 (rule!4246 t2!34)) lt!469597)))

(declare-fun b!1406822 () Bool)

(declare-fun e!898090 () Bool)

(assert (=> b!1406822 (= e!898091 e!898090)))

(declare-fun res!637038 () Bool)

(assert (=> b!1406822 (=> res!637038 e!898090)))

(assert (=> b!1406822 (= res!637038 (= (h!19729 rules!2550) (rule!4246 t2!34)))))

(declare-fun b!1406823 () Bool)

(assert (=> b!1406823 (= e!898090 (contains!2831 (t!123063 rules!2550) (rule!4246 t2!34)))))

(assert (= (and d!401682 res!637039) b!1406822))

(assert (= (and b!1406822 (not res!637038)) b!1406823))

(declare-fun m!1584439 () Bool)

(assert (=> d!401682 m!1584439))

(declare-fun m!1584441 () Bool)

(assert (=> d!401682 m!1584441))

(declare-fun m!1584443 () Bool)

(assert (=> b!1406823 m!1584443))

(assert (=> b!1406561 d!401682))

(declare-fun d!401688 () Bool)

(declare-fun lt!469600 () List!14396)

(declare-fun size!11791 (List!14396) Int)

(declare-fun size!11792 (List!14394) Int)

(assert (=> d!401688 (= (size!11791 lt!469600) (size!11792 rules!2550))))

(declare-fun e!898094 () List!14396)

(assert (=> d!401688 (= lt!469600 e!898094)))

(declare-fun c!231278 () Bool)

(assert (=> d!401688 (= c!231278 ((_ is Nil!14328) rules!2550))))

(assert (=> d!401688 (= (map!3185 rules!2550 lambda!62138) lt!469600)))

(declare-fun b!1406828 () Bool)

(assert (=> b!1406828 (= e!898094 Nil!14330)))

(declare-fun b!1406829 () Bool)

(declare-fun $colon$colon!238 (List!14396 Regex!3797) List!14396)

(declare-fun dynLambda!6635 (Int Rule!4766) Regex!3797)

(assert (=> b!1406829 (= e!898094 ($colon$colon!238 (map!3185 (t!123063 rules!2550) lambda!62138) (dynLambda!6635 lambda!62138 (h!19729 rules!2550))))))

(assert (= (and d!401688 c!231278) b!1406828))

(assert (= (and d!401688 (not c!231278)) b!1406829))

(declare-fun b_lambda!44335 () Bool)

(assert (=> (not b_lambda!44335) (not b!1406829)))

(declare-fun m!1584445 () Bool)

(assert (=> d!401688 m!1584445))

(declare-fun m!1584447 () Bool)

(assert (=> d!401688 m!1584447))

(declare-fun m!1584449 () Bool)

(assert (=> b!1406829 m!1584449))

(declare-fun m!1584451 () Bool)

(assert (=> b!1406829 m!1584451))

(assert (=> b!1406829 m!1584449))

(assert (=> b!1406829 m!1584451))

(declare-fun m!1584453 () Bool)

(assert (=> b!1406829 m!1584453))

(assert (=> b!1406604 d!401688))

(declare-fun bs!338548 () Bool)

(declare-fun d!401690 () Bool)

(assert (= bs!338548 (and d!401690 b!1406604)))

(declare-fun lambda!62144 () Int)

(assert (=> bs!338548 (not (= lambda!62144 lambda!62139))))

(assert (=> d!401690 true))

(declare-fun order!8751 () Int)

(declare-fun dynLambda!6636 (Int Int) Int)

(assert (=> d!401690 (< (dynLambda!6636 order!8751 lambda!62139) (dynLambda!6636 order!8751 lambda!62144))))

(declare-fun forall!3469 (List!14396 Int) Bool)

(assert (=> d!401690 (= (exists!611 lt!469501 lambda!62139) (not (forall!3469 lt!469501 lambda!62144)))))

(declare-fun bs!338549 () Bool)

(assert (= bs!338549 d!401690))

(declare-fun m!1584455 () Bool)

(assert (=> bs!338549 m!1584455))

(assert (=> b!1406604 d!401690))

(declare-fun bs!338550 () Bool)

(declare-fun d!401692 () Bool)

(assert (= bs!338550 (and d!401692 b!1406604)))

(declare-fun lambda!62145 () Int)

(assert (=> bs!338550 (not (= lambda!62145 lambda!62139))))

(declare-fun bs!338551 () Bool)

(assert (= bs!338551 (and d!401692 d!401690)))

(assert (=> bs!338551 (= lambda!62145 lambda!62144)))

(assert (=> d!401692 true))

(assert (=> d!401692 (< (dynLambda!6636 order!8751 lambda!62139) (dynLambda!6636 order!8751 lambda!62145))))

(assert (=> d!401692 (= (exists!611 (map!3185 rules!2550 lambda!62138) lambda!62139) (not (forall!3469 (map!3185 rules!2550 lambda!62138) lambda!62145)))))

(declare-fun bs!338552 () Bool)

(assert (= bs!338552 d!401692))

(assert (=> bs!338552 m!1584187))

(declare-fun m!1584457 () Bool)

(assert (=> bs!338552 m!1584457))

(assert (=> b!1406604 d!401692))

(declare-fun bs!338553 () Bool)

(declare-fun d!401694 () Bool)

(assert (= bs!338553 (and d!401694 b!1406604)))

(declare-fun lambda!62150 () Int)

(assert (=> bs!338553 (not (= lambda!62150 lambda!62139))))

(declare-fun bs!338554 () Bool)

(assert (= bs!338554 (and d!401694 d!401690)))

(assert (=> bs!338554 (not (= lambda!62150 lambda!62144))))

(declare-fun bs!338555 () Bool)

(assert (= bs!338555 (and d!401694 d!401692)))

(assert (=> bs!338555 (not (= lambda!62150 lambda!62145))))

(declare-fun lambda!62151 () Int)

(assert (=> bs!338553 (= lambda!62151 lambda!62139)))

(assert (=> bs!338554 (not (= lambda!62151 lambda!62144))))

(assert (=> bs!338555 (not (= lambda!62151 lambda!62145))))

(declare-fun bs!338556 () Bool)

(assert (= bs!338556 d!401694))

(assert (=> bs!338556 (not (= lambda!62151 lambda!62150))))

(assert (=> d!401694 true))

(assert (=> d!401694 (= (matchR!1788 lt!469505 lt!469500) (exists!611 lt!469501 lambda!62151))))

(declare-fun lt!469603 () Unit!20693)

(declare-fun choose!8696 (Regex!3797 List!14396 List!14393) Unit!20693)

(assert (=> d!401694 (= lt!469603 (choose!8696 lt!469505 lt!469501 lt!469500))))

(assert (=> d!401694 (forall!3469 lt!469501 lambda!62150)))

(assert (=> d!401694 (= (matchRGenUnionSpec!208 lt!469505 lt!469501 lt!469500) lt!469603)))

(assert (=> bs!338556 m!1584131))

(declare-fun m!1584459 () Bool)

(assert (=> bs!338556 m!1584459))

(declare-fun m!1584461 () Bool)

(assert (=> bs!338556 m!1584461))

(declare-fun m!1584463 () Bool)

(assert (=> bs!338556 m!1584463))

(assert (=> b!1406604 d!401694))

(declare-fun d!401696 () Bool)

(assert (=> d!401696 (not (matchR!1788 (regex!2483 (rule!4246 t2!34)) lt!469494))))

(declare-fun lt!469604 () Unit!20693)

(assert (=> d!401696 (= lt!469604 (choose!8694 (regex!2483 (rule!4246 t2!34)) lt!469494 (head!2621 lt!469494)))))

(assert (=> d!401696 (validRegex!1665 (regex!2483 (rule!4246 t2!34)))))

(assert (=> d!401696 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!228 (regex!2483 (rule!4246 t2!34)) lt!469494 (head!2621 lt!469494)) lt!469604)))

(declare-fun bs!338557 () Bool)

(assert (= bs!338557 d!401696))

(assert (=> bs!338557 m!1584121))

(assert (=> bs!338557 m!1584155))

(declare-fun m!1584465 () Bool)

(assert (=> bs!338557 m!1584465))

(declare-fun m!1584467 () Bool)

(assert (=> bs!338557 m!1584467))

(assert (=> b!1406603 d!401696))

(declare-fun d!401698 () Bool)

(assert (=> d!401698 (= (head!2621 lt!469494) (h!19728 lt!469494))))

(assert (=> b!1406603 d!401698))

(declare-fun d!401700 () Bool)

(declare-fun res!637046 () Bool)

(declare-fun e!898099 () Bool)

(assert (=> d!401700 (=> (not res!637046) (not e!898099))))

(assert (=> d!401700 (= res!637046 (not (isEmpty!8727 (originalCharacters!3345 t1!34))))))

(assert (=> d!401700 (= (inv!18625 t1!34) e!898099)))

(declare-fun b!1406838 () Bool)

(declare-fun res!637047 () Bool)

(assert (=> b!1406838 (=> (not res!637047) (not e!898099))))

(declare-fun dynLambda!6637 (Int TokenValue!2573) BalanceConc!9392)

(assert (=> b!1406838 (= res!637047 (= (originalCharacters!3345 t1!34) (list!5597 (dynLambda!6637 (toChars!3633 (transformation!2483 (rule!4246 t1!34))) (value!80398 t1!34)))))))

(declare-fun b!1406839 () Bool)

(assert (=> b!1406839 (= e!898099 (= (size!11785 t1!34) (size!11790 (originalCharacters!3345 t1!34))))))

(assert (= (and d!401700 res!637046) b!1406838))

(assert (= (and b!1406838 res!637047) b!1406839))

(declare-fun b_lambda!44337 () Bool)

(assert (=> (not b_lambda!44337) (not b!1406838)))

(declare-fun t!123068 () Bool)

(declare-fun tb!73177 () Bool)

(assert (=> (and b!1406582 (= (toChars!3633 (transformation!2483 (rule!4246 t2!34))) (toChars!3633 (transformation!2483 (rule!4246 t1!34)))) t!123068) tb!73177))

(declare-fun b!1406844 () Bool)

(declare-fun e!898102 () Bool)

(declare-fun tp!399571 () Bool)

(declare-fun inv!18627 (Conc!4726) Bool)

(assert (=> b!1406844 (= e!898102 (and (inv!18627 (c!231228 (dynLambda!6637 (toChars!3633 (transformation!2483 (rule!4246 t1!34))) (value!80398 t1!34)))) tp!399571))))

(declare-fun result!88990 () Bool)

(declare-fun inv!18628 (BalanceConc!9392) Bool)

(assert (=> tb!73177 (= result!88990 (and (inv!18628 (dynLambda!6637 (toChars!3633 (transformation!2483 (rule!4246 t1!34))) (value!80398 t1!34))) e!898102))))

(assert (= tb!73177 b!1406844))

(declare-fun m!1584469 () Bool)

(assert (=> b!1406844 m!1584469))

(declare-fun m!1584471 () Bool)

(assert (=> tb!73177 m!1584471))

(assert (=> b!1406838 t!123068))

(declare-fun b_and!94191 () Bool)

(assert (= b_and!94181 (and (=> t!123068 result!88990) b_and!94191)))

(declare-fun tb!73179 () Bool)

(declare-fun t!123070 () Bool)

(assert (=> (and b!1406576 (= (toChars!3633 (transformation!2483 (h!19729 rules!2550))) (toChars!3633 (transformation!2483 (rule!4246 t1!34)))) t!123070) tb!73179))

(declare-fun result!88994 () Bool)

(assert (= result!88994 result!88990))

(assert (=> b!1406838 t!123070))

(declare-fun b_and!94193 () Bool)

(assert (= b_and!94185 (and (=> t!123070 result!88994) b_and!94193)))

(declare-fun t!123072 () Bool)

(declare-fun tb!73181 () Bool)

(assert (=> (and b!1406600 (= (toChars!3633 (transformation!2483 (rule!4246 t1!34))) (toChars!3633 (transformation!2483 (rule!4246 t1!34)))) t!123072) tb!73181))

(declare-fun result!88996 () Bool)

(assert (= result!88996 result!88990))

(assert (=> b!1406838 t!123072))

(declare-fun b_and!94195 () Bool)

(assert (= b_and!94189 (and (=> t!123072 result!88996) b_and!94195)))

(declare-fun m!1584473 () Bool)

(assert (=> d!401700 m!1584473))

(declare-fun m!1584475 () Bool)

(assert (=> b!1406838 m!1584475))

(assert (=> b!1406838 m!1584475))

(declare-fun m!1584477 () Bool)

(assert (=> b!1406838 m!1584477))

(declare-fun m!1584479 () Bool)

(assert (=> b!1406839 m!1584479))

(assert (=> start!128242 d!401700))

(declare-fun d!401702 () Bool)

(declare-fun res!637048 () Bool)

(declare-fun e!898103 () Bool)

(assert (=> d!401702 (=> (not res!637048) (not e!898103))))

(assert (=> d!401702 (= res!637048 (not (isEmpty!8727 (originalCharacters!3345 t2!34))))))

(assert (=> d!401702 (= (inv!18625 t2!34) e!898103)))

(declare-fun b!1406845 () Bool)

(declare-fun res!637049 () Bool)

(assert (=> b!1406845 (=> (not res!637049) (not e!898103))))

(assert (=> b!1406845 (= res!637049 (= (originalCharacters!3345 t2!34) (list!5597 (dynLambda!6637 (toChars!3633 (transformation!2483 (rule!4246 t2!34))) (value!80398 t2!34)))))))

(declare-fun b!1406846 () Bool)

(assert (=> b!1406846 (= e!898103 (= (size!11785 t2!34) (size!11790 (originalCharacters!3345 t2!34))))))

(assert (= (and d!401702 res!637048) b!1406845))

(assert (= (and b!1406845 res!637049) b!1406846))

(declare-fun b_lambda!44339 () Bool)

(assert (=> (not b_lambda!44339) (not b!1406845)))

(declare-fun t!123074 () Bool)

(declare-fun tb!73183 () Bool)

(assert (=> (and b!1406582 (= (toChars!3633 (transformation!2483 (rule!4246 t2!34))) (toChars!3633 (transformation!2483 (rule!4246 t2!34)))) t!123074) tb!73183))

(declare-fun b!1406847 () Bool)

(declare-fun e!898104 () Bool)

(declare-fun tp!399572 () Bool)

(assert (=> b!1406847 (= e!898104 (and (inv!18627 (c!231228 (dynLambda!6637 (toChars!3633 (transformation!2483 (rule!4246 t2!34))) (value!80398 t2!34)))) tp!399572))))

(declare-fun result!88998 () Bool)

(assert (=> tb!73183 (= result!88998 (and (inv!18628 (dynLambda!6637 (toChars!3633 (transformation!2483 (rule!4246 t2!34))) (value!80398 t2!34))) e!898104))))

(assert (= tb!73183 b!1406847))

(declare-fun m!1584481 () Bool)

(assert (=> b!1406847 m!1584481))

(declare-fun m!1584483 () Bool)

(assert (=> tb!73183 m!1584483))

(assert (=> b!1406845 t!123074))

(declare-fun b_and!94197 () Bool)

(assert (= b_and!94191 (and (=> t!123074 result!88998) b_and!94197)))

(declare-fun t!123076 () Bool)

(declare-fun tb!73185 () Bool)

(assert (=> (and b!1406576 (= (toChars!3633 (transformation!2483 (h!19729 rules!2550))) (toChars!3633 (transformation!2483 (rule!4246 t2!34)))) t!123076) tb!73185))

(declare-fun result!89000 () Bool)

(assert (= result!89000 result!88998))

(assert (=> b!1406845 t!123076))

(declare-fun b_and!94199 () Bool)

(assert (= b_and!94193 (and (=> t!123076 result!89000) b_and!94199)))

(declare-fun tb!73187 () Bool)

(declare-fun t!123078 () Bool)

(assert (=> (and b!1406600 (= (toChars!3633 (transformation!2483 (rule!4246 t1!34))) (toChars!3633 (transformation!2483 (rule!4246 t2!34)))) t!123078) tb!73187))

(declare-fun result!89002 () Bool)

(assert (= result!89002 result!88998))

(assert (=> b!1406845 t!123078))

(declare-fun b_and!94201 () Bool)

(assert (= b_and!94195 (and (=> t!123078 result!89002) b_and!94201)))

(declare-fun m!1584485 () Bool)

(assert (=> d!401702 m!1584485))

(declare-fun m!1584487 () Bool)

(assert (=> b!1406845 m!1584487))

(assert (=> b!1406845 m!1584487))

(declare-fun m!1584489 () Bool)

(assert (=> b!1406845 m!1584489))

(declare-fun m!1584491 () Bool)

(assert (=> b!1406846 m!1584491))

(assert (=> start!128242 d!401702))

(declare-fun d!401704 () Bool)

(declare-fun choose!8697 (Int) Bool)

(assert (=> d!401704 (= (Exists!947 lambda!62137) (choose!8697 lambda!62137))))

(declare-fun bs!338558 () Bool)

(assert (= bs!338558 d!401704))

(declare-fun m!1584493 () Bool)

(assert (=> bs!338558 m!1584493))

(assert (=> b!1406581 d!401704))

(declare-fun bs!338559 () Bool)

(declare-fun d!401706 () Bool)

(assert (= bs!338559 (and d!401706 b!1406581)))

(declare-fun lambda!62154 () Int)

(assert (=> bs!338559 (= lambda!62154 lambda!62137)))

(assert (=> d!401706 true))

(assert (=> d!401706 true))

(assert (=> d!401706 (Exists!947 lambda!62154)))

(declare-fun lt!469607 () Unit!20693)

(declare-fun choose!8698 (Regex!3797 List!14393) Unit!20693)

(assert (=> d!401706 (= lt!469607 (choose!8698 lt!469505 lt!469490))))

(assert (=> d!401706 (validRegex!1665 lt!469505)))

(assert (=> d!401706 (= (lemmaPrefixMatchThenExistsStringThatMatches!265 lt!469505 lt!469490) lt!469607)))

(declare-fun bs!338560 () Bool)

(assert (= bs!338560 d!401706))

(declare-fun m!1584495 () Bool)

(assert (=> bs!338560 m!1584495))

(declare-fun m!1584497 () Bool)

(assert (=> bs!338560 m!1584497))

(declare-fun m!1584499 () Bool)

(assert (=> bs!338560 m!1584499))

(assert (=> b!1406581 d!401706))

(declare-fun d!401708 () Bool)

(assert (=> d!401708 (not (matchR!1788 (regex!2483 (rule!4246 t1!34)) lt!469503))))

(declare-fun lt!469608 () Unit!20693)

(assert (=> d!401708 (= lt!469608 (choose!8694 (regex!2483 (rule!4246 t1!34)) lt!469503 (head!2621 lt!469503)))))

(assert (=> d!401708 (validRegex!1665 (regex!2483 (rule!4246 t1!34)))))

(assert (=> d!401708 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!228 (regex!2483 (rule!4246 t1!34)) lt!469503 (head!2621 lt!469503)) lt!469608)))

(declare-fun bs!338561 () Bool)

(assert (= bs!338561 d!401708))

(assert (=> bs!338561 m!1584161))

(assert (=> bs!338561 m!1584239))

(declare-fun m!1584501 () Bool)

(assert (=> bs!338561 m!1584501))

(declare-fun m!1584503 () Bool)

(assert (=> bs!338561 m!1584503))

(assert (=> b!1406602 d!401708))

(declare-fun d!401710 () Bool)

(assert (=> d!401710 (= (head!2621 lt!469503) (h!19728 lt!469503))))

(assert (=> b!1406602 d!401710))

(declare-fun d!401712 () Bool)

(declare-fun lt!469611 () Bool)

(assert (=> d!401712 (= lt!469611 (isEmpty!8727 (list!5597 (_2!7867 lt!469512))))))

(declare-fun isEmpty!8729 (Conc!4726) Bool)

(assert (=> d!401712 (= lt!469611 (isEmpty!8729 (c!231228 (_2!7867 lt!469512))))))

(assert (=> d!401712 (= (isEmpty!8720 (_2!7867 lt!469512)) lt!469611)))

(declare-fun bs!338562 () Bool)

(assert (= bs!338562 d!401712))

(declare-fun m!1584505 () Bool)

(assert (=> bs!338562 m!1584505))

(assert (=> bs!338562 m!1584505))

(declare-fun m!1584507 () Bool)

(assert (=> bs!338562 m!1584507))

(declare-fun m!1584509 () Bool)

(assert (=> bs!338562 m!1584509))

(assert (=> b!1406601 d!401712))

(declare-fun d!401714 () Bool)

(declare-fun lt!469612 () Bool)

(assert (=> d!401714 (= lt!469612 (isEmpty!8727 (list!5597 (_2!7867 lt!469516))))))

(assert (=> d!401714 (= lt!469612 (isEmpty!8729 (c!231228 (_2!7867 lt!469516))))))

(assert (=> d!401714 (= (isEmpty!8720 (_2!7867 lt!469516)) lt!469612)))

(declare-fun bs!338563 () Bool)

(assert (= bs!338563 d!401714))

(declare-fun m!1584511 () Bool)

(assert (=> bs!338563 m!1584511))

(assert (=> bs!338563 m!1584511))

(declare-fun m!1584513 () Bool)

(assert (=> bs!338563 m!1584513))

(declare-fun m!1584515 () Bool)

(assert (=> bs!338563 m!1584515))

(assert (=> b!1406580 d!401714))

(declare-fun b!1406860 () Bool)

(declare-fun e!898113 () Bool)

(declare-fun inv!16 (TokenValue!2573) Bool)

(assert (=> b!1406860 (= e!898113 (inv!16 (value!80398 t2!34)))))

(declare-fun b!1406861 () Bool)

(declare-fun e!898115 () Bool)

(assert (=> b!1406861 (= e!898113 e!898115)))

(declare-fun c!231283 () Bool)

(assert (=> b!1406861 (= c!231283 ((_ is IntegerValue!7720) (value!80398 t2!34)))))

(declare-fun d!401716 () Bool)

(declare-fun c!231284 () Bool)

(assert (=> d!401716 (= c!231284 ((_ is IntegerValue!7719) (value!80398 t2!34)))))

(assert (=> d!401716 (= (inv!21 (value!80398 t2!34)) e!898113)))

(declare-fun b!1406862 () Bool)

(declare-fun inv!17 (TokenValue!2573) Bool)

(assert (=> b!1406862 (= e!898115 (inv!17 (value!80398 t2!34)))))

(declare-fun b!1406863 () Bool)

(declare-fun res!637054 () Bool)

(declare-fun e!898114 () Bool)

(assert (=> b!1406863 (=> res!637054 e!898114)))

(assert (=> b!1406863 (= res!637054 (not ((_ is IntegerValue!7721) (value!80398 t2!34))))))

(assert (=> b!1406863 (= e!898115 e!898114)))

(declare-fun b!1406864 () Bool)

(declare-fun inv!15 (TokenValue!2573) Bool)

(assert (=> b!1406864 (= e!898114 (inv!15 (value!80398 t2!34)))))

(assert (= (and d!401716 c!231284) b!1406860))

(assert (= (and d!401716 (not c!231284)) b!1406861))

(assert (= (and b!1406861 c!231283) b!1406862))

(assert (= (and b!1406861 (not c!231283)) b!1406863))

(assert (= (and b!1406863 (not res!637054)) b!1406864))

(declare-fun m!1584517 () Bool)

(assert (=> b!1406860 m!1584517))

(declare-fun m!1584519 () Bool)

(assert (=> b!1406862 m!1584519))

(declare-fun m!1584521 () Bool)

(assert (=> b!1406864 m!1584521))

(assert (=> b!1406579 d!401716))

(declare-fun d!401718 () Bool)

(declare-fun lt!469643 () Bool)

(declare-fun e!898171 () Bool)

(assert (=> d!401718 (= lt!469643 e!898171)))

(declare-fun res!637108 () Bool)

(assert (=> d!401718 (=> (not res!637108) (not e!898171))))

(assert (=> d!401718 (= res!637108 (= (list!5598 (_1!7867 (lex!1003 thiss!19762 rules!2550 (print!942 thiss!19762 (singletonSeq!1150 t2!34))))) (list!5598 (singletonSeq!1150 t2!34))))))

(declare-fun e!898172 () Bool)

(assert (=> d!401718 (= lt!469643 e!898172)))

(declare-fun res!637109 () Bool)

(assert (=> d!401718 (=> (not res!637109) (not e!898172))))

(declare-fun lt!469644 () tuple2!13962)

(declare-fun size!11793 (BalanceConc!9394) Int)

(assert (=> d!401718 (= res!637109 (= (size!11793 (_1!7867 lt!469644)) 1))))

(assert (=> d!401718 (= lt!469644 (lex!1003 thiss!19762 rules!2550 (print!942 thiss!19762 (singletonSeq!1150 t2!34))))))

(assert (=> d!401718 (not (isEmpty!8721 rules!2550))))

(assert (=> d!401718 (= (rulesProduceIndividualToken!1147 thiss!19762 rules!2550 t2!34) lt!469643)))

(declare-fun b!1406966 () Bool)

(declare-fun res!637110 () Bool)

(assert (=> b!1406966 (=> (not res!637110) (not e!898172))))

(declare-fun apply!3673 (BalanceConc!9394 Int) Token!4628)

(assert (=> b!1406966 (= res!637110 (= (apply!3673 (_1!7867 lt!469644) 0) t2!34))))

(declare-fun b!1406967 () Bool)

(assert (=> b!1406967 (= e!898172 (isEmpty!8720 (_2!7867 lt!469644)))))

(declare-fun b!1406968 () Bool)

(assert (=> b!1406968 (= e!898171 (isEmpty!8720 (_2!7867 (lex!1003 thiss!19762 rules!2550 (print!942 thiss!19762 (singletonSeq!1150 t2!34))))))))

(assert (= (and d!401718 res!637109) b!1406966))

(assert (= (and b!1406966 res!637110) b!1406967))

(assert (= (and d!401718 res!637108) b!1406968))

(assert (=> d!401718 m!1584245))

(assert (=> d!401718 m!1584137))

(assert (=> d!401718 m!1584137))

(declare-fun m!1584627 () Bool)

(assert (=> d!401718 m!1584627))

(declare-fun m!1584629 () Bool)

(assert (=> d!401718 m!1584629))

(declare-fun m!1584631 () Bool)

(assert (=> d!401718 m!1584631))

(assert (=> d!401718 m!1584139))

(declare-fun m!1584633 () Bool)

(assert (=> d!401718 m!1584633))

(assert (=> d!401718 m!1584137))

(assert (=> d!401718 m!1584139))

(declare-fun m!1584635 () Bool)

(assert (=> b!1406966 m!1584635))

(declare-fun m!1584637 () Bool)

(assert (=> b!1406967 m!1584637))

(assert (=> b!1406968 m!1584137))

(assert (=> b!1406968 m!1584137))

(assert (=> b!1406968 m!1584139))

(assert (=> b!1406968 m!1584139))

(assert (=> b!1406968 m!1584633))

(declare-fun m!1584639 () Bool)

(assert (=> b!1406968 m!1584639))

(assert (=> b!1406599 d!401718))

(declare-fun d!401746 () Bool)

(declare-fun lt!469646 () Bool)

(assert (=> d!401746 (= lt!469646 (select (content!2131 (usedCharacters!294 (regex!2483 (rule!4246 t1!34)))) lt!469510))))

(declare-fun e!898181 () Bool)

(assert (=> d!401746 (= lt!469646 e!898181)))

(declare-fun res!637119 () Bool)

(assert (=> d!401746 (=> (not res!637119) (not e!898181))))

(assert (=> d!401746 (= res!637119 ((_ is Cons!14327) (usedCharacters!294 (regex!2483 (rule!4246 t1!34)))))))

(assert (=> d!401746 (= (contains!2832 (usedCharacters!294 (regex!2483 (rule!4246 t1!34))) lt!469510) lt!469646)))

(declare-fun b!1406983 () Bool)

(declare-fun e!898180 () Bool)

(assert (=> b!1406983 (= e!898181 e!898180)))

(declare-fun res!637120 () Bool)

(assert (=> b!1406983 (=> res!637120 e!898180)))

(assert (=> b!1406983 (= res!637120 (= (h!19728 (usedCharacters!294 (regex!2483 (rule!4246 t1!34)))) lt!469510))))

(declare-fun b!1406984 () Bool)

(assert (=> b!1406984 (= e!898180 (contains!2832 (t!123062 (usedCharacters!294 (regex!2483 (rule!4246 t1!34)))) lt!469510))))

(assert (= (and d!401746 res!637119) b!1406983))

(assert (= (and b!1406983 (not res!637120)) b!1406984))

(assert (=> d!401746 m!1584147))

(declare-fun m!1584645 () Bool)

(assert (=> d!401746 m!1584645))

(declare-fun m!1584649 () Bool)

(assert (=> d!401746 m!1584649))

(declare-fun m!1584651 () Bool)

(assert (=> b!1406984 m!1584651))

(assert (=> b!1406577 d!401746))

(declare-fun b!1406985 () Bool)

(declare-fun e!898183 () List!14393)

(declare-fun call!93752 () List!14393)

(assert (=> b!1406985 (= e!898183 call!93752)))

(declare-fun b!1406986 () Bool)

(declare-fun e!898184 () List!14393)

(declare-fun call!93754 () List!14393)

(assert (=> b!1406986 (= e!898184 call!93754)))

(declare-fun b!1406987 () Bool)

(declare-fun c!231314 () Bool)

(assert (=> b!1406987 (= c!231314 ((_ is Star!3797) (regex!2483 (rule!4246 t1!34))))))

(declare-fun e!898182 () List!14393)

(assert (=> b!1406987 (= e!898182 e!898183)))

(declare-fun bm!93747 () Bool)

(declare-fun call!93755 () List!14393)

(declare-fun c!231316 () Bool)

(assert (=> bm!93747 (= call!93755 (usedCharacters!294 (ite c!231316 (regOne!8107 (regex!2483 (rule!4246 t1!34))) (regTwo!8106 (regex!2483 (rule!4246 t1!34))))))))

(declare-fun b!1406988 () Bool)

(declare-fun e!898185 () List!14393)

(assert (=> b!1406988 (= e!898185 Nil!14327)))

(declare-fun b!1406989 () Bool)

(assert (=> b!1406989 (= e!898183 e!898184)))

(assert (=> b!1406989 (= c!231316 ((_ is Union!3797) (regex!2483 (rule!4246 t1!34))))))

(declare-fun b!1406990 () Bool)

(assert (=> b!1406990 (= e!898184 call!93754)))

(declare-fun d!401748 () Bool)

(declare-fun c!231315 () Bool)

(assert (=> d!401748 (= c!231315 (or ((_ is EmptyExpr!3797) (regex!2483 (rule!4246 t1!34))) ((_ is EmptyLang!3797) (regex!2483 (rule!4246 t1!34)))))))

(assert (=> d!401748 (= (usedCharacters!294 (regex!2483 (rule!4246 t1!34))) e!898185)))

(declare-fun call!93753 () List!14393)

(declare-fun bm!93748 () Bool)

(assert (=> bm!93748 (= call!93754 (++!3726 (ite c!231316 call!93755 call!93753) (ite c!231316 call!93753 call!93755)))))

(declare-fun bm!93749 () Bool)

(assert (=> bm!93749 (= call!93752 (usedCharacters!294 (ite c!231314 (reg!4126 (regex!2483 (rule!4246 t1!34))) (ite c!231316 (regTwo!8107 (regex!2483 (rule!4246 t1!34))) (regOne!8106 (regex!2483 (rule!4246 t1!34)))))))))

(declare-fun b!1406991 () Bool)

(assert (=> b!1406991 (= e!898185 e!898182)))

(declare-fun c!231313 () Bool)

(assert (=> b!1406991 (= c!231313 ((_ is ElementMatch!3797) (regex!2483 (rule!4246 t1!34))))))

(declare-fun bm!93750 () Bool)

(assert (=> bm!93750 (= call!93753 call!93752)))

(declare-fun b!1406992 () Bool)

(assert (=> b!1406992 (= e!898182 (Cons!14327 (c!231229 (regex!2483 (rule!4246 t1!34))) Nil!14327))))

(assert (= (and d!401748 c!231315) b!1406988))

(assert (= (and d!401748 (not c!231315)) b!1406991))

(assert (= (and b!1406991 c!231313) b!1406992))

(assert (= (and b!1406991 (not c!231313)) b!1406987))

(assert (= (and b!1406987 c!231314) b!1406985))

(assert (= (and b!1406987 (not c!231314)) b!1406989))

(assert (= (and b!1406989 c!231316) b!1406990))

(assert (= (and b!1406989 (not c!231316)) b!1406986))

(assert (= (or b!1406990 b!1406986) bm!93747))

(assert (= (or b!1406990 b!1406986) bm!93750))

(assert (= (or b!1406990 b!1406986) bm!93748))

(assert (= (or b!1406985 bm!93750) bm!93749))

(declare-fun m!1584659 () Bool)

(assert (=> bm!93747 m!1584659))

(declare-fun m!1584661 () Bool)

(assert (=> bm!93748 m!1584661))

(declare-fun m!1584663 () Bool)

(assert (=> bm!93749 m!1584663))

(assert (=> b!1406577 d!401748))

(declare-fun d!401752 () Bool)

(assert (=> d!401752 (= (inv!18622 (tag!2745 (rule!4246 t1!34))) (= (mod (str.len (value!80397 (tag!2745 (rule!4246 t1!34)))) 2) 0))))

(assert (=> b!1406597 d!401752))

(declare-fun d!401754 () Bool)

(declare-fun res!637121 () Bool)

(declare-fun e!898186 () Bool)

(assert (=> d!401754 (=> (not res!637121) (not e!898186))))

(assert (=> d!401754 (= res!637121 (semiInverseModEq!966 (toChars!3633 (transformation!2483 (rule!4246 t1!34))) (toValue!3774 (transformation!2483 (rule!4246 t1!34)))))))

(assert (=> d!401754 (= (inv!18626 (transformation!2483 (rule!4246 t1!34))) e!898186)))

(declare-fun b!1406993 () Bool)

(assert (=> b!1406993 (= e!898186 (equivClasses!925 (toChars!3633 (transformation!2483 (rule!4246 t1!34))) (toValue!3774 (transformation!2483 (rule!4246 t1!34)))))))

(assert (= (and d!401754 res!637121) b!1406993))

(declare-fun m!1584665 () Bool)

(assert (=> d!401754 m!1584665))

(declare-fun m!1584667 () Bool)

(assert (=> b!1406993 m!1584667))

(assert (=> b!1406597 d!401754))

(declare-fun b!1407040 () Bool)

(declare-fun e!898217 () tuple2!13960)

(assert (=> b!1407040 (= e!898217 (tuple2!13961 Nil!14329 (list!5597 lt!469498)))))

(declare-fun b!1407041 () Bool)

(declare-fun e!898218 () Bool)

(declare-fun lt!469669 () tuple2!13960)

(declare-fun isEmpty!8730 (List!14395) Bool)

(assert (=> b!1407041 (= e!898218 (not (isEmpty!8730 (_1!7866 lt!469669))))))

(declare-fun b!1407042 () Bool)

(declare-fun e!898216 () Bool)

(assert (=> b!1407042 (= e!898216 (= (_2!7866 lt!469669) (list!5597 lt!469498)))))

(declare-fun b!1407043 () Bool)

(declare-fun lt!469668 () Option!2746)

(declare-fun lt!469667 () tuple2!13960)

(assert (=> b!1407043 (= e!898217 (tuple2!13961 (Cons!14329 (_1!7865 (v!21705 lt!469668)) (_1!7866 lt!469667)) (_2!7866 lt!469667)))))

(assert (=> b!1407043 (= lt!469667 (lexList!692 thiss!19762 rules!2550 (_2!7865 (v!21705 lt!469668))))))

(declare-fun d!401756 () Bool)

(assert (=> d!401756 e!898216))

(declare-fun c!231332 () Bool)

(declare-fun size!11794 (List!14395) Int)

(assert (=> d!401756 (= c!231332 (> (size!11794 (_1!7866 lt!469669)) 0))))

(assert (=> d!401756 (= lt!469669 e!898217)))

(declare-fun c!231331 () Bool)

(assert (=> d!401756 (= c!231331 ((_ is Some!2745) lt!469668))))

(assert (=> d!401756 (= lt!469668 (maxPrefix!1152 thiss!19762 rules!2550 (list!5597 lt!469498)))))

(assert (=> d!401756 (= (lexList!692 thiss!19762 rules!2550 (list!5597 lt!469498)) lt!469669)))

(declare-fun b!1407044 () Bool)

(assert (=> b!1407044 (= e!898216 e!898218)))

(declare-fun res!637140 () Bool)

(assert (=> b!1407044 (= res!637140 (< (size!11790 (_2!7866 lt!469669)) (size!11790 (list!5597 lt!469498))))))

(assert (=> b!1407044 (=> (not res!637140) (not e!898218))))

(assert (= (and d!401756 c!231331) b!1407043))

(assert (= (and d!401756 (not c!231331)) b!1407040))

(assert (= (and d!401756 c!231332) b!1407044))

(assert (= (and d!401756 (not c!231332)) b!1407042))

(assert (= (and b!1407044 res!637140) b!1407041))

(declare-fun m!1584719 () Bool)

(assert (=> b!1407041 m!1584719))

(declare-fun m!1584723 () Bool)

(assert (=> b!1407043 m!1584723))

(declare-fun m!1584725 () Bool)

(assert (=> d!401756 m!1584725))

(assert (=> d!401756 m!1584219))

(declare-fun m!1584727 () Bool)

(assert (=> d!401756 m!1584727))

(declare-fun m!1584729 () Bool)

(assert (=> b!1407044 m!1584729))

(assert (=> b!1407044 m!1584219))

(declare-fun m!1584731 () Bool)

(assert (=> b!1407044 m!1584731))

(assert (=> b!1406575 d!401756))

(declare-fun d!401778 () Bool)

(assert (=> d!401778 (= (list!5597 lt!469498) (list!5601 (c!231228 lt!469498)))))

(declare-fun bs!338571 () Bool)

(assert (= bs!338571 d!401778))

(declare-fun m!1584733 () Bool)

(assert (=> bs!338571 m!1584733))

(assert (=> b!1406575 d!401778))

(declare-fun d!401780 () Bool)

(declare-fun lt!469673 () Bool)

(assert (=> d!401780 (= lt!469673 (select (content!2132 rules!2550) (rule!4246 t1!34)))))

(declare-fun e!898222 () Bool)

(assert (=> d!401780 (= lt!469673 e!898222)))

(declare-fun res!637145 () Bool)

(assert (=> d!401780 (=> (not res!637145) (not e!898222))))

(assert (=> d!401780 (= res!637145 ((_ is Cons!14328) rules!2550))))

(assert (=> d!401780 (= (contains!2831 rules!2550 (rule!4246 t1!34)) lt!469673)))

(declare-fun b!1407048 () Bool)

(declare-fun e!898221 () Bool)

(assert (=> b!1407048 (= e!898222 e!898221)))

(declare-fun res!637144 () Bool)

(assert (=> b!1407048 (=> res!637144 e!898221)))

(assert (=> b!1407048 (= res!637144 (= (h!19729 rules!2550) (rule!4246 t1!34)))))

(declare-fun b!1407049 () Bool)

(assert (=> b!1407049 (= e!898221 (contains!2831 (t!123063 rules!2550) (rule!4246 t1!34)))))

(assert (= (and d!401780 res!637145) b!1407048))

(assert (= (and b!1407048 (not res!637144)) b!1407049))

(assert (=> d!401780 m!1584439))

(declare-fun m!1584735 () Bool)

(assert (=> d!401780 m!1584735))

(declare-fun m!1584737 () Bool)

(assert (=> b!1407049 m!1584737))

(assert (=> b!1406595 d!401780))

(declare-fun d!401782 () Bool)

(declare-fun lt!469674 () Bool)

(assert (=> d!401782 (= lt!469674 (select (content!2131 lt!469500) lt!469510))))

(declare-fun e!898224 () Bool)

(assert (=> d!401782 (= lt!469674 e!898224)))

(declare-fun res!637146 () Bool)

(assert (=> d!401782 (=> (not res!637146) (not e!898224))))

(assert (=> d!401782 (= res!637146 ((_ is Cons!14327) lt!469500))))

(assert (=> d!401782 (= (contains!2832 lt!469500 lt!469510) lt!469674)))

(declare-fun b!1407050 () Bool)

(declare-fun e!898223 () Bool)

(assert (=> b!1407050 (= e!898224 e!898223)))

(declare-fun res!637147 () Bool)

(assert (=> b!1407050 (=> res!637147 e!898223)))

(assert (=> b!1407050 (= res!637147 (= (h!19728 lt!469500) lt!469510))))

(declare-fun b!1407051 () Bool)

(assert (=> b!1407051 (= e!898223 (contains!2832 (t!123062 lt!469500) lt!469510))))

(assert (= (and d!401782 res!637146) b!1407050))

(assert (= (and b!1407050 (not res!637147)) b!1407051))

(declare-fun m!1584747 () Bool)

(assert (=> d!401782 m!1584747))

(declare-fun m!1584751 () Bool)

(assert (=> d!401782 m!1584751))

(declare-fun m!1584753 () Bool)

(assert (=> b!1407051 m!1584753))

(assert (=> b!1406574 d!401782))

(declare-fun b!1407079 () Bool)

(declare-fun e!898241 () Rule!4766)

(declare-fun e!898243 () Rule!4766)

(assert (=> b!1407079 (= e!898241 e!898243)))

(declare-fun c!231340 () Bool)

(assert (=> b!1407079 (= c!231340 ((_ is Cons!14328) rules!2550))))

(declare-fun b!1407080 () Bool)

(assert (=> b!1407080 (= e!898241 (h!19729 rules!2550))))

(declare-fun d!401784 () Bool)

(declare-fun e!898242 () Bool)

(assert (=> d!401784 e!898242))

(declare-fun res!637161 () Bool)

(assert (=> d!401784 (=> (not res!637161) (not e!898242))))

(declare-fun lt!469681 () Rule!4766)

(declare-fun dynLambda!6639 (Int Rule!4766) Bool)

(assert (=> d!401784 (= res!637161 (dynLambda!6639 lambda!62140 lt!469681))))

(assert (=> d!401784 (= lt!469681 e!898241)))

(declare-fun c!231341 () Bool)

(declare-fun e!898244 () Bool)

(assert (=> d!401784 (= c!231341 e!898244)))

(declare-fun res!637162 () Bool)

(assert (=> d!401784 (=> (not res!637162) (not e!898244))))

(assert (=> d!401784 (= res!637162 ((_ is Cons!14328) rules!2550))))

(assert (=> d!401784 (exists!610 rules!2550 lambda!62140)))

(assert (=> d!401784 (= (getWitness!498 rules!2550 lambda!62140) lt!469681)))

(declare-fun b!1407081 () Bool)

(assert (=> b!1407081 (= e!898244 (dynLambda!6639 lambda!62140 (h!19729 rules!2550)))))

(declare-fun b!1407082 () Bool)

(assert (=> b!1407082 (= e!898243 (getWitness!498 (t!123063 rules!2550) lambda!62140))))

(declare-fun b!1407083 () Bool)

(assert (=> b!1407083 (= e!898242 (contains!2831 rules!2550 lt!469681))))

(declare-fun b!1407084 () Bool)

(declare-fun lt!469680 () Unit!20693)

(declare-fun Unit!20700 () Unit!20693)

(assert (=> b!1407084 (= lt!469680 Unit!20700)))

(assert (=> b!1407084 false))

(declare-fun head!2623 (List!14394) Rule!4766)

(assert (=> b!1407084 (= e!898243 (head!2623 rules!2550))))

(assert (= (and d!401784 res!637162) b!1407081))

(assert (= (and d!401784 c!231341) b!1407080))

(assert (= (and d!401784 (not c!231341)) b!1407079))

(assert (= (and b!1407079 c!231340) b!1407082))

(assert (= (and b!1407079 (not c!231340)) b!1407084))

(assert (= (and d!401784 res!637161) b!1407083))

(declare-fun b_lambda!44349 () Bool)

(assert (=> (not b_lambda!44349) (not d!401784)))

(declare-fun b_lambda!44351 () Bool)

(assert (=> (not b_lambda!44351) (not b!1407081)))

(declare-fun m!1584775 () Bool)

(assert (=> b!1407083 m!1584775))

(declare-fun m!1584777 () Bool)

(assert (=> d!401784 m!1584777))

(assert (=> d!401784 m!1584085))

(declare-fun m!1584779 () Bool)

(assert (=> b!1407081 m!1584779))

(declare-fun m!1584781 () Bool)

(assert (=> b!1407082 m!1584781))

(declare-fun m!1584783 () Bool)

(assert (=> b!1407084 m!1584783))

(assert (=> b!1406573 d!401784))

(declare-fun d!401794 () Bool)

(declare-fun list!5602 (Conc!4727) List!14395)

(assert (=> d!401794 (= (list!5598 (_1!7867 lt!469512)) (list!5602 (c!231230 (_1!7867 lt!469512))))))

(declare-fun bs!338572 () Bool)

(assert (= bs!338572 d!401794))

(declare-fun m!1584785 () Bool)

(assert (=> bs!338572 m!1584785))

(assert (=> b!1406573 d!401794))

(declare-fun e!898317 () Bool)

(declare-fun lt!469719 () tuple2!13962)

(declare-fun b!1407204 () Bool)

(assert (=> b!1407204 (= e!898317 (= (list!5597 (_2!7867 lt!469719)) (_2!7866 (lexList!692 thiss!19762 rules!2550 (list!5597 lt!469492)))))))

(declare-fun b!1407205 () Bool)

(declare-fun e!898318 () Bool)

(declare-fun e!898319 () Bool)

(assert (=> b!1407205 (= e!898318 e!898319)))

(declare-fun res!637220 () Bool)

(assert (=> b!1407205 (= res!637220 (< (size!11786 (_2!7867 lt!469719)) (size!11786 lt!469492)))))

(assert (=> b!1407205 (=> (not res!637220) (not e!898319))))

(declare-fun b!1407206 () Bool)

(declare-fun res!637219 () Bool)

(assert (=> b!1407206 (=> (not res!637219) (not e!898317))))

(assert (=> b!1407206 (= res!637219 (= (list!5598 (_1!7867 lt!469719)) (_1!7866 (lexList!692 thiss!19762 rules!2550 (list!5597 lt!469492)))))))

(declare-fun d!401796 () Bool)

(assert (=> d!401796 e!898317))

(declare-fun res!637218 () Bool)

(assert (=> d!401796 (=> (not res!637218) (not e!898317))))

(assert (=> d!401796 (= res!637218 e!898318)))

(declare-fun c!231367 () Bool)

(assert (=> d!401796 (= c!231367 (> (size!11793 (_1!7867 lt!469719)) 0))))

(declare-fun lexTailRecV2!449 (LexerInterface!2178 List!14394 BalanceConc!9392 BalanceConc!9392 BalanceConc!9392 BalanceConc!9394) tuple2!13962)

(assert (=> d!401796 (= lt!469719 (lexTailRecV2!449 thiss!19762 rules!2550 lt!469492 (BalanceConc!9393 Empty!4726) lt!469492 (BalanceConc!9395 Empty!4727)))))

(assert (=> d!401796 (= (lex!1003 thiss!19762 rules!2550 lt!469492) lt!469719)))

(declare-fun b!1407207 () Bool)

(declare-fun isEmpty!8731 (BalanceConc!9394) Bool)

(assert (=> b!1407207 (= e!898319 (not (isEmpty!8731 (_1!7867 lt!469719))))))

(declare-fun b!1407208 () Bool)

(assert (=> b!1407208 (= e!898318 (= (_2!7867 lt!469719) lt!469492))))

(assert (= (and d!401796 c!231367) b!1407205))

(assert (= (and d!401796 (not c!231367)) b!1407208))

(assert (= (and b!1407205 res!637220) b!1407207))

(assert (= (and d!401796 res!637218) b!1407206))

(assert (= (and b!1407206 res!637219) b!1407204))

(declare-fun m!1584981 () Bool)

(assert (=> d!401796 m!1584981))

(declare-fun m!1584983 () Bool)

(assert (=> d!401796 m!1584983))

(declare-fun m!1584985 () Bool)

(assert (=> b!1407206 m!1584985))

(assert (=> b!1407206 m!1584089))

(assert (=> b!1407206 m!1584089))

(assert (=> b!1407206 m!1584091))

(declare-fun m!1584987 () Bool)

(assert (=> b!1407207 m!1584987))

(declare-fun m!1584989 () Bool)

(assert (=> b!1407204 m!1584989))

(assert (=> b!1407204 m!1584089))

(assert (=> b!1407204 m!1584089))

(assert (=> b!1407204 m!1584091))

(declare-fun m!1584993 () Bool)

(assert (=> b!1407205 m!1584993))

(declare-fun m!1584997 () Bool)

(assert (=> b!1407205 m!1584997))

(assert (=> b!1406573 d!401796))

(declare-fun d!401870 () Bool)

(declare-fun lt!469729 () BalanceConc!9392)

(declare-fun printList!644 (LexerInterface!2178 List!14395) List!14393)

(assert (=> d!401870 (= (list!5597 lt!469729) (printList!644 thiss!19762 (list!5598 (singletonSeq!1150 t1!34))))))

(declare-fun printTailRec!626 (LexerInterface!2178 BalanceConc!9394 Int BalanceConc!9392) BalanceConc!9392)

(assert (=> d!401870 (= lt!469729 (printTailRec!626 thiss!19762 (singletonSeq!1150 t1!34) 0 (BalanceConc!9393 Empty!4726)))))

(assert (=> d!401870 (= (print!942 thiss!19762 (singletonSeq!1150 t1!34)) lt!469729)))

(declare-fun bs!338598 () Bool)

(assert (= bs!338598 d!401870))

(declare-fun m!1585007 () Bool)

(assert (=> bs!338598 m!1585007))

(assert (=> bs!338598 m!1584103))

(declare-fun m!1585009 () Bool)

(assert (=> bs!338598 m!1585009))

(assert (=> bs!338598 m!1585009))

(declare-fun m!1585011 () Bool)

(assert (=> bs!338598 m!1585011))

(assert (=> bs!338598 m!1584103))

(declare-fun m!1585013 () Bool)

(assert (=> bs!338598 m!1585013))

(assert (=> b!1406573 d!401870))

(declare-fun d!401876 () Bool)

(declare-fun e!898355 () Bool)

(assert (=> d!401876 e!898355))

(declare-fun res!637235 () Bool)

(assert (=> d!401876 (=> (not res!637235) (not e!898355))))

(declare-fun lt!469734 () BalanceConc!9394)

(assert (=> d!401876 (= res!637235 (= (list!5598 lt!469734) (Cons!14329 t1!34 Nil!14329)))))

(declare-fun singleton!500 (Token!4628) BalanceConc!9394)

(assert (=> d!401876 (= lt!469734 (singleton!500 t1!34))))

(assert (=> d!401876 (= (singletonSeq!1150 t1!34) lt!469734)))

(declare-fun b!1407269 () Bool)

(declare-fun isBalanced!1394 (Conc!4727) Bool)

(assert (=> b!1407269 (= e!898355 (isBalanced!1394 (c!231230 lt!469734)))))

(assert (= (and d!401876 res!637235) b!1407269))

(declare-fun m!1585025 () Bool)

(assert (=> d!401876 m!1585025))

(declare-fun m!1585027 () Bool)

(assert (=> d!401876 m!1585027))

(declare-fun m!1585029 () Bool)

(assert (=> b!1407269 m!1585029))

(assert (=> b!1406573 d!401876))

(declare-fun d!401878 () Bool)

(declare-fun lt!469735 () Bool)

(assert (=> d!401878 (= lt!469735 (select (content!2131 lt!469500) lt!469489))))

(declare-fun e!898359 () Bool)

(assert (=> d!401878 (= lt!469735 e!898359)))

(declare-fun res!637236 () Bool)

(assert (=> d!401878 (=> (not res!637236) (not e!898359))))

(assert (=> d!401878 (= res!637236 ((_ is Cons!14327) lt!469500))))

(assert (=> d!401878 (= (contains!2832 lt!469500 lt!469489) lt!469735)))

(declare-fun b!1407272 () Bool)

(declare-fun e!898356 () Bool)

(assert (=> b!1407272 (= e!898359 e!898356)))

(declare-fun res!637237 () Bool)

(assert (=> b!1407272 (=> res!637237 e!898356)))

(assert (=> b!1407272 (= res!637237 (= (h!19728 lt!469500) lt!469489))))

(declare-fun b!1407273 () Bool)

(assert (=> b!1407273 (= e!898356 (contains!2832 (t!123062 lt!469500) lt!469489))))

(assert (= (and d!401878 res!637236) b!1407272))

(assert (= (and b!1407272 (not res!637237)) b!1407273))

(assert (=> d!401878 m!1584747))

(declare-fun m!1585031 () Bool)

(assert (=> d!401878 m!1585031))

(declare-fun m!1585033 () Bool)

(assert (=> b!1407273 m!1585033))

(assert (=> b!1406594 d!401878))

(declare-fun d!401880 () Bool)

(declare-fun lt!469736 () Bool)

(assert (=> d!401880 (= lt!469736 (select (content!2131 lt!469490) lt!469510))))

(declare-fun e!898361 () Bool)

(assert (=> d!401880 (= lt!469736 e!898361)))

(declare-fun res!637238 () Bool)

(assert (=> d!401880 (=> (not res!637238) (not e!898361))))

(assert (=> d!401880 (= res!637238 ((_ is Cons!14327) lt!469490))))

(assert (=> d!401880 (= (contains!2832 lt!469490 lt!469510) lt!469736)))

(declare-fun b!1407274 () Bool)

(declare-fun e!898360 () Bool)

(assert (=> b!1407274 (= e!898361 e!898360)))

(declare-fun res!637239 () Bool)

(assert (=> b!1407274 (=> res!637239 e!898360)))

(assert (=> b!1407274 (= res!637239 (= (h!19728 lt!469490) lt!469510))))

(declare-fun b!1407275 () Bool)

(assert (=> b!1407275 (= e!898360 (contains!2832 (t!123062 lt!469490) lt!469510))))

(assert (= (and d!401880 res!637238) b!1407274))

(assert (= (and b!1407274 (not res!637239)) b!1407275))

(declare-fun m!1585035 () Bool)

(assert (=> d!401880 m!1585035))

(declare-fun m!1585037 () Bool)

(assert (=> d!401880 m!1585037))

(declare-fun m!1585039 () Bool)

(assert (=> b!1407275 m!1585039))

(assert (=> b!1406593 d!401880))

(declare-fun d!401882 () Bool)

(declare-fun lt!469739 () C!7884)

(declare-fun apply!3674 (List!14393 Int) C!7884)

(assert (=> d!401882 (= lt!469739 (apply!3674 (list!5597 lt!469488) 0))))

(declare-fun apply!3675 (Conc!4726 Int) C!7884)

(assert (=> d!401882 (= lt!469739 (apply!3675 (c!231228 lt!469488) 0))))

(declare-fun e!898371 () Bool)

(assert (=> d!401882 e!898371))

(declare-fun res!637245 () Bool)

(assert (=> d!401882 (=> (not res!637245) (not e!898371))))

(assert (=> d!401882 (= res!637245 (<= 0 0))))

(assert (=> d!401882 (= (apply!3667 lt!469488 0) lt!469739)))

(declare-fun b!1407284 () Bool)

(assert (=> b!1407284 (= e!898371 (< 0 (size!11786 lt!469488)))))

(assert (= (and d!401882 res!637245) b!1407284))

(assert (=> d!401882 m!1584169))

(assert (=> d!401882 m!1584169))

(declare-fun m!1585063 () Bool)

(assert (=> d!401882 m!1585063))

(declare-fun m!1585065 () Bool)

(assert (=> d!401882 m!1585065))

(declare-fun m!1585067 () Bool)

(assert (=> b!1407284 m!1585067))

(assert (=> b!1406593 d!401882))

(declare-fun d!401902 () Bool)

(assert (=> d!401902 (= (inv!18622 (tag!2745 (h!19729 rules!2550))) (= (mod (str.len (value!80397 (tag!2745 (h!19729 rules!2550)))) 2) 0))))

(assert (=> b!1406571 d!401902))

(declare-fun d!401904 () Bool)

(declare-fun res!637246 () Bool)

(declare-fun e!898372 () Bool)

(assert (=> d!401904 (=> (not res!637246) (not e!898372))))

(assert (=> d!401904 (= res!637246 (semiInverseModEq!966 (toChars!3633 (transformation!2483 (h!19729 rules!2550))) (toValue!3774 (transformation!2483 (h!19729 rules!2550)))))))

(assert (=> d!401904 (= (inv!18626 (transformation!2483 (h!19729 rules!2550))) e!898372)))

(declare-fun b!1407285 () Bool)

(assert (=> b!1407285 (= e!898372 (equivClasses!925 (toChars!3633 (transformation!2483 (h!19729 rules!2550))) (toValue!3774 (transformation!2483 (h!19729 rules!2550)))))))

(assert (= (and d!401904 res!637246) b!1407285))

(declare-fun m!1585069 () Bool)

(assert (=> d!401904 m!1585069))

(declare-fun m!1585071 () Bool)

(assert (=> b!1407285 m!1585071))

(assert (=> b!1406571 d!401904))

(declare-fun bs!338608 () Bool)

(declare-fun d!401906 () Bool)

(assert (= bs!338608 (and d!401906 b!1406592)))

(declare-fun lambda!62179 () Int)

(assert (=> bs!338608 (not (= lambda!62179 lambda!62140))))

(declare-fun bs!338609 () Bool)

(assert (= bs!338609 (and d!401906 b!1406588)))

(assert (=> bs!338609 (not (= lambda!62179 lambda!62141))))

(assert (=> d!401906 true))

(declare-fun order!8759 () Int)

(declare-fun dynLambda!6642 (Int Int) Int)

(assert (=> d!401906 (< (dynLambda!6642 order!8759 lambda!62140) (dynLambda!6642 order!8759 lambda!62179))))

(declare-fun forall!3470 (List!14394 Int) Bool)

(assert (=> d!401906 (= (exists!610 rules!2550 lambda!62140) (not (forall!3470 rules!2550 lambda!62179)))))

(declare-fun bs!338610 () Bool)

(assert (= bs!338610 d!401906))

(declare-fun m!1585073 () Bool)

(assert (=> bs!338610 m!1585073))

(assert (=> b!1406592 d!401906))

(declare-fun bs!338611 () Bool)

(declare-fun d!401908 () Bool)

(assert (= bs!338611 (and d!401908 b!1406592)))

(declare-fun lambda!62182 () Int)

(assert (=> bs!338611 (not (= lambda!62182 lambda!62140))))

(declare-fun bs!338612 () Bool)

(assert (= bs!338612 (and d!401908 b!1406588)))

(assert (=> bs!338612 (not (= lambda!62182 lambda!62141))))

(declare-fun bs!338613 () Bool)

(assert (= bs!338613 (and d!401908 d!401906)))

(assert (=> bs!338613 (not (= lambda!62182 lambda!62179))))

(assert (=> d!401908 true))

(assert (=> d!401908 true))

(declare-fun order!8761 () Int)

(declare-fun dynLambda!6643 (Int Int) Int)

(assert (=> d!401908 (< (dynLambda!6643 order!8761 lambda!62138) (dynLambda!6642 order!8759 lambda!62182))))

(assert (=> d!401908 (exists!610 rules!2550 lambda!62182)))

(declare-fun lt!469742 () Unit!20693)

(declare-fun choose!8700 (List!14394 Int Regex!3797) Unit!20693)

(assert (=> d!401908 (= lt!469742 (choose!8700 rules!2550 lambda!62138 lt!469493))))

(assert (=> d!401908 (contains!2833 (map!3185 rules!2550 lambda!62138) lt!469493)))

(assert (=> d!401908 (= (lemmaMapContains!194 rules!2550 lambda!62138 lt!469493) lt!469742)))

(declare-fun bs!338614 () Bool)

(assert (= bs!338614 d!401908))

(declare-fun m!1585075 () Bool)

(assert (=> bs!338614 m!1585075))

(declare-fun m!1585077 () Bool)

(assert (=> bs!338614 m!1585077))

(assert (=> bs!338614 m!1584187))

(assert (=> bs!338614 m!1584187))

(assert (=> bs!338614 m!1584189))

(assert (=> b!1406592 d!401908))

(declare-fun d!401910 () Bool)

(declare-fun lt!469745 () Int)

(assert (=> d!401910 (= lt!469745 (size!11790 (list!5597 lt!469506)))))

(declare-fun size!11796 (Conc!4726) Int)

(assert (=> d!401910 (= lt!469745 (size!11796 (c!231228 lt!469506)))))

(assert (=> d!401910 (= (size!11786 lt!469506) lt!469745)))

(declare-fun bs!338615 () Bool)

(assert (= bs!338615 d!401910))

(assert (=> bs!338615 m!1584225))

(assert (=> bs!338615 m!1584225))

(declare-fun m!1585079 () Bool)

(assert (=> bs!338615 m!1585079))

(declare-fun m!1585081 () Bool)

(assert (=> bs!338615 m!1585081))

(assert (=> b!1406591 d!401910))

(declare-fun d!401912 () Bool)

(declare-fun lt!469748 () BalanceConc!9392)

(assert (=> d!401912 (= (list!5597 lt!469748) (originalCharacters!3345 t2!34))))

(assert (=> d!401912 (= lt!469748 (dynLambda!6637 (toChars!3633 (transformation!2483 (rule!4246 t2!34))) (value!80398 t2!34)))))

(assert (=> d!401912 (= (charsOf!1455 t2!34) lt!469748)))

(declare-fun b_lambda!44393 () Bool)

(assert (=> (not b_lambda!44393) (not d!401912)))

(assert (=> d!401912 t!123074))

(declare-fun b_and!94231 () Bool)

(assert (= b_and!94197 (and (=> t!123074 result!88998) b_and!94231)))

(assert (=> d!401912 t!123076))

(declare-fun b_and!94233 () Bool)

(assert (= b_and!94199 (and (=> t!123076 result!89000) b_and!94233)))

(assert (=> d!401912 t!123078))

(declare-fun b_and!94235 () Bool)

(assert (= b_and!94201 (and (=> t!123078 result!89002) b_and!94235)))

(declare-fun m!1585083 () Bool)

(assert (=> d!401912 m!1585083))

(assert (=> d!401912 m!1584487))

(assert (=> b!1406591 d!401912))

(declare-fun b!1407292 () Bool)

(declare-fun e!898373 () Bool)

(declare-fun lt!469749 () Option!2746)

(assert (=> b!1407292 (= e!898373 (contains!2831 rules!2550 (rule!4246 (_1!7865 (get!4418 lt!469749)))))))

(declare-fun b!1407293 () Bool)

(declare-fun e!898375 () Bool)

(assert (=> b!1407293 (= e!898375 e!898373)))

(declare-fun res!637251 () Bool)

(assert (=> b!1407293 (=> (not res!637251) (not e!898373))))

(assert (=> b!1407293 (= res!637251 (isDefined!2251 lt!469749))))

(declare-fun b!1407294 () Bool)

(declare-fun res!637250 () Bool)

(assert (=> b!1407294 (=> (not res!637250) (not e!898373))))

(assert (=> b!1407294 (= res!637250 (= (value!80398 (_1!7865 (get!4418 lt!469749))) (apply!3672 (transformation!2483 (rule!4246 (_1!7865 (get!4418 lt!469749)))) (seqFromList!1667 (originalCharacters!3345 (_1!7865 (get!4418 lt!469749)))))))))

(declare-fun call!93766 () Option!2746)

(declare-fun bm!93761 () Bool)

(assert (=> bm!93761 (= call!93766 (maxPrefixOneRule!649 thiss!19762 (h!19729 rules!2550) lt!469503))))

(declare-fun b!1407295 () Bool)

(declare-fun res!637253 () Bool)

(assert (=> b!1407295 (=> (not res!637253) (not e!898373))))

(assert (=> b!1407295 (= res!637253 (matchR!1788 (regex!2483 (rule!4246 (_1!7865 (get!4418 lt!469749)))) (list!5597 (charsOf!1455 (_1!7865 (get!4418 lt!469749))))))))

(declare-fun b!1407296 () Bool)

(declare-fun e!898374 () Option!2746)

(declare-fun lt!469750 () Option!2746)

(declare-fun lt!469752 () Option!2746)

(assert (=> b!1407296 (= e!898374 (ite (and ((_ is None!2745) lt!469750) ((_ is None!2745) lt!469752)) None!2745 (ite ((_ is None!2745) lt!469752) lt!469750 (ite ((_ is None!2745) lt!469750) lt!469752 (ite (>= (size!11785 (_1!7865 (v!21705 lt!469750))) (size!11785 (_1!7865 (v!21705 lt!469752)))) lt!469750 lt!469752)))))))

(assert (=> b!1407296 (= lt!469750 call!93766)))

(assert (=> b!1407296 (= lt!469752 (maxPrefix!1152 thiss!19762 (t!123063 rules!2550) lt!469503))))

(declare-fun b!1407298 () Bool)

(declare-fun res!637247 () Bool)

(assert (=> b!1407298 (=> (not res!637247) (not e!898373))))

(assert (=> b!1407298 (= res!637247 (< (size!11790 (_2!7865 (get!4418 lt!469749))) (size!11790 lt!469503)))))

(declare-fun b!1407299 () Bool)

(declare-fun res!637249 () Bool)

(assert (=> b!1407299 (=> (not res!637249) (not e!898373))))

(assert (=> b!1407299 (= res!637249 (= (++!3726 (list!5597 (charsOf!1455 (_1!7865 (get!4418 lt!469749)))) (_2!7865 (get!4418 lt!469749))) lt!469503))))

(declare-fun b!1407300 () Bool)

(declare-fun res!637252 () Bool)

(assert (=> b!1407300 (=> (not res!637252) (not e!898373))))

(assert (=> b!1407300 (= res!637252 (= (list!5597 (charsOf!1455 (_1!7865 (get!4418 lt!469749)))) (originalCharacters!3345 (_1!7865 (get!4418 lt!469749)))))))

(declare-fun b!1407297 () Bool)

(assert (=> b!1407297 (= e!898374 call!93766)))

(declare-fun d!401914 () Bool)

(assert (=> d!401914 e!898375))

(declare-fun res!637248 () Bool)

(assert (=> d!401914 (=> res!637248 e!898375)))

(assert (=> d!401914 (= res!637248 (isEmpty!8728 lt!469749))))

(assert (=> d!401914 (= lt!469749 e!898374)))

(declare-fun c!231374 () Bool)

(assert (=> d!401914 (= c!231374 (and ((_ is Cons!14328) rules!2550) ((_ is Nil!14328) (t!123063 rules!2550))))))

(declare-fun lt!469751 () Unit!20693)

(declare-fun lt!469753 () Unit!20693)

(assert (=> d!401914 (= lt!469751 lt!469753)))

(assert (=> d!401914 (isPrefix!1164 lt!469503 lt!469503)))

(assert (=> d!401914 (= lt!469753 (lemmaIsPrefixRefl!823 lt!469503 lt!469503))))

(assert (=> d!401914 (rulesValidInductive!806 thiss!19762 rules!2550)))

(assert (=> d!401914 (= (maxPrefix!1152 thiss!19762 rules!2550 lt!469503) lt!469749)))

(assert (= (and d!401914 c!231374) b!1407297))

(assert (= (and d!401914 (not c!231374)) b!1407296))

(assert (= (or b!1407297 b!1407296) bm!93761))

(assert (= (and d!401914 (not res!637248)) b!1407293))

(assert (= (and b!1407293 res!637251) b!1407300))

(assert (= (and b!1407300 res!637252) b!1407298))

(assert (= (and b!1407298 res!637247) b!1407299))

(assert (= (and b!1407299 res!637249) b!1407294))

(assert (= (and b!1407294 res!637250) b!1407295))

(assert (= (and b!1407295 res!637253) b!1407292))

(declare-fun m!1585085 () Bool)

(assert (=> b!1407300 m!1585085))

(declare-fun m!1585087 () Bool)

(assert (=> b!1407300 m!1585087))

(assert (=> b!1407300 m!1585087))

(declare-fun m!1585089 () Bool)

(assert (=> b!1407300 m!1585089))

(declare-fun m!1585091 () Bool)

(assert (=> b!1407296 m!1585091))

(assert (=> b!1407294 m!1585085))

(declare-fun m!1585093 () Bool)

(assert (=> b!1407294 m!1585093))

(assert (=> b!1407294 m!1585093))

(declare-fun m!1585095 () Bool)

(assert (=> b!1407294 m!1585095))

(assert (=> b!1407299 m!1585085))

(assert (=> b!1407299 m!1585087))

(assert (=> b!1407299 m!1585087))

(assert (=> b!1407299 m!1585089))

(assert (=> b!1407299 m!1585089))

(declare-fun m!1585097 () Bool)

(assert (=> b!1407299 m!1585097))

(declare-fun m!1585099 () Bool)

(assert (=> d!401914 m!1585099))

(declare-fun m!1585101 () Bool)

(assert (=> d!401914 m!1585101))

(declare-fun m!1585103 () Bool)

(assert (=> d!401914 m!1585103))

(assert (=> d!401914 m!1584387))

(declare-fun m!1585105 () Bool)

(assert (=> bm!93761 m!1585105))

(declare-fun m!1585107 () Bool)

(assert (=> b!1407293 m!1585107))

(assert (=> b!1407292 m!1585085))

(declare-fun m!1585109 () Bool)

(assert (=> b!1407292 m!1585109))

(assert (=> b!1407298 m!1585085))

(declare-fun m!1585111 () Bool)

(assert (=> b!1407298 m!1585111))

(declare-fun m!1585113 () Bool)

(assert (=> b!1407298 m!1585113))

(assert (=> b!1407295 m!1585085))

(assert (=> b!1407295 m!1585087))

(assert (=> b!1407295 m!1585087))

(assert (=> b!1407295 m!1585089))

(assert (=> b!1407295 m!1585089))

(declare-fun m!1585115 () Bool)

(assert (=> b!1407295 m!1585115))

(assert (=> b!1406570 d!401914))

(declare-fun d!401916 () Bool)

(assert (=> d!401916 (= (list!5598 (_1!7867 lt!469516)) (list!5602 (c!231230 (_1!7867 lt!469516))))))

(declare-fun bs!338616 () Bool)

(assert (= bs!338616 d!401916))

(declare-fun m!1585117 () Bool)

(assert (=> bs!338616 m!1585117))

(assert (=> b!1406569 d!401916))

(declare-fun b!1407301 () Bool)

(declare-fun e!898376 () Bool)

(declare-fun lt!469754 () tuple2!13962)

(assert (=> b!1407301 (= e!898376 (= (list!5597 (_2!7867 lt!469754)) (_2!7866 (lexList!692 thiss!19762 rules!2550 (list!5597 lt!469498)))))))

(declare-fun b!1407302 () Bool)

(declare-fun e!898377 () Bool)

(declare-fun e!898378 () Bool)

(assert (=> b!1407302 (= e!898377 e!898378)))

(declare-fun res!637256 () Bool)

(assert (=> b!1407302 (= res!637256 (< (size!11786 (_2!7867 lt!469754)) (size!11786 lt!469498)))))

(assert (=> b!1407302 (=> (not res!637256) (not e!898378))))

(declare-fun b!1407303 () Bool)

(declare-fun res!637255 () Bool)

(assert (=> b!1407303 (=> (not res!637255) (not e!898376))))

(assert (=> b!1407303 (= res!637255 (= (list!5598 (_1!7867 lt!469754)) (_1!7866 (lexList!692 thiss!19762 rules!2550 (list!5597 lt!469498)))))))

(declare-fun d!401918 () Bool)

(assert (=> d!401918 e!898376))

(declare-fun res!637254 () Bool)

(assert (=> d!401918 (=> (not res!637254) (not e!898376))))

(assert (=> d!401918 (= res!637254 e!898377)))

(declare-fun c!231375 () Bool)

(assert (=> d!401918 (= c!231375 (> (size!11793 (_1!7867 lt!469754)) 0))))

(assert (=> d!401918 (= lt!469754 (lexTailRecV2!449 thiss!19762 rules!2550 lt!469498 (BalanceConc!9393 Empty!4726) lt!469498 (BalanceConc!9395 Empty!4727)))))

(assert (=> d!401918 (= (lex!1003 thiss!19762 rules!2550 lt!469498) lt!469754)))

(declare-fun b!1407304 () Bool)

(assert (=> b!1407304 (= e!898378 (not (isEmpty!8731 (_1!7867 lt!469754))))))

(declare-fun b!1407305 () Bool)

(assert (=> b!1407305 (= e!898377 (= (_2!7867 lt!469754) lt!469498))))

(assert (= (and d!401918 c!231375) b!1407302))

(assert (= (and d!401918 (not c!231375)) b!1407305))

(assert (= (and b!1407302 res!637256) b!1407304))

(assert (= (and d!401918 res!637254) b!1407303))

(assert (= (and b!1407303 res!637255) b!1407301))

(declare-fun m!1585119 () Bool)

(assert (=> d!401918 m!1585119))

(declare-fun m!1585121 () Bool)

(assert (=> d!401918 m!1585121))

(declare-fun m!1585123 () Bool)

(assert (=> b!1407303 m!1585123))

(assert (=> b!1407303 m!1584219))

(assert (=> b!1407303 m!1584219))

(assert (=> b!1407303 m!1584221))

(declare-fun m!1585125 () Bool)

(assert (=> b!1407304 m!1585125))

(declare-fun m!1585127 () Bool)

(assert (=> b!1407301 m!1585127))

(assert (=> b!1407301 m!1584219))

(assert (=> b!1407301 m!1584219))

(assert (=> b!1407301 m!1584221))

(declare-fun m!1585129 () Bool)

(assert (=> b!1407302 m!1585129))

(declare-fun m!1585131 () Bool)

(assert (=> b!1407302 m!1585131))

(assert (=> b!1406569 d!401918))

(declare-fun d!401920 () Bool)

(declare-fun lt!469755 () BalanceConc!9392)

(assert (=> d!401920 (= (list!5597 lt!469755) (printList!644 thiss!19762 (list!5598 (singletonSeq!1150 t2!34))))))

(assert (=> d!401920 (= lt!469755 (printTailRec!626 thiss!19762 (singletonSeq!1150 t2!34) 0 (BalanceConc!9393 Empty!4726)))))

(assert (=> d!401920 (= (print!942 thiss!19762 (singletonSeq!1150 t2!34)) lt!469755)))

(declare-fun bs!338617 () Bool)

(assert (= bs!338617 d!401920))

(declare-fun m!1585133 () Bool)

(assert (=> bs!338617 m!1585133))

(assert (=> bs!338617 m!1584137))

(assert (=> bs!338617 m!1584627))

(assert (=> bs!338617 m!1584627))

(declare-fun m!1585135 () Bool)

(assert (=> bs!338617 m!1585135))

(assert (=> bs!338617 m!1584137))

(declare-fun m!1585137 () Bool)

(assert (=> bs!338617 m!1585137))

(assert (=> b!1406569 d!401920))

(declare-fun d!401922 () Bool)

(declare-fun e!898379 () Bool)

(assert (=> d!401922 e!898379))

(declare-fun res!637257 () Bool)

(assert (=> d!401922 (=> (not res!637257) (not e!898379))))

(declare-fun lt!469756 () BalanceConc!9394)

(assert (=> d!401922 (= res!637257 (= (list!5598 lt!469756) (Cons!14329 t2!34 Nil!14329)))))

(assert (=> d!401922 (= lt!469756 (singleton!500 t2!34))))

(assert (=> d!401922 (= (singletonSeq!1150 t2!34) lt!469756)))

(declare-fun b!1407306 () Bool)

(assert (=> b!1407306 (= e!898379 (isBalanced!1394 (c!231230 lt!469756)))))

(assert (= (and d!401922 res!637257) b!1407306))

(declare-fun m!1585139 () Bool)

(assert (=> d!401922 m!1585139))

(declare-fun m!1585141 () Bool)

(assert (=> d!401922 m!1585141))

(declare-fun m!1585143 () Bool)

(assert (=> b!1407306 m!1585143))

(assert (=> b!1406569 d!401922))

(declare-fun d!401924 () Bool)

(declare-fun lt!469759 () Bool)

(declare-fun content!2134 (List!14396) (InoxSet Regex!3797))

(assert (=> d!401924 (= lt!469759 (select (content!2134 (map!3185 rules!2550 lambda!62138)) lt!469493))))

(declare-fun e!898385 () Bool)

(assert (=> d!401924 (= lt!469759 e!898385)))

(declare-fun res!637263 () Bool)

(assert (=> d!401924 (=> (not res!637263) (not e!898385))))

(assert (=> d!401924 (= res!637263 ((_ is Cons!14330) (map!3185 rules!2550 lambda!62138)))))

(assert (=> d!401924 (= (contains!2833 (map!3185 rules!2550 lambda!62138) lt!469493) lt!469759)))

(declare-fun b!1407311 () Bool)

(declare-fun e!898384 () Bool)

(assert (=> b!1407311 (= e!898385 e!898384)))

(declare-fun res!637262 () Bool)

(assert (=> b!1407311 (=> res!637262 e!898384)))

(assert (=> b!1407311 (= res!637262 (= (h!19731 (map!3185 rules!2550 lambda!62138)) lt!469493))))

(declare-fun b!1407312 () Bool)

(assert (=> b!1407312 (= e!898384 (contains!2833 (t!123065 (map!3185 rules!2550 lambda!62138)) lt!469493))))

(assert (= (and d!401924 res!637263) b!1407311))

(assert (= (and b!1407311 (not res!637262)) b!1407312))

(assert (=> d!401924 m!1584187))

(declare-fun m!1585145 () Bool)

(assert (=> d!401924 m!1585145))

(declare-fun m!1585147 () Bool)

(assert (=> d!401924 m!1585147))

(declare-fun m!1585149 () Bool)

(assert (=> b!1407312 m!1585149))

(assert (=> b!1406590 d!401924))

(assert (=> b!1406590 d!401688))

(declare-fun b!1407325 () Bool)

(declare-fun lt!469764 () Unit!20693)

(declare-fun Unit!20701 () Unit!20693)

(assert (=> b!1407325 (= lt!469764 Unit!20701)))

(assert (=> b!1407325 false))

(declare-fun e!898396 () Regex!3797)

(declare-fun head!2624 (List!14396) Regex!3797)

(assert (=> b!1407325 (= e!898396 (head!2624 (map!3185 rules!2550 lambda!62138)))))

(declare-fun b!1407326 () Bool)

(declare-fun e!898397 () Bool)

(declare-fun dynLambda!6646 (Int Regex!3797) Bool)

(assert (=> b!1407326 (= e!898397 (dynLambda!6646 lambda!62139 (h!19731 (map!3185 rules!2550 lambda!62138))))))

(declare-fun e!898394 () Bool)

(declare-fun b!1407327 () Bool)

(declare-fun lt!469765 () Regex!3797)

(assert (=> b!1407327 (= e!898394 (contains!2833 (map!3185 rules!2550 lambda!62138) lt!469765))))

(declare-fun b!1407328 () Bool)

(declare-fun e!898395 () Regex!3797)

(assert (=> b!1407328 (= e!898395 (h!19731 (map!3185 rules!2550 lambda!62138)))))

(declare-fun d!401926 () Bool)

(assert (=> d!401926 e!898394))

(declare-fun res!637268 () Bool)

(assert (=> d!401926 (=> (not res!637268) (not e!898394))))

(assert (=> d!401926 (= res!637268 (dynLambda!6646 lambda!62139 lt!469765))))

(assert (=> d!401926 (= lt!469765 e!898395)))

(declare-fun c!231381 () Bool)

(assert (=> d!401926 (= c!231381 e!898397)))

(declare-fun res!637269 () Bool)

(assert (=> d!401926 (=> (not res!637269) (not e!898397))))

(assert (=> d!401926 (= res!637269 ((_ is Cons!14330) (map!3185 rules!2550 lambda!62138)))))

(assert (=> d!401926 (exists!611 (map!3185 rules!2550 lambda!62138) lambda!62139)))

(assert (=> d!401926 (= (getWitness!499 (map!3185 rules!2550 lambda!62138) lambda!62139) lt!469765)))

(declare-fun b!1407329 () Bool)

(assert (=> b!1407329 (= e!898395 e!898396)))

(declare-fun c!231380 () Bool)

(assert (=> b!1407329 (= c!231380 ((_ is Cons!14330) (map!3185 rules!2550 lambda!62138)))))

(declare-fun b!1407330 () Bool)

(assert (=> b!1407330 (= e!898396 (getWitness!499 (t!123065 (map!3185 rules!2550 lambda!62138)) lambda!62139))))

(assert (= (and d!401926 res!637269) b!1407326))

(assert (= (and d!401926 c!231381) b!1407328))

(assert (= (and d!401926 (not c!231381)) b!1407329))

(assert (= (and b!1407329 c!231380) b!1407330))

(assert (= (and b!1407329 (not c!231380)) b!1407325))

(assert (= (and d!401926 res!637268) b!1407327))

(declare-fun b_lambda!44395 () Bool)

(assert (=> (not b_lambda!44395) (not b!1407326)))

(declare-fun b_lambda!44397 () Bool)

(assert (=> (not b_lambda!44397) (not d!401926)))

(assert (=> b!1407327 m!1584187))

(declare-fun m!1585151 () Bool)

(assert (=> b!1407327 m!1585151))

(declare-fun m!1585153 () Bool)

(assert (=> b!1407326 m!1585153))

(declare-fun m!1585155 () Bool)

(assert (=> b!1407330 m!1585155))

(assert (=> b!1407325 m!1584187))

(declare-fun m!1585157 () Bool)

(assert (=> b!1407325 m!1585157))

(declare-fun m!1585159 () Bool)

(assert (=> d!401926 m!1585159))

(assert (=> d!401926 m!1584187))

(assert (=> d!401926 m!1584211))

(assert (=> b!1406590 d!401926))

(declare-fun d!401928 () Bool)

(declare-fun res!637274 () Bool)

(declare-fun e!898402 () Bool)

(assert (=> d!401928 (=> res!637274 e!898402)))

(assert (=> d!401928 (= res!637274 (not ((_ is Cons!14328) rules!2550)))))

(assert (=> d!401928 (= (sepAndNonSepRulesDisjointChars!856 rules!2550 rules!2550) e!898402)))

(declare-fun b!1407335 () Bool)

(declare-fun e!898403 () Bool)

(assert (=> b!1407335 (= e!898402 e!898403)))

(declare-fun res!637275 () Bool)

(assert (=> b!1407335 (=> (not res!637275) (not e!898403))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!408 (Rule!4766 List!14394) Bool)

(assert (=> b!1407335 (= res!637275 (ruleDisjointCharsFromAllFromOtherType!408 (h!19729 rules!2550) rules!2550))))

(declare-fun b!1407336 () Bool)

(assert (=> b!1407336 (= e!898403 (sepAndNonSepRulesDisjointChars!856 rules!2550 (t!123063 rules!2550)))))

(assert (= (and d!401928 (not res!637274)) b!1407335))

(assert (= (and b!1407335 res!637275) b!1407336))

(declare-fun m!1585161 () Bool)

(assert (=> b!1407335 m!1585161))

(declare-fun m!1585163 () Bool)

(assert (=> b!1407336 m!1585163))

(assert (=> b!1406589 d!401928))

(declare-fun b!1407337 () Bool)

(declare-fun e!898404 () Bool)

(assert (=> b!1407337 (= e!898404 (inv!16 (value!80398 t1!34)))))

(declare-fun b!1407338 () Bool)

(declare-fun e!898406 () Bool)

(assert (=> b!1407338 (= e!898404 e!898406)))

(declare-fun c!231382 () Bool)

(assert (=> b!1407338 (= c!231382 ((_ is IntegerValue!7720) (value!80398 t1!34)))))

(declare-fun d!401930 () Bool)

(declare-fun c!231383 () Bool)

(assert (=> d!401930 (= c!231383 ((_ is IntegerValue!7719) (value!80398 t1!34)))))

(assert (=> d!401930 (= (inv!21 (value!80398 t1!34)) e!898404)))

(declare-fun b!1407339 () Bool)

(assert (=> b!1407339 (= e!898406 (inv!17 (value!80398 t1!34)))))

(declare-fun b!1407340 () Bool)

(declare-fun res!637276 () Bool)

(declare-fun e!898405 () Bool)

(assert (=> b!1407340 (=> res!637276 e!898405)))

(assert (=> b!1407340 (= res!637276 (not ((_ is IntegerValue!7721) (value!80398 t1!34))))))

(assert (=> b!1407340 (= e!898406 e!898405)))

(declare-fun b!1407341 () Bool)

(assert (=> b!1407341 (= e!898405 (inv!15 (value!80398 t1!34)))))

(assert (= (and d!401930 c!231383) b!1407337))

(assert (= (and d!401930 (not c!231383)) b!1407338))

(assert (= (and b!1407338 c!231382) b!1407339))

(assert (= (and b!1407338 (not c!231382)) b!1407340))

(assert (= (and b!1407340 (not res!637276)) b!1407341))

(declare-fun m!1585165 () Bool)

(assert (=> b!1407337 m!1585165))

(declare-fun m!1585167 () Bool)

(assert (=> b!1407339 m!1585167))

(declare-fun m!1585169 () Bool)

(assert (=> b!1407341 m!1585169))

(assert (=> b!1406568 d!401930))

(declare-fun d!401932 () Bool)

(declare-fun e!898407 () Bool)

(assert (=> d!401932 e!898407))

(declare-fun c!231385 () Bool)

(assert (=> d!401932 (= c!231385 ((_ is EmptyExpr!3797) lt!469505))))

(declare-fun lt!469766 () Bool)

(declare-fun e!898412 () Bool)

(assert (=> d!401932 (= lt!469766 e!898412)))

(declare-fun c!231384 () Bool)

(assert (=> d!401932 (= c!231384 (isEmpty!8727 lt!469500))))

(assert (=> d!401932 (validRegex!1665 lt!469505)))

(assert (=> d!401932 (= (matchR!1788 lt!469505 lt!469500) lt!469766)))

(declare-fun b!1407342 () Bool)

(declare-fun res!637279 () Bool)

(declare-fun e!898409 () Bool)

(assert (=> b!1407342 (=> res!637279 e!898409)))

(declare-fun e!898408 () Bool)

(assert (=> b!1407342 (= res!637279 e!898408)))

(declare-fun res!637281 () Bool)

(assert (=> b!1407342 (=> (not res!637281) (not e!898408))))

(assert (=> b!1407342 (= res!637281 lt!469766)))

(declare-fun b!1407343 () Bool)

(declare-fun res!637284 () Bool)

(assert (=> b!1407343 (=> (not res!637284) (not e!898408))))

(declare-fun call!93767 () Bool)

(assert (=> b!1407343 (= res!637284 (not call!93767))))

(declare-fun b!1407344 () Bool)

(declare-fun e!898413 () Bool)

(assert (=> b!1407344 (= e!898413 (not (= (head!2621 lt!469500) (c!231229 lt!469505))))))

(declare-fun b!1407345 () Bool)

(assert (=> b!1407345 (= e!898407 (= lt!469766 call!93767))))

(declare-fun b!1407346 () Bool)

(assert (=> b!1407346 (= e!898412 (matchR!1788 (derivativeStep!995 lt!469505 (head!2621 lt!469500)) (tail!2042 lt!469500)))))

(declare-fun b!1407347 () Bool)

(declare-fun res!637282 () Bool)

(assert (=> b!1407347 (=> res!637282 e!898413)))

(assert (=> b!1407347 (= res!637282 (not (isEmpty!8727 (tail!2042 lt!469500))))))

(declare-fun b!1407348 () Bool)

(assert (=> b!1407348 (= e!898412 (nullable!1237 lt!469505))))

(declare-fun b!1407349 () Bool)

(declare-fun res!637278 () Bool)

(assert (=> b!1407349 (=> res!637278 e!898409)))

(assert (=> b!1407349 (= res!637278 (not ((_ is ElementMatch!3797) lt!469505)))))

(declare-fun e!898410 () Bool)

(assert (=> b!1407349 (= e!898410 e!898409)))

(declare-fun b!1407350 () Bool)

(assert (=> b!1407350 (= e!898408 (= (head!2621 lt!469500) (c!231229 lt!469505)))))

(declare-fun bm!93762 () Bool)

(assert (=> bm!93762 (= call!93767 (isEmpty!8727 lt!469500))))

(declare-fun b!1407351 () Bool)

(assert (=> b!1407351 (= e!898410 (not lt!469766))))

(declare-fun b!1407352 () Bool)

(declare-fun e!898411 () Bool)

(assert (=> b!1407352 (= e!898409 e!898411)))

(declare-fun res!637283 () Bool)

(assert (=> b!1407352 (=> (not res!637283) (not e!898411))))

(assert (=> b!1407352 (= res!637283 (not lt!469766))))

(declare-fun b!1407353 () Bool)

(assert (=> b!1407353 (= e!898407 e!898410)))

(declare-fun c!231386 () Bool)

(assert (=> b!1407353 (= c!231386 ((_ is EmptyLang!3797) lt!469505))))

(declare-fun b!1407354 () Bool)

(declare-fun res!637277 () Bool)

(assert (=> b!1407354 (=> (not res!637277) (not e!898408))))

(assert (=> b!1407354 (= res!637277 (isEmpty!8727 (tail!2042 lt!469500)))))

(declare-fun b!1407355 () Bool)

(assert (=> b!1407355 (= e!898411 e!898413)))

(declare-fun res!637280 () Bool)

(assert (=> b!1407355 (=> res!637280 e!898413)))

(assert (=> b!1407355 (= res!637280 call!93767)))

(assert (= (and d!401932 c!231384) b!1407348))

(assert (= (and d!401932 (not c!231384)) b!1407346))

(assert (= (and d!401932 c!231385) b!1407345))

(assert (= (and d!401932 (not c!231385)) b!1407353))

(assert (= (and b!1407353 c!231386) b!1407351))

(assert (= (and b!1407353 (not c!231386)) b!1407349))

(assert (= (and b!1407349 (not res!637278)) b!1407342))

(assert (= (and b!1407342 res!637281) b!1407343))

(assert (= (and b!1407343 res!637284) b!1407354))

(assert (= (and b!1407354 res!637277) b!1407350))

(assert (= (and b!1407342 (not res!637279)) b!1407352))

(assert (= (and b!1407352 res!637283) b!1407355))

(assert (= (and b!1407355 (not res!637280)) b!1407347))

(assert (= (and b!1407347 (not res!637282)) b!1407344))

(assert (= (or b!1407345 b!1407343 b!1407355) bm!93762))

(assert (=> bm!93762 m!1584307))

(assert (=> b!1407346 m!1584309))

(assert (=> b!1407346 m!1584309))

(declare-fun m!1585171 () Bool)

(assert (=> b!1407346 m!1585171))

(assert (=> b!1407346 m!1584313))

(assert (=> b!1407346 m!1585171))

(assert (=> b!1407346 m!1584313))

(declare-fun m!1585173 () Bool)

(assert (=> b!1407346 m!1585173))

(assert (=> b!1407350 m!1584309))

(assert (=> d!401932 m!1584307))

(assert (=> d!401932 m!1584499))

(declare-fun m!1585175 () Bool)

(assert (=> b!1407348 m!1585175))

(assert (=> b!1407344 m!1584309))

(assert (=> b!1407354 m!1584313))

(assert (=> b!1407354 m!1584313))

(assert (=> b!1407354 m!1584321))

(assert (=> b!1407347 m!1584313))

(assert (=> b!1407347 m!1584313))

(assert (=> b!1407347 m!1584321))

(assert (=> b!1406567 d!401932))

(declare-fun d!401934 () Bool)

(declare-fun e!898414 () Bool)

(assert (=> d!401934 e!898414))

(declare-fun c!231388 () Bool)

(assert (=> d!401934 (= c!231388 ((_ is EmptyExpr!3797) (regex!2483 (rule!4246 t2!34))))))

(declare-fun lt!469767 () Bool)

(declare-fun e!898419 () Bool)

(assert (=> d!401934 (= lt!469767 e!898419)))

(declare-fun c!231387 () Bool)

(assert (=> d!401934 (= c!231387 (isEmpty!8727 lt!469494))))

(assert (=> d!401934 (validRegex!1665 (regex!2483 (rule!4246 t2!34)))))

(assert (=> d!401934 (= (matchR!1788 (regex!2483 (rule!4246 t2!34)) lt!469494) lt!469767)))

(declare-fun b!1407356 () Bool)

(declare-fun res!637287 () Bool)

(declare-fun e!898416 () Bool)

(assert (=> b!1407356 (=> res!637287 e!898416)))

(declare-fun e!898415 () Bool)

(assert (=> b!1407356 (= res!637287 e!898415)))

(declare-fun res!637289 () Bool)

(assert (=> b!1407356 (=> (not res!637289) (not e!898415))))

(assert (=> b!1407356 (= res!637289 lt!469767)))

(declare-fun b!1407357 () Bool)

(declare-fun res!637292 () Bool)

(assert (=> b!1407357 (=> (not res!637292) (not e!898415))))

(declare-fun call!93768 () Bool)

(assert (=> b!1407357 (= res!637292 (not call!93768))))

(declare-fun b!1407358 () Bool)

(declare-fun e!898420 () Bool)

(assert (=> b!1407358 (= e!898420 (not (= (head!2621 lt!469494) (c!231229 (regex!2483 (rule!4246 t2!34))))))))

(declare-fun b!1407359 () Bool)

(assert (=> b!1407359 (= e!898414 (= lt!469767 call!93768))))

(declare-fun b!1407360 () Bool)

(assert (=> b!1407360 (= e!898419 (matchR!1788 (derivativeStep!995 (regex!2483 (rule!4246 t2!34)) (head!2621 lt!469494)) (tail!2042 lt!469494)))))

(declare-fun b!1407361 () Bool)

(declare-fun res!637290 () Bool)

(assert (=> b!1407361 (=> res!637290 e!898420)))

(assert (=> b!1407361 (= res!637290 (not (isEmpty!8727 (tail!2042 lt!469494))))))

(declare-fun b!1407362 () Bool)

(assert (=> b!1407362 (= e!898419 (nullable!1237 (regex!2483 (rule!4246 t2!34))))))

(declare-fun b!1407363 () Bool)

(declare-fun res!637286 () Bool)

(assert (=> b!1407363 (=> res!637286 e!898416)))

(assert (=> b!1407363 (= res!637286 (not ((_ is ElementMatch!3797) (regex!2483 (rule!4246 t2!34)))))))

(declare-fun e!898417 () Bool)

(assert (=> b!1407363 (= e!898417 e!898416)))

(declare-fun b!1407364 () Bool)

(assert (=> b!1407364 (= e!898415 (= (head!2621 lt!469494) (c!231229 (regex!2483 (rule!4246 t2!34)))))))

(declare-fun bm!93763 () Bool)

(assert (=> bm!93763 (= call!93768 (isEmpty!8727 lt!469494))))

(declare-fun b!1407365 () Bool)

(assert (=> b!1407365 (= e!898417 (not lt!469767))))

(declare-fun b!1407366 () Bool)

(declare-fun e!898418 () Bool)

(assert (=> b!1407366 (= e!898416 e!898418)))

(declare-fun res!637291 () Bool)

(assert (=> b!1407366 (=> (not res!637291) (not e!898418))))

(assert (=> b!1407366 (= res!637291 (not lt!469767))))

(declare-fun b!1407367 () Bool)

(assert (=> b!1407367 (= e!898414 e!898417)))

(declare-fun c!231389 () Bool)

(assert (=> b!1407367 (= c!231389 ((_ is EmptyLang!3797) (regex!2483 (rule!4246 t2!34))))))

(declare-fun b!1407368 () Bool)

(declare-fun res!637285 () Bool)

(assert (=> b!1407368 (=> (not res!637285) (not e!898415))))

(assert (=> b!1407368 (= res!637285 (isEmpty!8727 (tail!2042 lt!469494)))))

(declare-fun b!1407369 () Bool)

(assert (=> b!1407369 (= e!898418 e!898420)))

(declare-fun res!637288 () Bool)

(assert (=> b!1407369 (=> res!637288 e!898420)))

(assert (=> b!1407369 (= res!637288 call!93768)))

(assert (= (and d!401934 c!231387) b!1407362))

(assert (= (and d!401934 (not c!231387)) b!1407360))

(assert (= (and d!401934 c!231388) b!1407359))

(assert (= (and d!401934 (not c!231388)) b!1407367))

(assert (= (and b!1407367 c!231389) b!1407365))

(assert (= (and b!1407367 (not c!231389)) b!1407363))

(assert (= (and b!1407363 (not res!637286)) b!1407356))

(assert (= (and b!1407356 res!637289) b!1407357))

(assert (= (and b!1407357 res!637292) b!1407368))

(assert (= (and b!1407368 res!637285) b!1407364))

(assert (= (and b!1407356 (not res!637287)) b!1407366))

(assert (= (and b!1407366 res!637291) b!1407369))

(assert (= (and b!1407369 (not res!637288)) b!1407361))

(assert (= (and b!1407361 (not res!637290)) b!1407358))

(assert (= (or b!1407359 b!1407357 b!1407369) bm!93763))

(declare-fun m!1585177 () Bool)

(assert (=> bm!93763 m!1585177))

(assert (=> b!1407360 m!1584155))

(assert (=> b!1407360 m!1584155))

(declare-fun m!1585179 () Bool)

(assert (=> b!1407360 m!1585179))

(declare-fun m!1585181 () Bool)

(assert (=> b!1407360 m!1585181))

(assert (=> b!1407360 m!1585179))

(assert (=> b!1407360 m!1585181))

(declare-fun m!1585183 () Bool)

(assert (=> b!1407360 m!1585183))

(assert (=> b!1407364 m!1584155))

(assert (=> d!401934 m!1585177))

(assert (=> d!401934 m!1584467))

(declare-fun m!1585185 () Bool)

(assert (=> b!1407362 m!1585185))

(assert (=> b!1407358 m!1584155))

(assert (=> b!1407368 m!1585181))

(assert (=> b!1407368 m!1585181))

(declare-fun m!1585187 () Bool)

(assert (=> b!1407368 m!1585187))

(assert (=> b!1407361 m!1585181))

(assert (=> b!1407361 m!1585181))

(assert (=> b!1407361 m!1585187))

(assert (=> b!1406609 d!401934))

(declare-fun d!401936 () Bool)

(declare-fun e!898421 () Bool)

(assert (=> d!401936 e!898421))

(declare-fun c!231391 () Bool)

(assert (=> d!401936 (= c!231391 ((_ is EmptyExpr!3797) (regex!2483 (rule!4246 t1!34))))))

(declare-fun lt!469768 () Bool)

(declare-fun e!898426 () Bool)

(assert (=> d!401936 (= lt!469768 e!898426)))

(declare-fun c!231390 () Bool)

(assert (=> d!401936 (= c!231390 (isEmpty!8727 lt!469503))))

(assert (=> d!401936 (validRegex!1665 (regex!2483 (rule!4246 t1!34)))))

(assert (=> d!401936 (= (matchR!1788 (regex!2483 (rule!4246 t1!34)) lt!469503) lt!469768)))

(declare-fun b!1407370 () Bool)

(declare-fun res!637295 () Bool)

(declare-fun e!898423 () Bool)

(assert (=> b!1407370 (=> res!637295 e!898423)))

(declare-fun e!898422 () Bool)

(assert (=> b!1407370 (= res!637295 e!898422)))

(declare-fun res!637297 () Bool)

(assert (=> b!1407370 (=> (not res!637297) (not e!898422))))

(assert (=> b!1407370 (= res!637297 lt!469768)))

(declare-fun b!1407371 () Bool)

(declare-fun res!637300 () Bool)

(assert (=> b!1407371 (=> (not res!637300) (not e!898422))))

(declare-fun call!93769 () Bool)

(assert (=> b!1407371 (= res!637300 (not call!93769))))

(declare-fun b!1407372 () Bool)

(declare-fun e!898427 () Bool)

(assert (=> b!1407372 (= e!898427 (not (= (head!2621 lt!469503) (c!231229 (regex!2483 (rule!4246 t1!34))))))))

(declare-fun b!1407373 () Bool)

(assert (=> b!1407373 (= e!898421 (= lt!469768 call!93769))))

(declare-fun b!1407374 () Bool)

(assert (=> b!1407374 (= e!898426 (matchR!1788 (derivativeStep!995 (regex!2483 (rule!4246 t1!34)) (head!2621 lt!469503)) (tail!2042 lt!469503)))))

(declare-fun b!1407375 () Bool)

(declare-fun res!637298 () Bool)

(assert (=> b!1407375 (=> res!637298 e!898427)))

(assert (=> b!1407375 (= res!637298 (not (isEmpty!8727 (tail!2042 lt!469503))))))

(declare-fun b!1407376 () Bool)

(assert (=> b!1407376 (= e!898426 (nullable!1237 (regex!2483 (rule!4246 t1!34))))))

(declare-fun b!1407377 () Bool)

(declare-fun res!637294 () Bool)

(assert (=> b!1407377 (=> res!637294 e!898423)))

(assert (=> b!1407377 (= res!637294 (not ((_ is ElementMatch!3797) (regex!2483 (rule!4246 t1!34)))))))

(declare-fun e!898424 () Bool)

(assert (=> b!1407377 (= e!898424 e!898423)))

(declare-fun b!1407378 () Bool)

(assert (=> b!1407378 (= e!898422 (= (head!2621 lt!469503) (c!231229 (regex!2483 (rule!4246 t1!34)))))))

(declare-fun bm!93764 () Bool)

(assert (=> bm!93764 (= call!93769 (isEmpty!8727 lt!469503))))

(declare-fun b!1407379 () Bool)

(assert (=> b!1407379 (= e!898424 (not lt!469768))))

(declare-fun b!1407380 () Bool)

(declare-fun e!898425 () Bool)

(assert (=> b!1407380 (= e!898423 e!898425)))

(declare-fun res!637299 () Bool)

(assert (=> b!1407380 (=> (not res!637299) (not e!898425))))

(assert (=> b!1407380 (= res!637299 (not lt!469768))))

(declare-fun b!1407381 () Bool)

(assert (=> b!1407381 (= e!898421 e!898424)))

(declare-fun c!231392 () Bool)

(assert (=> b!1407381 (= c!231392 ((_ is EmptyLang!3797) (regex!2483 (rule!4246 t1!34))))))

(declare-fun b!1407382 () Bool)

(declare-fun res!637293 () Bool)

(assert (=> b!1407382 (=> (not res!637293) (not e!898422))))

(assert (=> b!1407382 (= res!637293 (isEmpty!8727 (tail!2042 lt!469503)))))

(declare-fun b!1407383 () Bool)

(assert (=> b!1407383 (= e!898425 e!898427)))

(declare-fun res!637296 () Bool)

(assert (=> b!1407383 (=> res!637296 e!898427)))

(assert (=> b!1407383 (= res!637296 call!93769)))

(assert (= (and d!401936 c!231390) b!1407376))

(assert (= (and d!401936 (not c!231390)) b!1407374))

(assert (= (and d!401936 c!231391) b!1407373))

(assert (= (and d!401936 (not c!231391)) b!1407381))

(assert (= (and b!1407381 c!231392) b!1407379))

(assert (= (and b!1407381 (not c!231392)) b!1407377))

(assert (= (and b!1407377 (not res!637294)) b!1407370))

(assert (= (and b!1407370 res!637297) b!1407371))

(assert (= (and b!1407371 res!637300) b!1407382))

(assert (= (and b!1407382 res!637293) b!1407378))

(assert (= (and b!1407370 (not res!637295)) b!1407380))

(assert (= (and b!1407380 res!637299) b!1407383))

(assert (= (and b!1407383 (not res!637296)) b!1407375))

(assert (= (and b!1407375 (not res!637298)) b!1407372))

(assert (= (or b!1407373 b!1407371 b!1407383) bm!93764))

(declare-fun m!1585189 () Bool)

(assert (=> bm!93764 m!1585189))

(assert (=> b!1407374 m!1584239))

(assert (=> b!1407374 m!1584239))

(declare-fun m!1585191 () Bool)

(assert (=> b!1407374 m!1585191))

(declare-fun m!1585193 () Bool)

(assert (=> b!1407374 m!1585193))

(assert (=> b!1407374 m!1585191))

(assert (=> b!1407374 m!1585193))

(declare-fun m!1585195 () Bool)

(assert (=> b!1407374 m!1585195))

(assert (=> b!1407378 m!1584239))

(assert (=> d!401936 m!1585189))

(assert (=> d!401936 m!1584503))

(declare-fun m!1585197 () Bool)

(assert (=> b!1407376 m!1585197))

(assert (=> b!1407372 m!1584239))

(assert (=> b!1407382 m!1585193))

(assert (=> b!1407382 m!1585193))

(declare-fun m!1585199 () Bool)

(assert (=> b!1407382 m!1585199))

(assert (=> b!1407375 m!1585193))

(assert (=> b!1407375 m!1585193))

(assert (=> b!1407375 m!1585199))

(assert (=> b!1406588 d!401936))

(declare-fun d!401938 () Bool)

(assert (=> d!401938 (dynLambda!6639 lambda!62141 (rule!4246 t2!34))))

(declare-fun lt!469771 () Unit!20693)

(declare-fun choose!8702 (List!14394 Int Rule!4766) Unit!20693)

(assert (=> d!401938 (= lt!469771 (choose!8702 rules!2550 lambda!62141 (rule!4246 t2!34)))))

(declare-fun e!898430 () Bool)

(assert (=> d!401938 e!898430))

(declare-fun res!637303 () Bool)

(assert (=> d!401938 (=> (not res!637303) (not e!898430))))

(assert (=> d!401938 (= res!637303 (forall!3470 rules!2550 lambda!62141))))

(assert (=> d!401938 (= (forallContained!678 rules!2550 lambda!62141 (rule!4246 t2!34)) lt!469771)))

(declare-fun b!1407386 () Bool)

(assert (=> b!1407386 (= e!898430 (contains!2831 rules!2550 (rule!4246 t2!34)))))

(assert (= (and d!401938 res!637303) b!1407386))

(declare-fun b_lambda!44399 () Bool)

(assert (=> (not b_lambda!44399) (not d!401938)))

(declare-fun m!1585201 () Bool)

(assert (=> d!401938 m!1585201))

(declare-fun m!1585203 () Bool)

(assert (=> d!401938 m!1585203))

(declare-fun m!1585205 () Bool)

(assert (=> d!401938 m!1585205))

(assert (=> b!1407386 m!1584243))

(assert (=> b!1406588 d!401938))

(declare-fun d!401940 () Bool)

(assert (=> d!401940 (dynLambda!6639 lambda!62141 (rule!4246 t1!34))))

(declare-fun lt!469772 () Unit!20693)

(assert (=> d!401940 (= lt!469772 (choose!8702 rules!2550 lambda!62141 (rule!4246 t1!34)))))

(declare-fun e!898431 () Bool)

(assert (=> d!401940 e!898431))

(declare-fun res!637304 () Bool)

(assert (=> d!401940 (=> (not res!637304) (not e!898431))))

(assert (=> d!401940 (= res!637304 (forall!3470 rules!2550 lambda!62141))))

(assert (=> d!401940 (= (forallContained!678 rules!2550 lambda!62141 (rule!4246 t1!34)) lt!469772)))

(declare-fun b!1407387 () Bool)

(assert (=> b!1407387 (= e!898431 (contains!2831 rules!2550 (rule!4246 t1!34)))))

(assert (= (and d!401940 res!637304) b!1407387))

(declare-fun b_lambda!44401 () Bool)

(assert (=> (not b_lambda!44401) (not d!401940)))

(declare-fun m!1585207 () Bool)

(assert (=> d!401940 m!1585207))

(declare-fun m!1585209 () Bool)

(assert (=> d!401940 m!1585209))

(assert (=> d!401940 m!1585205))

(assert (=> b!1407387 m!1584145))

(assert (=> b!1406588 d!401940))

(declare-fun d!401942 () Bool)

(assert (=> d!401942 (dynLambda!6639 lambda!62141 lt!469511)))

(declare-fun lt!469773 () Unit!20693)

(assert (=> d!401942 (= lt!469773 (choose!8702 rules!2550 lambda!62141 lt!469511))))

(declare-fun e!898432 () Bool)

(assert (=> d!401942 e!898432))

(declare-fun res!637305 () Bool)

(assert (=> d!401942 (=> (not res!637305) (not e!898432))))

(assert (=> d!401942 (= res!637305 (forall!3470 rules!2550 lambda!62141))))

(assert (=> d!401942 (= (forallContained!678 rules!2550 lambda!62141 lt!469511) lt!469773)))

(declare-fun b!1407388 () Bool)

(assert (=> b!1407388 (= e!898432 (contains!2831 rules!2550 lt!469511))))

(assert (= (and d!401942 res!637305) b!1407388))

(declare-fun b_lambda!44403 () Bool)

(assert (=> (not b_lambda!44403) (not d!401942)))

(declare-fun m!1585211 () Bool)

(assert (=> d!401942 m!1585211))

(declare-fun m!1585213 () Bool)

(assert (=> d!401942 m!1585213))

(assert (=> d!401942 m!1585205))

(assert (=> b!1407388 m!1584185))

(assert (=> b!1406588 d!401942))

(declare-fun d!401944 () Bool)

(declare-fun lt!469774 () C!7884)

(assert (=> d!401944 (= lt!469774 (apply!3674 (list!5597 lt!469506) 0))))

(assert (=> d!401944 (= lt!469774 (apply!3675 (c!231228 lt!469506) 0))))

(declare-fun e!898433 () Bool)

(assert (=> d!401944 e!898433))

(declare-fun res!637306 () Bool)

(assert (=> d!401944 (=> (not res!637306) (not e!898433))))

(assert (=> d!401944 (= res!637306 (<= 0 0))))

(assert (=> d!401944 (= (apply!3667 lt!469506 0) lt!469774)))

(declare-fun b!1407389 () Bool)

(assert (=> b!1407389 (= e!898433 (< 0 (size!11786 lt!469506)))))

(assert (= (and d!401944 res!637306) b!1407389))

(assert (=> d!401944 m!1584225))

(assert (=> d!401944 m!1584225))

(declare-fun m!1585215 () Bool)

(assert (=> d!401944 m!1585215))

(declare-fun m!1585217 () Bool)

(assert (=> d!401944 m!1585217))

(assert (=> b!1407389 m!1584113))

(assert (=> b!1406566 d!401944))

(declare-fun lt!469777 () List!14393)

(declare-fun b!1407401 () Bool)

(declare-fun e!898439 () Bool)

(assert (=> b!1407401 (= e!898439 (or (not (= (Cons!14327 lt!469489 Nil!14327) Nil!14327)) (= lt!469777 lt!469503)))))

(declare-fun b!1407399 () Bool)

(declare-fun e!898438 () List!14393)

(assert (=> b!1407399 (= e!898438 (Cons!14327 (h!19728 lt!469503) (++!3726 (t!123062 lt!469503) (Cons!14327 lt!469489 Nil!14327))))))

(declare-fun d!401946 () Bool)

(assert (=> d!401946 e!898439))

(declare-fun res!637312 () Bool)

(assert (=> d!401946 (=> (not res!637312) (not e!898439))))

(assert (=> d!401946 (= res!637312 (= (content!2131 lt!469777) ((_ map or) (content!2131 lt!469503) (content!2131 (Cons!14327 lt!469489 Nil!14327)))))))

(assert (=> d!401946 (= lt!469777 e!898438)))

(declare-fun c!231395 () Bool)

(assert (=> d!401946 (= c!231395 ((_ is Nil!14327) lt!469503))))

(assert (=> d!401946 (= (++!3726 lt!469503 (Cons!14327 lt!469489 Nil!14327)) lt!469777)))

(declare-fun b!1407400 () Bool)

(declare-fun res!637311 () Bool)

(assert (=> b!1407400 (=> (not res!637311) (not e!898439))))

(assert (=> b!1407400 (= res!637311 (= (size!11790 lt!469777) (+ (size!11790 lt!469503) (size!11790 (Cons!14327 lt!469489 Nil!14327)))))))

(declare-fun b!1407398 () Bool)

(assert (=> b!1407398 (= e!898438 (Cons!14327 lt!469489 Nil!14327))))

(assert (= (and d!401946 c!231395) b!1407398))

(assert (= (and d!401946 (not c!231395)) b!1407399))

(assert (= (and d!401946 res!637312) b!1407400))

(assert (= (and b!1407400 res!637311) b!1407401))

(declare-fun m!1585219 () Bool)

(assert (=> b!1407399 m!1585219))

(declare-fun m!1585221 () Bool)

(assert (=> d!401946 m!1585221))

(declare-fun m!1585223 () Bool)

(assert (=> d!401946 m!1585223))

(declare-fun m!1585225 () Bool)

(assert (=> d!401946 m!1585225))

(declare-fun m!1585227 () Bool)

(assert (=> b!1407400 m!1585227))

(assert (=> b!1407400 m!1585113))

(declare-fun m!1585229 () Bool)

(assert (=> b!1407400 m!1585229))

(assert (=> b!1406566 d!401946))

(declare-fun d!401948 () Bool)

(assert (=> d!401948 (= (list!5597 lt!469488) (list!5601 (c!231228 lt!469488)))))

(declare-fun bs!338618 () Bool)

(assert (= bs!338618 d!401948))

(declare-fun m!1585231 () Bool)

(assert (=> bs!338618 m!1585231))

(assert (=> b!1406566 d!401948))

(declare-fun d!401950 () Bool)

(declare-fun lt!469778 () BalanceConc!9392)

(assert (=> d!401950 (= (list!5597 lt!469778) (originalCharacters!3345 t1!34))))

(assert (=> d!401950 (= lt!469778 (dynLambda!6637 (toChars!3633 (transformation!2483 (rule!4246 t1!34))) (value!80398 t1!34)))))

(assert (=> d!401950 (= (charsOf!1455 t1!34) lt!469778)))

(declare-fun b_lambda!44405 () Bool)

(assert (=> (not b_lambda!44405) (not d!401950)))

(assert (=> d!401950 t!123068))

(declare-fun b_and!94237 () Bool)

(assert (= b_and!94231 (and (=> t!123068 result!88990) b_and!94237)))

(assert (=> d!401950 t!123070))

(declare-fun b_and!94239 () Bool)

(assert (= b_and!94233 (and (=> t!123070 result!88994) b_and!94239)))

(assert (=> d!401950 t!123072))

(declare-fun b_and!94241 () Bool)

(assert (= b_and!94235 (and (=> t!123072 result!88996) b_and!94241)))

(declare-fun m!1585233 () Bool)

(assert (=> d!401950 m!1585233))

(assert (=> d!401950 m!1584475))

(assert (=> b!1406566 d!401950))

(declare-fun bs!338619 () Bool)

(declare-fun d!401952 () Bool)

(assert (= bs!338619 (and d!401952 b!1406604)))

(declare-fun lambda!62185 () Int)

(assert (=> bs!338619 (= lambda!62185 lambda!62138)))

(declare-fun lt!469781 () Unit!20693)

(declare-fun lemma!165 (List!14394 LexerInterface!2178 List!14394) Unit!20693)

(assert (=> d!401952 (= lt!469781 (lemma!165 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!173 (List!14396) Regex!3797)

(assert (=> d!401952 (= (rulesRegex!366 thiss!19762 rules!2550) (generalisedUnion!173 (map!3185 rules!2550 lambda!62185)))))

(declare-fun bs!338620 () Bool)

(assert (= bs!338620 d!401952))

(declare-fun m!1585235 () Bool)

(assert (=> bs!338620 m!1585235))

(declare-fun m!1585237 () Bool)

(assert (=> bs!338620 m!1585237))

(assert (=> bs!338620 m!1585237))

(declare-fun m!1585239 () Bool)

(assert (=> bs!338620 m!1585239))

(assert (=> b!1406566 d!401952))

(declare-fun d!401954 () Bool)

(declare-fun c!231398 () Bool)

(assert (=> d!401954 (= c!231398 (isEmpty!8727 lt!469490))))

(declare-fun e!898442 () Bool)

(assert (=> d!401954 (= (prefixMatch!306 lt!469505 lt!469490) e!898442)))

(declare-fun b!1407406 () Bool)

(declare-fun lostCause!371 (Regex!3797) Bool)

(assert (=> b!1407406 (= e!898442 (not (lostCause!371 lt!469505)))))

(declare-fun b!1407407 () Bool)

(assert (=> b!1407407 (= e!898442 (prefixMatch!306 (derivativeStep!995 lt!469505 (head!2621 lt!469490)) (tail!2042 lt!469490)))))

(assert (= (and d!401954 c!231398) b!1407406))

(assert (= (and d!401954 (not c!231398)) b!1407407))

(declare-fun m!1585241 () Bool)

(assert (=> d!401954 m!1585241))

(declare-fun m!1585243 () Bool)

(assert (=> b!1407406 m!1585243))

(declare-fun m!1585245 () Bool)

(assert (=> b!1407407 m!1585245))

(assert (=> b!1407407 m!1585245))

(declare-fun m!1585247 () Bool)

(assert (=> b!1407407 m!1585247))

(declare-fun m!1585249 () Bool)

(assert (=> b!1407407 m!1585249))

(assert (=> b!1407407 m!1585247))

(assert (=> b!1407407 m!1585249))

(declare-fun m!1585251 () Bool)

(assert (=> b!1407407 m!1585251))

(assert (=> b!1406566 d!401954))

(declare-fun d!401956 () Bool)

(declare-fun lt!469782 () Bool)

(assert (=> d!401956 (= lt!469782 (select (content!2131 (usedCharacters!294 (regex!2483 (rule!4246 t2!34)))) lt!469489))))

(declare-fun e!898444 () Bool)

(assert (=> d!401956 (= lt!469782 e!898444)))

(declare-fun res!637313 () Bool)

(assert (=> d!401956 (=> (not res!637313) (not e!898444))))

(assert (=> d!401956 (= res!637313 ((_ is Cons!14327) (usedCharacters!294 (regex!2483 (rule!4246 t2!34)))))))

(assert (=> d!401956 (= (contains!2832 (usedCharacters!294 (regex!2483 (rule!4246 t2!34))) lt!469489) lt!469782)))

(declare-fun b!1407408 () Bool)

(declare-fun e!898443 () Bool)

(assert (=> b!1407408 (= e!898444 e!898443)))

(declare-fun res!637314 () Bool)

(assert (=> b!1407408 (=> res!637314 e!898443)))

(assert (=> b!1407408 (= res!637314 (= (h!19728 (usedCharacters!294 (regex!2483 (rule!4246 t2!34)))) lt!469489))))

(declare-fun b!1407409 () Bool)

(assert (=> b!1407409 (= e!898443 (contains!2832 (t!123062 (usedCharacters!294 (regex!2483 (rule!4246 t2!34)))) lt!469489))))

(assert (= (and d!401956 res!637313) b!1407408))

(assert (= (and b!1407408 (not res!637314)) b!1407409))

(assert (=> d!401956 m!1584123))

(declare-fun m!1585253 () Bool)

(assert (=> d!401956 m!1585253))

(declare-fun m!1585255 () Bool)

(assert (=> d!401956 m!1585255))

(declare-fun m!1585257 () Bool)

(assert (=> b!1407409 m!1585257))

(assert (=> b!1406565 d!401956))

(declare-fun b!1407410 () Bool)

(declare-fun e!898446 () List!14393)

(declare-fun call!93770 () List!14393)

(assert (=> b!1407410 (= e!898446 call!93770)))

(declare-fun b!1407411 () Bool)

(declare-fun e!898447 () List!14393)

(declare-fun call!93772 () List!14393)

(assert (=> b!1407411 (= e!898447 call!93772)))

(declare-fun b!1407412 () Bool)

(declare-fun c!231400 () Bool)

(assert (=> b!1407412 (= c!231400 ((_ is Star!3797) (regex!2483 (rule!4246 t2!34))))))

(declare-fun e!898445 () List!14393)

(assert (=> b!1407412 (= e!898445 e!898446)))

(declare-fun bm!93765 () Bool)

(declare-fun call!93773 () List!14393)

(declare-fun c!231402 () Bool)

(assert (=> bm!93765 (= call!93773 (usedCharacters!294 (ite c!231402 (regOne!8107 (regex!2483 (rule!4246 t2!34))) (regTwo!8106 (regex!2483 (rule!4246 t2!34))))))))

(declare-fun b!1407413 () Bool)

(declare-fun e!898448 () List!14393)

(assert (=> b!1407413 (= e!898448 Nil!14327)))

(declare-fun b!1407414 () Bool)

(assert (=> b!1407414 (= e!898446 e!898447)))

(assert (=> b!1407414 (= c!231402 ((_ is Union!3797) (regex!2483 (rule!4246 t2!34))))))

(declare-fun b!1407415 () Bool)

(assert (=> b!1407415 (= e!898447 call!93772)))

(declare-fun d!401958 () Bool)

(declare-fun c!231401 () Bool)

(assert (=> d!401958 (= c!231401 (or ((_ is EmptyExpr!3797) (regex!2483 (rule!4246 t2!34))) ((_ is EmptyLang!3797) (regex!2483 (rule!4246 t2!34)))))))

(assert (=> d!401958 (= (usedCharacters!294 (regex!2483 (rule!4246 t2!34))) e!898448)))

(declare-fun bm!93766 () Bool)

(declare-fun call!93771 () List!14393)

(assert (=> bm!93766 (= call!93772 (++!3726 (ite c!231402 call!93773 call!93771) (ite c!231402 call!93771 call!93773)))))

(declare-fun bm!93767 () Bool)

(assert (=> bm!93767 (= call!93770 (usedCharacters!294 (ite c!231400 (reg!4126 (regex!2483 (rule!4246 t2!34))) (ite c!231402 (regTwo!8107 (regex!2483 (rule!4246 t2!34))) (regOne!8106 (regex!2483 (rule!4246 t2!34)))))))))

(declare-fun b!1407416 () Bool)

(assert (=> b!1407416 (= e!898448 e!898445)))

(declare-fun c!231399 () Bool)

(assert (=> b!1407416 (= c!231399 ((_ is ElementMatch!3797) (regex!2483 (rule!4246 t2!34))))))

(declare-fun bm!93768 () Bool)

(assert (=> bm!93768 (= call!93771 call!93770)))

(declare-fun b!1407417 () Bool)

(assert (=> b!1407417 (= e!898445 (Cons!14327 (c!231229 (regex!2483 (rule!4246 t2!34))) Nil!14327))))

(assert (= (and d!401958 c!231401) b!1407413))

(assert (= (and d!401958 (not c!231401)) b!1407416))

(assert (= (and b!1407416 c!231399) b!1407417))

(assert (= (and b!1407416 (not c!231399)) b!1407412))

(assert (= (and b!1407412 c!231400) b!1407410))

(assert (= (and b!1407412 (not c!231400)) b!1407414))

(assert (= (and b!1407414 c!231402) b!1407415))

(assert (= (and b!1407414 (not c!231402)) b!1407411))

(assert (= (or b!1407415 b!1407411) bm!93765))

(assert (= (or b!1407415 b!1407411) bm!93768))

(assert (= (or b!1407415 b!1407411) bm!93766))

(assert (= (or b!1407410 bm!93768) bm!93767))

(declare-fun m!1585259 () Bool)

(assert (=> bm!93765 m!1585259))

(declare-fun m!1585261 () Bool)

(assert (=> bm!93766 m!1585261))

(declare-fun m!1585263 () Bool)

(assert (=> bm!93767 m!1585263))

(assert (=> b!1406565 d!401958))

(declare-fun lt!469783 () List!14393)

(declare-fun b!1407421 () Bool)

(declare-fun e!898450 () Bool)

(assert (=> b!1407421 (= e!898450 (or (not (= (getSuffix!643 lt!469500 lt!469490) Nil!14327)) (= lt!469783 lt!469490)))))

(declare-fun b!1407419 () Bool)

(declare-fun e!898449 () List!14393)

(assert (=> b!1407419 (= e!898449 (Cons!14327 (h!19728 lt!469490) (++!3726 (t!123062 lt!469490) (getSuffix!643 lt!469500 lt!469490))))))

(declare-fun d!401960 () Bool)

(assert (=> d!401960 e!898450))

(declare-fun res!637316 () Bool)

(assert (=> d!401960 (=> (not res!637316) (not e!898450))))

(assert (=> d!401960 (= res!637316 (= (content!2131 lt!469783) ((_ map or) (content!2131 lt!469490) (content!2131 (getSuffix!643 lt!469500 lt!469490)))))))

(assert (=> d!401960 (= lt!469783 e!898449)))

(declare-fun c!231403 () Bool)

(assert (=> d!401960 (= c!231403 ((_ is Nil!14327) lt!469490))))

(assert (=> d!401960 (= (++!3726 lt!469490 (getSuffix!643 lt!469500 lt!469490)) lt!469783)))

(declare-fun b!1407420 () Bool)

(declare-fun res!637315 () Bool)

(assert (=> b!1407420 (=> (not res!637315) (not e!898450))))

(assert (=> b!1407420 (= res!637315 (= (size!11790 lt!469783) (+ (size!11790 lt!469490) (size!11790 (getSuffix!643 lt!469500 lt!469490)))))))

(declare-fun b!1407418 () Bool)

(assert (=> b!1407418 (= e!898449 (getSuffix!643 lt!469500 lt!469490))))

(assert (= (and d!401960 c!231403) b!1407418))

(assert (= (and d!401960 (not c!231403)) b!1407419))

(assert (= (and d!401960 res!637316) b!1407420))

(assert (= (and b!1407420 res!637315) b!1407421))

(assert (=> b!1407419 m!1584095))

(declare-fun m!1585265 () Bool)

(assert (=> b!1407419 m!1585265))

(declare-fun m!1585267 () Bool)

(assert (=> d!401960 m!1585267))

(assert (=> d!401960 m!1585035))

(assert (=> d!401960 m!1584095))

(declare-fun m!1585269 () Bool)

(assert (=> d!401960 m!1585269))

(declare-fun m!1585271 () Bool)

(assert (=> b!1407420 m!1585271))

(declare-fun m!1585273 () Bool)

(assert (=> b!1407420 m!1585273))

(assert (=> b!1407420 m!1584095))

(declare-fun m!1585275 () Bool)

(assert (=> b!1407420 m!1585275))

(assert (=> b!1406608 d!401960))

(declare-fun d!401962 () Bool)

(declare-fun lt!469786 () List!14393)

(assert (=> d!401962 (= (++!3726 lt!469490 lt!469786) lt!469500)))

(declare-fun e!898453 () List!14393)

(assert (=> d!401962 (= lt!469786 e!898453)))

(declare-fun c!231406 () Bool)

(assert (=> d!401962 (= c!231406 ((_ is Cons!14327) lt!469490))))

(assert (=> d!401962 (>= (size!11790 lt!469500) (size!11790 lt!469490))))

(assert (=> d!401962 (= (getSuffix!643 lt!469500 lt!469490) lt!469786)))

(declare-fun b!1407426 () Bool)

(assert (=> b!1407426 (= e!898453 (getSuffix!643 (tail!2042 lt!469500) (t!123062 lt!469490)))))

(declare-fun b!1407427 () Bool)

(assert (=> b!1407427 (= e!898453 lt!469500)))

(assert (= (and d!401962 c!231406) b!1407426))

(assert (= (and d!401962 (not c!231406)) b!1407427))

(declare-fun m!1585277 () Bool)

(assert (=> d!401962 m!1585277))

(declare-fun m!1585279 () Bool)

(assert (=> d!401962 m!1585279))

(assert (=> d!401962 m!1585273))

(assert (=> b!1407426 m!1584313))

(assert (=> b!1407426 m!1584313))

(declare-fun m!1585281 () Bool)

(assert (=> b!1407426 m!1585281))

(assert (=> b!1406608 d!401962))

(declare-fun d!401964 () Bool)

(declare-fun lt!469789 () List!14393)

(declare-fun dynLambda!6648 (Int List!14393) Bool)

(assert (=> d!401964 (dynLambda!6648 lambda!62137 lt!469789)))

(declare-fun choose!8703 (Int) List!14393)

(assert (=> d!401964 (= lt!469789 (choose!8703 lambda!62137))))

(assert (=> d!401964 (Exists!947 lambda!62137)))

(assert (=> d!401964 (= (pickWitness!250 lambda!62137) lt!469789)))

(declare-fun b_lambda!44407 () Bool)

(assert (=> (not b_lambda!44407) (not d!401964)))

(declare-fun bs!338621 () Bool)

(assert (= bs!338621 d!401964))

(declare-fun m!1585283 () Bool)

(assert (=> bs!338621 m!1585283))

(declare-fun m!1585285 () Bool)

(assert (=> bs!338621 m!1585285))

(assert (=> bs!338621 m!1584127))

(assert (=> b!1406608 d!401964))

(declare-fun d!401966 () Bool)

(declare-fun prefixMatchZipperSequence!308 (Regex!3797 BalanceConc!9392) Bool)

(declare-fun ++!3728 (BalanceConc!9392 BalanceConc!9392) BalanceConc!9392)

(declare-fun singletonSeq!1152 (C!7884) BalanceConc!9392)

(assert (=> d!401966 (= (separableTokensPredicate!461 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!308 (rulesRegex!366 thiss!19762 rules!2550) (++!3728 (charsOf!1455 t1!34) (singletonSeq!1152 (apply!3667 (charsOf!1455 t2!34) 0))))))))

(declare-fun bs!338622 () Bool)

(assert (= bs!338622 d!401966))

(assert (=> bs!338622 m!1584175))

(assert (=> bs!338622 m!1584115))

(declare-fun m!1585287 () Bool)

(assert (=> bs!338622 m!1585287))

(assert (=> bs!338622 m!1585287))

(declare-fun m!1585289 () Bool)

(assert (=> bs!338622 m!1585289))

(assert (=> bs!338622 m!1584115))

(assert (=> bs!338622 m!1584175))

(declare-fun m!1585291 () Bool)

(assert (=> bs!338622 m!1585291))

(declare-fun m!1585293 () Bool)

(assert (=> bs!338622 m!1585293))

(assert (=> bs!338622 m!1584171))

(assert (=> bs!338622 m!1584171))

(assert (=> bs!338622 m!1585289))

(assert (=> bs!338622 m!1585291))

(assert (=> b!1406607 d!401966))

(declare-fun d!401968 () Bool)

(declare-fun lt!469790 () Bool)

(declare-fun e!898454 () Bool)

(assert (=> d!401968 (= lt!469790 e!898454)))

(declare-fun res!637317 () Bool)

(assert (=> d!401968 (=> (not res!637317) (not e!898454))))

(assert (=> d!401968 (= res!637317 (= (list!5598 (_1!7867 (lex!1003 thiss!19762 rules!2550 (print!942 thiss!19762 (singletonSeq!1150 t1!34))))) (list!5598 (singletonSeq!1150 t1!34))))))

(declare-fun e!898455 () Bool)

(assert (=> d!401968 (= lt!469790 e!898455)))

(declare-fun res!637318 () Bool)

(assert (=> d!401968 (=> (not res!637318) (not e!898455))))

(declare-fun lt!469791 () tuple2!13962)

(assert (=> d!401968 (= res!637318 (= (size!11793 (_1!7867 lt!469791)) 1))))

(assert (=> d!401968 (= lt!469791 (lex!1003 thiss!19762 rules!2550 (print!942 thiss!19762 (singletonSeq!1150 t1!34))))))

(assert (=> d!401968 (not (isEmpty!8721 rules!2550))))

(assert (=> d!401968 (= (rulesProduceIndividualToken!1147 thiss!19762 rules!2550 t1!34) lt!469790)))

(declare-fun b!1407428 () Bool)

(declare-fun res!637319 () Bool)

(assert (=> b!1407428 (=> (not res!637319) (not e!898455))))

(assert (=> b!1407428 (= res!637319 (= (apply!3673 (_1!7867 lt!469791) 0) t1!34))))

(declare-fun b!1407429 () Bool)

(assert (=> b!1407429 (= e!898455 (isEmpty!8720 (_2!7867 lt!469791)))))

(declare-fun b!1407430 () Bool)

(assert (=> b!1407430 (= e!898454 (isEmpty!8720 (_2!7867 (lex!1003 thiss!19762 rules!2550 (print!942 thiss!19762 (singletonSeq!1150 t1!34))))))))

(assert (= (and d!401968 res!637318) b!1407428))

(assert (= (and b!1407428 res!637319) b!1407429))

(assert (= (and d!401968 res!637317) b!1407430))

(assert (=> d!401968 m!1584245))

(assert (=> d!401968 m!1584103))

(assert (=> d!401968 m!1584103))

(assert (=> d!401968 m!1585009))

(declare-fun m!1585295 () Bool)

(assert (=> d!401968 m!1585295))

(declare-fun m!1585297 () Bool)

(assert (=> d!401968 m!1585297))

(assert (=> d!401968 m!1584105))

(declare-fun m!1585299 () Bool)

(assert (=> d!401968 m!1585299))

(assert (=> d!401968 m!1584103))

(assert (=> d!401968 m!1584105))

(declare-fun m!1585301 () Bool)

(assert (=> b!1407428 m!1585301))

(declare-fun m!1585303 () Bool)

(assert (=> b!1407429 m!1585303))

(assert (=> b!1407430 m!1584103))

(assert (=> b!1407430 m!1584103))

(assert (=> b!1407430 m!1584105))

(assert (=> b!1407430 m!1584105))

(assert (=> b!1407430 m!1585299))

(declare-fun m!1585305 () Bool)

(assert (=> b!1407430 m!1585305))

(assert (=> b!1406586 d!401968))

(declare-fun d!401970 () Bool)

(assert (=> d!401970 (= (isEmpty!8721 rules!2550) ((_ is Nil!14328) rules!2550))))

(assert (=> b!1406585 d!401970))

(declare-fun d!401972 () Bool)

(declare-fun lt!469792 () Bool)

(assert (=> d!401972 (= lt!469792 (select (content!2131 lt!469490) lt!469489))))

(declare-fun e!898457 () Bool)

(assert (=> d!401972 (= lt!469792 e!898457)))

(declare-fun res!637320 () Bool)

(assert (=> d!401972 (=> (not res!637320) (not e!898457))))

(assert (=> d!401972 (= res!637320 ((_ is Cons!14327) lt!469490))))

(assert (=> d!401972 (= (contains!2832 lt!469490 lt!469489) lt!469792)))

(declare-fun b!1407431 () Bool)

(declare-fun e!898456 () Bool)

(assert (=> b!1407431 (= e!898457 e!898456)))

(declare-fun res!637321 () Bool)

(assert (=> b!1407431 (=> res!637321 e!898456)))

(assert (=> b!1407431 (= res!637321 (= (h!19728 lt!469490) lt!469489))))

(declare-fun b!1407432 () Bool)

(assert (=> b!1407432 (= e!898456 (contains!2832 (t!123062 lt!469490) lt!469489))))

(assert (= (and d!401972 res!637320) b!1407431))

(assert (= (and b!1407431 (not res!637321)) b!1407432))

(assert (=> d!401972 m!1585035))

(declare-fun m!1585307 () Bool)

(assert (=> d!401972 m!1585307))

(declare-fun m!1585309 () Bool)

(assert (=> b!1407432 m!1585309))

(assert (=> b!1406564 d!401972))

(declare-fun b!1407433 () Bool)

(declare-fun e!898459 () tuple2!13960)

(assert (=> b!1407433 (= e!898459 (tuple2!13961 Nil!14329 (list!5597 lt!469492)))))

(declare-fun b!1407434 () Bool)

(declare-fun e!898460 () Bool)

(declare-fun lt!469795 () tuple2!13960)

(assert (=> b!1407434 (= e!898460 (not (isEmpty!8730 (_1!7866 lt!469795))))))

(declare-fun b!1407435 () Bool)

(declare-fun e!898458 () Bool)

(assert (=> b!1407435 (= e!898458 (= (_2!7866 lt!469795) (list!5597 lt!469492)))))

(declare-fun b!1407436 () Bool)

(declare-fun lt!469794 () Option!2746)

(declare-fun lt!469793 () tuple2!13960)

(assert (=> b!1407436 (= e!898459 (tuple2!13961 (Cons!14329 (_1!7865 (v!21705 lt!469794)) (_1!7866 lt!469793)) (_2!7866 lt!469793)))))

(assert (=> b!1407436 (= lt!469793 (lexList!692 thiss!19762 rules!2550 (_2!7865 (v!21705 lt!469794))))))

(declare-fun d!401974 () Bool)

(assert (=> d!401974 e!898458))

(declare-fun c!231408 () Bool)

(assert (=> d!401974 (= c!231408 (> (size!11794 (_1!7866 lt!469795)) 0))))

(assert (=> d!401974 (= lt!469795 e!898459)))

(declare-fun c!231407 () Bool)

(assert (=> d!401974 (= c!231407 ((_ is Some!2745) lt!469794))))

(assert (=> d!401974 (= lt!469794 (maxPrefix!1152 thiss!19762 rules!2550 (list!5597 lt!469492)))))

(assert (=> d!401974 (= (lexList!692 thiss!19762 rules!2550 (list!5597 lt!469492)) lt!469795)))

(declare-fun b!1407437 () Bool)

(assert (=> b!1407437 (= e!898458 e!898460)))

(declare-fun res!637322 () Bool)

(assert (=> b!1407437 (= res!637322 (< (size!11790 (_2!7866 lt!469795)) (size!11790 (list!5597 lt!469492))))))

(assert (=> b!1407437 (=> (not res!637322) (not e!898460))))

(assert (= (and d!401974 c!231407) b!1407436))

(assert (= (and d!401974 (not c!231407)) b!1407433))

(assert (= (and d!401974 c!231408) b!1407437))

(assert (= (and d!401974 (not c!231408)) b!1407435))

(assert (= (and b!1407437 res!637322) b!1407434))

(declare-fun m!1585311 () Bool)

(assert (=> b!1407434 m!1585311))

(declare-fun m!1585313 () Bool)

(assert (=> b!1407436 m!1585313))

(declare-fun m!1585315 () Bool)

(assert (=> d!401974 m!1585315))

(assert (=> d!401974 m!1584089))

(declare-fun m!1585317 () Bool)

(assert (=> d!401974 m!1585317))

(declare-fun m!1585319 () Bool)

(assert (=> b!1407437 m!1585319))

(assert (=> b!1407437 m!1584089))

(declare-fun m!1585321 () Bool)

(assert (=> b!1407437 m!1585321))

(assert (=> b!1406563 d!401974))

(declare-fun d!401976 () Bool)

(assert (=> d!401976 (= (list!5597 lt!469492) (list!5601 (c!231228 lt!469492)))))

(declare-fun bs!338623 () Bool)

(assert (= bs!338623 d!401976))

(declare-fun m!1585323 () Bool)

(assert (=> bs!338623 m!1585323))

(assert (=> b!1406563 d!401976))

(declare-fun d!401978 () Bool)

(declare-fun lt!469796 () Bool)

(assert (=> d!401978 (= lt!469796 (select (content!2132 rules!2550) lt!469511))))

(declare-fun e!898462 () Bool)

(assert (=> d!401978 (= lt!469796 e!898462)))

(declare-fun res!637324 () Bool)

(assert (=> d!401978 (=> (not res!637324) (not e!898462))))

(assert (=> d!401978 (= res!637324 ((_ is Cons!14328) rules!2550))))

(assert (=> d!401978 (= (contains!2831 rules!2550 lt!469511) lt!469796)))

(declare-fun b!1407438 () Bool)

(declare-fun e!898461 () Bool)

(assert (=> b!1407438 (= e!898462 e!898461)))

(declare-fun res!637323 () Bool)

(assert (=> b!1407438 (=> res!637323 e!898461)))

(assert (=> b!1407438 (= res!637323 (= (h!19729 rules!2550) lt!469511))))

(declare-fun b!1407439 () Bool)

(assert (=> b!1407439 (= e!898461 (contains!2831 (t!123063 rules!2550) lt!469511))))

(assert (= (and d!401978 res!637324) b!1407438))

(assert (= (and b!1407438 (not res!637323)) b!1407439))

(assert (=> d!401978 m!1584439))

(declare-fun m!1585325 () Bool)

(assert (=> d!401978 m!1585325))

(declare-fun m!1585327 () Bool)

(assert (=> b!1407439 m!1585327))

(assert (=> b!1406606 d!401978))

(declare-fun b!1407444 () Bool)

(declare-fun e!898465 () Bool)

(declare-fun tp_is_empty!6823 () Bool)

(declare-fun tp!399620 () Bool)

(assert (=> b!1407444 (= e!898465 (and tp_is_empty!6823 tp!399620))))

(assert (=> b!1406568 (= tp!399561 e!898465)))

(assert (= (and b!1406568 ((_ is Cons!14327) (originalCharacters!3345 t1!34))) b!1407444))

(declare-fun b!1407458 () Bool)

(declare-fun e!898468 () Bool)

(declare-fun tp!399632 () Bool)

(declare-fun tp!399634 () Bool)

(assert (=> b!1407458 (= e!898468 (and tp!399632 tp!399634))))

(declare-fun b!1407456 () Bool)

(declare-fun tp!399633 () Bool)

(declare-fun tp!399631 () Bool)

(assert (=> b!1407456 (= e!898468 (and tp!399633 tp!399631))))

(assert (=> b!1406583 (= tp!399559 e!898468)))

(declare-fun b!1407457 () Bool)

(declare-fun tp!399635 () Bool)

(assert (=> b!1407457 (= e!898468 tp!399635)))

(declare-fun b!1407455 () Bool)

(assert (=> b!1407455 (= e!898468 tp_is_empty!6823)))

(assert (= (and b!1406583 ((_ is ElementMatch!3797) (regex!2483 (rule!4246 t2!34)))) b!1407455))

(assert (= (and b!1406583 ((_ is Concat!6371) (regex!2483 (rule!4246 t2!34)))) b!1407456))

(assert (= (and b!1406583 ((_ is Star!3797) (regex!2483 (rule!4246 t2!34)))) b!1407457))

(assert (= (and b!1406583 ((_ is Union!3797) (regex!2483 (rule!4246 t2!34)))) b!1407458))

(declare-fun b!1407462 () Bool)

(declare-fun e!898469 () Bool)

(declare-fun tp!399637 () Bool)

(declare-fun tp!399639 () Bool)

(assert (=> b!1407462 (= e!898469 (and tp!399637 tp!399639))))

(declare-fun b!1407460 () Bool)

(declare-fun tp!399638 () Bool)

(declare-fun tp!399636 () Bool)

(assert (=> b!1407460 (= e!898469 (and tp!399638 tp!399636))))

(assert (=> b!1406571 (= tp!399565 e!898469)))

(declare-fun b!1407461 () Bool)

(declare-fun tp!399640 () Bool)

(assert (=> b!1407461 (= e!898469 tp!399640)))

(declare-fun b!1407459 () Bool)

(assert (=> b!1407459 (= e!898469 tp_is_empty!6823)))

(assert (= (and b!1406571 ((_ is ElementMatch!3797) (regex!2483 (h!19729 rules!2550)))) b!1407459))

(assert (= (and b!1406571 ((_ is Concat!6371) (regex!2483 (h!19729 rules!2550)))) b!1407460))

(assert (= (and b!1406571 ((_ is Star!3797) (regex!2483 (h!19729 rules!2550)))) b!1407461))

(assert (= (and b!1406571 ((_ is Union!3797) (regex!2483 (h!19729 rules!2550)))) b!1407462))

(declare-fun b!1407473 () Bool)

(declare-fun b_free!34371 () Bool)

(declare-fun b_next!35075 () Bool)

(assert (=> b!1407473 (= b_free!34371 (not b_next!35075))))

(declare-fun tp!399649 () Bool)

(declare-fun b_and!94243 () Bool)

(assert (=> b!1407473 (= tp!399649 b_and!94243)))

(declare-fun b_free!34373 () Bool)

(declare-fun b_next!35077 () Bool)

(assert (=> b!1407473 (= b_free!34373 (not b_next!35077))))

(declare-fun t!123099 () Bool)

(declare-fun tb!73205 () Bool)

(assert (=> (and b!1407473 (= (toChars!3633 (transformation!2483 (h!19729 (t!123063 rules!2550)))) (toChars!3633 (transformation!2483 (rule!4246 t1!34)))) t!123099) tb!73205))

(declare-fun result!89034 () Bool)

(assert (= result!89034 result!88990))

(assert (=> b!1406838 t!123099))

(declare-fun t!123101 () Bool)

(declare-fun tb!73207 () Bool)

(assert (=> (and b!1407473 (= (toChars!3633 (transformation!2483 (h!19729 (t!123063 rules!2550)))) (toChars!3633 (transformation!2483 (rule!4246 t2!34)))) t!123101) tb!73207))

(declare-fun result!89036 () Bool)

(assert (= result!89036 result!88998))

(assert (=> b!1406845 t!123101))

(assert (=> d!401912 t!123101))

(assert (=> d!401950 t!123099))

(declare-fun tp!399651 () Bool)

(declare-fun b_and!94245 () Bool)

(assert (=> b!1407473 (= tp!399651 (and (=> t!123099 result!89034) (=> t!123101 result!89036) b_and!94245))))

(declare-fun e!898480 () Bool)

(assert (=> b!1407473 (= e!898480 (and tp!399649 tp!399651))))

(declare-fun e!898481 () Bool)

(declare-fun b!1407472 () Bool)

(declare-fun tp!399650 () Bool)

(assert (=> b!1407472 (= e!898481 (and tp!399650 (inv!18622 (tag!2745 (h!19729 (t!123063 rules!2550)))) (inv!18626 (transformation!2483 (h!19729 (t!123063 rules!2550)))) e!898480))))

(declare-fun b!1407471 () Bool)

(declare-fun e!898478 () Bool)

(declare-fun tp!399652 () Bool)

(assert (=> b!1407471 (= e!898478 (and e!898481 tp!399652))))

(assert (=> b!1406587 (= tp!399558 e!898478)))

(assert (= b!1407472 b!1407473))

(assert (= b!1407471 b!1407472))

(assert (= (and b!1406587 ((_ is Cons!14328) (t!123063 rules!2550))) b!1407471))

(declare-fun m!1585329 () Bool)

(assert (=> b!1407472 m!1585329))

(declare-fun m!1585331 () Bool)

(assert (=> b!1407472 m!1585331))

(declare-fun b!1407477 () Bool)

(declare-fun e!898482 () Bool)

(declare-fun tp!399654 () Bool)

(declare-fun tp!399656 () Bool)

(assert (=> b!1407477 (= e!898482 (and tp!399654 tp!399656))))

(declare-fun b!1407475 () Bool)

(declare-fun tp!399655 () Bool)

(declare-fun tp!399653 () Bool)

(assert (=> b!1407475 (= e!898482 (and tp!399655 tp!399653))))

(assert (=> b!1406597 (= tp!399557 e!898482)))

(declare-fun b!1407476 () Bool)

(declare-fun tp!399657 () Bool)

(assert (=> b!1407476 (= e!898482 tp!399657)))

(declare-fun b!1407474 () Bool)

(assert (=> b!1407474 (= e!898482 tp_is_empty!6823)))

(assert (= (and b!1406597 ((_ is ElementMatch!3797) (regex!2483 (rule!4246 t1!34)))) b!1407474))

(assert (= (and b!1406597 ((_ is Concat!6371) (regex!2483 (rule!4246 t1!34)))) b!1407475))

(assert (= (and b!1406597 ((_ is Star!3797) (regex!2483 (rule!4246 t1!34)))) b!1407476))

(assert (= (and b!1406597 ((_ is Union!3797) (regex!2483 (rule!4246 t1!34)))) b!1407477))

(declare-fun b!1407478 () Bool)

(declare-fun e!898483 () Bool)

(declare-fun tp!399658 () Bool)

(assert (=> b!1407478 (= e!898483 (and tp_is_empty!6823 tp!399658))))

(assert (=> b!1406579 (= tp!399562 e!898483)))

(assert (= (and b!1406579 ((_ is Cons!14327) (originalCharacters!3345 t2!34))) b!1407478))

(declare-fun b_lambda!44409 () Bool)

(assert (= b_lambda!44397 (or b!1406604 b_lambda!44409)))

(declare-fun bs!338624 () Bool)

(declare-fun d!401980 () Bool)

(assert (= bs!338624 (and d!401980 b!1406604)))

(declare-fun res!637325 () Bool)

(declare-fun e!898484 () Bool)

(assert (=> bs!338624 (=> (not res!637325) (not e!898484))))

(assert (=> bs!338624 (= res!637325 (validRegex!1665 lt!469765))))

(assert (=> bs!338624 (= (dynLambda!6646 lambda!62139 lt!469765) e!898484)))

(declare-fun b!1407479 () Bool)

(assert (=> b!1407479 (= e!898484 (matchR!1788 lt!469765 lt!469500))))

(assert (= (and bs!338624 res!637325) b!1407479))

(declare-fun m!1585333 () Bool)

(assert (=> bs!338624 m!1585333))

(declare-fun m!1585335 () Bool)

(assert (=> b!1407479 m!1585335))

(assert (=> d!401926 d!401980))

(declare-fun b_lambda!44411 () Bool)

(assert (= b_lambda!44335 (or b!1406604 b_lambda!44411)))

(declare-fun bs!338625 () Bool)

(declare-fun d!401982 () Bool)

(assert (= bs!338625 (and d!401982 b!1406604)))

(assert (=> bs!338625 (= (dynLambda!6635 lambda!62138 (h!19729 rules!2550)) (regex!2483 (h!19729 rules!2550)))))

(assert (=> b!1406829 d!401982))

(declare-fun b_lambda!44413 () Bool)

(assert (= b_lambda!44351 (or b!1406592 b_lambda!44413)))

(declare-fun bs!338626 () Bool)

(declare-fun d!401984 () Bool)

(assert (= bs!338626 (and d!401984 b!1406592)))

(assert (=> bs!338626 (= (dynLambda!6639 lambda!62140 (h!19729 rules!2550)) (= (regex!2483 (h!19729 rules!2550)) lt!469493))))

(assert (=> b!1407081 d!401984))

(declare-fun b_lambda!44415 () Bool)

(assert (= b_lambda!44407 (or b!1406581 b_lambda!44415)))

(declare-fun bs!338627 () Bool)

(declare-fun d!401986 () Bool)

(assert (= bs!338627 (and d!401986 b!1406581)))

(declare-fun res!637326 () Bool)

(declare-fun e!898485 () Bool)

(assert (=> bs!338627 (=> (not res!637326) (not e!898485))))

(assert (=> bs!338627 (= res!637326 (matchR!1788 lt!469505 lt!469789))))

(assert (=> bs!338627 (= (dynLambda!6648 lambda!62137 lt!469789) e!898485)))

(declare-fun b!1407480 () Bool)

(assert (=> b!1407480 (= e!898485 (isPrefix!1164 lt!469490 lt!469789))))

(assert (= (and bs!338627 res!637326) b!1407480))

(declare-fun m!1585337 () Bool)

(assert (=> bs!338627 m!1585337))

(declare-fun m!1585339 () Bool)

(assert (=> b!1407480 m!1585339))

(assert (=> d!401964 d!401986))

(declare-fun b_lambda!44417 () Bool)

(assert (= b_lambda!44393 (or (and b!1406582 b_free!34357) (and b!1406576 b_free!34361 (= (toChars!3633 (transformation!2483 (h!19729 rules!2550))) (toChars!3633 (transformation!2483 (rule!4246 t2!34))))) (and b!1406600 b_free!34365 (= (toChars!3633 (transformation!2483 (rule!4246 t1!34))) (toChars!3633 (transformation!2483 (rule!4246 t2!34))))) (and b!1407473 b_free!34373 (= (toChars!3633 (transformation!2483 (h!19729 (t!123063 rules!2550)))) (toChars!3633 (transformation!2483 (rule!4246 t2!34))))) b_lambda!44417)))

(declare-fun b_lambda!44419 () Bool)

(assert (= b_lambda!44395 (or b!1406604 b_lambda!44419)))

(declare-fun bs!338628 () Bool)

(declare-fun d!401988 () Bool)

(assert (= bs!338628 (and d!401988 b!1406604)))

(declare-fun res!637327 () Bool)

(declare-fun e!898486 () Bool)

(assert (=> bs!338628 (=> (not res!637327) (not e!898486))))

(assert (=> bs!338628 (= res!637327 (validRegex!1665 (h!19731 (map!3185 rules!2550 lambda!62138))))))

(assert (=> bs!338628 (= (dynLambda!6646 lambda!62139 (h!19731 (map!3185 rules!2550 lambda!62138))) e!898486)))

(declare-fun b!1407481 () Bool)

(assert (=> b!1407481 (= e!898486 (matchR!1788 (h!19731 (map!3185 rules!2550 lambda!62138)) lt!469500))))

(assert (= (and bs!338628 res!637327) b!1407481))

(declare-fun m!1585341 () Bool)

(assert (=> bs!338628 m!1585341))

(declare-fun m!1585343 () Bool)

(assert (=> b!1407481 m!1585343))

(assert (=> b!1407326 d!401988))

(declare-fun b_lambda!44421 () Bool)

(assert (= b_lambda!44399 (or b!1406588 b_lambda!44421)))

(declare-fun bs!338629 () Bool)

(declare-fun d!401990 () Bool)

(assert (= bs!338629 (and d!401990 b!1406588)))

(declare-fun ruleValid!624 (LexerInterface!2178 Rule!4766) Bool)

(assert (=> bs!338629 (= (dynLambda!6639 lambda!62141 (rule!4246 t2!34)) (ruleValid!624 thiss!19762 (rule!4246 t2!34)))))

(declare-fun m!1585345 () Bool)

(assert (=> bs!338629 m!1585345))

(assert (=> d!401938 d!401990))

(declare-fun b_lambda!44423 () Bool)

(assert (= b_lambda!44403 (or b!1406588 b_lambda!44423)))

(declare-fun bs!338630 () Bool)

(declare-fun d!401992 () Bool)

(assert (= bs!338630 (and d!401992 b!1406588)))

(assert (=> bs!338630 (= (dynLambda!6639 lambda!62141 lt!469511) (ruleValid!624 thiss!19762 lt!469511))))

(declare-fun m!1585347 () Bool)

(assert (=> bs!338630 m!1585347))

(assert (=> d!401942 d!401992))

(declare-fun b_lambda!44425 () Bool)

(assert (= b_lambda!44349 (or b!1406592 b_lambda!44425)))

(declare-fun bs!338631 () Bool)

(declare-fun d!401994 () Bool)

(assert (= bs!338631 (and d!401994 b!1406592)))

(assert (=> bs!338631 (= (dynLambda!6639 lambda!62140 lt!469681) (= (regex!2483 lt!469681) lt!469493))))

(assert (=> d!401784 d!401994))

(declare-fun b_lambda!44427 () Bool)

(assert (= b_lambda!44339 (or (and b!1406582 b_free!34357) (and b!1406576 b_free!34361 (= (toChars!3633 (transformation!2483 (h!19729 rules!2550))) (toChars!3633 (transformation!2483 (rule!4246 t2!34))))) (and b!1406600 b_free!34365 (= (toChars!3633 (transformation!2483 (rule!4246 t1!34))) (toChars!3633 (transformation!2483 (rule!4246 t2!34))))) (and b!1407473 b_free!34373 (= (toChars!3633 (transformation!2483 (h!19729 (t!123063 rules!2550)))) (toChars!3633 (transformation!2483 (rule!4246 t2!34))))) b_lambda!44427)))

(declare-fun b_lambda!44429 () Bool)

(assert (= b_lambda!44401 (or b!1406588 b_lambda!44429)))

(declare-fun bs!338632 () Bool)

(declare-fun d!401996 () Bool)

(assert (= bs!338632 (and d!401996 b!1406588)))

(assert (=> bs!338632 (= (dynLambda!6639 lambda!62141 (rule!4246 t1!34)) (ruleValid!624 thiss!19762 (rule!4246 t1!34)))))

(declare-fun m!1585349 () Bool)

(assert (=> bs!338632 m!1585349))

(assert (=> d!401940 d!401996))

(declare-fun b_lambda!44431 () Bool)

(assert (= b_lambda!44405 (or (and b!1406582 b_free!34357 (= (toChars!3633 (transformation!2483 (rule!4246 t2!34))) (toChars!3633 (transformation!2483 (rule!4246 t1!34))))) (and b!1406576 b_free!34361 (= (toChars!3633 (transformation!2483 (h!19729 rules!2550))) (toChars!3633 (transformation!2483 (rule!4246 t1!34))))) (and b!1406600 b_free!34365) (and b!1407473 b_free!34373 (= (toChars!3633 (transformation!2483 (h!19729 (t!123063 rules!2550)))) (toChars!3633 (transformation!2483 (rule!4246 t1!34))))) b_lambda!44431)))

(declare-fun b_lambda!44433 () Bool)

(assert (= b_lambda!44337 (or (and b!1406582 b_free!34357 (= (toChars!3633 (transformation!2483 (rule!4246 t2!34))) (toChars!3633 (transformation!2483 (rule!4246 t1!34))))) (and b!1406576 b_free!34361 (= (toChars!3633 (transformation!2483 (h!19729 rules!2550))) (toChars!3633 (transformation!2483 (rule!4246 t1!34))))) (and b!1406600 b_free!34365) (and b!1407473 b_free!34373 (= (toChars!3633 (transformation!2483 (h!19729 (t!123063 rules!2550)))) (toChars!3633 (transformation!2483 (rule!4246 t1!34))))) b_lambda!44433)))

(check-sat (not b!1407472) (not b_next!35065) (not b!1407339) (not b!1407387) (not d!401796) (not bm!93749) b_and!94241 (not tb!73177) (not b!1407376) (not b!1407409) (not b!1407348) (not d!401704) (not bs!338630) (not d!401746) (not d!401936) (not d!401924) (not bm!93747) (not b!1407372) (not b_lambda!44429) (not b!1407426) (not d!401904) (not b!1407436) (not d!401968) (not b!1406966) (not d!401706) (not b!1407432) (not b!1407399) (not d!401938) (not b!1406701) (not d!401950) (not b!1407480) (not b!1407406) (not b!1407207) (not d!401960) (not d!401978) (not b!1407293) (not b_next!35063) (not b!1406804) (not bs!338628) (not b!1407344) (not b!1407378) (not b_lambda!44413) (not d!401754) (not b!1407082) (not b!1406839) (not bs!338632) (not d!401966) (not b!1406700) (not b!1407049) (not b!1406742) (not d!401948) (not d!401918) b_and!94243 (not d!401682) (not b_lambda!44425) (not b!1407084) (not b!1406800) (not d!401876) (not b!1407460) (not d!401714) (not d!401952) (not b!1407471) (not tb!73183) (not d!401940) (not b_lambda!44415) (not d!401780) (not bm!93721) (not b!1406967) (not d!401882) (not d!401914) (not d!401878) (not b!1407044) (not b!1406823) (not b!1407041) (not b_lambda!44417) (not bs!338627) (not d!401650) (not b!1407336) (not b!1407300) (not d!401942) (not b!1407358) (not bm!93763) tp_is_empty!6823 (not b!1406703) (not b!1406862) (not b_lambda!44431) (not d!401778) (not b!1406801) (not bm!93722) (not b!1406808) (not b!1407437) (not bm!93720) (not b!1407456) (not b_lambda!44409) (not bm!93711) (not bm!93728) (not b_next!35061) (not b!1407341) (not b!1407434) (not b!1407292) (not d!401946) (not b!1407350) (not b!1407388) (not b!1407043) (not bm!93762) (not b_next!35067) (not b!1407481) (not d!401680) (not bm!93766) (not d!401664) (not d!401756) (not b!1407430) (not b!1406984) (not b!1407354) (not b!1407285) (not b!1407457) (not b!1406829) (not d!401668) (not b!1407389) b_and!94237 (not b!1407051) (not d!401906) (not b!1407284) (not d!401690) (not b!1407206) (not b!1407304) b_and!94187 (not b!1407400) (not b!1407306) (not b_next!35075) (not d!401972) (not b!1406846) b_and!94183 (not d!401700) (not b!1407303) (not bs!338629) (not b!1407295) (not d!401794) b_and!94179 (not b!1407346) (not b!1407419) (not b!1406860) (not d!401708) (not b!1406968) (not b!1407429) (not d!401712) (not b!1407335) (not b!1407301) (not b!1407204) (not b!1407275) (not d!401976) (not b_lambda!44411) (not d!401696) (not b!1406844) (not d!401666) (not b!1407386) (not d!401784) (not bm!93765) (not b!1407298) (not d!401916) (not d!401954) (not b!1407368) (not b!1406707) (not d!401962) (not d!401692) (not b!1407362) (not bm!93764) (not b!1407382) (not d!401956) (not d!401674) (not b!1407360) (not b!1407330) (not b!1407477) (not bm!93748) (not d!401648) (not b!1407299) (not b!1407361) (not b!1406807) (not b!1406758) (not b!1407374) (not d!401922) (not b!1407364) (not b_lambda!44433) (not d!401718) (not b!1407296) (not b!1407083) (not d!401944) (not b_next!35059) (not b!1406806) (not b!1407475) (not b!1406699) (not d!401910) (not d!401702) (not d!401964) (not d!401672) (not b!1407327) (not b_next!35077) (not b!1406993) (not b!1407205) (not b!1407444) (not d!401688) (not d!401782) (not b!1406847) (not b_lambda!44421) (not b!1407325) (not b!1407420) (not b!1406803) (not b!1407273) (not b!1406864) (not b!1406697) (not b!1407461) b_and!94245 (not b!1406838) (not d!401880) (not b_lambda!44423) (not d!401912) (not b!1407476) (not b!1407462) (not b!1407439) (not b!1407337) (not b!1407375) (not b!1407302) (not b!1407458) (not bm!93761) (not b!1406845) (not bs!338624) (not b_next!35069) (not b!1407407) (not b!1407479) (not b!1406802) (not b!1407294) (not d!401870) b_and!94239 (not d!401908) (not b!1407478) (not b!1407347) (not b!1407428) (not bm!93767) (not b!1407312) (not d!401694) (not d!401926) (not d!401932) (not b_lambda!44427) (not d!401920) (not b!1407269) (not d!401934) (not b_lambda!44419) (not b!1406745) (not d!401974))
(check-sat (not b_next!35063) b_and!94243 (not b_next!35061) (not b_next!35067) b_and!94237 b_and!94187 b_and!94179 (not b_next!35059) (not b_next!35077) b_and!94245 (not b_next!35069) b_and!94239 (not b_next!35065) b_and!94241 (not b_next!35075) b_and!94183)
