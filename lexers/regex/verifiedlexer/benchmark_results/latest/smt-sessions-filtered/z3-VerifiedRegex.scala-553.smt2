; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15274 () Bool)

(assert start!15274)

(declare-fun b!144789 () Bool)

(declare-fun b_free!5049 () Bool)

(declare-fun b_next!5049 () Bool)

(assert (=> b!144789 (= b_free!5049 (not b_next!5049))))

(declare-fun tp!76385 () Bool)

(declare-fun b_and!7773 () Bool)

(assert (=> b!144789 (= tp!76385 b_and!7773)))

(declare-fun b_free!5051 () Bool)

(declare-fun b_next!5051 () Bool)

(assert (=> b!144789 (= b_free!5051 (not b_next!5051))))

(declare-fun tp!76387 () Bool)

(declare-fun b_and!7775 () Bool)

(assert (=> b!144789 (= tp!76387 b_and!7775)))

(declare-fun b!144799 () Bool)

(declare-fun b_free!5053 () Bool)

(declare-fun b_next!5053 () Bool)

(assert (=> b!144799 (= b_free!5053 (not b_next!5053))))

(declare-fun tp!76386 () Bool)

(declare-fun b_and!7777 () Bool)

(assert (=> b!144799 (= tp!76386 b_and!7777)))

(declare-fun b_free!5055 () Bool)

(declare-fun b_next!5055 () Bool)

(assert (=> b!144799 (= b_free!5055 (not b_next!5055))))

(declare-fun tp!76389 () Bool)

(declare-fun b_and!7779 () Bool)

(assert (=> b!144799 (= tp!76389 b_and!7779)))

(declare-fun b!144790 () Bool)

(declare-fun b_free!5057 () Bool)

(declare-fun b_next!5057 () Bool)

(assert (=> b!144790 (= b_free!5057 (not b_next!5057))))

(declare-fun tp!76383 () Bool)

(declare-fun b_and!7781 () Bool)

(assert (=> b!144790 (= tp!76383 b_and!7781)))

(declare-fun b_free!5059 () Bool)

(declare-fun b_next!5059 () Bool)

(assert (=> b!144790 (= b_free!5059 (not b_next!5059))))

(declare-fun tp!76382 () Bool)

(declare-fun b_and!7783 () Bool)

(assert (=> b!144790 (= tp!76382 b_and!7783)))

(declare-fun e!85883 () Bool)

(assert (=> b!144789 (= e!85883 (and tp!76385 tp!76387))))

(declare-fun res!66831 () Bool)

(declare-fun e!85891 () Bool)

(assert (=> start!15274 (=> (not res!66831) (not e!85891))))

(declare-datatypes ((LexerInterface!315 0))(
  ( (LexerInterfaceExt!312 (__x!2389 Int)) (Lexer!313) )
))
(declare-fun thiss!17480 () LexerInterface!315)

(get-info :version)

(assert (=> start!15274 (= res!66831 ((_ is Lexer!313) thiss!17480))))

(assert (=> start!15274 e!85891))

(assert (=> start!15274 true))

(declare-fun e!85896 () Bool)

(assert (=> start!15274 e!85896))

(declare-datatypes ((List!2517 0))(
  ( (Nil!2507) (Cons!2507 (h!7904 (_ BitVec 16)) (t!24017 List!2517)) )
))
(declare-datatypes ((TokenValue!451 0))(
  ( (FloatLiteralValue!902 (text!3602 List!2517)) (TokenValueExt!450 (__x!2390 Int)) (Broken!2255 (value!16516 List!2517)) (Object!460) (End!451) (Def!451) (Underscore!451) (Match!451) (Else!451) (Error!451) (Case!451) (If!451) (Extends!451) (Abstract!451) (Class!451) (Val!451) (DelimiterValue!902 (del!511 List!2517)) (KeywordValue!457 (value!16517 List!2517)) (CommentValue!902 (value!16518 List!2517)) (WhitespaceValue!902 (value!16519 List!2517)) (IndentationValue!451 (value!16520 List!2517)) (String!3334) (Int32!451) (Broken!2256 (value!16521 List!2517)) (Boolean!452) (Unit!1855) (OperatorValue!454 (op!511 List!2517)) (IdentifierValue!902 (value!16522 List!2517)) (IdentifierValue!903 (value!16523 List!2517)) (WhitespaceValue!903 (value!16524 List!2517)) (True!902) (False!902) (Broken!2257 (value!16525 List!2517)) (Broken!2258 (value!16526 List!2517)) (True!903) (RightBrace!451) (RightBracket!451) (Colon!451) (Null!451) (Comma!451) (LeftBracket!451) (False!903) (LeftBrace!451) (ImaginaryLiteralValue!451 (text!3603 List!2517)) (StringLiteralValue!1353 (value!16527 List!2517)) (EOFValue!451 (value!16528 List!2517)) (IdentValue!451 (value!16529 List!2517)) (DelimiterValue!903 (value!16530 List!2517)) (DedentValue!451 (value!16531 List!2517)) (NewLineValue!451 (value!16532 List!2517)) (IntegerValue!1353 (value!16533 (_ BitVec 32)) (text!3604 List!2517)) (IntegerValue!1354 (value!16534 Int) (text!3605 List!2517)) (Times!451) (Or!451) (Equal!451) (Minus!451) (Broken!2259 (value!16535 List!2517)) (And!451) (Div!451) (LessEqual!451) (Mod!451) (Concat!1104) (Not!451) (Plus!451) (SpaceValue!451 (value!16536 List!2517)) (IntegerValue!1355 (value!16537 Int) (text!3606 List!2517)) (StringLiteralValue!1354 (text!3607 List!2517)) (FloatLiteralValue!903 (text!3608 List!2517)) (BytesLiteralValue!451 (value!16538 List!2517)) (CommentValue!903 (value!16539 List!2517)) (StringLiteralValue!1355 (value!16540 List!2517)) (ErrorTokenValue!451 (msg!512 List!2517)) )
))
(declare-datatypes ((C!2228 0))(
  ( (C!2229 (val!1000 Int)) )
))
(declare-datatypes ((List!2518 0))(
  ( (Nil!2508) (Cons!2508 (h!7905 C!2228) (t!24018 List!2518)) )
))
(declare-datatypes ((IArray!1361 0))(
  ( (IArray!1362 (innerList!738 List!2518)) )
))
(declare-datatypes ((Conc!680 0))(
  ( (Node!680 (left!1893 Conc!680) (right!2223 Conc!680) (csize!1590 Int) (cheight!891 Int)) (Leaf!1234 (xs!3275 IArray!1361) (csize!1591 Int)) (Empty!680) )
))
(declare-datatypes ((BalanceConc!1368 0))(
  ( (BalanceConc!1369 (c!29663 Conc!680)) )
))
(declare-datatypes ((TokenValueInjection!674 0))(
  ( (TokenValueInjection!675 (toValue!1052 Int) (toChars!911 Int)) )
))
(declare-datatypes ((String!3335 0))(
  ( (String!3336 (value!16541 String)) )
))
(declare-datatypes ((Regex!653 0))(
  ( (ElementMatch!653 (c!29664 C!2228)) (Concat!1105 (regOne!1818 Regex!653) (regTwo!1818 Regex!653)) (EmptyExpr!653) (Star!653 (reg!982 Regex!653)) (EmptyLang!653) (Union!653 (regOne!1819 Regex!653) (regTwo!1819 Regex!653)) )
))
(declare-datatypes ((Rule!658 0))(
  ( (Rule!659 (regex!429 Regex!653) (tag!607 String!3335) (isSeparator!429 Bool) (transformation!429 TokenValueInjection!674)) )
))
(declare-datatypes ((Token!602 0))(
  ( (Token!603 (value!16542 TokenValue!451) (rule!936 Rule!658) (size!2164 Int) (originalCharacters!472 List!2518)) )
))
(declare-fun separatorToken!170 () Token!602)

(declare-fun e!85895 () Bool)

(declare-fun inv!3286 (Token!602) Bool)

(assert (=> start!15274 (and (inv!3286 separatorToken!170) e!85895)))

(declare-fun e!85882 () Bool)

(assert (=> start!15274 e!85882))

(declare-fun e!85897 () Bool)

(assert (=> b!144790 (= e!85897 (and tp!76383 tp!76382))))

(declare-datatypes ((List!2519 0))(
  ( (Nil!2509) (Cons!2509 (h!7906 Token!602) (t!24019 List!2519)) )
))
(declare-fun tokens!465 () List!2519)

(declare-fun e!85885 () Bool)

(declare-fun e!85890 () Bool)

(declare-fun b!144791 () Bool)

(declare-fun tp!76390 () Bool)

(declare-fun inv!21 (TokenValue!451) Bool)

(assert (=> b!144791 (= e!85885 (and (inv!21 (value!16542 (h!7906 tokens!465))) e!85890 tp!76390))))

(declare-fun b!144792 () Bool)

(declare-fun e!85893 () Bool)

(assert (=> b!144792 (= e!85891 e!85893)))

(declare-fun res!66835 () Bool)

(assert (=> b!144792 (=> (not res!66835) (not e!85893))))

(declare-datatypes ((IArray!1363 0))(
  ( (IArray!1364 (innerList!739 List!2519)) )
))
(declare-datatypes ((Conc!681 0))(
  ( (Node!681 (left!1894 Conc!681) (right!2224 Conc!681) (csize!1592 Int) (cheight!892 Int)) (Leaf!1235 (xs!3276 IArray!1363) (csize!1593 Int)) (Empty!681) )
))
(declare-datatypes ((BalanceConc!1370 0))(
  ( (BalanceConc!1371 (c!29665 Conc!681)) )
))
(declare-fun lt!41740 () BalanceConc!1370)

(declare-datatypes ((List!2520 0))(
  ( (Nil!2510) (Cons!2510 (h!7907 Rule!658) (t!24020 List!2520)) )
))
(declare-fun rules!1920 () List!2520)

(declare-fun rulesProduceEachTokenIndividually!107 (LexerInterface!315 List!2520 BalanceConc!1370) Bool)

(assert (=> b!144792 (= res!66835 (rulesProduceEachTokenIndividually!107 thiss!17480 rules!1920 lt!41740))))

(declare-fun seqFromList!244 (List!2519) BalanceConc!1370)

(assert (=> b!144792 (= lt!41740 (seqFromList!244 tokens!465))))

(declare-fun b!144793 () Bool)

(declare-fun e!85884 () Bool)

(declare-fun lambda!3516 () Int)

(declare-fun forall!388 (BalanceConc!1370 Int) Bool)

(assert (=> b!144793 (= e!85884 (not (forall!388 lt!41740 lambda!3516)))))

(declare-fun b!144794 () Bool)

(declare-fun res!66828 () Bool)

(assert (=> b!144794 (=> (not res!66828) (not e!85893))))

(declare-fun rulesProduceIndividualToken!64 (LexerInterface!315 List!2520 Token!602) Bool)

(assert (=> b!144794 (= res!66828 (rulesProduceIndividualToken!64 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!144795 () Bool)

(declare-fun res!66827 () Bool)

(assert (=> b!144795 (=> (not res!66827) (not e!85893))))

(declare-fun forall!389 (List!2519 Int) Bool)

(assert (=> b!144795 (= res!66827 (forall!389 tokens!465 lambda!3516))))

(declare-fun b!144796 () Bool)

(declare-fun tp!76391 () Bool)

(declare-fun e!85894 () Bool)

(assert (=> b!144796 (= e!85895 (and (inv!21 (value!16542 separatorToken!170)) e!85894 tp!76391))))

(declare-fun b!144797 () Bool)

(declare-fun res!66830 () Bool)

(assert (=> b!144797 (=> (not res!66830) (not e!85893))))

(assert (=> b!144797 (= res!66830 (isSeparator!429 (rule!936 separatorToken!170)))))

(declare-fun tp!76381 () Bool)

(declare-fun b!144798 () Bool)

(declare-fun inv!3283 (String!3335) Bool)

(declare-fun inv!3287 (TokenValueInjection!674) Bool)

(assert (=> b!144798 (= e!85890 (and tp!76381 (inv!3283 (tag!607 (rule!936 (h!7906 tokens!465)))) (inv!3287 (transformation!429 (rule!936 (h!7906 tokens!465)))) e!85897))))

(declare-fun e!85889 () Bool)

(assert (=> b!144799 (= e!85889 (and tp!76386 tp!76389))))

(declare-fun b!144800 () Bool)

(declare-fun res!66829 () Bool)

(assert (=> b!144800 (=> (not res!66829) (not e!85891))))

(declare-fun isEmpty!968 (List!2520) Bool)

(assert (=> b!144800 (= res!66829 (not (isEmpty!968 rules!1920)))))

(declare-fun b!144801 () Bool)

(declare-fun tp!76392 () Bool)

(assert (=> b!144801 (= e!85894 (and tp!76392 (inv!3283 (tag!607 (rule!936 separatorToken!170))) (inv!3287 (transformation!429 (rule!936 separatorToken!170))) e!85883))))

(declare-fun b!144802 () Bool)

(declare-fun res!66832 () Bool)

(assert (=> b!144802 (=> (not res!66832) (not e!85893))))

(assert (=> b!144802 (= res!66832 ((_ is Cons!2509) tokens!465))))

(declare-fun b!144803 () Bool)

(declare-fun e!85888 () Bool)

(declare-fun tp!76388 () Bool)

(assert (=> b!144803 (= e!85896 (and e!85888 tp!76388))))

(declare-fun b!144804 () Bool)

(declare-fun res!66834 () Bool)

(assert (=> b!144804 (=> (not res!66834) (not e!85891))))

(declare-fun rulesInvariant!281 (LexerInterface!315 List!2520) Bool)

(assert (=> b!144804 (= res!66834 (rulesInvariant!281 thiss!17480 rules!1920))))

(declare-fun b!144805 () Bool)

(declare-fun res!66833 () Bool)

(assert (=> b!144805 (=> (not res!66833) (not e!85893))))

(declare-fun sepAndNonSepRulesDisjointChars!18 (List!2520 List!2520) Bool)

(assert (=> b!144805 (= res!66833 (sepAndNonSepRulesDisjointChars!18 rules!1920 rules!1920))))

(declare-fun tp!76393 () Bool)

(declare-fun b!144806 () Bool)

(assert (=> b!144806 (= e!85882 (and (inv!3286 (h!7906 tokens!465)) e!85885 tp!76393))))

(declare-fun tp!76384 () Bool)

(declare-fun b!144807 () Bool)

(assert (=> b!144807 (= e!85888 (and tp!76384 (inv!3283 (tag!607 (h!7907 rules!1920))) (inv!3287 (transformation!429 (h!7907 rules!1920))) e!85889))))

(declare-fun b!144808 () Bool)

(assert (=> b!144808 (= e!85893 e!85884)))

(declare-fun res!66836 () Bool)

(assert (=> b!144808 (=> (not res!66836) (not e!85884))))

(declare-fun size!2165 (BalanceConc!1370) Int)

(assert (=> b!144808 (= res!66836 (<= 0 (size!2165 lt!41740)))))

(declare-fun lt!41739 () List!2518)

(declare-fun printWithSeparatorTokenWhenNeededList!8 (LexerInterface!315 List!2520 List!2519 Token!602) List!2518)

(assert (=> b!144808 (= lt!41739 (printWithSeparatorTokenWhenNeededList!8 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (= (and start!15274 res!66831) b!144800))

(assert (= (and b!144800 res!66829) b!144804))

(assert (= (and b!144804 res!66834) b!144792))

(assert (= (and b!144792 res!66835) b!144794))

(assert (= (and b!144794 res!66828) b!144797))

(assert (= (and b!144797 res!66830) b!144795))

(assert (= (and b!144795 res!66827) b!144805))

(assert (= (and b!144805 res!66833) b!144802))

(assert (= (and b!144802 res!66832) b!144808))

(assert (= (and b!144808 res!66836) b!144793))

(assert (= b!144807 b!144799))

(assert (= b!144803 b!144807))

(assert (= (and start!15274 ((_ is Cons!2510) rules!1920)) b!144803))

(assert (= b!144801 b!144789))

(assert (= b!144796 b!144801))

(assert (= start!15274 b!144796))

(assert (= b!144798 b!144790))

(assert (= b!144791 b!144798))

(assert (= b!144806 b!144791))

(assert (= (and start!15274 ((_ is Cons!2509) tokens!465)) b!144806))

(declare-fun m!127427 () Bool)

(assert (=> b!144805 m!127427))

(declare-fun m!127429 () Bool)

(assert (=> b!144794 m!127429))

(declare-fun m!127431 () Bool)

(assert (=> start!15274 m!127431))

(declare-fun m!127433 () Bool)

(assert (=> b!144808 m!127433))

(declare-fun m!127435 () Bool)

(assert (=> b!144808 m!127435))

(declare-fun m!127437 () Bool)

(assert (=> b!144800 m!127437))

(declare-fun m!127439 () Bool)

(assert (=> b!144806 m!127439))

(declare-fun m!127441 () Bool)

(assert (=> b!144798 m!127441))

(declare-fun m!127443 () Bool)

(assert (=> b!144798 m!127443))

(declare-fun m!127445 () Bool)

(assert (=> b!144793 m!127445))

(declare-fun m!127447 () Bool)

(assert (=> b!144792 m!127447))

(declare-fun m!127449 () Bool)

(assert (=> b!144792 m!127449))

(declare-fun m!127451 () Bool)

(assert (=> b!144807 m!127451))

(declare-fun m!127453 () Bool)

(assert (=> b!144807 m!127453))

(declare-fun m!127455 () Bool)

(assert (=> b!144801 m!127455))

(declare-fun m!127457 () Bool)

(assert (=> b!144801 m!127457))

(declare-fun m!127459 () Bool)

(assert (=> b!144791 m!127459))

(declare-fun m!127461 () Bool)

(assert (=> b!144795 m!127461))

(declare-fun m!127463 () Bool)

(assert (=> b!144804 m!127463))

(declare-fun m!127465 () Bool)

(assert (=> b!144796 m!127465))

(check-sat (not b!144807) (not b!144804) (not b_next!5049) (not b!144798) (not b!144801) (not b!144808) (not b!144793) (not start!15274) b_and!7783 (not b!144792) (not b!144806) b_and!7781 (not b!144805) (not b!144803) b_and!7773 (not b!144791) b_and!7777 (not b_next!5051) (not b!144800) (not b_next!5057) (not b!144794) (not b!144796) (not b_next!5059) b_and!7779 (not b_next!5055) (not b!144795) (not b_next!5053) b_and!7775)
(check-sat (not b_next!5057) (not b_next!5049) b_and!7783 b_and!7781 (not b_next!5055) b_and!7773 b_and!7777 (not b_next!5051) (not b_next!5059) b_and!7779 (not b_next!5053) b_and!7775)
(get-model)

(declare-fun d!34460 () Bool)

(assert (=> d!34460 (= (inv!3283 (tag!607 (rule!936 (h!7906 tokens!465)))) (= (mod (str.len (value!16541 (tag!607 (rule!936 (h!7906 tokens!465))))) 2) 0))))

(assert (=> b!144798 d!34460))

(declare-fun d!34464 () Bool)

(declare-fun res!66859 () Bool)

(declare-fun e!85918 () Bool)

(assert (=> d!34464 (=> (not res!66859) (not e!85918))))

(declare-fun semiInverseModEq!147 (Int Int) Bool)

(assert (=> d!34464 (= res!66859 (semiInverseModEq!147 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (toValue!1052 (transformation!429 (rule!936 (h!7906 tokens!465))))))))

(assert (=> d!34464 (= (inv!3287 (transformation!429 (rule!936 (h!7906 tokens!465)))) e!85918)))

(declare-fun b!144840 () Bool)

(declare-fun equivClasses!130 (Int Int) Bool)

(assert (=> b!144840 (= e!85918 (equivClasses!130 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (toValue!1052 (transformation!429 (rule!936 (h!7906 tokens!465))))))))

(assert (= (and d!34464 res!66859) b!144840))

(declare-fun m!127495 () Bool)

(assert (=> d!34464 m!127495))

(declare-fun m!127497 () Bool)

(assert (=> b!144840 m!127497))

(assert (=> b!144798 d!34464))

(declare-fun d!34470 () Bool)

(declare-fun res!66868 () Bool)

(declare-fun e!85927 () Bool)

(assert (=> d!34470 (=> (not res!66868) (not e!85927))))

(declare-fun isEmpty!971 (List!2518) Bool)

(assert (=> d!34470 (= res!66868 (not (isEmpty!971 (originalCharacters!472 separatorToken!170))))))

(assert (=> d!34470 (= (inv!3286 separatorToken!170) e!85927)))

(declare-fun b!144854 () Bool)

(declare-fun res!66869 () Bool)

(assert (=> b!144854 (=> (not res!66869) (not e!85927))))

(declare-fun list!864 (BalanceConc!1368) List!2518)

(declare-fun dynLambda!849 (Int TokenValue!451) BalanceConc!1368)

(assert (=> b!144854 (= res!66869 (= (originalCharacters!472 separatorToken!170) (list!864 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170)))))))

(declare-fun b!144855 () Bool)

(declare-fun size!2169 (List!2518) Int)

(assert (=> b!144855 (= e!85927 (= (size!2164 separatorToken!170) (size!2169 (originalCharacters!472 separatorToken!170))))))

(assert (= (and d!34470 res!66868) b!144854))

(assert (= (and b!144854 res!66869) b!144855))

(declare-fun b_lambda!2379 () Bool)

(assert (=> (not b_lambda!2379) (not b!144854)))

(declare-fun t!24034 () Bool)

(declare-fun tb!4557 () Bool)

(assert (=> (and b!144789 (= (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (toChars!911 (transformation!429 (rule!936 separatorToken!170)))) t!24034) tb!4557))

(declare-fun b!144860 () Bool)

(declare-fun e!85930 () Bool)

(declare-fun tp!76400 () Bool)

(declare-fun inv!3290 (Conc!680) Bool)

(assert (=> b!144860 (= e!85930 (and (inv!3290 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170)))) tp!76400))))

(declare-fun result!6882 () Bool)

(declare-fun inv!3291 (BalanceConc!1368) Bool)

(assert (=> tb!4557 (= result!6882 (and (inv!3291 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170))) e!85930))))

(assert (= tb!4557 b!144860))

(declare-fun m!127525 () Bool)

(assert (=> b!144860 m!127525))

(declare-fun m!127527 () Bool)

(assert (=> tb!4557 m!127527))

(assert (=> b!144854 t!24034))

(declare-fun b_and!7797 () Bool)

(assert (= b_and!7775 (and (=> t!24034 result!6882) b_and!7797)))

(declare-fun t!24036 () Bool)

(declare-fun tb!4559 () Bool)

(assert (=> (and b!144799 (= (toChars!911 (transformation!429 (h!7907 rules!1920))) (toChars!911 (transformation!429 (rule!936 separatorToken!170)))) t!24036) tb!4559))

(declare-fun result!6886 () Bool)

(assert (= result!6886 result!6882))

(assert (=> b!144854 t!24036))

(declare-fun b_and!7799 () Bool)

(assert (= b_and!7779 (and (=> t!24036 result!6886) b_and!7799)))

(declare-fun t!24038 () Bool)

(declare-fun tb!4561 () Bool)

(assert (=> (and b!144790 (= (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (toChars!911 (transformation!429 (rule!936 separatorToken!170)))) t!24038) tb!4561))

(declare-fun result!6888 () Bool)

(assert (= result!6888 result!6882))

(assert (=> b!144854 t!24038))

(declare-fun b_and!7801 () Bool)

(assert (= b_and!7783 (and (=> t!24038 result!6888) b_and!7801)))

(declare-fun m!127529 () Bool)

(assert (=> d!34470 m!127529))

(declare-fun m!127531 () Bool)

(assert (=> b!144854 m!127531))

(assert (=> b!144854 m!127531))

(declare-fun m!127533 () Bool)

(assert (=> b!144854 m!127533))

(declare-fun m!127535 () Bool)

(assert (=> b!144855 m!127535))

(assert (=> start!15274 d!34470))

(declare-fun d!34484 () Bool)

(declare-fun lt!41749 () Int)

(declare-fun size!2170 (List!2519) Int)

(declare-fun list!865 (BalanceConc!1370) List!2519)

(assert (=> d!34484 (= lt!41749 (size!2170 (list!865 lt!41740)))))

(declare-fun size!2171 (Conc!681) Int)

(assert (=> d!34484 (= lt!41749 (size!2171 (c!29665 lt!41740)))))

(assert (=> d!34484 (= (size!2165 lt!41740) lt!41749)))

(declare-fun bs!13099 () Bool)

(assert (= bs!13099 d!34484))

(declare-fun m!127537 () Bool)

(assert (=> bs!13099 m!127537))

(assert (=> bs!13099 m!127537))

(declare-fun m!127539 () Bool)

(assert (=> bs!13099 m!127539))

(declare-fun m!127541 () Bool)

(assert (=> bs!13099 m!127541))

(assert (=> b!144808 d!34484))

(declare-fun bs!13104 () Bool)

(declare-fun b!144944 () Bool)

(assert (= bs!13104 (and b!144944 b!144795)))

(declare-fun lambda!3527 () Int)

(assert (=> bs!13104 (not (= lambda!3527 lambda!3516))))

(declare-fun b!144959 () Bool)

(declare-fun e!85996 () Bool)

(assert (=> b!144959 (= e!85996 true)))

(declare-fun b!144958 () Bool)

(declare-fun e!85995 () Bool)

(assert (=> b!144958 (= e!85995 e!85996)))

(declare-fun b!144957 () Bool)

(declare-fun e!85994 () Bool)

(assert (=> b!144957 (= e!85994 e!85995)))

(assert (=> b!144944 e!85994))

(assert (= b!144958 b!144959))

(assert (= b!144957 b!144958))

(assert (= (and b!144944 ((_ is Cons!2510) rules!1920)) b!144957))

(declare-fun order!1217 () Int)

(declare-fun order!1219 () Int)

(declare-fun dynLambda!850 (Int Int) Int)

(declare-fun dynLambda!851 (Int Int) Int)

(assert (=> b!144959 (< (dynLambda!850 order!1217 (toValue!1052 (transformation!429 (h!7907 rules!1920)))) (dynLambda!851 order!1219 lambda!3527))))

(declare-fun order!1221 () Int)

(declare-fun dynLambda!852 (Int Int) Int)

(assert (=> b!144959 (< (dynLambda!852 order!1221 (toChars!911 (transformation!429 (h!7907 rules!1920)))) (dynLambda!851 order!1219 lambda!3527))))

(assert (=> b!144944 true))

(declare-fun b!144942 () Bool)

(declare-fun e!85984 () BalanceConc!1368)

(declare-fun charsOf!92 (Token!602) BalanceConc!1368)

(assert (=> b!144942 (= e!85984 (charsOf!92 separatorToken!170))))

(declare-fun b!144943 () Bool)

(declare-fun e!85986 () List!2518)

(assert (=> b!144943 (= e!85986 Nil!2508)))

(declare-fun print!82 (LexerInterface!315 BalanceConc!1370) BalanceConc!1368)

(declare-fun singletonSeq!15 (Token!602) BalanceConc!1370)

(declare-fun printTailRec!45 (LexerInterface!315 BalanceConc!1370 Int BalanceConc!1368) BalanceConc!1368)

(assert (=> b!144943 (= (print!82 thiss!17480 (singletonSeq!15 (h!7906 tokens!465))) (printTailRec!45 thiss!17480 (singletonSeq!15 (h!7906 tokens!465)) 0 (BalanceConc!1369 Empty!680)))))

(declare-datatypes ((Unit!1860 0))(
  ( (Unit!1861) )
))
(declare-fun lt!41785 () Unit!1860)

(declare-fun Unit!1862 () Unit!1860)

(assert (=> b!144943 (= lt!41785 Unit!1862)))

(declare-fun call!5668 () List!2518)

(declare-fun lt!41783 () Unit!1860)

(declare-fun lt!41784 () List!2518)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!4 (LexerInterface!315 List!2520 List!2518 List!2518) Unit!1860)

(assert (=> b!144943 (= lt!41783 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!4 thiss!17480 rules!1920 call!5668 lt!41784))))

(assert (=> b!144943 false))

