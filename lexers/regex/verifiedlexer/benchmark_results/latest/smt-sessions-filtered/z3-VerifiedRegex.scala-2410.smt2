; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125222 () Bool)

(assert start!125222)

(declare-fun b!1381759 () Bool)

(declare-fun b_free!33579 () Bool)

(declare-fun b_next!34283 () Bool)

(assert (=> b!1381759 (= b_free!33579 (not b_next!34283))))

(declare-fun tp!395950 () Bool)

(declare-fun b_and!92603 () Bool)

(assert (=> b!1381759 (= tp!395950 b_and!92603)))

(declare-fun b_free!33581 () Bool)

(declare-fun b_next!34285 () Bool)

(assert (=> b!1381759 (= b_free!33581 (not b_next!34285))))

(declare-fun tp!395941 () Bool)

(declare-fun b_and!92605 () Bool)

(assert (=> b!1381759 (= tp!395941 b_and!92605)))

(declare-fun b!1381753 () Bool)

(declare-fun b_free!33583 () Bool)

(declare-fun b_next!34287 () Bool)

(assert (=> b!1381753 (= b_free!33583 (not b_next!34287))))

(declare-fun tp!395946 () Bool)

(declare-fun b_and!92607 () Bool)

(assert (=> b!1381753 (= tp!395946 b_and!92607)))

(declare-fun b_free!33585 () Bool)

(declare-fun b_next!34289 () Bool)

(assert (=> b!1381753 (= b_free!33585 (not b_next!34289))))

(declare-fun tp!395947 () Bool)

(declare-fun b_and!92609 () Bool)

(assert (=> b!1381753 (= tp!395947 b_and!92609)))

(declare-fun b!1381763 () Bool)

(declare-fun b_free!33587 () Bool)

(declare-fun b_next!34291 () Bool)

(assert (=> b!1381763 (= b_free!33587 (not b_next!34291))))

(declare-fun tp!395952 () Bool)

(declare-fun b_and!92611 () Bool)

(assert (=> b!1381763 (= tp!395952 b_and!92611)))

(declare-fun b_free!33589 () Bool)

(declare-fun b_next!34293 () Bool)

(assert (=> b!1381763 (= b_free!33589 (not b_next!34293))))

(declare-fun tp!395944 () Bool)

(declare-fun b_and!92613 () Bool)

(assert (=> b!1381763 (= tp!395944 b_and!92613)))

(declare-fun b!1381750 () Bool)

(assert (=> b!1381750 true))

(assert (=> b!1381750 true))

(declare-fun b!1381765 () Bool)

(assert (=> b!1381765 true))

(declare-fun b!1381740 () Bool)

(declare-fun e!882907 () Bool)

(declare-fun e!882906 () Bool)

(assert (=> b!1381740 (= e!882907 e!882906)))

(declare-fun res!623020 () Bool)

(assert (=> b!1381740 (=> res!623020 e!882906)))

(declare-datatypes ((C!7776 0))(
  ( (C!7777 (val!4448 Int)) )
))
(declare-datatypes ((List!14091 0))(
  ( (Nil!14025) (Cons!14025 (h!19426 C!7776) (t!122044 List!14091)) )
))
(declare-fun lt!459339 () List!14091)

(declare-fun lt!459338 () List!14091)

(declare-fun ++!3636 (List!14091 List!14091) List!14091)

(declare-fun getSuffix!589 (List!14091 List!14091) List!14091)

(assert (=> b!1381740 (= res!623020 (not (= lt!459339 (++!3636 lt!459338 (getSuffix!589 lt!459339 lt!459338)))))))

(declare-fun lambda!59273 () Int)

(declare-fun pickWitness!196 (Int) List!14091)

(assert (=> b!1381740 (= lt!459339 (pickWitness!196 lambda!59273))))

(declare-fun e!882888 () Bool)

