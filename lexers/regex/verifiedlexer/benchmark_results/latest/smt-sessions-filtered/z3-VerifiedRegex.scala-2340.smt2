; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115466 () Bool)

(assert start!115466)

(declare-fun b!1307907 () Bool)

(declare-fun b_free!31435 () Bool)

(declare-fun b_next!32139 () Bool)

(assert (=> b!1307907 (= b_free!31435 (not b_next!32139))))

(declare-fun tp!381511 () Bool)

(declare-fun b_and!87335 () Bool)

(assert (=> b!1307907 (= tp!381511 b_and!87335)))

(declare-fun b_free!31437 () Bool)

(declare-fun b_next!32141 () Bool)

(assert (=> b!1307907 (= b_free!31437 (not b_next!32141))))

(declare-fun tp!381516 () Bool)

(declare-fun b_and!87337 () Bool)

(assert (=> b!1307907 (= tp!381516 b_and!87337)))

(declare-fun b!1307905 () Bool)

(declare-fun b_free!31439 () Bool)

(declare-fun b_next!32143 () Bool)

(assert (=> b!1307905 (= b_free!31439 (not b_next!32143))))

(declare-fun tp!381517 () Bool)

(declare-fun b_and!87339 () Bool)

(assert (=> b!1307905 (= tp!381517 b_and!87339)))

(declare-fun b_free!31441 () Bool)

(declare-fun b_next!32145 () Bool)

(assert (=> b!1307905 (= b_free!31441 (not b_next!32145))))

(declare-fun tp!381513 () Bool)

(declare-fun b_and!87341 () Bool)

(assert (=> b!1307905 (= tp!381513 b_and!87341)))

(declare-fun b!1307903 () Bool)

(declare-fun b_free!31443 () Bool)

(declare-fun b_next!32147 () Bool)

(assert (=> b!1307903 (= b_free!31443 (not b_next!32147))))

(declare-fun tp!381512 () Bool)

(declare-fun b_and!87343 () Bool)

(assert (=> b!1307903 (= tp!381512 b_and!87343)))

(declare-fun b_free!31445 () Bool)

(declare-fun b_next!32149 () Bool)

(assert (=> b!1307903 (= b_free!31445 (not b_next!32149))))

(declare-fun tp!381515 () Bool)

(declare-fun b_and!87345 () Bool)

(assert (=> b!1307903 (= tp!381515 b_and!87345)))

(declare-fun b!1307921 () Bool)

(assert (=> b!1307921 true))

(assert (=> b!1307921 true))

(declare-fun b!1307922 () Bool)

(assert (=> b!1307922 true))

(declare-fun b!1307933 () Bool)

(assert (=> b!1307933 true))

(declare-fun b!1307902 () Bool)

(declare-fun res!586729 () Bool)

(declare-fun e!838761 () Bool)

(assert (=> b!1307902 (=> (not res!586729) (not e!838761))))

