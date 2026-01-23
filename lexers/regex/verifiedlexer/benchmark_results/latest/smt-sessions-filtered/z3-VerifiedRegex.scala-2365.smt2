; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118106 () Bool)

(assert start!118106)

(declare-fun b!1328788 () Bool)

(declare-fun b_free!32147 () Bool)

(declare-fun b_next!32851 () Bool)

(assert (=> b!1328788 (= b_free!32147 (not b_next!32851))))

(declare-fun tp!384915 () Bool)

(declare-fun b_and!88767 () Bool)

(assert (=> b!1328788 (= tp!384915 b_and!88767)))

(declare-fun b_free!32149 () Bool)

(declare-fun b_next!32853 () Bool)

(assert (=> b!1328788 (= b_free!32149 (not b_next!32853))))

(declare-fun tp!384916 () Bool)

(declare-fun b_and!88769 () Bool)

(assert (=> b!1328788 (= tp!384916 b_and!88769)))

(declare-fun b!1328800 () Bool)

(declare-fun b_free!32151 () Bool)

(declare-fun b_next!32855 () Bool)

(assert (=> b!1328800 (= b_free!32151 (not b_next!32855))))

(declare-fun tp!384925 () Bool)

(declare-fun b_and!88771 () Bool)

(assert (=> b!1328800 (= tp!384925 b_and!88771)))

(declare-fun b_free!32153 () Bool)

(declare-fun b_next!32857 () Bool)

(assert (=> b!1328800 (= b_free!32153 (not b_next!32857))))

(declare-fun tp!384921 () Bool)

(declare-fun b_and!88773 () Bool)

(assert (=> b!1328800 (= tp!384921 b_and!88773)))

(declare-fun b!1328818 () Bool)

(declare-fun b_free!32155 () Bool)

(declare-fun b_next!32859 () Bool)

(assert (=> b!1328818 (= b_free!32155 (not b_next!32859))))

(declare-fun tp!384918 () Bool)

(declare-fun b_and!88775 () Bool)

(assert (=> b!1328818 (= tp!384918 b_and!88775)))

(declare-fun b_free!32157 () Bool)

(declare-fun b_next!32861 () Bool)

(assert (=> b!1328818 (= b_free!32157 (not b_next!32861))))

(declare-fun tp!384917 () Bool)

(declare-fun b_and!88777 () Bool)

(assert (=> b!1328818 (= tp!384917 b_and!88777)))

(declare-fun b!1328815 () Bool)

(assert (=> b!1328815 true))

(assert (=> b!1328815 true))

(declare-fun b!1328791 () Bool)

(assert (=> b!1328791 true))

(declare-fun b!1328807 () Bool)

(assert (=> b!1328807 true))

(declare-fun bs!331504 () Bool)

(declare-fun b!1328799 () Bool)

(assert (= bs!331504 (and b!1328799 b!1328807)))

(declare-fun lambda!55151 () Int)

(declare-fun lambda!55150 () Int)

(assert (=> bs!331504 (not (= lambda!55151 lambda!55150))))

(assert (=> b!1328799 true))

(declare-fun b!1328785 () Bool)

(declare-fun res!598498 () Bool)

(declare-fun e!851352 () Bool)

(assert (=> b!1328785 (=> (not res!598498) (not e!851352))))

(declare-datatypes ((List!13574 0))(
  ( (Nil!13508) (Cons!13508 (h!18909 (_ BitVec 16)) (t!118911 List!13574)) )
))
(declare-datatypes ((TokenValue!2429 0))(
  ( (FloatLiteralValue!4858 (text!17448 List!13574)) (TokenValueExt!2428 (__x!8687 Int)) (Broken!12145 (value!76268 List!13574)) (Object!2494) (End!2429) (Def!2429) (Underscore!2429) (Match!2429) (Else!2429) (Error!2429) (Case!2429) (If!2429) (Extends!2429) (Abstract!2429) (Class!2429) (Val!2429) (DelimiterValue!4858 (del!2489 List!13574)) (KeywordValue!2435 (value!76269 List!13574)) (CommentValue!4858 (value!76270 List!13574)) (WhitespaceValue!4858 (value!76271 List!13574)) (IndentationValue!2429 (value!76272 List!13574)) (String!16380) (Int32!2429) (Broken!12146 (value!76273 List!13574)) (Boolean!2430) (Unit!19613) (OperatorValue!2432 (op!2489 List!13574)) (IdentifierValue!4858 (value!76274 List!13574)) (IdentifierValue!4859 (value!76275 List!13574)) (WhitespaceValue!4859 (value!76276 List!13574)) (True!4858) (False!4858) (Broken!12147 (value!76277 List!13574)) (Broken!12148 (value!76278 List!13574)) (True!4859) (RightBrace!2429) (RightBracket!2429) (Colon!2429) (Null!2429) (Comma!2429) (LeftBracket!2429) (False!4859) (LeftBrace!2429) (ImaginaryLiteralValue!2429 (text!17449 List!13574)) (StringLiteralValue!7287 (value!76279 List!13574)) (EOFValue!2429 (value!76280 List!13574)) (IdentValue!2429 (value!76281 List!13574)) (DelimiterValue!4859 (value!76282 List!13574)) (DedentValue!2429 (value!76283 List!13574)) (NewLineValue!2429 (value!76284 List!13574)) (IntegerValue!7287 (value!76285 (_ BitVec 32)) (text!17450 List!13574)) (IntegerValue!7288 (value!76286 Int) (text!17451 List!13574)) (Times!2429) (Or!2429) (Equal!2429) (Minus!2429) (Broken!12149 (value!76287 List!13574)) (And!2429) (Div!2429) (LessEqual!2429) (Mod!2429) (Concat!6082) (Not!2429) (Plus!2429) (SpaceValue!2429 (value!76288 List!13574)) (IntegerValue!7289 (value!76289 Int) (text!17452 List!13574)) (StringLiteralValue!7288 (text!17453 List!13574)) (FloatLiteralValue!4859 (text!17454 List!13574)) (BytesLiteralValue!2429 (value!76290 List!13574)) (CommentValue!4859 (value!76291 List!13574)) (StringLiteralValue!7289 (value!76292 List!13574)) (ErrorTokenValue!2429 (msg!2490 List!13574)) )
))
(declare-datatypes ((C!7596 0))(
  ( (C!7597 (val!4358 Int)) )
))
(declare-datatypes ((List!13575 0))(
  ( (Nil!13509) (Cons!13509 (h!18910 C!7596) (t!118912 List!13575)) )
))
(declare-datatypes ((IArray!8901 0))(
  ( (IArray!8902 (innerList!4508 List!13575)) )
))
(declare-datatypes ((Conc!4448 0))(
  ( (Node!4448 (left!11603 Conc!4448) (right!11933 Conc!4448) (csize!9126 Int) (cheight!4659 Int)) (Leaf!6814 (xs!7163 IArray!8901) (csize!9127 Int)) (Empty!4448) )
))
(declare-datatypes ((BalanceConc!8836 0))(
  ( (BalanceConc!8837 (c!217808 Conc!4448)) )
))
(declare-datatypes ((String!16381 0))(
  ( (String!16382 (value!76293 String)) )
))
(declare-datatypes ((Regex!3653 0))(
  ( (ElementMatch!3653 (c!217809 C!7596)) (Concat!6083 (regOne!7818 Regex!3653) (regTwo!7818 Regex!3653)) (EmptyExpr!3653) (Star!3653 (reg!3982 Regex!3653)) (EmptyLang!3653) (Union!3653 (regOne!7819 Regex!3653) (regTwo!7819 Regex!3653)) )
))
(declare-datatypes ((TokenValueInjection!4518 0))(
  ( (TokenValueInjection!4519 (toValue!3570 Int) (toChars!3429 Int)) )
))
(declare-datatypes ((Rule!4478 0))(
  ( (Rule!4479 (regex!2339 Regex!3653) (tag!2601 String!16381) (isSeparator!2339 Bool) (transformation!2339 TokenValueInjection!4518)) )
))
(declare-datatypes ((Token!4340 0))(
  ( (Token!4341 (value!76294 TokenValue!2429) (rule!4084 Rule!4478) (size!10996 Int) (originalCharacters!3201 List!13575)) )
))
(declare-fun t1!34 () Token!4340)

(declare-fun t2!34 () Token!4340)

(assert (=> b!1328785 (= res!598498 (not (= (isSeparator!2339 (rule!4084 t1!34)) (isSeparator!2339 (rule!4084 t2!34)))))))

(declare-fun b!1328786 () Bool)

(declare-fun e!851326 () Bool)

(declare-fun e!851343 () Bool)

(assert (=> b!1328786 (= e!851326 e!851343)))

(declare-fun res!598481 () Bool)

(assert (=> b!1328786 (=> res!598481 e!851343)))

(declare-fun lt!439484 () Bool)

(assert (=> b!1328786 (= res!598481 lt!439484)))

(declare-datatypes ((Unit!19614 0))(
  ( (Unit!19615) )
))
(declare-fun lt!439481 () Unit!19614)

(declare-fun e!851328 () Unit!19614)

(assert (=> b!1328786 (= lt!439481 e!851328)))

(declare-fun c!217806 () Bool)

(assert (=> b!1328786 (= c!217806 lt!439484)))

(declare-fun lt!439497 () C!7596)

(declare-fun contains!2433 (List!13575 C!7596) Bool)

(declare-fun usedCharacters!204 (Regex!3653) List!13575)

(assert (=> b!1328786 (= lt!439484 (not (contains!2433 (usedCharacters!204 (regex!2339 (rule!4084 t1!34))) lt!439497)))))

(declare-fun e!851334 () Bool)

(declare-fun b!1328787 () Bool)

(declare-fun e!851336 () Bool)

(declare-fun tp!384926 () Bool)

(declare-fun inv!21 (TokenValue!2429) Bool)

(assert (=> b!1328787 (= e!851334 (and (inv!21 (value!76294 t1!34)) e!851336 tp!384926))))

(declare-fun e!851345 () Bool)

(assert (=> b!1328788 (= e!851345 (and tp!384915 tp!384916))))

(declare-fun b!1328789 () Bool)

(declare-fun e!851339 () Bool)

(declare-fun e!851350 () Bool)

(declare-fun tp!384922 () Bool)

(declare-fun inv!17856 (String!16381) Bool)

(declare-fun inv!17859 (TokenValueInjection!4518) Bool)

(assert (=> b!1328789 (= e!851350 (and tp!384922 (inv!17856 (tag!2601 (rule!4084 t2!34))) (inv!17859 (transformation!2339 (rule!4084 t2!34))) e!851339))))

(declare-fun b!1328790 () Bool)

(declare-fun res!598506 () Bool)

(declare-fun e!851329 () Bool)

(assert (=> b!1328790 (=> res!598506 e!851329)))

(declare-datatypes ((List!13576 0))(
  ( (Nil!13510) (Cons!13510 (h!18911 Token!4340) (t!118913 List!13576)) )
))
(declare-datatypes ((IArray!8903 0))(
  ( (IArray!8904 (innerList!4509 List!13576)) )
))
(declare-datatypes ((Conc!4449 0))(
  ( (Node!4449 (left!11604 Conc!4449) (right!11934 Conc!4449) (csize!9128 Int) (cheight!4660 Int)) (Leaf!6815 (xs!7164 IArray!8903) (csize!9129 Int)) (Empty!4449) )
))
(declare-datatypes ((BalanceConc!8838 0))(
  ( (BalanceConc!8839 (c!217810 Conc!4449)) )
))
(declare-datatypes ((tuple2!13154 0))(
  ( (tuple2!13155 (_1!7463 BalanceConc!8838) (_2!7463 BalanceConc!8836)) )
))
(declare-fun lt!439489 () tuple2!13154)

(declare-fun isEmpty!8044 (BalanceConc!8836) Bool)

(assert (=> b!1328790 (= res!598506 (not (isEmpty!8044 (_2!7463 lt!439489))))))

(declare-fun e!851335 () Bool)

(declare-fun e!851348 () Bool)

(assert (=> b!1328791 (= e!851335 e!851348)))

(declare-fun res!598486 () Bool)

(assert (=> b!1328791 (=> res!598486 e!851348)))

(declare-fun lambda!55148 () Int)

(declare-fun lambda!55149 () Int)

(declare-datatypes ((List!13577 0))(
  ( (Nil!13511) (Cons!13511 (h!18912 Rule!4478) (t!118914 List!13577)) )
))
(declare-fun rules!2550 () List!13577)

(declare-datatypes ((List!13578 0))(
  ( (Nil!13512) (Cons!13512 (h!18913 Regex!3653) (t!118915 List!13578)) )
))
(declare-fun exists!380 (List!13578 Int) Bool)

(declare-fun map!2975 (List!13577 Int) List!13578)

(assert (=> b!1328791 (= res!598486 (not (exists!380 (map!2975 rules!2550 lambda!55148) lambda!55149)))))

(declare-fun lt!439501 () List!13578)

(assert (=> b!1328791 (exists!380 lt!439501 lambda!55149)))

(declare-fun lt!439472 () Regex!3653)

(declare-fun lt!439498 () Unit!19614)

(declare-fun lt!439479 () List!13575)

(declare-fun matchRGenUnionSpec!90 (Regex!3653 List!13578 List!13575) Unit!19614)

(assert (=> b!1328791 (= lt!439498 (matchRGenUnionSpec!90 lt!439472 lt!439501 lt!439479))))

(assert (=> b!1328791 (= lt!439501 (map!2975 rules!2550 lambda!55148))))

(declare-fun b!1328792 () Bool)

(declare-fun res!598503 () Bool)

(assert (=> b!1328792 (=> res!598503 e!851335)))

(declare-fun matchR!1655 (Regex!3653 List!13575) Bool)

(assert (=> b!1328792 (= res!598503 (not (matchR!1655 lt!439472 lt!439479)))))

(declare-fun b!1328793 () Bool)

(declare-fun res!598485 () Bool)

(assert (=> b!1328793 (=> (not res!598485) (not e!851352))))

(declare-datatypes ((LexerInterface!2034 0))(
  ( (LexerInterfaceExt!2031 (__x!8688 Int)) (Lexer!2032) )
))
(declare-fun thiss!19762 () LexerInterface!2034)

(declare-fun rulesProduceIndividualToken!1003 (LexerInterface!2034 List!13577 Token!4340) Bool)

