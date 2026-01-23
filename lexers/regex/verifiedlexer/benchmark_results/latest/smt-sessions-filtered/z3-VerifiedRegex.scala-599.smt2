; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18462 () Bool)

(assert start!18462)

(declare-fun b!170856 () Bool)

(declare-fun b_free!6585 () Bool)

(declare-fun b_next!6585 () Bool)

(assert (=> b!170856 (= b_free!6585 (not b_next!6585))))

(declare-fun tp!84295 () Bool)

(declare-fun b_and!11209 () Bool)

(assert (=> b!170856 (= tp!84295 b_and!11209)))

(declare-fun b_free!6587 () Bool)

(declare-fun b_next!6587 () Bool)

(assert (=> b!170856 (= b_free!6587 (not b_next!6587))))

(declare-fun tp!84290 () Bool)

(declare-fun b_and!11211 () Bool)

(assert (=> b!170856 (= tp!84290 b_and!11211)))

(declare-fun b!170858 () Bool)

(declare-fun b_free!6589 () Bool)

(declare-fun b_next!6589 () Bool)

(assert (=> b!170858 (= b_free!6589 (not b_next!6589))))

(declare-fun tp!84288 () Bool)

(declare-fun b_and!11213 () Bool)

(assert (=> b!170858 (= tp!84288 b_and!11213)))

(declare-fun b_free!6591 () Bool)

(declare-fun b_next!6591 () Bool)

(assert (=> b!170858 (= b_free!6591 (not b_next!6591))))

(declare-fun tp!84292 () Bool)

(declare-fun b_and!11215 () Bool)

(assert (=> b!170858 (= tp!84292 b_and!11215)))

(declare-fun b!170851 () Bool)

(declare-fun b_free!6593 () Bool)

(declare-fun b_next!6593 () Bool)

(assert (=> b!170851 (= b_free!6593 (not b_next!6593))))

(declare-fun tp!84287 () Bool)

(declare-fun b_and!11217 () Bool)

(assert (=> b!170851 (= tp!84287 b_and!11217)))

(declare-fun b_free!6595 () Bool)

(declare-fun b_next!6595 () Bool)

(assert (=> b!170851 (= b_free!6595 (not b_next!6595))))

(declare-fun tp!84283 () Bool)

(declare-fun b_and!11219 () Bool)

(assert (=> b!170851 (= tp!84283 b_and!11219)))

(declare-fun bs!16592 () Bool)

(declare-fun b!170842 () Bool)

(declare-fun b!170855 () Bool)

(assert (= bs!16592 (and b!170842 b!170855)))

(declare-fun lambda!4880 () Int)

(declare-fun lambda!4879 () Int)

(assert (=> bs!16592 (not (= lambda!4880 lambda!4879))))

(declare-fun b!170874 () Bool)

(declare-fun e!103500 () Bool)

(assert (=> b!170874 (= e!103500 true)))

(declare-fun b!170873 () Bool)

(declare-fun e!103499 () Bool)

(assert (=> b!170873 (= e!103499 e!103500)))

(declare-fun b!170872 () Bool)

(declare-fun e!103498 () Bool)

(assert (=> b!170872 (= e!103498 e!103499)))

(assert (=> b!170842 e!103498))

(assert (= b!170873 b!170874))

(assert (= b!170872 b!170873))

