; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125394 () Bool)

(assert start!125394)

(declare-fun b!1383198 () Bool)

(declare-fun b_free!33635 () Bool)

(declare-fun b_next!34339 () Bool)

(assert (=> b!1383198 (= b_free!33635 (not b_next!34339))))

(declare-fun tp!396184 () Bool)

(declare-fun b_and!92707 () Bool)

(assert (=> b!1383198 (= tp!396184 b_and!92707)))

(declare-fun b_free!33637 () Bool)

(declare-fun b_next!34341 () Bool)

(assert (=> b!1383198 (= b_free!33637 (not b_next!34341))))

(declare-fun tp!396186 () Bool)

(declare-fun b_and!92709 () Bool)

(assert (=> b!1383198 (= tp!396186 b_and!92709)))

(declare-fun b!1383228 () Bool)

(declare-fun b_free!33639 () Bool)

(declare-fun b_next!34343 () Bool)

(assert (=> b!1383228 (= b_free!33639 (not b_next!34343))))

(declare-fun tp!396179 () Bool)

(declare-fun b_and!92711 () Bool)

(assert (=> b!1383228 (= tp!396179 b_and!92711)))

(declare-fun b_free!33641 () Bool)

(declare-fun b_next!34345 () Bool)

(assert (=> b!1383228 (= b_free!33641 (not b_next!34345))))

(declare-fun tp!396181 () Bool)

(declare-fun b_and!92713 () Bool)

(assert (=> b!1383228 (= tp!396181 b_and!92713)))

(declare-fun b!1383220 () Bool)

(declare-fun b_free!33643 () Bool)

(declare-fun b_next!34347 () Bool)

(assert (=> b!1383220 (= b_free!33643 (not b_next!34347))))

(declare-fun tp!396175 () Bool)

(declare-fun b_and!92715 () Bool)

(assert (=> b!1383220 (= tp!396175 b_and!92715)))

(declare-fun b_free!33645 () Bool)

(declare-fun b_next!34349 () Bool)

(assert (=> b!1383220 (= b_free!33645 (not b_next!34349))))

(declare-fun tp!396182 () Bool)

(declare-fun b_and!92717 () Bool)

(assert (=> b!1383220 (= tp!396182 b_and!92717)))

(declare-fun b!1383205 () Bool)

(assert (=> b!1383205 true))

(assert (=> b!1383205 true))

(declare-fun b!1383186 () Bool)

(assert (=> b!1383186 true))

(declare-fun b!1383222 () Bool)

(assert (=> b!1383222 true))

(declare-fun bs!336704 () Bool)

(declare-fun b!1383192 () Bool)

(assert (= bs!336704 (and b!1383192 b!1383222)))

(declare-fun lambda!59475 () Int)

(declare-fun lambda!59474 () Int)

(assert (=> bs!336704 (not (= lambda!59475 lambda!59474))))

(assert (=> b!1383192 true))

(declare-fun e!883794 () Bool)

(declare-fun e!883781 () Bool)

(assert (=> b!1383186 (= e!883794 e!883781)))

(declare-fun res!623906 () Bool)

(assert (=> b!1383186 (=> res!623906 e!883781)))

(declare-fun lambda!59472 () Int)

(declare-datatypes ((List!14112 0))(
  ( (Nil!14046) (Cons!14046 (h!19447 (_ BitVec 16)) (t!122101 List!14112)) )
))
(declare-datatypes ((TokenValue!2523 0))(
  ( (FloatLiteralValue!5046 (text!18106 List!14112)) (TokenValueExt!2522 (__x!8875 Int)) (Broken!12615 (value!78947 List!14112)) (Object!2588) (End!2523) (Def!2523) (Underscore!2523) (Match!2523) (Else!2523) (Error!2523) (Case!2523) (If!2523) (Extends!2523) (Abstract!2523) (Class!2523) (Val!2523) (DelimiterValue!5046 (del!2583 List!14112)) (KeywordValue!2529 (value!78948 List!14112)) (CommentValue!5046 (value!78949 List!14112)) (WhitespaceValue!5046 (value!78950 List!14112)) (IndentationValue!2523 (value!78951 List!14112)) (String!16850) (Int32!2523) (Broken!12616 (value!78952 List!14112)) (Boolean!2524) (Unit!20294) (OperatorValue!2526 (op!2583 List!14112)) (IdentifierValue!5046 (value!78953 List!14112)) (IdentifierValue!5047 (value!78954 List!14112)) (WhitespaceValue!5047 (value!78955 List!14112)) (True!5046) (False!5046) (Broken!12617 (value!78956 List!14112)) (Broken!12618 (value!78957 List!14112)) (True!5047) (RightBrace!2523) (RightBracket!2523) (Colon!2523) (Null!2523) (Comma!2523) (LeftBracket!2523) (False!5047) (LeftBrace!2523) (ImaginaryLiteralValue!2523 (text!18107 List!14112)) (StringLiteralValue!7569 (value!78958 List!14112)) (EOFValue!2523 (value!78959 List!14112)) (IdentValue!2523 (value!78960 List!14112)) (DelimiterValue!5047 (value!78961 List!14112)) (DedentValue!2523 (value!78962 List!14112)) (NewLineValue!2523 (value!78963 List!14112)) (IntegerValue!7569 (value!78964 (_ BitVec 32)) (text!18108 List!14112)) (IntegerValue!7570 (value!78965 Int) (text!18109 List!14112)) (Times!2523) (Or!2523) (Equal!2523) (Minus!2523) (Broken!12619 (value!78966 List!14112)) (And!2523) (Div!2523) (LessEqual!2523) (Mod!2523) (Concat!6270) (Not!2523) (Plus!2523) (SpaceValue!2523 (value!78967 List!14112)) (IntegerValue!7571 (value!78968 Int) (text!18110 List!14112)) (StringLiteralValue!7570 (text!18111 List!14112)) (FloatLiteralValue!5047 (text!18112 List!14112)) (BytesLiteralValue!2523 (value!78969 List!14112)) (CommentValue!5047 (value!78970 List!14112)) (StringLiteralValue!7571 (value!78971 List!14112)) (ErrorTokenValue!2523 (msg!2584 List!14112)) )
))
(declare-datatypes ((C!7784 0))(
  ( (C!7785 (val!4452 Int)) )
))
(declare-datatypes ((List!14113 0))(
  ( (Nil!14047) (Cons!14047 (h!19448 C!7784) (t!122102 List!14113)) )
))
(declare-datatypes ((IArray!9257 0))(
  ( (IArray!9258 (innerList!4686 List!14113)) )
))
(declare-datatypes ((Conc!4626 0))(
  ( (Node!4626 (left!12008 Conc!4626) (right!12338 Conc!4626) (csize!9482 Int) (cheight!4837 Int)) (Leaf!7039 (xs!7353 IArray!9257) (csize!9483 Int)) (Empty!4626) )
))
(declare-datatypes ((BalanceConc!9192 0))(
  ( (BalanceConc!9193 (c!227558 Conc!4626)) )
))
(declare-datatypes ((Regex!3747 0))(
  ( (ElementMatch!3747 (c!227559 C!7784)) (Concat!6271 (regOne!8006 Regex!3747) (regTwo!8006 Regex!3747)) (EmptyExpr!3747) (Star!3747 (reg!4076 Regex!3747)) (EmptyLang!3747) (Union!3747 (regOne!8007 Regex!3747) (regTwo!8007 Regex!3747)) )
))
(declare-datatypes ((String!16851 0))(
  ( (String!16852 (value!78972 String)) )
))
(declare-datatypes ((TokenValueInjection!4706 0))(
  ( (TokenValueInjection!4707 (toValue!3716 Int) (toChars!3575 Int)) )
))
(declare-datatypes ((Rule!4666 0))(
  ( (Rule!4667 (regex!2433 Regex!3747) (tag!2695 String!16851) (isSeparator!2433 Bool) (transformation!2433 TokenValueInjection!4706)) )
))
(declare-datatypes ((List!14114 0))(
  ( (Nil!14048) (Cons!14048 (h!19449 Rule!4666) (t!122103 List!14114)) )
))
(declare-fun rules!2550 () List!14114)

(declare-fun lambda!59473 () Int)

(declare-datatypes ((List!14115 0))(
  ( (Nil!14049) (Cons!14049 (h!19450 Regex!3747) (t!122104 List!14115)) )
))
(declare-fun exists!510 (List!14115 Int) Bool)

(declare-fun map!3110 (List!14114 Int) List!14115)

(assert (=> b!1383186 (= res!623906 (not (exists!510 (map!3110 rules!2550 lambda!59472) lambda!59473)))))

(declare-fun lt!459873 () List!14115)

(assert (=> b!1383186 (exists!510 lt!459873 lambda!59473)))

(declare-fun lt!459880 () List!14113)

(declare-datatypes ((Unit!20295 0))(
  ( (Unit!20296) )
))
(declare-fun lt!459890 () Unit!20295)

(declare-fun lt!459883 () Regex!3747)

(declare-fun matchRGenUnionSpec!158 (Regex!3747 List!14115 List!14113) Unit!20295)

(assert (=> b!1383186 (= lt!459890 (matchRGenUnionSpec!158 lt!459883 lt!459873 lt!459880))))

(assert (=> b!1383186 (= lt!459873 (map!3110 rules!2550 lambda!59472))))

(declare-fun b!1383187 () Bool)

(declare-fun res!623903 () Bool)

(declare-fun e!883770 () Bool)

(assert (=> b!1383187 (=> (not res!623903) (not e!883770))))

(declare-datatypes ((LexerInterface!2128 0))(
  ( (LexerInterfaceExt!2125 (__x!8876 Int)) (Lexer!2126) )
))
(declare-fun thiss!19762 () LexerInterface!2128)

(declare-fun rulesInvariant!1998 (LexerInterface!2128 List!14114) Bool)

(assert (=> b!1383187 (= res!623903 (rulesInvariant!1998 thiss!19762 rules!2550))))

(declare-fun e!883782 () Bool)

(declare-fun e!883789 () Bool)

(declare-fun b!1383188 () Bool)

(declare-datatypes ((Token!4528 0))(
  ( (Token!4529 (value!78973 TokenValue!2523) (rule!4192 Rule!4666) (size!11525 Int) (originalCharacters!3295 List!14113)) )
))
(declare-fun t1!34 () Token!4528)

(declare-fun tp!396177 () Bool)

(declare-fun inv!21 (TokenValue!2523) Bool)

(assert (=> b!1383188 (= e!883789 (and (inv!21 (value!78973 t1!34)) e!883782 tp!396177))))

(declare-fun b!1383189 () Bool)

(declare-fun res!623896 () Bool)

(declare-fun e!883783 () Bool)

(assert (=> b!1383189 (=> res!623896 e!883783)))

(declare-fun lt!459884 () Rule!4666)

(declare-fun contains!2677 (List!14114 Rule!4666) Bool)

(assert (=> b!1383189 (= res!623896 (not (contains!2677 rules!2550 lt!459884)))))

(declare-fun b!1383190 () Bool)

(declare-fun res!623902 () Bool)

(declare-fun e!883771 () Bool)

(assert (=> b!1383190 (=> (not res!623902) (not e!883771))))

(declare-fun sepAndNonSepRulesDisjointChars!806 (List!14114 List!14114) Bool)

(assert (=> b!1383190 (= res!623902 (sepAndNonSepRulesDisjointChars!806 rules!2550 rules!2550))))

(declare-fun b!1383191 () Bool)

(declare-fun res!623900 () Bool)

(declare-fun e!883791 () Bool)

(assert (=> b!1383191 (=> res!623900 e!883791)))

(declare-fun lt!459882 () BalanceConc!9192)

(declare-datatypes ((List!14116 0))(
  ( (Nil!14050) (Cons!14050 (h!19451 Token!4528) (t!122105 List!14116)) )
))
(declare-fun lt!459876 () List!14116)

(declare-datatypes ((tuple2!13642 0))(
  ( (tuple2!13643 (_1!7707 List!14116) (_2!7707 List!14113)) )
))
(declare-fun lexList!642 (LexerInterface!2128 List!14114 List!14113) tuple2!13642)

(declare-fun list!5437 (BalanceConc!9192) List!14113)

(assert (=> b!1383191 (= res!623900 (not (= (lexList!642 thiss!19762 rules!2550 (list!5437 lt!459882)) (tuple2!13643 lt!459876 Nil!14047))))))

(declare-fun e!883788 () Bool)

(assert (=> b!1383192 (= e!883783 e!883788)))

(declare-fun res!623895 () Bool)

(assert (=> b!1383192 (=> res!623895 e!883788)))

(declare-fun lt!459878 () List!14113)

(declare-fun matchR!1738 (Regex!3747 List!14113) Bool)

(assert (=> b!1383192 (= res!623895 (not (matchR!1738 (regex!2433 (rule!4192 t1!34)) lt!459878)))))

(declare-fun t2!34 () Token!4528)

(declare-fun lt!459891 () Unit!20295)

(declare-fun forallContained!628 (List!14114 Int Rule!4666) Unit!20295)

(assert (=> b!1383192 (= lt!459891 (forallContained!628 rules!2550 lambda!59475 (rule!4192 t2!34)))))

(declare-fun lt!459875 () Unit!20295)

(assert (=> b!1383192 (= lt!459875 (forallContained!628 rules!2550 lambda!59475 (rule!4192 t1!34)))))

(declare-fun lt!459888 () Unit!20295)

(assert (=> b!1383192 (= lt!459888 (forallContained!628 rules!2550 lambda!59475 lt!459884))))

(declare-fun b!1383193 () Bool)

(declare-fun res!623887 () Bool)

(assert (=> b!1383193 (=> (not res!623887) (not e!883770))))

(declare-fun rulesProduceIndividualToken!1097 (LexerInterface!2128 List!14114 Token!4528) Bool)