(declare-fun lt!41787 () Unit!1860)

(declare-fun Unit!1863 () Unit!1860)

(assert (=> b!144943 (= lt!41787 Unit!1863)))

(declare-fun e!85987 () List!2518)

(declare-fun e!85985 () List!2518)

(assert (=> b!144944 (= e!85987 e!85985)))

(declare-fun lt!41788 () Unit!1860)

(declare-fun forallContained!40 (List!2519 Int Token!602) Unit!1860)

(assert (=> b!144944 (= lt!41788 (forallContained!40 tokens!465 lambda!3527 (h!7906 tokens!465)))))

(assert (=> b!144944 (= lt!41784 (printWithSeparatorTokenWhenNeededList!8 thiss!17480 rules!1920 (t!24019 tokens!465) separatorToken!170))))

(declare-datatypes ((tuple2!2496 0))(
  ( (tuple2!2497 (_1!1464 Token!602) (_2!1464 List!2518)) )
))
(declare-datatypes ((Option!213 0))(
  ( (None!212) (Some!212 (v!13567 tuple2!2496)) )
))
(declare-fun lt!41786 () Option!213)

(declare-fun maxPrefix!97 (LexerInterface!315 List!2520 List!2518) Option!213)

(declare-fun ++!534 (List!2518 List!2518) List!2518)

(assert (=> b!144944 (= lt!41786 (maxPrefix!97 thiss!17480 rules!1920 (++!534 (list!864 (charsOf!92 (h!7906 tokens!465))) lt!41784)))))

(declare-fun c!29700 () Bool)

(assert (=> b!144944 (= c!29700 (and ((_ is Some!212) lt!41786) (= (_1!1464 (v!13567 lt!41786)) (h!7906 tokens!465))))))

(declare-fun b!144945 () Bool)

(declare-fun c!29699 () Bool)

(assert (=> b!144945 (= c!29699 (and ((_ is Some!212) lt!41786) (not (= (_1!1464 (v!13567 lt!41786)) (h!7906 tokens!465)))))))

(assert (=> b!144945 (= e!85985 e!85986)))

(declare-fun bm!5659 () Bool)

(assert (=> bm!5659 (= call!5668 (list!864 e!85984))))

(declare-fun c!29698 () Bool)

(assert (=> bm!5659 (= c!29698 c!29699)))

(declare-fun b!144946 () Bool)

(declare-fun call!5667 () BalanceConc!1368)

(assert (=> b!144946 (= e!85984 call!5667)))

(declare-fun bm!5660 () Bool)

(declare-fun call!5664 () List!2518)

(declare-fun call!5665 () List!2518)

(assert (=> bm!5660 (= call!5665 (++!534 call!5664 (ite c!29700 lt!41784 call!5668)))))

(declare-fun bm!5661 () Bool)

(declare-fun call!5666 () BalanceConc!1368)

(assert (=> bm!5661 (= call!5666 (charsOf!92 (h!7906 tokens!465)))))

(declare-fun b!144947 () Bool)

(assert (=> b!144947 (= e!85987 Nil!2508)))

(declare-fun bm!5662 () Bool)

(assert (=> bm!5662 (= call!5664 (list!864 (ite c!29700 call!5666 call!5667)))))

(declare-fun b!144941 () Bool)

(assert (=> b!144941 (= e!85985 call!5665)))

(declare-fun d!34486 () Bool)

(declare-fun c!29697 () Bool)

(assert (=> d!34486 (= c!29697 ((_ is Cons!2509) tokens!465))))

(assert (=> d!34486 (= (printWithSeparatorTokenWhenNeededList!8 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!85987)))

(declare-fun b!144948 () Bool)

(assert (=> b!144948 (= e!85986 (++!534 call!5665 lt!41784))))

(declare-fun bm!5663 () Bool)

(assert (=> bm!5663 (= call!5667 call!5666)))

(assert (= (and d!34486 c!29697) b!144944))

(assert (= (and d!34486 (not c!29697)) b!144947))

(assert (= (and b!144944 c!29700) b!144941))

(assert (= (and b!144944 (not c!29700)) b!144945))

(assert (= (and b!144945 c!29699) b!144948))

(assert (= (and b!144945 (not c!29699)) b!144943))

(assert (= (or b!144948 b!144943) bm!5663))

(assert (= (or b!144948 b!144943) bm!5659))

(assert (= (and bm!5659 c!29698) b!144942))

(assert (= (and bm!5659 (not c!29698)) b!144946))

(assert (= (or b!144941 bm!5663) bm!5661))

(assert (= (or b!144941 b!144948) bm!5662))

(assert (= (or b!144941 b!144948) bm!5660))

(declare-fun m!127593 () Bool)

(assert (=> bm!5661 m!127593))

(declare-fun m!127595 () Bool)

(assert (=> b!144948 m!127595))

(declare-fun m!127597 () Bool)

(assert (=> bm!5659 m!127597))

(declare-fun m!127599 () Bool)

(assert (=> b!144943 m!127599))

(assert (=> b!144943 m!127599))

(declare-fun m!127601 () Bool)

(assert (=> b!144943 m!127601))

(assert (=> b!144943 m!127599))

(declare-fun m!127603 () Bool)

(assert (=> b!144943 m!127603))

(declare-fun m!127605 () Bool)

(assert (=> b!144943 m!127605))

(declare-fun m!127607 () Bool)

(assert (=> bm!5662 m!127607))

(declare-fun m!127609 () Bool)

(assert (=> b!144942 m!127609))

(declare-fun m!127611 () Bool)

(assert (=> b!144944 m!127611))

(declare-fun m!127613 () Bool)

(assert (=> b!144944 m!127613))

(declare-fun m!127615 () Bool)

(assert (=> b!144944 m!127615))

(assert (=> b!144944 m!127593))

(declare-fun m!127617 () Bool)

(assert (=> b!144944 m!127617))

(assert (=> b!144944 m!127593))

(declare-fun m!127619 () Bool)

(assert (=> b!144944 m!127619))

(assert (=> b!144944 m!127617))

(assert (=> b!144944 m!127611))

(declare-fun m!127621 () Bool)

(assert (=> bm!5660 m!127621))

(assert (=> b!144808 d!34486))

(declare-fun d!34500 () Bool)

(assert (=> d!34500 (= (inv!3283 (tag!607 (h!7907 rules!1920))) (= (mod (str.len (value!16541 (tag!607 (h!7907 rules!1920)))) 2) 0))))

(assert (=> b!144807 d!34500))

(declare-fun d!34502 () Bool)

(declare-fun res!66888 () Bool)

(declare-fun e!85997 () Bool)

(assert (=> d!34502 (=> (not res!66888) (not e!85997))))

(assert (=> d!34502 (= res!66888 (semiInverseModEq!147 (toChars!911 (transformation!429 (h!7907 rules!1920))) (toValue!1052 (transformation!429 (h!7907 rules!1920)))))))

(assert (=> d!34502 (= (inv!3287 (transformation!429 (h!7907 rules!1920))) e!85997)))

(declare-fun b!144962 () Bool)

(assert (=> b!144962 (= e!85997 (equivClasses!130 (toChars!911 (transformation!429 (h!7907 rules!1920))) (toValue!1052 (transformation!429 (h!7907 rules!1920)))))))

(assert (= (and d!34502 res!66888) b!144962))

(declare-fun m!127623 () Bool)

(assert (=> d!34502 m!127623))

(declare-fun m!127625 () Bool)

(assert (=> b!144962 m!127625))

(assert (=> b!144807 d!34502))

(declare-fun b!144973 () Bool)

(declare-fun res!66891 () Bool)

(declare-fun e!86005 () Bool)

(assert (=> b!144973 (=> res!66891 e!86005)))

(assert (=> b!144973 (= res!66891 (not ((_ is IntegerValue!1355) (value!16542 separatorToken!170))))))

(declare-fun e!86006 () Bool)

(assert (=> b!144973 (= e!86006 e!86005)))

(declare-fun b!144974 () Bool)

(declare-fun inv!15 (TokenValue!451) Bool)

(assert (=> b!144974 (= e!86005 (inv!15 (value!16542 separatorToken!170)))))

(declare-fun b!144975 () Bool)

(declare-fun inv!17 (TokenValue!451) Bool)

(assert (=> b!144975 (= e!86006 (inv!17 (value!16542 separatorToken!170)))))

(declare-fun d!34504 () Bool)

(declare-fun c!29706 () Bool)

(assert (=> d!34504 (= c!29706 ((_ is IntegerValue!1353) (value!16542 separatorToken!170)))))

(declare-fun e!86004 () Bool)

(assert (=> d!34504 (= (inv!21 (value!16542 separatorToken!170)) e!86004)))

(declare-fun b!144976 () Bool)

(assert (=> b!144976 (= e!86004 e!86006)))

(declare-fun c!29705 () Bool)

(assert (=> b!144976 (= c!29705 ((_ is IntegerValue!1354) (value!16542 separatorToken!170)))))

(declare-fun b!144977 () Bool)

(declare-fun inv!16 (TokenValue!451) Bool)

(assert (=> b!144977 (= e!86004 (inv!16 (value!16542 separatorToken!170)))))

(assert (= (and d!34504 c!29706) b!144977))

(assert (= (and d!34504 (not c!29706)) b!144976))

(assert (= (and b!144976 c!29705) b!144975))

(assert (= (and b!144976 (not c!29705)) b!144973))

(assert (= (and b!144973 (not res!66891)) b!144974))

(declare-fun m!127627 () Bool)

(assert (=> b!144974 m!127627))

(declare-fun m!127629 () Bool)

(assert (=> b!144975 m!127629))

(declare-fun m!127631 () Bool)

(assert (=> b!144977 m!127631))

(assert (=> b!144796 d!34504))

(declare-fun d!34506 () Bool)

(assert (=> d!34506 (= (isEmpty!968 rules!1920) ((_ is Nil!2510) rules!1920))))

(assert (=> b!144800 d!34506))

(declare-fun bs!13106 () Bool)

(declare-fun d!34508 () Bool)

(assert (= bs!13106 (and d!34508 b!144795)))

(declare-fun lambda!3532 () Int)

(assert (=> bs!13106 (not (= lambda!3532 lambda!3516))))

(declare-fun bs!13107 () Bool)

(assert (= bs!13107 (and d!34508 b!144944)))

(assert (=> bs!13107 (= lambda!3532 lambda!3527)))

(declare-fun b!145046 () Bool)

(declare-fun e!86058 () Bool)

(assert (=> b!145046 (= e!86058 true)))

(declare-fun b!145045 () Bool)

(declare-fun e!86057 () Bool)

(assert (=> b!145045 (= e!86057 e!86058)))

(declare-fun b!145044 () Bool)

(declare-fun e!86056 () Bool)

(assert (=> b!145044 (= e!86056 e!86057)))

(assert (=> d!34508 e!86056))

(assert (= b!145045 b!145046))

(assert (= b!145044 b!145045))

(assert (= (and d!34508 ((_ is Cons!2510) rules!1920)) b!145044))

(assert (=> b!145046 (< (dynLambda!850 order!1217 (toValue!1052 (transformation!429 (h!7907 rules!1920)))) (dynLambda!851 order!1219 lambda!3532))))

(assert (=> b!145046 (< (dynLambda!852 order!1221 (toChars!911 (transformation!429 (h!7907 rules!1920)))) (dynLambda!851 order!1219 lambda!3532))))

(assert (=> d!34508 true))

(declare-fun e!86055 () Bool)

(assert (=> d!34508 e!86055))

(declare-fun res!66904 () Bool)

(assert (=> d!34508 (=> (not res!66904) (not e!86055))))

(declare-fun lt!41797 () Bool)

(assert (=> d!34508 (= res!66904 (= lt!41797 (forall!389 (list!865 lt!41740) lambda!3532)))))

(assert (=> d!34508 (= lt!41797 (forall!388 lt!41740 lambda!3532))))

(assert (=> d!34508 (not (isEmpty!968 rules!1920))))

(assert (=> d!34508 (= (rulesProduceEachTokenIndividually!107 thiss!17480 rules!1920 lt!41740) lt!41797)))

(declare-fun b!145043 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!67 (LexerInterface!315 List!2520 List!2519) Bool)

(assert (=> b!145043 (= e!86055 (= lt!41797 (rulesProduceEachTokenIndividuallyList!67 thiss!17480 rules!1920 (list!865 lt!41740))))))

(assert (= (and d!34508 res!66904) b!145043))

(assert (=> d!34508 m!127537))

(assert (=> d!34508 m!127537))

(declare-fun m!127667 () Bool)

(assert (=> d!34508 m!127667))

(declare-fun m!127669 () Bool)

(assert (=> d!34508 m!127669))

(assert (=> d!34508 m!127437))

(assert (=> b!145043 m!127537))

(assert (=> b!145043 m!127537))

(declare-fun m!127671 () Bool)

(assert (=> b!145043 m!127671))

(assert (=> b!144792 d!34508))

(declare-fun d!34516 () Bool)

(declare-fun fromListB!105 (List!2519) BalanceConc!1370)

(assert (=> d!34516 (= (seqFromList!244 tokens!465) (fromListB!105 tokens!465))))

(declare-fun bs!13108 () Bool)

(assert (= bs!13108 d!34516))

(declare-fun m!127673 () Bool)

(assert (=> bs!13108 m!127673))

(assert (=> b!144792 d!34516))

(declare-fun b!145047 () Bool)

(declare-fun res!66905 () Bool)

(declare-fun e!86060 () Bool)

(assert (=> b!145047 (=> res!66905 e!86060)))

(assert (=> b!145047 (= res!66905 (not ((_ is IntegerValue!1355) (value!16542 (h!7906 tokens!465)))))))

(declare-fun e!86061 () Bool)

(assert (=> b!145047 (= e!86061 e!86060)))

(declare-fun b!145048 () Bool)

(assert (=> b!145048 (= e!86060 (inv!15 (value!16542 (h!7906 tokens!465))))))

(declare-fun b!145049 () Bool)

(assert (=> b!145049 (= e!86061 (inv!17 (value!16542 (h!7906 tokens!465))))))

(declare-fun d!34518 () Bool)

(declare-fun c!29708 () Bool)

(assert (=> d!34518 (= c!29708 ((_ is IntegerValue!1353) (value!16542 (h!7906 tokens!465))))))

(declare-fun e!86059 () Bool)

(assert (=> d!34518 (= (inv!21 (value!16542 (h!7906 tokens!465))) e!86059)))

(declare-fun b!145050 () Bool)

(assert (=> b!145050 (= e!86059 e!86061)))

(declare-fun c!29707 () Bool)

(assert (=> b!145050 (= c!29707 ((_ is IntegerValue!1354) (value!16542 (h!7906 tokens!465))))))

(declare-fun b!145051 () Bool)

(assert (=> b!145051 (= e!86059 (inv!16 (value!16542 (h!7906 tokens!465))))))

(assert (= (and d!34518 c!29708) b!145051))

(assert (= (and d!34518 (not c!29708)) b!145050))

(assert (= (and b!145050 c!29707) b!145049))

(assert (= (and b!145050 (not c!29707)) b!145047))

(assert (= (and b!145047 (not res!66905)) b!145048))

(declare-fun m!127675 () Bool)

(assert (=> b!145048 m!127675))

(declare-fun m!127677 () Bool)

(assert (=> b!145049 m!127677))

(declare-fun m!127679 () Bool)

(assert (=> b!145051 m!127679))

(assert (=> b!144791 d!34518))

(declare-fun d!34520 () Bool)

(assert (=> d!34520 (= (inv!3283 (tag!607 (rule!936 separatorToken!170))) (= (mod (str.len (value!16541 (tag!607 (rule!936 separatorToken!170)))) 2) 0))))

(assert (=> b!144801 d!34520))

(declare-fun d!34522 () Bool)

(declare-fun res!66906 () Bool)

(declare-fun e!86062 () Bool)

(assert (=> d!34522 (=> (not res!66906) (not e!86062))))

(assert (=> d!34522 (= res!66906 (semiInverseModEq!147 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (toValue!1052 (transformation!429 (rule!936 separatorToken!170)))))))

(assert (=> d!34522 (= (inv!3287 (transformation!429 (rule!936 separatorToken!170))) e!86062)))

(declare-fun b!145052 () Bool)

(assert (=> b!145052 (= e!86062 (equivClasses!130 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (toValue!1052 (transformation!429 (rule!936 separatorToken!170)))))))

(assert (= (and d!34522 res!66906) b!145052))

(declare-fun m!127681 () Bool)

(assert (=> d!34522 m!127681))

(declare-fun m!127683 () Bool)

(assert (=> b!145052 m!127683))

(assert (=> b!144801 d!34522))

(declare-fun d!34524 () Bool)

(declare-fun res!66907 () Bool)

(declare-fun e!86063 () Bool)

(assert (=> d!34524 (=> (not res!66907) (not e!86063))))

(assert (=> d!34524 (= res!66907 (not (isEmpty!971 (originalCharacters!472 (h!7906 tokens!465)))))))

(assert (=> d!34524 (= (inv!3286 (h!7906 tokens!465)) e!86063)))

(declare-fun b!145053 () Bool)

(declare-fun res!66908 () Bool)

(assert (=> b!145053 (=> (not res!66908) (not e!86063))))

(assert (=> b!145053 (= res!66908 (= (originalCharacters!472 (h!7906 tokens!465)) (list!864 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465))))))))

(declare-fun b!145054 () Bool)

(assert (=> b!145054 (= e!86063 (= (size!2164 (h!7906 tokens!465)) (size!2169 (originalCharacters!472 (h!7906 tokens!465)))))))

(assert (= (and d!34524 res!66907) b!145053))

(assert (= (and b!145053 res!66908) b!145054))

(declare-fun b_lambda!2389 () Bool)

(assert (=> (not b_lambda!2389) (not b!145053)))

(declare-fun t!24061 () Bool)

(declare-fun tb!4571 () Bool)

(assert (=> (and b!144789 (= (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465))))) t!24061) tb!4571))

(declare-fun b!145055 () Bool)

(declare-fun e!86064 () Bool)

(declare-fun tp!76457 () Bool)

(assert (=> b!145055 (= e!86064 (and (inv!3290 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465))))) tp!76457))))

(declare-fun result!6906 () Bool)

(assert (=> tb!4571 (= result!6906 (and (inv!3291 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465)))) e!86064))))

(assert (= tb!4571 b!145055))

(declare-fun m!127685 () Bool)

(assert (=> b!145055 m!127685))

(declare-fun m!127687 () Bool)

(assert (=> tb!4571 m!127687))

(assert (=> b!145053 t!24061))

(declare-fun b_and!7811 () Bool)

(assert (= b_and!7797 (and (=> t!24061 result!6906) b_and!7811)))

(declare-fun tb!4573 () Bool)

(declare-fun t!24063 () Bool)

(assert (=> (and b!144799 (= (toChars!911 (transformation!429 (h!7907 rules!1920))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465))))) t!24063) tb!4573))

(declare-fun result!6908 () Bool)

(assert (= result!6908 result!6906))

(assert (=> b!145053 t!24063))

(declare-fun b_and!7813 () Bool)

(assert (= b_and!7799 (and (=> t!24063 result!6908) b_and!7813)))

(declare-fun t!24065 () Bool)

(declare-fun tb!4575 () Bool)

(assert (=> (and b!144790 (= (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465))))) t!24065) tb!4575))

(declare-fun result!6910 () Bool)

(assert (= result!6910 result!6906))

(assert (=> b!145053 t!24065))

(declare-fun b_and!7815 () Bool)

(assert (= b_and!7801 (and (=> t!24065 result!6910) b_and!7815)))

(declare-fun m!127689 () Bool)

(assert (=> d!34524 m!127689))

(declare-fun m!127691 () Bool)

(assert (=> b!145053 m!127691))

(assert (=> b!145053 m!127691))

(declare-fun m!127693 () Bool)

(assert (=> b!145053 m!127693))

(declare-fun m!127695 () Bool)

(assert (=> b!145054 m!127695))

(assert (=> b!144806 d!34524))

(declare-fun d!34526 () Bool)

(declare-fun res!66913 () Bool)

(declare-fun e!86069 () Bool)

(assert (=> d!34526 (=> res!66913 e!86069)))

(assert (=> d!34526 (= res!66913 ((_ is Nil!2509) tokens!465))))

(assert (=> d!34526 (= (forall!389 tokens!465 lambda!3516) e!86069)))

(declare-fun b!145060 () Bool)

(declare-fun e!86070 () Bool)

(assert (=> b!145060 (= e!86069 e!86070)))

(declare-fun res!66914 () Bool)

(assert (=> b!145060 (=> (not res!66914) (not e!86070))))

(declare-fun dynLambda!853 (Int Token!602) Bool)

(assert (=> b!145060 (= res!66914 (dynLambda!853 lambda!3516 (h!7906 tokens!465)))))

(declare-fun b!145061 () Bool)

(assert (=> b!145061 (= e!86070 (forall!389 (t!24019 tokens!465) lambda!3516))))

(assert (= (and d!34526 (not res!66913)) b!145060))

(assert (= (and b!145060 res!66914) b!145061))

(declare-fun b_lambda!2391 () Bool)

(assert (=> (not b_lambda!2391) (not b!145060)))

(declare-fun m!127697 () Bool)

(assert (=> b!145060 m!127697))

(declare-fun m!127699 () Bool)

(assert (=> b!145061 m!127699))

(assert (=> b!144795 d!34526))

(declare-fun d!34528 () Bool)

(declare-fun res!66919 () Bool)

(declare-fun e!86075 () Bool)

(assert (=> d!34528 (=> res!66919 e!86075)))

(assert (=> d!34528 (= res!66919 (not ((_ is Cons!2510) rules!1920)))))

(assert (=> d!34528 (= (sepAndNonSepRulesDisjointChars!18 rules!1920 rules!1920) e!86075)))

(declare-fun b!145066 () Bool)

(declare-fun e!86076 () Bool)

(assert (=> b!145066 (= e!86075 e!86076)))

(declare-fun res!66920 () Bool)

(assert (=> b!145066 (=> (not res!66920) (not e!86076))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!6 (Rule!658 List!2520) Bool)

(assert (=> b!145066 (= res!66920 (ruleDisjointCharsFromAllFromOtherType!6 (h!7907 rules!1920) rules!1920))))

(declare-fun b!145067 () Bool)

(assert (=> b!145067 (= e!86076 (sepAndNonSepRulesDisjointChars!18 rules!1920 (t!24020 rules!1920)))))

(assert (= (and d!34528 (not res!66919)) b!145066))

(assert (= (and b!145066 res!66920) b!145067))

(declare-fun m!127701 () Bool)

(assert (=> b!145066 m!127701))

(declare-fun m!127703 () Bool)

(assert (=> b!145067 m!127703))

(assert (=> b!144805 d!34528))

(declare-fun d!34530 () Bool)

(declare-fun lt!41802 () Bool)

(declare-fun e!86081 () Bool)

(assert (=> d!34530 (= lt!41802 e!86081)))

(declare-fun res!66928 () Bool)

(assert (=> d!34530 (=> (not res!66928) (not e!86081))))

(declare-datatypes ((tuple2!2498 0))(
  ( (tuple2!2499 (_1!1465 BalanceConc!1370) (_2!1465 BalanceConc!1368)) )
))
(declare-fun lex!157 (LexerInterface!315 List!2520 BalanceConc!1368) tuple2!2498)

(assert (=> d!34530 (= res!66928 (= (list!865 (_1!1465 (lex!157 thiss!17480 rules!1920 (print!82 thiss!17480 (singletonSeq!15 separatorToken!170))))) (list!865 (singletonSeq!15 separatorToken!170))))))

(declare-fun e!86082 () Bool)

(assert (=> d!34530 (= lt!41802 e!86082)))

(declare-fun res!66927 () Bool)

(assert (=> d!34530 (=> (not res!66927) (not e!86082))))

(declare-fun lt!41803 () tuple2!2498)

(assert (=> d!34530 (= res!66927 (= (size!2165 (_1!1465 lt!41803)) 1))))

(assert (=> d!34530 (= lt!41803 (lex!157 thiss!17480 rules!1920 (print!82 thiss!17480 (singletonSeq!15 separatorToken!170))))))

(assert (=> d!34530 (not (isEmpty!968 rules!1920))))

(assert (=> d!34530 (= (rulesProduceIndividualToken!64 thiss!17480 rules!1920 separatorToken!170) lt!41802)))

(declare-fun b!145074 () Bool)

(declare-fun res!66929 () Bool)

(assert (=> b!145074 (=> (not res!66929) (not e!86082))))

(declare-fun apply!308 (BalanceConc!1370 Int) Token!602)

(assert (=> b!145074 (= res!66929 (= (apply!308 (_1!1465 lt!41803) 0) separatorToken!170))))

(declare-fun b!145075 () Bool)

(declare-fun isEmpty!972 (BalanceConc!1368) Bool)

(assert (=> b!145075 (= e!86082 (isEmpty!972 (_2!1465 lt!41803)))))

(declare-fun b!145076 () Bool)

(assert (=> b!145076 (= e!86081 (isEmpty!972 (_2!1465 (lex!157 thiss!17480 rules!1920 (print!82 thiss!17480 (singletonSeq!15 separatorToken!170))))))))

(assert (= (and d!34530 res!66927) b!145074))

(assert (= (and b!145074 res!66929) b!145075))

(assert (= (and d!34530 res!66928) b!145076))

(declare-fun m!127705 () Bool)

(assert (=> d!34530 m!127705))

(declare-fun m!127707 () Bool)

(assert (=> d!34530 m!127707))

(assert (=> d!34530 m!127705))

(declare-fun m!127709 () Bool)

(assert (=> d!34530 m!127709))

(assert (=> d!34530 m!127707))

(declare-fun m!127711 () Bool)

(assert (=> d!34530 m!127711))

(assert (=> d!34530 m!127705))

(declare-fun m!127713 () Bool)

(assert (=> d!34530 m!127713))

(declare-fun m!127715 () Bool)

(assert (=> d!34530 m!127715))

(assert (=> d!34530 m!127437))

(declare-fun m!127717 () Bool)

(assert (=> b!145074 m!127717))

(declare-fun m!127719 () Bool)

(assert (=> b!145075 m!127719))

(assert (=> b!145076 m!127705))

(assert (=> b!145076 m!127705))

(assert (=> b!145076 m!127707))

(assert (=> b!145076 m!127707))

(assert (=> b!145076 m!127711))

(declare-fun m!127721 () Bool)

(assert (=> b!145076 m!127721))

(assert (=> b!144794 d!34530))

(declare-fun d!34532 () Bool)

(declare-fun res!66932 () Bool)

(declare-fun e!86085 () Bool)

(assert (=> d!34532 (=> (not res!66932) (not e!86085))))

(declare-fun rulesValid!113 (LexerInterface!315 List!2520) Bool)

(assert (=> d!34532 (= res!66932 (rulesValid!113 thiss!17480 rules!1920))))

(assert (=> d!34532 (= (rulesInvariant!281 thiss!17480 rules!1920) e!86085)))

(declare-fun b!145079 () Bool)

(declare-datatypes ((List!2522 0))(
  ( (Nil!2512) (Cons!2512 (h!7909 String!3335) (t!24076 List!2522)) )
))
(declare-fun noDuplicateTag!113 (LexerInterface!315 List!2520 List!2522) Bool)

(assert (=> b!145079 (= e!86085 (noDuplicateTag!113 thiss!17480 rules!1920 Nil!2512))))

(assert (= (and d!34532 res!66932) b!145079))

(declare-fun m!127723 () Bool)

(assert (=> d!34532 m!127723))

(declare-fun m!127725 () Bool)

(assert (=> b!145079 m!127725))

(assert (=> b!144804 d!34532))

(declare-fun d!34534 () Bool)

(declare-fun lt!41806 () Bool)

(assert (=> d!34534 (= lt!41806 (forall!389 (list!865 lt!41740) lambda!3516))))

(declare-fun forall!391 (Conc!681 Int) Bool)

(assert (=> d!34534 (= lt!41806 (forall!391 (c!29665 lt!41740) lambda!3516))))

(assert (=> d!34534 (= (forall!388 lt!41740 lambda!3516) lt!41806)))

(declare-fun bs!13109 () Bool)

(assert (= bs!13109 d!34534))

(assert (=> bs!13109 m!127537))

(assert (=> bs!13109 m!127537))

(declare-fun m!127727 () Bool)

(assert (=> bs!13109 m!127727))

(declare-fun m!127729 () Bool)

(assert (=> bs!13109 m!127729))

(assert (=> b!144793 d!34534))

(declare-fun b!145090 () Bool)

(declare-fun e!86088 () Bool)

(declare-fun tp_is_empty!1591 () Bool)

(assert (=> b!145090 (= e!86088 tp_is_empty!1591)))

(declare-fun b!145091 () Bool)

(declare-fun tp!76468 () Bool)

(declare-fun tp!76469 () Bool)

(assert (=> b!145091 (= e!86088 (and tp!76468 tp!76469))))

(assert (=> b!144798 (= tp!76381 e!86088)))

(declare-fun b!145093 () Bool)

(declare-fun tp!76472 () Bool)

(declare-fun tp!76471 () Bool)

(assert (=> b!145093 (= e!86088 (and tp!76472 tp!76471))))

(declare-fun b!145092 () Bool)

(declare-fun tp!76470 () Bool)

(assert (=> b!145092 (= e!86088 tp!76470)))

(assert (= (and b!144798 ((_ is ElementMatch!653) (regex!429 (rule!936 (h!7906 tokens!465))))) b!145090))

(assert (= (and b!144798 ((_ is Concat!1105) (regex!429 (rule!936 (h!7906 tokens!465))))) b!145091))

(assert (= (and b!144798 ((_ is Star!653) (regex!429 (rule!936 (h!7906 tokens!465))))) b!145092))

(assert (= (and b!144798 ((_ is Union!653) (regex!429 (rule!936 (h!7906 tokens!465))))) b!145093))

(declare-fun b!145104 () Bool)

(declare-fun b_free!5069 () Bool)

(declare-fun b_next!5069 () Bool)

(assert (=> b!145104 (= b_free!5069 (not b_next!5069))))

(declare-fun tp!76484 () Bool)

(declare-fun b_and!7817 () Bool)

(assert (=> b!145104 (= tp!76484 b_and!7817)))

(declare-fun b_free!5071 () Bool)

(declare-fun b_next!5071 () Bool)

(assert (=> b!145104 (= b_free!5071 (not b_next!5071))))

(declare-fun t!24069 () Bool)

(declare-fun tb!4577 () Bool)

(assert (=> (and b!145104 (= (toChars!911 (transformation!429 (h!7907 (t!24020 rules!1920)))) (toChars!911 (transformation!429 (rule!936 separatorToken!170)))) t!24069) tb!4577))

(declare-fun result!6916 () Bool)

(assert (= result!6916 result!6882))

(assert (=> b!144854 t!24069))

(declare-fun t!24071 () Bool)

(declare-fun tb!4579 () Bool)

(assert (=> (and b!145104 (= (toChars!911 (transformation!429 (h!7907 (t!24020 rules!1920)))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465))))) t!24071) tb!4579))

