; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49808 () Bool)

(assert start!49808)

(declare-fun b!539772 () Bool)

(declare-fun b_free!14889 () Bool)

(declare-fun b_next!14905 () Bool)

(assert (=> b!539772 (= b_free!14889 (not b_next!14905))))

(declare-fun tp!172057 () Bool)

(declare-fun b_and!52763 () Bool)

(assert (=> b!539772 (= tp!172057 b_and!52763)))

(declare-fun b_free!14891 () Bool)

(declare-fun b_next!14907 () Bool)

(assert (=> b!539772 (= b_free!14891 (not b_next!14907))))

(declare-fun tp!172060 () Bool)

(declare-fun b_and!52765 () Bool)

(assert (=> b!539772 (= tp!172060 b_and!52765)))

(declare-fun b!539766 () Bool)

(declare-fun b_free!14893 () Bool)

(declare-fun b_next!14909 () Bool)

(assert (=> b!539766 (= b_free!14893 (not b_next!14909))))

(declare-fun tp!172064 () Bool)

(declare-fun b_and!52767 () Bool)

(assert (=> b!539766 (= tp!172064 b_and!52767)))

(declare-fun b_free!14895 () Bool)

(declare-fun b_next!14911 () Bool)

(assert (=> b!539766 (= b_free!14895 (not b_next!14911))))

(declare-fun tp!172058 () Bool)

(declare-fun b_and!52769 () Bool)

(assert (=> b!539766 (= tp!172058 b_and!52769)))

(declare-fun b!539752 () Bool)

(declare-fun res!229256 () Bool)

(declare-fun e!325903 () Bool)

(assert (=> b!539752 (=> (not res!229256) (not e!325903))))

(declare-datatypes ((C!3552 0))(
  ( (C!3553 (val!2002 Int)) )
))
(declare-datatypes ((Regex!1315 0))(
  ( (ElementMatch!1315 (c!102296 C!3552)) (Concat!2320 (regOne!3142 Regex!1315) (regTwo!3142 Regex!1315)) (EmptyExpr!1315) (Star!1315 (reg!1644 Regex!1315)) (EmptyLang!1315) (Union!1315 (regOne!3143 Regex!1315) (regTwo!3143 Regex!1315)) )
))
(declare-datatypes ((List!5283 0))(
  ( (Nil!5273) (Cons!5273 (h!10674 (_ BitVec 16)) (t!74332 List!5283)) )
))
(declare-datatypes ((List!5284 0))(
  ( (Nil!5274) (Cons!5274 (h!10675 C!3552) (t!74333 List!5284)) )
))
(declare-datatypes ((IArray!3397 0))(
  ( (IArray!3398 (innerList!1756 List!5284)) )
))
(declare-datatypes ((Conc!1698 0))(
  ( (Node!1698 (left!4393 Conc!1698) (right!4723 Conc!1698) (csize!3626 Int) (cheight!1909 Int)) (Leaf!2696 (xs!4335 IArray!3397) (csize!3627 Int)) (Empty!1698) )
))
(declare-datatypes ((BalanceConc!3404 0))(
  ( (BalanceConc!3405 (c!102297 Conc!1698)) )
))
(declare-datatypes ((TokenValue!1005 0))(
  ( (FloatLiteralValue!2010 (text!7480 List!5283)) (TokenValueExt!1004 (__x!3908 Int)) (Broken!5025 (value!32799 List!5283)) (Object!1014) (End!1005) (Def!1005) (Underscore!1005) (Match!1005) (Else!1005) (Error!1005) (Case!1005) (If!1005) (Extends!1005) (Abstract!1005) (Class!1005) (Val!1005) (DelimiterValue!2010 (del!1065 List!5283)) (KeywordValue!1011 (value!32800 List!5283)) (CommentValue!2010 (value!32801 List!5283)) (WhitespaceValue!2010 (value!32802 List!5283)) (IndentationValue!1005 (value!32803 List!5283)) (String!6768) (Int32!1005) (Broken!5026 (value!32804 List!5283)) (Boolean!1006) (Unit!9212) (OperatorValue!1008 (op!1065 List!5283)) (IdentifierValue!2010 (value!32805 List!5283)) (IdentifierValue!2011 (value!32806 List!5283)) (WhitespaceValue!2011 (value!32807 List!5283)) (True!2010) (False!2010) (Broken!5027 (value!32808 List!5283)) (Broken!5028 (value!32809 List!5283)) (True!2011) (RightBrace!1005) (RightBracket!1005) (Colon!1005) (Null!1005) (Comma!1005) (LeftBracket!1005) (False!2011) (LeftBrace!1005) (ImaginaryLiteralValue!1005 (text!7481 List!5283)) (StringLiteralValue!3015 (value!32810 List!5283)) (EOFValue!1005 (value!32811 List!5283)) (IdentValue!1005 (value!32812 List!5283)) (DelimiterValue!2011 (value!32813 List!5283)) (DedentValue!1005 (value!32814 List!5283)) (NewLineValue!1005 (value!32815 List!5283)) (IntegerValue!3015 (value!32816 (_ BitVec 32)) (text!7482 List!5283)) (IntegerValue!3016 (value!32817 Int) (text!7483 List!5283)) (Times!1005) (Or!1005) (Equal!1005) (Minus!1005) (Broken!5029 (value!32818 List!5283)) (And!1005) (Div!1005) (LessEqual!1005) (Mod!1005) (Concat!2321) (Not!1005) (Plus!1005) (SpaceValue!1005 (value!32819 List!5283)) (IntegerValue!3017 (value!32820 Int) (text!7484 List!5283)) (StringLiteralValue!3016 (text!7485 List!5283)) (FloatLiteralValue!2011 (text!7486 List!5283)) (BytesLiteralValue!1005 (value!32821 List!5283)) (CommentValue!2011 (value!32822 List!5283)) (StringLiteralValue!3017 (value!32823 List!5283)) (ErrorTokenValue!1005 (msg!1066 List!5283)) )
))
(declare-datatypes ((String!6769 0))(
  ( (String!6770 (value!32824 String)) )
))
(declare-datatypes ((TokenValueInjection!1778 0))(
  ( (TokenValueInjection!1779 (toValue!1828 Int) (toChars!1687 Int)) )
))
(declare-datatypes ((Rule!1762 0))(
  ( (Rule!1763 (regex!981 Regex!1315) (tag!1243 String!6769) (isSeparator!981 Bool) (transformation!981 TokenValueInjection!1778)) )
))
(declare-datatypes ((Token!1698 0))(
  ( (Token!1699 (value!32825 TokenValue!1005) (rule!1689 Rule!1762) (size!4238 Int) (originalCharacters!1020 List!5284)) )
))
(declare-datatypes ((tuple2!6332 0))(
  ( (tuple2!6333 (_1!3430 Token!1698) (_2!3430 List!5284)) )
))
(declare-datatypes ((Option!1331 0))(
  ( (None!1330) (Some!1330 (v!16139 tuple2!6332)) )
))
(declare-fun lt!224521 () Option!1331)

(declare-fun size!4239 (List!5284) Int)

(assert (=> b!539752 (= res!229256 (= (size!4238 (_1!3430 (v!16139 lt!224521))) (size!4239 (originalCharacters!1020 (_1!3430 (v!16139 lt!224521))))))))

(declare-fun b!539753 () Bool)

(declare-fun res!229258 () Bool)

(declare-fun e!325908 () Bool)

(assert (=> b!539753 (=> res!229258 e!325908)))

(declare-fun lt!224503 () List!5284)

(declare-fun input!2705 () List!5284)

(assert (=> b!539753 (= res!229258 (not (= lt!224503 input!2705)))))

(declare-fun lt!224506 () Int)

(declare-fun b!539754 () Bool)

(declare-fun lt!224514 () List!5284)

(declare-fun lt!224533 () tuple2!6332)

(declare-fun lt!224524 () TokenValue!1005)

(declare-fun lt!224526 () List!5284)

(assert (=> b!539754 (= e!325903 (and (= (size!4238 (_1!3430 (v!16139 lt!224521))) lt!224506) (= (originalCharacters!1020 (_1!3430 (v!16139 lt!224521))) lt!224526) (= lt!224533 (tuple2!6333 (Token!1699 lt!224524 (rule!1689 (_1!3430 (v!16139 lt!224521))) lt!224506 lt!224526) lt!224514))))))

(declare-fun b!539755 () Bool)

(declare-fun e!325897 () Bool)

(declare-fun e!325912 () Bool)

(assert (=> b!539755 (= e!325897 (not e!325912))))

(declare-fun res!229242 () Bool)

(assert (=> b!539755 (=> res!229242 e!325912)))

(declare-fun lt!224515 () List!5284)

(declare-fun isPrefix!623 (List!5284 List!5284) Bool)

(assert (=> b!539755 (= res!229242 (not (isPrefix!623 input!2705 lt!224515)))))

(declare-fun lt!224517 () List!5284)

(assert (=> b!539755 (isPrefix!623 lt!224517 lt!224515)))

(declare-datatypes ((Unit!9213 0))(
  ( (Unit!9214) )
))
(declare-fun lt!224531 () Unit!9213)

(declare-fun suffix!1342 () List!5284)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!474 (List!5284 List!5284) Unit!9213)

(assert (=> b!539755 (= lt!224531 (lemmaConcatTwoListThenFirstIsPrefix!474 lt!224517 suffix!1342))))

(declare-fun lt!224519 () List!5284)

(assert (=> b!539755 (isPrefix!623 input!2705 lt!224519)))

(declare-fun lt!224532 () Unit!9213)

(assert (=> b!539755 (= lt!224532 (lemmaConcatTwoListThenFirstIsPrefix!474 input!2705 suffix!1342))))

(assert (=> b!539755 e!325903))

(declare-fun res!229250 () Bool)

(assert (=> b!539755 (=> (not res!229250) (not e!325903))))

(assert (=> b!539755 (= res!229250 (= (value!32825 (_1!3430 (v!16139 lt!224521))) lt!224524))))

(declare-fun apply!1256 (TokenValueInjection!1778 BalanceConc!3404) TokenValue!1005)

(declare-fun seqFromList!1179 (List!5284) BalanceConc!3404)

(assert (=> b!539755 (= lt!224524 (apply!1256 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))) (seqFromList!1179 lt!224526)))))

(declare-fun lt!224522 () Unit!9213)

(declare-fun token!491 () Token!1698)

(declare-fun lemmaInv!129 (TokenValueInjection!1778) Unit!9213)

(assert (=> b!539755 (= lt!224522 (lemmaInv!129 (transformation!981 (rule!1689 token!491))))))

(declare-fun lt!224528 () Unit!9213)

(assert (=> b!539755 (= lt!224528 (lemmaInv!129 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))))))

(declare-datatypes ((LexerInterface!867 0))(
  ( (LexerInterfaceExt!864 (__x!3909 Int)) (Lexer!865) )
))
(declare-fun thiss!22590 () LexerInterface!867)

(declare-fun ruleValid!201 (LexerInterface!867 Rule!1762) Bool)

(assert (=> b!539755 (ruleValid!201 thiss!22590 (rule!1689 token!491))))

(declare-datatypes ((List!5285 0))(
  ( (Nil!5275) (Cons!5275 (h!10676 Rule!1762) (t!74334 List!5285)) )
))
(declare-fun rules!3103 () List!5285)

(declare-fun lt!224516 () Unit!9213)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!60 (LexerInterface!867 Rule!1762 List!5285) Unit!9213)

(assert (=> b!539755 (= lt!224516 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!60 thiss!22590 (rule!1689 token!491) rules!3103))))

(assert (=> b!539755 (ruleValid!201 thiss!22590 (rule!1689 (_1!3430 (v!16139 lt!224521))))))

(declare-fun lt!224523 () Unit!9213)

(assert (=> b!539755 (= lt!224523 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!60 thiss!22590 (rule!1689 (_1!3430 (v!16139 lt!224521))) rules!3103))))

(assert (=> b!539755 (isPrefix!623 input!2705 input!2705)))

(declare-fun lt!224511 () Unit!9213)

(declare-fun lemmaIsPrefixRefl!363 (List!5284 List!5284) Unit!9213)

(assert (=> b!539755 (= lt!224511 (lemmaIsPrefixRefl!363 input!2705 input!2705))))

(assert (=> b!539755 (= (_2!3430 (v!16139 lt!224521)) lt!224514)))

(declare-fun lt!224513 () Unit!9213)

(declare-fun lemmaSamePrefixThenSameSuffix!350 (List!5284 List!5284 List!5284 List!5284 List!5284) Unit!9213)

(assert (=> b!539755 (= lt!224513 (lemmaSamePrefixThenSameSuffix!350 lt!224526 (_2!3430 (v!16139 lt!224521)) lt!224526 lt!224514 input!2705))))

(declare-fun getSuffix!146 (List!5284 List!5284) List!5284)

(assert (=> b!539755 (= lt!224514 (getSuffix!146 input!2705 lt!224526))))

(assert (=> b!539755 (isPrefix!623 lt!224526 lt!224503)))

(declare-fun ++!1469 (List!5284 List!5284) List!5284)

(assert (=> b!539755 (= lt!224503 (++!1469 lt!224526 (_2!3430 (v!16139 lt!224521))))))

(declare-fun lt!224504 () Unit!9213)

(assert (=> b!539755 (= lt!224504 (lemmaConcatTwoListThenFirstIsPrefix!474 lt!224526 (_2!3430 (v!16139 lt!224521))))))

(declare-fun lt!224530 () Unit!9213)

(declare-fun lemmaCharactersSize!60 (Token!1698) Unit!9213)

(assert (=> b!539755 (= lt!224530 (lemmaCharactersSize!60 token!491))))

(declare-fun lt!224505 () Unit!9213)

(assert (=> b!539755 (= lt!224505 (lemmaCharactersSize!60 (_1!3430 (v!16139 lt!224521))))))

(declare-fun lt!224507 () Unit!9213)

(declare-fun e!325898 () Unit!9213)

(assert (=> b!539755 (= lt!224507 e!325898)))

(declare-fun c!102295 () Bool)

(declare-fun lt!224509 () Int)

(assert (=> b!539755 (= c!102295 (> lt!224506 lt!224509))))

(assert (=> b!539755 (= lt!224509 (size!4239 lt!224517))))

(assert (=> b!539755 (= lt!224506 (size!4239 lt!224526))))

(declare-fun list!2189 (BalanceConc!3404) List!5284)

(declare-fun charsOf!610 (Token!1698) BalanceConc!3404)

(assert (=> b!539755 (= lt!224526 (list!2189 (charsOf!610 (_1!3430 (v!16139 lt!224521)))))))

(assert (=> b!539755 (= lt!224521 (Some!1330 lt!224533))))

(assert (=> b!539755 (= lt!224533 (tuple2!6333 (_1!3430 (v!16139 lt!224521)) (_2!3430 (v!16139 lt!224521))))))

(declare-fun lt!224510 () Unit!9213)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!66 (List!5284 List!5284 List!5284 List!5284) Unit!9213)

(assert (=> b!539755 (= lt!224510 (lemmaConcatSameAndSameSizesThenSameLists!66 lt!224517 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!539756 () Bool)

(declare-fun e!325906 () Bool)

(declare-fun e!325901 () Bool)

(assert (=> b!539756 (= e!325906 e!325901)))

(declare-fun res!229247 () Bool)

(assert (=> b!539756 (=> (not res!229247) (not e!325901))))

(get-info :version)

(assert (=> b!539756 (= res!229247 ((_ is Some!1330) lt!224521))))

(declare-fun maxPrefix!565 (LexerInterface!867 List!5285 List!5284) Option!1331)

(assert (=> b!539756 (= lt!224521 (maxPrefix!565 thiss!22590 rules!3103 input!2705))))

(declare-fun tp!172056 () Bool)

(declare-fun e!325896 () Bool)

(declare-fun e!325893 () Bool)

(declare-fun b!539757 () Bool)

(declare-fun inv!6614 (String!6769) Bool)

(declare-fun inv!6617 (TokenValueInjection!1778) Bool)

(assert (=> b!539757 (= e!325893 (and tp!172056 (inv!6614 (tag!1243 (rule!1689 token!491))) (inv!6617 (transformation!981 (rule!1689 token!491))) e!325896))))

(declare-fun b!539758 () Bool)

(declare-fun e!325907 () Bool)

(declare-fun e!325902 () Bool)

(declare-fun tp!172055 () Bool)

(assert (=> b!539758 (= e!325907 (and e!325902 tp!172055))))

(declare-fun res!229249 () Bool)

(declare-fun e!325900 () Bool)

(assert (=> start!49808 (=> (not res!229249) (not e!325900))))

(assert (=> start!49808 (= res!229249 ((_ is Lexer!865) thiss!22590))))

(assert (=> start!49808 e!325900))

(declare-fun e!325917 () Bool)

(assert (=> start!49808 e!325917))

(assert (=> start!49808 e!325907))

(declare-fun e!325904 () Bool)

(declare-fun inv!6618 (Token!1698) Bool)

(assert (=> start!49808 (and (inv!6618 token!491) e!325904)))

(assert (=> start!49808 true))

(declare-fun e!325911 () Bool)

(assert (=> start!49808 e!325911))

(declare-fun b!539759 () Bool)

(declare-fun res!229260 () Bool)

(assert (=> b!539759 (=> res!229260 e!325908)))

(assert (=> b!539759 (= res!229260 (not (isPrefix!623 lt!224526 input!2705)))))

(declare-fun b!539760 () Bool)

(declare-fun Unit!9215 () Unit!9213)

(assert (=> b!539760 (= e!325898 Unit!9215)))

(assert (=> b!539760 false))

(declare-fun b!539761 () Bool)

(declare-fun res!229252 () Bool)

(assert (=> b!539761 (=> res!229252 e!325908)))

(declare-fun matchR!474 (Regex!1315 List!5284) Bool)

(assert (=> b!539761 (= res!229252 (not (matchR!474 (regex!981 (rule!1689 token!491)) input!2705)))))

(declare-fun b!539762 () Bool)

(declare-fun res!229262 () Bool)

(assert (=> b!539762 (=> (not res!229262) (not e!325900))))

(declare-fun isEmpty!3810 (List!5284) Bool)

(assert (=> b!539762 (= res!229262 (not (isEmpty!3810 input!2705)))))

(declare-fun b!539763 () Bool)

(declare-fun tp_is_empty!2985 () Bool)

(declare-fun tp!172059 () Bool)

(assert (=> b!539763 (= e!325911 (and tp_is_empty!2985 tp!172059))))

(declare-fun b!539764 () Bool)

(declare-fun e!325895 () Bool)

(declare-fun get!1986 (Option!1331) tuple2!6332)

(assert (=> b!539764 (= e!325895 (= (_1!3430 (get!1986 lt!224521)) (_1!3430 (v!16139 lt!224521))))))

(declare-fun b!539765 () Bool)

(assert (=> b!539765 (= e!325912 e!325908)))

(declare-fun res!229261 () Bool)

(assert (=> b!539765 (=> res!229261 e!325908)))

(assert (=> b!539765 (= res!229261 (>= lt!224506 lt!224509))))

(declare-fun e!325916 () Bool)

(assert (=> b!539765 e!325916))

(declare-fun res!229254 () Bool)

(assert (=> b!539765 (=> (not res!229254) (not e!325916))))

(declare-fun lt!224520 () TokenValue!1005)

(declare-fun maxPrefixOneRule!280 (LexerInterface!867 Rule!1762 List!5284) Option!1331)

(assert (=> b!539765 (= res!229254 (= (maxPrefixOneRule!280 thiss!22590 (rule!1689 token!491) lt!224519) (Some!1330 (tuple2!6333 (Token!1699 lt!224520 (rule!1689 token!491) lt!224509 lt!224517) suffix!1342))))))

(declare-fun lt!224529 () Unit!9213)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!32 (LexerInterface!867 List!5285 List!5284 List!5284 List!5284 Rule!1762) Unit!9213)

(assert (=> b!539765 (= lt!224529 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!32 thiss!22590 rules!3103 lt!224517 lt!224519 suffix!1342 (rule!1689 token!491)))))

(assert (=> b!539765 (= (maxPrefixOneRule!280 thiss!22590 (rule!1689 (_1!3430 (v!16139 lt!224521))) input!2705) (Some!1330 (tuple2!6333 (Token!1699 lt!224524 (rule!1689 (_1!3430 (v!16139 lt!224521))) lt!224506 lt!224526) (_2!3430 (v!16139 lt!224521)))))))

(declare-fun lt!224508 () Unit!9213)

(assert (=> b!539765 (= lt!224508 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!32 thiss!22590 rules!3103 lt!224526 input!2705 (_2!3430 (v!16139 lt!224521)) (rule!1689 (_1!3430 (v!16139 lt!224521)))))))

(declare-fun e!325909 () Bool)

(assert (=> b!539765 e!325909))

(declare-fun res!229251 () Bool)

(assert (=> b!539765 (=> (not res!229251) (not e!325909))))

(assert (=> b!539765 (= res!229251 (= (value!32825 token!491) lt!224520))))

