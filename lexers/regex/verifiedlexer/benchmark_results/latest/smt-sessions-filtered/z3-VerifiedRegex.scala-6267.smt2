; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!308606 () Bool)

(assert start!308606)

(declare-fun b!3309984 () Bool)

(declare-fun b_free!87201 () Bool)

(declare-fun b_next!87905 () Bool)

(assert (=> b!3309984 (= b_free!87201 (not b_next!87905))))

(declare-fun tp!1036680 () Bool)

(declare-fun b_and!227167 () Bool)

(assert (=> b!3309984 (= tp!1036680 b_and!227167)))

(declare-fun b_free!87203 () Bool)

(declare-fun b_next!87907 () Bool)

(assert (=> b!3309984 (= b_free!87203 (not b_next!87907))))

(declare-fun tp!1036672 () Bool)

(declare-fun b_and!227169 () Bool)

(assert (=> b!3309984 (= tp!1036672 b_and!227169)))

(declare-fun b!3309988 () Bool)

(declare-fun b_free!87205 () Bool)

(declare-fun b_next!87909 () Bool)

(assert (=> b!3309988 (= b_free!87205 (not b_next!87909))))

(declare-fun tp!1036674 () Bool)

(declare-fun b_and!227171 () Bool)

(assert (=> b!3309988 (= tp!1036674 b_and!227171)))

(declare-fun b_free!87207 () Bool)

(declare-fun b_next!87911 () Bool)

(assert (=> b!3309988 (= b_free!87207 (not b_next!87911))))

(declare-fun tp!1036679 () Bool)

(declare-fun b_and!227173 () Bool)

(assert (=> b!3309988 (= tp!1036679 b_and!227173)))

(declare-fun b!3310025 () Bool)

(declare-fun b_free!87209 () Bool)

(declare-fun b_next!87913 () Bool)

(assert (=> b!3310025 (= b_free!87209 (not b_next!87913))))

(declare-fun tp!1036678 () Bool)

(declare-fun b_and!227175 () Bool)

(assert (=> b!3310025 (= tp!1036678 b_and!227175)))

(declare-fun b_free!87211 () Bool)

(declare-fun b_next!87915 () Bool)

(assert (=> b!3310025 (= b_free!87211 (not b_next!87915))))

(declare-fun tp!1036684 () Bool)

(declare-fun b_and!227177 () Bool)

(assert (=> b!3310025 (= tp!1036684 b_and!227177)))

(declare-fun bs!549297 () Bool)

(declare-fun b!3310023 () Bool)

(declare-fun b!3309986 () Bool)

(assert (= bs!549297 (and b!3310023 b!3309986)))

(declare-fun lambda!119255 () Int)

(declare-fun lambda!119254 () Int)

(assert (=> bs!549297 (not (= lambda!119255 lambda!119254))))

(declare-fun b!3310036 () Bool)

(declare-fun e!2058908 () Bool)

(assert (=> b!3310036 (= e!2058908 true)))

(declare-fun b!3310035 () Bool)

(declare-fun e!2058907 () Bool)

(assert (=> b!3310035 (= e!2058907 e!2058908)))

(declare-fun b!3310034 () Bool)

(declare-fun e!2058906 () Bool)

(assert (=> b!3310034 (= e!2058906 e!2058907)))

(assert (=> b!3310023 e!2058906))

(assert (= b!3310035 b!3310036))

(assert (= b!3310034 b!3310035))

(declare-datatypes ((C!20332 0))(
  ( (C!20333 (val!12214 Int)) )
))
(declare-datatypes ((Regex!10073 0))(
  ( (ElementMatch!10073 (c!561280 C!20332)) (Concat!15617 (regOne!20658 Regex!10073) (regTwo!20658 Regex!10073)) (EmptyExpr!10073) (Star!10073 (reg!10402 Regex!10073)) (EmptyLang!10073) (Union!10073 (regOne!20659 Regex!10073) (regTwo!20659 Regex!10073)) )
))
(declare-datatypes ((List!36706 0))(
  ( (Nil!36582) (Cons!36582 (h!42002 (_ BitVec 16)) (t!254183 List!36706)) )
))
(declare-datatypes ((TokenValue!5544 0))(
  ( (FloatLiteralValue!11088 (text!39253 List!36706)) (TokenValueExt!5543 (__x!23305 Int)) (Broken!27720 (value!171883 List!36706)) (Object!5667) (End!5544) (Def!5544) (Underscore!5544) (Match!5544) (Else!5544) (Error!5544) (Case!5544) (If!5544) (Extends!5544) (Abstract!5544) (Class!5544) (Val!5544) (DelimiterValue!11088 (del!5604 List!36706)) (KeywordValue!5550 (value!171884 List!36706)) (CommentValue!11088 (value!171885 List!36706)) (WhitespaceValue!11088 (value!171886 List!36706)) (IndentationValue!5544 (value!171887 List!36706)) (String!41053) (Int32!5544) (Broken!27721 (value!171888 List!36706)) (Boolean!5545) (Unit!51499) (OperatorValue!5547 (op!5604 List!36706)) (IdentifierValue!11088 (value!171889 List!36706)) (IdentifierValue!11089 (value!171890 List!36706)) (WhitespaceValue!11089 (value!171891 List!36706)) (True!11088) (False!11088) (Broken!27722 (value!171892 List!36706)) (Broken!27723 (value!171893 List!36706)) (True!11089) (RightBrace!5544) (RightBracket!5544) (Colon!5544) (Null!5544) (Comma!5544) (LeftBracket!5544) (False!11089) (LeftBrace!5544) (ImaginaryLiteralValue!5544 (text!39254 List!36706)) (StringLiteralValue!16632 (value!171894 List!36706)) (EOFValue!5544 (value!171895 List!36706)) (IdentValue!5544 (value!171896 List!36706)) (DelimiterValue!11089 (value!171897 List!36706)) (DedentValue!5544 (value!171898 List!36706)) (NewLineValue!5544 (value!171899 List!36706)) (IntegerValue!16632 (value!171900 (_ BitVec 32)) (text!39255 List!36706)) (IntegerValue!16633 (value!171901 Int) (text!39256 List!36706)) (Times!5544) (Or!5544) (Equal!5544) (Minus!5544) (Broken!27724 (value!171902 List!36706)) (And!5544) (Div!5544) (LessEqual!5544) (Mod!5544) (Concat!15618) (Not!5544) (Plus!5544) (SpaceValue!5544 (value!171903 List!36706)) (IntegerValue!16634 (value!171904 Int) (text!39257 List!36706)) (StringLiteralValue!16633 (text!39258 List!36706)) (FloatLiteralValue!11089 (text!39259 List!36706)) (BytesLiteralValue!5544 (value!171905 List!36706)) (CommentValue!11089 (value!171906 List!36706)) (StringLiteralValue!16634 (value!171907 List!36706)) (ErrorTokenValue!5544 (msg!5605 List!36706)) )
))
(declare-datatypes ((List!36707 0))(
  ( (Nil!36583) (Cons!36583 (h!42003 C!20332) (t!254184 List!36707)) )
))
(declare-datatypes ((IArray!22011 0))(
  ( (IArray!22012 (innerList!11063 List!36707)) )
))
(declare-datatypes ((Conc!11003 0))(
  ( (Node!11003 (left!28506 Conc!11003) (right!28836 Conc!11003) (csize!22236 Int) (cheight!11214 Int)) (Leaf!17271 (xs!14141 IArray!22011) (csize!22237 Int)) (Empty!11003) )
))
(declare-datatypes ((BalanceConc!21620 0))(
  ( (BalanceConc!21621 (c!561281 Conc!11003)) )
))
(declare-datatypes ((String!41054 0))(
  ( (String!41055 (value!171908 String)) )
))
(declare-datatypes ((TokenValueInjection!10516 0))(
  ( (TokenValueInjection!10517 (toValue!7458 Int) (toChars!7317 Int)) )
))
(declare-datatypes ((Rule!10428 0))(
  ( (Rule!10429 (regex!5314 Regex!10073) (tag!5860 String!41054) (isSeparator!5314 Bool) (transformation!5314 TokenValueInjection!10516)) )
))
(declare-datatypes ((List!36708 0))(
  ( (Nil!36584) (Cons!36584 (h!42004 Rule!10428) (t!254185 List!36708)) )
))
(declare-fun rules!2135 () List!36708)