(declare-fun result!6918 () Bool)

(assert (= result!6918 result!6906))

(assert (=> b!145053 t!24071))

(declare-fun b_and!7819 () Bool)

(declare-fun tp!76482 () Bool)

(assert (=> b!145104 (= tp!76482 (and (=> t!24069 result!6916) (=> t!24071 result!6918) b_and!7819))))

(declare-fun e!86097 () Bool)

(assert (=> b!145104 (= e!86097 (and tp!76484 tp!76482))))

(declare-fun b!145103 () Bool)

(declare-fun tp!76481 () Bool)

(declare-fun e!86099 () Bool)

(assert (=> b!145103 (= e!86099 (and tp!76481 (inv!3283 (tag!607 (h!7907 (t!24020 rules!1920)))) (inv!3287 (transformation!429 (h!7907 (t!24020 rules!1920)))) e!86097))))

(declare-fun b!145102 () Bool)

(declare-fun e!86098 () Bool)

(declare-fun tp!76483 () Bool)

(assert (=> b!145102 (= e!86098 (and e!86099 tp!76483))))

(assert (=> b!144803 (= tp!76388 e!86098)))

(assert (= b!145103 b!145104))

(assert (= b!145102 b!145103))

(assert (= (and b!144803 ((_ is Cons!2510) (t!24020 rules!1920))) b!145102))

(declare-fun m!127731 () Bool)

(assert (=> b!145103 m!127731))

(declare-fun m!127733 () Bool)

(assert (=> b!145103 m!127733))

(declare-fun b!145105 () Bool)

(declare-fun e!86101 () Bool)

(assert (=> b!145105 (= e!86101 tp_is_empty!1591)))

(declare-fun b!145106 () Bool)

(declare-fun tp!76485 () Bool)

(declare-fun tp!76486 () Bool)

(assert (=> b!145106 (= e!86101 (and tp!76485 tp!76486))))

(assert (=> b!144807 (= tp!76384 e!86101)))

(declare-fun b!145108 () Bool)

(declare-fun tp!76489 () Bool)

(declare-fun tp!76488 () Bool)

(assert (=> b!145108 (= e!86101 (and tp!76489 tp!76488))))

(declare-fun b!145107 () Bool)

(declare-fun tp!76487 () Bool)

(assert (=> b!145107 (= e!86101 tp!76487)))

(assert (= (and b!144807 ((_ is ElementMatch!653) (regex!429 (h!7907 rules!1920)))) b!145105))

(assert (= (and b!144807 ((_ is Concat!1105) (regex!429 (h!7907 rules!1920)))) b!145106))

(assert (= (and b!144807 ((_ is Star!653) (regex!429 (h!7907 rules!1920)))) b!145107))

(assert (= (and b!144807 ((_ is Union!653) (regex!429 (h!7907 rules!1920)))) b!145108))

(declare-fun b!145113 () Bool)

(declare-fun e!86104 () Bool)

(declare-fun tp!76492 () Bool)

(assert (=> b!145113 (= e!86104 (and tp_is_empty!1591 tp!76492))))

(assert (=> b!144791 (= tp!76390 e!86104)))

(assert (= (and b!144791 ((_ is Cons!2508) (originalCharacters!472 (h!7906 tokens!465)))) b!145113))

(declare-fun b!145114 () Bool)

(declare-fun e!86105 () Bool)

(declare-fun tp!76493 () Bool)

(assert (=> b!145114 (= e!86105 (and tp_is_empty!1591 tp!76493))))

(assert (=> b!144796 (= tp!76391 e!86105)))

(assert (= (and b!144796 ((_ is Cons!2508) (originalCharacters!472 separatorToken!170))) b!145114))

(declare-fun b!145115 () Bool)

(declare-fun e!86106 () Bool)

(assert (=> b!145115 (= e!86106 tp_is_empty!1591)))

(declare-fun b!145116 () Bool)

(declare-fun tp!76494 () Bool)

(declare-fun tp!76495 () Bool)

(assert (=> b!145116 (= e!86106 (and tp!76494 tp!76495))))

(assert (=> b!144801 (= tp!76392 e!86106)))

(declare-fun b!145118 () Bool)

(declare-fun tp!76498 () Bool)

(declare-fun tp!76497 () Bool)

(assert (=> b!145118 (= e!86106 (and tp!76498 tp!76497))))

(declare-fun b!145117 () Bool)

(declare-fun tp!76496 () Bool)

(assert (=> b!145117 (= e!86106 tp!76496)))

(assert (= (and b!144801 ((_ is ElementMatch!653) (regex!429 (rule!936 separatorToken!170)))) b!145115))

(assert (= (and b!144801 ((_ is Concat!1105) (regex!429 (rule!936 separatorToken!170)))) b!145116))

(assert (= (and b!144801 ((_ is Star!653) (regex!429 (rule!936 separatorToken!170)))) b!145117))

(assert (= (and b!144801 ((_ is Union!653) (regex!429 (rule!936 separatorToken!170)))) b!145118))

(declare-fun b!145132 () Bool)

(declare-fun b_free!5073 () Bool)

(declare-fun b_next!5073 () Bool)

(assert (=> b!145132 (= b_free!5073 (not b_next!5073))))

(declare-fun tp!76511 () Bool)

(declare-fun b_and!7821 () Bool)

(assert (=> b!145132 (= tp!76511 b_and!7821)))

(declare-fun b_free!5075 () Bool)

(declare-fun b_next!5075 () Bool)

(assert (=> b!145132 (= b_free!5075 (not b_next!5075))))

(declare-fun tb!4581 () Bool)

(declare-fun t!24073 () Bool)

(assert (=> (and b!145132 (= (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))) (toChars!911 (transformation!429 (rule!936 separatorToken!170)))) t!24073) tb!4581))

(declare-fun result!6924 () Bool)

(assert (= result!6924 result!6882))

(assert (=> b!144854 t!24073))

(declare-fun t!24075 () Bool)

(declare-fun tb!4583 () Bool)

(assert (=> (and b!145132 (= (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465))))) t!24075) tb!4583))

(declare-fun result!6926 () Bool)

(assert (= result!6926 result!6906))

(assert (=> b!145053 t!24075))

(declare-fun tp!76512 () Bool)

(declare-fun b_and!7823 () Bool)

(assert (=> b!145132 (= tp!76512 (and (=> t!24073 result!6924) (=> t!24075 result!6926) b_and!7823))))

(declare-fun e!86124 () Bool)

(declare-fun tp!76509 () Bool)

(declare-fun b!145130 () Bool)

(declare-fun e!86122 () Bool)

(assert (=> b!145130 (= e!86122 (and (inv!21 (value!16542 (h!7906 (t!24019 tokens!465)))) e!86124 tp!76509))))

(declare-fun e!86121 () Bool)

(assert (=> b!144806 (= tp!76393 e!86121)))

(declare-fun e!86119 () Bool)

(assert (=> b!145132 (= e!86119 (and tp!76511 tp!76512))))

(declare-fun tp!76510 () Bool)

(declare-fun b!145131 () Bool)

(assert (=> b!145131 (= e!86124 (and tp!76510 (inv!3283 (tag!607 (rule!936 (h!7906 (t!24019 tokens!465))))) (inv!3287 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))) e!86119))))

(declare-fun tp!76513 () Bool)

(declare-fun b!145129 () Bool)

(assert (=> b!145129 (= e!86121 (and (inv!3286 (h!7906 (t!24019 tokens!465))) e!86122 tp!76513))))

(assert (= b!145131 b!145132))

(assert (= b!145130 b!145131))

(assert (= b!145129 b!145130))

(assert (= (and b!144806 ((_ is Cons!2509) (t!24019 tokens!465))) b!145129))

(declare-fun m!127735 () Bool)

(assert (=> b!145130 m!127735))

(declare-fun m!127737 () Bool)

(assert (=> b!145131 m!127737))

(declare-fun m!127739 () Bool)

(assert (=> b!145131 m!127739))

(declare-fun m!127741 () Bool)

(assert (=> b!145129 m!127741))

(declare-fun b_lambda!2393 () Bool)

(assert (= b_lambda!2389 (or (and b!145104 b_free!5071 (= (toChars!911 (transformation!429 (h!7907 (t!24020 rules!1920)))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))))) (and b!144799 b_free!5055 (= (toChars!911 (transformation!429 (h!7907 rules!1920))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))))) (and b!145132 b_free!5075 (= (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))))) (and b!144790 b_free!5059) (and b!144789 b_free!5051 (= (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))))) b_lambda!2393)))

(declare-fun b_lambda!2395 () Bool)

(assert (= b_lambda!2379 (or (and b!145104 b_free!5071 (= (toChars!911 (transformation!429 (h!7907 (t!24020 rules!1920)))) (toChars!911 (transformation!429 (rule!936 separatorToken!170))))) (and b!145132 b_free!5075 (= (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))) (toChars!911 (transformation!429 (rule!936 separatorToken!170))))) (and b!144799 b_free!5055 (= (toChars!911 (transformation!429 (h!7907 rules!1920))) (toChars!911 (transformation!429 (rule!936 separatorToken!170))))) (and b!144789 b_free!5051) (and b!144790 b_free!5059 (= (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (toChars!911 (transformation!429 (rule!936 separatorToken!170))))) b_lambda!2395)))

(declare-fun b_lambda!2397 () Bool)

(assert (= b_lambda!2391 (or b!144795 b_lambda!2397)))

(declare-fun bs!13110 () Bool)

(declare-fun d!34536 () Bool)

(assert (= bs!13110 (and d!34536 b!144795)))

(assert (=> bs!13110 (= (dynLambda!853 lambda!3516 (h!7906 tokens!465)) (not (isSeparator!429 (rule!936 (h!7906 tokens!465)))))))

(assert (=> b!145060 d!34536))

(check-sat (not b!145044) tp_is_empty!1591 (not b!145113) b_and!7815 (not b_next!5055) (not d!34516) (not b!145055) (not b!145106) (not bm!5659) (not b!145067) b_and!7813 b_and!7777 (not b_next!5051) (not b!145075) (not bm!5662) (not b!144975) b_and!7819 b_and!7817 (not b!144840) b_and!7823 (not b_next!5057) (not tb!4557) (not b_next!5059) (not b!145091) (not b!145079) (not b_next!5049) (not b!145102) (not d!34484) (not b!145048) (not d!34470) (not b!144855) (not b!145117) (not b!145052) (not b_lambda!2393) (not b!145054) (not b!144977) (not d!34464) (not d!34530) (not b!145061) (not b!144943) (not b_lambda!2397) (not b!145131) (not b!145093) (not b!145103) (not d!34532) (not b!145092) (not b_next!5071) (not b!145053) b_and!7811 (not b!144948) (not b!145043) (not d!34534) (not b!145130) (not b!145107) (not b_next!5073) (not b!145108) (not b!144942) b_and!7781 (not b!144957) (not b!145066) (not b_lambda!2395) (not bm!5660) (not d!34524) (not b!144860) (not b_next!5075) (not bm!5661) (not d!34522) (not b!145049) (not b_next!5069) (not b_next!5053) (not tb!4571) (not b!145129) (not d!34508) (not b!145076) (not b!144962) (not b!145114) (not d!34502) (not b!144854) (not b!145116) b_and!7821 (not b!144974) (not b!144944) b_and!7773 (not b!145118) (not b!145051) (not b!145074))
(check-sat (not b_next!5059) (not b_next!5049) (not b_next!5071) b_and!7811 (not b_next!5073) b_and!7781 b_and!7815 (not b_next!5055) (not b_next!5075) b_and!7821 b_and!7773 b_and!7813 b_and!7777 (not b_next!5051) b_and!7819 b_and!7817 b_and!7823 (not b_next!5057) (not b_next!5069) (not b_next!5053))
(get-model)

(declare-fun d!34554 () Bool)

(declare-fun charsToInt!0 (List!2517) (_ BitVec 32))

(assert (=> d!34554 (= (inv!16 (value!16542 separatorToken!170)) (= (charsToInt!0 (text!3604 (value!16542 separatorToken!170))) (value!16533 (value!16542 separatorToken!170))))))

(declare-fun bs!13117 () Bool)

(assert (= bs!13117 d!34554))

(declare-fun m!127755 () Bool)

(assert (=> bs!13117 m!127755))

(assert (=> b!144977 d!34554))

(declare-fun d!34556 () Bool)

(declare-fun e!86130 () Bool)

(assert (=> d!34556 e!86130))

(declare-fun res!66944 () Bool)

(assert (=> d!34556 (=> (not res!66944) (not e!86130))))

(declare-fun lt!41809 () List!2518)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!352 (List!2518) (InoxSet C!2228))

(assert (=> d!34556 (= res!66944 (= (content!352 lt!41809) ((_ map or) (content!352 call!5665) (content!352 lt!41784))))))

(declare-fun e!86129 () List!2518)

(assert (=> d!34556 (= lt!41809 e!86129)))

(declare-fun c!29711 () Bool)

(assert (=> d!34556 (= c!29711 ((_ is Nil!2508) call!5665))))

(assert (=> d!34556 (= (++!534 call!5665 lt!41784) lt!41809)))

(declare-fun b!145147 () Bool)

(declare-fun res!66943 () Bool)

(assert (=> b!145147 (=> (not res!66943) (not e!86130))))

(assert (=> b!145147 (= res!66943 (= (size!2169 lt!41809) (+ (size!2169 call!5665) (size!2169 lt!41784))))))

(declare-fun b!145146 () Bool)

(assert (=> b!145146 (= e!86129 (Cons!2508 (h!7905 call!5665) (++!534 (t!24018 call!5665) lt!41784)))))

(declare-fun b!145145 () Bool)

(assert (=> b!145145 (= e!86129 lt!41784)))

(declare-fun b!145148 () Bool)

(assert (=> b!145148 (= e!86130 (or (not (= lt!41784 Nil!2508)) (= lt!41809 call!5665)))))

(assert (= (and d!34556 c!29711) b!145145))

(assert (= (and d!34556 (not c!29711)) b!145146))

(assert (= (and d!34556 res!66944) b!145147))

(assert (= (and b!145147 res!66943) b!145148))

(declare-fun m!127757 () Bool)

(assert (=> d!34556 m!127757))

(declare-fun m!127759 () Bool)

(assert (=> d!34556 m!127759))

(declare-fun m!127761 () Bool)

(assert (=> d!34556 m!127761))

(declare-fun m!127763 () Bool)

(assert (=> b!145147 m!127763))

(declare-fun m!127765 () Bool)

(assert (=> b!145147 m!127765))

(declare-fun m!127767 () Bool)

(assert (=> b!145147 m!127767))

(declare-fun m!127769 () Bool)

(assert (=> b!145146 m!127769))

(assert (=> b!144948 d!34556))

(declare-fun d!34558 () Bool)

(declare-fun lt!41812 () Int)

(assert (=> d!34558 (>= lt!41812 0)))

(declare-fun e!86133 () Int)

(assert (=> d!34558 (= lt!41812 e!86133)))

(declare-fun c!29714 () Bool)

(assert (=> d!34558 (= c!29714 ((_ is Nil!2508) (originalCharacters!472 separatorToken!170)))))

(assert (=> d!34558 (= (size!2169 (originalCharacters!472 separatorToken!170)) lt!41812)))

(declare-fun b!145153 () Bool)

(assert (=> b!145153 (= e!86133 0)))

(declare-fun b!145154 () Bool)

(assert (=> b!145154 (= e!86133 (+ 1 (size!2169 (t!24018 (originalCharacters!472 separatorToken!170)))))))

(assert (= (and d!34558 c!29714) b!145153))

(assert (= (and d!34558 (not c!29714)) b!145154))

(declare-fun m!127771 () Bool)

(assert (=> b!145154 m!127771))

(assert (=> b!144855 d!34558))

(declare-fun d!34560 () Bool)

(declare-fun res!66945 () Bool)

(declare-fun e!86134 () Bool)

(assert (=> d!34560 (=> res!66945 e!86134)))

(assert (=> d!34560 (= res!66945 (not ((_ is Cons!2510) (t!24020 rules!1920))))))

(assert (=> d!34560 (= (sepAndNonSepRulesDisjointChars!18 rules!1920 (t!24020 rules!1920)) e!86134)))

(declare-fun b!145155 () Bool)

(declare-fun e!86135 () Bool)

(assert (=> b!145155 (= e!86134 e!86135)))

(declare-fun res!66946 () Bool)

(assert (=> b!145155 (=> (not res!66946) (not e!86135))))

(assert (=> b!145155 (= res!66946 (ruleDisjointCharsFromAllFromOtherType!6 (h!7907 (t!24020 rules!1920)) rules!1920))))

(declare-fun b!145156 () Bool)

(assert (=> b!145156 (= e!86135 (sepAndNonSepRulesDisjointChars!18 rules!1920 (t!24020 (t!24020 rules!1920))))))

(assert (= (and d!34560 (not res!66945)) b!145155))

(assert (= (and b!145155 res!66946) b!145156))

(declare-fun m!127773 () Bool)

(assert (=> b!145155 m!127773))

(declare-fun m!127775 () Bool)

(assert (=> b!145156 m!127775))

(assert (=> b!145067 d!34560))

(declare-fun d!34562 () Bool)

(declare-fun charsToBigInt!0 (List!2517 Int) Int)

(assert (=> d!34562 (= (inv!15 (value!16542 (h!7906 tokens!465))) (= (charsToBigInt!0 (text!3606 (value!16542 (h!7906 tokens!465))) 0) (value!16537 (value!16542 (h!7906 tokens!465)))))))

(declare-fun bs!13118 () Bool)

(assert (= bs!13118 d!34562))

(declare-fun m!127777 () Bool)

(assert (=> bs!13118 m!127777))

(assert (=> b!145048 d!34562))

(declare-fun d!34564 () Bool)

(declare-fun charsToBigInt!1 (List!2517) Int)

(assert (=> d!34564 (= (inv!17 (value!16542 separatorToken!170)) (= (charsToBigInt!1 (text!3605 (value!16542 separatorToken!170))) (value!16534 (value!16542 separatorToken!170))))))

(declare-fun bs!13119 () Bool)

(assert (= bs!13119 d!34564))

(declare-fun m!127779 () Bool)

(assert (=> bs!13119 m!127779))

(assert (=> b!144975 d!34564))

(declare-fun d!34566 () Bool)

(declare-fun c!29717 () Bool)

(assert (=> d!34566 (= c!29717 ((_ is Node!680) (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170)))))))

(declare-fun e!86140 () Bool)

(assert (=> d!34566 (= (inv!3290 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170)))) e!86140)))

(declare-fun b!145163 () Bool)

(declare-fun inv!3294 (Conc!680) Bool)

(assert (=> b!145163 (= e!86140 (inv!3294 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170)))))))

(declare-fun b!145164 () Bool)

(declare-fun e!86141 () Bool)

(assert (=> b!145164 (= e!86140 e!86141)))

(declare-fun res!66949 () Bool)

(assert (=> b!145164 (= res!66949 (not ((_ is Leaf!1234) (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170))))))))

(assert (=> b!145164 (=> res!66949 e!86141)))

(declare-fun b!145165 () Bool)

(declare-fun inv!3295 (Conc!680) Bool)

(assert (=> b!145165 (= e!86141 (inv!3295 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170)))))))

(assert (= (and d!34566 c!29717) b!145163))

(assert (= (and d!34566 (not c!29717)) b!145164))

(assert (= (and b!145164 (not res!66949)) b!145165))

(declare-fun m!127781 () Bool)

(assert (=> b!145163 m!127781))

(declare-fun m!127783 () Bool)

(assert (=> b!145165 m!127783))

(assert (=> b!144860 d!34566))

(declare-fun d!34568 () Bool)

(assert (=> d!34568 true))

(declare-fun lambda!3538 () Int)

(declare-fun order!1225 () Int)

(declare-fun dynLambda!855 (Int Int) Int)

(assert (=> d!34568 (< (dynLambda!850 order!1217 (toValue!1052 (transformation!429 (h!7907 rules!1920)))) (dynLambda!855 order!1225 lambda!3538))))

(declare-fun Forall2!91 (Int) Bool)

(assert (=> d!34568 (= (equivClasses!130 (toChars!911 (transformation!429 (h!7907 rules!1920))) (toValue!1052 (transformation!429 (h!7907 rules!1920)))) (Forall2!91 lambda!3538))))

(declare-fun bs!13120 () Bool)

(assert (= bs!13120 d!34568))

(declare-fun m!127785 () Bool)

(assert (=> bs!13120 m!127785))

(assert (=> b!144962 d!34568))

(declare-fun b!145170 () Bool)

(declare-fun res!66952 () Bool)

(declare-fun e!86145 () Bool)

(assert (=> b!145170 (=> res!66952 e!86145)))

(assert (=> b!145170 (= res!66952 (not ((_ is IntegerValue!1355) (value!16542 (h!7906 (t!24019 tokens!465))))))))

(declare-fun e!86146 () Bool)

(assert (=> b!145170 (= e!86146 e!86145)))

(declare-fun b!145171 () Bool)

(assert (=> b!145171 (= e!86145 (inv!15 (value!16542 (h!7906 (t!24019 tokens!465)))))))

(declare-fun b!145172 () Bool)

(assert (=> b!145172 (= e!86146 (inv!17 (value!16542 (h!7906 (t!24019 tokens!465)))))))

(declare-fun d!34570 () Bool)

(declare-fun c!29719 () Bool)

(assert (=> d!34570 (= c!29719 ((_ is IntegerValue!1353) (value!16542 (h!7906 (t!24019 tokens!465)))))))

(declare-fun e!86144 () Bool)

(assert (=> d!34570 (= (inv!21 (value!16542 (h!7906 (t!24019 tokens!465)))) e!86144)))

(declare-fun b!145173 () Bool)

(assert (=> b!145173 (= e!86144 e!86146)))

(declare-fun c!29718 () Bool)

(assert (=> b!145173 (= c!29718 ((_ is IntegerValue!1354) (value!16542 (h!7906 (t!24019 tokens!465)))))))

(declare-fun b!145174 () Bool)

(assert (=> b!145174 (= e!86144 (inv!16 (value!16542 (h!7906 (t!24019 tokens!465)))))))

(assert (= (and d!34570 c!29719) b!145174))

(assert (= (and d!34570 (not c!29719)) b!145173))

(assert (= (and b!145173 c!29718) b!145172))

(assert (= (and b!145173 (not c!29718)) b!145170))

(assert (= (and b!145170 (not res!66952)) b!145171))

(declare-fun m!127787 () Bool)

(assert (=> b!145171 m!127787))

(declare-fun m!127789 () Bool)

(assert (=> b!145172 m!127789))

(declare-fun m!127791 () Bool)

(assert (=> b!145174 m!127791))

(assert (=> b!145130 d!34570))

(declare-fun d!34572 () Bool)

(declare-fun list!868 (Conc!680) List!2518)

(assert (=> d!34572 (= (list!864 e!85984) (list!868 (c!29663 e!85984)))))

(declare-fun bs!13121 () Bool)

(assert (= bs!13121 d!34572))

(declare-fun m!127793 () Bool)

(assert (=> bs!13121 m!127793))

(assert (=> bm!5659 d!34572))

(declare-fun lt!41815 () Bool)

(declare-fun d!34574 () Bool)

(assert (=> d!34574 (= lt!41815 (isEmpty!971 (list!864 (_2!1465 (lex!157 thiss!17480 rules!1920 (print!82 thiss!17480 (singletonSeq!15 separatorToken!170)))))))))

(declare-fun isEmpty!973 (Conc!680) Bool)

(assert (=> d!34574 (= lt!41815 (isEmpty!973 (c!29663 (_2!1465 (lex!157 thiss!17480 rules!1920 (print!82 thiss!17480 (singletonSeq!15 separatorToken!170)))))))))

(assert (=> d!34574 (= (isEmpty!972 (_2!1465 (lex!157 thiss!17480 rules!1920 (print!82 thiss!17480 (singletonSeq!15 separatorToken!170))))) lt!41815)))

(declare-fun bs!13122 () Bool)

(assert (= bs!13122 d!34574))

(declare-fun m!127795 () Bool)

(assert (=> bs!13122 m!127795))

(assert (=> bs!13122 m!127795))

(declare-fun m!127797 () Bool)

(assert (=> bs!13122 m!127797))

(declare-fun m!127799 () Bool)

(assert (=> bs!13122 m!127799))

(assert (=> b!145076 d!34574))

(declare-fun lt!41841 () tuple2!2498)

(declare-fun e!86190 () Bool)

(declare-fun b!145235 () Bool)

(assert (=> b!145235 (= e!86190 (= (_2!1465 lt!41841) (print!82 thiss!17480 (singletonSeq!15 separatorToken!170))))))

(declare-fun b!145236 () Bool)

(declare-fun e!86191 () Bool)

(declare-datatypes ((tuple2!2500 0))(
  ( (tuple2!2501 (_1!1466 List!2519) (_2!1466 List!2518)) )
))
(declare-fun lexList!88 (LexerInterface!315 List!2520 List!2518) tuple2!2500)

(assert (=> b!145236 (= e!86191 (= (list!864 (_2!1465 lt!41841)) (_2!1466 (lexList!88 thiss!17480 rules!1920 (list!864 (print!82 thiss!17480 (singletonSeq!15 separatorToken!170)))))))))

(declare-fun b!145237 () Bool)

(declare-fun e!86192 () Bool)