(assert (=> b!539765 (= lt!224520 (apply!1256 (transformation!981 (rule!1689 token!491)) (seqFromList!1179 lt!224517)))))

(declare-fun lt!224527 () List!5284)

(assert (=> b!539765 (= suffix!1342 lt!224527)))

(declare-fun lt!224525 () Unit!9213)

(assert (=> b!539765 (= lt!224525 (lemmaSamePrefixThenSameSuffix!350 lt!224517 suffix!1342 lt!224517 lt!224527 lt!224519))))

(assert (=> b!539765 (= lt!224527 (getSuffix!146 lt!224519 lt!224517))))

(assert (=> b!539766 (= e!325896 (and tp!172064 tp!172058))))

(declare-fun b!539767 () Bool)

(declare-fun res!229243 () Bool)

(assert (=> b!539767 (=> res!229243 e!325908)))

(assert (=> b!539767 (= res!229243 (not (isPrefix!623 lt!224517 input!2705)))))

(declare-fun b!539768 () Bool)

(assert (=> b!539768 (= e!325909 (and (= (size!4238 token!491) lt!224509) (= (originalCharacters!1020 token!491) lt!224517) (= (tuple2!6333 token!491 suffix!1342) (tuple2!6333 (Token!1699 lt!224520 (rule!1689 token!491) lt!224509 lt!224517) lt!224527))))))

(declare-fun b!539769 () Bool)

(assert (=> b!539769 (= e!325901 e!325897)))

(declare-fun res!229238 () Bool)

(assert (=> b!539769 (=> (not res!229238) (not e!325897))))

(assert (=> b!539769 (= res!229238 (= lt!224515 lt!224519))))

(assert (=> b!539769 (= lt!224515 (++!1469 lt!224517 suffix!1342))))

(declare-fun b!539770 () Bool)

(declare-fun e!325899 () Bool)

(assert (=> b!539770 (= e!325900 e!325899)))

(declare-fun res!229245 () Bool)

(assert (=> b!539770 (=> (not res!229245) (not e!325899))))

(assert (=> b!539770 (= res!229245 (= lt!224517 input!2705))))

(assert (=> b!539770 (= lt!224517 (list!2189 (charsOf!610 token!491)))))

(declare-fun e!325913 () Bool)

(declare-fun tp!172063 () Bool)

(declare-fun b!539771 () Bool)

(assert (=> b!539771 (= e!325902 (and tp!172063 (inv!6614 (tag!1243 (h!10676 rules!3103))) (inv!6617 (transformation!981 (h!10676 rules!3103))) e!325913))))

(assert (=> b!539772 (= e!325913 (and tp!172057 tp!172060))))

(declare-fun b!539773 () Bool)

(declare-fun e!325905 () Bool)

(assert (=> b!539773 (= e!325908 e!325905)))

(declare-fun res!229257 () Bool)

(assert (=> b!539773 (=> res!229257 e!325905)))

(declare-fun contains!1225 (List!5285 Rule!1762) Bool)

(assert (=> b!539773 (= res!229257 (not (contains!1225 rules!3103 (rule!1689 (_1!3430 (v!16139 lt!224521))))))))

(assert (=> b!539773 (= lt!224514 (_2!3430 (v!16139 lt!224521)))))

(declare-fun b!539774 () Bool)

(declare-fun tp!172061 () Bool)

(assert (=> b!539774 (= e!325917 (and tp_is_empty!2985 tp!172061))))

(declare-fun b!539775 () Bool)

(declare-fun e!325910 () Bool)

(assert (=> b!539775 (= e!325910 e!325906)))

(declare-fun res!229240 () Bool)

(assert (=> b!539775 (=> (not res!229240) (not e!325906))))

(declare-fun lt!224518 () tuple2!6332)

(assert (=> b!539775 (= res!229240 (and (= (_1!3430 lt!224518) token!491) (= (_2!3430 lt!224518) suffix!1342)))))

(declare-fun lt!224512 () Option!1331)

(assert (=> b!539775 (= lt!224518 (get!1986 lt!224512))))

(declare-fun b!539776 () Bool)

(declare-fun res!229237 () Bool)

(assert (=> b!539776 (=> (not res!229237) (not e!325900))))

(declare-fun isEmpty!3811 (List!5285) Bool)

(assert (=> b!539776 (= res!229237 (not (isEmpty!3811 rules!3103)))))

(declare-fun b!539777 () Bool)

(declare-fun validRegex!440 (Regex!1315) Bool)

(assert (=> b!539777 (= e!325905 (validRegex!440 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))))))

(declare-fun tp!172062 () Bool)

(declare-fun b!539778 () Bool)

(declare-fun inv!21 (TokenValue!1005) Bool)

(assert (=> b!539778 (= e!325904 (and (inv!21 (value!32825 token!491)) e!325893 tp!172062))))

(declare-fun b!539779 () Bool)

(declare-fun res!229248 () Bool)

(assert (=> b!539779 (=> (not res!229248) (not e!325900))))

(declare-fun rulesInvariant!830 (LexerInterface!867 List!5285) Bool)

(assert (=> b!539779 (= res!229248 (rulesInvariant!830 thiss!22590 rules!3103))))

(declare-fun b!539780 () Bool)

(declare-fun Unit!9216 () Unit!9213)

(assert (=> b!539780 (= e!325898 Unit!9216)))

(declare-fun b!539781 () Bool)

(declare-fun e!325894 () Bool)

(assert (=> b!539781 (= e!325894 e!325895)))

(declare-fun res!229259 () Bool)

(assert (=> b!539781 (=> (not res!229259) (not e!325895))))

(declare-fun isDefined!1143 (Option!1331) Bool)

(assert (=> b!539781 (= res!229259 (isDefined!1143 lt!224521))))

(declare-fun b!539782 () Bool)

(declare-fun res!229244 () Bool)

(assert (=> b!539782 (=> res!229244 e!325908)))

(assert (=> b!539782 (= res!229244 (not (contains!1225 rules!3103 (rule!1689 token!491))))))

(declare-fun b!539783 () Bool)

(declare-fun res!229246 () Bool)

(assert (=> b!539783 (=> res!229246 e!325908)))

(assert (=> b!539783 (= res!229246 (not (= (getSuffix!146 input!2705 input!2705) Nil!5274)))))

(declare-fun b!539784 () Bool)

(assert (=> b!539784 (= e!325916 e!325894)))

(declare-fun res!229241 () Bool)

(assert (=> b!539784 (=> res!229241 e!325894)))

(assert (=> b!539784 (= res!229241 (>= lt!224506 lt!224509))))

(declare-fun b!539785 () Bool)

(assert (=> b!539785 (= e!325899 e!325910)))

(declare-fun res!229255 () Bool)

(assert (=> b!539785 (=> (not res!229255) (not e!325910))))

(assert (=> b!539785 (= res!229255 (isDefined!1143 lt!224512))))

(assert (=> b!539785 (= lt!224512 (maxPrefix!565 thiss!22590 rules!3103 lt!224519))))

(assert (=> b!539785 (= lt!224519 (++!1469 input!2705 suffix!1342))))

(declare-fun b!539786 () Bool)

(declare-fun res!229239 () Bool)

(assert (=> b!539786 (=> res!229239 e!325908)))

(assert (=> b!539786 (= res!229239 (not (= (++!1469 lt!224526 lt!224514) input!2705)))))

(declare-fun b!539787 () Bool)

(declare-fun res!229253 () Bool)

(assert (=> b!539787 (=> (not res!229253) (not e!325909))))

(assert (=> b!539787 (= res!229253 (= (size!4238 token!491) (size!4239 (originalCharacters!1020 token!491))))))

(assert (= (and start!49808 res!229249) b!539776))

(assert (= (and b!539776 res!229237) b!539779))

(assert (= (and b!539779 res!229248) b!539762))

(assert (= (and b!539762 res!229262) b!539770))

(assert (= (and b!539770 res!229245) b!539785))

(assert (= (and b!539785 res!229255) b!539775))

(assert (= (and b!539775 res!229240) b!539756))

(assert (= (and b!539756 res!229247) b!539769))

(assert (= (and b!539769 res!229238) b!539755))

(assert (= (and b!539755 c!102295) b!539760))

(assert (= (and b!539755 (not c!102295)) b!539780))

(assert (= (and b!539755 res!229250) b!539752))

(assert (= (and b!539752 res!229256) b!539754))

(assert (= (and b!539755 (not res!229242)) b!539765))

(assert (= (and b!539765 res!229251) b!539787))

(assert (= (and b!539787 res!229253) b!539768))

(assert (= (and b!539765 res!229254) b!539784))

(assert (= (and b!539784 (not res!229241)) b!539781))

(assert (= (and b!539781 res!229259) b!539764))

(assert (= (and b!539765 (not res!229261)) b!539782))

(assert (= (and b!539782 (not res!229244)) b!539761))

(assert (= (and b!539761 (not res!229252)) b!539767))

(assert (= (and b!539767 (not res!229243)) b!539783))

(assert (= (and b!539783 (not res!229246)) b!539753))

(assert (= (and b!539753 (not res!229258)) b!539759))

(assert (= (and b!539759 (not res!229260)) b!539786))

(assert (= (and b!539786 (not res!229239)) b!539773))

(assert (= (and b!539773 (not res!229257)) b!539777))

(assert (= (and start!49808 ((_ is Cons!5274) suffix!1342)) b!539774))

(assert (= b!539771 b!539772))

(assert (= b!539758 b!539771))

(assert (= (and start!49808 ((_ is Cons!5275) rules!3103)) b!539758))

(assert (= b!539757 b!539766))

(assert (= b!539778 b!539757))

(assert (= start!49808 b!539778))

(assert (= (and start!49808 ((_ is Cons!5274) input!2705)) b!539763))

(declare-fun m!787155 () Bool)

(assert (=> b!539783 m!787155))

(declare-fun m!787157 () Bool)

(assert (=> start!49808 m!787157))

(declare-fun m!787159 () Bool)

(assert (=> b!539759 m!787159))

(declare-fun m!787161 () Bool)

(assert (=> b!539764 m!787161))

(declare-fun m!787163 () Bool)

(assert (=> b!539765 m!787163))

(declare-fun m!787165 () Bool)

(assert (=> b!539765 m!787165))

(declare-fun m!787167 () Bool)

(assert (=> b!539765 m!787167))

(declare-fun m!787169 () Bool)

(assert (=> b!539765 m!787169))

(assert (=> b!539765 m!787163))

(declare-fun m!787171 () Bool)

(assert (=> b!539765 m!787171))

(declare-fun m!787173 () Bool)

(assert (=> b!539765 m!787173))

(declare-fun m!787175 () Bool)

(assert (=> b!539765 m!787175))

(declare-fun m!787177 () Bool)

(assert (=> b!539765 m!787177))

(declare-fun m!787179 () Bool)

(assert (=> b!539769 m!787179))

(declare-fun m!787181 () Bool)

(assert (=> b!539756 m!787181))

(declare-fun m!787183 () Bool)

(assert (=> b!539761 m!787183))

(declare-fun m!787185 () Bool)

(assert (=> b!539757 m!787185))

(declare-fun m!787187 () Bool)

(assert (=> b!539757 m!787187))

(declare-fun m!787189 () Bool)

(assert (=> b!539767 m!787189))

(declare-fun m!787191 () Bool)

(assert (=> b!539771 m!787191))

(declare-fun m!787193 () Bool)

(assert (=> b!539771 m!787193))

(declare-fun m!787195 () Bool)

(assert (=> b!539752 m!787195))

(declare-fun m!787197 () Bool)

(assert (=> b!539781 m!787197))

(declare-fun m!787199 () Bool)

(assert (=> b!539782 m!787199))

(declare-fun m!787201 () Bool)

(assert (=> b!539773 m!787201))

(declare-fun m!787203 () Bool)

(assert (=> b!539775 m!787203))

(declare-fun m!787205 () Bool)

(assert (=> b!539785 m!787205))

(declare-fun m!787207 () Bool)

(assert (=> b!539785 m!787207))

(declare-fun m!787209 () Bool)

(assert (=> b!539785 m!787209))

(declare-fun m!787211 () Bool)

(assert (=> b!539786 m!787211))

(declare-fun m!787213 () Bool)

(assert (=> b!539755 m!787213))

(declare-fun m!787215 () Bool)

(assert (=> b!539755 m!787215))

(declare-fun m!787217 () Bool)

(assert (=> b!539755 m!787217))

(declare-fun m!787219 () Bool)

(assert (=> b!539755 m!787219))

(declare-fun m!787221 () Bool)

(assert (=> b!539755 m!787221))

(declare-fun m!787223 () Bool)

(assert (=> b!539755 m!787223))

(declare-fun m!787225 () Bool)

(assert (=> b!539755 m!787225))

(declare-fun m!787227 () Bool)

(assert (=> b!539755 m!787227))

(declare-fun m!787229 () Bool)

(assert (=> b!539755 m!787229))

(declare-fun m!787231 () Bool)

(assert (=> b!539755 m!787231))

(declare-fun m!787233 () Bool)

(assert (=> b!539755 m!787233))

(declare-fun m!787235 () Bool)

(assert (=> b!539755 m!787235))

(declare-fun m!787237 () Bool)

(assert (=> b!539755 m!787237))

(declare-fun m!787239 () Bool)

(assert (=> b!539755 m!787239))

(declare-fun m!787241 () Bool)

(assert (=> b!539755 m!787241))

(declare-fun m!787243 () Bool)

(assert (=> b!539755 m!787243))

(declare-fun m!787245 () Bool)

(assert (=> b!539755 m!787245))

(declare-fun m!787247 () Bool)

(assert (=> b!539755 m!787247))

(assert (=> b!539755 m!787225))

(declare-fun m!787249 () Bool)

(assert (=> b!539755 m!787249))

(declare-fun m!787251 () Bool)

(assert (=> b!539755 m!787251))

(declare-fun m!787253 () Bool)

(assert (=> b!539755 m!787253))

(declare-fun m!787255 () Bool)

(assert (=> b!539755 m!787255))

(declare-fun m!787257 () Bool)

(assert (=> b!539755 m!787257))

(declare-fun m!787259 () Bool)

(assert (=> b!539755 m!787259))

(assert (=> b!539755 m!787253))

(declare-fun m!787261 () Bool)

(assert (=> b!539755 m!787261))

(declare-fun m!787263 () Bool)

(assert (=> b!539755 m!787263))

(declare-fun m!787265 () Bool)

(assert (=> b!539755 m!787265))

(declare-fun m!787267 () Bool)

(assert (=> b!539778 m!787267))

(declare-fun m!787269 () Bool)

(assert (=> b!539776 m!787269))

(declare-fun m!787271 () Bool)

(assert (=> b!539777 m!787271))

(declare-fun m!787273 () Bool)

(assert (=> b!539762 m!787273))

(declare-fun m!787275 () Bool)

(assert (=> b!539779 m!787275))

(declare-fun m!787277 () Bool)

(assert (=> b!539770 m!787277))

(assert (=> b!539770 m!787277))

(declare-fun m!787279 () Bool)

(assert (=> b!539770 m!787279))

(declare-fun m!787281 () Bool)

(assert (=> b!539787 m!787281))

(check-sat (not b!539787) b_and!52769 (not b!539781) (not b!539769) (not b!539786) b_and!52765 (not b!539756) (not b!539755) (not b_next!14905) (not b!539758) (not b!539752) (not b!539774) (not b!539773) (not b!539785) (not b!539762) b_and!52767 (not b!539783) (not start!49808) (not b!539775) tp_is_empty!2985 (not b!539776) (not b_next!14911) (not b_next!14909) (not b!539778) (not b!539771) (not b_next!14907) (not b!539759) (not b!539770) (not b!539779) (not b!539782) (not b!539763) (not b!539777) (not b!539764) (not b!539757) (not b!539761) (not b!539767) b_and!52763 (not b!539765))
(check-sat b_and!52767 b_and!52769 b_and!52765 (not b_next!14907) (not b_next!14905) b_and!52763 (not b_next!14911) (not b_next!14909))
(get-model)

(declare-fun d!190138 () Bool)

(declare-fun lt!224551 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!920 (List!5285) (InoxSet Rule!1762))

(assert (=> d!190138 (= lt!224551 (select (content!920 rules!3103) (rule!1689 token!491)))))

(declare-fun e!325932 () Bool)

(assert (=> d!190138 (= lt!224551 e!325932)))

(declare-fun res!229296 () Bool)

(assert (=> d!190138 (=> (not res!229296) (not e!325932))))

(assert (=> d!190138 (= res!229296 ((_ is Cons!5275) rules!3103))))

(assert (=> d!190138 (= (contains!1225 rules!3103 (rule!1689 token!491)) lt!224551)))

(declare-fun b!539819 () Bool)

(declare-fun e!325933 () Bool)

(assert (=> b!539819 (= e!325932 e!325933)))

(declare-fun res!229297 () Bool)

(assert (=> b!539819 (=> res!229297 e!325933)))

(assert (=> b!539819 (= res!229297 (= (h!10676 rules!3103) (rule!1689 token!491)))))

(declare-fun b!539820 () Bool)

(assert (=> b!539820 (= e!325933 (contains!1225 (t!74334 rules!3103) (rule!1689 token!491)))))

(assert (= (and d!190138 res!229296) b!539819))

(assert (= (and b!539819 (not res!229297)) b!539820))

(declare-fun m!787315 () Bool)

(assert (=> d!190138 m!787315))

(declare-fun m!787319 () Bool)

(assert (=> d!190138 m!787319))

(declare-fun m!787321 () Bool)

(assert (=> b!539820 m!787321))

(assert (=> b!539782 d!190138))

(declare-fun b!539886 () Bool)

(declare-fun e!325974 () Bool)

(declare-fun e!325976 () Bool)

(assert (=> b!539886 (= e!325974 e!325976)))

(declare-fun res!229339 () Bool)

(assert (=> b!539886 (=> res!229339 e!325976)))

(declare-fun call!38251 () Bool)

(assert (=> b!539886 (= res!229339 call!38251)))

(declare-fun b!539887 () Bool)

(declare-fun e!325975 () Bool)

(declare-fun derivativeStep!260 (Regex!1315 C!3552) Regex!1315)

(declare-fun head!1182 (List!5284) C!3552)

(declare-fun tail!711 (List!5284) List!5284)

(assert (=> b!539887 (= e!325975 (matchR!474 (derivativeStep!260 (regex!981 (rule!1689 token!491)) (head!1182 input!2705)) (tail!711 input!2705)))))

(declare-fun b!539889 () Bool)

(declare-fun nullable!345 (Regex!1315) Bool)

(assert (=> b!539889 (= e!325975 (nullable!345 (regex!981 (rule!1689 token!491))))))

(declare-fun b!539890 () Bool)

(declare-fun e!325978 () Bool)

(declare-fun lt!224572 () Bool)

(assert (=> b!539890 (= e!325978 (not lt!224572))))

(declare-fun b!539891 () Bool)

(declare-fun res!229342 () Bool)

(declare-fun e!325977 () Bool)

(assert (=> b!539891 (=> (not res!229342) (not e!325977))))

(assert (=> b!539891 (= res!229342 (not call!38251))))

(declare-fun b!539892 () Bool)

(declare-fun res!229338 () Bool)

(assert (=> b!539892 (=> (not res!229338) (not e!325977))))

(assert (=> b!539892 (= res!229338 (isEmpty!3810 (tail!711 input!2705)))))

(declare-fun b!539893 () Bool)

(declare-fun e!325973 () Bool)

(assert (=> b!539893 (= e!325973 e!325978)))

(declare-fun c!102310 () Bool)

(assert (=> b!539893 (= c!102310 ((_ is EmptyLang!1315) (regex!981 (rule!1689 token!491))))))

(declare-fun b!539894 () Bool)

(assert (=> b!539894 (= e!325977 (= (head!1182 input!2705) (c!102296 (regex!981 (rule!1689 token!491)))))))

(declare-fun b!539895 () Bool)

(declare-fun res!229343 () Bool)

(declare-fun e!325972 () Bool)

(assert (=> b!539895 (=> res!229343 e!325972)))

(assert (=> b!539895 (= res!229343 (not ((_ is ElementMatch!1315) (regex!981 (rule!1689 token!491)))))))

(assert (=> b!539895 (= e!325978 e!325972)))

(declare-fun b!539896 () Bool)

(assert (=> b!539896 (= e!325976 (not (= (head!1182 input!2705) (c!102296 (regex!981 (rule!1689 token!491))))))))

(declare-fun b!539897 () Bool)

(assert (=> b!539897 (= e!325972 e!325974)))

(declare-fun res!229345 () Bool)

(assert (=> b!539897 (=> (not res!229345) (not e!325974))))

(assert (=> b!539897 (= res!229345 (not lt!224572))))

(declare-fun b!539898 () Bool)

(assert (=> b!539898 (= e!325973 (= lt!224572 call!38251))))

(declare-fun d!190142 () Bool)

(assert (=> d!190142 e!325973))

(declare-fun c!102312 () Bool)