(get-info :version)

(assert (= (and b!3310023 ((_ is Cons!36584) rules!2135)) b!3310034))

(declare-fun order!19053 () Int)

(declare-fun order!19055 () Int)

(declare-fun dynLambda!15022 (Int Int) Int)

(declare-fun dynLambda!15023 (Int Int) Int)

(assert (=> b!3310036 (< (dynLambda!15022 order!19053 (toValue!7458 (transformation!5314 (h!42004 rules!2135)))) (dynLambda!15023 order!19055 lambda!119255))))

(declare-fun order!19057 () Int)

(declare-fun dynLambda!15024 (Int Int) Int)

(assert (=> b!3310036 (< (dynLambda!15024 order!19057 (toChars!7317 (transformation!5314 (h!42004 rules!2135)))) (dynLambda!15023 order!19055 lambda!119255))))

(assert (=> b!3310023 true))

(declare-fun b!3309983 () Bool)

(declare-fun res!1342662 () Bool)

(declare-fun e!2058866 () Bool)

(assert (=> b!3309983 (=> res!1342662 e!2058866)))

(declare-datatypes ((Token!9994 0))(
  ( (Token!9995 (value!171909 TokenValue!5544) (rule!7818 Rule!10428) (size!27631 Int) (originalCharacters!6028 List!36707)) )
))
(declare-datatypes ((List!36709 0))(
  ( (Nil!36585) (Cons!36585 (h!42005 Token!9994) (t!254186 List!36709)) )
))
(declare-fun tokens!494 () List!36709)

(declare-datatypes ((LexerInterface!4903 0))(
  ( (LexerInterfaceExt!4900 (__x!23306 Int)) (Lexer!4901) )
))
(declare-fun thiss!18206 () LexerInterface!4903)

(declare-fun rulesProduceIndividualToken!2395 (LexerInterface!4903 List!36708 Token!9994) Bool)

(assert (=> b!3309983 (= res!1342662 (not (rulesProduceIndividualToken!2395 thiss!18206 rules!2135 (h!42005 tokens!494))))))

(declare-fun e!2058865 () Bool)

(assert (=> b!3309984 (= e!2058865 (and tp!1036680 tp!1036672))))

(declare-fun b!3309985 () Bool)

(declare-datatypes ((Unit!51500 0))(
  ( (Unit!51501) )
))
(declare-fun e!2058899 () Unit!51500)

(declare-fun Unit!51502 () Unit!51500)

(assert (=> b!3309985 (= e!2058899 Unit!51502)))

(declare-fun lt!1122412 () List!36707)

(declare-fun lt!1122410 () Unit!51500)

(declare-fun lt!1122422 () C!20332)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!440 (Regex!10073 List!36707 C!20332) Unit!51500)

(assert (=> b!3309985 (= lt!1122410 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!440 (regex!5314 (rule!7818 (h!42005 (t!254186 tokens!494)))) lt!1122412 lt!1122422))))

(declare-fun res!1342666 () Bool)

(declare-fun matchR!4675 (Regex!10073 List!36707) Bool)

(assert (=> b!3309985 (= res!1342666 (not (matchR!4675 (regex!5314 (rule!7818 (h!42005 (t!254186 tokens!494)))) lt!1122412)))))

(declare-fun e!2058878 () Bool)

(assert (=> b!3309985 (=> (not res!1342666) (not e!2058878))))

(assert (=> b!3309985 e!2058878))

(declare-fun res!1342684 () Bool)

(declare-fun e!2058882 () Bool)

(assert (=> b!3309986 (=> (not res!1342684) (not e!2058882))))

(declare-fun forall!7599 (List!36709 Int) Bool)

(assert (=> b!3309986 (= res!1342684 (forall!7599 tokens!494 lambda!119254))))

(declare-fun b!3309987 () Bool)

(declare-fun e!2058872 () Unit!51500)

(declare-fun Unit!51503 () Unit!51500)

(assert (=> b!3309987 (= e!2058872 Unit!51503)))

(declare-fun separatorToken!241 () Token!9994)

(declare-fun lt!1122411 () C!20332)

(declare-fun lt!1122406 () Unit!51500)

(declare-fun lt!1122393 () List!36707)

(assert (=> b!3309987 (= lt!1122406 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!440 (regex!5314 (rule!7818 separatorToken!241)) lt!1122393 lt!1122411))))

(declare-fun res!1342679 () Bool)

(assert (=> b!3309987 (= res!1342679 (not (matchR!4675 (regex!5314 (rule!7818 separatorToken!241)) lt!1122393)))))

(declare-fun e!2058876 () Bool)

(assert (=> b!3309987 (=> (not res!1342679) (not e!2058876))))

(assert (=> b!3309987 e!2058876))

(declare-fun e!2058897 () Bool)

(assert (=> b!3309988 (= e!2058897 (and tp!1036674 tp!1036679))))

(declare-fun e!2058886 () Bool)

(declare-fun b!3309989 () Bool)

(declare-fun tp!1036681 () Bool)

(declare-fun inv!49554 (String!41054) Bool)

(declare-fun inv!49557 (TokenValueInjection!10516) Bool)

(assert (=> b!3309989 (= e!2058886 (and tp!1036681 (inv!49554 (tag!5860 (rule!7818 separatorToken!241))) (inv!49557 (transformation!5314 (rule!7818 separatorToken!241))) e!2058865))))

(declare-fun e!2058887 () Bool)

(declare-fun b!3309990 () Bool)

(declare-fun tp!1036673 () Bool)

(assert (=> b!3309990 (= e!2058887 (and tp!1036673 (inv!49554 (tag!5860 (rule!7818 (h!42005 tokens!494)))) (inv!49557 (transformation!5314 (rule!7818 (h!42005 tokens!494)))) e!2058897))))

(declare-fun b!3309991 () Bool)

(declare-fun e!2058894 () Bool)

(declare-fun e!2058868 () Bool)

(assert (=> b!3309991 (= e!2058894 e!2058868)))

(declare-fun res!1342669 () Bool)

(assert (=> b!3309991 (=> res!1342669 e!2058868)))

(declare-fun lt!1122405 () List!36707)

(declare-fun lt!1122400 () List!36707)

(assert (=> b!3309991 (= res!1342669 (not (= lt!1122405 lt!1122400)))))

(declare-fun lt!1122395 () List!36707)