(declare-fun isEmpty!974 (BalanceConc!1370) Bool)

(assert (=> b!145237 (= e!86192 (not (isEmpty!974 (_1!1465 lt!41841))))))

(declare-fun b!145238 () Bool)

(declare-fun res!66981 () Bool)

(assert (=> b!145238 (=> (not res!66981) (not e!86191))))

(assert (=> b!145238 (= res!66981 (= (list!865 (_1!1465 lt!41841)) (_1!1466 (lexList!88 thiss!17480 rules!1920 (list!864 (print!82 thiss!17480 (singletonSeq!15 separatorToken!170)))))))))

(declare-fun d!34576 () Bool)

(assert (=> d!34576 e!86191))

(declare-fun res!66980 () Bool)

(assert (=> d!34576 (=> (not res!66980) (not e!86191))))

(assert (=> d!34576 (= res!66980 e!86190)))

(declare-fun c!29736 () Bool)

(assert (=> d!34576 (= c!29736 (> (size!2165 (_1!1465 lt!41841)) 0))))

(declare-fun lexTailRecV2!75 (LexerInterface!315 List!2520 BalanceConc!1368 BalanceConc!1368 BalanceConc!1368 BalanceConc!1370) tuple2!2498)

(assert (=> d!34576 (= lt!41841 (lexTailRecV2!75 thiss!17480 rules!1920 (print!82 thiss!17480 (singletonSeq!15 separatorToken!170)) (BalanceConc!1369 Empty!680) (print!82 thiss!17480 (singletonSeq!15 separatorToken!170)) (BalanceConc!1371 Empty!681)))))

(assert (=> d!34576 (= (lex!157 thiss!17480 rules!1920 (print!82 thiss!17480 (singletonSeq!15 separatorToken!170))) lt!41841)))

(declare-fun b!145239 () Bool)

(assert (=> b!145239 (= e!86190 e!86192)))

(declare-fun res!66982 () Bool)

(declare-fun size!2172 (BalanceConc!1368) Int)

(assert (=> b!145239 (= res!66982 (< (size!2172 (_2!1465 lt!41841)) (size!2172 (print!82 thiss!17480 (singletonSeq!15 separatorToken!170)))))))

(assert (=> b!145239 (=> (not res!66982) (not e!86192))))

(assert (= (and d!34576 c!29736) b!145239))

(assert (= (and d!34576 (not c!29736)) b!145235))

(assert (= (and b!145239 res!66982) b!145237))

(assert (= (and d!34576 res!66980) b!145238))

(assert (= (and b!145238 res!66981) b!145236))

(declare-fun m!127851 () Bool)

(assert (=> d!34576 m!127851))

(assert (=> d!34576 m!127707))

(assert (=> d!34576 m!127707))

(declare-fun m!127853 () Bool)

(assert (=> d!34576 m!127853))

(declare-fun m!127855 () Bool)

(assert (=> b!145237 m!127855))

(declare-fun m!127857 () Bool)

(assert (=> b!145239 m!127857))

(assert (=> b!145239 m!127707))

(declare-fun m!127859 () Bool)

(assert (=> b!145239 m!127859))

(declare-fun m!127861 () Bool)

(assert (=> b!145236 m!127861))

(assert (=> b!145236 m!127707))

(declare-fun m!127863 () Bool)

(assert (=> b!145236 m!127863))

(assert (=> b!145236 m!127863))

(declare-fun m!127865 () Bool)

(assert (=> b!145236 m!127865))

(declare-fun m!127867 () Bool)

(assert (=> b!145238 m!127867))

(assert (=> b!145238 m!127707))

(assert (=> b!145238 m!127863))

(assert (=> b!145238 m!127863))

(assert (=> b!145238 m!127865))

(assert (=> b!145076 d!34576))

(declare-fun d!34612 () Bool)

(declare-fun lt!41849 () BalanceConc!1368)

(declare-fun printList!44 (LexerInterface!315 List!2519) List!2518)

(assert (=> d!34612 (= (list!864 lt!41849) (printList!44 thiss!17480 (list!865 (singletonSeq!15 separatorToken!170))))))

(assert (=> d!34612 (= lt!41849 (printTailRec!45 thiss!17480 (singletonSeq!15 separatorToken!170) 0 (BalanceConc!1369 Empty!680)))))

(assert (=> d!34612 (= (print!82 thiss!17480 (singletonSeq!15 separatorToken!170)) lt!41849)))

(declare-fun bs!13136 () Bool)

(assert (= bs!13136 d!34612))

(declare-fun m!127897 () Bool)

(assert (=> bs!13136 m!127897))

(assert (=> bs!13136 m!127705))

(assert (=> bs!13136 m!127713))

(assert (=> bs!13136 m!127713))

(declare-fun m!127899 () Bool)

(assert (=> bs!13136 m!127899))

(assert (=> bs!13136 m!127705))

(declare-fun m!127901 () Bool)

(assert (=> bs!13136 m!127901))

(assert (=> b!145076 d!34612))

(declare-fun d!34624 () Bool)

(declare-fun e!86202 () Bool)

(assert (=> d!34624 e!86202))

(declare-fun res!66991 () Bool)

(assert (=> d!34624 (=> (not res!66991) (not e!86202))))

(declare-fun lt!41853 () BalanceConc!1370)

(assert (=> d!34624 (= res!66991 (= (list!865 lt!41853) (Cons!2509 separatorToken!170 Nil!2509)))))

(declare-fun singleton!12 (Token!602) BalanceConc!1370)

(assert (=> d!34624 (= lt!41853 (singleton!12 separatorToken!170))))

(assert (=> d!34624 (= (singletonSeq!15 separatorToken!170) lt!41853)))

(declare-fun b!145252 () Bool)

(declare-fun isBalanced!195 (Conc!681) Bool)

(assert (=> b!145252 (= e!86202 (isBalanced!195 (c!29665 lt!41853)))))

(assert (= (and d!34624 res!66991) b!145252))

(declare-fun m!127909 () Bool)

(assert (=> d!34624 m!127909))

(declare-fun m!127911 () Bool)

(assert (=> d!34624 m!127911))

(declare-fun m!127913 () Bool)

(assert (=> b!145252 m!127913))

(assert (=> b!145076 d!34624))

(declare-fun d!34632 () Bool)

(declare-fun c!29738 () Bool)

(assert (=> d!34632 (= c!29738 ((_ is Node!680) (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465))))))))

(declare-fun e!86203 () Bool)

(assert (=> d!34632 (= (inv!3290 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465))))) e!86203)))

(declare-fun b!145253 () Bool)

(assert (=> b!145253 (= e!86203 (inv!3294 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465))))))))

(declare-fun b!145254 () Bool)

(declare-fun e!86204 () Bool)

(assert (=> b!145254 (= e!86203 e!86204)))

(declare-fun res!66992 () Bool)

(assert (=> b!145254 (= res!66992 (not ((_ is Leaf!1234) (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465)))))))))

(assert (=> b!145254 (=> res!66992 e!86204)))

(declare-fun b!145255 () Bool)

(assert (=> b!145255 (= e!86204 (inv!3295 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465))))))))

(assert (= (and d!34632 c!29738) b!145253))

(assert (= (and d!34632 (not c!29738)) b!145254))

(assert (= (and b!145254 (not res!66992)) b!145255))

(declare-fun m!127915 () Bool)

(assert (=> b!145253 m!127915))

(declare-fun m!127917 () Bool)

(assert (=> b!145255 m!127917))

(assert (=> b!145055 d!34632))

(declare-fun d!34634 () Bool)

(declare-fun e!86206 () Bool)

(assert (=> d!34634 e!86206))

(declare-fun res!66994 () Bool)

(assert (=> d!34634 (=> (not res!66994) (not e!86206))))

(declare-fun lt!41856 () List!2518)

(assert (=> d!34634 (= res!66994 (= (content!352 lt!41856) ((_ map or) (content!352 call!5664) (content!352 (ite c!29700 lt!41784 call!5668)))))))

(declare-fun e!86205 () List!2518)

(assert (=> d!34634 (= lt!41856 e!86205)))

(declare-fun c!29739 () Bool)

(assert (=> d!34634 (= c!29739 ((_ is Nil!2508) call!5664))))

(assert (=> d!34634 (= (++!534 call!5664 (ite c!29700 lt!41784 call!5668)) lt!41856)))

(declare-fun b!145258 () Bool)

(declare-fun res!66993 () Bool)

(assert (=> b!145258 (=> (not res!66993) (not e!86206))))

(assert (=> b!145258 (= res!66993 (= (size!2169 lt!41856) (+ (size!2169 call!5664) (size!2169 (ite c!29700 lt!41784 call!5668)))))))

(declare-fun b!145257 () Bool)

(assert (=> b!145257 (= e!86205 (Cons!2508 (h!7905 call!5664) (++!534 (t!24018 call!5664) (ite c!29700 lt!41784 call!5668))))))

(declare-fun b!145256 () Bool)

(assert (=> b!145256 (= e!86205 (ite c!29700 lt!41784 call!5668))))

(declare-fun b!145259 () Bool)

(assert (=> b!145259 (= e!86206 (or (not (= (ite c!29700 lt!41784 call!5668) Nil!2508)) (= lt!41856 call!5664)))))

(assert (= (and d!34634 c!29739) b!145256))

(assert (= (and d!34634 (not c!29739)) b!145257))

(assert (= (and d!34634 res!66994) b!145258))

(assert (= (and b!145258 res!66993) b!145259))

(declare-fun m!127919 () Bool)

(assert (=> d!34634 m!127919))

(declare-fun m!127921 () Bool)

(assert (=> d!34634 m!127921))

(declare-fun m!127923 () Bool)

(assert (=> d!34634 m!127923))

(declare-fun m!127925 () Bool)

(assert (=> b!145258 m!127925))

(declare-fun m!127927 () Bool)

(assert (=> b!145258 m!127927))

(declare-fun m!127929 () Bool)

(assert (=> b!145258 m!127929))

(declare-fun m!127931 () Bool)

(assert (=> b!145257 m!127931))

(assert (=> bm!5660 d!34634))

(declare-fun bs!13144 () Bool)

(declare-fun d!34636 () Bool)

(assert (= bs!13144 (and d!34636 b!144795)))

(declare-fun lambda!3552 () Int)

(assert (=> bs!13144 (not (= lambda!3552 lambda!3516))))

(declare-fun bs!13145 () Bool)

(assert (= bs!13145 (and d!34636 b!144944)))

(assert (=> bs!13145 (= lambda!3552 lambda!3527)))

(declare-fun bs!13146 () Bool)

(assert (= bs!13146 (and d!34636 d!34508)))

(assert (=> bs!13146 (= lambda!3552 lambda!3532)))

(declare-fun b!145296 () Bool)

(declare-fun e!86231 () Bool)

(assert (=> b!145296 (= e!86231 true)))

(declare-fun b!145295 () Bool)

(declare-fun e!86230 () Bool)

(assert (=> b!145295 (= e!86230 e!86231)))

(declare-fun b!145294 () Bool)

(declare-fun e!86229 () Bool)

(assert (=> b!145294 (= e!86229 e!86230)))

(assert (=> d!34636 e!86229))

(assert (= b!145295 b!145296))

(assert (= b!145294 b!145295))

(assert (= (and d!34636 ((_ is Cons!2510) rules!1920)) b!145294))

(assert (=> b!145296 (< (dynLambda!850 order!1217 (toValue!1052 (transformation!429 (h!7907 rules!1920)))) (dynLambda!851 order!1219 lambda!3552))))

(assert (=> b!145296 (< (dynLambda!852 order!1221 (toChars!911 (transformation!429 (h!7907 rules!1920)))) (dynLambda!851 order!1219 lambda!3552))))

(assert (=> d!34636 true))

(declare-fun lt!41891 () Bool)

(assert (=> d!34636 (= lt!41891 (forall!389 (list!865 lt!41740) lambda!3552))))

(declare-fun e!86227 () Bool)

(assert (=> d!34636 (= lt!41891 e!86227)))

(declare-fun res!67012 () Bool)

(assert (=> d!34636 (=> res!67012 e!86227)))

(assert (=> d!34636 (= res!67012 (not ((_ is Cons!2509) (list!865 lt!41740))))))

(assert (=> d!34636 (not (isEmpty!968 rules!1920))))

(assert (=> d!34636 (= (rulesProduceEachTokenIndividuallyList!67 thiss!17480 rules!1920 (list!865 lt!41740)) lt!41891)))

(declare-fun b!145292 () Bool)

(declare-fun e!86228 () Bool)

(assert (=> b!145292 (= e!86227 e!86228)))

(declare-fun res!67011 () Bool)

(assert (=> b!145292 (=> (not res!67011) (not e!86228))))

(assert (=> b!145292 (= res!67011 (rulesProduceIndividualToken!64 thiss!17480 rules!1920 (h!7906 (list!865 lt!41740))))))

(declare-fun b!145293 () Bool)

(assert (=> b!145293 (= e!86228 (rulesProduceEachTokenIndividuallyList!67 thiss!17480 rules!1920 (t!24019 (list!865 lt!41740))))))

(assert (= (and d!34636 (not res!67012)) b!145292))

(assert (= (and b!145292 res!67011) b!145293))

(assert (=> d!34636 m!127537))

(declare-fun m!128001 () Bool)

(assert (=> d!34636 m!128001))

(assert (=> d!34636 m!127437))

(declare-fun m!128003 () Bool)

(assert (=> b!145292 m!128003))

(declare-fun m!128005 () Bool)

(assert (=> b!145293 m!128005))

(assert (=> b!145043 d!34636))

(declare-fun d!34652 () Bool)

(declare-fun list!869 (Conc!681) List!2519)

(assert (=> d!34652 (= (list!865 lt!41740) (list!869 (c!29665 lt!41740)))))

(declare-fun bs!13147 () Bool)

(assert (= bs!13147 d!34652))

(declare-fun m!128007 () Bool)

(assert (=> bs!13147 m!128007))

(assert (=> b!145043 d!34652))

(declare-fun d!34654 () Bool)

(declare-fun res!67013 () Bool)

(declare-fun e!86232 () Bool)

(assert (=> d!34654 (=> res!67013 e!86232)))

(assert (=> d!34654 (= res!67013 ((_ is Nil!2509) (list!865 lt!41740)))))

(assert (=> d!34654 (= (forall!389 (list!865 lt!41740) lambda!3532) e!86232)))

(declare-fun b!145297 () Bool)

(declare-fun e!86233 () Bool)

(assert (=> b!145297 (= e!86232 e!86233)))

(declare-fun res!67014 () Bool)

(assert (=> b!145297 (=> (not res!67014) (not e!86233))))

(assert (=> b!145297 (= res!67014 (dynLambda!853 lambda!3532 (h!7906 (list!865 lt!41740))))))

(declare-fun b!145298 () Bool)

(assert (=> b!145298 (= e!86233 (forall!389 (t!24019 (list!865 lt!41740)) lambda!3532))))

(assert (= (and d!34654 (not res!67013)) b!145297))

(assert (= (and b!145297 res!67014) b!145298))

(declare-fun b_lambda!2407 () Bool)

(assert (=> (not b_lambda!2407) (not b!145297)))

(declare-fun m!128009 () Bool)

(assert (=> b!145297 m!128009))

(declare-fun m!128011 () Bool)

(assert (=> b!145298 m!128011))

(assert (=> d!34508 d!34654))

(assert (=> d!34508 d!34652))

(declare-fun d!34656 () Bool)

(declare-fun lt!41892 () Bool)

(assert (=> d!34656 (= lt!41892 (forall!389 (list!865 lt!41740) lambda!3532))))

(assert (=> d!34656 (= lt!41892 (forall!391 (c!29665 lt!41740) lambda!3532))))

(assert (=> d!34656 (= (forall!388 lt!41740 lambda!3532) lt!41892)))

(declare-fun bs!13148 () Bool)

(assert (= bs!13148 d!34656))

(assert (=> bs!13148 m!127537))

(assert (=> bs!13148 m!127537))

(assert (=> bs!13148 m!127667))

(declare-fun m!128013 () Bool)

(assert (=> bs!13148 m!128013))

(assert (=> d!34508 d!34656))

(assert (=> d!34508 d!34506))

(declare-fun d!34658 () Bool)

(declare-fun e!86235 () Bool)

(assert (=> d!34658 e!86235))

(declare-fun res!67016 () Bool)

(assert (=> d!34658 (=> (not res!67016) (not e!86235))))

(declare-fun lt!41893 () List!2518)

(assert (=> d!34658 (= res!67016 (= (content!352 lt!41893) ((_ map or) (content!352 (list!864 (charsOf!92 (h!7906 tokens!465)))) (content!352 lt!41784))))))

(declare-fun e!86234 () List!2518)

(assert (=> d!34658 (= lt!41893 e!86234)))

(declare-fun c!29747 () Bool)

(assert (=> d!34658 (= c!29747 ((_ is Nil!2508) (list!864 (charsOf!92 (h!7906 tokens!465)))))))

(assert (=> d!34658 (= (++!534 (list!864 (charsOf!92 (h!7906 tokens!465))) lt!41784) lt!41893)))

(declare-fun b!145301 () Bool)

(declare-fun res!67015 () Bool)

(assert (=> b!145301 (=> (not res!67015) (not e!86235))))

(assert (=> b!145301 (= res!67015 (= (size!2169 lt!41893) (+ (size!2169 (list!864 (charsOf!92 (h!7906 tokens!465)))) (size!2169 lt!41784))))))

(declare-fun b!145300 () Bool)

(assert (=> b!145300 (= e!86234 (Cons!2508 (h!7905 (list!864 (charsOf!92 (h!7906 tokens!465)))) (++!534 (t!24018 (list!864 (charsOf!92 (h!7906 tokens!465)))) lt!41784)))))

(declare-fun b!145299 () Bool)

(assert (=> b!145299 (= e!86234 lt!41784)))

(declare-fun b!145302 () Bool)

(assert (=> b!145302 (= e!86235 (or (not (= lt!41784 Nil!2508)) (= lt!41893 (list!864 (charsOf!92 (h!7906 tokens!465))))))))

(assert (= (and d!34658 c!29747) b!145299))

(assert (= (and d!34658 (not c!29747)) b!145300))

(assert (= (and d!34658 res!67016) b!145301))

(assert (= (and b!145301 res!67015) b!145302))

(declare-fun m!128015 () Bool)

(assert (=> d!34658 m!128015))

(assert (=> d!34658 m!127617))

(declare-fun m!128017 () Bool)

(assert (=> d!34658 m!128017))

(assert (=> d!34658 m!127761))

(declare-fun m!128019 () Bool)

(assert (=> b!145301 m!128019))

(assert (=> b!145301 m!127617))

(declare-fun m!128021 () Bool)

(assert (=> b!145301 m!128021))

(assert (=> b!145301 m!127767))

(declare-fun m!128023 () Bool)

(assert (=> b!145300 m!128023))

(assert (=> b!144944 d!34658))

(declare-fun bs!13149 () Bool)

(declare-fun b!145306 () Bool)

(assert (= bs!13149 (and b!145306 b!144795)))

(declare-fun lambda!3553 () Int)

(assert (=> bs!13149 (not (= lambda!3553 lambda!3516))))

(declare-fun bs!13150 () Bool)

(assert (= bs!13150 (and b!145306 b!144944)))

(assert (=> bs!13150 (= lambda!3553 lambda!3527)))

(declare-fun bs!13151 () Bool)

(assert (= bs!13151 (and b!145306 d!34508)))

(assert (=> bs!13151 (= lambda!3553 lambda!3532)))

(declare-fun bs!13152 () Bool)

(assert (= bs!13152 (and b!145306 d!34636)))

(assert (=> bs!13152 (= lambda!3553 lambda!3552)))

(declare-fun b!145313 () Bool)

(declare-fun e!86242 () Bool)

(assert (=> b!145313 (= e!86242 true)))

(declare-fun b!145312 () Bool)

(declare-fun e!86241 () Bool)

(assert (=> b!145312 (= e!86241 e!86242)))

(declare-fun b!145311 () Bool)

(declare-fun e!86240 () Bool)

(assert (=> b!145311 (= e!86240 e!86241)))

(assert (=> b!145306 e!86240))

(assert (= b!145312 b!145313))

(assert (= b!145311 b!145312))

(assert (= (and b!145306 ((_ is Cons!2510) rules!1920)) b!145311))

(assert (=> b!145313 (< (dynLambda!850 order!1217 (toValue!1052 (transformation!429 (h!7907 rules!1920)))) (dynLambda!851 order!1219 lambda!3553))))

(assert (=> b!145313 (< (dynLambda!852 order!1221 (toChars!911 (transformation!429 (h!7907 rules!1920)))) (dynLambda!851 order!1219 lambda!3553))))

(assert (=> b!145306 true))

(declare-fun b!145304 () Bool)

(declare-fun e!86236 () BalanceConc!1368)

(assert (=> b!145304 (= e!86236 (charsOf!92 separatorToken!170))))

(declare-fun b!145305 () Bool)

(declare-fun e!86238 () List!2518)

(assert (=> b!145305 (= e!86238 Nil!2508)))

(assert (=> b!145305 (= (print!82 thiss!17480 (singletonSeq!15 (h!7906 (t!24019 tokens!465)))) (printTailRec!45 thiss!17480 (singletonSeq!15 (h!7906 (t!24019 tokens!465))) 0 (BalanceConc!1369 Empty!680)))))

(declare-fun lt!41896 () Unit!1860)

(declare-fun Unit!1864 () Unit!1860)

(assert (=> b!145305 (= lt!41896 Unit!1864)))

(declare-fun lt!41894 () Unit!1860)

(declare-fun lt!41895 () List!2518)

(declare-fun call!5673 () List!2518)

(assert (=> b!145305 (= lt!41894 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!4 thiss!17480 rules!1920 call!5673 lt!41895))))

(assert (=> b!145305 false))

(declare-fun lt!41898 () Unit!1860)

(declare-fun Unit!1865 () Unit!1860)

(assert (=> b!145305 (= lt!41898 Unit!1865)))

(declare-fun e!86239 () List!2518)

(declare-fun e!86237 () List!2518)

(assert (=> b!145306 (= e!86239 e!86237)))

(declare-fun lt!41899 () Unit!1860)

(assert (=> b!145306 (= lt!41899 (forallContained!40 (t!24019 tokens!465) lambda!3553 (h!7906 (t!24019 tokens!465))))))

(assert (=> b!145306 (= lt!41895 (printWithSeparatorTokenWhenNeededList!8 thiss!17480 rules!1920 (t!24019 (t!24019 tokens!465)) separatorToken!170))))

(declare-fun lt!41897 () Option!213)

(assert (=> b!145306 (= lt!41897 (maxPrefix!97 thiss!17480 rules!1920 (++!534 (list!864 (charsOf!92 (h!7906 (t!24019 tokens!465)))) lt!41895)))))

(declare-fun c!29751 () Bool)

(assert (=> b!145306 (= c!29751 (and ((_ is Some!212) lt!41897) (= (_1!1464 (v!13567 lt!41897)) (h!7906 (t!24019 tokens!465)))))))

(declare-fun b!145307 () Bool)

(declare-fun c!29750 () Bool)

(assert (=> b!145307 (= c!29750 (and ((_ is Some!212) lt!41897) (not (= (_1!1464 (v!13567 lt!41897)) (h!7906 (t!24019 tokens!465))))))))

(assert (=> b!145307 (= e!86237 e!86238)))

(declare-fun bm!5664 () Bool)

(assert (=> bm!5664 (= call!5673 (list!864 e!86236))))

(declare-fun c!29749 () Bool)

(assert (=> bm!5664 (= c!29749 c!29750)))

(declare-fun b!145308 () Bool)

(declare-fun call!5672 () BalanceConc!1368)

(assert (=> b!145308 (= e!86236 call!5672)))

(declare-fun call!5670 () List!2518)

(declare-fun call!5669 () List!2518)

(declare-fun bm!5665 () Bool)

(assert (=> bm!5665 (= call!5670 (++!534 call!5669 (ite c!29751 lt!41895 call!5673)))))

(declare-fun bm!5666 () Bool)

(declare-fun call!5671 () BalanceConc!1368)

(assert (=> bm!5666 (= call!5671 (charsOf!92 (h!7906 (t!24019 tokens!465))))))

(declare-fun b!145309 () Bool)

(assert (=> b!145309 (= e!86239 Nil!2508)))

(declare-fun bm!5667 () Bool)

(assert (=> bm!5667 (= call!5669 (list!864 (ite c!29751 call!5671 call!5672)))))

(declare-fun b!145303 () Bool)

(assert (=> b!145303 (= e!86237 call!5670)))

(declare-fun d!34660 () Bool)

(declare-fun c!29748 () Bool)

(assert (=> d!34660 (= c!29748 ((_ is Cons!2509) (t!24019 tokens!465)))))

(assert (=> d!34660 (= (printWithSeparatorTokenWhenNeededList!8 thiss!17480 rules!1920 (t!24019 tokens!465) separatorToken!170) e!86239)))

(declare-fun b!145310 () Bool)

(assert (=> b!145310 (= e!86238 (++!534 call!5670 lt!41895))))

(declare-fun bm!5668 () Bool)

(assert (=> bm!5668 (= call!5672 call!5671)))

(assert (= (and d!34660 c!29748) b!145306))

(assert (= (and d!34660 (not c!29748)) b!145309))

(assert (= (and b!145306 c!29751) b!145303))

(assert (= (and b!145306 (not c!29751)) b!145307))

(assert (= (and b!145307 c!29750) b!145310))

(assert (= (and b!145307 (not c!29750)) b!145305))

(assert (= (or b!145310 b!145305) bm!5668))

(assert (= (or b!145310 b!145305) bm!5664))

(assert (= (and bm!5664 c!29749) b!145304))

(assert (= (and bm!5664 (not c!29749)) b!145308))

(assert (= (or b!145303 bm!5668) bm!5666))

(assert (= (or b!145303 b!145310) bm!5667))

(assert (= (or b!145303 b!145310) bm!5665))

(declare-fun m!128025 () Bool)

(assert (=> bm!5666 m!128025))

(declare-fun m!128027 () Bool)

(assert (=> b!145310 m!128027))

(declare-fun m!128029 () Bool)

(assert (=> bm!5664 m!128029))

(declare-fun m!128031 () Bool)

(assert (=> b!145305 m!128031))

(assert (=> b!145305 m!128031))

(declare-fun m!128033 () Bool)

(assert (=> b!145305 m!128033))

(assert (=> b!145305 m!128031))

(declare-fun m!128035 () Bool)

(assert (=> b!145305 m!128035))

(declare-fun m!128037 () Bool)

(assert (=> b!145305 m!128037))

(declare-fun m!128039 () Bool)

(assert (=> bm!5667 m!128039))

(assert (=> b!145304 m!127609))

(declare-fun m!128041 () Bool)

(assert (=> b!145306 m!128041))

(declare-fun m!128043 () Bool)

(assert (=> b!145306 m!128043))

(declare-fun m!128045 () Bool)

(assert (=> b!145306 m!128045))

(assert (=> b!145306 m!128025))

(declare-fun m!128047 () Bool)

(assert (=> b!145306 m!128047))

(assert (=> b!145306 m!128025))

(declare-fun m!128049 () Bool)

(assert (=> b!145306 m!128049))

(assert (=> b!145306 m!128047))

(assert (=> b!145306 m!128041))

(declare-fun m!128051 () Bool)

(assert (=> bm!5665 m!128051))

(assert (=> b!144944 d!34660))

(declare-fun d!34662 () Bool)

(assert (=> d!34662 (= (list!864 (charsOf!92 (h!7906 tokens!465))) (list!868 (c!29663 (charsOf!92 (h!7906 tokens!465)))))))

(declare-fun bs!13153 () Bool)

(assert (= bs!13153 d!34662))

(declare-fun m!128053 () Bool)

(assert (=> bs!13153 m!128053))

(assert (=> b!144944 d!34662))

(declare-fun d!34664 () Bool)

(declare-fun lt!41902 () BalanceConc!1368)

(assert (=> d!34664 (= (list!864 lt!41902) (originalCharacters!472 (h!7906 tokens!465)))))

(assert (=> d!34664 (= lt!41902 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465))))))