(declare-datatypes ((List!13296 0))(
  ( (Nil!13230) (Cons!13230 (h!18631 (_ BitVec 16)) (t!117919 List!13296)) )
))
(declare-datatypes ((TokenValue!2379 0))(
  ( (FloatLiteralValue!4758 (text!17098 List!13296)) (TokenValueExt!2378 (__x!8587 Int)) (Broken!11895 (value!74843 List!13296)) (Object!2444) (End!2379) (Def!2379) (Underscore!2379) (Match!2379) (Else!2379) (Error!2379) (Case!2379) (If!2379) (Extends!2379) (Abstract!2379) (Class!2379) (Val!2379) (DelimiterValue!4758 (del!2439 List!13296)) (KeywordValue!2385 (value!74844 List!13296)) (CommentValue!4758 (value!74845 List!13296)) (WhitespaceValue!4758 (value!74846 List!13296)) (IndentationValue!2379 (value!74847 List!13296)) (String!16130) (Int32!2379) (Broken!11896 (value!74848 List!13296)) (Boolean!2380) (Unit!19303) (OperatorValue!2382 (op!2439 List!13296)) (IdentifierValue!4758 (value!74849 List!13296)) (IdentifierValue!4759 (value!74850 List!13296)) (WhitespaceValue!4759 (value!74851 List!13296)) (True!4758) (False!4758) (Broken!11897 (value!74852 List!13296)) (Broken!11898 (value!74853 List!13296)) (True!4759) (RightBrace!2379) (RightBracket!2379) (Colon!2379) (Null!2379) (Comma!2379) (LeftBracket!2379) (False!4759) (LeftBrace!2379) (ImaginaryLiteralValue!2379 (text!17099 List!13296)) (StringLiteralValue!7137 (value!74854 List!13296)) (EOFValue!2379 (value!74855 List!13296)) (IdentValue!2379 (value!74856 List!13296)) (DelimiterValue!4759 (value!74857 List!13296)) (DedentValue!2379 (value!74858 List!13296)) (NewLineValue!2379 (value!74859 List!13296)) (IntegerValue!7137 (value!74860 (_ BitVec 32)) (text!17100 List!13296)) (IntegerValue!7138 (value!74861 Int) (text!17101 List!13296)) (Times!2379) (Or!2379) (Equal!2379) (Minus!2379) (Broken!11899 (value!74862 List!13296)) (And!2379) (Div!2379) (LessEqual!2379) (Mod!2379) (Concat!5982) (Not!2379) (Plus!2379) (SpaceValue!2379 (value!74863 List!13296)) (IntegerValue!7139 (value!74864 Int) (text!17102 List!13296)) (StringLiteralValue!7138 (text!17103 List!13296)) (FloatLiteralValue!4759 (text!17104 List!13296)) (BytesLiteralValue!2379 (value!74865 List!13296)) (CommentValue!4759 (value!74866 List!13296)) (StringLiteralValue!7139 (value!74867 List!13296)) (ErrorTokenValue!2379 (msg!2440 List!13296)) )
))
(declare-datatypes ((C!7496 0))(
  ( (C!7497 (val!4308 Int)) )
))
(declare-datatypes ((List!13297 0))(
  ( (Nil!13231) (Cons!13231 (h!18632 C!7496) (t!117920 List!13297)) )
))
(declare-datatypes ((IArray!8701 0))(
  ( (IArray!8702 (innerList!4408 List!13297)) )
))
(declare-datatypes ((String!16131 0))(
  ( (String!16132 (value!74868 String)) )
))
(declare-datatypes ((Conc!4348 0))(
  ( (Node!4348 (left!11378 Conc!4348) (right!11708 Conc!4348) (csize!8926 Int) (cheight!4559 Int)) (Leaf!6689 (xs!7063 IArray!8701) (csize!8927 Int)) (Empty!4348) )
))
(declare-datatypes ((BalanceConc!8636 0))(
  ( (BalanceConc!8637 (c!214780 Conc!4348)) )
))
(declare-datatypes ((Regex!3603 0))(
  ( (ElementMatch!3603 (c!214781 C!7496)) (Concat!5983 (regOne!7718 Regex!3603) (regTwo!7718 Regex!3603)) (EmptyExpr!3603) (Star!3603 (reg!3932 Regex!3603)) (EmptyLang!3603) (Union!3603 (regOne!7719 Regex!3603) (regTwo!7719 Regex!3603)) )
))
(declare-datatypes ((TokenValueInjection!4418 0))(
  ( (TokenValueInjection!4419 (toValue!3508 Int) (toChars!3367 Int)) )
))
(declare-datatypes ((Rule!4378 0))(
  ( (Rule!4379 (regex!2289 Regex!3603) (tag!2551 String!16131) (isSeparator!2289 Bool) (transformation!2289 TokenValueInjection!4418)) )
))
(declare-datatypes ((Token!4240 0))(
  ( (Token!4241 (value!74869 TokenValue!2379) (rule!4028 Rule!4378) (size!10758 Int) (originalCharacters!3151 List!13297)) )
))
(declare-fun t1!34 () Token!4240)

(declare-fun t2!34 () Token!4240)

(assert (=> b!1307902 (= res!586729 (not (= (isSeparator!2289 (rule!4028 t1!34)) (isSeparator!2289 (rule!4028 t2!34)))))))

(declare-fun e!838777 () Bool)

(assert (=> b!1307903 (= e!838777 (and tp!381512 tp!381515))))

(declare-fun b!1307904 () Bool)

(declare-fun e!838757 () Bool)

(declare-fun e!838768 () Bool)

(assert (=> b!1307904 (= e!838757 e!838768)))

(declare-fun res!586735 () Bool)

(assert (=> b!1307904 (=> res!586735 e!838768)))

(declare-fun lt!430543 () List!13297)

(declare-fun lt!430552 () List!13297)

(declare-fun ++!3366 (List!13297 List!13297) List!13297)

(declare-fun getSuffix!459 (List!13297 List!13297) List!13297)

(assert (=> b!1307904 (= res!586735 (not (= lt!430543 (++!3366 lt!430552 (getSuffix!459 lt!430543 lt!430552)))))))

(declare-fun lambda!52572 () Int)

(declare-fun pickWitness!66 (Int) List!13297)

(assert (=> b!1307904 (= lt!430543 (pickWitness!66 lambda!52572))))

(declare-fun e!838759 () Bool)