(declare-fun lt!1122416 () List!36707)

(declare-fun ++!8867 (List!36707 List!36707) List!36707)

(assert (=> b!3309991 (= lt!1122400 (++!8867 (++!8867 lt!1122395 lt!1122393) lt!1122416))))

(declare-fun b!3309992 () Bool)

(declare-fun e!2058879 () Bool)

(declare-fun e!2058881 () Bool)

(assert (=> b!3309992 (= e!2058879 e!2058881)))

(declare-fun res!1342661 () Bool)

(assert (=> b!3309992 (=> (not res!1342661) (not e!2058881))))

(declare-fun lt!1122415 () Rule!10428)

(assert (=> b!3309992 (= res!1342661 (matchR!4675 (regex!5314 lt!1122415) lt!1122393))))

(declare-datatypes ((Option!7287 0))(
  ( (None!7286) (Some!7286 (v!36082 Rule!10428)) )
))
(declare-fun lt!1122435 () Option!7287)

(declare-fun get!11656 (Option!7287) Rule!10428)

(assert (=> b!3309992 (= lt!1122415 (get!11656 lt!1122435))))

(declare-fun b!3309993 () Bool)

(declare-fun Unit!51504 () Unit!51500)

(assert (=> b!3309993 (= e!2058872 Unit!51504)))

(declare-fun tp!1036675 () Bool)

(declare-fun b!3309994 () Bool)

(declare-fun e!2058875 () Bool)

(declare-fun e!2058895 () Bool)

(declare-fun inv!49558 (Token!9994) Bool)

(assert (=> b!3309994 (= e!2058895 (and (inv!49558 (h!42005 tokens!494)) e!2058875 tp!1036675))))

(declare-fun b!3309995 () Bool)

(declare-fun res!1342671 () Bool)

(declare-fun e!2058871 () Bool)

(assert (=> b!3309995 (=> (not res!1342671) (not e!2058871))))

(declare-datatypes ((IArray!22013 0))(
  ( (IArray!22014 (innerList!11064 List!36709)) )
))
(declare-datatypes ((Conc!11004 0))(
  ( (Node!11004 (left!28507 Conc!11004) (right!28837 Conc!11004) (csize!22238 Int) (cheight!11215 Int)) (Leaf!17272 (xs!14142 IArray!22013) (csize!22239 Int)) (Empty!11004) )
))
(declare-datatypes ((BalanceConc!21622 0))(
  ( (BalanceConc!21623 (c!561282 Conc!11004)) )
))
(declare-datatypes ((tuple2!36060 0))(
  ( (tuple2!36061 (_1!21164 BalanceConc!21622) (_2!21164 BalanceConc!21620)) )
))
(declare-fun lt!1122427 () tuple2!36060)

(declare-fun apply!8414 (BalanceConc!21622 Int) Token!9994)

(assert (=> b!3309995 (= res!1342671 (= (apply!8414 (_1!21164 lt!1122427) 0) separatorToken!241))))

(declare-fun b!3309996 () Bool)

(declare-fun res!1342670 () Bool)

(assert (=> b!3309996 (=> (not res!1342670) (not e!2058882))))

(declare-fun rulesProduceEachTokenIndividually!1354 (LexerInterface!4903 List!36708 BalanceConc!21622) Bool)

(declare-fun seqFromList!3683 (List!36709) BalanceConc!21622)

(assert (=> b!3309996 (= res!1342670 (rulesProduceEachTokenIndividually!1354 thiss!18206 rules!2135 (seqFromList!3683 tokens!494)))))

(declare-fun b!3309997 () Bool)

(declare-fun e!2058891 () Bool)

(declare-fun lt!1122417 () tuple2!36060)

(declare-fun isEmpty!20719 (BalanceConc!21620) Bool)

(assert (=> b!3309997 (= e!2058891 (not (isEmpty!20719 (_2!21164 lt!1122417))))))

(declare-fun b!3309998 () Bool)

(declare-fun e!2058893 () Bool)

(assert (=> b!3309998 (= e!2058866 e!2058893)))

(declare-fun res!1342675 () Bool)

(assert (=> b!3309998 (=> res!1342675 e!2058893)))

(declare-fun lt!1122439 () BalanceConc!21620)

(declare-fun isEmpty!20720 (BalanceConc!21622) Bool)

(declare-fun lex!2229 (LexerInterface!4903 List!36708 BalanceConc!21620) tuple2!36060)

(assert (=> b!3309998 (= res!1342675 (isEmpty!20720 (_1!21164 (lex!2229 thiss!18206 rules!2135 lt!1122439))))))

(declare-fun seqFromList!3684 (List!36707) BalanceConc!21620)

(assert (=> b!3309998 (= lt!1122439 (seqFromList!3684 lt!1122395))))

(declare-fun b!3309999 () Bool)

(declare-fun e!2058889 () Bool)

(declare-fun lt!1122418 () Rule!10428)

(assert (=> b!3309999 (= e!2058889 (= (rule!7818 (h!42005 (t!254186 tokens!494))) lt!1122418))))

(declare-fun b!3310000 () Bool)

(declare-fun tp!1036677 () Bool)

(declare-fun inv!21 (TokenValue!5544) Bool)

(assert (=> b!3310000 (= e!2058875 (and (inv!21 (value!171909 (h!42005 tokens!494))) e!2058887 tp!1036677))))

(declare-fun b!3310001 () Bool)

(assert (=> b!3310001 (= e!2058881 (= (rule!7818 separatorToken!241) lt!1122415))))

(declare-fun b!3310002 () Bool)

(declare-fun e!2058867 () Bool)

(declare-fun lt!1122398 () Rule!10428)

(assert (=> b!3310002 (= e!2058867 (= (rule!7818 (h!42005 tokens!494)) lt!1122398))))

(declare-fun res!1342674 () Bool)

(assert (=> start!308606 (=> (not res!1342674) (not e!2058882))))

(assert (=> start!308606 (= res!1342674 ((_ is Lexer!4901) thiss!18206))))

(assert (=> start!308606 e!2058882))

(assert (=> start!308606 true))

(declare-fun e!2058892 () Bool)

(assert (=> start!308606 e!2058892))

(assert (=> start!308606 e!2058895))

(declare-fun e!2058877 () Bool)

(assert (=> start!308606 (and (inv!49558 separatorToken!241) e!2058877)))

(declare-fun b!3310003 () Bool)

(declare-fun e!2058896 () Bool)

(assert (=> b!3310003 (= e!2058893 e!2058896)))

(declare-fun res!1342686 () Bool)

(assert (=> b!3310003 (=> res!1342686 e!2058896)))

(assert (=> b!3310003 (= res!1342686 (or (isSeparator!5314 (rule!7818 (h!42005 tokens!494))) (isSeparator!5314 (rule!7818 (h!42005 (t!254186 tokens!494))))))))

(declare-fun lt!1122428 () Unit!51500)

(declare-fun forallContained!1265 (List!36709 Int Token!9994) Unit!51500)

(assert (=> b!3310003 (= lt!1122428 (forallContained!1265 tokens!494 lambda!119254 (h!42005 (t!254186 tokens!494))))))

(declare-fun lt!1122431 () Unit!51500)

(assert (=> b!3310003 (= lt!1122431 (forallContained!1265 tokens!494 lambda!119254 (h!42005 tokens!494)))))