(assert (=> d!34664 (= (charsOf!92 (h!7906 tokens!465)) lt!41902)))

(declare-fun b_lambda!2409 () Bool)

(assert (=> (not b_lambda!2409) (not d!34664)))

(assert (=> d!34664 t!24071))

(declare-fun b_and!7845 () Bool)

(assert (= b_and!7819 (and (=> t!24071 result!6918) b_and!7845)))

(assert (=> d!34664 t!24065))

(declare-fun b_and!7847 () Bool)

(assert (= b_and!7815 (and (=> t!24065 result!6910) b_and!7847)))

(assert (=> d!34664 t!24075))

(declare-fun b_and!7849 () Bool)

(assert (= b_and!7823 (and (=> t!24075 result!6926) b_and!7849)))

(assert (=> d!34664 t!24063))

(declare-fun b_and!7851 () Bool)

(assert (= b_and!7813 (and (=> t!24063 result!6908) b_and!7851)))

(assert (=> d!34664 t!24061))

(declare-fun b_and!7853 () Bool)

(assert (= b_and!7811 (and (=> t!24061 result!6906) b_and!7853)))

(declare-fun m!128055 () Bool)

(assert (=> d!34664 m!128055))

(assert (=> d!34664 m!127691))

(assert (=> b!144944 d!34664))

(declare-fun d!34666 () Bool)

(assert (=> d!34666 (dynLambda!853 lambda!3527 (h!7906 tokens!465))))

(declare-fun lt!41905 () Unit!1860)

(declare-fun choose!1727 (List!2519 Int Token!602) Unit!1860)

(assert (=> d!34666 (= lt!41905 (choose!1727 tokens!465 lambda!3527 (h!7906 tokens!465)))))

(declare-fun e!86245 () Bool)

(assert (=> d!34666 e!86245))

(declare-fun res!67019 () Bool)

(assert (=> d!34666 (=> (not res!67019) (not e!86245))))

(assert (=> d!34666 (= res!67019 (forall!389 tokens!465 lambda!3527))))

(assert (=> d!34666 (= (forallContained!40 tokens!465 lambda!3527 (h!7906 tokens!465)) lt!41905)))

(declare-fun b!145316 () Bool)

(declare-fun contains!397 (List!2519 Token!602) Bool)

(assert (=> b!145316 (= e!86245 (contains!397 tokens!465 (h!7906 tokens!465)))))

(assert (= (and d!34666 res!67019) b!145316))

(declare-fun b_lambda!2411 () Bool)

(assert (=> (not b_lambda!2411) (not d!34666)))

(declare-fun m!128057 () Bool)

(assert (=> d!34666 m!128057))

(declare-fun m!128059 () Bool)

(assert (=> d!34666 m!128059))

(declare-fun m!128061 () Bool)

(assert (=> d!34666 m!128061))

(declare-fun m!128063 () Bool)

(assert (=> b!145316 m!128063))

(assert (=> b!144944 d!34666))

(declare-fun b!145335 () Bool)

(declare-fun res!67038 () Bool)

(declare-fun e!86253 () Bool)

(assert (=> b!145335 (=> (not res!67038) (not e!86253))))

(declare-fun lt!41916 () Option!213)

(declare-fun get!680 (Option!213) tuple2!2496)

(assert (=> b!145335 (= res!67038 (= (++!534 (list!864 (charsOf!92 (_1!1464 (get!680 lt!41916)))) (_2!1464 (get!680 lt!41916))) (++!534 (list!864 (charsOf!92 (h!7906 tokens!465))) lt!41784)))))

(declare-fun b!145336 () Bool)

(declare-fun e!86252 () Bool)

(assert (=> b!145336 (= e!86252 e!86253)))

(declare-fun res!67039 () Bool)

(assert (=> b!145336 (=> (not res!67039) (not e!86253))))

(declare-fun isDefined!83 (Option!213) Bool)

(assert (=> b!145336 (= res!67039 (isDefined!83 lt!41916))))

(declare-fun bm!5671 () Bool)

(declare-fun call!5676 () Option!213)

(declare-fun maxPrefixOneRule!49 (LexerInterface!315 Rule!658 List!2518) Option!213)

(assert (=> bm!5671 (= call!5676 (maxPrefixOneRule!49 thiss!17480 (h!7907 rules!1920) (++!534 (list!864 (charsOf!92 (h!7906 tokens!465))) lt!41784)))))

(declare-fun b!145337 () Bool)

(declare-fun res!67035 () Bool)

(assert (=> b!145337 (=> (not res!67035) (not e!86253))))

(declare-fun matchR!61 (Regex!653 List!2518) Bool)

(assert (=> b!145337 (= res!67035 (matchR!61 (regex!429 (rule!936 (_1!1464 (get!680 lt!41916)))) (list!864 (charsOf!92 (_1!1464 (get!680 lt!41916))))))))

(declare-fun b!145338 () Bool)

(declare-fun e!86254 () Option!213)

(declare-fun lt!41920 () Option!213)

(declare-fun lt!41917 () Option!213)

(assert (=> b!145338 (= e!86254 (ite (and ((_ is None!212) lt!41920) ((_ is None!212) lt!41917)) None!212 (ite ((_ is None!212) lt!41917) lt!41920 (ite ((_ is None!212) lt!41920) lt!41917 (ite (>= (size!2164 (_1!1464 (v!13567 lt!41920))) (size!2164 (_1!1464 (v!13567 lt!41917)))) lt!41920 lt!41917)))))))

(assert (=> b!145338 (= lt!41920 call!5676)))

(assert (=> b!145338 (= lt!41917 (maxPrefix!97 thiss!17480 (t!24020 rules!1920) (++!534 (list!864 (charsOf!92 (h!7906 tokens!465))) lt!41784)))))

(declare-fun b!145339 () Bool)

(declare-fun res!67040 () Bool)

(assert (=> b!145339 (=> (not res!67040) (not e!86253))))

(assert (=> b!145339 (= res!67040 (= (list!864 (charsOf!92 (_1!1464 (get!680 lt!41916)))) (originalCharacters!472 (_1!1464 (get!680 lt!41916)))))))

(declare-fun b!145340 () Bool)

(declare-fun contains!398 (List!2520 Rule!658) Bool)

(assert (=> b!145340 (= e!86253 (contains!398 rules!1920 (rule!936 (_1!1464 (get!680 lt!41916)))))))

(declare-fun b!145341 () Bool)

(assert (=> b!145341 (= e!86254 call!5676)))

(declare-fun b!145343 () Bool)

(declare-fun res!67037 () Bool)

(assert (=> b!145343 (=> (not res!67037) (not e!86253))))

(assert (=> b!145343 (= res!67037 (< (size!2169 (_2!1464 (get!680 lt!41916))) (size!2169 (++!534 (list!864 (charsOf!92 (h!7906 tokens!465))) lt!41784))))))

(declare-fun b!145342 () Bool)

(declare-fun res!67036 () Bool)

(assert (=> b!145342 (=> (not res!67036) (not e!86253))))

(declare-fun apply!310 (TokenValueInjection!674 BalanceConc!1368) TokenValue!451)

(declare-fun seqFromList!246 (List!2518) BalanceConc!1368)

(assert (=> b!145342 (= res!67036 (= (value!16542 (_1!1464 (get!680 lt!41916))) (apply!310 (transformation!429 (rule!936 (_1!1464 (get!680 lt!41916)))) (seqFromList!246 (originalCharacters!472 (_1!1464 (get!680 lt!41916)))))))))

(declare-fun d!34668 () Bool)

(assert (=> d!34668 e!86252))

(declare-fun res!67034 () Bool)

(assert (=> d!34668 (=> res!67034 e!86252)))

(declare-fun isEmpty!977 (Option!213) Bool)

(assert (=> d!34668 (= res!67034 (isEmpty!977 lt!41916))))

(assert (=> d!34668 (= lt!41916 e!86254)))

(declare-fun c!29754 () Bool)

(assert (=> d!34668 (= c!29754 (and ((_ is Cons!2510) rules!1920) ((_ is Nil!2510) (t!24020 rules!1920))))))

(declare-fun lt!41919 () Unit!1860)

(declare-fun lt!41918 () Unit!1860)

(assert (=> d!34668 (= lt!41919 lt!41918)))

(declare-fun isPrefix!205 (List!2518 List!2518) Bool)

(assert (=> d!34668 (isPrefix!205 (++!534 (list!864 (charsOf!92 (h!7906 tokens!465))) lt!41784) (++!534 (list!864 (charsOf!92 (h!7906 tokens!465))) lt!41784))))

(declare-fun lemmaIsPrefixRefl!112 (List!2518 List!2518) Unit!1860)

(assert (=> d!34668 (= lt!41918 (lemmaIsPrefixRefl!112 (++!534 (list!864 (charsOf!92 (h!7906 tokens!465))) lt!41784) (++!534 (list!864 (charsOf!92 (h!7906 tokens!465))) lt!41784)))))

(declare-fun rulesValidInductive!90 (LexerInterface!315 List!2520) Bool)

(assert (=> d!34668 (rulesValidInductive!90 thiss!17480 rules!1920)))

(assert (=> d!34668 (= (maxPrefix!97 thiss!17480 rules!1920 (++!534 (list!864 (charsOf!92 (h!7906 tokens!465))) lt!41784)) lt!41916)))

(assert (= (and d!34668 c!29754) b!145341))

(assert (= (and d!34668 (not c!29754)) b!145338))

(assert (= (or b!145341 b!145338) bm!5671))

(assert (= (and d!34668 (not res!67034)) b!145336))

(assert (= (and b!145336 res!67039) b!145339))

(assert (= (and b!145339 res!67040) b!145343))

(assert (= (and b!145343 res!67037) b!145335))

(assert (= (and b!145335 res!67038) b!145342))

(assert (= (and b!145342 res!67036) b!145337))

(assert (= (and b!145337 res!67035) b!145340))

(declare-fun m!128065 () Bool)

(assert (=> b!145337 m!128065))

(declare-fun m!128067 () Bool)

(assert (=> b!145337 m!128067))

(assert (=> b!145337 m!128067))

(declare-fun m!128069 () Bool)

(assert (=> b!145337 m!128069))

(assert (=> b!145337 m!128069))

(declare-fun m!128071 () Bool)

(assert (=> b!145337 m!128071))

(assert (=> b!145338 m!127611))

(declare-fun m!128073 () Bool)

(assert (=> b!145338 m!128073))

(assert (=> bm!5671 m!127611))

(declare-fun m!128075 () Bool)

(assert (=> bm!5671 m!128075))

(declare-fun m!128077 () Bool)

(assert (=> d!34668 m!128077))

(assert (=> d!34668 m!127611))

(assert (=> d!34668 m!127611))

(declare-fun m!128079 () Bool)

(assert (=> d!34668 m!128079))

(assert (=> d!34668 m!127611))

(assert (=> d!34668 m!127611))

(declare-fun m!128081 () Bool)

(assert (=> d!34668 m!128081))

(declare-fun m!128083 () Bool)

(assert (=> d!34668 m!128083))

(declare-fun m!128085 () Bool)

(assert (=> b!145336 m!128085))

(assert (=> b!145339 m!128065))

(assert (=> b!145339 m!128067))

(assert (=> b!145339 m!128067))

(assert (=> b!145339 m!128069))

(assert (=> b!145343 m!128065))

(declare-fun m!128087 () Bool)

(assert (=> b!145343 m!128087))

(assert (=> b!145343 m!127611))

(declare-fun m!128089 () Bool)

(assert (=> b!145343 m!128089))

(assert (=> b!145335 m!128065))

(assert (=> b!145335 m!128067))

(assert (=> b!145335 m!128067))

(assert (=> b!145335 m!128069))

(assert (=> b!145335 m!128069))

(declare-fun m!128091 () Bool)

(assert (=> b!145335 m!128091))

(assert (=> b!145340 m!128065))

(declare-fun m!128093 () Bool)

(assert (=> b!145340 m!128093))

(assert (=> b!145342 m!128065))

(declare-fun m!128095 () Bool)

(assert (=> b!145342 m!128095))

(assert (=> b!145342 m!128095))

(declare-fun m!128097 () Bool)

(assert (=> b!145342 m!128097))

(assert (=> b!144944 d!34668))

(declare-fun d!34670 () Bool)

(declare-fun lt!41923 () Int)

(assert (=> d!34670 (>= lt!41923 0)))

(declare-fun e!86257 () Int)

(assert (=> d!34670 (= lt!41923 e!86257)))

(declare-fun c!29757 () Bool)

(assert (=> d!34670 (= c!29757 ((_ is Nil!2509) (list!865 lt!41740)))))

(assert (=> d!34670 (= (size!2170 (list!865 lt!41740)) lt!41923)))

(declare-fun b!145348 () Bool)

(assert (=> b!145348 (= e!86257 0)))

(declare-fun b!145349 () Bool)

(assert (=> b!145349 (= e!86257 (+ 1 (size!2170 (t!24019 (list!865 lt!41740)))))))

(assert (= (and d!34670 c!29757) b!145348))

(assert (= (and d!34670 (not c!29757)) b!145349))

(declare-fun m!128099 () Bool)

(assert (=> b!145349 m!128099))

(assert (=> d!34484 d!34670))

(assert (=> d!34484 d!34652))

(declare-fun d!34672 () Bool)

(declare-fun lt!41926 () Int)

(assert (=> d!34672 (= lt!41926 (size!2170 (list!869 (c!29665 lt!41740))))))

(assert (=> d!34672 (= lt!41926 (ite ((_ is Empty!681) (c!29665 lt!41740)) 0 (ite ((_ is Leaf!1235) (c!29665 lt!41740)) (csize!1593 (c!29665 lt!41740)) (csize!1592 (c!29665 lt!41740)))))))

(assert (=> d!34672 (= (size!2171 (c!29665 lt!41740)) lt!41926)))

(declare-fun bs!13154 () Bool)

(assert (= bs!13154 d!34672))

(assert (=> bs!13154 m!128007))

(assert (=> bs!13154 m!128007))

(declare-fun m!128101 () Bool)

(assert (=> bs!13154 m!128101))

(assert (=> d!34484 d!34672))

(declare-fun d!34674 () Bool)

(assert (=> d!34674 true))

(declare-fun order!1229 () Int)

(declare-fun lambda!3556 () Int)

(declare-fun dynLambda!857 (Int Int) Int)

(assert (=> d!34674 (< (dynLambda!852 order!1221 (toChars!911 (transformation!429 (rule!936 separatorToken!170)))) (dynLambda!857 order!1229 lambda!3556))))

(assert (=> d!34674 true))

(assert (=> d!34674 (< (dynLambda!850 order!1217 (toValue!1052 (transformation!429 (rule!936 separatorToken!170)))) (dynLambda!857 order!1229 lambda!3556))))

(declare-fun Forall!116 (Int) Bool)

(assert (=> d!34674 (= (semiInverseModEq!147 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (toValue!1052 (transformation!429 (rule!936 separatorToken!170)))) (Forall!116 lambda!3556))))

(declare-fun bs!13155 () Bool)

(assert (= bs!13155 d!34674))

(declare-fun m!128103 () Bool)

(assert (=> bs!13155 m!128103))

(assert (=> d!34522 d!34674))

(declare-fun d!34676 () Bool)

(declare-fun lt!41929 () Token!602)

(declare-fun apply!311 (List!2519 Int) Token!602)

(assert (=> d!34676 (= lt!41929 (apply!311 (list!865 (_1!1465 lt!41803)) 0))))

(declare-fun apply!312 (Conc!681 Int) Token!602)

(assert (=> d!34676 (= lt!41929 (apply!312 (c!29665 (_1!1465 lt!41803)) 0))))

(declare-fun e!86260 () Bool)

(assert (=> d!34676 e!86260))

(declare-fun res!67043 () Bool)

(assert (=> d!34676 (=> (not res!67043) (not e!86260))))

(assert (=> d!34676 (= res!67043 (<= 0 0))))

(assert (=> d!34676 (= (apply!308 (_1!1465 lt!41803) 0) lt!41929)))

(declare-fun b!145356 () Bool)

(assert (=> b!145356 (= e!86260 (< 0 (size!2165 (_1!1465 lt!41803))))))

(assert (= (and d!34676 res!67043) b!145356))

(declare-fun m!128105 () Bool)

(assert (=> d!34676 m!128105))

(assert (=> d!34676 m!128105))

(declare-fun m!128107 () Bool)

(assert (=> d!34676 m!128107))

(declare-fun m!128109 () Bool)

(assert (=> d!34676 m!128109))

(assert (=> b!145356 m!127715))

(assert (=> b!145074 d!34676))

(declare-fun d!34678 () Bool)

(declare-fun lt!41930 () BalanceConc!1368)

(assert (=> d!34678 (= (list!864 lt!41930) (originalCharacters!472 separatorToken!170))))

(assert (=> d!34678 (= lt!41930 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170)))))

(assert (=> d!34678 (= (charsOf!92 separatorToken!170) lt!41930)))

(declare-fun b_lambda!2413 () Bool)

(assert (=> (not b_lambda!2413) (not d!34678)))

(assert (=> d!34678 t!24073))

(declare-fun b_and!7855 () Bool)

(assert (= b_and!7849 (and (=> t!24073 result!6924) b_and!7855)))

(assert (=> d!34678 t!24036))

(declare-fun b_and!7857 () Bool)

(assert (= b_and!7851 (and (=> t!24036 result!6886) b_and!7857)))

(assert (=> d!34678 t!24038))

(declare-fun b_and!7859 () Bool)

(assert (= b_and!7847 (and (=> t!24038 result!6888) b_and!7859)))

(assert (=> d!34678 t!24034))

(declare-fun b_and!7861 () Bool)

(assert (= b_and!7853 (and (=> t!24034 result!6882) b_and!7861)))

(assert (=> d!34678 t!24069))

(declare-fun b_and!7863 () Bool)

(assert (= b_and!7845 (and (=> t!24069 result!6916) b_and!7863)))

(declare-fun m!128111 () Bool)

(assert (=> d!34678 m!128111))

(assert (=> d!34678 m!127531))

(assert (=> b!144942 d!34678))

(declare-fun d!34680 () Bool)

(assert (=> d!34680 (= (list!864 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465)))) (list!868 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465))))))))

(declare-fun bs!13156 () Bool)

(assert (= bs!13156 d!34680))

(declare-fun m!128113 () Bool)

(assert (=> bs!13156 m!128113))

(assert (=> b!145053 d!34680))

(declare-fun d!34682 () Bool)

(declare-fun e!86263 () Bool)

(assert (=> d!34682 e!86263))

(declare-fun res!67046 () Bool)

(assert (=> d!34682 (=> (not res!67046) (not e!86263))))

(declare-fun lt!41933 () BalanceConc!1370)

(assert (=> d!34682 (= res!67046 (= (list!865 lt!41933) tokens!465))))

(declare-fun fromList!73 (List!2519) Conc!681)

(assert (=> d!34682 (= lt!41933 (BalanceConc!1371 (fromList!73 tokens!465)))))

(assert (=> d!34682 (= (fromListB!105 tokens!465) lt!41933)))

(declare-fun b!145359 () Bool)

(assert (=> b!145359 (= e!86263 (isBalanced!195 (fromList!73 tokens!465)))))

(assert (= (and d!34682 res!67046) b!145359))

(declare-fun m!128115 () Bool)

(assert (=> d!34682 m!128115))

(declare-fun m!128117 () Bool)

(assert (=> d!34682 m!128117))

(assert (=> b!145359 m!128117))

(assert (=> b!145359 m!128117))

(declare-fun m!128119 () Bool)

(assert (=> b!145359 m!128119))

(assert (=> d!34516 d!34682))

(declare-fun d!34684 () Bool)

(assert (=> d!34684 (= (inv!16 (value!16542 (h!7906 tokens!465))) (= (charsToInt!0 (text!3604 (value!16542 (h!7906 tokens!465)))) (value!16533 (value!16542 (h!7906 tokens!465)))))))

(declare-fun bs!13157 () Bool)

(assert (= bs!13157 d!34684))

(declare-fun m!128121 () Bool)

(assert (=> bs!13157 m!128121))

(assert (=> b!145051 d!34684))

(declare-fun bs!13158 () Bool)

(declare-fun d!34686 () Bool)

(assert (= bs!13158 (and d!34686 d!34674)))

(declare-fun lambda!3557 () Int)

(assert (=> bs!13158 (= (and (= (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (toChars!911 (transformation!429 (rule!936 separatorToken!170)))) (= (toValue!1052 (transformation!429 (rule!936 (h!7906 tokens!465)))) (toValue!1052 (transformation!429 (rule!936 separatorToken!170))))) (= lambda!3557 lambda!3556))))

(assert (=> d!34686 true))

(assert (=> d!34686 (< (dynLambda!852 order!1221 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465))))) (dynLambda!857 order!1229 lambda!3557))))

(assert (=> d!34686 true))

(assert (=> d!34686 (< (dynLambda!850 order!1217 (toValue!1052 (transformation!429 (rule!936 (h!7906 tokens!465))))) (dynLambda!857 order!1229 lambda!3557))))

(assert (=> d!34686 (= (semiInverseModEq!147 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (toValue!1052 (transformation!429 (rule!936 (h!7906 tokens!465))))) (Forall!116 lambda!3557))))

(declare-fun bs!13159 () Bool)

(assert (= bs!13159 d!34686))

(declare-fun m!128123 () Bool)

(assert (=> bs!13159 m!128123))

(assert (=> d!34464 d!34686))

(declare-fun b!145376 () Bool)

(declare-fun e!86274 () Bool)

(declare-fun call!5679 () Bool)

(assert (=> b!145376 (= e!86274 call!5679)))

(declare-fun b!145377 () Bool)

(declare-fun e!86275 () Bool)

(declare-fun e!86276 () Bool)

(assert (=> b!145377 (= e!86275 e!86276)))

(declare-fun res!67055 () Bool)

(assert (=> b!145377 (= res!67055 (not ((_ is Cons!2510) rules!1920)))))

(assert (=> b!145377 (=> res!67055 e!86276)))

(declare-fun b!145378 () Bool)

(assert (=> b!145378 (= e!86276 call!5679)))

(declare-fun b!145379 () Bool)

(assert (=> b!145379 (= e!86275 e!86274)))

(declare-fun res!67056 () Bool)

(declare-fun rulesUseDisjointChars!5 (Rule!658 Rule!658) Bool)

(assert (=> b!145379 (= res!67056 (rulesUseDisjointChars!5 (h!7907 rules!1920) (h!7907 rules!1920)))))

(assert (=> b!145379 (=> (not res!67056) (not e!86274))))

(declare-fun d!34688 () Bool)

(declare-fun c!29763 () Bool)

(assert (=> d!34688 (= c!29763 (and ((_ is Cons!2510) rules!1920) (not (= (isSeparator!429 (h!7907 rules!1920)) (isSeparator!429 (h!7907 rules!1920))))))))

(assert (=> d!34688 (= (ruleDisjointCharsFromAllFromOtherType!6 (h!7907 rules!1920) rules!1920) e!86275)))

(declare-fun bm!5674 () Bool)

(assert (=> bm!5674 (= call!5679 (ruleDisjointCharsFromAllFromOtherType!6 (h!7907 rules!1920) (t!24020 rules!1920)))))

(assert (= (and d!34688 c!29763) b!145379))

(assert (= (and d!34688 (not c!29763)) b!145377))

(assert (= (and b!145379 res!67056) b!145376))

(assert (= (and b!145377 (not res!67055)) b!145378))

(assert (= (or b!145376 b!145378) bm!5674))

(declare-fun m!128125 () Bool)

(assert (=> b!145379 m!128125))

(declare-fun m!128127 () Bool)

(assert (=> bm!5674 m!128127))

(assert (=> b!145066 d!34688))

(declare-fun bs!13160 () Bool)

(declare-fun d!34690 () Bool)

(assert (= bs!13160 (and d!34690 d!34568)))

(declare-fun lambda!3558 () Int)

(assert (=> bs!13160 (= (= (toValue!1052 (transformation!429 (rule!936 (h!7906 tokens!465)))) (toValue!1052 (transformation!429 (h!7907 rules!1920)))) (= lambda!3558 lambda!3538))))

(assert (=> d!34690 true))

(assert (=> d!34690 (< (dynLambda!850 order!1217 (toValue!1052 (transformation!429 (rule!936 (h!7906 tokens!465))))) (dynLambda!855 order!1225 lambda!3558))))

(assert (=> d!34690 (= (equivClasses!130 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (toValue!1052 (transformation!429 (rule!936 (h!7906 tokens!465))))) (Forall2!91 lambda!3558))))

(declare-fun bs!13161 () Bool)

(assert (= bs!13161 d!34690))

(declare-fun m!128129 () Bool)

(assert (=> bs!13161 m!128129))

(assert (=> b!144840 d!34690))

(declare-fun d!34692 () Bool)

(assert (=> d!34692 (= (list!864 (ite c!29700 call!5666 call!5667)) (list!868 (c!29663 (ite c!29700 call!5666 call!5667))))))

(declare-fun bs!13162 () Bool)

(assert (= bs!13162 d!34692))

(declare-fun m!128131 () Bool)

(assert (=> bs!13162 m!128131))

(assert (=> bm!5662 d!34692))

(declare-fun d!34694 () Bool)

(assert (=> d!34694 (= (list!864 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170))) (list!868 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170)))))))

(declare-fun bs!13163 () Bool)

(assert (= bs!13163 d!34694))

(declare-fun m!128133 () Bool)

(assert (=> bs!13163 m!128133))

(assert (=> b!144854 d!34694))

(declare-fun d!34696 () Bool)

(declare-fun res!67057 () Bool)

(declare-fun e!86277 () Bool)

(assert (=> d!34696 (=> (not res!67057) (not e!86277))))

(assert (=> d!34696 (= res!67057 (not (isEmpty!971 (originalCharacters!472 (h!7906 (t!24019 tokens!465))))))))

(assert (=> d!34696 (= (inv!3286 (h!7906 (t!24019 tokens!465))) e!86277)))

(declare-fun b!145380 () Bool)

(declare-fun res!67058 () Bool)

(assert (=> b!145380 (=> (not res!67058) (not e!86277))))

(assert (=> b!145380 (= res!67058 (= (originalCharacters!472 (h!7906 (t!24019 tokens!465))) (list!864 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))) (value!16542 (h!7906 (t!24019 tokens!465)))))))))

(declare-fun b!145381 () Bool)

(assert (=> b!145381 (= e!86277 (= (size!2164 (h!7906 (t!24019 tokens!465))) (size!2169 (originalCharacters!472 (h!7906 (t!24019 tokens!465))))))))

(assert (= (and d!34696 res!67057) b!145380))

(assert (= (and b!145380 res!67058) b!145381))

(declare-fun b_lambda!2415 () Bool)

(assert (=> (not b_lambda!2415) (not b!145380)))

(declare-fun t!24087 () Bool)

(declare-fun tb!4585 () Bool)

(assert (=> (and b!144790 (= (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465)))))) t!24087) tb!4585))

(declare-fun b!145382 () Bool)

(declare-fun e!86278 () Bool)

(declare-fun tp!76514 () Bool)

(assert (=> b!145382 (= e!86278 (and (inv!3290 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))) (value!16542 (h!7906 (t!24019 tokens!465)))))) tp!76514))))

(declare-fun result!6928 () Bool)

(assert (=> tb!4585 (= result!6928 (and (inv!3291 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))) (value!16542 (h!7906 (t!24019 tokens!465))))) e!86278))))

(assert (= tb!4585 b!145382))

(declare-fun m!128135 () Bool)

(assert (=> b!145382 m!128135))

(declare-fun m!128137 () Bool)

(assert (=> tb!4585 m!128137))

(assert (=> b!145380 t!24087))

(declare-fun b_and!7865 () Bool)

(assert (= b_and!7859 (and (=> t!24087 result!6928) b_and!7865)))

(declare-fun t!24089 () Bool)

(declare-fun tb!4587 () Bool)

(assert (=> (and b!144789 (= (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465)))))) t!24089) tb!4587))

(declare-fun result!6930 () Bool)

(assert (= result!6930 result!6928))

(assert (=> b!145380 t!24089))

(declare-fun b_and!7867 () Bool)

(assert (= b_and!7861 (and (=> t!24089 result!6930) b_and!7867)))