(declare-datatypes ((List!14092 0))(
  ( (Nil!14026) (Cons!14026 (h!19427 (_ BitVec 16)) (t!122045 List!14092)) )
))
(declare-datatypes ((TokenValue!2519 0))(
  ( (FloatLiteralValue!5038 (text!18078 List!14092)) (TokenValueExt!2518 (__x!8867 Int)) (Broken!12595 (value!78833 List!14092)) (Object!2584) (End!2519) (Def!2519) (Underscore!2519) (Match!2519) (Else!2519) (Error!2519) (Case!2519) (If!2519) (Extends!2519) (Abstract!2519) (Class!2519) (Val!2519) (DelimiterValue!5038 (del!2579 List!14092)) (KeywordValue!2525 (value!78834 List!14092)) (CommentValue!5038 (value!78835 List!14092)) (WhitespaceValue!5038 (value!78836 List!14092)) (IndentationValue!2519 (value!78837 List!14092)) (String!16830) (Int32!2519) (Broken!12596 (value!78838 List!14092)) (Boolean!2520) (Unit!20278) (OperatorValue!2522 (op!2579 List!14092)) (IdentifierValue!5038 (value!78839 List!14092)) (IdentifierValue!5039 (value!78840 List!14092)) (WhitespaceValue!5039 (value!78841 List!14092)) (True!5038) (False!5038) (Broken!12597 (value!78842 List!14092)) (Broken!12598 (value!78843 List!14092)) (True!5039) (RightBrace!2519) (RightBracket!2519) (Colon!2519) (Null!2519) (Comma!2519) (LeftBracket!2519) (False!5039) (LeftBrace!2519) (ImaginaryLiteralValue!2519 (text!18079 List!14092)) (StringLiteralValue!7557 (value!78844 List!14092)) (EOFValue!2519 (value!78845 List!14092)) (IdentValue!2519 (value!78846 List!14092)) (DelimiterValue!5039 (value!78847 List!14092)) (DedentValue!2519 (value!78848 List!14092)) (NewLineValue!2519 (value!78849 List!14092)) (IntegerValue!7557 (value!78850 (_ BitVec 32)) (text!18080 List!14092)) (IntegerValue!7558 (value!78851 Int) (text!18081 List!14092)) (Times!2519) (Or!2519) (Equal!2519) (Minus!2519) (Broken!12599 (value!78852 List!14092)) (And!2519) (Div!2519) (LessEqual!2519) (Mod!2519) (Concat!6262) (Not!2519) (Plus!2519) (SpaceValue!2519 (value!78853 List!14092)) (IntegerValue!7559 (value!78854 Int) (text!18082 List!14092)) (StringLiteralValue!7558 (text!18083 List!14092)) (FloatLiteralValue!5039 (text!18084 List!14092)) (BytesLiteralValue!2519 (value!78855 List!14092)) (CommentValue!5039 (value!78856 List!14092)) (StringLiteralValue!7559 (value!78857 List!14092)) (ErrorTokenValue!2519 (msg!2580 List!14092)) )
))
(declare-datatypes ((IArray!9243 0))(
  ( (IArray!9244 (innerList!4679 List!14091)) )
))
(declare-datatypes ((Conc!4619 0))(
  ( (Node!4619 (left!11991 Conc!4619) (right!12321 Conc!4619) (csize!9468 Int) (cheight!4830 Int)) (Leaf!7030 (xs!7346 IArray!9243) (csize!9469 Int)) (Empty!4619) )
))
(declare-datatypes ((BalanceConc!9178 0))(
  ( (BalanceConc!9179 (c!227379 Conc!4619)) )
))
(declare-datatypes ((Regex!3743 0))(
  ( (ElementMatch!3743 (c!227380 C!7776)) (Concat!6263 (regOne!7998 Regex!3743) (regTwo!7998 Regex!3743)) (EmptyExpr!3743) (Star!3743 (reg!4072 Regex!3743)) (EmptyLang!3743) (Union!3743 (regOne!7999 Regex!3743) (regTwo!7999 Regex!3743)) )
))
(declare-datatypes ((String!16831 0))(
  ( (String!16832 (value!78858 String)) )
))
(declare-datatypes ((TokenValueInjection!4698 0))(
  ( (TokenValueInjection!4699 (toValue!3712 Int) (toChars!3571 Int)) )
))
(declare-datatypes ((Rule!4658 0))(
  ( (Rule!4659 (regex!2429 Regex!3743) (tag!2691 String!16831) (isSeparator!2429 Bool) (transformation!2429 TokenValueInjection!4698)) )
))
(declare-datatypes ((List!14093 0))(
  ( (Nil!14027) (Cons!14027 (h!19428 Rule!4658) (t!122046 List!14093)) )
))
(declare-fun rules!2550 () List!14093)