(declare-fun b!3310004 () Bool)

(declare-fun res!1342673 () Bool)

(assert (=> b!3310004 (=> (not res!1342673) (not e!2058882))))

(assert (=> b!3310004 (= res!1342673 (and (not ((_ is Nil!36585) tokens!494)) (not ((_ is Nil!36585) (t!254186 tokens!494)))))))

(declare-fun b!3310005 () Bool)

(declare-fun res!1342667 () Bool)

(assert (=> b!3310005 (=> (not res!1342667) (not e!2058882))))

(declare-fun isEmpty!20721 (List!36708) Bool)

(assert (=> b!3310005 (= res!1342667 (not (isEmpty!20721 rules!2135)))))

(declare-fun b!3310006 () Bool)

(assert (=> b!3310006 (= e!2058876 false)))

(declare-fun b!3310007 () Bool)

(declare-fun res!1342687 () Bool)

(assert (=> b!3310007 (=> (not res!1342687) (not e!2058882))))

(declare-fun sepAndNonSepRulesDisjointChars!1508 (List!36708 List!36708) Bool)

(assert (=> b!3310007 (= res!1342687 (sepAndNonSepRulesDisjointChars!1508 rules!2135 rules!2135))))

(declare-fun b!3310008 () Bool)

(declare-fun res!1342677 () Bool)

(assert (=> b!3310008 (=> (not res!1342677) (not e!2058882))))

(declare-fun rulesInvariant!4300 (LexerInterface!4903 List!36708) Bool)

(assert (=> b!3310008 (= res!1342677 (rulesInvariant!4300 thiss!18206 rules!2135))))

(declare-fun b!3310009 () Bool)

(declare-fun Unit!51505 () Unit!51500)

(assert (=> b!3310009 (= e!2058899 Unit!51505)))

(declare-fun b!3310010 () Bool)

(declare-fun res!1342665 () Bool)

(assert (=> b!3310010 (=> (not res!1342665) (not e!2058882))))