(assert (=> b!1307905 (= e!838759 (and tp!381517 tp!381513))))

(declare-fun e!838775 () Bool)

(assert (=> b!1307907 (= e!838775 (and tp!381511 tp!381516))))

(declare-fun b!1307908 () Bool)

(declare-fun res!586748 () Bool)

(assert (=> b!1307908 (=> (not res!586748) (not e!838761))))

(declare-datatypes ((LexerInterface!1984 0))(
  ( (LexerInterfaceExt!1981 (__x!8588 Int)) (Lexer!1982) )
))
(declare-fun thiss!19762 () LexerInterface!1984)

(declare-datatypes ((List!13298 0))(
  ( (Nil!13232) (Cons!13232 (h!18633 Rule!4378) (t!117921 List!13298)) )
))
(declare-fun rules!2550 () List!13298)

(declare-fun rulesInvariant!1854 (LexerInterface!1984 List!13298) Bool)

(assert (=> b!1307908 (= res!586748 (rulesInvariant!1854 thiss!19762 rules!2550))))

(declare-fun b!1307909 () Bool)

(declare-fun res!586734 () Bool)

(assert (=> b!1307909 (=> (not res!586734) (not e!838761))))

(declare-fun isEmpty!7822 (List!13298) Bool)

(assert (=> b!1307909 (= res!586734 (not (isEmpty!7822 rules!2550)))))

(declare-fun b!1307910 () Bool)

(declare-fun res!586724 () Bool)

(declare-fun e!838764 () Bool)

(assert (=> b!1307910 (=> res!586724 e!838764)))

(declare-datatypes ((List!13299 0))(
  ( (Nil!13233) (Cons!13233 (h!18634 Token!4240) (t!117922 List!13299)) )
))
(declare-datatypes ((IArray!8703 0))(
  ( (IArray!8704 (innerList!4409 List!13299)) )
))
(declare-datatypes ((Conc!4349 0))(
  ( (Node!4349 (left!11379 Conc!4349) (right!11709 Conc!4349) (csize!8928 Int) (cheight!4560 Int)) (Leaf!6690 (xs!7064 IArray!8703) (csize!8929 Int)) (Empty!4349) )
))
(declare-datatypes ((BalanceConc!8638 0))(
  ( (BalanceConc!8639 (c!214782 Conc!4349)) )
))
(declare-datatypes ((tuple2!12830 0))(
  ( (tuple2!12831 (_1!7301 BalanceConc!8638) (_2!7301 BalanceConc!8636)) )
))
(declare-fun lt!430545 () tuple2!12830)

(declare-fun isEmpty!7823 (BalanceConc!8636) Bool)

(assert (=> b!1307910 (= res!586724 (not (isEmpty!7823 (_2!7301 lt!430545))))))

(declare-fun b!1307911 () Bool)

(declare-fun res!586732 () Bool)

(declare-fun e!838770 () Bool)

(assert (=> b!1307911 (=> (not res!586732) (not e!838770))))

(declare-fun separableTokensPredicate!267 (LexerInterface!1984 Token!4240 Token!4240 List!13298) Bool)