(declare-datatypes ((List!2919 0))(
  ( (Nil!2909) (Cons!2909 (h!8306 (_ BitVec 16)) (t!27117 List!2919)) )
))
(declare-datatypes ((TokenValue!543 0))(
  ( (FloatLiteralValue!1086 (text!4246 List!2919)) (TokenValueExt!542 (__x!2573 Int)) (Broken!2715 (value!19138 List!2919)) (Object!552) (End!543) (Def!543) (Underscore!543) (Match!543) (Else!543) (Error!543) (Case!543) (If!543) (Extends!543) (Abstract!543) (Class!543) (Val!543) (DelimiterValue!1086 (del!603 List!2919)) (KeywordValue!549 (value!19139 List!2919)) (CommentValue!1086 (value!19140 List!2919)) (WhitespaceValue!1086 (value!19141 List!2919)) (IndentationValue!543 (value!19142 List!2919)) (String!3794) (Int32!543) (Broken!2716 (value!19143 List!2919)) (Boolean!544) (Unit!2541) (OperatorValue!546 (op!603 List!2919)) (IdentifierValue!1086 (value!19144 List!2919)) (IdentifierValue!1087 (value!19145 List!2919)) (WhitespaceValue!1087 (value!19146 List!2919)) (True!1086) (False!1086) (Broken!2717 (value!19147 List!2919)) (Broken!2718 (value!19148 List!2919)) (True!1087) (RightBrace!543) (RightBracket!543) (Colon!543) (Null!543) (Comma!543) (LeftBracket!543) (False!1087) (LeftBrace!543) (ImaginaryLiteralValue!543 (text!4247 List!2919)) (StringLiteralValue!1629 (value!19149 List!2919)) (EOFValue!543 (value!19150 List!2919)) (IdentValue!543 (value!19151 List!2919)) (DelimiterValue!1087 (value!19152 List!2919)) (DedentValue!543 (value!19153 List!2919)) (NewLineValue!543 (value!19154 List!2919)) (IntegerValue!1629 (value!19155 (_ BitVec 32)) (text!4248 List!2919)) (IntegerValue!1630 (value!19156 Int) (text!4249 List!2919)) (Times!543) (Or!543) (Equal!543) (Minus!543) (Broken!2719 (value!19157 List!2919)) (And!543) (Div!543) (LessEqual!543) (Mod!543) (Concat!1288) (Not!543) (Plus!543) (SpaceValue!543 (value!19158 List!2919)) (IntegerValue!1631 (value!19159 Int) (text!4250 List!2919)) (StringLiteralValue!1630 (text!4251 List!2919)) (FloatLiteralValue!1087 (text!4252 List!2919)) (BytesLiteralValue!543 (value!19160 List!2919)) (CommentValue!1087 (value!19161 List!2919)) (StringLiteralValue!1631 (value!19162 List!2919)) (ErrorTokenValue!543 (msg!604 List!2919)) )
))
(declare-datatypes ((C!2412 0))(
  ( (C!2413 (val!1092 Int)) )
))
(declare-datatypes ((List!2920 0))(
  ( (Nil!2910) (Cons!2910 (h!8307 C!2412) (t!27118 List!2920)) )
))
(declare-datatypes ((IArray!1729 0))(
  ( (IArray!1730 (innerList!922 List!2920)) )
))
(declare-datatypes ((Conc!864 0))(
  ( (Node!864 (left!2223 Conc!864) (right!2553 Conc!864) (csize!1958 Int) (cheight!1075 Int)) (Leaf!1464 (xs!3459 IArray!1729) (csize!1959 Int)) (Empty!864) )
))
(declare-datatypes ((BalanceConc!1736 0))(
  ( (BalanceConc!1737 (c!33808 Conc!864)) )
))
(declare-datatypes ((TokenValueInjection!858 0))(
  ( (TokenValueInjection!859 (toValue!1184 Int) (toChars!1043 Int)) )
))
(declare-datatypes ((String!3795 0))(
  ( (String!3796 (value!19163 String)) )
))
(declare-datatypes ((Regex!745 0))(
  ( (ElementMatch!745 (c!33809 C!2412)) (Concat!1289 (regOne!2002 Regex!745) (regTwo!2002 Regex!745)) (EmptyExpr!745) (Star!745 (reg!1074 Regex!745)) (EmptyLang!745) (Union!745 (regOne!2003 Regex!745) (regTwo!2003 Regex!745)) )
))
(declare-datatypes ((Rule!842 0))(
  ( (Rule!843 (regex!521 Regex!745) (tag!699 String!3795) (isSeparator!521 Bool) (transformation!521 TokenValueInjection!858)) )
))
(declare-datatypes ((List!2921 0))(
  ( (Nil!2911) (Cons!2911 (h!8308 Rule!842) (t!27119 List!2921)) )
))
(declare-fun rules!1920 () List!2921)

(get-info :version)

(assert (= (and b!170842 ((_ is Cons!2911) rules!1920)) b!170872))

(declare-fun order!1585 () Int)

(declare-fun order!1587 () Int)

(declare-fun dynLambda!1101 (Int Int) Int)

