; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!321054 () Bool)

(assert start!321054)

(declare-fun b!3453728 () Bool)

(declare-fun b_free!89665 () Bool)

(declare-fun b_next!90369 () Bool)

(assert (=> b!3453728 (= b_free!89665 (not b_next!90369))))

(declare-fun tp!1076930 () Bool)

(declare-fun b_and!242675 () Bool)

(assert (=> b!3453728 (= tp!1076930 b_and!242675)))

(declare-fun b_free!89667 () Bool)

(declare-fun b_next!90371 () Bool)

(assert (=> b!3453728 (= b_free!89667 (not b_next!90371))))

(declare-fun tp!1076941 () Bool)

(declare-fun b_and!242677 () Bool)

(assert (=> b!3453728 (= tp!1076941 b_and!242677)))

(declare-fun b!3453741 () Bool)

(declare-fun b_free!89669 () Bool)

(declare-fun b_next!90373 () Bool)

(assert (=> b!3453741 (= b_free!89669 (not b_next!90373))))

(declare-fun tp!1076940 () Bool)

(declare-fun b_and!242679 () Bool)

(assert (=> b!3453741 (= tp!1076940 b_and!242679)))

(declare-fun b_free!89671 () Bool)

(declare-fun b_next!90375 () Bool)

(assert (=> b!3453741 (= b_free!89671 (not b_next!90375))))

(declare-fun tp!1076938 () Bool)

(declare-fun b_and!242681 () Bool)

(assert (=> b!3453741 (= tp!1076938 b_and!242681)))

(declare-fun b!3453715 () Bool)

(declare-fun b_free!89673 () Bool)

(declare-fun b_next!90377 () Bool)

(assert (=> b!3453715 (= b_free!89673 (not b_next!90377))))

(declare-fun tp!1076942 () Bool)

(declare-fun b_and!242683 () Bool)

(assert (=> b!3453715 (= tp!1076942 b_and!242683)))

(declare-fun b_free!89675 () Bool)

(declare-fun b_next!90379 () Bool)

(assert (=> b!3453715 (= b_free!89675 (not b_next!90379))))

(declare-fun tp!1076935 () Bool)

(declare-fun b_and!242685 () Bool)

(assert (=> b!3453715 (= tp!1076935 b_and!242685)))

(declare-fun bs!559967 () Bool)

(declare-fun b!3453747 () Bool)

(declare-fun b!3453723 () Bool)

(assert (= bs!559967 (and b!3453747 b!3453723)))

(declare-fun lambda!121637 () Int)

(declare-fun lambda!121636 () Int)

(assert (=> bs!559967 (not (= lambda!121637 lambda!121636))))

(declare-fun b!3453764 () Bool)

(declare-fun e!2139468 () Bool)

(assert (=> b!3453764 (= e!2139468 true)))

(declare-fun b!3453763 () Bool)

(declare-fun e!2139467 () Bool)

(assert (=> b!3453763 (= e!2139467 e!2139468)))

(declare-fun b!3453762 () Bool)

(declare-fun e!2139466 () Bool)

(assert (=> b!3453762 (= e!2139466 e!2139467)))

(assert (=> b!3453747 e!2139466))

(assert (= b!3453763 b!3453764))

(assert (= b!3453762 b!3453763))

(declare-datatypes ((C!20556 0))(
  ( (C!20557 (val!12326 Int)) )
))
(declare-datatypes ((Regex!10185 0))(
  ( (ElementMatch!10185 (c!591212 C!20556)) (Concat!15841 (regOne!20882 Regex!10185) (regTwo!20882 Regex!10185)) (EmptyExpr!10185) (Star!10185 (reg!10514 Regex!10185)) (EmptyLang!10185) (Union!10185 (regOne!20883 Regex!10185) (regTwo!20883 Regex!10185)) )
))
(declare-datatypes ((List!37230 0))(
  ( (Nil!37106) (Cons!37106 (h!42526 (_ BitVec 16)) (t!272129 List!37230)) )
))
(declare-datatypes ((TokenValue!5656 0))(
  ( (FloatLiteralValue!11312 (text!40037 List!37230)) (TokenValueExt!5655 (__x!23529 Int)) (Broken!28280 (value!175075 List!37230)) (Object!5779) (End!5656) (Def!5656) (Underscore!5656) (Match!5656) (Else!5656) (Error!5656) (Case!5656) (If!5656) (Extends!5656) (Abstract!5656) (Class!5656) (Val!5656) (DelimiterValue!11312 (del!5716 List!37230)) (KeywordValue!5662 (value!175076 List!37230)) (CommentValue!11312 (value!175077 List!37230)) (WhitespaceValue!11312 (value!175078 List!37230)) (IndentationValue!5656 (value!175079 List!37230)) (String!41613) (Int32!5656) (Broken!28281 (value!175080 List!37230)) (Boolean!5657) (Unit!52431) (OperatorValue!5659 (op!5716 List!37230)) (IdentifierValue!11312 (value!175081 List!37230)) (IdentifierValue!11313 (value!175082 List!37230)) (WhitespaceValue!11313 (value!175083 List!37230)) (True!11312) (False!11312) (Broken!28282 (value!175084 List!37230)) (Broken!28283 (value!175085 List!37230)) (True!11313) (RightBrace!5656) (RightBracket!5656) (Colon!5656) (Null!5656) (Comma!5656) (LeftBracket!5656) (False!11313) (LeftBrace!5656) (ImaginaryLiteralValue!5656 (text!40038 List!37230)) (StringLiteralValue!16968 (value!175086 List!37230)) (EOFValue!5656 (value!175087 List!37230)) (IdentValue!5656 (value!175088 List!37230)) (DelimiterValue!11313 (value!175089 List!37230)) (DedentValue!5656 (value!175090 List!37230)) (NewLineValue!5656 (value!175091 List!37230)) (IntegerValue!16968 (value!175092 (_ BitVec 32)) (text!40039 List!37230)) (IntegerValue!16969 (value!175093 Int) (text!40040 List!37230)) (Times!5656) (Or!5656) (Equal!5656) (Minus!5656) (Broken!28284 (value!175094 List!37230)) (And!5656) (Div!5656) (LessEqual!5656) (Mod!5656) (Concat!15842) (Not!5656) (Plus!5656) (SpaceValue!5656 (value!175095 List!37230)) (IntegerValue!16970 (value!175096 Int) (text!40041 List!37230)) (StringLiteralValue!16969 (text!40042 List!37230)) (FloatLiteralValue!11313 (text!40043 List!37230)) (BytesLiteralValue!5656 (value!175097 List!37230)) (CommentValue!11313 (value!175098 List!37230)) (StringLiteralValue!16970 (value!175099 List!37230)) (ErrorTokenValue!5656 (msg!5717 List!37230)) )
))
(declare-datatypes ((List!37231 0))(
  ( (Nil!37107) (Cons!37107 (h!42527 C!20556) (t!272130 List!37231)) )
))
(declare-datatypes ((IArray!22459 0))(
  ( (IArray!22460 (innerList!11287 List!37231)) )
))
(declare-datatypes ((Conc!11227 0))(
  ( (Node!11227 (left!28942 Conc!11227) (right!29272 Conc!11227) (csize!22684 Int) (cheight!11438 Int)) (Leaf!17551 (xs!14401 IArray!22459) (csize!22685 Int)) (Empty!11227) )
))
(declare-datatypes ((BalanceConc!22068 0))(
  ( (BalanceConc!22069 (c!591213 Conc!11227)) )
))
(declare-datatypes ((String!41614 0))(
  ( (String!41615 (value!175100 String)) )
))
(declare-datatypes ((TokenValueInjection!10740 0))(
  ( (TokenValueInjection!10741 (toValue!7650 Int) (toChars!7509 Int)) )
))
(declare-datatypes ((Rule!10652 0))(
  ( (Rule!10653 (regex!5426 Regex!10185) (tag!6028 String!41614) (isSeparator!5426 Bool) (transformation!5426 TokenValueInjection!10740)) )
))
(declare-datatypes ((List!37232 0))(
  ( (Nil!37108) (Cons!37108 (h!42528 Rule!10652) (t!272131 List!37232)) )
))
(declare-fun rules!2135 () List!37232)

(get-info :version)

(assert (= (and b!3453747 ((_ is Cons!37108) rules!2135)) b!3453762))

(declare-fun order!19713 () Int)

(declare-fun order!19715 () Int)

(declare-fun dynLambda!15594 (Int Int) Int)

(declare-fun dynLambda!15595 (Int Int) Int)

(assert (=> b!3453764 (< (dynLambda!15594 order!19713 (toValue!7650 (transformation!5426 (h!42528 rules!2135)))) (dynLambda!15595 order!19715 lambda!121637))))

(declare-fun order!19717 () Int)

(declare-fun dynLambda!15596 (Int Int) Int)

(assert (=> b!3453764 (< (dynLambda!15596 order!19717 (toChars!7509 (transformation!5426 (h!42528 rules!2135)))) (dynLambda!15595 order!19715 lambda!121637))))

(assert (=> b!3453747 true))

(declare-fun e!2139430 () Bool)

(assert (=> b!3453715 (= e!2139430 (and tp!1076942 tp!1076935))))

(declare-fun b!3453716 () Bool)

(declare-fun res!1392896 () Bool)

(declare-fun e!2139454 () Bool)

(assert (=> b!3453716 (=> (not res!1392896) (not e!2139454))))

(declare-datatypes ((Token!10218 0))(
  ( (Token!10219 (value!175101 TokenValue!5656) (rule!8010 Rule!10652) (size!28131 Int) (originalCharacters!6140 List!37231)) )
))
(declare-datatypes ((List!37233 0))(
  ( (Nil!37109) (Cons!37109 (h!42529 Token!10218) (t!272132 List!37233)) )
))
(declare-datatypes ((IArray!22461 0))(
  ( (IArray!22462 (innerList!11288 List!37233)) )
))
(declare-datatypes ((Conc!11228 0))(
  ( (Node!11228 (left!28943 Conc!11228) (right!29273 Conc!11228) (csize!22686 Int) (cheight!11439 Int)) (Leaf!17552 (xs!14402 IArray!22461) (csize!22687 Int)) (Empty!11228) )
))
(declare-datatypes ((BalanceConc!22070 0))(
  ( (BalanceConc!22071 (c!591214 Conc!11228)) )
))
(declare-datatypes ((tuple2!36804 0))(
  ( (tuple2!36805 (_1!21536 BalanceConc!22070) (_2!21536 BalanceConc!22068)) )
))
(declare-fun lt!1172772 () tuple2!36804)

(declare-fun separatorToken!241 () Token!10218)

(declare-fun apply!8710 (BalanceConc!22070 Int) Token!10218)

(assert (=> b!3453716 (= res!1392896 (= (apply!8710 (_1!21536 lt!1172772) 0) separatorToken!241))))

(declare-fun b!3453717 () Bool)

(declare-fun res!1392901 () Bool)

(declare-fun e!2139433 () Bool)

(assert (=> b!3453717 (=> res!1392901 e!2139433)))

(declare-fun tokens!494 () List!37233)

(declare-datatypes ((LexerInterface!5015 0))(
  ( (LexerInterfaceExt!5012 (__x!23530 Int)) (Lexer!5013) )
))
(declare-fun thiss!18206 () LexerInterface!5015)

(declare-fun rulesProduceIndividualToken!2507 (LexerInterface!5015 List!37232 Token!10218) Bool)

(assert (=> b!3453717 (= res!1392901 (not (rulesProduceIndividualToken!2507 thiss!18206 rules!2135 (h!42529 tokens!494))))))

(declare-fun b!3453718 () Bool)

(declare-fun e!2139434 () Bool)

(declare-fun lt!1172779 () Rule!10652)

(assert (=> b!3453718 (= e!2139434 (= (rule!8010 separatorToken!241) lt!1172779))))

(declare-fun b!3453719 () Bool)

(declare-fun e!2139447 () Bool)

(declare-fun lt!1172767 () Rule!10652)

(assert (=> b!3453719 (= e!2139447 (= (rule!8010 (h!42529 tokens!494)) lt!1172767))))

(declare-fun tp!1076933 () Bool)

(declare-fun e!2139456 () Bool)

(declare-fun b!3453720 () Bool)

(declare-fun e!2139429 () Bool)

(declare-fun inv!50270 (String!41614) Bool)

(declare-fun inv!50273 (TokenValueInjection!10740) Bool)

(assert (=> b!3453720 (= e!2139456 (and tp!1076933 (inv!50270 (tag!6028 (rule!8010 separatorToken!241))) (inv!50273 (transformation!5426 (rule!8010 separatorToken!241))) e!2139429))))

(declare-fun b!3453721 () Bool)

(declare-fun e!2139451 () Bool)

(assert (=> b!3453721 (= e!2139451 false)))

(declare-fun b!3453722 () Bool)

(declare-fun res!1392913 () Bool)

(declare-fun e!2139455 () Bool)

(assert (=> b!3453722 (=> (not res!1392913) (not e!2139455))))

(assert (=> b!3453722 (= res!1392913 (and (not ((_ is Nil!37109) tokens!494)) (not ((_ is Nil!37109) (t!272132 tokens!494)))))))

(declare-fun res!1392908 () Bool)

(assert (=> b!3453723 (=> (not res!1392908) (not e!2139455))))

(declare-fun forall!7899 (List!37233 Int) Bool)

(assert (=> b!3453723 (= res!1392908 (forall!7899 tokens!494 lambda!121636))))

(declare-fun tp!1076936 () Bool)

(declare-fun e!2139448 () Bool)

(declare-fun e!2139459 () Bool)

(declare-fun b!3453724 () Bool)

(declare-fun inv!21 (TokenValue!5656) Bool)

(assert (=> b!3453724 (= e!2139459 (and (inv!21 (value!175101 (h!42529 tokens!494))) e!2139448 tp!1076936))))

(declare-fun b!3453725 () Bool)

(declare-fun e!2139452 () Bool)

(declare-fun e!2139450 () Bool)

(assert (=> b!3453725 (= e!2139452 e!2139450)))

(declare-fun res!1392910 () Bool)

(assert (=> b!3453725 (=> res!1392910 e!2139450)))

(assert (=> b!3453725 (= res!1392910 (or (isSeparator!5426 (rule!8010 (h!42529 tokens!494))) (isSeparator!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))))))

(declare-datatypes ((Unit!52432 0))(
  ( (Unit!52433) )
))
(declare-fun lt!1172786 () Unit!52432)

(declare-fun forallContained!1373 (List!37233 Int Token!10218) Unit!52432)

(assert (=> b!3453725 (= lt!1172786 (forallContained!1373 tokens!494 lambda!121636 (h!42529 (t!272132 tokens!494))))))

(declare-fun lt!1172758 () Unit!52432)

(assert (=> b!3453725 (= lt!1172758 (forallContained!1373 tokens!494 lambda!121636 (h!42529 tokens!494)))))

(declare-fun b!3453726 () Bool)

(declare-fun res!1392907 () Bool)

(assert (=> b!3453726 (=> (not res!1392907) (not e!2139455))))

(declare-fun isEmpty!21435 (List!37232) Bool)

(assert (=> b!3453726 (= res!1392907 (not (isEmpty!21435 rules!2135)))))

(declare-fun b!3453727 () Bool)

(declare-fun e!2139458 () Bool)

(declare-fun e!2139442 () Bool)

(declare-fun tp!1076939 () Bool)

(assert (=> b!3453727 (= e!2139458 (and e!2139442 tp!1076939))))

(assert (=> b!3453728 (= e!2139429 (and tp!1076930 tp!1076941))))

(declare-fun b!3453729 () Bool)

(declare-fun res!1392898 () Bool)

(assert (=> b!3453729 (=> (not res!1392898) (not e!2139455))))

(assert (=> b!3453729 (= res!1392898 (isSeparator!5426 (rule!8010 separatorToken!241)))))

(declare-fun b!3453730 () Bool)

(declare-fun e!2139431 () Bool)

(assert (=> b!3453730 (= e!2139431 e!2139447)))

(declare-fun res!1392906 () Bool)

(assert (=> b!3453730 (=> (not res!1392906) (not e!2139447))))

(declare-fun lt!1172788 () List!37231)

(declare-fun matchR!4769 (Regex!10185 List!37231) Bool)

(assert (=> b!3453730 (= res!1392906 (matchR!4769 (regex!5426 lt!1172767) lt!1172788))))

(declare-datatypes ((Option!7499 0))(
  ( (None!7498) (Some!7498 (v!36790 Rule!10652)) )
))
(declare-fun lt!1172784 () Option!7499)

(declare-fun get!11868 (Option!7499) Rule!10652)

(assert (=> b!3453730 (= lt!1172767 (get!11868 lt!1172784))))

(declare-fun b!3453731 () Bool)

(declare-fun res!1392914 () Bool)

(assert (=> b!3453731 (=> (not res!1392914) (not e!2139455))))

(declare-fun rulesProduceEachTokenIndividually!1466 (LexerInterface!5015 List!37232 BalanceConc!22070) Bool)

(declare-fun seqFromList!3905 (List!37233) BalanceConc!22070)

(assert (=> b!3453731 (= res!1392914 (rulesProduceEachTokenIndividually!1466 thiss!18206 rules!2135 (seqFromList!3905 tokens!494)))))

(declare-fun b!3453732 () Bool)

(declare-fun e!2139444 () Unit!52432)

(declare-fun Unit!52434 () Unit!52432)

(assert (=> b!3453732 (= e!2139444 Unit!52434)))

(declare-fun b!3453733 () Bool)

(declare-fun e!2139440 () Bool)

(assert (=> b!3453733 (= e!2139440 e!2139433)))

(declare-fun res!1392899 () Bool)

(assert (=> b!3453733 (=> res!1392899 e!2139433)))

(declare-fun lt!1172774 () List!37231)

(declare-fun lt!1172773 () List!37231)

(assert (=> b!3453733 (= res!1392899 (or (not (= lt!1172774 lt!1172788)) (not (= lt!1172773 lt!1172788))))))

(declare-fun list!13501 (BalanceConc!22068) List!37231)

(declare-fun charsOf!3440 (Token!10218) BalanceConc!22068)

(assert (=> b!3453733 (= lt!1172788 (list!13501 (charsOf!3440 (h!42529 tokens!494))))))

(declare-fun e!2139435 () Bool)

(declare-fun b!3453734 () Bool)

(declare-fun tp!1076931 () Bool)

(assert (=> b!3453734 (= e!2139435 (and (inv!21 (value!175101 separatorToken!241)) e!2139456 tp!1076931))))

(declare-fun b!3453735 () Bool)

(declare-fun e!2139457 () Bool)

(declare-fun contains!6859 (List!37232 Rule!10652) Bool)

(assert (=> b!3453735 (= e!2139457 (contains!6859 rules!2135 (rule!8010 (h!42529 tokens!494))))))

(declare-fun e!2139437 () Bool)

(declare-fun b!3453736 () Bool)

(declare-fun tp!1076932 () Bool)

(assert (=> b!3453736 (= e!2139442 (and tp!1076932 (inv!50270 (tag!6028 (h!42528 rules!2135))) (inv!50273 (transformation!5426 (h!42528 rules!2135))) e!2139437))))

(declare-fun res!1392912 () Bool)

(assert (=> start!321054 (=> (not res!1392912) (not e!2139455))))

(assert (=> start!321054 (= res!1392912 ((_ is Lexer!5013) thiss!18206))))

(assert (=> start!321054 e!2139455))

(assert (=> start!321054 true))

(assert (=> start!321054 e!2139458))

(declare-fun e!2139441 () Bool)

(assert (=> start!321054 e!2139441))

(declare-fun inv!50274 (Token!10218) Bool)

(assert (=> start!321054 (and (inv!50274 separatorToken!241) e!2139435)))

(declare-fun tp!1076937 () Bool)

(declare-fun b!3453737 () Bool)

(assert (=> b!3453737 (= e!2139448 (and tp!1076937 (inv!50270 (tag!6028 (rule!8010 (h!42529 tokens!494)))) (inv!50273 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) e!2139430))))

(declare-fun b!3453738 () Bool)

(declare-fun e!2139449 () Bool)

(assert (=> b!3453738 (= e!2139450 e!2139449)))

(declare-fun res!1392892 () Bool)

(assert (=> b!3453738 (=> res!1392892 e!2139449)))

(declare-fun lt!1172770 () List!37231)

(declare-fun lt!1172775 () List!37231)

(declare-fun ++!9139 (List!37231 List!37231) List!37231)

(declare-fun printWithSeparatorTokenList!302 (LexerInterface!5015 List!37233 Token!10218) List!37231)

(assert (=> b!3453738 (= res!1392892 (not (= lt!1172770 (++!9139 (++!9139 (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494)))) lt!1172775) (printWithSeparatorTokenList!302 thiss!18206 (t!272132 (t!272132 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1172768 () List!37231)

(assert (=> b!3453738 (= lt!1172768 (++!9139 lt!1172775 lt!1172770))))

(assert (=> b!3453738 (= lt!1172775 (list!13501 (charsOf!3440 separatorToken!241)))))

(assert (=> b!3453738 (= lt!1172770 (printWithSeparatorTokenList!302 thiss!18206 (t!272132 tokens!494) separatorToken!241))))

(declare-fun lt!1172762 () List!37231)

(assert (=> b!3453738 (= lt!1172762 (printWithSeparatorTokenList!302 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3453739 () Bool)

(declare-fun Unit!52435 () Unit!52432)

(assert (=> b!3453739 (= e!2139444 Unit!52435)))

(declare-fun lt!1172763 () Unit!52432)

(declare-fun lt!1172783 () C!20556)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!484 (Regex!10185 List!37231 C!20556) Unit!52432)

(assert (=> b!3453739 (= lt!1172763 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!484 (regex!5426 (rule!8010 separatorToken!241)) lt!1172775 lt!1172783))))

(declare-fun res!1392900 () Bool)

(assert (=> b!3453739 (= res!1392900 (not (matchR!4769 (regex!5426 (rule!8010 separatorToken!241)) lt!1172775)))))

(assert (=> b!3453739 (=> (not res!1392900) (not e!2139451))))

(assert (=> b!3453739 e!2139451))

(declare-fun b!3453740 () Bool)

(declare-fun res!1392902 () Bool)

(declare-fun e!2139439 () Bool)

(assert (=> b!3453740 (=> (not res!1392902) (not e!2139439))))

(declare-fun lt!1172759 () tuple2!36804)

(assert (=> b!3453740 (= res!1392902 (= (apply!8710 (_1!21536 lt!1172759) 0) (h!42529 (t!272132 tokens!494))))))

(assert (=> b!3453741 (= e!2139437 (and tp!1076940 tp!1076938))))

(declare-fun b!3453742 () Bool)

(declare-fun res!1392897 () Bool)

(assert (=> b!3453742 (=> (not res!1392897) (not e!2139455))))

(declare-fun sepAndNonSepRulesDisjointChars!1620 (List!37232 List!37232) Bool)

(assert (=> b!3453742 (= res!1392897 (sepAndNonSepRulesDisjointChars!1620 rules!2135 rules!2135))))

(declare-fun b!3453743 () Bool)

(assert (=> b!3453743 (= e!2139455 (not e!2139440))))

(declare-fun res!1392918 () Bool)

(assert (=> b!3453743 (=> res!1392918 e!2139440)))

(assert (=> b!3453743 (= res!1392918 (not (= lt!1172773 lt!1172774)))))

(declare-fun printList!1563 (LexerInterface!5015 List!37233) List!37231)

(assert (=> b!3453743 (= lt!1172774 (printList!1563 thiss!18206 (Cons!37109 (h!42529 tokens!494) Nil!37109)))))

(declare-fun lt!1172785 () BalanceConc!22068)

(assert (=> b!3453743 (= lt!1172773 (list!13501 lt!1172785))))

(declare-fun lt!1172780 () BalanceConc!22070)

(declare-fun printTailRec!1510 (LexerInterface!5015 BalanceConc!22070 Int BalanceConc!22068) BalanceConc!22068)

(assert (=> b!3453743 (= lt!1172785 (printTailRec!1510 thiss!18206 lt!1172780 0 (BalanceConc!22069 Empty!11227)))))

(declare-fun print!2080 (LexerInterface!5015 BalanceConc!22070) BalanceConc!22068)

(assert (=> b!3453743 (= lt!1172785 (print!2080 thiss!18206 lt!1172780))))

(declare-fun singletonSeq!2522 (Token!10218) BalanceConc!22070)

(assert (=> b!3453743 (= lt!1172780 (singletonSeq!2522 (h!42529 tokens!494)))))

(declare-fun b!3453744 () Bool)

(assert (=> b!3453744 (= e!2139433 e!2139452)))

(declare-fun res!1392905 () Bool)

(assert (=> b!3453744 (=> res!1392905 e!2139452)))

(declare-fun lt!1172789 () BalanceConc!22068)

(declare-fun isEmpty!21436 (BalanceConc!22070) Bool)

(declare-fun lex!2341 (LexerInterface!5015 List!37232 BalanceConc!22068) tuple2!36804)

(assert (=> b!3453744 (= res!1392905 (isEmpty!21436 (_1!21536 (lex!2341 thiss!18206 rules!2135 lt!1172789))))))

(declare-fun seqFromList!3906 (List!37231) BalanceConc!22068)

(assert (=> b!3453744 (= lt!1172789 (seqFromList!3906 lt!1172788))))

(declare-fun b!3453745 () Bool)

(declare-fun isEmpty!21437 (BalanceConc!22068) Bool)

(assert (=> b!3453745 (= e!2139439 (isEmpty!21437 (_2!21536 lt!1172759)))))

(declare-fun b!3453746 () Bool)

(declare-fun e!2139436 () Bool)

(assert (=> b!3453746 (= e!2139436 e!2139434)))

(declare-fun res!1392904 () Bool)

(assert (=> b!3453746 (=> (not res!1392904) (not e!2139434))))

(assert (=> b!3453746 (= res!1392904 (matchR!4769 (regex!5426 lt!1172779) lt!1172775))))

(declare-fun lt!1172777 () Option!7499)

(assert (=> b!3453746 (= lt!1172779 (get!11868 lt!1172777))))

(declare-fun e!2139438 () Bool)

(assert (=> b!3453747 (= e!2139438 e!2139457)))

(declare-fun res!1392895 () Bool)

(assert (=> b!3453747 (=> res!1392895 e!2139457)))

(assert (=> b!3453747 (= res!1392895 (not (contains!6859 rules!2135 (rule!8010 separatorToken!241))))))

(declare-fun lt!1172761 () Unit!52432)

(assert (=> b!3453747 (= lt!1172761 (forallContained!1373 tokens!494 lambda!121637 (h!42529 (t!272132 tokens!494))))))

(assert (=> b!3453747 (= (rulesProduceIndividualToken!2507 thiss!18206 rules!2135 (h!42529 (t!272132 tokens!494))) e!2139439)))

(declare-fun res!1392894 () Bool)

(assert (=> b!3453747 (=> (not res!1392894) (not e!2139439))))

(declare-fun size!28132 (BalanceConc!22070) Int)

(assert (=> b!3453747 (= res!1392894 (= (size!28132 (_1!21536 lt!1172759)) 1))))

(declare-fun lt!1172771 () BalanceConc!22068)

(assert (=> b!3453747 (= lt!1172759 (lex!2341 thiss!18206 rules!2135 lt!1172771))))

(declare-fun lt!1172787 () BalanceConc!22070)

(assert (=> b!3453747 (= lt!1172771 (printTailRec!1510 thiss!18206 lt!1172787 0 (BalanceConc!22069 Empty!11227)))))

(assert (=> b!3453747 (= lt!1172771 (print!2080 thiss!18206 lt!1172787))))

(assert (=> b!3453747 (= lt!1172787 (singletonSeq!2522 (h!42529 (t!272132 tokens!494))))))

(assert (=> b!3453747 e!2139454))

(declare-fun res!1392916 () Bool)

(assert (=> b!3453747 (=> (not res!1392916) (not e!2139454))))

(assert (=> b!3453747 (= res!1392916 (= (size!28132 (_1!21536 lt!1172772)) 1))))

(declare-fun lt!1172781 () BalanceConc!22068)

(assert (=> b!3453747 (= lt!1172772 (lex!2341 thiss!18206 rules!2135 lt!1172781))))

(declare-fun lt!1172776 () BalanceConc!22070)

(assert (=> b!3453747 (= lt!1172781 (printTailRec!1510 thiss!18206 lt!1172776 0 (BalanceConc!22069 Empty!11227)))))

(assert (=> b!3453747 (= lt!1172781 (print!2080 thiss!18206 lt!1172776))))

(assert (=> b!3453747 (= lt!1172776 (singletonSeq!2522 separatorToken!241))))

(declare-fun lt!1172790 () Unit!52432)

(assert (=> b!3453747 (= lt!1172790 e!2139444)))

(declare-fun c!591211 () Bool)

(declare-fun contains!6860 (List!37231 C!20556) Bool)

(declare-fun usedCharacters!660 (Regex!10185) List!37231)

(assert (=> b!3453747 (= c!591211 (not (contains!6860 (usedCharacters!660 (regex!5426 (rule!8010 separatorToken!241))) lt!1172783)))))

(declare-fun head!7299 (List!37231) C!20556)

(assert (=> b!3453747 (= lt!1172783 (head!7299 lt!1172775))))

(assert (=> b!3453747 e!2139436))

(declare-fun res!1392909 () Bool)

(assert (=> b!3453747 (=> (not res!1392909) (not e!2139436))))

(declare-fun isDefined!5780 (Option!7499) Bool)

(assert (=> b!3453747 (= res!1392909 (isDefined!5780 lt!1172777))))

(declare-fun getRuleFromTag!1069 (LexerInterface!5015 List!37232 String!41614) Option!7499)

(assert (=> b!3453747 (= lt!1172777 (getRuleFromTag!1069 thiss!18206 rules!2135 (tag!6028 (rule!8010 separatorToken!241))))))

(declare-fun lt!1172766 () Unit!52432)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1069 (LexerInterface!5015 List!37232 List!37231 Token!10218) Unit!52432)

(assert (=> b!3453747 (= lt!1172766 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1069 thiss!18206 rules!2135 lt!1172775 separatorToken!241))))

(declare-datatypes ((tuple2!36806 0))(
  ( (tuple2!36807 (_1!21537 Token!10218) (_2!21537 List!37231)) )
))
(declare-datatypes ((Option!7500 0))(
  ( (None!7499) (Some!7499 (v!36791 tuple2!36806)) )
))
(declare-fun maxPrefixOneRule!1722 (LexerInterface!5015 Rule!10652 List!37231) Option!7500)

(declare-fun apply!8711 (TokenValueInjection!10740 BalanceConc!22068) TokenValue!5656)

(declare-fun size!28133 (List!37231) Int)

(assert (=> b!3453747 (= (maxPrefixOneRule!1722 thiss!18206 (rule!8010 (h!42529 tokens!494)) lt!1172788) (Some!7499 (tuple2!36807 (Token!10219 (apply!8711 (transformation!5426 (rule!8010 (h!42529 tokens!494))) lt!1172789) (rule!8010 (h!42529 tokens!494)) (size!28133 lt!1172788) lt!1172788) Nil!37107)))))

(declare-fun lt!1172760 () Unit!52432)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!815 (LexerInterface!5015 List!37232 List!37231 List!37231 List!37231 Rule!10652) Unit!52432)

(assert (=> b!3453747 (= lt!1172760 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!815 thiss!18206 rules!2135 lt!1172788 lt!1172788 Nil!37107 (rule!8010 (h!42529 tokens!494))))))

(assert (=> b!3453747 e!2139431))

(declare-fun res!1392911 () Bool)

(assert (=> b!3453747 (=> (not res!1392911) (not e!2139431))))

(assert (=> b!3453747 (= res!1392911 (isDefined!5780 lt!1172784))))

(assert (=> b!3453747 (= lt!1172784 (getRuleFromTag!1069 thiss!18206 rules!2135 (tag!6028 (rule!8010 (h!42529 tokens!494)))))))

(declare-fun lt!1172765 () Unit!52432)

(assert (=> b!3453747 (= lt!1172765 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1069 thiss!18206 rules!2135 lt!1172788 (h!42529 tokens!494)))))

(declare-fun lt!1172778 () Unit!52432)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1004 (LexerInterface!5015 List!37232 List!37233 Token!10218) Unit!52432)

