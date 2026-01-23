; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124626 () Bool)

(assert start!124626)

(declare-fun b!1377606 () Bool)

(declare-fun b_free!33395 () Bool)

(declare-fun b_next!34099 () Bool)

(assert (=> b!1377606 (= b_free!33395 (not b_next!34099))))

(declare-fun tp!394845 () Bool)

(declare-fun b_and!92275 () Bool)

(assert (=> b!1377606 (= tp!394845 b_and!92275)))

(declare-fun b_free!33397 () Bool)

(declare-fun b_next!34101 () Bool)

(assert (=> b!1377606 (= b_free!33397 (not b_next!34101))))

(declare-fun tp!394849 () Bool)

(declare-fun b_and!92277 () Bool)

(assert (=> b!1377606 (= tp!394849 b_and!92277)))

(declare-fun b!1377645 () Bool)

(declare-fun b_free!33399 () Bool)

(declare-fun b_next!34103 () Bool)

(assert (=> b!1377645 (= b_free!33399 (not b_next!34103))))

(declare-fun tp!394851 () Bool)

(declare-fun b_and!92279 () Bool)

(assert (=> b!1377645 (= tp!394851 b_and!92279)))

(declare-fun b_free!33401 () Bool)

(declare-fun b_next!34105 () Bool)

(assert (=> b!1377645 (= b_free!33401 (not b_next!34105))))

(declare-fun tp!394843 () Bool)

(declare-fun b_and!92281 () Bool)

(assert (=> b!1377645 (= tp!394843 b_and!92281)))

(declare-fun b!1377651 () Bool)

(declare-fun b_free!33403 () Bool)

(declare-fun b_next!34107 () Bool)

(assert (=> b!1377651 (= b_free!33403 (not b_next!34107))))

(declare-fun tp!394844 () Bool)

(declare-fun b_and!92283 () Bool)

(assert (=> b!1377651 (= tp!394844 b_and!92283)))

(declare-fun b_free!33405 () Bool)

(declare-fun b_next!34109 () Bool)

(assert (=> b!1377651 (= b_free!33405 (not b_next!34109))))

(declare-fun tp!394848 () Bool)

(declare-fun b_and!92285 () Bool)

(assert (=> b!1377651 (= tp!394848 b_and!92285)))

(declare-fun b!1377644 () Bool)

(assert (=> b!1377644 true))

(assert (=> b!1377644 true))

(declare-fun b!1377650 () Bool)

(assert (=> b!1377650 true))

(declare-fun b!1377637 () Bool)

(assert (=> b!1377637 true))

(declare-fun bs!336336 () Bool)

(declare-fun b!1377631 () Bool)

(assert (= bs!336336 (and b!1377631 b!1377637)))

(declare-fun lambda!58887 () Int)

(declare-fun lambda!58886 () Int)

(assert (=> bs!336336 (not (= lambda!58887 lambda!58886))))

(assert (=> b!1377631 true))

(declare-fun e!880313 () Bool)

(assert (=> b!1377606 (= e!880313 (and tp!394845 tp!394849))))

(declare-fun b!1377607 () Bool)

(declare-datatypes ((Unit!20214 0))(
  ( (Unit!20215) )
))
(declare-fun e!880319 () Unit!20214)

(declare-fun Unit!20216 () Unit!20214)

(assert (=> b!1377607 (= e!880319 Unit!20216)))

(declare-fun b!1377608 () Bool)

(declare-fun res!621093 () Bool)

(declare-fun e!880323 () Bool)

(assert (=> b!1377608 (=> (not res!621093) (not e!880323))))