(assert (=> b!1328793 (= res!598485 (rulesProduceIndividualToken!1003 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1328794 () Bool)

(declare-fun e!851338 () Bool)

(assert (=> b!1328794 (= e!851329 e!851338)))

(declare-fun res!598509 () Bool)

(assert (=> b!1328794 (=> res!598509 e!851338)))

(declare-fun lt!439482 () tuple2!13154)

(declare-fun lt!439491 () List!13576)

(declare-fun list!5118 (BalanceConc!8838) List!13576)

(assert (=> b!1328794 (= res!598509 (not (= (list!5118 (_1!7463 lt!439482)) lt!439491)))))

(assert (=> b!1328794 (= lt!439491 (Cons!13510 t2!34 Nil!13510))))

(declare-fun lt!439499 () BalanceConc!8836)

(declare-fun lex!869 (LexerInterface!2034 List!13577 BalanceConc!8836) tuple2!13154)

(assert (=> b!1328794 (= lt!439482 (lex!869 thiss!19762 rules!2550 lt!439499))))

(declare-fun print!808 (LexerInterface!2034 BalanceConc!8838) BalanceConc!8836)

(declare-fun singletonSeq!932 (Token!4340) BalanceConc!8838)

(assert (=> b!1328794 (= lt!439499 (print!808 thiss!19762 (singletonSeq!932 t2!34)))))

(declare-fun e!851323 () Bool)

(declare-fun tp!384923 () Bool)

(declare-fun b!1328795 () Bool)

(assert (=> b!1328795 (= e!851336 (and tp!384923 (inv!17856 (tag!2601 (rule!4084 t1!34))) (inv!17859 (transformation!2339 (rule!4084 t1!34))) e!851323))))

(declare-fun b!1328796 () Bool)

(declare-fun e!851344 () Bool)

(assert (=> b!1328796 (= e!851343 e!851344)))

(declare-fun res!598499 () Bool)

(assert (=> b!1328796 (=> res!598499 e!851344)))

(declare-fun lt!439495 () Bool)

(assert (=> b!1328796 (= res!598499 lt!439495)))

(declare-fun lt!439492 () Unit!19614)

(declare-fun e!851331 () Unit!19614)

(assert (=> b!1328796 (= lt!439492 e!851331)))

(declare-fun c!217807 () Bool)

(assert (=> b!1328796 (= c!217807 lt!439495)))

(declare-fun lt!439478 () C!7596)

(assert (=> b!1328796 (= lt!439495 (not (contains!2433 (usedCharacters!204 (regex!2339 (rule!4084 t2!34))) lt!439478)))))

(declare-fun b!1328797 () Bool)

(declare-fun Unit!19616 () Unit!19614)

(assert (=> b!1328797 (= e!851331 Unit!19616)))

(declare-fun b!1328798 () Bool)

(declare-fun e!851330 () Bool)

(declare-fun e!851351 () Bool)

(declare-fun tp!384920 () Bool)

(assert (=> b!1328798 (= e!851330 (and e!851351 tp!384920))))

(declare-fun res!598482 () Bool)

(assert (=> start!118106 (=> (not res!598482) (not e!851352))))

(get-info :version)

(assert (=> start!118106 (= res!598482 ((_ is Lexer!2032) thiss!19762))))

(assert (=> start!118106 e!851352))

(assert (=> start!118106 true))

(assert (=> start!118106 e!851330))

(declare-fun inv!17860 (Token!4340) Bool)

(assert (=> start!118106 (and (inv!17860 t1!34) e!851334)))

(declare-fun e!851341 () Bool)

(assert (=> start!118106 (and (inv!17860 t2!34) e!851341)))

(declare-fun e!851322 () Bool)

(assert (=> b!1328799 (= e!851322 e!851326)))

(declare-fun res!598493 () Bool)

(assert (=> b!1328799 (=> res!598493 e!851326)))

(declare-fun lt!439494 () List!13575)

(assert (=> b!1328799 (= res!598493 (not (matchR!1655 (regex!2339 (rule!4084 t1!34)) lt!439494)))))

(declare-fun lt!439473 () Unit!19614)

(declare-fun forallContained!590 (List!13577 Int Rule!4478) Unit!19614)

(assert (=> b!1328799 (= lt!439473 (forallContained!590 rules!2550 lambda!55151 (rule!4084 t2!34)))))

(declare-fun lt!439480 () Unit!19614)

(assert (=> b!1328799 (= lt!439480 (forallContained!590 rules!2550 lambda!55151 (rule!4084 t1!34)))))

(declare-fun lt!439486 () Unit!19614)

(declare-fun lt!439475 () Rule!4478)

(assert (=> b!1328799 (= lt!439486 (forallContained!590 rules!2550 lambda!55151 lt!439475))))

(assert (=> b!1328800 (= e!851323 (and tp!384925 tp!384921))))

(declare-fun b!1328801 () Bool)

(assert (=> b!1328801 (= e!851338 e!851322)))

(declare-fun res!598477 () Bool)

(assert (=> b!1328801 (=> res!598477 e!851322)))

(declare-fun lt!439500 () List!13575)

(declare-datatypes ((tuple2!13156 0))(
  ( (tuple2!13157 (_1!7464 Token!4340) (_2!7464 List!13575)) )
))
(declare-datatypes ((Option!2610 0))(
  ( (None!2609) (Some!2609 (v!21222 tuple2!13156)) )
))
(declare-fun maxPrefix!1044 (LexerInterface!2034 List!13577 List!13575) Option!2610)

(assert (=> b!1328801 (= res!598477 (not (= (maxPrefix!1044 thiss!19762 rules!2550 lt!439500) (Some!2609 (tuple2!13157 t2!34 Nil!13509)))))))

(declare-fun lt!439496 () BalanceConc!8836)

(declare-fun list!5119 (BalanceConc!8836) List!13575)

(assert (=> b!1328801 (= lt!439500 (list!5119 lt!439496))))

(declare-fun b!1328802 () Bool)

(declare-fun e!851346 () Bool)

(assert (=> b!1328802 (= e!851352 e!851346)))

(declare-fun res!598507 () Bool)

(assert (=> b!1328802 (=> (not res!598507) (not e!851346))))

(declare-fun size!10997 (BalanceConc!8836) Int)

(assert (=> b!1328802 (= res!598507 (> (size!10997 lt!439496) 0))))

(declare-fun charsOf!1311 (Token!4340) BalanceConc!8836)

(assert (=> b!1328802 (= lt!439496 (charsOf!1311 t2!34))))

(declare-fun b!1328803 () Bool)

(declare-fun res!598504 () Bool)

(assert (=> b!1328803 (=> res!598504 e!851335)))

(assert (=> b!1328803 (= res!598504 (not (contains!2433 lt!439479 lt!439478)))))

(declare-fun b!1328804 () Bool)

(declare-fun e!851332 () Bool)

(assert (=> b!1328804 (= e!851332 e!851329)))

(declare-fun res!598484 () Bool)

(assert (=> b!1328804 (=> res!598484 e!851329)))

(declare-fun lt!439474 () List!13576)

(assert (=> b!1328804 (= res!598484 (not (= (list!5118 (_1!7463 lt!439489)) lt!439474)))))

(assert (=> b!1328804 (= lt!439474 (Cons!13510 t1!34 Nil!13510))))

(declare-fun lt!439485 () BalanceConc!8836)

(assert (=> b!1328804 (= lt!439489 (lex!869 thiss!19762 rules!2550 lt!439485))))

(assert (=> b!1328804 (= lt!439485 (print!808 thiss!19762 (singletonSeq!932 t1!34)))))

(declare-fun getWitness!272 (List!13577 Int) Rule!4478)

(assert (=> b!1328804 (= lt!439475 (getWitness!272 rules!2550 lambda!55150))))

(declare-fun b!1328805 () Bool)

(declare-fun res!598483 () Bool)

(assert (=> b!1328805 (=> (not res!598483) (not e!851346))))

(declare-fun separableTokensPredicate!317 (LexerInterface!2034 Token!4340 Token!4340 List!13577) Bool)

(assert (=> b!1328805 (= res!598483 (not (separableTokensPredicate!317 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1328806 () Bool)

(declare-fun e!851342 () Bool)

(assert (=> b!1328806 (= e!851342 e!851335)))

(declare-fun res!598495 () Bool)

(assert (=> b!1328806 (=> res!598495 e!851335)))

(declare-fun lt!439502 () List!13575)

(assert (=> b!1328806 (= res!598495 (not (contains!2433 lt!439502 lt!439497)))))

(declare-fun lt!439488 () BalanceConc!8836)

(declare-fun apply!3125 (BalanceConc!8836 Int) C!7596)

(assert (=> b!1328806 (= lt!439497 (apply!3125 lt!439488 0))))

(declare-fun e!851337 () Bool)

(assert (=> b!1328807 (= e!851337 e!851332)))

(declare-fun res!598497 () Bool)

(assert (=> b!1328807 (=> res!598497 e!851332)))

(declare-fun exists!381 (List!13577 Int) Bool)

(assert (=> b!1328807 (= res!598497 (not (exists!381 rules!2550 lambda!55150)))))

(assert (=> b!1328807 (exists!381 rules!2550 lambda!55150)))

(declare-fun lt!439490 () Regex!3653)

(declare-fun lt!439493 () Unit!19614)

(declare-fun lemmaMapContains!82 (List!13577 Int Regex!3653) Unit!19614)

(assert (=> b!1328807 (= lt!439493 (lemmaMapContains!82 rules!2550 lambda!55148 lt!439490))))

(declare-fun b!1328808 () Bool)

(declare-fun Unit!19617 () Unit!19614)

(assert (=> b!1328808 (= e!851328 Unit!19617)))

(declare-fun lt!439477 () Unit!19614)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!150 (Regex!3653 List!13575 C!7596) Unit!19614)

(declare-fun head!2334 (List!13575) C!7596)

(assert (=> b!1328808 (= lt!439477 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!150 (regex!2339 (rule!4084 t1!34)) lt!439494 (head!2334 lt!439494)))))

(assert (=> b!1328808 false))

(declare-fun b!1328809 () Bool)

(declare-fun res!598496 () Bool)

(assert (=> b!1328809 (=> res!598496 e!851322)))

(declare-fun contains!2434 (List!13577 Rule!4478) Bool)

(assert (=> b!1328809 (= res!598496 (not (contains!2434 rules!2550 (rule!4084 t2!34))))))

(declare-fun b!1328810 () Bool)

(assert (=> b!1328810 (= e!851348 e!851337)))

(declare-fun res!598492 () Bool)

(assert (=> b!1328810 (=> res!598492 e!851337)))

(declare-fun contains!2435 (List!13578 Regex!3653) Bool)

(assert (=> b!1328810 (= res!598492 (not (contains!2435 (map!2975 rules!2550 lambda!55148) lt!439490)))))

(declare-fun getWitness!273 (List!13578 Int) Regex!3653)

(assert (=> b!1328810 (= lt!439490 (getWitness!273 (map!2975 rules!2550 lambda!55148) lambda!55149))))

(declare-fun b!1328811 () Bool)

(declare-fun res!598508 () Bool)

(assert (=> b!1328811 (=> (not res!598508) (not e!851352))))

(declare-fun isEmpty!8045 (List!13577) Bool)

(assert (=> b!1328811 (= res!598508 (not (isEmpty!8045 rules!2550)))))

(declare-fun b!1328812 () Bool)

(declare-fun tp!384919 () Bool)

(assert (=> b!1328812 (= e!851341 (and (inv!21 (value!76294 t2!34)) e!851350 tp!384919))))

(declare-fun b!1328813 () Bool)

(declare-fun res!598475 () Bool)

(assert (=> b!1328813 (=> res!598475 e!851335)))

(assert (=> b!1328813 (= res!598475 (not (contains!2433 lt!439479 lt!439497)))))

(declare-fun b!1328814 () Bool)

(declare-fun res!598491 () Bool)

(assert (=> b!1328814 (=> res!598491 e!851329)))

(declare-datatypes ((tuple2!13158 0))(
  ( (tuple2!13159 (_1!7465 List!13576) (_2!7465 List!13575)) )
))
(declare-fun lexList!572 (LexerInterface!2034 List!13577 List!13575) tuple2!13158)

(assert (=> b!1328814 (= res!598491 (not (= (lexList!572 thiss!19762 rules!2550 (list!5119 lt!439485)) (tuple2!13159 lt!439474 Nil!13509))))))

(declare-fun e!851347 () Bool)

(declare-fun e!851321 () Bool)

(assert (=> b!1328815 (= e!851347 (not e!851321))))

(declare-fun res!598501 () Bool)

(assert (=> b!1328815 (=> res!598501 e!851321)))

(declare-fun lambda!55147 () Int)

(declare-fun Exists!811 (Int) Bool)

(assert (=> b!1328815 (= res!598501 (not (Exists!811 lambda!55147)))))

(assert (=> b!1328815 (Exists!811 lambda!55147)))

(declare-fun lt!439487 () Unit!19614)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!129 (Regex!3653 List!13575) Unit!19614)

(assert (=> b!1328815 (= lt!439487 (lemmaPrefixMatchThenExistsStringThatMatches!129 lt!439472 lt!439502))))

(declare-fun b!1328816 () Bool)

(declare-fun res!598479 () Bool)

(assert (=> b!1328816 (=> res!598479 e!851338)))

(assert (=> b!1328816 (= res!598479 (not (= (lexList!572 thiss!19762 rules!2550 (list!5119 lt!439499)) (tuple2!13159 lt!439491 Nil!13509))))))

(declare-fun b!1328817 () Bool)

(declare-fun e!851349 () Bool)

(assert (=> b!1328817 (= e!851344 e!851349)))

(declare-fun res!598502 () Bool)

(assert (=> b!1328817 (=> res!598502 e!851349)))

(assert (=> b!1328817 (= res!598502 (or (not (isSeparator!2339 lt!439475)) (isSeparator!2339 (rule!4084 t1!34))))))

(assert (=> b!1328817 (= (regex!2339 lt!439475) lt!439490)))

(assert (=> b!1328818 (= e!851339 (and tp!384918 tp!384917))))

(declare-fun b!1328819 () Bool)

(declare-fun Unit!19618 () Unit!19614)

(assert (=> b!1328819 (= e!851328 Unit!19618)))

(declare-fun b!1328820 () Bool)

(declare-fun res!598488 () Bool)

(assert (=> b!1328820 (=> res!598488 e!851335)))

(assert (=> b!1328820 (= res!598488 (not (contains!2433 lt!439502 lt!439478)))))

(declare-fun b!1328821 () Bool)

(assert (=> b!1328821 (= e!851346 e!851347)))

(declare-fun res!598494 () Bool)

(assert (=> b!1328821 (=> (not res!598494) (not e!851347))))

(declare-fun prefixMatch!166 (Regex!3653 List!13575) Bool)

(assert (=> b!1328821 (= res!598494 (prefixMatch!166 lt!439472 lt!439502))))

(declare-fun rulesRegex!224 (LexerInterface!2034 List!13577) Regex!3653)

(assert (=> b!1328821 (= lt!439472 (rulesRegex!224 thiss!19762 rules!2550))))

(declare-fun ++!3450 (List!13575 List!13575) List!13575)

(assert (=> b!1328821 (= lt!439502 (++!3450 lt!439494 (Cons!13509 lt!439478 Nil!13509)))))

(assert (=> b!1328821 (= lt!439478 (apply!3125 lt!439496 0))))

(assert (=> b!1328821 (= lt!439494 (list!5119 lt!439488))))

(assert (=> b!1328821 (= lt!439488 (charsOf!1311 t1!34))))

(declare-fun b!1328822 () Bool)

(declare-fun res!598478 () Bool)

(assert (=> b!1328822 (=> res!598478 e!851329)))

(assert (=> b!1328822 (= res!598478 (not (contains!2434 rules!2550 (rule!4084 t1!34))))))

(declare-fun b!1328823 () Bool)

(assert (=> b!1328823 (= e!851321 e!851342)))

(declare-fun res!598476 () Bool)

(assert (=> b!1328823 (=> res!598476 e!851342)))

(declare-fun getSuffix!509 (List!13575 List!13575) List!13575)

(assert (=> b!1328823 (= res!598476 (not (= lt!439479 (++!3450 lt!439502 (getSuffix!509 lt!439479 lt!439502)))))))

(declare-fun pickWitness!116 (Int) List!13575)

(assert (=> b!1328823 (= lt!439479 (pickWitness!116 lambda!55147))))

(declare-fun b!1328824 () Bool)

(declare-fun res!598490 () Bool)

(assert (=> b!1328824 (=> res!598490 e!851326)))

(assert (=> b!1328824 (= res!598490 (not (matchR!1655 (regex!2339 (rule!4084 t2!34)) lt!439500)))))

(declare-fun b!1328825 () Bool)

(declare-fun res!598487 () Bool)

(assert (=> b!1328825 (=> (not res!598487) (not e!851352))))

(declare-fun rulesInvariant!1904 (LexerInterface!2034 List!13577) Bool)

(assert (=> b!1328825 (= res!598487 (rulesInvariant!1904 thiss!19762 rules!2550))))

(declare-fun b!1328826 () Bool)

(declare-fun tp!384924 () Bool)

(assert (=> b!1328826 (= e!851351 (and tp!384924 (inv!17856 (tag!2601 (h!18912 rules!2550))) (inv!17859 (transformation!2339 (h!18912 rules!2550))) e!851345))))

(declare-fun b!1328827 () Bool)

(declare-fun res!598480 () Bool)

(assert (=> b!1328827 (=> res!598480 e!851338)))

(assert (=> b!1328827 (= res!598480 (not (isEmpty!8044 (_2!7463 lt!439482))))))

(declare-fun b!1328828 () Bool)

(declare-fun res!598505 () Bool)

(assert (=> b!1328828 (=> res!598505 e!851322)))

(assert (=> b!1328828 (= res!598505 (not (contains!2434 rules!2550 lt!439475)))))

(declare-fun b!1328829 () Bool)

(declare-fun res!598489 () Bool)

(assert (=> b!1328829 (=> (not res!598489) (not e!851352))))

(assert (=> b!1328829 (= res!598489 (rulesProduceIndividualToken!1003 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1328830 () Bool)

(assert (=> b!1328830 (= e!851349 (< 0 (size!10997 lt!439488)))))

(assert (=> b!1328830 (not (contains!2433 (usedCharacters!204 (regex!2339 lt!439475)) lt!439497))))

(declare-fun lt!439483 () Unit!19614)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!114 (LexerInterface!2034 List!13577 List!13577 Rule!4478 Rule!4478 C!7596) Unit!19614)

(assert (=> b!1328830 (= lt!439483 (lemmaSepRuleNotContainsCharContainedInANonSepRule!114 thiss!19762 rules!2550 rules!2550 (rule!4084 t1!34) lt!439475 lt!439497))))

(declare-fun b!1328831 () Bool)

(declare-fun Unit!19619 () Unit!19614)

(assert (=> b!1328831 (= e!851331 Unit!19619)))

(declare-fun lt!439476 () Unit!19614)

(assert (=> b!1328831 (= lt!439476 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!150 (regex!2339 (rule!4084 t2!34)) lt!439500 (head!2334 lt!439500)))))

(assert (=> b!1328831 false))

(declare-fun b!1328832 () Bool)

(declare-fun res!598510 () Bool)

(assert (=> b!1328832 (=> (not res!598510) (not e!851346))))

(declare-fun sepAndNonSepRulesDisjointChars!712 (List!13577 List!13577) Bool)

(assert (=> b!1328832 (= res!598510 (sepAndNonSepRulesDisjointChars!712 rules!2550 rules!2550))))

(declare-fun b!1328833 () Bool)

(declare-fun res!598500 () Bool)

(assert (=> b!1328833 (=> res!598500 e!851329)))

(assert (=> b!1328833 (= res!598500 (not (= (maxPrefix!1044 thiss!19762 rules!2550 lt!439494) (Some!2609 (tuple2!13157 t1!34 Nil!13509)))))))

(assert (= (and start!118106 res!598482) b!1328811))

(assert (= (and b!1328811 res!598508) b!1328825))

(assert (= (and b!1328825 res!598487) b!1328829))

(assert (= (and b!1328829 res!598489) b!1328793))

(assert (= (and b!1328793 res!598485) b!1328785))

(assert (= (and b!1328785 res!598498) b!1328802))

(assert (= (and b!1328802 res!598507) b!1328832))

(assert (= (and b!1328832 res!598510) b!1328805))

(assert (= (and b!1328805 res!598483) b!1328821))

(assert (= (and b!1328821 res!598494) b!1328815))

(assert (= (and b!1328815 (not res!598501)) b!1328823))

(assert (= (and b!1328823 (not res!598476)) b!1328806))

(assert (= (and b!1328806 (not res!598495)) b!1328813))

(assert (= (and b!1328813 (not res!598475)) b!1328820))

(assert (= (and b!1328820 (not res!598488)) b!1328803))

(assert (= (and b!1328803 (not res!598504)) b!1328792))

(assert (= (and b!1328792 (not res!598503)) b!1328791))

(assert (= (and b!1328791 (not res!598486)) b!1328810))

(assert (= (and b!1328810 (not res!598492)) b!1328807))

(assert (= (and b!1328807 (not res!598497)) b!1328804))

(assert (= (and b!1328804 (not res!598484)) b!1328790))

(assert (= (and b!1328790 (not res!598506)) b!1328814))

(assert (= (and b!1328814 (not res!598491)) b!1328833))

(assert (= (and b!1328833 (not res!598500)) b!1328822))

(assert (= (and b!1328822 (not res!598478)) b!1328794))

(assert (= (and b!1328794 (not res!598509)) b!1328827))

(assert (= (and b!1328827 (not res!598480)) b!1328816))

(assert (= (and b!1328816 (not res!598479)) b!1328801))

(assert (= (and b!1328801 (not res!598477)) b!1328809))

(assert (= (and b!1328809 (not res!598496)) b!1328828))

(assert (= (and b!1328828 (not res!598505)) b!1328799))

(assert (= (and b!1328799 (not res!598493)) b!1328824))

(assert (= (and b!1328824 (not res!598490)) b!1328786))

(assert (= (and b!1328786 c!217806) b!1328808))

(assert (= (and b!1328786 (not c!217806)) b!1328819))

(assert (= (and b!1328786 (not res!598481)) b!1328796))

(assert (= (and b!1328796 c!217807) b!1328831))

(assert (= (and b!1328796 (not c!217807)) b!1328797))

(assert (= (and b!1328796 (not res!598499)) b!1328817))

(assert (= (and b!1328817 (not res!598502)) b!1328830))

(assert (= b!1328826 b!1328788))

(assert (= b!1328798 b!1328826))

(assert (= (and start!118106 ((_ is Cons!13511) rules!2550)) b!1328798))

(assert (= b!1328795 b!1328800))

(assert (= b!1328787 b!1328795))

(assert (= start!118106 b!1328787))

(assert (= b!1328789 b!1328818))

(assert (= b!1328812 b!1328789))

(assert (= start!118106 b!1328812))

(declare-fun m!1485513 () Bool)

(assert (=> b!1328796 m!1485513))

(assert (=> b!1328796 m!1485513))

(declare-fun m!1485515 () Bool)

(assert (=> b!1328796 m!1485515))

(declare-fun m!1485517 () Bool)

(assert (=> b!1328823 m!1485517))

(assert (=> b!1328823 m!1485517))

(declare-fun m!1485519 () Bool)

(assert (=> b!1328823 m!1485519))

(declare-fun m!1485521 () Bool)

(assert (=> b!1328823 m!1485521))

(declare-fun m!1485523 () Bool)

(assert (=> b!1328805 m!1485523))

(declare-fun m!1485525 () Bool)

(assert (=> b!1328831 m!1485525))

(assert (=> b!1328831 m!1485525))

(declare-fun m!1485527 () Bool)

(assert (=> b!1328831 m!1485527))

(declare-fun m!1485529 () Bool)

(assert (=> b!1328802 m!1485529))

(declare-fun m!1485531 () Bool)

(assert (=> b!1328802 m!1485531))

(declare-fun m!1485533 () Bool)

(assert (=> b!1328822 m!1485533))

(declare-fun m!1485535 () Bool)

(assert (=> b!1328810 m!1485535))

(assert (=> b!1328810 m!1485535))

(declare-fun m!1485537 () Bool)

(assert (=> b!1328810 m!1485537))

(assert (=> b!1328810 m!1485535))

(assert (=> b!1328810 m!1485535))

(declare-fun m!1485539 () Bool)

(assert (=> b!1328810 m!1485539))

(declare-fun m!1485541 () Bool)

(assert (=> b!1328825 m!1485541))

(declare-fun m!1485543 () Bool)

(assert (=> b!1328828 m!1485543))

(declare-fun m!1485545 () Bool)

(assert (=> b!1328816 m!1485545))

(assert (=> b!1328816 m!1485545))

(declare-fun m!1485547 () Bool)

(assert (=> b!1328816 m!1485547))

(declare-fun m!1485549 () Bool)

(assert (=> b!1328789 m!1485549))

(declare-fun m!1485551 () Bool)

(assert (=> b!1328789 m!1485551))

(declare-fun m!1485553 () Bool)

(assert (=> b!1328812 m!1485553))

(declare-fun m!1485555 () Bool)

(assert (=> b!1328809 m!1485555))

(declare-fun m!1485557 () Bool)

(assert (=> b!1328804 m!1485557))

(declare-fun m!1485559 () Bool)

(assert (=> b!1328804 m!1485559))

(declare-fun m!1485561 () Bool)

(assert (=> b!1328804 m!1485561))

(assert (=> b!1328804 m!1485557))

(declare-fun m!1485563 () Bool)

(assert (=> b!1328804 m!1485563))

(declare-fun m!1485565 () Bool)

(assert (=> b!1328804 m!1485565))

(declare-fun m!1485567 () Bool)

(assert (=> b!1328821 m!1485567))

(declare-fun m!1485569 () Bool)

(assert (=> b!1328821 m!1485569))

(declare-fun m!1485571 () Bool)

(assert (=> b!1328821 m!1485571))

(declare-fun m!1485573 () Bool)

(assert (=> b!1328821 m!1485573))

(declare-fun m!1485575 () Bool)

(assert (=> b!1328821 m!1485575))

(declare-fun m!1485577 () Bool)

(assert (=> b!1328821 m!1485577))

(declare-fun m!1485579 () Bool)

(assert (=> b!1328814 m!1485579))

(assert (=> b!1328814 m!1485579))

(declare-fun m!1485581 () Bool)

(assert (=> b!1328814 m!1485581))

(declare-fun m!1485583 () Bool)

(assert (=> b!1328815 m!1485583))

(assert (=> b!1328815 m!1485583))

(declare-fun m!1485585 () Bool)

(assert (=> b!1328815 m!1485585))

(declare-fun m!1485587 () Bool)

(assert (=> b!1328799 m!1485587))

(declare-fun m!1485589 () Bool)

(assert (=> b!1328799 m!1485589))

(declare-fun m!1485591 () Bool)

(assert (=> b!1328799 m!1485591))

(declare-fun m!1485593 () Bool)

(assert (=> b!1328799 m!1485593))

(declare-fun m!1485595 () Bool)

(assert (=> b!1328808 m!1485595))

(assert (=> b!1328808 m!1485595))

(declare-fun m!1485597 () Bool)

(assert (=> b!1328808 m!1485597))

(declare-fun m!1485599 () Bool)

(assert (=> b!1328793 m!1485599))

(declare-fun m!1485601 () Bool)

(assert (=> b!1328794 m!1485601))

(declare-fun m!1485603 () Bool)

(assert (=> b!1328794 m!1485603))

(declare-fun m!1485605 () Bool)

(assert (=> b!1328794 m!1485605))

(assert (=> b!1328794 m!1485605))

(declare-fun m!1485607 () Bool)

(assert (=> b!1328794 m!1485607))

(declare-fun m!1485609 () Bool)

(assert (=> b!1328826 m!1485609))

(declare-fun m!1485611 () Bool)

(assert (=> b!1328826 m!1485611))

(declare-fun m!1485613 () Bool)

(assert (=> b!1328820 m!1485613))

(declare-fun m!1485615 () Bool)

(assert (=> b!1328786 m!1485615))

(assert (=> b!1328786 m!1485615))

(declare-fun m!1485617 () Bool)

(assert (=> b!1328786 m!1485617))

(declare-fun m!1485619 () Bool)

(assert (=> b!1328792 m!1485619))

(declare-fun m!1485621 () Bool)

(assert (=> b!1328801 m!1485621))

(declare-fun m!1485623 () Bool)

(assert (=> b!1328801 m!1485623))

(declare-fun m!1485625 () Bool)

(assert (=> b!1328832 m!1485625))

(declare-fun m!1485627 () Bool)

(assert (=> b!1328824 m!1485627))

(declare-fun m!1485629 () Bool)

(assert (=> b!1328803 m!1485629))

(declare-fun m!1485631 () Bool)

(assert (=> b!1328806 m!1485631))

(declare-fun m!1485633 () Bool)

(assert (=> b!1328806 m!1485633))

(declare-fun m!1485635 () Bool)

(assert (=> b!1328807 m!1485635))

(assert (=> b!1328807 m!1485635))

(declare-fun m!1485637 () Bool)

(assert (=> b!1328807 m!1485637))

(declare-fun m!1485639 () Bool)

(assert (=> b!1328827 m!1485639))

(declare-fun m!1485641 () Bool)

(assert (=> b!1328813 m!1485641))

(declare-fun m!1485643 () Bool)

(assert (=> b!1328795 m!1485643))

(declare-fun m!1485645 () Bool)

(assert (=> b!1328795 m!1485645))

(declare-fun m!1485647 () Bool)

(assert (=> b!1328790 m!1485647))

(declare-fun m!1485649 () Bool)

(assert (=> b!1328787 m!1485649))

(declare-fun m!1485651 () Bool)

(assert (=> b!1328811 m!1485651))

(declare-fun m!1485653 () Bool)

(assert (=> b!1328830 m!1485653))

(declare-fun m!1485655 () Bool)

(assert (=> b!1328830 m!1485655))

(assert (=> b!1328830 m!1485655))

(declare-fun m!1485657 () Bool)

(assert (=> b!1328830 m!1485657))

(declare-fun m!1485659 () Bool)

(assert (=> b!1328830 m!1485659))

(declare-fun m!1485661 () Bool)

(assert (=> b!1328829 m!1485661))

(declare-fun m!1485663 () Bool)

(assert (=> b!1328833 m!1485663))

(declare-fun m!1485665 () Bool)

(assert (=> start!118106 m!1485665))

(declare-fun m!1485667 () Bool)

(assert (=> start!118106 m!1485667))

(assert (=> b!1328791 m!1485535))

(declare-fun m!1485669 () Bool)

(assert (=> b!1328791 m!1485669))

(declare-fun m!1485671 () Bool)

(assert (=> b!1328791 m!1485671))

(assert (=> b!1328791 m!1485535))

(assert (=> b!1328791 m!1485535))

(declare-fun m!1485673 () Bool)

(assert (=> b!1328791 m!1485673))

(check-sat (not b!1328801) (not b!1328821) (not b!1328822) (not b!1328832) b_and!88769 (not b!1328787) (not b!1328825) (not b_next!32855) (not b!1328792) (not b!1328806) (not b!1328830) b_and!88771 b_and!88773 (not b!1328804) (not b!1328803) (not b!1328789) (not b_next!32851) b_and!88775 (not b!1328791) b_and!88767 (not b!1328802) (not b!1328824) (not b_next!32853) (not b!1328829) (not b!1328831) (not start!118106) (not b_next!32857) (not b!1328805) (not b!1328833) (not b!1328794) (not b!1328813) (not b!1328799) (not b_next!32861) (not b!1328809) (not b!1328816) (not b!1328814) (not b!1328795) (not b!1328811) (not b_next!32859) (not b!1328798) (not b!1328812) (not b!1328828) (not b!1328808) (not b!1328815) (not b!1328810) (not b!1328790) (not b!1328826) (not b!1328796) b_and!88777 (not b!1328823) (not b!1328820) (not b!1328827) (not b!1328807) (not b!1328786) (not b!1328793))
(check-sat (not b_next!32855) b_and!88767 (not b_next!32853) (not b_next!32857) (not b_next!32861) b_and!88769 (not b_next!32859) b_and!88777 b_and!88771 b_and!88773 (not b_next!32851) b_and!88775)
(get-model)

(declare-fun d!374690 () Bool)

(assert (=> d!374690 (not (matchR!1655 (regex!2339 (rule!4084 t2!34)) lt!439500))))

(declare-fun lt!439505 () Unit!19614)

(declare-fun choose!8139 (Regex!3653 List!13575 C!7596) Unit!19614)

(assert (=> d!374690 (= lt!439505 (choose!8139 (regex!2339 (rule!4084 t2!34)) lt!439500 (head!2334 lt!439500)))))

(declare-fun validRegex!1568 (Regex!3653) Bool)

(assert (=> d!374690 (validRegex!1568 (regex!2339 (rule!4084 t2!34)))))

(assert (=> d!374690 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!150 (regex!2339 (rule!4084 t2!34)) lt!439500 (head!2334 lt!439500)) lt!439505)))

(declare-fun bs!331505 () Bool)

(assert (= bs!331505 d!374690))

(assert (=> bs!331505 m!1485627))

(assert (=> bs!331505 m!1485525))

(declare-fun m!1485675 () Bool)

(assert (=> bs!331505 m!1485675))

(declare-fun m!1485677 () Bool)

(assert (=> bs!331505 m!1485677))

(assert (=> b!1328831 d!374690))

(declare-fun d!374692 () Bool)

(assert (=> d!374692 (= (head!2334 lt!439500) (h!18910 lt!439500))))

(assert (=> b!1328831 d!374692))

(declare-fun d!374694 () Bool)

(declare-fun lt!439508 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1914 (List!13578) (InoxSet Regex!3653))

(assert (=> d!374694 (= lt!439508 (select (content!1914 (map!2975 rules!2550 lambda!55148)) lt!439490))))

(declare-fun e!851357 () Bool)

(assert (=> d!374694 (= lt!439508 e!851357)))

(declare-fun res!598521 () Bool)

(assert (=> d!374694 (=> (not res!598521) (not e!851357))))

(assert (=> d!374694 (= res!598521 ((_ is Cons!13512) (map!2975 rules!2550 lambda!55148)))))

(assert (=> d!374694 (= (contains!2435 (map!2975 rules!2550 lambda!55148) lt!439490) lt!439508)))

(declare-fun b!1328848 () Bool)

(declare-fun e!851358 () Bool)

(assert (=> b!1328848 (= e!851357 e!851358)))

(declare-fun res!598522 () Bool)

(assert (=> b!1328848 (=> res!598522 e!851358)))

(assert (=> b!1328848 (= res!598522 (= (h!18913 (map!2975 rules!2550 lambda!55148)) lt!439490))))

(declare-fun b!1328849 () Bool)

(assert (=> b!1328849 (= e!851358 (contains!2435 (t!118915 (map!2975 rules!2550 lambda!55148)) lt!439490))))

(assert (= (and d!374694 res!598521) b!1328848))

(assert (= (and b!1328848 (not res!598522)) b!1328849))

(assert (=> d!374694 m!1485535))

(declare-fun m!1485679 () Bool)

(assert (=> d!374694 m!1485679))

(declare-fun m!1485681 () Bool)

(assert (=> d!374694 m!1485681))

(declare-fun m!1485683 () Bool)

(assert (=> b!1328849 m!1485683))

(assert (=> b!1328810 d!374694))

(declare-fun d!374696 () Bool)

(declare-fun lt!439511 () List!13578)

(declare-fun size!10998 (List!13578) Int)

(declare-fun size!10999 (List!13577) Int)

(assert (=> d!374696 (= (size!10998 lt!439511) (size!10999 rules!2550))))

(declare-fun e!851361 () List!13578)

(assert (=> d!374696 (= lt!439511 e!851361)))

(declare-fun c!217814 () Bool)

(assert (=> d!374696 (= c!217814 ((_ is Nil!13511) rules!2550))))

(assert (=> d!374696 (= (map!2975 rules!2550 lambda!55148) lt!439511)))

(declare-fun b!1328854 () Bool)

(assert (=> b!1328854 (= e!851361 Nil!13512)))

(declare-fun b!1328855 () Bool)

(declare-fun $colon$colon!164 (List!13578 Regex!3653) List!13578)

(declare-fun dynLambda!5943 (Int Rule!4478) Regex!3653)

(assert (=> b!1328855 (= e!851361 ($colon$colon!164 (map!2975 (t!118914 rules!2550) lambda!55148) (dynLambda!5943 lambda!55148 (h!18912 rules!2550))))))

(assert (= (and d!374696 c!217814) b!1328854))

(assert (= (and d!374696 (not c!217814)) b!1328855))

(declare-fun b_lambda!39015 () Bool)

(assert (=> (not b_lambda!39015) (not b!1328855)))

(declare-fun m!1485685 () Bool)

(assert (=> d!374696 m!1485685))

(declare-fun m!1485687 () Bool)

(assert (=> d!374696 m!1485687))

(declare-fun m!1485689 () Bool)

(assert (=> b!1328855 m!1485689))

(declare-fun m!1485691 () Bool)

(assert (=> b!1328855 m!1485691))

(assert (=> b!1328855 m!1485689))

(assert (=> b!1328855 m!1485691))

(declare-fun m!1485693 () Bool)

(assert (=> b!1328855 m!1485693))

(assert (=> b!1328810 d!374696))

(declare-fun b!1328868 () Bool)

(declare-fun lt!439517 () Unit!19614)

(declare-fun Unit!19620 () Unit!19614)

(assert (=> b!1328868 (= lt!439517 Unit!19620)))

(assert (=> b!1328868 false))

(declare-fun e!851372 () Regex!3653)

(declare-fun head!2335 (List!13578) Regex!3653)

(assert (=> b!1328868 (= e!851372 (head!2335 (map!2975 rules!2550 lambda!55148)))))

(declare-fun b!1328869 () Bool)

(declare-fun e!851373 () Regex!3653)

(assert (=> b!1328869 (= e!851373 e!851372)))

(declare-fun c!217819 () Bool)

(assert (=> b!1328869 (= c!217819 ((_ is Cons!13512) (map!2975 rules!2550 lambda!55148)))))

(declare-fun b!1328870 () Bool)

(assert (=> b!1328870 (= e!851372 (getWitness!273 (t!118915 (map!2975 rules!2550 lambda!55148)) lambda!55149))))

(declare-fun d!374698 () Bool)

(declare-fun e!851370 () Bool)

(assert (=> d!374698 e!851370))

(declare-fun res!598531 () Bool)

(assert (=> d!374698 (=> (not res!598531) (not e!851370))))

(declare-fun lt!439516 () Regex!3653)

(declare-fun dynLambda!5944 (Int Regex!3653) Bool)

(assert (=> d!374698 (= res!598531 (dynLambda!5944 lambda!55149 lt!439516))))

(assert (=> d!374698 (= lt!439516 e!851373)))

(declare-fun c!217820 () Bool)

(declare-fun e!851371 () Bool)

(assert (=> d!374698 (= c!217820 e!851371)))

(declare-fun res!598530 () Bool)

(assert (=> d!374698 (=> (not res!598530) (not e!851371))))

(assert (=> d!374698 (= res!598530 ((_ is Cons!13512) (map!2975 rules!2550 lambda!55148)))))

(assert (=> d!374698 (exists!380 (map!2975 rules!2550 lambda!55148) lambda!55149)))

(assert (=> d!374698 (= (getWitness!273 (map!2975 rules!2550 lambda!55148) lambda!55149) lt!439516)))

(declare-fun b!1328871 () Bool)

(assert (=> b!1328871 (= e!851371 (dynLambda!5944 lambda!55149 (h!18913 (map!2975 rules!2550 lambda!55148))))))

(declare-fun b!1328872 () Bool)

(assert (=> b!1328872 (= e!851370 (contains!2435 (map!2975 rules!2550 lambda!55148) lt!439516))))

(declare-fun b!1328873 () Bool)

(assert (=> b!1328873 (= e!851373 (h!18913 (map!2975 rules!2550 lambda!55148)))))

(assert (= (and d!374698 res!598530) b!1328871))

(assert (= (and d!374698 c!217820) b!1328873))

(assert (= (and d!374698 (not c!217820)) b!1328869))

(assert (= (and b!1328869 c!217819) b!1328870))

(assert (= (and b!1328869 (not c!217819)) b!1328868))

(assert (= (and d!374698 res!598531) b!1328872))

(declare-fun b_lambda!39017 () Bool)

(assert (=> (not b_lambda!39017) (not d!374698)))

(declare-fun b_lambda!39019 () Bool)

(assert (=> (not b_lambda!39019) (not b!1328871)))

(assert (=> b!1328868 m!1485535))

(declare-fun m!1485695 () Bool)

(assert (=> b!1328868 m!1485695))

(declare-fun m!1485697 () Bool)

(assert (=> b!1328870 m!1485697))

(declare-fun m!1485699 () Bool)

(assert (=> d!374698 m!1485699))

(assert (=> d!374698 m!1485535))

(assert (=> d!374698 m!1485669))

(assert (=> b!1328872 m!1485535))

(declare-fun m!1485701 () Bool)

(assert (=> b!1328872 m!1485701))

(declare-fun m!1485703 () Bool)

(assert (=> b!1328871 m!1485703))

(assert (=> b!1328810 d!374698))

(declare-fun d!374700 () Bool)

(declare-fun lt!439520 () Bool)

(declare-fun content!1915 (List!13577) (InoxSet Rule!4478))

(assert (=> d!374700 (= lt!439520 (select (content!1915 rules!2550) (rule!4084 t2!34)))))

(declare-fun e!851378 () Bool)

(assert (=> d!374700 (= lt!439520 e!851378)))

(declare-fun res!598538 () Bool)

(assert (=> d!374700 (=> (not res!598538) (not e!851378))))

(assert (=> d!374700 (= res!598538 ((_ is Cons!13511) rules!2550))))

(assert (=> d!374700 (= (contains!2434 rules!2550 (rule!4084 t2!34)) lt!439520)))

(declare-fun b!1328878 () Bool)

(declare-fun e!851379 () Bool)

(assert (=> b!1328878 (= e!851378 e!851379)))

(declare-fun res!598539 () Bool)

(assert (=> b!1328878 (=> res!598539 e!851379)))

(assert (=> b!1328878 (= res!598539 (= (h!18912 rules!2550) (rule!4084 t2!34)))))

(declare-fun b!1328879 () Bool)

(assert (=> b!1328879 (= e!851379 (contains!2434 (t!118914 rules!2550) (rule!4084 t2!34)))))

(assert (= (and d!374700 res!598538) b!1328878))

(assert (= (and b!1328878 (not res!598539)) b!1328879))

(declare-fun m!1485705 () Bool)

(assert (=> d!374700 m!1485705))

(declare-fun m!1485707 () Bool)

(assert (=> d!374700 m!1485707))

(declare-fun m!1485709 () Bool)

(assert (=> b!1328879 m!1485709))

(assert (=> b!1328809 d!374700))

(declare-fun d!374702 () Bool)

(declare-fun c!217826 () Bool)

(assert (=> d!374702 (= c!217826 ((_ is IntegerValue!7287) (value!76294 t1!34)))))

(declare-fun e!851386 () Bool)

(assert (=> d!374702 (= (inv!21 (value!76294 t1!34)) e!851386)))

(declare-fun b!1328890 () Bool)

(declare-fun e!851387 () Bool)

(declare-fun inv!15 (TokenValue!2429) Bool)

(assert (=> b!1328890 (= e!851387 (inv!15 (value!76294 t1!34)))))

(declare-fun b!1328891 () Bool)

(declare-fun res!598542 () Bool)

(assert (=> b!1328891 (=> res!598542 e!851387)))

(assert (=> b!1328891 (= res!598542 (not ((_ is IntegerValue!7289) (value!76294 t1!34))))))

(declare-fun e!851388 () Bool)

(assert (=> b!1328891 (= e!851388 e!851387)))

(declare-fun b!1328892 () Bool)

(declare-fun inv!16 (TokenValue!2429) Bool)

(assert (=> b!1328892 (= e!851386 (inv!16 (value!76294 t1!34)))))

(declare-fun b!1328893 () Bool)

(declare-fun inv!17 (TokenValue!2429) Bool)

(assert (=> b!1328893 (= e!851388 (inv!17 (value!76294 t1!34)))))

(declare-fun b!1328894 () Bool)

(assert (=> b!1328894 (= e!851386 e!851388)))

(declare-fun c!217825 () Bool)

(assert (=> b!1328894 (= c!217825 ((_ is IntegerValue!7288) (value!76294 t1!34)))))

(assert (= (and d!374702 c!217826) b!1328892))

(assert (= (and d!374702 (not c!217826)) b!1328894))

(assert (= (and b!1328894 c!217825) b!1328893))

(assert (= (and b!1328894 (not c!217825)) b!1328891))

(assert (= (and b!1328891 (not res!598542)) b!1328890))

(declare-fun m!1485711 () Bool)

(assert (=> b!1328890 m!1485711))

(declare-fun m!1485713 () Bool)

(assert (=> b!1328892 m!1485713))

(declare-fun m!1485715 () Bool)

(assert (=> b!1328893 m!1485715))

(assert (=> b!1328787 d!374702))

(declare-fun d!374704 () Bool)

(declare-fun res!598547 () Bool)

(declare-fun e!851391 () Bool)

(assert (=> d!374704 (=> (not res!598547) (not e!851391))))

(declare-fun isEmpty!8046 (List!13575) Bool)

(assert (=> d!374704 (= res!598547 (not (isEmpty!8046 (originalCharacters!3201 t1!34))))))

(assert (=> d!374704 (= (inv!17860 t1!34) e!851391)))

(declare-fun b!1328899 () Bool)

(declare-fun res!598548 () Bool)

(assert (=> b!1328899 (=> (not res!598548) (not e!851391))))

(declare-fun dynLambda!5945 (Int TokenValue!2429) BalanceConc!8836)

(assert (=> b!1328899 (= res!598548 (= (originalCharacters!3201 t1!34) (list!5119 (dynLambda!5945 (toChars!3429 (transformation!2339 (rule!4084 t1!34))) (value!76294 t1!34)))))))

(declare-fun b!1328900 () Bool)

(declare-fun size!11000 (List!13575) Int)

(assert (=> b!1328900 (= e!851391 (= (size!10996 t1!34) (size!11000 (originalCharacters!3201 t1!34))))))

(assert (= (and d!374704 res!598547) b!1328899))

(assert (= (and b!1328899 res!598548) b!1328900))

(declare-fun b_lambda!39021 () Bool)

(assert (=> (not b_lambda!39021) (not b!1328899)))

(declare-fun tb!70273 () Bool)

(declare-fun t!118917 () Bool)

(assert (=> (and b!1328788 (= (toChars!3429 (transformation!2339 (h!18912 rules!2550))) (toChars!3429 (transformation!2339 (rule!4084 t1!34)))) t!118917) tb!70273))

(declare-fun b!1328915 () Bool)

(declare-fun e!851400 () Bool)

(declare-fun tp!384929 () Bool)

(declare-fun inv!17861 (Conc!4448) Bool)

(assert (=> b!1328915 (= e!851400 (and (inv!17861 (c!217808 (dynLambda!5945 (toChars!3429 (transformation!2339 (rule!4084 t1!34))) (value!76294 t1!34)))) tp!384929))))

(declare-fun result!85318 () Bool)

(declare-fun inv!17862 (BalanceConc!8836) Bool)

(assert (=> tb!70273 (= result!85318 (and (inv!17862 (dynLambda!5945 (toChars!3429 (transformation!2339 (rule!4084 t1!34))) (value!76294 t1!34))) e!851400))))

(assert (= tb!70273 b!1328915))

(declare-fun m!1485717 () Bool)

(assert (=> b!1328915 m!1485717))

(declare-fun m!1485719 () Bool)

(assert (=> tb!70273 m!1485719))

(assert (=> b!1328899 t!118917))

(declare-fun b_and!88779 () Bool)

(assert (= b_and!88769 (and (=> t!118917 result!85318) b_and!88779)))

(declare-fun t!118919 () Bool)

(declare-fun tb!70275 () Bool)

(assert (=> (and b!1328800 (= (toChars!3429 (transformation!2339 (rule!4084 t1!34))) (toChars!3429 (transformation!2339 (rule!4084 t1!34)))) t!118919) tb!70275))

(declare-fun result!85322 () Bool)

(assert (= result!85322 result!85318))

(assert (=> b!1328899 t!118919))

(declare-fun b_and!88781 () Bool)

(assert (= b_and!88773 (and (=> t!118919 result!85322) b_and!88781)))

(declare-fun tb!70277 () Bool)

(declare-fun t!118921 () Bool)

(assert (=> (and b!1328818 (= (toChars!3429 (transformation!2339 (rule!4084 t2!34))) (toChars!3429 (transformation!2339 (rule!4084 t1!34)))) t!118921) tb!70277))

(declare-fun result!85324 () Bool)

(assert (= result!85324 result!85318))

(assert (=> b!1328899 t!118921))

(declare-fun b_and!88783 () Bool)

(assert (= b_and!88777 (and (=> t!118921 result!85324) b_and!88783)))

(declare-fun m!1485721 () Bool)

(assert (=> d!374704 m!1485721))

(declare-fun m!1485723 () Bool)

(assert (=> b!1328899 m!1485723))

(assert (=> b!1328899 m!1485723))

(declare-fun m!1485725 () Bool)

(assert (=> b!1328899 m!1485725))

(declare-fun m!1485727 () Bool)

(assert (=> b!1328900 m!1485727))

(assert (=> start!118106 d!374704))

(declare-fun d!374708 () Bool)

(declare-fun res!598551 () Bool)

(declare-fun e!851401 () Bool)

(assert (=> d!374708 (=> (not res!598551) (not e!851401))))

(assert (=> d!374708 (= res!598551 (not (isEmpty!8046 (originalCharacters!3201 t2!34))))))

(assert (=> d!374708 (= (inv!17860 t2!34) e!851401)))

(declare-fun b!1328916 () Bool)

(declare-fun res!598552 () Bool)

(assert (=> b!1328916 (=> (not res!598552) (not e!851401))))

(assert (=> b!1328916 (= res!598552 (= (originalCharacters!3201 t2!34) (list!5119 (dynLambda!5945 (toChars!3429 (transformation!2339 (rule!4084 t2!34))) (value!76294 t2!34)))))))

(declare-fun b!1328917 () Bool)

(assert (=> b!1328917 (= e!851401 (= (size!10996 t2!34) (size!11000 (originalCharacters!3201 t2!34))))))

(assert (= (and d!374708 res!598551) b!1328916))

(assert (= (and b!1328916 res!598552) b!1328917))

(declare-fun b_lambda!39023 () Bool)

(assert (=> (not b_lambda!39023) (not b!1328916)))

(declare-fun tb!70279 () Bool)

(declare-fun t!118923 () Bool)

(assert (=> (and b!1328788 (= (toChars!3429 (transformation!2339 (h!18912 rules!2550))) (toChars!3429 (transformation!2339 (rule!4084 t2!34)))) t!118923) tb!70279))

(declare-fun b!1328923 () Bool)

(declare-fun e!851405 () Bool)

(declare-fun tp!384930 () Bool)

(assert (=> b!1328923 (= e!851405 (and (inv!17861 (c!217808 (dynLambda!5945 (toChars!3429 (transformation!2339 (rule!4084 t2!34))) (value!76294 t2!34)))) tp!384930))))

(declare-fun result!85326 () Bool)

(assert (=> tb!70279 (= result!85326 (and (inv!17862 (dynLambda!5945 (toChars!3429 (transformation!2339 (rule!4084 t2!34))) (value!76294 t2!34))) e!851405))))

(assert (= tb!70279 b!1328923))

(declare-fun m!1485735 () Bool)

(assert (=> b!1328923 m!1485735))

(declare-fun m!1485737 () Bool)

(assert (=> tb!70279 m!1485737))

(assert (=> b!1328916 t!118923))

(declare-fun b_and!88785 () Bool)

(assert (= b_and!88779 (and (=> t!118923 result!85326) b_and!88785)))

(declare-fun t!118925 () Bool)

(declare-fun tb!70281 () Bool)

(assert (=> (and b!1328800 (= (toChars!3429 (transformation!2339 (rule!4084 t1!34))) (toChars!3429 (transformation!2339 (rule!4084 t2!34)))) t!118925) tb!70281))

(declare-fun result!85328 () Bool)

(assert (= result!85328 result!85326))

(assert (=> b!1328916 t!118925))

(declare-fun b_and!88787 () Bool)

(assert (= b_and!88781 (and (=> t!118925 result!85328) b_and!88787)))

(declare-fun t!118927 () Bool)

(declare-fun tb!70283 () Bool)

(assert (=> (and b!1328818 (= (toChars!3429 (transformation!2339 (rule!4084 t2!34))) (toChars!3429 (transformation!2339 (rule!4084 t2!34)))) t!118927) tb!70283))

(declare-fun result!85330 () Bool)

(assert (= result!85330 result!85326))

(assert (=> b!1328916 t!118927))

(declare-fun b_and!88789 () Bool)

(assert (= b_and!88783 (and (=> t!118927 result!85330) b_and!88789)))

(declare-fun m!1485739 () Bool)

(assert (=> d!374708 m!1485739))

(declare-fun m!1485741 () Bool)

(assert (=> b!1328916 m!1485741))

(assert (=> b!1328916 m!1485741))

(declare-fun m!1485743 () Bool)

(assert (=> b!1328916 m!1485743))

(declare-fun m!1485745 () Bool)

(assert (=> b!1328917 m!1485745))

(assert (=> start!118106 d!374708))

(declare-fun d!374712 () Bool)

(declare-fun lt!439526 () Int)

(assert (=> d!374712 (= lt!439526 (size!11000 (list!5119 lt!439488)))))

(declare-fun size!11003 (Conc!4448) Int)

(assert (=> d!374712 (= lt!439526 (size!11003 (c!217808 lt!439488)))))

(assert (=> d!374712 (= (size!10997 lt!439488) lt!439526)))

(declare-fun bs!331506 () Bool)

(assert (= bs!331506 d!374712))

(assert (=> bs!331506 m!1485571))

(assert (=> bs!331506 m!1485571))

(declare-fun m!1485753 () Bool)

(assert (=> bs!331506 m!1485753))

(declare-fun m!1485755 () Bool)

(assert (=> bs!331506 m!1485755))

(assert (=> b!1328830 d!374712))

(declare-fun d!374716 () Bool)

(declare-fun lt!439531 () Bool)

(declare-fun content!1917 (List!13575) (InoxSet C!7596))

(assert (=> d!374716 (= lt!439531 (select (content!1917 (usedCharacters!204 (regex!2339 lt!439475))) lt!439497))))

(declare-fun e!851418 () Bool)

(assert (=> d!374716 (= lt!439531 e!851418)))

(declare-fun res!598564 () Bool)

(assert (=> d!374716 (=> (not res!598564) (not e!851418))))

(assert (=> d!374716 (= res!598564 ((_ is Cons!13509) (usedCharacters!204 (regex!2339 lt!439475))))))

(assert (=> d!374716 (= (contains!2433 (usedCharacters!204 (regex!2339 lt!439475)) lt!439497) lt!439531)))

(declare-fun b!1328938 () Bool)

(declare-fun e!851419 () Bool)

(assert (=> b!1328938 (= e!851418 e!851419)))

(declare-fun res!598565 () Bool)

(assert (=> b!1328938 (=> res!598565 e!851419)))

(assert (=> b!1328938 (= res!598565 (= (h!18910 (usedCharacters!204 (regex!2339 lt!439475))) lt!439497))))

(declare-fun b!1328939 () Bool)

(assert (=> b!1328939 (= e!851419 (contains!2433 (t!118912 (usedCharacters!204 (regex!2339 lt!439475))) lt!439497))))

(assert (= (and d!374716 res!598564) b!1328938))

(assert (= (and b!1328938 (not res!598565)) b!1328939))

(assert (=> d!374716 m!1485655))

(declare-fun m!1485757 () Bool)

(assert (=> d!374716 m!1485757))

(declare-fun m!1485759 () Bool)

(assert (=> d!374716 m!1485759))

(declare-fun m!1485761 () Bool)

(assert (=> b!1328939 m!1485761))

(assert (=> b!1328830 d!374716))

(declare-fun bm!89887 () Bool)

(declare-fun call!89893 () List!13575)

(declare-fun c!217849 () Bool)

(assert (=> bm!89887 (= call!89893 (usedCharacters!204 (ite c!217849 (regOne!7819 (regex!2339 lt!439475)) (regTwo!7818 (regex!2339 lt!439475)))))))

(declare-fun call!89895 () List!13575)

(declare-fun bm!89888 () Bool)

(declare-fun call!89892 () List!13575)

(assert (=> bm!89888 (= call!89895 (++!3450 (ite c!217849 call!89893 call!89892) (ite c!217849 call!89892 call!89893)))))

(declare-fun b!1328970 () Bool)

(declare-fun e!851439 () List!13575)

(assert (=> b!1328970 (= e!851439 Nil!13509)))

(declare-fun b!1328971 () Bool)

(declare-fun e!851440 () List!13575)

(assert (=> b!1328971 (= e!851440 (Cons!13509 (c!217809 (regex!2339 lt!439475)) Nil!13509))))

(declare-fun bm!89889 () Bool)

(declare-fun call!89894 () List!13575)

(assert (=> bm!89889 (= call!89892 call!89894)))

(declare-fun bm!89890 () Bool)

(declare-fun c!217851 () Bool)

(assert (=> bm!89890 (= call!89894 (usedCharacters!204 (ite c!217851 (reg!3982 (regex!2339 lt!439475)) (ite c!217849 (regTwo!7819 (regex!2339 lt!439475)) (regOne!7818 (regex!2339 lt!439475))))))))

(declare-fun d!374718 () Bool)

(declare-fun c!217848 () Bool)

(assert (=> d!374718 (= c!217848 (or ((_ is EmptyExpr!3653) (regex!2339 lt!439475)) ((_ is EmptyLang!3653) (regex!2339 lt!439475))))))

(assert (=> d!374718 (= (usedCharacters!204 (regex!2339 lt!439475)) e!851439)))

(declare-fun b!1328972 () Bool)

(assert (=> b!1328972 (= c!217851 ((_ is Star!3653) (regex!2339 lt!439475)))))

(declare-fun e!851437 () List!13575)

(assert (=> b!1328972 (= e!851440 e!851437)))

(declare-fun b!1328973 () Bool)

(assert (=> b!1328973 (= e!851437 call!89894)))

(declare-fun b!1328974 () Bool)

(declare-fun e!851438 () List!13575)

(assert (=> b!1328974 (= e!851437 e!851438)))

(assert (=> b!1328974 (= c!217849 ((_ is Union!3653) (regex!2339 lt!439475)))))

(declare-fun b!1328975 () Bool)

(assert (=> b!1328975 (= e!851438 call!89895)))

(declare-fun b!1328976 () Bool)

(assert (=> b!1328976 (= e!851439 e!851440)))

(declare-fun c!217850 () Bool)

(assert (=> b!1328976 (= c!217850 ((_ is ElementMatch!3653) (regex!2339 lt!439475)))))

(declare-fun b!1328977 () Bool)

(assert (=> b!1328977 (= e!851438 call!89895)))

(assert (= (and d!374718 c!217848) b!1328970))

(assert (= (and d!374718 (not c!217848)) b!1328976))

(assert (= (and b!1328976 c!217850) b!1328971))

(assert (= (and b!1328976 (not c!217850)) b!1328972))

(assert (= (and b!1328972 c!217851) b!1328973))

(assert (= (and b!1328972 (not c!217851)) b!1328974))

(assert (= (and b!1328974 c!217849) b!1328977))

(assert (= (and b!1328974 (not c!217849)) b!1328975))

(assert (= (or b!1328977 b!1328975) bm!89887))

(assert (= (or b!1328977 b!1328975) bm!89889))

(assert (= (or b!1328977 b!1328975) bm!89888))

(assert (= (or b!1328973 bm!89889) bm!89890))

(declare-fun m!1485773 () Bool)

(assert (=> bm!89887 m!1485773))

(declare-fun m!1485775 () Bool)

(assert (=> bm!89888 m!1485775))

(declare-fun m!1485777 () Bool)

(assert (=> bm!89890 m!1485777))

(assert (=> b!1328830 d!374718))

(declare-fun d!374722 () Bool)

(assert (=> d!374722 (not (contains!2433 (usedCharacters!204 (regex!2339 lt!439475)) lt!439497))))

(declare-fun lt!439541 () Unit!19614)

(declare-fun choose!8140 (LexerInterface!2034 List!13577 List!13577 Rule!4478 Rule!4478 C!7596) Unit!19614)

(assert (=> d!374722 (= lt!439541 (choose!8140 thiss!19762 rules!2550 rules!2550 (rule!4084 t1!34) lt!439475 lt!439497))))

(assert (=> d!374722 (rulesInvariant!1904 thiss!19762 rules!2550)))

(assert (=> d!374722 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!114 thiss!19762 rules!2550 rules!2550 (rule!4084 t1!34) lt!439475 lt!439497) lt!439541)))

(declare-fun bs!331507 () Bool)

(assert (= bs!331507 d!374722))

(assert (=> bs!331507 m!1485655))

(assert (=> bs!331507 m!1485655))

(assert (=> bs!331507 m!1485657))

(declare-fun m!1485789 () Bool)

(assert (=> bs!331507 m!1485789))

(assert (=> bs!331507 m!1485541))

(assert (=> b!1328830 d!374722))

(declare-fun d!374726 () Bool)

(declare-fun lt!439580 () Bool)

(declare-fun e!851522 () Bool)

(assert (=> d!374726 (= lt!439580 e!851522)))

(declare-fun res!598642 () Bool)

(assert (=> d!374726 (=> (not res!598642) (not e!851522))))

(assert (=> d!374726 (= res!598642 (= (list!5118 (_1!7463 (lex!869 thiss!19762 rules!2550 (print!808 thiss!19762 (singletonSeq!932 t1!34))))) (list!5118 (singletonSeq!932 t1!34))))))

(declare-fun e!851523 () Bool)

(assert (=> d!374726 (= lt!439580 e!851523)))

(declare-fun res!598641 () Bool)

(assert (=> d!374726 (=> (not res!598641) (not e!851523))))

(declare-fun lt!439581 () tuple2!13154)

(declare-fun size!11004 (BalanceConc!8838) Int)

(assert (=> d!374726 (= res!598641 (= (size!11004 (_1!7463 lt!439581)) 1))))

(assert (=> d!374726 (= lt!439581 (lex!869 thiss!19762 rules!2550 (print!808 thiss!19762 (singletonSeq!932 t1!34))))))

(assert (=> d!374726 (not (isEmpty!8045 rules!2550))))

(assert (=> d!374726 (= (rulesProduceIndividualToken!1003 thiss!19762 rules!2550 t1!34) lt!439580)))

(declare-fun b!1329112 () Bool)

(declare-fun res!598643 () Bool)

(assert (=> b!1329112 (=> (not res!598643) (not e!851523))))

(declare-fun apply!3126 (BalanceConc!8838 Int) Token!4340)

(assert (=> b!1329112 (= res!598643 (= (apply!3126 (_1!7463 lt!439581) 0) t1!34))))

(declare-fun b!1329113 () Bool)

(assert (=> b!1329113 (= e!851523 (isEmpty!8044 (_2!7463 lt!439581)))))

(declare-fun b!1329114 () Bool)

(assert (=> b!1329114 (= e!851522 (isEmpty!8044 (_2!7463 (lex!869 thiss!19762 rules!2550 (print!808 thiss!19762 (singletonSeq!932 t1!34))))))))

(assert (= (and d!374726 res!598641) b!1329112))

(assert (= (and b!1329112 res!598643) b!1329113))

(assert (= (and d!374726 res!598642) b!1329114))

(assert (=> d!374726 m!1485557))

(declare-fun m!1485911 () Bool)

(assert (=> d!374726 m!1485911))

(assert (=> d!374726 m!1485651))

(declare-fun m!1485913 () Bool)

(assert (=> d!374726 m!1485913))

(assert (=> d!374726 m!1485559))

(declare-fun m!1485915 () Bool)

(assert (=> d!374726 m!1485915))

(assert (=> d!374726 m!1485557))

(assert (=> d!374726 m!1485559))

(assert (=> d!374726 m!1485557))

(declare-fun m!1485917 () Bool)

(assert (=> d!374726 m!1485917))

(declare-fun m!1485919 () Bool)

(assert (=> b!1329112 m!1485919))

(declare-fun m!1485921 () Bool)

(assert (=> b!1329113 m!1485921))

(assert (=> b!1329114 m!1485557))

(assert (=> b!1329114 m!1485557))

(assert (=> b!1329114 m!1485559))

(assert (=> b!1329114 m!1485559))

(assert (=> b!1329114 m!1485915))

(declare-fun m!1485923 () Bool)

(assert (=> b!1329114 m!1485923))

(assert (=> b!1328829 d!374726))

(declare-fun d!374770 () Bool)

(assert (=> d!374770 (not (matchR!1655 (regex!2339 (rule!4084 t1!34)) lt!439494))))

(declare-fun lt!439582 () Unit!19614)

(assert (=> d!374770 (= lt!439582 (choose!8139 (regex!2339 (rule!4084 t1!34)) lt!439494 (head!2334 lt!439494)))))

(assert (=> d!374770 (validRegex!1568 (regex!2339 (rule!4084 t1!34)))))

(assert (=> d!374770 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!150 (regex!2339 (rule!4084 t1!34)) lt!439494 (head!2334 lt!439494)) lt!439582)))