(assert (=> b!3453747 (= lt!1172778 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1004 thiss!18206 rules!2135 tokens!494 (h!42529 tokens!494)))))

(declare-fun tp!1076934 () Bool)

(declare-fun b!3453748 () Bool)

(assert (=> b!3453748 (= e!2139441 (and (inv!50274 (h!42529 tokens!494)) e!2139459 tp!1076934))))

(declare-fun b!3453749 () Bool)

(declare-fun res!1392903 () Bool)

(assert (=> b!3453749 (=> (not res!1392903) (not e!2139455))))

(declare-fun rulesInvariant!4412 (LexerInterface!5015 List!37232) Bool)

(assert (=> b!3453749 (= res!1392903 (rulesInvariant!4412 thiss!18206 rules!2135))))

(declare-fun b!3453750 () Bool)

(declare-fun e!2139443 () Bool)

(assert (=> b!3453750 (= e!2139449 e!2139443)))

(declare-fun res!1392915 () Bool)

(assert (=> b!3453750 (=> res!1392915 e!2139443)))

(declare-fun lt!1172764 () List!37231)

(assert (=> b!3453750 (= res!1392915 (not (= lt!1172762 lt!1172764)))))

(assert (=> b!3453750 (= lt!1172764 (++!9139 (++!9139 lt!1172788 lt!1172775) lt!1172770))))

(declare-fun b!3453751 () Bool)

(assert (=> b!3453751 (= e!2139454 (isEmpty!21437 (_2!21536 lt!1172772)))))

(declare-fun b!3453752 () Bool)

(declare-fun res!1392893 () Bool)

(assert (=> b!3453752 (=> (not res!1392893) (not e!2139455))))

(assert (=> b!3453752 (= res!1392893 (rulesProduceIndividualToken!2507 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3453753 () Bool)

(assert (=> b!3453753 (= e!2139443 e!2139438)))

(declare-fun res!1392917 () Bool)

(assert (=> b!3453753 (=> res!1392917 e!2139438)))

(declare-fun lt!1172782 () List!37231)

(assert (=> b!3453753 (= res!1392917 (not (= lt!1172762 lt!1172782)))))

(assert (=> b!3453753 (= lt!1172764 lt!1172782)))

(assert (=> b!3453753 (= lt!1172782 (++!9139 lt!1172788 lt!1172768))))

(declare-fun lt!1172769 () Unit!52432)

(declare-fun lemmaConcatAssociativity!1944 (List!37231 List!37231 List!37231) Unit!52432)

(assert (=> b!3453753 (= lt!1172769 (lemmaConcatAssociativity!1944 lt!1172788 lt!1172775 lt!1172770))))

(assert (= (and start!321054 res!1392912) b!3453726))

(assert (= (and b!3453726 res!1392907) b!3453749))

(assert (= (and b!3453749 res!1392903) b!3453731))

(assert (= (and b!3453731 res!1392914) b!3453752))

(assert (= (and b!3453752 res!1392893) b!3453729))

(assert (= (and b!3453729 res!1392898) b!3453723))

(assert (= (and b!3453723 res!1392908) b!3453742))

(assert (= (and b!3453742 res!1392897) b!3453722))

(assert (= (and b!3453722 res!1392913) b!3453743))

(assert (= (and b!3453743 (not res!1392918)) b!3453733))

(assert (= (and b!3453733 (not res!1392899)) b!3453717))

(assert (= (and b!3453717 (not res!1392901)) b!3453744))

(assert (= (and b!3453744 (not res!1392905)) b!3453725))

(assert (= (and b!3453725 (not res!1392910)) b!3453738))

(assert (= (and b!3453738 (not res!1392892)) b!3453750))

(assert (= (and b!3453750 (not res!1392915)) b!3453753))

(assert (= (and b!3453753 (not res!1392917)) b!3453747))

(assert (= (and b!3453747 res!1392911) b!3453730))

(assert (= (and b!3453730 res!1392906) b!3453719))

(assert (= (and b!3453747 res!1392909) b!3453746))

(assert (= (and b!3453746 res!1392904) b!3453718))

(assert (= (and b!3453747 c!591211) b!3453739))

(assert (= (and b!3453747 (not c!591211)) b!3453732))

(assert (= (and b!3453739 res!1392900) b!3453721))

(assert (= (and b!3453747 res!1392916) b!3453716))

(assert (= (and b!3453716 res!1392896) b!3453751))

(assert (= (and b!3453747 res!1392894) b!3453740))

(assert (= (and b!3453740 res!1392902) b!3453745))

(assert (= (and b!3453747 (not res!1392895)) b!3453735))

(assert (= b!3453736 b!3453741))

(assert (= b!3453727 b!3453736))

(assert (= (and start!321054 ((_ is Cons!37108) rules!2135)) b!3453727))

(assert (= b!3453737 b!3453715))

(assert (= b!3453724 b!3453737))

(assert (= b!3453748 b!3453724))

(assert (= (and start!321054 ((_ is Cons!37109) tokens!494)) b!3453748))

(assert (= b!3453720 b!3453728))

(assert (= b!3453734 b!3453720))

(assert (= start!321054 b!3453734))

(declare-fun m!3852241 () Bool)

(assert (=> start!321054 m!3852241))

(declare-fun m!3852243 () Bool)

(assert (=> b!3453740 m!3852243))

(declare-fun m!3852245 () Bool)

(assert (=> b!3453724 m!3852245))

(declare-fun m!3852247 () Bool)

(assert (=> b!3453751 m!3852247))

(declare-fun m!3852249 () Bool)

(assert (=> b!3453720 m!3852249))

(declare-fun m!3852251 () Bool)

(assert (=> b!3453720 m!3852251))

(declare-fun m!3852253 () Bool)

(assert (=> b!3453735 m!3852253))

(declare-fun m!3852255 () Bool)

(assert (=> b!3453753 m!3852255))

(declare-fun m!3852257 () Bool)

(assert (=> b!3453753 m!3852257))

(declare-fun m!3852259 () Bool)

(assert (=> b!3453752 m!3852259))

(declare-fun m!3852261 () Bool)

(assert (=> b!3453747 m!3852261))

(declare-fun m!3852263 () Bool)

(assert (=> b!3453747 m!3852263))

(declare-fun m!3852265 () Bool)

(assert (=> b!3453747 m!3852265))

(declare-fun m!3852267 () Bool)

(assert (=> b!3453747 m!3852267))

(declare-fun m!3852269 () Bool)

(assert (=> b!3453747 m!3852269))

(declare-fun m!3852271 () Bool)

(assert (=> b!3453747 m!3852271))

(declare-fun m!3852273 () Bool)

(assert (=> b!3453747 m!3852273))

(declare-fun m!3852275 () Bool)

(assert (=> b!3453747 m!3852275))

(declare-fun m!3852277 () Bool)

(assert (=> b!3453747 m!3852277))

(declare-fun m!3852279 () Bool)

(assert (=> b!3453747 m!3852279))

(declare-fun m!3852281 () Bool)

(assert (=> b!3453747 m!3852281))

(declare-fun m!3852283 () Bool)

(assert (=> b!3453747 m!3852283))

(declare-fun m!3852285 () Bool)

(assert (=> b!3453747 m!3852285))

(declare-fun m!3852287 () Bool)

(assert (=> b!3453747 m!3852287))

(declare-fun m!3852289 () Bool)

(assert (=> b!3453747 m!3852289))

(declare-fun m!3852291 () Bool)

(assert (=> b!3453747 m!3852291))

(declare-fun m!3852293 () Bool)

(assert (=> b!3453747 m!3852293))

(declare-fun m!3852295 () Bool)

(assert (=> b!3453747 m!3852295))

(declare-fun m!3852297 () Bool)

(assert (=> b!3453747 m!3852297))

(declare-fun m!3852299 () Bool)

(assert (=> b!3453747 m!3852299))

(declare-fun m!3852301 () Bool)

(assert (=> b!3453747 m!3852301))

(declare-fun m!3852303 () Bool)

(assert (=> b!3453747 m!3852303))

(assert (=> b!3453747 m!3852261))

(declare-fun m!3852305 () Bool)

(assert (=> b!3453747 m!3852305))

(declare-fun m!3852307 () Bool)

(assert (=> b!3453747 m!3852307))

(declare-fun m!3852309 () Bool)

(assert (=> b!3453747 m!3852309))

(declare-fun m!3852311 () Bool)

(assert (=> b!3453747 m!3852311))

(declare-fun m!3852313 () Bool)

(assert (=> b!3453747 m!3852313))

(declare-fun m!3852315 () Bool)

(assert (=> b!3453742 m!3852315))

(declare-fun m!3852317 () Bool)

(assert (=> b!3453726 m!3852317))

(declare-fun m!3852319 () Bool)

(assert (=> b!3453723 m!3852319))

(declare-fun m!3852321 () Bool)

(assert (=> b!3453744 m!3852321))

(declare-fun m!3852323 () Bool)

(assert (=> b!3453744 m!3852323))

(declare-fun m!3852325 () Bool)

(assert (=> b!3453744 m!3852325))

(declare-fun m!3852327 () Bool)

(assert (=> b!3453725 m!3852327))

(declare-fun m!3852329 () Bool)

(assert (=> b!3453725 m!3852329))

(declare-fun m!3852331 () Bool)

(assert (=> b!3453738 m!3852331))

(declare-fun m!3852333 () Bool)

(assert (=> b!3453738 m!3852333))

(declare-fun m!3852335 () Bool)

(assert (=> b!3453738 m!3852335))

(declare-fun m!3852337 () Bool)

(assert (=> b!3453738 m!3852337))

(declare-fun m!3852339 () Bool)

(assert (=> b!3453738 m!3852339))

(declare-fun m!3852341 () Bool)

(assert (=> b!3453738 m!3852341))

(declare-fun m!3852343 () Bool)

(assert (=> b!3453738 m!3852343))

(assert (=> b!3453738 m!3852333))

(assert (=> b!3453738 m!3852341))

(declare-fun m!3852345 () Bool)

(assert (=> b!3453738 m!3852345))

(assert (=> b!3453738 m!3852343))

(assert (=> b!3453738 m!3852345))

(declare-fun m!3852347 () Bool)

(assert (=> b!3453738 m!3852347))

(assert (=> b!3453738 m!3852335))

(declare-fun m!3852349 () Bool)

(assert (=> b!3453738 m!3852349))

(declare-fun m!3852351 () Bool)

(assert (=> b!3453734 m!3852351))

(declare-fun m!3852353 () Bool)

(assert (=> b!3453716 m!3852353))

(declare-fun m!3852355 () Bool)

(assert (=> b!3453730 m!3852355))

(declare-fun m!3852357 () Bool)

(assert (=> b!3453730 m!3852357))

(declare-fun m!3852359 () Bool)

(assert (=> b!3453737 m!3852359))

(declare-fun m!3852361 () Bool)

(assert (=> b!3453737 m!3852361))

(declare-fun m!3852363 () Bool)

(assert (=> b!3453733 m!3852363))

(assert (=> b!3453733 m!3852363))

(declare-fun m!3852365 () Bool)

(assert (=> b!3453733 m!3852365))

(declare-fun m!3852367 () Bool)

(assert (=> b!3453749 m!3852367))

(declare-fun m!3852369 () Bool)

(assert (=> b!3453736 m!3852369))

(declare-fun m!3852371 () Bool)

(assert (=> b!3453736 m!3852371))

(declare-fun m!3852373 () Bool)

(assert (=> b!3453717 m!3852373))

(declare-fun m!3852375 () Bool)

(assert (=> b!3453748 m!3852375))

(declare-fun m!3852377 () Bool)

(assert (=> b!3453750 m!3852377))

(assert (=> b!3453750 m!3852377))

(declare-fun m!3852379 () Bool)

(assert (=> b!3453750 m!3852379))

(declare-fun m!3852381 () Bool)

(assert (=> b!3453746 m!3852381))

(declare-fun m!3852383 () Bool)

(assert (=> b!3453746 m!3852383))

(declare-fun m!3852385 () Bool)

(assert (=> b!3453739 m!3852385))

(declare-fun m!3852387 () Bool)

(assert (=> b!3453739 m!3852387))

(declare-fun m!3852389 () Bool)

(assert (=> b!3453743 m!3852389))

(declare-fun m!3852391 () Bool)

(assert (=> b!3453743 m!3852391))

(declare-fun m!3852393 () Bool)

(assert (=> b!3453743 m!3852393))

(declare-fun m!3852395 () Bool)

(assert (=> b!3453743 m!3852395))

(declare-fun m!3852397 () Bool)

(assert (=> b!3453743 m!3852397))

(declare-fun m!3852399 () Bool)

(assert (=> b!3453745 m!3852399))

(declare-fun m!3852401 () Bool)

(assert (=> b!3453731 m!3852401))

(assert (=> b!3453731 m!3852401))

(declare-fun m!3852403 () Bool)

(assert (=> b!3453731 m!3852403))

(check-sat (not b_next!90373) (not b!3453726) b_and!242677 (not b_next!90379) (not b!3453730) (not b!3453749) (not b_next!90369) (not b!3453752) (not b!3453750) (not b!3453735) b_and!242675 (not b!3453724) (not b_next!90375) (not b!3453746) (not b!3453747) (not b_next!90377) (not b!3453751) (not b!3453731) (not b!3453744) (not b!3453745) (not b!3453716) (not b!3453717) b_and!242683 (not b!3453748) (not b!3453753) (not b!3453740) (not b!3453738) (not b!3453737) b_and!242681 (not b!3453743) (not start!321054) (not b!3453727) (not b!3453739) (not b!3453725) (not b!3453723) (not b!3453733) b_and!242679 b_and!242685 (not b_next!90371) (not b!3453742) (not b!3453762) (not b!3453736) (not b!3453734) (not b!3453720))
(check-sat (not b_next!90373) b_and!242677 (not b_next!90377) (not b_next!90379) (not b_next!90369) b_and!242683 b_and!242681 b_and!242675 (not b_next!90371) (not b_next!90375) b_and!242679 b_and!242685)
(get-model)

(declare-fun d!993342 () Bool)

(declare-fun res!1392931 () Bool)

(declare-fun e!2139471 () Bool)

(assert (=> d!993342 (=> (not res!1392931) (not e!2139471))))

(declare-fun isEmpty!21438 (List!37231) Bool)

(assert (=> d!993342 (= res!1392931 (not (isEmpty!21438 (originalCharacters!6140 (h!42529 tokens!494)))))))

(assert (=> d!993342 (= (inv!50274 (h!42529 tokens!494)) e!2139471)))

(declare-fun b!3453771 () Bool)

(declare-fun res!1392932 () Bool)

(assert (=> b!3453771 (=> (not res!1392932) (not e!2139471))))

(declare-fun dynLambda!15597 (Int TokenValue!5656) BalanceConc!22068)

(assert (=> b!3453771 (= res!1392932 (= (originalCharacters!6140 (h!42529 tokens!494)) (list!13501 (dynLambda!15597 (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) (value!175101 (h!42529 tokens!494))))))))

(declare-fun b!3453772 () Bool)

(assert (=> b!3453772 (= e!2139471 (= (size!28131 (h!42529 tokens!494)) (size!28133 (originalCharacters!6140 (h!42529 tokens!494)))))))

(assert (= (and d!993342 res!1392931) b!3453771))

(assert (= (and b!3453771 res!1392932) b!3453772))

(declare-fun b_lambda!99231 () Bool)

(assert (=> (not b_lambda!99231) (not b!3453771)))

(declare-fun tb!188039 () Bool)

(declare-fun t!272134 () Bool)

(assert (=> (and b!3453728 (= (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494))))) t!272134) tb!188039))

(declare-fun b!3453777 () Bool)

(declare-fun e!2139474 () Bool)

(declare-fun tp!1076945 () Bool)

(declare-fun inv!50275 (Conc!11227) Bool)

(assert (=> b!3453777 (= e!2139474 (and (inv!50275 (c!591213 (dynLambda!15597 (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) (value!175101 (h!42529 tokens!494))))) tp!1076945))))

(declare-fun result!231928 () Bool)

(declare-fun inv!50276 (BalanceConc!22068) Bool)

(assert (=> tb!188039 (= result!231928 (and (inv!50276 (dynLambda!15597 (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) (value!175101 (h!42529 tokens!494)))) e!2139474))))

(assert (= tb!188039 b!3453777))

(declare-fun m!3852405 () Bool)

(assert (=> b!3453777 m!3852405))

(declare-fun m!3852407 () Bool)

(assert (=> tb!188039 m!3852407))

(assert (=> b!3453771 t!272134))

(declare-fun b_and!242687 () Bool)

(assert (= b_and!242677 (and (=> t!272134 result!231928) b_and!242687)))

(declare-fun t!272136 () Bool)

(declare-fun tb!188041 () Bool)

(assert (=> (and b!3453741 (= (toChars!7509 (transformation!5426 (h!42528 rules!2135))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494))))) t!272136) tb!188041))

(declare-fun result!231932 () Bool)

(assert (= result!231932 result!231928))

(assert (=> b!3453771 t!272136))

(declare-fun b_and!242689 () Bool)

(assert (= b_and!242681 (and (=> t!272136 result!231932) b_and!242689)))

(declare-fun t!272138 () Bool)

(declare-fun tb!188043 () Bool)

(assert (=> (and b!3453715 (= (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494))))) t!272138) tb!188043))

(declare-fun result!231934 () Bool)

(assert (= result!231934 result!231928))

(assert (=> b!3453771 t!272138))

(declare-fun b_and!242691 () Bool)

(assert (= b_and!242685 (and (=> t!272138 result!231934) b_and!242691)))

(declare-fun m!3852409 () Bool)

(assert (=> d!993342 m!3852409))

(declare-fun m!3852411 () Bool)

(assert (=> b!3453771 m!3852411))

(assert (=> b!3453771 m!3852411))

(declare-fun m!3852413 () Bool)

(assert (=> b!3453771 m!3852413))

(declare-fun m!3852415 () Bool)

(assert (=> b!3453772 m!3852415))

(assert (=> b!3453748 d!993342))

(declare-fun d!993344 () Bool)

(assert (=> d!993344 (= (isEmpty!21435 rules!2135) ((_ is Nil!37108) rules!2135))))

(assert (=> b!3453726 d!993344))

(declare-fun d!993346 () Bool)

(assert (=> d!993346 (rulesProduceIndividualToken!2507 thiss!18206 rules!2135 (h!42529 tokens!494))))

(declare-fun lt!1172819 () Unit!52432)

(declare-fun choose!19949 (LexerInterface!5015 List!37232 List!37233 Token!10218) Unit!52432)

(assert (=> d!993346 (= lt!1172819 (choose!19949 thiss!18206 rules!2135 tokens!494 (h!42529 tokens!494)))))

(assert (=> d!993346 (not (isEmpty!21435 rules!2135))))

(assert (=> d!993346 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1004 thiss!18206 rules!2135 tokens!494 (h!42529 tokens!494)) lt!1172819)))

(declare-fun bs!559974 () Bool)

(assert (= bs!559974 d!993346))

(assert (=> bs!559974 m!3852373))

(declare-fun m!3852591 () Bool)

(assert (=> bs!559974 m!3852591))

(assert (=> bs!559974 m!3852317))

(assert (=> b!3453747 d!993346))

(declare-fun d!993404 () Bool)

(declare-fun lt!1172847 () Bool)

(declare-fun e!2139598 () Bool)

(assert (=> d!993404 (= lt!1172847 e!2139598)))

(declare-fun res!1393052 () Bool)

(assert (=> d!993404 (=> (not res!1393052) (not e!2139598))))

(declare-fun list!13502 (BalanceConc!22070) List!37233)

(assert (=> d!993404 (= res!1393052 (= (list!13502 (_1!21536 (lex!2341 thiss!18206 rules!2135 (print!2080 thiss!18206 (singletonSeq!2522 (h!42529 (t!272132 tokens!494))))))) (list!13502 (singletonSeq!2522 (h!42529 (t!272132 tokens!494))))))))

(declare-fun e!2139597 () Bool)

(assert (=> d!993404 (= lt!1172847 e!2139597)))

(declare-fun res!1393054 () Bool)

(assert (=> d!993404 (=> (not res!1393054) (not e!2139597))))

(declare-fun lt!1172846 () tuple2!36804)

(assert (=> d!993404 (= res!1393054 (= (size!28132 (_1!21536 lt!1172846)) 1))))

(assert (=> d!993404 (= lt!1172846 (lex!2341 thiss!18206 rules!2135 (print!2080 thiss!18206 (singletonSeq!2522 (h!42529 (t!272132 tokens!494))))))))

(assert (=> d!993404 (not (isEmpty!21435 rules!2135))))

(assert (=> d!993404 (= (rulesProduceIndividualToken!2507 thiss!18206 rules!2135 (h!42529 (t!272132 tokens!494))) lt!1172847)))

(declare-fun b!3453977 () Bool)

(declare-fun res!1393053 () Bool)

(assert (=> b!3453977 (=> (not res!1393053) (not e!2139597))))

(assert (=> b!3453977 (= res!1393053 (= (apply!8710 (_1!21536 lt!1172846) 0) (h!42529 (t!272132 tokens!494))))))

(declare-fun b!3453978 () Bool)

(assert (=> b!3453978 (= e!2139597 (isEmpty!21437 (_2!21536 lt!1172846)))))

(declare-fun b!3453979 () Bool)

(assert (=> b!3453979 (= e!2139598 (isEmpty!21437 (_2!21536 (lex!2341 thiss!18206 rules!2135 (print!2080 thiss!18206 (singletonSeq!2522 (h!42529 (t!272132 tokens!494))))))))))

(assert (= (and d!993404 res!1393054) b!3453977))

(assert (= (and b!3453977 res!1393053) b!3453978))

(assert (= (and d!993404 res!1393052) b!3453979))

(assert (=> d!993404 m!3852273))

(declare-fun m!3852675 () Bool)

(assert (=> d!993404 m!3852675))

(assert (=> d!993404 m!3852675))

(declare-fun m!3852677 () Bool)

(assert (=> d!993404 m!3852677))

(assert (=> d!993404 m!3852317))

(declare-fun m!3852679 () Bool)

(assert (=> d!993404 m!3852679))

(assert (=> d!993404 m!3852273))

(declare-fun m!3852681 () Bool)

(assert (=> d!993404 m!3852681))

(assert (=> d!993404 m!3852273))

(declare-fun m!3852683 () Bool)

(assert (=> d!993404 m!3852683))

(declare-fun m!3852685 () Bool)

(assert (=> b!3453977 m!3852685))

(declare-fun m!3852687 () Bool)

(assert (=> b!3453978 m!3852687))

(assert (=> b!3453979 m!3852273))

(assert (=> b!3453979 m!3852273))

(assert (=> b!3453979 m!3852675))

(assert (=> b!3453979 m!3852675))

(assert (=> b!3453979 m!3852677))

(declare-fun m!3852689 () Bool)

(assert (=> b!3453979 m!3852689))

(assert (=> b!3453747 d!993404))

(declare-fun b!3454019 () Bool)

(declare-fun e!2139619 () Bool)

(declare-fun e!2139622 () Bool)

(assert (=> b!3454019 (= e!2139619 e!2139622)))

(declare-fun res!1393081 () Bool)

(assert (=> b!3454019 (=> (not res!1393081) (not e!2139622))))

(declare-fun lt!1172869 () Option!7499)

(assert (=> b!3454019 (= res!1393081 (contains!6859 rules!2135 (get!11868 lt!1172869)))))

(declare-fun b!3454020 () Bool)

(assert (=> b!3454020 (= e!2139622 (= (tag!6028 (get!11868 lt!1172869)) (tag!6028 (rule!8010 (h!42529 tokens!494)))))))

(declare-fun b!3454021 () Bool)

(declare-fun e!2139621 () Option!7499)

(assert (=> b!3454021 (= e!2139621 (Some!7498 (h!42528 rules!2135)))))

(declare-fun d!993438 () Bool)

(assert (=> d!993438 e!2139619))

(declare-fun res!1393080 () Bool)

(assert (=> d!993438 (=> res!1393080 e!2139619)))

(declare-fun isEmpty!21439 (Option!7499) Bool)

(assert (=> d!993438 (= res!1393080 (isEmpty!21439 lt!1172869))))

(assert (=> d!993438 (= lt!1172869 e!2139621)))

(declare-fun c!591263 () Bool)

(assert (=> d!993438 (= c!591263 (and ((_ is Cons!37108) rules!2135) (= (tag!6028 (h!42528 rules!2135)) (tag!6028 (rule!8010 (h!42529 tokens!494))))))))

(assert (=> d!993438 (rulesInvariant!4412 thiss!18206 rules!2135)))

(assert (=> d!993438 (= (getRuleFromTag!1069 thiss!18206 rules!2135 (tag!6028 (rule!8010 (h!42529 tokens!494)))) lt!1172869)))

(declare-fun b!3454022 () Bool)

(declare-fun e!2139620 () Option!7499)

(assert (=> b!3454022 (= e!2139620 None!7498)))

(declare-fun b!3454023 () Bool)

(declare-fun lt!1172871 () Unit!52432)

(declare-fun lt!1172870 () Unit!52432)

(assert (=> b!3454023 (= lt!1172871 lt!1172870)))