(declare-fun dynLambda!1102 (Int Int) Int)

(assert (=> b!170874 (< (dynLambda!1101 order!1585 (toValue!1184 (transformation!521 (h!8308 rules!1920)))) (dynLambda!1102 order!1587 lambda!4880))))

(declare-fun order!1589 () Int)

(declare-fun dynLambda!1103 (Int Int) Int)

(assert (=> b!170874 (< (dynLambda!1103 order!1589 (toChars!1043 (transformation!521 (h!8308 rules!1920)))) (dynLambda!1102 order!1587 lambda!4880))))

(assert (=> b!170842 true))

(declare-fun b!170835 () Bool)

(declare-fun e!103483 () Bool)

(declare-fun e!103482 () Bool)

(assert (=> b!170835 (= e!103483 (not e!103482))))

(declare-fun res!77249 () Bool)

(assert (=> b!170835 (=> res!77249 e!103482)))

(declare-datatypes ((Token!786 0))(
  ( (Token!787 (value!19164 TokenValue!543) (rule!1028 Rule!842) (size!2409 Int) (originalCharacters!564 List!2920)) )
))
(declare-fun separatorToken!170 () Token!786)

(declare-fun lt!54011 () List!2920)

(declare-datatypes ((List!2922 0))(
  ( (Nil!2912) (Cons!2912 (h!8309 Token!786) (t!27120 List!2922)) )
))
(declare-fun tokens!465 () List!2922)

(declare-datatypes ((LexerInterface!407 0))(
  ( (LexerInterfaceExt!404 (__x!2574 Int)) (Lexer!405) )
))
(declare-fun thiss!17480 () LexerInterface!407)

(declare-fun list!1059 (BalanceConc!1736) List!2920)