(declare-fun bs!331516 () Bool)

(assert (= bs!331516 d!374770))

(assert (=> bs!331516 m!1485587))

(assert (=> bs!331516 m!1485595))

(declare-fun m!1485925 () Bool)

(assert (=> bs!331516 m!1485925))

(declare-fun m!1485927 () Bool)

(assert (=> bs!331516 m!1485927))

(assert (=> b!1328808 d!374770))

(declare-fun d!374772 () Bool)

(assert (=> d!374772 (= (head!2334 lt!439494) (h!18910 lt!439494))))

(assert (=> b!1328808 d!374772))

(declare-fun bs!331517 () Bool)

(declare-fun d!374774 () Bool)

(assert (= bs!331517 (and d!374774 b!1328807)))

(declare-fun lambda!55157 () Int)

(assert (=> bs!331517 (not (= lambda!55157 lambda!55150))))

(declare-fun bs!331518 () Bool)

(assert (= bs!331518 (and d!374774 b!1328799)))

(assert (=> bs!331518 (not (= lambda!55157 lambda!55151))))

(assert (=> d!374774 true))

(declare-fun order!8135 () Int)

(declare-fun dynLambda!5948 (Int Int) Int)

(assert (=> d!374774 (< (dynLambda!5948 order!8135 lambda!55150) (dynLambda!5948 order!8135 lambda!55157))))

(declare-fun forall!3319 (List!13577 Int) Bool)

(assert (=> d!374774 (= (exists!381 rules!2550 lambda!55150) (not (forall!3319 rules!2550 lambda!55157)))))

(declare-fun bs!331519 () Bool)

(assert (= bs!331519 d!374774))

(declare-fun m!1485929 () Bool)

(assert (=> bs!331519 m!1485929))

(assert (=> b!1328807 d!374774))

(declare-fun bs!331520 () Bool)

(declare-fun d!374776 () Bool)

(assert (= bs!331520 (and d!374776 b!1328807)))

(declare-fun lambda!55160 () Int)

(assert (=> bs!331520 (not (= lambda!55160 lambda!55150))))

(declare-fun bs!331521 () Bool)

(assert (= bs!331521 (and d!374776 b!1328799)))

(assert (=> bs!331521 (not (= lambda!55160 lambda!55151))))

(declare-fun bs!331522 () Bool)

(assert (= bs!331522 (and d!374776 d!374774)))

(assert (=> bs!331522 (not (= lambda!55160 lambda!55157))))

(assert (=> d!374776 true))

(assert (=> d!374776 true))

(declare-fun order!8137 () Int)

(declare-fun dynLambda!5949 (Int Int) Int)

(assert (=> d!374776 (< (dynLambda!5949 order!8137 lambda!55148) (dynLambda!5948 order!8135 lambda!55160))))

(assert (=> d!374776 (exists!381 rules!2550 lambda!55160)))

(declare-fun lt!439585 () Unit!19614)

(declare-fun choose!8141 (List!13577 Int Regex!3653) Unit!19614)

(assert (=> d!374776 (= lt!439585 (choose!8141 rules!2550 lambda!55148 lt!439490))))

(assert (=> d!374776 (contains!2435 (map!2975 rules!2550 lambda!55148) lt!439490)))

(assert (=> d!374776 (= (lemmaMapContains!82 rules!2550 lambda!55148 lt!439490) lt!439585)))

(declare-fun bs!331523 () Bool)

(assert (= bs!331523 d!374776))

(declare-fun m!1485931 () Bool)

(assert (=> bs!331523 m!1485931))

(declare-fun m!1485933 () Bool)

(assert (=> bs!331523 m!1485933))

(assert (=> bs!331523 m!1485535))

(assert (=> bs!331523 m!1485535))

(assert (=> bs!331523 m!1485537))

(assert (=> b!1328807 d!374776))

(declare-fun d!374778 () Bool)

(declare-fun lt!439586 () Bool)

(assert (=> d!374778 (= lt!439586 (select (content!1917 (usedCharacters!204 (regex!2339 (rule!4084 t1!34)))) lt!439497))))

(declare-fun e!851524 () Bool)

(assert (=> d!374778 (= lt!439586 e!851524)))

(declare-fun res!598644 () Bool)

(assert (=> d!374778 (=> (not res!598644) (not e!851524))))

(assert (=> d!374778 (= res!598644 ((_ is Cons!13509) (usedCharacters!204 (regex!2339 (rule!4084 t1!34)))))))

(assert (=> d!374778 (= (contains!2433 (usedCharacters!204 (regex!2339 (rule!4084 t1!34))) lt!439497) lt!439586)))

(declare-fun b!1329121 () Bool)

(declare-fun e!851525 () Bool)

(assert (=> b!1329121 (= e!851524 e!851525)))

(declare-fun res!598645 () Bool)

(assert (=> b!1329121 (=> res!598645 e!851525)))

(assert (=> b!1329121 (= res!598645 (= (h!18910 (usedCharacters!204 (regex!2339 (rule!4084 t1!34)))) lt!439497))))

(declare-fun b!1329122 () Bool)

(assert (=> b!1329122 (= e!851525 (contains!2433 (t!118912 (usedCharacters!204 (regex!2339 (rule!4084 t1!34)))) lt!439497))))

(assert (= (and d!374778 res!598644) b!1329121))

(assert (= (and b!1329121 (not res!598645)) b!1329122))

(assert (=> d!374778 m!1485615))

(declare-fun m!1485935 () Bool)

(assert (=> d!374778 m!1485935))

(declare-fun m!1485937 () Bool)

(assert (=> d!374778 m!1485937))

(declare-fun m!1485939 () Bool)

(assert (=> b!1329122 m!1485939))

(assert (=> b!1328786 d!374778))

(declare-fun bm!89908 () Bool)

(declare-fun call!89914 () List!13575)

(declare-fun c!217884 () Bool)

(assert (=> bm!89908 (= call!89914 (usedCharacters!204 (ite c!217884 (regOne!7819 (regex!2339 (rule!4084 t1!34))) (regTwo!7818 (regex!2339 (rule!4084 t1!34))))))))

(declare-fun bm!89909 () Bool)

(declare-fun call!89913 () List!13575)

(declare-fun call!89916 () List!13575)

(assert (=> bm!89909 (= call!89916 (++!3450 (ite c!217884 call!89914 call!89913) (ite c!217884 call!89913 call!89914)))))

(declare-fun b!1329123 () Bool)

(declare-fun e!851528 () List!13575)

(assert (=> b!1329123 (= e!851528 Nil!13509)))

(declare-fun b!1329124 () Bool)

(declare-fun e!851529 () List!13575)