(assert (=> d!190142 (= c!102312 ((_ is EmptyExpr!1315) (regex!981 (rule!1689 token!491))))))

(assert (=> d!190142 (= lt!224572 e!325975)))

(declare-fun c!102311 () Bool)

(assert (=> d!190142 (= c!102311 (isEmpty!3810 input!2705))))

(assert (=> d!190142 (validRegex!440 (regex!981 (rule!1689 token!491)))))

(assert (=> d!190142 (= (matchR!474 (regex!981 (rule!1689 token!491)) input!2705) lt!224572)))

(declare-fun b!539888 () Bool)

(declare-fun res!229340 () Bool)

(assert (=> b!539888 (=> res!229340 e!325972)))

(assert (=> b!539888 (= res!229340 e!325977)))

(declare-fun res!229344 () Bool)

(assert (=> b!539888 (=> (not res!229344) (not e!325977))))

(assert (=> b!539888 (= res!229344 lt!224572)))

(declare-fun b!539899 () Bool)

(declare-fun res!229341 () Bool)

(assert (=> b!539899 (=> res!229341 e!325976)))

(assert (=> b!539899 (= res!229341 (not (isEmpty!3810 (tail!711 input!2705))))))

(declare-fun bm!38246 () Bool)

(assert (=> bm!38246 (= call!38251 (isEmpty!3810 input!2705))))

(assert (= (and d!190142 c!102311) b!539889))

(assert (= (and d!190142 (not c!102311)) b!539887))

(assert (= (and d!190142 c!102312) b!539898))

(assert (= (and d!190142 (not c!102312)) b!539893))

(assert (= (and b!539893 c!102310) b!539890))

(assert (= (and b!539893 (not c!102310)) b!539895))

(assert (= (and b!539895 (not res!229343)) b!539888))

(assert (= (and b!539888 res!229344) b!539891))

(assert (= (and b!539891 res!229342) b!539892))

(assert (= (and b!539892 res!229338) b!539894))

(assert (= (and b!539888 (not res!229340)) b!539897))

(assert (= (and b!539897 res!229345) b!539886))

(assert (= (and b!539886 (not res!229339)) b!539899))

(assert (= (and b!539899 (not res!229341)) b!539896))

(assert (= (or b!539898 b!539886 b!539891) bm!38246))

(declare-fun m!787375 () Bool)

(assert (=> b!539892 m!787375))

(assert (=> b!539892 m!787375))

(declare-fun m!787377 () Bool)

(assert (=> b!539892 m!787377))

(declare-fun m!787379 () Bool)

(assert (=> b!539894 m!787379))

(assert (=> b!539887 m!787379))

(assert (=> b!539887 m!787379))

(declare-fun m!787381 () Bool)

(assert (=> b!539887 m!787381))

(assert (=> b!539887 m!787375))

(assert (=> b!539887 m!787381))

(assert (=> b!539887 m!787375))

(declare-fun m!787389 () Bool)

(assert (=> b!539887 m!787389))

(assert (=> b!539899 m!787375))

(assert (=> b!539899 m!787375))

(assert (=> b!539899 m!787377))

(assert (=> d!190142 m!787273))

(declare-fun m!787391 () Bool)

(assert (=> d!190142 m!787391))

(declare-fun m!787393 () Bool)

(assert (=> b!539889 m!787393))

(assert (=> bm!38246 m!787273))

(assert (=> b!539896 m!787379))

(assert (=> b!539761 d!190142))

(declare-fun d!190164 () Bool)

(declare-fun lt!224584 () List!5284)

(assert (=> d!190164 (= (++!1469 input!2705 lt!224584) input!2705)))

(declare-fun e!325990 () List!5284)

(assert (=> d!190164 (= lt!224584 e!325990)))

(declare-fun c!102318 () Bool)

(assert (=> d!190164 (= c!102318 ((_ is Cons!5274) input!2705))))

(assert (=> d!190164 (>= (size!4239 input!2705) (size!4239 input!2705))))

(assert (=> d!190164 (= (getSuffix!146 input!2705 input!2705) lt!224584)))

(declare-fun b!539918 () Bool)

(assert (=> b!539918 (= e!325990 (getSuffix!146 (tail!711 input!2705) (t!74333 input!2705)))))

(declare-fun b!539919 () Bool)

(assert (=> b!539919 (= e!325990 input!2705)))

(assert (= (and d!190164 c!102318) b!539918))

(assert (= (and d!190164 (not c!102318)) b!539919))

(declare-fun m!787425 () Bool)

(assert (=> d!190164 m!787425))

(declare-fun m!787427 () Bool)

(assert (=> d!190164 m!787427))

(assert (=> d!190164 m!787427))

(assert (=> b!539918 m!787375))

(assert (=> b!539918 m!787375))

(declare-fun m!787429 () Bool)

(assert (=> b!539918 m!787429))

(assert (=> b!539783 d!190164))

(declare-fun d!190178 () Bool)

(declare-fun isEmpty!3813 (Option!1331) Bool)

(assert (=> d!190178 (= (isDefined!1143 lt!224521) (not (isEmpty!3813 lt!224521)))))

(declare-fun bs!67473 () Bool)

(assert (= bs!67473 d!190178))

(declare-fun m!787443 () Bool)

(assert (=> bs!67473 m!787443))

(assert (=> b!539781 d!190178))

(declare-fun d!190188 () Bool)

(assert (=> d!190188 (= (isDefined!1143 lt!224512) (not (isEmpty!3813 lt!224512)))))

(declare-fun bs!67474 () Bool)

(assert (= bs!67474 d!190188))

(declare-fun m!787447 () Bool)

(assert (=> bs!67474 m!787447))

(assert (=> b!539785 d!190188))

(declare-fun b!540024 () Bool)

(declare-fun res!229428 () Bool)

(declare-fun e!326055 () Bool)

(assert (=> b!540024 (=> (not res!229428) (not e!326055))))

(declare-fun lt!224626 () Option!1331)

(assert (=> b!540024 (= res!229428 (= (++!1469 (list!2189 (charsOf!610 (_1!3430 (get!1986 lt!224626)))) (_2!3430 (get!1986 lt!224626))) lt!224519))))

(declare-fun b!540025 () Bool)

(declare-fun res!229430 () Bool)

(assert (=> b!540025 (=> (not res!229430) (not e!326055))))

(assert (=> b!540025 (= res!229430 (matchR!474 (regex!981 (rule!1689 (_1!3430 (get!1986 lt!224626)))) (list!2189 (charsOf!610 (_1!3430 (get!1986 lt!224626))))))))

(declare-fun bm!38258 () Bool)

(declare-fun call!38263 () Option!1331)

(assert (=> bm!38258 (= call!38263 (maxPrefixOneRule!280 thiss!22590 (h!10676 rules!3103) lt!224519))))

(declare-fun b!540026 () Bool)

(declare-fun e!326056 () Option!1331)

(declare-fun lt!224623 () Option!1331)

(declare-fun lt!224624 () Option!1331)

(assert (=> b!540026 (= e!326056 (ite (and ((_ is None!1330) lt!224623) ((_ is None!1330) lt!224624)) None!1330 (ite ((_ is None!1330) lt!224624) lt!224623 (ite ((_ is None!1330) lt!224623) lt!224624 (ite (>= (size!4238 (_1!3430 (v!16139 lt!224623))) (size!4238 (_1!3430 (v!16139 lt!224624)))) lt!224623 lt!224624)))))))

(assert (=> b!540026 (= lt!224623 call!38263)))

(assert (=> b!540026 (= lt!224624 (maxPrefix!565 thiss!22590 (t!74334 rules!3103) lt!224519))))

(declare-fun b!540027 () Bool)

(declare-fun res!229427 () Bool)

(assert (=> b!540027 (=> (not res!229427) (not e!326055))))

(assert (=> b!540027 (= res!229427 (= (list!2189 (charsOf!610 (_1!3430 (get!1986 lt!224626)))) (originalCharacters!1020 (_1!3430 (get!1986 lt!224626)))))))

(declare-fun b!540028 () Bool)

(declare-fun e!326054 () Bool)

(assert (=> b!540028 (= e!326054 e!326055)))

(declare-fun res!229426 () Bool)

(assert (=> b!540028 (=> (not res!229426) (not e!326055))))

(assert (=> b!540028 (= res!229426 (isDefined!1143 lt!224626))))

(declare-fun b!540029 () Bool)

(declare-fun res!229431 () Bool)

(assert (=> b!540029 (=> (not res!229431) (not e!326055))))

(assert (=> b!540029 (= res!229431 (= (value!32825 (_1!3430 (get!1986 lt!224626))) (apply!1256 (transformation!981 (rule!1689 (_1!3430 (get!1986 lt!224626)))) (seqFromList!1179 (originalCharacters!1020 (_1!3430 (get!1986 lt!224626)))))))))

(declare-fun b!540030 () Bool)

(assert (=> b!540030 (= e!326055 (contains!1225 rules!3103 (rule!1689 (_1!3430 (get!1986 lt!224626)))))))

(declare-fun d!190192 () Bool)

(assert (=> d!190192 e!326054))

(declare-fun res!229429 () Bool)

(assert (=> d!190192 (=> res!229429 e!326054)))

(assert (=> d!190192 (= res!229429 (isEmpty!3813 lt!224626))))

(assert (=> d!190192 (= lt!224626 e!326056)))

(declare-fun c!102335 () Bool)

(assert (=> d!190192 (= c!102335 (and ((_ is Cons!5275) rules!3103) ((_ is Nil!5275) (t!74334 rules!3103))))))

(declare-fun lt!224622 () Unit!9213)

(declare-fun lt!224625 () Unit!9213)

(assert (=> d!190192 (= lt!224622 lt!224625)))

(assert (=> d!190192 (isPrefix!623 lt!224519 lt!224519)))

(assert (=> d!190192 (= lt!224625 (lemmaIsPrefixRefl!363 lt!224519 lt!224519))))

(declare-fun rulesValidInductive!342 (LexerInterface!867 List!5285) Bool)

(assert (=> d!190192 (rulesValidInductive!342 thiss!22590 rules!3103)))

(assert (=> d!190192 (= (maxPrefix!565 thiss!22590 rules!3103 lt!224519) lt!224626)))

(declare-fun b!540031 () Bool)

(assert (=> b!540031 (= e!326056 call!38263)))

(declare-fun b!540032 () Bool)

(declare-fun res!229425 () Bool)

(assert (=> b!540032 (=> (not res!229425) (not e!326055))))

(assert (=> b!540032 (= res!229425 (< (size!4239 (_2!3430 (get!1986 lt!224626))) (size!4239 lt!224519)))))

(assert (= (and d!190192 c!102335) b!540031))

(assert (= (and d!190192 (not c!102335)) b!540026))

(assert (= (or b!540031 b!540026) bm!38258))

(assert (= (and d!190192 (not res!229429)) b!540028))

(assert (= (and b!540028 res!229426) b!540027))

(assert (= (and b!540027 res!229427) b!540032))

(assert (= (and b!540032 res!229425) b!540024))

(assert (= (and b!540024 res!229428) b!540029))

(assert (= (and b!540029 res!229431) b!540025))

(assert (= (and b!540025 res!229430) b!540030))

(declare-fun m!787505 () Bool)

(assert (=> b!540029 m!787505))

(declare-fun m!787507 () Bool)

(assert (=> b!540029 m!787507))

(assert (=> b!540029 m!787507))

(declare-fun m!787509 () Bool)

(assert (=> b!540029 m!787509))

(assert (=> b!540025 m!787505))

(declare-fun m!787511 () Bool)

(assert (=> b!540025 m!787511))

(assert (=> b!540025 m!787511))

(declare-fun m!787513 () Bool)

(assert (=> b!540025 m!787513))

(assert (=> b!540025 m!787513))

(declare-fun m!787515 () Bool)

(assert (=> b!540025 m!787515))

(assert (=> b!540024 m!787505))

(assert (=> b!540024 m!787511))

(assert (=> b!540024 m!787511))

(assert (=> b!540024 m!787513))

(assert (=> b!540024 m!787513))

(declare-fun m!787517 () Bool)

(assert (=> b!540024 m!787517))

(assert (=> b!540032 m!787505))

(declare-fun m!787519 () Bool)

(assert (=> b!540032 m!787519))

(declare-fun m!787521 () Bool)

(assert (=> b!540032 m!787521))

(declare-fun m!787523 () Bool)

(assert (=> bm!38258 m!787523))

(declare-fun m!787525 () Bool)

(assert (=> d!190192 m!787525))

(declare-fun m!787527 () Bool)

(assert (=> d!190192 m!787527))

(declare-fun m!787529 () Bool)

(assert (=> d!190192 m!787529))

(declare-fun m!787531 () Bool)

(assert (=> d!190192 m!787531))

(assert (=> b!540030 m!787505))

(declare-fun m!787533 () Bool)

(assert (=> b!540030 m!787533))

(declare-fun m!787535 () Bool)

(assert (=> b!540026 m!787535))

(declare-fun m!787537 () Bool)

(assert (=> b!540028 m!787537))

(assert (=> b!540027 m!787505))

(assert (=> b!540027 m!787511))

(assert (=> b!540027 m!787511))

(assert (=> b!540027 m!787513))

(assert (=> b!539785 d!190192))

(declare-fun b!540061 () Bool)

(declare-fun res!229450 () Bool)

(declare-fun e!326070 () Bool)

(assert (=> b!540061 (=> (not res!229450) (not e!326070))))

(declare-fun lt!224639 () List!5284)

(assert (=> b!540061 (= res!229450 (= (size!4239 lt!224639) (+ (size!4239 input!2705) (size!4239 suffix!1342))))))

(declare-fun b!540062 () Bool)

(assert (=> b!540062 (= e!326070 (or (not (= suffix!1342 Nil!5274)) (= lt!224639 input!2705)))))

(declare-fun d!190222 () Bool)

(assert (=> d!190222 e!326070))

(declare-fun res!229451 () Bool)

(assert (=> d!190222 (=> (not res!229451) (not e!326070))))

(declare-fun content!922 (List!5284) (InoxSet C!3552))

(assert (=> d!190222 (= res!229451 (= (content!922 lt!224639) ((_ map or) (content!922 input!2705) (content!922 suffix!1342))))))

(declare-fun e!326069 () List!5284)

(assert (=> d!190222 (= lt!224639 e!326069)))

(declare-fun c!102340 () Bool)

(assert (=> d!190222 (= c!102340 ((_ is Nil!5274) input!2705))))

(assert (=> d!190222 (= (++!1469 input!2705 suffix!1342) lt!224639)))

(declare-fun b!540059 () Bool)

(assert (=> b!540059 (= e!326069 suffix!1342)))

(declare-fun b!540060 () Bool)

(assert (=> b!540060 (= e!326069 (Cons!5274 (h!10675 input!2705) (++!1469 (t!74333 input!2705) suffix!1342)))))

(assert (= (and d!190222 c!102340) b!540059))

(assert (= (and d!190222 (not c!102340)) b!540060))

(assert (= (and d!190222 res!229451) b!540061))

(assert (= (and b!540061 res!229450) b!540062))

(declare-fun m!787621 () Bool)

(assert (=> b!540061 m!787621))

(assert (=> b!540061 m!787427))

(declare-fun m!787623 () Bool)

(assert (=> b!540061 m!787623))

(declare-fun m!787625 () Bool)

(assert (=> d!190222 m!787625))

(declare-fun m!787627 () Bool)

(assert (=> d!190222 m!787627))

(declare-fun m!787629 () Bool)

(assert (=> d!190222 m!787629))

(declare-fun m!787631 () Bool)

(assert (=> b!540060 m!787631))

(assert (=> b!539785 d!190222))

(declare-fun d!190228 () Bool)

(assert (=> d!190228 (= (get!1986 lt!224521) (v!16139 lt!224521))))

(assert (=> b!539764 d!190228))

(declare-fun d!190230 () Bool)

(assert (=> d!190230 (= (isEmpty!3810 input!2705) ((_ is Nil!5274) input!2705))))

(assert (=> b!539762 d!190230))

(declare-fun b!540074 () Bool)

(declare-fun e!326079 () Bool)

(assert (=> b!540074 (= e!326079 (>= (size!4239 input!2705) (size!4239 lt!224517)))))

(declare-fun b!540072 () Bool)

(declare-fun res!229461 () Bool)

(declare-fun e!326078 () Bool)

(assert (=> b!540072 (=> (not res!229461) (not e!326078))))

(assert (=> b!540072 (= res!229461 (= (head!1182 lt!224517) (head!1182 input!2705)))))

(declare-fun d!190232 () Bool)

(assert (=> d!190232 e!326079))

(declare-fun res!229463 () Bool)

(assert (=> d!190232 (=> res!229463 e!326079)))

(declare-fun lt!224645 () Bool)

(assert (=> d!190232 (= res!229463 (not lt!224645))))

(declare-fun e!326077 () Bool)

(assert (=> d!190232 (= lt!224645 e!326077)))

(declare-fun res!229460 () Bool)

(assert (=> d!190232 (=> res!229460 e!326077)))

(assert (=> d!190232 (= res!229460 ((_ is Nil!5274) lt!224517))))

(assert (=> d!190232 (= (isPrefix!623 lt!224517 input!2705) lt!224645)))

(declare-fun b!540073 () Bool)

(assert (=> b!540073 (= e!326078 (isPrefix!623 (tail!711 lt!224517) (tail!711 input!2705)))))

(declare-fun b!540071 () Bool)

(assert (=> b!540071 (= e!326077 e!326078)))

(declare-fun res!229462 () Bool)

(assert (=> b!540071 (=> (not res!229462) (not e!326078))))

(assert (=> b!540071 (= res!229462 (not ((_ is Nil!5274) input!2705)))))

(assert (= (and d!190232 (not res!229460)) b!540071))

(assert (= (and b!540071 res!229462) b!540072))

(assert (= (and b!540072 res!229461) b!540073))

(assert (= (and d!190232 (not res!229463)) b!540074))

(assert (=> b!540074 m!787427))

(assert (=> b!540074 m!787245))

(declare-fun m!787637 () Bool)

(assert (=> b!540072 m!787637))

(assert (=> b!540072 m!787379))

(declare-fun m!787639 () Bool)

(assert (=> b!540073 m!787639))

(assert (=> b!540073 m!787375))

(assert (=> b!540073 m!787639))

(assert (=> b!540073 m!787375))

(declare-fun m!787641 () Bool)

(assert (=> b!540073 m!787641))

(assert (=> b!539767 d!190232))

(declare-fun b!540077 () Bool)

(declare-fun res!229464 () Bool)

(declare-fun e!326082 () Bool)

(assert (=> b!540077 (=> (not res!229464) (not e!326082))))

(declare-fun lt!224647 () List!5284)

(assert (=> b!540077 (= res!229464 (= (size!4239 lt!224647) (+ (size!4239 lt!224526) (size!4239 lt!224514))))))

(declare-fun b!540078 () Bool)

(assert (=> b!540078 (= e!326082 (or (not (= lt!224514 Nil!5274)) (= lt!224647 lt!224526)))))

(declare-fun d!190238 () Bool)

(assert (=> d!190238 e!326082))

(declare-fun res!229465 () Bool)

(assert (=> d!190238 (=> (not res!229465) (not e!326082))))

(assert (=> d!190238 (= res!229465 (= (content!922 lt!224647) ((_ map or) (content!922 lt!224526) (content!922 lt!224514))))))

(declare-fun e!326081 () List!5284)

(assert (=> d!190238 (= lt!224647 e!326081)))

(declare-fun c!102341 () Bool)

(assert (=> d!190238 (= c!102341 ((_ is Nil!5274) lt!224526))))

(assert (=> d!190238 (= (++!1469 lt!224526 lt!224514) lt!224647)))

(declare-fun b!540075 () Bool)

(assert (=> b!540075 (= e!326081 lt!224514)))

(declare-fun b!540076 () Bool)

(assert (=> b!540076 (= e!326081 (Cons!5274 (h!10675 lt!224526) (++!1469 (t!74333 lt!224526) lt!224514)))))

(assert (= (and d!190238 c!102341) b!540075))

(assert (= (and d!190238 (not c!102341)) b!540076))

(assert (= (and d!190238 res!229465) b!540077))

(assert (= (and b!540077 res!229464) b!540078))

(declare-fun m!787647 () Bool)

(assert (=> b!540077 m!787647))

(assert (=> b!540077 m!787243))

(declare-fun m!787651 () Bool)

(assert (=> b!540077 m!787651))

(declare-fun m!787657 () Bool)

(assert (=> d!190238 m!787657))

(declare-fun m!787661 () Bool)

(assert (=> d!190238 m!787661))

(declare-fun m!787665 () Bool)

(assert (=> d!190238 m!787665))

(declare-fun m!787667 () Bool)

(assert (=> b!540076 m!787667))

(assert (=> b!539786 d!190238))

(declare-fun b!540230 () Bool)

(declare-fun res!229536 () Bool)

(declare-fun e!326168 () Bool)