(declare-datatypes ((List!14022 0))(
  ( (Nil!13956) (Cons!13956 (h!19357 (_ BitVec 16)) (t!121835 List!14022)) )
))
(declare-datatypes ((TokenValue!2507 0))(
  ( (FloatLiteralValue!5014 (text!17994 List!14022)) (TokenValueExt!2506 (__x!8843 Int)) (Broken!12535 (value!78491 List!14022)) (Object!2572) (End!2507) (Def!2507) (Underscore!2507) (Match!2507) (Else!2507) (Error!2507) (Case!2507) (If!2507) (Extends!2507) (Abstract!2507) (Class!2507) (Val!2507) (DelimiterValue!5014 (del!2567 List!14022)) (KeywordValue!2513 (value!78492 List!14022)) (CommentValue!5014 (value!78493 List!14022)) (WhitespaceValue!5014 (value!78494 List!14022)) (IndentationValue!2507 (value!78495 List!14022)) (String!16770) (Int32!2507) (Broken!12536 (value!78496 List!14022)) (Boolean!2508) (Unit!20217) (OperatorValue!2510 (op!2567 List!14022)) (IdentifierValue!5014 (value!78497 List!14022)) (IdentifierValue!5015 (value!78498 List!14022)) (WhitespaceValue!5015 (value!78499 List!14022)) (True!5014) (False!5014) (Broken!12537 (value!78500 List!14022)) (Broken!12538 (value!78501 List!14022)) (True!5015) (RightBrace!2507) (RightBracket!2507) (Colon!2507) (Null!2507) (Comma!2507) (LeftBracket!2507) (False!5015) (LeftBrace!2507) (ImaginaryLiteralValue!2507 (text!17995 List!14022)) (StringLiteralValue!7521 (value!78502 List!14022)) (EOFValue!2507 (value!78503 List!14022)) (IdentValue!2507 (value!78504 List!14022)) (DelimiterValue!5015 (value!78505 List!14022)) (DedentValue!2507 (value!78506 List!14022)) (NewLineValue!2507 (value!78507 List!14022)) (IntegerValue!7521 (value!78508 (_ BitVec 32)) (text!17996 List!14022)) (IntegerValue!7522 (value!78509 Int) (text!17997 List!14022)) (Times!2507) (Or!2507) (Equal!2507) (Minus!2507) (Broken!12539 (value!78510 List!14022)) (And!2507) (Div!2507) (LessEqual!2507) (Mod!2507) (Concat!6238) (Not!2507) (Plus!2507) (SpaceValue!2507 (value!78511 List!14022)) (IntegerValue!7523 (value!78512 Int) (text!17998 List!14022)) (StringLiteralValue!7522 (text!17999 List!14022)) (FloatLiteralValue!5015 (text!18000 List!14022)) (BytesLiteralValue!2507 (value!78513 List!14022)) (CommentValue!5015 (value!78514 List!14022)) (StringLiteralValue!7523 (value!78515 List!14022)) (ErrorTokenValue!2507 (msg!2568 List!14022)) )
))
(declare-datatypes ((C!7752 0))(
  ( (C!7753 (val!4436 Int)) )
))
(declare-datatypes ((List!14023 0))(
  ( (Nil!13957) (Cons!13957 (h!19358 C!7752) (t!121836 List!14023)) )
))
(declare-datatypes ((IArray!9197 0))(
  ( (IArray!9198 (innerList!4656 List!14023)) )
))
(declare-datatypes ((Conc!4596 0))(
  ( (Node!4596 (left!11938 Conc!4596) (right!12268 Conc!4596) (csize!9422 Int) (cheight!4807 Int)) (Leaf!7001 (xs!7323 IArray!9197) (csize!9423 Int)) (Empty!4596) )
))
(declare-datatypes ((BalanceConc!9132 0))(
  ( (BalanceConc!9133 (c!226722 Conc!4596)) )
))
(declare-datatypes ((Regex!3731 0))(
  ( (ElementMatch!3731 (c!226723 C!7752)) (Concat!6239 (regOne!7974 Regex!3731) (regTwo!7974 Regex!3731)) (EmptyExpr!3731) (Star!3731 (reg!4060 Regex!3731)) (EmptyLang!3731) (Union!3731 (regOne!7975 Regex!3731) (regTwo!7975 Regex!3731)) )
))
(declare-datatypes ((String!16771 0))(
  ( (String!16772 (value!78516 String)) )
))
(declare-datatypes ((TokenValueInjection!4674 0))(
  ( (TokenValueInjection!4675 (toValue!3692 Int) (toChars!3551 Int)) )
))
(declare-datatypes ((Rule!4634 0))(
  ( (Rule!4635 (regex!2417 Regex!3731) (tag!2679 String!16771) (isSeparator!2417 Bool) (transformation!2417 TokenValueInjection!4674)) )
))
(declare-datatypes ((Token!4496 0))(
  ( (Token!4497 (value!78517 TokenValue!2507) (rule!4176 Rule!4634) (size!11443 Int) (originalCharacters!3279 List!14023)) )
))
(declare-fun t1!34 () Token!4496)

(declare-datatypes ((LexerInterface!2112 0))(
  ( (LexerInterfaceExt!2109 (__x!8844 Int)) (Lexer!2110) )
))
(declare-fun thiss!19762 () LexerInterface!2112)

(declare-datatypes ((List!14024 0))(
  ( (Nil!13958) (Cons!13958 (h!19359 Rule!4634) (t!121837 List!14024)) )
))
(declare-fun rules!2550 () List!14024)

(declare-fun t2!34 () Token!4496)

(declare-fun separableTokensPredicate!395 (LexerInterface!2112 Token!4496 Token!4496 List!14024) Bool)