(assert (=> b!1329124 (= e!851529 (Cons!13509 (c!217809 (regex!2339 (rule!4084 t1!34))) Nil!13509))))

(declare-fun bm!89910 () Bool)

(declare-fun call!89915 () List!13575)

(assert (=> bm!89910 (= call!89913 call!89915)))

(declare-fun c!217886 () Bool)

(declare-fun bm!89911 () Bool)

(assert (=> bm!89911 (= call!89915 (usedCharacters!204 (ite c!217886 (reg!3982 (regex!2339 (rule!4084 t1!34))) (ite c!217884 (regTwo!7819 (regex!2339 (rule!4084 t1!34))) (regOne!7818 (regex!2339 (rule!4084 t1!34)))))))))

(declare-fun d!374780 () Bool)

(declare-fun c!217883 () Bool)

(assert (=> d!374780 (= c!217883 (or ((_ is EmptyExpr!3653) (regex!2339 (rule!4084 t1!34))) ((_ is EmptyLang!3653) (regex!2339 (rule!4084 t1!34)))))))

(assert (=> d!374780 (= (usedCharacters!204 (regex!2339 (rule!4084 t1!34))) e!851528)))

(declare-fun b!1329125 () Bool)

(assert (=> b!1329125 (= c!217886 ((_ is Star!3653) (regex!2339 (rule!4084 t1!34))))))

(declare-fun e!851526 () List!13575)

(assert (=> b!1329125 (= e!851529 e!851526)))

(declare-fun b!1329126 () Bool)

(assert (=> b!1329126 (= e!851526 call!89915)))

(declare-fun b!1329127 () Bool)

(declare-fun e!851527 () List!13575)

(assert (=> b!1329127 (= e!851526 e!851527)))

(assert (=> b!1329127 (= c!217884 ((_ is Union!3653) (regex!2339 (rule!4084 t1!34))))))

(declare-fun b!1329128 () Bool)

(assert (=> b!1329128 (= e!851527 call!89916)))

(declare-fun b!1329129 () Bool)

(assert (=> b!1329129 (= e!851528 e!851529)))

(declare-fun c!217885 () Bool)

(assert (=> b!1329129 (= c!217885 ((_ is ElementMatch!3653) (regex!2339 (rule!4084 t1!34))))))

(declare-fun b!1329130 () Bool)

(assert (=> b!1329130 (= e!851527 call!89916)))

(assert (= (and d!374780 c!217883) b!1329123))

(assert (= (and d!374780 (not c!217883)) b!1329129))

(assert (= (and b!1329129 c!217885) b!1329124))

(assert (= (and b!1329129 (not c!217885)) b!1329125))

(assert (= (and b!1329125 c!217886) b!1329126))

(assert (= (and b!1329125 (not c!217886)) b!1329127))

(assert (= (and b!1329127 c!217884) b!1329130))

(assert (= (and b!1329127 (not c!217884)) b!1329128))

(assert (= (or b!1329130 b!1329128) bm!89908))

(assert (= (or b!1329130 b!1329128) bm!89910))

(assert (= (or b!1329130 b!1329128) bm!89909))

(assert (= (or b!1329126 bm!89910) bm!89911))

(declare-fun m!1485941 () Bool)

(assert (=> bm!89908 m!1485941))

(declare-fun m!1485943 () Bool)

(assert (=> bm!89909 m!1485943))

(declare-fun m!1485945 () Bool)

(assert (=> bm!89911 m!1485945))

(assert (=> b!1328786 d!374780))

(declare-fun d!374782 () Bool)

(declare-fun lt!439587 () Bool)

(assert (=> d!374782 (= lt!439587 (select (content!1915 rules!2550) lt!439475))))

(declare-fun e!851530 () Bool)

(assert (=> d!374782 (= lt!439587 e!851530)))

(declare-fun res!598646 () Bool)

(assert (=> d!374782 (=> (not res!598646) (not e!851530))))

(assert (=> d!374782 (= res!598646 ((_ is Cons!13511) rules!2550))))

(assert (=> d!374782 (= (contains!2434 rules!2550 lt!439475) lt!439587)))

(declare-fun b!1329131 () Bool)

(declare-fun e!851531 () Bool)

(assert (=> b!1329131 (= e!851530 e!851531)))

(declare-fun res!598647 () Bool)

(assert (=> b!1329131 (=> res!598647 e!851531)))

(assert (=> b!1329131 (= res!598647 (= (h!18912 rules!2550) lt!439475))))

(declare-fun b!1329132 () Bool)

(assert (=> b!1329132 (= e!851531 (contains!2434 (t!118914 rules!2550) lt!439475))))

(assert (= (and d!374782 res!598646) b!1329131))

(assert (= (and b!1329131 (not res!598647)) b!1329132))

(assert (=> d!374782 m!1485705))

(declare-fun m!1485947 () Bool)

(assert (=> d!374782 m!1485947))

(declare-fun m!1485949 () Bool)

(assert (=> b!1329132 m!1485949))

(assert (=> b!1328828 d!374782))

(declare-fun d!374784 () Bool)

(declare-fun lt!439590 () Bool)

(assert (=> d!374784 (= lt!439590 (isEmpty!8046 (list!5119 (_2!7463 lt!439482))))))

(declare-fun isEmpty!8048 (Conc!4448) Bool)

(assert (=> d!374784 (= lt!439590 (isEmpty!8048 (c!217808 (_2!7463 lt!439482))))))

(assert (=> d!374784 (= (isEmpty!8044 (_2!7463 lt!439482)) lt!439590)))

(declare-fun bs!331524 () Bool)

(assert (= bs!331524 d!374784))

(declare-fun m!1485951 () Bool)

(assert (=> bs!331524 m!1485951))

(assert (=> bs!331524 m!1485951))

(declare-fun m!1485953 () Bool)

(assert (=> bs!331524 m!1485953))

(declare-fun m!1485955 () Bool)

(assert (=> bs!331524 m!1485955))

(assert (=> b!1328827 d!374784))

(declare-fun d!374786 () Bool)

(declare-fun lt!439591 () Bool)

(assert (=> d!374786 (= lt!439591 (select (content!1917 lt!439502) lt!439497))))

(declare-fun e!851532 () Bool)

(assert (=> d!374786 (= lt!439591 e!851532)))

(declare-fun res!598648 () Bool)

(assert (=> d!374786 (=> (not res!598648) (not e!851532))))

(assert (=> d!374786 (= res!598648 ((_ is Cons!13509) lt!439502))))

(assert (=> d!374786 (= (contains!2433 lt!439502 lt!439497) lt!439591)))

(declare-fun b!1329133 () Bool)

(declare-fun e!851533 () Bool)

(assert (=> b!1329133 (= e!851532 e!851533)))

(declare-fun res!598649 () Bool)

(assert (=> b!1329133 (=> res!598649 e!851533)))

(assert (=> b!1329133 (= res!598649 (= (h!18910 lt!439502) lt!439497))))

(declare-fun b!1329134 () Bool)

(assert (=> b!1329134 (= e!851533 (contains!2433 (t!118912 lt!439502) lt!439497))))

(assert (= (and d!374786 res!598648) b!1329133))

(assert (= (and b!1329133 (not res!598649)) b!1329134))

(declare-fun m!1485957 () Bool)

(assert (=> d!374786 m!1485957))

(declare-fun m!1485959 () Bool)

(assert (=> d!374786 m!1485959))

(declare-fun m!1485961 () Bool)

(assert (=> b!1329134 m!1485961))

(assert (=> b!1328806 d!374786))

(declare-fun d!374788 () Bool)

(declare-fun lt!439594 () C!7596)

(declare-fun apply!3127 (List!13575 Int) C!7596)

(assert (=> d!374788 (= lt!439594 (apply!3127 (list!5119 lt!439488) 0))))

(declare-fun apply!3128 (Conc!4448 Int) C!7596)

(assert (=> d!374788 (= lt!439594 (apply!3128 (c!217808 lt!439488) 0))))

(declare-fun e!851536 () Bool)

(assert (=> d!374788 e!851536))

(declare-fun res!598652 () Bool)

(assert (=> d!374788 (=> (not res!598652) (not e!851536))))

(assert (=> d!374788 (= res!598652 (<= 0 0))))

(assert (=> d!374788 (= (apply!3125 lt!439488 0) lt!439594)))

(declare-fun b!1329137 () Bool)

(assert (=> b!1329137 (= e!851536 (< 0 (size!10997 lt!439488)))))

(assert (= (and d!374788 res!598652) b!1329137))

(assert (=> d!374788 m!1485571))

(assert (=> d!374788 m!1485571))

(declare-fun m!1485963 () Bool)

(assert (=> d!374788 m!1485963))

(declare-fun m!1485965 () Bool)

(assert (=> d!374788 m!1485965))

(assert (=> b!1329137 m!1485653))

(assert (=> b!1328806 d!374788))

(declare-fun d!374790 () Bool)

(declare-fun prefixMatchZipperSequence!193 (Regex!3653 BalanceConc!8836) Bool)

(declare-fun ++!3451 (BalanceConc!8836 BalanceConc!8836) BalanceConc!8836)

(declare-fun singletonSeq!933 (C!7596) BalanceConc!8836)

(assert (=> d!374790 (= (separableTokensPredicate!317 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!193 (rulesRegex!224 thiss!19762 rules!2550) (++!3451 (charsOf!1311 t1!34) (singletonSeq!933 (apply!3125 (charsOf!1311 t2!34) 0))))))))

(declare-fun bs!331525 () Bool)

(assert (= bs!331525 d!374790))

(assert (=> bs!331525 m!1485567))

(declare-fun m!1485977 () Bool)

(assert (=> bs!331525 m!1485977))

(declare-fun m!1485981 () Bool)

(assert (=> bs!331525 m!1485981))

(assert (=> bs!331525 m!1485573))

(assert (=> bs!331525 m!1485531))

(declare-fun m!1485985 () Bool)

(assert (=> bs!331525 m!1485985))

(assert (=> bs!331525 m!1485531))

(assert (=> bs!331525 m!1485985))

(assert (=> bs!331525 m!1485977))

(assert (=> bs!331525 m!1485567))

(assert (=> bs!331525 m!1485573))

(assert (=> bs!331525 m!1485981))

(declare-fun m!1485987 () Bool)

(assert (=> bs!331525 m!1485987))

(assert (=> b!1328805 d!374790))

(declare-fun d!374794 () Bool)

(declare-fun choose!8143 (Int) Bool)

(assert (=> d!374794 (= (Exists!811 lambda!55147) (choose!8143 lambda!55147))))

(declare-fun bs!331526 () Bool)

(assert (= bs!331526 d!374794))

(declare-fun m!1485989 () Bool)

(assert (=> bs!331526 m!1485989))

(assert (=> b!1328815 d!374794))

(declare-fun bs!331527 () Bool)

(declare-fun d!374796 () Bool)

(assert (= bs!331527 (and d!374796 b!1328815)))

(declare-fun lambda!55163 () Int)

(assert (=> bs!331527 (= lambda!55163 lambda!55147)))

(assert (=> d!374796 true))

(assert (=> d!374796 true))

(assert (=> d!374796 (Exists!811 lambda!55163)))

(declare-fun lt!439600 () Unit!19614)

(declare-fun choose!8144 (Regex!3653 List!13575) Unit!19614)

(assert (=> d!374796 (= lt!439600 (choose!8144 lt!439472 lt!439502))))

(assert (=> d!374796 (validRegex!1568 lt!439472)))

(assert (=> d!374796 (= (lemmaPrefixMatchThenExistsStringThatMatches!129 lt!439472 lt!439502) lt!439600)))

(declare-fun bs!331528 () Bool)

(assert (= bs!331528 d!374796))

(declare-fun m!1485991 () Bool)

(assert (=> bs!331528 m!1485991))

(declare-fun m!1485993 () Bool)

(assert (=> bs!331528 m!1485993))

(declare-fun m!1485995 () Bool)

(assert (=> bs!331528 m!1485995))

(assert (=> b!1328815 d!374796))

(declare-fun d!374798 () Bool)

(declare-fun list!5120 (Conc!4449) List!13576)

(assert (=> d!374798 (= (list!5118 (_1!7463 lt!439482)) (list!5120 (c!217810 (_1!7463 lt!439482))))))

(declare-fun bs!331529 () Bool)

(assert (= bs!331529 d!374798))

(declare-fun m!1485997 () Bool)

(assert (=> bs!331529 m!1485997))

(assert (=> b!1328794 d!374798))

(declare-fun b!1329201 () Bool)

(declare-fun e!851579 () Bool)

(declare-fun e!851578 () Bool)

(assert (=> b!1329201 (= e!851579 e!851578)))

(declare-fun res!598689 () Bool)

(declare-fun lt!439620 () tuple2!13154)

(assert (=> b!1329201 (= res!598689 (< (size!10997 (_2!7463 lt!439620)) (size!10997 lt!439499)))))

(assert (=> b!1329201 (=> (not res!598689) (not e!851578))))

(declare-fun b!1329202 () Bool)

(assert (=> b!1329202 (= e!851579 (= (_2!7463 lt!439620) lt!439499))))

(declare-fun d!374800 () Bool)

(declare-fun e!851580 () Bool)

(assert (=> d!374800 e!851580))

(declare-fun res!598691 () Bool)

(assert (=> d!374800 (=> (not res!598691) (not e!851580))))

(assert (=> d!374800 (= res!598691 e!851579)))

(declare-fun c!217900 () Bool)

(assert (=> d!374800 (= c!217900 (> (size!11004 (_1!7463 lt!439620)) 0))))

(declare-fun lexTailRecV2!378 (LexerInterface!2034 List!13577 BalanceConc!8836 BalanceConc!8836 BalanceConc!8836 BalanceConc!8838) tuple2!13154)

(assert (=> d!374800 (= lt!439620 (lexTailRecV2!378 thiss!19762 rules!2550 lt!439499 (BalanceConc!8837 Empty!4448) lt!439499 (BalanceConc!8839 Empty!4449)))))

(assert (=> d!374800 (= (lex!869 thiss!19762 rules!2550 lt!439499) lt!439620)))

(declare-fun b!1329203 () Bool)

(declare-fun isEmpty!8049 (BalanceConc!8838) Bool)

(assert (=> b!1329203 (= e!851578 (not (isEmpty!8049 (_1!7463 lt!439620))))))

(declare-fun b!1329204 () Bool)

(declare-fun res!598690 () Bool)

(assert (=> b!1329204 (=> (not res!598690) (not e!851580))))

(assert (=> b!1329204 (= res!598690 (= (list!5118 (_1!7463 lt!439620)) (_1!7465 (lexList!572 thiss!19762 rules!2550 (list!5119 lt!439499)))))))

(declare-fun b!1329205 () Bool)

(assert (=> b!1329205 (= e!851580 (= (list!5119 (_2!7463 lt!439620)) (_2!7465 (lexList!572 thiss!19762 rules!2550 (list!5119 lt!439499)))))))

(assert (= (and d!374800 c!217900) b!1329201))

(assert (= (and d!374800 (not c!217900)) b!1329202))

(assert (= (and b!1329201 res!598689) b!1329203))

(assert (= (and d!374800 res!598691) b!1329204))

(assert (= (and b!1329204 res!598690) b!1329205))

(declare-fun m!1486067 () Bool)

(assert (=> d!374800 m!1486067))

(declare-fun m!1486069 () Bool)

(assert (=> d!374800 m!1486069))

(declare-fun m!1486071 () Bool)

(assert (=> b!1329205 m!1486071))

(assert (=> b!1329205 m!1485545))

(assert (=> b!1329205 m!1485545))

(assert (=> b!1329205 m!1485547))

(declare-fun m!1486073 () Bool)

(assert (=> b!1329204 m!1486073))

(assert (=> b!1329204 m!1485545))

(assert (=> b!1329204 m!1485545))

(assert (=> b!1329204 m!1485547))

(declare-fun m!1486075 () Bool)

(assert (=> b!1329201 m!1486075))

(declare-fun m!1486077 () Bool)

(assert (=> b!1329201 m!1486077))

(declare-fun m!1486079 () Bool)

(assert (=> b!1329203 m!1486079))

(assert (=> b!1328794 d!374800))

(declare-fun d!374822 () Bool)

(declare-fun lt!439623 () BalanceConc!8836)

(declare-fun printList!573 (LexerInterface!2034 List!13576) List!13575)

(assert (=> d!374822 (= (list!5119 lt!439623) (printList!573 thiss!19762 (list!5118 (singletonSeq!932 t2!34))))))

(declare-fun printTailRec!555 (LexerInterface!2034 BalanceConc!8838 Int BalanceConc!8836) BalanceConc!8836)

(assert (=> d!374822 (= lt!439623 (printTailRec!555 thiss!19762 (singletonSeq!932 t2!34) 0 (BalanceConc!8837 Empty!4448)))))

(assert (=> d!374822 (= (print!808 thiss!19762 (singletonSeq!932 t2!34)) lt!439623)))

(declare-fun bs!331533 () Bool)

(assert (= bs!331533 d!374822))

(declare-fun m!1486081 () Bool)

(assert (=> bs!331533 m!1486081))

(assert (=> bs!331533 m!1485605))

(declare-fun m!1486083 () Bool)

(assert (=> bs!331533 m!1486083))

(assert (=> bs!331533 m!1486083))

(declare-fun m!1486085 () Bool)

(assert (=> bs!331533 m!1486085))

(assert (=> bs!331533 m!1485605))

(declare-fun m!1486087 () Bool)

(assert (=> bs!331533 m!1486087))

(assert (=> b!1328794 d!374822))

(declare-fun d!374824 () Bool)

(declare-fun e!851583 () Bool)

(assert (=> d!374824 e!851583))

(declare-fun res!598694 () Bool)

(assert (=> d!374824 (=> (not res!598694) (not e!851583))))

(declare-fun lt!439626 () BalanceConc!8838)

(assert (=> d!374824 (= res!598694 (= (list!5118 lt!439626) (Cons!13510 t2!34 Nil!13510)))))

(declare-fun singleton!399 (Token!4340) BalanceConc!8838)

(assert (=> d!374824 (= lt!439626 (singleton!399 t2!34))))

(assert (=> d!374824 (= (singletonSeq!932 t2!34) lt!439626)))

(declare-fun b!1329208 () Bool)

(declare-fun isBalanced!1293 (Conc!4449) Bool)

(assert (=> b!1329208 (= e!851583 (isBalanced!1293 (c!217810 lt!439626)))))

(assert (= (and d!374824 res!598694) b!1329208))

(declare-fun m!1486089 () Bool)

(assert (=> d!374824 m!1486089))

(declare-fun m!1486091 () Bool)

(assert (=> d!374824 m!1486091))

(declare-fun m!1486093 () Bool)

(assert (=> b!1329208 m!1486093))

(assert (=> b!1328794 d!374824))

(declare-fun d!374826 () Bool)

(declare-fun lt!439627 () Bool)

(declare-fun e!851584 () Bool)

(assert (=> d!374826 (= lt!439627 e!851584)))

(declare-fun res!598696 () Bool)

(assert (=> d!374826 (=> (not res!598696) (not e!851584))))

(assert (=> d!374826 (= res!598696 (= (list!5118 (_1!7463 (lex!869 thiss!19762 rules!2550 (print!808 thiss!19762 (singletonSeq!932 t2!34))))) (list!5118 (singletonSeq!932 t2!34))))))

(declare-fun e!851585 () Bool)

(assert (=> d!374826 (= lt!439627 e!851585)))

(declare-fun res!598695 () Bool)

(assert (=> d!374826 (=> (not res!598695) (not e!851585))))

(declare-fun lt!439628 () tuple2!13154)

(assert (=> d!374826 (= res!598695 (= (size!11004 (_1!7463 lt!439628)) 1))))

(assert (=> d!374826 (= lt!439628 (lex!869 thiss!19762 rules!2550 (print!808 thiss!19762 (singletonSeq!932 t2!34))))))

(assert (=> d!374826 (not (isEmpty!8045 rules!2550))))

(assert (=> d!374826 (= (rulesProduceIndividualToken!1003 thiss!19762 rules!2550 t2!34) lt!439627)))

(declare-fun b!1329209 () Bool)

(declare-fun res!598697 () Bool)

(assert (=> b!1329209 (=> (not res!598697) (not e!851585))))

(assert (=> b!1329209 (= res!598697 (= (apply!3126 (_1!7463 lt!439628) 0) t2!34))))

(declare-fun b!1329210 () Bool)

(assert (=> b!1329210 (= e!851585 (isEmpty!8044 (_2!7463 lt!439628)))))

(declare-fun b!1329211 () Bool)

(assert (=> b!1329211 (= e!851584 (isEmpty!8044 (_2!7463 (lex!869 thiss!19762 rules!2550 (print!808 thiss!19762 (singletonSeq!932 t2!34))))))))

(assert (= (and d!374826 res!598695) b!1329209))

(assert (= (and b!1329209 res!598697) b!1329210))

(assert (= (and d!374826 res!598696) b!1329211))

(assert (=> d!374826 m!1485605))

(assert (=> d!374826 m!1486083))

(assert (=> d!374826 m!1485651))

(declare-fun m!1486095 () Bool)

(assert (=> d!374826 m!1486095))

(assert (=> d!374826 m!1485607))

(declare-fun m!1486097 () Bool)

(assert (=> d!374826 m!1486097))

(assert (=> d!374826 m!1485605))

(assert (=> d!374826 m!1485607))

(assert (=> d!374826 m!1485605))

(declare-fun m!1486099 () Bool)

(assert (=> d!374826 m!1486099))

(declare-fun m!1486101 () Bool)

(assert (=> b!1329209 m!1486101))

(declare-fun m!1486103 () Bool)

(assert (=> b!1329210 m!1486103))

(assert (=> b!1329211 m!1485605))

(assert (=> b!1329211 m!1485605))

(assert (=> b!1329211 m!1485607))

(assert (=> b!1329211 m!1485607))

(assert (=> b!1329211 m!1486097))

(declare-fun m!1486105 () Bool)

(assert (=> b!1329211 m!1486105))

(assert (=> b!1328793 d!374826))

(declare-fun b!1329222 () Bool)

(declare-fun e!851592 () Bool)

(declare-fun lt!439637 () tuple2!13158)

(assert (=> b!1329222 (= e!851592 (= (_2!7465 lt!439637) (list!5119 lt!439485)))))

(declare-fun b!1329223 () Bool)

(declare-fun e!851594 () Bool)

(declare-fun isEmpty!8050 (List!13576) Bool)

(assert (=> b!1329223 (= e!851594 (not (isEmpty!8050 (_1!7465 lt!439637))))))

(declare-fun b!1329224 () Bool)

(declare-fun e!851593 () tuple2!13158)

(assert (=> b!1329224 (= e!851593 (tuple2!13159 Nil!13510 (list!5119 lt!439485)))))

(declare-fun d!374828 () Bool)

(assert (=> d!374828 e!851592))

(declare-fun c!217905 () Bool)

(declare-fun size!11007 (List!13576) Int)

(assert (=> d!374828 (= c!217905 (> (size!11007 (_1!7465 lt!439637)) 0))))

(assert (=> d!374828 (= lt!439637 e!851593)))

(declare-fun c!217906 () Bool)

(declare-fun lt!439636 () Option!2610)

(assert (=> d!374828 (= c!217906 ((_ is Some!2609) lt!439636))))

(assert (=> d!374828 (= lt!439636 (maxPrefix!1044 thiss!19762 rules!2550 (list!5119 lt!439485)))))

(assert (=> d!374828 (= (lexList!572 thiss!19762 rules!2550 (list!5119 lt!439485)) lt!439637)))

(declare-fun b!1329225 () Bool)

(declare-fun lt!439635 () tuple2!13158)

(assert (=> b!1329225 (= e!851593 (tuple2!13159 (Cons!13510 (_1!7464 (v!21222 lt!439636)) (_1!7465 lt!439635)) (_2!7465 lt!439635)))))

(assert (=> b!1329225 (= lt!439635 (lexList!572 thiss!19762 rules!2550 (_2!7464 (v!21222 lt!439636))))))

(declare-fun b!1329226 () Bool)

(assert (=> b!1329226 (= e!851592 e!851594)))

(declare-fun res!598700 () Bool)

(assert (=> b!1329226 (= res!598700 (< (size!11000 (_2!7465 lt!439637)) (size!11000 (list!5119 lt!439485))))))

(assert (=> b!1329226 (=> (not res!598700) (not e!851594))))

(assert (= (and d!374828 c!217906) b!1329225))

(assert (= (and d!374828 (not c!217906)) b!1329224))

(assert (= (and d!374828 c!217905) b!1329226))

(assert (= (and d!374828 (not c!217905)) b!1329222))

(assert (= (and b!1329226 res!598700) b!1329223))

(declare-fun m!1486107 () Bool)

(assert (=> b!1329223 m!1486107))

(declare-fun m!1486109 () Bool)

(assert (=> d!374828 m!1486109))

(assert (=> d!374828 m!1485579))

(declare-fun m!1486111 () Bool)

(assert (=> d!374828 m!1486111))

(declare-fun m!1486113 () Bool)

(assert (=> b!1329225 m!1486113))

(declare-fun m!1486115 () Bool)

(assert (=> b!1329226 m!1486115))

(assert (=> b!1329226 m!1485579))

(declare-fun m!1486117 () Bool)

(assert (=> b!1329226 m!1486117))

(assert (=> b!1328814 d!374828))

(declare-fun d!374830 () Bool)

(declare-fun list!5121 (Conc!4448) List!13575)

(assert (=> d!374830 (= (list!5119 lt!439485) (list!5121 (c!217808 lt!439485)))))

(declare-fun bs!331534 () Bool)

(assert (= bs!331534 d!374830))

(declare-fun m!1486119 () Bool)

(assert (=> bs!331534 m!1486119))

(assert (=> b!1328814 d!374830))

(declare-fun d!374832 () Bool)

(declare-fun lt!439638 () Bool)

(assert (=> d!374832 (= lt!439638 (select (content!1917 lt!439479) lt!439497))))

(declare-fun e!851595 () Bool)

(assert (=> d!374832 (= lt!439638 e!851595)))

(declare-fun res!598701 () Bool)

(assert (=> d!374832 (=> (not res!598701) (not e!851595))))

(assert (=> d!374832 (= res!598701 ((_ is Cons!13509) lt!439479))))

(assert (=> d!374832 (= (contains!2433 lt!439479 lt!439497) lt!439638)))

(declare-fun b!1329227 () Bool)

(declare-fun e!851596 () Bool)

(assert (=> b!1329227 (= e!851595 e!851596)))

(declare-fun res!598702 () Bool)

(assert (=> b!1329227 (=> res!598702 e!851596)))

(assert (=> b!1329227 (= res!598702 (= (h!18910 lt!439479) lt!439497))))

(declare-fun b!1329228 () Bool)

(assert (=> b!1329228 (= e!851596 (contains!2433 (t!118912 lt!439479) lt!439497))))

(assert (= (and d!374832 res!598701) b!1329227))

(assert (= (and b!1329227 (not res!598702)) b!1329228))

(declare-fun m!1486121 () Bool)

(assert (=> d!374832 m!1486121))

(declare-fun m!1486123 () Bool)

(assert (=> d!374832 m!1486123))

(declare-fun m!1486125 () Bool)

(assert (=> b!1329228 m!1486125))

(assert (=> b!1328813 d!374832))

(declare-fun b!1329257 () Bool)

(declare-fun e!851615 () Bool)

(declare-fun nullable!1161 (Regex!3653) Bool)

(assert (=> b!1329257 (= e!851615 (nullable!1161 lt!439472))))

(declare-fun b!1329258 () Bool)

(declare-fun derivativeStep!913 (Regex!3653 C!7596) Regex!3653)

(declare-fun tail!1906 (List!13575) List!13575)

(assert (=> b!1329258 (= e!851615 (matchR!1655 (derivativeStep!913 lt!439472 (head!2334 lt!439479)) (tail!1906 lt!439479)))))

(declare-fun b!1329259 () Bool)

(declare-fun e!851614 () Bool)

(declare-fun e!851616 () Bool)

(assert (=> b!1329259 (= e!851614 e!851616)))

(declare-fun res!598724 () Bool)

(assert (=> b!1329259 (=> res!598724 e!851616)))

(declare-fun call!89919 () Bool)

(assert (=> b!1329259 (= res!598724 call!89919)))

(declare-fun b!1329260 () Bool)

(declare-fun e!851617 () Bool)

(declare-fun lt!439641 () Bool)

(assert (=> b!1329260 (= e!851617 (= lt!439641 call!89919))))

(declare-fun b!1329261 () Bool)

(declare-fun e!851613 () Bool)

(assert (=> b!1329261 (= e!851613 e!851614)))

(declare-fun res!598725 () Bool)

(assert (=> b!1329261 (=> (not res!598725) (not e!851614))))

(assert (=> b!1329261 (= res!598725 (not lt!439641))))