(assert (=> b!1307911 (= res!586732 (not (separableTokensPredicate!267 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1307912 () Bool)

(declare-fun e!838762 () Bool)

(declare-fun e!838765 () Bool)

(assert (=> b!1307912 (= e!838762 e!838765)))

(declare-fun res!586742 () Bool)

(assert (=> b!1307912 (=> res!586742 e!838765)))

(declare-fun lambda!52573 () Int)

(declare-fun lt!430544 () Regex!3603)

(declare-datatypes ((List!13300 0))(
  ( (Nil!13234) (Cons!13234 (h!18635 Regex!3603) (t!117923 List!13300)) )
))
(declare-fun contains!2277 (List!13300 Regex!3603) Bool)

(declare-fun map!2900 (List!13298 Int) List!13300)

(assert (=> b!1307912 (= res!586742 (not (contains!2277 (map!2900 rules!2550 lambda!52573) lt!430544)))))

(declare-fun lambda!52574 () Int)

(declare-fun getWitness!172 (List!13300 Int) Regex!3603)

(assert (=> b!1307912 (= lt!430544 (getWitness!172 (map!2900 rules!2550 lambda!52573) lambda!52574))))

(declare-fun b!1307913 () Bool)

(declare-fun res!586727 () Bool)

(assert (=> b!1307913 (=> res!586727 e!838764)))

(declare-fun lt!430537 () List!13297)

(declare-datatypes ((tuple2!12832 0))(
  ( (tuple2!12833 (_1!7302 Token!4240) (_2!7302 List!13297)) )
))
(declare-datatypes ((Option!2554 0))(
  ( (None!2553) (Some!2553 (v!21059 tuple2!12832)) )
))
(declare-fun maxPrefix!994 (LexerInterface!1984 List!13298 List!13297) Option!2554)

(assert (=> b!1307913 (= res!586727 (not (= (maxPrefix!994 thiss!19762 rules!2550 lt!430537) (Some!2553 (tuple2!12833 t1!34 Nil!13231)))))))

(declare-fun b!1307914 () Bool)

(declare-fun tp!381518 () Bool)

(declare-fun e!838778 () Bool)

(declare-fun inv!17619 (String!16131) Bool)

(declare-fun inv!17622 (TokenValueInjection!4418) Bool)

(assert (=> b!1307914 (= e!838778 (and tp!381518 (inv!17619 (tag!2551 (rule!4028 t1!34))) (inv!17622 (transformation!2289 (rule!4028 t1!34))) e!838759))))

(declare-fun b!1307915 () Bool)

(declare-fun res!586740 () Bool)

(assert (=> b!1307915 (=> (not res!586740) (not e!838770))))

(declare-fun sepAndNonSepRulesDisjointChars!662 (List!13298 List!13298) Bool)

(assert (=> b!1307915 (= res!586740 (sepAndNonSepRulesDisjointChars!662 rules!2550 rules!2550))))

(declare-fun b!1307916 () Bool)

(declare-fun res!586745 () Bool)

(declare-fun e!838756 () Bool)

(assert (=> b!1307916 (=> res!586745 e!838756)))

(declare-fun lt!430541 () C!7496)

(declare-fun contains!2278 (List!13297 C!7496) Bool)

(assert (=> b!1307916 (= res!586745 (not (contains!2278 lt!430543 lt!430541)))))

(declare-fun b!1307917 () Bool)

(declare-fun e!838758 () Bool)

(declare-fun e!838779 () Bool)

(declare-fun tp!381509 () Bool)

(assert (=> b!1307917 (= e!838758 (and e!838779 tp!381509))))

(declare-fun b!1307918 () Bool)

(declare-fun res!586746 () Bool)

(declare-fun e!838763 () Bool)

(assert (=> b!1307918 (=> res!586746 e!838763)))

(declare-fun lt!430553 () tuple2!12830)

(assert (=> b!1307918 (= res!586746 (not (isEmpty!7823 (_2!7301 lt!430553))))))

(declare-fun b!1307919 () Bool)

(declare-fun e!838760 () Bool)

(assert (=> b!1307919 (= e!838760 e!838764)))

(declare-fun res!586743 () Bool)

(assert (=> b!1307919 (=> res!586743 e!838764)))

(declare-fun lt!430539 () List!13299)

(declare-fun list!4962 (BalanceConc!8638) List!13299)

(assert (=> b!1307919 (= res!586743 (not (= (list!4962 (_1!7301 lt!430545)) lt!430539)))))

(assert (=> b!1307919 (= lt!430539 (Cons!13233 t1!34 Nil!13233))))

(declare-fun lt!430555 () BalanceConc!8636)

(declare-fun lex!819 (LexerInterface!1984 List!13298 BalanceConc!8636) tuple2!12830)

(assert (=> b!1307919 (= lt!430545 (lex!819 thiss!19762 rules!2550 lt!430555))))

(declare-fun print!758 (LexerInterface!1984 BalanceConc!8638) BalanceConc!8636)

(declare-fun singletonSeq!860 (Token!4240) BalanceConc!8638)

(assert (=> b!1307919 (= lt!430555 (print!758 thiss!19762 (singletonSeq!860 t1!34)))))

(declare-fun lt!430547 () Rule!4378)

(declare-fun lambda!52575 () Int)

(declare-fun getWitness!173 (List!13298 Int) Rule!4378)

(assert (=> b!1307919 (= lt!430547 (getWitness!173 rules!2550 lambda!52575))))

(declare-fun b!1307920 () Bool)

(assert (=> b!1307920 (= e!838761 e!838770)))

(declare-fun res!586747 () Bool)

(assert (=> b!1307920 (=> (not res!586747) (not e!838770))))

(declare-fun lt!430549 () BalanceConc!8636)

(declare-fun size!10759 (BalanceConc!8636) Int)

(assert (=> b!1307920 (= res!586747 (> (size!10759 lt!430549) 0))))

(declare-fun charsOf!1261 (Token!4240) BalanceConc!8636)

(assert (=> b!1307920 (= lt!430549 (charsOf!1261 t2!34))))

(declare-fun e!838776 () Bool)

(assert (=> b!1307921 (= e!838776 (not e!838757))))

(declare-fun res!586739 () Bool)

(assert (=> b!1307921 (=> res!586739 e!838757)))

(declare-fun Exists!761 (Int) Bool)

(assert (=> b!1307921 (= res!586739 (not (Exists!761 lambda!52572)))))

(assert (=> b!1307921 (Exists!761 lambda!52572)))

(declare-datatypes ((Unit!19304 0))(
  ( (Unit!19305) )
))
(declare-fun lt!430556 () Unit!19304)

(declare-fun lt!430550 () Regex!3603)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!79 (Regex!3603 List!13297) Unit!19304)

(assert (=> b!1307921 (= lt!430556 (lemmaPrefixMatchThenExistsStringThatMatches!79 lt!430550 lt!430552))))

(declare-fun b!1307906 () Bool)

(assert (=> b!1307906 (= e!838763 true)))

(declare-fun lt!430548 () List!13297)

(declare-fun lt!430542 () BalanceConc!8636)

(declare-fun list!4963 (BalanceConc!8636) List!13297)

(assert (=> b!1307906 (= lt!430548 (list!4963 lt!430542))))

(declare-fun res!586736 () Bool)

(assert (=> start!115466 (=> (not res!586736) (not e!838761))))

(get-info :version)

(assert (=> start!115466 (= res!586736 ((_ is Lexer!1982) thiss!19762))))

(assert (=> start!115466 e!838761))

(assert (=> start!115466 true))

(assert (=> start!115466 e!838758))

(declare-fun e!838774 () Bool)

(declare-fun inv!17623 (Token!4240) Bool)

(assert (=> start!115466 (and (inv!17623 t1!34) e!838774)))

(declare-fun e!838771 () Bool)

(assert (=> start!115466 (and (inv!17623 t2!34) e!838771)))

(assert (=> b!1307922 (= e!838756 e!838762)))

(declare-fun res!586731 () Bool)

(assert (=> b!1307922 (=> res!586731 e!838762)))

(declare-fun exists!280 (List!13300 Int) Bool)

(assert (=> b!1307922 (= res!586731 (not (exists!280 (map!2900 rules!2550 lambda!52573) lambda!52574)))))

(declare-fun lt!430554 () List!13300)

(assert (=> b!1307922 (exists!280 lt!430554 lambda!52574)))

(declare-fun lt!430551 () Unit!19304)

(declare-fun matchRGenUnionSpec!40 (Regex!3603 List!13300 List!13297) Unit!19304)

(assert (=> b!1307922 (= lt!430551 (matchRGenUnionSpec!40 lt!430550 lt!430554 lt!430543))))

(assert (=> b!1307922 (= lt!430554 (map!2900 rules!2550 lambda!52573))))

(declare-fun b!1307923 () Bool)

(assert (=> b!1307923 (= e!838770 e!838776)))

(declare-fun res!586726 () Bool)

(assert (=> b!1307923 (=> (not res!586726) (not e!838776))))

(declare-fun prefixMatch!116 (Regex!3603 List!13297) Bool)

(assert (=> b!1307923 (= res!586726 (prefixMatch!116 lt!430550 lt!430552))))

(declare-fun rulesRegex!174 (LexerInterface!1984 List!13298) Regex!3603)

(assert (=> b!1307923 (= lt!430550 (rulesRegex!174 thiss!19762 rules!2550))))

(assert (=> b!1307923 (= lt!430552 (++!3366 lt!430537 (Cons!13231 lt!430541 Nil!13231)))))

(declare-fun apply!2969 (BalanceConc!8636 Int) C!7496)

(assert (=> b!1307923 (= lt!430541 (apply!2969 lt!430549 0))))

(declare-fun lt!430540 () BalanceConc!8636)

(assert (=> b!1307923 (= lt!430537 (list!4963 lt!430540))))

(assert (=> b!1307923 (= lt!430540 (charsOf!1261 t1!34))))

(declare-fun b!1307924 () Bool)

(declare-fun tp!381507 () Bool)

(declare-fun e!838767 () Bool)

(assert (=> b!1307924 (= e!838767 (and tp!381507 (inv!17619 (tag!2551 (rule!4028 t2!34))) (inv!17622 (transformation!2289 (rule!4028 t2!34))) e!838777))))

(declare-fun b!1307925 () Bool)

(assert (=> b!1307925 (= e!838764 e!838763)))

(declare-fun res!586725 () Bool)

(assert (=> b!1307925 (=> res!586725 e!838763)))

(assert (=> b!1307925 (= res!586725 (not (= (list!4962 (_1!7301 lt!430553)) (Cons!13233 t2!34 Nil!13233))))))

(assert (=> b!1307925 (= lt!430553 (lex!819 thiss!19762 rules!2550 lt!430542))))

(assert (=> b!1307925 (= lt!430542 (print!758 thiss!19762 (singletonSeq!860 t2!34)))))

(declare-fun b!1307926 () Bool)

(declare-fun tp!381508 () Bool)

(declare-fun inv!21 (TokenValue!2379) Bool)

(assert (=> b!1307926 (= e!838771 (and (inv!21 (value!74869 t2!34)) e!838767 tp!381508))))

(declare-fun b!1307927 () Bool)

(declare-fun res!586723 () Bool)

(assert (=> b!1307927 (=> res!586723 e!838756)))

(assert (=> b!1307927 (= res!586723 (not (contains!2278 lt!430552 lt!430541)))))

(declare-fun b!1307928 () Bool)

(declare-fun res!586738 () Bool)

(assert (=> b!1307928 (=> (not res!586738) (not e!838761))))

(declare-fun rulesProduceIndividualToken!953 (LexerInterface!1984 List!13298 Token!4240) Bool)

(assert (=> b!1307928 (= res!586738 (rulesProduceIndividualToken!953 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1307929 () Bool)

(declare-fun res!586741 () Bool)

(assert (=> b!1307929 (=> res!586741 e!838756)))

(declare-fun lt!430546 () C!7496)

(assert (=> b!1307929 (= res!586741 (not (contains!2278 lt!430543 lt!430546)))))

(declare-fun b!1307930 () Bool)

(assert (=> b!1307930 (= e!838768 e!838756)))

(declare-fun res!586722 () Bool)

(assert (=> b!1307930 (=> res!586722 e!838756)))

(assert (=> b!1307930 (= res!586722 (not (contains!2278 lt!430552 lt!430546)))))

(assert (=> b!1307930 (= lt!430546 (apply!2969 lt!430540 0))))

(declare-fun b!1307931 () Bool)

(declare-fun tp!381510 () Bool)

(assert (=> b!1307931 (= e!838779 (and tp!381510 (inv!17619 (tag!2551 (h!18633 rules!2550))) (inv!17622 (transformation!2289 (h!18633 rules!2550))) e!838775))))

(declare-fun b!1307932 () Bool)

(declare-fun res!586744 () Bool)

(assert (=> b!1307932 (=> res!586744 e!838764)))

(declare-fun contains!2279 (List!13298 Rule!4378) Bool)

(assert (=> b!1307932 (= res!586744 (not (contains!2279 rules!2550 (rule!4028 t1!34))))))

(assert (=> b!1307933 (= e!838765 e!838760)))

(declare-fun res!586737 () Bool)

(assert (=> b!1307933 (=> res!586737 e!838760)))

(declare-fun exists!281 (List!13298 Int) Bool)

(assert (=> b!1307933 (= res!586737 (not (exists!281 rules!2550 lambda!52575)))))

(assert (=> b!1307933 (exists!281 rules!2550 lambda!52575)))

(declare-fun lt!430538 () Unit!19304)

(declare-fun lemmaMapContains!32 (List!13298 Int Regex!3603) Unit!19304)

(assert (=> b!1307933 (= lt!430538 (lemmaMapContains!32 rules!2550 lambda!52573 lt!430544))))

(declare-fun b!1307934 () Bool)

(declare-fun res!586728 () Bool)

(assert (=> b!1307934 (=> (not res!586728) (not e!838761))))

(assert (=> b!1307934 (= res!586728 (rulesProduceIndividualToken!953 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1307935 () Bool)

(declare-fun res!586733 () Bool)

(assert (=> b!1307935 (=> res!586733 e!838756)))

(declare-fun matchR!1605 (Regex!3603 List!13297) Bool)

(assert (=> b!1307935 (= res!586733 (not (matchR!1605 lt!430550 lt!430543)))))

(declare-fun b!1307936 () Bool)

(declare-fun res!586730 () Bool)

(assert (=> b!1307936 (=> res!586730 e!838764)))

(declare-datatypes ((tuple2!12834 0))(
  ( (tuple2!12835 (_1!7303 List!13299) (_2!7303 List!13297)) )
))
(declare-fun lexList!522 (LexerInterface!1984 List!13298 List!13297) tuple2!12834)

(assert (=> b!1307936 (= res!586730 (not (= (lexList!522 thiss!19762 rules!2550 (list!4963 lt!430555)) (tuple2!12835 lt!430539 Nil!13231))))))

(declare-fun b!1307937 () Bool)

(declare-fun tp!381514 () Bool)

(assert (=> b!1307937 (= e!838774 (and (inv!21 (value!74869 t1!34)) e!838778 tp!381514))))

(assert (= (and start!115466 res!586736) b!1307909))

(assert (= (and b!1307909 res!586734) b!1307908))

(assert (= (and b!1307908 res!586748) b!1307928))

(assert (= (and b!1307928 res!586738) b!1307934))

(assert (= (and b!1307934 res!586728) b!1307902))

(assert (= (and b!1307902 res!586729) b!1307920))

(assert (= (and b!1307920 res!586747) b!1307915))

(assert (= (and b!1307915 res!586740) b!1307911))

(assert (= (and b!1307911 res!586732) b!1307923))

(assert (= (and b!1307923 res!586726) b!1307921))

(assert (= (and b!1307921 (not res!586739)) b!1307904))

(assert (= (and b!1307904 (not res!586735)) b!1307930))

(assert (= (and b!1307930 (not res!586722)) b!1307929))

(assert (= (and b!1307929 (not res!586741)) b!1307927))

(assert (= (and b!1307927 (not res!586723)) b!1307916))

(assert (= (and b!1307916 (not res!586745)) b!1307935))

(assert (= (and b!1307935 (not res!586733)) b!1307922))

(assert (= (and b!1307922 (not res!586731)) b!1307912))

(assert (= (and b!1307912 (not res!586742)) b!1307933))

(assert (= (and b!1307933 (not res!586737)) b!1307919))

(assert (= (and b!1307919 (not res!586743)) b!1307910))

(assert (= (and b!1307910 (not res!586724)) b!1307936))

(assert (= (and b!1307936 (not res!586730)) b!1307913))

(assert (= (and b!1307913 (not res!586727)) b!1307932))

(assert (= (and b!1307932 (not res!586744)) b!1307925))

(assert (= (and b!1307925 (not res!586725)) b!1307918))

(assert (= (and b!1307918 (not res!586746)) b!1307906))

(assert (= b!1307931 b!1307907))

(assert (= b!1307917 b!1307931))

(assert (= (and start!115466 ((_ is Cons!13232) rules!2550)) b!1307917))

(assert (= b!1307914 b!1307905))

(assert (= b!1307937 b!1307914))

(assert (= start!115466 b!1307937))

(assert (= b!1307924 b!1307903))

(assert (= b!1307926 b!1307924))

(assert (= start!115466 b!1307926))

(declare-fun m!1459425 () Bool)

(assert (=> b!1307929 m!1459425))

(declare-fun m!1459427 () Bool)

(assert (=> b!1307910 m!1459427))

(declare-fun m!1459429 () Bool)

(assert (=> b!1307927 m!1459429))

(declare-fun m!1459431 () Bool)

(assert (=> b!1307915 m!1459431))

(declare-fun m!1459433 () Bool)

(assert (=> b!1307928 m!1459433))

(declare-fun m!1459435 () Bool)

(assert (=> b!1307932 m!1459435))

(declare-fun m!1459437 () Bool)

(assert (=> b!1307934 m!1459437))

(declare-fun m!1459439 () Bool)

(assert (=> b!1307918 m!1459439))

(declare-fun m!1459441 () Bool)

(assert (=> b!1307916 m!1459441))

(declare-fun m!1459443 () Bool)

(assert (=> b!1307911 m!1459443))

(declare-fun m!1459445 () Bool)

(assert (=> b!1307919 m!1459445))

(declare-fun m!1459447 () Bool)

(assert (=> b!1307919 m!1459447))

(declare-fun m!1459449 () Bool)

(assert (=> b!1307919 m!1459449))

(assert (=> b!1307919 m!1459447))

(declare-fun m!1459451 () Bool)

(assert (=> b!1307919 m!1459451))

(declare-fun m!1459453 () Bool)

(assert (=> b!1307919 m!1459453))

(declare-fun m!1459455 () Bool)

(assert (=> b!1307924 m!1459455))

(declare-fun m!1459457 () Bool)

(assert (=> b!1307924 m!1459457))

(declare-fun m!1459459 () Bool)

(assert (=> b!1307930 m!1459459))

(declare-fun m!1459461 () Bool)

(assert (=> b!1307930 m!1459461))

(declare-fun m!1459463 () Bool)

(assert (=> b!1307906 m!1459463))

(declare-fun m!1459465 () Bool)

(assert (=> b!1307922 m!1459465))

(assert (=> b!1307922 m!1459465))

(assert (=> b!1307922 m!1459465))

(declare-fun m!1459467 () Bool)

(assert (=> b!1307922 m!1459467))

(declare-fun m!1459469 () Bool)

(assert (=> b!1307922 m!1459469))

(declare-fun m!1459471 () Bool)

(assert (=> b!1307922 m!1459471))

(declare-fun m!1459473 () Bool)

(assert (=> b!1307923 m!1459473))

(declare-fun m!1459475 () Bool)

(assert (=> b!1307923 m!1459475))

(declare-fun m!1459477 () Bool)

(assert (=> b!1307923 m!1459477))

(declare-fun m!1459479 () Bool)

(assert (=> b!1307923 m!1459479))

(declare-fun m!1459481 () Bool)

(assert (=> b!1307923 m!1459481))

(declare-fun m!1459483 () Bool)

(assert (=> b!1307923 m!1459483))

(declare-fun m!1459485 () Bool)

(assert (=> b!1307926 m!1459485))

(assert (=> b!1307912 m!1459465))

(assert (=> b!1307912 m!1459465))

(declare-fun m!1459487 () Bool)

(assert (=> b!1307912 m!1459487))

(assert (=> b!1307912 m!1459465))

(assert (=> b!1307912 m!1459465))

(declare-fun m!1459489 () Bool)

(assert (=> b!1307912 m!1459489))

(declare-fun m!1459491 () Bool)

(assert (=> b!1307936 m!1459491))

(assert (=> b!1307936 m!1459491))

(declare-fun m!1459493 () Bool)

(assert (=> b!1307936 m!1459493))

(declare-fun m!1459495 () Bool)

(assert (=> b!1307914 m!1459495))

(declare-fun m!1459497 () Bool)

(assert (=> b!1307914 m!1459497))

(declare-fun m!1459499 () Bool)

(assert (=> b!1307931 m!1459499))

(declare-fun m!1459501 () Bool)

(assert (=> b!1307931 m!1459501))

(declare-fun m!1459503 () Bool)

(assert (=> b!1307933 m!1459503))

(assert (=> b!1307933 m!1459503))

(declare-fun m!1459505 () Bool)

(assert (=> b!1307933 m!1459505))

(declare-fun m!1459507 () Bool)

(assert (=> b!1307937 m!1459507))

(declare-fun m!1459509 () Bool)

(assert (=> b!1307909 m!1459509))

(declare-fun m!1459511 () Bool)

(assert (=> b!1307925 m!1459511))

(declare-fun m!1459513 () Bool)

(assert (=> b!1307925 m!1459513))

(declare-fun m!1459515 () Bool)

(assert (=> b!1307925 m!1459515))

(assert (=> b!1307925 m!1459515))

(declare-fun m!1459517 () Bool)

(assert (=> b!1307925 m!1459517))

(declare-fun m!1459519 () Bool)

(assert (=> start!115466 m!1459519))

(declare-fun m!1459521 () Bool)

(assert (=> start!115466 m!1459521))

(declare-fun m!1459523 () Bool)

(assert (=> b!1307904 m!1459523))

(assert (=> b!1307904 m!1459523))

(declare-fun m!1459525 () Bool)

(assert (=> b!1307904 m!1459525))

(declare-fun m!1459527 () Bool)

(assert (=> b!1307904 m!1459527))

(declare-fun m!1459529 () Bool)

(assert (=> b!1307908 m!1459529))

(declare-fun m!1459531 () Bool)

(assert (=> b!1307913 m!1459531))

(declare-fun m!1459533 () Bool)

(assert (=> b!1307921 m!1459533))

(assert (=> b!1307921 m!1459533))

(declare-fun m!1459535 () Bool)

(assert (=> b!1307921 m!1459535))

(declare-fun m!1459537 () Bool)

(assert (=> b!1307935 m!1459537))

(declare-fun m!1459539 () Bool)

(assert (=> b!1307920 m!1459539))

(declare-fun m!1459541 () Bool)

(assert (=> b!1307920 m!1459541))

(check-sat (not b!1307921) (not b!1307923) (not b_next!32149) (not b!1307915) (not b!1307933) (not b!1307913) b_and!87337 (not b!1307918) (not b!1307909) b_and!87339 (not b!1307920) (not b_next!32147) (not b!1307931) (not b!1307934) (not b!1307937) (not b!1307910) (not b!1307912) (not b!1307916) (not b!1307936) (not b!1307911) (not start!115466) (not b!1307906) (not b!1307917) (not b!1307904) (not b!1307914) (not b_next!32145) (not b!1307908) b_and!87345 b_and!87335 (not b!1307927) b_and!87341 (not b!1307919) (not b!1307930) (not b!1307928) (not b_next!32139) b_and!87343 (not b!1307924) (not b!1307929) (not b_next!32141) (not b!1307925) (not b!1307926) (not b!1307922) (not b_next!32143) (not b!1307935) (not b!1307932))
(check-sat (not b_next!32145) (not b_next!32149) b_and!87341 b_and!87337 (not b_next!32141) b_and!87339 (not b_next!32143) (not b_next!32147) b_and!87335 b_and!87345 (not b_next!32139) b_and!87343)