(assert (=> b!1377608 (= res!621093 (not (separableTokensPredicate!395 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1377609 () Bool)

(declare-fun e!880314 () Bool)

(declare-fun e!880326 () Bool)

(assert (=> b!1377609 (= e!880314 e!880326)))

(declare-fun res!621105 () Bool)

(assert (=> b!1377609 (=> res!621105 e!880326)))

(declare-fun lt!458062 () List!14023)

(declare-datatypes ((tuple2!13574 0))(
  ( (tuple2!13575 (_1!7673 Token!4496) (_2!7673 List!14023)) )
))
(declare-datatypes ((Option!2684 0))(
  ( (None!2683) (Some!2683 (v!21513 tuple2!13574)) )
))
(declare-fun maxPrefix!1094 (LexerInterface!2112 List!14024 List!14023) Option!2684)

(assert (=> b!1377609 (= res!621105 (not (= (maxPrefix!1094 thiss!19762 rules!2550 lt!458062) (Some!2683 (tuple2!13575 t2!34 Nil!13957)))))))

(declare-fun lt!458056 () BalanceConc!9132)

(declare-fun list!5390 (BalanceConc!9132) List!14023)

(assert (=> b!1377609 (= lt!458062 (list!5390 lt!458056))))

(declare-fun b!1377610 () Bool)

(declare-fun res!621089 () Bool)

(declare-fun e!880325 () Bool)

(assert (=> b!1377610 (=> res!621089 e!880325)))

(declare-fun lt!458041 () List!14023)

(declare-fun lt!458044 () C!7752)

(declare-fun contains!2639 (List!14023 C!7752) Bool)

(assert (=> b!1377610 (= res!621089 (not (contains!2639 lt!458041 lt!458044)))))

(declare-fun e!880332 () Bool)

(declare-fun e!880331 () Bool)

(declare-fun b!1377611 () Bool)

(declare-fun tp!394842 () Bool)

(declare-fun inv!21 (TokenValue!2507) Bool)

(assert (=> b!1377611 (= e!880332 (and (inv!21 (value!78517 t2!34)) e!880331 tp!394842))))

(declare-fun b!1377612 () Bool)

(declare-fun res!621084 () Bool)

(declare-fun e!880336 () Bool)

(assert (=> b!1377612 (=> res!621084 e!880336)))

(declare-fun matchR!1724 (Regex!3731 List!14023) Bool)

(assert (=> b!1377612 (= res!621084 (not (matchR!1724 (regex!2417 (rule!4176 t2!34)) lt!458062)))))

(declare-fun b!1377613 () Bool)

(declare-fun e!880316 () Bool)

(declare-fun e!880329 () Bool)

(assert (=> b!1377613 (= e!880316 e!880329)))

(declare-fun res!621098 () Bool)

(assert (=> b!1377613 (=> res!621098 e!880329)))

(declare-fun lt!458057 () Regex!3731)

(declare-fun lambda!58884 () Int)

(declare-datatypes ((List!14025 0))(
  ( (Nil!13959) (Cons!13959 (h!19360 Regex!3731) (t!121838 List!14025)) )
))
(declare-fun contains!2640 (List!14025 Regex!3731) Bool)

(declare-fun map!3086 (List!14024 Int) List!14025)

(assert (=> b!1377613 (= res!621098 (not (contains!2640 (map!3086 rules!2550 lambda!58884) lt!458057)))))

(declare-fun lambda!58885 () Int)

(declare-fun getWitness!380 (List!14025 Int) Regex!3731)

(assert (=> b!1377613 (= lt!458057 (getWitness!380 (map!3086 rules!2550 lambda!58884) lambda!58885))))

(declare-fun b!1377615 () Bool)

(declare-fun res!621116 () Bool)

(declare-fun e!880334 () Bool)

(assert (=> b!1377615 (=> res!621116 e!880334)))

(declare-datatypes ((List!14026 0))(
  ( (Nil!13960) (Cons!13960 (h!19361 Token!4496) (t!121839 List!14026)) )
))
(declare-datatypes ((IArray!9199 0))(
  ( (IArray!9200 (innerList!4657 List!14026)) )
))
(declare-datatypes ((Conc!4597 0))(
  ( (Node!4597 (left!11939 Conc!4597) (right!12269 Conc!4597) (csize!9424 Int) (cheight!4808 Int)) (Leaf!7002 (xs!7324 IArray!9199) (csize!9425 Int)) (Empty!4597) )
))
(declare-datatypes ((BalanceConc!9134 0))(
  ( (BalanceConc!9135 (c!226724 Conc!4597)) )
))
(declare-datatypes ((tuple2!13576 0))(
  ( (tuple2!13577 (_1!7674 BalanceConc!9134) (_2!7674 BalanceConc!9132)) )
))
(declare-fun lt!458046 () tuple2!13576)

(declare-fun isEmpty!8422 (BalanceConc!9132) Bool)

(assert (=> b!1377615 (= res!621116 (not (isEmpty!8422 (_2!7674 lt!458046))))))

(declare-fun b!1377616 () Bool)

(declare-fun e!880311 () Bool)

(declare-fun e!880318 () Bool)

(declare-fun tp!394846 () Bool)

(declare-fun inv!18303 (String!16771) Bool)

(declare-fun inv!18306 (TokenValueInjection!4674) Bool)

(assert (=> b!1377616 (= e!880311 (and tp!394846 (inv!18303 (tag!2679 (h!19359 rules!2550))) (inv!18306 (transformation!2417 (h!19359 rules!2550))) e!880318))))

(declare-fun b!1377617 () Bool)

(declare-fun res!621095 () Bool)

(assert (=> b!1377617 (=> res!621095 e!880326)))

(declare-fun contains!2641 (List!14024 Rule!4634) Bool)

(assert (=> b!1377617 (= res!621095 (not (contains!2641 rules!2550 (rule!4176 t2!34))))))

(declare-fun b!1377618 () Bool)

(declare-fun res!621097 () Bool)

(assert (=> b!1377618 (=> res!621097 e!880314)))

(declare-fun lt!458068 () tuple2!13576)

(assert (=> b!1377618 (= res!621097 (not (isEmpty!8422 (_2!7674 lt!458068))))))

(declare-fun b!1377619 () Bool)

(declare-fun e!880327 () Unit!20214)

(declare-fun Unit!20218 () Unit!20214)

(assert (=> b!1377619 (= e!880327 Unit!20218)))

(declare-fun lt!458043 () Unit!20214)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!176 (Regex!3731 List!14023 C!7752) Unit!20214)

(declare-fun head!2491 (List!14023) C!7752)

(assert (=> b!1377619 (= lt!458043 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!176 (regex!2417 (rule!4176 t2!34)) lt!458062 (head!2491 lt!458062)))))

(assert (=> b!1377619 false))

(declare-fun b!1377620 () Bool)

(assert (=> b!1377620 (= e!880334 e!880314)))

(declare-fun res!621106 () Bool)

(assert (=> b!1377620 (=> res!621106 e!880314)))

(declare-fun lt!458069 () List!14026)

(declare-fun list!5391 (BalanceConc!9134) List!14026)

(assert (=> b!1377620 (= res!621106 (not (= (list!5391 (_1!7674 lt!458068)) lt!458069)))))

(assert (=> b!1377620 (= lt!458069 (Cons!13960 t2!34 Nil!13960))))

(declare-fun lt!458060 () BalanceConc!9132)

(declare-fun lex!939 (LexerInterface!2112 List!14024 BalanceConc!9132) tuple2!13576)

(assert (=> b!1377620 (= lt!458068 (lex!939 thiss!19762 rules!2550 lt!458060))))

(declare-fun print!878 (LexerInterface!2112 BalanceConc!9134) BalanceConc!9132)

(declare-fun singletonSeq!1052 (Token!4496) BalanceConc!9134)

(assert (=> b!1377620 (= lt!458060 (print!878 thiss!19762 (singletonSeq!1052 t2!34)))))

(declare-fun b!1377621 () Bool)

(declare-fun e!880337 () Bool)

(declare-fun e!880338 () Bool)

(assert (=> b!1377621 (= e!880337 e!880338)))

(declare-fun res!621114 () Bool)

(assert (=> b!1377621 (=> res!621114 e!880338)))

(declare-fun lt!458065 () List!14023)

(declare-fun ++!3614 (List!14023 List!14023) List!14023)

(declare-fun getSuffix!579 (List!14023 List!14023) List!14023)

(assert (=> b!1377621 (= res!621114 (not (= lt!458065 (++!3614 lt!458041 (getSuffix!579 lt!458065 lt!458041)))))))

(declare-fun lambda!58883 () Int)

(declare-fun pickWitness!186 (Int) List!14023)

(assert (=> b!1377621 (= lt!458065 (pickWitness!186 lambda!58883))))

(declare-fun b!1377622 () Bool)

(declare-fun res!621087 () Bool)

(assert (=> b!1377622 (=> (not res!621087) (not e!880323))))

(declare-fun sepAndNonSepRulesDisjointChars!790 (List!14024 List!14024) Bool)

(assert (=> b!1377622 (= res!621087 (sepAndNonSepRulesDisjointChars!790 rules!2550 rules!2550))))

(declare-fun b!1377623 () Bool)

(declare-fun e!880317 () Bool)

(assert (=> b!1377623 (= e!880317 e!880323)))

(declare-fun res!621112 () Bool)

(assert (=> b!1377623 (=> (not res!621112) (not e!880323))))

(declare-fun size!11444 (BalanceConc!9132) Int)

(assert (=> b!1377623 (= res!621112 (> (size!11444 lt!458056) 0))))

(declare-fun charsOf!1389 (Token!4496) BalanceConc!9132)

(assert (=> b!1377623 (= lt!458056 (charsOf!1389 t2!34))))

(declare-fun b!1377624 () Bool)

(declare-fun res!621083 () Bool)

(assert (=> b!1377624 (=> (not res!621083) (not e!880317))))

(declare-fun rulesInvariant!1982 (LexerInterface!2112 List!14024) Bool)

(assert (=> b!1377624 (= res!621083 (rulesInvariant!1982 thiss!19762 rules!2550))))

(declare-fun b!1377625 () Bool)

(declare-fun res!621110 () Bool)

(assert (=> b!1377625 (=> (not res!621110) (not e!880317))))

(declare-fun rulesProduceIndividualToken!1081 (LexerInterface!2112 List!14024 Token!4496) Bool)

(assert (=> b!1377625 (= res!621110 (rulesProduceIndividualToken!1081 thiss!19762 rules!2550 t2!34))))

(declare-fun tp!394841 () Bool)

(declare-fun b!1377626 () Bool)

(assert (=> b!1377626 (= e!880331 (and tp!394841 (inv!18303 (tag!2679 (rule!4176 t2!34))) (inv!18306 (transformation!2417 (rule!4176 t2!34))) e!880313))))

(declare-fun tp!394850 () Bool)

(declare-fun b!1377627 () Bool)

(declare-fun e!880312 () Bool)

(declare-fun e!880330 () Bool)

(assert (=> b!1377627 (= e!880312 (and tp!394850 (inv!18303 (tag!2679 (rule!4176 t1!34))) (inv!18306 (transformation!2417 (rule!4176 t1!34))) e!880330))))

(declare-fun b!1377628 () Bool)

(declare-fun res!621101 () Bool)

(assert (=> b!1377628 (=> res!621101 e!880326)))

(declare-fun lt!458066 () Rule!4634)

(assert (=> b!1377628 (= res!621101 (not (contains!2641 rules!2550 lt!458066)))))

(declare-fun b!1377629 () Bool)

(declare-fun res!621107 () Bool)

(assert (=> b!1377629 (=> (not res!621107) (not e!880317))))

(assert (=> b!1377629 (= res!621107 (rulesProduceIndividualToken!1081 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1377630 () Bool)

(declare-fun res!621103 () Bool)

(assert (=> b!1377630 (=> (not res!621103) (not e!880317))))

(assert (=> b!1377630 (= res!621103 (not (= (isSeparator!2417 (rule!4176 t1!34)) (isSeparator!2417 (rule!4176 t2!34)))))))

(assert (=> b!1377631 (= e!880326 e!880336)))

(declare-fun res!621088 () Bool)

(assert (=> b!1377631 (=> res!621088 e!880336)))

(declare-fun lt!458070 () List!14023)

(assert (=> b!1377631 (= res!621088 (not (matchR!1724 (regex!2417 (rule!4176 t1!34)) lt!458070)))))

(declare-fun lt!458067 () Unit!20214)

(declare-fun forallContained!620 (List!14024 Int Rule!4634) Unit!20214)

(assert (=> b!1377631 (= lt!458067 (forallContained!620 rules!2550 lambda!58887 (rule!4176 t2!34)))))

(declare-fun lt!458042 () Unit!20214)

(assert (=> b!1377631 (= lt!458042 (forallContained!620 rules!2550 lambda!58887 (rule!4176 t1!34)))))

(declare-fun lt!458047 () Unit!20214)

(assert (=> b!1377631 (= lt!458047 (forallContained!620 rules!2550 lambda!58887 lt!458066))))

(declare-fun b!1377632 () Bool)

(declare-fun res!621111 () Bool)

(assert (=> b!1377632 (=> (not res!621111) (not e!880317))))

(declare-fun isEmpty!8423 (List!14024) Bool)

(assert (=> b!1377632 (= res!621111 (not (isEmpty!8423 rules!2550)))))

(declare-fun b!1377633 () Bool)

(declare-fun res!621091 () Bool)

(assert (=> b!1377633 (=> res!621091 e!880325)))

(assert (=> b!1377633 (= res!621091 (not (contains!2639 lt!458065 lt!458044)))))

(declare-fun res!621085 () Bool)

(assert (=> start!124626 (=> (not res!621085) (not e!880317))))

(get-info :version)

(assert (=> start!124626 (= res!621085 ((_ is Lexer!2110) thiss!19762))))

(assert (=> start!124626 e!880317))

(assert (=> start!124626 true))

(declare-fun e!880324 () Bool)

(assert (=> start!124626 e!880324))

(declare-fun e!880321 () Bool)

(declare-fun inv!18307 (Token!4496) Bool)

(assert (=> start!124626 (and (inv!18307 t1!34) e!880321)))

(assert (=> start!124626 (and (inv!18307 t2!34) e!880332)))

(declare-fun b!1377614 () Bool)

(declare-fun res!621115 () Bool)

(assert (=> b!1377614 (=> res!621115 e!880314)))

(declare-datatypes ((tuple2!13578 0))(
  ( (tuple2!13579 (_1!7675 List!14026) (_2!7675 List!14023)) )
))
(declare-fun lexList!630 (LexerInterface!2112 List!14024 List!14023) tuple2!13578)

(assert (=> b!1377614 (= res!621115 (not (= (lexList!630 thiss!19762 rules!2550 (list!5390 lt!458060)) (tuple2!13579 lt!458069 Nil!13957))))))

(declare-fun b!1377634 () Bool)

(declare-fun tp!394852 () Bool)

(assert (=> b!1377634 (= e!880324 (and e!880311 tp!394852))))

(declare-fun b!1377635 () Bool)

(declare-fun Unit!20219 () Unit!20214)

(assert (=> b!1377635 (= e!880319 Unit!20219)))

(declare-fun lt!458058 () Unit!20214)

(assert (=> b!1377635 (= lt!458058 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!176 (regex!2417 (rule!4176 t1!34)) lt!458070 (head!2491 lt!458070)))))

(assert (=> b!1377635 false))

(declare-fun b!1377636 () Bool)

(declare-fun Unit!20220 () Unit!20214)

(assert (=> b!1377636 (= e!880327 Unit!20220)))

(declare-fun e!880339 () Bool)

(assert (=> b!1377637 (= e!880329 e!880339)))

(declare-fun res!621117 () Bool)

(assert (=> b!1377637 (=> res!621117 e!880339)))

(declare-fun exists!492 (List!14024 Int) Bool)

(assert (=> b!1377637 (= res!621117 (not (exists!492 rules!2550 lambda!58886)))))

(assert (=> b!1377637 (exists!492 rules!2550 lambda!58886)))

(declare-fun lt!458061 () Unit!20214)

(declare-fun lemmaMapContains!136 (List!14024 Int Regex!3731) Unit!20214)

(assert (=> b!1377637 (= lt!458061 (lemmaMapContains!136 rules!2550 lambda!58884 lt!458057))))

(declare-fun b!1377638 () Bool)

(declare-fun res!621109 () Bool)

(assert (=> b!1377638 (=> res!621109 e!880325)))

(declare-fun lt!458063 () Regex!3731)

(assert (=> b!1377638 (= res!621109 (not (matchR!1724 lt!458063 lt!458065)))))

(declare-fun b!1377639 () Bool)

(assert (=> b!1377639 (= e!880339 e!880334)))

(declare-fun res!621104 () Bool)

(assert (=> b!1377639 (=> res!621104 e!880334)))

(declare-fun lt!458048 () List!14026)

(assert (=> b!1377639 (= res!621104 (not (= (list!5391 (_1!7674 lt!458046)) lt!458048)))))

(assert (=> b!1377639 (= lt!458048 (Cons!13960 t1!34 Nil!13960))))

(declare-fun lt!458052 () BalanceConc!9132)

(assert (=> b!1377639 (= lt!458046 (lex!939 thiss!19762 rules!2550 lt!458052))))

(assert (=> b!1377639 (= lt!458052 (print!878 thiss!19762 (singletonSeq!1052 t1!34)))))

(declare-fun getWitness!381 (List!14024 Int) Rule!4634)

(assert (=> b!1377639 (= lt!458066 (getWitness!381 rules!2550 lambda!58886))))

(declare-fun b!1377640 () Bool)

(declare-fun res!621092 () Bool)

(assert (=> b!1377640 (=> res!621092 e!880334)))

(assert (=> b!1377640 (= res!621092 (not (contains!2641 rules!2550 (rule!4176 t1!34))))))

(declare-fun b!1377641 () Bool)

(declare-fun e!880340 () Bool)

(assert (=> b!1377641 (= e!880336 e!880340)))

(declare-fun res!621100 () Bool)

(assert (=> b!1377641 (=> res!621100 e!880340)))

(declare-fun lt!458045 () Bool)

(assert (=> b!1377641 (= res!621100 lt!458045)))

(declare-fun lt!458064 () Unit!20214)

(assert (=> b!1377641 (= lt!458064 e!880319)))

(declare-fun c!226721 () Bool)

(assert (=> b!1377641 (= c!226721 lt!458045)))

(declare-fun lt!458051 () C!7752)

(declare-fun usedCharacters!236 (Regex!3731) List!14023)

(assert (=> b!1377641 (= lt!458045 (not (contains!2639 (usedCharacters!236 (regex!2417 (rule!4176 t1!34))) lt!458051)))))

(declare-fun b!1377642 () Bool)

(declare-fun e!880335 () Bool)

(assert (=> b!1377642 (= e!880340 e!880335)))

(declare-fun res!621108 () Bool)

(assert (=> b!1377642 (=> res!621108 e!880335)))

(declare-fun lt!458054 () Bool)

(assert (=> b!1377642 (= res!621108 lt!458054)))

(declare-fun lt!458055 () Unit!20214)

(assert (=> b!1377642 (= lt!458055 e!880327)))

(declare-fun c!226720 () Bool)

(assert (=> b!1377642 (= c!226720 lt!458054)))

(assert (=> b!1377642 (= lt!458054 (not (contains!2639 (usedCharacters!236 (regex!2417 (rule!4176 t2!34))) lt!458044)))))

(declare-fun b!1377643 () Bool)

(declare-fun res!621102 () Bool)

(assert (=> b!1377643 (=> res!621102 e!880334)))

(assert (=> b!1377643 (= res!621102 (not (= (lexList!630 thiss!19762 rules!2550 (list!5390 lt!458052)) (tuple2!13579 lt!458048 Nil!13957))))))

(declare-fun e!880322 () Bool)

(assert (=> b!1377644 (= e!880322 (not e!880337))))

(declare-fun res!621096 () Bool)

(assert (=> b!1377644 (=> res!621096 e!880337)))

(declare-fun Exists!883 (Int) Bool)

(assert (=> b!1377644 (= res!621096 (not (Exists!883 lambda!58883)))))

(assert (=> b!1377644 (Exists!883 lambda!58883)))

(declare-fun lt!458049 () Unit!20214)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!201 (Regex!3731 List!14023) Unit!20214)

(assert (=> b!1377644 (= lt!458049 (lemmaPrefixMatchThenExistsStringThatMatches!201 lt!458063 lt!458041))))

(assert (=> b!1377645 (= e!880330 (and tp!394851 tp!394843))))

(declare-fun b!1377646 () Bool)

(declare-fun res!621113 () Bool)

(assert (=> b!1377646 (=> res!621113 e!880334)))

(assert (=> b!1377646 (= res!621113 (not (= (maxPrefix!1094 thiss!19762 rules!2550 lt!458070) (Some!2683 (tuple2!13575 t1!34 Nil!13957)))))))

(declare-fun b!1377647 () Bool)

(declare-fun res!621099 () Bool)

(assert (=> b!1377647 (=> res!621099 e!880325)))

(assert (=> b!1377647 (= res!621099 (not (contains!2639 lt!458065 lt!458051)))))

(declare-fun b!1377648 () Bool)

(assert (=> b!1377648 (= e!880335 (or (isSeparator!2417 lt!458066) (not (isSeparator!2417 (rule!4176 t1!34))) (not (isSeparator!2417 (rule!4176 t2!34)))))))

(assert (=> b!1377648 (= (regex!2417 lt!458066) lt!458057)))

(declare-fun b!1377649 () Bool)

(assert (=> b!1377649 (= e!880323 e!880322)))

(declare-fun res!621090 () Bool)

(assert (=> b!1377649 (=> (not res!621090) (not e!880322))))

(declare-fun prefixMatch!240 (Regex!3731 List!14023) Bool)

(assert (=> b!1377649 (= res!621090 (prefixMatch!240 lt!458063 lt!458041))))

(declare-fun rulesRegex!300 (LexerInterface!2112 List!14024) Regex!3731)

(assert (=> b!1377649 (= lt!458063 (rulesRegex!300 thiss!19762 rules!2550))))

(assert (=> b!1377649 (= lt!458041 (++!3614 lt!458070 (Cons!13957 lt!458044 Nil!13957)))))

(declare-fun apply!3447 (BalanceConc!9132 Int) C!7752)

(assert (=> b!1377649 (= lt!458044 (apply!3447 lt!458056 0))))

(declare-fun lt!458059 () BalanceConc!9132)

(assert (=> b!1377649 (= lt!458070 (list!5390 lt!458059))))

(assert (=> b!1377649 (= lt!458059 (charsOf!1389 t1!34))))

(assert (=> b!1377650 (= e!880325 e!880316)))

(declare-fun res!621086 () Bool)

(assert (=> b!1377650 (=> res!621086 e!880316)))

(declare-fun exists!493 (List!14025 Int) Bool)

(assert (=> b!1377650 (= res!621086 (not (exists!493 (map!3086 rules!2550 lambda!58884) lambda!58885)))))

(declare-fun lt!458050 () List!14025)

(assert (=> b!1377650 (exists!493 lt!458050 lambda!58885)))

(declare-fun lt!458053 () Unit!20214)

(declare-fun matchRGenUnionSpec!148 (Regex!3731 List!14025 List!14023) Unit!20214)

(assert (=> b!1377650 (= lt!458053 (matchRGenUnionSpec!148 lt!458063 lt!458050 lt!458065))))

(assert (=> b!1377650 (= lt!458050 (map!3086 rules!2550 lambda!58884))))

(assert (=> b!1377651 (= e!880318 (and tp!394844 tp!394848))))

(declare-fun b!1377652 () Bool)

(assert (=> b!1377652 (= e!880338 e!880325)))

(declare-fun res!621094 () Bool)

(assert (=> b!1377652 (=> res!621094 e!880325)))

(assert (=> b!1377652 (= res!621094 (not (contains!2639 lt!458041 lt!458051)))))

(assert (=> b!1377652 (= lt!458051 (apply!3447 lt!458059 0))))

(declare-fun b!1377653 () Bool)

(declare-fun tp!394847 () Bool)

(assert (=> b!1377653 (= e!880321 (and (inv!21 (value!78517 t1!34)) e!880312 tp!394847))))

(assert (= (and start!124626 res!621085) b!1377632))

(assert (= (and b!1377632 res!621111) b!1377624))

(assert (= (and b!1377624 res!621083) b!1377629))

(assert (= (and b!1377629 res!621107) b!1377625))

(assert (= (and b!1377625 res!621110) b!1377630))

(assert (= (and b!1377630 res!621103) b!1377623))

(assert (= (and b!1377623 res!621112) b!1377622))

(assert (= (and b!1377622 res!621087) b!1377608))

(assert (= (and b!1377608 res!621093) b!1377649))

(assert (= (and b!1377649 res!621090) b!1377644))

(assert (= (and b!1377644 (not res!621096)) b!1377621))

(assert (= (and b!1377621 (not res!621114)) b!1377652))

(assert (= (and b!1377652 (not res!621094)) b!1377647))

(assert (= (and b!1377647 (not res!621099)) b!1377610))

(assert (= (and b!1377610 (not res!621089)) b!1377633))

(assert (= (and b!1377633 (not res!621091)) b!1377638))

(assert (= (and b!1377638 (not res!621109)) b!1377650))

(assert (= (and b!1377650 (not res!621086)) b!1377613))

(assert (= (and b!1377613 (not res!621098)) b!1377637))

(assert (= (and b!1377637 (not res!621117)) b!1377639))

(assert (= (and b!1377639 (not res!621104)) b!1377615))

(assert (= (and b!1377615 (not res!621116)) b!1377643))

(assert (= (and b!1377643 (not res!621102)) b!1377646))

(assert (= (and b!1377646 (not res!621113)) b!1377640))

(assert (= (and b!1377640 (not res!621092)) b!1377620))

(assert (= (and b!1377620 (not res!621106)) b!1377618))

(assert (= (and b!1377618 (not res!621097)) b!1377614))

(assert (= (and b!1377614 (not res!621115)) b!1377609))

(assert (= (and b!1377609 (not res!621105)) b!1377617))

(assert (= (and b!1377617 (not res!621095)) b!1377628))

(assert (= (and b!1377628 (not res!621101)) b!1377631))

(assert (= (and b!1377631 (not res!621088)) b!1377612))

(assert (= (and b!1377612 (not res!621084)) b!1377641))

(assert (= (and b!1377641 c!226721) b!1377635))

(assert (= (and b!1377641 (not c!226721)) b!1377607))

(assert (= (and b!1377641 (not res!621100)) b!1377642))

(assert (= (and b!1377642 c!226720) b!1377619))

(assert (= (and b!1377642 (not c!226720)) b!1377636))

(assert (= (and b!1377642 (not res!621108)) b!1377648))

(assert (= b!1377616 b!1377651))

(assert (= b!1377634 b!1377616))

(assert (= (and start!124626 ((_ is Cons!13958) rules!2550)) b!1377634))

(assert (= b!1377627 b!1377645))

(assert (= b!1377653 b!1377627))

(assert (= start!124626 b!1377653))

(assert (= b!1377626 b!1377606))

(assert (= b!1377611 b!1377626))

(assert (= start!124626 b!1377611))

(declare-fun m!1550141 () Bool)

(assert (=> b!1377621 m!1550141))

(assert (=> b!1377621 m!1550141))

(declare-fun m!1550143 () Bool)

(assert (=> b!1377621 m!1550143))

(declare-fun m!1550145 () Bool)

(assert (=> b!1377621 m!1550145))

(declare-fun m!1550147 () Bool)

(assert (=> b!1377643 m!1550147))

(assert (=> b!1377643 m!1550147))

(declare-fun m!1550149 () Bool)

(assert (=> b!1377643 m!1550149))

(declare-fun m!1550151 () Bool)

(assert (=> b!1377637 m!1550151))

(assert (=> b!1377637 m!1550151))

(declare-fun m!1550153 () Bool)

(assert (=> b!1377637 m!1550153))

(declare-fun m!1550155 () Bool)

(assert (=> b!1377623 m!1550155))

(declare-fun m!1550157 () Bool)

(assert (=> b!1377623 m!1550157))

(declare-fun m!1550159 () Bool)

(assert (=> b!1377644 m!1550159))

(assert (=> b!1377644 m!1550159))

(declare-fun m!1550161 () Bool)

(assert (=> b!1377644 m!1550161))

(declare-fun m!1550163 () Bool)

(assert (=> b!1377610 m!1550163))

(declare-fun m!1550165 () Bool)

(assert (=> b!1377611 m!1550165))

(declare-fun m!1550167 () Bool)

(assert (=> b!1377633 m!1550167))

(declare-fun m!1550169 () Bool)

(assert (=> b!1377647 m!1550169))

(declare-fun m!1550171 () Bool)

(assert (=> b!1377615 m!1550171))

(declare-fun m!1550173 () Bool)

(assert (=> b!1377639 m!1550173))

(declare-fun m!1550175 () Bool)

(assert (=> b!1377639 m!1550175))

(declare-fun m!1550177 () Bool)

(assert (=> b!1377639 m!1550177))

(assert (=> b!1377639 m!1550175))

(declare-fun m!1550179 () Bool)

(assert (=> b!1377639 m!1550179))

(declare-fun m!1550181 () Bool)

(assert (=> b!1377639 m!1550181))

(declare-fun m!1550183 () Bool)

(assert (=> b!1377632 m!1550183))

(declare-fun m!1550185 () Bool)

(assert (=> b!1377618 m!1550185))

(declare-fun m!1550187 () Bool)

(assert (=> b!1377609 m!1550187))

(declare-fun m!1550189 () Bool)

(assert (=> b!1377609 m!1550189))

(declare-fun m!1550191 () Bool)

(assert (=> b!1377638 m!1550191))

(declare-fun m!1550193 () Bool)

(assert (=> b!1377613 m!1550193))

(assert (=> b!1377613 m!1550193))

(declare-fun m!1550195 () Bool)

(assert (=> b!1377613 m!1550195))

(assert (=> b!1377613 m!1550193))

(assert (=> b!1377613 m!1550193))

(declare-fun m!1550197 () Bool)

(assert (=> b!1377613 m!1550197))

(declare-fun m!1550199 () Bool)

(assert (=> b!1377622 m!1550199))

(declare-fun m!1550201 () Bool)

(assert (=> b!1377625 m!1550201))

(declare-fun m!1550203 () Bool)

(assert (=> b!1377646 m!1550203))

(declare-fun m!1550205 () Bool)

(assert (=> b!1377624 m!1550205))

(declare-fun m!1550207 () Bool)

(assert (=> b!1377626 m!1550207))

(declare-fun m!1550209 () Bool)

(assert (=> b!1377626 m!1550209))

(declare-fun m!1550211 () Bool)

(assert (=> b!1377650 m!1550211))

(declare-fun m!1550213 () Bool)

(assert (=> b!1377650 m!1550213))

(assert (=> b!1377650 m!1550193))

(declare-fun m!1550215 () Bool)

(assert (=> b!1377650 m!1550215))

(assert (=> b!1377650 m!1550193))

(assert (=> b!1377650 m!1550193))

(declare-fun m!1550217 () Bool)

(assert (=> b!1377642 m!1550217))

(assert (=> b!1377642 m!1550217))

(declare-fun m!1550219 () Bool)

(assert (=> b!1377642 m!1550219))

(declare-fun m!1550221 () Bool)

(assert (=> b!1377641 m!1550221))

(assert (=> b!1377641 m!1550221))

(declare-fun m!1550223 () Bool)

(assert (=> b!1377641 m!1550223))

(declare-fun m!1550225 () Bool)

(assert (=> b!1377612 m!1550225))

(declare-fun m!1550227 () Bool)

(assert (=> b!1377616 m!1550227))

(declare-fun m!1550229 () Bool)

(assert (=> b!1377616 m!1550229))

(declare-fun m!1550231 () Bool)

(assert (=> b!1377619 m!1550231))

(assert (=> b!1377619 m!1550231))

(declare-fun m!1550233 () Bool)

(assert (=> b!1377619 m!1550233))

(declare-fun m!1550235 () Bool)

(assert (=> b!1377652 m!1550235))

(declare-fun m!1550237 () Bool)

(assert (=> b!1377652 m!1550237))

(declare-fun m!1550239 () Bool)

(assert (=> b!1377635 m!1550239))

(assert (=> b!1377635 m!1550239))

(declare-fun m!1550241 () Bool)

(assert (=> b!1377635 m!1550241))

(declare-fun m!1550243 () Bool)

(assert (=> b!1377614 m!1550243))

(assert (=> b!1377614 m!1550243))

(declare-fun m!1550245 () Bool)

(assert (=> b!1377614 m!1550245))

(declare-fun m!1550247 () Bool)

(assert (=> b!1377640 m!1550247))

(declare-fun m!1550249 () Bool)

(assert (=> b!1377628 m!1550249))

(declare-fun m!1550251 () Bool)

(assert (=> b!1377653 m!1550251))

(declare-fun m!1550253 () Bool)

(assert (=> b!1377620 m!1550253))

(declare-fun m!1550255 () Bool)

(assert (=> b!1377620 m!1550255))

(declare-fun m!1550257 () Bool)

(assert (=> b!1377620 m!1550257))

(assert (=> b!1377620 m!1550257))

(declare-fun m!1550259 () Bool)

(assert (=> b!1377620 m!1550259))

(declare-fun m!1550261 () Bool)

(assert (=> b!1377617 m!1550261))

(declare-fun m!1550263 () Bool)

(assert (=> start!124626 m!1550263))

(declare-fun m!1550265 () Bool)

(assert (=> start!124626 m!1550265))

(declare-fun m!1550267 () Bool)

(assert (=> b!1377649 m!1550267))

(declare-fun m!1550269 () Bool)

(assert (=> b!1377649 m!1550269))

(declare-fun m!1550271 () Bool)

(assert (=> b!1377649 m!1550271))

(declare-fun m!1550273 () Bool)

(assert (=> b!1377649 m!1550273))

(declare-fun m!1550275 () Bool)

(assert (=> b!1377649 m!1550275))

(declare-fun m!1550277 () Bool)

(assert (=> b!1377649 m!1550277))

(declare-fun m!1550279 () Bool)

(assert (=> b!1377608 m!1550279))

(declare-fun m!1550281 () Bool)

(assert (=> b!1377627 m!1550281))

(declare-fun m!1550283 () Bool)

(assert (=> b!1377627 m!1550283))

(declare-fun m!1550285 () Bool)

(assert (=> b!1377629 m!1550285))

(declare-fun m!1550287 () Bool)

(assert (=> b!1377631 m!1550287))

(declare-fun m!1550289 () Bool)

(assert (=> b!1377631 m!1550289))

(declare-fun m!1550291 () Bool)

(assert (=> b!1377631 m!1550291))

(declare-fun m!1550293 () Bool)

(assert (=> b!1377631 m!1550293))

(check-sat b_and!92285 (not b!1377614) (not b_next!34099) (not b!1377647) (not b_next!34107) (not b_next!34109) (not b!1377653) (not b!1377638) (not b!1377623) (not b!1377639) b_and!92283 (not b!1377608) (not b!1377633) b_and!92279 (not b!1377620) (not b!1377616) (not b!1377613) (not b_next!34101) b_and!92281 (not b!1377649) (not b_next!34105) b_and!92277 (not b!1377644) (not b!1377652) (not b!1377628) (not b!1377624) (not b!1377634) (not b!1377626) (not b!1377637) (not b!1377611) (not b!1377632) (not start!124626) (not b!1377635) (not b!1377621) (not b!1377642) (not b!1377618) (not b!1377612) (not b!1377643) (not b!1377622) (not b!1377627) (not b!1377641) (not b!1377646) b_and!92275 (not b!1377619) (not b!1377650) (not b!1377617) (not b!1377640) (not b!1377629) (not b!1377615) (not b!1377625) (not b!1377609) (not b!1377631) (not b_next!34103) (not b!1377610))
(check-sat b_and!92285 b_and!92283 b_and!92279 (not b_next!34099) (not b_next!34107) (not b_next!34109) b_and!92275 (not b_next!34103) (not b_next!34101) b_and!92281 (not b_next!34105) b_and!92277)
