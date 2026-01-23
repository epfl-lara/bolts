; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126346 () Bool)

(assert start!126346)

(declare-fun b!1390097 () Bool)

(declare-fun b_free!33795 () Bool)

(declare-fun b_next!34499 () Bool)

(assert (=> b!1390097 (= b_free!33795 (not b_next!34499))))

(declare-fun tp!397110 () Bool)

(declare-fun b_and!93123 () Bool)

(assert (=> b!1390097 (= tp!397110 b_and!93123)))

(declare-fun b_free!33797 () Bool)

(declare-fun b_next!34501 () Bool)

(assert (=> b!1390097 (= b_free!33797 (not b_next!34501))))

(declare-fun tp!397105 () Bool)

(declare-fun b_and!93125 () Bool)

(assert (=> b!1390097 (= tp!397105 b_and!93125)))

(declare-fun b!1390083 () Bool)

(declare-fun b_free!33799 () Bool)

(declare-fun b_next!34503 () Bool)

(assert (=> b!1390083 (= b_free!33799 (not b_next!34503))))

(declare-fun tp!397109 () Bool)

(declare-fun b_and!93127 () Bool)

(assert (=> b!1390083 (= tp!397109 b_and!93127)))

(declare-fun b_free!33801 () Bool)

(declare-fun b_next!34505 () Bool)

(assert (=> b!1390083 (= b_free!33801 (not b_next!34505))))

(declare-fun tp!397102 () Bool)

(declare-fun b_and!93129 () Bool)

(assert (=> b!1390083 (= tp!397102 b_and!93129)))

(declare-fun b!1390092 () Bool)

(declare-fun b_free!33803 () Bool)

(declare-fun b_next!34507 () Bool)

(assert (=> b!1390092 (= b_free!33803 (not b_next!34507))))

(declare-fun tp!397111 () Bool)

(declare-fun b_and!93131 () Bool)

(assert (=> b!1390092 (= tp!397111 b_and!93131)))

(declare-fun b_free!33805 () Bool)

(declare-fun b_next!34509 () Bool)

(assert (=> b!1390092 (= b_free!33805 (not b_next!34509))))

(declare-fun tp!397108 () Bool)

(declare-fun b_and!93133 () Bool)

(assert (=> b!1390092 (= tp!397108 b_and!93133)))

(declare-fun b!1390096 () Bool)

(assert (=> b!1390096 true))

(assert (=> b!1390096 true))

(declare-fun b!1390085 () Bool)

(assert (=> b!1390085 true))

(declare-fun b!1390084 () Bool)

(assert (=> b!1390084 true))

(declare-fun bs!337350 () Bool)

(declare-fun b!1390077 () Bool)

(assert (= bs!337350 (and b!1390077 b!1390084)))

(declare-fun lambda!60113 () Int)

(declare-fun lambda!60112 () Int)

(assert (=> bs!337350 (not (= lambda!60113 lambda!60112))))

(assert (=> b!1390077 true))

(declare-fun b!1390052 () Bool)

(declare-fun e!887899 () Bool)

(declare-fun e!887893 () Bool)

(assert (=> b!1390052 (= e!887899 e!887893)))

(declare-fun res!627550 () Bool)

(assert (=> b!1390052 (=> res!627550 e!887893)))

(declare-datatypes ((LexerInterface!2138 0))(
  ( (LexerInterfaceExt!2135 (__x!8895 Int)) (Lexer!2136) )
))
(declare-fun thiss!19762 () LexerInterface!2138)

(declare-datatypes ((List!14172 0))(
  ( (Nil!14106) (Cons!14106 (h!19507 (_ BitVec 16)) (t!122411 List!14172)) )
))
(declare-datatypes ((TokenValue!2533 0))(
  ( (FloatLiteralValue!5066 (text!18176 List!14172)) (TokenValueExt!2532 (__x!8896 Int)) (Broken!12665 (value!79232 List!14172)) (Object!2598) (End!2533) (Def!2533) (Underscore!2533) (Match!2533) (Else!2533) (Error!2533) (Case!2533) (If!2533) (Extends!2533) (Abstract!2533) (Class!2533) (Val!2533) (DelimiterValue!5066 (del!2593 List!14172)) (KeywordValue!2539 (value!79233 List!14172)) (CommentValue!5066 (value!79234 List!14172)) (WhitespaceValue!5066 (value!79235 List!14172)) (IndentationValue!2533 (value!79236 List!14172)) (String!16900) (Int32!2533) (Broken!12666 (value!79237 List!14172)) (Boolean!2534) (Unit!20366) (OperatorValue!2536 (op!2593 List!14172)) (IdentifierValue!5066 (value!79238 List!14172)) (IdentifierValue!5067 (value!79239 List!14172)) (WhitespaceValue!5067 (value!79240 List!14172)) (True!5066) (False!5066) (Broken!12667 (value!79241 List!14172)) (Broken!12668 (value!79242 List!14172)) (True!5067) (RightBrace!2533) (RightBracket!2533) (Colon!2533) (Null!2533) (Comma!2533) (LeftBracket!2533) (False!5067) (LeftBrace!2533) (ImaginaryLiteralValue!2533 (text!18177 List!14172)) (StringLiteralValue!7599 (value!79243 List!14172)) (EOFValue!2533 (value!79244 List!14172)) (IdentValue!2533 (value!79245 List!14172)) (DelimiterValue!5067 (value!79246 List!14172)) (DedentValue!2533 (value!79247 List!14172)) (NewLineValue!2533 (value!79248 List!14172)) (IntegerValue!7599 (value!79249 (_ BitVec 32)) (text!18178 List!14172)) (IntegerValue!7600 (value!79250 Int) (text!18179 List!14172)) (Times!2533) (Or!2533) (Equal!2533) (Minus!2533) (Broken!12669 (value!79251 List!14172)) (And!2533) (Div!2533) (LessEqual!2533) (Mod!2533) (Concat!6290) (Not!2533) (Plus!2533) (SpaceValue!2533 (value!79252 List!14172)) (IntegerValue!7601 (value!79253 Int) (text!18180 List!14172)) (StringLiteralValue!7600 (text!18181 List!14172)) (FloatLiteralValue!5067 (text!18182 List!14172)) (BytesLiteralValue!2533 (value!79254 List!14172)) (CommentValue!5067 (value!79255 List!14172)) (StringLiteralValue!7601 (value!79256 List!14172)) (ErrorTokenValue!2533 (msg!2594 List!14172)) )
))
(declare-datatypes ((C!7804 0))(
  ( (C!7805 (val!4462 Int)) )
))
(declare-datatypes ((List!14173 0))(
  ( (Nil!14107) (Cons!14107 (h!19508 C!7804) (t!122412 List!14173)) )
))
(declare-datatypes ((IArray!9297 0))(
  ( (IArray!9298 (innerList!4706 List!14173)) )
))
(declare-datatypes ((Conc!4646 0))(
  ( (Node!4646 (left!12053 Conc!4646) (right!12383 Conc!4646) (csize!9522 Int) (cheight!4857 Int)) (Leaf!7064 (xs!7373 IArray!9297) (csize!9523 Int)) (Empty!4646) )
))
(declare-datatypes ((BalanceConc!9232 0))(
  ( (BalanceConc!9233 (c!228748 Conc!4646)) )
))
(declare-datatypes ((Regex!3757 0))(
  ( (ElementMatch!3757 (c!228749 C!7804)) (Concat!6291 (regOne!8026 Regex!3757) (regTwo!8026 Regex!3757)) (EmptyExpr!3757) (Star!3757 (reg!4086 Regex!3757)) (EmptyLang!3757) (Union!3757 (regOne!8027 Regex!3757) (regTwo!8027 Regex!3757)) )
))
(declare-datatypes ((String!16901 0))(
  ( (String!16902 (value!79257 String)) )
))
(declare-datatypes ((TokenValueInjection!4726 0))(
  ( (TokenValueInjection!4727 (toValue!3730 Int) (toChars!3589 Int)) )
))
(declare-datatypes ((Rule!4686 0))(
  ( (Rule!4687 (regex!2443 Regex!3757) (tag!2705 String!16901) (isSeparator!2443 Bool) (transformation!2443 TokenValueInjection!4726)) )
))
(declare-datatypes ((List!14174 0))(
  ( (Nil!14108) (Cons!14108 (h!19509 Rule!4686) (t!122413 List!14174)) )
))
(declare-fun rules!2550 () List!14174)

(declare-fun lt!462537 () List!14173)

(declare-datatypes ((Token!4548 0))(
  ( (Token!4549 (value!79258 TokenValue!2533) (rule!4204 Rule!4686) (size!11595 Int) (originalCharacters!3305 List!14173)) )
))
(declare-fun t2!34 () Token!4548)

(declare-datatypes ((tuple2!13710 0))(
  ( (tuple2!13711 (_1!7741 Token!4548) (_2!7741 List!14173)) )
))
(declare-datatypes ((Option!2704 0))(
  ( (None!2703) (Some!2703 (v!21586 tuple2!13710)) )
))
(declare-fun maxPrefix!1112 (LexerInterface!2138 List!14174 List!14173) Option!2704)

(assert (=> b!1390052 (= res!627550 (not (= (maxPrefix!1112 thiss!19762 rules!2550 lt!462537) (Some!2703 (tuple2!13711 t2!34 Nil!14107)))))))

(declare-fun lt!462522 () BalanceConc!9232)

(declare-fun list!5477 (BalanceConc!9232) List!14173)

(assert (=> b!1390052 (= lt!462537 (list!5477 lt!462522))))

(declare-fun b!1390054 () Bool)

(declare-fun res!627523 () Bool)

(assert (=> b!1390054 (=> res!627523 e!887893)))

(declare-fun lt!462521 () Rule!4686)

(declare-fun contains!2709 (List!14174 Rule!4686) Bool)

(assert (=> b!1390054 (= res!627523 (not (contains!2709 rules!2550 lt!462521)))))

(declare-fun b!1390055 () Bool)

(declare-fun e!887894 () Bool)

(assert (=> b!1390055 (= e!887894 e!887899)))

(declare-fun res!627525 () Bool)

(assert (=> b!1390055 (=> res!627525 e!887899)))

(declare-datatypes ((List!14175 0))(
  ( (Nil!14109) (Cons!14109 (h!19510 Token!4548) (t!122414 List!14175)) )
))
(declare-datatypes ((IArray!9299 0))(
  ( (IArray!9300 (innerList!4707 List!14175)) )
))
(declare-datatypes ((Conc!4647 0))(
  ( (Node!4647 (left!12054 Conc!4647) (right!12384 Conc!4647) (csize!9524 Int) (cheight!4858 Int)) (Leaf!7065 (xs!7374 IArray!9299) (csize!9525 Int)) (Empty!4647) )
))
(declare-datatypes ((BalanceConc!9234 0))(
  ( (BalanceConc!9235 (c!228750 Conc!4647)) )
))
(declare-datatypes ((tuple2!13712 0))(
  ( (tuple2!13713 (_1!7742 BalanceConc!9234) (_2!7742 BalanceConc!9232)) )
))
(declare-fun lt!462510 () tuple2!13712)

(declare-fun lt!462526 () List!14175)

(declare-fun list!5478 (BalanceConc!9234) List!14175)

(assert (=> b!1390055 (= res!627525 (not (= (list!5478 (_1!7742 lt!462510)) lt!462526)))))

(assert (=> b!1390055 (= lt!462526 (Cons!14109 t2!34 Nil!14109))))

(declare-fun lt!462514 () BalanceConc!9232)

(declare-fun lex!963 (LexerInterface!2138 List!14174 BalanceConc!9232) tuple2!13712)

(assert (=> b!1390055 (= lt!462510 (lex!963 thiss!19762 rules!2550 lt!462514))))

(declare-fun print!902 (LexerInterface!2138 BalanceConc!9234) BalanceConc!9232)

(declare-fun singletonSeq!1092 (Token!4548) BalanceConc!9234)

(assert (=> b!1390055 (= lt!462514 (print!902 thiss!19762 (singletonSeq!1092 t2!34)))))

(declare-fun b!1390056 () Bool)

(declare-fun e!887882 () Bool)

(declare-fun e!887896 () Bool)

(assert (=> b!1390056 (= e!887882 e!887896)))

(declare-fun res!627518 () Bool)

(assert (=> b!1390056 (=> (not res!627518) (not e!887896))))

(declare-fun size!11596 (BalanceConc!9232) Int)

(assert (=> b!1390056 (= res!627518 (> (size!11596 lt!462522) 0))))

(declare-fun charsOf!1415 (Token!4548) BalanceConc!9232)

(assert (=> b!1390056 (= lt!462522 (charsOf!1415 t2!34))))

(declare-fun b!1390057 () Bool)

(declare-fun res!627519 () Bool)

(assert (=> b!1390057 (=> res!627519 e!887893)))

(assert (=> b!1390057 (= res!627519 (not (contains!2709 rules!2550 (rule!4204 t2!34))))))

(declare-fun b!1390058 () Bool)

(declare-fun e!887901 () Bool)

(declare-fun e!887885 () Bool)

(assert (=> b!1390058 (= e!887901 e!887885)))

(declare-fun res!627522 () Bool)

(assert (=> b!1390058 (=> res!627522 e!887885)))

(declare-fun lt!462523 () List!14173)

(declare-fun lt!462536 () C!7804)

(declare-fun contains!2710 (List!14173 C!7804) Bool)

(assert (=> b!1390058 (= res!627522 (not (contains!2710 lt!462523 lt!462536)))))

(declare-fun lt!462516 () BalanceConc!9232)

(declare-fun apply!3549 (BalanceConc!9232 Int) C!7804)

(assert (=> b!1390058 (= lt!462536 (apply!3549 lt!462516 0))))

(declare-fun res!627515 () Bool)

(assert (=> start!126346 (=> (not res!627515) (not e!887882))))

(get-info :version)

(assert (=> start!126346 (= res!627515 ((_ is Lexer!2136) thiss!19762))))

(assert (=> start!126346 e!887882))

(assert (=> start!126346 true))

(declare-fun e!887905 () Bool)

(assert (=> start!126346 e!887905))

(declare-fun t1!34 () Token!4548)

(declare-fun e!887880 () Bool)

(declare-fun inv!18444 (Token!4548) Bool)

(assert (=> start!126346 (and (inv!18444 t1!34) e!887880)))

(declare-fun e!887887 () Bool)

(assert (=> start!126346 (and (inv!18444 t2!34) e!887887)))

(declare-fun b!1390053 () Bool)

(declare-fun e!887890 () Bool)

(assert (=> b!1390053 (= e!887890 e!887894)))

(declare-fun res!627540 () Bool)

(assert (=> b!1390053 (=> res!627540 e!887894)))

(declare-fun lt!462515 () tuple2!13712)

(declare-fun lt!462517 () List!14175)

(assert (=> b!1390053 (= res!627540 (not (= (list!5478 (_1!7742 lt!462515)) lt!462517)))))

(assert (=> b!1390053 (= lt!462517 (Cons!14109 t1!34 Nil!14109))))

(declare-fun lt!462535 () BalanceConc!9232)

(assert (=> b!1390053 (= lt!462515 (lex!963 thiss!19762 rules!2550 lt!462535))))

(assert (=> b!1390053 (= lt!462535 (print!902 thiss!19762 (singletonSeq!1092 t1!34)))))

(declare-fun getWitness!418 (List!14174 Int) Rule!4686)

(assert (=> b!1390053 (= lt!462521 (getWitness!418 rules!2550 lambda!60112))))

(declare-fun b!1390059 () Bool)

(declare-fun e!887895 () Bool)

(assert (=> b!1390059 (= e!887896 e!887895)))

(declare-fun res!627545 () Bool)

(assert (=> b!1390059 (=> (not res!627545) (not e!887895))))

(declare-fun lt!462518 () Regex!3757)

(declare-fun prefixMatch!266 (Regex!3757 List!14173) Bool)

(assert (=> b!1390059 (= res!627545 (prefixMatch!266 lt!462518 lt!462523))))

(declare-fun rulesRegex!326 (LexerInterface!2138 List!14174) Regex!3757)

(assert (=> b!1390059 (= lt!462518 (rulesRegex!326 thiss!19762 rules!2550))))

(declare-fun lt!462532 () List!14173)

(declare-fun lt!462513 () C!7804)

(declare-fun ++!3664 (List!14173 List!14173) List!14173)

(assert (=> b!1390059 (= lt!462523 (++!3664 lt!462532 (Cons!14107 lt!462513 Nil!14107)))))

(assert (=> b!1390059 (= lt!462513 (apply!3549 lt!462522 0))))

(assert (=> b!1390059 (= lt!462532 (list!5477 lt!462516))))

(assert (=> b!1390059 (= lt!462516 (charsOf!1415 t1!34))))

(declare-fun b!1390060 () Bool)

(declare-fun res!627530 () Bool)

(assert (=> b!1390060 (=> res!627530 e!887899)))

(declare-datatypes ((tuple2!13714 0))(
  ( (tuple2!13715 (_1!7743 List!14175) (_2!7743 List!14173)) )
))
(declare-fun lexList!652 (LexerInterface!2138 List!14174 List!14173) tuple2!13714)

(assert (=> b!1390060 (= res!627530 (not (= (lexList!652 thiss!19762 rules!2550 (list!5477 lt!462514)) (tuple2!13715 lt!462526 Nil!14107))))))

(declare-fun tp!397104 () Bool)

(declare-fun b!1390061 () Bool)

(declare-fun e!887881 () Bool)

(declare-fun e!887889 () Bool)

(declare-fun inv!18441 (String!16901) Bool)

(declare-fun inv!18445 (TokenValueInjection!4726) Bool)

(assert (=> b!1390061 (= e!887881 (and tp!397104 (inv!18441 (tag!2705 (h!19509 rules!2550))) (inv!18445 (transformation!2443 (h!19509 rules!2550))) e!887889))))

(declare-fun b!1390062 () Bool)

(declare-fun res!627547 () Bool)

(assert (=> b!1390062 (=> (not res!627547) (not e!887882))))

(declare-fun rulesInvariant!2008 (LexerInterface!2138 List!14174) Bool)

(assert (=> b!1390062 (= res!627547 (rulesInvariant!2008 thiss!19762 rules!2550))))

(declare-fun b!1390063 () Bool)

(declare-fun e!887897 () Bool)

(declare-fun e!887906 () Bool)

(assert (=> b!1390063 (= e!887897 e!887906)))

(declare-fun res!627533 () Bool)

(assert (=> b!1390063 (=> res!627533 e!887906)))

(declare-fun lt!462519 () Regex!3757)

(declare-fun lambda!60110 () Int)

(declare-datatypes ((List!14176 0))(
  ( (Nil!14110) (Cons!14110 (h!19511 Regex!3757) (t!122415 List!14176)) )
))
(declare-fun contains!2711 (List!14176 Regex!3757) Bool)

(declare-fun map!3125 (List!14174 Int) List!14176)

(assert (=> b!1390063 (= res!627533 (not (contains!2711 (map!3125 rules!2550 lambda!60110) lt!462519)))))

(declare-fun lambda!60111 () Int)

(declare-fun getWitness!419 (List!14176 Int) Regex!3757)

(assert (=> b!1390063 (= lt!462519 (getWitness!419 (map!3125 rules!2550 lambda!60110) lambda!60111))))

(declare-fun b!1390064 () Bool)

(declare-fun res!627536 () Bool)

(assert (=> b!1390064 (=> (not res!627536) (not e!887896))))

(declare-fun separableTokensPredicate!421 (LexerInterface!2138 Token!4548 Token!4548 List!14174) Bool)

(assert (=> b!1390064 (= res!627536 (not (separableTokensPredicate!421 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun e!887903 () Bool)

(declare-fun b!1390065 () Bool)

(declare-fun tp!397107 () Bool)

(declare-fun e!887908 () Bool)

(assert (=> b!1390065 (= e!887908 (and tp!397107 (inv!18441 (tag!2705 (rule!4204 t1!34))) (inv!18445 (transformation!2443 (rule!4204 t1!34))) e!887903))))

(declare-fun b!1390066 () Bool)

(declare-fun res!627538 () Bool)

(assert (=> b!1390066 (=> (not res!627538) (not e!887896))))

(declare-fun sepAndNonSepRulesDisjointChars!816 (List!14174 List!14174) Bool)

(assert (=> b!1390066 (= res!627538 (sepAndNonSepRulesDisjointChars!816 rules!2550 rules!2550))))

(declare-fun b!1390067 () Bool)

(declare-datatypes ((Unit!20367 0))(
  ( (Unit!20368) )
))
(declare-fun e!887892 () Unit!20367)

(declare-fun Unit!20369 () Unit!20367)

(assert (=> b!1390067 (= e!887892 Unit!20369)))

(declare-fun b!1390068 () Bool)

(declare-fun res!627532 () Bool)

(assert (=> b!1390068 (=> (not res!627532) (not e!887882))))

(declare-fun isEmpty!8546 (List!14174) Bool)

(assert (=> b!1390068 (= res!627532 (not (isEmpty!8546 rules!2550)))))

(declare-fun b!1390069 () Bool)

(declare-fun e!887898 () Bool)

(declare-fun e!887883 () Bool)

(assert (=> b!1390069 (= e!887898 e!887883)))

(declare-fun res!627551 () Bool)

(assert (=> b!1390069 (=> res!627551 e!887883)))

(declare-fun validRegex!1639 (Regex!3757) Bool)

(assert (=> b!1390069 (= res!627551 (not (validRegex!1639 (regex!2443 (rule!4204 t2!34)))))))

(declare-fun lt!462529 () C!7804)

(declare-fun head!2543 (List!14173) C!7804)

(assert (=> b!1390069 (= lt!462529 (head!2543 lt!462537))))

(declare-fun e!887878 () Bool)

(declare-fun e!887902 () Bool)

(declare-fun tp!397106 () Bool)

(declare-fun b!1390070 () Bool)

(assert (=> b!1390070 (= e!887878 (and tp!397106 (inv!18441 (tag!2705 (rule!4204 t2!34))) (inv!18445 (transformation!2443 (rule!4204 t2!34))) e!887902))))

(declare-fun b!1390071 () Bool)

(declare-fun res!627529 () Bool)

(assert (=> b!1390071 (=> res!627529 e!887894)))

(declare-fun isEmpty!8547 (BalanceConc!9232) Bool)

(assert (=> b!1390071 (= res!627529 (not (isEmpty!8547 (_2!7742 lt!462515))))))

(declare-fun b!1390072 () Bool)

(declare-fun res!627534 () Bool)

(assert (=> b!1390072 (=> res!627534 e!887885)))

(declare-fun lt!462520 () List!14173)

(declare-fun matchR!1748 (Regex!3757 List!14173) Bool)

(assert (=> b!1390072 (= res!627534 (not (matchR!1748 lt!462518 lt!462520)))))

(declare-fun b!1390073 () Bool)

(declare-fun tp!397103 () Bool)

(assert (=> b!1390073 (= e!887905 (and e!887881 tp!397103))))

(declare-fun b!1390074 () Bool)

(declare-fun lt!462527 () List!14173)

(assert (=> b!1390074 (= e!887883 (not (contains!2710 lt!462527 lt!462529)))))

(declare-fun b!1390075 () Bool)

(declare-fun res!627548 () Bool)

(declare-fun e!887888 () Bool)

(assert (=> b!1390075 (=> res!627548 e!887888)))

(assert (=> b!1390075 (= res!627548 (not (matchR!1748 (regex!2443 (rule!4204 t2!34)) lt!462537)))))

(declare-fun b!1390076 () Bool)

(declare-fun e!887904 () Bool)

(assert (=> b!1390076 (= e!887904 e!887901)))

(declare-fun res!627521 () Bool)

(assert (=> b!1390076 (=> res!627521 e!887901)))

(declare-fun getSuffix!603 (List!14173 List!14173) List!14173)

(assert (=> b!1390076 (= res!627521 (not (= lt!462520 (++!3664 lt!462523 (getSuffix!603 lt!462520 lt!462523)))))))

(declare-fun lambda!60109 () Int)

(declare-fun pickWitness!210 (Int) List!14173)

(assert (=> b!1390076 (= lt!462520 (pickWitness!210 lambda!60109))))

(assert (=> b!1390077 (= e!887893 e!887888)))

(declare-fun res!627543 () Bool)

(assert (=> b!1390077 (=> res!627543 e!887888)))

(assert (=> b!1390077 (= res!627543 (not (matchR!1748 (regex!2443 (rule!4204 t1!34)) lt!462532)))))

(declare-fun lt!462533 () Unit!20367)

(declare-fun forallContained!638 (List!14174 Int Rule!4686) Unit!20367)

(assert (=> b!1390077 (= lt!462533 (forallContained!638 rules!2550 lambda!60113 (rule!4204 t2!34)))))

(declare-fun lt!462530 () Unit!20367)

(assert (=> b!1390077 (= lt!462530 (forallContained!638 rules!2550 lambda!60113 (rule!4204 t1!34)))))

(declare-fun lt!462534 () Unit!20367)

(assert (=> b!1390077 (= lt!462534 (forallContained!638 rules!2550 lambda!60113 lt!462521))))

(declare-fun b!1390078 () Bool)

(declare-fun res!627524 () Bool)

(assert (=> b!1390078 (=> res!627524 e!887894)))

(assert (=> b!1390078 (= res!627524 (not (contains!2709 rules!2550 (rule!4204 t1!34))))))

(declare-fun b!1390079 () Bool)

(declare-fun res!627539 () Bool)

(assert (=> b!1390079 (=> res!627539 e!887885)))

(assert (=> b!1390079 (= res!627539 (not (contains!2710 lt!462523 lt!462513)))))

(declare-fun b!1390080 () Bool)

(declare-fun res!627542 () Bool)

(assert (=> b!1390080 (=> res!627542 e!887885)))

(assert (=> b!1390080 (= res!627542 (not (contains!2710 lt!462520 lt!462513)))))

(declare-fun b!1390081 () Bool)

(declare-fun Unit!20370 () Unit!20367)

(assert (=> b!1390081 (= e!887892 Unit!20370)))

(declare-fun lt!462528 () Unit!20367)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!188 (Regex!3757 List!14173 C!7804) Unit!20367)

(assert (=> b!1390081 (= lt!462528 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!188 (regex!2443 (rule!4204 t1!34)) lt!462532 (head!2543 lt!462532)))))

(assert (=> b!1390081 false))

(declare-fun tp!397112 () Bool)

(declare-fun b!1390082 () Bool)

(declare-fun inv!21 (TokenValue!2533) Bool)

(assert (=> b!1390082 (= e!887887 (and (inv!21 (value!79258 t2!34)) e!887878 tp!397112))))

(assert (=> b!1390083 (= e!887903 (and tp!397109 tp!397102))))

(assert (=> b!1390084 (= e!887906 e!887890)))

(declare-fun res!627517 () Bool)

(assert (=> b!1390084 (=> res!627517 e!887890)))

(declare-fun exists!530 (List!14174 Int) Bool)

(assert (=> b!1390084 (= res!627517 (not (exists!530 rules!2550 lambda!60112)))))

(assert (=> b!1390084 (exists!530 rules!2550 lambda!60112)))

(declare-fun lt!462512 () Unit!20367)

(declare-fun lemmaMapContains!154 (List!14174 Int Regex!3757) Unit!20367)

(assert (=> b!1390084 (= lt!462512 (lemmaMapContains!154 rules!2550 lambda!60110 lt!462519))))

(assert (=> b!1390085 (= e!887885 e!887897)))

(declare-fun res!627520 () Bool)

(assert (=> b!1390085 (=> res!627520 e!887897)))

(declare-fun exists!531 (List!14176 Int) Bool)

(assert (=> b!1390085 (= res!627520 (not (exists!531 (map!3125 rules!2550 lambda!60110) lambda!60111)))))

(declare-fun lt!462531 () List!14176)

(assert (=> b!1390085 (exists!531 lt!462531 lambda!60111)))

(declare-fun lt!462524 () Unit!20367)

(declare-fun matchRGenUnionSpec!168 (Regex!3757 List!14176 List!14173) Unit!20367)

(assert (=> b!1390085 (= lt!462524 (matchRGenUnionSpec!168 lt!462518 lt!462531 lt!462520))))

(assert (=> b!1390085 (= lt!462531 (map!3125 rules!2550 lambda!60110))))

(declare-fun b!1390086 () Bool)

(declare-fun e!887886 () Bool)

(assert (=> b!1390086 (= e!887886 e!887898)))

(declare-fun res!627537 () Bool)

(assert (=> b!1390086 (=> res!627537 e!887898)))

(assert (=> b!1390086 (= res!627537 (contains!2710 lt!462527 lt!462513))))

(declare-fun usedCharacters!254 (Regex!3757) List!14173)

(assert (=> b!1390086 (= lt!462527 (usedCharacters!254 (regex!2443 (rule!4204 t2!34))))))

(declare-fun b!1390087 () Bool)

(declare-fun res!627544 () Bool)

(assert (=> b!1390087 (=> res!627544 e!887894)))

(assert (=> b!1390087 (= res!627544 (not (= (lexList!652 thiss!19762 rules!2550 (list!5477 lt!462535)) (tuple2!13715 lt!462517 Nil!14107))))))

(declare-fun b!1390088 () Bool)

(assert (=> b!1390088 (= e!887888 e!887886)))

(declare-fun res!627546 () Bool)

(assert (=> b!1390088 (=> res!627546 e!887886)))

(declare-fun lt!462525 () Bool)

(assert (=> b!1390088 (= res!627546 lt!462525)))

(declare-fun lt!462511 () Unit!20367)

(assert (=> b!1390088 (= lt!462511 e!887892)))

(declare-fun c!228747 () Bool)

(assert (=> b!1390088 (= c!228747 lt!462525)))

(assert (=> b!1390088 (= lt!462525 (not (contains!2710 (usedCharacters!254 (regex!2443 (rule!4204 t1!34))) lt!462536)))))

(declare-fun b!1390089 () Bool)

(declare-fun res!627526 () Bool)

(assert (=> b!1390089 (=> res!627526 e!887894)))

(assert (=> b!1390089 (= res!627526 (not (= (maxPrefix!1112 thiss!19762 rules!2550 lt!462532) (Some!2703 (tuple2!13711 t1!34 Nil!14107)))))))

(declare-fun b!1390090 () Bool)

(declare-fun res!627528 () Bool)

(assert (=> b!1390090 (=> (not res!627528) (not e!887882))))

(declare-fun rulesProduceIndividualToken!1107 (LexerInterface!2138 List!14174 Token!4548) Bool)

(assert (=> b!1390090 (= res!627528 (rulesProduceIndividualToken!1107 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1390091 () Bool)

(declare-fun res!627527 () Bool)

(assert (=> b!1390091 (=> res!627527 e!887899)))

(assert (=> b!1390091 (= res!627527 (not (isEmpty!8547 (_2!7742 lt!462510))))))

(assert (=> b!1390092 (= e!887902 (and tp!397111 tp!397108))))

(declare-fun tp!397101 () Bool)

(declare-fun b!1390093 () Bool)

(assert (=> b!1390093 (= e!887880 (and (inv!21 (value!79258 t1!34)) e!887908 tp!397101))))

(declare-fun b!1390094 () Bool)

(declare-fun res!627516 () Bool)

(assert (=> b!1390094 (=> res!627516 e!887885)))

(assert (=> b!1390094 (= res!627516 (not (contains!2710 lt!462520 lt!462536)))))

(declare-fun b!1390095 () Bool)

(declare-fun res!627541 () Bool)

(assert (=> b!1390095 (=> (not res!627541) (not e!887882))))

(assert (=> b!1390095 (= res!627541 (not (= (isSeparator!2443 (rule!4204 t1!34)) (isSeparator!2443 (rule!4204 t2!34)))))))

(assert (=> b!1390096 (= e!887895 (not e!887904))))

(declare-fun res!627531 () Bool)

(assert (=> b!1390096 (=> res!627531 e!887904)))

(declare-fun Exists!907 (Int) Bool)

(assert (=> b!1390096 (= res!627531 (not (Exists!907 lambda!60109)))))

(assert (=> b!1390096 (Exists!907 lambda!60109)))

(declare-fun lt!462538 () Unit!20367)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!225 (Regex!3757 List!14173) Unit!20367)

(assert (=> b!1390096 (= lt!462538 (lemmaPrefixMatchThenExistsStringThatMatches!225 lt!462518 lt!462523))))

(assert (=> b!1390097 (= e!887889 (and tp!397110 tp!397105))))

(declare-fun b!1390098 () Bool)

(declare-fun res!627549 () Bool)

(assert (=> b!1390098 (=> res!627549 e!887883)))

(assert (=> b!1390098 (= res!627549 (not (contains!2710 lt!462537 lt!462529)))))

(declare-fun b!1390099 () Bool)

(declare-fun res!627535 () Bool)

(assert (=> b!1390099 (=> (not res!627535) (not e!887882))))

(assert (=> b!1390099 (= res!627535 (rulesProduceIndividualToken!1107 thiss!19762 rules!2550 t2!34))))

(assert (= (and start!126346 res!627515) b!1390068))

(assert (= (and b!1390068 res!627532) b!1390062))

(assert (= (and b!1390062 res!627547) b!1390090))

(assert (= (and b!1390090 res!627528) b!1390099))

(assert (= (and b!1390099 res!627535) b!1390095))

(assert (= (and b!1390095 res!627541) b!1390056))

(assert (= (and b!1390056 res!627518) b!1390066))

(assert (= (and b!1390066 res!627538) b!1390064))

(assert (= (and b!1390064 res!627536) b!1390059))

(assert (= (and b!1390059 res!627545) b!1390096))

(assert (= (and b!1390096 (not res!627531)) b!1390076))

(assert (= (and b!1390076 (not res!627521)) b!1390058))

(assert (= (and b!1390058 (not res!627522)) b!1390094))

(assert (= (and b!1390094 (not res!627516)) b!1390079))

(assert (= (and b!1390079 (not res!627539)) b!1390080))

(assert (= (and b!1390080 (not res!627542)) b!1390072))

(assert (= (and b!1390072 (not res!627534)) b!1390085))

(assert (= (and b!1390085 (not res!627520)) b!1390063))

(assert (= (and b!1390063 (not res!627533)) b!1390084))

(assert (= (and b!1390084 (not res!627517)) b!1390053))

(assert (= (and b!1390053 (not res!627540)) b!1390071))

(assert (= (and b!1390071 (not res!627529)) b!1390087))

(assert (= (and b!1390087 (not res!627544)) b!1390089))

(assert (= (and b!1390089 (not res!627526)) b!1390078))

(assert (= (and b!1390078 (not res!627524)) b!1390055))

(assert (= (and b!1390055 (not res!627525)) b!1390091))

(assert (= (and b!1390091 (not res!627527)) b!1390060))

(assert (= (and b!1390060 (not res!627530)) b!1390052))

(assert (= (and b!1390052 (not res!627550)) b!1390057))

(assert (= (and b!1390057 (not res!627519)) b!1390054))

(assert (= (and b!1390054 (not res!627523)) b!1390077))

(assert (= (and b!1390077 (not res!627543)) b!1390075))

(assert (= (and b!1390075 (not res!627548)) b!1390088))

(assert (= (and b!1390088 c!228747) b!1390081))

(assert (= (and b!1390088 (not c!228747)) b!1390067))

(assert (= (and b!1390088 (not res!627546)) b!1390086))

(assert (= (and b!1390086 (not res!627537)) b!1390069))

(assert (= (and b!1390069 (not res!627551)) b!1390098))

(assert (= (and b!1390098 (not res!627549)) b!1390074))

(assert (= b!1390061 b!1390097))

(assert (= b!1390073 b!1390061))

(assert (= (and start!126346 ((_ is Cons!14108) rules!2550)) b!1390073))

(assert (= b!1390065 b!1390083))

(assert (= b!1390093 b!1390065))

(assert (= start!126346 b!1390093))

(assert (= b!1390070 b!1390092))

(assert (= b!1390082 b!1390070))

(assert (= start!126346 b!1390082))

(declare-fun m!1564813 () Bool)

(assert (=> b!1390082 m!1564813))

(declare-fun m!1564815 () Bool)

(assert (=> b!1390080 m!1564815))

(declare-fun m!1564817 () Bool)

(assert (=> b!1390058 m!1564817))

(declare-fun m!1564819 () Bool)

(assert (=> b!1390058 m!1564819))

(declare-fun m!1564821 () Bool)

(assert (=> b!1390072 m!1564821))

(declare-fun m!1564823 () Bool)

(assert (=> b!1390075 m!1564823))

(declare-fun m!1564825 () Bool)

(assert (=> b!1390068 m!1564825))

(declare-fun m!1564827 () Bool)

(assert (=> b!1390098 m!1564827))

(declare-fun m!1564829 () Bool)

(assert (=> b!1390063 m!1564829))

(assert (=> b!1390063 m!1564829))

(declare-fun m!1564831 () Bool)

(assert (=> b!1390063 m!1564831))

(assert (=> b!1390063 m!1564829))

(assert (=> b!1390063 m!1564829))

(declare-fun m!1564833 () Bool)

(assert (=> b!1390063 m!1564833))

(declare-fun m!1564835 () Bool)

(assert (=> b!1390060 m!1564835))

(assert (=> b!1390060 m!1564835))

(declare-fun m!1564837 () Bool)

(assert (=> b!1390060 m!1564837))

(declare-fun m!1564839 () Bool)

(assert (=> b!1390074 m!1564839))

(declare-fun m!1564841 () Bool)

(assert (=> b!1390070 m!1564841))

(declare-fun m!1564843 () Bool)

(assert (=> b!1390070 m!1564843))

(declare-fun m!1564845 () Bool)

(assert (=> b!1390099 m!1564845))

(declare-fun m!1564847 () Bool)

(assert (=> b!1390062 m!1564847))

(declare-fun m!1564849 () Bool)

(assert (=> b!1390076 m!1564849))

(assert (=> b!1390076 m!1564849))

(declare-fun m!1564851 () Bool)

(assert (=> b!1390076 m!1564851))

(declare-fun m!1564853 () Bool)

(assert (=> b!1390076 m!1564853))

(declare-fun m!1564855 () Bool)

(assert (=> b!1390057 m!1564855))

(declare-fun m!1564857 () Bool)

(assert (=> b!1390078 m!1564857))

(declare-fun m!1564859 () Bool)

(assert (=> b!1390093 m!1564859))

(declare-fun m!1564861 () Bool)

(assert (=> b!1390056 m!1564861))

(declare-fun m!1564863 () Bool)

(assert (=> b!1390056 m!1564863))

(declare-fun m!1564865 () Bool)

(assert (=> b!1390064 m!1564865))

(declare-fun m!1564867 () Bool)

(assert (=> b!1390089 m!1564867))

(declare-fun m!1564869 () Bool)

(assert (=> b!1390055 m!1564869))

(declare-fun m!1564871 () Bool)

(assert (=> b!1390055 m!1564871))

(declare-fun m!1564873 () Bool)

(assert (=> b!1390055 m!1564873))

(assert (=> b!1390055 m!1564873))

(declare-fun m!1564875 () Bool)

(assert (=> b!1390055 m!1564875))

(declare-fun m!1564877 () Bool)

(assert (=> b!1390071 m!1564877))

(declare-fun m!1564879 () Bool)

(assert (=> b!1390066 m!1564879))

(declare-fun m!1564881 () Bool)

(assert (=> b!1390053 m!1564881))

(declare-fun m!1564883 () Bool)

(assert (=> b!1390053 m!1564883))

(declare-fun m!1564885 () Bool)

(assert (=> b!1390053 m!1564885))

(assert (=> b!1390053 m!1564881))

(declare-fun m!1564887 () Bool)

(assert (=> b!1390053 m!1564887))

(declare-fun m!1564889 () Bool)

(assert (=> b!1390053 m!1564889))

(declare-fun m!1564891 () Bool)

(assert (=> b!1390065 m!1564891))

(declare-fun m!1564893 () Bool)

(assert (=> b!1390065 m!1564893))

(declare-fun m!1564895 () Bool)

(assert (=> b!1390054 m!1564895))

(declare-fun m!1564897 () Bool)

(assert (=> start!126346 m!1564897))

(declare-fun m!1564899 () Bool)

(assert (=> start!126346 m!1564899))

(declare-fun m!1564901 () Bool)

(assert (=> b!1390084 m!1564901))

(assert (=> b!1390084 m!1564901))

(declare-fun m!1564903 () Bool)

(assert (=> b!1390084 m!1564903))

(declare-fun m!1564905 () Bool)

(assert (=> b!1390069 m!1564905))

(declare-fun m!1564907 () Bool)

(assert (=> b!1390069 m!1564907))

(assert (=> b!1390085 m!1564829))

(declare-fun m!1564909 () Bool)

(assert (=> b!1390085 m!1564909))

(declare-fun m!1564911 () Bool)

(assert (=> b!1390085 m!1564911))

(declare-fun m!1564913 () Bool)

(assert (=> b!1390085 m!1564913))

(assert (=> b!1390085 m!1564829))

(assert (=> b!1390085 m!1564829))

(declare-fun m!1564915 () Bool)

(assert (=> b!1390077 m!1564915))

(declare-fun m!1564917 () Bool)

(assert (=> b!1390077 m!1564917))

(declare-fun m!1564919 () Bool)

(assert (=> b!1390077 m!1564919))

(declare-fun m!1564921 () Bool)

(assert (=> b!1390077 m!1564921))

(declare-fun m!1564923 () Bool)

(assert (=> b!1390096 m!1564923))

(assert (=> b!1390096 m!1564923))

(declare-fun m!1564925 () Bool)

(assert (=> b!1390096 m!1564925))

(declare-fun m!1564927 () Bool)

(assert (=> b!1390052 m!1564927))

(declare-fun m!1564929 () Bool)

(assert (=> b!1390052 m!1564929))

(declare-fun m!1564931 () Bool)

(assert (=> b!1390094 m!1564931))

(declare-fun m!1564933 () Bool)

(assert (=> b!1390090 m!1564933))

(declare-fun m!1564935 () Bool)

(assert (=> b!1390061 m!1564935))

(declare-fun m!1564937 () Bool)

(assert (=> b!1390061 m!1564937))

(declare-fun m!1564939 () Bool)

(assert (=> b!1390088 m!1564939))

(assert (=> b!1390088 m!1564939))

(declare-fun m!1564941 () Bool)

(assert (=> b!1390088 m!1564941))

(declare-fun m!1564943 () Bool)

(assert (=> b!1390087 m!1564943))

(assert (=> b!1390087 m!1564943))

(declare-fun m!1564945 () Bool)

(assert (=> b!1390087 m!1564945))

(declare-fun m!1564947 () Bool)

(assert (=> b!1390091 m!1564947))

(declare-fun m!1564949 () Bool)

(assert (=> b!1390079 m!1564949))

(declare-fun m!1564951 () Bool)

(assert (=> b!1390086 m!1564951))

(declare-fun m!1564953 () Bool)

(assert (=> b!1390086 m!1564953))

(declare-fun m!1564955 () Bool)

(assert (=> b!1390081 m!1564955))

(assert (=> b!1390081 m!1564955))

(declare-fun m!1564957 () Bool)

(assert (=> b!1390081 m!1564957))

(declare-fun m!1564959 () Bool)

(assert (=> b!1390059 m!1564959))

(declare-fun m!1564961 () Bool)

(assert (=> b!1390059 m!1564961))

(declare-fun m!1564963 () Bool)

(assert (=> b!1390059 m!1564963))

(declare-fun m!1564965 () Bool)

(assert (=> b!1390059 m!1564965))

(declare-fun m!1564967 () Bool)

(assert (=> b!1390059 m!1564967))

(declare-fun m!1564969 () Bool)

(assert (=> b!1390059 m!1564969))

(check-sat (not b!1390080) (not b!1390057) (not b!1390075) (not b!1390089) (not b!1390056) (not b!1390073) b_and!93127 (not b!1390082) (not b!1390055) (not start!126346) b_and!93125 (not b!1390078) b_and!93123 (not b!1390054) (not b!1390085) (not b!1390053) (not b!1390069) (not b_next!34505) (not b!1390074) (not b!1390087) (not b_next!34509) (not b!1390065) (not b!1390070) b_and!93131 (not b!1390066) b_and!93133 (not b_next!34501) (not b!1390099) (not b!1390091) (not b!1390076) (not b!1390093) (not b!1390086) (not b!1390059) (not b!1390071) (not b!1390058) (not b!1390079) (not b!1390062) (not b_next!34507) (not b!1390077) (not b!1390088) (not b_next!34503) (not b!1390063) (not b!1390068) (not b!1390052) (not b!1390064) (not b!1390096) (not b!1390090) (not b!1390098) (not b!1390081) b_and!93129 (not b!1390061) (not b!1390072) (not b!1390094) (not b!1390084) (not b!1390060) (not b_next!34499))
(check-sat b_and!93123 (not b_next!34505) (not b_next!34509) b_and!93131 b_and!93127 b_and!93125 b_and!93129 (not b_next!34499) b_and!93133 (not b_next!34501) (not b_next!34507) (not b_next!34503))
(get-model)

(declare-fun bs!337353 () Bool)

(declare-fun d!397362 () Bool)

(assert (= bs!337353 (and d!397362 b!1390084)))

(declare-fun lambda!60119 () Int)

(assert (=> bs!337353 (not (= lambda!60119 lambda!60112))))

(declare-fun bs!337354 () Bool)

(assert (= bs!337354 (and d!397362 b!1390077)))

(assert (=> bs!337354 (not (= lambda!60119 lambda!60113))))

(assert (=> d!397362 true))

(declare-fun order!8629 () Int)

(declare-fun dynLambda!6483 (Int Int) Int)

(assert (=> d!397362 (< (dynLambda!6483 order!8629 lambda!60112) (dynLambda!6483 order!8629 lambda!60119))))

(declare-fun forall!3434 (List!14174 Int) Bool)

(assert (=> d!397362 (= (exists!530 rules!2550 lambda!60112) (not (forall!3434 rules!2550 lambda!60119)))))

(declare-fun bs!337355 () Bool)

(assert (= bs!337355 d!397362))

(declare-fun m!1565019 () Bool)

(assert (=> bs!337355 m!1565019))

(assert (=> b!1390084 d!397362))

(declare-fun bs!337363 () Bool)

(declare-fun d!397366 () Bool)

(assert (= bs!337363 (and d!397366 b!1390084)))

(declare-fun lambda!60129 () Int)

(assert (=> bs!337363 (not (= lambda!60129 lambda!60112))))

(declare-fun bs!337364 () Bool)

(assert (= bs!337364 (and d!397366 b!1390077)))

(assert (=> bs!337364 (not (= lambda!60129 lambda!60113))))

(declare-fun bs!337365 () Bool)

(assert (= bs!337365 (and d!397366 d!397362)))

(assert (=> bs!337365 (not (= lambda!60129 lambda!60119))))

(assert (=> d!397366 true))

(assert (=> d!397366 true))

(declare-fun order!8631 () Int)

(declare-fun dynLambda!6484 (Int Int) Int)

(assert (=> d!397366 (< (dynLambda!6484 order!8631 lambda!60110) (dynLambda!6483 order!8629 lambda!60129))))

(assert (=> d!397366 (exists!530 rules!2550 lambda!60129)))

(declare-fun lt!462550 () Unit!20367)

(declare-fun choose!8546 (List!14174 Int Regex!3757) Unit!20367)

(assert (=> d!397366 (= lt!462550 (choose!8546 rules!2550 lambda!60110 lt!462519))))

(assert (=> d!397366 (contains!2711 (map!3125 rules!2550 lambda!60110) lt!462519)))

(assert (=> d!397366 (= (lemmaMapContains!154 rules!2550 lambda!60110 lt!462519) lt!462550)))

(declare-fun bs!337366 () Bool)

(assert (= bs!337366 d!397366))

(declare-fun m!1565033 () Bool)

(assert (=> bs!337366 m!1565033))

(declare-fun m!1565035 () Bool)

(assert (=> bs!337366 m!1565035))

(assert (=> bs!337366 m!1564829))

(assert (=> bs!337366 m!1564829))

(assert (=> bs!337366 m!1564831))

(assert (=> b!1390084 d!397366))

(declare-fun d!397374 () Bool)

(declare-fun lt!462555 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2078 (List!14176) (InoxSet Regex!3757))

(assert (=> d!397374 (= lt!462555 (select (content!2078 (map!3125 rules!2550 lambda!60110)) lt!462519))))

(declare-fun e!887961 () Bool)

(assert (=> d!397374 (= lt!462555 e!887961)))

(declare-fun res!627605 () Bool)

(assert (=> d!397374 (=> (not res!627605) (not e!887961))))

(assert (=> d!397374 (= res!627605 ((_ is Cons!14110) (map!3125 rules!2550 lambda!60110)))))

(assert (=> d!397374 (= (contains!2711 (map!3125 rules!2550 lambda!60110) lt!462519) lt!462555)))

(declare-fun b!1390199 () Bool)

(declare-fun e!887962 () Bool)

(assert (=> b!1390199 (= e!887961 e!887962)))

(declare-fun res!627606 () Bool)

(assert (=> b!1390199 (=> res!627606 e!887962)))

(assert (=> b!1390199 (= res!627606 (= (h!19511 (map!3125 rules!2550 lambda!60110)) lt!462519))))

(declare-fun b!1390200 () Bool)

(assert (=> b!1390200 (= e!887962 (contains!2711 (t!122415 (map!3125 rules!2550 lambda!60110)) lt!462519))))

(assert (= (and d!397374 res!627605) b!1390199))

(assert (= (and b!1390199 (not res!627606)) b!1390200))

(assert (=> d!397374 m!1564829))

(declare-fun m!1565037 () Bool)

(assert (=> d!397374 m!1565037))

(declare-fun m!1565039 () Bool)

(assert (=> d!397374 m!1565039))

(declare-fun m!1565041 () Bool)

(assert (=> b!1390200 m!1565041))

(assert (=> b!1390063 d!397374))

(declare-fun d!397376 () Bool)

(declare-fun lt!462566 () List!14176)

(declare-fun size!11601 (List!14176) Int)

(declare-fun size!11602 (List!14174) Int)

(assert (=> d!397376 (= (size!11601 lt!462566) (size!11602 rules!2550))))

(declare-fun e!887977 () List!14176)

(assert (=> d!397376 (= lt!462566 e!887977)))

(declare-fun c!228771 () Bool)

(assert (=> d!397376 (= c!228771 ((_ is Nil!14108) rules!2550))))

(assert (=> d!397376 (= (map!3125 rules!2550 lambda!60110) lt!462566)))

(declare-fun b!1390224 () Bool)

(assert (=> b!1390224 (= e!887977 Nil!14110)))

(declare-fun b!1390225 () Bool)

(declare-fun $colon$colon!221 (List!14176 Regex!3757) List!14176)

(declare-fun dynLambda!6485 (Int Rule!4686) Regex!3757)

(assert (=> b!1390225 (= e!887977 ($colon$colon!221 (map!3125 (t!122413 rules!2550) lambda!60110) (dynLambda!6485 lambda!60110 (h!19509 rules!2550))))))

(assert (= (and d!397376 c!228771) b!1390224))

(assert (= (and d!397376 (not c!228771)) b!1390225))

(declare-fun b_lambda!43259 () Bool)

(assert (=> (not b_lambda!43259) (not b!1390225)))

(declare-fun m!1565075 () Bool)

(assert (=> d!397376 m!1565075))

(declare-fun m!1565077 () Bool)

(assert (=> d!397376 m!1565077))

(declare-fun m!1565079 () Bool)

(assert (=> b!1390225 m!1565079))

(declare-fun m!1565081 () Bool)

(assert (=> b!1390225 m!1565081))

(assert (=> b!1390225 m!1565079))

(assert (=> b!1390225 m!1565081))

(declare-fun m!1565083 () Bool)

(assert (=> b!1390225 m!1565083))

(assert (=> b!1390063 d!397376))

(declare-fun e!888008 () Bool)

(declare-fun b!1390272 () Bool)

(declare-fun dynLambda!6486 (Int Regex!3757) Bool)

(assert (=> b!1390272 (= e!888008 (dynLambda!6486 lambda!60111 (h!19511 (map!3125 rules!2550 lambda!60110))))))

(declare-fun b!1390273 () Bool)

(declare-fun e!888010 () Regex!3757)

(assert (=> b!1390273 (= e!888010 (getWitness!419 (t!122415 (map!3125 rules!2550 lambda!60110)) lambda!60111))))

(declare-fun b!1390274 () Bool)

(declare-fun e!888011 () Regex!3757)

(assert (=> b!1390274 (= e!888011 (h!19511 (map!3125 rules!2550 lambda!60110)))))

(declare-fun b!1390275 () Bool)

(declare-fun lt!462583 () Unit!20367)

(declare-fun Unit!20371 () Unit!20367)

(assert (=> b!1390275 (= lt!462583 Unit!20371)))

(assert (=> b!1390275 false))

(declare-fun head!2544 (List!14176) Regex!3757)

(assert (=> b!1390275 (= e!888010 (head!2544 (map!3125 rules!2550 lambda!60110)))))

(declare-fun d!397388 () Bool)

(declare-fun e!888009 () Bool)

(assert (=> d!397388 e!888009))

(declare-fun res!627635 () Bool)

(assert (=> d!397388 (=> (not res!627635) (not e!888009))))

(declare-fun lt!462584 () Regex!3757)

(assert (=> d!397388 (= res!627635 (dynLambda!6486 lambda!60111 lt!462584))))

(assert (=> d!397388 (= lt!462584 e!888011)))

(declare-fun c!228788 () Bool)

(assert (=> d!397388 (= c!228788 e!888008)))

(declare-fun res!627634 () Bool)

(assert (=> d!397388 (=> (not res!627634) (not e!888008))))

(assert (=> d!397388 (= res!627634 ((_ is Cons!14110) (map!3125 rules!2550 lambda!60110)))))

(assert (=> d!397388 (exists!531 (map!3125 rules!2550 lambda!60110) lambda!60111)))

(assert (=> d!397388 (= (getWitness!419 (map!3125 rules!2550 lambda!60110) lambda!60111) lt!462584)))

(declare-fun b!1390276 () Bool)

(assert (=> b!1390276 (= e!888011 e!888010)))

(declare-fun c!228789 () Bool)

(assert (=> b!1390276 (= c!228789 ((_ is Cons!14110) (map!3125 rules!2550 lambda!60110)))))

(declare-fun b!1390277 () Bool)

(assert (=> b!1390277 (= e!888009 (contains!2711 (map!3125 rules!2550 lambda!60110) lt!462584))))

(assert (= (and d!397388 res!627634) b!1390272))

(assert (= (and d!397388 c!228788) b!1390274))

(assert (= (and d!397388 (not c!228788)) b!1390276))

(assert (= (and b!1390276 c!228789) b!1390273))

(assert (= (and b!1390276 (not c!228789)) b!1390275))

(assert (= (and d!397388 res!627635) b!1390277))

(declare-fun b_lambda!43263 () Bool)

(assert (=> (not b_lambda!43263) (not b!1390272)))

(declare-fun b_lambda!43265 () Bool)

(assert (=> (not b_lambda!43265) (not d!397388)))

(assert (=> b!1390275 m!1564829))

(declare-fun m!1565115 () Bool)

(assert (=> b!1390275 m!1565115))

(declare-fun m!1565117 () Bool)

(assert (=> b!1390273 m!1565117))

(assert (=> b!1390277 m!1564829))

(declare-fun m!1565119 () Bool)

(assert (=> b!1390277 m!1565119))

(declare-fun m!1565121 () Bool)

(assert (=> b!1390272 m!1565121))

(declare-fun m!1565123 () Bool)

(assert (=> d!397388 m!1565123))

(assert (=> d!397388 m!1564829))

(assert (=> d!397388 m!1564909))

(assert (=> b!1390063 d!397388))

(declare-fun d!397406 () Bool)

(declare-fun prefixMatchZipperSequence!287 (Regex!3757 BalanceConc!9232) Bool)

(declare-fun ++!3665 (BalanceConc!9232 BalanceConc!9232) BalanceConc!9232)

(declare-fun singletonSeq!1093 (C!7804) BalanceConc!9232)

(assert (=> d!397406 (= (separableTokensPredicate!421 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!287 (rulesRegex!326 thiss!19762 rules!2550) (++!3665 (charsOf!1415 t1!34) (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0))))))))

(declare-fun bs!337370 () Bool)

(assert (= bs!337370 d!397406))

(assert (=> bs!337370 m!1564967))

(declare-fun m!1565153 () Bool)

(assert (=> bs!337370 m!1565153))

(declare-fun m!1565155 () Bool)

(assert (=> bs!337370 m!1565155))

(declare-fun m!1565157 () Bool)

(assert (=> bs!337370 m!1565157))

(declare-fun m!1565159 () Bool)

(assert (=> bs!337370 m!1565159))

(assert (=> bs!337370 m!1564961))

(assert (=> bs!337370 m!1564967))

(assert (=> bs!337370 m!1564863))

(assert (=> bs!337370 m!1564961))

(assert (=> bs!337370 m!1565159))

(assert (=> bs!337370 m!1565153))

(assert (=> bs!337370 m!1564863))

(assert (=> bs!337370 m!1565157))

(assert (=> b!1390064 d!397406))

(assert (=> b!1390085 d!397376))

(declare-fun bs!337371 () Bool)

(declare-fun d!397416 () Bool)

(assert (= bs!337371 (and d!397416 b!1390085)))

(declare-fun lambda!60132 () Int)

(assert (=> bs!337371 (not (= lambda!60132 lambda!60111))))

(assert (=> d!397416 true))

(declare-fun order!8633 () Int)

(declare-fun dynLambda!6487 (Int Int) Int)

(assert (=> d!397416 (< (dynLambda!6487 order!8633 lambda!60111) (dynLambda!6487 order!8633 lambda!60132))))

(declare-fun forall!3435 (List!14176 Int) Bool)

(assert (=> d!397416 (= (exists!531 lt!462531 lambda!60111) (not (forall!3435 lt!462531 lambda!60132)))))

(declare-fun bs!337372 () Bool)

(assert (= bs!337372 d!397416))

(declare-fun m!1565161 () Bool)

(assert (=> bs!337372 m!1565161))

(assert (=> b!1390085 d!397416))

(declare-fun bs!337373 () Bool)

(declare-fun d!397418 () Bool)

(assert (= bs!337373 (and d!397418 b!1390085)))

(declare-fun lambda!60137 () Int)

(assert (=> bs!337373 (not (= lambda!60137 lambda!60111))))

(declare-fun bs!337374 () Bool)

(assert (= bs!337374 (and d!397418 d!397416)))

(assert (=> bs!337374 (not (= lambda!60137 lambda!60132))))

(declare-fun lambda!60138 () Int)

(assert (=> bs!337373 (= lambda!60138 lambda!60111)))

(assert (=> bs!337374 (not (= lambda!60138 lambda!60132))))

(declare-fun bs!337375 () Bool)

(assert (= bs!337375 d!397418))

(assert (=> bs!337375 (not (= lambda!60138 lambda!60137))))

(assert (=> d!397418 true))

(assert (=> d!397418 (= (matchR!1748 lt!462518 lt!462520) (exists!531 lt!462531 lambda!60138))))

(declare-fun lt!462596 () Unit!20367)

(declare-fun choose!8547 (Regex!3757 List!14176 List!14173) Unit!20367)

(assert (=> d!397418 (= lt!462596 (choose!8547 lt!462518 lt!462531 lt!462520))))

(assert (=> d!397418 (forall!3435 lt!462531 lambda!60137)))

(assert (=> d!397418 (= (matchRGenUnionSpec!168 lt!462518 lt!462531 lt!462520) lt!462596)))

(assert (=> bs!337375 m!1564821))

(declare-fun m!1565163 () Bool)

(assert (=> bs!337375 m!1565163))

(declare-fun m!1565165 () Bool)

(assert (=> bs!337375 m!1565165))

(declare-fun m!1565167 () Bool)

(assert (=> bs!337375 m!1565167))

(assert (=> b!1390085 d!397418))

(declare-fun bs!337376 () Bool)

(declare-fun d!397420 () Bool)

(assert (= bs!337376 (and d!397420 b!1390085)))

(declare-fun lambda!60139 () Int)

(assert (=> bs!337376 (not (= lambda!60139 lambda!60111))))

(declare-fun bs!337377 () Bool)

(assert (= bs!337377 (and d!397420 d!397416)))

(assert (=> bs!337377 (= lambda!60139 lambda!60132)))

(declare-fun bs!337378 () Bool)

(assert (= bs!337378 (and d!397420 d!397418)))

(assert (=> bs!337378 (not (= lambda!60139 lambda!60137))))

(assert (=> bs!337378 (not (= lambda!60139 lambda!60138))))

(assert (=> d!397420 true))

(assert (=> d!397420 (< (dynLambda!6487 order!8633 lambda!60111) (dynLambda!6487 order!8633 lambda!60139))))

(assert (=> d!397420 (= (exists!531 (map!3125 rules!2550 lambda!60110) lambda!60111) (not (forall!3435 (map!3125 rules!2550 lambda!60110) lambda!60139)))))

(declare-fun bs!337379 () Bool)

(assert (= bs!337379 d!397420))

(assert (=> bs!337379 m!1564829))

(declare-fun m!1565169 () Bool)

(assert (=> bs!337379 m!1565169))

(assert (=> b!1390085 d!397420))

(declare-fun d!397422 () Bool)

(declare-fun lt!462599 () Bool)

(declare-fun content!2079 (List!14173) (InoxSet C!7804))

(assert (=> d!397422 (= lt!462599 (select (content!2079 lt!462527) lt!462513))))

(declare-fun e!888030 () Bool)

(assert (=> d!397422 (= lt!462599 e!888030)))

(declare-fun res!627651 () Bool)

(assert (=> d!397422 (=> (not res!627651) (not e!888030))))

(assert (=> d!397422 (= res!627651 ((_ is Cons!14107) lt!462527))))

(assert (=> d!397422 (= (contains!2710 lt!462527 lt!462513) lt!462599)))

(declare-fun b!1390307 () Bool)

(declare-fun e!888031 () Bool)

(assert (=> b!1390307 (= e!888030 e!888031)))

(declare-fun res!627652 () Bool)

(assert (=> b!1390307 (=> res!627652 e!888031)))

(assert (=> b!1390307 (= res!627652 (= (h!19508 lt!462527) lt!462513))))

(declare-fun b!1390308 () Bool)

(assert (=> b!1390308 (= e!888031 (contains!2710 (t!122412 lt!462527) lt!462513))))

(assert (= (and d!397422 res!627651) b!1390307))

(assert (= (and b!1390307 (not res!627652)) b!1390308))

(declare-fun m!1565171 () Bool)

(assert (=> d!397422 m!1565171))

(declare-fun m!1565173 () Bool)

(assert (=> d!397422 m!1565173))

(declare-fun m!1565175 () Bool)

(assert (=> b!1390308 m!1565175))

(assert (=> b!1390086 d!397422))

(declare-fun b!1390325 () Bool)

(declare-fun c!228804 () Bool)

(assert (=> b!1390325 (= c!228804 ((_ is Star!3757) (regex!2443 (rule!4204 t2!34))))))

(declare-fun e!888042 () List!14173)

(declare-fun e!888041 () List!14173)

(assert (=> b!1390325 (= e!888042 e!888041)))

(declare-fun d!397424 () Bool)

(declare-fun c!228807 () Bool)

(assert (=> d!397424 (= c!228807 (or ((_ is EmptyExpr!3757) (regex!2443 (rule!4204 t2!34))) ((_ is EmptyLang!3757) (regex!2443 (rule!4204 t2!34)))))))

(declare-fun e!888040 () List!14173)

(assert (=> d!397424 (= (usedCharacters!254 (regex!2443 (rule!4204 t2!34))) e!888040)))

(declare-fun b!1390326 () Bool)

(declare-fun call!92981 () List!14173)

(assert (=> b!1390326 (= e!888041 call!92981)))

(declare-fun b!1390327 () Bool)

(assert (=> b!1390327 (= e!888040 Nil!14107)))

(declare-fun b!1390328 () Bool)

(declare-fun e!888043 () List!14173)

(declare-fun call!92983 () List!14173)

(assert (=> b!1390328 (= e!888043 call!92983)))

(declare-fun bm!92976 () Bool)

(declare-fun call!92982 () List!14173)

(declare-fun c!228805 () Bool)

(assert (=> bm!92976 (= call!92982 (usedCharacters!254 (ite c!228805 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))))))

(declare-fun bm!92977 () Bool)

(assert (=> bm!92977 (= call!92981 (usedCharacters!254 (ite c!228804 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228805 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34)))))))))

(declare-fun b!1390329 () Bool)

(assert (=> b!1390329 (= e!888040 e!888042)))

(declare-fun c!228806 () Bool)

(assert (=> b!1390329 (= c!228806 ((_ is ElementMatch!3757) (regex!2443 (rule!4204 t2!34))))))

(declare-fun b!1390330 () Bool)

(assert (=> b!1390330 (= e!888043 call!92983)))

(declare-fun b!1390331 () Bool)

(assert (=> b!1390331 (= e!888041 e!888043)))

(assert (=> b!1390331 (= c!228805 ((_ is Union!3757) (regex!2443 (rule!4204 t2!34))))))

(declare-fun call!92984 () List!14173)

(declare-fun bm!92978 () Bool)

(assert (=> bm!92978 (= call!92983 (++!3664 (ite c!228805 call!92982 call!92984) (ite c!228805 call!92984 call!92982)))))

(declare-fun bm!92979 () Bool)

(assert (=> bm!92979 (= call!92984 call!92981)))

(declare-fun b!1390332 () Bool)

(assert (=> b!1390332 (= e!888042 (Cons!14107 (c!228749 (regex!2443 (rule!4204 t2!34))) Nil!14107))))

(assert (= (and d!397424 c!228807) b!1390327))

(assert (= (and d!397424 (not c!228807)) b!1390329))

(assert (= (and b!1390329 c!228806) b!1390332))

(assert (= (and b!1390329 (not c!228806)) b!1390325))

(assert (= (and b!1390325 c!228804) b!1390326))

(assert (= (and b!1390325 (not c!228804)) b!1390331))

(assert (= (and b!1390331 c!228805) b!1390328))

(assert (= (and b!1390331 (not c!228805)) b!1390330))

(assert (= (or b!1390328 b!1390330) bm!92976))

(assert (= (or b!1390328 b!1390330) bm!92979))

(assert (= (or b!1390328 b!1390330) bm!92978))

(assert (= (or b!1390326 bm!92979) bm!92977))

(declare-fun m!1565177 () Bool)

(assert (=> bm!92976 m!1565177))

(declare-fun m!1565179 () Bool)

(assert (=> bm!92977 m!1565179))

(declare-fun m!1565181 () Bool)

(assert (=> bm!92978 m!1565181))

(assert (=> b!1390086 d!397424))

(declare-fun d!397426 () Bool)

(declare-fun res!627657 () Bool)

(declare-fun e!888046 () Bool)

(assert (=> d!397426 (=> (not res!627657) (not e!888046))))

(declare-fun isEmpty!8550 (List!14173) Bool)

(assert (=> d!397426 (= res!627657 (not (isEmpty!8550 (originalCharacters!3305 t1!34))))))

(assert (=> d!397426 (= (inv!18444 t1!34) e!888046)))

(declare-fun b!1390337 () Bool)

(declare-fun res!627658 () Bool)

(assert (=> b!1390337 (=> (not res!627658) (not e!888046))))

(declare-fun dynLambda!6489 (Int TokenValue!2533) BalanceConc!9232)

(assert (=> b!1390337 (= res!627658 (= (originalCharacters!3305 t1!34) (list!5477 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34)))))))

(declare-fun b!1390338 () Bool)

(declare-fun size!11605 (List!14173) Int)

(assert (=> b!1390338 (= e!888046 (= (size!11595 t1!34) (size!11605 (originalCharacters!3305 t1!34))))))

(assert (= (and d!397426 res!627657) b!1390337))

(assert (= (and b!1390337 res!627658) b!1390338))

(declare-fun b_lambda!43269 () Bool)

(assert (=> (not b_lambda!43269) (not b!1390337)))

(declare-fun t!122429 () Bool)

(declare-fun tb!72813 () Bool)

(assert (=> (and b!1390097 (= (toChars!3589 (transformation!2443 (h!19509 rules!2550))) (toChars!3589 (transformation!2443 (rule!4204 t1!34)))) t!122429) tb!72813))

(declare-fun b!1390343 () Bool)

(declare-fun e!888049 () Bool)

(declare-fun tp!397119 () Bool)

(declare-fun inv!18448 (Conc!4646) Bool)

(assert (=> b!1390343 (= e!888049 (and (inv!18448 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34)))) tp!397119))))

(declare-fun result!88476 () Bool)

(declare-fun inv!18449 (BalanceConc!9232) Bool)

(assert (=> tb!72813 (= result!88476 (and (inv!18449 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34))) e!888049))))

(assert (= tb!72813 b!1390343))

(declare-fun m!1565183 () Bool)

(assert (=> b!1390343 m!1565183))

(declare-fun m!1565185 () Bool)

(assert (=> tb!72813 m!1565185))

(assert (=> b!1390337 t!122429))

(declare-fun b_and!93153 () Bool)

(assert (= b_and!93125 (and (=> t!122429 result!88476) b_and!93153)))

(declare-fun t!122431 () Bool)

(declare-fun tb!72815 () Bool)

(assert (=> (and b!1390083 (= (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (toChars!3589 (transformation!2443 (rule!4204 t1!34)))) t!122431) tb!72815))

(declare-fun result!88480 () Bool)

(assert (= result!88480 result!88476))

(assert (=> b!1390337 t!122431))

(declare-fun b_and!93155 () Bool)

(assert (= b_and!93129 (and (=> t!122431 result!88480) b_and!93155)))

(declare-fun t!122433 () Bool)

(declare-fun tb!72817 () Bool)

(assert (=> (and b!1390092 (= (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (toChars!3589 (transformation!2443 (rule!4204 t1!34)))) t!122433) tb!72817))

(declare-fun result!88482 () Bool)

(assert (= result!88482 result!88476))

(assert (=> b!1390337 t!122433))

(declare-fun b_and!93157 () Bool)

(assert (= b_and!93133 (and (=> t!122433 result!88482) b_and!93157)))

(declare-fun m!1565187 () Bool)

(assert (=> d!397426 m!1565187))

(declare-fun m!1565189 () Bool)

(assert (=> b!1390337 m!1565189))

(assert (=> b!1390337 m!1565189))

(declare-fun m!1565191 () Bool)

(assert (=> b!1390337 m!1565191))

(declare-fun m!1565193 () Bool)

(assert (=> b!1390338 m!1565193))

(assert (=> start!126346 d!397426))

(declare-fun d!397428 () Bool)

(declare-fun res!627659 () Bool)

(declare-fun e!888050 () Bool)

(assert (=> d!397428 (=> (not res!627659) (not e!888050))))

(assert (=> d!397428 (= res!627659 (not (isEmpty!8550 (originalCharacters!3305 t2!34))))))

(assert (=> d!397428 (= (inv!18444 t2!34) e!888050)))

(declare-fun b!1390344 () Bool)

(declare-fun res!627660 () Bool)

(assert (=> b!1390344 (=> (not res!627660) (not e!888050))))

(assert (=> b!1390344 (= res!627660 (= (originalCharacters!3305 t2!34) (list!5477 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34)))))))

(declare-fun b!1390345 () Bool)

(assert (=> b!1390345 (= e!888050 (= (size!11595 t2!34) (size!11605 (originalCharacters!3305 t2!34))))))

(assert (= (and d!397428 res!627659) b!1390344))

(assert (= (and b!1390344 res!627660) b!1390345))

(declare-fun b_lambda!43271 () Bool)

(assert (=> (not b_lambda!43271) (not b!1390344)))

(declare-fun tb!72819 () Bool)

(declare-fun t!122435 () Bool)

(assert (=> (and b!1390097 (= (toChars!3589 (transformation!2443 (h!19509 rules!2550))) (toChars!3589 (transformation!2443 (rule!4204 t2!34)))) t!122435) tb!72819))

(declare-fun b!1390346 () Bool)

(declare-fun e!888051 () Bool)

(declare-fun tp!397120 () Bool)

(assert (=> b!1390346 (= e!888051 (and (inv!18448 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34)))) tp!397120))))

(declare-fun result!88484 () Bool)

(assert (=> tb!72819 (= result!88484 (and (inv!18449 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34))) e!888051))))

(assert (= tb!72819 b!1390346))

(declare-fun m!1565195 () Bool)

(assert (=> b!1390346 m!1565195))

(declare-fun m!1565197 () Bool)

(assert (=> tb!72819 m!1565197))

(assert (=> b!1390344 t!122435))

(declare-fun b_and!93159 () Bool)

(assert (= b_and!93153 (and (=> t!122435 result!88484) b_and!93159)))

(declare-fun tb!72821 () Bool)

(declare-fun t!122437 () Bool)

(assert (=> (and b!1390083 (= (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (toChars!3589 (transformation!2443 (rule!4204 t2!34)))) t!122437) tb!72821))

(declare-fun result!88486 () Bool)

(assert (= result!88486 result!88484))

(assert (=> b!1390344 t!122437))

(declare-fun b_and!93161 () Bool)

(assert (= b_and!93155 (and (=> t!122437 result!88486) b_and!93161)))

(declare-fun t!122439 () Bool)

(declare-fun tb!72823 () Bool)

(assert (=> (and b!1390092 (= (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (toChars!3589 (transformation!2443 (rule!4204 t2!34)))) t!122439) tb!72823))

(declare-fun result!88488 () Bool)

(assert (= result!88488 result!88484))

(assert (=> b!1390344 t!122439))

(declare-fun b_and!93163 () Bool)

(assert (= b_and!93157 (and (=> t!122439 result!88488) b_and!93163)))

(declare-fun m!1565199 () Bool)

(assert (=> d!397428 m!1565199))

(declare-fun m!1565201 () Bool)

(assert (=> b!1390344 m!1565201))

(assert (=> b!1390344 m!1565201))

(declare-fun m!1565203 () Bool)

(assert (=> b!1390344 m!1565203))

(declare-fun m!1565205 () Bool)

(assert (=> b!1390345 m!1565205))

(assert (=> start!126346 d!397428))

(declare-fun d!397430 () Bool)

(assert (=> d!397430 (= (inv!18441 (tag!2705 (rule!4204 t1!34))) (= (mod (str.len (value!79257 (tag!2705 (rule!4204 t1!34)))) 2) 0))))

(assert (=> b!1390065 d!397430))

(declare-fun d!397432 () Bool)

(declare-fun res!627669 () Bool)

(declare-fun e!888058 () Bool)

(assert (=> d!397432 (=> (not res!627669) (not e!888058))))

(declare-fun semiInverseModEq!948 (Int Int) Bool)

(assert (=> d!397432 (= res!627669 (semiInverseModEq!948 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (toValue!3730 (transformation!2443 (rule!4204 t1!34)))))))

(assert (=> d!397432 (= (inv!18445 (transformation!2443 (rule!4204 t1!34))) e!888058)))

(declare-fun b!1390355 () Bool)

(declare-fun equivClasses!907 (Int Int) Bool)

(assert (=> b!1390355 (= e!888058 (equivClasses!907 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (toValue!3730 (transformation!2443 (rule!4204 t1!34)))))))

(assert (= (and d!397432 res!627669) b!1390355))

(declare-fun m!1565207 () Bool)

(assert (=> d!397432 m!1565207))

(declare-fun m!1565209 () Bool)

(assert (=> b!1390355 m!1565209))

(assert (=> b!1390065 d!397432))

(declare-fun d!397434 () Bool)

(declare-fun res!627677 () Bool)

(declare-fun e!888065 () Bool)

(assert (=> d!397434 (=> res!627677 e!888065)))

(assert (=> d!397434 (= res!627677 (not ((_ is Cons!14108) rules!2550)))))

(assert (=> d!397434 (= (sepAndNonSepRulesDisjointChars!816 rules!2550 rules!2550) e!888065)))

(declare-fun b!1390363 () Bool)

(declare-fun e!888066 () Bool)

(assert (=> b!1390363 (= e!888065 e!888066)))

(declare-fun res!627678 () Bool)

(assert (=> b!1390363 (=> (not res!627678) (not e!888066))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!390 (Rule!4686 List!14174) Bool)

(assert (=> b!1390363 (= res!627678 (ruleDisjointCharsFromAllFromOtherType!390 (h!19509 rules!2550) rules!2550))))

(declare-fun b!1390364 () Bool)

(assert (=> b!1390364 (= e!888066 (sepAndNonSepRulesDisjointChars!816 rules!2550 (t!122413 rules!2550)))))

(assert (= (and d!397434 (not res!627677)) b!1390363))

(assert (= (and b!1390363 res!627678) b!1390364))

(declare-fun m!1565211 () Bool)

(assert (=> b!1390363 m!1565211))

(declare-fun m!1565213 () Bool)

(assert (=> b!1390364 m!1565213))

(assert (=> b!1390066 d!397434))

(declare-fun b!1390385 () Bool)

(declare-fun e!888080 () Bool)

(declare-fun e!888079 () Bool)

(assert (=> b!1390385 (= e!888080 e!888079)))

(declare-fun res!627683 () Bool)

(declare-fun lt!462620 () tuple2!13714)

(assert (=> b!1390385 (= res!627683 (< (size!11605 (_2!7743 lt!462620)) (size!11605 (list!5477 lt!462535))))))

(assert (=> b!1390385 (=> (not res!627683) (not e!888079))))

(declare-fun d!397436 () Bool)

(assert (=> d!397436 e!888080))

(declare-fun c!228817 () Bool)

(declare-fun size!11606 (List!14175) Int)

(assert (=> d!397436 (= c!228817 (> (size!11606 (_1!7743 lt!462620)) 0))))

(declare-fun e!888081 () tuple2!13714)

(assert (=> d!397436 (= lt!462620 e!888081)))

(declare-fun c!228816 () Bool)

(declare-fun lt!462618 () Option!2704)

(assert (=> d!397436 (= c!228816 ((_ is Some!2703) lt!462618))))

(assert (=> d!397436 (= lt!462618 (maxPrefix!1112 thiss!19762 rules!2550 (list!5477 lt!462535)))))

(assert (=> d!397436 (= (lexList!652 thiss!19762 rules!2550 (list!5477 lt!462535)) lt!462620)))

(declare-fun b!1390386 () Bool)

(declare-fun isEmpty!8552 (List!14175) Bool)

(assert (=> b!1390386 (= e!888079 (not (isEmpty!8552 (_1!7743 lt!462620))))))

(declare-fun b!1390387 () Bool)

(assert (=> b!1390387 (= e!888081 (tuple2!13715 Nil!14109 (list!5477 lt!462535)))))

(declare-fun b!1390388 () Bool)

(assert (=> b!1390388 (= e!888080 (= (_2!7743 lt!462620) (list!5477 lt!462535)))))

(declare-fun b!1390389 () Bool)

(declare-fun lt!462619 () tuple2!13714)

(assert (=> b!1390389 (= e!888081 (tuple2!13715 (Cons!14109 (_1!7741 (v!21586 lt!462618)) (_1!7743 lt!462619)) (_2!7743 lt!462619)))))

(assert (=> b!1390389 (= lt!462619 (lexList!652 thiss!19762 rules!2550 (_2!7741 (v!21586 lt!462618))))))

(assert (= (and d!397436 c!228816) b!1390389))

(assert (= (and d!397436 (not c!228816)) b!1390387))

(assert (= (and d!397436 c!228817) b!1390385))

(assert (= (and d!397436 (not c!228817)) b!1390388))

(assert (= (and b!1390385 res!627683) b!1390386))

(declare-fun m!1565229 () Bool)

(assert (=> b!1390385 m!1565229))

(assert (=> b!1390385 m!1564943))

(declare-fun m!1565231 () Bool)

(assert (=> b!1390385 m!1565231))

(declare-fun m!1565235 () Bool)

(assert (=> d!397436 m!1565235))

(assert (=> d!397436 m!1564943))

(declare-fun m!1565239 () Bool)

(assert (=> d!397436 m!1565239))

(declare-fun m!1565241 () Bool)

(assert (=> b!1390386 m!1565241))

(declare-fun m!1565245 () Bool)

(assert (=> b!1390389 m!1565245))

(assert (=> b!1390087 d!397436))

(declare-fun d!397440 () Bool)

(declare-fun list!5481 (Conc!4646) List!14173)

(assert (=> d!397440 (= (list!5477 lt!462535) (list!5481 (c!228748 lt!462535)))))

(declare-fun bs!337380 () Bool)

(assert (= bs!337380 d!397440))

(declare-fun m!1565253 () Bool)

(assert (=> bs!337380 m!1565253))

(assert (=> b!1390087 d!397440))

(declare-fun d!397444 () Bool)

(declare-fun lt!462624 () Bool)

(assert (=> d!397444 (= lt!462624 (select (content!2079 (usedCharacters!254 (regex!2443 (rule!4204 t1!34)))) lt!462536))))

(declare-fun e!888085 () Bool)

(assert (=> d!397444 (= lt!462624 e!888085)))

(declare-fun res!627685 () Bool)

(assert (=> d!397444 (=> (not res!627685) (not e!888085))))

(assert (=> d!397444 (= res!627685 ((_ is Cons!14107) (usedCharacters!254 (regex!2443 (rule!4204 t1!34)))))))

(assert (=> d!397444 (= (contains!2710 (usedCharacters!254 (regex!2443 (rule!4204 t1!34))) lt!462536) lt!462624)))

(declare-fun b!1390395 () Bool)

(declare-fun e!888086 () Bool)

(assert (=> b!1390395 (= e!888085 e!888086)))

(declare-fun res!627686 () Bool)

(assert (=> b!1390395 (=> res!627686 e!888086)))

(assert (=> b!1390395 (= res!627686 (= (h!19508 (usedCharacters!254 (regex!2443 (rule!4204 t1!34)))) lt!462536))))

(declare-fun b!1390396 () Bool)

(assert (=> b!1390396 (= e!888086 (contains!2710 (t!122412 (usedCharacters!254 (regex!2443 (rule!4204 t1!34)))) lt!462536))))

(assert (= (and d!397444 res!627685) b!1390395))

(assert (= (and b!1390395 (not res!627686)) b!1390396))

(assert (=> d!397444 m!1564939))

(declare-fun m!1565257 () Bool)

(assert (=> d!397444 m!1565257))

(declare-fun m!1565259 () Bool)

(assert (=> d!397444 m!1565259))

(declare-fun m!1565263 () Bool)

(assert (=> b!1390396 m!1565263))

(assert (=> b!1390088 d!397444))

(declare-fun b!1390401 () Bool)

(declare-fun c!228820 () Bool)

(assert (=> b!1390401 (= c!228820 ((_ is Star!3757) (regex!2443 (rule!4204 t1!34))))))

(declare-fun e!888090 () List!14173)

(declare-fun e!888089 () List!14173)

(assert (=> b!1390401 (= e!888090 e!888089)))

(declare-fun d!397450 () Bool)

(declare-fun c!228823 () Bool)

(assert (=> d!397450 (= c!228823 (or ((_ is EmptyExpr!3757) (regex!2443 (rule!4204 t1!34))) ((_ is EmptyLang!3757) (regex!2443 (rule!4204 t1!34)))))))

(declare-fun e!888088 () List!14173)

(assert (=> d!397450 (= (usedCharacters!254 (regex!2443 (rule!4204 t1!34))) e!888088)))

(declare-fun b!1390402 () Bool)

(declare-fun call!92985 () List!14173)

(assert (=> b!1390402 (= e!888089 call!92985)))

(declare-fun b!1390403 () Bool)

(assert (=> b!1390403 (= e!888088 Nil!14107)))

(declare-fun b!1390404 () Bool)

(declare-fun e!888091 () List!14173)

(declare-fun call!92987 () List!14173)

(assert (=> b!1390404 (= e!888091 call!92987)))

(declare-fun bm!92980 () Bool)

(declare-fun call!92986 () List!14173)

(declare-fun c!228821 () Bool)

(assert (=> bm!92980 (= call!92986 (usedCharacters!254 (ite c!228821 (regOne!8027 (regex!2443 (rule!4204 t1!34))) (regTwo!8026 (regex!2443 (rule!4204 t1!34))))))))

(declare-fun bm!92981 () Bool)

(assert (=> bm!92981 (= call!92985 (usedCharacters!254 (ite c!228820 (reg!4086 (regex!2443 (rule!4204 t1!34))) (ite c!228821 (regTwo!8027 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34)))))))))

(declare-fun b!1390405 () Bool)

(assert (=> b!1390405 (= e!888088 e!888090)))

(declare-fun c!228822 () Bool)

(assert (=> b!1390405 (= c!228822 ((_ is ElementMatch!3757) (regex!2443 (rule!4204 t1!34))))))

(declare-fun b!1390406 () Bool)

(assert (=> b!1390406 (= e!888091 call!92987)))

(declare-fun b!1390407 () Bool)

(assert (=> b!1390407 (= e!888089 e!888091)))

(assert (=> b!1390407 (= c!228821 ((_ is Union!3757) (regex!2443 (rule!4204 t1!34))))))

(declare-fun call!92988 () List!14173)

(declare-fun bm!92982 () Bool)

(assert (=> bm!92982 (= call!92987 (++!3664 (ite c!228821 call!92986 call!92988) (ite c!228821 call!92988 call!92986)))))

(declare-fun bm!92983 () Bool)

(assert (=> bm!92983 (= call!92988 call!92985)))

(declare-fun b!1390408 () Bool)

(assert (=> b!1390408 (= e!888090 (Cons!14107 (c!228749 (regex!2443 (rule!4204 t1!34))) Nil!14107))))

(assert (= (and d!397450 c!228823) b!1390403))

(assert (= (and d!397450 (not c!228823)) b!1390405))

(assert (= (and b!1390405 c!228822) b!1390408))

(assert (= (and b!1390405 (not c!228822)) b!1390401))

(assert (= (and b!1390401 c!228820) b!1390402))

(assert (= (and b!1390401 (not c!228820)) b!1390407))

(assert (= (and b!1390407 c!228821) b!1390404))

(assert (= (and b!1390407 (not c!228821)) b!1390406))

(assert (= (or b!1390404 b!1390406) bm!92980))

(assert (= (or b!1390404 b!1390406) bm!92983))

(assert (= (or b!1390404 b!1390406) bm!92982))

(assert (= (or b!1390402 bm!92983) bm!92981))

(declare-fun m!1565269 () Bool)

(assert (=> bm!92980 m!1565269))

(declare-fun m!1565273 () Bool)

(assert (=> bm!92981 m!1565273))

(declare-fun m!1565275 () Bool)

(assert (=> bm!92982 m!1565275))

(assert (=> b!1390088 d!397450))

(declare-fun d!397454 () Bool)

(assert (=> d!397454 (= (isEmpty!8546 rules!2550) ((_ is Nil!14108) rules!2550))))

(assert (=> b!1390068 d!397454))

(declare-fun d!397458 () Bool)

(declare-fun e!888102 () Bool)

(assert (=> d!397458 e!888102))

(declare-fun res!627709 () Bool)

(assert (=> d!397458 (=> res!627709 e!888102)))

(declare-fun lt!462639 () Option!2704)

(declare-fun isEmpty!8554 (Option!2704) Bool)

(assert (=> d!397458 (= res!627709 (isEmpty!8554 lt!462639))))

(declare-fun e!888100 () Option!2704)

(assert (=> d!397458 (= lt!462639 e!888100)))

(declare-fun c!228826 () Bool)

(assert (=> d!397458 (= c!228826 (and ((_ is Cons!14108) rules!2550) ((_ is Nil!14108) (t!122413 rules!2550))))))

(declare-fun lt!462638 () Unit!20367)

(declare-fun lt!462637 () Unit!20367)

(assert (=> d!397458 (= lt!462638 lt!462637)))

(declare-fun isPrefix!1145 (List!14173 List!14173) Bool)

(assert (=> d!397458 (isPrefix!1145 lt!462532 lt!462532)))

(declare-fun lemmaIsPrefixRefl!804 (List!14173 List!14173) Unit!20367)

(assert (=> d!397458 (= lt!462637 (lemmaIsPrefixRefl!804 lt!462532 lt!462532))))

(declare-fun rulesValidInductive!787 (LexerInterface!2138 List!14174) Bool)

(assert (=> d!397458 (rulesValidInductive!787 thiss!19762 rules!2550)))

(assert (=> d!397458 (= (maxPrefix!1112 thiss!19762 rules!2550 lt!462532) lt!462639)))

(declare-fun b!1390427 () Bool)

(declare-fun e!888101 () Bool)

(declare-fun get!4379 (Option!2704) tuple2!13710)

(assert (=> b!1390427 (= e!888101 (contains!2709 rules!2550 (rule!4204 (_1!7741 (get!4379 lt!462639)))))))

(declare-fun b!1390428 () Bool)

(declare-fun res!627705 () Bool)

(assert (=> b!1390428 (=> (not res!627705) (not e!888101))))

(assert (=> b!1390428 (= res!627705 (= (++!3664 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639)))) (_2!7741 (get!4379 lt!462639))) lt!462532))))

(declare-fun b!1390429 () Bool)

(declare-fun res!627707 () Bool)

(assert (=> b!1390429 (=> (not res!627707) (not e!888101))))

(assert (=> b!1390429 (= res!627707 (= (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639)))) (originalCharacters!3305 (_1!7741 (get!4379 lt!462639)))))))

(declare-fun call!92991 () Option!2704)

(declare-fun bm!92986 () Bool)

(declare-fun maxPrefixOneRule!630 (LexerInterface!2138 Rule!4686 List!14173) Option!2704)

(assert (=> bm!92986 (= call!92991 (maxPrefixOneRule!630 thiss!19762 (h!19509 rules!2550) lt!462532))))

(declare-fun b!1390430 () Bool)

(declare-fun res!627708 () Bool)

(assert (=> b!1390430 (=> (not res!627708) (not e!888101))))

(assert (=> b!1390430 (= res!627708 (matchR!1748 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))) (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639))))))))

(declare-fun b!1390431 () Bool)

(assert (=> b!1390431 (= e!888100 call!92991)))

(declare-fun b!1390432 () Bool)

(declare-fun res!627711 () Bool)

(assert (=> b!1390432 (=> (not res!627711) (not e!888101))))

(assert (=> b!1390432 (= res!627711 (< (size!11605 (_2!7741 (get!4379 lt!462639))) (size!11605 lt!462532)))))

(declare-fun b!1390433 () Bool)

(declare-fun res!627710 () Bool)

(assert (=> b!1390433 (=> (not res!627710) (not e!888101))))

(declare-fun apply!3551 (TokenValueInjection!4726 BalanceConc!9232) TokenValue!2533)

(declare-fun seqFromList!1648 (List!14173) BalanceConc!9232)

(assert (=> b!1390433 (= res!627710 (= (value!79258 (_1!7741 (get!4379 lt!462639))) (apply!3551 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))) (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!462639)))))))))

(declare-fun b!1390434 () Bool)

(assert (=> b!1390434 (= e!888102 e!888101)))

(declare-fun res!627706 () Bool)

(assert (=> b!1390434 (=> (not res!627706) (not e!888101))))

(declare-fun isDefined!2232 (Option!2704) Bool)

(assert (=> b!1390434 (= res!627706 (isDefined!2232 lt!462639))))

(declare-fun b!1390435 () Bool)

(declare-fun lt!462641 () Option!2704)

(declare-fun lt!462640 () Option!2704)

(assert (=> b!1390435 (= e!888100 (ite (and ((_ is None!2703) lt!462641) ((_ is None!2703) lt!462640)) None!2703 (ite ((_ is None!2703) lt!462640) lt!462641 (ite ((_ is None!2703) lt!462641) lt!462640 (ite (>= (size!11595 (_1!7741 (v!21586 lt!462641))) (size!11595 (_1!7741 (v!21586 lt!462640)))) lt!462641 lt!462640)))))))

(assert (=> b!1390435 (= lt!462641 call!92991)))

(assert (=> b!1390435 (= lt!462640 (maxPrefix!1112 thiss!19762 (t!122413 rules!2550) lt!462532))))

(assert (= (and d!397458 c!228826) b!1390431))

(assert (= (and d!397458 (not c!228826)) b!1390435))

(assert (= (or b!1390431 b!1390435) bm!92986))

(assert (= (and d!397458 (not res!627709)) b!1390434))

(assert (= (and b!1390434 res!627706) b!1390429))

(assert (= (and b!1390429 res!627707) b!1390432))

(assert (= (and b!1390432 res!627711) b!1390428))

(assert (= (and b!1390428 res!627705) b!1390433))

(assert (= (and b!1390433 res!627710) b!1390430))

(assert (= (and b!1390430 res!627708) b!1390427))

(declare-fun m!1565289 () Bool)

(assert (=> b!1390435 m!1565289))

(declare-fun m!1565291 () Bool)

(assert (=> b!1390433 m!1565291))

(declare-fun m!1565293 () Bool)

(assert (=> b!1390433 m!1565293))

(assert (=> b!1390433 m!1565293))

(declare-fun m!1565295 () Bool)

(assert (=> b!1390433 m!1565295))

(assert (=> b!1390429 m!1565291))

(declare-fun m!1565297 () Bool)

(assert (=> b!1390429 m!1565297))

(assert (=> b!1390429 m!1565297))

(declare-fun m!1565299 () Bool)

(assert (=> b!1390429 m!1565299))

(declare-fun m!1565301 () Bool)

(assert (=> bm!92986 m!1565301))

(assert (=> b!1390427 m!1565291))

(declare-fun m!1565303 () Bool)

(assert (=> b!1390427 m!1565303))

(declare-fun m!1565305 () Bool)

(assert (=> d!397458 m!1565305))

(declare-fun m!1565307 () Bool)

(assert (=> d!397458 m!1565307))

(declare-fun m!1565309 () Bool)

(assert (=> d!397458 m!1565309))

(declare-fun m!1565311 () Bool)

(assert (=> d!397458 m!1565311))

(assert (=> b!1390432 m!1565291))

(declare-fun m!1565313 () Bool)

(assert (=> b!1390432 m!1565313))

(declare-fun m!1565315 () Bool)

(assert (=> b!1390432 m!1565315))

(assert (=> b!1390430 m!1565291))

(assert (=> b!1390430 m!1565297))

(assert (=> b!1390430 m!1565297))

(assert (=> b!1390430 m!1565299))

(assert (=> b!1390430 m!1565299))

(declare-fun m!1565317 () Bool)

(assert (=> b!1390430 m!1565317))

(declare-fun m!1565319 () Bool)

(assert (=> b!1390434 m!1565319))

(assert (=> b!1390428 m!1565291))

(assert (=> b!1390428 m!1565297))

(assert (=> b!1390428 m!1565297))

(assert (=> b!1390428 m!1565299))

(assert (=> b!1390428 m!1565299))

(declare-fun m!1565321 () Bool)

(assert (=> b!1390428 m!1565321))

(assert (=> b!1390089 d!397458))

(declare-fun d!397462 () Bool)

(declare-fun lt!462677 () Bool)

(declare-fun e!888170 () Bool)

(assert (=> d!397462 (= lt!462677 e!888170)))

(declare-fun res!627768 () Bool)

(assert (=> d!397462 (=> (not res!627768) (not e!888170))))

(assert (=> d!397462 (= res!627768 (= (list!5478 (_1!7742 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t1!34))))) (list!5478 (singletonSeq!1092 t1!34))))))

(declare-fun e!888169 () Bool)

(assert (=> d!397462 (= lt!462677 e!888169)))

(declare-fun res!627767 () Bool)

(assert (=> d!397462 (=> (not res!627767) (not e!888169))))

(declare-fun lt!462676 () tuple2!13712)

(declare-fun size!11607 (BalanceConc!9234) Int)

(assert (=> d!397462 (= res!627767 (= (size!11607 (_1!7742 lt!462676)) 1))))

(assert (=> d!397462 (= lt!462676 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t1!34))))))

(assert (=> d!397462 (not (isEmpty!8546 rules!2550))))

(assert (=> d!397462 (= (rulesProduceIndividualToken!1107 thiss!19762 rules!2550 t1!34) lt!462677)))

(declare-fun b!1390526 () Bool)

(declare-fun res!627766 () Bool)

(assert (=> b!1390526 (=> (not res!627766) (not e!888169))))

(declare-fun apply!3552 (BalanceConc!9234 Int) Token!4548)

(assert (=> b!1390526 (= res!627766 (= (apply!3552 (_1!7742 lt!462676) 0) t1!34))))

(declare-fun b!1390527 () Bool)

(assert (=> b!1390527 (= e!888169 (isEmpty!8547 (_2!7742 lt!462676)))))

(declare-fun b!1390528 () Bool)

(assert (=> b!1390528 (= e!888170 (isEmpty!8547 (_2!7742 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t1!34))))))))

(assert (= (and d!397462 res!627767) b!1390526))

(assert (= (and b!1390526 res!627766) b!1390527))

(assert (= (and d!397462 res!627768) b!1390528))

(declare-fun m!1565437 () Bool)

(assert (=> d!397462 m!1565437))

(assert (=> d!397462 m!1564883))

(declare-fun m!1565439 () Bool)

(assert (=> d!397462 m!1565439))

(assert (=> d!397462 m!1564825))

(assert (=> d!397462 m!1564881))

(declare-fun m!1565441 () Bool)

(assert (=> d!397462 m!1565441))

(declare-fun m!1565443 () Bool)

(assert (=> d!397462 m!1565443))

(assert (=> d!397462 m!1564881))

(assert (=> d!397462 m!1564883))

(assert (=> d!397462 m!1564881))

(declare-fun m!1565449 () Bool)

(assert (=> b!1390526 m!1565449))

(declare-fun m!1565451 () Bool)

(assert (=> b!1390527 m!1565451))

(assert (=> b!1390528 m!1564881))

(assert (=> b!1390528 m!1564881))

(assert (=> b!1390528 m!1564883))

(assert (=> b!1390528 m!1564883))

(assert (=> b!1390528 m!1565439))

(declare-fun m!1565453 () Bool)

(assert (=> b!1390528 m!1565453))

(assert (=> b!1390090 d!397462))

(declare-fun b!1390573 () Bool)

(declare-fun e!888205 () Bool)

(declare-fun e!888204 () Bool)

(assert (=> b!1390573 (= e!888205 e!888204)))

(declare-fun res!627797 () Bool)

(declare-fun nullable!1219 (Regex!3757) Bool)

(assert (=> b!1390573 (= res!627797 (not (nullable!1219 (reg!4086 (regex!2443 (rule!4204 t2!34))))))))

(assert (=> b!1390573 (=> (not res!627797) (not e!888204))))

(declare-fun bm!93003 () Bool)

(declare-fun call!93008 () Bool)

(declare-fun c!228855 () Bool)

(assert (=> bm!93003 (= call!93008 (validRegex!1639 (ite c!228855 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34))))))))

(declare-fun b!1390574 () Bool)

(declare-fun res!627798 () Bool)

(declare-fun e!888208 () Bool)

(assert (=> b!1390574 (=> (not res!627798) (not e!888208))))

(assert (=> b!1390574 (= res!627798 call!93008)))

(declare-fun e!888207 () Bool)

(assert (=> b!1390574 (= e!888207 e!888208)))

(declare-fun b!1390575 () Bool)

(declare-fun call!93009 () Bool)

(assert (=> b!1390575 (= e!888208 call!93009)))

(declare-fun b!1390576 () Bool)

(declare-fun e!888202 () Bool)

(assert (=> b!1390576 (= e!888202 call!93009)))

(declare-fun b!1390577 () Bool)

(declare-fun call!93010 () Bool)

(assert (=> b!1390577 (= e!888204 call!93010)))

(declare-fun b!1390578 () Bool)

(declare-fun e!888206 () Bool)

(assert (=> b!1390578 (= e!888206 e!888205)))

(declare-fun c!228854 () Bool)

(assert (=> b!1390578 (= c!228854 ((_ is Star!3757) (regex!2443 (rule!4204 t2!34))))))

(declare-fun bm!93004 () Bool)

(assert (=> bm!93004 (= call!93009 call!93010)))

(declare-fun bm!93005 () Bool)

(assert (=> bm!93005 (= call!93010 (validRegex!1639 (ite c!228854 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228855 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34)))))))))

(declare-fun b!1390580 () Bool)

(declare-fun e!888203 () Bool)

(assert (=> b!1390580 (= e!888203 e!888202)))

(declare-fun res!627800 () Bool)

(assert (=> b!1390580 (=> (not res!627800) (not e!888202))))

(assert (=> b!1390580 (= res!627800 call!93008)))

(declare-fun b!1390581 () Bool)

(declare-fun res!627799 () Bool)

(assert (=> b!1390581 (=> res!627799 e!888203)))

(assert (=> b!1390581 (= res!627799 (not ((_ is Concat!6291) (regex!2443 (rule!4204 t2!34)))))))

(assert (=> b!1390581 (= e!888207 e!888203)))

(declare-fun b!1390579 () Bool)

(assert (=> b!1390579 (= e!888205 e!888207)))

(assert (=> b!1390579 (= c!228855 ((_ is Union!3757) (regex!2443 (rule!4204 t2!34))))))

(declare-fun d!397504 () Bool)

(declare-fun res!627801 () Bool)

(assert (=> d!397504 (=> res!627801 e!888206)))

(assert (=> d!397504 (= res!627801 ((_ is ElementMatch!3757) (regex!2443 (rule!4204 t2!34))))))

(assert (=> d!397504 (= (validRegex!1639 (regex!2443 (rule!4204 t2!34))) e!888206)))

(assert (= (and d!397504 (not res!627801)) b!1390578))

(assert (= (and b!1390578 c!228854) b!1390573))

(assert (= (and b!1390578 (not c!228854)) b!1390579))

(assert (= (and b!1390573 res!627797) b!1390577))

(assert (= (and b!1390579 c!228855) b!1390574))

(assert (= (and b!1390579 (not c!228855)) b!1390581))

(assert (= (and b!1390574 res!627798) b!1390575))

(assert (= (and b!1390581 (not res!627799)) b!1390580))

(assert (= (and b!1390580 res!627800) b!1390576))

(assert (= (or b!1390574 b!1390580) bm!93003))

(assert (= (or b!1390575 b!1390576) bm!93004))

(assert (= (or b!1390577 bm!93004) bm!93005))

(declare-fun m!1565491 () Bool)

(assert (=> b!1390573 m!1565491))

(declare-fun m!1565493 () Bool)

(assert (=> bm!93003 m!1565493))

(declare-fun m!1565495 () Bool)

(assert (=> bm!93005 m!1565495))

(assert (=> b!1390069 d!397504))

(declare-fun d!397516 () Bool)

(assert (=> d!397516 (= (head!2543 lt!462537) (h!19508 lt!462537))))

(assert (=> b!1390069 d!397516))

(declare-fun d!397518 () Bool)

(assert (=> d!397518 (= (inv!18441 (tag!2705 (rule!4204 t2!34))) (= (mod (str.len (value!79257 (tag!2705 (rule!4204 t2!34)))) 2) 0))))

(assert (=> b!1390070 d!397518))

(declare-fun d!397520 () Bool)

(declare-fun res!627802 () Bool)

(declare-fun e!888211 () Bool)

(assert (=> d!397520 (=> (not res!627802) (not e!888211))))

(assert (=> d!397520 (= res!627802 (semiInverseModEq!948 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (toValue!3730 (transformation!2443 (rule!4204 t2!34)))))))

(assert (=> d!397520 (= (inv!18445 (transformation!2443 (rule!4204 t2!34))) e!888211)))

(declare-fun b!1390586 () Bool)

(assert (=> b!1390586 (= e!888211 (equivClasses!907 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (toValue!3730 (transformation!2443 (rule!4204 t2!34)))))))

(assert (= (and d!397520 res!627802) b!1390586))

(declare-fun m!1565497 () Bool)

(assert (=> d!397520 m!1565497))

(declare-fun m!1565499 () Bool)

(assert (=> b!1390586 m!1565499))

(assert (=> b!1390070 d!397520))

(declare-fun d!397522 () Bool)

(declare-fun lt!462687 () Bool)

(assert (=> d!397522 (= lt!462687 (isEmpty!8550 (list!5477 (_2!7742 lt!462510))))))

(declare-fun isEmpty!8555 (Conc!4646) Bool)

(assert (=> d!397522 (= lt!462687 (isEmpty!8555 (c!228748 (_2!7742 lt!462510))))))

(assert (=> d!397522 (= (isEmpty!8547 (_2!7742 lt!462510)) lt!462687)))

(declare-fun bs!337389 () Bool)

(assert (= bs!337389 d!397522))

(declare-fun m!1565519 () Bool)

(assert (=> bs!337389 m!1565519))

(assert (=> bs!337389 m!1565519))

(declare-fun m!1565521 () Bool)

(assert (=> bs!337389 m!1565521))

(declare-fun m!1565523 () Bool)

(assert (=> bs!337389 m!1565523))

(assert (=> b!1390091 d!397522))

(declare-fun d!397530 () Bool)

(declare-fun lt!462688 () Bool)

(assert (=> d!397530 (= lt!462688 (isEmpty!8550 (list!5477 (_2!7742 lt!462515))))))

(assert (=> d!397530 (= lt!462688 (isEmpty!8555 (c!228748 (_2!7742 lt!462515))))))

(assert (=> d!397530 (= (isEmpty!8547 (_2!7742 lt!462515)) lt!462688)))

(declare-fun bs!337390 () Bool)

(assert (= bs!337390 d!397530))

(declare-fun m!1565525 () Bool)

(assert (=> bs!337390 m!1565525))

(assert (=> bs!337390 m!1565525))

(declare-fun m!1565527 () Bool)

(assert (=> bs!337390 m!1565527))

(declare-fun m!1565529 () Bool)

(assert (=> bs!337390 m!1565529))

(assert (=> b!1390071 d!397530))

(declare-fun b!1390639 () Bool)

(declare-fun e!888241 () Bool)

(assert (=> b!1390639 (= e!888241 (= (head!2543 lt!462520) (c!228749 lt!462518)))))

(declare-fun b!1390640 () Bool)

(declare-fun res!627826 () Bool)

(assert (=> b!1390640 (=> (not res!627826) (not e!888241))))

(declare-fun tail!2020 (List!14173) List!14173)

(assert (=> b!1390640 (= res!627826 (isEmpty!8550 (tail!2020 lt!462520)))))

(declare-fun d!397532 () Bool)

(declare-fun e!888242 () Bool)

(assert (=> d!397532 e!888242))

(declare-fun c!228873 () Bool)

(assert (=> d!397532 (= c!228873 ((_ is EmptyExpr!3757) lt!462518))))

(declare-fun lt!462698 () Bool)

(declare-fun e!888243 () Bool)

(assert (=> d!397532 (= lt!462698 e!888243)))

(declare-fun c!228871 () Bool)

(assert (=> d!397532 (= c!228871 (isEmpty!8550 lt!462520))))

(assert (=> d!397532 (validRegex!1639 lt!462518)))

(assert (=> d!397532 (= (matchR!1748 lt!462518 lt!462520) lt!462698)))

(declare-fun b!1390641 () Bool)

(declare-fun res!627828 () Bool)

(assert (=> b!1390641 (=> (not res!627828) (not e!888241))))

(declare-fun call!93017 () Bool)

(assert (=> b!1390641 (= res!627828 (not call!93017))))

(declare-fun b!1390642 () Bool)

(declare-fun e!888240 () Bool)

(assert (=> b!1390642 (= e!888242 e!888240)))

(declare-fun c!228872 () Bool)

(assert (=> b!1390642 (= c!228872 ((_ is EmptyLang!3757) lt!462518))))

(declare-fun b!1390643 () Bool)

(assert (=> b!1390643 (= e!888243 (nullable!1219 lt!462518))))

(declare-fun b!1390644 () Bool)

(declare-fun res!627825 () Bool)

(declare-fun e!888237 () Bool)

(assert (=> b!1390644 (=> res!627825 e!888237)))

(assert (=> b!1390644 (= res!627825 (not ((_ is ElementMatch!3757) lt!462518)))))

(assert (=> b!1390644 (= e!888240 e!888237)))

(declare-fun b!1390645 () Bool)

(declare-fun res!627827 () Bool)

(declare-fun e!888238 () Bool)

(assert (=> b!1390645 (=> res!627827 e!888238)))

(assert (=> b!1390645 (= res!627827 (not (isEmpty!8550 (tail!2020 lt!462520))))))

(declare-fun b!1390646 () Bool)

(declare-fun e!888239 () Bool)

(assert (=> b!1390646 (= e!888239 e!888238)))

(declare-fun res!627824 () Bool)

(assert (=> b!1390646 (=> res!627824 e!888238)))

(assert (=> b!1390646 (= res!627824 call!93017)))

(declare-fun b!1390647 () Bool)

(declare-fun res!627830 () Bool)

(assert (=> b!1390647 (=> res!627830 e!888237)))

(assert (=> b!1390647 (= res!627830 e!888241)))

(declare-fun res!627829 () Bool)

(assert (=> b!1390647 (=> (not res!627829) (not e!888241))))

(assert (=> b!1390647 (= res!627829 lt!462698)))

(declare-fun b!1390648 () Bool)

(assert (=> b!1390648 (= e!888240 (not lt!462698))))

(declare-fun bm!93012 () Bool)

(assert (=> bm!93012 (= call!93017 (isEmpty!8550 lt!462520))))

(declare-fun b!1390649 () Bool)

(assert (=> b!1390649 (= e!888242 (= lt!462698 call!93017))))

(declare-fun b!1390650 () Bool)

(assert (=> b!1390650 (= e!888238 (not (= (head!2543 lt!462520) (c!228749 lt!462518))))))

(declare-fun b!1390651 () Bool)

(assert (=> b!1390651 (= e!888237 e!888239)))

(declare-fun res!627823 () Bool)

(assert (=> b!1390651 (=> (not res!627823) (not e!888239))))

(assert (=> b!1390651 (= res!627823 (not lt!462698))))

(declare-fun b!1390652 () Bool)

(declare-fun derivativeStep!977 (Regex!3757 C!7804) Regex!3757)

(assert (=> b!1390652 (= e!888243 (matchR!1748 (derivativeStep!977 lt!462518 (head!2543 lt!462520)) (tail!2020 lt!462520)))))

(assert (= (and d!397532 c!228871) b!1390643))

(assert (= (and d!397532 (not c!228871)) b!1390652))

(assert (= (and d!397532 c!228873) b!1390649))

(assert (= (and d!397532 (not c!228873)) b!1390642))

(assert (= (and b!1390642 c!228872) b!1390648))

(assert (= (and b!1390642 (not c!228872)) b!1390644))

(assert (= (and b!1390644 (not res!627825)) b!1390647))

(assert (= (and b!1390647 res!627829) b!1390641))

(assert (= (and b!1390641 res!627828) b!1390640))

(assert (= (and b!1390640 res!627826) b!1390639))

(assert (= (and b!1390647 (not res!627830)) b!1390651))

(assert (= (and b!1390651 res!627823) b!1390646))

(assert (= (and b!1390646 (not res!627824)) b!1390645))

(assert (= (and b!1390645 (not res!627827)) b!1390650))

(assert (= (or b!1390649 b!1390641 b!1390646) bm!93012))

(declare-fun m!1565559 () Bool)

(assert (=> d!397532 m!1565559))

(declare-fun m!1565561 () Bool)

(assert (=> d!397532 m!1565561))

(assert (=> bm!93012 m!1565559))

(declare-fun m!1565563 () Bool)

(assert (=> b!1390640 m!1565563))

(assert (=> b!1390640 m!1565563))

(declare-fun m!1565565 () Bool)

(assert (=> b!1390640 m!1565565))

(declare-fun m!1565567 () Bool)

(assert (=> b!1390652 m!1565567))

(assert (=> b!1390652 m!1565567))

(declare-fun m!1565569 () Bool)

(assert (=> b!1390652 m!1565569))

(assert (=> b!1390652 m!1565563))

(assert (=> b!1390652 m!1565569))

(assert (=> b!1390652 m!1565563))

(declare-fun m!1565571 () Bool)

(assert (=> b!1390652 m!1565571))

(assert (=> b!1390650 m!1565567))

(assert (=> b!1390645 m!1565563))

(assert (=> b!1390645 m!1565563))

(assert (=> b!1390645 m!1565565))

(assert (=> b!1390639 m!1565567))

(declare-fun m!1565573 () Bool)

(assert (=> b!1390643 m!1565573))

(assert (=> b!1390072 d!397532))

(declare-fun d!397546 () Bool)

(declare-fun c!228879 () Bool)

(assert (=> d!397546 (= c!228879 ((_ is IntegerValue!7599) (value!79258 t1!34)))))

(declare-fun e!888257 () Bool)

(assert (=> d!397546 (= (inv!21 (value!79258 t1!34)) e!888257)))

(declare-fun b!1390669 () Bool)

(declare-fun res!627839 () Bool)

(declare-fun e!888256 () Bool)

(assert (=> b!1390669 (=> res!627839 e!888256)))

(assert (=> b!1390669 (= res!627839 (not ((_ is IntegerValue!7601) (value!79258 t1!34))))))

(declare-fun e!888258 () Bool)

(assert (=> b!1390669 (= e!888258 e!888256)))

(declare-fun b!1390670 () Bool)

(declare-fun inv!16 (TokenValue!2533) Bool)

(assert (=> b!1390670 (= e!888257 (inv!16 (value!79258 t1!34)))))

(declare-fun b!1390671 () Bool)

(assert (=> b!1390671 (= e!888257 e!888258)))

(declare-fun c!228878 () Bool)

(assert (=> b!1390671 (= c!228878 ((_ is IntegerValue!7600) (value!79258 t1!34)))))

(declare-fun b!1390672 () Bool)

(declare-fun inv!15 (TokenValue!2533) Bool)

(assert (=> b!1390672 (= e!888256 (inv!15 (value!79258 t1!34)))))

(declare-fun b!1390673 () Bool)

(declare-fun inv!17 (TokenValue!2533) Bool)

(assert (=> b!1390673 (= e!888258 (inv!17 (value!79258 t1!34)))))

(assert (= (and d!397546 c!228879) b!1390670))

(assert (= (and d!397546 (not c!228879)) b!1390671))

(assert (= (and b!1390671 c!228878) b!1390673))

(assert (= (and b!1390671 (not c!228878)) b!1390669))

(assert (= (and b!1390669 (not res!627839)) b!1390672))

(declare-fun m!1565581 () Bool)

(assert (=> b!1390670 m!1565581))

(declare-fun m!1565583 () Bool)

(assert (=> b!1390672 m!1565583))

(declare-fun m!1565585 () Bool)

(assert (=> b!1390673 m!1565585))

(assert (=> b!1390093 d!397546))

(declare-fun d!397550 () Bool)

(declare-fun lt!462702 () Bool)

(assert (=> d!397550 (= lt!462702 (select (content!2079 lt!462520) lt!462536))))

(declare-fun e!888259 () Bool)

(assert (=> d!397550 (= lt!462702 e!888259)))

(declare-fun res!627840 () Bool)

(assert (=> d!397550 (=> (not res!627840) (not e!888259))))

(assert (=> d!397550 (= res!627840 ((_ is Cons!14107) lt!462520))))

(assert (=> d!397550 (= (contains!2710 lt!462520 lt!462536) lt!462702)))

(declare-fun b!1390674 () Bool)

(declare-fun e!888260 () Bool)

(assert (=> b!1390674 (= e!888259 e!888260)))

(declare-fun res!627841 () Bool)

(assert (=> b!1390674 (=> res!627841 e!888260)))

(assert (=> b!1390674 (= res!627841 (= (h!19508 lt!462520) lt!462536))))

(declare-fun b!1390675 () Bool)

(assert (=> b!1390675 (= e!888260 (contains!2710 (t!122412 lt!462520) lt!462536))))

(assert (= (and d!397550 res!627840) b!1390674))

(assert (= (and b!1390674 (not res!627841)) b!1390675))

(declare-fun m!1565587 () Bool)

(assert (=> d!397550 m!1565587))

(declare-fun m!1565589 () Bool)

(assert (=> d!397550 m!1565589))

(declare-fun m!1565591 () Bool)

(assert (=> b!1390675 m!1565591))

(assert (=> b!1390094 d!397550))

(declare-fun d!397552 () Bool)

(declare-fun e!888263 () Bool)

(assert (=> d!397552 e!888263))

(declare-fun res!627846 () Bool)

(assert (=> d!397552 (=> res!627846 e!888263)))

(declare-fun lt!462705 () Option!2704)

(assert (=> d!397552 (= res!627846 (isEmpty!8554 lt!462705))))

(declare-fun e!888261 () Option!2704)

(assert (=> d!397552 (= lt!462705 e!888261)))

(declare-fun c!228880 () Bool)

(assert (=> d!397552 (= c!228880 (and ((_ is Cons!14108) rules!2550) ((_ is Nil!14108) (t!122413 rules!2550))))))

(declare-fun lt!462704 () Unit!20367)

(declare-fun lt!462703 () Unit!20367)

(assert (=> d!397552 (= lt!462704 lt!462703)))

(assert (=> d!397552 (isPrefix!1145 lt!462537 lt!462537)))

(assert (=> d!397552 (= lt!462703 (lemmaIsPrefixRefl!804 lt!462537 lt!462537))))

(assert (=> d!397552 (rulesValidInductive!787 thiss!19762 rules!2550)))

(assert (=> d!397552 (= (maxPrefix!1112 thiss!19762 rules!2550 lt!462537) lt!462705)))

(declare-fun b!1390676 () Bool)

(declare-fun e!888262 () Bool)

(assert (=> b!1390676 (= e!888262 (contains!2709 rules!2550 (rule!4204 (_1!7741 (get!4379 lt!462705)))))))

(declare-fun b!1390677 () Bool)

(declare-fun res!627842 () Bool)

(assert (=> b!1390677 (=> (not res!627842) (not e!888262))))

(assert (=> b!1390677 (= res!627842 (= (++!3664 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705)))) (_2!7741 (get!4379 lt!462705))) lt!462537))))

(declare-fun b!1390678 () Bool)

(declare-fun res!627844 () Bool)

(assert (=> b!1390678 (=> (not res!627844) (not e!888262))))

(assert (=> b!1390678 (= res!627844 (= (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705)))) (originalCharacters!3305 (_1!7741 (get!4379 lt!462705)))))))

(declare-fun call!93018 () Option!2704)

(declare-fun bm!93013 () Bool)

(assert (=> bm!93013 (= call!93018 (maxPrefixOneRule!630 thiss!19762 (h!19509 rules!2550) lt!462537))))

(declare-fun b!1390679 () Bool)

(declare-fun res!627845 () Bool)

(assert (=> b!1390679 (=> (not res!627845) (not e!888262))))

(assert (=> b!1390679 (= res!627845 (matchR!1748 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))) (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705))))))))

(declare-fun b!1390680 () Bool)

(assert (=> b!1390680 (= e!888261 call!93018)))

(declare-fun b!1390681 () Bool)

(declare-fun res!627848 () Bool)

(assert (=> b!1390681 (=> (not res!627848) (not e!888262))))

(assert (=> b!1390681 (= res!627848 (< (size!11605 (_2!7741 (get!4379 lt!462705))) (size!11605 lt!462537)))))

(declare-fun b!1390682 () Bool)

(declare-fun res!627847 () Bool)

(assert (=> b!1390682 (=> (not res!627847) (not e!888262))))

(assert (=> b!1390682 (= res!627847 (= (value!79258 (_1!7741 (get!4379 lt!462705))) (apply!3551 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))) (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!462705)))))))))

(declare-fun b!1390683 () Bool)

(assert (=> b!1390683 (= e!888263 e!888262)))

(declare-fun res!627843 () Bool)

(assert (=> b!1390683 (=> (not res!627843) (not e!888262))))

(assert (=> b!1390683 (= res!627843 (isDefined!2232 lt!462705))))

(declare-fun b!1390684 () Bool)

(declare-fun lt!462707 () Option!2704)

(declare-fun lt!462706 () Option!2704)

(assert (=> b!1390684 (= e!888261 (ite (and ((_ is None!2703) lt!462707) ((_ is None!2703) lt!462706)) None!2703 (ite ((_ is None!2703) lt!462706) lt!462707 (ite ((_ is None!2703) lt!462707) lt!462706 (ite (>= (size!11595 (_1!7741 (v!21586 lt!462707))) (size!11595 (_1!7741 (v!21586 lt!462706)))) lt!462707 lt!462706)))))))

(assert (=> b!1390684 (= lt!462707 call!93018)))

(assert (=> b!1390684 (= lt!462706 (maxPrefix!1112 thiss!19762 (t!122413 rules!2550) lt!462537))))

(assert (= (and d!397552 c!228880) b!1390680))

(assert (= (and d!397552 (not c!228880)) b!1390684))

(assert (= (or b!1390680 b!1390684) bm!93013))

(assert (= (and d!397552 (not res!627846)) b!1390683))

(assert (= (and b!1390683 res!627843) b!1390678))

(assert (= (and b!1390678 res!627844) b!1390681))

(assert (= (and b!1390681 res!627848) b!1390677))

(assert (= (and b!1390677 res!627842) b!1390682))

(assert (= (and b!1390682 res!627847) b!1390679))

(assert (= (and b!1390679 res!627845) b!1390676))

(declare-fun m!1565593 () Bool)

(assert (=> b!1390684 m!1565593))

(declare-fun m!1565595 () Bool)

(assert (=> b!1390682 m!1565595))

(declare-fun m!1565597 () Bool)

(assert (=> b!1390682 m!1565597))

(assert (=> b!1390682 m!1565597))

(declare-fun m!1565599 () Bool)

(assert (=> b!1390682 m!1565599))

(assert (=> b!1390678 m!1565595))

(declare-fun m!1565601 () Bool)

(assert (=> b!1390678 m!1565601))

(assert (=> b!1390678 m!1565601))

(declare-fun m!1565603 () Bool)

(assert (=> b!1390678 m!1565603))

(declare-fun m!1565605 () Bool)

(assert (=> bm!93013 m!1565605))

(assert (=> b!1390676 m!1565595))

(declare-fun m!1565607 () Bool)

(assert (=> b!1390676 m!1565607))

(declare-fun m!1565609 () Bool)

(assert (=> d!397552 m!1565609))

(declare-fun m!1565611 () Bool)

(assert (=> d!397552 m!1565611))

(declare-fun m!1565613 () Bool)

(assert (=> d!397552 m!1565613))

(assert (=> d!397552 m!1565311))

(assert (=> b!1390681 m!1565595))

(declare-fun m!1565615 () Bool)

(assert (=> b!1390681 m!1565615))

(declare-fun m!1565617 () Bool)

(assert (=> b!1390681 m!1565617))

(assert (=> b!1390679 m!1565595))

(assert (=> b!1390679 m!1565601))

(assert (=> b!1390679 m!1565601))

(assert (=> b!1390679 m!1565603))

(assert (=> b!1390679 m!1565603))

(declare-fun m!1565619 () Bool)

(assert (=> b!1390679 m!1565619))

(declare-fun m!1565621 () Bool)

(assert (=> b!1390683 m!1565621))

(assert (=> b!1390677 m!1565595))

(assert (=> b!1390677 m!1565601))

(assert (=> b!1390677 m!1565601))

(assert (=> b!1390677 m!1565603))

(assert (=> b!1390677 m!1565603))

(declare-fun m!1565623 () Bool)

(assert (=> b!1390677 m!1565623))

(assert (=> b!1390052 d!397552))

(declare-fun d!397554 () Bool)

(assert (=> d!397554 (= (list!5477 lt!462522) (list!5481 (c!228748 lt!462522)))))

(declare-fun bs!337400 () Bool)

(assert (= bs!337400 d!397554))

(declare-fun m!1565625 () Bool)

(assert (=> bs!337400 m!1565625))

(assert (=> b!1390052 d!397554))

(declare-fun d!397556 () Bool)

(declare-fun lt!462712 () Bool)

(assert (=> d!397556 (= lt!462712 (select (content!2079 lt!462527) lt!462529))))

(declare-fun e!888272 () Bool)

(assert (=> d!397556 (= lt!462712 e!888272)))

(declare-fun res!627853 () Bool)

(assert (=> d!397556 (=> (not res!627853) (not e!888272))))

(assert (=> d!397556 (= res!627853 ((_ is Cons!14107) lt!462527))))

(assert (=> d!397556 (= (contains!2710 lt!462527 lt!462529) lt!462712)))

(declare-fun b!1390697 () Bool)

(declare-fun e!888273 () Bool)

(assert (=> b!1390697 (= e!888272 e!888273)))

(declare-fun res!627854 () Bool)

(assert (=> b!1390697 (=> res!627854 e!888273)))

(assert (=> b!1390697 (= res!627854 (= (h!19508 lt!462527) lt!462529))))

(declare-fun b!1390698 () Bool)

(assert (=> b!1390698 (= e!888273 (contains!2710 (t!122412 lt!462527) lt!462529))))

(assert (= (and d!397556 res!627853) b!1390697))

(assert (= (and b!1390697 (not res!627854)) b!1390698))

(assert (=> d!397556 m!1565171))

(declare-fun m!1565627 () Bool)

(assert (=> d!397556 m!1565627))

(declare-fun m!1565629 () Bool)

(assert (=> b!1390698 m!1565629))

(assert (=> b!1390074 d!397556))

(declare-fun d!397558 () Bool)

(declare-fun choose!8550 (Int) Bool)

(assert (=> d!397558 (= (Exists!907 lambda!60109) (choose!8550 lambda!60109))))

(declare-fun bs!337401 () Bool)

(assert (= bs!337401 d!397558))

(declare-fun m!1565631 () Bool)

(assert (=> bs!337401 m!1565631))

(assert (=> b!1390096 d!397558))

(declare-fun bs!337402 () Bool)

(declare-fun d!397560 () Bool)

(assert (= bs!337402 (and d!397560 b!1390096)))

(declare-fun lambda!60151 () Int)

(assert (=> bs!337402 (= lambda!60151 lambda!60109)))

(assert (=> d!397560 true))

(assert (=> d!397560 true))

(assert (=> d!397560 (Exists!907 lambda!60151)))

(declare-fun lt!462718 () Unit!20367)

(declare-fun choose!8551 (Regex!3757 List!14173) Unit!20367)

(assert (=> d!397560 (= lt!462718 (choose!8551 lt!462518 lt!462523))))

(assert (=> d!397560 (validRegex!1639 lt!462518)))

(assert (=> d!397560 (= (lemmaPrefixMatchThenExistsStringThatMatches!225 lt!462518 lt!462523) lt!462718)))

(declare-fun bs!337403 () Bool)

(assert (= bs!337403 d!397560))

(declare-fun m!1565657 () Bool)

(assert (=> bs!337403 m!1565657))

(declare-fun m!1565659 () Bool)

(assert (=> bs!337403 m!1565659))

(assert (=> bs!337403 m!1565561))

(assert (=> b!1390096 d!397560))

(declare-fun b!1390733 () Bool)

(declare-fun e!888297 () Rule!4686)

(assert (=> b!1390733 (= e!888297 (h!19509 rules!2550))))

(declare-fun b!1390734 () Bool)

(declare-fun lt!462723 () Unit!20367)

(declare-fun Unit!20373 () Unit!20367)

(assert (=> b!1390734 (= lt!462723 Unit!20373)))

(assert (=> b!1390734 false))

(declare-fun e!888296 () Rule!4686)

(declare-fun head!2546 (List!14174) Rule!4686)

(assert (=> b!1390734 (= e!888296 (head!2546 rules!2550))))

(declare-fun d!397566 () Bool)

(declare-fun e!888295 () Bool)

(assert (=> d!397566 e!888295))

(declare-fun res!627872 () Bool)

(assert (=> d!397566 (=> (not res!627872) (not e!888295))))

(declare-fun lt!462724 () Rule!4686)

(declare-fun dynLambda!6490 (Int Rule!4686) Bool)

(assert (=> d!397566 (= res!627872 (dynLambda!6490 lambda!60112 lt!462724))))

(assert (=> d!397566 (= lt!462724 e!888297)))

(declare-fun c!228895 () Bool)

(declare-fun e!888298 () Bool)

(assert (=> d!397566 (= c!228895 e!888298)))

(declare-fun res!627871 () Bool)

(assert (=> d!397566 (=> (not res!627871) (not e!888298))))

(assert (=> d!397566 (= res!627871 ((_ is Cons!14108) rules!2550))))

(assert (=> d!397566 (exists!530 rules!2550 lambda!60112)))

(assert (=> d!397566 (= (getWitness!418 rules!2550 lambda!60112) lt!462724)))

(declare-fun b!1390735 () Bool)

(assert (=> b!1390735 (= e!888298 (dynLambda!6490 lambda!60112 (h!19509 rules!2550)))))

(declare-fun b!1390736 () Bool)

(assert (=> b!1390736 (= e!888296 (getWitness!418 (t!122413 rules!2550) lambda!60112))))

(declare-fun b!1390737 () Bool)

(assert (=> b!1390737 (= e!888297 e!888296)))

(declare-fun c!228894 () Bool)

(assert (=> b!1390737 (= c!228894 ((_ is Cons!14108) rules!2550))))

(declare-fun b!1390738 () Bool)

(assert (=> b!1390738 (= e!888295 (contains!2709 rules!2550 lt!462724))))

(assert (= (and d!397566 res!627871) b!1390735))

(assert (= (and d!397566 c!228895) b!1390733))

(assert (= (and d!397566 (not c!228895)) b!1390737))

(assert (= (and b!1390737 c!228894) b!1390736))

(assert (= (and b!1390737 (not c!228894)) b!1390734))

(assert (= (and d!397566 res!627872) b!1390738))

(declare-fun b_lambda!43283 () Bool)

(assert (=> (not b_lambda!43283) (not d!397566)))

(declare-fun b_lambda!43285 () Bool)

(assert (=> (not b_lambda!43285) (not b!1390735)))

(declare-fun m!1565661 () Bool)

(assert (=> d!397566 m!1565661))

(assert (=> d!397566 m!1564901))

(declare-fun m!1565663 () Bool)

(assert (=> b!1390734 m!1565663))

(declare-fun m!1565665 () Bool)

(assert (=> b!1390738 m!1565665))

(declare-fun m!1565667 () Bool)

(assert (=> b!1390735 m!1565667))

(declare-fun m!1565669 () Bool)

(assert (=> b!1390736 m!1565669))

(assert (=> b!1390053 d!397566))

(declare-fun d!397568 () Bool)

(declare-fun list!5482 (Conc!4647) List!14175)

(assert (=> d!397568 (= (list!5478 (_1!7742 lt!462515)) (list!5482 (c!228750 (_1!7742 lt!462515))))))

(declare-fun bs!337404 () Bool)

(assert (= bs!337404 d!397568))

(declare-fun m!1565671 () Bool)

(assert (=> bs!337404 m!1565671))

(assert (=> b!1390053 d!397568))

(declare-fun b!1390830 () Bool)

(declare-fun e!888345 () Bool)

(declare-fun lt!462751 () tuple2!13712)

(declare-fun isEmpty!8556 (BalanceConc!9234) Bool)

(assert (=> b!1390830 (= e!888345 (not (isEmpty!8556 (_1!7742 lt!462751))))))

(declare-fun b!1390831 () Bool)

(declare-fun res!627914 () Bool)

(declare-fun e!888346 () Bool)

(assert (=> b!1390831 (=> (not res!627914) (not e!888346))))

(assert (=> b!1390831 (= res!627914 (= (list!5478 (_1!7742 lt!462751)) (_1!7743 (lexList!652 thiss!19762 rules!2550 (list!5477 lt!462535)))))))

(declare-fun b!1390833 () Bool)

(assert (=> b!1390833 (= e!888346 (= (list!5477 (_2!7742 lt!462751)) (_2!7743 (lexList!652 thiss!19762 rules!2550 (list!5477 lt!462535)))))))

(declare-fun b!1390834 () Bool)

(declare-fun e!888344 () Bool)

(assert (=> b!1390834 (= e!888344 e!888345)))

(declare-fun res!627913 () Bool)

(assert (=> b!1390834 (= res!627913 (< (size!11596 (_2!7742 lt!462751)) (size!11596 lt!462535)))))

(assert (=> b!1390834 (=> (not res!627913) (not e!888345))))

(declare-fun b!1390832 () Bool)

(assert (=> b!1390832 (= e!888344 (= (_2!7742 lt!462751) lt!462535))))

(declare-fun d!397570 () Bool)

(assert (=> d!397570 e!888346))

(declare-fun res!627915 () Bool)

(assert (=> d!397570 (=> (not res!627915) (not e!888346))))

(assert (=> d!397570 (= res!627915 e!888344)))

(declare-fun c!228902 () Bool)

(assert (=> d!397570 (= c!228902 (> (size!11607 (_1!7742 lt!462751)) 0))))

(declare-fun lexTailRecV2!431 (LexerInterface!2138 List!14174 BalanceConc!9232 BalanceConc!9232 BalanceConc!9232 BalanceConc!9234) tuple2!13712)

(assert (=> d!397570 (= lt!462751 (lexTailRecV2!431 thiss!19762 rules!2550 lt!462535 (BalanceConc!9233 Empty!4646) lt!462535 (BalanceConc!9235 Empty!4647)))))

(assert (=> d!397570 (= (lex!963 thiss!19762 rules!2550 lt!462535) lt!462751)))

(assert (= (and d!397570 c!228902) b!1390834))

(assert (= (and d!397570 (not c!228902)) b!1390832))

(assert (= (and b!1390834 res!627913) b!1390830))

(assert (= (and d!397570 res!627915) b!1390831))

(assert (= (and b!1390831 res!627914) b!1390833))

(declare-fun m!1565785 () Bool)

(assert (=> b!1390830 m!1565785))

(declare-fun m!1565787 () Bool)

(assert (=> b!1390831 m!1565787))

(assert (=> b!1390831 m!1564943))

(assert (=> b!1390831 m!1564943))

(assert (=> b!1390831 m!1564945))

(declare-fun m!1565789 () Bool)

(assert (=> b!1390834 m!1565789))

(declare-fun m!1565791 () Bool)

(assert (=> b!1390834 m!1565791))

(declare-fun m!1565793 () Bool)

(assert (=> d!397570 m!1565793))

(declare-fun m!1565795 () Bool)

(assert (=> d!397570 m!1565795))

(declare-fun m!1565797 () Bool)

(assert (=> b!1390833 m!1565797))

(assert (=> b!1390833 m!1564943))

(assert (=> b!1390833 m!1564943))

(assert (=> b!1390833 m!1564945))

(assert (=> b!1390053 d!397570))

(declare-fun d!397606 () Bool)

(declare-fun lt!462754 () BalanceConc!9232)

(declare-fun printList!626 (LexerInterface!2138 List!14175) List!14173)

(assert (=> d!397606 (= (list!5477 lt!462754) (printList!626 thiss!19762 (list!5478 (singletonSeq!1092 t1!34))))))

(declare-fun printTailRec!608 (LexerInterface!2138 BalanceConc!9234 Int BalanceConc!9232) BalanceConc!9232)

(assert (=> d!397606 (= lt!462754 (printTailRec!608 thiss!19762 (singletonSeq!1092 t1!34) 0 (BalanceConc!9233 Empty!4646)))))

(assert (=> d!397606 (= (print!902 thiss!19762 (singletonSeq!1092 t1!34)) lt!462754)))

(declare-fun bs!337420 () Bool)

(assert (= bs!337420 d!397606))

(declare-fun m!1565799 () Bool)

(assert (=> bs!337420 m!1565799))

(assert (=> bs!337420 m!1564881))

(assert (=> bs!337420 m!1565441))

(assert (=> bs!337420 m!1565441))

(declare-fun m!1565801 () Bool)

(assert (=> bs!337420 m!1565801))

(assert (=> bs!337420 m!1564881))

(declare-fun m!1565803 () Bool)

(assert (=> bs!337420 m!1565803))

(assert (=> b!1390053 d!397606))

(declare-fun d!397608 () Bool)

(declare-fun e!888349 () Bool)

(assert (=> d!397608 e!888349))

(declare-fun res!627918 () Bool)

(assert (=> d!397608 (=> (not res!627918) (not e!888349))))

(declare-fun lt!462757 () BalanceConc!9234)

(assert (=> d!397608 (= res!627918 (= (list!5478 lt!462757) (Cons!14109 t1!34 Nil!14109)))))

(declare-fun singleton!480 (Token!4548) BalanceConc!9234)

(assert (=> d!397608 (= lt!462757 (singleton!480 t1!34))))

(assert (=> d!397608 (= (singletonSeq!1092 t1!34) lt!462757)))

(declare-fun b!1390837 () Bool)

(declare-fun isBalanced!1374 (Conc!4647) Bool)

(assert (=> b!1390837 (= e!888349 (isBalanced!1374 (c!228750 lt!462757)))))

(assert (= (and d!397608 res!627918) b!1390837))

(declare-fun m!1565805 () Bool)

(assert (=> d!397608 m!1565805))

(declare-fun m!1565807 () Bool)

(assert (=> d!397608 m!1565807))

(declare-fun m!1565809 () Bool)

(assert (=> b!1390837 m!1565809))

(assert (=> b!1390053 d!397608))

(declare-fun d!397610 () Bool)

(declare-fun lt!462760 () Bool)

(declare-fun content!2080 (List!14174) (InoxSet Rule!4686))

(assert (=> d!397610 (= lt!462760 (select (content!2080 rules!2550) lt!462521))))

(declare-fun e!888354 () Bool)

(assert (=> d!397610 (= lt!462760 e!888354)))

(declare-fun res!627923 () Bool)

(assert (=> d!397610 (=> (not res!627923) (not e!888354))))

(assert (=> d!397610 (= res!627923 ((_ is Cons!14108) rules!2550))))

(assert (=> d!397610 (= (contains!2709 rules!2550 lt!462521) lt!462760)))

(declare-fun b!1390842 () Bool)

(declare-fun e!888355 () Bool)

(assert (=> b!1390842 (= e!888354 e!888355)))

(declare-fun res!627924 () Bool)

(assert (=> b!1390842 (=> res!627924 e!888355)))

(assert (=> b!1390842 (= res!627924 (= (h!19509 rules!2550) lt!462521))))

(declare-fun b!1390843 () Bool)

(assert (=> b!1390843 (= e!888355 (contains!2709 (t!122413 rules!2550) lt!462521))))

(assert (= (and d!397610 res!627923) b!1390842))

(assert (= (and b!1390842 (not res!627924)) b!1390843))

(declare-fun m!1565811 () Bool)

(assert (=> d!397610 m!1565811))

(declare-fun m!1565813 () Bool)

(assert (=> d!397610 m!1565813))

(declare-fun m!1565815 () Bool)

(assert (=> b!1390843 m!1565815))

(assert (=> b!1390054 d!397610))

(declare-fun b!1390844 () Bool)

(declare-fun e!888360 () Bool)

(assert (=> b!1390844 (= e!888360 (= (head!2543 lt!462537) (c!228749 (regex!2443 (rule!4204 t2!34)))))))

(declare-fun b!1390845 () Bool)

(declare-fun res!627928 () Bool)

(assert (=> b!1390845 (=> (not res!627928) (not e!888360))))

(assert (=> b!1390845 (= res!627928 (isEmpty!8550 (tail!2020 lt!462537)))))

(declare-fun d!397612 () Bool)

(declare-fun e!888361 () Bool)

(assert (=> d!397612 e!888361))

(declare-fun c!228905 () Bool)

(assert (=> d!397612 (= c!228905 ((_ is EmptyExpr!3757) (regex!2443 (rule!4204 t2!34))))))

(declare-fun lt!462761 () Bool)

(declare-fun e!888362 () Bool)

(assert (=> d!397612 (= lt!462761 e!888362)))

(declare-fun c!228903 () Bool)

(assert (=> d!397612 (= c!228903 (isEmpty!8550 lt!462537))))

(assert (=> d!397612 (validRegex!1639 (regex!2443 (rule!4204 t2!34)))))

(assert (=> d!397612 (= (matchR!1748 (regex!2443 (rule!4204 t2!34)) lt!462537) lt!462761)))

(declare-fun b!1390846 () Bool)

(declare-fun res!627930 () Bool)

(assert (=> b!1390846 (=> (not res!627930) (not e!888360))))

(declare-fun call!93024 () Bool)

(assert (=> b!1390846 (= res!627930 (not call!93024))))

(declare-fun b!1390847 () Bool)

(declare-fun e!888359 () Bool)

(assert (=> b!1390847 (= e!888361 e!888359)))

(declare-fun c!228904 () Bool)

(assert (=> b!1390847 (= c!228904 ((_ is EmptyLang!3757) (regex!2443 (rule!4204 t2!34))))))

(declare-fun b!1390848 () Bool)

(assert (=> b!1390848 (= e!888362 (nullable!1219 (regex!2443 (rule!4204 t2!34))))))

(declare-fun b!1390849 () Bool)

(declare-fun res!627927 () Bool)

(declare-fun e!888356 () Bool)

(assert (=> b!1390849 (=> res!627927 e!888356)))

(assert (=> b!1390849 (= res!627927 (not ((_ is ElementMatch!3757) (regex!2443 (rule!4204 t2!34)))))))

(assert (=> b!1390849 (= e!888359 e!888356)))

(declare-fun b!1390850 () Bool)

(declare-fun res!627929 () Bool)

(declare-fun e!888357 () Bool)

(assert (=> b!1390850 (=> res!627929 e!888357)))

(assert (=> b!1390850 (= res!627929 (not (isEmpty!8550 (tail!2020 lt!462537))))))

(declare-fun b!1390851 () Bool)

(declare-fun e!888358 () Bool)

(assert (=> b!1390851 (= e!888358 e!888357)))

(declare-fun res!627926 () Bool)

(assert (=> b!1390851 (=> res!627926 e!888357)))

(assert (=> b!1390851 (= res!627926 call!93024)))

(declare-fun b!1390852 () Bool)

(declare-fun res!627932 () Bool)

(assert (=> b!1390852 (=> res!627932 e!888356)))

(assert (=> b!1390852 (= res!627932 e!888360)))

(declare-fun res!627931 () Bool)

(assert (=> b!1390852 (=> (not res!627931) (not e!888360))))

(assert (=> b!1390852 (= res!627931 lt!462761)))

(declare-fun b!1390853 () Bool)

(assert (=> b!1390853 (= e!888359 (not lt!462761))))

(declare-fun bm!93019 () Bool)

(assert (=> bm!93019 (= call!93024 (isEmpty!8550 lt!462537))))

(declare-fun b!1390854 () Bool)

(assert (=> b!1390854 (= e!888361 (= lt!462761 call!93024))))

(declare-fun b!1390855 () Bool)

(assert (=> b!1390855 (= e!888357 (not (= (head!2543 lt!462537) (c!228749 (regex!2443 (rule!4204 t2!34))))))))

(declare-fun b!1390856 () Bool)

(assert (=> b!1390856 (= e!888356 e!888358)))

(declare-fun res!627925 () Bool)

(assert (=> b!1390856 (=> (not res!627925) (not e!888358))))

(assert (=> b!1390856 (= res!627925 (not lt!462761))))

(declare-fun b!1390857 () Bool)

(assert (=> b!1390857 (= e!888362 (matchR!1748 (derivativeStep!977 (regex!2443 (rule!4204 t2!34)) (head!2543 lt!462537)) (tail!2020 lt!462537)))))

(assert (= (and d!397612 c!228903) b!1390848))

(assert (= (and d!397612 (not c!228903)) b!1390857))

(assert (= (and d!397612 c!228905) b!1390854))

(assert (= (and d!397612 (not c!228905)) b!1390847))

(assert (= (and b!1390847 c!228904) b!1390853))

(assert (= (and b!1390847 (not c!228904)) b!1390849))

(assert (= (and b!1390849 (not res!627927)) b!1390852))

(assert (= (and b!1390852 res!627931) b!1390846))

(assert (= (and b!1390846 res!627930) b!1390845))

(assert (= (and b!1390845 res!627928) b!1390844))

(assert (= (and b!1390852 (not res!627932)) b!1390856))

(assert (= (and b!1390856 res!627925) b!1390851))

(assert (= (and b!1390851 (not res!627926)) b!1390850))

(assert (= (and b!1390850 (not res!627929)) b!1390855))

(assert (= (or b!1390854 b!1390846 b!1390851) bm!93019))

(declare-fun m!1565817 () Bool)

(assert (=> d!397612 m!1565817))

(assert (=> d!397612 m!1564905))

(assert (=> bm!93019 m!1565817))

(declare-fun m!1565819 () Bool)

(assert (=> b!1390845 m!1565819))

(assert (=> b!1390845 m!1565819))

(declare-fun m!1565821 () Bool)

(assert (=> b!1390845 m!1565821))

(assert (=> b!1390857 m!1564907))

(assert (=> b!1390857 m!1564907))

(declare-fun m!1565823 () Bool)

(assert (=> b!1390857 m!1565823))

(assert (=> b!1390857 m!1565819))

(assert (=> b!1390857 m!1565823))

(assert (=> b!1390857 m!1565819))

(declare-fun m!1565825 () Bool)

(assert (=> b!1390857 m!1565825))

(assert (=> b!1390855 m!1564907))

(assert (=> b!1390850 m!1565819))

(assert (=> b!1390850 m!1565819))

(assert (=> b!1390850 m!1565821))

(assert (=> b!1390844 m!1564907))

(declare-fun m!1565827 () Bool)

(assert (=> b!1390848 m!1565827))

(assert (=> b!1390075 d!397612))

(declare-fun d!397614 () Bool)

(declare-fun e!888368 () Bool)

(assert (=> d!397614 e!888368))

(declare-fun res!627938 () Bool)

(assert (=> d!397614 (=> (not res!627938) (not e!888368))))

(declare-fun lt!462764 () List!14173)

(assert (=> d!397614 (= res!627938 (= (content!2079 lt!462764) ((_ map or) (content!2079 lt!462523) (content!2079 (getSuffix!603 lt!462520 lt!462523)))))))

(declare-fun e!888367 () List!14173)

(assert (=> d!397614 (= lt!462764 e!888367)))

(declare-fun c!228908 () Bool)

(assert (=> d!397614 (= c!228908 ((_ is Nil!14107) lt!462523))))

(assert (=> d!397614 (= (++!3664 lt!462523 (getSuffix!603 lt!462520 lt!462523)) lt!462764)))

(declare-fun b!1390868 () Bool)

(declare-fun res!627937 () Bool)

(assert (=> b!1390868 (=> (not res!627937) (not e!888368))))

(assert (=> b!1390868 (= res!627937 (= (size!11605 lt!462764) (+ (size!11605 lt!462523) (size!11605 (getSuffix!603 lt!462520 lt!462523)))))))

(declare-fun b!1390867 () Bool)

(assert (=> b!1390867 (= e!888367 (Cons!14107 (h!19508 lt!462523) (++!3664 (t!122412 lt!462523) (getSuffix!603 lt!462520 lt!462523))))))

(declare-fun b!1390866 () Bool)

(assert (=> b!1390866 (= e!888367 (getSuffix!603 lt!462520 lt!462523))))

(declare-fun b!1390869 () Bool)

(assert (=> b!1390869 (= e!888368 (or (not (= (getSuffix!603 lt!462520 lt!462523) Nil!14107)) (= lt!462764 lt!462523)))))

(assert (= (and d!397614 c!228908) b!1390866))

(assert (= (and d!397614 (not c!228908)) b!1390867))

(assert (= (and d!397614 res!627938) b!1390868))

(assert (= (and b!1390868 res!627937) b!1390869))

(declare-fun m!1565829 () Bool)

(assert (=> d!397614 m!1565829))

(declare-fun m!1565831 () Bool)

(assert (=> d!397614 m!1565831))

(assert (=> d!397614 m!1564849))

(declare-fun m!1565833 () Bool)

(assert (=> d!397614 m!1565833))

(declare-fun m!1565835 () Bool)

(assert (=> b!1390868 m!1565835))

(declare-fun m!1565837 () Bool)

(assert (=> b!1390868 m!1565837))

(assert (=> b!1390868 m!1564849))

(declare-fun m!1565839 () Bool)

(assert (=> b!1390868 m!1565839))

(assert (=> b!1390867 m!1564849))

(declare-fun m!1565841 () Bool)

(assert (=> b!1390867 m!1565841))

(assert (=> b!1390076 d!397614))

(declare-fun d!397616 () Bool)

(declare-fun lt!462767 () List!14173)

(assert (=> d!397616 (= (++!3664 lt!462523 lt!462767) lt!462520)))

(declare-fun e!888371 () List!14173)

(assert (=> d!397616 (= lt!462767 e!888371)))

(declare-fun c!228911 () Bool)

(assert (=> d!397616 (= c!228911 ((_ is Cons!14107) lt!462523))))

(assert (=> d!397616 (>= (size!11605 lt!462520) (size!11605 lt!462523))))

(assert (=> d!397616 (= (getSuffix!603 lt!462520 lt!462523) lt!462767)))

(declare-fun b!1390874 () Bool)

(assert (=> b!1390874 (= e!888371 (getSuffix!603 (tail!2020 lt!462520) (t!122412 lt!462523)))))

(declare-fun b!1390875 () Bool)

(assert (=> b!1390875 (= e!888371 lt!462520)))

(assert (= (and d!397616 c!228911) b!1390874))

(assert (= (and d!397616 (not c!228911)) b!1390875))

(declare-fun m!1565843 () Bool)

(assert (=> d!397616 m!1565843))

(declare-fun m!1565845 () Bool)

(assert (=> d!397616 m!1565845))

(assert (=> d!397616 m!1565837))

(assert (=> b!1390874 m!1565563))

(assert (=> b!1390874 m!1565563))

(declare-fun m!1565847 () Bool)

(assert (=> b!1390874 m!1565847))

(assert (=> b!1390076 d!397616))

(declare-fun d!397618 () Bool)

(declare-fun lt!462770 () List!14173)

(declare-fun dynLambda!6494 (Int List!14173) Bool)

(assert (=> d!397618 (dynLambda!6494 lambda!60109 lt!462770)))

(declare-fun choose!8553 (Int) List!14173)

(assert (=> d!397618 (= lt!462770 (choose!8553 lambda!60109))))

(assert (=> d!397618 (Exists!907 lambda!60109)))

(assert (=> d!397618 (= (pickWitness!210 lambda!60109) lt!462770)))

(declare-fun b_lambda!43313 () Bool)

(assert (=> (not b_lambda!43313) (not d!397618)))

(declare-fun bs!337421 () Bool)

(assert (= bs!337421 d!397618))

(declare-fun m!1565849 () Bool)

(assert (=> bs!337421 m!1565849))

(declare-fun m!1565851 () Bool)

(assert (=> bs!337421 m!1565851))

(assert (=> bs!337421 m!1564923))

(assert (=> b!1390076 d!397618))

(declare-fun d!397620 () Bool)

(declare-fun lt!462771 () Bool)

(assert (=> d!397620 (= lt!462771 (select (content!2079 lt!462537) lt!462529))))

(declare-fun e!888372 () Bool)

(assert (=> d!397620 (= lt!462771 e!888372)))

(declare-fun res!627939 () Bool)

(assert (=> d!397620 (=> (not res!627939) (not e!888372))))

(assert (=> d!397620 (= res!627939 ((_ is Cons!14107) lt!462537))))

(assert (=> d!397620 (= (contains!2710 lt!462537 lt!462529) lt!462771)))

(declare-fun b!1390876 () Bool)

(declare-fun e!888373 () Bool)

(assert (=> b!1390876 (= e!888372 e!888373)))

(declare-fun res!627940 () Bool)

(assert (=> b!1390876 (=> res!627940 e!888373)))

(assert (=> b!1390876 (= res!627940 (= (h!19508 lt!462537) lt!462529))))

(declare-fun b!1390877 () Bool)

(assert (=> b!1390877 (= e!888373 (contains!2710 (t!122412 lt!462537) lt!462529))))

(assert (= (and d!397620 res!627939) b!1390876))

(assert (= (and b!1390876 (not res!627940)) b!1390877))

(declare-fun m!1565853 () Bool)

(assert (=> d!397620 m!1565853))

(declare-fun m!1565855 () Bool)

(assert (=> d!397620 m!1565855))

(declare-fun m!1565857 () Bool)

(assert (=> b!1390877 m!1565857))

(assert (=> b!1390098 d!397620))

(declare-fun d!397622 () Bool)

(assert (=> d!397622 (= (list!5478 (_1!7742 lt!462510)) (list!5482 (c!228750 (_1!7742 lt!462510))))))

(declare-fun bs!337422 () Bool)

(assert (= bs!337422 d!397622))

(declare-fun m!1565859 () Bool)

(assert (=> bs!337422 m!1565859))

(assert (=> b!1390055 d!397622))

(declare-fun b!1390878 () Bool)

(declare-fun e!888375 () Bool)

(declare-fun lt!462772 () tuple2!13712)

(assert (=> b!1390878 (= e!888375 (not (isEmpty!8556 (_1!7742 lt!462772))))))

(declare-fun b!1390879 () Bool)

(declare-fun res!627942 () Bool)

(declare-fun e!888376 () Bool)

(assert (=> b!1390879 (=> (not res!627942) (not e!888376))))

(assert (=> b!1390879 (= res!627942 (= (list!5478 (_1!7742 lt!462772)) (_1!7743 (lexList!652 thiss!19762 rules!2550 (list!5477 lt!462514)))))))

(declare-fun b!1390881 () Bool)

(assert (=> b!1390881 (= e!888376 (= (list!5477 (_2!7742 lt!462772)) (_2!7743 (lexList!652 thiss!19762 rules!2550 (list!5477 lt!462514)))))))

(declare-fun b!1390882 () Bool)

(declare-fun e!888374 () Bool)

(assert (=> b!1390882 (= e!888374 e!888375)))

(declare-fun res!627941 () Bool)

(assert (=> b!1390882 (= res!627941 (< (size!11596 (_2!7742 lt!462772)) (size!11596 lt!462514)))))

(assert (=> b!1390882 (=> (not res!627941) (not e!888375))))

(declare-fun b!1390880 () Bool)

(assert (=> b!1390880 (= e!888374 (= (_2!7742 lt!462772) lt!462514))))

(declare-fun d!397624 () Bool)

(assert (=> d!397624 e!888376))

(declare-fun res!627943 () Bool)

(assert (=> d!397624 (=> (not res!627943) (not e!888376))))

(assert (=> d!397624 (= res!627943 e!888374)))

(declare-fun c!228912 () Bool)

(assert (=> d!397624 (= c!228912 (> (size!11607 (_1!7742 lt!462772)) 0))))

(assert (=> d!397624 (= lt!462772 (lexTailRecV2!431 thiss!19762 rules!2550 lt!462514 (BalanceConc!9233 Empty!4646) lt!462514 (BalanceConc!9235 Empty!4647)))))

(assert (=> d!397624 (= (lex!963 thiss!19762 rules!2550 lt!462514) lt!462772)))

(assert (= (and d!397624 c!228912) b!1390882))

(assert (= (and d!397624 (not c!228912)) b!1390880))

(assert (= (and b!1390882 res!627941) b!1390878))

(assert (= (and d!397624 res!627943) b!1390879))

(assert (= (and b!1390879 res!627942) b!1390881))

(declare-fun m!1565861 () Bool)

(assert (=> b!1390878 m!1565861))

(declare-fun m!1565863 () Bool)

(assert (=> b!1390879 m!1565863))

(assert (=> b!1390879 m!1564835))

(assert (=> b!1390879 m!1564835))

(assert (=> b!1390879 m!1564837))

(declare-fun m!1565865 () Bool)

(assert (=> b!1390882 m!1565865))

(declare-fun m!1565867 () Bool)

(assert (=> b!1390882 m!1565867))

(declare-fun m!1565869 () Bool)

(assert (=> d!397624 m!1565869))

(declare-fun m!1565871 () Bool)

(assert (=> d!397624 m!1565871))

(declare-fun m!1565873 () Bool)

(assert (=> b!1390881 m!1565873))

(assert (=> b!1390881 m!1564835))

(assert (=> b!1390881 m!1564835))

(assert (=> b!1390881 m!1564837))

(assert (=> b!1390055 d!397624))

(declare-fun d!397626 () Bool)

(declare-fun lt!462773 () BalanceConc!9232)

(assert (=> d!397626 (= (list!5477 lt!462773) (printList!626 thiss!19762 (list!5478 (singletonSeq!1092 t2!34))))))

(assert (=> d!397626 (= lt!462773 (printTailRec!608 thiss!19762 (singletonSeq!1092 t2!34) 0 (BalanceConc!9233 Empty!4646)))))

(assert (=> d!397626 (= (print!902 thiss!19762 (singletonSeq!1092 t2!34)) lt!462773)))

(declare-fun bs!337423 () Bool)

(assert (= bs!337423 d!397626))

(declare-fun m!1565875 () Bool)

(assert (=> bs!337423 m!1565875))

(assert (=> bs!337423 m!1564873))

(declare-fun m!1565877 () Bool)

(assert (=> bs!337423 m!1565877))

(assert (=> bs!337423 m!1565877))

(declare-fun m!1565879 () Bool)

(assert (=> bs!337423 m!1565879))

(assert (=> bs!337423 m!1564873))

(declare-fun m!1565881 () Bool)

(assert (=> bs!337423 m!1565881))

(assert (=> b!1390055 d!397626))

(declare-fun d!397628 () Bool)

(declare-fun e!888377 () Bool)

(assert (=> d!397628 e!888377))

(declare-fun res!627944 () Bool)

(assert (=> d!397628 (=> (not res!627944) (not e!888377))))

(declare-fun lt!462774 () BalanceConc!9234)

(assert (=> d!397628 (= res!627944 (= (list!5478 lt!462774) (Cons!14109 t2!34 Nil!14109)))))

(assert (=> d!397628 (= lt!462774 (singleton!480 t2!34))))

(assert (=> d!397628 (= (singletonSeq!1092 t2!34) lt!462774)))

(declare-fun b!1390883 () Bool)

(assert (=> b!1390883 (= e!888377 (isBalanced!1374 (c!228750 lt!462774)))))

(assert (= (and d!397628 res!627944) b!1390883))

(declare-fun m!1565883 () Bool)

(assert (=> d!397628 m!1565883))

(declare-fun m!1565885 () Bool)

(assert (=> d!397628 m!1565885))

(declare-fun m!1565887 () Bool)

(assert (=> b!1390883 m!1565887))

(assert (=> b!1390055 d!397628))

(declare-fun d!397630 () Bool)

(declare-fun lt!462777 () Int)

(assert (=> d!397630 (= lt!462777 (size!11605 (list!5477 lt!462522)))))

(declare-fun size!11608 (Conc!4646) Int)

(assert (=> d!397630 (= lt!462777 (size!11608 (c!228748 lt!462522)))))

(assert (=> d!397630 (= (size!11596 lt!462522) lt!462777)))

(declare-fun bs!337424 () Bool)

(assert (= bs!337424 d!397630))

(assert (=> bs!337424 m!1564929))

(assert (=> bs!337424 m!1564929))

(declare-fun m!1565889 () Bool)

(assert (=> bs!337424 m!1565889))

(declare-fun m!1565891 () Bool)

(assert (=> bs!337424 m!1565891))

(assert (=> b!1390056 d!397630))

(declare-fun d!397632 () Bool)

(declare-fun lt!462780 () BalanceConc!9232)

(assert (=> d!397632 (= (list!5477 lt!462780) (originalCharacters!3305 t2!34))))

(assert (=> d!397632 (= lt!462780 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34)))))

(assert (=> d!397632 (= (charsOf!1415 t2!34) lt!462780)))

(declare-fun b_lambda!43315 () Bool)

(assert (=> (not b_lambda!43315) (not d!397632)))

(assert (=> d!397632 t!122435))

(declare-fun b_and!93175 () Bool)

(assert (= b_and!93159 (and (=> t!122435 result!88484) b_and!93175)))

(assert (=> d!397632 t!122437))

(declare-fun b_and!93177 () Bool)

(assert (= b_and!93161 (and (=> t!122437 result!88486) b_and!93177)))

(assert (=> d!397632 t!122439))

(declare-fun b_and!93179 () Bool)

(assert (= b_and!93163 (and (=> t!122439 result!88488) b_and!93179)))

(declare-fun m!1565893 () Bool)

(assert (=> d!397632 m!1565893))

(assert (=> d!397632 m!1565201))

(assert (=> b!1390056 d!397632))

(declare-fun b!1390884 () Bool)

(declare-fun e!888382 () Bool)

(assert (=> b!1390884 (= e!888382 (= (head!2543 lt!462532) (c!228749 (regex!2443 (rule!4204 t1!34)))))))

(declare-fun b!1390885 () Bool)

(declare-fun res!627948 () Bool)

(assert (=> b!1390885 (=> (not res!627948) (not e!888382))))

(assert (=> b!1390885 (= res!627948 (isEmpty!8550 (tail!2020 lt!462532)))))

(declare-fun d!397634 () Bool)

(declare-fun e!888383 () Bool)

(assert (=> d!397634 e!888383))

(declare-fun c!228915 () Bool)

(assert (=> d!397634 (= c!228915 ((_ is EmptyExpr!3757) (regex!2443 (rule!4204 t1!34))))))

(declare-fun lt!462781 () Bool)

(declare-fun e!888384 () Bool)

(assert (=> d!397634 (= lt!462781 e!888384)))

(declare-fun c!228913 () Bool)

(assert (=> d!397634 (= c!228913 (isEmpty!8550 lt!462532))))

(assert (=> d!397634 (validRegex!1639 (regex!2443 (rule!4204 t1!34)))))

(assert (=> d!397634 (= (matchR!1748 (regex!2443 (rule!4204 t1!34)) lt!462532) lt!462781)))

(declare-fun b!1390886 () Bool)

(declare-fun res!627950 () Bool)

(assert (=> b!1390886 (=> (not res!627950) (not e!888382))))

(declare-fun call!93025 () Bool)

(assert (=> b!1390886 (= res!627950 (not call!93025))))

(declare-fun b!1390887 () Bool)

(declare-fun e!888381 () Bool)

(assert (=> b!1390887 (= e!888383 e!888381)))

(declare-fun c!228914 () Bool)

(assert (=> b!1390887 (= c!228914 ((_ is EmptyLang!3757) (regex!2443 (rule!4204 t1!34))))))

(declare-fun b!1390888 () Bool)

(assert (=> b!1390888 (= e!888384 (nullable!1219 (regex!2443 (rule!4204 t1!34))))))

(declare-fun b!1390889 () Bool)

(declare-fun res!627947 () Bool)

(declare-fun e!888378 () Bool)

(assert (=> b!1390889 (=> res!627947 e!888378)))

(assert (=> b!1390889 (= res!627947 (not ((_ is ElementMatch!3757) (regex!2443 (rule!4204 t1!34)))))))

(assert (=> b!1390889 (= e!888381 e!888378)))

(declare-fun b!1390890 () Bool)

(declare-fun res!627949 () Bool)

(declare-fun e!888379 () Bool)

(assert (=> b!1390890 (=> res!627949 e!888379)))

(assert (=> b!1390890 (= res!627949 (not (isEmpty!8550 (tail!2020 lt!462532))))))

(declare-fun b!1390891 () Bool)

(declare-fun e!888380 () Bool)

(assert (=> b!1390891 (= e!888380 e!888379)))

(declare-fun res!627946 () Bool)

(assert (=> b!1390891 (=> res!627946 e!888379)))

(assert (=> b!1390891 (= res!627946 call!93025)))

(declare-fun b!1390892 () Bool)

(declare-fun res!627952 () Bool)

(assert (=> b!1390892 (=> res!627952 e!888378)))

(assert (=> b!1390892 (= res!627952 e!888382)))

(declare-fun res!627951 () Bool)

(assert (=> b!1390892 (=> (not res!627951) (not e!888382))))

(assert (=> b!1390892 (= res!627951 lt!462781)))

(declare-fun b!1390893 () Bool)

(assert (=> b!1390893 (= e!888381 (not lt!462781))))

(declare-fun bm!93020 () Bool)

(assert (=> bm!93020 (= call!93025 (isEmpty!8550 lt!462532))))

(declare-fun b!1390894 () Bool)

(assert (=> b!1390894 (= e!888383 (= lt!462781 call!93025))))

(declare-fun b!1390895 () Bool)

(assert (=> b!1390895 (= e!888379 (not (= (head!2543 lt!462532) (c!228749 (regex!2443 (rule!4204 t1!34))))))))

(declare-fun b!1390896 () Bool)

(assert (=> b!1390896 (= e!888378 e!888380)))

(declare-fun res!627945 () Bool)

(assert (=> b!1390896 (=> (not res!627945) (not e!888380))))

(assert (=> b!1390896 (= res!627945 (not lt!462781))))

(declare-fun b!1390897 () Bool)

(assert (=> b!1390897 (= e!888384 (matchR!1748 (derivativeStep!977 (regex!2443 (rule!4204 t1!34)) (head!2543 lt!462532)) (tail!2020 lt!462532)))))

(assert (= (and d!397634 c!228913) b!1390888))

(assert (= (and d!397634 (not c!228913)) b!1390897))

(assert (= (and d!397634 c!228915) b!1390894))

(assert (= (and d!397634 (not c!228915)) b!1390887))

(assert (= (and b!1390887 c!228914) b!1390893))

(assert (= (and b!1390887 (not c!228914)) b!1390889))

(assert (= (and b!1390889 (not res!627947)) b!1390892))

(assert (= (and b!1390892 res!627951) b!1390886))

(assert (= (and b!1390886 res!627950) b!1390885))

(assert (= (and b!1390885 res!627948) b!1390884))

(assert (= (and b!1390892 (not res!627952)) b!1390896))

(assert (= (and b!1390896 res!627945) b!1390891))

(assert (= (and b!1390891 (not res!627946)) b!1390890))

(assert (= (and b!1390890 (not res!627949)) b!1390895))

(assert (= (or b!1390894 b!1390886 b!1390891) bm!93020))

(declare-fun m!1565895 () Bool)

(assert (=> d!397634 m!1565895))

(declare-fun m!1565897 () Bool)

(assert (=> d!397634 m!1565897))

(assert (=> bm!93020 m!1565895))

(declare-fun m!1565899 () Bool)

(assert (=> b!1390885 m!1565899))

(assert (=> b!1390885 m!1565899))

(declare-fun m!1565901 () Bool)

(assert (=> b!1390885 m!1565901))

(assert (=> b!1390897 m!1564955))

(assert (=> b!1390897 m!1564955))

(declare-fun m!1565903 () Bool)

(assert (=> b!1390897 m!1565903))

(assert (=> b!1390897 m!1565899))

(assert (=> b!1390897 m!1565903))

(assert (=> b!1390897 m!1565899))

(declare-fun m!1565905 () Bool)

(assert (=> b!1390897 m!1565905))

(assert (=> b!1390895 m!1564955))

(assert (=> b!1390890 m!1565899))

(assert (=> b!1390890 m!1565899))

(assert (=> b!1390890 m!1565901))

(assert (=> b!1390884 m!1564955))

(declare-fun m!1565907 () Bool)

(assert (=> b!1390888 m!1565907))

(assert (=> b!1390077 d!397634))

(declare-fun d!397636 () Bool)

(assert (=> d!397636 (dynLambda!6490 lambda!60113 (rule!4204 t2!34))))

(declare-fun lt!462784 () Unit!20367)

(declare-fun choose!8554 (List!14174 Int Rule!4686) Unit!20367)

(assert (=> d!397636 (= lt!462784 (choose!8554 rules!2550 lambda!60113 (rule!4204 t2!34)))))

(declare-fun e!888387 () Bool)

(assert (=> d!397636 e!888387))

(declare-fun res!627955 () Bool)

(assert (=> d!397636 (=> (not res!627955) (not e!888387))))

(assert (=> d!397636 (= res!627955 (forall!3434 rules!2550 lambda!60113))))

(assert (=> d!397636 (= (forallContained!638 rules!2550 lambda!60113 (rule!4204 t2!34)) lt!462784)))

(declare-fun b!1390900 () Bool)

(assert (=> b!1390900 (= e!888387 (contains!2709 rules!2550 (rule!4204 t2!34)))))

(assert (= (and d!397636 res!627955) b!1390900))

(declare-fun b_lambda!43317 () Bool)

(assert (=> (not b_lambda!43317) (not d!397636)))

(declare-fun m!1565909 () Bool)

(assert (=> d!397636 m!1565909))

(declare-fun m!1565911 () Bool)

(assert (=> d!397636 m!1565911))

(declare-fun m!1565913 () Bool)

(assert (=> d!397636 m!1565913))

(assert (=> b!1390900 m!1564855))

(assert (=> b!1390077 d!397636))

(declare-fun d!397638 () Bool)

(assert (=> d!397638 (dynLambda!6490 lambda!60113 (rule!4204 t1!34))))

(declare-fun lt!462785 () Unit!20367)

(assert (=> d!397638 (= lt!462785 (choose!8554 rules!2550 lambda!60113 (rule!4204 t1!34)))))

(declare-fun e!888388 () Bool)

(assert (=> d!397638 e!888388))

(declare-fun res!627956 () Bool)

(assert (=> d!397638 (=> (not res!627956) (not e!888388))))

(assert (=> d!397638 (= res!627956 (forall!3434 rules!2550 lambda!60113))))

(assert (=> d!397638 (= (forallContained!638 rules!2550 lambda!60113 (rule!4204 t1!34)) lt!462785)))

(declare-fun b!1390901 () Bool)

(assert (=> b!1390901 (= e!888388 (contains!2709 rules!2550 (rule!4204 t1!34)))))

(assert (= (and d!397638 res!627956) b!1390901))

(declare-fun b_lambda!43319 () Bool)

(assert (=> (not b_lambda!43319) (not d!397638)))

(declare-fun m!1565915 () Bool)

(assert (=> d!397638 m!1565915))

(declare-fun m!1565917 () Bool)

(assert (=> d!397638 m!1565917))

(assert (=> d!397638 m!1565913))

(assert (=> b!1390901 m!1564857))

(assert (=> b!1390077 d!397638))

(declare-fun d!397640 () Bool)

(assert (=> d!397640 (dynLambda!6490 lambda!60113 lt!462521)))

(declare-fun lt!462786 () Unit!20367)

(assert (=> d!397640 (= lt!462786 (choose!8554 rules!2550 lambda!60113 lt!462521))))

(declare-fun e!888389 () Bool)

(assert (=> d!397640 e!888389))

(declare-fun res!627957 () Bool)

(assert (=> d!397640 (=> (not res!627957) (not e!888389))))

(assert (=> d!397640 (= res!627957 (forall!3434 rules!2550 lambda!60113))))

(assert (=> d!397640 (= (forallContained!638 rules!2550 lambda!60113 lt!462521) lt!462786)))

(declare-fun b!1390902 () Bool)

(assert (=> b!1390902 (= e!888389 (contains!2709 rules!2550 lt!462521))))

(assert (= (and d!397640 res!627957) b!1390902))

(declare-fun b_lambda!43321 () Bool)

(assert (=> (not b_lambda!43321) (not d!397640)))

(declare-fun m!1565919 () Bool)

(assert (=> d!397640 m!1565919))

(declare-fun m!1565921 () Bool)

(assert (=> d!397640 m!1565921))

(assert (=> d!397640 m!1565913))

(assert (=> b!1390902 m!1564895))

(assert (=> b!1390077 d!397640))

(declare-fun d!397642 () Bool)

(declare-fun lt!462787 () Bool)

(assert (=> d!397642 (= lt!462787 (select (content!2080 rules!2550) (rule!4204 t1!34)))))

(declare-fun e!888390 () Bool)

(assert (=> d!397642 (= lt!462787 e!888390)))

(declare-fun res!627958 () Bool)

(assert (=> d!397642 (=> (not res!627958) (not e!888390))))

(assert (=> d!397642 (= res!627958 ((_ is Cons!14108) rules!2550))))

(assert (=> d!397642 (= (contains!2709 rules!2550 (rule!4204 t1!34)) lt!462787)))

(declare-fun b!1390903 () Bool)

(declare-fun e!888391 () Bool)

(assert (=> b!1390903 (= e!888390 e!888391)))

(declare-fun res!627959 () Bool)

(assert (=> b!1390903 (=> res!627959 e!888391)))

(assert (=> b!1390903 (= res!627959 (= (h!19509 rules!2550) (rule!4204 t1!34)))))

(declare-fun b!1390904 () Bool)

(assert (=> b!1390904 (= e!888391 (contains!2709 (t!122413 rules!2550) (rule!4204 t1!34)))))

(assert (= (and d!397642 res!627958) b!1390903))

(assert (= (and b!1390903 (not res!627959)) b!1390904))

(assert (=> d!397642 m!1565811))

(declare-fun m!1565923 () Bool)

(assert (=> d!397642 m!1565923))

(declare-fun m!1565925 () Bool)

(assert (=> b!1390904 m!1565925))

(assert (=> b!1390078 d!397642))

(declare-fun d!397644 () Bool)

(declare-fun lt!462789 () Bool)

(declare-fun e!888393 () Bool)

(assert (=> d!397644 (= lt!462789 e!888393)))

(declare-fun res!627962 () Bool)

(assert (=> d!397644 (=> (not res!627962) (not e!888393))))

(assert (=> d!397644 (= res!627962 (= (list!5478 (_1!7742 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t2!34))))) (list!5478 (singletonSeq!1092 t2!34))))))

(declare-fun e!888392 () Bool)

(assert (=> d!397644 (= lt!462789 e!888392)))

(declare-fun res!627961 () Bool)

(assert (=> d!397644 (=> (not res!627961) (not e!888392))))

(declare-fun lt!462788 () tuple2!13712)

(assert (=> d!397644 (= res!627961 (= (size!11607 (_1!7742 lt!462788)) 1))))

(assert (=> d!397644 (= lt!462788 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t2!34))))))

(assert (=> d!397644 (not (isEmpty!8546 rules!2550))))

(assert (=> d!397644 (= (rulesProduceIndividualToken!1107 thiss!19762 rules!2550 t2!34) lt!462789)))

(declare-fun b!1390905 () Bool)

(declare-fun res!627960 () Bool)

(assert (=> b!1390905 (=> (not res!627960) (not e!888392))))

(assert (=> b!1390905 (= res!627960 (= (apply!3552 (_1!7742 lt!462788) 0) t2!34))))

(declare-fun b!1390906 () Bool)

(assert (=> b!1390906 (= e!888392 (isEmpty!8547 (_2!7742 lt!462788)))))

(declare-fun b!1390907 () Bool)

(assert (=> b!1390907 (= e!888393 (isEmpty!8547 (_2!7742 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t2!34))))))))

(assert (= (and d!397644 res!627961) b!1390905))

(assert (= (and b!1390905 res!627960) b!1390906))

(assert (= (and d!397644 res!627962) b!1390907))

(declare-fun m!1565927 () Bool)

(assert (=> d!397644 m!1565927))

(assert (=> d!397644 m!1564875))

(declare-fun m!1565929 () Bool)

(assert (=> d!397644 m!1565929))

(assert (=> d!397644 m!1564825))

(assert (=> d!397644 m!1564873))

(assert (=> d!397644 m!1565877))

(declare-fun m!1565931 () Bool)

(assert (=> d!397644 m!1565931))

(assert (=> d!397644 m!1564873))

(assert (=> d!397644 m!1564875))

(assert (=> d!397644 m!1564873))

(declare-fun m!1565933 () Bool)

(assert (=> b!1390905 m!1565933))

(declare-fun m!1565935 () Bool)

(assert (=> b!1390906 m!1565935))

(assert (=> b!1390907 m!1564873))

(assert (=> b!1390907 m!1564873))

(assert (=> b!1390907 m!1564875))

(assert (=> b!1390907 m!1564875))

(assert (=> b!1390907 m!1565929))

(declare-fun m!1565937 () Bool)

(assert (=> b!1390907 m!1565937))

(assert (=> b!1390099 d!397644))

(declare-fun d!397646 () Bool)

(declare-fun lt!462790 () Bool)

(assert (=> d!397646 (= lt!462790 (select (content!2080 rules!2550) (rule!4204 t2!34)))))

(declare-fun e!888394 () Bool)

(assert (=> d!397646 (= lt!462790 e!888394)))

(declare-fun res!627963 () Bool)

(assert (=> d!397646 (=> (not res!627963) (not e!888394))))

(assert (=> d!397646 (= res!627963 ((_ is Cons!14108) rules!2550))))

(assert (=> d!397646 (= (contains!2709 rules!2550 (rule!4204 t2!34)) lt!462790)))

(declare-fun b!1390908 () Bool)

(declare-fun e!888395 () Bool)

(assert (=> b!1390908 (= e!888394 e!888395)))

(declare-fun res!627964 () Bool)

(assert (=> b!1390908 (=> res!627964 e!888395)))

(assert (=> b!1390908 (= res!627964 (= (h!19509 rules!2550) (rule!4204 t2!34)))))

(declare-fun b!1390909 () Bool)

(assert (=> b!1390909 (= e!888395 (contains!2709 (t!122413 rules!2550) (rule!4204 t2!34)))))

(assert (= (and d!397646 res!627963) b!1390908))

(assert (= (and b!1390908 (not res!627964)) b!1390909))

(assert (=> d!397646 m!1565811))

(declare-fun m!1565939 () Bool)

(assert (=> d!397646 m!1565939))

(declare-fun m!1565941 () Bool)

(assert (=> b!1390909 m!1565941))

(assert (=> b!1390057 d!397646))

(declare-fun d!397648 () Bool)

(declare-fun lt!462791 () Bool)

(assert (=> d!397648 (= lt!462791 (select (content!2079 lt!462523) lt!462536))))

(declare-fun e!888396 () Bool)

(assert (=> d!397648 (= lt!462791 e!888396)))

(declare-fun res!627965 () Bool)

(assert (=> d!397648 (=> (not res!627965) (not e!888396))))

(assert (=> d!397648 (= res!627965 ((_ is Cons!14107) lt!462523))))

(assert (=> d!397648 (= (contains!2710 lt!462523 lt!462536) lt!462791)))

(declare-fun b!1390910 () Bool)

(declare-fun e!888397 () Bool)

(assert (=> b!1390910 (= e!888396 e!888397)))

(declare-fun res!627966 () Bool)

(assert (=> b!1390910 (=> res!627966 e!888397)))

(assert (=> b!1390910 (= res!627966 (= (h!19508 lt!462523) lt!462536))))

(declare-fun b!1390911 () Bool)

(assert (=> b!1390911 (= e!888397 (contains!2710 (t!122412 lt!462523) lt!462536))))

(assert (= (and d!397648 res!627965) b!1390910))

(assert (= (and b!1390910 (not res!627966)) b!1390911))

(assert (=> d!397648 m!1565831))

(declare-fun m!1565943 () Bool)

(assert (=> d!397648 m!1565943))

(declare-fun m!1565945 () Bool)

(assert (=> b!1390911 m!1565945))

(assert (=> b!1390058 d!397648))

(declare-fun d!397650 () Bool)

(declare-fun lt!462794 () C!7804)

(declare-fun apply!3556 (List!14173 Int) C!7804)

(assert (=> d!397650 (= lt!462794 (apply!3556 (list!5477 lt!462516) 0))))

(declare-fun apply!3557 (Conc!4646 Int) C!7804)

(assert (=> d!397650 (= lt!462794 (apply!3557 (c!228748 lt!462516) 0))))

(declare-fun e!888400 () Bool)

(assert (=> d!397650 e!888400))

(declare-fun res!627969 () Bool)

(assert (=> d!397650 (=> (not res!627969) (not e!888400))))

(assert (=> d!397650 (= res!627969 (<= 0 0))))

(assert (=> d!397650 (= (apply!3549 lt!462516 0) lt!462794)))

(declare-fun b!1390914 () Bool)

(assert (=> b!1390914 (= e!888400 (< 0 (size!11596 lt!462516)))))

(assert (= (and d!397650 res!627969) b!1390914))

(assert (=> d!397650 m!1564959))

(assert (=> d!397650 m!1564959))

(declare-fun m!1565947 () Bool)

(assert (=> d!397650 m!1565947))

(declare-fun m!1565949 () Bool)

(assert (=> d!397650 m!1565949))

(declare-fun m!1565951 () Bool)

(assert (=> b!1390914 m!1565951))

(assert (=> b!1390058 d!397650))

(declare-fun d!397652 () Bool)

(declare-fun lt!462795 () Bool)

(assert (=> d!397652 (= lt!462795 (select (content!2079 lt!462523) lt!462513))))

(declare-fun e!888401 () Bool)

(assert (=> d!397652 (= lt!462795 e!888401)))

(declare-fun res!627970 () Bool)

(assert (=> d!397652 (=> (not res!627970) (not e!888401))))

(assert (=> d!397652 (= res!627970 ((_ is Cons!14107) lt!462523))))

(assert (=> d!397652 (= (contains!2710 lt!462523 lt!462513) lt!462795)))

(declare-fun b!1390915 () Bool)

(declare-fun e!888402 () Bool)

(assert (=> b!1390915 (= e!888401 e!888402)))

(declare-fun res!627971 () Bool)

(assert (=> b!1390915 (=> res!627971 e!888402)))

(assert (=> b!1390915 (= res!627971 (= (h!19508 lt!462523) lt!462513))))

(declare-fun b!1390916 () Bool)

(assert (=> b!1390916 (= e!888402 (contains!2710 (t!122412 lt!462523) lt!462513))))

(assert (= (and d!397652 res!627970) b!1390915))

(assert (= (and b!1390915 (not res!627971)) b!1390916))

(assert (=> d!397652 m!1565831))

(declare-fun m!1565953 () Bool)

(assert (=> d!397652 m!1565953))

(declare-fun m!1565955 () Bool)

(assert (=> b!1390916 m!1565955))

(assert (=> b!1390079 d!397652))

(declare-fun d!397654 () Bool)

(declare-fun lt!462796 () Bool)

(assert (=> d!397654 (= lt!462796 (select (content!2079 lt!462520) lt!462513))))

(declare-fun e!888403 () Bool)

(assert (=> d!397654 (= lt!462796 e!888403)))

(declare-fun res!627972 () Bool)

(assert (=> d!397654 (=> (not res!627972) (not e!888403))))

(assert (=> d!397654 (= res!627972 ((_ is Cons!14107) lt!462520))))

(assert (=> d!397654 (= (contains!2710 lt!462520 lt!462513) lt!462796)))

(declare-fun b!1390917 () Bool)

(declare-fun e!888404 () Bool)

(assert (=> b!1390917 (= e!888403 e!888404)))

(declare-fun res!627973 () Bool)

(assert (=> b!1390917 (=> res!627973 e!888404)))

(assert (=> b!1390917 (= res!627973 (= (h!19508 lt!462520) lt!462513))))

(declare-fun b!1390918 () Bool)

(assert (=> b!1390918 (= e!888404 (contains!2710 (t!122412 lt!462520) lt!462513))))

(assert (= (and d!397654 res!627972) b!1390917))

(assert (= (and b!1390917 (not res!627973)) b!1390918))

(assert (=> d!397654 m!1565587))

(declare-fun m!1565957 () Bool)

(assert (=> d!397654 m!1565957))

(declare-fun m!1565959 () Bool)

(assert (=> b!1390918 m!1565959))

(assert (=> b!1390080 d!397654))

(declare-fun d!397656 () Bool)

(declare-fun e!888406 () Bool)

(assert (=> d!397656 e!888406))

(declare-fun res!627975 () Bool)

(assert (=> d!397656 (=> (not res!627975) (not e!888406))))

(declare-fun lt!462797 () List!14173)

(assert (=> d!397656 (= res!627975 (= (content!2079 lt!462797) ((_ map or) (content!2079 lt!462532) (content!2079 (Cons!14107 lt!462513 Nil!14107)))))))

(declare-fun e!888405 () List!14173)

(assert (=> d!397656 (= lt!462797 e!888405)))

(declare-fun c!228916 () Bool)

(assert (=> d!397656 (= c!228916 ((_ is Nil!14107) lt!462532))))

(assert (=> d!397656 (= (++!3664 lt!462532 (Cons!14107 lt!462513 Nil!14107)) lt!462797)))

(declare-fun b!1390921 () Bool)

(declare-fun res!627974 () Bool)

(assert (=> b!1390921 (=> (not res!627974) (not e!888406))))

(assert (=> b!1390921 (= res!627974 (= (size!11605 lt!462797) (+ (size!11605 lt!462532) (size!11605 (Cons!14107 lt!462513 Nil!14107)))))))

(declare-fun b!1390920 () Bool)

(assert (=> b!1390920 (= e!888405 (Cons!14107 (h!19508 lt!462532) (++!3664 (t!122412 lt!462532) (Cons!14107 lt!462513 Nil!14107))))))

(declare-fun b!1390919 () Bool)

(assert (=> b!1390919 (= e!888405 (Cons!14107 lt!462513 Nil!14107))))

(declare-fun b!1390922 () Bool)

(assert (=> b!1390922 (= e!888406 (or (not (= (Cons!14107 lt!462513 Nil!14107) Nil!14107)) (= lt!462797 lt!462532)))))

(assert (= (and d!397656 c!228916) b!1390919))

(assert (= (and d!397656 (not c!228916)) b!1390920))

(assert (= (and d!397656 res!627975) b!1390921))

(assert (= (and b!1390921 res!627974) b!1390922))

(declare-fun m!1565961 () Bool)

(assert (=> d!397656 m!1565961))

(declare-fun m!1565963 () Bool)

(assert (=> d!397656 m!1565963))

(declare-fun m!1565965 () Bool)

(assert (=> d!397656 m!1565965))

(declare-fun m!1565967 () Bool)

(assert (=> b!1390921 m!1565967))

(assert (=> b!1390921 m!1565315))

(declare-fun m!1565969 () Bool)

(assert (=> b!1390921 m!1565969))

(declare-fun m!1565971 () Bool)

(assert (=> b!1390920 m!1565971))

(assert (=> b!1390059 d!397656))

(declare-fun d!397658 () Bool)

(declare-fun lt!462798 () C!7804)

(assert (=> d!397658 (= lt!462798 (apply!3556 (list!5477 lt!462522) 0))))

(assert (=> d!397658 (= lt!462798 (apply!3557 (c!228748 lt!462522) 0))))

(declare-fun e!888407 () Bool)

(assert (=> d!397658 e!888407))

(declare-fun res!627976 () Bool)

(assert (=> d!397658 (=> (not res!627976) (not e!888407))))

(assert (=> d!397658 (= res!627976 (<= 0 0))))

(assert (=> d!397658 (= (apply!3549 lt!462522 0) lt!462798)))

(declare-fun b!1390923 () Bool)

(assert (=> b!1390923 (= e!888407 (< 0 (size!11596 lt!462522)))))

(assert (= (and d!397658 res!627976) b!1390923))

(assert (=> d!397658 m!1564929))

(assert (=> d!397658 m!1564929))

(declare-fun m!1565973 () Bool)

(assert (=> d!397658 m!1565973))

(declare-fun m!1565975 () Bool)

(assert (=> d!397658 m!1565975))

(assert (=> b!1390923 m!1564861))

(assert (=> b!1390059 d!397658))

(declare-fun d!397660 () Bool)

(declare-fun lt!462799 () BalanceConc!9232)

(assert (=> d!397660 (= (list!5477 lt!462799) (originalCharacters!3305 t1!34))))

(assert (=> d!397660 (= lt!462799 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34)))))

(assert (=> d!397660 (= (charsOf!1415 t1!34) lt!462799)))

(declare-fun b_lambda!43323 () Bool)

(assert (=> (not b_lambda!43323) (not d!397660)))

(assert (=> d!397660 t!122429))

(declare-fun b_and!93181 () Bool)

(assert (= b_and!93175 (and (=> t!122429 result!88476) b_and!93181)))

(assert (=> d!397660 t!122431))

(declare-fun b_and!93183 () Bool)

(assert (= b_and!93177 (and (=> t!122431 result!88480) b_and!93183)))

(assert (=> d!397660 t!122433))

(declare-fun b_and!93185 () Bool)

(assert (= b_and!93179 (and (=> t!122433 result!88482) b_and!93185)))

(declare-fun m!1565977 () Bool)

(assert (=> d!397660 m!1565977))

(assert (=> d!397660 m!1565189))

(assert (=> b!1390059 d!397660))

(declare-fun bs!337425 () Bool)

(declare-fun d!397662 () Bool)

(assert (= bs!337425 (and d!397662 b!1390085)))

(declare-fun lambda!60157 () Int)

(assert (=> bs!337425 (= lambda!60157 lambda!60110)))

(declare-fun lt!462802 () Unit!20367)

(declare-fun lemma!147 (List!14174 LexerInterface!2138 List!14174) Unit!20367)

(assert (=> d!397662 (= lt!462802 (lemma!147 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!155 (List!14176) Regex!3757)

(assert (=> d!397662 (= (rulesRegex!326 thiss!19762 rules!2550) (generalisedUnion!155 (map!3125 rules!2550 lambda!60157)))))

(declare-fun bs!337426 () Bool)

(assert (= bs!337426 d!397662))

(declare-fun m!1565979 () Bool)

(assert (=> bs!337426 m!1565979))

(declare-fun m!1565981 () Bool)

(assert (=> bs!337426 m!1565981))

(assert (=> bs!337426 m!1565981))

(declare-fun m!1565983 () Bool)

(assert (=> bs!337426 m!1565983))

(assert (=> b!1390059 d!397662))

(declare-fun d!397664 () Bool)

(declare-fun c!228919 () Bool)

(assert (=> d!397664 (= c!228919 (isEmpty!8550 lt!462523))))

(declare-fun e!888410 () Bool)

(assert (=> d!397664 (= (prefixMatch!266 lt!462518 lt!462523) e!888410)))

(declare-fun b!1390928 () Bool)

(declare-fun lostCause!353 (Regex!3757) Bool)

(assert (=> b!1390928 (= e!888410 (not (lostCause!353 lt!462518)))))

(declare-fun b!1390929 () Bool)

(assert (=> b!1390929 (= e!888410 (prefixMatch!266 (derivativeStep!977 lt!462518 (head!2543 lt!462523)) (tail!2020 lt!462523)))))

(assert (= (and d!397664 c!228919) b!1390928))

(assert (= (and d!397664 (not c!228919)) b!1390929))

(declare-fun m!1565985 () Bool)

(assert (=> d!397664 m!1565985))

(declare-fun m!1565987 () Bool)

(assert (=> b!1390928 m!1565987))

(declare-fun m!1565989 () Bool)

(assert (=> b!1390929 m!1565989))

(assert (=> b!1390929 m!1565989))

(declare-fun m!1565991 () Bool)

(assert (=> b!1390929 m!1565991))

(declare-fun m!1565993 () Bool)

(assert (=> b!1390929 m!1565993))

(assert (=> b!1390929 m!1565991))

(assert (=> b!1390929 m!1565993))

(declare-fun m!1565995 () Bool)

(assert (=> b!1390929 m!1565995))

(assert (=> b!1390059 d!397664))

(declare-fun d!397666 () Bool)

(assert (=> d!397666 (= (list!5477 lt!462516) (list!5481 (c!228748 lt!462516)))))

(declare-fun bs!337427 () Bool)

(assert (= bs!337427 d!397666))

(declare-fun m!1565997 () Bool)

(assert (=> bs!337427 m!1565997))

(assert (=> b!1390059 d!397666))

(declare-fun b!1390930 () Bool)

(declare-fun e!888412 () Bool)

(declare-fun e!888411 () Bool)

(assert (=> b!1390930 (= e!888412 e!888411)))

(declare-fun res!627977 () Bool)

(declare-fun lt!462805 () tuple2!13714)

(assert (=> b!1390930 (= res!627977 (< (size!11605 (_2!7743 lt!462805)) (size!11605 (list!5477 lt!462514))))))

(assert (=> b!1390930 (=> (not res!627977) (not e!888411))))

(declare-fun d!397668 () Bool)

(assert (=> d!397668 e!888412))

(declare-fun c!228921 () Bool)

(assert (=> d!397668 (= c!228921 (> (size!11606 (_1!7743 lt!462805)) 0))))

(declare-fun e!888413 () tuple2!13714)

(assert (=> d!397668 (= lt!462805 e!888413)))

(declare-fun c!228920 () Bool)

(declare-fun lt!462803 () Option!2704)

(assert (=> d!397668 (= c!228920 ((_ is Some!2703) lt!462803))))

(assert (=> d!397668 (= lt!462803 (maxPrefix!1112 thiss!19762 rules!2550 (list!5477 lt!462514)))))

(assert (=> d!397668 (= (lexList!652 thiss!19762 rules!2550 (list!5477 lt!462514)) lt!462805)))

(declare-fun b!1390931 () Bool)

(assert (=> b!1390931 (= e!888411 (not (isEmpty!8552 (_1!7743 lt!462805))))))

(declare-fun b!1390932 () Bool)

(assert (=> b!1390932 (= e!888413 (tuple2!13715 Nil!14109 (list!5477 lt!462514)))))

(declare-fun b!1390933 () Bool)

(assert (=> b!1390933 (= e!888412 (= (_2!7743 lt!462805) (list!5477 lt!462514)))))

(declare-fun b!1390934 () Bool)

(declare-fun lt!462804 () tuple2!13714)

(assert (=> b!1390934 (= e!888413 (tuple2!13715 (Cons!14109 (_1!7741 (v!21586 lt!462803)) (_1!7743 lt!462804)) (_2!7743 lt!462804)))))

(assert (=> b!1390934 (= lt!462804 (lexList!652 thiss!19762 rules!2550 (_2!7741 (v!21586 lt!462803))))))

(assert (= (and d!397668 c!228920) b!1390934))

(assert (= (and d!397668 (not c!228920)) b!1390932))

(assert (= (and d!397668 c!228921) b!1390930))

(assert (= (and d!397668 (not c!228921)) b!1390933))

(assert (= (and b!1390930 res!627977) b!1390931))

(declare-fun m!1565999 () Bool)

(assert (=> b!1390930 m!1565999))

(assert (=> b!1390930 m!1564835))

(declare-fun m!1566001 () Bool)

(assert (=> b!1390930 m!1566001))

(declare-fun m!1566003 () Bool)

(assert (=> d!397668 m!1566003))

(assert (=> d!397668 m!1564835))

(declare-fun m!1566005 () Bool)

(assert (=> d!397668 m!1566005))

(declare-fun m!1566007 () Bool)

(assert (=> b!1390931 m!1566007))

(declare-fun m!1566009 () Bool)

(assert (=> b!1390934 m!1566009))

(assert (=> b!1390060 d!397668))

(declare-fun d!397670 () Bool)

(assert (=> d!397670 (= (list!5477 lt!462514) (list!5481 (c!228748 lt!462514)))))

(declare-fun bs!337428 () Bool)

(assert (= bs!337428 d!397670))

(declare-fun m!1566011 () Bool)

(assert (=> bs!337428 m!1566011))

(assert (=> b!1390060 d!397670))

(declare-fun d!397672 () Bool)

(assert (=> d!397672 (not (matchR!1748 (regex!2443 (rule!4204 t1!34)) lt!462532))))

(declare-fun lt!462808 () Unit!20367)

(declare-fun choose!8557 (Regex!3757 List!14173 C!7804) Unit!20367)

(assert (=> d!397672 (= lt!462808 (choose!8557 (regex!2443 (rule!4204 t1!34)) lt!462532 (head!2543 lt!462532)))))

(assert (=> d!397672 (validRegex!1639 (regex!2443 (rule!4204 t1!34)))))

(assert (=> d!397672 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!188 (regex!2443 (rule!4204 t1!34)) lt!462532 (head!2543 lt!462532)) lt!462808)))

(declare-fun bs!337429 () Bool)

(assert (= bs!337429 d!397672))

(assert (=> bs!337429 m!1564915))

(assert (=> bs!337429 m!1564955))

(declare-fun m!1566013 () Bool)

(assert (=> bs!337429 m!1566013))

(assert (=> bs!337429 m!1565897))

(assert (=> b!1390081 d!397672))

(declare-fun d!397674 () Bool)

(assert (=> d!397674 (= (head!2543 lt!462532) (h!19508 lt!462532))))

(assert (=> b!1390081 d!397674))

(declare-fun d!397676 () Bool)

(declare-fun c!228924 () Bool)

(assert (=> d!397676 (= c!228924 ((_ is IntegerValue!7599) (value!79258 t2!34)))))

(declare-fun e!888415 () Bool)

(assert (=> d!397676 (= (inv!21 (value!79258 t2!34)) e!888415)))

(declare-fun b!1390935 () Bool)

(declare-fun res!627978 () Bool)

(declare-fun e!888414 () Bool)

(assert (=> b!1390935 (=> res!627978 e!888414)))

(assert (=> b!1390935 (= res!627978 (not ((_ is IntegerValue!7601) (value!79258 t2!34))))))

(declare-fun e!888416 () Bool)

(assert (=> b!1390935 (= e!888416 e!888414)))

(declare-fun b!1390936 () Bool)

(assert (=> b!1390936 (= e!888415 (inv!16 (value!79258 t2!34)))))

(declare-fun b!1390937 () Bool)

(assert (=> b!1390937 (= e!888415 e!888416)))

(declare-fun c!228923 () Bool)

(assert (=> b!1390937 (= c!228923 ((_ is IntegerValue!7600) (value!79258 t2!34)))))

(declare-fun b!1390938 () Bool)

(assert (=> b!1390938 (= e!888414 (inv!15 (value!79258 t2!34)))))

(declare-fun b!1390939 () Bool)

(assert (=> b!1390939 (= e!888416 (inv!17 (value!79258 t2!34)))))

(assert (= (and d!397676 c!228924) b!1390936))

(assert (= (and d!397676 (not c!228924)) b!1390937))

(assert (= (and b!1390937 c!228923) b!1390939))

(assert (= (and b!1390937 (not c!228923)) b!1390935))

(assert (= (and b!1390935 (not res!627978)) b!1390938))

(declare-fun m!1566015 () Bool)

(assert (=> b!1390936 m!1566015))

(declare-fun m!1566017 () Bool)

(assert (=> b!1390938 m!1566017))

(declare-fun m!1566019 () Bool)

(assert (=> b!1390939 m!1566019))

(assert (=> b!1390082 d!397676))

(declare-fun d!397678 () Bool)

(assert (=> d!397678 (= (inv!18441 (tag!2705 (h!19509 rules!2550))) (= (mod (str.len (value!79257 (tag!2705 (h!19509 rules!2550)))) 2) 0))))

(assert (=> b!1390061 d!397678))

(declare-fun d!397680 () Bool)

(declare-fun res!627979 () Bool)

(declare-fun e!888417 () Bool)

(assert (=> d!397680 (=> (not res!627979) (not e!888417))))

(assert (=> d!397680 (= res!627979 (semiInverseModEq!948 (toChars!3589 (transformation!2443 (h!19509 rules!2550))) (toValue!3730 (transformation!2443 (h!19509 rules!2550)))))))

(assert (=> d!397680 (= (inv!18445 (transformation!2443 (h!19509 rules!2550))) e!888417)))

(declare-fun b!1390940 () Bool)

(assert (=> b!1390940 (= e!888417 (equivClasses!907 (toChars!3589 (transformation!2443 (h!19509 rules!2550))) (toValue!3730 (transformation!2443 (h!19509 rules!2550)))))))

(assert (= (and d!397680 res!627979) b!1390940))

(declare-fun m!1566021 () Bool)

(assert (=> d!397680 m!1566021))

(declare-fun m!1566023 () Bool)

(assert (=> b!1390940 m!1566023))

(assert (=> b!1390061 d!397680))

(declare-fun d!397682 () Bool)

(declare-fun res!627982 () Bool)

(declare-fun e!888420 () Bool)

(assert (=> d!397682 (=> (not res!627982) (not e!888420))))

(declare-fun rulesValid!917 (LexerInterface!2138 List!14174) Bool)

(assert (=> d!397682 (= res!627982 (rulesValid!917 thiss!19762 rules!2550))))

(assert (=> d!397682 (= (rulesInvariant!2008 thiss!19762 rules!2550) e!888420)))

(declare-fun b!1390943 () Bool)

(declare-datatypes ((List!14178 0))(
  ( (Nil!14112) (Cons!14112 (h!19513 String!16901) (t!122453 List!14178)) )
))
(declare-fun noDuplicateTag!917 (LexerInterface!2138 List!14174 List!14178) Bool)

(assert (=> b!1390943 (= e!888420 (noDuplicateTag!917 thiss!19762 rules!2550 Nil!14112))))

(assert (= (and d!397682 res!627982) b!1390943))

(declare-fun m!1566025 () Bool)

(assert (=> d!397682 m!1566025))

(declare-fun m!1566027 () Bool)

(assert (=> b!1390943 m!1566027))

(assert (=> b!1390062 d!397682))

(declare-fun b!1390954 () Bool)

(declare-fun b_free!33811 () Bool)

(declare-fun b_next!34515 () Bool)

(assert (=> b!1390954 (= b_free!33811 (not b_next!34515))))

(declare-fun tp!397173 () Bool)

(declare-fun b_and!93187 () Bool)

(assert (=> b!1390954 (= tp!397173 b_and!93187)))

(declare-fun b_free!33813 () Bool)

(declare-fun b_next!34517 () Bool)

(assert (=> b!1390954 (= b_free!33813 (not b_next!34517))))

(declare-fun tb!72829 () Bool)

(declare-fun t!122449 () Bool)

(assert (=> (and b!1390954 (= (toChars!3589 (transformation!2443 (h!19509 (t!122413 rules!2550)))) (toChars!3589 (transformation!2443 (rule!4204 t1!34)))) t!122449) tb!72829))

(declare-fun result!88502 () Bool)

(assert (= result!88502 result!88476))

(assert (=> b!1390337 t!122449))

(declare-fun t!122451 () Bool)

(declare-fun tb!72831 () Bool)

(assert (=> (and b!1390954 (= (toChars!3589 (transformation!2443 (h!19509 (t!122413 rules!2550)))) (toChars!3589 (transformation!2443 (rule!4204 t2!34)))) t!122451) tb!72831))

(declare-fun result!88504 () Bool)

(assert (= result!88504 result!88484))

(assert (=> b!1390344 t!122451))

(assert (=> d!397632 t!122451))

(assert (=> d!397660 t!122449))

(declare-fun b_and!93189 () Bool)

(declare-fun tp!397172 () Bool)

(assert (=> b!1390954 (= tp!397172 (and (=> t!122449 result!88502) (=> t!122451 result!88504) b_and!93189))))

(declare-fun e!888430 () Bool)

(assert (=> b!1390954 (= e!888430 (and tp!397173 tp!397172))))

(declare-fun tp!397170 () Bool)

(declare-fun b!1390953 () Bool)

(declare-fun e!888429 () Bool)

(assert (=> b!1390953 (= e!888429 (and tp!397170 (inv!18441 (tag!2705 (h!19509 (t!122413 rules!2550)))) (inv!18445 (transformation!2443 (h!19509 (t!122413 rules!2550)))) e!888430))))

(declare-fun b!1390952 () Bool)

(declare-fun e!888431 () Bool)

(declare-fun tp!397171 () Bool)

(assert (=> b!1390952 (= e!888431 (and e!888429 tp!397171))))

(assert (=> b!1390073 (= tp!397103 e!888431)))

(assert (= b!1390953 b!1390954))

(assert (= b!1390952 b!1390953))

(assert (= (and b!1390073 ((_ is Cons!14108) (t!122413 rules!2550))) b!1390952))

(declare-fun m!1566029 () Bool)

(assert (=> b!1390953 m!1566029))

(declare-fun m!1566031 () Bool)

(assert (=> b!1390953 m!1566031))

(declare-fun b!1390967 () Bool)

(declare-fun e!888435 () Bool)

(declare-fun tp!397188 () Bool)

(assert (=> b!1390967 (= e!888435 tp!397188)))

(declare-fun b!1390966 () Bool)

(declare-fun tp!397186 () Bool)

(declare-fun tp!397187 () Bool)

(assert (=> b!1390966 (= e!888435 (and tp!397186 tp!397187))))

(declare-fun b!1390968 () Bool)

(declare-fun tp!397184 () Bool)

(declare-fun tp!397185 () Bool)

(assert (=> b!1390968 (= e!888435 (and tp!397184 tp!397185))))

(assert (=> b!1390070 (= tp!397106 e!888435)))

(declare-fun b!1390965 () Bool)

(declare-fun tp_is_empty!6787 () Bool)

(assert (=> b!1390965 (= e!888435 tp_is_empty!6787)))

(assert (= (and b!1390070 ((_ is ElementMatch!3757) (regex!2443 (rule!4204 t2!34)))) b!1390965))

(assert (= (and b!1390070 ((_ is Concat!6291) (regex!2443 (rule!4204 t2!34)))) b!1390966))

(assert (= (and b!1390070 ((_ is Star!3757) (regex!2443 (rule!4204 t2!34)))) b!1390967))

(assert (= (and b!1390070 ((_ is Union!3757) (regex!2443 (rule!4204 t2!34)))) b!1390968))

(declare-fun b!1390971 () Bool)

(declare-fun e!888436 () Bool)

(declare-fun tp!397193 () Bool)

(assert (=> b!1390971 (= e!888436 tp!397193)))

(declare-fun b!1390970 () Bool)

(declare-fun tp!397191 () Bool)

(declare-fun tp!397192 () Bool)

(assert (=> b!1390970 (= e!888436 (and tp!397191 tp!397192))))

(declare-fun b!1390972 () Bool)

(declare-fun tp!397189 () Bool)

(declare-fun tp!397190 () Bool)

(assert (=> b!1390972 (= e!888436 (and tp!397189 tp!397190))))

(assert (=> b!1390065 (= tp!397107 e!888436)))

(declare-fun b!1390969 () Bool)

(assert (=> b!1390969 (= e!888436 tp_is_empty!6787)))

(assert (= (and b!1390065 ((_ is ElementMatch!3757) (regex!2443 (rule!4204 t1!34)))) b!1390969))

(assert (= (and b!1390065 ((_ is Concat!6291) (regex!2443 (rule!4204 t1!34)))) b!1390970))

(assert (= (and b!1390065 ((_ is Star!3757) (regex!2443 (rule!4204 t1!34)))) b!1390971))

(assert (= (and b!1390065 ((_ is Union!3757) (regex!2443 (rule!4204 t1!34)))) b!1390972))

(declare-fun b!1390977 () Bool)

(declare-fun e!888439 () Bool)

(declare-fun tp!397196 () Bool)

(assert (=> b!1390977 (= e!888439 (and tp_is_empty!6787 tp!397196))))

(assert (=> b!1390082 (= tp!397112 e!888439)))

(assert (= (and b!1390082 ((_ is Cons!14107) (originalCharacters!3305 t2!34))) b!1390977))

(declare-fun b!1390978 () Bool)

(declare-fun e!888440 () Bool)

(declare-fun tp!397197 () Bool)

(assert (=> b!1390978 (= e!888440 (and tp_is_empty!6787 tp!397197))))

(assert (=> b!1390093 (= tp!397101 e!888440)))

(assert (= (and b!1390093 ((_ is Cons!14107) (originalCharacters!3305 t1!34))) b!1390978))

(declare-fun b!1390981 () Bool)

(declare-fun e!888441 () Bool)

(declare-fun tp!397202 () Bool)

(assert (=> b!1390981 (= e!888441 tp!397202)))

(declare-fun b!1390980 () Bool)

(declare-fun tp!397200 () Bool)

(declare-fun tp!397201 () Bool)

(assert (=> b!1390980 (= e!888441 (and tp!397200 tp!397201))))

(declare-fun b!1390982 () Bool)

(declare-fun tp!397198 () Bool)

(declare-fun tp!397199 () Bool)

(assert (=> b!1390982 (= e!888441 (and tp!397198 tp!397199))))

(assert (=> b!1390061 (= tp!397104 e!888441)))

(declare-fun b!1390979 () Bool)

(assert (=> b!1390979 (= e!888441 tp_is_empty!6787)))

(assert (= (and b!1390061 ((_ is ElementMatch!3757) (regex!2443 (h!19509 rules!2550)))) b!1390979))

(assert (= (and b!1390061 ((_ is Concat!6291) (regex!2443 (h!19509 rules!2550)))) b!1390980))

(assert (= (and b!1390061 ((_ is Star!3757) (regex!2443 (h!19509 rules!2550)))) b!1390981))

(assert (= (and b!1390061 ((_ is Union!3757) (regex!2443 (h!19509 rules!2550)))) b!1390982))

(declare-fun b_lambda!43325 () Bool)

(assert (= b_lambda!43269 (or (and b!1390097 b_free!33797 (= (toChars!3589 (transformation!2443 (h!19509 rules!2550))) (toChars!3589 (transformation!2443 (rule!4204 t1!34))))) (and b!1390083 b_free!33801) (and b!1390092 b_free!33805 (= (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (toChars!3589 (transformation!2443 (rule!4204 t1!34))))) (and b!1390954 b_free!33813 (= (toChars!3589 (transformation!2443 (h!19509 (t!122413 rules!2550)))) (toChars!3589 (transformation!2443 (rule!4204 t1!34))))) b_lambda!43325)))

(declare-fun b_lambda!43327 () Bool)

(assert (= b_lambda!43323 (or (and b!1390097 b_free!33797 (= (toChars!3589 (transformation!2443 (h!19509 rules!2550))) (toChars!3589 (transformation!2443 (rule!4204 t1!34))))) (and b!1390083 b_free!33801) (and b!1390092 b_free!33805 (= (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (toChars!3589 (transformation!2443 (rule!4204 t1!34))))) (and b!1390954 b_free!33813 (= (toChars!3589 (transformation!2443 (h!19509 (t!122413 rules!2550)))) (toChars!3589 (transformation!2443 (rule!4204 t1!34))))) b_lambda!43327)))

(declare-fun b_lambda!43329 () Bool)

(assert (= b_lambda!43265 (or b!1390085 b_lambda!43329)))

(declare-fun bs!337430 () Bool)

(declare-fun d!397684 () Bool)

(assert (= bs!337430 (and d!397684 b!1390085)))

(declare-fun res!627983 () Bool)

(declare-fun e!888442 () Bool)

(assert (=> bs!337430 (=> (not res!627983) (not e!888442))))

(assert (=> bs!337430 (= res!627983 (validRegex!1639 lt!462584))))

(assert (=> bs!337430 (= (dynLambda!6486 lambda!60111 lt!462584) e!888442)))

(declare-fun b!1390983 () Bool)

(assert (=> b!1390983 (= e!888442 (matchR!1748 lt!462584 lt!462520))))

(assert (= (and bs!337430 res!627983) b!1390983))

(declare-fun m!1566033 () Bool)

(assert (=> bs!337430 m!1566033))

(declare-fun m!1566035 () Bool)

(assert (=> b!1390983 m!1566035))

(assert (=> d!397388 d!397684))

(declare-fun b_lambda!43331 () Bool)

(assert (= b_lambda!43317 (or b!1390077 b_lambda!43331)))

(declare-fun bs!337431 () Bool)

(declare-fun d!397686 () Bool)

(assert (= bs!337431 (and d!397686 b!1390077)))

(declare-fun ruleValid!606 (LexerInterface!2138 Rule!4686) Bool)

(assert (=> bs!337431 (= (dynLambda!6490 lambda!60113 (rule!4204 t2!34)) (ruleValid!606 thiss!19762 (rule!4204 t2!34)))))

(declare-fun m!1566037 () Bool)

(assert (=> bs!337431 m!1566037))

(assert (=> d!397636 d!397686))

(declare-fun b_lambda!43333 () Bool)

(assert (= b_lambda!43315 (or (and b!1390097 b_free!33797 (= (toChars!3589 (transformation!2443 (h!19509 rules!2550))) (toChars!3589 (transformation!2443 (rule!4204 t2!34))))) (and b!1390083 b_free!33801 (= (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (toChars!3589 (transformation!2443 (rule!4204 t2!34))))) (and b!1390092 b_free!33805) (and b!1390954 b_free!33813 (= (toChars!3589 (transformation!2443 (h!19509 (t!122413 rules!2550)))) (toChars!3589 (transformation!2443 (rule!4204 t2!34))))) b_lambda!43333)))

(declare-fun b_lambda!43335 () Bool)

(assert (= b_lambda!43285 (or b!1390084 b_lambda!43335)))

(declare-fun bs!337432 () Bool)

(declare-fun d!397688 () Bool)

(assert (= bs!337432 (and d!397688 b!1390084)))

(assert (=> bs!337432 (= (dynLambda!6490 lambda!60112 (h!19509 rules!2550)) (= (regex!2443 (h!19509 rules!2550)) lt!462519))))

(assert (=> b!1390735 d!397688))

(declare-fun b_lambda!43337 () Bool)

(assert (= b_lambda!43319 (or b!1390077 b_lambda!43337)))

(declare-fun bs!337433 () Bool)

(declare-fun d!397690 () Bool)

(assert (= bs!337433 (and d!397690 b!1390077)))

(assert (=> bs!337433 (= (dynLambda!6490 lambda!60113 (rule!4204 t1!34)) (ruleValid!606 thiss!19762 (rule!4204 t1!34)))))

(declare-fun m!1566039 () Bool)

(assert (=> bs!337433 m!1566039))

(assert (=> d!397638 d!397690))

(declare-fun b_lambda!43339 () Bool)

(assert (= b_lambda!43321 (or b!1390077 b_lambda!43339)))

(declare-fun bs!337434 () Bool)

(declare-fun d!397692 () Bool)

(assert (= bs!337434 (and d!397692 b!1390077)))

(assert (=> bs!337434 (= (dynLambda!6490 lambda!60113 lt!462521) (ruleValid!606 thiss!19762 lt!462521))))

(declare-fun m!1566041 () Bool)

(assert (=> bs!337434 m!1566041))

(assert (=> d!397640 d!397692))

(declare-fun b_lambda!43341 () Bool)

(assert (= b_lambda!43283 (or b!1390084 b_lambda!43341)))

(declare-fun bs!337435 () Bool)

(declare-fun d!397694 () Bool)

(assert (= bs!337435 (and d!397694 b!1390084)))

(assert (=> bs!337435 (= (dynLambda!6490 lambda!60112 lt!462724) (= (regex!2443 lt!462724) lt!462519))))

(assert (=> d!397566 d!397694))

(declare-fun b_lambda!43343 () Bool)

(assert (= b_lambda!43271 (or (and b!1390097 b_free!33797 (= (toChars!3589 (transformation!2443 (h!19509 rules!2550))) (toChars!3589 (transformation!2443 (rule!4204 t2!34))))) (and b!1390083 b_free!33801 (= (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (toChars!3589 (transformation!2443 (rule!4204 t2!34))))) (and b!1390092 b_free!33805) (and b!1390954 b_free!33813 (= (toChars!3589 (transformation!2443 (h!19509 (t!122413 rules!2550)))) (toChars!3589 (transformation!2443 (rule!4204 t2!34))))) b_lambda!43343)))

(declare-fun b_lambda!43345 () Bool)

(assert (= b_lambda!43313 (or b!1390096 b_lambda!43345)))

(declare-fun bs!337436 () Bool)

(declare-fun d!397696 () Bool)

(assert (= bs!337436 (and d!397696 b!1390096)))

(declare-fun res!627984 () Bool)

(declare-fun e!888443 () Bool)

(assert (=> bs!337436 (=> (not res!627984) (not e!888443))))

(assert (=> bs!337436 (= res!627984 (matchR!1748 lt!462518 lt!462770))))

(assert (=> bs!337436 (= (dynLambda!6494 lambda!60109 lt!462770) e!888443)))

(declare-fun b!1390984 () Bool)

(assert (=> b!1390984 (= e!888443 (isPrefix!1145 lt!462523 lt!462770))))

(assert (= (and bs!337436 res!627984) b!1390984))

(declare-fun m!1566043 () Bool)

(assert (=> bs!337436 m!1566043))

(declare-fun m!1566045 () Bool)

(assert (=> b!1390984 m!1566045))

(assert (=> d!397618 d!397696))

(declare-fun b_lambda!43347 () Bool)

(assert (= b_lambda!43259 (or b!1390085 b_lambda!43347)))

(declare-fun bs!337437 () Bool)

(declare-fun d!397698 () Bool)

(assert (= bs!337437 (and d!397698 b!1390085)))

(assert (=> bs!337437 (= (dynLambda!6485 lambda!60110 (h!19509 rules!2550)) (regex!2443 (h!19509 rules!2550)))))

(assert (=> b!1390225 d!397698))

(declare-fun b_lambda!43349 () Bool)

(assert (= b_lambda!43263 (or b!1390085 b_lambda!43349)))

(declare-fun bs!337438 () Bool)

(declare-fun d!397700 () Bool)

(assert (= bs!337438 (and d!397700 b!1390085)))

(declare-fun res!627985 () Bool)

(declare-fun e!888444 () Bool)

(assert (=> bs!337438 (=> (not res!627985) (not e!888444))))

(assert (=> bs!337438 (= res!627985 (validRegex!1639 (h!19511 (map!3125 rules!2550 lambda!60110))))))

(assert (=> bs!337438 (= (dynLambda!6486 lambda!60111 (h!19511 (map!3125 rules!2550 lambda!60110))) e!888444)))

(declare-fun b!1390985 () Bool)

(assert (=> b!1390985 (= e!888444 (matchR!1748 (h!19511 (map!3125 rules!2550 lambda!60110)) lt!462520))))

(assert (= (and bs!337438 res!627985) b!1390985))

(declare-fun m!1566047 () Bool)

(assert (=> bs!337438 m!1566047))

(declare-fun m!1566049 () Bool)

(assert (=> b!1390985 m!1566049))

(assert (=> b!1390272 d!397700))

(check-sat (not b_lambda!43325) (not d!397532) (not b_lambda!43339) b_and!93123 (not b!1390389) (not b!1390877) (not d!397638) (not d!397462) (not d!397376) (not b!1390435) (not b!1390881) (not d!397634) (not b!1390855) (not b!1390364) (not d!397630) (not b!1390698) (not b!1390275) (not d!397406) (not d!397636) (not b!1390906) (not b!1390936) (not b!1390736) (not b!1390643) (not b_lambda!43341) (not b_lambda!43331) (not b!1390273) (not b!1390434) (not b!1390977) (not d!397566) (not bs!337430) (not b!1390895) (not b!1390882) (not d!397650) b_and!93187 (not d!397366) (not d!397646) (not b!1390673) (not d!397362) (not b!1390681) (not b!1390885) (not b!1390901) (not d!397640) (not d!397426) (not bm!92986) (not b!1390928) (not d!397614) (not d!397530) (not d!397420) (not b!1390845) (not b!1390586) (not b!1390848) (not b!1390386) (not d!397622) (not b!1390640) (not b!1390844) (not bm!93019) (not bm!93003) (not d!397568) (not b!1390939) (not d!397662) (not d!397522) (not b!1390679) (not bs!337436) (not b!1390527) (not d!397620) (not d!397666) (not b!1390684) (not b!1390916) (not b_next!34505) (not b!1390734) (not b_lambda!43327) (not bm!92982) (not b!1390985) (not b!1390938) (not b!1390639) (not d!397388) (not b!1390879) (not b!1390983) (not b!1390738) (not b_next!34509) (not b!1390943) b_and!93189 b_and!93131 (not b_lambda!43343) (not b_lambda!43347) (not bm!93012) (not d!397632) (not b!1390672) (not b!1390923) (not b!1390427) (not b!1390843) (not b!1390978) (not b!1390929) (not d!397612) (not bm!93005) (not bs!337431) (not b!1390428) (not b!1390874) (not bm!92978) (not b!1390920) (not d!397642) (not d!397436) (not bs!337433) (not b!1390396) (not b!1390652) (not b!1390682) (not d!397616) (not b!1390905) (not b!1390833) (not bm!92976) (not d!397618) (not d!397374) (not d!397654) (not b!1390645) (not d!397656) (not b!1390573) (not d!397652) (not b_lambda!43335) (not b!1390934) b_and!93127 (not bm!92981) (not b_next!34501) (not b!1390883) (not b!1390914) (not d!397608) (not b!1390308) (not b!1390968) (not b!1390676) (not b_lambda!43345) (not b!1390981) (not b!1390277) (not b!1390677) (not d!397570) (not b!1390967) (not b!1390953) (not d!397610) (not b_lambda!43329) (not d!397416) (not b!1390931) (not b!1390650) (not b!1390526) (not b!1390344) (not d!397558) b_and!93185 (not d!397664) (not b_lambda!43337) (not tb!72813) (not b_next!34515) (not tb!72819) (not b_next!34517) (not b!1390868) (not b!1390952) (not b!1390850) (not d!397626) (not bs!337434) (not d!397550) (not b_lambda!43333) (not b!1390338) (not b!1390363) (not b!1390831) (not d!397606) (not b!1390972) (not b!1390355) (not b!1390337) (not b!1390385) (not b_next!34507) (not b!1390528) (not b!1390433) b_and!93181 (not b_next!34503) (not d!397668) (not d!397554) (not b!1390980) (not b!1390918) (not b!1390940) (not b!1390432) (not b!1390346) (not b!1390225) (not d!397458) (not d!397422) (not b!1390675) (not d!397444) (not b!1390897) (not b!1390966) (not b!1390678) (not b!1390857) (not bs!337438) (not bm!92980) (not b!1390982) (not b!1390430) (not d!397680) (not b!1390890) (not b!1390200) (not d!397560) (not b!1390670) (not b!1390984) (not d!397428) (not b!1390867) (not d!397418) (not b!1390429) (not d!397624) (not b!1390683) (not d!397672) (not bm!92977) (not b_lambda!43349) (not d!397552) (not b!1390907) (not d!397648) (not b!1390345) (not d!397432) (not b!1390970) (not d!397658) (not b!1390909) (not bm!93013) (not b!1390930) (not b!1390837) (not d!397628) (not b!1390921) (not d!397644) (not b!1390902) (not d!397556) tp_is_empty!6787 (not d!397670) (not b!1390834) (not b!1390971) (not d!397660) (not bm!93020) (not b_next!34499) (not d!397520) (not d!397440) b_and!93183 (not b!1390830) (not b!1390884) (not b!1390343) (not b!1390911) (not b!1390900) (not b!1390888) (not d!397682) (not b!1390904) (not b!1390878))
(check-sat b_and!93123 b_and!93187 (not b_next!34505) b_and!93131 b_and!93127 (not b_next!34501) (not b_next!34509) b_and!93189 b_and!93185 (not b_next!34515) (not b_next!34517) (not b_next!34507) b_and!93181 (not b_next!34503) (not b_next!34499) b_and!93183)
(get-model)

(declare-fun d!397702 () Bool)

(declare-fun e!888446 () Bool)

(assert (=> d!397702 e!888446))

(declare-fun res!627996 () Bool)

(assert (=> d!397702 (=> (not res!627996) (not e!888446))))

(declare-fun lt!462809 () List!14173)

(assert (=> d!397702 (= res!627996 (= (content!2079 lt!462809) ((_ map or) (content!2079 (ite c!228821 call!92986 call!92988)) (content!2079 (ite c!228821 call!92988 call!92986)))))))

(declare-fun e!888445 () List!14173)

(assert (=> d!397702 (= lt!462809 e!888445)))

(declare-fun c!228925 () Bool)

(assert (=> d!397702 (= c!228925 ((_ is Nil!14107) (ite c!228821 call!92986 call!92988)))))

(assert (=> d!397702 (= (++!3664 (ite c!228821 call!92986 call!92988) (ite c!228821 call!92988 call!92986)) lt!462809)))

(declare-fun b!1390988 () Bool)

(declare-fun res!627995 () Bool)

(assert (=> b!1390988 (=> (not res!627995) (not e!888446))))

(assert (=> b!1390988 (= res!627995 (= (size!11605 lt!462809) (+ (size!11605 (ite c!228821 call!92986 call!92988)) (size!11605 (ite c!228821 call!92988 call!92986)))))))

(declare-fun b!1390987 () Bool)

(assert (=> b!1390987 (= e!888445 (Cons!14107 (h!19508 (ite c!228821 call!92986 call!92988)) (++!3664 (t!122412 (ite c!228821 call!92986 call!92988)) (ite c!228821 call!92988 call!92986))))))

(declare-fun b!1390986 () Bool)

(assert (=> b!1390986 (= e!888445 (ite c!228821 call!92988 call!92986))))

(declare-fun b!1390989 () Bool)

(assert (=> b!1390989 (= e!888446 (or (not (= (ite c!228821 call!92988 call!92986) Nil!14107)) (= lt!462809 (ite c!228821 call!92986 call!92988))))))

(assert (= (and d!397702 c!228925) b!1390986))

(assert (= (and d!397702 (not c!228925)) b!1390987))

(assert (= (and d!397702 res!627996) b!1390988))

(assert (= (and b!1390988 res!627995) b!1390989))

(declare-fun m!1566051 () Bool)

(assert (=> d!397702 m!1566051))

(declare-fun m!1566053 () Bool)

(assert (=> d!397702 m!1566053))

(declare-fun m!1566055 () Bool)

(assert (=> d!397702 m!1566055))

(declare-fun m!1566057 () Bool)

(assert (=> b!1390988 m!1566057))

(declare-fun m!1566059 () Bool)

(assert (=> b!1390988 m!1566059))

(declare-fun m!1566061 () Bool)

(assert (=> b!1390988 m!1566061))

(declare-fun m!1566063 () Bool)

(assert (=> b!1390987 m!1566063))

(assert (=> bm!92982 d!397702))

(declare-fun d!397704 () Bool)

(assert (=> d!397704 (= (isEmpty!8552 (_1!7743 lt!462805)) ((_ is Nil!14109) (_1!7743 lt!462805)))))

(assert (=> b!1390931 d!397704))

(declare-fun d!397706 () Bool)

(declare-fun c!228928 () Bool)

(assert (=> d!397706 (= c!228928 ((_ is Nil!14107) lt!462520))))

(declare-fun e!888449 () (InoxSet C!7804))

(assert (=> d!397706 (= (content!2079 lt!462520) e!888449)))

(declare-fun b!1390994 () Bool)

(assert (=> b!1390994 (= e!888449 ((as const (Array C!7804 Bool)) false))))

(declare-fun b!1390995 () Bool)

(assert (=> b!1390995 (= e!888449 ((_ map or) (store ((as const (Array C!7804 Bool)) false) (h!19508 lt!462520) true) (content!2079 (t!122412 lt!462520))))))

(assert (= (and d!397706 c!228928) b!1390994))

(assert (= (and d!397706 (not c!228928)) b!1390995))

(declare-fun m!1566065 () Bool)

(assert (=> b!1390995 m!1566065))

(declare-fun m!1566067 () Bool)

(assert (=> b!1390995 m!1566067))

(assert (=> d!397550 d!397706))

(declare-fun d!397708 () Bool)

(declare-fun e!888452 () Bool)

(assert (=> d!397708 e!888452))

(declare-fun res!628001 () Bool)

(assert (=> d!397708 (=> res!628001 e!888452)))

(declare-fun lt!462812 () Option!2704)

(assert (=> d!397708 (= res!628001 (isEmpty!8554 lt!462812))))

(declare-fun e!888450 () Option!2704)

(assert (=> d!397708 (= lt!462812 e!888450)))

(declare-fun c!228929 () Bool)

(assert (=> d!397708 (= c!228929 (and ((_ is Cons!14108) (t!122413 rules!2550)) ((_ is Nil!14108) (t!122413 (t!122413 rules!2550)))))))

(declare-fun lt!462811 () Unit!20367)

(declare-fun lt!462810 () Unit!20367)

(assert (=> d!397708 (= lt!462811 lt!462810)))

(assert (=> d!397708 (isPrefix!1145 lt!462537 lt!462537)))

(assert (=> d!397708 (= lt!462810 (lemmaIsPrefixRefl!804 lt!462537 lt!462537))))

(assert (=> d!397708 (rulesValidInductive!787 thiss!19762 (t!122413 rules!2550))))

(assert (=> d!397708 (= (maxPrefix!1112 thiss!19762 (t!122413 rules!2550) lt!462537) lt!462812)))

(declare-fun b!1390996 () Bool)

(declare-fun e!888451 () Bool)

(assert (=> b!1390996 (= e!888451 (contains!2709 (t!122413 rules!2550) (rule!4204 (_1!7741 (get!4379 lt!462812)))))))

(declare-fun b!1390997 () Bool)

(declare-fun res!627997 () Bool)

(assert (=> b!1390997 (=> (not res!627997) (not e!888451))))

(assert (=> b!1390997 (= res!627997 (= (++!3664 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462812)))) (_2!7741 (get!4379 lt!462812))) lt!462537))))

(declare-fun b!1390998 () Bool)

(declare-fun res!627999 () Bool)

(assert (=> b!1390998 (=> (not res!627999) (not e!888451))))

(assert (=> b!1390998 (= res!627999 (= (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462812)))) (originalCharacters!3305 (_1!7741 (get!4379 lt!462812)))))))

(declare-fun bm!93021 () Bool)

(declare-fun call!93026 () Option!2704)

(assert (=> bm!93021 (= call!93026 (maxPrefixOneRule!630 thiss!19762 (h!19509 (t!122413 rules!2550)) lt!462537))))

(declare-fun b!1390999 () Bool)

(declare-fun res!628000 () Bool)

(assert (=> b!1390999 (=> (not res!628000) (not e!888451))))

(assert (=> b!1390999 (= res!628000 (matchR!1748 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462812)))) (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462812))))))))

(declare-fun b!1391000 () Bool)

(assert (=> b!1391000 (= e!888450 call!93026)))

(declare-fun b!1391001 () Bool)

(declare-fun res!628003 () Bool)

(assert (=> b!1391001 (=> (not res!628003) (not e!888451))))

(assert (=> b!1391001 (= res!628003 (< (size!11605 (_2!7741 (get!4379 lt!462812))) (size!11605 lt!462537)))))

(declare-fun b!1391002 () Bool)

(declare-fun res!628002 () Bool)

(assert (=> b!1391002 (=> (not res!628002) (not e!888451))))

(assert (=> b!1391002 (= res!628002 (= (value!79258 (_1!7741 (get!4379 lt!462812))) (apply!3551 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462812)))) (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!462812)))))))))

(declare-fun b!1391003 () Bool)

(assert (=> b!1391003 (= e!888452 e!888451)))

(declare-fun res!627998 () Bool)

(assert (=> b!1391003 (=> (not res!627998) (not e!888451))))

(assert (=> b!1391003 (= res!627998 (isDefined!2232 lt!462812))))

(declare-fun b!1391004 () Bool)

(declare-fun lt!462814 () Option!2704)

(declare-fun lt!462813 () Option!2704)

(assert (=> b!1391004 (= e!888450 (ite (and ((_ is None!2703) lt!462814) ((_ is None!2703) lt!462813)) None!2703 (ite ((_ is None!2703) lt!462813) lt!462814 (ite ((_ is None!2703) lt!462814) lt!462813 (ite (>= (size!11595 (_1!7741 (v!21586 lt!462814))) (size!11595 (_1!7741 (v!21586 lt!462813)))) lt!462814 lt!462813)))))))

(assert (=> b!1391004 (= lt!462814 call!93026)))

(assert (=> b!1391004 (= lt!462813 (maxPrefix!1112 thiss!19762 (t!122413 (t!122413 rules!2550)) lt!462537))))

(assert (= (and d!397708 c!228929) b!1391000))

(assert (= (and d!397708 (not c!228929)) b!1391004))

(assert (= (or b!1391000 b!1391004) bm!93021))

(assert (= (and d!397708 (not res!628001)) b!1391003))

(assert (= (and b!1391003 res!627998) b!1390998))

(assert (= (and b!1390998 res!627999) b!1391001))

(assert (= (and b!1391001 res!628003) b!1390997))

(assert (= (and b!1390997 res!627997) b!1391002))

(assert (= (and b!1391002 res!628002) b!1390999))

(assert (= (and b!1390999 res!628000) b!1390996))

(declare-fun m!1566069 () Bool)

(assert (=> b!1391004 m!1566069))

(declare-fun m!1566071 () Bool)

(assert (=> b!1391002 m!1566071))

(declare-fun m!1566073 () Bool)

(assert (=> b!1391002 m!1566073))

(assert (=> b!1391002 m!1566073))

(declare-fun m!1566075 () Bool)

(assert (=> b!1391002 m!1566075))

(assert (=> b!1390998 m!1566071))

(declare-fun m!1566077 () Bool)

(assert (=> b!1390998 m!1566077))

(assert (=> b!1390998 m!1566077))

(declare-fun m!1566079 () Bool)

(assert (=> b!1390998 m!1566079))

(declare-fun m!1566081 () Bool)

(assert (=> bm!93021 m!1566081))

(assert (=> b!1390996 m!1566071))

(declare-fun m!1566083 () Bool)

(assert (=> b!1390996 m!1566083))

(declare-fun m!1566085 () Bool)

(assert (=> d!397708 m!1566085))

(assert (=> d!397708 m!1565611))

(assert (=> d!397708 m!1565613))

(declare-fun m!1566087 () Bool)

(assert (=> d!397708 m!1566087))

(assert (=> b!1391001 m!1566071))

(declare-fun m!1566089 () Bool)

(assert (=> b!1391001 m!1566089))

(assert (=> b!1391001 m!1565617))

(assert (=> b!1390999 m!1566071))

(assert (=> b!1390999 m!1566077))

(assert (=> b!1390999 m!1566077))

(assert (=> b!1390999 m!1566079))

(assert (=> b!1390999 m!1566079))

(declare-fun m!1566091 () Bool)

(assert (=> b!1390999 m!1566091))

(declare-fun m!1566093 () Bool)

(assert (=> b!1391003 m!1566093))

(assert (=> b!1390997 m!1566071))

(assert (=> b!1390997 m!1566077))

(assert (=> b!1390997 m!1566077))

(assert (=> b!1390997 m!1566079))

(assert (=> b!1390997 m!1566079))

(declare-fun m!1566095 () Bool)

(assert (=> b!1390997 m!1566095))

(assert (=> b!1390684 d!397708))

(declare-fun d!397710 () Bool)

(assert (=> d!397710 (= (head!2543 lt!462520) (h!19508 lt!462520))))

(assert (=> b!1390639 d!397710))

(declare-fun d!397712 () Bool)

(declare-fun c!228930 () Bool)

(assert (=> d!397712 (= c!228930 ((_ is Nil!14107) lt!462764))))

(declare-fun e!888453 () (InoxSet C!7804))

(assert (=> d!397712 (= (content!2079 lt!462764) e!888453)))

(declare-fun b!1391005 () Bool)

(assert (=> b!1391005 (= e!888453 ((as const (Array C!7804 Bool)) false))))

(declare-fun b!1391006 () Bool)

(assert (=> b!1391006 (= e!888453 ((_ map or) (store ((as const (Array C!7804 Bool)) false) (h!19508 lt!462764) true) (content!2079 (t!122412 lt!462764))))))

(assert (= (and d!397712 c!228930) b!1391005))

(assert (= (and d!397712 (not c!228930)) b!1391006))

(declare-fun m!1566097 () Bool)

(assert (=> b!1391006 m!1566097))

(declare-fun m!1566099 () Bool)

(assert (=> b!1391006 m!1566099))

(assert (=> d!397614 d!397712))

(declare-fun d!397714 () Bool)

(declare-fun c!228931 () Bool)

(assert (=> d!397714 (= c!228931 ((_ is Nil!14107) lt!462523))))

(declare-fun e!888454 () (InoxSet C!7804))

(assert (=> d!397714 (= (content!2079 lt!462523) e!888454)))

(declare-fun b!1391007 () Bool)

(assert (=> b!1391007 (= e!888454 ((as const (Array C!7804 Bool)) false))))

(declare-fun b!1391008 () Bool)

(assert (=> b!1391008 (= e!888454 ((_ map or) (store ((as const (Array C!7804 Bool)) false) (h!19508 lt!462523) true) (content!2079 (t!122412 lt!462523))))))

(assert (= (and d!397714 c!228931) b!1391007))

(assert (= (and d!397714 (not c!228931)) b!1391008))

(declare-fun m!1566101 () Bool)

(assert (=> b!1391008 m!1566101))

(declare-fun m!1566103 () Bool)

(assert (=> b!1391008 m!1566103))

(assert (=> d!397614 d!397714))

(declare-fun d!397716 () Bool)

(declare-fun c!228932 () Bool)

(assert (=> d!397716 (= c!228932 ((_ is Nil!14107) (getSuffix!603 lt!462520 lt!462523)))))

(declare-fun e!888455 () (InoxSet C!7804))

(assert (=> d!397716 (= (content!2079 (getSuffix!603 lt!462520 lt!462523)) e!888455)))

(declare-fun b!1391009 () Bool)

(assert (=> b!1391009 (= e!888455 ((as const (Array C!7804 Bool)) false))))

(declare-fun b!1391010 () Bool)

(assert (=> b!1391010 (= e!888455 ((_ map or) (store ((as const (Array C!7804 Bool)) false) (h!19508 (getSuffix!603 lt!462520 lt!462523)) true) (content!2079 (t!122412 (getSuffix!603 lt!462520 lt!462523)))))))

(assert (= (and d!397716 c!228932) b!1391009))

(assert (= (and d!397716 (not c!228932)) b!1391010))

(declare-fun m!1566105 () Bool)

(assert (=> b!1391010 m!1566105))

(declare-fun m!1566107 () Bool)

(assert (=> b!1391010 m!1566107))

(assert (=> d!397614 d!397716))

(declare-fun d!397718 () Bool)

(declare-fun res!628004 () Bool)

(declare-fun e!888456 () Bool)

(assert (=> d!397718 (=> res!628004 e!888456)))

(assert (=> d!397718 (= res!628004 (not ((_ is Cons!14108) (t!122413 rules!2550))))))

(assert (=> d!397718 (= (sepAndNonSepRulesDisjointChars!816 rules!2550 (t!122413 rules!2550)) e!888456)))

(declare-fun b!1391011 () Bool)

(declare-fun e!888457 () Bool)

(assert (=> b!1391011 (= e!888456 e!888457)))

(declare-fun res!628005 () Bool)

(assert (=> b!1391011 (=> (not res!628005) (not e!888457))))

(assert (=> b!1391011 (= res!628005 (ruleDisjointCharsFromAllFromOtherType!390 (h!19509 (t!122413 rules!2550)) rules!2550))))

(declare-fun b!1391012 () Bool)

(assert (=> b!1391012 (= e!888457 (sepAndNonSepRulesDisjointChars!816 rules!2550 (t!122413 (t!122413 rules!2550))))))

(assert (= (and d!397718 (not res!628004)) b!1391011))

(assert (= (and b!1391011 res!628005) b!1391012))

(declare-fun m!1566109 () Bool)

(assert (=> b!1391011 m!1566109))

(declare-fun m!1566111 () Bool)

(assert (=> b!1391012 m!1566111))

(assert (=> b!1390364 d!397718))

(declare-fun d!397720 () Bool)

(assert (=> d!397720 (= (list!5478 (_1!7742 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t2!34))))) (list!5482 (c!228750 (_1!7742 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t2!34)))))))))

(declare-fun bs!337439 () Bool)

(assert (= bs!337439 d!397720))

(declare-fun m!1566113 () Bool)

(assert (=> bs!337439 m!1566113))

(assert (=> d!397644 d!397720))

(declare-fun d!397722 () Bool)

(declare-fun lt!462817 () Int)

(assert (=> d!397722 (= lt!462817 (size!11606 (list!5478 (_1!7742 lt!462788))))))

(declare-fun size!11609 (Conc!4647) Int)

(assert (=> d!397722 (= lt!462817 (size!11609 (c!228750 (_1!7742 lt!462788))))))

(assert (=> d!397722 (= (size!11607 (_1!7742 lt!462788)) lt!462817)))

(declare-fun bs!337440 () Bool)

(assert (= bs!337440 d!397722))

(declare-fun m!1566115 () Bool)

(assert (=> bs!337440 m!1566115))

(assert (=> bs!337440 m!1566115))

(declare-fun m!1566117 () Bool)

(assert (=> bs!337440 m!1566117))

(declare-fun m!1566119 () Bool)

(assert (=> bs!337440 m!1566119))

(assert (=> d!397644 d!397722))

(assert (=> d!397644 d!397626))

(assert (=> d!397644 d!397628))

(assert (=> d!397644 d!397454))

(declare-fun b!1391013 () Bool)

(declare-fun e!888459 () Bool)

(declare-fun lt!462818 () tuple2!13712)

(assert (=> b!1391013 (= e!888459 (not (isEmpty!8556 (_1!7742 lt!462818))))))

(declare-fun b!1391014 () Bool)

(declare-fun res!628007 () Bool)

(declare-fun e!888460 () Bool)

(assert (=> b!1391014 (=> (not res!628007) (not e!888460))))

(assert (=> b!1391014 (= res!628007 (= (list!5478 (_1!7742 lt!462818)) (_1!7743 (lexList!652 thiss!19762 rules!2550 (list!5477 (print!902 thiss!19762 (singletonSeq!1092 t2!34)))))))))

(declare-fun b!1391016 () Bool)

(assert (=> b!1391016 (= e!888460 (= (list!5477 (_2!7742 lt!462818)) (_2!7743 (lexList!652 thiss!19762 rules!2550 (list!5477 (print!902 thiss!19762 (singletonSeq!1092 t2!34)))))))))

(declare-fun b!1391017 () Bool)

(declare-fun e!888458 () Bool)

(assert (=> b!1391017 (= e!888458 e!888459)))

(declare-fun res!628006 () Bool)

(assert (=> b!1391017 (= res!628006 (< (size!11596 (_2!7742 lt!462818)) (size!11596 (print!902 thiss!19762 (singletonSeq!1092 t2!34)))))))

(assert (=> b!1391017 (=> (not res!628006) (not e!888459))))

(declare-fun b!1391015 () Bool)

(assert (=> b!1391015 (= e!888458 (= (_2!7742 lt!462818) (print!902 thiss!19762 (singletonSeq!1092 t2!34))))))

(declare-fun d!397724 () Bool)

(assert (=> d!397724 e!888460))

(declare-fun res!628008 () Bool)

(assert (=> d!397724 (=> (not res!628008) (not e!888460))))

(assert (=> d!397724 (= res!628008 e!888458)))

(declare-fun c!228933 () Bool)

(assert (=> d!397724 (= c!228933 (> (size!11607 (_1!7742 lt!462818)) 0))))

(assert (=> d!397724 (= lt!462818 (lexTailRecV2!431 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t2!34)) (BalanceConc!9233 Empty!4646) (print!902 thiss!19762 (singletonSeq!1092 t2!34)) (BalanceConc!9235 Empty!4647)))))

(assert (=> d!397724 (= (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t2!34))) lt!462818)))

(assert (= (and d!397724 c!228933) b!1391017))

(assert (= (and d!397724 (not c!228933)) b!1391015))

(assert (= (and b!1391017 res!628006) b!1391013))

(assert (= (and d!397724 res!628008) b!1391014))

(assert (= (and b!1391014 res!628007) b!1391016))

(declare-fun m!1566121 () Bool)

(assert (=> b!1391013 m!1566121))

(declare-fun m!1566123 () Bool)

(assert (=> b!1391014 m!1566123))

(assert (=> b!1391014 m!1564875))

(declare-fun m!1566125 () Bool)

(assert (=> b!1391014 m!1566125))

(assert (=> b!1391014 m!1566125))

(declare-fun m!1566127 () Bool)

(assert (=> b!1391014 m!1566127))

(declare-fun m!1566129 () Bool)

(assert (=> b!1391017 m!1566129))

(assert (=> b!1391017 m!1564875))

(declare-fun m!1566131 () Bool)

(assert (=> b!1391017 m!1566131))

(declare-fun m!1566133 () Bool)

(assert (=> d!397724 m!1566133))

(assert (=> d!397724 m!1564875))

(assert (=> d!397724 m!1564875))

(declare-fun m!1566135 () Bool)

(assert (=> d!397724 m!1566135))

(declare-fun m!1566137 () Bool)

(assert (=> b!1391016 m!1566137))

(assert (=> b!1391016 m!1564875))

(assert (=> b!1391016 m!1566125))

(assert (=> b!1391016 m!1566125))

(assert (=> b!1391016 m!1566127))

(assert (=> d!397644 d!397724))

(declare-fun d!397726 () Bool)

(assert (=> d!397726 (= (list!5478 (singletonSeq!1092 t2!34)) (list!5482 (c!228750 (singletonSeq!1092 t2!34))))))

(declare-fun bs!337441 () Bool)

(assert (= bs!337441 d!397726))

(declare-fun m!1566139 () Bool)

(assert (=> bs!337441 m!1566139))

(assert (=> d!397644 d!397726))

(declare-fun d!397728 () Bool)

(declare-fun e!888468 () Bool)

(assert (=> d!397728 e!888468))

(declare-fun res!628019 () Bool)

(assert (=> d!397728 (=> res!628019 e!888468)))

(declare-fun lt!462821 () Bool)

(assert (=> d!397728 (= res!628019 (not lt!462821))))

(declare-fun e!888467 () Bool)

(assert (=> d!397728 (= lt!462821 e!888467)))

(declare-fun res!628018 () Bool)

(assert (=> d!397728 (=> res!628018 e!888467)))

(assert (=> d!397728 (= res!628018 ((_ is Nil!14107) lt!462523))))

(assert (=> d!397728 (= (isPrefix!1145 lt!462523 lt!462770) lt!462821)))

(declare-fun b!1391029 () Bool)

(assert (=> b!1391029 (= e!888468 (>= (size!11605 lt!462770) (size!11605 lt!462523)))))

(declare-fun b!1391026 () Bool)

(declare-fun e!888469 () Bool)

(assert (=> b!1391026 (= e!888467 e!888469)))

(declare-fun res!628020 () Bool)

(assert (=> b!1391026 (=> (not res!628020) (not e!888469))))

(assert (=> b!1391026 (= res!628020 (not ((_ is Nil!14107) lt!462770)))))

(declare-fun b!1391027 () Bool)

(declare-fun res!628017 () Bool)

(assert (=> b!1391027 (=> (not res!628017) (not e!888469))))

(assert (=> b!1391027 (= res!628017 (= (head!2543 lt!462523) (head!2543 lt!462770)))))

(declare-fun b!1391028 () Bool)

(assert (=> b!1391028 (= e!888469 (isPrefix!1145 (tail!2020 lt!462523) (tail!2020 lt!462770)))))

(assert (= (and d!397728 (not res!628018)) b!1391026))

(assert (= (and b!1391026 res!628020) b!1391027))

(assert (= (and b!1391027 res!628017) b!1391028))

(assert (= (and d!397728 (not res!628019)) b!1391029))

(declare-fun m!1566141 () Bool)

(assert (=> b!1391029 m!1566141))

(assert (=> b!1391029 m!1565837))

(assert (=> b!1391027 m!1565989))

(declare-fun m!1566143 () Bool)

(assert (=> b!1391027 m!1566143))

(assert (=> b!1391028 m!1565993))

(declare-fun m!1566145 () Bool)

(assert (=> b!1391028 m!1566145))

(assert (=> b!1391028 m!1565993))

(assert (=> b!1391028 m!1566145))

(declare-fun m!1566147 () Bool)

(assert (=> b!1391028 m!1566147))

(assert (=> b!1390984 d!397728))

(declare-fun d!397730 () Bool)

(declare-fun c!228938 () Bool)

(assert (=> d!397730 (= c!228938 ((_ is Empty!4646) (c!228748 lt!462514)))))

(declare-fun e!888474 () List!14173)

(assert (=> d!397730 (= (list!5481 (c!228748 lt!462514)) e!888474)))

(declare-fun b!1391039 () Bool)

(declare-fun e!888475 () List!14173)

(assert (=> b!1391039 (= e!888474 e!888475)))

(declare-fun c!228939 () Bool)

(assert (=> b!1391039 (= c!228939 ((_ is Leaf!7064) (c!228748 lt!462514)))))

(declare-fun b!1391040 () Bool)

(declare-fun list!5483 (IArray!9297) List!14173)

(assert (=> b!1391040 (= e!888475 (list!5483 (xs!7373 (c!228748 lt!462514))))))

(declare-fun b!1391041 () Bool)

(assert (=> b!1391041 (= e!888475 (++!3664 (list!5481 (left!12053 (c!228748 lt!462514))) (list!5481 (right!12383 (c!228748 lt!462514)))))))

(declare-fun b!1391038 () Bool)

(assert (=> b!1391038 (= e!888474 Nil!14107)))

(assert (= (and d!397730 c!228938) b!1391038))

(assert (= (and d!397730 (not c!228938)) b!1391039))

(assert (= (and b!1391039 c!228939) b!1391040))

(assert (= (and b!1391039 (not c!228939)) b!1391041))

(declare-fun m!1566149 () Bool)

(assert (=> b!1391040 m!1566149))

(declare-fun m!1566151 () Bool)

(assert (=> b!1391041 m!1566151))

(declare-fun m!1566153 () Bool)

(assert (=> b!1391041 m!1566153))

(assert (=> b!1391041 m!1566151))

(assert (=> b!1391041 m!1566153))

(declare-fun m!1566155 () Bool)

(assert (=> b!1391041 m!1566155))

(assert (=> d!397670 d!397730))

(declare-fun d!397732 () Bool)

(declare-fun lt!462822 () Bool)

(assert (=> d!397732 (= lt!462822 (select (content!2079 (t!122412 lt!462523)) lt!462513))))

(declare-fun e!888476 () Bool)

(assert (=> d!397732 (= lt!462822 e!888476)))

(declare-fun res!628021 () Bool)

(assert (=> d!397732 (=> (not res!628021) (not e!888476))))

(assert (=> d!397732 (= res!628021 ((_ is Cons!14107) (t!122412 lt!462523)))))

(assert (=> d!397732 (= (contains!2710 (t!122412 lt!462523) lt!462513) lt!462822)))

(declare-fun b!1391042 () Bool)

(declare-fun e!888477 () Bool)

(assert (=> b!1391042 (= e!888476 e!888477)))

(declare-fun res!628022 () Bool)

(assert (=> b!1391042 (=> res!628022 e!888477)))

(assert (=> b!1391042 (= res!628022 (= (h!19508 (t!122412 lt!462523)) lt!462513))))

(declare-fun b!1391043 () Bool)

(assert (=> b!1391043 (= e!888477 (contains!2710 (t!122412 (t!122412 lt!462523)) lt!462513))))

(assert (= (and d!397732 res!628021) b!1391042))

(assert (= (and b!1391042 (not res!628022)) b!1391043))

(assert (=> d!397732 m!1566103))

(declare-fun m!1566157 () Bool)

(assert (=> d!397732 m!1566157))

(declare-fun m!1566159 () Bool)

(assert (=> b!1391043 m!1566159))

(assert (=> b!1390916 d!397732))

(declare-fun d!397734 () Bool)

(declare-fun charsToBigInt!1 (List!14172) Int)

(assert (=> d!397734 (= (inv!17 (value!79258 t1!34)) (= (charsToBigInt!1 (text!18179 (value!79258 t1!34))) (value!79250 (value!79258 t1!34))))))

(declare-fun bs!337442 () Bool)

(assert (= bs!337442 d!397734))

(declare-fun m!1566161 () Bool)

(assert (=> bs!337442 m!1566161))

(assert (=> b!1390673 d!397734))

(declare-fun d!397736 () Bool)

(assert (=> d!397736 (dynLambda!6490 lambda!60113 lt!462521)))

(assert (=> d!397736 true))

(declare-fun _$7!747 () Unit!20367)

(assert (=> d!397736 (= (choose!8554 rules!2550 lambda!60113 lt!462521) _$7!747)))

(declare-fun b_lambda!43351 () Bool)

(assert (=> (not b_lambda!43351) (not d!397736)))

(declare-fun bs!337443 () Bool)

(assert (= bs!337443 d!397736))

(assert (=> bs!337443 m!1565919))

(assert (=> d!397640 d!397736))

(declare-fun d!397738 () Bool)

(declare-fun res!628027 () Bool)

(declare-fun e!888482 () Bool)

(assert (=> d!397738 (=> res!628027 e!888482)))

(assert (=> d!397738 (= res!628027 ((_ is Nil!14108) rules!2550))))

(assert (=> d!397738 (= (forall!3434 rules!2550 lambda!60113) e!888482)))

(declare-fun b!1391048 () Bool)

(declare-fun e!888483 () Bool)

(assert (=> b!1391048 (= e!888482 e!888483)))

(declare-fun res!628028 () Bool)

(assert (=> b!1391048 (=> (not res!628028) (not e!888483))))

(assert (=> b!1391048 (= res!628028 (dynLambda!6490 lambda!60113 (h!19509 rules!2550)))))

(declare-fun b!1391049 () Bool)

(assert (=> b!1391049 (= e!888483 (forall!3434 (t!122413 rules!2550) lambda!60113))))

(assert (= (and d!397738 (not res!628027)) b!1391048))

(assert (= (and b!1391048 res!628028) b!1391049))

(declare-fun b_lambda!43353 () Bool)

(assert (=> (not b_lambda!43353) (not b!1391048)))

(declare-fun m!1566163 () Bool)

(assert (=> b!1391048 m!1566163))

(declare-fun m!1566165 () Bool)

(assert (=> b!1391049 m!1566165))

(assert (=> d!397640 d!397738))

(declare-fun d!397740 () Bool)

(declare-fun charsToBigInt!0 (List!14172 Int) Int)

(assert (=> d!397740 (= (inv!15 (value!79258 t1!34)) (= (charsToBigInt!0 (text!18180 (value!79258 t1!34)) 0) (value!79253 (value!79258 t1!34))))))

(declare-fun bs!337444 () Bool)

(assert (= bs!337444 d!397740))

(declare-fun m!1566167 () Bool)

(assert (=> bs!337444 m!1566167))

(assert (=> b!1390672 d!397740))

(declare-fun d!397742 () Bool)

(declare-fun isBalanced!1375 (Conc!4646) Bool)

(assert (=> d!397742 (= (inv!18449 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34))) (isBalanced!1375 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34)))))))

(declare-fun bs!337445 () Bool)

(assert (= bs!337445 d!397742))

(declare-fun m!1566169 () Bool)

(assert (=> bs!337445 m!1566169))

(assert (=> tb!72813 d!397742))

(declare-fun d!397744 () Bool)

(declare-fun e!888485 () Bool)

(assert (=> d!397744 e!888485))

(declare-fun res!628030 () Bool)

(assert (=> d!397744 (=> (not res!628030) (not e!888485))))

(declare-fun lt!462823 () List!14173)

(assert (=> d!397744 (= res!628030 (= (content!2079 lt!462823) ((_ map or) (content!2079 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639))))) (content!2079 (_2!7741 (get!4379 lt!462639))))))))

(declare-fun e!888484 () List!14173)

(assert (=> d!397744 (= lt!462823 e!888484)))

(declare-fun c!228940 () Bool)

(assert (=> d!397744 (= c!228940 ((_ is Nil!14107) (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639))))))))

(assert (=> d!397744 (= (++!3664 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639)))) (_2!7741 (get!4379 lt!462639))) lt!462823)))

(declare-fun b!1391052 () Bool)

(declare-fun res!628029 () Bool)

(assert (=> b!1391052 (=> (not res!628029) (not e!888485))))

(assert (=> b!1391052 (= res!628029 (= (size!11605 lt!462823) (+ (size!11605 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639))))) (size!11605 (_2!7741 (get!4379 lt!462639))))))))

(declare-fun b!1391051 () Bool)

(assert (=> b!1391051 (= e!888484 (Cons!14107 (h!19508 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639))))) (++!3664 (t!122412 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639))))) (_2!7741 (get!4379 lt!462639)))))))

(declare-fun b!1391050 () Bool)

(assert (=> b!1391050 (= e!888484 (_2!7741 (get!4379 lt!462639)))))

(declare-fun b!1391053 () Bool)

(assert (=> b!1391053 (= e!888485 (or (not (= (_2!7741 (get!4379 lt!462639)) Nil!14107)) (= lt!462823 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639)))))))))

(assert (= (and d!397744 c!228940) b!1391050))

(assert (= (and d!397744 (not c!228940)) b!1391051))

(assert (= (and d!397744 res!628030) b!1391052))

(assert (= (and b!1391052 res!628029) b!1391053))

(declare-fun m!1566171 () Bool)

(assert (=> d!397744 m!1566171))

(assert (=> d!397744 m!1565299))

(declare-fun m!1566173 () Bool)

(assert (=> d!397744 m!1566173))

(declare-fun m!1566175 () Bool)

(assert (=> d!397744 m!1566175))

(declare-fun m!1566177 () Bool)

(assert (=> b!1391052 m!1566177))

(assert (=> b!1391052 m!1565299))

(declare-fun m!1566179 () Bool)

(assert (=> b!1391052 m!1566179))

(assert (=> b!1391052 m!1565313))

(declare-fun m!1566181 () Bool)

(assert (=> b!1391051 m!1566181))

(assert (=> b!1390428 d!397744))

(declare-fun d!397746 () Bool)

(assert (=> d!397746 (= (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639)))) (list!5481 (c!228748 (charsOf!1415 (_1!7741 (get!4379 lt!462639))))))))

(declare-fun bs!337446 () Bool)

(assert (= bs!337446 d!397746))

(declare-fun m!1566183 () Bool)

(assert (=> bs!337446 m!1566183))

(assert (=> b!1390428 d!397746))

(declare-fun d!397748 () Bool)

(declare-fun lt!462824 () BalanceConc!9232)

(assert (=> d!397748 (= (list!5477 lt!462824) (originalCharacters!3305 (_1!7741 (get!4379 lt!462639))))))

(assert (=> d!397748 (= lt!462824 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639))))) (value!79258 (_1!7741 (get!4379 lt!462639)))))))

(assert (=> d!397748 (= (charsOf!1415 (_1!7741 (get!4379 lt!462639))) lt!462824)))

(declare-fun b_lambda!43355 () Bool)

(assert (=> (not b_lambda!43355) (not d!397748)))

(declare-fun tb!72833 () Bool)

(declare-fun t!122456 () Bool)

(assert (=> (and b!1390097 (= (toChars!3589 (transformation!2443 (h!19509 rules!2550))) (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))))) t!122456) tb!72833))

(declare-fun b!1391054 () Bool)

(declare-fun e!888486 () Bool)

(declare-fun tp!397203 () Bool)

(assert (=> b!1391054 (= e!888486 (and (inv!18448 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639))))) (value!79258 (_1!7741 (get!4379 lt!462639)))))) tp!397203))))

(declare-fun result!88510 () Bool)

(assert (=> tb!72833 (= result!88510 (and (inv!18449 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639))))) (value!79258 (_1!7741 (get!4379 lt!462639))))) e!888486))))

(assert (= tb!72833 b!1391054))

(declare-fun m!1566185 () Bool)

(assert (=> b!1391054 m!1566185))

(declare-fun m!1566187 () Bool)

(assert (=> tb!72833 m!1566187))

(assert (=> d!397748 t!122456))

(declare-fun b_and!93191 () Bool)

(assert (= b_and!93181 (and (=> t!122456 result!88510) b_and!93191)))

(declare-fun tb!72835 () Bool)

(declare-fun t!122458 () Bool)

(assert (=> (and b!1390083 (= (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))))) t!122458) tb!72835))

(declare-fun result!88512 () Bool)

(assert (= result!88512 result!88510))

(assert (=> d!397748 t!122458))

(declare-fun b_and!93193 () Bool)

(assert (= b_and!93183 (and (=> t!122458 result!88512) b_and!93193)))

(declare-fun t!122460 () Bool)

(declare-fun tb!72837 () Bool)

(assert (=> (and b!1390092 (= (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))))) t!122460) tb!72837))

(declare-fun result!88514 () Bool)

(assert (= result!88514 result!88510))

(assert (=> d!397748 t!122460))

(declare-fun b_and!93195 () Bool)

(assert (= b_and!93185 (and (=> t!122460 result!88514) b_and!93195)))

(declare-fun t!122462 () Bool)

(declare-fun tb!72839 () Bool)

(assert (=> (and b!1390954 (= (toChars!3589 (transformation!2443 (h!19509 (t!122413 rules!2550)))) (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))))) t!122462) tb!72839))

(declare-fun result!88516 () Bool)

(assert (= result!88516 result!88510))

(assert (=> d!397748 t!122462))

(declare-fun b_and!93197 () Bool)

(assert (= b_and!93189 (and (=> t!122462 result!88516) b_and!93197)))

(declare-fun m!1566189 () Bool)

(assert (=> d!397748 m!1566189))

(declare-fun m!1566191 () Bool)

(assert (=> d!397748 m!1566191))

(assert (=> b!1390428 d!397748))

(declare-fun d!397750 () Bool)

(assert (=> d!397750 (= (get!4379 lt!462639) (v!21586 lt!462639))))

(assert (=> b!1390428 d!397750))

(declare-fun d!397752 () Bool)

(declare-fun lt!462825 () Bool)

(assert (=> d!397752 (= lt!462825 (select (content!2080 rules!2550) (rule!4204 (_1!7741 (get!4379 lt!462705)))))))

(declare-fun e!888487 () Bool)

(assert (=> d!397752 (= lt!462825 e!888487)))

(declare-fun res!628031 () Bool)

(assert (=> d!397752 (=> (not res!628031) (not e!888487))))

(assert (=> d!397752 (= res!628031 ((_ is Cons!14108) rules!2550))))

(assert (=> d!397752 (= (contains!2709 rules!2550 (rule!4204 (_1!7741 (get!4379 lt!462705)))) lt!462825)))

(declare-fun b!1391055 () Bool)

(declare-fun e!888488 () Bool)

(assert (=> b!1391055 (= e!888487 e!888488)))

(declare-fun res!628032 () Bool)

(assert (=> b!1391055 (=> res!628032 e!888488)))

(assert (=> b!1391055 (= res!628032 (= (h!19509 rules!2550) (rule!4204 (_1!7741 (get!4379 lt!462705)))))))

(declare-fun b!1391056 () Bool)

(assert (=> b!1391056 (= e!888488 (contains!2709 (t!122413 rules!2550) (rule!4204 (_1!7741 (get!4379 lt!462705)))))))

(assert (= (and d!397752 res!628031) b!1391055))

(assert (= (and b!1391055 (not res!628032)) b!1391056))

(assert (=> d!397752 m!1565811))

(declare-fun m!1566193 () Bool)

(assert (=> d!397752 m!1566193))

(declare-fun m!1566195 () Bool)

(assert (=> b!1391056 m!1566195))

(assert (=> b!1390676 d!397752))

(declare-fun d!397754 () Bool)

(assert (=> d!397754 (= (get!4379 lt!462705) (v!21586 lt!462705))))

(assert (=> b!1390676 d!397754))

(declare-fun d!397756 () Bool)

(assert (=> d!397756 (= (list!5477 lt!462780) (list!5481 (c!228748 lt!462780)))))

(declare-fun bs!337447 () Bool)

(assert (= bs!337447 d!397756))

(declare-fun m!1566197 () Bool)

(assert (=> bs!337447 m!1566197))

(assert (=> d!397632 d!397756))

(declare-fun d!397758 () Bool)

(declare-fun c!228941 () Bool)

(assert (=> d!397758 (= c!228941 ((_ is Nil!14107) lt!462527))))

(declare-fun e!888489 () (InoxSet C!7804))

(assert (=> d!397758 (= (content!2079 lt!462527) e!888489)))

(declare-fun b!1391057 () Bool)

(assert (=> b!1391057 (= e!888489 ((as const (Array C!7804 Bool)) false))))

(declare-fun b!1391058 () Bool)

(assert (=> b!1391058 (= e!888489 ((_ map or) (store ((as const (Array C!7804 Bool)) false) (h!19508 lt!462527) true) (content!2079 (t!122412 lt!462527))))))

(assert (= (and d!397758 c!228941) b!1391057))

(assert (= (and d!397758 (not c!228941)) b!1391058))

(declare-fun m!1566199 () Bool)

(assert (=> b!1391058 m!1566199))

(declare-fun m!1566201 () Bool)

(assert (=> b!1391058 m!1566201))

(assert (=> d!397556 d!397758))

(declare-fun d!397760 () Bool)

(declare-fun lt!462828 () Int)

(assert (=> d!397760 (>= lt!462828 0)))

(declare-fun e!888492 () Int)

(assert (=> d!397760 (= lt!462828 e!888492)))

(declare-fun c!228944 () Bool)

(assert (=> d!397760 (= c!228944 ((_ is Nil!14107) lt!462764))))

(assert (=> d!397760 (= (size!11605 lt!462764) lt!462828)))

(declare-fun b!1391063 () Bool)

(assert (=> b!1391063 (= e!888492 0)))

(declare-fun b!1391064 () Bool)

(assert (=> b!1391064 (= e!888492 (+ 1 (size!11605 (t!122412 lt!462764))))))

(assert (= (and d!397760 c!228944) b!1391063))

(assert (= (and d!397760 (not c!228944)) b!1391064))

(declare-fun m!1566203 () Bool)

(assert (=> b!1391064 m!1566203))

(assert (=> b!1390868 d!397760))

(declare-fun d!397762 () Bool)

(declare-fun lt!462829 () Int)

(assert (=> d!397762 (>= lt!462829 0)))

(declare-fun e!888493 () Int)

(assert (=> d!397762 (= lt!462829 e!888493)))

(declare-fun c!228945 () Bool)

(assert (=> d!397762 (= c!228945 ((_ is Nil!14107) lt!462523))))

(assert (=> d!397762 (= (size!11605 lt!462523) lt!462829)))

(declare-fun b!1391065 () Bool)

(assert (=> b!1391065 (= e!888493 0)))

(declare-fun b!1391066 () Bool)

(assert (=> b!1391066 (= e!888493 (+ 1 (size!11605 (t!122412 lt!462523))))))

(assert (= (and d!397762 c!228945) b!1391065))

(assert (= (and d!397762 (not c!228945)) b!1391066))

(declare-fun m!1566205 () Bool)

(assert (=> b!1391066 m!1566205))

(assert (=> b!1390868 d!397762))

(declare-fun d!397764 () Bool)

(declare-fun lt!462830 () Int)

(assert (=> d!397764 (>= lt!462830 0)))

(declare-fun e!888494 () Int)

(assert (=> d!397764 (= lt!462830 e!888494)))

(declare-fun c!228946 () Bool)

(assert (=> d!397764 (= c!228946 ((_ is Nil!14107) (getSuffix!603 lt!462520 lt!462523)))))

(assert (=> d!397764 (= (size!11605 (getSuffix!603 lt!462520 lt!462523)) lt!462830)))

(declare-fun b!1391067 () Bool)

(assert (=> b!1391067 (= e!888494 0)))

(declare-fun b!1391068 () Bool)

(assert (=> b!1391068 (= e!888494 (+ 1 (size!11605 (t!122412 (getSuffix!603 lt!462520 lt!462523)))))))

(assert (= (and d!397764 c!228946) b!1391067))

(assert (= (and d!397764 (not c!228946)) b!1391068))

(declare-fun m!1566207 () Bool)

(assert (=> b!1391068 m!1566207))

(assert (=> b!1390868 d!397764))

(declare-fun d!397766 () Bool)

(declare-fun c!228949 () Bool)

(assert (=> d!397766 (= c!228949 ((_ is Node!4646) (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34)))))))

(declare-fun e!888499 () Bool)

(assert (=> d!397766 (= (inv!18448 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34)))) e!888499)))

(declare-fun b!1391075 () Bool)

(declare-fun inv!18450 (Conc!4646) Bool)

(assert (=> b!1391075 (= e!888499 (inv!18450 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34)))))))

(declare-fun b!1391076 () Bool)

(declare-fun e!888500 () Bool)

(assert (=> b!1391076 (= e!888499 e!888500)))

(declare-fun res!628035 () Bool)

(assert (=> b!1391076 (= res!628035 (not ((_ is Leaf!7064) (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34))))))))

(assert (=> b!1391076 (=> res!628035 e!888500)))

(declare-fun b!1391077 () Bool)

(declare-fun inv!18451 (Conc!4646) Bool)

(assert (=> b!1391077 (= e!888500 (inv!18451 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34)))))))

(assert (= (and d!397766 c!228949) b!1391075))

(assert (= (and d!397766 (not c!228949)) b!1391076))

(assert (= (and b!1391076 (not res!628035)) b!1391077))

(declare-fun m!1566209 () Bool)

(assert (=> b!1391075 m!1566209))

(declare-fun m!1566211 () Bool)

(assert (=> b!1391077 m!1566211))

(assert (=> b!1390343 d!397766))

(declare-fun d!397768 () Bool)

(assert (=> d!397768 (= (inv!15 (value!79258 t2!34)) (= (charsToBigInt!0 (text!18180 (value!79258 t2!34)) 0) (value!79253 (value!79258 t2!34))))))

(declare-fun bs!337448 () Bool)

(assert (= bs!337448 d!397768))

(declare-fun m!1566213 () Bool)

(assert (=> bs!337448 m!1566213))

(assert (=> b!1390938 d!397768))

(declare-fun lt!462831 () Bool)

(declare-fun d!397770 () Bool)

(assert (=> d!397770 (= lt!462831 (isEmpty!8550 (list!5477 (_2!7742 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t1!34)))))))))

(assert (=> d!397770 (= lt!462831 (isEmpty!8555 (c!228748 (_2!7742 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t1!34)))))))))

(assert (=> d!397770 (= (isEmpty!8547 (_2!7742 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t1!34))))) lt!462831)))

(declare-fun bs!337449 () Bool)

(assert (= bs!337449 d!397770))

(declare-fun m!1566215 () Bool)

(assert (=> bs!337449 m!1566215))

(assert (=> bs!337449 m!1566215))

(declare-fun m!1566217 () Bool)

(assert (=> bs!337449 m!1566217))

(declare-fun m!1566219 () Bool)

(assert (=> bs!337449 m!1566219))

(assert (=> b!1390528 d!397770))

(declare-fun b!1391078 () Bool)

(declare-fun e!888502 () Bool)

(declare-fun lt!462832 () tuple2!13712)

(assert (=> b!1391078 (= e!888502 (not (isEmpty!8556 (_1!7742 lt!462832))))))

(declare-fun b!1391079 () Bool)

(declare-fun res!628037 () Bool)

(declare-fun e!888503 () Bool)

(assert (=> b!1391079 (=> (not res!628037) (not e!888503))))

(assert (=> b!1391079 (= res!628037 (= (list!5478 (_1!7742 lt!462832)) (_1!7743 (lexList!652 thiss!19762 rules!2550 (list!5477 (print!902 thiss!19762 (singletonSeq!1092 t1!34)))))))))

(declare-fun b!1391081 () Bool)

(assert (=> b!1391081 (= e!888503 (= (list!5477 (_2!7742 lt!462832)) (_2!7743 (lexList!652 thiss!19762 rules!2550 (list!5477 (print!902 thiss!19762 (singletonSeq!1092 t1!34)))))))))

(declare-fun b!1391082 () Bool)

(declare-fun e!888501 () Bool)

(assert (=> b!1391082 (= e!888501 e!888502)))

(declare-fun res!628036 () Bool)

(assert (=> b!1391082 (= res!628036 (< (size!11596 (_2!7742 lt!462832)) (size!11596 (print!902 thiss!19762 (singletonSeq!1092 t1!34)))))))

(assert (=> b!1391082 (=> (not res!628036) (not e!888502))))

(declare-fun b!1391080 () Bool)

(assert (=> b!1391080 (= e!888501 (= (_2!7742 lt!462832) (print!902 thiss!19762 (singletonSeq!1092 t1!34))))))

(declare-fun d!397772 () Bool)

(assert (=> d!397772 e!888503))

(declare-fun res!628038 () Bool)

(assert (=> d!397772 (=> (not res!628038) (not e!888503))))

(assert (=> d!397772 (= res!628038 e!888501)))

(declare-fun c!228950 () Bool)

(assert (=> d!397772 (= c!228950 (> (size!11607 (_1!7742 lt!462832)) 0))))

(assert (=> d!397772 (= lt!462832 (lexTailRecV2!431 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t1!34)) (BalanceConc!9233 Empty!4646) (print!902 thiss!19762 (singletonSeq!1092 t1!34)) (BalanceConc!9235 Empty!4647)))))

(assert (=> d!397772 (= (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t1!34))) lt!462832)))

(assert (= (and d!397772 c!228950) b!1391082))

(assert (= (and d!397772 (not c!228950)) b!1391080))

(assert (= (and b!1391082 res!628036) b!1391078))

(assert (= (and d!397772 res!628038) b!1391079))

(assert (= (and b!1391079 res!628037) b!1391081))

(declare-fun m!1566221 () Bool)

(assert (=> b!1391078 m!1566221))

(declare-fun m!1566223 () Bool)

(assert (=> b!1391079 m!1566223))

(assert (=> b!1391079 m!1564883))

(declare-fun m!1566225 () Bool)

(assert (=> b!1391079 m!1566225))

(assert (=> b!1391079 m!1566225))

(declare-fun m!1566227 () Bool)

(assert (=> b!1391079 m!1566227))

(declare-fun m!1566229 () Bool)

(assert (=> b!1391082 m!1566229))

(assert (=> b!1391082 m!1564883))

(declare-fun m!1566231 () Bool)

(assert (=> b!1391082 m!1566231))

(declare-fun m!1566233 () Bool)

(assert (=> d!397772 m!1566233))

(assert (=> d!397772 m!1564883))

(assert (=> d!397772 m!1564883))

(declare-fun m!1566235 () Bool)

(assert (=> d!397772 m!1566235))

(declare-fun m!1566237 () Bool)

(assert (=> b!1391081 m!1566237))

(assert (=> b!1391081 m!1564883))

(assert (=> b!1391081 m!1566225))

(assert (=> b!1391081 m!1566225))

(assert (=> b!1391081 m!1566227))

(assert (=> b!1390528 d!397772))

(assert (=> b!1390528 d!397606))

(assert (=> b!1390528 d!397608))

(declare-fun d!397774 () Bool)

(assert (=> d!397774 (= (list!5478 lt!462774) (list!5482 (c!228750 lt!462774)))))

(declare-fun bs!337450 () Bool)

(assert (= bs!337450 d!397774))

(declare-fun m!1566239 () Bool)

(assert (=> bs!337450 m!1566239))

(assert (=> d!397628 d!397774))

(declare-fun d!397776 () Bool)

(declare-fun e!888506 () Bool)

(assert (=> d!397776 e!888506))

(declare-fun res!628041 () Bool)

(assert (=> d!397776 (=> (not res!628041) (not e!888506))))

(declare-fun lt!462835 () BalanceConc!9234)

(assert (=> d!397776 (= res!628041 (= (list!5478 lt!462835) (Cons!14109 t2!34 Nil!14109)))))

(declare-fun choose!8558 (Token!4548) BalanceConc!9234)

(assert (=> d!397776 (= lt!462835 (choose!8558 t2!34))))

(assert (=> d!397776 (= (singleton!480 t2!34) lt!462835)))

(declare-fun b!1391085 () Bool)

(assert (=> b!1391085 (= e!888506 (isBalanced!1374 (c!228750 lt!462835)))))

(assert (= (and d!397776 res!628041) b!1391085))

(declare-fun m!1566241 () Bool)

(assert (=> d!397776 m!1566241))

(declare-fun m!1566243 () Bool)

(assert (=> d!397776 m!1566243))

(declare-fun m!1566245 () Bool)

(assert (=> b!1391085 m!1566245))

(assert (=> d!397628 d!397776))

(assert (=> b!1390901 d!397642))

(declare-fun b!1391086 () Bool)

(declare-fun e!888510 () Bool)

(declare-fun e!888509 () Bool)

(assert (=> b!1391086 (= e!888510 e!888509)))

(declare-fun res!628042 () Bool)

(assert (=> b!1391086 (= res!628042 (not (nullable!1219 (reg!4086 lt!462584))))))

(assert (=> b!1391086 (=> (not res!628042) (not e!888509))))

(declare-fun bm!93022 () Bool)

(declare-fun call!93027 () Bool)

(declare-fun c!228952 () Bool)

(assert (=> bm!93022 (= call!93027 (validRegex!1639 (ite c!228952 (regOne!8027 lt!462584) (regOne!8026 lt!462584))))))

(declare-fun b!1391087 () Bool)

(declare-fun res!628043 () Bool)

(declare-fun e!888513 () Bool)

(assert (=> b!1391087 (=> (not res!628043) (not e!888513))))

(assert (=> b!1391087 (= res!628043 call!93027)))

(declare-fun e!888512 () Bool)

(assert (=> b!1391087 (= e!888512 e!888513)))

(declare-fun b!1391088 () Bool)

(declare-fun call!93028 () Bool)

(assert (=> b!1391088 (= e!888513 call!93028)))

(declare-fun b!1391089 () Bool)

(declare-fun e!888507 () Bool)

(assert (=> b!1391089 (= e!888507 call!93028)))

(declare-fun b!1391090 () Bool)

(declare-fun call!93029 () Bool)

(assert (=> b!1391090 (= e!888509 call!93029)))

(declare-fun b!1391091 () Bool)

(declare-fun e!888511 () Bool)

(assert (=> b!1391091 (= e!888511 e!888510)))

(declare-fun c!228951 () Bool)

(assert (=> b!1391091 (= c!228951 ((_ is Star!3757) lt!462584))))

(declare-fun bm!93023 () Bool)

(assert (=> bm!93023 (= call!93028 call!93029)))

(declare-fun bm!93024 () Bool)

(assert (=> bm!93024 (= call!93029 (validRegex!1639 (ite c!228951 (reg!4086 lt!462584) (ite c!228952 (regTwo!8027 lt!462584) (regTwo!8026 lt!462584)))))))

(declare-fun b!1391093 () Bool)

(declare-fun e!888508 () Bool)

(assert (=> b!1391093 (= e!888508 e!888507)))

(declare-fun res!628045 () Bool)

(assert (=> b!1391093 (=> (not res!628045) (not e!888507))))

(assert (=> b!1391093 (= res!628045 call!93027)))

(declare-fun b!1391094 () Bool)

(declare-fun res!628044 () Bool)

(assert (=> b!1391094 (=> res!628044 e!888508)))

(assert (=> b!1391094 (= res!628044 (not ((_ is Concat!6291) lt!462584)))))

(assert (=> b!1391094 (= e!888512 e!888508)))

(declare-fun b!1391092 () Bool)

(assert (=> b!1391092 (= e!888510 e!888512)))

(assert (=> b!1391092 (= c!228952 ((_ is Union!3757) lt!462584))))

(declare-fun d!397778 () Bool)

(declare-fun res!628046 () Bool)

(assert (=> d!397778 (=> res!628046 e!888511)))

(assert (=> d!397778 (= res!628046 ((_ is ElementMatch!3757) lt!462584))))

(assert (=> d!397778 (= (validRegex!1639 lt!462584) e!888511)))

(assert (= (and d!397778 (not res!628046)) b!1391091))

(assert (= (and b!1391091 c!228951) b!1391086))

(assert (= (and b!1391091 (not c!228951)) b!1391092))

(assert (= (and b!1391086 res!628042) b!1391090))

(assert (= (and b!1391092 c!228952) b!1391087))

(assert (= (and b!1391092 (not c!228952)) b!1391094))

(assert (= (and b!1391087 res!628043) b!1391088))

(assert (= (and b!1391094 (not res!628044)) b!1391093))

(assert (= (and b!1391093 res!628045) b!1391089))

(assert (= (or b!1391087 b!1391093) bm!93022))

(assert (= (or b!1391088 b!1391089) bm!93023))

(assert (= (or b!1391090 bm!93023) bm!93024))

(declare-fun m!1566247 () Bool)

(assert (=> b!1391086 m!1566247))

(declare-fun m!1566249 () Bool)

(assert (=> bm!93022 m!1566249))

(declare-fun m!1566251 () Bool)

(assert (=> bm!93024 m!1566251))

(assert (=> bs!337430 d!397778))

(declare-fun d!397780 () Bool)

(declare-fun lt!462838 () C!7804)

(assert (=> d!397780 (contains!2710 (list!5477 lt!462516) lt!462838)))

(declare-fun e!888518 () C!7804)

(assert (=> d!397780 (= lt!462838 e!888518)))

(declare-fun c!228955 () Bool)

(assert (=> d!397780 (= c!228955 (= 0 0))))

(declare-fun e!888519 () Bool)

(assert (=> d!397780 e!888519))

(declare-fun res!628049 () Bool)

(assert (=> d!397780 (=> (not res!628049) (not e!888519))))

(assert (=> d!397780 (= res!628049 (<= 0 0))))

(assert (=> d!397780 (= (apply!3556 (list!5477 lt!462516) 0) lt!462838)))

(declare-fun b!1391101 () Bool)

(assert (=> b!1391101 (= e!888519 (< 0 (size!11605 (list!5477 lt!462516))))))

(declare-fun b!1391102 () Bool)

(assert (=> b!1391102 (= e!888518 (head!2543 (list!5477 lt!462516)))))

(declare-fun b!1391103 () Bool)

(assert (=> b!1391103 (= e!888518 (apply!3556 (tail!2020 (list!5477 lt!462516)) (- 0 1)))))

(assert (= (and d!397780 res!628049) b!1391101))

(assert (= (and d!397780 c!228955) b!1391102))

(assert (= (and d!397780 (not c!228955)) b!1391103))

(assert (=> d!397780 m!1564959))

(declare-fun m!1566253 () Bool)

(assert (=> d!397780 m!1566253))

(assert (=> b!1391101 m!1564959))

(declare-fun m!1566255 () Bool)

(assert (=> b!1391101 m!1566255))

(assert (=> b!1391102 m!1564959))

(declare-fun m!1566257 () Bool)

(assert (=> b!1391102 m!1566257))

(assert (=> b!1391103 m!1564959))

(declare-fun m!1566259 () Bool)

(assert (=> b!1391103 m!1566259))

(assert (=> b!1391103 m!1566259))

(declare-fun m!1566261 () Bool)

(assert (=> b!1391103 m!1566261))

(assert (=> d!397650 d!397780))

(assert (=> d!397650 d!397666))

(declare-fun d!397782 () Bool)

(declare-fun lt!462843 () C!7804)

(assert (=> d!397782 (= lt!462843 (apply!3556 (list!5481 (c!228748 lt!462516)) 0))))

(declare-fun e!888531 () C!7804)

(assert (=> d!397782 (= lt!462843 e!888531)))

(declare-fun c!228964 () Bool)

(assert (=> d!397782 (= c!228964 ((_ is Leaf!7064) (c!228748 lt!462516)))))

(declare-fun e!888530 () Bool)

(assert (=> d!397782 e!888530))

(declare-fun res!628052 () Bool)

(assert (=> d!397782 (=> (not res!628052) (not e!888530))))

(assert (=> d!397782 (= res!628052 (<= 0 0))))

(assert (=> d!397782 (= (apply!3557 (c!228748 lt!462516) 0) lt!462843)))

(declare-fun b!1391118 () Bool)

(declare-fun apply!3558 (IArray!9297 Int) C!7804)

(assert (=> b!1391118 (= e!888531 (apply!3558 (xs!7373 (c!228748 lt!462516)) 0))))

(declare-fun b!1391119 () Bool)

(declare-fun e!888529 () C!7804)

(declare-fun call!93032 () C!7804)

(assert (=> b!1391119 (= e!888529 call!93032)))

(declare-fun b!1391120 () Bool)

(declare-fun e!888528 () Int)

(assert (=> b!1391120 (= e!888528 (- 0 (size!11608 (left!12053 (c!228748 lt!462516)))))))

(declare-fun b!1391121 () Bool)

(assert (=> b!1391121 (= e!888531 e!888529)))

(declare-fun lt!462844 () Bool)

(declare-fun appendIndex!178 (List!14173 List!14173 Int) Bool)

(assert (=> b!1391121 (= lt!462844 (appendIndex!178 (list!5481 (left!12053 (c!228748 lt!462516))) (list!5481 (right!12383 (c!228748 lt!462516))) 0))))

(declare-fun c!228963 () Bool)

(assert (=> b!1391121 (= c!228963 (< 0 (size!11608 (left!12053 (c!228748 lt!462516)))))))

(declare-fun b!1391122 () Bool)

(assert (=> b!1391122 (= e!888530 (< 0 (size!11608 (c!228748 lt!462516))))))

(declare-fun b!1391123 () Bool)

(assert (=> b!1391123 (= e!888528 0)))

(declare-fun bm!93027 () Bool)

(declare-fun c!228962 () Bool)

(assert (=> bm!93027 (= c!228962 c!228963)))

(assert (=> bm!93027 (= call!93032 (apply!3557 (ite c!228963 (left!12053 (c!228748 lt!462516)) (right!12383 (c!228748 lt!462516))) e!888528))))

(declare-fun b!1391124 () Bool)

(assert (=> b!1391124 (= e!888529 call!93032)))

(assert (= (and d!397782 res!628052) b!1391122))

(assert (= (and d!397782 c!228964) b!1391118))

(assert (= (and d!397782 (not c!228964)) b!1391121))

(assert (= (and b!1391121 c!228963) b!1391124))

(assert (= (and b!1391121 (not c!228963)) b!1391119))

(assert (= (or b!1391124 b!1391119) bm!93027))

(assert (= (and bm!93027 c!228962) b!1391123))

(assert (= (and bm!93027 (not c!228962)) b!1391120))

(assert (=> d!397782 m!1565997))

(assert (=> d!397782 m!1565997))

(declare-fun m!1566263 () Bool)

(assert (=> d!397782 m!1566263))

(declare-fun m!1566265 () Bool)

(assert (=> b!1391120 m!1566265))

(declare-fun m!1566267 () Bool)

(assert (=> b!1391122 m!1566267))

(declare-fun m!1566269 () Bool)

(assert (=> b!1391118 m!1566269))

(declare-fun m!1566271 () Bool)

(assert (=> bm!93027 m!1566271))

(declare-fun m!1566273 () Bool)

(assert (=> b!1391121 m!1566273))

(declare-fun m!1566275 () Bool)

(assert (=> b!1391121 m!1566275))

(assert (=> b!1391121 m!1566273))

(assert (=> b!1391121 m!1566275))

(declare-fun m!1566277 () Bool)

(assert (=> b!1391121 m!1566277))

(assert (=> b!1391121 m!1566265))

(assert (=> d!397650 d!397782))

(declare-fun d!397784 () Bool)

(declare-fun e!888533 () Bool)

(assert (=> d!397784 e!888533))

(declare-fun res!628054 () Bool)

(assert (=> d!397784 (=> (not res!628054) (not e!888533))))

(declare-fun lt!462845 () List!14173)

(assert (=> d!397784 (= res!628054 (= (content!2079 lt!462845) ((_ map or) (content!2079 lt!462523) (content!2079 lt!462767))))))

(declare-fun e!888532 () List!14173)

(assert (=> d!397784 (= lt!462845 e!888532)))

(declare-fun c!228965 () Bool)

(assert (=> d!397784 (= c!228965 ((_ is Nil!14107) lt!462523))))

(assert (=> d!397784 (= (++!3664 lt!462523 lt!462767) lt!462845)))

(declare-fun b!1391127 () Bool)

(declare-fun res!628053 () Bool)

(assert (=> b!1391127 (=> (not res!628053) (not e!888533))))

(assert (=> b!1391127 (= res!628053 (= (size!11605 lt!462845) (+ (size!11605 lt!462523) (size!11605 lt!462767))))))

(declare-fun b!1391126 () Bool)

(assert (=> b!1391126 (= e!888532 (Cons!14107 (h!19508 lt!462523) (++!3664 (t!122412 lt!462523) lt!462767)))))

(declare-fun b!1391125 () Bool)

(assert (=> b!1391125 (= e!888532 lt!462767)))

(declare-fun b!1391128 () Bool)

(assert (=> b!1391128 (= e!888533 (or (not (= lt!462767 Nil!14107)) (= lt!462845 lt!462523)))))

(assert (= (and d!397784 c!228965) b!1391125))

(assert (= (and d!397784 (not c!228965)) b!1391126))

(assert (= (and d!397784 res!628054) b!1391127))

(assert (= (and b!1391127 res!628053) b!1391128))

(declare-fun m!1566279 () Bool)

(assert (=> d!397784 m!1566279))

(assert (=> d!397784 m!1565831))

(declare-fun m!1566281 () Bool)

(assert (=> d!397784 m!1566281))

(declare-fun m!1566283 () Bool)

(assert (=> b!1391127 m!1566283))

(assert (=> b!1391127 m!1565837))

(declare-fun m!1566285 () Bool)

(assert (=> b!1391127 m!1566285))

(declare-fun m!1566287 () Bool)

(assert (=> b!1391126 m!1566287))

(assert (=> d!397616 d!397784))

(declare-fun d!397786 () Bool)

(declare-fun lt!462846 () Int)

(assert (=> d!397786 (>= lt!462846 0)))

(declare-fun e!888534 () Int)

(assert (=> d!397786 (= lt!462846 e!888534)))

(declare-fun c!228966 () Bool)

(assert (=> d!397786 (= c!228966 ((_ is Nil!14107) lt!462520))))

(assert (=> d!397786 (= (size!11605 lt!462520) lt!462846)))

(declare-fun b!1391129 () Bool)

(assert (=> b!1391129 (= e!888534 0)))

(declare-fun b!1391130 () Bool)

(assert (=> b!1391130 (= e!888534 (+ 1 (size!11605 (t!122412 lt!462520))))))

(assert (= (and d!397786 c!228966) b!1391129))

(assert (= (and d!397786 (not c!228966)) b!1391130))

(declare-fun m!1566289 () Bool)

(assert (=> b!1391130 m!1566289))

(assert (=> d!397616 d!397786))

(assert (=> d!397616 d!397762))

(declare-fun d!397788 () Bool)

(declare-fun lt!462849 () Token!4548)

(declare-fun apply!3559 (List!14175 Int) Token!4548)

(assert (=> d!397788 (= lt!462849 (apply!3559 (list!5478 (_1!7742 lt!462788)) 0))))

(declare-fun apply!3560 (Conc!4647 Int) Token!4548)

(assert (=> d!397788 (= lt!462849 (apply!3560 (c!228750 (_1!7742 lt!462788)) 0))))

(declare-fun e!888537 () Bool)

(assert (=> d!397788 e!888537))

(declare-fun res!628057 () Bool)

(assert (=> d!397788 (=> (not res!628057) (not e!888537))))

(assert (=> d!397788 (= res!628057 (<= 0 0))))

(assert (=> d!397788 (= (apply!3552 (_1!7742 lt!462788) 0) lt!462849)))

(declare-fun b!1391133 () Bool)

(assert (=> b!1391133 (= e!888537 (< 0 (size!11607 (_1!7742 lt!462788))))))

(assert (= (and d!397788 res!628057) b!1391133))

(assert (=> d!397788 m!1566115))

(assert (=> d!397788 m!1566115))

(declare-fun m!1566291 () Bool)

(assert (=> d!397788 m!1566291))

(declare-fun m!1566293 () Bool)

(assert (=> d!397788 m!1566293))

(assert (=> b!1391133 m!1565931))

(assert (=> b!1390905 d!397788))

(declare-fun d!397790 () Bool)

(declare-fun lt!462850 () Int)

(assert (=> d!397790 (= lt!462850 (size!11605 (list!5477 (_2!7742 lt!462751))))))

(assert (=> d!397790 (= lt!462850 (size!11608 (c!228748 (_2!7742 lt!462751))))))

(assert (=> d!397790 (= (size!11596 (_2!7742 lt!462751)) lt!462850)))

(declare-fun bs!337451 () Bool)

(assert (= bs!337451 d!397790))

(assert (=> bs!337451 m!1565797))

(assert (=> bs!337451 m!1565797))

(declare-fun m!1566295 () Bool)

(assert (=> bs!337451 m!1566295))

(declare-fun m!1566297 () Bool)

(assert (=> bs!337451 m!1566297))

(assert (=> b!1390834 d!397790))

(declare-fun d!397792 () Bool)

(declare-fun lt!462851 () Int)

(assert (=> d!397792 (= lt!462851 (size!11605 (list!5477 lt!462535)))))

(assert (=> d!397792 (= lt!462851 (size!11608 (c!228748 lt!462535)))))

(assert (=> d!397792 (= (size!11596 lt!462535) lt!462851)))

(declare-fun bs!337452 () Bool)

(assert (= bs!337452 d!397792))

(assert (=> bs!337452 m!1564943))

(assert (=> bs!337452 m!1564943))

(assert (=> bs!337452 m!1565231))

(declare-fun m!1566299 () Bool)

(assert (=> bs!337452 m!1566299))

(assert (=> b!1390834 d!397792))

(declare-fun d!397794 () Bool)

(declare-fun lt!462852 () Bool)

(assert (=> d!397794 (= lt!462852 (select (content!2080 rules!2550) lt!462724))))

(declare-fun e!888538 () Bool)

(assert (=> d!397794 (= lt!462852 e!888538)))

(declare-fun res!628058 () Bool)

(assert (=> d!397794 (=> (not res!628058) (not e!888538))))

(assert (=> d!397794 (= res!628058 ((_ is Cons!14108) rules!2550))))

(assert (=> d!397794 (= (contains!2709 rules!2550 lt!462724) lt!462852)))

(declare-fun b!1391134 () Bool)

(declare-fun e!888539 () Bool)

(assert (=> b!1391134 (= e!888538 e!888539)))

(declare-fun res!628059 () Bool)

(assert (=> b!1391134 (=> res!628059 e!888539)))

(assert (=> b!1391134 (= res!628059 (= (h!19509 rules!2550) lt!462724))))

(declare-fun b!1391135 () Bool)

(assert (=> b!1391135 (= e!888539 (contains!2709 (t!122413 rules!2550) lt!462724))))

(assert (= (and d!397794 res!628058) b!1391134))

(assert (= (and b!1391134 (not res!628059)) b!1391135))

(assert (=> d!397794 m!1565811))

(declare-fun m!1566301 () Bool)

(assert (=> d!397794 m!1566301))

(declare-fun m!1566303 () Bool)

(assert (=> b!1391135 m!1566303))

(assert (=> b!1390738 d!397794))

(declare-fun d!397796 () Bool)

(assert (=> d!397796 (= (isEmpty!8550 (list!5477 (_2!7742 lt!462515))) ((_ is Nil!14107) (list!5477 (_2!7742 lt!462515))))))

(assert (=> d!397530 d!397796))

(declare-fun d!397798 () Bool)

(assert (=> d!397798 (= (list!5477 (_2!7742 lt!462515)) (list!5481 (c!228748 (_2!7742 lt!462515))))))

(declare-fun bs!337453 () Bool)

(assert (= bs!337453 d!397798))

(declare-fun m!1566305 () Bool)

(assert (=> bs!337453 m!1566305))

(assert (=> d!397530 d!397798))

(declare-fun d!397800 () Bool)

(declare-fun lt!462855 () Bool)

(assert (=> d!397800 (= lt!462855 (isEmpty!8550 (list!5481 (c!228748 (_2!7742 lt!462515)))))))

(assert (=> d!397800 (= lt!462855 (= (size!11608 (c!228748 (_2!7742 lt!462515))) 0))))

(assert (=> d!397800 (= (isEmpty!8555 (c!228748 (_2!7742 lt!462515))) lt!462855)))

(declare-fun bs!337454 () Bool)

(assert (= bs!337454 d!397800))

(assert (=> bs!337454 m!1566305))

(assert (=> bs!337454 m!1566305))

(declare-fun m!1566307 () Bool)

(assert (=> bs!337454 m!1566307))

(declare-fun m!1566309 () Bool)

(assert (=> bs!337454 m!1566309))

(assert (=> d!397530 d!397800))

(declare-fun d!397802 () Bool)

(declare-fun lt!462856 () Int)

(assert (=> d!397802 (>= lt!462856 0)))

(declare-fun e!888540 () Int)

(assert (=> d!397802 (= lt!462856 e!888540)))

(declare-fun c!228967 () Bool)

(assert (=> d!397802 (= c!228967 ((_ is Nil!14107) (_2!7743 lt!462805)))))

(assert (=> d!397802 (= (size!11605 (_2!7743 lt!462805)) lt!462856)))

(declare-fun b!1391136 () Bool)

(assert (=> b!1391136 (= e!888540 0)))

(declare-fun b!1391137 () Bool)

(assert (=> b!1391137 (= e!888540 (+ 1 (size!11605 (t!122412 (_2!7743 lt!462805)))))))

(assert (= (and d!397802 c!228967) b!1391136))

(assert (= (and d!397802 (not c!228967)) b!1391137))

(declare-fun m!1566311 () Bool)

(assert (=> b!1391137 m!1566311))

(assert (=> b!1390930 d!397802))

(declare-fun d!397804 () Bool)

(declare-fun lt!462857 () Int)

(assert (=> d!397804 (>= lt!462857 0)))

(declare-fun e!888541 () Int)

(assert (=> d!397804 (= lt!462857 e!888541)))

(declare-fun c!228968 () Bool)

(assert (=> d!397804 (= c!228968 ((_ is Nil!14107) (list!5477 lt!462514)))))

(assert (=> d!397804 (= (size!11605 (list!5477 lt!462514)) lt!462857)))

(declare-fun b!1391138 () Bool)

(assert (=> b!1391138 (= e!888541 0)))

(declare-fun b!1391139 () Bool)

(assert (=> b!1391139 (= e!888541 (+ 1 (size!11605 (t!122412 (list!5477 lt!462514)))))))

(assert (= (and d!397804 c!228968) b!1391138))

(assert (= (and d!397804 (not c!228968)) b!1391139))

(declare-fun m!1566313 () Bool)

(assert (=> b!1391139 m!1566313))

(assert (=> b!1390930 d!397804))

(declare-fun d!397806 () Bool)

(assert (=> d!397806 (= (isEmpty!8550 lt!462537) ((_ is Nil!14107) lt!462537))))

(assert (=> bm!93019 d!397806))

(declare-fun d!397808 () Bool)

(declare-fun e!888543 () Bool)

(assert (=> d!397808 e!888543))

(declare-fun res!628061 () Bool)

(assert (=> d!397808 (=> (not res!628061) (not e!888543))))

(declare-fun lt!462858 () List!14173)

(assert (=> d!397808 (= res!628061 (= (content!2079 lt!462858) ((_ map or) (content!2079 (ite c!228805 call!92982 call!92984)) (content!2079 (ite c!228805 call!92984 call!92982)))))))

(declare-fun e!888542 () List!14173)

(assert (=> d!397808 (= lt!462858 e!888542)))

(declare-fun c!228969 () Bool)

(assert (=> d!397808 (= c!228969 ((_ is Nil!14107) (ite c!228805 call!92982 call!92984)))))

(assert (=> d!397808 (= (++!3664 (ite c!228805 call!92982 call!92984) (ite c!228805 call!92984 call!92982)) lt!462858)))

(declare-fun b!1391142 () Bool)

(declare-fun res!628060 () Bool)

(assert (=> b!1391142 (=> (not res!628060) (not e!888543))))

(assert (=> b!1391142 (= res!628060 (= (size!11605 lt!462858) (+ (size!11605 (ite c!228805 call!92982 call!92984)) (size!11605 (ite c!228805 call!92984 call!92982)))))))

(declare-fun b!1391141 () Bool)

(assert (=> b!1391141 (= e!888542 (Cons!14107 (h!19508 (ite c!228805 call!92982 call!92984)) (++!3664 (t!122412 (ite c!228805 call!92982 call!92984)) (ite c!228805 call!92984 call!92982))))))

(declare-fun b!1391140 () Bool)

(assert (=> b!1391140 (= e!888542 (ite c!228805 call!92984 call!92982))))

(declare-fun b!1391143 () Bool)

(assert (=> b!1391143 (= e!888543 (or (not (= (ite c!228805 call!92984 call!92982) Nil!14107)) (= lt!462858 (ite c!228805 call!92982 call!92984))))))

(assert (= (and d!397808 c!228969) b!1391140))

(assert (= (and d!397808 (not c!228969)) b!1391141))

(assert (= (and d!397808 res!628061) b!1391142))

(assert (= (and b!1391142 res!628060) b!1391143))

(declare-fun m!1566315 () Bool)

(assert (=> d!397808 m!1566315))

(declare-fun m!1566317 () Bool)

(assert (=> d!397808 m!1566317))

(declare-fun m!1566319 () Bool)

(assert (=> d!397808 m!1566319))

(declare-fun m!1566321 () Bool)

(assert (=> b!1391142 m!1566321))

(declare-fun m!1566323 () Bool)

(assert (=> b!1391142 m!1566323))

(declare-fun m!1566325 () Bool)

(assert (=> b!1391142 m!1566325))

(declare-fun m!1566327 () Bool)

(assert (=> b!1391141 m!1566327))

(assert (=> bm!92978 d!397808))

(declare-fun d!397810 () Bool)

(declare-fun e!888546 () Bool)

(assert (=> d!397810 e!888546))

(declare-fun res!628066 () Bool)

(assert (=> d!397810 (=> res!628066 e!888546)))

(declare-fun lt!462861 () Option!2704)

(assert (=> d!397810 (= res!628066 (isEmpty!8554 lt!462861))))

(declare-fun e!888544 () Option!2704)

(assert (=> d!397810 (= lt!462861 e!888544)))

(declare-fun c!228970 () Bool)

(assert (=> d!397810 (= c!228970 (and ((_ is Cons!14108) (t!122413 rules!2550)) ((_ is Nil!14108) (t!122413 (t!122413 rules!2550)))))))

(declare-fun lt!462860 () Unit!20367)

(declare-fun lt!462859 () Unit!20367)

(assert (=> d!397810 (= lt!462860 lt!462859)))

(assert (=> d!397810 (isPrefix!1145 lt!462532 lt!462532)))

(assert (=> d!397810 (= lt!462859 (lemmaIsPrefixRefl!804 lt!462532 lt!462532))))

(assert (=> d!397810 (rulesValidInductive!787 thiss!19762 (t!122413 rules!2550))))

(assert (=> d!397810 (= (maxPrefix!1112 thiss!19762 (t!122413 rules!2550) lt!462532) lt!462861)))

(declare-fun b!1391144 () Bool)

(declare-fun e!888545 () Bool)

(assert (=> b!1391144 (= e!888545 (contains!2709 (t!122413 rules!2550) (rule!4204 (_1!7741 (get!4379 lt!462861)))))))

(declare-fun b!1391145 () Bool)

(declare-fun res!628062 () Bool)

(assert (=> b!1391145 (=> (not res!628062) (not e!888545))))

(assert (=> b!1391145 (= res!628062 (= (++!3664 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462861)))) (_2!7741 (get!4379 lt!462861))) lt!462532))))

(declare-fun b!1391146 () Bool)

(declare-fun res!628064 () Bool)

(assert (=> b!1391146 (=> (not res!628064) (not e!888545))))

(assert (=> b!1391146 (= res!628064 (= (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462861)))) (originalCharacters!3305 (_1!7741 (get!4379 lt!462861)))))))

(declare-fun bm!93028 () Bool)

(declare-fun call!93033 () Option!2704)

(assert (=> bm!93028 (= call!93033 (maxPrefixOneRule!630 thiss!19762 (h!19509 (t!122413 rules!2550)) lt!462532))))

(declare-fun b!1391147 () Bool)

(declare-fun res!628065 () Bool)

(assert (=> b!1391147 (=> (not res!628065) (not e!888545))))

(assert (=> b!1391147 (= res!628065 (matchR!1748 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462861)))) (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462861))))))))

(declare-fun b!1391148 () Bool)

(assert (=> b!1391148 (= e!888544 call!93033)))

(declare-fun b!1391149 () Bool)

(declare-fun res!628068 () Bool)

(assert (=> b!1391149 (=> (not res!628068) (not e!888545))))

(assert (=> b!1391149 (= res!628068 (< (size!11605 (_2!7741 (get!4379 lt!462861))) (size!11605 lt!462532)))))

(declare-fun b!1391150 () Bool)

(declare-fun res!628067 () Bool)

(assert (=> b!1391150 (=> (not res!628067) (not e!888545))))

(assert (=> b!1391150 (= res!628067 (= (value!79258 (_1!7741 (get!4379 lt!462861))) (apply!3551 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462861)))) (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!462861)))))))))

(declare-fun b!1391151 () Bool)

(assert (=> b!1391151 (= e!888546 e!888545)))

(declare-fun res!628063 () Bool)

(assert (=> b!1391151 (=> (not res!628063) (not e!888545))))

(assert (=> b!1391151 (= res!628063 (isDefined!2232 lt!462861))))

(declare-fun b!1391152 () Bool)

(declare-fun lt!462863 () Option!2704)

(declare-fun lt!462862 () Option!2704)

(assert (=> b!1391152 (= e!888544 (ite (and ((_ is None!2703) lt!462863) ((_ is None!2703) lt!462862)) None!2703 (ite ((_ is None!2703) lt!462862) lt!462863 (ite ((_ is None!2703) lt!462863) lt!462862 (ite (>= (size!11595 (_1!7741 (v!21586 lt!462863))) (size!11595 (_1!7741 (v!21586 lt!462862)))) lt!462863 lt!462862)))))))

(assert (=> b!1391152 (= lt!462863 call!93033)))

(assert (=> b!1391152 (= lt!462862 (maxPrefix!1112 thiss!19762 (t!122413 (t!122413 rules!2550)) lt!462532))))

(assert (= (and d!397810 c!228970) b!1391148))

(assert (= (and d!397810 (not c!228970)) b!1391152))

(assert (= (or b!1391148 b!1391152) bm!93028))

(assert (= (and d!397810 (not res!628066)) b!1391151))

(assert (= (and b!1391151 res!628063) b!1391146))

(assert (= (and b!1391146 res!628064) b!1391149))

(assert (= (and b!1391149 res!628068) b!1391145))

(assert (= (and b!1391145 res!628062) b!1391150))

(assert (= (and b!1391150 res!628067) b!1391147))

(assert (= (and b!1391147 res!628065) b!1391144))

(declare-fun m!1566329 () Bool)

(assert (=> b!1391152 m!1566329))

(declare-fun m!1566331 () Bool)

(assert (=> b!1391150 m!1566331))

(declare-fun m!1566333 () Bool)

(assert (=> b!1391150 m!1566333))

(assert (=> b!1391150 m!1566333))

(declare-fun m!1566335 () Bool)

(assert (=> b!1391150 m!1566335))

(assert (=> b!1391146 m!1566331))

(declare-fun m!1566337 () Bool)

(assert (=> b!1391146 m!1566337))

(assert (=> b!1391146 m!1566337))

(declare-fun m!1566339 () Bool)

(assert (=> b!1391146 m!1566339))

(declare-fun m!1566341 () Bool)

(assert (=> bm!93028 m!1566341))

(assert (=> b!1391144 m!1566331))

(declare-fun m!1566343 () Bool)

(assert (=> b!1391144 m!1566343))

(declare-fun m!1566345 () Bool)

(assert (=> d!397810 m!1566345))

(assert (=> d!397810 m!1565307))

(assert (=> d!397810 m!1565309))

(assert (=> d!397810 m!1566087))

(assert (=> b!1391149 m!1566331))

(declare-fun m!1566347 () Bool)

(assert (=> b!1391149 m!1566347))

(assert (=> b!1391149 m!1565315))

(assert (=> b!1391147 m!1566331))

(assert (=> b!1391147 m!1566337))

(assert (=> b!1391147 m!1566337))

(assert (=> b!1391147 m!1566339))

(assert (=> b!1391147 m!1566339))

(declare-fun m!1566349 () Bool)

(assert (=> b!1391147 m!1566349))

(declare-fun m!1566351 () Bool)

(assert (=> b!1391151 m!1566351))

(assert (=> b!1391145 m!1566331))

(assert (=> b!1391145 m!1566337))

(assert (=> b!1391145 m!1566337))

(assert (=> b!1391145 m!1566339))

(assert (=> b!1391145 m!1566339))

(declare-fun m!1566353 () Bool)

(assert (=> b!1391145 m!1566353))

(assert (=> b!1390435 d!397810))

(declare-fun d!397812 () Bool)

(declare-fun res!628073 () Bool)

(declare-fun e!888551 () Bool)

(assert (=> d!397812 (=> res!628073 e!888551)))

(assert (=> d!397812 (= res!628073 ((_ is Nil!14108) rules!2550))))

(assert (=> d!397812 (= (noDuplicateTag!917 thiss!19762 rules!2550 Nil!14112) e!888551)))

(declare-fun b!1391157 () Bool)

(declare-fun e!888552 () Bool)

(assert (=> b!1391157 (= e!888551 e!888552)))

(declare-fun res!628074 () Bool)

(assert (=> b!1391157 (=> (not res!628074) (not e!888552))))

(declare-fun contains!2713 (List!14178 String!16901) Bool)

(assert (=> b!1391157 (= res!628074 (not (contains!2713 Nil!14112 (tag!2705 (h!19509 rules!2550)))))))

(declare-fun b!1391158 () Bool)

(assert (=> b!1391158 (= e!888552 (noDuplicateTag!917 thiss!19762 (t!122413 rules!2550) (Cons!14112 (tag!2705 (h!19509 rules!2550)) Nil!14112)))))

(assert (= (and d!397812 (not res!628073)) b!1391157))

(assert (= (and b!1391157 res!628074) b!1391158))

(declare-fun m!1566355 () Bool)

(assert (=> b!1391157 m!1566355))

(declare-fun m!1566357 () Bool)

(assert (=> b!1391158 m!1566357))

(assert (=> b!1390943 d!397812))

(declare-fun d!397818 () Bool)

(assert (=> d!397818 (= (isDefined!2232 lt!462705) (not (isEmpty!8554 lt!462705)))))

(declare-fun bs!337456 () Bool)

(assert (= bs!337456 d!397818))

(assert (=> bs!337456 m!1565609))

(assert (=> b!1390683 d!397818))

(declare-fun d!397820 () Bool)

(declare-fun c!228973 () Bool)

(assert (=> d!397820 (= c!228973 ((_ is Nil!14108) rules!2550))))

(declare-fun e!888555 () (InoxSet Rule!4686))

(assert (=> d!397820 (= (content!2080 rules!2550) e!888555)))

(declare-fun b!1391163 () Bool)

(assert (=> b!1391163 (= e!888555 ((as const (Array Rule!4686 Bool)) false))))

(declare-fun b!1391164 () Bool)

(assert (=> b!1391164 (= e!888555 ((_ map or) (store ((as const (Array Rule!4686 Bool)) false) (h!19509 rules!2550) true) (content!2080 (t!122413 rules!2550))))))

(assert (= (and d!397820 c!228973) b!1391163))

(assert (= (and d!397820 (not c!228973)) b!1391164))

(declare-fun m!1566359 () Bool)

(assert (=> b!1391164 m!1566359))

(declare-fun m!1566361 () Bool)

(assert (=> b!1391164 m!1566361))

(assert (=> d!397646 d!397820))

(assert (=> d!397418 d!397532))

(declare-fun bs!337457 () Bool)

(declare-fun d!397824 () Bool)

(assert (= bs!337457 (and d!397824 d!397418)))

(declare-fun lambda!60158 () Int)

(assert (=> bs!337457 (not (= lambda!60158 lambda!60137))))

(assert (=> bs!337457 (not (= lambda!60158 lambda!60138))))

(declare-fun bs!337458 () Bool)

(assert (= bs!337458 (and d!397824 b!1390085)))

(assert (=> bs!337458 (not (= lambda!60158 lambda!60111))))

(declare-fun bs!337459 () Bool)

(assert (= bs!337459 (and d!397824 d!397416)))

(assert (=> bs!337459 (= (= lambda!60138 lambda!60111) (= lambda!60158 lambda!60132))))

(declare-fun bs!337460 () Bool)

(assert (= bs!337460 (and d!397824 d!397420)))

(assert (=> bs!337460 (= (= lambda!60138 lambda!60111) (= lambda!60158 lambda!60139))))

(assert (=> d!397824 true))

(assert (=> d!397824 (< (dynLambda!6487 order!8633 lambda!60138) (dynLambda!6487 order!8633 lambda!60158))))

(assert (=> d!397824 (= (exists!531 lt!462531 lambda!60138) (not (forall!3435 lt!462531 lambda!60158)))))

(declare-fun bs!337461 () Bool)

(assert (= bs!337461 d!397824))

(declare-fun m!1566363 () Bool)

(assert (=> bs!337461 m!1566363))

(assert (=> d!397418 d!397824))

(declare-fun bs!337462 () Bool)

(declare-fun d!397826 () Bool)

(assert (= bs!337462 (and d!397826 d!397418)))

(declare-fun lambda!60161 () Int)

(assert (=> bs!337462 (not (= lambda!60161 lambda!60137))))

(assert (=> bs!337462 (= lambda!60161 lambda!60138)))

(declare-fun bs!337463 () Bool)

(assert (= bs!337463 (and d!397826 d!397824)))

(assert (=> bs!337463 (not (= lambda!60161 lambda!60158))))

(declare-fun bs!337464 () Bool)

(assert (= bs!337464 (and d!397826 b!1390085)))

(assert (=> bs!337464 (= lambda!60161 lambda!60111)))

(declare-fun bs!337465 () Bool)

(assert (= bs!337465 (and d!397826 d!397416)))

(assert (=> bs!337465 (not (= lambda!60161 lambda!60132))))

(declare-fun bs!337466 () Bool)

(assert (= bs!337466 (and d!397826 d!397420)))

(assert (=> bs!337466 (not (= lambda!60161 lambda!60139))))

(assert (=> d!397826 true))

(assert (=> d!397826 (= (matchR!1748 lt!462518 lt!462520) (exists!531 lt!462531 lambda!60161))))

(assert (=> d!397826 true))

(declare-fun _$85!170 () Unit!20367)

(assert (=> d!397826 (= (choose!8547 lt!462518 lt!462531 lt!462520) _$85!170)))

(declare-fun bs!337467 () Bool)

(assert (= bs!337467 d!397826))

(assert (=> bs!337467 m!1564821))

(declare-fun m!1566365 () Bool)

(assert (=> bs!337467 m!1566365))

(assert (=> d!397418 d!397826))

(declare-fun d!397828 () Bool)

(declare-fun res!628093 () Bool)

(declare-fun e!888571 () Bool)

(assert (=> d!397828 (=> res!628093 e!888571)))

(assert (=> d!397828 (= res!628093 ((_ is Nil!14110) lt!462531))))

(assert (=> d!397828 (= (forall!3435 lt!462531 lambda!60137) e!888571)))

(declare-fun b!1391183 () Bool)

(declare-fun e!888572 () Bool)

(assert (=> b!1391183 (= e!888571 e!888572)))

(declare-fun res!628094 () Bool)

(assert (=> b!1391183 (=> (not res!628094) (not e!888572))))

(assert (=> b!1391183 (= res!628094 (dynLambda!6486 lambda!60137 (h!19511 lt!462531)))))

(declare-fun b!1391184 () Bool)

(assert (=> b!1391184 (= e!888572 (forall!3435 (t!122415 lt!462531) lambda!60137))))

(assert (= (and d!397828 (not res!628093)) b!1391183))

(assert (= (and b!1391183 res!628094) b!1391184))

(declare-fun b_lambda!43357 () Bool)

(assert (=> (not b_lambda!43357) (not b!1391183)))

(declare-fun m!1566369 () Bool)

(assert (=> b!1391183 m!1566369))

(declare-fun m!1566371 () Bool)

(assert (=> b!1391184 m!1566371))

(assert (=> d!397418 d!397828))

(declare-fun bs!337469 () Bool)

(declare-fun d!397832 () Bool)

(assert (= bs!337469 (and d!397832 b!1390085)))

(declare-fun lambda!60168 () Int)

(assert (=> bs!337469 (= lambda!60168 lambda!60110)))

(declare-fun bs!337470 () Bool)

(assert (= bs!337470 (and d!397832 d!397662)))

(assert (=> bs!337470 (= lambda!60168 lambda!60157)))

(declare-fun bs!337471 () Bool)

(assert (= bs!337471 (and d!397832 d!397418)))

(declare-fun lambda!60169 () Int)

(assert (=> bs!337471 (= lambda!60169 lambda!60137)))

(declare-fun bs!337472 () Bool)

(assert (= bs!337472 (and d!397832 d!397826)))

(assert (=> bs!337472 (not (= lambda!60169 lambda!60161))))

(assert (=> bs!337471 (not (= lambda!60169 lambda!60138))))

(declare-fun bs!337473 () Bool)

(assert (= bs!337473 (and d!397832 d!397824)))

(assert (=> bs!337473 (not (= lambda!60169 lambda!60158))))

(assert (=> bs!337469 (not (= lambda!60169 lambda!60111))))

(declare-fun bs!337474 () Bool)

(assert (= bs!337474 (and d!397832 d!397416)))

(assert (=> bs!337474 (not (= lambda!60169 lambda!60132))))

(declare-fun bs!337475 () Bool)

(assert (= bs!337475 (and d!397832 d!397420)))

(assert (=> bs!337475 (not (= lambda!60169 lambda!60139))))

(assert (=> d!397832 (forall!3435 (map!3125 rules!2550 lambda!60168) lambda!60169)))

(declare-fun lt!462876 () Unit!20367)

(declare-fun e!888579 () Unit!20367)

(assert (=> d!397832 (= lt!462876 e!888579)))

(declare-fun c!228976 () Bool)

(assert (=> d!397832 (= c!228976 ((_ is Nil!14108) rules!2550))))

(assert (=> d!397832 (rulesValidInductive!787 thiss!19762 rules!2550)))

(assert (=> d!397832 (= (lemma!147 rules!2550 thiss!19762 rules!2550) lt!462876)))

(declare-fun b!1391193 () Bool)

(declare-fun Unit!20375 () Unit!20367)

(assert (=> b!1391193 (= e!888579 Unit!20375)))

(declare-fun b!1391194 () Bool)

(declare-fun Unit!20376 () Unit!20367)

(assert (=> b!1391194 (= e!888579 Unit!20376)))

(declare-fun lt!462877 () Unit!20367)

(assert (=> b!1391194 (= lt!462877 (lemma!147 rules!2550 thiss!19762 (t!122413 rules!2550)))))

(assert (= (and d!397832 c!228976) b!1391193))

(assert (= (and d!397832 (not c!228976)) b!1391194))

(declare-fun m!1566375 () Bool)

(assert (=> d!397832 m!1566375))

(assert (=> d!397832 m!1566375))

(declare-fun m!1566377 () Bool)

(assert (=> d!397832 m!1566377))

(assert (=> d!397832 m!1565311))

(declare-fun m!1566379 () Bool)

(assert (=> b!1391194 m!1566379))

(assert (=> d!397662 d!397832))

(declare-fun bs!337480 () Bool)

(declare-fun d!397836 () Bool)

(assert (= bs!337480 (and d!397836 d!397418)))

(declare-fun lambda!60173 () Int)

(assert (=> bs!337480 (= lambda!60173 lambda!60137)))

(declare-fun bs!337481 () Bool)

(assert (= bs!337481 (and d!397836 d!397826)))

(assert (=> bs!337481 (not (= lambda!60173 lambda!60161))))

(declare-fun bs!337482 () Bool)

(assert (= bs!337482 (and d!397836 d!397832)))

(assert (=> bs!337482 (= lambda!60173 lambda!60169)))

(assert (=> bs!337480 (not (= lambda!60173 lambda!60138))))

(declare-fun bs!337483 () Bool)

(assert (= bs!337483 (and d!397836 d!397824)))

(assert (=> bs!337483 (not (= lambda!60173 lambda!60158))))

(declare-fun bs!337484 () Bool)

(assert (= bs!337484 (and d!397836 b!1390085)))

(assert (=> bs!337484 (not (= lambda!60173 lambda!60111))))

(declare-fun bs!337485 () Bool)

(assert (= bs!337485 (and d!397836 d!397416)))

(assert (=> bs!337485 (not (= lambda!60173 lambda!60132))))

(declare-fun bs!337486 () Bool)

(assert (= bs!337486 (and d!397836 d!397420)))

(assert (=> bs!337486 (not (= lambda!60173 lambda!60139))))

(declare-fun b!1391229 () Bool)

(declare-fun e!888601 () Regex!3757)

(assert (=> b!1391229 (= e!888601 (Union!3757 (h!19511 (map!3125 rules!2550 lambda!60157)) (generalisedUnion!155 (t!122415 (map!3125 rules!2550 lambda!60157)))))))

(declare-fun b!1391230 () Bool)

(declare-fun e!888602 () Bool)

(declare-fun e!888600 () Bool)

(assert (=> b!1391230 (= e!888602 e!888600)))

(declare-fun c!228993 () Bool)

(declare-fun isEmpty!8558 (List!14176) Bool)

(assert (=> b!1391230 (= c!228993 (isEmpty!8558 (map!3125 rules!2550 lambda!60157)))))

(declare-fun e!888605 () Bool)

(declare-fun b!1391231 () Bool)

(declare-fun lt!462881 () Regex!3757)

(assert (=> b!1391231 (= e!888605 (= lt!462881 (head!2544 (map!3125 rules!2550 lambda!60157))))))

(declare-fun b!1391232 () Bool)

(declare-fun e!888603 () Regex!3757)

(assert (=> b!1391232 (= e!888603 (h!19511 (map!3125 rules!2550 lambda!60157)))))

(declare-fun b!1391233 () Bool)

(assert (=> b!1391233 (= e!888600 e!888605)))

(declare-fun c!228991 () Bool)

(declare-fun tail!2021 (List!14176) List!14176)

(assert (=> b!1391233 (= c!228991 (isEmpty!8558 (tail!2021 (map!3125 rules!2550 lambda!60157))))))

(assert (=> d!397836 e!888602))

(declare-fun res!628106 () Bool)

(assert (=> d!397836 (=> (not res!628106) (not e!888602))))

(assert (=> d!397836 (= res!628106 (validRegex!1639 lt!462881))))

(assert (=> d!397836 (= lt!462881 e!888603)))

(declare-fun c!228992 () Bool)

(declare-fun e!888604 () Bool)

(assert (=> d!397836 (= c!228992 e!888604)))

(declare-fun res!628105 () Bool)

(assert (=> d!397836 (=> (not res!628105) (not e!888604))))

(assert (=> d!397836 (= res!628105 ((_ is Cons!14110) (map!3125 rules!2550 lambda!60157)))))

(assert (=> d!397836 (forall!3435 (map!3125 rules!2550 lambda!60157) lambda!60173)))

(assert (=> d!397836 (= (generalisedUnion!155 (map!3125 rules!2550 lambda!60157)) lt!462881)))

(declare-fun b!1391234 () Bool)

(declare-fun isUnion!56 (Regex!3757) Bool)

(assert (=> b!1391234 (= e!888605 (isUnion!56 lt!462881))))

(declare-fun b!1391235 () Bool)

(assert (=> b!1391235 (= e!888601 EmptyLang!3757)))

(declare-fun b!1391236 () Bool)

(assert (=> b!1391236 (= e!888603 e!888601)))

(declare-fun c!228994 () Bool)

(assert (=> b!1391236 (= c!228994 ((_ is Cons!14110) (map!3125 rules!2550 lambda!60157)))))

(declare-fun b!1391237 () Bool)

(assert (=> b!1391237 (= e!888604 (isEmpty!8558 (t!122415 (map!3125 rules!2550 lambda!60157))))))

(declare-fun b!1391238 () Bool)

(declare-fun isEmptyLang!56 (Regex!3757) Bool)

(assert (=> b!1391238 (= e!888600 (isEmptyLang!56 lt!462881))))

(assert (= (and d!397836 res!628105) b!1391237))

(assert (= (and d!397836 c!228992) b!1391232))

(assert (= (and d!397836 (not c!228992)) b!1391236))

(assert (= (and b!1391236 c!228994) b!1391229))

(assert (= (and b!1391236 (not c!228994)) b!1391235))

(assert (= (and d!397836 res!628106) b!1391230))

(assert (= (and b!1391230 c!228993) b!1391238))

(assert (= (and b!1391230 (not c!228993)) b!1391233))

(assert (= (and b!1391233 c!228991) b!1391231))

(assert (= (and b!1391233 (not c!228991)) b!1391234))

(declare-fun m!1566395 () Bool)

(assert (=> b!1391229 m!1566395))

(declare-fun m!1566397 () Bool)

(assert (=> b!1391237 m!1566397))

(assert (=> b!1391231 m!1565981))

(declare-fun m!1566399 () Bool)

(assert (=> b!1391231 m!1566399))

(declare-fun m!1566401 () Bool)

(assert (=> d!397836 m!1566401))

(assert (=> d!397836 m!1565981))

(declare-fun m!1566403 () Bool)

(assert (=> d!397836 m!1566403))

(assert (=> b!1391233 m!1565981))

(declare-fun m!1566405 () Bool)

(assert (=> b!1391233 m!1566405))

(assert (=> b!1391233 m!1566405))

(declare-fun m!1566407 () Bool)

(assert (=> b!1391233 m!1566407))

(declare-fun m!1566409 () Bool)

(assert (=> b!1391234 m!1566409))

(declare-fun m!1566411 () Bool)

(assert (=> b!1391238 m!1566411))

(assert (=> b!1391230 m!1565981))

(declare-fun m!1566413 () Bool)

(assert (=> b!1391230 m!1566413))

(assert (=> d!397662 d!397836))

(declare-fun d!397842 () Bool)

(declare-fun lt!462882 () List!14176)

(assert (=> d!397842 (= (size!11601 lt!462882) (size!11602 rules!2550))))

(declare-fun e!888610 () List!14176)

(assert (=> d!397842 (= lt!462882 e!888610)))

(declare-fun c!228995 () Bool)

(assert (=> d!397842 (= c!228995 ((_ is Nil!14108) rules!2550))))

(assert (=> d!397842 (= (map!3125 rules!2550 lambda!60157) lt!462882)))

(declare-fun b!1391243 () Bool)

(assert (=> b!1391243 (= e!888610 Nil!14110)))

(declare-fun b!1391244 () Bool)

(assert (=> b!1391244 (= e!888610 ($colon$colon!221 (map!3125 (t!122413 rules!2550) lambda!60157) (dynLambda!6485 lambda!60157 (h!19509 rules!2550))))))

(assert (= (and d!397842 c!228995) b!1391243))

(assert (= (and d!397842 (not c!228995)) b!1391244))

(declare-fun b_lambda!43359 () Bool)

(assert (=> (not b_lambda!43359) (not b!1391244)))

(declare-fun m!1566415 () Bool)

(assert (=> d!397842 m!1566415))

(assert (=> d!397842 m!1565077))

(declare-fun m!1566417 () Bool)

(assert (=> b!1391244 m!1566417))

(declare-fun m!1566419 () Bool)

(assert (=> b!1391244 m!1566419))

(assert (=> b!1391244 m!1566417))

(assert (=> b!1391244 m!1566419))

(declare-fun m!1566421 () Bool)

(assert (=> b!1391244 m!1566421))

(assert (=> d!397662 d!397842))

(declare-fun d!397844 () Bool)

(assert (=> d!397844 (= (inv!18441 (tag!2705 (h!19509 (t!122413 rules!2550)))) (= (mod (str.len (value!79257 (tag!2705 (h!19509 (t!122413 rules!2550))))) 2) 0))))

(assert (=> b!1390953 d!397844))

(declare-fun d!397846 () Bool)

(declare-fun res!628111 () Bool)

(declare-fun e!888611 () Bool)

(assert (=> d!397846 (=> (not res!628111) (not e!888611))))

(assert (=> d!397846 (= res!628111 (semiInverseModEq!948 (toChars!3589 (transformation!2443 (h!19509 (t!122413 rules!2550)))) (toValue!3730 (transformation!2443 (h!19509 (t!122413 rules!2550))))))))

(assert (=> d!397846 (= (inv!18445 (transformation!2443 (h!19509 (t!122413 rules!2550)))) e!888611)))

(declare-fun b!1391245 () Bool)

(assert (=> b!1391245 (= e!888611 (equivClasses!907 (toChars!3589 (transformation!2443 (h!19509 (t!122413 rules!2550)))) (toValue!3730 (transformation!2443 (h!19509 (t!122413 rules!2550))))))))

(assert (= (and d!397846 res!628111) b!1391245))

(declare-fun m!1566423 () Bool)

(assert (=> d!397846 m!1566423))

(declare-fun m!1566425 () Bool)

(assert (=> b!1391245 m!1566425))

(assert (=> b!1390953 d!397846))

(declare-fun b!1391261 () Bool)

(declare-fun e!888623 () Bool)

(declare-fun call!93036 () Bool)

(assert (=> b!1391261 (= e!888623 call!93036)))

(declare-fun b!1391262 () Bool)

(declare-fun e!888625 () Bool)

(declare-fun e!888624 () Bool)

(assert (=> b!1391262 (= e!888625 e!888624)))

(declare-fun res!628120 () Bool)

(assert (=> b!1391262 (= res!628120 (not ((_ is Cons!14108) rules!2550)))))

(assert (=> b!1391262 (=> res!628120 e!888624)))

(declare-fun b!1391263 () Bool)

(assert (=> b!1391263 (= e!888625 e!888623)))

(declare-fun res!628119 () Bool)

(declare-fun rulesUseDisjointChars!191 (Rule!4686 Rule!4686) Bool)

(assert (=> b!1391263 (= res!628119 (rulesUseDisjointChars!191 (h!19509 rules!2550) (h!19509 rules!2550)))))

(assert (=> b!1391263 (=> (not res!628119) (not e!888623))))

(declare-fun bm!93031 () Bool)

(assert (=> bm!93031 (= call!93036 (ruleDisjointCharsFromAllFromOtherType!390 (h!19509 rules!2550) (t!122413 rules!2550)))))

(declare-fun b!1391264 () Bool)

(assert (=> b!1391264 (= e!888624 call!93036)))

(declare-fun d!397848 () Bool)

(declare-fun c!229000 () Bool)

(assert (=> d!397848 (= c!229000 (and ((_ is Cons!14108) rules!2550) (not (= (isSeparator!2443 (h!19509 rules!2550)) (isSeparator!2443 (h!19509 rules!2550))))))))

(assert (=> d!397848 (= (ruleDisjointCharsFromAllFromOtherType!390 (h!19509 rules!2550) rules!2550) e!888625)))

(assert (= (and d!397848 c!229000) b!1391263))

(assert (= (and d!397848 (not c!229000)) b!1391262))

(assert (= (and b!1391263 res!628119) b!1391261))

(assert (= (and b!1391262 (not res!628120)) b!1391264))

(assert (= (or b!1391261 b!1391264) bm!93031))

(declare-fun m!1566437 () Bool)

(assert (=> b!1391263 m!1566437))

(declare-fun m!1566439 () Bool)

(assert (=> bm!93031 m!1566439))

(assert (=> b!1390363 d!397848))

(declare-fun d!397858 () Bool)

(assert (=> d!397858 (= (isEmpty!8550 lt!462532) ((_ is Nil!14107) lt!462532))))

(assert (=> bm!93020 d!397858))

(declare-fun d!397860 () Bool)

(declare-fun lt!462886 () Bool)

(assert (=> d!397860 (= lt!462886 (select (content!2079 (t!122412 (usedCharacters!254 (regex!2443 (rule!4204 t1!34))))) lt!462536))))

(declare-fun e!888627 () Bool)

(assert (=> d!397860 (= lt!462886 e!888627)))

(declare-fun res!628121 () Bool)

(assert (=> d!397860 (=> (not res!628121) (not e!888627))))

(assert (=> d!397860 (= res!628121 ((_ is Cons!14107) (t!122412 (usedCharacters!254 (regex!2443 (rule!4204 t1!34))))))))

(assert (=> d!397860 (= (contains!2710 (t!122412 (usedCharacters!254 (regex!2443 (rule!4204 t1!34)))) lt!462536) lt!462886)))

(declare-fun b!1391267 () Bool)

(declare-fun e!888628 () Bool)

(assert (=> b!1391267 (= e!888627 e!888628)))

(declare-fun res!628122 () Bool)

(assert (=> b!1391267 (=> res!628122 e!888628)))

(assert (=> b!1391267 (= res!628122 (= (h!19508 (t!122412 (usedCharacters!254 (regex!2443 (rule!4204 t1!34))))) lt!462536))))

(declare-fun b!1391268 () Bool)

(assert (=> b!1391268 (= e!888628 (contains!2710 (t!122412 (t!122412 (usedCharacters!254 (regex!2443 (rule!4204 t1!34))))) lt!462536))))

(assert (= (and d!397860 res!628121) b!1391267))

(assert (= (and b!1391267 (not res!628122)) b!1391268))

(declare-fun m!1566441 () Bool)

(assert (=> d!397860 m!1566441))

(declare-fun m!1566443 () Bool)

(assert (=> d!397860 m!1566443))

(declare-fun m!1566445 () Bool)

(assert (=> b!1391268 m!1566445))

(assert (=> b!1390396 d!397860))

(declare-fun d!397862 () Bool)

(assert (=> d!397862 (= (isEmpty!8550 (tail!2020 lt!462537)) ((_ is Nil!14107) (tail!2020 lt!462537)))))

(assert (=> b!1390845 d!397862))

(declare-fun d!397864 () Bool)

(assert (=> d!397864 (= (tail!2020 lt!462537) (t!122412 lt!462537))))

(assert (=> b!1390845 d!397864))

(declare-fun d!397866 () Bool)

(declare-fun lt!462887 () Bool)

(assert (=> d!397866 (= lt!462887 (select (content!2080 rules!2550) (rule!4204 (_1!7741 (get!4379 lt!462639)))))))

(declare-fun e!888629 () Bool)

(assert (=> d!397866 (= lt!462887 e!888629)))

(declare-fun res!628123 () Bool)

(assert (=> d!397866 (=> (not res!628123) (not e!888629))))

(assert (=> d!397866 (= res!628123 ((_ is Cons!14108) rules!2550))))

(assert (=> d!397866 (= (contains!2709 rules!2550 (rule!4204 (_1!7741 (get!4379 lt!462639)))) lt!462887)))

(declare-fun b!1391269 () Bool)

(declare-fun e!888630 () Bool)

(assert (=> b!1391269 (= e!888629 e!888630)))

(declare-fun res!628124 () Bool)

(assert (=> b!1391269 (=> res!628124 e!888630)))

(assert (=> b!1391269 (= res!628124 (= (h!19509 rules!2550) (rule!4204 (_1!7741 (get!4379 lt!462639)))))))

(declare-fun b!1391270 () Bool)

(assert (=> b!1391270 (= e!888630 (contains!2709 (t!122413 rules!2550) (rule!4204 (_1!7741 (get!4379 lt!462639)))))))

(assert (= (and d!397866 res!628123) b!1391269))

(assert (= (and b!1391269 (not res!628124)) b!1391270))

(assert (=> d!397866 m!1565811))

(declare-fun m!1566447 () Bool)

(assert (=> d!397866 m!1566447))

(declare-fun m!1566449 () Bool)

(assert (=> b!1391270 m!1566449))

(assert (=> b!1390427 d!397866))

(assert (=> b!1390427 d!397750))

(declare-fun d!397868 () Bool)

(assert (=> d!397868 (= (isEmpty!8552 (_1!7743 lt!462620)) ((_ is Nil!14109) (_1!7743 lt!462620)))))

(assert (=> b!1390386 d!397868))

(declare-fun d!397870 () Bool)

(declare-fun c!229004 () Bool)

(assert (=> d!397870 (= c!229004 ((_ is Nil!14110) (map!3125 rules!2550 lambda!60110)))))

(declare-fun e!888637 () (InoxSet Regex!3757))

(assert (=> d!397870 (= (content!2078 (map!3125 rules!2550 lambda!60110)) e!888637)))

(declare-fun b!1391279 () Bool)

(assert (=> b!1391279 (= e!888637 ((as const (Array Regex!3757 Bool)) false))))

(declare-fun b!1391280 () Bool)

(assert (=> b!1391280 (= e!888637 ((_ map or) (store ((as const (Array Regex!3757 Bool)) false) (h!19511 (map!3125 rules!2550 lambda!60110)) true) (content!2078 (t!122415 (map!3125 rules!2550 lambda!60110)))))))

(assert (= (and d!397870 c!229004) b!1391279))

(assert (= (and d!397870 (not c!229004)) b!1391280))

(declare-fun m!1566451 () Bool)

(assert (=> b!1391280 m!1566451))

(declare-fun m!1566453 () Bool)

(assert (=> b!1391280 m!1566453))

(assert (=> d!397374 d!397870))

(declare-fun d!397874 () Bool)

(assert (=> d!397874 (= (isEmpty!8550 (tail!2020 lt!462532)) ((_ is Nil!14107) (tail!2020 lt!462532)))))

(assert (=> b!1390885 d!397874))

(declare-fun d!397876 () Bool)

(assert (=> d!397876 (= (tail!2020 lt!462532) (t!122412 lt!462532))))

(assert (=> b!1390885 d!397876))

(declare-fun d!397878 () Bool)

(declare-fun lt!462888 () Bool)

(assert (=> d!397878 (= lt!462888 (select (content!2079 (t!122412 lt!462520)) lt!462536))))

(declare-fun e!888638 () Bool)

(assert (=> d!397878 (= lt!462888 e!888638)))

(declare-fun res!628129 () Bool)

(assert (=> d!397878 (=> (not res!628129) (not e!888638))))

(assert (=> d!397878 (= res!628129 ((_ is Cons!14107) (t!122412 lt!462520)))))

(assert (=> d!397878 (= (contains!2710 (t!122412 lt!462520) lt!462536) lt!462888)))

(declare-fun b!1391281 () Bool)

(declare-fun e!888639 () Bool)

(assert (=> b!1391281 (= e!888638 e!888639)))

(declare-fun res!628130 () Bool)

(assert (=> b!1391281 (=> res!628130 e!888639)))

(assert (=> b!1391281 (= res!628130 (= (h!19508 (t!122412 lt!462520)) lt!462536))))

(declare-fun b!1391282 () Bool)

(assert (=> b!1391282 (= e!888639 (contains!2710 (t!122412 (t!122412 lt!462520)) lt!462536))))

(assert (= (and d!397878 res!628129) b!1391281))

(assert (= (and b!1391281 (not res!628130)) b!1391282))

(assert (=> d!397878 m!1566067))

(declare-fun m!1566455 () Bool)

(assert (=> d!397878 m!1566455))

(declare-fun m!1566457 () Bool)

(assert (=> b!1391282 m!1566457))

(assert (=> b!1390675 d!397878))

(declare-fun d!397880 () Bool)

(declare-fun e!888641 () Bool)

(assert (=> d!397880 e!888641))

(declare-fun res!628132 () Bool)

(assert (=> d!397880 (=> (not res!628132) (not e!888641))))

(declare-fun lt!462889 () List!14173)

(assert (=> d!397880 (= res!628132 (= (content!2079 lt!462889) ((_ map or) (content!2079 (t!122412 lt!462523)) (content!2079 (getSuffix!603 lt!462520 lt!462523)))))))

(declare-fun e!888640 () List!14173)

(assert (=> d!397880 (= lt!462889 e!888640)))

(declare-fun c!229005 () Bool)

(assert (=> d!397880 (= c!229005 ((_ is Nil!14107) (t!122412 lt!462523)))))

(assert (=> d!397880 (= (++!3664 (t!122412 lt!462523) (getSuffix!603 lt!462520 lt!462523)) lt!462889)))

(declare-fun b!1391285 () Bool)

(declare-fun res!628131 () Bool)

(assert (=> b!1391285 (=> (not res!628131) (not e!888641))))

(assert (=> b!1391285 (= res!628131 (= (size!11605 lt!462889) (+ (size!11605 (t!122412 lt!462523)) (size!11605 (getSuffix!603 lt!462520 lt!462523)))))))

(declare-fun b!1391284 () Bool)

(assert (=> b!1391284 (= e!888640 (Cons!14107 (h!19508 (t!122412 lt!462523)) (++!3664 (t!122412 (t!122412 lt!462523)) (getSuffix!603 lt!462520 lt!462523))))))

(declare-fun b!1391283 () Bool)

(assert (=> b!1391283 (= e!888640 (getSuffix!603 lt!462520 lt!462523))))

(declare-fun b!1391286 () Bool)

(assert (=> b!1391286 (= e!888641 (or (not (= (getSuffix!603 lt!462520 lt!462523) Nil!14107)) (= lt!462889 (t!122412 lt!462523))))))

(assert (= (and d!397880 c!229005) b!1391283))

(assert (= (and d!397880 (not c!229005)) b!1391284))

(assert (= (and d!397880 res!628132) b!1391285))

(assert (= (and b!1391285 res!628131) b!1391286))

(declare-fun m!1566459 () Bool)

(assert (=> d!397880 m!1566459))

(assert (=> d!397880 m!1566103))

(assert (=> d!397880 m!1564849))

(assert (=> d!397880 m!1565833))

(declare-fun m!1566461 () Bool)

(assert (=> b!1391285 m!1566461))

(assert (=> b!1391285 m!1566205))

(assert (=> b!1391285 m!1564849))

(assert (=> b!1391285 m!1565839))

(assert (=> b!1391284 m!1564849))

(declare-fun m!1566463 () Bool)

(assert (=> b!1391284 m!1566463))

(assert (=> b!1390867 d!397880))

(declare-fun d!397882 () Bool)

(declare-fun lt!462890 () Bool)

(assert (=> d!397882 (= lt!462890 (isEmpty!8550 (list!5477 (_2!7742 lt!462676))))))

(assert (=> d!397882 (= lt!462890 (isEmpty!8555 (c!228748 (_2!7742 lt!462676))))))

(assert (=> d!397882 (= (isEmpty!8547 (_2!7742 lt!462676)) lt!462890)))

(declare-fun bs!337488 () Bool)

(assert (= bs!337488 d!397882))

(declare-fun m!1566465 () Bool)

(assert (=> bs!337488 m!1566465))

(assert (=> bs!337488 m!1566465))

(declare-fun m!1566467 () Bool)

(assert (=> bs!337488 m!1566467))

(declare-fun m!1566469 () Bool)

(assert (=> bs!337488 m!1566469))

(assert (=> b!1390527 d!397882))

(declare-fun d!397884 () Bool)

(declare-fun lt!462891 () Int)

(assert (=> d!397884 (= lt!462891 (size!11605 (list!5477 lt!462516)))))

(assert (=> d!397884 (= lt!462891 (size!11608 (c!228748 lt!462516)))))

(assert (=> d!397884 (= (size!11596 lt!462516) lt!462891)))

(declare-fun bs!337489 () Bool)

(assert (= bs!337489 d!397884))

(assert (=> bs!337489 m!1564959))

(assert (=> bs!337489 m!1564959))

(assert (=> bs!337489 m!1566255))

(assert (=> bs!337489 m!1566267))

(assert (=> b!1390914 d!397884))

(declare-fun d!397886 () Bool)

(assert (=> d!397886 (= (list!5477 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34))) (list!5481 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34)))))))

(declare-fun bs!337490 () Bool)

(assert (= bs!337490 d!397886))

(declare-fun m!1566471 () Bool)

(assert (=> bs!337490 m!1566471))

(assert (=> b!1390344 d!397886))

(assert (=> d!397422 d!397758))

(assert (=> d!397610 d!397820))

(declare-fun d!397888 () Bool)

(declare-fun e!888643 () Bool)

(assert (=> d!397888 e!888643))

(declare-fun res!628134 () Bool)

(assert (=> d!397888 (=> (not res!628134) (not e!888643))))

(declare-fun lt!462892 () List!14173)

(assert (=> d!397888 (= res!628134 (= (content!2079 lt!462892) ((_ map or) (content!2079 (t!122412 lt!462532)) (content!2079 (Cons!14107 lt!462513 Nil!14107)))))))

(declare-fun e!888642 () List!14173)

(assert (=> d!397888 (= lt!462892 e!888642)))

(declare-fun c!229006 () Bool)

(assert (=> d!397888 (= c!229006 ((_ is Nil!14107) (t!122412 lt!462532)))))

(assert (=> d!397888 (= (++!3664 (t!122412 lt!462532) (Cons!14107 lt!462513 Nil!14107)) lt!462892)))

(declare-fun b!1391289 () Bool)

(declare-fun res!628133 () Bool)

(assert (=> b!1391289 (=> (not res!628133) (not e!888643))))

(assert (=> b!1391289 (= res!628133 (= (size!11605 lt!462892) (+ (size!11605 (t!122412 lt!462532)) (size!11605 (Cons!14107 lt!462513 Nil!14107)))))))

(declare-fun b!1391288 () Bool)

(assert (=> b!1391288 (= e!888642 (Cons!14107 (h!19508 (t!122412 lt!462532)) (++!3664 (t!122412 (t!122412 lt!462532)) (Cons!14107 lt!462513 Nil!14107))))))

(declare-fun b!1391287 () Bool)

(assert (=> b!1391287 (= e!888642 (Cons!14107 lt!462513 Nil!14107))))

(declare-fun b!1391290 () Bool)

(assert (=> b!1391290 (= e!888643 (or (not (= (Cons!14107 lt!462513 Nil!14107) Nil!14107)) (= lt!462892 (t!122412 lt!462532))))))

(assert (= (and d!397888 c!229006) b!1391287))

(assert (= (and d!397888 (not c!229006)) b!1391288))

(assert (= (and d!397888 res!628134) b!1391289))

(assert (= (and b!1391289 res!628133) b!1391290))

(declare-fun m!1566473 () Bool)

(assert (=> d!397888 m!1566473))

(declare-fun m!1566475 () Bool)

(assert (=> d!397888 m!1566475))

(assert (=> d!397888 m!1565965))

(declare-fun m!1566477 () Bool)

(assert (=> b!1391289 m!1566477))

(declare-fun m!1566479 () Bool)

(assert (=> b!1391289 m!1566479))

(assert (=> b!1391289 m!1565969))

(declare-fun m!1566481 () Bool)

(assert (=> b!1391288 m!1566481))

(assert (=> b!1390920 d!397888))

(declare-fun d!397890 () Bool)

(assert (=> d!397890 (= (list!5478 (_1!7742 lt!462772)) (list!5482 (c!228750 (_1!7742 lt!462772))))))

(declare-fun bs!337491 () Bool)

(assert (= bs!337491 d!397890))

(declare-fun m!1566483 () Bool)

(assert (=> bs!337491 m!1566483))

(assert (=> b!1390879 d!397890))

(assert (=> b!1390879 d!397668))

(assert (=> b!1390879 d!397670))

(declare-fun d!397892 () Bool)

(declare-fun lt!462893 () Bool)

(assert (=> d!397892 (= lt!462893 (select (content!2079 (t!122412 lt!462523)) lt!462536))))

(declare-fun e!888646 () Bool)

(assert (=> d!397892 (= lt!462893 e!888646)))

(declare-fun res!628137 () Bool)

(assert (=> d!397892 (=> (not res!628137) (not e!888646))))

(assert (=> d!397892 (= res!628137 ((_ is Cons!14107) (t!122412 lt!462523)))))

(assert (=> d!397892 (= (contains!2710 (t!122412 lt!462523) lt!462536) lt!462893)))

(declare-fun b!1391293 () Bool)

(declare-fun e!888647 () Bool)

(assert (=> b!1391293 (= e!888646 e!888647)))

(declare-fun res!628138 () Bool)

(assert (=> b!1391293 (=> res!628138 e!888647)))

(assert (=> b!1391293 (= res!628138 (= (h!19508 (t!122412 lt!462523)) lt!462536))))

(declare-fun b!1391294 () Bool)

(assert (=> b!1391294 (= e!888647 (contains!2710 (t!122412 (t!122412 lt!462523)) lt!462536))))

(assert (= (and d!397892 res!628137) b!1391293))

(assert (= (and b!1391293 (not res!628138)) b!1391294))

(assert (=> d!397892 m!1566103))

(declare-fun m!1566489 () Bool)

(assert (=> d!397892 m!1566489))

(declare-fun m!1566491 () Bool)

(assert (=> b!1391294 m!1566491))

(assert (=> b!1390911 d!397892))

(declare-fun d!397896 () Bool)

(assert (=> d!397896 true))

(declare-fun order!8641 () Int)

(declare-fun lambda!60176 () Int)

(declare-fun order!8639 () Int)

(declare-fun dynLambda!6496 (Int Int) Int)

(declare-fun dynLambda!6497 (Int Int) Int)

(assert (=> d!397896 (< (dynLambda!6496 order!8639 (toChars!3589 (transformation!2443 (h!19509 rules!2550)))) (dynLambda!6497 order!8641 lambda!60176))))

(assert (=> d!397896 true))

(declare-fun order!8643 () Int)

(declare-fun dynLambda!6498 (Int Int) Int)

(assert (=> d!397896 (< (dynLambda!6498 order!8643 (toValue!3730 (transformation!2443 (h!19509 rules!2550)))) (dynLambda!6497 order!8641 lambda!60176))))

(declare-fun Forall!548 (Int) Bool)

(assert (=> d!397896 (= (semiInverseModEq!948 (toChars!3589 (transformation!2443 (h!19509 rules!2550))) (toValue!3730 (transformation!2443 (h!19509 rules!2550)))) (Forall!548 lambda!60176))))

(declare-fun bs!337493 () Bool)

(assert (= bs!337493 d!397896))

(declare-fun m!1566501 () Bool)

(assert (=> bs!337493 m!1566501))

(assert (=> d!397680 d!397896))

(declare-fun b!1391391 () Bool)

(declare-fun e!888706 () Bool)

(declare-fun e!888708 () Bool)

(assert (=> b!1391391 (= e!888706 e!888708)))

(declare-fun res!628192 () Bool)

(assert (=> b!1391391 (=> (not res!628192) (not e!888708))))

(declare-fun lt!462924 () Option!2704)

(assert (=> b!1391391 (= res!628192 (matchR!1748 (regex!2443 (h!19509 rules!2550)) (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462924))))))))

(declare-fun b!1391392 () Bool)

(declare-fun e!888707 () Option!2704)

(assert (=> b!1391392 (= e!888707 None!2703)))

(declare-fun d!397902 () Bool)

(assert (=> d!397902 e!888706))

(declare-fun res!628191 () Bool)

(assert (=> d!397902 (=> res!628191 e!888706)))

(assert (=> d!397902 (= res!628191 (isEmpty!8554 lt!462924))))

(assert (=> d!397902 (= lt!462924 e!888707)))

(declare-fun c!229027 () Bool)

(declare-datatypes ((tuple2!13716 0))(
  ( (tuple2!13717 (_1!7744 List!14173) (_2!7744 List!14173)) )
))
(declare-fun lt!462926 () tuple2!13716)

(assert (=> d!397902 (= c!229027 (isEmpty!8550 (_1!7744 lt!462926)))))

(declare-fun findLongestMatch!243 (Regex!3757 List!14173) tuple2!13716)

(assert (=> d!397902 (= lt!462926 (findLongestMatch!243 (regex!2443 (h!19509 rules!2550)) lt!462537))))

(assert (=> d!397902 (ruleValid!606 thiss!19762 (h!19509 rules!2550))))

(assert (=> d!397902 (= (maxPrefixOneRule!630 thiss!19762 (h!19509 rules!2550) lt!462537) lt!462924)))

(declare-fun b!1391393 () Bool)

(declare-fun e!888709 () Bool)

(declare-fun findLongestMatchInner!287 (Regex!3757 List!14173 Int List!14173 List!14173 Int) tuple2!13716)

(assert (=> b!1391393 (= e!888709 (matchR!1748 (regex!2443 (h!19509 rules!2550)) (_1!7744 (findLongestMatchInner!287 (regex!2443 (h!19509 rules!2550)) Nil!14107 (size!11605 Nil!14107) lt!462537 lt!462537 (size!11605 lt!462537)))))))

(declare-fun b!1391394 () Bool)

(declare-fun res!628194 () Bool)

(assert (=> b!1391394 (=> (not res!628194) (not e!888708))))

(assert (=> b!1391394 (= res!628194 (= (rule!4204 (_1!7741 (get!4379 lt!462924))) (h!19509 rules!2550)))))

(declare-fun b!1391395 () Bool)

(assert (=> b!1391395 (= e!888707 (Some!2703 (tuple2!13711 (Token!4549 (apply!3551 (transformation!2443 (h!19509 rules!2550)) (seqFromList!1648 (_1!7744 lt!462926))) (h!19509 rules!2550) (size!11596 (seqFromList!1648 (_1!7744 lt!462926))) (_1!7744 lt!462926)) (_2!7744 lt!462926))))))

(declare-fun lt!462923 () Unit!20367)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!271 (Regex!3757 List!14173) Unit!20367)

(assert (=> b!1391395 (= lt!462923 (longestMatchIsAcceptedByMatchOrIsEmpty!271 (regex!2443 (h!19509 rules!2550)) lt!462537))))

(declare-fun res!628190 () Bool)

(assert (=> b!1391395 (= res!628190 (isEmpty!8550 (_1!7744 (findLongestMatchInner!287 (regex!2443 (h!19509 rules!2550)) Nil!14107 (size!11605 Nil!14107) lt!462537 lt!462537 (size!11605 lt!462537)))))))

(assert (=> b!1391395 (=> res!628190 e!888709)))

(assert (=> b!1391395 e!888709))

(declare-fun lt!462925 () Unit!20367)

(assert (=> b!1391395 (= lt!462925 lt!462923)))

(declare-fun lt!462927 () Unit!20367)

(declare-fun lemmaSemiInverse!341 (TokenValueInjection!4726 BalanceConc!9232) Unit!20367)

(assert (=> b!1391395 (= lt!462927 (lemmaSemiInverse!341 (transformation!2443 (h!19509 rules!2550)) (seqFromList!1648 (_1!7744 lt!462926))))))

(declare-fun b!1391396 () Bool)

(declare-fun res!628193 () Bool)

(assert (=> b!1391396 (=> (not res!628193) (not e!888708))))

(assert (=> b!1391396 (= res!628193 (< (size!11605 (_2!7741 (get!4379 lt!462924))) (size!11605 lt!462537)))))

(declare-fun b!1391397 () Bool)

(declare-fun res!628188 () Bool)

(assert (=> b!1391397 (=> (not res!628188) (not e!888708))))

(assert (=> b!1391397 (= res!628188 (= (value!79258 (_1!7741 (get!4379 lt!462924))) (apply!3551 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462924)))) (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!462924)))))))))

(declare-fun b!1391398 () Bool)

(declare-fun res!628189 () Bool)

(assert (=> b!1391398 (=> (not res!628189) (not e!888708))))

(assert (=> b!1391398 (= res!628189 (= (++!3664 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462924)))) (_2!7741 (get!4379 lt!462924))) lt!462537))))

(declare-fun b!1391399 () Bool)

(assert (=> b!1391399 (= e!888708 (= (size!11595 (_1!7741 (get!4379 lt!462924))) (size!11605 (originalCharacters!3305 (_1!7741 (get!4379 lt!462924))))))))

(assert (= (and d!397902 c!229027) b!1391392))

(assert (= (and d!397902 (not c!229027)) b!1391395))

(assert (= (and b!1391395 (not res!628190)) b!1391393))

(assert (= (and d!397902 (not res!628191)) b!1391391))

(assert (= (and b!1391391 res!628192) b!1391398))

(assert (= (and b!1391398 res!628189) b!1391396))

(assert (= (and b!1391396 res!628193) b!1391394))

(assert (= (and b!1391394 res!628194) b!1391397))

(assert (= (and b!1391397 res!628188) b!1391399))

(declare-fun m!1566603 () Bool)

(assert (=> b!1391398 m!1566603))

(declare-fun m!1566605 () Bool)

(assert (=> b!1391398 m!1566605))

(assert (=> b!1391398 m!1566605))

(declare-fun m!1566607 () Bool)

(assert (=> b!1391398 m!1566607))

(assert (=> b!1391398 m!1566607))

(declare-fun m!1566609 () Bool)

(assert (=> b!1391398 m!1566609))

(assert (=> b!1391399 m!1566603))

(declare-fun m!1566611 () Bool)

(assert (=> b!1391399 m!1566611))

(assert (=> b!1391394 m!1566603))

(assert (=> b!1391396 m!1566603))

(declare-fun m!1566613 () Bool)

(assert (=> b!1391396 m!1566613))

(assert (=> b!1391396 m!1565617))

(assert (=> b!1391391 m!1566603))

(assert (=> b!1391391 m!1566605))

(assert (=> b!1391391 m!1566605))

(assert (=> b!1391391 m!1566607))

(assert (=> b!1391391 m!1566607))

(declare-fun m!1566615 () Bool)

(assert (=> b!1391391 m!1566615))

(declare-fun m!1566617 () Bool)

(assert (=> d!397902 m!1566617))

(declare-fun m!1566619 () Bool)

(assert (=> d!397902 m!1566619))

(declare-fun m!1566621 () Bool)

(assert (=> d!397902 m!1566621))

(declare-fun m!1566623 () Bool)

(assert (=> d!397902 m!1566623))

(assert (=> b!1391397 m!1566603))

(declare-fun m!1566625 () Bool)

(assert (=> b!1391397 m!1566625))

(assert (=> b!1391397 m!1566625))

(declare-fun m!1566627 () Bool)

(assert (=> b!1391397 m!1566627))

(declare-fun m!1566629 () Bool)

(assert (=> b!1391395 m!1566629))

(declare-fun m!1566631 () Bool)

(assert (=> b!1391395 m!1566631))

(declare-fun m!1566633 () Bool)

(assert (=> b!1391395 m!1566633))

(declare-fun m!1566635 () Bool)

(assert (=> b!1391395 m!1566635))

(assert (=> b!1391395 m!1566635))

(assert (=> b!1391395 m!1565617))

(declare-fun m!1566637 () Bool)

(assert (=> b!1391395 m!1566637))

(assert (=> b!1391395 m!1566631))

(assert (=> b!1391395 m!1566631))

(declare-fun m!1566639 () Bool)

(assert (=> b!1391395 m!1566639))

(declare-fun m!1566641 () Bool)

(assert (=> b!1391395 m!1566641))

(assert (=> b!1391395 m!1565617))

(assert (=> b!1391395 m!1566631))

(declare-fun m!1566643 () Bool)

(assert (=> b!1391395 m!1566643))

(assert (=> b!1391393 m!1566635))

(assert (=> b!1391393 m!1565617))

(assert (=> b!1391393 m!1566635))

(assert (=> b!1391393 m!1565617))

(assert (=> b!1391393 m!1566637))

(declare-fun m!1566645 () Bool)

(assert (=> b!1391393 m!1566645))

(assert (=> bm!93013 d!397902))

(declare-fun b!1391400 () Bool)

(declare-fun c!229028 () Bool)

(assert (=> b!1391400 (= c!229028 ((_ is Star!3757) (ite c!228805 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))))))

(declare-fun e!888712 () List!14173)

(declare-fun e!888711 () List!14173)

(assert (=> b!1391400 (= e!888712 e!888711)))

(declare-fun d!397954 () Bool)

(declare-fun c!229031 () Bool)

(assert (=> d!397954 (= c!229031 (or ((_ is EmptyExpr!3757) (ite c!228805 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))) ((_ is EmptyLang!3757) (ite c!228805 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34)))))))))

(declare-fun e!888710 () List!14173)

(assert (=> d!397954 (= (usedCharacters!254 (ite c!228805 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))) e!888710)))

(declare-fun b!1391401 () Bool)

(declare-fun call!93043 () List!14173)

(assert (=> b!1391401 (= e!888711 call!93043)))

(declare-fun b!1391402 () Bool)

(assert (=> b!1391402 (= e!888710 Nil!14107)))

(declare-fun b!1391403 () Bool)

(declare-fun e!888713 () List!14173)

(declare-fun call!93045 () List!14173)

(assert (=> b!1391403 (= e!888713 call!93045)))

(declare-fun c!229029 () Bool)

(declare-fun bm!93038 () Bool)

(declare-fun call!93044 () List!14173)

(assert (=> bm!93038 (= call!93044 (usedCharacters!254 (ite c!229029 (regOne!8027 (ite c!228805 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))) (regTwo!8026 (ite c!228805 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))))))))

(declare-fun bm!93039 () Bool)

(assert (=> bm!93039 (= call!93043 (usedCharacters!254 (ite c!229028 (reg!4086 (ite c!228805 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))) (ite c!229029 (regTwo!8027 (ite c!228805 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))) (regOne!8026 (ite c!228805 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34)))))))))))

(declare-fun b!1391404 () Bool)

(assert (=> b!1391404 (= e!888710 e!888712)))

(declare-fun c!229030 () Bool)

(assert (=> b!1391404 (= c!229030 ((_ is ElementMatch!3757) (ite c!228805 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))))))

(declare-fun b!1391405 () Bool)

(assert (=> b!1391405 (= e!888713 call!93045)))

(declare-fun b!1391406 () Bool)

(assert (=> b!1391406 (= e!888711 e!888713)))

(assert (=> b!1391406 (= c!229029 ((_ is Union!3757) (ite c!228805 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))))))

(declare-fun call!93046 () List!14173)

(declare-fun bm!93040 () Bool)

(assert (=> bm!93040 (= call!93045 (++!3664 (ite c!229029 call!93044 call!93046) (ite c!229029 call!93046 call!93044)))))

(declare-fun bm!93041 () Bool)

(assert (=> bm!93041 (= call!93046 call!93043)))

(declare-fun b!1391407 () Bool)

(assert (=> b!1391407 (= e!888712 (Cons!14107 (c!228749 (ite c!228805 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))) Nil!14107))))

(assert (= (and d!397954 c!229031) b!1391402))

(assert (= (and d!397954 (not c!229031)) b!1391404))

(assert (= (and b!1391404 c!229030) b!1391407))

(assert (= (and b!1391404 (not c!229030)) b!1391400))

(assert (= (and b!1391400 c!229028) b!1391401))

(assert (= (and b!1391400 (not c!229028)) b!1391406))

(assert (= (and b!1391406 c!229029) b!1391403))

(assert (= (and b!1391406 (not c!229029)) b!1391405))

(assert (= (or b!1391403 b!1391405) bm!93038))

(assert (= (or b!1391403 b!1391405) bm!93041))

(assert (= (or b!1391403 b!1391405) bm!93040))

(assert (= (or b!1391401 bm!93041) bm!93039))

(declare-fun m!1566647 () Bool)

(assert (=> bm!93038 m!1566647))

(declare-fun m!1566649 () Bool)

(assert (=> bm!93039 m!1566649))

(declare-fun m!1566651 () Bool)

(assert (=> bm!93040 m!1566651))

(assert (=> bm!92976 d!397954))

(declare-fun d!397956 () Bool)

(assert (=> d!397956 (dynLambda!6490 lambda!60113 (rule!4204 t2!34))))

(assert (=> d!397956 true))

(declare-fun _$7!751 () Unit!20367)

(assert (=> d!397956 (= (choose!8554 rules!2550 lambda!60113 (rule!4204 t2!34)) _$7!751)))

(declare-fun b_lambda!43369 () Bool)

(assert (=> (not b_lambda!43369) (not d!397956)))

(declare-fun bs!337514 () Bool)

(assert (= bs!337514 d!397956))

(assert (=> bs!337514 m!1565909))

(assert (=> d!397636 d!397956))

(assert (=> d!397636 d!397738))

(declare-fun b!1391414 () Bool)

(declare-fun e!888722 () Bool)

(assert (=> b!1391414 (= e!888722 (= (head!2543 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639))))) (c!228749 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))))))))

(declare-fun b!1391415 () Bool)

(declare-fun res!628200 () Bool)

(assert (=> b!1391415 (=> (not res!628200) (not e!888722))))

(assert (=> b!1391415 (= res!628200 (isEmpty!8550 (tail!2020 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639)))))))))

(declare-fun d!397958 () Bool)

(declare-fun e!888723 () Bool)

(assert (=> d!397958 e!888723))

(declare-fun c!229036 () Bool)

(assert (=> d!397958 (= c!229036 ((_ is EmptyExpr!3757) (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462639))))))))

(declare-fun lt!462942 () Bool)

(declare-fun e!888724 () Bool)

(assert (=> d!397958 (= lt!462942 e!888724)))

(declare-fun c!229034 () Bool)

(assert (=> d!397958 (= c!229034 (isEmpty!8550 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639))))))))

(assert (=> d!397958 (validRegex!1639 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))))))

(assert (=> d!397958 (= (matchR!1748 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))) (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639))))) lt!462942)))

(declare-fun b!1391416 () Bool)

(declare-fun res!628202 () Bool)

(assert (=> b!1391416 (=> (not res!628202) (not e!888722))))

(declare-fun call!93047 () Bool)

(assert (=> b!1391416 (= res!628202 (not call!93047))))

(declare-fun b!1391417 () Bool)

(declare-fun e!888721 () Bool)

(assert (=> b!1391417 (= e!888723 e!888721)))

(declare-fun c!229035 () Bool)

(assert (=> b!1391417 (= c!229035 ((_ is EmptyLang!3757) (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462639))))))))

(declare-fun b!1391418 () Bool)

(assert (=> b!1391418 (= e!888724 (nullable!1219 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462639))))))))

(declare-fun b!1391419 () Bool)

(declare-fun res!628199 () Bool)

(declare-fun e!888718 () Bool)

(assert (=> b!1391419 (=> res!628199 e!888718)))

(assert (=> b!1391419 (= res!628199 (not ((_ is ElementMatch!3757) (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))))))))

(assert (=> b!1391419 (= e!888721 e!888718)))

(declare-fun b!1391420 () Bool)

(declare-fun res!628201 () Bool)

(declare-fun e!888719 () Bool)

(assert (=> b!1391420 (=> res!628201 e!888719)))

(assert (=> b!1391420 (= res!628201 (not (isEmpty!8550 (tail!2020 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639))))))))))

(declare-fun b!1391421 () Bool)

(declare-fun e!888720 () Bool)

(assert (=> b!1391421 (= e!888720 e!888719)))

(declare-fun res!628198 () Bool)

(assert (=> b!1391421 (=> res!628198 e!888719)))

(assert (=> b!1391421 (= res!628198 call!93047)))

(declare-fun b!1391422 () Bool)

(declare-fun res!628204 () Bool)

(assert (=> b!1391422 (=> res!628204 e!888718)))

(assert (=> b!1391422 (= res!628204 e!888722)))

(declare-fun res!628203 () Bool)

(assert (=> b!1391422 (=> (not res!628203) (not e!888722))))

(assert (=> b!1391422 (= res!628203 lt!462942)))

(declare-fun b!1391423 () Bool)

(assert (=> b!1391423 (= e!888721 (not lt!462942))))

(declare-fun bm!93042 () Bool)

(assert (=> bm!93042 (= call!93047 (isEmpty!8550 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639))))))))

(declare-fun b!1391424 () Bool)

(assert (=> b!1391424 (= e!888723 (= lt!462942 call!93047))))

(declare-fun b!1391425 () Bool)

(assert (=> b!1391425 (= e!888719 (not (= (head!2543 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639))))) (c!228749 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462639))))))))))

(declare-fun b!1391426 () Bool)

(assert (=> b!1391426 (= e!888718 e!888720)))

(declare-fun res!628197 () Bool)

(assert (=> b!1391426 (=> (not res!628197) (not e!888720))))

(assert (=> b!1391426 (= res!628197 (not lt!462942))))

(declare-fun b!1391427 () Bool)

(assert (=> b!1391427 (= e!888724 (matchR!1748 (derivativeStep!977 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))) (head!2543 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639)))))) (tail!2020 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462639)))))))))

(assert (= (and d!397958 c!229034) b!1391418))

(assert (= (and d!397958 (not c!229034)) b!1391427))

(assert (= (and d!397958 c!229036) b!1391424))

(assert (= (and d!397958 (not c!229036)) b!1391417))

(assert (= (and b!1391417 c!229035) b!1391423))

(assert (= (and b!1391417 (not c!229035)) b!1391419))

(assert (= (and b!1391419 (not res!628199)) b!1391422))

(assert (= (and b!1391422 res!628203) b!1391416))

(assert (= (and b!1391416 res!628202) b!1391415))

(assert (= (and b!1391415 res!628200) b!1391414))

(assert (= (and b!1391422 (not res!628204)) b!1391426))

(assert (= (and b!1391426 res!628197) b!1391421))

(assert (= (and b!1391421 (not res!628198)) b!1391420))

(assert (= (and b!1391420 (not res!628201)) b!1391425))

(assert (= (or b!1391424 b!1391416 b!1391421) bm!93042))

(assert (=> d!397958 m!1565299))

(declare-fun m!1566653 () Bool)

(assert (=> d!397958 m!1566653))

(declare-fun m!1566655 () Bool)

(assert (=> d!397958 m!1566655))

(assert (=> bm!93042 m!1565299))

(assert (=> bm!93042 m!1566653))

(assert (=> b!1391415 m!1565299))

(declare-fun m!1566657 () Bool)

(assert (=> b!1391415 m!1566657))

(assert (=> b!1391415 m!1566657))

(declare-fun m!1566659 () Bool)

(assert (=> b!1391415 m!1566659))

(assert (=> b!1391427 m!1565299))

(declare-fun m!1566661 () Bool)

(assert (=> b!1391427 m!1566661))

(assert (=> b!1391427 m!1566661))

(declare-fun m!1566663 () Bool)

(assert (=> b!1391427 m!1566663))

(assert (=> b!1391427 m!1565299))

(assert (=> b!1391427 m!1566657))

(assert (=> b!1391427 m!1566663))

(assert (=> b!1391427 m!1566657))

(declare-fun m!1566665 () Bool)

(assert (=> b!1391427 m!1566665))

(assert (=> b!1391425 m!1565299))

(assert (=> b!1391425 m!1566661))

(assert (=> b!1391420 m!1565299))

(assert (=> b!1391420 m!1566657))

(assert (=> b!1391420 m!1566657))

(assert (=> b!1391420 m!1566659))

(assert (=> b!1391414 m!1565299))

(assert (=> b!1391414 m!1566661))

(declare-fun m!1566667 () Bool)

(assert (=> b!1391418 m!1566667))

(assert (=> b!1390430 d!397958))

(assert (=> b!1390430 d!397750))

(assert (=> b!1390430 d!397746))

(assert (=> b!1390430 d!397748))

(declare-fun b!1391428 () Bool)

(declare-fun e!888726 () Bool)

(declare-fun e!888725 () Bool)

(assert (=> b!1391428 (= e!888726 e!888725)))

(declare-fun res!628205 () Bool)

(declare-fun lt!462945 () tuple2!13714)

(assert (=> b!1391428 (= res!628205 (< (size!11605 (_2!7743 lt!462945)) (size!11605 (_2!7741 (v!21586 lt!462618)))))))

(assert (=> b!1391428 (=> (not res!628205) (not e!888725))))

(declare-fun d!397960 () Bool)

(assert (=> d!397960 e!888726))

(declare-fun c!229038 () Bool)

(assert (=> d!397960 (= c!229038 (> (size!11606 (_1!7743 lt!462945)) 0))))

(declare-fun e!888727 () tuple2!13714)

(assert (=> d!397960 (= lt!462945 e!888727)))

(declare-fun c!229037 () Bool)

(declare-fun lt!462943 () Option!2704)

(assert (=> d!397960 (= c!229037 ((_ is Some!2703) lt!462943))))

(assert (=> d!397960 (= lt!462943 (maxPrefix!1112 thiss!19762 rules!2550 (_2!7741 (v!21586 lt!462618))))))

(assert (=> d!397960 (= (lexList!652 thiss!19762 rules!2550 (_2!7741 (v!21586 lt!462618))) lt!462945)))

(declare-fun b!1391429 () Bool)

(assert (=> b!1391429 (= e!888725 (not (isEmpty!8552 (_1!7743 lt!462945))))))

(declare-fun b!1391430 () Bool)

(assert (=> b!1391430 (= e!888727 (tuple2!13715 Nil!14109 (_2!7741 (v!21586 lt!462618))))))

(declare-fun b!1391431 () Bool)

(assert (=> b!1391431 (= e!888726 (= (_2!7743 lt!462945) (_2!7741 (v!21586 lt!462618))))))

(declare-fun b!1391432 () Bool)

(declare-fun lt!462944 () tuple2!13714)

(assert (=> b!1391432 (= e!888727 (tuple2!13715 (Cons!14109 (_1!7741 (v!21586 lt!462943)) (_1!7743 lt!462944)) (_2!7743 lt!462944)))))

(assert (=> b!1391432 (= lt!462944 (lexList!652 thiss!19762 rules!2550 (_2!7741 (v!21586 lt!462943))))))

(assert (= (and d!397960 c!229037) b!1391432))

(assert (= (and d!397960 (not c!229037)) b!1391430))

(assert (= (and d!397960 c!229038) b!1391428))

(assert (= (and d!397960 (not c!229038)) b!1391431))

(assert (= (and b!1391428 res!628205) b!1391429))

(declare-fun m!1566669 () Bool)

(assert (=> b!1391428 m!1566669))

(declare-fun m!1566671 () Bool)

(assert (=> b!1391428 m!1566671))

(declare-fun m!1566673 () Bool)

(assert (=> d!397960 m!1566673))

(declare-fun m!1566675 () Bool)

(assert (=> d!397960 m!1566675))

(declare-fun m!1566677 () Bool)

(assert (=> b!1391429 m!1566677))

(declare-fun m!1566679 () Bool)

(assert (=> b!1391432 m!1566679))

(assert (=> b!1390389 d!397960))

(assert (=> d!397462 d!397772))

(assert (=> d!397462 d!397606))

(declare-fun d!397962 () Bool)

(declare-fun lt!462946 () Int)

(assert (=> d!397962 (= lt!462946 (size!11606 (list!5478 (_1!7742 lt!462676))))))

(assert (=> d!397962 (= lt!462946 (size!11609 (c!228750 (_1!7742 lt!462676))))))

(assert (=> d!397962 (= (size!11607 (_1!7742 lt!462676)) lt!462946)))

(declare-fun bs!337515 () Bool)

(assert (= bs!337515 d!397962))

(declare-fun m!1566681 () Bool)

(assert (=> bs!337515 m!1566681))

(assert (=> bs!337515 m!1566681))

(declare-fun m!1566683 () Bool)

(assert (=> bs!337515 m!1566683))

(declare-fun m!1566685 () Bool)

(assert (=> bs!337515 m!1566685))

(assert (=> d!397462 d!397962))

(assert (=> d!397462 d!397608))

(declare-fun d!397964 () Bool)

(assert (=> d!397964 (= (list!5478 (_1!7742 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t1!34))))) (list!5482 (c!228750 (_1!7742 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t1!34)))))))))

(declare-fun bs!337516 () Bool)

(assert (= bs!337516 d!397964))

(declare-fun m!1566687 () Bool)

(assert (=> bs!337516 m!1566687))

(assert (=> d!397462 d!397964))

(declare-fun d!397966 () Bool)

(assert (=> d!397966 (= (list!5478 (singletonSeq!1092 t1!34)) (list!5482 (c!228750 (singletonSeq!1092 t1!34))))))

(declare-fun bs!337517 () Bool)

(assert (= bs!337517 d!397966))

(declare-fun m!1566689 () Bool)

(assert (=> bs!337517 m!1566689))

(assert (=> d!397462 d!397966))

(assert (=> d!397462 d!397454))

(declare-fun d!397968 () Bool)

(declare-fun res!628206 () Bool)

(declare-fun e!888728 () Bool)

(assert (=> d!397968 (=> res!628206 e!888728)))

(assert (=> d!397968 (= res!628206 ((_ is Nil!14110) (map!3125 rules!2550 lambda!60110)))))

(assert (=> d!397968 (= (forall!3435 (map!3125 rules!2550 lambda!60110) lambda!60139) e!888728)))

(declare-fun b!1391433 () Bool)

(declare-fun e!888729 () Bool)

(assert (=> b!1391433 (= e!888728 e!888729)))

(declare-fun res!628207 () Bool)

(assert (=> b!1391433 (=> (not res!628207) (not e!888729))))

(assert (=> b!1391433 (= res!628207 (dynLambda!6486 lambda!60139 (h!19511 (map!3125 rules!2550 lambda!60110))))))

(declare-fun b!1391434 () Bool)

(assert (=> b!1391434 (= e!888729 (forall!3435 (t!122415 (map!3125 rules!2550 lambda!60110)) lambda!60139))))

(assert (= (and d!397968 (not res!628206)) b!1391433))

(assert (= (and b!1391433 res!628207) b!1391434))

(declare-fun b_lambda!43371 () Bool)

(assert (=> (not b_lambda!43371) (not b!1391433)))

(declare-fun m!1566691 () Bool)

(assert (=> b!1391433 m!1566691))

(declare-fun m!1566693 () Bool)

(assert (=> b!1391434 m!1566693))

(assert (=> d!397420 d!397968))

(declare-fun d!397970 () Bool)

(declare-fun nullableFct!290 (Regex!3757) Bool)

(assert (=> d!397970 (= (nullable!1219 (regex!2443 (rule!4204 t1!34))) (nullableFct!290 (regex!2443 (rule!4204 t1!34))))))

(declare-fun bs!337518 () Bool)

(assert (= bs!337518 d!397970))

(declare-fun m!1566695 () Bool)

(assert (=> bs!337518 m!1566695))

(assert (=> b!1390888 d!397970))

(assert (=> d!397388 d!397420))

(assert (=> d!397612 d!397806))

(assert (=> d!397612 d!397504))

(assert (=> d!397652 d!397714))

(declare-fun d!397972 () Bool)

(assert (=> d!397972 (= (isEmpty!8550 lt!462520) ((_ is Nil!14107) lt!462520))))

(assert (=> bm!93012 d!397972))

(assert (=> d!397634 d!397858))

(declare-fun b!1391438 () Bool)

(declare-fun e!888735 () Bool)

(declare-fun e!888734 () Bool)

(assert (=> b!1391438 (= e!888735 e!888734)))

(declare-fun res!628209 () Bool)

(assert (=> b!1391438 (= res!628209 (not (nullable!1219 (reg!4086 (regex!2443 (rule!4204 t1!34))))))))

(assert (=> b!1391438 (=> (not res!628209) (not e!888734))))

(declare-fun bm!93043 () Bool)

(declare-fun call!93048 () Bool)

(declare-fun c!229041 () Bool)

(assert (=> bm!93043 (= call!93048 (validRegex!1639 (ite c!229041 (regOne!8027 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34))))))))

(declare-fun b!1391439 () Bool)

(declare-fun res!628210 () Bool)

(declare-fun e!888738 () Bool)

(assert (=> b!1391439 (=> (not res!628210) (not e!888738))))

(assert (=> b!1391439 (= res!628210 call!93048)))

(declare-fun e!888737 () Bool)

(assert (=> b!1391439 (= e!888737 e!888738)))

(declare-fun b!1391440 () Bool)

(declare-fun call!93049 () Bool)

(assert (=> b!1391440 (= e!888738 call!93049)))

(declare-fun b!1391441 () Bool)

(declare-fun e!888732 () Bool)

(assert (=> b!1391441 (= e!888732 call!93049)))

(declare-fun b!1391442 () Bool)

(declare-fun call!93050 () Bool)

(assert (=> b!1391442 (= e!888734 call!93050)))

(declare-fun b!1391443 () Bool)

(declare-fun e!888736 () Bool)

(assert (=> b!1391443 (= e!888736 e!888735)))

(declare-fun c!229040 () Bool)

(assert (=> b!1391443 (= c!229040 ((_ is Star!3757) (regex!2443 (rule!4204 t1!34))))))

(declare-fun bm!93044 () Bool)

(assert (=> bm!93044 (= call!93049 call!93050)))

(declare-fun bm!93045 () Bool)

(assert (=> bm!93045 (= call!93050 (validRegex!1639 (ite c!229040 (reg!4086 (regex!2443 (rule!4204 t1!34))) (ite c!229041 (regTwo!8027 (regex!2443 (rule!4204 t1!34))) (regTwo!8026 (regex!2443 (rule!4204 t1!34)))))))))

(declare-fun b!1391445 () Bool)

(declare-fun e!888733 () Bool)

(assert (=> b!1391445 (= e!888733 e!888732)))

(declare-fun res!628212 () Bool)

(assert (=> b!1391445 (=> (not res!628212) (not e!888732))))

(assert (=> b!1391445 (= res!628212 call!93048)))

(declare-fun b!1391446 () Bool)

(declare-fun res!628211 () Bool)

(assert (=> b!1391446 (=> res!628211 e!888733)))

(assert (=> b!1391446 (= res!628211 (not ((_ is Concat!6291) (regex!2443 (rule!4204 t1!34)))))))

(assert (=> b!1391446 (= e!888737 e!888733)))

(declare-fun b!1391444 () Bool)

(assert (=> b!1391444 (= e!888735 e!888737)))

(assert (=> b!1391444 (= c!229041 ((_ is Union!3757) (regex!2443 (rule!4204 t1!34))))))

(declare-fun d!397974 () Bool)

(declare-fun res!628213 () Bool)

(assert (=> d!397974 (=> res!628213 e!888736)))

(assert (=> d!397974 (= res!628213 ((_ is ElementMatch!3757) (regex!2443 (rule!4204 t1!34))))))

(assert (=> d!397974 (= (validRegex!1639 (regex!2443 (rule!4204 t1!34))) e!888736)))

(assert (= (and d!397974 (not res!628213)) b!1391443))

(assert (= (and b!1391443 c!229040) b!1391438))

(assert (= (and b!1391443 (not c!229040)) b!1391444))

(assert (= (and b!1391438 res!628209) b!1391442))

(assert (= (and b!1391444 c!229041) b!1391439))

(assert (= (and b!1391444 (not c!229041)) b!1391446))

(assert (= (and b!1391439 res!628210) b!1391440))

(assert (= (and b!1391446 (not res!628211)) b!1391445))

(assert (= (and b!1391445 res!628212) b!1391441))

(assert (= (or b!1391439 b!1391445) bm!93043))

(assert (= (or b!1391440 b!1391441) bm!93044))

(assert (= (or b!1391442 bm!93044) bm!93045))

(declare-fun m!1566707 () Bool)

(assert (=> b!1391438 m!1566707))

(declare-fun m!1566709 () Bool)

(assert (=> bm!93043 m!1566709))

(declare-fun m!1566713 () Bool)

(assert (=> bm!93045 m!1566713))

(assert (=> d!397634 d!397974))

(declare-fun lt!462954 () Bool)

(declare-fun d!397976 () Bool)

(assert (=> d!397976 (= lt!462954 (isEmpty!8550 (list!5477 (_2!7742 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t2!34)))))))))

(assert (=> d!397976 (= lt!462954 (isEmpty!8555 (c!228748 (_2!7742 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t2!34)))))))))

(assert (=> d!397976 (= (isEmpty!8547 (_2!7742 (lex!963 thiss!19762 rules!2550 (print!902 thiss!19762 (singletonSeq!1092 t2!34))))) lt!462954)))

(declare-fun bs!337519 () Bool)

(assert (= bs!337519 d!397976))

(declare-fun m!1566723 () Bool)

(assert (=> bs!337519 m!1566723))

(assert (=> bs!337519 m!1566723))

(declare-fun m!1566727 () Bool)

(assert (=> bs!337519 m!1566727))

(declare-fun m!1566731 () Bool)

(assert (=> bs!337519 m!1566731))

(assert (=> b!1390907 d!397976))

(assert (=> b!1390907 d!397724))

(assert (=> b!1390907 d!397626))

(assert (=> b!1390907 d!397628))

(declare-fun b!1391447 () Bool)

(declare-fun e!888742 () Bool)

(declare-fun e!888741 () Bool)

(assert (=> b!1391447 (= e!888742 e!888741)))

(declare-fun res!628214 () Bool)

(assert (=> b!1391447 (= res!628214 (not (nullable!1219 (reg!4086 (h!19511 (map!3125 rules!2550 lambda!60110))))))))

(assert (=> b!1391447 (=> (not res!628214) (not e!888741))))

(declare-fun bm!93046 () Bool)

(declare-fun call!93051 () Bool)

(declare-fun c!229043 () Bool)

(assert (=> bm!93046 (= call!93051 (validRegex!1639 (ite c!229043 (regOne!8027 (h!19511 (map!3125 rules!2550 lambda!60110))) (regOne!8026 (h!19511 (map!3125 rules!2550 lambda!60110))))))))

(declare-fun b!1391448 () Bool)

(declare-fun res!628215 () Bool)

(declare-fun e!888745 () Bool)

(assert (=> b!1391448 (=> (not res!628215) (not e!888745))))

(assert (=> b!1391448 (= res!628215 call!93051)))

(declare-fun e!888744 () Bool)

(assert (=> b!1391448 (= e!888744 e!888745)))

(declare-fun b!1391449 () Bool)

(declare-fun call!93052 () Bool)

(assert (=> b!1391449 (= e!888745 call!93052)))

(declare-fun b!1391450 () Bool)

(declare-fun e!888739 () Bool)

(assert (=> b!1391450 (= e!888739 call!93052)))

(declare-fun b!1391451 () Bool)

(declare-fun call!93053 () Bool)

(assert (=> b!1391451 (= e!888741 call!93053)))

(declare-fun b!1391452 () Bool)

(declare-fun e!888743 () Bool)

(assert (=> b!1391452 (= e!888743 e!888742)))

(declare-fun c!229042 () Bool)

(assert (=> b!1391452 (= c!229042 ((_ is Star!3757) (h!19511 (map!3125 rules!2550 lambda!60110))))))

(declare-fun bm!93047 () Bool)

(assert (=> bm!93047 (= call!93052 call!93053)))

(declare-fun bm!93048 () Bool)

(assert (=> bm!93048 (= call!93053 (validRegex!1639 (ite c!229042 (reg!4086 (h!19511 (map!3125 rules!2550 lambda!60110))) (ite c!229043 (regTwo!8027 (h!19511 (map!3125 rules!2550 lambda!60110))) (regTwo!8026 (h!19511 (map!3125 rules!2550 lambda!60110)))))))))

(declare-fun b!1391454 () Bool)

(declare-fun e!888740 () Bool)

(assert (=> b!1391454 (= e!888740 e!888739)))

(declare-fun res!628217 () Bool)

(assert (=> b!1391454 (=> (not res!628217) (not e!888739))))

(assert (=> b!1391454 (= res!628217 call!93051)))

(declare-fun b!1391455 () Bool)

(declare-fun res!628216 () Bool)

(assert (=> b!1391455 (=> res!628216 e!888740)))

(assert (=> b!1391455 (= res!628216 (not ((_ is Concat!6291) (h!19511 (map!3125 rules!2550 lambda!60110)))))))

(assert (=> b!1391455 (= e!888744 e!888740)))

(declare-fun b!1391453 () Bool)

(assert (=> b!1391453 (= e!888742 e!888744)))

(assert (=> b!1391453 (= c!229043 ((_ is Union!3757) (h!19511 (map!3125 rules!2550 lambda!60110))))))

(declare-fun d!397978 () Bool)

(declare-fun res!628218 () Bool)

(assert (=> d!397978 (=> res!628218 e!888743)))

(assert (=> d!397978 (= res!628218 ((_ is ElementMatch!3757) (h!19511 (map!3125 rules!2550 lambda!60110))))))

(assert (=> d!397978 (= (validRegex!1639 (h!19511 (map!3125 rules!2550 lambda!60110))) e!888743)))

(assert (= (and d!397978 (not res!628218)) b!1391452))

(assert (= (and b!1391452 c!229042) b!1391447))

(assert (= (and b!1391452 (not c!229042)) b!1391453))

(assert (= (and b!1391447 res!628214) b!1391451))

(assert (= (and b!1391453 c!229043) b!1391448))

(assert (= (and b!1391453 (not c!229043)) b!1391455))

(assert (= (and b!1391448 res!628215) b!1391449))

(assert (= (and b!1391455 (not res!628216)) b!1391454))

(assert (= (and b!1391454 res!628217) b!1391450))

(assert (= (or b!1391448 b!1391454) bm!93046))

(assert (= (or b!1391449 b!1391450) bm!93047))

(assert (= (or b!1391451 bm!93047) bm!93048))

(declare-fun m!1566749 () Bool)

(assert (=> b!1391447 m!1566749))

(declare-fun m!1566751 () Bool)

(assert (=> bm!93046 m!1566751))

(declare-fun m!1566753 () Bool)

(assert (=> bm!93048 m!1566753))

(assert (=> bs!337438 d!397978))

(declare-fun d!397984 () Bool)

(declare-fun lt!462957 () Int)

(assert (=> d!397984 (>= lt!462957 0)))

(declare-fun e!888749 () Int)

(assert (=> d!397984 (= lt!462957 e!888749)))

(declare-fun c!229045 () Bool)

(assert (=> d!397984 (= c!229045 ((_ is Nil!14107) (originalCharacters!3305 t1!34)))))

(assert (=> d!397984 (= (size!11605 (originalCharacters!3305 t1!34)) lt!462957)))

(declare-fun b!1391461 () Bool)

(assert (=> b!1391461 (= e!888749 0)))

(declare-fun b!1391462 () Bool)

(assert (=> b!1391462 (= e!888749 (+ 1 (size!11605 (t!122412 (originalCharacters!3305 t1!34)))))))

(assert (= (and d!397984 c!229045) b!1391461))

(assert (= (and d!397984 (not c!229045)) b!1391462))

(declare-fun m!1566755 () Bool)

(assert (=> b!1391462 m!1566755))

(assert (=> b!1390338 d!397984))

(declare-fun d!397986 () Bool)

(declare-fun lt!462958 () Bool)

(assert (=> d!397986 (= lt!462958 (select (content!2079 (t!122412 lt!462527)) lt!462513))))

(declare-fun e!888750 () Bool)

(assert (=> d!397986 (= lt!462958 e!888750)))

(declare-fun res!628222 () Bool)

(assert (=> d!397986 (=> (not res!628222) (not e!888750))))

(assert (=> d!397986 (= res!628222 ((_ is Cons!14107) (t!122412 lt!462527)))))

(assert (=> d!397986 (= (contains!2710 (t!122412 lt!462527) lt!462513) lt!462958)))

(declare-fun b!1391463 () Bool)

(declare-fun e!888751 () Bool)

(assert (=> b!1391463 (= e!888750 e!888751)))

(declare-fun res!628223 () Bool)

(assert (=> b!1391463 (=> res!628223 e!888751)))

(assert (=> b!1391463 (= res!628223 (= (h!19508 (t!122412 lt!462527)) lt!462513))))

(declare-fun b!1391464 () Bool)

(assert (=> b!1391464 (= e!888751 (contains!2710 (t!122412 (t!122412 lt!462527)) lt!462513))))

(assert (= (and d!397986 res!628222) b!1391463))

(assert (= (and b!1391463 (not res!628223)) b!1391464))

(assert (=> d!397986 m!1566201))

(declare-fun m!1566759 () Bool)

(assert (=> d!397986 m!1566759))

(declare-fun m!1566761 () Bool)

(assert (=> b!1391464 m!1566761))

(assert (=> b!1390308 d!397986))

(declare-fun d!397988 () Bool)

(declare-fun lt!462959 () Bool)

(assert (=> d!397988 (= lt!462959 (select (content!2080 (t!122413 rules!2550)) lt!462521))))

(declare-fun e!888752 () Bool)

(assert (=> d!397988 (= lt!462959 e!888752)))

(declare-fun res!628224 () Bool)

(assert (=> d!397988 (=> (not res!628224) (not e!888752))))

(assert (=> d!397988 (= res!628224 ((_ is Cons!14108) (t!122413 rules!2550)))))

(assert (=> d!397988 (= (contains!2709 (t!122413 rules!2550) lt!462521) lt!462959)))

(declare-fun b!1391465 () Bool)

(declare-fun e!888753 () Bool)

(assert (=> b!1391465 (= e!888752 e!888753)))

(declare-fun res!628225 () Bool)

(assert (=> b!1391465 (=> res!628225 e!888753)))

(assert (=> b!1391465 (= res!628225 (= (h!19509 (t!122413 rules!2550)) lt!462521))))

(declare-fun b!1391466 () Bool)

(assert (=> b!1391466 (= e!888753 (contains!2709 (t!122413 (t!122413 rules!2550)) lt!462521))))

(assert (= (and d!397988 res!628224) b!1391465))

(assert (= (and b!1391465 (not res!628225)) b!1391466))

(assert (=> d!397988 m!1566361))

(declare-fun m!1566777 () Bool)

(assert (=> d!397988 m!1566777))

(declare-fun m!1566781 () Bool)

(assert (=> b!1391466 m!1566781))

(assert (=> b!1390843 d!397988))

(assert (=> b!1390855 d!397516))

(declare-fun d!397990 () Bool)

(declare-fun res!628232 () Bool)

(declare-fun e!888760 () Bool)

(assert (=> d!397990 (=> (not res!628232) (not e!888760))))

(assert (=> d!397990 (= res!628232 (validRegex!1639 (regex!2443 (rule!4204 t1!34))))))

(assert (=> d!397990 (= (ruleValid!606 thiss!19762 (rule!4204 t1!34)) e!888760)))

(declare-fun b!1391477 () Bool)

(declare-fun res!628233 () Bool)

(assert (=> b!1391477 (=> (not res!628233) (not e!888760))))

(assert (=> b!1391477 (= res!628233 (not (nullable!1219 (regex!2443 (rule!4204 t1!34)))))))

(declare-fun b!1391478 () Bool)

(assert (=> b!1391478 (= e!888760 (not (= (tag!2705 (rule!4204 t1!34)) (String!16902 ""))))))

(assert (= (and d!397990 res!628232) b!1391477))

(assert (= (and b!1391477 res!628233) b!1391478))

(assert (=> d!397990 m!1565897))

(assert (=> b!1391477 m!1565907))

(assert (=> bs!337433 d!397990))

(declare-fun bs!337521 () Bool)

(declare-fun d!397998 () Bool)

(assert (= bs!337521 (and d!397998 d!397896)))

(declare-fun lambda!60181 () Int)

(assert (=> bs!337521 (= (and (= (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (toChars!3589 (transformation!2443 (h!19509 rules!2550)))) (= (toValue!3730 (transformation!2443 (rule!4204 t2!34))) (toValue!3730 (transformation!2443 (h!19509 rules!2550))))) (= lambda!60181 lambda!60176))))

(assert (=> d!397998 true))

(assert (=> d!397998 (< (dynLambda!6496 order!8639 (toChars!3589 (transformation!2443 (rule!4204 t2!34)))) (dynLambda!6497 order!8641 lambda!60181))))

(assert (=> d!397998 true))

(assert (=> d!397998 (< (dynLambda!6498 order!8643 (toValue!3730 (transformation!2443 (rule!4204 t2!34)))) (dynLambda!6497 order!8641 lambda!60181))))

(assert (=> d!397998 (= (semiInverseModEq!948 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (toValue!3730 (transformation!2443 (rule!4204 t2!34)))) (Forall!548 lambda!60181))))

(declare-fun bs!337522 () Bool)

(assert (= bs!337522 d!397998))

(declare-fun m!1566789 () Bool)

(assert (=> bs!337522 m!1566789))

(assert (=> d!397520 d!397998))

(declare-fun d!398000 () Bool)

(assert (=> d!398000 (= (isEmpty!8550 (tail!2020 lt!462520)) ((_ is Nil!14107) (tail!2020 lt!462520)))))

(assert (=> b!1390640 d!398000))

(declare-fun d!398002 () Bool)

(assert (=> d!398002 (= (tail!2020 lt!462520) (t!122412 lt!462520))))

(assert (=> b!1390640 d!398002))

(assert (=> b!1390895 d!397674))

(declare-fun d!398004 () Bool)

(declare-fun lt!462963 () Bool)

(assert (=> d!398004 (= lt!462963 (isEmpty!8552 (list!5478 (_1!7742 lt!462772))))))

(declare-fun isEmpty!8559 (Conc!4647) Bool)

(assert (=> d!398004 (= lt!462963 (isEmpty!8559 (c!228750 (_1!7742 lt!462772))))))

(assert (=> d!398004 (= (isEmpty!8556 (_1!7742 lt!462772)) lt!462963)))

(declare-fun bs!337523 () Bool)

(assert (= bs!337523 d!398004))

(assert (=> bs!337523 m!1565863))

(assert (=> bs!337523 m!1565863))

(declare-fun m!1566803 () Bool)

(assert (=> bs!337523 m!1566803))

(declare-fun m!1566805 () Bool)

(assert (=> bs!337523 m!1566805))

(assert (=> b!1390878 d!398004))

(declare-fun d!398012 () Bool)

(assert (=> d!398012 (= (nullable!1219 (regex!2443 (rule!4204 t2!34))) (nullableFct!290 (regex!2443 (rule!4204 t2!34))))))

(declare-fun bs!337524 () Bool)

(assert (= bs!337524 d!398012))

(declare-fun m!1566808 () Bool)

(assert (=> bs!337524 m!1566808))

(assert (=> b!1390848 d!398012))

(declare-fun d!398014 () Bool)

(declare-fun lt!462964 () C!7804)

(assert (=> d!398014 (contains!2710 (list!5477 lt!462522) lt!462964)))

(declare-fun e!888764 () C!7804)

(assert (=> d!398014 (= lt!462964 e!888764)))

(declare-fun c!229051 () Bool)

(assert (=> d!398014 (= c!229051 (= 0 0))))

(declare-fun e!888765 () Bool)

(assert (=> d!398014 e!888765))

(declare-fun res!628234 () Bool)

(assert (=> d!398014 (=> (not res!628234) (not e!888765))))

(assert (=> d!398014 (= res!628234 (<= 0 0))))

(assert (=> d!398014 (= (apply!3556 (list!5477 lt!462522) 0) lt!462964)))

(declare-fun b!1391485 () Bool)

(assert (=> b!1391485 (= e!888765 (< 0 (size!11605 (list!5477 lt!462522))))))

(declare-fun b!1391486 () Bool)

(assert (=> b!1391486 (= e!888764 (head!2543 (list!5477 lt!462522)))))

(declare-fun b!1391487 () Bool)

(assert (=> b!1391487 (= e!888764 (apply!3556 (tail!2020 (list!5477 lt!462522)) (- 0 1)))))

(assert (= (and d!398014 res!628234) b!1391485))

(assert (= (and d!398014 c!229051) b!1391486))

(assert (= (and d!398014 (not c!229051)) b!1391487))

(assert (=> d!398014 m!1564929))

(declare-fun m!1566819 () Bool)

(assert (=> d!398014 m!1566819))

(assert (=> b!1391485 m!1564929))

(assert (=> b!1391485 m!1565889))

(assert (=> b!1391486 m!1564929))

(declare-fun m!1566821 () Bool)

(assert (=> b!1391486 m!1566821))

(assert (=> b!1391487 m!1564929))

(declare-fun m!1566825 () Bool)

(assert (=> b!1391487 m!1566825))

(assert (=> b!1391487 m!1566825))

(declare-fun m!1566827 () Bool)

(assert (=> b!1391487 m!1566827))

(assert (=> d!397658 d!398014))

(assert (=> d!397658 d!397554))

(declare-fun d!398024 () Bool)

(declare-fun lt!462967 () C!7804)

(assert (=> d!398024 (= lt!462967 (apply!3556 (list!5481 (c!228748 lt!462522)) 0))))

(declare-fun e!888771 () C!7804)

(assert (=> d!398024 (= lt!462967 e!888771)))

(declare-fun c!229055 () Bool)

(assert (=> d!398024 (= c!229055 ((_ is Leaf!7064) (c!228748 lt!462522)))))

(declare-fun e!888770 () Bool)

(assert (=> d!398024 e!888770))

(declare-fun res!628236 () Bool)

(assert (=> d!398024 (=> (not res!628236) (not e!888770))))

(assert (=> d!398024 (= res!628236 (<= 0 0))))

(assert (=> d!398024 (= (apply!3557 (c!228748 lt!462522) 0) lt!462967)))

(declare-fun b!1391491 () Bool)

(assert (=> b!1391491 (= e!888771 (apply!3558 (xs!7373 (c!228748 lt!462522)) 0))))

(declare-fun b!1391492 () Bool)

(declare-fun e!888769 () C!7804)

(declare-fun call!93054 () C!7804)

(assert (=> b!1391492 (= e!888769 call!93054)))

(declare-fun b!1391493 () Bool)

(declare-fun e!888768 () Int)

(assert (=> b!1391493 (= e!888768 (- 0 (size!11608 (left!12053 (c!228748 lt!462522)))))))

(declare-fun b!1391494 () Bool)

(assert (=> b!1391494 (= e!888771 e!888769)))

(declare-fun lt!462968 () Bool)

(assert (=> b!1391494 (= lt!462968 (appendIndex!178 (list!5481 (left!12053 (c!228748 lt!462522))) (list!5481 (right!12383 (c!228748 lt!462522))) 0))))

(declare-fun c!229054 () Bool)

(assert (=> b!1391494 (= c!229054 (< 0 (size!11608 (left!12053 (c!228748 lt!462522)))))))

(declare-fun b!1391495 () Bool)

(assert (=> b!1391495 (= e!888770 (< 0 (size!11608 (c!228748 lt!462522))))))

(declare-fun b!1391496 () Bool)

(assert (=> b!1391496 (= e!888768 0)))

(declare-fun bm!93049 () Bool)

(declare-fun c!229053 () Bool)

(assert (=> bm!93049 (= c!229053 c!229054)))

(assert (=> bm!93049 (= call!93054 (apply!3557 (ite c!229054 (left!12053 (c!228748 lt!462522)) (right!12383 (c!228748 lt!462522))) e!888768))))

(declare-fun b!1391497 () Bool)

(assert (=> b!1391497 (= e!888769 call!93054)))

(assert (= (and d!398024 res!628236) b!1391495))

(assert (= (and d!398024 c!229055) b!1391491))

(assert (= (and d!398024 (not c!229055)) b!1391494))

(assert (= (and b!1391494 c!229054) b!1391497))

(assert (= (and b!1391494 (not c!229054)) b!1391492))

(assert (= (or b!1391497 b!1391492) bm!93049))

(assert (= (and bm!93049 c!229053) b!1391496))

(assert (= (and bm!93049 (not c!229053)) b!1391493))

(assert (=> d!398024 m!1565625))

(assert (=> d!398024 m!1565625))

(declare-fun m!1566833 () Bool)

(assert (=> d!398024 m!1566833))

(declare-fun m!1566835 () Bool)

(assert (=> b!1391493 m!1566835))

(assert (=> b!1391495 m!1565891))

(declare-fun m!1566837 () Bool)

(assert (=> b!1391491 m!1566837))

(declare-fun m!1566839 () Bool)

(assert (=> bm!93049 m!1566839))

(declare-fun m!1566841 () Bool)

(assert (=> b!1391494 m!1566841))

(declare-fun m!1566843 () Bool)

(assert (=> b!1391494 m!1566843))

(assert (=> b!1391494 m!1566841))

(assert (=> b!1391494 m!1566843))

(declare-fun m!1566845 () Bool)

(assert (=> b!1391494 m!1566845))

(assert (=> b!1391494 m!1566835))

(assert (=> d!397658 d!398024))

(declare-fun d!398030 () Bool)

(assert (=> d!398030 (= (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705)))) (list!5481 (c!228748 (charsOf!1415 (_1!7741 (get!4379 lt!462705))))))))

(declare-fun bs!337528 () Bool)

(assert (= bs!337528 d!398030))

(declare-fun m!1566847 () Bool)

(assert (=> bs!337528 m!1566847))

(assert (=> b!1390678 d!398030))

(declare-fun d!398032 () Bool)

(declare-fun lt!462970 () BalanceConc!9232)

(assert (=> d!398032 (= (list!5477 lt!462970) (originalCharacters!3305 (_1!7741 (get!4379 lt!462705))))))

(assert (=> d!398032 (= lt!462970 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705))))) (value!79258 (_1!7741 (get!4379 lt!462705)))))))

(assert (=> d!398032 (= (charsOf!1415 (_1!7741 (get!4379 lt!462705))) lt!462970)))

(declare-fun b_lambda!43375 () Bool)

(assert (=> (not b_lambda!43375) (not d!398032)))

(declare-fun tb!72851 () Bool)

(declare-fun t!122480 () Bool)

(assert (=> (and b!1390097 (= (toChars!3589 (transformation!2443 (h!19509 rules!2550))) (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))))) t!122480) tb!72851))

(declare-fun b!1391502 () Bool)

(declare-fun e!888773 () Bool)

(declare-fun tp!397208 () Bool)

(assert (=> b!1391502 (= e!888773 (and (inv!18448 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705))))) (value!79258 (_1!7741 (get!4379 lt!462705)))))) tp!397208))))

(declare-fun result!88530 () Bool)

(assert (=> tb!72851 (= result!88530 (and (inv!18449 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705))))) (value!79258 (_1!7741 (get!4379 lt!462705))))) e!888773))))

(assert (= tb!72851 b!1391502))

(declare-fun m!1566849 () Bool)

(assert (=> b!1391502 m!1566849))

(declare-fun m!1566851 () Bool)

(assert (=> tb!72851 m!1566851))

(assert (=> d!398032 t!122480))

(declare-fun b_and!93207 () Bool)

(assert (= b_and!93191 (and (=> t!122480 result!88530) b_and!93207)))

(declare-fun t!122482 () Bool)

(declare-fun tb!72853 () Bool)

(assert (=> (and b!1390083 (= (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))))) t!122482) tb!72853))

(declare-fun result!88532 () Bool)

(assert (= result!88532 result!88530))

(assert (=> d!398032 t!122482))

(declare-fun b_and!93209 () Bool)

(assert (= b_and!93193 (and (=> t!122482 result!88532) b_and!93209)))

(declare-fun t!122484 () Bool)

(declare-fun tb!72855 () Bool)

(assert (=> (and b!1390092 (= (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))))) t!122484) tb!72855))

(declare-fun result!88534 () Bool)

(assert (= result!88534 result!88530))

(assert (=> d!398032 t!122484))

(declare-fun b_and!93213 () Bool)

(assert (= b_and!93195 (and (=> t!122484 result!88534) b_and!93213)))

(declare-fun t!122488 () Bool)

(declare-fun tb!72859 () Bool)

(assert (=> (and b!1390954 (= (toChars!3589 (transformation!2443 (h!19509 (t!122413 rules!2550)))) (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))))) t!122488) tb!72859))

(declare-fun result!88538 () Bool)

(assert (= result!88538 result!88530))

(assert (=> d!398032 t!122488))

(declare-fun b_and!93215 () Bool)

(assert (= b_and!93197 (and (=> t!122488 result!88538) b_and!93215)))

(declare-fun m!1566855 () Bool)

(assert (=> d!398032 m!1566855))

(declare-fun m!1566857 () Bool)

(assert (=> d!398032 m!1566857))

(assert (=> b!1390678 d!398032))

(assert (=> b!1390678 d!397754))

(declare-fun d!398034 () Bool)

(declare-fun res!628237 () Bool)

(declare-fun e!888777 () Bool)

(assert (=> d!398034 (=> (not res!628237) (not e!888777))))

(assert (=> d!398034 (= res!628237 (validRegex!1639 (regex!2443 (rule!4204 t2!34))))))

(assert (=> d!398034 (= (ruleValid!606 thiss!19762 (rule!4204 t2!34)) e!888777)))

(declare-fun b!1391503 () Bool)

(declare-fun res!628238 () Bool)

(assert (=> b!1391503 (=> (not res!628238) (not e!888777))))

(assert (=> b!1391503 (= res!628238 (not (nullable!1219 (regex!2443 (rule!4204 t2!34)))))))

(declare-fun b!1391504 () Bool)

(assert (=> b!1391504 (= e!888777 (not (= (tag!2705 (rule!4204 t2!34)) (String!16902 ""))))))

(assert (= (and d!398034 res!628237) b!1391503))

(assert (= (and b!1391503 res!628238) b!1391504))

(assert (=> d!398034 m!1564905))

(assert (=> b!1391503 m!1565827))

(assert (=> bs!337431 d!398034))

(declare-fun b!1391505 () Bool)

(declare-fun e!888778 () Bool)

(declare-fun e!888780 () Bool)

(assert (=> b!1391505 (= e!888778 e!888780)))

(declare-fun res!628243 () Bool)

(assert (=> b!1391505 (=> (not res!628243) (not e!888780))))

(declare-fun lt!462972 () Option!2704)

(assert (=> b!1391505 (= res!628243 (matchR!1748 (regex!2443 (h!19509 rules!2550)) (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462972))))))))

(declare-fun b!1391506 () Bool)

(declare-fun e!888779 () Option!2704)

(assert (=> b!1391506 (= e!888779 None!2703)))

(declare-fun d!398038 () Bool)

(assert (=> d!398038 e!888778))

(declare-fun res!628242 () Bool)

(assert (=> d!398038 (=> res!628242 e!888778)))

(assert (=> d!398038 (= res!628242 (isEmpty!8554 lt!462972))))

(assert (=> d!398038 (= lt!462972 e!888779)))

(declare-fun c!229057 () Bool)

(declare-fun lt!462974 () tuple2!13716)

(assert (=> d!398038 (= c!229057 (isEmpty!8550 (_1!7744 lt!462974)))))

(assert (=> d!398038 (= lt!462974 (findLongestMatch!243 (regex!2443 (h!19509 rules!2550)) lt!462532))))

(assert (=> d!398038 (ruleValid!606 thiss!19762 (h!19509 rules!2550))))

(assert (=> d!398038 (= (maxPrefixOneRule!630 thiss!19762 (h!19509 rules!2550) lt!462532) lt!462972)))

(declare-fun b!1391507 () Bool)

(declare-fun e!888781 () Bool)

(assert (=> b!1391507 (= e!888781 (matchR!1748 (regex!2443 (h!19509 rules!2550)) (_1!7744 (findLongestMatchInner!287 (regex!2443 (h!19509 rules!2550)) Nil!14107 (size!11605 Nil!14107) lt!462532 lt!462532 (size!11605 lt!462532)))))))

(declare-fun b!1391508 () Bool)

(declare-fun res!628245 () Bool)

(assert (=> b!1391508 (=> (not res!628245) (not e!888780))))

(assert (=> b!1391508 (= res!628245 (= (rule!4204 (_1!7741 (get!4379 lt!462972))) (h!19509 rules!2550)))))

(declare-fun b!1391509 () Bool)

(assert (=> b!1391509 (= e!888779 (Some!2703 (tuple2!13711 (Token!4549 (apply!3551 (transformation!2443 (h!19509 rules!2550)) (seqFromList!1648 (_1!7744 lt!462974))) (h!19509 rules!2550) (size!11596 (seqFromList!1648 (_1!7744 lt!462974))) (_1!7744 lt!462974)) (_2!7744 lt!462974))))))

(declare-fun lt!462971 () Unit!20367)

(assert (=> b!1391509 (= lt!462971 (longestMatchIsAcceptedByMatchOrIsEmpty!271 (regex!2443 (h!19509 rules!2550)) lt!462532))))

(declare-fun res!628241 () Bool)

(assert (=> b!1391509 (= res!628241 (isEmpty!8550 (_1!7744 (findLongestMatchInner!287 (regex!2443 (h!19509 rules!2550)) Nil!14107 (size!11605 Nil!14107) lt!462532 lt!462532 (size!11605 lt!462532)))))))

(assert (=> b!1391509 (=> res!628241 e!888781)))

(assert (=> b!1391509 e!888781))

(declare-fun lt!462973 () Unit!20367)

(assert (=> b!1391509 (= lt!462973 lt!462971)))

(declare-fun lt!462975 () Unit!20367)

(assert (=> b!1391509 (= lt!462975 (lemmaSemiInverse!341 (transformation!2443 (h!19509 rules!2550)) (seqFromList!1648 (_1!7744 lt!462974))))))

(declare-fun b!1391510 () Bool)

(declare-fun res!628244 () Bool)

(assert (=> b!1391510 (=> (not res!628244) (not e!888780))))

(assert (=> b!1391510 (= res!628244 (< (size!11605 (_2!7741 (get!4379 lt!462972))) (size!11605 lt!462532)))))

(declare-fun b!1391511 () Bool)

(declare-fun res!628239 () Bool)

(assert (=> b!1391511 (=> (not res!628239) (not e!888780))))

(assert (=> b!1391511 (= res!628239 (= (value!79258 (_1!7741 (get!4379 lt!462972))) (apply!3551 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462972)))) (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!462972)))))))))

(declare-fun b!1391512 () Bool)

(declare-fun res!628240 () Bool)

(assert (=> b!1391512 (=> (not res!628240) (not e!888780))))

(assert (=> b!1391512 (= res!628240 (= (++!3664 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462972)))) (_2!7741 (get!4379 lt!462972))) lt!462532))))

(declare-fun b!1391513 () Bool)

(assert (=> b!1391513 (= e!888780 (= (size!11595 (_1!7741 (get!4379 lt!462972))) (size!11605 (originalCharacters!3305 (_1!7741 (get!4379 lt!462972))))))))

(assert (= (and d!398038 c!229057) b!1391506))

(assert (= (and d!398038 (not c!229057)) b!1391509))

(assert (= (and b!1391509 (not res!628241)) b!1391507))

(assert (= (and d!398038 (not res!628242)) b!1391505))

(assert (= (and b!1391505 res!628243) b!1391512))

(assert (= (and b!1391512 res!628240) b!1391510))

(assert (= (and b!1391510 res!628244) b!1391508))

(assert (= (and b!1391508 res!628245) b!1391511))

(assert (= (and b!1391511 res!628239) b!1391513))

(declare-fun m!1566863 () Bool)

(assert (=> b!1391512 m!1566863))

(declare-fun m!1566865 () Bool)

(assert (=> b!1391512 m!1566865))

(assert (=> b!1391512 m!1566865))

(declare-fun m!1566867 () Bool)

(assert (=> b!1391512 m!1566867))

(assert (=> b!1391512 m!1566867))

(declare-fun m!1566869 () Bool)

(assert (=> b!1391512 m!1566869))

(assert (=> b!1391513 m!1566863))

(declare-fun m!1566871 () Bool)

(assert (=> b!1391513 m!1566871))

(assert (=> b!1391508 m!1566863))

(assert (=> b!1391510 m!1566863))

(declare-fun m!1566873 () Bool)

(assert (=> b!1391510 m!1566873))

(assert (=> b!1391510 m!1565315))

(assert (=> b!1391505 m!1566863))

(assert (=> b!1391505 m!1566865))

(assert (=> b!1391505 m!1566865))

(assert (=> b!1391505 m!1566867))

(assert (=> b!1391505 m!1566867))

(declare-fun m!1566875 () Bool)

(assert (=> b!1391505 m!1566875))

(declare-fun m!1566877 () Bool)

(assert (=> d!398038 m!1566877))

(declare-fun m!1566879 () Bool)

(assert (=> d!398038 m!1566879))

(declare-fun m!1566881 () Bool)

(assert (=> d!398038 m!1566881))

(assert (=> d!398038 m!1566623))

(assert (=> b!1391511 m!1566863))

(declare-fun m!1566883 () Bool)

(assert (=> b!1391511 m!1566883))

(assert (=> b!1391511 m!1566883))

(declare-fun m!1566885 () Bool)

(assert (=> b!1391511 m!1566885))

(declare-fun m!1566887 () Bool)

(assert (=> b!1391509 m!1566887))

(declare-fun m!1566889 () Bool)

(assert (=> b!1391509 m!1566889))

(declare-fun m!1566891 () Bool)

(assert (=> b!1391509 m!1566891))

(assert (=> b!1391509 m!1566635))

(assert (=> b!1391509 m!1566635))

(assert (=> b!1391509 m!1565315))

(declare-fun m!1566899 () Bool)

(assert (=> b!1391509 m!1566899))

(assert (=> b!1391509 m!1566889))

(assert (=> b!1391509 m!1566889))

(declare-fun m!1566905 () Bool)

(assert (=> b!1391509 m!1566905))

(declare-fun m!1566909 () Bool)

(assert (=> b!1391509 m!1566909))

(assert (=> b!1391509 m!1565315))

(assert (=> b!1391509 m!1566889))

(declare-fun m!1566911 () Bool)

(assert (=> b!1391509 m!1566911))

(assert (=> b!1391507 m!1566635))

(assert (=> b!1391507 m!1565315))

(assert (=> b!1391507 m!1566635))

(assert (=> b!1391507 m!1565315))

(assert (=> b!1391507 m!1566899))

(declare-fun m!1566915 () Bool)

(assert (=> b!1391507 m!1566915))

(assert (=> bm!92986 d!398038))

(assert (=> b!1390429 d!397746))

(assert (=> b!1390429 d!397748))

(assert (=> b!1390429 d!397750))

(declare-fun d!398044 () Bool)

(declare-fun e!888790 () Bool)

(assert (=> d!398044 e!888790))

(declare-fun res!628255 () Bool)

(assert (=> d!398044 (=> (not res!628255) (not e!888790))))

(declare-fun lt!462977 () List!14173)

(assert (=> d!398044 (= res!628255 (= (content!2079 lt!462977) ((_ map or) (content!2079 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705))))) (content!2079 (_2!7741 (get!4379 lt!462705))))))))

(declare-fun e!888789 () List!14173)

(assert (=> d!398044 (= lt!462977 e!888789)))

(declare-fun c!229061 () Bool)

(assert (=> d!398044 (= c!229061 ((_ is Nil!14107) (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705))))))))

(assert (=> d!398044 (= (++!3664 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705)))) (_2!7741 (get!4379 lt!462705))) lt!462977)))

(declare-fun b!1391530 () Bool)

(declare-fun res!628254 () Bool)

(assert (=> b!1391530 (=> (not res!628254) (not e!888790))))

(assert (=> b!1391530 (= res!628254 (= (size!11605 lt!462977) (+ (size!11605 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705))))) (size!11605 (_2!7741 (get!4379 lt!462705))))))))

(declare-fun b!1391529 () Bool)

(assert (=> b!1391529 (= e!888789 (Cons!14107 (h!19508 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705))))) (++!3664 (t!122412 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705))))) (_2!7741 (get!4379 lt!462705)))))))

(declare-fun b!1391528 () Bool)

(assert (=> b!1391528 (= e!888789 (_2!7741 (get!4379 lt!462705)))))

(declare-fun b!1391531 () Bool)

(assert (=> b!1391531 (= e!888790 (or (not (= (_2!7741 (get!4379 lt!462705)) Nil!14107)) (= lt!462977 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705)))))))))

(assert (= (and d!398044 c!229061) b!1391528))

(assert (= (and d!398044 (not c!229061)) b!1391529))

(assert (= (and d!398044 res!628255) b!1391530))

(assert (= (and b!1391530 res!628254) b!1391531))

(declare-fun m!1566917 () Bool)

(assert (=> d!398044 m!1566917))

(assert (=> d!398044 m!1565603))

(declare-fun m!1566919 () Bool)

(assert (=> d!398044 m!1566919))

(declare-fun m!1566921 () Bool)

(assert (=> d!398044 m!1566921))

(declare-fun m!1566923 () Bool)

(assert (=> b!1391530 m!1566923))

(assert (=> b!1391530 m!1565603))

(declare-fun m!1566925 () Bool)

(assert (=> b!1391530 m!1566925))

(assert (=> b!1391530 m!1565615))

(declare-fun m!1566927 () Bool)

(assert (=> b!1391529 m!1566927))

(assert (=> b!1390677 d!398044))

(assert (=> b!1390677 d!398030))

(assert (=> b!1390677 d!398032))

(assert (=> b!1390677 d!397754))

(assert (=> d!397532 d!397972))

(declare-fun b!1391532 () Bool)

(declare-fun e!888794 () Bool)

(declare-fun e!888793 () Bool)

(assert (=> b!1391532 (= e!888794 e!888793)))

(declare-fun res!628256 () Bool)

(assert (=> b!1391532 (= res!628256 (not (nullable!1219 (reg!4086 lt!462518))))))

(assert (=> b!1391532 (=> (not res!628256) (not e!888793))))

(declare-fun bm!93051 () Bool)

(declare-fun call!93056 () Bool)

(declare-fun c!229063 () Bool)

(assert (=> bm!93051 (= call!93056 (validRegex!1639 (ite c!229063 (regOne!8027 lt!462518) (regOne!8026 lt!462518))))))

(declare-fun b!1391533 () Bool)

(declare-fun res!628257 () Bool)

(declare-fun e!888797 () Bool)

(assert (=> b!1391533 (=> (not res!628257) (not e!888797))))

(assert (=> b!1391533 (= res!628257 call!93056)))

(declare-fun e!888796 () Bool)

(assert (=> b!1391533 (= e!888796 e!888797)))

(declare-fun b!1391534 () Bool)

(declare-fun call!93057 () Bool)

(assert (=> b!1391534 (= e!888797 call!93057)))

(declare-fun b!1391535 () Bool)

(declare-fun e!888791 () Bool)

(assert (=> b!1391535 (= e!888791 call!93057)))

(declare-fun b!1391536 () Bool)

(declare-fun call!93058 () Bool)

(assert (=> b!1391536 (= e!888793 call!93058)))

(declare-fun b!1391537 () Bool)

(declare-fun e!888795 () Bool)

(assert (=> b!1391537 (= e!888795 e!888794)))

(declare-fun c!229062 () Bool)

(assert (=> b!1391537 (= c!229062 ((_ is Star!3757) lt!462518))))

(declare-fun bm!93052 () Bool)

(assert (=> bm!93052 (= call!93057 call!93058)))

(declare-fun bm!93053 () Bool)

(assert (=> bm!93053 (= call!93058 (validRegex!1639 (ite c!229062 (reg!4086 lt!462518) (ite c!229063 (regTwo!8027 lt!462518) (regTwo!8026 lt!462518)))))))

(declare-fun b!1391539 () Bool)

(declare-fun e!888792 () Bool)

(assert (=> b!1391539 (= e!888792 e!888791)))

(declare-fun res!628259 () Bool)

(assert (=> b!1391539 (=> (not res!628259) (not e!888791))))

(assert (=> b!1391539 (= res!628259 call!93056)))

(declare-fun b!1391540 () Bool)

(declare-fun res!628258 () Bool)

(assert (=> b!1391540 (=> res!628258 e!888792)))

(assert (=> b!1391540 (= res!628258 (not ((_ is Concat!6291) lt!462518)))))

(assert (=> b!1391540 (= e!888796 e!888792)))

(declare-fun b!1391538 () Bool)

(assert (=> b!1391538 (= e!888794 e!888796)))

(assert (=> b!1391538 (= c!229063 ((_ is Union!3757) lt!462518))))

(declare-fun d!398046 () Bool)

(declare-fun res!628260 () Bool)

(assert (=> d!398046 (=> res!628260 e!888795)))

(assert (=> d!398046 (= res!628260 ((_ is ElementMatch!3757) lt!462518))))

(assert (=> d!398046 (= (validRegex!1639 lt!462518) e!888795)))

(assert (= (and d!398046 (not res!628260)) b!1391537))

(assert (= (and b!1391537 c!229062) b!1391532))

(assert (= (and b!1391537 (not c!229062)) b!1391538))

(assert (= (and b!1391532 res!628256) b!1391536))

(assert (= (and b!1391538 c!229063) b!1391533))

(assert (= (and b!1391538 (not c!229063)) b!1391540))

(assert (= (and b!1391533 res!628257) b!1391534))

(assert (= (and b!1391540 (not res!628258)) b!1391539))

(assert (= (and b!1391539 res!628259) b!1391535))

(assert (= (or b!1391533 b!1391539) bm!93051))

(assert (= (or b!1391534 b!1391535) bm!93052))

(assert (= (or b!1391536 bm!93052) bm!93053))

(declare-fun m!1566929 () Bool)

(assert (=> b!1391532 m!1566929))

(declare-fun m!1566931 () Bool)

(assert (=> bm!93051 m!1566931))

(declare-fun m!1566933 () Bool)

(assert (=> bm!93053 m!1566933))

(assert (=> d!397532 d!398046))

(declare-fun d!398048 () Bool)

(assert (=> d!398048 (= (isEmpty!8550 (originalCharacters!3305 t1!34)) ((_ is Nil!14107) (originalCharacters!3305 t1!34)))))

(assert (=> d!397426 d!398048))

(declare-fun d!398050 () Bool)

(assert (=> d!398050 (= (inv!17 (value!79258 t2!34)) (= (charsToBigInt!1 (text!18179 (value!79258 t2!34))) (value!79250 (value!79258 t2!34))))))

(declare-fun bs!337530 () Bool)

(assert (= bs!337530 d!398050))

(declare-fun m!1566935 () Bool)

(assert (=> bs!337530 m!1566935))

(assert (=> b!1390939 d!398050))

(declare-fun d!398052 () Bool)

(assert (=> d!398052 (= (inv!18449 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34))) (isBalanced!1375 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34)))))))

(declare-fun bs!337531 () Bool)

(assert (= bs!337531 d!398052))

(declare-fun m!1566937 () Bool)

(assert (=> bs!337531 m!1566937))

(assert (=> tb!72819 d!398052))

(declare-fun bs!337532 () Bool)

(declare-fun d!398054 () Bool)

(assert (= bs!337532 (and d!398054 d!397896)))

(declare-fun lambda!60182 () Int)

(assert (=> bs!337532 (= (and (= (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (toChars!3589 (transformation!2443 (h!19509 rules!2550)))) (= (toValue!3730 (transformation!2443 (rule!4204 t1!34))) (toValue!3730 (transformation!2443 (h!19509 rules!2550))))) (= lambda!60182 lambda!60176))))

(declare-fun bs!337533 () Bool)

(assert (= bs!337533 (and d!398054 d!397998)))

(assert (=> bs!337533 (= (and (= (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (toChars!3589 (transformation!2443 (rule!4204 t2!34)))) (= (toValue!3730 (transformation!2443 (rule!4204 t1!34))) (toValue!3730 (transformation!2443 (rule!4204 t2!34))))) (= lambda!60182 lambda!60181))))

(assert (=> d!398054 true))

(assert (=> d!398054 (< (dynLambda!6496 order!8639 (toChars!3589 (transformation!2443 (rule!4204 t1!34)))) (dynLambda!6497 order!8641 lambda!60182))))

(assert (=> d!398054 true))

(assert (=> d!398054 (< (dynLambda!6498 order!8643 (toValue!3730 (transformation!2443 (rule!4204 t1!34)))) (dynLambda!6497 order!8641 lambda!60182))))

(assert (=> d!398054 (= (semiInverseModEq!948 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (toValue!3730 (transformation!2443 (rule!4204 t1!34)))) (Forall!548 lambda!60182))))

(declare-fun bs!337534 () Bool)

(assert (= bs!337534 d!398054))

(declare-fun m!1566939 () Bool)

(assert (=> bs!337534 m!1566939))

(assert (=> d!397432 d!398054))

(declare-fun d!398056 () Bool)

(declare-fun lt!462978 () Int)

(assert (=> d!398056 (= lt!462978 (size!11606 (list!5478 (_1!7742 lt!462772))))))

(assert (=> d!398056 (= lt!462978 (size!11609 (c!228750 (_1!7742 lt!462772))))))

(assert (=> d!398056 (= (size!11607 (_1!7742 lt!462772)) lt!462978)))

(declare-fun bs!337535 () Bool)

(assert (= bs!337535 d!398056))

(assert (=> bs!337535 m!1565863))

(assert (=> bs!337535 m!1565863))

(declare-fun m!1566941 () Bool)

(assert (=> bs!337535 m!1566941))

(declare-fun m!1566943 () Bool)

(assert (=> bs!337535 m!1566943))

(assert (=> d!397624 d!398056))

(declare-fun b!1391925 () Bool)

(declare-fun lt!463138 () tuple2!13712)

(declare-datatypes ((tuple2!13718 0))(
  ( (tuple2!13719 (_1!7745 Token!4548) (_2!7745 BalanceConc!9232)) )
))
(declare-datatypes ((Option!2705 0))(
  ( (None!2704) (Some!2704 (v!21600 tuple2!13718)) )
))
(declare-fun lt!463123 () Option!2705)

(declare-fun lexRec!286 (LexerInterface!2138 List!14174 BalanceConc!9232) tuple2!13712)

(assert (=> b!1391925 (= lt!463138 (lexRec!286 thiss!19762 rules!2550 (_2!7745 (v!21600 lt!463123))))))

(declare-fun e!889017 () tuple2!13712)

(declare-fun prepend!375 (BalanceConc!9234 Token!4548) BalanceConc!9234)

(assert (=> b!1391925 (= e!889017 (tuple2!13713 (prepend!375 (_1!7742 lt!463138) (_1!7745 (v!21600 lt!463123))) (_2!7742 lt!463138)))))

(declare-fun b!1391926 () Bool)

(declare-fun e!889014 () Bool)

(declare-fun lt!463129 () tuple2!13712)

(assert (=> b!1391926 (= e!889014 (= (list!5477 (_2!7742 lt!463129)) (list!5477 (_2!7742 (lexRec!286 thiss!19762 rules!2550 lt!462514)))))))

(declare-fun d!398058 () Bool)

(assert (=> d!398058 e!889014))

(declare-fun res!628385 () Bool)

(assert (=> d!398058 (=> (not res!628385) (not e!889014))))

(assert (=> d!398058 (= res!628385 (= (list!5478 (_1!7742 lt!463129)) (list!5478 (_1!7742 (lexRec!286 thiss!19762 rules!2550 lt!462514)))))))

(declare-fun e!889016 () tuple2!13712)

(assert (=> d!398058 (= lt!463129 e!889016)))

(declare-fun c!229197 () Bool)

(declare-fun lt!463145 () Option!2705)

(assert (=> d!398058 (= c!229197 ((_ is Some!2704) lt!463145))))

(declare-fun maxPrefixZipperSequenceV2!231 (LexerInterface!2138 List!14174 BalanceConc!9232 BalanceConc!9232) Option!2705)

(assert (=> d!398058 (= lt!463145 (maxPrefixZipperSequenceV2!231 thiss!19762 rules!2550 lt!462514 lt!462514))))

(declare-fun lt!463150 () Unit!20367)

(declare-fun lt!463132 () Unit!20367)

(assert (=> d!398058 (= lt!463150 lt!463132)))

(declare-fun lt!463140 () List!14173)

(declare-fun lt!463124 () List!14173)

(declare-fun isSuffix!264 (List!14173 List!14173) Bool)

(assert (=> d!398058 (isSuffix!264 lt!463140 (++!3664 lt!463124 lt!463140))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!242 (List!14173 List!14173) Unit!20367)

(assert (=> d!398058 (= lt!463132 (lemmaConcatTwoListThenFSndIsSuffix!242 lt!463124 lt!463140))))

(assert (=> d!398058 (= lt!463140 (list!5477 lt!462514))))

(assert (=> d!398058 (= lt!463124 (list!5477 (BalanceConc!9233 Empty!4646)))))

(assert (=> d!398058 (= (lexTailRecV2!431 thiss!19762 rules!2550 lt!462514 (BalanceConc!9233 Empty!4646) lt!462514 (BalanceConc!9235 Empty!4647)) lt!463129)))

(declare-fun b!1391927 () Bool)

(declare-fun e!889015 () tuple2!13712)

(assert (=> b!1391927 (= e!889015 (tuple2!13713 (BalanceConc!9235 Empty!4647) lt!462514))))

(declare-fun b!1391928 () Bool)

(declare-fun lt!463121 () BalanceConc!9232)

(declare-fun append!411 (BalanceConc!9234 Token!4548) BalanceConc!9234)

(assert (=> b!1391928 (= e!889016 (lexTailRecV2!431 thiss!19762 rules!2550 lt!462514 lt!463121 (_2!7745 (v!21600 lt!463145)) (append!411 (BalanceConc!9235 Empty!4647) (_1!7745 (v!21600 lt!463145)))))))

(declare-fun lt!463136 () tuple2!13712)

(assert (=> b!1391928 (= lt!463136 (lexRec!286 thiss!19762 rules!2550 (_2!7745 (v!21600 lt!463145))))))

(declare-fun lt!463127 () List!14173)

(assert (=> b!1391928 (= lt!463127 (list!5477 (BalanceConc!9233 Empty!4646)))))

(declare-fun lt!463133 () List!14173)

(assert (=> b!1391928 (= lt!463133 (list!5477 (charsOf!1415 (_1!7745 (v!21600 lt!463145)))))))

(declare-fun lt!463130 () List!14173)

(assert (=> b!1391928 (= lt!463130 (list!5477 (_2!7745 (v!21600 lt!463145))))))

(declare-fun lt!463135 () Unit!20367)

(declare-fun lemmaConcatAssociativity!871 (List!14173 List!14173 List!14173) Unit!20367)

(assert (=> b!1391928 (= lt!463135 (lemmaConcatAssociativity!871 lt!463127 lt!463133 lt!463130))))

(assert (=> b!1391928 (= (++!3664 (++!3664 lt!463127 lt!463133) lt!463130) (++!3664 lt!463127 (++!3664 lt!463133 lt!463130)))))

(declare-fun lt!463141 () Unit!20367)

(assert (=> b!1391928 (= lt!463141 lt!463135)))

(declare-fun lt!463134 () Option!2705)

(declare-fun maxPrefixZipperSequence!559 (LexerInterface!2138 List!14174 BalanceConc!9232) Option!2705)

(assert (=> b!1391928 (= lt!463134 (maxPrefixZipperSequence!559 thiss!19762 rules!2550 lt!462514))))

(declare-fun c!229196 () Bool)

(assert (=> b!1391928 (= c!229196 ((_ is Some!2704) lt!463134))))

(assert (=> b!1391928 (= (lexRec!286 thiss!19762 rules!2550 lt!462514) e!889015)))

(declare-fun lt!463125 () Unit!20367)

(declare-fun Unit!20378 () Unit!20367)

(assert (=> b!1391928 (= lt!463125 Unit!20378)))

(declare-fun lt!463153 () List!14175)

(assert (=> b!1391928 (= lt!463153 (list!5478 (BalanceConc!9235 Empty!4647)))))

(declare-fun lt!463137 () List!14175)

(assert (=> b!1391928 (= lt!463137 (Cons!14109 (_1!7745 (v!21600 lt!463145)) Nil!14109))))

(declare-fun lt!463120 () List!14175)

(assert (=> b!1391928 (= lt!463120 (list!5478 (_1!7742 lt!463136)))))

(declare-fun lt!463126 () Unit!20367)

(declare-fun lemmaConcatAssociativity!872 (List!14175 List!14175 List!14175) Unit!20367)

(assert (=> b!1391928 (= lt!463126 (lemmaConcatAssociativity!872 lt!463153 lt!463137 lt!463120))))

(declare-fun ++!3668 (List!14175 List!14175) List!14175)

(assert (=> b!1391928 (= (++!3668 (++!3668 lt!463153 lt!463137) lt!463120) (++!3668 lt!463153 (++!3668 lt!463137 lt!463120)))))

(declare-fun lt!463146 () Unit!20367)

(assert (=> b!1391928 (= lt!463146 lt!463126)))

(declare-fun lt!463147 () List!14173)

(assert (=> b!1391928 (= lt!463147 (++!3664 (list!5477 (BalanceConc!9233 Empty!4646)) (list!5477 (charsOf!1415 (_1!7745 (v!21600 lt!463145))))))))

(declare-fun lt!463131 () List!14173)

(assert (=> b!1391928 (= lt!463131 (list!5477 (_2!7745 (v!21600 lt!463145))))))

(declare-fun lt!463143 () List!14175)

(assert (=> b!1391928 (= lt!463143 (list!5478 (append!411 (BalanceConc!9235 Empty!4647) (_1!7745 (v!21600 lt!463145)))))))

(declare-fun lt!463151 () Unit!20367)

(declare-fun lemmaLexThenLexPrefix!201 (LexerInterface!2138 List!14174 List!14173 List!14173 List!14175 List!14175 List!14173) Unit!20367)

(assert (=> b!1391928 (= lt!463151 (lemmaLexThenLexPrefix!201 thiss!19762 rules!2550 lt!463147 lt!463131 lt!463143 (list!5478 (_1!7742 lt!463136)) (list!5477 (_2!7742 lt!463136))))))

(assert (=> b!1391928 (= (lexList!652 thiss!19762 rules!2550 lt!463147) (tuple2!13715 lt!463143 Nil!14107))))

(declare-fun lt!463142 () Unit!20367)

(assert (=> b!1391928 (= lt!463142 lt!463151)))

(declare-fun lt!463148 () BalanceConc!9232)

(assert (=> b!1391928 (= lt!463148 (++!3665 (BalanceConc!9233 Empty!4646) (charsOf!1415 (_1!7745 (v!21600 lt!463145)))))))

(assert (=> b!1391928 (= lt!463123 (maxPrefixZipperSequence!559 thiss!19762 rules!2550 lt!463148))))

(declare-fun c!229198 () Bool)

(assert (=> b!1391928 (= c!229198 ((_ is Some!2704) lt!463123))))

(assert (=> b!1391928 (= (lexRec!286 thiss!19762 rules!2550 (++!3665 (BalanceConc!9233 Empty!4646) (charsOf!1415 (_1!7745 (v!21600 lt!463145))))) e!889017)))

(declare-fun lt!463122 () Unit!20367)

(declare-fun Unit!20379 () Unit!20367)

(assert (=> b!1391928 (= lt!463122 Unit!20379)))

(assert (=> b!1391928 (= lt!463121 (++!3665 (BalanceConc!9233 Empty!4646) (charsOf!1415 (_1!7745 (v!21600 lt!463145)))))))

(declare-fun lt!463149 () List!14173)

(assert (=> b!1391928 (= lt!463149 (list!5477 lt!463121))))

(declare-fun lt!463152 () List!14173)

(assert (=> b!1391928 (= lt!463152 (list!5477 (_2!7745 (v!21600 lt!463145))))))

(declare-fun lt!463139 () Unit!20367)

(assert (=> b!1391928 (= lt!463139 (lemmaConcatTwoListThenFSndIsSuffix!242 lt!463149 lt!463152))))

(assert (=> b!1391928 (isSuffix!264 lt!463152 (++!3664 lt!463149 lt!463152))))

(declare-fun lt!463128 () Unit!20367)

(assert (=> b!1391928 (= lt!463128 lt!463139)))

(declare-fun b!1391929 () Bool)

(assert (=> b!1391929 (= e!889017 (tuple2!13713 (BalanceConc!9235 Empty!4647) lt!463148))))

(declare-fun b!1391930 () Bool)

(declare-fun lt!463144 () tuple2!13712)

(assert (=> b!1391930 (= lt!463144 (lexRec!286 thiss!19762 rules!2550 (_2!7745 (v!21600 lt!463134))))))

(assert (=> b!1391930 (= e!889015 (tuple2!13713 (prepend!375 (_1!7742 lt!463144) (_1!7745 (v!21600 lt!463134))) (_2!7742 lt!463144)))))

(declare-fun b!1391931 () Bool)

(assert (=> b!1391931 (= e!889016 (tuple2!13713 (BalanceConc!9235 Empty!4647) lt!462514))))

(assert (= (and d!398058 c!229197) b!1391928))

(assert (= (and d!398058 (not c!229197)) b!1391931))

(assert (= (and b!1391928 c!229196) b!1391930))

(assert (= (and b!1391928 (not c!229196)) b!1391927))

(assert (= (and b!1391928 c!229198) b!1391925))

(assert (= (and b!1391928 (not c!229198)) b!1391929))

(assert (= (and d!398058 res!628385) b!1391926))

(declare-fun m!1567409 () Bool)

(assert (=> b!1391925 m!1567409))

(declare-fun m!1567411 () Bool)

(assert (=> b!1391925 m!1567411))

(declare-fun m!1567413 () Bool)

(assert (=> b!1391926 m!1567413))

(declare-fun m!1567415 () Bool)

(assert (=> b!1391926 m!1567415))

(declare-fun m!1567417 () Bool)

(assert (=> b!1391926 m!1567417))

(declare-fun m!1567419 () Bool)

(assert (=> d!398058 m!1567419))

(declare-fun m!1567421 () Bool)

(assert (=> d!398058 m!1567421))

(declare-fun m!1567423 () Bool)

(assert (=> d!398058 m!1567423))

(declare-fun m!1567425 () Bool)

(assert (=> d!398058 m!1567425))

(assert (=> d!398058 m!1567415))

(assert (=> d!398058 m!1564835))

(assert (=> d!398058 m!1567425))

(declare-fun m!1567427 () Bool)

(assert (=> d!398058 m!1567427))

(declare-fun m!1567429 () Bool)

(assert (=> d!398058 m!1567429))

(declare-fun m!1567431 () Bool)

(assert (=> d!398058 m!1567431))

(declare-fun m!1567433 () Bool)

(assert (=> b!1391930 m!1567433))

(declare-fun m!1567435 () Bool)

(assert (=> b!1391930 m!1567435))

(declare-fun m!1567437 () Bool)

(assert (=> b!1391928 m!1567437))

(declare-fun m!1567439 () Bool)

(assert (=> b!1391928 m!1567439))

(declare-fun m!1567441 () Bool)

(assert (=> b!1391928 m!1567441))

(declare-fun m!1567443 () Bool)

(assert (=> b!1391928 m!1567443))

(declare-fun m!1567445 () Bool)

(assert (=> b!1391928 m!1567445))

(declare-fun m!1567447 () Bool)

(assert (=> b!1391928 m!1567447))

(declare-fun m!1567449 () Bool)

(assert (=> b!1391928 m!1567449))

(declare-fun m!1567451 () Bool)

(assert (=> b!1391928 m!1567451))

(declare-fun m!1567453 () Bool)

(assert (=> b!1391928 m!1567453))

(assert (=> b!1391928 m!1567431))

(declare-fun m!1567455 () Bool)

(assert (=> b!1391928 m!1567455))

(declare-fun m!1567457 () Bool)

(assert (=> b!1391928 m!1567457))

(assert (=> b!1391928 m!1567439))

(assert (=> b!1391928 m!1567455))

(assert (=> b!1391928 m!1567445))

(declare-fun m!1567459 () Bool)

(assert (=> b!1391928 m!1567459))

(declare-fun m!1567461 () Bool)

(assert (=> b!1391928 m!1567461))

(declare-fun m!1567463 () Bool)

(assert (=> b!1391928 m!1567463))

(declare-fun m!1567465 () Bool)

(assert (=> b!1391928 m!1567465))

(declare-fun m!1567467 () Bool)

(assert (=> b!1391928 m!1567467))

(declare-fun m!1567469 () Bool)

(assert (=> b!1391928 m!1567469))

(assert (=> b!1391928 m!1567441))

(assert (=> b!1391928 m!1567469))

(assert (=> b!1391928 m!1567447))

(declare-fun m!1567471 () Bool)

(assert (=> b!1391928 m!1567471))

(declare-fun m!1567473 () Bool)

(assert (=> b!1391928 m!1567473))

(declare-fun m!1567475 () Bool)

(assert (=> b!1391928 m!1567475))

(assert (=> b!1391928 m!1567463))

(declare-fun m!1567477 () Bool)

(assert (=> b!1391928 m!1567477))

(assert (=> b!1391928 m!1567415))

(declare-fun m!1567479 () Bool)

(assert (=> b!1391928 m!1567479))

(declare-fun m!1567481 () Bool)

(assert (=> b!1391928 m!1567481))

(assert (=> b!1391928 m!1567439))

(declare-fun m!1567483 () Bool)

(assert (=> b!1391928 m!1567483))

(declare-fun m!1567485 () Bool)

(assert (=> b!1391928 m!1567485))

(assert (=> b!1391928 m!1567463))

(declare-fun m!1567487 () Bool)

(assert (=> b!1391928 m!1567487))

(declare-fun m!1567489 () Bool)

(assert (=> b!1391928 m!1567489))

(declare-fun m!1567491 () Bool)

(assert (=> b!1391928 m!1567491))

(assert (=> b!1391928 m!1567489))

(assert (=> b!1391928 m!1567461))

(declare-fun m!1567493 () Bool)

(assert (=> b!1391928 m!1567493))

(assert (=> b!1391928 m!1567479))

(declare-fun m!1567495 () Bool)

(assert (=> b!1391928 m!1567495))

(assert (=> b!1391928 m!1567431))

(assert (=> b!1391928 m!1567483))

(declare-fun m!1567497 () Bool)

(assert (=> b!1391928 m!1567497))

(assert (=> d!397624 d!398058))

(declare-fun d!398266 () Bool)

(declare-fun c!229199 () Bool)

(assert (=> d!398266 (= c!229199 ((_ is Empty!4646) (c!228748 lt!462516)))))

(declare-fun e!889019 () List!14173)

(assert (=> d!398266 (= (list!5481 (c!228748 lt!462516)) e!889019)))

(declare-fun b!1391937 () Bool)

(declare-fun e!889020 () List!14173)

(assert (=> b!1391937 (= e!889019 e!889020)))

(declare-fun c!229200 () Bool)

(assert (=> b!1391937 (= c!229200 ((_ is Leaf!7064) (c!228748 lt!462516)))))

(declare-fun b!1391938 () Bool)

(assert (=> b!1391938 (= e!889020 (list!5483 (xs!7373 (c!228748 lt!462516))))))

(declare-fun b!1391939 () Bool)

(assert (=> b!1391939 (= e!889020 (++!3664 (list!5481 (left!12053 (c!228748 lt!462516))) (list!5481 (right!12383 (c!228748 lt!462516)))))))

(declare-fun b!1391936 () Bool)

(assert (=> b!1391936 (= e!889019 Nil!14107)))

(assert (= (and d!398266 c!229199) b!1391936))

(assert (= (and d!398266 (not c!229199)) b!1391937))

(assert (= (and b!1391937 c!229200) b!1391938))

(assert (= (and b!1391937 (not c!229200)) b!1391939))

(declare-fun m!1567499 () Bool)

(assert (=> b!1391938 m!1567499))

(assert (=> b!1391939 m!1566273))

(assert (=> b!1391939 m!1566275))

(assert (=> b!1391939 m!1566273))

(assert (=> b!1391939 m!1566275))

(declare-fun m!1567501 () Bool)

(assert (=> b!1391939 m!1567501))

(assert (=> d!397666 d!398266))

(declare-fun b!1391940 () Bool)

(declare-fun e!889021 () Bool)

(assert (=> b!1391940 (= e!889021 (dynLambda!6486 lambda!60111 (h!19511 (t!122415 (map!3125 rules!2550 lambda!60110)))))))

(declare-fun e!889023 () Regex!3757)

(declare-fun b!1391941 () Bool)

(assert (=> b!1391941 (= e!889023 (getWitness!419 (t!122415 (t!122415 (map!3125 rules!2550 lambda!60110))) lambda!60111))))

(declare-fun b!1391942 () Bool)

(declare-fun e!889024 () Regex!3757)

(assert (=> b!1391942 (= e!889024 (h!19511 (t!122415 (map!3125 rules!2550 lambda!60110))))))

(declare-fun b!1391943 () Bool)

(declare-fun lt!463155 () Unit!20367)

(declare-fun Unit!20380 () Unit!20367)

(assert (=> b!1391943 (= lt!463155 Unit!20380)))

(assert (=> b!1391943 false))

(assert (=> b!1391943 (= e!889023 (head!2544 (t!122415 (map!3125 rules!2550 lambda!60110))))))

(declare-fun d!398268 () Bool)

(declare-fun e!889022 () Bool)

(assert (=> d!398268 e!889022))

(declare-fun res!628391 () Bool)

(assert (=> d!398268 (=> (not res!628391) (not e!889022))))

(declare-fun lt!463156 () Regex!3757)

(assert (=> d!398268 (= res!628391 (dynLambda!6486 lambda!60111 lt!463156))))

(assert (=> d!398268 (= lt!463156 e!889024)))

(declare-fun c!229201 () Bool)

(assert (=> d!398268 (= c!229201 e!889021)))

(declare-fun res!628390 () Bool)

(assert (=> d!398268 (=> (not res!628390) (not e!889021))))

(assert (=> d!398268 (= res!628390 ((_ is Cons!14110) (t!122415 (map!3125 rules!2550 lambda!60110))))))

(assert (=> d!398268 (exists!531 (t!122415 (map!3125 rules!2550 lambda!60110)) lambda!60111)))

(assert (=> d!398268 (= (getWitness!419 (t!122415 (map!3125 rules!2550 lambda!60110)) lambda!60111) lt!463156)))

(declare-fun b!1391944 () Bool)

(assert (=> b!1391944 (= e!889024 e!889023)))

(declare-fun c!229202 () Bool)

(assert (=> b!1391944 (= c!229202 ((_ is Cons!14110) (t!122415 (map!3125 rules!2550 lambda!60110))))))

(declare-fun b!1391945 () Bool)

(assert (=> b!1391945 (= e!889022 (contains!2711 (t!122415 (map!3125 rules!2550 lambda!60110)) lt!463156))))

(assert (= (and d!398268 res!628390) b!1391940))

(assert (= (and d!398268 c!229201) b!1391942))

(assert (= (and d!398268 (not c!229201)) b!1391944))

(assert (= (and b!1391944 c!229202) b!1391941))

(assert (= (and b!1391944 (not c!229202)) b!1391943))

(assert (= (and d!398268 res!628391) b!1391945))

(declare-fun b_lambda!43391 () Bool)

(assert (=> (not b_lambda!43391) (not b!1391940)))

(declare-fun b_lambda!43393 () Bool)

(assert (=> (not b_lambda!43393) (not d!398268)))

(declare-fun m!1567503 () Bool)

(assert (=> b!1391943 m!1567503))

(declare-fun m!1567505 () Bool)

(assert (=> b!1391941 m!1567505))

(declare-fun m!1567507 () Bool)

(assert (=> b!1391945 m!1567507))

(declare-fun m!1567509 () Bool)

(assert (=> b!1391940 m!1567509))

(declare-fun m!1567511 () Bool)

(assert (=> d!398268 m!1567511))

(declare-fun m!1567513 () Bool)

(assert (=> d!398268 m!1567513))

(assert (=> b!1390273 d!398268))

(declare-fun d!398270 () Bool)

(declare-fun lt!463157 () Bool)

(assert (=> d!398270 (= lt!463157 (isEmpty!8550 (list!5477 (_2!7742 lt!462788))))))

(assert (=> d!398270 (= lt!463157 (isEmpty!8555 (c!228748 (_2!7742 lt!462788))))))

(assert (=> d!398270 (= (isEmpty!8547 (_2!7742 lt!462788)) lt!463157)))

(declare-fun bs!337600 () Bool)

(assert (= bs!337600 d!398270))

(declare-fun m!1567515 () Bool)

(assert (=> bs!337600 m!1567515))

(assert (=> bs!337600 m!1567515))

(declare-fun m!1567517 () Bool)

(assert (=> bs!337600 m!1567517))

(declare-fun m!1567519 () Bool)

(assert (=> bs!337600 m!1567519))

(assert (=> b!1390906 d!398270))

(declare-fun d!398272 () Bool)

(assert (=> d!398272 (= (list!5477 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34))) (list!5481 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34)))))))

(declare-fun bs!337601 () Bool)

(assert (= bs!337601 d!398272))

(declare-fun m!1567521 () Bool)

(assert (=> bs!337601 m!1567521))

(assert (=> b!1390337 d!398272))

(declare-fun d!398274 () Bool)

(assert (=> d!398274 (= (nullable!1219 lt!462518) (nullableFct!290 lt!462518))))

(declare-fun bs!337602 () Bool)

(assert (= bs!337602 d!398274))

(declare-fun m!1567523 () Bool)

(assert (=> bs!337602 m!1567523))

(assert (=> b!1390643 d!398274))

(declare-fun d!398276 () Bool)

(assert (=> d!398276 true))

(assert (=> d!398276 true))

(declare-fun res!628394 () Bool)

(assert (=> d!398276 (= (choose!8550 lambda!60109) res!628394)))

(assert (=> d!397558 d!398276))

(declare-fun d!398278 () Bool)

(assert (=> d!398278 true))

(declare-fun lambda!60213 () Int)

(declare-fun order!8653 () Int)

(declare-fun dynLambda!6502 (Int Int) Int)

(assert (=> d!398278 (< (dynLambda!6498 order!8643 (toValue!3730 (transformation!2443 (rule!4204 t1!34)))) (dynLambda!6502 order!8653 lambda!60213))))

(declare-fun Forall2!450 (Int) Bool)

(assert (=> d!398278 (= (equivClasses!907 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (toValue!3730 (transformation!2443 (rule!4204 t1!34)))) (Forall2!450 lambda!60213))))

(declare-fun bs!337603 () Bool)

(assert (= bs!337603 d!398278))

(declare-fun m!1567525 () Bool)

(assert (=> bs!337603 m!1567525))

(assert (=> b!1390355 d!398278))

(declare-fun d!398280 () Bool)

(assert (=> d!398280 (dynLambda!6490 lambda!60113 (rule!4204 t1!34))))

(assert (=> d!398280 true))

(declare-fun _$7!752 () Unit!20367)

(assert (=> d!398280 (= (choose!8554 rules!2550 lambda!60113 (rule!4204 t1!34)) _$7!752)))

(declare-fun b_lambda!43395 () Bool)

(assert (=> (not b_lambda!43395) (not d!398280)))

(declare-fun bs!337604 () Bool)

(assert (= bs!337604 d!398280))

(assert (=> bs!337604 m!1565915))

(assert (=> d!397638 d!398280))

(assert (=> d!397638 d!397738))

(declare-fun d!398282 () Bool)

(assert (=> d!398282 (= (list!5478 (_1!7742 lt!462751)) (list!5482 (c!228750 (_1!7742 lt!462751))))))

(declare-fun bs!337605 () Bool)

(assert (= bs!337605 d!398282))

(declare-fun m!1567527 () Bool)

(assert (=> bs!337605 m!1567527))

(assert (=> b!1390831 d!398282))

(assert (=> b!1390831 d!397436))

(assert (=> b!1390831 d!397440))

(declare-fun d!398284 () Bool)

(assert (=> d!398284 (= (list!5478 lt!462757) (list!5482 (c!228750 lt!462757)))))

(declare-fun bs!337606 () Bool)

(assert (= bs!337606 d!398284))

(declare-fun m!1567529 () Bool)

(assert (=> bs!337606 m!1567529))

(assert (=> d!397608 d!398284))

(declare-fun d!398286 () Bool)

(declare-fun e!889027 () Bool)

(assert (=> d!398286 e!889027))

(declare-fun res!628397 () Bool)

(assert (=> d!398286 (=> (not res!628397) (not e!889027))))

(declare-fun lt!463158 () BalanceConc!9234)

(assert (=> d!398286 (= res!628397 (= (list!5478 lt!463158) (Cons!14109 t1!34 Nil!14109)))))

(assert (=> d!398286 (= lt!463158 (choose!8558 t1!34))))

(assert (=> d!398286 (= (singleton!480 t1!34) lt!463158)))

(declare-fun b!1391950 () Bool)

(assert (=> b!1391950 (= e!889027 (isBalanced!1374 (c!228750 lt!463158)))))

(assert (= (and d!398286 res!628397) b!1391950))

(declare-fun m!1567531 () Bool)

(assert (=> d!398286 m!1567531))

(declare-fun m!1567533 () Bool)

(assert (=> d!398286 m!1567533))

(declare-fun m!1567535 () Bool)

(assert (=> b!1391950 m!1567535))

(assert (=> d!397608 d!398286))

(declare-fun d!398288 () Bool)

(assert (=> d!398288 (= (list!5477 (_2!7742 lt!462772)) (list!5481 (c!228748 (_2!7742 lt!462772))))))

(declare-fun bs!337607 () Bool)

(assert (= bs!337607 d!398288))

(declare-fun m!1567537 () Bool)

(assert (=> bs!337607 m!1567537))

(assert (=> b!1390881 d!398288))

(assert (=> b!1390881 d!397668))

(assert (=> b!1390881 d!397670))

(declare-fun b!1391951 () Bool)

(declare-fun c!229203 () Bool)

(assert (=> b!1391951 (= c!229203 ((_ is Star!3757) (ite c!228820 (reg!4086 (regex!2443 (rule!4204 t1!34))) (ite c!228821 (regTwo!8027 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34)))))))))

(declare-fun e!889030 () List!14173)

(declare-fun e!889029 () List!14173)

(assert (=> b!1391951 (= e!889030 e!889029)))

(declare-fun d!398290 () Bool)

(declare-fun c!229206 () Bool)

(assert (=> d!398290 (= c!229206 (or ((_ is EmptyExpr!3757) (ite c!228820 (reg!4086 (regex!2443 (rule!4204 t1!34))) (ite c!228821 (regTwo!8027 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34)))))) ((_ is EmptyLang!3757) (ite c!228820 (reg!4086 (regex!2443 (rule!4204 t1!34))) (ite c!228821 (regTwo!8027 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34))))))))))

(declare-fun e!889028 () List!14173)

(assert (=> d!398290 (= (usedCharacters!254 (ite c!228820 (reg!4086 (regex!2443 (rule!4204 t1!34))) (ite c!228821 (regTwo!8027 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34)))))) e!889028)))

(declare-fun b!1391952 () Bool)

(declare-fun call!93113 () List!14173)

(assert (=> b!1391952 (= e!889029 call!93113)))

(declare-fun b!1391953 () Bool)

(assert (=> b!1391953 (= e!889028 Nil!14107)))

(declare-fun b!1391954 () Bool)

(declare-fun e!889031 () List!14173)

(declare-fun call!93115 () List!14173)

(assert (=> b!1391954 (= e!889031 call!93115)))

(declare-fun call!93114 () List!14173)

(declare-fun bm!93108 () Bool)

(declare-fun c!229204 () Bool)

(assert (=> bm!93108 (= call!93114 (usedCharacters!254 (ite c!229204 (regOne!8027 (ite c!228820 (reg!4086 (regex!2443 (rule!4204 t1!34))) (ite c!228821 (regTwo!8027 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34)))))) (regTwo!8026 (ite c!228820 (reg!4086 (regex!2443 (rule!4204 t1!34))) (ite c!228821 (regTwo!8027 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34)))))))))))

(declare-fun bm!93109 () Bool)

(assert (=> bm!93109 (= call!93113 (usedCharacters!254 (ite c!229203 (reg!4086 (ite c!228820 (reg!4086 (regex!2443 (rule!4204 t1!34))) (ite c!228821 (regTwo!8027 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34)))))) (ite c!229204 (regTwo!8027 (ite c!228820 (reg!4086 (regex!2443 (rule!4204 t1!34))) (ite c!228821 (regTwo!8027 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34)))))) (regOne!8026 (ite c!228820 (reg!4086 (regex!2443 (rule!4204 t1!34))) (ite c!228821 (regTwo!8027 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34))))))))))))

(declare-fun b!1391955 () Bool)

(assert (=> b!1391955 (= e!889028 e!889030)))

(declare-fun c!229205 () Bool)

(assert (=> b!1391955 (= c!229205 ((_ is ElementMatch!3757) (ite c!228820 (reg!4086 (regex!2443 (rule!4204 t1!34))) (ite c!228821 (regTwo!8027 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34)))))))))

(declare-fun b!1391956 () Bool)

(assert (=> b!1391956 (= e!889031 call!93115)))

(declare-fun b!1391957 () Bool)

(assert (=> b!1391957 (= e!889029 e!889031)))

(assert (=> b!1391957 (= c!229204 ((_ is Union!3757) (ite c!228820 (reg!4086 (regex!2443 (rule!4204 t1!34))) (ite c!228821 (regTwo!8027 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34)))))))))

(declare-fun bm!93110 () Bool)

(declare-fun call!93116 () List!14173)

(assert (=> bm!93110 (= call!93115 (++!3664 (ite c!229204 call!93114 call!93116) (ite c!229204 call!93116 call!93114)))))

(declare-fun bm!93111 () Bool)

(assert (=> bm!93111 (= call!93116 call!93113)))

(declare-fun b!1391958 () Bool)

(assert (=> b!1391958 (= e!889030 (Cons!14107 (c!228749 (ite c!228820 (reg!4086 (regex!2443 (rule!4204 t1!34))) (ite c!228821 (regTwo!8027 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34)))))) Nil!14107))))

(assert (= (and d!398290 c!229206) b!1391953))

(assert (= (and d!398290 (not c!229206)) b!1391955))

(assert (= (and b!1391955 c!229205) b!1391958))

(assert (= (and b!1391955 (not c!229205)) b!1391951))

(assert (= (and b!1391951 c!229203) b!1391952))

(assert (= (and b!1391951 (not c!229203)) b!1391957))

(assert (= (and b!1391957 c!229204) b!1391954))

(assert (= (and b!1391957 (not c!229204)) b!1391956))

(assert (= (or b!1391954 b!1391956) bm!93108))

(assert (= (or b!1391954 b!1391956) bm!93111))

(assert (= (or b!1391954 b!1391956) bm!93110))

(assert (= (or b!1391952 bm!93111) bm!93109))

(declare-fun m!1567539 () Bool)

(assert (=> bm!93108 m!1567539))

(declare-fun m!1567541 () Bool)

(assert (=> bm!93109 m!1567541))

(declare-fun m!1567543 () Bool)

(assert (=> bm!93110 m!1567543))

(assert (=> bm!92981 d!398290))

(declare-fun d!398292 () Bool)

(assert (=> d!398292 (= (isEmpty!8550 lt!462523) ((_ is Nil!14107) lt!462523))))

(assert (=> d!397664 d!398292))

(declare-fun d!398294 () Bool)

(declare-fun lt!463159 () Bool)

(assert (=> d!398294 (= lt!463159 (select (content!2079 (t!122412 lt!462537)) lt!462529))))

(declare-fun e!889032 () Bool)

(assert (=> d!398294 (= lt!463159 e!889032)))

(declare-fun res!628398 () Bool)

(assert (=> d!398294 (=> (not res!628398) (not e!889032))))

(assert (=> d!398294 (= res!628398 ((_ is Cons!14107) (t!122412 lt!462537)))))

(assert (=> d!398294 (= (contains!2710 (t!122412 lt!462537) lt!462529) lt!463159)))

(declare-fun b!1391959 () Bool)

(declare-fun e!889033 () Bool)

(assert (=> b!1391959 (= e!889032 e!889033)))

(declare-fun res!628399 () Bool)

(assert (=> b!1391959 (=> res!628399 e!889033)))

(assert (=> b!1391959 (= res!628399 (= (h!19508 (t!122412 lt!462537)) lt!462529))))

(declare-fun b!1391960 () Bool)

(assert (=> b!1391960 (= e!889033 (contains!2710 (t!122412 (t!122412 lt!462537)) lt!462529))))

(assert (= (and d!398294 res!628398) b!1391959))

(assert (= (and b!1391959 (not res!628399)) b!1391960))

(declare-fun m!1567545 () Bool)

(assert (=> d!398294 m!1567545))

(declare-fun m!1567547 () Bool)

(assert (=> d!398294 m!1567547))

(declare-fun m!1567549 () Bool)

(assert (=> b!1391960 m!1567549))

(assert (=> b!1390877 d!398294))

(declare-fun d!398296 () Bool)

(declare-fun lt!463160 () Int)

(assert (=> d!398296 (>= lt!463160 0)))

(declare-fun e!889034 () Int)

(assert (=> d!398296 (= lt!463160 e!889034)))

(declare-fun c!229207 () Bool)

(assert (=> d!398296 (= c!229207 ((_ is Nil!14107) (_2!7741 (get!4379 lt!462639))))))

(assert (=> d!398296 (= (size!11605 (_2!7741 (get!4379 lt!462639))) lt!463160)))

(declare-fun b!1391961 () Bool)

(assert (=> b!1391961 (= e!889034 0)))

(declare-fun b!1391962 () Bool)

(assert (=> b!1391962 (= e!889034 (+ 1 (size!11605 (t!122412 (_2!7741 (get!4379 lt!462639))))))))

(assert (= (and d!398296 c!229207) b!1391961))

(assert (= (and d!398296 (not c!229207)) b!1391962))

(declare-fun m!1567551 () Bool)

(assert (=> b!1391962 m!1567551))

(assert (=> b!1390432 d!398296))

(assert (=> b!1390432 d!397750))

(declare-fun d!398298 () Bool)

(declare-fun lt!463161 () Int)

(assert (=> d!398298 (>= lt!463161 0)))

(declare-fun e!889035 () Int)

(assert (=> d!398298 (= lt!463161 e!889035)))

(declare-fun c!229208 () Bool)

(assert (=> d!398298 (= c!229208 ((_ is Nil!14107) lt!462532))))

(assert (=> d!398298 (= (size!11605 lt!462532) lt!463161)))

(declare-fun b!1391963 () Bool)

(assert (=> b!1391963 (= e!889035 0)))

(declare-fun b!1391964 () Bool)

(assert (=> b!1391964 (= e!889035 (+ 1 (size!11605 (t!122412 lt!462532))))))

(assert (= (and d!398298 c!229208) b!1391963))

(assert (= (and d!398298 (not c!229208)) b!1391964))

(assert (=> b!1391964 m!1566479))

(assert (=> b!1390432 d!398298))

(assert (=> b!1390902 d!397610))

(declare-fun d!398300 () Bool)

(assert (=> d!398300 (= (list!5477 lt!462773) (list!5481 (c!228748 lt!462773)))))

(declare-fun bs!337608 () Bool)

(assert (= bs!337608 d!398300))

(declare-fun m!1567553 () Bool)

(assert (=> bs!337608 m!1567553))

(assert (=> d!397626 d!398300))

(declare-fun d!398302 () Bool)

(declare-fun c!229211 () Bool)

(assert (=> d!398302 (= c!229211 ((_ is Cons!14109) (list!5478 (singletonSeq!1092 t2!34))))))

(declare-fun e!889038 () List!14173)

(assert (=> d!398302 (= (printList!626 thiss!19762 (list!5478 (singletonSeq!1092 t2!34))) e!889038)))

(declare-fun b!1391969 () Bool)

(assert (=> b!1391969 (= e!889038 (++!3664 (list!5477 (charsOf!1415 (h!19510 (list!5478 (singletonSeq!1092 t2!34))))) (printList!626 thiss!19762 (t!122414 (list!5478 (singletonSeq!1092 t2!34))))))))

(declare-fun b!1391970 () Bool)

(assert (=> b!1391970 (= e!889038 Nil!14107)))

(assert (= (and d!398302 c!229211) b!1391969))

(assert (= (and d!398302 (not c!229211)) b!1391970))

(declare-fun m!1567555 () Bool)

(assert (=> b!1391969 m!1567555))

(assert (=> b!1391969 m!1567555))

(declare-fun m!1567557 () Bool)

(assert (=> b!1391969 m!1567557))

(declare-fun m!1567559 () Bool)

(assert (=> b!1391969 m!1567559))

(assert (=> b!1391969 m!1567557))

(assert (=> b!1391969 m!1567559))

(declare-fun m!1567561 () Bool)

(assert (=> b!1391969 m!1567561))

(assert (=> d!397626 d!398302))

(assert (=> d!397626 d!397726))

(declare-fun d!398304 () Bool)

(declare-fun lt!463215 () BalanceConc!9232)

(declare-fun printListTailRec!257 (LexerInterface!2138 List!14175 List!14173) List!14173)

(declare-fun dropList!424 (BalanceConc!9234 Int) List!14175)

(assert (=> d!398304 (= (list!5477 lt!463215) (printListTailRec!257 thiss!19762 (dropList!424 (singletonSeq!1092 t2!34) 0) (list!5477 (BalanceConc!9233 Empty!4646))))))

(declare-fun e!889051 () BalanceConc!9232)

(assert (=> d!398304 (= lt!463215 e!889051)))

(declare-fun c!229215 () Bool)

(assert (=> d!398304 (= c!229215 (>= 0 (size!11607 (singletonSeq!1092 t2!34))))))

(declare-fun e!889052 () Bool)

(assert (=> d!398304 e!889052))

(declare-fun res!628410 () Bool)

(assert (=> d!398304 (=> (not res!628410) (not e!889052))))

(assert (=> d!398304 (= res!628410 (>= 0 0))))

(assert (=> d!398304 (= (printTailRec!608 thiss!19762 (singletonSeq!1092 t2!34) 0 (BalanceConc!9233 Empty!4646)) lt!463215)))

(declare-fun b!1391987 () Bool)

(assert (=> b!1391987 (= e!889052 (<= 0 (size!11607 (singletonSeq!1092 t2!34))))))

(declare-fun b!1391988 () Bool)

(assert (=> b!1391988 (= e!889051 (BalanceConc!9233 Empty!4646))))

(declare-fun b!1391989 () Bool)

(assert (=> b!1391989 (= e!889051 (printTailRec!608 thiss!19762 (singletonSeq!1092 t2!34) (+ 0 1) (++!3665 (BalanceConc!9233 Empty!4646) (charsOf!1415 (apply!3552 (singletonSeq!1092 t2!34) 0)))))))

(declare-fun lt!463213 () List!14175)

(assert (=> b!1391989 (= lt!463213 (list!5478 (singletonSeq!1092 t2!34)))))

(declare-fun lt!463218 () Unit!20367)

(declare-fun lemmaDropApply!448 (List!14175 Int) Unit!20367)

(assert (=> b!1391989 (= lt!463218 (lemmaDropApply!448 lt!463213 0))))

(declare-fun head!2549 (List!14175) Token!4548)

(declare-fun drop!693 (List!14175 Int) List!14175)

(assert (=> b!1391989 (= (head!2549 (drop!693 lt!463213 0)) (apply!3559 lt!463213 0))))

(declare-fun lt!463217 () Unit!20367)

(assert (=> b!1391989 (= lt!463217 lt!463218)))

(declare-fun lt!463214 () List!14175)

(assert (=> b!1391989 (= lt!463214 (list!5478 (singletonSeq!1092 t2!34)))))

(declare-fun lt!463212 () Unit!20367)

(declare-fun lemmaDropTail!428 (List!14175 Int) Unit!20367)

(assert (=> b!1391989 (= lt!463212 (lemmaDropTail!428 lt!463214 0))))

(declare-fun tail!2023 (List!14175) List!14175)

(assert (=> b!1391989 (= (tail!2023 (drop!693 lt!463214 0)) (drop!693 lt!463214 (+ 0 1)))))

(declare-fun lt!463216 () Unit!20367)

(assert (=> b!1391989 (= lt!463216 lt!463212)))

(assert (= (and d!398304 res!628410) b!1391987))

(assert (= (and d!398304 c!229215) b!1391988))

(assert (= (and d!398304 (not c!229215)) b!1391989))

(assert (=> d!398304 m!1564873))

(declare-fun m!1567621 () Bool)

(assert (=> d!398304 m!1567621))

(assert (=> d!398304 m!1567621))

(assert (=> d!398304 m!1567431))

(declare-fun m!1567623 () Bool)

(assert (=> d!398304 m!1567623))

(assert (=> d!398304 m!1564873))

(declare-fun m!1567625 () Bool)

(assert (=> d!398304 m!1567625))

(declare-fun m!1567627 () Bool)

(assert (=> d!398304 m!1567627))

(assert (=> d!398304 m!1567431))

(assert (=> b!1391987 m!1564873))

(assert (=> b!1391987 m!1567625))

(assert (=> b!1391989 m!1564873))

(declare-fun m!1567629 () Bool)

(assert (=> b!1391989 m!1567629))

(declare-fun m!1567631 () Bool)

(assert (=> b!1391989 m!1567631))

(declare-fun m!1567633 () Bool)

(assert (=> b!1391989 m!1567633))

(declare-fun m!1567635 () Bool)

(assert (=> b!1391989 m!1567635))

(declare-fun m!1567637 () Bool)

(assert (=> b!1391989 m!1567637))

(declare-fun m!1567639 () Bool)

(assert (=> b!1391989 m!1567639))

(assert (=> b!1391989 m!1564873))

(assert (=> b!1391989 m!1565877))

(declare-fun m!1567641 () Bool)

(assert (=> b!1391989 m!1567641))

(declare-fun m!1567643 () Bool)

(assert (=> b!1391989 m!1567643))

(assert (=> b!1391989 m!1567629))

(declare-fun m!1567645 () Bool)

(assert (=> b!1391989 m!1567645))

(assert (=> b!1391989 m!1567645))

(declare-fun m!1567647 () Bool)

(assert (=> b!1391989 m!1567647))

(assert (=> b!1391989 m!1567633))

(declare-fun m!1567649 () Bool)

(assert (=> b!1391989 m!1567649))

(assert (=> b!1391989 m!1564873))

(assert (=> b!1391989 m!1567647))

(declare-fun m!1567651 () Bool)

(assert (=> b!1391989 m!1567651))

(assert (=> b!1391989 m!1567637))

(assert (=> d!397626 d!398304))

(declare-fun d!398318 () Bool)

(declare-fun c!229216 () Bool)

(assert (=> d!398318 (= c!229216 (isEmpty!8550 (tail!2020 lt!462523)))))

(declare-fun e!889053 () Bool)

(assert (=> d!398318 (= (prefixMatch!266 (derivativeStep!977 lt!462518 (head!2543 lt!462523)) (tail!2020 lt!462523)) e!889053)))

(declare-fun b!1391990 () Bool)

(assert (=> b!1391990 (= e!889053 (not (lostCause!353 (derivativeStep!977 lt!462518 (head!2543 lt!462523)))))))

(declare-fun b!1391991 () Bool)

(assert (=> b!1391991 (= e!889053 (prefixMatch!266 (derivativeStep!977 (derivativeStep!977 lt!462518 (head!2543 lt!462523)) (head!2543 (tail!2020 lt!462523))) (tail!2020 (tail!2020 lt!462523))))))

(assert (= (and d!398318 c!229216) b!1391990))

(assert (= (and d!398318 (not c!229216)) b!1391991))

(assert (=> d!398318 m!1565993))

(declare-fun m!1567653 () Bool)

(assert (=> d!398318 m!1567653))

(assert (=> b!1391990 m!1565991))

(declare-fun m!1567655 () Bool)

(assert (=> b!1391990 m!1567655))

(assert (=> b!1391991 m!1565993))

(declare-fun m!1567657 () Bool)

(assert (=> b!1391991 m!1567657))

(assert (=> b!1391991 m!1565991))

(assert (=> b!1391991 m!1567657))

(declare-fun m!1567659 () Bool)

(assert (=> b!1391991 m!1567659))

(assert (=> b!1391991 m!1565993))

(declare-fun m!1567661 () Bool)

(assert (=> b!1391991 m!1567661))

(assert (=> b!1391991 m!1567659))

(assert (=> b!1391991 m!1567661))

(declare-fun m!1567663 () Bool)

(assert (=> b!1391991 m!1567663))

(assert (=> b!1390929 d!398318))

(declare-fun b!1392012 () Bool)

(declare-fun e!889065 () Regex!3757)

(declare-fun call!93128 () Regex!3757)

(assert (=> b!1392012 (= e!889065 (Concat!6291 call!93128 lt!462518))))

(declare-fun c!229227 () Bool)

(declare-fun bm!93120 () Bool)

(declare-fun c!229228 () Bool)

(declare-fun call!93127 () Regex!3757)

(declare-fun c!229231 () Bool)

(assert (=> bm!93120 (= call!93127 (derivativeStep!977 (ite c!229231 (regTwo!8027 lt!462518) (ite c!229227 (reg!4086 lt!462518) (ite c!229228 (regTwo!8026 lt!462518) (regOne!8026 lt!462518)))) (head!2543 lt!462523)))))

(declare-fun b!1392013 () Bool)

(assert (=> b!1392013 (= c!229231 ((_ is Union!3757) lt!462518))))

(declare-fun e!889064 () Regex!3757)

(declare-fun e!889066 () Regex!3757)

(assert (=> b!1392013 (= e!889064 e!889066)))

(declare-fun bm!93122 () Bool)

(assert (=> bm!93122 (= call!93128 call!93127)))

(declare-fun b!1392014 () Bool)

(declare-fun e!889068 () Regex!3757)

(declare-fun call!93125 () Regex!3757)

(declare-fun call!93126 () Regex!3757)

(assert (=> b!1392014 (= e!889068 (Union!3757 (Concat!6291 call!93126 (regTwo!8026 lt!462518)) call!93125))))

(declare-fun b!1392015 () Bool)

(assert (=> b!1392015 (= e!889066 e!889065)))

(assert (=> b!1392015 (= c!229227 ((_ is Star!3757) lt!462518))))

(declare-fun bm!93123 () Bool)

(assert (=> bm!93123 (= call!93125 call!93128)))

(declare-fun d!398320 () Bool)

(declare-fun lt!463221 () Regex!3757)

(assert (=> d!398320 (validRegex!1639 lt!463221)))

(declare-fun e!889067 () Regex!3757)

(assert (=> d!398320 (= lt!463221 e!889067)))

(declare-fun c!229230 () Bool)

(assert (=> d!398320 (= c!229230 (or ((_ is EmptyExpr!3757) lt!462518) ((_ is EmptyLang!3757) lt!462518)))))

(assert (=> d!398320 (validRegex!1639 lt!462518)))

(assert (=> d!398320 (= (derivativeStep!977 lt!462518 (head!2543 lt!462523)) lt!463221)))

(declare-fun bm!93121 () Bool)

(assert (=> bm!93121 (= call!93126 (derivativeStep!977 (ite c!229231 (regOne!8027 lt!462518) (regOne!8026 lt!462518)) (head!2543 lt!462523)))))

(declare-fun b!1392016 () Bool)

(assert (=> b!1392016 (= e!889067 EmptyLang!3757)))

(declare-fun b!1392017 () Bool)

(assert (=> b!1392017 (= e!889066 (Union!3757 call!93126 call!93127))))

(declare-fun b!1392018 () Bool)

(assert (=> b!1392018 (= e!889068 (Union!3757 (Concat!6291 call!93125 (regTwo!8026 lt!462518)) EmptyLang!3757))))

(declare-fun b!1392019 () Bool)

(assert (=> b!1392019 (= e!889067 e!889064)))

(declare-fun c!229229 () Bool)

(assert (=> b!1392019 (= c!229229 ((_ is ElementMatch!3757) lt!462518))))

(declare-fun b!1392020 () Bool)

(assert (=> b!1392020 (= c!229228 (nullable!1219 (regOne!8026 lt!462518)))))

(assert (=> b!1392020 (= e!889065 e!889068)))

(declare-fun b!1392021 () Bool)

(assert (=> b!1392021 (= e!889064 (ite (= (head!2543 lt!462523) (c!228749 lt!462518)) EmptyExpr!3757 EmptyLang!3757))))

(assert (= (and d!398320 c!229230) b!1392016))

(assert (= (and d!398320 (not c!229230)) b!1392019))

(assert (= (and b!1392019 c!229229) b!1392021))

(assert (= (and b!1392019 (not c!229229)) b!1392013))

(assert (= (and b!1392013 c!229231) b!1392017))

(assert (= (and b!1392013 (not c!229231)) b!1392015))

(assert (= (and b!1392015 c!229227) b!1392012))

(assert (= (and b!1392015 (not c!229227)) b!1392020))

(assert (= (and b!1392020 c!229228) b!1392014))

(assert (= (and b!1392020 (not c!229228)) b!1392018))

(assert (= (or b!1392014 b!1392018) bm!93123))

(assert (= (or b!1392012 bm!93123) bm!93122))

(assert (= (or b!1392017 b!1392014) bm!93121))

(assert (= (or b!1392017 bm!93122) bm!93120))

(assert (=> bm!93120 m!1565989))

(declare-fun m!1567665 () Bool)

(assert (=> bm!93120 m!1567665))

(declare-fun m!1567667 () Bool)

(assert (=> d!398320 m!1567667))

(assert (=> d!398320 m!1565561))

(assert (=> bm!93121 m!1565989))

(declare-fun m!1567669 () Bool)

(assert (=> bm!93121 m!1567669))

(declare-fun m!1567671 () Bool)

(assert (=> b!1392020 m!1567671))

(assert (=> b!1390929 d!398320))

(declare-fun d!398322 () Bool)

(assert (=> d!398322 (= (head!2543 lt!462523) (h!19508 lt!462523))))

(assert (=> b!1390929 d!398322))

(declare-fun d!398324 () Bool)

(assert (=> d!398324 (= (tail!2020 lt!462523) (t!122412 lt!462523))))

(assert (=> b!1390929 d!398324))

(assert (=> b!1390890 d!397874))

(assert (=> b!1390890 d!397876))

(assert (=> d!397648 d!397714))

(declare-fun b!1392034 () Bool)

(declare-fun res!628426 () Bool)

(declare-fun e!889073 () Bool)

(assert (=> b!1392034 (=> (not res!628426) (not e!889073))))

(assert (=> b!1392034 (= res!628426 (isBalanced!1374 (right!12384 (c!228750 lt!462774))))))

(declare-fun b!1392035 () Bool)

(assert (=> b!1392035 (= e!889073 (not (isEmpty!8559 (right!12384 (c!228750 lt!462774)))))))

(declare-fun b!1392036 () Bool)

(declare-fun e!889074 () Bool)

(assert (=> b!1392036 (= e!889074 e!889073)))

(declare-fun res!628427 () Bool)

(assert (=> b!1392036 (=> (not res!628427) (not e!889073))))

(declare-fun height!680 (Conc!4647) Int)

(assert (=> b!1392036 (= res!628427 (<= (- 1) (- (height!680 (left!12054 (c!228750 lt!462774))) (height!680 (right!12384 (c!228750 lt!462774))))))))

(declare-fun b!1392037 () Bool)

(declare-fun res!628423 () Bool)

(assert (=> b!1392037 (=> (not res!628423) (not e!889073))))

(assert (=> b!1392037 (= res!628423 (isBalanced!1374 (left!12054 (c!228750 lt!462774))))))

(declare-fun d!398326 () Bool)

(declare-fun res!628425 () Bool)

(assert (=> d!398326 (=> res!628425 e!889074)))

(assert (=> d!398326 (= res!628425 (not ((_ is Node!4647) (c!228750 lt!462774))))))

(assert (=> d!398326 (= (isBalanced!1374 (c!228750 lt!462774)) e!889074)))

(declare-fun b!1392038 () Bool)

(declare-fun res!628428 () Bool)

(assert (=> b!1392038 (=> (not res!628428) (not e!889073))))

(assert (=> b!1392038 (= res!628428 (not (isEmpty!8559 (left!12054 (c!228750 lt!462774)))))))

(declare-fun b!1392039 () Bool)

(declare-fun res!628424 () Bool)

(assert (=> b!1392039 (=> (not res!628424) (not e!889073))))

(assert (=> b!1392039 (= res!628424 (<= (- (height!680 (left!12054 (c!228750 lt!462774))) (height!680 (right!12384 (c!228750 lt!462774)))) 1))))

(assert (= (and d!398326 (not res!628425)) b!1392036))

(assert (= (and b!1392036 res!628427) b!1392039))

(assert (= (and b!1392039 res!628424) b!1392037))

(assert (= (and b!1392037 res!628423) b!1392034))

(assert (= (and b!1392034 res!628426) b!1392038))

(assert (= (and b!1392038 res!628428) b!1392035))

(declare-fun m!1567673 () Bool)

(assert (=> b!1392035 m!1567673))

(declare-fun m!1567675 () Bool)

(assert (=> b!1392038 m!1567675))

(declare-fun m!1567677 () Bool)

(assert (=> b!1392037 m!1567677))

(declare-fun m!1567679 () Bool)

(assert (=> b!1392039 m!1567679))

(declare-fun m!1567681 () Bool)

(assert (=> b!1392039 m!1567681))

(declare-fun m!1567683 () Bool)

(assert (=> b!1392034 m!1567683))

(assert (=> b!1392036 m!1567679))

(assert (=> b!1392036 m!1567681))

(assert (=> b!1390883 d!398326))

(assert (=> b!1390650 d!397710))

(declare-fun d!398328 () Bool)

(declare-fun c!229232 () Bool)

(assert (=> d!398328 (= c!229232 ((_ is Empty!4646) (c!228748 lt!462535)))))

(declare-fun e!889075 () List!14173)

(assert (=> d!398328 (= (list!5481 (c!228748 lt!462535)) e!889075)))

(declare-fun b!1392041 () Bool)

(declare-fun e!889076 () List!14173)

(assert (=> b!1392041 (= e!889075 e!889076)))

(declare-fun c!229233 () Bool)

(assert (=> b!1392041 (= c!229233 ((_ is Leaf!7064) (c!228748 lt!462535)))))

(declare-fun b!1392042 () Bool)

(assert (=> b!1392042 (= e!889076 (list!5483 (xs!7373 (c!228748 lt!462535))))))

(declare-fun b!1392043 () Bool)

(assert (=> b!1392043 (= e!889076 (++!3664 (list!5481 (left!12053 (c!228748 lt!462535))) (list!5481 (right!12383 (c!228748 lt!462535)))))))

(declare-fun b!1392040 () Bool)

(assert (=> b!1392040 (= e!889075 Nil!14107)))

(assert (= (and d!398328 c!229232) b!1392040))

(assert (= (and d!398328 (not c!229232)) b!1392041))

(assert (= (and b!1392041 c!229233) b!1392042))

(assert (= (and b!1392041 (not c!229233)) b!1392043))

(declare-fun m!1567685 () Bool)

(assert (=> b!1392042 m!1567685))

(declare-fun m!1567687 () Bool)

(assert (=> b!1392043 m!1567687))

(declare-fun m!1567689 () Bool)

(assert (=> b!1392043 m!1567689))

(assert (=> b!1392043 m!1567687))

(assert (=> b!1392043 m!1567689))

(declare-fun m!1567691 () Bool)

(assert (=> b!1392043 m!1567691))

(assert (=> d!397440 d!398328))

(declare-fun b!1392053 () Bool)

(declare-fun e!889081 () List!14175)

(declare-fun e!889082 () List!14175)

(assert (=> b!1392053 (= e!889081 e!889082)))

(declare-fun c!229239 () Bool)

(assert (=> b!1392053 (= c!229239 ((_ is Leaf!7065) (c!228750 (_1!7742 lt!462510))))))

(declare-fun b!1392054 () Bool)

(declare-fun list!5486 (IArray!9299) List!14175)

(assert (=> b!1392054 (= e!889082 (list!5486 (xs!7374 (c!228750 (_1!7742 lt!462510)))))))

(declare-fun b!1392052 () Bool)

(assert (=> b!1392052 (= e!889081 Nil!14109)))

(declare-fun d!398330 () Bool)

(declare-fun c!229238 () Bool)

(assert (=> d!398330 (= c!229238 ((_ is Empty!4647) (c!228750 (_1!7742 lt!462510))))))

(assert (=> d!398330 (= (list!5482 (c!228750 (_1!7742 lt!462510))) e!889081)))

(declare-fun b!1392055 () Bool)

(assert (=> b!1392055 (= e!889082 (++!3668 (list!5482 (left!12054 (c!228750 (_1!7742 lt!462510)))) (list!5482 (right!12384 (c!228750 (_1!7742 lt!462510))))))))

(assert (= (and d!398330 c!229238) b!1392052))

(assert (= (and d!398330 (not c!229238)) b!1392053))

(assert (= (and b!1392053 c!229239) b!1392054))

(assert (= (and b!1392053 (not c!229239)) b!1392055))

(declare-fun m!1567693 () Bool)

(assert (=> b!1392054 m!1567693))

(declare-fun m!1567695 () Bool)

(assert (=> b!1392055 m!1567695))

(declare-fun m!1567697 () Bool)

(assert (=> b!1392055 m!1567697))

(assert (=> b!1392055 m!1567695))

(assert (=> b!1392055 m!1567697))

(declare-fun m!1567699 () Bool)

(assert (=> b!1392055 m!1567699))

(assert (=> d!397622 d!398330))

(declare-fun bs!337610 () Bool)

(declare-fun d!398332 () Bool)

(assert (= bs!337610 (and d!398332 d!398278)))

(declare-fun lambda!60214 () Int)

(assert (=> bs!337610 (= (= (toValue!3730 (transformation!2443 (rule!4204 t2!34))) (toValue!3730 (transformation!2443 (rule!4204 t1!34)))) (= lambda!60214 lambda!60213))))

(assert (=> d!398332 true))

(assert (=> d!398332 (< (dynLambda!6498 order!8643 (toValue!3730 (transformation!2443 (rule!4204 t2!34)))) (dynLambda!6502 order!8653 lambda!60214))))

(assert (=> d!398332 (= (equivClasses!907 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (toValue!3730 (transformation!2443 (rule!4204 t2!34)))) (Forall2!450 lambda!60214))))

(declare-fun bs!337611 () Bool)

(assert (= bs!337611 d!398332))

(declare-fun m!1567701 () Bool)

(assert (=> bs!337611 m!1567701))

(assert (=> b!1390586 d!398332))

(assert (=> d!397642 d!397820))

(declare-fun d!398334 () Bool)

(declare-fun lt!463222 () Int)

(assert (=> d!398334 (>= lt!463222 0)))

(declare-fun e!889083 () Int)

(assert (=> d!398334 (= lt!463222 e!889083)))

(declare-fun c!229240 () Bool)

(assert (=> d!398334 (= c!229240 ((_ is Nil!14107) (originalCharacters!3305 t2!34)))))

(assert (=> d!398334 (= (size!11605 (originalCharacters!3305 t2!34)) lt!463222)))

(declare-fun b!1392056 () Bool)

(assert (=> b!1392056 (= e!889083 0)))

(declare-fun b!1392057 () Bool)

(assert (=> b!1392057 (= e!889083 (+ 1 (size!11605 (t!122412 (originalCharacters!3305 t2!34)))))))

(assert (= (and d!398334 c!229240) b!1392056))

(assert (= (and d!398334 (not c!229240)) b!1392057))

(declare-fun m!1567703 () Bool)

(assert (=> b!1392057 m!1567703))

(assert (=> b!1390345 d!398334))

(declare-fun d!398336 () Bool)

(declare-fun lt!463223 () Int)

(assert (=> d!398336 (>= lt!463223 0)))

(declare-fun e!889084 () Int)

(assert (=> d!398336 (= lt!463223 e!889084)))

(declare-fun c!229241 () Bool)

(assert (=> d!398336 (= c!229241 ((_ is Nil!14107) lt!462797))))

(assert (=> d!398336 (= (size!11605 lt!462797) lt!463223)))

(declare-fun b!1392058 () Bool)

(assert (=> b!1392058 (= e!889084 0)))

(declare-fun b!1392059 () Bool)

(assert (=> b!1392059 (= e!889084 (+ 1 (size!11605 (t!122412 lt!462797))))))

(assert (= (and d!398336 c!229241) b!1392058))

(assert (= (and d!398336 (not c!229241)) b!1392059))

(declare-fun m!1567705 () Bool)

(assert (=> b!1392059 m!1567705))

(assert (=> b!1390921 d!398336))

(assert (=> b!1390921 d!398298))

(declare-fun d!398338 () Bool)

(declare-fun lt!463224 () Int)

(assert (=> d!398338 (>= lt!463224 0)))

(declare-fun e!889085 () Int)

(assert (=> d!398338 (= lt!463224 e!889085)))

(declare-fun c!229242 () Bool)

(assert (=> d!398338 (= c!229242 ((_ is Nil!14107) (Cons!14107 lt!462513 Nil!14107)))))

(assert (=> d!398338 (= (size!11605 (Cons!14107 lt!462513 Nil!14107)) lt!463224)))

(declare-fun b!1392060 () Bool)

(assert (=> b!1392060 (= e!889085 0)))

(declare-fun b!1392061 () Bool)

(assert (=> b!1392061 (= e!889085 (+ 1 (size!11605 (t!122412 (Cons!14107 lt!462513 Nil!14107)))))))

(assert (= (and d!398338 c!229242) b!1392060))

(assert (= (and d!398338 (not c!229242)) b!1392061))

(declare-fun m!1567707 () Bool)

(assert (=> b!1392061 m!1567707))

(assert (=> b!1390921 d!398338))

(declare-fun b!1392062 () Bool)

(declare-fun e!889090 () Bool)

(assert (=> b!1392062 (= e!889090 (= (head!2543 (tail!2020 lt!462532)) (c!228749 (derivativeStep!977 (regex!2443 (rule!4204 t1!34)) (head!2543 lt!462532)))))))

(declare-fun b!1392063 () Bool)

(declare-fun res!628432 () Bool)

(assert (=> b!1392063 (=> (not res!628432) (not e!889090))))

(assert (=> b!1392063 (= res!628432 (isEmpty!8550 (tail!2020 (tail!2020 lt!462532))))))

(declare-fun d!398340 () Bool)

(declare-fun e!889091 () Bool)

(assert (=> d!398340 e!889091))

(declare-fun c!229245 () Bool)

(assert (=> d!398340 (= c!229245 ((_ is EmptyExpr!3757) (derivativeStep!977 (regex!2443 (rule!4204 t1!34)) (head!2543 lt!462532))))))

(declare-fun lt!463225 () Bool)

(declare-fun e!889092 () Bool)

(assert (=> d!398340 (= lt!463225 e!889092)))

(declare-fun c!229243 () Bool)

(assert (=> d!398340 (= c!229243 (isEmpty!8550 (tail!2020 lt!462532)))))

(assert (=> d!398340 (validRegex!1639 (derivativeStep!977 (regex!2443 (rule!4204 t1!34)) (head!2543 lt!462532)))))

(assert (=> d!398340 (= (matchR!1748 (derivativeStep!977 (regex!2443 (rule!4204 t1!34)) (head!2543 lt!462532)) (tail!2020 lt!462532)) lt!463225)))

(declare-fun b!1392064 () Bool)

(declare-fun res!628434 () Bool)

(assert (=> b!1392064 (=> (not res!628434) (not e!889090))))

(declare-fun call!93129 () Bool)

(assert (=> b!1392064 (= res!628434 (not call!93129))))

(declare-fun b!1392065 () Bool)

(declare-fun e!889089 () Bool)

(assert (=> b!1392065 (= e!889091 e!889089)))

(declare-fun c!229244 () Bool)

(assert (=> b!1392065 (= c!229244 ((_ is EmptyLang!3757) (derivativeStep!977 (regex!2443 (rule!4204 t1!34)) (head!2543 lt!462532))))))

(declare-fun b!1392066 () Bool)

(assert (=> b!1392066 (= e!889092 (nullable!1219 (derivativeStep!977 (regex!2443 (rule!4204 t1!34)) (head!2543 lt!462532))))))

(declare-fun b!1392067 () Bool)

(declare-fun res!628431 () Bool)

(declare-fun e!889086 () Bool)

(assert (=> b!1392067 (=> res!628431 e!889086)))

(assert (=> b!1392067 (= res!628431 (not ((_ is ElementMatch!3757) (derivativeStep!977 (regex!2443 (rule!4204 t1!34)) (head!2543 lt!462532)))))))

(assert (=> b!1392067 (= e!889089 e!889086)))

(declare-fun b!1392068 () Bool)

(declare-fun res!628433 () Bool)

(declare-fun e!889087 () Bool)

(assert (=> b!1392068 (=> res!628433 e!889087)))

(assert (=> b!1392068 (= res!628433 (not (isEmpty!8550 (tail!2020 (tail!2020 lt!462532)))))))

(declare-fun b!1392069 () Bool)

(declare-fun e!889088 () Bool)

(assert (=> b!1392069 (= e!889088 e!889087)))

(declare-fun res!628430 () Bool)

(assert (=> b!1392069 (=> res!628430 e!889087)))

(assert (=> b!1392069 (= res!628430 call!93129)))

(declare-fun b!1392070 () Bool)

(declare-fun res!628436 () Bool)

(assert (=> b!1392070 (=> res!628436 e!889086)))

(assert (=> b!1392070 (= res!628436 e!889090)))

(declare-fun res!628435 () Bool)

(assert (=> b!1392070 (=> (not res!628435) (not e!889090))))

(assert (=> b!1392070 (= res!628435 lt!463225)))

(declare-fun b!1392071 () Bool)

(assert (=> b!1392071 (= e!889089 (not lt!463225))))

(declare-fun bm!93124 () Bool)

(assert (=> bm!93124 (= call!93129 (isEmpty!8550 (tail!2020 lt!462532)))))

(declare-fun b!1392072 () Bool)

(assert (=> b!1392072 (= e!889091 (= lt!463225 call!93129))))

(declare-fun b!1392073 () Bool)

(assert (=> b!1392073 (= e!889087 (not (= (head!2543 (tail!2020 lt!462532)) (c!228749 (derivativeStep!977 (regex!2443 (rule!4204 t1!34)) (head!2543 lt!462532))))))))

(declare-fun b!1392074 () Bool)

(assert (=> b!1392074 (= e!889086 e!889088)))

(declare-fun res!628429 () Bool)

(assert (=> b!1392074 (=> (not res!628429) (not e!889088))))

(assert (=> b!1392074 (= res!628429 (not lt!463225))))

(declare-fun b!1392075 () Bool)

(assert (=> b!1392075 (= e!889092 (matchR!1748 (derivativeStep!977 (derivativeStep!977 (regex!2443 (rule!4204 t1!34)) (head!2543 lt!462532)) (head!2543 (tail!2020 lt!462532))) (tail!2020 (tail!2020 lt!462532))))))

(assert (= (and d!398340 c!229243) b!1392066))

(assert (= (and d!398340 (not c!229243)) b!1392075))

(assert (= (and d!398340 c!229245) b!1392072))

(assert (= (and d!398340 (not c!229245)) b!1392065))

(assert (= (and b!1392065 c!229244) b!1392071))

(assert (= (and b!1392065 (not c!229244)) b!1392067))

(assert (= (and b!1392067 (not res!628431)) b!1392070))

(assert (= (and b!1392070 res!628435) b!1392064))

(assert (= (and b!1392064 res!628434) b!1392063))

(assert (= (and b!1392063 res!628432) b!1392062))

(assert (= (and b!1392070 (not res!628436)) b!1392074))

(assert (= (and b!1392074 res!628429) b!1392069))

(assert (= (and b!1392069 (not res!628430)) b!1392068))

(assert (= (and b!1392068 (not res!628433)) b!1392073))

(assert (= (or b!1392072 b!1392064 b!1392069) bm!93124))

(assert (=> d!398340 m!1565899))

(assert (=> d!398340 m!1565901))

(assert (=> d!398340 m!1565903))

(declare-fun m!1567709 () Bool)

(assert (=> d!398340 m!1567709))

(assert (=> bm!93124 m!1565899))

(assert (=> bm!93124 m!1565901))

(assert (=> b!1392063 m!1565899))

(declare-fun m!1567711 () Bool)

(assert (=> b!1392063 m!1567711))

(assert (=> b!1392063 m!1567711))

(declare-fun m!1567713 () Bool)

(assert (=> b!1392063 m!1567713))

(assert (=> b!1392075 m!1565899))

(declare-fun m!1567715 () Bool)

(assert (=> b!1392075 m!1567715))

(assert (=> b!1392075 m!1565903))

(assert (=> b!1392075 m!1567715))

(declare-fun m!1567717 () Bool)

(assert (=> b!1392075 m!1567717))

(assert (=> b!1392075 m!1565899))

(assert (=> b!1392075 m!1567711))

(assert (=> b!1392075 m!1567717))

(assert (=> b!1392075 m!1567711))

(declare-fun m!1567719 () Bool)

(assert (=> b!1392075 m!1567719))

(assert (=> b!1392073 m!1565899))

(assert (=> b!1392073 m!1567715))

(assert (=> b!1392068 m!1565899))

(assert (=> b!1392068 m!1567711))

(assert (=> b!1392068 m!1567711))

(assert (=> b!1392068 m!1567713))

(assert (=> b!1392062 m!1565899))

(assert (=> b!1392062 m!1567715))

(assert (=> b!1392066 m!1565903))

(declare-fun m!1567721 () Bool)

(assert (=> b!1392066 m!1567721))

(assert (=> b!1390897 d!398340))

(declare-fun b!1392076 () Bool)

(declare-fun e!889094 () Regex!3757)

(declare-fun call!93133 () Regex!3757)

(assert (=> b!1392076 (= e!889094 (Concat!6291 call!93133 (regex!2443 (rule!4204 t1!34))))))

(declare-fun call!93132 () Regex!3757)

(declare-fun c!229250 () Bool)

(declare-fun bm!93125 () Bool)

(declare-fun c!229246 () Bool)

(declare-fun c!229247 () Bool)

(assert (=> bm!93125 (= call!93132 (derivativeStep!977 (ite c!229250 (regTwo!8027 (regex!2443 (rule!4204 t1!34))) (ite c!229246 (reg!4086 (regex!2443 (rule!4204 t1!34))) (ite c!229247 (regTwo!8026 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34)))))) (head!2543 lt!462532)))))

(declare-fun b!1392077 () Bool)

(assert (=> b!1392077 (= c!229250 ((_ is Union!3757) (regex!2443 (rule!4204 t1!34))))))

(declare-fun e!889093 () Regex!3757)

(declare-fun e!889095 () Regex!3757)

(assert (=> b!1392077 (= e!889093 e!889095)))

(declare-fun bm!93127 () Bool)

(assert (=> bm!93127 (= call!93133 call!93132)))

(declare-fun e!889097 () Regex!3757)

(declare-fun b!1392078 () Bool)

(declare-fun call!93130 () Regex!3757)

(declare-fun call!93131 () Regex!3757)

(assert (=> b!1392078 (= e!889097 (Union!3757 (Concat!6291 call!93131 (regTwo!8026 (regex!2443 (rule!4204 t1!34)))) call!93130))))

(declare-fun b!1392079 () Bool)

(assert (=> b!1392079 (= e!889095 e!889094)))

(assert (=> b!1392079 (= c!229246 ((_ is Star!3757) (regex!2443 (rule!4204 t1!34))))))

(declare-fun bm!93128 () Bool)

(assert (=> bm!93128 (= call!93130 call!93133)))

(declare-fun d!398342 () Bool)

(declare-fun lt!463226 () Regex!3757)

(assert (=> d!398342 (validRegex!1639 lt!463226)))

(declare-fun e!889096 () Regex!3757)

(assert (=> d!398342 (= lt!463226 e!889096)))

(declare-fun c!229249 () Bool)

(assert (=> d!398342 (= c!229249 (or ((_ is EmptyExpr!3757) (regex!2443 (rule!4204 t1!34))) ((_ is EmptyLang!3757) (regex!2443 (rule!4204 t1!34)))))))

(assert (=> d!398342 (validRegex!1639 (regex!2443 (rule!4204 t1!34)))))

(assert (=> d!398342 (= (derivativeStep!977 (regex!2443 (rule!4204 t1!34)) (head!2543 lt!462532)) lt!463226)))

(declare-fun bm!93126 () Bool)

(assert (=> bm!93126 (= call!93131 (derivativeStep!977 (ite c!229250 (regOne!8027 (regex!2443 (rule!4204 t1!34))) (regOne!8026 (regex!2443 (rule!4204 t1!34)))) (head!2543 lt!462532)))))

(declare-fun b!1392080 () Bool)

(assert (=> b!1392080 (= e!889096 EmptyLang!3757)))

(declare-fun b!1392081 () Bool)

(assert (=> b!1392081 (= e!889095 (Union!3757 call!93131 call!93132))))

(declare-fun b!1392082 () Bool)

(assert (=> b!1392082 (= e!889097 (Union!3757 (Concat!6291 call!93130 (regTwo!8026 (regex!2443 (rule!4204 t1!34)))) EmptyLang!3757))))

(declare-fun b!1392083 () Bool)

(assert (=> b!1392083 (= e!889096 e!889093)))

(declare-fun c!229248 () Bool)

(assert (=> b!1392083 (= c!229248 ((_ is ElementMatch!3757) (regex!2443 (rule!4204 t1!34))))))

(declare-fun b!1392084 () Bool)

(assert (=> b!1392084 (= c!229247 (nullable!1219 (regOne!8026 (regex!2443 (rule!4204 t1!34)))))))

(assert (=> b!1392084 (= e!889094 e!889097)))

(declare-fun b!1392085 () Bool)

(assert (=> b!1392085 (= e!889093 (ite (= (head!2543 lt!462532) (c!228749 (regex!2443 (rule!4204 t1!34)))) EmptyExpr!3757 EmptyLang!3757))))

(assert (= (and d!398342 c!229249) b!1392080))

(assert (= (and d!398342 (not c!229249)) b!1392083))

(assert (= (and b!1392083 c!229248) b!1392085))

(assert (= (and b!1392083 (not c!229248)) b!1392077))

(assert (= (and b!1392077 c!229250) b!1392081))

(assert (= (and b!1392077 (not c!229250)) b!1392079))

(assert (= (and b!1392079 c!229246) b!1392076))

(assert (= (and b!1392079 (not c!229246)) b!1392084))

(assert (= (and b!1392084 c!229247) b!1392078))

(assert (= (and b!1392084 (not c!229247)) b!1392082))

(assert (= (or b!1392078 b!1392082) bm!93128))

(assert (= (or b!1392076 bm!93128) bm!93127))

(assert (= (or b!1392081 b!1392078) bm!93126))

(assert (= (or b!1392081 bm!93127) bm!93125))

(assert (=> bm!93125 m!1564955))

(declare-fun m!1567723 () Bool)

(assert (=> bm!93125 m!1567723))

(declare-fun m!1567725 () Bool)

(assert (=> d!398342 m!1567725))

(assert (=> d!398342 m!1565897))

(assert (=> bm!93126 m!1564955))

(declare-fun m!1567727 () Bool)

(assert (=> bm!93126 m!1567727))

(declare-fun m!1567729 () Bool)

(assert (=> b!1392084 m!1567729))

(assert (=> b!1390897 d!398342))

(assert (=> b!1390897 d!397674))

(assert (=> b!1390897 d!397876))

(declare-fun d!398344 () Bool)

(declare-fun lt!463227 () Bool)

(assert (=> d!398344 (= lt!463227 (isEmpty!8552 (list!5478 (_1!7742 lt!462751))))))

(assert (=> d!398344 (= lt!463227 (isEmpty!8559 (c!228750 (_1!7742 lt!462751))))))

(assert (=> d!398344 (= (isEmpty!8556 (_1!7742 lt!462751)) lt!463227)))

(declare-fun bs!337612 () Bool)

(assert (= bs!337612 d!398344))

(assert (=> bs!337612 m!1565787))

(assert (=> bs!337612 m!1565787))

(declare-fun m!1567731 () Bool)

(assert (=> bs!337612 m!1567731))

(declare-fun m!1567733 () Bool)

(assert (=> bs!337612 m!1567733))

(assert (=> b!1390830 d!398344))

(declare-fun d!398346 () Bool)

(assert (=> d!398346 (= (head!2546 rules!2550) (h!19509 rules!2550))))

(assert (=> b!1390734 d!398346))

(declare-fun d!398348 () Bool)

(declare-fun lt!463228 () Int)

(assert (=> d!398348 (>= lt!463228 0)))

(declare-fun e!889098 () Int)

(assert (=> d!398348 (= lt!463228 e!889098)))

(declare-fun c!229251 () Bool)

(assert (=> d!398348 (= c!229251 ((_ is Nil!14107) (list!5477 lt!462522)))))

(assert (=> d!398348 (= (size!11605 (list!5477 lt!462522)) lt!463228)))

(declare-fun b!1392086 () Bool)

(assert (=> b!1392086 (= e!889098 0)))

(declare-fun b!1392087 () Bool)

(assert (=> b!1392087 (= e!889098 (+ 1 (size!11605 (t!122412 (list!5477 lt!462522)))))))

(assert (= (and d!398348 c!229251) b!1392086))

(assert (= (and d!398348 (not c!229251)) b!1392087))

(declare-fun m!1567735 () Bool)

(assert (=> b!1392087 m!1567735))

(assert (=> d!397630 d!398348))

(assert (=> d!397630 d!397554))

(declare-fun d!398350 () Bool)

(declare-fun lt!463231 () Int)

(assert (=> d!398350 (= lt!463231 (size!11605 (list!5481 (c!228748 lt!462522))))))

(assert (=> d!398350 (= lt!463231 (ite ((_ is Empty!4646) (c!228748 lt!462522)) 0 (ite ((_ is Leaf!7064) (c!228748 lt!462522)) (csize!9523 (c!228748 lt!462522)) (csize!9522 (c!228748 lt!462522)))))))

(assert (=> d!398350 (= (size!11608 (c!228748 lt!462522)) lt!463231)))

(declare-fun bs!337613 () Bool)

(assert (= bs!337613 d!398350))

(assert (=> bs!337613 m!1565625))

(assert (=> bs!337613 m!1565625))

(declare-fun m!1567737 () Bool)

(assert (=> bs!337613 m!1567737))

(assert (=> d!397630 d!398350))

(declare-fun b!1392088 () Bool)

(declare-fun c!229252 () Bool)

(assert (=> b!1392088 (= c!229252 ((_ is Star!3757) (ite c!228821 (regOne!8027 (regex!2443 (rule!4204 t1!34))) (regTwo!8026 (regex!2443 (rule!4204 t1!34))))))))

(declare-fun e!889101 () List!14173)

(declare-fun e!889100 () List!14173)

(assert (=> b!1392088 (= e!889101 e!889100)))

(declare-fun d!398352 () Bool)

(declare-fun c!229255 () Bool)

(assert (=> d!398352 (= c!229255 (or ((_ is EmptyExpr!3757) (ite c!228821 (regOne!8027 (regex!2443 (rule!4204 t1!34))) (regTwo!8026 (regex!2443 (rule!4204 t1!34))))) ((_ is EmptyLang!3757) (ite c!228821 (regOne!8027 (regex!2443 (rule!4204 t1!34))) (regTwo!8026 (regex!2443 (rule!4204 t1!34)))))))))

(declare-fun e!889099 () List!14173)

(assert (=> d!398352 (= (usedCharacters!254 (ite c!228821 (regOne!8027 (regex!2443 (rule!4204 t1!34))) (regTwo!8026 (regex!2443 (rule!4204 t1!34))))) e!889099)))

(declare-fun b!1392089 () Bool)

(declare-fun call!93134 () List!14173)

(assert (=> b!1392089 (= e!889100 call!93134)))

(declare-fun b!1392090 () Bool)

(assert (=> b!1392090 (= e!889099 Nil!14107)))

(declare-fun b!1392091 () Bool)

(declare-fun e!889102 () List!14173)

(declare-fun call!93136 () List!14173)

(assert (=> b!1392091 (= e!889102 call!93136)))

(declare-fun bm!93129 () Bool)

(declare-fun c!229253 () Bool)

(declare-fun call!93135 () List!14173)

(assert (=> bm!93129 (= call!93135 (usedCharacters!254 (ite c!229253 (regOne!8027 (ite c!228821 (regOne!8027 (regex!2443 (rule!4204 t1!34))) (regTwo!8026 (regex!2443 (rule!4204 t1!34))))) (regTwo!8026 (ite c!228821 (regOne!8027 (regex!2443 (rule!4204 t1!34))) (regTwo!8026 (regex!2443 (rule!4204 t1!34))))))))))

(declare-fun bm!93130 () Bool)

(assert (=> bm!93130 (= call!93134 (usedCharacters!254 (ite c!229252 (reg!4086 (ite c!228821 (regOne!8027 (regex!2443 (rule!4204 t1!34))) (regTwo!8026 (regex!2443 (rule!4204 t1!34))))) (ite c!229253 (regTwo!8027 (ite c!228821 (regOne!8027 (regex!2443 (rule!4204 t1!34))) (regTwo!8026 (regex!2443 (rule!4204 t1!34))))) (regOne!8026 (ite c!228821 (regOne!8027 (regex!2443 (rule!4204 t1!34))) (regTwo!8026 (regex!2443 (rule!4204 t1!34)))))))))))

(declare-fun b!1392092 () Bool)

(assert (=> b!1392092 (= e!889099 e!889101)))

(declare-fun c!229254 () Bool)

(assert (=> b!1392092 (= c!229254 ((_ is ElementMatch!3757) (ite c!228821 (regOne!8027 (regex!2443 (rule!4204 t1!34))) (regTwo!8026 (regex!2443 (rule!4204 t1!34))))))))

(declare-fun b!1392093 () Bool)

(assert (=> b!1392093 (= e!889102 call!93136)))

(declare-fun b!1392094 () Bool)

(assert (=> b!1392094 (= e!889100 e!889102)))

(assert (=> b!1392094 (= c!229253 ((_ is Union!3757) (ite c!228821 (regOne!8027 (regex!2443 (rule!4204 t1!34))) (regTwo!8026 (regex!2443 (rule!4204 t1!34))))))))

(declare-fun call!93137 () List!14173)

(declare-fun bm!93131 () Bool)

(assert (=> bm!93131 (= call!93136 (++!3664 (ite c!229253 call!93135 call!93137) (ite c!229253 call!93137 call!93135)))))

(declare-fun bm!93132 () Bool)

(assert (=> bm!93132 (= call!93137 call!93134)))

(declare-fun b!1392095 () Bool)

(assert (=> b!1392095 (= e!889101 (Cons!14107 (c!228749 (ite c!228821 (regOne!8027 (regex!2443 (rule!4204 t1!34))) (regTwo!8026 (regex!2443 (rule!4204 t1!34))))) Nil!14107))))

(assert (= (and d!398352 c!229255) b!1392090))

(assert (= (and d!398352 (not c!229255)) b!1392092))

(assert (= (and b!1392092 c!229254) b!1392095))

(assert (= (and b!1392092 (not c!229254)) b!1392088))

(assert (= (and b!1392088 c!229252) b!1392089))

(assert (= (and b!1392088 (not c!229252)) b!1392094))

(assert (= (and b!1392094 c!229253) b!1392091))

(assert (= (and b!1392094 (not c!229253)) b!1392093))

(assert (= (or b!1392091 b!1392093) bm!93129))

(assert (= (or b!1392091 b!1392093) bm!93132))

(assert (= (or b!1392091 b!1392093) bm!93131))

(assert (= (or b!1392089 bm!93132) bm!93130))

(declare-fun m!1567739 () Bool)

(assert (=> bm!93129 m!1567739))

(declare-fun m!1567741 () Bool)

(assert (=> bm!93130 m!1567741))

(declare-fun m!1567743 () Bool)

(assert (=> bm!93131 m!1567743))

(assert (=> bm!92980 d!398352))

(assert (=> b!1390850 d!397862))

(assert (=> b!1390850 d!397864))

(declare-fun b!1392096 () Bool)

(declare-fun c!229256 () Bool)

(assert (=> b!1392096 (= c!229256 ((_ is Star!3757) (ite c!228804 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228805 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34)))))))))

(declare-fun e!889105 () List!14173)

(declare-fun e!889104 () List!14173)

(assert (=> b!1392096 (= e!889105 e!889104)))

(declare-fun c!229259 () Bool)

(declare-fun d!398354 () Bool)

(assert (=> d!398354 (= c!229259 (or ((_ is EmptyExpr!3757) (ite c!228804 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228805 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34)))))) ((_ is EmptyLang!3757) (ite c!228804 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228805 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34))))))))))

(declare-fun e!889103 () List!14173)

(assert (=> d!398354 (= (usedCharacters!254 (ite c!228804 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228805 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34)))))) e!889103)))

(declare-fun b!1392097 () Bool)

(declare-fun call!93138 () List!14173)

(assert (=> b!1392097 (= e!889104 call!93138)))

(declare-fun b!1392098 () Bool)

(assert (=> b!1392098 (= e!889103 Nil!14107)))

(declare-fun b!1392099 () Bool)

(declare-fun e!889106 () List!14173)

(declare-fun call!93140 () List!14173)

(assert (=> b!1392099 (= e!889106 call!93140)))

(declare-fun c!229257 () Bool)

(declare-fun bm!93133 () Bool)

(declare-fun call!93139 () List!14173)

(assert (=> bm!93133 (= call!93139 (usedCharacters!254 (ite c!229257 (regOne!8027 (ite c!228804 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228805 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34)))))) (regTwo!8026 (ite c!228804 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228805 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34)))))))))))

(declare-fun bm!93134 () Bool)

(assert (=> bm!93134 (= call!93138 (usedCharacters!254 (ite c!229256 (reg!4086 (ite c!228804 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228805 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34)))))) (ite c!229257 (regTwo!8027 (ite c!228804 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228805 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34)))))) (regOne!8026 (ite c!228804 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228805 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34))))))))))))

(declare-fun b!1392100 () Bool)

(assert (=> b!1392100 (= e!889103 e!889105)))

(declare-fun c!229258 () Bool)

(assert (=> b!1392100 (= c!229258 ((_ is ElementMatch!3757) (ite c!228804 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228805 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34)))))))))

(declare-fun b!1392101 () Bool)

(assert (=> b!1392101 (= e!889106 call!93140)))

(declare-fun b!1392102 () Bool)

(assert (=> b!1392102 (= e!889104 e!889106)))

(assert (=> b!1392102 (= c!229257 ((_ is Union!3757) (ite c!228804 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228805 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34)))))))))

(declare-fun bm!93135 () Bool)

(declare-fun call!93141 () List!14173)

(assert (=> bm!93135 (= call!93140 (++!3664 (ite c!229257 call!93139 call!93141) (ite c!229257 call!93141 call!93139)))))

(declare-fun bm!93136 () Bool)

(assert (=> bm!93136 (= call!93141 call!93138)))

(declare-fun b!1392103 () Bool)

(assert (=> b!1392103 (= e!889105 (Cons!14107 (c!228749 (ite c!228804 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228805 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34)))))) Nil!14107))))

(assert (= (and d!398354 c!229259) b!1392098))

(assert (= (and d!398354 (not c!229259)) b!1392100))

(assert (= (and b!1392100 c!229258) b!1392103))

(assert (= (and b!1392100 (not c!229258)) b!1392096))

(assert (= (and b!1392096 c!229256) b!1392097))

(assert (= (and b!1392096 (not c!229256)) b!1392102))

(assert (= (and b!1392102 c!229257) b!1392099))

(assert (= (and b!1392102 (not c!229257)) b!1392101))

(assert (= (or b!1392099 b!1392101) bm!93133))

(assert (= (or b!1392099 b!1392101) bm!93136))

(assert (= (or b!1392099 b!1392101) bm!93135))

(assert (= (or b!1392097 bm!93136) bm!93134))

(declare-fun m!1567745 () Bool)

(assert (=> bm!93133 m!1567745))

(declare-fun m!1567747 () Bool)

(assert (=> bm!93134 m!1567747))

(declare-fun m!1567749 () Bool)

(assert (=> bm!93135 m!1567749))

(assert (=> bm!92977 d!398354))

(declare-fun b!1392104 () Bool)

(declare-fun e!889111 () Bool)

(assert (=> b!1392104 (= e!889111 (= (head!2543 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705))))) (c!228749 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))))))))

(declare-fun b!1392105 () Bool)

(declare-fun res!628440 () Bool)

(assert (=> b!1392105 (=> (not res!628440) (not e!889111))))

(assert (=> b!1392105 (= res!628440 (isEmpty!8550 (tail!2020 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705)))))))))

(declare-fun d!398356 () Bool)

(declare-fun e!889112 () Bool)

(assert (=> d!398356 e!889112))

(declare-fun c!229262 () Bool)

(assert (=> d!398356 (= c!229262 ((_ is EmptyExpr!3757) (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462705))))))))

(declare-fun lt!463232 () Bool)

(declare-fun e!889113 () Bool)

(assert (=> d!398356 (= lt!463232 e!889113)))

(declare-fun c!229260 () Bool)

(assert (=> d!398356 (= c!229260 (isEmpty!8550 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705))))))))

(assert (=> d!398356 (validRegex!1639 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))))))

(assert (=> d!398356 (= (matchR!1748 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))) (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705))))) lt!463232)))

(declare-fun b!1392106 () Bool)

(declare-fun res!628442 () Bool)

(assert (=> b!1392106 (=> (not res!628442) (not e!889111))))

(declare-fun call!93142 () Bool)

(assert (=> b!1392106 (= res!628442 (not call!93142))))

(declare-fun b!1392107 () Bool)

(declare-fun e!889110 () Bool)

(assert (=> b!1392107 (= e!889112 e!889110)))

(declare-fun c!229261 () Bool)

(assert (=> b!1392107 (= c!229261 ((_ is EmptyLang!3757) (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462705))))))))

(declare-fun b!1392108 () Bool)

(assert (=> b!1392108 (= e!889113 (nullable!1219 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462705))))))))

(declare-fun b!1392109 () Bool)

(declare-fun res!628439 () Bool)

(declare-fun e!889107 () Bool)

(assert (=> b!1392109 (=> res!628439 e!889107)))

(assert (=> b!1392109 (= res!628439 (not ((_ is ElementMatch!3757) (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))))))))

(assert (=> b!1392109 (= e!889110 e!889107)))

(declare-fun b!1392110 () Bool)

(declare-fun res!628441 () Bool)

(declare-fun e!889108 () Bool)

(assert (=> b!1392110 (=> res!628441 e!889108)))

(assert (=> b!1392110 (= res!628441 (not (isEmpty!8550 (tail!2020 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705))))))))))

(declare-fun b!1392111 () Bool)

(declare-fun e!889109 () Bool)

(assert (=> b!1392111 (= e!889109 e!889108)))

(declare-fun res!628438 () Bool)

(assert (=> b!1392111 (=> res!628438 e!889108)))

(assert (=> b!1392111 (= res!628438 call!93142)))

(declare-fun b!1392112 () Bool)

(declare-fun res!628444 () Bool)

(assert (=> b!1392112 (=> res!628444 e!889107)))

(assert (=> b!1392112 (= res!628444 e!889111)))

(declare-fun res!628443 () Bool)

(assert (=> b!1392112 (=> (not res!628443) (not e!889111))))

(assert (=> b!1392112 (= res!628443 lt!463232)))

(declare-fun b!1392113 () Bool)

(assert (=> b!1392113 (= e!889110 (not lt!463232))))

(declare-fun bm!93137 () Bool)

(assert (=> bm!93137 (= call!93142 (isEmpty!8550 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705))))))))

(declare-fun b!1392114 () Bool)

(assert (=> b!1392114 (= e!889112 (= lt!463232 call!93142))))

(declare-fun b!1392115 () Bool)

(assert (=> b!1392115 (= e!889108 (not (= (head!2543 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705))))) (c!228749 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462705))))))))))

(declare-fun b!1392116 () Bool)

(assert (=> b!1392116 (= e!889107 e!889109)))

(declare-fun res!628437 () Bool)

(assert (=> b!1392116 (=> (not res!628437) (not e!889109))))

(assert (=> b!1392116 (= res!628437 (not lt!463232))))

(declare-fun b!1392117 () Bool)

(assert (=> b!1392117 (= e!889113 (matchR!1748 (derivativeStep!977 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))) (head!2543 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705)))))) (tail!2020 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!462705)))))))))

(assert (= (and d!398356 c!229260) b!1392108))

(assert (= (and d!398356 (not c!229260)) b!1392117))

(assert (= (and d!398356 c!229262) b!1392114))

(assert (= (and d!398356 (not c!229262)) b!1392107))

(assert (= (and b!1392107 c!229261) b!1392113))

(assert (= (and b!1392107 (not c!229261)) b!1392109))

(assert (= (and b!1392109 (not res!628439)) b!1392112))

(assert (= (and b!1392112 res!628443) b!1392106))

(assert (= (and b!1392106 res!628442) b!1392105))

(assert (= (and b!1392105 res!628440) b!1392104))

(assert (= (and b!1392112 (not res!628444)) b!1392116))

(assert (= (and b!1392116 res!628437) b!1392111))

(assert (= (and b!1392111 (not res!628438)) b!1392110))

(assert (= (and b!1392110 (not res!628441)) b!1392115))

(assert (= (or b!1392114 b!1392106 b!1392111) bm!93137))

(assert (=> d!398356 m!1565603))

(declare-fun m!1567751 () Bool)

(assert (=> d!398356 m!1567751))

(declare-fun m!1567753 () Bool)

(assert (=> d!398356 m!1567753))

(assert (=> bm!93137 m!1565603))

(assert (=> bm!93137 m!1567751))

(assert (=> b!1392105 m!1565603))

(declare-fun m!1567755 () Bool)

(assert (=> b!1392105 m!1567755))

(assert (=> b!1392105 m!1567755))

(declare-fun m!1567757 () Bool)

(assert (=> b!1392105 m!1567757))

(assert (=> b!1392117 m!1565603))

(declare-fun m!1567759 () Bool)

(assert (=> b!1392117 m!1567759))

(assert (=> b!1392117 m!1567759))

(declare-fun m!1567761 () Bool)

(assert (=> b!1392117 m!1567761))

(assert (=> b!1392117 m!1565603))

(assert (=> b!1392117 m!1567755))

(assert (=> b!1392117 m!1567761))

(assert (=> b!1392117 m!1567755))

(declare-fun m!1567763 () Bool)

(assert (=> b!1392117 m!1567763))

(assert (=> b!1392115 m!1565603))

(assert (=> b!1392115 m!1567759))

(assert (=> b!1392110 m!1565603))

(assert (=> b!1392110 m!1567755))

(assert (=> b!1392110 m!1567755))

(assert (=> b!1392110 m!1567757))

(assert (=> b!1392104 m!1565603))

(assert (=> b!1392104 m!1567759))

(declare-fun m!1567765 () Bool)

(assert (=> b!1392108 m!1567765))

(assert (=> b!1390679 d!398356))

(assert (=> b!1390679 d!397754))

(assert (=> b!1390679 d!398030))

(assert (=> b!1390679 d!398032))

(declare-fun b!1392118 () Bool)

(declare-fun res!628448 () Bool)

(declare-fun e!889114 () Bool)

(assert (=> b!1392118 (=> (not res!628448) (not e!889114))))

(assert (=> b!1392118 (= res!628448 (isBalanced!1374 (right!12384 (c!228750 lt!462757))))))

(declare-fun b!1392119 () Bool)

(assert (=> b!1392119 (= e!889114 (not (isEmpty!8559 (right!12384 (c!228750 lt!462757)))))))

(declare-fun b!1392120 () Bool)

(declare-fun e!889115 () Bool)

(assert (=> b!1392120 (= e!889115 e!889114)))

(declare-fun res!628449 () Bool)

(assert (=> b!1392120 (=> (not res!628449) (not e!889114))))

(assert (=> b!1392120 (= res!628449 (<= (- 1) (- (height!680 (left!12054 (c!228750 lt!462757))) (height!680 (right!12384 (c!228750 lt!462757))))))))

(declare-fun b!1392121 () Bool)

(declare-fun res!628445 () Bool)

(assert (=> b!1392121 (=> (not res!628445) (not e!889114))))

(assert (=> b!1392121 (= res!628445 (isBalanced!1374 (left!12054 (c!228750 lt!462757))))))

(declare-fun d!398358 () Bool)

(declare-fun res!628447 () Bool)

(assert (=> d!398358 (=> res!628447 e!889115)))

(assert (=> d!398358 (= res!628447 (not ((_ is Node!4647) (c!228750 lt!462757))))))

(assert (=> d!398358 (= (isBalanced!1374 (c!228750 lt!462757)) e!889115)))

(declare-fun b!1392122 () Bool)

(declare-fun res!628450 () Bool)

(assert (=> b!1392122 (=> (not res!628450) (not e!889114))))

(assert (=> b!1392122 (= res!628450 (not (isEmpty!8559 (left!12054 (c!228750 lt!462757)))))))

(declare-fun b!1392123 () Bool)

(declare-fun res!628446 () Bool)

(assert (=> b!1392123 (=> (not res!628446) (not e!889114))))

(assert (=> b!1392123 (= res!628446 (<= (- (height!680 (left!12054 (c!228750 lt!462757))) (height!680 (right!12384 (c!228750 lt!462757)))) 1))))

(assert (= (and d!398358 (not res!628447)) b!1392120))

(assert (= (and b!1392120 res!628449) b!1392123))

(assert (= (and b!1392123 res!628446) b!1392121))

(assert (= (and b!1392121 res!628445) b!1392118))

(assert (= (and b!1392118 res!628448) b!1392122))

(assert (= (and b!1392122 res!628450) b!1392119))

(declare-fun m!1567767 () Bool)

(assert (=> b!1392119 m!1567767))

(declare-fun m!1567769 () Bool)

(assert (=> b!1392122 m!1567769))

(declare-fun m!1567771 () Bool)

(assert (=> b!1392121 m!1567771))

(declare-fun m!1567773 () Bool)

(assert (=> b!1392123 m!1567773))

(declare-fun m!1567775 () Bool)

(assert (=> b!1392123 m!1567775))

(declare-fun m!1567777 () Bool)

(assert (=> b!1392118 m!1567777))

(assert (=> b!1392120 m!1567773))

(assert (=> b!1392120 m!1567775))

(assert (=> b!1390837 d!398358))

(declare-fun d!398360 () Bool)

(declare-fun c!229263 () Bool)

(assert (=> d!398360 (= c!229263 ((_ is Nil!14107) lt!462797))))

(declare-fun e!889116 () (InoxSet C!7804))

(assert (=> d!398360 (= (content!2079 lt!462797) e!889116)))

(declare-fun b!1392124 () Bool)

(assert (=> b!1392124 (= e!889116 ((as const (Array C!7804 Bool)) false))))

(declare-fun b!1392125 () Bool)

(assert (=> b!1392125 (= e!889116 ((_ map or) (store ((as const (Array C!7804 Bool)) false) (h!19508 lt!462797) true) (content!2079 (t!122412 lt!462797))))))

(assert (= (and d!398360 c!229263) b!1392124))

(assert (= (and d!398360 (not c!229263)) b!1392125))

(declare-fun m!1567779 () Bool)

(assert (=> b!1392125 m!1567779))

(declare-fun m!1567781 () Bool)

(assert (=> b!1392125 m!1567781))

(assert (=> d!397656 d!398360))

(declare-fun d!398362 () Bool)

(declare-fun c!229264 () Bool)

(assert (=> d!398362 (= c!229264 ((_ is Nil!14107) lt!462532))))

(declare-fun e!889117 () (InoxSet C!7804))

(assert (=> d!398362 (= (content!2079 lt!462532) e!889117)))

(declare-fun b!1392126 () Bool)

(assert (=> b!1392126 (= e!889117 ((as const (Array C!7804 Bool)) false))))

(declare-fun b!1392127 () Bool)

(assert (=> b!1392127 (= e!889117 ((_ map or) (store ((as const (Array C!7804 Bool)) false) (h!19508 lt!462532) true) (content!2079 (t!122412 lt!462532))))))

(assert (= (and d!398362 c!229264) b!1392126))

(assert (= (and d!398362 (not c!229264)) b!1392127))

(declare-fun m!1567783 () Bool)

(assert (=> b!1392127 m!1567783))

(assert (=> b!1392127 m!1566475))

(assert (=> d!397656 d!398362))

(declare-fun d!398364 () Bool)

(declare-fun c!229265 () Bool)

(assert (=> d!398364 (= c!229265 ((_ is Nil!14107) (Cons!14107 lt!462513 Nil!14107)))))

(declare-fun e!889118 () (InoxSet C!7804))

(assert (=> d!398364 (= (content!2079 (Cons!14107 lt!462513 Nil!14107)) e!889118)))

(declare-fun b!1392128 () Bool)

(assert (=> b!1392128 (= e!889118 ((as const (Array C!7804 Bool)) false))))

(declare-fun b!1392129 () Bool)

(assert (=> b!1392129 (= e!889118 ((_ map or) (store ((as const (Array C!7804 Bool)) false) (h!19508 (Cons!14107 lt!462513 Nil!14107)) true) (content!2079 (t!122412 (Cons!14107 lt!462513 Nil!14107)))))))

(assert (= (and d!398364 c!229265) b!1392128))

(assert (= (and d!398364 (not c!229265)) b!1392129))

(declare-fun m!1567785 () Bool)

(assert (=> b!1392129 m!1567785))

(declare-fun m!1567787 () Bool)

(assert (=> b!1392129 m!1567787))

(assert (=> d!397656 d!398364))

(declare-fun d!398366 () Bool)

(declare-fun lt!463233 () Bool)

(assert (=> d!398366 (= lt!463233 (select (content!2080 (t!122413 rules!2550)) (rule!4204 t1!34)))))

(declare-fun e!889119 () Bool)

(assert (=> d!398366 (= lt!463233 e!889119)))

(declare-fun res!628451 () Bool)

(assert (=> d!398366 (=> (not res!628451) (not e!889119))))

(assert (=> d!398366 (= res!628451 ((_ is Cons!14108) (t!122413 rules!2550)))))

(assert (=> d!398366 (= (contains!2709 (t!122413 rules!2550) (rule!4204 t1!34)) lt!463233)))

(declare-fun b!1392130 () Bool)

(declare-fun e!889120 () Bool)

(assert (=> b!1392130 (= e!889119 e!889120)))

(declare-fun res!628452 () Bool)

(assert (=> b!1392130 (=> res!628452 e!889120)))

(assert (=> b!1392130 (= res!628452 (= (h!19509 (t!122413 rules!2550)) (rule!4204 t1!34)))))

(declare-fun b!1392131 () Bool)

(assert (=> b!1392131 (= e!889120 (contains!2709 (t!122413 (t!122413 rules!2550)) (rule!4204 t1!34)))))

(assert (= (and d!398366 res!628451) b!1392130))

(assert (= (and b!1392130 (not res!628452)) b!1392131))

(assert (=> d!398366 m!1566361))

(declare-fun m!1567789 () Bool)

(assert (=> d!398366 m!1567789))

(declare-fun m!1567791 () Bool)

(assert (=> b!1392131 m!1567791))

(assert (=> b!1390904 d!398366))

(assert (=> b!1390900 d!397646))

(declare-fun d!398368 () Bool)

(declare-fun lostCauseFct!144 (Regex!3757) Bool)

(assert (=> d!398368 (= (lostCause!353 lt!462518) (lostCauseFct!144 lt!462518))))

(declare-fun bs!337614 () Bool)

(assert (= bs!337614 d!398368))

(declare-fun m!1567793 () Bool)

(assert (=> bs!337614 m!1567793))

(assert (=> b!1390928 d!398368))

(declare-fun d!398370 () Bool)

(assert (=> d!398370 (= (head!2544 (map!3125 rules!2550 lambda!60110)) (h!19511 (map!3125 rules!2550 lambda!60110)))))

(assert (=> b!1390275 d!398370))

(declare-fun b!1392138 () Bool)

(declare-fun e!889129 () Bool)

(assert (=> b!1392138 (= e!889129 (= (head!2543 lt!462520) (c!228749 lt!462584)))))

(declare-fun b!1392139 () Bool)

(declare-fun res!628458 () Bool)

(assert (=> b!1392139 (=> (not res!628458) (not e!889129))))

(assert (=> b!1392139 (= res!628458 (isEmpty!8550 (tail!2020 lt!462520)))))

(declare-fun d!398372 () Bool)

(declare-fun e!889130 () Bool)

(assert (=> d!398372 e!889130))

(declare-fun c!229270 () Bool)

(assert (=> d!398372 (= c!229270 ((_ is EmptyExpr!3757) lt!462584))))

(declare-fun lt!463244 () Bool)

(declare-fun e!889131 () Bool)

(assert (=> d!398372 (= lt!463244 e!889131)))

(declare-fun c!229268 () Bool)

(assert (=> d!398372 (= c!229268 (isEmpty!8550 lt!462520))))

(assert (=> d!398372 (validRegex!1639 lt!462584)))

(assert (=> d!398372 (= (matchR!1748 lt!462584 lt!462520) lt!463244)))

(declare-fun b!1392140 () Bool)

(declare-fun res!628460 () Bool)

(assert (=> b!1392140 (=> (not res!628460) (not e!889129))))

(declare-fun call!93143 () Bool)

(assert (=> b!1392140 (= res!628460 (not call!93143))))

(declare-fun b!1392141 () Bool)

(declare-fun e!889128 () Bool)

(assert (=> b!1392141 (= e!889130 e!889128)))

(declare-fun c!229269 () Bool)

(assert (=> b!1392141 (= c!229269 ((_ is EmptyLang!3757) lt!462584))))

(declare-fun b!1392142 () Bool)

(assert (=> b!1392142 (= e!889131 (nullable!1219 lt!462584))))

(declare-fun b!1392143 () Bool)

(declare-fun res!628457 () Bool)

(declare-fun e!889125 () Bool)

(assert (=> b!1392143 (=> res!628457 e!889125)))

(assert (=> b!1392143 (= res!628457 (not ((_ is ElementMatch!3757) lt!462584)))))

(assert (=> b!1392143 (= e!889128 e!889125)))

(declare-fun b!1392144 () Bool)

(declare-fun res!628459 () Bool)

(declare-fun e!889126 () Bool)

(assert (=> b!1392144 (=> res!628459 e!889126)))

(assert (=> b!1392144 (= res!628459 (not (isEmpty!8550 (tail!2020 lt!462520))))))

(declare-fun b!1392145 () Bool)

(declare-fun e!889127 () Bool)

(assert (=> b!1392145 (= e!889127 e!889126)))

(declare-fun res!628456 () Bool)

(assert (=> b!1392145 (=> res!628456 e!889126)))

(assert (=> b!1392145 (= res!628456 call!93143)))

(declare-fun b!1392146 () Bool)

(declare-fun res!628462 () Bool)

(assert (=> b!1392146 (=> res!628462 e!889125)))

(assert (=> b!1392146 (= res!628462 e!889129)))

(declare-fun res!628461 () Bool)

(assert (=> b!1392146 (=> (not res!628461) (not e!889129))))

(assert (=> b!1392146 (= res!628461 lt!463244)))

(declare-fun b!1392147 () Bool)

(assert (=> b!1392147 (= e!889128 (not lt!463244))))

(declare-fun bm!93138 () Bool)

(assert (=> bm!93138 (= call!93143 (isEmpty!8550 lt!462520))))

(declare-fun b!1392148 () Bool)

(assert (=> b!1392148 (= e!889130 (= lt!463244 call!93143))))

(declare-fun b!1392149 () Bool)

(assert (=> b!1392149 (= e!889126 (not (= (head!2543 lt!462520) (c!228749 lt!462584))))))

(declare-fun b!1392150 () Bool)

(assert (=> b!1392150 (= e!889125 e!889127)))

(declare-fun res!628455 () Bool)

(assert (=> b!1392150 (=> (not res!628455) (not e!889127))))

(assert (=> b!1392150 (= res!628455 (not lt!463244))))

(declare-fun b!1392151 () Bool)

(assert (=> b!1392151 (= e!889131 (matchR!1748 (derivativeStep!977 lt!462584 (head!2543 lt!462520)) (tail!2020 lt!462520)))))

(assert (= (and d!398372 c!229268) b!1392142))

(assert (= (and d!398372 (not c!229268)) b!1392151))

(assert (= (and d!398372 c!229270) b!1392148))

(assert (= (and d!398372 (not c!229270)) b!1392141))

(assert (= (and b!1392141 c!229269) b!1392147))

(assert (= (and b!1392141 (not c!229269)) b!1392143))

(assert (= (and b!1392143 (not res!628457)) b!1392146))

(assert (= (and b!1392146 res!628461) b!1392140))

(assert (= (and b!1392140 res!628460) b!1392139))

(assert (= (and b!1392139 res!628458) b!1392138))

(assert (= (and b!1392146 (not res!628462)) b!1392150))

(assert (= (and b!1392150 res!628455) b!1392145))

(assert (= (and b!1392145 (not res!628456)) b!1392144))

(assert (= (and b!1392144 (not res!628459)) b!1392149))

(assert (= (or b!1392148 b!1392140 b!1392145) bm!93138))

(assert (=> d!398372 m!1565559))

(assert (=> d!398372 m!1566033))

(assert (=> bm!93138 m!1565559))

(assert (=> b!1392139 m!1565563))

(assert (=> b!1392139 m!1565563))

(assert (=> b!1392139 m!1565565))

(assert (=> b!1392151 m!1565567))

(assert (=> b!1392151 m!1565567))

(declare-fun m!1567795 () Bool)

(assert (=> b!1392151 m!1567795))

(assert (=> b!1392151 m!1565563))

(assert (=> b!1392151 m!1567795))

(assert (=> b!1392151 m!1565563))

(declare-fun m!1567797 () Bool)

(assert (=> b!1392151 m!1567797))

(assert (=> b!1392149 m!1565567))

(assert (=> b!1392144 m!1565563))

(assert (=> b!1392144 m!1565563))

(assert (=> b!1392144 m!1565565))

(assert (=> b!1392138 m!1565567))

(declare-fun m!1567799 () Bool)

(assert (=> b!1392142 m!1567799))

(assert (=> b!1390983 d!398372))

(declare-fun d!398374 () Bool)

(declare-fun c!229271 () Bool)

(assert (=> d!398374 (= c!229271 ((_ is Empty!4646) (c!228748 lt!462522)))))

(declare-fun e!889136 () List!14173)

(assert (=> d!398374 (= (list!5481 (c!228748 lt!462522)) e!889136)))

(declare-fun b!1392165 () Bool)

(declare-fun e!889137 () List!14173)

(assert (=> b!1392165 (= e!889136 e!889137)))

(declare-fun c!229272 () Bool)

(assert (=> b!1392165 (= c!229272 ((_ is Leaf!7064) (c!228748 lt!462522)))))

(declare-fun b!1392166 () Bool)

(assert (=> b!1392166 (= e!889137 (list!5483 (xs!7373 (c!228748 lt!462522))))))

(declare-fun b!1392167 () Bool)

(assert (=> b!1392167 (= e!889137 (++!3664 (list!5481 (left!12053 (c!228748 lt!462522))) (list!5481 (right!12383 (c!228748 lt!462522)))))))

(declare-fun b!1392164 () Bool)

(assert (=> b!1392164 (= e!889136 Nil!14107)))

(assert (= (and d!398374 c!229271) b!1392164))

(assert (= (and d!398374 (not c!229271)) b!1392165))

(assert (= (and b!1392165 c!229272) b!1392166))

(assert (= (and b!1392165 (not c!229272)) b!1392167))

(declare-fun m!1567801 () Bool)

(assert (=> b!1392166 m!1567801))

(assert (=> b!1392167 m!1566841))

(assert (=> b!1392167 m!1566843))

(assert (=> b!1392167 m!1566841))

(assert (=> b!1392167 m!1566843))

(declare-fun m!1567803 () Bool)

(assert (=> b!1392167 m!1567803))

(assert (=> d!397554 d!398374))

(declare-fun bs!337615 () Bool)

(declare-fun d!398376 () Bool)

(assert (= bs!337615 (and d!398376 b!1390084)))

(declare-fun lambda!60217 () Int)

(assert (=> bs!337615 (not (= lambda!60217 lambda!60112))))

(declare-fun bs!337616 () Bool)

(assert (= bs!337616 (and d!398376 b!1390077)))

(assert (=> bs!337616 (= lambda!60217 lambda!60113)))

(declare-fun bs!337617 () Bool)

(assert (= bs!337617 (and d!398376 d!397362)))

(assert (=> bs!337617 (not (= lambda!60217 lambda!60119))))

(declare-fun bs!337618 () Bool)

(assert (= bs!337618 (and d!398376 d!397366)))

(assert (=> bs!337618 (not (= lambda!60217 lambda!60129))))

(assert (=> d!398376 true))

(declare-fun lt!463247 () Bool)

(assert (=> d!398376 (= lt!463247 (rulesValidInductive!787 thiss!19762 rules!2550))))

(assert (=> d!398376 (= lt!463247 (forall!3434 rules!2550 lambda!60217))))

(assert (=> d!398376 (= (rulesValid!917 thiss!19762 rules!2550) lt!463247)))

(declare-fun bs!337619 () Bool)

(assert (= bs!337619 d!398376))

(assert (=> bs!337619 m!1565311))

(declare-fun m!1567805 () Bool)

(assert (=> bs!337619 m!1567805))

(assert (=> d!397682 d!398376))

(declare-fun d!398378 () Bool)

(assert (=> d!398378 (= (list!5477 lt!462799) (list!5481 (c!228748 lt!462799)))))

(declare-fun bs!337620 () Bool)

(assert (= bs!337620 d!398378))

(declare-fun m!1567807 () Bool)

(assert (=> bs!337620 m!1567807))

(assert (=> d!397660 d!398378))

(declare-fun d!398380 () Bool)

(assert (=> d!398380 (= (Exists!907 lambda!60151) (choose!8550 lambda!60151))))

(declare-fun bs!337621 () Bool)

(assert (= bs!337621 d!398380))

(declare-fun m!1567809 () Bool)

(assert (=> bs!337621 m!1567809))

(assert (=> d!397560 d!398380))

(declare-fun bs!337622 () Bool)

(declare-fun d!398382 () Bool)

(assert (= bs!337622 (and d!398382 b!1390096)))

(declare-fun lambda!60220 () Int)

(assert (=> bs!337622 (= lambda!60220 lambda!60109)))

(declare-fun bs!337623 () Bool)

(assert (= bs!337623 (and d!398382 d!397560)))

(assert (=> bs!337623 (= lambda!60220 lambda!60151)))

(assert (=> d!398382 true))

(assert (=> d!398382 true))

(assert (=> d!398382 (Exists!907 lambda!60220)))

(assert (=> d!398382 true))

(declare-fun _$103!161 () Unit!20367)

(assert (=> d!398382 (= (choose!8551 lt!462518 lt!462523) _$103!161)))

(declare-fun bs!337624 () Bool)

(assert (= bs!337624 d!398382))

(declare-fun m!1567811 () Bool)

(assert (=> bs!337624 m!1567811))

(assert (=> d!397560 d!398382))

(assert (=> d!397560 d!398046))

(declare-fun b!1392179 () Bool)

(declare-fun e!889145 () Bool)

(declare-fun e!889144 () Bool)

(assert (=> b!1392179 (= e!889145 e!889144)))

(declare-fun res!628484 () Bool)

(declare-fun lt!463255 () tuple2!13714)

(assert (=> b!1392179 (= res!628484 (< (size!11605 (_2!7743 lt!463255)) (size!11605 (_2!7741 (v!21586 lt!462803)))))))

(assert (=> b!1392179 (=> (not res!628484) (not e!889144))))

(declare-fun d!398384 () Bool)

(assert (=> d!398384 e!889145))

(declare-fun c!229275 () Bool)

(assert (=> d!398384 (= c!229275 (> (size!11606 (_1!7743 lt!463255)) 0))))

(declare-fun e!889146 () tuple2!13714)

(assert (=> d!398384 (= lt!463255 e!889146)))

(declare-fun c!229274 () Bool)

(declare-fun lt!463253 () Option!2704)

(assert (=> d!398384 (= c!229274 ((_ is Some!2703) lt!463253))))

(assert (=> d!398384 (= lt!463253 (maxPrefix!1112 thiss!19762 rules!2550 (_2!7741 (v!21586 lt!462803))))))

(assert (=> d!398384 (= (lexList!652 thiss!19762 rules!2550 (_2!7741 (v!21586 lt!462803))) lt!463255)))

(declare-fun b!1392180 () Bool)

(assert (=> b!1392180 (= e!889144 (not (isEmpty!8552 (_1!7743 lt!463255))))))

(declare-fun b!1392181 () Bool)

(assert (=> b!1392181 (= e!889146 (tuple2!13715 Nil!14109 (_2!7741 (v!21586 lt!462803))))))

(declare-fun b!1392182 () Bool)

(assert (=> b!1392182 (= e!889145 (= (_2!7743 lt!463255) (_2!7741 (v!21586 lt!462803))))))

(declare-fun b!1392183 () Bool)

(declare-fun lt!463254 () tuple2!13714)

(assert (=> b!1392183 (= e!889146 (tuple2!13715 (Cons!14109 (_1!7741 (v!21586 lt!463253)) (_1!7743 lt!463254)) (_2!7743 lt!463254)))))

(assert (=> b!1392183 (= lt!463254 (lexList!652 thiss!19762 rules!2550 (_2!7741 (v!21586 lt!463253))))))

(assert (= (and d!398384 c!229274) b!1392183))

(assert (= (and d!398384 (not c!229274)) b!1392181))

(assert (= (and d!398384 c!229275) b!1392179))

(assert (= (and d!398384 (not c!229275)) b!1392182))

(assert (= (and b!1392179 res!628484) b!1392180))

(declare-fun m!1567813 () Bool)

(assert (=> b!1392179 m!1567813))

(declare-fun m!1567815 () Bool)

(assert (=> b!1392179 m!1567815))

(declare-fun m!1567817 () Bool)

(assert (=> d!398384 m!1567817))

(declare-fun m!1567821 () Bool)

(assert (=> d!398384 m!1567821))

(declare-fun m!1567823 () Bool)

(assert (=> b!1392180 m!1567823))

(declare-fun m!1567829 () Bool)

(assert (=> b!1392183 m!1567829))

(assert (=> b!1390934 d!398384))

(declare-fun b!1392184 () Bool)

(declare-fun e!889151 () Bool)

(assert (=> b!1392184 (= e!889151 (= (head!2543 (tail!2020 lt!462537)) (c!228749 (derivativeStep!977 (regex!2443 (rule!4204 t2!34)) (head!2543 lt!462537)))))))

(declare-fun b!1392185 () Bool)

(declare-fun res!628488 () Bool)

(assert (=> b!1392185 (=> (not res!628488) (not e!889151))))

(assert (=> b!1392185 (= res!628488 (isEmpty!8550 (tail!2020 (tail!2020 lt!462537))))))

(declare-fun d!398386 () Bool)

(declare-fun e!889152 () Bool)

(assert (=> d!398386 e!889152))

(declare-fun c!229278 () Bool)

(assert (=> d!398386 (= c!229278 ((_ is EmptyExpr!3757) (derivativeStep!977 (regex!2443 (rule!4204 t2!34)) (head!2543 lt!462537))))))

(declare-fun lt!463256 () Bool)

(declare-fun e!889153 () Bool)

(assert (=> d!398386 (= lt!463256 e!889153)))

(declare-fun c!229276 () Bool)

(assert (=> d!398386 (= c!229276 (isEmpty!8550 (tail!2020 lt!462537)))))

(assert (=> d!398386 (validRegex!1639 (derivativeStep!977 (regex!2443 (rule!4204 t2!34)) (head!2543 lt!462537)))))

(assert (=> d!398386 (= (matchR!1748 (derivativeStep!977 (regex!2443 (rule!4204 t2!34)) (head!2543 lt!462537)) (tail!2020 lt!462537)) lt!463256)))

(declare-fun b!1392186 () Bool)

(declare-fun res!628490 () Bool)

(assert (=> b!1392186 (=> (not res!628490) (not e!889151))))

(declare-fun call!93144 () Bool)

(assert (=> b!1392186 (= res!628490 (not call!93144))))

(declare-fun b!1392187 () Bool)

(declare-fun e!889150 () Bool)

(assert (=> b!1392187 (= e!889152 e!889150)))

(declare-fun c!229277 () Bool)

(assert (=> b!1392187 (= c!229277 ((_ is EmptyLang!3757) (derivativeStep!977 (regex!2443 (rule!4204 t2!34)) (head!2543 lt!462537))))))

(declare-fun b!1392188 () Bool)

(assert (=> b!1392188 (= e!889153 (nullable!1219 (derivativeStep!977 (regex!2443 (rule!4204 t2!34)) (head!2543 lt!462537))))))

(declare-fun b!1392189 () Bool)

(declare-fun res!628487 () Bool)

(declare-fun e!889147 () Bool)

(assert (=> b!1392189 (=> res!628487 e!889147)))

(assert (=> b!1392189 (= res!628487 (not ((_ is ElementMatch!3757) (derivativeStep!977 (regex!2443 (rule!4204 t2!34)) (head!2543 lt!462537)))))))

(assert (=> b!1392189 (= e!889150 e!889147)))

(declare-fun b!1392190 () Bool)

(declare-fun res!628489 () Bool)

(declare-fun e!889148 () Bool)

(assert (=> b!1392190 (=> res!628489 e!889148)))

(assert (=> b!1392190 (= res!628489 (not (isEmpty!8550 (tail!2020 (tail!2020 lt!462537)))))))

(declare-fun b!1392191 () Bool)

(declare-fun e!889149 () Bool)

(assert (=> b!1392191 (= e!889149 e!889148)))

(declare-fun res!628486 () Bool)

(assert (=> b!1392191 (=> res!628486 e!889148)))

(assert (=> b!1392191 (= res!628486 call!93144)))

(declare-fun b!1392192 () Bool)

(declare-fun res!628492 () Bool)

(assert (=> b!1392192 (=> res!628492 e!889147)))

(assert (=> b!1392192 (= res!628492 e!889151)))

(declare-fun res!628491 () Bool)

(assert (=> b!1392192 (=> (not res!628491) (not e!889151))))

(assert (=> b!1392192 (= res!628491 lt!463256)))

(declare-fun b!1392193 () Bool)

(assert (=> b!1392193 (= e!889150 (not lt!463256))))

(declare-fun bm!93139 () Bool)

(assert (=> bm!93139 (= call!93144 (isEmpty!8550 (tail!2020 lt!462537)))))

(declare-fun b!1392194 () Bool)

(assert (=> b!1392194 (= e!889152 (= lt!463256 call!93144))))

(declare-fun b!1392195 () Bool)

(assert (=> b!1392195 (= e!889148 (not (= (head!2543 (tail!2020 lt!462537)) (c!228749 (derivativeStep!977 (regex!2443 (rule!4204 t2!34)) (head!2543 lt!462537))))))))

(declare-fun b!1392196 () Bool)

(assert (=> b!1392196 (= e!889147 e!889149)))

(declare-fun res!628485 () Bool)

(assert (=> b!1392196 (=> (not res!628485) (not e!889149))))

(assert (=> b!1392196 (= res!628485 (not lt!463256))))

(declare-fun b!1392197 () Bool)

(assert (=> b!1392197 (= e!889153 (matchR!1748 (derivativeStep!977 (derivativeStep!977 (regex!2443 (rule!4204 t2!34)) (head!2543 lt!462537)) (head!2543 (tail!2020 lt!462537))) (tail!2020 (tail!2020 lt!462537))))))

(assert (= (and d!398386 c!229276) b!1392188))

(assert (= (and d!398386 (not c!229276)) b!1392197))

(assert (= (and d!398386 c!229278) b!1392194))

(assert (= (and d!398386 (not c!229278)) b!1392187))

(assert (= (and b!1392187 c!229277) b!1392193))

(assert (= (and b!1392187 (not c!229277)) b!1392189))

(assert (= (and b!1392189 (not res!628487)) b!1392192))

(assert (= (and b!1392192 res!628491) b!1392186))

(assert (= (and b!1392186 res!628490) b!1392185))

(assert (= (and b!1392185 res!628488) b!1392184))

(assert (= (and b!1392192 (not res!628492)) b!1392196))

(assert (= (and b!1392196 res!628485) b!1392191))

(assert (= (and b!1392191 (not res!628486)) b!1392190))

(assert (= (and b!1392190 (not res!628489)) b!1392195))

(assert (= (or b!1392194 b!1392186 b!1392191) bm!93139))

(assert (=> d!398386 m!1565819))

(assert (=> d!398386 m!1565821))

(assert (=> d!398386 m!1565823))

(declare-fun m!1567861 () Bool)

(assert (=> d!398386 m!1567861))

(assert (=> bm!93139 m!1565819))

(assert (=> bm!93139 m!1565821))

(assert (=> b!1392185 m!1565819))

(declare-fun m!1567865 () Bool)

(assert (=> b!1392185 m!1567865))

(assert (=> b!1392185 m!1567865))

(declare-fun m!1567867 () Bool)

(assert (=> b!1392185 m!1567867))

(assert (=> b!1392197 m!1565819))

(declare-fun m!1567869 () Bool)

(assert (=> b!1392197 m!1567869))

(assert (=> b!1392197 m!1565823))

(assert (=> b!1392197 m!1567869))

(declare-fun m!1567871 () Bool)

(assert (=> b!1392197 m!1567871))

(assert (=> b!1392197 m!1565819))

(assert (=> b!1392197 m!1567865))

(assert (=> b!1392197 m!1567871))

(assert (=> b!1392197 m!1567865))

(declare-fun m!1567875 () Bool)

(assert (=> b!1392197 m!1567875))

(assert (=> b!1392195 m!1565819))

(assert (=> b!1392195 m!1567869))

(assert (=> b!1392190 m!1565819))

(assert (=> b!1392190 m!1567865))

(assert (=> b!1392190 m!1567865))

(assert (=> b!1392190 m!1567867))

(assert (=> b!1392184 m!1565819))

(assert (=> b!1392184 m!1567869))

(assert (=> b!1392188 m!1565823))

(declare-fun m!1567879 () Bool)

(assert (=> b!1392188 m!1567879))

(assert (=> b!1390857 d!398386))

(declare-fun b!1392198 () Bool)

(declare-fun e!889155 () Regex!3757)

(declare-fun call!93148 () Regex!3757)

(assert (=> b!1392198 (= e!889155 (Concat!6291 call!93148 (regex!2443 (rule!4204 t2!34))))))

(declare-fun call!93147 () Regex!3757)

(declare-fun c!229280 () Bool)

(declare-fun bm!93140 () Bool)

(declare-fun c!229279 () Bool)

(declare-fun c!229283 () Bool)

(assert (=> bm!93140 (= call!93147 (derivativeStep!977 (ite c!229283 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (ite c!229279 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!229280 (regTwo!8026 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34)))))) (head!2543 lt!462537)))))

(declare-fun b!1392199 () Bool)

(assert (=> b!1392199 (= c!229283 ((_ is Union!3757) (regex!2443 (rule!4204 t2!34))))))

(declare-fun e!889154 () Regex!3757)

(declare-fun e!889156 () Regex!3757)

(assert (=> b!1392199 (= e!889154 e!889156)))

(declare-fun bm!93142 () Bool)

(assert (=> bm!93142 (= call!93148 call!93147)))

(declare-fun b!1392200 () Bool)

(declare-fun call!93145 () Regex!3757)

(declare-fun e!889158 () Regex!3757)

(declare-fun call!93146 () Regex!3757)

(assert (=> b!1392200 (= e!889158 (Union!3757 (Concat!6291 call!93146 (regTwo!8026 (regex!2443 (rule!4204 t2!34)))) call!93145))))

(declare-fun b!1392201 () Bool)

(assert (=> b!1392201 (= e!889156 e!889155)))

(assert (=> b!1392201 (= c!229279 ((_ is Star!3757) (regex!2443 (rule!4204 t2!34))))))

(declare-fun bm!93143 () Bool)

(assert (=> bm!93143 (= call!93145 call!93148)))

(declare-fun d!398390 () Bool)

(declare-fun lt!463257 () Regex!3757)

(assert (=> d!398390 (validRegex!1639 lt!463257)))

(declare-fun e!889157 () Regex!3757)

(assert (=> d!398390 (= lt!463257 e!889157)))

(declare-fun c!229282 () Bool)

(assert (=> d!398390 (= c!229282 (or ((_ is EmptyExpr!3757) (regex!2443 (rule!4204 t2!34))) ((_ is EmptyLang!3757) (regex!2443 (rule!4204 t2!34)))))))

(assert (=> d!398390 (validRegex!1639 (regex!2443 (rule!4204 t2!34)))))

(assert (=> d!398390 (= (derivativeStep!977 (regex!2443 (rule!4204 t2!34)) (head!2543 lt!462537)) lt!463257)))

(declare-fun bm!93141 () Bool)

(assert (=> bm!93141 (= call!93146 (derivativeStep!977 (ite c!229283 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34)))) (head!2543 lt!462537)))))

(declare-fun b!1392202 () Bool)

(assert (=> b!1392202 (= e!889157 EmptyLang!3757)))

(declare-fun b!1392203 () Bool)

(assert (=> b!1392203 (= e!889156 (Union!3757 call!93146 call!93147))))

(declare-fun b!1392204 () Bool)

(assert (=> b!1392204 (= e!889158 (Union!3757 (Concat!6291 call!93145 (regTwo!8026 (regex!2443 (rule!4204 t2!34)))) EmptyLang!3757))))

(declare-fun b!1392205 () Bool)

(assert (=> b!1392205 (= e!889157 e!889154)))

(declare-fun c!229281 () Bool)

(assert (=> b!1392205 (= c!229281 ((_ is ElementMatch!3757) (regex!2443 (rule!4204 t2!34))))))

(declare-fun b!1392206 () Bool)

(assert (=> b!1392206 (= c!229280 (nullable!1219 (regOne!8026 (regex!2443 (rule!4204 t2!34)))))))

(assert (=> b!1392206 (= e!889155 e!889158)))

(declare-fun b!1392207 () Bool)

(assert (=> b!1392207 (= e!889154 (ite (= (head!2543 lt!462537) (c!228749 (regex!2443 (rule!4204 t2!34)))) EmptyExpr!3757 EmptyLang!3757))))

(assert (= (and d!398390 c!229282) b!1392202))

(assert (= (and d!398390 (not c!229282)) b!1392205))

(assert (= (and b!1392205 c!229281) b!1392207))

(assert (= (and b!1392205 (not c!229281)) b!1392199))

(assert (= (and b!1392199 c!229283) b!1392203))

(assert (= (and b!1392199 (not c!229283)) b!1392201))

(assert (= (and b!1392201 c!229279) b!1392198))

(assert (= (and b!1392201 (not c!229279)) b!1392206))

(assert (= (and b!1392206 c!229280) b!1392200))

(assert (= (and b!1392206 (not c!229280)) b!1392204))

(assert (= (or b!1392200 b!1392204) bm!93143))

(assert (= (or b!1392198 bm!93143) bm!93142))

(assert (= (or b!1392203 b!1392200) bm!93141))

(assert (= (or b!1392203 bm!93142) bm!93140))

(assert (=> bm!93140 m!1564907))

(declare-fun m!1567887 () Bool)

(assert (=> bm!93140 m!1567887))

(declare-fun m!1567889 () Bool)

(assert (=> d!398390 m!1567889))

(assert (=> d!398390 m!1564905))

(assert (=> bm!93141 m!1564907))

(declare-fun m!1567891 () Bool)

(assert (=> bm!93141 m!1567891))

(declare-fun m!1567893 () Bool)

(assert (=> b!1392206 m!1567893))

(assert (=> b!1390857 d!398390))

(assert (=> b!1390857 d!397516))

(assert (=> b!1390857 d!397864))

(declare-fun d!398396 () Bool)

(declare-fun lt!463267 () Int)

(assert (=> d!398396 (>= lt!463267 0)))

(declare-fun e!889170 () Int)

(assert (=> d!398396 (= lt!463267 e!889170)))

(declare-fun c!229289 () Bool)

(assert (=> d!398396 (= c!229289 ((_ is Nil!14109) (_1!7743 lt!462620)))))

(assert (=> d!398396 (= (size!11606 (_1!7743 lt!462620)) lt!463267)))

(declare-fun b!1392229 () Bool)

(assert (=> b!1392229 (= e!889170 0)))

(declare-fun b!1392230 () Bool)

(assert (=> b!1392230 (= e!889170 (+ 1 (size!11606 (t!122414 (_1!7743 lt!462620)))))))

(assert (= (and d!398396 c!229289) b!1392229))

(assert (= (and d!398396 (not c!229289)) b!1392230))

(declare-fun m!1567907 () Bool)

(assert (=> b!1392230 m!1567907))

(assert (=> d!397436 d!398396))

(declare-fun d!398400 () Bool)

(declare-fun e!889173 () Bool)

(assert (=> d!398400 e!889173))

(declare-fun res!628508 () Bool)

(assert (=> d!398400 (=> res!628508 e!889173)))

(declare-fun lt!463270 () Option!2704)

(assert (=> d!398400 (= res!628508 (isEmpty!8554 lt!463270))))

(declare-fun e!889171 () Option!2704)

(assert (=> d!398400 (= lt!463270 e!889171)))

(declare-fun c!229290 () Bool)

(assert (=> d!398400 (= c!229290 (and ((_ is Cons!14108) rules!2550) ((_ is Nil!14108) (t!122413 rules!2550))))))

(declare-fun lt!463269 () Unit!20367)

(declare-fun lt!463268 () Unit!20367)

(assert (=> d!398400 (= lt!463269 lt!463268)))

(assert (=> d!398400 (isPrefix!1145 (list!5477 lt!462535) (list!5477 lt!462535))))

(assert (=> d!398400 (= lt!463268 (lemmaIsPrefixRefl!804 (list!5477 lt!462535) (list!5477 lt!462535)))))

(assert (=> d!398400 (rulesValidInductive!787 thiss!19762 rules!2550)))

(assert (=> d!398400 (= (maxPrefix!1112 thiss!19762 rules!2550 (list!5477 lt!462535)) lt!463270)))

(declare-fun b!1392231 () Bool)

(declare-fun e!889172 () Bool)

(assert (=> b!1392231 (= e!889172 (contains!2709 rules!2550 (rule!4204 (_1!7741 (get!4379 lt!463270)))))))

(declare-fun b!1392232 () Bool)

(declare-fun res!628504 () Bool)

(assert (=> b!1392232 (=> (not res!628504) (not e!889172))))

(assert (=> b!1392232 (= res!628504 (= (++!3664 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!463270)))) (_2!7741 (get!4379 lt!463270))) (list!5477 lt!462535)))))

(declare-fun b!1392233 () Bool)

(declare-fun res!628506 () Bool)

(assert (=> b!1392233 (=> (not res!628506) (not e!889172))))

(assert (=> b!1392233 (= res!628506 (= (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!463270)))) (originalCharacters!3305 (_1!7741 (get!4379 lt!463270)))))))

(declare-fun call!93150 () Option!2704)

(declare-fun bm!93145 () Bool)

(assert (=> bm!93145 (= call!93150 (maxPrefixOneRule!630 thiss!19762 (h!19509 rules!2550) (list!5477 lt!462535)))))

(declare-fun b!1392234 () Bool)

(declare-fun res!628507 () Bool)

(assert (=> b!1392234 (=> (not res!628507) (not e!889172))))

(assert (=> b!1392234 (= res!628507 (matchR!1748 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!463270)))) (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!463270))))))))

(declare-fun b!1392235 () Bool)

(assert (=> b!1392235 (= e!889171 call!93150)))

(declare-fun b!1392236 () Bool)

(declare-fun res!628510 () Bool)

(assert (=> b!1392236 (=> (not res!628510) (not e!889172))))

(assert (=> b!1392236 (= res!628510 (< (size!11605 (_2!7741 (get!4379 lt!463270))) (size!11605 (list!5477 lt!462535))))))

(declare-fun b!1392237 () Bool)

(declare-fun res!628509 () Bool)

(assert (=> b!1392237 (=> (not res!628509) (not e!889172))))

(assert (=> b!1392237 (= res!628509 (= (value!79258 (_1!7741 (get!4379 lt!463270))) (apply!3551 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!463270)))) (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!463270)))))))))

(declare-fun b!1392238 () Bool)

(assert (=> b!1392238 (= e!889173 e!889172)))

(declare-fun res!628505 () Bool)

(assert (=> b!1392238 (=> (not res!628505) (not e!889172))))

(assert (=> b!1392238 (= res!628505 (isDefined!2232 lt!463270))))

(declare-fun b!1392239 () Bool)

(declare-fun lt!463272 () Option!2704)

(declare-fun lt!463271 () Option!2704)

(assert (=> b!1392239 (= e!889171 (ite (and ((_ is None!2703) lt!463272) ((_ is None!2703) lt!463271)) None!2703 (ite ((_ is None!2703) lt!463271) lt!463272 (ite ((_ is None!2703) lt!463272) lt!463271 (ite (>= (size!11595 (_1!7741 (v!21586 lt!463272))) (size!11595 (_1!7741 (v!21586 lt!463271)))) lt!463272 lt!463271)))))))

(assert (=> b!1392239 (= lt!463272 call!93150)))

(assert (=> b!1392239 (= lt!463271 (maxPrefix!1112 thiss!19762 (t!122413 rules!2550) (list!5477 lt!462535)))))

(assert (= (and d!398400 c!229290) b!1392235))

(assert (= (and d!398400 (not c!229290)) b!1392239))

(assert (= (or b!1392235 b!1392239) bm!93145))

(assert (= (and d!398400 (not res!628508)) b!1392238))

(assert (= (and b!1392238 res!628505) b!1392233))

(assert (= (and b!1392233 res!628506) b!1392236))

(assert (= (and b!1392236 res!628510) b!1392232))

(assert (= (and b!1392232 res!628504) b!1392237))

(assert (= (and b!1392237 res!628509) b!1392234))

(assert (= (and b!1392234 res!628507) b!1392231))

(assert (=> b!1392239 m!1564943))

(declare-fun m!1567939 () Bool)

(assert (=> b!1392239 m!1567939))

(declare-fun m!1567941 () Bool)

(assert (=> b!1392237 m!1567941))

(declare-fun m!1567943 () Bool)

(assert (=> b!1392237 m!1567943))

(assert (=> b!1392237 m!1567943))

(declare-fun m!1567945 () Bool)

(assert (=> b!1392237 m!1567945))

(assert (=> b!1392233 m!1567941))

(declare-fun m!1567947 () Bool)

(assert (=> b!1392233 m!1567947))

(assert (=> b!1392233 m!1567947))

(declare-fun m!1567949 () Bool)

(assert (=> b!1392233 m!1567949))

(assert (=> bm!93145 m!1564943))

(declare-fun m!1567951 () Bool)

(assert (=> bm!93145 m!1567951))

(assert (=> b!1392231 m!1567941))

(declare-fun m!1567953 () Bool)

(assert (=> b!1392231 m!1567953))

(declare-fun m!1567955 () Bool)

(assert (=> d!398400 m!1567955))

(assert (=> d!398400 m!1564943))

(assert (=> d!398400 m!1564943))

(declare-fun m!1567957 () Bool)

(assert (=> d!398400 m!1567957))

(assert (=> d!398400 m!1564943))

(assert (=> d!398400 m!1564943))

(declare-fun m!1567959 () Bool)

(assert (=> d!398400 m!1567959))

(assert (=> d!398400 m!1565311))

(assert (=> b!1392236 m!1567941))

(declare-fun m!1567961 () Bool)

(assert (=> b!1392236 m!1567961))

(assert (=> b!1392236 m!1564943))

(assert (=> b!1392236 m!1565231))

(assert (=> b!1392234 m!1567941))

(assert (=> b!1392234 m!1567947))

(assert (=> b!1392234 m!1567947))

(assert (=> b!1392234 m!1567949))

(assert (=> b!1392234 m!1567949))

(declare-fun m!1567963 () Bool)

(assert (=> b!1392234 m!1567963))

(declare-fun m!1567965 () Bool)

(assert (=> b!1392238 m!1567965))

(assert (=> b!1392232 m!1567941))

(assert (=> b!1392232 m!1567947))

(assert (=> b!1392232 m!1567947))

(assert (=> b!1392232 m!1567949))

(assert (=> b!1392232 m!1567949))

(declare-fun m!1567967 () Bool)

(assert (=> b!1392232 m!1567967))

(assert (=> d!397436 d!398400))

(assert (=> d!397654 d!397706))

(declare-fun d!398408 () Bool)

(assert (=> d!398408 (= (list!5477 (_2!7742 lt!462751)) (list!5481 (c!228748 (_2!7742 lt!462751))))))

(declare-fun bs!337627 () Bool)

(assert (= bs!337627 d!398408))

(declare-fun m!1567969 () Bool)

(assert (=> bs!337627 m!1567969))

(assert (=> b!1390833 d!398408))

(assert (=> b!1390833 d!397436))

(assert (=> b!1390833 d!397440))

(assert (=> b!1390682 d!397754))

(declare-fun d!398410 () Bool)

(declare-fun dynLambda!6504 (Int BalanceConc!9232) TokenValue!2533)

(assert (=> d!398410 (= (apply!3551 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))) (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!462705))))) (dynLambda!6504 (toValue!3730 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705))))) (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!462705))))))))

(declare-fun b_lambda!43403 () Bool)

(assert (=> (not b_lambda!43403) (not d!398410)))

(declare-fun t!122518 () Bool)

(declare-fun tb!72881 () Bool)

(assert (=> (and b!1390097 (= (toValue!3730 (transformation!2443 (h!19509 rules!2550))) (toValue!3730 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))))) t!122518) tb!72881))

(declare-fun result!88560 () Bool)

(assert (=> tb!72881 (= result!88560 (inv!21 (dynLambda!6504 (toValue!3730 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705))))) (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!462705)))))))))

(declare-fun m!1567971 () Bool)

(assert (=> tb!72881 m!1567971))

(assert (=> d!398410 t!122518))

(declare-fun b_and!93239 () Bool)

(assert (= b_and!93123 (and (=> t!122518 result!88560) b_and!93239)))

(declare-fun tb!72883 () Bool)

(declare-fun t!122521 () Bool)

(assert (=> (and b!1390083 (= (toValue!3730 (transformation!2443 (rule!4204 t1!34))) (toValue!3730 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))))) t!122521) tb!72883))

(declare-fun result!88564 () Bool)

(assert (= result!88564 result!88560))

(assert (=> d!398410 t!122521))

(declare-fun b_and!93241 () Bool)

(assert (= b_and!93127 (and (=> t!122521 result!88564) b_and!93241)))

(declare-fun tb!72885 () Bool)

(declare-fun t!122523 () Bool)

(assert (=> (and b!1390092 (= (toValue!3730 (transformation!2443 (rule!4204 t2!34))) (toValue!3730 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))))) t!122523) tb!72885))

(declare-fun result!88566 () Bool)

(assert (= result!88566 result!88560))

(assert (=> d!398410 t!122523))

(declare-fun b_and!93243 () Bool)

(assert (= b_and!93131 (and (=> t!122523 result!88566) b_and!93243)))

(declare-fun t!122525 () Bool)

(declare-fun tb!72887 () Bool)

(assert (=> (and b!1390954 (= (toValue!3730 (transformation!2443 (h!19509 (t!122413 rules!2550)))) (toValue!3730 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))))) t!122525) tb!72887))

(declare-fun result!88568 () Bool)

(assert (= result!88568 result!88560))

(assert (=> d!398410 t!122525))

(declare-fun b_and!93245 () Bool)

(assert (= b_and!93187 (and (=> t!122525 result!88568) b_and!93245)))

(assert (=> d!398410 m!1565597))

(declare-fun m!1567973 () Bool)

(assert (=> d!398410 m!1567973))

(assert (=> b!1390682 d!398410))

(declare-fun d!398412 () Bool)

(declare-fun fromListB!726 (List!14173) BalanceConc!9232)

(assert (=> d!398412 (= (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!462705)))) (fromListB!726 (originalCharacters!3305 (_1!7741 (get!4379 lt!462705)))))))

(declare-fun bs!337628 () Bool)

(assert (= bs!337628 d!398412))

(declare-fun m!1567975 () Bool)

(assert (=> bs!337628 m!1567975))

(assert (=> b!1390682 d!398412))

(declare-fun d!398414 () Bool)

(assert (=> d!398414 (= (isDefined!2232 lt!462639) (not (isEmpty!8554 lt!462639)))))

(declare-fun bs!337629 () Bool)

(assert (= bs!337629 d!398414))

(assert (=> bs!337629 m!1565305))

(assert (=> b!1390434 d!398414))

(declare-fun d!398416 () Bool)

(assert (=> d!398416 (= (list!5477 lt!462754) (list!5481 (c!228748 lt!462754)))))

(declare-fun bs!337630 () Bool)

(assert (= bs!337630 d!398416))

(declare-fun m!1567977 () Bool)

(assert (=> bs!337630 m!1567977))

(assert (=> d!397606 d!398416))

(declare-fun d!398418 () Bool)

(declare-fun c!229292 () Bool)

(assert (=> d!398418 (= c!229292 ((_ is Cons!14109) (list!5478 (singletonSeq!1092 t1!34))))))

(declare-fun e!889184 () List!14173)

(assert (=> d!398418 (= (printList!626 thiss!19762 (list!5478 (singletonSeq!1092 t1!34))) e!889184)))

(declare-fun b!1392262 () Bool)

(assert (=> b!1392262 (= e!889184 (++!3664 (list!5477 (charsOf!1415 (h!19510 (list!5478 (singletonSeq!1092 t1!34))))) (printList!626 thiss!19762 (t!122414 (list!5478 (singletonSeq!1092 t1!34))))))))

(declare-fun b!1392263 () Bool)

(assert (=> b!1392263 (= e!889184 Nil!14107)))

(assert (= (and d!398418 c!229292) b!1392262))

(assert (= (and d!398418 (not c!229292)) b!1392263))

(declare-fun m!1567981 () Bool)

(assert (=> b!1392262 m!1567981))

(assert (=> b!1392262 m!1567981))

(declare-fun m!1567989 () Bool)

(assert (=> b!1392262 m!1567989))

(declare-fun m!1567993 () Bool)

(assert (=> b!1392262 m!1567993))

(assert (=> b!1392262 m!1567989))

(assert (=> b!1392262 m!1567993))

(declare-fun m!1567997 () Bool)

(assert (=> b!1392262 m!1567997))

(assert (=> d!397606 d!398418))

(assert (=> d!397606 d!397966))

(declare-fun d!398422 () Bool)

(declare-fun lt!463277 () BalanceConc!9232)

(assert (=> d!398422 (= (list!5477 lt!463277) (printListTailRec!257 thiss!19762 (dropList!424 (singletonSeq!1092 t1!34) 0) (list!5477 (BalanceConc!9233 Empty!4646))))))

(declare-fun e!889185 () BalanceConc!9232)

(assert (=> d!398422 (= lt!463277 e!889185)))

(declare-fun c!229293 () Bool)

(assert (=> d!398422 (= c!229293 (>= 0 (size!11607 (singletonSeq!1092 t1!34))))))

(declare-fun e!889186 () Bool)

(assert (=> d!398422 e!889186))

(declare-fun res!628529 () Bool)

(assert (=> d!398422 (=> (not res!628529) (not e!889186))))

(assert (=> d!398422 (= res!628529 (>= 0 0))))

(assert (=> d!398422 (= (printTailRec!608 thiss!19762 (singletonSeq!1092 t1!34) 0 (BalanceConc!9233 Empty!4646)) lt!463277)))

(declare-fun b!1392264 () Bool)

(assert (=> b!1392264 (= e!889186 (<= 0 (size!11607 (singletonSeq!1092 t1!34))))))

(declare-fun b!1392265 () Bool)

(assert (=> b!1392265 (= e!889185 (BalanceConc!9233 Empty!4646))))

(declare-fun b!1392266 () Bool)

(assert (=> b!1392266 (= e!889185 (printTailRec!608 thiss!19762 (singletonSeq!1092 t1!34) (+ 0 1) (++!3665 (BalanceConc!9233 Empty!4646) (charsOf!1415 (apply!3552 (singletonSeq!1092 t1!34) 0)))))))

(declare-fun lt!463275 () List!14175)

(assert (=> b!1392266 (= lt!463275 (list!5478 (singletonSeq!1092 t1!34)))))

(declare-fun lt!463280 () Unit!20367)

(assert (=> b!1392266 (= lt!463280 (lemmaDropApply!448 lt!463275 0))))

(assert (=> b!1392266 (= (head!2549 (drop!693 lt!463275 0)) (apply!3559 lt!463275 0))))

(declare-fun lt!463279 () Unit!20367)

(assert (=> b!1392266 (= lt!463279 lt!463280)))

(declare-fun lt!463276 () List!14175)

(assert (=> b!1392266 (= lt!463276 (list!5478 (singletonSeq!1092 t1!34)))))

(declare-fun lt!463274 () Unit!20367)

(assert (=> b!1392266 (= lt!463274 (lemmaDropTail!428 lt!463276 0))))

(assert (=> b!1392266 (= (tail!2023 (drop!693 lt!463276 0)) (drop!693 lt!463276 (+ 0 1)))))

(declare-fun lt!463278 () Unit!20367)

(assert (=> b!1392266 (= lt!463278 lt!463274)))

(assert (= (and d!398422 res!628529) b!1392264))

(assert (= (and d!398422 c!229293) b!1392265))

(assert (= (and d!398422 (not c!229293)) b!1392266))

(assert (=> d!398422 m!1564881))

(declare-fun m!1568009 () Bool)

(assert (=> d!398422 m!1568009))

(assert (=> d!398422 m!1568009))

(assert (=> d!398422 m!1567431))

(declare-fun m!1568015 () Bool)

(assert (=> d!398422 m!1568015))

(assert (=> d!398422 m!1564881))

(declare-fun m!1568019 () Bool)

(assert (=> d!398422 m!1568019))

(declare-fun m!1568021 () Bool)

(assert (=> d!398422 m!1568021))

(assert (=> d!398422 m!1567431))

(assert (=> b!1392264 m!1564881))

(assert (=> b!1392264 m!1568019))

(assert (=> b!1392266 m!1564881))

(declare-fun m!1568027 () Bool)

(assert (=> b!1392266 m!1568027))

(declare-fun m!1568029 () Bool)

(assert (=> b!1392266 m!1568029))

(declare-fun m!1568031 () Bool)

(assert (=> b!1392266 m!1568031))

(declare-fun m!1568035 () Bool)

(assert (=> b!1392266 m!1568035))

(declare-fun m!1568039 () Bool)

(assert (=> b!1392266 m!1568039))

(declare-fun m!1568041 () Bool)

(assert (=> b!1392266 m!1568041))

(assert (=> b!1392266 m!1564881))

(assert (=> b!1392266 m!1565441))

(declare-fun m!1568043 () Bool)

(assert (=> b!1392266 m!1568043))

(declare-fun m!1568045 () Bool)

(assert (=> b!1392266 m!1568045))

(assert (=> b!1392266 m!1568027))

(declare-fun m!1568047 () Bool)

(assert (=> b!1392266 m!1568047))

(assert (=> b!1392266 m!1568047))

(declare-fun m!1568049 () Bool)

(assert (=> b!1392266 m!1568049))

(assert (=> b!1392266 m!1568031))

(declare-fun m!1568051 () Bool)

(assert (=> b!1392266 m!1568051))

(assert (=> b!1392266 m!1564881))

(assert (=> b!1392266 m!1568049))

(declare-fun m!1568053 () Bool)

(assert (=> b!1392266 m!1568053))

(assert (=> b!1392266 m!1568039))

(assert (=> d!397606 d!398422))

(declare-fun d!398428 () Bool)

(declare-fun lt!463283 () Bool)

(assert (=> d!398428 (= lt!463283 (select (content!2079 (t!122412 lt!462527)) lt!462529))))

(declare-fun e!889192 () Bool)

(assert (=> d!398428 (= lt!463283 e!889192)))

(declare-fun res!628535 () Bool)

(assert (=> d!398428 (=> (not res!628535) (not e!889192))))

(assert (=> d!398428 (= res!628535 ((_ is Cons!14107) (t!122412 lt!462527)))))

(assert (=> d!398428 (= (contains!2710 (t!122412 lt!462527) lt!462529) lt!463283)))

(declare-fun b!1392276 () Bool)

(declare-fun e!889193 () Bool)

(assert (=> b!1392276 (= e!889192 e!889193)))

(declare-fun res!628536 () Bool)

(assert (=> b!1392276 (=> res!628536 e!889193)))

(assert (=> b!1392276 (= res!628536 (= (h!19508 (t!122412 lt!462527)) lt!462529))))

(declare-fun b!1392277 () Bool)

(assert (=> b!1392277 (= e!889193 (contains!2710 (t!122412 (t!122412 lt!462527)) lt!462529))))

(assert (= (and d!398428 res!628535) b!1392276))

(assert (= (and b!1392276 (not res!628536)) b!1392277))

(assert (=> d!398428 m!1566201))

(declare-fun m!1568063 () Bool)

(assert (=> d!398428 m!1568063))

(declare-fun m!1568065 () Bool)

(assert (=> b!1392277 m!1568065))

(assert (=> b!1390698 d!398428))

(declare-fun d!398432 () Bool)

(assert (=> d!398432 (= (isEmpty!8550 (originalCharacters!3305 t2!34)) ((_ is Nil!14107) (originalCharacters!3305 t2!34)))))

(assert (=> d!397428 d!398432))

(declare-fun b!1392293 () Bool)

(declare-fun e!889201 () List!14175)

(declare-fun e!889202 () List!14175)

(assert (=> b!1392293 (= e!889201 e!889202)))

(declare-fun c!229300 () Bool)

(assert (=> b!1392293 (= c!229300 ((_ is Leaf!7065) (c!228750 (_1!7742 lt!462515))))))

(declare-fun b!1392294 () Bool)

(assert (=> b!1392294 (= e!889202 (list!5486 (xs!7374 (c!228750 (_1!7742 lt!462515)))))))

(declare-fun b!1392292 () Bool)

(assert (=> b!1392292 (= e!889201 Nil!14109)))

(declare-fun d!398434 () Bool)

(declare-fun c!229299 () Bool)

(assert (=> d!398434 (= c!229299 ((_ is Empty!4647) (c!228750 (_1!7742 lt!462515))))))

(assert (=> d!398434 (= (list!5482 (c!228750 (_1!7742 lt!462515))) e!889201)))

(declare-fun b!1392295 () Bool)

(assert (=> b!1392295 (= e!889202 (++!3668 (list!5482 (left!12054 (c!228750 (_1!7742 lt!462515)))) (list!5482 (right!12384 (c!228750 (_1!7742 lt!462515))))))))

(assert (= (and d!398434 c!229299) b!1392292))

(assert (= (and d!398434 (not c!229299)) b!1392293))

(assert (= (and b!1392293 c!229300) b!1392294))

(assert (= (and b!1392293 (not c!229300)) b!1392295))

(declare-fun m!1568067 () Bool)

(assert (=> b!1392294 m!1568067))

(declare-fun m!1568069 () Bool)

(assert (=> b!1392295 m!1568069))

(declare-fun m!1568071 () Bool)

(assert (=> b!1392295 m!1568071))

(assert (=> b!1392295 m!1568069))

(assert (=> b!1392295 m!1568071))

(declare-fun m!1568073 () Bool)

(assert (=> b!1392295 m!1568073))

(assert (=> d!397568 d!398434))

(declare-fun lt!463285 () Bool)

(declare-fun d!398436 () Bool)

(assert (=> d!398436 (= lt!463285 (select (content!2078 (t!122415 (map!3125 rules!2550 lambda!60110))) lt!462519))))

(declare-fun e!889203 () Bool)

(assert (=> d!398436 (= lt!463285 e!889203)))

(declare-fun res!628545 () Bool)

(assert (=> d!398436 (=> (not res!628545) (not e!889203))))

(assert (=> d!398436 (= res!628545 ((_ is Cons!14110) (t!122415 (map!3125 rules!2550 lambda!60110))))))

(assert (=> d!398436 (= (contains!2711 (t!122415 (map!3125 rules!2550 lambda!60110)) lt!462519) lt!463285)))

(declare-fun b!1392296 () Bool)

(declare-fun e!889204 () Bool)

(assert (=> b!1392296 (= e!889203 e!889204)))

(declare-fun res!628546 () Bool)

(assert (=> b!1392296 (=> res!628546 e!889204)))

(assert (=> b!1392296 (= res!628546 (= (h!19511 (t!122415 (map!3125 rules!2550 lambda!60110))) lt!462519))))

(declare-fun b!1392297 () Bool)

(assert (=> b!1392297 (= e!889204 (contains!2711 (t!122415 (t!122415 (map!3125 rules!2550 lambda!60110))) lt!462519))))

(assert (= (and d!398436 res!628545) b!1392296))

(assert (= (and b!1392296 (not res!628546)) b!1392297))

(assert (=> d!398436 m!1566453))

(declare-fun m!1568079 () Bool)

(assert (=> d!398436 m!1568079))

(declare-fun m!1568081 () Bool)

(assert (=> b!1392297 m!1568081))

(assert (=> b!1390200 d!398436))

(declare-fun d!398438 () Bool)

(assert (=> d!398438 (= (isEmpty!8554 lt!462705) (not ((_ is Some!2703) lt!462705)))))

(assert (=> d!397552 d!398438))

(declare-fun d!398444 () Bool)

(declare-fun e!889210 () Bool)

(assert (=> d!398444 e!889210))

(declare-fun res!628553 () Bool)

(assert (=> d!398444 (=> res!628553 e!889210)))

(declare-fun lt!463288 () Bool)

(assert (=> d!398444 (= res!628553 (not lt!463288))))

(declare-fun e!889209 () Bool)

(assert (=> d!398444 (= lt!463288 e!889209)))

(declare-fun res!628552 () Bool)

(assert (=> d!398444 (=> res!628552 e!889209)))

(assert (=> d!398444 (= res!628552 ((_ is Nil!14107) lt!462537))))

(assert (=> d!398444 (= (isPrefix!1145 lt!462537 lt!462537) lt!463288)))

(declare-fun b!1392307 () Bool)

(assert (=> b!1392307 (= e!889210 (>= (size!11605 lt!462537) (size!11605 lt!462537)))))

(declare-fun b!1392304 () Bool)

(declare-fun e!889211 () Bool)

(assert (=> b!1392304 (= e!889209 e!889211)))

(declare-fun res!628554 () Bool)

(assert (=> b!1392304 (=> (not res!628554) (not e!889211))))

(assert (=> b!1392304 (= res!628554 (not ((_ is Nil!14107) lt!462537)))))

(declare-fun b!1392305 () Bool)

(declare-fun res!628551 () Bool)

(assert (=> b!1392305 (=> (not res!628551) (not e!889211))))

(assert (=> b!1392305 (= res!628551 (= (head!2543 lt!462537) (head!2543 lt!462537)))))

(declare-fun b!1392306 () Bool)

(assert (=> b!1392306 (= e!889211 (isPrefix!1145 (tail!2020 lt!462537) (tail!2020 lt!462537)))))

(assert (= (and d!398444 (not res!628552)) b!1392304))

(assert (= (and b!1392304 res!628554) b!1392305))

(assert (= (and b!1392305 res!628551) b!1392306))

(assert (= (and d!398444 (not res!628553)) b!1392307))

(assert (=> b!1392307 m!1565617))

(assert (=> b!1392307 m!1565617))

(assert (=> b!1392305 m!1564907))

(assert (=> b!1392305 m!1564907))

(assert (=> b!1392306 m!1565819))

(assert (=> b!1392306 m!1565819))

(assert (=> b!1392306 m!1565819))

(assert (=> b!1392306 m!1565819))

(declare-fun m!1568103 () Bool)

(assert (=> b!1392306 m!1568103))

(assert (=> d!397552 d!398444))

(declare-fun d!398450 () Bool)

(assert (=> d!398450 (isPrefix!1145 lt!462537 lt!462537)))

(declare-fun lt!463294 () Unit!20367)

(declare-fun choose!8561 (List!14173 List!14173) Unit!20367)

(assert (=> d!398450 (= lt!463294 (choose!8561 lt!462537 lt!462537))))

(assert (=> d!398450 (= (lemmaIsPrefixRefl!804 lt!462537 lt!462537) lt!463294)))

(declare-fun bs!337634 () Bool)

(assert (= bs!337634 d!398450))

(assert (=> bs!337634 m!1565611))

(declare-fun m!1568117 () Bool)

(assert (=> bs!337634 m!1568117))

(assert (=> d!397552 d!398450))

(declare-fun bs!337638 () Bool)

(declare-fun d!398462 () Bool)

(assert (= bs!337638 (and d!398462 d!398376)))

(declare-fun lambda!60223 () Int)

(assert (=> bs!337638 (= lambda!60223 lambda!60217)))

(declare-fun bs!337639 () Bool)

(assert (= bs!337639 (and d!398462 b!1390077)))

(assert (=> bs!337639 (= lambda!60223 lambda!60113)))

(declare-fun bs!337640 () Bool)

(assert (= bs!337640 (and d!398462 d!397366)))

(assert (=> bs!337640 (not (= lambda!60223 lambda!60129))))

(declare-fun bs!337641 () Bool)

(assert (= bs!337641 (and d!398462 b!1390084)))

(assert (=> bs!337641 (not (= lambda!60223 lambda!60112))))

(declare-fun bs!337642 () Bool)

(assert (= bs!337642 (and d!398462 d!397362)))

(assert (=> bs!337642 (not (= lambda!60223 lambda!60119))))

(assert (=> d!398462 true))

(declare-fun lt!463299 () Bool)

(assert (=> d!398462 (= lt!463299 (forall!3434 rules!2550 lambda!60223))))

(declare-fun e!889221 () Bool)

(assert (=> d!398462 (= lt!463299 e!889221)))

(declare-fun res!628565 () Bool)

(assert (=> d!398462 (=> res!628565 e!889221)))

(assert (=> d!398462 (= res!628565 (not ((_ is Cons!14108) rules!2550)))))

(assert (=> d!398462 (= (rulesValidInductive!787 thiss!19762 rules!2550) lt!463299)))

(declare-fun b!1392317 () Bool)

(declare-fun e!889220 () Bool)

(assert (=> b!1392317 (= e!889221 e!889220)))

(declare-fun res!628564 () Bool)

(assert (=> b!1392317 (=> (not res!628564) (not e!889220))))

(assert (=> b!1392317 (= res!628564 (ruleValid!606 thiss!19762 (h!19509 rules!2550)))))

(declare-fun b!1392318 () Bool)

(assert (=> b!1392318 (= e!889220 (rulesValidInductive!787 thiss!19762 (t!122413 rules!2550)))))

(assert (= (and d!398462 (not res!628565)) b!1392317))

(assert (= (and b!1392317 res!628564) b!1392318))

(declare-fun m!1568127 () Bool)

(assert (=> d!398462 m!1568127))

(assert (=> b!1392317 m!1566623))

(assert (=> b!1392318 m!1566087))

(assert (=> d!397552 d!398462))

(declare-fun d!398470 () Bool)

(declare-fun res!628566 () Bool)

(declare-fun e!889222 () Bool)

(assert (=> d!398470 (=> res!628566 e!889222)))

(assert (=> d!398470 (= res!628566 ((_ is Nil!14110) lt!462531))))

(assert (=> d!398470 (= (forall!3435 lt!462531 lambda!60132) e!889222)))

(declare-fun b!1392319 () Bool)

(declare-fun e!889223 () Bool)

(assert (=> b!1392319 (= e!889222 e!889223)))

(declare-fun res!628567 () Bool)

(assert (=> b!1392319 (=> (not res!628567) (not e!889223))))

(assert (=> b!1392319 (= res!628567 (dynLambda!6486 lambda!60132 (h!19511 lt!462531)))))

(declare-fun b!1392320 () Bool)

(assert (=> b!1392320 (= e!889223 (forall!3435 (t!122415 lt!462531) lambda!60132))))

(assert (= (and d!398470 (not res!628566)) b!1392319))

(assert (= (and b!1392319 res!628567) b!1392320))

(declare-fun b_lambda!43405 () Bool)

(assert (=> (not b_lambda!43405) (not b!1392319)))

(declare-fun m!1568129 () Bool)

(assert (=> b!1392319 m!1568129))

(declare-fun m!1568131 () Bool)

(assert (=> b!1392320 m!1568131))

(assert (=> d!397416 d!398470))

(declare-fun d!398472 () Bool)

(assert (=> d!398472 (= (isEmpty!8550 (list!5477 (_2!7742 lt!462510))) ((_ is Nil!14107) (list!5477 (_2!7742 lt!462510))))))

(assert (=> d!397522 d!398472))

(declare-fun d!398474 () Bool)

(assert (=> d!398474 (= (list!5477 (_2!7742 lt!462510)) (list!5481 (c!228748 (_2!7742 lt!462510))))))

(declare-fun bs!337643 () Bool)

(assert (= bs!337643 d!398474))

(declare-fun m!1568133 () Bool)

(assert (=> bs!337643 m!1568133))

(assert (=> d!397522 d!398474))

(declare-fun d!398476 () Bool)

(declare-fun lt!463300 () Bool)

(assert (=> d!398476 (= lt!463300 (isEmpty!8550 (list!5481 (c!228748 (_2!7742 lt!462510)))))))

(assert (=> d!398476 (= lt!463300 (= (size!11608 (c!228748 (_2!7742 lt!462510))) 0))))

(assert (=> d!398476 (= (isEmpty!8555 (c!228748 (_2!7742 lt!462510))) lt!463300)))

(declare-fun bs!337644 () Bool)

(assert (= bs!337644 d!398476))

(assert (=> bs!337644 m!1568133))

(assert (=> bs!337644 m!1568133))

(declare-fun m!1568135 () Bool)

(assert (=> bs!337644 m!1568135))

(declare-fun m!1568137 () Bool)

(assert (=> bs!337644 m!1568137))

(assert (=> d!397522 d!398476))

(declare-fun d!398478 () Bool)

(declare-fun c!229302 () Bool)

(assert (=> d!398478 (= c!229302 ((_ is Node!4646) (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34)))))))

(declare-fun e!889224 () Bool)

(assert (=> d!398478 (= (inv!18448 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34)))) e!889224)))

(declare-fun b!1392321 () Bool)

(assert (=> b!1392321 (= e!889224 (inv!18450 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34)))))))

(declare-fun b!1392322 () Bool)

(declare-fun e!889225 () Bool)

(assert (=> b!1392322 (= e!889224 e!889225)))

(declare-fun res!628568 () Bool)

(assert (=> b!1392322 (= res!628568 (not ((_ is Leaf!7064) (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34))))))))

(assert (=> b!1392322 (=> res!628568 e!889225)))

(declare-fun b!1392323 () Bool)

(assert (=> b!1392323 (= e!889225 (inv!18451 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34)))))))

(assert (= (and d!398478 c!229302) b!1392321))

(assert (= (and d!398478 (not c!229302)) b!1392322))

(assert (= (and b!1392322 (not res!628568)) b!1392323))

(declare-fun m!1568139 () Bool)

(assert (=> b!1392321 m!1568139))

(declare-fun m!1568141 () Bool)

(assert (=> b!1392323 m!1568141))

(assert (=> b!1390346 d!398478))

(assert (=> b!1390844 d!397516))

(declare-fun b!1392324 () Bool)

(declare-fun e!889230 () Bool)

(assert (=> b!1392324 (= e!889230 (= (head!2543 (tail!2020 lt!462520)) (c!228749 (derivativeStep!977 lt!462518 (head!2543 lt!462520)))))))

(declare-fun b!1392325 () Bool)

(declare-fun res!628572 () Bool)

(assert (=> b!1392325 (=> (not res!628572) (not e!889230))))

(assert (=> b!1392325 (= res!628572 (isEmpty!8550 (tail!2020 (tail!2020 lt!462520))))))

(declare-fun d!398480 () Bool)

(declare-fun e!889231 () Bool)

(assert (=> d!398480 e!889231))

(declare-fun c!229305 () Bool)

(assert (=> d!398480 (= c!229305 ((_ is EmptyExpr!3757) (derivativeStep!977 lt!462518 (head!2543 lt!462520))))))

(declare-fun lt!463301 () Bool)

(declare-fun e!889232 () Bool)

(assert (=> d!398480 (= lt!463301 e!889232)))

(declare-fun c!229303 () Bool)

(assert (=> d!398480 (= c!229303 (isEmpty!8550 (tail!2020 lt!462520)))))

(assert (=> d!398480 (validRegex!1639 (derivativeStep!977 lt!462518 (head!2543 lt!462520)))))

(assert (=> d!398480 (= (matchR!1748 (derivativeStep!977 lt!462518 (head!2543 lt!462520)) (tail!2020 lt!462520)) lt!463301)))

(declare-fun b!1392326 () Bool)

(declare-fun res!628574 () Bool)

(assert (=> b!1392326 (=> (not res!628574) (not e!889230))))

(declare-fun call!93152 () Bool)

(assert (=> b!1392326 (= res!628574 (not call!93152))))

(declare-fun b!1392327 () Bool)

(declare-fun e!889229 () Bool)

(assert (=> b!1392327 (= e!889231 e!889229)))

(declare-fun c!229304 () Bool)

(assert (=> b!1392327 (= c!229304 ((_ is EmptyLang!3757) (derivativeStep!977 lt!462518 (head!2543 lt!462520))))))

(declare-fun b!1392328 () Bool)

(assert (=> b!1392328 (= e!889232 (nullable!1219 (derivativeStep!977 lt!462518 (head!2543 lt!462520))))))

(declare-fun b!1392329 () Bool)

(declare-fun res!628571 () Bool)

(declare-fun e!889226 () Bool)

(assert (=> b!1392329 (=> res!628571 e!889226)))

(assert (=> b!1392329 (= res!628571 (not ((_ is ElementMatch!3757) (derivativeStep!977 lt!462518 (head!2543 lt!462520)))))))

(assert (=> b!1392329 (= e!889229 e!889226)))

(declare-fun b!1392330 () Bool)

(declare-fun res!628573 () Bool)

(declare-fun e!889227 () Bool)

(assert (=> b!1392330 (=> res!628573 e!889227)))

(assert (=> b!1392330 (= res!628573 (not (isEmpty!8550 (tail!2020 (tail!2020 lt!462520)))))))

(declare-fun b!1392331 () Bool)

(declare-fun e!889228 () Bool)

(assert (=> b!1392331 (= e!889228 e!889227)))

(declare-fun res!628570 () Bool)

(assert (=> b!1392331 (=> res!628570 e!889227)))

(assert (=> b!1392331 (= res!628570 call!93152)))

(declare-fun b!1392332 () Bool)

(declare-fun res!628576 () Bool)

(assert (=> b!1392332 (=> res!628576 e!889226)))

(assert (=> b!1392332 (= res!628576 e!889230)))

(declare-fun res!628575 () Bool)

(assert (=> b!1392332 (=> (not res!628575) (not e!889230))))

(assert (=> b!1392332 (= res!628575 lt!463301)))

(declare-fun b!1392333 () Bool)

(assert (=> b!1392333 (= e!889229 (not lt!463301))))

(declare-fun bm!93147 () Bool)

(assert (=> bm!93147 (= call!93152 (isEmpty!8550 (tail!2020 lt!462520)))))

(declare-fun b!1392334 () Bool)

(assert (=> b!1392334 (= e!889231 (= lt!463301 call!93152))))

(declare-fun b!1392335 () Bool)

(assert (=> b!1392335 (= e!889227 (not (= (head!2543 (tail!2020 lt!462520)) (c!228749 (derivativeStep!977 lt!462518 (head!2543 lt!462520))))))))

(declare-fun b!1392336 () Bool)

(assert (=> b!1392336 (= e!889226 e!889228)))

(declare-fun res!628569 () Bool)

(assert (=> b!1392336 (=> (not res!628569) (not e!889228))))

(assert (=> b!1392336 (= res!628569 (not lt!463301))))

(declare-fun b!1392337 () Bool)

(assert (=> b!1392337 (= e!889232 (matchR!1748 (derivativeStep!977 (derivativeStep!977 lt!462518 (head!2543 lt!462520)) (head!2543 (tail!2020 lt!462520))) (tail!2020 (tail!2020 lt!462520))))))

(assert (= (and d!398480 c!229303) b!1392328))

(assert (= (and d!398480 (not c!229303)) b!1392337))

(assert (= (and d!398480 c!229305) b!1392334))

(assert (= (and d!398480 (not c!229305)) b!1392327))

(assert (= (and b!1392327 c!229304) b!1392333))

(assert (= (and b!1392327 (not c!229304)) b!1392329))

(assert (= (and b!1392329 (not res!628571)) b!1392332))

(assert (= (and b!1392332 res!628575) b!1392326))

(assert (= (and b!1392326 res!628574) b!1392325))

(assert (= (and b!1392325 res!628572) b!1392324))

(assert (= (and b!1392332 (not res!628576)) b!1392336))

(assert (= (and b!1392336 res!628569) b!1392331))

(assert (= (and b!1392331 (not res!628570)) b!1392330))

(assert (= (and b!1392330 (not res!628573)) b!1392335))

(assert (= (or b!1392334 b!1392326 b!1392331) bm!93147))

(assert (=> d!398480 m!1565563))

(assert (=> d!398480 m!1565565))

(assert (=> d!398480 m!1565569))

(declare-fun m!1568143 () Bool)

(assert (=> d!398480 m!1568143))

(assert (=> bm!93147 m!1565563))

(assert (=> bm!93147 m!1565565))

(assert (=> b!1392325 m!1565563))

(declare-fun m!1568145 () Bool)

(assert (=> b!1392325 m!1568145))

(assert (=> b!1392325 m!1568145))

(declare-fun m!1568147 () Bool)

(assert (=> b!1392325 m!1568147))

(assert (=> b!1392337 m!1565563))

(declare-fun m!1568149 () Bool)

(assert (=> b!1392337 m!1568149))

(assert (=> b!1392337 m!1565569))

(assert (=> b!1392337 m!1568149))

(declare-fun m!1568151 () Bool)

(assert (=> b!1392337 m!1568151))

(assert (=> b!1392337 m!1565563))

(assert (=> b!1392337 m!1568145))

(assert (=> b!1392337 m!1568151))

(assert (=> b!1392337 m!1568145))

(declare-fun m!1568153 () Bool)

(assert (=> b!1392337 m!1568153))

(assert (=> b!1392335 m!1565563))

(assert (=> b!1392335 m!1568149))

(assert (=> b!1392330 m!1565563))

(assert (=> b!1392330 m!1568145))

(assert (=> b!1392330 m!1568145))

(assert (=> b!1392330 m!1568147))

(assert (=> b!1392324 m!1565563))

(assert (=> b!1392324 m!1568149))

(assert (=> b!1392328 m!1565569))

(declare-fun m!1568155 () Bool)

(assert (=> b!1392328 m!1568155))

(assert (=> b!1390652 d!398480))

(declare-fun b!1392338 () Bool)

(declare-fun e!889234 () Regex!3757)

(declare-fun call!93156 () Regex!3757)

(assert (=> b!1392338 (= e!889234 (Concat!6291 call!93156 lt!462518))))

(declare-fun c!229306 () Bool)

(declare-fun call!93155 () Regex!3757)

(declare-fun c!229310 () Bool)

(declare-fun c!229307 () Bool)

(declare-fun bm!93148 () Bool)

(assert (=> bm!93148 (= call!93155 (derivativeStep!977 (ite c!229310 (regTwo!8027 lt!462518) (ite c!229306 (reg!4086 lt!462518) (ite c!229307 (regTwo!8026 lt!462518) (regOne!8026 lt!462518)))) (head!2543 lt!462520)))))

(declare-fun b!1392339 () Bool)

(assert (=> b!1392339 (= c!229310 ((_ is Union!3757) lt!462518))))

(declare-fun e!889233 () Regex!3757)

(declare-fun e!889235 () Regex!3757)

(assert (=> b!1392339 (= e!889233 e!889235)))

(declare-fun bm!93150 () Bool)

(assert (=> bm!93150 (= call!93156 call!93155)))

(declare-fun e!889237 () Regex!3757)

(declare-fun call!93154 () Regex!3757)

(declare-fun b!1392340 () Bool)

(declare-fun call!93153 () Regex!3757)

(assert (=> b!1392340 (= e!889237 (Union!3757 (Concat!6291 call!93154 (regTwo!8026 lt!462518)) call!93153))))

(declare-fun b!1392341 () Bool)

(assert (=> b!1392341 (= e!889235 e!889234)))

(assert (=> b!1392341 (= c!229306 ((_ is Star!3757) lt!462518))))

(declare-fun bm!93151 () Bool)

(assert (=> bm!93151 (= call!93153 call!93156)))

(declare-fun d!398482 () Bool)

(declare-fun lt!463302 () Regex!3757)

(assert (=> d!398482 (validRegex!1639 lt!463302)))

(declare-fun e!889236 () Regex!3757)

(assert (=> d!398482 (= lt!463302 e!889236)))

(declare-fun c!229309 () Bool)

(assert (=> d!398482 (= c!229309 (or ((_ is EmptyExpr!3757) lt!462518) ((_ is EmptyLang!3757) lt!462518)))))

(assert (=> d!398482 (validRegex!1639 lt!462518)))

(assert (=> d!398482 (= (derivativeStep!977 lt!462518 (head!2543 lt!462520)) lt!463302)))

(declare-fun bm!93149 () Bool)

(assert (=> bm!93149 (= call!93154 (derivativeStep!977 (ite c!229310 (regOne!8027 lt!462518) (regOne!8026 lt!462518)) (head!2543 lt!462520)))))

(declare-fun b!1392342 () Bool)

(assert (=> b!1392342 (= e!889236 EmptyLang!3757)))

(declare-fun b!1392343 () Bool)

(assert (=> b!1392343 (= e!889235 (Union!3757 call!93154 call!93155))))

(declare-fun b!1392344 () Bool)

(assert (=> b!1392344 (= e!889237 (Union!3757 (Concat!6291 call!93153 (regTwo!8026 lt!462518)) EmptyLang!3757))))

(declare-fun b!1392345 () Bool)

(assert (=> b!1392345 (= e!889236 e!889233)))

(declare-fun c!229308 () Bool)

(assert (=> b!1392345 (= c!229308 ((_ is ElementMatch!3757) lt!462518))))

(declare-fun b!1392346 () Bool)

(assert (=> b!1392346 (= c!229307 (nullable!1219 (regOne!8026 lt!462518)))))

(assert (=> b!1392346 (= e!889234 e!889237)))

(declare-fun b!1392347 () Bool)

(assert (=> b!1392347 (= e!889233 (ite (= (head!2543 lt!462520) (c!228749 lt!462518)) EmptyExpr!3757 EmptyLang!3757))))

(assert (= (and d!398482 c!229309) b!1392342))

(assert (= (and d!398482 (not c!229309)) b!1392345))

(assert (= (and b!1392345 c!229308) b!1392347))

(assert (= (and b!1392345 (not c!229308)) b!1392339))

(assert (= (and b!1392339 c!229310) b!1392343))

(assert (= (and b!1392339 (not c!229310)) b!1392341))

(assert (= (and b!1392341 c!229306) b!1392338))

(assert (= (and b!1392341 (not c!229306)) b!1392346))

(assert (= (and b!1392346 c!229307) b!1392340))

(assert (= (and b!1392346 (not c!229307)) b!1392344))

(assert (= (or b!1392340 b!1392344) bm!93151))

(assert (= (or b!1392338 bm!93151) bm!93150))

(assert (= (or b!1392343 b!1392340) bm!93149))

(assert (= (or b!1392343 bm!93150) bm!93148))

(assert (=> bm!93148 m!1565567))

(declare-fun m!1568157 () Bool)

(assert (=> bm!93148 m!1568157))

(declare-fun m!1568159 () Bool)

(assert (=> d!398482 m!1568159))

(assert (=> d!398482 m!1565561))

(assert (=> bm!93149 m!1565567))

(declare-fun m!1568161 () Bool)

(assert (=> bm!93149 m!1568161))

(assert (=> b!1392346 m!1567671))

(assert (=> b!1390652 d!398482))

(assert (=> b!1390652 d!397710))

(assert (=> b!1390652 d!398002))

(declare-fun d!398484 () Bool)

(assert (=> d!398484 (= (isEmpty!8554 lt!462639) (not ((_ is Some!2703) lt!462639)))))

(assert (=> d!397458 d!398484))

(declare-fun d!398486 () Bool)

(declare-fun e!889239 () Bool)

(assert (=> d!398486 e!889239))

(declare-fun res!628579 () Bool)

(assert (=> d!398486 (=> res!628579 e!889239)))

(declare-fun lt!463303 () Bool)

(assert (=> d!398486 (= res!628579 (not lt!463303))))

(declare-fun e!889238 () Bool)

(assert (=> d!398486 (= lt!463303 e!889238)))

(declare-fun res!628578 () Bool)

(assert (=> d!398486 (=> res!628578 e!889238)))

(assert (=> d!398486 (= res!628578 ((_ is Nil!14107) lt!462532))))

(assert (=> d!398486 (= (isPrefix!1145 lt!462532 lt!462532) lt!463303)))

(declare-fun b!1392351 () Bool)

(assert (=> b!1392351 (= e!889239 (>= (size!11605 lt!462532) (size!11605 lt!462532)))))

(declare-fun b!1392348 () Bool)

(declare-fun e!889240 () Bool)

(assert (=> b!1392348 (= e!889238 e!889240)))

(declare-fun res!628580 () Bool)

(assert (=> b!1392348 (=> (not res!628580) (not e!889240))))

(assert (=> b!1392348 (= res!628580 (not ((_ is Nil!14107) lt!462532)))))

(declare-fun b!1392349 () Bool)

(declare-fun res!628577 () Bool)

(assert (=> b!1392349 (=> (not res!628577) (not e!889240))))

(assert (=> b!1392349 (= res!628577 (= (head!2543 lt!462532) (head!2543 lt!462532)))))

(declare-fun b!1392350 () Bool)

(assert (=> b!1392350 (= e!889240 (isPrefix!1145 (tail!2020 lt!462532) (tail!2020 lt!462532)))))

(assert (= (and d!398486 (not res!628578)) b!1392348))

(assert (= (and b!1392348 res!628580) b!1392349))

(assert (= (and b!1392349 res!628577) b!1392350))

(assert (= (and d!398486 (not res!628579)) b!1392351))

(assert (=> b!1392351 m!1565315))

(assert (=> b!1392351 m!1565315))

(assert (=> b!1392349 m!1564955))

(assert (=> b!1392349 m!1564955))

(assert (=> b!1392350 m!1565899))

(assert (=> b!1392350 m!1565899))

(assert (=> b!1392350 m!1565899))

(assert (=> b!1392350 m!1565899))

(declare-fun m!1568163 () Bool)

(assert (=> b!1392350 m!1568163))

(assert (=> d!397458 d!398486))

(declare-fun d!398488 () Bool)

(assert (=> d!398488 (isPrefix!1145 lt!462532 lt!462532)))

(declare-fun lt!463304 () Unit!20367)

(assert (=> d!398488 (= lt!463304 (choose!8561 lt!462532 lt!462532))))

(assert (=> d!398488 (= (lemmaIsPrefixRefl!804 lt!462532 lt!462532) lt!463304)))

(declare-fun bs!337645 () Bool)

(assert (= bs!337645 d!398488))

(assert (=> bs!337645 m!1565307))

(declare-fun m!1568165 () Bool)

(assert (=> bs!337645 m!1568165))

(assert (=> d!397458 d!398488))

(assert (=> d!397458 d!398462))

(declare-fun d!398490 () Bool)

(declare-fun charsToInt!0 (List!14172) (_ BitVec 32))

(assert (=> d!398490 (= (inv!16 (value!79258 t1!34)) (= (charsToInt!0 (text!18178 (value!79258 t1!34))) (value!79249 (value!79258 t1!34))))))

(declare-fun bs!337646 () Bool)

(assert (= bs!337646 d!398490))

(declare-fun m!1568167 () Bool)

(assert (=> bs!337646 m!1568167))

(assert (=> b!1390670 d!398490))

(declare-fun d!398492 () Bool)

(declare-fun lt!463305 () Int)

(assert (=> d!398492 (>= lt!463305 0)))

(declare-fun e!889241 () Int)

(assert (=> d!398492 (= lt!463305 e!889241)))

(declare-fun c!229311 () Bool)

(assert (=> d!398492 (= c!229311 ((_ is Nil!14109) (_1!7743 lt!462805)))))

(assert (=> d!398492 (= (size!11606 (_1!7743 lt!462805)) lt!463305)))

(declare-fun b!1392352 () Bool)

(assert (=> b!1392352 (= e!889241 0)))

(declare-fun b!1392353 () Bool)

(assert (=> b!1392353 (= e!889241 (+ 1 (size!11606 (t!122414 (_1!7743 lt!462805)))))))

(assert (= (and d!398492 c!229311) b!1392352))

(assert (= (and d!398492 (not c!229311)) b!1392353))

(declare-fun m!1568169 () Bool)

(assert (=> b!1392353 m!1568169))

(assert (=> d!397668 d!398492))

(declare-fun d!398494 () Bool)

(declare-fun e!889244 () Bool)

(assert (=> d!398494 e!889244))

(declare-fun res!628585 () Bool)

(assert (=> d!398494 (=> res!628585 e!889244)))

(declare-fun lt!463308 () Option!2704)

(assert (=> d!398494 (= res!628585 (isEmpty!8554 lt!463308))))

(declare-fun e!889242 () Option!2704)

(assert (=> d!398494 (= lt!463308 e!889242)))

(declare-fun c!229312 () Bool)

(assert (=> d!398494 (= c!229312 (and ((_ is Cons!14108) rules!2550) ((_ is Nil!14108) (t!122413 rules!2550))))))

(declare-fun lt!463307 () Unit!20367)

(declare-fun lt!463306 () Unit!20367)

(assert (=> d!398494 (= lt!463307 lt!463306)))

(assert (=> d!398494 (isPrefix!1145 (list!5477 lt!462514) (list!5477 lt!462514))))

(assert (=> d!398494 (= lt!463306 (lemmaIsPrefixRefl!804 (list!5477 lt!462514) (list!5477 lt!462514)))))

(assert (=> d!398494 (rulesValidInductive!787 thiss!19762 rules!2550)))

(assert (=> d!398494 (= (maxPrefix!1112 thiss!19762 rules!2550 (list!5477 lt!462514)) lt!463308)))

(declare-fun b!1392354 () Bool)

(declare-fun e!889243 () Bool)

(assert (=> b!1392354 (= e!889243 (contains!2709 rules!2550 (rule!4204 (_1!7741 (get!4379 lt!463308)))))))

(declare-fun b!1392355 () Bool)

(declare-fun res!628581 () Bool)

(assert (=> b!1392355 (=> (not res!628581) (not e!889243))))

(assert (=> b!1392355 (= res!628581 (= (++!3664 (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!463308)))) (_2!7741 (get!4379 lt!463308))) (list!5477 lt!462514)))))

(declare-fun b!1392356 () Bool)

(declare-fun res!628583 () Bool)

(assert (=> b!1392356 (=> (not res!628583) (not e!889243))))

(assert (=> b!1392356 (= res!628583 (= (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!463308)))) (originalCharacters!3305 (_1!7741 (get!4379 lt!463308)))))))

(declare-fun bm!93152 () Bool)

(declare-fun call!93157 () Option!2704)

(assert (=> bm!93152 (= call!93157 (maxPrefixOneRule!630 thiss!19762 (h!19509 rules!2550) (list!5477 lt!462514)))))

(declare-fun b!1392357 () Bool)

(declare-fun res!628584 () Bool)

(assert (=> b!1392357 (=> (not res!628584) (not e!889243))))

(assert (=> b!1392357 (= res!628584 (matchR!1748 (regex!2443 (rule!4204 (_1!7741 (get!4379 lt!463308)))) (list!5477 (charsOf!1415 (_1!7741 (get!4379 lt!463308))))))))

(declare-fun b!1392358 () Bool)

(assert (=> b!1392358 (= e!889242 call!93157)))

(declare-fun b!1392359 () Bool)

(declare-fun res!628587 () Bool)

(assert (=> b!1392359 (=> (not res!628587) (not e!889243))))

(assert (=> b!1392359 (= res!628587 (< (size!11605 (_2!7741 (get!4379 lt!463308))) (size!11605 (list!5477 lt!462514))))))

(declare-fun b!1392360 () Bool)

(declare-fun res!628586 () Bool)

(assert (=> b!1392360 (=> (not res!628586) (not e!889243))))

(assert (=> b!1392360 (= res!628586 (= (value!79258 (_1!7741 (get!4379 lt!463308))) (apply!3551 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!463308)))) (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!463308)))))))))

(declare-fun b!1392361 () Bool)

(assert (=> b!1392361 (= e!889244 e!889243)))

(declare-fun res!628582 () Bool)

(assert (=> b!1392361 (=> (not res!628582) (not e!889243))))

(assert (=> b!1392361 (= res!628582 (isDefined!2232 lt!463308))))

(declare-fun b!1392362 () Bool)

(declare-fun lt!463310 () Option!2704)

(declare-fun lt!463309 () Option!2704)

(assert (=> b!1392362 (= e!889242 (ite (and ((_ is None!2703) lt!463310) ((_ is None!2703) lt!463309)) None!2703 (ite ((_ is None!2703) lt!463309) lt!463310 (ite ((_ is None!2703) lt!463310) lt!463309 (ite (>= (size!11595 (_1!7741 (v!21586 lt!463310))) (size!11595 (_1!7741 (v!21586 lt!463309)))) lt!463310 lt!463309)))))))

(assert (=> b!1392362 (= lt!463310 call!93157)))

(assert (=> b!1392362 (= lt!463309 (maxPrefix!1112 thiss!19762 (t!122413 rules!2550) (list!5477 lt!462514)))))

(assert (= (and d!398494 c!229312) b!1392358))

(assert (= (and d!398494 (not c!229312)) b!1392362))

(assert (= (or b!1392358 b!1392362) bm!93152))

(assert (= (and d!398494 (not res!628585)) b!1392361))

(assert (= (and b!1392361 res!628582) b!1392356))

(assert (= (and b!1392356 res!628583) b!1392359))

(assert (= (and b!1392359 res!628587) b!1392355))

(assert (= (and b!1392355 res!628581) b!1392360))

(assert (= (and b!1392360 res!628586) b!1392357))

(assert (= (and b!1392357 res!628584) b!1392354))

(assert (=> b!1392362 m!1564835))

(declare-fun m!1568171 () Bool)

(assert (=> b!1392362 m!1568171))

(declare-fun m!1568173 () Bool)

(assert (=> b!1392360 m!1568173))

(declare-fun m!1568175 () Bool)

(assert (=> b!1392360 m!1568175))

(assert (=> b!1392360 m!1568175))

(declare-fun m!1568177 () Bool)

(assert (=> b!1392360 m!1568177))

(assert (=> b!1392356 m!1568173))

(declare-fun m!1568179 () Bool)

(assert (=> b!1392356 m!1568179))

(assert (=> b!1392356 m!1568179))

(declare-fun m!1568181 () Bool)

(assert (=> b!1392356 m!1568181))

(assert (=> bm!93152 m!1564835))

(declare-fun m!1568183 () Bool)

(assert (=> bm!93152 m!1568183))

(assert (=> b!1392354 m!1568173))

(declare-fun m!1568185 () Bool)

(assert (=> b!1392354 m!1568185))

(declare-fun m!1568187 () Bool)

(assert (=> d!398494 m!1568187))

(assert (=> d!398494 m!1564835))

(assert (=> d!398494 m!1564835))

(declare-fun m!1568189 () Bool)

(assert (=> d!398494 m!1568189))

(assert (=> d!398494 m!1564835))

(assert (=> d!398494 m!1564835))

(declare-fun m!1568191 () Bool)

(assert (=> d!398494 m!1568191))

(assert (=> d!398494 m!1565311))

(assert (=> b!1392359 m!1568173))

(declare-fun m!1568193 () Bool)

(assert (=> b!1392359 m!1568193))

(assert (=> b!1392359 m!1564835))

(assert (=> b!1392359 m!1566001))

(assert (=> b!1392357 m!1568173))

(assert (=> b!1392357 m!1568179))

(assert (=> b!1392357 m!1568179))

(assert (=> b!1392357 m!1568181))

(assert (=> b!1392357 m!1568181))

(declare-fun m!1568195 () Bool)

(assert (=> b!1392357 m!1568195))

(declare-fun m!1568197 () Bool)

(assert (=> b!1392361 m!1568197))

(assert (=> b!1392355 m!1568173))

(assert (=> b!1392355 m!1568179))

(assert (=> b!1392355 m!1568179))

(assert (=> b!1392355 m!1568181))

(assert (=> b!1392355 m!1568181))

(declare-fun m!1568199 () Bool)

(assert (=> b!1392355 m!1568199))

(assert (=> d!397668 d!398494))

(declare-fun d!398496 () Bool)

(declare-fun lt!463311 () Int)

(assert (=> d!398496 (>= lt!463311 0)))

(declare-fun e!889245 () Int)

(assert (=> d!398496 (= lt!463311 e!889245)))

(declare-fun c!229313 () Bool)

(assert (=> d!398496 (= c!229313 ((_ is Nil!14107) (_2!7743 lt!462620)))))

(assert (=> d!398496 (= (size!11605 (_2!7743 lt!462620)) lt!463311)))

(declare-fun b!1392363 () Bool)

(assert (=> b!1392363 (= e!889245 0)))

(declare-fun b!1392364 () Bool)

(assert (=> b!1392364 (= e!889245 (+ 1 (size!11605 (t!122412 (_2!7743 lt!462620)))))))

(assert (= (and d!398496 c!229313) b!1392363))

(assert (= (and d!398496 (not c!229313)) b!1392364))

(declare-fun m!1568201 () Bool)

(assert (=> b!1392364 m!1568201))

(assert (=> b!1390385 d!398496))

(declare-fun d!398498 () Bool)

(declare-fun lt!463312 () Int)

(assert (=> d!398498 (>= lt!463312 0)))

(declare-fun e!889246 () Int)

(assert (=> d!398498 (= lt!463312 e!889246)))

(declare-fun c!229314 () Bool)

(assert (=> d!398498 (= c!229314 ((_ is Nil!14107) (list!5477 lt!462535)))))

(assert (=> d!398498 (= (size!11605 (list!5477 lt!462535)) lt!463312)))

(declare-fun b!1392365 () Bool)

(assert (=> b!1392365 (= e!889246 0)))

(declare-fun b!1392366 () Bool)

(assert (=> b!1392366 (= e!889246 (+ 1 (size!11605 (t!122412 (list!5477 lt!462535)))))))

(assert (= (and d!398498 c!229314) b!1392365))

(assert (= (and d!398498 (not c!229314)) b!1392366))

(declare-fun m!1568203 () Bool)

(assert (=> b!1392366 m!1568203))

(assert (=> b!1390385 d!398498))

(declare-fun d!398500 () Bool)

(declare-fun c!229315 () Bool)

(assert (=> d!398500 (= c!229315 ((_ is Nil!14107) lt!462537))))

(declare-fun e!889247 () (InoxSet C!7804))

(assert (=> d!398500 (= (content!2079 lt!462537) e!889247)))

(declare-fun b!1392367 () Bool)

(assert (=> b!1392367 (= e!889247 ((as const (Array C!7804 Bool)) false))))

(declare-fun b!1392368 () Bool)

(assert (=> b!1392368 (= e!889247 ((_ map or) (store ((as const (Array C!7804 Bool)) false) (h!19508 lt!462537) true) (content!2079 (t!122412 lt!462537))))))

(assert (= (and d!398500 c!229315) b!1392367))

(assert (= (and d!398500 (not c!229315)) b!1392368))

(declare-fun m!1568205 () Bool)

(assert (=> b!1392368 m!1568205))

(assert (=> b!1392368 m!1567545))

(assert (=> d!397620 d!398500))

(assert (=> b!1390884 d!397674))

(declare-fun d!398502 () Bool)

(assert (=> d!398502 (= (inv!16 (value!79258 t2!34)) (= (charsToInt!0 (text!18178 (value!79258 t2!34))) (value!79249 (value!79258 t2!34))))))

(declare-fun bs!337647 () Bool)

(assert (= bs!337647 d!398502))

(declare-fun m!1568207 () Bool)

(assert (=> bs!337647 m!1568207))

(assert (=> b!1390936 d!398502))

(declare-fun d!398504 () Bool)

(declare-fun res!628588 () Bool)

(declare-fun e!889248 () Bool)

(assert (=> d!398504 (=> (not res!628588) (not e!889248))))

(assert (=> d!398504 (= res!628588 (validRegex!1639 (regex!2443 lt!462521)))))

(assert (=> d!398504 (= (ruleValid!606 thiss!19762 lt!462521) e!889248)))

(declare-fun b!1392369 () Bool)

(declare-fun res!628589 () Bool)

(assert (=> b!1392369 (=> (not res!628589) (not e!889248))))

(assert (=> b!1392369 (= res!628589 (not (nullable!1219 (regex!2443 lt!462521))))))

(declare-fun b!1392370 () Bool)

(assert (=> b!1392370 (= e!889248 (not (= (tag!2705 lt!462521) (String!16902 ""))))))

(assert (= (and d!398504 res!628588) b!1392369))

(assert (= (and b!1392369 res!628589) b!1392370))

(declare-fun m!1568209 () Bool)

(assert (=> d!398504 m!1568209))

(declare-fun m!1568211 () Bool)

(assert (=> b!1392369 m!1568211))

(assert (=> bs!337434 d!398504))

(declare-fun b!1392371 () Bool)

(declare-fun e!889252 () Bool)

(declare-fun e!889251 () Bool)

(assert (=> b!1392371 (= e!889252 e!889251)))

(declare-fun res!628590 () Bool)

(assert (=> b!1392371 (= res!628590 (not (nullable!1219 (reg!4086 (ite c!228855 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34))))))))))

(assert (=> b!1392371 (=> (not res!628590) (not e!889251))))

(declare-fun call!93158 () Bool)

(declare-fun c!229317 () Bool)

(declare-fun bm!93153 () Bool)

(assert (=> bm!93153 (= call!93158 (validRegex!1639 (ite c!229317 (regOne!8027 (ite c!228855 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34))))) (regOne!8026 (ite c!228855 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34))))))))))

(declare-fun b!1392372 () Bool)

(declare-fun res!628591 () Bool)

(declare-fun e!889255 () Bool)

(assert (=> b!1392372 (=> (not res!628591) (not e!889255))))

(assert (=> b!1392372 (= res!628591 call!93158)))

(declare-fun e!889254 () Bool)

(assert (=> b!1392372 (= e!889254 e!889255)))

(declare-fun b!1392373 () Bool)

(declare-fun call!93159 () Bool)

(assert (=> b!1392373 (= e!889255 call!93159)))

(declare-fun b!1392374 () Bool)

(declare-fun e!889249 () Bool)

(assert (=> b!1392374 (= e!889249 call!93159)))

(declare-fun b!1392375 () Bool)

(declare-fun call!93160 () Bool)

(assert (=> b!1392375 (= e!889251 call!93160)))

(declare-fun b!1392376 () Bool)

(declare-fun e!889253 () Bool)

(assert (=> b!1392376 (= e!889253 e!889252)))

(declare-fun c!229316 () Bool)

(assert (=> b!1392376 (= c!229316 ((_ is Star!3757) (ite c!228855 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34))))))))

(declare-fun bm!93154 () Bool)

(assert (=> bm!93154 (= call!93159 call!93160)))

(declare-fun bm!93155 () Bool)

(assert (=> bm!93155 (= call!93160 (validRegex!1639 (ite c!229316 (reg!4086 (ite c!228855 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34))))) (ite c!229317 (regTwo!8027 (ite c!228855 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34))))) (regTwo!8026 (ite c!228855 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34)))))))))))

(declare-fun b!1392378 () Bool)

(declare-fun e!889250 () Bool)

(assert (=> b!1392378 (= e!889250 e!889249)))

(declare-fun res!628593 () Bool)

(assert (=> b!1392378 (=> (not res!628593) (not e!889249))))

(assert (=> b!1392378 (= res!628593 call!93158)))

(declare-fun b!1392379 () Bool)

(declare-fun res!628592 () Bool)

(assert (=> b!1392379 (=> res!628592 e!889250)))

(assert (=> b!1392379 (= res!628592 (not ((_ is Concat!6291) (ite c!228855 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34)))))))))

(assert (=> b!1392379 (= e!889254 e!889250)))

(declare-fun b!1392377 () Bool)

(assert (=> b!1392377 (= e!889252 e!889254)))

(assert (=> b!1392377 (= c!229317 ((_ is Union!3757) (ite c!228855 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34))))))))

(declare-fun d!398506 () Bool)

(declare-fun res!628594 () Bool)

(assert (=> d!398506 (=> res!628594 e!889253)))

(assert (=> d!398506 (= res!628594 ((_ is ElementMatch!3757) (ite c!228855 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34))))))))

(assert (=> d!398506 (= (validRegex!1639 (ite c!228855 (regOne!8027 (regex!2443 (rule!4204 t2!34))) (regOne!8026 (regex!2443 (rule!4204 t2!34))))) e!889253)))

(assert (= (and d!398506 (not res!628594)) b!1392376))

(assert (= (and b!1392376 c!229316) b!1392371))

(assert (= (and b!1392376 (not c!229316)) b!1392377))

(assert (= (and b!1392371 res!628590) b!1392375))

(assert (= (and b!1392377 c!229317) b!1392372))

(assert (= (and b!1392377 (not c!229317)) b!1392379))

(assert (= (and b!1392372 res!628591) b!1392373))

(assert (= (and b!1392379 (not res!628592)) b!1392378))

(assert (= (and b!1392378 res!628593) b!1392374))

(assert (= (or b!1392372 b!1392378) bm!93153))

(assert (= (or b!1392373 b!1392374) bm!93154))

(assert (= (or b!1392375 bm!93154) bm!93155))

(declare-fun m!1568213 () Bool)

(assert (=> b!1392371 m!1568213))

(declare-fun m!1568215 () Bool)

(assert (=> bm!93153 m!1568215))

(declare-fun m!1568217 () Bool)

(assert (=> bm!93155 m!1568217))

(assert (=> bm!93003 d!398506))

(declare-fun d!398508 () Bool)

(declare-fun lt!463313 () Token!4548)

(assert (=> d!398508 (= lt!463313 (apply!3559 (list!5478 (_1!7742 lt!462676)) 0))))

(assert (=> d!398508 (= lt!463313 (apply!3560 (c!228750 (_1!7742 lt!462676)) 0))))

(declare-fun e!889256 () Bool)

(assert (=> d!398508 e!889256))

(declare-fun res!628595 () Bool)

(assert (=> d!398508 (=> (not res!628595) (not e!889256))))

(assert (=> d!398508 (= res!628595 (<= 0 0))))

(assert (=> d!398508 (= (apply!3552 (_1!7742 lt!462676) 0) lt!463313)))

(declare-fun b!1392380 () Bool)

(assert (=> b!1392380 (= e!889256 (< 0 (size!11607 (_1!7742 lt!462676))))))

(assert (= (and d!398508 res!628595) b!1392380))

(assert (=> d!398508 m!1566681))

(assert (=> d!398508 m!1566681))

(declare-fun m!1568219 () Bool)

(assert (=> d!398508 m!1568219))

(declare-fun m!1568221 () Bool)

(assert (=> d!398508 m!1568221))

(assert (=> b!1392380 m!1565443))

(assert (=> b!1390526 d!398508))

(declare-fun d!398510 () Bool)

(declare-fun lt!463314 () Int)

(assert (=> d!398510 (= lt!463314 (size!11606 (list!5478 (_1!7742 lt!462751))))))

(assert (=> d!398510 (= lt!463314 (size!11609 (c!228750 (_1!7742 lt!462751))))))

(assert (=> d!398510 (= (size!11607 (_1!7742 lt!462751)) lt!463314)))

(declare-fun bs!337648 () Bool)

(assert (= bs!337648 d!398510))

(assert (=> bs!337648 m!1565787))

(assert (=> bs!337648 m!1565787))

(declare-fun m!1568223 () Bool)

(assert (=> bs!337648 m!1568223))

(declare-fun m!1568225 () Bool)

(assert (=> bs!337648 m!1568225))

(assert (=> d!397570 d!398510))

(declare-fun lt!463333 () tuple2!13712)

(declare-fun b!1392381 () Bool)

(declare-fun lt!463318 () Option!2705)

(assert (=> b!1392381 (= lt!463333 (lexRec!286 thiss!19762 rules!2550 (_2!7745 (v!21600 lt!463318))))))

(declare-fun e!889260 () tuple2!13712)

(assert (=> b!1392381 (= e!889260 (tuple2!13713 (prepend!375 (_1!7742 lt!463333) (_1!7745 (v!21600 lt!463318))) (_2!7742 lt!463333)))))

(declare-fun e!889257 () Bool)

(declare-fun lt!463324 () tuple2!13712)

(declare-fun b!1392382 () Bool)

(assert (=> b!1392382 (= e!889257 (= (list!5477 (_2!7742 lt!463324)) (list!5477 (_2!7742 (lexRec!286 thiss!19762 rules!2550 lt!462535)))))))

(declare-fun d!398512 () Bool)

(assert (=> d!398512 e!889257))

(declare-fun res!628596 () Bool)

(assert (=> d!398512 (=> (not res!628596) (not e!889257))))

(assert (=> d!398512 (= res!628596 (= (list!5478 (_1!7742 lt!463324)) (list!5478 (_1!7742 (lexRec!286 thiss!19762 rules!2550 lt!462535)))))))

(declare-fun e!889259 () tuple2!13712)

(assert (=> d!398512 (= lt!463324 e!889259)))

(declare-fun c!229319 () Bool)

(declare-fun lt!463340 () Option!2705)

(assert (=> d!398512 (= c!229319 ((_ is Some!2704) lt!463340))))

(assert (=> d!398512 (= lt!463340 (maxPrefixZipperSequenceV2!231 thiss!19762 rules!2550 lt!462535 lt!462535))))

(declare-fun lt!463345 () Unit!20367)

(declare-fun lt!463327 () Unit!20367)

(assert (=> d!398512 (= lt!463345 lt!463327)))

(declare-fun lt!463335 () List!14173)

(declare-fun lt!463319 () List!14173)

(assert (=> d!398512 (isSuffix!264 lt!463335 (++!3664 lt!463319 lt!463335))))

(assert (=> d!398512 (= lt!463327 (lemmaConcatTwoListThenFSndIsSuffix!242 lt!463319 lt!463335))))

(assert (=> d!398512 (= lt!463335 (list!5477 lt!462535))))

(assert (=> d!398512 (= lt!463319 (list!5477 (BalanceConc!9233 Empty!4646)))))

(assert (=> d!398512 (= (lexTailRecV2!431 thiss!19762 rules!2550 lt!462535 (BalanceConc!9233 Empty!4646) lt!462535 (BalanceConc!9235 Empty!4647)) lt!463324)))

(declare-fun b!1392383 () Bool)

(declare-fun e!889258 () tuple2!13712)

(assert (=> b!1392383 (= e!889258 (tuple2!13713 (BalanceConc!9235 Empty!4647) lt!462535))))

(declare-fun b!1392384 () Bool)

(declare-fun lt!463316 () BalanceConc!9232)

(assert (=> b!1392384 (= e!889259 (lexTailRecV2!431 thiss!19762 rules!2550 lt!462535 lt!463316 (_2!7745 (v!21600 lt!463340)) (append!411 (BalanceConc!9235 Empty!4647) (_1!7745 (v!21600 lt!463340)))))))

(declare-fun lt!463331 () tuple2!13712)

(assert (=> b!1392384 (= lt!463331 (lexRec!286 thiss!19762 rules!2550 (_2!7745 (v!21600 lt!463340))))))

(declare-fun lt!463322 () List!14173)

(assert (=> b!1392384 (= lt!463322 (list!5477 (BalanceConc!9233 Empty!4646)))))

(declare-fun lt!463328 () List!14173)

(assert (=> b!1392384 (= lt!463328 (list!5477 (charsOf!1415 (_1!7745 (v!21600 lt!463340)))))))

(declare-fun lt!463325 () List!14173)

(assert (=> b!1392384 (= lt!463325 (list!5477 (_2!7745 (v!21600 lt!463340))))))

(declare-fun lt!463330 () Unit!20367)

(assert (=> b!1392384 (= lt!463330 (lemmaConcatAssociativity!871 lt!463322 lt!463328 lt!463325))))

(assert (=> b!1392384 (= (++!3664 (++!3664 lt!463322 lt!463328) lt!463325) (++!3664 lt!463322 (++!3664 lt!463328 lt!463325)))))

(declare-fun lt!463336 () Unit!20367)

(assert (=> b!1392384 (= lt!463336 lt!463330)))

(declare-fun lt!463329 () Option!2705)

(assert (=> b!1392384 (= lt!463329 (maxPrefixZipperSequence!559 thiss!19762 rules!2550 lt!462535))))

(declare-fun c!229318 () Bool)

(assert (=> b!1392384 (= c!229318 ((_ is Some!2704) lt!463329))))

(assert (=> b!1392384 (= (lexRec!286 thiss!19762 rules!2550 lt!462535) e!889258)))

(declare-fun lt!463320 () Unit!20367)

(declare-fun Unit!20384 () Unit!20367)

(assert (=> b!1392384 (= lt!463320 Unit!20384)))

(declare-fun lt!463348 () List!14175)

(assert (=> b!1392384 (= lt!463348 (list!5478 (BalanceConc!9235 Empty!4647)))))

(declare-fun lt!463332 () List!14175)

(assert (=> b!1392384 (= lt!463332 (Cons!14109 (_1!7745 (v!21600 lt!463340)) Nil!14109))))

(declare-fun lt!463315 () List!14175)

(assert (=> b!1392384 (= lt!463315 (list!5478 (_1!7742 lt!463331)))))

(declare-fun lt!463321 () Unit!20367)

(assert (=> b!1392384 (= lt!463321 (lemmaConcatAssociativity!872 lt!463348 lt!463332 lt!463315))))

(assert (=> b!1392384 (= (++!3668 (++!3668 lt!463348 lt!463332) lt!463315) (++!3668 lt!463348 (++!3668 lt!463332 lt!463315)))))

(declare-fun lt!463341 () Unit!20367)

(assert (=> b!1392384 (= lt!463341 lt!463321)))

(declare-fun lt!463342 () List!14173)

(assert (=> b!1392384 (= lt!463342 (++!3664 (list!5477 (BalanceConc!9233 Empty!4646)) (list!5477 (charsOf!1415 (_1!7745 (v!21600 lt!463340))))))))

(declare-fun lt!463326 () List!14173)

(assert (=> b!1392384 (= lt!463326 (list!5477 (_2!7745 (v!21600 lt!463340))))))

(declare-fun lt!463338 () List!14175)

(assert (=> b!1392384 (= lt!463338 (list!5478 (append!411 (BalanceConc!9235 Empty!4647) (_1!7745 (v!21600 lt!463340)))))))

(declare-fun lt!463346 () Unit!20367)

(assert (=> b!1392384 (= lt!463346 (lemmaLexThenLexPrefix!201 thiss!19762 rules!2550 lt!463342 lt!463326 lt!463338 (list!5478 (_1!7742 lt!463331)) (list!5477 (_2!7742 lt!463331))))))

(assert (=> b!1392384 (= (lexList!652 thiss!19762 rules!2550 lt!463342) (tuple2!13715 lt!463338 Nil!14107))))

(declare-fun lt!463337 () Unit!20367)

(assert (=> b!1392384 (= lt!463337 lt!463346)))

(declare-fun lt!463343 () BalanceConc!9232)

(assert (=> b!1392384 (= lt!463343 (++!3665 (BalanceConc!9233 Empty!4646) (charsOf!1415 (_1!7745 (v!21600 lt!463340)))))))

(assert (=> b!1392384 (= lt!463318 (maxPrefixZipperSequence!559 thiss!19762 rules!2550 lt!463343))))

(declare-fun c!229320 () Bool)

(assert (=> b!1392384 (= c!229320 ((_ is Some!2704) lt!463318))))

(assert (=> b!1392384 (= (lexRec!286 thiss!19762 rules!2550 (++!3665 (BalanceConc!9233 Empty!4646) (charsOf!1415 (_1!7745 (v!21600 lt!463340))))) e!889260)))

(declare-fun lt!463317 () Unit!20367)

(declare-fun Unit!20385 () Unit!20367)

(assert (=> b!1392384 (= lt!463317 Unit!20385)))

(assert (=> b!1392384 (= lt!463316 (++!3665 (BalanceConc!9233 Empty!4646) (charsOf!1415 (_1!7745 (v!21600 lt!463340)))))))

(declare-fun lt!463344 () List!14173)

(assert (=> b!1392384 (= lt!463344 (list!5477 lt!463316))))

(declare-fun lt!463347 () List!14173)

(assert (=> b!1392384 (= lt!463347 (list!5477 (_2!7745 (v!21600 lt!463340))))))

(declare-fun lt!463334 () Unit!20367)

(assert (=> b!1392384 (= lt!463334 (lemmaConcatTwoListThenFSndIsSuffix!242 lt!463344 lt!463347))))

(assert (=> b!1392384 (isSuffix!264 lt!463347 (++!3664 lt!463344 lt!463347))))

(declare-fun lt!463323 () Unit!20367)

(assert (=> b!1392384 (= lt!463323 lt!463334)))

(declare-fun b!1392385 () Bool)

(assert (=> b!1392385 (= e!889260 (tuple2!13713 (BalanceConc!9235 Empty!4647) lt!463343))))

(declare-fun lt!463339 () tuple2!13712)

(declare-fun b!1392386 () Bool)

(assert (=> b!1392386 (= lt!463339 (lexRec!286 thiss!19762 rules!2550 (_2!7745 (v!21600 lt!463329))))))

(assert (=> b!1392386 (= e!889258 (tuple2!13713 (prepend!375 (_1!7742 lt!463339) (_1!7745 (v!21600 lt!463329))) (_2!7742 lt!463339)))))

(declare-fun b!1392387 () Bool)

(assert (=> b!1392387 (= e!889259 (tuple2!13713 (BalanceConc!9235 Empty!4647) lt!462535))))

(assert (= (and d!398512 c!229319) b!1392384))

(assert (= (and d!398512 (not c!229319)) b!1392387))

(assert (= (and b!1392384 c!229318) b!1392386))

(assert (= (and b!1392384 (not c!229318)) b!1392383))

(assert (= (and b!1392384 c!229320) b!1392381))

(assert (= (and b!1392384 (not c!229320)) b!1392385))

(assert (= (and d!398512 res!628596) b!1392382))

(declare-fun m!1568227 () Bool)

(assert (=> b!1392381 m!1568227))

(declare-fun m!1568229 () Bool)

(assert (=> b!1392381 m!1568229))

(declare-fun m!1568231 () Bool)

(assert (=> b!1392382 m!1568231))

(declare-fun m!1568233 () Bool)

(assert (=> b!1392382 m!1568233))

(declare-fun m!1568235 () Bool)

(assert (=> b!1392382 m!1568235))

(declare-fun m!1568237 () Bool)

(assert (=> d!398512 m!1568237))

(declare-fun m!1568239 () Bool)

(assert (=> d!398512 m!1568239))

(declare-fun m!1568241 () Bool)

(assert (=> d!398512 m!1568241))

(declare-fun m!1568243 () Bool)

(assert (=> d!398512 m!1568243))

(assert (=> d!398512 m!1568233))

(assert (=> d!398512 m!1564943))

(assert (=> d!398512 m!1568243))

(declare-fun m!1568245 () Bool)

(assert (=> d!398512 m!1568245))

(declare-fun m!1568247 () Bool)

(assert (=> d!398512 m!1568247))

(assert (=> d!398512 m!1567431))

(declare-fun m!1568249 () Bool)

(assert (=> b!1392386 m!1568249))

(declare-fun m!1568251 () Bool)

(assert (=> b!1392386 m!1568251))

(declare-fun m!1568253 () Bool)

(assert (=> b!1392384 m!1568253))

(declare-fun m!1568255 () Bool)

(assert (=> b!1392384 m!1568255))

(declare-fun m!1568257 () Bool)

(assert (=> b!1392384 m!1568257))

(declare-fun m!1568259 () Bool)

(assert (=> b!1392384 m!1568259))

(declare-fun m!1568261 () Bool)

(assert (=> b!1392384 m!1568261))

(declare-fun m!1568263 () Bool)

(assert (=> b!1392384 m!1568263))

(declare-fun m!1568265 () Bool)

(assert (=> b!1392384 m!1568265))

(declare-fun m!1568267 () Bool)

(assert (=> b!1392384 m!1568267))

(declare-fun m!1568269 () Bool)

(assert (=> b!1392384 m!1568269))

(assert (=> b!1392384 m!1567431))

(declare-fun m!1568271 () Bool)

(assert (=> b!1392384 m!1568271))

(declare-fun m!1568273 () Bool)

(assert (=> b!1392384 m!1568273))

(assert (=> b!1392384 m!1568255))

(assert (=> b!1392384 m!1568271))

(assert (=> b!1392384 m!1568261))

(declare-fun m!1568275 () Bool)

(assert (=> b!1392384 m!1568275))

(declare-fun m!1568277 () Bool)

(assert (=> b!1392384 m!1568277))

(declare-fun m!1568279 () Bool)

(assert (=> b!1392384 m!1568279))

(declare-fun m!1568281 () Bool)

(assert (=> b!1392384 m!1568281))

(declare-fun m!1568283 () Bool)

(assert (=> b!1392384 m!1568283))

(declare-fun m!1568285 () Bool)

(assert (=> b!1392384 m!1568285))

(assert (=> b!1392384 m!1568257))

(assert (=> b!1392384 m!1568285))

(assert (=> b!1392384 m!1568263))

(declare-fun m!1568287 () Bool)

(assert (=> b!1392384 m!1568287))

(declare-fun m!1568289 () Bool)

(assert (=> b!1392384 m!1568289))

(declare-fun m!1568291 () Bool)

(assert (=> b!1392384 m!1568291))

(assert (=> b!1392384 m!1568279))

(declare-fun m!1568293 () Bool)

(assert (=> b!1392384 m!1568293))

(assert (=> b!1392384 m!1568233))

(declare-fun m!1568295 () Bool)

(assert (=> b!1392384 m!1568295))

(declare-fun m!1568297 () Bool)

(assert (=> b!1392384 m!1568297))

(assert (=> b!1392384 m!1568255))

(declare-fun m!1568299 () Bool)

(assert (=> b!1392384 m!1568299))

(assert (=> b!1392384 m!1567485))

(assert (=> b!1392384 m!1568279))

(declare-fun m!1568301 () Bool)

(assert (=> b!1392384 m!1568301))

(declare-fun m!1568303 () Bool)

(assert (=> b!1392384 m!1568303))

(declare-fun m!1568305 () Bool)

(assert (=> b!1392384 m!1568305))

(assert (=> b!1392384 m!1568303))

(assert (=> b!1392384 m!1568277))

(declare-fun m!1568307 () Bool)

(assert (=> b!1392384 m!1568307))

(assert (=> b!1392384 m!1568295))

(declare-fun m!1568309 () Bool)

(assert (=> b!1392384 m!1568309))

(assert (=> b!1392384 m!1567431))

(assert (=> b!1392384 m!1568299))

(declare-fun m!1568311 () Bool)

(assert (=> b!1392384 m!1568311))

(assert (=> d!397570 d!398512))

(declare-fun d!398514 () Bool)

(declare-fun c!229321 () Bool)

(assert (=> d!398514 (= c!229321 ((_ is Nil!14107) (usedCharacters!254 (regex!2443 (rule!4204 t1!34)))))))

(declare-fun e!889261 () (InoxSet C!7804))

(assert (=> d!398514 (= (content!2079 (usedCharacters!254 (regex!2443 (rule!4204 t1!34)))) e!889261)))

(declare-fun b!1392388 () Bool)

(assert (=> b!1392388 (= e!889261 ((as const (Array C!7804 Bool)) false))))

(declare-fun b!1392389 () Bool)

(assert (=> b!1392389 (= e!889261 ((_ map or) (store ((as const (Array C!7804 Bool)) false) (h!19508 (usedCharacters!254 (regex!2443 (rule!4204 t1!34)))) true) (content!2079 (t!122412 (usedCharacters!254 (regex!2443 (rule!4204 t1!34)))))))))

(assert (= (and d!398514 c!229321) b!1392388))

(assert (= (and d!398514 (not c!229321)) b!1392389))

(declare-fun m!1568313 () Bool)

(assert (=> b!1392389 m!1568313))

(assert (=> b!1392389 m!1566441))

(assert (=> d!397444 d!398514))

(declare-fun d!398516 () Bool)

(declare-fun lt!463349 () Bool)

(assert (=> d!398516 (= lt!463349 (select (content!2080 (t!122413 rules!2550)) (rule!4204 t2!34)))))

(declare-fun e!889262 () Bool)

(assert (=> d!398516 (= lt!463349 e!889262)))

(declare-fun res!628597 () Bool)

(assert (=> d!398516 (=> (not res!628597) (not e!889262))))

(assert (=> d!398516 (= res!628597 ((_ is Cons!14108) (t!122413 rules!2550)))))

(assert (=> d!398516 (= (contains!2709 (t!122413 rules!2550) (rule!4204 t2!34)) lt!463349)))

(declare-fun b!1392390 () Bool)

(declare-fun e!889263 () Bool)

(assert (=> b!1392390 (= e!889262 e!889263)))

(declare-fun res!628598 () Bool)

(assert (=> b!1392390 (=> res!628598 e!889263)))

(assert (=> b!1392390 (= res!628598 (= (h!19509 (t!122413 rules!2550)) (rule!4204 t2!34)))))

(declare-fun b!1392391 () Bool)

(assert (=> b!1392391 (= e!889263 (contains!2709 (t!122413 (t!122413 rules!2550)) (rule!4204 t2!34)))))

(assert (= (and d!398516 res!628597) b!1392390))

(assert (= (and b!1392390 (not res!628598)) b!1392391))

(assert (=> d!398516 m!1566361))

(declare-fun m!1568315 () Bool)

(assert (=> d!398516 m!1568315))

(declare-fun m!1568317 () Bool)

(assert (=> b!1392391 m!1568317))

(assert (=> b!1390909 d!398516))

(assert (=> b!1390645 d!398000))

(assert (=> b!1390645 d!398002))

(declare-fun b!1392392 () Bool)

(declare-fun e!889266 () Rule!4686)

(assert (=> b!1392392 (= e!889266 (h!19509 (t!122413 rules!2550)))))

(declare-fun b!1392393 () Bool)

(declare-fun lt!463350 () Unit!20367)

(declare-fun Unit!20386 () Unit!20367)

(assert (=> b!1392393 (= lt!463350 Unit!20386)))

(assert (=> b!1392393 false))

(declare-fun e!889265 () Rule!4686)

(assert (=> b!1392393 (= e!889265 (head!2546 (t!122413 rules!2550)))))

(declare-fun d!398518 () Bool)

(declare-fun e!889264 () Bool)

(assert (=> d!398518 e!889264))

(declare-fun res!628600 () Bool)

(assert (=> d!398518 (=> (not res!628600) (not e!889264))))

(declare-fun lt!463351 () Rule!4686)

(assert (=> d!398518 (= res!628600 (dynLambda!6490 lambda!60112 lt!463351))))

(assert (=> d!398518 (= lt!463351 e!889266)))

(declare-fun c!229323 () Bool)

(declare-fun e!889267 () Bool)

(assert (=> d!398518 (= c!229323 e!889267)))

(declare-fun res!628599 () Bool)

(assert (=> d!398518 (=> (not res!628599) (not e!889267))))

(assert (=> d!398518 (= res!628599 ((_ is Cons!14108) (t!122413 rules!2550)))))

(assert (=> d!398518 (exists!530 (t!122413 rules!2550) lambda!60112)))

(assert (=> d!398518 (= (getWitness!418 (t!122413 rules!2550) lambda!60112) lt!463351)))

(declare-fun b!1392394 () Bool)

(assert (=> b!1392394 (= e!889267 (dynLambda!6490 lambda!60112 (h!19509 (t!122413 rules!2550))))))

(declare-fun b!1392395 () Bool)

(assert (=> b!1392395 (= e!889265 (getWitness!418 (t!122413 (t!122413 rules!2550)) lambda!60112))))

(declare-fun b!1392396 () Bool)

(assert (=> b!1392396 (= e!889266 e!889265)))

(declare-fun c!229322 () Bool)

(assert (=> b!1392396 (= c!229322 ((_ is Cons!14108) (t!122413 rules!2550)))))

(declare-fun b!1392397 () Bool)

(assert (=> b!1392397 (= e!889264 (contains!2709 (t!122413 rules!2550) lt!463351))))

(assert (= (and d!398518 res!628599) b!1392394))

(assert (= (and d!398518 c!229323) b!1392392))

(assert (= (and d!398518 (not c!229323)) b!1392396))

(assert (= (and b!1392396 c!229322) b!1392395))

(assert (= (and b!1392396 (not c!229322)) b!1392393))

(assert (= (and d!398518 res!628600) b!1392397))

(declare-fun b_lambda!43407 () Bool)

(assert (=> (not b_lambda!43407) (not d!398518)))

(declare-fun b_lambda!43409 () Bool)

(assert (=> (not b_lambda!43409) (not b!1392394)))

(declare-fun m!1568319 () Bool)

(assert (=> d!398518 m!1568319))

(declare-fun m!1568321 () Bool)

(assert (=> d!398518 m!1568321))

(declare-fun m!1568323 () Bool)

(assert (=> b!1392393 m!1568323))

(declare-fun m!1568325 () Bool)

(assert (=> b!1392397 m!1568325))

(declare-fun m!1568327 () Bool)

(assert (=> b!1392394 m!1568327))

(declare-fun m!1568329 () Bool)

(assert (=> b!1392395 m!1568329))

(assert (=> b!1390736 d!398518))

(declare-fun bs!337649 () Bool)

(declare-fun d!398520 () Bool)

(assert (= bs!337649 (and d!398520 d!398278)))

(declare-fun lambda!60224 () Int)

(assert (=> bs!337649 (= (= (toValue!3730 (transformation!2443 (h!19509 rules!2550))) (toValue!3730 (transformation!2443 (rule!4204 t1!34)))) (= lambda!60224 lambda!60213))))

(declare-fun bs!337650 () Bool)

(assert (= bs!337650 (and d!398520 d!398332)))

(assert (=> bs!337650 (= (= (toValue!3730 (transformation!2443 (h!19509 rules!2550))) (toValue!3730 (transformation!2443 (rule!4204 t2!34)))) (= lambda!60224 lambda!60214))))

(assert (=> d!398520 true))

(assert (=> d!398520 (< (dynLambda!6498 order!8643 (toValue!3730 (transformation!2443 (h!19509 rules!2550)))) (dynLambda!6502 order!8653 lambda!60224))))

(assert (=> d!398520 (= (equivClasses!907 (toChars!3589 (transformation!2443 (h!19509 rules!2550))) (toValue!3730 (transformation!2443 (h!19509 rules!2550)))) (Forall2!450 lambda!60224))))

(declare-fun bs!337651 () Bool)

(assert (= bs!337651 d!398520))

(declare-fun m!1568331 () Bool)

(assert (=> bs!337651 m!1568331))

(assert (=> b!1390940 d!398520))

(assert (=> d!397672 d!397634))

(declare-fun d!398522 () Bool)

(assert (=> d!398522 (not (matchR!1748 (regex!2443 (rule!4204 t1!34)) lt!462532))))

(assert (=> d!398522 true))

(declare-fun _$127!210 () Unit!20367)

(assert (=> d!398522 (= (choose!8557 (regex!2443 (rule!4204 t1!34)) lt!462532 (head!2543 lt!462532)) _$127!210)))

(declare-fun bs!337652 () Bool)

(assert (= bs!337652 d!398522))

(assert (=> bs!337652 m!1564915))

(assert (=> d!397672 d!398522))

(assert (=> d!397672 d!397974))

(declare-fun d!398524 () Bool)

(declare-fun lt!463352 () Int)

(assert (=> d!398524 (= lt!463352 (size!11605 (list!5477 (_2!7742 lt!462772))))))

(assert (=> d!398524 (= lt!463352 (size!11608 (c!228748 (_2!7742 lt!462772))))))

(assert (=> d!398524 (= (size!11596 (_2!7742 lt!462772)) lt!463352)))

(declare-fun bs!337653 () Bool)

(assert (= bs!337653 d!398524))

(assert (=> bs!337653 m!1565873))

(assert (=> bs!337653 m!1565873))

(declare-fun m!1568333 () Bool)

(assert (=> bs!337653 m!1568333))

(declare-fun m!1568335 () Bool)

(assert (=> bs!337653 m!1568335))

(assert (=> b!1390882 d!398524))

(declare-fun d!398526 () Bool)

(declare-fun lt!463353 () Int)

(assert (=> d!398526 (= lt!463353 (size!11605 (list!5477 lt!462514)))))

(assert (=> d!398526 (= lt!463353 (size!11608 (c!228748 lt!462514)))))

(assert (=> d!398526 (= (size!11596 lt!462514) lt!463353)))

(declare-fun bs!337654 () Bool)

(assert (= bs!337654 d!398526))

(assert (=> bs!337654 m!1564835))

(assert (=> bs!337654 m!1564835))

(assert (=> bs!337654 m!1566001))

(declare-fun m!1568337 () Bool)

(assert (=> bs!337654 m!1568337))

(assert (=> b!1390882 d!398526))

(assert (=> b!1390923 d!397630))

(declare-fun d!398528 () Bool)

(declare-fun lt!463354 () Int)

(assert (=> d!398528 (>= lt!463354 0)))

(declare-fun e!889268 () Int)

(assert (=> d!398528 (= lt!463354 e!889268)))

(declare-fun c!229325 () Bool)

(assert (=> d!398528 (= c!229325 ((_ is Nil!14107) (_2!7741 (get!4379 lt!462705))))))

(assert (=> d!398528 (= (size!11605 (_2!7741 (get!4379 lt!462705))) lt!463354)))

(declare-fun b!1392398 () Bool)

(assert (=> b!1392398 (= e!889268 0)))

(declare-fun b!1392399 () Bool)

(assert (=> b!1392399 (= e!889268 (+ 1 (size!11605 (t!122412 (_2!7741 (get!4379 lt!462705))))))))

(assert (= (and d!398528 c!229325) b!1392398))

(assert (= (and d!398528 (not c!229325)) b!1392399))

(declare-fun m!1568339 () Bool)

(assert (=> b!1392399 m!1568339))

(assert (=> b!1390681 d!398528))

(assert (=> b!1390681 d!397754))

(declare-fun d!398530 () Bool)

(declare-fun lt!463355 () Int)

(assert (=> d!398530 (>= lt!463355 0)))

(declare-fun e!889269 () Int)

(assert (=> d!398530 (= lt!463355 e!889269)))

(declare-fun c!229326 () Bool)

(assert (=> d!398530 (= c!229326 ((_ is Nil!14107) lt!462537))))

(assert (=> d!398530 (= (size!11605 lt!462537) lt!463355)))

(declare-fun b!1392400 () Bool)

(assert (=> b!1392400 (= e!889269 0)))

(declare-fun b!1392401 () Bool)

(assert (=> b!1392401 (= e!889269 (+ 1 (size!11605 (t!122412 lt!462537))))))

(assert (= (and d!398530 c!229326) b!1392400))

(assert (= (and d!398530 (not c!229326)) b!1392401))

(declare-fun m!1568341 () Bool)

(assert (=> b!1392401 m!1568341))

(assert (=> b!1390681 d!398530))

(assert (=> b!1390433 d!397750))

(declare-fun d!398532 () Bool)

(assert (=> d!398532 (= (apply!3551 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))) (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!462639))))) (dynLambda!6504 (toValue!3730 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639))))) (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!462639))))))))

(declare-fun b_lambda!43411 () Bool)

(assert (=> (not b_lambda!43411) (not d!398532)))

(declare-fun tb!72889 () Bool)

(declare-fun t!122527 () Bool)

(assert (=> (and b!1390097 (= (toValue!3730 (transformation!2443 (h!19509 rules!2550))) (toValue!3730 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))))) t!122527) tb!72889))

(declare-fun result!88570 () Bool)

(assert (=> tb!72889 (= result!88570 (inv!21 (dynLambda!6504 (toValue!3730 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639))))) (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!462639)))))))))

(declare-fun m!1568343 () Bool)

(assert (=> tb!72889 m!1568343))

(assert (=> d!398532 t!122527))

(declare-fun b_and!93247 () Bool)

(assert (= b_and!93239 (and (=> t!122527 result!88570) b_and!93247)))

(declare-fun tb!72891 () Bool)

(declare-fun t!122529 () Bool)

(assert (=> (and b!1390083 (= (toValue!3730 (transformation!2443 (rule!4204 t1!34))) (toValue!3730 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))))) t!122529) tb!72891))

(declare-fun result!88572 () Bool)

(assert (= result!88572 result!88570))

(assert (=> d!398532 t!122529))

(declare-fun b_and!93249 () Bool)

(assert (= b_and!93241 (and (=> t!122529 result!88572) b_and!93249)))

(declare-fun tb!72893 () Bool)

(declare-fun t!122531 () Bool)

(assert (=> (and b!1390092 (= (toValue!3730 (transformation!2443 (rule!4204 t2!34))) (toValue!3730 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))))) t!122531) tb!72893))

(declare-fun result!88574 () Bool)

(assert (= result!88574 result!88570))

(assert (=> d!398532 t!122531))

(declare-fun b_and!93251 () Bool)

(assert (= b_and!93243 (and (=> t!122531 result!88574) b_and!93251)))

(declare-fun t!122533 () Bool)

(declare-fun tb!72895 () Bool)

(assert (=> (and b!1390954 (= (toValue!3730 (transformation!2443 (h!19509 (t!122413 rules!2550)))) (toValue!3730 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))))) t!122533) tb!72895))

(declare-fun result!88576 () Bool)

(assert (= result!88576 result!88570))

(assert (=> d!398532 t!122533))

(declare-fun b_and!93253 () Bool)

(assert (= b_and!93245 (and (=> t!122533 result!88576) b_and!93253)))

(assert (=> d!398532 m!1565293))

(declare-fun m!1568345 () Bool)

(assert (=> d!398532 m!1568345))

(assert (=> b!1390433 d!398532))

(declare-fun d!398534 () Bool)

(assert (=> d!398534 (= (seqFromList!1648 (originalCharacters!3305 (_1!7741 (get!4379 lt!462639)))) (fromListB!726 (originalCharacters!3305 (_1!7741 (get!4379 lt!462639)))))))

(declare-fun bs!337655 () Bool)

(assert (= bs!337655 d!398534))

(declare-fun m!1568347 () Bool)

(assert (=> bs!337655 m!1568347))

(assert (=> b!1390433 d!398534))

(declare-fun b!1392411 () Bool)

(declare-fun res!628610 () Bool)

(declare-fun e!889273 () Bool)

(assert (=> b!1392411 (=> (not res!628610) (not e!889273))))

(declare-fun height!683 (Conc!4646) Int)

(declare-fun ++!3670 (Conc!4646 Conc!4646) Conc!4646)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1392411 (= res!628610 (<= (height!683 (++!3670 (c!228748 (charsOf!1415 t1!34)) (c!228748 (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0))))) (+ (max!0 (height!683 (c!228748 (charsOf!1415 t1!34))) (height!683 (c!228748 (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0))))) 1)))))

(declare-fun b!1392413 () Bool)

(declare-fun lt!463358 () BalanceConc!9232)

(assert (=> b!1392413 (= e!889273 (= (list!5477 lt!463358) (++!3664 (list!5477 (charsOf!1415 t1!34)) (list!5477 (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0))))))))

(declare-fun d!398536 () Bool)

(assert (=> d!398536 e!889273))

(declare-fun res!628609 () Bool)

(assert (=> d!398536 (=> (not res!628609) (not e!889273))))

(declare-fun appendAssocInst!291 (Conc!4646 Conc!4646) Bool)

(assert (=> d!398536 (= res!628609 (appendAssocInst!291 (c!228748 (charsOf!1415 t1!34)) (c!228748 (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0)))))))

(assert (=> d!398536 (= lt!463358 (BalanceConc!9233 (++!3670 (c!228748 (charsOf!1415 t1!34)) (c!228748 (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0))))))))

(assert (=> d!398536 (= (++!3665 (charsOf!1415 t1!34) (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0))) lt!463358)))

(declare-fun b!1392410 () Bool)

(declare-fun res!628611 () Bool)

(assert (=> b!1392410 (=> (not res!628611) (not e!889273))))

(assert (=> b!1392410 (= res!628611 (isBalanced!1375 (++!3670 (c!228748 (charsOf!1415 t1!34)) (c!228748 (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0))))))))

(declare-fun b!1392412 () Bool)

(declare-fun res!628612 () Bool)

(assert (=> b!1392412 (=> (not res!628612) (not e!889273))))

(assert (=> b!1392412 (= res!628612 (>= (height!683 (++!3670 (c!228748 (charsOf!1415 t1!34)) (c!228748 (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0))))) (max!0 (height!683 (c!228748 (charsOf!1415 t1!34))) (height!683 (c!228748 (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0)))))))))

(assert (= (and d!398536 res!628609) b!1392410))

(assert (= (and b!1392410 res!628611) b!1392411))

(assert (= (and b!1392411 res!628610) b!1392412))

(assert (= (and b!1392412 res!628612) b!1392413))

(declare-fun m!1568349 () Bool)

(assert (=> d!398536 m!1568349))

(declare-fun m!1568351 () Bool)

(assert (=> d!398536 m!1568351))

(assert (=> b!1392410 m!1568351))

(assert (=> b!1392410 m!1568351))

(declare-fun m!1568353 () Bool)

(assert (=> b!1392410 m!1568353))

(declare-fun m!1568355 () Bool)

(assert (=> b!1392411 m!1568355))

(assert (=> b!1392411 m!1568351))

(declare-fun m!1568357 () Bool)

(assert (=> b!1392411 m!1568357))

(declare-fun m!1568359 () Bool)

(assert (=> b!1392411 m!1568359))

(assert (=> b!1392411 m!1568351))

(assert (=> b!1392411 m!1568355))

(assert (=> b!1392411 m!1568359))

(declare-fun m!1568361 () Bool)

(assert (=> b!1392411 m!1568361))

(assert (=> b!1392412 m!1568355))

(assert (=> b!1392412 m!1568351))

(assert (=> b!1392412 m!1568357))

(assert (=> b!1392412 m!1568359))

(assert (=> b!1392412 m!1568351))

(assert (=> b!1392412 m!1568355))

(assert (=> b!1392412 m!1568359))

(assert (=> b!1392412 m!1568361))

(declare-fun m!1568363 () Bool)

(assert (=> b!1392413 m!1568363))

(assert (=> b!1392413 m!1564961))

(declare-fun m!1568365 () Bool)

(assert (=> b!1392413 m!1568365))

(assert (=> b!1392413 m!1565159))

(declare-fun m!1568367 () Bool)

(assert (=> b!1392413 m!1568367))

(assert (=> b!1392413 m!1568365))

(assert (=> b!1392413 m!1568367))

(declare-fun m!1568369 () Bool)

(assert (=> b!1392413 m!1568369))

(assert (=> d!397406 d!398536))

(declare-fun lt!463387 () Bool)

(declare-fun d!398538 () Bool)

(assert (=> d!398538 (= lt!463387 (prefixMatch!266 (rulesRegex!326 thiss!19762 rules!2550) (list!5477 (++!3665 (charsOf!1415 t1!34) (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0))))))))

(declare-datatypes ((Context!1226 0))(
  ( (Context!1227 (exprs!1113 List!14176)) )
))
(declare-fun prefixMatchZipperSequence!290 ((InoxSet Context!1226) BalanceConc!9232 Int) Bool)

(declare-fun focus!104 (Regex!3757) (InoxSet Context!1226))

(assert (=> d!398538 (= lt!463387 (prefixMatchZipperSequence!290 (focus!104 (rulesRegex!326 thiss!19762 rules!2550)) (++!3665 (charsOf!1415 t1!34) (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0))) 0))))

(declare-fun lt!463386 () Unit!20367)

(declare-fun lt!463388 () Unit!20367)

(assert (=> d!398538 (= lt!463386 lt!463388)))

(declare-fun lt!463383 () (InoxSet Context!1226))

(declare-fun lt!463379 () List!14173)

(declare-fun prefixMatchZipper!84 ((InoxSet Context!1226) List!14173) Bool)

(assert (=> d!398538 (= (prefixMatch!266 (rulesRegex!326 thiss!19762 rules!2550) lt!463379) (prefixMatchZipper!84 lt!463383 lt!463379))))

(declare-datatypes ((List!14180 0))(
  ( (Nil!14114) (Cons!14114 (h!19515 Context!1226) (t!122561 List!14180)) )
))
(declare-fun lt!463380 () List!14180)

(declare-fun prefixMatchZipperRegexEquiv!84 ((InoxSet Context!1226) List!14180 Regex!3757 List!14173) Unit!20367)

(assert (=> d!398538 (= lt!463388 (prefixMatchZipperRegexEquiv!84 lt!463383 lt!463380 (rulesRegex!326 thiss!19762 rules!2550) lt!463379))))

(assert (=> d!398538 (= lt!463379 (list!5477 (++!3665 (charsOf!1415 t1!34) (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0)))))))

(declare-fun toList!768 ((InoxSet Context!1226)) List!14180)

(assert (=> d!398538 (= lt!463380 (toList!768 (focus!104 (rulesRegex!326 thiss!19762 rules!2550))))))

(assert (=> d!398538 (= lt!463383 (focus!104 (rulesRegex!326 thiss!19762 rules!2550)))))

(declare-fun lt!463381 () Unit!20367)

(declare-fun lt!463385 () Unit!20367)

(assert (=> d!398538 (= lt!463381 lt!463385)))

(declare-fun lt!463384 () Int)

(declare-fun lt!463382 () (InoxSet Context!1226))

(declare-fun dropList!426 (BalanceConc!9232 Int) List!14173)

(assert (=> d!398538 (= (prefixMatchZipper!84 lt!463382 (dropList!426 (++!3665 (charsOf!1415 t1!34) (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0))) lt!463384)) (prefixMatchZipperSequence!290 lt!463382 (++!3665 (charsOf!1415 t1!34) (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0))) lt!463384))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!84 ((InoxSet Context!1226) BalanceConc!9232 Int) Unit!20367)

(assert (=> d!398538 (= lt!463385 (lemmaprefixMatchZipperSequenceEquivalent!84 lt!463382 (++!3665 (charsOf!1415 t1!34) (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0))) lt!463384))))

(assert (=> d!398538 (= lt!463384 0)))

(assert (=> d!398538 (= lt!463382 (focus!104 (rulesRegex!326 thiss!19762 rules!2550)))))

(assert (=> d!398538 (validRegex!1639 (rulesRegex!326 thiss!19762 rules!2550))))

(assert (=> d!398538 (= (prefixMatchZipperSequence!287 (rulesRegex!326 thiss!19762 rules!2550) (++!3665 (charsOf!1415 t1!34) (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0)))) lt!463387)))

(declare-fun bs!337656 () Bool)

(assert (= bs!337656 d!398538))

(assert (=> bs!337656 m!1565153))

(declare-fun m!1568371 () Bool)

(assert (=> bs!337656 m!1568371))

(assert (=> bs!337656 m!1565153))

(declare-fun m!1568373 () Bool)

(assert (=> bs!337656 m!1568373))

(assert (=> bs!337656 m!1564967))

(declare-fun m!1568375 () Bool)

(assert (=> bs!337656 m!1568375))

(assert (=> bs!337656 m!1564967))

(declare-fun m!1568377 () Bool)

(assert (=> bs!337656 m!1568377))

(assert (=> bs!337656 m!1565153))

(declare-fun m!1568379 () Bool)

(assert (=> bs!337656 m!1568379))

(declare-fun m!1568381 () Bool)

(assert (=> bs!337656 m!1568381))

(declare-fun m!1568383 () Bool)

(assert (=> bs!337656 m!1568383))

(assert (=> bs!337656 m!1564967))

(assert (=> bs!337656 m!1568379))

(declare-fun m!1568385 () Bool)

(assert (=> bs!337656 m!1568385))

(assert (=> bs!337656 m!1568377))

(assert (=> bs!337656 m!1565153))

(declare-fun m!1568387 () Bool)

(assert (=> bs!337656 m!1568387))

(assert (=> bs!337656 m!1564967))

(declare-fun m!1568389 () Bool)

(assert (=> bs!337656 m!1568389))

(assert (=> bs!337656 m!1568377))

(declare-fun m!1568391 () Bool)

(assert (=> bs!337656 m!1568391))

(assert (=> bs!337656 m!1565153))

(assert (=> bs!337656 m!1568381))

(declare-fun m!1568393 () Bool)

(assert (=> bs!337656 m!1568393))

(assert (=> bs!337656 m!1564967))

(declare-fun m!1568395 () Bool)

(assert (=> bs!337656 m!1568395))

(assert (=> d!397406 d!398538))

(declare-fun d!398540 () Bool)

(declare-fun e!889276 () Bool)

(assert (=> d!398540 e!889276))

(declare-fun res!628615 () Bool)

(assert (=> d!398540 (=> (not res!628615) (not e!889276))))

(declare-fun lt!463391 () BalanceConc!9232)

(assert (=> d!398540 (= res!628615 (= (list!5477 lt!463391) (Cons!14107 (apply!3549 (charsOf!1415 t2!34) 0) Nil!14107)))))

(declare-fun singleton!482 (C!7804) BalanceConc!9232)

(assert (=> d!398540 (= lt!463391 (singleton!482 (apply!3549 (charsOf!1415 t2!34) 0)))))

(assert (=> d!398540 (= (singletonSeq!1093 (apply!3549 (charsOf!1415 t2!34) 0)) lt!463391)))

(declare-fun b!1392416 () Bool)

(assert (=> b!1392416 (= e!889276 (isBalanced!1375 (c!228748 lt!463391)))))

(assert (= (and d!398540 res!628615) b!1392416))

(declare-fun m!1568397 () Bool)

(assert (=> d!398540 m!1568397))

(assert (=> d!398540 m!1565157))

(declare-fun m!1568399 () Bool)

(assert (=> d!398540 m!1568399))

(declare-fun m!1568401 () Bool)

(assert (=> b!1392416 m!1568401))

(assert (=> d!397406 d!398540))

(assert (=> d!397406 d!397662))

(declare-fun d!398542 () Bool)

(declare-fun lt!463392 () C!7804)

(assert (=> d!398542 (= lt!463392 (apply!3556 (list!5477 (charsOf!1415 t2!34)) 0))))

(assert (=> d!398542 (= lt!463392 (apply!3557 (c!228748 (charsOf!1415 t2!34)) 0))))

(declare-fun e!889277 () Bool)

(assert (=> d!398542 e!889277))

(declare-fun res!628616 () Bool)

(assert (=> d!398542 (=> (not res!628616) (not e!889277))))

(assert (=> d!398542 (= res!628616 (<= 0 0))))

(assert (=> d!398542 (= (apply!3549 (charsOf!1415 t2!34) 0) lt!463392)))

(declare-fun b!1392417 () Bool)

(assert (=> b!1392417 (= e!889277 (< 0 (size!11596 (charsOf!1415 t2!34))))))

(assert (= (and d!398542 res!628616) b!1392417))

(assert (=> d!398542 m!1564863))

(declare-fun m!1568403 () Bool)

(assert (=> d!398542 m!1568403))

(assert (=> d!398542 m!1568403))

(declare-fun m!1568405 () Bool)

(assert (=> d!398542 m!1568405))

(declare-fun m!1568407 () Bool)

(assert (=> d!398542 m!1568407))

(assert (=> b!1392417 m!1564863))

(declare-fun m!1568409 () Bool)

(assert (=> b!1392417 m!1568409))

(assert (=> d!397406 d!398542))

(assert (=> d!397406 d!397660))

(assert (=> d!397406 d!397632))

(declare-fun d!398544 () Bool)

(declare-fun res!628617 () Bool)

(declare-fun e!889278 () Bool)

(assert (=> d!398544 (=> res!628617 e!889278)))

(assert (=> d!398544 (= res!628617 ((_ is Nil!14108) rules!2550))))

(assert (=> d!398544 (= (forall!3434 rules!2550 lambda!60119) e!889278)))

(declare-fun b!1392418 () Bool)

(declare-fun e!889279 () Bool)

(assert (=> b!1392418 (= e!889278 e!889279)))

(declare-fun res!628618 () Bool)

(assert (=> b!1392418 (=> (not res!628618) (not e!889279))))

(assert (=> b!1392418 (= res!628618 (dynLambda!6490 lambda!60119 (h!19509 rules!2550)))))

(declare-fun b!1392419 () Bool)

(assert (=> b!1392419 (= e!889279 (forall!3434 (t!122413 rules!2550) lambda!60119))))

(assert (= (and d!398544 (not res!628617)) b!1392418))

(assert (= (and b!1392418 res!628618) b!1392419))

(declare-fun b_lambda!43413 () Bool)

(assert (=> (not b_lambda!43413) (not b!1392418)))

(declare-fun m!1568411 () Bool)

(assert (=> b!1392418 m!1568411))

(declare-fun m!1568413 () Bool)

(assert (=> b!1392419 m!1568413))

(assert (=> d!397362 d!398544))

(declare-fun d!398546 () Bool)

(declare-fun res!628621 () List!14173)

(assert (=> d!398546 (dynLambda!6494 lambda!60109 res!628621)))

(declare-fun e!889282 () Bool)

(assert (=> d!398546 e!889282))

(assert (=> d!398546 (= (choose!8553 lambda!60109) res!628621)))

(declare-fun b!1392422 () Bool)

(declare-fun tp!397212 () Bool)

(assert (=> b!1392422 (= e!889282 (and tp_is_empty!6787 tp!397212))))

(assert (= (and d!398546 ((_ is Cons!14107) res!628621)) b!1392422))

(declare-fun b_lambda!43415 () Bool)

(assert (=> (not b_lambda!43415) (not d!398546)))

(declare-fun m!1568415 () Bool)

(assert (=> d!398546 m!1568415))

(assert (=> d!397618 d!398546))

(assert (=> d!397618 d!397558))

(declare-fun b!1392423 () Bool)

(declare-fun e!889287 () Bool)

(assert (=> b!1392423 (= e!889287 (= (head!2543 lt!462770) (c!228749 lt!462518)))))

(declare-fun b!1392424 () Bool)

(declare-fun res!628625 () Bool)

(assert (=> b!1392424 (=> (not res!628625) (not e!889287))))

(assert (=> b!1392424 (= res!628625 (isEmpty!8550 (tail!2020 lt!462770)))))

(declare-fun d!398548 () Bool)

(declare-fun e!889288 () Bool)

(assert (=> d!398548 e!889288))

(declare-fun c!229332 () Bool)

(assert (=> d!398548 (= c!229332 ((_ is EmptyExpr!3757) lt!462518))))

(declare-fun lt!463393 () Bool)

(declare-fun e!889289 () Bool)

(assert (=> d!398548 (= lt!463393 e!889289)))

(declare-fun c!229330 () Bool)

(assert (=> d!398548 (= c!229330 (isEmpty!8550 lt!462770))))

(assert (=> d!398548 (validRegex!1639 lt!462518)))

(assert (=> d!398548 (= (matchR!1748 lt!462518 lt!462770) lt!463393)))

(declare-fun b!1392425 () Bool)

(declare-fun res!628627 () Bool)

(assert (=> b!1392425 (=> (not res!628627) (not e!889287))))

(declare-fun call!93161 () Bool)

(assert (=> b!1392425 (= res!628627 (not call!93161))))

(declare-fun b!1392426 () Bool)

(declare-fun e!889286 () Bool)

(assert (=> b!1392426 (= e!889288 e!889286)))

(declare-fun c!229331 () Bool)

(assert (=> b!1392426 (= c!229331 ((_ is EmptyLang!3757) lt!462518))))

(declare-fun b!1392427 () Bool)

(assert (=> b!1392427 (= e!889289 (nullable!1219 lt!462518))))

(declare-fun b!1392428 () Bool)

(declare-fun res!628624 () Bool)

(declare-fun e!889283 () Bool)

(assert (=> b!1392428 (=> res!628624 e!889283)))

(assert (=> b!1392428 (= res!628624 (not ((_ is ElementMatch!3757) lt!462518)))))

(assert (=> b!1392428 (= e!889286 e!889283)))

(declare-fun b!1392429 () Bool)

(declare-fun res!628626 () Bool)

(declare-fun e!889284 () Bool)

(assert (=> b!1392429 (=> res!628626 e!889284)))

(assert (=> b!1392429 (= res!628626 (not (isEmpty!8550 (tail!2020 lt!462770))))))

(declare-fun b!1392430 () Bool)

(declare-fun e!889285 () Bool)

(assert (=> b!1392430 (= e!889285 e!889284)))

(declare-fun res!628623 () Bool)

(assert (=> b!1392430 (=> res!628623 e!889284)))

(assert (=> b!1392430 (= res!628623 call!93161)))

(declare-fun b!1392431 () Bool)

(declare-fun res!628629 () Bool)

(assert (=> b!1392431 (=> res!628629 e!889283)))

(assert (=> b!1392431 (= res!628629 e!889287)))

(declare-fun res!628628 () Bool)

(assert (=> b!1392431 (=> (not res!628628) (not e!889287))))

(assert (=> b!1392431 (= res!628628 lt!463393)))

(declare-fun b!1392432 () Bool)

(assert (=> b!1392432 (= e!889286 (not lt!463393))))

(declare-fun bm!93156 () Bool)

(assert (=> bm!93156 (= call!93161 (isEmpty!8550 lt!462770))))

(declare-fun b!1392433 () Bool)

(assert (=> b!1392433 (= e!889288 (= lt!463393 call!93161))))

(declare-fun b!1392434 () Bool)

(assert (=> b!1392434 (= e!889284 (not (= (head!2543 lt!462770) (c!228749 lt!462518))))))

(declare-fun b!1392435 () Bool)

(assert (=> b!1392435 (= e!889283 e!889285)))

(declare-fun res!628622 () Bool)

(assert (=> b!1392435 (=> (not res!628622) (not e!889285))))

(assert (=> b!1392435 (= res!628622 (not lt!463393))))

(declare-fun b!1392436 () Bool)

(assert (=> b!1392436 (= e!889289 (matchR!1748 (derivativeStep!977 lt!462518 (head!2543 lt!462770)) (tail!2020 lt!462770)))))

(assert (= (and d!398548 c!229330) b!1392427))

(assert (= (and d!398548 (not c!229330)) b!1392436))

(assert (= (and d!398548 c!229332) b!1392433))

(assert (= (and d!398548 (not c!229332)) b!1392426))

(assert (= (and b!1392426 c!229331) b!1392432))

(assert (= (and b!1392426 (not c!229331)) b!1392428))

(assert (= (and b!1392428 (not res!628624)) b!1392431))

(assert (= (and b!1392431 res!628628) b!1392425))

(assert (= (and b!1392425 res!628627) b!1392424))

(assert (= (and b!1392424 res!628625) b!1392423))

(assert (= (and b!1392431 (not res!628629)) b!1392435))

(assert (= (and b!1392435 res!628622) b!1392430))

(assert (= (and b!1392430 (not res!628623)) b!1392429))

(assert (= (and b!1392429 (not res!628626)) b!1392434))

(assert (= (or b!1392433 b!1392425 b!1392430) bm!93156))

(declare-fun m!1568417 () Bool)

(assert (=> d!398548 m!1568417))

(assert (=> d!398548 m!1565561))

(assert (=> bm!93156 m!1568417))

(assert (=> b!1392424 m!1566145))

(assert (=> b!1392424 m!1566145))

(declare-fun m!1568419 () Bool)

(assert (=> b!1392424 m!1568419))

(assert (=> b!1392436 m!1566143))

(assert (=> b!1392436 m!1566143))

(declare-fun m!1568421 () Bool)

(assert (=> b!1392436 m!1568421))

(assert (=> b!1392436 m!1566145))

(assert (=> b!1392436 m!1568421))

(assert (=> b!1392436 m!1566145))

(declare-fun m!1568423 () Bool)

(assert (=> b!1392436 m!1568423))

(assert (=> b!1392434 m!1566143))

(assert (=> b!1392429 m!1566145))

(assert (=> b!1392429 m!1566145))

(assert (=> b!1392429 m!1568419))

(assert (=> b!1392423 m!1566143))

(assert (=> b!1392427 m!1565573))

(assert (=> bs!337436 d!398548))

(declare-fun b!1392437 () Bool)

(declare-fun e!889293 () Bool)

(declare-fun e!889292 () Bool)

(assert (=> b!1392437 (= e!889293 e!889292)))

(declare-fun res!628630 () Bool)

(assert (=> b!1392437 (= res!628630 (not (nullable!1219 (reg!4086 (ite c!228854 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228855 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34)))))))))))

(assert (=> b!1392437 (=> (not res!628630) (not e!889292))))

(declare-fun call!93162 () Bool)

(declare-fun bm!93157 () Bool)

(declare-fun c!229334 () Bool)

(assert (=> bm!93157 (= call!93162 (validRegex!1639 (ite c!229334 (regOne!8027 (ite c!228854 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228855 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34)))))) (regOne!8026 (ite c!228854 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228855 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34)))))))))))

(declare-fun b!1392438 () Bool)

(declare-fun res!628631 () Bool)

(declare-fun e!889296 () Bool)

(assert (=> b!1392438 (=> (not res!628631) (not e!889296))))

(assert (=> b!1392438 (= res!628631 call!93162)))

(declare-fun e!889295 () Bool)

(assert (=> b!1392438 (= e!889295 e!889296)))

(declare-fun b!1392439 () Bool)

(declare-fun call!93163 () Bool)

(assert (=> b!1392439 (= e!889296 call!93163)))

(declare-fun b!1392440 () Bool)

(declare-fun e!889290 () Bool)

(assert (=> b!1392440 (= e!889290 call!93163)))

(declare-fun b!1392441 () Bool)

(declare-fun call!93164 () Bool)

(assert (=> b!1392441 (= e!889292 call!93164)))

(declare-fun b!1392442 () Bool)

(declare-fun e!889294 () Bool)

(assert (=> b!1392442 (= e!889294 e!889293)))

(declare-fun c!229333 () Bool)

(assert (=> b!1392442 (= c!229333 ((_ is Star!3757) (ite c!228854 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228855 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34)))))))))

(declare-fun bm!93158 () Bool)

(assert (=> bm!93158 (= call!93163 call!93164)))

(declare-fun bm!93159 () Bool)

(assert (=> bm!93159 (= call!93164 (validRegex!1639 (ite c!229333 (reg!4086 (ite c!228854 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228855 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34)))))) (ite c!229334 (regTwo!8027 (ite c!228854 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228855 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34)))))) (regTwo!8026 (ite c!228854 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228855 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))))))))))

(declare-fun b!1392444 () Bool)

(declare-fun e!889291 () Bool)

(assert (=> b!1392444 (= e!889291 e!889290)))

(declare-fun res!628633 () Bool)

(assert (=> b!1392444 (=> (not res!628633) (not e!889290))))

(assert (=> b!1392444 (= res!628633 call!93162)))

(declare-fun b!1392445 () Bool)

(declare-fun res!628632 () Bool)

(assert (=> b!1392445 (=> res!628632 e!889291)))

(assert (=> b!1392445 (= res!628632 (not ((_ is Concat!6291) (ite c!228854 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228855 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))))))))

(assert (=> b!1392445 (= e!889295 e!889291)))

(declare-fun b!1392443 () Bool)

(assert (=> b!1392443 (= e!889293 e!889295)))

(assert (=> b!1392443 (= c!229334 ((_ is Union!3757) (ite c!228854 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228855 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34)))))))))

(declare-fun d!398550 () Bool)

(declare-fun res!628634 () Bool)

(assert (=> d!398550 (=> res!628634 e!889294)))

(assert (=> d!398550 (= res!628634 ((_ is ElementMatch!3757) (ite c!228854 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228855 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34)))))))))

(assert (=> d!398550 (= (validRegex!1639 (ite c!228854 (reg!4086 (regex!2443 (rule!4204 t2!34))) (ite c!228855 (regTwo!8027 (regex!2443 (rule!4204 t2!34))) (regTwo!8026 (regex!2443 (rule!4204 t2!34)))))) e!889294)))

(assert (= (and d!398550 (not res!628634)) b!1392442))

(assert (= (and b!1392442 c!229333) b!1392437))

(assert (= (and b!1392442 (not c!229333)) b!1392443))

(assert (= (and b!1392437 res!628630) b!1392441))

(assert (= (and b!1392443 c!229334) b!1392438))

(assert (= (and b!1392443 (not c!229334)) b!1392445))

(assert (= (and b!1392438 res!628631) b!1392439))

(assert (= (and b!1392445 (not res!628632)) b!1392444))

(assert (= (and b!1392444 res!628633) b!1392440))

(assert (= (or b!1392438 b!1392444) bm!93157))

(assert (= (or b!1392439 b!1392440) bm!93158))

(assert (= (or b!1392441 bm!93158) bm!93159))

(declare-fun m!1568425 () Bool)

(assert (=> b!1392437 m!1568425))

(declare-fun m!1568427 () Bool)

(assert (=> bm!93157 m!1568427))

(declare-fun m!1568429 () Bool)

(assert (=> bm!93159 m!1568429))

(assert (=> bm!93005 d!398550))

(assert (=> d!397566 d!397362))

(declare-fun d!398552 () Bool)

(assert (=> d!398552 (= ($colon$colon!221 (map!3125 (t!122413 rules!2550) lambda!60110) (dynLambda!6485 lambda!60110 (h!19509 rules!2550))) (Cons!14110 (dynLambda!6485 lambda!60110 (h!19509 rules!2550)) (map!3125 (t!122413 rules!2550) lambda!60110)))))

(assert (=> b!1390225 d!398552))

(declare-fun d!398554 () Bool)

(declare-fun lt!463394 () List!14176)

(assert (=> d!398554 (= (size!11601 lt!463394) (size!11602 (t!122413 rules!2550)))))

(declare-fun e!889297 () List!14176)

(assert (=> d!398554 (= lt!463394 e!889297)))

(declare-fun c!229335 () Bool)

(assert (=> d!398554 (= c!229335 ((_ is Nil!14108) (t!122413 rules!2550)))))

(assert (=> d!398554 (= (map!3125 (t!122413 rules!2550) lambda!60110) lt!463394)))

(declare-fun b!1392446 () Bool)

(assert (=> b!1392446 (= e!889297 Nil!14110)))

(declare-fun b!1392447 () Bool)

(assert (=> b!1392447 (= e!889297 ($colon$colon!221 (map!3125 (t!122413 (t!122413 rules!2550)) lambda!60110) (dynLambda!6485 lambda!60110 (h!19509 (t!122413 rules!2550)))))))

(assert (= (and d!398554 c!229335) b!1392446))

(assert (= (and d!398554 (not c!229335)) b!1392447))

(declare-fun b_lambda!43417 () Bool)

(assert (=> (not b_lambda!43417) (not b!1392447)))

(declare-fun m!1568431 () Bool)

(assert (=> d!398554 m!1568431))

(declare-fun m!1568433 () Bool)

(assert (=> d!398554 m!1568433))

(declare-fun m!1568435 () Bool)

(assert (=> b!1392447 m!1568435))

(declare-fun m!1568437 () Bool)

(assert (=> b!1392447 m!1568437))

(assert (=> b!1392447 m!1568435))

(assert (=> b!1392447 m!1568437))

(declare-fun m!1568439 () Bool)

(assert (=> b!1392447 m!1568439))

(assert (=> b!1390225 d!398554))

(declare-fun bs!337657 () Bool)

(declare-fun d!398556 () Bool)

(assert (= bs!337657 (and d!398556 d!398462)))

(declare-fun lambda!60225 () Int)

(assert (=> bs!337657 (not (= lambda!60225 lambda!60223))))

(declare-fun bs!337658 () Bool)

(assert (= bs!337658 (and d!398556 d!398376)))

(assert (=> bs!337658 (not (= lambda!60225 lambda!60217))))

(declare-fun bs!337659 () Bool)

(assert (= bs!337659 (and d!398556 b!1390077)))

(assert (=> bs!337659 (not (= lambda!60225 lambda!60113))))

(declare-fun bs!337660 () Bool)

(assert (= bs!337660 (and d!398556 d!397366)))

(assert (=> bs!337660 (not (= lambda!60225 lambda!60129))))

(declare-fun bs!337661 () Bool)

(assert (= bs!337661 (and d!398556 b!1390084)))

(assert (=> bs!337661 (not (= lambda!60225 lambda!60112))))

(declare-fun bs!337662 () Bool)

(assert (= bs!337662 (and d!398556 d!397362)))

(assert (=> bs!337662 (= (= lambda!60129 lambda!60112) (= lambda!60225 lambda!60119))))

(assert (=> d!398556 true))

(assert (=> d!398556 (< (dynLambda!6483 order!8629 lambda!60129) (dynLambda!6483 order!8629 lambda!60225))))

(assert (=> d!398556 (= (exists!530 rules!2550 lambda!60129) (not (forall!3434 rules!2550 lambda!60225)))))

(declare-fun bs!337663 () Bool)

(assert (= bs!337663 d!398556))

(declare-fun m!1568441 () Bool)

(assert (=> bs!337663 m!1568441))

(assert (=> d!397366 d!398556))

(declare-fun bs!337664 () Bool)

(declare-fun d!398558 () Bool)

(assert (= bs!337664 (and d!398558 d!398462)))

(declare-fun lambda!60228 () Int)

(assert (=> bs!337664 (not (= lambda!60228 lambda!60223))))

(declare-fun bs!337665 () Bool)

(assert (= bs!337665 (and d!398558 d!398376)))

(assert (=> bs!337665 (not (= lambda!60228 lambda!60217))))

(declare-fun bs!337666 () Bool)

(assert (= bs!337666 (and d!398558 b!1390077)))

(assert (=> bs!337666 (not (= lambda!60228 lambda!60113))))

(declare-fun bs!337667 () Bool)

(assert (= bs!337667 (and d!398558 d!397366)))

(assert (=> bs!337667 (= lambda!60228 lambda!60129)))

(declare-fun bs!337668 () Bool)

(assert (= bs!337668 (and d!398558 d!398556)))

(assert (=> bs!337668 (not (= lambda!60228 lambda!60225))))

(declare-fun bs!337669 () Bool)

(assert (= bs!337669 (and d!398558 b!1390084)))

(assert (=> bs!337669 (not (= lambda!60228 lambda!60112))))

(declare-fun bs!337670 () Bool)

(assert (= bs!337670 (and d!398558 d!397362)))

(assert (=> bs!337670 (not (= lambda!60228 lambda!60119))))

(assert (=> d!398558 true))

(assert (=> d!398558 true))

(assert (=> d!398558 (< (dynLambda!6484 order!8631 lambda!60110) (dynLambda!6483 order!8629 lambda!60228))))

(assert (=> d!398558 (exists!530 rules!2550 lambda!60228)))

(assert (=> d!398558 true))

(declare-fun _$24!130 () Unit!20367)

(assert (=> d!398558 (= (choose!8546 rules!2550 lambda!60110 lt!462519) _$24!130)))

(declare-fun bs!337671 () Bool)

(assert (= bs!337671 d!398558))

(declare-fun m!1568443 () Bool)

(assert (=> bs!337671 m!1568443))

(assert (=> d!397366 d!398558))

(assert (=> d!397366 d!397374))

(assert (=> d!397366 d!397376))

(declare-fun lt!463395 () Bool)

(declare-fun d!398560 () Bool)

(assert (=> d!398560 (= lt!463395 (select (content!2078 (map!3125 rules!2550 lambda!60110)) lt!462584))))

(declare-fun e!889298 () Bool)

(assert (=> d!398560 (= lt!463395 e!889298)))

(declare-fun res!628635 () Bool)

(assert (=> d!398560 (=> (not res!628635) (not e!889298))))

(assert (=> d!398560 (= res!628635 ((_ is Cons!14110) (map!3125 rules!2550 lambda!60110)))))

(assert (=> d!398560 (= (contains!2711 (map!3125 rules!2550 lambda!60110) lt!462584) lt!463395)))

(declare-fun b!1392450 () Bool)

(declare-fun e!889299 () Bool)

(assert (=> b!1392450 (= e!889298 e!889299)))

(declare-fun res!628636 () Bool)

(assert (=> b!1392450 (=> res!628636 e!889299)))

(assert (=> b!1392450 (= res!628636 (= (h!19511 (map!3125 rules!2550 lambda!60110)) lt!462584))))

(declare-fun b!1392451 () Bool)

(assert (=> b!1392451 (= e!889299 (contains!2711 (t!122415 (map!3125 rules!2550 lambda!60110)) lt!462584))))

(assert (= (and d!398560 res!628635) b!1392450))

(assert (= (and b!1392450 (not res!628636)) b!1392451))

(assert (=> d!398560 m!1564829))

(assert (=> d!398560 m!1565037))

(declare-fun m!1568445 () Bool)

(assert (=> d!398560 m!1568445))

(declare-fun m!1568447 () Bool)

(assert (=> b!1392451 m!1568447))

(assert (=> b!1390277 d!398560))

(declare-fun d!398562 () Bool)

(declare-fun lt!463398 () Int)

(assert (=> d!398562 (>= lt!463398 0)))

(declare-fun e!889302 () Int)

(assert (=> d!398562 (= lt!463398 e!889302)))

(declare-fun c!229338 () Bool)

(assert (=> d!398562 (= c!229338 ((_ is Nil!14110) lt!462566))))

(assert (=> d!398562 (= (size!11601 lt!462566) lt!463398)))

(declare-fun b!1392456 () Bool)

(assert (=> b!1392456 (= e!889302 0)))

(declare-fun b!1392457 () Bool)

(assert (=> b!1392457 (= e!889302 (+ 1 (size!11601 (t!122415 lt!462566))))))

(assert (= (and d!398562 c!229338) b!1392456))

(assert (= (and d!398562 (not c!229338)) b!1392457))

(declare-fun m!1568449 () Bool)

(assert (=> b!1392457 m!1568449))

(assert (=> d!397376 d!398562))

(declare-fun d!398564 () Bool)

(declare-fun lt!463401 () Int)

(assert (=> d!398564 (>= lt!463401 0)))

(declare-fun e!889305 () Int)

(assert (=> d!398564 (= lt!463401 e!889305)))

(declare-fun c!229341 () Bool)

(assert (=> d!398564 (= c!229341 ((_ is Nil!14108) rules!2550))))

(assert (=> d!398564 (= (size!11602 rules!2550) lt!463401)))

(declare-fun b!1392462 () Bool)

(assert (=> b!1392462 (= e!889305 0)))

(declare-fun b!1392463 () Bool)

(assert (=> b!1392463 (= e!889305 (+ 1 (size!11602 (t!122413 rules!2550))))))

(assert (= (and d!398564 c!229341) b!1392462))

(assert (= (and d!398564 (not c!229341)) b!1392463))

(assert (=> b!1392463 m!1568433))

(assert (=> d!397376 d!398564))

(declare-fun e!889310 () Bool)

(declare-fun b!1392464 () Bool)

(assert (=> b!1392464 (= e!889310 (= (head!2543 lt!462520) (c!228749 (h!19511 (map!3125 rules!2550 lambda!60110)))))))

(declare-fun b!1392465 () Bool)

(declare-fun res!628640 () Bool)

(assert (=> b!1392465 (=> (not res!628640) (not e!889310))))

(assert (=> b!1392465 (= res!628640 (isEmpty!8550 (tail!2020 lt!462520)))))

(declare-fun d!398566 () Bool)

(declare-fun e!889311 () Bool)

(assert (=> d!398566 e!889311))

(declare-fun c!229344 () Bool)

(assert (=> d!398566 (= c!229344 ((_ is EmptyExpr!3757) (h!19511 (map!3125 rules!2550 lambda!60110))))))

(declare-fun lt!463402 () Bool)

(declare-fun e!889312 () Bool)

(assert (=> d!398566 (= lt!463402 e!889312)))

(declare-fun c!229342 () Bool)

(assert (=> d!398566 (= c!229342 (isEmpty!8550 lt!462520))))

(assert (=> d!398566 (validRegex!1639 (h!19511 (map!3125 rules!2550 lambda!60110)))))

(assert (=> d!398566 (= (matchR!1748 (h!19511 (map!3125 rules!2550 lambda!60110)) lt!462520) lt!463402)))

(declare-fun b!1392466 () Bool)

(declare-fun res!628642 () Bool)

(assert (=> b!1392466 (=> (not res!628642) (not e!889310))))

(declare-fun call!93165 () Bool)

(assert (=> b!1392466 (= res!628642 (not call!93165))))

(declare-fun b!1392467 () Bool)

(declare-fun e!889309 () Bool)

(assert (=> b!1392467 (= e!889311 e!889309)))

(declare-fun c!229343 () Bool)

(assert (=> b!1392467 (= c!229343 ((_ is EmptyLang!3757) (h!19511 (map!3125 rules!2550 lambda!60110))))))

(declare-fun b!1392468 () Bool)

(assert (=> b!1392468 (= e!889312 (nullable!1219 (h!19511 (map!3125 rules!2550 lambda!60110))))))

(declare-fun b!1392469 () Bool)

(declare-fun res!628639 () Bool)

(declare-fun e!889306 () Bool)

(assert (=> b!1392469 (=> res!628639 e!889306)))

(assert (=> b!1392469 (= res!628639 (not ((_ is ElementMatch!3757) (h!19511 (map!3125 rules!2550 lambda!60110)))))))

(assert (=> b!1392469 (= e!889309 e!889306)))

(declare-fun b!1392470 () Bool)

(declare-fun res!628641 () Bool)

(declare-fun e!889307 () Bool)

(assert (=> b!1392470 (=> res!628641 e!889307)))

(assert (=> b!1392470 (= res!628641 (not (isEmpty!8550 (tail!2020 lt!462520))))))

(declare-fun b!1392471 () Bool)

(declare-fun e!889308 () Bool)

(assert (=> b!1392471 (= e!889308 e!889307)))

(declare-fun res!628638 () Bool)

(assert (=> b!1392471 (=> res!628638 e!889307)))

(assert (=> b!1392471 (= res!628638 call!93165)))

(declare-fun b!1392472 () Bool)

(declare-fun res!628644 () Bool)

(assert (=> b!1392472 (=> res!628644 e!889306)))

(assert (=> b!1392472 (= res!628644 e!889310)))

(declare-fun res!628643 () Bool)

(assert (=> b!1392472 (=> (not res!628643) (not e!889310))))

(assert (=> b!1392472 (= res!628643 lt!463402)))

(declare-fun b!1392473 () Bool)

(assert (=> b!1392473 (= e!889309 (not lt!463402))))

(declare-fun bm!93160 () Bool)

(assert (=> bm!93160 (= call!93165 (isEmpty!8550 lt!462520))))

(declare-fun b!1392474 () Bool)

(assert (=> b!1392474 (= e!889311 (= lt!463402 call!93165))))

(declare-fun b!1392475 () Bool)

(assert (=> b!1392475 (= e!889307 (not (= (head!2543 lt!462520) (c!228749 (h!19511 (map!3125 rules!2550 lambda!60110))))))))

(declare-fun b!1392476 () Bool)

(assert (=> b!1392476 (= e!889306 e!889308)))

(declare-fun res!628637 () Bool)

(assert (=> b!1392476 (=> (not res!628637) (not e!889308))))

(assert (=> b!1392476 (= res!628637 (not lt!463402))))

(declare-fun b!1392477 () Bool)

(assert (=> b!1392477 (= e!889312 (matchR!1748 (derivativeStep!977 (h!19511 (map!3125 rules!2550 lambda!60110)) (head!2543 lt!462520)) (tail!2020 lt!462520)))))

(assert (= (and d!398566 c!229342) b!1392468))

(assert (= (and d!398566 (not c!229342)) b!1392477))

(assert (= (and d!398566 c!229344) b!1392474))

(assert (= (and d!398566 (not c!229344)) b!1392467))

(assert (= (and b!1392467 c!229343) b!1392473))

(assert (= (and b!1392467 (not c!229343)) b!1392469))

(assert (= (and b!1392469 (not res!628639)) b!1392472))

(assert (= (and b!1392472 res!628643) b!1392466))

(assert (= (and b!1392466 res!628642) b!1392465))

(assert (= (and b!1392465 res!628640) b!1392464))

(assert (= (and b!1392472 (not res!628644)) b!1392476))

(assert (= (and b!1392476 res!628637) b!1392471))

(assert (= (and b!1392471 (not res!628638)) b!1392470))

(assert (= (and b!1392470 (not res!628641)) b!1392475))

(assert (= (or b!1392474 b!1392466 b!1392471) bm!93160))

(assert (=> d!398566 m!1565559))

(assert (=> d!398566 m!1566047))

(assert (=> bm!93160 m!1565559))

(assert (=> b!1392465 m!1565563))

(assert (=> b!1392465 m!1565563))

(assert (=> b!1392465 m!1565565))

(assert (=> b!1392477 m!1565567))

(assert (=> b!1392477 m!1565567))

(declare-fun m!1568451 () Bool)

(assert (=> b!1392477 m!1568451))

(assert (=> b!1392477 m!1565563))

(assert (=> b!1392477 m!1568451))

(assert (=> b!1392477 m!1565563))

(declare-fun m!1568453 () Bool)

(assert (=> b!1392477 m!1568453))

(assert (=> b!1392475 m!1565567))

(assert (=> b!1392470 m!1565563))

(assert (=> b!1392470 m!1565563))

(assert (=> b!1392470 m!1565565))

(assert (=> b!1392464 m!1565567))

(declare-fun m!1568455 () Bool)

(assert (=> b!1392468 m!1568455))

(assert (=> b!1390985 d!398566))

(declare-fun d!398568 () Bool)

(declare-fun lt!463403 () Bool)

(assert (=> d!398568 (= lt!463403 (select (content!2079 (t!122412 lt!462520)) lt!462513))))

(declare-fun e!889313 () Bool)

(assert (=> d!398568 (= lt!463403 e!889313)))

(declare-fun res!628645 () Bool)

(assert (=> d!398568 (=> (not res!628645) (not e!889313))))

(assert (=> d!398568 (= res!628645 ((_ is Cons!14107) (t!122412 lt!462520)))))

(assert (=> d!398568 (= (contains!2710 (t!122412 lt!462520) lt!462513) lt!463403)))

(declare-fun b!1392478 () Bool)

(declare-fun e!889314 () Bool)

(assert (=> b!1392478 (= e!889313 e!889314)))

(declare-fun res!628646 () Bool)

(assert (=> b!1392478 (=> res!628646 e!889314)))

(assert (=> b!1392478 (= res!628646 (= (h!19508 (t!122412 lt!462520)) lt!462513))))

(declare-fun b!1392479 () Bool)

(assert (=> b!1392479 (= e!889314 (contains!2710 (t!122412 (t!122412 lt!462520)) lt!462513))))

(assert (= (and d!398568 res!628645) b!1392478))

(assert (= (and b!1392478 (not res!628646)) b!1392479))

(assert (=> d!398568 m!1566067))

(declare-fun m!1568457 () Bool)

(assert (=> d!398568 m!1568457))

(declare-fun m!1568459 () Bool)

(assert (=> b!1392479 m!1568459))

(assert (=> b!1390918 d!398568))

(declare-fun d!398570 () Bool)

(declare-fun lt!463404 () List!14173)

(assert (=> d!398570 (= (++!3664 (t!122412 lt!462523) lt!463404) (tail!2020 lt!462520))))

(declare-fun e!889315 () List!14173)

(assert (=> d!398570 (= lt!463404 e!889315)))

(declare-fun c!229345 () Bool)

(assert (=> d!398570 (= c!229345 ((_ is Cons!14107) (t!122412 lt!462523)))))

(assert (=> d!398570 (>= (size!11605 (tail!2020 lt!462520)) (size!11605 (t!122412 lt!462523)))))

(assert (=> d!398570 (= (getSuffix!603 (tail!2020 lt!462520) (t!122412 lt!462523)) lt!463404)))

(declare-fun b!1392480 () Bool)

(assert (=> b!1392480 (= e!889315 (getSuffix!603 (tail!2020 (tail!2020 lt!462520)) (t!122412 (t!122412 lt!462523))))))

(declare-fun b!1392481 () Bool)

(assert (=> b!1392481 (= e!889315 (tail!2020 lt!462520))))

(assert (= (and d!398570 c!229345) b!1392480))

(assert (= (and d!398570 (not c!229345)) b!1392481))

(declare-fun m!1568461 () Bool)

(assert (=> d!398570 m!1568461))

(assert (=> d!398570 m!1565563))

(declare-fun m!1568463 () Bool)

(assert (=> d!398570 m!1568463))

(assert (=> d!398570 m!1566205))

(assert (=> b!1392480 m!1565563))

(assert (=> b!1392480 m!1568145))

(assert (=> b!1392480 m!1568145))

(declare-fun m!1568465 () Bool)

(assert (=> b!1392480 m!1568465))

(assert (=> b!1390874 d!398570))

(assert (=> b!1390874 d!398002))

(declare-fun d!398572 () Bool)

(assert (=> d!398572 (= (nullable!1219 (reg!4086 (regex!2443 (rule!4204 t2!34)))) (nullableFct!290 (reg!4086 (regex!2443 (rule!4204 t2!34)))))))

(declare-fun bs!337672 () Bool)

(assert (= bs!337672 d!398572))

(declare-fun m!1568467 () Bool)

(assert (=> bs!337672 m!1568467))

(assert (=> b!1390573 d!398572))

(declare-fun tp!397219 () Bool)

(declare-fun e!889321 () Bool)

(declare-fun tp!397221 () Bool)

(declare-fun b!1392490 () Bool)

(assert (=> b!1392490 (= e!889321 (and (inv!18448 (left!12053 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34))))) tp!397219 (inv!18448 (right!12383 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34))))) tp!397221))))

(declare-fun b!1392492 () Bool)

(declare-fun e!889320 () Bool)

(declare-fun tp!397220 () Bool)

(assert (=> b!1392492 (= e!889320 tp!397220)))

(declare-fun b!1392491 () Bool)

(declare-fun inv!18454 (IArray!9297) Bool)

(assert (=> b!1392491 (= e!889321 (and (inv!18454 (xs!7373 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34))))) e!889320))))

(assert (=> b!1390346 (= tp!397120 (and (inv!18448 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34)))) e!889321))))

(assert (= (and b!1390346 ((_ is Node!4646) (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34))))) b!1392490))

(assert (= b!1392491 b!1392492))

(assert (= (and b!1390346 ((_ is Leaf!7064) (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t2!34))) (value!79258 t2!34))))) b!1392491))

(declare-fun m!1568469 () Bool)

(assert (=> b!1392490 m!1568469))

(declare-fun m!1568471 () Bool)

(assert (=> b!1392490 m!1568471))

(declare-fun m!1568473 () Bool)

(assert (=> b!1392491 m!1568473))

(assert (=> b!1390346 m!1565195))

(declare-fun b!1392495 () Bool)

(declare-fun e!889322 () Bool)

(declare-fun tp!397226 () Bool)

(assert (=> b!1392495 (= e!889322 tp!397226)))

(declare-fun b!1392494 () Bool)

(declare-fun tp!397224 () Bool)

(declare-fun tp!397225 () Bool)

(assert (=> b!1392494 (= e!889322 (and tp!397224 tp!397225))))

(declare-fun b!1392496 () Bool)

(declare-fun tp!397222 () Bool)

(declare-fun tp!397223 () Bool)

(assert (=> b!1392496 (= e!889322 (and tp!397222 tp!397223))))

(assert (=> b!1390968 (= tp!397184 e!889322)))

(declare-fun b!1392493 () Bool)

(assert (=> b!1392493 (= e!889322 tp_is_empty!6787)))

(assert (= (and b!1390968 ((_ is ElementMatch!3757) (regOne!8027 (regex!2443 (rule!4204 t2!34))))) b!1392493))

(assert (= (and b!1390968 ((_ is Concat!6291) (regOne!8027 (regex!2443 (rule!4204 t2!34))))) b!1392494))

(assert (= (and b!1390968 ((_ is Star!3757) (regOne!8027 (regex!2443 (rule!4204 t2!34))))) b!1392495))

(assert (= (and b!1390968 ((_ is Union!3757) (regOne!8027 (regex!2443 (rule!4204 t2!34))))) b!1392496))

(declare-fun b!1392499 () Bool)

(declare-fun e!889323 () Bool)

(declare-fun tp!397231 () Bool)

(assert (=> b!1392499 (= e!889323 tp!397231)))

(declare-fun b!1392498 () Bool)

(declare-fun tp!397229 () Bool)

(declare-fun tp!397230 () Bool)

(assert (=> b!1392498 (= e!889323 (and tp!397229 tp!397230))))

(declare-fun b!1392500 () Bool)

(declare-fun tp!397227 () Bool)

(declare-fun tp!397228 () Bool)

(assert (=> b!1392500 (= e!889323 (and tp!397227 tp!397228))))

(assert (=> b!1390968 (= tp!397185 e!889323)))

(declare-fun b!1392497 () Bool)

(assert (=> b!1392497 (= e!889323 tp_is_empty!6787)))

(assert (= (and b!1390968 ((_ is ElementMatch!3757) (regTwo!8027 (regex!2443 (rule!4204 t2!34))))) b!1392497))

(assert (= (and b!1390968 ((_ is Concat!6291) (regTwo!8027 (regex!2443 (rule!4204 t2!34))))) b!1392498))

(assert (= (and b!1390968 ((_ is Star!3757) (regTwo!8027 (regex!2443 (rule!4204 t2!34))))) b!1392499))

(assert (= (and b!1390968 ((_ is Union!3757) (regTwo!8027 (regex!2443 (rule!4204 t2!34))))) b!1392500))

(declare-fun b!1392503 () Bool)

(declare-fun e!889324 () Bool)

(declare-fun tp!397236 () Bool)

(assert (=> b!1392503 (= e!889324 tp!397236)))

(declare-fun b!1392502 () Bool)

(declare-fun tp!397234 () Bool)

(declare-fun tp!397235 () Bool)

(assert (=> b!1392502 (= e!889324 (and tp!397234 tp!397235))))

(declare-fun b!1392504 () Bool)

(declare-fun tp!397232 () Bool)

(declare-fun tp!397233 () Bool)

(assert (=> b!1392504 (= e!889324 (and tp!397232 tp!397233))))

(assert (=> b!1390967 (= tp!397188 e!889324)))

(declare-fun b!1392501 () Bool)

(assert (=> b!1392501 (= e!889324 tp_is_empty!6787)))

(assert (= (and b!1390967 ((_ is ElementMatch!3757) (reg!4086 (regex!2443 (rule!4204 t2!34))))) b!1392501))

(assert (= (and b!1390967 ((_ is Concat!6291) (reg!4086 (regex!2443 (rule!4204 t2!34))))) b!1392502))

(assert (= (and b!1390967 ((_ is Star!3757) (reg!4086 (regex!2443 (rule!4204 t2!34))))) b!1392503))

(assert (= (and b!1390967 ((_ is Union!3757) (reg!4086 (regex!2443 (rule!4204 t2!34))))) b!1392504))

(declare-fun b!1392507 () Bool)

(declare-fun e!889325 () Bool)

(declare-fun tp!397241 () Bool)

(assert (=> b!1392507 (= e!889325 tp!397241)))

(declare-fun b!1392506 () Bool)

(declare-fun tp!397239 () Bool)

(declare-fun tp!397240 () Bool)

(assert (=> b!1392506 (= e!889325 (and tp!397239 tp!397240))))

(declare-fun b!1392508 () Bool)

(declare-fun tp!397237 () Bool)

(declare-fun tp!397238 () Bool)

(assert (=> b!1392508 (= e!889325 (and tp!397237 tp!397238))))

(assert (=> b!1390972 (= tp!397189 e!889325)))

(declare-fun b!1392505 () Bool)

(assert (=> b!1392505 (= e!889325 tp_is_empty!6787)))

(assert (= (and b!1390972 ((_ is ElementMatch!3757) (regOne!8027 (regex!2443 (rule!4204 t1!34))))) b!1392505))

(assert (= (and b!1390972 ((_ is Concat!6291) (regOne!8027 (regex!2443 (rule!4204 t1!34))))) b!1392506))

(assert (= (and b!1390972 ((_ is Star!3757) (regOne!8027 (regex!2443 (rule!4204 t1!34))))) b!1392507))

(assert (= (and b!1390972 ((_ is Union!3757) (regOne!8027 (regex!2443 (rule!4204 t1!34))))) b!1392508))

(declare-fun b!1392511 () Bool)

(declare-fun e!889326 () Bool)

(declare-fun tp!397246 () Bool)

(assert (=> b!1392511 (= e!889326 tp!397246)))

(declare-fun b!1392510 () Bool)

(declare-fun tp!397244 () Bool)

(declare-fun tp!397245 () Bool)

(assert (=> b!1392510 (= e!889326 (and tp!397244 tp!397245))))

(declare-fun b!1392512 () Bool)

(declare-fun tp!397242 () Bool)

(declare-fun tp!397243 () Bool)

(assert (=> b!1392512 (= e!889326 (and tp!397242 tp!397243))))

(assert (=> b!1390972 (= tp!397190 e!889326)))

(declare-fun b!1392509 () Bool)

(assert (=> b!1392509 (= e!889326 tp_is_empty!6787)))

(assert (= (and b!1390972 ((_ is ElementMatch!3757) (regTwo!8027 (regex!2443 (rule!4204 t1!34))))) b!1392509))

(assert (= (and b!1390972 ((_ is Concat!6291) (regTwo!8027 (regex!2443 (rule!4204 t1!34))))) b!1392510))

(assert (= (and b!1390972 ((_ is Star!3757) (regTwo!8027 (regex!2443 (rule!4204 t1!34))))) b!1392511))

(assert (= (and b!1390972 ((_ is Union!3757) (regTwo!8027 (regex!2443 (rule!4204 t1!34))))) b!1392512))

(declare-fun b!1392515 () Bool)

(declare-fun e!889327 () Bool)

(declare-fun tp!397251 () Bool)

(assert (=> b!1392515 (= e!889327 tp!397251)))

(declare-fun b!1392514 () Bool)

(declare-fun tp!397249 () Bool)

(declare-fun tp!397250 () Bool)

(assert (=> b!1392514 (= e!889327 (and tp!397249 tp!397250))))

(declare-fun b!1392516 () Bool)

(declare-fun tp!397247 () Bool)

(declare-fun tp!397248 () Bool)

(assert (=> b!1392516 (= e!889327 (and tp!397247 tp!397248))))

(assert (=> b!1390970 (= tp!397191 e!889327)))

(declare-fun b!1392513 () Bool)

(assert (=> b!1392513 (= e!889327 tp_is_empty!6787)))

(assert (= (and b!1390970 ((_ is ElementMatch!3757) (regOne!8026 (regex!2443 (rule!4204 t1!34))))) b!1392513))

(assert (= (and b!1390970 ((_ is Concat!6291) (regOne!8026 (regex!2443 (rule!4204 t1!34))))) b!1392514))

(assert (= (and b!1390970 ((_ is Star!3757) (regOne!8026 (regex!2443 (rule!4204 t1!34))))) b!1392515))

(assert (= (and b!1390970 ((_ is Union!3757) (regOne!8026 (regex!2443 (rule!4204 t1!34))))) b!1392516))

(declare-fun b!1392519 () Bool)

(declare-fun e!889328 () Bool)

(declare-fun tp!397256 () Bool)

(assert (=> b!1392519 (= e!889328 tp!397256)))

(declare-fun b!1392518 () Bool)

(declare-fun tp!397254 () Bool)

(declare-fun tp!397255 () Bool)

(assert (=> b!1392518 (= e!889328 (and tp!397254 tp!397255))))

(declare-fun b!1392520 () Bool)

(declare-fun tp!397252 () Bool)

(declare-fun tp!397253 () Bool)

(assert (=> b!1392520 (= e!889328 (and tp!397252 tp!397253))))

(assert (=> b!1390970 (= tp!397192 e!889328)))

(declare-fun b!1392517 () Bool)

(assert (=> b!1392517 (= e!889328 tp_is_empty!6787)))

(assert (= (and b!1390970 ((_ is ElementMatch!3757) (regTwo!8026 (regex!2443 (rule!4204 t1!34))))) b!1392517))

(assert (= (and b!1390970 ((_ is Concat!6291) (regTwo!8026 (regex!2443 (rule!4204 t1!34))))) b!1392518))

(assert (= (and b!1390970 ((_ is Star!3757) (regTwo!8026 (regex!2443 (rule!4204 t1!34))))) b!1392519))

(assert (= (and b!1390970 ((_ is Union!3757) (regTwo!8026 (regex!2443 (rule!4204 t1!34))))) b!1392520))

(declare-fun b!1392523 () Bool)

(declare-fun e!889329 () Bool)

(declare-fun tp!397261 () Bool)

(assert (=> b!1392523 (= e!889329 tp!397261)))

(declare-fun b!1392522 () Bool)

(declare-fun tp!397259 () Bool)

(declare-fun tp!397260 () Bool)

(assert (=> b!1392522 (= e!889329 (and tp!397259 tp!397260))))

(declare-fun b!1392524 () Bool)

(declare-fun tp!397257 () Bool)

(declare-fun tp!397258 () Bool)

(assert (=> b!1392524 (= e!889329 (and tp!397257 tp!397258))))

(assert (=> b!1390966 (= tp!397186 e!889329)))

(declare-fun b!1392521 () Bool)

(assert (=> b!1392521 (= e!889329 tp_is_empty!6787)))

(assert (= (and b!1390966 ((_ is ElementMatch!3757) (regOne!8026 (regex!2443 (rule!4204 t2!34))))) b!1392521))

(assert (= (and b!1390966 ((_ is Concat!6291) (regOne!8026 (regex!2443 (rule!4204 t2!34))))) b!1392522))

(assert (= (and b!1390966 ((_ is Star!3757) (regOne!8026 (regex!2443 (rule!4204 t2!34))))) b!1392523))

(assert (= (and b!1390966 ((_ is Union!3757) (regOne!8026 (regex!2443 (rule!4204 t2!34))))) b!1392524))

(declare-fun b!1392527 () Bool)

(declare-fun e!889330 () Bool)

(declare-fun tp!397266 () Bool)

(assert (=> b!1392527 (= e!889330 tp!397266)))

(declare-fun b!1392526 () Bool)

(declare-fun tp!397264 () Bool)

(declare-fun tp!397265 () Bool)

(assert (=> b!1392526 (= e!889330 (and tp!397264 tp!397265))))

(declare-fun b!1392528 () Bool)

(declare-fun tp!397262 () Bool)

(declare-fun tp!397263 () Bool)

(assert (=> b!1392528 (= e!889330 (and tp!397262 tp!397263))))

(assert (=> b!1390966 (= tp!397187 e!889330)))

(declare-fun b!1392525 () Bool)

(assert (=> b!1392525 (= e!889330 tp_is_empty!6787)))

(assert (= (and b!1390966 ((_ is ElementMatch!3757) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))) b!1392525))

(assert (= (and b!1390966 ((_ is Concat!6291) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))) b!1392526))

(assert (= (and b!1390966 ((_ is Star!3757) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))) b!1392527))

(assert (= (and b!1390966 ((_ is Union!3757) (regTwo!8026 (regex!2443 (rule!4204 t2!34))))) b!1392528))

(declare-fun b!1392531 () Bool)

(declare-fun e!889331 () Bool)

(declare-fun tp!397271 () Bool)

(assert (=> b!1392531 (= e!889331 tp!397271)))

(declare-fun b!1392530 () Bool)

(declare-fun tp!397269 () Bool)

(declare-fun tp!397270 () Bool)

(assert (=> b!1392530 (= e!889331 (and tp!397269 tp!397270))))

(declare-fun b!1392532 () Bool)

(declare-fun tp!397267 () Bool)

(declare-fun tp!397268 () Bool)

(assert (=> b!1392532 (= e!889331 (and tp!397267 tp!397268))))

(assert (=> b!1390971 (= tp!397193 e!889331)))

(declare-fun b!1392529 () Bool)

(assert (=> b!1392529 (= e!889331 tp_is_empty!6787)))

(assert (= (and b!1390971 ((_ is ElementMatch!3757) (reg!4086 (regex!2443 (rule!4204 t1!34))))) b!1392529))

(assert (= (and b!1390971 ((_ is Concat!6291) (reg!4086 (regex!2443 (rule!4204 t1!34))))) b!1392530))

(assert (= (and b!1390971 ((_ is Star!3757) (reg!4086 (regex!2443 (rule!4204 t1!34))))) b!1392531))

(assert (= (and b!1390971 ((_ is Union!3757) (reg!4086 (regex!2443 (rule!4204 t1!34))))) b!1392532))

(declare-fun b!1392535 () Bool)

(declare-fun b_free!33815 () Bool)

(declare-fun b_next!34519 () Bool)

(assert (=> b!1392535 (= b_free!33815 (not b_next!34519))))

(declare-fun tb!72897 () Bool)

(declare-fun t!122537 () Bool)

(assert (=> (and b!1392535 (= (toValue!3730 (transformation!2443 (h!19509 (t!122413 (t!122413 rules!2550))))) (toValue!3730 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))))) t!122537) tb!72897))

(declare-fun result!88580 () Bool)

(assert (= result!88580 result!88560))

(assert (=> d!398410 t!122537))

(declare-fun tb!72899 () Bool)

(declare-fun t!122539 () Bool)

(assert (=> (and b!1392535 (= (toValue!3730 (transformation!2443 (h!19509 (t!122413 (t!122413 rules!2550))))) (toValue!3730 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))))) t!122539) tb!72899))

(declare-fun result!88582 () Bool)

(assert (= result!88582 result!88570))

(assert (=> d!398532 t!122539))

(declare-fun tp!397275 () Bool)

(declare-fun b_and!93255 () Bool)

(assert (=> b!1392535 (= tp!397275 (and (=> t!122537 result!88580) (=> t!122539 result!88582) b_and!93255))))

(declare-fun b_free!33817 () Bool)

(declare-fun b_next!34521 () Bool)

(assert (=> b!1392535 (= b_free!33817 (not b_next!34521))))

(declare-fun t!122541 () Bool)

(declare-fun tb!72901 () Bool)

(assert (=> (and b!1392535 (= (toChars!3589 (transformation!2443 (h!19509 (t!122413 (t!122413 rules!2550))))) (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462639)))))) t!122541) tb!72901))

(declare-fun result!88584 () Bool)

(assert (= result!88584 result!88510))

(assert (=> d!397748 t!122541))

(declare-fun tb!72903 () Bool)

(declare-fun t!122543 () Bool)

(assert (=> (and b!1392535 (= (toChars!3589 (transformation!2443 (h!19509 (t!122413 (t!122413 rules!2550))))) (toChars!3589 (transformation!2443 (rule!4204 t1!34)))) t!122543) tb!72903))

(declare-fun result!88586 () Bool)

(assert (= result!88586 result!88476))

(assert (=> b!1390337 t!122543))

(declare-fun tb!72905 () Bool)

(declare-fun t!122545 () Bool)

(assert (=> (and b!1392535 (= (toChars!3589 (transformation!2443 (h!19509 (t!122413 (t!122413 rules!2550))))) (toChars!3589 (transformation!2443 (rule!4204 t2!34)))) t!122545) tb!72905))

(declare-fun result!88588 () Bool)

(assert (= result!88588 result!88484))

(assert (=> d!397632 t!122545))

(assert (=> d!397660 t!122543))

(assert (=> b!1390344 t!122545))

(declare-fun t!122547 () Bool)

(declare-fun tb!72907 () Bool)

(assert (=> (and b!1392535 (= (toChars!3589 (transformation!2443 (h!19509 (t!122413 (t!122413 rules!2550))))) (toChars!3589 (transformation!2443 (rule!4204 (_1!7741 (get!4379 lt!462705)))))) t!122547) tb!72907))

(declare-fun result!88590 () Bool)

(assert (= result!88590 result!88530))

(assert (=> d!398032 t!122547))

(declare-fun b_and!93257 () Bool)

(declare-fun tp!397274 () Bool)

(assert (=> b!1392535 (= tp!397274 (and (=> t!122541 result!88584) (=> t!122543 result!88586) (=> t!122545 result!88588) (=> t!122547 result!88590) b_and!93257))))

(declare-fun e!889333 () Bool)

(assert (=> b!1392535 (= e!889333 (and tp!397275 tp!397274))))

(declare-fun e!889332 () Bool)

(declare-fun tp!397272 () Bool)

(declare-fun b!1392534 () Bool)

(assert (=> b!1392534 (= e!889332 (and tp!397272 (inv!18441 (tag!2705 (h!19509 (t!122413 (t!122413 rules!2550))))) (inv!18445 (transformation!2443 (h!19509 (t!122413 (t!122413 rules!2550))))) e!889333))))

(declare-fun b!1392533 () Bool)

(declare-fun e!889334 () Bool)

(declare-fun tp!397273 () Bool)

(assert (=> b!1392533 (= e!889334 (and e!889332 tp!397273))))

(assert (=> b!1390952 (= tp!397171 e!889334)))

(assert (= b!1392534 b!1392535))

(assert (= b!1392533 b!1392534))

(assert (= (and b!1390952 ((_ is Cons!14108) (t!122413 (t!122413 rules!2550)))) b!1392533))

(declare-fun m!1568475 () Bool)

(assert (=> b!1392534 m!1568475))

(declare-fun m!1568477 () Bool)

(assert (=> b!1392534 m!1568477))

(declare-fun b!1392536 () Bool)

(declare-fun e!889336 () Bool)

(declare-fun tp!397276 () Bool)

(assert (=> b!1392536 (= e!889336 (and tp_is_empty!6787 tp!397276))))

(assert (=> b!1390978 (= tp!397197 e!889336)))

(assert (= (and b!1390978 ((_ is Cons!14107) (t!122412 (originalCharacters!3305 t1!34)))) b!1392536))

(declare-fun e!889338 () Bool)

(declare-fun b!1392537 () Bool)

(declare-fun tp!397277 () Bool)

(declare-fun tp!397279 () Bool)

(assert (=> b!1392537 (= e!889338 (and (inv!18448 (left!12053 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34))))) tp!397277 (inv!18448 (right!12383 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34))))) tp!397279))))

(declare-fun b!1392539 () Bool)

(declare-fun e!889337 () Bool)

(declare-fun tp!397278 () Bool)

(assert (=> b!1392539 (= e!889337 tp!397278)))

(declare-fun b!1392538 () Bool)

(assert (=> b!1392538 (= e!889338 (and (inv!18454 (xs!7373 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34))))) e!889337))))

(assert (=> b!1390343 (= tp!397119 (and (inv!18448 (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34)))) e!889338))))

(assert (= (and b!1390343 ((_ is Node!4646) (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34))))) b!1392537))

(assert (= b!1392538 b!1392539))

(assert (= (and b!1390343 ((_ is Leaf!7064) (c!228748 (dynLambda!6489 (toChars!3589 (transformation!2443 (rule!4204 t1!34))) (value!79258 t1!34))))) b!1392538))

(declare-fun m!1568479 () Bool)

(assert (=> b!1392537 m!1568479))

(declare-fun m!1568481 () Bool)

(assert (=> b!1392537 m!1568481))

(declare-fun m!1568483 () Bool)

(assert (=> b!1392538 m!1568483))

(assert (=> b!1390343 m!1565183))

(declare-fun b!1392542 () Bool)

(declare-fun e!889339 () Bool)

(declare-fun tp!397284 () Bool)

(assert (=> b!1392542 (= e!889339 tp!397284)))

(declare-fun b!1392541 () Bool)

(declare-fun tp!397282 () Bool)

(declare-fun tp!397283 () Bool)

(assert (=> b!1392541 (= e!889339 (and tp!397282 tp!397283))))

(declare-fun b!1392543 () Bool)

(declare-fun tp!397280 () Bool)

(declare-fun tp!397281 () Bool)

(assert (=> b!1392543 (= e!889339 (and tp!397280 tp!397281))))

(assert (=> b!1390953 (= tp!397170 e!889339)))

(declare-fun b!1392540 () Bool)

(assert (=> b!1392540 (= e!889339 tp_is_empty!6787)))

(assert (= (and b!1390953 ((_ is ElementMatch!3757) (regex!2443 (h!19509 (t!122413 rules!2550))))) b!1392540))

(assert (= (and b!1390953 ((_ is Concat!6291) (regex!2443 (h!19509 (t!122413 rules!2550))))) b!1392541))

(assert (= (and b!1390953 ((_ is Star!3757) (regex!2443 (h!19509 (t!122413 rules!2550))))) b!1392542))

(assert (= (and b!1390953 ((_ is Union!3757) (regex!2443 (h!19509 (t!122413 rules!2550))))) b!1392543))

(declare-fun b!1392546 () Bool)

(declare-fun e!889340 () Bool)

(declare-fun tp!397289 () Bool)

(assert (=> b!1392546 (= e!889340 tp!397289)))

(declare-fun b!1392545 () Bool)

(declare-fun tp!397287 () Bool)

(declare-fun tp!397288 () Bool)

(assert (=> b!1392545 (= e!889340 (and tp!397287 tp!397288))))

(declare-fun b!1392547 () Bool)

(declare-fun tp!397285 () Bool)

(declare-fun tp!397286 () Bool)

(assert (=> b!1392547 (= e!889340 (and tp!397285 tp!397286))))

(assert (=> b!1390982 (= tp!397198 e!889340)))

(declare-fun b!1392544 () Bool)

(assert (=> b!1392544 (= e!889340 tp_is_empty!6787)))

(assert (= (and b!1390982 ((_ is ElementMatch!3757) (regOne!8027 (regex!2443 (h!19509 rules!2550))))) b!1392544))

(assert (= (and b!1390982 ((_ is Concat!6291) (regOne!8027 (regex!2443 (h!19509 rules!2550))))) b!1392545))

(assert (= (and b!1390982 ((_ is Star!3757) (regOne!8027 (regex!2443 (h!19509 rules!2550))))) b!1392546))

(assert (= (and b!1390982 ((_ is Union!3757) (regOne!8027 (regex!2443 (h!19509 rules!2550))))) b!1392547))

(declare-fun b!1392550 () Bool)

(declare-fun e!889341 () Bool)

(declare-fun tp!397294 () Bool)

(assert (=> b!1392550 (= e!889341 tp!397294)))

(declare-fun b!1392549 () Bool)

(declare-fun tp!397292 () Bool)

(declare-fun tp!397293 () Bool)

(assert (=> b!1392549 (= e!889341 (and tp!397292 tp!397293))))

(declare-fun b!1392551 () Bool)

(declare-fun tp!397290 () Bool)

(declare-fun tp!397291 () Bool)

(assert (=> b!1392551 (= e!889341 (and tp!397290 tp!397291))))

(assert (=> b!1390982 (= tp!397199 e!889341)))

(declare-fun b!1392548 () Bool)

(assert (=> b!1392548 (= e!889341 tp_is_empty!6787)))

(assert (= (and b!1390982 ((_ is ElementMatch!3757) (regTwo!8027 (regex!2443 (h!19509 rules!2550))))) b!1392548))

(assert (= (and b!1390982 ((_ is Concat!6291) (regTwo!8027 (regex!2443 (h!19509 rules!2550))))) b!1392549))

(assert (= (and b!1390982 ((_ is Star!3757) (regTwo!8027 (regex!2443 (h!19509 rules!2550))))) b!1392550))

(assert (= (and b!1390982 ((_ is Union!3757) (regTwo!8027 (regex!2443 (h!19509 rules!2550))))) b!1392551))

(declare-fun b!1392554 () Bool)

(declare-fun e!889342 () Bool)

(declare-fun tp!397299 () Bool)

(assert (=> b!1392554 (= e!889342 tp!397299)))

(declare-fun b!1392553 () Bool)

(declare-fun tp!397297 () Bool)

(declare-fun tp!397298 () Bool)

(assert (=> b!1392553 (= e!889342 (and tp!397297 tp!397298))))

(declare-fun b!1392555 () Bool)

(declare-fun tp!397295 () Bool)

(declare-fun tp!397296 () Bool)

(assert (=> b!1392555 (= e!889342 (and tp!397295 tp!397296))))

(assert (=> b!1390980 (= tp!397200 e!889342)))

(declare-fun b!1392552 () Bool)

(assert (=> b!1392552 (= e!889342 tp_is_empty!6787)))

(assert (= (and b!1390980 ((_ is ElementMatch!3757) (regOne!8026 (regex!2443 (h!19509 rules!2550))))) b!1392552))

(assert (= (and b!1390980 ((_ is Concat!6291) (regOne!8026 (regex!2443 (h!19509 rules!2550))))) b!1392553))

(assert (= (and b!1390980 ((_ is Star!3757) (regOne!8026 (regex!2443 (h!19509 rules!2550))))) b!1392554))

(assert (= (and b!1390980 ((_ is Union!3757) (regOne!8026 (regex!2443 (h!19509 rules!2550))))) b!1392555))

(declare-fun b!1392558 () Bool)

(declare-fun e!889343 () Bool)

(declare-fun tp!397304 () Bool)

(assert (=> b!1392558 (= e!889343 tp!397304)))

(declare-fun b!1392557 () Bool)

(declare-fun tp!397302 () Bool)

(declare-fun tp!397303 () Bool)

(assert (=> b!1392557 (= e!889343 (and tp!397302 tp!397303))))

(declare-fun b!1392559 () Bool)

(declare-fun tp!397300 () Bool)

(declare-fun tp!397301 () Bool)

(assert (=> b!1392559 (= e!889343 (and tp!397300 tp!397301))))

(assert (=> b!1390980 (= tp!397201 e!889343)))

(declare-fun b!1392556 () Bool)

(assert (=> b!1392556 (= e!889343 tp_is_empty!6787)))

(assert (= (and b!1390980 ((_ is ElementMatch!3757) (regTwo!8026 (regex!2443 (h!19509 rules!2550))))) b!1392556))

(assert (= (and b!1390980 ((_ is Concat!6291) (regTwo!8026 (regex!2443 (h!19509 rules!2550))))) b!1392557))

(assert (= (and b!1390980 ((_ is Star!3757) (regTwo!8026 (regex!2443 (h!19509 rules!2550))))) b!1392558))

(assert (= (and b!1390980 ((_ is Union!3757) (regTwo!8026 (regex!2443 (h!19509 rules!2550))))) b!1392559))

(declare-fun b!1392562 () Bool)

(declare-fun e!889344 () Bool)

(declare-fun tp!397309 () Bool)

(assert (=> b!1392562 (= e!889344 tp!397309)))

(declare-fun b!1392561 () Bool)

(declare-fun tp!397307 () Bool)

(declare-fun tp!397308 () Bool)

(assert (=> b!1392561 (= e!889344 (and tp!397307 tp!397308))))

(declare-fun b!1392563 () Bool)

(declare-fun tp!397305 () Bool)

(declare-fun tp!397306 () Bool)

(assert (=> b!1392563 (= e!889344 (and tp!397305 tp!397306))))

(assert (=> b!1390981 (= tp!397202 e!889344)))

(declare-fun b!1392560 () Bool)

(assert (=> b!1392560 (= e!889344 tp_is_empty!6787)))

(assert (= (and b!1390981 ((_ is ElementMatch!3757) (reg!4086 (regex!2443 (h!19509 rules!2550))))) b!1392560))

(assert (= (and b!1390981 ((_ is Concat!6291) (reg!4086 (regex!2443 (h!19509 rules!2550))))) b!1392561))

(assert (= (and b!1390981 ((_ is Star!3757) (reg!4086 (regex!2443 (h!19509 rules!2550))))) b!1392562))

(assert (= (and b!1390981 ((_ is Union!3757) (reg!4086 (regex!2443 (h!19509 rules!2550))))) b!1392563))

(declare-fun b!1392564 () Bool)

(declare-fun e!889345 () Bool)

(declare-fun tp!397310 () Bool)

(assert (=> b!1392564 (= e!889345 (and tp_is_empty!6787 tp!397310))))

(assert (=> b!1390977 (= tp!397196 e!889345)))

(assert (= (and b!1390977 ((_ is Cons!14107) (t!122412 (originalCharacters!3305 t2!34)))) b!1392564))

(declare-fun b_lambda!43419 () Bool)

(assert (= b_lambda!43413 (or d!397362 b_lambda!43419)))

(declare-fun bs!337673 () Bool)

(declare-fun d!398574 () Bool)

(assert (= bs!337673 (and d!398574 d!397362)))

(assert (=> bs!337673 (= (dynLambda!6490 lambda!60119 (h!19509 rules!2550)) (not (dynLambda!6490 lambda!60112 (h!19509 rules!2550))))))

(declare-fun b_lambda!43449 () Bool)

(assert (=> (not b_lambda!43449) (not bs!337673)))

(assert (=> bs!337673 m!1565667))

(assert (=> b!1392418 d!398574))

(declare-fun b_lambda!43421 () Bool)

(assert (= b_lambda!43395 (or b!1390077 b_lambda!43421)))

(assert (=> d!398280 d!397690))

(declare-fun b_lambda!43423 () Bool)

(assert (= b_lambda!43409 (or b!1390084 b_lambda!43423)))

(declare-fun bs!337674 () Bool)

(declare-fun d!398576 () Bool)

(assert (= bs!337674 (and d!398576 b!1390084)))

(assert (=> bs!337674 (= (dynLambda!6490 lambda!60112 (h!19509 (t!122413 rules!2550))) (= (regex!2443 (h!19509 (t!122413 rules!2550))) lt!462519))))

(assert (=> b!1392394 d!398576))

(declare-fun b_lambda!43425 () Bool)

(assert (= b_lambda!43351 (or b!1390077 b_lambda!43425)))

(assert (=> d!397736 d!397692))

(declare-fun b_lambda!43427 () Bool)

(assert (= b_lambda!43359 (or d!397662 b_lambda!43427)))

(declare-fun bs!337675 () Bool)

(declare-fun d!398578 () Bool)

(assert (= bs!337675 (and d!398578 d!397662)))

(assert (=> bs!337675 (= (dynLambda!6485 lambda!60157 (h!19509 rules!2550)) (regex!2443 (h!19509 rules!2550)))))

(assert (=> b!1391244 d!398578))

(declare-fun b_lambda!43429 () Bool)

(assert (= b_lambda!43407 (or b!1390084 b_lambda!43429)))

(declare-fun bs!337676 () Bool)

(declare-fun d!398580 () Bool)

(assert (= bs!337676 (and d!398580 b!1390084)))

(assert (=> bs!337676 (= (dynLambda!6490 lambda!60112 lt!463351) (= (regex!2443 lt!463351) lt!462519))))

(assert (=> d!398518 d!398580))

(declare-fun b_lambda!43431 () Bool)

(assert (= b_lambda!43391 (or b!1390085 b_lambda!43431)))

(declare-fun bs!337677 () Bool)

(declare-fun d!398582 () Bool)

(assert (= bs!337677 (and d!398582 b!1390085)))

(declare-fun res!628647 () Bool)

(declare-fun e!889346 () Bool)

(assert (=> bs!337677 (=> (not res!628647) (not e!889346))))

(assert (=> bs!337677 (= res!628647 (validRegex!1639 (h!19511 (t!122415 (map!3125 rules!2550 lambda!60110)))))))

(assert (=> bs!337677 (= (dynLambda!6486 lambda!60111 (h!19511 (t!122415 (map!3125 rules!2550 lambda!60110)))) e!889346)))

(declare-fun b!1392565 () Bool)

(assert (=> b!1392565 (= e!889346 (matchR!1748 (h!19511 (t!122415 (map!3125 rules!2550 lambda!60110))) lt!462520))))

(assert (= (and bs!337677 res!628647) b!1392565))

(declare-fun m!1568485 () Bool)

(assert (=> bs!337677 m!1568485))

(declare-fun m!1568487 () Bool)

(assert (=> b!1392565 m!1568487))

(assert (=> b!1391940 d!398582))

(declare-fun b_lambda!43433 () Bool)

(assert (= b_lambda!43393 (or b!1390085 b_lambda!43433)))

(declare-fun bs!337678 () Bool)

(declare-fun d!398584 () Bool)

(assert (= bs!337678 (and d!398584 b!1390085)))

(declare-fun res!628648 () Bool)

(declare-fun e!889347 () Bool)

(assert (=> bs!337678 (=> (not res!628648) (not e!889347))))

(assert (=> bs!337678 (= res!628648 (validRegex!1639 lt!463156))))

(assert (=> bs!337678 (= (dynLambda!6486 lambda!60111 lt!463156) e!889347)))

(declare-fun b!1392566 () Bool)

(assert (=> b!1392566 (= e!889347 (matchR!1748 lt!463156 lt!462520))))

(assert (= (and bs!337678 res!628648) b!1392566))

(declare-fun m!1568489 () Bool)

(assert (=> bs!337678 m!1568489))

(declare-fun m!1568491 () Bool)

(assert (=> b!1392566 m!1568491))

(assert (=> d!398268 d!398584))

(declare-fun b_lambda!43435 () Bool)

(assert (= b_lambda!43405 (or d!397416 b_lambda!43435)))

(declare-fun bs!337679 () Bool)

(declare-fun d!398586 () Bool)

(assert (= bs!337679 (and d!398586 d!397416)))

(assert (=> bs!337679 (= (dynLambda!6486 lambda!60132 (h!19511 lt!462531)) (not (dynLambda!6486 lambda!60111 (h!19511 lt!462531))))))

(declare-fun b_lambda!43451 () Bool)

(assert (=> (not b_lambda!43451) (not bs!337679)))

(declare-fun m!1568493 () Bool)

(assert (=> bs!337679 m!1568493))

(assert (=> b!1392319 d!398586))

(declare-fun b_lambda!43437 () Bool)

(assert (= b_lambda!43353 (or b!1390077 b_lambda!43437)))

(declare-fun bs!337680 () Bool)

(declare-fun d!398588 () Bool)

(assert (= bs!337680 (and d!398588 b!1390077)))

(assert (=> bs!337680 (= (dynLambda!6490 lambda!60113 (h!19509 rules!2550)) (ruleValid!606 thiss!19762 (h!19509 rules!2550)))))

(assert (=> bs!337680 m!1566623))

(assert (=> b!1391048 d!398588))

(declare-fun b_lambda!43439 () Bool)

(assert (= b_lambda!43369 (or b!1390077 b_lambda!43439)))

(assert (=> d!397956 d!397686))

(declare-fun b_lambda!43441 () Bool)

(assert (= b_lambda!43415 (or b!1390096 b_lambda!43441)))

(declare-fun bs!337681 () Bool)

(declare-fun d!398590 () Bool)

(assert (= bs!337681 (and d!398590 b!1390096)))

(declare-fun res!628649 () Bool)

(declare-fun e!889348 () Bool)

(assert (=> bs!337681 (=> (not res!628649) (not e!889348))))

(assert (=> bs!337681 (= res!628649 (matchR!1748 lt!462518 res!628621))))

(assert (=> bs!337681 (= (dynLambda!6494 lambda!60109 res!628621) e!889348)))

(declare-fun b!1392567 () Bool)

(assert (=> b!1392567 (= e!889348 (isPrefix!1145 lt!462523 res!628621))))

(assert (= (and bs!337681 res!628649) b!1392567))

(declare-fun m!1568495 () Bool)

(assert (=> bs!337681 m!1568495))

(declare-fun m!1568497 () Bool)

(assert (=> b!1392567 m!1568497))

(assert (=> d!398546 d!398590))

(declare-fun b_lambda!43443 () Bool)

(assert (= b_lambda!43371 (or d!397420 b_lambda!43443)))

(declare-fun bs!337682 () Bool)

(declare-fun d!398592 () Bool)

(assert (= bs!337682 (and d!398592 d!397420)))

(assert (=> bs!337682 (= (dynLambda!6486 lambda!60139 (h!19511 (map!3125 rules!2550 lambda!60110))) (not (dynLambda!6486 lambda!60111 (h!19511 (map!3125 rules!2550 lambda!60110)))))))

(declare-fun b_lambda!43453 () Bool)

(assert (=> (not b_lambda!43453) (not bs!337682)))

(assert (=> bs!337682 m!1565121))

(assert (=> b!1391433 d!398592))

(declare-fun b_lambda!43445 () Bool)

(assert (= b_lambda!43357 (or d!397418 b_lambda!43445)))

(declare-fun bs!337683 () Bool)

(declare-fun d!398594 () Bool)

(assert (= bs!337683 (and d!398594 d!397418)))

(assert (=> bs!337683 (= (dynLambda!6486 lambda!60137 (h!19511 lt!462531)) (validRegex!1639 (h!19511 lt!462531)))))

(declare-fun m!1568499 () Bool)

(assert (=> bs!337683 m!1568499))

(assert (=> b!1391183 d!398594))

(declare-fun b_lambda!43447 () Bool)

(assert (= b_lambda!43417 (or b!1390085 b_lambda!43447)))

(declare-fun bs!337684 () Bool)

(declare-fun d!398596 () Bool)

(assert (= bs!337684 (and d!398596 b!1390085)))

(assert (=> bs!337684 (= (dynLambda!6485 lambda!60110 (h!19509 (t!122413 rules!2550))) (regex!2443 (h!19509 (t!122413 rules!2550))))))

(assert (=> b!1392447 d!398596))

(check-sat (not b_lambda!43325) (not d!397976) (not b!1392465) (not b_lambda!43339) (not b!1391432) (not b!1391029) (not d!398476) (not b_lambda!43429) (not b!1390995) (not d!397744) (not b!1391086) b_and!93257 (not b!1391040) (not d!398368) (not bm!93049) (not b!1392351) (not b!1392545) (not d!398474) (not d!398554) (not b!1391127) (not b!1391391) (not b!1392499) (not b!1392034) (not d!398294) (not bm!93160) (not d!398386) (not b!1391487) (not bm!93039) (not bm!93131) (not b!1392057) (not b!1392104) (not b!1391184) (not b!1392424) (not d!398288) (not b!1391103) (not d!398372) (not b!1392380) (not d!397724) (not b!1392567) (not b!1392551) (not b!1391945) (not b!1391079) (not b!1392054) (not b_lambda!43439) (not b!1391006) (not b!1392063) (not b!1392066) b_and!93213 (not bm!93134) (not b!1391939) (not b!1392526) (not b!1392534) (not b!1392555) (not d!398548) (not d!397826) (not d!397896) (not b!1391041) (not b!1392350) (not d!398516) (not d!398282) (not d!398390) (not b!1392393) (not b!1392325) (not b!1392451) (not b!1391229) (not d!398344) (not b!1392436) (not b!1391512) (not b!1391508) (not b!1391054) (not b!1392335) (not b!1391149) (not b!1392531) (not b_lambda!43341) (not b!1392490) (not b!1391244) (not d!398052) (not b_lambda!43331) (not bm!93145) (not b!1392412) (not d!397882) (not b!1391396) (not b!1390998) (not d!397824) (not b!1391941) (not b!1391082) (not b!1392110) (not b!1392043) (not d!398030) (not b!1391043) (not bm!93156) (not b!1392416) (not d!398526) (not b!1391964) (not d!398300) (not b!1392510) (not b!1392413) (not d!397964) (not b!1392183) (not b!1391529) (not b!1392550) (not b!1392239) (not b!1391415) (not b!1391393) (not d!398004) (not d!398540) (not b!1392121) (not d!398382) (not tb!72851) (not d!397732) (not b!1392411) (not b!1392036) (not b!1391137) (not b!1391930) (not b_lambda!43425) (not b!1392353) (not b!1391056) (not d!397800) (not d!397902) (not d!398504) (not b!1391510) (not b!1391052) (not b!1392566) (not b!1392537) (not b_lambda!43447) (not d!397960) (not d!398044) (not d!398400) (not b!1392197) (not b!1391925) (not bm!93045) (not b!1392506) (not b!1392055) (not b!1392463) (not bm!93028) (not bs!337678) (not d!397726) (not b_lambda!43451) (not b!1392422) (not b!1392038) (not d!398542) (not b!1392105) b_and!93253 (not b!1391120) (not b!1391289) (not b!1391231) (not b!1392330) (not b!1391016) (not b!1391003) (not d!398014) (not b!1392557) (not b!1392119) (not b!1392494) (not d!397970) (not b!1392386) (not d!397892) (not b!1392565) (not b!1391133) (not bm!93130) (not b!1392323) (not b!1392554) (not b!1391010) (not bm!93133) (not b!1391395) (not bm!93024) (not bm!93108) (not b!1392346) (not bs!337683) (not b!1391268) (not b_next!34505) (not d!397774) (not d!398384) (not d!398536) (not b_lambda!43327) (not b!1392122) (not b!1392543) (not d!398032) (not d!397794) (not bs!337680) (not b_lambda!43445) (not bm!93125) (not d!398480) (not b!1392184) (not b!1392236) (not b!1392059) (not b!1391122) (not b!1391502) (not bm!93046) (not bm!93152) (not b!1391068) (not b!1391139) (not d!398462) (not b!1391503) (not b!1391130) (not bm!93124) (not d!397884) (not d!398270) (not b!1392115) (not b!1391428) (not b!1392320) (not b!1392062) (not d!398024) (not b!1391051) (not bm!93153) (not b!1391466) (not d!397990) (not b!1391477) (not b!1391013) (not d!398284) (not b!1392264) (not d!398518) (not b!1392546) (not b!1392496) (not b_next!34519) (not b!1391394) (not b!1392262) (not b!1391513) (not d!397722) (not b_next!34509) (not d!398304) (not b!1392477) (not d!397890) (not b_lambda!43343) (not b!1392495) (not b!1391237) (not b!1391151) (not b!1392118) (not bm!93048) (not b!1391157) (not b!1391002) (not d!398356) (not b!1391058) (not bs!337677) (not b_lambda!43347) (not b!1391081) (not b!1391238) (not b!1391284) (not d!398568) (not b!1392321) (not b!1392127) (not b!1391511) (not d!397734) (not bm!93031) (not b!1391146) (not b!1392123) (not b!1391294) (not b!1391427) (not b!1392561) b_and!93251 (not d!397792) (not d!397818) (not b!1390999) (not b!1391233) (not bm!93053) (not d!398524) (not d!398558) (not b!1392389) (not b!1392503) (not b!1392306) (not d!398342) (not b_lambda!43419) (not d!397756) (not b!1392166) (not bm!93155) (not b!1392232) (not d!398318) (not bm!93129) (not b!1392084) (not bm!93137) (not b_lambda!43441) (not b!1392317) (not b!1392381) (not b!1391926) (not b!1391145) (not b!1391280) (not b!1391135) (not d!397842) (not b!1391118) (not b!1392307) (not d!398538) (not b!1392429) (not d!398512) (not b!1392355) (not d!398422) (not bm!93147) (not b!1392536) (not b!1392564) (not b!1391438) (not b!1392231) (not b!1392491) (not d!398502) (not b!1392108) (not b_lambda!43335) (not b!1392237) (not bm!93121) (not b!1391969) (not b!1392563) (not b!1392417) (not b!1392558) (not b_next!34501) (not d!398412) (not b!1391425) (not d!397752) (not b_lambda!43345) (not b!1391989) (not d!397878) (not b!1392179) (not b!1392562) (not bm!93043) (not b!1392423) (not b!1391485) (not d!398038) (not d!397986) (not d!397836) (not b!1392364) (not b!1392464) (not b!1392234) (not d!398490) (not b!1392492) (not b!1391004) (not d!398058) (not b!1392528) (not b!1391121) (not b!1392120) (not b!1392369) (not b_lambda!43329) (not b!1392138) b_and!93247 (not b!1392294) (not b!1392361) (not d!397966) (not b!1391077) (not d!398450) (not b!1392511) (not b!1391950) (not bm!93141) (not b!1391282) (not bm!93135) (not b!1391014) (not b!1391399) (not bm!93027) (not d!398416) (not b!1392457) (not d!398056) (not b!1392185) (not b!1392037) (not b!1392042) (not b!1392514) (not b!1391270) (not b!1392061) (not b_lambda!43337) (not bm!93040) (not b!1392144) (not b_lambda!43435) (not d!398376) (not b!1391001) (not d!398272) (not b!1392337) (not b!1391962) (not b!1392549) (not d!397810) (not b_next!34515) (not b_next!34517) (not b!1392190) (not b!1391150) (not d!397740) (not bm!93021) (not b!1392068) (not b!1392502) (not b!1392371) (not b!1392305) (not b_lambda!43427) (not b!1392117) (not b!1391505) (not b!1390997) (not b!1391530) (not b!1392349) (not b!1392075) (not d!397768) (not b!1392401) (not bm!93042) (not b!1391288) (not d!397860) (not b_lambda!43443) (not b_lambda!43375) (not bm!93159) (not b_lambda!43355) (not b!1391144) (not b!1392131) (not b!1392427) (not b!1391126) (not b_lambda!43333) (not b!1392479) (not d!398566) (not b!1392266) (not d!398034) (not d!398510) (not d!398320) (not d!398408) (not b!1392324) (not b!1392504) (not b_next!34507) (not d!397784) (not d!397720) (not d!398332) (not b!1392362) (not b!1392125) (not b!1391447) (not b!1392328) (not b!1392515) (not b!1390987) (not b!1392366) (not b!1392522) (not b!1392356) (not d!398012) (not d!398522) (not b!1392233) (not b_next!34503) (not d!397988) (not b!1391017) (not d!397832) (not b!1391414) (not tb!72833) (not b!1391509) (not b!1392437) (not d!398560) (not b!1390996) (not d!397770) (not tb!72889) (not b!1391938) (not b!1391987) (not b!1392523) (not b!1391434) (not b!1390346) (not bm!93140) (not d!397780) (not d!397782) (not b!1391085) (not b!1392410) b_and!93249 (not b!1392139) (not d!397888) (not d!397962) (not b_lambda!43437) (not b!1392035) (not b!1392547) (not b!1392357) (not d!397746) (not b!1391194) (not b!1392295) (not b!1391011) (not b!1391990) (not d!398350) (not b!1392277) (not b!1392524) (not d!398278) (not d!398482) (not b!1391464) b_and!93207 (not b!1392538) (not b!1391245) (not d!398570) (not b!1392073) (not b!1392508) (not d!397998) (not b!1391943) (not b!1391486) (not d!398378) (not bm!93149) (not d!398534) (not b!1391078) (not b!1392507) (not b!1391012) (not bm!93148) (not b_lambda!43433) (not b!1391075) (not b_lambda!43421) (not b!1391152) (not b!1391493) (not b!1391491) (not d!398340) (not b!1391991) (not b!1391263) (not d!398508) (not b_lambda!43431) (not d!397886) b_and!93255 (not b!1391141) (not b!1391027) (not b!1392195) (not bm!93038) (not b!1392512) (not b!1392167) (not b!1392532) (not d!397798) (not d!397772) (not b!1391101) (not d!398050) (not bm!93051) (not b!1392533) (not b!1391532) (not b!1392500) (not b!1392384) (not d!398414) (not b!1391164) (not b_lambda!43403) (not b!1391234) (not d!397790) (not b!1392129) (not d!398366) (not b!1392518) (not b!1392480) (not b!1392382) (not bm!93109) (not bs!337681) (not d!397880) (not b!1392447) (not b!1392360) (not d!397748) (not b!1392318) (not b!1392238) (not b!1392354) (not d!397958) (not b!1391462) (not b!1392149) b_and!93209 (not b_lambda!43449) (not b!1391102) (not b!1391429) (not b!1392520) (not b!1391397) (not bm!93022) (not b_next!34521) (not b!1392368) (not b!1391230) (not b!1392470) (not b!1392519) (not b!1391960) (not d!398268) (not bm!93139) (not d!398286) (not b!1392399) (not b!1392530) (not d!398380) (not b!1392142) (not b_lambda!43349) (not b!1391028) (not bm!93110) (not bm!93157) (not b!1392468) (not b!1392391) (not b!1392395) (not b!1392180) (not d!397846) (not b!1391495) (not b!1391420) (not d!397808) (not d!398494) (not b_lambda!43453) (not d!397776) b_and!93215 (not b!1391142) (not b!1392188) (not bm!93120) (not b!1392539) (not d!398572) (not d!397742) (not b!1392230) (not d!398520) (not b!1392542) (not b!1392206) (not b!1392559) tp_is_empty!6787 (not d!398436) (not b!1391158) (not b_lambda!43423) (not d!398274) (not b!1390988) (not b!1392434) (not b!1392475) (not d!397702) (not d!397866) (not d!397708) (not b!1391928) (not b!1391066) (not b!1392516) (not b!1392419) (not d!398488) (not b_lambda!43411) (not b!1391008) (not b_next!34499) (not d!398556) (not b!1392527) (not b!1390343) (not tb!72881) (not b!1391285) (not b!1392297) (not b!1392541) (not b!1391064) (not b!1392397) (not b!1392498) (not bm!93126) (not d!398428) (not b!1391147) (not b!1392087) (not b!1391398) (not b!1392151) (not bm!93138) (not b!1391418) (not b!1391494) (not b!1391049) (not b!1392039) (not b!1391507) (not b!1392553) (not d!398054) (not b!1392359) (not d!397788) (not b!1392020))
(check-sat b_and!93257 b_and!93213 b_and!93253 (not b_next!34505) b_and!93251 (not b_next!34501) b_and!93247 b_and!93249 b_and!93207 b_and!93255 b_and!93209 (not b_next!34521) b_and!93215 (not b_next!34499) (not b_next!34509) (not b_next!34519) (not b_next!34515) (not b_next!34517) (not b_next!34507) (not b_next!34503))