(assert (=> b!3310010 (= res!1342665 (rulesProduceIndividualToken!2395 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3310011 () Bool)

(declare-fun res!1342678 () Bool)

(assert (=> b!3310011 (=> (not res!1342678) (not e!2058882))))

(assert (=> b!3310011 (= res!1342678 (isSeparator!5314 (rule!7818 separatorToken!241)))))

(declare-fun e!2058884 () Bool)

(declare-fun b!3310012 () Bool)

(declare-fun e!2058880 () Bool)

(declare-fun tp!1036676 () Bool)

(assert (=> b!3310012 (= e!2058884 (and tp!1036676 (inv!49554 (tag!5860 (h!42004 rules!2135))) (inv!49557 (transformation!5314 (h!42004 rules!2135))) e!2058880))))

(declare-fun b!3310013 () Bool)

(declare-fun res!1342676 () Bool)

(assert (=> b!3310013 (=> res!1342676 e!2058891)))

(assert (=> b!3310013 (= res!1342676 (not (= (apply!8414 (_1!21164 lt!1122417) 0) (h!42005 (t!254186 tokens!494)))))))

(declare-fun tp!1036682 () Bool)

(declare-fun b!3310014 () Bool)

(assert (=> b!3310014 (= e!2058877 (and (inv!21 (value!171909 separatorToken!241)) e!2058886 tp!1036682))))

(declare-fun b!3310015 () Bool)

(declare-fun e!2058870 () Bool)

(assert (=> b!3310015 (= e!2058870 e!2058889)))

(declare-fun res!1342668 () Bool)

(assert (=> b!3310015 (=> (not res!1342668) (not e!2058889))))

(assert (=> b!3310015 (= res!1342668 (matchR!4675 (regex!5314 lt!1122418) lt!1122412))))

(declare-fun lt!1122413 () Option!7287)

(assert (=> b!3310015 (= lt!1122418 (get!11656 lt!1122413))))

(declare-fun b!3310016 () Bool)

(declare-fun e!2058883 () Bool)

(assert (=> b!3310016 (= e!2058883 e!2058866)))

(declare-fun res!1342672 () Bool)

(assert (=> b!3310016 (=> res!1342672 e!2058866)))

(declare-fun lt!1122392 () List!36707)

(declare-fun lt!1122401 () List!36707)

(assert (=> b!3310016 (= res!1342672 (or (not (= lt!1122401 lt!1122395)) (not (= lt!1122392 lt!1122395))))))

(declare-fun list!13134 (BalanceConc!21620) List!36707)

(declare-fun charsOf!3330 (Token!9994) BalanceConc!21620)

(assert (=> b!3310016 (= lt!1122395 (list!13134 (charsOf!3330 (h!42005 tokens!494))))))

(declare-fun b!3310017 () Bool)

(declare-fun e!2058869 () Bool)

(assert (=> b!3310017 (= e!2058868 e!2058869)))

(declare-fun res!1342681 () Bool)

(assert (=> b!3310017 (=> res!1342681 e!2058869)))

(declare-fun lt!1122432 () List!36707)

(assert (=> b!3310017 (= res!1342681 (not (= lt!1122405 lt!1122432)))))

(assert (=> b!3310017 (= lt!1122400 lt!1122432)))

(declare-fun lt!1122430 () List!36707)

(assert (=> b!3310017 (= lt!1122432 (++!8867 lt!1122395 lt!1122430))))

(declare-fun lt!1122419 () Unit!51500)

(declare-fun lemmaConcatAssociativity!1832 (List!36707 List!36707 List!36707) Unit!51500)

(assert (=> b!3310017 (= lt!1122419 (lemmaConcatAssociativity!1832 lt!1122395 lt!1122393 lt!1122416))))

(declare-fun b!3310018 () Bool)

(declare-fun tp!1036683 () Bool)

(assert (=> b!3310018 (= e!2058892 (and e!2058884 tp!1036683))))

(declare-fun b!3310019 () Bool)

(declare-fun e!2058873 () Bool)

(assert (=> b!3310019 (= e!2058873 e!2058867)))

(declare-fun res!1342663 () Bool)

(assert (=> b!3310019 (=> (not res!1342663) (not e!2058867))))

(assert (=> b!3310019 (= res!1342663 (matchR!4675 (regex!5314 lt!1122398) lt!1122395))))

(declare-fun lt!1122433 () Option!7287)

(assert (=> b!3310019 (= lt!1122398 (get!11656 lt!1122433))))

(declare-fun b!3310020 () Bool)

(assert (=> b!3310020 (= e!2058896 e!2058894)))

(declare-fun res!1342664 () Bool)

(assert (=> b!3310020 (=> res!1342664 e!2058894)))

(declare-fun printWithSeparatorTokenList!214 (LexerInterface!4903 List!36709 Token!9994) List!36707)

(assert (=> b!3310020 (= res!1342664 (not (= lt!1122416 (++!8867 (++!8867 lt!1122412 lt!1122393) (printWithSeparatorTokenList!214 thiss!18206 (t!254186 (t!254186 tokens!494)) separatorToken!241)))))))

(assert (=> b!3310020 (= lt!1122412 (list!13134 (charsOf!3330 (h!42005 (t!254186 tokens!494)))))))

(assert (=> b!3310020 (= lt!1122430 (++!8867 lt!1122393 lt!1122416))))

(assert (=> b!3310020 (= lt!1122393 (list!13134 (charsOf!3330 separatorToken!241)))))

(assert (=> b!3310020 (= lt!1122416 (printWithSeparatorTokenList!214 thiss!18206 (t!254186 tokens!494) separatorToken!241))))

(assert (=> b!3310020 (= lt!1122405 (printWithSeparatorTokenList!214 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3310021 () Bool)

(assert (=> b!3310021 (= e!2058882 (not e!2058883))))

(declare-fun res!1342685 () Bool)

(assert (=> b!3310021 (=> res!1342685 e!2058883)))

(assert (=> b!3310021 (= res!1342685 (not (= lt!1122392 lt!1122401)))))

(declare-fun printList!1453 (LexerInterface!4903 List!36709) List!36707)

(assert (=> b!3310021 (= lt!1122401 (printList!1453 thiss!18206 (Cons!36585 (h!42005 tokens!494) Nil!36585)))))

(declare-fun lt!1122424 () BalanceConc!21620)

(assert (=> b!3310021 (= lt!1122392 (list!13134 lt!1122424))))

(declare-fun lt!1122421 () BalanceConc!21622)

(declare-fun printTailRec!1400 (LexerInterface!4903 BalanceConc!21622 Int BalanceConc!21620) BalanceConc!21620)

(assert (=> b!3310021 (= lt!1122424 (printTailRec!1400 thiss!18206 lt!1122421 0 (BalanceConc!21621 Empty!11003)))))

(declare-fun print!1968 (LexerInterface!4903 BalanceConc!21622) BalanceConc!21620)

(assert (=> b!3310021 (= lt!1122424 (print!1968 thiss!18206 lt!1122421))))

(declare-fun singletonSeq!2410 (Token!9994) BalanceConc!21622)

(assert (=> b!3310021 (= lt!1122421 (singletonSeq!2410 (h!42005 tokens!494)))))

(declare-fun b!3310022 () Bool)

(assert (=> b!3310022 (= e!2058871 (isEmpty!20719 (_2!21164 lt!1122427)))))

(declare-fun lt!1122397 () List!36709)

(declare-fun filter!530 (List!36709 Int) List!36709)

(assert (=> b!3310023 (= e!2058869 (= (filter!530 lt!1122397 lambda!119254) (t!254186 tokens!494)))))

(assert (=> b!3310023 (= (filter!530 lt!1122397 lambda!119254) (t!254186 tokens!494))))

(declare-fun list!13135 (BalanceConc!21622) List!36709)

(declare-fun printWithSeparatorToken!96 (LexerInterface!4903 BalanceConc!21622 Token!9994) BalanceConc!21620)

(assert (=> b!3310023 (= lt!1122397 (list!13135 (_1!21164 (lex!2229 thiss!18206 rules!2135 (printWithSeparatorToken!96 thiss!18206 (seqFromList!3683 (t!254186 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1122436 () Unit!51500)

(declare-fun theoremInvertFromTokensSepTokenBetweenEach!14 (LexerInterface!4903 List!36708 List!36709 Token!9994) Unit!51500)

(assert (=> b!3310023 (= lt!1122436 (theoremInvertFromTokensSepTokenBetweenEach!14 thiss!18206 rules!2135 (t!254186 tokens!494) separatorToken!241))))

(declare-datatypes ((tuple2!36062 0))(
  ( (tuple2!36063 (_1!21165 Token!9994) (_2!21165 List!36707)) )
))
(declare-datatypes ((Option!7288 0))(
  ( (None!7287) (Some!7287 (v!36083 tuple2!36062)) )
))
(declare-fun maxPrefix!2511 (LexerInterface!4903 List!36708 List!36707) Option!7288)

(assert (=> b!3310023 (= (maxPrefix!2511 thiss!18206 rules!2135 lt!1122430) (Some!7287 (tuple2!36063 separatorToken!241 lt!1122416)))))

(declare-fun lt!1122402 () Unit!51500)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!198 (LexerInterface!4903 List!36708 Token!9994 Rule!10428 List!36707 Rule!10428) Unit!51500)

(assert (=> b!3310023 (= lt!1122402 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!198 thiss!18206 rules!2135 separatorToken!241 (rule!7818 separatorToken!241) lt!1122416 (rule!7818 (h!42005 (t!254186 tokens!494)))))))

(declare-fun lt!1122409 () List!36707)

(declare-fun contains!6611 (List!36707 C!20332) Bool)

(assert (=> b!3310023 (not (contains!6611 lt!1122409 lt!1122422))))

(declare-fun lt!1122408 () Unit!51500)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!162 (LexerInterface!4903 List!36708 List!36708 Rule!10428 Rule!10428 C!20332) Unit!51500)

(assert (=> b!3310023 (= lt!1122408 (lemmaSepRuleNotContainsCharContainedInANonSepRule!162 thiss!18206 rules!2135 rules!2135 (rule!7818 (h!42005 (t!254186 tokens!494))) (rule!7818 separatorToken!241) lt!1122422))))

(declare-fun lt!1122426 () Unit!51500)

(assert (=> b!3310023 (= lt!1122426 e!2058899)))

(declare-fun c!561279 () Bool)

(declare-fun usedCharacters!594 (Regex!10073) List!36707)

(assert (=> b!3310023 (= c!561279 (not (contains!6611 (usedCharacters!594 (regex!5314 (rule!7818 (h!42005 (t!254186 tokens!494))))) lt!1122422)))))

(declare-fun head!7141 (List!36707) C!20332)

(assert (=> b!3310023 (= lt!1122422 (head!7141 lt!1122412))))

(declare-fun maxPrefixOneRule!1646 (LexerInterface!4903 Rule!10428 List!36707) Option!7288)

(declare-fun apply!8415 (TokenValueInjection!10516 BalanceConc!21620) TokenValue!5544)

(declare-fun size!27632 (List!36707) Int)

(assert (=> b!3310023 (= (maxPrefixOneRule!1646 thiss!18206 (rule!7818 (h!42005 (t!254186 tokens!494))) lt!1122412) (Some!7287 (tuple2!36063 (Token!9995 (apply!8415 (transformation!5314 (rule!7818 (h!42005 (t!254186 tokens!494)))) (seqFromList!3684 lt!1122412)) (rule!7818 (h!42005 (t!254186 tokens!494))) (size!27632 lt!1122412) lt!1122412) Nil!36583)))))

(declare-fun lt!1122440 () Unit!51500)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!757 (LexerInterface!4903 List!36708 List!36707 List!36707 List!36707 Rule!10428) Unit!51500)

(assert (=> b!3310023 (= lt!1122440 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!757 thiss!18206 rules!2135 lt!1122412 lt!1122412 Nil!36583 (rule!7818 (h!42005 (t!254186 tokens!494)))))))

(assert (=> b!3310023 e!2058870))

(declare-fun res!1342683 () Bool)

(assert (=> b!3310023 (=> (not res!1342683) (not e!2058870))))

(declare-fun isDefined!5642 (Option!7287) Bool)

(assert (=> b!3310023 (= res!1342683 (isDefined!5642 lt!1122413))))

(declare-fun getRuleFromTag!985 (LexerInterface!4903 List!36708 String!41054) Option!7287)

(assert (=> b!3310023 (= lt!1122413 (getRuleFromTag!985 thiss!18206 rules!2135 (tag!5860 (rule!7818 (h!42005 (t!254186 tokens!494))))))))

(declare-fun lt!1122396 () Unit!51500)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!985 (LexerInterface!4903 List!36708 List!36707 Token!9994) Unit!51500)

(assert (=> b!3310023 (= lt!1122396 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!985 thiss!18206 rules!2135 lt!1122412 (h!42005 (t!254186 tokens!494))))))

(declare-fun lt!1122423 () Bool)

(assert (=> b!3310023 lt!1122423))

(declare-fun lt!1122407 () Unit!51500)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!908 (LexerInterface!4903 List!36708 List!36709 Token!9994) Unit!51500)

(assert (=> b!3310023 (= lt!1122407 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!908 thiss!18206 rules!2135 tokens!494 (h!42005 (t!254186 tokens!494))))))

(assert (=> b!3310023 (= (maxPrefix!2511 thiss!18206 rules!2135 lt!1122432) (Some!7287 (tuple2!36063 (h!42005 tokens!494) lt!1122430)))))

(declare-fun lt!1122438 () Unit!51500)

(assert (=> b!3310023 (= lt!1122438 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!198 thiss!18206 rules!2135 (h!42005 tokens!494) (rule!7818 (h!42005 tokens!494)) lt!1122430 (rule!7818 separatorToken!241)))))

(assert (=> b!3310023 (not (contains!6611 (usedCharacters!594 (regex!5314 (rule!7818 (h!42005 tokens!494)))) lt!1122411))))

(declare-fun lt!1122437 () Unit!51500)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!198 (LexerInterface!4903 List!36708 List!36708 Rule!10428 Rule!10428 C!20332) Unit!51500)

(assert (=> b!3310023 (= lt!1122437 (lemmaNonSepRuleNotContainsCharContainedInASepRule!198 thiss!18206 rules!2135 rules!2135 (rule!7818 (h!42005 tokens!494)) (rule!7818 separatorToken!241) lt!1122411))))

(declare-fun lt!1122441 () Unit!51500)

(assert (=> b!3310023 (= lt!1122441 (forallContained!1265 tokens!494 lambda!119255 (h!42005 (t!254186 tokens!494))))))

(declare-fun lt!1122429 () Bool)

(assert (=> b!3310023 (= lt!1122423 (not lt!1122429))))

(assert (=> b!3310023 (= lt!1122423 (rulesProduceIndividualToken!2395 thiss!18206 rules!2135 (h!42005 (t!254186 tokens!494))))))

(assert (=> b!3310023 (= lt!1122429 e!2058891)))

(declare-fun res!1342660 () Bool)

(assert (=> b!3310023 (=> res!1342660 e!2058891)))

(declare-fun size!27633 (BalanceConc!21622) Int)

(assert (=> b!3310023 (= res!1342660 (not (= (size!27633 (_1!21164 lt!1122417)) 1)))))

(declare-fun lt!1122414 () BalanceConc!21620)

(assert (=> b!3310023 (= lt!1122417 (lex!2229 thiss!18206 rules!2135 lt!1122414))))

(declare-fun lt!1122434 () BalanceConc!21622)

(assert (=> b!3310023 (= lt!1122414 (printTailRec!1400 thiss!18206 lt!1122434 0 (BalanceConc!21621 Empty!11003)))))

(assert (=> b!3310023 (= lt!1122414 (print!1968 thiss!18206 lt!1122434))))

(assert (=> b!3310023 (= lt!1122434 (singletonSeq!2410 (h!42005 (t!254186 tokens!494))))))

(assert (=> b!3310023 e!2058871))

(declare-fun res!1342682 () Bool)

(assert (=> b!3310023 (=> (not res!1342682) (not e!2058871))))

(assert (=> b!3310023 (= res!1342682 (= (size!27633 (_1!21164 lt!1122427)) 1))))

(declare-fun lt!1122442 () BalanceConc!21620)

(assert (=> b!3310023 (= lt!1122427 (lex!2229 thiss!18206 rules!2135 lt!1122442))))

(declare-fun lt!1122403 () BalanceConc!21622)

(assert (=> b!3310023 (= lt!1122442 (printTailRec!1400 thiss!18206 lt!1122403 0 (BalanceConc!21621 Empty!11003)))))

(assert (=> b!3310023 (= lt!1122442 (print!1968 thiss!18206 lt!1122403))))

(assert (=> b!3310023 (= lt!1122403 (singletonSeq!2410 separatorToken!241))))

(declare-fun lt!1122404 () Unit!51500)

(assert (=> b!3310023 (= lt!1122404 e!2058872)))

(declare-fun c!561278 () Bool)

(assert (=> b!3310023 (= c!561278 (not (contains!6611 lt!1122409 lt!1122411)))))

(assert (=> b!3310023 (= lt!1122411 (head!7141 lt!1122393))))

(assert (=> b!3310023 (= lt!1122409 (usedCharacters!594 (regex!5314 (rule!7818 separatorToken!241))))))

(assert (=> b!3310023 e!2058879))

(declare-fun res!1342680 () Bool)

(assert (=> b!3310023 (=> (not res!1342680) (not e!2058879))))

(assert (=> b!3310023 (= res!1342680 (isDefined!5642 lt!1122435))))

(assert (=> b!3310023 (= lt!1122435 (getRuleFromTag!985 thiss!18206 rules!2135 (tag!5860 (rule!7818 separatorToken!241))))))

(declare-fun lt!1122420 () Unit!51500)

(assert (=> b!3310023 (= lt!1122420 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!985 thiss!18206 rules!2135 lt!1122393 separatorToken!241))))

(assert (=> b!3310023 (= (maxPrefixOneRule!1646 thiss!18206 (rule!7818 (h!42005 tokens!494)) lt!1122395) (Some!7287 (tuple2!36063 (Token!9995 (apply!8415 (transformation!5314 (rule!7818 (h!42005 tokens!494))) lt!1122439) (rule!7818 (h!42005 tokens!494)) (size!27632 lt!1122395) lt!1122395) Nil!36583)))))

(declare-fun lt!1122399 () Unit!51500)

(assert (=> b!3310023 (= lt!1122399 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!757 thiss!18206 rules!2135 lt!1122395 lt!1122395 Nil!36583 (rule!7818 (h!42005 tokens!494))))))

(assert (=> b!3310023 e!2058873))

(declare-fun res!1342659 () Bool)

(assert (=> b!3310023 (=> (not res!1342659) (not e!2058873))))

(assert (=> b!3310023 (= res!1342659 (isDefined!5642 lt!1122433))))

(assert (=> b!3310023 (= lt!1122433 (getRuleFromTag!985 thiss!18206 rules!2135 (tag!5860 (rule!7818 (h!42005 tokens!494)))))))

(declare-fun lt!1122394 () Unit!51500)

(assert (=> b!3310023 (= lt!1122394 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!985 thiss!18206 rules!2135 lt!1122395 (h!42005 tokens!494)))))