(declare-fun d!374834 () Bool)

(assert (=> d!374834 e!851617))

(declare-fun c!217915 () Bool)

(assert (=> d!374834 (= c!217915 ((_ is EmptyExpr!3653) lt!439472))))

(assert (=> d!374834 (= lt!439641 e!851615)))

(declare-fun c!217914 () Bool)

(assert (=> d!374834 (= c!217914 (isEmpty!8046 lt!439479))))

(assert (=> d!374834 (validRegex!1568 lt!439472)))

(assert (=> d!374834 (= (matchR!1655 lt!439472 lt!439479) lt!439641)))

(declare-fun b!1329262 () Bool)

(declare-fun e!851612 () Bool)

(assert (=> b!1329262 (= e!851612 (= (head!2334 lt!439479) (c!217809 lt!439472)))))

(declare-fun b!1329263 () Bool)

(declare-fun e!851611 () Bool)

(assert (=> b!1329263 (= e!851617 e!851611)))

(declare-fun c!217913 () Bool)

(assert (=> b!1329263 (= c!217913 ((_ is EmptyLang!3653) lt!439472))))

(declare-fun b!1329264 () Bool)

(assert (=> b!1329264 (= e!851611 (not lt!439641))))

(declare-fun b!1329265 () Bool)

(declare-fun res!598722 () Bool)

(assert (=> b!1329265 (=> res!598722 e!851613)))

(assert (=> b!1329265 (= res!598722 (not ((_ is ElementMatch!3653) lt!439472)))))

(assert (=> b!1329265 (= e!851611 e!851613)))

(declare-fun b!1329266 () Bool)

(declare-fun res!598720 () Bool)

(assert (=> b!1329266 (=> (not res!598720) (not e!851612))))

(assert (=> b!1329266 (= res!598720 (not call!89919))))

(declare-fun b!1329267 () Bool)

(declare-fun res!598721 () Bool)

(assert (=> b!1329267 (=> res!598721 e!851616)))

(assert (=> b!1329267 (= res!598721 (not (isEmpty!8046 (tail!1906 lt!439479))))))

(declare-fun b!1329268 () Bool)

(declare-fun res!598719 () Bool)

(assert (=> b!1329268 (=> (not res!598719) (not e!851612))))

(assert (=> b!1329268 (= res!598719 (isEmpty!8046 (tail!1906 lt!439479)))))

(declare-fun bm!89914 () Bool)

(assert (=> bm!89914 (= call!89919 (isEmpty!8046 lt!439479))))

(declare-fun b!1329269 () Bool)

(declare-fun res!598726 () Bool)

(assert (=> b!1329269 (=> res!598726 e!851613)))

(assert (=> b!1329269 (= res!598726 e!851612)))

(declare-fun res!598723 () Bool)

(assert (=> b!1329269 (=> (not res!598723) (not e!851612))))

(assert (=> b!1329269 (= res!598723 lt!439641)))

(declare-fun b!1329270 () Bool)

(assert (=> b!1329270 (= e!851616 (not (= (head!2334 lt!439479) (c!217809 lt!439472))))))

(assert (= (and d!374834 c!217914) b!1329257))

(assert (= (and d!374834 (not c!217914)) b!1329258))

(assert (= (and d!374834 c!217915) b!1329260))

(assert (= (and d!374834 (not c!217915)) b!1329263))

(assert (= (and b!1329263 c!217913) b!1329264))

(assert (= (and b!1329263 (not c!217913)) b!1329265))

(assert (= (and b!1329265 (not res!598722)) b!1329269))

(assert (= (and b!1329269 res!598723) b!1329266))

(assert (= (and b!1329266 res!598720) b!1329268))

(assert (= (and b!1329268 res!598719) b!1329262))

(assert (= (and b!1329269 (not res!598726)) b!1329261))

(assert (= (and b!1329261 res!598725) b!1329259))

(assert (= (and b!1329259 (not res!598724)) b!1329267))

(assert (= (and b!1329267 (not res!598721)) b!1329270))

(assert (= (or b!1329260 b!1329259 b!1329266) bm!89914))

(declare-fun m!1486127 () Bool)

(assert (=> b!1329257 m!1486127))

(declare-fun m!1486129 () Bool)

(assert (=> b!1329267 m!1486129))

(assert (=> b!1329267 m!1486129))

(declare-fun m!1486131 () Bool)

(assert (=> b!1329267 m!1486131))

(assert (=> b!1329268 m!1486129))

(assert (=> b!1329268 m!1486129))

(assert (=> b!1329268 m!1486131))

(declare-fun m!1486133 () Bool)

(assert (=> b!1329258 m!1486133))

(assert (=> b!1329258 m!1486133))

(declare-fun m!1486135 () Bool)

(assert (=> b!1329258 m!1486135))

(assert (=> b!1329258 m!1486129))

(assert (=> b!1329258 m!1486135))

(assert (=> b!1329258 m!1486129))

(declare-fun m!1486137 () Bool)

(assert (=> b!1329258 m!1486137))

(assert (=> b!1329262 m!1486133))

(declare-fun m!1486139 () Bool)

(assert (=> d!374834 m!1486139))

(assert (=> d!374834 m!1485995))

(assert (=> bm!89914 m!1486139))

(assert (=> b!1329270 m!1486133))

(assert (=> b!1328792 d!374834))

(declare-fun bs!331535 () Bool)

(declare-fun d!374836 () Bool)

(assert (= bs!331535 (and d!374836 b!1328791)))

(declare-fun lambda!55168 () Int)

(assert (=> bs!331535 (not (= lambda!55168 lambda!55149))))

(declare-fun lambda!55169 () Int)

(assert (=> bs!331535 (= lambda!55169 lambda!55149)))

(declare-fun bs!331536 () Bool)

(assert (= bs!331536 d!374836))

(assert (=> bs!331536 (not (= lambda!55169 lambda!55168))))

(assert (=> d!374836 true))

(assert (=> d!374836 (= (matchR!1655 lt!439472 lt!439479) (exists!380 lt!439501 lambda!55169))))

(declare-fun lt!439648 () Unit!19614)

(declare-fun choose!8145 (Regex!3653 List!13578 List!13575) Unit!19614)

(assert (=> d!374836 (= lt!439648 (choose!8145 lt!439472 lt!439501 lt!439479))))

(declare-fun forall!3321 (List!13578 Int) Bool)

(assert (=> d!374836 (forall!3321 lt!439501 lambda!55168)))

(assert (=> d!374836 (= (matchRGenUnionSpec!90 lt!439472 lt!439501 lt!439479) lt!439648)))

(assert (=> bs!331536 m!1485619))

(declare-fun m!1486141 () Bool)

(assert (=> bs!331536 m!1486141))

(declare-fun m!1486143 () Bool)

(assert (=> bs!331536 m!1486143))

(declare-fun m!1486145 () Bool)

(assert (=> bs!331536 m!1486145))

(assert (=> b!1328791 d!374836))

(assert (=> b!1328791 d!374696))

(declare-fun bs!331537 () Bool)

(declare-fun d!374838 () Bool)

(assert (= bs!331537 (and d!374838 b!1328791)))

(declare-fun lambda!55172 () Int)

(assert (=> bs!331537 (not (= lambda!55172 lambda!55149))))

(declare-fun bs!331538 () Bool)

(assert (= bs!331538 (and d!374838 d!374836)))

(assert (=> bs!331538 (not (= lambda!55172 lambda!55168))))

(assert (=> bs!331538 (not (= lambda!55172 lambda!55169))))

(assert (=> d!374838 true))

(declare-fun order!8139 () Int)

(declare-fun dynLambda!5952 (Int Int) Int)

(assert (=> d!374838 (< (dynLambda!5952 order!8139 lambda!55149) (dynLambda!5952 order!8139 lambda!55172))))

(assert (=> d!374838 (= (exists!380 (map!2975 rules!2550 lambda!55148) lambda!55149) (not (forall!3321 (map!2975 rules!2550 lambda!55148) lambda!55172)))))

(declare-fun bs!331539 () Bool)

(assert (= bs!331539 d!374838))

(assert (=> bs!331539 m!1485535))

(declare-fun m!1486157 () Bool)

(assert (=> bs!331539 m!1486157))

(assert (=> b!1328791 d!374838))

(declare-fun bs!331540 () Bool)

(declare-fun d!374840 () Bool)

(assert (= bs!331540 (and d!374840 b!1328791)))

(declare-fun lambda!55173 () Int)

(assert (=> bs!331540 (not (= lambda!55173 lambda!55149))))

(declare-fun bs!331541 () Bool)

(assert (= bs!331541 (and d!374840 d!374836)))

(assert (=> bs!331541 (not (= lambda!55173 lambda!55168))))

(assert (=> bs!331541 (not (= lambda!55173 lambda!55169))))

(declare-fun bs!331543 () Bool)

(assert (= bs!331543 (and d!374840 d!374838)))

(assert (=> bs!331543 (= lambda!55173 lambda!55172)))

(assert (=> d!374840 true))

(assert (=> d!374840 (< (dynLambda!5952 order!8139 lambda!55149) (dynLambda!5952 order!8139 lambda!55173))))

(assert (=> d!374840 (= (exists!380 lt!439501 lambda!55149) (not (forall!3321 lt!439501 lambda!55173)))))

(declare-fun bs!331544 () Bool)

(assert (= bs!331544 d!374840))

(declare-fun m!1486165 () Bool)

(assert (=> bs!331544 m!1486165))

(assert (=> b!1328791 d!374840))

(declare-fun b!1329330 () Bool)

(declare-fun res!598769 () Bool)

(declare-fun e!851649 () Bool)

(assert (=> b!1329330 (=> (not res!598769) (not e!851649))))

(declare-fun lt!439675 () Option!2610)

(declare-fun get!4285 (Option!2610) tuple2!13156)

(declare-fun apply!3129 (TokenValueInjection!4518 BalanceConc!8836) TokenValue!2429)

(declare-fun seqFromList!1610 (List!13575) BalanceConc!8836)

(assert (=> b!1329330 (= res!598769 (= (value!76294 (_1!7464 (get!4285 lt!439675))) (apply!3129 (transformation!2339 (rule!4084 (_1!7464 (get!4285 lt!439675)))) (seqFromList!1610 (originalCharacters!3201 (_1!7464 (get!4285 lt!439675)))))))))

(declare-fun call!89922 () Option!2610)

(declare-fun bm!89917 () Bool)

(declare-fun maxPrefixOneRule!592 (LexerInterface!2034 Rule!4478 List!13575) Option!2610)

(assert (=> bm!89917 (= call!89922 (maxPrefixOneRule!592 thiss!19762 (h!18912 rules!2550) lt!439494))))

(declare-fun b!1329332 () Bool)

(assert (=> b!1329332 (= e!851649 (contains!2434 rules!2550 (rule!4084 (_1!7464 (get!4285 lt!439675)))))))

(declare-fun b!1329333 () Bool)

(declare-fun e!851650 () Option!2610)

(assert (=> b!1329333 (= e!851650 call!89922)))

(declare-fun b!1329334 () Bool)

(declare-fun res!598767 () Bool)

(assert (=> b!1329334 (=> (not res!598767) (not e!851649))))

(assert (=> b!1329334 (= res!598767 (< (size!11000 (_2!7464 (get!4285 lt!439675))) (size!11000 lt!439494)))))

(declare-fun b!1329335 () Bool)

(declare-fun res!598768 () Bool)

(assert (=> b!1329335 (=> (not res!598768) (not e!851649))))

(assert (=> b!1329335 (= res!598768 (= (++!3450 (list!5119 (charsOf!1311 (_1!7464 (get!4285 lt!439675)))) (_2!7464 (get!4285 lt!439675))) lt!439494))))

(declare-fun b!1329336 () Bool)

(declare-fun res!598770 () Bool)

(assert (=> b!1329336 (=> (not res!598770) (not e!851649))))

(assert (=> b!1329336 (= res!598770 (matchR!1655 (regex!2339 (rule!4084 (_1!7464 (get!4285 lt!439675)))) (list!5119 (charsOf!1311 (_1!7464 (get!4285 lt!439675))))))))

(declare-fun d!374848 () Bool)

(declare-fun e!851651 () Bool)

(assert (=> d!374848 e!851651))

(declare-fun res!598772 () Bool)

(assert (=> d!374848 (=> res!598772 e!851651)))

(declare-fun isEmpty!8052 (Option!2610) Bool)

(assert (=> d!374848 (= res!598772 (isEmpty!8052 lt!439675))))

(assert (=> d!374848 (= lt!439675 e!851650)))

(declare-fun c!217924 () Bool)

(assert (=> d!374848 (= c!217924 (and ((_ is Cons!13511) rules!2550) ((_ is Nil!13511) (t!118914 rules!2550))))))

(declare-fun lt!439674 () Unit!19614)

(declare-fun lt!439677 () Unit!19614)

(assert (=> d!374848 (= lt!439674 lt!439677)))

(declare-fun isPrefix!1087 (List!13575 List!13575) Bool)

(assert (=> d!374848 (isPrefix!1087 lt!439494 lt!439494)))

(declare-fun lemmaIsPrefixRefl!766 (List!13575 List!13575) Unit!19614)

(assert (=> d!374848 (= lt!439677 (lemmaIsPrefixRefl!766 lt!439494 lt!439494))))

(declare-fun rulesValidInductive!739 (LexerInterface!2034 List!13577) Bool)

(assert (=> d!374848 (rulesValidInductive!739 thiss!19762 rules!2550)))

(assert (=> d!374848 (= (maxPrefix!1044 thiss!19762 rules!2550 lt!439494) lt!439675)))

(declare-fun b!1329331 () Bool)

(declare-fun lt!439678 () Option!2610)

(declare-fun lt!439676 () Option!2610)

(assert (=> b!1329331 (= e!851650 (ite (and ((_ is None!2609) lt!439678) ((_ is None!2609) lt!439676)) None!2609 (ite ((_ is None!2609) lt!439676) lt!439678 (ite ((_ is None!2609) lt!439678) lt!439676 (ite (>= (size!10996 (_1!7464 (v!21222 lt!439678))) (size!10996 (_1!7464 (v!21222 lt!439676)))) lt!439678 lt!439676)))))))

(assert (=> b!1329331 (= lt!439678 call!89922)))

(assert (=> b!1329331 (= lt!439676 (maxPrefix!1044 thiss!19762 (t!118914 rules!2550) lt!439494))))

(declare-fun b!1329337 () Bool)

(assert (=> b!1329337 (= e!851651 e!851649)))

(declare-fun res!598771 () Bool)

(assert (=> b!1329337 (=> (not res!598771) (not e!851649))))

(declare-fun isDefined!2190 (Option!2610) Bool)

(assert (=> b!1329337 (= res!598771 (isDefined!2190 lt!439675))))

(declare-fun b!1329338 () Bool)

(declare-fun res!598766 () Bool)

(assert (=> b!1329338 (=> (not res!598766) (not e!851649))))

(assert (=> b!1329338 (= res!598766 (= (list!5119 (charsOf!1311 (_1!7464 (get!4285 lt!439675)))) (originalCharacters!3201 (_1!7464 (get!4285 lt!439675)))))))

(assert (= (and d!374848 c!217924) b!1329333))

(assert (= (and d!374848 (not c!217924)) b!1329331))

(assert (= (or b!1329333 b!1329331) bm!89917))

(assert (= (and d!374848 (not res!598772)) b!1329337))

(assert (= (and b!1329337 res!598771) b!1329338))

(assert (= (and b!1329338 res!598766) b!1329334))

(assert (= (and b!1329334 res!598767) b!1329335))

(assert (= (and b!1329335 res!598768) b!1329330))

(assert (= (and b!1329330 res!598769) b!1329336))

(assert (= (and b!1329336 res!598770) b!1329332))

(declare-fun m!1486223 () Bool)

(assert (=> d!374848 m!1486223))

(declare-fun m!1486225 () Bool)

(assert (=> d!374848 m!1486225))

(declare-fun m!1486228 () Bool)

(assert (=> d!374848 m!1486228))

(declare-fun m!1486231 () Bool)

(assert (=> d!374848 m!1486231))

(declare-fun m!1486233 () Bool)

(assert (=> b!1329332 m!1486233))

(declare-fun m!1486235 () Bool)

(assert (=> b!1329332 m!1486235))

(assert (=> b!1329330 m!1486233))

(declare-fun m!1486239 () Bool)

(assert (=> b!1329330 m!1486239))

(assert (=> b!1329330 m!1486239))

(declare-fun m!1486245 () Bool)

(assert (=> b!1329330 m!1486245))

(assert (=> b!1329336 m!1486233))

(declare-fun m!1486247 () Bool)

(assert (=> b!1329336 m!1486247))

(assert (=> b!1329336 m!1486247))

(declare-fun m!1486251 () Bool)

(assert (=> b!1329336 m!1486251))

(assert (=> b!1329336 m!1486251))

(declare-fun m!1486253 () Bool)

(assert (=> b!1329336 m!1486253))

(declare-fun m!1486255 () Bool)

(assert (=> bm!89917 m!1486255))

(assert (=> b!1329335 m!1486233))

(assert (=> b!1329335 m!1486247))

(assert (=> b!1329335 m!1486247))

(assert (=> b!1329335 m!1486251))

(assert (=> b!1329335 m!1486251))

(declare-fun m!1486257 () Bool)

(assert (=> b!1329335 m!1486257))

(assert (=> b!1329338 m!1486233))

(assert (=> b!1329338 m!1486247))

(assert (=> b!1329338 m!1486247))

(assert (=> b!1329338 m!1486251))

(declare-fun m!1486259 () Bool)

(assert (=> b!1329337 m!1486259))

(declare-fun m!1486261 () Bool)

(assert (=> b!1329331 m!1486261))

(assert (=> b!1329334 m!1486233))

(declare-fun m!1486263 () Bool)

(assert (=> b!1329334 m!1486263))

(declare-fun m!1486265 () Bool)

(assert (=> b!1329334 m!1486265))

(assert (=> b!1328833 d!374848))

(declare-fun d!374874 () Bool)

(declare-fun c!217928 () Bool)

(assert (=> d!374874 (= c!217928 ((_ is IntegerValue!7287) (value!76294 t2!34)))))

(declare-fun e!851657 () Bool)

(assert (=> d!374874 (= (inv!21 (value!76294 t2!34)) e!851657)))

(declare-fun b!1329347 () Bool)

(declare-fun e!851658 () Bool)

(assert (=> b!1329347 (= e!851658 (inv!15 (value!76294 t2!34)))))

(declare-fun b!1329348 () Bool)

(declare-fun res!598777 () Bool)

(assert (=> b!1329348 (=> res!598777 e!851658)))

(assert (=> b!1329348 (= res!598777 (not ((_ is IntegerValue!7289) (value!76294 t2!34))))))

(declare-fun e!851659 () Bool)

(assert (=> b!1329348 (= e!851659 e!851658)))

(declare-fun b!1329349 () Bool)

(assert (=> b!1329349 (= e!851657 (inv!16 (value!76294 t2!34)))))

(declare-fun b!1329350 () Bool)

(assert (=> b!1329350 (= e!851659 (inv!17 (value!76294 t2!34)))))

(declare-fun b!1329351 () Bool)

(assert (=> b!1329351 (= e!851657 e!851659)))

(declare-fun c!217927 () Bool)

(assert (=> b!1329351 (= c!217927 ((_ is IntegerValue!7288) (value!76294 t2!34)))))

(assert (= (and d!374874 c!217928) b!1329349))

(assert (= (and d!374874 (not c!217928)) b!1329351))

(assert (= (and b!1329351 c!217927) b!1329350))

(assert (= (and b!1329351 (not c!217927)) b!1329348))

(assert (= (and b!1329348 (not res!598777)) b!1329347))

(declare-fun m!1486283 () Bool)

(assert (=> b!1329347 m!1486283))

(declare-fun m!1486287 () Bool)

(assert (=> b!1329349 m!1486287))

(declare-fun m!1486289 () Bool)

(assert (=> b!1329350 m!1486289))

(assert (=> b!1328812 d!374874))

(declare-fun d!374882 () Bool)

(assert (=> d!374882 (= (isEmpty!8045 rules!2550) ((_ is Nil!13511) rules!2550))))

(assert (=> b!1328811 d!374882))

(declare-fun d!374886 () Bool)

(declare-fun lt!439687 () Bool)

(assert (=> d!374886 (= lt!439687 (isEmpty!8046 (list!5119 (_2!7463 lt!439489))))))

(assert (=> d!374886 (= lt!439687 (isEmpty!8048 (c!217808 (_2!7463 lt!439489))))))

(assert (=> d!374886 (= (isEmpty!8044 (_2!7463 lt!439489)) lt!439687)))

(declare-fun bs!331559 () Bool)

(assert (= bs!331559 d!374886))

(declare-fun m!1486297 () Bool)

(assert (=> bs!331559 m!1486297))

(assert (=> bs!331559 m!1486297))

(declare-fun m!1486299 () Bool)

(assert (=> bs!331559 m!1486299))

(declare-fun m!1486301 () Bool)

(assert (=> bs!331559 m!1486301))

(assert (=> b!1328790 d!374886))

(declare-fun d!374888 () Bool)

(assert (=> d!374888 (= (inv!17856 (tag!2601 (rule!4084 t2!34))) (= (mod (str.len (value!76293 (tag!2601 (rule!4084 t2!34)))) 2) 0))))

(assert (=> b!1328789 d!374888))

(declare-fun d!374892 () Bool)

(declare-fun res!598782 () Bool)

(declare-fun e!851668 () Bool)

(assert (=> d!374892 (=> (not res!598782) (not e!851668))))

(declare-fun semiInverseModEq!881 (Int Int) Bool)

(assert (=> d!374892 (= res!598782 (semiInverseModEq!881 (toChars!3429 (transformation!2339 (rule!4084 t2!34))) (toValue!3570 (transformation!2339 (rule!4084 t2!34)))))))

(assert (=> d!374892 (= (inv!17859 (transformation!2339 (rule!4084 t2!34))) e!851668)))

(declare-fun b!1329364 () Bool)

(declare-fun equivClasses!840 (Int Int) Bool)

(assert (=> b!1329364 (= e!851668 (equivClasses!840 (toChars!3429 (transformation!2339 (rule!4084 t2!34))) (toValue!3570 (transformation!2339 (rule!4084 t2!34)))))))

(assert (= (and d!374892 res!598782) b!1329364))

(declare-fun m!1486309 () Bool)

(assert (=> d!374892 m!1486309))

(declare-fun m!1486311 () Bool)

(assert (=> b!1329364 m!1486311))

(assert (=> b!1328789 d!374892))

(declare-fun d!374894 () Bool)

(declare-fun res!598789 () Bool)

(declare-fun e!851679 () Bool)

(assert (=> d!374894 (=> res!598789 e!851679)))

(assert (=> d!374894 (= res!598789 (not ((_ is Cons!13511) rules!2550)))))

(assert (=> d!374894 (= (sepAndNonSepRulesDisjointChars!712 rules!2550 rules!2550) e!851679)))

(declare-fun b!1329379 () Bool)

(declare-fun e!851680 () Bool)

(assert (=> b!1329379 (= e!851679 e!851680)))

(declare-fun res!598790 () Bool)