(declare-fun t!24091 () Bool)

(declare-fun tb!4589 () Bool)

(assert (=> (and b!144799 (= (toChars!911 (transformation!429 (h!7907 rules!1920))) (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465)))))) t!24091) tb!4589))

(declare-fun result!6932 () Bool)

(assert (= result!6932 result!6928))

(assert (=> b!145380 t!24091))

(declare-fun b_and!7869 () Bool)

(assert (= b_and!7857 (and (=> t!24091 result!6932) b_and!7869)))

(declare-fun t!24093 () Bool)

(declare-fun tb!4591 () Bool)

(assert (=> (and b!145104 (= (toChars!911 (transformation!429 (h!7907 (t!24020 rules!1920)))) (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465)))))) t!24093) tb!4591))

(declare-fun result!6934 () Bool)

(assert (= result!6934 result!6928))

(assert (=> b!145380 t!24093))

(declare-fun b_and!7871 () Bool)

(assert (= b_and!7863 (and (=> t!24093 result!6934) b_and!7871)))

(declare-fun t!24095 () Bool)

(declare-fun tb!4593 () Bool)

(assert (=> (and b!145132 (= (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))) (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465)))))) t!24095) tb!4593))

(declare-fun result!6936 () Bool)

(assert (= result!6936 result!6928))

(assert (=> b!145380 t!24095))

(declare-fun b_and!7873 () Bool)

(assert (= b_and!7855 (and (=> t!24095 result!6936) b_and!7873)))

(declare-fun m!128139 () Bool)

(assert (=> d!34696 m!128139))

(declare-fun m!128141 () Bool)

(assert (=> b!145380 m!128141))

(assert (=> b!145380 m!128141))

(declare-fun m!128143 () Bool)

(assert (=> b!145380 m!128143))

(declare-fun m!128145 () Bool)

(assert (=> b!145381 m!128145))

(assert (=> b!145129 d!34696))

(declare-fun bs!13164 () Bool)

(declare-fun d!34698 () Bool)

(assert (= bs!13164 (and d!34698 d!34674)))

(declare-fun lambda!3559 () Int)

(assert (=> bs!13164 (= (and (= (toChars!911 (transformation!429 (h!7907 rules!1920))) (toChars!911 (transformation!429 (rule!936 separatorToken!170)))) (= (toValue!1052 (transformation!429 (h!7907 rules!1920))) (toValue!1052 (transformation!429 (rule!936 separatorToken!170))))) (= lambda!3559 lambda!3556))))

(declare-fun bs!13165 () Bool)

(assert (= bs!13165 (and d!34698 d!34686)))

(assert (=> bs!13165 (= (and (= (toChars!911 (transformation!429 (h!7907 rules!1920))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465))))) (= (toValue!1052 (transformation!429 (h!7907 rules!1920))) (toValue!1052 (transformation!429 (rule!936 (h!7906 tokens!465)))))) (= lambda!3559 lambda!3557))))

(assert (=> d!34698 true))

(assert (=> d!34698 (< (dynLambda!852 order!1221 (toChars!911 (transformation!429 (h!7907 rules!1920)))) (dynLambda!857 order!1229 lambda!3559))))

(assert (=> d!34698 true))

(assert (=> d!34698 (< (dynLambda!850 order!1217 (toValue!1052 (transformation!429 (h!7907 rules!1920)))) (dynLambda!857 order!1229 lambda!3559))))

(assert (=> d!34698 (= (semiInverseModEq!147 (toChars!911 (transformation!429 (h!7907 rules!1920))) (toValue!1052 (transformation!429 (h!7907 rules!1920)))) (Forall!116 lambda!3559))))

(declare-fun bs!13166 () Bool)

(assert (= bs!13166 d!34698))

(declare-fun m!128147 () Bool)

(assert (=> bs!13166 m!128147))

(assert (=> d!34502 d!34698))

(declare-fun d!34700 () Bool)

(assert (=> d!34700 (= (inv!3283 (tag!607 (rule!936 (h!7906 (t!24019 tokens!465))))) (= (mod (str.len (value!16541 (tag!607 (rule!936 (h!7906 (t!24019 tokens!465)))))) 2) 0))))

(assert (=> b!145131 d!34700))

(declare-fun d!34702 () Bool)

(declare-fun res!67061 () Bool)

(declare-fun e!86281 () Bool)

(assert (=> d!34702 (=> (not res!67061) (not e!86281))))

(assert (=> d!34702 (= res!67061 (semiInverseModEq!147 (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))) (toValue!1052 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465)))))))))

(assert (=> d!34702 (= (inv!3287 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))) e!86281)))

(declare-fun b!145387 () Bool)

(assert (=> b!145387 (= e!86281 (equivClasses!130 (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))) (toValue!1052 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465)))))))))

(assert (= (and d!34702 res!67061) b!145387))

(declare-fun m!128149 () Bool)

(assert (=> d!34702 m!128149))

(declare-fun m!128151 () Bool)

(assert (=> b!145387 m!128151))

(assert (=> b!145131 d!34702))

(declare-fun d!34704 () Bool)

(assert (=> d!34704 (= (isEmpty!971 (originalCharacters!472 (h!7906 tokens!465))) ((_ is Nil!2508) (originalCharacters!472 (h!7906 tokens!465))))))

(assert (=> d!34524 d!34704))

(declare-fun d!34706 () Bool)

(assert (=> d!34706 (= (inv!17 (value!16542 (h!7906 tokens!465))) (= (charsToBigInt!1 (text!3605 (value!16542 (h!7906 tokens!465)))) (value!16534 (value!16542 (h!7906 tokens!465)))))))

(declare-fun bs!13167 () Bool)

(assert (= bs!13167 d!34706))

(declare-fun m!128171 () Bool)

(assert (=> bs!13167 m!128171))

(assert (=> b!145049 d!34706))

(declare-fun bs!13168 () Bool)

(declare-fun d!34708 () Bool)

(assert (= bs!13168 (and d!34708 d!34568)))

(declare-fun lambda!3560 () Int)

(assert (=> bs!13168 (= (= (toValue!1052 (transformation!429 (rule!936 separatorToken!170))) (toValue!1052 (transformation!429 (h!7907 rules!1920)))) (= lambda!3560 lambda!3538))))

(declare-fun bs!13169 () Bool)

(assert (= bs!13169 (and d!34708 d!34690)))

(assert (=> bs!13169 (= (= (toValue!1052 (transformation!429 (rule!936 separatorToken!170))) (toValue!1052 (transformation!429 (rule!936 (h!7906 tokens!465))))) (= lambda!3560 lambda!3558))))

(assert (=> d!34708 true))

(assert (=> d!34708 (< (dynLambda!850 order!1217 (toValue!1052 (transformation!429 (rule!936 separatorToken!170)))) (dynLambda!855 order!1225 lambda!3560))))

(assert (=> d!34708 (= (equivClasses!130 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (toValue!1052 (transformation!429 (rule!936 separatorToken!170)))) (Forall2!91 lambda!3560))))

(declare-fun bs!13170 () Bool)

(assert (= bs!13170 d!34708))

(declare-fun m!128209 () Bool)

(assert (=> bs!13170 m!128209))

(assert (=> b!145052 d!34708))

(declare-fun d!34710 () Bool)

(declare-fun isBalanced!196 (Conc!680) Bool)

(assert (=> d!34710 (= (inv!3291 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465)))) (isBalanced!196 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465))))))))

(declare-fun bs!13172 () Bool)

(assert (= bs!13172 d!34710))

(declare-fun m!128223 () Bool)

(assert (=> bs!13172 m!128223))

(assert (=> tb!4571 d!34710))

(declare-fun d!34720 () Bool)

(assert (=> d!34720 (= (isEmpty!971 (originalCharacters!472 separatorToken!170)) ((_ is Nil!2508) (originalCharacters!472 separatorToken!170)))))

(assert (=> d!34470 d!34720))

(declare-fun d!34722 () Bool)

(assert (=> d!34722 (= (inv!15 (value!16542 separatorToken!170)) (= (charsToBigInt!0 (text!3606 (value!16542 separatorToken!170)) 0) (value!16537 (value!16542 separatorToken!170))))))

(declare-fun bs!13173 () Bool)

(assert (= bs!13173 d!34722))

(declare-fun m!128225 () Bool)

(assert (=> bs!13173 m!128225))

(assert (=> b!144974 d!34722))

(assert (=> bm!5661 d!34664))

(declare-fun d!34724 () Bool)

(declare-fun res!67064 () Bool)

(declare-fun e!86285 () Bool)

(assert (=> d!34724 (=> res!67064 e!86285)))

(assert (=> d!34724 (= res!67064 ((_ is Nil!2509) (list!865 lt!41740)))))

(assert (=> d!34724 (= (forall!389 (list!865 lt!41740) lambda!3516) e!86285)))

(declare-fun b!145392 () Bool)

(declare-fun e!86286 () Bool)

(assert (=> b!145392 (= e!86285 e!86286)))

(declare-fun res!67065 () Bool)

(assert (=> b!145392 (=> (not res!67065) (not e!86286))))

(assert (=> b!145392 (= res!67065 (dynLambda!853 lambda!3516 (h!7906 (list!865 lt!41740))))))

(declare-fun b!145393 () Bool)

(assert (=> b!145393 (= e!86286 (forall!389 (t!24019 (list!865 lt!41740)) lambda!3516))))

(assert (= (and d!34724 (not res!67064)) b!145392))

(assert (= (and b!145392 res!67065) b!145393))

(declare-fun b_lambda!2417 () Bool)

(assert (=> (not b_lambda!2417) (not b!145392)))

(declare-fun m!128227 () Bool)

(assert (=> b!145392 m!128227))

(declare-fun m!128229 () Bool)

(assert (=> b!145393 m!128229))

(assert (=> d!34534 d!34724))

(assert (=> d!34534 d!34652))

(declare-fun b!145405 () Bool)

(declare-fun e!86293 () Bool)

(assert (=> b!145405 (= e!86293 (forall!391 (right!2224 (c!29665 lt!41740)) lambda!3516))))

(declare-fun b!145403 () Bool)

(declare-fun e!86295 () Bool)

(declare-fun forall!394 (IArray!1363 Int) Bool)

(assert (=> b!145403 (= e!86295 (forall!394 (xs!3276 (c!29665 lt!41740)) lambda!3516))))

(declare-fun d!34726 () Bool)

(declare-fun lt!41991 () Bool)

(assert (=> d!34726 (= lt!41991 (forall!389 (list!869 (c!29665 lt!41740)) lambda!3516))))

(declare-fun e!86294 () Bool)

(assert (=> d!34726 (= lt!41991 e!86294)))

(declare-fun res!67070 () Bool)

(assert (=> d!34726 (=> res!67070 e!86294)))

(assert (=> d!34726 (= res!67070 ((_ is Empty!681) (c!29665 lt!41740)))))

(assert (=> d!34726 (= (forall!391 (c!29665 lt!41740) lambda!3516) lt!41991)))

(declare-fun b!145404 () Bool)

(assert (=> b!145404 (= e!86295 e!86293)))

(declare-fun lt!41990 () Unit!1860)

(declare-fun lemmaForallConcat!6 (List!2519 List!2519 Int) Unit!1860)

(assert (=> b!145404 (= lt!41990 (lemmaForallConcat!6 (list!869 (left!1894 (c!29665 lt!41740))) (list!869 (right!2224 (c!29665 lt!41740))) lambda!3516))))

(declare-fun res!67071 () Bool)

(assert (=> b!145404 (= res!67071 (forall!391 (left!1894 (c!29665 lt!41740)) lambda!3516))))

(assert (=> b!145404 (=> (not res!67071) (not e!86293))))

(declare-fun b!145402 () Bool)

(assert (=> b!145402 (= e!86294 e!86295)))

(declare-fun c!29768 () Bool)

(assert (=> b!145402 (= c!29768 ((_ is Leaf!1235) (c!29665 lt!41740)))))

(assert (= (and d!34726 (not res!67070)) b!145402))

(assert (= (and b!145402 c!29768) b!145403))

(assert (= (and b!145402 (not c!29768)) b!145404))

(assert (= (and b!145404 res!67071) b!145405))

(declare-fun m!128231 () Bool)

(assert (=> b!145405 m!128231))

(declare-fun m!128233 () Bool)

(assert (=> b!145403 m!128233))

(assert (=> d!34726 m!128007))

(assert (=> d!34726 m!128007))

(declare-fun m!128235 () Bool)

(assert (=> d!34726 m!128235))

(declare-fun m!128237 () Bool)

(assert (=> b!145404 m!128237))

(declare-fun m!128239 () Bool)

(assert (=> b!145404 m!128239))

(assert (=> b!145404 m!128237))

(assert (=> b!145404 m!128239))

(declare-fun m!128241 () Bool)

(assert (=> b!145404 m!128241))

(declare-fun m!128243 () Bool)

(assert (=> b!145404 m!128243))

(assert (=> d!34534 d!34726))

(declare-fun d!34728 () Bool)

(declare-fun res!67072 () Bool)

(declare-fun e!86296 () Bool)

(assert (=> d!34728 (=> res!67072 e!86296)))

(assert (=> d!34728 (= res!67072 ((_ is Nil!2509) (t!24019 tokens!465)))))

(assert (=> d!34728 (= (forall!389 (t!24019 tokens!465) lambda!3516) e!86296)))

(declare-fun b!145406 () Bool)

(declare-fun e!86297 () Bool)

(assert (=> b!145406 (= e!86296 e!86297)))

(declare-fun res!67073 () Bool)

(assert (=> b!145406 (=> (not res!67073) (not e!86297))))

(assert (=> b!145406 (= res!67073 (dynLambda!853 lambda!3516 (h!7906 (t!24019 tokens!465))))))

(declare-fun b!145407 () Bool)

(assert (=> b!145407 (= e!86297 (forall!389 (t!24019 (t!24019 tokens!465)) lambda!3516))))

(assert (= (and d!34728 (not res!67072)) b!145406))

(assert (= (and b!145406 res!67073) b!145407))

(declare-fun b_lambda!2419 () Bool)

(assert (=> (not b_lambda!2419) (not b!145406)))

(declare-fun m!128245 () Bool)

(assert (=> b!145406 m!128245))

(declare-fun m!128247 () Bool)

(assert (=> b!145407 m!128247))

(assert (=> b!145061 d!34728))

(declare-fun d!34730 () Bool)

(assert (=> d!34730 true))

(declare-fun lt!41994 () Bool)

(assert (=> d!34730 (= lt!41994 (rulesValidInductive!90 thiss!17480 rules!1920))))

(declare-fun lambda!3563 () Int)

(declare-fun forall!395 (List!2520 Int) Bool)

(assert (=> d!34730 (= lt!41994 (forall!395 rules!1920 lambda!3563))))

(assert (=> d!34730 (= (rulesValid!113 thiss!17480 rules!1920) lt!41994)))

(declare-fun bs!13174 () Bool)

(assert (= bs!13174 d!34730))

(assert (=> bs!13174 m!128083))

(declare-fun m!128249 () Bool)

(assert (=> bs!13174 m!128249))

(assert (=> d!34532 d!34730))

(declare-fun d!34732 () Bool)

(declare-fun lt!41995 () BalanceConc!1368)

(assert (=> d!34732 (= (list!864 lt!41995) (printList!44 thiss!17480 (list!865 (singletonSeq!15 (h!7906 tokens!465)))))))

(assert (=> d!34732 (= lt!41995 (printTailRec!45 thiss!17480 (singletonSeq!15 (h!7906 tokens!465)) 0 (BalanceConc!1369 Empty!680)))))

(assert (=> d!34732 (= (print!82 thiss!17480 (singletonSeq!15 (h!7906 tokens!465))) lt!41995)))

(declare-fun bs!13175 () Bool)

(assert (= bs!13175 d!34732))

(declare-fun m!128251 () Bool)

(assert (=> bs!13175 m!128251))

(assert (=> bs!13175 m!127599))

(declare-fun m!128253 () Bool)

(assert (=> bs!13175 m!128253))

(assert (=> bs!13175 m!128253))

(declare-fun m!128255 () Bool)

(assert (=> bs!13175 m!128255))

(assert (=> bs!13175 m!127599))

(assert (=> bs!13175 m!127603))

(assert (=> b!144943 d!34732))

(declare-fun d!34734 () Bool)

(declare-fun e!86298 () Bool)

(assert (=> d!34734 e!86298))

(declare-fun res!67074 () Bool)

(assert (=> d!34734 (=> (not res!67074) (not e!86298))))

(declare-fun lt!41996 () BalanceConc!1370)

(assert (=> d!34734 (= res!67074 (= (list!865 lt!41996) (Cons!2509 (h!7906 tokens!465) Nil!2509)))))

(assert (=> d!34734 (= lt!41996 (singleton!12 (h!7906 tokens!465)))))

(assert (=> d!34734 (= (singletonSeq!15 (h!7906 tokens!465)) lt!41996)))

(declare-fun b!145410 () Bool)

(assert (=> b!145410 (= e!86298 (isBalanced!195 (c!29665 lt!41996)))))

(assert (= (and d!34734 res!67074) b!145410))

(declare-fun m!128257 () Bool)

(assert (=> d!34734 m!128257))

(declare-fun m!128259 () Bool)

(assert (=> d!34734 m!128259))

(declare-fun m!128261 () Bool)

(assert (=> b!145410 m!128261))

(assert (=> b!144943 d!34734))

(declare-fun d!34736 () Bool)

(declare-fun lt!42012 () BalanceConc!1368)

(declare-fun printListTailRec!32 (LexerInterface!315 List!2519 List!2518) List!2518)

(declare-fun dropList!56 (BalanceConc!1370 Int) List!2519)

(assert (=> d!34736 (= (list!864 lt!42012) (printListTailRec!32 thiss!17480 (dropList!56 (singletonSeq!15 (h!7906 tokens!465)) 0) (list!864 (BalanceConc!1369 Empty!680))))))

(declare-fun e!86303 () BalanceConc!1368)

(assert (=> d!34736 (= lt!42012 e!86303)))

(declare-fun c!29771 () Bool)

(assert (=> d!34736 (= c!29771 (>= 0 (size!2165 (singletonSeq!15 (h!7906 tokens!465)))))))

(declare-fun e!86304 () Bool)

(assert (=> d!34736 e!86304))

(declare-fun res!67077 () Bool)

(assert (=> d!34736 (=> (not res!67077) (not e!86304))))

(assert (=> d!34736 (= res!67077 (>= 0 0))))

(assert (=> d!34736 (= (printTailRec!45 thiss!17480 (singletonSeq!15 (h!7906 tokens!465)) 0 (BalanceConc!1369 Empty!680)) lt!42012)))

(declare-fun b!145417 () Bool)

(assert (=> b!145417 (= e!86304 (<= 0 (size!2165 (singletonSeq!15 (h!7906 tokens!465)))))))

(declare-fun b!145418 () Bool)

(assert (=> b!145418 (= e!86303 (BalanceConc!1369 Empty!680))))

(declare-fun b!145419 () Bool)

(declare-fun ++!536 (BalanceConc!1368 BalanceConc!1368) BalanceConc!1368)

(assert (=> b!145419 (= e!86303 (printTailRec!45 thiss!17480 (singletonSeq!15 (h!7906 tokens!465)) (+ 0 1) (++!536 (BalanceConc!1369 Empty!680) (charsOf!92 (apply!308 (singletonSeq!15 (h!7906 tokens!465)) 0)))))))

(declare-fun lt!42016 () List!2519)

(assert (=> b!145419 (= lt!42016 (list!865 (singletonSeq!15 (h!7906 tokens!465))))))

(declare-fun lt!42014 () Unit!1860)

(declare-fun lemmaDropApply!96 (List!2519 Int) Unit!1860)

(assert (=> b!145419 (= lt!42014 (lemmaDropApply!96 lt!42016 0))))

(declare-fun head!570 (List!2519) Token!602)

(declare-fun drop!109 (List!2519 Int) List!2519)

(assert (=> b!145419 (= (head!570 (drop!109 lt!42016 0)) (apply!311 lt!42016 0))))

(declare-fun lt!42017 () Unit!1860)

(assert (=> b!145419 (= lt!42017 lt!42014)))

(declare-fun lt!42011 () List!2519)

(assert (=> b!145419 (= lt!42011 (list!865 (singletonSeq!15 (h!7906 tokens!465))))))

(declare-fun lt!42015 () Unit!1860)

(declare-fun lemmaDropTail!88 (List!2519 Int) Unit!1860)

(assert (=> b!145419 (= lt!42015 (lemmaDropTail!88 lt!42011 0))))

(declare-fun tail!310 (List!2519) List!2519)

(assert (=> b!145419 (= (tail!310 (drop!109 lt!42011 0)) (drop!109 lt!42011 (+ 0 1)))))

(declare-fun lt!42013 () Unit!1860)

(assert (=> b!145419 (= lt!42013 lt!42015)))

(assert (= (and d!34736 res!67077) b!145417))

(assert (= (and d!34736 c!29771) b!145418))

(assert (= (and d!34736 (not c!29771)) b!145419))

(declare-fun m!128263 () Bool)

(assert (=> d!34736 m!128263))

(assert (=> d!34736 m!127599))

(declare-fun m!128265 () Bool)

(assert (=> d!34736 m!128265))

(assert (=> d!34736 m!127599))

(declare-fun m!128267 () Bool)

(assert (=> d!34736 m!128267))

(assert (=> d!34736 m!128267))

(assert (=> d!34736 m!128263))

(declare-fun m!128269 () Bool)

(assert (=> d!34736 m!128269))

(declare-fun m!128271 () Bool)

(assert (=> d!34736 m!128271))

(assert (=> b!145417 m!127599))

(assert (=> b!145417 m!128265))

(declare-fun m!128273 () Bool)

(assert (=> b!145419 m!128273))

(declare-fun m!128275 () Bool)

(assert (=> b!145419 m!128275))

(declare-fun m!128277 () Bool)

(assert (=> b!145419 m!128277))

(assert (=> b!145419 m!127599))

(declare-fun m!128279 () Bool)

(assert (=> b!145419 m!128279))

(assert (=> b!145419 m!128275))

(declare-fun m!128281 () Bool)

(assert (=> b!145419 m!128281))

(declare-fun m!128283 () Bool)

(assert (=> b!145419 m!128283))

(assert (=> b!145419 m!128279))

(declare-fun m!128285 () Bool)

(assert (=> b!145419 m!128285))

(assert (=> b!145419 m!128281))

(declare-fun m!128287 () Bool)

(assert (=> b!145419 m!128287))

(declare-fun m!128289 () Bool)

(assert (=> b!145419 m!128289))

(assert (=> b!145419 m!127599))

(declare-fun m!128291 () Bool)

(assert (=> b!145419 m!128291))

(declare-fun m!128293 () Bool)

(assert (=> b!145419 m!128293))

(assert (=> b!145419 m!127599))

(assert (=> b!145419 m!128253))

(assert (=> b!145419 m!128285))

(assert (=> b!145419 m!128291))

(declare-fun m!128295 () Bool)

(assert (=> b!145419 m!128295))

(assert (=> b!144943 d!34736))

(declare-fun d!34738 () Bool)

(assert (=> d!34738 (isDefined!83 (maxPrefix!97 thiss!17480 rules!1920 (++!534 call!5668 lt!41784)))))

(declare-fun lt!42093 () Unit!1860)

(declare-fun e!86410 () Unit!1860)

(assert (=> d!34738 (= lt!42093 e!86410)))

(declare-fun c!29790 () Bool)

(assert (=> d!34738 (= c!29790 (isEmpty!977 (maxPrefix!97 thiss!17480 rules!1920 (++!534 call!5668 lt!41784))))))

(declare-fun lt!42099 () Unit!1860)

(declare-fun lt!42101 () Unit!1860)

(assert (=> d!34738 (= lt!42099 lt!42101)))

(declare-fun e!86411 () Bool)

(assert (=> d!34738 e!86411))

(declare-fun res!67140 () Bool)

(assert (=> d!34738 (=> (not res!67140) (not e!86411))))

(declare-fun lt!42092 () Token!602)

(declare-datatypes ((Option!215 0))(
  ( (None!214) (Some!214 (v!13573 Rule!658)) )
))
(declare-fun isDefined!84 (Option!215) Bool)

(declare-fun getRuleFromTag!4 (LexerInterface!315 List!2520 String!3335) Option!215)

(assert (=> d!34738 (= res!67140 (isDefined!84 (getRuleFromTag!4 thiss!17480 rules!1920 (tag!607 (rule!936 lt!42092)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!4 (LexerInterface!315 List!2520 List!2518 Token!602) Unit!1860)

(assert (=> d!34738 (= lt!42101 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!4 thiss!17480 rules!1920 call!5668 lt!42092))))

(declare-fun lt!42102 () Unit!1860)

(declare-fun lt!42098 () Unit!1860)

(assert (=> d!34738 (= lt!42102 lt!42098)))

(declare-fun lt!42087 () List!2518)

(assert (=> d!34738 (isPrefix!205 lt!42087 (++!534 call!5668 lt!41784))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!4 (List!2518 List!2518 List!2518) Unit!1860)

(assert (=> d!34738 (= lt!42098 (lemmaPrefixStaysPrefixWhenAddingToSuffix!4 lt!42087 call!5668 lt!41784))))

(assert (=> d!34738 (= lt!42087 (list!864 (charsOf!92 lt!42092)))))

(declare-fun lt!42103 () Unit!1860)

(declare-fun lt!42089 () Unit!1860)

(assert (=> d!34738 (= lt!42103 lt!42089)))

(declare-fun lt!42097 () List!2518)

(declare-fun lt!42091 () List!2518)

(assert (=> d!34738 (isPrefix!205 lt!42097 (++!534 lt!42097 lt!42091))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!108 (List!2518 List!2518) Unit!1860)

(assert (=> d!34738 (= lt!42089 (lemmaConcatTwoListThenFirstIsPrefix!108 lt!42097 lt!42091))))

(assert (=> d!34738 (= lt!42091 (_2!1464 (get!680 (maxPrefix!97 thiss!17480 rules!1920 call!5668))))))

(assert (=> d!34738 (= lt!42097 (list!864 (charsOf!92 lt!42092)))))

(assert (=> d!34738 (= lt!42092 (head!570 (list!865 (_1!1465 (lex!157 thiss!17480 rules!1920 (seqFromList!246 call!5668))))))))

(assert (=> d!34738 (not (isEmpty!968 rules!1920))))

(assert (=> d!34738 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!4 thiss!17480 rules!1920 call!5668 lt!41784) lt!42093)))

(declare-fun b!145621 () Bool)

(declare-fun get!682 (Option!215) Rule!658)

(assert (=> b!145621 (= e!86411 (= (rule!936 lt!42092) (get!682 (getRuleFromTag!4 thiss!17480 rules!1920 (tag!607 (rule!936 lt!42092))))))))

(declare-fun b!145622 () Bool)

(declare-fun Unit!1870 () Unit!1860)

(assert (=> b!145622 (= e!86410 Unit!1870)))

(declare-fun lt!42094 () List!2518)

(assert (=> b!145622 (= lt!42094 (++!534 call!5668 lt!41784))))

(declare-fun lt!42095 () Unit!1860)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!4 (LexerInterface!315 Rule!658 List!2520 List!2518) Unit!1860)

(assert (=> b!145622 (= lt!42095 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!4 thiss!17480 (rule!936 lt!42092) rules!1920 lt!42094))))

(assert (=> b!145622 (isEmpty!977 (maxPrefixOneRule!49 thiss!17480 (rule!936 lt!42092) lt!42094))))

(declare-fun lt!42088 () Unit!1860)

(assert (=> b!145622 (= lt!42088 lt!42095)))

(declare-fun lt!42090 () List!2518)

(assert (=> b!145622 (= lt!42090 (list!864 (charsOf!92 lt!42092)))))

(declare-fun lt!42100 () Unit!1860)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!4 (LexerInterface!315 Rule!658 List!2518 List!2518) Unit!1860)

(assert (=> b!145622 (= lt!42100 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!4 thiss!17480 (rule!936 lt!42092) lt!42090 (++!534 call!5668 lt!41784)))))

(assert (=> b!145622 (not (matchR!61 (regex!429 (rule!936 lt!42092)) lt!42090))))