(declare-fun lt!1122425 () Unit!51500)

(assert (=> b!3310023 (= lt!1122425 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!908 thiss!18206 rules!2135 tokens!494 (h!42005 tokens!494)))))

(declare-fun b!3310024 () Bool)

(assert (=> b!3310024 (= e!2058878 false)))

(assert (=> b!3310025 (= e!2058880 (and tp!1036678 tp!1036684))))

(assert (= (and start!308606 res!1342674) b!3310005))

(assert (= (and b!3310005 res!1342667) b!3310008))

(assert (= (and b!3310008 res!1342677) b!3309996))

(assert (= (and b!3309996 res!1342670) b!3310010))

(assert (= (and b!3310010 res!1342665) b!3310011))

(assert (= (and b!3310011 res!1342678) b!3309986))

(assert (= (and b!3309986 res!1342684) b!3310007))

(assert (= (and b!3310007 res!1342687) b!3310004))

(assert (= (and b!3310004 res!1342673) b!3310021))

(assert (= (and b!3310021 (not res!1342685)) b!3310016))

(assert (= (and b!3310016 (not res!1342672)) b!3309983))

(assert (= (and b!3309983 (not res!1342662)) b!3309998))

(assert (= (and b!3309998 (not res!1342675)) b!3310003))

(assert (= (and b!3310003 (not res!1342686)) b!3310020))

