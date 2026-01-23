; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116390 () Bool)

(assert start!116390)

(declare-fun b!1315098 () Bool)

(declare-fun b_free!31715 () Bool)

(declare-fun b_next!32419 () Bool)

(assert (=> b!1315098 (= b_free!31715 (not b_next!32419))))

(declare-fun tp!382797 () Bool)

(declare-fun b_and!87871 () Bool)

(assert (=> b!1315098 (= tp!382797 b_and!87871)))

(declare-fun b_free!31717 () Bool)

(declare-fun b_next!32421 () Bool)

(assert (=> b!1315098 (= b_free!31717 (not b_next!32421))))

(declare-fun tp!382798 () Bool)

(declare-fun b_and!87873 () Bool)

(assert (=> b!1315098 (= tp!382798 b_and!87873)))

(declare-fun b!1315100 () Bool)

(declare-fun b_free!31719 () Bool)

(declare-fun b_next!32423 () Bool)

(assert (=> b!1315100 (= b_free!31719 (not b_next!32423))))

(declare-fun tp!382793 () Bool)

(declare-fun b_and!87875 () Bool)

(assert (=> b!1315100 (= tp!382793 b_and!87875)))

(declare-fun b_free!31721 () Bool)

(declare-fun b_next!32425 () Bool)

(assert (=> b!1315100 (= b_free!31721 (not b_next!32425))))

(declare-fun tp!382794 () Bool)

(declare-fun b_and!87877 () Bool)

(assert (=> b!1315100 (= tp!382794 b_and!87877)))

(declare-fun b!1315065 () Bool)

(declare-fun b_free!31723 () Bool)

(declare-fun b_next!32427 () Bool)

(assert (=> b!1315065 (= b_free!31723 (not b_next!32427))))

(declare-fun tp!382802 () Bool)

(declare-fun b_and!87879 () Bool)

(assert (=> b!1315065 (= tp!382802 b_and!87879)))

(declare-fun b_free!31725 () Bool)

(declare-fun b_next!32429 () Bool)

(assert (=> b!1315065 (= b_free!31725 (not b_next!32429))))

(declare-fun tp!382801 () Bool)

(declare-fun b_and!87881 () Bool)

(assert (=> b!1315065 (= tp!382801 b_and!87881)))

(declare-fun b!1315084 () Bool)

(assert (=> b!1315084 true))

(assert (=> b!1315084 true))

(declare-fun b!1315094 () Bool)

(assert (=> b!1315094 true))

(declare-fun b!1315070 () Bool)

(assert (=> b!1315070 true))

(declare-fun bs!330278 () Bool)

(declare-fun b!1315067 () Bool)

(assert (= bs!330278 (and b!1315067 b!1315070)))

(declare-fun lambda!53529 () Int)

(declare-fun lambda!53528 () Int)

(assert (=> bs!330278 (not (= lambda!53529 lambda!53528))))

(assert (=> b!1315067 true))

(declare-fun e!843092 () Bool)

(declare-fun b!1315062 () Bool)

(declare-fun e!843098 () Bool)

(declare-fun tp!382795 () Bool)

(declare-datatypes ((List!13406 0))(
  ( (Nil!13340) (Cons!13340 (h!18741 (_ BitVec 16)) (t!118279 List!13406)) )
))
(declare-datatypes ((TokenValue!2399 0))(
  ( (FloatLiteralValue!4798 (text!17238 List!13406)) (TokenValueExt!2398 (__x!8627 Int)) (Broken!11995 (value!75413 List!13406)) (Object!2464) (End!2399) (Def!2399) (Underscore!2399) (Match!2399) (Else!2399) (Error!2399) (Case!2399) (If!2399) (Extends!2399) (Abstract!2399) (Class!2399) (Val!2399) (DelimiterValue!4798 (del!2459 List!13406)) (KeywordValue!2405 (value!75414 List!13406)) (CommentValue!4798 (value!75415 List!13406)) (WhitespaceValue!4798 (value!75416 List!13406)) (IndentationValue!2399 (value!75417 List!13406)) (String!16230) (Int32!2399) (Broken!11996 (value!75418 List!13406)) (Boolean!2400) (Unit!19395) (OperatorValue!2402 (op!2459 List!13406)) (IdentifierValue!4798 (value!75419 List!13406)) (IdentifierValue!4799 (value!75420 List!13406)) (WhitespaceValue!4799 (value!75421 List!13406)) (True!4798) (False!4798) (Broken!11997 (value!75422 List!13406)) (Broken!11998 (value!75423 List!13406)) (True!4799) (RightBrace!2399) (RightBracket!2399) (Colon!2399) (Null!2399) (Comma!2399) (LeftBracket!2399) (False!4799) (LeftBrace!2399) (ImaginaryLiteralValue!2399 (text!17239 List!13406)) (StringLiteralValue!7197 (value!75424 List!13406)) (EOFValue!2399 (value!75425 List!13406)) (IdentValue!2399 (value!75426 List!13406)) (DelimiterValue!4799 (value!75427 List!13406)) (DedentValue!2399 (value!75428 List!13406)) (NewLineValue!2399 (value!75429 List!13406)) (IntegerValue!7197 (value!75430 (_ BitVec 32)) (text!17240 List!13406)) (IntegerValue!7198 (value!75431 Int) (text!17241 List!13406)) (Times!2399) (Or!2399) (Equal!2399) (Minus!2399) (Broken!11999 (value!75432 List!13406)) (And!2399) (Div!2399) (LessEqual!2399) (Mod!2399) (Concat!6022) (Not!2399) (Plus!2399) (SpaceValue!2399 (value!75433 List!13406)) (IntegerValue!7199 (value!75434 Int) (text!17242 List!13406)) (StringLiteralValue!7198 (text!17243 List!13406)) (FloatLiteralValue!4799 (text!17244 List!13406)) (BytesLiteralValue!2399 (value!75435 List!13406)) (CommentValue!4799 (value!75436 List!13406)) (StringLiteralValue!7199 (value!75437 List!13406)) (ErrorTokenValue!2399 (msg!2460 List!13406)) )
))
(declare-datatypes ((C!7536 0))(
  ( (C!7537 (val!4328 Int)) )
))
(declare-datatypes ((List!13407 0))(
  ( (Nil!13341) (Cons!13341 (h!18742 C!7536) (t!118280 List!13407)) )
))
(declare-datatypes ((IArray!8781 0))(
  ( (IArray!8782 (innerList!4448 List!13407)) )
))
(declare-datatypes ((Conc!4388 0))(
  ( (Node!4388 (left!11468 Conc!4388) (right!11798 Conc!4388) (csize!9006 Int) (cheight!4599 Int)) (Leaf!6739 (xs!7103 IArray!8781) (csize!9007 Int)) (Empty!4388) )
))
(declare-datatypes ((BalanceConc!8716 0))(
  ( (BalanceConc!8717 (c!215720 Conc!4388)) )
))
(declare-datatypes ((Regex!3623 0))(
  ( (ElementMatch!3623 (c!215721 C!7536)) (Concat!6023 (regOne!7758 Regex!3623) (regTwo!7758 Regex!3623)) (EmptyExpr!3623) (Star!3623 (reg!3952 Regex!3623)) (EmptyLang!3623) (Union!3623 (regOne!7759 Regex!3623) (regTwo!7759 Regex!3623)) )
))
(declare-datatypes ((String!16231 0))(
  ( (String!16232 (value!75438 String)) )
))
(declare-datatypes ((TokenValueInjection!4458 0))(
  ( (TokenValueInjection!4459 (toValue!3532 Int) (toChars!3391 Int)) )
))
(declare-datatypes ((Rule!4418 0))(
  ( (Rule!4419 (regex!2309 Regex!3623) (tag!2571 String!16231) (isSeparator!2309 Bool) (transformation!2309 TokenValueInjection!4458)) )
))
(declare-datatypes ((Token!4280 0))(
  ( (Token!4281 (value!75439 TokenValue!2399) (rule!4050 Rule!4418) (size!10848 Int) (originalCharacters!3171 List!13407)) )
))
(declare-fun t2!34 () Token!4280)

(declare-fun inv!17711 (String!16231) Bool)

(declare-fun inv!17714 (TokenValueInjection!4458) Bool)

(assert (=> b!1315062 (= e!843092 (and tp!382795 (inv!17711 (tag!2571 (rule!4050 t2!34))) (inv!17714 (transformation!2309 (rule!4050 t2!34))) e!843098))))

(declare-fun b!1315063 () Bool)

(declare-fun res!590861 () Bool)

(declare-fun e!843107 () Bool)

(assert (=> b!1315063 (=> res!590861 e!843107)))

(declare-datatypes ((List!13408 0))(
  ( (Nil!13342) (Cons!13342 (h!18743 Rule!4418) (t!118281 List!13408)) )
))
(declare-fun rules!2550 () List!13408)

(declare-fun contains!2339 (List!13408 Rule!4418) Bool)

(assert (=> b!1315063 (= res!590861 (not (contains!2339 rules!2550 (rule!4050 t2!34))))))

(declare-fun b!1315064 () Bool)

(declare-fun res!590871 () Bool)

(assert (=> b!1315064 (=> res!590871 e!843107)))

(declare-datatypes ((List!13409 0))(
  ( (Nil!13343) (Cons!13343 (h!18744 Token!4280) (t!118282 List!13409)) )
))
(declare-datatypes ((IArray!8783 0))(
  ( (IArray!8784 (innerList!4449 List!13409)) )
))
(declare-datatypes ((Conc!4389 0))(
  ( (Node!4389 (left!11469 Conc!4389) (right!11799 Conc!4389) (csize!9008 Int) (cheight!4600 Int)) (Leaf!6740 (xs!7104 IArray!8783) (csize!9009 Int)) (Empty!4389) )
))
(declare-datatypes ((BalanceConc!8718 0))(
  ( (BalanceConc!8719 (c!215722 Conc!4389)) )
))
(declare-datatypes ((tuple2!12958 0))(
  ( (tuple2!12959 (_1!7365 BalanceConc!8718) (_2!7365 BalanceConc!8716)) )
))
(declare-fun lt!433580 () tuple2!12958)

(declare-fun isEmpty!7906 (BalanceConc!8716) Bool)

(assert (=> b!1315064 (= res!590871 (not (isEmpty!7906 (_2!7365 lt!433580))))))

(assert (=> b!1315065 (= e!843098 (and tp!382802 tp!382801))))

(declare-fun res!590848 () Bool)

(declare-fun e!843105 () Bool)

(assert (=> start!116390 (=> (not res!590848) (not e!843105))))

(declare-datatypes ((LexerInterface!2004 0))(
  ( (LexerInterfaceExt!2001 (__x!8628 Int)) (Lexer!2002) )
))
(declare-fun thiss!19762 () LexerInterface!2004)

(get-info :version)

(assert (=> start!116390 (= res!590848 ((_ is Lexer!2002) thiss!19762))))

(assert (=> start!116390 e!843105))

(assert (=> start!116390 true))

(declare-fun e!843108 () Bool)

(assert (=> start!116390 e!843108))

(declare-fun t1!34 () Token!4280)

(declare-fun e!843085 () Bool)

(declare-fun inv!17715 (Token!4280) Bool)

(assert (=> start!116390 (and (inv!17715 t1!34) e!843085)))

(declare-fun e!843088 () Bool)

(assert (=> start!116390 (and (inv!17715 t2!34) e!843088)))

(declare-fun b!1315066 () Bool)

(declare-fun res!590850 () Bool)

(declare-fun e!843096 () Bool)

(assert (=> b!1315066 (=> res!590850 e!843096)))

(assert (=> b!1315066 (= res!590850 (not (contains!2339 rules!2550 (rule!4050 t1!34))))))

(declare-fun validRegex!1549 (Regex!3623) Bool)

(assert (=> b!1315067 (= e!843107 (validRegex!1549 (regex!2309 (rule!4050 t1!34))))))

(declare-datatypes ((Unit!19396 0))(
  ( (Unit!19397) )
))
(declare-fun lt!433560 () Unit!19396)

(declare-fun forallContained!560 (List!13408 Int Rule!4418) Unit!19396)

(assert (=> b!1315067 (= lt!433560 (forallContained!560 rules!2550 lambda!53529 (rule!4050 t2!34)))))

(declare-fun lt!433578 () Unit!19396)

(assert (=> b!1315067 (= lt!433578 (forallContained!560 rules!2550 lambda!53529 (rule!4050 t1!34)))))

(declare-fun lt!433576 () Unit!19396)

(declare-fun lt!433573 () Rule!4418)

(assert (=> b!1315067 (= lt!433576 (forallContained!560 rules!2550 lambda!53529 lt!433573))))

(declare-fun b!1315068 () Bool)

(declare-fun res!590851 () Bool)

(assert (=> b!1315068 (=> (not res!590851) (not e!843105))))

(declare-fun isEmpty!7907 (List!13408) Bool)

(assert (=> b!1315068 (= res!590851 (not (isEmpty!7907 rules!2550)))))

(declare-fun b!1315069 () Bool)

(declare-fun res!590864 () Bool)

(assert (=> b!1315069 (=> res!590864 e!843107)))

(assert (=> b!1315069 (= res!590864 (not (contains!2339 rules!2550 lt!433573)))))

(declare-fun e!843097 () Bool)

(declare-fun e!843101 () Bool)

(assert (=> b!1315070 (= e!843097 e!843101)))

(declare-fun res!590862 () Bool)

(assert (=> b!1315070 (=> res!590862 e!843101)))

(declare-fun exists!320 (List!13408 Int) Bool)

(assert (=> b!1315070 (= res!590862 (not (exists!320 rules!2550 lambda!53528)))))

(assert (=> b!1315070 (exists!320 rules!2550 lambda!53528)))

(declare-fun lt!433567 () Regex!3623)

(declare-fun lt!433569 () Unit!19396)

(declare-fun lambda!53526 () Int)

(declare-fun lemmaMapContains!52 (List!13408 Int Regex!3623) Unit!19396)

(assert (=> b!1315070 (= lt!433569 (lemmaMapContains!52 rules!2550 lambda!53526 lt!433567))))

(declare-fun b!1315071 () Bool)

(assert (=> b!1315071 (= e!843096 e!843107)))

(declare-fun res!590865 () Bool)

(assert (=> b!1315071 (=> res!590865 e!843107)))

(declare-fun lt!433571 () List!13409)

(declare-fun list!5022 (BalanceConc!8718) List!13409)

(assert (=> b!1315071 (= res!590865 (not (= (list!5022 (_1!7365 lt!433580)) lt!433571)))))

(assert (=> b!1315071 (= lt!433571 (Cons!13343 t2!34 Nil!13343))))

(declare-fun lt!433572 () BalanceConc!8716)

(declare-fun lex!839 (LexerInterface!2004 List!13408 BalanceConc!8716) tuple2!12958)

(assert (=> b!1315071 (= lt!433580 (lex!839 thiss!19762 rules!2550 lt!433572))))

(declare-fun print!778 (LexerInterface!2004 BalanceConc!8718) BalanceConc!8716)

(declare-fun singletonSeq!888 (Token!4280) BalanceConc!8718)

(assert (=> b!1315071 (= lt!433572 (print!778 thiss!19762 (singletonSeq!888 t2!34)))))

(declare-fun b!1315072 () Bool)

(declare-fun res!590846 () Bool)

(assert (=> b!1315072 (=> (not res!590846) (not e!843105))))

(declare-fun rulesProduceIndividualToken!973 (LexerInterface!2004 List!13408 Token!4280) Bool)

(assert (=> b!1315072 (= res!590846 (rulesProduceIndividualToken!973 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1315073 () Bool)

(declare-fun e!843100 () Bool)

(declare-fun e!843093 () Bool)

(declare-fun tp!382800 () Bool)

(assert (=> b!1315073 (= e!843100 (and tp!382800 (inv!17711 (tag!2571 (h!18743 rules!2550))) (inv!17714 (transformation!2309 (h!18743 rules!2550))) e!843093))))

(declare-fun b!1315074 () Bool)

(declare-fun e!843094 () Bool)

(declare-fun e!843091 () Bool)

(assert (=> b!1315074 (= e!843094 e!843091)))

(declare-fun res!590872 () Bool)

(assert (=> b!1315074 (=> res!590872 e!843091)))

(declare-fun lt!433563 () List!13407)

(declare-fun lt!433579 () C!7536)

(declare-fun contains!2340 (List!13407 C!7536) Bool)

(assert (=> b!1315074 (= res!590872 (not (contains!2340 lt!433563 lt!433579)))))

(declare-fun lt!433565 () BalanceConc!8716)

(declare-fun apply!3027 (BalanceConc!8716 Int) C!7536)

(assert (=> b!1315074 (= lt!433579 (apply!3027 lt!433565 0))))

(declare-fun b!1315075 () Bool)

(declare-fun e!843102 () Bool)

(declare-fun e!843086 () Bool)

(declare-fun tp!382804 () Bool)

(assert (=> b!1315075 (= e!843102 (and tp!382804 (inv!17711 (tag!2571 (rule!4050 t1!34))) (inv!17714 (transformation!2309 (rule!4050 t1!34))) e!843086))))

(declare-fun b!1315076 () Bool)

(declare-fun res!590866 () Bool)

(assert (=> b!1315076 (=> res!590866 e!843091)))

(declare-fun lt!433561 () C!7536)

(assert (=> b!1315076 (= res!590866 (not (contains!2340 lt!433563 lt!433561)))))

(declare-fun b!1315077 () Bool)

(declare-fun res!590853 () Bool)

(assert (=> b!1315077 (=> res!590853 e!843091)))

(declare-fun lt!433562 () Regex!3623)

(declare-fun lt!433574 () List!13407)

(declare-fun matchR!1625 (Regex!3623 List!13407) Bool)

(assert (=> b!1315077 (= res!590853 (not (matchR!1625 lt!433562 lt!433574)))))

(declare-fun b!1315078 () Bool)

(declare-fun res!590867 () Bool)

(assert (=> b!1315078 (=> res!590867 e!843096)))

(declare-fun lt!433566 () List!13409)

(declare-fun lt!433558 () BalanceConc!8716)

(declare-datatypes ((tuple2!12960 0))(
  ( (tuple2!12961 (_1!7366 List!13409) (_2!7366 List!13407)) )
))
(declare-fun lexList!542 (LexerInterface!2004 List!13408 List!13407) tuple2!12960)

(declare-fun list!5023 (BalanceConc!8716) List!13407)

(assert (=> b!1315078 (= res!590867 (not (= (lexList!542 thiss!19762 rules!2550 (list!5023 lt!433558)) (tuple2!12961 lt!433566 Nil!13341))))))

(declare-fun b!1315079 () Bool)

(declare-fun e!843104 () Bool)

(assert (=> b!1315079 (= e!843105 e!843104)))

(declare-fun res!590852 () Bool)

(assert (=> b!1315079 (=> (not res!590852) (not e!843104))))

(declare-fun lt!433570 () BalanceConc!8716)

(declare-fun size!10849 (BalanceConc!8716) Int)

(assert (=> b!1315079 (= res!590852 (> (size!10849 lt!433570) 0))))

(declare-fun charsOf!1281 (Token!4280) BalanceConc!8716)

(assert (=> b!1315079 (= lt!433570 (charsOf!1281 t2!34))))

(declare-fun b!1315080 () Bool)

(declare-fun res!590849 () Bool)

(assert (=> b!1315080 (=> (not res!590849) (not e!843105))))

(assert (=> b!1315080 (= res!590849 (rulesProduceIndividualToken!973 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1315081 () Bool)

(declare-fun tp!382799 () Bool)

(declare-fun inv!21 (TokenValue!2399) Bool)

(assert (=> b!1315081 (= e!843085 (and (inv!21 (value!75439 t1!34)) e!843102 tp!382799))))

(declare-fun b!1315082 () Bool)

(declare-fun res!590868 () Bool)

(assert (=> b!1315082 (=> res!590868 e!843096)))

(declare-fun lt!433568 () tuple2!12958)

(assert (=> b!1315082 (= res!590868 (not (isEmpty!7906 (_2!7365 lt!433568))))))

(declare-fun b!1315083 () Bool)

(declare-fun res!590873 () Bool)

(assert (=> b!1315083 (=> res!590873 e!843107)))

(assert (=> b!1315083 (= res!590873 (not (= (lexList!542 thiss!19762 rules!2550 (list!5023 lt!433572)) (tuple2!12961 lt!433571 Nil!13341))))))

(declare-fun e!843090 () Bool)

(declare-fun e!843095 () Bool)

(assert (=> b!1315084 (= e!843090 (not e!843095))))

(declare-fun res!590858 () Bool)

(assert (=> b!1315084 (=> res!590858 e!843095)))

(declare-fun lambda!53525 () Int)

(declare-fun Exists!781 (Int) Bool)

(assert (=> b!1315084 (= res!590858 (not (Exists!781 lambda!53525)))))

(assert (=> b!1315084 (Exists!781 lambda!53525)))

(declare-fun lt!433559 () Unit!19396)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!99 (Regex!3623 List!13407) Unit!19396)

(assert (=> b!1315084 (= lt!433559 (lemmaPrefixMatchThenExistsStringThatMatches!99 lt!433562 lt!433563))))

(declare-fun b!1315085 () Bool)

(assert (=> b!1315085 (= e!843104 e!843090)))

(declare-fun res!590860 () Bool)

(assert (=> b!1315085 (=> (not res!590860) (not e!843090))))

(declare-fun prefixMatch!136 (Regex!3623 List!13407) Bool)

(assert (=> b!1315085 (= res!590860 (prefixMatch!136 lt!433562 lt!433563))))

(declare-fun rulesRegex!194 (LexerInterface!2004 List!13408) Regex!3623)

(assert (=> b!1315085 (= lt!433562 (rulesRegex!194 thiss!19762 rules!2550))))

(declare-fun lt!433577 () List!13407)

(declare-fun ++!3398 (List!13407 List!13407) List!13407)

(assert (=> b!1315085 (= lt!433563 (++!3398 lt!433577 (Cons!13341 lt!433561 Nil!13341)))))

(assert (=> b!1315085 (= lt!433561 (apply!3027 lt!433570 0))))

(assert (=> b!1315085 (= lt!433577 (list!5023 lt!433565))))

(assert (=> b!1315085 (= lt!433565 (charsOf!1281 t1!34))))

(declare-fun tp!382803 () Bool)

(declare-fun b!1315086 () Bool)

(assert (=> b!1315086 (= e!843088 (and (inv!21 (value!75439 t2!34)) e!843092 tp!382803))))

(declare-fun b!1315087 () Bool)

(assert (=> b!1315087 (= e!843101 e!843096)))

(declare-fun res!590874 () Bool)

(assert (=> b!1315087 (=> res!590874 e!843096)))

(assert (=> b!1315087 (= res!590874 (not (= (list!5022 (_1!7365 lt!433568)) lt!433566)))))

(assert (=> b!1315087 (= lt!433566 (Cons!13343 t1!34 Nil!13343))))

(assert (=> b!1315087 (= lt!433568 (lex!839 thiss!19762 rules!2550 lt!433558))))

(assert (=> b!1315087 (= lt!433558 (print!778 thiss!19762 (singletonSeq!888 t1!34)))))

(declare-fun getWitness!212 (List!13408 Int) Rule!4418)

(assert (=> b!1315087 (= lt!433573 (getWitness!212 rules!2550 lambda!53528))))

(declare-fun b!1315088 () Bool)

(declare-fun tp!382796 () Bool)

(assert (=> b!1315088 (= e!843108 (and e!843100 tp!382796))))

(declare-fun b!1315089 () Bool)

(declare-fun res!590847 () Bool)

(assert (=> b!1315089 (=> (not res!590847) (not e!843105))))

(declare-fun rulesInvariant!1874 (LexerInterface!2004 List!13408) Bool)

(assert (=> b!1315089 (= res!590847 (rulesInvariant!1874 thiss!19762 rules!2550))))

(declare-fun b!1315090 () Bool)

(declare-fun res!590855 () Bool)

(assert (=> b!1315090 (=> (not res!590855) (not e!843105))))

(assert (=> b!1315090 (= res!590855 (not (= (isSeparator!2309 (rule!4050 t1!34)) (isSeparator!2309 (rule!4050 t2!34)))))))

(declare-fun b!1315091 () Bool)

(declare-fun res!590856 () Bool)

(assert (=> b!1315091 (=> res!590856 e!843096)))

(declare-datatypes ((tuple2!12962 0))(
  ( (tuple2!12963 (_1!7367 Token!4280) (_2!7367 List!13407)) )
))
(declare-datatypes ((Option!2576 0))(
  ( (None!2575) (Some!2575 (v!21118 tuple2!12962)) )
))
(declare-fun maxPrefix!1014 (LexerInterface!2004 List!13408 List!13407) Option!2576)

(assert (=> b!1315091 (= res!590856 (not (= (maxPrefix!1014 thiss!19762 rules!2550 lt!433577) (Some!2575 (tuple2!12963 t1!34 Nil!13341)))))))

(declare-fun b!1315092 () Bool)

(declare-fun res!590870 () Bool)

(assert (=> b!1315092 (=> res!590870 e!843091)))

(assert (=> b!1315092 (= res!590870 (not (contains!2340 lt!433574 lt!433561)))))

(declare-fun b!1315093 () Bool)

(declare-fun res!590869 () Bool)

(assert (=> b!1315093 (=> (not res!590869) (not e!843104))))

(declare-fun sepAndNonSepRulesDisjointChars!682 (List!13408 List!13408) Bool)

(assert (=> b!1315093 (= res!590869 (sepAndNonSepRulesDisjointChars!682 rules!2550 rules!2550))))

(declare-fun e!843089 () Bool)

(assert (=> b!1315094 (= e!843091 e!843089)))

(declare-fun res!590845 () Bool)

(assert (=> b!1315094 (=> res!590845 e!843089)))

(declare-fun lambda!53527 () Int)

(declare-datatypes ((List!13410 0))(
  ( (Nil!13344) (Cons!13344 (h!18745 Regex!3623) (t!118283 List!13410)) )
))
(declare-fun exists!321 (List!13410 Int) Bool)

(declare-fun map!2930 (List!13408 Int) List!13410)

(assert (=> b!1315094 (= res!590845 (not (exists!321 (map!2930 rules!2550 lambda!53526) lambda!53527)))))

(declare-fun lt!433564 () List!13410)

(assert (=> b!1315094 (exists!321 lt!433564 lambda!53527)))

(declare-fun lt!433575 () Unit!19396)

(declare-fun matchRGenUnionSpec!60 (Regex!3623 List!13410 List!13407) Unit!19396)

(assert (=> b!1315094 (= lt!433575 (matchRGenUnionSpec!60 lt!433562 lt!433564 lt!433574))))

(assert (=> b!1315094 (= lt!433564 (map!2930 rules!2550 lambda!53526))))

(declare-fun b!1315095 () Bool)

(declare-fun res!590875 () Bool)

(assert (=> b!1315095 (=> res!590875 e!843107)))

(assert (=> b!1315095 (= res!590875 (not (= (maxPrefix!1014 thiss!19762 rules!2550 (list!5023 lt!433570)) (Some!2575 (tuple2!12963 t2!34 Nil!13341)))))))

(declare-fun b!1315096 () Bool)

(assert (=> b!1315096 (= e!843089 e!843097)))

(declare-fun res!590859 () Bool)

(assert (=> b!1315096 (=> res!590859 e!843097)))

(declare-fun contains!2341 (List!13410 Regex!3623) Bool)

(assert (=> b!1315096 (= res!590859 (not (contains!2341 (map!2930 rules!2550 lambda!53526) lt!433567)))))

(declare-fun getWitness!213 (List!13410 Int) Regex!3623)

(assert (=> b!1315096 (= lt!433567 (getWitness!213 (map!2930 rules!2550 lambda!53526) lambda!53527))))

(declare-fun b!1315097 () Bool)

(assert (=> b!1315097 (= e!843095 e!843094)))

(declare-fun res!590857 () Bool)

(assert (=> b!1315097 (=> res!590857 e!843094)))

(declare-fun getSuffix!479 (List!13407 List!13407) List!13407)

(assert (=> b!1315097 (= res!590857 (not (= lt!433574 (++!3398 lt!433563 (getSuffix!479 lt!433574 lt!433563)))))))

(declare-fun pickWitness!86 (Int) List!13407)

(assert (=> b!1315097 (= lt!433574 (pickWitness!86 lambda!53525))))

(assert (=> b!1315098 (= e!843093 (and tp!382797 tp!382798))))

(declare-fun b!1315099 () Bool)

(declare-fun res!590863 () Bool)

(assert (=> b!1315099 (=> res!590863 e!843091)))

(assert (=> b!1315099 (= res!590863 (not (contains!2340 lt!433574 lt!433579)))))

(assert (=> b!1315100 (= e!843086 (and tp!382793 tp!382794))))

(declare-fun b!1315101 () Bool)

(declare-fun res!590854 () Bool)

(assert (=> b!1315101 (=> (not res!590854) (not e!843104))))

(declare-fun separableTokensPredicate!287 (LexerInterface!2004 Token!4280 Token!4280 List!13408) Bool)

(assert (=> b!1315101 (= res!590854 (not (separableTokensPredicate!287 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (= (and start!116390 res!590848) b!1315068))

(assert (= (and b!1315068 res!590851) b!1315089))

(assert (= (and b!1315089 res!590847) b!1315080))

(assert (= (and b!1315080 res!590849) b!1315072))

(assert (= (and b!1315072 res!590846) b!1315090))

(assert (= (and b!1315090 res!590855) b!1315079))

(assert (= (and b!1315079 res!590852) b!1315093))

(assert (= (and b!1315093 res!590869) b!1315101))

(assert (= (and b!1315101 res!590854) b!1315085))

(assert (= (and b!1315085 res!590860) b!1315084))

(assert (= (and b!1315084 (not res!590858)) b!1315097))

(assert (= (and b!1315097 (not res!590857)) b!1315074))

(assert (= (and b!1315074 (not res!590872)) b!1315099))

(assert (= (and b!1315099 (not res!590863)) b!1315076))

(assert (= (and b!1315076 (not res!590866)) b!1315092))

(assert (= (and b!1315092 (not res!590870)) b!1315077))

(assert (= (and b!1315077 (not res!590853)) b!1315094))

(assert (= (and b!1315094 (not res!590845)) b!1315096))

(assert (= (and b!1315096 (not res!590859)) b!1315070))

(assert (= (and b!1315070 (not res!590862)) b!1315087))

(assert (= (and b!1315087 (not res!590874)) b!1315082))

(assert (= (and b!1315082 (not res!590868)) b!1315078))

(assert (= (and b!1315078 (not res!590867)) b!1315091))

(assert (= (and b!1315091 (not res!590856)) b!1315066))

(assert (= (and b!1315066 (not res!590850)) b!1315071))

(assert (= (and b!1315071 (not res!590865)) b!1315064))

(assert (= (and b!1315064 (not res!590871)) b!1315083))

(assert (= (and b!1315083 (not res!590873)) b!1315095))

(assert (= (and b!1315095 (not res!590875)) b!1315063))

(assert (= (and b!1315063 (not res!590861)) b!1315069))

(assert (= (and b!1315069 (not res!590864)) b!1315067))

(assert (= b!1315073 b!1315098))

(assert (= b!1315088 b!1315073))

(assert (= (and start!116390 ((_ is Cons!13342) rules!2550)) b!1315088))

(assert (= b!1315075 b!1315100))

(assert (= b!1315081 b!1315075))

(assert (= start!116390 b!1315081))

(assert (= b!1315062 b!1315065))

(assert (= b!1315086 b!1315062))

(assert (= start!116390 b!1315086))

(declare-fun m!1468299 () Bool)

(assert (=> b!1315078 m!1468299))

(assert (=> b!1315078 m!1468299))

(declare-fun m!1468301 () Bool)

(assert (=> b!1315078 m!1468301))

(declare-fun m!1468303 () Bool)

(assert (=> b!1315063 m!1468303))

(declare-fun m!1468305 () Bool)

(assert (=> b!1315083 m!1468305))

(assert (=> b!1315083 m!1468305))

(declare-fun m!1468307 () Bool)

(assert (=> b!1315083 m!1468307))

(declare-fun m!1468309 () Bool)

(assert (=> b!1315077 m!1468309))

(declare-fun m!1468311 () Bool)

(assert (=> b!1315073 m!1468311))

(declare-fun m!1468313 () Bool)

(assert (=> b!1315073 m!1468313))

(declare-fun m!1468315 () Bool)

(assert (=> b!1315081 m!1468315))

(declare-fun m!1468317 () Bool)

(assert (=> b!1315079 m!1468317))

(declare-fun m!1468319 () Bool)

(assert (=> b!1315079 m!1468319))

(declare-fun m!1468321 () Bool)

(assert (=> b!1315084 m!1468321))

(assert (=> b!1315084 m!1468321))

(declare-fun m!1468323 () Bool)

(assert (=> b!1315084 m!1468323))

(declare-fun m!1468325 () Bool)

(assert (=> b!1315071 m!1468325))

(declare-fun m!1468327 () Bool)

(assert (=> b!1315071 m!1468327))

(declare-fun m!1468329 () Bool)

(assert (=> b!1315071 m!1468329))

(assert (=> b!1315071 m!1468329))

(declare-fun m!1468331 () Bool)

(assert (=> b!1315071 m!1468331))

(declare-fun m!1468333 () Bool)

(assert (=> b!1315096 m!1468333))

(assert (=> b!1315096 m!1468333))

(declare-fun m!1468335 () Bool)

(assert (=> b!1315096 m!1468335))

(assert (=> b!1315096 m!1468333))

(assert (=> b!1315096 m!1468333))

(declare-fun m!1468337 () Bool)

(assert (=> b!1315096 m!1468337))

(declare-fun m!1468339 () Bool)

(assert (=> start!116390 m!1468339))

(declare-fun m!1468341 () Bool)

(assert (=> start!116390 m!1468341))

(declare-fun m!1468343 () Bool)

(assert (=> b!1315080 m!1468343))

(declare-fun m!1468345 () Bool)

(assert (=> b!1315074 m!1468345))

(declare-fun m!1468347 () Bool)

(assert (=> b!1315074 m!1468347))

(declare-fun m!1468349 () Bool)

(assert (=> b!1315089 m!1468349))

(declare-fun m!1468351 () Bool)

(assert (=> b!1315066 m!1468351))

(declare-fun m!1468353 () Bool)

(assert (=> b!1315069 m!1468353))

(assert (=> b!1315094 m!1468333))

(declare-fun m!1468355 () Bool)

(assert (=> b!1315094 m!1468355))

(declare-fun m!1468357 () Bool)

(assert (=> b!1315094 m!1468357))

(declare-fun m!1468359 () Bool)

(assert (=> b!1315094 m!1468359))

(assert (=> b!1315094 m!1468333))

(assert (=> b!1315094 m!1468333))

(declare-fun m!1468361 () Bool)

(assert (=> b!1315101 m!1468361))

(declare-fun m!1468363 () Bool)

(assert (=> b!1315086 m!1468363))

(declare-fun m!1468365 () Bool)

(assert (=> b!1315067 m!1468365))

(declare-fun m!1468367 () Bool)

(assert (=> b!1315067 m!1468367))

(declare-fun m!1468369 () Bool)

(assert (=> b!1315067 m!1468369))

(declare-fun m!1468371 () Bool)

(assert (=> b!1315067 m!1468371))

(declare-fun m!1468373 () Bool)

(assert (=> b!1315099 m!1468373))

(declare-fun m!1468375 () Bool)

(assert (=> b!1315091 m!1468375))

(declare-fun m!1468377 () Bool)

(assert (=> b!1315062 m!1468377))

(declare-fun m!1468379 () Bool)

(assert (=> b!1315062 m!1468379))

(declare-fun m!1468381 () Bool)

(assert (=> b!1315085 m!1468381))

(declare-fun m!1468383 () Bool)

(assert (=> b!1315085 m!1468383))

(declare-fun m!1468385 () Bool)

(assert (=> b!1315085 m!1468385))

(declare-fun m!1468387 () Bool)

(assert (=> b!1315085 m!1468387))

(declare-fun m!1468389 () Bool)

(assert (=> b!1315085 m!1468389))

(declare-fun m!1468391 () Bool)

(assert (=> b!1315085 m!1468391))

(declare-fun m!1468393 () Bool)

(assert (=> b!1315068 m!1468393))

(declare-fun m!1468395 () Bool)

(assert (=> b!1315082 m!1468395))

(declare-fun m!1468397 () Bool)

(assert (=> b!1315075 m!1468397))

(declare-fun m!1468399 () Bool)

(assert (=> b!1315075 m!1468399))

(declare-fun m!1468401 () Bool)

(assert (=> b!1315072 m!1468401))

(declare-fun m!1468403 () Bool)

(assert (=> b!1315070 m!1468403))

(assert (=> b!1315070 m!1468403))

(declare-fun m!1468405 () Bool)

(assert (=> b!1315070 m!1468405))

(declare-fun m!1468407 () Bool)

(assert (=> b!1315076 m!1468407))

(declare-fun m!1468409 () Bool)

(assert (=> b!1315095 m!1468409))

(assert (=> b!1315095 m!1468409))

(declare-fun m!1468411 () Bool)

(assert (=> b!1315095 m!1468411))

(declare-fun m!1468413 () Bool)

(assert (=> b!1315097 m!1468413))

(assert (=> b!1315097 m!1468413))

(declare-fun m!1468415 () Bool)

(assert (=> b!1315097 m!1468415))

(declare-fun m!1468417 () Bool)

(assert (=> b!1315097 m!1468417))

(declare-fun m!1468419 () Bool)

(assert (=> b!1315064 m!1468419))

(declare-fun m!1468421 () Bool)

(assert (=> b!1315087 m!1468421))

(declare-fun m!1468423 () Bool)

(assert (=> b!1315087 m!1468423))

(declare-fun m!1468425 () Bool)

(assert (=> b!1315087 m!1468425))

(assert (=> b!1315087 m!1468423))

(declare-fun m!1468427 () Bool)

(assert (=> b!1315087 m!1468427))

(declare-fun m!1468429 () Bool)

(assert (=> b!1315087 m!1468429))

(declare-fun m!1468431 () Bool)

(assert (=> b!1315093 m!1468431))

(declare-fun m!1468433 () Bool)

(assert (=> b!1315092 m!1468433))

(check-sat (not b!1315075) (not b!1315071) (not b!1315092) (not b!1315096) (not b!1315078) (not b_next!32425) (not b_next!32421) (not b!1315067) (not b!1315086) b_and!87879 (not b_next!32423) (not b!1315069) (not b!1315089) (not b!1315072) (not start!116390) (not b!1315082) (not b!1315094) b_and!87875 (not b!1315080) (not b_next!32419) (not b!1315066) (not b!1315077) b_and!87873 (not b!1315081) (not b!1315063) (not b!1315101) (not b!1315073) (not b!1315087) (not b!1315095) (not b!1315074) (not b_next!32429) (not b!1315079) (not b!1315097) (not b!1315084) (not b!1315091) (not b!1315088) (not b!1315083) (not b!1315093) b_and!87871 (not b_next!32427) (not b!1315068) (not b!1315099) b_and!87877 (not b!1315085) (not b!1315062) (not b!1315064) (not b!1315070) b_and!87881 (not b!1315076))
(check-sat b_and!87875 (not b_next!32419) b_and!87873 (not b_next!32429) (not b_next!32425) (not b_next!32421) b_and!87879 b_and!87877 b_and!87881 (not b_next!32423) b_and!87871 (not b_next!32427))
(get-model)

(declare-fun d!370537 () Bool)

(declare-fun lt!433618 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1873 (List!13410) (InoxSet Regex!3623))

(assert (=> d!370537 (= lt!433618 (select (content!1873 (map!2930 rules!2550 lambda!53526)) lt!433567))))

(declare-fun e!843161 () Bool)

(assert (=> d!370537 (= lt!433618 e!843161)))

(declare-fun res!590929 () Bool)

(assert (=> d!370537 (=> (not res!590929) (not e!843161))))

(assert (=> d!370537 (= res!590929 ((_ is Cons!13344) (map!2930 rules!2550 lambda!53526)))))

(assert (=> d!370537 (= (contains!2341 (map!2930 rules!2550 lambda!53526) lt!433567) lt!433618)))

(declare-fun b!1315206 () Bool)

(declare-fun e!843162 () Bool)

(assert (=> b!1315206 (= e!843161 e!843162)))

(declare-fun res!590930 () Bool)

(assert (=> b!1315206 (=> res!590930 e!843162)))

(assert (=> b!1315206 (= res!590930 (= (h!18745 (map!2930 rules!2550 lambda!53526)) lt!433567))))

(declare-fun b!1315207 () Bool)

(assert (=> b!1315207 (= e!843162 (contains!2341 (t!118283 (map!2930 rules!2550 lambda!53526)) lt!433567))))

(assert (= (and d!370537 res!590929) b!1315206))

(assert (= (and b!1315206 (not res!590930)) b!1315207))

(assert (=> d!370537 m!1468333))

(declare-fun m!1468513 () Bool)

(assert (=> d!370537 m!1468513))

(declare-fun m!1468515 () Bool)

(assert (=> d!370537 m!1468515))

(declare-fun m!1468519 () Bool)

(assert (=> b!1315207 m!1468519))

(assert (=> b!1315096 d!370537))

(declare-fun d!370545 () Bool)

(declare-fun lt!433622 () List!13410)

(declare-fun size!10856 (List!13410) Int)

(declare-fun size!10857 (List!13408) Int)

(assert (=> d!370545 (= (size!10856 lt!433622) (size!10857 rules!2550))))

(declare-fun e!843165 () List!13410)

(assert (=> d!370545 (= lt!433622 e!843165)))

(declare-fun c!215746 () Bool)

(assert (=> d!370545 (= c!215746 ((_ is Nil!13342) rules!2550))))

(assert (=> d!370545 (= (map!2930 rules!2550 lambda!53526) lt!433622)))

(declare-fun b!1315214 () Bool)

(assert (=> b!1315214 (= e!843165 Nil!13344)))

(declare-fun b!1315215 () Bool)

(declare-fun $colon$colon!151 (List!13410 Regex!3623) List!13410)

(declare-fun dynLambda!5817 (Int Rule!4418) Regex!3623)

(assert (=> b!1315215 (= e!843165 ($colon$colon!151 (map!2930 (t!118281 rules!2550) lambda!53526) (dynLambda!5817 lambda!53526 (h!18743 rules!2550))))))

(assert (= (and d!370545 c!215746) b!1315214))

(assert (= (and d!370545 (not c!215746)) b!1315215))

(declare-fun b_lambda!37995 () Bool)

(assert (=> (not b_lambda!37995) (not b!1315215)))

(declare-fun m!1468525 () Bool)

(assert (=> d!370545 m!1468525))

(declare-fun m!1468527 () Bool)

(assert (=> d!370545 m!1468527))

(declare-fun m!1468529 () Bool)

(assert (=> b!1315215 m!1468529))

(declare-fun m!1468531 () Bool)

(assert (=> b!1315215 m!1468531))

(assert (=> b!1315215 m!1468529))

(assert (=> b!1315215 m!1468531))

(declare-fun m!1468533 () Bool)

(assert (=> b!1315215 m!1468533))

(assert (=> b!1315096 d!370545))

(declare-fun e!843176 () Regex!3623)

(declare-fun b!1315228 () Bool)

(assert (=> b!1315228 (= e!843176 (getWitness!213 (t!118283 (map!2930 rules!2550 lambda!53526)) lambda!53527))))

(declare-fun b!1315229 () Bool)

(declare-fun lt!433628 () Unit!19396)

(declare-fun Unit!19398 () Unit!19396)

(assert (=> b!1315229 (= lt!433628 Unit!19398)))

(assert (=> b!1315229 false))

(declare-fun head!2272 (List!13410) Regex!3623)

(assert (=> b!1315229 (= e!843176 (head!2272 (map!2930 rules!2550 lambda!53526)))))

(declare-fun b!1315230 () Bool)

(declare-fun e!843175 () Bool)

(declare-fun dynLambda!5818 (Int Regex!3623) Bool)

(assert (=> b!1315230 (= e!843175 (dynLambda!5818 lambda!53527 (h!18745 (map!2930 rules!2550 lambda!53526))))))

(declare-fun b!1315231 () Bool)

(declare-fun e!843174 () Regex!3623)

(assert (=> b!1315231 (= e!843174 e!843176)))

(declare-fun c!215751 () Bool)

(assert (=> b!1315231 (= c!215751 ((_ is Cons!13344) (map!2930 rules!2550 lambda!53526)))))

(declare-fun d!370551 () Bool)

(declare-fun e!843177 () Bool)

(assert (=> d!370551 e!843177))

(declare-fun res!590935 () Bool)

(assert (=> d!370551 (=> (not res!590935) (not e!843177))))

(declare-fun lt!433627 () Regex!3623)

(assert (=> d!370551 (= res!590935 (dynLambda!5818 lambda!53527 lt!433627))))

(assert (=> d!370551 (= lt!433627 e!843174)))

(declare-fun c!215752 () Bool)

(assert (=> d!370551 (= c!215752 e!843175)))

(declare-fun res!590936 () Bool)

(assert (=> d!370551 (=> (not res!590936) (not e!843175))))

(assert (=> d!370551 (= res!590936 ((_ is Cons!13344) (map!2930 rules!2550 lambda!53526)))))

(assert (=> d!370551 (exists!321 (map!2930 rules!2550 lambda!53526) lambda!53527)))

(assert (=> d!370551 (= (getWitness!213 (map!2930 rules!2550 lambda!53526) lambda!53527) lt!433627)))

(declare-fun b!1315232 () Bool)

(assert (=> b!1315232 (= e!843177 (contains!2341 (map!2930 rules!2550 lambda!53526) lt!433627))))

(declare-fun b!1315233 () Bool)

(assert (=> b!1315233 (= e!843174 (h!18745 (map!2930 rules!2550 lambda!53526)))))

(assert (= (and d!370551 res!590936) b!1315230))

(assert (= (and d!370551 c!215752) b!1315233))

(assert (= (and d!370551 (not c!215752)) b!1315231))

(assert (= (and b!1315231 c!215751) b!1315228))

(assert (= (and b!1315231 (not c!215751)) b!1315229))

(assert (= (and d!370551 res!590935) b!1315232))

(declare-fun b_lambda!37997 () Bool)

(assert (=> (not b_lambda!37997) (not b!1315230)))

(declare-fun b_lambda!37999 () Bool)

(assert (=> (not b_lambda!37999) (not d!370551)))

(assert (=> b!1315229 m!1468333))

(declare-fun m!1468535 () Bool)

(assert (=> b!1315229 m!1468535))

(declare-fun m!1468537 () Bool)

(assert (=> d!370551 m!1468537))

(assert (=> d!370551 m!1468333))

(assert (=> d!370551 m!1468355))

(declare-fun m!1468539 () Bool)

(assert (=> b!1315228 m!1468539))

(declare-fun m!1468541 () Bool)

(assert (=> b!1315230 m!1468541))

(assert (=> b!1315232 m!1468333))

(declare-fun m!1468543 () Bool)

(assert (=> b!1315232 m!1468543))

(assert (=> b!1315096 d!370551))

(declare-fun b!1315272 () Bool)

(declare-fun res!590967 () Bool)

(declare-fun e!843200 () Bool)

(assert (=> b!1315272 (=> (not res!590967) (not e!843200))))

(declare-fun lt!433652 () Option!2576)

(declare-fun get!4256 (Option!2576) tuple2!12962)

(declare-fun apply!3031 (TokenValueInjection!4458 BalanceConc!8716) TokenValue!2399)

(declare-fun seqFromList!1596 (List!13407) BalanceConc!8716)

(assert (=> b!1315272 (= res!590967 (= (value!75439 (_1!7367 (get!4256 lt!433652))) (apply!3031 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))) (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!433652)))))))))

(declare-fun b!1315273 () Bool)

(declare-fun e!843199 () Option!2576)

(declare-fun lt!433651 () Option!2576)

(declare-fun lt!433653 () Option!2576)

(assert (=> b!1315273 (= e!843199 (ite (and ((_ is None!2575) lt!433651) ((_ is None!2575) lt!433653)) None!2575 (ite ((_ is None!2575) lt!433653) lt!433651 (ite ((_ is None!2575) lt!433651) lt!433653 (ite (>= (size!10848 (_1!7367 (v!21118 lt!433651))) (size!10848 (_1!7367 (v!21118 lt!433653)))) lt!433651 lt!433653)))))))

(declare-fun call!89389 () Option!2576)

(assert (=> b!1315273 (= lt!433651 call!89389)))

(assert (=> b!1315273 (= lt!433653 (maxPrefix!1014 thiss!19762 (t!118281 rules!2550) (list!5023 lt!433570)))))

(declare-fun b!1315274 () Bool)

(declare-fun res!590966 () Bool)

(assert (=> b!1315274 (=> (not res!590966) (not e!843200))))

(declare-fun size!10858 (List!13407) Int)

(assert (=> b!1315274 (= res!590966 (< (size!10858 (_2!7367 (get!4256 lt!433652))) (size!10858 (list!5023 lt!433570))))))

(declare-fun b!1315275 () Bool)

(declare-fun res!590969 () Bool)

(assert (=> b!1315275 (=> (not res!590969) (not e!843200))))

(assert (=> b!1315275 (= res!590969 (= (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652)))) (originalCharacters!3171 (_1!7367 (get!4256 lt!433652)))))))

(declare-fun b!1315276 () Bool)

(assert (=> b!1315276 (= e!843199 call!89389)))

(declare-fun d!370553 () Bool)

(declare-fun e!843198 () Bool)

(assert (=> d!370553 e!843198))

(declare-fun res!590970 () Bool)

(assert (=> d!370553 (=> res!590970 e!843198)))

(declare-fun isEmpty!7912 (Option!2576) Bool)

(assert (=> d!370553 (= res!590970 (isEmpty!7912 lt!433652))))

(assert (=> d!370553 (= lt!433652 e!843199)))

(declare-fun c!215758 () Bool)

(assert (=> d!370553 (= c!215758 (and ((_ is Cons!13342) rules!2550) ((_ is Nil!13342) (t!118281 rules!2550))))))

(declare-fun lt!433649 () Unit!19396)

(declare-fun lt!433650 () Unit!19396)

(assert (=> d!370553 (= lt!433649 lt!433650)))

(declare-fun isPrefix!1073 (List!13407 List!13407) Bool)

(assert (=> d!370553 (isPrefix!1073 (list!5023 lt!433570) (list!5023 lt!433570))))

(declare-fun lemmaIsPrefixRefl!752 (List!13407 List!13407) Unit!19396)

(assert (=> d!370553 (= lt!433650 (lemmaIsPrefixRefl!752 (list!5023 lt!433570) (list!5023 lt!433570)))))

(declare-fun rulesValidInductive!725 (LexerInterface!2004 List!13408) Bool)

(assert (=> d!370553 (rulesValidInductive!725 thiss!19762 rules!2550)))

(assert (=> d!370553 (= (maxPrefix!1014 thiss!19762 rules!2550 (list!5023 lt!433570)) lt!433652)))

(declare-fun b!1315277 () Bool)

(declare-fun res!590971 () Bool)

(assert (=> b!1315277 (=> (not res!590971) (not e!843200))))

(assert (=> b!1315277 (= res!590971 (= (++!3398 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652)))) (_2!7367 (get!4256 lt!433652))) (list!5023 lt!433570)))))

(declare-fun b!1315278 () Bool)

(declare-fun res!590965 () Bool)

(assert (=> b!1315278 (=> (not res!590965) (not e!843200))))

(assert (=> b!1315278 (= res!590965 (matchR!1625 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))) (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652))))))))

(declare-fun b!1315279 () Bool)

(assert (=> b!1315279 (= e!843200 (contains!2339 rules!2550 (rule!4050 (_1!7367 (get!4256 lt!433652)))))))

(declare-fun b!1315280 () Bool)

(assert (=> b!1315280 (= e!843198 e!843200)))

(declare-fun res!590968 () Bool)

(assert (=> b!1315280 (=> (not res!590968) (not e!843200))))

(declare-fun isDefined!2176 (Option!2576) Bool)

(assert (=> b!1315280 (= res!590968 (isDefined!2176 lt!433652))))

(declare-fun bm!89384 () Bool)

(declare-fun maxPrefixOneRule!578 (LexerInterface!2004 Rule!4418 List!13407) Option!2576)

(assert (=> bm!89384 (= call!89389 (maxPrefixOneRule!578 thiss!19762 (h!18743 rules!2550) (list!5023 lt!433570)))))

(assert (= (and d!370553 c!215758) b!1315276))

(assert (= (and d!370553 (not c!215758)) b!1315273))

(assert (= (or b!1315276 b!1315273) bm!89384))

(assert (= (and d!370553 (not res!590970)) b!1315280))

(assert (= (and b!1315280 res!590968) b!1315275))

(assert (= (and b!1315275 res!590969) b!1315274))

(assert (= (and b!1315274 res!590966) b!1315277))

(assert (= (and b!1315277 res!590971) b!1315272))

(assert (= (and b!1315272 res!590967) b!1315278))

(assert (= (and b!1315278 res!590965) b!1315279))

(declare-fun m!1468579 () Bool)

(assert (=> b!1315274 m!1468579))

(declare-fun m!1468581 () Bool)

(assert (=> b!1315274 m!1468581))

(assert (=> b!1315274 m!1468409))

(declare-fun m!1468583 () Bool)

(assert (=> b!1315274 m!1468583))

(assert (=> b!1315279 m!1468579))

(declare-fun m!1468585 () Bool)

(assert (=> b!1315279 m!1468585))

(assert (=> b!1315273 m!1468409))

(declare-fun m!1468587 () Bool)

(assert (=> b!1315273 m!1468587))

(assert (=> b!1315278 m!1468579))

(declare-fun m!1468589 () Bool)

(assert (=> b!1315278 m!1468589))

(assert (=> b!1315278 m!1468589))

(declare-fun m!1468591 () Bool)

(assert (=> b!1315278 m!1468591))

(assert (=> b!1315278 m!1468591))

(declare-fun m!1468593 () Bool)

(assert (=> b!1315278 m!1468593))

(assert (=> bm!89384 m!1468409))

(declare-fun m!1468595 () Bool)

(assert (=> bm!89384 m!1468595))

(declare-fun m!1468597 () Bool)

(assert (=> d!370553 m!1468597))

(assert (=> d!370553 m!1468409))

(assert (=> d!370553 m!1468409))

(declare-fun m!1468599 () Bool)

(assert (=> d!370553 m!1468599))

(assert (=> d!370553 m!1468409))

(assert (=> d!370553 m!1468409))

(declare-fun m!1468601 () Bool)

(assert (=> d!370553 m!1468601))

(declare-fun m!1468603 () Bool)

(assert (=> d!370553 m!1468603))

(assert (=> b!1315275 m!1468579))

(assert (=> b!1315275 m!1468589))

(assert (=> b!1315275 m!1468589))

(assert (=> b!1315275 m!1468591))

(assert (=> b!1315277 m!1468579))

(assert (=> b!1315277 m!1468589))

(assert (=> b!1315277 m!1468589))

(assert (=> b!1315277 m!1468591))

(assert (=> b!1315277 m!1468591))

(declare-fun m!1468605 () Bool)

(assert (=> b!1315277 m!1468605))

(assert (=> b!1315272 m!1468579))

(declare-fun m!1468607 () Bool)

(assert (=> b!1315272 m!1468607))

(assert (=> b!1315272 m!1468607))

(declare-fun m!1468609 () Bool)

(assert (=> b!1315272 m!1468609))

(declare-fun m!1468611 () Bool)

(assert (=> b!1315280 m!1468611))

(assert (=> b!1315095 d!370553))

(declare-fun d!370563 () Bool)

(declare-fun list!5026 (Conc!4388) List!13407)

(assert (=> d!370563 (= (list!5023 lt!433570) (list!5026 (c!215720 lt!433570)))))

(declare-fun bs!330292 () Bool)

(assert (= bs!330292 d!370563))

(declare-fun m!1468613 () Bool)

(assert (=> bs!330292 m!1468613))

(assert (=> b!1315095 d!370563))

(declare-fun d!370565 () Bool)

(declare-fun lt!433656 () Bool)

(declare-fun content!1874 (List!13407) (InoxSet C!7536))

(assert (=> d!370565 (= lt!433656 (select (content!1874 lt!433563) lt!433579))))

(declare-fun e!843205 () Bool)

(assert (=> d!370565 (= lt!433656 e!843205)))

(declare-fun res!590977 () Bool)

(assert (=> d!370565 (=> (not res!590977) (not e!843205))))

(assert (=> d!370565 (= res!590977 ((_ is Cons!13341) lt!433563))))

(assert (=> d!370565 (= (contains!2340 lt!433563 lt!433579) lt!433656)))

(declare-fun b!1315285 () Bool)

(declare-fun e!843206 () Bool)

(assert (=> b!1315285 (= e!843205 e!843206)))

(declare-fun res!590976 () Bool)

(assert (=> b!1315285 (=> res!590976 e!843206)))

(assert (=> b!1315285 (= res!590976 (= (h!18742 lt!433563) lt!433579))))

(declare-fun b!1315286 () Bool)

(assert (=> b!1315286 (= e!843206 (contains!2340 (t!118280 lt!433563) lt!433579))))

(assert (= (and d!370565 res!590977) b!1315285))

(assert (= (and b!1315285 (not res!590976)) b!1315286))

(declare-fun m!1468615 () Bool)

(assert (=> d!370565 m!1468615))

(declare-fun m!1468617 () Bool)

(assert (=> d!370565 m!1468617))

(declare-fun m!1468619 () Bool)

(assert (=> b!1315286 m!1468619))

(assert (=> b!1315074 d!370565))

(declare-fun d!370567 () Bool)

(declare-fun lt!433659 () C!7536)

(declare-fun apply!3032 (List!13407 Int) C!7536)

(assert (=> d!370567 (= lt!433659 (apply!3032 (list!5023 lt!433565) 0))))

(declare-fun apply!3033 (Conc!4388 Int) C!7536)

(assert (=> d!370567 (= lt!433659 (apply!3033 (c!215720 lt!433565) 0))))

(declare-fun e!843209 () Bool)

(assert (=> d!370567 e!843209))

(declare-fun res!590980 () Bool)

(assert (=> d!370567 (=> (not res!590980) (not e!843209))))

(assert (=> d!370567 (= res!590980 (<= 0 0))))

(assert (=> d!370567 (= (apply!3027 lt!433565 0) lt!433659)))

(declare-fun b!1315289 () Bool)

(assert (=> b!1315289 (= e!843209 (< 0 (size!10849 lt!433565)))))

(assert (= (and d!370567 res!590980) b!1315289))

(assert (=> d!370567 m!1468381))

(assert (=> d!370567 m!1468381))

(declare-fun m!1468621 () Bool)

(assert (=> d!370567 m!1468621))

(declare-fun m!1468623 () Bool)

(assert (=> d!370567 m!1468623))

(declare-fun m!1468625 () Bool)

(assert (=> b!1315289 m!1468625))

(assert (=> b!1315074 d!370567))

(declare-fun lt!433662 () List!13407)

(declare-fun e!843215 () Bool)

(declare-fun b!1315301 () Bool)

(assert (=> b!1315301 (= e!843215 (or (not (= (getSuffix!479 lt!433574 lt!433563) Nil!13341)) (= lt!433662 lt!433563)))))

(declare-fun b!1315298 () Bool)

(declare-fun e!843214 () List!13407)

(assert (=> b!1315298 (= e!843214 (getSuffix!479 lt!433574 lt!433563))))

(declare-fun d!370569 () Bool)

(assert (=> d!370569 e!843215))

(declare-fun res!590986 () Bool)

(assert (=> d!370569 (=> (not res!590986) (not e!843215))))

(assert (=> d!370569 (= res!590986 (= (content!1874 lt!433662) ((_ map or) (content!1874 lt!433563) (content!1874 (getSuffix!479 lt!433574 lt!433563)))))))

(assert (=> d!370569 (= lt!433662 e!843214)))

(declare-fun c!215761 () Bool)

(assert (=> d!370569 (= c!215761 ((_ is Nil!13341) lt!433563))))

(assert (=> d!370569 (= (++!3398 lt!433563 (getSuffix!479 lt!433574 lt!433563)) lt!433662)))

(declare-fun b!1315300 () Bool)

(declare-fun res!590985 () Bool)

(assert (=> b!1315300 (=> (not res!590985) (not e!843215))))

(assert (=> b!1315300 (= res!590985 (= (size!10858 lt!433662) (+ (size!10858 lt!433563) (size!10858 (getSuffix!479 lt!433574 lt!433563)))))))

(declare-fun b!1315299 () Bool)

(assert (=> b!1315299 (= e!843214 (Cons!13341 (h!18742 lt!433563) (++!3398 (t!118280 lt!433563) (getSuffix!479 lt!433574 lt!433563))))))

(assert (= (and d!370569 c!215761) b!1315298))

(assert (= (and d!370569 (not c!215761)) b!1315299))

(assert (= (and d!370569 res!590986) b!1315300))

(assert (= (and b!1315300 res!590985) b!1315301))

(declare-fun m!1468627 () Bool)

(assert (=> d!370569 m!1468627))

(assert (=> d!370569 m!1468615))

(assert (=> d!370569 m!1468413))

(declare-fun m!1468629 () Bool)

(assert (=> d!370569 m!1468629))

(declare-fun m!1468631 () Bool)

(assert (=> b!1315300 m!1468631))

(declare-fun m!1468633 () Bool)

(assert (=> b!1315300 m!1468633))

(assert (=> b!1315300 m!1468413))

(declare-fun m!1468635 () Bool)

(assert (=> b!1315300 m!1468635))

(assert (=> b!1315299 m!1468413))

(declare-fun m!1468637 () Bool)

(assert (=> b!1315299 m!1468637))

(assert (=> b!1315097 d!370569))

(declare-fun d!370571 () Bool)

(declare-fun lt!433665 () List!13407)

(assert (=> d!370571 (= (++!3398 lt!433563 lt!433665) lt!433574)))

(declare-fun e!843218 () List!13407)

(assert (=> d!370571 (= lt!433665 e!843218)))

(declare-fun c!215764 () Bool)

(assert (=> d!370571 (= c!215764 ((_ is Cons!13341) lt!433563))))

(assert (=> d!370571 (>= (size!10858 lt!433574) (size!10858 lt!433563))))

(assert (=> d!370571 (= (getSuffix!479 lt!433574 lt!433563) lt!433665)))

(declare-fun b!1315306 () Bool)

(declare-fun tail!1884 (List!13407) List!13407)

(assert (=> b!1315306 (= e!843218 (getSuffix!479 (tail!1884 lt!433574) (t!118280 lt!433563)))))

(declare-fun b!1315307 () Bool)

(assert (=> b!1315307 (= e!843218 lt!433574)))

(assert (= (and d!370571 c!215764) b!1315306))

(assert (= (and d!370571 (not c!215764)) b!1315307))

(declare-fun m!1468639 () Bool)

(assert (=> d!370571 m!1468639))

(declare-fun m!1468641 () Bool)

(assert (=> d!370571 m!1468641))

(assert (=> d!370571 m!1468633))

(declare-fun m!1468643 () Bool)

(assert (=> b!1315306 m!1468643))

(assert (=> b!1315306 m!1468643))

(declare-fun m!1468645 () Bool)

(assert (=> b!1315306 m!1468645))

(assert (=> b!1315097 d!370571))

(declare-fun d!370573 () Bool)

(declare-fun lt!433668 () List!13407)

(declare-fun dynLambda!5819 (Int List!13407) Bool)

(assert (=> d!370573 (dynLambda!5819 lambda!53525 lt!433668)))

(declare-fun choose!8046 (Int) List!13407)

(assert (=> d!370573 (= lt!433668 (choose!8046 lambda!53525))))

(assert (=> d!370573 (Exists!781 lambda!53525)))

(assert (=> d!370573 (= (pickWitness!86 lambda!53525) lt!433668)))

(declare-fun b_lambda!38001 () Bool)

(assert (=> (not b_lambda!38001) (not d!370573)))

(declare-fun bs!330293 () Bool)

(assert (= bs!330293 d!370573))

(declare-fun m!1468647 () Bool)

(assert (=> bs!330293 m!1468647))

(declare-fun m!1468649 () Bool)

(assert (=> bs!330293 m!1468649))

(assert (=> bs!330293 m!1468321))

(assert (=> b!1315097 d!370573))

(declare-fun d!370575 () Bool)

(declare-fun lt!433669 () Bool)

(assert (=> d!370575 (= lt!433669 (select (content!1874 lt!433563) lt!433561))))

(declare-fun e!843219 () Bool)

(assert (=> d!370575 (= lt!433669 e!843219)))

(declare-fun res!590988 () Bool)

(assert (=> d!370575 (=> (not res!590988) (not e!843219))))

(assert (=> d!370575 (= res!590988 ((_ is Cons!13341) lt!433563))))

(assert (=> d!370575 (= (contains!2340 lt!433563 lt!433561) lt!433669)))

(declare-fun b!1315308 () Bool)

(declare-fun e!843220 () Bool)

(assert (=> b!1315308 (= e!843219 e!843220)))

(declare-fun res!590987 () Bool)

(assert (=> b!1315308 (=> res!590987 e!843220)))

(assert (=> b!1315308 (= res!590987 (= (h!18742 lt!433563) lt!433561))))

(declare-fun b!1315309 () Bool)

(assert (=> b!1315309 (= e!843220 (contains!2340 (t!118280 lt!433563) lt!433561))))

(assert (= (and d!370575 res!590988) b!1315308))

(assert (= (and b!1315308 (not res!590987)) b!1315309))

(assert (=> d!370575 m!1468615))

(declare-fun m!1468651 () Bool)

(assert (=> d!370575 m!1468651))

(declare-fun m!1468653 () Bool)

(assert (=> b!1315309 m!1468653))

(assert (=> b!1315076 d!370575))

(declare-fun d!370577 () Bool)

(assert (=> d!370577 (= (inv!17711 (tag!2571 (rule!4050 t1!34))) (= (mod (str.len (value!75438 (tag!2571 (rule!4050 t1!34)))) 2) 0))))

(assert (=> b!1315075 d!370577))

(declare-fun d!370579 () Bool)

(declare-fun res!590991 () Bool)

(declare-fun e!843223 () Bool)

(assert (=> d!370579 (=> (not res!590991) (not e!843223))))

(declare-fun semiInverseModEq!868 (Int Int) Bool)

(assert (=> d!370579 (= res!590991 (semiInverseModEq!868 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (toValue!3532 (transformation!2309 (rule!4050 t1!34)))))))

(assert (=> d!370579 (= (inv!17714 (transformation!2309 (rule!4050 t1!34))) e!843223)))

(declare-fun b!1315312 () Bool)

(declare-fun equivClasses!827 (Int Int) Bool)

(assert (=> b!1315312 (= e!843223 (equivClasses!827 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (toValue!3532 (transformation!2309 (rule!4050 t1!34)))))))

(assert (= (and d!370579 res!590991) b!1315312))

(declare-fun m!1468655 () Bool)

(assert (=> d!370579 m!1468655))

(declare-fun m!1468657 () Bool)

(assert (=> b!1315312 m!1468657))

(assert (=> b!1315075 d!370579))

(declare-fun b!1315341 () Bool)

(declare-fun e!843238 () Bool)

(declare-fun derivativeStep!899 (Regex!3623 C!7536) Regex!3623)

(declare-fun head!2273 (List!13407) C!7536)

(assert (=> b!1315341 (= e!843238 (matchR!1625 (derivativeStep!899 lt!433562 (head!2273 lt!433574)) (tail!1884 lt!433574)))))

(declare-fun bm!89387 () Bool)

(declare-fun call!89392 () Bool)

(declare-fun isEmpty!7914 (List!13407) Bool)

(assert (=> bm!89387 (= call!89392 (isEmpty!7914 lt!433574))))

(declare-fun b!1315342 () Bool)

(declare-fun res!591015 () Bool)

(declare-fun e!843239 () Bool)

(assert (=> b!1315342 (=> res!591015 e!843239)))

(declare-fun e!843242 () Bool)

(assert (=> b!1315342 (= res!591015 e!843242)))

(declare-fun res!591014 () Bool)

(assert (=> b!1315342 (=> (not res!591014) (not e!843242))))

(declare-fun lt!433672 () Bool)

(assert (=> b!1315342 (= res!591014 lt!433672)))

(declare-fun b!1315343 () Bool)

(declare-fun res!591013 () Bool)

(assert (=> b!1315343 (=> (not res!591013) (not e!843242))))

(assert (=> b!1315343 (= res!591013 (isEmpty!7914 (tail!1884 lt!433574)))))

(declare-fun d!370581 () Bool)

(declare-fun e!843244 () Bool)

(assert (=> d!370581 e!843244))

(declare-fun c!215771 () Bool)

(assert (=> d!370581 (= c!215771 ((_ is EmptyExpr!3623) lt!433562))))

(assert (=> d!370581 (= lt!433672 e!843238)))

(declare-fun c!215773 () Bool)

(assert (=> d!370581 (= c!215773 (isEmpty!7914 lt!433574))))

(assert (=> d!370581 (validRegex!1549 lt!433562)))

(assert (=> d!370581 (= (matchR!1625 lt!433562 lt!433574) lt!433672)))

(declare-fun b!1315344 () Bool)

(declare-fun e!843243 () Bool)

(assert (=> b!1315344 (= e!843244 e!843243)))

(declare-fun c!215772 () Bool)

(assert (=> b!1315344 (= c!215772 ((_ is EmptyLang!3623) lt!433562))))

(declare-fun b!1315345 () Bool)

(declare-fun e!843241 () Bool)

(declare-fun e!843240 () Bool)

(assert (=> b!1315345 (= e!843241 e!843240)))

(declare-fun res!591010 () Bool)

(assert (=> b!1315345 (=> res!591010 e!843240)))

(assert (=> b!1315345 (= res!591010 call!89392)))

(declare-fun b!1315346 () Bool)

(assert (=> b!1315346 (= e!843240 (not (= (head!2273 lt!433574) (c!215721 lt!433562))))))

(declare-fun b!1315347 () Bool)

(assert (=> b!1315347 (= e!843243 (not lt!433672))))

(declare-fun b!1315348 () Bool)

(declare-fun nullable!1147 (Regex!3623) Bool)

(assert (=> b!1315348 (= e!843238 (nullable!1147 lt!433562))))

(declare-fun b!1315349 () Bool)

(declare-fun res!591008 () Bool)

(assert (=> b!1315349 (=> res!591008 e!843239)))

(assert (=> b!1315349 (= res!591008 (not ((_ is ElementMatch!3623) lt!433562)))))

(assert (=> b!1315349 (= e!843243 e!843239)))

(declare-fun b!1315350 () Bool)

(assert (=> b!1315350 (= e!843239 e!843241)))

(declare-fun res!591009 () Bool)

(assert (=> b!1315350 (=> (not res!591009) (not e!843241))))

(assert (=> b!1315350 (= res!591009 (not lt!433672))))

(declare-fun b!1315351 () Bool)

(declare-fun res!591012 () Bool)

(assert (=> b!1315351 (=> res!591012 e!843240)))

(assert (=> b!1315351 (= res!591012 (not (isEmpty!7914 (tail!1884 lt!433574))))))

(declare-fun b!1315352 () Bool)

(assert (=> b!1315352 (= e!843242 (= (head!2273 lt!433574) (c!215721 lt!433562)))))

(declare-fun b!1315353 () Bool)

(assert (=> b!1315353 (= e!843244 (= lt!433672 call!89392))))

(declare-fun b!1315354 () Bool)

(declare-fun res!591011 () Bool)

(assert (=> b!1315354 (=> (not res!591011) (not e!843242))))

(assert (=> b!1315354 (= res!591011 (not call!89392))))

(assert (= (and d!370581 c!215773) b!1315348))

(assert (= (and d!370581 (not c!215773)) b!1315341))

(assert (= (and d!370581 c!215771) b!1315353))

(assert (= (and d!370581 (not c!215771)) b!1315344))

(assert (= (and b!1315344 c!215772) b!1315347))

(assert (= (and b!1315344 (not c!215772)) b!1315349))

(assert (= (and b!1315349 (not res!591008)) b!1315342))

(assert (= (and b!1315342 res!591014) b!1315354))

(assert (= (and b!1315354 res!591011) b!1315343))

(assert (= (and b!1315343 res!591013) b!1315352))

(assert (= (and b!1315342 (not res!591015)) b!1315350))

(assert (= (and b!1315350 res!591009) b!1315345))

(assert (= (and b!1315345 (not res!591010)) b!1315351))

(assert (= (and b!1315351 (not res!591012)) b!1315346))

(assert (= (or b!1315353 b!1315354 b!1315345) bm!89387))

(assert (=> b!1315351 m!1468643))

(assert (=> b!1315351 m!1468643))

(declare-fun m!1468659 () Bool)

(assert (=> b!1315351 m!1468659))

(declare-fun m!1468661 () Bool)

(assert (=> b!1315352 m!1468661))

(declare-fun m!1468663 () Bool)

(assert (=> bm!89387 m!1468663))

(assert (=> b!1315341 m!1468661))

(assert (=> b!1315341 m!1468661))

(declare-fun m!1468665 () Bool)

(assert (=> b!1315341 m!1468665))

(assert (=> b!1315341 m!1468643))

(assert (=> b!1315341 m!1468665))

(assert (=> b!1315341 m!1468643))

(declare-fun m!1468667 () Bool)

(assert (=> b!1315341 m!1468667))

(assert (=> b!1315343 m!1468643))

(assert (=> b!1315343 m!1468643))

(assert (=> b!1315343 m!1468659))

(assert (=> d!370581 m!1468663))

(declare-fun m!1468669 () Bool)

(assert (=> d!370581 m!1468669))

(declare-fun m!1468671 () Bool)

(assert (=> b!1315348 m!1468671))

(assert (=> b!1315346 m!1468661))

(assert (=> b!1315077 d!370581))

(declare-fun d!370583 () Bool)

(declare-fun lt!433673 () Bool)

(assert (=> d!370583 (= lt!433673 (select (content!1874 lt!433574) lt!433579))))

(declare-fun e!843245 () Bool)

(assert (=> d!370583 (= lt!433673 e!843245)))

(declare-fun res!591017 () Bool)

(assert (=> d!370583 (=> (not res!591017) (not e!843245))))

(assert (=> d!370583 (= res!591017 ((_ is Cons!13341) lt!433574))))

(assert (=> d!370583 (= (contains!2340 lt!433574 lt!433579) lt!433673)))

(declare-fun b!1315355 () Bool)

(declare-fun e!843246 () Bool)

(assert (=> b!1315355 (= e!843245 e!843246)))

(declare-fun res!591016 () Bool)

(assert (=> b!1315355 (=> res!591016 e!843246)))

(assert (=> b!1315355 (= res!591016 (= (h!18742 lt!433574) lt!433579))))

(declare-fun b!1315356 () Bool)

(assert (=> b!1315356 (= e!843246 (contains!2340 (t!118280 lt!433574) lt!433579))))

(assert (= (and d!370583 res!591017) b!1315355))

(assert (= (and b!1315355 (not res!591016)) b!1315356))

(declare-fun m!1468673 () Bool)

(assert (=> d!370583 m!1468673))

(declare-fun m!1468675 () Bool)

(assert (=> d!370583 m!1468675))

(declare-fun m!1468677 () Bool)

(assert (=> b!1315356 m!1468677))

(assert (=> b!1315099 d!370583))

(declare-fun b!1315397 () Bool)

(declare-fun e!843273 () tuple2!12960)

(assert (=> b!1315397 (= e!843273 (tuple2!12961 Nil!13343 (list!5023 lt!433558)))))

(declare-fun b!1315398 () Bool)

(declare-fun e!843272 () Bool)

(declare-fun lt!433689 () tuple2!12960)

(assert (=> b!1315398 (= e!843272 (= (_2!7366 lt!433689) (list!5023 lt!433558)))))

(declare-fun b!1315399 () Bool)

(declare-fun e!843271 () Bool)

(assert (=> b!1315399 (= e!843272 e!843271)))

(declare-fun res!591032 () Bool)

(assert (=> b!1315399 (= res!591032 (< (size!10858 (_2!7366 lt!433689)) (size!10858 (list!5023 lt!433558))))))

(assert (=> b!1315399 (=> (not res!591032) (not e!843271))))

(declare-fun b!1315400 () Bool)

(declare-fun isEmpty!7915 (List!13409) Bool)

(assert (=> b!1315400 (= e!843271 (not (isEmpty!7915 (_1!7366 lt!433689))))))

(declare-fun d!370585 () Bool)

(assert (=> d!370585 e!843272))

(declare-fun c!215788 () Bool)

(declare-fun size!10859 (List!13409) Int)

(assert (=> d!370585 (= c!215788 (> (size!10859 (_1!7366 lt!433689)) 0))))

(assert (=> d!370585 (= lt!433689 e!843273)))

(declare-fun c!215787 () Bool)

(declare-fun lt!433691 () Option!2576)

(assert (=> d!370585 (= c!215787 ((_ is Some!2575) lt!433691))))

(assert (=> d!370585 (= lt!433691 (maxPrefix!1014 thiss!19762 rules!2550 (list!5023 lt!433558)))))

(assert (=> d!370585 (= (lexList!542 thiss!19762 rules!2550 (list!5023 lt!433558)) lt!433689)))

(declare-fun b!1315401 () Bool)

(declare-fun lt!433690 () tuple2!12960)

(assert (=> b!1315401 (= e!843273 (tuple2!12961 (Cons!13343 (_1!7367 (v!21118 lt!433691)) (_1!7366 lt!433690)) (_2!7366 lt!433690)))))

(assert (=> b!1315401 (= lt!433690 (lexList!542 thiss!19762 rules!2550 (_2!7367 (v!21118 lt!433691))))))

(assert (= (and d!370585 c!215787) b!1315401))

(assert (= (and d!370585 (not c!215787)) b!1315397))

(assert (= (and d!370585 c!215788) b!1315399))

(assert (= (and d!370585 (not c!215788)) b!1315398))

(assert (= (and b!1315399 res!591032) b!1315400))

(declare-fun m!1468709 () Bool)

(assert (=> b!1315399 m!1468709))

(assert (=> b!1315399 m!1468299))

(declare-fun m!1468711 () Bool)

(assert (=> b!1315399 m!1468711))

(declare-fun m!1468713 () Bool)

(assert (=> b!1315400 m!1468713))

(declare-fun m!1468715 () Bool)

(assert (=> d!370585 m!1468715))

(assert (=> d!370585 m!1468299))

(declare-fun m!1468717 () Bool)

(assert (=> d!370585 m!1468717))

(declare-fun m!1468719 () Bool)

(assert (=> b!1315401 m!1468719))

(assert (=> b!1315078 d!370585))

(declare-fun d!370593 () Bool)

(assert (=> d!370593 (= (list!5023 lt!433558) (list!5026 (c!215720 lt!433558)))))

(declare-fun bs!330294 () Bool)

(assert (= bs!330294 d!370593))

(declare-fun m!1468721 () Bool)

(assert (=> bs!330294 m!1468721))

(assert (=> b!1315078 d!370593))

(declare-fun d!370595 () Bool)

(declare-fun prefixMatchZipperSequence!175 (Regex!3623 BalanceConc!8716) Bool)

(declare-fun ++!3399 (BalanceConc!8716 BalanceConc!8716) BalanceConc!8716)

(declare-fun singletonSeq!889 (C!7536) BalanceConc!8716)

(assert (=> d!370595 (= (separableTokensPredicate!287 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!175 (rulesRegex!194 thiss!19762 rules!2550) (++!3399 (charsOf!1281 t1!34) (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0))))))))

(declare-fun bs!330305 () Bool)

(assert (= bs!330305 d!370595))

(declare-fun m!1468753 () Bool)

(assert (=> bs!330305 m!1468753))

(declare-fun m!1468755 () Bool)

(assert (=> bs!330305 m!1468755))

(assert (=> bs!330305 m!1468389))

(assert (=> bs!330305 m!1468755))

(declare-fun m!1468757 () Bool)

(assert (=> bs!330305 m!1468757))

(assert (=> bs!330305 m!1468319))

(assert (=> bs!330305 m!1468753))

(assert (=> bs!330305 m!1468387))

(assert (=> bs!330305 m!1468757))

(declare-fun m!1468759 () Bool)

(assert (=> bs!330305 m!1468759))

(assert (=> bs!330305 m!1468319))

(assert (=> bs!330305 m!1468389))

(assert (=> bs!330305 m!1468387))

(assert (=> b!1315101 d!370595))

(declare-fun d!370609 () Bool)

(declare-fun lt!433742 () Bool)

(declare-fun e!843359 () Bool)

(assert (=> d!370609 (= lt!433742 e!843359)))

(declare-fun res!591127 () Bool)

(assert (=> d!370609 (=> (not res!591127) (not e!843359))))

(assert (=> d!370609 (= res!591127 (= (list!5022 (_1!7365 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t1!34))))) (list!5022 (singletonSeq!888 t1!34))))))

(declare-fun e!843360 () Bool)

(assert (=> d!370609 (= lt!433742 e!843360)))

(declare-fun res!591128 () Bool)

(assert (=> d!370609 (=> (not res!591128) (not e!843360))))

(declare-fun lt!433741 () tuple2!12958)

(declare-fun size!10860 (BalanceConc!8718) Int)

(assert (=> d!370609 (= res!591128 (= (size!10860 (_1!7365 lt!433741)) 1))))

(assert (=> d!370609 (= lt!433741 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t1!34))))))

(assert (=> d!370609 (not (isEmpty!7907 rules!2550))))

(assert (=> d!370609 (= (rulesProduceIndividualToken!973 thiss!19762 rules!2550 t1!34) lt!433742)))

(declare-fun b!1315535 () Bool)

(declare-fun res!591129 () Bool)

(assert (=> b!1315535 (=> (not res!591129) (not e!843360))))

(declare-fun apply!3035 (BalanceConc!8718 Int) Token!4280)

(assert (=> b!1315535 (= res!591129 (= (apply!3035 (_1!7365 lt!433741) 0) t1!34))))

(declare-fun b!1315536 () Bool)

(assert (=> b!1315536 (= e!843360 (isEmpty!7906 (_2!7365 lt!433741)))))

(declare-fun b!1315537 () Bool)

(assert (=> b!1315537 (= e!843359 (isEmpty!7906 (_2!7365 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t1!34))))))))

(assert (= (and d!370609 res!591128) b!1315535))

(assert (= (and b!1315535 res!591129) b!1315536))

(assert (= (and d!370609 res!591127) b!1315537))

(assert (=> d!370609 m!1468423))

(assert (=> d!370609 m!1468393))

(declare-fun m!1468943 () Bool)

(assert (=> d!370609 m!1468943))

(assert (=> d!370609 m!1468423))

(declare-fun m!1468945 () Bool)

(assert (=> d!370609 m!1468945))

(assert (=> d!370609 m!1468423))

(assert (=> d!370609 m!1468425))

(assert (=> d!370609 m!1468425))

(declare-fun m!1468947 () Bool)

(assert (=> d!370609 m!1468947))

(declare-fun m!1468949 () Bool)

(assert (=> d!370609 m!1468949))

(declare-fun m!1468951 () Bool)

(assert (=> b!1315535 m!1468951))

(declare-fun m!1468953 () Bool)

(assert (=> b!1315536 m!1468953))

(assert (=> b!1315537 m!1468423))

(assert (=> b!1315537 m!1468423))

(assert (=> b!1315537 m!1468425))

(assert (=> b!1315537 m!1468425))

(assert (=> b!1315537 m!1468947))

(declare-fun m!1468955 () Bool)

(assert (=> b!1315537 m!1468955))

(assert (=> b!1315080 d!370609))

(declare-fun d!370663 () Bool)

(declare-fun lt!433751 () Int)

(assert (=> d!370663 (= lt!433751 (size!10858 (list!5023 lt!433570)))))

(declare-fun size!10861 (Conc!4388) Int)

(assert (=> d!370663 (= lt!433751 (size!10861 (c!215720 lt!433570)))))

(assert (=> d!370663 (= (size!10849 lt!433570) lt!433751)))

(declare-fun bs!330314 () Bool)

(assert (= bs!330314 d!370663))

(assert (=> bs!330314 m!1468409))

(assert (=> bs!330314 m!1468409))

(assert (=> bs!330314 m!1468583))

(declare-fun m!1468975 () Bool)

(assert (=> bs!330314 m!1468975))

(assert (=> b!1315079 d!370663))

(declare-fun d!370673 () Bool)

(declare-fun lt!433756 () BalanceConc!8716)

(assert (=> d!370673 (= (list!5023 lt!433756) (originalCharacters!3171 t2!34))))

(declare-fun dynLambda!5820 (Int TokenValue!2399) BalanceConc!8716)

(assert (=> d!370673 (= lt!433756 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34)))))

(assert (=> d!370673 (= (charsOf!1281 t2!34) lt!433756)))

(declare-fun b_lambda!38017 () Bool)

(assert (=> (not b_lambda!38017) (not d!370673)))

(declare-fun t!118300 () Bool)

(declare-fun tb!69885 () Bool)

(assert (=> (and b!1315098 (= (toChars!3391 (transformation!2309 (h!18743 rules!2550))) (toChars!3391 (transformation!2309 (rule!4050 t2!34)))) t!118300) tb!69885))

(declare-fun b!1315555 () Bool)

(declare-fun e!843376 () Bool)

(declare-fun tp!382811 () Bool)

(declare-fun inv!17718 (Conc!4388) Bool)

(assert (=> b!1315555 (= e!843376 (and (inv!17718 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34)))) tp!382811))))

(declare-fun result!84804 () Bool)

(declare-fun inv!17719 (BalanceConc!8716) Bool)

(assert (=> tb!69885 (= result!84804 (and (inv!17719 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34))) e!843376))))

(assert (= tb!69885 b!1315555))

(declare-fun m!1468983 () Bool)

(assert (=> b!1315555 m!1468983))

(declare-fun m!1468985 () Bool)

(assert (=> tb!69885 m!1468985))

(assert (=> d!370673 t!118300))

(declare-fun b_and!87907 () Bool)

(assert (= b_and!87873 (and (=> t!118300 result!84804) b_and!87907)))

(declare-fun tb!69887 () Bool)

(declare-fun t!118302 () Bool)

(assert (=> (and b!1315100 (= (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (toChars!3391 (transformation!2309 (rule!4050 t2!34)))) t!118302) tb!69887))

(declare-fun result!84808 () Bool)

(assert (= result!84808 result!84804))

(assert (=> d!370673 t!118302))

(declare-fun b_and!87909 () Bool)

(assert (= b_and!87877 (and (=> t!118302 result!84808) b_and!87909)))

(declare-fun t!118304 () Bool)

(declare-fun tb!69889 () Bool)

(assert (=> (and b!1315065 (= (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (toChars!3391 (transformation!2309 (rule!4050 t2!34)))) t!118304) tb!69889))

(declare-fun result!84810 () Bool)

(assert (= result!84810 result!84804))

(assert (=> d!370673 t!118304))

(declare-fun b_and!87911 () Bool)

(assert (= b_and!87881 (and (=> t!118304 result!84810) b_and!87911)))

(declare-fun m!1468987 () Bool)

(assert (=> d!370673 m!1468987))

(declare-fun m!1468989 () Bool)

(assert (=> d!370673 m!1468989))

(assert (=> b!1315079 d!370673))

(declare-fun b!1315578 () Bool)

(declare-fun e!843392 () Bool)

(declare-fun inv!16 (TokenValue!2399) Bool)

(assert (=> b!1315578 (= e!843392 (inv!16 (value!75439 t1!34)))))

(declare-fun b!1315579 () Bool)

(declare-fun e!843391 () Bool)

(assert (=> b!1315579 (= e!843392 e!843391)))

(declare-fun c!215816 () Bool)

(assert (=> b!1315579 (= c!215816 ((_ is IntegerValue!7198) (value!75439 t1!34)))))

(declare-fun b!1315580 () Bool)

(declare-fun inv!17 (TokenValue!2399) Bool)

(assert (=> b!1315580 (= e!843391 (inv!17 (value!75439 t1!34)))))

(declare-fun d!370677 () Bool)

(declare-fun c!215815 () Bool)

(assert (=> d!370677 (= c!215815 ((_ is IntegerValue!7197) (value!75439 t1!34)))))

(assert (=> d!370677 (= (inv!21 (value!75439 t1!34)) e!843392)))

(declare-fun b!1315581 () Bool)

(declare-fun e!843393 () Bool)

(declare-fun inv!15 (TokenValue!2399) Bool)

(assert (=> b!1315581 (= e!843393 (inv!15 (value!75439 t1!34)))))

(declare-fun b!1315582 () Bool)

(declare-fun res!591149 () Bool)

(assert (=> b!1315582 (=> res!591149 e!843393)))

(assert (=> b!1315582 (= res!591149 (not ((_ is IntegerValue!7199) (value!75439 t1!34))))))

(assert (=> b!1315582 (= e!843391 e!843393)))

(assert (= (and d!370677 c!215815) b!1315578))

(assert (= (and d!370677 (not c!215815)) b!1315579))

(assert (= (and b!1315579 c!215816) b!1315580))

(assert (= (and b!1315579 (not c!215816)) b!1315582))

(assert (= (and b!1315582 (not res!591149)) b!1315581))

(declare-fun m!1468991 () Bool)

(assert (=> b!1315578 m!1468991))

(declare-fun m!1468993 () Bool)

(assert (=> b!1315580 m!1468993))

(declare-fun m!1468995 () Bool)

(assert (=> b!1315581 m!1468995))

(assert (=> b!1315081 d!370677))

(declare-fun d!370679 () Bool)

(declare-fun lt!433766 () Bool)

(assert (=> d!370679 (= lt!433766 (isEmpty!7914 (list!5023 (_2!7365 lt!433568))))))

(declare-fun isEmpty!7916 (Conc!4388) Bool)

(assert (=> d!370679 (= lt!433766 (isEmpty!7916 (c!215720 (_2!7365 lt!433568))))))

(assert (=> d!370679 (= (isEmpty!7906 (_2!7365 lt!433568)) lt!433766)))

(declare-fun bs!330315 () Bool)

(assert (= bs!330315 d!370679))

(declare-fun m!1468997 () Bool)

(assert (=> bs!330315 m!1468997))

(assert (=> bs!330315 m!1468997))

(declare-fun m!1468999 () Bool)

(assert (=> bs!330315 m!1468999))

(declare-fun m!1469001 () Bool)

(assert (=> bs!330315 m!1469001))

(assert (=> b!1315082 d!370679))

(declare-fun d!370681 () Bool)

(declare-fun res!591156 () Bool)

(declare-fun e!843400 () Bool)

(assert (=> d!370681 (=> (not res!591156) (not e!843400))))

(assert (=> d!370681 (= res!591156 (not (isEmpty!7914 (originalCharacters!3171 t1!34))))))

(assert (=> d!370681 (= (inv!17715 t1!34) e!843400)))

(declare-fun b!1315593 () Bool)

(declare-fun res!591157 () Bool)

(assert (=> b!1315593 (=> (not res!591157) (not e!843400))))

(assert (=> b!1315593 (= res!591157 (= (originalCharacters!3171 t1!34) (list!5023 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34)))))))

(declare-fun b!1315594 () Bool)

(assert (=> b!1315594 (= e!843400 (= (size!10848 t1!34) (size!10858 (originalCharacters!3171 t1!34))))))

(assert (= (and d!370681 res!591156) b!1315593))

(assert (= (and b!1315593 res!591157) b!1315594))

(declare-fun b_lambda!38023 () Bool)

(assert (=> (not b_lambda!38023) (not b!1315593)))

(declare-fun tb!69891 () Bool)

(declare-fun t!118306 () Bool)

(assert (=> (and b!1315098 (= (toChars!3391 (transformation!2309 (h!18743 rules!2550))) (toChars!3391 (transformation!2309 (rule!4050 t1!34)))) t!118306) tb!69891))

(declare-fun b!1315595 () Bool)

(declare-fun e!843401 () Bool)

(declare-fun tp!382812 () Bool)

(assert (=> b!1315595 (= e!843401 (and (inv!17718 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34)))) tp!382812))))

(declare-fun result!84812 () Bool)

(assert (=> tb!69891 (= result!84812 (and (inv!17719 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34))) e!843401))))

(assert (= tb!69891 b!1315595))

(declare-fun m!1469019 () Bool)

(assert (=> b!1315595 m!1469019))

(declare-fun m!1469021 () Bool)

(assert (=> tb!69891 m!1469021))

(assert (=> b!1315593 t!118306))

(declare-fun b_and!87913 () Bool)

(assert (= b_and!87907 (and (=> t!118306 result!84812) b_and!87913)))

(declare-fun t!118308 () Bool)

(declare-fun tb!69893 () Bool)

(assert (=> (and b!1315100 (= (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (toChars!3391 (transformation!2309 (rule!4050 t1!34)))) t!118308) tb!69893))

(declare-fun result!84814 () Bool)

(assert (= result!84814 result!84812))

(assert (=> b!1315593 t!118308))

(declare-fun b_and!87915 () Bool)

(assert (= b_and!87909 (and (=> t!118308 result!84814) b_and!87915)))

(declare-fun tb!69895 () Bool)

(declare-fun t!118310 () Bool)

(assert (=> (and b!1315065 (= (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (toChars!3391 (transformation!2309 (rule!4050 t1!34)))) t!118310) tb!69895))

(declare-fun result!84816 () Bool)

(assert (= result!84816 result!84812))

(assert (=> b!1315593 t!118310))

(declare-fun b_and!87917 () Bool)

(assert (= b_and!87911 (and (=> t!118310 result!84816) b_and!87917)))

(declare-fun m!1469023 () Bool)

(assert (=> d!370681 m!1469023))

(declare-fun m!1469025 () Bool)

(assert (=> b!1315593 m!1469025))

(assert (=> b!1315593 m!1469025))

(declare-fun m!1469027 () Bool)

(assert (=> b!1315593 m!1469027))

(declare-fun m!1469029 () Bool)

(assert (=> b!1315594 m!1469029))

(assert (=> start!116390 d!370681))

(declare-fun d!370687 () Bool)

(declare-fun res!591158 () Bool)

(declare-fun e!843402 () Bool)

(assert (=> d!370687 (=> (not res!591158) (not e!843402))))

(assert (=> d!370687 (= res!591158 (not (isEmpty!7914 (originalCharacters!3171 t2!34))))))

(assert (=> d!370687 (= (inv!17715 t2!34) e!843402)))

(declare-fun b!1315596 () Bool)

(declare-fun res!591159 () Bool)

(assert (=> b!1315596 (=> (not res!591159) (not e!843402))))

(assert (=> b!1315596 (= res!591159 (= (originalCharacters!3171 t2!34) (list!5023 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34)))))))

(declare-fun b!1315597 () Bool)

(assert (=> b!1315597 (= e!843402 (= (size!10848 t2!34) (size!10858 (originalCharacters!3171 t2!34))))))

(assert (= (and d!370687 res!591158) b!1315596))

(assert (= (and b!1315596 res!591159) b!1315597))

(declare-fun b_lambda!38025 () Bool)

(assert (=> (not b_lambda!38025) (not b!1315596)))

(assert (=> b!1315596 t!118300))

(declare-fun b_and!87919 () Bool)

(assert (= b_and!87913 (and (=> t!118300 result!84804) b_and!87919)))

(assert (=> b!1315596 t!118302))

(declare-fun b_and!87921 () Bool)

(assert (= b_and!87915 (and (=> t!118302 result!84808) b_and!87921)))

(assert (=> b!1315596 t!118304))

(declare-fun b_and!87923 () Bool)

(assert (= b_and!87917 (and (=> t!118304 result!84810) b_and!87923)))

(declare-fun m!1469031 () Bool)

(assert (=> d!370687 m!1469031))

(assert (=> b!1315596 m!1468989))

(assert (=> b!1315596 m!1468989))

(declare-fun m!1469033 () Bool)

(assert (=> b!1315596 m!1469033))

(declare-fun m!1469035 () Bool)

(assert (=> b!1315597 m!1469035))

(assert (=> start!116390 d!370687))

(declare-fun d!370689 () Bool)

(declare-fun choose!8048 (Int) Bool)

(assert (=> d!370689 (= (Exists!781 lambda!53525) (choose!8048 lambda!53525))))

(declare-fun bs!330317 () Bool)

(assert (= bs!330317 d!370689))

(declare-fun m!1469037 () Bool)

(assert (=> bs!330317 m!1469037))

(assert (=> b!1315084 d!370689))

(declare-fun bs!330319 () Bool)

(declare-fun d!370691 () Bool)

(assert (= bs!330319 (and d!370691 b!1315084)))

(declare-fun lambda!53554 () Int)

(assert (=> bs!330319 (= lambda!53554 lambda!53525)))

(assert (=> d!370691 true))

(assert (=> d!370691 true))

(assert (=> d!370691 (Exists!781 lambda!53554)))

(declare-fun lt!433779 () Unit!19396)

(declare-fun choose!8049 (Regex!3623 List!13407) Unit!19396)

(assert (=> d!370691 (= lt!433779 (choose!8049 lt!433562 lt!433563))))

(assert (=> d!370691 (validRegex!1549 lt!433562)))

(assert (=> d!370691 (= (lemmaPrefixMatchThenExistsStringThatMatches!99 lt!433562 lt!433563) lt!433779)))

(declare-fun bs!330320 () Bool)

(assert (= bs!330320 d!370691))

(declare-fun m!1469081 () Bool)

(assert (=> bs!330320 m!1469081))

(declare-fun m!1469083 () Bool)

(assert (=> bs!330320 m!1469083))

(assert (=> bs!330320 m!1468669))

(assert (=> b!1315084 d!370691))

(declare-fun b!1315627 () Bool)

(declare-fun e!843426 () tuple2!12960)

(assert (=> b!1315627 (= e!843426 (tuple2!12961 Nil!13343 (list!5023 lt!433572)))))

(declare-fun b!1315628 () Bool)

(declare-fun e!843425 () Bool)

(declare-fun lt!433781 () tuple2!12960)

(assert (=> b!1315628 (= e!843425 (= (_2!7366 lt!433781) (list!5023 lt!433572)))))

(declare-fun b!1315629 () Bool)

(declare-fun e!843424 () Bool)

(assert (=> b!1315629 (= e!843425 e!843424)))

(declare-fun res!591175 () Bool)

(assert (=> b!1315629 (= res!591175 (< (size!10858 (_2!7366 lt!433781)) (size!10858 (list!5023 lt!433572))))))

(assert (=> b!1315629 (=> (not res!591175) (not e!843424))))

(declare-fun b!1315630 () Bool)

(assert (=> b!1315630 (= e!843424 (not (isEmpty!7915 (_1!7366 lt!433781))))))

(declare-fun d!370705 () Bool)

(assert (=> d!370705 e!843425))

(declare-fun c!215827 () Bool)

(assert (=> d!370705 (= c!215827 (> (size!10859 (_1!7366 lt!433781)) 0))))

(assert (=> d!370705 (= lt!433781 e!843426)))

(declare-fun c!215826 () Bool)

(declare-fun lt!433783 () Option!2576)

(assert (=> d!370705 (= c!215826 ((_ is Some!2575) lt!433783))))

(assert (=> d!370705 (= lt!433783 (maxPrefix!1014 thiss!19762 rules!2550 (list!5023 lt!433572)))))

(assert (=> d!370705 (= (lexList!542 thiss!19762 rules!2550 (list!5023 lt!433572)) lt!433781)))

(declare-fun b!1315631 () Bool)

(declare-fun lt!433782 () tuple2!12960)

(assert (=> b!1315631 (= e!843426 (tuple2!12961 (Cons!13343 (_1!7367 (v!21118 lt!433783)) (_1!7366 lt!433782)) (_2!7366 lt!433782)))))

(assert (=> b!1315631 (= lt!433782 (lexList!542 thiss!19762 rules!2550 (_2!7367 (v!21118 lt!433783))))))

(assert (= (and d!370705 c!215826) b!1315631))

(assert (= (and d!370705 (not c!215826)) b!1315627))

(assert (= (and d!370705 c!215827) b!1315629))

(assert (= (and d!370705 (not c!215827)) b!1315628))

(assert (= (and b!1315629 res!591175) b!1315630))

(declare-fun m!1469085 () Bool)

(assert (=> b!1315629 m!1469085))

(assert (=> b!1315629 m!1468305))

(declare-fun m!1469087 () Bool)

(assert (=> b!1315629 m!1469087))

(declare-fun m!1469089 () Bool)

(assert (=> b!1315630 m!1469089))

(declare-fun m!1469091 () Bool)

(assert (=> d!370705 m!1469091))

(assert (=> d!370705 m!1468305))

(declare-fun m!1469093 () Bool)

(assert (=> d!370705 m!1469093))

(declare-fun m!1469095 () Bool)

(assert (=> b!1315631 m!1469095))

(assert (=> b!1315083 d!370705))

(declare-fun d!370707 () Bool)

(assert (=> d!370707 (= (list!5023 lt!433572) (list!5026 (c!215720 lt!433572)))))

(declare-fun bs!330321 () Bool)

(assert (= bs!330321 d!370707))

(declare-fun m!1469097 () Bool)

(assert (=> bs!330321 m!1469097))

(assert (=> b!1315083 d!370707))

(declare-fun d!370709 () Bool)

(assert (=> d!370709 (= (inv!17711 (tag!2571 (rule!4050 t2!34))) (= (mod (str.len (value!75438 (tag!2571 (rule!4050 t2!34)))) 2) 0))))

(assert (=> b!1315062 d!370709))

(declare-fun d!370711 () Bool)

(declare-fun res!591176 () Bool)

(declare-fun e!843427 () Bool)

(assert (=> d!370711 (=> (not res!591176) (not e!843427))))

(assert (=> d!370711 (= res!591176 (semiInverseModEq!868 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (toValue!3532 (transformation!2309 (rule!4050 t2!34)))))))

(assert (=> d!370711 (= (inv!17714 (transformation!2309 (rule!4050 t2!34))) e!843427)))

(declare-fun b!1315632 () Bool)

(assert (=> b!1315632 (= e!843427 (equivClasses!827 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (toValue!3532 (transformation!2309 (rule!4050 t2!34)))))))

(assert (= (and d!370711 res!591176) b!1315632))

(declare-fun m!1469099 () Bool)

(assert (=> d!370711 m!1469099))

(declare-fun m!1469101 () Bool)

(assert (=> b!1315632 m!1469101))

(assert (=> b!1315062 d!370711))

(declare-fun d!370713 () Bool)

(assert (=> d!370713 (= (list!5023 lt!433565) (list!5026 (c!215720 lt!433565)))))

(declare-fun bs!330322 () Bool)

(assert (= bs!330322 d!370713))

(declare-fun m!1469103 () Bool)

(assert (=> bs!330322 m!1469103))

(assert (=> b!1315085 d!370713))

(declare-fun e!843429 () Bool)

(declare-fun lt!433784 () List!13407)

(declare-fun b!1315636 () Bool)

(assert (=> b!1315636 (= e!843429 (or (not (= (Cons!13341 lt!433561 Nil!13341) Nil!13341)) (= lt!433784 lt!433577)))))

(declare-fun b!1315633 () Bool)

(declare-fun e!843428 () List!13407)

(assert (=> b!1315633 (= e!843428 (Cons!13341 lt!433561 Nil!13341))))

(declare-fun d!370715 () Bool)

(assert (=> d!370715 e!843429))

(declare-fun res!591178 () Bool)

(assert (=> d!370715 (=> (not res!591178) (not e!843429))))

(assert (=> d!370715 (= res!591178 (= (content!1874 lt!433784) ((_ map or) (content!1874 lt!433577) (content!1874 (Cons!13341 lt!433561 Nil!13341)))))))

(assert (=> d!370715 (= lt!433784 e!843428)))

(declare-fun c!215828 () Bool)

(assert (=> d!370715 (= c!215828 ((_ is Nil!13341) lt!433577))))

(assert (=> d!370715 (= (++!3398 lt!433577 (Cons!13341 lt!433561 Nil!13341)) lt!433784)))

(declare-fun b!1315635 () Bool)

(declare-fun res!591177 () Bool)

(assert (=> b!1315635 (=> (not res!591177) (not e!843429))))

(assert (=> b!1315635 (= res!591177 (= (size!10858 lt!433784) (+ (size!10858 lt!433577) (size!10858 (Cons!13341 lt!433561 Nil!13341)))))))

(declare-fun b!1315634 () Bool)

(assert (=> b!1315634 (= e!843428 (Cons!13341 (h!18742 lt!433577) (++!3398 (t!118280 lt!433577) (Cons!13341 lt!433561 Nil!13341))))))

(assert (= (and d!370715 c!215828) b!1315633))

(assert (= (and d!370715 (not c!215828)) b!1315634))

(assert (= (and d!370715 res!591178) b!1315635))

(assert (= (and b!1315635 res!591177) b!1315636))

(declare-fun m!1469105 () Bool)

(assert (=> d!370715 m!1469105))

(declare-fun m!1469107 () Bool)

(assert (=> d!370715 m!1469107))

(declare-fun m!1469109 () Bool)

(assert (=> d!370715 m!1469109))

(declare-fun m!1469111 () Bool)

(assert (=> b!1315635 m!1469111))

(declare-fun m!1469113 () Bool)

(assert (=> b!1315635 m!1469113))

(declare-fun m!1469115 () Bool)

(assert (=> b!1315635 m!1469115))

(declare-fun m!1469117 () Bool)

(assert (=> b!1315634 m!1469117))

(assert (=> b!1315085 d!370715))

(declare-fun d!370717 () Bool)

(declare-fun lt!433785 () C!7536)

(assert (=> d!370717 (= lt!433785 (apply!3032 (list!5023 lt!433570) 0))))

(assert (=> d!370717 (= lt!433785 (apply!3033 (c!215720 lt!433570) 0))))

(declare-fun e!843430 () Bool)

(assert (=> d!370717 e!843430))

(declare-fun res!591179 () Bool)

(assert (=> d!370717 (=> (not res!591179) (not e!843430))))

(assert (=> d!370717 (= res!591179 (<= 0 0))))

(assert (=> d!370717 (= (apply!3027 lt!433570 0) lt!433785)))

(declare-fun b!1315637 () Bool)

(assert (=> b!1315637 (= e!843430 (< 0 (size!10849 lt!433570)))))

(assert (= (and d!370717 res!591179) b!1315637))

(assert (=> d!370717 m!1468409))

(assert (=> d!370717 m!1468409))

(declare-fun m!1469119 () Bool)

(assert (=> d!370717 m!1469119))

(declare-fun m!1469121 () Bool)

(assert (=> d!370717 m!1469121))

(assert (=> b!1315637 m!1468317))

(assert (=> b!1315085 d!370717))

(declare-fun bs!330323 () Bool)

(declare-fun d!370719 () Bool)

(assert (= bs!330323 (and d!370719 b!1315094)))

(declare-fun lambda!53557 () Int)

(assert (=> bs!330323 (= lambda!53557 lambda!53526)))

(declare-fun lt!433788 () Unit!19396)

(declare-fun lemma!69 (List!13408 LexerInterface!2004 List!13408) Unit!19396)

(assert (=> d!370719 (= lt!433788 (lemma!69 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!77 (List!13410) Regex!3623)

(assert (=> d!370719 (= (rulesRegex!194 thiss!19762 rules!2550) (generalisedUnion!77 (map!2930 rules!2550 lambda!53557)))))

(declare-fun bs!330324 () Bool)

(assert (= bs!330324 d!370719))

(declare-fun m!1469123 () Bool)

(assert (=> bs!330324 m!1469123))

(declare-fun m!1469125 () Bool)

(assert (=> bs!330324 m!1469125))

(assert (=> bs!330324 m!1469125))

(declare-fun m!1469127 () Bool)

(assert (=> bs!330324 m!1469127))

(assert (=> b!1315085 d!370719))

(declare-fun d!370721 () Bool)

(declare-fun c!215831 () Bool)

(assert (=> d!370721 (= c!215831 (isEmpty!7914 lt!433563))))

(declare-fun e!843433 () Bool)

(assert (=> d!370721 (= (prefixMatch!136 lt!433562 lt!433563) e!843433)))

(declare-fun b!1315642 () Bool)

(declare-fun lostCause!275 (Regex!3623) Bool)

(assert (=> b!1315642 (= e!843433 (not (lostCause!275 lt!433562)))))

(declare-fun b!1315643 () Bool)

(assert (=> b!1315643 (= e!843433 (prefixMatch!136 (derivativeStep!899 lt!433562 (head!2273 lt!433563)) (tail!1884 lt!433563)))))

(assert (= (and d!370721 c!215831) b!1315642))

(assert (= (and d!370721 (not c!215831)) b!1315643))

(declare-fun m!1469129 () Bool)

(assert (=> d!370721 m!1469129))

(declare-fun m!1469131 () Bool)

(assert (=> b!1315642 m!1469131))

(declare-fun m!1469133 () Bool)

(assert (=> b!1315643 m!1469133))

(assert (=> b!1315643 m!1469133))

(declare-fun m!1469135 () Bool)

(assert (=> b!1315643 m!1469135))

(declare-fun m!1469137 () Bool)

(assert (=> b!1315643 m!1469137))

(assert (=> b!1315643 m!1469135))

(assert (=> b!1315643 m!1469137))

(declare-fun m!1469139 () Bool)

(assert (=> b!1315643 m!1469139))

(assert (=> b!1315085 d!370721))

(declare-fun d!370723 () Bool)

(declare-fun lt!433789 () BalanceConc!8716)

(assert (=> d!370723 (= (list!5023 lt!433789) (originalCharacters!3171 t1!34))))

(assert (=> d!370723 (= lt!433789 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34)))))

(assert (=> d!370723 (= (charsOf!1281 t1!34) lt!433789)))

(declare-fun b_lambda!38031 () Bool)

(assert (=> (not b_lambda!38031) (not d!370723)))

(assert (=> d!370723 t!118306))

(declare-fun b_and!87925 () Bool)

(assert (= b_and!87919 (and (=> t!118306 result!84812) b_and!87925)))

(assert (=> d!370723 t!118308))

(declare-fun b_and!87927 () Bool)

(assert (= b_and!87921 (and (=> t!118308 result!84814) b_and!87927)))

(assert (=> d!370723 t!118310))

(declare-fun b_and!87929 () Bool)

(assert (= b_and!87923 (and (=> t!118310 result!84816) b_and!87929)))

(declare-fun m!1469141 () Bool)

(assert (=> d!370723 m!1469141))

(assert (=> d!370723 m!1469025))

(assert (=> b!1315085 d!370723))

(declare-fun d!370725 () Bool)

(declare-fun lt!433790 () Bool)

(assert (=> d!370725 (= lt!433790 (isEmpty!7914 (list!5023 (_2!7365 lt!433580))))))

(assert (=> d!370725 (= lt!433790 (isEmpty!7916 (c!215720 (_2!7365 lt!433580))))))

(assert (=> d!370725 (= (isEmpty!7906 (_2!7365 lt!433580)) lt!433790)))

(declare-fun bs!330325 () Bool)

(assert (= bs!330325 d!370725))

(declare-fun m!1469143 () Bool)

(assert (=> bs!330325 m!1469143))

(assert (=> bs!330325 m!1469143))

(declare-fun m!1469145 () Bool)

(assert (=> bs!330325 m!1469145))

(declare-fun m!1469147 () Bool)

(assert (=> bs!330325 m!1469147))

(assert (=> b!1315064 d!370725))

(declare-fun d!370727 () Bool)

(declare-fun lt!433793 () Bool)

(declare-fun content!1877 (List!13408) (InoxSet Rule!4418))

(assert (=> d!370727 (= lt!433793 (select (content!1877 rules!2550) (rule!4050 t2!34)))))

(declare-fun e!843438 () Bool)

(assert (=> d!370727 (= lt!433793 e!843438)))

(declare-fun res!591184 () Bool)

(assert (=> d!370727 (=> (not res!591184) (not e!843438))))

(assert (=> d!370727 (= res!591184 ((_ is Cons!13342) rules!2550))))

(assert (=> d!370727 (= (contains!2339 rules!2550 (rule!4050 t2!34)) lt!433793)))

(declare-fun b!1315648 () Bool)

(declare-fun e!843439 () Bool)

(assert (=> b!1315648 (= e!843438 e!843439)))

(declare-fun res!591185 () Bool)

(assert (=> b!1315648 (=> res!591185 e!843439)))

(assert (=> b!1315648 (= res!591185 (= (h!18743 rules!2550) (rule!4050 t2!34)))))

(declare-fun b!1315649 () Bool)

(assert (=> b!1315649 (= e!843439 (contains!2339 (t!118281 rules!2550) (rule!4050 t2!34)))))

(assert (= (and d!370727 res!591184) b!1315648))

(assert (= (and b!1315648 (not res!591185)) b!1315649))

(declare-fun m!1469149 () Bool)

(assert (=> d!370727 m!1469149))

(declare-fun m!1469151 () Bool)

(assert (=> d!370727 m!1469151))

(declare-fun m!1469153 () Bool)

(assert (=> b!1315649 m!1469153))

(assert (=> b!1315063 d!370727))

(declare-fun b!1315650 () Bool)

(declare-fun e!843441 () Bool)

(assert (=> b!1315650 (= e!843441 (inv!16 (value!75439 t2!34)))))

(declare-fun b!1315651 () Bool)

(declare-fun e!843440 () Bool)

(assert (=> b!1315651 (= e!843441 e!843440)))

(declare-fun c!215833 () Bool)

(assert (=> b!1315651 (= c!215833 ((_ is IntegerValue!7198) (value!75439 t2!34)))))

(declare-fun b!1315652 () Bool)

(assert (=> b!1315652 (= e!843440 (inv!17 (value!75439 t2!34)))))

(declare-fun d!370729 () Bool)

(declare-fun c!215832 () Bool)

(assert (=> d!370729 (= c!215832 ((_ is IntegerValue!7197) (value!75439 t2!34)))))

(assert (=> d!370729 (= (inv!21 (value!75439 t2!34)) e!843441)))

(declare-fun b!1315653 () Bool)

(declare-fun e!843442 () Bool)

(assert (=> b!1315653 (= e!843442 (inv!15 (value!75439 t2!34)))))

(declare-fun b!1315654 () Bool)

(declare-fun res!591186 () Bool)

(assert (=> b!1315654 (=> res!591186 e!843442)))

(assert (=> b!1315654 (= res!591186 (not ((_ is IntegerValue!7199) (value!75439 t2!34))))))

(assert (=> b!1315654 (= e!843440 e!843442)))

(assert (= (and d!370729 c!215832) b!1315650))

(assert (= (and d!370729 (not c!215832)) b!1315651))

(assert (= (and b!1315651 c!215833) b!1315652))

(assert (= (and b!1315651 (not c!215833)) b!1315654))

(assert (= (and b!1315654 (not res!591186)) b!1315653))

(declare-fun m!1469155 () Bool)

(assert (=> b!1315650 m!1469155))

(declare-fun m!1469157 () Bool)

(assert (=> b!1315652 m!1469157))

(declare-fun m!1469159 () Bool)

(assert (=> b!1315653 m!1469159))

(assert (=> b!1315086 d!370729))

(declare-fun b!1315708 () Bool)

(declare-fun res!591198 () Bool)

(declare-fun e!843475 () Bool)

(assert (=> b!1315708 (=> (not res!591198) (not e!843475))))

(declare-fun lt!433796 () tuple2!12958)

(assert (=> b!1315708 (= res!591198 (= (list!5022 (_1!7365 lt!433796)) (_1!7366 (lexList!542 thiss!19762 rules!2550 (list!5023 lt!433558)))))))

(declare-fun b!1315709 () Bool)

(assert (=> b!1315709 (= e!843475 (= (list!5023 (_2!7365 lt!433796)) (_2!7366 (lexList!542 thiss!19762 rules!2550 (list!5023 lt!433558)))))))

(declare-fun b!1315711 () Bool)

(declare-fun e!843474 () Bool)

(assert (=> b!1315711 (= e!843474 (= (_2!7365 lt!433796) lt!433558))))

(declare-fun b!1315712 () Bool)

(declare-fun e!843476 () Bool)

(assert (=> b!1315712 (= e!843474 e!843476)))

(declare-fun res!591197 () Bool)

(assert (=> b!1315712 (= res!591197 (< (size!10849 (_2!7365 lt!433796)) (size!10849 lt!433558)))))

(assert (=> b!1315712 (=> (not res!591197) (not e!843476))))

(declare-fun d!370731 () Bool)

(assert (=> d!370731 e!843475))

(declare-fun res!591199 () Bool)

(assert (=> d!370731 (=> (not res!591199) (not e!843475))))

(assert (=> d!370731 (= res!591199 e!843474)))

(declare-fun c!215836 () Bool)

(assert (=> d!370731 (= c!215836 (> (size!10860 (_1!7365 lt!433796)) 0))))

(declare-fun lexTailRecV2!365 (LexerInterface!2004 List!13408 BalanceConc!8716 BalanceConc!8716 BalanceConc!8716 BalanceConc!8718) tuple2!12958)

(assert (=> d!370731 (= lt!433796 (lexTailRecV2!365 thiss!19762 rules!2550 lt!433558 (BalanceConc!8717 Empty!4388) lt!433558 (BalanceConc!8719 Empty!4389)))))

(assert (=> d!370731 (= (lex!839 thiss!19762 rules!2550 lt!433558) lt!433796)))

(declare-fun b!1315710 () Bool)

(declare-fun isEmpty!7917 (BalanceConc!8718) Bool)

(assert (=> b!1315710 (= e!843476 (not (isEmpty!7917 (_1!7365 lt!433796))))))

(assert (= (and d!370731 c!215836) b!1315712))

(assert (= (and d!370731 (not c!215836)) b!1315711))

(assert (= (and b!1315712 res!591197) b!1315710))

(assert (= (and d!370731 res!591199) b!1315708))

(assert (= (and b!1315708 res!591198) b!1315709))

(declare-fun m!1469195 () Bool)

(assert (=> b!1315708 m!1469195))

(assert (=> b!1315708 m!1468299))

(assert (=> b!1315708 m!1468299))

(assert (=> b!1315708 m!1468301))

(declare-fun m!1469197 () Bool)

(assert (=> b!1315709 m!1469197))

(assert (=> b!1315709 m!1468299))

(assert (=> b!1315709 m!1468299))

(assert (=> b!1315709 m!1468301))

(declare-fun m!1469199 () Bool)

(assert (=> b!1315712 m!1469199))

(declare-fun m!1469201 () Bool)

(assert (=> b!1315712 m!1469201))

(declare-fun m!1469203 () Bool)

(assert (=> d!370731 m!1469203))

(declare-fun m!1469205 () Bool)

(assert (=> d!370731 m!1469205))

(declare-fun m!1469207 () Bool)

(assert (=> b!1315710 m!1469207))

(assert (=> b!1315087 d!370731))

(declare-fun d!370755 () Bool)

(declare-fun lt!433799 () BalanceConc!8716)

(declare-fun printList!560 (LexerInterface!2004 List!13409) List!13407)

(assert (=> d!370755 (= (list!5023 lt!433799) (printList!560 thiss!19762 (list!5022 (singletonSeq!888 t1!34))))))

(declare-fun printTailRec!542 (LexerInterface!2004 BalanceConc!8718 Int BalanceConc!8716) BalanceConc!8716)

(assert (=> d!370755 (= lt!433799 (printTailRec!542 thiss!19762 (singletonSeq!888 t1!34) 0 (BalanceConc!8717 Empty!4388)))))

(assert (=> d!370755 (= (print!778 thiss!19762 (singletonSeq!888 t1!34)) lt!433799)))

(declare-fun bs!330336 () Bool)

(assert (= bs!330336 d!370755))

(declare-fun m!1469209 () Bool)

(assert (=> bs!330336 m!1469209))

(assert (=> bs!330336 m!1468423))

(assert (=> bs!330336 m!1468945))

(assert (=> bs!330336 m!1468945))

(declare-fun m!1469211 () Bool)

(assert (=> bs!330336 m!1469211))

(assert (=> bs!330336 m!1468423))

(declare-fun m!1469213 () Bool)

(assert (=> bs!330336 m!1469213))

(assert (=> b!1315087 d!370755))

(declare-fun b!1315725 () Bool)

(declare-fun e!843487 () Bool)

(declare-fun lt!433805 () Rule!4418)

(assert (=> b!1315725 (= e!843487 (contains!2339 rules!2550 lt!433805))))

(declare-fun b!1315726 () Bool)

(declare-fun e!843485 () Rule!4418)

(declare-fun e!843488 () Rule!4418)

(assert (=> b!1315726 (= e!843485 e!843488)))

(declare-fun c!215841 () Bool)

(assert (=> b!1315726 (= c!215841 ((_ is Cons!13342) rules!2550))))

(declare-fun d!370757 () Bool)

(assert (=> d!370757 e!843487))

(declare-fun res!591204 () Bool)

(assert (=> d!370757 (=> (not res!591204) (not e!843487))))

(declare-fun dynLambda!5823 (Int Rule!4418) Bool)

(assert (=> d!370757 (= res!591204 (dynLambda!5823 lambda!53528 lt!433805))))

(assert (=> d!370757 (= lt!433805 e!843485)))

(declare-fun c!215842 () Bool)

(declare-fun e!843486 () Bool)

(assert (=> d!370757 (= c!215842 e!843486)))

(declare-fun res!591205 () Bool)

(assert (=> d!370757 (=> (not res!591205) (not e!843486))))

(assert (=> d!370757 (= res!591205 ((_ is Cons!13342) rules!2550))))

(assert (=> d!370757 (exists!320 rules!2550 lambda!53528)))

(assert (=> d!370757 (= (getWitness!212 rules!2550 lambda!53528) lt!433805)))

(declare-fun b!1315727 () Bool)

(assert (=> b!1315727 (= e!843486 (dynLambda!5823 lambda!53528 (h!18743 rules!2550)))))

(declare-fun b!1315728 () Bool)

(assert (=> b!1315728 (= e!843488 (getWitness!212 (t!118281 rules!2550) lambda!53528))))

(declare-fun b!1315729 () Bool)

(declare-fun lt!433804 () Unit!19396)

(declare-fun Unit!19401 () Unit!19396)

(assert (=> b!1315729 (= lt!433804 Unit!19401)))

(assert (=> b!1315729 false))

(declare-fun head!2276 (List!13408) Rule!4418)

(assert (=> b!1315729 (= e!843488 (head!2276 rules!2550))))

(declare-fun b!1315730 () Bool)

(assert (=> b!1315730 (= e!843485 (h!18743 rules!2550))))

(assert (= (and d!370757 res!591205) b!1315727))

(assert (= (and d!370757 c!215842) b!1315730))

(assert (= (and d!370757 (not c!215842)) b!1315726))

(assert (= (and b!1315726 c!215841) b!1315728))

(assert (= (and b!1315726 (not c!215841)) b!1315729))

(assert (= (and d!370757 res!591204) b!1315725))

(declare-fun b_lambda!38059 () Bool)

(assert (=> (not b_lambda!38059) (not d!370757)))

(declare-fun b_lambda!38061 () Bool)

(assert (=> (not b_lambda!38061) (not b!1315727)))

(declare-fun m!1469215 () Bool)

(assert (=> b!1315725 m!1469215))

(declare-fun m!1469217 () Bool)

(assert (=> d!370757 m!1469217))

(assert (=> d!370757 m!1468403))

(declare-fun m!1469219 () Bool)

(assert (=> b!1315728 m!1469219))

(declare-fun m!1469221 () Bool)

(assert (=> b!1315729 m!1469221))

(declare-fun m!1469223 () Bool)

(assert (=> b!1315727 m!1469223))

(assert (=> b!1315087 d!370757))

(declare-fun d!370759 () Bool)

(declare-fun e!843491 () Bool)

(assert (=> d!370759 e!843491))

(declare-fun res!591208 () Bool)

(assert (=> d!370759 (=> (not res!591208) (not e!843491))))

(declare-fun lt!433808 () BalanceConc!8718)

(assert (=> d!370759 (= res!591208 (= (list!5022 lt!433808) (Cons!13343 t1!34 Nil!13343)))))

(declare-fun singleton!382 (Token!4280) BalanceConc!8718)

(assert (=> d!370759 (= lt!433808 (singleton!382 t1!34))))

(assert (=> d!370759 (= (singletonSeq!888 t1!34) lt!433808)))

(declare-fun b!1315733 () Bool)

(declare-fun isBalanced!1276 (Conc!4389) Bool)

(assert (=> b!1315733 (= e!843491 (isBalanced!1276 (c!215722 lt!433808)))))

(assert (= (and d!370759 res!591208) b!1315733))

(declare-fun m!1469225 () Bool)

(assert (=> d!370759 m!1469225))

(declare-fun m!1469227 () Bool)

(assert (=> d!370759 m!1469227))

(declare-fun m!1469229 () Bool)

(assert (=> b!1315733 m!1469229))

(assert (=> b!1315087 d!370759))

(declare-fun d!370761 () Bool)

(declare-fun list!5027 (Conc!4389) List!13409)

(assert (=> d!370761 (= (list!5022 (_1!7365 lt!433568)) (list!5027 (c!215722 (_1!7365 lt!433568))))))

(declare-fun bs!330337 () Bool)

(assert (= bs!330337 d!370761))

(declare-fun m!1469231 () Bool)

(assert (=> bs!330337 m!1469231))

(assert (=> b!1315087 d!370761))

(declare-fun d!370763 () Bool)

(declare-fun lt!433809 () Bool)

(assert (=> d!370763 (= lt!433809 (select (content!1877 rules!2550) (rule!4050 t1!34)))))

(declare-fun e!843492 () Bool)

(assert (=> d!370763 (= lt!433809 e!843492)))

(declare-fun res!591209 () Bool)

(assert (=> d!370763 (=> (not res!591209) (not e!843492))))

(assert (=> d!370763 (= res!591209 ((_ is Cons!13342) rules!2550))))

(assert (=> d!370763 (= (contains!2339 rules!2550 (rule!4050 t1!34)) lt!433809)))

(declare-fun b!1315734 () Bool)

(declare-fun e!843493 () Bool)

(assert (=> b!1315734 (= e!843492 e!843493)))

(declare-fun res!591210 () Bool)

(assert (=> b!1315734 (=> res!591210 e!843493)))

(assert (=> b!1315734 (= res!591210 (= (h!18743 rules!2550) (rule!4050 t1!34)))))

(declare-fun b!1315735 () Bool)

(assert (=> b!1315735 (= e!843493 (contains!2339 (t!118281 rules!2550) (rule!4050 t1!34)))))

(assert (= (and d!370763 res!591209) b!1315734))

(assert (= (and b!1315734 (not res!591210)) b!1315735))

(assert (=> d!370763 m!1469149))

(declare-fun m!1469233 () Bool)

(assert (=> d!370763 m!1469233))

(declare-fun m!1469235 () Bool)

(assert (=> b!1315735 m!1469235))

(assert (=> b!1315066 d!370763))

(declare-fun d!370765 () Bool)

(declare-fun res!591213 () Bool)

(declare-fun e!843496 () Bool)

(assert (=> d!370765 (=> (not res!591213) (not e!843496))))

(declare-fun rulesValid!837 (LexerInterface!2004 List!13408) Bool)

(assert (=> d!370765 (= res!591213 (rulesValid!837 thiss!19762 rules!2550))))

(assert (=> d!370765 (= (rulesInvariant!1874 thiss!19762 rules!2550) e!843496)))

(declare-fun b!1315738 () Bool)

(declare-datatypes ((List!13412 0))(
  ( (Nil!13346) (Cons!13346 (h!18747 String!16231) (t!118321 List!13412)) )
))
(declare-fun noDuplicateTag!837 (LexerInterface!2004 List!13408 List!13412) Bool)

(assert (=> b!1315738 (= e!843496 (noDuplicateTag!837 thiss!19762 rules!2550 Nil!13346))))

(assert (= (and d!370765 res!591213) b!1315738))

(declare-fun m!1469237 () Bool)

(assert (=> d!370765 m!1469237))

(declare-fun m!1469239 () Bool)

(assert (=> b!1315738 m!1469239))

(assert (=> b!1315089 d!370765))

(declare-fun d!370767 () Bool)

(assert (=> d!370767 (= (isEmpty!7907 rules!2550) ((_ is Nil!13342) rules!2550))))

(assert (=> b!1315068 d!370767))

(declare-fun d!370769 () Bool)

(declare-fun res!591226 () Bool)

(declare-fun e!843517 () Bool)

(assert (=> d!370769 (=> res!591226 e!843517)))

(assert (=> d!370769 (= res!591226 ((_ is ElementMatch!3623) (regex!2309 (rule!4050 t1!34))))))

(assert (=> d!370769 (= (validRegex!1549 (regex!2309 (rule!4050 t1!34))) e!843517)))

(declare-fun b!1315757 () Bool)

(declare-fun res!591225 () Bool)

(declare-fun e!843514 () Bool)

(assert (=> b!1315757 (=> res!591225 e!843514)))

(assert (=> b!1315757 (= res!591225 (not ((_ is Concat!6023) (regex!2309 (rule!4050 t1!34)))))))

(declare-fun e!843516 () Bool)

(assert (=> b!1315757 (= e!843516 e!843514)))

(declare-fun bm!89407 () Bool)

(declare-fun call!89412 () Bool)

(declare-fun c!215848 () Bool)

(assert (=> bm!89407 (= call!89412 (validRegex!1549 (ite c!215848 (regTwo!7759 (regex!2309 (rule!4050 t1!34))) (regTwo!7758 (regex!2309 (rule!4050 t1!34))))))))

(declare-fun bm!89408 () Bool)

(declare-fun call!89413 () Bool)

(declare-fun call!89414 () Bool)

(assert (=> bm!89408 (= call!89413 call!89414)))

(declare-fun b!1315758 () Bool)

(declare-fun e!843513 () Bool)

(assert (=> b!1315758 (= e!843513 call!89414)))

(declare-fun b!1315759 () Bool)

(declare-fun e!843515 () Bool)

(assert (=> b!1315759 (= e!843517 e!843515)))

(declare-fun c!215847 () Bool)

(assert (=> b!1315759 (= c!215847 ((_ is Star!3623) (regex!2309 (rule!4050 t1!34))))))

(declare-fun b!1315760 () Bool)

(assert (=> b!1315760 (= e!843515 e!843513)))

(declare-fun res!591227 () Bool)

(assert (=> b!1315760 (= res!591227 (not (nullable!1147 (reg!3952 (regex!2309 (rule!4050 t1!34))))))))

(assert (=> b!1315760 (=> (not res!591227) (not e!843513))))

(declare-fun bm!89409 () Bool)

(assert (=> bm!89409 (= call!89414 (validRegex!1549 (ite c!215847 (reg!3952 (regex!2309 (rule!4050 t1!34))) (ite c!215848 (regOne!7759 (regex!2309 (rule!4050 t1!34))) (regOne!7758 (regex!2309 (rule!4050 t1!34)))))))))

(declare-fun b!1315761 () Bool)

(declare-fun e!843511 () Bool)

(assert (=> b!1315761 (= e!843514 e!843511)))

(declare-fun res!591228 () Bool)

(assert (=> b!1315761 (=> (not res!591228) (not e!843511))))

(assert (=> b!1315761 (= res!591228 call!89413)))

(declare-fun b!1315762 () Bool)

(declare-fun e!843512 () Bool)

(assert (=> b!1315762 (= e!843512 call!89412)))

(declare-fun b!1315763 () Bool)

(declare-fun res!591224 () Bool)

(assert (=> b!1315763 (=> (not res!591224) (not e!843512))))

(assert (=> b!1315763 (= res!591224 call!89413)))

(assert (=> b!1315763 (= e!843516 e!843512)))

(declare-fun b!1315764 () Bool)

(assert (=> b!1315764 (= e!843511 call!89412)))

(declare-fun b!1315765 () Bool)

(assert (=> b!1315765 (= e!843515 e!843516)))

(assert (=> b!1315765 (= c!215848 ((_ is Union!3623) (regex!2309 (rule!4050 t1!34))))))

(assert (= (and d!370769 (not res!591226)) b!1315759))

(assert (= (and b!1315759 c!215847) b!1315760))

(assert (= (and b!1315759 (not c!215847)) b!1315765))

(assert (= (and b!1315760 res!591227) b!1315758))

(assert (= (and b!1315765 c!215848) b!1315763))

(assert (= (and b!1315765 (not c!215848)) b!1315757))

(assert (= (and b!1315763 res!591224) b!1315762))

(assert (= (and b!1315757 (not res!591225)) b!1315761))

(assert (= (and b!1315761 res!591228) b!1315764))

(assert (= (or b!1315763 b!1315761) bm!89408))

(assert (= (or b!1315762 b!1315764) bm!89407))

(assert (= (or b!1315758 bm!89408) bm!89409))

(declare-fun m!1469241 () Bool)

(assert (=> bm!89407 m!1469241))

(declare-fun m!1469243 () Bool)

(assert (=> b!1315760 m!1469243))

(declare-fun m!1469245 () Bool)

(assert (=> bm!89409 m!1469245))

(assert (=> b!1315067 d!370769))

(declare-fun d!370771 () Bool)

(assert (=> d!370771 (dynLambda!5823 lambda!53529 (rule!4050 t2!34))))

(declare-fun lt!433812 () Unit!19396)

(declare-fun choose!8050 (List!13408 Int Rule!4418) Unit!19396)

(assert (=> d!370771 (= lt!433812 (choose!8050 rules!2550 lambda!53529 (rule!4050 t2!34)))))

(declare-fun e!843520 () Bool)

(assert (=> d!370771 e!843520))

(declare-fun res!591231 () Bool)

(assert (=> d!370771 (=> (not res!591231) (not e!843520))))

(declare-fun forall!3293 (List!13408 Int) Bool)

(assert (=> d!370771 (= res!591231 (forall!3293 rules!2550 lambda!53529))))

(assert (=> d!370771 (= (forallContained!560 rules!2550 lambda!53529 (rule!4050 t2!34)) lt!433812)))

(declare-fun b!1315768 () Bool)

(assert (=> b!1315768 (= e!843520 (contains!2339 rules!2550 (rule!4050 t2!34)))))

(assert (= (and d!370771 res!591231) b!1315768))

(declare-fun b_lambda!38063 () Bool)

(assert (=> (not b_lambda!38063) (not d!370771)))

(declare-fun m!1469247 () Bool)

(assert (=> d!370771 m!1469247))

(declare-fun m!1469249 () Bool)

(assert (=> d!370771 m!1469249))

(declare-fun m!1469251 () Bool)

(assert (=> d!370771 m!1469251))

(assert (=> b!1315768 m!1468303))

(assert (=> b!1315067 d!370771))

(declare-fun d!370773 () Bool)

(assert (=> d!370773 (dynLambda!5823 lambda!53529 (rule!4050 t1!34))))

(declare-fun lt!433813 () Unit!19396)

(assert (=> d!370773 (= lt!433813 (choose!8050 rules!2550 lambda!53529 (rule!4050 t1!34)))))

(declare-fun e!843521 () Bool)

(assert (=> d!370773 e!843521))

(declare-fun res!591232 () Bool)

(assert (=> d!370773 (=> (not res!591232) (not e!843521))))

(assert (=> d!370773 (= res!591232 (forall!3293 rules!2550 lambda!53529))))

(assert (=> d!370773 (= (forallContained!560 rules!2550 lambda!53529 (rule!4050 t1!34)) lt!433813)))

(declare-fun b!1315769 () Bool)

(assert (=> b!1315769 (= e!843521 (contains!2339 rules!2550 (rule!4050 t1!34)))))

(assert (= (and d!370773 res!591232) b!1315769))

(declare-fun b_lambda!38065 () Bool)

(assert (=> (not b_lambda!38065) (not d!370773)))

(declare-fun m!1469253 () Bool)

(assert (=> d!370773 m!1469253))

(declare-fun m!1469255 () Bool)

(assert (=> d!370773 m!1469255))

(assert (=> d!370773 m!1469251))

(assert (=> b!1315769 m!1468351))

(assert (=> b!1315067 d!370773))

(declare-fun d!370775 () Bool)

(assert (=> d!370775 (dynLambda!5823 lambda!53529 lt!433573)))

(declare-fun lt!433814 () Unit!19396)

(assert (=> d!370775 (= lt!433814 (choose!8050 rules!2550 lambda!53529 lt!433573))))

(declare-fun e!843522 () Bool)

(assert (=> d!370775 e!843522))

(declare-fun res!591233 () Bool)

(assert (=> d!370775 (=> (not res!591233) (not e!843522))))

(assert (=> d!370775 (= res!591233 (forall!3293 rules!2550 lambda!53529))))

(assert (=> d!370775 (= (forallContained!560 rules!2550 lambda!53529 lt!433573) lt!433814)))

(declare-fun b!1315770 () Bool)

(assert (=> b!1315770 (= e!843522 (contains!2339 rules!2550 lt!433573))))

(assert (= (and d!370775 res!591233) b!1315770))

(declare-fun b_lambda!38067 () Bool)

(assert (=> (not b_lambda!38067) (not d!370775)))

(declare-fun m!1469257 () Bool)

(assert (=> d!370775 m!1469257))

(declare-fun m!1469259 () Bool)

(assert (=> d!370775 m!1469259))

(assert (=> d!370775 m!1469251))

(assert (=> b!1315770 m!1468353))

(assert (=> b!1315067 d!370775))

(declare-fun d!370777 () Bool)

(declare-fun lt!433815 () Bool)

(assert (=> d!370777 (= lt!433815 (select (content!1877 rules!2550) lt!433573))))

(declare-fun e!843523 () Bool)

(assert (=> d!370777 (= lt!433815 e!843523)))

(declare-fun res!591234 () Bool)

(assert (=> d!370777 (=> (not res!591234) (not e!843523))))

(assert (=> d!370777 (= res!591234 ((_ is Cons!13342) rules!2550))))

(assert (=> d!370777 (= (contains!2339 rules!2550 lt!433573) lt!433815)))

(declare-fun b!1315771 () Bool)

(declare-fun e!843524 () Bool)

(assert (=> b!1315771 (= e!843523 e!843524)))

(declare-fun res!591235 () Bool)

(assert (=> b!1315771 (=> res!591235 e!843524)))

(assert (=> b!1315771 (= res!591235 (= (h!18743 rules!2550) lt!433573))))

(declare-fun b!1315772 () Bool)

(assert (=> b!1315772 (= e!843524 (contains!2339 (t!118281 rules!2550) lt!433573))))

(assert (= (and d!370777 res!591234) b!1315771))

(assert (= (and b!1315771 (not res!591235)) b!1315772))

(assert (=> d!370777 m!1469149))

(declare-fun m!1469261 () Bool)

(assert (=> d!370777 m!1469261))

(declare-fun m!1469263 () Bool)

(assert (=> b!1315772 m!1469263))

(assert (=> b!1315069 d!370777))

(declare-fun d!370779 () Bool)

(declare-fun lt!433816 () Bool)

(assert (=> d!370779 (= lt!433816 (select (content!1874 lt!433574) lt!433561))))

(declare-fun e!843525 () Bool)

(assert (=> d!370779 (= lt!433816 e!843525)))

(declare-fun res!591237 () Bool)

(assert (=> d!370779 (=> (not res!591237) (not e!843525))))

(assert (=> d!370779 (= res!591237 ((_ is Cons!13341) lt!433574))))

(assert (=> d!370779 (= (contains!2340 lt!433574 lt!433561) lt!433816)))

(declare-fun b!1315773 () Bool)

(declare-fun e!843526 () Bool)

(assert (=> b!1315773 (= e!843525 e!843526)))

(declare-fun res!591236 () Bool)

(assert (=> b!1315773 (=> res!591236 e!843526)))

(assert (=> b!1315773 (= res!591236 (= (h!18742 lt!433574) lt!433561))))

(declare-fun b!1315774 () Bool)

(assert (=> b!1315774 (= e!843526 (contains!2340 (t!118280 lt!433574) lt!433561))))

(assert (= (and d!370779 res!591237) b!1315773))

(assert (= (and b!1315773 (not res!591236)) b!1315774))

(assert (=> d!370779 m!1468673))

(declare-fun m!1469265 () Bool)

(assert (=> d!370779 m!1469265))

(declare-fun m!1469267 () Bool)

(assert (=> b!1315774 m!1469267))

(assert (=> b!1315092 d!370779))

(declare-fun b!1315775 () Bool)

(declare-fun res!591240 () Bool)

(declare-fun e!843529 () Bool)

(assert (=> b!1315775 (=> (not res!591240) (not e!843529))))

(declare-fun lt!433820 () Option!2576)

(assert (=> b!1315775 (= res!591240 (= (value!75439 (_1!7367 (get!4256 lt!433820))) (apply!3031 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))) (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!433820)))))))))

(declare-fun b!1315776 () Bool)

(declare-fun e!843528 () Option!2576)

(declare-fun lt!433819 () Option!2576)

(declare-fun lt!433821 () Option!2576)

(assert (=> b!1315776 (= e!843528 (ite (and ((_ is None!2575) lt!433819) ((_ is None!2575) lt!433821)) None!2575 (ite ((_ is None!2575) lt!433821) lt!433819 (ite ((_ is None!2575) lt!433819) lt!433821 (ite (>= (size!10848 (_1!7367 (v!21118 lt!433819))) (size!10848 (_1!7367 (v!21118 lt!433821)))) lt!433819 lt!433821)))))))

(declare-fun call!89415 () Option!2576)

(assert (=> b!1315776 (= lt!433819 call!89415)))

(assert (=> b!1315776 (= lt!433821 (maxPrefix!1014 thiss!19762 (t!118281 rules!2550) lt!433577))))

(declare-fun b!1315777 () Bool)

(declare-fun res!591239 () Bool)

(assert (=> b!1315777 (=> (not res!591239) (not e!843529))))

(assert (=> b!1315777 (= res!591239 (< (size!10858 (_2!7367 (get!4256 lt!433820))) (size!10858 lt!433577)))))

(declare-fun b!1315778 () Bool)

(declare-fun res!591242 () Bool)

(assert (=> b!1315778 (=> (not res!591242) (not e!843529))))

(assert (=> b!1315778 (= res!591242 (= (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820)))) (originalCharacters!3171 (_1!7367 (get!4256 lt!433820)))))))

(declare-fun b!1315779 () Bool)

(assert (=> b!1315779 (= e!843528 call!89415)))

(declare-fun d!370781 () Bool)

(declare-fun e!843527 () Bool)

(assert (=> d!370781 e!843527))

(declare-fun res!591243 () Bool)

(assert (=> d!370781 (=> res!591243 e!843527)))

(assert (=> d!370781 (= res!591243 (isEmpty!7912 lt!433820))))

(assert (=> d!370781 (= lt!433820 e!843528)))

(declare-fun c!215849 () Bool)

(assert (=> d!370781 (= c!215849 (and ((_ is Cons!13342) rules!2550) ((_ is Nil!13342) (t!118281 rules!2550))))))

(declare-fun lt!433817 () Unit!19396)

(declare-fun lt!433818 () Unit!19396)

(assert (=> d!370781 (= lt!433817 lt!433818)))

(assert (=> d!370781 (isPrefix!1073 lt!433577 lt!433577)))

(assert (=> d!370781 (= lt!433818 (lemmaIsPrefixRefl!752 lt!433577 lt!433577))))

(assert (=> d!370781 (rulesValidInductive!725 thiss!19762 rules!2550)))

(assert (=> d!370781 (= (maxPrefix!1014 thiss!19762 rules!2550 lt!433577) lt!433820)))

(declare-fun b!1315780 () Bool)

(declare-fun res!591244 () Bool)

(assert (=> b!1315780 (=> (not res!591244) (not e!843529))))

(assert (=> b!1315780 (= res!591244 (= (++!3398 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820)))) (_2!7367 (get!4256 lt!433820))) lt!433577))))

(declare-fun b!1315781 () Bool)

(declare-fun res!591238 () Bool)

(assert (=> b!1315781 (=> (not res!591238) (not e!843529))))

(assert (=> b!1315781 (= res!591238 (matchR!1625 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))) (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820))))))))

(declare-fun b!1315782 () Bool)

(assert (=> b!1315782 (= e!843529 (contains!2339 rules!2550 (rule!4050 (_1!7367 (get!4256 lt!433820)))))))

(declare-fun b!1315783 () Bool)

(assert (=> b!1315783 (= e!843527 e!843529)))

(declare-fun res!591241 () Bool)

(assert (=> b!1315783 (=> (not res!591241) (not e!843529))))

(assert (=> b!1315783 (= res!591241 (isDefined!2176 lt!433820))))

(declare-fun bm!89410 () Bool)

(assert (=> bm!89410 (= call!89415 (maxPrefixOneRule!578 thiss!19762 (h!18743 rules!2550) lt!433577))))

(assert (= (and d!370781 c!215849) b!1315779))

(assert (= (and d!370781 (not c!215849)) b!1315776))

(assert (= (or b!1315779 b!1315776) bm!89410))

(assert (= (and d!370781 (not res!591243)) b!1315783))

(assert (= (and b!1315783 res!591241) b!1315778))

(assert (= (and b!1315778 res!591242) b!1315777))

(assert (= (and b!1315777 res!591239) b!1315780))

(assert (= (and b!1315780 res!591244) b!1315775))

(assert (= (and b!1315775 res!591240) b!1315781))

(assert (= (and b!1315781 res!591238) b!1315782))

(declare-fun m!1469269 () Bool)

(assert (=> b!1315777 m!1469269))

(declare-fun m!1469271 () Bool)

(assert (=> b!1315777 m!1469271))

(assert (=> b!1315777 m!1469113))

(assert (=> b!1315782 m!1469269))

(declare-fun m!1469273 () Bool)

(assert (=> b!1315782 m!1469273))

(declare-fun m!1469275 () Bool)

(assert (=> b!1315776 m!1469275))

(assert (=> b!1315781 m!1469269))

(declare-fun m!1469277 () Bool)

(assert (=> b!1315781 m!1469277))

(assert (=> b!1315781 m!1469277))

(declare-fun m!1469279 () Bool)

(assert (=> b!1315781 m!1469279))

(assert (=> b!1315781 m!1469279))

(declare-fun m!1469281 () Bool)

(assert (=> b!1315781 m!1469281))

(declare-fun m!1469283 () Bool)

(assert (=> bm!89410 m!1469283))

(declare-fun m!1469285 () Bool)

(assert (=> d!370781 m!1469285))

(declare-fun m!1469287 () Bool)

(assert (=> d!370781 m!1469287))

(declare-fun m!1469289 () Bool)

(assert (=> d!370781 m!1469289))

(assert (=> d!370781 m!1468603))

(assert (=> b!1315778 m!1469269))

(assert (=> b!1315778 m!1469277))

(assert (=> b!1315778 m!1469277))

(assert (=> b!1315778 m!1469279))

(assert (=> b!1315780 m!1469269))

(assert (=> b!1315780 m!1469277))

(assert (=> b!1315780 m!1469277))

(assert (=> b!1315780 m!1469279))

(assert (=> b!1315780 m!1469279))

(declare-fun m!1469291 () Bool)

(assert (=> b!1315780 m!1469291))

(assert (=> b!1315775 m!1469269))

(declare-fun m!1469293 () Bool)

(assert (=> b!1315775 m!1469293))

(assert (=> b!1315775 m!1469293))

(declare-fun m!1469295 () Bool)

(assert (=> b!1315775 m!1469295))

(declare-fun m!1469297 () Bool)

(assert (=> b!1315783 m!1469297))

(assert (=> b!1315091 d!370781))

(declare-fun bs!330338 () Bool)

(declare-fun d!370783 () Bool)

(assert (= bs!330338 (and d!370783 b!1315070)))

(declare-fun lambda!53560 () Int)

(assert (=> bs!330338 (not (= lambda!53560 lambda!53528))))

(declare-fun bs!330339 () Bool)

(assert (= bs!330339 (and d!370783 b!1315067)))

(assert (=> bs!330339 (not (= lambda!53560 lambda!53529))))

(assert (=> d!370783 true))

(declare-fun order!8025 () Int)

(declare-fun dynLambda!5824 (Int Int) Int)

(assert (=> d!370783 (< (dynLambda!5824 order!8025 lambda!53528) (dynLambda!5824 order!8025 lambda!53560))))

(assert (=> d!370783 (= (exists!320 rules!2550 lambda!53528) (not (forall!3293 rules!2550 lambda!53560)))))

(declare-fun bs!330340 () Bool)

(assert (= bs!330340 d!370783))

(declare-fun m!1469299 () Bool)

(assert (=> bs!330340 m!1469299))

(assert (=> b!1315070 d!370783))

(declare-fun bs!330341 () Bool)

(declare-fun d!370785 () Bool)

(assert (= bs!330341 (and d!370785 b!1315070)))

(declare-fun lambda!53563 () Int)

(assert (=> bs!330341 (not (= lambda!53563 lambda!53528))))

(declare-fun bs!330342 () Bool)

(assert (= bs!330342 (and d!370785 b!1315067)))

(assert (=> bs!330342 (not (= lambda!53563 lambda!53529))))

(declare-fun bs!330343 () Bool)

(assert (= bs!330343 (and d!370785 d!370783)))

(assert (=> bs!330343 (not (= lambda!53563 lambda!53560))))

(assert (=> d!370785 true))

(assert (=> d!370785 true))

(declare-fun order!8027 () Int)

(declare-fun dynLambda!5825 (Int Int) Int)

(assert (=> d!370785 (< (dynLambda!5825 order!8027 lambda!53526) (dynLambda!5824 order!8025 lambda!53563))))

(assert (=> d!370785 (exists!320 rules!2550 lambda!53563)))

(declare-fun lt!433824 () Unit!19396)

(declare-fun choose!8051 (List!13408 Int Regex!3623) Unit!19396)

(assert (=> d!370785 (= lt!433824 (choose!8051 rules!2550 lambda!53526 lt!433567))))

(assert (=> d!370785 (contains!2341 (map!2930 rules!2550 lambda!53526) lt!433567)))

(assert (=> d!370785 (= (lemmaMapContains!52 rules!2550 lambda!53526 lt!433567) lt!433824)))

(declare-fun bs!330344 () Bool)

(assert (= bs!330344 d!370785))

(declare-fun m!1469301 () Bool)

(assert (=> bs!330344 m!1469301))

(declare-fun m!1469303 () Bool)

(assert (=> bs!330344 m!1469303))

(assert (=> bs!330344 m!1468333))

(assert (=> bs!330344 m!1468333))

(assert (=> bs!330344 m!1468335))

(assert (=> b!1315070 d!370785))

(declare-fun d!370787 () Bool)

(declare-fun res!591249 () Bool)

(declare-fun e!843534 () Bool)

(assert (=> d!370787 (=> res!591249 e!843534)))

(assert (=> d!370787 (= res!591249 (not ((_ is Cons!13342) rules!2550)))))

(assert (=> d!370787 (= (sepAndNonSepRulesDisjointChars!682 rules!2550 rules!2550) e!843534)))

(declare-fun b!1315794 () Bool)

(declare-fun e!843535 () Bool)

(assert (=> b!1315794 (= e!843534 e!843535)))

(declare-fun res!591250 () Bool)

(assert (=> b!1315794 (=> (not res!591250) (not e!843535))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!312 (Rule!4418 List!13408) Bool)

(assert (=> b!1315794 (= res!591250 (ruleDisjointCharsFromAllFromOtherType!312 (h!18743 rules!2550) rules!2550))))

(declare-fun b!1315795 () Bool)

(assert (=> b!1315795 (= e!843535 (sepAndNonSepRulesDisjointChars!682 rules!2550 (t!118281 rules!2550)))))

(assert (= (and d!370787 (not res!591249)) b!1315794))

(assert (= (and b!1315794 res!591250) b!1315795))

(declare-fun m!1469305 () Bool)

(assert (=> b!1315794 m!1469305))

(declare-fun m!1469307 () Bool)

(assert (=> b!1315795 m!1469307))

(assert (=> b!1315093 d!370787))

(declare-fun d!370789 () Bool)

(declare-fun lt!433826 () Bool)

(declare-fun e!843536 () Bool)

(assert (=> d!370789 (= lt!433826 e!843536)))

(declare-fun res!591251 () Bool)

(assert (=> d!370789 (=> (not res!591251) (not e!843536))))

(assert (=> d!370789 (= res!591251 (= (list!5022 (_1!7365 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t2!34))))) (list!5022 (singletonSeq!888 t2!34))))))

(declare-fun e!843537 () Bool)

(assert (=> d!370789 (= lt!433826 e!843537)))

(declare-fun res!591252 () Bool)

(assert (=> d!370789 (=> (not res!591252) (not e!843537))))

(declare-fun lt!433825 () tuple2!12958)

(assert (=> d!370789 (= res!591252 (= (size!10860 (_1!7365 lt!433825)) 1))))

(assert (=> d!370789 (= lt!433825 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t2!34))))))

(assert (=> d!370789 (not (isEmpty!7907 rules!2550))))

(assert (=> d!370789 (= (rulesProduceIndividualToken!973 thiss!19762 rules!2550 t2!34) lt!433826)))

(declare-fun b!1315796 () Bool)

(declare-fun res!591253 () Bool)

(assert (=> b!1315796 (=> (not res!591253) (not e!843537))))

(assert (=> b!1315796 (= res!591253 (= (apply!3035 (_1!7365 lt!433825) 0) t2!34))))

(declare-fun b!1315797 () Bool)

(assert (=> b!1315797 (= e!843537 (isEmpty!7906 (_2!7365 lt!433825)))))

(declare-fun b!1315798 () Bool)

(assert (=> b!1315798 (= e!843536 (isEmpty!7906 (_2!7365 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t2!34))))))))

(assert (= (and d!370789 res!591252) b!1315796))

(assert (= (and b!1315796 res!591253) b!1315797))

(assert (= (and d!370789 res!591251) b!1315798))

(assert (=> d!370789 m!1468329))

(assert (=> d!370789 m!1468393))

(declare-fun m!1469309 () Bool)

(assert (=> d!370789 m!1469309))

(assert (=> d!370789 m!1468329))

(declare-fun m!1469311 () Bool)

(assert (=> d!370789 m!1469311))

(assert (=> d!370789 m!1468329))

(assert (=> d!370789 m!1468331))

(assert (=> d!370789 m!1468331))

(declare-fun m!1469313 () Bool)

(assert (=> d!370789 m!1469313))

(declare-fun m!1469315 () Bool)

(assert (=> d!370789 m!1469315))

(declare-fun m!1469317 () Bool)

(assert (=> b!1315796 m!1469317))

(declare-fun m!1469319 () Bool)

(assert (=> b!1315797 m!1469319))

(assert (=> b!1315798 m!1468329))

(assert (=> b!1315798 m!1468329))

(assert (=> b!1315798 m!1468331))

(assert (=> b!1315798 m!1468331))

(assert (=> b!1315798 m!1469313))

(declare-fun m!1469321 () Bool)

(assert (=> b!1315798 m!1469321))

(assert (=> b!1315072 d!370789))

(declare-fun d!370791 () Bool)

(assert (=> d!370791 (= (list!5022 (_1!7365 lt!433580)) (list!5027 (c!215722 (_1!7365 lt!433580))))))

(declare-fun bs!330345 () Bool)

(assert (= bs!330345 d!370791))

(declare-fun m!1469323 () Bool)

(assert (=> bs!330345 m!1469323))

(assert (=> b!1315071 d!370791))

(declare-fun b!1315799 () Bool)

(declare-fun res!591255 () Bool)

(declare-fun e!843539 () Bool)

(assert (=> b!1315799 (=> (not res!591255) (not e!843539))))

(declare-fun lt!433827 () tuple2!12958)

(assert (=> b!1315799 (= res!591255 (= (list!5022 (_1!7365 lt!433827)) (_1!7366 (lexList!542 thiss!19762 rules!2550 (list!5023 lt!433572)))))))

(declare-fun b!1315800 () Bool)

(assert (=> b!1315800 (= e!843539 (= (list!5023 (_2!7365 lt!433827)) (_2!7366 (lexList!542 thiss!19762 rules!2550 (list!5023 lt!433572)))))))

(declare-fun b!1315802 () Bool)

(declare-fun e!843538 () Bool)

(assert (=> b!1315802 (= e!843538 (= (_2!7365 lt!433827) lt!433572))))

(declare-fun b!1315803 () Bool)

(declare-fun e!843540 () Bool)

(assert (=> b!1315803 (= e!843538 e!843540)))

(declare-fun res!591254 () Bool)

(assert (=> b!1315803 (= res!591254 (< (size!10849 (_2!7365 lt!433827)) (size!10849 lt!433572)))))

(assert (=> b!1315803 (=> (not res!591254) (not e!843540))))

(declare-fun d!370793 () Bool)

(assert (=> d!370793 e!843539))

(declare-fun res!591256 () Bool)

(assert (=> d!370793 (=> (not res!591256) (not e!843539))))

(assert (=> d!370793 (= res!591256 e!843538)))

(declare-fun c!215850 () Bool)

(assert (=> d!370793 (= c!215850 (> (size!10860 (_1!7365 lt!433827)) 0))))

(assert (=> d!370793 (= lt!433827 (lexTailRecV2!365 thiss!19762 rules!2550 lt!433572 (BalanceConc!8717 Empty!4388) lt!433572 (BalanceConc!8719 Empty!4389)))))

(assert (=> d!370793 (= (lex!839 thiss!19762 rules!2550 lt!433572) lt!433827)))

(declare-fun b!1315801 () Bool)

(assert (=> b!1315801 (= e!843540 (not (isEmpty!7917 (_1!7365 lt!433827))))))

(assert (= (and d!370793 c!215850) b!1315803))

(assert (= (and d!370793 (not c!215850)) b!1315802))

(assert (= (and b!1315803 res!591254) b!1315801))

(assert (= (and d!370793 res!591256) b!1315799))

(assert (= (and b!1315799 res!591255) b!1315800))

(declare-fun m!1469325 () Bool)

(assert (=> b!1315799 m!1469325))

(assert (=> b!1315799 m!1468305))

(assert (=> b!1315799 m!1468305))

(assert (=> b!1315799 m!1468307))

(declare-fun m!1469327 () Bool)

(assert (=> b!1315800 m!1469327))

(assert (=> b!1315800 m!1468305))

(assert (=> b!1315800 m!1468305))

(assert (=> b!1315800 m!1468307))

(declare-fun m!1469329 () Bool)

(assert (=> b!1315803 m!1469329))

(declare-fun m!1469331 () Bool)

(assert (=> b!1315803 m!1469331))

(declare-fun m!1469333 () Bool)

(assert (=> d!370793 m!1469333))

(declare-fun m!1469335 () Bool)

(assert (=> d!370793 m!1469335))

(declare-fun m!1469337 () Bool)

(assert (=> b!1315801 m!1469337))

(assert (=> b!1315071 d!370793))

(declare-fun d!370795 () Bool)

(declare-fun lt!433828 () BalanceConc!8716)

(assert (=> d!370795 (= (list!5023 lt!433828) (printList!560 thiss!19762 (list!5022 (singletonSeq!888 t2!34))))))

(assert (=> d!370795 (= lt!433828 (printTailRec!542 thiss!19762 (singletonSeq!888 t2!34) 0 (BalanceConc!8717 Empty!4388)))))

(assert (=> d!370795 (= (print!778 thiss!19762 (singletonSeq!888 t2!34)) lt!433828)))

(declare-fun bs!330346 () Bool)

(assert (= bs!330346 d!370795))

(declare-fun m!1469339 () Bool)

(assert (=> bs!330346 m!1469339))

(assert (=> bs!330346 m!1468329))

(assert (=> bs!330346 m!1469311))

(assert (=> bs!330346 m!1469311))

(declare-fun m!1469341 () Bool)

(assert (=> bs!330346 m!1469341))

(assert (=> bs!330346 m!1468329))

(declare-fun m!1469343 () Bool)

(assert (=> bs!330346 m!1469343))

(assert (=> b!1315071 d!370795))

(declare-fun d!370797 () Bool)

(declare-fun e!843541 () Bool)

(assert (=> d!370797 e!843541))

(declare-fun res!591257 () Bool)

(assert (=> d!370797 (=> (not res!591257) (not e!843541))))

(declare-fun lt!433829 () BalanceConc!8718)

(assert (=> d!370797 (= res!591257 (= (list!5022 lt!433829) (Cons!13343 t2!34 Nil!13343)))))

(assert (=> d!370797 (= lt!433829 (singleton!382 t2!34))))

(assert (=> d!370797 (= (singletonSeq!888 t2!34) lt!433829)))

(declare-fun b!1315804 () Bool)

(assert (=> b!1315804 (= e!843541 (isBalanced!1276 (c!215722 lt!433829)))))

(assert (= (and d!370797 res!591257) b!1315804))

(declare-fun m!1469345 () Bool)

(assert (=> d!370797 m!1469345))

(declare-fun m!1469347 () Bool)

(assert (=> d!370797 m!1469347))

(declare-fun m!1469349 () Bool)

(assert (=> b!1315804 m!1469349))

(assert (=> b!1315071 d!370797))

(declare-fun d!370799 () Bool)

(assert (=> d!370799 (= (inv!17711 (tag!2571 (h!18743 rules!2550))) (= (mod (str.len (value!75438 (tag!2571 (h!18743 rules!2550)))) 2) 0))))

(assert (=> b!1315073 d!370799))

(declare-fun d!370801 () Bool)

(declare-fun res!591258 () Bool)

(declare-fun e!843542 () Bool)

(assert (=> d!370801 (=> (not res!591258) (not e!843542))))

(assert (=> d!370801 (= res!591258 (semiInverseModEq!868 (toChars!3391 (transformation!2309 (h!18743 rules!2550))) (toValue!3532 (transformation!2309 (h!18743 rules!2550)))))))

(assert (=> d!370801 (= (inv!17714 (transformation!2309 (h!18743 rules!2550))) e!843542)))

(declare-fun b!1315805 () Bool)

(assert (=> b!1315805 (= e!843542 (equivClasses!827 (toChars!3391 (transformation!2309 (h!18743 rules!2550))) (toValue!3532 (transformation!2309 (h!18743 rules!2550)))))))

(assert (= (and d!370801 res!591258) b!1315805))

(declare-fun m!1469351 () Bool)

(assert (=> d!370801 m!1469351))

(declare-fun m!1469353 () Bool)

(assert (=> b!1315805 m!1469353))

(assert (=> b!1315073 d!370801))

(declare-fun bs!330347 () Bool)

(declare-fun d!370803 () Bool)

(assert (= bs!330347 (and d!370803 b!1315094)))

(declare-fun lambda!53566 () Int)

(assert (=> bs!330347 (not (= lambda!53566 lambda!53527))))

(assert (=> d!370803 true))

(declare-fun order!8029 () Int)

(declare-fun dynLambda!5826 (Int Int) Int)

(assert (=> d!370803 (< (dynLambda!5826 order!8029 lambda!53527) (dynLambda!5826 order!8029 lambda!53566))))

(declare-fun forall!3294 (List!13410 Int) Bool)

(assert (=> d!370803 (= (exists!321 (map!2930 rules!2550 lambda!53526) lambda!53527) (not (forall!3294 (map!2930 rules!2550 lambda!53526) lambda!53566)))))

(declare-fun bs!330348 () Bool)

(assert (= bs!330348 d!370803))

(assert (=> bs!330348 m!1468333))

(declare-fun m!1469355 () Bool)

(assert (=> bs!330348 m!1469355))

(assert (=> b!1315094 d!370803))

(declare-fun bs!330349 () Bool)

(declare-fun d!370805 () Bool)

(assert (= bs!330349 (and d!370805 b!1315094)))

(declare-fun lambda!53571 () Int)

(assert (=> bs!330349 (not (= lambda!53571 lambda!53527))))

(declare-fun bs!330350 () Bool)

(assert (= bs!330350 (and d!370805 d!370803)))

(assert (=> bs!330350 (not (= lambda!53571 lambda!53566))))

(declare-fun lambda!53572 () Int)

(assert (=> bs!330349 (= lambda!53572 lambda!53527)))

(assert (=> bs!330350 (not (= lambda!53572 lambda!53566))))

(declare-fun bs!330351 () Bool)

(assert (= bs!330351 d!370805))

(assert (=> bs!330351 (not (= lambda!53572 lambda!53571))))

(assert (=> d!370805 true))

(assert (=> d!370805 (= (matchR!1625 lt!433562 lt!433574) (exists!321 lt!433564 lambda!53572))))

(declare-fun lt!433832 () Unit!19396)

(declare-fun choose!8052 (Regex!3623 List!13410 List!13407) Unit!19396)

(assert (=> d!370805 (= lt!433832 (choose!8052 lt!433562 lt!433564 lt!433574))))

(assert (=> d!370805 (forall!3294 lt!433564 lambda!53571)))

(assert (=> d!370805 (= (matchRGenUnionSpec!60 lt!433562 lt!433564 lt!433574) lt!433832)))

(assert (=> bs!330351 m!1468309))

(declare-fun m!1469357 () Bool)

(assert (=> bs!330351 m!1469357))

(declare-fun m!1469359 () Bool)

(assert (=> bs!330351 m!1469359))

(declare-fun m!1469361 () Bool)

(assert (=> bs!330351 m!1469361))

(assert (=> b!1315094 d!370805))

(declare-fun bs!330352 () Bool)

(declare-fun d!370807 () Bool)

(assert (= bs!330352 (and d!370807 b!1315094)))

(declare-fun lambda!53573 () Int)

(assert (=> bs!330352 (not (= lambda!53573 lambda!53527))))

(declare-fun bs!330353 () Bool)

(assert (= bs!330353 (and d!370807 d!370803)))

(assert (=> bs!330353 (= lambda!53573 lambda!53566)))

(declare-fun bs!330354 () Bool)

(assert (= bs!330354 (and d!370807 d!370805)))

(assert (=> bs!330354 (not (= lambda!53573 lambda!53571))))

(assert (=> bs!330354 (not (= lambda!53573 lambda!53572))))

(assert (=> d!370807 true))

(assert (=> d!370807 (< (dynLambda!5826 order!8029 lambda!53527) (dynLambda!5826 order!8029 lambda!53573))))

(assert (=> d!370807 (= (exists!321 lt!433564 lambda!53527) (not (forall!3294 lt!433564 lambda!53573)))))

(declare-fun bs!330355 () Bool)

(assert (= bs!330355 d!370807))

(declare-fun m!1469363 () Bool)

(assert (=> bs!330355 m!1469363))

(assert (=> b!1315094 d!370807))

(assert (=> b!1315094 d!370545))

(declare-fun b!1315814 () Bool)

(declare-fun e!843547 () Bool)

(declare-fun tp_is_empty!6627 () Bool)

(declare-fun tp!382856 () Bool)

(assert (=> b!1315814 (= e!843547 (and tp_is_empty!6627 tp!382856))))

(assert (=> b!1315081 (= tp!382799 e!843547)))

(assert (= (and b!1315081 ((_ is Cons!13341) (originalCharacters!3171 t1!34))) b!1315814))

(declare-fun b!1315828 () Bool)

(declare-fun e!843550 () Bool)

(declare-fun tp!382869 () Bool)

(declare-fun tp!382867 () Bool)

(assert (=> b!1315828 (= e!843550 (and tp!382869 tp!382867))))

(declare-fun b!1315826 () Bool)

(declare-fun tp!382871 () Bool)

(declare-fun tp!382870 () Bool)

(assert (=> b!1315826 (= e!843550 (and tp!382871 tp!382870))))

(declare-fun b!1315827 () Bool)

(declare-fun tp!382868 () Bool)

(assert (=> b!1315827 (= e!843550 tp!382868)))

(declare-fun b!1315825 () Bool)

(assert (=> b!1315825 (= e!843550 tp_is_empty!6627)))

(assert (=> b!1315075 (= tp!382804 e!843550)))

(assert (= (and b!1315075 ((_ is ElementMatch!3623) (regex!2309 (rule!4050 t1!34)))) b!1315825))

(assert (= (and b!1315075 ((_ is Concat!6023) (regex!2309 (rule!4050 t1!34)))) b!1315826))

(assert (= (and b!1315075 ((_ is Star!3623) (regex!2309 (rule!4050 t1!34)))) b!1315827))

(assert (= (and b!1315075 ((_ is Union!3623) (regex!2309 (rule!4050 t1!34)))) b!1315828))

(declare-fun b!1315829 () Bool)

(declare-fun e!843551 () Bool)

(declare-fun tp!382872 () Bool)

(assert (=> b!1315829 (= e!843551 (and tp_is_empty!6627 tp!382872))))

(assert (=> b!1315086 (= tp!382803 e!843551)))

(assert (= (and b!1315086 ((_ is Cons!13341) (originalCharacters!3171 t2!34))) b!1315829))

(declare-fun b!1315840 () Bool)

(declare-fun b_free!31731 () Bool)

(declare-fun b_next!32435 () Bool)

(assert (=> b!1315840 (= b_free!31731 (not b_next!32435))))

(declare-fun tp!382882 () Bool)

(declare-fun b_and!87935 () Bool)

(assert (=> b!1315840 (= tp!382882 b_and!87935)))

(declare-fun b_free!31733 () Bool)

(declare-fun b_next!32437 () Bool)

(assert (=> b!1315840 (= b_free!31733 (not b_next!32437))))

(declare-fun t!118317 () Bool)

(declare-fun tb!69901 () Bool)

(assert (=> (and b!1315840 (= (toChars!3391 (transformation!2309 (h!18743 (t!118281 rules!2550)))) (toChars!3391 (transformation!2309 (rule!4050 t2!34)))) t!118317) tb!69901))

(declare-fun result!84834 () Bool)

(assert (= result!84834 result!84804))

(assert (=> d!370673 t!118317))

(declare-fun t!118319 () Bool)

(declare-fun tb!69903 () Bool)

(assert (=> (and b!1315840 (= (toChars!3391 (transformation!2309 (h!18743 (t!118281 rules!2550)))) (toChars!3391 (transformation!2309 (rule!4050 t1!34)))) t!118319) tb!69903))

(declare-fun result!84836 () Bool)

(assert (= result!84836 result!84812))

(assert (=> b!1315593 t!118319))

(assert (=> b!1315596 t!118317))

(assert (=> d!370723 t!118319))

(declare-fun tp!382883 () Bool)

(declare-fun b_and!87937 () Bool)

(assert (=> b!1315840 (= tp!382883 (and (=> t!118317 result!84834) (=> t!118319 result!84836) b_and!87937))))

(declare-fun e!843563 () Bool)

(assert (=> b!1315840 (= e!843563 (and tp!382882 tp!382883))))

(declare-fun tp!382881 () Bool)

(declare-fun e!843560 () Bool)

(declare-fun b!1315839 () Bool)

(assert (=> b!1315839 (= e!843560 (and tp!382881 (inv!17711 (tag!2571 (h!18743 (t!118281 rules!2550)))) (inv!17714 (transformation!2309 (h!18743 (t!118281 rules!2550)))) e!843563))))

(declare-fun b!1315838 () Bool)

(declare-fun e!843561 () Bool)

(declare-fun tp!382884 () Bool)

(assert (=> b!1315838 (= e!843561 (and e!843560 tp!382884))))

(assert (=> b!1315088 (= tp!382796 e!843561)))

(assert (= b!1315839 b!1315840))

(assert (= b!1315838 b!1315839))

(assert (= (and b!1315088 ((_ is Cons!13342) (t!118281 rules!2550))) b!1315838))

(declare-fun m!1469365 () Bool)

(assert (=> b!1315839 m!1469365))

(declare-fun m!1469367 () Bool)

(assert (=> b!1315839 m!1469367))

(declare-fun b!1315844 () Bool)

(declare-fun e!843564 () Bool)

(declare-fun tp!382887 () Bool)

(declare-fun tp!382885 () Bool)

(assert (=> b!1315844 (= e!843564 (and tp!382887 tp!382885))))

(declare-fun b!1315842 () Bool)

(declare-fun tp!382889 () Bool)

(declare-fun tp!382888 () Bool)

(assert (=> b!1315842 (= e!843564 (and tp!382889 tp!382888))))

(declare-fun b!1315843 () Bool)

(declare-fun tp!382886 () Bool)

(assert (=> b!1315843 (= e!843564 tp!382886)))

(declare-fun b!1315841 () Bool)

(assert (=> b!1315841 (= e!843564 tp_is_empty!6627)))

(assert (=> b!1315073 (= tp!382800 e!843564)))

(assert (= (and b!1315073 ((_ is ElementMatch!3623) (regex!2309 (h!18743 rules!2550)))) b!1315841))

(assert (= (and b!1315073 ((_ is Concat!6023) (regex!2309 (h!18743 rules!2550)))) b!1315842))

(assert (= (and b!1315073 ((_ is Star!3623) (regex!2309 (h!18743 rules!2550)))) b!1315843))

(assert (= (and b!1315073 ((_ is Union!3623) (regex!2309 (h!18743 rules!2550)))) b!1315844))

(declare-fun b!1315848 () Bool)

(declare-fun e!843565 () Bool)

(declare-fun tp!382892 () Bool)

(declare-fun tp!382890 () Bool)

(assert (=> b!1315848 (= e!843565 (and tp!382892 tp!382890))))

(declare-fun b!1315846 () Bool)

(declare-fun tp!382894 () Bool)

(declare-fun tp!382893 () Bool)

(assert (=> b!1315846 (= e!843565 (and tp!382894 tp!382893))))

(declare-fun b!1315847 () Bool)

(declare-fun tp!382891 () Bool)

(assert (=> b!1315847 (= e!843565 tp!382891)))

(declare-fun b!1315845 () Bool)

(assert (=> b!1315845 (= e!843565 tp_is_empty!6627)))

(assert (=> b!1315062 (= tp!382795 e!843565)))

(assert (= (and b!1315062 ((_ is ElementMatch!3623) (regex!2309 (rule!4050 t2!34)))) b!1315845))

(assert (= (and b!1315062 ((_ is Concat!6023) (regex!2309 (rule!4050 t2!34)))) b!1315846))

(assert (= (and b!1315062 ((_ is Star!3623) (regex!2309 (rule!4050 t2!34)))) b!1315847))

(assert (= (and b!1315062 ((_ is Union!3623) (regex!2309 (rule!4050 t2!34)))) b!1315848))

(declare-fun b_lambda!38069 () Bool)

(assert (= b_lambda!38017 (or (and b!1315098 b_free!31717 (= (toChars!3391 (transformation!2309 (h!18743 rules!2550))) (toChars!3391 (transformation!2309 (rule!4050 t2!34))))) (and b!1315100 b_free!31721 (= (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (toChars!3391 (transformation!2309 (rule!4050 t2!34))))) (and b!1315065 b_free!31725) (and b!1315840 b_free!31733 (= (toChars!3391 (transformation!2309 (h!18743 (t!118281 rules!2550)))) (toChars!3391 (transformation!2309 (rule!4050 t2!34))))) b_lambda!38069)))

(declare-fun b_lambda!38071 () Bool)

(assert (= b_lambda!38023 (or (and b!1315098 b_free!31717 (= (toChars!3391 (transformation!2309 (h!18743 rules!2550))) (toChars!3391 (transformation!2309 (rule!4050 t1!34))))) (and b!1315100 b_free!31721) (and b!1315065 b_free!31725 (= (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (toChars!3391 (transformation!2309 (rule!4050 t1!34))))) (and b!1315840 b_free!31733 (= (toChars!3391 (transformation!2309 (h!18743 (t!118281 rules!2550)))) (toChars!3391 (transformation!2309 (rule!4050 t1!34))))) b_lambda!38071)))

(declare-fun b_lambda!38073 () Bool)

(assert (= b_lambda!38031 (or (and b!1315098 b_free!31717 (= (toChars!3391 (transformation!2309 (h!18743 rules!2550))) (toChars!3391 (transformation!2309 (rule!4050 t1!34))))) (and b!1315100 b_free!31721) (and b!1315065 b_free!31725 (= (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (toChars!3391 (transformation!2309 (rule!4050 t1!34))))) (and b!1315840 b_free!31733 (= (toChars!3391 (transformation!2309 (h!18743 (t!118281 rules!2550)))) (toChars!3391 (transformation!2309 (rule!4050 t1!34))))) b_lambda!38073)))

(declare-fun b_lambda!38075 () Bool)

(assert (= b_lambda!38001 (or b!1315084 b_lambda!38075)))

(declare-fun bs!330356 () Bool)

(declare-fun d!370809 () Bool)

(assert (= bs!330356 (and d!370809 b!1315084)))

(declare-fun res!591261 () Bool)

(declare-fun e!843566 () Bool)

(assert (=> bs!330356 (=> (not res!591261) (not e!843566))))

(assert (=> bs!330356 (= res!591261 (matchR!1625 lt!433562 lt!433668))))

(assert (=> bs!330356 (= (dynLambda!5819 lambda!53525 lt!433668) e!843566)))

(declare-fun b!1315849 () Bool)

(assert (=> b!1315849 (= e!843566 (isPrefix!1073 lt!433563 lt!433668))))

(assert (= (and bs!330356 res!591261) b!1315849))

(declare-fun m!1469369 () Bool)

(assert (=> bs!330356 m!1469369))

(declare-fun m!1469371 () Bool)

(assert (=> b!1315849 m!1469371))

(assert (=> d!370573 d!370809))

(declare-fun b_lambda!38077 () Bool)

(assert (= b_lambda!38025 (or (and b!1315098 b_free!31717 (= (toChars!3391 (transformation!2309 (h!18743 rules!2550))) (toChars!3391 (transformation!2309 (rule!4050 t2!34))))) (and b!1315100 b_free!31721 (= (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (toChars!3391 (transformation!2309 (rule!4050 t2!34))))) (and b!1315065 b_free!31725) (and b!1315840 b_free!31733 (= (toChars!3391 (transformation!2309 (h!18743 (t!118281 rules!2550)))) (toChars!3391 (transformation!2309 (rule!4050 t2!34))))) b_lambda!38077)))

(declare-fun b_lambda!38079 () Bool)

(assert (= b_lambda!37999 (or b!1315094 b_lambda!38079)))

(declare-fun bs!330357 () Bool)

(declare-fun d!370811 () Bool)

(assert (= bs!330357 (and d!370811 b!1315094)))

(declare-fun res!591262 () Bool)

(declare-fun e!843567 () Bool)

(assert (=> bs!330357 (=> (not res!591262) (not e!843567))))

(assert (=> bs!330357 (= res!591262 (validRegex!1549 lt!433627))))

(assert (=> bs!330357 (= (dynLambda!5818 lambda!53527 lt!433627) e!843567)))

(declare-fun b!1315850 () Bool)

(assert (=> b!1315850 (= e!843567 (matchR!1625 lt!433627 lt!433574))))

(assert (= (and bs!330357 res!591262) b!1315850))

(declare-fun m!1469373 () Bool)

(assert (=> bs!330357 m!1469373))

(declare-fun m!1469375 () Bool)

(assert (=> b!1315850 m!1469375))

(assert (=> d!370551 d!370811))

(declare-fun b_lambda!38081 () Bool)

(assert (= b_lambda!38061 (or b!1315070 b_lambda!38081)))

(declare-fun bs!330358 () Bool)

(declare-fun d!370813 () Bool)

(assert (= bs!330358 (and d!370813 b!1315070)))

(assert (=> bs!330358 (= (dynLambda!5823 lambda!53528 (h!18743 rules!2550)) (= (regex!2309 (h!18743 rules!2550)) lt!433567))))

(assert (=> b!1315727 d!370813))

(declare-fun b_lambda!38083 () Bool)

(assert (= b_lambda!38065 (or b!1315067 b_lambda!38083)))

(declare-fun bs!330359 () Bool)

(declare-fun d!370815 () Bool)

(assert (= bs!330359 (and d!370815 b!1315067)))

(declare-fun ruleValid!562 (LexerInterface!2004 Rule!4418) Bool)

(assert (=> bs!330359 (= (dynLambda!5823 lambda!53529 (rule!4050 t1!34)) (ruleValid!562 thiss!19762 (rule!4050 t1!34)))))

(declare-fun m!1469377 () Bool)

(assert (=> bs!330359 m!1469377))

(assert (=> d!370773 d!370815))

(declare-fun b_lambda!38085 () Bool)

(assert (= b_lambda!38063 (or b!1315067 b_lambda!38085)))

(declare-fun bs!330360 () Bool)

(declare-fun d!370817 () Bool)

(assert (= bs!330360 (and d!370817 b!1315067)))

(assert (=> bs!330360 (= (dynLambda!5823 lambda!53529 (rule!4050 t2!34)) (ruleValid!562 thiss!19762 (rule!4050 t2!34)))))

(declare-fun m!1469379 () Bool)

(assert (=> bs!330360 m!1469379))

(assert (=> d!370771 d!370817))

(declare-fun b_lambda!38087 () Bool)

(assert (= b_lambda!37995 (or b!1315094 b_lambda!38087)))

(declare-fun bs!330361 () Bool)

(declare-fun d!370819 () Bool)

(assert (= bs!330361 (and d!370819 b!1315094)))

(assert (=> bs!330361 (= (dynLambda!5817 lambda!53526 (h!18743 rules!2550)) (regex!2309 (h!18743 rules!2550)))))

(assert (=> b!1315215 d!370819))

(declare-fun b_lambda!38089 () Bool)

(assert (= b_lambda!38059 (or b!1315070 b_lambda!38089)))

(declare-fun bs!330362 () Bool)

(declare-fun d!370821 () Bool)

(assert (= bs!330362 (and d!370821 b!1315070)))

(assert (=> bs!330362 (= (dynLambda!5823 lambda!53528 lt!433805) (= (regex!2309 lt!433805) lt!433567))))

(assert (=> d!370757 d!370821))

(declare-fun b_lambda!38091 () Bool)

(assert (= b_lambda!38067 (or b!1315067 b_lambda!38091)))

(declare-fun bs!330363 () Bool)

(declare-fun d!370823 () Bool)

(assert (= bs!330363 (and d!370823 b!1315067)))

(assert (=> bs!330363 (= (dynLambda!5823 lambda!53529 lt!433573) (ruleValid!562 thiss!19762 lt!433573))))

(declare-fun m!1469381 () Bool)

(assert (=> bs!330363 m!1469381))

(assert (=> d!370775 d!370823))

(declare-fun b_lambda!38093 () Bool)

(assert (= b_lambda!37997 (or b!1315094 b_lambda!38093)))

(declare-fun bs!330364 () Bool)

(declare-fun d!370825 () Bool)

(assert (= bs!330364 (and d!370825 b!1315094)))

(declare-fun res!591263 () Bool)

(declare-fun e!843568 () Bool)

(assert (=> bs!330364 (=> (not res!591263) (not e!843568))))

(assert (=> bs!330364 (= res!591263 (validRegex!1549 (h!18745 (map!2930 rules!2550 lambda!53526))))))

(assert (=> bs!330364 (= (dynLambda!5818 lambda!53527 (h!18745 (map!2930 rules!2550 lambda!53526))) e!843568)))

(declare-fun b!1315851 () Bool)

(assert (=> b!1315851 (= e!843568 (matchR!1625 (h!18745 (map!2930 rules!2550 lambda!53526)) lt!433574))))

(assert (= (and bs!330364 res!591263) b!1315851))

(declare-fun m!1469383 () Bool)

(assert (=> bs!330364 m!1469383))

(declare-fun m!1469385 () Bool)

(assert (=> b!1315851 m!1469385))

(assert (=> b!1315230 d!370825))

(check-sat b_and!87935 (not bm!89387) (not b!1315850) (not d!370575) (not b!1315272) (not b_lambda!38093) (not d!370681) (not d!370807) (not d!370789) (not b!1315232) (not bm!89407) b_and!87925 (not d!370765) (not b!1315782) (not b!1315729) (not b!1315400) (not d!370579) (not bs!330360) (not b!1315597) (not d!370719) (not bs!330363) (not b!1315649) (not b!1315306) (not d!370687) (not b!1315795) (not d!370717) (not b!1315634) (not d!370723) (not b!1315725) (not bs!330359) (not b!1315783) (not d!370777) (not d!370785) b_and!87875 (not b_lambda!38085) (not b!1315299) (not b_next!32435) (not b!1315352) tp_is_empty!6627 (not d!370569) (not b_next!32419) (not d!370793) (not d!370757) (not b!1315777) (not b_next!32437) (not b!1315348) (not b!1315207) (not b!1315844) (not d!370795) (not bs!330364) (not d!370551) (not b!1315781) (not b!1315842) (not b!1315228) (not d!370581) (not d!370707) (not b!1315580) (not d!370755) (not b!1315537) (not b!1315772) (not b!1315273) (not b!1315536) (not b!1315229) (not b!1315804) (not b!1315708) b_and!87927 (not b!1315278) (not b!1315827) (not b!1315277) (not d!370775) (not b!1315776) (not b!1315768) (not bs!330357) (not b!1315774) (not b!1315805) (not b!1315635) (not b_lambda!38069) (not b_lambda!38077) (not b!1315286) (not b!1315595) (not d!370595) (not b!1315710) (not b!1315760) (not d!370725) (not d!370713) (not b!1315728) (not tb!69885) (not b!1315839) (not b_next!32429) (not d!370759) (not d!370663) (not bs!330356) (not d!370781) (not d!370721) (not d!370585) (not d!370797) (not b!1315794) (not b!1315798) (not b!1315215) (not b!1315652) (not b!1315581) (not b!1315653) (not b!1315300) (not d!370783) (not d!370727) (not b!1315356) (not b!1315797) (not b!1315275) (not b!1315799) (not b!1315346) (not d!370691) (not d!370763) (not d!370715) (not d!370593) (not b!1315289) (not b!1315650) (not b_next!32425) (not b!1315738) (not b!1315828) (not b!1315401) (not b_lambda!38079) (not b!1315709) (not d!370801) (not d!370705) (not b!1315312) (not b!1315594) (not b!1315578) (not b!1315846) (not b_next!32421) (not b!1315770) (not b!1315769) (not b!1315851) (not d!370565) (not d!370679) (not bm!89409) (not b_lambda!38073) b_and!87937 (not d!370773) (not b!1315849) (not bm!89410) (not d!370609) (not b!1315778) (not bm!89384) (not b!1315535) (not b!1315814) (not d!370537) (not b!1315733) (not b!1315630) (not b!1315848) (not b!1315596) (not b!1315643) b_and!87929 (not b!1315826) (not b_lambda!38071) (not d!370731) (not b!1315341) (not b_lambda!38083) (not b!1315642) (not d!370563) (not b!1315712) b_and!87871 (not b_next!32427) (not b_lambda!38075) (not d!370791) (not b!1315847) (not d!370571) (not b!1315399) (not d!370689) (not d!370779) (not d!370545) (not b!1315838) (not d!370673) (not d!370553) (not d!370573) (not d!370711) (not b!1315775) (not b_lambda!38091) (not b_lambda!38087) b_and!87879 (not b!1315801) (not b!1315637) (not d!370583) (not b!1315829) (not b!1315279) (not b!1315631) (not b!1315632) (not d!370567) (not tb!69891) (not b!1315843) (not b!1315796) (not b!1315780) (not b!1315800) (not b_lambda!38081) (not b!1315280) (not b!1315309) (not b!1315274) (not b!1315735) (not d!370761) (not b!1315593) (not b!1315343) (not b!1315803) (not b!1315629) (not d!370805) (not d!370771) (not b!1315555) (not d!370803) (not b_lambda!38089) (not b_next!32423) (not b!1315351))
(check-sat b_and!87935 b_and!87925 b_and!87875 (not b_next!32435) b_and!87927 (not b_next!32429) (not b_next!32425) (not b_next!32421) b_and!87937 b_and!87929 b_and!87879 (not b_next!32423) (not b_next!32419) (not b_next!32437) b_and!87871 (not b_next!32427))
(get-model)

(declare-fun d!371033 () Bool)

(declare-fun charsToInt!0 (List!13406) (_ BitVec 32))

(assert (=> d!371033 (= (inv!16 (value!75439 t2!34)) (= (charsToInt!0 (text!17240 (value!75439 t2!34))) (value!75430 (value!75439 t2!34))))))

(declare-fun bs!330405 () Bool)

(assert (= bs!330405 d!371033))

(declare-fun m!1469891 () Bool)

(assert (=> bs!330405 m!1469891))

(assert (=> b!1315650 d!371033))

(declare-fun d!371037 () Bool)

(declare-fun res!591419 () Bool)

(declare-fun e!843800 () Bool)

(assert (=> d!371037 (=> res!591419 e!843800)))

(assert (=> d!371037 (= res!591419 (not ((_ is Cons!13342) (t!118281 rules!2550))))))

(assert (=> d!371037 (= (sepAndNonSepRulesDisjointChars!682 rules!2550 (t!118281 rules!2550)) e!843800)))

(declare-fun b!1316244 () Bool)

(declare-fun e!843801 () Bool)

(assert (=> b!1316244 (= e!843800 e!843801)))

(declare-fun res!591420 () Bool)

(assert (=> b!1316244 (=> (not res!591420) (not e!843801))))

(assert (=> b!1316244 (= res!591420 (ruleDisjointCharsFromAllFromOtherType!312 (h!18743 (t!118281 rules!2550)) rules!2550))))

(declare-fun b!1316245 () Bool)

(assert (=> b!1316245 (= e!843801 (sepAndNonSepRulesDisjointChars!682 rules!2550 (t!118281 (t!118281 rules!2550))))))

(assert (= (and d!371037 (not res!591419)) b!1316244))

(assert (= (and b!1316244 res!591420) b!1316245))

(declare-fun m!1469895 () Bool)

(assert (=> b!1316244 m!1469895))

(declare-fun m!1469897 () Bool)

(assert (=> b!1316245 m!1469897))

(assert (=> b!1315795 d!371037))

(declare-fun d!371041 () Bool)

(assert (=> d!371041 (= (list!5023 lt!433756) (list!5026 (c!215720 lt!433756)))))

(declare-fun bs!330407 () Bool)

(assert (= bs!330407 d!371041))

(declare-fun m!1469899 () Bool)

(assert (=> bs!330407 m!1469899))

(assert (=> d!370673 d!371041))

(declare-fun d!371043 () Bool)

(declare-fun c!215975 () Bool)

(assert (=> d!371043 (= c!215975 ((_ is Node!4388) (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34)))))))

(declare-fun e!843812 () Bool)

(assert (=> d!371043 (= (inv!17718 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34)))) e!843812)))

(declare-fun b!1316258 () Bool)

(declare-fun inv!17722 (Conc!4388) Bool)

(assert (=> b!1316258 (= e!843812 (inv!17722 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34)))))))

(declare-fun b!1316259 () Bool)

(declare-fun e!843813 () Bool)

(assert (=> b!1316259 (= e!843812 e!843813)))

(declare-fun res!591429 () Bool)

(assert (=> b!1316259 (= res!591429 (not ((_ is Leaf!6739) (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34))))))))

(assert (=> b!1316259 (=> res!591429 e!843813)))

(declare-fun b!1316260 () Bool)

(declare-fun inv!17723 (Conc!4388) Bool)

(assert (=> b!1316260 (= e!843813 (inv!17723 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34)))))))

(assert (= (and d!371043 c!215975) b!1316258))

(assert (= (and d!371043 (not c!215975)) b!1316259))

(assert (= (and b!1316259 (not res!591429)) b!1316260))

(declare-fun m!1469901 () Bool)

(assert (=> b!1316258 m!1469901))

(declare-fun m!1469903 () Bool)

(assert (=> b!1316260 m!1469903))

(assert (=> b!1315595 d!371043))

(declare-fun d!371045 () Bool)

(declare-fun c!215978 () Bool)

(assert (=> d!371045 (= c!215978 ((_ is Nil!13341) lt!433784))))

(declare-fun e!843816 () (InoxSet C!7536))

(assert (=> d!371045 (= (content!1874 lt!433784) e!843816)))

(declare-fun b!1316265 () Bool)

(assert (=> b!1316265 (= e!843816 ((as const (Array C!7536 Bool)) false))))

(declare-fun b!1316266 () Bool)

(assert (=> b!1316266 (= e!843816 ((_ map or) (store ((as const (Array C!7536 Bool)) false) (h!18742 lt!433784) true) (content!1874 (t!118280 lt!433784))))))

(assert (= (and d!371045 c!215978) b!1316265))

(assert (= (and d!371045 (not c!215978)) b!1316266))

(declare-fun m!1469911 () Bool)

(assert (=> b!1316266 m!1469911))

(declare-fun m!1469913 () Bool)

(assert (=> b!1316266 m!1469913))

(assert (=> d!370715 d!371045))

(declare-fun d!371049 () Bool)

(declare-fun c!215979 () Bool)

(assert (=> d!371049 (= c!215979 ((_ is Nil!13341) lt!433577))))

(declare-fun e!843817 () (InoxSet C!7536))

(assert (=> d!371049 (= (content!1874 lt!433577) e!843817)))

(declare-fun b!1316267 () Bool)

(assert (=> b!1316267 (= e!843817 ((as const (Array C!7536 Bool)) false))))

(declare-fun b!1316268 () Bool)

(assert (=> b!1316268 (= e!843817 ((_ map or) (store ((as const (Array C!7536 Bool)) false) (h!18742 lt!433577) true) (content!1874 (t!118280 lt!433577))))))

(assert (= (and d!371049 c!215979) b!1316267))

(assert (= (and d!371049 (not c!215979)) b!1316268))

(declare-fun m!1469915 () Bool)

(assert (=> b!1316268 m!1469915))

(declare-fun m!1469917 () Bool)

(assert (=> b!1316268 m!1469917))

(assert (=> d!370715 d!371049))

(declare-fun d!371051 () Bool)

(declare-fun c!215980 () Bool)

(assert (=> d!371051 (= c!215980 ((_ is Nil!13341) (Cons!13341 lt!433561 Nil!13341)))))

(declare-fun e!843818 () (InoxSet C!7536))

(assert (=> d!371051 (= (content!1874 (Cons!13341 lt!433561 Nil!13341)) e!843818)))

(declare-fun b!1316269 () Bool)

(assert (=> b!1316269 (= e!843818 ((as const (Array C!7536 Bool)) false))))

(declare-fun b!1316270 () Bool)

(assert (=> b!1316270 (= e!843818 ((_ map or) (store ((as const (Array C!7536 Bool)) false) (h!18742 (Cons!13341 lt!433561 Nil!13341)) true) (content!1874 (t!118280 (Cons!13341 lt!433561 Nil!13341)))))))

(assert (= (and d!371051 c!215980) b!1316269))

(assert (= (and d!371051 (not c!215980)) b!1316270))

(declare-fun m!1469919 () Bool)

(assert (=> b!1316270 m!1469919))

(declare-fun m!1469921 () Bool)

(assert (=> b!1316270 m!1469921))

(assert (=> d!370715 d!371051))

(declare-fun b!1316291 () Bool)

(declare-fun e!843827 () List!13407)

(assert (=> b!1316291 (= e!843827 (++!3398 (list!5026 (left!11468 (c!215720 lt!433570))) (list!5026 (right!11798 (c!215720 lt!433570)))))))

(declare-fun b!1316290 () Bool)

(declare-fun list!5028 (IArray!8781) List!13407)

(assert (=> b!1316290 (= e!843827 (list!5028 (xs!7103 (c!215720 lt!433570))))))

(declare-fun d!371053 () Bool)

(declare-fun c!215986 () Bool)

(assert (=> d!371053 (= c!215986 ((_ is Empty!4388) (c!215720 lt!433570)))))

(declare-fun e!843826 () List!13407)

(assert (=> d!371053 (= (list!5026 (c!215720 lt!433570)) e!843826)))

(declare-fun b!1316288 () Bool)

(assert (=> b!1316288 (= e!843826 Nil!13341)))

(declare-fun b!1316289 () Bool)

(assert (=> b!1316289 (= e!843826 e!843827)))

(declare-fun c!215987 () Bool)

(assert (=> b!1316289 (= c!215987 ((_ is Leaf!6739) (c!215720 lt!433570)))))

(assert (= (and d!371053 c!215986) b!1316288))

(assert (= (and d!371053 (not c!215986)) b!1316289))

(assert (= (and b!1316289 c!215987) b!1316290))

(assert (= (and b!1316289 (not c!215987)) b!1316291))

(declare-fun m!1469945 () Bool)

(assert (=> b!1316291 m!1469945))

(declare-fun m!1469949 () Bool)

(assert (=> b!1316291 m!1469949))

(assert (=> b!1316291 m!1469945))

(assert (=> b!1316291 m!1469949))

(declare-fun m!1469951 () Bool)

(assert (=> b!1316291 m!1469951))

(declare-fun m!1469953 () Bool)

(assert (=> b!1316290 m!1469953))

(assert (=> d!370563 d!371053))

(declare-fun b!1316295 () Bool)

(declare-fun e!843829 () List!13407)

(assert (=> b!1316295 (= e!843829 (++!3398 (list!5026 (left!11468 (c!215720 lt!433572))) (list!5026 (right!11798 (c!215720 lt!433572)))))))

(declare-fun b!1316294 () Bool)

(assert (=> b!1316294 (= e!843829 (list!5028 (xs!7103 (c!215720 lt!433572))))))

(declare-fun d!371061 () Bool)

(declare-fun c!215988 () Bool)

(assert (=> d!371061 (= c!215988 ((_ is Empty!4388) (c!215720 lt!433572)))))

(declare-fun e!843828 () List!13407)

(assert (=> d!371061 (= (list!5026 (c!215720 lt!433572)) e!843828)))

(declare-fun b!1316292 () Bool)

(assert (=> b!1316292 (= e!843828 Nil!13341)))

(declare-fun b!1316293 () Bool)

(assert (=> b!1316293 (= e!843828 e!843829)))

(declare-fun c!215989 () Bool)

(assert (=> b!1316293 (= c!215989 ((_ is Leaf!6739) (c!215720 lt!433572)))))

(assert (= (and d!371061 c!215988) b!1316292))

(assert (= (and d!371061 (not c!215988)) b!1316293))

(assert (= (and b!1316293 c!215989) b!1316294))

(assert (= (and b!1316293 (not c!215989)) b!1316295))

(declare-fun m!1469961 () Bool)

(assert (=> b!1316295 m!1469961))

(declare-fun m!1469963 () Bool)

(assert (=> b!1316295 m!1469963))

(assert (=> b!1316295 m!1469961))

(assert (=> b!1316295 m!1469963))

(declare-fun m!1469965 () Bool)

(assert (=> b!1316295 m!1469965))

(declare-fun m!1469967 () Bool)

(assert (=> b!1316294 m!1469967))

(assert (=> d!370707 d!371061))

(declare-fun d!371069 () Bool)

(assert (=> d!371069 (= (list!5023 lt!433799) (list!5026 (c!215720 lt!433799)))))

(declare-fun bs!330417 () Bool)

(assert (= bs!330417 d!371069))

(declare-fun m!1469969 () Bool)

(assert (=> bs!330417 m!1469969))

(assert (=> d!370755 d!371069))

(declare-fun d!371071 () Bool)

(declare-fun c!215993 () Bool)

(assert (=> d!371071 (= c!215993 ((_ is Cons!13343) (list!5022 (singletonSeq!888 t1!34))))))

(declare-fun e!843835 () List!13407)

(assert (=> d!371071 (= (printList!560 thiss!19762 (list!5022 (singletonSeq!888 t1!34))) e!843835)))

(declare-fun b!1316309 () Bool)

(assert (=> b!1316309 (= e!843835 (++!3398 (list!5023 (charsOf!1281 (h!18744 (list!5022 (singletonSeq!888 t1!34))))) (printList!560 thiss!19762 (t!118282 (list!5022 (singletonSeq!888 t1!34))))))))

(declare-fun b!1316310 () Bool)

(assert (=> b!1316310 (= e!843835 Nil!13341)))

(assert (= (and d!371071 c!215993) b!1316309))

(assert (= (and d!371071 (not c!215993)) b!1316310))

(declare-fun m!1469993 () Bool)

(assert (=> b!1316309 m!1469993))

(assert (=> b!1316309 m!1469993))

(declare-fun m!1469999 () Bool)

(assert (=> b!1316309 m!1469999))

(declare-fun m!1470001 () Bool)

(assert (=> b!1316309 m!1470001))

(assert (=> b!1316309 m!1469999))

(assert (=> b!1316309 m!1470001))

(declare-fun m!1470003 () Bool)

(assert (=> b!1316309 m!1470003))

(assert (=> d!370755 d!371071))

(declare-fun d!371075 () Bool)

(assert (=> d!371075 (= (list!5022 (singletonSeq!888 t1!34)) (list!5027 (c!215722 (singletonSeq!888 t1!34))))))

(declare-fun bs!330418 () Bool)

(assert (= bs!330418 d!371075))

(declare-fun m!1470005 () Bool)

(assert (=> bs!330418 m!1470005))

(assert (=> d!370755 d!371075))

(declare-fun d!371077 () Bool)

(declare-fun lt!433994 () BalanceConc!8716)

(declare-fun printListTailRec!233 (LexerInterface!2004 List!13409 List!13407) List!13407)

(declare-fun dropList!368 (BalanceConc!8718 Int) List!13409)

(assert (=> d!371077 (= (list!5023 lt!433994) (printListTailRec!233 thiss!19762 (dropList!368 (singletonSeq!888 t1!34) 0) (list!5023 (BalanceConc!8717 Empty!4388))))))

(declare-fun e!843886 () BalanceConc!8716)

(assert (=> d!371077 (= lt!433994 e!843886)))

(declare-fun c!216014 () Bool)

(assert (=> d!371077 (= c!216014 (>= 0 (size!10860 (singletonSeq!888 t1!34))))))

(declare-fun e!843885 () Bool)

(assert (=> d!371077 e!843885))

(declare-fun res!591471 () Bool)

(assert (=> d!371077 (=> (not res!591471) (not e!843885))))

(assert (=> d!371077 (= res!591471 (>= 0 0))))

(assert (=> d!371077 (= (printTailRec!542 thiss!19762 (singletonSeq!888 t1!34) 0 (BalanceConc!8717 Empty!4388)) lt!433994)))

(declare-fun b!1316384 () Bool)

(assert (=> b!1316384 (= e!843885 (<= 0 (size!10860 (singletonSeq!888 t1!34))))))

(declare-fun b!1316385 () Bool)

(assert (=> b!1316385 (= e!843886 (BalanceConc!8717 Empty!4388))))

(declare-fun b!1316386 () Bool)

(assert (=> b!1316386 (= e!843886 (printTailRec!542 thiss!19762 (singletonSeq!888 t1!34) (+ 0 1) (++!3399 (BalanceConc!8717 Empty!4388) (charsOf!1281 (apply!3035 (singletonSeq!888 t1!34) 0)))))))

(declare-fun lt!433997 () List!13409)

(assert (=> b!1316386 (= lt!433997 (list!5022 (singletonSeq!888 t1!34)))))

(declare-fun lt!433998 () Unit!19396)

(declare-fun lemmaDropApply!424 (List!13409 Int) Unit!19396)

(assert (=> b!1316386 (= lt!433998 (lemmaDropApply!424 lt!433997 0))))

(declare-fun head!2278 (List!13409) Token!4280)

(declare-fun drop!663 (List!13409 Int) List!13409)

(declare-fun apply!3037 (List!13409 Int) Token!4280)

(assert (=> b!1316386 (= (head!2278 (drop!663 lt!433997 0)) (apply!3037 lt!433997 0))))

(declare-fun lt!433993 () Unit!19396)

(assert (=> b!1316386 (= lt!433993 lt!433998)))

(declare-fun lt!433995 () List!13409)

(assert (=> b!1316386 (= lt!433995 (list!5022 (singletonSeq!888 t1!34)))))

(declare-fun lt!433992 () Unit!19396)

(declare-fun lemmaDropTail!404 (List!13409 Int) Unit!19396)

(assert (=> b!1316386 (= lt!433992 (lemmaDropTail!404 lt!433995 0))))

(declare-fun tail!1887 (List!13409) List!13409)

(assert (=> b!1316386 (= (tail!1887 (drop!663 lt!433995 0)) (drop!663 lt!433995 (+ 0 1)))))

(declare-fun lt!433996 () Unit!19396)

(assert (=> b!1316386 (= lt!433996 lt!433992)))

(assert (= (and d!371077 res!591471) b!1316384))

(assert (= (and d!371077 c!216014) b!1316385))

(assert (= (and d!371077 (not c!216014)) b!1316386))

(declare-fun m!1470127 () Bool)

(assert (=> d!371077 m!1470127))

(declare-fun m!1470129 () Bool)

(assert (=> d!371077 m!1470129))

(declare-fun m!1470131 () Bool)

(assert (=> d!371077 m!1470131))

(assert (=> d!371077 m!1468423))

(declare-fun m!1470133 () Bool)

(assert (=> d!371077 m!1470133))

(assert (=> d!371077 m!1468423))

(assert (=> d!371077 m!1470127))

(declare-fun m!1470135 () Bool)

(assert (=> d!371077 m!1470135))

(assert (=> d!371077 m!1470129))

(assert (=> b!1316384 m!1468423))

(assert (=> b!1316384 m!1470133))

(declare-fun m!1470137 () Bool)

(assert (=> b!1316386 m!1470137))

(declare-fun m!1470139 () Bool)

(assert (=> b!1316386 m!1470139))

(declare-fun m!1470141 () Bool)

(assert (=> b!1316386 m!1470141))

(assert (=> b!1316386 m!1468423))

(declare-fun m!1470143 () Bool)

(assert (=> b!1316386 m!1470143))

(assert (=> b!1316386 m!1470143))

(assert (=> b!1316386 m!1470137))

(assert (=> b!1316386 m!1470141))

(declare-fun m!1470145 () Bool)

(assert (=> b!1316386 m!1470145))

(declare-fun m!1470147 () Bool)

(assert (=> b!1316386 m!1470147))

(declare-fun m!1470149 () Bool)

(assert (=> b!1316386 m!1470149))

(declare-fun m!1470151 () Bool)

(assert (=> b!1316386 m!1470151))

(assert (=> b!1316386 m!1468423))

(assert (=> b!1316386 m!1468945))

(declare-fun m!1470153 () Bool)

(assert (=> b!1316386 m!1470153))

(assert (=> b!1316386 m!1468423))

(assert (=> b!1316386 m!1470139))

(declare-fun m!1470155 () Bool)

(assert (=> b!1316386 m!1470155))

(declare-fun m!1470157 () Bool)

(assert (=> b!1316386 m!1470157))

(assert (=> b!1316386 m!1470151))

(declare-fun m!1470159 () Bool)

(assert (=> b!1316386 m!1470159))

(assert (=> d!370755 d!371077))

(declare-fun d!371129 () Bool)

(assert (=> d!371129 (= (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652)))) (list!5026 (c!215720 (charsOf!1281 (_1!7367 (get!4256 lt!433652))))))))

(declare-fun bs!330431 () Bool)

(assert (= bs!330431 d!371129))

(declare-fun m!1470161 () Bool)

(assert (=> bs!330431 m!1470161))

(assert (=> b!1315275 d!371129))

(declare-fun d!371131 () Bool)

(declare-fun lt!433999 () BalanceConc!8716)

(assert (=> d!371131 (= (list!5023 lt!433999) (originalCharacters!3171 (_1!7367 (get!4256 lt!433652))))))

(assert (=> d!371131 (= lt!433999 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652))))) (value!75439 (_1!7367 (get!4256 lt!433652)))))))

(assert (=> d!371131 (= (charsOf!1281 (_1!7367 (get!4256 lt!433652))) lt!433999)))

(declare-fun b_lambda!38123 () Bool)

(assert (=> (not b_lambda!38123) (not d!371131)))

(declare-fun t!118363 () Bool)

(declare-fun tb!69937 () Bool)

(assert (=> (and b!1315098 (= (toChars!3391 (transformation!2309 (h!18743 rules!2550))) (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))))) t!118363) tb!69937))

(declare-fun b!1316389 () Bool)

(declare-fun e!843887 () Bool)

(declare-fun tp!382897 () Bool)

(assert (=> b!1316389 (= e!843887 (and (inv!17718 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652))))) (value!75439 (_1!7367 (get!4256 lt!433652)))))) tp!382897))))

(declare-fun result!84872 () Bool)

(assert (=> tb!69937 (= result!84872 (and (inv!17719 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652))))) (value!75439 (_1!7367 (get!4256 lt!433652))))) e!843887))))

(assert (= tb!69937 b!1316389))

(declare-fun m!1470163 () Bool)

(assert (=> b!1316389 m!1470163))

(declare-fun m!1470167 () Bool)

(assert (=> tb!69937 m!1470167))

(assert (=> d!371131 t!118363))

(declare-fun b_and!87971 () Bool)

(assert (= b_and!87925 (and (=> t!118363 result!84872) b_and!87971)))

(declare-fun tb!69939 () Bool)

(declare-fun t!118365 () Bool)

(assert (=> (and b!1315100 (= (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))))) t!118365) tb!69939))

(declare-fun result!84874 () Bool)

(assert (= result!84874 result!84872))

(assert (=> d!371131 t!118365))

(declare-fun b_and!87973 () Bool)

(assert (= b_and!87927 (and (=> t!118365 result!84874) b_and!87973)))

(declare-fun tb!69941 () Bool)

(declare-fun t!118367 () Bool)

(assert (=> (and b!1315065 (= (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))))) t!118367) tb!69941))

(declare-fun result!84876 () Bool)

(assert (= result!84876 result!84872))

(assert (=> d!371131 t!118367))

(declare-fun b_and!87975 () Bool)

(assert (= b_and!87929 (and (=> t!118367 result!84876) b_and!87975)))

(declare-fun t!118369 () Bool)

(declare-fun tb!69943 () Bool)

(assert (=> (and b!1315840 (= (toChars!3391 (transformation!2309 (h!18743 (t!118281 rules!2550)))) (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))))) t!118369) tb!69943))

(declare-fun result!84878 () Bool)

(assert (= result!84878 result!84872))

(assert (=> d!371131 t!118369))

(declare-fun b_and!87977 () Bool)

(assert (= b_and!87937 (and (=> t!118369 result!84878) b_and!87977)))

(declare-fun m!1470169 () Bool)

(assert (=> d!371131 m!1470169))

(declare-fun m!1470171 () Bool)

(assert (=> d!371131 m!1470171))

(assert (=> b!1315275 d!371131))

(declare-fun d!371137 () Bool)

(assert (=> d!371137 (= (get!4256 lt!433652) (v!21118 lt!433652))))

(assert (=> b!1315275 d!371137))

(declare-fun b!1316390 () Bool)

(declare-fun res!591473 () Bool)

(declare-fun e!843889 () Bool)

(assert (=> b!1316390 (=> (not res!591473) (not e!843889))))

(declare-fun lt!434000 () tuple2!12958)

(assert (=> b!1316390 (= res!591473 (= (list!5022 (_1!7365 lt!434000)) (_1!7366 (lexList!542 thiss!19762 rules!2550 (list!5023 (print!778 thiss!19762 (singletonSeq!888 t1!34)))))))))

(declare-fun b!1316391 () Bool)

(assert (=> b!1316391 (= e!843889 (= (list!5023 (_2!7365 lt!434000)) (_2!7366 (lexList!542 thiss!19762 rules!2550 (list!5023 (print!778 thiss!19762 (singletonSeq!888 t1!34)))))))))

(declare-fun e!843888 () Bool)

(declare-fun b!1316393 () Bool)

(assert (=> b!1316393 (= e!843888 (= (_2!7365 lt!434000) (print!778 thiss!19762 (singletonSeq!888 t1!34))))))

(declare-fun b!1316394 () Bool)

(declare-fun e!843890 () Bool)

(assert (=> b!1316394 (= e!843888 e!843890)))

(declare-fun res!591472 () Bool)

(assert (=> b!1316394 (= res!591472 (< (size!10849 (_2!7365 lt!434000)) (size!10849 (print!778 thiss!19762 (singletonSeq!888 t1!34)))))))

(assert (=> b!1316394 (=> (not res!591472) (not e!843890))))

(declare-fun d!371139 () Bool)

(assert (=> d!371139 e!843889))

(declare-fun res!591474 () Bool)

(assert (=> d!371139 (=> (not res!591474) (not e!843889))))

(assert (=> d!371139 (= res!591474 e!843888)))

(declare-fun c!216015 () Bool)

(assert (=> d!371139 (= c!216015 (> (size!10860 (_1!7365 lt!434000)) 0))))

(assert (=> d!371139 (= lt!434000 (lexTailRecV2!365 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t1!34)) (BalanceConc!8717 Empty!4388) (print!778 thiss!19762 (singletonSeq!888 t1!34)) (BalanceConc!8719 Empty!4389)))))

(assert (=> d!371139 (= (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t1!34))) lt!434000)))

(declare-fun b!1316392 () Bool)

(assert (=> b!1316392 (= e!843890 (not (isEmpty!7917 (_1!7365 lt!434000))))))

(assert (= (and d!371139 c!216015) b!1316394))

(assert (= (and d!371139 (not c!216015)) b!1316393))

(assert (= (and b!1316394 res!591472) b!1316392))

(assert (= (and d!371139 res!591474) b!1316390))

(assert (= (and b!1316390 res!591473) b!1316391))

(declare-fun m!1470173 () Bool)

(assert (=> b!1316390 m!1470173))

(assert (=> b!1316390 m!1468425))

(declare-fun m!1470175 () Bool)

(assert (=> b!1316390 m!1470175))

(assert (=> b!1316390 m!1470175))

(declare-fun m!1470177 () Bool)

(assert (=> b!1316390 m!1470177))

(declare-fun m!1470179 () Bool)

(assert (=> b!1316391 m!1470179))

(assert (=> b!1316391 m!1468425))

(assert (=> b!1316391 m!1470175))

(assert (=> b!1316391 m!1470175))

(assert (=> b!1316391 m!1470177))

(declare-fun m!1470181 () Bool)

(assert (=> b!1316394 m!1470181))

(assert (=> b!1316394 m!1468425))

(declare-fun m!1470183 () Bool)

(assert (=> b!1316394 m!1470183))

(declare-fun m!1470185 () Bool)

(assert (=> d!371139 m!1470185))

(assert (=> d!371139 m!1468425))

(assert (=> d!371139 m!1468425))

(declare-fun m!1470189 () Bool)

(assert (=> d!371139 m!1470189))

(declare-fun m!1470191 () Bool)

(assert (=> b!1316392 m!1470191))

(assert (=> d!370609 d!371139))

(assert (=> d!370609 d!370759))

(declare-fun d!371143 () Bool)

(assert (=> d!371143 (= (list!5022 (_1!7365 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t1!34))))) (list!5027 (c!215722 (_1!7365 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t1!34)))))))))

(declare-fun bs!330440 () Bool)

(assert (= bs!330440 d!371143))

(declare-fun m!1470193 () Bool)

(assert (=> bs!330440 m!1470193))

(assert (=> d!370609 d!371143))

(assert (=> d!370609 d!370755))

(declare-fun d!371145 () Bool)

(declare-fun lt!434007 () Int)

(assert (=> d!371145 (= lt!434007 (size!10859 (list!5022 (_1!7365 lt!433741))))))

(declare-fun size!10863 (Conc!4389) Int)

(assert (=> d!371145 (= lt!434007 (size!10863 (c!215722 (_1!7365 lt!433741))))))

(assert (=> d!371145 (= (size!10860 (_1!7365 lt!433741)) lt!434007)))

(declare-fun bs!330443 () Bool)

(assert (= bs!330443 d!371145))

(declare-fun m!1470221 () Bool)

(assert (=> bs!330443 m!1470221))

(assert (=> bs!330443 m!1470221))

(declare-fun m!1470223 () Bool)

(assert (=> bs!330443 m!1470223))

(declare-fun m!1470225 () Bool)

(assert (=> bs!330443 m!1470225))

(assert (=> d!370609 d!371145))

(assert (=> d!370609 d!371075))

(assert (=> d!370609 d!370767))

(declare-fun d!371157 () Bool)

(assert (=> d!371157 (= (isEmpty!7914 lt!433574) ((_ is Nil!13341) lt!433574))))

(assert (=> d!370581 d!371157))

(declare-fun d!371159 () Bool)

(declare-fun res!591478 () Bool)

(declare-fun e!843904 () Bool)

(assert (=> d!371159 (=> res!591478 e!843904)))

(assert (=> d!371159 (= res!591478 ((_ is ElementMatch!3623) lt!433562))))

(assert (=> d!371159 (= (validRegex!1549 lt!433562) e!843904)))

(declare-fun b!1316408 () Bool)

(declare-fun res!591477 () Bool)

(declare-fun e!843901 () Bool)

(assert (=> b!1316408 (=> res!591477 e!843901)))

(assert (=> b!1316408 (= res!591477 (not ((_ is Concat!6023) lt!433562)))))

(declare-fun e!843903 () Bool)

(assert (=> b!1316408 (= e!843903 e!843901)))

(declare-fun bm!89451 () Bool)

(declare-fun call!89456 () Bool)

(declare-fun c!216023 () Bool)

(assert (=> bm!89451 (= call!89456 (validRegex!1549 (ite c!216023 (regTwo!7759 lt!433562) (regTwo!7758 lt!433562))))))

(declare-fun bm!89452 () Bool)

(declare-fun call!89457 () Bool)

(declare-fun call!89458 () Bool)

(assert (=> bm!89452 (= call!89457 call!89458)))

(declare-fun b!1316409 () Bool)

(declare-fun e!843900 () Bool)

(assert (=> b!1316409 (= e!843900 call!89458)))

(declare-fun b!1316410 () Bool)

(declare-fun e!843902 () Bool)

(assert (=> b!1316410 (= e!843904 e!843902)))

(declare-fun c!216022 () Bool)

(assert (=> b!1316410 (= c!216022 ((_ is Star!3623) lt!433562))))

(declare-fun b!1316411 () Bool)

(assert (=> b!1316411 (= e!843902 e!843900)))

(declare-fun res!591479 () Bool)

(assert (=> b!1316411 (= res!591479 (not (nullable!1147 (reg!3952 lt!433562))))))

(assert (=> b!1316411 (=> (not res!591479) (not e!843900))))

(declare-fun bm!89453 () Bool)

(assert (=> bm!89453 (= call!89458 (validRegex!1549 (ite c!216022 (reg!3952 lt!433562) (ite c!216023 (regOne!7759 lt!433562) (regOne!7758 lt!433562)))))))

(declare-fun b!1316412 () Bool)

(declare-fun e!843898 () Bool)

(assert (=> b!1316412 (= e!843901 e!843898)))

(declare-fun res!591480 () Bool)

(assert (=> b!1316412 (=> (not res!591480) (not e!843898))))

(assert (=> b!1316412 (= res!591480 call!89457)))

(declare-fun b!1316413 () Bool)

(declare-fun e!843899 () Bool)

(assert (=> b!1316413 (= e!843899 call!89456)))

(declare-fun b!1316414 () Bool)

(declare-fun res!591476 () Bool)

(assert (=> b!1316414 (=> (not res!591476) (not e!843899))))

(assert (=> b!1316414 (= res!591476 call!89457)))

(assert (=> b!1316414 (= e!843903 e!843899)))

(declare-fun b!1316415 () Bool)

(assert (=> b!1316415 (= e!843898 call!89456)))

(declare-fun b!1316416 () Bool)

(assert (=> b!1316416 (= e!843902 e!843903)))

(assert (=> b!1316416 (= c!216023 ((_ is Union!3623) lt!433562))))

(assert (= (and d!371159 (not res!591478)) b!1316410))

(assert (= (and b!1316410 c!216022) b!1316411))

(assert (= (and b!1316410 (not c!216022)) b!1316416))

(assert (= (and b!1316411 res!591479) b!1316409))

(assert (= (and b!1316416 c!216023) b!1316414))

(assert (= (and b!1316416 (not c!216023)) b!1316408))

(assert (= (and b!1316414 res!591476) b!1316413))

(assert (= (and b!1316408 (not res!591477)) b!1316412))

(assert (= (and b!1316412 res!591480) b!1316415))

(assert (= (or b!1316414 b!1316412) bm!89452))

(assert (= (or b!1316413 b!1316415) bm!89451))

(assert (= (or b!1316409 bm!89452) bm!89453))

(declare-fun m!1470227 () Bool)

(assert (=> bm!89451 m!1470227))

(declare-fun m!1470229 () Bool)

(assert (=> b!1316411 m!1470229))

(declare-fun m!1470231 () Bool)

(assert (=> bm!89453 m!1470231))

(assert (=> d!370581 d!371159))

(declare-fun d!371161 () Bool)

(declare-fun res!591496 () Bool)

(declare-fun e!843921 () Bool)

(assert (=> d!371161 (=> res!591496 e!843921)))

(assert (=> d!371161 (= res!591496 ((_ is Nil!13342) rules!2550))))

(assert (=> d!371161 (= (forall!3293 rules!2550 lambda!53560) e!843921)))

(declare-fun b!1316442 () Bool)

(declare-fun e!843922 () Bool)

(assert (=> b!1316442 (= e!843921 e!843922)))

(declare-fun res!591497 () Bool)

(assert (=> b!1316442 (=> (not res!591497) (not e!843922))))

(assert (=> b!1316442 (= res!591497 (dynLambda!5823 lambda!53560 (h!18743 rules!2550)))))

(declare-fun b!1316443 () Bool)

(assert (=> b!1316443 (= e!843922 (forall!3293 (t!118281 rules!2550) lambda!53560))))

(assert (= (and d!371161 (not res!591496)) b!1316442))

(assert (= (and b!1316442 res!591497) b!1316443))

(declare-fun b_lambda!38127 () Bool)

(assert (=> (not b_lambda!38127) (not b!1316442)))

(declare-fun m!1470253 () Bool)

(assert (=> b!1316442 m!1470253))

(declare-fun m!1470255 () Bool)

(assert (=> b!1316443 m!1470255))

(assert (=> d!370783 d!371161))

(declare-fun d!371171 () Bool)

(declare-fun res!591502 () Bool)

(declare-fun e!843925 () Bool)

(assert (=> d!371171 (=> (not res!591502) (not e!843925))))

(assert (=> d!371171 (= res!591502 (validRegex!1549 (regex!2309 lt!433573)))))

(assert (=> d!371171 (= (ruleValid!562 thiss!19762 lt!433573) e!843925)))

(declare-fun b!1316448 () Bool)

(declare-fun res!591503 () Bool)

(assert (=> b!1316448 (=> (not res!591503) (not e!843925))))

(assert (=> b!1316448 (= res!591503 (not (nullable!1147 (regex!2309 lt!433573))))))

(declare-fun b!1316449 () Bool)

(assert (=> b!1316449 (= e!843925 (not (= (tag!2571 lt!433573) (String!16232 ""))))))

(assert (= (and d!371171 res!591502) b!1316448))

(assert (= (and b!1316448 res!591503) b!1316449))

(declare-fun m!1470259 () Bool)

(assert (=> d!371171 m!1470259))

(declare-fun m!1470261 () Bool)

(assert (=> b!1316448 m!1470261))

(assert (=> bs!330363 d!371171))

(declare-fun d!371175 () Bool)

(declare-fun nullableFct!262 (Regex!3623) Bool)

(assert (=> d!371175 (= (nullable!1147 (reg!3952 (regex!2309 (rule!4050 t1!34)))) (nullableFct!262 (reg!3952 (regex!2309 (rule!4050 t1!34)))))))

(declare-fun bs!330446 () Bool)

(assert (= bs!330446 d!371175))

(declare-fun m!1470263 () Bool)

(assert (=> bs!330446 m!1470263))

(assert (=> b!1315760 d!371175))

(declare-fun b!1316462 () Bool)

(declare-fun e!843930 () Bool)

(declare-fun isEmpty!7920 (Conc!4389) Bool)

(assert (=> b!1316462 (= e!843930 (not (isEmpty!7920 (right!11799 (c!215722 lt!433829)))))))

(declare-fun b!1316463 () Bool)

(declare-fun res!591516 () Bool)

(assert (=> b!1316463 (=> (not res!591516) (not e!843930))))

(assert (=> b!1316463 (= res!591516 (isBalanced!1276 (right!11799 (c!215722 lt!433829))))))

(declare-fun b!1316464 () Bool)

(declare-fun res!591520 () Bool)

(assert (=> b!1316464 (=> (not res!591520) (not e!843930))))

(declare-fun height!625 (Conc!4389) Int)

(assert (=> b!1316464 (= res!591520 (<= (- (height!625 (left!11469 (c!215722 lt!433829))) (height!625 (right!11799 (c!215722 lt!433829)))) 1))))

(declare-fun b!1316465 () Bool)

(declare-fun res!591517 () Bool)

(assert (=> b!1316465 (=> (not res!591517) (not e!843930))))

(assert (=> b!1316465 (= res!591517 (isBalanced!1276 (left!11469 (c!215722 lt!433829))))))

(declare-fun b!1316466 () Bool)

(declare-fun e!843931 () Bool)

(assert (=> b!1316466 (= e!843931 e!843930)))

(declare-fun res!591518 () Bool)

(assert (=> b!1316466 (=> (not res!591518) (not e!843930))))

(assert (=> b!1316466 (= res!591518 (<= (- 1) (- (height!625 (left!11469 (c!215722 lt!433829))) (height!625 (right!11799 (c!215722 lt!433829))))))))

(declare-fun b!1316467 () Bool)

(declare-fun res!591519 () Bool)

(assert (=> b!1316467 (=> (not res!591519) (not e!843930))))

(assert (=> b!1316467 (= res!591519 (not (isEmpty!7920 (left!11469 (c!215722 lt!433829)))))))

(declare-fun d!371177 () Bool)

(declare-fun res!591521 () Bool)

(assert (=> d!371177 (=> res!591521 e!843931)))

(assert (=> d!371177 (= res!591521 (not ((_ is Node!4389) (c!215722 lt!433829))))))

(assert (=> d!371177 (= (isBalanced!1276 (c!215722 lt!433829)) e!843931)))

(assert (= (and d!371177 (not res!591521)) b!1316466))

(assert (= (and b!1316466 res!591518) b!1316464))

(assert (= (and b!1316464 res!591520) b!1316465))

(assert (= (and b!1316465 res!591517) b!1316463))

(assert (= (and b!1316463 res!591516) b!1316467))

(assert (= (and b!1316467 res!591519) b!1316462))

(declare-fun m!1470265 () Bool)

(assert (=> b!1316466 m!1470265))

(declare-fun m!1470267 () Bool)

(assert (=> b!1316466 m!1470267))

(declare-fun m!1470269 () Bool)

(assert (=> b!1316467 m!1470269))

(declare-fun m!1470271 () Bool)

(assert (=> b!1316463 m!1470271))

(declare-fun m!1470273 () Bool)

(assert (=> b!1316465 m!1470273))

(declare-fun m!1470275 () Bool)

(assert (=> b!1316462 m!1470275))

(assert (=> b!1316464 m!1470265))

(assert (=> b!1316464 m!1470267))

(assert (=> b!1315804 d!371177))

(declare-fun d!371179 () Bool)

(declare-fun lt!434010 () Bool)

(assert (=> d!371179 (= lt!434010 (select (content!1877 rules!2550) (rule!4050 (_1!7367 (get!4256 lt!433652)))))))

(declare-fun e!843932 () Bool)

(assert (=> d!371179 (= lt!434010 e!843932)))

(declare-fun res!591522 () Bool)

(assert (=> d!371179 (=> (not res!591522) (not e!843932))))

(assert (=> d!371179 (= res!591522 ((_ is Cons!13342) rules!2550))))

(assert (=> d!371179 (= (contains!2339 rules!2550 (rule!4050 (_1!7367 (get!4256 lt!433652)))) lt!434010)))

(declare-fun b!1316468 () Bool)

(declare-fun e!843933 () Bool)

(assert (=> b!1316468 (= e!843932 e!843933)))

(declare-fun res!591523 () Bool)

(assert (=> b!1316468 (=> res!591523 e!843933)))

(assert (=> b!1316468 (= res!591523 (= (h!18743 rules!2550) (rule!4050 (_1!7367 (get!4256 lt!433652)))))))

(declare-fun b!1316469 () Bool)

(assert (=> b!1316469 (= e!843933 (contains!2339 (t!118281 rules!2550) (rule!4050 (_1!7367 (get!4256 lt!433652)))))))

(assert (= (and d!371179 res!591522) b!1316468))

(assert (= (and b!1316468 (not res!591523)) b!1316469))

(assert (=> d!371179 m!1469149))

(declare-fun m!1470277 () Bool)

(assert (=> d!371179 m!1470277))

(declare-fun m!1470279 () Bool)

(assert (=> b!1316469 m!1470279))

(assert (=> b!1315279 d!371179))

(assert (=> b!1315279 d!371137))

(declare-fun d!371181 () Bool)

(declare-fun res!591528 () Bool)

(declare-fun e!843938 () Bool)

(assert (=> d!371181 (=> res!591528 e!843938)))

(assert (=> d!371181 (= res!591528 ((_ is Nil!13344) lt!433564))))

(assert (=> d!371181 (= (forall!3294 lt!433564 lambda!53573) e!843938)))

(declare-fun b!1316474 () Bool)

(declare-fun e!843939 () Bool)

(assert (=> b!1316474 (= e!843938 e!843939)))

(declare-fun res!591529 () Bool)

(assert (=> b!1316474 (=> (not res!591529) (not e!843939))))

(assert (=> b!1316474 (= res!591529 (dynLambda!5818 lambda!53573 (h!18745 lt!433564)))))

(declare-fun b!1316475 () Bool)

(assert (=> b!1316475 (= e!843939 (forall!3294 (t!118283 lt!433564) lambda!53573))))

(assert (= (and d!371181 (not res!591528)) b!1316474))

(assert (= (and b!1316474 res!591529) b!1316475))

(declare-fun b_lambda!38129 () Bool)

(assert (=> (not b_lambda!38129) (not b!1316474)))

(declare-fun m!1470281 () Bool)

(assert (=> b!1316474 m!1470281))

(declare-fun m!1470283 () Bool)

(assert (=> b!1316475 m!1470283))

(assert (=> d!370807 d!371181))

(declare-fun d!371183 () Bool)

(declare-fun res!591530 () Bool)

(declare-fun e!843940 () Bool)

(assert (=> d!371183 (=> res!591530 e!843940)))

(assert (=> d!371183 (= res!591530 ((_ is Nil!13344) (map!2930 rules!2550 lambda!53526)))))

(assert (=> d!371183 (= (forall!3294 (map!2930 rules!2550 lambda!53526) lambda!53566) e!843940)))

(declare-fun b!1316476 () Bool)

(declare-fun e!843941 () Bool)

(assert (=> b!1316476 (= e!843940 e!843941)))

(declare-fun res!591531 () Bool)

(assert (=> b!1316476 (=> (not res!591531) (not e!843941))))

(assert (=> b!1316476 (= res!591531 (dynLambda!5818 lambda!53566 (h!18745 (map!2930 rules!2550 lambda!53526))))))

(declare-fun b!1316477 () Bool)

(assert (=> b!1316477 (= e!843941 (forall!3294 (t!118283 (map!2930 rules!2550 lambda!53526)) lambda!53566))))

(assert (= (and d!371183 (not res!591530)) b!1316476))

(assert (= (and b!1316476 res!591531) b!1316477))

(declare-fun b_lambda!38131 () Bool)

(assert (=> (not b_lambda!38131) (not b!1316476)))

(declare-fun m!1470285 () Bool)

(assert (=> b!1316476 m!1470285))

(declare-fun m!1470287 () Bool)

(assert (=> b!1316477 m!1470287))

(assert (=> d!370803 d!371183))

(declare-fun d!371185 () Bool)

(assert (=> d!371185 (= (isEmpty!7914 (list!5023 (_2!7365 lt!433580))) ((_ is Nil!13341) (list!5023 (_2!7365 lt!433580))))))

(assert (=> d!370725 d!371185))

(declare-fun d!371187 () Bool)

(assert (=> d!371187 (= (list!5023 (_2!7365 lt!433580)) (list!5026 (c!215720 (_2!7365 lt!433580))))))

(declare-fun bs!330447 () Bool)

(assert (= bs!330447 d!371187))

(declare-fun m!1470289 () Bool)

(assert (=> bs!330447 m!1470289))

(assert (=> d!370725 d!371187))

(declare-fun d!371189 () Bool)

(declare-fun lt!434013 () Bool)

(assert (=> d!371189 (= lt!434013 (isEmpty!7914 (list!5026 (c!215720 (_2!7365 lt!433580)))))))

(assert (=> d!371189 (= lt!434013 (= (size!10861 (c!215720 (_2!7365 lt!433580))) 0))))

(assert (=> d!371189 (= (isEmpty!7916 (c!215720 (_2!7365 lt!433580))) lt!434013)))

(declare-fun bs!330448 () Bool)

(assert (= bs!330448 d!371189))

(assert (=> bs!330448 m!1470289))

(assert (=> bs!330448 m!1470289))

(declare-fun m!1470291 () Bool)

(assert (=> bs!330448 m!1470291))

(declare-fun m!1470293 () Bool)

(assert (=> bs!330448 m!1470293))

(assert (=> d!370725 d!371189))

(declare-fun b!1316481 () Bool)

(declare-fun lt!434014 () List!13407)

(declare-fun e!843943 () Bool)

(assert (=> b!1316481 (= e!843943 (or (not (= lt!433665 Nil!13341)) (= lt!434014 lt!433563)))))

(declare-fun b!1316478 () Bool)

(declare-fun e!843942 () List!13407)

(assert (=> b!1316478 (= e!843942 lt!433665)))

(declare-fun d!371191 () Bool)

(assert (=> d!371191 e!843943))

(declare-fun res!591533 () Bool)

(assert (=> d!371191 (=> (not res!591533) (not e!843943))))

(assert (=> d!371191 (= res!591533 (= (content!1874 lt!434014) ((_ map or) (content!1874 lt!433563) (content!1874 lt!433665))))))

(assert (=> d!371191 (= lt!434014 e!843942)))

(declare-fun c!216029 () Bool)

(assert (=> d!371191 (= c!216029 ((_ is Nil!13341) lt!433563))))

(assert (=> d!371191 (= (++!3398 lt!433563 lt!433665) lt!434014)))

(declare-fun b!1316480 () Bool)

(declare-fun res!591532 () Bool)

(assert (=> b!1316480 (=> (not res!591532) (not e!843943))))

(assert (=> b!1316480 (= res!591532 (= (size!10858 lt!434014) (+ (size!10858 lt!433563) (size!10858 lt!433665))))))

(declare-fun b!1316479 () Bool)

(assert (=> b!1316479 (= e!843942 (Cons!13341 (h!18742 lt!433563) (++!3398 (t!118280 lt!433563) lt!433665)))))

(assert (= (and d!371191 c!216029) b!1316478))

(assert (= (and d!371191 (not c!216029)) b!1316479))

(assert (= (and d!371191 res!591533) b!1316480))

(assert (= (and b!1316480 res!591532) b!1316481))

(declare-fun m!1470295 () Bool)

(assert (=> d!371191 m!1470295))

(assert (=> d!371191 m!1468615))

(declare-fun m!1470297 () Bool)

(assert (=> d!371191 m!1470297))

(declare-fun m!1470299 () Bool)

(assert (=> b!1316480 m!1470299))

(assert (=> b!1316480 m!1468633))

(declare-fun m!1470301 () Bool)

(assert (=> b!1316480 m!1470301))

(declare-fun m!1470303 () Bool)

(assert (=> b!1316479 m!1470303))

(assert (=> d!370571 d!371191))

(declare-fun d!371193 () Bool)

(declare-fun lt!434017 () Int)

(assert (=> d!371193 (>= lt!434017 0)))

(declare-fun e!843946 () Int)

(assert (=> d!371193 (= lt!434017 e!843946)))

(declare-fun c!216032 () Bool)

(assert (=> d!371193 (= c!216032 ((_ is Nil!13341) lt!433574))))

(assert (=> d!371193 (= (size!10858 lt!433574) lt!434017)))

(declare-fun b!1316486 () Bool)

(assert (=> b!1316486 (= e!843946 0)))

(declare-fun b!1316487 () Bool)

(assert (=> b!1316487 (= e!843946 (+ 1 (size!10858 (t!118280 lt!433574))))))

(assert (= (and d!371193 c!216032) b!1316486))

(assert (= (and d!371193 (not c!216032)) b!1316487))

(declare-fun m!1470305 () Bool)

(assert (=> b!1316487 m!1470305))

(assert (=> d!370571 d!371193))

(declare-fun d!371195 () Bool)

(declare-fun lt!434018 () Int)

(assert (=> d!371195 (>= lt!434018 0)))

(declare-fun e!843947 () Int)

(assert (=> d!371195 (= lt!434018 e!843947)))

(declare-fun c!216033 () Bool)

(assert (=> d!371195 (= c!216033 ((_ is Nil!13341) lt!433563))))

(assert (=> d!371195 (= (size!10858 lt!433563) lt!434018)))

(declare-fun b!1316488 () Bool)

(assert (=> b!1316488 (= e!843947 0)))

(declare-fun b!1316489 () Bool)

(assert (=> b!1316489 (= e!843947 (+ 1 (size!10858 (t!118280 lt!433563))))))

(assert (= (and d!371195 c!216033) b!1316488))

(assert (= (and d!371195 (not c!216033)) b!1316489))

(declare-fun m!1470307 () Bool)

(assert (=> b!1316489 m!1470307))

(assert (=> d!370571 d!371195))

(declare-fun d!371197 () Bool)

(declare-fun lt!434019 () Bool)

(assert (=> d!371197 (= lt!434019 (isEmpty!7914 (list!5023 (_2!7365 lt!433741))))))

(assert (=> d!371197 (= lt!434019 (isEmpty!7916 (c!215720 (_2!7365 lt!433741))))))

(assert (=> d!371197 (= (isEmpty!7906 (_2!7365 lt!433741)) lt!434019)))

(declare-fun bs!330449 () Bool)

(assert (= bs!330449 d!371197))

(declare-fun m!1470309 () Bool)

(assert (=> bs!330449 m!1470309))

(assert (=> bs!330449 m!1470309))

(declare-fun m!1470311 () Bool)

(assert (=> bs!330449 m!1470311))

(declare-fun m!1470313 () Bool)

(assert (=> bs!330449 m!1470313))

(assert (=> b!1315536 d!371197))

(declare-fun d!371199 () Bool)

(declare-fun c!216034 () Bool)

(assert (=> d!371199 (= c!216034 ((_ is Nil!13341) lt!433563))))

(declare-fun e!843948 () (InoxSet C!7536))

(assert (=> d!371199 (= (content!1874 lt!433563) e!843948)))

(declare-fun b!1316490 () Bool)

(assert (=> b!1316490 (= e!843948 ((as const (Array C!7536 Bool)) false))))

(declare-fun b!1316491 () Bool)

(assert (=> b!1316491 (= e!843948 ((_ map or) (store ((as const (Array C!7536 Bool)) false) (h!18742 lt!433563) true) (content!1874 (t!118280 lt!433563))))))

(assert (= (and d!371199 c!216034) b!1316490))

(assert (= (and d!371199 (not c!216034)) b!1316491))

(declare-fun m!1470315 () Bool)

(assert (=> b!1316491 m!1470315))

(declare-fun m!1470317 () Bool)

(assert (=> b!1316491 m!1470317))

(assert (=> d!370565 d!371199))

(declare-fun d!371201 () Bool)

(declare-fun res!591536 () Bool)

(declare-fun e!843955 () Bool)

(assert (=> d!371201 (=> res!591536 e!843955)))

(assert (=> d!371201 (= res!591536 ((_ is ElementMatch!3623) (ite c!215848 (regTwo!7759 (regex!2309 (rule!4050 t1!34))) (regTwo!7758 (regex!2309 (rule!4050 t1!34))))))))

(assert (=> d!371201 (= (validRegex!1549 (ite c!215848 (regTwo!7759 (regex!2309 (rule!4050 t1!34))) (regTwo!7758 (regex!2309 (rule!4050 t1!34))))) e!843955)))

(declare-fun b!1316492 () Bool)

(declare-fun res!591535 () Bool)

(declare-fun e!843952 () Bool)

(assert (=> b!1316492 (=> res!591535 e!843952)))

(assert (=> b!1316492 (= res!591535 (not ((_ is Concat!6023) (ite c!215848 (regTwo!7759 (regex!2309 (rule!4050 t1!34))) (regTwo!7758 (regex!2309 (rule!4050 t1!34)))))))))

(declare-fun e!843954 () Bool)

(assert (=> b!1316492 (= e!843954 e!843952)))

(declare-fun bm!89455 () Bool)

(declare-fun c!216036 () Bool)

(declare-fun call!89460 () Bool)

(assert (=> bm!89455 (= call!89460 (validRegex!1549 (ite c!216036 (regTwo!7759 (ite c!215848 (regTwo!7759 (regex!2309 (rule!4050 t1!34))) (regTwo!7758 (regex!2309 (rule!4050 t1!34))))) (regTwo!7758 (ite c!215848 (regTwo!7759 (regex!2309 (rule!4050 t1!34))) (regTwo!7758 (regex!2309 (rule!4050 t1!34))))))))))

(declare-fun bm!89456 () Bool)

(declare-fun call!89461 () Bool)

(declare-fun call!89462 () Bool)

(assert (=> bm!89456 (= call!89461 call!89462)))

(declare-fun b!1316493 () Bool)

(declare-fun e!843951 () Bool)

(assert (=> b!1316493 (= e!843951 call!89462)))

(declare-fun b!1316494 () Bool)

(declare-fun e!843953 () Bool)

(assert (=> b!1316494 (= e!843955 e!843953)))

(declare-fun c!216035 () Bool)

(assert (=> b!1316494 (= c!216035 ((_ is Star!3623) (ite c!215848 (regTwo!7759 (regex!2309 (rule!4050 t1!34))) (regTwo!7758 (regex!2309 (rule!4050 t1!34))))))))

(declare-fun b!1316495 () Bool)

(assert (=> b!1316495 (= e!843953 e!843951)))

(declare-fun res!591537 () Bool)

(assert (=> b!1316495 (= res!591537 (not (nullable!1147 (reg!3952 (ite c!215848 (regTwo!7759 (regex!2309 (rule!4050 t1!34))) (regTwo!7758 (regex!2309 (rule!4050 t1!34))))))))))

(assert (=> b!1316495 (=> (not res!591537) (not e!843951))))

(declare-fun bm!89457 () Bool)

(assert (=> bm!89457 (= call!89462 (validRegex!1549 (ite c!216035 (reg!3952 (ite c!215848 (regTwo!7759 (regex!2309 (rule!4050 t1!34))) (regTwo!7758 (regex!2309 (rule!4050 t1!34))))) (ite c!216036 (regOne!7759 (ite c!215848 (regTwo!7759 (regex!2309 (rule!4050 t1!34))) (regTwo!7758 (regex!2309 (rule!4050 t1!34))))) (regOne!7758 (ite c!215848 (regTwo!7759 (regex!2309 (rule!4050 t1!34))) (regTwo!7758 (regex!2309 (rule!4050 t1!34)))))))))))

(declare-fun b!1316496 () Bool)

(declare-fun e!843949 () Bool)

(assert (=> b!1316496 (= e!843952 e!843949)))

(declare-fun res!591538 () Bool)

(assert (=> b!1316496 (=> (not res!591538) (not e!843949))))

(assert (=> b!1316496 (= res!591538 call!89461)))

(declare-fun b!1316497 () Bool)

(declare-fun e!843950 () Bool)

(assert (=> b!1316497 (= e!843950 call!89460)))

(declare-fun b!1316498 () Bool)

(declare-fun res!591534 () Bool)

(assert (=> b!1316498 (=> (not res!591534) (not e!843950))))

(assert (=> b!1316498 (= res!591534 call!89461)))

(assert (=> b!1316498 (= e!843954 e!843950)))

(declare-fun b!1316499 () Bool)

(assert (=> b!1316499 (= e!843949 call!89460)))

(declare-fun b!1316500 () Bool)

(assert (=> b!1316500 (= e!843953 e!843954)))

(assert (=> b!1316500 (= c!216036 ((_ is Union!3623) (ite c!215848 (regTwo!7759 (regex!2309 (rule!4050 t1!34))) (regTwo!7758 (regex!2309 (rule!4050 t1!34))))))))

(assert (= (and d!371201 (not res!591536)) b!1316494))

(assert (= (and b!1316494 c!216035) b!1316495))

(assert (= (and b!1316494 (not c!216035)) b!1316500))

(assert (= (and b!1316495 res!591537) b!1316493))

(assert (= (and b!1316500 c!216036) b!1316498))

(assert (= (and b!1316500 (not c!216036)) b!1316492))

(assert (= (and b!1316498 res!591534) b!1316497))

(assert (= (and b!1316492 (not res!591535)) b!1316496))

(assert (= (and b!1316496 res!591538) b!1316499))

(assert (= (or b!1316498 b!1316496) bm!89456))

(assert (= (or b!1316497 b!1316499) bm!89455))

(assert (= (or b!1316493 bm!89456) bm!89457))

(declare-fun m!1470319 () Bool)

(assert (=> bm!89455 m!1470319))

(declare-fun m!1470321 () Bool)

(assert (=> b!1316495 m!1470321))

(declare-fun m!1470323 () Bool)

(assert (=> bm!89457 m!1470323))

(assert (=> bm!89407 d!371201))

(declare-fun d!371203 () Bool)

(assert (=> d!371203 (= (list!5022 lt!433829) (list!5027 (c!215722 lt!433829)))))

(declare-fun bs!330450 () Bool)

(assert (= bs!330450 d!371203))

(declare-fun m!1470325 () Bool)

(assert (=> bs!330450 m!1470325))

(assert (=> d!370797 d!371203))

(declare-fun d!371205 () Bool)

(declare-fun e!843958 () Bool)

(assert (=> d!371205 e!843958))

(declare-fun res!591541 () Bool)

(assert (=> d!371205 (=> (not res!591541) (not e!843958))))

(declare-fun lt!434022 () BalanceConc!8718)

(assert (=> d!371205 (= res!591541 (= (list!5022 lt!434022) (Cons!13343 t2!34 Nil!13343)))))

(declare-fun choose!8053 (Token!4280) BalanceConc!8718)

(assert (=> d!371205 (= lt!434022 (choose!8053 t2!34))))

(assert (=> d!371205 (= (singleton!382 t2!34) lt!434022)))

(declare-fun b!1316503 () Bool)

(assert (=> b!1316503 (= e!843958 (isBalanced!1276 (c!215722 lt!434022)))))

(assert (= (and d!371205 res!591541) b!1316503))

(declare-fun m!1470327 () Bool)

(assert (=> d!371205 m!1470327))

(declare-fun m!1470329 () Bool)

(assert (=> d!371205 m!1470329))

(declare-fun m!1470331 () Bool)

(assert (=> b!1316503 m!1470331))

(assert (=> d!370797 d!371205))

(declare-fun e!843960 () Bool)

(declare-fun b!1316507 () Bool)

(declare-fun lt!434023 () List!13407)

(assert (=> b!1316507 (= e!843960 (or (not (= (getSuffix!479 lt!433574 lt!433563) Nil!13341)) (= lt!434023 (t!118280 lt!433563))))))

(declare-fun b!1316504 () Bool)

(declare-fun e!843959 () List!13407)

(assert (=> b!1316504 (= e!843959 (getSuffix!479 lt!433574 lt!433563))))

(declare-fun d!371207 () Bool)

(assert (=> d!371207 e!843960))

(declare-fun res!591543 () Bool)

(assert (=> d!371207 (=> (not res!591543) (not e!843960))))

(assert (=> d!371207 (= res!591543 (= (content!1874 lt!434023) ((_ map or) (content!1874 (t!118280 lt!433563)) (content!1874 (getSuffix!479 lt!433574 lt!433563)))))))

(assert (=> d!371207 (= lt!434023 e!843959)))

(declare-fun c!216037 () Bool)

(assert (=> d!371207 (= c!216037 ((_ is Nil!13341) (t!118280 lt!433563)))))

(assert (=> d!371207 (= (++!3398 (t!118280 lt!433563) (getSuffix!479 lt!433574 lt!433563)) lt!434023)))

(declare-fun b!1316506 () Bool)

(declare-fun res!591542 () Bool)

(assert (=> b!1316506 (=> (not res!591542) (not e!843960))))

(assert (=> b!1316506 (= res!591542 (= (size!10858 lt!434023) (+ (size!10858 (t!118280 lt!433563)) (size!10858 (getSuffix!479 lt!433574 lt!433563)))))))

(declare-fun b!1316505 () Bool)

(assert (=> b!1316505 (= e!843959 (Cons!13341 (h!18742 (t!118280 lt!433563)) (++!3398 (t!118280 (t!118280 lt!433563)) (getSuffix!479 lt!433574 lt!433563))))))

(assert (= (and d!371207 c!216037) b!1316504))

(assert (= (and d!371207 (not c!216037)) b!1316505))

(assert (= (and d!371207 res!591543) b!1316506))

(assert (= (and b!1316506 res!591542) b!1316507))

(declare-fun m!1470333 () Bool)

(assert (=> d!371207 m!1470333))

(assert (=> d!371207 m!1470317))

(assert (=> d!371207 m!1468413))

(assert (=> d!371207 m!1468629))

(declare-fun m!1470335 () Bool)

(assert (=> b!1316506 m!1470335))

(assert (=> b!1316506 m!1470307))

(assert (=> b!1316506 m!1468413))

(assert (=> b!1316506 m!1468635))

(assert (=> b!1316505 m!1468413))

(declare-fun m!1470337 () Bool)

(assert (=> b!1316505 m!1470337))

(assert (=> b!1315299 d!371207))

(declare-fun d!371209 () Bool)

(assert (=> d!371209 (= (head!2272 (map!2930 rules!2550 lambda!53526)) (h!18745 (map!2930 rules!2550 lambda!53526)))))

(assert (=> b!1315229 d!371209))

(declare-fun e!843962 () Bool)

(declare-fun lt!434024 () List!13407)

(declare-fun b!1316511 () Bool)

(assert (=> b!1316511 (= e!843962 (or (not (= (Cons!13341 lt!433561 Nil!13341) Nil!13341)) (= lt!434024 (t!118280 lt!433577))))))

(declare-fun b!1316508 () Bool)

(declare-fun e!843961 () List!13407)

(assert (=> b!1316508 (= e!843961 (Cons!13341 lt!433561 Nil!13341))))

(declare-fun d!371211 () Bool)

(assert (=> d!371211 e!843962))

(declare-fun res!591545 () Bool)

(assert (=> d!371211 (=> (not res!591545) (not e!843962))))

(assert (=> d!371211 (= res!591545 (= (content!1874 lt!434024) ((_ map or) (content!1874 (t!118280 lt!433577)) (content!1874 (Cons!13341 lt!433561 Nil!13341)))))))

(assert (=> d!371211 (= lt!434024 e!843961)))

(declare-fun c!216038 () Bool)

(assert (=> d!371211 (= c!216038 ((_ is Nil!13341) (t!118280 lt!433577)))))

(assert (=> d!371211 (= (++!3398 (t!118280 lt!433577) (Cons!13341 lt!433561 Nil!13341)) lt!434024)))

(declare-fun b!1316510 () Bool)

(declare-fun res!591544 () Bool)

(assert (=> b!1316510 (=> (not res!591544) (not e!843962))))

(assert (=> b!1316510 (= res!591544 (= (size!10858 lt!434024) (+ (size!10858 (t!118280 lt!433577)) (size!10858 (Cons!13341 lt!433561 Nil!13341)))))))

(declare-fun b!1316509 () Bool)

(assert (=> b!1316509 (= e!843961 (Cons!13341 (h!18742 (t!118280 lt!433577)) (++!3398 (t!118280 (t!118280 lt!433577)) (Cons!13341 lt!433561 Nil!13341))))))

(assert (= (and d!371211 c!216038) b!1316508))

(assert (= (and d!371211 (not c!216038)) b!1316509))

(assert (= (and d!371211 res!591545) b!1316510))

(assert (= (and b!1316510 res!591544) b!1316511))

(declare-fun m!1470339 () Bool)

(assert (=> d!371211 m!1470339))

(assert (=> d!371211 m!1469917))

(assert (=> d!371211 m!1469109))

(declare-fun m!1470341 () Bool)

(assert (=> b!1316510 m!1470341))

(declare-fun m!1470343 () Bool)

(assert (=> b!1316510 m!1470343))

(assert (=> b!1316510 m!1469115))

(declare-fun m!1470345 () Bool)

(assert (=> b!1316509 m!1470345))

(assert (=> b!1315634 d!371211))

(declare-fun d!371213 () Bool)

(declare-fun lt!434025 () Int)

(assert (=> d!371213 (= lt!434025 (size!10858 (list!5023 (_2!7365 lt!433827))))))

(assert (=> d!371213 (= lt!434025 (size!10861 (c!215720 (_2!7365 lt!433827))))))

(assert (=> d!371213 (= (size!10849 (_2!7365 lt!433827)) lt!434025)))

(declare-fun bs!330451 () Bool)

(assert (= bs!330451 d!371213))

(assert (=> bs!330451 m!1469327))

(assert (=> bs!330451 m!1469327))

(declare-fun m!1470347 () Bool)

(assert (=> bs!330451 m!1470347))

(declare-fun m!1470349 () Bool)

(assert (=> bs!330451 m!1470349))

(assert (=> b!1315803 d!371213))

(declare-fun d!371215 () Bool)

(declare-fun lt!434026 () Int)

(assert (=> d!371215 (= lt!434026 (size!10858 (list!5023 lt!433572)))))

(assert (=> d!371215 (= lt!434026 (size!10861 (c!215720 lt!433572)))))

(assert (=> d!371215 (= (size!10849 lt!433572) lt!434026)))

(declare-fun bs!330452 () Bool)

(assert (= bs!330452 d!371215))

(assert (=> bs!330452 m!1468305))

(assert (=> bs!330452 m!1468305))

(assert (=> bs!330452 m!1469087))

(declare-fun m!1470351 () Bool)

(assert (=> bs!330452 m!1470351))

(assert (=> b!1315803 d!371215))

(declare-fun d!371217 () Bool)

(declare-fun lt!434027 () Bool)

(assert (=> d!371217 (= lt!434027 (select (content!1877 rules!2550) (rule!4050 (_1!7367 (get!4256 lt!433820)))))))

(declare-fun e!843963 () Bool)

(assert (=> d!371217 (= lt!434027 e!843963)))

(declare-fun res!591546 () Bool)

(assert (=> d!371217 (=> (not res!591546) (not e!843963))))

(assert (=> d!371217 (= res!591546 ((_ is Cons!13342) rules!2550))))

(assert (=> d!371217 (= (contains!2339 rules!2550 (rule!4050 (_1!7367 (get!4256 lt!433820)))) lt!434027)))

(declare-fun b!1316512 () Bool)

(declare-fun e!843964 () Bool)

(assert (=> b!1316512 (= e!843963 e!843964)))

(declare-fun res!591547 () Bool)

(assert (=> b!1316512 (=> res!591547 e!843964)))

(assert (=> b!1316512 (= res!591547 (= (h!18743 rules!2550) (rule!4050 (_1!7367 (get!4256 lt!433820)))))))

(declare-fun b!1316513 () Bool)

(assert (=> b!1316513 (= e!843964 (contains!2339 (t!118281 rules!2550) (rule!4050 (_1!7367 (get!4256 lt!433820)))))))

(assert (= (and d!371217 res!591546) b!1316512))

(assert (= (and b!1316512 (not res!591547)) b!1316513))

(assert (=> d!371217 m!1469149))

(declare-fun m!1470353 () Bool)

(assert (=> d!371217 m!1470353))

(declare-fun m!1470355 () Bool)

(assert (=> b!1316513 m!1470355))

(assert (=> b!1315782 d!371217))

(declare-fun d!371219 () Bool)

(assert (=> d!371219 (= (get!4256 lt!433820) (v!21118 lt!433820))))

(assert (=> b!1315782 d!371219))

(declare-fun d!371221 () Bool)

(declare-fun lt!434028 () Bool)

(assert (=> d!371221 (= lt!434028 (select (content!1874 (t!118280 lt!433563)) lt!433561))))

(declare-fun e!843965 () Bool)

(assert (=> d!371221 (= lt!434028 e!843965)))

(declare-fun res!591549 () Bool)

(assert (=> d!371221 (=> (not res!591549) (not e!843965))))

(assert (=> d!371221 (= res!591549 ((_ is Cons!13341) (t!118280 lt!433563)))))

(assert (=> d!371221 (= (contains!2340 (t!118280 lt!433563) lt!433561) lt!434028)))

(declare-fun b!1316514 () Bool)

(declare-fun e!843966 () Bool)

(assert (=> b!1316514 (= e!843965 e!843966)))

(declare-fun res!591548 () Bool)

(assert (=> b!1316514 (=> res!591548 e!843966)))

(assert (=> b!1316514 (= res!591548 (= (h!18742 (t!118280 lt!433563)) lt!433561))))

(declare-fun b!1316515 () Bool)

(assert (=> b!1316515 (= e!843966 (contains!2340 (t!118280 (t!118280 lt!433563)) lt!433561))))

(assert (= (and d!371221 res!591549) b!1316514))

(assert (= (and b!1316514 (not res!591548)) b!1316515))

(assert (=> d!371221 m!1470317))

(declare-fun m!1470357 () Bool)

(assert (=> d!371221 m!1470357))

(declare-fun m!1470359 () Bool)

(assert (=> b!1316515 m!1470359))

(assert (=> b!1315309 d!371221))

(declare-fun d!371223 () Bool)

(declare-fun res!591554 () Bool)

(declare-fun e!843971 () Bool)

(assert (=> d!371223 (=> res!591554 e!843971)))

(assert (=> d!371223 (= res!591554 ((_ is Nil!13342) rules!2550))))

(assert (=> d!371223 (= (noDuplicateTag!837 thiss!19762 rules!2550 Nil!13346) e!843971)))

(declare-fun b!1316520 () Bool)

(declare-fun e!843972 () Bool)

(assert (=> b!1316520 (= e!843971 e!843972)))

(declare-fun res!591555 () Bool)

(assert (=> b!1316520 (=> (not res!591555) (not e!843972))))

(declare-fun contains!2342 (List!13412 String!16231) Bool)

(assert (=> b!1316520 (= res!591555 (not (contains!2342 Nil!13346 (tag!2571 (h!18743 rules!2550)))))))

(declare-fun b!1316521 () Bool)

(assert (=> b!1316521 (= e!843972 (noDuplicateTag!837 thiss!19762 (t!118281 rules!2550) (Cons!13346 (tag!2571 (h!18743 rules!2550)) Nil!13346)))))

(assert (= (and d!371223 (not res!591554)) b!1316520))

(assert (= (and b!1316520 res!591555) b!1316521))

(declare-fun m!1470361 () Bool)

(assert (=> b!1316520 m!1470361))

(declare-fun m!1470363 () Bool)

(assert (=> b!1316521 m!1470363))

(assert (=> b!1315738 d!371223))

(declare-fun d!371225 () Bool)

(declare-fun lt!434029 () Bool)

(assert (=> d!371225 (= lt!434029 (select (content!1877 (t!118281 rules!2550)) (rule!4050 t1!34)))))

(declare-fun e!843973 () Bool)

(assert (=> d!371225 (= lt!434029 e!843973)))

(declare-fun res!591556 () Bool)

(assert (=> d!371225 (=> (not res!591556) (not e!843973))))

(assert (=> d!371225 (= res!591556 ((_ is Cons!13342) (t!118281 rules!2550)))))

(assert (=> d!371225 (= (contains!2339 (t!118281 rules!2550) (rule!4050 t1!34)) lt!434029)))

(declare-fun b!1316522 () Bool)

(declare-fun e!843974 () Bool)

(assert (=> b!1316522 (= e!843973 e!843974)))

(declare-fun res!591557 () Bool)

(assert (=> b!1316522 (=> res!591557 e!843974)))

(assert (=> b!1316522 (= res!591557 (= (h!18743 (t!118281 rules!2550)) (rule!4050 t1!34)))))

(declare-fun b!1316523 () Bool)

(assert (=> b!1316523 (= e!843974 (contains!2339 (t!118281 (t!118281 rules!2550)) (rule!4050 t1!34)))))

(assert (= (and d!371225 res!591556) b!1316522))

(assert (= (and b!1316522 (not res!591557)) b!1316523))

(declare-fun m!1470365 () Bool)

(assert (=> d!371225 m!1470365))

(declare-fun m!1470367 () Bool)

(assert (=> d!371225 m!1470367))

(declare-fun m!1470369 () Bool)

(assert (=> b!1316523 m!1470369))

(assert (=> b!1315735 d!371225))

(declare-fun e!843975 () Bool)

(declare-fun b!1316524 () Bool)

(assert (=> b!1316524 (= e!843975 (matchR!1625 (derivativeStep!899 (h!18745 (map!2930 rules!2550 lambda!53526)) (head!2273 lt!433574)) (tail!1884 lt!433574)))))

(declare-fun bm!89458 () Bool)

(declare-fun call!89463 () Bool)

(assert (=> bm!89458 (= call!89463 (isEmpty!7914 lt!433574))))

(declare-fun b!1316525 () Bool)

(declare-fun res!591565 () Bool)

(declare-fun e!843976 () Bool)

(assert (=> b!1316525 (=> res!591565 e!843976)))

(declare-fun e!843979 () Bool)

(assert (=> b!1316525 (= res!591565 e!843979)))

(declare-fun res!591564 () Bool)

(assert (=> b!1316525 (=> (not res!591564) (not e!843979))))

(declare-fun lt!434030 () Bool)

(assert (=> b!1316525 (= res!591564 lt!434030)))

(declare-fun b!1316526 () Bool)

(declare-fun res!591563 () Bool)

(assert (=> b!1316526 (=> (not res!591563) (not e!843979))))

(assert (=> b!1316526 (= res!591563 (isEmpty!7914 (tail!1884 lt!433574)))))

(declare-fun d!371227 () Bool)

(declare-fun e!843981 () Bool)

(assert (=> d!371227 e!843981))

(declare-fun c!216039 () Bool)

(assert (=> d!371227 (= c!216039 ((_ is EmptyExpr!3623) (h!18745 (map!2930 rules!2550 lambda!53526))))))

(assert (=> d!371227 (= lt!434030 e!843975)))

(declare-fun c!216041 () Bool)

(assert (=> d!371227 (= c!216041 (isEmpty!7914 lt!433574))))

(assert (=> d!371227 (validRegex!1549 (h!18745 (map!2930 rules!2550 lambda!53526)))))

(assert (=> d!371227 (= (matchR!1625 (h!18745 (map!2930 rules!2550 lambda!53526)) lt!433574) lt!434030)))

(declare-fun b!1316527 () Bool)

(declare-fun e!843980 () Bool)

(assert (=> b!1316527 (= e!843981 e!843980)))

(declare-fun c!216040 () Bool)

(assert (=> b!1316527 (= c!216040 ((_ is EmptyLang!3623) (h!18745 (map!2930 rules!2550 lambda!53526))))))

(declare-fun b!1316528 () Bool)

(declare-fun e!843978 () Bool)

(declare-fun e!843977 () Bool)

(assert (=> b!1316528 (= e!843978 e!843977)))

(declare-fun res!591560 () Bool)

(assert (=> b!1316528 (=> res!591560 e!843977)))

(assert (=> b!1316528 (= res!591560 call!89463)))

(declare-fun b!1316529 () Bool)

(assert (=> b!1316529 (= e!843977 (not (= (head!2273 lt!433574) (c!215721 (h!18745 (map!2930 rules!2550 lambda!53526))))))))

(declare-fun b!1316530 () Bool)

(assert (=> b!1316530 (= e!843980 (not lt!434030))))

(declare-fun b!1316531 () Bool)

(assert (=> b!1316531 (= e!843975 (nullable!1147 (h!18745 (map!2930 rules!2550 lambda!53526))))))

(declare-fun b!1316532 () Bool)

(declare-fun res!591558 () Bool)

(assert (=> b!1316532 (=> res!591558 e!843976)))

(assert (=> b!1316532 (= res!591558 (not ((_ is ElementMatch!3623) (h!18745 (map!2930 rules!2550 lambda!53526)))))))

(assert (=> b!1316532 (= e!843980 e!843976)))

(declare-fun b!1316533 () Bool)

(assert (=> b!1316533 (= e!843976 e!843978)))

(declare-fun res!591559 () Bool)

(assert (=> b!1316533 (=> (not res!591559) (not e!843978))))

(assert (=> b!1316533 (= res!591559 (not lt!434030))))

(declare-fun b!1316534 () Bool)

(declare-fun res!591562 () Bool)

(assert (=> b!1316534 (=> res!591562 e!843977)))

(assert (=> b!1316534 (= res!591562 (not (isEmpty!7914 (tail!1884 lt!433574))))))

(declare-fun b!1316535 () Bool)

(assert (=> b!1316535 (= e!843979 (= (head!2273 lt!433574) (c!215721 (h!18745 (map!2930 rules!2550 lambda!53526)))))))

(declare-fun b!1316536 () Bool)

(assert (=> b!1316536 (= e!843981 (= lt!434030 call!89463))))

(declare-fun b!1316537 () Bool)

(declare-fun res!591561 () Bool)

(assert (=> b!1316537 (=> (not res!591561) (not e!843979))))

(assert (=> b!1316537 (= res!591561 (not call!89463))))

(assert (= (and d!371227 c!216041) b!1316531))

(assert (= (and d!371227 (not c!216041)) b!1316524))

(assert (= (and d!371227 c!216039) b!1316536))

(assert (= (and d!371227 (not c!216039)) b!1316527))

(assert (= (and b!1316527 c!216040) b!1316530))

(assert (= (and b!1316527 (not c!216040)) b!1316532))

(assert (= (and b!1316532 (not res!591558)) b!1316525))

(assert (= (and b!1316525 res!591564) b!1316537))

(assert (= (and b!1316537 res!591561) b!1316526))

(assert (= (and b!1316526 res!591563) b!1316535))

(assert (= (and b!1316525 (not res!591565)) b!1316533))

(assert (= (and b!1316533 res!591559) b!1316528))

(assert (= (and b!1316528 (not res!591560)) b!1316534))

(assert (= (and b!1316534 (not res!591562)) b!1316529))

(assert (= (or b!1316536 b!1316537 b!1316528) bm!89458))

(assert (=> b!1316534 m!1468643))

(assert (=> b!1316534 m!1468643))

(assert (=> b!1316534 m!1468659))

(assert (=> b!1316535 m!1468661))

(assert (=> bm!89458 m!1468663))

(assert (=> b!1316524 m!1468661))

(assert (=> b!1316524 m!1468661))

(declare-fun m!1470371 () Bool)

(assert (=> b!1316524 m!1470371))

(assert (=> b!1316524 m!1468643))

(assert (=> b!1316524 m!1470371))

(assert (=> b!1316524 m!1468643))

(declare-fun m!1470373 () Bool)

(assert (=> b!1316524 m!1470373))

(assert (=> b!1316526 m!1468643))

(assert (=> b!1316526 m!1468643))

(assert (=> b!1316526 m!1468659))

(assert (=> d!371227 m!1468663))

(assert (=> d!371227 m!1469383))

(declare-fun m!1470375 () Bool)

(assert (=> b!1316531 m!1470375))

(assert (=> b!1316529 m!1468661))

(assert (=> b!1315851 d!371227))

(declare-fun d!371229 () Bool)

(assert (=> d!371229 (= (head!2273 lt!433574) (h!18742 lt!433574))))

(assert (=> b!1315346 d!371229))

(declare-fun b!1316538 () Bool)

(declare-fun e!843984 () tuple2!12960)

(assert (=> b!1316538 (= e!843984 (tuple2!12961 Nil!13343 (_2!7367 (v!21118 lt!433691))))))

(declare-fun b!1316539 () Bool)

(declare-fun e!843983 () Bool)

(declare-fun lt!434031 () tuple2!12960)

(assert (=> b!1316539 (= e!843983 (= (_2!7366 lt!434031) (_2!7367 (v!21118 lt!433691))))))

(declare-fun b!1316540 () Bool)

(declare-fun e!843982 () Bool)

(assert (=> b!1316540 (= e!843983 e!843982)))

(declare-fun res!591566 () Bool)

(assert (=> b!1316540 (= res!591566 (< (size!10858 (_2!7366 lt!434031)) (size!10858 (_2!7367 (v!21118 lt!433691)))))))

(assert (=> b!1316540 (=> (not res!591566) (not e!843982))))

(declare-fun b!1316541 () Bool)

(assert (=> b!1316541 (= e!843982 (not (isEmpty!7915 (_1!7366 lt!434031))))))

(declare-fun d!371231 () Bool)

(assert (=> d!371231 e!843983))

(declare-fun c!216043 () Bool)

(assert (=> d!371231 (= c!216043 (> (size!10859 (_1!7366 lt!434031)) 0))))

(assert (=> d!371231 (= lt!434031 e!843984)))

(declare-fun c!216042 () Bool)

(declare-fun lt!434033 () Option!2576)

(assert (=> d!371231 (= c!216042 ((_ is Some!2575) lt!434033))))

(assert (=> d!371231 (= lt!434033 (maxPrefix!1014 thiss!19762 rules!2550 (_2!7367 (v!21118 lt!433691))))))

(assert (=> d!371231 (= (lexList!542 thiss!19762 rules!2550 (_2!7367 (v!21118 lt!433691))) lt!434031)))

(declare-fun b!1316542 () Bool)

(declare-fun lt!434032 () tuple2!12960)

(assert (=> b!1316542 (= e!843984 (tuple2!12961 (Cons!13343 (_1!7367 (v!21118 lt!434033)) (_1!7366 lt!434032)) (_2!7366 lt!434032)))))

(assert (=> b!1316542 (= lt!434032 (lexList!542 thiss!19762 rules!2550 (_2!7367 (v!21118 lt!434033))))))

(assert (= (and d!371231 c!216042) b!1316542))

(assert (= (and d!371231 (not c!216042)) b!1316538))

(assert (= (and d!371231 c!216043) b!1316540))

(assert (= (and d!371231 (not c!216043)) b!1316539))

(assert (= (and b!1316540 res!591566) b!1316541))

(declare-fun m!1470377 () Bool)

(assert (=> b!1316540 m!1470377))

(declare-fun m!1470379 () Bool)

(assert (=> b!1316540 m!1470379))

(declare-fun m!1470381 () Bool)

(assert (=> b!1316541 m!1470381))

(declare-fun m!1470383 () Bool)

(assert (=> d!371231 m!1470383))

(declare-fun m!1470385 () Bool)

(assert (=> d!371231 m!1470385))

(declare-fun m!1470387 () Bool)

(assert (=> b!1316542 m!1470387))

(assert (=> b!1315401 d!371231))

(declare-fun d!371233 () Bool)

(assert (=> d!371233 (= (list!5022 (_1!7365 lt!433827)) (list!5027 (c!215722 (_1!7365 lt!433827))))))

(declare-fun bs!330453 () Bool)

(assert (= bs!330453 d!371233))

(declare-fun m!1470389 () Bool)

(assert (=> bs!330453 m!1470389))

(assert (=> b!1315799 d!371233))

(assert (=> b!1315799 d!370705))

(assert (=> b!1315799 d!370707))

(declare-fun d!371235 () Bool)

(assert (=> d!371235 (= (list!5023 lt!433789) (list!5026 (c!215720 lt!433789)))))

(declare-fun bs!330454 () Bool)

(assert (= bs!330454 d!371235))

(declare-fun m!1470391 () Bool)

(assert (=> bs!330454 m!1470391))

(assert (=> d!370723 d!371235))

(declare-fun d!371237 () Bool)

(assert (=> d!371237 (= (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820)))) (list!5026 (c!215720 (charsOf!1281 (_1!7367 (get!4256 lt!433820))))))))

(declare-fun bs!330455 () Bool)

(assert (= bs!330455 d!371237))

(declare-fun m!1470393 () Bool)

(assert (=> bs!330455 m!1470393))

(assert (=> b!1315778 d!371237))

(declare-fun d!371239 () Bool)

(declare-fun lt!434034 () BalanceConc!8716)

(assert (=> d!371239 (= (list!5023 lt!434034) (originalCharacters!3171 (_1!7367 (get!4256 lt!433820))))))

(assert (=> d!371239 (= lt!434034 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820))))) (value!75439 (_1!7367 (get!4256 lt!433820)))))))

(assert (=> d!371239 (= (charsOf!1281 (_1!7367 (get!4256 lt!433820))) lt!434034)))

(declare-fun b_lambda!38133 () Bool)

(assert (=> (not b_lambda!38133) (not d!371239)))

(declare-fun t!118374 () Bool)

(declare-fun tb!69945 () Bool)

(assert (=> (and b!1315098 (= (toChars!3391 (transformation!2309 (h!18743 rules!2550))) (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))))) t!118374) tb!69945))

(declare-fun b!1316543 () Bool)

(declare-fun e!843985 () Bool)

(declare-fun tp!382898 () Bool)

(assert (=> b!1316543 (= e!843985 (and (inv!17718 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820))))) (value!75439 (_1!7367 (get!4256 lt!433820)))))) tp!382898))))

(declare-fun result!84880 () Bool)

(assert (=> tb!69945 (= result!84880 (and (inv!17719 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820))))) (value!75439 (_1!7367 (get!4256 lt!433820))))) e!843985))))

(assert (= tb!69945 b!1316543))

(declare-fun m!1470395 () Bool)

(assert (=> b!1316543 m!1470395))

(declare-fun m!1470397 () Bool)

(assert (=> tb!69945 m!1470397))

(assert (=> d!371239 t!118374))

(declare-fun b_and!87979 () Bool)

(assert (= b_and!87971 (and (=> t!118374 result!84880) b_and!87979)))

(declare-fun tb!69947 () Bool)

(declare-fun t!118376 () Bool)

(assert (=> (and b!1315100 (= (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))))) t!118376) tb!69947))

(declare-fun result!84882 () Bool)

(assert (= result!84882 result!84880))

(assert (=> d!371239 t!118376))

(declare-fun b_and!87981 () Bool)

(assert (= b_and!87973 (and (=> t!118376 result!84882) b_and!87981)))

(declare-fun t!118378 () Bool)

(declare-fun tb!69949 () Bool)

(assert (=> (and b!1315065 (= (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))))) t!118378) tb!69949))

(declare-fun result!84884 () Bool)

(assert (= result!84884 result!84880))

(assert (=> d!371239 t!118378))

(declare-fun b_and!87983 () Bool)

(assert (= b_and!87975 (and (=> t!118378 result!84884) b_and!87983)))

(declare-fun t!118380 () Bool)

(declare-fun tb!69951 () Bool)

(assert (=> (and b!1315840 (= (toChars!3391 (transformation!2309 (h!18743 (t!118281 rules!2550)))) (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))))) t!118380) tb!69951))

(declare-fun result!84886 () Bool)

(assert (= result!84886 result!84880))

(assert (=> d!371239 t!118380))

(declare-fun b_and!87985 () Bool)

(assert (= b_and!87977 (and (=> t!118380 result!84886) b_and!87985)))

(declare-fun m!1470399 () Bool)

(assert (=> d!371239 m!1470399))

(declare-fun m!1470401 () Bool)

(assert (=> d!371239 m!1470401))

(assert (=> b!1315778 d!371239))

(assert (=> b!1315778 d!371219))

(declare-fun d!371241 () Bool)

(assert (=> d!371241 (= (isEmpty!7912 lt!433820) (not ((_ is Some!2575) lt!433820)))))

(assert (=> d!370781 d!371241))

(declare-fun b!1316553 () Bool)

(declare-fun res!591578 () Bool)

(declare-fun e!843993 () Bool)

(assert (=> b!1316553 (=> (not res!591578) (not e!843993))))

(assert (=> b!1316553 (= res!591578 (= (head!2273 lt!433577) (head!2273 lt!433577)))))

(declare-fun b!1316554 () Bool)

(assert (=> b!1316554 (= e!843993 (isPrefix!1073 (tail!1884 lt!433577) (tail!1884 lt!433577)))))

(declare-fun d!371243 () Bool)

(declare-fun e!843994 () Bool)

(assert (=> d!371243 e!843994))

(declare-fun res!591575 () Bool)

(assert (=> d!371243 (=> res!591575 e!843994)))

(declare-fun lt!434037 () Bool)

(assert (=> d!371243 (= res!591575 (not lt!434037))))

(declare-fun e!843992 () Bool)

(assert (=> d!371243 (= lt!434037 e!843992)))

(declare-fun res!591577 () Bool)

(assert (=> d!371243 (=> res!591577 e!843992)))

(assert (=> d!371243 (= res!591577 ((_ is Nil!13341) lt!433577))))

(assert (=> d!371243 (= (isPrefix!1073 lt!433577 lt!433577) lt!434037)))

(declare-fun b!1316555 () Bool)

(assert (=> b!1316555 (= e!843994 (>= (size!10858 lt!433577) (size!10858 lt!433577)))))

(declare-fun b!1316552 () Bool)

(assert (=> b!1316552 (= e!843992 e!843993)))

(declare-fun res!591576 () Bool)

(assert (=> b!1316552 (=> (not res!591576) (not e!843993))))

(assert (=> b!1316552 (= res!591576 (not ((_ is Nil!13341) lt!433577)))))

(assert (= (and d!371243 (not res!591577)) b!1316552))

(assert (= (and b!1316552 res!591576) b!1316553))

(assert (= (and b!1316553 res!591578) b!1316554))

(assert (= (and d!371243 (not res!591575)) b!1316555))

(declare-fun m!1470403 () Bool)

(assert (=> b!1316553 m!1470403))

(assert (=> b!1316553 m!1470403))

(declare-fun m!1470405 () Bool)

(assert (=> b!1316554 m!1470405))

(assert (=> b!1316554 m!1470405))

(assert (=> b!1316554 m!1470405))

(assert (=> b!1316554 m!1470405))

(declare-fun m!1470407 () Bool)

(assert (=> b!1316554 m!1470407))

(assert (=> b!1316555 m!1469113))

(assert (=> b!1316555 m!1469113))

(assert (=> d!370781 d!371243))

(declare-fun d!371245 () Bool)

(assert (=> d!371245 (isPrefix!1073 lt!433577 lt!433577)))

(declare-fun lt!434040 () Unit!19396)

(declare-fun choose!8054 (List!13407 List!13407) Unit!19396)

(assert (=> d!371245 (= lt!434040 (choose!8054 lt!433577 lt!433577))))

(assert (=> d!371245 (= (lemmaIsPrefixRefl!752 lt!433577 lt!433577) lt!434040)))

(declare-fun bs!330456 () Bool)

(assert (= bs!330456 d!371245))

(assert (=> bs!330456 m!1469287))

(declare-fun m!1470409 () Bool)

(assert (=> bs!330456 m!1470409))

(assert (=> d!370781 d!371245))

(declare-fun bs!330457 () Bool)

(declare-fun d!371247 () Bool)

(assert (= bs!330457 (and d!371247 b!1315070)))

(declare-fun lambda!53602 () Int)

(assert (=> bs!330457 (not (= lambda!53602 lambda!53528))))

(declare-fun bs!330458 () Bool)

(assert (= bs!330458 (and d!371247 b!1315067)))

(assert (=> bs!330458 (= lambda!53602 lambda!53529)))

(declare-fun bs!330459 () Bool)

(assert (= bs!330459 (and d!371247 d!370783)))

(assert (=> bs!330459 (not (= lambda!53602 lambda!53560))))

(declare-fun bs!330460 () Bool)

(assert (= bs!330460 (and d!371247 d!370785)))

(assert (=> bs!330460 (not (= lambda!53602 lambda!53563))))

(assert (=> d!371247 true))

(declare-fun lt!434053 () Bool)

(assert (=> d!371247 (= lt!434053 (forall!3293 rules!2550 lambda!53602))))

(declare-fun e!844007 () Bool)

(assert (=> d!371247 (= lt!434053 e!844007)))

(declare-fun res!591597 () Bool)

(assert (=> d!371247 (=> res!591597 e!844007)))

(assert (=> d!371247 (= res!591597 (not ((_ is Cons!13342) rules!2550)))))

(assert (=> d!371247 (= (rulesValidInductive!725 thiss!19762 rules!2550) lt!434053)))

(declare-fun b!1316578 () Bool)

(declare-fun e!844008 () Bool)

(assert (=> b!1316578 (= e!844007 e!844008)))

(declare-fun res!591598 () Bool)

(assert (=> b!1316578 (=> (not res!591598) (not e!844008))))

(assert (=> b!1316578 (= res!591598 (ruleValid!562 thiss!19762 (h!18743 rules!2550)))))

(declare-fun b!1316579 () Bool)

(assert (=> b!1316579 (= e!844008 (rulesValidInductive!725 thiss!19762 (t!118281 rules!2550)))))

(assert (= (and d!371247 (not res!591597)) b!1316578))

(assert (= (and b!1316578 res!591598) b!1316579))

(declare-fun m!1470411 () Bool)

(assert (=> d!371247 m!1470411))

(declare-fun m!1470413 () Bool)

(assert (=> b!1316578 m!1470413))

(declare-fun m!1470415 () Bool)

(assert (=> b!1316579 m!1470415))

(assert (=> d!370781 d!371247))

(declare-fun d!371249 () Bool)

(assert (=> d!371249 (= (list!5022 (_1!7365 lt!433796)) (list!5027 (c!215722 (_1!7365 lt!433796))))))

(declare-fun bs!330461 () Bool)

(assert (= bs!330461 d!371249))

(declare-fun m!1470417 () Bool)

(assert (=> bs!330461 m!1470417))

(assert (=> b!1315708 d!371249))

(assert (=> b!1315708 d!370585))

(assert (=> b!1315708 d!370593))

(assert (=> d!370805 d!370581))

(declare-fun bs!330462 () Bool)

(declare-fun d!371251 () Bool)

(assert (= bs!330462 (and d!371251 d!370803)))

(declare-fun lambda!53603 () Int)

(assert (=> bs!330462 (= (= lambda!53572 lambda!53527) (= lambda!53603 lambda!53566))))

(declare-fun bs!330463 () Bool)

(assert (= bs!330463 (and d!371251 d!370805)))

(assert (=> bs!330463 (not (= lambda!53603 lambda!53571))))

(declare-fun bs!330464 () Bool)

(assert (= bs!330464 (and d!371251 b!1315094)))

(assert (=> bs!330464 (not (= lambda!53603 lambda!53527))))

(assert (=> bs!330463 (not (= lambda!53603 lambda!53572))))

(declare-fun bs!330465 () Bool)

(assert (= bs!330465 (and d!371251 d!370807)))

(assert (=> bs!330465 (= (= lambda!53572 lambda!53527) (= lambda!53603 lambda!53573))))

(assert (=> d!371251 true))

(assert (=> d!371251 (< (dynLambda!5826 order!8029 lambda!53572) (dynLambda!5826 order!8029 lambda!53603))))

(assert (=> d!371251 (= (exists!321 lt!433564 lambda!53572) (not (forall!3294 lt!433564 lambda!53603)))))

(declare-fun bs!330466 () Bool)

(assert (= bs!330466 d!371251))

(declare-fun m!1470419 () Bool)

(assert (=> bs!330466 m!1470419))

(assert (=> d!370805 d!371251))

(declare-fun bs!330467 () Bool)

(declare-fun d!371253 () Bool)

(assert (= bs!330467 (and d!371253 d!370803)))

(declare-fun lambda!53606 () Int)

(assert (=> bs!330467 (not (= lambda!53606 lambda!53566))))

(declare-fun bs!330468 () Bool)

(assert (= bs!330468 (and d!371253 d!370805)))

(assert (=> bs!330468 (not (= lambda!53606 lambda!53571))))

(declare-fun bs!330469 () Bool)

(assert (= bs!330469 (and d!371253 d!371251)))

(assert (=> bs!330469 (not (= lambda!53606 lambda!53603))))

(declare-fun bs!330470 () Bool)

(assert (= bs!330470 (and d!371253 b!1315094)))

(assert (=> bs!330470 (= lambda!53606 lambda!53527)))

(assert (=> bs!330468 (= lambda!53606 lambda!53572)))

(declare-fun bs!330471 () Bool)

(assert (= bs!330471 (and d!371253 d!370807)))

(assert (=> bs!330471 (not (= lambda!53606 lambda!53573))))

(assert (=> d!371253 true))

(assert (=> d!371253 (= (matchR!1625 lt!433562 lt!433574) (exists!321 lt!433564 lambda!53606))))

(assert (=> d!371253 true))

(declare-fun _$85!104 () Unit!19396)

(assert (=> d!371253 (= (choose!8052 lt!433562 lt!433564 lt!433574) _$85!104)))

(declare-fun bs!330472 () Bool)

(assert (= bs!330472 d!371253))

(assert (=> bs!330472 m!1468309))

(declare-fun m!1470421 () Bool)

(assert (=> bs!330472 m!1470421))

(assert (=> d!370805 d!371253))

(declare-fun d!371255 () Bool)

(declare-fun res!591608 () Bool)

(declare-fun e!844015 () Bool)

(assert (=> d!371255 (=> res!591608 e!844015)))

(assert (=> d!371255 (= res!591608 ((_ is Nil!13344) lt!433564))))

(assert (=> d!371255 (= (forall!3294 lt!433564 lambda!53571) e!844015)))

(declare-fun b!1316591 () Bool)

(declare-fun e!844016 () Bool)

(assert (=> b!1316591 (= e!844015 e!844016)))

(declare-fun res!591609 () Bool)

(assert (=> b!1316591 (=> (not res!591609) (not e!844016))))

(assert (=> b!1316591 (= res!591609 (dynLambda!5818 lambda!53571 (h!18745 lt!433564)))))

(declare-fun b!1316592 () Bool)

(assert (=> b!1316592 (= e!844016 (forall!3294 (t!118283 lt!433564) lambda!53571))))

(assert (= (and d!371255 (not res!591608)) b!1316591))

(assert (= (and b!1316591 res!591609) b!1316592))

(declare-fun b_lambda!38135 () Bool)

(assert (=> (not b_lambda!38135) (not b!1316591)))

(declare-fun m!1470423 () Bool)

(assert (=> b!1316591 m!1470423))

(declare-fun m!1470425 () Bool)

(assert (=> b!1316592 m!1470425))

(assert (=> d!370805 d!371255))

(declare-fun d!371257 () Bool)

(assert (=> d!371257 (= (isEmpty!7914 (tail!1884 lt!433574)) ((_ is Nil!13341) (tail!1884 lt!433574)))))

(assert (=> b!1315351 d!371257))

(declare-fun d!371259 () Bool)

(assert (=> d!371259 (= (tail!1884 lt!433574) (t!118280 lt!433574))))

(assert (=> b!1315351 d!371259))

(declare-fun d!371261 () Bool)

(declare-fun c!216049 () Bool)

(assert (=> d!371261 (= c!216049 ((_ is Nil!13342) rules!2550))))

(declare-fun e!844019 () (InoxSet Rule!4418))

(assert (=> d!371261 (= (content!1877 rules!2550) e!844019)))

(declare-fun b!1316597 () Bool)

(assert (=> b!1316597 (= e!844019 ((as const (Array Rule!4418 Bool)) false))))

(declare-fun b!1316598 () Bool)

(assert (=> b!1316598 (= e!844019 ((_ map or) (store ((as const (Array Rule!4418 Bool)) false) (h!18743 rules!2550) true) (content!1877 (t!118281 rules!2550))))))

(assert (= (and d!371261 c!216049) b!1316597))

(assert (= (and d!371261 (not c!216049)) b!1316598))

(declare-fun m!1470445 () Bool)

(assert (=> b!1316598 m!1470445))

(assert (=> b!1316598 m!1470365))

(assert (=> d!370763 d!371261))

(assert (=> b!1315775 d!371219))

(declare-fun d!371263 () Bool)

(declare-fun dynLambda!5831 (Int BalanceConc!8716) TokenValue!2399)

(assert (=> d!371263 (= (apply!3031 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))) (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!433820))))) (dynLambda!5831 (toValue!3532 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820))))) (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!433820))))))))

(declare-fun b_lambda!38137 () Bool)

(assert (=> (not b_lambda!38137) (not d!371263)))

(declare-fun tb!69953 () Bool)

(declare-fun t!118382 () Bool)

(assert (=> (and b!1315098 (= (toValue!3532 (transformation!2309 (h!18743 rules!2550))) (toValue!3532 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))))) t!118382) tb!69953))

(declare-fun result!84888 () Bool)

(assert (=> tb!69953 (= result!84888 (inv!21 (dynLambda!5831 (toValue!3532 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820))))) (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!433820)))))))))

(declare-fun m!1470473 () Bool)

(assert (=> tb!69953 m!1470473))

(assert (=> d!371263 t!118382))

(declare-fun b_and!87987 () Bool)

(assert (= b_and!87871 (and (=> t!118382 result!84888) b_and!87987)))

(declare-fun tb!69955 () Bool)

(declare-fun t!118384 () Bool)

(assert (=> (and b!1315100 (= (toValue!3532 (transformation!2309 (rule!4050 t1!34))) (toValue!3532 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))))) t!118384) tb!69955))

(declare-fun result!84892 () Bool)

(assert (= result!84892 result!84888))

(assert (=> d!371263 t!118384))

(declare-fun b_and!87989 () Bool)

(assert (= b_and!87875 (and (=> t!118384 result!84892) b_and!87989)))

(declare-fun t!118386 () Bool)

(declare-fun tb!69957 () Bool)

(assert (=> (and b!1315065 (= (toValue!3532 (transformation!2309 (rule!4050 t2!34))) (toValue!3532 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))))) t!118386) tb!69957))

(declare-fun result!84894 () Bool)

(assert (= result!84894 result!84888))

(assert (=> d!371263 t!118386))

(declare-fun b_and!87991 () Bool)

(assert (= b_and!87879 (and (=> t!118386 result!84894) b_and!87991)))

(declare-fun t!118388 () Bool)

(declare-fun tb!69959 () Bool)

(assert (=> (and b!1315840 (= (toValue!3532 (transformation!2309 (h!18743 (t!118281 rules!2550)))) (toValue!3532 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))))) t!118388) tb!69959))

(declare-fun result!84896 () Bool)

(assert (= result!84896 result!84888))

(assert (=> d!371263 t!118388))

(declare-fun b_and!87993 () Bool)

(assert (= b_and!87935 (and (=> t!118388 result!84896) b_and!87993)))

(assert (=> d!371263 m!1469293))

(declare-fun m!1470479 () Bool)

(assert (=> d!371263 m!1470479))

(assert (=> b!1315775 d!371263))

(declare-fun d!371273 () Bool)

(declare-fun fromListB!705 (List!13407) BalanceConc!8716)

(assert (=> d!371273 (= (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!433820)))) (fromListB!705 (originalCharacters!3171 (_1!7367 (get!4256 lt!433820)))))))

(declare-fun bs!330476 () Bool)

(assert (= bs!330476 d!371273))

(declare-fun m!1470485 () Bool)

(assert (=> bs!330476 m!1470485))

(assert (=> b!1315775 d!371273))

(declare-fun d!371281 () Bool)

(declare-fun res!591620 () Bool)

(declare-fun e!844035 () Bool)

(assert (=> d!371281 (=> res!591620 e!844035)))

(assert (=> d!371281 (= res!591620 ((_ is ElementMatch!3623) (ite c!215847 (reg!3952 (regex!2309 (rule!4050 t1!34))) (ite c!215848 (regOne!7759 (regex!2309 (rule!4050 t1!34))) (regOne!7758 (regex!2309 (rule!4050 t1!34)))))))))

(assert (=> d!371281 (= (validRegex!1549 (ite c!215847 (reg!3952 (regex!2309 (rule!4050 t1!34))) (ite c!215848 (regOne!7759 (regex!2309 (rule!4050 t1!34))) (regOne!7758 (regex!2309 (rule!4050 t1!34)))))) e!844035)))

(declare-fun b!1316615 () Bool)

(declare-fun res!591619 () Bool)

(declare-fun e!844032 () Bool)

(assert (=> b!1316615 (=> res!591619 e!844032)))

(assert (=> b!1316615 (= res!591619 (not ((_ is Concat!6023) (ite c!215847 (reg!3952 (regex!2309 (rule!4050 t1!34))) (ite c!215848 (regOne!7759 (regex!2309 (rule!4050 t1!34))) (regOne!7758 (regex!2309 (rule!4050 t1!34))))))))))

(declare-fun e!844034 () Bool)

(assert (=> b!1316615 (= e!844034 e!844032)))

(declare-fun call!89465 () Bool)

(declare-fun bm!89460 () Bool)

(declare-fun c!216054 () Bool)

(assert (=> bm!89460 (= call!89465 (validRegex!1549 (ite c!216054 (regTwo!7759 (ite c!215847 (reg!3952 (regex!2309 (rule!4050 t1!34))) (ite c!215848 (regOne!7759 (regex!2309 (rule!4050 t1!34))) (regOne!7758 (regex!2309 (rule!4050 t1!34)))))) (regTwo!7758 (ite c!215847 (reg!3952 (regex!2309 (rule!4050 t1!34))) (ite c!215848 (regOne!7759 (regex!2309 (rule!4050 t1!34))) (regOne!7758 (regex!2309 (rule!4050 t1!34)))))))))))

(declare-fun bm!89461 () Bool)

(declare-fun call!89466 () Bool)

(declare-fun call!89467 () Bool)

(assert (=> bm!89461 (= call!89466 call!89467)))

(declare-fun b!1316616 () Bool)

(declare-fun e!844031 () Bool)

(assert (=> b!1316616 (= e!844031 call!89467)))

(declare-fun b!1316617 () Bool)

(declare-fun e!844033 () Bool)

(assert (=> b!1316617 (= e!844035 e!844033)))

(declare-fun c!216053 () Bool)

(assert (=> b!1316617 (= c!216053 ((_ is Star!3623) (ite c!215847 (reg!3952 (regex!2309 (rule!4050 t1!34))) (ite c!215848 (regOne!7759 (regex!2309 (rule!4050 t1!34))) (regOne!7758 (regex!2309 (rule!4050 t1!34)))))))))

(declare-fun b!1316618 () Bool)

(assert (=> b!1316618 (= e!844033 e!844031)))

(declare-fun res!591621 () Bool)

(assert (=> b!1316618 (= res!591621 (not (nullable!1147 (reg!3952 (ite c!215847 (reg!3952 (regex!2309 (rule!4050 t1!34))) (ite c!215848 (regOne!7759 (regex!2309 (rule!4050 t1!34))) (regOne!7758 (regex!2309 (rule!4050 t1!34)))))))))))

(assert (=> b!1316618 (=> (not res!591621) (not e!844031))))

(declare-fun bm!89462 () Bool)

(assert (=> bm!89462 (= call!89467 (validRegex!1549 (ite c!216053 (reg!3952 (ite c!215847 (reg!3952 (regex!2309 (rule!4050 t1!34))) (ite c!215848 (regOne!7759 (regex!2309 (rule!4050 t1!34))) (regOne!7758 (regex!2309 (rule!4050 t1!34)))))) (ite c!216054 (regOne!7759 (ite c!215847 (reg!3952 (regex!2309 (rule!4050 t1!34))) (ite c!215848 (regOne!7759 (regex!2309 (rule!4050 t1!34))) (regOne!7758 (regex!2309 (rule!4050 t1!34)))))) (regOne!7758 (ite c!215847 (reg!3952 (regex!2309 (rule!4050 t1!34))) (ite c!215848 (regOne!7759 (regex!2309 (rule!4050 t1!34))) (regOne!7758 (regex!2309 (rule!4050 t1!34))))))))))))

(declare-fun b!1316619 () Bool)

(declare-fun e!844029 () Bool)

(assert (=> b!1316619 (= e!844032 e!844029)))

(declare-fun res!591622 () Bool)

(assert (=> b!1316619 (=> (not res!591622) (not e!844029))))

(assert (=> b!1316619 (= res!591622 call!89466)))

(declare-fun b!1316620 () Bool)

(declare-fun e!844030 () Bool)

(assert (=> b!1316620 (= e!844030 call!89465)))

(declare-fun b!1316621 () Bool)

(declare-fun res!591618 () Bool)

(assert (=> b!1316621 (=> (not res!591618) (not e!844030))))

(assert (=> b!1316621 (= res!591618 call!89466)))

(assert (=> b!1316621 (= e!844034 e!844030)))

(declare-fun b!1316622 () Bool)

(assert (=> b!1316622 (= e!844029 call!89465)))

(declare-fun b!1316623 () Bool)

(assert (=> b!1316623 (= e!844033 e!844034)))

(assert (=> b!1316623 (= c!216054 ((_ is Union!3623) (ite c!215847 (reg!3952 (regex!2309 (rule!4050 t1!34))) (ite c!215848 (regOne!7759 (regex!2309 (rule!4050 t1!34))) (regOne!7758 (regex!2309 (rule!4050 t1!34)))))))))

(assert (= (and d!371281 (not res!591620)) b!1316617))

(assert (= (and b!1316617 c!216053) b!1316618))

(assert (= (and b!1316617 (not c!216053)) b!1316623))

(assert (= (and b!1316618 res!591621) b!1316616))

(assert (= (and b!1316623 c!216054) b!1316621))

(assert (= (and b!1316623 (not c!216054)) b!1316615))

(assert (= (and b!1316621 res!591618) b!1316620))

(assert (= (and b!1316615 (not res!591619)) b!1316619))

(assert (= (and b!1316619 res!591622) b!1316622))

(assert (= (or b!1316621 b!1316619) bm!89461))

(assert (= (or b!1316620 b!1316622) bm!89460))

(assert (= (or b!1316616 bm!89461) bm!89462))

(declare-fun m!1470495 () Bool)

(assert (=> bm!89460 m!1470495))

(declare-fun m!1470497 () Bool)

(assert (=> b!1316618 m!1470497))

(declare-fun m!1470499 () Bool)

(assert (=> bm!89462 m!1470499))

(assert (=> bm!89409 d!371281))

(declare-fun d!371283 () Bool)

(declare-fun lt!434064 () List!13407)

(assert (=> d!371283 (= (++!3398 (t!118280 lt!433563) lt!434064) (tail!1884 lt!433574))))

(declare-fun e!844036 () List!13407)

(assert (=> d!371283 (= lt!434064 e!844036)))

(declare-fun c!216055 () Bool)

(assert (=> d!371283 (= c!216055 ((_ is Cons!13341) (t!118280 lt!433563)))))

(assert (=> d!371283 (>= (size!10858 (tail!1884 lt!433574)) (size!10858 (t!118280 lt!433563)))))

(assert (=> d!371283 (= (getSuffix!479 (tail!1884 lt!433574) (t!118280 lt!433563)) lt!434064)))

(declare-fun b!1316624 () Bool)

(assert (=> b!1316624 (= e!844036 (getSuffix!479 (tail!1884 (tail!1884 lt!433574)) (t!118280 (t!118280 lt!433563))))))

(declare-fun b!1316625 () Bool)

(assert (=> b!1316625 (= e!844036 (tail!1884 lt!433574))))

(assert (= (and d!371283 c!216055) b!1316624))

(assert (= (and d!371283 (not c!216055)) b!1316625))

(declare-fun m!1470509 () Bool)

(assert (=> d!371283 m!1470509))

(assert (=> d!371283 m!1468643))

(declare-fun m!1470511 () Bool)

(assert (=> d!371283 m!1470511))

(assert (=> d!371283 m!1470307))

(assert (=> b!1316624 m!1468643))

(declare-fun m!1470515 () Bool)

(assert (=> b!1316624 m!1470515))

(assert (=> b!1316624 m!1470515))

(declare-fun m!1470519 () Bool)

(assert (=> b!1316624 m!1470519))

(assert (=> b!1315306 d!371283))

(assert (=> b!1315306 d!371259))

(declare-fun d!371285 () Bool)

(declare-fun lt!434065 () Bool)

(assert (=> d!371285 (= lt!434065 (select (content!1874 (t!118280 lt!433574)) lt!433561))))

(declare-fun e!844037 () Bool)

(assert (=> d!371285 (= lt!434065 e!844037)))

(declare-fun res!591624 () Bool)

(assert (=> d!371285 (=> (not res!591624) (not e!844037))))

(assert (=> d!371285 (= res!591624 ((_ is Cons!13341) (t!118280 lt!433574)))))

(assert (=> d!371285 (= (contains!2340 (t!118280 lt!433574) lt!433561) lt!434065)))

(declare-fun b!1316626 () Bool)

(declare-fun e!844038 () Bool)

(assert (=> b!1316626 (= e!844037 e!844038)))

(declare-fun res!591623 () Bool)

(assert (=> b!1316626 (=> res!591623 e!844038)))

(assert (=> b!1316626 (= res!591623 (= (h!18742 (t!118280 lt!433574)) lt!433561))))

(declare-fun b!1316627 () Bool)

(assert (=> b!1316627 (= e!844038 (contains!2340 (t!118280 (t!118280 lt!433574)) lt!433561))))

(assert (= (and d!371285 res!591624) b!1316626))

(assert (= (and b!1316626 (not res!591623)) b!1316627))

(declare-fun m!1470527 () Bool)

(assert (=> d!371285 m!1470527))

(declare-fun m!1470529 () Bool)

(assert (=> d!371285 m!1470529))

(declare-fun m!1470531 () Bool)

(assert (=> b!1316627 m!1470531))

(assert (=> b!1315774 d!371285))

(declare-fun lt!434066 () Bool)

(declare-fun d!371289 () Bool)

(assert (=> d!371289 (= lt!434066 (isEmpty!7914 (list!5023 (_2!7365 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t1!34)))))))))

(assert (=> d!371289 (= lt!434066 (isEmpty!7916 (c!215720 (_2!7365 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t1!34)))))))))

(assert (=> d!371289 (= (isEmpty!7906 (_2!7365 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t1!34))))) lt!434066)))

(declare-fun bs!330478 () Bool)

(assert (= bs!330478 d!371289))

(declare-fun m!1470535 () Bool)

(assert (=> bs!330478 m!1470535))

(assert (=> bs!330478 m!1470535))

(declare-fun m!1470537 () Bool)

(assert (=> bs!330478 m!1470537))

(declare-fun m!1470539 () Bool)

(assert (=> bs!330478 m!1470539))

(assert (=> b!1315537 d!371289))

(assert (=> b!1315537 d!371139))

(assert (=> b!1315537 d!370755))

(assert (=> b!1315537 d!370759))

(declare-fun d!371293 () Bool)

(assert (=> d!371293 (= (isDefined!2176 lt!433652) (not (isEmpty!7912 lt!433652)))))

(declare-fun bs!330479 () Bool)

(assert (= bs!330479 d!371293))

(assert (=> bs!330479 m!1468597))

(assert (=> b!1315280 d!371293))

(declare-fun d!371297 () Bool)

(declare-fun lt!434071 () Int)

(assert (=> d!371297 (>= lt!434071 0)))

(declare-fun e!844049 () Int)

(assert (=> d!371297 (= lt!434071 e!844049)))

(declare-fun c!216062 () Bool)

(assert (=> d!371297 (= c!216062 ((_ is Nil!13343) (_1!7366 lt!433781)))))

(assert (=> d!371297 (= (size!10859 (_1!7366 lt!433781)) lt!434071)))

(declare-fun b!1316648 () Bool)

(assert (=> b!1316648 (= e!844049 0)))

(declare-fun b!1316649 () Bool)

(assert (=> b!1316649 (= e!844049 (+ 1 (size!10859 (t!118282 (_1!7366 lt!433781)))))))

(assert (= (and d!371297 c!216062) b!1316648))

(assert (= (and d!371297 (not c!216062)) b!1316649))

(declare-fun m!1470563 () Bool)

(assert (=> b!1316649 m!1470563))

(assert (=> d!370705 d!371297))

(declare-fun b!1316650 () Bool)

(declare-fun res!591635 () Bool)

(declare-fun e!844052 () Bool)

(assert (=> b!1316650 (=> (not res!591635) (not e!844052))))

(declare-fun lt!434075 () Option!2576)

(assert (=> b!1316650 (= res!591635 (= (value!75439 (_1!7367 (get!4256 lt!434075))) (apply!3031 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!434075)))) (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!434075)))))))))

(declare-fun b!1316651 () Bool)

(declare-fun e!844051 () Option!2576)

(declare-fun lt!434074 () Option!2576)

(declare-fun lt!434076 () Option!2576)

(assert (=> b!1316651 (= e!844051 (ite (and ((_ is None!2575) lt!434074) ((_ is None!2575) lt!434076)) None!2575 (ite ((_ is None!2575) lt!434076) lt!434074 (ite ((_ is None!2575) lt!434074) lt!434076 (ite (>= (size!10848 (_1!7367 (v!21118 lt!434074))) (size!10848 (_1!7367 (v!21118 lt!434076)))) lt!434074 lt!434076)))))))

(declare-fun call!89469 () Option!2576)

(assert (=> b!1316651 (= lt!434074 call!89469)))

(assert (=> b!1316651 (= lt!434076 (maxPrefix!1014 thiss!19762 (t!118281 rules!2550) (list!5023 lt!433572)))))

(declare-fun b!1316652 () Bool)

(declare-fun res!591634 () Bool)

(assert (=> b!1316652 (=> (not res!591634) (not e!844052))))

(assert (=> b!1316652 (= res!591634 (< (size!10858 (_2!7367 (get!4256 lt!434075))) (size!10858 (list!5023 lt!433572))))))

(declare-fun b!1316653 () Bool)

(declare-fun res!591637 () Bool)

(assert (=> b!1316653 (=> (not res!591637) (not e!844052))))

(assert (=> b!1316653 (= res!591637 (= (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434075)))) (originalCharacters!3171 (_1!7367 (get!4256 lt!434075)))))))

(declare-fun b!1316654 () Bool)

(assert (=> b!1316654 (= e!844051 call!89469)))

(declare-fun d!371301 () Bool)

(declare-fun e!844050 () Bool)

(assert (=> d!371301 e!844050))

(declare-fun res!591638 () Bool)

(assert (=> d!371301 (=> res!591638 e!844050)))

(assert (=> d!371301 (= res!591638 (isEmpty!7912 lt!434075))))

(assert (=> d!371301 (= lt!434075 e!844051)))

(declare-fun c!216063 () Bool)

(assert (=> d!371301 (= c!216063 (and ((_ is Cons!13342) rules!2550) ((_ is Nil!13342) (t!118281 rules!2550))))))

(declare-fun lt!434072 () Unit!19396)

(declare-fun lt!434073 () Unit!19396)

(assert (=> d!371301 (= lt!434072 lt!434073)))

(assert (=> d!371301 (isPrefix!1073 (list!5023 lt!433572) (list!5023 lt!433572))))

(assert (=> d!371301 (= lt!434073 (lemmaIsPrefixRefl!752 (list!5023 lt!433572) (list!5023 lt!433572)))))

(assert (=> d!371301 (rulesValidInductive!725 thiss!19762 rules!2550)))

(assert (=> d!371301 (= (maxPrefix!1014 thiss!19762 rules!2550 (list!5023 lt!433572)) lt!434075)))

(declare-fun b!1316655 () Bool)

(declare-fun res!591639 () Bool)

(assert (=> b!1316655 (=> (not res!591639) (not e!844052))))

(assert (=> b!1316655 (= res!591639 (= (++!3398 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434075)))) (_2!7367 (get!4256 lt!434075))) (list!5023 lt!433572)))))

(declare-fun b!1316656 () Bool)

(declare-fun res!591633 () Bool)

(assert (=> b!1316656 (=> (not res!591633) (not e!844052))))

(assert (=> b!1316656 (= res!591633 (matchR!1625 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!434075)))) (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434075))))))))

(declare-fun b!1316657 () Bool)

(assert (=> b!1316657 (= e!844052 (contains!2339 rules!2550 (rule!4050 (_1!7367 (get!4256 lt!434075)))))))

(declare-fun b!1316658 () Bool)

(assert (=> b!1316658 (= e!844050 e!844052)))

(declare-fun res!591636 () Bool)

(assert (=> b!1316658 (=> (not res!591636) (not e!844052))))

(assert (=> b!1316658 (= res!591636 (isDefined!2176 lt!434075))))

(declare-fun bm!89464 () Bool)

(assert (=> bm!89464 (= call!89469 (maxPrefixOneRule!578 thiss!19762 (h!18743 rules!2550) (list!5023 lt!433572)))))

(assert (= (and d!371301 c!216063) b!1316654))

(assert (= (and d!371301 (not c!216063)) b!1316651))

(assert (= (or b!1316654 b!1316651) bm!89464))

(assert (= (and d!371301 (not res!591638)) b!1316658))

(assert (= (and b!1316658 res!591636) b!1316653))

(assert (= (and b!1316653 res!591637) b!1316652))

(assert (= (and b!1316652 res!591634) b!1316655))

(assert (= (and b!1316655 res!591639) b!1316650))

(assert (= (and b!1316650 res!591635) b!1316656))

(assert (= (and b!1316656 res!591633) b!1316657))

(declare-fun m!1470567 () Bool)

(assert (=> b!1316652 m!1470567))

(declare-fun m!1470569 () Bool)

(assert (=> b!1316652 m!1470569))

(assert (=> b!1316652 m!1468305))

(assert (=> b!1316652 m!1469087))

(assert (=> b!1316657 m!1470567))

(declare-fun m!1470571 () Bool)

(assert (=> b!1316657 m!1470571))

(assert (=> b!1316651 m!1468305))

(declare-fun m!1470573 () Bool)

(assert (=> b!1316651 m!1470573))

(assert (=> b!1316656 m!1470567))

(declare-fun m!1470575 () Bool)

(assert (=> b!1316656 m!1470575))

(assert (=> b!1316656 m!1470575))

(declare-fun m!1470577 () Bool)

(assert (=> b!1316656 m!1470577))

(assert (=> b!1316656 m!1470577))

(declare-fun m!1470579 () Bool)

(assert (=> b!1316656 m!1470579))

(assert (=> bm!89464 m!1468305))

(declare-fun m!1470581 () Bool)

(assert (=> bm!89464 m!1470581))

(declare-fun m!1470583 () Bool)

(assert (=> d!371301 m!1470583))

(assert (=> d!371301 m!1468305))

(assert (=> d!371301 m!1468305))

(declare-fun m!1470585 () Bool)

(assert (=> d!371301 m!1470585))

(assert (=> d!371301 m!1468305))

(assert (=> d!371301 m!1468305))

(declare-fun m!1470587 () Bool)

(assert (=> d!371301 m!1470587))

(assert (=> d!371301 m!1468603))

(assert (=> b!1316653 m!1470567))

(assert (=> b!1316653 m!1470575))

(assert (=> b!1316653 m!1470575))

(assert (=> b!1316653 m!1470577))

(assert (=> b!1316655 m!1470567))

(assert (=> b!1316655 m!1470575))

(assert (=> b!1316655 m!1470575))

(assert (=> b!1316655 m!1470577))

(assert (=> b!1316655 m!1470577))

(declare-fun m!1470589 () Bool)

(assert (=> b!1316655 m!1470589))

(assert (=> b!1316650 m!1470567))

(declare-fun m!1470591 () Bool)

(assert (=> b!1316650 m!1470591))

(assert (=> b!1316650 m!1470591))

(declare-fun m!1470593 () Bool)

(assert (=> b!1316650 m!1470593))

(declare-fun m!1470595 () Bool)

(assert (=> b!1316658 m!1470595))

(assert (=> d!370705 d!371301))

(declare-fun d!371305 () Bool)

(declare-fun lt!434079 () Token!4280)

(assert (=> d!371305 (= lt!434079 (apply!3037 (list!5022 (_1!7365 lt!433825)) 0))))

(declare-fun apply!3040 (Conc!4389 Int) Token!4280)

(assert (=> d!371305 (= lt!434079 (apply!3040 (c!215722 (_1!7365 lt!433825)) 0))))

(declare-fun e!844059 () Bool)

(assert (=> d!371305 e!844059))

(declare-fun res!591646 () Bool)

(assert (=> d!371305 (=> (not res!591646) (not e!844059))))

(assert (=> d!371305 (= res!591646 (<= 0 0))))

(assert (=> d!371305 (= (apply!3035 (_1!7365 lt!433825) 0) lt!434079)))

(declare-fun b!1316665 () Bool)

(assert (=> b!1316665 (= e!844059 (< 0 (size!10860 (_1!7365 lt!433825))))))

(assert (= (and d!371305 res!591646) b!1316665))

(declare-fun m!1470607 () Bool)

(assert (=> d!371305 m!1470607))

(assert (=> d!371305 m!1470607))

(declare-fun m!1470609 () Bool)

(assert (=> d!371305 m!1470609))

(declare-fun m!1470611 () Bool)

(assert (=> d!371305 m!1470611))

(assert (=> b!1316665 m!1469315))

(assert (=> b!1315796 d!371305))

(declare-fun d!371317 () Bool)

(assert (=> d!371317 (= (head!2276 rules!2550) (h!18743 rules!2550))))

(assert (=> b!1315729 d!371317))

(declare-fun d!371319 () Bool)

(declare-fun c!216071 () Bool)

(assert (=> d!371319 (= c!216071 ((_ is Empty!4389) (c!215722 (_1!7365 lt!433568))))))

(declare-fun e!844078 () List!13409)

(assert (=> d!371319 (= (list!5027 (c!215722 (_1!7365 lt!433568))) e!844078)))

(declare-fun b!1316699 () Bool)

(declare-fun e!844079 () List!13409)

(declare-fun ++!3401 (List!13409 List!13409) List!13409)

(assert (=> b!1316699 (= e!844079 (++!3401 (list!5027 (left!11469 (c!215722 (_1!7365 lt!433568)))) (list!5027 (right!11799 (c!215722 (_1!7365 lt!433568))))))))

(declare-fun b!1316697 () Bool)

(assert (=> b!1316697 (= e!844078 e!844079)))

(declare-fun c!216072 () Bool)

(assert (=> b!1316697 (= c!216072 ((_ is Leaf!6740) (c!215722 (_1!7365 lt!433568))))))

(declare-fun b!1316698 () Bool)

(declare-fun list!5031 (IArray!8783) List!13409)

(assert (=> b!1316698 (= e!844079 (list!5031 (xs!7104 (c!215722 (_1!7365 lt!433568)))))))

(declare-fun b!1316696 () Bool)

(assert (=> b!1316696 (= e!844078 Nil!13343)))

(assert (= (and d!371319 c!216071) b!1316696))

(assert (= (and d!371319 (not c!216071)) b!1316697))

(assert (= (and b!1316697 c!216072) b!1316698))

(assert (= (and b!1316697 (not c!216072)) b!1316699))

(declare-fun m!1470629 () Bool)

(assert (=> b!1316699 m!1470629))

(declare-fun m!1470633 () Bool)

(assert (=> b!1316699 m!1470633))

(assert (=> b!1316699 m!1470629))

(assert (=> b!1316699 m!1470633))

(declare-fun m!1470635 () Bool)

(assert (=> b!1316699 m!1470635))

(declare-fun m!1470639 () Bool)

(assert (=> b!1316698 m!1470639))

(assert (=> d!370761 d!371319))

(declare-fun d!371325 () Bool)

(assert (=> d!371325 (= (Exists!781 lambda!53554) (choose!8048 lambda!53554))))

(declare-fun bs!330498 () Bool)

(assert (= bs!330498 d!371325))

(declare-fun m!1470643 () Bool)

(assert (=> bs!330498 m!1470643))

(assert (=> d!370691 d!371325))

(declare-fun bs!330504 () Bool)

(declare-fun d!371327 () Bool)

(assert (= bs!330504 (and d!371327 b!1315084)))

(declare-fun lambda!53613 () Int)

(assert (=> bs!330504 (= lambda!53613 lambda!53525)))

(declare-fun bs!330505 () Bool)

(assert (= bs!330505 (and d!371327 d!370691)))

(assert (=> bs!330505 (= lambda!53613 lambda!53554)))

(assert (=> d!371327 true))

(assert (=> d!371327 true))

(assert (=> d!371327 (Exists!781 lambda!53613)))

(assert (=> d!371327 true))

(declare-fun _$103!77 () Unit!19396)

(assert (=> d!371327 (= (choose!8049 lt!433562 lt!433563) _$103!77)))

(declare-fun bs!330506 () Bool)

(assert (= bs!330506 d!371327))

(declare-fun m!1470683 () Bool)

(assert (=> bs!330506 m!1470683))

(assert (=> d!370691 d!371327))

(assert (=> d!370691 d!371159))

(declare-fun b!1316713 () Bool)

(declare-fun e!844091 () Bool)

(declare-fun lt!434088 () Rule!4418)

(assert (=> b!1316713 (= e!844091 (contains!2339 (t!118281 rules!2550) lt!434088))))

(declare-fun b!1316714 () Bool)

(declare-fun e!844089 () Rule!4418)

(declare-fun e!844092 () Rule!4418)

(assert (=> b!1316714 (= e!844089 e!844092)))

(declare-fun c!216073 () Bool)

(assert (=> b!1316714 (= c!216073 ((_ is Cons!13342) (t!118281 rules!2550)))))

(declare-fun d!371351 () Bool)

(assert (=> d!371351 e!844091))

(declare-fun res!591676 () Bool)

(assert (=> d!371351 (=> (not res!591676) (not e!844091))))

(assert (=> d!371351 (= res!591676 (dynLambda!5823 lambda!53528 lt!434088))))

(assert (=> d!371351 (= lt!434088 e!844089)))

(declare-fun c!216074 () Bool)

(declare-fun e!844090 () Bool)

(assert (=> d!371351 (= c!216074 e!844090)))

(declare-fun res!591677 () Bool)

(assert (=> d!371351 (=> (not res!591677) (not e!844090))))

(assert (=> d!371351 (= res!591677 ((_ is Cons!13342) (t!118281 rules!2550)))))

(assert (=> d!371351 (exists!320 (t!118281 rules!2550) lambda!53528)))

(assert (=> d!371351 (= (getWitness!212 (t!118281 rules!2550) lambda!53528) lt!434088)))

(declare-fun b!1316715 () Bool)

(assert (=> b!1316715 (= e!844090 (dynLambda!5823 lambda!53528 (h!18743 (t!118281 rules!2550))))))

(declare-fun b!1316716 () Bool)

(assert (=> b!1316716 (= e!844092 (getWitness!212 (t!118281 (t!118281 rules!2550)) lambda!53528))))

(declare-fun b!1316717 () Bool)

(declare-fun lt!434087 () Unit!19396)

(declare-fun Unit!19405 () Unit!19396)

(assert (=> b!1316717 (= lt!434087 Unit!19405)))

(assert (=> b!1316717 false))

(assert (=> b!1316717 (= e!844092 (head!2276 (t!118281 rules!2550)))))

(declare-fun b!1316718 () Bool)

(assert (=> b!1316718 (= e!844089 (h!18743 (t!118281 rules!2550)))))

(assert (= (and d!371351 res!591677) b!1316715))

(assert (= (and d!371351 c!216074) b!1316718))

(assert (= (and d!371351 (not c!216074)) b!1316714))

(assert (= (and b!1316714 c!216073) b!1316716))

(assert (= (and b!1316714 (not c!216073)) b!1316717))

(assert (= (and d!371351 res!591676) b!1316713))

(declare-fun b_lambda!38145 () Bool)

(assert (=> (not b_lambda!38145) (not d!371351)))

(declare-fun b_lambda!38147 () Bool)

(assert (=> (not b_lambda!38147) (not b!1316715)))

(declare-fun m!1470691 () Bool)

(assert (=> b!1316713 m!1470691))

(declare-fun m!1470693 () Bool)

(assert (=> d!371351 m!1470693))

(declare-fun m!1470695 () Bool)

(assert (=> d!371351 m!1470695))

(declare-fun m!1470697 () Bool)

(assert (=> b!1316716 m!1470697))

(declare-fun m!1470699 () Bool)

(assert (=> b!1316717 m!1470699))

(declare-fun m!1470701 () Bool)

(assert (=> b!1316715 m!1470701))

(assert (=> b!1315728 d!371351))

(declare-fun d!371355 () Bool)

(declare-fun res!591682 () Bool)

(declare-fun e!844101 () Bool)

(assert (=> d!371355 (=> res!591682 e!844101)))

(assert (=> d!371355 (= res!591682 ((_ is ElementMatch!3623) lt!433627))))

(assert (=> d!371355 (= (validRegex!1549 lt!433627) e!844101)))

(declare-fun b!1316721 () Bool)

(declare-fun res!591681 () Bool)

(declare-fun e!844098 () Bool)

(assert (=> b!1316721 (=> res!591681 e!844098)))

(assert (=> b!1316721 (= res!591681 (not ((_ is Concat!6023) lt!433627)))))

(declare-fun e!844100 () Bool)

(assert (=> b!1316721 (= e!844100 e!844098)))

(declare-fun bm!89466 () Bool)

(declare-fun call!89471 () Bool)

(declare-fun c!216076 () Bool)

(assert (=> bm!89466 (= call!89471 (validRegex!1549 (ite c!216076 (regTwo!7759 lt!433627) (regTwo!7758 lt!433627))))))

(declare-fun bm!89467 () Bool)

(declare-fun call!89472 () Bool)

(declare-fun call!89473 () Bool)

(assert (=> bm!89467 (= call!89472 call!89473)))

(declare-fun b!1316722 () Bool)

(declare-fun e!844097 () Bool)

(assert (=> b!1316722 (= e!844097 call!89473)))

(declare-fun b!1316723 () Bool)

(declare-fun e!844099 () Bool)

(assert (=> b!1316723 (= e!844101 e!844099)))

(declare-fun c!216075 () Bool)

(assert (=> b!1316723 (= c!216075 ((_ is Star!3623) lt!433627))))

(declare-fun b!1316724 () Bool)

(assert (=> b!1316724 (= e!844099 e!844097)))

(declare-fun res!591683 () Bool)

(assert (=> b!1316724 (= res!591683 (not (nullable!1147 (reg!3952 lt!433627))))))

(assert (=> b!1316724 (=> (not res!591683) (not e!844097))))

(declare-fun bm!89468 () Bool)

(assert (=> bm!89468 (= call!89473 (validRegex!1549 (ite c!216075 (reg!3952 lt!433627) (ite c!216076 (regOne!7759 lt!433627) (regOne!7758 lt!433627)))))))

(declare-fun b!1316725 () Bool)

(declare-fun e!844095 () Bool)

(assert (=> b!1316725 (= e!844098 e!844095)))

(declare-fun res!591684 () Bool)

(assert (=> b!1316725 (=> (not res!591684) (not e!844095))))

(assert (=> b!1316725 (= res!591684 call!89472)))

(declare-fun b!1316726 () Bool)

(declare-fun e!844096 () Bool)

(assert (=> b!1316726 (= e!844096 call!89471)))

(declare-fun b!1316727 () Bool)

(declare-fun res!591680 () Bool)

(assert (=> b!1316727 (=> (not res!591680) (not e!844096))))

(assert (=> b!1316727 (= res!591680 call!89472)))

(assert (=> b!1316727 (= e!844100 e!844096)))

(declare-fun b!1316728 () Bool)

(assert (=> b!1316728 (= e!844095 call!89471)))

(declare-fun b!1316729 () Bool)

(assert (=> b!1316729 (= e!844099 e!844100)))

(assert (=> b!1316729 (= c!216076 ((_ is Union!3623) lt!433627))))

(assert (= (and d!371355 (not res!591682)) b!1316723))

(assert (= (and b!1316723 c!216075) b!1316724))

(assert (= (and b!1316723 (not c!216075)) b!1316729))

(assert (= (and b!1316724 res!591683) b!1316722))

(assert (= (and b!1316729 c!216076) b!1316727))

(assert (= (and b!1316729 (not c!216076)) b!1316721))

(assert (= (and b!1316727 res!591680) b!1316726))

(assert (= (and b!1316721 (not res!591681)) b!1316725))

(assert (= (and b!1316725 res!591684) b!1316728))

(assert (= (or b!1316727 b!1316725) bm!89467))

(assert (= (or b!1316726 b!1316728) bm!89466))

(assert (= (or b!1316722 bm!89467) bm!89468))

(declare-fun m!1470703 () Bool)

(assert (=> bm!89466 m!1470703))

(declare-fun m!1470705 () Bool)

(assert (=> b!1316724 m!1470705))

(declare-fun m!1470709 () Bool)

(assert (=> bm!89468 m!1470709))

(assert (=> bs!330357 d!371355))

(declare-fun d!371359 () Bool)

(declare-fun charsToBigInt!1 (List!13406) Int)

(assert (=> d!371359 (= (inv!17 (value!75439 t1!34)) (= (charsToBigInt!1 (text!17241 (value!75439 t1!34))) (value!75431 (value!75439 t1!34))))))

(declare-fun bs!330507 () Bool)

(assert (= bs!330507 d!371359))

(declare-fun m!1470717 () Bool)

(assert (=> bs!330507 m!1470717))

(assert (=> b!1315580 d!371359))

(declare-fun d!371363 () Bool)

(assert (=> d!371363 (= (list!5023 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34))) (list!5026 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34)))))))

(declare-fun bs!330509 () Bool)

(assert (= bs!330509 d!371363))

(declare-fun m!1470721 () Bool)

(assert (=> bs!330509 m!1470721))

(assert (=> b!1315593 d!371363))

(assert (=> b!1315637 d!370663))

(declare-fun d!371367 () Bool)

(assert (=> d!371367 (= (inv!17711 (tag!2571 (h!18743 (t!118281 rules!2550)))) (= (mod (str.len (value!75438 (tag!2571 (h!18743 (t!118281 rules!2550))))) 2) 0))))

(assert (=> b!1315839 d!371367))

(declare-fun d!371369 () Bool)

(declare-fun res!591691 () Bool)

(declare-fun e!844110 () Bool)

(assert (=> d!371369 (=> (not res!591691) (not e!844110))))

(assert (=> d!371369 (= res!591691 (semiInverseModEq!868 (toChars!3391 (transformation!2309 (h!18743 (t!118281 rules!2550)))) (toValue!3532 (transformation!2309 (h!18743 (t!118281 rules!2550))))))))

(assert (=> d!371369 (= (inv!17714 (transformation!2309 (h!18743 (t!118281 rules!2550)))) e!844110)))

(declare-fun b!1316740 () Bool)

(assert (=> b!1316740 (= e!844110 (equivClasses!827 (toChars!3391 (transformation!2309 (h!18743 (t!118281 rules!2550)))) (toValue!3532 (transformation!2309 (h!18743 (t!118281 rules!2550))))))))

(assert (= (and d!371369 res!591691) b!1316740))

(declare-fun m!1470723 () Bool)

(assert (=> d!371369 m!1470723))

(declare-fun m!1470725 () Bool)

(assert (=> b!1316740 m!1470725))

(assert (=> b!1315839 d!371369))

(declare-fun d!371371 () Bool)

(declare-fun lt!434089 () Int)

(assert (=> d!371371 (>= lt!434089 0)))

(declare-fun e!844111 () Int)

(assert (=> d!371371 (= lt!434089 e!844111)))

(declare-fun c!216079 () Bool)

(assert (=> d!371371 (= c!216079 ((_ is Nil!13341) lt!433662))))

(assert (=> d!371371 (= (size!10858 lt!433662) lt!434089)))

(declare-fun b!1316741 () Bool)

(assert (=> b!1316741 (= e!844111 0)))

(declare-fun b!1316742 () Bool)

(assert (=> b!1316742 (= e!844111 (+ 1 (size!10858 (t!118280 lt!433662))))))

(assert (= (and d!371371 c!216079) b!1316741))

(assert (= (and d!371371 (not c!216079)) b!1316742))

(declare-fun m!1470727 () Bool)

(assert (=> b!1316742 m!1470727))

(assert (=> b!1315300 d!371371))

(assert (=> b!1315300 d!371195))

(declare-fun d!371373 () Bool)

(declare-fun lt!434090 () Int)

(assert (=> d!371373 (>= lt!434090 0)))

(declare-fun e!844112 () Int)

(assert (=> d!371373 (= lt!434090 e!844112)))

(declare-fun c!216080 () Bool)

(assert (=> d!371373 (= c!216080 ((_ is Nil!13341) (getSuffix!479 lt!433574 lt!433563)))))

(assert (=> d!371373 (= (size!10858 (getSuffix!479 lt!433574 lt!433563)) lt!434090)))

(declare-fun b!1316743 () Bool)

(assert (=> b!1316743 (= e!844112 0)))

(declare-fun b!1316744 () Bool)

(assert (=> b!1316744 (= e!844112 (+ 1 (size!10858 (t!118280 (getSuffix!479 lt!433574 lt!433563)))))))

(assert (= (and d!371373 c!216080) b!1316743))

(assert (= (and d!371373 (not c!216080)) b!1316744))

(declare-fun m!1470729 () Bool)

(assert (=> b!1316744 m!1470729))

(assert (=> b!1315300 d!371373))

(declare-fun d!371375 () Bool)

(declare-fun lt!434091 () Int)

(assert (=> d!371375 (>= lt!434091 0)))

(declare-fun e!844113 () Int)

(assert (=> d!371375 (= lt!434091 e!844113)))

(declare-fun c!216081 () Bool)

(assert (=> d!371375 (= c!216081 ((_ is Nil!13341) lt!433784))))

(assert (=> d!371375 (= (size!10858 lt!433784) lt!434091)))

(declare-fun b!1316745 () Bool)

(assert (=> b!1316745 (= e!844113 0)))

(declare-fun b!1316746 () Bool)

(assert (=> b!1316746 (= e!844113 (+ 1 (size!10858 (t!118280 lt!433784))))))

(assert (= (and d!371375 c!216081) b!1316745))

(assert (= (and d!371375 (not c!216081)) b!1316746))

(declare-fun m!1470731 () Bool)

(assert (=> b!1316746 m!1470731))

(assert (=> b!1315635 d!371375))

(declare-fun d!371377 () Bool)

(declare-fun lt!434092 () Int)

(assert (=> d!371377 (>= lt!434092 0)))

(declare-fun e!844114 () Int)

(assert (=> d!371377 (= lt!434092 e!844114)))

(declare-fun c!216082 () Bool)

(assert (=> d!371377 (= c!216082 ((_ is Nil!13341) lt!433577))))

(assert (=> d!371377 (= (size!10858 lt!433577) lt!434092)))

(declare-fun b!1316747 () Bool)

(assert (=> b!1316747 (= e!844114 0)))

(declare-fun b!1316748 () Bool)

(assert (=> b!1316748 (= e!844114 (+ 1 (size!10858 (t!118280 lt!433577))))))

(assert (= (and d!371377 c!216082) b!1316747))

(assert (= (and d!371377 (not c!216082)) b!1316748))

(assert (=> b!1316748 m!1470343))

(assert (=> b!1315635 d!371377))

(declare-fun d!371379 () Bool)

(declare-fun lt!434093 () Int)

(assert (=> d!371379 (>= lt!434093 0)))

(declare-fun e!844115 () Int)

(assert (=> d!371379 (= lt!434093 e!844115)))

(declare-fun c!216083 () Bool)

(assert (=> d!371379 (= c!216083 ((_ is Nil!13341) (Cons!13341 lt!433561 Nil!13341)))))

(assert (=> d!371379 (= (size!10858 (Cons!13341 lt!433561 Nil!13341)) lt!434093)))

(declare-fun b!1316749 () Bool)

(assert (=> b!1316749 (= e!844115 0)))

(declare-fun b!1316750 () Bool)

(assert (=> b!1316750 (= e!844115 (+ 1 (size!10858 (t!118280 (Cons!13341 lt!433561 Nil!13341)))))))

(assert (= (and d!371379 c!216083) b!1316749))

(assert (= (and d!371379 (not c!216083)) b!1316750))

(declare-fun m!1470733 () Bool)

(assert (=> b!1316750 m!1470733))

(assert (=> b!1315635 d!371379))

(declare-fun d!371381 () Bool)

(declare-fun lt!434094 () Int)

(assert (=> d!371381 (>= lt!434094 0)))

(declare-fun e!844116 () Int)

(assert (=> d!371381 (= lt!434094 e!844116)))

(declare-fun c!216084 () Bool)

(assert (=> d!371381 (= c!216084 ((_ is Nil!13343) (_1!7366 lt!433689)))))

(assert (=> d!371381 (= (size!10859 (_1!7366 lt!433689)) lt!434094)))

(declare-fun b!1316751 () Bool)

(assert (=> b!1316751 (= e!844116 0)))

(declare-fun b!1316752 () Bool)

(assert (=> b!1316752 (= e!844116 (+ 1 (size!10859 (t!118282 (_1!7366 lt!433689)))))))

(assert (= (and d!371381 c!216084) b!1316751))

(assert (= (and d!371381 (not c!216084)) b!1316752))

(declare-fun m!1470735 () Bool)

(assert (=> b!1316752 m!1470735))

(assert (=> d!370585 d!371381))

(declare-fun b!1316753 () Bool)

(declare-fun res!591694 () Bool)

(declare-fun e!844119 () Bool)

(assert (=> b!1316753 (=> (not res!591694) (not e!844119))))

(declare-fun lt!434098 () Option!2576)

(assert (=> b!1316753 (= res!591694 (= (value!75439 (_1!7367 (get!4256 lt!434098))) (apply!3031 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!434098)))) (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!434098)))))))))

(declare-fun b!1316754 () Bool)

(declare-fun e!844118 () Option!2576)

(declare-fun lt!434097 () Option!2576)

(declare-fun lt!434099 () Option!2576)

(assert (=> b!1316754 (= e!844118 (ite (and ((_ is None!2575) lt!434097) ((_ is None!2575) lt!434099)) None!2575 (ite ((_ is None!2575) lt!434099) lt!434097 (ite ((_ is None!2575) lt!434097) lt!434099 (ite (>= (size!10848 (_1!7367 (v!21118 lt!434097))) (size!10848 (_1!7367 (v!21118 lt!434099)))) lt!434097 lt!434099)))))))

(declare-fun call!89477 () Option!2576)

(assert (=> b!1316754 (= lt!434097 call!89477)))

(assert (=> b!1316754 (= lt!434099 (maxPrefix!1014 thiss!19762 (t!118281 rules!2550) (list!5023 lt!433558)))))

(declare-fun b!1316755 () Bool)

(declare-fun res!591693 () Bool)

(assert (=> b!1316755 (=> (not res!591693) (not e!844119))))

(assert (=> b!1316755 (= res!591693 (< (size!10858 (_2!7367 (get!4256 lt!434098))) (size!10858 (list!5023 lt!433558))))))

(declare-fun b!1316756 () Bool)

(declare-fun res!591696 () Bool)

(assert (=> b!1316756 (=> (not res!591696) (not e!844119))))

(assert (=> b!1316756 (= res!591696 (= (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434098)))) (originalCharacters!3171 (_1!7367 (get!4256 lt!434098)))))))

(declare-fun b!1316757 () Bool)

(assert (=> b!1316757 (= e!844118 call!89477)))

(declare-fun d!371383 () Bool)

(declare-fun e!844117 () Bool)

(assert (=> d!371383 e!844117))

(declare-fun res!591697 () Bool)

(assert (=> d!371383 (=> res!591697 e!844117)))

(assert (=> d!371383 (= res!591697 (isEmpty!7912 lt!434098))))

(assert (=> d!371383 (= lt!434098 e!844118)))

(declare-fun c!216085 () Bool)

(assert (=> d!371383 (= c!216085 (and ((_ is Cons!13342) rules!2550) ((_ is Nil!13342) (t!118281 rules!2550))))))

(declare-fun lt!434095 () Unit!19396)

(declare-fun lt!434096 () Unit!19396)

(assert (=> d!371383 (= lt!434095 lt!434096)))

(assert (=> d!371383 (isPrefix!1073 (list!5023 lt!433558) (list!5023 lt!433558))))

(assert (=> d!371383 (= lt!434096 (lemmaIsPrefixRefl!752 (list!5023 lt!433558) (list!5023 lt!433558)))))

(assert (=> d!371383 (rulesValidInductive!725 thiss!19762 rules!2550)))

(assert (=> d!371383 (= (maxPrefix!1014 thiss!19762 rules!2550 (list!5023 lt!433558)) lt!434098)))

(declare-fun b!1316758 () Bool)

(declare-fun res!591698 () Bool)

(assert (=> b!1316758 (=> (not res!591698) (not e!844119))))

(assert (=> b!1316758 (= res!591698 (= (++!3398 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434098)))) (_2!7367 (get!4256 lt!434098))) (list!5023 lt!433558)))))

(declare-fun b!1316759 () Bool)

(declare-fun res!591692 () Bool)

(assert (=> b!1316759 (=> (not res!591692) (not e!844119))))

(assert (=> b!1316759 (= res!591692 (matchR!1625 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!434098)))) (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434098))))))))

(declare-fun b!1316760 () Bool)

(assert (=> b!1316760 (= e!844119 (contains!2339 rules!2550 (rule!4050 (_1!7367 (get!4256 lt!434098)))))))

(declare-fun b!1316761 () Bool)

(assert (=> b!1316761 (= e!844117 e!844119)))

(declare-fun res!591695 () Bool)

(assert (=> b!1316761 (=> (not res!591695) (not e!844119))))

(assert (=> b!1316761 (= res!591695 (isDefined!2176 lt!434098))))

(declare-fun bm!89472 () Bool)

(assert (=> bm!89472 (= call!89477 (maxPrefixOneRule!578 thiss!19762 (h!18743 rules!2550) (list!5023 lt!433558)))))

(assert (= (and d!371383 c!216085) b!1316757))

(assert (= (and d!371383 (not c!216085)) b!1316754))

(assert (= (or b!1316757 b!1316754) bm!89472))

(assert (= (and d!371383 (not res!591697)) b!1316761))

(assert (= (and b!1316761 res!591695) b!1316756))

(assert (= (and b!1316756 res!591696) b!1316755))

(assert (= (and b!1316755 res!591693) b!1316758))

(assert (= (and b!1316758 res!591698) b!1316753))

(assert (= (and b!1316753 res!591694) b!1316759))

(assert (= (and b!1316759 res!591692) b!1316760))

(declare-fun m!1470743 () Bool)

(assert (=> b!1316755 m!1470743))

(declare-fun m!1470745 () Bool)

(assert (=> b!1316755 m!1470745))

(assert (=> b!1316755 m!1468299))

(assert (=> b!1316755 m!1468711))

(assert (=> b!1316760 m!1470743))

(declare-fun m!1470747 () Bool)

(assert (=> b!1316760 m!1470747))

(assert (=> b!1316754 m!1468299))

(declare-fun m!1470749 () Bool)

(assert (=> b!1316754 m!1470749))

(assert (=> b!1316759 m!1470743))

(declare-fun m!1470751 () Bool)

(assert (=> b!1316759 m!1470751))

(assert (=> b!1316759 m!1470751))

(declare-fun m!1470753 () Bool)

(assert (=> b!1316759 m!1470753))

(assert (=> b!1316759 m!1470753))

(declare-fun m!1470755 () Bool)

(assert (=> b!1316759 m!1470755))

(assert (=> bm!89472 m!1468299))

(declare-fun m!1470757 () Bool)

(assert (=> bm!89472 m!1470757))

(declare-fun m!1470759 () Bool)

(assert (=> d!371383 m!1470759))

(assert (=> d!371383 m!1468299))

(assert (=> d!371383 m!1468299))

(declare-fun m!1470761 () Bool)

(assert (=> d!371383 m!1470761))

(assert (=> d!371383 m!1468299))

(assert (=> d!371383 m!1468299))

(declare-fun m!1470763 () Bool)

(assert (=> d!371383 m!1470763))

(assert (=> d!371383 m!1468603))

(assert (=> b!1316756 m!1470743))

(assert (=> b!1316756 m!1470751))

(assert (=> b!1316756 m!1470751))

(assert (=> b!1316756 m!1470753))

(assert (=> b!1316758 m!1470743))

(assert (=> b!1316758 m!1470751))

(assert (=> b!1316758 m!1470751))

(assert (=> b!1316758 m!1470753))

(assert (=> b!1316758 m!1470753))

(declare-fun m!1470767 () Bool)

(assert (=> b!1316758 m!1470767))

(assert (=> b!1316753 m!1470743))

(declare-fun m!1470769 () Bool)

(assert (=> b!1316753 m!1470769))

(assert (=> b!1316753 m!1470769))

(declare-fun m!1470771 () Bool)

(assert (=> b!1316753 m!1470771))

(declare-fun m!1470773 () Bool)

(assert (=> b!1316761 m!1470773))

(assert (=> d!370585 d!371383))

(assert (=> b!1315343 d!371257))

(assert (=> b!1315343 d!371259))

(declare-fun d!371389 () Bool)

(assert (=> d!371389 (= (isDefined!2176 lt!433820) (not (isEmpty!7912 lt!433820)))))

(declare-fun bs!330513 () Bool)

(assert (= bs!330513 d!371389))

(assert (=> bs!330513 m!1469285))

(assert (=> b!1315783 d!371389))

(declare-fun d!371391 () Bool)

(assert (=> d!371391 (= ($colon$colon!151 (map!2930 (t!118281 rules!2550) lambda!53526) (dynLambda!5817 lambda!53526 (h!18743 rules!2550))) (Cons!13344 (dynLambda!5817 lambda!53526 (h!18743 rules!2550)) (map!2930 (t!118281 rules!2550) lambda!53526)))))

(assert (=> b!1315215 d!371391))

(declare-fun d!371393 () Bool)

(declare-fun lt!434103 () List!13410)

(assert (=> d!371393 (= (size!10856 lt!434103) (size!10857 (t!118281 rules!2550)))))

(declare-fun e!844123 () List!13410)

(assert (=> d!371393 (= lt!434103 e!844123)))

(declare-fun c!216086 () Bool)

(assert (=> d!371393 (= c!216086 ((_ is Nil!13342) (t!118281 rules!2550)))))

(assert (=> d!371393 (= (map!2930 (t!118281 rules!2550) lambda!53526) lt!434103)))

(declare-fun b!1316765 () Bool)

(assert (=> b!1316765 (= e!844123 Nil!13344)))

(declare-fun b!1316766 () Bool)

(assert (=> b!1316766 (= e!844123 ($colon$colon!151 (map!2930 (t!118281 (t!118281 rules!2550)) lambda!53526) (dynLambda!5817 lambda!53526 (h!18743 (t!118281 rules!2550)))))))

(assert (= (and d!371393 c!216086) b!1316765))

(assert (= (and d!371393 (not c!216086)) b!1316766))

(declare-fun b_lambda!38151 () Bool)

(assert (=> (not b_lambda!38151) (not b!1316766)))

(declare-fun m!1470775 () Bool)

(assert (=> d!371393 m!1470775))

(declare-fun m!1470777 () Bool)

(assert (=> d!371393 m!1470777))

(declare-fun m!1470779 () Bool)

(assert (=> b!1316766 m!1470779))

(declare-fun m!1470781 () Bool)

(assert (=> b!1316766 m!1470781))

(assert (=> b!1316766 m!1470779))

(assert (=> b!1316766 m!1470781))

(declare-fun m!1470783 () Bool)

(assert (=> b!1316766 m!1470783))

(assert (=> b!1315215 d!371393))

(declare-fun d!371395 () Bool)

(assert (=> d!371395 (= (list!5023 (_2!7365 lt!433827)) (list!5026 (c!215720 (_2!7365 lt!433827))))))

(declare-fun bs!330514 () Bool)

(assert (= bs!330514 d!371395))

(declare-fun m!1470785 () Bool)

(assert (=> bs!330514 m!1470785))

(assert (=> b!1315800 d!371395))

(assert (=> b!1315800 d!370705))

(assert (=> b!1315800 d!370707))

(declare-fun d!371397 () Bool)

(declare-fun lt!434106 () Int)

(assert (=> d!371397 (>= lt!434106 0)))

(declare-fun e!844124 () Int)

(assert (=> d!371397 (= lt!434106 e!844124)))

(declare-fun c!216087 () Bool)

(assert (=> d!371397 (= c!216087 ((_ is Nil!13341) (_2!7366 lt!433781)))))

(assert (=> d!371397 (= (size!10858 (_2!7366 lt!433781)) lt!434106)))

(declare-fun b!1316767 () Bool)

(assert (=> b!1316767 (= e!844124 0)))

(declare-fun b!1316768 () Bool)

(assert (=> b!1316768 (= e!844124 (+ 1 (size!10858 (t!118280 (_2!7366 lt!433781)))))))

(assert (= (and d!371397 c!216087) b!1316767))

(assert (= (and d!371397 (not c!216087)) b!1316768))

(declare-fun m!1470787 () Bool)

(assert (=> b!1316768 m!1470787))

(assert (=> b!1315629 d!371397))

(declare-fun d!371399 () Bool)

(declare-fun lt!434107 () Int)

(assert (=> d!371399 (>= lt!434107 0)))

(declare-fun e!844125 () Int)

(assert (=> d!371399 (= lt!434107 e!844125)))

(declare-fun c!216088 () Bool)

(assert (=> d!371399 (= c!216088 ((_ is Nil!13341) (list!5023 lt!433572)))))

(assert (=> d!371399 (= (size!10858 (list!5023 lt!433572)) lt!434107)))

(declare-fun b!1316769 () Bool)

(assert (=> b!1316769 (= e!844125 0)))

(declare-fun b!1316770 () Bool)

(assert (=> b!1316770 (= e!844125 (+ 1 (size!10858 (t!118280 (list!5023 lt!433572)))))))

(assert (= (and d!371399 c!216088) b!1316769))

(assert (= (and d!371399 (not c!216088)) b!1316770))

(declare-fun m!1470789 () Bool)

(assert (=> b!1316770 m!1470789))

(assert (=> b!1315629 d!371399))

(declare-fun d!371401 () Bool)

(declare-fun lt!434109 () Int)

(assert (=> d!371401 (= lt!434109 (size!10858 (list!5023 (_2!7365 lt!433796))))))

(assert (=> d!371401 (= lt!434109 (size!10861 (c!215720 (_2!7365 lt!433796))))))

(assert (=> d!371401 (= (size!10849 (_2!7365 lt!433796)) lt!434109)))

(declare-fun bs!330515 () Bool)

(assert (= bs!330515 d!371401))

(assert (=> bs!330515 m!1469197))

(assert (=> bs!330515 m!1469197))

(declare-fun m!1470791 () Bool)

(assert (=> bs!330515 m!1470791))

(declare-fun m!1470793 () Bool)

(assert (=> bs!330515 m!1470793))

(assert (=> b!1315712 d!371401))

(declare-fun d!371403 () Bool)

(declare-fun lt!434110 () Int)

(assert (=> d!371403 (= lt!434110 (size!10858 (list!5023 lt!433558)))))

(assert (=> d!371403 (= lt!434110 (size!10861 (c!215720 lt!433558)))))

(assert (=> d!371403 (= (size!10849 lt!433558) lt!434110)))

(declare-fun bs!330518 () Bool)

(assert (= bs!330518 d!371403))

(assert (=> bs!330518 m!1468299))

(assert (=> bs!330518 m!1468299))

(assert (=> bs!330518 m!1468711))

(declare-fun m!1470795 () Bool)

(assert (=> bs!330518 m!1470795))

(assert (=> b!1315712 d!371403))

(declare-fun d!371405 () Bool)

(declare-fun lt!434116 () C!7536)

(assert (=> d!371405 (contains!2340 (list!5023 lt!433570) lt!434116)))

(declare-fun e!844139 () C!7536)

(assert (=> d!371405 (= lt!434116 e!844139)))

(declare-fun c!216095 () Bool)

(assert (=> d!371405 (= c!216095 (= 0 0))))

(declare-fun e!844140 () Bool)

(assert (=> d!371405 e!844140))

(declare-fun res!591709 () Bool)

(assert (=> d!371405 (=> (not res!591709) (not e!844140))))

(assert (=> d!371405 (= res!591709 (<= 0 0))))

(assert (=> d!371405 (= (apply!3032 (list!5023 lt!433570) 0) lt!434116)))

(declare-fun b!1316790 () Bool)

(assert (=> b!1316790 (= e!844140 (< 0 (size!10858 (list!5023 lt!433570))))))

(declare-fun b!1316791 () Bool)

(assert (=> b!1316791 (= e!844139 (head!2273 (list!5023 lt!433570)))))

(declare-fun b!1316792 () Bool)

(assert (=> b!1316792 (= e!844139 (apply!3032 (tail!1884 (list!5023 lt!433570)) (- 0 1)))))

(assert (= (and d!371405 res!591709) b!1316790))

(assert (= (and d!371405 c!216095) b!1316791))

(assert (= (and d!371405 (not c!216095)) b!1316792))

(assert (=> d!371405 m!1468409))

(declare-fun m!1470837 () Bool)

(assert (=> d!371405 m!1470837))

(assert (=> b!1316790 m!1468409))

(assert (=> b!1316790 m!1468583))

(assert (=> b!1316791 m!1468409))

(declare-fun m!1470839 () Bool)

(assert (=> b!1316791 m!1470839))

(assert (=> b!1316792 m!1468409))

(declare-fun m!1470841 () Bool)

(assert (=> b!1316792 m!1470841))

(assert (=> b!1316792 m!1470841))

(declare-fun m!1470843 () Bool)

(assert (=> b!1316792 m!1470843))

(assert (=> d!370717 d!371405))

(assert (=> d!370717 d!370563))

(declare-fun b!1316831 () Bool)

(declare-fun e!844162 () C!7536)

(declare-fun call!89481 () C!7536)

(assert (=> b!1316831 (= e!844162 call!89481)))

(declare-fun b!1316832 () Bool)

(declare-fun e!844161 () C!7536)

(assert (=> b!1316832 (= e!844161 e!844162)))

(declare-fun lt!434124 () Bool)

(declare-fun appendIndex!141 (List!13407 List!13407 Int) Bool)

(assert (=> b!1316832 (= lt!434124 (appendIndex!141 (list!5026 (left!11468 (c!215720 lt!433570))) (list!5026 (right!11798 (c!215720 lt!433570))) 0))))

(declare-fun c!216109 () Bool)

(assert (=> b!1316832 (= c!216109 (< 0 (size!10861 (left!11468 (c!215720 lt!433570)))))))

(declare-fun d!371427 () Bool)

(declare-fun lt!434125 () C!7536)

(assert (=> d!371427 (= lt!434125 (apply!3032 (list!5026 (c!215720 lt!433570)) 0))))

(assert (=> d!371427 (= lt!434125 e!844161)))

(declare-fun c!216111 () Bool)

(assert (=> d!371427 (= c!216111 ((_ is Leaf!6739) (c!215720 lt!433570)))))

(declare-fun e!844159 () Bool)

(assert (=> d!371427 e!844159))

(declare-fun res!591728 () Bool)

(assert (=> d!371427 (=> (not res!591728) (not e!844159))))

(assert (=> d!371427 (= res!591728 (<= 0 0))))

(assert (=> d!371427 (= (apply!3033 (c!215720 lt!433570) 0) lt!434125)))

(declare-fun b!1316833 () Bool)

(declare-fun apply!3041 (IArray!8781 Int) C!7536)

(assert (=> b!1316833 (= e!844161 (apply!3041 (xs!7103 (c!215720 lt!433570)) 0))))

(declare-fun b!1316834 () Bool)

(assert (=> b!1316834 (= e!844162 call!89481)))

(declare-fun b!1316835 () Bool)

(assert (=> b!1316835 (= e!844159 (< 0 (size!10861 (c!215720 lt!433570))))))

(declare-fun b!1316836 () Bool)

(declare-fun e!844160 () Int)

(assert (=> b!1316836 (= e!844160 (- 0 (size!10861 (left!11468 (c!215720 lt!433570)))))))

(declare-fun bm!89476 () Bool)

(declare-fun c!216110 () Bool)

(assert (=> bm!89476 (= c!216110 c!216109)))

(assert (=> bm!89476 (= call!89481 (apply!3033 (ite c!216109 (left!11468 (c!215720 lt!433570)) (right!11798 (c!215720 lt!433570))) e!844160))))

(declare-fun b!1316837 () Bool)

(assert (=> b!1316837 (= e!844160 0)))

(assert (= (and d!371427 res!591728) b!1316835))

(assert (= (and d!371427 c!216111) b!1316833))

(assert (= (and d!371427 (not c!216111)) b!1316832))

(assert (= (and b!1316832 c!216109) b!1316831))

(assert (= (and b!1316832 (not c!216109)) b!1316834))

(assert (= (or b!1316831 b!1316834) bm!89476))

(assert (= (and bm!89476 c!216110) b!1316837))

(assert (= (and bm!89476 (not c!216110)) b!1316836))

(assert (=> b!1316835 m!1468975))

(declare-fun m!1470851 () Bool)

(assert (=> b!1316836 m!1470851))

(declare-fun m!1470853 () Bool)

(assert (=> b!1316833 m!1470853))

(declare-fun m!1470855 () Bool)

(assert (=> bm!89476 m!1470855))

(assert (=> d!371427 m!1468613))

(assert (=> d!371427 m!1468613))

(declare-fun m!1470857 () Bool)

(assert (=> d!371427 m!1470857))

(assert (=> b!1316832 m!1469945))

(assert (=> b!1316832 m!1469949))

(assert (=> b!1316832 m!1469945))

(assert (=> b!1316832 m!1469949))

(declare-fun m!1470859 () Bool)

(assert (=> b!1316832 m!1470859))

(assert (=> b!1316832 m!1470851))

(assert (=> d!370717 d!371427))

(declare-fun d!371431 () Bool)

(declare-fun res!591735 () Bool)

(declare-fun e!844170 () Bool)

(assert (=> d!371431 (=> res!591735 e!844170)))

(assert (=> d!371431 (= res!591735 ((_ is ElementMatch!3623) (h!18745 (map!2930 rules!2550 lambda!53526))))))

(assert (=> d!371431 (= (validRegex!1549 (h!18745 (map!2930 rules!2550 lambda!53526))) e!844170)))

(declare-fun b!1316842 () Bool)

(declare-fun res!591734 () Bool)

(declare-fun e!844167 () Bool)

(assert (=> b!1316842 (=> res!591734 e!844167)))

(assert (=> b!1316842 (= res!591734 (not ((_ is Concat!6023) (h!18745 (map!2930 rules!2550 lambda!53526)))))))

(declare-fun e!844169 () Bool)

(assert (=> b!1316842 (= e!844169 e!844167)))

(declare-fun bm!89477 () Bool)

(declare-fun call!89482 () Bool)

(declare-fun c!216113 () Bool)

(assert (=> bm!89477 (= call!89482 (validRegex!1549 (ite c!216113 (regTwo!7759 (h!18745 (map!2930 rules!2550 lambda!53526))) (regTwo!7758 (h!18745 (map!2930 rules!2550 lambda!53526))))))))

(declare-fun bm!89478 () Bool)

(declare-fun call!89483 () Bool)

(declare-fun call!89484 () Bool)

(assert (=> bm!89478 (= call!89483 call!89484)))

(declare-fun b!1316843 () Bool)

(declare-fun e!844166 () Bool)

(assert (=> b!1316843 (= e!844166 call!89484)))

(declare-fun b!1316844 () Bool)

(declare-fun e!844168 () Bool)

(assert (=> b!1316844 (= e!844170 e!844168)))

(declare-fun c!216112 () Bool)

(assert (=> b!1316844 (= c!216112 ((_ is Star!3623) (h!18745 (map!2930 rules!2550 lambda!53526))))))

(declare-fun b!1316845 () Bool)

(assert (=> b!1316845 (= e!844168 e!844166)))

(declare-fun res!591736 () Bool)

(assert (=> b!1316845 (= res!591736 (not (nullable!1147 (reg!3952 (h!18745 (map!2930 rules!2550 lambda!53526))))))))

(assert (=> b!1316845 (=> (not res!591736) (not e!844166))))

(declare-fun bm!89479 () Bool)

(assert (=> bm!89479 (= call!89484 (validRegex!1549 (ite c!216112 (reg!3952 (h!18745 (map!2930 rules!2550 lambda!53526))) (ite c!216113 (regOne!7759 (h!18745 (map!2930 rules!2550 lambda!53526))) (regOne!7758 (h!18745 (map!2930 rules!2550 lambda!53526)))))))))

(declare-fun b!1316846 () Bool)

(declare-fun e!844164 () Bool)

(assert (=> b!1316846 (= e!844167 e!844164)))

(declare-fun res!591737 () Bool)

(assert (=> b!1316846 (=> (not res!591737) (not e!844164))))

(assert (=> b!1316846 (= res!591737 call!89483)))

(declare-fun b!1316847 () Bool)

(declare-fun e!844165 () Bool)

(assert (=> b!1316847 (= e!844165 call!89482)))

(declare-fun b!1316848 () Bool)

(declare-fun res!591733 () Bool)

(assert (=> b!1316848 (=> (not res!591733) (not e!844165))))

(assert (=> b!1316848 (= res!591733 call!89483)))

(assert (=> b!1316848 (= e!844169 e!844165)))

(declare-fun b!1316849 () Bool)

(assert (=> b!1316849 (= e!844164 call!89482)))

(declare-fun b!1316850 () Bool)

(assert (=> b!1316850 (= e!844168 e!844169)))

(assert (=> b!1316850 (= c!216113 ((_ is Union!3623) (h!18745 (map!2930 rules!2550 lambda!53526))))))

(assert (= (and d!371431 (not res!591735)) b!1316844))

(assert (= (and b!1316844 c!216112) b!1316845))

(assert (= (and b!1316844 (not c!216112)) b!1316850))

(assert (= (and b!1316845 res!591736) b!1316843))

(assert (= (and b!1316850 c!216113) b!1316848))

(assert (= (and b!1316850 (not c!216113)) b!1316842))

(assert (= (and b!1316848 res!591733) b!1316847))

(assert (= (and b!1316842 (not res!591734)) b!1316846))

(assert (= (and b!1316846 res!591737) b!1316849))

(assert (= (or b!1316848 b!1316846) bm!89478))

(assert (= (or b!1316847 b!1316849) bm!89477))

(assert (= (or b!1316843 bm!89478) bm!89479))

(declare-fun m!1470861 () Bool)

(assert (=> bm!89477 m!1470861))

(declare-fun m!1470863 () Bool)

(assert (=> b!1316845 m!1470863))

(declare-fun m!1470867 () Bool)

(assert (=> bm!89479 m!1470867))

(assert (=> bs!330364 d!371431))

(declare-fun d!371433 () Bool)

(declare-fun lt!434127 () Bool)

(assert (=> d!371433 (= lt!434127 (select (content!1877 (t!118281 rules!2550)) lt!433573))))

(declare-fun e!844171 () Bool)

(assert (=> d!371433 (= lt!434127 e!844171)))

(declare-fun res!591738 () Bool)

(assert (=> d!371433 (=> (not res!591738) (not e!844171))))

(assert (=> d!371433 (= res!591738 ((_ is Cons!13342) (t!118281 rules!2550)))))

(assert (=> d!371433 (= (contains!2339 (t!118281 rules!2550) lt!433573) lt!434127)))

(declare-fun b!1316851 () Bool)

(declare-fun e!844172 () Bool)

(assert (=> b!1316851 (= e!844171 e!844172)))

(declare-fun res!591739 () Bool)

(assert (=> b!1316851 (=> res!591739 e!844172)))

(assert (=> b!1316851 (= res!591739 (= (h!18743 (t!118281 rules!2550)) lt!433573))))

(declare-fun b!1316852 () Bool)

(assert (=> b!1316852 (= e!844172 (contains!2339 (t!118281 (t!118281 rules!2550)) lt!433573))))

(assert (= (and d!371433 res!591738) b!1316851))

(assert (= (and b!1316851 (not res!591739)) b!1316852))

(assert (=> d!371433 m!1470365))

(declare-fun m!1470885 () Bool)

(assert (=> d!371433 m!1470885))

(declare-fun m!1470887 () Bool)

(assert (=> b!1316852 m!1470887))

(assert (=> b!1315772 d!371433))

(declare-fun d!371435 () Bool)

(declare-fun res!591740 () Bool)

(declare-fun e!844173 () Bool)

(assert (=> d!371435 (=> (not res!591740) (not e!844173))))

(assert (=> d!371435 (= res!591740 (validRegex!1549 (regex!2309 (rule!4050 t1!34))))))

(assert (=> d!371435 (= (ruleValid!562 thiss!19762 (rule!4050 t1!34)) e!844173)))

(declare-fun b!1316853 () Bool)

(declare-fun res!591741 () Bool)

(assert (=> b!1316853 (=> (not res!591741) (not e!844173))))

(assert (=> b!1316853 (= res!591741 (not (nullable!1147 (regex!2309 (rule!4050 t1!34)))))))

(declare-fun b!1316854 () Bool)

(assert (=> b!1316854 (= e!844173 (not (= (tag!2571 (rule!4050 t1!34)) (String!16232 ""))))))

(assert (= (and d!371435 res!591740) b!1316853))

(assert (= (and b!1316853 res!591741) b!1316854))

(assert (=> d!371435 m!1468365))

(declare-fun m!1470893 () Bool)

(assert (=> b!1316853 m!1470893))

(assert (=> bs!330359 d!371435))

(assert (=> b!1315272 d!371137))

(declare-fun d!371437 () Bool)

(assert (=> d!371437 (= (apply!3031 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))) (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!433652))))) (dynLambda!5831 (toValue!3532 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652))))) (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!433652))))))))

(declare-fun b_lambda!38153 () Bool)

(assert (=> (not b_lambda!38153) (not d!371437)))

(declare-fun t!118394 () Bool)

(declare-fun tb!69961 () Bool)

(assert (=> (and b!1315098 (= (toValue!3532 (transformation!2309 (h!18743 rules!2550))) (toValue!3532 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))))) t!118394) tb!69961))

(declare-fun result!84898 () Bool)

(assert (=> tb!69961 (= result!84898 (inv!21 (dynLambda!5831 (toValue!3532 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652))))) (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!433652)))))))))

(declare-fun m!1470895 () Bool)

(assert (=> tb!69961 m!1470895))

(assert (=> d!371437 t!118394))

(declare-fun b_and!87995 () Bool)

(assert (= b_and!87987 (and (=> t!118394 result!84898) b_and!87995)))

(declare-fun t!118396 () Bool)

(declare-fun tb!69963 () Bool)

(assert (=> (and b!1315100 (= (toValue!3532 (transformation!2309 (rule!4050 t1!34))) (toValue!3532 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))))) t!118396) tb!69963))

(declare-fun result!84900 () Bool)

(assert (= result!84900 result!84898))

(assert (=> d!371437 t!118396))

(declare-fun b_and!87997 () Bool)

(assert (= b_and!87989 (and (=> t!118396 result!84900) b_and!87997)))

(declare-fun tb!69965 () Bool)

(declare-fun t!118398 () Bool)

(assert (=> (and b!1315065 (= (toValue!3532 (transformation!2309 (rule!4050 t2!34))) (toValue!3532 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))))) t!118398) tb!69965))

(declare-fun result!84902 () Bool)

(assert (= result!84902 result!84898))

(assert (=> d!371437 t!118398))

(declare-fun b_and!87999 () Bool)

(assert (= b_and!87991 (and (=> t!118398 result!84902) b_and!87999)))

(declare-fun t!118400 () Bool)

(declare-fun tb!69967 () Bool)

(assert (=> (and b!1315840 (= (toValue!3532 (transformation!2309 (h!18743 (t!118281 rules!2550)))) (toValue!3532 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))))) t!118400) tb!69967))

(declare-fun result!84904 () Bool)

(assert (= result!84904 result!84898))

(assert (=> d!371437 t!118400))

(declare-fun b_and!88001 () Bool)

(assert (= b_and!87993 (and (=> t!118400 result!84904) b_and!88001)))

(assert (=> d!371437 m!1468607))

(declare-fun m!1470897 () Bool)

(assert (=> d!371437 m!1470897))

(assert (=> b!1315272 d!371437))

(declare-fun d!371441 () Bool)

(assert (=> d!371441 (= (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!433652)))) (fromListB!705 (originalCharacters!3171 (_1!7367 (get!4256 lt!433652)))))))

(declare-fun bs!330528 () Bool)

(assert (= bs!330528 d!371441))

(declare-fun m!1470899 () Bool)

(assert (=> bs!330528 m!1470899))

(assert (=> b!1315272 d!371441))

(declare-fun b!1316855 () Bool)

(declare-fun res!591744 () Bool)

(declare-fun e!844177 () Bool)

(assert (=> b!1316855 (=> (not res!591744) (not e!844177))))

(declare-fun lt!434131 () Option!2576)

(assert (=> b!1316855 (= res!591744 (= (value!75439 (_1!7367 (get!4256 lt!434131))) (apply!3031 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!434131)))) (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!434131)))))))))

(declare-fun b!1316856 () Bool)

(declare-fun e!844176 () Option!2576)

(declare-fun lt!434130 () Option!2576)

(declare-fun lt!434132 () Option!2576)

(assert (=> b!1316856 (= e!844176 (ite (and ((_ is None!2575) lt!434130) ((_ is None!2575) lt!434132)) None!2575 (ite ((_ is None!2575) lt!434132) lt!434130 (ite ((_ is None!2575) lt!434130) lt!434132 (ite (>= (size!10848 (_1!7367 (v!21118 lt!434130))) (size!10848 (_1!7367 (v!21118 lt!434132)))) lt!434130 lt!434132)))))))

(declare-fun call!89485 () Option!2576)

(assert (=> b!1316856 (= lt!434130 call!89485)))

(assert (=> b!1316856 (= lt!434132 (maxPrefix!1014 thiss!19762 (t!118281 (t!118281 rules!2550)) (list!5023 lt!433570)))))

(declare-fun b!1316857 () Bool)

(declare-fun res!591743 () Bool)

(assert (=> b!1316857 (=> (not res!591743) (not e!844177))))

(assert (=> b!1316857 (= res!591743 (< (size!10858 (_2!7367 (get!4256 lt!434131))) (size!10858 (list!5023 lt!433570))))))

(declare-fun b!1316858 () Bool)

(declare-fun res!591746 () Bool)

(assert (=> b!1316858 (=> (not res!591746) (not e!844177))))

(assert (=> b!1316858 (= res!591746 (= (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434131)))) (originalCharacters!3171 (_1!7367 (get!4256 lt!434131)))))))

(declare-fun b!1316859 () Bool)

(assert (=> b!1316859 (= e!844176 call!89485)))

(declare-fun d!371443 () Bool)

(declare-fun e!844175 () Bool)

(assert (=> d!371443 e!844175))

(declare-fun res!591747 () Bool)

(assert (=> d!371443 (=> res!591747 e!844175)))

(assert (=> d!371443 (= res!591747 (isEmpty!7912 lt!434131))))

(assert (=> d!371443 (= lt!434131 e!844176)))

(declare-fun c!216114 () Bool)

(assert (=> d!371443 (= c!216114 (and ((_ is Cons!13342) (t!118281 rules!2550)) ((_ is Nil!13342) (t!118281 (t!118281 rules!2550)))))))

(declare-fun lt!434128 () Unit!19396)

(declare-fun lt!434129 () Unit!19396)

(assert (=> d!371443 (= lt!434128 lt!434129)))

(assert (=> d!371443 (isPrefix!1073 (list!5023 lt!433570) (list!5023 lt!433570))))

(assert (=> d!371443 (= lt!434129 (lemmaIsPrefixRefl!752 (list!5023 lt!433570) (list!5023 lt!433570)))))

(assert (=> d!371443 (rulesValidInductive!725 thiss!19762 (t!118281 rules!2550))))

(assert (=> d!371443 (= (maxPrefix!1014 thiss!19762 (t!118281 rules!2550) (list!5023 lt!433570)) lt!434131)))

(declare-fun b!1316860 () Bool)

(declare-fun res!591748 () Bool)

(assert (=> b!1316860 (=> (not res!591748) (not e!844177))))

(assert (=> b!1316860 (= res!591748 (= (++!3398 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434131)))) (_2!7367 (get!4256 lt!434131))) (list!5023 lt!433570)))))

(declare-fun b!1316861 () Bool)

(declare-fun res!591742 () Bool)

(assert (=> b!1316861 (=> (not res!591742) (not e!844177))))

(assert (=> b!1316861 (= res!591742 (matchR!1625 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!434131)))) (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434131))))))))

(declare-fun b!1316862 () Bool)

(assert (=> b!1316862 (= e!844177 (contains!2339 (t!118281 rules!2550) (rule!4050 (_1!7367 (get!4256 lt!434131)))))))

(declare-fun b!1316863 () Bool)

(assert (=> b!1316863 (= e!844175 e!844177)))

(declare-fun res!591745 () Bool)

(assert (=> b!1316863 (=> (not res!591745) (not e!844177))))

(assert (=> b!1316863 (= res!591745 (isDefined!2176 lt!434131))))

(declare-fun bm!89480 () Bool)

(assert (=> bm!89480 (= call!89485 (maxPrefixOneRule!578 thiss!19762 (h!18743 (t!118281 rules!2550)) (list!5023 lt!433570)))))

(assert (= (and d!371443 c!216114) b!1316859))

(assert (= (and d!371443 (not c!216114)) b!1316856))

(assert (= (or b!1316859 b!1316856) bm!89480))

(assert (= (and d!371443 (not res!591747)) b!1316863))

(assert (= (and b!1316863 res!591745) b!1316858))

(assert (= (and b!1316858 res!591746) b!1316857))

(assert (= (and b!1316857 res!591743) b!1316860))

(assert (= (and b!1316860 res!591748) b!1316855))

(assert (= (and b!1316855 res!591744) b!1316861))

(assert (= (and b!1316861 res!591742) b!1316862))

(declare-fun m!1470901 () Bool)

(assert (=> b!1316857 m!1470901))

(declare-fun m!1470903 () Bool)

(assert (=> b!1316857 m!1470903))

(assert (=> b!1316857 m!1468409))

(assert (=> b!1316857 m!1468583))

(assert (=> b!1316862 m!1470901))

(declare-fun m!1470905 () Bool)

(assert (=> b!1316862 m!1470905))

(assert (=> b!1316856 m!1468409))

(declare-fun m!1470907 () Bool)

(assert (=> b!1316856 m!1470907))

(assert (=> b!1316861 m!1470901))

(declare-fun m!1470909 () Bool)

(assert (=> b!1316861 m!1470909))

(assert (=> b!1316861 m!1470909))

(declare-fun m!1470911 () Bool)

(assert (=> b!1316861 m!1470911))

(assert (=> b!1316861 m!1470911))

(declare-fun m!1470913 () Bool)

(assert (=> b!1316861 m!1470913))

(assert (=> bm!89480 m!1468409))

(declare-fun m!1470915 () Bool)

(assert (=> bm!89480 m!1470915))

(declare-fun m!1470917 () Bool)

(assert (=> d!371443 m!1470917))

(assert (=> d!371443 m!1468409))

(assert (=> d!371443 m!1468409))

(assert (=> d!371443 m!1468599))

(assert (=> d!371443 m!1468409))

(assert (=> d!371443 m!1468409))

(assert (=> d!371443 m!1468601))

(assert (=> d!371443 m!1470415))

(assert (=> b!1316858 m!1470901))

(assert (=> b!1316858 m!1470909))

(assert (=> b!1316858 m!1470909))

(assert (=> b!1316858 m!1470911))

(assert (=> b!1316860 m!1470901))

(assert (=> b!1316860 m!1470909))

(assert (=> b!1316860 m!1470909))

(assert (=> b!1316860 m!1470911))

(assert (=> b!1316860 m!1470911))

(declare-fun m!1470919 () Bool)

(assert (=> b!1316860 m!1470919))

(assert (=> b!1316855 m!1470901))

(declare-fun m!1470921 () Bool)

(assert (=> b!1316855 m!1470921))

(assert (=> b!1316855 m!1470921))

(declare-fun m!1470923 () Bool)

(assert (=> b!1316855 m!1470923))

(declare-fun m!1470925 () Bool)

(assert (=> b!1316863 m!1470925))

(assert (=> b!1315273 d!371443))

(declare-fun b!1316864 () Bool)

(declare-fun res!591751 () Bool)

(declare-fun e!844180 () Bool)

(assert (=> b!1316864 (=> (not res!591751) (not e!844180))))

(declare-fun lt!434136 () Option!2576)

(assert (=> b!1316864 (= res!591751 (= (value!75439 (_1!7367 (get!4256 lt!434136))) (apply!3031 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!434136)))) (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!434136)))))))))

(declare-fun b!1316865 () Bool)

(declare-fun e!844179 () Option!2576)

(declare-fun lt!434135 () Option!2576)

(declare-fun lt!434137 () Option!2576)

(assert (=> b!1316865 (= e!844179 (ite (and ((_ is None!2575) lt!434135) ((_ is None!2575) lt!434137)) None!2575 (ite ((_ is None!2575) lt!434137) lt!434135 (ite ((_ is None!2575) lt!434135) lt!434137 (ite (>= (size!10848 (_1!7367 (v!21118 lt!434135))) (size!10848 (_1!7367 (v!21118 lt!434137)))) lt!434135 lt!434137)))))))

(declare-fun call!89486 () Option!2576)

(assert (=> b!1316865 (= lt!434135 call!89486)))

(assert (=> b!1316865 (= lt!434137 (maxPrefix!1014 thiss!19762 (t!118281 (t!118281 rules!2550)) lt!433577))))

(declare-fun b!1316866 () Bool)

(declare-fun res!591750 () Bool)

(assert (=> b!1316866 (=> (not res!591750) (not e!844180))))

(assert (=> b!1316866 (= res!591750 (< (size!10858 (_2!7367 (get!4256 lt!434136))) (size!10858 lt!433577)))))

(declare-fun b!1316867 () Bool)

(declare-fun res!591753 () Bool)

(assert (=> b!1316867 (=> (not res!591753) (not e!844180))))

(assert (=> b!1316867 (= res!591753 (= (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434136)))) (originalCharacters!3171 (_1!7367 (get!4256 lt!434136)))))))

(declare-fun b!1316868 () Bool)

(assert (=> b!1316868 (= e!844179 call!89486)))

(declare-fun d!371445 () Bool)

(declare-fun e!844178 () Bool)

(assert (=> d!371445 e!844178))

(declare-fun res!591754 () Bool)

(assert (=> d!371445 (=> res!591754 e!844178)))

(assert (=> d!371445 (= res!591754 (isEmpty!7912 lt!434136))))

(assert (=> d!371445 (= lt!434136 e!844179)))

(declare-fun c!216115 () Bool)

(assert (=> d!371445 (= c!216115 (and ((_ is Cons!13342) (t!118281 rules!2550)) ((_ is Nil!13342) (t!118281 (t!118281 rules!2550)))))))

(declare-fun lt!434133 () Unit!19396)

(declare-fun lt!434134 () Unit!19396)

(assert (=> d!371445 (= lt!434133 lt!434134)))

(assert (=> d!371445 (isPrefix!1073 lt!433577 lt!433577)))

(assert (=> d!371445 (= lt!434134 (lemmaIsPrefixRefl!752 lt!433577 lt!433577))))

(assert (=> d!371445 (rulesValidInductive!725 thiss!19762 (t!118281 rules!2550))))

(assert (=> d!371445 (= (maxPrefix!1014 thiss!19762 (t!118281 rules!2550) lt!433577) lt!434136)))

(declare-fun b!1316869 () Bool)

(declare-fun res!591755 () Bool)

(assert (=> b!1316869 (=> (not res!591755) (not e!844180))))

(assert (=> b!1316869 (= res!591755 (= (++!3398 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434136)))) (_2!7367 (get!4256 lt!434136))) lt!433577))))

(declare-fun b!1316870 () Bool)

(declare-fun res!591749 () Bool)

(assert (=> b!1316870 (=> (not res!591749) (not e!844180))))

(assert (=> b!1316870 (= res!591749 (matchR!1625 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!434136)))) (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434136))))))))

(declare-fun b!1316871 () Bool)

(assert (=> b!1316871 (= e!844180 (contains!2339 (t!118281 rules!2550) (rule!4050 (_1!7367 (get!4256 lt!434136)))))))

(declare-fun b!1316872 () Bool)

(assert (=> b!1316872 (= e!844178 e!844180)))

(declare-fun res!591752 () Bool)

(assert (=> b!1316872 (=> (not res!591752) (not e!844180))))

(assert (=> b!1316872 (= res!591752 (isDefined!2176 lt!434136))))

(declare-fun bm!89481 () Bool)

(assert (=> bm!89481 (= call!89486 (maxPrefixOneRule!578 thiss!19762 (h!18743 (t!118281 rules!2550)) lt!433577))))

(assert (= (and d!371445 c!216115) b!1316868))

(assert (= (and d!371445 (not c!216115)) b!1316865))

(assert (= (or b!1316868 b!1316865) bm!89481))

(assert (= (and d!371445 (not res!591754)) b!1316872))

(assert (= (and b!1316872 res!591752) b!1316867))

(assert (= (and b!1316867 res!591753) b!1316866))

(assert (= (and b!1316866 res!591750) b!1316869))

(assert (= (and b!1316869 res!591755) b!1316864))

(assert (= (and b!1316864 res!591751) b!1316870))

(assert (= (and b!1316870 res!591749) b!1316871))

(declare-fun m!1470927 () Bool)

(assert (=> b!1316866 m!1470927))

(declare-fun m!1470929 () Bool)

(assert (=> b!1316866 m!1470929))

(assert (=> b!1316866 m!1469113))

(assert (=> b!1316871 m!1470927))

(declare-fun m!1470931 () Bool)

(assert (=> b!1316871 m!1470931))

(declare-fun m!1470933 () Bool)

(assert (=> b!1316865 m!1470933))

(assert (=> b!1316870 m!1470927))

(declare-fun m!1470935 () Bool)

(assert (=> b!1316870 m!1470935))

(assert (=> b!1316870 m!1470935))

(declare-fun m!1470937 () Bool)

(assert (=> b!1316870 m!1470937))

(assert (=> b!1316870 m!1470937))

(declare-fun m!1470939 () Bool)

(assert (=> b!1316870 m!1470939))

(declare-fun m!1470941 () Bool)

(assert (=> bm!89481 m!1470941))

(declare-fun m!1470943 () Bool)

(assert (=> d!371445 m!1470943))

(assert (=> d!371445 m!1469287))

(assert (=> d!371445 m!1469289))

(assert (=> d!371445 m!1470415))

(assert (=> b!1316867 m!1470927))

(assert (=> b!1316867 m!1470935))

(assert (=> b!1316867 m!1470935))

(assert (=> b!1316867 m!1470937))

(assert (=> b!1316869 m!1470927))

(assert (=> b!1316869 m!1470935))

(assert (=> b!1316869 m!1470935))

(assert (=> b!1316869 m!1470937))

(assert (=> b!1316869 m!1470937))

(declare-fun m!1470945 () Bool)

(assert (=> b!1316869 m!1470945))

(assert (=> b!1316864 m!1470927))

(declare-fun m!1470947 () Bool)

(assert (=> b!1316864 m!1470947))

(assert (=> b!1316864 m!1470947))

(declare-fun m!1470949 () Bool)

(assert (=> b!1316864 m!1470949))

(declare-fun m!1470951 () Bool)

(assert (=> b!1316872 m!1470951))

(assert (=> b!1315776 d!371445))

(declare-fun d!371447 () Bool)

(assert (=> d!371447 (= (isEmpty!7914 (list!5023 (_2!7365 lt!433568))) ((_ is Nil!13341) (list!5023 (_2!7365 lt!433568))))))

(assert (=> d!370679 d!371447))

(declare-fun d!371449 () Bool)

(assert (=> d!371449 (= (list!5023 (_2!7365 lt!433568)) (list!5026 (c!215720 (_2!7365 lt!433568))))))

(declare-fun bs!330529 () Bool)

(assert (= bs!330529 d!371449))

(declare-fun m!1470953 () Bool)

(assert (=> bs!330529 m!1470953))

(assert (=> d!370679 d!371449))

(declare-fun d!371451 () Bool)

(declare-fun lt!434138 () Bool)

(assert (=> d!371451 (= lt!434138 (isEmpty!7914 (list!5026 (c!215720 (_2!7365 lt!433568)))))))

(assert (=> d!371451 (= lt!434138 (= (size!10861 (c!215720 (_2!7365 lt!433568))) 0))))

(assert (=> d!371451 (= (isEmpty!7916 (c!215720 (_2!7365 lt!433568))) lt!434138)))

(declare-fun bs!330530 () Bool)

(assert (= bs!330530 d!371451))

(assert (=> bs!330530 m!1470953))

(assert (=> bs!330530 m!1470953))

(declare-fun m!1470955 () Bool)

(assert (=> bs!330530 m!1470955))

(declare-fun m!1470957 () Bool)

(assert (=> bs!330530 m!1470957))

(assert (=> d!370679 d!371451))

(declare-fun d!371453 () Bool)

(declare-fun c!216116 () Bool)

(assert (=> d!371453 (= c!216116 ((_ is Nil!13341) lt!433662))))

(declare-fun e!844181 () (InoxSet C!7536))

(assert (=> d!371453 (= (content!1874 lt!433662) e!844181)))

(declare-fun b!1316873 () Bool)

(assert (=> b!1316873 (= e!844181 ((as const (Array C!7536 Bool)) false))))

(declare-fun b!1316874 () Bool)

(assert (=> b!1316874 (= e!844181 ((_ map or) (store ((as const (Array C!7536 Bool)) false) (h!18742 lt!433662) true) (content!1874 (t!118280 lt!433662))))))

(assert (= (and d!371453 c!216116) b!1316873))

(assert (= (and d!371453 (not c!216116)) b!1316874))

(declare-fun m!1470959 () Bool)

(assert (=> b!1316874 m!1470959))

(declare-fun m!1470961 () Bool)

(assert (=> b!1316874 m!1470961))

(assert (=> d!370569 d!371453))

(assert (=> d!370569 d!371199))

(declare-fun d!371455 () Bool)

(declare-fun c!216117 () Bool)

(assert (=> d!371455 (= c!216117 ((_ is Nil!13341) (getSuffix!479 lt!433574 lt!433563)))))

(declare-fun e!844182 () (InoxSet C!7536))

(assert (=> d!371455 (= (content!1874 (getSuffix!479 lt!433574 lt!433563)) e!844182)))

(declare-fun b!1316875 () Bool)

(assert (=> b!1316875 (= e!844182 ((as const (Array C!7536 Bool)) false))))

(declare-fun b!1316876 () Bool)

(assert (=> b!1316876 (= e!844182 ((_ map or) (store ((as const (Array C!7536 Bool)) false) (h!18742 (getSuffix!479 lt!433574 lt!433563)) true) (content!1874 (t!118280 (getSuffix!479 lt!433574 lt!433563)))))))

(assert (= (and d!371455 c!216117) b!1316875))

(assert (= (and d!371455 (not c!216117)) b!1316876))

(declare-fun m!1470963 () Bool)

(assert (=> b!1316876 m!1470963))

(declare-fun m!1470965 () Bool)

(assert (=> b!1316876 m!1470965))

(assert (=> d!370569 d!371455))

(assert (=> b!1315352 d!371229))

(assert (=> d!370777 d!371261))

(declare-fun b!1316880 () Bool)

(declare-fun e!844184 () Bool)

(declare-fun lt!434139 () List!13407)

(assert (=> b!1316880 (= e!844184 (or (not (= (_2!7367 (get!4256 lt!433652)) Nil!13341)) (= lt!434139 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652)))))))))

(declare-fun b!1316877 () Bool)

(declare-fun e!844183 () List!13407)

(assert (=> b!1316877 (= e!844183 (_2!7367 (get!4256 lt!433652)))))

(declare-fun d!371457 () Bool)

(assert (=> d!371457 e!844184))

(declare-fun res!591757 () Bool)

(assert (=> d!371457 (=> (not res!591757) (not e!844184))))

(assert (=> d!371457 (= res!591757 (= (content!1874 lt!434139) ((_ map or) (content!1874 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652))))) (content!1874 (_2!7367 (get!4256 lt!433652))))))))

(assert (=> d!371457 (= lt!434139 e!844183)))

(declare-fun c!216118 () Bool)

(assert (=> d!371457 (= c!216118 ((_ is Nil!13341) (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652))))))))

(assert (=> d!371457 (= (++!3398 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652)))) (_2!7367 (get!4256 lt!433652))) lt!434139)))

(declare-fun b!1316879 () Bool)

(declare-fun res!591756 () Bool)

(assert (=> b!1316879 (=> (not res!591756) (not e!844184))))

(assert (=> b!1316879 (= res!591756 (= (size!10858 lt!434139) (+ (size!10858 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652))))) (size!10858 (_2!7367 (get!4256 lt!433652))))))))

(declare-fun b!1316878 () Bool)

(assert (=> b!1316878 (= e!844183 (Cons!13341 (h!18742 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652))))) (++!3398 (t!118280 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652))))) (_2!7367 (get!4256 lt!433652)))))))

(assert (= (and d!371457 c!216118) b!1316877))

(assert (= (and d!371457 (not c!216118)) b!1316878))

(assert (= (and d!371457 res!591757) b!1316879))

(assert (= (and b!1316879 res!591756) b!1316880))

(declare-fun m!1470967 () Bool)

(assert (=> d!371457 m!1470967))

(assert (=> d!371457 m!1468591))

(declare-fun m!1470969 () Bool)

(assert (=> d!371457 m!1470969))

(declare-fun m!1470971 () Bool)

(assert (=> d!371457 m!1470971))

(declare-fun m!1470973 () Bool)

(assert (=> b!1316879 m!1470973))

(assert (=> b!1316879 m!1468591))

(declare-fun m!1470975 () Bool)

(assert (=> b!1316879 m!1470975))

(assert (=> b!1316879 m!1468581))

(declare-fun m!1470977 () Bool)

(assert (=> b!1316878 m!1470977))

(assert (=> b!1315277 d!371457))

(assert (=> b!1315277 d!371129))

(assert (=> b!1315277 d!371131))

(assert (=> b!1315277 d!371137))

(declare-fun d!371459 () Bool)

(declare-fun lt!434140 () Bool)

(assert (=> d!371459 (= lt!434140 (select (content!1874 (t!118280 lt!433574)) lt!433579))))

(declare-fun e!844185 () Bool)

(assert (=> d!371459 (= lt!434140 e!844185)))

(declare-fun res!591759 () Bool)

(assert (=> d!371459 (=> (not res!591759) (not e!844185))))

(assert (=> d!371459 (= res!591759 ((_ is Cons!13341) (t!118280 lt!433574)))))

(assert (=> d!371459 (= (contains!2340 (t!118280 lt!433574) lt!433579) lt!434140)))

(declare-fun b!1316881 () Bool)

(declare-fun e!844186 () Bool)

(assert (=> b!1316881 (= e!844185 e!844186)))

(declare-fun res!591758 () Bool)

(assert (=> b!1316881 (=> res!591758 e!844186)))

(assert (=> b!1316881 (= res!591758 (= (h!18742 (t!118280 lt!433574)) lt!433579))))

(declare-fun b!1316882 () Bool)

(assert (=> b!1316882 (= e!844186 (contains!2340 (t!118280 (t!118280 lt!433574)) lt!433579))))

(assert (= (and d!371459 res!591759) b!1316881))

(assert (= (and b!1316881 (not res!591758)) b!1316882))

(assert (=> d!371459 m!1470527))

(declare-fun m!1470979 () Bool)

(assert (=> d!371459 m!1470979))

(declare-fun m!1470981 () Bool)

(assert (=> b!1316882 m!1470981))

(assert (=> b!1315356 d!371459))

(declare-fun d!371461 () Bool)

(declare-fun lt!434141 () Bool)

(assert (=> d!371461 (= lt!434141 (isEmpty!7914 (list!5023 (_2!7365 lt!433825))))))

(assert (=> d!371461 (= lt!434141 (isEmpty!7916 (c!215720 (_2!7365 lt!433825))))))

(assert (=> d!371461 (= (isEmpty!7906 (_2!7365 lt!433825)) lt!434141)))

(declare-fun bs!330531 () Bool)

(assert (= bs!330531 d!371461))

(declare-fun m!1470983 () Bool)

(assert (=> bs!330531 m!1470983))

(assert (=> bs!330531 m!1470983))

(declare-fun m!1470985 () Bool)

(assert (=> bs!330531 m!1470985))

(declare-fun m!1470987 () Bool)

(assert (=> bs!330531 m!1470987))

(assert (=> b!1315797 d!371461))

(declare-fun d!371463 () Bool)

(declare-fun isBalanced!1278 (Conc!4388) Bool)

(assert (=> d!371463 (= (inv!17719 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34))) (isBalanced!1278 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34)))))))

(declare-fun bs!330532 () Bool)

(assert (= bs!330532 d!371463))

(declare-fun m!1470989 () Bool)

(assert (=> bs!330532 m!1470989))

(assert (=> tb!69885 d!371463))

(declare-fun d!371465 () Bool)

(assert (=> d!371465 (= (list!5023 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34))) (list!5026 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34)))))))

(declare-fun bs!330533 () Bool)

(assert (= bs!330533 d!371465))

(declare-fun m!1470991 () Bool)

(assert (=> bs!330533 m!1470991))

(assert (=> b!1315596 d!371465))

(declare-fun bs!330534 () Bool)

(declare-fun d!371467 () Bool)

(assert (= bs!330534 (and d!371467 b!1315094)))

(declare-fun lambda!53623 () Int)

(assert (=> bs!330534 (= lambda!53623 lambda!53526)))

(declare-fun bs!330535 () Bool)

(assert (= bs!330535 (and d!371467 d!370719)))

(assert (=> bs!330535 (= lambda!53623 lambda!53557)))

(declare-fun bs!330536 () Bool)

(assert (= bs!330536 (and d!371467 d!370803)))

(declare-fun lambda!53624 () Int)

(assert (=> bs!330536 (not (= lambda!53624 lambda!53566))))

(declare-fun bs!330537 () Bool)

(assert (= bs!330537 (and d!371467 d!370805)))

(assert (=> bs!330537 (= lambda!53624 lambda!53571)))

(declare-fun bs!330538 () Bool)

(assert (= bs!330538 (and d!371467 d!371251)))

(assert (=> bs!330538 (not (= lambda!53624 lambda!53603))))

(declare-fun bs!330539 () Bool)

(assert (= bs!330539 (and d!371467 d!371253)))

(assert (=> bs!330539 (not (= lambda!53624 lambda!53606))))

(assert (=> bs!330534 (not (= lambda!53624 lambda!53527))))

(assert (=> bs!330537 (not (= lambda!53624 lambda!53572))))

(declare-fun bs!330540 () Bool)

(assert (= bs!330540 (and d!371467 d!370807)))

(assert (=> bs!330540 (not (= lambda!53624 lambda!53573))))

(assert (=> d!371467 (forall!3294 (map!2930 rules!2550 lambda!53623) lambda!53624)))

(declare-fun lt!434146 () Unit!19396)

(declare-fun e!844189 () Unit!19396)

(assert (=> d!371467 (= lt!434146 e!844189)))

(declare-fun c!216121 () Bool)

(assert (=> d!371467 (= c!216121 ((_ is Nil!13342) rules!2550))))

(assert (=> d!371467 (rulesValidInductive!725 thiss!19762 rules!2550)))

(assert (=> d!371467 (= (lemma!69 rules!2550 thiss!19762 rules!2550) lt!434146)))

(declare-fun b!1316887 () Bool)

(declare-fun Unit!19407 () Unit!19396)

(assert (=> b!1316887 (= e!844189 Unit!19407)))

(declare-fun b!1316888 () Bool)

(declare-fun Unit!19408 () Unit!19396)

(assert (=> b!1316888 (= e!844189 Unit!19408)))

(declare-fun lt!434147 () Unit!19396)

(assert (=> b!1316888 (= lt!434147 (lemma!69 rules!2550 thiss!19762 (t!118281 rules!2550)))))

(assert (= (and d!371467 c!216121) b!1316887))

(assert (= (and d!371467 (not c!216121)) b!1316888))

(declare-fun m!1470993 () Bool)

(assert (=> d!371467 m!1470993))

(assert (=> d!371467 m!1470993))

(declare-fun m!1470995 () Bool)

(assert (=> d!371467 m!1470995))

(assert (=> d!371467 m!1468603))

(declare-fun m!1470997 () Bool)

(assert (=> b!1316888 m!1470997))

(assert (=> d!370719 d!371467))

(declare-fun bs!330542 () Bool)

(declare-fun d!371469 () Bool)

(assert (= bs!330542 (and d!371469 d!370803)))

(declare-fun lambda!53627 () Int)

(assert (=> bs!330542 (not (= lambda!53627 lambda!53566))))

(declare-fun bs!330543 () Bool)

(assert (= bs!330543 (and d!371469 d!370805)))

(assert (=> bs!330543 (= lambda!53627 lambda!53571)))

(declare-fun bs!330544 () Bool)

(assert (= bs!330544 (and d!371469 d!371251)))

(assert (=> bs!330544 (not (= lambda!53627 lambda!53603))))

(declare-fun bs!330545 () Bool)

(assert (= bs!330545 (and d!371469 d!371467)))

(assert (=> bs!330545 (= lambda!53627 lambda!53624)))

(declare-fun bs!330546 () Bool)

(assert (= bs!330546 (and d!371469 d!371253)))

(assert (=> bs!330546 (not (= lambda!53627 lambda!53606))))

(declare-fun bs!330547 () Bool)

(assert (= bs!330547 (and d!371469 b!1315094)))

(assert (=> bs!330547 (not (= lambda!53627 lambda!53527))))

(assert (=> bs!330543 (not (= lambda!53627 lambda!53572))))

(declare-fun bs!330548 () Bool)

(assert (= bs!330548 (and d!371469 d!370807)))

(assert (=> bs!330548 (not (= lambda!53627 lambda!53573))))

(declare-fun b!1316909 () Bool)

(declare-fun e!844203 () Regex!3623)

(assert (=> b!1316909 (= e!844203 EmptyLang!3623)))

(declare-fun e!844206 () Bool)

(assert (=> d!371469 e!844206))

(declare-fun res!591764 () Bool)

(assert (=> d!371469 (=> (not res!591764) (not e!844206))))

(declare-fun lt!434180 () Regex!3623)

(assert (=> d!371469 (= res!591764 (validRegex!1549 lt!434180))))

(declare-fun e!844205 () Regex!3623)

(assert (=> d!371469 (= lt!434180 e!844205)))

(declare-fun c!216131 () Bool)

(declare-fun e!844204 () Bool)

(assert (=> d!371469 (= c!216131 e!844204)))

(declare-fun res!591765 () Bool)

(assert (=> d!371469 (=> (not res!591765) (not e!844204))))

(assert (=> d!371469 (= res!591765 ((_ is Cons!13344) (map!2930 rules!2550 lambda!53557)))))

(assert (=> d!371469 (forall!3294 (map!2930 rules!2550 lambda!53557) lambda!53627)))

(assert (=> d!371469 (= (generalisedUnion!77 (map!2930 rules!2550 lambda!53557)) lt!434180)))

(declare-fun b!1316910 () Bool)

(declare-fun e!844207 () Bool)

(declare-fun e!844202 () Bool)

(assert (=> b!1316910 (= e!844207 e!844202)))

(declare-fun c!216130 () Bool)

(declare-fun isEmpty!7921 (List!13410) Bool)

(declare-fun tail!1888 (List!13410) List!13410)

(assert (=> b!1316910 (= c!216130 (isEmpty!7921 (tail!1888 (map!2930 rules!2550 lambda!53557))))))

(declare-fun b!1316911 () Bool)

(assert (=> b!1316911 (= e!844206 e!844207)))

(declare-fun c!216133 () Bool)

(assert (=> b!1316911 (= c!216133 (isEmpty!7921 (map!2930 rules!2550 lambda!53557)))))

(declare-fun b!1316912 () Bool)

(assert (=> b!1316912 (= e!844202 (= lt!434180 (head!2272 (map!2930 rules!2550 lambda!53557))))))

(declare-fun b!1316913 () Bool)

(assert (=> b!1316913 (= e!844205 e!844203)))

(declare-fun c!216132 () Bool)

(assert (=> b!1316913 (= c!216132 ((_ is Cons!13344) (map!2930 rules!2550 lambda!53557)))))

(declare-fun b!1316914 () Bool)

(assert (=> b!1316914 (= e!844204 (isEmpty!7921 (t!118283 (map!2930 rules!2550 lambda!53557))))))

(declare-fun b!1316915 () Bool)

(declare-fun isEmptyLang!23 (Regex!3623) Bool)

(assert (=> b!1316915 (= e!844207 (isEmptyLang!23 lt!434180))))

(declare-fun b!1316916 () Bool)

(assert (=> b!1316916 (= e!844205 (h!18745 (map!2930 rules!2550 lambda!53557)))))

(declare-fun b!1316917 () Bool)

(declare-fun isUnion!23 (Regex!3623) Bool)

(assert (=> b!1316917 (= e!844202 (isUnion!23 lt!434180))))

(declare-fun b!1316918 () Bool)

(assert (=> b!1316918 (= e!844203 (Union!3623 (h!18745 (map!2930 rules!2550 lambda!53557)) (generalisedUnion!77 (t!118283 (map!2930 rules!2550 lambda!53557)))))))

(assert (= (and d!371469 res!591765) b!1316914))

(assert (= (and d!371469 c!216131) b!1316916))

(assert (= (and d!371469 (not c!216131)) b!1316913))

(assert (= (and b!1316913 c!216132) b!1316918))

(assert (= (and b!1316913 (not c!216132)) b!1316909))

(assert (= (and d!371469 res!591764) b!1316911))

(assert (= (and b!1316911 c!216133) b!1316915))

(assert (= (and b!1316911 (not c!216133)) b!1316910))

(assert (= (and b!1316910 c!216130) b!1316912))

(assert (= (and b!1316910 (not c!216130)) b!1316917))

(declare-fun m!1471025 () Bool)

(assert (=> b!1316918 m!1471025))

(assert (=> b!1316912 m!1469125))

(declare-fun m!1471027 () Bool)

(assert (=> b!1316912 m!1471027))

(declare-fun m!1471029 () Bool)

(assert (=> b!1316917 m!1471029))

(declare-fun m!1471031 () Bool)

(assert (=> d!371469 m!1471031))

(assert (=> d!371469 m!1469125))

(declare-fun m!1471033 () Bool)

(assert (=> d!371469 m!1471033))

(declare-fun m!1471035 () Bool)

(assert (=> b!1316914 m!1471035))

(assert (=> b!1316910 m!1469125))

(declare-fun m!1471037 () Bool)

(assert (=> b!1316910 m!1471037))

(assert (=> b!1316910 m!1471037))

(declare-fun m!1471039 () Bool)

(assert (=> b!1316910 m!1471039))

(assert (=> b!1316911 m!1469125))

(declare-fun m!1471041 () Bool)

(assert (=> b!1316911 m!1471041))

(declare-fun m!1471043 () Bool)

(assert (=> b!1316915 m!1471043))

(assert (=> d!370719 d!371469))

(declare-fun d!371473 () Bool)

(declare-fun lt!434181 () List!13410)

(assert (=> d!371473 (= (size!10856 lt!434181) (size!10857 rules!2550))))

(declare-fun e!844208 () List!13410)

(assert (=> d!371473 (= lt!434181 e!844208)))

(declare-fun c!216134 () Bool)

(assert (=> d!371473 (= c!216134 ((_ is Nil!13342) rules!2550))))

(assert (=> d!371473 (= (map!2930 rules!2550 lambda!53557) lt!434181)))

(declare-fun b!1316919 () Bool)

(assert (=> b!1316919 (= e!844208 Nil!13344)))

(declare-fun b!1316920 () Bool)

(assert (=> b!1316920 (= e!844208 ($colon$colon!151 (map!2930 (t!118281 rules!2550) lambda!53557) (dynLambda!5817 lambda!53557 (h!18743 rules!2550))))))

(assert (= (and d!371473 c!216134) b!1316919))

(assert (= (and d!371473 (not c!216134)) b!1316920))

(declare-fun b_lambda!38155 () Bool)

(assert (=> (not b_lambda!38155) (not b!1316920)))

(declare-fun m!1471045 () Bool)

(assert (=> d!371473 m!1471045))

(assert (=> d!371473 m!1468527))

(declare-fun m!1471047 () Bool)

(assert (=> b!1316920 m!1471047))

(declare-fun m!1471049 () Bool)

(assert (=> b!1316920 m!1471049))

(assert (=> b!1316920 m!1471047))

(assert (=> b!1316920 m!1471049))

(declare-fun m!1471051 () Bool)

(assert (=> b!1316920 m!1471051))

(assert (=> d!370719 d!371473))

(declare-fun b!1316956 () Bool)

(declare-fun res!591798 () Bool)

(declare-fun e!844230 () Bool)

(assert (=> b!1316956 (=> (not res!591798) (not e!844230))))

(declare-fun lt!434209 () Option!2576)

(assert (=> b!1316956 (= res!591798 (= (++!3398 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434209)))) (_2!7367 (get!4256 lt!434209))) (list!5023 lt!433570)))))

(declare-fun b!1316957 () Bool)

(declare-fun res!591799 () Bool)

(assert (=> b!1316957 (=> (not res!591799) (not e!844230))))

(assert (=> b!1316957 (= res!591799 (< (size!10858 (_2!7367 (get!4256 lt!434209))) (size!10858 (list!5023 lt!433570))))))

(declare-fun b!1316958 () Bool)

(declare-fun e!844229 () Option!2576)

(assert (=> b!1316958 (= e!844229 None!2575)))

(declare-fun b!1316959 () Bool)

(declare-fun e!844228 () Bool)

(assert (=> b!1316959 (= e!844228 e!844230)))

(declare-fun res!591797 () Bool)

(assert (=> b!1316959 (=> (not res!591797) (not e!844230))))

(assert (=> b!1316959 (= res!591797 (matchR!1625 (regex!2309 (h!18743 rules!2550)) (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434209))))))))

(declare-fun b!1316961 () Bool)

(declare-fun e!844231 () Bool)

(declare-datatypes ((tuple2!12966 0))(
  ( (tuple2!12967 (_1!7369 List!13407) (_2!7369 List!13407)) )
))
(declare-fun findLongestMatchInner!268 (Regex!3623 List!13407 Int List!13407 List!13407 Int) tuple2!12966)

(assert (=> b!1316961 (= e!844231 (matchR!1625 (regex!2309 (h!18743 rules!2550)) (_1!7369 (findLongestMatchInner!268 (regex!2309 (h!18743 rules!2550)) Nil!13341 (size!10858 Nil!13341) (list!5023 lt!433570) (list!5023 lt!433570) (size!10858 (list!5023 lt!433570))))))))

(declare-fun b!1316962 () Bool)

(declare-fun res!591794 () Bool)

(assert (=> b!1316962 (=> (not res!591794) (not e!844230))))

(assert (=> b!1316962 (= res!591794 (= (rule!4050 (_1!7367 (get!4256 lt!434209))) (h!18743 rules!2550)))))

(declare-fun d!371475 () Bool)

(assert (=> d!371475 e!844228))

(declare-fun res!591796 () Bool)

(assert (=> d!371475 (=> res!591796 e!844228)))

(assert (=> d!371475 (= res!591796 (isEmpty!7912 lt!434209))))

(assert (=> d!371475 (= lt!434209 e!844229)))

(declare-fun c!216139 () Bool)

(declare-fun lt!434210 () tuple2!12966)

(assert (=> d!371475 (= c!216139 (isEmpty!7914 (_1!7369 lt!434210)))))

(declare-fun findLongestMatch!224 (Regex!3623 List!13407) tuple2!12966)

(assert (=> d!371475 (= lt!434210 (findLongestMatch!224 (regex!2309 (h!18743 rules!2550)) (list!5023 lt!433570)))))

(assert (=> d!371475 (ruleValid!562 thiss!19762 (h!18743 rules!2550))))

(assert (=> d!371475 (= (maxPrefixOneRule!578 thiss!19762 (h!18743 rules!2550) (list!5023 lt!433570)) lt!434209)))

(declare-fun b!1316960 () Bool)

(declare-fun res!591795 () Bool)

(assert (=> b!1316960 (=> (not res!591795) (not e!844230))))

(assert (=> b!1316960 (= res!591795 (= (value!75439 (_1!7367 (get!4256 lt!434209))) (apply!3031 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!434209)))) (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!434209)))))))))

(declare-fun b!1316963 () Bool)

(assert (=> b!1316963 (= e!844229 (Some!2575 (tuple2!12963 (Token!4281 (apply!3031 (transformation!2309 (h!18743 rules!2550)) (seqFromList!1596 (_1!7369 lt!434210))) (h!18743 rules!2550) (size!10849 (seqFromList!1596 (_1!7369 lt!434210))) (_1!7369 lt!434210)) (_2!7369 lt!434210))))))

(declare-fun lt!434208 () Unit!19396)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!252 (Regex!3623 List!13407) Unit!19396)

(assert (=> b!1316963 (= lt!434208 (longestMatchIsAcceptedByMatchOrIsEmpty!252 (regex!2309 (h!18743 rules!2550)) (list!5023 lt!433570)))))

(declare-fun res!591793 () Bool)

(assert (=> b!1316963 (= res!591793 (isEmpty!7914 (_1!7369 (findLongestMatchInner!268 (regex!2309 (h!18743 rules!2550)) Nil!13341 (size!10858 Nil!13341) (list!5023 lt!433570) (list!5023 lt!433570) (size!10858 (list!5023 lt!433570))))))))

(assert (=> b!1316963 (=> res!591793 e!844231)))

(assert (=> b!1316963 e!844231))

(declare-fun lt!434206 () Unit!19396)

(assert (=> b!1316963 (= lt!434206 lt!434208)))

(declare-fun lt!434207 () Unit!19396)

(declare-fun lemmaSemiInverse!322 (TokenValueInjection!4458 BalanceConc!8716) Unit!19396)

(assert (=> b!1316963 (= lt!434207 (lemmaSemiInverse!322 (transformation!2309 (h!18743 rules!2550)) (seqFromList!1596 (_1!7369 lt!434210))))))

(declare-fun b!1316964 () Bool)

(assert (=> b!1316964 (= e!844230 (= (size!10848 (_1!7367 (get!4256 lt!434209))) (size!10858 (originalCharacters!3171 (_1!7367 (get!4256 lt!434209))))))))

(assert (= (and d!371475 c!216139) b!1316958))

(assert (= (and d!371475 (not c!216139)) b!1316963))

(assert (= (and b!1316963 (not res!591793)) b!1316961))

(assert (= (and d!371475 (not res!591796)) b!1316959))

(assert (= (and b!1316959 res!591797) b!1316956))

(assert (= (and b!1316956 res!591798) b!1316957))

(assert (= (and b!1316957 res!591799) b!1316962))

(assert (= (and b!1316962 res!591794) b!1316960))

(assert (= (and b!1316960 res!591795) b!1316964))

(declare-fun m!1471123 () Bool)

(assert (=> b!1316957 m!1471123))

(declare-fun m!1471125 () Bool)

(assert (=> b!1316957 m!1471125))

(assert (=> b!1316957 m!1468409))

(assert (=> b!1316957 m!1468583))

(declare-fun m!1471127 () Bool)

(assert (=> d!371475 m!1471127))

(declare-fun m!1471129 () Bool)

(assert (=> d!371475 m!1471129))

(assert (=> d!371475 m!1468409))

(declare-fun m!1471131 () Bool)

(assert (=> d!371475 m!1471131))

(assert (=> d!371475 m!1470413))

(assert (=> b!1316964 m!1471123))

(declare-fun m!1471133 () Bool)

(assert (=> b!1316964 m!1471133))

(declare-fun m!1471135 () Bool)

(assert (=> b!1316963 m!1471135))

(declare-fun m!1471137 () Bool)

(assert (=> b!1316963 m!1471137))

(assert (=> b!1316963 m!1471135))

(declare-fun m!1471139 () Bool)

(assert (=> b!1316963 m!1471139))

(declare-fun m!1471141 () Bool)

(assert (=> b!1316963 m!1471141))

(assert (=> b!1316963 m!1471135))

(declare-fun m!1471143 () Bool)

(assert (=> b!1316963 m!1471143))

(assert (=> b!1316963 m!1468409))

(assert (=> b!1316963 m!1468583))

(assert (=> b!1316963 m!1471135))

(assert (=> b!1316963 m!1468409))

(declare-fun m!1471145 () Bool)

(assert (=> b!1316963 m!1471145))

(declare-fun m!1471147 () Bool)

(assert (=> b!1316963 m!1471147))

(assert (=> b!1316963 m!1471141))

(assert (=> b!1316963 m!1468409))

(assert (=> b!1316963 m!1468409))

(assert (=> b!1316963 m!1468583))

(declare-fun m!1471149 () Bool)

(assert (=> b!1316963 m!1471149))

(assert (=> b!1316959 m!1471123))

(declare-fun m!1471151 () Bool)

(assert (=> b!1316959 m!1471151))

(assert (=> b!1316959 m!1471151))

(declare-fun m!1471153 () Bool)

(assert (=> b!1316959 m!1471153))

(assert (=> b!1316959 m!1471153))

(declare-fun m!1471155 () Bool)

(assert (=> b!1316959 m!1471155))

(assert (=> b!1316960 m!1471123))

(declare-fun m!1471157 () Bool)

(assert (=> b!1316960 m!1471157))

(assert (=> b!1316960 m!1471157))

(declare-fun m!1471159 () Bool)

(assert (=> b!1316960 m!1471159))

(assert (=> b!1316961 m!1471141))

(assert (=> b!1316961 m!1468409))

(assert (=> b!1316961 m!1468583))

(assert (=> b!1316961 m!1471141))

(assert (=> b!1316961 m!1468409))

(assert (=> b!1316961 m!1468409))

(assert (=> b!1316961 m!1468583))

(assert (=> b!1316961 m!1471149))

(declare-fun m!1471161 () Bool)

(assert (=> b!1316961 m!1471161))

(assert (=> b!1316962 m!1471123))

(assert (=> b!1316956 m!1471123))

(assert (=> b!1316956 m!1471151))

(assert (=> b!1316956 m!1471151))

(assert (=> b!1316956 m!1471153))

(assert (=> b!1316956 m!1471153))

(declare-fun m!1471163 () Bool)

(assert (=> b!1316956 m!1471163))

(assert (=> bm!89384 d!371475))

(assert (=> d!370575 d!371199))

(declare-fun d!371495 () Bool)

(declare-fun lt!434213 () Int)

(assert (=> d!371495 (>= lt!434213 0)))

(declare-fun e!844234 () Int)

(assert (=> d!371495 (= lt!434213 e!844234)))

(declare-fun c!216142 () Bool)

(assert (=> d!371495 (= c!216142 ((_ is Nil!13344) lt!433622))))

(assert (=> d!371495 (= (size!10856 lt!433622) lt!434213)))

(declare-fun b!1316969 () Bool)

(assert (=> b!1316969 (= e!844234 0)))

(declare-fun b!1316970 () Bool)

(assert (=> b!1316970 (= e!844234 (+ 1 (size!10856 (t!118283 lt!433622))))))

(assert (= (and d!371495 c!216142) b!1316969))

(assert (= (and d!371495 (not c!216142)) b!1316970))

(declare-fun m!1471165 () Bool)

(assert (=> b!1316970 m!1471165))

(assert (=> d!370545 d!371495))

(declare-fun d!371497 () Bool)

(declare-fun lt!434216 () Int)

(assert (=> d!371497 (>= lt!434216 0)))

(declare-fun e!844237 () Int)

(assert (=> d!371497 (= lt!434216 e!844237)))

(declare-fun c!216145 () Bool)

(assert (=> d!371497 (= c!216145 ((_ is Nil!13342) rules!2550))))

(assert (=> d!371497 (= (size!10857 rules!2550) lt!434216)))

(declare-fun b!1316975 () Bool)

(assert (=> b!1316975 (= e!844237 0)))

(declare-fun b!1316976 () Bool)

(assert (=> b!1316976 (= e!844237 (+ 1 (size!10857 (t!118281 rules!2550))))))

(assert (= (and d!371497 c!216145) b!1316975))

(assert (= (and d!371497 (not c!216145)) b!1316976))

(assert (=> b!1316976 m!1470777))

(assert (=> d!370545 d!371497))

(declare-fun d!371499 () Bool)

(declare-fun charsToBigInt!0 (List!13406 Int) Int)

(assert (=> d!371499 (= (inv!15 (value!75439 t1!34)) (= (charsToBigInt!0 (text!17242 (value!75439 t1!34)) 0) (value!75434 (value!75439 t1!34))))))

(declare-fun bs!330552 () Bool)

(assert (= bs!330552 d!371499))

(declare-fun m!1471167 () Bool)

(assert (=> bs!330552 m!1471167))

(assert (=> b!1315581 d!371499))

(declare-fun bs!330553 () Bool)

(declare-fun d!371501 () Bool)

(assert (= bs!330553 (and d!371501 b!1315067)))

(declare-fun lambda!53630 () Int)

(assert (=> bs!330553 (= lambda!53630 lambda!53529)))

(declare-fun bs!330554 () Bool)

(assert (= bs!330554 (and d!371501 d!370783)))

(assert (=> bs!330554 (not (= lambda!53630 lambda!53560))))

(declare-fun bs!330555 () Bool)

(assert (= bs!330555 (and d!371501 d!371247)))

(assert (=> bs!330555 (= lambda!53630 lambda!53602)))

(declare-fun bs!330556 () Bool)

(assert (= bs!330556 (and d!371501 b!1315070)))

(assert (=> bs!330556 (not (= lambda!53630 lambda!53528))))

(declare-fun bs!330557 () Bool)

(assert (= bs!330557 (and d!371501 d!370785)))

(assert (=> bs!330557 (not (= lambda!53630 lambda!53563))))

(assert (=> d!371501 true))

(declare-fun lt!434219 () Bool)

(assert (=> d!371501 (= lt!434219 (rulesValidInductive!725 thiss!19762 rules!2550))))

(assert (=> d!371501 (= lt!434219 (forall!3293 rules!2550 lambda!53630))))

(assert (=> d!371501 (= (rulesValid!837 thiss!19762 rules!2550) lt!434219)))

(declare-fun bs!330558 () Bool)

(assert (= bs!330558 d!371501))

(assert (=> bs!330558 m!1468603))

(declare-fun m!1471169 () Bool)

(assert (=> bs!330558 m!1471169))

(assert (=> d!370765 d!371501))

(declare-fun b!1316977 () Bool)

(declare-fun e!844238 () Bool)

(assert (=> b!1316977 (= e!844238 (matchR!1625 (derivativeStep!899 (derivativeStep!899 lt!433562 (head!2273 lt!433574)) (head!2273 (tail!1884 lt!433574))) (tail!1884 (tail!1884 lt!433574))))))

(declare-fun bm!89482 () Bool)

(declare-fun call!89487 () Bool)

(assert (=> bm!89482 (= call!89487 (isEmpty!7914 (tail!1884 lt!433574)))))

(declare-fun b!1316978 () Bool)

(declare-fun res!591807 () Bool)

(declare-fun e!844239 () Bool)

(assert (=> b!1316978 (=> res!591807 e!844239)))

(declare-fun e!844242 () Bool)

(assert (=> b!1316978 (= res!591807 e!844242)))

(declare-fun res!591806 () Bool)

(assert (=> b!1316978 (=> (not res!591806) (not e!844242))))

(declare-fun lt!434220 () Bool)

(assert (=> b!1316978 (= res!591806 lt!434220)))

(declare-fun b!1316979 () Bool)

(declare-fun res!591805 () Bool)

(assert (=> b!1316979 (=> (not res!591805) (not e!844242))))

(assert (=> b!1316979 (= res!591805 (isEmpty!7914 (tail!1884 (tail!1884 lt!433574))))))

(declare-fun d!371503 () Bool)

(declare-fun e!844244 () Bool)

(assert (=> d!371503 e!844244))

(declare-fun c!216146 () Bool)

(assert (=> d!371503 (= c!216146 ((_ is EmptyExpr!3623) (derivativeStep!899 lt!433562 (head!2273 lt!433574))))))

(assert (=> d!371503 (= lt!434220 e!844238)))

(declare-fun c!216148 () Bool)

(assert (=> d!371503 (= c!216148 (isEmpty!7914 (tail!1884 lt!433574)))))

(assert (=> d!371503 (validRegex!1549 (derivativeStep!899 lt!433562 (head!2273 lt!433574)))))

(assert (=> d!371503 (= (matchR!1625 (derivativeStep!899 lt!433562 (head!2273 lt!433574)) (tail!1884 lt!433574)) lt!434220)))

(declare-fun b!1316980 () Bool)

(declare-fun e!844243 () Bool)

(assert (=> b!1316980 (= e!844244 e!844243)))

(declare-fun c!216147 () Bool)

(assert (=> b!1316980 (= c!216147 ((_ is EmptyLang!3623) (derivativeStep!899 lt!433562 (head!2273 lt!433574))))))

(declare-fun b!1316981 () Bool)

(declare-fun e!844241 () Bool)

(declare-fun e!844240 () Bool)

(assert (=> b!1316981 (= e!844241 e!844240)))

(declare-fun res!591802 () Bool)

(assert (=> b!1316981 (=> res!591802 e!844240)))

(assert (=> b!1316981 (= res!591802 call!89487)))

(declare-fun b!1316982 () Bool)

(assert (=> b!1316982 (= e!844240 (not (= (head!2273 (tail!1884 lt!433574)) (c!215721 (derivativeStep!899 lt!433562 (head!2273 lt!433574))))))))

(declare-fun b!1316983 () Bool)

(assert (=> b!1316983 (= e!844243 (not lt!434220))))

(declare-fun b!1316984 () Bool)

(assert (=> b!1316984 (= e!844238 (nullable!1147 (derivativeStep!899 lt!433562 (head!2273 lt!433574))))))

(declare-fun b!1316985 () Bool)

(declare-fun res!591800 () Bool)

(assert (=> b!1316985 (=> res!591800 e!844239)))

(assert (=> b!1316985 (= res!591800 (not ((_ is ElementMatch!3623) (derivativeStep!899 lt!433562 (head!2273 lt!433574)))))))

(assert (=> b!1316985 (= e!844243 e!844239)))

(declare-fun b!1316986 () Bool)

(assert (=> b!1316986 (= e!844239 e!844241)))

(declare-fun res!591801 () Bool)

(assert (=> b!1316986 (=> (not res!591801) (not e!844241))))

(assert (=> b!1316986 (= res!591801 (not lt!434220))))

(declare-fun b!1316987 () Bool)

(declare-fun res!591804 () Bool)

(assert (=> b!1316987 (=> res!591804 e!844240)))

(assert (=> b!1316987 (= res!591804 (not (isEmpty!7914 (tail!1884 (tail!1884 lt!433574)))))))

(declare-fun b!1316988 () Bool)

(assert (=> b!1316988 (= e!844242 (= (head!2273 (tail!1884 lt!433574)) (c!215721 (derivativeStep!899 lt!433562 (head!2273 lt!433574)))))))

(declare-fun b!1316989 () Bool)

(assert (=> b!1316989 (= e!844244 (= lt!434220 call!89487))))

(declare-fun b!1316990 () Bool)

(declare-fun res!591803 () Bool)

(assert (=> b!1316990 (=> (not res!591803) (not e!844242))))

(assert (=> b!1316990 (= res!591803 (not call!89487))))

(assert (= (and d!371503 c!216148) b!1316984))

(assert (= (and d!371503 (not c!216148)) b!1316977))

(assert (= (and d!371503 c!216146) b!1316989))

(assert (= (and d!371503 (not c!216146)) b!1316980))

(assert (= (and b!1316980 c!216147) b!1316983))

(assert (= (and b!1316980 (not c!216147)) b!1316985))

(assert (= (and b!1316985 (not res!591800)) b!1316978))

(assert (= (and b!1316978 res!591806) b!1316990))

(assert (= (and b!1316990 res!591803) b!1316979))

(assert (= (and b!1316979 res!591805) b!1316988))

(assert (= (and b!1316978 (not res!591807)) b!1316986))

(assert (= (and b!1316986 res!591801) b!1316981))

(assert (= (and b!1316981 (not res!591802)) b!1316987))

(assert (= (and b!1316987 (not res!591804)) b!1316982))

(assert (= (or b!1316989 b!1316990 b!1316981) bm!89482))

(assert (=> b!1316987 m!1468643))

(assert (=> b!1316987 m!1470515))

(assert (=> b!1316987 m!1470515))

(declare-fun m!1471171 () Bool)

(assert (=> b!1316987 m!1471171))

(assert (=> b!1316988 m!1468643))

(declare-fun m!1471173 () Bool)

(assert (=> b!1316988 m!1471173))

(assert (=> bm!89482 m!1468643))

(assert (=> bm!89482 m!1468659))

(assert (=> b!1316977 m!1468643))

(assert (=> b!1316977 m!1471173))

(assert (=> b!1316977 m!1468665))

(assert (=> b!1316977 m!1471173))

(declare-fun m!1471175 () Bool)

(assert (=> b!1316977 m!1471175))

(assert (=> b!1316977 m!1468643))

(assert (=> b!1316977 m!1470515))

(assert (=> b!1316977 m!1471175))

(assert (=> b!1316977 m!1470515))

(declare-fun m!1471177 () Bool)

(assert (=> b!1316977 m!1471177))

(assert (=> b!1316979 m!1468643))

(assert (=> b!1316979 m!1470515))

(assert (=> b!1316979 m!1470515))

(assert (=> b!1316979 m!1471171))

(assert (=> d!371503 m!1468643))

(assert (=> d!371503 m!1468659))

(assert (=> d!371503 m!1468665))

(declare-fun m!1471179 () Bool)

(assert (=> d!371503 m!1471179))

(assert (=> b!1316984 m!1468665))

(declare-fun m!1471181 () Bool)

(assert (=> b!1316984 m!1471181))

(assert (=> b!1316982 m!1468643))

(assert (=> b!1316982 m!1471173))

(assert (=> b!1315341 d!371503))

(declare-fun bm!89491 () Bool)

(declare-fun c!216161 () Bool)

(declare-fun call!89496 () Regex!3623)

(assert (=> bm!89491 (= call!89496 (derivativeStep!899 (ite c!216161 (regOne!7759 lt!433562) (regOne!7758 lt!433562)) (head!2273 lt!433574)))))

(declare-fun b!1317011 () Bool)

(declare-fun c!216162 () Bool)

(assert (=> b!1317011 (= c!216162 (nullable!1147 (regOne!7758 lt!433562)))))

(declare-fun e!844256 () Regex!3623)

(declare-fun e!844259 () Regex!3623)

(assert (=> b!1317011 (= e!844256 e!844259)))

(declare-fun b!1317013 () Bool)

(declare-fun call!89499 () Regex!3623)

(assert (=> b!1317013 (= e!844259 (Union!3623 (Concat!6023 call!89499 (regTwo!7758 lt!433562)) EmptyLang!3623))))

(declare-fun bm!89492 () Bool)

(declare-fun call!89498 () Regex!3623)

(assert (=> bm!89492 (= call!89499 call!89498)))

(declare-fun b!1317014 () Bool)

(assert (=> b!1317014 (= c!216161 ((_ is Union!3623) lt!433562))))

(declare-fun e!844258 () Regex!3623)

(declare-fun e!844257 () Regex!3623)

(assert (=> b!1317014 (= e!844258 e!844257)))

(declare-fun b!1317012 () Bool)

(assert (=> b!1317012 (= e!844256 (Concat!6023 call!89498 lt!433562))))

(declare-fun d!371505 () Bool)

(declare-fun lt!434223 () Regex!3623)

(assert (=> d!371505 (validRegex!1549 lt!434223)))

(declare-fun e!844255 () Regex!3623)

(assert (=> d!371505 (= lt!434223 e!844255)))

(declare-fun c!216163 () Bool)

(assert (=> d!371505 (= c!216163 (or ((_ is EmptyExpr!3623) lt!433562) ((_ is EmptyLang!3623) lt!433562)))))

(assert (=> d!371505 (validRegex!1549 lt!433562)))

(assert (=> d!371505 (= (derivativeStep!899 lt!433562 (head!2273 lt!433574)) lt!434223)))

(declare-fun bm!89493 () Bool)

(declare-fun call!89497 () Regex!3623)

(assert (=> bm!89493 (= call!89498 call!89497)))

(declare-fun b!1317015 () Bool)

(assert (=> b!1317015 (= e!844257 e!844256)))

(declare-fun c!216159 () Bool)

(assert (=> b!1317015 (= c!216159 ((_ is Star!3623) lt!433562))))

(declare-fun bm!89494 () Bool)

(assert (=> bm!89494 (= call!89497 (derivativeStep!899 (ite c!216161 (regTwo!7759 lt!433562) (ite c!216159 (reg!3952 lt!433562) (ite c!216162 (regTwo!7758 lt!433562) (regOne!7758 lt!433562)))) (head!2273 lt!433574)))))

(declare-fun b!1317016 () Bool)

(assert (=> b!1317016 (= e!844258 (ite (= (head!2273 lt!433574) (c!215721 lt!433562)) EmptyExpr!3623 EmptyLang!3623))))

(declare-fun b!1317017 () Bool)

(assert (=> b!1317017 (= e!844255 e!844258)))

(declare-fun c!216160 () Bool)

(assert (=> b!1317017 (= c!216160 ((_ is ElementMatch!3623) lt!433562))))

(declare-fun b!1317018 () Bool)

(assert (=> b!1317018 (= e!844259 (Union!3623 (Concat!6023 call!89496 (regTwo!7758 lt!433562)) call!89499))))

(declare-fun b!1317019 () Bool)

(assert (=> b!1317019 (= e!844255 EmptyLang!3623)))

(declare-fun b!1317020 () Bool)

(assert (=> b!1317020 (= e!844257 (Union!3623 call!89496 call!89497))))

(assert (= (and d!371505 c!216163) b!1317019))

(assert (= (and d!371505 (not c!216163)) b!1317017))

(assert (= (and b!1317017 c!216160) b!1317016))

(assert (= (and b!1317017 (not c!216160)) b!1317014))

(assert (= (and b!1317014 c!216161) b!1317020))

(assert (= (and b!1317014 (not c!216161)) b!1317015))

(assert (= (and b!1317015 c!216159) b!1317012))

(assert (= (and b!1317015 (not c!216159)) b!1317011))

(assert (= (and b!1317011 c!216162) b!1317018))

(assert (= (and b!1317011 (not c!216162)) b!1317013))

(assert (= (or b!1317018 b!1317013) bm!89492))

(assert (= (or b!1317012 bm!89492) bm!89493))

(assert (= (or b!1317020 b!1317018) bm!89491))

(assert (= (or b!1317020 bm!89493) bm!89494))

(assert (=> bm!89491 m!1468661))

(declare-fun m!1471183 () Bool)

(assert (=> bm!89491 m!1471183))

(declare-fun m!1471185 () Bool)

(assert (=> b!1317011 m!1471185))

(declare-fun m!1471187 () Bool)

(assert (=> d!371505 m!1471187))

(assert (=> d!371505 m!1468669))

(assert (=> bm!89494 m!1468661))

(declare-fun m!1471189 () Bool)

(assert (=> bm!89494 m!1471189))

(assert (=> b!1315341 d!371505))

(assert (=> b!1315341 d!371229))

(assert (=> b!1315341 d!371259))

(declare-fun d!371507 () Bool)

(declare-fun lt!434224 () Int)

(assert (=> d!371507 (>= lt!434224 0)))

(declare-fun e!844260 () Int)

(assert (=> d!371507 (= lt!434224 e!844260)))

(declare-fun c!216164 () Bool)

(assert (=> d!371507 (= c!216164 ((_ is Nil!13341) (originalCharacters!3171 t1!34)))))

(assert (=> d!371507 (= (size!10858 (originalCharacters!3171 t1!34)) lt!434224)))

(declare-fun b!1317021 () Bool)

(assert (=> b!1317021 (= e!844260 0)))

(declare-fun b!1317022 () Bool)

(assert (=> b!1317022 (= e!844260 (+ 1 (size!10858 (t!118280 (originalCharacters!3171 t1!34)))))))

(assert (= (and d!371507 c!216164) b!1317021))

(assert (= (and d!371507 (not c!216164)) b!1317022))

(declare-fun m!1471191 () Bool)

(assert (=> b!1317022 m!1471191))

(assert (=> b!1315594 d!371507))

(declare-fun d!371509 () Bool)

(assert (=> d!371509 true))

(declare-fun order!8041 () Int)

(declare-fun lambda!53633 () Int)

(declare-fun order!8039 () Int)

(declare-fun dynLambda!5833 (Int Int) Int)

(declare-fun dynLambda!5834 (Int Int) Int)

(assert (=> d!371509 (< (dynLambda!5833 order!8039 (toValue!3532 (transformation!2309 (rule!4050 t2!34)))) (dynLambda!5834 order!8041 lambda!53633))))

(declare-fun Forall2!419 (Int) Bool)

(assert (=> d!371509 (= (equivClasses!827 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (toValue!3532 (transformation!2309 (rule!4050 t2!34)))) (Forall2!419 lambda!53633))))

(declare-fun bs!330559 () Bool)

(assert (= bs!330559 d!371509))

(declare-fun m!1471193 () Bool)

(assert (=> bs!330559 m!1471193))

(assert (=> b!1315632 d!371509))

(declare-fun d!371511 () Bool)

(assert (=> d!371511 (dynLambda!5823 lambda!53529 (rule!4050 t2!34))))

(assert (=> d!371511 true))

(declare-fun _$7!702 () Unit!19396)

(assert (=> d!371511 (= (choose!8050 rules!2550 lambda!53529 (rule!4050 t2!34)) _$7!702)))

(declare-fun b_lambda!38157 () Bool)

(assert (=> (not b_lambda!38157) (not d!371511)))

(declare-fun bs!330560 () Bool)

(assert (= bs!330560 d!371511))

(assert (=> bs!330560 m!1469247))

(assert (=> d!370771 d!371511))

(declare-fun d!371513 () Bool)

(declare-fun res!591810 () Bool)

(declare-fun e!844263 () Bool)

(assert (=> d!371513 (=> res!591810 e!844263)))

(assert (=> d!371513 (= res!591810 ((_ is Nil!13342) rules!2550))))

(assert (=> d!371513 (= (forall!3293 rules!2550 lambda!53529) e!844263)))

(declare-fun b!1317027 () Bool)

(declare-fun e!844264 () Bool)

(assert (=> b!1317027 (= e!844263 e!844264)))

(declare-fun res!591811 () Bool)

(assert (=> b!1317027 (=> (not res!591811) (not e!844264))))

(assert (=> b!1317027 (= res!591811 (dynLambda!5823 lambda!53529 (h!18743 rules!2550)))))

(declare-fun b!1317028 () Bool)

(assert (=> b!1317028 (= e!844264 (forall!3293 (t!118281 rules!2550) lambda!53529))))

(assert (= (and d!371513 (not res!591810)) b!1317027))

(assert (= (and b!1317027 res!591811) b!1317028))

(declare-fun b_lambda!38159 () Bool)

(assert (=> (not b_lambda!38159) (not b!1317027)))

(declare-fun m!1471195 () Bool)

(assert (=> b!1317027 m!1471195))

(declare-fun m!1471197 () Bool)

(assert (=> b!1317028 m!1471197))

(assert (=> d!370771 d!371513))

(declare-fun d!371515 () Bool)

(declare-fun lt!434225 () Bool)

(assert (=> d!371515 (= lt!434225 (select (content!1877 rules!2550) lt!433805))))

(declare-fun e!844265 () Bool)

(assert (=> d!371515 (= lt!434225 e!844265)))

(declare-fun res!591812 () Bool)

(assert (=> d!371515 (=> (not res!591812) (not e!844265))))

(assert (=> d!371515 (= res!591812 ((_ is Cons!13342) rules!2550))))

(assert (=> d!371515 (= (contains!2339 rules!2550 lt!433805) lt!434225)))

(declare-fun b!1317029 () Bool)

(declare-fun e!844266 () Bool)

(assert (=> b!1317029 (= e!844265 e!844266)))

(declare-fun res!591813 () Bool)

(assert (=> b!1317029 (=> res!591813 e!844266)))

(assert (=> b!1317029 (= res!591813 (= (h!18743 rules!2550) lt!433805))))

(declare-fun b!1317030 () Bool)

(assert (=> b!1317030 (= e!844266 (contains!2339 (t!118281 rules!2550) lt!433805))))

(assert (= (and d!371515 res!591812) b!1317029))

(assert (= (and b!1317029 (not res!591813)) b!1317030))

(assert (=> d!371515 m!1469149))

(declare-fun m!1471199 () Bool)

(assert (=> d!371515 m!1471199))

(declare-fun m!1471201 () Bool)

(assert (=> b!1317030 m!1471201))

(assert (=> b!1315725 d!371515))

(declare-fun d!371517 () Bool)

(declare-fun res!591814 () Bool)

(declare-fun e!844267 () Bool)

(assert (=> d!371517 (=> (not res!591814) (not e!844267))))

(assert (=> d!371517 (= res!591814 (validRegex!1549 (regex!2309 (rule!4050 t2!34))))))

(assert (=> d!371517 (= (ruleValid!562 thiss!19762 (rule!4050 t2!34)) e!844267)))

(declare-fun b!1317031 () Bool)

(declare-fun res!591815 () Bool)

(assert (=> b!1317031 (=> (not res!591815) (not e!844267))))

(assert (=> b!1317031 (= res!591815 (not (nullable!1147 (regex!2309 (rule!4050 t2!34)))))))

(declare-fun b!1317032 () Bool)

(assert (=> b!1317032 (= e!844267 (not (= (tag!2571 (rule!4050 t2!34)) (String!16232 ""))))))

(assert (= (and d!371517 res!591814) b!1317031))

(assert (= (and b!1317031 res!591815) b!1317032))

(declare-fun m!1471203 () Bool)

(assert (=> d!371517 m!1471203))

(declare-fun m!1471205 () Bool)

(assert (=> b!1317031 m!1471205))

(assert (=> bs!330360 d!371517))

(declare-fun d!371519 () Bool)

(assert (=> d!371519 true))

(assert (=> d!371519 true))

(declare-fun res!591818 () Bool)

(assert (=> d!371519 (= (choose!8048 lambda!53525) res!591818)))

(assert (=> d!370689 d!371519))

(declare-fun b!1317033 () Bool)

(declare-fun res!591824 () Bool)

(declare-fun e!844270 () Bool)

(assert (=> b!1317033 (=> (not res!591824) (not e!844270))))

(declare-fun lt!434229 () Option!2576)

(assert (=> b!1317033 (= res!591824 (= (++!3398 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434229)))) (_2!7367 (get!4256 lt!434229))) lt!433577))))

(declare-fun b!1317034 () Bool)

(declare-fun res!591825 () Bool)

(assert (=> b!1317034 (=> (not res!591825) (not e!844270))))

(assert (=> b!1317034 (= res!591825 (< (size!10858 (_2!7367 (get!4256 lt!434229))) (size!10858 lt!433577)))))

(declare-fun b!1317035 () Bool)

(declare-fun e!844269 () Option!2576)

(assert (=> b!1317035 (= e!844269 None!2575)))

(declare-fun b!1317036 () Bool)

(declare-fun e!844268 () Bool)

(assert (=> b!1317036 (= e!844268 e!844270)))

(declare-fun res!591823 () Bool)

(assert (=> b!1317036 (=> (not res!591823) (not e!844270))))

(assert (=> b!1317036 (= res!591823 (matchR!1625 (regex!2309 (h!18743 rules!2550)) (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!434229))))))))

(declare-fun b!1317038 () Bool)

(declare-fun e!844271 () Bool)

(assert (=> b!1317038 (= e!844271 (matchR!1625 (regex!2309 (h!18743 rules!2550)) (_1!7369 (findLongestMatchInner!268 (regex!2309 (h!18743 rules!2550)) Nil!13341 (size!10858 Nil!13341) lt!433577 lt!433577 (size!10858 lt!433577)))))))

(declare-fun b!1317039 () Bool)

(declare-fun res!591820 () Bool)

(assert (=> b!1317039 (=> (not res!591820) (not e!844270))))

(assert (=> b!1317039 (= res!591820 (= (rule!4050 (_1!7367 (get!4256 lt!434229))) (h!18743 rules!2550)))))

(declare-fun d!371521 () Bool)

(assert (=> d!371521 e!844268))

(declare-fun res!591822 () Bool)

(assert (=> d!371521 (=> res!591822 e!844268)))

(assert (=> d!371521 (= res!591822 (isEmpty!7912 lt!434229))))

(assert (=> d!371521 (= lt!434229 e!844269)))

(declare-fun c!216165 () Bool)

(declare-fun lt!434230 () tuple2!12966)

(assert (=> d!371521 (= c!216165 (isEmpty!7914 (_1!7369 lt!434230)))))

(assert (=> d!371521 (= lt!434230 (findLongestMatch!224 (regex!2309 (h!18743 rules!2550)) lt!433577))))

(assert (=> d!371521 (ruleValid!562 thiss!19762 (h!18743 rules!2550))))

(assert (=> d!371521 (= (maxPrefixOneRule!578 thiss!19762 (h!18743 rules!2550) lt!433577) lt!434229)))

(declare-fun b!1317037 () Bool)

(declare-fun res!591821 () Bool)

(assert (=> b!1317037 (=> (not res!591821) (not e!844270))))

(assert (=> b!1317037 (= res!591821 (= (value!75439 (_1!7367 (get!4256 lt!434229))) (apply!3031 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!434229)))) (seqFromList!1596 (originalCharacters!3171 (_1!7367 (get!4256 lt!434229)))))))))

(declare-fun b!1317040 () Bool)

(assert (=> b!1317040 (= e!844269 (Some!2575 (tuple2!12963 (Token!4281 (apply!3031 (transformation!2309 (h!18743 rules!2550)) (seqFromList!1596 (_1!7369 lt!434230))) (h!18743 rules!2550) (size!10849 (seqFromList!1596 (_1!7369 lt!434230))) (_1!7369 lt!434230)) (_2!7369 lt!434230))))))

(declare-fun lt!434228 () Unit!19396)

(assert (=> b!1317040 (= lt!434228 (longestMatchIsAcceptedByMatchOrIsEmpty!252 (regex!2309 (h!18743 rules!2550)) lt!433577))))

(declare-fun res!591819 () Bool)

(assert (=> b!1317040 (= res!591819 (isEmpty!7914 (_1!7369 (findLongestMatchInner!268 (regex!2309 (h!18743 rules!2550)) Nil!13341 (size!10858 Nil!13341) lt!433577 lt!433577 (size!10858 lt!433577)))))))

(assert (=> b!1317040 (=> res!591819 e!844271)))

(assert (=> b!1317040 e!844271))

(declare-fun lt!434226 () Unit!19396)

(assert (=> b!1317040 (= lt!434226 lt!434228)))

(declare-fun lt!434227 () Unit!19396)

(assert (=> b!1317040 (= lt!434227 (lemmaSemiInverse!322 (transformation!2309 (h!18743 rules!2550)) (seqFromList!1596 (_1!7369 lt!434230))))))

(declare-fun b!1317041 () Bool)

(assert (=> b!1317041 (= e!844270 (= (size!10848 (_1!7367 (get!4256 lt!434229))) (size!10858 (originalCharacters!3171 (_1!7367 (get!4256 lt!434229))))))))

(assert (= (and d!371521 c!216165) b!1317035))

(assert (= (and d!371521 (not c!216165)) b!1317040))

(assert (= (and b!1317040 (not res!591819)) b!1317038))

(assert (= (and d!371521 (not res!591822)) b!1317036))

(assert (= (and b!1317036 res!591823) b!1317033))

(assert (= (and b!1317033 res!591824) b!1317034))

(assert (= (and b!1317034 res!591825) b!1317039))

(assert (= (and b!1317039 res!591820) b!1317037))

(assert (= (and b!1317037 res!591821) b!1317041))

(declare-fun m!1471207 () Bool)

(assert (=> b!1317034 m!1471207))

(declare-fun m!1471209 () Bool)

(assert (=> b!1317034 m!1471209))

(assert (=> b!1317034 m!1469113))

(declare-fun m!1471211 () Bool)

(assert (=> d!371521 m!1471211))

(declare-fun m!1471213 () Bool)

(assert (=> d!371521 m!1471213))

(declare-fun m!1471215 () Bool)

(assert (=> d!371521 m!1471215))

(assert (=> d!371521 m!1470413))

(assert (=> b!1317041 m!1471207))

(declare-fun m!1471217 () Bool)

(assert (=> b!1317041 m!1471217))

(declare-fun m!1471219 () Bool)

(assert (=> b!1317040 m!1471219))

(declare-fun m!1471221 () Bool)

(assert (=> b!1317040 m!1471221))

(assert (=> b!1317040 m!1471219))

(declare-fun m!1471223 () Bool)

(assert (=> b!1317040 m!1471223))

(assert (=> b!1317040 m!1471141))

(assert (=> b!1317040 m!1471219))

(declare-fun m!1471225 () Bool)

(assert (=> b!1317040 m!1471225))

(assert (=> b!1317040 m!1469113))

(assert (=> b!1317040 m!1471219))

(declare-fun m!1471227 () Bool)

(assert (=> b!1317040 m!1471227))

(declare-fun m!1471229 () Bool)

(assert (=> b!1317040 m!1471229))

(assert (=> b!1317040 m!1471141))

(assert (=> b!1317040 m!1469113))

(declare-fun m!1471231 () Bool)

(assert (=> b!1317040 m!1471231))

(assert (=> b!1317036 m!1471207))

(declare-fun m!1471233 () Bool)

(assert (=> b!1317036 m!1471233))

(assert (=> b!1317036 m!1471233))

(declare-fun m!1471235 () Bool)

(assert (=> b!1317036 m!1471235))

(assert (=> b!1317036 m!1471235))

(declare-fun m!1471237 () Bool)

(assert (=> b!1317036 m!1471237))

(assert (=> b!1317037 m!1471207))

(declare-fun m!1471239 () Bool)

(assert (=> b!1317037 m!1471239))

(assert (=> b!1317037 m!1471239))

(declare-fun m!1471241 () Bool)

(assert (=> b!1317037 m!1471241))

(assert (=> b!1317038 m!1471141))

(assert (=> b!1317038 m!1469113))

(assert (=> b!1317038 m!1471141))

(assert (=> b!1317038 m!1469113))

(assert (=> b!1317038 m!1471231))

(declare-fun m!1471243 () Bool)

(assert (=> b!1317038 m!1471243))

(assert (=> b!1317039 m!1471207))

(assert (=> b!1317033 m!1471207))

(assert (=> b!1317033 m!1471233))

(assert (=> b!1317033 m!1471233))

(assert (=> b!1317033 m!1471235))

(assert (=> b!1317033 m!1471235))

(declare-fun m!1471245 () Bool)

(assert (=> b!1317033 m!1471245))

(assert (=> bm!89410 d!371521))

(declare-fun d!371523 () Bool)

(declare-fun lostCauseFct!112 (Regex!3623) Bool)

(assert (=> d!371523 (= (lostCause!275 lt!433562) (lostCauseFct!112 lt!433562))))

(declare-fun bs!330561 () Bool)

(assert (= bs!330561 d!371523))

(declare-fun m!1471247 () Bool)

(assert (=> bs!330561 m!1471247))

(assert (=> b!1315642 d!371523))

(declare-fun d!371525 () Bool)

(assert (=> d!371525 (= (list!5022 lt!433808) (list!5027 (c!215722 lt!433808)))))

(declare-fun bs!330562 () Bool)

(assert (= bs!330562 d!371525))

(declare-fun m!1471249 () Bool)

(assert (=> bs!330562 m!1471249))

(assert (=> d!370759 d!371525))

(declare-fun d!371527 () Bool)

(declare-fun e!844272 () Bool)

(assert (=> d!371527 e!844272))

(declare-fun res!591826 () Bool)

(assert (=> d!371527 (=> (not res!591826) (not e!844272))))

(declare-fun lt!434231 () BalanceConc!8718)

(assert (=> d!371527 (= res!591826 (= (list!5022 lt!434231) (Cons!13343 t1!34 Nil!13343)))))

(assert (=> d!371527 (= lt!434231 (choose!8053 t1!34))))

(assert (=> d!371527 (= (singleton!382 t1!34) lt!434231)))

(declare-fun b!1317042 () Bool)

(assert (=> b!1317042 (= e!844272 (isBalanced!1276 (c!215722 lt!434231)))))

(assert (= (and d!371527 res!591826) b!1317042))

(declare-fun m!1471251 () Bool)

(assert (=> d!371527 m!1471251))

(declare-fun m!1471253 () Bool)

(assert (=> d!371527 m!1471253))

(declare-fun m!1471255 () Bool)

(assert (=> b!1317042 m!1471255))

(assert (=> d!370759 d!371527))

(declare-fun bs!330563 () Bool)

(declare-fun d!371529 () Bool)

(assert (= bs!330563 (and d!371529 d!371509)))

(declare-fun lambda!53634 () Int)

(assert (=> bs!330563 (= (= (toValue!3532 (transformation!2309 (h!18743 rules!2550))) (toValue!3532 (transformation!2309 (rule!4050 t2!34)))) (= lambda!53634 lambda!53633))))

(assert (=> d!371529 true))

(assert (=> d!371529 (< (dynLambda!5833 order!8039 (toValue!3532 (transformation!2309 (h!18743 rules!2550)))) (dynLambda!5834 order!8041 lambda!53634))))

(assert (=> d!371529 (= (equivClasses!827 (toChars!3391 (transformation!2309 (h!18743 rules!2550))) (toValue!3532 (transformation!2309 (h!18743 rules!2550)))) (Forall2!419 lambda!53634))))

(declare-fun bs!330564 () Bool)

(assert (= bs!330564 d!371529))

(declare-fun m!1471257 () Bool)

(assert (=> bs!330564 m!1471257))

(assert (=> b!1315805 d!371529))

(declare-fun d!371531 () Bool)

(declare-fun lt!434232 () Bool)

(assert (=> d!371531 (= lt!434232 (select (content!1877 (t!118281 rules!2550)) (rule!4050 t2!34)))))

(declare-fun e!844273 () Bool)

(assert (=> d!371531 (= lt!434232 e!844273)))

(declare-fun res!591827 () Bool)

(assert (=> d!371531 (=> (not res!591827) (not e!844273))))

(assert (=> d!371531 (= res!591827 ((_ is Cons!13342) (t!118281 rules!2550)))))

(assert (=> d!371531 (= (contains!2339 (t!118281 rules!2550) (rule!4050 t2!34)) lt!434232)))

(declare-fun b!1317043 () Bool)

(declare-fun e!844274 () Bool)

(assert (=> b!1317043 (= e!844273 e!844274)))

(declare-fun res!591828 () Bool)

(assert (=> b!1317043 (=> res!591828 e!844274)))

(assert (=> b!1317043 (= res!591828 (= (h!18743 (t!118281 rules!2550)) (rule!4050 t2!34)))))

(declare-fun b!1317044 () Bool)

(assert (=> b!1317044 (= e!844274 (contains!2339 (t!118281 (t!118281 rules!2550)) (rule!4050 t2!34)))))

(assert (= (and d!371531 res!591827) b!1317043))

(assert (= (and b!1317043 (not res!591828)) b!1317044))

(assert (=> d!371531 m!1470365))

(declare-fun m!1471259 () Bool)

(assert (=> d!371531 m!1471259))

(declare-fun m!1471261 () Bool)

(assert (=> b!1317044 m!1471261))

(assert (=> b!1315649 d!371531))

(declare-fun d!371533 () Bool)

(declare-fun c!216168 () Bool)

(assert (=> d!371533 (= c!216168 ((_ is Nil!13344) (map!2930 rules!2550 lambda!53526)))))

(declare-fun e!844277 () (InoxSet Regex!3623))

(assert (=> d!371533 (= (content!1873 (map!2930 rules!2550 lambda!53526)) e!844277)))

(declare-fun b!1317049 () Bool)

(assert (=> b!1317049 (= e!844277 ((as const (Array Regex!3623 Bool)) false))))

(declare-fun b!1317050 () Bool)

(assert (=> b!1317050 (= e!844277 ((_ map or) (store ((as const (Array Regex!3623 Bool)) false) (h!18745 (map!2930 rules!2550 lambda!53526)) true) (content!1873 (t!118283 (map!2930 rules!2550 lambda!53526)))))))

(assert (= (and d!371533 c!216168) b!1317049))

(assert (= (and d!371533 (not c!216168)) b!1317050))

(declare-fun m!1471263 () Bool)

(assert (=> b!1317050 m!1471263))

(declare-fun m!1471265 () Bool)

(assert (=> b!1317050 m!1471265))

(assert (=> d!370537 d!371533))

(declare-fun d!371535 () Bool)

(declare-fun lt!434233 () Int)

(assert (=> d!371535 (= lt!434233 (size!10858 (list!5023 lt!433565)))))

(assert (=> d!371535 (= lt!434233 (size!10861 (c!215720 lt!433565)))))

(assert (=> d!371535 (= (size!10849 lt!433565) lt!434233)))

(declare-fun bs!330565 () Bool)

(assert (= bs!330565 d!371535))

(assert (=> bs!330565 m!1468381))

(assert (=> bs!330565 m!1468381))

(declare-fun m!1471267 () Bool)

(assert (=> bs!330565 m!1471267))

(declare-fun m!1471269 () Bool)

(assert (=> bs!330565 m!1471269))

(assert (=> b!1315289 d!371535))

(declare-fun d!371537 () Bool)

(assert (=> d!371537 (= (isEmpty!7915 (_1!7366 lt!433781)) ((_ is Nil!13343) (_1!7366 lt!433781)))))

(assert (=> b!1315630 d!371537))

(declare-fun d!371539 () Bool)

(declare-fun lt!434236 () Bool)

(assert (=> d!371539 (= lt!434236 (isEmpty!7915 (list!5022 (_1!7365 lt!433827))))))

(assert (=> d!371539 (= lt!434236 (isEmpty!7920 (c!215722 (_1!7365 lt!433827))))))

(assert (=> d!371539 (= (isEmpty!7917 (_1!7365 lt!433827)) lt!434236)))

(declare-fun bs!330566 () Bool)

(assert (= bs!330566 d!371539))

(assert (=> bs!330566 m!1469325))

(assert (=> bs!330566 m!1469325))

(declare-fun m!1471271 () Bool)

(assert (=> bs!330566 m!1471271))

(declare-fun m!1471273 () Bool)

(assert (=> bs!330566 m!1471273))

(assert (=> b!1315801 d!371539))

(assert (=> b!1315768 d!370727))

(declare-fun d!371541 () Bool)

(declare-fun lt!434237 () Int)

(assert (=> d!371541 (>= lt!434237 0)))

(declare-fun e!844278 () Int)

(assert (=> d!371541 (= lt!434237 e!844278)))

(declare-fun c!216169 () Bool)

(assert (=> d!371541 (= c!216169 ((_ is Nil!13341) (_2!7366 lt!433689)))))

(assert (=> d!371541 (= (size!10858 (_2!7366 lt!433689)) lt!434237)))

(declare-fun b!1317051 () Bool)

(assert (=> b!1317051 (= e!844278 0)))

(declare-fun b!1317052 () Bool)

(assert (=> b!1317052 (= e!844278 (+ 1 (size!10858 (t!118280 (_2!7366 lt!433689)))))))

(assert (= (and d!371541 c!216169) b!1317051))

(assert (= (and d!371541 (not c!216169)) b!1317052))

(declare-fun m!1471275 () Bool)

(assert (=> b!1317052 m!1471275))

(assert (=> b!1315399 d!371541))

(declare-fun d!371543 () Bool)

(declare-fun lt!434238 () Int)

(assert (=> d!371543 (>= lt!434238 0)))

(declare-fun e!844279 () Int)

(assert (=> d!371543 (= lt!434238 e!844279)))

(declare-fun c!216170 () Bool)

(assert (=> d!371543 (= c!216170 ((_ is Nil!13341) (list!5023 lt!433558)))))

(assert (=> d!371543 (= (size!10858 (list!5023 lt!433558)) lt!434238)))

(declare-fun b!1317053 () Bool)

(assert (=> b!1317053 (= e!844279 0)))

(declare-fun b!1317054 () Bool)

(assert (=> b!1317054 (= e!844279 (+ 1 (size!10858 (t!118280 (list!5023 lt!433558)))))))

(assert (= (and d!371543 c!216170) b!1317053))

(assert (= (and d!371543 (not c!216170)) b!1317054))

(declare-fun m!1471277 () Bool)

(assert (=> b!1317054 m!1471277))

(assert (=> b!1315399 d!371543))

(declare-fun d!371545 () Bool)

(assert (=> d!371545 (= (list!5022 (_1!7365 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t2!34))))) (list!5027 (c!215722 (_1!7365 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t2!34)))))))))

(declare-fun bs!330567 () Bool)

(assert (= bs!330567 d!371545))

(declare-fun m!1471279 () Bool)

(assert (=> bs!330567 m!1471279))

(assert (=> d!370789 d!371545))

(declare-fun d!371547 () Bool)

(declare-fun lt!434239 () Int)

(assert (=> d!371547 (= lt!434239 (size!10859 (list!5022 (_1!7365 lt!433825))))))

(assert (=> d!371547 (= lt!434239 (size!10863 (c!215722 (_1!7365 lt!433825))))))

(assert (=> d!371547 (= (size!10860 (_1!7365 lt!433825)) lt!434239)))

(declare-fun bs!330568 () Bool)

(assert (= bs!330568 d!371547))

(assert (=> bs!330568 m!1470607))

(assert (=> bs!330568 m!1470607))

(declare-fun m!1471281 () Bool)

(assert (=> bs!330568 m!1471281))

(declare-fun m!1471283 () Bool)

(assert (=> bs!330568 m!1471283))

(assert (=> d!370789 d!371547))

(assert (=> d!370789 d!370795))

(assert (=> d!370789 d!370797))

(assert (=> d!370789 d!370767))

(declare-fun b!1317055 () Bool)

(declare-fun res!591830 () Bool)

(declare-fun e!844281 () Bool)

(assert (=> b!1317055 (=> (not res!591830) (not e!844281))))

(declare-fun lt!434240 () tuple2!12958)

(assert (=> b!1317055 (= res!591830 (= (list!5022 (_1!7365 lt!434240)) (_1!7366 (lexList!542 thiss!19762 rules!2550 (list!5023 (print!778 thiss!19762 (singletonSeq!888 t2!34)))))))))

(declare-fun b!1317056 () Bool)

(assert (=> b!1317056 (= e!844281 (= (list!5023 (_2!7365 lt!434240)) (_2!7366 (lexList!542 thiss!19762 rules!2550 (list!5023 (print!778 thiss!19762 (singletonSeq!888 t2!34)))))))))

(declare-fun b!1317058 () Bool)

(declare-fun e!844280 () Bool)

(assert (=> b!1317058 (= e!844280 (= (_2!7365 lt!434240) (print!778 thiss!19762 (singletonSeq!888 t2!34))))))

(declare-fun b!1317059 () Bool)

(declare-fun e!844282 () Bool)

(assert (=> b!1317059 (= e!844280 e!844282)))

(declare-fun res!591829 () Bool)

(assert (=> b!1317059 (= res!591829 (< (size!10849 (_2!7365 lt!434240)) (size!10849 (print!778 thiss!19762 (singletonSeq!888 t2!34)))))))

(assert (=> b!1317059 (=> (not res!591829) (not e!844282))))

(declare-fun d!371549 () Bool)

(assert (=> d!371549 e!844281))

(declare-fun res!591831 () Bool)

(assert (=> d!371549 (=> (not res!591831) (not e!844281))))

(assert (=> d!371549 (= res!591831 e!844280)))

(declare-fun c!216171 () Bool)

(assert (=> d!371549 (= c!216171 (> (size!10860 (_1!7365 lt!434240)) 0))))

(assert (=> d!371549 (= lt!434240 (lexTailRecV2!365 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t2!34)) (BalanceConc!8717 Empty!4388) (print!778 thiss!19762 (singletonSeq!888 t2!34)) (BalanceConc!8719 Empty!4389)))))

(assert (=> d!371549 (= (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t2!34))) lt!434240)))

(declare-fun b!1317057 () Bool)

(assert (=> b!1317057 (= e!844282 (not (isEmpty!7917 (_1!7365 lt!434240))))))

(assert (= (and d!371549 c!216171) b!1317059))

(assert (= (and d!371549 (not c!216171)) b!1317058))

(assert (= (and b!1317059 res!591829) b!1317057))

(assert (= (and d!371549 res!591831) b!1317055))

(assert (= (and b!1317055 res!591830) b!1317056))

(declare-fun m!1471285 () Bool)

(assert (=> b!1317055 m!1471285))

(assert (=> b!1317055 m!1468331))

(declare-fun m!1471287 () Bool)

(assert (=> b!1317055 m!1471287))

(assert (=> b!1317055 m!1471287))

(declare-fun m!1471289 () Bool)

(assert (=> b!1317055 m!1471289))

(declare-fun m!1471291 () Bool)

(assert (=> b!1317056 m!1471291))

(assert (=> b!1317056 m!1468331))

(assert (=> b!1317056 m!1471287))

(assert (=> b!1317056 m!1471287))

(assert (=> b!1317056 m!1471289))

(declare-fun m!1471293 () Bool)

(assert (=> b!1317059 m!1471293))

(assert (=> b!1317059 m!1468331))

(declare-fun m!1471295 () Bool)

(assert (=> b!1317059 m!1471295))

(declare-fun m!1471297 () Bool)

(assert (=> d!371549 m!1471297))

(assert (=> d!371549 m!1468331))

(assert (=> d!371549 m!1468331))

(declare-fun m!1471299 () Bool)

(assert (=> d!371549 m!1471299))

(declare-fun m!1471301 () Bool)

(assert (=> b!1317057 m!1471301))

(assert (=> d!370789 d!371549))

(declare-fun d!371551 () Bool)

(assert (=> d!371551 (= (list!5022 (singletonSeq!888 t2!34)) (list!5027 (c!215722 (singletonSeq!888 t2!34))))))

(declare-fun bs!330569 () Bool)

(assert (= bs!330569 d!371551))

(declare-fun m!1471303 () Bool)

(assert (=> bs!330569 m!1471303))

(assert (=> d!370789 d!371551))

(declare-fun bs!330570 () Bool)

(declare-fun d!371553 () Bool)

(assert (= bs!330570 (and d!371553 d!371509)))

(declare-fun lambda!53635 () Int)

(assert (=> bs!330570 (= (= (toValue!3532 (transformation!2309 (rule!4050 t1!34))) (toValue!3532 (transformation!2309 (rule!4050 t2!34)))) (= lambda!53635 lambda!53633))))

(declare-fun bs!330571 () Bool)

(assert (= bs!330571 (and d!371553 d!371529)))

(assert (=> bs!330571 (= (= (toValue!3532 (transformation!2309 (rule!4050 t1!34))) (toValue!3532 (transformation!2309 (h!18743 rules!2550)))) (= lambda!53635 lambda!53634))))

(assert (=> d!371553 true))

(assert (=> d!371553 (< (dynLambda!5833 order!8039 (toValue!3532 (transformation!2309 (rule!4050 t1!34)))) (dynLambda!5834 order!8041 lambda!53635))))

(assert (=> d!371553 (= (equivClasses!827 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (toValue!3532 (transformation!2309 (rule!4050 t1!34)))) (Forall2!419 lambda!53635))))

(declare-fun bs!330572 () Bool)

(assert (= bs!330572 d!371553))

(declare-fun m!1471305 () Bool)

(assert (=> bs!330572 m!1471305))

(assert (=> b!1315312 d!371553))

(declare-fun b!1317060 () Bool)

(declare-fun e!844283 () Bool)

(assert (=> b!1317060 (= e!844283 (not (isEmpty!7920 (right!11799 (c!215722 lt!433808)))))))

(declare-fun b!1317061 () Bool)

(declare-fun res!591832 () Bool)

(assert (=> b!1317061 (=> (not res!591832) (not e!844283))))

(assert (=> b!1317061 (= res!591832 (isBalanced!1276 (right!11799 (c!215722 lt!433808))))))

(declare-fun b!1317062 () Bool)

(declare-fun res!591836 () Bool)

(assert (=> b!1317062 (=> (not res!591836) (not e!844283))))

(assert (=> b!1317062 (= res!591836 (<= (- (height!625 (left!11469 (c!215722 lt!433808))) (height!625 (right!11799 (c!215722 lt!433808)))) 1))))

(declare-fun b!1317063 () Bool)

(declare-fun res!591833 () Bool)

(assert (=> b!1317063 (=> (not res!591833) (not e!844283))))

(assert (=> b!1317063 (= res!591833 (isBalanced!1276 (left!11469 (c!215722 lt!433808))))))

(declare-fun b!1317064 () Bool)

(declare-fun e!844284 () Bool)

(assert (=> b!1317064 (= e!844284 e!844283)))

(declare-fun res!591834 () Bool)

(assert (=> b!1317064 (=> (not res!591834) (not e!844283))))

(assert (=> b!1317064 (= res!591834 (<= (- 1) (- (height!625 (left!11469 (c!215722 lt!433808))) (height!625 (right!11799 (c!215722 lt!433808))))))))

(declare-fun b!1317065 () Bool)

(declare-fun res!591835 () Bool)

(assert (=> b!1317065 (=> (not res!591835) (not e!844283))))

(assert (=> b!1317065 (= res!591835 (not (isEmpty!7920 (left!11469 (c!215722 lt!433808)))))))

(declare-fun d!371555 () Bool)

(declare-fun res!591837 () Bool)

(assert (=> d!371555 (=> res!591837 e!844284)))

(assert (=> d!371555 (= res!591837 (not ((_ is Node!4389) (c!215722 lt!433808))))))

(assert (=> d!371555 (= (isBalanced!1276 (c!215722 lt!433808)) e!844284)))

(assert (= (and d!371555 (not res!591837)) b!1317064))

(assert (= (and b!1317064 res!591834) b!1317062))

(assert (= (and b!1317062 res!591836) b!1317063))

(assert (= (and b!1317063 res!591833) b!1317061))

(assert (= (and b!1317061 res!591832) b!1317065))

(assert (= (and b!1317065 res!591835) b!1317060))

(declare-fun m!1471307 () Bool)

(assert (=> b!1317064 m!1471307))

(declare-fun m!1471309 () Bool)

(assert (=> b!1317064 m!1471309))

(declare-fun m!1471311 () Bool)

(assert (=> b!1317065 m!1471311))

(declare-fun m!1471313 () Bool)

(assert (=> b!1317061 m!1471313))

(declare-fun m!1471315 () Bool)

(assert (=> b!1317063 m!1471315))

(declare-fun m!1471317 () Bool)

(assert (=> b!1317060 m!1471317))

(assert (=> b!1317062 m!1471307))

(assert (=> b!1317062 m!1471309))

(assert (=> b!1315733 d!371555))

(declare-fun b!1317069 () Bool)

(declare-fun e!844286 () Bool)

(declare-fun lt!434241 () List!13407)

(assert (=> b!1317069 (= e!844286 (or (not (= (_2!7367 (get!4256 lt!433820)) Nil!13341)) (= lt!434241 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820)))))))))

(declare-fun b!1317066 () Bool)

(declare-fun e!844285 () List!13407)

(assert (=> b!1317066 (= e!844285 (_2!7367 (get!4256 lt!433820)))))

(declare-fun d!371557 () Bool)

(assert (=> d!371557 e!844286))

(declare-fun res!591839 () Bool)

(assert (=> d!371557 (=> (not res!591839) (not e!844286))))

(assert (=> d!371557 (= res!591839 (= (content!1874 lt!434241) ((_ map or) (content!1874 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820))))) (content!1874 (_2!7367 (get!4256 lt!433820))))))))

(assert (=> d!371557 (= lt!434241 e!844285)))

(declare-fun c!216172 () Bool)

(assert (=> d!371557 (= c!216172 ((_ is Nil!13341) (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820))))))))

(assert (=> d!371557 (= (++!3398 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820)))) (_2!7367 (get!4256 lt!433820))) lt!434241)))

(declare-fun b!1317068 () Bool)

(declare-fun res!591838 () Bool)

(assert (=> b!1317068 (=> (not res!591838) (not e!844286))))

(assert (=> b!1317068 (= res!591838 (= (size!10858 lt!434241) (+ (size!10858 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820))))) (size!10858 (_2!7367 (get!4256 lt!433820))))))))

(declare-fun b!1317067 () Bool)

(assert (=> b!1317067 (= e!844285 (Cons!13341 (h!18742 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820))))) (++!3398 (t!118280 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820))))) (_2!7367 (get!4256 lt!433820)))))))

(assert (= (and d!371557 c!216172) b!1317066))

(assert (= (and d!371557 (not c!216172)) b!1317067))

(assert (= (and d!371557 res!591839) b!1317068))

(assert (= (and b!1317068 res!591838) b!1317069))

(declare-fun m!1471319 () Bool)

(assert (=> d!371557 m!1471319))

(assert (=> d!371557 m!1469279))

(declare-fun m!1471321 () Bool)

(assert (=> d!371557 m!1471321))

(declare-fun m!1471323 () Bool)

(assert (=> d!371557 m!1471323))

(declare-fun m!1471325 () Bool)

(assert (=> b!1317068 m!1471325))

(assert (=> b!1317068 m!1469279))

(declare-fun m!1471327 () Bool)

(assert (=> b!1317068 m!1471327))

(assert (=> b!1317068 m!1469271))

(declare-fun m!1471329 () Bool)

(assert (=> b!1317067 m!1471329))

(assert (=> b!1315780 d!371557))

(assert (=> b!1315780 d!371237))

(assert (=> b!1315780 d!371239))

(assert (=> b!1315780 d!371219))

(declare-fun b!1317071 () Bool)

(declare-fun res!591843 () Bool)

(declare-fun e!844288 () Bool)

(assert (=> b!1317071 (=> (not res!591843) (not e!844288))))

(assert (=> b!1317071 (= res!591843 (= (head!2273 lt!433563) (head!2273 lt!433668)))))

(declare-fun b!1317072 () Bool)

(assert (=> b!1317072 (= e!844288 (isPrefix!1073 (tail!1884 lt!433563) (tail!1884 lt!433668)))))

(declare-fun d!371559 () Bool)

(declare-fun e!844289 () Bool)

(assert (=> d!371559 e!844289))

(declare-fun res!591840 () Bool)

(assert (=> d!371559 (=> res!591840 e!844289)))

(declare-fun lt!434242 () Bool)

(assert (=> d!371559 (= res!591840 (not lt!434242))))

(declare-fun e!844287 () Bool)

(assert (=> d!371559 (= lt!434242 e!844287)))

(declare-fun res!591842 () Bool)

(assert (=> d!371559 (=> res!591842 e!844287)))

(assert (=> d!371559 (= res!591842 ((_ is Nil!13341) lt!433563))))

(assert (=> d!371559 (= (isPrefix!1073 lt!433563 lt!433668) lt!434242)))

(declare-fun b!1317073 () Bool)

(assert (=> b!1317073 (= e!844289 (>= (size!10858 lt!433668) (size!10858 lt!433563)))))

(declare-fun b!1317070 () Bool)

(assert (=> b!1317070 (= e!844287 e!844288)))

(declare-fun res!591841 () Bool)

(assert (=> b!1317070 (=> (not res!591841) (not e!844288))))

(assert (=> b!1317070 (= res!591841 (not ((_ is Nil!13341) lt!433668)))))

(assert (= (and d!371559 (not res!591842)) b!1317070))

(assert (= (and b!1317070 res!591841) b!1317071))

(assert (= (and b!1317071 res!591843) b!1317072))

(assert (= (and d!371559 (not res!591840)) b!1317073))

(assert (=> b!1317071 m!1469133))

(declare-fun m!1471331 () Bool)

(assert (=> b!1317071 m!1471331))

(assert (=> b!1317072 m!1469137))

(declare-fun m!1471333 () Bool)

(assert (=> b!1317072 m!1471333))

(assert (=> b!1317072 m!1469137))

(assert (=> b!1317072 m!1471333))

(declare-fun m!1471335 () Bool)

(assert (=> b!1317072 m!1471335))

(declare-fun m!1471337 () Bool)

(assert (=> b!1317073 m!1471337))

(assert (=> b!1317073 m!1468633))

(assert (=> b!1315849 d!371559))

(assert (=> d!370727 d!371261))

(declare-fun d!371561 () Bool)

(assert (=> d!371561 (= (inv!17 (value!75439 t2!34)) (= (charsToBigInt!1 (text!17241 (value!75439 t2!34))) (value!75431 (value!75439 t2!34))))))

(declare-fun bs!330573 () Bool)

(assert (= bs!330573 d!371561))

(declare-fun m!1471339 () Bool)

(assert (=> bs!330573 m!1471339))

(assert (=> b!1315652 d!371561))

(declare-fun bs!330574 () Bool)

(declare-fun d!371563 () Bool)

(assert (= bs!330574 (and d!371563 b!1315067)))

(declare-fun lambda!53636 () Int)

(assert (=> bs!330574 (not (= lambda!53636 lambda!53529))))

(declare-fun bs!330575 () Bool)

(assert (= bs!330575 (and d!371563 d!370783)))

(assert (=> bs!330575 (= (= lambda!53563 lambda!53528) (= lambda!53636 lambda!53560))))

(declare-fun bs!330576 () Bool)

(assert (= bs!330576 (and d!371563 d!371247)))

(assert (=> bs!330576 (not (= lambda!53636 lambda!53602))))

(declare-fun bs!330577 () Bool)

(assert (= bs!330577 (and d!371563 b!1315070)))

(assert (=> bs!330577 (not (= lambda!53636 lambda!53528))))

(declare-fun bs!330578 () Bool)

(assert (= bs!330578 (and d!371563 d!370785)))

(assert (=> bs!330578 (not (= lambda!53636 lambda!53563))))

(declare-fun bs!330579 () Bool)

(assert (= bs!330579 (and d!371563 d!371501)))

(assert (=> bs!330579 (not (= lambda!53636 lambda!53630))))

(assert (=> d!371563 true))

(assert (=> d!371563 (< (dynLambda!5824 order!8025 lambda!53563) (dynLambda!5824 order!8025 lambda!53636))))

(assert (=> d!371563 (= (exists!320 rules!2550 lambda!53563) (not (forall!3293 rules!2550 lambda!53636)))))

(declare-fun bs!330580 () Bool)

(assert (= bs!330580 d!371563))

(declare-fun m!1471341 () Bool)

(assert (=> bs!330580 m!1471341))

(assert (=> d!370785 d!371563))

(declare-fun bs!330581 () Bool)

(declare-fun d!371565 () Bool)

(assert (= bs!330581 (and d!371565 b!1315067)))

(declare-fun lambda!53639 () Int)

(assert (=> bs!330581 (not (= lambda!53639 lambda!53529))))

(declare-fun bs!330582 () Bool)

(assert (= bs!330582 (and d!371565 d!371563)))

(assert (=> bs!330582 (not (= lambda!53639 lambda!53636))))

(declare-fun bs!330583 () Bool)

(assert (= bs!330583 (and d!371565 d!370783)))

(assert (=> bs!330583 (not (= lambda!53639 lambda!53560))))

(declare-fun bs!330584 () Bool)

(assert (= bs!330584 (and d!371565 d!371247)))

(assert (=> bs!330584 (not (= lambda!53639 lambda!53602))))

(declare-fun bs!330585 () Bool)

(assert (= bs!330585 (and d!371565 b!1315070)))

(assert (=> bs!330585 (not (= lambda!53639 lambda!53528))))

(declare-fun bs!330586 () Bool)

(assert (= bs!330586 (and d!371565 d!370785)))

(assert (=> bs!330586 (= lambda!53639 lambda!53563)))

(declare-fun bs!330587 () Bool)

(assert (= bs!330587 (and d!371565 d!371501)))

(assert (=> bs!330587 (not (= lambda!53639 lambda!53630))))

(assert (=> d!371565 true))

(assert (=> d!371565 true))

(assert (=> d!371565 (< (dynLambda!5825 order!8027 lambda!53526) (dynLambda!5824 order!8025 lambda!53639))))

(assert (=> d!371565 (exists!320 rules!2550 lambda!53639)))

(assert (=> d!371565 true))

(declare-fun _$24!64 () Unit!19396)

(assert (=> d!371565 (= (choose!8051 rules!2550 lambda!53526 lt!433567) _$24!64)))

(declare-fun bs!330588 () Bool)

(assert (= bs!330588 d!371565))

(declare-fun m!1471343 () Bool)

(assert (=> bs!330588 m!1471343))

(assert (=> d!370785 d!371565))

(assert (=> d!370785 d!370537))

(assert (=> d!370785 d!370545))

(declare-fun d!371567 () Bool)

(assert (=> d!371567 (= (list!5023 (_2!7365 lt!433796)) (list!5026 (c!215720 (_2!7365 lt!433796))))))

(declare-fun bs!330589 () Bool)

(assert (= bs!330589 d!371567))

(declare-fun m!1471345 () Bool)

(assert (=> bs!330589 m!1471345))

(assert (=> b!1315709 d!371567))

(assert (=> b!1315709 d!370585))

(assert (=> b!1315709 d!370593))

(declare-fun d!371569 () Bool)

(assert (=> d!371569 (= (nullable!1147 lt!433562) (nullableFct!262 lt!433562))))

(declare-fun bs!330590 () Bool)

(assert (= bs!330590 d!371569))

(declare-fun m!1471347 () Bool)

(assert (=> bs!330590 m!1471347))

(assert (=> b!1315348 d!371569))

(declare-fun d!371571 () Bool)

(declare-fun lt!434243 () C!7536)

(assert (=> d!371571 (contains!2340 (list!5023 lt!433565) lt!434243)))

(declare-fun e!844290 () C!7536)

(assert (=> d!371571 (= lt!434243 e!844290)))

(declare-fun c!216173 () Bool)

(assert (=> d!371571 (= c!216173 (= 0 0))))

(declare-fun e!844291 () Bool)

(assert (=> d!371571 e!844291))

(declare-fun res!591844 () Bool)

(assert (=> d!371571 (=> (not res!591844) (not e!844291))))

(assert (=> d!371571 (= res!591844 (<= 0 0))))

(assert (=> d!371571 (= (apply!3032 (list!5023 lt!433565) 0) lt!434243)))

(declare-fun b!1317076 () Bool)

(assert (=> b!1317076 (= e!844291 (< 0 (size!10858 (list!5023 lt!433565))))))

(declare-fun b!1317077 () Bool)

(assert (=> b!1317077 (= e!844290 (head!2273 (list!5023 lt!433565)))))

(declare-fun b!1317078 () Bool)

(assert (=> b!1317078 (= e!844290 (apply!3032 (tail!1884 (list!5023 lt!433565)) (- 0 1)))))

(assert (= (and d!371571 res!591844) b!1317076))

(assert (= (and d!371571 c!216173) b!1317077))

(assert (= (and d!371571 (not c!216173)) b!1317078))

(assert (=> d!371571 m!1468381))

(declare-fun m!1471349 () Bool)

(assert (=> d!371571 m!1471349))

(assert (=> b!1317076 m!1468381))

(assert (=> b!1317076 m!1471267))

(assert (=> b!1317077 m!1468381))

(declare-fun m!1471351 () Bool)

(assert (=> b!1317077 m!1471351))

(assert (=> b!1317078 m!1468381))

(declare-fun m!1471353 () Bool)

(assert (=> b!1317078 m!1471353))

(assert (=> b!1317078 m!1471353))

(declare-fun m!1471355 () Bool)

(assert (=> b!1317078 m!1471355))

(assert (=> d!370567 d!371571))

(assert (=> d!370567 d!370713))

(declare-fun b!1317079 () Bool)

(declare-fun e!844295 () C!7536)

(declare-fun call!89500 () C!7536)

(assert (=> b!1317079 (= e!844295 call!89500)))

(declare-fun b!1317080 () Bool)

(declare-fun e!844294 () C!7536)

(assert (=> b!1317080 (= e!844294 e!844295)))

(declare-fun lt!434244 () Bool)

(assert (=> b!1317080 (= lt!434244 (appendIndex!141 (list!5026 (left!11468 (c!215720 lt!433565))) (list!5026 (right!11798 (c!215720 lt!433565))) 0))))

(declare-fun c!216174 () Bool)

(assert (=> b!1317080 (= c!216174 (< 0 (size!10861 (left!11468 (c!215720 lt!433565)))))))

(declare-fun d!371573 () Bool)

(declare-fun lt!434245 () C!7536)

(assert (=> d!371573 (= lt!434245 (apply!3032 (list!5026 (c!215720 lt!433565)) 0))))

(assert (=> d!371573 (= lt!434245 e!844294)))

(declare-fun c!216176 () Bool)

(assert (=> d!371573 (= c!216176 ((_ is Leaf!6739) (c!215720 lt!433565)))))

(declare-fun e!844292 () Bool)

(assert (=> d!371573 e!844292))

(declare-fun res!591845 () Bool)

(assert (=> d!371573 (=> (not res!591845) (not e!844292))))

(assert (=> d!371573 (= res!591845 (<= 0 0))))

(assert (=> d!371573 (= (apply!3033 (c!215720 lt!433565) 0) lt!434245)))

(declare-fun b!1317081 () Bool)

(assert (=> b!1317081 (= e!844294 (apply!3041 (xs!7103 (c!215720 lt!433565)) 0))))

(declare-fun b!1317082 () Bool)

(assert (=> b!1317082 (= e!844295 call!89500)))

(declare-fun b!1317083 () Bool)

(assert (=> b!1317083 (= e!844292 (< 0 (size!10861 (c!215720 lt!433565))))))

(declare-fun b!1317084 () Bool)

(declare-fun e!844293 () Int)

(assert (=> b!1317084 (= e!844293 (- 0 (size!10861 (left!11468 (c!215720 lt!433565)))))))

(declare-fun bm!89495 () Bool)

(declare-fun c!216175 () Bool)

(assert (=> bm!89495 (= c!216175 c!216174)))

(assert (=> bm!89495 (= call!89500 (apply!3033 (ite c!216174 (left!11468 (c!215720 lt!433565)) (right!11798 (c!215720 lt!433565))) e!844293))))

(declare-fun b!1317085 () Bool)

(assert (=> b!1317085 (= e!844293 0)))

(assert (= (and d!371573 res!591845) b!1317083))

(assert (= (and d!371573 c!216176) b!1317081))

(assert (= (and d!371573 (not c!216176)) b!1317080))

(assert (= (and b!1317080 c!216174) b!1317079))

(assert (= (and b!1317080 (not c!216174)) b!1317082))

(assert (= (or b!1317079 b!1317082) bm!89495))

(assert (= (and bm!89495 c!216175) b!1317085))

(assert (= (and bm!89495 (not c!216175)) b!1317084))

(assert (=> b!1317083 m!1471269))

(declare-fun m!1471357 () Bool)

(assert (=> b!1317084 m!1471357))

(declare-fun m!1471359 () Bool)

(assert (=> b!1317081 m!1471359))

(declare-fun m!1471361 () Bool)

(assert (=> bm!89495 m!1471361))

(assert (=> d!371573 m!1469103))

(assert (=> d!371573 m!1469103))

(declare-fun m!1471363 () Bool)

(assert (=> d!371573 m!1471363))

(declare-fun m!1471365 () Bool)

(assert (=> b!1317080 m!1471365))

(declare-fun m!1471367 () Bool)

(assert (=> b!1317080 m!1471367))

(assert (=> b!1317080 m!1471365))

(assert (=> b!1317080 m!1471367))

(declare-fun m!1471369 () Bool)

(assert (=> b!1317080 m!1471369))

(assert (=> b!1317080 m!1471357))

(assert (=> d!370567 d!371573))

(declare-fun d!371575 () Bool)

(declare-fun lt!434246 () Int)

(assert (=> d!371575 (>= lt!434246 0)))

(declare-fun e!844296 () Int)

(assert (=> d!371575 (= lt!434246 e!844296)))

(declare-fun c!216177 () Bool)

(assert (=> d!371575 (= c!216177 ((_ is Nil!13341) (_2!7367 (get!4256 lt!433820))))))

(assert (=> d!371575 (= (size!10858 (_2!7367 (get!4256 lt!433820))) lt!434246)))

(declare-fun b!1317086 () Bool)

(assert (=> b!1317086 (= e!844296 0)))

(declare-fun b!1317087 () Bool)

(assert (=> b!1317087 (= e!844296 (+ 1 (size!10858 (t!118280 (_2!7367 (get!4256 lt!433820))))))))

(assert (= (and d!371575 c!216177) b!1317086))

(assert (= (and d!371575 (not c!216177)) b!1317087))

(declare-fun m!1471371 () Bool)

(assert (=> b!1317087 m!1471371))

(assert (=> b!1315777 d!371575))

(assert (=> b!1315777 d!371219))

(assert (=> b!1315777 d!371377))

(declare-fun d!371577 () Bool)

(declare-fun lt!434247 () Int)

(assert (=> d!371577 (>= lt!434247 0)))

(declare-fun e!844297 () Int)

(assert (=> d!371577 (= lt!434247 e!844297)))

(declare-fun c!216178 () Bool)

(assert (=> d!371577 (= c!216178 ((_ is Nil!13341) (_2!7367 (get!4256 lt!433652))))))

(assert (=> d!371577 (= (size!10858 (_2!7367 (get!4256 lt!433652))) lt!434247)))

(declare-fun b!1317088 () Bool)

(assert (=> b!1317088 (= e!844297 0)))

(declare-fun b!1317089 () Bool)

(assert (=> b!1317089 (= e!844297 (+ 1 (size!10858 (t!118280 (_2!7367 (get!4256 lt!433652))))))))

(assert (= (and d!371577 c!216178) b!1317088))

(assert (= (and d!371577 (not c!216178)) b!1317089))

(declare-fun m!1471373 () Bool)

(assert (=> b!1317089 m!1471373))

(assert (=> b!1315274 d!371577))

(assert (=> b!1315274 d!371137))

(declare-fun d!371579 () Bool)

(declare-fun lt!434248 () Int)

(assert (=> d!371579 (>= lt!434248 0)))

(declare-fun e!844298 () Int)

(assert (=> d!371579 (= lt!434248 e!844298)))

(declare-fun c!216179 () Bool)

(assert (=> d!371579 (= c!216179 ((_ is Nil!13341) (list!5023 lt!433570)))))

(assert (=> d!371579 (= (size!10858 (list!5023 lt!433570)) lt!434248)))

(declare-fun b!1317090 () Bool)

(assert (=> b!1317090 (= e!844298 0)))

(declare-fun b!1317091 () Bool)

(assert (=> b!1317091 (= e!844298 (+ 1 (size!10858 (t!118280 (list!5023 lt!433570)))))))

(assert (= (and d!371579 c!216179) b!1317090))

(assert (= (and d!371579 (not c!216179)) b!1317091))

(declare-fun m!1471375 () Bool)

(assert (=> b!1317091 m!1471375))

(assert (=> b!1315274 d!371579))

(declare-fun b!1317100 () Bool)

(declare-fun e!844305 () Bool)

(declare-fun call!89503 () Bool)

(assert (=> b!1317100 (= e!844305 call!89503)))

(declare-fun b!1317101 () Bool)

(declare-fun e!844307 () Bool)

(assert (=> b!1317101 (= e!844307 e!844305)))

(declare-fun res!591851 () Bool)

(assert (=> b!1317101 (= res!591851 (not ((_ is Cons!13342) rules!2550)))))

(assert (=> b!1317101 (=> res!591851 e!844305)))

(declare-fun b!1317102 () Bool)

(declare-fun e!844306 () Bool)

(assert (=> b!1317102 (= e!844307 e!844306)))

(declare-fun res!591850 () Bool)

(declare-fun rulesUseDisjointChars!160 (Rule!4418 Rule!4418) Bool)

(assert (=> b!1317102 (= res!591850 (rulesUseDisjointChars!160 (h!18743 rules!2550) (h!18743 rules!2550)))))

(assert (=> b!1317102 (=> (not res!591850) (not e!844306))))

(declare-fun d!371581 () Bool)

(declare-fun c!216182 () Bool)

(assert (=> d!371581 (= c!216182 (and ((_ is Cons!13342) rules!2550) (not (= (isSeparator!2309 (h!18743 rules!2550)) (isSeparator!2309 (h!18743 rules!2550))))))))

(assert (=> d!371581 (= (ruleDisjointCharsFromAllFromOtherType!312 (h!18743 rules!2550) rules!2550) e!844307)))

(declare-fun bm!89498 () Bool)

(assert (=> bm!89498 (= call!89503 (ruleDisjointCharsFromAllFromOtherType!312 (h!18743 rules!2550) (t!118281 rules!2550)))))

(declare-fun b!1317103 () Bool)

(assert (=> b!1317103 (= e!844306 call!89503)))

(assert (= (and d!371581 c!216182) b!1317102))

(assert (= (and d!371581 (not c!216182)) b!1317101))

(assert (= (and b!1317102 res!591850) b!1317103))

(assert (= (and b!1317101 (not res!591851)) b!1317100))

(assert (= (or b!1317103 b!1317100) bm!89498))

(declare-fun m!1471377 () Bool)

(assert (=> b!1317102 m!1471377))

(declare-fun m!1471379 () Bool)

(assert (=> bm!89498 m!1471379))

(assert (=> b!1315794 d!371581))

(assert (=> b!1315769 d!370763))

(declare-fun d!371583 () Bool)

(declare-fun lt!434249 () Bool)

(assert (=> d!371583 (= lt!434249 (select (content!1873 (t!118283 (map!2930 rules!2550 lambda!53526))) lt!433567))))

(declare-fun e!844308 () Bool)

(assert (=> d!371583 (= lt!434249 e!844308)))

(declare-fun res!591852 () Bool)

(assert (=> d!371583 (=> (not res!591852) (not e!844308))))

(assert (=> d!371583 (= res!591852 ((_ is Cons!13344) (t!118283 (map!2930 rules!2550 lambda!53526))))))

(assert (=> d!371583 (= (contains!2341 (t!118283 (map!2930 rules!2550 lambda!53526)) lt!433567) lt!434249)))

(declare-fun b!1317104 () Bool)

(declare-fun e!844309 () Bool)

(assert (=> b!1317104 (= e!844308 e!844309)))

(declare-fun res!591853 () Bool)

(assert (=> b!1317104 (=> res!591853 e!844309)))

(assert (=> b!1317104 (= res!591853 (= (h!18745 (t!118283 (map!2930 rules!2550 lambda!53526))) lt!433567))))

(declare-fun b!1317105 () Bool)

(assert (=> b!1317105 (= e!844309 (contains!2341 (t!118283 (t!118283 (map!2930 rules!2550 lambda!53526))) lt!433567))))

(assert (= (and d!371583 res!591852) b!1317104))

(assert (= (and b!1317104 (not res!591853)) b!1317105))

(assert (=> d!371583 m!1471265))

(declare-fun m!1471381 () Bool)

(assert (=> d!371583 m!1471381))

(declare-fun m!1471383 () Bool)

(assert (=> b!1317105 m!1471383))

(assert (=> b!1315207 d!371583))

(declare-fun d!371585 () Bool)

(declare-fun c!216183 () Bool)

(assert (=> d!371585 (= c!216183 ((_ is Node!4388) (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34)))))))

(declare-fun e!844310 () Bool)

(assert (=> d!371585 (= (inv!17718 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34)))) e!844310)))

(declare-fun b!1317106 () Bool)

(assert (=> b!1317106 (= e!844310 (inv!17722 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34)))))))

(declare-fun b!1317107 () Bool)

(declare-fun e!844311 () Bool)

(assert (=> b!1317107 (= e!844310 e!844311)))

(declare-fun res!591854 () Bool)

(assert (=> b!1317107 (= res!591854 (not ((_ is Leaf!6739) (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34))))))))

(assert (=> b!1317107 (=> res!591854 e!844311)))

(declare-fun b!1317108 () Bool)

(assert (=> b!1317108 (= e!844311 (inv!17723 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34)))))))

(assert (= (and d!371585 c!216183) b!1317106))

(assert (= (and d!371585 (not c!216183)) b!1317107))

(assert (= (and b!1317107 (not res!591854)) b!1317108))

(declare-fun m!1471385 () Bool)

(assert (=> b!1317106 m!1471385))

(declare-fun m!1471387 () Bool)

(assert (=> b!1317108 m!1471387))

(assert (=> b!1315555 d!371585))

(declare-fun b!1317117 () Bool)

(declare-fun res!591864 () Bool)

(declare-fun e!844314 () Bool)

(assert (=> b!1317117 (=> (not res!591864) (not e!844314))))

(declare-fun ++!3404 (Conc!4388 Conc!4388) Conc!4388)

(assert (=> b!1317117 (= res!591864 (isBalanced!1278 (++!3404 (c!215720 (charsOf!1281 t1!34)) (c!215720 (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0))))))))

(declare-fun b!1317119 () Bool)

(declare-fun res!591865 () Bool)

(assert (=> b!1317119 (=> (not res!591865) (not e!844314))))

(declare-fun height!627 (Conc!4388) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1317119 (= res!591865 (>= (height!627 (++!3404 (c!215720 (charsOf!1281 t1!34)) (c!215720 (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0))))) (max!0 (height!627 (c!215720 (charsOf!1281 t1!34))) (height!627 (c!215720 (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0)))))))))

(declare-fun b!1317118 () Bool)

(declare-fun res!591866 () Bool)

(assert (=> b!1317118 (=> (not res!591866) (not e!844314))))

(assert (=> b!1317118 (= res!591866 (<= (height!627 (++!3404 (c!215720 (charsOf!1281 t1!34)) (c!215720 (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0))))) (+ (max!0 (height!627 (c!215720 (charsOf!1281 t1!34))) (height!627 (c!215720 (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0))))) 1)))))

(declare-fun b!1317120 () Bool)

(declare-fun lt!434252 () BalanceConc!8716)

(assert (=> b!1317120 (= e!844314 (= (list!5023 lt!434252) (++!3398 (list!5023 (charsOf!1281 t1!34)) (list!5023 (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0))))))))

(declare-fun d!371587 () Bool)

(assert (=> d!371587 e!844314))

(declare-fun res!591863 () Bool)

(assert (=> d!371587 (=> (not res!591863) (not e!844314))))

(declare-fun appendAssocInst!259 (Conc!4388 Conc!4388) Bool)

(assert (=> d!371587 (= res!591863 (appendAssocInst!259 (c!215720 (charsOf!1281 t1!34)) (c!215720 (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0)))))))

(assert (=> d!371587 (= lt!434252 (BalanceConc!8717 (++!3404 (c!215720 (charsOf!1281 t1!34)) (c!215720 (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0))))))))

(assert (=> d!371587 (= (++!3399 (charsOf!1281 t1!34) (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0))) lt!434252)))

(assert (= (and d!371587 res!591863) b!1317117))

(assert (= (and b!1317117 res!591864) b!1317118))

(assert (= (and b!1317118 res!591866) b!1317119))

(assert (= (and b!1317119 res!591865) b!1317120))

(declare-fun m!1471389 () Bool)

(assert (=> d!371587 m!1471389))

(declare-fun m!1471391 () Bool)

(assert (=> d!371587 m!1471391))

(declare-fun m!1471393 () Bool)

(assert (=> b!1317119 m!1471393))

(assert (=> b!1317119 m!1471391))

(assert (=> b!1317119 m!1471393))

(declare-fun m!1471395 () Bool)

(assert (=> b!1317119 m!1471395))

(declare-fun m!1471397 () Bool)

(assert (=> b!1317119 m!1471397))

(assert (=> b!1317119 m!1471395))

(assert (=> b!1317119 m!1471391))

(declare-fun m!1471399 () Bool)

(assert (=> b!1317119 m!1471399))

(assert (=> b!1317117 m!1471391))

(assert (=> b!1317117 m!1471391))

(declare-fun m!1471401 () Bool)

(assert (=> b!1317117 m!1471401))

(assert (=> b!1317118 m!1471393))

(assert (=> b!1317118 m!1471391))

(assert (=> b!1317118 m!1471393))

(assert (=> b!1317118 m!1471395))

(assert (=> b!1317118 m!1471397))

(assert (=> b!1317118 m!1471395))

(assert (=> b!1317118 m!1471391))

(assert (=> b!1317118 m!1471399))

(declare-fun m!1471403 () Bool)

(assert (=> b!1317120 m!1471403))

(assert (=> b!1317120 m!1468389))

(declare-fun m!1471405 () Bool)

(assert (=> b!1317120 m!1471405))

(assert (=> b!1317120 m!1468755))

(declare-fun m!1471407 () Bool)

(assert (=> b!1317120 m!1471407))

(assert (=> b!1317120 m!1471405))

(assert (=> b!1317120 m!1471407))

(declare-fun m!1471409 () Bool)

(assert (=> b!1317120 m!1471409))

(assert (=> d!370595 d!371587))

(declare-fun lt!434422 () Bool)

(declare-fun d!371589 () Bool)

(assert (=> d!371589 (= lt!434422 (prefixMatch!136 (rulesRegex!194 thiss!19762 rules!2550) (list!5023 (++!3399 (charsOf!1281 t1!34) (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0))))))))

(declare-datatypes ((Context!1162 0))(
  ( (Context!1163 (exprs!1081 List!13410)) )
))
(declare-fun prefixMatchZipperSequence!178 ((InoxSet Context!1162) BalanceConc!8716 Int) Bool)

(declare-fun focus!72 (Regex!3623) (InoxSet Context!1162))

(assert (=> d!371589 (= lt!434422 (prefixMatchZipperSequence!178 (focus!72 (rulesRegex!194 thiss!19762 rules!2550)) (++!3399 (charsOf!1281 t1!34) (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0))) 0))))

(declare-fun lt!434417 () Unit!19396)

(declare-fun lt!434421 () Unit!19396)

(assert (=> d!371589 (= lt!434417 lt!434421)))

(declare-fun lt!434418 () (InoxSet Context!1162))

(declare-fun lt!434420 () List!13407)

(declare-fun prefixMatchZipper!52 ((InoxSet Context!1162) List!13407) Bool)

(assert (=> d!371589 (= (prefixMatch!136 (rulesRegex!194 thiss!19762 rules!2550) lt!434420) (prefixMatchZipper!52 lt!434418 lt!434420))))

(declare-datatypes ((List!13414 0))(
  ( (Nil!13348) (Cons!13348 (h!18749 Context!1162) (t!118429 List!13414)) )
))
(declare-fun lt!434419 () List!13414)

(declare-fun prefixMatchZipperRegexEquiv!52 ((InoxSet Context!1162) List!13414 Regex!3623 List!13407) Unit!19396)

(assert (=> d!371589 (= lt!434421 (prefixMatchZipperRegexEquiv!52 lt!434418 lt!434419 (rulesRegex!194 thiss!19762 rules!2550) lt!434420))))

(assert (=> d!371589 (= lt!434420 (list!5023 (++!3399 (charsOf!1281 t1!34) (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0)))))))

(declare-fun toList!736 ((InoxSet Context!1162)) List!13414)

(assert (=> d!371589 (= lt!434419 (toList!736 (focus!72 (rulesRegex!194 thiss!19762 rules!2550))))))

(assert (=> d!371589 (= lt!434418 (focus!72 (rulesRegex!194 thiss!19762 rules!2550)))))

(declare-fun lt!434426 () Unit!19396)

(declare-fun lt!434423 () Unit!19396)

(assert (=> d!371589 (= lt!434426 lt!434423)))

(declare-fun lt!434425 () Int)

(declare-fun lt!434424 () (InoxSet Context!1162))

(declare-fun dropList!370 (BalanceConc!8716 Int) List!13407)

(assert (=> d!371589 (= (prefixMatchZipper!52 lt!434424 (dropList!370 (++!3399 (charsOf!1281 t1!34) (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0))) lt!434425)) (prefixMatchZipperSequence!178 lt!434424 (++!3399 (charsOf!1281 t1!34) (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0))) lt!434425))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!52 ((InoxSet Context!1162) BalanceConc!8716 Int) Unit!19396)

(assert (=> d!371589 (= lt!434423 (lemmaprefixMatchZipperSequenceEquivalent!52 lt!434424 (++!3399 (charsOf!1281 t1!34) (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0))) lt!434425))))

(assert (=> d!371589 (= lt!434425 0)))

(assert (=> d!371589 (= lt!434424 (focus!72 (rulesRegex!194 thiss!19762 rules!2550)))))

(assert (=> d!371589 (validRegex!1549 (rulesRegex!194 thiss!19762 rules!2550))))

(assert (=> d!371589 (= (prefixMatchZipperSequence!175 (rulesRegex!194 thiss!19762 rules!2550) (++!3399 (charsOf!1281 t1!34) (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0)))) lt!434422)))

(declare-fun bs!330596 () Bool)

(assert (= bs!330596 d!371589))

(declare-fun m!1471627 () Bool)

(assert (=> bs!330596 m!1471627))

(assert (=> bs!330596 m!1468757))

(declare-fun m!1471639 () Bool)

(assert (=> bs!330596 m!1471639))

(assert (=> bs!330596 m!1468757))

(declare-fun m!1471641 () Bool)

(assert (=> bs!330596 m!1471641))

(declare-fun m!1471643 () Bool)

(assert (=> bs!330596 m!1471643))

(assert (=> bs!330596 m!1468387))

(declare-fun m!1471647 () Bool)

(assert (=> bs!330596 m!1471647))

(assert (=> bs!330596 m!1471627))

(declare-fun m!1471649 () Bool)

(assert (=> bs!330596 m!1471649))

(assert (=> bs!330596 m!1468757))

(declare-fun m!1471651 () Bool)

(assert (=> bs!330596 m!1471651))

(assert (=> bs!330596 m!1468387))

(declare-fun m!1471653 () Bool)

(assert (=> bs!330596 m!1471653))

(declare-fun m!1471655 () Bool)

(assert (=> bs!330596 m!1471655))

(declare-fun m!1471657 () Bool)

(assert (=> bs!330596 m!1471657))

(assert (=> bs!330596 m!1468387))

(assert (=> bs!330596 m!1471627))

(assert (=> bs!330596 m!1468757))

(declare-fun m!1471659 () Bool)

(assert (=> bs!330596 m!1471659))

(assert (=> bs!330596 m!1468757))

(assert (=> bs!330596 m!1471655))

(assert (=> bs!330596 m!1468387))

(declare-fun m!1471661 () Bool)

(assert (=> bs!330596 m!1471661))

(assert (=> bs!330596 m!1468387))

(assert (=> bs!330596 m!1471651))

(declare-fun m!1471667 () Bool)

(assert (=> bs!330596 m!1471667))

(assert (=> d!370595 d!371589))

(declare-fun d!371611 () Bool)

(declare-fun e!844342 () Bool)

(assert (=> d!371611 e!844342))

(declare-fun res!591878 () Bool)

(assert (=> d!371611 (=> (not res!591878) (not e!844342))))

(declare-fun lt!434431 () BalanceConc!8716)

(assert (=> d!371611 (= res!591878 (= (list!5023 lt!434431) (Cons!13341 (apply!3027 (charsOf!1281 t2!34) 0) Nil!13341)))))

(declare-fun singleton!384 (C!7536) BalanceConc!8716)

(assert (=> d!371611 (= lt!434431 (singleton!384 (apply!3027 (charsOf!1281 t2!34) 0)))))

(assert (=> d!371611 (= (singletonSeq!889 (apply!3027 (charsOf!1281 t2!34) 0)) lt!434431)))

(declare-fun b!1317168 () Bool)

(assert (=> b!1317168 (= e!844342 (isBalanced!1278 (c!215720 lt!434431)))))

(assert (= (and d!371611 res!591878) b!1317168))

(declare-fun m!1471675 () Bool)

(assert (=> d!371611 m!1471675))

(assert (=> d!371611 m!1468753))

(declare-fun m!1471677 () Bool)

(assert (=> d!371611 m!1471677))

(declare-fun m!1471679 () Bool)

(assert (=> b!1317168 m!1471679))

(assert (=> d!370595 d!371611))

(assert (=> d!370595 d!370719))

(declare-fun d!371613 () Bool)

(declare-fun lt!434432 () C!7536)

(assert (=> d!371613 (= lt!434432 (apply!3032 (list!5023 (charsOf!1281 t2!34)) 0))))

(assert (=> d!371613 (= lt!434432 (apply!3033 (c!215720 (charsOf!1281 t2!34)) 0))))

(declare-fun e!844345 () Bool)

(assert (=> d!371613 e!844345))

(declare-fun res!591879 () Bool)

(assert (=> d!371613 (=> (not res!591879) (not e!844345))))

(assert (=> d!371613 (= res!591879 (<= 0 0))))

(assert (=> d!371613 (= (apply!3027 (charsOf!1281 t2!34) 0) lt!434432)))

(declare-fun b!1317177 () Bool)

(assert (=> b!1317177 (= e!844345 (< 0 (size!10849 (charsOf!1281 t2!34))))))

(assert (= (and d!371613 res!591879) b!1317177))

(assert (=> d!371613 m!1468319))

(declare-fun m!1471681 () Bool)

(assert (=> d!371613 m!1471681))

(assert (=> d!371613 m!1471681))

(declare-fun m!1471683 () Bool)

(assert (=> d!371613 m!1471683))

(declare-fun m!1471685 () Bool)

(assert (=> d!371613 m!1471685))

(assert (=> b!1317177 m!1468319))

(declare-fun m!1471687 () Bool)

(assert (=> b!1317177 m!1471687))

(assert (=> d!370595 d!371613))

(assert (=> d!370595 d!370723))

(assert (=> d!370595 d!370673))

(declare-fun b!1317186 () Bool)

(declare-fun e!844349 () Bool)

(assert (=> b!1317186 (= e!844349 (matchR!1625 (derivativeStep!899 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))) (head!2273 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652)))))) (tail!1884 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652)))))))))

(declare-fun bm!89499 () Bool)

(declare-fun call!89504 () Bool)

(assert (=> bm!89499 (= call!89504 (isEmpty!7914 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652))))))))

(declare-fun b!1317187 () Bool)

(declare-fun res!591887 () Bool)

(declare-fun e!844350 () Bool)

(assert (=> b!1317187 (=> res!591887 e!844350)))

(declare-fun e!844353 () Bool)

(assert (=> b!1317187 (= res!591887 e!844353)))

(declare-fun res!591886 () Bool)

(assert (=> b!1317187 (=> (not res!591886) (not e!844353))))

(declare-fun lt!434433 () Bool)

(assert (=> b!1317187 (= res!591886 lt!434433)))

(declare-fun b!1317190 () Bool)

(declare-fun res!591885 () Bool)

(assert (=> b!1317190 (=> (not res!591885) (not e!844353))))

(assert (=> b!1317190 (= res!591885 (isEmpty!7914 (tail!1884 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652)))))))))

(declare-fun d!371615 () Bool)

(declare-fun e!844355 () Bool)

(assert (=> d!371615 e!844355))

(declare-fun c!216205 () Bool)

(assert (=> d!371615 (= c!216205 ((_ is EmptyExpr!3623) (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433652))))))))

(assert (=> d!371615 (= lt!434433 e!844349)))

(declare-fun c!216207 () Bool)

(assert (=> d!371615 (= c!216207 (isEmpty!7914 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652))))))))

(assert (=> d!371615 (validRegex!1549 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))))))

(assert (=> d!371615 (= (matchR!1625 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))) (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652))))) lt!434433)))

(declare-fun b!1317191 () Bool)

(declare-fun e!844354 () Bool)

(assert (=> b!1317191 (= e!844355 e!844354)))

(declare-fun c!216206 () Bool)

(assert (=> b!1317191 (= c!216206 ((_ is EmptyLang!3623) (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433652))))))))

(declare-fun b!1317192 () Bool)

(declare-fun e!844352 () Bool)

(declare-fun e!844351 () Bool)

(assert (=> b!1317192 (= e!844352 e!844351)))

(declare-fun res!591882 () Bool)

(assert (=> b!1317192 (=> res!591882 e!844351)))

(assert (=> b!1317192 (= res!591882 call!89504)))

(declare-fun b!1317193 () Bool)

(assert (=> b!1317193 (= e!844351 (not (= (head!2273 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652))))) (c!215721 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433652))))))))))

(declare-fun b!1317194 () Bool)

(assert (=> b!1317194 (= e!844354 (not lt!434433))))

(declare-fun b!1317195 () Bool)

(assert (=> b!1317195 (= e!844349 (nullable!1147 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433652))))))))

(declare-fun b!1317196 () Bool)

(declare-fun res!591880 () Bool)

(assert (=> b!1317196 (=> res!591880 e!844350)))

(assert (=> b!1317196 (= res!591880 (not ((_ is ElementMatch!3623) (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))))))))

(assert (=> b!1317196 (= e!844354 e!844350)))

(declare-fun b!1317197 () Bool)

(assert (=> b!1317197 (= e!844350 e!844352)))

(declare-fun res!591881 () Bool)

(assert (=> b!1317197 (=> (not res!591881) (not e!844352))))

(assert (=> b!1317197 (= res!591881 (not lt!434433))))

(declare-fun b!1317198 () Bool)

(declare-fun res!591884 () Bool)

(assert (=> b!1317198 (=> res!591884 e!844351)))

(assert (=> b!1317198 (= res!591884 (not (isEmpty!7914 (tail!1884 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652))))))))))

(declare-fun b!1317199 () Bool)

(assert (=> b!1317199 (= e!844353 (= (head!2273 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433652))))) (c!215721 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))))))))

(declare-fun b!1317200 () Bool)

(assert (=> b!1317200 (= e!844355 (= lt!434433 call!89504))))

(declare-fun b!1317201 () Bool)

(declare-fun res!591883 () Bool)

(assert (=> b!1317201 (=> (not res!591883) (not e!844353))))

(assert (=> b!1317201 (= res!591883 (not call!89504))))

(assert (= (and d!371615 c!216207) b!1317195))

(assert (= (and d!371615 (not c!216207)) b!1317186))

(assert (= (and d!371615 c!216205) b!1317200))

(assert (= (and d!371615 (not c!216205)) b!1317191))

(assert (= (and b!1317191 c!216206) b!1317194))

(assert (= (and b!1317191 (not c!216206)) b!1317196))

(assert (= (and b!1317196 (not res!591880)) b!1317187))

(assert (= (and b!1317187 res!591886) b!1317201))

(assert (= (and b!1317201 res!591883) b!1317190))

(assert (= (and b!1317190 res!591885) b!1317199))

(assert (= (and b!1317187 (not res!591887)) b!1317197))

(assert (= (and b!1317197 res!591881) b!1317192))

(assert (= (and b!1317192 (not res!591882)) b!1317198))

(assert (= (and b!1317198 (not res!591884)) b!1317193))

(assert (= (or b!1317200 b!1317201 b!1317192) bm!89499))

(assert (=> b!1317198 m!1468591))

(declare-fun m!1471689 () Bool)

(assert (=> b!1317198 m!1471689))

(assert (=> b!1317198 m!1471689))

(declare-fun m!1471691 () Bool)

(assert (=> b!1317198 m!1471691))

(assert (=> b!1317199 m!1468591))

(declare-fun m!1471693 () Bool)

(assert (=> b!1317199 m!1471693))

(assert (=> bm!89499 m!1468591))

(declare-fun m!1471695 () Bool)

(assert (=> bm!89499 m!1471695))

(assert (=> b!1317186 m!1468591))

(assert (=> b!1317186 m!1471693))

(assert (=> b!1317186 m!1471693))

(declare-fun m!1471697 () Bool)

(assert (=> b!1317186 m!1471697))

(assert (=> b!1317186 m!1468591))

(assert (=> b!1317186 m!1471689))

(assert (=> b!1317186 m!1471697))

(assert (=> b!1317186 m!1471689))

(declare-fun m!1471701 () Bool)

(assert (=> b!1317186 m!1471701))

(assert (=> b!1317190 m!1468591))

(assert (=> b!1317190 m!1471689))

(assert (=> b!1317190 m!1471689))

(assert (=> b!1317190 m!1471691))

(assert (=> d!371615 m!1468591))

(assert (=> d!371615 m!1471695))

(declare-fun m!1471707 () Bool)

(assert (=> d!371615 m!1471707))

(declare-fun m!1471709 () Bool)

(assert (=> b!1317195 m!1471709))

(assert (=> b!1317193 m!1468591))

(assert (=> b!1317193 m!1471693))

(assert (=> b!1315278 d!371615))

(assert (=> b!1315278 d!371137))

(assert (=> b!1315278 d!371129))

(assert (=> b!1315278 d!371131))

(declare-fun d!371617 () Bool)

(declare-fun lt!434434 () Bool)

(assert (=> d!371617 (= lt!434434 (isEmpty!7914 (list!5023 (_2!7365 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t2!34)))))))))

(assert (=> d!371617 (= lt!434434 (isEmpty!7916 (c!215720 (_2!7365 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t2!34)))))))))

(assert (=> d!371617 (= (isEmpty!7906 (_2!7365 (lex!839 thiss!19762 rules!2550 (print!778 thiss!19762 (singletonSeq!888 t2!34))))) lt!434434)))

(declare-fun bs!330597 () Bool)

(assert (= bs!330597 d!371617))

(declare-fun m!1471711 () Bool)

(assert (=> bs!330597 m!1471711))

(assert (=> bs!330597 m!1471711))

(declare-fun m!1471713 () Bool)

(assert (=> bs!330597 m!1471713))

(declare-fun m!1471715 () Bool)

(assert (=> bs!330597 m!1471715))

(assert (=> b!1315798 d!371617))

(assert (=> b!1315798 d!371549))

(assert (=> b!1315798 d!370795))

(assert (=> b!1315798 d!370797))

(declare-fun d!371619 () Bool)

(assert (=> d!371619 true))

(declare-fun lambda!53643 () Int)

(declare-fun order!8045 () Int)

(declare-fun order!8043 () Int)

(declare-fun dynLambda!5835 (Int Int) Int)

(declare-fun dynLambda!5836 (Int Int) Int)

(assert (=> d!371619 (< (dynLambda!5835 order!8043 (toChars!3391 (transformation!2309 (rule!4050 t1!34)))) (dynLambda!5836 order!8045 lambda!53643))))

(assert (=> d!371619 true))

(assert (=> d!371619 (< (dynLambda!5833 order!8039 (toValue!3532 (transformation!2309 (rule!4050 t1!34)))) (dynLambda!5836 order!8045 lambda!53643))))

(declare-fun Forall!517 (Int) Bool)

(assert (=> d!371619 (= (semiInverseModEq!868 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (toValue!3532 (transformation!2309 (rule!4050 t1!34)))) (Forall!517 lambda!53643))))

(declare-fun bs!330598 () Bool)

(assert (= bs!330598 d!371619))

(declare-fun m!1471723 () Bool)

(assert (=> bs!330598 m!1471723))

(assert (=> d!370579 d!371619))

(declare-fun d!371621 () Bool)

(assert (=> d!371621 (= (inv!17719 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34))) (isBalanced!1278 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34)))))))

(declare-fun bs!330599 () Bool)

(assert (= bs!330599 d!371621))

(declare-fun m!1471729 () Bool)

(assert (=> bs!330599 m!1471729))

(assert (=> tb!69891 d!371621))

(declare-fun d!371623 () Bool)

(assert (=> d!371623 (dynLambda!5823 lambda!53529 (rule!4050 t1!34))))

(assert (=> d!371623 true))

(declare-fun _$7!703 () Unit!19396)

(assert (=> d!371623 (= (choose!8050 rules!2550 lambda!53529 (rule!4050 t1!34)) _$7!703)))

(declare-fun b_lambda!38161 () Bool)

(assert (=> (not b_lambda!38161) (not d!371623)))

(declare-fun bs!330600 () Bool)

(assert (= bs!330600 d!371623))

(assert (=> bs!330600 m!1469253))

(assert (=> d!370773 d!371623))

(assert (=> d!370773 d!371513))

(declare-fun d!371625 () Bool)

(declare-fun lt!434435 () Int)

(assert (=> d!371625 (>= lt!434435 0)))

(declare-fun e!844381 () Int)

(assert (=> d!371625 (= lt!434435 e!844381)))

(declare-fun c!216208 () Bool)

(assert (=> d!371625 (= c!216208 ((_ is Nil!13341) (originalCharacters!3171 t2!34)))))

(assert (=> d!371625 (= (size!10858 (originalCharacters!3171 t2!34)) lt!434435)))

(declare-fun b!1317271 () Bool)

(assert (=> b!1317271 (= e!844381 0)))

(declare-fun b!1317272 () Bool)

(assert (=> b!1317272 (= e!844381 (+ 1 (size!10858 (t!118280 (originalCharacters!3171 t2!34)))))))

(assert (= (and d!371625 c!216208) b!1317271))

(assert (= (and d!371625 (not c!216208)) b!1317272))

(declare-fun m!1471731 () Bool)

(assert (=> b!1317272 m!1471731))

(assert (=> b!1315597 d!371625))

(declare-fun b!1317276 () Bool)

(declare-fun e!844383 () List!13407)

(assert (=> b!1317276 (= e!844383 (++!3398 (list!5026 (left!11468 (c!215720 lt!433565))) (list!5026 (right!11798 (c!215720 lt!433565)))))))

(declare-fun b!1317275 () Bool)

(assert (=> b!1317275 (= e!844383 (list!5028 (xs!7103 (c!215720 lt!433565))))))

(declare-fun d!371627 () Bool)

(declare-fun c!216209 () Bool)

(assert (=> d!371627 (= c!216209 ((_ is Empty!4388) (c!215720 lt!433565)))))

(declare-fun e!844382 () List!13407)

(assert (=> d!371627 (= (list!5026 (c!215720 lt!433565)) e!844382)))

(declare-fun b!1317273 () Bool)

(assert (=> b!1317273 (= e!844382 Nil!13341)))

(declare-fun b!1317274 () Bool)

(assert (=> b!1317274 (= e!844382 e!844383)))

(declare-fun c!216210 () Bool)

(assert (=> b!1317274 (= c!216210 ((_ is Leaf!6739) (c!215720 lt!433565)))))

(assert (= (and d!371627 c!216209) b!1317273))

(assert (= (and d!371627 (not c!216209)) b!1317274))

(assert (= (and b!1317274 c!216210) b!1317275))

(assert (= (and b!1317274 (not c!216210)) b!1317276))

(assert (=> b!1317276 m!1471365))

(assert (=> b!1317276 m!1471367))

(assert (=> b!1317276 m!1471365))

(assert (=> b!1317276 m!1471367))

(declare-fun m!1471733 () Bool)

(assert (=> b!1317276 m!1471733))

(declare-fun m!1471735 () Bool)

(assert (=> b!1317275 m!1471735))

(assert (=> d!370713 d!371627))

(declare-fun b!1317277 () Bool)

(declare-fun e!844384 () Bool)

(assert (=> b!1317277 (= e!844384 (matchR!1625 (derivativeStep!899 lt!433627 (head!2273 lt!433574)) (tail!1884 lt!433574)))))

(declare-fun bm!89500 () Bool)

(declare-fun call!89505 () Bool)

(assert (=> bm!89500 (= call!89505 (isEmpty!7914 lt!433574))))

(declare-fun b!1317278 () Bool)

(declare-fun res!591895 () Bool)

(declare-fun e!844385 () Bool)

(assert (=> b!1317278 (=> res!591895 e!844385)))

(declare-fun e!844388 () Bool)

(assert (=> b!1317278 (= res!591895 e!844388)))

(declare-fun res!591894 () Bool)

(assert (=> b!1317278 (=> (not res!591894) (not e!844388))))

(declare-fun lt!434436 () Bool)

(assert (=> b!1317278 (= res!591894 lt!434436)))

(declare-fun b!1317279 () Bool)

(declare-fun res!591893 () Bool)

(assert (=> b!1317279 (=> (not res!591893) (not e!844388))))

(assert (=> b!1317279 (= res!591893 (isEmpty!7914 (tail!1884 lt!433574)))))

(declare-fun d!371633 () Bool)

(declare-fun e!844390 () Bool)

(assert (=> d!371633 e!844390))

(declare-fun c!216211 () Bool)

(assert (=> d!371633 (= c!216211 ((_ is EmptyExpr!3623) lt!433627))))

(assert (=> d!371633 (= lt!434436 e!844384)))

(declare-fun c!216213 () Bool)

(assert (=> d!371633 (= c!216213 (isEmpty!7914 lt!433574))))

(assert (=> d!371633 (validRegex!1549 lt!433627)))

(assert (=> d!371633 (= (matchR!1625 lt!433627 lt!433574) lt!434436)))

(declare-fun b!1317280 () Bool)

(declare-fun e!844389 () Bool)

(assert (=> b!1317280 (= e!844390 e!844389)))

(declare-fun c!216212 () Bool)

(assert (=> b!1317280 (= c!216212 ((_ is EmptyLang!3623) lt!433627))))

(declare-fun b!1317281 () Bool)

(declare-fun e!844387 () Bool)

(declare-fun e!844386 () Bool)

(assert (=> b!1317281 (= e!844387 e!844386)))

(declare-fun res!591890 () Bool)

(assert (=> b!1317281 (=> res!591890 e!844386)))

(assert (=> b!1317281 (= res!591890 call!89505)))

(declare-fun b!1317282 () Bool)

(assert (=> b!1317282 (= e!844386 (not (= (head!2273 lt!433574) (c!215721 lt!433627))))))

(declare-fun b!1317283 () Bool)

(assert (=> b!1317283 (= e!844389 (not lt!434436))))

(declare-fun b!1317284 () Bool)

(assert (=> b!1317284 (= e!844384 (nullable!1147 lt!433627))))

(declare-fun b!1317285 () Bool)

(declare-fun res!591888 () Bool)

(assert (=> b!1317285 (=> res!591888 e!844385)))

(assert (=> b!1317285 (= res!591888 (not ((_ is ElementMatch!3623) lt!433627)))))

(assert (=> b!1317285 (= e!844389 e!844385)))

(declare-fun b!1317286 () Bool)

(assert (=> b!1317286 (= e!844385 e!844387)))

(declare-fun res!591889 () Bool)

(assert (=> b!1317286 (=> (not res!591889) (not e!844387))))

(assert (=> b!1317286 (= res!591889 (not lt!434436))))

(declare-fun b!1317287 () Bool)

(declare-fun res!591892 () Bool)

(assert (=> b!1317287 (=> res!591892 e!844386)))

(assert (=> b!1317287 (= res!591892 (not (isEmpty!7914 (tail!1884 lt!433574))))))

(declare-fun b!1317288 () Bool)

(assert (=> b!1317288 (= e!844388 (= (head!2273 lt!433574) (c!215721 lt!433627)))))

(declare-fun b!1317289 () Bool)

(assert (=> b!1317289 (= e!844390 (= lt!434436 call!89505))))

(declare-fun b!1317290 () Bool)

(declare-fun res!591891 () Bool)

(assert (=> b!1317290 (=> (not res!591891) (not e!844388))))

(assert (=> b!1317290 (= res!591891 (not call!89505))))

(assert (= (and d!371633 c!216213) b!1317284))

(assert (= (and d!371633 (not c!216213)) b!1317277))

(assert (= (and d!371633 c!216211) b!1317289))

(assert (= (and d!371633 (not c!216211)) b!1317280))

(assert (= (and b!1317280 c!216212) b!1317283))

(assert (= (and b!1317280 (not c!216212)) b!1317285))

(assert (= (and b!1317285 (not res!591888)) b!1317278))

(assert (= (and b!1317278 res!591894) b!1317290))

(assert (= (and b!1317290 res!591891) b!1317279))

(assert (= (and b!1317279 res!591893) b!1317288))

(assert (= (and b!1317278 (not res!591895)) b!1317286))

(assert (= (and b!1317286 res!591889) b!1317281))

(assert (= (and b!1317281 (not res!591890)) b!1317287))

(assert (= (and b!1317287 (not res!591892)) b!1317282))

(assert (= (or b!1317289 b!1317290 b!1317281) bm!89500))

(assert (=> b!1317287 m!1468643))

(assert (=> b!1317287 m!1468643))

(assert (=> b!1317287 m!1468659))

(assert (=> b!1317288 m!1468661))

(assert (=> bm!89500 m!1468663))

(assert (=> b!1317277 m!1468661))

(assert (=> b!1317277 m!1468661))

(declare-fun m!1471749 () Bool)

(assert (=> b!1317277 m!1471749))

(assert (=> b!1317277 m!1468643))

(assert (=> b!1317277 m!1471749))

(assert (=> b!1317277 m!1468643))

(declare-fun m!1471753 () Bool)

(assert (=> b!1317277 m!1471753))

(assert (=> b!1317279 m!1468643))

(assert (=> b!1317279 m!1468643))

(assert (=> b!1317279 m!1468659))

(assert (=> d!371633 m!1468663))

(assert (=> d!371633 m!1469373))

(declare-fun m!1471757 () Bool)

(assert (=> b!1317284 m!1471757))

(assert (=> b!1317282 m!1468661))

(assert (=> b!1315850 d!371633))

(declare-fun d!371653 () Bool)

(assert (=> d!371653 (= (isEmpty!7914 lt!433563) ((_ is Nil!13341) lt!433563))))

(assert (=> d!370721 d!371653))

(declare-fun d!371655 () Bool)

(declare-fun lt!434437 () Int)

(assert (=> d!371655 (= lt!434437 (size!10859 (list!5022 (_1!7365 lt!433827))))))

(assert (=> d!371655 (= lt!434437 (size!10863 (c!215722 (_1!7365 lt!433827))))))

(assert (=> d!371655 (= (size!10860 (_1!7365 lt!433827)) lt!434437)))

(declare-fun bs!330613 () Bool)

(assert (= bs!330613 d!371655))

(assert (=> bs!330613 m!1469325))

(assert (=> bs!330613 m!1469325))

(declare-fun m!1471759 () Bool)

(assert (=> bs!330613 m!1471759))

(declare-fun m!1471761 () Bool)

(assert (=> bs!330613 m!1471761))

(assert (=> d!370793 d!371655))

(declare-fun b!1317308 () Bool)

(declare-fun e!844404 () tuple2!12958)

(assert (=> b!1317308 (= e!844404 (tuple2!12959 (BalanceConc!8719 Empty!4389) lt!433572))))

(declare-fun b!1317309 () Bool)

(declare-fun e!844403 () tuple2!12958)

(declare-fun lt!434510 () BalanceConc!8716)

(assert (=> b!1317309 (= e!844403 (tuple2!12959 (BalanceConc!8719 Empty!4389) lt!434510))))

(declare-fun e!844402 () tuple2!12958)

(declare-fun b!1317310 () Bool)

(declare-fun lt!434520 () BalanceConc!8716)

(declare-datatypes ((tuple2!12970 0))(
  ( (tuple2!12971 (_1!7371 Token!4280) (_2!7371 BalanceConc!8716)) )
))
(declare-datatypes ((Option!2578 0))(
  ( (None!2577) (Some!2577 (v!21133 tuple2!12970)) )
))
(declare-fun lt!434529 () Option!2578)

(declare-fun append!384 (BalanceConc!8718 Token!4280) BalanceConc!8718)

(assert (=> b!1317310 (= e!844402 (lexTailRecV2!365 thiss!19762 rules!2550 lt!433572 lt!434520 (_2!7371 (v!21133 lt!434529)) (append!384 (BalanceConc!8719 Empty!4389) (_1!7371 (v!21133 lt!434529)))))))

(declare-fun lt!434522 () tuple2!12958)

(declare-fun lexRec!263 (LexerInterface!2004 List!13408 BalanceConc!8716) tuple2!12958)

(assert (=> b!1317310 (= lt!434522 (lexRec!263 thiss!19762 rules!2550 (_2!7371 (v!21133 lt!434529))))))

(declare-fun lt!434525 () List!13407)

(assert (=> b!1317310 (= lt!434525 (list!5023 (BalanceConc!8717 Empty!4388)))))

(declare-fun lt!434534 () List!13407)

(assert (=> b!1317310 (= lt!434534 (list!5023 (charsOf!1281 (_1!7371 (v!21133 lt!434529)))))))

(declare-fun lt!434526 () List!13407)

(assert (=> b!1317310 (= lt!434526 (list!5023 (_2!7371 (v!21133 lt!434529))))))

(declare-fun lt!434531 () Unit!19396)

(declare-fun lemmaConcatAssociativity!825 (List!13407 List!13407 List!13407) Unit!19396)

(assert (=> b!1317310 (= lt!434531 (lemmaConcatAssociativity!825 lt!434525 lt!434534 lt!434526))))

(assert (=> b!1317310 (= (++!3398 (++!3398 lt!434525 lt!434534) lt!434526) (++!3398 lt!434525 (++!3398 lt!434534 lt!434526)))))

(declare-fun lt!434517 () Unit!19396)

(assert (=> b!1317310 (= lt!434517 lt!434531)))

(declare-fun lt!434508 () Option!2578)

(declare-fun maxPrefixZipperSequence!536 (LexerInterface!2004 List!13408 BalanceConc!8716) Option!2578)

(assert (=> b!1317310 (= lt!434508 (maxPrefixZipperSequence!536 thiss!19762 rules!2550 lt!433572))))

(declare-fun c!216221 () Bool)

(assert (=> b!1317310 (= c!216221 ((_ is Some!2577) lt!434508))))

(assert (=> b!1317310 (= (lexRec!263 thiss!19762 rules!2550 lt!433572) e!844404)))

(declare-fun lt!434539 () Unit!19396)

(declare-fun Unit!19411 () Unit!19396)

(assert (=> b!1317310 (= lt!434539 Unit!19411)))

(declare-fun lt!434511 () List!13409)

(assert (=> b!1317310 (= lt!434511 (list!5022 (BalanceConc!8719 Empty!4389)))))

(declare-fun lt!434530 () List!13409)

(assert (=> b!1317310 (= lt!434530 (Cons!13343 (_1!7371 (v!21133 lt!434529)) Nil!13343))))

(declare-fun lt!434528 () List!13409)

(assert (=> b!1317310 (= lt!434528 (list!5022 (_1!7365 lt!434522)))))

(declare-fun lt!434515 () Unit!19396)

(declare-fun lemmaConcatAssociativity!826 (List!13409 List!13409 List!13409) Unit!19396)

(assert (=> b!1317310 (= lt!434515 (lemmaConcatAssociativity!826 lt!434511 lt!434530 lt!434528))))

(assert (=> b!1317310 (= (++!3401 (++!3401 lt!434511 lt!434530) lt!434528) (++!3401 lt!434511 (++!3401 lt!434530 lt!434528)))))

(declare-fun lt!434535 () Unit!19396)

(assert (=> b!1317310 (= lt!434535 lt!434515)))

(declare-fun lt!434533 () List!13407)

(assert (=> b!1317310 (= lt!434533 (++!3398 (list!5023 (BalanceConc!8717 Empty!4388)) (list!5023 (charsOf!1281 (_1!7371 (v!21133 lt!434529))))))))

(declare-fun lt!434523 () List!13407)

(assert (=> b!1317310 (= lt!434523 (list!5023 (_2!7371 (v!21133 lt!434529))))))

(declare-fun lt!434519 () List!13409)

(assert (=> b!1317310 (= lt!434519 (list!5022 (append!384 (BalanceConc!8719 Empty!4389) (_1!7371 (v!21133 lt!434529)))))))

(declare-fun lt!434513 () Unit!19396)

(declare-fun lemmaLexThenLexPrefix!178 (LexerInterface!2004 List!13408 List!13407 List!13407 List!13409 List!13409 List!13407) Unit!19396)

(assert (=> b!1317310 (= lt!434513 (lemmaLexThenLexPrefix!178 thiss!19762 rules!2550 lt!434533 lt!434523 lt!434519 (list!5022 (_1!7365 lt!434522)) (list!5023 (_2!7365 lt!434522))))))

(assert (=> b!1317310 (= (lexList!542 thiss!19762 rules!2550 lt!434533) (tuple2!12961 lt!434519 Nil!13341))))

(declare-fun lt!434532 () Unit!19396)

(assert (=> b!1317310 (= lt!434532 lt!434513)))

(assert (=> b!1317310 (= lt!434510 (++!3399 (BalanceConc!8717 Empty!4388) (charsOf!1281 (_1!7371 (v!21133 lt!434529)))))))

(declare-fun lt!434518 () Option!2578)

(assert (=> b!1317310 (= lt!434518 (maxPrefixZipperSequence!536 thiss!19762 rules!2550 lt!434510))))

(declare-fun c!216222 () Bool)

(assert (=> b!1317310 (= c!216222 ((_ is Some!2577) lt!434518))))

(assert (=> b!1317310 (= (lexRec!263 thiss!19762 rules!2550 (++!3399 (BalanceConc!8717 Empty!4388) (charsOf!1281 (_1!7371 (v!21133 lt!434529))))) e!844403)))

(declare-fun lt!434521 () Unit!19396)

(declare-fun Unit!19412 () Unit!19396)

(assert (=> b!1317310 (= lt!434521 Unit!19412)))

(assert (=> b!1317310 (= lt!434520 (++!3399 (BalanceConc!8717 Empty!4388) (charsOf!1281 (_1!7371 (v!21133 lt!434529)))))))

(declare-fun lt!434527 () List!13407)

(assert (=> b!1317310 (= lt!434527 (list!5023 lt!434520))))

(declare-fun lt!434524 () List!13407)

(assert (=> b!1317310 (= lt!434524 (list!5023 (_2!7371 (v!21133 lt!434529))))))

(declare-fun lt!434507 () Unit!19396)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!219 (List!13407 List!13407) Unit!19396)

(assert (=> b!1317310 (= lt!434507 (lemmaConcatTwoListThenFSndIsSuffix!219 lt!434527 lt!434524))))

(declare-fun isSuffix!241 (List!13407 List!13407) Bool)

(assert (=> b!1317310 (isSuffix!241 lt!434524 (++!3398 lt!434527 lt!434524))))

(declare-fun lt!434506 () Unit!19396)

(assert (=> b!1317310 (= lt!434506 lt!434507)))

(declare-fun b!1317311 () Bool)

(assert (=> b!1317311 (= e!844402 (tuple2!12959 (BalanceConc!8719 Empty!4389) lt!433572))))

(declare-fun b!1317312 () Bool)

(declare-fun lt!434512 () tuple2!12958)

(assert (=> b!1317312 (= lt!434512 (lexRec!263 thiss!19762 rules!2550 (_2!7371 (v!21133 lt!434508))))))

(declare-fun prepend!348 (BalanceConc!8718 Token!4280) BalanceConc!8718)

(assert (=> b!1317312 (= e!844404 (tuple2!12959 (prepend!348 (_1!7365 lt!434512) (_1!7371 (v!21133 lt!434508))) (_2!7365 lt!434512)))))

(declare-fun lt!434509 () tuple2!12958)

(declare-fun b!1317313 () Bool)

(assert (=> b!1317313 (= lt!434509 (lexRec!263 thiss!19762 rules!2550 (_2!7371 (v!21133 lt!434518))))))

(assert (=> b!1317313 (= e!844403 (tuple2!12959 (prepend!348 (_1!7365 lt!434509) (_1!7371 (v!21133 lt!434518))) (_2!7365 lt!434509)))))

(declare-fun d!371659 () Bool)

(declare-fun e!844405 () Bool)

(assert (=> d!371659 e!844405))

(declare-fun res!591901 () Bool)

(assert (=> d!371659 (=> (not res!591901) (not e!844405))))

(declare-fun lt!434537 () tuple2!12958)

(assert (=> d!371659 (= res!591901 (= (list!5022 (_1!7365 lt!434537)) (list!5022 (_1!7365 (lexRec!263 thiss!19762 rules!2550 lt!433572)))))))

(assert (=> d!371659 (= lt!434537 e!844402)))

(declare-fun c!216220 () Bool)

(assert (=> d!371659 (= c!216220 ((_ is Some!2577) lt!434529))))

(declare-fun maxPrefixZipperSequenceV2!208 (LexerInterface!2004 List!13408 BalanceConc!8716 BalanceConc!8716) Option!2578)

(assert (=> d!371659 (= lt!434529 (maxPrefixZipperSequenceV2!208 thiss!19762 rules!2550 lt!433572 lt!433572))))

(declare-fun lt!434538 () Unit!19396)

(declare-fun lt!434514 () Unit!19396)

(assert (=> d!371659 (= lt!434538 lt!434514)))

(declare-fun lt!434516 () List!13407)

(declare-fun lt!434536 () List!13407)

(assert (=> d!371659 (isSuffix!241 lt!434516 (++!3398 lt!434536 lt!434516))))

(assert (=> d!371659 (= lt!434514 (lemmaConcatTwoListThenFSndIsSuffix!219 lt!434536 lt!434516))))

(assert (=> d!371659 (= lt!434516 (list!5023 lt!433572))))

(assert (=> d!371659 (= lt!434536 (list!5023 (BalanceConc!8717 Empty!4388)))))

(assert (=> d!371659 (= (lexTailRecV2!365 thiss!19762 rules!2550 lt!433572 (BalanceConc!8717 Empty!4388) lt!433572 (BalanceConc!8719 Empty!4389)) lt!434537)))

(declare-fun b!1317314 () Bool)

(assert (=> b!1317314 (= e!844405 (= (list!5023 (_2!7365 lt!434537)) (list!5023 (_2!7365 (lexRec!263 thiss!19762 rules!2550 lt!433572)))))))

(assert (= (and d!371659 c!216220) b!1317310))

(assert (= (and d!371659 (not c!216220)) b!1317311))

(assert (= (and b!1317310 c!216221) b!1317312))

(assert (= (and b!1317310 (not c!216221)) b!1317308))

(assert (= (and b!1317310 c!216222) b!1317313))

(assert (= (and b!1317310 (not c!216222)) b!1317309))

(assert (= (and d!371659 res!591901) b!1317314))

(declare-fun m!1471763 () Bool)

(assert (=> b!1317314 m!1471763))

(declare-fun m!1471765 () Bool)

(assert (=> b!1317314 m!1471765))

(declare-fun m!1471767 () Bool)

(assert (=> b!1317314 m!1471767))

(declare-fun m!1471769 () Bool)

(assert (=> b!1317312 m!1471769))

(declare-fun m!1471771 () Bool)

(assert (=> b!1317312 m!1471771))

(declare-fun m!1471773 () Bool)

(assert (=> b!1317310 m!1471773))

(declare-fun m!1471775 () Bool)

(assert (=> b!1317310 m!1471775))

(declare-fun m!1471777 () Bool)

(assert (=> b!1317310 m!1471777))

(declare-fun m!1471779 () Bool)

(assert (=> b!1317310 m!1471779))

(declare-fun m!1471781 () Bool)

(assert (=> b!1317310 m!1471781))

(assert (=> b!1317310 m!1471765))

(declare-fun m!1471783 () Bool)

(assert (=> b!1317310 m!1471783))

(declare-fun m!1471785 () Bool)

(assert (=> b!1317310 m!1471785))

(declare-fun m!1471787 () Bool)

(assert (=> b!1317310 m!1471787))

(declare-fun m!1471789 () Bool)

(assert (=> b!1317310 m!1471789))

(declare-fun m!1471791 () Bool)

(assert (=> b!1317310 m!1471791))

(declare-fun m!1471793 () Bool)

(assert (=> b!1317310 m!1471793))

(declare-fun m!1471795 () Bool)

(assert (=> b!1317310 m!1471795))

(declare-fun m!1471797 () Bool)

(assert (=> b!1317310 m!1471797))

(assert (=> b!1317310 m!1471773))

(declare-fun m!1471799 () Bool)

(assert (=> b!1317310 m!1471799))

(declare-fun m!1471801 () Bool)

(assert (=> b!1317310 m!1471801))

(declare-fun m!1471803 () Bool)

(assert (=> b!1317310 m!1471803))

(declare-fun m!1471805 () Bool)

(assert (=> b!1317310 m!1471805))

(declare-fun m!1471807 () Bool)

(assert (=> b!1317310 m!1471807))

(declare-fun m!1471809 () Bool)

(assert (=> b!1317310 m!1471809))

(assert (=> b!1317310 m!1471799))

(declare-fun m!1471811 () Bool)

(assert (=> b!1317310 m!1471811))

(assert (=> b!1317310 m!1470129))

(declare-fun m!1471813 () Bool)

(assert (=> b!1317310 m!1471813))

(declare-fun m!1471815 () Bool)

(assert (=> b!1317310 m!1471815))

(assert (=> b!1317310 m!1471783))

(assert (=> b!1317310 m!1471791))

(declare-fun m!1471817 () Bool)

(assert (=> b!1317310 m!1471817))

(assert (=> b!1317310 m!1471785))

(assert (=> b!1317310 m!1471781))

(declare-fun m!1471819 () Bool)

(assert (=> b!1317310 m!1471819))

(declare-fun m!1471821 () Bool)

(assert (=> b!1317310 m!1471821))

(declare-fun m!1471823 () Bool)

(assert (=> b!1317310 m!1471823))

(assert (=> b!1317310 m!1471781))

(assert (=> b!1317310 m!1471807))

(assert (=> b!1317310 m!1471803))

(assert (=> b!1317310 m!1471799))

(declare-fun m!1471825 () Bool)

(assert (=> b!1317310 m!1471825))

(assert (=> b!1317310 m!1470129))

(assert (=> b!1317310 m!1471819))

(declare-fun m!1471827 () Bool)

(assert (=> b!1317310 m!1471827))

(assert (=> b!1317310 m!1471789))

(declare-fun m!1471829 () Bool)

(assert (=> b!1317310 m!1471829))

(declare-fun m!1471831 () Bool)

(assert (=> b!1317310 m!1471831))

(declare-fun m!1471833 () Bool)

(assert (=> b!1317310 m!1471833))

(assert (=> b!1317310 m!1471777))

(assert (=> d!371659 m!1470129))

(declare-fun m!1471835 () Bool)

(assert (=> d!371659 m!1471835))

(assert (=> d!371659 m!1471765))

(declare-fun m!1471837 () Bool)

(assert (=> d!371659 m!1471837))

(declare-fun m!1471839 () Bool)

(assert (=> d!371659 m!1471839))

(declare-fun m!1471841 () Bool)

(assert (=> d!371659 m!1471841))

(declare-fun m!1471843 () Bool)

(assert (=> d!371659 m!1471843))

(assert (=> d!371659 m!1468305))

(declare-fun m!1471845 () Bool)

(assert (=> d!371659 m!1471845))

(assert (=> d!371659 m!1471841))

(declare-fun m!1471847 () Bool)

(assert (=> b!1317313 m!1471847))

(declare-fun m!1471849 () Bool)

(assert (=> b!1317313 m!1471849))

(assert (=> d!370793 d!371659))

(declare-fun d!371661 () Bool)

(declare-fun lt!434540 () Token!4280)

(assert (=> d!371661 (= lt!434540 (apply!3037 (list!5022 (_1!7365 lt!433741)) 0))))

(assert (=> d!371661 (= lt!434540 (apply!3040 (c!215722 (_1!7365 lt!433741)) 0))))

(declare-fun e!844406 () Bool)

(assert (=> d!371661 e!844406))

(declare-fun res!591902 () Bool)

(assert (=> d!371661 (=> (not res!591902) (not e!844406))))

(assert (=> d!371661 (= res!591902 (<= 0 0))))

(assert (=> d!371661 (= (apply!3035 (_1!7365 lt!433741) 0) lt!434540)))

(declare-fun b!1317315 () Bool)

(assert (=> b!1317315 (= e!844406 (< 0 (size!10860 (_1!7365 lt!433741))))))

(assert (= (and d!371661 res!591902) b!1317315))

(assert (=> d!371661 m!1470221))

(assert (=> d!371661 m!1470221))

(declare-fun m!1471851 () Bool)

(assert (=> d!371661 m!1471851))

(declare-fun m!1471853 () Bool)

(assert (=> d!371661 m!1471853))

(assert (=> b!1317315 m!1468949))

(assert (=> b!1315535 d!371661))

(assert (=> d!370551 d!370803))

(declare-fun d!371663 () Bool)

(assert (=> d!371663 (= (isEmpty!7914 (originalCharacters!3171 t1!34)) ((_ is Nil!13341) (originalCharacters!3171 t1!34)))))

(assert (=> d!370681 d!371663))

(declare-fun d!371665 () Bool)

(declare-fun lt!434541 () Int)

(assert (=> d!371665 (= lt!434541 (size!10859 (list!5022 (_1!7365 lt!433796))))))

(assert (=> d!371665 (= lt!434541 (size!10863 (c!215722 (_1!7365 lt!433796))))))

(assert (=> d!371665 (= (size!10860 (_1!7365 lt!433796)) lt!434541)))

(declare-fun bs!330614 () Bool)

(assert (= bs!330614 d!371665))

(assert (=> bs!330614 m!1469195))

(assert (=> bs!330614 m!1469195))

(declare-fun m!1471855 () Bool)

(assert (=> bs!330614 m!1471855))

(declare-fun m!1471857 () Bool)

(assert (=> bs!330614 m!1471857))

(assert (=> d!370731 d!371665))

(declare-fun b!1317316 () Bool)

(declare-fun e!844409 () tuple2!12958)

(assert (=> b!1317316 (= e!844409 (tuple2!12959 (BalanceConc!8719 Empty!4389) lt!433558))))

(declare-fun b!1317317 () Bool)

(declare-fun e!844408 () tuple2!12958)

(declare-fun lt!434546 () BalanceConc!8716)

(assert (=> b!1317317 (= e!844408 (tuple2!12959 (BalanceConc!8719 Empty!4389) lt!434546))))

(declare-fun e!844407 () tuple2!12958)

(declare-fun lt!434556 () BalanceConc!8716)

(declare-fun b!1317318 () Bool)

(declare-fun lt!434565 () Option!2578)

(assert (=> b!1317318 (= e!844407 (lexTailRecV2!365 thiss!19762 rules!2550 lt!433558 lt!434556 (_2!7371 (v!21133 lt!434565)) (append!384 (BalanceConc!8719 Empty!4389) (_1!7371 (v!21133 lt!434565)))))))

(declare-fun lt!434558 () tuple2!12958)

(assert (=> b!1317318 (= lt!434558 (lexRec!263 thiss!19762 rules!2550 (_2!7371 (v!21133 lt!434565))))))

(declare-fun lt!434561 () List!13407)

(assert (=> b!1317318 (= lt!434561 (list!5023 (BalanceConc!8717 Empty!4388)))))

(declare-fun lt!434570 () List!13407)

(assert (=> b!1317318 (= lt!434570 (list!5023 (charsOf!1281 (_1!7371 (v!21133 lt!434565)))))))

(declare-fun lt!434562 () List!13407)

(assert (=> b!1317318 (= lt!434562 (list!5023 (_2!7371 (v!21133 lt!434565))))))

(declare-fun lt!434567 () Unit!19396)

(assert (=> b!1317318 (= lt!434567 (lemmaConcatAssociativity!825 lt!434561 lt!434570 lt!434562))))

(assert (=> b!1317318 (= (++!3398 (++!3398 lt!434561 lt!434570) lt!434562) (++!3398 lt!434561 (++!3398 lt!434570 lt!434562)))))

(declare-fun lt!434553 () Unit!19396)

(assert (=> b!1317318 (= lt!434553 lt!434567)))

(declare-fun lt!434544 () Option!2578)

(assert (=> b!1317318 (= lt!434544 (maxPrefixZipperSequence!536 thiss!19762 rules!2550 lt!433558))))

(declare-fun c!216224 () Bool)

(assert (=> b!1317318 (= c!216224 ((_ is Some!2577) lt!434544))))

(assert (=> b!1317318 (= (lexRec!263 thiss!19762 rules!2550 lt!433558) e!844409)))

(declare-fun lt!434575 () Unit!19396)

(declare-fun Unit!19415 () Unit!19396)

(assert (=> b!1317318 (= lt!434575 Unit!19415)))

(declare-fun lt!434547 () List!13409)

(assert (=> b!1317318 (= lt!434547 (list!5022 (BalanceConc!8719 Empty!4389)))))

(declare-fun lt!434566 () List!13409)

(assert (=> b!1317318 (= lt!434566 (Cons!13343 (_1!7371 (v!21133 lt!434565)) Nil!13343))))

(declare-fun lt!434564 () List!13409)

(assert (=> b!1317318 (= lt!434564 (list!5022 (_1!7365 lt!434558)))))

(declare-fun lt!434551 () Unit!19396)

(assert (=> b!1317318 (= lt!434551 (lemmaConcatAssociativity!826 lt!434547 lt!434566 lt!434564))))

(assert (=> b!1317318 (= (++!3401 (++!3401 lt!434547 lt!434566) lt!434564) (++!3401 lt!434547 (++!3401 lt!434566 lt!434564)))))

(declare-fun lt!434571 () Unit!19396)

(assert (=> b!1317318 (= lt!434571 lt!434551)))

(declare-fun lt!434569 () List!13407)

(assert (=> b!1317318 (= lt!434569 (++!3398 (list!5023 (BalanceConc!8717 Empty!4388)) (list!5023 (charsOf!1281 (_1!7371 (v!21133 lt!434565))))))))

(declare-fun lt!434559 () List!13407)

(assert (=> b!1317318 (= lt!434559 (list!5023 (_2!7371 (v!21133 lt!434565))))))

(declare-fun lt!434555 () List!13409)

(assert (=> b!1317318 (= lt!434555 (list!5022 (append!384 (BalanceConc!8719 Empty!4389) (_1!7371 (v!21133 lt!434565)))))))

(declare-fun lt!434549 () Unit!19396)

(assert (=> b!1317318 (= lt!434549 (lemmaLexThenLexPrefix!178 thiss!19762 rules!2550 lt!434569 lt!434559 lt!434555 (list!5022 (_1!7365 lt!434558)) (list!5023 (_2!7365 lt!434558))))))

(assert (=> b!1317318 (= (lexList!542 thiss!19762 rules!2550 lt!434569) (tuple2!12961 lt!434555 Nil!13341))))

(declare-fun lt!434568 () Unit!19396)

(assert (=> b!1317318 (= lt!434568 lt!434549)))

(assert (=> b!1317318 (= lt!434546 (++!3399 (BalanceConc!8717 Empty!4388) (charsOf!1281 (_1!7371 (v!21133 lt!434565)))))))

(declare-fun lt!434554 () Option!2578)

(assert (=> b!1317318 (= lt!434554 (maxPrefixZipperSequence!536 thiss!19762 rules!2550 lt!434546))))

(declare-fun c!216225 () Bool)

(assert (=> b!1317318 (= c!216225 ((_ is Some!2577) lt!434554))))

(assert (=> b!1317318 (= (lexRec!263 thiss!19762 rules!2550 (++!3399 (BalanceConc!8717 Empty!4388) (charsOf!1281 (_1!7371 (v!21133 lt!434565))))) e!844408)))

(declare-fun lt!434557 () Unit!19396)

(declare-fun Unit!19416 () Unit!19396)

(assert (=> b!1317318 (= lt!434557 Unit!19416)))

(assert (=> b!1317318 (= lt!434556 (++!3399 (BalanceConc!8717 Empty!4388) (charsOf!1281 (_1!7371 (v!21133 lt!434565)))))))

(declare-fun lt!434563 () List!13407)

(assert (=> b!1317318 (= lt!434563 (list!5023 lt!434556))))

(declare-fun lt!434560 () List!13407)

(assert (=> b!1317318 (= lt!434560 (list!5023 (_2!7371 (v!21133 lt!434565))))))

(declare-fun lt!434543 () Unit!19396)

(assert (=> b!1317318 (= lt!434543 (lemmaConcatTwoListThenFSndIsSuffix!219 lt!434563 lt!434560))))

(assert (=> b!1317318 (isSuffix!241 lt!434560 (++!3398 lt!434563 lt!434560))))

(declare-fun lt!434542 () Unit!19396)

(assert (=> b!1317318 (= lt!434542 lt!434543)))

(declare-fun b!1317319 () Bool)

(assert (=> b!1317319 (= e!844407 (tuple2!12959 (BalanceConc!8719 Empty!4389) lt!433558))))

(declare-fun lt!434548 () tuple2!12958)

(declare-fun b!1317320 () Bool)

(assert (=> b!1317320 (= lt!434548 (lexRec!263 thiss!19762 rules!2550 (_2!7371 (v!21133 lt!434544))))))

(assert (=> b!1317320 (= e!844409 (tuple2!12959 (prepend!348 (_1!7365 lt!434548) (_1!7371 (v!21133 lt!434544))) (_2!7365 lt!434548)))))

(declare-fun b!1317321 () Bool)

(declare-fun lt!434545 () tuple2!12958)

(assert (=> b!1317321 (= lt!434545 (lexRec!263 thiss!19762 rules!2550 (_2!7371 (v!21133 lt!434554))))))

(assert (=> b!1317321 (= e!844408 (tuple2!12959 (prepend!348 (_1!7365 lt!434545) (_1!7371 (v!21133 lt!434554))) (_2!7365 lt!434545)))))

(declare-fun d!371667 () Bool)

(declare-fun e!844410 () Bool)

(assert (=> d!371667 e!844410))

(declare-fun res!591903 () Bool)

(assert (=> d!371667 (=> (not res!591903) (not e!844410))))

(declare-fun lt!434573 () tuple2!12958)

(assert (=> d!371667 (= res!591903 (= (list!5022 (_1!7365 lt!434573)) (list!5022 (_1!7365 (lexRec!263 thiss!19762 rules!2550 lt!433558)))))))

(assert (=> d!371667 (= lt!434573 e!844407)))

(declare-fun c!216223 () Bool)

(assert (=> d!371667 (= c!216223 ((_ is Some!2577) lt!434565))))

(assert (=> d!371667 (= lt!434565 (maxPrefixZipperSequenceV2!208 thiss!19762 rules!2550 lt!433558 lt!433558))))

(declare-fun lt!434574 () Unit!19396)

(declare-fun lt!434550 () Unit!19396)

(assert (=> d!371667 (= lt!434574 lt!434550)))

(declare-fun lt!434552 () List!13407)

(declare-fun lt!434572 () List!13407)

(assert (=> d!371667 (isSuffix!241 lt!434552 (++!3398 lt!434572 lt!434552))))

(assert (=> d!371667 (= lt!434550 (lemmaConcatTwoListThenFSndIsSuffix!219 lt!434572 lt!434552))))

(assert (=> d!371667 (= lt!434552 (list!5023 lt!433558))))

(assert (=> d!371667 (= lt!434572 (list!5023 (BalanceConc!8717 Empty!4388)))))

(assert (=> d!371667 (= (lexTailRecV2!365 thiss!19762 rules!2550 lt!433558 (BalanceConc!8717 Empty!4388) lt!433558 (BalanceConc!8719 Empty!4389)) lt!434573)))

(declare-fun b!1317322 () Bool)

(assert (=> b!1317322 (= e!844410 (= (list!5023 (_2!7365 lt!434573)) (list!5023 (_2!7365 (lexRec!263 thiss!19762 rules!2550 lt!433558)))))))

(assert (= (and d!371667 c!216223) b!1317318))

(assert (= (and d!371667 (not c!216223)) b!1317319))

(assert (= (and b!1317318 c!216224) b!1317320))

(assert (= (and b!1317318 (not c!216224)) b!1317316))

(assert (= (and b!1317318 c!216225) b!1317321))

(assert (= (and b!1317318 (not c!216225)) b!1317317))

(assert (= (and d!371667 res!591903) b!1317322))

(declare-fun m!1471859 () Bool)

(assert (=> b!1317322 m!1471859))

(declare-fun m!1471861 () Bool)

(assert (=> b!1317322 m!1471861))

(declare-fun m!1471863 () Bool)

(assert (=> b!1317322 m!1471863))

(declare-fun m!1471865 () Bool)

(assert (=> b!1317320 m!1471865))

(declare-fun m!1471867 () Bool)

(assert (=> b!1317320 m!1471867))

(declare-fun m!1471869 () Bool)

(assert (=> b!1317318 m!1471869))

(declare-fun m!1471871 () Bool)

(assert (=> b!1317318 m!1471871))

(declare-fun m!1471873 () Bool)

(assert (=> b!1317318 m!1471873))

(declare-fun m!1471875 () Bool)

(assert (=> b!1317318 m!1471875))

(declare-fun m!1471877 () Bool)

(assert (=> b!1317318 m!1471877))

(assert (=> b!1317318 m!1471861))

(declare-fun m!1471879 () Bool)

(assert (=> b!1317318 m!1471879))

(declare-fun m!1471881 () Bool)

(assert (=> b!1317318 m!1471881))

(declare-fun m!1471883 () Bool)

(assert (=> b!1317318 m!1471883))

(declare-fun m!1471885 () Bool)

(assert (=> b!1317318 m!1471885))

(declare-fun m!1471887 () Bool)

(assert (=> b!1317318 m!1471887))

(declare-fun m!1471889 () Bool)

(assert (=> b!1317318 m!1471889))

(declare-fun m!1471891 () Bool)

(assert (=> b!1317318 m!1471891))

(assert (=> b!1317318 m!1471797))

(assert (=> b!1317318 m!1471869))

(declare-fun m!1471893 () Bool)

(assert (=> b!1317318 m!1471893))

(declare-fun m!1471895 () Bool)

(assert (=> b!1317318 m!1471895))

(declare-fun m!1471897 () Bool)

(assert (=> b!1317318 m!1471897))

(declare-fun m!1471899 () Bool)

(assert (=> b!1317318 m!1471899))

(declare-fun m!1471901 () Bool)

(assert (=> b!1317318 m!1471901))

(declare-fun m!1471903 () Bool)

(assert (=> b!1317318 m!1471903))

(assert (=> b!1317318 m!1471893))

(declare-fun m!1471905 () Bool)

(assert (=> b!1317318 m!1471905))

(assert (=> b!1317318 m!1470129))

(declare-fun m!1471907 () Bool)

(assert (=> b!1317318 m!1471907))

(declare-fun m!1471909 () Bool)

(assert (=> b!1317318 m!1471909))

(assert (=> b!1317318 m!1471879))

(assert (=> b!1317318 m!1471887))

(declare-fun m!1471911 () Bool)

(assert (=> b!1317318 m!1471911))

(assert (=> b!1317318 m!1471881))

(assert (=> b!1317318 m!1471877))

(declare-fun m!1471913 () Bool)

(assert (=> b!1317318 m!1471913))

(declare-fun m!1471915 () Bool)

(assert (=> b!1317318 m!1471915))

(declare-fun m!1471917 () Bool)

(assert (=> b!1317318 m!1471917))

(assert (=> b!1317318 m!1471877))

(assert (=> b!1317318 m!1471901))

(assert (=> b!1317318 m!1471897))

(assert (=> b!1317318 m!1471893))

(declare-fun m!1471919 () Bool)

(assert (=> b!1317318 m!1471919))

(assert (=> b!1317318 m!1470129))

(assert (=> b!1317318 m!1471913))

(declare-fun m!1471921 () Bool)

(assert (=> b!1317318 m!1471921))

(assert (=> b!1317318 m!1471885))

(declare-fun m!1471923 () Bool)

(assert (=> b!1317318 m!1471923))

(declare-fun m!1471925 () Bool)

(assert (=> b!1317318 m!1471925))

(declare-fun m!1471927 () Bool)

(assert (=> b!1317318 m!1471927))

(assert (=> b!1317318 m!1471873))

(assert (=> d!371667 m!1470129))

(declare-fun m!1471929 () Bool)

(assert (=> d!371667 m!1471929))

(assert (=> d!371667 m!1471861))

(declare-fun m!1471931 () Bool)

(assert (=> d!371667 m!1471931))

(declare-fun m!1471933 () Bool)

(assert (=> d!371667 m!1471933))

(declare-fun m!1471935 () Bool)

(assert (=> d!371667 m!1471935))

(declare-fun m!1471937 () Bool)

(assert (=> d!371667 m!1471937))

(assert (=> d!371667 m!1468299))

(declare-fun m!1471939 () Bool)

(assert (=> d!371667 m!1471939))

(assert (=> d!371667 m!1471935))

(declare-fun m!1471941 () Bool)

(assert (=> b!1317321 m!1471941))

(declare-fun m!1471943 () Bool)

(assert (=> b!1317321 m!1471943))

(assert (=> d!370731 d!371667))

(declare-fun d!371669 () Bool)

(declare-fun c!216226 () Bool)

(assert (=> d!371669 (= c!216226 ((_ is Empty!4389) (c!215722 (_1!7365 lt!433580))))))

(declare-fun e!844411 () List!13409)

(assert (=> d!371669 (= (list!5027 (c!215722 (_1!7365 lt!433580))) e!844411)))

(declare-fun b!1317326 () Bool)

(declare-fun e!844412 () List!13409)

(assert (=> b!1317326 (= e!844412 (++!3401 (list!5027 (left!11469 (c!215722 (_1!7365 lt!433580)))) (list!5027 (right!11799 (c!215722 (_1!7365 lt!433580))))))))

(declare-fun b!1317324 () Bool)

(assert (=> b!1317324 (= e!844411 e!844412)))

(declare-fun c!216227 () Bool)

(assert (=> b!1317324 (= c!216227 ((_ is Leaf!6740) (c!215722 (_1!7365 lt!433580))))))

(declare-fun b!1317325 () Bool)

(assert (=> b!1317325 (= e!844412 (list!5031 (xs!7104 (c!215722 (_1!7365 lt!433580)))))))

(declare-fun b!1317323 () Bool)

(assert (=> b!1317323 (= e!844411 Nil!13343)))

(assert (= (and d!371669 c!216226) b!1317323))

(assert (= (and d!371669 (not c!216226)) b!1317324))

(assert (= (and b!1317324 c!216227) b!1317325))

(assert (= (and b!1317324 (not c!216227)) b!1317326))

(declare-fun m!1471945 () Bool)

(assert (=> b!1317326 m!1471945))

(declare-fun m!1471947 () Bool)

(assert (=> b!1317326 m!1471947))

(assert (=> b!1317326 m!1471945))

(assert (=> b!1317326 m!1471947))

(declare-fun m!1471949 () Bool)

(assert (=> b!1317326 m!1471949))

(declare-fun m!1471951 () Bool)

(assert (=> b!1317325 m!1471951))

(assert (=> d!370791 d!371669))

(declare-fun d!371671 () Bool)

(assert (=> d!371671 (= (isEmpty!7914 (originalCharacters!3171 t2!34)) ((_ is Nil!13341) (originalCharacters!3171 t2!34)))))

(assert (=> d!370687 d!371671))

(assert (=> b!1315770 d!370777))

(declare-fun d!371673 () Bool)

(declare-fun c!216228 () Bool)

(assert (=> d!371673 (= c!216228 (isEmpty!7914 (tail!1884 lt!433563)))))

(declare-fun e!844413 () Bool)

(assert (=> d!371673 (= (prefixMatch!136 (derivativeStep!899 lt!433562 (head!2273 lt!433563)) (tail!1884 lt!433563)) e!844413)))

(declare-fun b!1317327 () Bool)

(assert (=> b!1317327 (= e!844413 (not (lostCause!275 (derivativeStep!899 lt!433562 (head!2273 lt!433563)))))))

(declare-fun b!1317328 () Bool)

(assert (=> b!1317328 (= e!844413 (prefixMatch!136 (derivativeStep!899 (derivativeStep!899 lt!433562 (head!2273 lt!433563)) (head!2273 (tail!1884 lt!433563))) (tail!1884 (tail!1884 lt!433563))))))

(assert (= (and d!371673 c!216228) b!1317327))

(assert (= (and d!371673 (not c!216228)) b!1317328))

(assert (=> d!371673 m!1469137))

(declare-fun m!1471953 () Bool)

(assert (=> d!371673 m!1471953))

(assert (=> b!1317327 m!1469135))

(declare-fun m!1471955 () Bool)

(assert (=> b!1317327 m!1471955))

(assert (=> b!1317328 m!1469137))

(declare-fun m!1471957 () Bool)

(assert (=> b!1317328 m!1471957))

(assert (=> b!1317328 m!1469135))

(assert (=> b!1317328 m!1471957))

(declare-fun m!1471959 () Bool)

(assert (=> b!1317328 m!1471959))

(assert (=> b!1317328 m!1469137))

(declare-fun m!1471961 () Bool)

(assert (=> b!1317328 m!1471961))

(assert (=> b!1317328 m!1471959))

(assert (=> b!1317328 m!1471961))

(declare-fun m!1471963 () Bool)

(assert (=> b!1317328 m!1471963))

(assert (=> b!1315643 d!371673))

(declare-fun bm!89501 () Bool)

(declare-fun call!89506 () Regex!3623)

(declare-fun c!216231 () Bool)

(assert (=> bm!89501 (= call!89506 (derivativeStep!899 (ite c!216231 (regOne!7759 lt!433562) (regOne!7758 lt!433562)) (head!2273 lt!433563)))))

(declare-fun b!1317329 () Bool)

(declare-fun c!216232 () Bool)

(assert (=> b!1317329 (= c!216232 (nullable!1147 (regOne!7758 lt!433562)))))

(declare-fun e!844415 () Regex!3623)

(declare-fun e!844418 () Regex!3623)

(assert (=> b!1317329 (= e!844415 e!844418)))

(declare-fun b!1317331 () Bool)

(declare-fun call!89509 () Regex!3623)

(assert (=> b!1317331 (= e!844418 (Union!3623 (Concat!6023 call!89509 (regTwo!7758 lt!433562)) EmptyLang!3623))))

(declare-fun bm!89502 () Bool)

(declare-fun call!89508 () Regex!3623)

(assert (=> bm!89502 (= call!89509 call!89508)))

(declare-fun b!1317332 () Bool)

(assert (=> b!1317332 (= c!216231 ((_ is Union!3623) lt!433562))))

(declare-fun e!844417 () Regex!3623)

(declare-fun e!844416 () Regex!3623)

(assert (=> b!1317332 (= e!844417 e!844416)))

(declare-fun b!1317330 () Bool)

(assert (=> b!1317330 (= e!844415 (Concat!6023 call!89508 lt!433562))))

(declare-fun d!371675 () Bool)

(declare-fun lt!434576 () Regex!3623)

(assert (=> d!371675 (validRegex!1549 lt!434576)))

(declare-fun e!844414 () Regex!3623)

(assert (=> d!371675 (= lt!434576 e!844414)))

(declare-fun c!216233 () Bool)

(assert (=> d!371675 (= c!216233 (or ((_ is EmptyExpr!3623) lt!433562) ((_ is EmptyLang!3623) lt!433562)))))

(assert (=> d!371675 (validRegex!1549 lt!433562)))

(assert (=> d!371675 (= (derivativeStep!899 lt!433562 (head!2273 lt!433563)) lt!434576)))

(declare-fun bm!89503 () Bool)

(declare-fun call!89507 () Regex!3623)

(assert (=> bm!89503 (= call!89508 call!89507)))

(declare-fun b!1317333 () Bool)

(assert (=> b!1317333 (= e!844416 e!844415)))

(declare-fun c!216229 () Bool)

(assert (=> b!1317333 (= c!216229 ((_ is Star!3623) lt!433562))))

(declare-fun bm!89504 () Bool)

(assert (=> bm!89504 (= call!89507 (derivativeStep!899 (ite c!216231 (regTwo!7759 lt!433562) (ite c!216229 (reg!3952 lt!433562) (ite c!216232 (regTwo!7758 lt!433562) (regOne!7758 lt!433562)))) (head!2273 lt!433563)))))

(declare-fun b!1317334 () Bool)

(assert (=> b!1317334 (= e!844417 (ite (= (head!2273 lt!433563) (c!215721 lt!433562)) EmptyExpr!3623 EmptyLang!3623))))

(declare-fun b!1317335 () Bool)

(assert (=> b!1317335 (= e!844414 e!844417)))

(declare-fun c!216230 () Bool)

(assert (=> b!1317335 (= c!216230 ((_ is ElementMatch!3623) lt!433562))))

(declare-fun b!1317336 () Bool)

(assert (=> b!1317336 (= e!844418 (Union!3623 (Concat!6023 call!89506 (regTwo!7758 lt!433562)) call!89509))))

(declare-fun b!1317337 () Bool)

(assert (=> b!1317337 (= e!844414 EmptyLang!3623)))

(declare-fun b!1317338 () Bool)

(assert (=> b!1317338 (= e!844416 (Union!3623 call!89506 call!89507))))

(assert (= (and d!371675 c!216233) b!1317337))

(assert (= (and d!371675 (not c!216233)) b!1317335))

(assert (= (and b!1317335 c!216230) b!1317334))

(assert (= (and b!1317335 (not c!216230)) b!1317332))

(assert (= (and b!1317332 c!216231) b!1317338))

(assert (= (and b!1317332 (not c!216231)) b!1317333))

(assert (= (and b!1317333 c!216229) b!1317330))

(assert (= (and b!1317333 (not c!216229)) b!1317329))

(assert (= (and b!1317329 c!216232) b!1317336))

(assert (= (and b!1317329 (not c!216232)) b!1317331))

(assert (= (or b!1317336 b!1317331) bm!89502))

(assert (= (or b!1317330 bm!89502) bm!89503))

(assert (= (or b!1317338 b!1317336) bm!89501))

(assert (= (or b!1317338 bm!89503) bm!89504))

(assert (=> bm!89501 m!1469133))

(declare-fun m!1471965 () Bool)

(assert (=> bm!89501 m!1471965))

(assert (=> b!1317329 m!1471185))

(declare-fun m!1471967 () Bool)

(assert (=> d!371675 m!1471967))

(assert (=> d!371675 m!1468669))

(assert (=> bm!89504 m!1469133))

(declare-fun m!1471969 () Bool)

(assert (=> bm!89504 m!1471969))

(assert (=> b!1315643 d!371675))

(declare-fun d!371677 () Bool)

(assert (=> d!371677 (= (head!2273 lt!433563) (h!18742 lt!433563))))

(assert (=> b!1315643 d!371677))

(declare-fun d!371679 () Bool)

(assert (=> d!371679 (= (tail!1884 lt!433563) (t!118280 lt!433563))))

(assert (=> b!1315643 d!371679))

(declare-fun d!371681 () Bool)

(declare-fun c!216234 () Bool)

(assert (=> d!371681 (= c!216234 ((_ is Nil!13341) lt!433574))))

(declare-fun e!844419 () (InoxSet C!7536))

(assert (=> d!371681 (= (content!1874 lt!433574) e!844419)))

(declare-fun b!1317339 () Bool)

(assert (=> b!1317339 (= e!844419 ((as const (Array C!7536 Bool)) false))))

(declare-fun b!1317340 () Bool)

(assert (=> b!1317340 (= e!844419 ((_ map or) (store ((as const (Array C!7536 Bool)) false) (h!18742 lt!433574) true) (content!1874 (t!118280 lt!433574))))))

(assert (= (and d!371681 c!216234) b!1317339))

(assert (= (and d!371681 (not c!216234)) b!1317340))

(declare-fun m!1471971 () Bool)

(assert (=> b!1317340 m!1471971))

(assert (=> b!1317340 m!1470527))

(assert (=> d!370779 d!371681))

(declare-fun d!371683 () Bool)

(assert (=> d!371683 (= (isEmpty!7912 lt!433652) (not ((_ is Some!2575) lt!433652)))))

(assert (=> d!370553 d!371683))

(declare-fun b!1317342 () Bool)

(declare-fun res!591907 () Bool)

(declare-fun e!844421 () Bool)

(assert (=> b!1317342 (=> (not res!591907) (not e!844421))))

(assert (=> b!1317342 (= res!591907 (= (head!2273 (list!5023 lt!433570)) (head!2273 (list!5023 lt!433570))))))

(declare-fun b!1317343 () Bool)

(assert (=> b!1317343 (= e!844421 (isPrefix!1073 (tail!1884 (list!5023 lt!433570)) (tail!1884 (list!5023 lt!433570))))))

(declare-fun d!371685 () Bool)

(declare-fun e!844422 () Bool)

(assert (=> d!371685 e!844422))

(declare-fun res!591904 () Bool)

(assert (=> d!371685 (=> res!591904 e!844422)))

(declare-fun lt!434577 () Bool)

(assert (=> d!371685 (= res!591904 (not lt!434577))))

(declare-fun e!844420 () Bool)

(assert (=> d!371685 (= lt!434577 e!844420)))

(declare-fun res!591906 () Bool)

(assert (=> d!371685 (=> res!591906 e!844420)))

(assert (=> d!371685 (= res!591906 ((_ is Nil!13341) (list!5023 lt!433570)))))

(assert (=> d!371685 (= (isPrefix!1073 (list!5023 lt!433570) (list!5023 lt!433570)) lt!434577)))

(declare-fun b!1317344 () Bool)

(assert (=> b!1317344 (= e!844422 (>= (size!10858 (list!5023 lt!433570)) (size!10858 (list!5023 lt!433570))))))

(declare-fun b!1317341 () Bool)

(assert (=> b!1317341 (= e!844420 e!844421)))

(declare-fun res!591905 () Bool)

(assert (=> b!1317341 (=> (not res!591905) (not e!844421))))

(assert (=> b!1317341 (= res!591905 (not ((_ is Nil!13341) (list!5023 lt!433570))))))

(assert (= (and d!371685 (not res!591906)) b!1317341))

(assert (= (and b!1317341 res!591905) b!1317342))

(assert (= (and b!1317342 res!591907) b!1317343))

(assert (= (and d!371685 (not res!591904)) b!1317344))

(assert (=> b!1317342 m!1468409))

(assert (=> b!1317342 m!1470839))

(assert (=> b!1317342 m!1468409))

(assert (=> b!1317342 m!1470839))

(assert (=> b!1317343 m!1468409))

(assert (=> b!1317343 m!1470841))

(assert (=> b!1317343 m!1468409))

(assert (=> b!1317343 m!1470841))

(assert (=> b!1317343 m!1470841))

(assert (=> b!1317343 m!1470841))

(declare-fun m!1471973 () Bool)

(assert (=> b!1317343 m!1471973))

(assert (=> b!1317344 m!1468409))

(assert (=> b!1317344 m!1468583))

(assert (=> b!1317344 m!1468409))

(assert (=> b!1317344 m!1468583))

(assert (=> d!370553 d!371685))

(declare-fun d!371687 () Bool)

(assert (=> d!371687 (isPrefix!1073 (list!5023 lt!433570) (list!5023 lt!433570))))

(declare-fun lt!434578 () Unit!19396)

(assert (=> d!371687 (= lt!434578 (choose!8054 (list!5023 lt!433570) (list!5023 lt!433570)))))

(assert (=> d!371687 (= (lemmaIsPrefixRefl!752 (list!5023 lt!433570) (list!5023 lt!433570)) lt!434578)))

(declare-fun bs!330615 () Bool)

(assert (= bs!330615 d!371687))

(assert (=> bs!330615 m!1468409))

(assert (=> bs!330615 m!1468409))

(assert (=> bs!330615 m!1468599))

(assert (=> bs!330615 m!1468409))

(assert (=> bs!330615 m!1468409))

(declare-fun m!1471975 () Bool)

(assert (=> bs!330615 m!1471975))

(assert (=> d!370553 d!371687))

(assert (=> d!370553 d!371247))

(declare-fun d!371689 () Bool)

(declare-fun lt!434579 () Bool)

(assert (=> d!371689 (= lt!434579 (select (content!1874 (t!118280 lt!433563)) lt!433579))))

(declare-fun e!844423 () Bool)

(assert (=> d!371689 (= lt!434579 e!844423)))

(declare-fun res!591909 () Bool)

(assert (=> d!371689 (=> (not res!591909) (not e!844423))))

(assert (=> d!371689 (= res!591909 ((_ is Cons!13341) (t!118280 lt!433563)))))

(assert (=> d!371689 (= (contains!2340 (t!118280 lt!433563) lt!433579) lt!434579)))

(declare-fun b!1317345 () Bool)

(declare-fun e!844424 () Bool)

(assert (=> b!1317345 (= e!844423 e!844424)))

(declare-fun res!591908 () Bool)

(assert (=> b!1317345 (=> res!591908 e!844424)))

(assert (=> b!1317345 (= res!591908 (= (h!18742 (t!118280 lt!433563)) lt!433579))))

(declare-fun b!1317346 () Bool)

(assert (=> b!1317346 (= e!844424 (contains!2340 (t!118280 (t!118280 lt!433563)) lt!433579))))

(assert (= (and d!371689 res!591909) b!1317345))

(assert (= (and b!1317345 (not res!591908)) b!1317346))

(assert (=> d!371689 m!1470317))

(declare-fun m!1471977 () Bool)

(assert (=> d!371689 m!1471977))

(declare-fun m!1471979 () Bool)

(assert (=> b!1317346 m!1471979))

(assert (=> b!1315286 d!371689))

(assert (=> bm!89387 d!371157))

(declare-fun d!371691 () Bool)

(assert (=> d!371691 (= (inv!16 (value!75439 t1!34)) (= (charsToInt!0 (text!17240 (value!75439 t1!34))) (value!75430 (value!75439 t1!34))))))

(declare-fun bs!330616 () Bool)

(assert (= bs!330616 d!371691))

(declare-fun m!1471981 () Bool)

(assert (=> bs!330616 m!1471981))

(assert (=> b!1315578 d!371691))

(declare-fun b!1317347 () Bool)

(declare-fun e!844427 () Regex!3623)

(assert (=> b!1317347 (= e!844427 (getWitness!213 (t!118283 (t!118283 (map!2930 rules!2550 lambda!53526))) lambda!53527))))

(declare-fun b!1317348 () Bool)

(declare-fun lt!434581 () Unit!19396)

(declare-fun Unit!19417 () Unit!19396)

(assert (=> b!1317348 (= lt!434581 Unit!19417)))

(assert (=> b!1317348 false))

(assert (=> b!1317348 (= e!844427 (head!2272 (t!118283 (map!2930 rules!2550 lambda!53526))))))

(declare-fun b!1317349 () Bool)

(declare-fun e!844426 () Bool)

(assert (=> b!1317349 (= e!844426 (dynLambda!5818 lambda!53527 (h!18745 (t!118283 (map!2930 rules!2550 lambda!53526)))))))

(declare-fun b!1317350 () Bool)

(declare-fun e!844425 () Regex!3623)

(assert (=> b!1317350 (= e!844425 e!844427)))

(declare-fun c!216235 () Bool)

(assert (=> b!1317350 (= c!216235 ((_ is Cons!13344) (t!118283 (map!2930 rules!2550 lambda!53526))))))

(declare-fun d!371693 () Bool)

(declare-fun e!844428 () Bool)

(assert (=> d!371693 e!844428))

(declare-fun res!591910 () Bool)

(assert (=> d!371693 (=> (not res!591910) (not e!844428))))

(declare-fun lt!434580 () Regex!3623)

(assert (=> d!371693 (= res!591910 (dynLambda!5818 lambda!53527 lt!434580))))

(assert (=> d!371693 (= lt!434580 e!844425)))

(declare-fun c!216236 () Bool)

(assert (=> d!371693 (= c!216236 e!844426)))

(declare-fun res!591911 () Bool)

(assert (=> d!371693 (=> (not res!591911) (not e!844426))))

(assert (=> d!371693 (= res!591911 ((_ is Cons!13344) (t!118283 (map!2930 rules!2550 lambda!53526))))))

(assert (=> d!371693 (exists!321 (t!118283 (map!2930 rules!2550 lambda!53526)) lambda!53527)))

(assert (=> d!371693 (= (getWitness!213 (t!118283 (map!2930 rules!2550 lambda!53526)) lambda!53527) lt!434580)))

(declare-fun b!1317351 () Bool)

(assert (=> b!1317351 (= e!844428 (contains!2341 (t!118283 (map!2930 rules!2550 lambda!53526)) lt!434580))))

(declare-fun b!1317352 () Bool)

(assert (=> b!1317352 (= e!844425 (h!18745 (t!118283 (map!2930 rules!2550 lambda!53526))))))

(assert (= (and d!371693 res!591911) b!1317349))

(assert (= (and d!371693 c!216236) b!1317352))

(assert (= (and d!371693 (not c!216236)) b!1317350))

(assert (= (and b!1317350 c!216235) b!1317347))

(assert (= (and b!1317350 (not c!216235)) b!1317348))

(assert (= (and d!371693 res!591910) b!1317351))

(declare-fun b_lambda!38199 () Bool)

(assert (=> (not b_lambda!38199) (not b!1317349)))

(declare-fun b_lambda!38201 () Bool)

(assert (=> (not b_lambda!38201) (not d!371693)))

(declare-fun m!1471983 () Bool)

(assert (=> b!1317348 m!1471983))

(declare-fun m!1471985 () Bool)

(assert (=> d!371693 m!1471985))

(declare-fun m!1471987 () Bool)

(assert (=> d!371693 m!1471987))

(declare-fun m!1471989 () Bool)

(assert (=> b!1317347 m!1471989))

(declare-fun m!1471991 () Bool)

(assert (=> b!1317349 m!1471991))

(declare-fun m!1471993 () Bool)

(assert (=> b!1317351 m!1471993))

(assert (=> b!1315228 d!371693))

(declare-fun bs!330617 () Bool)

(declare-fun d!371695 () Bool)

(assert (= bs!330617 (and d!371695 d!371619)))

(declare-fun lambda!53644 () Int)

(assert (=> bs!330617 (= (and (= (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (toChars!3391 (transformation!2309 (rule!4050 t1!34)))) (= (toValue!3532 (transformation!2309 (rule!4050 t2!34))) (toValue!3532 (transformation!2309 (rule!4050 t1!34))))) (= lambda!53644 lambda!53643))))

(assert (=> d!371695 true))

(assert (=> d!371695 (< (dynLambda!5835 order!8043 (toChars!3391 (transformation!2309 (rule!4050 t2!34)))) (dynLambda!5836 order!8045 lambda!53644))))

(assert (=> d!371695 true))

(assert (=> d!371695 (< (dynLambda!5833 order!8039 (toValue!3532 (transformation!2309 (rule!4050 t2!34)))) (dynLambda!5836 order!8045 lambda!53644))))

(assert (=> d!371695 (= (semiInverseModEq!868 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (toValue!3532 (transformation!2309 (rule!4050 t2!34)))) (Forall!517 lambda!53644))))

(declare-fun bs!330618 () Bool)

(assert (= bs!330618 d!371695))

(declare-fun m!1471995 () Bool)

(assert (=> bs!330618 m!1471995))

(assert (=> d!370711 d!371695))

(declare-fun d!371697 () Bool)

(declare-fun res!591914 () List!13407)

(assert (=> d!371697 (dynLambda!5819 lambda!53525 res!591914)))

(declare-fun e!844431 () Bool)

(assert (=> d!371697 e!844431))

(assert (=> d!371697 (= (choose!8046 lambda!53525) res!591914)))

(declare-fun b!1317355 () Bool)

(declare-fun tp!383002 () Bool)

(assert (=> b!1317355 (= e!844431 (and tp_is_empty!6627 tp!383002))))

(assert (= (and d!371697 ((_ is Cons!13341) res!591914)) b!1317355))

(declare-fun b_lambda!38203 () Bool)

(assert (=> (not b_lambda!38203) (not d!371697)))

(declare-fun m!1471997 () Bool)

(assert (=> d!371697 m!1471997))

(assert (=> d!370573 d!371697))

(assert (=> d!370573 d!370689))

(declare-fun b!1317356 () Bool)

(declare-fun e!844434 () tuple2!12960)

(assert (=> b!1317356 (= e!844434 (tuple2!12961 Nil!13343 (_2!7367 (v!21118 lt!433783))))))

(declare-fun b!1317357 () Bool)

(declare-fun e!844433 () Bool)

(declare-fun lt!434582 () tuple2!12960)

(assert (=> b!1317357 (= e!844433 (= (_2!7366 lt!434582) (_2!7367 (v!21118 lt!433783))))))

(declare-fun b!1317358 () Bool)

(declare-fun e!844432 () Bool)

(assert (=> b!1317358 (= e!844433 e!844432)))

(declare-fun res!591915 () Bool)

(assert (=> b!1317358 (= res!591915 (< (size!10858 (_2!7366 lt!434582)) (size!10858 (_2!7367 (v!21118 lt!433783)))))))

(assert (=> b!1317358 (=> (not res!591915) (not e!844432))))

(declare-fun b!1317359 () Bool)

(assert (=> b!1317359 (= e!844432 (not (isEmpty!7915 (_1!7366 lt!434582))))))

(declare-fun d!371699 () Bool)

(assert (=> d!371699 e!844433))

(declare-fun c!216238 () Bool)

(assert (=> d!371699 (= c!216238 (> (size!10859 (_1!7366 lt!434582)) 0))))

(assert (=> d!371699 (= lt!434582 e!844434)))

(declare-fun c!216237 () Bool)

(declare-fun lt!434584 () Option!2576)

(assert (=> d!371699 (= c!216237 ((_ is Some!2575) lt!434584))))

(assert (=> d!371699 (= lt!434584 (maxPrefix!1014 thiss!19762 rules!2550 (_2!7367 (v!21118 lt!433783))))))

(assert (=> d!371699 (= (lexList!542 thiss!19762 rules!2550 (_2!7367 (v!21118 lt!433783))) lt!434582)))

(declare-fun b!1317360 () Bool)

(declare-fun lt!434583 () tuple2!12960)

(assert (=> b!1317360 (= e!844434 (tuple2!12961 (Cons!13343 (_1!7367 (v!21118 lt!434584)) (_1!7366 lt!434583)) (_2!7366 lt!434583)))))

(assert (=> b!1317360 (= lt!434583 (lexList!542 thiss!19762 rules!2550 (_2!7367 (v!21118 lt!434584))))))

(assert (= (and d!371699 c!216237) b!1317360))

(assert (= (and d!371699 (not c!216237)) b!1317356))

(assert (= (and d!371699 c!216238) b!1317358))

(assert (= (and d!371699 (not c!216238)) b!1317357))

(assert (= (and b!1317358 res!591915) b!1317359))

(declare-fun m!1471999 () Bool)

(assert (=> b!1317358 m!1471999))

(declare-fun m!1472001 () Bool)

(assert (=> b!1317358 m!1472001))

(declare-fun m!1472003 () Bool)

(assert (=> b!1317359 m!1472003))

(declare-fun m!1472005 () Bool)

(assert (=> d!371699 m!1472005))

(declare-fun m!1472007 () Bool)

(assert (=> d!371699 m!1472007))

(declare-fun m!1472009 () Bool)

(assert (=> b!1317360 m!1472009))

(assert (=> b!1315631 d!371699))

(declare-fun d!371701 () Bool)

(assert (=> d!371701 (dynLambda!5823 lambda!53529 lt!433573)))

(assert (=> d!371701 true))

(declare-fun _$7!704 () Unit!19396)

(assert (=> d!371701 (= (choose!8050 rules!2550 lambda!53529 lt!433573) _$7!704)))

(declare-fun b_lambda!38205 () Bool)

(assert (=> (not b_lambda!38205) (not d!371701)))

(declare-fun bs!330619 () Bool)

(assert (= bs!330619 d!371701))

(assert (=> bs!330619 m!1469257))

(assert (=> d!370775 d!371701))

(assert (=> d!370775 d!371513))

(declare-fun bs!330620 () Bool)

(declare-fun d!371703 () Bool)

(assert (= bs!330620 (and d!371703 d!371619)))

(declare-fun lambda!53645 () Int)

(assert (=> bs!330620 (= (and (= (toChars!3391 (transformation!2309 (h!18743 rules!2550))) (toChars!3391 (transformation!2309 (rule!4050 t1!34)))) (= (toValue!3532 (transformation!2309 (h!18743 rules!2550))) (toValue!3532 (transformation!2309 (rule!4050 t1!34))))) (= lambda!53645 lambda!53643))))

(declare-fun bs!330621 () Bool)

(assert (= bs!330621 (and d!371703 d!371695)))

(assert (=> bs!330621 (= (and (= (toChars!3391 (transformation!2309 (h!18743 rules!2550))) (toChars!3391 (transformation!2309 (rule!4050 t2!34)))) (= (toValue!3532 (transformation!2309 (h!18743 rules!2550))) (toValue!3532 (transformation!2309 (rule!4050 t2!34))))) (= lambda!53645 lambda!53644))))

(assert (=> d!371703 true))

(assert (=> d!371703 (< (dynLambda!5835 order!8043 (toChars!3391 (transformation!2309 (h!18743 rules!2550)))) (dynLambda!5836 order!8045 lambda!53645))))

(assert (=> d!371703 true))

(assert (=> d!371703 (< (dynLambda!5833 order!8039 (toValue!3532 (transformation!2309 (h!18743 rules!2550)))) (dynLambda!5836 order!8045 lambda!53645))))

(assert (=> d!371703 (= (semiInverseModEq!868 (toChars!3391 (transformation!2309 (h!18743 rules!2550))) (toValue!3532 (transformation!2309 (h!18743 rules!2550)))) (Forall!517 lambda!53645))))

(declare-fun bs!330622 () Bool)

(assert (= bs!330622 d!371703))

(declare-fun m!1472011 () Bool)

(assert (=> bs!330622 m!1472011))

(assert (=> d!370801 d!371703))

(declare-fun b!1317364 () Bool)

(declare-fun e!844436 () List!13407)

(assert (=> b!1317364 (= e!844436 (++!3398 (list!5026 (left!11468 (c!215720 lt!433558))) (list!5026 (right!11798 (c!215720 lt!433558)))))))

(declare-fun b!1317363 () Bool)

(assert (=> b!1317363 (= e!844436 (list!5028 (xs!7103 (c!215720 lt!433558))))))

(declare-fun d!371705 () Bool)

(declare-fun c!216239 () Bool)

(assert (=> d!371705 (= c!216239 ((_ is Empty!4388) (c!215720 lt!433558)))))

(declare-fun e!844435 () List!13407)

(assert (=> d!371705 (= (list!5026 (c!215720 lt!433558)) e!844435)))

(declare-fun b!1317361 () Bool)

(assert (=> b!1317361 (= e!844435 Nil!13341)))

(declare-fun b!1317362 () Bool)

(assert (=> b!1317362 (= e!844435 e!844436)))

(declare-fun c!216240 () Bool)

(assert (=> b!1317362 (= c!216240 ((_ is Leaf!6739) (c!215720 lt!433558)))))

(assert (= (and d!371705 c!216239) b!1317361))

(assert (= (and d!371705 (not c!216239)) b!1317362))

(assert (= (and b!1317362 c!216240) b!1317363))

(assert (= (and b!1317362 (not c!216240)) b!1317364))

(declare-fun m!1472013 () Bool)

(assert (=> b!1317364 m!1472013))

(declare-fun m!1472015 () Bool)

(assert (=> b!1317364 m!1472015))

(assert (=> b!1317364 m!1472013))

(assert (=> b!1317364 m!1472015))

(declare-fun m!1472017 () Bool)

(assert (=> b!1317364 m!1472017))

(declare-fun m!1472019 () Bool)

(assert (=> b!1317363 m!1472019))

(assert (=> d!370593 d!371705))

(declare-fun b!1317365 () Bool)

(declare-fun e!844437 () Bool)

(assert (=> b!1317365 (= e!844437 (matchR!1625 (derivativeStep!899 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))) (head!2273 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820)))))) (tail!1884 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820)))))))))

(declare-fun bm!89505 () Bool)

(declare-fun call!89510 () Bool)

(assert (=> bm!89505 (= call!89510 (isEmpty!7914 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820))))))))

(declare-fun b!1317366 () Bool)

(declare-fun res!591923 () Bool)

(declare-fun e!844438 () Bool)

(assert (=> b!1317366 (=> res!591923 e!844438)))

(declare-fun e!844441 () Bool)

(assert (=> b!1317366 (= res!591923 e!844441)))

(declare-fun res!591922 () Bool)

(assert (=> b!1317366 (=> (not res!591922) (not e!844441))))

(declare-fun lt!434585 () Bool)

(assert (=> b!1317366 (= res!591922 lt!434585)))

(declare-fun b!1317367 () Bool)

(declare-fun res!591921 () Bool)

(assert (=> b!1317367 (=> (not res!591921) (not e!844441))))

(assert (=> b!1317367 (= res!591921 (isEmpty!7914 (tail!1884 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820)))))))))

(declare-fun d!371707 () Bool)

(declare-fun e!844443 () Bool)

(assert (=> d!371707 e!844443))

(declare-fun c!216241 () Bool)

(assert (=> d!371707 (= c!216241 ((_ is EmptyExpr!3623) (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433820))))))))

(assert (=> d!371707 (= lt!434585 e!844437)))

(declare-fun c!216243 () Bool)

(assert (=> d!371707 (= c!216243 (isEmpty!7914 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820))))))))

(assert (=> d!371707 (validRegex!1549 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))))))

(assert (=> d!371707 (= (matchR!1625 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))) (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820))))) lt!434585)))

(declare-fun b!1317368 () Bool)

(declare-fun e!844442 () Bool)

(assert (=> b!1317368 (= e!844443 e!844442)))

(declare-fun c!216242 () Bool)

(assert (=> b!1317368 (= c!216242 ((_ is EmptyLang!3623) (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433820))))))))

(declare-fun b!1317369 () Bool)

(declare-fun e!844440 () Bool)

(declare-fun e!844439 () Bool)

(assert (=> b!1317369 (= e!844440 e!844439)))

(declare-fun res!591918 () Bool)

(assert (=> b!1317369 (=> res!591918 e!844439)))

(assert (=> b!1317369 (= res!591918 call!89510)))

(declare-fun b!1317370 () Bool)

(assert (=> b!1317370 (= e!844439 (not (= (head!2273 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820))))) (c!215721 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433820))))))))))

(declare-fun b!1317371 () Bool)

(assert (=> b!1317371 (= e!844442 (not lt!434585))))

(declare-fun b!1317372 () Bool)

(assert (=> b!1317372 (= e!844437 (nullable!1147 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433820))))))))

(declare-fun b!1317373 () Bool)

(declare-fun res!591916 () Bool)

(assert (=> b!1317373 (=> res!591916 e!844438)))

(assert (=> b!1317373 (= res!591916 (not ((_ is ElementMatch!3623) (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))))))))

(assert (=> b!1317373 (= e!844442 e!844438)))

(declare-fun b!1317374 () Bool)

(assert (=> b!1317374 (= e!844438 e!844440)))

(declare-fun res!591917 () Bool)

(assert (=> b!1317374 (=> (not res!591917) (not e!844440))))

(assert (=> b!1317374 (= res!591917 (not lt!434585))))

(declare-fun b!1317375 () Bool)

(declare-fun res!591920 () Bool)

(assert (=> b!1317375 (=> res!591920 e!844439)))

(assert (=> b!1317375 (= res!591920 (not (isEmpty!7914 (tail!1884 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820))))))))))

(declare-fun b!1317376 () Bool)

(assert (=> b!1317376 (= e!844441 (= (head!2273 (list!5023 (charsOf!1281 (_1!7367 (get!4256 lt!433820))))) (c!215721 (regex!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))))))))

(declare-fun b!1317377 () Bool)

(assert (=> b!1317377 (= e!844443 (= lt!434585 call!89510))))

(declare-fun b!1317378 () Bool)

(declare-fun res!591919 () Bool)

(assert (=> b!1317378 (=> (not res!591919) (not e!844441))))

(assert (=> b!1317378 (= res!591919 (not call!89510))))

(assert (= (and d!371707 c!216243) b!1317372))

(assert (= (and d!371707 (not c!216243)) b!1317365))

(assert (= (and d!371707 c!216241) b!1317377))

(assert (= (and d!371707 (not c!216241)) b!1317368))

(assert (= (and b!1317368 c!216242) b!1317371))

(assert (= (and b!1317368 (not c!216242)) b!1317373))

(assert (= (and b!1317373 (not res!591916)) b!1317366))

(assert (= (and b!1317366 res!591922) b!1317378))

(assert (= (and b!1317378 res!591919) b!1317367))

(assert (= (and b!1317367 res!591921) b!1317376))

(assert (= (and b!1317366 (not res!591923)) b!1317374))

(assert (= (and b!1317374 res!591917) b!1317369))

(assert (= (and b!1317369 (not res!591918)) b!1317375))

(assert (= (and b!1317375 (not res!591920)) b!1317370))

(assert (= (or b!1317377 b!1317378 b!1317369) bm!89505))

(assert (=> b!1317375 m!1469279))

(declare-fun m!1472021 () Bool)

(assert (=> b!1317375 m!1472021))

(assert (=> b!1317375 m!1472021))

(declare-fun m!1472023 () Bool)

(assert (=> b!1317375 m!1472023))

(assert (=> b!1317376 m!1469279))

(declare-fun m!1472025 () Bool)

(assert (=> b!1317376 m!1472025))

(assert (=> bm!89505 m!1469279))

(declare-fun m!1472027 () Bool)

(assert (=> bm!89505 m!1472027))

(assert (=> b!1317365 m!1469279))

(assert (=> b!1317365 m!1472025))

(assert (=> b!1317365 m!1472025))

(declare-fun m!1472029 () Bool)

(assert (=> b!1317365 m!1472029))

(assert (=> b!1317365 m!1469279))

(assert (=> b!1317365 m!1472021))

(assert (=> b!1317365 m!1472029))

(assert (=> b!1317365 m!1472021))

(declare-fun m!1472031 () Bool)

(assert (=> b!1317365 m!1472031))

(assert (=> b!1317367 m!1469279))

(assert (=> b!1317367 m!1472021))

(assert (=> b!1317367 m!1472021))

(assert (=> b!1317367 m!1472023))

(assert (=> d!371707 m!1469279))

(assert (=> d!371707 m!1472027))

(declare-fun m!1472033 () Bool)

(assert (=> d!371707 m!1472033))

(declare-fun m!1472035 () Bool)

(assert (=> b!1317372 m!1472035))

(assert (=> b!1317370 m!1469279))

(assert (=> b!1317370 m!1472025))

(assert (=> b!1315781 d!371707))

(assert (=> b!1315781 d!371219))

(assert (=> b!1315781 d!371237))

(assert (=> b!1315781 d!371239))

(declare-fun d!371709 () Bool)

(assert (=> d!371709 (= (isEmpty!7915 (_1!7366 lt!433689)) ((_ is Nil!13343) (_1!7366 lt!433689)))))

(assert (=> b!1315400 d!371709))

(declare-fun d!371711 () Bool)

(assert (=> d!371711 (= (inv!15 (value!75439 t2!34)) (= (charsToBigInt!0 (text!17242 (value!75439 t2!34)) 0) (value!75434 (value!75439 t2!34))))))

(declare-fun bs!330623 () Bool)

(assert (= bs!330623 d!371711))

(declare-fun m!1472037 () Bool)

(assert (=> bs!330623 m!1472037))

(assert (=> b!1315653 d!371711))

(declare-fun d!371713 () Bool)

(declare-fun lt!434586 () Bool)

(assert (=> d!371713 (= lt!434586 (select (content!1873 (map!2930 rules!2550 lambda!53526)) lt!433627))))

(declare-fun e!844444 () Bool)

(assert (=> d!371713 (= lt!434586 e!844444)))

(declare-fun res!591924 () Bool)

(assert (=> d!371713 (=> (not res!591924) (not e!844444))))

(assert (=> d!371713 (= res!591924 ((_ is Cons!13344) (map!2930 rules!2550 lambda!53526)))))

(assert (=> d!371713 (= (contains!2341 (map!2930 rules!2550 lambda!53526) lt!433627) lt!434586)))

(declare-fun b!1317379 () Bool)

(declare-fun e!844445 () Bool)

(assert (=> b!1317379 (= e!844444 e!844445)))

(declare-fun res!591925 () Bool)

(assert (=> b!1317379 (=> res!591925 e!844445)))

(assert (=> b!1317379 (= res!591925 (= (h!18745 (map!2930 rules!2550 lambda!53526)) lt!433627))))

(declare-fun b!1317380 () Bool)

(assert (=> b!1317380 (= e!844445 (contains!2341 (t!118283 (map!2930 rules!2550 lambda!53526)) lt!433627))))

(assert (= (and d!371713 res!591924) b!1317379))

(assert (= (and b!1317379 (not res!591925)) b!1317380))

(assert (=> d!371713 m!1468333))

(assert (=> d!371713 m!1468513))

(declare-fun m!1472039 () Bool)

(assert (=> d!371713 m!1472039))

(declare-fun m!1472041 () Bool)

(assert (=> b!1317380 m!1472041))

(assert (=> b!1315232 d!371713))

(assert (=> d!370663 d!371579))

(assert (=> d!370663 d!370563))

(declare-fun d!371715 () Bool)

(declare-fun lt!434589 () Int)

(assert (=> d!371715 (= lt!434589 (size!10858 (list!5026 (c!215720 lt!433570))))))

(assert (=> d!371715 (= lt!434589 (ite ((_ is Empty!4388) (c!215720 lt!433570)) 0 (ite ((_ is Leaf!6739) (c!215720 lt!433570)) (csize!9007 (c!215720 lt!433570)) (csize!9006 (c!215720 lt!433570)))))))

(assert (=> d!371715 (= (size!10861 (c!215720 lt!433570)) lt!434589)))

(declare-fun bs!330624 () Bool)

(assert (= bs!330624 d!371715))

(assert (=> bs!330624 m!1468613))

(assert (=> bs!330624 m!1468613))

(declare-fun m!1472043 () Bool)

(assert (=> bs!330624 m!1472043))

(assert (=> d!370663 d!371715))

(declare-fun d!371717 () Bool)

(declare-fun lt!434590 () Bool)

(assert (=> d!371717 (= lt!434590 (isEmpty!7915 (list!5022 (_1!7365 lt!433796))))))

(assert (=> d!371717 (= lt!434590 (isEmpty!7920 (c!215722 (_1!7365 lt!433796))))))

(assert (=> d!371717 (= (isEmpty!7917 (_1!7365 lt!433796)) lt!434590)))

(declare-fun bs!330625 () Bool)

(assert (= bs!330625 d!371717))

(assert (=> bs!330625 m!1469195))

(assert (=> bs!330625 m!1469195))

(declare-fun m!1472045 () Bool)

(assert (=> bs!330625 m!1472045))

(declare-fun m!1472047 () Bool)

(assert (=> bs!330625 m!1472047))

(assert (=> b!1315710 d!371717))

(declare-fun b!1317381 () Bool)

(declare-fun e!844446 () Bool)

(assert (=> b!1317381 (= e!844446 (matchR!1625 (derivativeStep!899 lt!433562 (head!2273 lt!433668)) (tail!1884 lt!433668)))))

(declare-fun bm!89506 () Bool)

(declare-fun call!89511 () Bool)

(assert (=> bm!89506 (= call!89511 (isEmpty!7914 lt!433668))))

(declare-fun b!1317382 () Bool)

(declare-fun res!591933 () Bool)

(declare-fun e!844447 () Bool)

(assert (=> b!1317382 (=> res!591933 e!844447)))

(declare-fun e!844450 () Bool)

(assert (=> b!1317382 (= res!591933 e!844450)))

(declare-fun res!591932 () Bool)

(assert (=> b!1317382 (=> (not res!591932) (not e!844450))))

(declare-fun lt!434591 () Bool)

(assert (=> b!1317382 (= res!591932 lt!434591)))

(declare-fun b!1317383 () Bool)

(declare-fun res!591931 () Bool)

(assert (=> b!1317383 (=> (not res!591931) (not e!844450))))

(assert (=> b!1317383 (= res!591931 (isEmpty!7914 (tail!1884 lt!433668)))))

(declare-fun d!371719 () Bool)

(declare-fun e!844452 () Bool)

(assert (=> d!371719 e!844452))

(declare-fun c!216244 () Bool)

(assert (=> d!371719 (= c!216244 ((_ is EmptyExpr!3623) lt!433562))))

(assert (=> d!371719 (= lt!434591 e!844446)))

(declare-fun c!216246 () Bool)

(assert (=> d!371719 (= c!216246 (isEmpty!7914 lt!433668))))

(assert (=> d!371719 (validRegex!1549 lt!433562)))

(assert (=> d!371719 (= (matchR!1625 lt!433562 lt!433668) lt!434591)))

(declare-fun b!1317384 () Bool)

(declare-fun e!844451 () Bool)

(assert (=> b!1317384 (= e!844452 e!844451)))

(declare-fun c!216245 () Bool)

(assert (=> b!1317384 (= c!216245 ((_ is EmptyLang!3623) lt!433562))))

(declare-fun b!1317385 () Bool)

(declare-fun e!844449 () Bool)

(declare-fun e!844448 () Bool)

(assert (=> b!1317385 (= e!844449 e!844448)))

(declare-fun res!591928 () Bool)

(assert (=> b!1317385 (=> res!591928 e!844448)))

(assert (=> b!1317385 (= res!591928 call!89511)))

(declare-fun b!1317386 () Bool)

(assert (=> b!1317386 (= e!844448 (not (= (head!2273 lt!433668) (c!215721 lt!433562))))))

(declare-fun b!1317387 () Bool)

(assert (=> b!1317387 (= e!844451 (not lt!434591))))

(declare-fun b!1317388 () Bool)

(assert (=> b!1317388 (= e!844446 (nullable!1147 lt!433562))))

(declare-fun b!1317389 () Bool)

(declare-fun res!591926 () Bool)

(assert (=> b!1317389 (=> res!591926 e!844447)))

(assert (=> b!1317389 (= res!591926 (not ((_ is ElementMatch!3623) lt!433562)))))

(assert (=> b!1317389 (= e!844451 e!844447)))

(declare-fun b!1317390 () Bool)

(assert (=> b!1317390 (= e!844447 e!844449)))

(declare-fun res!591927 () Bool)

(assert (=> b!1317390 (=> (not res!591927) (not e!844449))))

(assert (=> b!1317390 (= res!591927 (not lt!434591))))

(declare-fun b!1317391 () Bool)

(declare-fun res!591930 () Bool)

(assert (=> b!1317391 (=> res!591930 e!844448)))

(assert (=> b!1317391 (= res!591930 (not (isEmpty!7914 (tail!1884 lt!433668))))))

(declare-fun b!1317392 () Bool)

(assert (=> b!1317392 (= e!844450 (= (head!2273 lt!433668) (c!215721 lt!433562)))))

(declare-fun b!1317393 () Bool)

(assert (=> b!1317393 (= e!844452 (= lt!434591 call!89511))))

(declare-fun b!1317394 () Bool)

(declare-fun res!591929 () Bool)

(assert (=> b!1317394 (=> (not res!591929) (not e!844450))))

(assert (=> b!1317394 (= res!591929 (not call!89511))))

(assert (= (and d!371719 c!216246) b!1317388))

(assert (= (and d!371719 (not c!216246)) b!1317381))

(assert (= (and d!371719 c!216244) b!1317393))

(assert (= (and d!371719 (not c!216244)) b!1317384))

(assert (= (and b!1317384 c!216245) b!1317387))

(assert (= (and b!1317384 (not c!216245)) b!1317389))

(assert (= (and b!1317389 (not res!591926)) b!1317382))

(assert (= (and b!1317382 res!591932) b!1317394))

(assert (= (and b!1317394 res!591929) b!1317383))

(assert (= (and b!1317383 res!591931) b!1317392))

(assert (= (and b!1317382 (not res!591933)) b!1317390))

(assert (= (and b!1317390 res!591927) b!1317385))

(assert (= (and b!1317385 (not res!591928)) b!1317391))

(assert (= (and b!1317391 (not res!591930)) b!1317386))

(assert (= (or b!1317393 b!1317394 b!1317385) bm!89506))

(assert (=> b!1317391 m!1471333))

(assert (=> b!1317391 m!1471333))

(declare-fun m!1472049 () Bool)

(assert (=> b!1317391 m!1472049))

(assert (=> b!1317392 m!1471331))

(declare-fun m!1472051 () Bool)

(assert (=> bm!89506 m!1472051))

(assert (=> b!1317381 m!1471331))

(assert (=> b!1317381 m!1471331))

(declare-fun m!1472053 () Bool)

(assert (=> b!1317381 m!1472053))

(assert (=> b!1317381 m!1471333))

(assert (=> b!1317381 m!1472053))

(assert (=> b!1317381 m!1471333))

(declare-fun m!1472055 () Bool)

(assert (=> b!1317381 m!1472055))

(assert (=> b!1317383 m!1471333))

(assert (=> b!1317383 m!1471333))

(assert (=> b!1317383 m!1472049))

(assert (=> d!371719 m!1472051))

(assert (=> d!371719 m!1468669))

(assert (=> b!1317388 m!1468671))

(assert (=> b!1317386 m!1471331))

(assert (=> bs!330356 d!371719))

(assert (=> d!370757 d!370783))

(assert (=> d!370583 d!371681))

(declare-fun d!371721 () Bool)

(assert (=> d!371721 (= (list!5023 lt!433828) (list!5026 (c!215720 lt!433828)))))

(declare-fun bs!330626 () Bool)

(assert (= bs!330626 d!371721))

(declare-fun m!1472057 () Bool)

(assert (=> bs!330626 m!1472057))

(assert (=> d!370795 d!371721))

(declare-fun d!371723 () Bool)

(declare-fun c!216247 () Bool)

(assert (=> d!371723 (= c!216247 ((_ is Cons!13343) (list!5022 (singletonSeq!888 t2!34))))))

(declare-fun e!844453 () List!13407)

(assert (=> d!371723 (= (printList!560 thiss!19762 (list!5022 (singletonSeq!888 t2!34))) e!844453)))

(declare-fun b!1317395 () Bool)

(assert (=> b!1317395 (= e!844453 (++!3398 (list!5023 (charsOf!1281 (h!18744 (list!5022 (singletonSeq!888 t2!34))))) (printList!560 thiss!19762 (t!118282 (list!5022 (singletonSeq!888 t2!34))))))))

(declare-fun b!1317396 () Bool)

(assert (=> b!1317396 (= e!844453 Nil!13341)))

(assert (= (and d!371723 c!216247) b!1317395))

(assert (= (and d!371723 (not c!216247)) b!1317396))

(declare-fun m!1472059 () Bool)

(assert (=> b!1317395 m!1472059))

(assert (=> b!1317395 m!1472059))

(declare-fun m!1472061 () Bool)

(assert (=> b!1317395 m!1472061))

(declare-fun m!1472063 () Bool)

(assert (=> b!1317395 m!1472063))

(assert (=> b!1317395 m!1472061))

(assert (=> b!1317395 m!1472063))

(declare-fun m!1472065 () Bool)

(assert (=> b!1317395 m!1472065))

(assert (=> d!370795 d!371723))

(assert (=> d!370795 d!371551))

(declare-fun d!371725 () Bool)

(declare-fun lt!434594 () BalanceConc!8716)

(assert (=> d!371725 (= (list!5023 lt!434594) (printListTailRec!233 thiss!19762 (dropList!368 (singletonSeq!888 t2!34) 0) (list!5023 (BalanceConc!8717 Empty!4388))))))

(declare-fun e!844455 () BalanceConc!8716)

(assert (=> d!371725 (= lt!434594 e!844455)))

(declare-fun c!216248 () Bool)

(assert (=> d!371725 (= c!216248 (>= 0 (size!10860 (singletonSeq!888 t2!34))))))

(declare-fun e!844454 () Bool)

(assert (=> d!371725 e!844454))

(declare-fun res!591934 () Bool)

(assert (=> d!371725 (=> (not res!591934) (not e!844454))))

(assert (=> d!371725 (= res!591934 (>= 0 0))))

(assert (=> d!371725 (= (printTailRec!542 thiss!19762 (singletonSeq!888 t2!34) 0 (BalanceConc!8717 Empty!4388)) lt!434594)))

(declare-fun b!1317397 () Bool)

(assert (=> b!1317397 (= e!844454 (<= 0 (size!10860 (singletonSeq!888 t2!34))))))

(declare-fun b!1317398 () Bool)

(assert (=> b!1317398 (= e!844455 (BalanceConc!8717 Empty!4388))))

(declare-fun b!1317399 () Bool)

(assert (=> b!1317399 (= e!844455 (printTailRec!542 thiss!19762 (singletonSeq!888 t2!34) (+ 0 1) (++!3399 (BalanceConc!8717 Empty!4388) (charsOf!1281 (apply!3035 (singletonSeq!888 t2!34) 0)))))))

(declare-fun lt!434597 () List!13409)

(assert (=> b!1317399 (= lt!434597 (list!5022 (singletonSeq!888 t2!34)))))

(declare-fun lt!434598 () Unit!19396)

(assert (=> b!1317399 (= lt!434598 (lemmaDropApply!424 lt!434597 0))))

(assert (=> b!1317399 (= (head!2278 (drop!663 lt!434597 0)) (apply!3037 lt!434597 0))))

(declare-fun lt!434593 () Unit!19396)

(assert (=> b!1317399 (= lt!434593 lt!434598)))

(declare-fun lt!434595 () List!13409)

(assert (=> b!1317399 (= lt!434595 (list!5022 (singletonSeq!888 t2!34)))))

(declare-fun lt!434592 () Unit!19396)

(assert (=> b!1317399 (= lt!434592 (lemmaDropTail!404 lt!434595 0))))

(assert (=> b!1317399 (= (tail!1887 (drop!663 lt!434595 0)) (drop!663 lt!434595 (+ 0 1)))))

(declare-fun lt!434596 () Unit!19396)

(assert (=> b!1317399 (= lt!434596 lt!434592)))

(assert (= (and d!371725 res!591934) b!1317397))

(assert (= (and d!371725 c!216248) b!1317398))

(assert (= (and d!371725 (not c!216248)) b!1317399))

(declare-fun m!1472067 () Bool)

(assert (=> d!371725 m!1472067))

(assert (=> d!371725 m!1470129))

(declare-fun m!1472069 () Bool)

(assert (=> d!371725 m!1472069))

(assert (=> d!371725 m!1468329))

(declare-fun m!1472071 () Bool)

(assert (=> d!371725 m!1472071))

(assert (=> d!371725 m!1468329))

(assert (=> d!371725 m!1472067))

(declare-fun m!1472073 () Bool)

(assert (=> d!371725 m!1472073))

(assert (=> d!371725 m!1470129))

(assert (=> b!1317397 m!1468329))

(assert (=> b!1317397 m!1472071))

(declare-fun m!1472075 () Bool)

(assert (=> b!1317399 m!1472075))

(declare-fun m!1472077 () Bool)

(assert (=> b!1317399 m!1472077))

(declare-fun m!1472079 () Bool)

(assert (=> b!1317399 m!1472079))

(assert (=> b!1317399 m!1468329))

(declare-fun m!1472081 () Bool)

(assert (=> b!1317399 m!1472081))

(assert (=> b!1317399 m!1472081))

(assert (=> b!1317399 m!1472075))

(assert (=> b!1317399 m!1472079))

(declare-fun m!1472083 () Bool)

(assert (=> b!1317399 m!1472083))

(declare-fun m!1472085 () Bool)

(assert (=> b!1317399 m!1472085))

(declare-fun m!1472087 () Bool)

(assert (=> b!1317399 m!1472087))

(declare-fun m!1472089 () Bool)

(assert (=> b!1317399 m!1472089))

(assert (=> b!1317399 m!1468329))

(assert (=> b!1317399 m!1469311))

(declare-fun m!1472091 () Bool)

(assert (=> b!1317399 m!1472091))

(assert (=> b!1317399 m!1468329))

(assert (=> b!1317399 m!1472077))

(declare-fun m!1472093 () Bool)

(assert (=> b!1317399 m!1472093))

(declare-fun m!1472095 () Bool)

(assert (=> b!1317399 m!1472095))

(assert (=> b!1317399 m!1472089))

(declare-fun m!1472097 () Bool)

(assert (=> b!1317399 m!1472097))

(assert (=> d!370795 d!371725))

(declare-fun b!1317403 () Bool)

(declare-fun e!844456 () Bool)

(declare-fun tp!383005 () Bool)

(declare-fun tp!383003 () Bool)

(assert (=> b!1317403 (= e!844456 (and tp!383005 tp!383003))))

(declare-fun b!1317401 () Bool)

(declare-fun tp!383007 () Bool)

(declare-fun tp!383006 () Bool)

(assert (=> b!1317401 (= e!844456 (and tp!383007 tp!383006))))

(declare-fun b!1317402 () Bool)

(declare-fun tp!383004 () Bool)

(assert (=> b!1317402 (= e!844456 tp!383004)))

(declare-fun b!1317400 () Bool)

(assert (=> b!1317400 (= e!844456 tp_is_empty!6627)))

(assert (=> b!1315828 (= tp!382869 e!844456)))

(assert (= (and b!1315828 ((_ is ElementMatch!3623) (regOne!7759 (regex!2309 (rule!4050 t1!34))))) b!1317400))

(assert (= (and b!1315828 ((_ is Concat!6023) (regOne!7759 (regex!2309 (rule!4050 t1!34))))) b!1317401))

(assert (= (and b!1315828 ((_ is Star!3623) (regOne!7759 (regex!2309 (rule!4050 t1!34))))) b!1317402))

(assert (= (and b!1315828 ((_ is Union!3623) (regOne!7759 (regex!2309 (rule!4050 t1!34))))) b!1317403))

(declare-fun b!1317407 () Bool)

(declare-fun e!844457 () Bool)

(declare-fun tp!383010 () Bool)

(declare-fun tp!383008 () Bool)

(assert (=> b!1317407 (= e!844457 (and tp!383010 tp!383008))))

(declare-fun b!1317405 () Bool)

(declare-fun tp!383012 () Bool)

(declare-fun tp!383011 () Bool)

(assert (=> b!1317405 (= e!844457 (and tp!383012 tp!383011))))

(declare-fun b!1317406 () Bool)

(declare-fun tp!383009 () Bool)

(assert (=> b!1317406 (= e!844457 tp!383009)))

(declare-fun b!1317404 () Bool)

(assert (=> b!1317404 (= e!844457 tp_is_empty!6627)))

(assert (=> b!1315828 (= tp!382867 e!844457)))

(assert (= (and b!1315828 ((_ is ElementMatch!3623) (regTwo!7759 (regex!2309 (rule!4050 t1!34))))) b!1317404))

(assert (= (and b!1315828 ((_ is Concat!6023) (regTwo!7759 (regex!2309 (rule!4050 t1!34))))) b!1317405))

(assert (= (and b!1315828 ((_ is Star!3623) (regTwo!7759 (regex!2309 (rule!4050 t1!34))))) b!1317406))

(assert (= (and b!1315828 ((_ is Union!3623) (regTwo!7759 (regex!2309 (rule!4050 t1!34))))) b!1317407))

(declare-fun tp!383020 () Bool)

(declare-fun b!1317416 () Bool)

(declare-fun tp!383019 () Bool)

(declare-fun e!844463 () Bool)

(assert (=> b!1317416 (= e!844463 (and (inv!17718 (left!11468 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34))))) tp!383019 (inv!17718 (right!11798 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34))))) tp!383020))))

(declare-fun b!1317418 () Bool)

(declare-fun e!844462 () Bool)

(declare-fun tp!383021 () Bool)

(assert (=> b!1317418 (= e!844462 tp!383021)))

(declare-fun b!1317417 () Bool)

(declare-fun inv!17725 (IArray!8781) Bool)

(assert (=> b!1317417 (= e!844463 (and (inv!17725 (xs!7103 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34))))) e!844462))))

(assert (=> b!1315595 (= tp!382812 (and (inv!17718 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34)))) e!844463))))

(assert (= (and b!1315595 ((_ is Node!4388) (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34))))) b!1317416))

(assert (= b!1317417 b!1317418))

(assert (= (and b!1315595 ((_ is Leaf!6739) (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t1!34))) (value!75439 t1!34))))) b!1317417))

(declare-fun m!1472099 () Bool)

(assert (=> b!1317416 m!1472099))

(declare-fun m!1472101 () Bool)

(assert (=> b!1317416 m!1472101))

(declare-fun m!1472103 () Bool)

(assert (=> b!1317417 m!1472103))

(assert (=> b!1315595 m!1469019))

(declare-fun b!1317422 () Bool)

(declare-fun e!844464 () Bool)

(declare-fun tp!383024 () Bool)

(declare-fun tp!383022 () Bool)

(assert (=> b!1317422 (= e!844464 (and tp!383024 tp!383022))))

(declare-fun b!1317420 () Bool)

(declare-fun tp!383026 () Bool)

(declare-fun tp!383025 () Bool)

(assert (=> b!1317420 (= e!844464 (and tp!383026 tp!383025))))

(declare-fun b!1317421 () Bool)

(declare-fun tp!383023 () Bool)

(assert (=> b!1317421 (= e!844464 tp!383023)))

(declare-fun b!1317419 () Bool)

(assert (=> b!1317419 (= e!844464 tp_is_empty!6627)))

(assert (=> b!1315827 (= tp!382868 e!844464)))

(assert (= (and b!1315827 ((_ is ElementMatch!3623) (reg!3952 (regex!2309 (rule!4050 t1!34))))) b!1317419))

(assert (= (and b!1315827 ((_ is Concat!6023) (reg!3952 (regex!2309 (rule!4050 t1!34))))) b!1317420))

(assert (= (and b!1315827 ((_ is Star!3623) (reg!3952 (regex!2309 (rule!4050 t1!34))))) b!1317421))

(assert (= (and b!1315827 ((_ is Union!3623) (reg!3952 (regex!2309 (rule!4050 t1!34))))) b!1317422))

(declare-fun b!1317425 () Bool)

(declare-fun b_free!31739 () Bool)

(declare-fun b_next!32443 () Bool)

(assert (=> b!1317425 (= b_free!31739 (not b_next!32443))))

(declare-fun tb!69981 () Bool)

(declare-fun t!118417 () Bool)

(assert (=> (and b!1317425 (= (toValue!3532 (transformation!2309 (h!18743 (t!118281 (t!118281 rules!2550))))) (toValue!3532 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))))) t!118417) tb!69981))

(declare-fun result!84922 () Bool)

(assert (= result!84922 result!84888))

(assert (=> d!371263 t!118417))

(declare-fun tb!69983 () Bool)

(declare-fun t!118419 () Bool)

(assert (=> (and b!1317425 (= (toValue!3532 (transformation!2309 (h!18743 (t!118281 (t!118281 rules!2550))))) (toValue!3532 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))))) t!118419) tb!69983))

(declare-fun result!84924 () Bool)

(assert (= result!84924 result!84898))

(assert (=> d!371437 t!118419))

(declare-fun b_and!88007 () Bool)

(declare-fun tp!383028 () Bool)

(assert (=> b!1317425 (= tp!383028 (and (=> t!118417 result!84922) (=> t!118419 result!84924) b_and!88007))))

(declare-fun b_free!31741 () Bool)

(declare-fun b_next!32445 () Bool)

(assert (=> b!1317425 (= b_free!31741 (not b_next!32445))))

(declare-fun tb!69985 () Bool)

(declare-fun t!118421 () Bool)

(assert (=> (and b!1317425 (= (toChars!3391 (transformation!2309 (h!18743 (t!118281 (t!118281 rules!2550))))) (toChars!3391 (transformation!2309 (rule!4050 t1!34)))) t!118421) tb!69985))

(declare-fun result!84926 () Bool)

(assert (= result!84926 result!84812))

(assert (=> d!370723 t!118421))

(declare-fun t!118423 () Bool)

(declare-fun tb!69987 () Bool)

(assert (=> (and b!1317425 (= (toChars!3391 (transformation!2309 (h!18743 (t!118281 (t!118281 rules!2550))))) (toChars!3391 (transformation!2309 (rule!4050 t2!34)))) t!118423) tb!69987))

(declare-fun result!84928 () Bool)

(assert (= result!84928 result!84804))

(assert (=> b!1315596 t!118423))

(declare-fun tb!69989 () Bool)

(declare-fun t!118425 () Bool)

(assert (=> (and b!1317425 (= (toChars!3391 (transformation!2309 (h!18743 (t!118281 (t!118281 rules!2550))))) (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433652)))))) t!118425) tb!69989))

(declare-fun result!84930 () Bool)

(assert (= result!84930 result!84872))

(assert (=> d!371131 t!118425))

(assert (=> d!370673 t!118423))

(assert (=> b!1315593 t!118421))

(declare-fun t!118427 () Bool)

(declare-fun tb!69991 () Bool)

(assert (=> (and b!1317425 (= (toChars!3391 (transformation!2309 (h!18743 (t!118281 (t!118281 rules!2550))))) (toChars!3391 (transformation!2309 (rule!4050 (_1!7367 (get!4256 lt!433820)))))) t!118427) tb!69991))

(declare-fun result!84932 () Bool)

(assert (= result!84932 result!84880))

(assert (=> d!371239 t!118427))

(declare-fun b_and!88009 () Bool)

(declare-fun tp!383029 () Bool)

(assert (=> b!1317425 (= tp!383029 (and (=> t!118423 result!84928) (=> t!118427 result!84932) (=> t!118421 result!84926) (=> t!118425 result!84930) b_and!88009))))

(declare-fun e!844468 () Bool)

(assert (=> b!1317425 (= e!844468 (and tp!383028 tp!383029))))

(declare-fun e!844465 () Bool)

(declare-fun tp!383027 () Bool)

(declare-fun b!1317424 () Bool)

(assert (=> b!1317424 (= e!844465 (and tp!383027 (inv!17711 (tag!2571 (h!18743 (t!118281 (t!118281 rules!2550))))) (inv!17714 (transformation!2309 (h!18743 (t!118281 (t!118281 rules!2550))))) e!844468))))

(declare-fun b!1317423 () Bool)

(declare-fun e!844466 () Bool)

(declare-fun tp!383030 () Bool)

(assert (=> b!1317423 (= e!844466 (and e!844465 tp!383030))))

(assert (=> b!1315838 (= tp!382884 e!844466)))

(assert (= b!1317424 b!1317425))

(assert (= b!1317423 b!1317424))

(assert (= (and b!1315838 ((_ is Cons!13342) (t!118281 (t!118281 rules!2550)))) b!1317423))

(declare-fun m!1472105 () Bool)

(assert (=> b!1317424 m!1472105))

(declare-fun m!1472107 () Bool)

(assert (=> b!1317424 m!1472107))

(declare-fun b!1317426 () Bool)

(declare-fun tp!383031 () Bool)

(declare-fun e!844470 () Bool)

(declare-fun tp!383032 () Bool)

(assert (=> b!1317426 (= e!844470 (and (inv!17718 (left!11468 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34))))) tp!383031 (inv!17718 (right!11798 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34))))) tp!383032))))

(declare-fun b!1317428 () Bool)

(declare-fun e!844469 () Bool)

(declare-fun tp!383033 () Bool)

(assert (=> b!1317428 (= e!844469 tp!383033)))

(declare-fun b!1317427 () Bool)

(assert (=> b!1317427 (= e!844470 (and (inv!17725 (xs!7103 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34))))) e!844469))))

(assert (=> b!1315555 (= tp!382811 (and (inv!17718 (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34)))) e!844470))))

(assert (= (and b!1315555 ((_ is Node!4388) (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34))))) b!1317426))

(assert (= b!1317427 b!1317428))

(assert (= (and b!1315555 ((_ is Leaf!6739) (c!215720 (dynLambda!5820 (toChars!3391 (transformation!2309 (rule!4050 t2!34))) (value!75439 t2!34))))) b!1317427))

(declare-fun m!1472109 () Bool)

(assert (=> b!1317426 m!1472109))

(declare-fun m!1472111 () Bool)

(assert (=> b!1317426 m!1472111))

(declare-fun m!1472113 () Bool)

(assert (=> b!1317427 m!1472113))

(assert (=> b!1315555 m!1468983))

(declare-fun b!1317432 () Bool)

(declare-fun e!844471 () Bool)

(declare-fun tp!383036 () Bool)

(declare-fun tp!383034 () Bool)

(assert (=> b!1317432 (= e!844471 (and tp!383036 tp!383034))))

(declare-fun b!1317430 () Bool)

(declare-fun tp!383038 () Bool)

(declare-fun tp!383037 () Bool)

(assert (=> b!1317430 (= e!844471 (and tp!383038 tp!383037))))

(declare-fun b!1317431 () Bool)

(declare-fun tp!383035 () Bool)

(assert (=> b!1317431 (= e!844471 tp!383035)))

(declare-fun b!1317429 () Bool)

(assert (=> b!1317429 (= e!844471 tp_is_empty!6627)))

(assert (=> b!1315839 (= tp!382881 e!844471)))

(assert (= (and b!1315839 ((_ is ElementMatch!3623) (regex!2309 (h!18743 (t!118281 rules!2550))))) b!1317429))

(assert (= (and b!1315839 ((_ is Concat!6023) (regex!2309 (h!18743 (t!118281 rules!2550))))) b!1317430))

(assert (= (and b!1315839 ((_ is Star!3623) (regex!2309 (h!18743 (t!118281 rules!2550))))) b!1317431))

(assert (= (and b!1315839 ((_ is Union!3623) (regex!2309 (h!18743 (t!118281 rules!2550))))) b!1317432))

(declare-fun b!1317436 () Bool)

(declare-fun e!844472 () Bool)

(declare-fun tp!383041 () Bool)

(declare-fun tp!383039 () Bool)

(assert (=> b!1317436 (= e!844472 (and tp!383041 tp!383039))))

(declare-fun b!1317434 () Bool)

(declare-fun tp!383043 () Bool)

(declare-fun tp!383042 () Bool)

(assert (=> b!1317434 (= e!844472 (and tp!383043 tp!383042))))

(declare-fun b!1317435 () Bool)

(declare-fun tp!383040 () Bool)

(assert (=> b!1317435 (= e!844472 tp!383040)))

(declare-fun b!1317433 () Bool)

(assert (=> b!1317433 (= e!844472 tp_is_empty!6627)))

(assert (=> b!1315826 (= tp!382871 e!844472)))

(assert (= (and b!1315826 ((_ is ElementMatch!3623) (regOne!7758 (regex!2309 (rule!4050 t1!34))))) b!1317433))

(assert (= (and b!1315826 ((_ is Concat!6023) (regOne!7758 (regex!2309 (rule!4050 t1!34))))) b!1317434))

(assert (= (and b!1315826 ((_ is Star!3623) (regOne!7758 (regex!2309 (rule!4050 t1!34))))) b!1317435))

(assert (= (and b!1315826 ((_ is Union!3623) (regOne!7758 (regex!2309 (rule!4050 t1!34))))) b!1317436))

(declare-fun b!1317440 () Bool)

(declare-fun e!844473 () Bool)

(declare-fun tp!383046 () Bool)

(declare-fun tp!383044 () Bool)

(assert (=> b!1317440 (= e!844473 (and tp!383046 tp!383044))))

(declare-fun b!1317438 () Bool)

(declare-fun tp!383048 () Bool)

(declare-fun tp!383047 () Bool)

(assert (=> b!1317438 (= e!844473 (and tp!383048 tp!383047))))

(declare-fun b!1317439 () Bool)

(declare-fun tp!383045 () Bool)

(assert (=> b!1317439 (= e!844473 tp!383045)))

(declare-fun b!1317437 () Bool)

(assert (=> b!1317437 (= e!844473 tp_is_empty!6627)))

(assert (=> b!1315826 (= tp!382870 e!844473)))

(assert (= (and b!1315826 ((_ is ElementMatch!3623) (regTwo!7758 (regex!2309 (rule!4050 t1!34))))) b!1317437))

(assert (= (and b!1315826 ((_ is Concat!6023) (regTwo!7758 (regex!2309 (rule!4050 t1!34))))) b!1317438))

(assert (= (and b!1315826 ((_ is Star!3623) (regTwo!7758 (regex!2309 (rule!4050 t1!34))))) b!1317439))

(assert (= (and b!1315826 ((_ is Union!3623) (regTwo!7758 (regex!2309 (rule!4050 t1!34))))) b!1317440))

(declare-fun b!1317441 () Bool)

(declare-fun e!844474 () Bool)

(declare-fun tp!383049 () Bool)

(assert (=> b!1317441 (= e!844474 (and tp_is_empty!6627 tp!383049))))

(assert (=> b!1315814 (= tp!382856 e!844474)))

(assert (= (and b!1315814 ((_ is Cons!13341) (t!118280 (originalCharacters!3171 t1!34)))) b!1317441))

(declare-fun b!1317445 () Bool)

(declare-fun e!844475 () Bool)

(declare-fun tp!383052 () Bool)

(declare-fun tp!383050 () Bool)

(assert (=> b!1317445 (= e!844475 (and tp!383052 tp!383050))))

(declare-fun b!1317443 () Bool)

(declare-fun tp!383054 () Bool)

(declare-fun tp!383053 () Bool)

(assert (=> b!1317443 (= e!844475 (and tp!383054 tp!383053))))

(declare-fun b!1317444 () Bool)

(declare-fun tp!383051 () Bool)

(assert (=> b!1317444 (= e!844475 tp!383051)))

(declare-fun b!1317442 () Bool)

(assert (=> b!1317442 (= e!844475 tp_is_empty!6627)))

(assert (=> b!1315844 (= tp!382887 e!844475)))

(assert (= (and b!1315844 ((_ is ElementMatch!3623) (regOne!7759 (regex!2309 (h!18743 rules!2550))))) b!1317442))

(assert (= (and b!1315844 ((_ is Concat!6023) (regOne!7759 (regex!2309 (h!18743 rules!2550))))) b!1317443))

(assert (= (and b!1315844 ((_ is Star!3623) (regOne!7759 (regex!2309 (h!18743 rules!2550))))) b!1317444))

(assert (= (and b!1315844 ((_ is Union!3623) (regOne!7759 (regex!2309 (h!18743 rules!2550))))) b!1317445))

(declare-fun b!1317449 () Bool)

(declare-fun e!844476 () Bool)

(declare-fun tp!383057 () Bool)

(declare-fun tp!383055 () Bool)

(assert (=> b!1317449 (= e!844476 (and tp!383057 tp!383055))))

(declare-fun b!1317447 () Bool)

(declare-fun tp!383059 () Bool)

(declare-fun tp!383058 () Bool)

(assert (=> b!1317447 (= e!844476 (and tp!383059 tp!383058))))

(declare-fun b!1317448 () Bool)

(declare-fun tp!383056 () Bool)

(assert (=> b!1317448 (= e!844476 tp!383056)))

(declare-fun b!1317446 () Bool)

(assert (=> b!1317446 (= e!844476 tp_is_empty!6627)))

(assert (=> b!1315844 (= tp!382885 e!844476)))

(assert (= (and b!1315844 ((_ is ElementMatch!3623) (regTwo!7759 (regex!2309 (h!18743 rules!2550))))) b!1317446))

(assert (= (and b!1315844 ((_ is Concat!6023) (regTwo!7759 (regex!2309 (h!18743 rules!2550))))) b!1317447))

(assert (= (and b!1315844 ((_ is Star!3623) (regTwo!7759 (regex!2309 (h!18743 rules!2550))))) b!1317448))

(assert (= (and b!1315844 ((_ is Union!3623) (regTwo!7759 (regex!2309 (h!18743 rules!2550))))) b!1317449))

(declare-fun b!1317453 () Bool)

(declare-fun e!844477 () Bool)

(declare-fun tp!383062 () Bool)

(declare-fun tp!383060 () Bool)

(assert (=> b!1317453 (= e!844477 (and tp!383062 tp!383060))))

(declare-fun b!1317451 () Bool)

(declare-fun tp!383064 () Bool)

(declare-fun tp!383063 () Bool)

(assert (=> b!1317451 (= e!844477 (and tp!383064 tp!383063))))

(declare-fun b!1317452 () Bool)

(declare-fun tp!383061 () Bool)

(assert (=> b!1317452 (= e!844477 tp!383061)))

(declare-fun b!1317450 () Bool)

(assert (=> b!1317450 (= e!844477 tp_is_empty!6627)))

(assert (=> b!1315843 (= tp!382886 e!844477)))

(assert (= (and b!1315843 ((_ is ElementMatch!3623) (reg!3952 (regex!2309 (h!18743 rules!2550))))) b!1317450))

(assert (= (and b!1315843 ((_ is Concat!6023) (reg!3952 (regex!2309 (h!18743 rules!2550))))) b!1317451))

(assert (= (and b!1315843 ((_ is Star!3623) (reg!3952 (regex!2309 (h!18743 rules!2550))))) b!1317452))

(assert (= (and b!1315843 ((_ is Union!3623) (reg!3952 (regex!2309 (h!18743 rules!2550))))) b!1317453))

(declare-fun b!1317457 () Bool)

(declare-fun e!844478 () Bool)

(declare-fun tp!383067 () Bool)

(declare-fun tp!383065 () Bool)

(assert (=> b!1317457 (= e!844478 (and tp!383067 tp!383065))))

(declare-fun b!1317455 () Bool)

(declare-fun tp!383069 () Bool)

(declare-fun tp!383068 () Bool)

(assert (=> b!1317455 (= e!844478 (and tp!383069 tp!383068))))

(declare-fun b!1317456 () Bool)

(declare-fun tp!383066 () Bool)

(assert (=> b!1317456 (= e!844478 tp!383066)))

(declare-fun b!1317454 () Bool)

(assert (=> b!1317454 (= e!844478 tp_is_empty!6627)))

(assert (=> b!1315848 (= tp!382892 e!844478)))

(assert (= (and b!1315848 ((_ is ElementMatch!3623) (regOne!7759 (regex!2309 (rule!4050 t2!34))))) b!1317454))

(assert (= (and b!1315848 ((_ is Concat!6023) (regOne!7759 (regex!2309 (rule!4050 t2!34))))) b!1317455))

(assert (= (and b!1315848 ((_ is Star!3623) (regOne!7759 (regex!2309 (rule!4050 t2!34))))) b!1317456))

(assert (= (and b!1315848 ((_ is Union!3623) (regOne!7759 (regex!2309 (rule!4050 t2!34))))) b!1317457))

(declare-fun b!1317461 () Bool)

(declare-fun e!844479 () Bool)

(declare-fun tp!383072 () Bool)

(declare-fun tp!383070 () Bool)

(assert (=> b!1317461 (= e!844479 (and tp!383072 tp!383070))))

(declare-fun b!1317459 () Bool)

(declare-fun tp!383074 () Bool)

(declare-fun tp!383073 () Bool)

(assert (=> b!1317459 (= e!844479 (and tp!383074 tp!383073))))

(declare-fun b!1317460 () Bool)

(declare-fun tp!383071 () Bool)

(assert (=> b!1317460 (= e!844479 tp!383071)))

(declare-fun b!1317458 () Bool)

(assert (=> b!1317458 (= e!844479 tp_is_empty!6627)))

(assert (=> b!1315848 (= tp!382890 e!844479)))

(assert (= (and b!1315848 ((_ is ElementMatch!3623) (regTwo!7759 (regex!2309 (rule!4050 t2!34))))) b!1317458))

(assert (= (and b!1315848 ((_ is Concat!6023) (regTwo!7759 (regex!2309 (rule!4050 t2!34))))) b!1317459))

(assert (= (and b!1315848 ((_ is Star!3623) (regTwo!7759 (regex!2309 (rule!4050 t2!34))))) b!1317460))

(assert (= (and b!1315848 ((_ is Union!3623) (regTwo!7759 (regex!2309 (rule!4050 t2!34))))) b!1317461))

(declare-fun b!1317462 () Bool)

(declare-fun e!844480 () Bool)

(declare-fun tp!383075 () Bool)

(assert (=> b!1317462 (= e!844480 (and tp_is_empty!6627 tp!383075))))

(assert (=> b!1315829 (= tp!382872 e!844480)))

(assert (= (and b!1315829 ((_ is Cons!13341) (t!118280 (originalCharacters!3171 t2!34)))) b!1317462))

(declare-fun b!1317466 () Bool)

(declare-fun e!844481 () Bool)

(declare-fun tp!383078 () Bool)

(declare-fun tp!383076 () Bool)

(assert (=> b!1317466 (= e!844481 (and tp!383078 tp!383076))))

(declare-fun b!1317464 () Bool)

(declare-fun tp!383080 () Bool)

(declare-fun tp!383079 () Bool)

(assert (=> b!1317464 (= e!844481 (and tp!383080 tp!383079))))

(declare-fun b!1317465 () Bool)

(declare-fun tp!383077 () Bool)

(assert (=> b!1317465 (= e!844481 tp!383077)))

(declare-fun b!1317463 () Bool)

(assert (=> b!1317463 (= e!844481 tp_is_empty!6627)))

(assert (=> b!1315846 (= tp!382894 e!844481)))

(assert (= (and b!1315846 ((_ is ElementMatch!3623) (regOne!7758 (regex!2309 (rule!4050 t2!34))))) b!1317463))

(assert (= (and b!1315846 ((_ is Concat!6023) (regOne!7758 (regex!2309 (rule!4050 t2!34))))) b!1317464))

(assert (= (and b!1315846 ((_ is Star!3623) (regOne!7758 (regex!2309 (rule!4050 t2!34))))) b!1317465))

(assert (= (and b!1315846 ((_ is Union!3623) (regOne!7758 (regex!2309 (rule!4050 t2!34))))) b!1317466))

(declare-fun b!1317470 () Bool)

(declare-fun e!844482 () Bool)

(declare-fun tp!383083 () Bool)

(declare-fun tp!383081 () Bool)

(assert (=> b!1317470 (= e!844482 (and tp!383083 tp!383081))))

(declare-fun b!1317468 () Bool)

(declare-fun tp!383085 () Bool)

(declare-fun tp!383084 () Bool)

(assert (=> b!1317468 (= e!844482 (and tp!383085 tp!383084))))

(declare-fun b!1317469 () Bool)

(declare-fun tp!383082 () Bool)

(assert (=> b!1317469 (= e!844482 tp!383082)))

(declare-fun b!1317467 () Bool)

(assert (=> b!1317467 (= e!844482 tp_is_empty!6627)))

(assert (=> b!1315846 (= tp!382893 e!844482)))

(assert (= (and b!1315846 ((_ is ElementMatch!3623) (regTwo!7758 (regex!2309 (rule!4050 t2!34))))) b!1317467))

(assert (= (and b!1315846 ((_ is Concat!6023) (regTwo!7758 (regex!2309 (rule!4050 t2!34))))) b!1317468))

(assert (= (and b!1315846 ((_ is Star!3623) (regTwo!7758 (regex!2309 (rule!4050 t2!34))))) b!1317469))

(assert (= (and b!1315846 ((_ is Union!3623) (regTwo!7758 (regex!2309 (rule!4050 t2!34))))) b!1317470))

(declare-fun b!1317474 () Bool)

(declare-fun e!844483 () Bool)

(declare-fun tp!383088 () Bool)

(declare-fun tp!383086 () Bool)

(assert (=> b!1317474 (= e!844483 (and tp!383088 tp!383086))))

(declare-fun b!1317472 () Bool)

(declare-fun tp!383090 () Bool)

(declare-fun tp!383089 () Bool)

(assert (=> b!1317472 (= e!844483 (and tp!383090 tp!383089))))

(declare-fun b!1317473 () Bool)

(declare-fun tp!383087 () Bool)

(assert (=> b!1317473 (= e!844483 tp!383087)))

(declare-fun b!1317471 () Bool)

(assert (=> b!1317471 (= e!844483 tp_is_empty!6627)))

(assert (=> b!1315847 (= tp!382891 e!844483)))

(assert (= (and b!1315847 ((_ is ElementMatch!3623) (reg!3952 (regex!2309 (rule!4050 t2!34))))) b!1317471))

(assert (= (and b!1315847 ((_ is Concat!6023) (reg!3952 (regex!2309 (rule!4050 t2!34))))) b!1317472))

(assert (= (and b!1315847 ((_ is Star!3623) (reg!3952 (regex!2309 (rule!4050 t2!34))))) b!1317473))

(assert (= (and b!1315847 ((_ is Union!3623) (reg!3952 (regex!2309 (rule!4050 t2!34))))) b!1317474))

(declare-fun b!1317478 () Bool)

(declare-fun e!844484 () Bool)

(declare-fun tp!383093 () Bool)

(declare-fun tp!383091 () Bool)

(assert (=> b!1317478 (= e!844484 (and tp!383093 tp!383091))))

(declare-fun b!1317476 () Bool)

(declare-fun tp!383095 () Bool)

(declare-fun tp!383094 () Bool)

(assert (=> b!1317476 (= e!844484 (and tp!383095 tp!383094))))

(declare-fun b!1317477 () Bool)

(declare-fun tp!383092 () Bool)

(assert (=> b!1317477 (= e!844484 tp!383092)))

(declare-fun b!1317475 () Bool)

(assert (=> b!1317475 (= e!844484 tp_is_empty!6627)))

(assert (=> b!1315842 (= tp!382889 e!844484)))

(assert (= (and b!1315842 ((_ is ElementMatch!3623) (regOne!7758 (regex!2309 (h!18743 rules!2550))))) b!1317475))

(assert (= (and b!1315842 ((_ is Concat!6023) (regOne!7758 (regex!2309 (h!18743 rules!2550))))) b!1317476))

(assert (= (and b!1315842 ((_ is Star!3623) (regOne!7758 (regex!2309 (h!18743 rules!2550))))) b!1317477))

(assert (= (and b!1315842 ((_ is Union!3623) (regOne!7758 (regex!2309 (h!18743 rules!2550))))) b!1317478))

(declare-fun b!1317482 () Bool)

(declare-fun e!844485 () Bool)

(declare-fun tp!383098 () Bool)

(declare-fun tp!383096 () Bool)

(assert (=> b!1317482 (= e!844485 (and tp!383098 tp!383096))))

(declare-fun b!1317480 () Bool)

(declare-fun tp!383100 () Bool)

(declare-fun tp!383099 () Bool)

(assert (=> b!1317480 (= e!844485 (and tp!383100 tp!383099))))

(declare-fun b!1317481 () Bool)

(declare-fun tp!383097 () Bool)

(assert (=> b!1317481 (= e!844485 tp!383097)))

(declare-fun b!1317479 () Bool)

(assert (=> b!1317479 (= e!844485 tp_is_empty!6627)))

(assert (=> b!1315842 (= tp!382888 e!844485)))

(assert (= (and b!1315842 ((_ is ElementMatch!3623) (regTwo!7758 (regex!2309 (h!18743 rules!2550))))) b!1317479))

(assert (= (and b!1315842 ((_ is Concat!6023) (regTwo!7758 (regex!2309 (h!18743 rules!2550))))) b!1317480))

(assert (= (and b!1315842 ((_ is Star!3623) (regTwo!7758 (regex!2309 (h!18743 rules!2550))))) b!1317481))

(assert (= (and b!1315842 ((_ is Union!3623) (regTwo!7758 (regex!2309 (h!18743 rules!2550))))) b!1317482))

(declare-fun b_lambda!38207 () Bool)

(assert (= b_lambda!38205 (or b!1315067 b_lambda!38207)))

(assert (=> d!371701 d!370823))

(declare-fun b_lambda!38209 () Bool)

(assert (= b_lambda!38129 (or d!370807 b_lambda!38209)))

(declare-fun bs!330627 () Bool)

(declare-fun d!371727 () Bool)

(assert (= bs!330627 (and d!371727 d!370807)))

(assert (=> bs!330627 (= (dynLambda!5818 lambda!53573 (h!18745 lt!433564)) (not (dynLambda!5818 lambda!53527 (h!18745 lt!433564))))))

(declare-fun b_lambda!38237 () Bool)

(assert (=> (not b_lambda!38237) (not bs!330627)))

(declare-fun m!1472115 () Bool)

(assert (=> bs!330627 m!1472115))

(assert (=> b!1316474 d!371727))

(declare-fun b_lambda!38211 () Bool)

(assert (= b_lambda!38161 (or b!1315067 b_lambda!38211)))

(assert (=> d!371623 d!370815))

(declare-fun b_lambda!38213 () Bool)

(assert (= b_lambda!38155 (or d!370719 b_lambda!38213)))

(declare-fun bs!330628 () Bool)

(declare-fun d!371729 () Bool)

(assert (= bs!330628 (and d!371729 d!370719)))

(assert (=> bs!330628 (= (dynLambda!5817 lambda!53557 (h!18743 rules!2550)) (regex!2309 (h!18743 rules!2550)))))

(assert (=> b!1316920 d!371729))

(declare-fun b_lambda!38215 () Bool)

(assert (= b_lambda!38157 (or b!1315067 b_lambda!38215)))

(assert (=> d!371511 d!370817))

(declare-fun b_lambda!38217 () Bool)

(assert (= b_lambda!38131 (or d!370803 b_lambda!38217)))

(declare-fun bs!330629 () Bool)

(declare-fun d!371731 () Bool)

(assert (= bs!330629 (and d!371731 d!370803)))

(assert (=> bs!330629 (= (dynLambda!5818 lambda!53566 (h!18745 (map!2930 rules!2550 lambda!53526))) (not (dynLambda!5818 lambda!53527 (h!18745 (map!2930 rules!2550 lambda!53526)))))))

(declare-fun b_lambda!38239 () Bool)

(assert (=> (not b_lambda!38239) (not bs!330629)))

(assert (=> bs!330629 m!1468541))

(assert (=> b!1316476 d!371731))

(declare-fun b_lambda!38219 () Bool)

(assert (= b_lambda!38127 (or d!370783 b_lambda!38219)))

(declare-fun bs!330630 () Bool)

(declare-fun d!371733 () Bool)

(assert (= bs!330630 (and d!371733 d!370783)))

(assert (=> bs!330630 (= (dynLambda!5823 lambda!53560 (h!18743 rules!2550)) (not (dynLambda!5823 lambda!53528 (h!18743 rules!2550))))))

(declare-fun b_lambda!38241 () Bool)

(assert (=> (not b_lambda!38241) (not bs!330630)))

(assert (=> bs!330630 m!1469223))

(assert (=> b!1316442 d!371733))

(declare-fun b_lambda!38221 () Bool)

(assert (= b_lambda!38151 (or b!1315094 b_lambda!38221)))

(declare-fun bs!330631 () Bool)

(declare-fun d!371735 () Bool)

(assert (= bs!330631 (and d!371735 b!1315094)))

(assert (=> bs!330631 (= (dynLambda!5817 lambda!53526 (h!18743 (t!118281 rules!2550))) (regex!2309 (h!18743 (t!118281 rules!2550))))))

(assert (=> b!1316766 d!371735))

(declare-fun b_lambda!38223 () Bool)

(assert (= b_lambda!38135 (or d!370805 b_lambda!38223)))

(declare-fun bs!330632 () Bool)

(declare-fun d!371737 () Bool)

(assert (= bs!330632 (and d!371737 d!370805)))

(assert (=> bs!330632 (= (dynLambda!5818 lambda!53571 (h!18745 lt!433564)) (validRegex!1549 (h!18745 lt!433564)))))

(declare-fun m!1472117 () Bool)

(assert (=> bs!330632 m!1472117))

(assert (=> b!1316591 d!371737))

(declare-fun b_lambda!38225 () Bool)

(assert (= b_lambda!38201 (or b!1315094 b_lambda!38225)))

(declare-fun bs!330633 () Bool)

(declare-fun d!371739 () Bool)

(assert (= bs!330633 (and d!371739 b!1315094)))

(declare-fun res!591935 () Bool)

(declare-fun e!844486 () Bool)

(assert (=> bs!330633 (=> (not res!591935) (not e!844486))))

(assert (=> bs!330633 (= res!591935 (validRegex!1549 lt!434580))))

(assert (=> bs!330633 (= (dynLambda!5818 lambda!53527 lt!434580) e!844486)))

(declare-fun b!1317483 () Bool)

(assert (=> b!1317483 (= e!844486 (matchR!1625 lt!434580 lt!433574))))

(assert (= (and bs!330633 res!591935) b!1317483))

(declare-fun m!1472119 () Bool)

(assert (=> bs!330633 m!1472119))

(declare-fun m!1472121 () Bool)

(assert (=> b!1317483 m!1472121))

(assert (=> d!371693 d!371739))

(declare-fun b_lambda!38227 () Bool)

(assert (= b_lambda!38147 (or b!1315070 b_lambda!38227)))

(declare-fun bs!330634 () Bool)

(declare-fun d!371741 () Bool)

(assert (= bs!330634 (and d!371741 b!1315070)))

(assert (=> bs!330634 (= (dynLambda!5823 lambda!53528 (h!18743 (t!118281 rules!2550))) (= (regex!2309 (h!18743 (t!118281 rules!2550))) lt!433567))))

(assert (=> b!1316715 d!371741))

(declare-fun b_lambda!38229 () Bool)

(assert (= b_lambda!38199 (or b!1315094 b_lambda!38229)))

(declare-fun bs!330635 () Bool)

(declare-fun d!371743 () Bool)

(assert (= bs!330635 (and d!371743 b!1315094)))

(declare-fun res!591936 () Bool)

(declare-fun e!844487 () Bool)

(assert (=> bs!330635 (=> (not res!591936) (not e!844487))))

(assert (=> bs!330635 (= res!591936 (validRegex!1549 (h!18745 (t!118283 (map!2930 rules!2550 lambda!53526)))))))

(assert (=> bs!330635 (= (dynLambda!5818 lambda!53527 (h!18745 (t!118283 (map!2930 rules!2550 lambda!53526)))) e!844487)))

(declare-fun b!1317484 () Bool)

(assert (=> b!1317484 (= e!844487 (matchR!1625 (h!18745 (t!118283 (map!2930 rules!2550 lambda!53526))) lt!433574))))

(assert (= (and bs!330635 res!591936) b!1317484))

(declare-fun m!1472123 () Bool)

(assert (=> bs!330635 m!1472123))

(declare-fun m!1472125 () Bool)

(assert (=> b!1317484 m!1472125))

(assert (=> b!1317349 d!371743))

(declare-fun b_lambda!38231 () Bool)

(assert (= b_lambda!38159 (or b!1315067 b_lambda!38231)))

(declare-fun bs!330636 () Bool)

(declare-fun d!371745 () Bool)

(assert (= bs!330636 (and d!371745 b!1315067)))

(assert (=> bs!330636 (= (dynLambda!5823 lambda!53529 (h!18743 rules!2550)) (ruleValid!562 thiss!19762 (h!18743 rules!2550)))))

(assert (=> bs!330636 m!1470413))

(assert (=> b!1317027 d!371745))

(declare-fun b_lambda!38233 () Bool)

(assert (= b_lambda!38203 (or b!1315084 b_lambda!38233)))

(declare-fun bs!330637 () Bool)

(declare-fun d!371747 () Bool)

(assert (= bs!330637 (and d!371747 b!1315084)))

(declare-fun res!591937 () Bool)

(declare-fun e!844488 () Bool)

(assert (=> bs!330637 (=> (not res!591937) (not e!844488))))

(assert (=> bs!330637 (= res!591937 (matchR!1625 lt!433562 res!591914))))

(assert (=> bs!330637 (= (dynLambda!5819 lambda!53525 res!591914) e!844488)))

(declare-fun b!1317485 () Bool)

(assert (=> b!1317485 (= e!844488 (isPrefix!1073 lt!433563 res!591914))))

(assert (= (and bs!330637 res!591937) b!1317485))

(declare-fun m!1472127 () Bool)

(assert (=> bs!330637 m!1472127))

(declare-fun m!1472129 () Bool)

(assert (=> b!1317485 m!1472129))

(assert (=> d!371697 d!371747))

(declare-fun b_lambda!38235 () Bool)

(assert (= b_lambda!38145 (or b!1315070 b_lambda!38235)))

(declare-fun bs!330638 () Bool)

(declare-fun d!371749 () Bool)

(assert (= bs!330638 (and d!371749 b!1315070)))

(assert (=> bs!330638 (= (dynLambda!5823 lambda!53528 lt!434088) (= (regex!2309 lt!434088) lt!433567))))

(assert (=> d!371351 d!371749))

(check-sat (not b!1317284) (not b!1317405) (not b!1316467) (not bs!330637) (not b!1316270) (not b!1317453) (not b_lambda!38209) (not b!1317055) (not b!1317340) (not b!1316505) (not b_lambda!38237) (not d!371233) (not b!1317439) (not b!1317054) (not d!371615) (not d!371665) (not b!1317198) (not b!1316515) (not b_lambda!38215) (not b!1317118) (not b!1316480) (not b!1317444) (not d!371583) (not b_lambda!38093) (not b!1317464) (not d!371699) (not b!1317461) (not b!1316477) (not b!1316521) (not b!1317040) (not d!371435) (not bm!89476) (not b!1317117) (not d!371719) (not b!1316982) (not b!1316862) (not b!1317030) (not b!1317401) (not b!1317033) (not b!1317059) (not bm!89458) (not b!1316531) (not b!1317342) (not d!371713) (not bm!89468) (not b!1317391) (not b_lambda!38213) (not b!1317447) (not b!1316618) (not b!1316464) (not b!1317071) (not b!1317472) (not b!1317355) (not b!1317102) (not b!1317072) (not b!1316651) (not b!1317062) (not b!1317418) (not d!371509) (not d!371129) (not b!1316463) (not d!371351) (not b!1317438) (not d!371569) (not b!1317436) (not b!1316988) (not b!1316869) (not d!371401) (not b!1316752) (not d!371463) (not b!1316578) (not b!1317459) (not b!1317087) (not b!1316920) (not b!1317445) (not b!1317383) (not d!371499) (not b!1316863) (not b!1316392) (not b!1317469) (not b!1316309) (not b!1316960) (not b!1316653) (not b!1316758) (not b!1316791) (not b!1317376) (not d!371473) (not bm!89477) (not b!1317388) (not d!371459) (not b!1317470) (not b!1316465) (not b!1317399) (not d!371215) (not b!1316750) (not b!1316448) (not b!1317061) (not d!371561) (not b!1317363) (not b!1317403) b_and!87983 (not b!1317105) (not b!1317460) (not b_lambda!38085) (not b!1316479) (not b_next!32435) (not b!1316394) (not b_lambda!38231) b_and!87995 b_and!88007 (not b!1316915) (not d!371659) (not b!1316652) tp_is_empty!6627 (not b!1316845) (not b!1317313) (not b!1317320) (not b!1317351) (not d!371549) (not d!371225) (not d!371207) (not b_next!32419) (not b_next!32437) (not b!1317452) (not d!371451) (not b!1316503) (not b!1317275) (not b!1317318) (not d!371545) (not bs!330633) (not b!1316832) (not d!371205) (not d!371327) (not d!371689) (not bm!89462) (not b!1316912) (not b!1316291) (not b!1316748) (not b!1316724) (not b!1316513) b_and!88001 b_and!87981 (not b!1316579) (not d!371531) (not d!371239) (not tb!69937) (not b!1317084) (not tb!69945) (not d!371565) (not b!1317482) (not b!1317057) (not d!371139) (not b!1317347) (not d!371525) (not d!371389) (not b!1317272) (not b!1317119) (not d!371069) (not b_lambda!38229) (not d!371517) (not d!371539) (not tb!69961) (not b_lambda!38235) (not d!371547) (not b!1316878) (not b!1317106) (not b!1316835) (not b!1317343) (not b!1317483) (not b!1317417) b_and!88009 (not b!1316964) (not b!1316244) (not b!1316389) (not b!1317462) (not b!1317416) (not b!1317372) (not d!371501) (not b!1317328) (not b!1316649) (not b!1316716) (not b!1316970) (not d!371359) (not d!371441) (not bm!89466) (not d!371527) (not bm!89500) (not b!1317036) (not b!1316876) (not b!1316956) (not b!1317395) (not b!1317195) b_and!87985 (not b!1316976) (not b!1316852) (not b!1316768) (not b!1316598) (not d!371403) (not b!1317455) (not b!1316258) (not d!371673) (not d!371189) (not b!1317038) (not b!1317326) (not b!1316963) (not b!1316766) (not bm!89499) (not bm!89505) (not b!1317011) (not b!1316855) (not b!1317370) (not d!371633) (not b!1317315) b_and!87979 (not b!1316540) (not b!1316529) (not b!1317392) (not b_lambda!38153) (not b!1316624) (not b!1317485) (not b!1317067) (not bm!89464) (not b!1317365) (not b_lambda!38069) (not b_lambda!38077) (not b!1316853) (not d!371563) (not b!1315595) (not b!1316294) (not d!371621) (not b!1316657) (not b!1317448) (not b!1317381) (not b!1317473) (not b!1317397) (not b!1317456) (not d!371217) (not b!1316754) (not d!371395) (not b!1317432) (not b!1316390) (not b_lambda!38219) (not b!1316911) (not b_lambda!38227) (not b!1316753) (not b!1317279) (not b!1317287) (not b!1317056) (not b!1316658) (not b!1316475) (not b!1316469) (not b!1317364) (not b!1316865) (not b!1316984) (not d!371301) (not b!1316592) (not b_next!32429) (not d!371711) (not b!1316874) (not b!1317028) (not d!371717) (not bm!89457) (not bm!89482) (not d!371707) (not b!1317022) (not b!1317277) (not d!371245) (not b!1316509) (not d!371213) (not d!371249) (not d!371469) (not b_lambda!38137) (not b!1317108) (not b!1317039) (not b!1316506) (not d!371571) (not b_next!32443) (not b!1317457) (not d!371179) (not b!1317380) (not b!1316542) (not d!371567) (not b!1317474) (not d!371187) (not b!1317484) (not b!1317428) (not b!1316987) (not bm!89504) (not b!1316717) (not b_lambda!38133) (not d!371613) (not b!1317435) (not bm!89480) (not b!1316790) (not b!1316523) (not b!1316555) (not d!371715) (not b!1316864) (not b_lambda!38223) (not d!371383) (not b!1316266) (not b!1317430) (not b!1317478) (not b!1317282) (not b!1316535) (not d!371587) (not d!371655) (not b!1316489) (not d!371369) (not b!1317089) (not b!1316554) (not bm!89501) (not b!1316698) (not b!1317193) (not d!371077) (not b!1316699) (not b_next!32425) (not d!371589) (not b!1317367) (not b_lambda!38079) (not b!1316524) (not d!371405) (not b!1317440) (not b!1316462) (not b!1316792) (not b!1317360) (not b!1317177) (not bm!89491) (not b!1317065) (not b!1317329) (not d!371305) (not d!371457) (not b_next!32421) (not b!1316866) (not d!371619) (not d!371075) (not d!371691) (not b!1316526) (not d!371221) (not b!1317476) (not b!1316466) (not b!1316871) (not d!371433) (not d!371573) (not d!371503) (not b!1317190) (not b!1317465) (not b!1317068) (not b!1316627) (not b!1317322) (not d!371253) (not d!371427) (not d!371285) (not d!371551) (not b!1316491) (not b!1316857) (not d!371197) (not b!1316541) (not b!1316487) (not b_lambda!38073) (not b!1316860) (not d!371449) (not d!371283) (not b_lambda!38241) (not b!1316656) (not d!371325) (not b!1317420) (not b!1316386) (not b!1317276) (not bm!89498) (not b!1317077) (not b!1317031) (not d!371273) (not b_lambda!38207) (not bm!89453) (not b!1316977) b_and!87999 (not b!1316867) (not d!371725) (not b!1317481) (not d!371235) (not b!1316962) (not b!1317480) (not b!1317325) (not b!1316836) (not b!1316384) (not tb!69953) (not d!371131) (not b!1317168) (not b!1317407) (not b!1316957) (not d!371523) (not b!1316761) (not bm!89451) (not b!1316290) (not d!371203) (not b!1317063) (not d!371465) (not b!1317042) (not d!371693) (not b!1316882) (not b_lambda!38083) (not b!1316534) (not b!1316655) (not b!1317083) (not b_lambda!38071) (not b!1316759) (not b!1317080) (not b!1317421) (not b!1316910) (not d!371611) (not bm!89506) (not b!1317477) (not b!1317288) (not b!1317346) (not b!1316961) (not d!371443) (not b_lambda!38075) (not bs!330632) (not b!1316713) (not d!371667) (not b!1316959) (not b!1316744) (not d!371251) (not b!1316918) (not d!371293) (not d!371041) (not b!1317037) (not d!371687) (not bm!89455) (not b!1317422) (not b!1317359) (not d!371515) (not b_next!32427) (not d!371721) (not b!1317348) (not b!1317314) (not b!1317073) (not d!371535) (not b!1317076) (not b_next!32445) (not b!1317423) (not d!371475) (not bs!330636) (not b!1317344) (not b!1316245) (not b!1316543) (not d!371237) (not d!371675) (not d!371461) (not b!1317441) (not b!1316861) (not b!1316411) (not b_lambda!38225) (not d!371171) (not b!1317199) (not b!1317186) (not d!371231) (not bm!89494) (not d!371445) (not b!1317375) (not b!1317321) b_and!87997 (not d!371211) (not d!371521) (not d!371143) (not b!1316755) (not b!1317064) (not b!1316856) (not d!371703) (not d!371227) (not d!371557) (not b!1317468) (not b_lambda!38091) (not d!371145) (not bm!89481) (not b!1316917) (not b!1316914) (not b!1317060) (not b!1317451) (not d!371617) (not b_lambda!38221) (not b_lambda!38087) (not b!1317427) (not b!1317386) (not b!1316756) (not b!1316260) (not d!371191) (not b!1317402) (not b!1317050) (not d!371393) (not d!371505) (not d!371363) (not d!371553) (not bm!89460) (not b!1317078) (not bm!89479) (not b!1316879) (not b!1316770) (not b!1316520) (not b!1316740) (not b!1317312) (not b!1316295) (not b!1317052) (not b!1316872) (not b!1316979) (not d!371695) (not b!1316760) (not b!1317310) (not d!371247) (not b!1316888) (not d!371175) (not b_lambda!38233) (not b!1316870) (not b!1316443) (not b!1317434) (not b!1317426) (not b!1317406) (not b!1317034) (not b!1317424) (not b_lambda!38211) (not b!1316553) (not b_lambda!38123) (not b!1317449) (not b!1316391) (not b_lambda!38081) (not b!1317044) (not bm!89472) (not d!371289) (not b!1317466) (not b!1316650) (not b!1316746) (not d!371661) (not d!371467) (not b_lambda!38217) (not b!1317041) (not b!1317327) (not b!1316495) (not bm!89495) (not bs!330635) (not b!1316665) (not b!1316510) (not b!1316742) (not b!1317120) (not b!1317091) (not b!1316858) (not d!371033) (not b!1316833) (not b!1317358) (not b_lambda!38239) (not b!1316268) (not d!371529) (not b!1317081) (not b!1315555) (not b!1317431) (not b!1317443) (not b_lambda!38089) (not b_next!32423))
(check-sat b_and!88001 b_and!87981 b_and!88009 b_and!87985 b_and!87979 (not b_next!32429) (not b_next!32443) (not b_next!32425) (not b_next!32421) b_and!87999 (not b_next!32427) (not b_next!32445) b_and!87997 (not b_next!32423) (not b_next!32435) b_and!87983 b_and!87995 b_and!88007 (not b_next!32419) (not b_next!32437))