(assert (=> b!1329379 (=> (not res!598790) (not e!851680))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!325 (Rule!4478 List!13577) Bool)

(assert (=> b!1329379 (= res!598790 (ruleDisjointCharsFromAllFromOtherType!325 (h!18912 rules!2550) rules!2550))))

(declare-fun b!1329380 () Bool)

(assert (=> b!1329380 (= e!851680 (sepAndNonSepRulesDisjointChars!712 rules!2550 (t!118914 rules!2550)))))

(assert (= (and d!374894 (not res!598789)) b!1329379))

(assert (= (and b!1329379 res!598790) b!1329380))

(declare-fun m!1486327 () Bool)

(assert (=> b!1329379 m!1486327))

(declare-fun m!1486329 () Bool)

(assert (=> b!1329380 m!1486329))

(assert (=> b!1328832 d!374894))

(declare-fun b!1329381 () Bool)

(declare-fun e!851685 () Bool)

(assert (=> b!1329381 (= e!851685 (nullable!1161 (regex!2339 (rule!4084 t1!34))))))

(declare-fun b!1329382 () Bool)

(assert (=> b!1329382 (= e!851685 (matchR!1655 (derivativeStep!913 (regex!2339 (rule!4084 t1!34)) (head!2334 lt!439494)) (tail!1906 lt!439494)))))

(declare-fun b!1329383 () Bool)

(declare-fun e!851684 () Bool)

(declare-fun e!851686 () Bool)

(assert (=> b!1329383 (= e!851684 e!851686)))

(declare-fun res!598796 () Bool)

(assert (=> b!1329383 (=> res!598796 e!851686)))

(declare-fun call!89931 () Bool)

(assert (=> b!1329383 (= res!598796 call!89931)))

(declare-fun b!1329384 () Bool)

(declare-fun e!851687 () Bool)

(declare-fun lt!439692 () Bool)

(assert (=> b!1329384 (= e!851687 (= lt!439692 call!89931))))

(declare-fun b!1329385 () Bool)

(declare-fun e!851683 () Bool)

(assert (=> b!1329385 (= e!851683 e!851684)))

(declare-fun res!598797 () Bool)

(assert (=> b!1329385 (=> (not res!598797) (not e!851684))))

(assert (=> b!1329385 (= res!598797 (not lt!439692))))

(declare-fun d!374902 () Bool)

(assert (=> d!374902 e!851687))

(declare-fun c!217940 () Bool)

(assert (=> d!374902 (= c!217940 ((_ is EmptyExpr!3653) (regex!2339 (rule!4084 t1!34))))))

(assert (=> d!374902 (= lt!439692 e!851685)))

(declare-fun c!217939 () Bool)

(assert (=> d!374902 (= c!217939 (isEmpty!8046 lt!439494))))

(assert (=> d!374902 (validRegex!1568 (regex!2339 (rule!4084 t1!34)))))

(assert (=> d!374902 (= (matchR!1655 (regex!2339 (rule!4084 t1!34)) lt!439494) lt!439692)))

(declare-fun b!1329386 () Bool)

(declare-fun e!851682 () Bool)

(assert (=> b!1329386 (= e!851682 (= (head!2334 lt!439494) (c!217809 (regex!2339 (rule!4084 t1!34)))))))

(declare-fun b!1329387 () Bool)

(declare-fun e!851681 () Bool)

(assert (=> b!1329387 (= e!851687 e!851681)))

(declare-fun c!217938 () Bool)

(assert (=> b!1329387 (= c!217938 ((_ is EmptyLang!3653) (regex!2339 (rule!4084 t1!34))))))

(declare-fun b!1329388 () Bool)

(assert (=> b!1329388 (= e!851681 (not lt!439692))))

(declare-fun b!1329389 () Bool)

(declare-fun res!598794 () Bool)

(assert (=> b!1329389 (=> res!598794 e!851683)))

(assert (=> b!1329389 (= res!598794 (not ((_ is ElementMatch!3653) (regex!2339 (rule!4084 t1!34)))))))

(assert (=> b!1329389 (= e!851681 e!851683)))

(declare-fun b!1329390 () Bool)

(declare-fun res!598792 () Bool)

(assert (=> b!1329390 (=> (not res!598792) (not e!851682))))

(assert (=> b!1329390 (= res!598792 (not call!89931))))

(declare-fun b!1329391 () Bool)

(declare-fun res!598793 () Bool)

(assert (=> b!1329391 (=> res!598793 e!851686)))

(assert (=> b!1329391 (= res!598793 (not (isEmpty!8046 (tail!1906 lt!439494))))))

(declare-fun b!1329392 () Bool)

(declare-fun res!598791 () Bool)

(assert (=> b!1329392 (=> (not res!598791) (not e!851682))))

(assert (=> b!1329392 (= res!598791 (isEmpty!8046 (tail!1906 lt!439494)))))

(declare-fun bm!89926 () Bool)

(assert (=> bm!89926 (= call!89931 (isEmpty!8046 lt!439494))))

(declare-fun b!1329393 () Bool)

(declare-fun res!598798 () Bool)

(assert (=> b!1329393 (=> res!598798 e!851683)))

(assert (=> b!1329393 (= res!598798 e!851682)))

(declare-fun res!598795 () Bool)

(assert (=> b!1329393 (=> (not res!598795) (not e!851682))))

(assert (=> b!1329393 (= res!598795 lt!439692)))

(declare-fun b!1329394 () Bool)

(assert (=> b!1329394 (= e!851686 (not (= (head!2334 lt!439494) (c!217809 (regex!2339 (rule!4084 t1!34))))))))

(assert (= (and d!374902 c!217939) b!1329381))

(assert (= (and d!374902 (not c!217939)) b!1329382))

(assert (= (and d!374902 c!217940) b!1329384))

(assert (= (and d!374902 (not c!217940)) b!1329387))

(assert (= (and b!1329387 c!217938) b!1329388))

(assert (= (and b!1329387 (not c!217938)) b!1329389))

(assert (= (and b!1329389 (not res!598794)) b!1329393))

(assert (= (and b!1329393 res!598795) b!1329390))

(assert (= (and b!1329390 res!598792) b!1329392))

(assert (= (and b!1329392 res!598791) b!1329386))

(assert (= (and b!1329393 (not res!598798)) b!1329385))

(assert (= (and b!1329385 res!598797) b!1329383))

(assert (= (and b!1329383 (not res!598796)) b!1329391))

(assert (= (and b!1329391 (not res!598793)) b!1329394))

(assert (= (or b!1329384 b!1329383 b!1329390) bm!89926))

(declare-fun m!1486331 () Bool)

(assert (=> b!1329381 m!1486331))

(declare-fun m!1486333 () Bool)

(assert (=> b!1329391 m!1486333))

(assert (=> b!1329391 m!1486333))

(declare-fun m!1486335 () Bool)

(assert (=> b!1329391 m!1486335))

(assert (=> b!1329392 m!1486333))

(assert (=> b!1329392 m!1486333))

(assert (=> b!1329392 m!1486335))

(assert (=> b!1329382 m!1485595))

(assert (=> b!1329382 m!1485595))

(declare-fun m!1486337 () Bool)

(assert (=> b!1329382 m!1486337))

(assert (=> b!1329382 m!1486333))

(assert (=> b!1329382 m!1486337))

(assert (=> b!1329382 m!1486333))

(declare-fun m!1486339 () Bool)

(assert (=> b!1329382 m!1486339))

(assert (=> b!1329386 m!1485595))

(declare-fun m!1486341 () Bool)

(assert (=> d!374902 m!1486341))

(assert (=> d!374902 m!1485927))

(assert (=> bm!89926 m!1486341))

(assert (=> b!1329394 m!1485595))

(assert (=> b!1328799 d!374902))

(declare-fun d!374904 () Bool)

(declare-fun dynLambda!5953 (Int Rule!4478) Bool)

(assert (=> d!374904 (dynLambda!5953 lambda!55151 (rule!4084 t2!34))))

(declare-fun lt!439695 () Unit!19614)

(declare-fun choose!8149 (List!13577 Int Rule!4478) Unit!19614)

(assert (=> d!374904 (= lt!439695 (choose!8149 rules!2550 lambda!55151 (rule!4084 t2!34)))))

(declare-fun e!851696 () Bool)

(assert (=> d!374904 e!851696))

(declare-fun res!598807 () Bool)

(assert (=> d!374904 (=> (not res!598807) (not e!851696))))

(assert (=> d!374904 (= res!598807 (forall!3319 rules!2550 lambda!55151))))

(assert (=> d!374904 (= (forallContained!590 rules!2550 lambda!55151 (rule!4084 t2!34)) lt!439695)))

(declare-fun b!1329403 () Bool)

(assert (=> b!1329403 (= e!851696 (contains!2434 rules!2550 (rule!4084 t2!34)))))

(assert (= (and d!374904 res!598807) b!1329403))

(declare-fun b_lambda!39045 () Bool)

(assert (=> (not b_lambda!39045) (not d!374904)))

(declare-fun m!1486347 () Bool)

(assert (=> d!374904 m!1486347))

(declare-fun m!1486349 () Bool)

(assert (=> d!374904 m!1486349))

(declare-fun m!1486351 () Bool)

(assert (=> d!374904 m!1486351))

(assert (=> b!1329403 m!1485555))

(assert (=> b!1328799 d!374904))

(declare-fun d!374908 () Bool)

(assert (=> d!374908 (dynLambda!5953 lambda!55151 (rule!4084 t1!34))))

(declare-fun lt!439696 () Unit!19614)

(assert (=> d!374908 (= lt!439696 (choose!8149 rules!2550 lambda!55151 (rule!4084 t1!34)))))

(declare-fun e!851699 () Bool)

(assert (=> d!374908 e!851699))

(declare-fun res!598810 () Bool)

(assert (=> d!374908 (=> (not res!598810) (not e!851699))))

(assert (=> d!374908 (= res!598810 (forall!3319 rules!2550 lambda!55151))))

(assert (=> d!374908 (= (forallContained!590 rules!2550 lambda!55151 (rule!4084 t1!34)) lt!439696)))

(declare-fun b!1329406 () Bool)

(assert (=> b!1329406 (= e!851699 (contains!2434 rules!2550 (rule!4084 t1!34)))))

(assert (= (and d!374908 res!598810) b!1329406))

(declare-fun b_lambda!39047 () Bool)

(assert (=> (not b_lambda!39047) (not d!374908)))

(declare-fun m!1486353 () Bool)

(assert (=> d!374908 m!1486353))

(declare-fun m!1486355 () Bool)

(assert (=> d!374908 m!1486355))

(assert (=> d!374908 m!1486351))

(assert (=> b!1329406 m!1485533))

(assert (=> b!1328799 d!374908))

(declare-fun d!374910 () Bool)

(assert (=> d!374910 (dynLambda!5953 lambda!55151 lt!439475)))

(declare-fun lt!439697 () Unit!19614)

(assert (=> d!374910 (= lt!439697 (choose!8149 rules!2550 lambda!55151 lt!439475))))

(declare-fun e!851700 () Bool)

(assert (=> d!374910 e!851700))

(declare-fun res!598811 () Bool)

(assert (=> d!374910 (=> (not res!598811) (not e!851700))))

(assert (=> d!374910 (= res!598811 (forall!3319 rules!2550 lambda!55151))))

(assert (=> d!374910 (= (forallContained!590 rules!2550 lambda!55151 lt!439475) lt!439697)))

(declare-fun b!1329407 () Bool)

(assert (=> b!1329407 (= e!851700 (contains!2434 rules!2550 lt!439475))))

(assert (= (and d!374910 res!598811) b!1329407))

(declare-fun b_lambda!39049 () Bool)

(assert (=> (not b_lambda!39049) (not d!374910)))

(declare-fun m!1486357 () Bool)

(assert (=> d!374910 m!1486357))

(declare-fun m!1486359 () Bool)

(assert (=> d!374910 m!1486359))

(assert (=> d!374910 m!1486351))

(assert (=> b!1329407 m!1485543))

(assert (=> b!1328799 d!374910))

(declare-fun d!374912 () Bool)

(declare-fun lt!439698 () Bool)

(assert (=> d!374912 (= lt!439698 (select (content!1917 lt!439502) lt!439478))))

(declare-fun e!851702 () Bool)

(assert (=> d!374912 (= lt!439698 e!851702)))

(declare-fun res!598813 () Bool)

(assert (=> d!374912 (=> (not res!598813) (not e!851702))))

(assert (=> d!374912 (= res!598813 ((_ is Cons!13509) lt!439502))))

(assert (=> d!374912 (= (contains!2433 lt!439502 lt!439478) lt!439698)))

(declare-fun b!1329409 () Bool)

(declare-fun e!851703 () Bool)

(assert (=> b!1329409 (= e!851702 e!851703)))

(declare-fun res!598814 () Bool)

(assert (=> b!1329409 (=> res!598814 e!851703)))

(assert (=> b!1329409 (= res!598814 (= (h!18910 lt!439502) lt!439478))))

(declare-fun b!1329410 () Bool)

(assert (=> b!1329410 (= e!851703 (contains!2433 (t!118912 lt!439502) lt!439478))))

(assert (= (and d!374912 res!598813) b!1329409))

(assert (= (and b!1329409 (not res!598814)) b!1329410))

(assert (=> d!374912 m!1485957))

(declare-fun m!1486365 () Bool)

(assert (=> d!374912 m!1486365))

(declare-fun m!1486367 () Bool)

(assert (=> b!1329410 m!1486367))

(assert (=> b!1328820 d!374912))

(declare-fun d!374916 () Bool)

(declare-fun lt!439700 () Bool)

(assert (=> d!374916 (= lt!439700 (select (content!1917 (usedCharacters!204 (regex!2339 (rule!4084 t2!34)))) lt!439478))))

(declare-fun e!851706 () Bool)

(assert (=> d!374916 (= lt!439700 e!851706)))

(declare-fun res!598817 () Bool)

(assert (=> d!374916 (=> (not res!598817) (not e!851706))))

(assert (=> d!374916 (= res!598817 ((_ is Cons!13509) (usedCharacters!204 (regex!2339 (rule!4084 t2!34)))))))

(assert (=> d!374916 (= (contains!2433 (usedCharacters!204 (regex!2339 (rule!4084 t2!34))) lt!439478) lt!439700)))

(declare-fun b!1329415 () Bool)

(declare-fun e!851707 () Bool)

(assert (=> b!1329415 (= e!851706 e!851707)))

(declare-fun res!598818 () Bool)

(assert (=> b!1329415 (=> res!598818 e!851707)))

(assert (=> b!1329415 (= res!598818 (= (h!18910 (usedCharacters!204 (regex!2339 (rule!4084 t2!34)))) lt!439478))))

(declare-fun b!1329416 () Bool)

(assert (=> b!1329416 (= e!851707 (contains!2433 (t!118912 (usedCharacters!204 (regex!2339 (rule!4084 t2!34)))) lt!439478))))

(assert (= (and d!374916 res!598817) b!1329415))

(assert (= (and b!1329415 (not res!598818)) b!1329416))

(assert (=> d!374916 m!1485513))

(declare-fun m!1486375 () Bool)

(assert (=> d!374916 m!1486375))

(declare-fun m!1486381 () Bool)

(assert (=> d!374916 m!1486381))

(declare-fun m!1486385 () Bool)

(assert (=> b!1329416 m!1486385))

(assert (=> b!1328796 d!374916))

(declare-fun bm!89927 () Bool)

(declare-fun call!89933 () List!13575)

(declare-fun c!217943 () Bool)

(assert (=> bm!89927 (= call!89933 (usedCharacters!204 (ite c!217943 (regOne!7819 (regex!2339 (rule!4084 t2!34))) (regTwo!7818 (regex!2339 (rule!4084 t2!34))))))))

(declare-fun call!89935 () List!13575)

(declare-fun bm!89928 () Bool)

(declare-fun call!89932 () List!13575)

(assert (=> bm!89928 (= call!89935 (++!3450 (ite c!217943 call!89933 call!89932) (ite c!217943 call!89932 call!89933)))))

(declare-fun b!1329417 () Bool)

(declare-fun e!851710 () List!13575)

(assert (=> b!1329417 (= e!851710 Nil!13509)))

(declare-fun b!1329418 () Bool)

(declare-fun e!851711 () List!13575)

(assert (=> b!1329418 (= e!851711 (Cons!13509 (c!217809 (regex!2339 (rule!4084 t2!34))) Nil!13509))))

(declare-fun bm!89929 () Bool)

(declare-fun call!89934 () List!13575)

(assert (=> bm!89929 (= call!89932 call!89934)))

(declare-fun c!217945 () Bool)

(declare-fun bm!89930 () Bool)

(assert (=> bm!89930 (= call!89934 (usedCharacters!204 (ite c!217945 (reg!3982 (regex!2339 (rule!4084 t2!34))) (ite c!217943 (regTwo!7819 (regex!2339 (rule!4084 t2!34))) (regOne!7818 (regex!2339 (rule!4084 t2!34)))))))))

(declare-fun d!374918 () Bool)

(declare-fun c!217942 () Bool)

(assert (=> d!374918 (= c!217942 (or ((_ is EmptyExpr!3653) (regex!2339 (rule!4084 t2!34))) ((_ is EmptyLang!3653) (regex!2339 (rule!4084 t2!34)))))))

(assert (=> d!374918 (= (usedCharacters!204 (regex!2339 (rule!4084 t2!34))) e!851710)))

(declare-fun b!1329419 () Bool)

(assert (=> b!1329419 (= c!217945 ((_ is Star!3653) (regex!2339 (rule!4084 t2!34))))))

(declare-fun e!851708 () List!13575)

(assert (=> b!1329419 (= e!851711 e!851708)))

(declare-fun b!1329420 () Bool)

(assert (=> b!1329420 (= e!851708 call!89934)))

(declare-fun b!1329421 () Bool)

(declare-fun e!851709 () List!13575)

(assert (=> b!1329421 (= e!851708 e!851709)))

(assert (=> b!1329421 (= c!217943 ((_ is Union!3653) (regex!2339 (rule!4084 t2!34))))))

(declare-fun b!1329422 () Bool)

(assert (=> b!1329422 (= e!851709 call!89935)))

(declare-fun b!1329423 () Bool)

(assert (=> b!1329423 (= e!851710 e!851711)))

(declare-fun c!217944 () Bool)

(assert (=> b!1329423 (= c!217944 ((_ is ElementMatch!3653) (regex!2339 (rule!4084 t2!34))))))

(declare-fun b!1329424 () Bool)

(assert (=> b!1329424 (= e!851709 call!89935)))

(assert (= (and d!374918 c!217942) b!1329417))

(assert (= (and d!374918 (not c!217942)) b!1329423))

(assert (= (and b!1329423 c!217944) b!1329418))

(assert (= (and b!1329423 (not c!217944)) b!1329419))

(assert (= (and b!1329419 c!217945) b!1329420))

(assert (= (and b!1329419 (not c!217945)) b!1329421))

(assert (= (and b!1329421 c!217943) b!1329424))

(assert (= (and b!1329421 (not c!217943)) b!1329422))

(assert (= (or b!1329424 b!1329422) bm!89927))

(assert (= (or b!1329424 b!1329422) bm!89929))

(assert (= (or b!1329424 b!1329422) bm!89928))

(assert (= (or b!1329420 bm!89929) bm!89930))

(declare-fun m!1486389 () Bool)

(assert (=> bm!89927 m!1486389))

(declare-fun m!1486391 () Bool)

(assert (=> bm!89928 m!1486391))

(declare-fun m!1486393 () Bool)

(assert (=> bm!89930 m!1486393))

(assert (=> b!1328796 d!374918))

(declare-fun d!374922 () Bool)

(assert (=> d!374922 (= (inv!17856 (tag!2601 (rule!4084 t1!34))) (= (mod (str.len (value!76293 (tag!2601 (rule!4084 t1!34)))) 2) 0))))

(assert (=> b!1328795 d!374922))

(declare-fun d!374924 () Bool)

(declare-fun res!598819 () Bool)

(declare-fun e!851712 () Bool)

(assert (=> d!374924 (=> (not res!598819) (not e!851712))))

(assert (=> d!374924 (= res!598819 (semiInverseModEq!881 (toChars!3429 (transformation!2339 (rule!4084 t1!34))) (toValue!3570 (transformation!2339 (rule!4084 t1!34)))))))

(assert (=> d!374924 (= (inv!17859 (transformation!2339 (rule!4084 t1!34))) e!851712)))

(declare-fun b!1329425 () Bool)

(assert (=> b!1329425 (= e!851712 (equivClasses!840 (toChars!3429 (transformation!2339 (rule!4084 t1!34))) (toValue!3570 (transformation!2339 (rule!4084 t1!34)))))))

(assert (= (and d!374924 res!598819) b!1329425))

(declare-fun m!1486395 () Bool)

(assert (=> d!374924 m!1486395))

(declare-fun m!1486397 () Bool)

(assert (=> b!1329425 m!1486397))

(assert (=> b!1328795 d!374924))

(declare-fun b!1329426 () Bool)

(declare-fun e!851713 () Bool)

(declare-fun lt!439703 () tuple2!13158)

(assert (=> b!1329426 (= e!851713 (= (_2!7465 lt!439703) (list!5119 lt!439499)))))

(declare-fun b!1329427 () Bool)

(declare-fun e!851715 () Bool)

(assert (=> b!1329427 (= e!851715 (not (isEmpty!8050 (_1!7465 lt!439703))))))

(declare-fun b!1329428 () Bool)

(declare-fun e!851714 () tuple2!13158)

(assert (=> b!1329428 (= e!851714 (tuple2!13159 Nil!13510 (list!5119 lt!439499)))))

(declare-fun d!374926 () Bool)

(assert (=> d!374926 e!851713))

(declare-fun c!217946 () Bool)

(assert (=> d!374926 (= c!217946 (> (size!11007 (_1!7465 lt!439703)) 0))))

(assert (=> d!374926 (= lt!439703 e!851714)))

(declare-fun c!217947 () Bool)

(declare-fun lt!439702 () Option!2610)

(assert (=> d!374926 (= c!217947 ((_ is Some!2609) lt!439702))))

(assert (=> d!374926 (= lt!439702 (maxPrefix!1044 thiss!19762 rules!2550 (list!5119 lt!439499)))))

(assert (=> d!374926 (= (lexList!572 thiss!19762 rules!2550 (list!5119 lt!439499)) lt!439703)))

(declare-fun b!1329429 () Bool)

(declare-fun lt!439701 () tuple2!13158)

(assert (=> b!1329429 (= e!851714 (tuple2!13159 (Cons!13510 (_1!7464 (v!21222 lt!439702)) (_1!7465 lt!439701)) (_2!7465 lt!439701)))))

(assert (=> b!1329429 (= lt!439701 (lexList!572 thiss!19762 rules!2550 (_2!7464 (v!21222 lt!439702))))))

(declare-fun b!1329430 () Bool)

(assert (=> b!1329430 (= e!851713 e!851715)))

(declare-fun res!598820 () Bool)

(assert (=> b!1329430 (= res!598820 (< (size!11000 (_2!7465 lt!439703)) (size!11000 (list!5119 lt!439499))))))

(assert (=> b!1329430 (=> (not res!598820) (not e!851715))))

(assert (= (and d!374926 c!217947) b!1329429))

(assert (= (and d!374926 (not c!217947)) b!1329428))

(assert (= (and d!374926 c!217946) b!1329430))

(assert (= (and d!374926 (not c!217946)) b!1329426))

(assert (= (and b!1329430 res!598820) b!1329427))

(declare-fun m!1486399 () Bool)

(assert (=> b!1329427 m!1486399))

(declare-fun m!1486401 () Bool)

(assert (=> d!374926 m!1486401))

(assert (=> d!374926 m!1485545))

(declare-fun m!1486403 () Bool)

(assert (=> d!374926 m!1486403))

(declare-fun m!1486405 () Bool)

(assert (=> b!1329429 m!1486405))

(declare-fun m!1486407 () Bool)

(assert (=> b!1329430 m!1486407))

(assert (=> b!1329430 m!1485545))

(declare-fun m!1486409 () Bool)

(assert (=> b!1329430 m!1486409))

(assert (=> b!1328816 d!374926))

(declare-fun d!374928 () Bool)

(assert (=> d!374928 (= (list!5119 lt!439499) (list!5121 (c!217808 lt!439499)))))

(declare-fun bs!331561 () Bool)

(assert (= bs!331561 d!374928))

(declare-fun m!1486411 () Bool)

(assert (=> bs!331561 m!1486411))

(assert (=> b!1328816 d!374928))

(declare-fun d!374930 () Bool)

(assert (=> d!374930 (= (inv!17856 (tag!2601 (h!18912 rules!2550))) (= (mod (str.len (value!76293 (tag!2601 (h!18912 rules!2550)))) 2) 0))))

(assert (=> b!1328826 d!374930))

(declare-fun d!374932 () Bool)

(declare-fun res!598821 () Bool)

(declare-fun e!851718 () Bool)

(assert (=> d!374932 (=> (not res!598821) (not e!851718))))

(assert (=> d!374932 (= res!598821 (semiInverseModEq!881 (toChars!3429 (transformation!2339 (h!18912 rules!2550))) (toValue!3570 (transformation!2339 (h!18912 rules!2550)))))))

(assert (=> d!374932 (= (inv!17859 (transformation!2339 (h!18912 rules!2550))) e!851718)))

(declare-fun b!1329435 () Bool)

(assert (=> b!1329435 (= e!851718 (equivClasses!840 (toChars!3429 (transformation!2339 (h!18912 rules!2550))) (toValue!3570 (transformation!2339 (h!18912 rules!2550)))))))

(assert (= (and d!374932 res!598821) b!1329435))

(declare-fun m!1486413 () Bool)

(assert (=> d!374932 m!1486413))

(declare-fun m!1486415 () Bool)

(assert (=> b!1329435 m!1486415))

(assert (=> b!1328826 d!374932))

(declare-fun d!374934 () Bool)

(declare-fun res!598824 () Bool)

(declare-fun e!851722 () Bool)

(assert (=> d!374934 (=> (not res!598824) (not e!851722))))

(declare-fun rulesValid!850 (LexerInterface!2034 List!13577) Bool)

(assert (=> d!374934 (= res!598824 (rulesValid!850 thiss!19762 rules!2550))))

(assert (=> d!374934 (= (rulesInvariant!1904 thiss!19762 rules!2550) e!851722)))

(declare-fun b!1329440 () Bool)

(declare-datatypes ((List!13579 0))(
  ( (Nil!13513) (Cons!13513 (h!18914 String!16381) (t!118952 List!13579)) )
))
(declare-fun noDuplicateTag!850 (LexerInterface!2034 List!13577 List!13579) Bool)

(assert (=> b!1329440 (= e!851722 (noDuplicateTag!850 thiss!19762 rules!2550 Nil!13513))))

(assert (= (and d!374934 res!598824) b!1329440))

(declare-fun m!1486423 () Bool)

(assert (=> d!374934 m!1486423))

(declare-fun m!1486425 () Bool)

(assert (=> b!1329440 m!1486425))

(assert (=> b!1328825 d!374934))

(declare-fun b!1329441 () Bool)

(declare-fun e!851724 () Bool)

(declare-fun e!851723 () Bool)

(assert (=> b!1329441 (= e!851724 e!851723)))

(declare-fun res!598825 () Bool)

(declare-fun lt!439710 () tuple2!13154)

(assert (=> b!1329441 (= res!598825 (< (size!10997 (_2!7463 lt!439710)) (size!10997 lt!439485)))))

(assert (=> b!1329441 (=> (not res!598825) (not e!851723))))

(declare-fun b!1329442 () Bool)

(assert (=> b!1329442 (= e!851724 (= (_2!7463 lt!439710) lt!439485))))

(declare-fun d!374938 () Bool)

(declare-fun e!851725 () Bool)

(assert (=> d!374938 e!851725))

(declare-fun res!598827 () Bool)

(assert (=> d!374938 (=> (not res!598827) (not e!851725))))

(assert (=> d!374938 (= res!598827 e!851724)))

(declare-fun c!217951 () Bool)

(assert (=> d!374938 (= c!217951 (> (size!11004 (_1!7463 lt!439710)) 0))))

(assert (=> d!374938 (= lt!439710 (lexTailRecV2!378 thiss!19762 rules!2550 lt!439485 (BalanceConc!8837 Empty!4448) lt!439485 (BalanceConc!8839 Empty!4449)))))

(assert (=> d!374938 (= (lex!869 thiss!19762 rules!2550 lt!439485) lt!439710)))

(declare-fun b!1329443 () Bool)

(assert (=> b!1329443 (= e!851723 (not (isEmpty!8049 (_1!7463 lt!439710))))))

(declare-fun b!1329444 () Bool)

(declare-fun res!598826 () Bool)

(assert (=> b!1329444 (=> (not res!598826) (not e!851725))))

(assert (=> b!1329444 (= res!598826 (= (list!5118 (_1!7463 lt!439710)) (_1!7465 (lexList!572 thiss!19762 rules!2550 (list!5119 lt!439485)))))))

(declare-fun b!1329445 () Bool)

(assert (=> b!1329445 (= e!851725 (= (list!5119 (_2!7463 lt!439710)) (_2!7465 (lexList!572 thiss!19762 rules!2550 (list!5119 lt!439485)))))))

(assert (= (and d!374938 c!217951) b!1329441))

(assert (= (and d!374938 (not c!217951)) b!1329442))

(assert (= (and b!1329441 res!598825) b!1329443))

(assert (= (and d!374938 res!598827) b!1329444))

(assert (= (and b!1329444 res!598826) b!1329445))

(declare-fun m!1486435 () Bool)

(assert (=> d!374938 m!1486435))

(declare-fun m!1486437 () Bool)

(assert (=> d!374938 m!1486437))

(declare-fun m!1486439 () Bool)

(assert (=> b!1329445 m!1486439))

(assert (=> b!1329445 m!1485579))

(assert (=> b!1329445 m!1485579))

(assert (=> b!1329445 m!1485581))

(declare-fun m!1486441 () Bool)

(assert (=> b!1329444 m!1486441))

(assert (=> b!1329444 m!1485579))

(assert (=> b!1329444 m!1485579))

(assert (=> b!1329444 m!1485581))

(declare-fun m!1486447 () Bool)

(assert (=> b!1329441 m!1486447))

(declare-fun m!1486449 () Bool)

(assert (=> b!1329441 m!1486449))

(declare-fun m!1486451 () Bool)

(assert (=> b!1329443 m!1486451))

(assert (=> b!1328804 d!374938))

(declare-fun d!374948 () Bool)

(declare-fun lt!439713 () BalanceConc!8836)

(assert (=> d!374948 (= (list!5119 lt!439713) (printList!573 thiss!19762 (list!5118 (singletonSeq!932 t1!34))))))

(assert (=> d!374948 (= lt!439713 (printTailRec!555 thiss!19762 (singletonSeq!932 t1!34) 0 (BalanceConc!8837 Empty!4448)))))

(assert (=> d!374948 (= (print!808 thiss!19762 (singletonSeq!932 t1!34)) lt!439713)))

(declare-fun bs!331563 () Bool)

(assert (= bs!331563 d!374948))

(declare-fun m!1486453 () Bool)

(assert (=> bs!331563 m!1486453))

(assert (=> bs!331563 m!1485557))

(assert (=> bs!331563 m!1485911))

(assert (=> bs!331563 m!1485911))

(declare-fun m!1486459 () Bool)

(assert (=> bs!331563 m!1486459))

(assert (=> bs!331563 m!1485557))

(declare-fun m!1486461 () Bool)

(assert (=> bs!331563 m!1486461))

(assert (=> b!1328804 d!374948))

(declare-fun b!1329462 () Bool)

(declare-fun e!851740 () Rule!4478)

(assert (=> b!1329462 (= e!851740 (h!18912 rules!2550))))

(declare-fun d!374952 () Bool)

(declare-fun e!851739 () Bool)

(assert (=> d!374952 e!851739))

(declare-fun res!598836 () Bool)

(assert (=> d!374952 (=> (not res!598836) (not e!851739))))

(declare-fun lt!439718 () Rule!4478)

(assert (=> d!374952 (= res!598836 (dynLambda!5953 lambda!55150 lt!439718))))

(assert (=> d!374952 (= lt!439718 e!851740)))

(declare-fun c!217957 () Bool)

(declare-fun e!851741 () Bool)

(assert (=> d!374952 (= c!217957 e!851741)))

(declare-fun res!598837 () Bool)

(assert (=> d!374952 (=> (not res!598837) (not e!851741))))

(assert (=> d!374952 (= res!598837 ((_ is Cons!13511) rules!2550))))

(assert (=> d!374952 (exists!381 rules!2550 lambda!55150)))

(assert (=> d!374952 (= (getWitness!272 rules!2550 lambda!55150) lt!439718)))

(declare-fun b!1329463 () Bool)

(declare-fun lt!439719 () Unit!19614)

(declare-fun Unit!19622 () Unit!19614)

(assert (=> b!1329463 (= lt!439719 Unit!19622)))

(assert (=> b!1329463 false))

(declare-fun e!851738 () Rule!4478)

(declare-fun head!2337 (List!13577) Rule!4478)

(assert (=> b!1329463 (= e!851738 (head!2337 rules!2550))))

(declare-fun b!1329464 () Bool)

(assert (=> b!1329464 (= e!851738 (getWitness!272 (t!118914 rules!2550) lambda!55150))))

(declare-fun b!1329465 () Bool)

(assert (=> b!1329465 (= e!851741 (dynLambda!5953 lambda!55150 (h!18912 rules!2550)))))

(declare-fun b!1329466 () Bool)

(assert (=> b!1329466 (= e!851739 (contains!2434 rules!2550 lt!439718))))

(declare-fun b!1329467 () Bool)

(assert (=> b!1329467 (= e!851740 e!851738)))

(declare-fun c!217956 () Bool)

(assert (=> b!1329467 (= c!217956 ((_ is Cons!13511) rules!2550))))

(assert (= (and d!374952 res!598837) b!1329465))

(assert (= (and d!374952 c!217957) b!1329462))

(assert (= (and d!374952 (not c!217957)) b!1329467))

(assert (= (and b!1329467 c!217956) b!1329464))

(assert (= (and b!1329467 (not c!217956)) b!1329463))

(assert (= (and d!374952 res!598836) b!1329466))

(declare-fun b_lambda!39053 () Bool)

(assert (=> (not b_lambda!39053) (not d!374952)))

(declare-fun b_lambda!39055 () Bool)

(assert (=> (not b_lambda!39055) (not b!1329465)))

(declare-fun m!1486463 () Bool)

(assert (=> b!1329464 m!1486463))

(declare-fun m!1486465 () Bool)

(assert (=> d!374952 m!1486465))

(assert (=> d!374952 m!1485635))

(declare-fun m!1486467 () Bool)

(assert (=> b!1329463 m!1486467))

(declare-fun m!1486469 () Bool)

(assert (=> b!1329465 m!1486469))

(declare-fun m!1486471 () Bool)

(assert (=> b!1329466 m!1486471))

(assert (=> b!1328804 d!374952))

(declare-fun d!374954 () Bool)

(assert (=> d!374954 (= (list!5118 (_1!7463 lt!439489)) (list!5120 (c!217810 (_1!7463 lt!439489))))))

(declare-fun bs!331564 () Bool)

(assert (= bs!331564 d!374954))

(declare-fun m!1486473 () Bool)

(assert (=> bs!331564 m!1486473))

(assert (=> b!1328804 d!374954))

(declare-fun d!374956 () Bool)

(declare-fun e!851742 () Bool)

(assert (=> d!374956 e!851742))

(declare-fun res!598838 () Bool)

(assert (=> d!374956 (=> (not res!598838) (not e!851742))))

(declare-fun lt!439720 () BalanceConc!8838)

(assert (=> d!374956 (= res!598838 (= (list!5118 lt!439720) (Cons!13510 t1!34 Nil!13510)))))

(assert (=> d!374956 (= lt!439720 (singleton!399 t1!34))))

(assert (=> d!374956 (= (singletonSeq!932 t1!34) lt!439720)))

(declare-fun b!1329468 () Bool)

(assert (=> b!1329468 (= e!851742 (isBalanced!1293 (c!217810 lt!439720)))))

(assert (= (and d!374956 res!598838) b!1329468))

(declare-fun m!1486475 () Bool)

(assert (=> d!374956 m!1486475))

(declare-fun m!1486477 () Bool)

(assert (=> d!374956 m!1486477))

(declare-fun m!1486479 () Bool)

(assert (=> b!1329468 m!1486479))

(assert (=> b!1328804 d!374956))

(declare-fun d!374958 () Bool)

(declare-fun lt!439721 () Bool)

(assert (=> d!374958 (= lt!439721 (select (content!1917 lt!439479) lt!439478))))

(declare-fun e!851743 () Bool)

(assert (=> d!374958 (= lt!439721 e!851743)))

(declare-fun res!598839 () Bool)

(assert (=> d!374958 (=> (not res!598839) (not e!851743))))

(assert (=> d!374958 (= res!598839 ((_ is Cons!13509) lt!439479))))

(assert (=> d!374958 (= (contains!2433 lt!439479 lt!439478) lt!439721)))

(declare-fun b!1329469 () Bool)

(declare-fun e!851744 () Bool)

(assert (=> b!1329469 (= e!851743 e!851744)))

(declare-fun res!598840 () Bool)

(assert (=> b!1329469 (=> res!598840 e!851744)))

(assert (=> b!1329469 (= res!598840 (= (h!18910 lt!439479) lt!439478))))

(declare-fun b!1329470 () Bool)

(assert (=> b!1329470 (= e!851744 (contains!2433 (t!118912 lt!439479) lt!439478))))

(assert (= (and d!374958 res!598839) b!1329469))

(assert (= (and b!1329469 (not res!598840)) b!1329470))

(assert (=> d!374958 m!1486121))

(declare-fun m!1486481 () Bool)

(assert (=> d!374958 m!1486481))

(declare-fun m!1486483 () Bool)

(assert (=> b!1329470 m!1486483))

(assert (=> b!1328803 d!374958))

(declare-fun b!1329471 () Bool)

(declare-fun e!851749 () Bool)

(assert (=> b!1329471 (= e!851749 (nullable!1161 (regex!2339 (rule!4084 t2!34))))))

(declare-fun b!1329472 () Bool)

(assert (=> b!1329472 (= e!851749 (matchR!1655 (derivativeStep!913 (regex!2339 (rule!4084 t2!34)) (head!2334 lt!439500)) (tail!1906 lt!439500)))))

(declare-fun b!1329473 () Bool)

(declare-fun e!851748 () Bool)

(declare-fun e!851750 () Bool)

(assert (=> b!1329473 (= e!851748 e!851750)))

(declare-fun res!598846 () Bool)

(assert (=> b!1329473 (=> res!598846 e!851750)))

(declare-fun call!89936 () Bool)

(assert (=> b!1329473 (= res!598846 call!89936)))

(declare-fun b!1329474 () Bool)

(declare-fun e!851751 () Bool)

(declare-fun lt!439722 () Bool)

(assert (=> b!1329474 (= e!851751 (= lt!439722 call!89936))))

(declare-fun b!1329475 () Bool)

(declare-fun e!851747 () Bool)

(assert (=> b!1329475 (= e!851747 e!851748)))

(declare-fun res!598847 () Bool)

(assert (=> b!1329475 (=> (not res!598847) (not e!851748))))

(assert (=> b!1329475 (= res!598847 (not lt!439722))))

(declare-fun d!374960 () Bool)

(assert (=> d!374960 e!851751))

(declare-fun c!217960 () Bool)

(assert (=> d!374960 (= c!217960 ((_ is EmptyExpr!3653) (regex!2339 (rule!4084 t2!34))))))

(assert (=> d!374960 (= lt!439722 e!851749)))

(declare-fun c!217959 () Bool)

(assert (=> d!374960 (= c!217959 (isEmpty!8046 lt!439500))))

(assert (=> d!374960 (validRegex!1568 (regex!2339 (rule!4084 t2!34)))))

(assert (=> d!374960 (= (matchR!1655 (regex!2339 (rule!4084 t2!34)) lt!439500) lt!439722)))

(declare-fun b!1329476 () Bool)

(declare-fun e!851746 () Bool)

(assert (=> b!1329476 (= e!851746 (= (head!2334 lt!439500) (c!217809 (regex!2339 (rule!4084 t2!34)))))))

(declare-fun b!1329477 () Bool)

(declare-fun e!851745 () Bool)

(assert (=> b!1329477 (= e!851751 e!851745)))

(declare-fun c!217958 () Bool)

(assert (=> b!1329477 (= c!217958 ((_ is EmptyLang!3653) (regex!2339 (rule!4084 t2!34))))))

(declare-fun b!1329478 () Bool)

(assert (=> b!1329478 (= e!851745 (not lt!439722))))

(declare-fun b!1329479 () Bool)

(declare-fun res!598844 () Bool)

(assert (=> b!1329479 (=> res!598844 e!851747)))

(assert (=> b!1329479 (= res!598844 (not ((_ is ElementMatch!3653) (regex!2339 (rule!4084 t2!34)))))))

(assert (=> b!1329479 (= e!851745 e!851747)))

(declare-fun b!1329480 () Bool)

(declare-fun res!598842 () Bool)

(assert (=> b!1329480 (=> (not res!598842) (not e!851746))))

(assert (=> b!1329480 (= res!598842 (not call!89936))))

(declare-fun b!1329481 () Bool)

(declare-fun res!598843 () Bool)

(assert (=> b!1329481 (=> res!598843 e!851750)))

(assert (=> b!1329481 (= res!598843 (not (isEmpty!8046 (tail!1906 lt!439500))))))

(declare-fun b!1329482 () Bool)

(declare-fun res!598841 () Bool)

(assert (=> b!1329482 (=> (not res!598841) (not e!851746))))

(assert (=> b!1329482 (= res!598841 (isEmpty!8046 (tail!1906 lt!439500)))))

(declare-fun bm!89931 () Bool)

(assert (=> bm!89931 (= call!89936 (isEmpty!8046 lt!439500))))

(declare-fun b!1329483 () Bool)

(declare-fun res!598848 () Bool)

(assert (=> b!1329483 (=> res!598848 e!851747)))

(assert (=> b!1329483 (= res!598848 e!851746)))

(declare-fun res!598845 () Bool)

(assert (=> b!1329483 (=> (not res!598845) (not e!851746))))

(assert (=> b!1329483 (= res!598845 lt!439722)))

(declare-fun b!1329484 () Bool)

(assert (=> b!1329484 (= e!851750 (not (= (head!2334 lt!439500) (c!217809 (regex!2339 (rule!4084 t2!34))))))))

(assert (= (and d!374960 c!217959) b!1329471))

(assert (= (and d!374960 (not c!217959)) b!1329472))

(assert (= (and d!374960 c!217960) b!1329474))

(assert (= (and d!374960 (not c!217960)) b!1329477))

(assert (= (and b!1329477 c!217958) b!1329478))

(assert (= (and b!1329477 (not c!217958)) b!1329479))

(assert (= (and b!1329479 (not res!598844)) b!1329483))

(assert (= (and b!1329483 res!598845) b!1329480))

(assert (= (and b!1329480 res!598842) b!1329482))

(assert (= (and b!1329482 res!598841) b!1329476))

(assert (= (and b!1329483 (not res!598848)) b!1329475))

(assert (= (and b!1329475 res!598847) b!1329473))

(assert (= (and b!1329473 (not res!598846)) b!1329481))

(assert (= (and b!1329481 (not res!598843)) b!1329484))

(assert (= (or b!1329474 b!1329473 b!1329480) bm!89931))

(declare-fun m!1486485 () Bool)

(assert (=> b!1329471 m!1486485))

(declare-fun m!1486487 () Bool)

(assert (=> b!1329481 m!1486487))

(assert (=> b!1329481 m!1486487))

(declare-fun m!1486489 () Bool)

(assert (=> b!1329481 m!1486489))

(assert (=> b!1329482 m!1486487))

(assert (=> b!1329482 m!1486487))

(assert (=> b!1329482 m!1486489))

(assert (=> b!1329472 m!1485525))

(assert (=> b!1329472 m!1485525))

(declare-fun m!1486491 () Bool)

(assert (=> b!1329472 m!1486491))

(assert (=> b!1329472 m!1486487))

(assert (=> b!1329472 m!1486491))

(assert (=> b!1329472 m!1486487))

(declare-fun m!1486493 () Bool)

(assert (=> b!1329472 m!1486493))

(assert (=> b!1329476 m!1485525))

(declare-fun m!1486495 () Bool)

(assert (=> d!374960 m!1486495))

(assert (=> d!374960 m!1485677))

(assert (=> bm!89931 m!1486495))

(assert (=> b!1329484 m!1485525))

(assert (=> b!1328824 d!374960))

(declare-fun b!1329496 () Bool)

(declare-fun lt!439725 () List!13575)

(declare-fun e!851757 () Bool)

(assert (=> b!1329496 (= e!851757 (or (not (= (getSuffix!509 lt!439479 lt!439502) Nil!13509)) (= lt!439725 lt!439502)))))

(declare-fun b!1329494 () Bool)

(declare-fun e!851756 () List!13575)

(assert (=> b!1329494 (= e!851756 (Cons!13509 (h!18910 lt!439502) (++!3450 (t!118912 lt!439502) (getSuffix!509 lt!439479 lt!439502))))))

(declare-fun b!1329495 () Bool)

(declare-fun res!598853 () Bool)

(assert (=> b!1329495 (=> (not res!598853) (not e!851757))))

(assert (=> b!1329495 (= res!598853 (= (size!11000 lt!439725) (+ (size!11000 lt!439502) (size!11000 (getSuffix!509 lt!439479 lt!439502)))))))

(declare-fun b!1329493 () Bool)

(assert (=> b!1329493 (= e!851756 (getSuffix!509 lt!439479 lt!439502))))

(declare-fun d!374962 () Bool)

(assert (=> d!374962 e!851757))

(declare-fun res!598854 () Bool)

(assert (=> d!374962 (=> (not res!598854) (not e!851757))))

(assert (=> d!374962 (= res!598854 (= (content!1917 lt!439725) ((_ map or) (content!1917 lt!439502) (content!1917 (getSuffix!509 lt!439479 lt!439502)))))))

(assert (=> d!374962 (= lt!439725 e!851756)))

(declare-fun c!217963 () Bool)

(assert (=> d!374962 (= c!217963 ((_ is Nil!13509) lt!439502))))

(assert (=> d!374962 (= (++!3450 lt!439502 (getSuffix!509 lt!439479 lt!439502)) lt!439725)))

(assert (= (and d!374962 c!217963) b!1329493))

(assert (= (and d!374962 (not c!217963)) b!1329494))

(assert (= (and d!374962 res!598854) b!1329495))

(assert (= (and b!1329495 res!598853) b!1329496))

(assert (=> b!1329494 m!1485517))

(declare-fun m!1486497 () Bool)

(assert (=> b!1329494 m!1486497))

(declare-fun m!1486499 () Bool)

(assert (=> b!1329495 m!1486499))

(declare-fun m!1486501 () Bool)

(assert (=> b!1329495 m!1486501))

(assert (=> b!1329495 m!1485517))

(declare-fun m!1486503 () Bool)

(assert (=> b!1329495 m!1486503))

(declare-fun m!1486505 () Bool)

(assert (=> d!374962 m!1486505))

(assert (=> d!374962 m!1485957))

(assert (=> d!374962 m!1485517))

(declare-fun m!1486507 () Bool)

(assert (=> d!374962 m!1486507))

(assert (=> b!1328823 d!374962))

(declare-fun d!374964 () Bool)

(declare-fun lt!439728 () List!13575)

(assert (=> d!374964 (= (++!3450 lt!439502 lt!439728) lt!439479)))

(declare-fun e!851760 () List!13575)

(assert (=> d!374964 (= lt!439728 e!851760)))

(declare-fun c!217966 () Bool)

(assert (=> d!374964 (= c!217966 ((_ is Cons!13509) lt!439502))))

(assert (=> d!374964 (>= (size!11000 lt!439479) (size!11000 lt!439502))))

(assert (=> d!374964 (= (getSuffix!509 lt!439479 lt!439502) lt!439728)))

(declare-fun b!1329501 () Bool)

(assert (=> b!1329501 (= e!851760 (getSuffix!509 (tail!1906 lt!439479) (t!118912 lt!439502)))))

(declare-fun b!1329502 () Bool)

(assert (=> b!1329502 (= e!851760 lt!439479)))

(assert (= (and d!374964 c!217966) b!1329501))

(assert (= (and d!374964 (not c!217966)) b!1329502))

(declare-fun m!1486509 () Bool)

(assert (=> d!374964 m!1486509))

(declare-fun m!1486511 () Bool)

(assert (=> d!374964 m!1486511))

(assert (=> d!374964 m!1486501))

(assert (=> b!1329501 m!1486129))

(assert (=> b!1329501 m!1486129))

(declare-fun m!1486513 () Bool)

(assert (=> b!1329501 m!1486513))

(assert (=> b!1328823 d!374964))

(declare-fun d!374966 () Bool)

(declare-fun lt!439731 () List!13575)

(declare-fun dynLambda!5955 (Int List!13575) Bool)

(assert (=> d!374966 (dynLambda!5955 lambda!55147 lt!439731)))

(declare-fun choose!8151 (Int) List!13575)

(assert (=> d!374966 (= lt!439731 (choose!8151 lambda!55147))))

(assert (=> d!374966 (Exists!811 lambda!55147)))

(assert (=> d!374966 (= (pickWitness!116 lambda!55147) lt!439731)))

(declare-fun b_lambda!39057 () Bool)

(assert (=> (not b_lambda!39057) (not d!374966)))

(declare-fun bs!331565 () Bool)

(assert (= bs!331565 d!374966))

(declare-fun m!1486515 () Bool)

(assert (=> bs!331565 m!1486515))

(declare-fun m!1486517 () Bool)

(assert (=> bs!331565 m!1486517))

(assert (=> bs!331565 m!1485583))

(assert (=> b!1328823 d!374966))

(declare-fun d!374968 () Bool)

(declare-fun lt!439732 () Int)

(assert (=> d!374968 (= lt!439732 (size!11000 (list!5119 lt!439496)))))

(assert (=> d!374968 (= lt!439732 (size!11003 (c!217808 lt!439496)))))

(assert (=> d!374968 (= (size!10997 lt!439496) lt!439732)))

(declare-fun bs!331566 () Bool)

(assert (= bs!331566 d!374968))

(assert (=> bs!331566 m!1485623))

(assert (=> bs!331566 m!1485623))

(declare-fun m!1486519 () Bool)

(assert (=> bs!331566 m!1486519))

(declare-fun m!1486521 () Bool)

(assert (=> bs!331566 m!1486521))

(assert (=> b!1328802 d!374968))

(declare-fun d!374970 () Bool)

(declare-fun lt!439735 () BalanceConc!8836)

(assert (=> d!374970 (= (list!5119 lt!439735) (originalCharacters!3201 t2!34))))

(assert (=> d!374970 (= lt!439735 (dynLambda!5945 (toChars!3429 (transformation!2339 (rule!4084 t2!34))) (value!76294 t2!34)))))

(assert (=> d!374970 (= (charsOf!1311 t2!34) lt!439735)))

(declare-fun b_lambda!39059 () Bool)

(assert (=> (not b_lambda!39059) (not d!374970)))

(assert (=> d!374970 t!118923))

(declare-fun b_and!88815 () Bool)

(assert (= b_and!88785 (and (=> t!118923 result!85326) b_and!88815)))

(assert (=> d!374970 t!118925))

(declare-fun b_and!88817 () Bool)

(assert (= b_and!88787 (and (=> t!118925 result!85328) b_and!88817)))

(assert (=> d!374970 t!118927))

(declare-fun b_and!88819 () Bool)

(assert (= b_and!88789 (and (=> t!118927 result!85330) b_and!88819)))

(declare-fun m!1486523 () Bool)

(assert (=> d!374970 m!1486523))

(assert (=> d!374970 m!1485741))

(assert (=> b!1328802 d!374970))

(declare-fun b!1329503 () Bool)

(declare-fun res!598858 () Bool)

(declare-fun e!851761 () Bool)

(assert (=> b!1329503 (=> (not res!598858) (not e!851761))))

(declare-fun lt!439737 () Option!2610)

(assert (=> b!1329503 (= res!598858 (= (value!76294 (_1!7464 (get!4285 lt!439737))) (apply!3129 (transformation!2339 (rule!4084 (_1!7464 (get!4285 lt!439737)))) (seqFromList!1610 (originalCharacters!3201 (_1!7464 (get!4285 lt!439737)))))))))

(declare-fun bm!89932 () Bool)

(declare-fun call!89937 () Option!2610)

(assert (=> bm!89932 (= call!89937 (maxPrefixOneRule!592 thiss!19762 (h!18912 rules!2550) lt!439500))))

(declare-fun b!1329505 () Bool)

(assert (=> b!1329505 (= e!851761 (contains!2434 rules!2550 (rule!4084 (_1!7464 (get!4285 lt!439737)))))))

(declare-fun b!1329506 () Bool)

(declare-fun e!851762 () Option!2610)

(assert (=> b!1329506 (= e!851762 call!89937)))

(declare-fun b!1329507 () Bool)

(declare-fun res!598856 () Bool)

(assert (=> b!1329507 (=> (not res!598856) (not e!851761))))

(assert (=> b!1329507 (= res!598856 (< (size!11000 (_2!7464 (get!4285 lt!439737))) (size!11000 lt!439500)))))

(declare-fun b!1329508 () Bool)

(declare-fun res!598857 () Bool)

(assert (=> b!1329508 (=> (not res!598857) (not e!851761))))

(assert (=> b!1329508 (= res!598857 (= (++!3450 (list!5119 (charsOf!1311 (_1!7464 (get!4285 lt!439737)))) (_2!7464 (get!4285 lt!439737))) lt!439500))))

(declare-fun b!1329509 () Bool)

(declare-fun res!598859 () Bool)

(assert (=> b!1329509 (=> (not res!598859) (not e!851761))))

(assert (=> b!1329509 (= res!598859 (matchR!1655 (regex!2339 (rule!4084 (_1!7464 (get!4285 lt!439737)))) (list!5119 (charsOf!1311 (_1!7464 (get!4285 lt!439737))))))))

(declare-fun d!374972 () Bool)

(declare-fun e!851763 () Bool)

(assert (=> d!374972 e!851763))

(declare-fun res!598861 () Bool)

(assert (=> d!374972 (=> res!598861 e!851763)))

(assert (=> d!374972 (= res!598861 (isEmpty!8052 lt!439737))))

(assert (=> d!374972 (= lt!439737 e!851762)))

(declare-fun c!217967 () Bool)

(assert (=> d!374972 (= c!217967 (and ((_ is Cons!13511) rules!2550) ((_ is Nil!13511) (t!118914 rules!2550))))))

(declare-fun lt!439736 () Unit!19614)

(declare-fun lt!439739 () Unit!19614)

(assert (=> d!374972 (= lt!439736 lt!439739)))

(assert (=> d!374972 (isPrefix!1087 lt!439500 lt!439500)))

(assert (=> d!374972 (= lt!439739 (lemmaIsPrefixRefl!766 lt!439500 lt!439500))))

(assert (=> d!374972 (rulesValidInductive!739 thiss!19762 rules!2550)))

(assert (=> d!374972 (= (maxPrefix!1044 thiss!19762 rules!2550 lt!439500) lt!439737)))

(declare-fun b!1329504 () Bool)

(declare-fun lt!439740 () Option!2610)

(declare-fun lt!439738 () Option!2610)

(assert (=> b!1329504 (= e!851762 (ite (and ((_ is None!2609) lt!439740) ((_ is None!2609) lt!439738)) None!2609 (ite ((_ is None!2609) lt!439738) lt!439740 (ite ((_ is None!2609) lt!439740) lt!439738 (ite (>= (size!10996 (_1!7464 (v!21222 lt!439740))) (size!10996 (_1!7464 (v!21222 lt!439738)))) lt!439740 lt!439738)))))))

(assert (=> b!1329504 (= lt!439740 call!89937)))

(assert (=> b!1329504 (= lt!439738 (maxPrefix!1044 thiss!19762 (t!118914 rules!2550) lt!439500))))

(declare-fun b!1329510 () Bool)

(assert (=> b!1329510 (= e!851763 e!851761)))

(declare-fun res!598860 () Bool)

(assert (=> b!1329510 (=> (not res!598860) (not e!851761))))

(assert (=> b!1329510 (= res!598860 (isDefined!2190 lt!439737))))

(declare-fun b!1329511 () Bool)

(declare-fun res!598855 () Bool)

(assert (=> b!1329511 (=> (not res!598855) (not e!851761))))

(assert (=> b!1329511 (= res!598855 (= (list!5119 (charsOf!1311 (_1!7464 (get!4285 lt!439737)))) (originalCharacters!3201 (_1!7464 (get!4285 lt!439737)))))))

(assert (= (and d!374972 c!217967) b!1329506))

(assert (= (and d!374972 (not c!217967)) b!1329504))

(assert (= (or b!1329506 b!1329504) bm!89932))

(assert (= (and d!374972 (not res!598861)) b!1329510))

(assert (= (and b!1329510 res!598860) b!1329511))

(assert (= (and b!1329511 res!598855) b!1329507))

(assert (= (and b!1329507 res!598856) b!1329508))

(assert (= (and b!1329508 res!598857) b!1329503))

(assert (= (and b!1329503 res!598858) b!1329509))

(assert (= (and b!1329509 res!598859) b!1329505))

(declare-fun m!1486525 () Bool)

(assert (=> d!374972 m!1486525))

(declare-fun m!1486527 () Bool)

(assert (=> d!374972 m!1486527))

(declare-fun m!1486529 () Bool)

(assert (=> d!374972 m!1486529))

(assert (=> d!374972 m!1486231))

(declare-fun m!1486531 () Bool)

(assert (=> b!1329505 m!1486531))

(declare-fun m!1486533 () Bool)

(assert (=> b!1329505 m!1486533))

(assert (=> b!1329503 m!1486531))

(declare-fun m!1486535 () Bool)

(assert (=> b!1329503 m!1486535))

(assert (=> b!1329503 m!1486535))

(declare-fun m!1486537 () Bool)

(assert (=> b!1329503 m!1486537))

(assert (=> b!1329509 m!1486531))

(declare-fun m!1486539 () Bool)

(assert (=> b!1329509 m!1486539))

(assert (=> b!1329509 m!1486539))

(declare-fun m!1486541 () Bool)

(assert (=> b!1329509 m!1486541))

(assert (=> b!1329509 m!1486541))

(declare-fun m!1486543 () Bool)

(assert (=> b!1329509 m!1486543))

(declare-fun m!1486545 () Bool)

(assert (=> bm!89932 m!1486545))

(assert (=> b!1329508 m!1486531))

(assert (=> b!1329508 m!1486539))

(assert (=> b!1329508 m!1486539))

(assert (=> b!1329508 m!1486541))

(assert (=> b!1329508 m!1486541))

(declare-fun m!1486547 () Bool)

(assert (=> b!1329508 m!1486547))

(assert (=> b!1329511 m!1486531))

(assert (=> b!1329511 m!1486539))

(assert (=> b!1329511 m!1486539))

(assert (=> b!1329511 m!1486541))

(declare-fun m!1486549 () Bool)

(assert (=> b!1329510 m!1486549))

(declare-fun m!1486551 () Bool)

(assert (=> b!1329504 m!1486551))

(assert (=> b!1329507 m!1486531))

(declare-fun m!1486553 () Bool)

(assert (=> b!1329507 m!1486553))

(declare-fun m!1486555 () Bool)

(assert (=> b!1329507 m!1486555))

(assert (=> b!1328801 d!374972))

(declare-fun d!374974 () Bool)

(assert (=> d!374974 (= (list!5119 lt!439496) (list!5121 (c!217808 lt!439496)))))

(declare-fun bs!331567 () Bool)

(assert (= bs!331567 d!374974))

(declare-fun m!1486557 () Bool)

(assert (=> bs!331567 m!1486557))

(assert (=> b!1328801 d!374974))

(declare-fun d!374976 () Bool)

(declare-fun lt!439751 () Bool)

(assert (=> d!374976 (= lt!439751 (select (content!1915 rules!2550) (rule!4084 t1!34)))))

(declare-fun e!851770 () Bool)

(assert (=> d!374976 (= lt!439751 e!851770)))

(declare-fun res!598876 () Bool)

(assert (=> d!374976 (=> (not res!598876) (not e!851770))))

(assert (=> d!374976 (= res!598876 ((_ is Cons!13511) rules!2550))))

(assert (=> d!374976 (= (contains!2434 rules!2550 (rule!4084 t1!34)) lt!439751)))

(declare-fun b!1329530 () Bool)

(declare-fun e!851771 () Bool)

(assert (=> b!1329530 (= e!851770 e!851771)))

(declare-fun res!598877 () Bool)

(assert (=> b!1329530 (=> res!598877 e!851771)))

(assert (=> b!1329530 (= res!598877 (= (h!18912 rules!2550) (rule!4084 t1!34)))))

(declare-fun b!1329531 () Bool)

(assert (=> b!1329531 (= e!851771 (contains!2434 (t!118914 rules!2550) (rule!4084 t1!34)))))

(assert (= (and d!374976 res!598876) b!1329530))

(assert (= (and b!1329530 (not res!598877)) b!1329531))

(assert (=> d!374976 m!1485705))

(declare-fun m!1486559 () Bool)

(assert (=> d!374976 m!1486559))

(declare-fun m!1486561 () Bool)

(assert (=> b!1329531 m!1486561))

(assert (=> b!1328822 d!374976))

(declare-fun e!851773 () Bool)

(declare-fun b!1329535 () Bool)

(declare-fun lt!439752 () List!13575)

(assert (=> b!1329535 (= e!851773 (or (not (= (Cons!13509 lt!439478 Nil!13509) Nil!13509)) (= lt!439752 lt!439494)))))

(declare-fun b!1329533 () Bool)

(declare-fun e!851772 () List!13575)

(assert (=> b!1329533 (= e!851772 (Cons!13509 (h!18910 lt!439494) (++!3450 (t!118912 lt!439494) (Cons!13509 lt!439478 Nil!13509))))))

(declare-fun b!1329534 () Bool)

(declare-fun res!598878 () Bool)

(assert (=> b!1329534 (=> (not res!598878) (not e!851773))))

(assert (=> b!1329534 (= res!598878 (= (size!11000 lt!439752) (+ (size!11000 lt!439494) (size!11000 (Cons!13509 lt!439478 Nil!13509)))))))

(declare-fun b!1329532 () Bool)

(assert (=> b!1329532 (= e!851772 (Cons!13509 lt!439478 Nil!13509))))

(declare-fun d!374978 () Bool)

(assert (=> d!374978 e!851773))

(declare-fun res!598879 () Bool)

(assert (=> d!374978 (=> (not res!598879) (not e!851773))))

(assert (=> d!374978 (= res!598879 (= (content!1917 lt!439752) ((_ map or) (content!1917 lt!439494) (content!1917 (Cons!13509 lt!439478 Nil!13509)))))))

(assert (=> d!374978 (= lt!439752 e!851772)))

(declare-fun c!217970 () Bool)

(assert (=> d!374978 (= c!217970 ((_ is Nil!13509) lt!439494))))

(assert (=> d!374978 (= (++!3450 lt!439494 (Cons!13509 lt!439478 Nil!13509)) lt!439752)))

(assert (= (and d!374978 c!217970) b!1329532))

(assert (= (and d!374978 (not c!217970)) b!1329533))

(assert (= (and d!374978 res!598879) b!1329534))

(assert (= (and b!1329534 res!598878) b!1329535))

(declare-fun m!1486563 () Bool)

(assert (=> b!1329533 m!1486563))

(declare-fun m!1486565 () Bool)

(assert (=> b!1329534 m!1486565))

(assert (=> b!1329534 m!1486265))

(declare-fun m!1486567 () Bool)

(assert (=> b!1329534 m!1486567))

(declare-fun m!1486569 () Bool)

(assert (=> d!374978 m!1486569))

(declare-fun m!1486571 () Bool)

(assert (=> d!374978 m!1486571))

(declare-fun m!1486573 () Bool)

(assert (=> d!374978 m!1486573))

(assert (=> b!1328821 d!374978))

(declare-fun d!374980 () Bool)

(declare-fun lt!439753 () C!7596)

(assert (=> d!374980 (= lt!439753 (apply!3127 (list!5119 lt!439496) 0))))

(assert (=> d!374980 (= lt!439753 (apply!3128 (c!217808 lt!439496) 0))))

(declare-fun e!851774 () Bool)

(assert (=> d!374980 e!851774))

(declare-fun res!598880 () Bool)

(assert (=> d!374980 (=> (not res!598880) (not e!851774))))

(assert (=> d!374980 (= res!598880 (<= 0 0))))

(assert (=> d!374980 (= (apply!3125 lt!439496 0) lt!439753)))

(declare-fun b!1329536 () Bool)

(assert (=> b!1329536 (= e!851774 (< 0 (size!10997 lt!439496)))))

(assert (= (and d!374980 res!598880) b!1329536))

(assert (=> d!374980 m!1485623))

(assert (=> d!374980 m!1485623))

(declare-fun m!1486575 () Bool)

(assert (=> d!374980 m!1486575))

(declare-fun m!1486577 () Bool)

(assert (=> d!374980 m!1486577))

(assert (=> b!1329536 m!1485529))

(assert (=> b!1328821 d!374980))

(declare-fun d!374982 () Bool)

(declare-fun c!217973 () Bool)

(assert (=> d!374982 (= c!217973 (isEmpty!8046 lt!439502))))

(declare-fun e!851777 () Bool)

(assert (=> d!374982 (= (prefixMatch!166 lt!439472 lt!439502) e!851777)))

(declare-fun b!1329541 () Bool)

(declare-fun lostCause!289 (Regex!3653) Bool)

(assert (=> b!1329541 (= e!851777 (not (lostCause!289 lt!439472)))))

(declare-fun b!1329542 () Bool)

(assert (=> b!1329542 (= e!851777 (prefixMatch!166 (derivativeStep!913 lt!439472 (head!2334 lt!439502)) (tail!1906 lt!439502)))))

(assert (= (and d!374982 c!217973) b!1329541))

(assert (= (and d!374982 (not c!217973)) b!1329542))

(declare-fun m!1486579 () Bool)

(assert (=> d!374982 m!1486579))

(declare-fun m!1486581 () Bool)

(assert (=> b!1329541 m!1486581))

(declare-fun m!1486583 () Bool)

(assert (=> b!1329542 m!1486583))

(assert (=> b!1329542 m!1486583))

(declare-fun m!1486585 () Bool)

(assert (=> b!1329542 m!1486585))

(declare-fun m!1486587 () Bool)

(assert (=> b!1329542 m!1486587))

(assert (=> b!1329542 m!1486585))

(assert (=> b!1329542 m!1486587))

(declare-fun m!1486589 () Bool)

(assert (=> b!1329542 m!1486589))

(assert (=> b!1328821 d!374982))

(declare-fun d!374984 () Bool)

(assert (=> d!374984 (= (list!5119 lt!439488) (list!5121 (c!217808 lt!439488)))))

(declare-fun bs!331568 () Bool)

(assert (= bs!331568 d!374984))

(declare-fun m!1486591 () Bool)

(assert (=> bs!331568 m!1486591))

(assert (=> b!1328821 d!374984))

(declare-fun d!374986 () Bool)

(declare-fun lt!439759 () BalanceConc!8836)

(assert (=> d!374986 (= (list!5119 lt!439759) (originalCharacters!3201 t1!34))))

(assert (=> d!374986 (= lt!439759 (dynLambda!5945 (toChars!3429 (transformation!2339 (rule!4084 t1!34))) (value!76294 t1!34)))))

(assert (=> d!374986 (= (charsOf!1311 t1!34) lt!439759)))

(declare-fun b_lambda!39061 () Bool)

(assert (=> (not b_lambda!39061) (not d!374986)))

(assert (=> d!374986 t!118917))

(declare-fun b_and!88821 () Bool)

(assert (= b_and!88815 (and (=> t!118917 result!85318) b_and!88821)))

(assert (=> d!374986 t!118919))

(declare-fun b_and!88823 () Bool)

(assert (= b_and!88817 (and (=> t!118919 result!85322) b_and!88823)))

(assert (=> d!374986 t!118921))

(declare-fun b_and!88825 () Bool)

(assert (= b_and!88819 (and (=> t!118921 result!85324) b_and!88825)))

(declare-fun m!1486593 () Bool)

(assert (=> d!374986 m!1486593))

(assert (=> d!374986 m!1485723))

(assert (=> b!1328821 d!374986))

(declare-fun bs!331572 () Bool)

(declare-fun d!374988 () Bool)

(assert (= bs!331572 (and d!374988 b!1328791)))

(declare-fun lambda!55189 () Int)

(assert (=> bs!331572 (= lambda!55189 lambda!55148)))

(declare-fun lt!439764 () Unit!19614)

(declare-fun lemma!83 (List!13577 LexerInterface!2034 List!13577) Unit!19614)

(assert (=> d!374988 (= lt!439764 (lemma!83 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!91 (List!13578) Regex!3653)

(assert (=> d!374988 (= (rulesRegex!224 thiss!19762 rules!2550) (generalisedUnion!91 (map!2975 rules!2550 lambda!55189)))))

(declare-fun bs!331573 () Bool)

(assert (= bs!331573 d!374988))

(declare-fun m!1486649 () Bool)

(assert (=> bs!331573 m!1486649))

(declare-fun m!1486651 () Bool)

(assert (=> bs!331573 m!1486651))

(assert (=> bs!331573 m!1486651))

(declare-fun m!1486653 () Bool)

(assert (=> bs!331573 m!1486653))

(assert (=> b!1328821 d!374988))

(declare-fun b!1329572 () Bool)

(declare-fun e!851789 () Bool)

(declare-fun tp!384947 () Bool)

(assert (=> b!1329572 (= e!851789 tp!384947)))

(assert (=> b!1328826 (= tp!384924 e!851789)))

(declare-fun b!1329570 () Bool)

(declare-fun tp_is_empty!6653 () Bool)

(assert (=> b!1329570 (= e!851789 tp_is_empty!6653)))

(declare-fun b!1329571 () Bool)

(declare-fun tp!384946 () Bool)

(declare-fun tp!384948 () Bool)

(assert (=> b!1329571 (= e!851789 (and tp!384946 tp!384948))))

(declare-fun b!1329573 () Bool)

(declare-fun tp!384945 () Bool)

(declare-fun tp!384949 () Bool)

(assert (=> b!1329573 (= e!851789 (and tp!384945 tp!384949))))

(assert (= (and b!1328826 ((_ is ElementMatch!3653) (regex!2339 (h!18912 rules!2550)))) b!1329570))

(assert (= (and b!1328826 ((_ is Concat!6083) (regex!2339 (h!18912 rules!2550)))) b!1329571))

(assert (= (and b!1328826 ((_ is Star!3653) (regex!2339 (h!18912 rules!2550)))) b!1329572))

(assert (= (and b!1328826 ((_ is Union!3653) (regex!2339 (h!18912 rules!2550)))) b!1329573))

(declare-fun b!1329578 () Bool)

(declare-fun e!851792 () Bool)

(declare-fun tp!384952 () Bool)

(assert (=> b!1329578 (= e!851792 (and tp_is_empty!6653 tp!384952))))

(assert (=> b!1328787 (= tp!384926 e!851792)))

(assert (= (and b!1328787 ((_ is Cons!13509) (originalCharacters!3201 t1!34))) b!1329578))

(declare-fun b!1329589 () Bool)

(declare-fun b_free!32159 () Bool)

(declare-fun b_next!32863 () Bool)

(assert (=> b!1329589 (= b_free!32159 (not b_next!32863))))

(declare-fun tp!384962 () Bool)

(declare-fun b_and!88827 () Bool)

(assert (=> b!1329589 (= tp!384962 b_and!88827)))

(declare-fun b_free!32161 () Bool)

(declare-fun b_next!32865 () Bool)

(assert (=> b!1329589 (= b_free!32161 (not b_next!32865))))

(declare-fun t!118945 () Bool)

(declare-fun tb!70297 () Bool)

(assert (=> (and b!1329589 (= (toChars!3429 (transformation!2339 (h!18912 (t!118914 rules!2550)))) (toChars!3429 (transformation!2339 (rule!4084 t1!34)))) t!118945) tb!70297))

(declare-fun result!85352 () Bool)

(assert (= result!85352 result!85318))

(assert (=> b!1328899 t!118945))

(declare-fun tb!70299 () Bool)

(declare-fun t!118947 () Bool)

(assert (=> (and b!1329589 (= (toChars!3429 (transformation!2339 (h!18912 (t!118914 rules!2550)))) (toChars!3429 (transformation!2339 (rule!4084 t2!34)))) t!118947) tb!70299))

(declare-fun result!85354 () Bool)

(assert (= result!85354 result!85326))

(assert (=> b!1328916 t!118947))

(assert (=> d!374970 t!118947))

(assert (=> d!374986 t!118945))

(declare-fun b_and!88829 () Bool)

(declare-fun tp!384964 () Bool)

(assert (=> b!1329589 (= tp!384964 (and (=> t!118945 result!85352) (=> t!118947 result!85354) b_and!88829))))

(declare-fun e!851804 () Bool)

(assert (=> b!1329589 (= e!851804 (and tp!384962 tp!384964))))

(declare-fun tp!384961 () Bool)

(declare-fun e!851801 () Bool)

(declare-fun b!1329588 () Bool)

(assert (=> b!1329588 (= e!851801 (and tp!384961 (inv!17856 (tag!2601 (h!18912 (t!118914 rules!2550)))) (inv!17859 (transformation!2339 (h!18912 (t!118914 rules!2550)))) e!851804))))

(declare-fun b!1329587 () Bool)

(declare-fun e!851802 () Bool)

(declare-fun tp!384963 () Bool)

(assert (=> b!1329587 (= e!851802 (and e!851801 tp!384963))))

(assert (=> b!1328798 (= tp!384920 e!851802)))

(assert (= b!1329588 b!1329589))

(assert (= b!1329587 b!1329588))

(assert (= (and b!1328798 ((_ is Cons!13511) (t!118914 rules!2550))) b!1329587))

(declare-fun m!1486669 () Bool)

(assert (=> b!1329588 m!1486669))

(declare-fun m!1486671 () Bool)

(assert (=> b!1329588 m!1486671))

(declare-fun b!1329600 () Bool)

(declare-fun e!851811 () Bool)

(declare-fun tp!384965 () Bool)

(assert (=> b!1329600 (= e!851811 (and tp_is_empty!6653 tp!384965))))

(assert (=> b!1328812 (= tp!384919 e!851811)))

(assert (= (and b!1328812 ((_ is Cons!13509) (originalCharacters!3201 t2!34))) b!1329600))

(declare-fun b!1329603 () Bool)

(declare-fun e!851812 () Bool)

(declare-fun tp!384968 () Bool)

(assert (=> b!1329603 (= e!851812 tp!384968)))

(assert (=> b!1328795 (= tp!384923 e!851812)))

(declare-fun b!1329601 () Bool)

(assert (=> b!1329601 (= e!851812 tp_is_empty!6653)))

(declare-fun b!1329602 () Bool)

(declare-fun tp!384967 () Bool)

(declare-fun tp!384969 () Bool)

(assert (=> b!1329602 (= e!851812 (and tp!384967 tp!384969))))

(declare-fun b!1329604 () Bool)

(declare-fun tp!384966 () Bool)

(declare-fun tp!384970 () Bool)

(assert (=> b!1329604 (= e!851812 (and tp!384966 tp!384970))))

(assert (= (and b!1328795 ((_ is ElementMatch!3653) (regex!2339 (rule!4084 t1!34)))) b!1329601))

(assert (= (and b!1328795 ((_ is Concat!6083) (regex!2339 (rule!4084 t1!34)))) b!1329602))

(assert (= (and b!1328795 ((_ is Star!3653) (regex!2339 (rule!4084 t1!34)))) b!1329603))

(assert (= (and b!1328795 ((_ is Union!3653) (regex!2339 (rule!4084 t1!34)))) b!1329604))

(declare-fun b!1329607 () Bool)

(declare-fun e!851813 () Bool)

(declare-fun tp!384973 () Bool)

(assert (=> b!1329607 (= e!851813 tp!384973)))

(assert (=> b!1328789 (= tp!384922 e!851813)))

(declare-fun b!1329605 () Bool)

(assert (=> b!1329605 (= e!851813 tp_is_empty!6653)))

(declare-fun b!1329606 () Bool)

(declare-fun tp!384972 () Bool)

(declare-fun tp!384974 () Bool)

(assert (=> b!1329606 (= e!851813 (and tp!384972 tp!384974))))

(declare-fun b!1329608 () Bool)

(declare-fun tp!384971 () Bool)

(declare-fun tp!384975 () Bool)

(assert (=> b!1329608 (= e!851813 (and tp!384971 tp!384975))))

(assert (= (and b!1328789 ((_ is ElementMatch!3653) (regex!2339 (rule!4084 t2!34)))) b!1329605))

(assert (= (and b!1328789 ((_ is Concat!6083) (regex!2339 (rule!4084 t2!34)))) b!1329606))

(assert (= (and b!1328789 ((_ is Star!3653) (regex!2339 (rule!4084 t2!34)))) b!1329607))

(assert (= (and b!1328789 ((_ is Union!3653) (regex!2339 (rule!4084 t2!34)))) b!1329608))

(declare-fun b_lambda!39063 () Bool)

(assert (= b_lambda!39047 (or b!1328799 b_lambda!39063)))

(declare-fun bs!331574 () Bool)

(declare-fun d!375004 () Bool)

(assert (= bs!331574 (and d!375004 b!1328799)))

(declare-fun ruleValid!575 (LexerInterface!2034 Rule!4478) Bool)

(assert (=> bs!331574 (= (dynLambda!5953 lambda!55151 (rule!4084 t1!34)) (ruleValid!575 thiss!19762 (rule!4084 t1!34)))))

(declare-fun m!1486673 () Bool)

(assert (=> bs!331574 m!1486673))

(assert (=> d!374908 d!375004))

(declare-fun b_lambda!39065 () Bool)

(assert (= b_lambda!39021 (or (and b!1328788 b_free!32149 (= (toChars!3429 (transformation!2339 (h!18912 rules!2550))) (toChars!3429 (transformation!2339 (rule!4084 t1!34))))) (and b!1328800 b_free!32153) (and b!1328818 b_free!32157 (= (toChars!3429 (transformation!2339 (rule!4084 t2!34))) (toChars!3429 (transformation!2339 (rule!4084 t1!34))))) (and b!1329589 b_free!32161 (= (toChars!3429 (transformation!2339 (h!18912 (t!118914 rules!2550)))) (toChars!3429 (transformation!2339 (rule!4084 t1!34))))) b_lambda!39065)))

(declare-fun b_lambda!39067 () Bool)

(assert (= b_lambda!39015 (or b!1328791 b_lambda!39067)))

(declare-fun bs!331575 () Bool)

(declare-fun d!375006 () Bool)

(assert (= bs!331575 (and d!375006 b!1328791)))

(assert (=> bs!331575 (= (dynLambda!5943 lambda!55148 (h!18912 rules!2550)) (regex!2339 (h!18912 rules!2550)))))

(assert (=> b!1328855 d!375006))

(declare-fun b_lambda!39069 () Bool)

(assert (= b_lambda!39049 (or b!1328799 b_lambda!39069)))

(declare-fun bs!331576 () Bool)

(declare-fun d!375008 () Bool)

(assert (= bs!331576 (and d!375008 b!1328799)))

(assert (=> bs!331576 (= (dynLambda!5953 lambda!55151 lt!439475) (ruleValid!575 thiss!19762 lt!439475))))

(declare-fun m!1486675 () Bool)

(assert (=> bs!331576 m!1486675))

(assert (=> d!374910 d!375008))

(declare-fun b_lambda!39071 () Bool)

(assert (= b_lambda!39059 (or (and b!1328788 b_free!32149 (= (toChars!3429 (transformation!2339 (h!18912 rules!2550))) (toChars!3429 (transformation!2339 (rule!4084 t2!34))))) (and b!1328800 b_free!32153 (= (toChars!3429 (transformation!2339 (rule!4084 t1!34))) (toChars!3429 (transformation!2339 (rule!4084 t2!34))))) (and b!1328818 b_free!32157) (and b!1329589 b_free!32161 (= (toChars!3429 (transformation!2339 (h!18912 (t!118914 rules!2550)))) (toChars!3429 (transformation!2339 (rule!4084 t2!34))))) b_lambda!39071)))

(declare-fun b_lambda!39073 () Bool)

(assert (= b_lambda!39057 (or b!1328815 b_lambda!39073)))

(declare-fun bs!331577 () Bool)

(declare-fun d!375010 () Bool)

(assert (= bs!331577 (and d!375010 b!1328815)))

(declare-fun res!598898 () Bool)

(declare-fun e!851816 () Bool)

(assert (=> bs!331577 (=> (not res!598898) (not e!851816))))

(assert (=> bs!331577 (= res!598898 (matchR!1655 lt!439472 lt!439731))))

(assert (=> bs!331577 (= (dynLambda!5955 lambda!55147 lt!439731) e!851816)))

(declare-fun b!1329611 () Bool)

(assert (=> b!1329611 (= e!851816 (isPrefix!1087 lt!439502 lt!439731))))

(assert (= (and bs!331577 res!598898) b!1329611))

(declare-fun m!1486677 () Bool)

(assert (=> bs!331577 m!1486677))

(declare-fun m!1486679 () Bool)

(assert (=> b!1329611 m!1486679))

(assert (=> d!374966 d!375010))

(declare-fun b_lambda!39075 () Bool)

(assert (= b_lambda!39055 (or b!1328807 b_lambda!39075)))

(declare-fun bs!331578 () Bool)

(declare-fun d!375012 () Bool)

(assert (= bs!331578 (and d!375012 b!1328807)))

(assert (=> bs!331578 (= (dynLambda!5953 lambda!55150 (h!18912 rules!2550)) (= (regex!2339 (h!18912 rules!2550)) lt!439490))))

(assert (=> b!1329465 d!375012))

(declare-fun b_lambda!39077 () Bool)

(assert (= b_lambda!39061 (or (and b!1328788 b_free!32149 (= (toChars!3429 (transformation!2339 (h!18912 rules!2550))) (toChars!3429 (transformation!2339 (rule!4084 t1!34))))) (and b!1328800 b_free!32153) (and b!1328818 b_free!32157 (= (toChars!3429 (transformation!2339 (rule!4084 t2!34))) (toChars!3429 (transformation!2339 (rule!4084 t1!34))))) (and b!1329589 b_free!32161 (= (toChars!3429 (transformation!2339 (h!18912 (t!118914 rules!2550)))) (toChars!3429 (transformation!2339 (rule!4084 t1!34))))) b_lambda!39077)))

(declare-fun b_lambda!39079 () Bool)

(assert (= b_lambda!39019 (or b!1328791 b_lambda!39079)))

(declare-fun bs!331579 () Bool)

(declare-fun d!375014 () Bool)

(assert (= bs!331579 (and d!375014 b!1328791)))

(declare-fun res!598899 () Bool)

(declare-fun e!851817 () Bool)

(assert (=> bs!331579 (=> (not res!598899) (not e!851817))))

(assert (=> bs!331579 (= res!598899 (validRegex!1568 (h!18913 (map!2975 rules!2550 lambda!55148))))))

(assert (=> bs!331579 (= (dynLambda!5944 lambda!55149 (h!18913 (map!2975 rules!2550 lambda!55148))) e!851817)))

(declare-fun b!1329612 () Bool)

(assert (=> b!1329612 (= e!851817 (matchR!1655 (h!18913 (map!2975 rules!2550 lambda!55148)) lt!439479))))

(assert (= (and bs!331579 res!598899) b!1329612))

(declare-fun m!1486681 () Bool)

(assert (=> bs!331579 m!1486681))

(declare-fun m!1486683 () Bool)

(assert (=> b!1329612 m!1486683))

(assert (=> b!1328871 d!375014))

(declare-fun b_lambda!39081 () Bool)

(assert (= b_lambda!39045 (or b!1328799 b_lambda!39081)))

(declare-fun bs!331580 () Bool)

(declare-fun d!375016 () Bool)

(assert (= bs!331580 (and d!375016 b!1328799)))

(assert (=> bs!331580 (= (dynLambda!5953 lambda!55151 (rule!4084 t2!34)) (ruleValid!575 thiss!19762 (rule!4084 t2!34)))))

(declare-fun m!1486685 () Bool)

(assert (=> bs!331580 m!1486685))

(assert (=> d!374904 d!375016))

(declare-fun b_lambda!39083 () Bool)

(assert (= b_lambda!39053 (or b!1328807 b_lambda!39083)))

(declare-fun bs!331581 () Bool)

(declare-fun d!375018 () Bool)

(assert (= bs!331581 (and d!375018 b!1328807)))

(assert (=> bs!331581 (= (dynLambda!5953 lambda!55150 lt!439718) (= (regex!2339 lt!439718) lt!439490))))

(assert (=> d!374952 d!375018))

(declare-fun b_lambda!39085 () Bool)

(assert (= b_lambda!39023 (or (and b!1328788 b_free!32149 (= (toChars!3429 (transformation!2339 (h!18912 rules!2550))) (toChars!3429 (transformation!2339 (rule!4084 t2!34))))) (and b!1328800 b_free!32153 (= (toChars!3429 (transformation!2339 (rule!4084 t1!34))) (toChars!3429 (transformation!2339 (rule!4084 t2!34))))) (and b!1328818 b_free!32157) (and b!1329589 b_free!32161 (= (toChars!3429 (transformation!2339 (h!18912 (t!118914 rules!2550)))) (toChars!3429 (transformation!2339 (rule!4084 t2!34))))) b_lambda!39085)))

(declare-fun b_lambda!39087 () Bool)

(assert (= b_lambda!39017 (or b!1328791 b_lambda!39087)))

(declare-fun bs!331582 () Bool)

(declare-fun d!375020 () Bool)

(assert (= bs!331582 (and d!375020 b!1328791)))

(declare-fun res!598900 () Bool)

(declare-fun e!851818 () Bool)

(assert (=> bs!331582 (=> (not res!598900) (not e!851818))))

(assert (=> bs!331582 (= res!598900 (validRegex!1568 lt!439516))))

(assert (=> bs!331582 (= (dynLambda!5944 lambda!55149 lt!439516) e!851818)))

(declare-fun b!1329613 () Bool)

(assert (=> b!1329613 (= e!851818 (matchR!1655 lt!439516 lt!439479))))

(assert (= (and bs!331582 res!598900) b!1329613))

(declare-fun m!1486687 () Bool)

(assert (=> bs!331582 m!1486687))

(declare-fun m!1486689 () Bool)

(assert (=> b!1329613 m!1486689))

(assert (=> d!374698 d!375020))

(check-sat (not b_lambda!39077) (not b!1329336) (not b!1329510) (not d!374790) (not b!1329531) (not b!1329533) (not b_next!32855) (not b!1329471) (not b!1329210) (not b!1329132) (not d!374916) (not d!374978) (not d!374726) (not b_lambda!39071) (not b!1329578) (not b!1329481) (not b!1329380) (not d!374974) (not b!1329443) (not b!1329335) (not b!1329602) (not b!1329427) (not b!1329476) (not b!1329504) (not d!374778) (not b!1329503) (not b!1328917) (not b!1329501) (not bs!331577) (not b_lambda!39083) (not bm!89909) (not b!1329262) (not d!374712) (not b!1329114) (not d!374800) (not d!374962) (not b!1328939) (not d!374980) (not b!1329386) (not b!1329331) b_and!88771 (not d!374934) (not d!374986) (not b!1329494) (not b!1329444) (not b!1329379) (not b!1329211) (not b!1328893) (not b!1329337) (not b!1329445) (not b!1329440) (not b!1329209) (not b!1329406) (not b!1329482) (not b_next!32851) (not b!1328872) b_and!88775 (not d!374958) (not d!374830) (not bm!89932) (not b!1329267) (not bm!89931) (not d!374784) (not b!1329334) (not bs!331582) (not b!1329134) (not b_lambda!39069) (not d!374886) (not bs!331580) (not b_next!32865) (not b!1329113) (not b!1329429) (not b!1329338) (not tb!70279) (not b!1329509) (not b!1329505) (not d!374964) (not bm!89890) (not d!374956) (not b!1329268) (not b_next!32863) (not d!374938) (not d!374834) b_and!88767 (not b!1328870) (not d!374796) (not d!374708) (not bm!89927) (not b_next!32853) (not b!1329430) b_and!88829 (not d!374696) (not d!374694) tp_is_empty!6653 (not b!1329381) (not b!1329441) (not bm!89914) (not b!1329407) (not d!374770) (not b_next!32857) (not b!1329612) (not d!374716) (not d!374838) (not d!374892) (not b!1329208) (not d!374926) (not b!1329608) (not bm!89917) (not b!1329394) (not b_lambda!39065) (not b!1329205) (not b!1329382) (not b!1329606) (not b!1329511) (not d!374966) (not b!1329350) (not d!374988) (not b!1329484) (not d!374828) (not b!1329600) (not d!374970) (not d!374982) (not b!1329435) (not b!1329587) (not d!374826) (not b_lambda!39075) (not d!374848) (not bm!89926) (not d!374776) (not b!1329257) (not b!1329392) (not b!1329201) (not d!374954) (not b_next!32861) (not bm!89928) (not b!1329507) (not d!374798) (not d!374928) (not d!374948) (not b!1329472) (not b_lambda!39081) (not b!1329403) (not bs!331579) (not b!1329225) (not b!1329464) (not b!1329364) (not b!1329541) (not b_lambda!39063) (not d!374788) (not d!374722) (not b!1328849) (not b!1329571) (not b!1328900) (not b!1329536) (not d!374984) (not b_lambda!39067) (not b!1328923) (not b!1329495) (not b_next!32859) (not b_lambda!39079) (not bm!89888) (not b!1329226) (not d!374832) (not d!374794) (not d!374952) b_and!88823 (not b!1329122) (not b!1329534) (not b!1328899) (not b!1329347) (not b_lambda!39087) (not b!1328855) (not d!374824) (not d!374910) (not b!1329468) (not b!1329470) (not d!374700) (not b!1329572) (not d!374786) (not b!1329349) (not b!1328892) (not b!1328915) (not b!1329270) (not b!1329228) (not bs!331574) (not b!1329508) (not b!1329410) b_and!88827 (not b!1328890) (not d!374704) (not b!1329203) (not b!1329466) (not b_lambda!39073) (not b!1328879) (not d!374902) (not bm!89887) (not d!374960) (not b!1329542) (not d!374932) (not d!374690) (not b!1329611) (not b!1329588) (not tb!70273) (not b!1329330) (not b!1329573) (not b!1329137) (not bm!89930) (not b!1329603) b_and!88825 (not d!374822) (not d!374968) (not d!374836) (not b!1329258) (not b_lambda!39085) (not d!374924) (not bm!89911) (not d!374774) (not b!1329112) (not d!374972) (not bm!89908) (not b!1329332) (not d!374976) (not d!374782) (not b!1329223) (not d!374840) (not b!1329204) (not b!1328868) (not d!374912) (not b!1329425) (not bs!331576) (not b!1329463) (not d!374698) (not b!1329607) (not d!374908) (not b!1329391) (not b!1329604) (not b!1328916) (not b!1329613) b_and!88821 (not b!1329416) (not d!374904))
(check-sat (not b_next!32855) b_and!88771 (not b_next!32865) (not b_next!32863) b_and!88767 (not b_next!32857) (not b_next!32861) (not b_next!32859) b_and!88823 b_and!88827 b_and!88825 b_and!88821 (not b_next!32851) b_and!88775 (not b_next!32853) b_and!88829)