(declare-fun lt!42096 () Unit!1860)

(assert (=> b!145622 (= lt!42096 lt!42100)))

(assert (=> b!145622 false))

(declare-fun b!145620 () Bool)

(declare-fun res!67141 () Bool)

(assert (=> b!145620 (=> (not res!67141) (not e!86411))))

(assert (=> b!145620 (= res!67141 (matchR!61 (regex!429 (get!682 (getRuleFromTag!4 thiss!17480 rules!1920 (tag!607 (rule!936 lt!42092))))) (list!864 (charsOf!92 lt!42092))))))

(declare-fun b!145623 () Bool)

(declare-fun Unit!1871 () Unit!1860)

(assert (=> b!145623 (= e!86410 Unit!1871)))

(assert (= (and d!34738 res!67140) b!145620))

(assert (= (and b!145620 res!67141) b!145621))

(assert (= (and d!34738 c!29790) b!145622))

(assert (= (and d!34738 (not c!29790)) b!145623))

(declare-fun m!128497 () Bool)

(assert (=> d!34738 m!128497))

(declare-fun m!128499 () Bool)

(assert (=> d!34738 m!128499))

(declare-fun m!128501 () Bool)

(assert (=> d!34738 m!128501))

(declare-fun m!128503 () Bool)

(assert (=> d!34738 m!128503))

(declare-fun m!128505 () Bool)

(assert (=> d!34738 m!128505))

(declare-fun m!128507 () Bool)

(assert (=> d!34738 m!128507))

(declare-fun m!128509 () Bool)

(assert (=> d!34738 m!128509))

(assert (=> d!34738 m!128497))

(declare-fun m!128511 () Bool)

(assert (=> d!34738 m!128511))

(assert (=> d!34738 m!128503))

(declare-fun m!128513 () Bool)

(assert (=> d!34738 m!128513))

(declare-fun m!128515 () Bool)

(assert (=> d!34738 m!128515))

(declare-fun m!128517 () Bool)

(assert (=> d!34738 m!128517))

(declare-fun m!128519 () Bool)

(assert (=> d!34738 m!128519))

(assert (=> d!34738 m!127437))

(declare-fun m!128521 () Bool)

(assert (=> d!34738 m!128521))

(assert (=> d!34738 m!128515))

(declare-fun m!128523 () Bool)

(assert (=> d!34738 m!128523))

(assert (=> d!34738 m!128499))

(assert (=> d!34738 m!128515))

(declare-fun m!128525 () Bool)

(assert (=> d!34738 m!128525))

(declare-fun m!128527 () Bool)

(assert (=> d!34738 m!128527))

(assert (=> d!34738 m!128509))

(declare-fun m!128529 () Bool)

(assert (=> d!34738 m!128529))

(assert (=> d!34738 m!128525))

(assert (=> d!34738 m!128521))

(declare-fun m!128531 () Bool)

(assert (=> d!34738 m!128531))

(declare-fun m!128533 () Bool)

(assert (=> d!34738 m!128533))

(assert (=> d!34738 m!128499))

(declare-fun m!128535 () Bool)

(assert (=> d!34738 m!128535))

(assert (=> d!34738 m!128505))

(assert (=> b!145621 m!128509))

(assert (=> b!145621 m!128509))

(declare-fun m!128537 () Bool)

(assert (=> b!145621 m!128537))

(assert (=> b!145622 m!128499))

(declare-fun m!128539 () Bool)

(assert (=> b!145622 m!128539))

(declare-fun m!128541 () Bool)

(assert (=> b!145622 m!128541))

(assert (=> b!145622 m!128541))

(declare-fun m!128543 () Bool)

(assert (=> b!145622 m!128543))

(assert (=> b!145622 m!128525))

(assert (=> b!145622 m!128527))

(assert (=> b!145622 m!128499))

(assert (=> b!145622 m!128525))

(declare-fun m!128545 () Bool)

(assert (=> b!145622 m!128545))

(declare-fun m!128547 () Bool)

(assert (=> b!145622 m!128547))

(assert (=> b!145620 m!128525))

(assert (=> b!145620 m!128509))

(assert (=> b!145620 m!128509))

(assert (=> b!145620 m!128537))

(assert (=> b!145620 m!128527))

(declare-fun m!128549 () Bool)

(assert (=> b!145620 m!128549))

(assert (=> b!145620 m!128525))

(assert (=> b!145620 m!128527))

(assert (=> b!144943 d!34738))

(declare-fun d!34792 () Bool)

(assert (=> d!34792 (= (inv!3283 (tag!607 (h!7907 (t!24020 rules!1920)))) (= (mod (str.len (value!16541 (tag!607 (h!7907 (t!24020 rules!1920))))) 2) 0))))

(assert (=> b!145103 d!34792))

(declare-fun d!34794 () Bool)

(declare-fun res!67142 () Bool)

(declare-fun e!86412 () Bool)

(assert (=> d!34794 (=> (not res!67142) (not e!86412))))

(assert (=> d!34794 (= res!67142 (semiInverseModEq!147 (toChars!911 (transformation!429 (h!7907 (t!24020 rules!1920)))) (toValue!1052 (transformation!429 (h!7907 (t!24020 rules!1920))))))))

(assert (=> d!34794 (= (inv!3287 (transformation!429 (h!7907 (t!24020 rules!1920)))) e!86412)))

(declare-fun b!145624 () Bool)

(assert (=> b!145624 (= e!86412 (equivClasses!130 (toChars!911 (transformation!429 (h!7907 (t!24020 rules!1920)))) (toValue!1052 (transformation!429 (h!7907 (t!24020 rules!1920))))))))

(assert (= (and d!34794 res!67142) b!145624))

(declare-fun m!128551 () Bool)

(assert (=> d!34794 m!128551))

(declare-fun m!128553 () Bool)

(assert (=> b!145624 m!128553))

(assert (=> b!145103 d!34794))

(declare-fun d!34796 () Bool)

(declare-fun lt!42104 () Bool)

(assert (=> d!34796 (= lt!42104 (isEmpty!971 (list!864 (_2!1465 lt!41803))))))

(assert (=> d!34796 (= lt!42104 (isEmpty!973 (c!29663 (_2!1465 lt!41803))))))

(assert (=> d!34796 (= (isEmpty!972 (_2!1465 lt!41803)) lt!42104)))

(declare-fun bs!13196 () Bool)

(assert (= bs!13196 d!34796))

(declare-fun m!128555 () Bool)

(assert (=> bs!13196 m!128555))

(assert (=> bs!13196 m!128555))

(declare-fun m!128557 () Bool)

(assert (=> bs!13196 m!128557))

(declare-fun m!128559 () Bool)

(assert (=> bs!13196 m!128559))

(assert (=> b!145075 d!34796))

(declare-fun d!34798 () Bool)

(declare-fun res!67147 () Bool)

(declare-fun e!86417 () Bool)

(assert (=> d!34798 (=> res!67147 e!86417)))

(assert (=> d!34798 (= res!67147 ((_ is Nil!2510) rules!1920))))

(assert (=> d!34798 (= (noDuplicateTag!113 thiss!17480 rules!1920 Nil!2512) e!86417)))

(declare-fun b!145629 () Bool)

(declare-fun e!86418 () Bool)

(assert (=> b!145629 (= e!86417 e!86418)))

(declare-fun res!67148 () Bool)

(assert (=> b!145629 (=> (not res!67148) (not e!86418))))

(declare-fun contains!402 (List!2522 String!3335) Bool)

(assert (=> b!145629 (= res!67148 (not (contains!402 Nil!2512 (tag!607 (h!7907 rules!1920)))))))

(declare-fun b!145630 () Bool)

(assert (=> b!145630 (= e!86418 (noDuplicateTag!113 thiss!17480 (t!24020 rules!1920) (Cons!2512 (tag!607 (h!7907 rules!1920)) Nil!2512)))))

(assert (= (and d!34798 (not res!67147)) b!145629))

(assert (= (and b!145629 res!67148) b!145630))

(declare-fun m!128561 () Bool)

(assert (=> b!145629 m!128561))

(declare-fun m!128563 () Bool)

(assert (=> b!145630 m!128563))

(assert (=> b!145079 d!34798))

(assert (=> d!34530 d!34624))

(declare-fun d!34800 () Bool)

(assert (=> d!34800 (= (list!865 (_1!1465 (lex!157 thiss!17480 rules!1920 (print!82 thiss!17480 (singletonSeq!15 separatorToken!170))))) (list!869 (c!29665 (_1!1465 (lex!157 thiss!17480 rules!1920 (print!82 thiss!17480 (singletonSeq!15 separatorToken!170)))))))))

(declare-fun bs!13197 () Bool)

(assert (= bs!13197 d!34800))

(declare-fun m!128565 () Bool)

(assert (=> bs!13197 m!128565))

(assert (=> d!34530 d!34800))

(declare-fun d!34802 () Bool)

(declare-fun lt!42105 () Int)

(assert (=> d!34802 (= lt!42105 (size!2170 (list!865 (_1!1465 lt!41803))))))

(assert (=> d!34802 (= lt!42105 (size!2171 (c!29665 (_1!1465 lt!41803))))))

(assert (=> d!34802 (= (size!2165 (_1!1465 lt!41803)) lt!42105)))

(declare-fun bs!13198 () Bool)

(assert (= bs!13198 d!34802))

(assert (=> bs!13198 m!128105))

(assert (=> bs!13198 m!128105))

(declare-fun m!128567 () Bool)

(assert (=> bs!13198 m!128567))

(declare-fun m!128569 () Bool)

(assert (=> bs!13198 m!128569))

(assert (=> d!34530 d!34802))

(assert (=> d!34530 d!34576))

(declare-fun d!34804 () Bool)

(assert (=> d!34804 (= (list!865 (singletonSeq!15 separatorToken!170)) (list!869 (c!29665 (singletonSeq!15 separatorToken!170))))))

(declare-fun bs!13199 () Bool)

(assert (= bs!13199 d!34804))

(declare-fun m!128571 () Bool)

(assert (=> bs!13199 m!128571))

(assert (=> d!34530 d!34804))

(assert (=> d!34530 d!34612))

(assert (=> d!34530 d!34506))

(declare-fun d!34806 () Bool)

(declare-fun lt!42106 () Int)

(assert (=> d!34806 (>= lt!42106 0)))

(declare-fun e!86419 () Int)

(assert (=> d!34806 (= lt!42106 e!86419)))

(declare-fun c!29791 () Bool)

(assert (=> d!34806 (= c!29791 ((_ is Nil!2508) (originalCharacters!472 (h!7906 tokens!465))))))

(assert (=> d!34806 (= (size!2169 (originalCharacters!472 (h!7906 tokens!465))) lt!42106)))

(declare-fun b!145631 () Bool)

(assert (=> b!145631 (= e!86419 0)))

(declare-fun b!145632 () Bool)

(assert (=> b!145632 (= e!86419 (+ 1 (size!2169 (t!24018 (originalCharacters!472 (h!7906 tokens!465))))))))

(assert (= (and d!34806 c!29791) b!145631))

(assert (= (and d!34806 (not c!29791)) b!145632))

(declare-fun m!128573 () Bool)

(assert (=> b!145632 m!128573))

(assert (=> b!145054 d!34806))

(declare-fun d!34808 () Bool)

(assert (=> d!34808 (= (inv!3291 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170))) (isBalanced!196 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170)))))))

(declare-fun bs!13200 () Bool)

(assert (= bs!13200 d!34808))

(declare-fun m!128575 () Bool)

(assert (=> bs!13200 m!128575))

(assert (=> tb!4557 d!34808))

(declare-fun b!145636 () Bool)

(declare-fun b_free!5085 () Bool)

(declare-fun b_next!5085 () Bool)

(assert (=> b!145636 (= b_free!5085 (not b_next!5085))))

(declare-fun tp!76627 () Bool)

(declare-fun b_and!7893 () Bool)

(assert (=> b!145636 (= tp!76627 b_and!7893)))

(declare-fun b_free!5087 () Bool)

(declare-fun b_next!5087 () Bool)

(assert (=> b!145636 (= b_free!5087 (not b_next!5087))))

(declare-fun t!24120 () Bool)

(declare-fun tb!4617 () Bool)

(assert (=> (and b!145636 (= (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 (t!24019 tokens!465)))))) (toChars!911 (transformation!429 (rule!936 separatorToken!170)))) t!24120) tb!4617))

(declare-fun result!6962 () Bool)

(assert (= result!6962 result!6882))

(assert (=> b!144854 t!24120))

(assert (=> d!34678 t!24120))

(declare-fun t!24122 () Bool)

(declare-fun tb!4619 () Bool)

(assert (=> (and b!145636 (= (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 (t!24019 tokens!465)))))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465))))) t!24122) tb!4619))

(declare-fun result!6964 () Bool)

(assert (= result!6964 result!6906))

(assert (=> b!145053 t!24122))

(assert (=> d!34664 t!24122))

(declare-fun t!24124 () Bool)

(declare-fun tb!4621 () Bool)

(assert (=> (and b!145636 (= (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 (t!24019 tokens!465)))))) (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465)))))) t!24124) tb!4621))

(declare-fun result!6966 () Bool)

(assert (= result!6966 result!6928))

(assert (=> b!145380 t!24124))

(declare-fun b_and!7895 () Bool)

(declare-fun tp!76628 () Bool)

(assert (=> b!145636 (= tp!76628 (and (=> t!24120 result!6962) (=> t!24124 result!6966) (=> t!24122 result!6964) b_and!7895))))

(declare-fun b!145634 () Bool)

(declare-fun tp!76625 () Bool)

(declare-fun e!86425 () Bool)

(declare-fun e!86423 () Bool)

(assert (=> b!145634 (= e!86423 (and (inv!21 (value!16542 (h!7906 (t!24019 (t!24019 tokens!465))))) e!86425 tp!76625))))

(declare-fun e!86422 () Bool)

(assert (=> b!145129 (= tp!76513 e!86422)))

(declare-fun e!86420 () Bool)

(assert (=> b!145636 (= e!86420 (and tp!76627 tp!76628))))

(declare-fun b!145635 () Bool)

(declare-fun tp!76626 () Bool)

(assert (=> b!145635 (= e!86425 (and tp!76626 (inv!3283 (tag!607 (rule!936 (h!7906 (t!24019 (t!24019 tokens!465)))))) (inv!3287 (transformation!429 (rule!936 (h!7906 (t!24019 (t!24019 tokens!465)))))) e!86420))))

(declare-fun tp!76629 () Bool)

(declare-fun b!145633 () Bool)

(assert (=> b!145633 (= e!86422 (and (inv!3286 (h!7906 (t!24019 (t!24019 tokens!465)))) e!86423 tp!76629))))

(assert (= b!145635 b!145636))

(assert (= b!145634 b!145635))

(assert (= b!145633 b!145634))

(assert (= (and b!145129 ((_ is Cons!2509) (t!24019 (t!24019 tokens!465)))) b!145633))

(declare-fun m!128577 () Bool)

(assert (=> b!145634 m!128577))

(declare-fun m!128579 () Bool)

(assert (=> b!145635 m!128579))

(declare-fun m!128581 () Bool)

(assert (=> b!145635 m!128581))

(declare-fun m!128583 () Bool)

(assert (=> b!145633 m!128583))

(declare-fun b!145637 () Bool)

(declare-fun e!86426 () Bool)

(assert (=> b!145637 (= e!86426 tp_is_empty!1591)))

(declare-fun b!145638 () Bool)

(declare-fun tp!76630 () Bool)

(declare-fun tp!76631 () Bool)

(assert (=> b!145638 (= e!86426 (and tp!76630 tp!76631))))

(assert (=> b!145107 (= tp!76487 e!86426)))

(declare-fun b!145640 () Bool)

(declare-fun tp!76634 () Bool)

(declare-fun tp!76633 () Bool)

(assert (=> b!145640 (= e!86426 (and tp!76634 tp!76633))))

(declare-fun b!145639 () Bool)

(declare-fun tp!76632 () Bool)

(assert (=> b!145639 (= e!86426 tp!76632)))

(assert (= (and b!145107 ((_ is ElementMatch!653) (reg!982 (regex!429 (h!7907 rules!1920))))) b!145637))

(assert (= (and b!145107 ((_ is Concat!1105) (reg!982 (regex!429 (h!7907 rules!1920))))) b!145638))

(assert (= (and b!145107 ((_ is Star!653) (reg!982 (regex!429 (h!7907 rules!1920))))) b!145639))

(assert (= (and b!145107 ((_ is Union!653) (reg!982 (regex!429 (h!7907 rules!1920))))) b!145640))

(declare-fun b!145641 () Bool)

(declare-fun e!86427 () Bool)

(assert (=> b!145641 (= e!86427 tp_is_empty!1591)))

(declare-fun b!145642 () Bool)

(declare-fun tp!76635 () Bool)

(declare-fun tp!76636 () Bool)

(assert (=> b!145642 (= e!86427 (and tp!76635 tp!76636))))

(assert (=> b!145108 (= tp!76489 e!86427)))

(declare-fun b!145644 () Bool)

(declare-fun tp!76639 () Bool)

(declare-fun tp!76638 () Bool)

(assert (=> b!145644 (= e!86427 (and tp!76639 tp!76638))))

(declare-fun b!145643 () Bool)

(declare-fun tp!76637 () Bool)

(assert (=> b!145643 (= e!86427 tp!76637)))

(assert (= (and b!145108 ((_ is ElementMatch!653) (regOne!1819 (regex!429 (h!7907 rules!1920))))) b!145641))

(assert (= (and b!145108 ((_ is Concat!1105) (regOne!1819 (regex!429 (h!7907 rules!1920))))) b!145642))

(assert (= (and b!145108 ((_ is Star!653) (regOne!1819 (regex!429 (h!7907 rules!1920))))) b!145643))

(assert (= (and b!145108 ((_ is Union!653) (regOne!1819 (regex!429 (h!7907 rules!1920))))) b!145644))

(declare-fun b!145645 () Bool)

(declare-fun e!86428 () Bool)

(assert (=> b!145645 (= e!86428 tp_is_empty!1591)))

(declare-fun b!145646 () Bool)

(declare-fun tp!76640 () Bool)

(declare-fun tp!76641 () Bool)

(assert (=> b!145646 (= e!86428 (and tp!76640 tp!76641))))

(assert (=> b!145108 (= tp!76488 e!86428)))

(declare-fun b!145648 () Bool)

(declare-fun tp!76644 () Bool)

(declare-fun tp!76643 () Bool)

(assert (=> b!145648 (= e!86428 (and tp!76644 tp!76643))))

(declare-fun b!145647 () Bool)

(declare-fun tp!76642 () Bool)

(assert (=> b!145647 (= e!86428 tp!76642)))

(assert (= (and b!145108 ((_ is ElementMatch!653) (regTwo!1819 (regex!429 (h!7907 rules!1920))))) b!145645))

(assert (= (and b!145108 ((_ is Concat!1105) (regTwo!1819 (regex!429 (h!7907 rules!1920))))) b!145646))

(assert (= (and b!145108 ((_ is Star!653) (regTwo!1819 (regex!429 (h!7907 rules!1920))))) b!145647))

(assert (= (and b!145108 ((_ is Union!653) (regTwo!1819 (regex!429 (h!7907 rules!1920))))) b!145648))

(declare-fun b!145649 () Bool)

(declare-fun e!86429 () Bool)

(assert (=> b!145649 (= e!86429 tp_is_empty!1591)))

(declare-fun b!145650 () Bool)

(declare-fun tp!76645 () Bool)

(declare-fun tp!76646 () Bool)

(assert (=> b!145650 (= e!86429 (and tp!76645 tp!76646))))

(assert (=> b!145131 (= tp!76510 e!86429)))

(declare-fun b!145652 () Bool)

(declare-fun tp!76649 () Bool)

(declare-fun tp!76648 () Bool)

(assert (=> b!145652 (= e!86429 (and tp!76649 tp!76648))))

(declare-fun b!145651 () Bool)

(declare-fun tp!76647 () Bool)

(assert (=> b!145651 (= e!86429 tp!76647)))

(assert (= (and b!145131 ((_ is ElementMatch!653) (regex!429 (rule!936 (h!7906 (t!24019 tokens!465)))))) b!145649))

(assert (= (and b!145131 ((_ is Concat!1105) (regex!429 (rule!936 (h!7906 (t!24019 tokens!465)))))) b!145650))

(assert (= (and b!145131 ((_ is Star!653) (regex!429 (rule!936 (h!7906 (t!24019 tokens!465)))))) b!145651))

(assert (= (and b!145131 ((_ is Union!653) (regex!429 (rule!936 (h!7906 (t!24019 tokens!465)))))) b!145652))

(declare-fun tp!76656 () Bool)

(declare-fun b!145661 () Bool)

(declare-fun tp!76657 () Bool)

(declare-fun e!86435 () Bool)

(assert (=> b!145661 (= e!86435 (and (inv!3290 (left!1893 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170))))) tp!76657 (inv!3290 (right!2223 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170))))) tp!76656))))

(declare-fun b!145663 () Bool)

(declare-fun e!86434 () Bool)

(declare-fun tp!76658 () Bool)

(assert (=> b!145663 (= e!86434 tp!76658)))

(declare-fun b!145662 () Bool)

(declare-fun inv!3296 (IArray!1361) Bool)

(assert (=> b!145662 (= e!86435 (and (inv!3296 (xs!3275 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170))))) e!86434))))

(assert (=> b!144860 (= tp!76400 (and (inv!3290 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170)))) e!86435))))

(assert (= (and b!144860 ((_ is Node!680) (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170))))) b!145661))

(assert (= b!145662 b!145663))

(assert (= (and b!144860 ((_ is Leaf!1234) (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (value!16542 separatorToken!170))))) b!145662))

(declare-fun m!128585 () Bool)

(assert (=> b!145661 m!128585))

(declare-fun m!128587 () Bool)

(assert (=> b!145661 m!128587))

(declare-fun m!128589 () Bool)

(assert (=> b!145662 m!128589))

(assert (=> b!144860 m!127525))

(declare-fun b!145664 () Bool)

(declare-fun e!86436 () Bool)

(assert (=> b!145664 (= e!86436 tp_is_empty!1591)))

(declare-fun b!145665 () Bool)

(declare-fun tp!76659 () Bool)

(declare-fun tp!76660 () Bool)

(assert (=> b!145665 (= e!86436 (and tp!76659 tp!76660))))

(assert (=> b!145103 (= tp!76481 e!86436)))

(declare-fun b!145667 () Bool)

(declare-fun tp!76663 () Bool)

(declare-fun tp!76662 () Bool)

(assert (=> b!145667 (= e!86436 (and tp!76663 tp!76662))))

(declare-fun b!145666 () Bool)

(declare-fun tp!76661 () Bool)

(assert (=> b!145666 (= e!86436 tp!76661)))

(assert (= (and b!145103 ((_ is ElementMatch!653) (regex!429 (h!7907 (t!24020 rules!1920))))) b!145664))

(assert (= (and b!145103 ((_ is Concat!1105) (regex!429 (h!7907 (t!24020 rules!1920))))) b!145665))

(assert (= (and b!145103 ((_ is Star!653) (regex!429 (h!7907 (t!24020 rules!1920))))) b!145666))

(assert (= (and b!145103 ((_ is Union!653) (regex!429 (h!7907 (t!24020 rules!1920))))) b!145667))

(declare-fun b!145670 () Bool)

(declare-fun b_free!5089 () Bool)

(declare-fun b_next!5089 () Bool)

(assert (=> b!145670 (= b_free!5089 (not b_next!5089))))

(declare-fun tp!76667 () Bool)

(declare-fun b_and!7897 () Bool)

(assert (=> b!145670 (= tp!76667 b_and!7897)))

(declare-fun b_free!5091 () Bool)

(declare-fun b_next!5091 () Bool)

(assert (=> b!145670 (= b_free!5091 (not b_next!5091))))

(declare-fun t!24126 () Bool)

(declare-fun tb!4623 () Bool)

(assert (=> (and b!145670 (= (toChars!911 (transformation!429 (h!7907 (t!24020 (t!24020 rules!1920))))) (toChars!911 (transformation!429 (rule!936 separatorToken!170)))) t!24126) tb!4623))

(declare-fun result!6970 () Bool)

(assert (= result!6970 result!6882))

(assert (=> b!144854 t!24126))

(assert (=> d!34678 t!24126))

(declare-fun t!24128 () Bool)

(declare-fun tb!4625 () Bool)

(assert (=> (and b!145670 (= (toChars!911 (transformation!429 (h!7907 (t!24020 (t!24020 rules!1920))))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465))))) t!24128) tb!4625))

(declare-fun result!6972 () Bool)

(assert (= result!6972 result!6906))

(assert (=> b!145053 t!24128))

(assert (=> d!34664 t!24128))

(declare-fun t!24130 () Bool)

(declare-fun tb!4627 () Bool)

(assert (=> (and b!145670 (= (toChars!911 (transformation!429 (h!7907 (t!24020 (t!24020 rules!1920))))) (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465)))))) t!24130) tb!4627))

(declare-fun result!6974 () Bool)

(assert (= result!6974 result!6928))

(assert (=> b!145380 t!24130))

(declare-fun b_and!7899 () Bool)

(declare-fun tp!76665 () Bool)

(assert (=> b!145670 (= tp!76665 (and (=> t!24126 result!6970) (=> t!24130 result!6974) (=> t!24128 result!6972) b_and!7899))))

(declare-fun e!86437 () Bool)

(assert (=> b!145670 (= e!86437 (and tp!76667 tp!76665))))

(declare-fun tp!76664 () Bool)

(declare-fun b!145669 () Bool)

(declare-fun e!86439 () Bool)

(assert (=> b!145669 (= e!86439 (and tp!76664 (inv!3283 (tag!607 (h!7907 (t!24020 (t!24020 rules!1920))))) (inv!3287 (transformation!429 (h!7907 (t!24020 (t!24020 rules!1920))))) e!86437))))

(declare-fun b!145668 () Bool)

(declare-fun e!86438 () Bool)

(declare-fun tp!76666 () Bool)

(assert (=> b!145668 (= e!86438 (and e!86439 tp!76666))))

(assert (=> b!145102 (= tp!76483 e!86438)))

(assert (= b!145669 b!145670))

(assert (= b!145668 b!145669))

(assert (= (and b!145102 ((_ is Cons!2510) (t!24020 (t!24020 rules!1920)))) b!145668))

(declare-fun m!128591 () Bool)

(assert (=> b!145669 m!128591))

(declare-fun m!128593 () Bool)

(assert (=> b!145669 m!128593))

(declare-fun b!145671 () Bool)

(declare-fun e!86441 () Bool)

(declare-fun tp!76668 () Bool)

(assert (=> b!145671 (= e!86441 (and tp_is_empty!1591 tp!76668))))

(assert (=> b!145130 (= tp!76509 e!86441)))

(assert (= (and b!145130 ((_ is Cons!2508) (originalCharacters!472 (h!7906 (t!24019 tokens!465))))) b!145671))

(declare-fun b!145672 () Bool)

(declare-fun e!86442 () Bool)

(assert (=> b!145672 (= e!86442 tp_is_empty!1591)))

(declare-fun b!145673 () Bool)

(declare-fun tp!76669 () Bool)

(declare-fun tp!76670 () Bool)

(assert (=> b!145673 (= e!86442 (and tp!76669 tp!76670))))

(assert (=> b!145117 (= tp!76496 e!86442)))

(declare-fun b!145675 () Bool)

(declare-fun tp!76673 () Bool)

(declare-fun tp!76672 () Bool)

(assert (=> b!145675 (= e!86442 (and tp!76673 tp!76672))))

(declare-fun b!145674 () Bool)

(declare-fun tp!76671 () Bool)

(assert (=> b!145674 (= e!86442 tp!76671)))

(assert (= (and b!145117 ((_ is ElementMatch!653) (reg!982 (regex!429 (rule!936 separatorToken!170))))) b!145672))

(assert (= (and b!145117 ((_ is Concat!1105) (reg!982 (regex!429 (rule!936 separatorToken!170))))) b!145673))

(assert (= (and b!145117 ((_ is Star!653) (reg!982 (regex!429 (rule!936 separatorToken!170))))) b!145674))