(assert (=> b!3454023 (rulesInvariant!4412 thiss!18206 (t!272131 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!425 (LexerInterface!5015 Rule!10652 List!37232) Unit!52432)

(assert (=> b!3454023 (= lt!1172870 (lemmaInvariantOnRulesThenOnTail!425 thiss!18206 (h!42528 rules!2135) (t!272131 rules!2135)))))

(assert (=> b!3454023 (= e!2139620 (getRuleFromTag!1069 thiss!18206 (t!272131 rules!2135) (tag!6028 (rule!8010 (h!42529 tokens!494)))))))

(declare-fun b!3454024 () Bool)

(assert (=> b!3454024 (= e!2139621 e!2139620)))

(declare-fun c!591262 () Bool)

(assert (=> b!3454024 (= c!591262 (and ((_ is Cons!37108) rules!2135) (not (= (tag!6028 (h!42528 rules!2135)) (tag!6028 (rule!8010 (h!42529 tokens!494)))))))))

(assert (= (and d!993438 c!591263) b!3454021))

(assert (= (and d!993438 (not c!591263)) b!3454024))

(assert (= (and b!3454024 c!591262) b!3454023))

(assert (= (and b!3454024 (not c!591262)) b!3454022))

(assert (= (and d!993438 (not res!1393080)) b!3454019))

(assert (= (and b!3454019 res!1393081) b!3454020))

(declare-fun m!3852691 () Bool)

(assert (=> b!3454019 m!3852691))

(assert (=> b!3454019 m!3852691))

(declare-fun m!3852693 () Bool)

(assert (=> b!3454019 m!3852693))

(assert (=> b!3454020 m!3852691))

(declare-fun m!3852695 () Bool)

(assert (=> d!993438 m!3852695))

(assert (=> d!993438 m!3852367))

(declare-fun m!3852697 () Bool)

(assert (=> b!3454023 m!3852697))

(declare-fun m!3852699 () Bool)

(assert (=> b!3454023 m!3852699))

(declare-fun m!3852701 () Bool)

(assert (=> b!3454023 m!3852701))

(assert (=> b!3453747 d!993438))

(declare-fun d!993440 () Bool)

(declare-fun e!2139625 () Bool)

(assert (=> d!993440 e!2139625))

(declare-fun res!1393084 () Bool)

(assert (=> d!993440 (=> (not res!1393084) (not e!2139625))))

(declare-fun lt!1172874 () BalanceConc!22070)

(assert (=> d!993440 (= res!1393084 (= (list!13502 lt!1172874) (Cons!37109 separatorToken!241 Nil!37109)))))

(declare-fun singleton!1113 (Token!10218) BalanceConc!22070)

(assert (=> d!993440 (= lt!1172874 (singleton!1113 separatorToken!241))))

(assert (=> d!993440 (= (singletonSeq!2522 separatorToken!241) lt!1172874)))

(declare-fun b!3454027 () Bool)

(declare-fun isBalanced!3406 (Conc!11228) Bool)

(assert (=> b!3454027 (= e!2139625 (isBalanced!3406 (c!591214 lt!1172874)))))

(assert (= (and d!993440 res!1393084) b!3454027))

(declare-fun m!3852747 () Bool)

(assert (=> d!993440 m!3852747))

(declare-fun m!3852749 () Bool)

(assert (=> d!993440 m!3852749))

(declare-fun m!3852751 () Bool)

(assert (=> b!3454027 m!3852751))

(assert (=> b!3453747 d!993440))

(declare-fun b!3454059 () Bool)

(declare-fun e!2139648 () Bool)

(declare-fun lt!1172895 () tuple2!36804)

(assert (=> b!3454059 (= e!2139648 (not (isEmpty!21436 (_1!21536 lt!1172895))))))

(declare-fun d!993444 () Bool)

(declare-fun e!2139647 () Bool)

(assert (=> d!993444 e!2139647))

(declare-fun res!1393100 () Bool)

(assert (=> d!993444 (=> (not res!1393100) (not e!2139647))))

(declare-fun e!2139649 () Bool)

(assert (=> d!993444 (= res!1393100 e!2139649)))

(declare-fun c!591272 () Bool)

(assert (=> d!993444 (= c!591272 (> (size!28132 (_1!21536 lt!1172895)) 0))))

(declare-fun lexTailRecV2!1049 (LexerInterface!5015 List!37232 BalanceConc!22068 BalanceConc!22068 BalanceConc!22068 BalanceConc!22070) tuple2!36804)

(assert (=> d!993444 (= lt!1172895 (lexTailRecV2!1049 thiss!18206 rules!2135 lt!1172781 (BalanceConc!22069 Empty!11227) lt!1172781 (BalanceConc!22071 Empty!11228)))))

(assert (=> d!993444 (= (lex!2341 thiss!18206 rules!2135 lt!1172781) lt!1172895)))

(declare-fun b!3454060 () Bool)

(assert (=> b!3454060 (= e!2139649 (= (_2!21536 lt!1172895) lt!1172781))))

(declare-fun b!3454061 () Bool)

(assert (=> b!3454061 (= e!2139649 e!2139648)))

(declare-fun res!1393101 () Bool)

(declare-fun size!28134 (BalanceConc!22068) Int)

(assert (=> b!3454061 (= res!1393101 (< (size!28134 (_2!21536 lt!1172895)) (size!28134 lt!1172781)))))

(assert (=> b!3454061 (=> (not res!1393101) (not e!2139648))))

(declare-fun b!3454062 () Bool)

(declare-datatypes ((tuple2!36808 0))(
  ( (tuple2!36809 (_1!21538 List!37233) (_2!21538 List!37231)) )
))
(declare-fun lexList!1441 (LexerInterface!5015 List!37232 List!37231) tuple2!36808)

(assert (=> b!3454062 (= e!2139647 (= (list!13501 (_2!21536 lt!1172895)) (_2!21538 (lexList!1441 thiss!18206 rules!2135 (list!13501 lt!1172781)))))))

(declare-fun b!3454063 () Bool)

(declare-fun res!1393102 () Bool)

(assert (=> b!3454063 (=> (not res!1393102) (not e!2139647))))

(assert (=> b!3454063 (= res!1393102 (= (list!13502 (_1!21536 lt!1172895)) (_1!21538 (lexList!1441 thiss!18206 rules!2135 (list!13501 lt!1172781)))))))

(assert (= (and d!993444 c!591272) b!3454061))

(assert (= (and d!993444 (not c!591272)) b!3454060))

(assert (= (and b!3454061 res!1393101) b!3454059))

(assert (= (and d!993444 res!1393100) b!3454063))

(assert (= (and b!3454063 res!1393102) b!3454062))

(declare-fun m!3852783 () Bool)

(assert (=> b!3454059 m!3852783))

(declare-fun m!3852785 () Bool)

(assert (=> b!3454062 m!3852785))

(declare-fun m!3852787 () Bool)

(assert (=> b!3454062 m!3852787))

(assert (=> b!3454062 m!3852787))

(declare-fun m!3852789 () Bool)

(assert (=> b!3454062 m!3852789))

(declare-fun m!3852791 () Bool)

(assert (=> b!3454061 m!3852791))

(declare-fun m!3852793 () Bool)

(assert (=> b!3454061 m!3852793))

(declare-fun m!3852795 () Bool)

(assert (=> d!993444 m!3852795))

(declare-fun m!3852797 () Bool)

(assert (=> d!993444 m!3852797))

(declare-fun m!3852799 () Bool)

(assert (=> b!3454063 m!3852799))

(assert (=> b!3454063 m!3852787))

(assert (=> b!3454063 m!3852787))

(assert (=> b!3454063 m!3852789))

(assert (=> b!3453747 d!993444))

(declare-fun d!993456 () Bool)

(declare-fun e!2139650 () Bool)

(assert (=> d!993456 e!2139650))

(declare-fun res!1393103 () Bool)

(assert (=> d!993456 (=> (not res!1393103) (not e!2139650))))

(declare-fun lt!1172896 () BalanceConc!22070)

(assert (=> d!993456 (= res!1393103 (= (list!13502 lt!1172896) (Cons!37109 (h!42529 (t!272132 tokens!494)) Nil!37109)))))

(assert (=> d!993456 (= lt!1172896 (singleton!1113 (h!42529 (t!272132 tokens!494))))))

(assert (=> d!993456 (= (singletonSeq!2522 (h!42529 (t!272132 tokens!494))) lt!1172896)))

(declare-fun b!3454064 () Bool)

(assert (=> b!3454064 (= e!2139650 (isBalanced!3406 (c!591214 lt!1172896)))))

(assert (= (and d!993456 res!1393103) b!3454064))

(declare-fun m!3852801 () Bool)

(assert (=> d!993456 m!3852801))

(declare-fun m!3852803 () Bool)

(assert (=> d!993456 m!3852803))

(declare-fun m!3852805 () Bool)

(assert (=> b!3454064 m!3852805))

(assert (=> b!3453747 d!993456))

(declare-fun d!993458 () Bool)

(declare-fun lt!1172899 () Int)

(declare-fun size!28135 (List!37233) Int)

(assert (=> d!993458 (= lt!1172899 (size!28135 (list!13502 (_1!21536 lt!1172772))))))

(declare-fun size!28136 (Conc!11228) Int)

(assert (=> d!993458 (= lt!1172899 (size!28136 (c!591214 (_1!21536 lt!1172772))))))

(assert (=> d!993458 (= (size!28132 (_1!21536 lt!1172772)) lt!1172899)))

(declare-fun bs!559980 () Bool)

(assert (= bs!559980 d!993458))

(declare-fun m!3852807 () Bool)

(assert (=> bs!559980 m!3852807))

(assert (=> bs!559980 m!3852807))

(declare-fun m!3852809 () Bool)

(assert (=> bs!559980 m!3852809))

(declare-fun m!3852811 () Bool)

(assert (=> bs!559980 m!3852811))

(assert (=> b!3453747 d!993458))

(declare-fun d!993460 () Bool)

(declare-fun e!2139653 () Bool)

(assert (=> d!993460 e!2139653))

(declare-fun res!1393108 () Bool)

(assert (=> d!993460 (=> (not res!1393108) (not e!2139653))))

(assert (=> d!993460 (= res!1393108 (isDefined!5780 (getRuleFromTag!1069 thiss!18206 rules!2135 (tag!6028 (rule!8010 (h!42529 tokens!494))))))))

(declare-fun lt!1172902 () Unit!52432)

(declare-fun choose!19950 (LexerInterface!5015 List!37232 List!37231 Token!10218) Unit!52432)

(assert (=> d!993460 (= lt!1172902 (choose!19950 thiss!18206 rules!2135 lt!1172788 (h!42529 tokens!494)))))

(assert (=> d!993460 (rulesInvariant!4412 thiss!18206 rules!2135)))

(assert (=> d!993460 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1069 thiss!18206 rules!2135 lt!1172788 (h!42529 tokens!494)) lt!1172902)))

(declare-fun b!3454069 () Bool)

(declare-fun res!1393109 () Bool)

(assert (=> b!3454069 (=> (not res!1393109) (not e!2139653))))

(assert (=> b!3454069 (= res!1393109 (matchR!4769 (regex!5426 (get!11868 (getRuleFromTag!1069 thiss!18206 rules!2135 (tag!6028 (rule!8010 (h!42529 tokens!494)))))) (list!13501 (charsOf!3440 (h!42529 tokens!494)))))))

(declare-fun b!3454070 () Bool)

(assert (=> b!3454070 (= e!2139653 (= (rule!8010 (h!42529 tokens!494)) (get!11868 (getRuleFromTag!1069 thiss!18206 rules!2135 (tag!6028 (rule!8010 (h!42529 tokens!494)))))))))

(assert (= (and d!993460 res!1393108) b!3454069))

(assert (= (and b!3454069 res!1393109) b!3454070))

(assert (=> d!993460 m!3852263))

(assert (=> d!993460 m!3852263))

(declare-fun m!3852813 () Bool)

(assert (=> d!993460 m!3852813))

(declare-fun m!3852815 () Bool)

(assert (=> d!993460 m!3852815))

(assert (=> d!993460 m!3852367))

(assert (=> b!3454069 m!3852363))

(assert (=> b!3454069 m!3852263))

(declare-fun m!3852817 () Bool)

(assert (=> b!3454069 m!3852817))

(assert (=> b!3454069 m!3852363))

(assert (=> b!3454069 m!3852365))

(assert (=> b!3454069 m!3852365))

(declare-fun m!3852819 () Bool)

(assert (=> b!3454069 m!3852819))

(assert (=> b!3454069 m!3852263))

(assert (=> b!3454070 m!3852263))

(assert (=> b!3454070 m!3852263))

(assert (=> b!3454070 m!3852817))

(assert (=> b!3453747 d!993460))

(declare-fun d!993462 () Bool)

(declare-fun lt!1172924 () BalanceConc!22068)

(declare-fun printListTailRec!681 (LexerInterface!5015 List!37233 List!37231) List!37231)

(declare-fun dropList!1198 (BalanceConc!22070 Int) List!37233)

(assert (=> d!993462 (= (list!13501 lt!1172924) (printListTailRec!681 thiss!18206 (dropList!1198 lt!1172787 0) (list!13501 (BalanceConc!22069 Empty!11227))))))

(declare-fun e!2139671 () BalanceConc!22068)

(assert (=> d!993462 (= lt!1172924 e!2139671)))

(declare-fun c!591278 () Bool)

(assert (=> d!993462 (= c!591278 (>= 0 (size!28132 lt!1172787)))))

(declare-fun e!2139670 () Bool)

(assert (=> d!993462 e!2139670))

(declare-fun res!1393121 () Bool)

(assert (=> d!993462 (=> (not res!1393121) (not e!2139670))))

(assert (=> d!993462 (= res!1393121 (>= 0 0))))

(assert (=> d!993462 (= (printTailRec!1510 thiss!18206 lt!1172787 0 (BalanceConc!22069 Empty!11227)) lt!1172924)))

(declare-fun b!3454094 () Bool)

(assert (=> b!3454094 (= e!2139670 (<= 0 (size!28132 lt!1172787)))))

(declare-fun b!3454095 () Bool)

(assert (=> b!3454095 (= e!2139671 (BalanceConc!22069 Empty!11227))))

(declare-fun b!3454096 () Bool)

(declare-fun ++!9140 (BalanceConc!22068 BalanceConc!22068) BalanceConc!22068)

(assert (=> b!3454096 (= e!2139671 (printTailRec!1510 thiss!18206 lt!1172787 (+ 0 1) (++!9140 (BalanceConc!22069 Empty!11227) (charsOf!3440 (apply!8710 lt!1172787 0)))))))

(declare-fun lt!1172920 () List!37233)

(assert (=> b!3454096 (= lt!1172920 (list!13502 lt!1172787))))

(declare-fun lt!1172923 () Unit!52432)

(declare-fun lemmaDropApply!1156 (List!37233 Int) Unit!52432)

(assert (=> b!3454096 (= lt!1172923 (lemmaDropApply!1156 lt!1172920 0))))

(declare-fun head!7300 (List!37233) Token!10218)

(declare-fun drop!2004 (List!37233 Int) List!37233)

(declare-fun apply!8712 (List!37233 Int) Token!10218)

(assert (=> b!3454096 (= (head!7300 (drop!2004 lt!1172920 0)) (apply!8712 lt!1172920 0))))

(declare-fun lt!1172926 () Unit!52432)

(assert (=> b!3454096 (= lt!1172926 lt!1172923)))

(declare-fun lt!1172921 () List!37233)

(assert (=> b!3454096 (= lt!1172921 (list!13502 lt!1172787))))

(declare-fun lt!1172922 () Unit!52432)

(declare-fun lemmaDropTail!1040 (List!37233 Int) Unit!52432)

(assert (=> b!3454096 (= lt!1172922 (lemmaDropTail!1040 lt!1172921 0))))

(declare-fun tail!5418 (List!37233) List!37233)

(assert (=> b!3454096 (= (tail!5418 (drop!2004 lt!1172921 0)) (drop!2004 lt!1172921 (+ 0 1)))))

(declare-fun lt!1172925 () Unit!52432)

(assert (=> b!3454096 (= lt!1172925 lt!1172922)))

(assert (= (and d!993462 res!1393121) b!3454094))

(assert (= (and d!993462 c!591278) b!3454095))

(assert (= (and d!993462 (not c!591278)) b!3454096))

(declare-fun m!3852843 () Bool)

(assert (=> d!993462 m!3852843))

(declare-fun m!3852845 () Bool)

(assert (=> d!993462 m!3852845))

(declare-fun m!3852847 () Bool)

(assert (=> d!993462 m!3852847))

(declare-fun m!3852849 () Bool)

(assert (=> d!993462 m!3852849))

(assert (=> d!993462 m!3852849))

(assert (=> d!993462 m!3852845))

(declare-fun m!3852851 () Bool)

(assert (=> d!993462 m!3852851))

(assert (=> b!3454094 m!3852847))

(declare-fun m!3852853 () Bool)

(assert (=> b!3454096 m!3852853))

(declare-fun m!3852855 () Bool)

(assert (=> b!3454096 m!3852855))

(declare-fun m!3852857 () Bool)

(assert (=> b!3454096 m!3852857))

(declare-fun m!3852859 () Bool)

(assert (=> b!3454096 m!3852859))

(declare-fun m!3852861 () Bool)

(assert (=> b!3454096 m!3852861))

(assert (=> b!3454096 m!3852857))

(declare-fun m!3852863 () Bool)

(assert (=> b!3454096 m!3852863))

(declare-fun m!3852865 () Bool)

(assert (=> b!3454096 m!3852865))

(declare-fun m!3852867 () Bool)

(assert (=> b!3454096 m!3852867))

(declare-fun m!3852869 () Bool)

(assert (=> b!3454096 m!3852869))

(declare-fun m!3852871 () Bool)

(assert (=> b!3454096 m!3852871))

(declare-fun m!3852873 () Bool)

(assert (=> b!3454096 m!3852873))

(assert (=> b!3454096 m!3852855))

(assert (=> b!3454096 m!3852871))

(assert (=> b!3454096 m!3852867))

(declare-fun m!3852875 () Bool)

(assert (=> b!3454096 m!3852875))

(assert (=> b!3454096 m!3852873))

(declare-fun m!3852877 () Bool)

(assert (=> b!3454096 m!3852877))

(assert (=> b!3453747 d!993462))

(declare-fun d!993468 () Bool)

(assert (=> d!993468 (= (isDefined!5780 lt!1172777) (not (isEmpty!21439 lt!1172777)))))

(declare-fun bs!559981 () Bool)

(assert (= bs!559981 d!993468))

(declare-fun m!3852879 () Bool)

(assert (=> bs!559981 m!3852879))

(assert (=> b!3453747 d!993468))

(declare-fun d!993470 () Bool)

(declare-fun lt!1172929 () Int)

(assert (=> d!993470 (>= lt!1172929 0)))

(declare-fun e!2139674 () Int)

(assert (=> d!993470 (= lt!1172929 e!2139674)))

(declare-fun c!591281 () Bool)

(assert (=> d!993470 (= c!591281 ((_ is Nil!37107) lt!1172788))))

(assert (=> d!993470 (= (size!28133 lt!1172788) lt!1172929)))

(declare-fun b!3454101 () Bool)

(assert (=> b!3454101 (= e!2139674 0)))

(declare-fun b!3454102 () Bool)

(assert (=> b!3454102 (= e!2139674 (+ 1 (size!28133 (t!272130 lt!1172788))))))

(assert (= (and d!993470 c!591281) b!3454101))

(assert (= (and d!993470 (not c!591281)) b!3454102))

(declare-fun m!3852881 () Bool)

(assert (=> b!3454102 m!3852881))

(assert (=> b!3453747 d!993470))

(declare-fun d!993472 () Bool)

(assert (=> d!993472 (= (isDefined!5780 lt!1172784) (not (isEmpty!21439 lt!1172784)))))

(declare-fun bs!559982 () Bool)

(assert (= bs!559982 d!993472))

(declare-fun m!3852883 () Bool)

(assert (=> bs!559982 m!3852883))

(assert (=> b!3453747 d!993472))

(declare-fun d!993474 () Bool)

(declare-fun dynLambda!15600 (Int Token!10218) Bool)

(assert (=> d!993474 (dynLambda!15600 lambda!121637 (h!42529 (t!272132 tokens!494)))))

(declare-fun lt!1172932 () Unit!52432)

(declare-fun choose!19952 (List!37233 Int Token!10218) Unit!52432)

(assert (=> d!993474 (= lt!1172932 (choose!19952 tokens!494 lambda!121637 (h!42529 (t!272132 tokens!494))))))

(declare-fun e!2139677 () Bool)

(assert (=> d!993474 e!2139677))

(declare-fun res!1393124 () Bool)

(assert (=> d!993474 (=> (not res!1393124) (not e!2139677))))

(assert (=> d!993474 (= res!1393124 (forall!7899 tokens!494 lambda!121637))))

(assert (=> d!993474 (= (forallContained!1373 tokens!494 lambda!121637 (h!42529 (t!272132 tokens!494))) lt!1172932)))

(declare-fun b!3454105 () Bool)

(declare-fun contains!6861 (List!37233 Token!10218) Bool)

(assert (=> b!3454105 (= e!2139677 (contains!6861 tokens!494 (h!42529 (t!272132 tokens!494))))))

(assert (= (and d!993474 res!1393124) b!3454105))

(declare-fun b_lambda!99249 () Bool)

(assert (=> (not b_lambda!99249) (not d!993474)))

(declare-fun m!3852885 () Bool)

(assert (=> d!993474 m!3852885))

(declare-fun m!3852887 () Bool)

(assert (=> d!993474 m!3852887))

(declare-fun m!3852889 () Bool)

(assert (=> d!993474 m!3852889))

(declare-fun m!3852891 () Bool)

(assert (=> b!3454105 m!3852891))

(assert (=> b!3453747 d!993474))

(declare-fun d!993476 () Bool)

(declare-fun lt!1172935 () BalanceConc!22068)

(assert (=> d!993476 (= (list!13501 lt!1172935) (printList!1563 thiss!18206 (list!13502 lt!1172776)))))

(assert (=> d!993476 (= lt!1172935 (printTailRec!1510 thiss!18206 lt!1172776 0 (BalanceConc!22069 Empty!11227)))))

(assert (=> d!993476 (= (print!2080 thiss!18206 lt!1172776) lt!1172935)))

(declare-fun bs!559983 () Bool)

(assert (= bs!559983 d!993476))

(declare-fun m!3852893 () Bool)

(assert (=> bs!559983 m!3852893))

(declare-fun m!3852895 () Bool)

(assert (=> bs!559983 m!3852895))

(assert (=> bs!559983 m!3852895))

(declare-fun m!3852897 () Bool)

(assert (=> bs!559983 m!3852897))

(assert (=> bs!559983 m!3852295))

(assert (=> b!3453747 d!993476))

(declare-fun d!993478 () Bool)

(assert (=> d!993478 (= (maxPrefixOneRule!1722 thiss!18206 (rule!8010 (h!42529 tokens!494)) lt!1172788) (Some!7499 (tuple2!36807 (Token!10219 (apply!8711 (transformation!5426 (rule!8010 (h!42529 tokens!494))) (seqFromList!3906 lt!1172788)) (rule!8010 (h!42529 tokens!494)) (size!28133 lt!1172788) lt!1172788) Nil!37107)))))

(declare-fun lt!1172938 () Unit!52432)

(declare-fun choose!19953 (LexerInterface!5015 List!37232 List!37231 List!37231 List!37231 Rule!10652) Unit!52432)

(assert (=> d!993478 (= lt!1172938 (choose!19953 thiss!18206 rules!2135 lt!1172788 lt!1172788 Nil!37107 (rule!8010 (h!42529 tokens!494))))))

(assert (=> d!993478 (not (isEmpty!21435 rules!2135))))

(assert (=> d!993478 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!815 thiss!18206 rules!2135 lt!1172788 lt!1172788 Nil!37107 (rule!8010 (h!42529 tokens!494))) lt!1172938)))

(declare-fun bs!559984 () Bool)

(assert (= bs!559984 d!993478))

(assert (=> bs!559984 m!3852289))

(assert (=> bs!559984 m!3852281))

(assert (=> bs!559984 m!3852317))

(declare-fun m!3852899 () Bool)

(assert (=> bs!559984 m!3852899))

(assert (=> bs!559984 m!3852325))

(declare-fun m!3852901 () Bool)

(assert (=> bs!559984 m!3852901))

(assert (=> bs!559984 m!3852325))

(assert (=> b!3453747 d!993478))

(declare-fun d!993480 () Bool)

(declare-fun e!2139678 () Bool)

(assert (=> d!993480 e!2139678))

(declare-fun res!1393125 () Bool)

(assert (=> d!993480 (=> (not res!1393125) (not e!2139678))))

(assert (=> d!993480 (= res!1393125 (isDefined!5780 (getRuleFromTag!1069 thiss!18206 rules!2135 (tag!6028 (rule!8010 separatorToken!241)))))))

(declare-fun lt!1172939 () Unit!52432)

(assert (=> d!993480 (= lt!1172939 (choose!19950 thiss!18206 rules!2135 lt!1172775 separatorToken!241))))

(assert (=> d!993480 (rulesInvariant!4412 thiss!18206 rules!2135)))

(assert (=> d!993480 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1069 thiss!18206 rules!2135 lt!1172775 separatorToken!241) lt!1172939)))

(declare-fun b!3454106 () Bool)

(declare-fun res!1393126 () Bool)

(assert (=> b!3454106 (=> (not res!1393126) (not e!2139678))))

(assert (=> b!3454106 (= res!1393126 (matchR!4769 (regex!5426 (get!11868 (getRuleFromTag!1069 thiss!18206 rules!2135 (tag!6028 (rule!8010 separatorToken!241))))) (list!13501 (charsOf!3440 separatorToken!241))))))

(declare-fun b!3454107 () Bool)

(assert (=> b!3454107 (= e!2139678 (= (rule!8010 separatorToken!241) (get!11868 (getRuleFromTag!1069 thiss!18206 rules!2135 (tag!6028 (rule!8010 separatorToken!241))))))))

(assert (= (and d!993480 res!1393125) b!3454106))

(assert (= (and b!3454106 res!1393126) b!3454107))

(assert (=> d!993480 m!3852301))

(assert (=> d!993480 m!3852301))

(declare-fun m!3852903 () Bool)

(assert (=> d!993480 m!3852903))

(declare-fun m!3852905 () Bool)

(assert (=> d!993480 m!3852905))

(assert (=> d!993480 m!3852367))

(assert (=> b!3454106 m!3852335))

(assert (=> b!3454106 m!3852301))

(declare-fun m!3852907 () Bool)

(assert (=> b!3454106 m!3852907))

(assert (=> b!3454106 m!3852335))

(assert (=> b!3454106 m!3852349))

(assert (=> b!3454106 m!3852349))

(declare-fun m!3852909 () Bool)

(assert (=> b!3454106 m!3852909))

(assert (=> b!3454106 m!3852301))

(assert (=> b!3454107 m!3852301))

(assert (=> b!3454107 m!3852301))

(assert (=> b!3454107 m!3852907))

(assert (=> b!3453747 d!993480))

(declare-fun d!993482 () Bool)

(assert (=> d!993482 (= (head!7299 lt!1172775) (h!42527 lt!1172775))))

(assert (=> b!3453747 d!993482))

(declare-fun d!993484 () Bool)

(declare-fun dynLambda!15601 (Int BalanceConc!22068) TokenValue!5656)

(assert (=> d!993484 (= (apply!8711 (transformation!5426 (rule!8010 (h!42529 tokens!494))) lt!1172789) (dynLambda!15601 (toValue!7650 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) lt!1172789))))

(declare-fun b_lambda!99251 () Bool)

(assert (=> (not b_lambda!99251) (not d!993484)))

(declare-fun tb!188069 () Bool)

(declare-fun t!272169 () Bool)

(assert (=> (and b!3453728 (= (toValue!7650 (transformation!5426 (rule!8010 separatorToken!241))) (toValue!7650 (transformation!5426 (rule!8010 (h!42529 tokens!494))))) t!272169) tb!188069))

(declare-fun result!231964 () Bool)

(assert (=> tb!188069 (= result!231964 (inv!21 (dynLambda!15601 (toValue!7650 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) lt!1172789)))))

(declare-fun m!3852911 () Bool)

(assert (=> tb!188069 m!3852911))

(assert (=> d!993484 t!272169))

(declare-fun b_and!242723 () Bool)

(assert (= b_and!242675 (and (=> t!272169 result!231964) b_and!242723)))

(declare-fun t!272171 () Bool)

(declare-fun tb!188071 () Bool)

(assert (=> (and b!3453741 (= (toValue!7650 (transformation!5426 (h!42528 rules!2135))) (toValue!7650 (transformation!5426 (rule!8010 (h!42529 tokens!494))))) t!272171) tb!188071))

(declare-fun result!231968 () Bool)

(assert (= result!231968 result!231964))

(assert (=> d!993484 t!272171))

(declare-fun b_and!242725 () Bool)

(assert (= b_and!242679 (and (=> t!272171 result!231968) b_and!242725)))

(declare-fun t!272173 () Bool)

(declare-fun tb!188073 () Bool)

(assert (=> (and b!3453715 (= (toValue!7650 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) (toValue!7650 (transformation!5426 (rule!8010 (h!42529 tokens!494))))) t!272173) tb!188073))

(declare-fun result!231970 () Bool)

(assert (= result!231970 result!231964))

(assert (=> d!993484 t!272173))

(declare-fun b_and!242727 () Bool)

(assert (= b_and!242683 (and (=> t!272173 result!231970) b_and!242727)))

(declare-fun m!3852913 () Bool)

(assert (=> d!993484 m!3852913))

(assert (=> b!3453747 d!993484))

(declare-fun d!993486 () Bool)

(declare-fun lt!1172942 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5171 (List!37231) (InoxSet C!20556))

(assert (=> d!993486 (= lt!1172942 (select (content!5171 (usedCharacters!660 (regex!5426 (rule!8010 separatorToken!241)))) lt!1172783))))

(declare-fun e!2139686 () Bool)

(assert (=> d!993486 (= lt!1172942 e!2139686)))

(declare-fun res!1393131 () Bool)

(assert (=> d!993486 (=> (not res!1393131) (not e!2139686))))

(assert (=> d!993486 (= res!1393131 ((_ is Cons!37107) (usedCharacters!660 (regex!5426 (rule!8010 separatorToken!241)))))))

(assert (=> d!993486 (= (contains!6860 (usedCharacters!660 (regex!5426 (rule!8010 separatorToken!241))) lt!1172783) lt!1172942)))

(declare-fun b!3454114 () Bool)

(declare-fun e!2139687 () Bool)

(assert (=> b!3454114 (= e!2139686 e!2139687)))

(declare-fun res!1393132 () Bool)

(assert (=> b!3454114 (=> res!1393132 e!2139687)))

(assert (=> b!3454114 (= res!1393132 (= (h!42527 (usedCharacters!660 (regex!5426 (rule!8010 separatorToken!241)))) lt!1172783))))

(declare-fun b!3454115 () Bool)

(assert (=> b!3454115 (= e!2139687 (contains!6860 (t!272130 (usedCharacters!660 (regex!5426 (rule!8010 separatorToken!241)))) lt!1172783))))

(assert (= (and d!993486 res!1393131) b!3454114))

(assert (= (and b!3454114 (not res!1393132)) b!3454115))

(assert (=> d!993486 m!3852261))

(declare-fun m!3852915 () Bool)

(assert (=> d!993486 m!3852915))

(declare-fun m!3852917 () Bool)

(assert (=> d!993486 m!3852917))

(declare-fun m!3852919 () Bool)

(assert (=> b!3454115 m!3852919))

(assert (=> b!3453747 d!993486))

(declare-fun b!3454116 () Bool)

(declare-fun e!2139689 () Bool)

(declare-fun lt!1172943 () tuple2!36804)

(assert (=> b!3454116 (= e!2139689 (not (isEmpty!21436 (_1!21536 lt!1172943))))))

(declare-fun d!993488 () Bool)

(declare-fun e!2139688 () Bool)

(assert (=> d!993488 e!2139688))

(declare-fun res!1393133 () Bool)

(assert (=> d!993488 (=> (not res!1393133) (not e!2139688))))

(declare-fun e!2139690 () Bool)

(assert (=> d!993488 (= res!1393133 e!2139690)))

(declare-fun c!591282 () Bool)

(assert (=> d!993488 (= c!591282 (> (size!28132 (_1!21536 lt!1172943)) 0))))

(assert (=> d!993488 (= lt!1172943 (lexTailRecV2!1049 thiss!18206 rules!2135 lt!1172771 (BalanceConc!22069 Empty!11227) lt!1172771 (BalanceConc!22071 Empty!11228)))))

(assert (=> d!993488 (= (lex!2341 thiss!18206 rules!2135 lt!1172771) lt!1172943)))

(declare-fun b!3454117 () Bool)

(assert (=> b!3454117 (= e!2139690 (= (_2!21536 lt!1172943) lt!1172771))))

(declare-fun b!3454118 () Bool)

(assert (=> b!3454118 (= e!2139690 e!2139689)))

(declare-fun res!1393134 () Bool)

(assert (=> b!3454118 (= res!1393134 (< (size!28134 (_2!21536 lt!1172943)) (size!28134 lt!1172771)))))

(assert (=> b!3454118 (=> (not res!1393134) (not e!2139689))))

(declare-fun b!3454119 () Bool)

(assert (=> b!3454119 (= e!2139688 (= (list!13501 (_2!21536 lt!1172943)) (_2!21538 (lexList!1441 thiss!18206 rules!2135 (list!13501 lt!1172771)))))))

(declare-fun b!3454120 () Bool)

(declare-fun res!1393135 () Bool)

(assert (=> b!3454120 (=> (not res!1393135) (not e!2139688))))

(assert (=> b!3454120 (= res!1393135 (= (list!13502 (_1!21536 lt!1172943)) (_1!21538 (lexList!1441 thiss!18206 rules!2135 (list!13501 lt!1172771)))))))

(assert (= (and d!993488 c!591282) b!3454118))

(assert (= (and d!993488 (not c!591282)) b!3454117))

(assert (= (and b!3454118 res!1393134) b!3454116))

(assert (= (and d!993488 res!1393133) b!3454120))

(assert (= (and b!3454120 res!1393135) b!3454119))

(declare-fun m!3852921 () Bool)

(assert (=> b!3454116 m!3852921))

(declare-fun m!3852923 () Bool)

(assert (=> b!3454119 m!3852923))

(declare-fun m!3852925 () Bool)

(assert (=> b!3454119 m!3852925))

(assert (=> b!3454119 m!3852925))

(declare-fun m!3852927 () Bool)

(assert (=> b!3454119 m!3852927))

(declare-fun m!3852929 () Bool)

(assert (=> b!3454118 m!3852929))

(declare-fun m!3852931 () Bool)

(assert (=> b!3454118 m!3852931))

(declare-fun m!3852933 () Bool)

(assert (=> d!993488 m!3852933))

(declare-fun m!3852935 () Bool)

(assert (=> d!993488 m!3852935))

(declare-fun m!3852937 () Bool)

(assert (=> b!3454120 m!3852937))

(assert (=> b!3454120 m!3852925))

(assert (=> b!3454120 m!3852925))

(assert (=> b!3454120 m!3852927))

(assert (=> b!3453747 d!993488))