(assert (=> b!540230 (=> (not res!229536) (not e!326168))))

(declare-fun lt!224677 () Option!1331)

(assert (=> b!540230 (= res!229536 (< (size!4239 (_2!3430 (get!1986 lt!224677))) (size!4239 input!2705)))))

(declare-fun d!190244 () Bool)

(declare-fun e!326167 () Bool)

(assert (=> d!190244 e!326167))

(declare-fun res!229540 () Bool)

(assert (=> d!190244 (=> res!229540 e!326167)))

(assert (=> d!190244 (= res!229540 (isEmpty!3813 lt!224677))))

(declare-fun e!326170 () Option!1331)

(assert (=> d!190244 (= lt!224677 e!326170)))

(declare-fun c!102365 () Bool)

(declare-datatypes ((tuple2!6336 0))(
  ( (tuple2!6337 (_1!3432 List!5284) (_2!3432 List!5284)) )
))
(declare-fun lt!224679 () tuple2!6336)

(assert (=> d!190244 (= c!102365 (isEmpty!3810 (_1!3432 lt!224679)))))

(declare-fun findLongestMatch!108 (Regex!1315 List!5284) tuple2!6336)

(assert (=> d!190244 (= lt!224679 (findLongestMatch!108 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))) input!2705))))

(assert (=> d!190244 (ruleValid!201 thiss!22590 (rule!1689 (_1!3430 (v!16139 lt!224521))))))

(assert (=> d!190244 (= (maxPrefixOneRule!280 thiss!22590 (rule!1689 (_1!3430 (v!16139 lt!224521))) input!2705) lt!224677)))

(declare-fun b!540231 () Bool)

(assert (=> b!540231 (= e!326168 (= (size!4238 (_1!3430 (get!1986 lt!224677))) (size!4239 (originalCharacters!1020 (_1!3430 (get!1986 lt!224677))))))))

(declare-fun b!540232 () Bool)

(declare-fun e!326169 () Bool)

(declare-fun findLongestMatchInner!129 (Regex!1315 List!5284 Int List!5284 List!5284 Int) tuple2!6336)

(assert (=> b!540232 (= e!326169 (matchR!474 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))) (_1!3432 (findLongestMatchInner!129 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))) Nil!5274 (size!4239 Nil!5274) input!2705 input!2705 (size!4239 input!2705)))))))

(declare-fun b!540233 () Bool)

(declare-fun res!229535 () Bool)

(assert (=> b!540233 (=> (not res!229535) (not e!326168))))

(assert (=> b!540233 (= res!229535 (= (rule!1689 (_1!3430 (get!1986 lt!224677))) (rule!1689 (_1!3430 (v!16139 lt!224521)))))))

(declare-fun b!540234 () Bool)

(declare-fun res!229541 () Bool)

(assert (=> b!540234 (=> (not res!229541) (not e!326168))))

(assert (=> b!540234 (= res!229541 (= (++!1469 (list!2189 (charsOf!610 (_1!3430 (get!1986 lt!224677)))) (_2!3430 (get!1986 lt!224677))) input!2705))))

(declare-fun b!540235 () Bool)

(declare-fun size!4241 (BalanceConc!3404) Int)

(assert (=> b!540235 (= e!326170 (Some!1330 (tuple2!6333 (Token!1699 (apply!1256 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))) (seqFromList!1179 (_1!3432 lt!224679))) (rule!1689 (_1!3430 (v!16139 lt!224521))) (size!4241 (seqFromList!1179 (_1!3432 lt!224679))) (_1!3432 lt!224679)) (_2!3432 lt!224679))))))

(declare-fun lt!224678 () Unit!9213)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!113 (Regex!1315 List!5284) Unit!9213)

(assert (=> b!540235 (= lt!224678 (longestMatchIsAcceptedByMatchOrIsEmpty!113 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))) input!2705))))

(declare-fun res!229538 () Bool)

(assert (=> b!540235 (= res!229538 (isEmpty!3810 (_1!3432 (findLongestMatchInner!129 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))) Nil!5274 (size!4239 Nil!5274) input!2705 input!2705 (size!4239 input!2705)))))))

(assert (=> b!540235 (=> res!229538 e!326169)))

(assert (=> b!540235 e!326169))

(declare-fun lt!224675 () Unit!9213)

(assert (=> b!540235 (= lt!224675 lt!224678)))

(declare-fun lt!224676 () Unit!9213)

(declare-fun lemmaSemiInverse!110 (TokenValueInjection!1778 BalanceConc!3404) Unit!9213)

(assert (=> b!540235 (= lt!224676 (lemmaSemiInverse!110 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))) (seqFromList!1179 (_1!3432 lt!224679))))))

(declare-fun b!540236 () Bool)

(assert (=> b!540236 (= e!326167 e!326168)))

(declare-fun res!229537 () Bool)

(assert (=> b!540236 (=> (not res!229537) (not e!326168))))

(assert (=> b!540236 (= res!229537 (matchR!474 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))) (list!2189 (charsOf!610 (_1!3430 (get!1986 lt!224677))))))))

(declare-fun b!540237 () Bool)

(assert (=> b!540237 (= e!326170 None!1330)))

(declare-fun b!540238 () Bool)

(declare-fun res!229539 () Bool)

(assert (=> b!540238 (=> (not res!229539) (not e!326168))))

(assert (=> b!540238 (= res!229539 (= (value!32825 (_1!3430 (get!1986 lt!224677))) (apply!1256 (transformation!981 (rule!1689 (_1!3430 (get!1986 lt!224677)))) (seqFromList!1179 (originalCharacters!1020 (_1!3430 (get!1986 lt!224677)))))))))

(assert (= (and d!190244 c!102365) b!540237))

(assert (= (and d!190244 (not c!102365)) b!540235))

(assert (= (and b!540235 (not res!229538)) b!540232))

(assert (= (and d!190244 (not res!229540)) b!540236))

(assert (= (and b!540236 res!229537) b!540234))

(assert (= (and b!540234 res!229541) b!540230))

(assert (= (and b!540230 res!229536) b!540233))

(assert (= (and b!540233 res!229535) b!540238))

(assert (= (and b!540238 res!229539) b!540231))

(declare-fun m!787749 () Bool)

(assert (=> b!540234 m!787749))

(declare-fun m!787751 () Bool)

(assert (=> b!540234 m!787751))

(assert (=> b!540234 m!787751))

(declare-fun m!787753 () Bool)

(assert (=> b!540234 m!787753))

(assert (=> b!540234 m!787753))

(declare-fun m!787755 () Bool)

(assert (=> b!540234 m!787755))

(assert (=> b!540230 m!787749))

(declare-fun m!787757 () Bool)

(assert (=> b!540230 m!787757))

(assert (=> b!540230 m!787427))

(declare-fun m!787759 () Bool)

(assert (=> b!540235 m!787759))

(declare-fun m!787761 () Bool)

(assert (=> b!540235 m!787761))

(assert (=> b!540235 m!787759))

(declare-fun m!787763 () Bool)

(assert (=> b!540235 m!787763))

(assert (=> b!540235 m!787759))

(declare-fun m!787765 () Bool)

(assert (=> b!540235 m!787765))

(assert (=> b!540235 m!787759))

(declare-fun m!787767 () Bool)

(assert (=> b!540235 m!787767))

(assert (=> b!540235 m!787767))

(assert (=> b!540235 m!787427))

(declare-fun m!787769 () Bool)

(assert (=> b!540235 m!787769))

(declare-fun m!787771 () Bool)

(assert (=> b!540235 m!787771))

(declare-fun m!787773 () Bool)

(assert (=> b!540235 m!787773))

(assert (=> b!540235 m!787427))

(declare-fun m!787775 () Bool)

(assert (=> d!190244 m!787775))

(declare-fun m!787777 () Bool)

(assert (=> d!190244 m!787777))

(declare-fun m!787779 () Bool)

(assert (=> d!190244 m!787779))

(assert (=> d!190244 m!787259))

(assert (=> b!540238 m!787749))

(declare-fun m!787781 () Bool)

(assert (=> b!540238 m!787781))

(assert (=> b!540238 m!787781))

(declare-fun m!787783 () Bool)

(assert (=> b!540238 m!787783))

(assert (=> b!540236 m!787749))

(assert (=> b!540236 m!787751))

(assert (=> b!540236 m!787751))

(assert (=> b!540236 m!787753))

(assert (=> b!540236 m!787753))

(declare-fun m!787785 () Bool)

(assert (=> b!540236 m!787785))

(assert (=> b!540233 m!787749))

(assert (=> b!540231 m!787749))

(declare-fun m!787787 () Bool)

(assert (=> b!540231 m!787787))

(assert (=> b!540232 m!787767))

(assert (=> b!540232 m!787427))

(assert (=> b!540232 m!787767))

(assert (=> b!540232 m!787427))

(assert (=> b!540232 m!787769))

(declare-fun m!787789 () Bool)

(assert (=> b!540232 m!787789))

(assert (=> b!539765 d!190244))

(declare-fun b!540239 () Bool)

(declare-fun res!229543 () Bool)

(declare-fun e!326172 () Bool)

(assert (=> b!540239 (=> (not res!229543) (not e!326172))))

(declare-fun lt!224682 () Option!1331)

(assert (=> b!540239 (= res!229543 (< (size!4239 (_2!3430 (get!1986 lt!224682))) (size!4239 lt!224519)))))

(declare-fun d!190286 () Bool)

(declare-fun e!326171 () Bool)

(assert (=> d!190286 e!326171))

(declare-fun res!229547 () Bool)

(assert (=> d!190286 (=> res!229547 e!326171)))

(assert (=> d!190286 (= res!229547 (isEmpty!3813 lt!224682))))

(declare-fun e!326174 () Option!1331)

(assert (=> d!190286 (= lt!224682 e!326174)))

(declare-fun c!102366 () Bool)

(declare-fun lt!224684 () tuple2!6336)

(assert (=> d!190286 (= c!102366 (isEmpty!3810 (_1!3432 lt!224684)))))

(assert (=> d!190286 (= lt!224684 (findLongestMatch!108 (regex!981 (rule!1689 token!491)) lt!224519))))

(assert (=> d!190286 (ruleValid!201 thiss!22590 (rule!1689 token!491))))

(assert (=> d!190286 (= (maxPrefixOneRule!280 thiss!22590 (rule!1689 token!491) lt!224519) lt!224682)))

(declare-fun b!540240 () Bool)

(assert (=> b!540240 (= e!326172 (= (size!4238 (_1!3430 (get!1986 lt!224682))) (size!4239 (originalCharacters!1020 (_1!3430 (get!1986 lt!224682))))))))

(declare-fun b!540241 () Bool)

(declare-fun e!326173 () Bool)

(assert (=> b!540241 (= e!326173 (matchR!474 (regex!981 (rule!1689 token!491)) (_1!3432 (findLongestMatchInner!129 (regex!981 (rule!1689 token!491)) Nil!5274 (size!4239 Nil!5274) lt!224519 lt!224519 (size!4239 lt!224519)))))))

(declare-fun b!540242 () Bool)

(declare-fun res!229542 () Bool)

(assert (=> b!540242 (=> (not res!229542) (not e!326172))))

(assert (=> b!540242 (= res!229542 (= (rule!1689 (_1!3430 (get!1986 lt!224682))) (rule!1689 token!491)))))

(declare-fun b!540243 () Bool)

(declare-fun res!229548 () Bool)

(assert (=> b!540243 (=> (not res!229548) (not e!326172))))

(assert (=> b!540243 (= res!229548 (= (++!1469 (list!2189 (charsOf!610 (_1!3430 (get!1986 lt!224682)))) (_2!3430 (get!1986 lt!224682))) lt!224519))))

(declare-fun b!540244 () Bool)

(assert (=> b!540244 (= e!326174 (Some!1330 (tuple2!6333 (Token!1699 (apply!1256 (transformation!981 (rule!1689 token!491)) (seqFromList!1179 (_1!3432 lt!224684))) (rule!1689 token!491) (size!4241 (seqFromList!1179 (_1!3432 lt!224684))) (_1!3432 lt!224684)) (_2!3432 lt!224684))))))

(declare-fun lt!224683 () Unit!9213)

(assert (=> b!540244 (= lt!224683 (longestMatchIsAcceptedByMatchOrIsEmpty!113 (regex!981 (rule!1689 token!491)) lt!224519))))

(declare-fun res!229545 () Bool)

(assert (=> b!540244 (= res!229545 (isEmpty!3810 (_1!3432 (findLongestMatchInner!129 (regex!981 (rule!1689 token!491)) Nil!5274 (size!4239 Nil!5274) lt!224519 lt!224519 (size!4239 lt!224519)))))))

(assert (=> b!540244 (=> res!229545 e!326173)))

(assert (=> b!540244 e!326173))

(declare-fun lt!224680 () Unit!9213)

(assert (=> b!540244 (= lt!224680 lt!224683)))

(declare-fun lt!224681 () Unit!9213)

(assert (=> b!540244 (= lt!224681 (lemmaSemiInverse!110 (transformation!981 (rule!1689 token!491)) (seqFromList!1179 (_1!3432 lt!224684))))))

(declare-fun b!540245 () Bool)

(assert (=> b!540245 (= e!326171 e!326172)))

(declare-fun res!229544 () Bool)

(assert (=> b!540245 (=> (not res!229544) (not e!326172))))

(assert (=> b!540245 (= res!229544 (matchR!474 (regex!981 (rule!1689 token!491)) (list!2189 (charsOf!610 (_1!3430 (get!1986 lt!224682))))))))

(declare-fun b!540246 () Bool)

(assert (=> b!540246 (= e!326174 None!1330)))

(declare-fun b!540247 () Bool)

(declare-fun res!229546 () Bool)

(assert (=> b!540247 (=> (not res!229546) (not e!326172))))

(assert (=> b!540247 (= res!229546 (= (value!32825 (_1!3430 (get!1986 lt!224682))) (apply!1256 (transformation!981 (rule!1689 (_1!3430 (get!1986 lt!224682)))) (seqFromList!1179 (originalCharacters!1020 (_1!3430 (get!1986 lt!224682)))))))))

(assert (= (and d!190286 c!102366) b!540246))

(assert (= (and d!190286 (not c!102366)) b!540244))

(assert (= (and b!540244 (not res!229545)) b!540241))

(assert (= (and d!190286 (not res!229547)) b!540245))

(assert (= (and b!540245 res!229544) b!540243))

(assert (= (and b!540243 res!229548) b!540239))

(assert (= (and b!540239 res!229543) b!540242))

(assert (= (and b!540242 res!229542) b!540247))

(assert (= (and b!540247 res!229546) b!540240))

(declare-fun m!787791 () Bool)

(assert (=> b!540243 m!787791))

(declare-fun m!787793 () Bool)

(assert (=> b!540243 m!787793))

(assert (=> b!540243 m!787793))

(declare-fun m!787795 () Bool)

(assert (=> b!540243 m!787795))

(assert (=> b!540243 m!787795))

(declare-fun m!787797 () Bool)

(assert (=> b!540243 m!787797))

(assert (=> b!540239 m!787791))

(declare-fun m!787799 () Bool)

(assert (=> b!540239 m!787799))

(assert (=> b!540239 m!787521))

(declare-fun m!787801 () Bool)

(assert (=> b!540244 m!787801))

(declare-fun m!787803 () Bool)

(assert (=> b!540244 m!787803))

(assert (=> b!540244 m!787801))

(declare-fun m!787805 () Bool)

(assert (=> b!540244 m!787805))

(assert (=> b!540244 m!787801))

(declare-fun m!787807 () Bool)

(assert (=> b!540244 m!787807))

(assert (=> b!540244 m!787801))

(assert (=> b!540244 m!787767))

(assert (=> b!540244 m!787767))

(assert (=> b!540244 m!787521))

(declare-fun m!787809 () Bool)

(assert (=> b!540244 m!787809))

(declare-fun m!787811 () Bool)

(assert (=> b!540244 m!787811))

(declare-fun m!787813 () Bool)

(assert (=> b!540244 m!787813))

(assert (=> b!540244 m!787521))

(declare-fun m!787815 () Bool)

(assert (=> d!190286 m!787815))

(declare-fun m!787817 () Bool)

(assert (=> d!190286 m!787817))

(declare-fun m!787819 () Bool)

(assert (=> d!190286 m!787819))

(assert (=> d!190286 m!787221))

(assert (=> b!540247 m!787791))

(declare-fun m!787821 () Bool)

(assert (=> b!540247 m!787821))

(assert (=> b!540247 m!787821))

(declare-fun m!787823 () Bool)

(assert (=> b!540247 m!787823))

(assert (=> b!540245 m!787791))

(assert (=> b!540245 m!787793))

(assert (=> b!540245 m!787793))

(assert (=> b!540245 m!787795))

(assert (=> b!540245 m!787795))

(declare-fun m!787825 () Bool)

(assert (=> b!540245 m!787825))

(assert (=> b!540242 m!787791))

(assert (=> b!540240 m!787791))

(declare-fun m!787827 () Bool)

(assert (=> b!540240 m!787827))

(assert (=> b!540241 m!787767))

(assert (=> b!540241 m!787521))

(assert (=> b!540241 m!787767))

(assert (=> b!540241 m!787521))

(assert (=> b!540241 m!787809))

(declare-fun m!787829 () Bool)

(assert (=> b!540241 m!787829))

(assert (=> b!539765 d!190286))

(declare-fun d!190288 () Bool)

(declare-fun fromListB!519 (List!5284) BalanceConc!3404)

(assert (=> d!190288 (= (seqFromList!1179 lt!224517) (fromListB!519 lt!224517))))

(declare-fun bs!67483 () Bool)

(assert (= bs!67483 d!190288))

(declare-fun m!787831 () Bool)

(assert (=> bs!67483 m!787831))

(assert (=> b!539765 d!190288))

(declare-fun d!190290 () Bool)

(assert (=> d!190290 (= (maxPrefixOneRule!280 thiss!22590 (rule!1689 (_1!3430 (v!16139 lt!224521))) input!2705) (Some!1330 (tuple2!6333 (Token!1699 (apply!1256 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))) (seqFromList!1179 lt!224526)) (rule!1689 (_1!3430 (v!16139 lt!224521))) (size!4239 lt!224526) lt!224526) (_2!3430 (v!16139 lt!224521)))))))

(declare-fun lt!224687 () Unit!9213)

(declare-fun choose!3815 (LexerInterface!867 List!5285 List!5284 List!5284 List!5284 Rule!1762) Unit!9213)

(assert (=> d!190290 (= lt!224687 (choose!3815 thiss!22590 rules!3103 lt!224526 input!2705 (_2!3430 (v!16139 lt!224521)) (rule!1689 (_1!3430 (v!16139 lt!224521)))))))

(assert (=> d!190290 (not (isEmpty!3811 rules!3103))))

(assert (=> d!190290 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!32 thiss!22590 rules!3103 lt!224526 input!2705 (_2!3430 (v!16139 lt!224521)) (rule!1689 (_1!3430 (v!16139 lt!224521)))) lt!224687)))

(declare-fun bs!67484 () Bool)

(assert (= bs!67484 d!190290))

(assert (=> bs!67484 m!787225))

(assert (=> bs!67484 m!787269))

(assert (=> bs!67484 m!787167))

(assert (=> bs!67484 m!787243))

(assert (=> bs!67484 m!787225))

(assert (=> bs!67484 m!787249))

(declare-fun m!787833 () Bool)

(assert (=> bs!67484 m!787833))

(assert (=> b!539765 d!190290))

(declare-fun d!190292 () Bool)

(assert (=> d!190292 (= suffix!1342 lt!224527)))

(declare-fun lt!224690 () Unit!9213)

(declare-fun choose!3816 (List!5284 List!5284 List!5284 List!5284 List!5284) Unit!9213)

(assert (=> d!190292 (= lt!224690 (choose!3816 lt!224517 suffix!1342 lt!224517 lt!224527 lt!224519))))

(assert (=> d!190292 (isPrefix!623 lt!224517 lt!224519)))

(assert (=> d!190292 (= (lemmaSamePrefixThenSameSuffix!350 lt!224517 suffix!1342 lt!224517 lt!224527 lt!224519) lt!224690)))

(declare-fun bs!67485 () Bool)

(assert (= bs!67485 d!190292))

(declare-fun m!787835 () Bool)

(assert (=> bs!67485 m!787835))

(declare-fun m!787837 () Bool)

(assert (=> bs!67485 m!787837))

(assert (=> b!539765 d!190292))

(declare-fun d!190294 () Bool)

(declare-fun lt!224691 () List!5284)

(assert (=> d!190294 (= (++!1469 lt!224517 lt!224691) lt!224519)))

(declare-fun e!326175 () List!5284)

(assert (=> d!190294 (= lt!224691 e!326175)))

(declare-fun c!102367 () Bool)

(assert (=> d!190294 (= c!102367 ((_ is Cons!5274) lt!224517))))

(assert (=> d!190294 (>= (size!4239 lt!224519) (size!4239 lt!224517))))

(assert (=> d!190294 (= (getSuffix!146 lt!224519 lt!224517) lt!224691)))