(assert (= (and b!3310020 (not res!1342664)) b!3309991))

(assert (= (and b!3309991 (not res!1342669)) b!3310017))

(assert (= (and b!3310017 (not res!1342681)) b!3310023))

(assert (= (and b!3310023 res!1342659) b!3310019))

(assert (= (and b!3310019 res!1342663) b!3310002))

(assert (= (and b!3310023 res!1342680) b!3309992))

(assert (= (and b!3309992 res!1342661) b!3310001))

(assert (= (and b!3310023 c!561278) b!3309987))

(assert (= (and b!3310023 (not c!561278)) b!3309993))

(assert (= (and b!3309987 res!1342679) b!3310006))

(assert (= (and b!3310023 res!1342682) b!3309995))

(assert (= (and b!3309995 res!1342671) b!3310022))

(assert (= (and b!3310023 (not res!1342660)) b!3310013))

(assert (= (and b!3310013 (not res!1342676)) b!3309997))

(assert (= (and b!3310023 res!1342683) b!3310015))

(assert (= (and b!3310015 res!1342668) b!3309999))

(assert (= (and b!3310023 c!561279) b!3309985))

(assert (= (and b!3310023 (not c!561279)) b!3310009))

(assert (= (and b!3309985 res!1342666) b!3310024))

(assert (= b!3310012 b!3310025))

(assert (= b!3310018 b!3310012))

(assert (= (and start!308606 ((_ is Cons!36584) rules!2135)) b!3310018))

(assert (= b!3309990 b!3309988))

(assert (= b!3310000 b!3309990))

(assert (= b!3309994 b!3310000))

(assert (= (and start!308606 ((_ is Cons!36585) tokens!494)) b!3309994))

(assert (= b!3309989 b!3309984))

(assert (= b!3310014 b!3309989))

(assert (= start!308606 b!3310014))

(declare-fun m!3637413 () Bool)

(assert (=> b!3310014 m!3637413))

(declare-fun m!3637415 () Bool)

(assert (=> b!3310017 m!3637415))

(declare-fun m!3637417 () Bool)

(assert (=> b!3310017 m!3637417))

(declare-fun m!3637419 () Bool)

(assert (=> b!3309992 m!3637419))

(declare-fun m!3637421 () Bool)

(assert (=> b!3309992 m!3637421))

(declare-fun m!3637423 () Bool)

(assert (=> b!3309987 m!3637423))

(declare-fun m!3637425 () Bool)

(assert (=> b!3309987 m!3637425))

(declare-fun m!3637427 () Bool)

(assert (=> b!3309998 m!3637427))

(declare-fun m!3637429 () Bool)

(assert (=> b!3309998 m!3637429))

(declare-fun m!3637431 () Bool)

(assert (=> b!3309998 m!3637431))

(declare-fun m!3637433 () Bool)

(assert (=> b!3310021 m!3637433))

(declare-fun m!3637435 () Bool)

(assert (=> b!3310021 m!3637435))

(declare-fun m!3637437 () Bool)

(assert (=> b!3310021 m!3637437))

(declare-fun m!3637439 () Bool)

(assert (=> b!3310021 m!3637439))

(declare-fun m!3637441 () Bool)

(assert (=> b!3310021 m!3637441))

(declare-fun m!3637443 () Bool)

(assert (=> b!3310023 m!3637443))

(declare-fun m!3637445 () Bool)

(assert (=> b!3310023 m!3637445))

(declare-fun m!3637447 () Bool)

(assert (=> b!3310023 m!3637447))

(declare-fun m!3637449 () Bool)

(assert (=> b!3310023 m!3637449))

(declare-fun m!3637451 () Bool)

(assert (=> b!3310023 m!3637451))

(declare-fun m!3637453 () Bool)

(assert (=> b!3310023 m!3637453))

(declare-fun m!3637455 () Bool)

(assert (=> b!3310023 m!3637455))

(declare-fun m!3637457 () Bool)

(assert (=> b!3310023 m!3637457))

(declare-fun m!3637459 () Bool)

(assert (=> b!3310023 m!3637459))

(declare-fun m!3637461 () Bool)

(assert (=> b!3310023 m!3637461))

(declare-fun m!3637463 () Bool)

(assert (=> b!3310023 m!3637463))

(declare-fun m!3637465 () Bool)

(assert (=> b!3310023 m!3637465))

(declare-fun m!3637467 () Bool)

(assert (=> b!3310023 m!3637467))

(declare-fun m!3637469 () Bool)

(assert (=> b!3310023 m!3637469))

(declare-fun m!3637471 () Bool)

(assert (=> b!3310023 m!3637471))

(declare-fun m!3637473 () Bool)

(assert (=> b!3310023 m!3637473))

(declare-fun m!3637475 () Bool)

(assert (=> b!3310023 m!3637475))

(declare-fun m!3637477 () Bool)

(assert (=> b!3310023 m!3637477))

(declare-fun m!3637479 () Bool)

(assert (=> b!3310023 m!3637479))

(declare-fun m!3637481 () Bool)

(assert (=> b!3310023 m!3637481))

(declare-fun m!3637483 () Bool)

(assert (=> b!3310023 m!3637483))

(declare-fun m!3637485 () Bool)

(assert (=> b!3310023 m!3637485))

(declare-fun m!3637487 () Bool)

(assert (=> b!3310023 m!3637487))

(declare-fun m!3637489 () Bool)

(assert (=> b!3310023 m!3637489))

(declare-fun m!3637491 () Bool)

(assert (=> b!3310023 m!3637491))

(declare-fun m!3637493 () Bool)

(assert (=> b!3310023 m!3637493))

(declare-fun m!3637495 () Bool)

(assert (=> b!3310023 m!3637495))

(declare-fun m!3637497 () Bool)

(assert (=> b!3310023 m!3637497))

(declare-fun m!3637499 () Bool)

(assert (=> b!3310023 m!3637499))

(declare-fun m!3637501 () Bool)

(assert (=> b!3310023 m!3637501))

(declare-fun m!3637503 () Bool)

(assert (=> b!3310023 m!3637503))

(declare-fun m!3637505 () Bool)

(assert (=> b!3310023 m!3637505))

(declare-fun m!3637507 () Bool)

(assert (=> b!3310023 m!3637507))

(assert (=> b!3310023 m!3637483))

(declare-fun m!3637509 () Bool)

(assert (=> b!3310023 m!3637509))

(assert (=> b!3310023 m!3637463))

(assert (=> b!3310023 m!3637475))