(declare-fun b!3454145 () Bool)

(declare-fun res!1393157 () Bool)

(declare-fun e!2139705 () Bool)

(assert (=> b!3454145 (=> (not res!1393157) (not e!2139705))))

(declare-fun lt!1172973 () Option!7500)

(declare-fun get!11869 (Option!7500) tuple2!36806)

(assert (=> b!3454145 (= res!1393157 (= (rule!8010 (_1!21537 (get!11869 lt!1172973))) (rule!8010 (h!42529 tokens!494))))))

(declare-fun b!3454146 () Bool)

(declare-fun e!2139703 () Bool)

(assert (=> b!3454146 (= e!2139703 e!2139705)))

(declare-fun res!1393152 () Bool)

(assert (=> b!3454146 (=> (not res!1393152) (not e!2139705))))

(assert (=> b!3454146 (= res!1393152 (matchR!4769 (regex!5426 (rule!8010 (h!42529 tokens!494))) (list!13501 (charsOf!3440 (_1!21537 (get!11869 lt!1172973))))))))

(declare-fun b!3454148 () Bool)

(declare-fun e!2139704 () Bool)

(declare-datatypes ((tuple2!36810 0))(
  ( (tuple2!36811 (_1!21539 List!37231) (_2!21539 List!37231)) )
))
(declare-fun findLongestMatchInner!902 (Regex!10185 List!37231 Int List!37231 List!37231 Int) tuple2!36810)

(assert (=> b!3454148 (= e!2139704 (matchR!4769 (regex!5426 (rule!8010 (h!42529 tokens!494))) (_1!21539 (findLongestMatchInner!902 (regex!5426 (rule!8010 (h!42529 tokens!494))) Nil!37107 (size!28133 Nil!37107) lt!1172788 lt!1172788 (size!28133 lt!1172788)))))))

(declare-fun b!3454149 () Bool)

(declare-fun res!1393153 () Bool)

(assert (=> b!3454149 (=> (not res!1393153) (not e!2139705))))

(assert (=> b!3454149 (= res!1393153 (< (size!28133 (_2!21537 (get!11869 lt!1172973))) (size!28133 lt!1172788)))))

(declare-fun b!3454150 () Bool)

(declare-fun e!2139706 () Option!7500)

(declare-fun lt!1172971 () tuple2!36810)

(assert (=> b!3454150 (= e!2139706 (Some!7499 (tuple2!36807 (Token!10219 (apply!8711 (transformation!5426 (rule!8010 (h!42529 tokens!494))) (seqFromList!3906 (_1!21539 lt!1172971))) (rule!8010 (h!42529 tokens!494)) (size!28134 (seqFromList!3906 (_1!21539 lt!1172971))) (_1!21539 lt!1172971)) (_2!21539 lt!1172971))))))

(declare-fun lt!1172975 () Unit!52432)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!875 (Regex!10185 List!37231) Unit!52432)

(assert (=> b!3454150 (= lt!1172975 (longestMatchIsAcceptedByMatchOrIsEmpty!875 (regex!5426 (rule!8010 (h!42529 tokens!494))) lt!1172788))))

(declare-fun res!1393158 () Bool)

(assert (=> b!3454150 (= res!1393158 (isEmpty!21438 (_1!21539 (findLongestMatchInner!902 (regex!5426 (rule!8010 (h!42529 tokens!494))) Nil!37107 (size!28133 Nil!37107) lt!1172788 lt!1172788 (size!28133 lt!1172788)))))))

(assert (=> b!3454150 (=> res!1393158 e!2139704)))

(assert (=> b!3454150 e!2139704))

(declare-fun lt!1172972 () Unit!52432)

(assert (=> b!3454150 (= lt!1172972 lt!1172975)))

(declare-fun lt!1172974 () Unit!52432)

(declare-fun lemmaSemiInverse!1252 (TokenValueInjection!10740 BalanceConc!22068) Unit!52432)

(assert (=> b!3454150 (= lt!1172974 (lemmaSemiInverse!1252 (transformation!5426 (rule!8010 (h!42529 tokens!494))) (seqFromList!3906 (_1!21539 lt!1172971))))))

(declare-fun b!3454151 () Bool)

(declare-fun res!1393155 () Bool)

(assert (=> b!3454151 (=> (not res!1393155) (not e!2139705))))

(assert (=> b!3454151 (= res!1393155 (= (++!9139 (list!13501 (charsOf!3440 (_1!21537 (get!11869 lt!1172973)))) (_2!21537 (get!11869 lt!1172973))) lt!1172788))))

(declare-fun b!3454152 () Bool)

(assert (=> b!3454152 (= e!2139705 (= (size!28131 (_1!21537 (get!11869 lt!1172973))) (size!28133 (originalCharacters!6140 (_1!21537 (get!11869 lt!1172973))))))))

(declare-fun b!3454153 () Bool)

(assert (=> b!3454153 (= e!2139706 None!7499)))

(declare-fun b!3454147 () Bool)

(declare-fun res!1393156 () Bool)

(assert (=> b!3454147 (=> (not res!1393156) (not e!2139705))))

(assert (=> b!3454147 (= res!1393156 (= (value!175101 (_1!21537 (get!11869 lt!1172973))) (apply!8711 (transformation!5426 (rule!8010 (_1!21537 (get!11869 lt!1172973)))) (seqFromList!3906 (originalCharacters!6140 (_1!21537 (get!11869 lt!1172973)))))))))

(declare-fun d!993490 () Bool)

(assert (=> d!993490 e!2139703))

(declare-fun res!1393154 () Bool)

(assert (=> d!993490 (=> res!1393154 e!2139703)))

(declare-fun isEmpty!21442 (Option!7500) Bool)

(assert (=> d!993490 (= res!1393154 (isEmpty!21442 lt!1172973))))

(assert (=> d!993490 (= lt!1172973 e!2139706)))

(declare-fun c!591287 () Bool)

(assert (=> d!993490 (= c!591287 (isEmpty!21438 (_1!21539 lt!1172971)))))

(declare-fun findLongestMatch!817 (Regex!10185 List!37231) tuple2!36810)

(assert (=> d!993490 (= lt!1172971 (findLongestMatch!817 (regex!5426 (rule!8010 (h!42529 tokens!494))) lt!1172788))))

(declare-fun ruleValid!1731 (LexerInterface!5015 Rule!10652) Bool)

(assert (=> d!993490 (ruleValid!1731 thiss!18206 (rule!8010 (h!42529 tokens!494)))))

(assert (=> d!993490 (= (maxPrefixOneRule!1722 thiss!18206 (rule!8010 (h!42529 tokens!494)) lt!1172788) lt!1172973)))

(assert (= (and d!993490 c!591287) b!3454153))

(assert (= (and d!993490 (not c!591287)) b!3454150))

(assert (= (and b!3454150 (not res!1393158)) b!3454148))

(assert (= (and d!993490 (not res!1393154)) b!3454146))

(assert (= (and b!3454146 res!1393152) b!3454151))

(assert (= (and b!3454151 res!1393155) b!3454149))

(assert (= (and b!3454149 res!1393153) b!3454145))

(assert (= (and b!3454145 res!1393157) b!3454147))

(assert (= (and b!3454147 res!1393156) b!3454152))

(declare-fun m!3852977 () Bool)

(assert (=> b!3454150 m!3852977))

(assert (=> b!3454150 m!3852977))

(declare-fun m!3852979 () Bool)

(assert (=> b!3454150 m!3852979))

(declare-fun m!3852981 () Bool)

(assert (=> b!3454150 m!3852981))

(declare-fun m!3852983 () Bool)

(assert (=> b!3454150 m!3852983))

(assert (=> b!3454150 m!3852289))

(declare-fun m!3852985 () Bool)

(assert (=> b!3454150 m!3852985))

(assert (=> b!3454150 m!3852977))

(declare-fun m!3852987 () Bool)

(assert (=> b!3454150 m!3852987))

(assert (=> b!3454150 m!3852977))

(declare-fun m!3852989 () Bool)

(assert (=> b!3454150 m!3852989))

(assert (=> b!3454150 m!3852983))

(declare-fun m!3852991 () Bool)

(assert (=> b!3454150 m!3852991))

(assert (=> b!3454150 m!3852289))

(declare-fun m!3852993 () Bool)

(assert (=> b!3454145 m!3852993))

(assert (=> b!3454146 m!3852993))

(declare-fun m!3852997 () Bool)

(assert (=> b!3454146 m!3852997))

(assert (=> b!3454146 m!3852997))

(declare-fun m!3853003 () Bool)

(assert (=> b!3454146 m!3853003))

(assert (=> b!3454146 m!3853003))

(declare-fun m!3853007 () Bool)

(assert (=> b!3454146 m!3853007))

(assert (=> b!3454152 m!3852993))

(declare-fun m!3853011 () Bool)

(assert (=> b!3454152 m!3853011))

(assert (=> b!3454151 m!3852993))

(assert (=> b!3454151 m!3852997))

(assert (=> b!3454151 m!3852997))

(assert (=> b!3454151 m!3853003))

(assert (=> b!3454151 m!3853003))

(declare-fun m!3853017 () Bool)

(assert (=> b!3454151 m!3853017))

(assert (=> b!3454149 m!3852993))

(declare-fun m!3853021 () Bool)

(assert (=> b!3454149 m!3853021))

(assert (=> b!3454149 m!3852289))

(declare-fun m!3853023 () Bool)

(assert (=> d!993490 m!3853023))

(declare-fun m!3853025 () Bool)

(assert (=> d!993490 m!3853025))

(declare-fun m!3853027 () Bool)

(assert (=> d!993490 m!3853027))

(declare-fun m!3853029 () Bool)

(assert (=> d!993490 m!3853029))

(assert (=> b!3454147 m!3852993))

(declare-fun m!3853031 () Bool)

(assert (=> b!3454147 m!3853031))

(assert (=> b!3454147 m!3853031))

(declare-fun m!3853033 () Bool)

(assert (=> b!3454147 m!3853033))

(assert (=> b!3454148 m!3852983))

(assert (=> b!3454148 m!3852289))

(assert (=> b!3454148 m!3852983))

(assert (=> b!3454148 m!3852289))

(assert (=> b!3454148 m!3852985))

(declare-fun m!3853035 () Bool)

(assert (=> b!3454148 m!3853035))

(assert (=> b!3453747 d!993490))

(declare-fun d!993498 () Bool)

(declare-fun lt!1172988 () Int)

(assert (=> d!993498 (= lt!1172988 (size!28135 (list!13502 (_1!21536 lt!1172759))))))

(assert (=> d!993498 (= lt!1172988 (size!28136 (c!591214 (_1!21536 lt!1172759))))))

(assert (=> d!993498 (= (size!28132 (_1!21536 lt!1172759)) lt!1172988)))

(declare-fun bs!559986 () Bool)

(assert (= bs!559986 d!993498))

(declare-fun m!3853039 () Bool)

(assert (=> bs!559986 m!3853039))

(assert (=> bs!559986 m!3853039))

(declare-fun m!3853041 () Bool)

(assert (=> bs!559986 m!3853041))

(declare-fun m!3853045 () Bool)

(assert (=> bs!559986 m!3853045))

(assert (=> b!3453747 d!993498))

(declare-fun d!993500 () Bool)

(declare-fun lt!1172989 () BalanceConc!22068)

(assert (=> d!993500 (= (list!13501 lt!1172989) (printList!1563 thiss!18206 (list!13502 lt!1172787)))))

(assert (=> d!993500 (= lt!1172989 (printTailRec!1510 thiss!18206 lt!1172787 0 (BalanceConc!22069 Empty!11227)))))

(assert (=> d!993500 (= (print!2080 thiss!18206 lt!1172787) lt!1172989)))

(declare-fun bs!559987 () Bool)

(assert (= bs!559987 d!993500))

(declare-fun m!3853051 () Bool)

(assert (=> bs!559987 m!3853051))

(assert (=> bs!559987 m!3852865))

(assert (=> bs!559987 m!3852865))

(declare-fun m!3853053 () Bool)

(assert (=> bs!559987 m!3853053))

(assert (=> bs!559987 m!3852269))

(assert (=> b!3453747 d!993500))

(declare-fun b!3454166 () Bool)

(declare-fun e!2139715 () Bool)

(declare-fun e!2139718 () Bool)

(assert (=> b!3454166 (= e!2139715 e!2139718)))

(declare-fun res!1393166 () Bool)

(assert (=> b!3454166 (=> (not res!1393166) (not e!2139718))))

(declare-fun lt!1172990 () Option!7499)

(assert (=> b!3454166 (= res!1393166 (contains!6859 rules!2135 (get!11868 lt!1172990)))))

(declare-fun b!3454167 () Bool)

(assert (=> b!3454167 (= e!2139718 (= (tag!6028 (get!11868 lt!1172990)) (tag!6028 (rule!8010 separatorToken!241))))))

(declare-fun b!3454168 () Bool)

(declare-fun e!2139717 () Option!7499)

(assert (=> b!3454168 (= e!2139717 (Some!7498 (h!42528 rules!2135)))))

(declare-fun d!993504 () Bool)

(assert (=> d!993504 e!2139715))

(declare-fun res!1393165 () Bool)

(assert (=> d!993504 (=> res!1393165 e!2139715)))

(assert (=> d!993504 (= res!1393165 (isEmpty!21439 lt!1172990))))

(assert (=> d!993504 (= lt!1172990 e!2139717)))

(declare-fun c!591292 () Bool)

(assert (=> d!993504 (= c!591292 (and ((_ is Cons!37108) rules!2135) (= (tag!6028 (h!42528 rules!2135)) (tag!6028 (rule!8010 separatorToken!241)))))))

(assert (=> d!993504 (rulesInvariant!4412 thiss!18206 rules!2135)))

(assert (=> d!993504 (= (getRuleFromTag!1069 thiss!18206 rules!2135 (tag!6028 (rule!8010 separatorToken!241))) lt!1172990)))

(declare-fun b!3454169 () Bool)

(declare-fun e!2139716 () Option!7499)

(assert (=> b!3454169 (= e!2139716 None!7498)))

(declare-fun b!3454170 () Bool)

(declare-fun lt!1172992 () Unit!52432)

(declare-fun lt!1172991 () Unit!52432)

(assert (=> b!3454170 (= lt!1172992 lt!1172991)))

(assert (=> b!3454170 (rulesInvariant!4412 thiss!18206 (t!272131 rules!2135))))

(assert (=> b!3454170 (= lt!1172991 (lemmaInvariantOnRulesThenOnTail!425 thiss!18206 (h!42528 rules!2135) (t!272131 rules!2135)))))

(assert (=> b!3454170 (= e!2139716 (getRuleFromTag!1069 thiss!18206 (t!272131 rules!2135) (tag!6028 (rule!8010 separatorToken!241))))))

(declare-fun b!3454171 () Bool)

(assert (=> b!3454171 (= e!2139717 e!2139716)))

(declare-fun c!591291 () Bool)

(assert (=> b!3454171 (= c!591291 (and ((_ is Cons!37108) rules!2135) (not (= (tag!6028 (h!42528 rules!2135)) (tag!6028 (rule!8010 separatorToken!241))))))))

(assert (= (and d!993504 c!591292) b!3454168))

(assert (= (and d!993504 (not c!591292)) b!3454171))

(assert (= (and b!3454171 c!591291) b!3454170))

(assert (= (and b!3454171 (not c!591291)) b!3454169))

(assert (= (and d!993504 (not res!1393165)) b!3454166))

(assert (= (and b!3454166 res!1393166) b!3454167))

(declare-fun m!3853059 () Bool)

(assert (=> b!3454166 m!3853059))

(assert (=> b!3454166 m!3853059))

(declare-fun m!3853061 () Bool)

(assert (=> b!3454166 m!3853061))

(assert (=> b!3454167 m!3853059))

(declare-fun m!3853063 () Bool)

(assert (=> d!993504 m!3853063))

(assert (=> d!993504 m!3852367))

(assert (=> b!3454170 m!3852697))

(assert (=> b!3454170 m!3852699))

(declare-fun m!3853071 () Bool)

(assert (=> b!3454170 m!3853071))

(assert (=> b!3453747 d!993504))

(declare-fun d!993512 () Bool)

(declare-fun lt!1172999 () BalanceConc!22068)

(assert (=> d!993512 (= (list!13501 lt!1172999) (printListTailRec!681 thiss!18206 (dropList!1198 lt!1172776 0) (list!13501 (BalanceConc!22069 Empty!11227))))))

(declare-fun e!2139721 () BalanceConc!22068)

(assert (=> d!993512 (= lt!1172999 e!2139721)))

(declare-fun c!591293 () Bool)

(assert (=> d!993512 (= c!591293 (>= 0 (size!28132 lt!1172776)))))

(declare-fun e!2139720 () Bool)

(assert (=> d!993512 e!2139720))

(declare-fun res!1393168 () Bool)

(assert (=> d!993512 (=> (not res!1393168) (not e!2139720))))

(assert (=> d!993512 (= res!1393168 (>= 0 0))))

(assert (=> d!993512 (= (printTailRec!1510 thiss!18206 lt!1172776 0 (BalanceConc!22069 Empty!11227)) lt!1172999)))

(declare-fun b!3454173 () Bool)

(assert (=> b!3454173 (= e!2139720 (<= 0 (size!28132 lt!1172776)))))

(declare-fun b!3454174 () Bool)

(assert (=> b!3454174 (= e!2139721 (BalanceConc!22069 Empty!11227))))

(declare-fun b!3454175 () Bool)

(assert (=> b!3454175 (= e!2139721 (printTailRec!1510 thiss!18206 lt!1172776 (+ 0 1) (++!9140 (BalanceConc!22069 Empty!11227) (charsOf!3440 (apply!8710 lt!1172776 0)))))))

(declare-fun lt!1172995 () List!37233)

(assert (=> b!3454175 (= lt!1172995 (list!13502 lt!1172776))))

(declare-fun lt!1172998 () Unit!52432)

(assert (=> b!3454175 (= lt!1172998 (lemmaDropApply!1156 lt!1172995 0))))

(assert (=> b!3454175 (= (head!7300 (drop!2004 lt!1172995 0)) (apply!8712 lt!1172995 0))))

(declare-fun lt!1173001 () Unit!52432)

(assert (=> b!3454175 (= lt!1173001 lt!1172998)))

(declare-fun lt!1172996 () List!37233)

(assert (=> b!3454175 (= lt!1172996 (list!13502 lt!1172776))))

(declare-fun lt!1172997 () Unit!52432)

(assert (=> b!3454175 (= lt!1172997 (lemmaDropTail!1040 lt!1172996 0))))

(assert (=> b!3454175 (= (tail!5418 (drop!2004 lt!1172996 0)) (drop!2004 lt!1172996 (+ 0 1)))))

(declare-fun lt!1173000 () Unit!52432)

(assert (=> b!3454175 (= lt!1173000 lt!1172997)))

(assert (= (and d!993512 res!1393168) b!3454173))

(assert (= (and d!993512 c!591293) b!3454174))

(assert (= (and d!993512 (not c!591293)) b!3454175))

(declare-fun m!3853073 () Bool)

(assert (=> d!993512 m!3853073))

(assert (=> d!993512 m!3852845))

(declare-fun m!3853075 () Bool)

(assert (=> d!993512 m!3853075))

(declare-fun m!3853077 () Bool)

(assert (=> d!993512 m!3853077))

(assert (=> d!993512 m!3853077))

(assert (=> d!993512 m!3852845))

(declare-fun m!3853079 () Bool)

(assert (=> d!993512 m!3853079))

(assert (=> b!3454173 m!3853075))

(declare-fun m!3853081 () Bool)

(assert (=> b!3454175 m!3853081))

(declare-fun m!3853083 () Bool)

(assert (=> b!3454175 m!3853083))

(declare-fun m!3853085 () Bool)

(assert (=> b!3454175 m!3853085))

(declare-fun m!3853087 () Bool)

(assert (=> b!3454175 m!3853087))

(declare-fun m!3853089 () Bool)

(assert (=> b!3454175 m!3853089))

(assert (=> b!3454175 m!3853085))

(declare-fun m!3853091 () Bool)

(assert (=> b!3454175 m!3853091))

(assert (=> b!3454175 m!3852895))

(declare-fun m!3853093 () Bool)

(assert (=> b!3454175 m!3853093))

(declare-fun m!3853095 () Bool)

(assert (=> b!3454175 m!3853095))

(declare-fun m!3853097 () Bool)

(assert (=> b!3454175 m!3853097))

(declare-fun m!3853099 () Bool)

(assert (=> b!3454175 m!3853099))

(assert (=> b!3454175 m!3853083))

(assert (=> b!3454175 m!3853097))

(assert (=> b!3454175 m!3853093))

(declare-fun m!3853101 () Bool)

(assert (=> b!3454175 m!3853101))

(assert (=> b!3454175 m!3853099))

(declare-fun m!3853103 () Bool)

(assert (=> b!3454175 m!3853103))

(assert (=> b!3453747 d!993512))

(declare-fun d!993514 () Bool)

(declare-fun lt!1173004 () Bool)

(declare-fun content!5172 (List!37232) (InoxSet Rule!10652))

(assert (=> d!993514 (= lt!1173004 (select (content!5172 rules!2135) (rule!8010 separatorToken!241)))))

(declare-fun e!2139726 () Bool)

(assert (=> d!993514 (= lt!1173004 e!2139726)))

(declare-fun res!1393174 () Bool)

(assert (=> d!993514 (=> (not res!1393174) (not e!2139726))))

(assert (=> d!993514 (= res!1393174 ((_ is Cons!37108) rules!2135))))

(assert (=> d!993514 (= (contains!6859 rules!2135 (rule!8010 separatorToken!241)) lt!1173004)))

(declare-fun b!3454180 () Bool)

(declare-fun e!2139727 () Bool)

(assert (=> b!3454180 (= e!2139726 e!2139727)))

(declare-fun res!1393173 () Bool)

(assert (=> b!3454180 (=> res!1393173 e!2139727)))

(assert (=> b!3454180 (= res!1393173 (= (h!42528 rules!2135) (rule!8010 separatorToken!241)))))

(declare-fun b!3454181 () Bool)

(assert (=> b!3454181 (= e!2139727 (contains!6859 (t!272131 rules!2135) (rule!8010 separatorToken!241)))))

(assert (= (and d!993514 res!1393174) b!3454180))

(assert (= (and b!3454180 (not res!1393173)) b!3454181))

(declare-fun m!3853105 () Bool)

(assert (=> d!993514 m!3853105))

(declare-fun m!3853107 () Bool)

(assert (=> d!993514 m!3853107))

(declare-fun m!3853109 () Bool)

(assert (=> b!3454181 m!3853109))

(assert (=> b!3453747 d!993514))

(declare-fun b!3454206 () Bool)

(declare-fun e!2139741 () List!37231)

(declare-fun call!249249 () List!37231)

(assert (=> b!3454206 (= e!2139741 call!249249)))

(declare-fun c!591303 () Bool)

(declare-fun bm!249241 () Bool)

(declare-fun c!591302 () Bool)

(assert (=> bm!249241 (= call!249249 (usedCharacters!660 (ite c!591303 (reg!10514 (regex!5426 (rule!8010 separatorToken!241))) (ite c!591302 (regTwo!20883 (regex!5426 (rule!8010 separatorToken!241))) (regOne!20882 (regex!5426 (rule!8010 separatorToken!241)))))))))

(declare-fun b!3454207 () Bool)

(declare-fun e!2139740 () List!37231)

(declare-fun call!249246 () List!37231)

(assert (=> b!3454207 (= e!2139740 call!249246)))

(declare-fun b!3454208 () Bool)

(declare-fun e!2139742 () List!37231)

(assert (=> b!3454208 (= e!2139742 (Cons!37107 (c!591212 (regex!5426 (rule!8010 separatorToken!241))) Nil!37107))))

(declare-fun b!3454209 () Bool)

(declare-fun e!2139743 () List!37231)

(assert (=> b!3454209 (= e!2139743 Nil!37107)))

(declare-fun b!3454210 () Bool)

(assert (=> b!3454210 (= e!2139741 e!2139740)))

(assert (=> b!3454210 (= c!591302 ((_ is Union!10185) (regex!5426 (rule!8010 separatorToken!241))))))

(declare-fun b!3454211 () Bool)

(assert (=> b!3454211 (= c!591303 ((_ is Star!10185) (regex!5426 (rule!8010 separatorToken!241))))))

(assert (=> b!3454211 (= e!2139742 e!2139741)))

(declare-fun bm!249242 () Bool)

(declare-fun call!249247 () List!37231)

(assert (=> bm!249242 (= call!249247 (usedCharacters!660 (ite c!591302 (regOne!20883 (regex!5426 (rule!8010 separatorToken!241))) (regTwo!20882 (regex!5426 (rule!8010 separatorToken!241))))))))

(declare-fun b!3454212 () Bool)

(assert (=> b!3454212 (= e!2139740 call!249246)))

(declare-fun bm!249243 () Bool)

(declare-fun call!249248 () List!37231)

(assert (=> bm!249243 (= call!249246 (++!9139 (ite c!591302 call!249247 call!249248) (ite c!591302 call!249248 call!249247)))))

(declare-fun b!3454213 () Bool)

(assert (=> b!3454213 (= e!2139743 e!2139742)))

(declare-fun c!591305 () Bool)

(assert (=> b!3454213 (= c!591305 ((_ is ElementMatch!10185) (regex!5426 (rule!8010 separatorToken!241))))))

(declare-fun d!993516 () Bool)

(declare-fun c!591304 () Bool)

(assert (=> d!993516 (= c!591304 (or ((_ is EmptyExpr!10185) (regex!5426 (rule!8010 separatorToken!241))) ((_ is EmptyLang!10185) (regex!5426 (rule!8010 separatorToken!241)))))))

(assert (=> d!993516 (= (usedCharacters!660 (regex!5426 (rule!8010 separatorToken!241))) e!2139743)))

(declare-fun bm!249244 () Bool)

(assert (=> bm!249244 (= call!249248 call!249249)))

(assert (= (and d!993516 c!591304) b!3454209))

(assert (= (and d!993516 (not c!591304)) b!3454213))

(assert (= (and b!3454213 c!591305) b!3454208))

(assert (= (and b!3454213 (not c!591305)) b!3454211))

(assert (= (and b!3454211 c!591303) b!3454206))

(assert (= (and b!3454211 (not c!591303)) b!3454210))

(assert (= (and b!3454210 c!591302) b!3454212))

(assert (= (and b!3454210 (not c!591302)) b!3454207))

(assert (= (or b!3454212 b!3454207) bm!249244))

(assert (= (or b!3454212 b!3454207) bm!249242))

(assert (= (or b!3454212 b!3454207) bm!249243))

(assert (= (or b!3454206 bm!249244) bm!249241))

(declare-fun m!3853127 () Bool)

(assert (=> bm!249241 m!3853127))

(declare-fun m!3853129 () Bool)

(assert (=> bm!249242 m!3853129))

(declare-fun m!3853131 () Bool)

(assert (=> bm!249243 m!3853131))

(assert (=> b!3453747 d!993516))

(declare-fun d!993522 () Bool)

(assert (=> d!993522 (dynLambda!15600 lambda!121636 (h!42529 (t!272132 tokens!494)))))

(declare-fun lt!1173011 () Unit!52432)

(assert (=> d!993522 (= lt!1173011 (choose!19952 tokens!494 lambda!121636 (h!42529 (t!272132 tokens!494))))))

(declare-fun e!2139748 () Bool)

(assert (=> d!993522 e!2139748))

(declare-fun res!1393187 () Bool)

(assert (=> d!993522 (=> (not res!1393187) (not e!2139748))))

(assert (=> d!993522 (= res!1393187 (forall!7899 tokens!494 lambda!121636))))

(assert (=> d!993522 (= (forallContained!1373 tokens!494 lambda!121636 (h!42529 (t!272132 tokens!494))) lt!1173011)))

(declare-fun b!3454218 () Bool)

(assert (=> b!3454218 (= e!2139748 (contains!6861 tokens!494 (h!42529 (t!272132 tokens!494))))))

(assert (= (and d!993522 res!1393187) b!3454218))

(declare-fun b_lambda!99253 () Bool)

(assert (=> (not b_lambda!99253) (not d!993522)))

(declare-fun m!3853133 () Bool)

(assert (=> d!993522 m!3853133))

(declare-fun m!3853135 () Bool)

(assert (=> d!993522 m!3853135))

(assert (=> d!993522 m!3852319))

(assert (=> b!3454218 m!3852891))

(assert (=> b!3453725 d!993522))

(declare-fun d!993524 () Bool)

(assert (=> d!993524 (dynLambda!15600 lambda!121636 (h!42529 tokens!494))))

(declare-fun lt!1173012 () Unit!52432)

(assert (=> d!993524 (= lt!1173012 (choose!19952 tokens!494 lambda!121636 (h!42529 tokens!494)))))

(declare-fun e!2139749 () Bool)

(assert (=> d!993524 e!2139749))

(declare-fun res!1393188 () Bool)

(assert (=> d!993524 (=> (not res!1393188) (not e!2139749))))

(assert (=> d!993524 (= res!1393188 (forall!7899 tokens!494 lambda!121636))))

(assert (=> d!993524 (= (forallContained!1373 tokens!494 lambda!121636 (h!42529 tokens!494)) lt!1173012)))

(declare-fun b!3454219 () Bool)

(assert (=> b!3454219 (= e!2139749 (contains!6861 tokens!494 (h!42529 tokens!494)))))

(assert (= (and d!993524 res!1393188) b!3454219))

(declare-fun b_lambda!99255 () Bool)

(assert (=> (not b_lambda!99255) (not d!993524)))

(declare-fun m!3853137 () Bool)

(assert (=> d!993524 m!3853137))

(declare-fun m!3853139 () Bool)

(assert (=> d!993524 m!3853139))

(assert (=> d!993524 m!3852319))

(declare-fun m!3853143 () Bool)

(assert (=> b!3454219 m!3853143))

(assert (=> b!3453725 d!993524))

(declare-fun b!3454250 () Bool)

(declare-fun res!1393210 () Bool)

(declare-fun e!2139767 () Bool)

(assert (=> b!3454250 (=> (not res!1393210) (not e!2139767))))

(declare-fun call!249252 () Bool)

(assert (=> b!3454250 (= res!1393210 (not call!249252))))

(declare-fun b!3454251 () Bool)

(declare-fun e!2139770 () Bool)

(assert (=> b!3454251 (= e!2139770 (not (= (head!7299 lt!1172775) (c!591212 (regex!5426 lt!1172779)))))))

(declare-fun b!3454252 () Bool)

(declare-fun res!1393211 () Bool)

(assert (=> b!3454252 (=> (not res!1393211) (not e!2139767))))

(declare-fun tail!5420 (List!37231) List!37231)

(assert (=> b!3454252 (= res!1393211 (isEmpty!21438 (tail!5420 lt!1172775)))))

(declare-fun bm!249247 () Bool)

(assert (=> bm!249247 (= call!249252 (isEmpty!21438 lt!1172775))))