(declare-fun b!540248 () Bool)

(assert (=> b!540248 (= e!326175 (getSuffix!146 (tail!711 lt!224519) (t!74333 lt!224517)))))

(declare-fun b!540249 () Bool)

(assert (=> b!540249 (= e!326175 lt!224519)))

(assert (= (and d!190294 c!102367) b!540248))

(assert (= (and d!190294 (not c!102367)) b!540249))

(declare-fun m!787839 () Bool)

(assert (=> d!190294 m!787839))

(assert (=> d!190294 m!787521))

(assert (=> d!190294 m!787245))

(declare-fun m!787841 () Bool)

(assert (=> b!540248 m!787841))

(assert (=> b!540248 m!787841))

(declare-fun m!787843 () Bool)

(assert (=> b!540248 m!787843))

(assert (=> b!539765 d!190294))

(declare-fun d!190296 () Bool)

(assert (=> d!190296 (= (maxPrefixOneRule!280 thiss!22590 (rule!1689 token!491) lt!224519) (Some!1330 (tuple2!6333 (Token!1699 (apply!1256 (transformation!981 (rule!1689 token!491)) (seqFromList!1179 lt!224517)) (rule!1689 token!491) (size!4239 lt!224517) lt!224517) suffix!1342)))))

(declare-fun lt!224692 () Unit!9213)

(assert (=> d!190296 (= lt!224692 (choose!3815 thiss!22590 rules!3103 lt!224517 lt!224519 suffix!1342 (rule!1689 token!491)))))

(assert (=> d!190296 (not (isEmpty!3811 rules!3103))))

(assert (=> d!190296 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!32 thiss!22590 rules!3103 lt!224517 lt!224519 suffix!1342 (rule!1689 token!491)) lt!224692)))

(declare-fun bs!67486 () Bool)

(assert (= bs!67486 d!190296))

(assert (=> bs!67486 m!787163))

(assert (=> bs!67486 m!787269))

(assert (=> bs!67486 m!787169))

(assert (=> bs!67486 m!787245))

(assert (=> bs!67486 m!787163))

(assert (=> bs!67486 m!787165))

(declare-fun m!787845 () Bool)

(assert (=> bs!67486 m!787845))

(assert (=> b!539765 d!190296))

(declare-fun d!190298 () Bool)

(declare-fun dynLambda!3100 (Int BalanceConc!3404) TokenValue!1005)

(assert (=> d!190298 (= (apply!1256 (transformation!981 (rule!1689 token!491)) (seqFromList!1179 lt!224517)) (dynLambda!3100 (toValue!1828 (transformation!981 (rule!1689 token!491))) (seqFromList!1179 lt!224517)))))

(declare-fun b_lambda!20791 () Bool)

(assert (=> (not b_lambda!20791) (not d!190298)))

(declare-fun t!74360 () Bool)

(declare-fun tb!47643 () Bool)

(assert (=> (and b!539772 (= (toValue!1828 (transformation!981 (h!10676 rules!3103))) (toValue!1828 (transformation!981 (rule!1689 token!491)))) t!74360) tb!47643))

(declare-fun result!53228 () Bool)

(assert (=> tb!47643 (= result!53228 (inv!21 (dynLambda!3100 (toValue!1828 (transformation!981 (rule!1689 token!491))) (seqFromList!1179 lt!224517))))))

(declare-fun m!787847 () Bool)

(assert (=> tb!47643 m!787847))

(assert (=> d!190298 t!74360))

(declare-fun b_and!52795 () Bool)

(assert (= b_and!52763 (and (=> t!74360 result!53228) b_and!52795)))

(declare-fun t!74362 () Bool)

(declare-fun tb!47645 () Bool)

(assert (=> (and b!539766 (= (toValue!1828 (transformation!981 (rule!1689 token!491))) (toValue!1828 (transformation!981 (rule!1689 token!491)))) t!74362) tb!47645))

(declare-fun result!53232 () Bool)

(assert (= result!53232 result!53228))

(assert (=> d!190298 t!74362))

(declare-fun b_and!52797 () Bool)

(assert (= b_and!52767 (and (=> t!74362 result!53232) b_and!52797)))

(assert (=> d!190298 m!787163))

(declare-fun m!787849 () Bool)

(assert (=> d!190298 m!787849))

(assert (=> b!539765 d!190298))

(declare-fun d!190300 () Bool)

(declare-fun lt!224695 () Int)

(assert (=> d!190300 (>= lt!224695 0)))

(declare-fun e!326181 () Int)

(assert (=> d!190300 (= lt!224695 e!326181)))

(declare-fun c!102370 () Bool)

(assert (=> d!190300 (= c!102370 ((_ is Nil!5274) (originalCharacters!1020 token!491)))))

(assert (=> d!190300 (= (size!4239 (originalCharacters!1020 token!491)) lt!224695)))

(declare-fun b!540256 () Bool)

(assert (=> b!540256 (= e!326181 0)))

(declare-fun b!540257 () Bool)

(assert (=> b!540257 (= e!326181 (+ 1 (size!4239 (t!74333 (originalCharacters!1020 token!491)))))))

(assert (= (and d!190300 c!102370) b!540256))

(assert (= (and d!190300 (not c!102370)) b!540257))

(declare-fun m!787851 () Bool)

(assert (=> b!540257 m!787851))

(assert (=> b!539787 d!190300))

(declare-fun b!540260 () Bool)

(declare-fun res!229549 () Bool)

(declare-fun e!326183 () Bool)

(assert (=> b!540260 (=> (not res!229549) (not e!326183))))

(declare-fun lt!224696 () List!5284)

(assert (=> b!540260 (= res!229549 (= (size!4239 lt!224696) (+ (size!4239 lt!224517) (size!4239 suffix!1342))))))

(declare-fun b!540261 () Bool)

(assert (=> b!540261 (= e!326183 (or (not (= suffix!1342 Nil!5274)) (= lt!224696 lt!224517)))))

(declare-fun d!190302 () Bool)

(assert (=> d!190302 e!326183))

(declare-fun res!229550 () Bool)

(assert (=> d!190302 (=> (not res!229550) (not e!326183))))

(assert (=> d!190302 (= res!229550 (= (content!922 lt!224696) ((_ map or) (content!922 lt!224517) (content!922 suffix!1342))))))

(declare-fun e!326182 () List!5284)

(assert (=> d!190302 (= lt!224696 e!326182)))

(declare-fun c!102371 () Bool)

(assert (=> d!190302 (= c!102371 ((_ is Nil!5274) lt!224517))))

(assert (=> d!190302 (= (++!1469 lt!224517 suffix!1342) lt!224696)))

(declare-fun b!540258 () Bool)

(assert (=> b!540258 (= e!326182 suffix!1342)))

(declare-fun b!540259 () Bool)

(assert (=> b!540259 (= e!326182 (Cons!5274 (h!10675 lt!224517) (++!1469 (t!74333 lt!224517) suffix!1342)))))

(assert (= (and d!190302 c!102371) b!540258))

(assert (= (and d!190302 (not c!102371)) b!540259))

(assert (= (and d!190302 res!229550) b!540260))

(assert (= (and b!540260 res!229549) b!540261))

(declare-fun m!787853 () Bool)

(assert (=> b!540260 m!787853))

(assert (=> b!540260 m!787245))

(assert (=> b!540260 m!787623))

(declare-fun m!787855 () Bool)

(assert (=> d!190302 m!787855))

(declare-fun m!787857 () Bool)

(assert (=> d!190302 m!787857))

(assert (=> d!190302 m!787629))

(declare-fun m!787859 () Bool)

(assert (=> b!540259 m!787859))

(assert (=> b!539769 d!190302))

(declare-fun d!190304 () Bool)

(declare-fun list!2191 (Conc!1698) List!5284)

(assert (=> d!190304 (= (list!2189 (charsOf!610 token!491)) (list!2191 (c!102297 (charsOf!610 token!491))))))

(declare-fun bs!67487 () Bool)

(assert (= bs!67487 d!190304))

(declare-fun m!787861 () Bool)

(assert (=> bs!67487 m!787861))

(assert (=> b!539770 d!190304))

(declare-fun d!190306 () Bool)

(declare-fun lt!224699 () BalanceConc!3404)

(assert (=> d!190306 (= (list!2189 lt!224699) (originalCharacters!1020 token!491))))

(declare-fun dynLambda!3101 (Int TokenValue!1005) BalanceConc!3404)

(assert (=> d!190306 (= lt!224699 (dynLambda!3101 (toChars!1687 (transformation!981 (rule!1689 token!491))) (value!32825 token!491)))))

(assert (=> d!190306 (= (charsOf!610 token!491) lt!224699)))

(declare-fun b_lambda!20793 () Bool)

(assert (=> (not b_lambda!20793) (not d!190306)))

(declare-fun tb!47647 () Bool)

(declare-fun t!74364 () Bool)

(assert (=> (and b!539772 (= (toChars!1687 (transformation!981 (h!10676 rules!3103))) (toChars!1687 (transformation!981 (rule!1689 token!491)))) t!74364) tb!47647))

(declare-fun b!540266 () Bool)

(declare-fun e!326186 () Bool)

(declare-fun tp!172108 () Bool)

(declare-fun inv!6621 (Conc!1698) Bool)

(assert (=> b!540266 (= e!326186 (and (inv!6621 (c!102297 (dynLambda!3101 (toChars!1687 (transformation!981 (rule!1689 token!491))) (value!32825 token!491)))) tp!172108))))

(declare-fun result!53234 () Bool)

(declare-fun inv!6622 (BalanceConc!3404) Bool)

(assert (=> tb!47647 (= result!53234 (and (inv!6622 (dynLambda!3101 (toChars!1687 (transformation!981 (rule!1689 token!491))) (value!32825 token!491))) e!326186))))

(assert (= tb!47647 b!540266))

(declare-fun m!787863 () Bool)

(assert (=> b!540266 m!787863))

(declare-fun m!787865 () Bool)

(assert (=> tb!47647 m!787865))

(assert (=> d!190306 t!74364))

(declare-fun b_and!52799 () Bool)

(assert (= b_and!52765 (and (=> t!74364 result!53234) b_and!52799)))

(declare-fun t!74366 () Bool)

(declare-fun tb!47649 () Bool)

(assert (=> (and b!539766 (= (toChars!1687 (transformation!981 (rule!1689 token!491))) (toChars!1687 (transformation!981 (rule!1689 token!491)))) t!74366) tb!47649))

(declare-fun result!53238 () Bool)

(assert (= result!53238 result!53234))

(assert (=> d!190306 t!74366))

(declare-fun b_and!52801 () Bool)

(assert (= b_and!52769 (and (=> t!74366 result!53238) b_and!52801)))

(declare-fun m!787867 () Bool)

(assert (=> d!190306 m!787867))

(declare-fun m!787869 () Bool)

(assert (=> d!190306 m!787869))

(assert (=> b!539770 d!190306))

(declare-fun d!190308 () Bool)

(declare-fun res!229555 () Bool)

(declare-fun e!326189 () Bool)

(assert (=> d!190308 (=> (not res!229555) (not e!326189))))

(assert (=> d!190308 (= res!229555 (not (isEmpty!3810 (originalCharacters!1020 token!491))))))

(assert (=> d!190308 (= (inv!6618 token!491) e!326189)))

(declare-fun b!540271 () Bool)

(declare-fun res!229556 () Bool)

(assert (=> b!540271 (=> (not res!229556) (not e!326189))))

(assert (=> b!540271 (= res!229556 (= (originalCharacters!1020 token!491) (list!2189 (dynLambda!3101 (toChars!1687 (transformation!981 (rule!1689 token!491))) (value!32825 token!491)))))))

(declare-fun b!540272 () Bool)

(assert (=> b!540272 (= e!326189 (= (size!4238 token!491) (size!4239 (originalCharacters!1020 token!491))))))

(assert (= (and d!190308 res!229555) b!540271))

(assert (= (and b!540271 res!229556) b!540272))

(declare-fun b_lambda!20795 () Bool)

(assert (=> (not b_lambda!20795) (not b!540271)))

(assert (=> b!540271 t!74364))

(declare-fun b_and!52803 () Bool)

(assert (= b_and!52799 (and (=> t!74364 result!53234) b_and!52803)))

(assert (=> b!540271 t!74366))

(declare-fun b_and!52805 () Bool)

(assert (= b_and!52801 (and (=> t!74366 result!53238) b_and!52805)))

(declare-fun m!787871 () Bool)

(assert (=> d!190308 m!787871))

(assert (=> b!540271 m!787869))

(assert (=> b!540271 m!787869))

(declare-fun m!787873 () Bool)

(assert (=> b!540271 m!787873))

(assert (=> b!540272 m!787281))

(assert (=> start!49808 d!190308))

(declare-fun d!190310 () Bool)

(assert (=> d!190310 (= (inv!6614 (tag!1243 (h!10676 rules!3103))) (= (mod (str.len (value!32824 (tag!1243 (h!10676 rules!3103)))) 2) 0))))

(assert (=> b!539771 d!190310))

(declare-fun d!190312 () Bool)

(declare-fun res!229559 () Bool)

(declare-fun e!326192 () Bool)

(assert (=> d!190312 (=> (not res!229559) (not e!326192))))

(declare-fun semiInverseModEq!383 (Int Int) Bool)

(assert (=> d!190312 (= res!229559 (semiInverseModEq!383 (toChars!1687 (transformation!981 (h!10676 rules!3103))) (toValue!1828 (transformation!981 (h!10676 rules!3103)))))))

(assert (=> d!190312 (= (inv!6617 (transformation!981 (h!10676 rules!3103))) e!326192)))

(declare-fun b!540275 () Bool)

(declare-fun equivClasses!366 (Int Int) Bool)

(assert (=> b!540275 (= e!326192 (equivClasses!366 (toChars!1687 (transformation!981 (h!10676 rules!3103))) (toValue!1828 (transformation!981 (h!10676 rules!3103)))))))

(assert (= (and d!190312 res!229559) b!540275))

(declare-fun m!787875 () Bool)

(assert (=> d!190312 m!787875))

(declare-fun m!787877 () Bool)

(assert (=> b!540275 m!787877))

(assert (=> b!539771 d!190312))

(declare-fun d!190314 () Bool)

(assert (=> d!190314 (= (get!1986 lt!224512) (v!16139 lt!224512))))

(assert (=> b!539775 d!190314))

(declare-fun d!190316 () Bool)

(declare-fun lt!224700 () Bool)

(assert (=> d!190316 (= lt!224700 (select (content!920 rules!3103) (rule!1689 (_1!3430 (v!16139 lt!224521)))))))

(declare-fun e!326193 () Bool)

(assert (=> d!190316 (= lt!224700 e!326193)))

(declare-fun res!229560 () Bool)

(assert (=> d!190316 (=> (not res!229560) (not e!326193))))

(assert (=> d!190316 (= res!229560 ((_ is Cons!5275) rules!3103))))

(assert (=> d!190316 (= (contains!1225 rules!3103 (rule!1689 (_1!3430 (v!16139 lt!224521)))) lt!224700)))

(declare-fun b!540276 () Bool)

(declare-fun e!326194 () Bool)

(assert (=> b!540276 (= e!326193 e!326194)))

(declare-fun res!229561 () Bool)

(assert (=> b!540276 (=> res!229561 e!326194)))

(assert (=> b!540276 (= res!229561 (= (h!10676 rules!3103) (rule!1689 (_1!3430 (v!16139 lt!224521)))))))

(declare-fun b!540277 () Bool)

(assert (=> b!540277 (= e!326194 (contains!1225 (t!74334 rules!3103) (rule!1689 (_1!3430 (v!16139 lt!224521)))))))

(assert (= (and d!190316 res!229560) b!540276))

(assert (= (and b!540276 (not res!229561)) b!540277))

(assert (=> d!190316 m!787315))

(declare-fun m!787879 () Bool)

(assert (=> d!190316 m!787879))

(declare-fun m!787881 () Bool)

(assert (=> b!540277 m!787881))

(assert (=> b!539773 d!190316))

(declare-fun d!190318 () Bool)

(declare-fun lt!224701 () Int)

(assert (=> d!190318 (>= lt!224701 0)))

(declare-fun e!326195 () Int)

(assert (=> d!190318 (= lt!224701 e!326195)))

(declare-fun c!102372 () Bool)

(assert (=> d!190318 (= c!102372 ((_ is Nil!5274) (originalCharacters!1020 (_1!3430 (v!16139 lt!224521)))))))

(assert (=> d!190318 (= (size!4239 (originalCharacters!1020 (_1!3430 (v!16139 lt!224521)))) lt!224701)))

(declare-fun b!540278 () Bool)

(assert (=> b!540278 (= e!326195 0)))

(declare-fun b!540279 () Bool)

(assert (=> b!540279 (= e!326195 (+ 1 (size!4239 (t!74333 (originalCharacters!1020 (_1!3430 (v!16139 lt!224521)))))))))

(assert (= (and d!190318 c!102372) b!540278))

(assert (= (and d!190318 (not c!102372)) b!540279))

(declare-fun m!787883 () Bool)

(assert (=> b!540279 m!787883))

(assert (=> b!539752 d!190318))

(declare-fun b!540298 () Bool)

(declare-fun res!229576 () Bool)

(declare-fun e!326213 () Bool)

(assert (=> b!540298 (=> res!229576 e!326213)))

(assert (=> b!540298 (= res!229576 (not ((_ is Concat!2320) (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))))))))

(declare-fun e!326216 () Bool)

(assert (=> b!540298 (= e!326216 e!326213)))

(declare-fun b!540299 () Bool)

(declare-fun e!326210 () Bool)

(declare-fun call!38274 () Bool)

(assert (=> b!540299 (= e!326210 call!38274)))

(declare-fun b!540300 () Bool)

(declare-fun e!326215 () Bool)

(assert (=> b!540300 (= e!326213 e!326215)))

(declare-fun res!229574 () Bool)

(assert (=> b!540300 (=> (not res!229574) (not e!326215))))

(declare-fun call!38276 () Bool)

(assert (=> b!540300 (= res!229574 call!38276)))

(declare-fun b!540301 () Bool)

(declare-fun e!326211 () Bool)

(assert (=> b!540301 (= e!326211 e!326216)))

(declare-fun c!102378 () Bool)

(assert (=> b!540301 (= c!102378 ((_ is Union!1315) (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))))))

(declare-fun b!540302 () Bool)

(assert (=> b!540302 (= e!326211 e!326210)))

(declare-fun res!229573 () Bool)

(assert (=> b!540302 (= res!229573 (not (nullable!345 (reg!1644 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))))))))

(assert (=> b!540302 (=> (not res!229573) (not e!326210))))

(declare-fun b!540303 () Bool)

(declare-fun e!326214 () Bool)

(assert (=> b!540303 (= e!326214 e!326211)))

(declare-fun c!102377 () Bool)

(assert (=> b!540303 (= c!102377 ((_ is Star!1315) (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))))))

(declare-fun b!540304 () Bool)

(declare-fun call!38275 () Bool)

(assert (=> b!540304 (= e!326215 call!38275)))

(declare-fun b!540305 () Bool)

(declare-fun e!326212 () Bool)

(assert (=> b!540305 (= e!326212 call!38276)))

(declare-fun b!540306 () Bool)

(declare-fun res!229572 () Bool)

(assert (=> b!540306 (=> (not res!229572) (not e!326212))))

(assert (=> b!540306 (= res!229572 call!38275)))

(assert (=> b!540306 (= e!326216 e!326212)))

(declare-fun bm!38269 () Bool)

(assert (=> bm!38269 (= call!38274 (validRegex!440 (ite c!102377 (reg!1644 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))) (ite c!102378 (regTwo!3143 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))) (regOne!3142 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))))))))))

(declare-fun bm!38270 () Bool)

(assert (=> bm!38270 (= call!38275 (validRegex!440 (ite c!102378 (regOne!3143 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))) (regTwo!3142 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))))))))

(declare-fun d!190320 () Bool)

(declare-fun res!229575 () Bool)

(assert (=> d!190320 (=> res!229575 e!326214)))

(assert (=> d!190320 (= res!229575 ((_ is ElementMatch!1315) (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))))))

(assert (=> d!190320 (= (validRegex!440 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))) e!326214)))

(declare-fun bm!38271 () Bool)

(assert (=> bm!38271 (= call!38276 call!38274)))

(assert (= (and d!190320 (not res!229575)) b!540303))

(assert (= (and b!540303 c!102377) b!540302))

(assert (= (and b!540303 (not c!102377)) b!540301))

(assert (= (and b!540302 res!229573) b!540299))

(assert (= (and b!540301 c!102378) b!540306))

(assert (= (and b!540301 (not c!102378)) b!540298))

(assert (= (and b!540306 res!229572) b!540305))

(assert (= (and b!540298 (not res!229576)) b!540300))

(assert (= (and b!540300 res!229574) b!540304))

(assert (= (or b!540306 b!540304) bm!38270))

(assert (= (or b!540305 b!540300) bm!38271))