(declare-fun m!3637511 () Bool)

(assert (=> b!3310023 m!3637511))

(declare-fun m!3637513 () Bool)

(assert (=> b!3310023 m!3637513))

(declare-fun m!3637515 () Bool)

(assert (=> b!3310023 m!3637515))

(declare-fun m!3637517 () Bool)

(assert (=> b!3310023 m!3637517))

(declare-fun m!3637519 () Bool)

(assert (=> b!3310023 m!3637519))

(declare-fun m!3637521 () Bool)

(assert (=> b!3310023 m!3637521))

(declare-fun m!3637523 () Bool)

(assert (=> b!3310023 m!3637523))

(declare-fun m!3637525 () Bool)

(assert (=> b!3310023 m!3637525))

(declare-fun m!3637527 () Bool)

(assert (=> b!3310023 m!3637527))

(assert (=> b!3310023 m!3637487))

(declare-fun m!3637529 () Bool)

(assert (=> b!3310023 m!3637529))

(declare-fun m!3637531 () Bool)

(assert (=> b!3310023 m!3637531))

(declare-fun m!3637533 () Bool)

(assert (=> b!3310023 m!3637533))

(declare-fun m!3637535 () Bool)

(assert (=> b!3310023 m!3637535))

(assert (=> b!3310023 m!3637457))

(declare-fun m!3637537 () Bool)

(assert (=> b!3310023 m!3637537))

(declare-fun m!3637539 () Bool)

(assert (=> b!3310023 m!3637539))

(declare-fun m!3637541 () Bool)

(assert (=> b!3310023 m!3637541))

(assert (=> b!3310023 m!3637479))

(declare-fun m!3637543 () Bool)

(assert (=> b!3310023 m!3637543))

(declare-fun m!3637545 () Bool)

(assert (=> b!3310023 m!3637545))

(declare-fun m!3637547 () Bool)

(assert (=> b!3310023 m!3637547))

(declare-fun m!3637549 () Bool)

(assert (=> b!3310022 m!3637549))

(declare-fun m!3637551 () Bool)

(assert (=> b!3309983 m!3637551))

(declare-fun m!3637553 () Bool)

(assert (=> b!3310010 m!3637553))

(declare-fun m!3637555 () Bool)

(assert (=> b!3309994 m!3637555))

(declare-fun m!3637557 () Bool)

(assert (=> b!3309995 m!3637557))

(declare-fun m!3637559 () Bool)

(assert (=> b!3310005 m!3637559))

(declare-fun m!3637561 () Bool)

(assert (=> b!3309990 m!3637561))

(declare-fun m!3637563 () Bool)

(assert (=> b!3309990 m!3637563))

(declare-fun m!3637565 () Bool)

(assert (=> b!3309985 m!3637565))

(declare-fun m!3637567 () Bool)

(assert (=> b!3309985 m!3637567))

(declare-fun m!3637569 () Bool)

(assert (=> b!3310016 m!3637569))

(assert (=> b!3310016 m!3637569))

(declare-fun m!3637571 () Bool)

(assert (=> b!3310016 m!3637571))

(declare-fun m!3637573 () Bool)

(assert (=> b!3310007 m!3637573))

(declare-fun m!3637575 () Bool)

(assert (=> b!3310000 m!3637575))

(declare-fun m!3637577 () Bool)

(assert (=> start!308606 m!3637577))

(declare-fun m!3637579 () Bool)

(assert (=> b!3309989 m!3637579))

(declare-fun m!3637581 () Bool)

(assert (=> b!3309989 m!3637581))

(declare-fun m!3637583 () Bool)

(assert (=> b!3310020 m!3637583))

(declare-fun m!3637585 () Bool)

(assert (=> b!3310020 m!3637585))

(declare-fun m!3637587 () Bool)

(assert (=> b!3310020 m!3637587))

(declare-fun m!3637589 () Bool)

(assert (=> b!3310020 m!3637589))

(declare-fun m!3637591 () Bool)

(assert (=> b!3310020 m!3637591))

(declare-fun m!3637593 () Bool)

(assert (=> b!3310020 m!3637593))

(assert (=> b!3310020 m!3637583))

(declare-fun m!3637595 () Bool)

(assert (=> b!3310020 m!3637595))

(assert (=> b!3310020 m!3637587))

(declare-fun m!3637597 () Bool)

(assert (=> b!3310020 m!3637597))

(declare-fun m!3637599 () Bool)

(assert (=> b!3310020 m!3637599))

(assert (=> b!3310020 m!3637597))

(assert (=> b!3310020 m!3637593))

(declare-fun m!3637601 () Bool)

(assert (=> b!3310020 m!3637601))

(declare-fun m!3637603 () Bool)

(assert (=> b!3309986 m!3637603))

(declare-fun m!3637605 () Bool)

(assert (=> b!3310015 m!3637605))

(declare-fun m!3637607 () Bool)

(assert (=> b!3310015 m!3637607))

(declare-fun m!3637609 () Bool)

(assert (=> b!3310019 m!3637609))

(declare-fun m!3637611 () Bool)

(assert (=> b!3310019 m!3637611))

(declare-fun m!3637613 () Bool)

(assert (=> b!3309991 m!3637613))

(assert (=> b!3309991 m!3637613))

(declare-fun m!3637615 () Bool)

(assert (=> b!3309991 m!3637615))

(declare-fun m!3637617 () Bool)

(assert (=> b!3310013 m!3637617))

(declare-fun m!3637619 () Bool)

(assert (=> b!3310012 m!3637619))

(declare-fun m!3637621 () Bool)

(assert (=> b!3310012 m!3637621))

(declare-fun m!3637623 () Bool)

(assert (=> b!3309997 m!3637623))

(declare-fun m!3637625 () Bool)

(assert (=> b!3310008 m!3637625))

(declare-fun m!3637627 () Bool)

(assert (=> b!3309996 m!3637627))

(assert (=> b!3309996 m!3637627))

(declare-fun m!3637629 () Bool)

(assert (=> b!3309996 m!3637629))

(declare-fun m!3637631 () Bool)

(assert (=> b!3310003 m!3637631))

(declare-fun m!3637633 () Bool)

(assert (=> b!3310003 m!3637633))

(check-sat (not b!3309995) (not b!3309996) (not b!3310018) (not b!3310034) (not b_next!87915) (not b!3310019) (not b!3309986) (not b!3310016) (not b!3309987) (not b!3310005) (not b!3309994) b_and!227167 (not b!3309997) (not b!3309998) (not b!3310007) (not b!3310010) (not b_next!87905) (not b!3309991) (not b!3310022) b_and!227169 b_and!227173 (not b!3310023) (not b!3309983) (not b!3309990) (not b_next!87913) (not b_next!87911) (not b!3310015) (not b_next!87907) (not b!3309989) (not b!3309992) (not b!3310017) (not start!308606) (not b!3310012) (not b!3310000) (not b!3310014) (not b!3310008) (not b!3310021) (not b!3310020) (not b!3310013) (not b!3310003) b_and!227171 (not b!3309985) b_and!227175 (not b_next!87909) b_and!227177)
(check-sat b_and!227167 (not b_next!87905) (not b_next!87913) (not b_next!87915) (not b_next!87911) (not b_next!87907) b_and!227171 b_and!227175 b_and!227169 b_and!227173 (not b_next!87909) b_and!227177)