(declare-fun b!3454253 () Bool)

(declare-fun e!2139768 () Bool)

(declare-fun lt!1173016 () Bool)

(assert (=> b!3454253 (= e!2139768 (not lt!1173016))))

(declare-fun b!3454254 () Bool)

(declare-fun e!2139771 () Bool)

(declare-fun derivativeStep!3035 (Regex!10185 C!20556) Regex!10185)

(assert (=> b!3454254 (= e!2139771 (matchR!4769 (derivativeStep!3035 (regex!5426 lt!1172779) (head!7299 lt!1172775)) (tail!5420 lt!1172775)))))

(declare-fun b!3454255 () Bool)

(declare-fun e!2139772 () Bool)

(assert (=> b!3454255 (= e!2139772 (= lt!1173016 call!249252))))

(declare-fun b!3454256 () Bool)

(assert (=> b!3454256 (= e!2139767 (= (head!7299 lt!1172775) (c!591212 (regex!5426 lt!1172779))))))

(declare-fun b!3454257 () Bool)

(declare-fun res!1393209 () Bool)

(declare-fun e!2139766 () Bool)

(assert (=> b!3454257 (=> res!1393209 e!2139766)))

(assert (=> b!3454257 (= res!1393209 (not ((_ is ElementMatch!10185) (regex!5426 lt!1172779))))))

(assert (=> b!3454257 (= e!2139768 e!2139766)))

(declare-fun b!3454258 () Bool)

(declare-fun res!1393212 () Bool)

(assert (=> b!3454258 (=> res!1393212 e!2139766)))

(assert (=> b!3454258 (= res!1393212 e!2139767)))

(declare-fun res!1393207 () Bool)

(assert (=> b!3454258 (=> (not res!1393207) (not e!2139767))))

(assert (=> b!3454258 (= res!1393207 lt!1173016)))

(declare-fun d!993526 () Bool)

(assert (=> d!993526 e!2139772))

(declare-fun c!591312 () Bool)

(assert (=> d!993526 (= c!591312 ((_ is EmptyExpr!10185) (regex!5426 lt!1172779)))))

(assert (=> d!993526 (= lt!1173016 e!2139771)))

(declare-fun c!591314 () Bool)

(assert (=> d!993526 (= c!591314 (isEmpty!21438 lt!1172775))))

(declare-fun validRegex!4638 (Regex!10185) Bool)

(assert (=> d!993526 (validRegex!4638 (regex!5426 lt!1172779))))

(assert (=> d!993526 (= (matchR!4769 (regex!5426 lt!1172779) lt!1172775) lt!1173016)))

(declare-fun b!3454259 () Bool)

(assert (=> b!3454259 (= e!2139772 e!2139768)))

(declare-fun c!591313 () Bool)

(assert (=> b!3454259 (= c!591313 ((_ is EmptyLang!10185) (regex!5426 lt!1172779)))))

(declare-fun b!3454260 () Bool)

(declare-fun e!2139769 () Bool)

(assert (=> b!3454260 (= e!2139766 e!2139769)))

(declare-fun res!1393213 () Bool)

(assert (=> b!3454260 (=> (not res!1393213) (not e!2139769))))

(assert (=> b!3454260 (= res!1393213 (not lt!1173016))))

(declare-fun b!3454261 () Bool)

(declare-fun res!1393214 () Bool)

(assert (=> b!3454261 (=> res!1393214 e!2139770)))

(assert (=> b!3454261 (= res!1393214 (not (isEmpty!21438 (tail!5420 lt!1172775))))))

(declare-fun b!3454262 () Bool)

(declare-fun nullable!3482 (Regex!10185) Bool)

(assert (=> b!3454262 (= e!2139771 (nullable!3482 (regex!5426 lt!1172779)))))

(declare-fun b!3454263 () Bool)

(assert (=> b!3454263 (= e!2139769 e!2139770)))

(declare-fun res!1393208 () Bool)

(assert (=> b!3454263 (=> res!1393208 e!2139770)))

(assert (=> b!3454263 (= res!1393208 call!249252)))

(assert (= (and d!993526 c!591314) b!3454262))

(assert (= (and d!993526 (not c!591314)) b!3454254))

(assert (= (and d!993526 c!591312) b!3454255))

(assert (= (and d!993526 (not c!591312)) b!3454259))

(assert (= (and b!3454259 c!591313) b!3454253))

(assert (= (and b!3454259 (not c!591313)) b!3454257))

(assert (= (and b!3454257 (not res!1393209)) b!3454258))

(assert (= (and b!3454258 res!1393207) b!3454250))

(assert (= (and b!3454250 res!1393210) b!3454252))

(assert (= (and b!3454252 res!1393211) b!3454256))

(assert (= (and b!3454258 (not res!1393212)) b!3454260))

(assert (= (and b!3454260 res!1393213) b!3454263))

(assert (= (and b!3454263 (not res!1393208)) b!3454261))

(assert (= (and b!3454261 (not res!1393214)) b!3454251))

(assert (= (or b!3454255 b!3454250 b!3454263) bm!249247))

(declare-fun m!3853149 () Bool)

(assert (=> bm!249247 m!3853149))

(assert (=> b!3454251 m!3852291))

(declare-fun m!3853151 () Bool)

(assert (=> b!3454262 m!3853151))

(assert (=> b!3454256 m!3852291))

(assert (=> d!993526 m!3853149))

(declare-fun m!3853153 () Bool)

(assert (=> d!993526 m!3853153))

(declare-fun m!3853155 () Bool)

(assert (=> b!3454261 m!3853155))

(assert (=> b!3454261 m!3853155))

(declare-fun m!3853157 () Bool)

(assert (=> b!3454261 m!3853157))

(assert (=> b!3454254 m!3852291))

(assert (=> b!3454254 m!3852291))

(declare-fun m!3853159 () Bool)

(assert (=> b!3454254 m!3853159))

(assert (=> b!3454254 m!3853155))

(assert (=> b!3454254 m!3853159))

(assert (=> b!3454254 m!3853155))

(declare-fun m!3853161 () Bool)

(assert (=> b!3454254 m!3853161))

(assert (=> b!3454252 m!3853155))

(assert (=> b!3454252 m!3853155))

(assert (=> b!3454252 m!3853157))

(assert (=> b!3453746 d!993526))

(declare-fun d!993530 () Bool)

(assert (=> d!993530 (= (get!11868 lt!1172777) (v!36790 lt!1172777))))

(assert (=> b!3453746 d!993530))

(declare-fun d!993532 () Bool)

(declare-fun c!591321 () Bool)

(assert (=> d!993532 (= c!591321 ((_ is IntegerValue!16968) (value!175101 (h!42529 tokens!494))))))

(declare-fun e!2139785 () Bool)

(assert (=> d!993532 (= (inv!21 (value!175101 (h!42529 tokens!494))) e!2139785)))

(declare-fun b!3454282 () Bool)

(declare-fun e!2139784 () Bool)

(declare-fun inv!15 (TokenValue!5656) Bool)

(assert (=> b!3454282 (= e!2139784 (inv!15 (value!175101 (h!42529 tokens!494))))))

(declare-fun b!3454283 () Bool)

(declare-fun res!1393221 () Bool)

(assert (=> b!3454283 (=> res!1393221 e!2139784)))

(assert (=> b!3454283 (= res!1393221 (not ((_ is IntegerValue!16970) (value!175101 (h!42529 tokens!494)))))))

(declare-fun e!2139786 () Bool)

(assert (=> b!3454283 (= e!2139786 e!2139784)))

(declare-fun b!3454284 () Bool)

(assert (=> b!3454284 (= e!2139785 e!2139786)))

(declare-fun c!591322 () Bool)

(assert (=> b!3454284 (= c!591322 ((_ is IntegerValue!16969) (value!175101 (h!42529 tokens!494))))))

(declare-fun b!3454285 () Bool)

(declare-fun inv!16 (TokenValue!5656) Bool)

(assert (=> b!3454285 (= e!2139785 (inv!16 (value!175101 (h!42529 tokens!494))))))

(declare-fun b!3454286 () Bool)

(declare-fun inv!17 (TokenValue!5656) Bool)

(assert (=> b!3454286 (= e!2139786 (inv!17 (value!175101 (h!42529 tokens!494))))))

(assert (= (and d!993532 c!591321) b!3454285))

(assert (= (and d!993532 (not c!591321)) b!3454284))

(assert (= (and b!3454284 c!591322) b!3454286))

(assert (= (and b!3454284 (not c!591322)) b!3454283))

(assert (= (and b!3454283 (not res!1393221)) b!3454282))

(declare-fun m!3853221 () Bool)

(assert (=> b!3454282 m!3853221))

(declare-fun m!3853223 () Bool)

(assert (=> b!3454285 m!3853223))

(declare-fun m!3853225 () Bool)

(assert (=> b!3454286 m!3853225))

(assert (=> b!3453724 d!993532))

(declare-fun d!993542 () Bool)

(declare-fun lt!1173033 () Bool)

(assert (=> d!993542 (= lt!1173033 (isEmpty!21438 (list!13501 (_2!21536 lt!1172759))))))

(declare-fun isEmpty!21445 (Conc!11227) Bool)

(assert (=> d!993542 (= lt!1173033 (isEmpty!21445 (c!591213 (_2!21536 lt!1172759))))))

(assert (=> d!993542 (= (isEmpty!21437 (_2!21536 lt!1172759)) lt!1173033)))

(declare-fun bs!559991 () Bool)

(assert (= bs!559991 d!993542))

(declare-fun m!3853237 () Bool)

(assert (=> bs!559991 m!3853237))

(assert (=> bs!559991 m!3853237))

(declare-fun m!3853239 () Bool)

(assert (=> bs!559991 m!3853239))

(declare-fun m!3853241 () Bool)

(assert (=> bs!559991 m!3853241))

(assert (=> b!3453745 d!993542))

(declare-fun d!993548 () Bool)

(declare-fun res!1393229 () Bool)

(declare-fun e!2139802 () Bool)

(assert (=> d!993548 (=> res!1393229 e!2139802)))

(assert (=> d!993548 (= res!1393229 ((_ is Nil!37109) tokens!494))))

(assert (=> d!993548 (= (forall!7899 tokens!494 lambda!121636) e!2139802)))

(declare-fun b!3454310 () Bool)

(declare-fun e!2139803 () Bool)

(assert (=> b!3454310 (= e!2139802 e!2139803)))

(declare-fun res!1393230 () Bool)

(assert (=> b!3454310 (=> (not res!1393230) (not e!2139803))))

(assert (=> b!3454310 (= res!1393230 (dynLambda!15600 lambda!121636 (h!42529 tokens!494)))))

(declare-fun b!3454311 () Bool)

(assert (=> b!3454311 (= e!2139803 (forall!7899 (t!272132 tokens!494) lambda!121636))))

(assert (= (and d!993548 (not res!1393229)) b!3454310))

(assert (= (and b!3454310 res!1393230) b!3454311))

(declare-fun b_lambda!99259 () Bool)

(assert (=> (not b_lambda!99259) (not b!3454310)))

(assert (=> b!3454310 m!3853137))

(declare-fun m!3853243 () Bool)

(assert (=> b!3454311 m!3853243))

(assert (=> b!3453723 d!993548))

(declare-fun d!993550 () Bool)

(declare-fun lt!1173036 () Bool)

(declare-fun isEmpty!21446 (List!37233) Bool)

(assert (=> d!993550 (= lt!1173036 (isEmpty!21446 (list!13502 (_1!21536 (lex!2341 thiss!18206 rules!2135 lt!1172789)))))))

(declare-fun isEmpty!21447 (Conc!11228) Bool)

(assert (=> d!993550 (= lt!1173036 (isEmpty!21447 (c!591214 (_1!21536 (lex!2341 thiss!18206 rules!2135 lt!1172789)))))))

(assert (=> d!993550 (= (isEmpty!21436 (_1!21536 (lex!2341 thiss!18206 rules!2135 lt!1172789))) lt!1173036)))

(declare-fun bs!559992 () Bool)

(assert (= bs!559992 d!993550))

(declare-fun m!3853245 () Bool)

(assert (=> bs!559992 m!3853245))

(assert (=> bs!559992 m!3853245))

(declare-fun m!3853247 () Bool)

(assert (=> bs!559992 m!3853247))

(declare-fun m!3853249 () Bool)

(assert (=> bs!559992 m!3853249))

(assert (=> b!3453744 d!993550))

(declare-fun b!3454312 () Bool)

(declare-fun e!2139805 () Bool)

(declare-fun lt!1173037 () tuple2!36804)

(assert (=> b!3454312 (= e!2139805 (not (isEmpty!21436 (_1!21536 lt!1173037))))))

(declare-fun d!993552 () Bool)

(declare-fun e!2139804 () Bool)

(assert (=> d!993552 e!2139804))

(declare-fun res!1393231 () Bool)

(assert (=> d!993552 (=> (not res!1393231) (not e!2139804))))

(declare-fun e!2139806 () Bool)

(assert (=> d!993552 (= res!1393231 e!2139806)))

(declare-fun c!591331 () Bool)

(assert (=> d!993552 (= c!591331 (> (size!28132 (_1!21536 lt!1173037)) 0))))

(assert (=> d!993552 (= lt!1173037 (lexTailRecV2!1049 thiss!18206 rules!2135 lt!1172789 (BalanceConc!22069 Empty!11227) lt!1172789 (BalanceConc!22071 Empty!11228)))))

(assert (=> d!993552 (= (lex!2341 thiss!18206 rules!2135 lt!1172789) lt!1173037)))

(declare-fun b!3454313 () Bool)

(assert (=> b!3454313 (= e!2139806 (= (_2!21536 lt!1173037) lt!1172789))))

(declare-fun b!3454314 () Bool)

(assert (=> b!3454314 (= e!2139806 e!2139805)))

(declare-fun res!1393232 () Bool)

(assert (=> b!3454314 (= res!1393232 (< (size!28134 (_2!21536 lt!1173037)) (size!28134 lt!1172789)))))

(assert (=> b!3454314 (=> (not res!1393232) (not e!2139805))))

(declare-fun b!3454315 () Bool)

(assert (=> b!3454315 (= e!2139804 (= (list!13501 (_2!21536 lt!1173037)) (_2!21538 (lexList!1441 thiss!18206 rules!2135 (list!13501 lt!1172789)))))))

(declare-fun b!3454316 () Bool)

(declare-fun res!1393233 () Bool)

(assert (=> b!3454316 (=> (not res!1393233) (not e!2139804))))

(assert (=> b!3454316 (= res!1393233 (= (list!13502 (_1!21536 lt!1173037)) (_1!21538 (lexList!1441 thiss!18206 rules!2135 (list!13501 lt!1172789)))))))

(assert (= (and d!993552 c!591331) b!3454314))

(assert (= (and d!993552 (not c!591331)) b!3454313))

(assert (= (and b!3454314 res!1393232) b!3454312))

(assert (= (and d!993552 res!1393231) b!3454316))

(assert (= (and b!3454316 res!1393233) b!3454315))

(declare-fun m!3853251 () Bool)

(assert (=> b!3454312 m!3853251))

(declare-fun m!3853253 () Bool)

(assert (=> b!3454315 m!3853253))

(declare-fun m!3853255 () Bool)

(assert (=> b!3454315 m!3853255))

(assert (=> b!3454315 m!3853255))

(declare-fun m!3853257 () Bool)

(assert (=> b!3454315 m!3853257))

(declare-fun m!3853259 () Bool)

(assert (=> b!3454314 m!3853259))

(declare-fun m!3853263 () Bool)

(assert (=> b!3454314 m!3853263))

(declare-fun m!3853265 () Bool)

(assert (=> d!993552 m!3853265))

(declare-fun m!3853269 () Bool)

(assert (=> d!993552 m!3853269))

(declare-fun m!3853273 () Bool)

(assert (=> b!3454316 m!3853273))

(assert (=> b!3454316 m!3853255))

(assert (=> b!3454316 m!3853255))

(assert (=> b!3454316 m!3853257))

(assert (=> b!3453744 d!993552))

(declare-fun d!993556 () Bool)

(declare-fun fromListB!1768 (List!37231) BalanceConc!22068)

(assert (=> d!993556 (= (seqFromList!3906 lt!1172788) (fromListB!1768 lt!1172788))))

(declare-fun bs!559993 () Bool)

(assert (= bs!559993 d!993556))

(declare-fun m!3853275 () Bool)

(assert (=> bs!559993 m!3853275))

(assert (=> b!3453744 d!993556))

(declare-fun d!993558 () Bool)

(declare-fun lt!1173042 () BalanceConc!22068)

(assert (=> d!993558 (= (list!13501 lt!1173042) (printListTailRec!681 thiss!18206 (dropList!1198 lt!1172780 0) (list!13501 (BalanceConc!22069 Empty!11227))))))

(declare-fun e!2139812 () BalanceConc!22068)

(assert (=> d!993558 (= lt!1173042 e!2139812)))

(declare-fun c!591336 () Bool)

(assert (=> d!993558 (= c!591336 (>= 0 (size!28132 lt!1172780)))))

(declare-fun e!2139811 () Bool)

(assert (=> d!993558 e!2139811))

(declare-fun res!1393234 () Bool)

(assert (=> d!993558 (=> (not res!1393234) (not e!2139811))))

(assert (=> d!993558 (= res!1393234 (>= 0 0))))

(assert (=> d!993558 (= (printTailRec!1510 thiss!18206 lt!1172780 0 (BalanceConc!22069 Empty!11227)) lt!1173042)))

(declare-fun b!3454325 () Bool)

(assert (=> b!3454325 (= e!2139811 (<= 0 (size!28132 lt!1172780)))))

(declare-fun b!3454326 () Bool)

(assert (=> b!3454326 (= e!2139812 (BalanceConc!22069 Empty!11227))))

(declare-fun b!3454327 () Bool)

(assert (=> b!3454327 (= e!2139812 (printTailRec!1510 thiss!18206 lt!1172780 (+ 0 1) (++!9140 (BalanceConc!22069 Empty!11227) (charsOf!3440 (apply!8710 lt!1172780 0)))))))

(declare-fun lt!1173038 () List!37233)

(assert (=> b!3454327 (= lt!1173038 (list!13502 lt!1172780))))

(declare-fun lt!1173041 () Unit!52432)

(assert (=> b!3454327 (= lt!1173041 (lemmaDropApply!1156 lt!1173038 0))))

(assert (=> b!3454327 (= (head!7300 (drop!2004 lt!1173038 0)) (apply!8712 lt!1173038 0))))

(declare-fun lt!1173044 () Unit!52432)

(assert (=> b!3454327 (= lt!1173044 lt!1173041)))

(declare-fun lt!1173039 () List!37233)

(assert (=> b!3454327 (= lt!1173039 (list!13502 lt!1172780))))

(declare-fun lt!1173040 () Unit!52432)

(assert (=> b!3454327 (= lt!1173040 (lemmaDropTail!1040 lt!1173039 0))))

(assert (=> b!3454327 (= (tail!5418 (drop!2004 lt!1173039 0)) (drop!2004 lt!1173039 (+ 0 1)))))

(declare-fun lt!1173043 () Unit!52432)

(assert (=> b!3454327 (= lt!1173043 lt!1173040)))

(assert (= (and d!993558 res!1393234) b!3454325))

(assert (= (and d!993558 c!591336) b!3454326))

(assert (= (and d!993558 (not c!591336)) b!3454327))

(declare-fun m!3853277 () Bool)

(assert (=> d!993558 m!3853277))

(assert (=> d!993558 m!3852845))

(declare-fun m!3853279 () Bool)

(assert (=> d!993558 m!3853279))

(declare-fun m!3853281 () Bool)

(assert (=> d!993558 m!3853281))

(assert (=> d!993558 m!3853281))

(assert (=> d!993558 m!3852845))

(declare-fun m!3853283 () Bool)

(assert (=> d!993558 m!3853283))

(assert (=> b!3454325 m!3853279))

(declare-fun m!3853285 () Bool)

(assert (=> b!3454327 m!3853285))

(declare-fun m!3853287 () Bool)

(assert (=> b!3454327 m!3853287))

(declare-fun m!3853289 () Bool)

(assert (=> b!3454327 m!3853289))

(declare-fun m!3853291 () Bool)

(assert (=> b!3454327 m!3853291))

(declare-fun m!3853293 () Bool)

(assert (=> b!3454327 m!3853293))

(assert (=> b!3454327 m!3853289))

(declare-fun m!3853295 () Bool)

(assert (=> b!3454327 m!3853295))

(declare-fun m!3853297 () Bool)

(assert (=> b!3454327 m!3853297))

(declare-fun m!3853299 () Bool)

(assert (=> b!3454327 m!3853299))

(declare-fun m!3853301 () Bool)

(assert (=> b!3454327 m!3853301))

(declare-fun m!3853303 () Bool)

(assert (=> b!3454327 m!3853303))

(declare-fun m!3853305 () Bool)

(assert (=> b!3454327 m!3853305))

(assert (=> b!3454327 m!3853287))

(assert (=> b!3454327 m!3853303))

(assert (=> b!3454327 m!3853299))

(declare-fun m!3853307 () Bool)

(assert (=> b!3454327 m!3853307))

(assert (=> b!3454327 m!3853305))

(declare-fun m!3853309 () Bool)

(assert (=> b!3454327 m!3853309))

(assert (=> b!3453743 d!993558))

(declare-fun d!993560 () Bool)

(declare-fun lt!1173045 () BalanceConc!22068)

(assert (=> d!993560 (= (list!13501 lt!1173045) (printList!1563 thiss!18206 (list!13502 lt!1172780)))))

(assert (=> d!993560 (= lt!1173045 (printTailRec!1510 thiss!18206 lt!1172780 0 (BalanceConc!22069 Empty!11227)))))

(assert (=> d!993560 (= (print!2080 thiss!18206 lt!1172780) lt!1173045)))

(declare-fun bs!559994 () Bool)

(assert (= bs!559994 d!993560))

(declare-fun m!3853311 () Bool)

(assert (=> bs!559994 m!3853311))

(assert (=> bs!559994 m!3853297))

(assert (=> bs!559994 m!3853297))

(declare-fun m!3853313 () Bool)

(assert (=> bs!559994 m!3853313))

(assert (=> bs!559994 m!3852397))

(assert (=> b!3453743 d!993560))

(declare-fun d!993562 () Bool)

(declare-fun list!13505 (Conc!11227) List!37231)

(assert (=> d!993562 (= (list!13501 lt!1172785) (list!13505 (c!591213 lt!1172785)))))

(declare-fun bs!559995 () Bool)

(assert (= bs!559995 d!993562))

(declare-fun m!3853315 () Bool)

(assert (=> bs!559995 m!3853315))

(assert (=> b!3453743 d!993562))

(declare-fun d!993564 () Bool)

(declare-fun e!2139813 () Bool)

(assert (=> d!993564 e!2139813))

(declare-fun res!1393235 () Bool)

(assert (=> d!993564 (=> (not res!1393235) (not e!2139813))))

(declare-fun lt!1173046 () BalanceConc!22070)

(assert (=> d!993564 (= res!1393235 (= (list!13502 lt!1173046) (Cons!37109 (h!42529 tokens!494) Nil!37109)))))

(assert (=> d!993564 (= lt!1173046 (singleton!1113 (h!42529 tokens!494)))))

(assert (=> d!993564 (= (singletonSeq!2522 (h!42529 tokens!494)) lt!1173046)))

(declare-fun b!3454328 () Bool)

(assert (=> b!3454328 (= e!2139813 (isBalanced!3406 (c!591214 lt!1173046)))))

(assert (= (and d!993564 res!1393235) b!3454328))

(declare-fun m!3853317 () Bool)

(assert (=> d!993564 m!3853317))

(declare-fun m!3853319 () Bool)

(assert (=> d!993564 m!3853319))

(declare-fun m!3853321 () Bool)

(assert (=> b!3454328 m!3853321))

(assert (=> b!3453743 d!993564))

(declare-fun d!993566 () Bool)

(declare-fun c!591339 () Bool)

(assert (=> d!993566 (= c!591339 ((_ is Cons!37109) (Cons!37109 (h!42529 tokens!494) Nil!37109)))))

(declare-fun e!2139816 () List!37231)

(assert (=> d!993566 (= (printList!1563 thiss!18206 (Cons!37109 (h!42529 tokens!494) Nil!37109)) e!2139816)))

(declare-fun b!3454333 () Bool)

(assert (=> b!3454333 (= e!2139816 (++!9139 (list!13501 (charsOf!3440 (h!42529 (Cons!37109 (h!42529 tokens!494) Nil!37109)))) (printList!1563 thiss!18206 (t!272132 (Cons!37109 (h!42529 tokens!494) Nil!37109)))))))

(declare-fun b!3454334 () Bool)

(assert (=> b!3454334 (= e!2139816 Nil!37107)))

(assert (= (and d!993566 c!591339) b!3454333))

(assert (= (and d!993566 (not c!591339)) b!3454334))

(declare-fun m!3853323 () Bool)

(assert (=> b!3454333 m!3853323))

(assert (=> b!3454333 m!3853323))

(declare-fun m!3853325 () Bool)

(assert (=> b!3454333 m!3853325))

(declare-fun m!3853327 () Bool)

(assert (=> b!3454333 m!3853327))

(assert (=> b!3454333 m!3853325))

(assert (=> b!3454333 m!3853327))

(declare-fun m!3853329 () Bool)

(assert (=> b!3454333 m!3853329))

(assert (=> b!3453743 d!993566))

(declare-fun d!993568 () Bool)

(declare-fun res!1393240 () Bool)

(declare-fun e!2139821 () Bool)

(assert (=> d!993568 (=> res!1393240 e!2139821)))

(assert (=> d!993568 (= res!1393240 (not ((_ is Cons!37108) rules!2135)))))

(assert (=> d!993568 (= (sepAndNonSepRulesDisjointChars!1620 rules!2135 rules!2135) e!2139821)))

(declare-fun b!3454339 () Bool)

(declare-fun e!2139822 () Bool)

(assert (=> b!3454339 (= e!2139821 e!2139822)))

(declare-fun res!1393241 () Bool)

(assert (=> b!3454339 (=> (not res!1393241) (not e!2139822))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!713 (Rule!10652 List!37232) Bool)

(assert (=> b!3454339 (= res!1393241 (ruleDisjointCharsFromAllFromOtherType!713 (h!42528 rules!2135) rules!2135))))

(declare-fun b!3454340 () Bool)

(assert (=> b!3454340 (= e!2139822 (sepAndNonSepRulesDisjointChars!1620 rules!2135 (t!272131 rules!2135)))))

(assert (= (and d!993568 (not res!1393240)) b!3454339))

(assert (= (and b!3454339 res!1393241) b!3454340))

(declare-fun m!3853331 () Bool)

(assert (=> b!3454339 m!3853331))

(declare-fun m!3853333 () Bool)

(assert (=> b!3454340 m!3853333))

(assert (=> b!3453742 d!993568))

(declare-fun d!993570 () Bool)

(assert (=> d!993570 (= (inv!50270 (tag!6028 (rule!8010 separatorToken!241))) (= (mod (str.len (value!175100 (tag!6028 (rule!8010 separatorToken!241)))) 2) 0))))

(assert (=> b!3453720 d!993570))

(declare-fun d!993572 () Bool)

(declare-fun res!1393244 () Bool)

(declare-fun e!2139825 () Bool)

(assert (=> d!993572 (=> (not res!1393244) (not e!2139825))))

(declare-fun semiInverseModEq!2277 (Int Int) Bool)

(assert (=> d!993572 (= res!1393244 (semiInverseModEq!2277 (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))) (toValue!7650 (transformation!5426 (rule!8010 separatorToken!241)))))))

(assert (=> d!993572 (= (inv!50273 (transformation!5426 (rule!8010 separatorToken!241))) e!2139825)))

(declare-fun b!3454343 () Bool)

(declare-fun equivClasses!2176 (Int Int) Bool)

(assert (=> b!3454343 (= e!2139825 (equivClasses!2176 (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))) (toValue!7650 (transformation!5426 (rule!8010 separatorToken!241)))))))

(assert (= (and d!993572 res!1393244) b!3454343))

(declare-fun m!3853335 () Bool)

(assert (=> d!993572 m!3853335))

(declare-fun m!3853337 () Bool)

(assert (=> b!3454343 m!3853337))

(assert (=> b!3453720 d!993572))

(declare-fun d!993574 () Bool)

(declare-fun lt!1173049 () Token!10218)

(assert (=> d!993574 (= lt!1173049 (apply!8712 (list!13502 (_1!21536 lt!1172759)) 0))))

(declare-fun apply!8715 (Conc!11228 Int) Token!10218)

(assert (=> d!993574 (= lt!1173049 (apply!8715 (c!591214 (_1!21536 lt!1172759)) 0))))

(declare-fun e!2139828 () Bool)

(assert (=> d!993574 e!2139828))

(declare-fun res!1393247 () Bool)

(assert (=> d!993574 (=> (not res!1393247) (not e!2139828))))

(assert (=> d!993574 (= res!1393247 (<= 0 0))))

(assert (=> d!993574 (= (apply!8710 (_1!21536 lt!1172759) 0) lt!1173049)))

(declare-fun b!3454346 () Bool)

(assert (=> b!3454346 (= e!2139828 (< 0 (size!28132 (_1!21536 lt!1172759))))))

(assert (= (and d!993574 res!1393247) b!3454346))

(assert (=> d!993574 m!3853039))

(assert (=> d!993574 m!3853039))

(declare-fun m!3853339 () Bool)

(assert (=> d!993574 m!3853339))

(declare-fun m!3853341 () Bool)

(assert (=> d!993574 m!3853341))

(assert (=> b!3454346 m!3852307))

(assert (=> b!3453740 d!993574))

(declare-fun d!993576 () Bool)

(declare-fun res!1393248 () Bool)

(declare-fun e!2139829 () Bool)

(assert (=> d!993576 (=> (not res!1393248) (not e!2139829))))

(assert (=> d!993576 (= res!1393248 (not (isEmpty!21438 (originalCharacters!6140 separatorToken!241))))))

(assert (=> d!993576 (= (inv!50274 separatorToken!241) e!2139829)))

(declare-fun b!3454347 () Bool)

(declare-fun res!1393249 () Bool)

(assert (=> b!3454347 (=> (not res!1393249) (not e!2139829))))

(assert (=> b!3454347 (= res!1393249 (= (originalCharacters!6140 separatorToken!241) (list!13501 (dynLambda!15597 (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))) (value!175101 separatorToken!241)))))))

(declare-fun b!3454348 () Bool)

(assert (=> b!3454348 (= e!2139829 (= (size!28131 separatorToken!241) (size!28133 (originalCharacters!6140 separatorToken!241))))))

(assert (= (and d!993576 res!1393248) b!3454347))

(assert (= (and b!3454347 res!1393249) b!3454348))

(declare-fun b_lambda!99261 () Bool)

(assert (=> (not b_lambda!99261) (not b!3454347)))