(assert (= (or b!540299 bm!38271) bm!38269))

(declare-fun m!787885 () Bool)

(assert (=> b!540302 m!787885))

(declare-fun m!787887 () Bool)

(assert (=> bm!38269 m!787887))

(declare-fun m!787889 () Bool)

(assert (=> bm!38270 m!787889))

(assert (=> b!539777 d!190320))

(declare-fun b!540307 () Bool)

(declare-fun res!229580 () Bool)

(declare-fun e!326218 () Bool)

(assert (=> b!540307 (=> (not res!229580) (not e!326218))))

(declare-fun lt!224706 () Option!1331)

(assert (=> b!540307 (= res!229580 (= (++!1469 (list!2189 (charsOf!610 (_1!3430 (get!1986 lt!224706)))) (_2!3430 (get!1986 lt!224706))) input!2705))))

(declare-fun b!540308 () Bool)

(declare-fun res!229582 () Bool)

(assert (=> b!540308 (=> (not res!229582) (not e!326218))))

(assert (=> b!540308 (= res!229582 (matchR!474 (regex!981 (rule!1689 (_1!3430 (get!1986 lt!224706)))) (list!2189 (charsOf!610 (_1!3430 (get!1986 lt!224706))))))))

(declare-fun bm!38272 () Bool)

(declare-fun call!38277 () Option!1331)

(assert (=> bm!38272 (= call!38277 (maxPrefixOneRule!280 thiss!22590 (h!10676 rules!3103) input!2705))))

(declare-fun b!540309 () Bool)

(declare-fun e!326219 () Option!1331)

(declare-fun lt!224703 () Option!1331)

(declare-fun lt!224704 () Option!1331)

(assert (=> b!540309 (= e!326219 (ite (and ((_ is None!1330) lt!224703) ((_ is None!1330) lt!224704)) None!1330 (ite ((_ is None!1330) lt!224704) lt!224703 (ite ((_ is None!1330) lt!224703) lt!224704 (ite (>= (size!4238 (_1!3430 (v!16139 lt!224703))) (size!4238 (_1!3430 (v!16139 lt!224704)))) lt!224703 lt!224704)))))))

(assert (=> b!540309 (= lt!224703 call!38277)))

(assert (=> b!540309 (= lt!224704 (maxPrefix!565 thiss!22590 (t!74334 rules!3103) input!2705))))

(declare-fun b!540310 () Bool)

(declare-fun res!229579 () Bool)

(assert (=> b!540310 (=> (not res!229579) (not e!326218))))

(assert (=> b!540310 (= res!229579 (= (list!2189 (charsOf!610 (_1!3430 (get!1986 lt!224706)))) (originalCharacters!1020 (_1!3430 (get!1986 lt!224706)))))))

(declare-fun b!540311 () Bool)

(declare-fun e!326217 () Bool)

(assert (=> b!540311 (= e!326217 e!326218)))

(declare-fun res!229578 () Bool)

(assert (=> b!540311 (=> (not res!229578) (not e!326218))))

(assert (=> b!540311 (= res!229578 (isDefined!1143 lt!224706))))

(declare-fun b!540312 () Bool)

(declare-fun res!229583 () Bool)

(assert (=> b!540312 (=> (not res!229583) (not e!326218))))

(assert (=> b!540312 (= res!229583 (= (value!32825 (_1!3430 (get!1986 lt!224706))) (apply!1256 (transformation!981 (rule!1689 (_1!3430 (get!1986 lt!224706)))) (seqFromList!1179 (originalCharacters!1020 (_1!3430 (get!1986 lt!224706)))))))))

(declare-fun b!540313 () Bool)

(assert (=> b!540313 (= e!326218 (contains!1225 rules!3103 (rule!1689 (_1!3430 (get!1986 lt!224706)))))))

(declare-fun d!190322 () Bool)

(assert (=> d!190322 e!326217))

(declare-fun res!229581 () Bool)

(assert (=> d!190322 (=> res!229581 e!326217)))

(assert (=> d!190322 (= res!229581 (isEmpty!3813 lt!224706))))

(assert (=> d!190322 (= lt!224706 e!326219)))

(declare-fun c!102379 () Bool)

(assert (=> d!190322 (= c!102379 (and ((_ is Cons!5275) rules!3103) ((_ is Nil!5275) (t!74334 rules!3103))))))

(declare-fun lt!224702 () Unit!9213)

(declare-fun lt!224705 () Unit!9213)

(assert (=> d!190322 (= lt!224702 lt!224705)))

(assert (=> d!190322 (isPrefix!623 input!2705 input!2705)))

(assert (=> d!190322 (= lt!224705 (lemmaIsPrefixRefl!363 input!2705 input!2705))))

(assert (=> d!190322 (rulesValidInductive!342 thiss!22590 rules!3103)))

(assert (=> d!190322 (= (maxPrefix!565 thiss!22590 rules!3103 input!2705) lt!224706)))

(declare-fun b!540314 () Bool)

(assert (=> b!540314 (= e!326219 call!38277)))

(declare-fun b!540315 () Bool)

(declare-fun res!229577 () Bool)

(assert (=> b!540315 (=> (not res!229577) (not e!326218))))

(assert (=> b!540315 (= res!229577 (< (size!4239 (_2!3430 (get!1986 lt!224706))) (size!4239 input!2705)))))

(assert (= (and d!190322 c!102379) b!540314))

(assert (= (and d!190322 (not c!102379)) b!540309))

(assert (= (or b!540314 b!540309) bm!38272))

(assert (= (and d!190322 (not res!229581)) b!540311))

(assert (= (and b!540311 res!229578) b!540310))

(assert (= (and b!540310 res!229579) b!540315))

(assert (= (and b!540315 res!229577) b!540307))

(assert (= (and b!540307 res!229580) b!540312))

(assert (= (and b!540312 res!229583) b!540308))

(assert (= (and b!540308 res!229582) b!540313))

(declare-fun m!787891 () Bool)

(assert (=> b!540312 m!787891))

(declare-fun m!787893 () Bool)

(assert (=> b!540312 m!787893))

(assert (=> b!540312 m!787893))

(declare-fun m!787895 () Bool)

(assert (=> b!540312 m!787895))

(assert (=> b!540308 m!787891))

(declare-fun m!787897 () Bool)

(assert (=> b!540308 m!787897))

(assert (=> b!540308 m!787897))

(declare-fun m!787899 () Bool)

(assert (=> b!540308 m!787899))

(assert (=> b!540308 m!787899))

(declare-fun m!787901 () Bool)

(assert (=> b!540308 m!787901))

(assert (=> b!540307 m!787891))

(assert (=> b!540307 m!787897))

(assert (=> b!540307 m!787897))

(assert (=> b!540307 m!787899))

(assert (=> b!540307 m!787899))

(declare-fun m!787903 () Bool)

(assert (=> b!540307 m!787903))

(assert (=> b!540315 m!787891))

(declare-fun m!787905 () Bool)

(assert (=> b!540315 m!787905))

(assert (=> b!540315 m!787427))

(declare-fun m!787907 () Bool)

(assert (=> bm!38272 m!787907))

(declare-fun m!787909 () Bool)

(assert (=> d!190322 m!787909))

(assert (=> d!190322 m!787241))

(assert (=> d!190322 m!787263))

(assert (=> d!190322 m!787531))

(assert (=> b!540313 m!787891))

(declare-fun m!787911 () Bool)

(assert (=> b!540313 m!787911))

(declare-fun m!787913 () Bool)

(assert (=> b!540309 m!787913))

(declare-fun m!787915 () Bool)

(assert (=> b!540311 m!787915))

(assert (=> b!540310 m!787891))

(assert (=> b!540310 m!787897))

(assert (=> b!540310 m!787897))

(assert (=> b!540310 m!787899))

(assert (=> b!539756 d!190322))

(declare-fun d!190324 () Bool)

(assert (=> d!190324 (= (isEmpty!3811 rules!3103) ((_ is Nil!5275) rules!3103))))

(assert (=> b!539776 d!190324))

(declare-fun d!190326 () Bool)

(assert (=> d!190326 (isPrefix!623 lt!224526 (++!1469 lt!224526 (_2!3430 (v!16139 lt!224521))))))

(declare-fun lt!224709 () Unit!9213)

(declare-fun choose!3817 (List!5284 List!5284) Unit!9213)

(assert (=> d!190326 (= lt!224709 (choose!3817 lt!224526 (_2!3430 (v!16139 lt!224521))))))

(assert (=> d!190326 (= (lemmaConcatTwoListThenFirstIsPrefix!474 lt!224526 (_2!3430 (v!16139 lt!224521))) lt!224709)))

(declare-fun bs!67488 () Bool)

(assert (= bs!67488 d!190326))

(assert (=> bs!67488 m!787265))

(assert (=> bs!67488 m!787265))

(declare-fun m!787917 () Bool)

(assert (=> bs!67488 m!787917))

(declare-fun m!787919 () Bool)

(assert (=> bs!67488 m!787919))

(assert (=> b!539755 d!190326))

(declare-fun d!190328 () Bool)

(assert (=> d!190328 (ruleValid!201 thiss!22590 (rule!1689 (_1!3430 (v!16139 lt!224521))))))

(declare-fun lt!224712 () Unit!9213)

(declare-fun choose!3818 (LexerInterface!867 Rule!1762 List!5285) Unit!9213)

(assert (=> d!190328 (= lt!224712 (choose!3818 thiss!22590 (rule!1689 (_1!3430 (v!16139 lt!224521))) rules!3103))))

(assert (=> d!190328 (contains!1225 rules!3103 (rule!1689 (_1!3430 (v!16139 lt!224521))))))

(assert (=> d!190328 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!60 thiss!22590 (rule!1689 (_1!3430 (v!16139 lt!224521))) rules!3103) lt!224712)))

(declare-fun bs!67489 () Bool)

(assert (= bs!67489 d!190328))

(assert (=> bs!67489 m!787259))

(declare-fun m!787921 () Bool)

(assert (=> bs!67489 m!787921))

(assert (=> bs!67489 m!787201))

(assert (=> b!539755 d!190328))

(declare-fun d!190330 () Bool)

(assert (=> d!190330 (= (list!2189 (charsOf!610 (_1!3430 (v!16139 lt!224521)))) (list!2191 (c!102297 (charsOf!610 (_1!3430 (v!16139 lt!224521))))))))

(declare-fun bs!67490 () Bool)

(assert (= bs!67490 d!190330))

(declare-fun m!787923 () Bool)

(assert (=> bs!67490 m!787923))

(assert (=> b!539755 d!190330))

(declare-fun d!190332 () Bool)

(assert (=> d!190332 (= (size!4238 (_1!3430 (v!16139 lt!224521))) (size!4239 (originalCharacters!1020 (_1!3430 (v!16139 lt!224521)))))))

(declare-fun Unit!9221 () Unit!9213)

(assert (=> d!190332 (= (lemmaCharactersSize!60 (_1!3430 (v!16139 lt!224521))) Unit!9221)))

(declare-fun bs!67491 () Bool)

(assert (= bs!67491 d!190332))

(assert (=> bs!67491 m!787195))

(assert (=> b!539755 d!190332))

(declare-fun d!190334 () Bool)

(declare-fun lt!224713 () Int)

(assert (=> d!190334 (>= lt!224713 0)))

(declare-fun e!326220 () Int)

(assert (=> d!190334 (= lt!224713 e!326220)))

(declare-fun c!102380 () Bool)

(assert (=> d!190334 (= c!102380 ((_ is Nil!5274) lt!224517))))

(assert (=> d!190334 (= (size!4239 lt!224517) lt!224713)))

(declare-fun b!540316 () Bool)

(assert (=> b!540316 (= e!326220 0)))

(declare-fun b!540317 () Bool)

(assert (=> b!540317 (= e!326220 (+ 1 (size!4239 (t!74333 lt!224517))))))

(assert (= (and d!190334 c!102380) b!540316))

(assert (= (and d!190334 (not c!102380)) b!540317))

(declare-fun m!787925 () Bool)

(assert (=> b!540317 m!787925))

(assert (=> b!539755 d!190334))

(declare-fun d!190336 () Bool)

(assert (=> d!190336 (= (seqFromList!1179 lt!224526) (fromListB!519 lt!224526))))

(declare-fun bs!67492 () Bool)

(assert (= bs!67492 d!190336))

(declare-fun m!787927 () Bool)

(assert (=> bs!67492 m!787927))

(assert (=> b!539755 d!190336))

(declare-fun d!190338 () Bool)

(declare-fun e!326223 () Bool)

(assert (=> d!190338 e!326223))

(declare-fun res!229586 () Bool)

(assert (=> d!190338 (=> (not res!229586) (not e!326223))))

(assert (=> d!190338 (= res!229586 (semiInverseModEq!383 (toChars!1687 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))) (toValue!1828 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))))))))

(declare-fun Unit!9222 () Unit!9213)

(assert (=> d!190338 (= (lemmaInv!129 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))) Unit!9222)))

(declare-fun b!540320 () Bool)

(assert (=> b!540320 (= e!326223 (equivClasses!366 (toChars!1687 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))) (toValue!1828 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))))))))

(assert (= (and d!190338 res!229586) b!540320))

(declare-fun m!787929 () Bool)

(assert (=> d!190338 m!787929))

(declare-fun m!787931 () Bool)

(assert (=> b!540320 m!787931))

(assert (=> b!539755 d!190338))

(declare-fun b!540323 () Bool)

(declare-fun res!229587 () Bool)

(declare-fun e!326225 () Bool)

(assert (=> b!540323 (=> (not res!229587) (not e!326225))))

(declare-fun lt!224714 () List!5284)

(assert (=> b!540323 (= res!229587 (= (size!4239 lt!224714) (+ (size!4239 lt!224526) (size!4239 (_2!3430 (v!16139 lt!224521))))))))

(declare-fun b!540324 () Bool)

(assert (=> b!540324 (= e!326225 (or (not (= (_2!3430 (v!16139 lt!224521)) Nil!5274)) (= lt!224714 lt!224526)))))

(declare-fun d!190340 () Bool)

(assert (=> d!190340 e!326225))

(declare-fun res!229588 () Bool)

(assert (=> d!190340 (=> (not res!229588) (not e!326225))))

(assert (=> d!190340 (= res!229588 (= (content!922 lt!224714) ((_ map or) (content!922 lt!224526) (content!922 (_2!3430 (v!16139 lt!224521))))))))

(declare-fun e!326224 () List!5284)

(assert (=> d!190340 (= lt!224714 e!326224)))

(declare-fun c!102381 () Bool)

(assert (=> d!190340 (= c!102381 ((_ is Nil!5274) lt!224526))))

(assert (=> d!190340 (= (++!1469 lt!224526 (_2!3430 (v!16139 lt!224521))) lt!224714)))

(declare-fun b!540321 () Bool)

(assert (=> b!540321 (= e!326224 (_2!3430 (v!16139 lt!224521)))))

(declare-fun b!540322 () Bool)

(assert (=> b!540322 (= e!326224 (Cons!5274 (h!10675 lt!224526) (++!1469 (t!74333 lt!224526) (_2!3430 (v!16139 lt!224521)))))))

(assert (= (and d!190340 c!102381) b!540321))

(assert (= (and d!190340 (not c!102381)) b!540322))

(assert (= (and d!190340 res!229588) b!540323))

(assert (= (and b!540323 res!229587) b!540324))

(declare-fun m!787933 () Bool)

(assert (=> b!540323 m!787933))

(assert (=> b!540323 m!787243))

(declare-fun m!787935 () Bool)

(assert (=> b!540323 m!787935))

(declare-fun m!787937 () Bool)

(assert (=> d!190340 m!787937))

(assert (=> d!190340 m!787661))

(declare-fun m!787939 () Bool)

(assert (=> d!190340 m!787939))

(declare-fun m!787941 () Bool)

(assert (=> b!540322 m!787941))

(assert (=> b!539755 d!190340))

(declare-fun d!190342 () Bool)

(declare-fun e!326226 () Bool)

(assert (=> d!190342 e!326226))

(declare-fun res!229589 () Bool)

(assert (=> d!190342 (=> (not res!229589) (not e!326226))))

(assert (=> d!190342 (= res!229589 (semiInverseModEq!383 (toChars!1687 (transformation!981 (rule!1689 token!491))) (toValue!1828 (transformation!981 (rule!1689 token!491)))))))

(declare-fun Unit!9223 () Unit!9213)

(assert (=> d!190342 (= (lemmaInv!129 (transformation!981 (rule!1689 token!491))) Unit!9223)))

(declare-fun b!540325 () Bool)

(assert (=> b!540325 (= e!326226 (equivClasses!366 (toChars!1687 (transformation!981 (rule!1689 token!491))) (toValue!1828 (transformation!981 (rule!1689 token!491)))))))

(assert (= (and d!190342 res!229589) b!540325))

(declare-fun m!787943 () Bool)

(assert (=> d!190342 m!787943))

(declare-fun m!787945 () Bool)

(assert (=> b!540325 m!787945))

(assert (=> b!539755 d!190342))

(declare-fun d!190344 () Bool)

(assert (=> d!190344 (= (size!4238 token!491) (size!4239 (originalCharacters!1020 token!491)))))

(declare-fun Unit!9224 () Unit!9213)

(assert (=> d!190344 (= (lemmaCharactersSize!60 token!491) Unit!9224)))

(declare-fun bs!67493 () Bool)

(assert (= bs!67493 d!190344))

(assert (=> bs!67493 m!787281))

(assert (=> b!539755 d!190344))

(declare-fun d!190346 () Bool)

(declare-fun lt!224715 () Int)

(assert (=> d!190346 (>= lt!224715 0)))

(declare-fun e!326227 () Int)

(assert (=> d!190346 (= lt!224715 e!326227)))

(declare-fun c!102382 () Bool)

(assert (=> d!190346 (= c!102382 ((_ is Nil!5274) lt!224526))))

(assert (=> d!190346 (= (size!4239 lt!224526) lt!224715)))

(declare-fun b!540326 () Bool)

(assert (=> b!540326 (= e!326227 0)))

(declare-fun b!540327 () Bool)

(assert (=> b!540327 (= e!326227 (+ 1 (size!4239 (t!74333 lt!224526))))))

(assert (= (and d!190346 c!102382) b!540326))

(assert (= (and d!190346 (not c!102382)) b!540327))

(declare-fun m!787947 () Bool)

(assert (=> b!540327 m!787947))

(assert (=> b!539755 d!190346))

(declare-fun d!190348 () Bool)

(declare-fun lt!224716 () List!5284)

(assert (=> d!190348 (= (++!1469 lt!224526 lt!224716) input!2705)))

(declare-fun e!326228 () List!5284)

(assert (=> d!190348 (= lt!224716 e!326228)))

(declare-fun c!102383 () Bool)

(assert (=> d!190348 (= c!102383 ((_ is Cons!5274) lt!224526))))

(assert (=> d!190348 (>= (size!4239 input!2705) (size!4239 lt!224526))))

(assert (=> d!190348 (= (getSuffix!146 input!2705 lt!224526) lt!224716)))

(declare-fun b!540328 () Bool)

(assert (=> b!540328 (= e!326228 (getSuffix!146 (tail!711 input!2705) (t!74333 lt!224526)))))

(declare-fun b!540329 () Bool)

(assert (=> b!540329 (= e!326228 input!2705)))

(assert (= (and d!190348 c!102383) b!540328))

(assert (= (and d!190348 (not c!102383)) b!540329))

(declare-fun m!787949 () Bool)

(assert (=> d!190348 m!787949))

(assert (=> d!190348 m!787427))

(assert (=> d!190348 m!787243))

(assert (=> b!540328 m!787375))

(assert (=> b!540328 m!787375))

(declare-fun m!787951 () Bool)

(assert (=> b!540328 m!787951))

(assert (=> b!539755 d!190348))

(declare-fun d!190350 () Bool)