(assert (=> b!1383193 (= res!623887 (rulesProduceIndividualToken!1097 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1383194 () Bool)

(declare-fun e!883787 () Bool)

(assert (=> b!1383194 (= e!883787 e!883794)))

(declare-fun res!623907 () Bool)

(assert (=> b!1383194 (=> res!623907 e!883794)))

(declare-fun lt!459881 () List!14113)

(declare-fun lt!459885 () C!7784)

(declare-fun contains!2678 (List!14113 C!7784) Bool)

(assert (=> b!1383194 (= res!623907 (not (contains!2678 lt!459881 lt!459885)))))

(declare-fun lt!459894 () BalanceConc!9192)

(declare-fun apply!3501 (BalanceConc!9192 Int) C!7784)

(assert (=> b!1383194 (= lt!459885 (apply!3501 lt!459894 0))))

(declare-fun b!1383195 () Bool)

(declare-fun res!623884 () Bool)

(assert (=> b!1383195 (=> res!623884 e!883791)))

(declare-datatypes ((tuple2!13644 0))(
  ( (tuple2!13645 (_1!7708 Token!4528) (_2!7708 List!14113)) )
))
(declare-datatypes ((Option!2692 0))(
  ( (None!2691) (Some!2691 (v!21537 tuple2!13644)) )
))
(declare-fun maxPrefix!1102 (LexerInterface!2128 List!14114 List!14113) Option!2692)

(assert (=> b!1383195 (= res!623884 (not (= (maxPrefix!1102 thiss!19762 rules!2550 lt!459878) (Some!2691 (tuple2!13645 t1!34 Nil!14047)))))))

(declare-fun b!1383196 () Bool)

(declare-fun res!623897 () Bool)

(declare-fun e!883786 () Bool)

(assert (=> b!1383196 (=> res!623897 e!883786)))

(declare-fun lt!459872 () BalanceConc!9192)

(declare-fun lt!459879 () List!14116)

(assert (=> b!1383196 (= res!623897 (not (= (lexList!642 thiss!19762 rules!2550 (list!5437 lt!459872)) (tuple2!13643 lt!459879 Nil!14047))))))

(declare-fun b!1383197 () Bool)

(assert (=> b!1383197 (= e!883786 e!883783)))

(declare-fun res!623912 () Bool)

(assert (=> b!1383197 (=> res!623912 e!883783)))

(declare-fun lt!459877 () List!14113)

(assert (=> b!1383197 (= res!623912 (not (= (maxPrefix!1102 thiss!19762 rules!2550 lt!459877) (Some!2691 (tuple2!13645 t2!34 Nil!14047)))))))

(declare-fun lt!459874 () BalanceConc!9192)

(assert (=> b!1383197 (= lt!459877 (list!5437 lt!459874))))

(declare-fun e!883777 () Bool)

(assert (=> b!1383198 (= e!883777 (and tp!396184 tp!396186))))

(declare-fun res!623890 () Bool)

(assert (=> start!125394 (=> (not res!623890) (not e!883770))))

(get-info :version)

(assert (=> start!125394 (= res!623890 ((_ is Lexer!2126) thiss!19762))))

(assert (=> start!125394 e!883770))

(assert (=> start!125394 true))

(declare-fun e!883790 () Bool)

(assert (=> start!125394 e!883790))

(declare-fun inv!18387 (Token!4528) Bool)

(assert (=> start!125394 (and (inv!18387 t1!34) e!883789)))

(declare-fun e!883784 () Bool)

(assert (=> start!125394 (and (inv!18387 t2!34) e!883784)))

(declare-fun b!1383199 () Bool)

(declare-fun tp!396183 () Bool)

(declare-fun e!883774 () Bool)

(declare-fun inv!18384 (String!16851) Bool)

(declare-fun inv!18388 (TokenValueInjection!4706) Bool)

(assert (=> b!1383199 (= e!883774 (and tp!396183 (inv!18384 (tag!2695 (h!19449 rules!2550))) (inv!18388 (transformation!2433 (h!19449 rules!2550))) e!883777))))

(declare-fun b!1383200 () Bool)

(declare-fun tp!396185 () Bool)

(declare-fun e!883795 () Bool)

(assert (=> b!1383200 (= e!883782 (and tp!396185 (inv!18384 (tag!2695 (rule!4192 t1!34))) (inv!18388 (transformation!2433 (rule!4192 t1!34))) e!883795))))

(declare-fun b!1383201 () Bool)

(declare-fun res!623885 () Bool)

(assert (=> b!1383201 (=> res!623885 e!883794)))

(declare-fun lt!459893 () C!7784)

(assert (=> b!1383201 (= res!623885 (not (contains!2678 lt!459880 lt!459893)))))

(declare-fun b!1383202 () Bool)

(declare-fun e!883780 () Bool)

(assert (=> b!1383202 (= e!883771 e!883780)))

(declare-fun res!623899 () Bool)

(assert (=> b!1383202 (=> (not res!623899) (not e!883780))))

(declare-fun prefixMatch!256 (Regex!3747 List!14113) Bool)

(assert (=> b!1383202 (= res!623899 (prefixMatch!256 lt!459883 lt!459881))))

(declare-fun rulesRegex!316 (LexerInterface!2128 List!14114) Regex!3747)

(assert (=> b!1383202 (= lt!459883 (rulesRegex!316 thiss!19762 rules!2550))))

(declare-fun ++!3642 (List!14113 List!14113) List!14113)

(assert (=> b!1383202 (= lt!459881 (++!3642 lt!459878 (Cons!14047 lt!459893 Nil!14047)))))

(assert (=> b!1383202 (= lt!459893 (apply!3501 lt!459874 0))))

(assert (=> b!1383202 (= lt!459878 (list!5437 lt!459894))))

(declare-fun charsOf!1405 (Token!4528) BalanceConc!9192)

(assert (=> b!1383202 (= lt!459894 (charsOf!1405 t1!34))))

(declare-fun b!1383203 () Bool)

(declare-fun res!623894 () Bool)

(assert (=> b!1383203 (=> res!623894 e!883788)))

(declare-fun usedCharacters!244 (Regex!3747) List!14113)

(assert (=> b!1383203 (= res!623894 (contains!2678 (usedCharacters!244 (regex!2433 (rule!4192 t1!34))) lt!459885))))

(declare-fun b!1383204 () Bool)

(declare-fun res!623905 () Bool)

(assert (=> b!1383204 (=> (not res!623905) (not e!883770))))

(declare-fun isEmpty!8482 (List!14114) Bool)

(assert (=> b!1383204 (= res!623905 (not (isEmpty!8482 rules!2550)))))

(declare-fun e!883779 () Bool)

(assert (=> b!1383205 (= e!883780 (not e!883779))))

(declare-fun res!623901 () Bool)

(assert (=> b!1383205 (=> res!623901 e!883779)))

(declare-fun lambda!59471 () Int)

(declare-fun Exists!897 (Int) Bool)

(assert (=> b!1383205 (= res!623901 (not (Exists!897 lambda!59471)))))

(assert (=> b!1383205 (Exists!897 lambda!59471)))

(declare-fun lt!459887 () Unit!20295)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!215 (Regex!3747 List!14113) Unit!20295)

(assert (=> b!1383205 (= lt!459887 (lemmaPrefixMatchThenExistsStringThatMatches!215 lt!459883 lt!459881))))

(declare-fun b!1383206 () Bool)

(declare-fun e!883773 () Bool)

(assert (=> b!1383206 (= e!883781 e!883773)))

(declare-fun res!623881 () Bool)

(assert (=> b!1383206 (=> res!623881 e!883773)))

(declare-fun lt!459886 () Regex!3747)

(declare-fun contains!2679 (List!14115 Regex!3747) Bool)

(assert (=> b!1383206 (= res!623881 (not (contains!2679 (map!3110 rules!2550 lambda!59472) lt!459886)))))

(declare-fun getWitness!398 (List!14115 Int) Regex!3747)

(assert (=> b!1383206 (= lt!459886 (getWitness!398 (map!3110 rules!2550 lambda!59472) lambda!59473))))

(declare-fun b!1383207 () Bool)

(declare-fun res!623908 () Bool)

(assert (=> b!1383207 (=> res!623908 e!883783)))

(assert (=> b!1383207 (= res!623908 (not (contains!2677 rules!2550 (rule!4192 t2!34))))))

(declare-fun b!1383208 () Bool)

(declare-fun head!2515 (List!14113) C!7784)

(assert (=> b!1383208 (= e!883788 (contains!2678 lt!459878 (head!2515 lt!459878)))))

(declare-fun b!1383209 () Bool)

(declare-fun res!623910 () Bool)

(assert (=> b!1383209 (=> res!623910 e!883794)))

(assert (=> b!1383209 (= res!623910 (not (contains!2678 lt!459881 lt!459893)))))

(declare-fun b!1383210 () Bool)

(declare-fun res!623898 () Bool)

(assert (=> b!1383210 (=> (not res!623898) (not e!883770))))

(assert (=> b!1383210 (= res!623898 (not (= (isSeparator!2433 (rule!4192 t1!34)) (isSeparator!2433 (rule!4192 t2!34)))))))

(declare-fun b!1383211 () Bool)

(declare-fun e!883778 () Bool)

(assert (=> b!1383211 (= e!883778 e!883791)))

(declare-fun res!623911 () Bool)

(assert (=> b!1383211 (=> res!623911 e!883791)))

(declare-datatypes ((IArray!9259 0))(
  ( (IArray!9260 (innerList!4687 List!14116)) )
))
(declare-datatypes ((Conc!4627 0))(
  ( (Node!4627 (left!12009 Conc!4627) (right!12339 Conc!4627) (csize!9484 Int) (cheight!4838 Int)) (Leaf!7040 (xs!7354 IArray!9259) (csize!9485 Int)) (Empty!4627) )
))
(declare-datatypes ((BalanceConc!9194 0))(
  ( (BalanceConc!9195 (c!227560 Conc!4627)) )
))
(declare-datatypes ((tuple2!13646 0))(
  ( (tuple2!13647 (_1!7709 BalanceConc!9194) (_2!7709 BalanceConc!9192)) )
))
(declare-fun lt!459871 () tuple2!13646)

(declare-fun list!5438 (BalanceConc!9194) List!14116)

(assert (=> b!1383211 (= res!623911 (not (= (list!5438 (_1!7709 lt!459871)) lt!459876)))))

(assert (=> b!1383211 (= lt!459876 (Cons!14050 t1!34 Nil!14050))))

(declare-fun lex!953 (LexerInterface!2128 List!14114 BalanceConc!9192) tuple2!13646)

(assert (=> b!1383211 (= lt!459871 (lex!953 thiss!19762 rules!2550 lt!459882))))

(declare-fun print!892 (LexerInterface!2128 BalanceConc!9194) BalanceConc!9192)

(declare-fun singletonSeq!1074 (Token!4528) BalanceConc!9194)

(assert (=> b!1383211 (= lt!459882 (print!892 thiss!19762 (singletonSeq!1074 t1!34)))))

(declare-fun getWitness!399 (List!14114 Int) Rule!4666)

(assert (=> b!1383211 (= lt!459884 (getWitness!399 rules!2550 lambda!59474))))

(declare-fun b!1383212 () Bool)

(declare-fun res!623879 () Bool)

(assert (=> b!1383212 (=> res!623879 e!883794)))

(assert (=> b!1383212 (= res!623879 (not (matchR!1738 lt!459883 lt!459880)))))

(declare-fun e!883775 () Bool)

(declare-fun b!1383213 () Bool)

(declare-fun tp!396178 () Bool)

(assert (=> b!1383213 (= e!883784 (and (inv!21 (value!78973 t2!34)) e!883775 tp!396178))))

(declare-fun b!1383214 () Bool)

(declare-fun res!623909 () Bool)

(assert (=> b!1383214 (=> res!623909 e!883791)))

(assert (=> b!1383214 (= res!623909 (not (contains!2677 rules!2550 (rule!4192 t1!34))))))

(declare-fun b!1383215 () Bool)

(declare-fun res!623892 () Bool)

(assert (=> b!1383215 (=> res!623892 e!883791)))

(declare-fun isEmpty!8483 (BalanceConc!9192) Bool)

(assert (=> b!1383215 (= res!623892 (not (isEmpty!8483 (_2!7709 lt!459871))))))

(declare-fun b!1383216 () Bool)

(declare-fun res!623880 () Bool)

(assert (=> b!1383216 (=> (not res!623880) (not e!883771))))

(declare-fun separableTokensPredicate!411 (LexerInterface!2128 Token!4528 Token!4528 List!14114) Bool)

(assert (=> b!1383216 (= res!623880 (not (separableTokensPredicate!411 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1383217 () Bool)

(declare-fun res!623889 () Bool)

(assert (=> b!1383217 (=> res!623889 e!883788)))

(assert (=> b!1383217 (= res!623889 (not (matchR!1738 (regex!2433 (rule!4192 t2!34)) lt!459877)))))

(declare-fun b!1383218 () Bool)

(assert (=> b!1383218 (= e!883779 e!883787)))

(declare-fun res!623888 () Bool)

(assert (=> b!1383218 (=> res!623888 e!883787)))

(declare-fun getSuffix!593 (List!14113 List!14113) List!14113)

(assert (=> b!1383218 (= res!623888 (not (= lt!459880 (++!3642 lt!459881 (getSuffix!593 lt!459880 lt!459881)))))))

(declare-fun pickWitness!200 (Int) List!14113)

(assert (=> b!1383218 (= lt!459880 (pickWitness!200 lambda!59471))))

(declare-fun b!1383219 () Bool)

(declare-fun res!623883 () Bool)

(assert (=> b!1383219 (=> res!623883 e!883786)))

(declare-fun lt!459889 () tuple2!13646)

(assert (=> b!1383219 (= res!623883 (not (isEmpty!8483 (_2!7709 lt!459889))))))

(declare-fun e!883776 () Bool)

(assert (=> b!1383220 (= e!883776 (and tp!396175 tp!396182))))

(declare-fun tp!396180 () Bool)

(declare-fun b!1383221 () Bool)

(assert (=> b!1383221 (= e!883775 (and tp!396180 (inv!18384 (tag!2695 (rule!4192 t2!34))) (inv!18388 (transformation!2433 (rule!4192 t2!34))) e!883776))))

(assert (=> b!1383222 (= e!883773 e!883778)))

(declare-fun res!623882 () Bool)

(assert (=> b!1383222 (=> res!623882 e!883778)))

(declare-fun exists!511 (List!14114 Int) Bool)

(assert (=> b!1383222 (= res!623882 (not (exists!511 rules!2550 lambda!59474)))))

(assert (=> b!1383222 (exists!511 rules!2550 lambda!59474)))

(declare-fun lt!459892 () Unit!20295)

(declare-fun lemmaMapContains!144 (List!14114 Int Regex!3747) Unit!20295)

(assert (=> b!1383222 (= lt!459892 (lemmaMapContains!144 rules!2550 lambda!59472 lt!459886))))

(declare-fun b!1383223 () Bool)

(assert (=> b!1383223 (= e!883791 e!883786)))

(declare-fun res!623886 () Bool)

(assert (=> b!1383223 (=> res!623886 e!883786)))

(assert (=> b!1383223 (= res!623886 (not (= (list!5438 (_1!7709 lt!459889)) lt!459879)))))

(assert (=> b!1383223 (= lt!459879 (Cons!14050 t2!34 Nil!14050))))

(assert (=> b!1383223 (= lt!459889 (lex!953 thiss!19762 rules!2550 lt!459872))))

(assert (=> b!1383223 (= lt!459872 (print!892 thiss!19762 (singletonSeq!1074 t2!34)))))

(declare-fun b!1383224 () Bool)

(declare-fun tp!396176 () Bool)

(assert (=> b!1383224 (= e!883790 (and e!883774 tp!396176))))

(declare-fun b!1383225 () Bool)

(declare-fun res!623893 () Bool)

(assert (=> b!1383225 (=> res!623893 e!883794)))

(assert (=> b!1383225 (= res!623893 (not (contains!2678 lt!459880 lt!459885)))))

(declare-fun b!1383226 () Bool)

(declare-fun res!623891 () Bool)

(assert (=> b!1383226 (=> (not res!623891) (not e!883770))))

(assert (=> b!1383226 (= res!623891 (rulesProduceIndividualToken!1097 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1383227 () Bool)

(assert (=> b!1383227 (= e!883770 e!883771)))

(declare-fun res!623913 () Bool)

(assert (=> b!1383227 (=> (not res!623913) (not e!883771))))

(declare-fun size!11526 (BalanceConc!9192) Int)

(assert (=> b!1383227 (= res!623913 (> (size!11526 lt!459874) 0))))

(assert (=> b!1383227 (= lt!459874 (charsOf!1405 t2!34))))

(assert (=> b!1383228 (= e!883795 (and tp!396179 tp!396181))))

(declare-fun b!1383229 () Bool)

(declare-fun res!623904 () Bool)

(assert (=> b!1383229 (=> res!623904 e!883788)))

(declare-fun validRegex!1631 (Regex!3747) Bool)

(assert (=> b!1383229 (= res!623904 (not (validRegex!1631 (regex!2433 (rule!4192 t1!34)))))))

(assert (= (and start!125394 res!623890) b!1383204))

(assert (= (and b!1383204 res!623905) b!1383187))

(assert (= (and b!1383187 res!623903) b!1383193))

(assert (= (and b!1383193 res!623887) b!1383226))

(assert (= (and b!1383226 res!623891) b!1383210))

(assert (= (and b!1383210 res!623898) b!1383227))

(assert (= (and b!1383227 res!623913) b!1383190))

(assert (= (and b!1383190 res!623902) b!1383216))

(assert (= (and b!1383216 res!623880) b!1383202))

(assert (= (and b!1383202 res!623899) b!1383205))

(assert (= (and b!1383205 (not res!623901)) b!1383218))

(assert (= (and b!1383218 (not res!623888)) b!1383194))

(assert (= (and b!1383194 (not res!623907)) b!1383225))

(assert (= (and b!1383225 (not res!623893)) b!1383209))

(assert (= (and b!1383209 (not res!623910)) b!1383201))

(assert (= (and b!1383201 (not res!623885)) b!1383212))

(assert (= (and b!1383212 (not res!623879)) b!1383186))

(assert (= (and b!1383186 (not res!623906)) b!1383206))

(assert (= (and b!1383206 (not res!623881)) b!1383222))

(assert (= (and b!1383222 (not res!623882)) b!1383211))

(assert (= (and b!1383211 (not res!623911)) b!1383215))

(assert (= (and b!1383215 (not res!623892)) b!1383191))

(assert (= (and b!1383191 (not res!623900)) b!1383195))

(assert (= (and b!1383195 (not res!623884)) b!1383214))

(assert (= (and b!1383214 (not res!623909)) b!1383223))

(assert (= (and b!1383223 (not res!623886)) b!1383219))

(assert (= (and b!1383219 (not res!623883)) b!1383196))

(assert (= (and b!1383196 (not res!623897)) b!1383197))

(assert (= (and b!1383197 (not res!623912)) b!1383207))

(assert (= (and b!1383207 (not res!623908)) b!1383189))

(assert (= (and b!1383189 (not res!623896)) b!1383192))

(assert (= (and b!1383192 (not res!623895)) b!1383217))

(assert (= (and b!1383217 (not res!623889)) b!1383203))

(assert (= (and b!1383203 (not res!623894)) b!1383229))

(assert (= (and b!1383229 (not res!623904)) b!1383208))

(assert (= b!1383199 b!1383198))

(assert (= b!1383224 b!1383199))

(assert (= (and start!125394 ((_ is Cons!14048) rules!2550)) b!1383224))

(assert (= b!1383200 b!1383228))

(assert (= b!1383188 b!1383200))

(assert (= start!125394 b!1383188))

(assert (= b!1383221 b!1383220))

(assert (= b!1383213 b!1383221))

(assert (= start!125394 b!1383213))

(declare-fun m!1556147 () Bool)

(assert (=> b!1383197 m!1556147))

(declare-fun m!1556149 () Bool)

(assert (=> b!1383197 m!1556149))

(declare-fun m!1556151 () Bool)

(assert (=> b!1383201 m!1556151))

(declare-fun m!1556153 () Bool)

(assert (=> b!1383202 m!1556153))

(declare-fun m!1556155 () Bool)

(assert (=> b!1383202 m!1556155))

(declare-fun m!1556157 () Bool)

(assert (=> b!1383202 m!1556157))

(declare-fun m!1556159 () Bool)

(assert (=> b!1383202 m!1556159))

(declare-fun m!1556161 () Bool)

(assert (=> b!1383202 m!1556161))

(declare-fun m!1556163 () Bool)

(assert (=> b!1383202 m!1556163))

(declare-fun m!1556165 () Bool)

(assert (=> b!1383187 m!1556165))

(declare-fun m!1556167 () Bool)

(assert (=> b!1383205 m!1556167))

(assert (=> b!1383205 m!1556167))

(declare-fun m!1556169 () Bool)

(assert (=> b!1383205 m!1556169))

(declare-fun m!1556171 () Bool)

(assert (=> b!1383188 m!1556171))

(declare-fun m!1556173 () Bool)

(assert (=> b!1383199 m!1556173))

(declare-fun m!1556175 () Bool)

(assert (=> b!1383199 m!1556175))

(declare-fun m!1556177 () Bool)

(assert (=> b!1383208 m!1556177))

(assert (=> b!1383208 m!1556177))

(declare-fun m!1556179 () Bool)

(assert (=> b!1383208 m!1556179))

(declare-fun m!1556181 () Bool)

(assert (=> b!1383229 m!1556181))

(declare-fun m!1556183 () Bool)

(assert (=> b!1383194 m!1556183))

(declare-fun m!1556185 () Bool)

(assert (=> b!1383194 m!1556185))

(declare-fun m!1556187 () Bool)

(assert (=> b!1383211 m!1556187))

(declare-fun m!1556189 () Bool)

(assert (=> b!1383211 m!1556189))

(declare-fun m!1556191 () Bool)

(assert (=> b!1383211 m!1556191))

(declare-fun m!1556193 () Bool)

(assert (=> b!1383211 m!1556193))

(assert (=> b!1383211 m!1556191))

(declare-fun m!1556195 () Bool)

(assert (=> b!1383211 m!1556195))

(declare-fun m!1556197 () Bool)

(assert (=> b!1383209 m!1556197))

(declare-fun m!1556199 () Bool)

(assert (=> b!1383204 m!1556199))

(declare-fun m!1556201 () Bool)

(assert (=> b!1383227 m!1556201))

(declare-fun m!1556203 () Bool)

(assert (=> b!1383227 m!1556203))

(declare-fun m!1556205 () Bool)

(assert (=> b!1383192 m!1556205))

(declare-fun m!1556207 () Bool)

(assert (=> b!1383192 m!1556207))

(declare-fun m!1556209 () Bool)

(assert (=> b!1383192 m!1556209))

(declare-fun m!1556211 () Bool)

(assert (=> b!1383192 m!1556211))

(declare-fun m!1556213 () Bool)

(assert (=> b!1383214 m!1556213))

(declare-fun m!1556215 () Bool)

(assert (=> b!1383223 m!1556215))

(declare-fun m!1556217 () Bool)

(assert (=> b!1383223 m!1556217))

(declare-fun m!1556219 () Bool)

(assert (=> b!1383223 m!1556219))

(assert (=> b!1383223 m!1556219))

(declare-fun m!1556221 () Bool)

(assert (=> b!1383223 m!1556221))

(declare-fun m!1556223 () Bool)

(assert (=> b!1383218 m!1556223))

(assert (=> b!1383218 m!1556223))

(declare-fun m!1556225 () Bool)

(assert (=> b!1383218 m!1556225))

(declare-fun m!1556227 () Bool)

(assert (=> b!1383218 m!1556227))

(declare-fun m!1556229 () Bool)

(assert (=> b!1383221 m!1556229))

(declare-fun m!1556231 () Bool)

(assert (=> b!1383221 m!1556231))

(declare-fun m!1556233 () Bool)

(assert (=> b!1383195 m!1556233))

(declare-fun m!1556235 () Bool)

(assert (=> b!1383207 m!1556235))

(declare-fun m!1556237 () Bool)

(assert (=> b!1383216 m!1556237))

(declare-fun m!1556239 () Bool)

(assert (=> b!1383190 m!1556239))

(declare-fun m!1556241 () Bool)

(assert (=> b!1383215 m!1556241))

(declare-fun m!1556243 () Bool)

(assert (=> b!1383222 m!1556243))

(assert (=> b!1383222 m!1556243))

(declare-fun m!1556245 () Bool)

(assert (=> b!1383222 m!1556245))

(declare-fun m!1556247 () Bool)

(assert (=> b!1383219 m!1556247))

(declare-fun m!1556249 () Bool)

(assert (=> b!1383200 m!1556249))

(declare-fun m!1556251 () Bool)

(assert (=> b!1383200 m!1556251))

(declare-fun m!1556253 () Bool)

(assert (=> b!1383193 m!1556253))

(declare-fun m!1556255 () Bool)

(assert (=> b!1383186 m!1556255))

(declare-fun m!1556257 () Bool)

(assert (=> b!1383186 m!1556257))

(declare-fun m!1556259 () Bool)

(assert (=> b!1383186 m!1556259))

(assert (=> b!1383186 m!1556257))

(assert (=> b!1383186 m!1556257))

(declare-fun m!1556261 () Bool)

(assert (=> b!1383186 m!1556261))

(assert (=> b!1383206 m!1556257))

(assert (=> b!1383206 m!1556257))

(declare-fun m!1556263 () Bool)

(assert (=> b!1383206 m!1556263))

(assert (=> b!1383206 m!1556257))

(assert (=> b!1383206 m!1556257))

(declare-fun m!1556265 () Bool)

(assert (=> b!1383206 m!1556265))

(declare-fun m!1556267 () Bool)

(assert (=> b!1383189 m!1556267))

(declare-fun m!1556269 () Bool)

(assert (=> b!1383196 m!1556269))

(assert (=> b!1383196 m!1556269))

(declare-fun m!1556271 () Bool)

(assert (=> b!1383196 m!1556271))

(declare-fun m!1556273 () Bool)

(assert (=> b!1383226 m!1556273))

(declare-fun m!1556275 () Bool)

(assert (=> b!1383212 m!1556275))

(declare-fun m!1556277 () Bool)

(assert (=> b!1383191 m!1556277))

(assert (=> b!1383191 m!1556277))

(declare-fun m!1556279 () Bool)

(assert (=> b!1383191 m!1556279))

(declare-fun m!1556281 () Bool)

(assert (=> b!1383225 m!1556281))

(declare-fun m!1556283 () Bool)

(assert (=> b!1383203 m!1556283))

(assert (=> b!1383203 m!1556283))

(declare-fun m!1556285 () Bool)

(assert (=> b!1383203 m!1556285))

(declare-fun m!1556287 () Bool)

(assert (=> b!1383217 m!1556287))

(declare-fun m!1556289 () Bool)

(assert (=> b!1383213 m!1556289))

(declare-fun m!1556291 () Bool)

(assert (=> start!125394 m!1556291))

(declare-fun m!1556293 () Bool)

(assert (=> start!125394 m!1556293))

(check-sat (not b!1383186) (not b!1383221) (not b!1383201) (not b!1383212) (not b!1383189) (not b!1383225) (not b!1383204) (not b!1383191) (not b!1383203) (not b!1383211) b_and!92713 (not b!1383213) (not b!1383196) b_and!92715 (not b!1383207) (not b!1383195) (not b!1383215) (not b!1383209) (not b!1383216) (not b!1383219) (not b!1383188) (not start!125394) (not b_next!34339) (not b!1383192) (not b!1383190) (not b!1383224) (not b!1383206) (not b_next!34349) (not b!1383205) (not b_next!34347) b_and!92711 (not b!1383214) (not b!1383208) b_and!92707 (not b_next!34345) (not b!1383223) (not b!1383199) (not b!1383226) b_and!92709 (not b!1383218) (not b!1383197) (not b_next!34343) (not b!1383222) (not b!1383227) (not b_next!34341) (not b!1383193) (not b!1383187) b_and!92717 (not b!1383217) (not b!1383202) (not b!1383229) (not b!1383200) (not b!1383194))
(check-sat b_and!92713 b_and!92715 (not b_next!34339) b_and!92711 (not b_next!34341) b_and!92717 (not b_next!34349) (not b_next!34347) b_and!92707 (not b_next!34345) (not b_next!34343) b_and!92709)
(get-model)

(declare-fun b!1383250 () Bool)

(declare-fun e!883803 () Bool)

(declare-fun e!883804 () Bool)

(assert (=> b!1383250 (= e!883803 e!883804)))

(declare-fun c!227565 () Bool)

(assert (=> b!1383250 (= c!227565 ((_ is IntegerValue!7570) (value!78973 t1!34)))))

(declare-fun b!1383251 () Bool)

(declare-fun res!623922 () Bool)

(declare-fun e!883805 () Bool)

(assert (=> b!1383251 (=> res!623922 e!883805)))

(assert (=> b!1383251 (= res!623922 (not ((_ is IntegerValue!7571) (value!78973 t1!34))))))

(assert (=> b!1383251 (= e!883804 e!883805)))

(declare-fun b!1383252 () Bool)

(declare-fun inv!15 (TokenValue!2523) Bool)

(assert (=> b!1383252 (= e!883805 (inv!15 (value!78973 t1!34)))))

(declare-fun b!1383253 () Bool)

(declare-fun inv!16 (TokenValue!2523) Bool)

(assert (=> b!1383253 (= e!883803 (inv!16 (value!78973 t1!34)))))

(declare-fun b!1383254 () Bool)

(declare-fun inv!17 (TokenValue!2523) Bool)

(assert (=> b!1383254 (= e!883804 (inv!17 (value!78973 t1!34)))))

(declare-fun d!394977 () Bool)

(declare-fun c!227566 () Bool)

(assert (=> d!394977 (= c!227566 ((_ is IntegerValue!7569) (value!78973 t1!34)))))

(assert (=> d!394977 (= (inv!21 (value!78973 t1!34)) e!883803)))

(assert (= (and d!394977 c!227566) b!1383253))

(assert (= (and d!394977 (not c!227566)) b!1383250))

(assert (= (and b!1383250 c!227565) b!1383254))

(assert (= (and b!1383250 (not c!227565)) b!1383251))

(assert (= (and b!1383251 (not res!623922)) b!1383252))

(declare-fun m!1556295 () Bool)

(assert (=> b!1383252 m!1556295))

(declare-fun m!1556297 () Bool)

(assert (=> b!1383253 m!1556297))

(declare-fun m!1556299 () Bool)

(assert (=> b!1383254 m!1556299))

(assert (=> b!1383188 d!394977))

(declare-fun d!394979 () Bool)

(declare-fun lt!459897 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2054 (List!14114) (InoxSet Rule!4666))

(assert (=> d!394979 (= lt!459897 (select (content!2054 rules!2550) lt!459884))))

(declare-fun e!883810 () Bool)

(assert (=> d!394979 (= lt!459897 e!883810)))

(declare-fun res!623928 () Bool)

(assert (=> d!394979 (=> (not res!623928) (not e!883810))))

(assert (=> d!394979 (= res!623928 ((_ is Cons!14048) rules!2550))))

(assert (=> d!394979 (= (contains!2677 rules!2550 lt!459884) lt!459897)))

(declare-fun b!1383259 () Bool)

(declare-fun e!883811 () Bool)

(assert (=> b!1383259 (= e!883810 e!883811)))

(declare-fun res!623927 () Bool)

(assert (=> b!1383259 (=> res!623927 e!883811)))

(assert (=> b!1383259 (= res!623927 (= (h!19449 rules!2550) lt!459884))))

(declare-fun b!1383260 () Bool)

(assert (=> b!1383260 (= e!883811 (contains!2677 (t!122103 rules!2550) lt!459884))))

(assert (= (and d!394979 res!623928) b!1383259))

(assert (= (and b!1383259 (not res!623927)) b!1383260))

(declare-fun m!1556301 () Bool)

(assert (=> d!394979 m!1556301))

(declare-fun m!1556303 () Bool)

(assert (=> d!394979 m!1556303))

(declare-fun m!1556305 () Bool)

(assert (=> b!1383260 m!1556305))

(assert (=> b!1383189 d!394979))

(declare-fun d!394981 () Bool)

(declare-fun e!883905 () Bool)

(assert (=> d!394981 e!883905))

(declare-fun res!624031 () Bool)

(assert (=> d!394981 (=> (not res!624031) (not e!883905))))

(declare-fun e!883907 () Bool)

(assert (=> d!394981 (= res!624031 e!883907)))

(declare-fun c!227593 () Bool)

(declare-fun lt!459941 () tuple2!13646)

(declare-fun size!11528 (BalanceConc!9194) Int)

(assert (=> d!394981 (= c!227593 (> (size!11528 (_1!7709 lt!459941)) 0))))

(declare-fun lexTailRecV2!422 (LexerInterface!2128 List!14114 BalanceConc!9192 BalanceConc!9192 BalanceConc!9192 BalanceConc!9194) tuple2!13646)

(assert (=> d!394981 (= lt!459941 (lexTailRecV2!422 thiss!19762 rules!2550 lt!459882 (BalanceConc!9193 Empty!4626) lt!459882 (BalanceConc!9195 Empty!4627)))))

(assert (=> d!394981 (= (lex!953 thiss!19762 rules!2550 lt!459882) lt!459941)))

(declare-fun b!1383414 () Bool)

(assert (=> b!1383414 (= e!883907 (= (_2!7709 lt!459941) lt!459882))))

(declare-fun b!1383415 () Bool)

(assert (=> b!1383415 (= e!883905 (= (list!5437 (_2!7709 lt!459941)) (_2!7707 (lexList!642 thiss!19762 rules!2550 (list!5437 lt!459882)))))))

(declare-fun b!1383416 () Bool)

(declare-fun e!883906 () Bool)

(declare-fun isEmpty!8485 (BalanceConc!9194) Bool)

(assert (=> b!1383416 (= e!883906 (not (isEmpty!8485 (_1!7709 lt!459941))))))

(declare-fun b!1383417 () Bool)

(assert (=> b!1383417 (= e!883907 e!883906)))

(declare-fun res!624030 () Bool)

(assert (=> b!1383417 (= res!624030 (< (size!11526 (_2!7709 lt!459941)) (size!11526 lt!459882)))))

(assert (=> b!1383417 (=> (not res!624030) (not e!883906))))

(declare-fun b!1383418 () Bool)

(declare-fun res!624029 () Bool)

(assert (=> b!1383418 (=> (not res!624029) (not e!883905))))

(assert (=> b!1383418 (= res!624029 (= (list!5438 (_1!7709 lt!459941)) (_1!7707 (lexList!642 thiss!19762 rules!2550 (list!5437 lt!459882)))))))

(assert (= (and d!394981 c!227593) b!1383417))

(assert (= (and d!394981 (not c!227593)) b!1383414))

(assert (= (and b!1383417 res!624030) b!1383416))

(assert (= (and d!394981 res!624031) b!1383418))

(assert (= (and b!1383418 res!624029) b!1383415))

(declare-fun m!1556447 () Bool)

(assert (=> b!1383416 m!1556447))

(declare-fun m!1556449 () Bool)

(assert (=> d!394981 m!1556449))

(declare-fun m!1556451 () Bool)

(assert (=> d!394981 m!1556451))

(declare-fun m!1556453 () Bool)

(assert (=> b!1383418 m!1556453))

(assert (=> b!1383418 m!1556277))

(assert (=> b!1383418 m!1556277))

(assert (=> b!1383418 m!1556279))

(declare-fun m!1556455 () Bool)

(assert (=> b!1383417 m!1556455))

(declare-fun m!1556457 () Bool)

(assert (=> b!1383417 m!1556457))

(declare-fun m!1556459 () Bool)

(assert (=> b!1383415 m!1556459))

(assert (=> b!1383415 m!1556277))

(assert (=> b!1383415 m!1556277))

(assert (=> b!1383415 m!1556279))

(assert (=> b!1383211 d!394981))

(declare-fun b!1383431 () Bool)

(declare-fun e!883918 () Rule!4666)

(assert (=> b!1383431 (= e!883918 (h!19449 rules!2550))))

(declare-fun b!1383432 () Bool)

(declare-fun e!883919 () Rule!4666)

(assert (=> b!1383432 (= e!883919 (getWitness!399 (t!122103 rules!2550) lambda!59474))))

(declare-fun b!1383433 () Bool)

(declare-fun e!883916 () Bool)

(declare-fun dynLambda!6406 (Int Rule!4666) Bool)

(assert (=> b!1383433 (= e!883916 (dynLambda!6406 lambda!59474 (h!19449 rules!2550)))))

(declare-fun d!395019 () Bool)

(declare-fun e!883917 () Bool)

(assert (=> d!395019 e!883917))

(declare-fun res!624037 () Bool)

(assert (=> d!395019 (=> (not res!624037) (not e!883917))))

(declare-fun lt!459947 () Rule!4666)

(assert (=> d!395019 (= res!624037 (dynLambda!6406 lambda!59474 lt!459947))))

(assert (=> d!395019 (= lt!459947 e!883918)))

(declare-fun c!227598 () Bool)

(assert (=> d!395019 (= c!227598 e!883916)))

(declare-fun res!624036 () Bool)

(assert (=> d!395019 (=> (not res!624036) (not e!883916))))

(assert (=> d!395019 (= res!624036 ((_ is Cons!14048) rules!2550))))

(assert (=> d!395019 (exists!511 rules!2550 lambda!59474)))

(assert (=> d!395019 (= (getWitness!399 rules!2550 lambda!59474) lt!459947)))

(declare-fun b!1383434 () Bool)

(declare-fun lt!459946 () Unit!20295)

(declare-fun Unit!20297 () Unit!20295)

(assert (=> b!1383434 (= lt!459946 Unit!20297)))

(assert (=> b!1383434 false))

(declare-fun head!2516 (List!14114) Rule!4666)

(assert (=> b!1383434 (= e!883919 (head!2516 rules!2550))))

(declare-fun b!1383435 () Bool)

(assert (=> b!1383435 (= e!883917 (contains!2677 rules!2550 lt!459947))))

(declare-fun b!1383436 () Bool)

(assert (=> b!1383436 (= e!883918 e!883919)))

(declare-fun c!227599 () Bool)

(assert (=> b!1383436 (= c!227599 ((_ is Cons!14048) rules!2550))))

(assert (= (and d!395019 res!624036) b!1383433))

(assert (= (and d!395019 c!227598) b!1383431))

(assert (= (and d!395019 (not c!227598)) b!1383436))

(assert (= (and b!1383436 c!227599) b!1383432))

(assert (= (and b!1383436 (not c!227599)) b!1383434))

(assert (= (and d!395019 res!624037) b!1383435))

(declare-fun b_lambda!42685 () Bool)

(assert (=> (not b_lambda!42685) (not b!1383433)))

(declare-fun b_lambda!42687 () Bool)

(assert (=> (not b_lambda!42687) (not d!395019)))

(declare-fun m!1556461 () Bool)

(assert (=> b!1383433 m!1556461))

(declare-fun m!1556463 () Bool)

(assert (=> b!1383432 m!1556463))

(declare-fun m!1556465 () Bool)

(assert (=> d!395019 m!1556465))

(assert (=> d!395019 m!1556243))

(declare-fun m!1556467 () Bool)

(assert (=> b!1383435 m!1556467))

(declare-fun m!1556469 () Bool)

(assert (=> b!1383434 m!1556469))

(assert (=> b!1383211 d!395019))

(declare-fun d!395021 () Bool)

(declare-fun e!883922 () Bool)

(assert (=> d!395021 e!883922))

(declare-fun res!624040 () Bool)

(assert (=> d!395021 (=> (not res!624040) (not e!883922))))

(declare-fun lt!459950 () BalanceConc!9194)

(assert (=> d!395021 (= res!624040 (= (list!5438 lt!459950) (Cons!14050 t1!34 Nil!14050)))))

(declare-fun singleton!469 (Token!4528) BalanceConc!9194)

(assert (=> d!395021 (= lt!459950 (singleton!469 t1!34))))

(assert (=> d!395021 (= (singletonSeq!1074 t1!34) lt!459950)))

(declare-fun b!1383439 () Bool)

(declare-fun isBalanced!1363 (Conc!4627) Bool)

(assert (=> b!1383439 (= e!883922 (isBalanced!1363 (c!227560 lt!459950)))))

(assert (= (and d!395021 res!624040) b!1383439))

(declare-fun m!1556471 () Bool)

(assert (=> d!395021 m!1556471))

(declare-fun m!1556473 () Bool)

(assert (=> d!395021 m!1556473))

(declare-fun m!1556475 () Bool)

(assert (=> b!1383439 m!1556475))

(assert (=> b!1383211 d!395021))

(declare-fun d!395023 () Bool)

(declare-fun lt!459953 () BalanceConc!9192)

(declare-fun printList!617 (LexerInterface!2128 List!14116) List!14113)

(assert (=> d!395023 (= (list!5437 lt!459953) (printList!617 thiss!19762 (list!5438 (singletonSeq!1074 t1!34))))))

(declare-fun printTailRec!599 (LexerInterface!2128 BalanceConc!9194 Int BalanceConc!9192) BalanceConc!9192)

(assert (=> d!395023 (= lt!459953 (printTailRec!599 thiss!19762 (singletonSeq!1074 t1!34) 0 (BalanceConc!9193 Empty!4626)))))

(assert (=> d!395023 (= (print!892 thiss!19762 (singletonSeq!1074 t1!34)) lt!459953)))

(declare-fun bs!336709 () Bool)

(assert (= bs!336709 d!395023))

(declare-fun m!1556477 () Bool)

(assert (=> bs!336709 m!1556477))

(assert (=> bs!336709 m!1556191))

(declare-fun m!1556479 () Bool)

(assert (=> bs!336709 m!1556479))

(assert (=> bs!336709 m!1556479))

(declare-fun m!1556481 () Bool)

(assert (=> bs!336709 m!1556481))

(assert (=> bs!336709 m!1556191))

(declare-fun m!1556483 () Bool)

(assert (=> bs!336709 m!1556483))

(assert (=> b!1383211 d!395023))

(declare-fun d!395025 () Bool)

(declare-fun list!5440 (Conc!4627) List!14116)

(assert (=> d!395025 (= (list!5438 (_1!7709 lt!459871)) (list!5440 (c!227560 (_1!7709 lt!459871))))))

(declare-fun bs!336710 () Bool)

(assert (= bs!336710 d!395025))

(declare-fun m!1556485 () Bool)

(assert (=> bs!336710 m!1556485))

(assert (=> b!1383211 d!395025))

(declare-fun d!395027 () Bool)

(declare-fun res!624054 () Bool)

(declare-fun e!883933 () Bool)

(assert (=> d!395027 (=> res!624054 e!883933)))

(assert (=> d!395027 (= res!624054 (not ((_ is Cons!14048) rules!2550)))))

(assert (=> d!395027 (= (sepAndNonSepRulesDisjointChars!806 rules!2550 rules!2550) e!883933)))

(declare-fun b!1383453 () Bool)

(declare-fun e!883934 () Bool)

(assert (=> b!1383453 (= e!883933 e!883934)))

(declare-fun res!624055 () Bool)

(assert (=> b!1383453 (=> (not res!624055) (not e!883934))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!381 (Rule!4666 List!14114) Bool)

(assert (=> b!1383453 (= res!624055 (ruleDisjointCharsFromAllFromOtherType!381 (h!19449 rules!2550) rules!2550))))

(declare-fun b!1383454 () Bool)

(assert (=> b!1383454 (= e!883934 (sepAndNonSepRulesDisjointChars!806 rules!2550 (t!122103 rules!2550)))))

(assert (= (and d!395027 (not res!624054)) b!1383453))

(assert (= (and b!1383453 res!624055) b!1383454))

(declare-fun m!1556487 () Bool)

(assert (=> b!1383453 m!1556487))

(declare-fun m!1556489 () Bool)

(assert (=> b!1383454 m!1556489))

(assert (=> b!1383190 d!395027))

(declare-fun d!395029 () Bool)

(declare-fun lt!459960 () Bool)

(assert (=> d!395029 (= lt!459960 (select (content!2054 rules!2550) (rule!4192 t2!34)))))

(declare-fun e!883935 () Bool)

(assert (=> d!395029 (= lt!459960 e!883935)))

(declare-fun res!624057 () Bool)

(assert (=> d!395029 (=> (not res!624057) (not e!883935))))

(assert (=> d!395029 (= res!624057 ((_ is Cons!14048) rules!2550))))

(assert (=> d!395029 (= (contains!2677 rules!2550 (rule!4192 t2!34)) lt!459960)))

(declare-fun b!1383455 () Bool)

(declare-fun e!883936 () Bool)

(assert (=> b!1383455 (= e!883935 e!883936)))

(declare-fun res!624056 () Bool)

(assert (=> b!1383455 (=> res!624056 e!883936)))

(assert (=> b!1383455 (= res!624056 (= (h!19449 rules!2550) (rule!4192 t2!34)))))

(declare-fun b!1383456 () Bool)

(assert (=> b!1383456 (= e!883936 (contains!2677 (t!122103 rules!2550) (rule!4192 t2!34)))))

(assert (= (and d!395029 res!624057) b!1383455))

(assert (= (and b!1383455 (not res!624056)) b!1383456))

(assert (=> d!395029 m!1556301))

(declare-fun m!1556495 () Bool)

(assert (=> d!395029 m!1556495))

(declare-fun m!1556497 () Bool)

(assert (=> b!1383456 m!1556497))

(assert (=> b!1383207 d!395029))

(declare-fun b!1383475 () Bool)

(declare-fun e!883951 () Bool)

(declare-fun call!92585 () Bool)

(assert (=> b!1383475 (= e!883951 call!92585)))

(declare-fun c!227604 () Bool)

(declare-fun call!92586 () Bool)

(declare-fun c!227605 () Bool)

(declare-fun bm!92580 () Bool)

(assert (=> bm!92580 (= call!92586 (validRegex!1631 (ite c!227605 (reg!4076 (regex!2433 (rule!4192 t1!34))) (ite c!227604 (regTwo!8007 (regex!2433 (rule!4192 t1!34))) (regTwo!8006 (regex!2433 (rule!4192 t1!34)))))))))

(declare-fun b!1383476 () Bool)

(declare-fun e!883954 () Bool)

(assert (=> b!1383476 (= e!883954 call!92586)))

(declare-fun b!1383477 () Bool)

(declare-fun e!883956 () Bool)

(declare-fun e!883952 () Bool)

(assert (=> b!1383477 (= e!883956 e!883952)))

(assert (=> b!1383477 (= c!227605 ((_ is Star!3747) (regex!2433 (rule!4192 t1!34))))))

(declare-fun b!1383478 () Bool)

(assert (=> b!1383478 (= e!883952 e!883954)))

(declare-fun res!624069 () Bool)

(declare-fun nullable!1211 (Regex!3747) Bool)

(assert (=> b!1383478 (= res!624069 (not (nullable!1211 (reg!4076 (regex!2433 (rule!4192 t1!34))))))))

(assert (=> b!1383478 (=> (not res!624069) (not e!883954))))

(declare-fun bm!92582 () Bool)

(assert (=> bm!92582 (= call!92585 call!92586)))

(declare-fun b!1383479 () Bool)

(declare-fun e!883953 () Bool)

(assert (=> b!1383479 (= e!883952 e!883953)))

(assert (=> b!1383479 (= c!227604 ((_ is Union!3747) (regex!2433 (rule!4192 t1!34))))))

(declare-fun bm!92581 () Bool)

(declare-fun call!92587 () Bool)

(assert (=> bm!92581 (= call!92587 (validRegex!1631 (ite c!227604 (regOne!8007 (regex!2433 (rule!4192 t1!34))) (regOne!8006 (regex!2433 (rule!4192 t1!34))))))))

(declare-fun d!395031 () Bool)

(declare-fun res!624071 () Bool)

(assert (=> d!395031 (=> res!624071 e!883956)))

(assert (=> d!395031 (= res!624071 ((_ is ElementMatch!3747) (regex!2433 (rule!4192 t1!34))))))

(assert (=> d!395031 (= (validRegex!1631 (regex!2433 (rule!4192 t1!34))) e!883956)))

(declare-fun b!1383480 () Bool)

(declare-fun e!883955 () Bool)

(assert (=> b!1383480 (= e!883955 e!883951)))

(declare-fun res!624070 () Bool)

(assert (=> b!1383480 (=> (not res!624070) (not e!883951))))

(assert (=> b!1383480 (= res!624070 call!92587)))

(declare-fun b!1383481 () Bool)

(declare-fun res!624072 () Bool)

(declare-fun e!883957 () Bool)

(assert (=> b!1383481 (=> (not res!624072) (not e!883957))))

(assert (=> b!1383481 (= res!624072 call!92587)))

(assert (=> b!1383481 (= e!883953 e!883957)))

(declare-fun b!1383482 () Bool)

(assert (=> b!1383482 (= e!883957 call!92585)))

(declare-fun b!1383483 () Bool)

(declare-fun res!624068 () Bool)

(assert (=> b!1383483 (=> res!624068 e!883955)))

(assert (=> b!1383483 (= res!624068 (not ((_ is Concat!6271) (regex!2433 (rule!4192 t1!34)))))))

(assert (=> b!1383483 (= e!883953 e!883955)))

(assert (= (and d!395031 (not res!624071)) b!1383477))

(assert (= (and b!1383477 c!227605) b!1383478))

(assert (= (and b!1383477 (not c!227605)) b!1383479))

(assert (= (and b!1383478 res!624069) b!1383476))

(assert (= (and b!1383479 c!227604) b!1383481))

(assert (= (and b!1383479 (not c!227604)) b!1383483))

(assert (= (and b!1383481 res!624072) b!1383482))

(assert (= (and b!1383483 (not res!624068)) b!1383480))

(assert (= (and b!1383480 res!624070) b!1383475))

(assert (= (or b!1383481 b!1383480) bm!92581))

(assert (= (or b!1383482 b!1383475) bm!92582))

(assert (= (or b!1383476 bm!92582) bm!92580))

(declare-fun m!1556523 () Bool)

(assert (=> bm!92580 m!1556523))

(declare-fun m!1556525 () Bool)

(assert (=> b!1383478 m!1556525))

(declare-fun m!1556527 () Bool)

(assert (=> bm!92581 m!1556527))

(assert (=> b!1383229 d!395031))

(declare-fun bs!336714 () Bool)

(declare-fun d!395041 () Bool)

(assert (= bs!336714 (and d!395041 b!1383186)))

(declare-fun lambda!59481 () Int)

(assert (=> bs!336714 (not (= lambda!59481 lambda!59473))))

(assert (=> d!395041 true))

(declare-fun order!8563 () Int)

(declare-fun dynLambda!6407 (Int Int) Int)

(assert (=> d!395041 (< (dynLambda!6407 order!8563 lambda!59473) (dynLambda!6407 order!8563 lambda!59481))))

(declare-fun forall!3416 (List!14115 Int) Bool)

(assert (=> d!395041 (= (exists!510 lt!459873 lambda!59473) (not (forall!3416 lt!459873 lambda!59481)))))

(declare-fun bs!336715 () Bool)

(assert (= bs!336715 d!395041))

(declare-fun m!1556529 () Bool)

(assert (=> bs!336715 m!1556529))

(assert (=> b!1383186 d!395041))

(declare-fun bs!336716 () Bool)

(declare-fun d!395043 () Bool)

(assert (= bs!336716 (and d!395043 b!1383186)))

(declare-fun lambda!59482 () Int)

(assert (=> bs!336716 (not (= lambda!59482 lambda!59473))))

(declare-fun bs!336717 () Bool)

(assert (= bs!336717 (and d!395043 d!395041)))

(assert (=> bs!336717 (= lambda!59482 lambda!59481)))

(assert (=> d!395043 true))

(assert (=> d!395043 (< (dynLambda!6407 order!8563 lambda!59473) (dynLambda!6407 order!8563 lambda!59482))))

(assert (=> d!395043 (= (exists!510 (map!3110 rules!2550 lambda!59472) lambda!59473) (not (forall!3416 (map!3110 rules!2550 lambda!59472) lambda!59482)))))

(declare-fun bs!336718 () Bool)

(assert (= bs!336718 d!395043))

(assert (=> bs!336718 m!1556257))

(declare-fun m!1556531 () Bool)

(assert (=> bs!336718 m!1556531))

(assert (=> b!1383186 d!395043))

(declare-fun d!395045 () Bool)

(declare-fun lt!459967 () List!14115)

(declare-fun size!11530 (List!14115) Int)

(declare-fun size!11531 (List!14114) Int)

(assert (=> d!395045 (= (size!11530 lt!459967) (size!11531 rules!2550))))

(declare-fun e!883960 () List!14115)

(assert (=> d!395045 (= lt!459967 e!883960)))

(declare-fun c!227608 () Bool)

(assert (=> d!395045 (= c!227608 ((_ is Nil!14048) rules!2550))))

(assert (=> d!395045 (= (map!3110 rules!2550 lambda!59472) lt!459967)))

(declare-fun b!1383490 () Bool)

(assert (=> b!1383490 (= e!883960 Nil!14049)))

(declare-fun b!1383491 () Bool)

(declare-fun $colon$colon!212 (List!14115 Regex!3747) List!14115)

(declare-fun dynLambda!6408 (Int Rule!4666) Regex!3747)

(assert (=> b!1383491 (= e!883960 ($colon$colon!212 (map!3110 (t!122103 rules!2550) lambda!59472) (dynLambda!6408 lambda!59472 (h!19449 rules!2550))))))

(assert (= (and d!395045 c!227608) b!1383490))

(assert (= (and d!395045 (not c!227608)) b!1383491))

(declare-fun b_lambda!42689 () Bool)

(assert (=> (not b_lambda!42689) (not b!1383491)))

(declare-fun m!1556533 () Bool)

(assert (=> d!395045 m!1556533))

(declare-fun m!1556535 () Bool)

(assert (=> d!395045 m!1556535))

(declare-fun m!1556537 () Bool)

(assert (=> b!1383491 m!1556537))

(declare-fun m!1556539 () Bool)

(assert (=> b!1383491 m!1556539))

(assert (=> b!1383491 m!1556537))

(assert (=> b!1383491 m!1556539))

(declare-fun m!1556541 () Bool)

(assert (=> b!1383491 m!1556541))

(assert (=> b!1383186 d!395045))

(declare-fun bs!336719 () Bool)

(declare-fun d!395047 () Bool)

(assert (= bs!336719 (and d!395047 b!1383186)))

(declare-fun lambda!59487 () Int)

(assert (=> bs!336719 (not (= lambda!59487 lambda!59473))))

(declare-fun bs!336720 () Bool)

(assert (= bs!336720 (and d!395047 d!395041)))

(assert (=> bs!336720 (not (= lambda!59487 lambda!59481))))

(declare-fun bs!336721 () Bool)

(assert (= bs!336721 (and d!395047 d!395043)))

(assert (=> bs!336721 (not (= lambda!59487 lambda!59482))))

(declare-fun lambda!59488 () Int)

(assert (=> bs!336719 (= lambda!59488 lambda!59473)))

(assert (=> bs!336720 (not (= lambda!59488 lambda!59481))))

(assert (=> bs!336721 (not (= lambda!59488 lambda!59482))))

(declare-fun bs!336722 () Bool)

(assert (= bs!336722 d!395047))

(assert (=> bs!336722 (not (= lambda!59488 lambda!59487))))

(assert (=> d!395047 true))

(assert (=> d!395047 (= (matchR!1738 lt!459883 lt!459880) (exists!510 lt!459873 lambda!59488))))

(declare-fun lt!459970 () Unit!20295)

(declare-fun choose!8488 (Regex!3747 List!14115 List!14113) Unit!20295)

(assert (=> d!395047 (= lt!459970 (choose!8488 lt!459883 lt!459873 lt!459880))))

(assert (=> d!395047 (forall!3416 lt!459873 lambda!59487)))

(assert (=> d!395047 (= (matchRGenUnionSpec!158 lt!459883 lt!459873 lt!459880) lt!459970)))

(assert (=> bs!336722 m!1556275))

(declare-fun m!1556543 () Bool)

(assert (=> bs!336722 m!1556543))

(declare-fun m!1556545 () Bool)

(assert (=> bs!336722 m!1556545))

(declare-fun m!1556547 () Bool)

(assert (=> bs!336722 m!1556547))

(assert (=> b!1383186 d!395047))

(declare-fun d!395049 () Bool)

(declare-fun res!624077 () Bool)

(declare-fun e!883965 () Bool)

(assert (=> d!395049 (=> (not res!624077) (not e!883965))))

(declare-fun rulesValid!908 (LexerInterface!2128 List!14114) Bool)

(assert (=> d!395049 (= res!624077 (rulesValid!908 thiss!19762 rules!2550))))

(assert (=> d!395049 (= (rulesInvariant!1998 thiss!19762 rules!2550) e!883965)))

(declare-fun b!1383496 () Bool)

(declare-datatypes ((List!14117 0))(
  ( (Nil!14051) (Cons!14051 (h!19452 String!16851) (t!122142 List!14117)) )
))
(declare-fun noDuplicateTag!908 (LexerInterface!2128 List!14114 List!14117) Bool)

(assert (=> b!1383496 (= e!883965 (noDuplicateTag!908 thiss!19762 rules!2550 Nil!14051))))

(assert (= (and d!395049 res!624077) b!1383496))

(declare-fun m!1556549 () Bool)

(assert (=> d!395049 m!1556549))

(declare-fun m!1556551 () Bool)

(assert (=> b!1383496 m!1556551))

(assert (=> b!1383187 d!395049))

(declare-fun d!395051 () Bool)

(declare-fun lt!459973 () Bool)

(declare-fun content!2055 (List!14113) (InoxSet C!7784))

(assert (=> d!395051 (= lt!459973 (select (content!2055 lt!459878) (head!2515 lt!459878)))))

(declare-fun e!883971 () Bool)

(assert (=> d!395051 (= lt!459973 e!883971)))

(declare-fun res!624082 () Bool)

(assert (=> d!395051 (=> (not res!624082) (not e!883971))))

(assert (=> d!395051 (= res!624082 ((_ is Cons!14047) lt!459878))))

(assert (=> d!395051 (= (contains!2678 lt!459878 (head!2515 lt!459878)) lt!459973)))

(declare-fun b!1383501 () Bool)

(declare-fun e!883970 () Bool)

(assert (=> b!1383501 (= e!883971 e!883970)))

(declare-fun res!624083 () Bool)

(assert (=> b!1383501 (=> res!624083 e!883970)))

(assert (=> b!1383501 (= res!624083 (= (h!19448 lt!459878) (head!2515 lt!459878)))))

(declare-fun b!1383502 () Bool)

(assert (=> b!1383502 (= e!883970 (contains!2678 (t!122102 lt!459878) (head!2515 lt!459878)))))

(assert (= (and d!395051 res!624082) b!1383501))

(assert (= (and b!1383501 (not res!624083)) b!1383502))

(declare-fun m!1556553 () Bool)

(assert (=> d!395051 m!1556553))

(assert (=> d!395051 m!1556177))

(declare-fun m!1556555 () Bool)

(assert (=> d!395051 m!1556555))

(assert (=> b!1383502 m!1556177))

(declare-fun m!1556557 () Bool)

(assert (=> b!1383502 m!1556557))

(assert (=> b!1383208 d!395051))

(declare-fun d!395053 () Bool)

(assert (=> d!395053 (= (head!2515 lt!459878) (h!19448 lt!459878))))

(assert (=> b!1383208 d!395053))

(declare-fun d!395055 () Bool)

(declare-fun lt!459974 () Bool)

(assert (=> d!395055 (= lt!459974 (select (content!2055 lt!459881) lt!459893))))

(declare-fun e!883973 () Bool)

(assert (=> d!395055 (= lt!459974 e!883973)))

(declare-fun res!624084 () Bool)

(assert (=> d!395055 (=> (not res!624084) (not e!883973))))

(assert (=> d!395055 (= res!624084 ((_ is Cons!14047) lt!459881))))

(assert (=> d!395055 (= (contains!2678 lt!459881 lt!459893) lt!459974)))

(declare-fun b!1383503 () Bool)

(declare-fun e!883972 () Bool)

(assert (=> b!1383503 (= e!883973 e!883972)))

(declare-fun res!624085 () Bool)

(assert (=> b!1383503 (=> res!624085 e!883972)))

(assert (=> b!1383503 (= res!624085 (= (h!19448 lt!459881) lt!459893))))

(declare-fun b!1383504 () Bool)

(assert (=> b!1383504 (= e!883972 (contains!2678 (t!122102 lt!459881) lt!459893))))

(assert (= (and d!395055 res!624084) b!1383503))

(assert (= (and b!1383503 (not res!624085)) b!1383504))

(declare-fun m!1556559 () Bool)

(assert (=> d!395055 m!1556559))

(declare-fun m!1556561 () Bool)

(assert (=> d!395055 m!1556561))

(declare-fun m!1556563 () Bool)

(assert (=> b!1383504 m!1556563))

(assert (=> b!1383209 d!395055))

(declare-fun d!395057 () Bool)

(declare-fun lt!459977 () Bool)

(declare-fun isEmpty!8489 (List!14113) Bool)

(assert (=> d!395057 (= lt!459977 (isEmpty!8489 (list!5437 (_2!7709 lt!459871))))))

(declare-fun isEmpty!8490 (Conc!4626) Bool)

(assert (=> d!395057 (= lt!459977 (isEmpty!8490 (c!227558 (_2!7709 lt!459871))))))

(assert (=> d!395057 (= (isEmpty!8483 (_2!7709 lt!459871)) lt!459977)))

(declare-fun bs!336723 () Bool)

(assert (= bs!336723 d!395057))

(declare-fun m!1556565 () Bool)

(assert (=> bs!336723 m!1556565))

(assert (=> bs!336723 m!1556565))

(declare-fun m!1556567 () Bool)

(assert (=> bs!336723 m!1556567))

(declare-fun m!1556569 () Bool)

(assert (=> bs!336723 m!1556569))

(assert (=> b!1383215 d!395057))

(declare-fun d!395059 () Bool)

(declare-fun lt!459978 () Bool)

(assert (=> d!395059 (= lt!459978 (select (content!2055 lt!459881) lt!459885))))

(declare-fun e!883975 () Bool)

(assert (=> d!395059 (= lt!459978 e!883975)))

(declare-fun res!624086 () Bool)

(assert (=> d!395059 (=> (not res!624086) (not e!883975))))

(assert (=> d!395059 (= res!624086 ((_ is Cons!14047) lt!459881))))

(assert (=> d!395059 (= (contains!2678 lt!459881 lt!459885) lt!459978)))

(declare-fun b!1383505 () Bool)

(declare-fun e!883974 () Bool)

(assert (=> b!1383505 (= e!883975 e!883974)))

(declare-fun res!624087 () Bool)

(assert (=> b!1383505 (=> res!624087 e!883974)))

(assert (=> b!1383505 (= res!624087 (= (h!19448 lt!459881) lt!459885))))

(declare-fun b!1383506 () Bool)

(assert (=> b!1383506 (= e!883974 (contains!2678 (t!122102 lt!459881) lt!459885))))

(assert (= (and d!395059 res!624086) b!1383505))

(assert (= (and b!1383505 (not res!624087)) b!1383506))

(assert (=> d!395059 m!1556559))

(declare-fun m!1556571 () Bool)

(assert (=> d!395059 m!1556571))

(declare-fun m!1556573 () Bool)

(assert (=> b!1383506 m!1556573))

(assert (=> b!1383194 d!395059))

(declare-fun d!395061 () Bool)

(declare-fun lt!459981 () C!7784)

(declare-fun apply!3506 (List!14113 Int) C!7784)

(assert (=> d!395061 (= lt!459981 (apply!3506 (list!5437 lt!459894) 0))))

(declare-fun apply!3507 (Conc!4626 Int) C!7784)

(assert (=> d!395061 (= lt!459981 (apply!3507 (c!227558 lt!459894) 0))))

(declare-fun e!883978 () Bool)

(assert (=> d!395061 e!883978))

(declare-fun res!624090 () Bool)

(assert (=> d!395061 (=> (not res!624090) (not e!883978))))

(assert (=> d!395061 (= res!624090 (<= 0 0))))

(assert (=> d!395061 (= (apply!3501 lt!459894 0) lt!459981)))

(declare-fun b!1383509 () Bool)

(assert (=> b!1383509 (= e!883978 (< 0 (size!11526 lt!459894)))))

(assert (= (and d!395061 res!624090) b!1383509))

(assert (=> d!395061 m!1556157))

(assert (=> d!395061 m!1556157))

(declare-fun m!1556575 () Bool)

(assert (=> d!395061 m!1556575))

(declare-fun m!1556577 () Bool)

(assert (=> d!395061 m!1556577))

(declare-fun m!1556579 () Bool)

(assert (=> b!1383509 m!1556579))

(assert (=> b!1383194 d!395061))

(declare-fun b!1383528 () Bool)

(declare-fun res!624107 () Bool)

(declare-fun e!883985 () Bool)

(assert (=> b!1383528 (=> (not res!624107) (not e!883985))))

(declare-fun lt!459993 () Option!2692)

(declare-fun get!4367 (Option!2692) tuple2!13644)

(assert (=> b!1383528 (= res!624107 (matchR!1738 (regex!2433 (rule!4192 (_1!7708 (get!4367 lt!459993)))) (list!5437 (charsOf!1405 (_1!7708 (get!4367 lt!459993))))))))

(declare-fun d!395063 () Bool)

(declare-fun e!883986 () Bool)

(assert (=> d!395063 e!883986))

(declare-fun res!624110 () Bool)

(assert (=> d!395063 (=> res!624110 e!883986)))

(declare-fun isEmpty!8491 (Option!2692) Bool)

(assert (=> d!395063 (= res!624110 (isEmpty!8491 lt!459993))))

(declare-fun e!883987 () Option!2692)

(assert (=> d!395063 (= lt!459993 e!883987)))

(declare-fun c!227611 () Bool)

(assert (=> d!395063 (= c!227611 (and ((_ is Cons!14048) rules!2550) ((_ is Nil!14048) (t!122103 rules!2550))))))

(declare-fun lt!459995 () Unit!20295)

(declare-fun lt!459992 () Unit!20295)

(assert (=> d!395063 (= lt!459995 lt!459992)))

(declare-fun isPrefix!1138 (List!14113 List!14113) Bool)

(assert (=> d!395063 (isPrefix!1138 lt!459878 lt!459878)))

(declare-fun lemmaIsPrefixRefl!797 (List!14113 List!14113) Unit!20295)

(assert (=> d!395063 (= lt!459992 (lemmaIsPrefixRefl!797 lt!459878 lt!459878))))

(declare-fun rulesValidInductive!780 (LexerInterface!2128 List!14114) Bool)

(assert (=> d!395063 (rulesValidInductive!780 thiss!19762 rules!2550)))

(assert (=> d!395063 (= (maxPrefix!1102 thiss!19762 rules!2550 lt!459878) lt!459993)))

(declare-fun b!1383529 () Bool)

(declare-fun res!624108 () Bool)

(assert (=> b!1383529 (=> (not res!624108) (not e!883985))))

(assert (=> b!1383529 (= res!624108 (= (list!5437 (charsOf!1405 (_1!7708 (get!4367 lt!459993)))) (originalCharacters!3295 (_1!7708 (get!4367 lt!459993)))))))

(declare-fun b!1383530 () Bool)

(declare-fun res!624106 () Bool)

(assert (=> b!1383530 (=> (not res!624106) (not e!883985))))

(declare-fun apply!3508 (TokenValueInjection!4706 BalanceConc!9192) TokenValue!2523)

(declare-fun seqFromList!1641 (List!14113) BalanceConc!9192)

(assert (=> b!1383530 (= res!624106 (= (value!78973 (_1!7708 (get!4367 lt!459993))) (apply!3508 (transformation!2433 (rule!4192 (_1!7708 (get!4367 lt!459993)))) (seqFromList!1641 (originalCharacters!3295 (_1!7708 (get!4367 lt!459993)))))))))

(declare-fun b!1383531 () Bool)

(declare-fun call!92590 () Option!2692)

(assert (=> b!1383531 (= e!883987 call!92590)))

(declare-fun b!1383532 () Bool)

(declare-fun res!624105 () Bool)

(assert (=> b!1383532 (=> (not res!624105) (not e!883985))))

(declare-fun size!11534 (List!14113) Int)

(assert (=> b!1383532 (= res!624105 (< (size!11534 (_2!7708 (get!4367 lt!459993))) (size!11534 lt!459878)))))

(declare-fun b!1383533 () Bool)

(declare-fun lt!459994 () Option!2692)

(declare-fun lt!459996 () Option!2692)

(assert (=> b!1383533 (= e!883987 (ite (and ((_ is None!2691) lt!459994) ((_ is None!2691) lt!459996)) None!2691 (ite ((_ is None!2691) lt!459996) lt!459994 (ite ((_ is None!2691) lt!459994) lt!459996 (ite (>= (size!11525 (_1!7708 (v!21537 lt!459994))) (size!11525 (_1!7708 (v!21537 lt!459996)))) lt!459994 lt!459996)))))))

(assert (=> b!1383533 (= lt!459994 call!92590)))

(assert (=> b!1383533 (= lt!459996 (maxPrefix!1102 thiss!19762 (t!122103 rules!2550) lt!459878))))

(declare-fun b!1383534 () Bool)

(assert (=> b!1383534 (= e!883985 (contains!2677 rules!2550 (rule!4192 (_1!7708 (get!4367 lt!459993)))))))

(declare-fun b!1383535 () Bool)

(declare-fun res!624111 () Bool)

(assert (=> b!1383535 (=> (not res!624111) (not e!883985))))

(assert (=> b!1383535 (= res!624111 (= (++!3642 (list!5437 (charsOf!1405 (_1!7708 (get!4367 lt!459993)))) (_2!7708 (get!4367 lt!459993))) lt!459878))))

(declare-fun bm!92585 () Bool)

(declare-fun maxPrefixOneRule!623 (LexerInterface!2128 Rule!4666 List!14113) Option!2692)

(assert (=> bm!92585 (= call!92590 (maxPrefixOneRule!623 thiss!19762 (h!19449 rules!2550) lt!459878))))

(declare-fun b!1383536 () Bool)

(assert (=> b!1383536 (= e!883986 e!883985)))

(declare-fun res!624109 () Bool)

(assert (=> b!1383536 (=> (not res!624109) (not e!883985))))

(declare-fun isDefined!2225 (Option!2692) Bool)

(assert (=> b!1383536 (= res!624109 (isDefined!2225 lt!459993))))

(assert (= (and d!395063 c!227611) b!1383531))

(assert (= (and d!395063 (not c!227611)) b!1383533))

(assert (= (or b!1383531 b!1383533) bm!92585))

(assert (= (and d!395063 (not res!624110)) b!1383536))

(assert (= (and b!1383536 res!624109) b!1383529))

(assert (= (and b!1383529 res!624108) b!1383532))

(assert (= (and b!1383532 res!624105) b!1383535))

(assert (= (and b!1383535 res!624111) b!1383530))

(assert (= (and b!1383530 res!624106) b!1383528))

(assert (= (and b!1383528 res!624107) b!1383534))

(declare-fun m!1556581 () Bool)

(assert (=> b!1383528 m!1556581))

(declare-fun m!1556583 () Bool)

(assert (=> b!1383528 m!1556583))

(assert (=> b!1383528 m!1556583))

(declare-fun m!1556585 () Bool)

(assert (=> b!1383528 m!1556585))

(assert (=> b!1383528 m!1556585))

(declare-fun m!1556587 () Bool)

(assert (=> b!1383528 m!1556587))

(assert (=> b!1383535 m!1556581))

(assert (=> b!1383535 m!1556583))

(assert (=> b!1383535 m!1556583))

(assert (=> b!1383535 m!1556585))

(assert (=> b!1383535 m!1556585))

(declare-fun m!1556589 () Bool)

(assert (=> b!1383535 m!1556589))

(assert (=> b!1383530 m!1556581))

(declare-fun m!1556591 () Bool)

(assert (=> b!1383530 m!1556591))

(assert (=> b!1383530 m!1556591))

(declare-fun m!1556593 () Bool)

(assert (=> b!1383530 m!1556593))

(assert (=> b!1383534 m!1556581))

(declare-fun m!1556595 () Bool)

(assert (=> b!1383534 m!1556595))

(declare-fun m!1556597 () Bool)

(assert (=> b!1383536 m!1556597))

(assert (=> b!1383532 m!1556581))

(declare-fun m!1556599 () Bool)

(assert (=> b!1383532 m!1556599))

(declare-fun m!1556601 () Bool)

(assert (=> b!1383532 m!1556601))

(declare-fun m!1556603 () Bool)

(assert (=> b!1383533 m!1556603))

(declare-fun m!1556605 () Bool)

(assert (=> bm!92585 m!1556605))

(assert (=> b!1383529 m!1556581))

(assert (=> b!1383529 m!1556583))

(assert (=> b!1383529 m!1556583))

(assert (=> b!1383529 m!1556585))

(declare-fun m!1556607 () Bool)

(assert (=> d!395063 m!1556607))

(declare-fun m!1556609 () Bool)

(assert (=> d!395063 m!1556609))

(declare-fun m!1556611 () Bool)

(assert (=> d!395063 m!1556611))

(declare-fun m!1556613 () Bool)

(assert (=> d!395063 m!1556613))

(assert (=> b!1383195 d!395063))

(declare-fun d!395065 () Bool)

(declare-fun prefixMatchZipperSequence!277 (Regex!3747 BalanceConc!9192) Bool)

(declare-fun ++!3643 (BalanceConc!9192 BalanceConc!9192) BalanceConc!9192)

(declare-fun singletonSeq!1075 (C!7784) BalanceConc!9192)

(assert (=> d!395065 (= (separableTokensPredicate!411 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!277 (rulesRegex!316 thiss!19762 rules!2550) (++!3643 (charsOf!1405 t1!34) (singletonSeq!1075 (apply!3501 (charsOf!1405 t2!34) 0))))))))

(declare-fun bs!336727 () Bool)

(assert (= bs!336727 d!395065))

(assert (=> bs!336727 m!1556153))

(declare-fun m!1556643 () Bool)

(assert (=> bs!336727 m!1556643))

(declare-fun m!1556645 () Bool)

(assert (=> bs!336727 m!1556645))

(assert (=> bs!336727 m!1556203))

(declare-fun m!1556647 () Bool)

(assert (=> bs!336727 m!1556647))

(assert (=> bs!336727 m!1556159))

(assert (=> bs!336727 m!1556645))

(declare-fun m!1556649 () Bool)

(assert (=> bs!336727 m!1556649))

(assert (=> bs!336727 m!1556647))

(assert (=> bs!336727 m!1556643))

(assert (=> bs!336727 m!1556203))

(assert (=> bs!336727 m!1556159))

(assert (=> bs!336727 m!1556153))

(assert (=> b!1383216 d!395065))

(declare-fun b!1383593 () Bool)

(declare-fun e!884022 () Bool)

(declare-fun derivativeStep!969 (Regex!3747 C!7784) Regex!3747)

(declare-fun tail!2008 (List!14113) List!14113)

(assert (=> b!1383593 (= e!884022 (matchR!1738 (derivativeStep!969 (regex!2433 (rule!4192 t2!34)) (head!2515 lt!459877)) (tail!2008 lt!459877)))))

(declare-fun b!1383594 () Bool)

(declare-fun e!884025 () Bool)

(declare-fun e!884023 () Bool)

(assert (=> b!1383594 (= e!884025 e!884023)))

(declare-fun c!227624 () Bool)

(assert (=> b!1383594 (= c!227624 ((_ is EmptyLang!3747) (regex!2433 (rule!4192 t2!34))))))

(declare-fun b!1383595 () Bool)

(declare-fun e!884020 () Bool)

(assert (=> b!1383595 (= e!884020 (= (head!2515 lt!459877) (c!227559 (regex!2433 (rule!4192 t2!34)))))))

(declare-fun b!1383596 () Bool)

(declare-fun res!624142 () Bool)

(declare-fun e!884019 () Bool)

(assert (=> b!1383596 (=> res!624142 e!884019)))

(assert (=> b!1383596 (= res!624142 (not (isEmpty!8489 (tail!2008 lt!459877))))))

(declare-fun d!395075 () Bool)

(assert (=> d!395075 e!884025))

(declare-fun c!227625 () Bool)

(assert (=> d!395075 (= c!227625 ((_ is EmptyExpr!3747) (regex!2433 (rule!4192 t2!34))))))

(declare-fun lt!460014 () Bool)

(assert (=> d!395075 (= lt!460014 e!884022)))

(declare-fun c!227626 () Bool)

(assert (=> d!395075 (= c!227626 (isEmpty!8489 lt!459877))))

(assert (=> d!395075 (validRegex!1631 (regex!2433 (rule!4192 t2!34)))))

(assert (=> d!395075 (= (matchR!1738 (regex!2433 (rule!4192 t2!34)) lt!459877) lt!460014)))

(declare-fun b!1383597 () Bool)

(assert (=> b!1383597 (= e!884019 (not (= (head!2515 lt!459877) (c!227559 (regex!2433 (rule!4192 t2!34))))))))

(declare-fun b!1383598 () Bool)

(declare-fun res!624146 () Bool)

(declare-fun e!884024 () Bool)

(assert (=> b!1383598 (=> res!624146 e!884024)))

(assert (=> b!1383598 (= res!624146 e!884020)))

(declare-fun res!624144 () Bool)

(assert (=> b!1383598 (=> (not res!624144) (not e!884020))))

(assert (=> b!1383598 (= res!624144 lt!460014)))

(declare-fun b!1383599 () Bool)

(assert (=> b!1383599 (= e!884023 (not lt!460014))))

(declare-fun b!1383600 () Bool)

(declare-fun e!884021 () Bool)

(assert (=> b!1383600 (= e!884021 e!884019)))

(declare-fun res!624143 () Bool)

(assert (=> b!1383600 (=> res!624143 e!884019)))

(declare-fun call!92593 () Bool)

(assert (=> b!1383600 (= res!624143 call!92593)))

(declare-fun b!1383601 () Bool)

(assert (=> b!1383601 (= e!884022 (nullable!1211 (regex!2433 (rule!4192 t2!34))))))

(declare-fun bm!92588 () Bool)

(assert (=> bm!92588 (= call!92593 (isEmpty!8489 lt!459877))))

(declare-fun b!1383602 () Bool)

(assert (=> b!1383602 (= e!884025 (= lt!460014 call!92593))))

(declare-fun b!1383603 () Bool)

(declare-fun res!624147 () Bool)

(assert (=> b!1383603 (=> (not res!624147) (not e!884020))))

(assert (=> b!1383603 (= res!624147 (isEmpty!8489 (tail!2008 lt!459877)))))

(declare-fun b!1383604 () Bool)

(assert (=> b!1383604 (= e!884024 e!884021)))

(declare-fun res!624145 () Bool)

(assert (=> b!1383604 (=> (not res!624145) (not e!884021))))

(assert (=> b!1383604 (= res!624145 (not lt!460014))))

(declare-fun b!1383605 () Bool)

(declare-fun res!624148 () Bool)

(assert (=> b!1383605 (=> res!624148 e!884024)))

(assert (=> b!1383605 (= res!624148 (not ((_ is ElementMatch!3747) (regex!2433 (rule!4192 t2!34)))))))

(assert (=> b!1383605 (= e!884023 e!884024)))

(declare-fun b!1383606 () Bool)

(declare-fun res!624149 () Bool)

(assert (=> b!1383606 (=> (not res!624149) (not e!884020))))

(assert (=> b!1383606 (= res!624149 (not call!92593))))

(assert (= (and d!395075 c!227626) b!1383601))

(assert (= (and d!395075 (not c!227626)) b!1383593))

(assert (= (and d!395075 c!227625) b!1383602))

(assert (= (and d!395075 (not c!227625)) b!1383594))

(assert (= (and b!1383594 c!227624) b!1383599))

(assert (= (and b!1383594 (not c!227624)) b!1383605))

(assert (= (and b!1383605 (not res!624148)) b!1383598))

(assert (= (and b!1383598 res!624144) b!1383606))

(assert (= (and b!1383606 res!624149) b!1383603))

(assert (= (and b!1383603 res!624147) b!1383595))

(assert (= (and b!1383598 (not res!624146)) b!1383604))

(assert (= (and b!1383604 res!624145) b!1383600))

(assert (= (and b!1383600 (not res!624143)) b!1383596))

(assert (= (and b!1383596 (not res!624142)) b!1383597))

(assert (= (or b!1383602 b!1383600 b!1383606) bm!92588))

(declare-fun m!1556669 () Bool)

(assert (=> b!1383603 m!1556669))

(assert (=> b!1383603 m!1556669))

(declare-fun m!1556671 () Bool)

(assert (=> b!1383603 m!1556671))

(declare-fun m!1556673 () Bool)

(assert (=> d!395075 m!1556673))

(declare-fun m!1556675 () Bool)

(assert (=> d!395075 m!1556675))

(declare-fun m!1556677 () Bool)

(assert (=> b!1383597 m!1556677))

(assert (=> bm!92588 m!1556673))

(assert (=> b!1383596 m!1556669))

(assert (=> b!1383596 m!1556669))

(assert (=> b!1383596 m!1556671))

(assert (=> b!1383595 m!1556677))

(declare-fun m!1556679 () Bool)

(assert (=> b!1383601 m!1556679))

(assert (=> b!1383593 m!1556677))

(assert (=> b!1383593 m!1556677))

(declare-fun m!1556681 () Bool)

(assert (=> b!1383593 m!1556681))

(assert (=> b!1383593 m!1556669))

(assert (=> b!1383593 m!1556681))

(assert (=> b!1383593 m!1556669))

(declare-fun m!1556683 () Bool)

(assert (=> b!1383593 m!1556683))

(assert (=> b!1383217 d!395075))

(declare-fun b!1383671 () Bool)

(declare-fun e!884063 () Bool)

(declare-fun e!884065 () Bool)

(assert (=> b!1383671 (= e!884063 e!884065)))

(declare-fun res!624175 () Bool)

(declare-fun lt!460027 () tuple2!13642)

(assert (=> b!1383671 (= res!624175 (< (size!11534 (_2!7707 lt!460027)) (size!11534 (list!5437 lt!459882))))))

(assert (=> b!1383671 (=> (not res!624175) (not e!884065))))

(declare-fun b!1383672 () Bool)

(declare-fun isEmpty!8492 (List!14116) Bool)

(assert (=> b!1383672 (= e!884065 (not (isEmpty!8492 (_1!7707 lt!460027))))))

(declare-fun d!395083 () Bool)

(assert (=> d!395083 e!884063))

(declare-fun c!227646 () Bool)

(declare-fun size!11535 (List!14116) Int)

(assert (=> d!395083 (= c!227646 (> (size!11535 (_1!7707 lt!460027)) 0))))

(declare-fun e!884064 () tuple2!13642)

(assert (=> d!395083 (= lt!460027 e!884064)))

(declare-fun c!227647 () Bool)

(declare-fun lt!460026 () Option!2692)

(assert (=> d!395083 (= c!227647 ((_ is Some!2691) lt!460026))))

(assert (=> d!395083 (= lt!460026 (maxPrefix!1102 thiss!19762 rules!2550 (list!5437 lt!459882)))))

(assert (=> d!395083 (= (lexList!642 thiss!19762 rules!2550 (list!5437 lt!459882)) lt!460027)))

(declare-fun b!1383673 () Bool)

(assert (=> b!1383673 (= e!884063 (= (_2!7707 lt!460027) (list!5437 lt!459882)))))

(declare-fun b!1383674 () Bool)

(declare-fun lt!460025 () tuple2!13642)

(assert (=> b!1383674 (= e!884064 (tuple2!13643 (Cons!14050 (_1!7708 (v!21537 lt!460026)) (_1!7707 lt!460025)) (_2!7707 lt!460025)))))

(assert (=> b!1383674 (= lt!460025 (lexList!642 thiss!19762 rules!2550 (_2!7708 (v!21537 lt!460026))))))

(declare-fun b!1383675 () Bool)

(assert (=> b!1383675 (= e!884064 (tuple2!13643 Nil!14050 (list!5437 lt!459882)))))

(assert (= (and d!395083 c!227647) b!1383674))

(assert (= (and d!395083 (not c!227647)) b!1383675))

(assert (= (and d!395083 c!227646) b!1383671))

(assert (= (and d!395083 (not c!227646)) b!1383673))

(assert (= (and b!1383671 res!624175) b!1383672))

(declare-fun m!1556731 () Bool)

(assert (=> b!1383671 m!1556731))

(assert (=> b!1383671 m!1556277))

(declare-fun m!1556733 () Bool)

(assert (=> b!1383671 m!1556733))

(declare-fun m!1556735 () Bool)

(assert (=> b!1383672 m!1556735))

(declare-fun m!1556737 () Bool)

(assert (=> d!395083 m!1556737))

(assert (=> d!395083 m!1556277))

(declare-fun m!1556739 () Bool)

(assert (=> d!395083 m!1556739))

(declare-fun m!1556741 () Bool)

(assert (=> b!1383674 m!1556741))

(assert (=> b!1383191 d!395083))

(declare-fun d!395101 () Bool)

(declare-fun list!5442 (Conc!4626) List!14113)

(assert (=> d!395101 (= (list!5437 lt!459882) (list!5442 (c!227558 lt!459882)))))

(declare-fun bs!336735 () Bool)

(assert (= bs!336735 d!395101))

(declare-fun m!1556757 () Bool)

(assert (=> bs!336735 m!1556757))

(assert (=> b!1383191 d!395101))

(declare-fun b!1383679 () Bool)

(declare-fun e!884072 () Bool)

(assert (=> b!1383679 (= e!884072 (matchR!1738 (derivativeStep!969 lt!459883 (head!2515 lt!459880)) (tail!2008 lt!459880)))))

(declare-fun b!1383680 () Bool)

(declare-fun e!884075 () Bool)

(declare-fun e!884073 () Bool)

(assert (=> b!1383680 (= e!884075 e!884073)))

(declare-fun c!227648 () Bool)

(assert (=> b!1383680 (= c!227648 ((_ is EmptyLang!3747) lt!459883))))

(declare-fun b!1383681 () Bool)

(declare-fun e!884070 () Bool)

(assert (=> b!1383681 (= e!884070 (= (head!2515 lt!459880) (c!227559 lt!459883)))))

(declare-fun b!1383682 () Bool)

(declare-fun res!624179 () Bool)

(declare-fun e!884069 () Bool)

(assert (=> b!1383682 (=> res!624179 e!884069)))

(assert (=> b!1383682 (= res!624179 (not (isEmpty!8489 (tail!2008 lt!459880))))))

(declare-fun d!395109 () Bool)

(assert (=> d!395109 e!884075))

(declare-fun c!227649 () Bool)

(assert (=> d!395109 (= c!227649 ((_ is EmptyExpr!3747) lt!459883))))

(declare-fun lt!460031 () Bool)

(assert (=> d!395109 (= lt!460031 e!884072)))

(declare-fun c!227650 () Bool)

(assert (=> d!395109 (= c!227650 (isEmpty!8489 lt!459880))))

(assert (=> d!395109 (validRegex!1631 lt!459883)))

(assert (=> d!395109 (= (matchR!1738 lt!459883 lt!459880) lt!460031)))

(declare-fun b!1383683 () Bool)

(assert (=> b!1383683 (= e!884069 (not (= (head!2515 lt!459880) (c!227559 lt!459883))))))

(declare-fun b!1383684 () Bool)

(declare-fun res!624183 () Bool)

(declare-fun e!884074 () Bool)

(assert (=> b!1383684 (=> res!624183 e!884074)))

(assert (=> b!1383684 (= res!624183 e!884070)))

(declare-fun res!624181 () Bool)

(assert (=> b!1383684 (=> (not res!624181) (not e!884070))))

(assert (=> b!1383684 (= res!624181 lt!460031)))

(declare-fun b!1383685 () Bool)

(assert (=> b!1383685 (= e!884073 (not lt!460031))))

(declare-fun b!1383686 () Bool)

(declare-fun e!884071 () Bool)

(assert (=> b!1383686 (= e!884071 e!884069)))

(declare-fun res!624180 () Bool)

(assert (=> b!1383686 (=> res!624180 e!884069)))

(declare-fun call!92607 () Bool)

(assert (=> b!1383686 (= res!624180 call!92607)))

(declare-fun b!1383687 () Bool)

(assert (=> b!1383687 (= e!884072 (nullable!1211 lt!459883))))

(declare-fun bm!92602 () Bool)

(assert (=> bm!92602 (= call!92607 (isEmpty!8489 lt!459880))))

(declare-fun b!1383688 () Bool)

(assert (=> b!1383688 (= e!884075 (= lt!460031 call!92607))))

(declare-fun b!1383689 () Bool)

(declare-fun res!624184 () Bool)

(assert (=> b!1383689 (=> (not res!624184) (not e!884070))))

(assert (=> b!1383689 (= res!624184 (isEmpty!8489 (tail!2008 lt!459880)))))

(declare-fun b!1383690 () Bool)

(assert (=> b!1383690 (= e!884074 e!884071)))

(declare-fun res!624182 () Bool)

(assert (=> b!1383690 (=> (not res!624182) (not e!884071))))

(assert (=> b!1383690 (= res!624182 (not lt!460031))))

(declare-fun b!1383691 () Bool)

(declare-fun res!624185 () Bool)

(assert (=> b!1383691 (=> res!624185 e!884074)))

(assert (=> b!1383691 (= res!624185 (not ((_ is ElementMatch!3747) lt!459883)))))

(assert (=> b!1383691 (= e!884073 e!884074)))

(declare-fun b!1383692 () Bool)

(declare-fun res!624186 () Bool)

(assert (=> b!1383692 (=> (not res!624186) (not e!884070))))

(assert (=> b!1383692 (= res!624186 (not call!92607))))

(assert (= (and d!395109 c!227650) b!1383687))

(assert (= (and d!395109 (not c!227650)) b!1383679))

(assert (= (and d!395109 c!227649) b!1383688))

(assert (= (and d!395109 (not c!227649)) b!1383680))

(assert (= (and b!1383680 c!227648) b!1383685))

(assert (= (and b!1383680 (not c!227648)) b!1383691))

(assert (= (and b!1383691 (not res!624185)) b!1383684))

(assert (= (and b!1383684 res!624181) b!1383692))

(assert (= (and b!1383692 res!624186) b!1383689))

(assert (= (and b!1383689 res!624184) b!1383681))

(assert (= (and b!1383684 (not res!624183)) b!1383690))

(assert (= (and b!1383690 res!624182) b!1383686))

(assert (= (and b!1383686 (not res!624180)) b!1383682))

(assert (= (and b!1383682 (not res!624179)) b!1383683))

(assert (= (or b!1383688 b!1383686 b!1383692) bm!92602))

(declare-fun m!1556759 () Bool)

(assert (=> b!1383689 m!1556759))

(assert (=> b!1383689 m!1556759))

(declare-fun m!1556761 () Bool)

(assert (=> b!1383689 m!1556761))

(declare-fun m!1556763 () Bool)

(assert (=> d!395109 m!1556763))

(declare-fun m!1556765 () Bool)

(assert (=> d!395109 m!1556765))

(declare-fun m!1556767 () Bool)

(assert (=> b!1383683 m!1556767))

(assert (=> bm!92602 m!1556763))

(assert (=> b!1383682 m!1556759))

(assert (=> b!1383682 m!1556759))

(assert (=> b!1383682 m!1556761))

(assert (=> b!1383681 m!1556767))

(declare-fun m!1556769 () Bool)

(assert (=> b!1383687 m!1556769))

(assert (=> b!1383679 m!1556767))

(assert (=> b!1383679 m!1556767))

(declare-fun m!1556771 () Bool)

(assert (=> b!1383679 m!1556771))

(assert (=> b!1383679 m!1556759))

(assert (=> b!1383679 m!1556771))

(assert (=> b!1383679 m!1556759))

(declare-fun m!1556773 () Bool)

(assert (=> b!1383679 m!1556773))

(assert (=> b!1383212 d!395109))

(declare-fun b!1383693 () Bool)

(declare-fun e!884076 () Bool)

(declare-fun e!884077 () Bool)

(assert (=> b!1383693 (= e!884076 e!884077)))

(declare-fun c!227651 () Bool)

(assert (=> b!1383693 (= c!227651 ((_ is IntegerValue!7570) (value!78973 t2!34)))))

(declare-fun b!1383694 () Bool)

(declare-fun res!624187 () Bool)

(declare-fun e!884078 () Bool)

(assert (=> b!1383694 (=> res!624187 e!884078)))

(assert (=> b!1383694 (= res!624187 (not ((_ is IntegerValue!7571) (value!78973 t2!34))))))

(assert (=> b!1383694 (= e!884077 e!884078)))

(declare-fun b!1383695 () Bool)

(assert (=> b!1383695 (= e!884078 (inv!15 (value!78973 t2!34)))))

(declare-fun b!1383696 () Bool)

(assert (=> b!1383696 (= e!884076 (inv!16 (value!78973 t2!34)))))

(declare-fun b!1383697 () Bool)

(assert (=> b!1383697 (= e!884077 (inv!17 (value!78973 t2!34)))))

(declare-fun d!395111 () Bool)

(declare-fun c!227652 () Bool)

(assert (=> d!395111 (= c!227652 ((_ is IntegerValue!7569) (value!78973 t2!34)))))

(assert (=> d!395111 (= (inv!21 (value!78973 t2!34)) e!884076)))

(assert (= (and d!395111 c!227652) b!1383696))

(assert (= (and d!395111 (not c!227652)) b!1383693))

(assert (= (and b!1383693 c!227651) b!1383697))

(assert (= (and b!1383693 (not c!227651)) b!1383694))

(assert (= (and b!1383694 (not res!624187)) b!1383695))

(declare-fun m!1556775 () Bool)

(assert (=> b!1383695 m!1556775))

(declare-fun m!1556777 () Bool)

(assert (=> b!1383696 m!1556777))

(declare-fun m!1556779 () Bool)

(assert (=> b!1383697 m!1556779))

(assert (=> b!1383213 d!395111))

(declare-fun b!1383700 () Bool)

(declare-fun e!884082 () Bool)

(assert (=> b!1383700 (= e!884082 (matchR!1738 (derivativeStep!969 (regex!2433 (rule!4192 t1!34)) (head!2515 lt!459878)) (tail!2008 lt!459878)))))

(declare-fun b!1383701 () Bool)

(declare-fun e!884085 () Bool)

(declare-fun e!884083 () Bool)

(assert (=> b!1383701 (= e!884085 e!884083)))

(declare-fun c!227653 () Bool)

(assert (=> b!1383701 (= c!227653 ((_ is EmptyLang!3747) (regex!2433 (rule!4192 t1!34))))))

(declare-fun b!1383702 () Bool)

(declare-fun e!884080 () Bool)

(assert (=> b!1383702 (= e!884080 (= (head!2515 lt!459878) (c!227559 (regex!2433 (rule!4192 t1!34)))))))

(declare-fun b!1383703 () Bool)

(declare-fun res!624188 () Bool)

(declare-fun e!884079 () Bool)

(assert (=> b!1383703 (=> res!624188 e!884079)))

(assert (=> b!1383703 (= res!624188 (not (isEmpty!8489 (tail!2008 lt!459878))))))

(declare-fun d!395113 () Bool)

(assert (=> d!395113 e!884085))

(declare-fun c!227654 () Bool)

(assert (=> d!395113 (= c!227654 ((_ is EmptyExpr!3747) (regex!2433 (rule!4192 t1!34))))))

(declare-fun lt!460032 () Bool)

(assert (=> d!395113 (= lt!460032 e!884082)))

(declare-fun c!227655 () Bool)

(assert (=> d!395113 (= c!227655 (isEmpty!8489 lt!459878))))

(assert (=> d!395113 (validRegex!1631 (regex!2433 (rule!4192 t1!34)))))

(assert (=> d!395113 (= (matchR!1738 (regex!2433 (rule!4192 t1!34)) lt!459878) lt!460032)))

(declare-fun b!1383704 () Bool)

(assert (=> b!1383704 (= e!884079 (not (= (head!2515 lt!459878) (c!227559 (regex!2433 (rule!4192 t1!34))))))))

(declare-fun b!1383705 () Bool)

(declare-fun res!624192 () Bool)

(declare-fun e!884084 () Bool)

(assert (=> b!1383705 (=> res!624192 e!884084)))

(assert (=> b!1383705 (= res!624192 e!884080)))

(declare-fun res!624190 () Bool)

(assert (=> b!1383705 (=> (not res!624190) (not e!884080))))

(assert (=> b!1383705 (= res!624190 lt!460032)))

(declare-fun b!1383706 () Bool)

(assert (=> b!1383706 (= e!884083 (not lt!460032))))

(declare-fun b!1383707 () Bool)

(declare-fun e!884081 () Bool)

(assert (=> b!1383707 (= e!884081 e!884079)))

(declare-fun res!624189 () Bool)

(assert (=> b!1383707 (=> res!624189 e!884079)))

(declare-fun call!92608 () Bool)

(assert (=> b!1383707 (= res!624189 call!92608)))

(declare-fun b!1383708 () Bool)

(assert (=> b!1383708 (= e!884082 (nullable!1211 (regex!2433 (rule!4192 t1!34))))))

(declare-fun bm!92603 () Bool)

(assert (=> bm!92603 (= call!92608 (isEmpty!8489 lt!459878))))

(declare-fun b!1383709 () Bool)

(assert (=> b!1383709 (= e!884085 (= lt!460032 call!92608))))

(declare-fun b!1383710 () Bool)

(declare-fun res!624193 () Bool)

(assert (=> b!1383710 (=> (not res!624193) (not e!884080))))

(assert (=> b!1383710 (= res!624193 (isEmpty!8489 (tail!2008 lt!459878)))))

(declare-fun b!1383711 () Bool)

(assert (=> b!1383711 (= e!884084 e!884081)))

(declare-fun res!624191 () Bool)

(assert (=> b!1383711 (=> (not res!624191) (not e!884081))))

(assert (=> b!1383711 (= res!624191 (not lt!460032))))

(declare-fun b!1383712 () Bool)

(declare-fun res!624194 () Bool)

(assert (=> b!1383712 (=> res!624194 e!884084)))

(assert (=> b!1383712 (= res!624194 (not ((_ is ElementMatch!3747) (regex!2433 (rule!4192 t1!34)))))))

(assert (=> b!1383712 (= e!884083 e!884084)))

(declare-fun b!1383713 () Bool)

(declare-fun res!624195 () Bool)

(assert (=> b!1383713 (=> (not res!624195) (not e!884080))))

(assert (=> b!1383713 (= res!624195 (not call!92608))))

(assert (= (and d!395113 c!227655) b!1383708))

(assert (= (and d!395113 (not c!227655)) b!1383700))

(assert (= (and d!395113 c!227654) b!1383709))

(assert (= (and d!395113 (not c!227654)) b!1383701))

(assert (= (and b!1383701 c!227653) b!1383706))

(assert (= (and b!1383701 (not c!227653)) b!1383712))

(assert (= (and b!1383712 (not res!624194)) b!1383705))

(assert (= (and b!1383705 res!624190) b!1383713))

(assert (= (and b!1383713 res!624195) b!1383710))

(assert (= (and b!1383710 res!624193) b!1383702))

(assert (= (and b!1383705 (not res!624192)) b!1383711))

(assert (= (and b!1383711 res!624191) b!1383707))

(assert (= (and b!1383707 (not res!624189)) b!1383703))

(assert (= (and b!1383703 (not res!624188)) b!1383704))

(assert (= (or b!1383709 b!1383707 b!1383713) bm!92603))

(declare-fun m!1556783 () Bool)

(assert (=> b!1383710 m!1556783))

(assert (=> b!1383710 m!1556783))

(declare-fun m!1556785 () Bool)

(assert (=> b!1383710 m!1556785))

(declare-fun m!1556787 () Bool)

(assert (=> d!395113 m!1556787))

(assert (=> d!395113 m!1556181))

(assert (=> b!1383704 m!1556177))

(assert (=> bm!92603 m!1556787))

(assert (=> b!1383703 m!1556783))

(assert (=> b!1383703 m!1556783))

(assert (=> b!1383703 m!1556785))

(assert (=> b!1383702 m!1556177))

(declare-fun m!1556789 () Bool)

(assert (=> b!1383708 m!1556789))

(assert (=> b!1383700 m!1556177))

(assert (=> b!1383700 m!1556177))

(declare-fun m!1556791 () Bool)

(assert (=> b!1383700 m!1556791))

(assert (=> b!1383700 m!1556783))

(assert (=> b!1383700 m!1556791))

(assert (=> b!1383700 m!1556783))

(declare-fun m!1556793 () Bool)

(assert (=> b!1383700 m!1556793))

(assert (=> b!1383192 d!395113))

(declare-fun d!395117 () Bool)

(assert (=> d!395117 (dynLambda!6406 lambda!59475 (rule!4192 t2!34))))

(declare-fun lt!460037 () Unit!20295)

(declare-fun choose!8492 (List!14114 Int Rule!4666) Unit!20295)

(assert (=> d!395117 (= lt!460037 (choose!8492 rules!2550 lambda!59475 (rule!4192 t2!34)))))

(declare-fun e!884088 () Bool)

(assert (=> d!395117 e!884088))

(declare-fun res!624198 () Bool)

(assert (=> d!395117 (=> (not res!624198) (not e!884088))))

(declare-fun forall!3419 (List!14114 Int) Bool)

(assert (=> d!395117 (= res!624198 (forall!3419 rules!2550 lambda!59475))))

(assert (=> d!395117 (= (forallContained!628 rules!2550 lambda!59475 (rule!4192 t2!34)) lt!460037)))

(declare-fun b!1383718 () Bool)

(assert (=> b!1383718 (= e!884088 (contains!2677 rules!2550 (rule!4192 t2!34)))))

(assert (= (and d!395117 res!624198) b!1383718))

(declare-fun b_lambda!42703 () Bool)

(assert (=> (not b_lambda!42703) (not d!395117)))

(declare-fun m!1556795 () Bool)

(assert (=> d!395117 m!1556795))

(declare-fun m!1556797 () Bool)

(assert (=> d!395117 m!1556797))

(declare-fun m!1556799 () Bool)

(assert (=> d!395117 m!1556799))

(assert (=> b!1383718 m!1556235))

(assert (=> b!1383192 d!395117))

(declare-fun d!395119 () Bool)

(assert (=> d!395119 (dynLambda!6406 lambda!59475 (rule!4192 t1!34))))

(declare-fun lt!460039 () Unit!20295)

(assert (=> d!395119 (= lt!460039 (choose!8492 rules!2550 lambda!59475 (rule!4192 t1!34)))))

(declare-fun e!884089 () Bool)

(assert (=> d!395119 e!884089))

(declare-fun res!624199 () Bool)

(assert (=> d!395119 (=> (not res!624199) (not e!884089))))

(assert (=> d!395119 (= res!624199 (forall!3419 rules!2550 lambda!59475))))

(assert (=> d!395119 (= (forallContained!628 rules!2550 lambda!59475 (rule!4192 t1!34)) lt!460039)))

(declare-fun b!1383721 () Bool)

(assert (=> b!1383721 (= e!884089 (contains!2677 rules!2550 (rule!4192 t1!34)))))

(assert (= (and d!395119 res!624199) b!1383721))

(declare-fun b_lambda!42705 () Bool)

(assert (=> (not b_lambda!42705) (not d!395119)))

(declare-fun m!1556801 () Bool)

(assert (=> d!395119 m!1556801))

(declare-fun m!1556803 () Bool)

(assert (=> d!395119 m!1556803))

(assert (=> d!395119 m!1556799))

(assert (=> b!1383721 m!1556213))

(assert (=> b!1383192 d!395119))

(declare-fun d!395121 () Bool)

(assert (=> d!395121 (dynLambda!6406 lambda!59475 lt!459884)))

(declare-fun lt!460040 () Unit!20295)

(assert (=> d!395121 (= lt!460040 (choose!8492 rules!2550 lambda!59475 lt!459884))))

(declare-fun e!884090 () Bool)

(assert (=> d!395121 e!884090))

(declare-fun res!624200 () Bool)

(assert (=> d!395121 (=> (not res!624200) (not e!884090))))

(assert (=> d!395121 (= res!624200 (forall!3419 rules!2550 lambda!59475))))

(assert (=> d!395121 (= (forallContained!628 rules!2550 lambda!59475 lt!459884) lt!460040)))

(declare-fun b!1383722 () Bool)

(assert (=> b!1383722 (= e!884090 (contains!2677 rules!2550 lt!459884))))

(assert (= (and d!395121 res!624200) b!1383722))

(declare-fun b_lambda!42707 () Bool)

(assert (=> (not b_lambda!42707) (not d!395121)))

(declare-fun m!1556809 () Bool)

(assert (=> d!395121 m!1556809))

(declare-fun m!1556811 () Bool)

(assert (=> d!395121 m!1556811))

(assert (=> d!395121 m!1556799))

(assert (=> b!1383722 m!1556267))

(assert (=> b!1383192 d!395121))

(declare-fun d!395125 () Bool)

(declare-fun lt!460100 () Bool)

(declare-fun e!884188 () Bool)

(assert (=> d!395125 (= lt!460100 e!884188)))

(declare-fun res!624274 () Bool)

(assert (=> d!395125 (=> (not res!624274) (not e!884188))))

(assert (=> d!395125 (= res!624274 (= (list!5438 (_1!7709 (lex!953 thiss!19762 rules!2550 (print!892 thiss!19762 (singletonSeq!1074 t1!34))))) (list!5438 (singletonSeq!1074 t1!34))))))

(declare-fun e!884187 () Bool)

(assert (=> d!395125 (= lt!460100 e!884187)))

(declare-fun res!624276 () Bool)

(assert (=> d!395125 (=> (not res!624276) (not e!884187))))

(declare-fun lt!460099 () tuple2!13646)

(assert (=> d!395125 (= res!624276 (= (size!11528 (_1!7709 lt!460099)) 1))))

(assert (=> d!395125 (= lt!460099 (lex!953 thiss!19762 rules!2550 (print!892 thiss!19762 (singletonSeq!1074 t1!34))))))

(assert (=> d!395125 (not (isEmpty!8482 rules!2550))))

(assert (=> d!395125 (= (rulesProduceIndividualToken!1097 thiss!19762 rules!2550 t1!34) lt!460100)))

(declare-fun b!1383870 () Bool)

(declare-fun res!624275 () Bool)

(assert (=> b!1383870 (=> (not res!624275) (not e!884187))))

(declare-fun apply!3509 (BalanceConc!9194 Int) Token!4528)

(assert (=> b!1383870 (= res!624275 (= (apply!3509 (_1!7709 lt!460099) 0) t1!34))))

(declare-fun b!1383871 () Bool)

(assert (=> b!1383871 (= e!884187 (isEmpty!8483 (_2!7709 lt!460099)))))

(declare-fun b!1383872 () Bool)

(assert (=> b!1383872 (= e!884188 (isEmpty!8483 (_2!7709 (lex!953 thiss!19762 rules!2550 (print!892 thiss!19762 (singletonSeq!1074 t1!34))))))))

(assert (= (and d!395125 res!624276) b!1383870))

(assert (= (and b!1383870 res!624275) b!1383871))

(assert (= (and d!395125 res!624274) b!1383872))

(assert (=> d!395125 m!1556199))

(declare-fun m!1557025 () Bool)

(assert (=> d!395125 m!1557025))

(assert (=> d!395125 m!1556193))

(declare-fun m!1557027 () Bool)

(assert (=> d!395125 m!1557027))

(assert (=> d!395125 m!1556191))

(assert (=> d!395125 m!1556193))

(declare-fun m!1557029 () Bool)

(assert (=> d!395125 m!1557029))

(assert (=> d!395125 m!1556191))

(assert (=> d!395125 m!1556479))

(assert (=> d!395125 m!1556191))

(declare-fun m!1557031 () Bool)

(assert (=> b!1383870 m!1557031))

(declare-fun m!1557033 () Bool)

(assert (=> b!1383871 m!1557033))

(assert (=> b!1383872 m!1556191))

(assert (=> b!1383872 m!1556191))

(assert (=> b!1383872 m!1556193))

(assert (=> b!1383872 m!1556193))

(assert (=> b!1383872 m!1557027))

(declare-fun m!1557035 () Bool)

(assert (=> b!1383872 m!1557035))

(assert (=> b!1383193 d!395125))

(declare-fun d!395191 () Bool)

(declare-fun lt!460101 () Bool)

(assert (=> d!395191 (= lt!460101 (select (content!2054 rules!2550) (rule!4192 t1!34)))))

(declare-fun e!884189 () Bool)

(assert (=> d!395191 (= lt!460101 e!884189)))

(declare-fun res!624278 () Bool)

(assert (=> d!395191 (=> (not res!624278) (not e!884189))))

(assert (=> d!395191 (= res!624278 ((_ is Cons!14048) rules!2550))))

(assert (=> d!395191 (= (contains!2677 rules!2550 (rule!4192 t1!34)) lt!460101)))

(declare-fun b!1383873 () Bool)

(declare-fun e!884190 () Bool)

(assert (=> b!1383873 (= e!884189 e!884190)))

(declare-fun res!624277 () Bool)

(assert (=> b!1383873 (=> res!624277 e!884190)))

(assert (=> b!1383873 (= res!624277 (= (h!19449 rules!2550) (rule!4192 t1!34)))))

(declare-fun b!1383874 () Bool)

(assert (=> b!1383874 (= e!884190 (contains!2677 (t!122103 rules!2550) (rule!4192 t1!34)))))

(assert (= (and d!395191 res!624278) b!1383873))

(assert (= (and b!1383873 (not res!624277)) b!1383874))

(assert (=> d!395191 m!1556301))

(declare-fun m!1557037 () Bool)

(assert (=> d!395191 m!1557037))

(declare-fun m!1557039 () Bool)

(assert (=> b!1383874 m!1557039))

(assert (=> b!1383214 d!395191))

(declare-fun d!395193 () Bool)

(assert (=> d!395193 (= (inv!18384 (tag!2695 (h!19449 rules!2550))) (= (mod (str.len (value!78972 (tag!2695 (h!19449 rules!2550)))) 2) 0))))

(assert (=> b!1383199 d!395193))

(declare-fun d!395195 () Bool)

(declare-fun res!624281 () Bool)

(declare-fun e!884193 () Bool)

(assert (=> d!395195 (=> (not res!624281) (not e!884193))))

(declare-fun semiInverseModEq!940 (Int Int) Bool)

(assert (=> d!395195 (= res!624281 (semiInverseModEq!940 (toChars!3575 (transformation!2433 (h!19449 rules!2550))) (toValue!3716 (transformation!2433 (h!19449 rules!2550)))))))

(assert (=> d!395195 (= (inv!18388 (transformation!2433 (h!19449 rules!2550))) e!884193)))

(declare-fun b!1383877 () Bool)

(declare-fun equivClasses!899 (Int Int) Bool)

(assert (=> b!1383877 (= e!884193 (equivClasses!899 (toChars!3575 (transformation!2433 (h!19449 rules!2550))) (toValue!3716 (transformation!2433 (h!19449 rules!2550)))))))

(assert (= (and d!395195 res!624281) b!1383877))

(declare-fun m!1557041 () Bool)

(assert (=> d!395195 m!1557041))

(declare-fun m!1557043 () Bool)

(assert (=> b!1383877 m!1557043))

(assert (=> b!1383199 d!395195))

(declare-fun d!395197 () Bool)

(assert (=> d!395197 (= (inv!18384 (tag!2695 (rule!4192 t2!34))) (= (mod (str.len (value!78972 (tag!2695 (rule!4192 t2!34)))) 2) 0))))

(assert (=> b!1383221 d!395197))

(declare-fun d!395199 () Bool)

(declare-fun res!624282 () Bool)

(declare-fun e!884194 () Bool)

(assert (=> d!395199 (=> (not res!624282) (not e!884194))))

(assert (=> d!395199 (= res!624282 (semiInverseModEq!940 (toChars!3575 (transformation!2433 (rule!4192 t2!34))) (toValue!3716 (transformation!2433 (rule!4192 t2!34)))))))

(assert (=> d!395199 (= (inv!18388 (transformation!2433 (rule!4192 t2!34))) e!884194)))

(declare-fun b!1383878 () Bool)

(assert (=> b!1383878 (= e!884194 (equivClasses!899 (toChars!3575 (transformation!2433 (rule!4192 t2!34))) (toValue!3716 (transformation!2433 (rule!4192 t2!34)))))))

(assert (= (and d!395199 res!624282) b!1383878))

(declare-fun m!1557045 () Bool)

(assert (=> d!395199 m!1557045))

(declare-fun m!1557047 () Bool)

(assert (=> b!1383878 m!1557047))

(assert (=> b!1383221 d!395199))

(declare-fun d!395201 () Bool)

(declare-fun res!624287 () Bool)

(declare-fun e!884197 () Bool)

(assert (=> d!395201 (=> (not res!624287) (not e!884197))))

(assert (=> d!395201 (= res!624287 (not (isEmpty!8489 (originalCharacters!3295 t1!34))))))

(assert (=> d!395201 (= (inv!18387 t1!34) e!884197)))

(declare-fun b!1383883 () Bool)

(declare-fun res!624288 () Bool)

(assert (=> b!1383883 (=> (not res!624288) (not e!884197))))

(declare-fun dynLambda!6415 (Int TokenValue!2523) BalanceConc!9192)

(assert (=> b!1383883 (= res!624288 (= (originalCharacters!3295 t1!34) (list!5437 (dynLambda!6415 (toChars!3575 (transformation!2433 (rule!4192 t1!34))) (value!78973 t1!34)))))))

(declare-fun b!1383884 () Bool)

(assert (=> b!1383884 (= e!884197 (= (size!11525 t1!34) (size!11534 (originalCharacters!3295 t1!34))))))

(assert (= (and d!395201 res!624287) b!1383883))

(assert (= (and b!1383883 res!624288) b!1383884))

(declare-fun b_lambda!42721 () Bool)

(assert (=> (not b_lambda!42721) (not b!1383883)))

(declare-fun t!122123 () Bool)

(declare-fun tb!72597 () Bool)

(assert (=> (and b!1383198 (= (toChars!3575 (transformation!2433 (h!19449 rules!2550))) (toChars!3575 (transformation!2433 (rule!4192 t1!34)))) t!122123) tb!72597))

(declare-fun b!1383889 () Bool)

(declare-fun e!884200 () Bool)

(declare-fun tp!396193 () Bool)

(declare-fun inv!18391 (Conc!4626) Bool)

(assert (=> b!1383889 (= e!884200 (and (inv!18391 (c!227558 (dynLambda!6415 (toChars!3575 (transformation!2433 (rule!4192 t1!34))) (value!78973 t1!34)))) tp!396193))))

(declare-fun result!88188 () Bool)

(declare-fun inv!18392 (BalanceConc!9192) Bool)

(assert (=> tb!72597 (= result!88188 (and (inv!18392 (dynLambda!6415 (toChars!3575 (transformation!2433 (rule!4192 t1!34))) (value!78973 t1!34))) e!884200))))

(assert (= tb!72597 b!1383889))

(declare-fun m!1557049 () Bool)

(assert (=> b!1383889 m!1557049))

(declare-fun m!1557051 () Bool)

(assert (=> tb!72597 m!1557051))

(assert (=> b!1383883 t!122123))

(declare-fun b_and!92743 () Bool)

(assert (= b_and!92709 (and (=> t!122123 result!88188) b_and!92743)))

(declare-fun t!122125 () Bool)

(declare-fun tb!72599 () Bool)

(assert (=> (and b!1383228 (= (toChars!3575 (transformation!2433 (rule!4192 t1!34))) (toChars!3575 (transformation!2433 (rule!4192 t1!34)))) t!122125) tb!72599))

(declare-fun result!88192 () Bool)

(assert (= result!88192 result!88188))

(assert (=> b!1383883 t!122125))

(declare-fun b_and!92745 () Bool)

(assert (= b_and!92713 (and (=> t!122125 result!88192) b_and!92745)))

(declare-fun t!122127 () Bool)

(declare-fun tb!72601 () Bool)

(assert (=> (and b!1383220 (= (toChars!3575 (transformation!2433 (rule!4192 t2!34))) (toChars!3575 (transformation!2433 (rule!4192 t1!34)))) t!122127) tb!72601))

(declare-fun result!88194 () Bool)

(assert (= result!88194 result!88188))

(assert (=> b!1383883 t!122127))

(declare-fun b_and!92747 () Bool)

(assert (= b_and!92717 (and (=> t!122127 result!88194) b_and!92747)))

(declare-fun m!1557053 () Bool)

(assert (=> d!395201 m!1557053))

(declare-fun m!1557055 () Bool)

(assert (=> b!1383883 m!1557055))

(assert (=> b!1383883 m!1557055))

(declare-fun m!1557057 () Bool)

(assert (=> b!1383883 m!1557057))

(declare-fun m!1557059 () Bool)

(assert (=> b!1383884 m!1557059))

(assert (=> start!125394 d!395201))

(declare-fun d!395203 () Bool)

(declare-fun res!624289 () Bool)

(declare-fun e!884201 () Bool)

(assert (=> d!395203 (=> (not res!624289) (not e!884201))))

(assert (=> d!395203 (= res!624289 (not (isEmpty!8489 (originalCharacters!3295 t2!34))))))

(assert (=> d!395203 (= (inv!18387 t2!34) e!884201)))

(declare-fun b!1383890 () Bool)

(declare-fun res!624290 () Bool)

(assert (=> b!1383890 (=> (not res!624290) (not e!884201))))

(assert (=> b!1383890 (= res!624290 (= (originalCharacters!3295 t2!34) (list!5437 (dynLambda!6415 (toChars!3575 (transformation!2433 (rule!4192 t2!34))) (value!78973 t2!34)))))))

(declare-fun b!1383891 () Bool)

(assert (=> b!1383891 (= e!884201 (= (size!11525 t2!34) (size!11534 (originalCharacters!3295 t2!34))))))

(assert (= (and d!395203 res!624289) b!1383890))

(assert (= (and b!1383890 res!624290) b!1383891))

(declare-fun b_lambda!42723 () Bool)

(assert (=> (not b_lambda!42723) (not b!1383890)))

(declare-fun tb!72603 () Bool)

(declare-fun t!122129 () Bool)

(assert (=> (and b!1383198 (= (toChars!3575 (transformation!2433 (h!19449 rules!2550))) (toChars!3575 (transformation!2433 (rule!4192 t2!34)))) t!122129) tb!72603))

(declare-fun b!1383892 () Bool)

(declare-fun e!884202 () Bool)

(declare-fun tp!396194 () Bool)

(assert (=> b!1383892 (= e!884202 (and (inv!18391 (c!227558 (dynLambda!6415 (toChars!3575 (transformation!2433 (rule!4192 t2!34))) (value!78973 t2!34)))) tp!396194))))

(declare-fun result!88196 () Bool)

(assert (=> tb!72603 (= result!88196 (and (inv!18392 (dynLambda!6415 (toChars!3575 (transformation!2433 (rule!4192 t2!34))) (value!78973 t2!34))) e!884202))))

(assert (= tb!72603 b!1383892))

(declare-fun m!1557061 () Bool)

(assert (=> b!1383892 m!1557061))

(declare-fun m!1557063 () Bool)

(assert (=> tb!72603 m!1557063))

(assert (=> b!1383890 t!122129))

(declare-fun b_and!92749 () Bool)

(assert (= b_and!92743 (and (=> t!122129 result!88196) b_and!92749)))

(declare-fun t!122131 () Bool)

(declare-fun tb!72605 () Bool)

(assert (=> (and b!1383228 (= (toChars!3575 (transformation!2433 (rule!4192 t1!34))) (toChars!3575 (transformation!2433 (rule!4192 t2!34)))) t!122131) tb!72605))

(declare-fun result!88198 () Bool)

(assert (= result!88198 result!88196))

(assert (=> b!1383890 t!122131))

(declare-fun b_and!92751 () Bool)

(assert (= b_and!92745 (and (=> t!122131 result!88198) b_and!92751)))

(declare-fun t!122133 () Bool)

(declare-fun tb!72607 () Bool)

(assert (=> (and b!1383220 (= (toChars!3575 (transformation!2433 (rule!4192 t2!34))) (toChars!3575 (transformation!2433 (rule!4192 t2!34)))) t!122133) tb!72607))

(declare-fun result!88200 () Bool)

(assert (= result!88200 result!88196))

(assert (=> b!1383890 t!122133))

(declare-fun b_and!92753 () Bool)

(assert (= b_and!92747 (and (=> t!122133 result!88200) b_and!92753)))

(declare-fun m!1557065 () Bool)

(assert (=> d!395203 m!1557065))

(declare-fun m!1557067 () Bool)

(assert (=> b!1383890 m!1557067))

(assert (=> b!1383890 m!1557067))

(declare-fun m!1557069 () Bool)

(assert (=> b!1383890 m!1557069))

(declare-fun m!1557071 () Bool)

(assert (=> b!1383891 m!1557071))

(assert (=> start!125394 d!395203))

(declare-fun d!395205 () Bool)

(assert (=> d!395205 (= (inv!18384 (tag!2695 (rule!4192 t1!34))) (= (mod (str.len (value!78972 (tag!2695 (rule!4192 t1!34)))) 2) 0))))

(assert (=> b!1383200 d!395205))

(declare-fun d!395207 () Bool)

(declare-fun res!624291 () Bool)

(declare-fun e!884203 () Bool)

(assert (=> d!395207 (=> (not res!624291) (not e!884203))))

(assert (=> d!395207 (= res!624291 (semiInverseModEq!940 (toChars!3575 (transformation!2433 (rule!4192 t1!34))) (toValue!3716 (transformation!2433 (rule!4192 t1!34)))))))

(assert (=> d!395207 (= (inv!18388 (transformation!2433 (rule!4192 t1!34))) e!884203)))

(declare-fun b!1383893 () Bool)

(assert (=> b!1383893 (= e!884203 (equivClasses!899 (toChars!3575 (transformation!2433 (rule!4192 t1!34))) (toValue!3716 (transformation!2433 (rule!4192 t1!34)))))))

(assert (= (and d!395207 res!624291) b!1383893))

(declare-fun m!1557073 () Bool)

(assert (=> d!395207 m!1557073))

(declare-fun m!1557075 () Bool)

(assert (=> b!1383893 m!1557075))

(assert (=> b!1383200 d!395207))

(declare-fun d!395209 () Bool)

(declare-fun lt!460102 () Bool)

(assert (=> d!395209 (= lt!460102 (select (content!2055 lt!459880) lt!459893))))

(declare-fun e!884205 () Bool)

(assert (=> d!395209 (= lt!460102 e!884205)))

(declare-fun res!624292 () Bool)

(assert (=> d!395209 (=> (not res!624292) (not e!884205))))

(assert (=> d!395209 (= res!624292 ((_ is Cons!14047) lt!459880))))

(assert (=> d!395209 (= (contains!2678 lt!459880 lt!459893) lt!460102)))

(declare-fun b!1383894 () Bool)

(declare-fun e!884204 () Bool)

(assert (=> b!1383894 (= e!884205 e!884204)))

(declare-fun res!624293 () Bool)

(assert (=> b!1383894 (=> res!624293 e!884204)))

(assert (=> b!1383894 (= res!624293 (= (h!19448 lt!459880) lt!459893))))

(declare-fun b!1383895 () Bool)

(assert (=> b!1383895 (= e!884204 (contains!2678 (t!122102 lt!459880) lt!459893))))

(assert (= (and d!395209 res!624292) b!1383894))

(assert (= (and b!1383894 (not res!624293)) b!1383895))

(declare-fun m!1557077 () Bool)

(assert (=> d!395209 m!1557077))

(declare-fun m!1557079 () Bool)

(assert (=> d!395209 m!1557079))

(declare-fun m!1557081 () Bool)

(assert (=> b!1383895 m!1557081))

(assert (=> b!1383201 d!395209))

(declare-fun bs!336752 () Bool)

(declare-fun d!395211 () Bool)

(assert (= bs!336752 (and d!395211 b!1383222)))

(declare-fun lambda!59510 () Int)

(assert (=> bs!336752 (not (= lambda!59510 lambda!59474))))

(declare-fun bs!336753 () Bool)

(assert (= bs!336753 (and d!395211 b!1383192)))

(assert (=> bs!336753 (not (= lambda!59510 lambda!59475))))

(assert (=> d!395211 true))

(declare-fun order!8571 () Int)

(declare-fun dynLambda!6417 (Int Int) Int)

(assert (=> d!395211 (< (dynLambda!6417 order!8571 lambda!59474) (dynLambda!6417 order!8571 lambda!59510))))

(assert (=> d!395211 (= (exists!511 rules!2550 lambda!59474) (not (forall!3419 rules!2550 lambda!59510)))))

(declare-fun bs!336755 () Bool)

(assert (= bs!336755 d!395211))

(declare-fun m!1557085 () Bool)

(assert (=> bs!336755 m!1557085))

(assert (=> b!1383222 d!395211))

(declare-fun bs!336756 () Bool)

(declare-fun d!395213 () Bool)

(assert (= bs!336756 (and d!395213 b!1383222)))

(declare-fun lambda!59513 () Int)

(assert (=> bs!336756 (not (= lambda!59513 lambda!59474))))

(declare-fun bs!336757 () Bool)

(assert (= bs!336757 (and d!395213 b!1383192)))

(assert (=> bs!336757 (not (= lambda!59513 lambda!59475))))

(declare-fun bs!336758 () Bool)

(assert (= bs!336758 (and d!395213 d!395211)))

(assert (=> bs!336758 (not (= lambda!59513 lambda!59510))))

(assert (=> d!395213 true))

(assert (=> d!395213 true))

(declare-fun order!8573 () Int)

(declare-fun dynLambda!6418 (Int Int) Int)

(assert (=> d!395213 (< (dynLambda!6418 order!8573 lambda!59472) (dynLambda!6417 order!8571 lambda!59513))))

(assert (=> d!395213 (exists!511 rules!2550 lambda!59513)))

(declare-fun lt!460105 () Unit!20295)

(declare-fun choose!8496 (List!14114 Int Regex!3747) Unit!20295)

(assert (=> d!395213 (= lt!460105 (choose!8496 rules!2550 lambda!59472 lt!459886))))

(assert (=> d!395213 (contains!2679 (map!3110 rules!2550 lambda!59472) lt!459886)))

(assert (=> d!395213 (= (lemmaMapContains!144 rules!2550 lambda!59472 lt!459886) lt!460105)))

(declare-fun bs!336759 () Bool)

(assert (= bs!336759 d!395213))

(declare-fun m!1557093 () Bool)

(assert (=> bs!336759 m!1557093))

(declare-fun m!1557095 () Bool)

(assert (=> bs!336759 m!1557095))

(assert (=> bs!336759 m!1556257))

(assert (=> bs!336759 m!1556257))

(assert (=> bs!336759 m!1556263))

(assert (=> b!1383222 d!395213))

(declare-fun b!1383941 () Bool)

(declare-fun e!884227 () Bool)

(declare-fun e!884229 () Bool)

(assert (=> b!1383941 (= e!884227 e!884229)))

(declare-fun res!624294 () Bool)

(declare-fun lt!460108 () tuple2!13642)

(assert (=> b!1383941 (= res!624294 (< (size!11534 (_2!7707 lt!460108)) (size!11534 (list!5437 lt!459872))))))

(assert (=> b!1383941 (=> (not res!624294) (not e!884229))))

(declare-fun b!1383942 () Bool)

(assert (=> b!1383942 (= e!884229 (not (isEmpty!8492 (_1!7707 lt!460108))))))

(declare-fun d!395215 () Bool)

(assert (=> d!395215 e!884227))

(declare-fun c!227693 () Bool)

(assert (=> d!395215 (= c!227693 (> (size!11535 (_1!7707 lt!460108)) 0))))

(declare-fun e!884228 () tuple2!13642)

(assert (=> d!395215 (= lt!460108 e!884228)))

(declare-fun c!227694 () Bool)

(declare-fun lt!460107 () Option!2692)

(assert (=> d!395215 (= c!227694 ((_ is Some!2691) lt!460107))))

(assert (=> d!395215 (= lt!460107 (maxPrefix!1102 thiss!19762 rules!2550 (list!5437 lt!459872)))))

(assert (=> d!395215 (= (lexList!642 thiss!19762 rules!2550 (list!5437 lt!459872)) lt!460108)))

(declare-fun b!1383943 () Bool)

(assert (=> b!1383943 (= e!884227 (= (_2!7707 lt!460108) (list!5437 lt!459872)))))

(declare-fun b!1383944 () Bool)

(declare-fun lt!460106 () tuple2!13642)

(assert (=> b!1383944 (= e!884228 (tuple2!13643 (Cons!14050 (_1!7708 (v!21537 lt!460107)) (_1!7707 lt!460106)) (_2!7707 lt!460106)))))

(assert (=> b!1383944 (= lt!460106 (lexList!642 thiss!19762 rules!2550 (_2!7708 (v!21537 lt!460107))))))

(declare-fun b!1383945 () Bool)

(assert (=> b!1383945 (= e!884228 (tuple2!13643 Nil!14050 (list!5437 lt!459872)))))

(assert (= (and d!395215 c!227694) b!1383944))

(assert (= (and d!395215 (not c!227694)) b!1383945))

(assert (= (and d!395215 c!227693) b!1383941))

(assert (= (and d!395215 (not c!227693)) b!1383943))

(assert (= (and b!1383941 res!624294) b!1383942))

(declare-fun m!1557097 () Bool)

(assert (=> b!1383941 m!1557097))

(assert (=> b!1383941 m!1556269))

(declare-fun m!1557099 () Bool)

(assert (=> b!1383941 m!1557099))

(declare-fun m!1557101 () Bool)

(assert (=> b!1383942 m!1557101))

(declare-fun m!1557105 () Bool)

(assert (=> d!395215 m!1557105))

(assert (=> d!395215 m!1556269))

(declare-fun m!1557109 () Bool)

(assert (=> d!395215 m!1557109))

(declare-fun m!1557111 () Bool)

(assert (=> b!1383944 m!1557111))

(assert (=> b!1383196 d!395215))

(declare-fun d!395217 () Bool)

(assert (=> d!395217 (= (list!5437 lt!459872) (list!5442 (c!227558 lt!459872)))))

(declare-fun bs!336760 () Bool)

(assert (= bs!336760 d!395217))

(declare-fun m!1557113 () Bool)

(assert (=> bs!336760 m!1557113))

(assert (=> b!1383196 d!395217))

(declare-fun b!1383946 () Bool)

(declare-fun res!624297 () Bool)

(declare-fun e!884230 () Bool)

(assert (=> b!1383946 (=> (not res!624297) (not e!884230))))

(declare-fun lt!460110 () Option!2692)

(assert (=> b!1383946 (= res!624297 (matchR!1738 (regex!2433 (rule!4192 (_1!7708 (get!4367 lt!460110)))) (list!5437 (charsOf!1405 (_1!7708 (get!4367 lt!460110))))))))

(declare-fun d!395219 () Bool)

(declare-fun e!884231 () Bool)

(assert (=> d!395219 e!884231))

(declare-fun res!624300 () Bool)

(assert (=> d!395219 (=> res!624300 e!884231)))

(assert (=> d!395219 (= res!624300 (isEmpty!8491 lt!460110))))

(declare-fun e!884232 () Option!2692)

(assert (=> d!395219 (= lt!460110 e!884232)))

(declare-fun c!227695 () Bool)

(assert (=> d!395219 (= c!227695 (and ((_ is Cons!14048) rules!2550) ((_ is Nil!14048) (t!122103 rules!2550))))))

(declare-fun lt!460112 () Unit!20295)

(declare-fun lt!460109 () Unit!20295)

(assert (=> d!395219 (= lt!460112 lt!460109)))

(assert (=> d!395219 (isPrefix!1138 lt!459877 lt!459877)))

(assert (=> d!395219 (= lt!460109 (lemmaIsPrefixRefl!797 lt!459877 lt!459877))))

(assert (=> d!395219 (rulesValidInductive!780 thiss!19762 rules!2550)))

(assert (=> d!395219 (= (maxPrefix!1102 thiss!19762 rules!2550 lt!459877) lt!460110)))

(declare-fun b!1383947 () Bool)

(declare-fun res!624298 () Bool)

(assert (=> b!1383947 (=> (not res!624298) (not e!884230))))

(assert (=> b!1383947 (= res!624298 (= (list!5437 (charsOf!1405 (_1!7708 (get!4367 lt!460110)))) (originalCharacters!3295 (_1!7708 (get!4367 lt!460110)))))))

(declare-fun b!1383948 () Bool)

(declare-fun res!624296 () Bool)

(assert (=> b!1383948 (=> (not res!624296) (not e!884230))))

(assert (=> b!1383948 (= res!624296 (= (value!78973 (_1!7708 (get!4367 lt!460110))) (apply!3508 (transformation!2433 (rule!4192 (_1!7708 (get!4367 lt!460110)))) (seqFromList!1641 (originalCharacters!3295 (_1!7708 (get!4367 lt!460110)))))))))

(declare-fun b!1383949 () Bool)

(declare-fun call!92611 () Option!2692)

(assert (=> b!1383949 (= e!884232 call!92611)))

(declare-fun b!1383950 () Bool)

(declare-fun res!624295 () Bool)

(assert (=> b!1383950 (=> (not res!624295) (not e!884230))))

(assert (=> b!1383950 (= res!624295 (< (size!11534 (_2!7708 (get!4367 lt!460110))) (size!11534 lt!459877)))))

(declare-fun b!1383951 () Bool)

(declare-fun lt!460111 () Option!2692)

(declare-fun lt!460113 () Option!2692)

(assert (=> b!1383951 (= e!884232 (ite (and ((_ is None!2691) lt!460111) ((_ is None!2691) lt!460113)) None!2691 (ite ((_ is None!2691) lt!460113) lt!460111 (ite ((_ is None!2691) lt!460111) lt!460113 (ite (>= (size!11525 (_1!7708 (v!21537 lt!460111))) (size!11525 (_1!7708 (v!21537 lt!460113)))) lt!460111 lt!460113)))))))

(assert (=> b!1383951 (= lt!460111 call!92611)))

(assert (=> b!1383951 (= lt!460113 (maxPrefix!1102 thiss!19762 (t!122103 rules!2550) lt!459877))))

(declare-fun b!1383952 () Bool)

(assert (=> b!1383952 (= e!884230 (contains!2677 rules!2550 (rule!4192 (_1!7708 (get!4367 lt!460110)))))))

(declare-fun b!1383953 () Bool)

(declare-fun res!624301 () Bool)

(assert (=> b!1383953 (=> (not res!624301) (not e!884230))))

(assert (=> b!1383953 (= res!624301 (= (++!3642 (list!5437 (charsOf!1405 (_1!7708 (get!4367 lt!460110)))) (_2!7708 (get!4367 lt!460110))) lt!459877))))

(declare-fun bm!92606 () Bool)

(assert (=> bm!92606 (= call!92611 (maxPrefixOneRule!623 thiss!19762 (h!19449 rules!2550) lt!459877))))

(declare-fun b!1383954 () Bool)

(assert (=> b!1383954 (= e!884231 e!884230)))

(declare-fun res!624299 () Bool)

(assert (=> b!1383954 (=> (not res!624299) (not e!884230))))

(assert (=> b!1383954 (= res!624299 (isDefined!2225 lt!460110))))

(assert (= (and d!395219 c!227695) b!1383949))

(assert (= (and d!395219 (not c!227695)) b!1383951))

(assert (= (or b!1383949 b!1383951) bm!92606))

(assert (= (and d!395219 (not res!624300)) b!1383954))

(assert (= (and b!1383954 res!624299) b!1383947))

(assert (= (and b!1383947 res!624298) b!1383950))

(assert (= (and b!1383950 res!624295) b!1383953))

(assert (= (and b!1383953 res!624301) b!1383948))

(assert (= (and b!1383948 res!624296) b!1383946))

(assert (= (and b!1383946 res!624297) b!1383952))

(declare-fun m!1557133 () Bool)

(assert (=> b!1383946 m!1557133))

(declare-fun m!1557135 () Bool)

(assert (=> b!1383946 m!1557135))

(assert (=> b!1383946 m!1557135))

(declare-fun m!1557137 () Bool)

(assert (=> b!1383946 m!1557137))

(assert (=> b!1383946 m!1557137))

(declare-fun m!1557139 () Bool)

(assert (=> b!1383946 m!1557139))

(assert (=> b!1383953 m!1557133))

(assert (=> b!1383953 m!1557135))

(assert (=> b!1383953 m!1557135))

(assert (=> b!1383953 m!1557137))

(assert (=> b!1383953 m!1557137))

(declare-fun m!1557141 () Bool)

(assert (=> b!1383953 m!1557141))

(assert (=> b!1383948 m!1557133))

(declare-fun m!1557143 () Bool)

(assert (=> b!1383948 m!1557143))

(assert (=> b!1383948 m!1557143))

(declare-fun m!1557145 () Bool)

(assert (=> b!1383948 m!1557145))

(assert (=> b!1383952 m!1557133))

(declare-fun m!1557147 () Bool)

(assert (=> b!1383952 m!1557147))

(declare-fun m!1557149 () Bool)

(assert (=> b!1383954 m!1557149))

(assert (=> b!1383950 m!1557133))

(declare-fun m!1557151 () Bool)

(assert (=> b!1383950 m!1557151))

(declare-fun m!1557153 () Bool)

(assert (=> b!1383950 m!1557153))

(declare-fun m!1557155 () Bool)

(assert (=> b!1383951 m!1557155))

(declare-fun m!1557157 () Bool)

(assert (=> bm!92606 m!1557157))

(assert (=> b!1383947 m!1557133))

(assert (=> b!1383947 m!1557135))

(assert (=> b!1383947 m!1557135))

(assert (=> b!1383947 m!1557137))

(declare-fun m!1557159 () Bool)

(assert (=> d!395219 m!1557159))

(declare-fun m!1557161 () Bool)

(assert (=> d!395219 m!1557161))

(declare-fun m!1557163 () Bool)

(assert (=> d!395219 m!1557163))

(assert (=> d!395219 m!1556613))

(assert (=> b!1383197 d!395219))

(declare-fun d!395239 () Bool)

(assert (=> d!395239 (= (list!5437 lt!459874) (list!5442 (c!227558 lt!459874)))))

(declare-fun bs!336770 () Bool)

(assert (= bs!336770 d!395239))

(declare-fun m!1557165 () Bool)

(assert (=> bs!336770 m!1557165))

(assert (=> b!1383197 d!395239))

(declare-fun b!1383968 () Bool)

(declare-fun res!624309 () Bool)

(declare-fun e!884241 () Bool)

(assert (=> b!1383968 (=> (not res!624309) (not e!884241))))

(declare-fun lt!460116 () List!14113)

(assert (=> b!1383968 (= res!624309 (= (size!11534 lt!460116) (+ (size!11534 lt!459881) (size!11534 (getSuffix!593 lt!459880 lt!459881)))))))

(declare-fun d!395241 () Bool)

(assert (=> d!395241 e!884241))

(declare-fun res!624310 () Bool)

(assert (=> d!395241 (=> (not res!624310) (not e!884241))))

(assert (=> d!395241 (= res!624310 (= (content!2055 lt!460116) ((_ map or) (content!2055 lt!459881) (content!2055 (getSuffix!593 lt!459880 lt!459881)))))))

(declare-fun e!884240 () List!14113)

(assert (=> d!395241 (= lt!460116 e!884240)))

(declare-fun c!227698 () Bool)

(assert (=> d!395241 (= c!227698 ((_ is Nil!14047) lt!459881))))

(assert (=> d!395241 (= (++!3642 lt!459881 (getSuffix!593 lt!459880 lt!459881)) lt!460116)))

(declare-fun b!1383969 () Bool)

(assert (=> b!1383969 (= e!884241 (or (not (= (getSuffix!593 lt!459880 lt!459881) Nil!14047)) (= lt!460116 lt!459881)))))

(declare-fun b!1383967 () Bool)

(assert (=> b!1383967 (= e!884240 (Cons!14047 (h!19448 lt!459881) (++!3642 (t!122102 lt!459881) (getSuffix!593 lt!459880 lt!459881))))))

(declare-fun b!1383966 () Bool)

(assert (=> b!1383966 (= e!884240 (getSuffix!593 lt!459880 lt!459881))))

(assert (= (and d!395241 c!227698) b!1383966))

(assert (= (and d!395241 (not c!227698)) b!1383967))

(assert (= (and d!395241 res!624310) b!1383968))

(assert (= (and b!1383968 res!624309) b!1383969))

(declare-fun m!1557167 () Bool)

(assert (=> b!1383968 m!1557167))

(declare-fun m!1557169 () Bool)

(assert (=> b!1383968 m!1557169))

(assert (=> b!1383968 m!1556223))

(declare-fun m!1557171 () Bool)

(assert (=> b!1383968 m!1557171))

(declare-fun m!1557173 () Bool)

(assert (=> d!395241 m!1557173))

(assert (=> d!395241 m!1556559))

(assert (=> d!395241 m!1556223))

(declare-fun m!1557175 () Bool)

(assert (=> d!395241 m!1557175))

(assert (=> b!1383967 m!1556223))

(declare-fun m!1557177 () Bool)

(assert (=> b!1383967 m!1557177))

(assert (=> b!1383218 d!395241))

(declare-fun d!395243 () Bool)

(declare-fun lt!460119 () List!14113)

(assert (=> d!395243 (= (++!3642 lt!459881 lt!460119) lt!459880)))

(declare-fun e!884244 () List!14113)

(assert (=> d!395243 (= lt!460119 e!884244)))

(declare-fun c!227701 () Bool)

(assert (=> d!395243 (= c!227701 ((_ is Cons!14047) lt!459881))))

(assert (=> d!395243 (>= (size!11534 lt!459880) (size!11534 lt!459881))))

(assert (=> d!395243 (= (getSuffix!593 lt!459880 lt!459881) lt!460119)))

(declare-fun b!1383974 () Bool)

(assert (=> b!1383974 (= e!884244 (getSuffix!593 (tail!2008 lt!459880) (t!122102 lt!459881)))))

(declare-fun b!1383975 () Bool)

(assert (=> b!1383975 (= e!884244 lt!459880)))

(assert (= (and d!395243 c!227701) b!1383974))

(assert (= (and d!395243 (not c!227701)) b!1383975))

(declare-fun m!1557179 () Bool)

(assert (=> d!395243 m!1557179))

(declare-fun m!1557181 () Bool)

(assert (=> d!395243 m!1557181))

(assert (=> d!395243 m!1557169))

(assert (=> b!1383974 m!1556759))

(assert (=> b!1383974 m!1556759))

(declare-fun m!1557183 () Bool)

(assert (=> b!1383974 m!1557183))

(assert (=> b!1383218 d!395243))

(declare-fun d!395245 () Bool)

(declare-fun lt!460122 () List!14113)

(declare-fun dynLambda!6419 (Int List!14113) Bool)

(assert (=> d!395245 (dynLambda!6419 lambda!59471 lt!460122)))

(declare-fun choose!8497 (Int) List!14113)

(assert (=> d!395245 (= lt!460122 (choose!8497 lambda!59471))))

(assert (=> d!395245 (Exists!897 lambda!59471)))

(assert (=> d!395245 (= (pickWitness!200 lambda!59471) lt!460122)))

(declare-fun b_lambda!42751 () Bool)

(assert (=> (not b_lambda!42751) (not d!395245)))

(declare-fun bs!336771 () Bool)

(assert (= bs!336771 d!395245))

(declare-fun m!1557185 () Bool)

(assert (=> bs!336771 m!1557185))

(declare-fun m!1557187 () Bool)

(assert (=> bs!336771 m!1557187))

(assert (=> bs!336771 m!1556167))

(assert (=> b!1383218 d!395245))

(declare-fun d!395247 () Bool)

(declare-fun lt!460123 () Bool)

(assert (=> d!395247 (= lt!460123 (isEmpty!8489 (list!5437 (_2!7709 lt!459889))))))

(assert (=> d!395247 (= lt!460123 (isEmpty!8490 (c!227558 (_2!7709 lt!459889))))))

(assert (=> d!395247 (= (isEmpty!8483 (_2!7709 lt!459889)) lt!460123)))

(declare-fun bs!336772 () Bool)

(assert (= bs!336772 d!395247))

(declare-fun m!1557189 () Bool)

(assert (=> bs!336772 m!1557189))

(assert (=> bs!336772 m!1557189))

(declare-fun m!1557191 () Bool)

(assert (=> bs!336772 m!1557191))

(declare-fun m!1557193 () Bool)

(assert (=> bs!336772 m!1557193))

(assert (=> b!1383219 d!395247))

(declare-fun d!395249 () Bool)

(assert (=> d!395249 (= (isEmpty!8482 rules!2550) ((_ is Nil!14048) rules!2550))))

(assert (=> b!1383204 d!395249))

(declare-fun d!395251 () Bool)

(declare-fun choose!8498 (Int) Bool)

(assert (=> d!395251 (= (Exists!897 lambda!59471) (choose!8498 lambda!59471))))

(declare-fun bs!336773 () Bool)

(assert (= bs!336773 d!395251))

(declare-fun m!1557195 () Bool)

(assert (=> bs!336773 m!1557195))

(assert (=> b!1383205 d!395251))

(declare-fun bs!336774 () Bool)

(declare-fun d!395253 () Bool)

(assert (= bs!336774 (and d!395253 b!1383205)))

(declare-fun lambda!59516 () Int)

(assert (=> bs!336774 (= lambda!59516 lambda!59471)))

(assert (=> d!395253 true))

(assert (=> d!395253 true))

(assert (=> d!395253 (Exists!897 lambda!59516)))

(declare-fun lt!460126 () Unit!20295)

(declare-fun choose!8499 (Regex!3747 List!14113) Unit!20295)

(assert (=> d!395253 (= lt!460126 (choose!8499 lt!459883 lt!459881))))

(assert (=> d!395253 (validRegex!1631 lt!459883)))

(assert (=> d!395253 (= (lemmaPrefixMatchThenExistsStringThatMatches!215 lt!459883 lt!459881) lt!460126)))

(declare-fun bs!336775 () Bool)

(assert (= bs!336775 d!395253))

(declare-fun m!1557197 () Bool)

(assert (=> bs!336775 m!1557197))

(declare-fun m!1557199 () Bool)

(assert (=> bs!336775 m!1557199))

(assert (=> bs!336775 m!1556765))

(assert (=> b!1383205 d!395253))

(declare-fun d!395255 () Bool)

(declare-fun lt!460128 () Bool)

(declare-fun e!884248 () Bool)

(assert (=> d!395255 (= lt!460128 e!884248)))

(declare-fun res!624313 () Bool)

(assert (=> d!395255 (=> (not res!624313) (not e!884248))))

(assert (=> d!395255 (= res!624313 (= (list!5438 (_1!7709 (lex!953 thiss!19762 rules!2550 (print!892 thiss!19762 (singletonSeq!1074 t2!34))))) (list!5438 (singletonSeq!1074 t2!34))))))

(declare-fun e!884247 () Bool)

(assert (=> d!395255 (= lt!460128 e!884247)))

(declare-fun res!624315 () Bool)

(assert (=> d!395255 (=> (not res!624315) (not e!884247))))

(declare-fun lt!460127 () tuple2!13646)

(assert (=> d!395255 (= res!624315 (= (size!11528 (_1!7709 lt!460127)) 1))))

(assert (=> d!395255 (= lt!460127 (lex!953 thiss!19762 rules!2550 (print!892 thiss!19762 (singletonSeq!1074 t2!34))))))

(assert (=> d!395255 (not (isEmpty!8482 rules!2550))))

(assert (=> d!395255 (= (rulesProduceIndividualToken!1097 thiss!19762 rules!2550 t2!34) lt!460128)))

(declare-fun b!1383978 () Bool)

(declare-fun res!624314 () Bool)

(assert (=> b!1383978 (=> (not res!624314) (not e!884247))))

(assert (=> b!1383978 (= res!624314 (= (apply!3509 (_1!7709 lt!460127) 0) t2!34))))

(declare-fun b!1383979 () Bool)

(assert (=> b!1383979 (= e!884247 (isEmpty!8483 (_2!7709 lt!460127)))))

(declare-fun b!1383980 () Bool)

(assert (=> b!1383980 (= e!884248 (isEmpty!8483 (_2!7709 (lex!953 thiss!19762 rules!2550 (print!892 thiss!19762 (singletonSeq!1074 t2!34))))))))

(assert (= (and d!395255 res!624315) b!1383978))

(assert (= (and b!1383978 res!624314) b!1383979))

(assert (= (and d!395255 res!624313) b!1383980))

(assert (=> d!395255 m!1556199))

(declare-fun m!1557201 () Bool)

(assert (=> d!395255 m!1557201))

(assert (=> d!395255 m!1556221))

(declare-fun m!1557203 () Bool)

(assert (=> d!395255 m!1557203))

(assert (=> d!395255 m!1556219))

(assert (=> d!395255 m!1556221))

(declare-fun m!1557205 () Bool)

(assert (=> d!395255 m!1557205))

(assert (=> d!395255 m!1556219))

(declare-fun m!1557207 () Bool)

(assert (=> d!395255 m!1557207))

(assert (=> d!395255 m!1556219))

(declare-fun m!1557209 () Bool)

(assert (=> b!1383978 m!1557209))

(declare-fun m!1557211 () Bool)

(assert (=> b!1383979 m!1557211))

(assert (=> b!1383980 m!1556219))

(assert (=> b!1383980 m!1556219))

(assert (=> b!1383980 m!1556221))

(assert (=> b!1383980 m!1556221))

(assert (=> b!1383980 m!1557203))

(declare-fun m!1557213 () Bool)

(assert (=> b!1383980 m!1557213))

(assert (=> b!1383226 d!395255))

(declare-fun d!395257 () Bool)

(declare-fun lt!460131 () Int)

(assert (=> d!395257 (= lt!460131 (size!11534 (list!5437 lt!459874)))))

(declare-fun size!11538 (Conc!4626) Int)

(assert (=> d!395257 (= lt!460131 (size!11538 (c!227558 lt!459874)))))

(assert (=> d!395257 (= (size!11526 lt!459874) lt!460131)))

(declare-fun bs!336776 () Bool)

(assert (= bs!336776 d!395257))

(assert (=> bs!336776 m!1556149))

(assert (=> bs!336776 m!1556149))

(declare-fun m!1557215 () Bool)

(assert (=> bs!336776 m!1557215))

(declare-fun m!1557217 () Bool)

(assert (=> bs!336776 m!1557217))

(assert (=> b!1383227 d!395257))

(declare-fun d!395259 () Bool)

(declare-fun lt!460134 () BalanceConc!9192)

(assert (=> d!395259 (= (list!5437 lt!460134) (originalCharacters!3295 t2!34))))

(assert (=> d!395259 (= lt!460134 (dynLambda!6415 (toChars!3575 (transformation!2433 (rule!4192 t2!34))) (value!78973 t2!34)))))

(assert (=> d!395259 (= (charsOf!1405 t2!34) lt!460134)))

(declare-fun b_lambda!42753 () Bool)

(assert (=> (not b_lambda!42753) (not d!395259)))

(assert (=> d!395259 t!122129))

(declare-fun b_and!92759 () Bool)

(assert (= b_and!92749 (and (=> t!122129 result!88196) b_and!92759)))

(assert (=> d!395259 t!122131))

(declare-fun b_and!92761 () Bool)

(assert (= b_and!92751 (and (=> t!122131 result!88198) b_and!92761)))

(assert (=> d!395259 t!122133))

(declare-fun b_and!92763 () Bool)

(assert (= b_and!92753 (and (=> t!122133 result!88200) b_and!92763)))

(declare-fun m!1557219 () Bool)

(assert (=> d!395259 m!1557219))

(assert (=> d!395259 m!1557067))

(assert (=> b!1383227 d!395259))

(declare-fun lt!460137 () Bool)

(declare-fun d!395261 () Bool)

(declare-fun content!2057 (List!14115) (InoxSet Regex!3747))

(assert (=> d!395261 (= lt!460137 (select (content!2057 (map!3110 rules!2550 lambda!59472)) lt!459886))))

(declare-fun e!884254 () Bool)

(assert (=> d!395261 (= lt!460137 e!884254)))

(declare-fun res!624321 () Bool)

(assert (=> d!395261 (=> (not res!624321) (not e!884254))))

(assert (=> d!395261 (= res!624321 ((_ is Cons!14049) (map!3110 rules!2550 lambda!59472)))))

(assert (=> d!395261 (= (contains!2679 (map!3110 rules!2550 lambda!59472) lt!459886) lt!460137)))

(declare-fun b!1383985 () Bool)

(declare-fun e!884253 () Bool)

(assert (=> b!1383985 (= e!884254 e!884253)))

(declare-fun res!624320 () Bool)

(assert (=> b!1383985 (=> res!624320 e!884253)))

(assert (=> b!1383985 (= res!624320 (= (h!19450 (map!3110 rules!2550 lambda!59472)) lt!459886))))

(declare-fun b!1383986 () Bool)

(assert (=> b!1383986 (= e!884253 (contains!2679 (t!122104 (map!3110 rules!2550 lambda!59472)) lt!459886))))

(assert (= (and d!395261 res!624321) b!1383985))

(assert (= (and b!1383985 (not res!624320)) b!1383986))

(assert (=> d!395261 m!1556257))

(declare-fun m!1557221 () Bool)

(assert (=> d!395261 m!1557221))

(declare-fun m!1557223 () Bool)

(assert (=> d!395261 m!1557223))

(declare-fun m!1557225 () Bool)

(assert (=> b!1383986 m!1557225))

(assert (=> b!1383206 d!395261))

(assert (=> b!1383206 d!395045))

(declare-fun e!884266 () Bool)

(declare-fun b!1383999 () Bool)

(declare-fun dynLambda!6420 (Int Regex!3747) Bool)

(assert (=> b!1383999 (= e!884266 (dynLambda!6420 lambda!59473 (h!19450 (map!3110 rules!2550 lambda!59472))))))

(declare-fun b!1384000 () Bool)

(declare-fun e!884263 () Regex!3747)

(assert (=> b!1384000 (= e!884263 (getWitness!398 (t!122104 (map!3110 rules!2550 lambda!59472)) lambda!59473))))

(declare-fun b!1384001 () Bool)

(declare-fun lt!460142 () Unit!20295)

(declare-fun Unit!20300 () Unit!20295)

(assert (=> b!1384001 (= lt!460142 Unit!20300)))

(assert (=> b!1384001 false))

(declare-fun head!2519 (List!14115) Regex!3747)

(assert (=> b!1384001 (= e!884263 (head!2519 (map!3110 rules!2550 lambda!59472)))))

(declare-fun b!1384002 () Bool)

(declare-fun e!884265 () Regex!3747)

(assert (=> b!1384002 (= e!884265 (h!19450 (map!3110 rules!2550 lambda!59472)))))

(declare-fun b!1384003 () Bool)

(declare-fun e!884264 () Bool)

(declare-fun lt!460143 () Regex!3747)

(assert (=> b!1384003 (= e!884264 (contains!2679 (map!3110 rules!2550 lambda!59472) lt!460143))))

(declare-fun b!1384004 () Bool)

(assert (=> b!1384004 (= e!884265 e!884263)))

(declare-fun c!227707 () Bool)

(assert (=> b!1384004 (= c!227707 ((_ is Cons!14049) (map!3110 rules!2550 lambda!59472)))))

(declare-fun d!395263 () Bool)

(assert (=> d!395263 e!884264))

(declare-fun res!624326 () Bool)

(assert (=> d!395263 (=> (not res!624326) (not e!884264))))

(assert (=> d!395263 (= res!624326 (dynLambda!6420 lambda!59473 lt!460143))))

(assert (=> d!395263 (= lt!460143 e!884265)))

(declare-fun c!227706 () Bool)

(assert (=> d!395263 (= c!227706 e!884266)))

(declare-fun res!624327 () Bool)

(assert (=> d!395263 (=> (not res!624327) (not e!884266))))

(assert (=> d!395263 (= res!624327 ((_ is Cons!14049) (map!3110 rules!2550 lambda!59472)))))

(assert (=> d!395263 (exists!510 (map!3110 rules!2550 lambda!59472) lambda!59473)))

(assert (=> d!395263 (= (getWitness!398 (map!3110 rules!2550 lambda!59472) lambda!59473) lt!460143)))

(assert (= (and d!395263 res!624327) b!1383999))

(assert (= (and d!395263 c!227706) b!1384002))

(assert (= (and d!395263 (not c!227706)) b!1384004))

(assert (= (and b!1384004 c!227707) b!1384000))

(assert (= (and b!1384004 (not c!227707)) b!1384001))

(assert (= (and d!395263 res!624326) b!1384003))

(declare-fun b_lambda!42755 () Bool)

(assert (=> (not b_lambda!42755) (not b!1383999)))

(declare-fun b_lambda!42757 () Bool)

(assert (=> (not b_lambda!42757) (not d!395263)))

(declare-fun m!1557227 () Bool)

(assert (=> b!1384000 m!1557227))

(assert (=> b!1384003 m!1556257))

(declare-fun m!1557229 () Bool)

(assert (=> b!1384003 m!1557229))

(assert (=> b!1384001 m!1556257))

(declare-fun m!1557231 () Bool)

(assert (=> b!1384001 m!1557231))

(declare-fun m!1557233 () Bool)

(assert (=> d!395263 m!1557233))

(assert (=> d!395263 m!1556257))

(assert (=> d!395263 m!1556259))

(declare-fun m!1557235 () Bool)

(assert (=> b!1383999 m!1557235))

(assert (=> b!1383206 d!395263))

(declare-fun d!395265 () Bool)

(assert (=> d!395265 (= (list!5438 (_1!7709 lt!459889)) (list!5440 (c!227560 (_1!7709 lt!459889))))))

(declare-fun bs!336777 () Bool)

(assert (= bs!336777 d!395265))

(declare-fun m!1557237 () Bool)

(assert (=> bs!336777 m!1557237))

(assert (=> b!1383223 d!395265))

(declare-fun d!395267 () Bool)

(declare-fun e!884267 () Bool)

(assert (=> d!395267 e!884267))

(declare-fun res!624330 () Bool)

(assert (=> d!395267 (=> (not res!624330) (not e!884267))))

(declare-fun e!884269 () Bool)

(assert (=> d!395267 (= res!624330 e!884269)))

(declare-fun c!227708 () Bool)

(declare-fun lt!460144 () tuple2!13646)

(assert (=> d!395267 (= c!227708 (> (size!11528 (_1!7709 lt!460144)) 0))))

(assert (=> d!395267 (= lt!460144 (lexTailRecV2!422 thiss!19762 rules!2550 lt!459872 (BalanceConc!9193 Empty!4626) lt!459872 (BalanceConc!9195 Empty!4627)))))

(assert (=> d!395267 (= (lex!953 thiss!19762 rules!2550 lt!459872) lt!460144)))

(declare-fun b!1384005 () Bool)

(assert (=> b!1384005 (= e!884269 (= (_2!7709 lt!460144) lt!459872))))

(declare-fun b!1384006 () Bool)

(assert (=> b!1384006 (= e!884267 (= (list!5437 (_2!7709 lt!460144)) (_2!7707 (lexList!642 thiss!19762 rules!2550 (list!5437 lt!459872)))))))

(declare-fun b!1384007 () Bool)

(declare-fun e!884268 () Bool)

(assert (=> b!1384007 (= e!884268 (not (isEmpty!8485 (_1!7709 lt!460144))))))

(declare-fun b!1384008 () Bool)

(assert (=> b!1384008 (= e!884269 e!884268)))

(declare-fun res!624329 () Bool)

(assert (=> b!1384008 (= res!624329 (< (size!11526 (_2!7709 lt!460144)) (size!11526 lt!459872)))))

(assert (=> b!1384008 (=> (not res!624329) (not e!884268))))

(declare-fun b!1384009 () Bool)

(declare-fun res!624328 () Bool)

(assert (=> b!1384009 (=> (not res!624328) (not e!884267))))

(assert (=> b!1384009 (= res!624328 (= (list!5438 (_1!7709 lt!460144)) (_1!7707 (lexList!642 thiss!19762 rules!2550 (list!5437 lt!459872)))))))

(assert (= (and d!395267 c!227708) b!1384008))

(assert (= (and d!395267 (not c!227708)) b!1384005))

(assert (= (and b!1384008 res!624329) b!1384007))

(assert (= (and d!395267 res!624330) b!1384009))

(assert (= (and b!1384009 res!624328) b!1384006))

(declare-fun m!1557239 () Bool)

(assert (=> b!1384007 m!1557239))

(declare-fun m!1557241 () Bool)

(assert (=> d!395267 m!1557241))

(declare-fun m!1557243 () Bool)

(assert (=> d!395267 m!1557243))

(declare-fun m!1557245 () Bool)

(assert (=> b!1384009 m!1557245))

(assert (=> b!1384009 m!1556269))

(assert (=> b!1384009 m!1556269))

(assert (=> b!1384009 m!1556271))

(declare-fun m!1557247 () Bool)

(assert (=> b!1384008 m!1557247))

(declare-fun m!1557249 () Bool)

(assert (=> b!1384008 m!1557249))

(declare-fun m!1557251 () Bool)

(assert (=> b!1384006 m!1557251))

(assert (=> b!1384006 m!1556269))

(assert (=> b!1384006 m!1556269))

(assert (=> b!1384006 m!1556271))

(assert (=> b!1383223 d!395267))

(declare-fun d!395269 () Bool)

(declare-fun lt!460145 () BalanceConc!9192)

(assert (=> d!395269 (= (list!5437 lt!460145) (printList!617 thiss!19762 (list!5438 (singletonSeq!1074 t2!34))))))

(assert (=> d!395269 (= lt!460145 (printTailRec!599 thiss!19762 (singletonSeq!1074 t2!34) 0 (BalanceConc!9193 Empty!4626)))))

(assert (=> d!395269 (= (print!892 thiss!19762 (singletonSeq!1074 t2!34)) lt!460145)))

(declare-fun bs!336778 () Bool)

(assert (= bs!336778 d!395269))

(declare-fun m!1557253 () Bool)

(assert (=> bs!336778 m!1557253))

(assert (=> bs!336778 m!1556219))

(assert (=> bs!336778 m!1557207))

(assert (=> bs!336778 m!1557207))

(declare-fun m!1557255 () Bool)

(assert (=> bs!336778 m!1557255))

(assert (=> bs!336778 m!1556219))

(declare-fun m!1557257 () Bool)

(assert (=> bs!336778 m!1557257))

(assert (=> b!1383223 d!395269))

(declare-fun d!395271 () Bool)

(declare-fun e!884270 () Bool)

(assert (=> d!395271 e!884270))

(declare-fun res!624331 () Bool)

(assert (=> d!395271 (=> (not res!624331) (not e!884270))))

(declare-fun lt!460146 () BalanceConc!9194)

(assert (=> d!395271 (= res!624331 (= (list!5438 lt!460146) (Cons!14050 t2!34 Nil!14050)))))

(assert (=> d!395271 (= lt!460146 (singleton!469 t2!34))))

(assert (=> d!395271 (= (singletonSeq!1074 t2!34) lt!460146)))

(declare-fun b!1384010 () Bool)

(assert (=> b!1384010 (= e!884270 (isBalanced!1363 (c!227560 lt!460146)))))

(assert (= (and d!395271 res!624331) b!1384010))

(declare-fun m!1557259 () Bool)

(assert (=> d!395271 m!1557259))

(declare-fun m!1557261 () Bool)

(assert (=> d!395271 m!1557261))

(declare-fun m!1557263 () Bool)

(assert (=> b!1384010 m!1557263))

(assert (=> b!1383223 d!395271))

(declare-fun d!395273 () Bool)

(assert (=> d!395273 (= (list!5437 lt!459894) (list!5442 (c!227558 lt!459894)))))

(declare-fun bs!336779 () Bool)

(assert (= bs!336779 d!395273))

(declare-fun m!1557265 () Bool)

(assert (=> bs!336779 m!1557265))

(assert (=> b!1383202 d!395273))

(declare-fun d!395275 () Bool)

(declare-fun c!227711 () Bool)

(assert (=> d!395275 (= c!227711 (isEmpty!8489 lt!459881))))

(declare-fun e!884273 () Bool)

(assert (=> d!395275 (= (prefixMatch!256 lt!459883 lt!459881) e!884273)))

(declare-fun b!1384015 () Bool)

(declare-fun lostCause!345 (Regex!3747) Bool)

(assert (=> b!1384015 (= e!884273 (not (lostCause!345 lt!459883)))))

(declare-fun b!1384016 () Bool)

(assert (=> b!1384016 (= e!884273 (prefixMatch!256 (derivativeStep!969 lt!459883 (head!2515 lt!459881)) (tail!2008 lt!459881)))))

(assert (= (and d!395275 c!227711) b!1384015))

(assert (= (and d!395275 (not c!227711)) b!1384016))

(declare-fun m!1557267 () Bool)

(assert (=> d!395275 m!1557267))

(declare-fun m!1557269 () Bool)

(assert (=> b!1384015 m!1557269))

(declare-fun m!1557271 () Bool)

(assert (=> b!1384016 m!1557271))

(assert (=> b!1384016 m!1557271))

(declare-fun m!1557273 () Bool)

(assert (=> b!1384016 m!1557273))

(declare-fun m!1557275 () Bool)

(assert (=> b!1384016 m!1557275))

(assert (=> b!1384016 m!1557273))

(assert (=> b!1384016 m!1557275))

(declare-fun m!1557277 () Bool)

(assert (=> b!1384016 m!1557277))

(assert (=> b!1383202 d!395275))

(declare-fun d!395277 () Bool)

(declare-fun lt!460147 () C!7784)

(assert (=> d!395277 (= lt!460147 (apply!3506 (list!5437 lt!459874) 0))))

(assert (=> d!395277 (= lt!460147 (apply!3507 (c!227558 lt!459874) 0))))

(declare-fun e!884274 () Bool)

(assert (=> d!395277 e!884274))

(declare-fun res!624332 () Bool)

(assert (=> d!395277 (=> (not res!624332) (not e!884274))))

(assert (=> d!395277 (= res!624332 (<= 0 0))))

(assert (=> d!395277 (= (apply!3501 lt!459874 0) lt!460147)))

(declare-fun b!1384017 () Bool)

(assert (=> b!1384017 (= e!884274 (< 0 (size!11526 lt!459874)))))

(assert (= (and d!395277 res!624332) b!1384017))

(assert (=> d!395277 m!1556149))

(assert (=> d!395277 m!1556149))

(declare-fun m!1557279 () Bool)

(assert (=> d!395277 m!1557279))

(declare-fun m!1557281 () Bool)

(assert (=> d!395277 m!1557281))

(assert (=> b!1384017 m!1556201))

(assert (=> b!1383202 d!395277))

(declare-fun b!1384020 () Bool)

(declare-fun res!624333 () Bool)

(declare-fun e!884276 () Bool)

(assert (=> b!1384020 (=> (not res!624333) (not e!884276))))

(declare-fun lt!460148 () List!14113)

(assert (=> b!1384020 (= res!624333 (= (size!11534 lt!460148) (+ (size!11534 lt!459878) (size!11534 (Cons!14047 lt!459893 Nil!14047)))))))

(declare-fun d!395279 () Bool)

(assert (=> d!395279 e!884276))

(declare-fun res!624334 () Bool)

(assert (=> d!395279 (=> (not res!624334) (not e!884276))))

(assert (=> d!395279 (= res!624334 (= (content!2055 lt!460148) ((_ map or) (content!2055 lt!459878) (content!2055 (Cons!14047 lt!459893 Nil!14047)))))))

(declare-fun e!884275 () List!14113)

(assert (=> d!395279 (= lt!460148 e!884275)))

(declare-fun c!227712 () Bool)

(assert (=> d!395279 (= c!227712 ((_ is Nil!14047) lt!459878))))

(assert (=> d!395279 (= (++!3642 lt!459878 (Cons!14047 lt!459893 Nil!14047)) lt!460148)))

(declare-fun b!1384021 () Bool)

(assert (=> b!1384021 (= e!884276 (or (not (= (Cons!14047 lt!459893 Nil!14047) Nil!14047)) (= lt!460148 lt!459878)))))

(declare-fun b!1384019 () Bool)

(assert (=> b!1384019 (= e!884275 (Cons!14047 (h!19448 lt!459878) (++!3642 (t!122102 lt!459878) (Cons!14047 lt!459893 Nil!14047))))))

(declare-fun b!1384018 () Bool)

(assert (=> b!1384018 (= e!884275 (Cons!14047 lt!459893 Nil!14047))))

(assert (= (and d!395279 c!227712) b!1384018))

(assert (= (and d!395279 (not c!227712)) b!1384019))

(assert (= (and d!395279 res!624334) b!1384020))

(assert (= (and b!1384020 res!624333) b!1384021))

(declare-fun m!1557283 () Bool)

(assert (=> b!1384020 m!1557283))

(assert (=> b!1384020 m!1556601))

(declare-fun m!1557285 () Bool)

(assert (=> b!1384020 m!1557285))

(declare-fun m!1557287 () Bool)

(assert (=> d!395279 m!1557287))

(assert (=> d!395279 m!1556553))

(declare-fun m!1557289 () Bool)

(assert (=> d!395279 m!1557289))

(declare-fun m!1557291 () Bool)

(assert (=> b!1384019 m!1557291))

(assert (=> b!1383202 d!395279))

(declare-fun d!395281 () Bool)

(declare-fun lt!460149 () BalanceConc!9192)

(assert (=> d!395281 (= (list!5437 lt!460149) (originalCharacters!3295 t1!34))))

(assert (=> d!395281 (= lt!460149 (dynLambda!6415 (toChars!3575 (transformation!2433 (rule!4192 t1!34))) (value!78973 t1!34)))))

(assert (=> d!395281 (= (charsOf!1405 t1!34) lt!460149)))

(declare-fun b_lambda!42759 () Bool)

(assert (=> (not b_lambda!42759) (not d!395281)))

(assert (=> d!395281 t!122123))

(declare-fun b_and!92765 () Bool)

(assert (= b_and!92759 (and (=> t!122123 result!88188) b_and!92765)))

(assert (=> d!395281 t!122125))

(declare-fun b_and!92767 () Bool)

(assert (= b_and!92761 (and (=> t!122125 result!88192) b_and!92767)))

(assert (=> d!395281 t!122127))

(declare-fun b_and!92769 () Bool)

(assert (= b_and!92763 (and (=> t!122127 result!88194) b_and!92769)))

(declare-fun m!1557293 () Bool)

(assert (=> d!395281 m!1557293))

(assert (=> d!395281 m!1557055))

(assert (=> b!1383202 d!395281))

(declare-fun bs!336780 () Bool)

(declare-fun d!395283 () Bool)

(assert (= bs!336780 (and d!395283 b!1383186)))

(declare-fun lambda!59519 () Int)

(assert (=> bs!336780 (= lambda!59519 lambda!59472)))

(declare-fun lt!460152 () Unit!20295)

(declare-fun lemma!139 (List!14114 LexerInterface!2128 List!14114) Unit!20295)

(assert (=> d!395283 (= lt!460152 (lemma!139 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!147 (List!14115) Regex!3747)

(assert (=> d!395283 (= (rulesRegex!316 thiss!19762 rules!2550) (generalisedUnion!147 (map!3110 rules!2550 lambda!59519)))))

(declare-fun bs!336781 () Bool)

(assert (= bs!336781 d!395283))

(declare-fun m!1557295 () Bool)

(assert (=> bs!336781 m!1557295))

(declare-fun m!1557297 () Bool)

(assert (=> bs!336781 m!1557297))

(assert (=> bs!336781 m!1557297))

(declare-fun m!1557299 () Bool)

(assert (=> bs!336781 m!1557299))

(assert (=> b!1383202 d!395283))

(declare-fun d!395285 () Bool)

(declare-fun lt!460153 () Bool)

(assert (=> d!395285 (= lt!460153 (select (content!2055 (usedCharacters!244 (regex!2433 (rule!4192 t1!34)))) lt!459885))))

(declare-fun e!884278 () Bool)

(assert (=> d!395285 (= lt!460153 e!884278)))

(declare-fun res!624335 () Bool)

(assert (=> d!395285 (=> (not res!624335) (not e!884278))))

(assert (=> d!395285 (= res!624335 ((_ is Cons!14047) (usedCharacters!244 (regex!2433 (rule!4192 t1!34)))))))

(assert (=> d!395285 (= (contains!2678 (usedCharacters!244 (regex!2433 (rule!4192 t1!34))) lt!459885) lt!460153)))

(declare-fun b!1384022 () Bool)

(declare-fun e!884277 () Bool)

(assert (=> b!1384022 (= e!884278 e!884277)))

(declare-fun res!624336 () Bool)

(assert (=> b!1384022 (=> res!624336 e!884277)))

(assert (=> b!1384022 (= res!624336 (= (h!19448 (usedCharacters!244 (regex!2433 (rule!4192 t1!34)))) lt!459885))))

(declare-fun b!1384023 () Bool)

(assert (=> b!1384023 (= e!884277 (contains!2678 (t!122102 (usedCharacters!244 (regex!2433 (rule!4192 t1!34)))) lt!459885))))

(assert (= (and d!395285 res!624335) b!1384022))

(assert (= (and b!1384022 (not res!624336)) b!1384023))

(assert (=> d!395285 m!1556283))

(declare-fun m!1557301 () Bool)

(assert (=> d!395285 m!1557301))

(declare-fun m!1557303 () Bool)

(assert (=> d!395285 m!1557303))

(declare-fun m!1557305 () Bool)

(assert (=> b!1384023 m!1557305))

(assert (=> b!1383203 d!395285))

(declare-fun b!1384040 () Bool)

(declare-fun e!884290 () List!14113)

(declare-fun e!884288 () List!14113)

(assert (=> b!1384040 (= e!884290 e!884288)))

(declare-fun c!227721 () Bool)

(assert (=> b!1384040 (= c!227721 ((_ is ElementMatch!3747) (regex!2433 (rule!4192 t1!34))))))

(declare-fun bm!92615 () Bool)

(declare-fun call!92623 () List!14113)

(declare-fun c!227722 () Bool)

(assert (=> bm!92615 (= call!92623 (usedCharacters!244 (ite c!227722 (regOne!8007 (regex!2433 (rule!4192 t1!34))) (regTwo!8006 (regex!2433 (rule!4192 t1!34))))))))

(declare-fun bm!92616 () Bool)

(declare-fun call!92621 () List!14113)

(declare-fun call!92622 () List!14113)

(assert (=> bm!92616 (= call!92621 call!92622)))

(declare-fun b!1384041 () Bool)

(assert (=> b!1384041 (= e!884290 Nil!14047)))

(declare-fun b!1384042 () Bool)

(assert (=> b!1384042 (= e!884288 (Cons!14047 (c!227559 (regex!2433 (rule!4192 t1!34))) Nil!14047))))

(declare-fun c!227723 () Bool)

(declare-fun bm!92617 () Bool)

(assert (=> bm!92617 (= call!92622 (usedCharacters!244 (ite c!227723 (reg!4076 (regex!2433 (rule!4192 t1!34))) (ite c!227722 (regTwo!8007 (regex!2433 (rule!4192 t1!34))) (regOne!8006 (regex!2433 (rule!4192 t1!34)))))))))

(declare-fun b!1384043 () Bool)

(declare-fun e!884287 () List!14113)

(assert (=> b!1384043 (= e!884287 call!92622)))

(declare-fun b!1384045 () Bool)

(declare-fun e!884289 () List!14113)

(declare-fun call!92620 () List!14113)

(assert (=> b!1384045 (= e!884289 call!92620)))

(declare-fun b!1384046 () Bool)

(assert (=> b!1384046 (= c!227723 ((_ is Star!3747) (regex!2433 (rule!4192 t1!34))))))

(assert (=> b!1384046 (= e!884288 e!884287)))

(declare-fun bm!92618 () Bool)

(assert (=> bm!92618 (= call!92620 (++!3642 (ite c!227722 call!92623 call!92621) (ite c!227722 call!92621 call!92623)))))

(declare-fun b!1384047 () Bool)

(assert (=> b!1384047 (= e!884289 call!92620)))

(declare-fun b!1384044 () Bool)

(assert (=> b!1384044 (= e!884287 e!884289)))

(assert (=> b!1384044 (= c!227722 ((_ is Union!3747) (regex!2433 (rule!4192 t1!34))))))

(declare-fun d!395287 () Bool)

(declare-fun c!227724 () Bool)

(assert (=> d!395287 (= c!227724 (or ((_ is EmptyExpr!3747) (regex!2433 (rule!4192 t1!34))) ((_ is EmptyLang!3747) (regex!2433 (rule!4192 t1!34)))))))

(assert (=> d!395287 (= (usedCharacters!244 (regex!2433 (rule!4192 t1!34))) e!884290)))

(assert (= (and d!395287 c!227724) b!1384041))

(assert (= (and d!395287 (not c!227724)) b!1384040))

(assert (= (and b!1384040 c!227721) b!1384042))

(assert (= (and b!1384040 (not c!227721)) b!1384046))

(assert (= (and b!1384046 c!227723) b!1384043))

(assert (= (and b!1384046 (not c!227723)) b!1384044))

(assert (= (and b!1384044 c!227722) b!1384047))

(assert (= (and b!1384044 (not c!227722)) b!1384045))

(assert (= (or b!1384047 b!1384045) bm!92615))

(assert (= (or b!1384047 b!1384045) bm!92616))

(assert (= (or b!1384047 b!1384045) bm!92618))

(assert (= (or b!1384043 bm!92616) bm!92617))

(declare-fun m!1557307 () Bool)

(assert (=> bm!92615 m!1557307))

(declare-fun m!1557309 () Bool)

(assert (=> bm!92617 m!1557309))

(declare-fun m!1557311 () Bool)

(assert (=> bm!92618 m!1557311))

(assert (=> b!1383203 d!395287))

(declare-fun d!395289 () Bool)

(declare-fun lt!460154 () Bool)

(assert (=> d!395289 (= lt!460154 (select (content!2055 lt!459880) lt!459885))))

(declare-fun e!884292 () Bool)

(assert (=> d!395289 (= lt!460154 e!884292)))

(declare-fun res!624337 () Bool)

(assert (=> d!395289 (=> (not res!624337) (not e!884292))))

(assert (=> d!395289 (= res!624337 ((_ is Cons!14047) lt!459880))))

(assert (=> d!395289 (= (contains!2678 lt!459880 lt!459885) lt!460154)))

(declare-fun b!1384048 () Bool)

(declare-fun e!884291 () Bool)

(assert (=> b!1384048 (= e!884292 e!884291)))

(declare-fun res!624338 () Bool)

(assert (=> b!1384048 (=> res!624338 e!884291)))

(assert (=> b!1384048 (= res!624338 (= (h!19448 lt!459880) lt!459885))))

(declare-fun b!1384049 () Bool)

(assert (=> b!1384049 (= e!884291 (contains!2678 (t!122102 lt!459880) lt!459885))))

(assert (= (and d!395289 res!624337) b!1384048))

(assert (= (and b!1384048 (not res!624338)) b!1384049))

(assert (=> d!395289 m!1557077))

(declare-fun m!1557313 () Bool)

(assert (=> d!395289 m!1557313))

(declare-fun m!1557315 () Bool)

(assert (=> b!1384049 m!1557315))

(assert (=> b!1383225 d!395289))

(declare-fun b!1384060 () Bool)

(declare-fun e!884295 () Bool)

(declare-fun tp_is_empty!6771 () Bool)

(assert (=> b!1384060 (= e!884295 tp_is_empty!6771)))

(declare-fun b!1384063 () Bool)

(declare-fun tp!396246 () Bool)

(declare-fun tp!396250 () Bool)

(assert (=> b!1384063 (= e!884295 (and tp!396246 tp!396250))))

(declare-fun b!1384062 () Bool)

(declare-fun tp!396247 () Bool)

(assert (=> b!1384062 (= e!884295 tp!396247)))

(declare-fun b!1384061 () Bool)

(declare-fun tp!396249 () Bool)

(declare-fun tp!396248 () Bool)

(assert (=> b!1384061 (= e!884295 (and tp!396249 tp!396248))))

(assert (=> b!1383199 (= tp!396183 e!884295)))

(assert (= (and b!1383199 ((_ is ElementMatch!3747) (regex!2433 (h!19449 rules!2550)))) b!1384060))

(assert (= (and b!1383199 ((_ is Concat!6271) (regex!2433 (h!19449 rules!2550)))) b!1384061))

(assert (= (and b!1383199 ((_ is Star!3747) (regex!2433 (h!19449 rules!2550)))) b!1384062))

(assert (= (and b!1383199 ((_ is Union!3747) (regex!2433 (h!19449 rules!2550)))) b!1384063))

(declare-fun b!1384068 () Bool)

(declare-fun e!884298 () Bool)

(declare-fun tp!396253 () Bool)

(assert (=> b!1384068 (= e!884298 (and tp_is_empty!6771 tp!396253))))

(assert (=> b!1383188 (= tp!396177 e!884298)))

(assert (= (and b!1383188 ((_ is Cons!14047) (originalCharacters!3295 t1!34))) b!1384068))

(declare-fun b!1384069 () Bool)

(declare-fun e!884299 () Bool)

(assert (=> b!1384069 (= e!884299 tp_is_empty!6771)))

(declare-fun b!1384072 () Bool)

(declare-fun tp!396254 () Bool)

(declare-fun tp!396258 () Bool)

(assert (=> b!1384072 (= e!884299 (and tp!396254 tp!396258))))

(declare-fun b!1384071 () Bool)

(declare-fun tp!396255 () Bool)

(assert (=> b!1384071 (= e!884299 tp!396255)))

(declare-fun b!1384070 () Bool)

(declare-fun tp!396257 () Bool)

(declare-fun tp!396256 () Bool)

(assert (=> b!1384070 (= e!884299 (and tp!396257 tp!396256))))

(assert (=> b!1383221 (= tp!396180 e!884299)))

(assert (= (and b!1383221 ((_ is ElementMatch!3747) (regex!2433 (rule!4192 t2!34)))) b!1384069))

(assert (= (and b!1383221 ((_ is Concat!6271) (regex!2433 (rule!4192 t2!34)))) b!1384070))

(assert (= (and b!1383221 ((_ is Star!3747) (regex!2433 (rule!4192 t2!34)))) b!1384071))

(assert (= (and b!1383221 ((_ is Union!3747) (regex!2433 (rule!4192 t2!34)))) b!1384072))

(declare-fun b!1384073 () Bool)

(declare-fun e!884300 () Bool)

(assert (=> b!1384073 (= e!884300 tp_is_empty!6771)))

(declare-fun b!1384076 () Bool)

(declare-fun tp!396259 () Bool)

(declare-fun tp!396263 () Bool)

(assert (=> b!1384076 (= e!884300 (and tp!396259 tp!396263))))

(declare-fun b!1384075 () Bool)

(declare-fun tp!396260 () Bool)

(assert (=> b!1384075 (= e!884300 tp!396260)))

(declare-fun b!1384074 () Bool)

(declare-fun tp!396262 () Bool)

(declare-fun tp!396261 () Bool)

(assert (=> b!1384074 (= e!884300 (and tp!396262 tp!396261))))

(assert (=> b!1383200 (= tp!396185 e!884300)))

(assert (= (and b!1383200 ((_ is ElementMatch!3747) (regex!2433 (rule!4192 t1!34)))) b!1384073))

(assert (= (and b!1383200 ((_ is Concat!6271) (regex!2433 (rule!4192 t1!34)))) b!1384074))

(assert (= (and b!1383200 ((_ is Star!3747) (regex!2433 (rule!4192 t1!34)))) b!1384075))

(assert (= (and b!1383200 ((_ is Union!3747) (regex!2433 (rule!4192 t1!34)))) b!1384076))

(declare-fun b!1384077 () Bool)

(declare-fun e!884301 () Bool)

(declare-fun tp!396264 () Bool)

(assert (=> b!1384077 (= e!884301 (and tp_is_empty!6771 tp!396264))))

(assert (=> b!1383213 (= tp!396178 e!884301)))

(assert (= (and b!1383213 ((_ is Cons!14047) (originalCharacters!3295 t2!34))) b!1384077))

(declare-fun b!1384088 () Bool)

(declare-fun b_free!33651 () Bool)

(declare-fun b_next!34355 () Bool)

(assert (=> b!1384088 (= b_free!33651 (not b_next!34355))))

(declare-fun tp!396275 () Bool)

(declare-fun b_and!92771 () Bool)

(assert (=> b!1384088 (= tp!396275 b_and!92771)))

(declare-fun b_free!33653 () Bool)

(declare-fun b_next!34357 () Bool)

(assert (=> b!1384088 (= b_free!33653 (not b_next!34357))))

(declare-fun tb!72613 () Bool)

(declare-fun t!122139 () Bool)

(assert (=> (and b!1384088 (= (toChars!3575 (transformation!2433 (h!19449 (t!122103 rules!2550)))) (toChars!3575 (transformation!2433 (rule!4192 t1!34)))) t!122139) tb!72613))

(declare-fun result!88218 () Bool)

(assert (= result!88218 result!88188))

(assert (=> b!1383883 t!122139))

(declare-fun tb!72615 () Bool)

(declare-fun t!122141 () Bool)

(assert (=> (and b!1384088 (= (toChars!3575 (transformation!2433 (h!19449 (t!122103 rules!2550)))) (toChars!3575 (transformation!2433 (rule!4192 t2!34)))) t!122141) tb!72615))

(declare-fun result!88220 () Bool)

(assert (= result!88220 result!88196))

(assert (=> b!1383890 t!122141))

(assert (=> d!395259 t!122141))

(assert (=> d!395281 t!122139))

(declare-fun b_and!92773 () Bool)

(declare-fun tp!396273 () Bool)

(assert (=> b!1384088 (= tp!396273 (and (=> t!122139 result!88218) (=> t!122141 result!88220) b_and!92773))))

(declare-fun e!884310 () Bool)

(assert (=> b!1384088 (= e!884310 (and tp!396275 tp!396273))))

(declare-fun e!884312 () Bool)

(declare-fun b!1384087 () Bool)

(declare-fun tp!396274 () Bool)

(assert (=> b!1384087 (= e!884312 (and tp!396274 (inv!18384 (tag!2695 (h!19449 (t!122103 rules!2550)))) (inv!18388 (transformation!2433 (h!19449 (t!122103 rules!2550)))) e!884310))))

(declare-fun b!1384086 () Bool)

(declare-fun e!884313 () Bool)

(declare-fun tp!396276 () Bool)

(assert (=> b!1384086 (= e!884313 (and e!884312 tp!396276))))

(assert (=> b!1383224 (= tp!396176 e!884313)))

(assert (= b!1384087 b!1384088))

(assert (= b!1384086 b!1384087))

(assert (= (and b!1383224 ((_ is Cons!14048) (t!122103 rules!2550))) b!1384086))

(declare-fun m!1557317 () Bool)

(assert (=> b!1384087 m!1557317))

(declare-fun m!1557319 () Bool)

(assert (=> b!1384087 m!1557319))

(declare-fun b_lambda!42761 () Bool)

(assert (= b_lambda!42723 (or (and b!1383198 b_free!33637 (= (toChars!3575 (transformation!2433 (h!19449 rules!2550))) (toChars!3575 (transformation!2433 (rule!4192 t2!34))))) (and b!1383228 b_free!33641 (= (toChars!3575 (transformation!2433 (rule!4192 t1!34))) (toChars!3575 (transformation!2433 (rule!4192 t2!34))))) (and b!1383220 b_free!33645) (and b!1384088 b_free!33653 (= (toChars!3575 (transformation!2433 (h!19449 (t!122103 rules!2550)))) (toChars!3575 (transformation!2433 (rule!4192 t2!34))))) b_lambda!42761)))

(declare-fun b_lambda!42763 () Bool)

(assert (= b_lambda!42753 (or (and b!1383198 b_free!33637 (= (toChars!3575 (transformation!2433 (h!19449 rules!2550))) (toChars!3575 (transformation!2433 (rule!4192 t2!34))))) (and b!1383228 b_free!33641 (= (toChars!3575 (transformation!2433 (rule!4192 t1!34))) (toChars!3575 (transformation!2433 (rule!4192 t2!34))))) (and b!1383220 b_free!33645) (and b!1384088 b_free!33653 (= (toChars!3575 (transformation!2433 (h!19449 (t!122103 rules!2550)))) (toChars!3575 (transformation!2433 (rule!4192 t2!34))))) b_lambda!42763)))

(declare-fun b_lambda!42765 () Bool)

(assert (= b_lambda!42685 (or b!1383222 b_lambda!42765)))

(declare-fun bs!336782 () Bool)

(declare-fun d!395291 () Bool)

(assert (= bs!336782 (and d!395291 b!1383222)))

(assert (=> bs!336782 (= (dynLambda!6406 lambda!59474 (h!19449 rules!2550)) (= (regex!2433 (h!19449 rules!2550)) lt!459886))))

(assert (=> b!1383433 d!395291))

(declare-fun b_lambda!42767 () Bool)

(assert (= b_lambda!42689 (or b!1383186 b_lambda!42767)))

(declare-fun bs!336783 () Bool)

(declare-fun d!395293 () Bool)

(assert (= bs!336783 (and d!395293 b!1383186)))

(assert (=> bs!336783 (= (dynLambda!6408 lambda!59472 (h!19449 rules!2550)) (regex!2433 (h!19449 rules!2550)))))

(assert (=> b!1383491 d!395293))

(declare-fun b_lambda!42769 () Bool)

(assert (= b_lambda!42757 (or b!1383186 b_lambda!42769)))

(declare-fun bs!336784 () Bool)

(declare-fun d!395295 () Bool)

(assert (= bs!336784 (and d!395295 b!1383186)))

(declare-fun res!624339 () Bool)

(declare-fun e!884314 () Bool)

(assert (=> bs!336784 (=> (not res!624339) (not e!884314))))

(assert (=> bs!336784 (= res!624339 (validRegex!1631 lt!460143))))

(assert (=> bs!336784 (= (dynLambda!6420 lambda!59473 lt!460143) e!884314)))

(declare-fun b!1384089 () Bool)

(assert (=> b!1384089 (= e!884314 (matchR!1738 lt!460143 lt!459880))))

(assert (= (and bs!336784 res!624339) b!1384089))

(declare-fun m!1557321 () Bool)

(assert (=> bs!336784 m!1557321))

(declare-fun m!1557323 () Bool)

(assert (=> b!1384089 m!1557323))

(assert (=> d!395263 d!395295))

(declare-fun b_lambda!42771 () Bool)

(assert (= b_lambda!42705 (or b!1383192 b_lambda!42771)))

(declare-fun bs!336785 () Bool)

(declare-fun d!395297 () Bool)

(assert (= bs!336785 (and d!395297 b!1383192)))

(declare-fun ruleValid!598 (LexerInterface!2128 Rule!4666) Bool)

(assert (=> bs!336785 (= (dynLambda!6406 lambda!59475 (rule!4192 t1!34)) (ruleValid!598 thiss!19762 (rule!4192 t1!34)))))

(declare-fun m!1557325 () Bool)

(assert (=> bs!336785 m!1557325))

(assert (=> d!395119 d!395297))

(declare-fun b_lambda!42773 () Bool)

(assert (= b_lambda!42687 (or b!1383222 b_lambda!42773)))

(declare-fun bs!336786 () Bool)

(declare-fun d!395299 () Bool)

(assert (= bs!336786 (and d!395299 b!1383222)))

(assert (=> bs!336786 (= (dynLambda!6406 lambda!59474 lt!459947) (= (regex!2433 lt!459947) lt!459886))))

(assert (=> d!395019 d!395299))

(declare-fun b_lambda!42775 () Bool)

(assert (= b_lambda!42721 (or (and b!1383198 b_free!33637 (= (toChars!3575 (transformation!2433 (h!19449 rules!2550))) (toChars!3575 (transformation!2433 (rule!4192 t1!34))))) (and b!1383228 b_free!33641) (and b!1383220 b_free!33645 (= (toChars!3575 (transformation!2433 (rule!4192 t2!34))) (toChars!3575 (transformation!2433 (rule!4192 t1!34))))) (and b!1384088 b_free!33653 (= (toChars!3575 (transformation!2433 (h!19449 (t!122103 rules!2550)))) (toChars!3575 (transformation!2433 (rule!4192 t1!34))))) b_lambda!42775)))

(declare-fun b_lambda!42777 () Bool)

(assert (= b_lambda!42759 (or (and b!1383198 b_free!33637 (= (toChars!3575 (transformation!2433 (h!19449 rules!2550))) (toChars!3575 (transformation!2433 (rule!4192 t1!34))))) (and b!1383228 b_free!33641) (and b!1383220 b_free!33645 (= (toChars!3575 (transformation!2433 (rule!4192 t2!34))) (toChars!3575 (transformation!2433 (rule!4192 t1!34))))) (and b!1384088 b_free!33653 (= (toChars!3575 (transformation!2433 (h!19449 (t!122103 rules!2550)))) (toChars!3575 (transformation!2433 (rule!4192 t1!34))))) b_lambda!42777)))

(declare-fun b_lambda!42779 () Bool)

(assert (= b_lambda!42755 (or b!1383186 b_lambda!42779)))

(declare-fun bs!336787 () Bool)

(declare-fun d!395301 () Bool)

(assert (= bs!336787 (and d!395301 b!1383186)))

(declare-fun res!624340 () Bool)

(declare-fun e!884315 () Bool)

(assert (=> bs!336787 (=> (not res!624340) (not e!884315))))

(assert (=> bs!336787 (= res!624340 (validRegex!1631 (h!19450 (map!3110 rules!2550 lambda!59472))))))

(assert (=> bs!336787 (= (dynLambda!6420 lambda!59473 (h!19450 (map!3110 rules!2550 lambda!59472))) e!884315)))

(declare-fun b!1384090 () Bool)

(assert (=> b!1384090 (= e!884315 (matchR!1738 (h!19450 (map!3110 rules!2550 lambda!59472)) lt!459880))))

(assert (= (and bs!336787 res!624340) b!1384090))

(declare-fun m!1557327 () Bool)

(assert (=> bs!336787 m!1557327))

(declare-fun m!1557329 () Bool)

(assert (=> b!1384090 m!1557329))

(assert (=> b!1383999 d!395301))

(declare-fun b_lambda!42781 () Bool)

(assert (= b_lambda!42703 (or b!1383192 b_lambda!42781)))

(declare-fun bs!336788 () Bool)

(declare-fun d!395303 () Bool)

(assert (= bs!336788 (and d!395303 b!1383192)))

(assert (=> bs!336788 (= (dynLambda!6406 lambda!59475 (rule!4192 t2!34)) (ruleValid!598 thiss!19762 (rule!4192 t2!34)))))

(declare-fun m!1557331 () Bool)

(assert (=> bs!336788 m!1557331))

(assert (=> d!395117 d!395303))

(declare-fun b_lambda!42783 () Bool)

(assert (= b_lambda!42707 (or b!1383192 b_lambda!42783)))

(declare-fun bs!336789 () Bool)

(declare-fun d!395305 () Bool)

(assert (= bs!336789 (and d!395305 b!1383192)))

(assert (=> bs!336789 (= (dynLambda!6406 lambda!59475 lt!459884) (ruleValid!598 thiss!19762 lt!459884))))

(declare-fun m!1557333 () Bool)

(assert (=> bs!336789 m!1557333))

(assert (=> d!395121 d!395305))

(declare-fun b_lambda!42785 () Bool)

(assert (= b_lambda!42751 (or b!1383205 b_lambda!42785)))

(declare-fun bs!336790 () Bool)

(declare-fun d!395307 () Bool)

(assert (= bs!336790 (and d!395307 b!1383205)))

(declare-fun res!624341 () Bool)

(declare-fun e!884316 () Bool)

(assert (=> bs!336790 (=> (not res!624341) (not e!884316))))

(assert (=> bs!336790 (= res!624341 (matchR!1738 lt!459883 lt!460122))))

(assert (=> bs!336790 (= (dynLambda!6419 lambda!59471 lt!460122) e!884316)))

(declare-fun b!1384091 () Bool)

(assert (=> b!1384091 (= e!884316 (isPrefix!1138 lt!459881 lt!460122))))

(assert (= (and bs!336790 res!624341) b!1384091))

(declare-fun m!1557335 () Bool)

(assert (=> bs!336790 m!1557335))

(declare-fun m!1557337 () Bool)

(assert (=> b!1384091 m!1557337))

(assert (=> d!395245 d!395307))

(check-sat (not d!395257) (not b!1384090) (not d!395265) (not b_next!34355) (not d!395029) (not b!1383942) (not b!1383893) (not d!395075) (not b!1383967) (not b!1383895) (not b!1383708) (not b!1383456) (not b!1383892) (not b_lambda!42773) (not bm!92580) (not b!1384074) (not b!1384071) (not b!1383941) (not b!1383870) (not b!1383968) (not b!1383496) (not b!1383595) (not bm!92588) (not b_lambda!42761) (not b!1383491) (not d!394979) (not b!1383689) (not b!1383889) (not b!1384020) (not b_lambda!42771) (not tb!72603) (not b!1383253) (not b!1383418) (not b!1383872) (not d!395247) b_and!92715 (not d!395121) (not b_lambda!42765) tp_is_empty!6771 (not b!1383674) (not b!1383710) (not b!1383696) (not d!395059) (not b!1383700) (not d!395217) (not d!395109) (not d!395125) (not b_lambda!42783) (not b!1383593) (not d!395047) (not b!1384075) (not d!395271) (not b!1383453) (not b!1384091) (not b!1383435) (not bm!92602) (not b!1383671) (not b!1383891) (not b_lambda!42767) (not b!1383416) (not d!395275) (not b_next!34339) (not d!395279) (not d!395083) (not b!1383883) (not bm!92606) (not d!395045) (not d!395021) (not b!1384017) (not d!395041) b_and!92769 (not d!395239) (not b!1383596) (not d!395195) (not b!1384087) (not bs!336788) (not bm!92603) (not d!395207) (not b!1384015) (not b!1383439) (not b!1383702) (not b!1383535) (not d!395213) (not d!394981) (not d!395057) (not b!1383415) (not b!1383703) (not d!395251) (not b!1383884) (not b!1384049) (not b_lambda!42779) (not d!395191) b_and!92773 (not b!1383679) (not b!1383533) (not d!395243) b_and!92771 (not b_next!34347) (not b!1383601) (not b_next!34349) (not d!395049) (not bs!336785) (not d!395201) (not b_lambda!42763) (not b!1383986) (not tb!72597) (not d!395285) (not b!1383536) (not b!1383871) (not b!1383890) (not b!1383718) (not b!1383509) (not b!1383979) (not b!1383980) b_and!92711 (not d!395269) (not b!1384076) (not b!1384089) (not b!1384086) (not b!1383878) (not d!395061) b_and!92707 (not b!1383534) (not b!1383695) (not d!395219) (not b!1383974) (not b_next!34345) (not b_lambda!42781) (not b!1383502) (not b_next!34357) (not d!395273) (not b!1383721) (not b!1383722) (not b!1383529) (not b!1383454) b_and!92765 (not d!395051) (not bm!92617) (not b!1384009) (not b!1384070) (not bm!92585) (not b_lambda!42769) (not b!1383681) (not d!395065) (not b!1383432) (not b!1383683) (not b!1383260) (not d!395199) (not d!395283) (not b!1383948) (not b!1383417) (not b!1383504) (not d!395023) (not b!1384003) (not b!1384062) (not b!1383954) (not d!395119) (not b!1384061) (not b!1383697) (not b!1384007) (not b!1383687) (not b!1383252) (not b_next!34343) (not b!1384016) (not bm!92615) (not d!395209) (not d!395289) (not b!1383597) (not d!395063) (not b!1384077) (not b!1384001) (not b!1383950) (not b!1383672) (not b_lambda!42775) (not b!1383704) (not d!395261) (not d!395215) (not b!1383530) (not b!1384023) (not b!1383874) (not b!1384068) (not bs!336784) (not b!1384010) (not d!395211) (not d!395055) (not b!1383528) (not b_lambda!42785) (not d!395241) (not b_next!34341) (not b!1384072) (not b!1383254) (not d!395245) (not d!395255) (not b!1383434) (not b!1383951) (not d!395043) (not d!395117) b_and!92767 (not d!395263) (not b!1383682) (not bs!336790) (not b!1384008) (not b!1383478) (not b!1383952) (not d!395267) (not d!395277) (not b!1383532) (not d!395203) (not d!395259) (not b!1383877) (not bm!92581) (not b!1383944) (not d!395113) (not b!1383947) (not b!1384000) (not b!1383506) (not b!1383978) (not d!395019) (not b_lambda!42777) (not bm!92618) (not bs!336787) (not b!1384006) (not b!1383946) (not b!1384019) (not d!395253) (not d!395025) (not bs!336789) (not b!1383953) (not d!395101) (not b!1384063) (not b!1383603) (not d!395281))
(check-sat (not b_next!34355) b_and!92715 (not b_next!34339) b_and!92769 b_and!92711 (not b_next!34357) b_and!92765 (not b_next!34343) (not b_next!34341) b_and!92767 (not b_next!34349) b_and!92773 b_and!92771 (not b_next!34347) b_and!92707 (not b_next!34345))