(assert (= (and b!145117 ((_ is Union!653) (reg!982 (regex!429 (rule!936 separatorToken!170))))) b!145675))

(declare-fun b!145676 () Bool)

(declare-fun e!86443 () Bool)

(assert (=> b!145676 (= e!86443 tp_is_empty!1591)))

(declare-fun b!145677 () Bool)

(declare-fun tp!76674 () Bool)

(declare-fun tp!76675 () Bool)

(assert (=> b!145677 (= e!86443 (and tp!76674 tp!76675))))

(assert (=> b!145118 (= tp!76498 e!86443)))

(declare-fun b!145679 () Bool)

(declare-fun tp!76678 () Bool)

(declare-fun tp!76677 () Bool)

(assert (=> b!145679 (= e!86443 (and tp!76678 tp!76677))))

(declare-fun b!145678 () Bool)

(declare-fun tp!76676 () Bool)

(assert (=> b!145678 (= e!86443 tp!76676)))

(assert (= (and b!145118 ((_ is ElementMatch!653) (regOne!1819 (regex!429 (rule!936 separatorToken!170))))) b!145676))

(assert (= (and b!145118 ((_ is Concat!1105) (regOne!1819 (regex!429 (rule!936 separatorToken!170))))) b!145677))

(assert (= (and b!145118 ((_ is Star!653) (regOne!1819 (regex!429 (rule!936 separatorToken!170))))) b!145678))

(assert (= (and b!145118 ((_ is Union!653) (regOne!1819 (regex!429 (rule!936 separatorToken!170))))) b!145679))

(declare-fun b!145680 () Bool)

(declare-fun e!86444 () Bool)

(assert (=> b!145680 (= e!86444 tp_is_empty!1591)))

(declare-fun b!145681 () Bool)

(declare-fun tp!76679 () Bool)

(declare-fun tp!76680 () Bool)

(assert (=> b!145681 (= e!86444 (and tp!76679 tp!76680))))

(assert (=> b!145118 (= tp!76497 e!86444)))

(declare-fun b!145683 () Bool)

(declare-fun tp!76683 () Bool)

(declare-fun tp!76682 () Bool)

(assert (=> b!145683 (= e!86444 (and tp!76683 tp!76682))))

(declare-fun b!145682 () Bool)

(declare-fun tp!76681 () Bool)

(assert (=> b!145682 (= e!86444 tp!76681)))

(assert (= (and b!145118 ((_ is ElementMatch!653) (regTwo!1819 (regex!429 (rule!936 separatorToken!170))))) b!145680))

(assert (= (and b!145118 ((_ is Concat!1105) (regTwo!1819 (regex!429 (rule!936 separatorToken!170))))) b!145681))

(assert (= (and b!145118 ((_ is Star!653) (regTwo!1819 (regex!429 (rule!936 separatorToken!170))))) b!145682))

(assert (= (and b!145118 ((_ is Union!653) (regTwo!1819 (regex!429 (rule!936 separatorToken!170))))) b!145683))

(declare-fun b!145684 () Bool)

(declare-fun e!86445 () Bool)

(assert (=> b!145684 (= e!86445 tp_is_empty!1591)))

(declare-fun b!145685 () Bool)

(declare-fun tp!76684 () Bool)

(declare-fun tp!76685 () Bool)

(assert (=> b!145685 (= e!86445 (and tp!76684 tp!76685))))

(assert (=> b!145091 (= tp!76468 e!86445)))

(declare-fun b!145687 () Bool)

(declare-fun tp!76688 () Bool)

(declare-fun tp!76687 () Bool)

(assert (=> b!145687 (= e!86445 (and tp!76688 tp!76687))))

(declare-fun b!145686 () Bool)

(declare-fun tp!76686 () Bool)

(assert (=> b!145686 (= e!86445 tp!76686)))

(assert (= (and b!145091 ((_ is ElementMatch!653) (regOne!1818 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145684))

(assert (= (and b!145091 ((_ is Concat!1105) (regOne!1818 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145685))

(assert (= (and b!145091 ((_ is Star!653) (regOne!1818 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145686))

(assert (= (and b!145091 ((_ is Union!653) (regOne!1818 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145687))

(declare-fun b!145688 () Bool)

(declare-fun e!86446 () Bool)

(assert (=> b!145688 (= e!86446 tp_is_empty!1591)))

(declare-fun b!145689 () Bool)

(declare-fun tp!76689 () Bool)

(declare-fun tp!76690 () Bool)

(assert (=> b!145689 (= e!86446 (and tp!76689 tp!76690))))

(assert (=> b!145091 (= tp!76469 e!86446)))

(declare-fun b!145691 () Bool)

(declare-fun tp!76693 () Bool)

(declare-fun tp!76692 () Bool)

(assert (=> b!145691 (= e!86446 (and tp!76693 tp!76692))))

(declare-fun b!145690 () Bool)

(declare-fun tp!76691 () Bool)

(assert (=> b!145690 (= e!86446 tp!76691)))

(assert (= (and b!145091 ((_ is ElementMatch!653) (regTwo!1818 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145688))

(assert (= (and b!145091 ((_ is Concat!1105) (regTwo!1818 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145689))

(assert (= (and b!145091 ((_ is Star!653) (regTwo!1818 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145690))

(assert (= (and b!145091 ((_ is Union!653) (regTwo!1818 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145691))

(declare-fun b!145692 () Bool)

(declare-fun e!86447 () Bool)

(assert (=> b!145692 (= e!86447 tp_is_empty!1591)))

(declare-fun b!145693 () Bool)

(declare-fun tp!76694 () Bool)

(declare-fun tp!76695 () Bool)

(assert (=> b!145693 (= e!86447 (and tp!76694 tp!76695))))

(assert (=> b!145116 (= tp!76494 e!86447)))

(declare-fun b!145695 () Bool)

(declare-fun tp!76698 () Bool)

(declare-fun tp!76697 () Bool)

(assert (=> b!145695 (= e!86447 (and tp!76698 tp!76697))))

(declare-fun b!145694 () Bool)

(declare-fun tp!76696 () Bool)

(assert (=> b!145694 (= e!86447 tp!76696)))

(assert (= (and b!145116 ((_ is ElementMatch!653) (regOne!1818 (regex!429 (rule!936 separatorToken!170))))) b!145692))

(assert (= (and b!145116 ((_ is Concat!1105) (regOne!1818 (regex!429 (rule!936 separatorToken!170))))) b!145693))

(assert (= (and b!145116 ((_ is Star!653) (regOne!1818 (regex!429 (rule!936 separatorToken!170))))) b!145694))

(assert (= (and b!145116 ((_ is Union!653) (regOne!1818 (regex!429 (rule!936 separatorToken!170))))) b!145695))

(declare-fun b!145696 () Bool)

(declare-fun e!86448 () Bool)

(assert (=> b!145696 (= e!86448 tp_is_empty!1591)))

(declare-fun b!145697 () Bool)

(declare-fun tp!76699 () Bool)

(declare-fun tp!76700 () Bool)

(assert (=> b!145697 (= e!86448 (and tp!76699 tp!76700))))

(assert (=> b!145116 (= tp!76495 e!86448)))

(declare-fun b!145699 () Bool)

(declare-fun tp!76703 () Bool)

(declare-fun tp!76702 () Bool)

(assert (=> b!145699 (= e!86448 (and tp!76703 tp!76702))))

(declare-fun b!145698 () Bool)

(declare-fun tp!76701 () Bool)

(assert (=> b!145698 (= e!86448 tp!76701)))

(assert (= (and b!145116 ((_ is ElementMatch!653) (regTwo!1818 (regex!429 (rule!936 separatorToken!170))))) b!145696))

(assert (= (and b!145116 ((_ is Concat!1105) (regTwo!1818 (regex!429 (rule!936 separatorToken!170))))) b!145697))

(assert (= (and b!145116 ((_ is Star!653) (regTwo!1818 (regex!429 (rule!936 separatorToken!170))))) b!145698))

(assert (= (and b!145116 ((_ is Union!653) (regTwo!1818 (regex!429 (rule!936 separatorToken!170))))) b!145699))

(declare-fun b!145700 () Bool)

(declare-fun e!86449 () Bool)

(declare-fun tp!76704 () Bool)

(assert (=> b!145700 (= e!86449 (and tp_is_empty!1591 tp!76704))))

(assert (=> b!145113 (= tp!76492 e!86449)))

(assert (= (and b!145113 ((_ is Cons!2508) (t!24018 (originalCharacters!472 (h!7906 tokens!465))))) b!145700))

(declare-fun b!145703 () Bool)

(declare-fun e!86452 () Bool)

(assert (=> b!145703 (= e!86452 true)))

(declare-fun b!145702 () Bool)

(declare-fun e!86451 () Bool)

(assert (=> b!145702 (= e!86451 e!86452)))

(declare-fun b!145701 () Bool)

(declare-fun e!86450 () Bool)

(assert (=> b!145701 (= e!86450 e!86451)))

(assert (=> b!145044 e!86450))

(assert (= b!145702 b!145703))

(assert (= b!145701 b!145702))

(assert (= (and b!145044 ((_ is Cons!2510) (t!24020 rules!1920))) b!145701))

(assert (=> b!145703 (< (dynLambda!850 order!1217 (toValue!1052 (transformation!429 (h!7907 (t!24020 rules!1920))))) (dynLambda!851 order!1219 lambda!3532))))

(assert (=> b!145703 (< (dynLambda!852 order!1221 (toChars!911 (transformation!429 (h!7907 (t!24020 rules!1920))))) (dynLambda!851 order!1219 lambda!3532))))

(declare-fun b!145704 () Bool)

(declare-fun e!86453 () Bool)

(assert (=> b!145704 (= e!86453 tp_is_empty!1591)))

(declare-fun b!145705 () Bool)

(declare-fun tp!76705 () Bool)

(declare-fun tp!76706 () Bool)

(assert (=> b!145705 (= e!86453 (and tp!76705 tp!76706))))

(assert (=> b!145106 (= tp!76485 e!86453)))

(declare-fun b!145707 () Bool)

(declare-fun tp!76709 () Bool)

(declare-fun tp!76708 () Bool)

(assert (=> b!145707 (= e!86453 (and tp!76709 tp!76708))))

(declare-fun b!145706 () Bool)

(declare-fun tp!76707 () Bool)

(assert (=> b!145706 (= e!86453 tp!76707)))

(assert (= (and b!145106 ((_ is ElementMatch!653) (regOne!1818 (regex!429 (h!7907 rules!1920))))) b!145704))

(assert (= (and b!145106 ((_ is Concat!1105) (regOne!1818 (regex!429 (h!7907 rules!1920))))) b!145705))

(assert (= (and b!145106 ((_ is Star!653) (regOne!1818 (regex!429 (h!7907 rules!1920))))) b!145706))

(assert (= (and b!145106 ((_ is Union!653) (regOne!1818 (regex!429 (h!7907 rules!1920))))) b!145707))

(declare-fun b!145708 () Bool)

(declare-fun e!86454 () Bool)

(assert (=> b!145708 (= e!86454 tp_is_empty!1591)))

(declare-fun b!145709 () Bool)

(declare-fun tp!76710 () Bool)

(declare-fun tp!76711 () Bool)

(assert (=> b!145709 (= e!86454 (and tp!76710 tp!76711))))

(assert (=> b!145106 (= tp!76486 e!86454)))

(declare-fun b!145711 () Bool)

(declare-fun tp!76714 () Bool)

(declare-fun tp!76713 () Bool)

(assert (=> b!145711 (= e!86454 (and tp!76714 tp!76713))))

(declare-fun b!145710 () Bool)

(declare-fun tp!76712 () Bool)

(assert (=> b!145710 (= e!86454 tp!76712)))

(assert (= (and b!145106 ((_ is ElementMatch!653) (regTwo!1818 (regex!429 (h!7907 rules!1920))))) b!145708))

(assert (= (and b!145106 ((_ is Concat!1105) (regTwo!1818 (regex!429 (h!7907 rules!1920))))) b!145709))

(assert (= (and b!145106 ((_ is Star!653) (regTwo!1818 (regex!429 (h!7907 rules!1920))))) b!145710))

(assert (= (and b!145106 ((_ is Union!653) (regTwo!1818 (regex!429 (h!7907 rules!1920))))) b!145711))

(declare-fun b!145714 () Bool)

(declare-fun e!86457 () Bool)

(assert (=> b!145714 (= e!86457 true)))

(declare-fun b!145713 () Bool)

(declare-fun e!86456 () Bool)

(assert (=> b!145713 (= e!86456 e!86457)))

(declare-fun b!145712 () Bool)

(declare-fun e!86455 () Bool)

(assert (=> b!145712 (= e!86455 e!86456)))

(assert (=> b!144957 e!86455))

(assert (= b!145713 b!145714))

(assert (= b!145712 b!145713))

(assert (= (and b!144957 ((_ is Cons!2510) (t!24020 rules!1920))) b!145712))

(assert (=> b!145714 (< (dynLambda!850 order!1217 (toValue!1052 (transformation!429 (h!7907 (t!24020 rules!1920))))) (dynLambda!851 order!1219 lambda!3527))))

(assert (=> b!145714 (< (dynLambda!852 order!1221 (toChars!911 (transformation!429 (h!7907 (t!24020 rules!1920))))) (dynLambda!851 order!1219 lambda!3527))))

(declare-fun b!145715 () Bool)

(declare-fun e!86458 () Bool)

(assert (=> b!145715 (= e!86458 tp_is_empty!1591)))

(declare-fun b!145716 () Bool)

(declare-fun tp!76715 () Bool)

(declare-fun tp!76716 () Bool)

(assert (=> b!145716 (= e!86458 (and tp!76715 tp!76716))))

(assert (=> b!145093 (= tp!76472 e!86458)))

(declare-fun b!145718 () Bool)

(declare-fun tp!76719 () Bool)

(declare-fun tp!76718 () Bool)

(assert (=> b!145718 (= e!86458 (and tp!76719 tp!76718))))

(declare-fun b!145717 () Bool)

(declare-fun tp!76717 () Bool)

(assert (=> b!145717 (= e!86458 tp!76717)))

(assert (= (and b!145093 ((_ is ElementMatch!653) (regOne!1819 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145715))

(assert (= (and b!145093 ((_ is Concat!1105) (regOne!1819 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145716))

(assert (= (and b!145093 ((_ is Star!653) (regOne!1819 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145717))

(assert (= (and b!145093 ((_ is Union!653) (regOne!1819 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145718))

(declare-fun b!145719 () Bool)

(declare-fun e!86459 () Bool)

(assert (=> b!145719 (= e!86459 tp_is_empty!1591)))

(declare-fun b!145720 () Bool)

(declare-fun tp!76720 () Bool)

(declare-fun tp!76721 () Bool)

(assert (=> b!145720 (= e!86459 (and tp!76720 tp!76721))))

(assert (=> b!145093 (= tp!76471 e!86459)))

(declare-fun b!145722 () Bool)

(declare-fun tp!76724 () Bool)

(declare-fun tp!76723 () Bool)

(assert (=> b!145722 (= e!86459 (and tp!76724 tp!76723))))

(declare-fun b!145721 () Bool)

(declare-fun tp!76722 () Bool)

(assert (=> b!145721 (= e!86459 tp!76722)))

(assert (= (and b!145093 ((_ is ElementMatch!653) (regTwo!1819 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145719))

(assert (= (and b!145093 ((_ is Concat!1105) (regTwo!1819 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145720))

(assert (= (and b!145093 ((_ is Star!653) (regTwo!1819 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145721))

(assert (= (and b!145093 ((_ is Union!653) (regTwo!1819 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145722))

(declare-fun e!86461 () Bool)

(declare-fun tp!76726 () Bool)

(declare-fun b!145723 () Bool)

(declare-fun tp!76725 () Bool)

(assert (=> b!145723 (= e!86461 (and (inv!3290 (left!1893 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465)))))) tp!76726 (inv!3290 (right!2223 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465)))))) tp!76725))))

(declare-fun b!145725 () Bool)

(declare-fun e!86460 () Bool)

(declare-fun tp!76727 () Bool)

(assert (=> b!145725 (= e!86460 tp!76727)))

(declare-fun b!145724 () Bool)

(assert (=> b!145724 (= e!86461 (and (inv!3296 (xs!3275 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465)))))) e!86460))))

(assert (=> b!145055 (= tp!76457 (and (inv!3290 (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465))))) e!86461))))

(assert (= (and b!145055 ((_ is Node!680) (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465)))))) b!145723))

(assert (= b!145724 b!145725))

(assert (= (and b!145055 ((_ is Leaf!1234) (c!29663 (dynLambda!849 (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (value!16542 (h!7906 tokens!465)))))) b!145724))

(declare-fun m!128595 () Bool)

(assert (=> b!145723 m!128595))

(declare-fun m!128597 () Bool)

(assert (=> b!145723 m!128597))

(declare-fun m!128599 () Bool)

(assert (=> b!145724 m!128599))

(assert (=> b!145055 m!127685))

(declare-fun b!145726 () Bool)

(declare-fun e!86462 () Bool)

(declare-fun tp!76728 () Bool)

(assert (=> b!145726 (= e!86462 (and tp_is_empty!1591 tp!76728))))

(assert (=> b!145114 (= tp!76493 e!86462)))

(assert (= (and b!145114 ((_ is Cons!2508) (t!24018 (originalCharacters!472 separatorToken!170)))) b!145726))

(declare-fun b!145727 () Bool)

(declare-fun e!86463 () Bool)

(assert (=> b!145727 (= e!86463 tp_is_empty!1591)))

(declare-fun b!145728 () Bool)

(declare-fun tp!76729 () Bool)

(declare-fun tp!76730 () Bool)

(assert (=> b!145728 (= e!86463 (and tp!76729 tp!76730))))

(assert (=> b!145092 (= tp!76470 e!86463)))

(declare-fun b!145730 () Bool)

(declare-fun tp!76733 () Bool)

(declare-fun tp!76732 () Bool)

(assert (=> b!145730 (= e!86463 (and tp!76733 tp!76732))))

(declare-fun b!145729 () Bool)

(declare-fun tp!76731 () Bool)

(assert (=> b!145729 (= e!86463 tp!76731)))

(assert (= (and b!145092 ((_ is ElementMatch!653) (reg!982 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145727))

(assert (= (and b!145092 ((_ is Concat!1105) (reg!982 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145728))

(assert (= (and b!145092 ((_ is Star!653) (reg!982 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145729))

(assert (= (and b!145092 ((_ is Union!653) (reg!982 (regex!429 (rule!936 (h!7906 tokens!465)))))) b!145730))

(declare-fun b_lambda!2441 () Bool)

(assert (= b_lambda!2407 (or d!34508 b_lambda!2441)))

(declare-fun bs!13201 () Bool)

(declare-fun d!34810 () Bool)

(assert (= bs!13201 (and d!34810 d!34508)))

(assert (=> bs!13201 (= (dynLambda!853 lambda!3532 (h!7906 (list!865 lt!41740))) (rulesProduceIndividualToken!64 thiss!17480 rules!1920 (h!7906 (list!865 lt!41740))))))

(assert (=> bs!13201 m!128003))

(assert (=> b!145297 d!34810))

(declare-fun b_lambda!2443 () Bool)

(assert (= b_lambda!2417 (or b!144795 b_lambda!2443)))

(declare-fun bs!13202 () Bool)

(declare-fun d!34812 () Bool)

(assert (= bs!13202 (and d!34812 b!144795)))

(assert (=> bs!13202 (= (dynLambda!853 lambda!3516 (h!7906 (list!865 lt!41740))) (not (isSeparator!429 (rule!936 (h!7906 (list!865 lt!41740))))))))

(assert (=> b!145392 d!34812))

(declare-fun b_lambda!2445 () Bool)

(assert (= b_lambda!2411 (or b!144944 b_lambda!2445)))

(declare-fun bs!13203 () Bool)

(declare-fun d!34814 () Bool)

(assert (= bs!13203 (and d!34814 b!144944)))

(assert (=> bs!13203 (= (dynLambda!853 lambda!3527 (h!7906 tokens!465)) (rulesProduceIndividualToken!64 thiss!17480 rules!1920 (h!7906 tokens!465)))))

(declare-fun m!128601 () Bool)

(assert (=> bs!13203 m!128601))

(assert (=> d!34666 d!34814))

(declare-fun b_lambda!2447 () Bool)

(assert (= b_lambda!2409 (or (and b!145104 b_free!5071 (= (toChars!911 (transformation!429 (h!7907 (t!24020 rules!1920)))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))))) (and b!144799 b_free!5055 (= (toChars!911 (transformation!429 (h!7907 rules!1920))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))))) (and b!145670 b_free!5091 (= (toChars!911 (transformation!429 (h!7907 (t!24020 (t!24020 rules!1920))))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))))) (and b!145132 b_free!5075 (= (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))))) (and b!145636 b_free!5087 (= (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 (t!24019 tokens!465)))))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))))) (and b!144790 b_free!5059) (and b!144789 b_free!5051 (= (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))))) b_lambda!2447)))

(declare-fun b_lambda!2449 () Bool)

(assert (= b_lambda!2419 (or b!144795 b_lambda!2449)))

(declare-fun bs!13204 () Bool)

(declare-fun d!34816 () Bool)

(assert (= bs!13204 (and d!34816 b!144795)))

(assert (=> bs!13204 (= (dynLambda!853 lambda!3516 (h!7906 (t!24019 tokens!465))) (not (isSeparator!429 (rule!936 (h!7906 (t!24019 tokens!465))))))))

(assert (=> b!145406 d!34816))

(declare-fun b_lambda!2451 () Bool)

(assert (= b_lambda!2415 (or (and b!145636 b_free!5087 (= (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 (t!24019 tokens!465)))))) (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))))) (and b!144790 b_free!5059 (= (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))))) (and b!145132 b_free!5075) (and b!145670 b_free!5091 (= (toChars!911 (transformation!429 (h!7907 (t!24020 (t!24020 rules!1920))))) (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))))) (and b!144789 b_free!5051 (= (toChars!911 (transformation!429 (rule!936 separatorToken!170))) (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))))) (and b!145104 b_free!5071 (= (toChars!911 (transformation!429 (h!7907 (t!24020 rules!1920)))) (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))))) (and b!144799 b_free!5055 (= (toChars!911 (transformation!429 (h!7907 rules!1920))) (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))))) b_lambda!2451)))

(declare-fun b_lambda!2453 () Bool)

(assert (= b_lambda!2413 (or (and b!145132 b_free!5075 (= (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 tokens!465))))) (toChars!911 (transformation!429 (rule!936 separatorToken!170))))) (and b!144799 b_free!5055 (= (toChars!911 (transformation!429 (h!7907 rules!1920))) (toChars!911 (transformation!429 (rule!936 separatorToken!170))))) (and b!144789 b_free!5051) (and b!144790 b_free!5059 (= (toChars!911 (transformation!429 (rule!936 (h!7906 tokens!465)))) (toChars!911 (transformation!429 (rule!936 separatorToken!170))))) (and b!145636 b_free!5087 (= (toChars!911 (transformation!429 (rule!936 (h!7906 (t!24019 (t!24019 tokens!465)))))) (toChars!911 (transformation!429 (rule!936 separatorToken!170))))) (and b!145104 b_free!5071 (= (toChars!911 (transformation!429 (h!7907 (t!24020 rules!1920)))) (toChars!911 (transformation!429 (rule!936 separatorToken!170))))) (and b!145670 b_free!5091 (= (toChars!911 (transformation!429 (h!7907 (t!24020 (t!24020 rules!1920))))) (toChars!911 (transformation!429 (rule!936 separatorToken!170))))) b_lambda!2453)))

(check-sat (not b!145055) (not b!145711) (not b_lambda!2441) (not b!145155) (not d!34698) (not b!145257) (not b!145729) (not d!34708) (not d!34672) (not d!34656) (not b!145630) (not d!34556) (not b!145316) (not b!145646) (not b!145298) (not d!34738) (not d!34800) (not b!145671) (not b!145710) b_and!7777 (not b_next!5051) (not b!145146) b_and!7897 (not b!145699) b_and!7871 (not b!145639) (not d!34624) b_and!7817 (not b!145293) (not b!145253) (not d!34662) (not b!145632) (not b!145663) (not bm!5664) (not b!145638) (not bm!5667) (not b_next!5057) (not b!145694) (not bs!13203) (not b!145673) (not b!145718) (not b_next!5059) (not d!34710) (not d!34794) (not d!34692) (not b!145665) (not b!145643) (not d!34664) (not d!34564) (not bm!5665) (not b_next!5049) (not b!145380) (not b!145642) (not b!145310) (not b!145306) tp_is_empty!1591 (not b!145405) (not b!145387) (not b!145622) (not b!145677) (not b_next!5085) (not b!145171) (not d!34804) (not b!145304) (not b!145311) (not b!145417) (not d!34676) (not b!145724) (not b!145722) (not b_next!5087) (not d!34682) (not b!145342) (not b_lambda!2393) (not d!34574) (not b!145666) (not d!34808) (not d!34668) (not b!145648) (not b!145172) (not d!34568) (not b!145410) b_and!7899 (not b!145407) (not b!145681) (not b!145706) b_and!7895 (not b!145712) (not d!34734) (not b!145723) (not b!145695) b_and!7867 (not b!145652) (not b_next!5091) (not b!145238) (not b!145686) (not b!145647) (not bm!5674) (not b!145717) (not b!145258) (not d!34796) (not d!34684) (not b!145239) (not d!34680) (not b_lambda!2397) (not b!145624) b_and!7869 (not b!145687) b_and!7893 (not b_lambda!2449) (not b!145669) (not d!34636) (not tb!4585) (not b!145635) (not b!145662) (not b!145252) (not b!145650) (not b!145700) (not d!34562) (not b!145683) (not b!145359) (not b_next!5071) (not d!34554) (not b!145716) (not b!145668) (not d!34802) (not b!145620) (not d!34652) (not d!34726) (not d!34674) (not b!145236) (not b!145640) (not b!145689) b_and!7865 (not b!145336) (not b!145255) (not b!145679) (not b!145721) (not d!34722) (not b!145682) (not d!34666) (not b!145154) (not d!34696) (not b!145237) (not b_next!5089) (not b!145404) (not d!34658) (not d!34702) (not b_lambda!2445) (not b!145305) (not b!145393) (not b!145651) (not b!145720) (not b!145661) (not b_next!5073) (not b!145174) (not d!34690) (not b!145726) (not b!145301) (not b_lambda!2453) (not b!145698) (not b!145294) (not b!145335) b_and!7781 (not b!145356) (not b!145338) (not b!145403) (not b!145667) (not b!145707) (not b_lambda!2447) (not b_next!5055) (not b!145147) (not b!145690) (not d!34634) (not b_lambda!2451) (not d!34612) (not b!145349) (not b!145675) (not b!145339) (not b_lambda!2443) (not b!145674) b_and!7873 (not bm!5671) (not b_lambda!2395) (not d!34686) (not b!144860) (not b!145634) (not b_next!5075) (not b!145705) (not b!145730) (not b_next!5069) (not b!145165) (not d!34694) (not bs!13201) (not b!145340) (not d!34678) (not b!145693) (not b_next!5053) (not b!145300) (not b!145709) (not b!145419) (not b!145343) (not b!145701) (not b!145633) (not b!145292) (not b!145697) (not d!34572) (not d!34706) (not b!145379) (not b!145629) (not b!145728) (not b!145644) (not d!34730) (not b!145678) b_and!7821 (not b!145382) (not d!34736) (not b!145381) (not d!34732) (not b!145691) (not b!145163) (not b!145621) b_and!7773 (not b!145156) (not bm!5666) (not d!34576) (not b!145337) (not b!145685) (not b!145725))
(check-sat (not b_next!5057) (not b_next!5059) (not b_next!5049) (not b_next!5085) (not b_next!5087) b_and!7899 (not b_next!5091) (not b_next!5071) b_and!7865 (not b_next!5089) (not b_next!5073) b_and!7781 (not b_next!5055) b_and!7873 (not b_next!5075) b_and!7821 b_and!7773 b_and!7777 (not b_next!5051) b_and!7897 b_and!7871 b_and!7817 b_and!7895 b_and!7867 b_and!7893 b_and!7869 (not b_next!5069) (not b_next!5053))