(assert (=> d!190350 (and (= lt!224517 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!224719 () Unit!9213)

(declare-fun choose!3819 (List!5284 List!5284 List!5284 List!5284) Unit!9213)

(assert (=> d!190350 (= lt!224719 (choose!3819 lt!224517 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!190350 (= (++!1469 lt!224517 suffix!1342) (++!1469 input!2705 suffix!1342))))

(assert (=> d!190350 (= (lemmaConcatSameAndSameSizesThenSameLists!66 lt!224517 suffix!1342 input!2705 suffix!1342) lt!224719)))

(declare-fun bs!67494 () Bool)

(assert (= bs!67494 d!190350))

(declare-fun m!787953 () Bool)

(assert (=> bs!67494 m!787953))

(assert (=> bs!67494 m!787179))

(assert (=> bs!67494 m!787209))

(assert (=> b!539755 d!190350))

(declare-fun b!540333 () Bool)

(declare-fun e!326231 () Bool)

(assert (=> b!540333 (= e!326231 (>= (size!4239 lt!224503) (size!4239 lt!224526)))))

(declare-fun b!540331 () Bool)

(declare-fun res!229591 () Bool)

(declare-fun e!326230 () Bool)

(assert (=> b!540331 (=> (not res!229591) (not e!326230))))

(assert (=> b!540331 (= res!229591 (= (head!1182 lt!224526) (head!1182 lt!224503)))))

(declare-fun d!190352 () Bool)

(assert (=> d!190352 e!326231))

(declare-fun res!229593 () Bool)

(assert (=> d!190352 (=> res!229593 e!326231)))

(declare-fun lt!224720 () Bool)

(assert (=> d!190352 (= res!229593 (not lt!224720))))

(declare-fun e!326229 () Bool)

(assert (=> d!190352 (= lt!224720 e!326229)))

(declare-fun res!229590 () Bool)

(assert (=> d!190352 (=> res!229590 e!326229)))

(assert (=> d!190352 (= res!229590 ((_ is Nil!5274) lt!224526))))

(assert (=> d!190352 (= (isPrefix!623 lt!224526 lt!224503) lt!224720)))

(declare-fun b!540332 () Bool)

(assert (=> b!540332 (= e!326230 (isPrefix!623 (tail!711 lt!224526) (tail!711 lt!224503)))))

(declare-fun b!540330 () Bool)

(assert (=> b!540330 (= e!326229 e!326230)))

(declare-fun res!229592 () Bool)

(assert (=> b!540330 (=> (not res!229592) (not e!326230))))

(assert (=> b!540330 (= res!229592 (not ((_ is Nil!5274) lt!224503)))))

(assert (= (and d!190352 (not res!229590)) b!540330))

(assert (= (and b!540330 res!229592) b!540331))

(assert (= (and b!540331 res!229591) b!540332))

(assert (= (and d!190352 (not res!229593)) b!540333))

(declare-fun m!787955 () Bool)

(assert (=> b!540333 m!787955))

(assert (=> b!540333 m!787243))

(declare-fun m!787957 () Bool)

(assert (=> b!540331 m!787957))

(declare-fun m!787959 () Bool)

(assert (=> b!540331 m!787959))

(declare-fun m!787961 () Bool)

(assert (=> b!540332 m!787961))

(declare-fun m!787963 () Bool)

(assert (=> b!540332 m!787963))

(assert (=> b!540332 m!787961))

(assert (=> b!540332 m!787963))

(declare-fun m!787965 () Bool)

(assert (=> b!540332 m!787965))

(assert (=> b!539755 d!190352))

(declare-fun b!540337 () Bool)

(declare-fun e!326234 () Bool)

(assert (=> b!540337 (= e!326234 (>= (size!4239 lt!224519) (size!4239 input!2705)))))

(declare-fun b!540335 () Bool)

(declare-fun res!229595 () Bool)

(declare-fun e!326233 () Bool)

(assert (=> b!540335 (=> (not res!229595) (not e!326233))))

(assert (=> b!540335 (= res!229595 (= (head!1182 input!2705) (head!1182 lt!224519)))))

(declare-fun d!190354 () Bool)

(assert (=> d!190354 e!326234))

(declare-fun res!229597 () Bool)

(assert (=> d!190354 (=> res!229597 e!326234)))

(declare-fun lt!224721 () Bool)

(assert (=> d!190354 (= res!229597 (not lt!224721))))

(declare-fun e!326232 () Bool)

(assert (=> d!190354 (= lt!224721 e!326232)))

(declare-fun res!229594 () Bool)

(assert (=> d!190354 (=> res!229594 e!326232)))

(assert (=> d!190354 (= res!229594 ((_ is Nil!5274) input!2705))))

(assert (=> d!190354 (= (isPrefix!623 input!2705 lt!224519) lt!224721)))

(declare-fun b!540336 () Bool)

(assert (=> b!540336 (= e!326233 (isPrefix!623 (tail!711 input!2705) (tail!711 lt!224519)))))

(declare-fun b!540334 () Bool)

(assert (=> b!540334 (= e!326232 e!326233)))

(declare-fun res!229596 () Bool)

(assert (=> b!540334 (=> (not res!229596) (not e!326233))))

(assert (=> b!540334 (= res!229596 (not ((_ is Nil!5274) lt!224519)))))

(assert (= (and d!190354 (not res!229594)) b!540334))

(assert (= (and b!540334 res!229596) b!540335))

(assert (= (and b!540335 res!229595) b!540336))

(assert (= (and d!190354 (not res!229597)) b!540337))

(assert (=> b!540337 m!787521))

(assert (=> b!540337 m!787427))

(assert (=> b!540335 m!787379))

(declare-fun m!787967 () Bool)

(assert (=> b!540335 m!787967))

(assert (=> b!540336 m!787375))

(assert (=> b!540336 m!787841))

(assert (=> b!540336 m!787375))

(assert (=> b!540336 m!787841))

(declare-fun m!787969 () Bool)

(assert (=> b!540336 m!787969))

(assert (=> b!539755 d!190354))

(declare-fun d!190356 () Bool)

(assert (=> d!190356 (= (_2!3430 (v!16139 lt!224521)) lt!224514)))

(declare-fun lt!224722 () Unit!9213)

(assert (=> d!190356 (= lt!224722 (choose!3816 lt!224526 (_2!3430 (v!16139 lt!224521)) lt!224526 lt!224514 input!2705))))

(assert (=> d!190356 (isPrefix!623 lt!224526 input!2705)))

(assert (=> d!190356 (= (lemmaSamePrefixThenSameSuffix!350 lt!224526 (_2!3430 (v!16139 lt!224521)) lt!224526 lt!224514 input!2705) lt!224722)))

(declare-fun bs!67495 () Bool)

(assert (= bs!67495 d!190356))

(declare-fun m!787971 () Bool)

(assert (=> bs!67495 m!787971))

(assert (=> bs!67495 m!787159))

(assert (=> b!539755 d!190356))

(declare-fun d!190358 () Bool)

(assert (=> d!190358 (isPrefix!623 lt!224517 (++!1469 lt!224517 suffix!1342))))

(declare-fun lt!224723 () Unit!9213)

(assert (=> d!190358 (= lt!224723 (choose!3817 lt!224517 suffix!1342))))

(assert (=> d!190358 (= (lemmaConcatTwoListThenFirstIsPrefix!474 lt!224517 suffix!1342) lt!224723)))

(declare-fun bs!67496 () Bool)

(assert (= bs!67496 d!190358))

(assert (=> bs!67496 m!787179))

(assert (=> bs!67496 m!787179))

(declare-fun m!787973 () Bool)

(assert (=> bs!67496 m!787973))

(declare-fun m!787975 () Bool)

(assert (=> bs!67496 m!787975))

(assert (=> b!539755 d!190358))

(declare-fun d!190360 () Bool)

(declare-fun lt!224724 () BalanceConc!3404)

(assert (=> d!190360 (= (list!2189 lt!224724) (originalCharacters!1020 (_1!3430 (v!16139 lt!224521))))))

(assert (=> d!190360 (= lt!224724 (dynLambda!3101 (toChars!1687 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))) (value!32825 (_1!3430 (v!16139 lt!224521)))))))

(assert (=> d!190360 (= (charsOf!610 (_1!3430 (v!16139 lt!224521))) lt!224724)))

(declare-fun b_lambda!20797 () Bool)

(assert (=> (not b_lambda!20797) (not d!190360)))

(declare-fun tb!47651 () Bool)

(declare-fun t!74368 () Bool)

(assert (=> (and b!539772 (= (toChars!1687 (transformation!981 (h!10676 rules!3103))) (toChars!1687 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))))) t!74368) tb!47651))

(declare-fun b!540338 () Bool)

(declare-fun e!326235 () Bool)

(declare-fun tp!172109 () Bool)

(assert (=> b!540338 (= e!326235 (and (inv!6621 (c!102297 (dynLambda!3101 (toChars!1687 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))) (value!32825 (_1!3430 (v!16139 lt!224521)))))) tp!172109))))

(declare-fun result!53240 () Bool)

(assert (=> tb!47651 (= result!53240 (and (inv!6622 (dynLambda!3101 (toChars!1687 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))) (value!32825 (_1!3430 (v!16139 lt!224521))))) e!326235))))

(assert (= tb!47651 b!540338))

(declare-fun m!787977 () Bool)

(assert (=> b!540338 m!787977))

(declare-fun m!787979 () Bool)

(assert (=> tb!47651 m!787979))

(assert (=> d!190360 t!74368))

(declare-fun b_and!52807 () Bool)

(assert (= b_and!52803 (and (=> t!74368 result!53240) b_and!52807)))

(declare-fun tb!47653 () Bool)

(declare-fun t!74370 () Bool)

(assert (=> (and b!539766 (= (toChars!1687 (transformation!981 (rule!1689 token!491))) (toChars!1687 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))))) t!74370) tb!47653))

(declare-fun result!53242 () Bool)

(assert (= result!53242 result!53240))

(assert (=> d!190360 t!74370))

(declare-fun b_and!52809 () Bool)

(assert (= b_and!52805 (and (=> t!74370 result!53242) b_and!52809)))

(declare-fun m!787981 () Bool)

(assert (=> d!190360 m!787981))

(declare-fun m!787983 () Bool)

(assert (=> d!190360 m!787983))

(assert (=> b!539755 d!190360))

(declare-fun b!540342 () Bool)

(declare-fun e!326238 () Bool)

(assert (=> b!540342 (= e!326238 (>= (size!4239 lt!224515) (size!4239 lt!224517)))))

(declare-fun b!540340 () Bool)

(declare-fun res!229599 () Bool)

(declare-fun e!326237 () Bool)

(assert (=> b!540340 (=> (not res!229599) (not e!326237))))

(assert (=> b!540340 (= res!229599 (= (head!1182 lt!224517) (head!1182 lt!224515)))))

(declare-fun d!190362 () Bool)

(assert (=> d!190362 e!326238))

(declare-fun res!229601 () Bool)

(assert (=> d!190362 (=> res!229601 e!326238)))

(declare-fun lt!224725 () Bool)

(assert (=> d!190362 (= res!229601 (not lt!224725))))

(declare-fun e!326236 () Bool)

(assert (=> d!190362 (= lt!224725 e!326236)))

(declare-fun res!229598 () Bool)

(assert (=> d!190362 (=> res!229598 e!326236)))

(assert (=> d!190362 (= res!229598 ((_ is Nil!5274) lt!224517))))

(assert (=> d!190362 (= (isPrefix!623 lt!224517 lt!224515) lt!224725)))

(declare-fun b!540341 () Bool)

(assert (=> b!540341 (= e!326237 (isPrefix!623 (tail!711 lt!224517) (tail!711 lt!224515)))))

(declare-fun b!540339 () Bool)

(assert (=> b!540339 (= e!326236 e!326237)))

(declare-fun res!229600 () Bool)

(assert (=> b!540339 (=> (not res!229600) (not e!326237))))

(assert (=> b!540339 (= res!229600 (not ((_ is Nil!5274) lt!224515)))))

(assert (= (and d!190362 (not res!229598)) b!540339))

(assert (= (and b!540339 res!229600) b!540340))

(assert (= (and b!540340 res!229599) b!540341))

(assert (= (and d!190362 (not res!229601)) b!540342))

(declare-fun m!787985 () Bool)

(assert (=> b!540342 m!787985))

(assert (=> b!540342 m!787245))

(assert (=> b!540340 m!787637))

(declare-fun m!787987 () Bool)

(assert (=> b!540340 m!787987))

(assert (=> b!540341 m!787639))

(declare-fun m!787989 () Bool)

(assert (=> b!540341 m!787989))

(assert (=> b!540341 m!787639))

(assert (=> b!540341 m!787989))

(declare-fun m!787991 () Bool)

(assert (=> b!540341 m!787991))

(assert (=> b!539755 d!190362))

(declare-fun b!540346 () Bool)

(declare-fun e!326241 () Bool)

(assert (=> b!540346 (= e!326241 (>= (size!4239 input!2705) (size!4239 input!2705)))))

(declare-fun b!540344 () Bool)

(declare-fun res!229603 () Bool)

(declare-fun e!326240 () Bool)

(assert (=> b!540344 (=> (not res!229603) (not e!326240))))

(assert (=> b!540344 (= res!229603 (= (head!1182 input!2705) (head!1182 input!2705)))))

(declare-fun d!190364 () Bool)

(assert (=> d!190364 e!326241))

(declare-fun res!229605 () Bool)

(assert (=> d!190364 (=> res!229605 e!326241)))

(declare-fun lt!224726 () Bool)

(assert (=> d!190364 (= res!229605 (not lt!224726))))

(declare-fun e!326239 () Bool)

(assert (=> d!190364 (= lt!224726 e!326239)))

(declare-fun res!229602 () Bool)

(assert (=> d!190364 (=> res!229602 e!326239)))

(assert (=> d!190364 (= res!229602 ((_ is Nil!5274) input!2705))))

(assert (=> d!190364 (= (isPrefix!623 input!2705 input!2705) lt!224726)))

(declare-fun b!540345 () Bool)

(assert (=> b!540345 (= e!326240 (isPrefix!623 (tail!711 input!2705) (tail!711 input!2705)))))

(declare-fun b!540343 () Bool)

(assert (=> b!540343 (= e!326239 e!326240)))

(declare-fun res!229604 () Bool)

(assert (=> b!540343 (=> (not res!229604) (not e!326240))))

(assert (=> b!540343 (= res!229604 (not ((_ is Nil!5274) input!2705)))))

(assert (= (and d!190364 (not res!229602)) b!540343))

(assert (= (and b!540343 res!229604) b!540344))

(assert (= (and b!540344 res!229603) b!540345))

(assert (= (and d!190364 (not res!229605)) b!540346))

(assert (=> b!540346 m!787427))

(assert (=> b!540346 m!787427))

(assert (=> b!540344 m!787379))

(assert (=> b!540344 m!787379))

(assert (=> b!540345 m!787375))

(assert (=> b!540345 m!787375))

(assert (=> b!540345 m!787375))

(assert (=> b!540345 m!787375))

(declare-fun m!787993 () Bool)

(assert (=> b!540345 m!787993))

(assert (=> b!539755 d!190364))

(declare-fun d!190366 () Bool)

(assert (=> d!190366 (ruleValid!201 thiss!22590 (rule!1689 token!491))))

(declare-fun lt!224727 () Unit!9213)

(assert (=> d!190366 (= lt!224727 (choose!3818 thiss!22590 (rule!1689 token!491) rules!3103))))

(assert (=> d!190366 (contains!1225 rules!3103 (rule!1689 token!491))))

(assert (=> d!190366 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!60 thiss!22590 (rule!1689 token!491) rules!3103) lt!224727)))

(declare-fun bs!67497 () Bool)

(assert (= bs!67497 d!190366))

(assert (=> bs!67497 m!787221))

(declare-fun m!787995 () Bool)

(assert (=> bs!67497 m!787995))

(assert (=> bs!67497 m!787199))

(assert (=> b!539755 d!190366))

(declare-fun d!190368 () Bool)

(assert (=> d!190368 (isPrefix!623 input!2705 (++!1469 input!2705 suffix!1342))))

(declare-fun lt!224728 () Unit!9213)

(assert (=> d!190368 (= lt!224728 (choose!3817 input!2705 suffix!1342))))

(assert (=> d!190368 (= (lemmaConcatTwoListThenFirstIsPrefix!474 input!2705 suffix!1342) lt!224728)))

(declare-fun bs!67498 () Bool)

(assert (= bs!67498 d!190368))

(assert (=> bs!67498 m!787209))

(assert (=> bs!67498 m!787209))

(declare-fun m!787997 () Bool)

(assert (=> bs!67498 m!787997))

(declare-fun m!787999 () Bool)

(assert (=> bs!67498 m!787999))

(assert (=> b!539755 d!190368))

(declare-fun d!190370 () Bool)

(declare-fun res!229610 () Bool)

(declare-fun e!326244 () Bool)

(assert (=> d!190370 (=> (not res!229610) (not e!326244))))

(assert (=> d!190370 (= res!229610 (validRegex!440 (regex!981 (rule!1689 token!491))))))

(assert (=> d!190370 (= (ruleValid!201 thiss!22590 (rule!1689 token!491)) e!326244)))

(declare-fun b!540351 () Bool)

(declare-fun res!229611 () Bool)

(assert (=> b!540351 (=> (not res!229611) (not e!326244))))

(assert (=> b!540351 (= res!229611 (not (nullable!345 (regex!981 (rule!1689 token!491)))))))

(declare-fun b!540352 () Bool)

(assert (=> b!540352 (= e!326244 (not (= (tag!1243 (rule!1689 token!491)) (String!6770 ""))))))

(assert (= (and d!190370 res!229610) b!540351))

(assert (= (and b!540351 res!229611) b!540352))

(assert (=> d!190370 m!787391))

(assert (=> b!540351 m!787393))

(assert (=> b!539755 d!190370))

(declare-fun d!190372 () Bool)

(declare-fun res!229612 () Bool)

(declare-fun e!326245 () Bool)

(assert (=> d!190372 (=> (not res!229612) (not e!326245))))

(assert (=> d!190372 (= res!229612 (validRegex!440 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))))))

(assert (=> d!190372 (= (ruleValid!201 thiss!22590 (rule!1689 (_1!3430 (v!16139 lt!224521)))) e!326245)))

(declare-fun b!540353 () Bool)

(declare-fun res!229613 () Bool)

(assert (=> b!540353 (=> (not res!229613) (not e!326245))))

(assert (=> b!540353 (= res!229613 (not (nullable!345 (regex!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))))))))

(declare-fun b!540354 () Bool)

(assert (=> b!540354 (= e!326245 (not (= (tag!1243 (rule!1689 (_1!3430 (v!16139 lt!224521)))) (String!6770 ""))))))

(assert (= (and d!190372 res!229612) b!540353))

(assert (= (and b!540353 res!229613) b!540354))

(assert (=> d!190372 m!787271))

(declare-fun m!788001 () Bool)

(assert (=> b!540353 m!788001))

(assert (=> b!539755 d!190372))

(declare-fun d!190374 () Bool)

(assert (=> d!190374 (= (apply!1256 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))) (seqFromList!1179 lt!224526)) (dynLambda!3100 (toValue!1828 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))) (seqFromList!1179 lt!224526)))))

(declare-fun b_lambda!20799 () Bool)

(assert (=> (not b_lambda!20799) (not d!190374)))

(declare-fun t!74372 () Bool)

(declare-fun tb!47655 () Bool)

(assert (=> (and b!539772 (= (toValue!1828 (transformation!981 (h!10676 rules!3103))) (toValue!1828 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))))) t!74372) tb!47655))

(declare-fun result!53244 () Bool)

(assert (=> tb!47655 (= result!53244 (inv!21 (dynLambda!3100 (toValue!1828 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521))))) (seqFromList!1179 lt!224526))))))

(declare-fun m!788003 () Bool)

(assert (=> tb!47655 m!788003))

(assert (=> d!190374 t!74372))

(declare-fun b_and!52811 () Bool)

(assert (= b_and!52795 (and (=> t!74372 result!53244) b_and!52811)))

(declare-fun tb!47657 () Bool)

(declare-fun t!74374 () Bool)

(assert (=> (and b!539766 (= (toValue!1828 (transformation!981 (rule!1689 token!491))) (toValue!1828 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))))) t!74374) tb!47657))

(declare-fun result!53246 () Bool)

(assert (= result!53246 result!53244))

(assert (=> d!190374 t!74374))

(declare-fun b_and!52813 () Bool)

(assert (= b_and!52797 (and (=> t!74374 result!53246) b_and!52813)))

(assert (=> d!190374 m!787225))

(declare-fun m!788005 () Bool)

(assert (=> d!190374 m!788005))

(assert (=> b!539755 d!190374))

(declare-fun d!190376 () Bool)

(assert (=> d!190376 (isPrefix!623 input!2705 input!2705)))

(declare-fun lt!224731 () Unit!9213)

(declare-fun choose!3820 (List!5284 List!5284) Unit!9213)

(assert (=> d!190376 (= lt!224731 (choose!3820 input!2705 input!2705))))

(assert (=> d!190376 (= (lemmaIsPrefixRefl!363 input!2705 input!2705) lt!224731)))

(declare-fun bs!67499 () Bool)

(assert (= bs!67499 d!190376))

(assert (=> bs!67499 m!787241))

(declare-fun m!788007 () Bool)

(assert (=> bs!67499 m!788007))

(assert (=> b!539755 d!190376))

(declare-fun b!540358 () Bool)

(declare-fun e!326249 () Bool)

(assert (=> b!540358 (= e!326249 (>= (size!4239 lt!224515) (size!4239 input!2705)))))

(declare-fun b!540356 () Bool)

(declare-fun res!229615 () Bool)

(declare-fun e!326248 () Bool)

(assert (=> b!540356 (=> (not res!229615) (not e!326248))))

(assert (=> b!540356 (= res!229615 (= (head!1182 input!2705) (head!1182 lt!224515)))))

(declare-fun d!190378 () Bool)

(assert (=> d!190378 e!326249))

(declare-fun res!229617 () Bool)

(assert (=> d!190378 (=> res!229617 e!326249)))