(declare-fun t!272176 () Bool)

(declare-fun tb!188075 () Bool)

(assert (=> (and b!3453728 (= (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))) (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241)))) t!272176) tb!188075))

(declare-fun b!3454349 () Bool)

(declare-fun e!2139830 () Bool)

(declare-fun tp!1076951 () Bool)

(assert (=> b!3454349 (= e!2139830 (and (inv!50275 (c!591213 (dynLambda!15597 (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))) (value!175101 separatorToken!241)))) tp!1076951))))

(declare-fun result!231972 () Bool)

(assert (=> tb!188075 (= result!231972 (and (inv!50276 (dynLambda!15597 (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))) (value!175101 separatorToken!241))) e!2139830))))

(assert (= tb!188075 b!3454349))

(declare-fun m!3853343 () Bool)

(assert (=> b!3454349 m!3853343))

(declare-fun m!3853345 () Bool)

(assert (=> tb!188075 m!3853345))

(assert (=> b!3454347 t!272176))

(declare-fun b_and!242729 () Bool)

(assert (= b_and!242687 (and (=> t!272176 result!231972) b_and!242729)))

(declare-fun tb!188077 () Bool)

(declare-fun t!272178 () Bool)

(assert (=> (and b!3453741 (= (toChars!7509 (transformation!5426 (h!42528 rules!2135))) (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241)))) t!272178) tb!188077))

(declare-fun result!231974 () Bool)

(assert (= result!231974 result!231972))

(assert (=> b!3454347 t!272178))

(declare-fun b_and!242731 () Bool)

(assert (= b_and!242689 (and (=> t!272178 result!231974) b_and!242731)))

(declare-fun t!272180 () Bool)

(declare-fun tb!188079 () Bool)

(assert (=> (and b!3453715 (= (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241)))) t!272180) tb!188079))

(declare-fun result!231976 () Bool)

(assert (= result!231976 result!231972))

(assert (=> b!3454347 t!272180))

(declare-fun b_and!242733 () Bool)

(assert (= b_and!242691 (and (=> t!272180 result!231976) b_and!242733)))

(declare-fun m!3853347 () Bool)

(assert (=> d!993576 m!3853347))

(declare-fun m!3853349 () Bool)

(assert (=> b!3454347 m!3853349))

(assert (=> b!3454347 m!3853349))

(declare-fun m!3853351 () Bool)

(assert (=> b!3454347 m!3853351))

(declare-fun m!3853353 () Bool)

(assert (=> b!3454348 m!3853353))

(assert (=> start!321054 d!993576))

(declare-fun d!993578 () Bool)

(assert (=> d!993578 (not (matchR!4769 (regex!5426 (rule!8010 separatorToken!241)) lt!1172775))))

(declare-fun lt!1173052 () Unit!52432)

(declare-fun choose!19957 (Regex!10185 List!37231 C!20556) Unit!52432)

(assert (=> d!993578 (= lt!1173052 (choose!19957 (regex!5426 (rule!8010 separatorToken!241)) lt!1172775 lt!1172783))))

(assert (=> d!993578 (validRegex!4638 (regex!5426 (rule!8010 separatorToken!241)))))

(assert (=> d!993578 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!484 (regex!5426 (rule!8010 separatorToken!241)) lt!1172775 lt!1172783) lt!1173052)))

(declare-fun bs!559996 () Bool)

(assert (= bs!559996 d!993578))

(assert (=> bs!559996 m!3852387))

(declare-fun m!3853355 () Bool)

(assert (=> bs!559996 m!3853355))

(declare-fun m!3853357 () Bool)

(assert (=> bs!559996 m!3853357))

(assert (=> b!3453739 d!993578))

(declare-fun b!3454350 () Bool)

(declare-fun res!1393253 () Bool)

(declare-fun e!2139832 () Bool)

(assert (=> b!3454350 (=> (not res!1393253) (not e!2139832))))

(declare-fun call!249265 () Bool)

(assert (=> b!3454350 (= res!1393253 (not call!249265))))

(declare-fun b!3454351 () Bool)

(declare-fun e!2139835 () Bool)

(assert (=> b!3454351 (= e!2139835 (not (= (head!7299 lt!1172775) (c!591212 (regex!5426 (rule!8010 separatorToken!241))))))))

(declare-fun b!3454352 () Bool)

(declare-fun res!1393254 () Bool)

(assert (=> b!3454352 (=> (not res!1393254) (not e!2139832))))

(assert (=> b!3454352 (= res!1393254 (isEmpty!21438 (tail!5420 lt!1172775)))))

(declare-fun bm!249260 () Bool)

(assert (=> bm!249260 (= call!249265 (isEmpty!21438 lt!1172775))))

(declare-fun b!3454353 () Bool)

(declare-fun e!2139833 () Bool)

(declare-fun lt!1173053 () Bool)

(assert (=> b!3454353 (= e!2139833 (not lt!1173053))))

(declare-fun b!3454354 () Bool)

(declare-fun e!2139836 () Bool)

(assert (=> b!3454354 (= e!2139836 (matchR!4769 (derivativeStep!3035 (regex!5426 (rule!8010 separatorToken!241)) (head!7299 lt!1172775)) (tail!5420 lt!1172775)))))

(declare-fun b!3454355 () Bool)

(declare-fun e!2139837 () Bool)

(assert (=> b!3454355 (= e!2139837 (= lt!1173053 call!249265))))

(declare-fun b!3454356 () Bool)

(assert (=> b!3454356 (= e!2139832 (= (head!7299 lt!1172775) (c!591212 (regex!5426 (rule!8010 separatorToken!241)))))))

(declare-fun b!3454357 () Bool)

(declare-fun res!1393252 () Bool)

(declare-fun e!2139831 () Bool)

(assert (=> b!3454357 (=> res!1393252 e!2139831)))

(assert (=> b!3454357 (= res!1393252 (not ((_ is ElementMatch!10185) (regex!5426 (rule!8010 separatorToken!241)))))))

(assert (=> b!3454357 (= e!2139833 e!2139831)))

(declare-fun b!3454358 () Bool)

(declare-fun res!1393255 () Bool)

(assert (=> b!3454358 (=> res!1393255 e!2139831)))

(assert (=> b!3454358 (= res!1393255 e!2139832)))

(declare-fun res!1393250 () Bool)

(assert (=> b!3454358 (=> (not res!1393250) (not e!2139832))))

(assert (=> b!3454358 (= res!1393250 lt!1173053)))

(declare-fun d!993580 () Bool)

(assert (=> d!993580 e!2139837))

(declare-fun c!591341 () Bool)

(assert (=> d!993580 (= c!591341 ((_ is EmptyExpr!10185) (regex!5426 (rule!8010 separatorToken!241))))))

(assert (=> d!993580 (= lt!1173053 e!2139836)))

(declare-fun c!591343 () Bool)

(assert (=> d!993580 (= c!591343 (isEmpty!21438 lt!1172775))))

(assert (=> d!993580 (validRegex!4638 (regex!5426 (rule!8010 separatorToken!241)))))

(assert (=> d!993580 (= (matchR!4769 (regex!5426 (rule!8010 separatorToken!241)) lt!1172775) lt!1173053)))

(declare-fun b!3454359 () Bool)

(assert (=> b!3454359 (= e!2139837 e!2139833)))

(declare-fun c!591342 () Bool)

(assert (=> b!3454359 (= c!591342 ((_ is EmptyLang!10185) (regex!5426 (rule!8010 separatorToken!241))))))

(declare-fun b!3454360 () Bool)

(declare-fun e!2139834 () Bool)

(assert (=> b!3454360 (= e!2139831 e!2139834)))

(declare-fun res!1393256 () Bool)

(assert (=> b!3454360 (=> (not res!1393256) (not e!2139834))))

(assert (=> b!3454360 (= res!1393256 (not lt!1173053))))

(declare-fun b!3454361 () Bool)

(declare-fun res!1393257 () Bool)

(assert (=> b!3454361 (=> res!1393257 e!2139835)))

(assert (=> b!3454361 (= res!1393257 (not (isEmpty!21438 (tail!5420 lt!1172775))))))

(declare-fun b!3454362 () Bool)

(assert (=> b!3454362 (= e!2139836 (nullable!3482 (regex!5426 (rule!8010 separatorToken!241))))))

(declare-fun b!3454363 () Bool)

(assert (=> b!3454363 (= e!2139834 e!2139835)))

(declare-fun res!1393251 () Bool)

(assert (=> b!3454363 (=> res!1393251 e!2139835)))

(assert (=> b!3454363 (= res!1393251 call!249265)))

(assert (= (and d!993580 c!591343) b!3454362))

(assert (= (and d!993580 (not c!591343)) b!3454354))

(assert (= (and d!993580 c!591341) b!3454355))

(assert (= (and d!993580 (not c!591341)) b!3454359))

(assert (= (and b!3454359 c!591342) b!3454353))

(assert (= (and b!3454359 (not c!591342)) b!3454357))

(assert (= (and b!3454357 (not res!1393252)) b!3454358))

(assert (= (and b!3454358 res!1393250) b!3454350))

(assert (= (and b!3454350 res!1393253) b!3454352))

(assert (= (and b!3454352 res!1393254) b!3454356))

(assert (= (and b!3454358 (not res!1393255)) b!3454360))

(assert (= (and b!3454360 res!1393256) b!3454363))

(assert (= (and b!3454363 (not res!1393251)) b!3454361))

(assert (= (and b!3454361 (not res!1393257)) b!3454351))

(assert (= (or b!3454355 b!3454350 b!3454363) bm!249260))

(assert (=> bm!249260 m!3853149))

(assert (=> b!3454351 m!3852291))

(declare-fun m!3853359 () Bool)

(assert (=> b!3454362 m!3853359))

(assert (=> b!3454356 m!3852291))

(assert (=> d!993580 m!3853149))

(assert (=> d!993580 m!3853357))

(assert (=> b!3454361 m!3853155))

(assert (=> b!3454361 m!3853155))

(assert (=> b!3454361 m!3853157))

(assert (=> b!3454354 m!3852291))

(assert (=> b!3454354 m!3852291))

(declare-fun m!3853361 () Bool)

(assert (=> b!3454354 m!3853361))

(assert (=> b!3454354 m!3853155))

(assert (=> b!3454354 m!3853361))

(assert (=> b!3454354 m!3853155))

(declare-fun m!3853363 () Bool)

(assert (=> b!3454354 m!3853363))

(assert (=> b!3454352 m!3853155))

(assert (=> b!3454352 m!3853155))

(assert (=> b!3454352 m!3853157))

(assert (=> b!3453739 d!993580))

(declare-fun d!993582 () Bool)

(declare-fun lt!1173055 () Bool)

(declare-fun e!2139839 () Bool)

(assert (=> d!993582 (= lt!1173055 e!2139839)))

(declare-fun res!1393258 () Bool)

(assert (=> d!993582 (=> (not res!1393258) (not e!2139839))))

(assert (=> d!993582 (= res!1393258 (= (list!13502 (_1!21536 (lex!2341 thiss!18206 rules!2135 (print!2080 thiss!18206 (singletonSeq!2522 (h!42529 tokens!494)))))) (list!13502 (singletonSeq!2522 (h!42529 tokens!494)))))))

(declare-fun e!2139838 () Bool)

(assert (=> d!993582 (= lt!1173055 e!2139838)))

(declare-fun res!1393260 () Bool)

(assert (=> d!993582 (=> (not res!1393260) (not e!2139838))))

(declare-fun lt!1173054 () tuple2!36804)

(assert (=> d!993582 (= res!1393260 (= (size!28132 (_1!21536 lt!1173054)) 1))))

(assert (=> d!993582 (= lt!1173054 (lex!2341 thiss!18206 rules!2135 (print!2080 thiss!18206 (singletonSeq!2522 (h!42529 tokens!494)))))))

(assert (=> d!993582 (not (isEmpty!21435 rules!2135))))

(assert (=> d!993582 (= (rulesProduceIndividualToken!2507 thiss!18206 rules!2135 (h!42529 tokens!494)) lt!1173055)))

(declare-fun b!3454364 () Bool)

(declare-fun res!1393259 () Bool)

(assert (=> b!3454364 (=> (not res!1393259) (not e!2139838))))

(assert (=> b!3454364 (= res!1393259 (= (apply!8710 (_1!21536 lt!1173054) 0) (h!42529 tokens!494)))))

(declare-fun b!3454365 () Bool)

(assert (=> b!3454365 (= e!2139838 (isEmpty!21437 (_2!21536 lt!1173054)))))

(declare-fun b!3454366 () Bool)

(assert (=> b!3454366 (= e!2139839 (isEmpty!21437 (_2!21536 (lex!2341 thiss!18206 rules!2135 (print!2080 thiss!18206 (singletonSeq!2522 (h!42529 tokens!494)))))))))

(assert (= (and d!993582 res!1393260) b!3454364))

(assert (= (and b!3454364 res!1393259) b!3454365))

(assert (= (and d!993582 res!1393258) b!3454366))

(assert (=> d!993582 m!3852391))

(declare-fun m!3853365 () Bool)

(assert (=> d!993582 m!3853365))

(assert (=> d!993582 m!3853365))

(declare-fun m!3853367 () Bool)

(assert (=> d!993582 m!3853367))

(assert (=> d!993582 m!3852317))

(declare-fun m!3853369 () Bool)

(assert (=> d!993582 m!3853369))

(assert (=> d!993582 m!3852391))

(declare-fun m!3853371 () Bool)

(assert (=> d!993582 m!3853371))

(assert (=> d!993582 m!3852391))

(declare-fun m!3853373 () Bool)

(assert (=> d!993582 m!3853373))

(declare-fun m!3853375 () Bool)

(assert (=> b!3454364 m!3853375))

(declare-fun m!3853377 () Bool)

(assert (=> b!3454365 m!3853377))

(assert (=> b!3454366 m!3852391))

(assert (=> b!3454366 m!3852391))

(assert (=> b!3454366 m!3853365))

(assert (=> b!3454366 m!3853365))

(assert (=> b!3454366 m!3853367))

(declare-fun m!3853379 () Bool)

(assert (=> b!3454366 m!3853379))

(assert (=> b!3453717 d!993582))

(declare-fun d!993584 () Bool)

(declare-fun c!591346 () Bool)

(assert (=> d!993584 (= c!591346 ((_ is Cons!37109) tokens!494))))

(declare-fun e!2139842 () List!37231)

(assert (=> d!993584 (= (printWithSeparatorTokenList!302 thiss!18206 tokens!494 separatorToken!241) e!2139842)))

(declare-fun b!3454371 () Bool)

(assert (=> b!3454371 (= e!2139842 (++!9139 (++!9139 (list!13501 (charsOf!3440 (h!42529 tokens!494))) (list!13501 (charsOf!3440 separatorToken!241))) (printWithSeparatorTokenList!302 thiss!18206 (t!272132 tokens!494) separatorToken!241)))))

(declare-fun b!3454372 () Bool)

(assert (=> b!3454372 (= e!2139842 Nil!37107)))

(assert (= (and d!993584 c!591346) b!3454371))

(assert (= (and d!993584 (not c!591346)) b!3454372))

(declare-fun m!3853381 () Bool)

(assert (=> b!3454371 m!3853381))

(assert (=> b!3454371 m!3852339))

(declare-fun m!3853383 () Bool)

(assert (=> b!3454371 m!3853383))

(assert (=> b!3454371 m!3852363))

(assert (=> b!3454371 m!3852339))

(assert (=> b!3454371 m!3852363))

(assert (=> b!3454371 m!3852365))

(assert (=> b!3454371 m!3852335))

(assert (=> b!3454371 m!3852349))

(assert (=> b!3454371 m!3852335))

(assert (=> b!3454371 m!3852365))

(assert (=> b!3454371 m!3852349))

(assert (=> b!3454371 m!3853381))

(assert (=> b!3453738 d!993584))

(declare-fun d!993586 () Bool)

(declare-fun e!2139848 () Bool)

(assert (=> d!993586 e!2139848))

(declare-fun res!1393266 () Bool)

(assert (=> d!993586 (=> (not res!1393266) (not e!2139848))))

(declare-fun lt!1173058 () List!37231)

(assert (=> d!993586 (= res!1393266 (= (content!5171 lt!1173058) ((_ map or) (content!5171 (++!9139 (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494)))) lt!1172775)) (content!5171 (printWithSeparatorTokenList!302 thiss!18206 (t!272132 (t!272132 tokens!494)) separatorToken!241)))))))

(declare-fun e!2139847 () List!37231)

(assert (=> d!993586 (= lt!1173058 e!2139847)))

(declare-fun c!591349 () Bool)

(assert (=> d!993586 (= c!591349 ((_ is Nil!37107) (++!9139 (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494)))) lt!1172775)))))

(assert (=> d!993586 (= (++!9139 (++!9139 (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494)))) lt!1172775) (printWithSeparatorTokenList!302 thiss!18206 (t!272132 (t!272132 tokens!494)) separatorToken!241)) lt!1173058)))

(declare-fun b!3454383 () Bool)

(declare-fun res!1393265 () Bool)

(assert (=> b!3454383 (=> (not res!1393265) (not e!2139848))))

(assert (=> b!3454383 (= res!1393265 (= (size!28133 lt!1173058) (+ (size!28133 (++!9139 (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494)))) lt!1172775)) (size!28133 (printWithSeparatorTokenList!302 thiss!18206 (t!272132 (t!272132 tokens!494)) separatorToken!241)))))))

(declare-fun b!3454382 () Bool)

(assert (=> b!3454382 (= e!2139847 (Cons!37107 (h!42527 (++!9139 (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494)))) lt!1172775)) (++!9139 (t!272130 (++!9139 (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494)))) lt!1172775)) (printWithSeparatorTokenList!302 thiss!18206 (t!272132 (t!272132 tokens!494)) separatorToken!241))))))

(declare-fun b!3454381 () Bool)

(assert (=> b!3454381 (= e!2139847 (printWithSeparatorTokenList!302 thiss!18206 (t!272132 (t!272132 tokens!494)) separatorToken!241))))

(declare-fun b!3454384 () Bool)

(assert (=> b!3454384 (= e!2139848 (or (not (= (printWithSeparatorTokenList!302 thiss!18206 (t!272132 (t!272132 tokens!494)) separatorToken!241) Nil!37107)) (= lt!1173058 (++!9139 (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494)))) lt!1172775))))))

(assert (= (and d!993586 c!591349) b!3454381))

(assert (= (and d!993586 (not c!591349)) b!3454382))

(assert (= (and d!993586 res!1393266) b!3454383))

(assert (= (and b!3454383 res!1393265) b!3454384))

(declare-fun m!3853385 () Bool)

(assert (=> d!993586 m!3853385))

(assert (=> d!993586 m!3852343))

(declare-fun m!3853387 () Bool)

(assert (=> d!993586 m!3853387))

(assert (=> d!993586 m!3852345))

(declare-fun m!3853389 () Bool)

(assert (=> d!993586 m!3853389))

(declare-fun m!3853391 () Bool)

(assert (=> b!3454383 m!3853391))

(assert (=> b!3454383 m!3852343))

(declare-fun m!3853393 () Bool)

(assert (=> b!3454383 m!3853393))

(assert (=> b!3454383 m!3852345))

(declare-fun m!3853395 () Bool)

(assert (=> b!3454383 m!3853395))

(assert (=> b!3454382 m!3852345))

(declare-fun m!3853397 () Bool)

(assert (=> b!3454382 m!3853397))

(assert (=> b!3453738 d!993586))

(declare-fun d!993588 () Bool)

(declare-fun e!2139850 () Bool)

(assert (=> d!993588 e!2139850))

(declare-fun res!1393268 () Bool)

(assert (=> d!993588 (=> (not res!1393268) (not e!2139850))))

(declare-fun lt!1173059 () List!37231)

(assert (=> d!993588 (= res!1393268 (= (content!5171 lt!1173059) ((_ map or) (content!5171 (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494))))) (content!5171 lt!1172775))))))

(declare-fun e!2139849 () List!37231)

(assert (=> d!993588 (= lt!1173059 e!2139849)))

(declare-fun c!591350 () Bool)

(assert (=> d!993588 (= c!591350 ((_ is Nil!37107) (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494))))))))

(assert (=> d!993588 (= (++!9139 (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494)))) lt!1172775) lt!1173059)))

(declare-fun b!3454387 () Bool)

(declare-fun res!1393267 () Bool)

(assert (=> b!3454387 (=> (not res!1393267) (not e!2139850))))

(assert (=> b!3454387 (= res!1393267 (= (size!28133 lt!1173059) (+ (size!28133 (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494))))) (size!28133 lt!1172775))))))

(declare-fun b!3454386 () Bool)

(assert (=> b!3454386 (= e!2139849 (Cons!37107 (h!42527 (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494))))) (++!9139 (t!272130 (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494))))) lt!1172775)))))

(declare-fun b!3454385 () Bool)

(assert (=> b!3454385 (= e!2139849 lt!1172775)))

(declare-fun b!3454388 () Bool)

(assert (=> b!3454388 (= e!2139850 (or (not (= lt!1172775 Nil!37107)) (= lt!1173059 (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494)))))))))

(assert (= (and d!993588 c!591350) b!3454385))

(assert (= (and d!993588 (not c!591350)) b!3454386))

(assert (= (and d!993588 res!1393268) b!3454387))

(assert (= (and b!3454387 res!1393267) b!3454388))

(declare-fun m!3853399 () Bool)

(assert (=> d!993588 m!3853399))

(assert (=> d!993588 m!3852341))

(declare-fun m!3853401 () Bool)

(assert (=> d!993588 m!3853401))

(declare-fun m!3853403 () Bool)

(assert (=> d!993588 m!3853403))

(declare-fun m!3853405 () Bool)

(assert (=> b!3454387 m!3853405))

(assert (=> b!3454387 m!3852341))

(declare-fun m!3853407 () Bool)

(assert (=> b!3454387 m!3853407))

(declare-fun m!3853409 () Bool)

(assert (=> b!3454387 m!3853409))

(declare-fun m!3853411 () Bool)

(assert (=> b!3454386 m!3853411))

(assert (=> b!3453738 d!993588))

(declare-fun d!993590 () Bool)

(declare-fun lt!1173062 () BalanceConc!22068)

(assert (=> d!993590 (= (list!13501 lt!1173062) (originalCharacters!6140 separatorToken!241))))

(assert (=> d!993590 (= lt!1173062 (dynLambda!15597 (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))) (value!175101 separatorToken!241)))))

(assert (=> d!993590 (= (charsOf!3440 separatorToken!241) lt!1173062)))

(declare-fun b_lambda!99263 () Bool)

(assert (=> (not b_lambda!99263) (not d!993590)))

(assert (=> d!993590 t!272176))

(declare-fun b_and!242735 () Bool)

(assert (= b_and!242729 (and (=> t!272176 result!231972) b_and!242735)))

(assert (=> d!993590 t!272178))

(declare-fun b_and!242737 () Bool)

(assert (= b_and!242731 (and (=> t!272178 result!231974) b_and!242737)))

(assert (=> d!993590 t!272180))

(declare-fun b_and!242739 () Bool)

(assert (= b_and!242733 (and (=> t!272180 result!231976) b_and!242739)))

(declare-fun m!3853413 () Bool)

(assert (=> d!993590 m!3853413))

(assert (=> d!993590 m!3853349))

(assert (=> b!3453738 d!993590))

(declare-fun d!993592 () Bool)

(assert (=> d!993592 (= (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494)))) (list!13505 (c!591213 (charsOf!3440 (h!42529 (t!272132 tokens!494))))))))

(declare-fun bs!559997 () Bool)

(assert (= bs!559997 d!993592))

(declare-fun m!3853415 () Bool)

(assert (=> bs!559997 m!3853415))

(assert (=> b!3453738 d!993592))

(declare-fun d!993594 () Bool)

(declare-fun e!2139852 () Bool)

(assert (=> d!993594 e!2139852))

(declare-fun res!1393270 () Bool)

(assert (=> d!993594 (=> (not res!1393270) (not e!2139852))))

(declare-fun lt!1173063 () List!37231)

(assert (=> d!993594 (= res!1393270 (= (content!5171 lt!1173063) ((_ map or) (content!5171 lt!1172775) (content!5171 lt!1172770))))))

(declare-fun e!2139851 () List!37231)

(assert (=> d!993594 (= lt!1173063 e!2139851)))

(declare-fun c!591351 () Bool)

(assert (=> d!993594 (= c!591351 ((_ is Nil!37107) lt!1172775))))

(assert (=> d!993594 (= (++!9139 lt!1172775 lt!1172770) lt!1173063)))

(declare-fun b!3454391 () Bool)

(declare-fun res!1393269 () Bool)

(assert (=> b!3454391 (=> (not res!1393269) (not e!2139852))))

(assert (=> b!3454391 (= res!1393269 (= (size!28133 lt!1173063) (+ (size!28133 lt!1172775) (size!28133 lt!1172770))))))

(declare-fun b!3454390 () Bool)

(assert (=> b!3454390 (= e!2139851 (Cons!37107 (h!42527 lt!1172775) (++!9139 (t!272130 lt!1172775) lt!1172770)))))

(declare-fun b!3454389 () Bool)

(assert (=> b!3454389 (= e!2139851 lt!1172770)))

(declare-fun b!3454392 () Bool)

(assert (=> b!3454392 (= e!2139852 (or (not (= lt!1172770 Nil!37107)) (= lt!1173063 lt!1172775)))))

(assert (= (and d!993594 c!591351) b!3454389))

(assert (= (and d!993594 (not c!591351)) b!3454390))

(assert (= (and d!993594 res!1393270) b!3454391))

(assert (= (and b!3454391 res!1393269) b!3454392))

(declare-fun m!3853417 () Bool)

(assert (=> d!993594 m!3853417))

(assert (=> d!993594 m!3853403))

(declare-fun m!3853419 () Bool)

(assert (=> d!993594 m!3853419))

(declare-fun m!3853421 () Bool)

(assert (=> b!3454391 m!3853421))

(assert (=> b!3454391 m!3853409))

(declare-fun m!3853423 () Bool)

(assert (=> b!3454391 m!3853423))

(declare-fun m!3853425 () Bool)

(assert (=> b!3454390 m!3853425))

(assert (=> b!3453738 d!993594))

(declare-fun d!993596 () Bool)

(declare-fun c!591352 () Bool)

(assert (=> d!993596 (= c!591352 ((_ is Cons!37109) (t!272132 (t!272132 tokens!494))))))

(declare-fun e!2139853 () List!37231)

(assert (=> d!993596 (= (printWithSeparatorTokenList!302 thiss!18206 (t!272132 (t!272132 tokens!494)) separatorToken!241) e!2139853)))

(declare-fun b!3454393 () Bool)

(assert (=> b!3454393 (= e!2139853 (++!9139 (++!9139 (list!13501 (charsOf!3440 (h!42529 (t!272132 (t!272132 tokens!494))))) (list!13501 (charsOf!3440 separatorToken!241))) (printWithSeparatorTokenList!302 thiss!18206 (t!272132 (t!272132 (t!272132 tokens!494))) separatorToken!241)))))

(declare-fun b!3454394 () Bool)

(assert (=> b!3454394 (= e!2139853 Nil!37107)))

(assert (= (and d!993596 c!591352) b!3454393))

(assert (= (and d!993596 (not c!591352)) b!3454394))

(declare-fun m!3853427 () Bool)

(assert (=> b!3454393 m!3853427))

(declare-fun m!3853429 () Bool)

(assert (=> b!3454393 m!3853429))

(declare-fun m!3853431 () Bool)

(assert (=> b!3454393 m!3853431))

(declare-fun m!3853433 () Bool)

(assert (=> b!3454393 m!3853433))

(assert (=> b!3454393 m!3853429))

(assert (=> b!3454393 m!3853433))

(declare-fun m!3853435 () Bool)

(assert (=> b!3454393 m!3853435))

(assert (=> b!3454393 m!3852335))

(assert (=> b!3454393 m!3852349))

(assert (=> b!3454393 m!3852335))

(assert (=> b!3454393 m!3853435))

(assert (=> b!3454393 m!3852349))

(assert (=> b!3454393 m!3853427))

(assert (=> b!3453738 d!993596))

(declare-fun d!993598 () Bool)

(declare-fun c!591353 () Bool)

(assert (=> d!993598 (= c!591353 ((_ is Cons!37109) (t!272132 tokens!494)))))

(declare-fun e!2139854 () List!37231)

(assert (=> d!993598 (= (printWithSeparatorTokenList!302 thiss!18206 (t!272132 tokens!494) separatorToken!241) e!2139854)))

(declare-fun b!3454395 () Bool)

(assert (=> b!3454395 (= e!2139854 (++!9139 (++!9139 (list!13501 (charsOf!3440 (h!42529 (t!272132 tokens!494)))) (list!13501 (charsOf!3440 separatorToken!241))) (printWithSeparatorTokenList!302 thiss!18206 (t!272132 (t!272132 tokens!494)) separatorToken!241)))))

(declare-fun b!3454396 () Bool)

(assert (=> b!3454396 (= e!2139854 Nil!37107)))

(assert (= (and d!993598 c!591353) b!3454395))

(assert (= (and d!993598 (not c!591353)) b!3454396))

(declare-fun m!3853437 () Bool)

(assert (=> b!3454395 m!3853437))

(assert (=> b!3454395 m!3852345))

(declare-fun m!3853439 () Bool)

(assert (=> b!3454395 m!3853439))

(assert (=> b!3454395 m!3852333))

(assert (=> b!3454395 m!3852345))

(assert (=> b!3454395 m!3852333))

(assert (=> b!3454395 m!3852341))

(assert (=> b!3454395 m!3852335))

(assert (=> b!3454395 m!3852349))

(assert (=> b!3454395 m!3852335))

(assert (=> b!3454395 m!3852341))

(assert (=> b!3454395 m!3852349))

(assert (=> b!3454395 m!3853437))

(assert (=> b!3453738 d!993598))

(declare-fun d!993600 () Bool)

(assert (=> d!993600 (= (list!13501 (charsOf!3440 separatorToken!241)) (list!13505 (c!591213 (charsOf!3440 separatorToken!241))))))

(declare-fun bs!559998 () Bool)

(assert (= bs!559998 d!993600))

(declare-fun m!3853441 () Bool)

(assert (=> bs!559998 m!3853441))

(assert (=> b!3453738 d!993600))

(declare-fun d!993602 () Bool)

(declare-fun lt!1173064 () BalanceConc!22068)

(assert (=> d!993602 (= (list!13501 lt!1173064) (originalCharacters!6140 (h!42529 (t!272132 tokens!494))))))

(assert (=> d!993602 (= lt!1173064 (dynLambda!15597 (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))) (value!175101 (h!42529 (t!272132 tokens!494)))))))

(assert (=> d!993602 (= (charsOf!3440 (h!42529 (t!272132 tokens!494))) lt!1173064)))

(declare-fun b_lambda!99265 () Bool)

(assert (=> (not b_lambda!99265) (not d!993602)))

(declare-fun t!272182 () Bool)