(declare-fun b!1381742 () Bool)

(declare-fun tp!395943 () Bool)

(declare-fun e!882900 () Bool)

(declare-fun inv!18366 (String!16831) Bool)

(declare-fun inv!18369 (TokenValueInjection!4698) Bool)

(assert (=> b!1381742 (= e!882900 (and tp!395943 (inv!18366 (tag!2691 (h!19428 rules!2550))) (inv!18369 (transformation!2429 (h!19428 rules!2550))) e!882888))))

(declare-fun b!1381743 () Bool)

(declare-fun res!623023 () Bool)

(declare-fun e!882893 () Bool)

(assert (=> b!1381743 (=> (not res!623023) (not e!882893))))

(declare-datatypes ((LexerInterface!2124 0))(
  ( (LexerInterfaceExt!2121 (__x!8868 Int)) (Lexer!2122) )
))
(declare-fun thiss!19762 () LexerInterface!2124)

(declare-datatypes ((Token!4520 0))(
  ( (Token!4521 (value!78859 TokenValue!2519) (rule!4188 Rule!4658) (size!11505 Int) (originalCharacters!3291 List!14091)) )
))
(declare-fun t2!34 () Token!4520)

(declare-fun t1!34 () Token!4520)

(declare-fun separableTokensPredicate!407 (LexerInterface!2124 Token!4520 Token!4520 List!14093) Bool)