(declare-fun lt!224732 () Bool)

(assert (=> d!190378 (= res!229617 (not lt!224732))))

(declare-fun e!326247 () Bool)

(assert (=> d!190378 (= lt!224732 e!326247)))

(declare-fun res!229614 () Bool)

(assert (=> d!190378 (=> res!229614 e!326247)))

(assert (=> d!190378 (= res!229614 ((_ is Nil!5274) input!2705))))

(assert (=> d!190378 (= (isPrefix!623 input!2705 lt!224515) lt!224732)))

(declare-fun b!540357 () Bool)

(assert (=> b!540357 (= e!326248 (isPrefix!623 (tail!711 input!2705) (tail!711 lt!224515)))))

(declare-fun b!540355 () Bool)

(assert (=> b!540355 (= e!326247 e!326248)))

(declare-fun res!229616 () Bool)

(assert (=> b!540355 (=> (not res!229616) (not e!326248))))

(assert (=> b!540355 (= res!229616 (not ((_ is Nil!5274) lt!224515)))))

(assert (= (and d!190378 (not res!229614)) b!540355))

(assert (= (and b!540355 res!229616) b!540356))

(assert (= (and b!540356 res!229615) b!540357))

(assert (= (and d!190378 (not res!229617)) b!540358))

(assert (=> b!540358 m!787985))

(assert (=> b!540358 m!787427))

(assert (=> b!540356 m!787379))

(assert (=> b!540356 m!787987))

(assert (=> b!540357 m!787375))

(assert (=> b!540357 m!787989))

(assert (=> b!540357 m!787375))

(assert (=> b!540357 m!787989))

(declare-fun m!788009 () Bool)

(assert (=> b!540357 m!788009))

(assert (=> b!539755 d!190378))

(declare-fun b!540362 () Bool)

(declare-fun e!326252 () Bool)

(assert (=> b!540362 (= e!326252 (>= (size!4239 input!2705) (size!4239 lt!224526)))))

(declare-fun b!540360 () Bool)

(declare-fun res!229619 () Bool)

(declare-fun e!326251 () Bool)

(assert (=> b!540360 (=> (not res!229619) (not e!326251))))

(assert (=> b!540360 (= res!229619 (= (head!1182 lt!224526) (head!1182 input!2705)))))

(declare-fun d!190380 () Bool)

(assert (=> d!190380 e!326252))

(declare-fun res!229621 () Bool)

(assert (=> d!190380 (=> res!229621 e!326252)))

(declare-fun lt!224733 () Bool)

(assert (=> d!190380 (= res!229621 (not lt!224733))))

(declare-fun e!326250 () Bool)

(assert (=> d!190380 (= lt!224733 e!326250)))

(declare-fun res!229618 () Bool)

(assert (=> d!190380 (=> res!229618 e!326250)))

(assert (=> d!190380 (= res!229618 ((_ is Nil!5274) lt!224526))))

(assert (=> d!190380 (= (isPrefix!623 lt!224526 input!2705) lt!224733)))

(declare-fun b!540361 () Bool)

(assert (=> b!540361 (= e!326251 (isPrefix!623 (tail!711 lt!224526) (tail!711 input!2705)))))

(declare-fun b!540359 () Bool)

(assert (=> b!540359 (= e!326250 e!326251)))

(declare-fun res!229620 () Bool)

(assert (=> b!540359 (=> (not res!229620) (not e!326251))))

(assert (=> b!540359 (= res!229620 (not ((_ is Nil!5274) input!2705)))))

(assert (= (and d!190380 (not res!229618)) b!540359))

(assert (= (and b!540359 res!229620) b!540360))

(assert (= (and b!540360 res!229619) b!540361))

(assert (= (and d!190380 (not res!229621)) b!540362))

(assert (=> b!540362 m!787427))

(assert (=> b!540362 m!787243))

(assert (=> b!540360 m!787957))

(assert (=> b!540360 m!787379))

(assert (=> b!540361 m!787961))

(assert (=> b!540361 m!787375))

(assert (=> b!540361 m!787961))

(assert (=> b!540361 m!787375))

(declare-fun m!788011 () Bool)

(assert (=> b!540361 m!788011))

(assert (=> b!539759 d!190380))

(declare-fun b!540373 () Bool)

(declare-fun e!326260 () Bool)

(declare-fun e!326259 () Bool)

(assert (=> b!540373 (= e!326260 e!326259)))

(declare-fun c!102388 () Bool)

(assert (=> b!540373 (= c!102388 ((_ is IntegerValue!3016) (value!32825 token!491)))))

(declare-fun b!540374 () Bool)

(declare-fun inv!16 (TokenValue!1005) Bool)

(assert (=> b!540374 (= e!326260 (inv!16 (value!32825 token!491)))))

(declare-fun b!540375 () Bool)

(declare-fun res!229624 () Bool)

(declare-fun e!326261 () Bool)

(assert (=> b!540375 (=> res!229624 e!326261)))

(assert (=> b!540375 (= res!229624 (not ((_ is IntegerValue!3017) (value!32825 token!491))))))

(assert (=> b!540375 (= e!326259 e!326261)))

(declare-fun b!540376 () Bool)

(declare-fun inv!17 (TokenValue!1005) Bool)

(assert (=> b!540376 (= e!326259 (inv!17 (value!32825 token!491)))))

(declare-fun b!540377 () Bool)

(declare-fun inv!15 (TokenValue!1005) Bool)

(assert (=> b!540377 (= e!326261 (inv!15 (value!32825 token!491)))))

(declare-fun d!190382 () Bool)

(declare-fun c!102389 () Bool)

(assert (=> d!190382 (= c!102389 ((_ is IntegerValue!3015) (value!32825 token!491)))))

(assert (=> d!190382 (= (inv!21 (value!32825 token!491)) e!326260)))

(assert (= (and d!190382 c!102389) b!540374))

(assert (= (and d!190382 (not c!102389)) b!540373))

(assert (= (and b!540373 c!102388) b!540376))

(assert (= (and b!540373 (not c!102388)) b!540375))

(assert (= (and b!540375 (not res!229624)) b!540377))

(declare-fun m!788013 () Bool)

(assert (=> b!540374 m!788013))

(declare-fun m!788015 () Bool)

(assert (=> b!540376 m!788015))

(declare-fun m!788017 () Bool)

(assert (=> b!540377 m!788017))

(assert (=> b!539778 d!190382))

(declare-fun d!190384 () Bool)

(assert (=> d!190384 (= (inv!6614 (tag!1243 (rule!1689 token!491))) (= (mod (str.len (value!32824 (tag!1243 (rule!1689 token!491)))) 2) 0))))

(assert (=> b!539757 d!190384))

(declare-fun d!190386 () Bool)

(declare-fun res!229625 () Bool)

(declare-fun e!326262 () Bool)

(assert (=> d!190386 (=> (not res!229625) (not e!326262))))

(assert (=> d!190386 (= res!229625 (semiInverseModEq!383 (toChars!1687 (transformation!981 (rule!1689 token!491))) (toValue!1828 (transformation!981 (rule!1689 token!491)))))))

(assert (=> d!190386 (= (inv!6617 (transformation!981 (rule!1689 token!491))) e!326262)))

(declare-fun b!540378 () Bool)

(assert (=> b!540378 (= e!326262 (equivClasses!366 (toChars!1687 (transformation!981 (rule!1689 token!491))) (toValue!1828 (transformation!981 (rule!1689 token!491)))))))

(assert (= (and d!190386 res!229625) b!540378))

(assert (=> d!190386 m!787943))

(assert (=> b!540378 m!787945))

(assert (=> b!539757 d!190386))

(declare-fun d!190388 () Bool)

(declare-fun res!229628 () Bool)

(declare-fun e!326265 () Bool)

(assert (=> d!190388 (=> (not res!229628) (not e!326265))))

(declare-fun rulesValid!348 (LexerInterface!867 List!5285) Bool)

(assert (=> d!190388 (= res!229628 (rulesValid!348 thiss!22590 rules!3103))))

(assert (=> d!190388 (= (rulesInvariant!830 thiss!22590 rules!3103) e!326265)))

(declare-fun b!540381 () Bool)

(declare-datatypes ((List!5287 0))(
  ( (Nil!5277) (Cons!5277 (h!10678 String!6769) (t!74384 List!5287)) )
))
(declare-fun noDuplicateTag!348 (LexerInterface!867 List!5285 List!5287) Bool)

(assert (=> b!540381 (= e!326265 (noDuplicateTag!348 thiss!22590 rules!3103 Nil!5277))))

(assert (= (and d!190388 res!229628) b!540381))

(declare-fun m!788019 () Bool)

(assert (=> d!190388 m!788019))

(declare-fun m!788021 () Bool)

(assert (=> b!540381 m!788021))

(assert (=> b!539779 d!190388))

(declare-fun b!540394 () Bool)

(declare-fun e!326268 () Bool)

(declare-fun tp!172120 () Bool)

(assert (=> b!540394 (= e!326268 tp!172120)))

(assert (=> b!539771 (= tp!172063 e!326268)))

(declare-fun b!540392 () Bool)

(assert (=> b!540392 (= e!326268 tp_is_empty!2985)))

(declare-fun b!540393 () Bool)

(declare-fun tp!172124 () Bool)

(declare-fun tp!172122 () Bool)

(assert (=> b!540393 (= e!326268 (and tp!172124 tp!172122))))

(declare-fun b!540395 () Bool)

(declare-fun tp!172123 () Bool)

(declare-fun tp!172121 () Bool)

(assert (=> b!540395 (= e!326268 (and tp!172123 tp!172121))))

(assert (= (and b!539771 ((_ is ElementMatch!1315) (regex!981 (h!10676 rules!3103)))) b!540392))

(assert (= (and b!539771 ((_ is Concat!2320) (regex!981 (h!10676 rules!3103)))) b!540393))

(assert (= (and b!539771 ((_ is Star!1315) (regex!981 (h!10676 rules!3103)))) b!540394))

(assert (= (and b!539771 ((_ is Union!1315) (regex!981 (h!10676 rules!3103)))) b!540395))

(declare-fun b!540406 () Bool)

(declare-fun b_free!14901 () Bool)

(declare-fun b_next!14917 () Bool)

(assert (=> b!540406 (= b_free!14901 (not b_next!14917))))

(declare-fun t!74376 () Bool)

(declare-fun tb!47659 () Bool)

(assert (=> (and b!540406 (= (toValue!1828 (transformation!981 (h!10676 (t!74334 rules!3103)))) (toValue!1828 (transformation!981 (rule!1689 token!491)))) t!74376) tb!47659))

(declare-fun result!53252 () Bool)

(assert (= result!53252 result!53228))

(assert (=> d!190298 t!74376))

(declare-fun t!74378 () Bool)

(declare-fun tb!47661 () Bool)

(assert (=> (and b!540406 (= (toValue!1828 (transformation!981 (h!10676 (t!74334 rules!3103)))) (toValue!1828 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))))) t!74378) tb!47661))

(declare-fun result!53254 () Bool)

(assert (= result!53254 result!53244))

(assert (=> d!190374 t!74378))

(declare-fun b_and!52815 () Bool)

(declare-fun tp!172133 () Bool)

(assert (=> b!540406 (= tp!172133 (and (=> t!74376 result!53252) (=> t!74378 result!53254) b_and!52815))))

(declare-fun b_free!14903 () Bool)

(declare-fun b_next!14919 () Bool)

(assert (=> b!540406 (= b_free!14903 (not b_next!14919))))

(declare-fun t!74380 () Bool)

(declare-fun tb!47663 () Bool)

(assert (=> (and b!540406 (= (toChars!1687 (transformation!981 (h!10676 (t!74334 rules!3103)))) (toChars!1687 (transformation!981 (rule!1689 token!491)))) t!74380) tb!47663))

(declare-fun result!53256 () Bool)

(assert (= result!53256 result!53234))

(assert (=> d!190306 t!74380))

(assert (=> b!540271 t!74380))

(declare-fun tb!47665 () Bool)

(declare-fun t!74382 () Bool)

(assert (=> (and b!540406 (= (toChars!1687 (transformation!981 (h!10676 (t!74334 rules!3103)))) (toChars!1687 (transformation!981 (rule!1689 (_1!3430 (v!16139 lt!224521)))))) t!74382) tb!47665))

(declare-fun result!53258 () Bool)

(assert (= result!53258 result!53240))

(assert (=> d!190360 t!74382))

(declare-fun b_and!52817 () Bool)

(declare-fun tp!172134 () Bool)

(assert (=> b!540406 (= tp!172134 (and (=> t!74380 result!53256) (=> t!74382 result!53258) b_and!52817))))

(declare-fun e!326279 () Bool)

(assert (=> b!540406 (= e!326279 (and tp!172133 tp!172134))))

(declare-fun tp!172136 () Bool)

(declare-fun e!326277 () Bool)

(declare-fun b!540405 () Bool)

(assert (=> b!540405 (= e!326277 (and tp!172136 (inv!6614 (tag!1243 (h!10676 (t!74334 rules!3103)))) (inv!6617 (transformation!981 (h!10676 (t!74334 rules!3103)))) e!326279))))

(declare-fun b!540404 () Bool)

(declare-fun e!326278 () Bool)

(declare-fun tp!172135 () Bool)

(assert (=> b!540404 (= e!326278 (and e!326277 tp!172135))))

(assert (=> b!539758 (= tp!172055 e!326278)))

(assert (= b!540405 b!540406))

(assert (= b!540404 b!540405))

(assert (= (and b!539758 ((_ is Cons!5275) (t!74334 rules!3103))) b!540404))

(declare-fun m!788023 () Bool)

(assert (=> b!540405 m!788023))

(declare-fun m!788025 () Bool)

(assert (=> b!540405 m!788025))

(declare-fun b!540411 () Bool)

(declare-fun e!326283 () Bool)

(declare-fun tp!172139 () Bool)

(assert (=> b!540411 (= e!326283 (and tp_is_empty!2985 tp!172139))))

(assert (=> b!539774 (= tp!172061 e!326283)))

(assert (= (and b!539774 ((_ is Cons!5274) (t!74333 suffix!1342))) b!540411))

(declare-fun b!540412 () Bool)

(declare-fun e!326284 () Bool)

(declare-fun tp!172140 () Bool)

(assert (=> b!540412 (= e!326284 (and tp_is_empty!2985 tp!172140))))

(assert (=> b!539778 (= tp!172062 e!326284)))

(assert (= (and b!539778 ((_ is Cons!5274) (originalCharacters!1020 token!491))) b!540412))

(declare-fun b!540415 () Bool)

(declare-fun e!326285 () Bool)

(declare-fun tp!172141 () Bool)

(assert (=> b!540415 (= e!326285 tp!172141)))

(assert (=> b!539757 (= tp!172056 e!326285)))

(declare-fun b!540413 () Bool)

(assert (=> b!540413 (= e!326285 tp_is_empty!2985)))

(declare-fun b!540414 () Bool)

(declare-fun tp!172145 () Bool)

(declare-fun tp!172143 () Bool)

(assert (=> b!540414 (= e!326285 (and tp!172145 tp!172143))))

(declare-fun b!540416 () Bool)

(declare-fun tp!172144 () Bool)

(declare-fun tp!172142 () Bool)

(assert (=> b!540416 (= e!326285 (and tp!172144 tp!172142))))

(assert (= (and b!539757 ((_ is ElementMatch!1315) (regex!981 (rule!1689 token!491)))) b!540413))

(assert (= (and b!539757 ((_ is Concat!2320) (regex!981 (rule!1689 token!491)))) b!540414))

(assert (= (and b!539757 ((_ is Star!1315) (regex!981 (rule!1689 token!491)))) b!540415))

(assert (= (and b!539757 ((_ is Union!1315) (regex!981 (rule!1689 token!491)))) b!540416))

(declare-fun b!540417 () Bool)

(declare-fun e!326286 () Bool)

(declare-fun tp!172146 () Bool)

(assert (=> b!540417 (= e!326286 (and tp_is_empty!2985 tp!172146))))

(assert (=> b!539763 (= tp!172059 e!326286)))

(assert (= (and b!539763 ((_ is Cons!5274) (t!74333 input!2705))) b!540417))

(declare-fun b_lambda!20801 () Bool)

(assert (= b_lambda!20795 (or (and b!539772 b_free!14891 (= (toChars!1687 (transformation!981 (h!10676 rules!3103))) (toChars!1687 (transformation!981 (rule!1689 token!491))))) (and b!539766 b_free!14895) (and b!540406 b_free!14903 (= (toChars!1687 (transformation!981 (h!10676 (t!74334 rules!3103)))) (toChars!1687 (transformation!981 (rule!1689 token!491))))) b_lambda!20801)))

(declare-fun b_lambda!20803 () Bool)

(assert (= b_lambda!20793 (or (and b!539772 b_free!14891 (= (toChars!1687 (transformation!981 (h!10676 rules!3103))) (toChars!1687 (transformation!981 (rule!1689 token!491))))) (and b!539766 b_free!14895) (and b!540406 b_free!14903 (= (toChars!1687 (transformation!981 (h!10676 (t!74334 rules!3103)))) (toChars!1687 (transformation!981 (rule!1689 token!491))))) b_lambda!20803)))

(declare-fun b_lambda!20805 () Bool)

(assert (= b_lambda!20791 (or (and b!539772 b_free!14889 (= (toValue!1828 (transformation!981 (h!10676 rules!3103))) (toValue!1828 (transformation!981 (rule!1689 token!491))))) (and b!539766 b_free!14893) (and b!540406 b_free!14901 (= (toValue!1828 (transformation!981 (h!10676 (t!74334 rules!3103)))) (toValue!1828 (transformation!981 (rule!1689 token!491))))) b_lambda!20805)))

(check-sat (not b!540357) (not b_lambda!20799) (not b!540342) (not b!540061) (not b!540235) (not b!540234) (not d!190222) (not b!540404) (not b!539899) (not d!190326) (not b!540240) (not b!540312) (not b!540362) (not b!540030) (not b!540338) (not b!540241) (not d!190350) (not d!190286) b_and!52809 (not b!540025) (not b!540271) (not d!190142) (not b!540230) b_and!52813 (not b!540411) (not b!540333) (not b!540325) (not b!540077) (not b!540279) tp_is_empty!2985 (not b!540257) (not d!190388) (not b!540072) (not b_next!14919) (not b!540308) (not b!540310) (not d!190370) (not b_lambda!20803) (not d!190304) (not b!540245) (not b!540351) (not b!540315) (not b!540328) (not b!540377) (not b!540238) (not d!190244) (not b_lambda!20797) (not b!540320) (not bm!38270) (not b!540027) (not b!540417) (not b!540313) (not d!190316) (not b!540060) (not b!540317) (not b!540233) (not b!540345) (not b!540266) (not d!190164) (not b!540378) (not b!540029) (not b!540277) (not b!540311) (not tb!47651) (not b_next!14911) (not b!540394) (not b!540307) (not b_next!14909) (not d!190336) (not d!190340) (not b!540414) (not b!540323) (not b!540356) (not d!190292) (not b!540309) (not b!539918) (not b_next!14907) (not d!190372) (not b!540360) (not b!540374) (not b!540361) (not b!540260) b_and!52815 (not b!540335) (not tb!47647) (not b!539896) (not d!190342) (not b!540415) (not d!190312) (not b!540247) (not b!540340) (not b!539892) (not b_next!14905) (not b!540336) (not d!190294) (not b!540353) (not b!540272) (not d!190288) (not d!190330) (not b!540395) (not d!190290) (not b!540024) (not b!540232) (not b!539894) (not d!190368) (not d!190328) (not b_lambda!20805) (not b!540074) (not d!190188) (not b_lambda!20801) (not d!190302) (not b!540239) (not d!190344) (not b!540416) (not d!190376) (not tb!47643) (not bm!38246) (not b!540412) (not d!190178) b_and!52811 (not b!540376) (not b!540275) (not bm!38272) (not b!540381) (not b!540231) (not b!540244) (not b!540028) (not d!190348) (not bm!38269) b_and!52807 (not b!540236) (not b!540327) (not b!540346) (not b!540302) (not d!190360) (not b!540331) (not bm!38258) (not b!539889) (not b!540242) (not tb!47655) (not b!540243) (not b!540405) (not b!540393) (not b!540332) (not b_next!14917) (not d!190358) (not d!190366) (not d!190296) (not b!540248) (not d!190386) (not d!190356) (not b!540341) (not b!540259) (not b!540344) (not d!190322) (not b!540358) b_and!52817 (not d!190138) (not b!540322) (not d!190238) (not b!540337) (not b!540026) (not b!540076) (not b!539887) (not b!539820) (not d!190308) (not d!190306) (not d!190192) (not b!540073) (not d!190338) (not b!540032) (not d!190332))
(check-sat b_and!52809 b_and!52813 (not b_next!14919) (not b_next!14905) b_and!52811 b_and!52807 (not b_next!14917) b_and!52817 (not b_next!14911) (not b_next!14909) (not b_next!14907) b_and!52815)