(declare-fun tb!188081 () Bool)

(assert (=> (and b!3453728 (= (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494)))))) t!272182) tb!188081))

(declare-fun b!3454397 () Bool)

(declare-fun e!2139855 () Bool)

(declare-fun tp!1076952 () Bool)

(assert (=> b!3454397 (= e!2139855 (and (inv!50275 (c!591213 (dynLambda!15597 (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))) (value!175101 (h!42529 (t!272132 tokens!494)))))) tp!1076952))))

(declare-fun result!231978 () Bool)

(assert (=> tb!188081 (= result!231978 (and (inv!50276 (dynLambda!15597 (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))) (value!175101 (h!42529 (t!272132 tokens!494))))) e!2139855))))

(assert (= tb!188081 b!3454397))

(declare-fun m!3853443 () Bool)

(assert (=> b!3454397 m!3853443))

(declare-fun m!3853445 () Bool)

(assert (=> tb!188081 m!3853445))

(assert (=> d!993602 t!272182))

(declare-fun b_and!242741 () Bool)

(assert (= b_and!242735 (and (=> t!272182 result!231978) b_and!242741)))

(declare-fun tb!188083 () Bool)

(declare-fun t!272184 () Bool)

(assert (=> (and b!3453741 (= (toChars!7509 (transformation!5426 (h!42528 rules!2135))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494)))))) t!272184) tb!188083))

(declare-fun result!231980 () Bool)

(assert (= result!231980 result!231978))

(assert (=> d!993602 t!272184))

(declare-fun b_and!242743 () Bool)

(assert (= b_and!242737 (and (=> t!272184 result!231980) b_and!242743)))

(declare-fun t!272186 () Bool)

(declare-fun tb!188085 () Bool)

(assert (=> (and b!3453715 (= (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494)))))) t!272186) tb!188085))

(declare-fun result!231982 () Bool)

(assert (= result!231982 result!231978))

(assert (=> d!993602 t!272186))

(declare-fun b_and!242745 () Bool)

(assert (= b_and!242739 (and (=> t!272186 result!231982) b_and!242745)))

(declare-fun m!3853447 () Bool)

(assert (=> d!993602 m!3853447))

(declare-fun m!3853449 () Bool)

(assert (=> d!993602 m!3853449))

(assert (=> b!3453738 d!993602))

(declare-fun d!993604 () Bool)

(declare-fun lt!1173065 () Token!10218)

(assert (=> d!993604 (= lt!1173065 (apply!8712 (list!13502 (_1!21536 lt!1172772)) 0))))

(assert (=> d!993604 (= lt!1173065 (apply!8715 (c!591214 (_1!21536 lt!1172772)) 0))))

(declare-fun e!2139856 () Bool)

(assert (=> d!993604 e!2139856))

(declare-fun res!1393271 () Bool)

(assert (=> d!993604 (=> (not res!1393271) (not e!2139856))))

(assert (=> d!993604 (= res!1393271 (<= 0 0))))

(assert (=> d!993604 (= (apply!8710 (_1!21536 lt!1172772) 0) lt!1173065)))

(declare-fun b!3454398 () Bool)

(assert (=> b!3454398 (= e!2139856 (< 0 (size!28132 (_1!21536 lt!1172772))))))

(assert (= (and d!993604 res!1393271) b!3454398))

(assert (=> d!993604 m!3852807))

(assert (=> d!993604 m!3852807))

(declare-fun m!3853451 () Bool)

(assert (=> d!993604 m!3853451))

(declare-fun m!3853453 () Bool)

(assert (=> d!993604 m!3853453))

(assert (=> b!3454398 m!3852293))

(assert (=> b!3453716 d!993604))

(declare-fun d!993606 () Bool)

(assert (=> d!993606 (= (inv!50270 (tag!6028 (rule!8010 (h!42529 tokens!494)))) (= (mod (str.len (value!175100 (tag!6028 (rule!8010 (h!42529 tokens!494))))) 2) 0))))

(assert (=> b!3453737 d!993606))

(declare-fun d!993608 () Bool)

(declare-fun res!1393272 () Bool)

(declare-fun e!2139857 () Bool)

(assert (=> d!993608 (=> (not res!1393272) (not e!2139857))))

(assert (=> d!993608 (= res!1393272 (semiInverseModEq!2277 (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) (toValue!7650 (transformation!5426 (rule!8010 (h!42529 tokens!494))))))))

(assert (=> d!993608 (= (inv!50273 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) e!2139857)))

(declare-fun b!3454399 () Bool)

(assert (=> b!3454399 (= e!2139857 (equivClasses!2176 (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) (toValue!7650 (transformation!5426 (rule!8010 (h!42529 tokens!494))))))))

(assert (= (and d!993608 res!1393272) b!3454399))

(declare-fun m!3853455 () Bool)

(assert (=> d!993608 m!3853455))

(declare-fun m!3853457 () Bool)

(assert (=> b!3454399 m!3853457))

(assert (=> b!3453737 d!993608))

(declare-fun d!993610 () Bool)

(assert (=> d!993610 (= (inv!50270 (tag!6028 (h!42528 rules!2135))) (= (mod (str.len (value!175100 (tag!6028 (h!42528 rules!2135)))) 2) 0))))

(assert (=> b!3453736 d!993610))

(declare-fun d!993612 () Bool)

(declare-fun res!1393273 () Bool)

(declare-fun e!2139858 () Bool)

(assert (=> d!993612 (=> (not res!1393273) (not e!2139858))))

(assert (=> d!993612 (= res!1393273 (semiInverseModEq!2277 (toChars!7509 (transformation!5426 (h!42528 rules!2135))) (toValue!7650 (transformation!5426 (h!42528 rules!2135)))))))

(assert (=> d!993612 (= (inv!50273 (transformation!5426 (h!42528 rules!2135))) e!2139858)))

(declare-fun b!3454400 () Bool)

(assert (=> b!3454400 (= e!2139858 (equivClasses!2176 (toChars!7509 (transformation!5426 (h!42528 rules!2135))) (toValue!7650 (transformation!5426 (h!42528 rules!2135)))))))

(assert (= (and d!993612 res!1393273) b!3454400))

(declare-fun m!3853459 () Bool)

(assert (=> d!993612 m!3853459))

(declare-fun m!3853461 () Bool)

(assert (=> b!3454400 m!3853461))

(assert (=> b!3453736 d!993612))

(declare-fun d!993614 () Bool)

(declare-fun lt!1173066 () Bool)

(assert (=> d!993614 (= lt!1173066 (select (content!5172 rules!2135) (rule!8010 (h!42529 tokens!494))))))

(declare-fun e!2139859 () Bool)

(assert (=> d!993614 (= lt!1173066 e!2139859)))

(declare-fun res!1393275 () Bool)

(assert (=> d!993614 (=> (not res!1393275) (not e!2139859))))

(assert (=> d!993614 (= res!1393275 ((_ is Cons!37108) rules!2135))))

(assert (=> d!993614 (= (contains!6859 rules!2135 (rule!8010 (h!42529 tokens!494))) lt!1173066)))

(declare-fun b!3454401 () Bool)

(declare-fun e!2139860 () Bool)

(assert (=> b!3454401 (= e!2139859 e!2139860)))

(declare-fun res!1393274 () Bool)

(assert (=> b!3454401 (=> res!1393274 e!2139860)))

(assert (=> b!3454401 (= res!1393274 (= (h!42528 rules!2135) (rule!8010 (h!42529 tokens!494))))))

(declare-fun b!3454402 () Bool)

(assert (=> b!3454402 (= e!2139860 (contains!6859 (t!272131 rules!2135) (rule!8010 (h!42529 tokens!494))))))

(assert (= (and d!993614 res!1393275) b!3454401))

(assert (= (and b!3454401 (not res!1393274)) b!3454402))

(assert (=> d!993614 m!3853105))

(declare-fun m!3853463 () Bool)

(assert (=> d!993614 m!3853463))

(declare-fun m!3853465 () Bool)

(assert (=> b!3454402 m!3853465))

(assert (=> b!3453735 d!993614))

(declare-fun d!993616 () Bool)

(declare-fun c!591354 () Bool)

(assert (=> d!993616 (= c!591354 ((_ is IntegerValue!16968) (value!175101 separatorToken!241)))))

(declare-fun e!2139862 () Bool)

(assert (=> d!993616 (= (inv!21 (value!175101 separatorToken!241)) e!2139862)))

(declare-fun b!3454403 () Bool)

(declare-fun e!2139861 () Bool)

(assert (=> b!3454403 (= e!2139861 (inv!15 (value!175101 separatorToken!241)))))

(declare-fun b!3454404 () Bool)

(declare-fun res!1393276 () Bool)

(assert (=> b!3454404 (=> res!1393276 e!2139861)))

(assert (=> b!3454404 (= res!1393276 (not ((_ is IntegerValue!16970) (value!175101 separatorToken!241))))))

(declare-fun e!2139863 () Bool)

(assert (=> b!3454404 (= e!2139863 e!2139861)))

(declare-fun b!3454405 () Bool)

(assert (=> b!3454405 (= e!2139862 e!2139863)))

(declare-fun c!591355 () Bool)

(assert (=> b!3454405 (= c!591355 ((_ is IntegerValue!16969) (value!175101 separatorToken!241)))))

(declare-fun b!3454406 () Bool)

(assert (=> b!3454406 (= e!2139862 (inv!16 (value!175101 separatorToken!241)))))

(declare-fun b!3454407 () Bool)

(assert (=> b!3454407 (= e!2139863 (inv!17 (value!175101 separatorToken!241)))))

(assert (= (and d!993616 c!591354) b!3454406))

(assert (= (and d!993616 (not c!591354)) b!3454405))

(assert (= (and b!3454405 c!591355) b!3454407))

(assert (= (and b!3454405 (not c!591355)) b!3454404))

(assert (= (and b!3454404 (not res!1393276)) b!3454403))

(declare-fun m!3853467 () Bool)

(assert (=> b!3454403 m!3853467))

(declare-fun m!3853469 () Bool)

(assert (=> b!3454406 m!3853469))

(declare-fun m!3853471 () Bool)

(assert (=> b!3454407 m!3853471))

(assert (=> b!3453734 d!993616))

(declare-fun d!993618 () Bool)

(assert (=> d!993618 (= (list!13501 (charsOf!3440 (h!42529 tokens!494))) (list!13505 (c!591213 (charsOf!3440 (h!42529 tokens!494)))))))

(declare-fun bs!559999 () Bool)

(assert (= bs!559999 d!993618))

(declare-fun m!3853473 () Bool)

(assert (=> bs!559999 m!3853473))

(assert (=> b!3453733 d!993618))

(declare-fun d!993620 () Bool)

(declare-fun lt!1173067 () BalanceConc!22068)

(assert (=> d!993620 (= (list!13501 lt!1173067) (originalCharacters!6140 (h!42529 tokens!494)))))

(assert (=> d!993620 (= lt!1173067 (dynLambda!15597 (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) (value!175101 (h!42529 tokens!494))))))

(assert (=> d!993620 (= (charsOf!3440 (h!42529 tokens!494)) lt!1173067)))

(declare-fun b_lambda!99267 () Bool)

(assert (=> (not b_lambda!99267) (not d!993620)))

(assert (=> d!993620 t!272134))

(declare-fun b_and!242747 () Bool)

(assert (= b_and!242741 (and (=> t!272134 result!231928) b_and!242747)))

(assert (=> d!993620 t!272136))

(declare-fun b_and!242749 () Bool)

(assert (= b_and!242743 (and (=> t!272136 result!231932) b_and!242749)))

(assert (=> d!993620 t!272138))

(declare-fun b_and!242751 () Bool)

(assert (= b_and!242745 (and (=> t!272138 result!231934) b_and!242751)))

(declare-fun m!3853475 () Bool)

(assert (=> d!993620 m!3853475))

(assert (=> d!993620 m!3852411))

(assert (=> b!3453733 d!993620))

(declare-fun d!993622 () Bool)

(declare-fun e!2139865 () Bool)

(assert (=> d!993622 e!2139865))

(declare-fun res!1393278 () Bool)

(assert (=> d!993622 (=> (not res!1393278) (not e!2139865))))

(declare-fun lt!1173068 () List!37231)

(assert (=> d!993622 (= res!1393278 (= (content!5171 lt!1173068) ((_ map or) (content!5171 lt!1172788) (content!5171 lt!1172768))))))

(declare-fun e!2139864 () List!37231)

(assert (=> d!993622 (= lt!1173068 e!2139864)))

(declare-fun c!591356 () Bool)

(assert (=> d!993622 (= c!591356 ((_ is Nil!37107) lt!1172788))))

(assert (=> d!993622 (= (++!9139 lt!1172788 lt!1172768) lt!1173068)))

(declare-fun b!3454410 () Bool)

(declare-fun res!1393277 () Bool)

(assert (=> b!3454410 (=> (not res!1393277) (not e!2139865))))

(assert (=> b!3454410 (= res!1393277 (= (size!28133 lt!1173068) (+ (size!28133 lt!1172788) (size!28133 lt!1172768))))))

(declare-fun b!3454409 () Bool)

(assert (=> b!3454409 (= e!2139864 (Cons!37107 (h!42527 lt!1172788) (++!9139 (t!272130 lt!1172788) lt!1172768)))))

(declare-fun b!3454408 () Bool)

(assert (=> b!3454408 (= e!2139864 lt!1172768)))

(declare-fun b!3454411 () Bool)

(assert (=> b!3454411 (= e!2139865 (or (not (= lt!1172768 Nil!37107)) (= lt!1173068 lt!1172788)))))

(assert (= (and d!993622 c!591356) b!3454408))

(assert (= (and d!993622 (not c!591356)) b!3454409))

(assert (= (and d!993622 res!1393278) b!3454410))

(assert (= (and b!3454410 res!1393277) b!3454411))

(declare-fun m!3853477 () Bool)

(assert (=> d!993622 m!3853477))

(declare-fun m!3853479 () Bool)

(assert (=> d!993622 m!3853479))

(declare-fun m!3853481 () Bool)

(assert (=> d!993622 m!3853481))

(declare-fun m!3853483 () Bool)

(assert (=> b!3454410 m!3853483))

(assert (=> b!3454410 m!3852289))

(declare-fun m!3853485 () Bool)

(assert (=> b!3454410 m!3853485))

(declare-fun m!3853487 () Bool)

(assert (=> b!3454409 m!3853487))

(assert (=> b!3453753 d!993622))

(declare-fun d!993624 () Bool)

(assert (=> d!993624 (= (++!9139 (++!9139 lt!1172788 lt!1172775) lt!1172770) (++!9139 lt!1172788 (++!9139 lt!1172775 lt!1172770)))))

(declare-fun lt!1173071 () Unit!52432)

(declare-fun choose!19960 (List!37231 List!37231 List!37231) Unit!52432)

(assert (=> d!993624 (= lt!1173071 (choose!19960 lt!1172788 lt!1172775 lt!1172770))))

(assert (=> d!993624 (= (lemmaConcatAssociativity!1944 lt!1172788 lt!1172775 lt!1172770) lt!1173071)))

(declare-fun bs!560000 () Bool)

(assert (= bs!560000 d!993624))

(declare-fun m!3853489 () Bool)

(assert (=> bs!560000 m!3853489))

(assert (=> bs!560000 m!3852377))

(assert (=> bs!560000 m!3852377))

(assert (=> bs!560000 m!3852379))

(assert (=> bs!560000 m!3852331))

(declare-fun m!3853491 () Bool)

(assert (=> bs!560000 m!3853491))

(assert (=> bs!560000 m!3852331))

(assert (=> b!3453753 d!993624))

(declare-fun bs!560011 () Bool)

(declare-fun d!993626 () Bool)

(assert (= bs!560011 (and d!993626 b!3453723)))

(declare-fun lambda!121647 () Int)

(assert (=> bs!560011 (not (= lambda!121647 lambda!121636))))

(declare-fun bs!560012 () Bool)

(assert (= bs!560012 (and d!993626 b!3453747)))

(assert (=> bs!560012 (= lambda!121647 lambda!121637)))

(declare-fun b!3454500 () Bool)

(declare-fun e!2139932 () Bool)

(assert (=> b!3454500 (= e!2139932 true)))

(declare-fun b!3454499 () Bool)

(declare-fun e!2139931 () Bool)

(assert (=> b!3454499 (= e!2139931 e!2139932)))

(declare-fun b!3454498 () Bool)

(declare-fun e!2139930 () Bool)

(assert (=> b!3454498 (= e!2139930 e!2139931)))

(assert (=> d!993626 e!2139930))

(assert (= b!3454499 b!3454500))

(assert (= b!3454498 b!3454499))

(assert (= (and d!993626 ((_ is Cons!37108) rules!2135)) b!3454498))

(assert (=> b!3454500 (< (dynLambda!15594 order!19713 (toValue!7650 (transformation!5426 (h!42528 rules!2135)))) (dynLambda!15595 order!19715 lambda!121647))))

(assert (=> b!3454500 (< (dynLambda!15596 order!19717 (toChars!7509 (transformation!5426 (h!42528 rules!2135)))) (dynLambda!15595 order!19715 lambda!121647))))

(assert (=> d!993626 true))

(declare-fun e!2139929 () Bool)

(assert (=> d!993626 e!2139929))

(declare-fun res!1393295 () Bool)

(assert (=> d!993626 (=> (not res!1393295) (not e!2139929))))

(declare-fun lt!1173092 () Bool)

(assert (=> d!993626 (= res!1393295 (= lt!1173092 (forall!7899 (list!13502 (seqFromList!3905 tokens!494)) lambda!121647)))))

(declare-fun forall!7901 (BalanceConc!22070 Int) Bool)

(assert (=> d!993626 (= lt!1173092 (forall!7901 (seqFromList!3905 tokens!494) lambda!121647))))

(assert (=> d!993626 (not (isEmpty!21435 rules!2135))))

(assert (=> d!993626 (= (rulesProduceEachTokenIndividually!1466 thiss!18206 rules!2135 (seqFromList!3905 tokens!494)) lt!1173092)))

(declare-fun b!3454497 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1849 (LexerInterface!5015 List!37232 List!37233) Bool)

(assert (=> b!3454497 (= e!2139929 (= lt!1173092 (rulesProduceEachTokenIndividuallyList!1849 thiss!18206 rules!2135 (list!13502 (seqFromList!3905 tokens!494)))))))

(assert (= (and d!993626 res!1393295) b!3454497))

(assert (=> d!993626 m!3852401))

(declare-fun m!3853621 () Bool)

(assert (=> d!993626 m!3853621))

(assert (=> d!993626 m!3853621))

(declare-fun m!3853623 () Bool)

(assert (=> d!993626 m!3853623))

(assert (=> d!993626 m!3852401))

(declare-fun m!3853625 () Bool)

(assert (=> d!993626 m!3853625))

(assert (=> d!993626 m!3852317))

(assert (=> b!3454497 m!3852401))

(assert (=> b!3454497 m!3853621))

(assert (=> b!3454497 m!3853621))

(declare-fun m!3853627 () Bool)

(assert (=> b!3454497 m!3853627))

(assert (=> b!3453731 d!993626))

(declare-fun d!993660 () Bool)

(declare-fun fromListB!1770 (List!37233) BalanceConc!22070)

(assert (=> d!993660 (= (seqFromList!3905 tokens!494) (fromListB!1770 tokens!494))))

(declare-fun bs!560013 () Bool)

(assert (= bs!560013 d!993660))

(declare-fun m!3853629 () Bool)

(assert (=> bs!560013 m!3853629))

(assert (=> b!3453731 d!993660))

(declare-fun d!993662 () Bool)

(declare-fun lt!1173094 () Bool)

(declare-fun e!2139934 () Bool)

(assert (=> d!993662 (= lt!1173094 e!2139934)))

(declare-fun res!1393296 () Bool)

(assert (=> d!993662 (=> (not res!1393296) (not e!2139934))))

(assert (=> d!993662 (= res!1393296 (= (list!13502 (_1!21536 (lex!2341 thiss!18206 rules!2135 (print!2080 thiss!18206 (singletonSeq!2522 separatorToken!241))))) (list!13502 (singletonSeq!2522 separatorToken!241))))))

(declare-fun e!2139933 () Bool)

(assert (=> d!993662 (= lt!1173094 e!2139933)))

(declare-fun res!1393298 () Bool)

(assert (=> d!993662 (=> (not res!1393298) (not e!2139933))))

(declare-fun lt!1173093 () tuple2!36804)

(assert (=> d!993662 (= res!1393298 (= (size!28132 (_1!21536 lt!1173093)) 1))))

(assert (=> d!993662 (= lt!1173093 (lex!2341 thiss!18206 rules!2135 (print!2080 thiss!18206 (singletonSeq!2522 separatorToken!241))))))

(assert (=> d!993662 (not (isEmpty!21435 rules!2135))))

(assert (=> d!993662 (= (rulesProduceIndividualToken!2507 thiss!18206 rules!2135 separatorToken!241) lt!1173094)))

(declare-fun b!3454501 () Bool)

(declare-fun res!1393297 () Bool)

(assert (=> b!3454501 (=> (not res!1393297) (not e!2139933))))

(assert (=> b!3454501 (= res!1393297 (= (apply!8710 (_1!21536 lt!1173093) 0) separatorToken!241))))

(declare-fun b!3454502 () Bool)

(assert (=> b!3454502 (= e!2139933 (isEmpty!21437 (_2!21536 lt!1173093)))))

(declare-fun b!3454503 () Bool)

(assert (=> b!3454503 (= e!2139934 (isEmpty!21437 (_2!21536 (lex!2341 thiss!18206 rules!2135 (print!2080 thiss!18206 (singletonSeq!2522 separatorToken!241))))))))

(assert (= (and d!993662 res!1393298) b!3454501))

(assert (= (and b!3454501 res!1393297) b!3454502))

(assert (= (and d!993662 res!1393296) b!3454503))

(assert (=> d!993662 m!3852285))

(declare-fun m!3853631 () Bool)

(assert (=> d!993662 m!3853631))

(assert (=> d!993662 m!3853631))

(declare-fun m!3853633 () Bool)

(assert (=> d!993662 m!3853633))

(assert (=> d!993662 m!3852317))

(declare-fun m!3853635 () Bool)

(assert (=> d!993662 m!3853635))

(assert (=> d!993662 m!3852285))

(declare-fun m!3853637 () Bool)

(assert (=> d!993662 m!3853637))

(assert (=> d!993662 m!3852285))

(declare-fun m!3853639 () Bool)

(assert (=> d!993662 m!3853639))

(declare-fun m!3853641 () Bool)

(assert (=> b!3454501 m!3853641))

(declare-fun m!3853643 () Bool)

(assert (=> b!3454502 m!3853643))

(assert (=> b!3454503 m!3852285))

(assert (=> b!3454503 m!3852285))

(assert (=> b!3454503 m!3853631))

(assert (=> b!3454503 m!3853631))

(assert (=> b!3454503 m!3853633))

(declare-fun m!3853645 () Bool)

(assert (=> b!3454503 m!3853645))

(assert (=> b!3453752 d!993662))

(declare-fun b!3454504 () Bool)

(declare-fun res!1393302 () Bool)

(declare-fun e!2139936 () Bool)

(assert (=> b!3454504 (=> (not res!1393302) (not e!2139936))))

(declare-fun call!249266 () Bool)

(assert (=> b!3454504 (= res!1393302 (not call!249266))))

(declare-fun b!3454505 () Bool)

(declare-fun e!2139939 () Bool)

(assert (=> b!3454505 (= e!2139939 (not (= (head!7299 lt!1172788) (c!591212 (regex!5426 lt!1172767)))))))

(declare-fun b!3454506 () Bool)

(declare-fun res!1393303 () Bool)

(assert (=> b!3454506 (=> (not res!1393303) (not e!2139936))))

(assert (=> b!3454506 (= res!1393303 (isEmpty!21438 (tail!5420 lt!1172788)))))

(declare-fun bm!249261 () Bool)

(assert (=> bm!249261 (= call!249266 (isEmpty!21438 lt!1172788))))

(declare-fun b!3454507 () Bool)

(declare-fun e!2139937 () Bool)

(declare-fun lt!1173095 () Bool)

(assert (=> b!3454507 (= e!2139937 (not lt!1173095))))

(declare-fun b!3454508 () Bool)

(declare-fun e!2139940 () Bool)

(assert (=> b!3454508 (= e!2139940 (matchR!4769 (derivativeStep!3035 (regex!5426 lt!1172767) (head!7299 lt!1172788)) (tail!5420 lt!1172788)))))

(declare-fun b!3454509 () Bool)

(declare-fun e!2139941 () Bool)

(assert (=> b!3454509 (= e!2139941 (= lt!1173095 call!249266))))

(declare-fun b!3454510 () Bool)

(assert (=> b!3454510 (= e!2139936 (= (head!7299 lt!1172788) (c!591212 (regex!5426 lt!1172767))))))

(declare-fun b!3454511 () Bool)

(declare-fun res!1393301 () Bool)

(declare-fun e!2139935 () Bool)

(assert (=> b!3454511 (=> res!1393301 e!2139935)))

(assert (=> b!3454511 (= res!1393301 (not ((_ is ElementMatch!10185) (regex!5426 lt!1172767))))))

(assert (=> b!3454511 (= e!2139937 e!2139935)))

(declare-fun b!3454512 () Bool)

(declare-fun res!1393304 () Bool)

(assert (=> b!3454512 (=> res!1393304 e!2139935)))

(assert (=> b!3454512 (= res!1393304 e!2139936)))

(declare-fun res!1393299 () Bool)

(assert (=> b!3454512 (=> (not res!1393299) (not e!2139936))))

(assert (=> b!3454512 (= res!1393299 lt!1173095)))

(declare-fun d!993664 () Bool)

(assert (=> d!993664 e!2139941))

(declare-fun c!591362 () Bool)

(assert (=> d!993664 (= c!591362 ((_ is EmptyExpr!10185) (regex!5426 lt!1172767)))))

(assert (=> d!993664 (= lt!1173095 e!2139940)))

(declare-fun c!591364 () Bool)

(assert (=> d!993664 (= c!591364 (isEmpty!21438 lt!1172788))))

(assert (=> d!993664 (validRegex!4638 (regex!5426 lt!1172767))))

(assert (=> d!993664 (= (matchR!4769 (regex!5426 lt!1172767) lt!1172788) lt!1173095)))

(declare-fun b!3454513 () Bool)

(assert (=> b!3454513 (= e!2139941 e!2139937)))

(declare-fun c!591363 () Bool)

(assert (=> b!3454513 (= c!591363 ((_ is EmptyLang!10185) (regex!5426 lt!1172767)))))

(declare-fun b!3454514 () Bool)

(declare-fun e!2139938 () Bool)

(assert (=> b!3454514 (= e!2139935 e!2139938)))

(declare-fun res!1393305 () Bool)

(assert (=> b!3454514 (=> (not res!1393305) (not e!2139938))))

(assert (=> b!3454514 (= res!1393305 (not lt!1173095))))

(declare-fun b!3454515 () Bool)

(declare-fun res!1393306 () Bool)

(assert (=> b!3454515 (=> res!1393306 e!2139939)))

(assert (=> b!3454515 (= res!1393306 (not (isEmpty!21438 (tail!5420 lt!1172788))))))

(declare-fun b!3454516 () Bool)

(assert (=> b!3454516 (= e!2139940 (nullable!3482 (regex!5426 lt!1172767)))))

(declare-fun b!3454517 () Bool)

(assert (=> b!3454517 (= e!2139938 e!2139939)))

(declare-fun res!1393300 () Bool)

(assert (=> b!3454517 (=> res!1393300 e!2139939)))

(assert (=> b!3454517 (= res!1393300 call!249266)))

(assert (= (and d!993664 c!591364) b!3454516))

(assert (= (and d!993664 (not c!591364)) b!3454508))

(assert (= (and d!993664 c!591362) b!3454509))

(assert (= (and d!993664 (not c!591362)) b!3454513))

(assert (= (and b!3454513 c!591363) b!3454507))

(assert (= (and b!3454513 (not c!591363)) b!3454511))

(assert (= (and b!3454511 (not res!1393301)) b!3454512))

(assert (= (and b!3454512 res!1393299) b!3454504))

(assert (= (and b!3454504 res!1393302) b!3454506))

(assert (= (and b!3454506 res!1393303) b!3454510))

(assert (= (and b!3454512 (not res!1393304)) b!3454514))

(assert (= (and b!3454514 res!1393305) b!3454517))

(assert (= (and b!3454517 (not res!1393300)) b!3454515))

(assert (= (and b!3454515 (not res!1393306)) b!3454505))

(assert (= (or b!3454509 b!3454504 b!3454517) bm!249261))

(declare-fun m!3853647 () Bool)

(assert (=> bm!249261 m!3853647))

(declare-fun m!3853649 () Bool)

(assert (=> b!3454505 m!3853649))

(declare-fun m!3853651 () Bool)

(assert (=> b!3454516 m!3853651))

(assert (=> b!3454510 m!3853649))

(assert (=> d!993664 m!3853647))

(declare-fun m!3853653 () Bool)

(assert (=> d!993664 m!3853653))

(declare-fun m!3853655 () Bool)

(assert (=> b!3454515 m!3853655))

(assert (=> b!3454515 m!3853655))

(declare-fun m!3853657 () Bool)

(assert (=> b!3454515 m!3853657))

(assert (=> b!3454508 m!3853649))

(assert (=> b!3454508 m!3853649))

(declare-fun m!3853659 () Bool)

(assert (=> b!3454508 m!3853659))

(assert (=> b!3454508 m!3853655))

(assert (=> b!3454508 m!3853659))

(assert (=> b!3454508 m!3853655))

(declare-fun m!3853661 () Bool)

(assert (=> b!3454508 m!3853661))

(assert (=> b!3454506 m!3853655))

(assert (=> b!3454506 m!3853655))

(assert (=> b!3454506 m!3853657))

(assert (=> b!3453730 d!993664))

(declare-fun d!993666 () Bool)

(assert (=> d!993666 (= (get!11868 lt!1172784) (v!36790 lt!1172784))))

(assert (=> b!3453730 d!993666))

(declare-fun d!993668 () Bool)

(declare-fun lt!1173096 () Bool)

(assert (=> d!993668 (= lt!1173096 (isEmpty!21438 (list!13501 (_2!21536 lt!1172772))))))

(assert (=> d!993668 (= lt!1173096 (isEmpty!21445 (c!591213 (_2!21536 lt!1172772))))))

(assert (=> d!993668 (= (isEmpty!21437 (_2!21536 lt!1172772)) lt!1173096)))

(declare-fun bs!560014 () Bool)

(assert (= bs!560014 d!993668))

(declare-fun m!3853663 () Bool)

(assert (=> bs!560014 m!3853663))

(assert (=> bs!560014 m!3853663))

(declare-fun m!3853665 () Bool)

(assert (=> bs!560014 m!3853665))

(declare-fun m!3853667 () Bool)

(assert (=> bs!560014 m!3853667))