(assert (=> b!1381743 (= res!623023 (not (separableTokensPredicate!407 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun e!882889 () Bool)

(declare-fun tp!395945 () Bool)

(declare-fun b!1381744 () Bool)

(declare-fun e!882895 () Bool)

(declare-fun inv!21 (TokenValue!2519) Bool)

(assert (=> b!1381744 (= e!882895 (and (inv!21 (value!78859 t1!34)) e!882889 tp!395945))))

(declare-fun b!1381745 () Bool)

(declare-fun res!623018 () Bool)

(declare-fun e!882899 () Bool)

(assert (=> b!1381745 (=> res!623018 e!882899)))

(declare-fun lt!459341 () C!7776)

(declare-fun contains!2666 (List!14091 C!7776) Bool)

(assert (=> b!1381745 (= res!623018 (not (contains!2666 lt!459339 lt!459341)))))

(declare-fun b!1381746 () Bool)

(assert (=> b!1381746 (= e!882906 e!882899)))

(declare-fun res!623014 () Bool)

(assert (=> b!1381746 (=> res!623014 e!882899)))

(assert (=> b!1381746 (= res!623014 (not (contains!2666 lt!459338 lt!459341)))))

(declare-fun lt!459337 () BalanceConc!9178)

(declare-fun apply!3489 (BalanceConc!9178 Int) C!7776)

(assert (=> b!1381746 (= lt!459341 (apply!3489 lt!459337 0))))

(declare-fun b!1381747 () Bool)

(declare-fun res!623028 () Bool)

(declare-fun e!882898 () Bool)

(assert (=> b!1381747 (=> (not res!623028) (not e!882898))))

(declare-fun rulesProduceIndividualToken!1093 (LexerInterface!2124 List!14093 Token!4520) Bool)

(assert (=> b!1381747 (= res!623028 (rulesProduceIndividualToken!1093 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1381748 () Bool)

(declare-fun res!623019 () Bool)

(assert (=> b!1381748 (=> (not res!623019) (not e!882898))))

(declare-fun isEmpty!8465 (List!14093) Bool)

(assert (=> b!1381748 (= res!623019 (not (isEmpty!8465 rules!2550)))))

(declare-fun b!1381749 () Bool)

(declare-fun res!623027 () Bool)

(assert (=> b!1381749 (=> res!623027 e!882899)))

(declare-fun lt!459347 () C!7776)

(assert (=> b!1381749 (= res!623027 (not (contains!2666 lt!459338 lt!459347)))))

(declare-fun e!882891 () Bool)

(assert (=> b!1381750 (= e!882891 (not e!882907))))

(declare-fun res!623013 () Bool)

(assert (=> b!1381750 (=> res!623013 e!882907)))

(declare-fun Exists!893 (Int) Bool)

(assert (=> b!1381750 (= res!623013 (not (Exists!893 lambda!59273)))))

(assert (=> b!1381750 (Exists!893 lambda!59273)))

(declare-datatypes ((Unit!20279 0))(
  ( (Unit!20280) )
))
(declare-fun lt!459348 () Unit!20279)

(declare-fun lt!459345 () Regex!3743)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!211 (Regex!3743 List!14091) Unit!20279)

(assert (=> b!1381750 (= lt!459348 (lemmaPrefixMatchThenExistsStringThatMatches!211 lt!459345 lt!459338))))

(declare-fun b!1381751 () Bool)

(declare-fun res!623015 () Bool)

(assert (=> b!1381751 (=> res!623015 e!882899)))

(declare-fun matchR!1734 (Regex!3743 List!14091) Bool)

(assert (=> b!1381751 (= res!623015 (not (matchR!1734 lt!459345 lt!459339)))))

(declare-fun b!1381752 () Bool)

(declare-fun res!623029 () Bool)

(assert (=> b!1381752 (=> (not res!623029) (not e!882898))))

(assert (=> b!1381752 (= res!623029 (not (= (isSeparator!2429 (rule!4188 t1!34)) (isSeparator!2429 (rule!4188 t2!34)))))))

(declare-fun e!882894 () Bool)

(assert (=> b!1381753 (= e!882894 (and tp!395946 tp!395947))))

(declare-fun b!1381754 () Bool)

(declare-fun e!882903 () Bool)

(declare-fun tp!395948 () Bool)

(assert (=> b!1381754 (= e!882903 (and e!882900 tp!395948))))

(declare-fun b!1381755 () Bool)

(assert (=> b!1381755 (= e!882893 e!882891)))

(declare-fun res!623016 () Bool)

(assert (=> b!1381755 (=> (not res!623016) (not e!882891))))

(declare-fun prefixMatch!252 (Regex!3743 List!14091) Bool)

(assert (=> b!1381755 (= res!623016 (prefixMatch!252 lt!459345 lt!459338))))

(declare-fun rulesRegex!312 (LexerInterface!2124 List!14093) Regex!3743)

(assert (=> b!1381755 (= lt!459345 (rulesRegex!312 thiss!19762 rules!2550))))

(declare-fun lt!459340 () List!14091)

(assert (=> b!1381755 (= lt!459338 (++!3636 lt!459340 (Cons!14025 lt!459347 Nil!14025)))))

(declare-fun lt!459344 () BalanceConc!9178)

(assert (=> b!1381755 (= lt!459347 (apply!3489 lt!459344 0))))

(declare-fun list!5426 (BalanceConc!9178) List!14091)

(assert (=> b!1381755 (= lt!459340 (list!5426 lt!459337))))

(declare-fun charsOf!1401 (Token!4520) BalanceConc!9178)

(assert (=> b!1381755 (= lt!459337 (charsOf!1401 t1!34))))

(declare-fun e!882908 () Bool)

(declare-fun b!1381756 () Bool)

(declare-fun tp!395949 () Bool)

(declare-fun e!882902 () Bool)

(assert (=> b!1381756 (= e!882902 (and (inv!21 (value!78859 t2!34)) e!882908 tp!395949))))

(declare-fun b!1381741 () Bool)

(assert (=> b!1381741 (= e!882898 e!882893)))

(declare-fun res!623011 () Bool)

(assert (=> b!1381741 (=> (not res!623011) (not e!882893))))

(declare-fun size!11506 (BalanceConc!9178) Int)

(assert (=> b!1381741 (= res!623011 (> (size!11506 lt!459344) 0))))

(assert (=> b!1381741 (= lt!459344 (charsOf!1401 t2!34))))

(declare-fun res!623022 () Bool)

(assert (=> start!125222 (=> (not res!623022) (not e!882898))))

(get-info :version)

(assert (=> start!125222 (= res!623022 ((_ is Lexer!2122) thiss!19762))))

(assert (=> start!125222 e!882898))

(assert (=> start!125222 true))

(assert (=> start!125222 e!882903))

(declare-fun inv!18370 (Token!4520) Bool)

(assert (=> start!125222 (and (inv!18370 t1!34) e!882895)))

(assert (=> start!125222 (and (inv!18370 t2!34) e!882902)))

(declare-fun b!1381757 () Bool)

(declare-fun res!623025 () Bool)

(assert (=> b!1381757 (=> (not res!623025) (not e!882898))))

(assert (=> b!1381757 (= res!623025 (rulesProduceIndividualToken!1093 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1381758 () Bool)

(declare-fun res!623026 () Bool)

(assert (=> b!1381758 (=> res!623026 e!882899)))

(assert (=> b!1381758 (= res!623026 (not (contains!2666 lt!459339 lt!459347)))))

(declare-fun e!882905 () Bool)

(assert (=> b!1381759 (= e!882905 (and tp!395950 tp!395941))))

(declare-fun b!1381760 () Bool)

(declare-fun e!882896 () Bool)

(declare-fun e!882887 () Bool)

(assert (=> b!1381760 (= e!882896 e!882887)))

(declare-fun res!623024 () Bool)

(assert (=> b!1381760 (=> res!623024 e!882887)))

(declare-fun lambda!59274 () Int)

(declare-fun lt!459346 () Regex!3743)

(declare-datatypes ((List!14094 0))(
  ( (Nil!14028) (Cons!14028 (h!19429 Regex!3743) (t!122047 List!14094)) )
))
(declare-fun contains!2667 (List!14094 Regex!3743) Bool)

(declare-fun map!3104 (List!14093 Int) List!14094)

(assert (=> b!1381760 (= res!623024 (not (contains!2667 (map!3104 rules!2550 lambda!59274) lt!459346)))))

(declare-fun lambda!59275 () Int)

(declare-fun getWitness!391 (List!14094 Int) Regex!3743)

(assert (=> b!1381760 (= lt!459346 (getWitness!391 (map!3104 rules!2550 lambda!59274) lambda!59275))))

(declare-fun tp!395951 () Bool)

(declare-fun b!1381761 () Bool)

(assert (=> b!1381761 (= e!882889 (and tp!395951 (inv!18366 (tag!2691 (rule!4188 t1!34))) (inv!18369 (transformation!2429 (rule!4188 t1!34))) e!882894))))

(declare-fun b!1381762 () Bool)

(declare-fun tp!395942 () Bool)

(assert (=> b!1381762 (= e!882908 (and tp!395942 (inv!18366 (tag!2691 (rule!4188 t2!34))) (inv!18369 (transformation!2429 (rule!4188 t2!34))) e!882905))))

(assert (=> b!1381763 (= e!882888 (and tp!395952 tp!395944))))

(declare-fun b!1381764 () Bool)

(declare-fun res!623017 () Bool)

(assert (=> b!1381764 (=> (not res!623017) (not e!882893))))

(declare-fun sepAndNonSepRulesDisjointChars!802 (List!14093 List!14093) Bool)

(assert (=> b!1381764 (= res!623017 (sepAndNonSepRulesDisjointChars!802 rules!2550 rules!2550))))

(assert (=> b!1381765 (= e!882899 e!882896)))

(declare-fun res!623021 () Bool)

(assert (=> b!1381765 (=> res!623021 e!882896)))

(declare-fun exists!503 (List!14094 Int) Bool)

(assert (=> b!1381765 (= res!623021 (not (exists!503 (map!3104 rules!2550 lambda!59274) lambda!59275)))))

(declare-fun lt!459343 () List!14094)

(assert (=> b!1381765 (exists!503 lt!459343 lambda!59275)))

(declare-fun lt!459342 () Unit!20279)

(declare-fun matchRGenUnionSpec!154 (Regex!3743 List!14094 List!14091) Unit!20279)

(assert (=> b!1381765 (= lt!459342 (matchRGenUnionSpec!154 lt!459345 lt!459343 lt!459339))))

(assert (=> b!1381765 (= lt!459343 (map!3104 rules!2550 lambda!59274))))

(declare-fun b!1381766 () Bool)

(assert (=> b!1381766 (= e!882887 (contains!2667 (map!3104 rules!2550 lambda!59274) lt!459346))))

(declare-fun b!1381767 () Bool)

(declare-fun res!623012 () Bool)

(assert (=> b!1381767 (=> (not res!623012) (not e!882898))))

(declare-fun rulesInvariant!1994 (LexerInterface!2124 List!14093) Bool)

(assert (=> b!1381767 (= res!623012 (rulesInvariant!1994 thiss!19762 rules!2550))))

(assert (= (and start!125222 res!623022) b!1381748))

(assert (= (and b!1381748 res!623019) b!1381767))

(assert (= (and b!1381767 res!623012) b!1381747))

(assert (= (and b!1381747 res!623028) b!1381757))

(assert (= (and b!1381757 res!623025) b!1381752))

(assert (= (and b!1381752 res!623029) b!1381741))

(assert (= (and b!1381741 res!623011) b!1381764))

(assert (= (and b!1381764 res!623017) b!1381743))

(assert (= (and b!1381743 res!623023) b!1381755))

(assert (= (and b!1381755 res!623016) b!1381750))

(assert (= (and b!1381750 (not res!623013)) b!1381740))

(assert (= (and b!1381740 (not res!623020)) b!1381746))

(assert (= (and b!1381746 (not res!623014)) b!1381745))

(assert (= (and b!1381745 (not res!623018)) b!1381749))

(assert (= (and b!1381749 (not res!623027)) b!1381758))

(assert (= (and b!1381758 (not res!623026)) b!1381751))

(assert (= (and b!1381751 (not res!623015)) b!1381765))

(assert (= (and b!1381765 (not res!623021)) b!1381760))

(assert (= (and b!1381760 (not res!623024)) b!1381766))

(assert (= b!1381742 b!1381763))

(assert (= b!1381754 b!1381742))

(assert (= (and start!125222 ((_ is Cons!14027) rules!2550)) b!1381754))

(assert (= b!1381761 b!1381753))

(assert (= b!1381744 b!1381761))

(assert (= start!125222 b!1381744))

(assert (= b!1381762 b!1381759))

(assert (= b!1381756 b!1381762))

(assert (= start!125222 b!1381756))

(declare-fun m!1554589 () Bool)

(assert (=> b!1381767 m!1554589))

(declare-fun m!1554591 () Bool)

(assert (=> b!1381757 m!1554591))

(declare-fun m!1554593 () Bool)

(assert (=> b!1381766 m!1554593))

(assert (=> b!1381766 m!1554593))

(declare-fun m!1554595 () Bool)

(assert (=> b!1381766 m!1554595))

(declare-fun m!1554597 () Bool)

(assert (=> b!1381745 m!1554597))

(declare-fun m!1554599 () Bool)

(assert (=> b!1381747 m!1554599))

(declare-fun m!1554601 () Bool)

(assert (=> b!1381751 m!1554601))

(declare-fun m!1554603 () Bool)

(assert (=> b!1381756 m!1554603))

(declare-fun m!1554605 () Bool)

(assert (=> b!1381755 m!1554605))

(declare-fun m!1554607 () Bool)

(assert (=> b!1381755 m!1554607))

(declare-fun m!1554609 () Bool)

(assert (=> b!1381755 m!1554609))

(declare-fun m!1554611 () Bool)

(assert (=> b!1381755 m!1554611))

(declare-fun m!1554613 () Bool)

(assert (=> b!1381755 m!1554613))

(declare-fun m!1554615 () Bool)

(assert (=> b!1381755 m!1554615))

(declare-fun m!1554617 () Bool)

(assert (=> b!1381746 m!1554617))

(declare-fun m!1554619 () Bool)

(assert (=> b!1381746 m!1554619))

(declare-fun m!1554621 () Bool)

(assert (=> start!125222 m!1554621))

(declare-fun m!1554623 () Bool)

(assert (=> start!125222 m!1554623))

(declare-fun m!1554625 () Bool)

(assert (=> b!1381744 m!1554625))

(declare-fun m!1554627 () Bool)

(assert (=> b!1381740 m!1554627))

(assert (=> b!1381740 m!1554627))

(declare-fun m!1554629 () Bool)

(assert (=> b!1381740 m!1554629))

(declare-fun m!1554631 () Bool)

(assert (=> b!1381740 m!1554631))

(declare-fun m!1554633 () Bool)

(assert (=> b!1381762 m!1554633))

(declare-fun m!1554635 () Bool)

(assert (=> b!1381762 m!1554635))

(declare-fun m!1554637 () Bool)

(assert (=> b!1381761 m!1554637))

(declare-fun m!1554639 () Bool)

(assert (=> b!1381761 m!1554639))

(assert (=> b!1381760 m!1554593))

(assert (=> b!1381760 m!1554593))

(assert (=> b!1381760 m!1554595))

(assert (=> b!1381760 m!1554593))

(assert (=> b!1381760 m!1554593))

(declare-fun m!1554641 () Bool)

(assert (=> b!1381760 m!1554641))

(declare-fun m!1554643 () Bool)

(assert (=> b!1381748 m!1554643))

(declare-fun m!1554645 () Bool)

(assert (=> b!1381758 m!1554645))

(declare-fun m!1554647 () Bool)

(assert (=> b!1381743 m!1554647))

(declare-fun m!1554649 () Bool)

(assert (=> b!1381741 m!1554649))

(declare-fun m!1554651 () Bool)

(assert (=> b!1381741 m!1554651))

(declare-fun m!1554653 () Bool)

(assert (=> b!1381749 m!1554653))

(declare-fun m!1554655 () Bool)

(assert (=> b!1381750 m!1554655))

(assert (=> b!1381750 m!1554655))

(declare-fun m!1554657 () Bool)

(assert (=> b!1381750 m!1554657))

(declare-fun m!1554659 () Bool)

(assert (=> b!1381742 m!1554659))

(declare-fun m!1554661 () Bool)

(assert (=> b!1381742 m!1554661))

(assert (=> b!1381765 m!1554593))

(assert (=> b!1381765 m!1554593))

(declare-fun m!1554663 () Bool)

(assert (=> b!1381765 m!1554663))

(declare-fun m!1554665 () Bool)

(assert (=> b!1381765 m!1554665))

(assert (=> b!1381765 m!1554593))

(declare-fun m!1554667 () Bool)

(assert (=> b!1381765 m!1554667))

(declare-fun m!1554669 () Bool)

(assert (=> b!1381764 m!1554669))

(check-sat (not b_next!34293) (not b!1381740) b_and!92605 (not b!1381751) (not b!1381760) (not b!1381761) (not b!1381762) (not b_next!34283) (not b!1381749) (not b!1381767) (not b!1381746) (not b!1381757) (not b!1381741) (not b!1381743) (not b!1381756) (not b!1381750) (not b_next!34285) (not b_next!34289) (not b!1381766) (not b!1381745) (not b_next!34291) (not b!1381758) (not start!125222) (not b!1381755) b_and!92611 b_and!92609 (not b!1381764) (not b!1381765) b_and!92613 b_and!92607 b_and!92603 (not b!1381744) (not b!1381747) (not b!1381754) (not b!1381748) (not b_next!34287) (not b!1381742))
(check-sat (not b_next!34283) (not b_next!34293) (not b_next!34291) b_and!92605 b_and!92603 (not b_next!34287) (not b_next!34285) (not b_next!34289) b_and!92611 b_and!92609 b_and!92613 b_and!92607)