(declare-datatypes ((IArray!1731 0))(
  ( (IArray!1732 (innerList!923 List!2922)) )
))
(declare-datatypes ((Conc!865 0))(
  ( (Node!865 (left!2224 Conc!865) (right!2554 Conc!865) (csize!1960 Int) (cheight!1076 Int)) (Leaf!1465 (xs!3460 IArray!1731) (csize!1961 Int)) (Empty!865) )
))
(declare-datatypes ((BalanceConc!1738 0))(
  ( (BalanceConc!1739 (c!33810 Conc!865)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!90 (LexerInterface!407 List!2921 BalanceConc!1738 Token!786 Int) BalanceConc!1736)

(declare-fun seqFromList!419 (List!2922) BalanceConc!1738)

(assert (=> b!170835 (= res!77249 (not (= lt!54011 (list!1059 (printWithSeparatorTokenWhenNeededRec!90 thiss!17480 rules!1920 (seqFromList!419 (t!27120 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!54009 () List!2920)

(declare-fun lt!54013 () List!2920)

(assert (=> b!170835 (= lt!54009 lt!54013)))

(declare-fun lt!54006 () List!2920)

(declare-fun lt!54014 () List!2920)

(declare-fun ++!668 (List!2920 List!2920) List!2920)

(assert (=> b!170835 (= lt!54013 (++!668 lt!54006 lt!54014))))

(declare-fun lt!54015 () List!2920)

(assert (=> b!170835 (= lt!54009 (++!668 (++!668 lt!54006 lt!54015) lt!54011))))

(declare-datatypes ((Unit!2542 0))(
  ( (Unit!2543) )
))
(declare-fun lt!54010 () Unit!2542)

(declare-fun lemmaConcatAssociativity!206 (List!2920 List!2920 List!2920) Unit!2542)

(assert (=> b!170835 (= lt!54010 (lemmaConcatAssociativity!206 lt!54006 lt!54015 lt!54011))))

(declare-fun charsOf!176 (Token!786) BalanceConc!1736)

(assert (=> b!170835 (= lt!54006 (list!1059 (charsOf!176 (h!8309 tokens!465))))))

(assert (=> b!170835 (= lt!54014 (++!668 lt!54015 lt!54011))))

(declare-fun printWithSeparatorTokenWhenNeededList!100 (LexerInterface!407 List!2921 List!2922 Token!786) List!2920)

(assert (=> b!170835 (= lt!54011 (printWithSeparatorTokenWhenNeededList!100 thiss!17480 rules!1920 (t!27120 tokens!465) separatorToken!170))))

(assert (=> b!170835 (= lt!54015 (list!1059 (charsOf!176 separatorToken!170)))))

(declare-fun b!170836 () Bool)

(declare-fun e!103487 () Bool)

(declare-fun e!103476 () Bool)

(declare-fun tp!84293 () Bool)

(declare-fun inv!3733 (String!3795) Bool)

(declare-fun inv!3736 (TokenValueInjection!858) Bool)

(assert (=> b!170836 (= e!103476 (and tp!84293 (inv!3733 (tag!699 (rule!1028 separatorToken!170))) (inv!3736 (transformation!521 (rule!1028 separatorToken!170))) e!103487))))

(declare-fun b!170837 () Bool)

(declare-fun e!103470 () Bool)

(assert (=> b!170837 (= e!103470 e!103483)))

(declare-fun res!77244 () Bool)

(assert (=> b!170837 (=> (not res!77244) (not e!103483))))

(declare-fun lt!54007 () List!2920)

(declare-fun lt!54017 () List!2920)

(assert (=> b!170837 (= res!77244 (= lt!54007 lt!54017))))

(declare-fun lt!54008 () BalanceConc!1738)

(assert (=> b!170837 (= lt!54017 (list!1059 (printWithSeparatorTokenWhenNeededRec!90 thiss!17480 rules!1920 lt!54008 separatorToken!170 0)))))

(assert (=> b!170837 (= lt!54007 (printWithSeparatorTokenWhenNeededList!100 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!84291 () Bool)

(declare-fun e!103480 () Bool)

(declare-fun b!170838 () Bool)

(declare-fun inv!21 (TokenValue!543) Bool)

(assert (=> b!170838 (= e!103480 (and (inv!21 (value!19164 separatorToken!170)) e!103476 tp!84291))))

(declare-fun b!170839 () Bool)

(declare-fun e!103473 () Bool)

(assert (=> b!170839 (= e!103473 e!103470)))

(declare-fun res!77257 () Bool)

(assert (=> b!170839 (=> (not res!77257) (not e!103470))))

(declare-fun rulesProduceEachTokenIndividually!199 (LexerInterface!407 List!2921 BalanceConc!1738) Bool)

(assert (=> b!170839 (= res!77257 (rulesProduceEachTokenIndividually!199 thiss!17480 rules!1920 lt!54008))))

(assert (=> b!170839 (= lt!54008 (seqFromList!419 tokens!465))))

(declare-fun b!170840 () Bool)

(declare-fun res!77258 () Bool)

(assert (=> b!170840 (=> (not res!77258) (not e!103470))))

(assert (=> b!170840 (= res!77258 (isSeparator!521 (rule!1028 separatorToken!170)))))

(declare-fun b!170841 () Bool)

(declare-fun res!77247 () Bool)

(assert (=> b!170841 (=> (not res!77247) (not e!103470))))

(declare-fun rulesProduceIndividualToken!156 (LexerInterface!407 List!2921 Token!786) Bool)

(assert (=> b!170841 (= res!77247 (rulesProduceIndividualToken!156 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!103484 () Bool)

(declare-fun e!103475 () Bool)

(assert (=> b!170842 (= e!103484 e!103475)))

(declare-fun res!77255 () Bool)

(assert (=> b!170842 (=> res!77255 e!103475)))

(declare-datatypes ((tuple2!2814 0))(
  ( (tuple2!2815 (_1!1623 Token!786) (_2!1623 BalanceConc!1736)) )
))
(declare-datatypes ((Option!316 0))(
  ( (None!315) (Some!315 (v!13758 tuple2!2814)) )
))
(declare-fun isDefined!167 (Option!316) Bool)

(declare-fun maxPrefixZipperSequence!100 (LexerInterface!407 List!2921 BalanceConc!1736) Option!316)

(declare-fun seqFromList!420 (List!2920) BalanceConc!1736)

(assert (=> b!170842 (= res!77255 (not (isDefined!167 (maxPrefixZipperSequence!100 thiss!17480 rules!1920 (seqFromList!420 (originalCharacters!564 (h!8309 tokens!465)))))))))

(declare-fun lt!54005 () Unit!2542)

(declare-fun forallContained!88 (List!2922 Int Token!786) Unit!2542)

(assert (=> b!170842 (= lt!54005 (forallContained!88 tokens!465 lambda!4880 (h!8309 tokens!465)))))

(assert (=> b!170842 (= lt!54006 (originalCharacters!564 (h!8309 tokens!465)))))

(declare-fun b!170843 () Bool)

(declare-fun e!103469 () Bool)

(declare-fun e!103471 () Bool)

(declare-fun tp!84294 () Bool)

(assert (=> b!170843 (= e!103469 (and e!103471 tp!84294))))

(declare-fun b!170844 () Bool)

(declare-fun res!77256 () Bool)

(assert (=> b!170844 (=> (not res!77256) (not e!103470))))

(declare-fun sepAndNonSepRulesDisjointChars!110 (List!2921 List!2921) Bool)

(assert (=> b!170844 (= res!77256 (sepAndNonSepRulesDisjointChars!110 rules!1920 rules!1920))))

(declare-fun b!170845 () Bool)

(declare-fun res!77262 () Bool)

(assert (=> b!170845 (=> (not res!77262) (not e!103473))))

(declare-fun rulesInvariant!373 (LexerInterface!407 List!2921) Bool)

(assert (=> b!170845 (= res!77262 (rulesInvariant!373 thiss!17480 rules!1920))))

(declare-fun tp!84289 () Bool)

(declare-fun e!103488 () Bool)

(declare-fun b!170847 () Bool)

(declare-fun e!103489 () Bool)

(assert (=> b!170847 (= e!103489 (and tp!84289 (inv!3733 (tag!699 (rule!1028 (h!8309 tokens!465)))) (inv!3736 (transformation!521 (rule!1028 (h!8309 tokens!465)))) e!103488))))

(declare-fun b!170848 () Bool)

(declare-fun res!77260 () Bool)

(assert (=> b!170848 (=> res!77260 e!103484)))

(declare-fun isEmpty!1241 (BalanceConc!1738) Bool)

(declare-datatypes ((tuple2!2816 0))(
  ( (tuple2!2817 (_1!1624 BalanceConc!1738) (_2!1624 BalanceConc!1736)) )
))
(declare-fun lex!207 (LexerInterface!407 List!2921 BalanceConc!1736) tuple2!2816)

(assert (=> b!170848 (= res!77260 (isEmpty!1241 (_1!1624 (lex!207 thiss!17480 rules!1920 (seqFromList!420 lt!54006)))))))

(declare-fun e!103478 () Bool)

(declare-fun b!170849 () Bool)

(assert (=> b!170849 (= e!103478 (not (= lt!54007 (++!668 lt!54006 lt!54011))))))

(declare-fun b!170850 () Bool)

(declare-fun res!77253 () Bool)

(assert (=> b!170850 (=> (not res!77253) (not e!103470))))

(assert (=> b!170850 (= res!77253 ((_ is Cons!2912) tokens!465))))

(declare-fun e!103490 () Bool)

(assert (=> b!170851 (= e!103490 (and tp!84287 tp!84283))))

(declare-fun e!103472 () Bool)

(declare-fun b!170852 () Bool)

(declare-fun tp!84286 () Bool)

(assert (=> b!170852 (= e!103472 (and (inv!21 (value!19164 (h!8309 tokens!465))) e!103489 tp!84286))))

(declare-fun tp!84284 () Bool)

(declare-fun e!103477 () Bool)

(declare-fun b!170853 () Bool)

(declare-fun inv!3737 (Token!786) Bool)

(assert (=> b!170853 (= e!103477 (and (inv!3737 (h!8309 tokens!465)) e!103472 tp!84284))))

(declare-fun tp!84285 () Bool)

(declare-fun b!170854 () Bool)

(assert (=> b!170854 (= e!103471 (and tp!84285 (inv!3733 (tag!699 (h!8308 rules!1920))) (inv!3736 (transformation!521 (h!8308 rules!1920))) e!103490))))

(declare-fun res!77259 () Bool)

(assert (=> b!170855 (=> (not res!77259) (not e!103470))))

(declare-fun forall!571 (List!2922 Int) Bool)

(assert (=> b!170855 (= res!77259 (forall!571 tokens!465 lambda!4879))))

(assert (=> b!170856 (= e!103488 (and tp!84295 tp!84290))))

(declare-fun b!170857 () Bool)

(declare-fun res!77246 () Bool)

(assert (=> b!170857 (=> res!77246 e!103484)))

(assert (=> b!170857 (= res!77246 (not (rulesProduceIndividualToken!156 thiss!17480 rules!1920 (h!8309 tokens!465))))))

(assert (=> b!170858 (= e!103487 (and tp!84288 tp!84292))))

(declare-fun b!170859 () Bool)

(declare-fun res!77252 () Bool)

(assert (=> b!170859 (=> (not res!77252) (not e!103473))))

(declare-fun isEmpty!1242 (List!2921) Bool)

(assert (=> b!170859 (= res!77252 (not (isEmpty!1242 rules!1920)))))

(declare-fun b!170860 () Bool)

(assert (=> b!170860 (= e!103475 true)))

(declare-fun lt!54016 () Bool)

(declare-fun rulesValidInductive!122 (LexerInterface!407 List!2921) Bool)

(assert (=> b!170860 (= lt!54016 (rulesValidInductive!122 thiss!17480 rules!1920))))

(declare-fun e!103481 () Bool)

(assert (=> b!170860 e!103481))

(declare-fun res!77245 () Bool)

(assert (=> b!170860 (=> (not res!77245) (not e!103481))))

(declare-datatypes ((tuple2!2818 0))(
  ( (tuple2!2819 (_1!1625 Token!786) (_2!1625 List!2920)) )
))
(declare-datatypes ((Option!317 0))(
  ( (None!316) (Some!316 (v!13759 tuple2!2818)) )
))
(declare-fun lt!54018 () Option!317)

(declare-fun isDefined!168 (Option!317) Bool)

(assert (=> b!170860 (= res!77245 (isDefined!168 lt!54018))))

(declare-fun maxPrefix!137 (LexerInterface!407 List!2921 List!2920) Option!317)

(assert (=> b!170860 (= lt!54018 (maxPrefix!137 thiss!17480 rules!1920 lt!54006))))

(declare-fun res!77250 () Bool)

(assert (=> start!18462 (=> (not res!77250) (not e!103473))))

(assert (=> start!18462 (= res!77250 ((_ is Lexer!405) thiss!17480))))

(assert (=> start!18462 e!103473))

(assert (=> start!18462 true))

(assert (=> start!18462 e!103469))

(assert (=> start!18462 (and (inv!3737 separatorToken!170) e!103480)))

(assert (=> start!18462 e!103477))

(declare-fun b!170846 () Bool)

(declare-fun res!77254 () Bool)

(assert (=> b!170846 (=> (not res!77254) (not e!103483))))

(assert (=> b!170846 (= res!77254 (= (list!1059 (seqFromList!420 lt!54007)) lt!54017))))

(declare-fun b!170861 () Bool)

(assert (=> b!170861 (= e!103482 e!103484)))

(declare-fun res!77261 () Bool)

(assert (=> b!170861 (=> res!77261 e!103484)))

(declare-fun lt!54002 () List!2920)

(declare-fun lt!54012 () List!2920)

(assert (=> b!170861 (= res!77261 (or (not (= lt!54002 lt!54012)) (not (= lt!54012 lt!54006)) (not (= lt!54002 lt!54006))))))

(declare-fun printList!91 (LexerInterface!407 List!2922) List!2920)

(assert (=> b!170861 (= lt!54012 (printList!91 thiss!17480 (Cons!2912 (h!8309 tokens!465) Nil!2912)))))

(declare-fun lt!54004 () BalanceConc!1736)

(assert (=> b!170861 (= lt!54002 (list!1059 lt!54004))))

(declare-fun lt!54003 () BalanceConc!1738)

(declare-fun printTailRec!101 (LexerInterface!407 BalanceConc!1738 Int BalanceConc!1736) BalanceConc!1736)

(assert (=> b!170861 (= lt!54004 (printTailRec!101 thiss!17480 lt!54003 0 (BalanceConc!1737 Empty!864)))))

(declare-fun print!138 (LexerInterface!407 BalanceConc!1738) BalanceConc!1736)

(assert (=> b!170861 (= lt!54004 (print!138 thiss!17480 lt!54003))))

(declare-fun singletonSeq!73 (Token!786) BalanceConc!1738)

(assert (=> b!170861 (= lt!54003 (singletonSeq!73 (h!8309 tokens!465)))))

(declare-fun b!170862 () Bool)

(declare-fun res!77251 () Bool)

(assert (=> b!170862 (=> res!77251 e!103482)))

(assert (=> b!170862 (= res!77251 e!103478)))

(declare-fun res!77248 () Bool)

(assert (=> b!170862 (=> (not res!77248) (not e!103478))))

(assert (=> b!170862 (= res!77248 (not (= lt!54007 lt!54013)))))

(declare-fun b!170863 () Bool)

(declare-fun get!798 (Option!317) tuple2!2818)

(assert (=> b!170863 (= e!103481 (= (_1!1625 (get!798 lt!54018)) (h!8309 tokens!465)))))

(assert (= (and start!18462 res!77250) b!170859))

(assert (= (and b!170859 res!77252) b!170845))

(assert (= (and b!170845 res!77262) b!170839))

(assert (= (and b!170839 res!77257) b!170841))

(assert (= (and b!170841 res!77247) b!170840))

(assert (= (and b!170840 res!77258) b!170855))

(assert (= (and b!170855 res!77259) b!170844))

(assert (= (and b!170844 res!77256) b!170850))

(assert (= (and b!170850 res!77253) b!170837))

(assert (= (and b!170837 res!77244) b!170846))

(assert (= (and b!170846 res!77254) b!170835))

(assert (= (and b!170835 (not res!77249)) b!170862))

(assert (= (and b!170862 res!77248) b!170849))

(assert (= (and b!170862 (not res!77251)) b!170861))

(assert (= (and b!170861 (not res!77261)) b!170857))

(assert (= (and b!170857 (not res!77246)) b!170848))

(assert (= (and b!170848 (not res!77260)) b!170842))

(assert (= (and b!170842 (not res!77255)) b!170860))

(assert (= (and b!170860 res!77245) b!170863))

(assert (= b!170854 b!170851))

(assert (= b!170843 b!170854))

(assert (= (and start!18462 ((_ is Cons!2911) rules!1920)) b!170843))

(assert (= b!170836 b!170858))

(assert (= b!170838 b!170836))

(assert (= start!18462 b!170838))

(assert (= b!170847 b!170856))

(assert (= b!170852 b!170847))

(assert (= b!170853 b!170852))

(assert (= (and start!18462 ((_ is Cons!2912) tokens!465)) b!170853))

(declare-fun m!166873 () Bool)

(assert (=> b!170844 m!166873))

(declare-fun m!166875 () Bool)

(assert (=> b!170842 m!166875))

(assert (=> b!170842 m!166875))

(declare-fun m!166877 () Bool)

(assert (=> b!170842 m!166877))

(assert (=> b!170842 m!166877))

(declare-fun m!166879 () Bool)

(assert (=> b!170842 m!166879))

(declare-fun m!166881 () Bool)

(assert (=> b!170842 m!166881))

(declare-fun m!166883 () Bool)

(assert (=> b!170857 m!166883))

(declare-fun m!166885 () Bool)

(assert (=> b!170845 m!166885))

(declare-fun m!166887 () Bool)

(assert (=> b!170861 m!166887))

(declare-fun m!166889 () Bool)

(assert (=> b!170861 m!166889))

(declare-fun m!166891 () Bool)

(assert (=> b!170861 m!166891))

(declare-fun m!166893 () Bool)

(assert (=> b!170861 m!166893))

(declare-fun m!166895 () Bool)

(assert (=> b!170861 m!166895))

(declare-fun m!166897 () Bool)

(assert (=> b!170863 m!166897))

(declare-fun m!166899 () Bool)

(assert (=> b!170853 m!166899))

(declare-fun m!166901 () Bool)

(assert (=> b!170854 m!166901))

(declare-fun m!166903 () Bool)

(assert (=> b!170854 m!166903))

(declare-fun m!166905 () Bool)

(assert (=> b!170848 m!166905))

(assert (=> b!170848 m!166905))

(declare-fun m!166907 () Bool)

(assert (=> b!170848 m!166907))

(declare-fun m!166909 () Bool)

(assert (=> b!170848 m!166909))

(declare-fun m!166911 () Bool)

(assert (=> b!170846 m!166911))

(assert (=> b!170846 m!166911))

(declare-fun m!166913 () Bool)

(assert (=> b!170846 m!166913))

(declare-fun m!166915 () Bool)

(assert (=> b!170855 m!166915))

(declare-fun m!166917 () Bool)

(assert (=> b!170859 m!166917))

(declare-fun m!166919 () Bool)

(assert (=> b!170839 m!166919))

(declare-fun m!166921 () Bool)

(assert (=> b!170839 m!166921))

(declare-fun m!166923 () Bool)

(assert (=> b!170841 m!166923))

(declare-fun m!166925 () Bool)

(assert (=> b!170836 m!166925))

(declare-fun m!166927 () Bool)

(assert (=> b!170836 m!166927))

(declare-fun m!166929 () Bool)

(assert (=> b!170837 m!166929))

(assert (=> b!170837 m!166929))

(declare-fun m!166931 () Bool)

(assert (=> b!170837 m!166931))

(declare-fun m!166933 () Bool)

(assert (=> b!170837 m!166933))

(declare-fun m!166935 () Bool)

(assert (=> start!18462 m!166935))

(declare-fun m!166937 () Bool)

(assert (=> b!170849 m!166937))

(declare-fun m!166939 () Bool)

(assert (=> b!170835 m!166939))

(declare-fun m!166941 () Bool)

(assert (=> b!170835 m!166941))

(declare-fun m!166943 () Bool)

(assert (=> b!170835 m!166943))

(declare-fun m!166945 () Bool)

(assert (=> b!170835 m!166945))

(declare-fun m!166947 () Bool)

(assert (=> b!170835 m!166947))

(assert (=> b!170835 m!166943))

(declare-fun m!166949 () Bool)

(assert (=> b!170835 m!166949))

(declare-fun m!166951 () Bool)

(assert (=> b!170835 m!166951))

(declare-fun m!166953 () Bool)

(assert (=> b!170835 m!166953))

(declare-fun m!166955 () Bool)

(assert (=> b!170835 m!166955))

(assert (=> b!170835 m!166951))

(declare-fun m!166957 () Bool)

(assert (=> b!170835 m!166957))

(declare-fun m!166959 () Bool)

(assert (=> b!170835 m!166959))

(assert (=> b!170835 m!166953))

(declare-fun m!166961 () Bool)

(assert (=> b!170835 m!166961))

(assert (=> b!170835 m!166957))

(assert (=> b!170835 m!166947))

(declare-fun m!166963 () Bool)

(assert (=> b!170835 m!166963))

(declare-fun m!166965 () Bool)

(assert (=> b!170860 m!166965))

(declare-fun m!166967 () Bool)

(assert (=> b!170860 m!166967))

(declare-fun m!166969 () Bool)

(assert (=> b!170860 m!166969))

(declare-fun m!166971 () Bool)

(assert (=> b!170852 m!166971))

(declare-fun m!166973 () Bool)

(assert (=> b!170838 m!166973))

(declare-fun m!166975 () Bool)

(assert (=> b!170847 m!166975))

(declare-fun m!166977 () Bool)

(assert (=> b!170847 m!166977))

(check-sat (not b!170835) (not b!170847) b_and!11209 b_and!11215 (not b!170839) (not b!170848) (not b!170859) (not b!170857) (not start!18462) (not b!170838) (not b_next!6593) (not b!170836) b_and!11219 (not b!170849) (not b_next!6587) (not b!170837) (not b_next!6589) b_and!11217 (not b!170855) (not b!170860) (not b!170845) (not b_next!6591) (not b!170854) (not b!170852) (not b!170846) (not b!170843) (not b!170863) (not b!170841) (not b!170844) (not b!170853) (not b!170861) (not b_next!6595) b_and!11211 (not b!170872) b_and!11213 (not b!170842) (not b_next!6585))
(check-sat (not b_next!6593) b_and!11219 (not b_next!6587) b_and!11209 b_and!11215 (not b_next!6591) b_and!11213 (not b_next!6585) (not b_next!6589) b_and!11217 (not b_next!6595) b_and!11211)