(assert (=> b!3453751 d!993668))

(declare-fun d!993670 () Bool)

(declare-fun e!2139943 () Bool)

(assert (=> d!993670 e!2139943))

(declare-fun res!1393308 () Bool)

(assert (=> d!993670 (=> (not res!1393308) (not e!2139943))))

(declare-fun lt!1173097 () List!37231)

(assert (=> d!993670 (= res!1393308 (= (content!5171 lt!1173097) ((_ map or) (content!5171 (++!9139 lt!1172788 lt!1172775)) (content!5171 lt!1172770))))))

(declare-fun e!2139942 () List!37231)

(assert (=> d!993670 (= lt!1173097 e!2139942)))

(declare-fun c!591365 () Bool)

(assert (=> d!993670 (= c!591365 ((_ is Nil!37107) (++!9139 lt!1172788 lt!1172775)))))

(assert (=> d!993670 (= (++!9139 (++!9139 lt!1172788 lt!1172775) lt!1172770) lt!1173097)))

(declare-fun b!3454520 () Bool)

(declare-fun res!1393307 () Bool)

(assert (=> b!3454520 (=> (not res!1393307) (not e!2139943))))

(assert (=> b!3454520 (= res!1393307 (= (size!28133 lt!1173097) (+ (size!28133 (++!9139 lt!1172788 lt!1172775)) (size!28133 lt!1172770))))))

(declare-fun b!3454519 () Bool)

(assert (=> b!3454519 (= e!2139942 (Cons!37107 (h!42527 (++!9139 lt!1172788 lt!1172775)) (++!9139 (t!272130 (++!9139 lt!1172788 lt!1172775)) lt!1172770)))))

(declare-fun b!3454518 () Bool)

(assert (=> b!3454518 (= e!2139942 lt!1172770)))

(declare-fun b!3454521 () Bool)

(assert (=> b!3454521 (= e!2139943 (or (not (= lt!1172770 Nil!37107)) (= lt!1173097 (++!9139 lt!1172788 lt!1172775))))))

(assert (= (and d!993670 c!591365) b!3454518))

(assert (= (and d!993670 (not c!591365)) b!3454519))

(assert (= (and d!993670 res!1393308) b!3454520))

(assert (= (and b!3454520 res!1393307) b!3454521))

(declare-fun m!3853669 () Bool)

(assert (=> d!993670 m!3853669))

(assert (=> d!993670 m!3852377))

(declare-fun m!3853671 () Bool)

(assert (=> d!993670 m!3853671))

(assert (=> d!993670 m!3853419))

(declare-fun m!3853673 () Bool)

(assert (=> b!3454520 m!3853673))

(assert (=> b!3454520 m!3852377))

(declare-fun m!3853675 () Bool)

(assert (=> b!3454520 m!3853675))

(assert (=> b!3454520 m!3853423))

(declare-fun m!3853677 () Bool)

(assert (=> b!3454519 m!3853677))

(assert (=> b!3453750 d!993670))

(declare-fun d!993672 () Bool)

(declare-fun e!2139945 () Bool)

(assert (=> d!993672 e!2139945))

(declare-fun res!1393310 () Bool)

(assert (=> d!993672 (=> (not res!1393310) (not e!2139945))))

(declare-fun lt!1173098 () List!37231)

(assert (=> d!993672 (= res!1393310 (= (content!5171 lt!1173098) ((_ map or) (content!5171 lt!1172788) (content!5171 lt!1172775))))))

(declare-fun e!2139944 () List!37231)

(assert (=> d!993672 (= lt!1173098 e!2139944)))

(declare-fun c!591366 () Bool)

(assert (=> d!993672 (= c!591366 ((_ is Nil!37107) lt!1172788))))

(assert (=> d!993672 (= (++!9139 lt!1172788 lt!1172775) lt!1173098)))

(declare-fun b!3454524 () Bool)

(declare-fun res!1393309 () Bool)

(assert (=> b!3454524 (=> (not res!1393309) (not e!2139945))))

(assert (=> b!3454524 (= res!1393309 (= (size!28133 lt!1173098) (+ (size!28133 lt!1172788) (size!28133 lt!1172775))))))

(declare-fun b!3454523 () Bool)

(assert (=> b!3454523 (= e!2139944 (Cons!37107 (h!42527 lt!1172788) (++!9139 (t!272130 lt!1172788) lt!1172775)))))

(declare-fun b!3454522 () Bool)

(assert (=> b!3454522 (= e!2139944 lt!1172775)))

(declare-fun b!3454525 () Bool)

(assert (=> b!3454525 (= e!2139945 (or (not (= lt!1172775 Nil!37107)) (= lt!1173098 lt!1172788)))))

(assert (= (and d!993672 c!591366) b!3454522))

(assert (= (and d!993672 (not c!591366)) b!3454523))

(assert (= (and d!993672 res!1393310) b!3454524))

(assert (= (and b!3454524 res!1393309) b!3454525))

(declare-fun m!3853679 () Bool)

(assert (=> d!993672 m!3853679))

(assert (=> d!993672 m!3853479))

(assert (=> d!993672 m!3853403))

(declare-fun m!3853681 () Bool)

(assert (=> b!3454524 m!3853681))

(assert (=> b!3454524 m!3852289))

(assert (=> b!3454524 m!3853409))

(declare-fun m!3853683 () Bool)

(assert (=> b!3454523 m!3853683))

(assert (=> b!3453750 d!993672))

(declare-fun d!993674 () Bool)

(declare-fun res!1393313 () Bool)

(declare-fun e!2139948 () Bool)

(assert (=> d!993674 (=> (not res!1393313) (not e!2139948))))

(declare-fun rulesValid!2037 (LexerInterface!5015 List!37232) Bool)

(assert (=> d!993674 (= res!1393313 (rulesValid!2037 thiss!18206 rules!2135))))

(assert (=> d!993674 (= (rulesInvariant!4412 thiss!18206 rules!2135) e!2139948)))

(declare-fun b!3454528 () Bool)

(declare-datatypes ((List!37235 0))(
  ( (Nil!37111) (Cons!37111 (h!42531 String!41614) (t!272228 List!37235)) )
))
(declare-fun noDuplicateTag!2033 (LexerInterface!5015 List!37232 List!37235) Bool)

(assert (=> b!3454528 (= e!2139948 (noDuplicateTag!2033 thiss!18206 rules!2135 Nil!37111))))

(assert (= (and d!993674 res!1393313) b!3454528))

(declare-fun m!3853685 () Bool)

(assert (=> d!993674 m!3853685))

(declare-fun m!3853687 () Bool)

(assert (=> b!3454528 m!3853687))

(assert (=> b!3453749 d!993674))

(declare-fun b!3454539 () Bool)

(declare-fun b_free!89685 () Bool)

(declare-fun b_next!90389 () Bool)

(assert (=> b!3454539 (= b_free!89685 (not b_next!90389))))

(declare-fun t!272212 () Bool)

(declare-fun tb!188103 () Bool)

(assert (=> (and b!3454539 (= (toValue!7650 (transformation!5426 (h!42528 (t!272131 rules!2135)))) (toValue!7650 (transformation!5426 (rule!8010 (h!42529 tokens!494))))) t!272212) tb!188103))

(declare-fun result!232010 () Bool)

(assert (= result!232010 result!231964))

(assert (=> d!993484 t!272212))

(declare-fun b_and!242767 () Bool)

(declare-fun tp!1077019 () Bool)

(assert (=> b!3454539 (= tp!1077019 (and (=> t!272212 result!232010) b_and!242767))))

(declare-fun b_free!89687 () Bool)

(declare-fun b_next!90391 () Bool)

(assert (=> b!3454539 (= b_free!89687 (not b_next!90391))))

(declare-fun t!272214 () Bool)

(declare-fun tb!188105 () Bool)

(assert (=> (and b!3454539 (= (toChars!7509 (transformation!5426 (h!42528 (t!272131 rules!2135)))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494)))))) t!272214) tb!188105))

(declare-fun result!232012 () Bool)

(assert (= result!232012 result!231978))

(assert (=> d!993602 t!272214))

(declare-fun t!272216 () Bool)

(declare-fun tb!188107 () Bool)

(assert (=> (and b!3454539 (= (toChars!7509 (transformation!5426 (h!42528 (t!272131 rules!2135)))) (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241)))) t!272216) tb!188107))

(declare-fun result!232014 () Bool)

(assert (= result!232014 result!231972))

(assert (=> b!3454347 t!272216))

(declare-fun t!272218 () Bool)

(declare-fun tb!188109 () Bool)

(assert (=> (and b!3454539 (= (toChars!7509 (transformation!5426 (h!42528 (t!272131 rules!2135)))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494))))) t!272218) tb!188109))

(declare-fun result!232016 () Bool)

(assert (= result!232016 result!231928))

(assert (=> d!993620 t!272218))

(assert (=> d!993590 t!272216))

(assert (=> b!3453771 t!272218))

(declare-fun b_and!242769 () Bool)

(declare-fun tp!1077020 () Bool)

(assert (=> b!3454539 (= tp!1077020 (and (=> t!272214 result!232012) (=> t!272218 result!232016) (=> t!272216 result!232014) b_and!242769))))

(declare-fun e!2139960 () Bool)

(assert (=> b!3454539 (= e!2139960 (and tp!1077019 tp!1077020))))

(declare-fun e!2139959 () Bool)

(declare-fun tp!1077018 () Bool)

(declare-fun b!3454538 () Bool)

(assert (=> b!3454538 (= e!2139959 (and tp!1077018 (inv!50270 (tag!6028 (h!42528 (t!272131 rules!2135)))) (inv!50273 (transformation!5426 (h!42528 (t!272131 rules!2135)))) e!2139960))))

(declare-fun b!3454537 () Bool)

(declare-fun e!2139958 () Bool)

(declare-fun tp!1077017 () Bool)

(assert (=> b!3454537 (= e!2139958 (and e!2139959 tp!1077017))))

(assert (=> b!3453727 (= tp!1076939 e!2139958)))

(assert (= b!3454538 b!3454539))

(assert (= b!3454537 b!3454538))

(assert (= (and b!3453727 ((_ is Cons!37108) (t!272131 rules!2135))) b!3454537))

(declare-fun m!3853689 () Bool)

(assert (=> b!3454538 m!3853689))

(declare-fun m!3853691 () Bool)

(assert (=> b!3454538 m!3853691))

(declare-fun b!3454553 () Bool)

(declare-fun b_free!89689 () Bool)

(declare-fun b_next!90393 () Bool)

(assert (=> b!3454553 (= b_free!89689 (not b_next!90393))))

(declare-fun t!272220 () Bool)

(declare-fun tb!188111 () Bool)

(assert (=> (and b!3454553 (= (toValue!7650 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))) (toValue!7650 (transformation!5426 (rule!8010 (h!42529 tokens!494))))) t!272220) tb!188111))

(declare-fun result!232020 () Bool)

(assert (= result!232020 result!231964))

(assert (=> d!993484 t!272220))

(declare-fun tp!1077031 () Bool)

(declare-fun b_and!242771 () Bool)

(assert (=> b!3454553 (= tp!1077031 (and (=> t!272220 result!232020) b_and!242771))))

(declare-fun b_free!89691 () Bool)

(declare-fun b_next!90395 () Bool)

(assert (=> b!3454553 (= b_free!89691 (not b_next!90395))))

(declare-fun t!272222 () Bool)

(declare-fun tb!188113 () Bool)

(assert (=> (and b!3454553 (= (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494)))))) t!272222) tb!188113))

(declare-fun result!232022 () Bool)

(assert (= result!232022 result!231978))

(assert (=> d!993602 t!272222))

(declare-fun t!272224 () Bool)

(declare-fun tb!188115 () Bool)

(assert (=> (and b!3454553 (= (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))) (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241)))) t!272224) tb!188115))

(declare-fun result!232024 () Bool)

(assert (= result!232024 result!231972))

(assert (=> b!3454347 t!272224))

(declare-fun t!272226 () Bool)

(declare-fun tb!188117 () Bool)

(assert (=> (and b!3454553 (= (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494))))) t!272226) tb!188117))

(declare-fun result!232026 () Bool)

(assert (= result!232026 result!231928))

(assert (=> d!993620 t!272226))

(assert (=> d!993590 t!272224))

(assert (=> b!3453771 t!272226))

(declare-fun b_and!242773 () Bool)

(declare-fun tp!1077035 () Bool)

(assert (=> b!3454553 (= tp!1077035 (and (=> t!272224 result!232024) (=> t!272222 result!232022) (=> t!272226 result!232026) b_and!242773))))

(declare-fun e!2139977 () Bool)

(declare-fun tp!1077034 () Bool)

(declare-fun e!2139978 () Bool)

(declare-fun b!3454550 () Bool)

(assert (=> b!3454550 (= e!2139978 (and (inv!50274 (h!42529 (t!272132 tokens!494))) e!2139977 tp!1077034))))

(assert (=> b!3453748 (= tp!1076934 e!2139978)))

(declare-fun e!2139973 () Bool)

(declare-fun tp!1077033 () Bool)

(declare-fun e!2139976 () Bool)

(declare-fun b!3454552 () Bool)

(assert (=> b!3454552 (= e!2139973 (and tp!1077033 (inv!50270 (tag!6028 (rule!8010 (h!42529 (t!272132 tokens!494))))) (inv!50273 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))) e!2139976))))

(assert (=> b!3454553 (= e!2139976 (and tp!1077031 tp!1077035))))

(declare-fun b!3454551 () Bool)

(declare-fun tp!1077032 () Bool)

(assert (=> b!3454551 (= e!2139977 (and (inv!21 (value!175101 (h!42529 (t!272132 tokens!494)))) e!2139973 tp!1077032))))

(assert (= b!3454552 b!3454553))

(assert (= b!3454551 b!3454552))

(assert (= b!3454550 b!3454551))

(assert (= (and b!3453748 ((_ is Cons!37109) (t!272132 tokens!494))) b!3454550))

(declare-fun m!3853693 () Bool)

(assert (=> b!3454550 m!3853693))

(declare-fun m!3853695 () Bool)

(assert (=> b!3454552 m!3853695))

(declare-fun m!3853697 () Bool)

(assert (=> b!3454552 m!3853697))

(declare-fun m!3853699 () Bool)

(assert (=> b!3454551 m!3853699))

(declare-fun b!3454567 () Bool)

(declare-fun e!2139981 () Bool)

(declare-fun tp!1077049 () Bool)

(declare-fun tp!1077046 () Bool)

(assert (=> b!3454567 (= e!2139981 (and tp!1077049 tp!1077046))))

(declare-fun b!3454564 () Bool)

(declare-fun tp_is_empty!17545 () Bool)

(assert (=> b!3454564 (= e!2139981 tp_is_empty!17545)))

(declare-fun b!3454565 () Bool)

(declare-fun tp!1077048 () Bool)

(declare-fun tp!1077050 () Bool)

(assert (=> b!3454565 (= e!2139981 (and tp!1077048 tp!1077050))))

(declare-fun b!3454566 () Bool)

(declare-fun tp!1077047 () Bool)

(assert (=> b!3454566 (= e!2139981 tp!1077047)))

(assert (=> b!3453737 (= tp!1076937 e!2139981)))

(assert (= (and b!3453737 ((_ is ElementMatch!10185) (regex!5426 (rule!8010 (h!42529 tokens!494))))) b!3454564))

(assert (= (and b!3453737 ((_ is Concat!15841) (regex!5426 (rule!8010 (h!42529 tokens!494))))) b!3454565))

(assert (= (and b!3453737 ((_ is Star!10185) (regex!5426 (rule!8010 (h!42529 tokens!494))))) b!3454566))

(assert (= (and b!3453737 ((_ is Union!10185) (regex!5426 (rule!8010 (h!42529 tokens!494))))) b!3454567))

(declare-fun b!3454571 () Bool)

(declare-fun e!2139982 () Bool)

(declare-fun tp!1077054 () Bool)

(declare-fun tp!1077051 () Bool)

(assert (=> b!3454571 (= e!2139982 (and tp!1077054 tp!1077051))))

(declare-fun b!3454568 () Bool)

(assert (=> b!3454568 (= e!2139982 tp_is_empty!17545)))

(declare-fun b!3454569 () Bool)

(declare-fun tp!1077053 () Bool)

(declare-fun tp!1077055 () Bool)

(assert (=> b!3454569 (= e!2139982 (and tp!1077053 tp!1077055))))

(declare-fun b!3454570 () Bool)

(declare-fun tp!1077052 () Bool)

(assert (=> b!3454570 (= e!2139982 tp!1077052)))

(assert (=> b!3453736 (= tp!1076932 e!2139982)))

(assert (= (and b!3453736 ((_ is ElementMatch!10185) (regex!5426 (h!42528 rules!2135)))) b!3454568))

(assert (= (and b!3453736 ((_ is Concat!15841) (regex!5426 (h!42528 rules!2135)))) b!3454569))

(assert (= (and b!3453736 ((_ is Star!10185) (regex!5426 (h!42528 rules!2135)))) b!3454570))

(assert (= (and b!3453736 ((_ is Union!10185) (regex!5426 (h!42528 rules!2135)))) b!3454571))

(declare-fun b!3454576 () Bool)

(declare-fun e!2139985 () Bool)

(declare-fun tp!1077058 () Bool)

(assert (=> b!3454576 (= e!2139985 (and tp_is_empty!17545 tp!1077058))))

(assert (=> b!3453724 (= tp!1076936 e!2139985)))

(assert (= (and b!3453724 ((_ is Cons!37107) (originalCharacters!6140 (h!42529 tokens!494)))) b!3454576))

(declare-fun b!3454577 () Bool)

(declare-fun e!2139986 () Bool)

(declare-fun tp!1077059 () Bool)

(assert (=> b!3454577 (= e!2139986 (and tp_is_empty!17545 tp!1077059))))

(assert (=> b!3453734 (= tp!1076931 e!2139986)))

(assert (= (and b!3453734 ((_ is Cons!37107) (originalCharacters!6140 separatorToken!241))) b!3454577))

(declare-fun b!3454580 () Bool)

(declare-fun e!2139989 () Bool)

(assert (=> b!3454580 (= e!2139989 true)))

(declare-fun b!3454579 () Bool)

(declare-fun e!2139988 () Bool)

(assert (=> b!3454579 (= e!2139988 e!2139989)))

(declare-fun b!3454578 () Bool)

(declare-fun e!2139987 () Bool)

(assert (=> b!3454578 (= e!2139987 e!2139988)))

(assert (=> b!3453762 e!2139987))

(assert (= b!3454579 b!3454580))

(assert (= b!3454578 b!3454579))

(assert (= (and b!3453762 ((_ is Cons!37108) (t!272131 rules!2135))) b!3454578))

(assert (=> b!3454580 (< (dynLambda!15594 order!19713 (toValue!7650 (transformation!5426 (h!42528 (t!272131 rules!2135))))) (dynLambda!15595 order!19715 lambda!121637))))

(assert (=> b!3454580 (< (dynLambda!15596 order!19717 (toChars!7509 (transformation!5426 (h!42528 (t!272131 rules!2135))))) (dynLambda!15595 order!19715 lambda!121637))))

(declare-fun b!3454584 () Bool)

(declare-fun e!2139990 () Bool)

(declare-fun tp!1077063 () Bool)

(declare-fun tp!1077060 () Bool)

(assert (=> b!3454584 (= e!2139990 (and tp!1077063 tp!1077060))))

(declare-fun b!3454581 () Bool)

(assert (=> b!3454581 (= e!2139990 tp_is_empty!17545)))

(declare-fun b!3454582 () Bool)

(declare-fun tp!1077062 () Bool)

(declare-fun tp!1077064 () Bool)

(assert (=> b!3454582 (= e!2139990 (and tp!1077062 tp!1077064))))

(declare-fun b!3454583 () Bool)

(declare-fun tp!1077061 () Bool)

(assert (=> b!3454583 (= e!2139990 tp!1077061)))

(assert (=> b!3453720 (= tp!1076933 e!2139990)))

(assert (= (and b!3453720 ((_ is ElementMatch!10185) (regex!5426 (rule!8010 separatorToken!241)))) b!3454581))

(assert (= (and b!3453720 ((_ is Concat!15841) (regex!5426 (rule!8010 separatorToken!241)))) b!3454582))

(assert (= (and b!3453720 ((_ is Star!10185) (regex!5426 (rule!8010 separatorToken!241)))) b!3454583))

(assert (= (and b!3453720 ((_ is Union!10185) (regex!5426 (rule!8010 separatorToken!241)))) b!3454584))

(declare-fun b_lambda!99291 () Bool)

(assert (= b_lambda!99259 (or b!3453723 b_lambda!99291)))

(declare-fun bs!560015 () Bool)

(declare-fun d!993676 () Bool)

(assert (= bs!560015 (and d!993676 b!3453723)))

(assert (=> bs!560015 (= (dynLambda!15600 lambda!121636 (h!42529 tokens!494)) (not (isSeparator!5426 (rule!8010 (h!42529 tokens!494)))))))

(assert (=> b!3454310 d!993676))

(declare-fun b_lambda!99293 () Bool)

(assert (= b_lambda!99263 (or (and b!3453715 b_free!89675 (= (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))))) (and b!3454539 b_free!89687 (= (toChars!7509 (transformation!5426 (h!42528 (t!272131 rules!2135)))) (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))))) (and b!3453728 b_free!89667) (and b!3453741 b_free!89671 (= (toChars!7509 (transformation!5426 (h!42528 rules!2135))) (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))))) (and b!3454553 b_free!89691 (= (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))) (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))))) b_lambda!99293)))

(declare-fun b_lambda!99295 () Bool)

(assert (= b_lambda!99267 (or (and b!3454553 b_free!89691 (= (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))))) (and b!3454539 b_free!89687 (= (toChars!7509 (transformation!5426 (h!42528 (t!272131 rules!2135)))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))))) (and b!3453741 b_free!89671 (= (toChars!7509 (transformation!5426 (h!42528 rules!2135))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))))) (and b!3453728 b_free!89667 (= (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))))) (and b!3453715 b_free!89675) b_lambda!99295)))

(declare-fun b_lambda!99297 () Bool)

(assert (= b_lambda!99231 (or (and b!3454553 b_free!89691 (= (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))))) (and b!3454539 b_free!89687 (= (toChars!7509 (transformation!5426 (h!42528 (t!272131 rules!2135)))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))))) (and b!3453741 b_free!89671 (= (toChars!7509 (transformation!5426 (h!42528 rules!2135))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))))) (and b!3453728 b_free!89667 (= (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))))) (and b!3453715 b_free!89675) b_lambda!99297)))

(declare-fun b_lambda!99299 () Bool)

(assert (= b_lambda!99255 (or b!3453723 b_lambda!99299)))

(assert (=> d!993524 d!993676))

(declare-fun b_lambda!99301 () Bool)

(assert (= b_lambda!99261 (or (and b!3453715 b_free!89675 (= (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))))) (and b!3454539 b_free!89687 (= (toChars!7509 (transformation!5426 (h!42528 (t!272131 rules!2135)))) (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))))) (and b!3453728 b_free!89667) (and b!3453741 b_free!89671 (= (toChars!7509 (transformation!5426 (h!42528 rules!2135))) (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))))) (and b!3454553 b_free!89691 (= (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))) (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))))) b_lambda!99301)))

(declare-fun b_lambda!99303 () Bool)

(assert (= b_lambda!99253 (or b!3453723 b_lambda!99303)))

(declare-fun bs!560016 () Bool)

(declare-fun d!993678 () Bool)

(assert (= bs!560016 (and d!993678 b!3453723)))

(assert (=> bs!560016 (= (dynLambda!15600 lambda!121636 (h!42529 (t!272132 tokens!494))) (not (isSeparator!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))))))

(assert (=> d!993522 d!993678))

(declare-fun b_lambda!99305 () Bool)

(assert (= b_lambda!99265 (or (and b!3454539 b_free!89687 (= (toChars!7509 (transformation!5426 (h!42528 (t!272131 rules!2135)))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))))) (and b!3453715 b_free!89675 (= (toChars!7509 (transformation!5426 (rule!8010 (h!42529 tokens!494)))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))))) (and b!3453728 b_free!89667 (= (toChars!7509 (transformation!5426 (rule!8010 separatorToken!241))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))))) (and b!3453741 b_free!89671 (= (toChars!7509 (transformation!5426 (h!42528 rules!2135))) (toChars!7509 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))))) (and b!3454553 b_free!89691) b_lambda!99305)))

(declare-fun b_lambda!99307 () Bool)

(assert (= b_lambda!99251 (or (and b!3453728 b_free!89665 (= (toValue!7650 (transformation!5426 (rule!8010 separatorToken!241))) (toValue!7650 (transformation!5426 (rule!8010 (h!42529 tokens!494)))))) (and b!3453715 b_free!89673) (and b!3454539 b_free!89685 (= (toValue!7650 (transformation!5426 (h!42528 (t!272131 rules!2135)))) (toValue!7650 (transformation!5426 (rule!8010 (h!42529 tokens!494)))))) (and b!3454553 b_free!89689 (= (toValue!7650 (transformation!5426 (rule!8010 (h!42529 (t!272132 tokens!494))))) (toValue!7650 (transformation!5426 (rule!8010 (h!42529 tokens!494)))))) (and b!3453741 b_free!89669 (= (toValue!7650 (transformation!5426 (h!42528 rules!2135))) (toValue!7650 (transformation!5426 (rule!8010 (h!42529 tokens!494)))))) b_lambda!99307)))

(declare-fun b_lambda!99309 () Bool)

(assert (= b_lambda!99249 (or b!3453747 b_lambda!99309)))

(declare-fun bs!560017 () Bool)

(declare-fun d!993680 () Bool)

(assert (= bs!560017 (and d!993680 b!3453747)))

(assert (=> bs!560017 (= (dynLambda!15600 lambda!121637 (h!42529 (t!272132 tokens!494))) (rulesProduceIndividualToken!2507 thiss!18206 rules!2135 (h!42529 (t!272132 tokens!494))))))

(assert (=> bs!560017 m!3852287))

(assert (=> d!993474 d!993680))

(check-sat (not b!3454339) (not d!993574) (not d!993586) (not b!3454148) (not d!993674) (not b!3454352) (not b_next!90373) (not d!993594) (not b!3454027) (not b!3454519) (not d!993486) (not b!3454387) (not b!3454395) (not b!3454577) (not d!993460) b_and!242723 (not d!993664) (not b!3454570) (not d!993514) (not d!993562) (not d!993474) (not b!3454285) (not d!993612) (not d!993662) (not b!3454576) (not d!993592) (not b_lambda!99293) (not b!3454537) (not d!993526) (not d!993624) (not b!3454261) (not b!3454119) (not b!3454348) (not b_next!90377) (not b!3454498) (not b!3454366) (not b!3454508) (not b!3454151) b_and!242747 (not b!3454218) b_and!242771 (not b_lambda!99301) (not b!3454390) (not d!993668) (not b!3454362) (not b!3454150) (not d!993670) (not b!3454582) (not b_next!90391) (not b!3454325) (not b_next!90379) (not b!3454407) (not b!3454501) (not b!3454020) (not b_next!90389) (not b!3454356) (not bm!249241) (not d!993472) (not b!3454371) (not b!3454102) (not b!3454106) (not b_next!90369) (not b!3454340) (not b!3454115) (not d!993462) (not d!993556) b_and!242773 (not d!993552) (not d!993614) (not b!3454569) (not b!3453977) (not d!993626) (not b_lambda!99299) (not b!3454566) (not b!3454063) (not b!3454282) (not b!3454064) (not d!993444) (not b!3454538) (not bm!249243) (not b!3454410) (not b!3454327) (not b!3454315) b_and!242725 (not b!3454173) (not b!3454059) (not b!3454402) (not d!993588) (not b!3454520) (not d!993458) (not b!3454365) (not b!3454361) (not d!993560) (not b!3454343) (not d!993490) (not b!3454406) (not d!993660) (not d!993342) (not d!993558) (not tb!188075) (not d!993524) (not d!993620) (not b!3454386) (not b!3454393) tp_is_empty!17545 (not b!3454152) (not d!993456) (not b!3454256) (not bm!249247) (not d!993500) (not b!3454181) (not b!3454070) (not b!3454400) (not b!3454351) (not b!3453978) (not d!993590) (not b!3454145) (not b_lambda!99307) (not b!3454166) (not b!3454316) (not b!3454524) (not b!3453777) (not d!993478) (not b!3454506) b_and!242751 (not b!3454252) (not b!3454019) (not b!3454312) (not b_lambda!99291) (not d!993346) (not b!3454311) (not b!3454167) (not b_lambda!99309) (not bm!249242) (not b!3454219) (not b_next!90393) (not b!3454571) (not b!3454502) (not b!3454149) (not b_next!90395) (not d!993542) (not d!993504) (not b!3454069) (not d!993438) b_and!242769 (not d!993578) (not b_lambda!99303) (not d!993618) (not d!993580) (not b!3454578) (not b!3454583) (not b!3454497) (not b!3454262) (not d!993576) (not b!3454399) (not b!3454147) b_and!242767 (not b!3454061) (not b!3454510) (not b!3454382) (not b!3454364) (not tb!188081) (not b!3454409) (not b!3454328) (not b!3453772) (not tb!188069) (not b!3454254) (not d!993550) (not d!993498) (not b!3454118) (not b_lambda!99295) (not d!993468) (not b!3454096) (not b!3454146) (not d!993608) (not b!3454515) (not b!3454314) (not b!3454523) (not bm!249261) (not d!993672) (not b_lambda!99297) (not b!3454170) b_and!242749 (not b!3454251) (not b!3454094) (not b!3454286) (not b!3454550) (not b_next!90371) (not b!3454565) (not d!993582) (not b!3454505) (not d!993476) (not d!993602) (not b!3454383) (not b!3454528) (not b!3454333) (not d!993564) (not d!993622) (not d!993512) b_and!242727 (not b!3454403) (not b!3454552) (not b!3454397) (not d!993488) (not b!3454175) (not b!3454120) (not b!3454349) (not d!993600) (not b!3454567) (not b!3454584) (not d!993572) (not bs!560017) (not b!3454105) (not b!3454062) (not b!3454347) (not d!993440) (not b!3454023) (not b!3454551) (not b!3453771) (not b!3454346) (not b_next!90375) (not b!3454107) (not bm!249260) (not b!3454354) (not b!3453979) (not b!3454116) (not d!993522) (not tb!188039) (not b!3454398) (not d!993404) (not b!3454503) (not d!993604) (not d!993480) (not b_lambda!99305) (not b!3454516) (not b!3454391))
(check-sat (not b_next!90373) b_and!242723 (not b_next!90377) (not b_next!90389) b_and!242725 b_and!242751 (not b_next!90393) b_and!242767 b_and!242727 (not b_next!90375) b_and!242747 b_and!242771 (not b_next!90391) (not b_next!90379) (not b_next!90369) b_and!242773 b_and!242769 (not b_next!90395) (not b_next!90371) b_and!242749)
